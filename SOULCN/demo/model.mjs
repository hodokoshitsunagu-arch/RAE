/* Offline interaction reconstruction. Catalogue composition and eligibility are example configuration. */
export const MODES = [
  {key:'mode:0', id:0, funcType:1, name:'普通模式', mark:'☻', category:'派对', tab:'yuliao'},
  {key:'mode:1', id:1, funcType:1, name:'KTV', mark:'♫', category:'音乐', tab:'ktv'},
  {key:'mode:2', id:2, funcType:1, name:'欢乐PK', mark:'⚡', category:'派对', tab:'wanfa'},
  {key:'mode:5', id:5, funcType:1, name:'速配模式', mark:'⇄', category:'派对', tab:'wanfa'},
  {key:'mode:10', id:10, funcType:1, name:'冒险之雷', mark:'ϟ', category:'游戏', tab:'youxi'},
  {key:'mode:4', id:4, funcType:1, name:'心动模式', mark:'♡', category:'派对', tab:'wanfa'},
  {key:'mode:18', id:18, funcType:1, name:'挚友小屋', mark:'⌂', category:'派对', tab:'wanfa'},
  {key:'mode:23', id:23, funcType:1, name:'树洞模式', mark:'❋', category:'派对', tab:'wanfa'},
  {key:'mode:400001', id:400001, funcType:1, name:'海龟汤', mark:'♧', category:'游戏', tab:'youxi'},
  {key:'mode:400002', id:400002, funcType:1, name:'谁是卧底', mark:'◈', category:'游戏', tab:'youxi'},
  {key:'mode:400003', id:400003, funcType:1, name:'你说我猜', mark:'✎', category:'游戏', tab:'youxi'},
  {key:'mode:400004', id:400004, funcType:1, name:'Ai剧本杀', mark:'▧', category:'游戏', tab:'youxi'},
  {key:'feature:500001', id:500001, funcType:2, name:'唱片机', mark:'◉', category:'音乐', tab:'wanfa'},
  {key:'feature:500002', id:500002, funcType:2, name:'随机话题', mark:'✦', category:'互动', tab:'wanfa'},
  {key:'feature:500003', id:500003, funcType:2, name:'音乐集市', mark:'♬', category:'音乐', tab:'wanfa'},
  {key:'feature:500004', id:500004, funcType:2, name:'心动大冒险', mark:'♥', category:'互动', tab:'wanfa'},
];
export const mode = key => MODES.find(x=>x.key===key);
export const TYPES = [{id:0,name:'选择派对类型'}, {id:1,name:'唱歌听歌'}, {id:2,name:'心动速配'}, {id:4,name:'闲聊唠嗑'}, {id:6,name:'趣味辩论'}, {id:10,name:'兴趣交流'}, {id:5,name:'情感故事'}, {id:7,name:'热门话题'}];
export const BACKGROUNDS = [{id:'example-night',name:'夜色海湾',className:'night',group:'经典',paymentType:0,personalRightsState:0}, {id:'example-violet',name:'紫色梦境',className:'violet',group:'经典',paymentType:0,personalRightsState:0}, {id:'example-forest',name:'森林微光',className:'forest',group:'经典',paymentType:0,personalRightsState:0}, {id:'example-owned-night',name:'海湾月光',className:'night',group:'精美',paymentType:2,personalRightsState:1}, {id:'example-owned-violet',name:'星空旋律',className:'violet',group:'精美',paymentType:2,personalRightsState:1}, {id:'example-owned-forest',name:'萤火花园',className:'forest',group:'精美',paymentType:2,personalRightsState:1}, {id:'example-paid-night',name:'流星海岸',className:'night',group:'活动限定',paymentType:2,personalRightsState:0}, {id:'example-paid-violet',name:'极光之夜',className:'violet',group:'活动限定',paymentType:2,personalRightsState:0}, {id:'example-paid-forest',name:'秘境微光',className:'forest',group:'活动限定',paymentType:2,personalRightsState:0}];
export const privacyName = n => ['已公开','已隐藏','仅挚友'][n] || '未知';
export function initialState() { return {screen:'create', tab:'yuliao', form:{name:'今晚一起聊聊吧',classify:1,topicId:0,privacy:0,backgroundId:'example-night',modeKey:'mode:0'}, room:null, modal:null, draft:null, pending:null, stage:'idle', error:'', recent:[], events:[], scenario:{creationBranch:'rn',gameTab:false,friendSwitch:true,rnGateBlocked:false,role:1,mic:true,otherRoom:false,titleFailure:false,createFailure:false,gameRunning:false,pendingSong:false,switchFailure:false}, settings:{applyMic:false,blockAllMic:false,mergeEntry:false,entranceEffects:false,giftEffects:false,battery:false}}; }
export function validation(form, branch='native', rnGateBlocked=false) { if(branch==='rn'){if(!form.name.trim().length)return '请输入派对名称';if(form.name.length>15)return '派对标题最长不超过15个字';if(rnGateBlocked)return 'RN 附加禁用条件命中（值来源未命名，示例模拟）';if(!mode(form.modeKey))return '请选择有效玩法';return '';}if(!form.name.length) return '请输入派对名称'; if(form.name.length>15) return '派对标题最长不超过15个字'; if(!form.classify) return '请选择派对类型'; if(form.classify===7&&!form.topicId) return '请选择派对主题'; if(!form.backgroundId) return '请选择派对背景'; if(!mode(form.modeKey)) return '请选择有效玩法'; return ''; }
function event(s, text) { s.events=[...s.events,{text,index:s.events.length+1}].slice(-50); }
function open(s,modal,draft=null) { s.modal=modal;s.draft=draft;s.error=''; }
function setCreateSelection(s,key) { const selected=mode(key);if(!selected)return;s.form.modeKey=key;if(s.scenario.creationBranch==='rn'&&selected.id!==18&&s.form.privacy===2)s.form.privacy=0; }
function recordRecent(s,key) { s.recent=[key,...s.recent.filter(k=>k!==key)].slice(0,4); }
function applySwitch(s) {
 const target=mode(s.pending);if(!target||!s.room)return;if(s.scenario.role!==1){s.error='角色已变化，无法提交玩法切换';return;}
 if(s.scenario.switchFailure){s.error='模拟服务端拒绝切换；房间玩法未改变';event(s,'switchResult: failed');return;}
 if(target.funcType===2) { const i=s.room.features.indexOf(target.key);if(i>=0)s.room.features.splice(i,1);else s.room.features.push(target.key); }
 else {s.room.modeKey=s.room.modeKey===target.key?'mode:0':target.key;s.scenario.gameRunning=false;}
 recordRecent(s,target.key);event(s,`functionChanged: ${target.name}`);s.modal=null;s.pending=null;s.error='';
}
export function transition(state, action) {
 const s=structuredClone(state);s.error='';
 switch(action.type) {
 case 'scenario':if(action.key==='creationBranch'&&!['native','rn'].includes(action.value))break;s.scenario[action.key]=action.value;if(!s.scenario.gameTab&&s.tab==='youxi'){s.tab='yuliao';setCreateSelection(s,'mode:0');}event(s,`研究场景 ${action.key} = ${action.value}`);break;
 case 'tab':if(!['yuliao','ktv','wanfa','youxi'].includes(action.tab)||action.tab==='youxi'&&!s.scenario.gameTab)break;s.tab=action.tab;setCreateSelection(s,action.tab==='ktv'?'mode:1':action.tab==='yuliao'?'mode:0':MODES.find(m=>m.tab===action.tab).key);event(s,`tabCode: ${s.tab}`);break;
 case 'field':s.form[action.key]=action.value;break;
 case 'createMode': {const m=mode(action.key);if(m){setCreateSelection(s,m.key);event(s,`开房选择 ${m.name}`);}break;}
 case 'open':open(s,action.modal,action.draft??null);break;
 case 'cancel':if(['confirmSwitch','confirmOpen'].includes(s.modal)) {s.modal='plays';s.pending=null;}else {s.modal=null;s.draft=null;}event(s,'取消：未提交草稿');break;
 case 'chooseDraft':s.draft=action.value;break;
 case 'selectType':if(!TYPES.some(t=>t.id===action.value&&t.id!==0))break;s.form.classify=action.value;s.form.topicId=0;s.modal=null;s.draft=null;event(s,`onSelectType: classify=${action.value} → dismiss`);break;
 case 'selectStatus': {const value=action.value;if(value===3){event(s,'status=3: no-op (RN handler)');break;}if(![0,1,2].includes(value))break;const current=s.modal==='privacy'?s.form:s.room;if(!current)break;if(s.modal==='roomStatus'&&s.scenario.role!==1){s.error='当前角色无法修改房间状态';break;}if(value===2&&(!s.scenario.friendSwitch||mode(current.modeKey).id!==18))break;current.privacy=value;event(s,`callNativeAfterPop: privateStatus=${value}`);s.modal=null;s.draft=null;break;}
 case 'saveFormChoice': if(s.modal==='type'){s.form.classify=s.draft;s.form.topicId=0;}else if(s.modal==='background'){const b=BACKGROUNDS.find(b=>b.id===s.draft);if(!b){s.error='请选择有效背景';break;}if(s.scenario.creationBranch==='rn'&&b.paymentType===2&&b.personalRightsState!==1){s.error='示例付费背景未拥有，演示不购买且不应用';break;}s.form.backgroundId=s.draft;}else if(s.modal==='topic')s.form.topicId=s.draft;s.modal=null;s.draft=null;event(s,'开房配置已选择');break;
 case 'create': {if(s.stage!=='idle')break;const reason=validation(s.form,s.scenario.creationBranch,s.scenario.rnGateBlocked);if(reason)s.error=reason;else if(s.scenario.creationBranch==='native'&&s.scenario.otherRoom)s.error='当前正在其他派对中（模拟冲突），请在研究面板关闭此场景';else if(!s.scenario.mic)s.error=s.scenario.creationBranch==='rn'?'没有录音权限,请在系统设置开启!（模拟 bridge 返回 code=1）':'需要麦克风权限（本 demo 不申请系统权限）';else {s.stage='title';event(s,'request: roomTitleCheck');}break;}
 case 'titleResult':if(s.stage!=='title')break;if(!action.ok){s.stage='idle';s.error='模拟标题校验未通过，请修改名称后重试';event(s,'roomTitleCheck: rejected');}else{s.stage='creating';event(s,'roomTitleCheck: accepted → request: createRoom');}break;
 case 'createResult':if(s.stage!=='creating')break;s.stage='idle';if(!action.ok){s.error='模拟创建失败，保留所有选择，可重试';event(s,'createResult: false');}else {const selected=mode(s.form.modeKey);s.room={...s.form,modeKey:selected.funcType===1?selected.key:'mode:0',features:selected.funcType===2?[selected.key]:[],id:'LOCAL-6380'};s.screen='room';s.modal=null;recordRecent(s,s.form.modeKey);event(s,'createResult: true → 进入离线房间');}break;
 case 'selectPlay': {if(!s.room||s.scenario.role!==1){s.error='仅房主 role=1 显示并操作当前玩法入口';break;}const m=mode(action.key);if(!m)break;if(s.scenario.gameRunning&&[5,10].includes(mode(s.room.modeKey).id)&&m.funcType===1){s.error=mode(s.room.modeKey).id===5?'当前速配进行中，无法关闭速配模式':'当前正在进行冒险之雷玩法，暂不支持关闭，请等本局结束后进行操作';event(s,'专用 handler: 拒绝关闭当前模式');break;}if(m.key==='feature:500003'&&s.room.features.includes(m.key)&&s.scenario.pendingSong){s.error='有未演唱的歌曲，无法关闭模式';break;}s.pending=m.key;const active=m.funcType===2?s.room.features.includes(m.key):s.room.modeKey===m.key;const conflict=m.funcType===1&&s.room.modeKey!=='mode:0'&&!active;if(active||conflict){open(s,'confirmSwitch',{active,conflict});}else if(m.funcType===1&&[2,400001].includes(m.id)){open(s,'confirmOpen',{active:false,conflict:false});}else applySwitch(s);break;}
 case 'confirmSwitch':if(['confirmSwitch','confirmOpen'].includes(s.modal))applySwitch(s);break;
 case 'toggleSetting':if(['applyMic','blockAllMic'].includes(action.key)&&s.scenario.role!==1){s.error='示例权限：仅房主可修改申请上麦';break;}s.settings[action.key]=!s.settings[action.key];event(s,`本地设置 ${action.key} = ${s.settings[action.key]}`);break;
 case 'leave':s.screen='create';s.room=null;s.modal=null;s.pending=null;s.stage='idle';event(s,'离开本地房间 → 保留开房配置');break;
 }
 return s;
}
