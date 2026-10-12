// Reconstruction design. These rules are local demo authority, not recovered APK logic.
export const scripts = [
  { id: 'last-train', title: '雨夜的末班车', subtitle: '有些告别，会在下一站重逢。', category: '现代 · 双人 · 情感', duration: '约 2 分钟', roles: ['沈知', '林屿'], tracks: [{ id: 'rain', title: '01 · 雨落站台', duration: 64, file: 'assets/rain.wav', description: '雨声 / 温柔键盘 / 车站提示' }, { id: 'dawn', title: '02 · 天亮以前', duration: 48, file: 'assets/dawn.wav', description: '暖色和弦 / 钟声 / 留白' }], lines: [
    { kind: 'scene', text: '第一幕 / 站台', note: '深夜。最后一班列车即将离站。雨打在空荡的站台上。' },
    { kind: 'cue', text: '远处的列车提示音', track: 'rain', time: 6 },
    { kind: 'line', role: '沈知', direction: '轻声，迟疑', text: '我以为，你已经走了。' },
    { kind: 'line', role: '林屿', direction: '笑了一下', text: '末班车还没来。再陪你等一会儿。' },
    { kind: 'line', role: '沈知', direction: '混响 · 内心', effect: 'reverb', text: '我有很多话想说。可一见到他，就只剩下沉默。' },
    { kind: 'cue', text: '雨声渐弱 · 脚步靠近', track: 'rain', time: 17 },
    { kind: 'line', role: '林屿', direction: '温柔', text: '这把伞，你还留着？' },
    { kind: 'line', role: '沈知', direction: '故作轻松', text: '挺好用的。丢了多可惜。' },
    { kind: 'cue', text: '手机响起', track: 'rain', time: 31 },
    { kind: 'line', role: '林屿', direction: '电话音', effect: 'phone', text: '嗯，我马上到了。你先睡吧。' },
    { kind: 'line', role: '沈知', direction: '停顿后', text: '原来，已经有人在等你了。' },
    { kind: 'cue', text: '列车进站', track: 'rain', time: 44 },
    { kind: 'scene', text: '第二幕 / 天亮以前', note: '车门缓缓打开。林屿把伞留在她手里。' },
    { kind: 'cue', text: '切换 BGM · 温暖的钟声', track: 'dawn', time: 4 },
    { kind: 'line', role: '林屿', direction: '认真', text: '下次下雨，记得带它来接我。' },
    { kind: 'line', role: '沈知', direction: '微笑', text: '好。下一站见。' },
  ] },
  { id: 'lighthouse', title: '灯塔来信', subtitle: '海风把未寄出的信，读给了你。', category: '治愈 · 双人 · 读物', duration: '约 1 分钟', roles: ['守塔人', '旅人'], tracks: [{ id: 'dawn', title: '01 · 海风与信', duration: 48, file: 'assets/dawn.wav', description: '柔和和弦 / 远处钟声' }], lines: [
    { kind: 'scene', text: '海边 / 清晨', note: '灯塔熄灭之前，一位旅人带来了一封没有署名的信。' },
    { kind: 'cue', text: '钟声', track: 'dawn', time: 4 },
    { kind: 'line', role: '旅人', direction: '好奇', text: '这座灯塔，真的从来没有熄灭过吗？' },
    { kind: 'line', role: '守塔人', direction: '平静', text: '白天也会熄灭。光不是为了照亮所有时候。' },
    { kind: 'line', role: '旅人', direction: '混响 · 内心', effect: 'reverb', text: '原来，休息也是一种守候。' },
    { kind: 'cue', text: '海风 · 留白', track: 'dawn', time: 18 },
    { kind: 'line', role: '守塔人', direction: '温和', text: '等你想回家的时候，就看向这里。' },
    { kind: 'line', role: '旅人', direction: '轻声', text: '那我把这封信，留给下一位旅人。' },
  ] },
];
export const initialState = () => ({ scriptId: scripts[0].id, trackId: 'rain', seat: null, role: null, roles: {}, persona: 'host', joined: true, playing: false, recording: false, effect: 'dry', cursor: 2, follow: true, ready: false, phase: 'waiting', startedAt: null, sessionSeconds: 0, sessionRole: null });
export const selectedScript = state => scripts.find(s => s.id === state.scriptId);
const ok = value => ({ ok: true, value });
const fail = message => ({ ok: false, error: { tag: 'room_rule', message } });
export function transition(state, action) {
  const script = selectedScript(state);
  const hostOnly = ['PLAY', 'TRACK', 'SEEK', 'SCRIPT', 'START', 'FINISH'];
  if (hostOnly.includes(action.type) && state.persona !== 'host') return fail('只有主持人可以控制房间 BGM 与剧本');
  if (!state.joined && action.type !== 'JOIN') return fail('请先进入房间');
  switch (action.type) {
    case 'SCRIPT': {
      if (state.recording) return fail('请先结束录制，再切换剧本');
      const next = scripts.find(s => s.id === action.id); if (!next) return fail('剧本不存在');
      return ok({ ...state, scriptId: next.id, trackId: next.tracks[0].id, playing: false, role: null, roles: {}, cursor: 2, ready: false, phase:'waiting', startedAt:null, sessionSeconds:0 });
    }
    case 'SEAT': if(![3,4,5].includes(action.seat)) return fail('该麦位不可用'); return ok({ ...state, seat: action.seat, ready: false });
    case 'ROLE':
      if (state.seat === null) return fail('先上麦，再认领角色');
      if (!script.roles.includes(action.role)) return fail('角色不存在');
      if (state.roles[action.role] && state.roles[action.role] !== 'self') return fail('这个角色已被认领');
      return ok({ ...state, role: action.role, ready: false, roles: { ...Object.fromEntries(Object.entries(state.roles).filter(([,v]) => v !== 'self')), [action.role]: 'self' } });

    case 'LEAVE_SEAT': return ok({ ...state, seat: null, role: null, ready: false, roles: Object.fromEntries(Object.entries(state.roles).filter(([,v]) => v !== 'self')) });
    case 'READY': if (!state.role) return fail('请先认领角色'); return ok({ ...state, ready: !state.ready });
    case 'PLAY': return ok({ ...state, playing: action.value });
    case 'TRACK': case 'SEEK': if(state.recording) return fail('请先结束录制，再调整 BGM'); if (!script.tracks.some(t => t.id === action.track)) return fail('音效关联的 BGM 不存在'); return ok({ ...state, trackId: action.track });
    case 'START':
      if (!state.role || !state.ready) return fail('请上麦、认领角色，并点击准备好了');
      if(state.phase==='running') return fail('本场演绎已经开始');
      return ok({...state,phase:'running',startedAt:action.now,sessionSeconds:0,sessionRole:state.role});
    case 'FINISH':
      if(state.phase!=='running') return fail('请先开始本场演绎');
      return ok({...state,phase:'finished',playing:false,recording:false,ready:false,sessionSeconds:Math.max(0,Math.floor((action.now-state.startedAt)/1000))});
    case 'PERSONA': if(!['host','actor'].includes(action.value)) return fail('身份不存在'); return ok({ ...state, persona: action.value });
    case 'EFFECT': if(!['dry','reverb','phone'].includes(action.value)) return fail('音效不存在'); return ok({ ...state, effect: action.value });
    case 'CURSOR': if(!Number.isInteger(action.index)||action.index<0||action.index>=script.lines.length) return fail('台词位置不存在'); return ok({ ...state, cursor: action.index });
    case 'FOLLOW': return ok({ ...state, follow: !state.follow });
    case 'RECORD': return ok({ ...state, recording: action.value });

    case 'LEAVE': return ok({ ...state, joined: false, playing: false, recording: false, seat: null, role: null, ready: false, roles: {} });
    case 'JOIN': return ok({ ...initialState(), joined: true });
    default: return fail('未知房间操作');
  }
}
