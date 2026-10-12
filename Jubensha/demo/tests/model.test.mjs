import test from "node:test";
import assert from "node:assert/strict";
import { initialState, act, restoreState, visibleClues } from "../model.js";
function step(s, a) {
  const r = act(s, a);
  assert.equal(r.ok, true, r.error?.message);
  return r.state;
}
function start() {
  let s = initialState();
  for (const a of [
    { type: "enter" },
    { type: "selectRole", roleId: "restorer" },
    { type: "ready" },
    { type: "advance" },
  ])
    s = step(s, a);
  return s;
}
function search() {
  let s = start();
  for (const section of ["story", "secret", "task"])
    s = step(s, { type: "read", section });
  s = step(s, { type: "advance" });
  return step(s, { type: "advance" });
}
test("preparation and personal reading enforce stage guards without changing state", () => {
  const s = initialState();
  assert.equal(act(s, { type: "advance" }).ok, false);
  let r = step(s, { type: "enter" });
  assert.equal(act(r, { type: "ready" }).ok, false);
  r = start();
  assert.equal(r.stage, "reading");
  assert.equal(act(r, { type: "advance" }).error.code, "unread");
  assert.deepEqual(r.readSections, []);
  assert.equal(act(r, { type: "selectRole", roleId: "lawyer" }).ok, false);
});
test("search budget, ownership, and public visibility have one state owner", () => {
  let s = search();
  s = step(s, { type: "collect", locationId: "study" });
  assert.equal(s.published.length, 0);
  assert.equal(visibleClues(s).length, 1);
  assert.equal(
    act(s, { type: "publish", clueId: "key" }).error.code,
    "ownership",
  );
  assert.equal(
    act(s, { type: "collect", locationId: "study" }).error.code,
    "duplicate",
  );
  s = step(s, { type: "collect", locationId: "hall" });
  s = step(s, { type: "collect", locationId: "greenhouse" });
  assert.equal(
    act(s, { type: "collect", locationId: "corridor" }).error.code,
    "capacity",
  );
  s = step(s, { type: "publish", clueId: "glass" });
  assert.deepEqual(s.published, ["glass"]);
});
test("a public note requires explicit consent and publishes only attached owned clues", () => {
  let s = search();
  s = step(s, { type: "collect", locationId: "study" });
  s = step(s, { type: "collect", locationId: "hall" });
  s = step(s, {
    type: "saveNote",
    text: "死亡时间早于停电",
    clueIds: ["glass"],
  });
  assert.equal(
    act(s, { type: "publishNote", noteId: 1 }).error.code,
    "confirmation_required",
  );
  assert.deepEqual(s.published, []);
  s = step(s, {
    type: "editNote",
    noteId: 1,
    text: "药物生效有延迟",
    clueIds: ["glass"],
  });
  s = step(s, { type: "publishNote", noteId: 1, confirm: true });
  assert.equal(
    act(s, { type: "editNote", noteId: 1, text: "删掉证据" }).error.code,
    "ownership",
  );
  assert.equal(s.notes[0].public, true);
  assert.deepEqual(s.published, ["glass"]);
  assert.equal(
    act(s, { type: "saveNote", text: "fake", clueIds: ["key"] }).error.code,
    "ownership",
  );
});
test("a vote is immutable and does not reveal until other simulated voters finish", () => {
  let s = search();
  s = step(s, { type: "collect", locationId: "study" });
  s = step(s, { type: "advance" });
  assert.equal(s.stage, "discussion");
  assert.ok(s.published.includes("witness"));
  s = step(s, { type: "advance" });
  s = step(s, { type: "vote", roleId: "lawyer", timing: "before" });
  assert.equal(s.stage, "vote");
  assert.equal(s.votesReceived, 1);
  assert.equal(act(s, { type: "vote", roleId: "writer" }).ok, false);
  assert.equal(act(s, { type: "advance" }).ok, false);
  s = step(s, { type: "simulateVotes" });
  assert.equal(s.stage, "reveal");
  assert.equal(s.votesReceived, 4);
  assert.equal(act(s, { type: "publish", clueId: "glass" }).ok, false);
});
test("malformed saved progress is rejected rather than used as UI input", () => {
  let s = start();
  assert.equal(restoreState(s).ok, true);
  assert.equal(restoreState({ ...s, readSections: ["<script>"] }).ok, false);
  assert.equal(restoreState({ ...s, roleId: null }).ok, false);
  assert.equal(
    restoreState({
      ...s,
      notes: [{ id: 1, text: 3, clueIds: [], public: false }],
    }).ok,
    false,
  );
  assert.equal(restoreState({ ...s, favorites: ["not-a-clue"] }).ok, false);
  assert.equal(restoreState({ ...s, version: 0 }).ok, false);
  assert.equal(restoreState({ ...s, notes: [null] }).ok, false);
  assert.equal(restoreState({ ...s, messages: [null] }).ok, false);
});
test("saved progress survives a full round-trip and reset removes secret notes and votes", () => {
  let s = search();
  s = step(s, { type: "collect", locationId: "corridor" });
  s = step(s, {
    type: "saveNote",
    text: "袖口与电闸的封蜡相同",
    clueIds: ["wax"],
  });
  const r = restoreState(JSON.parse(JSON.stringify(s)));
  assert.deepEqual(r.state, s);
  assert.deepEqual(step(s, { type: "reset" }), initialState());
});
