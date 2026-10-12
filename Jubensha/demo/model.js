import { CASE, STAGES } from "./data.js";
export const VERSION = 1;
export const initialState = () => ({
  version: VERSION,
  caseId: CASE.id,
  stage: "lobby",
  roleId: null,
  ready: false,
  readSections: [],
  discovered: [],
  published: [],
  favorites: [],
  notes: [],
  messages: [],
  asked: [],
  vote: null,
  voteTiming: null,
  votesReceived: 0,
  micMuted: true,
  round: 1,
});
const failure = (code, message) => ({ ok: false, error: { code, message } });
const uniq = (a) => [...new Set(a)];
const roleIds = CASE.roles.map((x) => x.id),
  clueIds = CASE.clues.map((x) => x.id);
export const visibleClues = (s) =>
  CASE.clues.filter(
    (c) => s.discovered.includes(c.id) || s.published.includes(c.id),
  );
export const phaseIndex = (s) => STAGES.findIndex((x) => x.id === s.stage);
export function restoreState(raw) {
  if (
    !raw ||
    typeof raw !== "object" ||
    Array.isArray(raw) ||
    raw.version !== VERSION ||
    raw.caseId !== CASE.id
  )
    return failure("invalid_snapshot", "本地进度无法读取，已开启新对局。");
  const strings = (a, allowed, max) =>
    Array.isArray(a) &&
    a.length <= max &&
    a.every((v) => typeof v === "string" && allowed.includes(v)) &&
    new Set(a).size === a.length;
  if (
    !["lobby", ...STAGES.map((x) => x.id)].includes(raw.stage) ||
    !(raw.roleId === null || roleIds.includes(raw.roleId)) ||
    typeof raw.ready !== "boolean" ||
    typeof raw.micMuted !== "boolean" ||
    raw.round !== 1
  )
    return failure("invalid_snapshot", "对局进度格式不正确。");
  if (
    !strings(raw.readSections, ["story", "secret", "task"], 3) ||
    !strings(raw.discovered, clueIds.slice(0, 4), 3) ||
    !strings(raw.published, clueIds, 5) ||
    !strings(raw.asked, roleIds, 4)
  )
    return failure("invalid_snapshot", "线索进度格式不正确。");
  if (
    raw.stage !== "lobby" &&
    raw.stage !== "roles" &&
    (!raw.roleId || !raw.ready)
  )
    return failure("invalid_snapshot", "角色进度不完整。");
  if (
    !strings(raw.favorites, clueIds, 5) ||
    ![0, 1, 4].includes(raw.votesReceived) ||
    (raw.vote === null) !== (raw.votesReceived === 0)
  )
    return failure("invalid_snapshot", "投票或收藏进度不正确。");
  if (
    (raw.vote === null && raw.voteTiming !== null) ||
    (raw.vote !== null &&
      !["before", "during", "after"].includes(raw.voteTiming))
  )
    return failure("invalid_snapshot", "投票答案不完整。");
  if (raw.vote !== null && !roleIds.includes(raw.vote))
    return failure("invalid_snapshot", "投票进度格式不正确。");
  if (
    !Array.isArray(raw.notes) ||
    raw.notes.length > 50 ||
    !raw.notes.every(
      (n, i) =>
        n &&
        typeof n === "object" &&
        !Array.isArray(n) &&
        n.id === i + 1 &&
        typeof n.text === "string" &&
        n.text.length > 0 &&
        n.text.length <= 600 &&
        typeof n.public === "boolean" &&
        strings(n.clueIds, raw.discovered, 3),
    )
  )
    return failure("invalid_snapshot", "笔记进度格式不正确。");
  if (
    !Array.isArray(raw.messages) ||
    raw.messages.length > 100 ||
    !raw.messages.every(
      (m) =>
        m &&
        typeof m === "object" &&
        !Array.isArray(m) &&
        typeof m.text === "string" &&
        m.text.length <= 1000 &&
        ["you", "system", ...roleIds].includes(m.from),
    )
  )
    return failure("invalid_snapshot", "聊天进度格式不正确。");
  if (raw.stage === "reveal" && (!raw.vote || raw.votesReceived !== 4))
    return failure("invalid_snapshot", "复盘进度不完整。");
  const clean = Object.fromEntries(
    Object.keys(initialState()).map((key) => [key, raw[key]]),
  );
  return { ok: true, state: JSON.parse(JSON.stringify(clean)) };
}
export function act(state, action) {
  if (!action || typeof action.type !== "string")
    return failure("invalid_action", "操作格式不正确。");
  const s = structuredClone(state),
    idx = phaseIndex(s);
  const add = (from, text) => {
    if (s.messages.length >= 100) s.messages.shift();
    s.messages.push({ from, text });
  };
  switch (action.type) {
    case "enter":
      if (s.stage !== "lobby") return failure("phase", "已经在对局中。");
      s.stage = "roles";
      break;
    case "selectRole":
      if (s.stage !== "roles") return failure("phase", "开局后不能更换角色。");
      if (!roleIds.includes(action.roleId))
        return failure("role", "角色不存在。");
      s.roleId = action.roleId;
      s.ready = false;
      break;
    case "ready":
      if (s.stage !== "roles" || !s.roleId)
        return failure("role", "请先选择角色。");
      s.ready = !s.ready;
      break;
    case "read":
      if (
        s.stage !== "reading" ||
        !["story", "secret", "task"].includes(action.section)
      )
        return failure("phase", "当前无法完成这段阅读。");
      s.readSections = uniq([...s.readSections, action.section]);
      break;
    case "advance":
      if (s.stage === "lobby" || s.stage === "reveal")
        return failure("phase", "当前无法推进。");
      if (s.stage === "roles" && (!s.roleId || !s.ready))
        return failure("not_ready", "先选好角色并准备，再开始游戏。");
      if (s.stage === "reading" && s.readSections.length < 3)
        return failure("unread", "请读完故事、秘密和任务，再进入介绍。");
      if (s.stage === "search" && s.discovered.length === 0)
        return failure("no_clues", "至少调查一个地点，再开始讨论。");
      if (s.stage === "vote")
        return failure("vote_required", "请先提交你的指认。");
      s.stage = STAGES[idx + 1].id;
      if (s.stage === "intro")
        add("system", "自我介绍开始。每个人都可以保留自己的秘密。");
      if (s.stage === "search")
        add("system", "搜证开始。你有 3 次调查机会，线索默认私有。");
      if (s.stage === "discussion") {
        s.published = uniq([...s.published, "witness"]);
        add(
          "doctor",
          "我得纠正一下：20:47 我在走廊见过陆律师，他并不一直在大厅。",
        );
      }
      if (s.stage === "vote")
        add("system", "结案投票已开启。请结合时间线指认凶手。");
      break;
    case "collect": {
      if (s.stage !== "search") return failure("phase", "目前不在搜证阶段。");
      const loc = CASE.locations.find((x) => x.id === action.locationId);
      if (!loc) return failure("location", "地点不存在。");
      if (s.discovered.includes(loc.clue))
        return failure("duplicate", "这里的线索已经收集。");
      if (s.discovered.length >= 3)
        return failure("capacity", "调查机会已用完，可以整理线索或进入讨论。");
      s.discovered.push(loc.clue);
      break;
    }
    case "publish":
      if (idx < 3 || idx > 5) return failure("phase", "当前不能公开线索。");
      if (!s.discovered.includes(action.clueId))
        return failure("ownership", "只能公开自己找到的线索。");
      if (s.published.includes(action.clueId))
        return failure("duplicate", "这条线索已经公开。");
      s.published.push(action.clueId);
      add(
        "you",
        `公开了线索「${CASE.clues.find((c) => c.id === action.clueId).title}」。`,
      );
      break;
    case "saveNote": {
      if (idx < 1 || idx > 5) return failure("phase", "当前不能添加笔记。");
      const text = typeof action.text === "string" ? action.text.trim() : "";
      if (!text || text.length > 600)
        return failure("text", "笔记需要 1 至 600 个字。");
      if (s.notes.length >= 50)
        return failure("capacity", "本局最多保存 50 条笔记。");
      const attached = Array.isArray(action.clueIds)
        ? uniq(action.clueIds)
        : [];
      if (!attached.every((c) => s.discovered.includes(c)))
        return failure("ownership", "笔记只能附上自己的线索。");
      s.notes.push({
        id: s.notes.length + 1,
        text,
        clueIds: attached,
        public: false,
      });
      break;
    }
    case "editNote": {
      if (idx < 1 || idx > 5) return failure("phase", "当前不能编辑笔记。");
      const note = s.notes.find((n) => n.id === action.noteId);
      if (!note || note.public)
        return failure("ownership", "只能编辑尚未公开的笔记。");
      const text = typeof action.text === "string" ? action.text.trim() : "";
      if (!text || text.length > 600)
        return failure("text", "笔记需要 1 至 600 个字。");
      const attached = Array.isArray(action.clueIds)
        ? uniq(action.clueIds)
        : [];
      if (!attached.every((c) => s.discovered.includes(c)))
        return failure("ownership", "笔记只能附上自己的线索。");
      note.text = text;
      note.clueIds = attached;
      break;
    }
    case "publishNote": {
      if (idx < 3 || idx > 5) return failure("phase", "当前不能公开笔记。");
      const note = s.notes.find((n) => n.id === action.noteId);
      if (!note) return failure("note", "笔记不存在。");
      if (note.public) return failure("duplicate", "笔记已经公开。");
      if (action.confirm !== true)
        return failure(
          "confirmation_required",
          "公开笔记会同时公开所附线索，请确认。",
        );
      note.public = true;
      s.published = uniq([...s.published, ...note.clueIds]);
      add("you", `公开笔记：${note.text}`);
      break;
    }
    case "message": {
      if (!["intro", "search", "discussion", "vote"].includes(s.stage))
        return failure("phase", "讨论尚未开始。");
      const text = typeof action.text === "string" ? action.text.trim() : "";
      if (!text || text.length > 300)
        return failure("text", "消息需要 1 至 300 个字。");
      add("you", text);
      break;
    }
    case "ask": {
      if (s.stage !== "discussion")
        return failure("phase", "请在相互询问阶段提问。");
      if (!roleIds.includes(action.roleId) || action.roleId === s.roleId)
        return failure("role", "请选择另一位角色。");
      if (s.asked.includes(action.roleId))
        return failure("duplicate", "这位角色已经回答了你的问题。");
      s.asked.push(action.roleId);
      const answers = {
        restorer:
          "我看见陆律师的袖口沾着蓝色封蜡。那把小刀是修画用的，不是凶器。",
        lawyer: "停电时我就在大厅。至于新遗嘱，沈先生并没有正式签名。",
        writer: "我听见书房里在争吵，说的是遗产管理权。那时还没有停电。",
        doctor: "药物需要时间起效，应该先调查停电前进入过书房的人。",
      };
      add(
        "you",
        `请${CASE.roles.find((r) => r.id === action.roleId).name}补充当晚的行踪。`,
      );
      add(action.roleId, answers[action.roleId]);
      break;
    }
    case "vote":
      if (s.stage !== "vote" || s.vote !== null)
        return failure("phase", "当前不能提交投票。");
      if (!roleIds.includes(action.roleId))
        return failure("role", "请选择要指认的人。");
      if (!["before", "during", "after"].includes(action.timing))
        return failure("incomplete_vote", "请完成死亡时间题。");
      s.vote = action.roleId;
      s.voteTiming = action.timing;
      s.votesReceived = 1;
      break;
    case "simulateVotes":
      if (s.stage !== "vote" || !s.vote)
        return failure("phase", "你还没有提交投票。");
      s.votesReceived = 4;
      s.stage = "reveal";
      break;
    case "favorite":
      if (!visibleClues(s).some((c) => c.id === action.clueId))
        return failure("ownership", "无法收藏不可见的线索。");
      s.favorites = s.favorites.includes(action.clueId)
        ? s.favorites.filter((id) => id !== action.clueId)
        : [...s.favorites, action.clueId];
      break;
    case "mic":
      s.micMuted = !s.micMuted;
      break;
    case "reset":
      return { ok: true, state: initialState() };
    default:
      return failure("unknown_action", "无法识别的操作。");
  }
  return { ok: true, state: s };
}
