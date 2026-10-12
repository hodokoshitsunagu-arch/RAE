const { chromium } = await import(
  process.env.PLAYWRIGHT_MODULE ||
    "/Users/mark/.npm/_npx/705bc6b22212b352/node_modules/playwright/index.mjs"
);
import assert from "node:assert/strict";
import { mkdir, writeFile } from "node:fs/promises";
const out = new URL("../verification/", import.meta.url);
await mkdir(out, { recursive: true });
const browser = await chromium.launch({ headless: true });
const context = await browser.newContext({
  viewport: { width: 1440, height: 1000 },
  reducedMotion: "reduce",
});
const page = await context.newPage();
const errors = [];
page.on("pageerror", (e) => errors.push(e.message));
page.on("console", (m) => {
  if (m.type() === "error") errors.push(m.text());
});
const url = "http://127.0.0.1:4176";
await page.goto(url);
await page.screenshot({
  path: new URL("desktop-lobby.png", out).pathname,
  fullPage: true,
});
await page.getByRole("button", { name: "进入房间" }).click();
await page.locator('[data-action="selectRole"][data-id="restorer"]').click();
await page.locator('[data-action="ready"]').click();
await page.getByRole("button", { name: "开始读本" }).click();
for (let i = 0; i < 3; i++)
  await page.getByRole("button", { name: "我已读完这段" }).click();
await page.screenshot({
  path: new URL("desktop-reading.png", out).pathname,
  fullPage: true,
});
await page.getByRole("button", { name: "结束阅读" }).click();
await page.locator("#chat-text").fill("我在走廊看到蓝色蜡痕。");
await page.getByRole("button", { name: "发送" }).click();
assert.ok(await page.getByText("我在走廊看到蓝色蜡痕。").isVisible());
await page.getByRole("button", { name: "开始集体搜证" }).click();
await page.screenshot({
  path: new URL("desktop-search.png", out).pathname,
  fullPage: true,
});
for (const id of ["study", "hall", "corridor"]) {
  await page.locator(`[data-action="location"][data-id="${id}"]`).click();
  await page.getByRole("button", { name: "调查这个地点" }).click();
  await page.getByRole("button", { name: "关闭对话框" }).click();
}
await page.getByRole("tab", { name: "线索" }).click();
await page.locator("#clue-search").fill("电闸");
assert.equal(await page.locator(".clue-row").count(), 1);
await page.locator("#clue-search").fill("");
await page.locator('[data-action="clue"][data-id="glass"]').click();
await page
  .getByRole("dialog")
  .getByRole("button", { name: "收藏", exact: false })
  .click();
