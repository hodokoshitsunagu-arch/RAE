import { CASE, STAGES } from "./data.js";
import {
  initialState,
  act,
  restoreState,
  visibleClues,
  phaseIndex,
} from "./model.js";
const $ = (s) => document.querySelector(s),
  escape = (s) =>
    String(s).replace(
      /[&<>"']/g,
      (c) =>
        ({
          "&": "&amp;",
          "<": "&lt;",
          ">": "&gt;",
          '"': "&quot;",
          "'": "&#39;",
        })[c],
    );
const storageKey = "baibian-core-demo.v1";
let state = initialState(),
  storageError = false,
  notice = "";
try {
  const raw = localStorage.getItem(storageKey);
  if (raw) {
    const r = restoreState(JSON.parse(raw));
    if (r.ok) state = r.state;
    else notice = r.error.message;
  }
} catch {
  notice = "无法读取本地进度，已开启新对局。";
}
let tab = "story",
  readTab = "story",
  clueFilter = "all",
  clueQuery = "",
  selectedVote = null,
  selectedTiming = null,
  votePage = 0,
  toastTimer;
const icon = (name) =>
  ["book", "clue", "voice", "chat"].includes(name)
    ? `<img class="source-icon" src="./assets/original/${name}.png" alt="" aria-hidden="true">`
    : {
        note: "✎",
        arrow: "↗",
        close: "×",
        check: "✓",
        lock: "▣",
        map: "⊞",
        time: "◷",
      }[name] || "·";
const button = (label, action, extra = "", attrs = "") =>
  `<button class="${extra}" data-action="${action}" ${attrs}>${label}</button>`;
const portrait = (role, size = "") =>
  `<span class="portrait ${size}" style="--portrait:${role.color}">${role.letter}</span>`;
const currentRole = () => CASE.roles.find((r) => r.id === state.roleId);
const isActive = () => !["lobby", "roles"].includes(state.stage);
function dispatch(action) {
  const r = act(state, action);
  if (!r.ok) {
    toast(r.error.message);
    return false;
  }
  state = r.state;
  try {
    localStorage.setItem(storageKey, JSON.stringify(state));
    storageError = false;
  } catch {
    storageError = true;
    toast("当前无法保存进度，关闭页面后可能丢失。");
  }
  render();
  return true;
}
function toast(text) {
  $("#toast").textContent = text;
  $("#toast").classList.add("show");
  clearTimeout(toastTimer);
  toastTimer = setTimeout(() => $("#toast").classList.remove("show"), 3500);
}
function openModal(title, body, footer = "") {
  const m = $("#modal");
  m.innerHTML = `<div class="modal-head"><h2 id="modal-title">${title}</h2>${button("×", "close", "icon-button", 'aria-label="关闭对话框"')}</div>${body}${footer ? `<footer class="modal-footer">${footer}</footer>` : ""}`;
  m.showModal();
}
function stageBar() {
  return `<ol class="stage-bar" aria-label="对局阶段">${STAGES.map((s, i) => `<li class="${i === phaseIndex(state) ? "current" : i < phaseIndex(state) ? "done" : ""}" ${i === phaseIndex(state) ? 'aria-current="step"' : ""}><span>${i < phaseIndex(state) ? "✓" : String(i + 1).padStart(2, "0")}</span>${s.short}</li>`).join("")}</ol>`;
}
function shell(content) {
  const role = currentRole();
  return `<aside class="rail"><a class="brand" href="./" aria-label="雾港来信首页"><span class="brand-mark">谜</span><span>百变交互<span class="brand-sub">THE CASE ROOM</span></span></a><nav aria-label="主导航">${button(`${icon("book")} <span>剧本档案</span>`, "library", state.stage === "lobby" ? "active" : "")}${button(`${icon("map")} <span>我的对局</span>`, "session", state.stage !== "lobby" ? "active" : "", state.stage === "lobby" ? "disabled" : "")}${button(`${icon("note")} <span>推理笔记</span>`, "notes", "", !isActive() ? "disabled" : "")}</nav><div class="rail-case"><span class="eyebrow">本局案件</span><strong>雾港来信</strong><p>一座旧宅 · 四段口供<br>一个不能忽略的时间差</p><div class="case-line"></div><span>1934 / 雾港庄园</span></div><div class="rail-bottom"><span class="connection"></span>本地演示 · 原创案件${button("复刻依据 ↗", "evidence", "text-button")}</div></aside><main class="main"><header class="topbar"><span class="breadcrumb">剧本杀 <span>/</span> 核心交互体验</span><div class="topbar-actions">${state.stage !== "lobby" ? button("重新开局", "reset", "quiet") : ""}<span class="user-avatar">你</span></div></header>${storageError ? '<div class="storage-warning">本地保存不可用，请保持页面打开。</div>' : ""}${content}</main>${role && isActive() ? `<button class="mobile-notes" data-action="notes" aria-label="打开笔记">✎</button>` : ""}`;
}
function lobby() {
  return `<section class="lobby"><div class="lobby-intro"><span class="eyebrow">从一个角色，进入另一个人生</span><h1>今晚，真相由你揭开。</h1><p>读自己的故事，找到隐藏的线索。<br>最后一次指认，交给你的推理。</p></div><div class="case-feature"><div class="case-art"><div class="art-caption"><span>雾港 · 1934</span><strong>雾港来信</strong><p>${CASE.subtitle}</p></div></div><article class="case-brief"><div class="chips"><span>本格推理</span><span>新手友好</span><span class="outline">原创演示</span></div><h2>一场停电。<br>四个人的秘密。</h2><p>${CASE.background}</p><dl class="case-stats"><div><dt>参与角色</dt><dd>4 <small>人</small></dd></div><div><dt>体验时长</dt><dd>10 <small>分钟</small></dd></div><div><dt>故事难度</dt><dd>入门</dd></div></dl>${button("进入房间 <span>↗</span>", "enter", "primary large")}<small class="demo-explain">单人可走完流程，其他席位由模拟队友参与。</small></article></div><div class="journey"><div><span>01</span><strong>进入角色</strong><p>故事与秘密，只给你一人。</p></div><div><span>02</span><strong>连接线索</strong><p>搜证、收藏，决定何时公开。</p></div><div><span>03</span><strong>作出指认</strong><p>用一条时间线，还原真相。</p></div></div></section>`;
}
function roles() {
  return `<section class="room"><div class="room-heading"><div><span class="eyebrow">雾港庄园 / 房间 1934</span><h1>你将成为谁？</h1><p>每个人都有一份只属于自己的故事。</p></div><span class="room-meta">4 人短案件 · 3 位模拟队友</span></div>${stageBar()}<div class="role-grid">${CASE.roles.map((r) => `<button class="role-card ${state.roleId === r.id ? "selected" : ""}" data-action="selectRole" data-id="${r.id}" aria-pressed="${state.roleId === r.id}"><span class="role-visual">${portrait(r, "big")}<span class="role-symbol">${r.id === "restorer" ? "修复" : r.id === "lawyer" ? "文书" : r.id === "writer" ? "记述" : "医药"}</span></span><span class="role-info"><span class="role-name">${r.name}<small>${r.job}</small></span><span class="role-desc">${r.intro}</span><span class="role-select">${state.roleId === r.id ? "✓ 已选择" : "选择角色 ↗"}</span></span></button>`).join("")}</div><div class="prepare-footer"><div><strong>${currentRole() ? `${currentRole().name}，欢迎回到庄园。` : "选择一个角色，故事即将开始。"}</strong><p>开局后角色固定，私人故事会随角色变化。</p></div><div>${button(state.ready ? "✓ 已准备" : "准备", "ready", "secondary", !state.roleId ? "disabled" : "")}${button("开始读本 →", "advance", "primary", !state.ready ? "disabled" : "")}</div></div></section>`;
}
const stageTabs = () =>
  `<div class="content-tabs" role="tablist" aria-label="对局内容">${[
    ["voice", "语音"],
    ["chat", "消息"],
    ["story", "剧本"],
    ["clues", "线索"],
  ]
    .map(
      ([id, name]) =>
        `<button role="tab" aria-selected="${tab === id}" aria-controls="panel-${id}" class="${tab === id ? "active" : ""}" data-action="tab" data-id="${id}">${icon(id === "story" ? "book" : id === "clues" ? "clue" : id)} ${name}${id === "clues" && visibleClues(state).length ? `<span class="count">${visibleClues(state).length}</span>` : ""}</button>`,
    )
    .join("")}</div>`;
function readingPanel() {
  const role = currentRole();
  return `<article class="reading-panel"><div class="reading-toolbar"><span>角色档案 / ${role.name}</span><span class="private-tag">▣ 仅你可见</span></div><div class="read-tabs">${[
    ["story", "你的故事"],
    ["secret", "隐藏的秘密"],
    ["task", "本局任务"],
  ]
    .map(([id, name]) =>
      button(
        `${name}${state.readSections.includes(id) ? "<span>✓</span>" : ""}`,
        "readTab",
        readTab === id ? "active" : "",
        `data-id="${id}"`,
      ),
    )
    .join(
      "",
    )}</div><div class="paper"><span class="chapter">${readTab === "story" ? "人物篇" : readTab === "secret" ? "秘密篇" : "任务篇"} / ${role.job}</span><h2>${readTab === "story" ? "你回到了雾港。" : readTab === "secret" ? "有些话，只能留给自己。" : "在最后一次投票之前。"}</h2><p>${escape(role[readTab])}</p>${readTab === "story" ? `<blockquote>“今晚之后，一切都会不一样。”<cite>沈望山留下的最后一句话</cite></blockquote>` : ""}${state.stage === "reading" ? button(state.readSections.includes(readTab) ? "✓ 这段已阅读" : "我已读完这段", "read", "secondary", `data-id="${readTab}" ${state.readSections.includes(readTab) ? "disabled" : ""}`) : '<span class="reading-reminder">自己的故事，可以随时回来查看。</span>'}</div></article>`;
}
function mapPanel() {
  return `<section class="investigation"><div class="panel-title"><div><span class="eyebrow">集体搜证</span><h2>庄园里，还藏着什么？</h2></div><span class="investigation-count">剩余调查 <strong>${3 - state.discovered.length}</strong> / 3</span></div><div class="manor-map" aria-label="庄园搜证地图"><div class="map-lines"></div><span class="map-caption">庄园平面图 <small>北 ↑</small></span><div class="map-room study-room"><span>书房</span><i></i></div><div class="map-room hall-room"><span>会客厅</span><i></i></div><div class="map-room garden-room"><span>温室</span><i></i></div><div class="map-room corridor-room"><span>长廊</span></div><div class="map-stairs"></div>${CASE.locations
    .map((l) => {
      const found = state.discovered.includes(l.clue);
      return `<button class="map-hotspot ${found ? "found" : ""}" style="left:${l.x}%;top:${l.y}%" data-action="location" data-id="${l.id}" aria-label="调查${l.name}${found ? "，已搜证" : ""}"><span>${found ? "✓" : "+"}</span><strong>${l.name}</strong></button>`;
    })
    .join(
      "",
    )}</div><div class="map-footer"><span>点击地点调查，得到的线索先放入你的私有档案。</span>${button("查看我的线索 ↗", "tab", "text-button", 'data-id="clues"')}</div></section>`;
}
function cluesPanel() {
  const all = visibleClues(state),
    filter = all.filter(
      (c) =>
        (clueFilter === "all" ||
          (clueFilter === "public" && state.published.includes(c.id)) ||
          (clueFilter === "private" &&
            state.discovered.includes(c.id) &&
            !state.published.includes(c.id)) ||
          (clueFilter === "favorite" && state.favorites.includes(c.id))) &&
        `${c.title}${c.body}${c.location}`.includes(clueQuery),
    );
  return `<section class="clue-panel"><div class="panel-title"><div><span class="eyebrow">线索档案</span><h2>细节，正等待连接。</h2></div>${button("推理笔记 ↗", "notes", "text-button")}</div><div class="clue-tools"><div class="filter-tabs">${[
    ["all", "全部"],
    ["private", "私有"],
    ["public", "公开"],
    ["favorite", "收藏"],
  ]
    .map(([id, title]) =>
      button(
        title,
        "clueFilter",
        clueFilter === id ? "active" : "",
        `data-id="${id}"`,
      ),
    )
    .join(
      "",
    )}</div><label class="search-input"><span>⌕</span><input id="clue-search" type="search" placeholder="搜索线索或地点" aria-label="搜索线索" value="${escape(clueQuery)}"></label></div><div class="clue-list">${filter.length ? filter.map((c) => `<button class="clue-row" data-action="clue" data-id="${c.id}"><span class="clue-number">${String(CASE.clues.indexOf(c) + 1).padStart(2, "0")}</span><span class="clue-copy"><span><strong>${c.title}</strong><small class="${state.published.includes(c.id) ? "public-tag" : "private-tag"}">${state.published.includes(c.id) ? "公开" : "私有"}</small>${state.favorites.includes(c.id) ? "<small>★ 已收藏</small>" : ""}</span><p>${c.location} · ${c.type}</p></span><span>↗</span></button>`).join("") : `<div class="empty-state"><span>⌕</span><h3>${clueQuery ? "没有匹配的线索" : "这里还没有线索"}</h3><p>${clueQuery ? "换一个关键词试试。" : state.stage === "reading" ? "先完成读本，搜证阶段会开放地图。" : "调查庄园，或切换到其他线索分类。"}</p>${state.stage === "search" ? button("返回搜证地图", "tab", "secondary", 'data-id="story"') : ""}</div>`}</div></section>`;
}
function discussionPanel() {
  return `<section class="discussion-panel"><div class="panel-title"><div><span class="eyebrow">相互询问</span><h2>他们的口供，可信吗？</h2></div><span class="room-meta">模拟角色回答</span></div><div class="question-list">${CASE.roles
    .filter((r) => r.id !== state.roleId)
    .map(
      (r) =>
        `<article class="question-person">${portrait(r)}<div><h3>${r.name}<small>${r.job}</small></h3><p>${r.intro}</p></div>${button(state.asked.includes(r.id) ? "✓ 已询问" : "询问行踪", "ask", "secondary", `data-id="${r.id}" ${state.asked.includes(r.id) ? "disabled" : ""}`)}</article>`,
    )
    .join(
      "",
    )}</div><div class="discussion-hint"><span>✎</span><div><strong>先对照，再指认。</strong><p>把线索中的时间，与每个人说的时间连起来。周予安已公开一条新的目击证词。</p></div>${button("查看公共线索", "showPublic", "text-button")}</div>${chatPanel(true)}</section>`;
}
function chatPanel(compact = false) {
  return `<section class="chat-panel ${compact ? "compact" : ""}">${!compact ? '<div class="panel-title"><div><span class="eyebrow">房间消息</span><h2>让线索进入讨论。</h2></div><span class="room-meta">单机模拟，无真实消息发送</span></div>' : ""}<div class="chat-log" aria-live="polite">${
    state.messages.length
      ? state.messages
          .slice(-15)
          .map((m) =>
            m.from === "system"
              ? `<p class="system-message">${escape(m.text)}</p>`
              : `<article class="message ${m.from === "you" ? "own" : ""}"><span class="message-avatar">${m.from === "you" ? "你" : CASE.roles.find((r) => r.id === m.from)?.letter || "?"}</span><div><small>${m.from === "you" ? currentRole().name : CASE.roles.find((r) => r.id === m.from)?.name}</small><p>${escape(m.text)}</p></div></article>`,
          )
          .join("")
      : '<div class="empty-state"><h3>讨论还未开始</h3><p>读完你的故事后，可以在自我介绍阶段发言。</p></div>'
  }</div><form id="chat-form" class="chat-form"><label class="sr-only" for="chat-text">房间消息</label><input id="chat-text" maxlength="300" placeholder="分享你的观察，不必公开全部秘密…" ${["reading", "reveal"].includes(state.stage) ? "disabled" : ""}><button type="submit" class="primary" ${["reading", "reveal"].includes(state.stage) ? "disabled" : ""}>发送 ↑</button></form></section>`;
}
function voicePanel() {
  return `<section class="voice-panel"><div class="panel-title"><div><span class="eyebrow">语音席位演示</span><h2>让每个人都被听见。</h2></div><span class="room-meta">无真实通话或麦克风采集</span></div><div class="voice-grid">${CASE.roles.map((r) => `<div class="voice-seat">${portrait(r, "big")}<strong>${r.name}</strong><small>${r.job}${r.id === state.roleId ? " · 你" : " · 模拟队友"}</small><span class="voice-status">${r.id === state.roleId ? (state.micMuted ? "静音中" : "发言状态演示") : "已就位"}</span></div>`).join("")}</div><div class="voice-control">${button(state.micMuted ? "开启发言状态" : "恢复静音状态", "mic", "secondary")}<p>只演示席位和静音状态，不调用麦克风。</p></div></section>`;
}
function votePanel() {
  if (state.vote)
    return `<section class="vote-panel"><div class="vote-submitted"><span class="vote-seal">✓</span><span class="eyebrow">你的投票已提交</span><h2>指认：${CASE.roles.find((r) => r.id === state.vote).name}</h2><p>投票完成<br>倒计时完成后或者全部用户投票后公布结果</p><div class="vote-progress">已投票 <strong>${state.votesReceived} / 4</strong></div>${button("让模拟队友完成投票 →", "simulateVotes", "primary")}<small>本地演示由你触发模拟投票完成，不等待真实玩家。</small></div></section>`;
  return `<section class="vote-panel"><div class="panel-title"><div><span class="eyebrow">结案投票</span><h2>${votePage === 0 ? "谁，需要为这场死亡负责？" : "药物最可能在什么时候进入酒杯？"}</h2></div><span class="room-meta">第 ${votePage + 1} / 2 题</span></div><p class="vote-tip">提交后不能修改。选择前，可以随时回看剧本和线索。</p>${
    votePage === 0
      ? `<div class="vote-candidates">${CASE.roles.map((r) => `<button class="vote-candidate ${selectedVote === r.id ? "selected" : ""}" data-action="selectVote" data-id="${r.id}" aria-pressed="${selectedVote === r.id}">${portrait(r)}<span><strong>${r.name}</strong><small>${r.job}</small></span><span class="radio">${selectedVote === r.id ? "●" : ""}</span></button>`).join("")}</div>`
      : `<div class="timing-options">${[
          ["before", "停电之前", "调查 20:35 至 20:45 的来访"],
          ["during", "停电的瞬间", "与电闸断开的时间一致"],
          ["after", "灯亮起来以后", "有人趁发现死者时动手"],
        ]
          .map(
            ([id, title, hint]) =>
              `<button class="vote-candidate ${selectedTiming === id ? "selected" : ""}" data-action="selectTiming" data-id="${id}" aria-pressed="${selectedTiming === id}"><span><strong>${title}</strong><small>${hint}</small></span><span class="radio">${selectedTiming === id ? "●" : ""}</span></button>`,
          )
          .join("")}</div>`
  }<div class="vote-footer"><span>${votePage === 0 ? (selectedVote ? `你选择了 ${CASE.roles.find((r) => r.id === selectedVote).name}` : "请选择你要指认的角色") : selectedTiming ? "两道题都完成后，可以提交。" : "请选择药物进入酒杯的时间。"}</span><div class="vote-pagination">${votePage === 1 ? button("上一题", "previousVote", "secondary") : ""}${votePage === 0 ? button("下一题 →", "nextVote", "primary", !selectedVote ? "disabled" : "") : button("确认指认 →", "confirmVote", "primary", !selectedVote || !selectedTiming ? "disabled" : "")}</div></div></section>`;
}
function revealPanel() {
  const correct = state.vote === "lawyer";
  const timingCorrect = state.voteTiming === "before";
  return `<section class="reveal-panel"><div class="reveal-title"><span class="eyebrow">结案 / 1934</span><h1>${correct ? "你找到了时间线里的破绽。" : "真相，藏在停电之前。"}</h1><p>你的指认：${CASE.roles.find((r) => r.id === state.vote).name} · ${correct ? "与案件真相一致" : "与案件真相不同"}<br>时间判断：${timingCorrect ? "正确，药物在停电前进入酒杯。" : "需要修正，药物应在停电前进入酒杯。"}</p></div><div class="truth"><span class="truth-index">真<br>相</span><div><h2>凶手是陆庭舟。</h2><p>${CASE.truth}</p></div></div><h3 class="timeline-heading">重新走过那一晚</h3><ol class="timeline">${CASE.timeline.map(([time, text]) => `<li><time>${time}</time><span></span><p>${text}</p></li>`).join("")}</ol><div class="reveal-actions">${button("回看线索", "tab", "secondary", 'data-id="clues"')}${button("换个角色，再走一遍 ↗", "reset", "primary")}</div></section>`;
}
function stageContent() {
  if (tab === "clues") return cluesPanel();
  if (tab === "chat") return chatPanel();
  if (tab === "voice") return voicePanel();
  if (state.stage === "search") return mapPanel();
  if (state.stage === "discussion" || state.stage === "intro")
    return state.stage === "intro"
      ? `<section class="intro-panel"><div class="panel-title"><div><span class="eyebrow">自我介绍</span><h2>从一句自我介绍开始。</h2></div></div><p class="intro-copy">你可以透露职业和公开经历，也可以保留自己的秘密。以下是其他三位角色的公开身份。</p><div class="intro-roles">${CASE.roles
          .filter((r) => r.id !== state.roleId)
          .map(
            (r) =>
              `<div>${portrait(r)}<strong>${r.name}<small>${r.job}</small></strong><p>${r.intro}</p></div>`,
          )
          .join("")}</div>${chatPanel(true)}</section>`
      : discussionPanel();
  if (state.stage === "vote") return votePanel();
  if (state.stage === "reveal") return revealPanel();
  return readingPanel();
}
function session() {
  const st = STAGES[phaseIndex(state)];
  const role = currentRole();
  return `<section class="room active-room"><div class="room-heading"><div><span class="eyebrow">原创案件 / 雾港来信</span><h1>${st.title}<span class="room-number">#1934</span></h1><p>${st.description}</p></div><div class="your-role">${portrait(role)}<span>${role.name}<small>${role.job} · 你</small></span></div></div>${stageBar()}<div class="game-grid"><div class="game-workspace">${stageTabs()}<div id="panel-${tab}" role="tabpanel">${stageContent()}</div></div><aside class="room-sidebar"><div class="sidebar-title"><h3>房间成员</h3><span>4 / 4</span></div><div class="players-list">${CASE.roles.map((r) => `<div class="player">${portrait(r)}<span>${r.name}${r.id === state.roleId ? "<small>你</small>" : "<small>模拟队友</small>"}</span><span class="player-state">${r.id === state.roleId ? "◌" : "✓"}</span></div>`).join("")}</div><div class="phase-note"><span class="eyebrow">${state.stage === "reading" ? "读本进度" : "当前阶段"}</span><strong>${state.stage === "reading" ? `${state.readSections.length} / 3 段已读` : st.title}</strong><p>${state.stage === "reading" ? "故事、秘密、任务读完后，再开始自我介绍。" : state.stage === "search" ? "找到的线索默认私有。你可以选择公开，或先存进笔记。" : state.stage === "vote" ? "所有玩家投票完成后公布结果。本局其余角色为模拟队友。" : st.description}</p></div>${state.stage !== "vote" && state.stage !== "reveal" ? button({ reading: "结束阅读", intro: "开始集体搜证", search: "结束本轮搜证", discussion: "开始投票" }[state.stage] + " →", "advance", "primary sidebar-next", state.stage === "reading" && state.readSections.length < 3 ? "disabled" : "") : ""}${button("✎ 整理推理笔记", "notes", "note-button")}<div class="sidebar-foot">${button("▤ 随时回看自己的剧本", "review", "text-button")}<small>进度保存在当前浏览器</small></div></aside></div></section>`;
}
function render() {
  if (!isActive()) tab = "story";
  $("#app").innerHTML = shell(
    state.stage === "lobby"
      ? lobby()
      : state.stage === "roles"
        ? roles()
        : session(),
  );
}
function clueModal(id) {
  const c = visibleClues(state).find((x) => x.id === id);
  if (!c) return;
  openModal(
    escape(c.title),
    `<div class="clue-detail"><span class="eyebrow">${c.type} / ${c.location}</span><p>${escape(c.body)}</p><aside><strong>值得想一想</strong><p>${escape(c.hint)}</p></aside><span class="${state.published.includes(id) ? "public-tag" : "private-tag"}">${state.published.includes(id) ? "已公开，房间所有人可见" : "私有，仅你可见"}</span></div>`,
    `${button(state.favorites.includes(id) ? "取消收藏" : "☆ 收藏", "favorite", "secondary", `data-id="${id}"`)}${button("记入笔记", "noteClue", "secondary", `data-id="${id}"`)}${state.discovered.includes(id) && !state.published.includes(id) && ["search", "discussion", "vote"].includes(state.stage) ? button("公开这条线索", "publish", "primary", `data-id="${id}"`) : ""}`,
  );
}
function notesModal(attached = null, editing = null) {
  const edit = state.notes.find((n) => n.id === editing && !n.public);
  openModal(
    "推理笔记",
    `<div class="notes-content"><p class="note-help">私有笔记只留给自己。公开笔记时，所附线索会一起公开。</p><div class="notes-list">${state.notes.length ? state.notes.map((n) => `<article class="saved-note" data-note-id="${n.id}"><div><span>${n.public ? "公开" : "私有"}</span><time>笔记 ${String(n.id).padStart(2, "0")}</time></div><p>${escape(n.text)}</p>${n.clueIds.map((id) => `<small>附：${CASE.clues.find((c) => c.id === id).title}</small>`).join("")}${!n.public && state.stage !== "reveal" ? button("编辑", "editNote", "text-button", `data-id="${n.id}"`) : ""} ${!n.public && ["search", "discussion", "vote"].includes(state.stage) ? button("公开笔记", "requestPublishNote", "text-button", `data-id="${n.id}"`) : ""}</article>`).join("") : '<div class="empty-note">还没有笔记。先记下一个值得追问的细节。</div>'}</div>${state.stage !== "reveal" ? `<form id="note-form" data-edit-id="${edit?.id || ""}"><label for="note-text">${edit ? "编辑私有笔记" : "新建笔记"}</label><textarea id="note-text" maxlength="600" rows="3" placeholder="这个时间点，与谁的口供矛盾？">${edit ? escape(edit.text) : ""}</textarea><fieldset><legend>附上线索（可选）</legend>${state.discovered.map((id) => `<label class="note-attachment"><input type="checkbox" name="note-clue" value="${id}" ${id === attached || edit?.clueIds.includes(id) ? "checked" : ""}>${CASE.clues.find((c) => c.id === id).title}</label>`).join("") || "<small>找到线索后，可以把它附在笔记里。</small>"}</fieldset><button type="submit" class="primary">${edit ? "保存修改" : "保存私有笔记"}</button></form>` : ""}</div>`,
  );
}
function evidenceModal() {
  openModal(
    "这份演示的复刻依据",
    `<div class="evidence-content"><p>以百变大侦探 6.45.2 原包资源和 REA 静态证据为基础，重构核心交互。当前界面是原创适配，不是原 App 截图。</p><h3>已从包内恢复</h3><ul><li>对局底部的语音、消息、剧本、线索入口。</li><li>私人读本、线索搜索与收藏、笔记公开开关。</li><li>结束本轮与开始投票操作；投票完成后等待条件满足再公布。</li><li>普通五阶段说明与私有线索公开提醒。</li></ul><h3>为演示补齐</h3><p>原创案件、四人角色、三次调查、模拟口供、阶段推进条件、浏览器存档和最终答案。没有真实语音、多人服务或后端连接。</p><a href="./docs/interaction-contract.md" target="_blank" rel="noopener">查看详细交互证据 ↗</a><p class="small">原包仍受加固限制，完整业务方法和服务器规则尚未恢复。</p></div>`,
  );
}
$("#app").addEventListener("click", handleClick);
$("#modal").addEventListener("click", handleClick);
function handleClick(e) {
  const el = e.target.closest("[data-action]");
  if (!el || el.disabled) return;
  const a = el.dataset.action,
    id = el.dataset.id;
  switch (a) {
    case "enter":
      dispatch({ type: "enter" });
      break;
    case "library":
      if (state.stage === "lobby") return;
      openModal(
        "对局中的剧本档案",
        `<div class="evidence-content"><h3>${CASE.title}</h3><p>${CASE.background}</p><p>案件：4 人 · 本格推理 · 原创短体验</p></div>`,
      );
      break;
    case "session":
      render();
      break;
    case "selectRole":
      dispatch({ type: "selectRole", roleId: id });
      break;
    case "ready":
      dispatch({ type: "ready" });
      break;
    case "advance":
      if (dispatch({ type: "advance" })) {
        tab = "story";
        render();
        window.scrollTo({ top: 0, behavior: "instant" });
      }
      break;
    case "tab":
      tab = id;
      render();
      break;
    case "readTab":
      readTab = id;
      render();
      break;
    case "read":
      if (dispatch({ type: "read", section: id })) {
        toast("阅读进度已保存。");
        const next = ["story", "secret", "task"].find(
          (x) => !state.readSections.includes(x),
        );
        if (next) readTab = next;
        render();
      }
      break;
    case "review":
      openModal(
        "我的剧本 · " + currentRole().name,
        `<div class="review-paper">${[
          ["story", "你的故事"],
          ["secret", "隐藏的秘密"],
          ["task", "本局任务"],
        ]
          .map(
            ([key, title]) =>
              `<h3>${title}</h3><p>${escape(currentRole()[key])}</p>`,
          )
          .join("")}</div>`,
      );
      break;
    case "location": {
      const l = CASE.locations.find((x) => x.id === id);
      if (!l) return;
      const found = state.discovered.includes(l.clue);
      openModal(
        l.name,
        `<div class="location-detail"><span class="eyebrow">地点 ${l.index}</span><p>${l.description}</p><p>${found ? "你已经调查过这里，可以回看发现的线索。" : `剩余 ${3 - state.discovered.length} 次调查机会。搜证后，线索仅你可见。`}</p></div>`,
        button(
          found ? "查看已找到的线索" : "调查这个地点",
          "collect",
          "primary",
          `data-id="${id}" ${!found && state.discovered.length >= 3 ? "disabled" : ""}`,
        ),
      );
      break;
    }
    case "collect": {
      const l = CASE.locations.find((x) => x.id === id);
      if (
        state.discovered.includes(l.clue) ||
        dispatch({ type: "collect", locationId: id })
      ) {
        clueModal(l.clue);
        toast("线索已放入你的私有档案。");
      }
      break;
    }
    case "clue":
      clueModal(id);
      break;
    case "publish":
      if (dispatch({ type: "publish", clueId: id })) {
        clueModal(id);
        toast("线索已公开。");
      }
      break;
    case "favorite":
      if (dispatch({ type: "favorite", clueId: id })) clueModal(id);
      break;
    case "notes":
      notesModal();
      break;
    case "editNote":
      notesModal(null, Number(id));
      break;
    case "noteClue":
      notesModal(state.discovered.includes(id) ? id : null);
      break;
    case "requestPublishNote": {
      const n = state.notes.find((x) => x.id === Number(id));
      openModal(
        "确认公开笔记？",
        `<div class="evidence-content"><p>${escape(n.text)}</p><p class="disclosure">公开笔记会同时公开 ${n.clueIds.length} 条所附线索。其他人将看到这些内容。</p></div>`,
        `${button("保持私有", "notes", "secondary")}${button("确认公开", "publishNote", "primary", `data-id="${id}"`)}`,
      );
      break;
    }
    case "publishNote":
      if (
        dispatch({ type: "publishNote", noteId: Number(id), confirm: true })
      ) {
        notesModal();
        toast("笔记和所附线索已公开。");
      }
      break;
    case "clueFilter":
      clueFilter = id;
      render();
      break;
    case "showPublic":
      clueFilter = "public";
      tab = "clues";
      render();
      break;
    case "ask":
      dispatch({ type: "ask", roleId: id });
      break;
    case "mic":
      dispatch({ type: "mic" });
      break;
    case "selectVote":
      if (!state.vote) {
        selectedVote = id;
        render();
      }
      break;
    case "nextVote":
      if (selectedVote) {
        votePage = 1;
        render();
      }
      break;
    case "previousVote":
      votePage = 0;
      render();
      break;
    case "selectTiming":
      selectedTiming = id;
      render();
      break;
    case "confirmVote":
      if (!selectedVote || !selectedTiming) return;
      openModal(
        "确认你的最后指认",
        `<div class="evidence-content"><p>你选择了 <strong>${CASE.roles.find((r) => r.id === selectedVote).name}</strong>。提交后不能改票。</p></div>`,
        `${button("再想一想", "close", "secondary")}${button("确认提交", "submitVote", "primary")}`,
      );
      break;
    case "submitVote":
      if (
        dispatch({ type: "vote", roleId: selectedVote, timing: selectedTiming })
      )
        $("#modal").close();
      break;
    case "simulateVotes":
      dispatch({ type: "simulateVotes" });
      break;
    case "reset":
      openModal(
        "开始一场新对局？",
        `<div class="evidence-content"><p>当前角色、笔记、线索和投票进度会清空。</p></div>`,
        `${button("保留进度", "close", "secondary")}${button("确认重新开局", "confirmReset", "primary")}`,
      );
      break;
    case "confirmReset":
      dispatch({ type: "reset" });
      selectedVote = null;
      selectedTiming = null;
      votePage = 0;
      readTab = "story";
      tab = "story";
      clueQuery = "";
      clueFilter = "all";
      $("#modal").close();
      break;
    case "evidence":
      evidenceModal();
      break;
    case "close":
      $("#modal").close();
      break;
  }
}
document.addEventListener("submit", (e) => {
  if (e.target.id === "chat-form") {
    e.preventDefault();
    const text = $("#chat-text").value;
    dispatch({ type: "message", text });
  }
  if (e.target.id === "note-form") {
    e.preventDefault();
    const text = $("#note-text").value,
      clueIds = [...e.target.querySelectorAll("input:checked")].map(
        (x) => x.value,
      );
    const editId = Number(e.target.dataset.editId);
    if (
      dispatch({
        type: editId ? "editNote" : "saveNote",
        noteId: editId,
        text,
        clueIds,
      })
    ) {
      notesModal();
      toast("私有笔记已保存。");
    }
  }
});
document.addEventListener("input", (e) => {
  if (e.target.id === "clue-search") {
    const pos = e.target.selectionStart;
    clueQuery = e.target.value;
    render();
    const input = $("#clue-search");
    input.focus();
    if (input.type === "text") input.setSelectionRange(pos, pos);
  }
});
$("#modal").addEventListener("click", (e) => {
  if (e.target === $("#modal")) {
    const b = $("#modal").getBoundingClientRect();
    if (
      e.clientX < b.left ||
      e.clientX > b.right ||
      e.clientY < b.top ||
      e.clientY > b.bottom
    )
      $("#modal").close();
  }
});
render();
if (notice) toast(notice);

$("#modal").addEventListener("dblclick", (e) => {
  const n = e.target.closest("[data-note-id]");
  if (
    n &&
    state.notes.some((x) => x.id === Number(n.dataset.noteId) && !x.public) &&
    state.stage !== "reveal"
  )
    notesModal(null, Number(n.dataset.noteId));
});
