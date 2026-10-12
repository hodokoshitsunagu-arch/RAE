import { initialState, transition, scripts, selectedScript } from './model.mjs';
import { RoomAudio } from './audio.mjs';
const $ = selector => document.querySelector(selector);
let state = initialState(), micPending = false, busy = false, toastTimer, recordingStart = 0, pendingVersion = 0, fontSize = 18;
const audio = new RoomAudio($('#bgm'));
const actors = [{ name: '许岸', initial: '岸', color: 'green', caption: '演示伙伴' }, { name: '知夏', initial: '夏', color: 'coral', caption: '演示伙伴' }, { name: '听澜', initial: '澜', color: 'violet', caption: '演示伙伴' }];
const time = value => `${String(Math.floor(value / 60)).padStart(2,'0')}:${String(Math.floor(value % 60)).padStart(2,'0')}`;
const escape = text => String(text).replace(/[&<>"']/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
function notify(message) { $('#toast').textContent = message; $('#toast').classList.add('visible'); clearTimeout(toastTimer); toastTimer = setTimeout(() => $('#toast').classList.remove('visible'), 3200); }
function message(text, name = '') { const item = document.createElement('div'); item.className = name ? 'chat-message' : 'system-message'; if (name) { const b = document.createElement('b'); b.textContent = name; const p = document.createElement('p'); p.textContent = text; item.append(b,p); } else item.textContent = text; $('#messages').append(item); $('#messages').scrollTop = $('#messages').scrollHeight; }
function dispatch(action) { const result=transition(state,action); if(!result.ok){notify(result.error.message);return false;} state=result.value; render(); return true; }
function openDialog(title, markup) { $('#dialog-title').textContent = title; $('#dialog-body').innerHTML = markup; if (!$('#dialog').open) $('#dialog').showModal(); }
function closeDialog() { $('#dialog').close(); }
$('#close-dialog').onclick = closeDialog;
function confirmation(title, copy, label, callback) { openDialog(title, `<p class="dialog-copy">${escape(copy)}</p><div class="dialog-actions"><button class="outline" id="cancel-action">取消</button><button class="primary" id="confirm-action">${escape(label)}</button></div>`); $('#cancel-action').onclick = closeDialog; $('#confirm-action').onclick = () => { closeDialog(); callback(); }; }
function currentTrack() { return selectedScript(state).tracks.find(track => track.id === state.trackId); }
function renderSeats() {
  $('#seat-count').textContent = `${state.seat === null ? 3 : 4} / 6`;
  $('#seats').innerHTML = Array.from({ length: 6 }, (_,i) => {
    const self = state.seat === i, actor = actors[i];
    return `<button class="seat ${self ? 'self' : ''} ${self && audio.mic ? 'speaking' : ''}" data-seat="${i}" aria-label="${self ? '我的麦位，点击下麦' : actor ? actor.name + '的麦位' : '上麦到 ' + (i+1) + ' 号位'}"><span class="avatar ${self ? 'yellow' : actor?.color || 'empty'}">${self ? '我' : actor?.initial || '+'}</span><b>${self ? '我' : actor?.name || '等你上麦'}</b><small>${self ? state.ready ? '已准备' : state.role || '待认角' : actor?.caption || (i+1) + ' 号麦'}</small></button>`;
  }).join('');
  $('#seats').querySelectorAll('button').forEach(button => button.onclick = () => {
    const i = Number(button.dataset.seat);
    if (i < actors.length) { notify('演示人物的麦位已占用，请选择空位'); return; }
    if (state.seat === i) { if (state.recording) { notify('请先结束录制，再下麦'); return; } audio.stopMic(); micPending = false; dispatch({type:'LEAVE_SEAT'}); message('我已回到观众席，麦克风已关闭。'); }
    else { dispatch({type:'SEAT',seat:i}); message(`我已上麦到 ${i+1} 号位。麦克风默认关闭。`); notify('上麦成功，接下来认领一个角色'); }
  });
  $('#seat-hint').textContent = state.seat === null ? '点击空麦位，加入这一场故事。' : '麦位已就绪，点一下角色开始参演。';
  $('#mic').disabled = state.seat === null || micPending;
  $('#mic').classList.toggle('on',!!audio.mic); $('#mic').innerHTML = `<span>♩</span>${micPending ? '等待授权…' : audio.mic ? '关闭麦克风' : '打开麦克风'}`;
  $('#mic-state').textContent = audio.mic ? '麦克风已开启 · 仅送入本地录音' : '麦克风未开启 · 不会采集声音';
  $('#ready').disabled = !state.role; $('#ready').textContent = state.ready ? '取消准备' : '准备好了';
}
function renderRoles() {
  $('#roles').innerHTML = selectedScript(state).roles.map((role,i) => `<button class="role-chip ${state.role === role ? 'mine' : ''}" data-role="${escape(role)}"><span class="role-avatar">${i+1}</span><b>${escape(role)}</b><small>${state.roles[role] === 'self' ? '我 · 已认领' : state.roles[role] || '待认领 +'}</small></button>`).join('');
  $('#roles').querySelectorAll('button').forEach(button => button.onclick = () => {
    const role = button.dataset.role;
    if (!dispatch({type:'ROLE',role})) return;
    message(`我认领了「${role}」。`); notify(`已认领 ${role}，你的台词会高亮标记`);
  });
  $('#my-role').textContent = state.role ? `${state.role} · 我的角色` : '尚未认领角色';
}
function renderReader() {
  const script = selectedScript(state);
  if ($('#script-body').dataset.script !== script.id) {
    $('#script-body').dataset.script = script.id;
    $('#current-title').textContent = $('#script-title').textContent = script.title; $('#script-subtitle').textContent = script.subtitle;
    $('#script-tags').textContent = script.category; $('#script-duration').textContent = script.duration;
    $('.station-sign').textContent = script.id==='last-train' ? 'LAST TRAIN' : 'THE LIGHTHOUSE'; $('.cover-art').classList.toggle('lighthouse',script.id==='lighthouse');
    $('#script-body').innerHTML = script.lines.map((line,i) => {
      if (line.kind === 'scene') return `<section class="scene" data-index="${i}"><h3>${escape(line.text)}</h3><p>${escape(line.note)}</p></section>`;
      if (line.kind === 'cue') return `<button class="cue" data-index="${i}"><span>♫</span><span class="cue-time">${time(line.time)}</span><span>${escape(line.text)}</span><span class="cue-end">跳 B ↗</span></button>`;
      return `<div class="dialogue" data-role="${escape(line.role)}" data-role-index="${script.roles.indexOf(line.role)}" data-index="${i}" tabindex="0" role="button" aria-label="标记当前台词：${escape(line.text)}"><div class="line-head"><span class="character">${escape(line.role)}</span><span class="direction">（${escape(line.direction)}）</span></div><p>${escape(line.text)}</p></div>`;
    }).join('');
    $('#script-body').querySelectorAll('.cue').forEach(button => button.onclick = () => seekCue(Number(button.dataset.index)));
    $('#script-body').querySelectorAll('.dialogue').forEach(line => { const choose = () => dispatch({type:'CURSOR',index:Number(line.dataset.index)}); line.onclick = choose; line.onkeydown = e => { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); choose(); } }; });
    $('#script-scroll').scrollTop = 0;
  }
  $('#script-body').querySelectorAll('.dialogue').forEach(el => { el.classList.toggle('mine',el.dataset.role === state.role); el.classList.toggle('active',Number(el.dataset.index) === state.cursor); });
  $('#reader-status').textContent = state.playing ? '让台词跟着音效，慢慢往前走' : '开场前，先熟悉自己的台词';
  $('#follow').setAttribute('aria-pressed',state.follow);
}
function renderTracks() {
  const host = state.persona === 'host' && state.joined; $('#host-label').textContent = host ? '主持人' : '演员 · 只听';
  $('#tracks').innerHTML = selectedScript(state).tracks.map(track => `<button class="track ${state.trackId===track.id?'selected':''}" data-track="${track.id}" ${host?'':'disabled'}><span class="track-icon">♫</span><span class="track-copy"><b>${escape(track.title)}</b><span>${escape(track.description)}</span></span><span class="track-duration">${time(track.duration)}</span></button>`).join('');
  $('#tracks').querySelectorAll('button').forEach(el => el.onclick = () => changeTrack(el.dataset.track));
  $('#play').textContent = state.playing ? 'Ⅱ' : '▶'; $('#play').setAttribute('aria-label',state.playing ? '暂停 BGM' : '播放 BGM');
  for (const id of ['play','seek','back','forward','choose-script']) $('#'+id).disabled = !host || busy;
  $('#persona').disabled = busy;
  $('#begin').disabled = !host || busy;
  $('#begin').innerHTML = state.phase==='running' ? '结束演绎 <span>□</span>' : state.phase==='finished' ? '再走一次 <span>↻</span>' : '开始走本 <span>→</span>';
  $('#session-state').textContent = state.phase==='running' ? '演绎进行中 · '+time((Date.now()-state.startedAt)/1000) : state.phase==='finished' ? '本场已杀青，声音留在故事里' : '分好角色，准备开场';
  $('#duration').textContent = time(currentTrack().duration); $('#seek').max = currentTrack().duration;
  $('#elapsed').textContent = time(audio.element.currentTime || 0); if(document.activeElement!==$('#seek'))$('#seek').value=audio.element.currentTime || 0;
  $('#cache').textContent = selectedScript(state).tracks.every(t => audio.cache.has(t.id)) ? '✓ 本场 BGM 已缓存' : '↓ 缓存本场 BGM';
  $('#waveform').classList.toggle('playing',state.playing);
  $('#mobile-play').disabled = !host || busy;
  $('#mobile-play').textContent = state.playing ? 'Ⅱ' : '▶'; $('#mobile-track').textContent=currentTrack().title;
  $('#mobile-time').textContent=time(audio.element.currentTime || 0)+(host?' · 主持人控制':' · 演员只听');
}
function render() { renderSeats(); renderRoles(); renderReader(); renderTracks(); document.querySelectorAll('[data-effect]').forEach(el => el.classList.toggle('selected',el.dataset.effect===state.effect)); $('#persona').value = state.persona; }
async function operation(fn) { if (busy) return; busy = true; renderTracks(); try { await fn(); } catch (error) { notify(error.message || '操作失败，请重试'); } finally { busy = false; render(); } }
async function changeTrack(id) {
  if (state.recording) { notify('录制中请先结束录制，再切换 BGM'); return; }
  await operation(async () => { if (!dispatch({type:'TRACK',track:id})) return; audio.pause(); dispatch({type:'PLAY',value:false}); audio.select(currentTrack()); await audio.seek(0); message(`主持人切换了 BGM：${currentTrack().title}`); });
}
function seekCue(index) {
  if (state.persona !== 'host') { notify('时间戳由主持人控制，请提醒主持人拉 B'); return; }
  if (state.recording) { notify('录制中请先结束录制，再跳转时间戳'); return; }
  const line = selectedScript(state).lines[index], track = selectedScript(state).tracks.find(t => t.id===line.track), version = pendingVersion;
  confirmation('跳转到这个音效？',`将 BGM 切换到「${track.title}」的 ${time(line.time)}。${state.playing ? '跳转后继续播放。' : '跳转后保持暂停。'}`, '确认跳 B', () => operation(async () => {
    if (version !== pendingVersion) return;
    const playing = state.playing;
    if (!dispatch({type:'SEEK',track:line.track})) return;
    audio.select(track); await audio.seek(line.time); dispatch({type:'CURSOR',index:Math.min(index+1,selectedScript(state).lines.length-1)});
    if (playing) await audio.play();
    message(`主持人将 BGM 拉到 ${time(line.time)} · ${line.text}`); notify('已跳转到音效时间点');
  }));
}
$('#play').onclick = () => operation(async () => {
  if (state.playing) { audio.pause(); dispatch({type:'PLAY',value:false}); }
  else { audio.select(currentTrack()); await audio.play(); if (dispatch({type:'PLAY',value:true})) message('主持人开始播放 BGM，故事开始了。'); }
});
$('#mobile-play').onclick = () => $('#play').click();
$('#mobile-console').onclick = () => $('.director-panel').scrollIntoView({behavior:'smooth',block:'start'});
$('#toggle-stage').onclick = () => { const expanded=$('.cast-panel').classList.toggle('expanded'); $('#toggle-stage').setAttribute('aria-expanded',expanded); $('#toggle-stage').textContent=expanded?'收起舞台 ↑':'展开舞台 ↓'; };
$('#begin').onclick = () => {
  if(state.phase==='running') {
    confirmation('让这场故事落幕？','BGM 和麦克风将关闭。若正在录音，会保存这一段本地录音。','完成演绎',()=>{
      audio.pause(); audio.stopMic(); audio.stopRecord(); dispatch({type:'FINISH',now:Date.now()}); renderRecording();
      message(`「${selectedScript(state).title}」演绎结束。`);
      openDialog('这场故事，有了你的声音',`<div class="settlement"><span class="eyebrow">本地演绎已完成</span><h3>${escape(selectedScript(state).title)}</h3><p>你饰演了 <b>${escape(state.sessionRole)}</b></p><div class="session-stats"><div><b>${time(state.sessionSeconds)}</b><span>本场时长</span></div><div><b>${selectedScript(state).lines.filter(l=>l.kind==='line'&&l.role===state.sessionRole).length}</b><span>角色台词数</span></div></div><p class="help-note">这是本地演示的时长与剧本统计。录音如已开启，会保存在右侧，支持试听和下载。</p></div><div class="dialog-actions"><button class="primary" id="finish-done">回到房间</button></div>`);
      $('#finish-done').onclick=closeDialog;
    });return;
  }
  const startCheck=transition(state,{type:'START',now:Date.now()});if(!startCheck.ok){notify(startCheck.error.message);return;}
  operation(async()=>{if(state.phase==='finished'){audio.pause();await audio.seek(0);}audio.select(currentTrack());await audio.play();dispatch({type:'START',now:Date.now()});message('本场演绎开始，跟随音效接词吧。');});
};
async function seekBy(seconds) { if (state.recording) { notify('请先结束录制，再调整 BGM 进度'); return; } if (!dispatch({type:'SEEK',track:state.trackId})) return; await operation(() => audio.seek(seconds)); }
$('#seek').onchange = e => seekBy(Number(e.target.value)); $('#back').onclick = () => seekBy(audio.element.currentTime-5); $('#forward').onclick = () => seekBy(audio.element.currentTime+5);
$('#volume').oninput = e => { audio.setVolume(Number(e.target.value)); $('#volume-label').textContent = Math.round(audio.volume*100)+'%'; };
$('#cache').onclick = async () => { $('#cache').disabled=true; $('#cache-state').textContent='正在将音频载入浏览器内存…'; try { await audio.cacheTracks(selectedScript(state).tracks); $('#cache-state').textContent='本场音频已缓存 · 仅本次页面会话'; notify('本场 BGM 已缓存'); } catch(e) { $('#cache-state').textContent='缓存失败，可以重试'; notify(e.message); } finally { $('#cache').disabled=false; renderTracks(); } };
$('#mic').onclick = async () => {
  if (audio.mic) { audio.stopMic(); renderSeats(); return; }
  micPending = true; renderSeats();
  try { if (await audio.startMic()) { renderSeats(); notify('麦克风已开启，仅用于本地录音'); } }
  catch(e) { notify(e.name === 'NotAllowedError' ? '未获得麦克风权限。可以继续听 BGM、阅读剧本。' : e.name === 'NotFoundError' ? '未找到麦克风设备' : e.message); }
  finally { micPending=false; renderSeats(); }
};
$('#ready').onclick = () => { if (dispatch({type:'READY'})) message(state.ready ? `我已准备好出演 ${state.role}。` : '我取消了准备。'); };
document.querySelectorAll('[data-effect]').forEach(el => el.onclick = () => { dispatch({type:'EFFECT',value:el.dataset.effect}); audio.applyEffect(state.effect); notify(`${el.textContent}已选${audio.mic ? '，会应用到录音人声' : '，打开麦克风后应用到录音人声'}`); });
$('#follow').onclick = () => dispatch({type:'FOLLOW'});
$('#font-smaller').onclick = () => { fontSize=Math.max(14,fontSize-1); document.documentElement.style.setProperty('--script-size',fontSize+'px'); };
$('#font-larger').onclick = () => { fontSize=Math.min(26,fontSize+1); document.documentElement.style.setProperty('--script-size',fontSize+'px'); };
$('#persona').onchange = e => { pendingVersion++; dispatch({type:'PERSONA',value:e.target.value}); notify(state.persona==='host' ? '已切换为主持人，可以控制剧本与 BGM' : '已切换为演员，BGM 控制由主持人负责'); };
$('#choose-script').onclick = () => {
  if (state.recording) { notify('请先结束录制，再切换剧本'); return; }
  openDialog('今晚，想走哪个故事？', scripts.map(script => `<button class="script-option" data-script="${script.id}"><span><b>${escape(script.title)}</b><small>${escape(script.category)} · ${script.duration}</small></span><span>${script.id===state.scriptId?'当前剧本':'选择 →'}</span></button>`).join('')+'<p class="help-note">演示剧本与音频均为原创，没有复制平台作品。</p>');
  $('#dialog-body').querySelectorAll('button').forEach(el => el.onclick = () => { const id=el.dataset.script; closeDialog(); if (id===state.scriptId) return; confirmation('切换剧本？','当前 BGM 将停止，角色分配和走本位置将重置。麦位会保留。','确认切换', () => { if (!dispatch({type:'SCRIPT',id})) return; pendingVersion++; audio.pause(); audio.select(currentTrack(),{reset:true}); renderTracks(); message(`主持人选定了「${selectedScript(state).title}」。请重新认领角色。`); }); });
};
$('#chat-form').onsubmit = e => { e.preventDefault(); const text=$('#chat-input').value.trim(); if (!text) return; message(text,'我'); $('#chat-input').value=''; };
let recordingBusy=false;
$('#record').onclick = async () => {
  if (recordingBusy) return;
  if (state.recording) { audio.stopRecord(); dispatch({type:'RECORD',value:false}); renderRecording(); return; }
  confirmation('录下这一场', audio.mic ? '保存本地 BGM 与麦克风人声。不会上传，结束后可以试听和下载。' : '麦克风未开启，这次只录制本地 BGM。想录下自己的台词，可以先上麦并打开麦克风。', '开始录制', async () => {
    if (recordingBusy) return; recordingBusy=true; $('#record').disabled=true;
    const version=pendingVersion;
    try { await audio.record(({url,blob,extension}) => { const entry=document.createElement('div'), player=document.createElement('audio'), link=document.createElement('a'); player.controls=true; player.src=url; link.href=url; link.download=`piaxi-${Date.now()}.${extension}`; link.textContent=`下载本场录音 · ${Math.ceil(blob.size/1024)} KB`; entry.append(player,link); $('#recordings').append(entry); }); if(version!==pendingVersion || !state.joined){audio.stopRecord();return;} recordingStart=Date.now(); dispatch({type:'RECORD',value:true}); message('本地录音开始。录制期间 BGM 可以播放与暂停，拉 B 和切本需先结束录音。'); }
    catch(e) { notify(e.message); } finally { recordingBusy=false; $('#record').disabled=false; renderRecording(); }
  });
};
function renderRecording() { $('#record').classList.toggle('recording',state.recording); $('#record-label').textContent=state.recording?'结束录制':'录下这一场'; $('#record-time').textContent=state.recording?time((Date.now()-recordingStart)/1000):'本地录制'; }
function leaveRoom() { pendingVersion++; audio.pause(); audio.stopMic(); audio.stopRecord(); micPending=false; dispatch({type:'LEAVE'}); renderRecording(); document.querySelector('.workspace').inert=true; openDialog('这一场，先到这里', '<p class="dialog-copy">你已离开房间，音频和麦克风已关闭。本地录音会保留在本次页面中。</p><div class="dialog-actions"><button class="primary" id="rejoin">重新进入演示房</button></div>'); $('#close-dialog').hidden=true; $('#rejoin').onclick = () => { document.querySelector('.workspace').inert=false; $('#close-dialog').hidden=false; dispatch({type:'JOIN'}); audio.select(currentTrack(),{reset:true}); renderTracks(); closeDialog(); message('我重新进入了房间。'); }; }
$('#leave').onclick = () => confirmation('离开雨声小剧场？','BGM 和麦克风将关闭。正在录制的内容会自动结束并保留。','离开房间',leaveRoom);
$('#dialog').addEventListener('cancel',e => { if (!state.joined) e.preventDefault(); });
$('#help').onclick = () => { if (!state.joined) return; openDialog('让声音进入故事', '<ol class="help-list"><li>选择空麦位，认领角色；麦克风默认关闭。</li><li>主持人缓存 BGM，分好角色后播放音乐。</li><li>按台词与音效走本；点击音效时间点，确认后跳 B。</li><li>内心独白可选 R&B，通话可选电话音，结束后回到原声。</li><li>录下这一场，结束后试听或下载到本地。</li></ol><p class="help-note">这是根据 APK 声明、资源与公开教程重建的前端。其他人物为演示人物；没有联机、语音传输或平台账号。音效会处理实际麦克风录音。支持原创 BGM 播放与本地录音。</p><div class="dialog-actions"><button class="outline" id="help-leave">离开房间</button><button class="primary" id="help-done">开始走本</button></div>'); $('#help-done').onclick=closeDialog; $('#help-leave').onclick=leaveRoom; };
$('#rules-tab').onclick = () => { $('#seats-view').hidden=true; $('#rules-view').hidden=false; $('#rules-tab').classList.add('active'); $('#room-tab').classList.remove('active'); };
$('#room-tab').onclick = () => { $('#seats-view').hidden=false; $('#rules-view').hidden=true; $('#rules-tab').classList.remove('active'); $('#room-tab').classList.add('active'); };
audio.element.addEventListener('play',() => { if (state.joined) dispatch({type:'PLAY',value:true}); });
audio.element.addEventListener('pause',() => { if (state.joined) { state={...state,playing:false}; renderTracks(); } });
audio.element.addEventListener('ended',() => { state={...state,playing:false}; render(); notify('这段 BGM 播放结束，可以切换下一段'); });
audio.element.addEventListener('error',() => notify('BGM 无法加载，请检查本地音频文件'));
let lastCue=-1;
audio.element.addEventListener('timeupdate',() => {
  const now=audio.element.currentTime; $('#elapsed').textContent=time(now); if (document.activeElement!==$('#seek')) $('#seek').value=now;
  $('#mobile-time').textContent=time(now)+(state.persona==='host'?' · 主持人控制':' · 演员只听');
  if (state.follow && state.playing) {
    let cue=-1; selectedScript(state).lines.forEach((line,i) => { if(line.kind==='cue' && line.track===state.trackId && line.time<=now) cue=i; });
    const cueKey=`${state.scriptId}/${state.trackId}/${cue}`;
    if (cue>=0 && cueKey!==lastCue) { lastCue=cueKey; dispatch({type:'CURSOR',index:Math.min(cue+1,selectedScript(state).lines.length-1)}); const active=$('#script-body .active'); if (active) { const container=$('#script-scroll'); container.scrollTo({top:Math.max(0,active.offsetTop-container.offsetTop-100),behavior:matchMedia('(prefers-reduced-motion: reduce)').matches?'instant':'smooth'}); } }
  }
});
$('#waveform').innerHTML=Array.from({length:50},(_,i)=>`<i style="--h:${9+Math.round(Math.abs(Math.sin(i*1.37)*Math.cos(i*.22))*29)}px"></i>`).join('');
setInterval(() => { if(state.recording) renderRecording(); if(state.phase==='running')$('#session-state').textContent='演绎进行中 · '+time((Date.now()-state.startedAt)/1000); },500);
window.addEventListener('pagehide',() => audio.dispose());
audio.select(currentTrack()); render(); renderRecording();