await page.getByRole("button", { name: "记入笔记" }).click();
await page.locator("#note-text").fill("死亡发生在停电前。");
await page.getByRole("button", { name: "保存私有笔记" }).click();
await page.getByRole("button", { name: "公开笔记", exact: true }).click();
assert.ok(
  await page.getByText("公开笔记会同时公开 1 条所附线索。").isVisible(),
);
await page.getByRole("button", { name: "保持私有" }).click();
assert.equal(
  await page.evaluate(
    () =>
      JSON.parse(localStorage.getItem("baibian-core-demo.v1")).published.length,
  ),
  0,
);
await page.getByRole("button", { name: "公开笔记", exact: true }).click();
await page.getByRole("button", { name: "确认公开", exact: true }).click();
await page.getByRole("button", { name: "关闭对话框" }).click();
await page.reload();
await page.getByRole("tab", { name: "线索" }).click();
assert.equal(await page.locator(".clue-row").count(), 3);
await page.getByRole("button", { name: "结束本轮搜证" }).click();
await page.locator('[data-action="ask"][data-id="lawyer"]').click();
assert.ok(await page.getByText("停电时我就在大厅。至于新遗嘱").isVisible());
await page.getByRole("button", { name: "开始投票" }).click();
await page.locator('[data-action="selectVote"][data-id="lawyer"]').click();
await page.getByRole("button", { name: "下一题" }).click();
await page.locator('[data-action="selectTiming"][data-id="before"]').click();
await page.getByRole("button", { name: "上一题" }).click();
assert.equal(
  await page.locator('[data-action="selectVote"][aria-pressed="true"]').count(),
  1,
);
await page.getByRole("button", { name: "下一题" }).click();
await page.getByRole("button", { name: "确认指认" }).click();
await page.getByRole("button", { name: "确认提交" }).click();
assert.ok(await page.getByText("你的投票已提交").isVisible());
assert.equal(await page.getByText("凶手是陆庭舟。").count(), 0);
await page.getByRole("button", { name: "让模拟队友完成投票" }).click();
assert.ok(await page.getByText("凶手是陆庭舟。").isVisible());
await page.screenshot({
  path: new URL("desktop-reveal.png", out).pathname,
  fullPage: true,
});
const snapshot = await page.evaluate(() =>
  JSON.parse(localStorage.getItem("baibian-core-demo.v1")),
);
assert.equal(snapshot.vote, "lawyer");
assert.equal(snapshot.votesReceived, 4);
const mobile = await browser.newContext({
  viewport: { width: 390, height: 844 },
  isMobile: true,
  deviceScaleFactor: 1,
  reducedMotion: "reduce",
});
const mp = await mobile.newPage();
mp.on("pageerror", (e) => errors.push(e.message));
await mp.goto(url);
await mp.screenshot({
  path: new URL("mobile-lobby.png", out).pathname,
  fullPage: true,
});
assert.equal(
  await mp.evaluate(() => document.documentElement.scrollWidth > innerWidth),
  false,
);
await mp.getByRole("button", { name: "进入房间" }).click();
await mp.locator('[data-action="selectRole"][data-id="writer"]').click();
await mp.locator('[data-action="ready"]').click();
await mp.getByRole("button", { name: "开始读本" }).click();
await mp.screenshot({
  path: new URL("mobile-reading.png", out).pathname,
  fullPage: true,
});
assert.equal(
  await mp.evaluate(() => document.documentElement.scrollWidth > innerWidth),
  false,
);
await mp.getByRole("button", { name: "打开笔记" }).click();
await mp.locator("#note-text").fill("<img src=x onerror=alert(1)>");
await mp.getByRole("button", { name: "保存私有笔记" }).click();
assert.equal(await mp.locator(".saved-note img").count(), 0);
await mp.getByRole("button", { name: "关闭对话框" }).click();
for (let i = 0; i < 3; i++)
  await mp.getByRole("button", { name: "我已读完这段" }).click();
await mp.getByRole("button", { name: "结束阅读" }).click();
await mp.getByRole("button", { name: "开始集体搜证" }).click();
await mp.screenshot({
  path: new URL("mobile-search.png", out).pathname,
  fullPage: true,
});
assert.equal(
  await mp.evaluate(() => document.documentElement.scrollWidth > innerWidth),
  false,
);
await mp.locator('[data-action="location"][data-id="study"]').click();
await mp
  .getByRole("dialog")
  .getByRole("button", { name: "调查这个地点" })
  .click();
await mp.keyboard.press("Escape");
assert.equal(await mp.getByRole("dialog").count(), 0);
await mp.getByRole("button", { name: "结束本轮搜证" }).click();
await mp.getByRole("button", { name: "开始投票" }).click();
await mp.locator('[data-action="selectVote"][data-id="lawyer"]').click();
await mp.getByRole("button", { name: "下一题" }).click();
await mp.locator('[data-action="selectTiming"][data-id="before"]').click();
await mp.screenshot({
  path: new URL("mobile-vote.png", out).pathname,
  fullPage: true,
});
assert.equal(
  await mp.evaluate(() => document.documentElement.scrollWidth > innerWidth),
  false,
);
await mp.getByRole("button", { name: "确认指认" }).click();
await mp.getByRole("dialog").getByRole("button", { name: "确认提交" }).click();
await mp.getByRole("button", { name: "让模拟队友完成投票" }).click();
assert.ok(await mp.getByText("凶手是陆庭舟。").isVisible());
await mp.evaluate(() =>
  localStorage.setItem("baibian-core-demo.v1", '{"version":0}'),
);
await mp.reload();
assert.ok(await mp.getByRole("button", { name: "进入房间" }).isVisible());
await context.close();
await mobile.close();
await browser.close();
assert.deepEqual(errors, []);
await writeFile(
  new URL("browser-results.json", out),
  JSON.stringify(
    {
      status: "passed",
      url,
      checks: [
        "full desktop journey",
        "search budget and filters",
        "private-note cancellation",
        "confirmed disclosure",
        "reload persistence",
        "vote completion gate",
        "full mobile journey at 390px, no overflow",
        "Escape closes native dialog",
        "multi-question navigation preserves choices",
        "HTML text escaping",
        "invalid snapshot recovery",
      ],
      browserErrors: errors,
    },
    null,
    2,
  ),
);
console.log("Browser smoke passed");
