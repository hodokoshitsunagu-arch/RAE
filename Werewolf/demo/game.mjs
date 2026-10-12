// Demo authority: this local reducer owns state. Rules are reconstruction choices,
// not recovered NetEase server code. See README.md and analysis/core-interactions.
export const ROLES = {
 wolf: {name:'狼人', camp:'狼人阵营', hint:'夜晚与狼队选择目标，白天隐藏身份。', art:'wolf'},
 seer: {name:'预言家', camp:'好人阵营', hint:'每晚查验一名玩家，获知其是否为狼人。', art:'prophet'},
 witch: {name:'女巫', camp:'好人阵营', hint:'拥有一瓶解药与一瓶毒药；本演示每夜至多使用一瓶。', art:'witch'},
 hunter: {name:'猎人', camp:'好人阵营', hint:'被狼刀或放逐出局后可开枪；被毒杀时不能开枪。', art:'hunter'},
 idiot: {name:'白痴', camp:'好人阵营', hint:'首次被投出时翻牌留场，从此失去投票权。', art:'idoit'},
 villager: {name:'村民', camp:'好人阵营', hint:'仔细听发言、记录信息，用投票找出狼人。', art:'villager'}
};
const NAMES=['林间来信','晚风','南山','一盏灯','北斗','云边','月见','青禾','长夜','阿离','小满','星河'];
const BASE=['witch','villager','wolf','villager','wolf','villager','seer','villager','wolf','hunter','idiot','wolf'];
export const PHASE_NAMES={lobby:'入座准备',reveal:'身份揭示',wolf:'狼人行动',seer:'预言家查验',witch:'女巫用药',dawn:'天亮公告',speech:'轮流发言',vote:'放逐投票',vote_result:'投票结果',hunter:'猎人开枪',lastwords:'出局遗言',result:'对局结算'};
const clone=s=>structuredClone(s);
const player=(s,id)=>s.players.find(p=>p.id===Number(id));
const alive=s=>s.players.filter(p=>p.alive);
function log(s,text,privateEntry=false){s.log.push({id:s.log.length+1,day:s.day,text,private:privateEntry,audience:privateEntry?s.me:null});}
export function createGame(role='seer'){
 if(!ROLES[role])role='seer';
 const roles=[...BASE], i=roles.indexOf(role);[roles[6],roles[i]]=[roles[i],roles[6]];
 return {phase:'lobby',day:1,me:7,players:roles.map((role,i)=>({id:i+1,name:NAMES[i],role,alive:true,ready:i!==6,canVote:true,flipped:false})),selected:null,ready:false,medicine:{save:true,poison:true},medicineChoice:'none',checked:{},lastInspection:null,notes:{},muted:{},mic:false,remaining:120,speaker:null,speechIndex:0,speechOrder:[],ballots:[],ballotHistory:[],voteRound:0,tieCandidates:[],night:{victim:null,poison:null,saved:false},deaths:[],exiled:null,lastWordsId:null,hunterId:null,hunterResume:null,winner:null,message:'',log:[{id:1,day:1,text:'欢迎来到月下城堡。其他 11 位玩家已准备。',private:false}]};
}
export function hasTurn(s){const me=player(s,s.me);return (s.phase==='hunter'&&s.hunterId===s.me)||me.alive&&((s.phase==='wolf'&&me.role==='wolf')||(s.phase==='seer'&&me.role==='seer')||(s.phase==='witch'&&me.role==='witch'));}
export function canTarget(s,id){const p=player(s,id),me=player(s,s.me);if(!p||!p.alive)return false;
 if(s.phase==='vote')return me.alive&&me.canVote&&(!s.tieCandidates.length||s.tieCandidates.includes(p.id));
 if(s.phase==='hunter')return s.hunterId===s.me&&p.id!==s.hunterId;
 if(!hasTurn(s))return false;
 if(s.phase==='wolf')return p.role!=='wolf';
 if(s.phase==='seer')return p.id!==s.me&&!s.lastInspection;
 if(s.phase==='witch')return s.medicineChoice==='poison'&&p.id!==s.me;
 return false;
}
function win(s){const ps=alive(s);if(!ps.some(p=>p.role==='wolf'))return 'good';if(!ps.some(p=>p.role==='villager')||!ps.some(p=>p.role!=='villager'&&p.role!=='wolf'))return 'wolf';return null;}
function finish(s){s.winner=win(s);if(s.winner){s.phase='result';s.mic=false;log(s,s.winner==='good'?'所有狼人已出局，好人阵营获胜。':'好人一侧已全部出局，狼人阵营获胜。');return true;}return false;}
function enter(s,phase){s.phase=phase;if(phase==='lastwords'&&s.exiled)s.lastWordsId=s.exiled;s.selected=null;s.message='';s.mic=false;if(phase==='speech'){s.speechOrder=alive(s).map(p=>p.id);s.speechIndex=0;s.speaker=s.speechOrder[0];s.remaining=120;log(s,`第 ${s.day} 天，${s.speaker} 号开始发言。`);}if(phase==='vote'){s.ballots=[];log(s,s.voteRound?'平票玩家进入第二轮投票。':'发言结束，请选择放逐目标。');}}
function beginNight(s){s.night={victim:null,poison:null,saved:false};s.lastInspection=null;s.medicineChoice='none';s.voteRound=0;s.tieCandidates=[];s.exiled=null;s.lastWordsId=null;enter(s,'wolf');log(s,`第 ${s.day} 夜，天黑请闭眼。`);}
function afterNight(s){const deaths=[];if(s.night.victim&&!s.night.saved)deaths.push({id:s.night.victim,cause:s.night.poison===s.night.victim?'poison':'wolf'});if(s.night.poison&&!deaths.some(d=>d.id===s.night.poison))deaths.push({id:s.night.poison,cause:'poison'});
 for(const d of deaths)player(s,d.id).alive=false;s.deaths=deaths;enter(s,'dawn');log(s,deaths.length?`天亮了。昨晚 ${deaths.map(d=>`${d.id} 号`).join('、')} 出局。`:'天亮了。昨晚是平安夜。');}
function pendingHunter(s,deaths,resume){const d=deaths.find(d=>player(s,d.id).role==='hunter'&&d.cause!=='poison');if(d){s.hunterId=d.id;s.hunterResume=resume;enter(s,'hunter');log(s,`${d.id} 号猎人亮牌，可以发动技能。`);return true;}return false;}
function botVictim(s){return [2,4,6,8,7,1,10,11].find(id=>player(s,id)?.alive&&player(s,id)?.role!=='wolf')??alive(s).find(p=>p.role!=='wolf')?.id;}
function botVoteTarget(s){const candidates=alive(s).filter(p=>!s.tieCandidates.length||s.tieCandidates.includes(p.id));return [3,9,5,12,2,4].find(id=>candidates.some(p=>p.id===id))??candidates[0]?.id;}
function botBallots(s,myTarget=null,includeMe=true){const primary=botVoteTarget(s),pool=alive(s).filter(p=>!s.tieCandidates.length||s.tieCandidates.includes(p.id)).map(p=>p.id);const alternate=[9,3,5,12,...pool].find(id=>id!==primary&&pool.includes(id))??primary;return alive(s).filter(p=>p.canVote&&(includeMe||p.id!==s.me)).map(p=>{if(p.id===s.me)return {voter:p.id,target:myTarget};let target=p.id<=6?primary:alternate;if(target===p.id)target=pool.find(id=>id!==p.id)??null;return {voter:p.id,target};});}
export function resolveBallots(input,ballots){const s=clone(input);s.ballots=ballots.filter(b=>player(s,b.voter)?.alive&&player(s,b.voter)?.canVote&&(b.target===null||player(s,b.target)?.alive));const totals={};for(const b of s.ballots)if(b.target!==null)totals[b.target]=(totals[b.target]??0)+1;const max=Math.max(0,...Object.values(totals));const tied=Object.keys(totals).filter(id=>totals[id]===max).map(Number);s.ballotHistory.push({day:s.day,round:s.voteRound+1,ballots:clone(s.ballots)});s.selected=null;
 if(tied.length!==1){s.exiled=null;if(tied.length>1&&s.voteRound===0){s.voteRound=1;s.tieCandidates=tied;enter(s,'vote');log(s,`${tied.join('、')} 号平票，重新投票。`);}else{enter(s,'vote_result');log(s,'本轮没有产生放逐目标。');}return s;}
 s.exiled=tied[0];const p=player(s,s.exiled);if(p.role==='idiot'&&!p.flipped){p.flipped=true;p.canVote=false;s.exiled=null;log(s,`${p.id} 号白痴翻牌，留在场上并失去投票权。`);}else{p.alive=false;log(s,`${p.id} 号获得 ${max} 票，被放逐出局。`);}enter(s,'vote_result');return s;}
export function transition(input,action){let s=clone(input);s.message='';const me=player(s,s.me);
 if(action.type==='RESET')return createGame(action.role??me.role);
 if(action.type==='NOTE'){if(player(s,action.id))s.notes[action.id]=action.note;return s;}
 if(action.type==='MUTE'){if(player(s,action.id))s.muted[action.id]=!s.muted[action.id];return s;}
 if(action.type==='READY'&&s.phase==='lobby'){s.ready=!s.ready;me.ready=s.ready;return s;}
 if(action.type==='START'&&s.phase==='lobby'){if(!s.ready){s.message='请先准备。';return s;}enter(s,'reveal');log(s,`你的身份是${ROLES[me.role].name}。`,true);return s;}
 if(action.type==='SELECT'){if(canTarget(s,action.id))s.selected=Number(action.id);return s;}
 if(action.type==='MEDICINE'&&s.phase==='witch'&&hasTurn(s)){
  if(!['none','save','poison'].includes(action.choice))return s;
  if(action.choice==='save'&&(!s.medicine.save||!s.night.victim||s.night.victim===s.me)){s.message='本演示不能自救，或解药已用尽。';return s;}
  if(action.choice==='poison'&&!s.medicine.poison){s.message='毒药已用尽。';return s;}
  s.medicineChoice=action.choice;s.selected=null;return s;
 }
 if(action.type==='MIC'){if(s.phase==='speech'&&s.speaker===s.me&&me.alive)s.mic=!s.mic;return s;}
 if(action.type==='TICK'){if(s.phase==='speech'){s.remaining=Math.max(0,s.remaining-1);if(!s.remaining)return transition(s,{type:'ADVANCE'});}return s;}
 if(action.type==='CONFIRM'){
  if(s.phase==='wolf'&&hasTurn(s)){if(!canTarget(s,s.selected)){s.message='请选择一名好人阵营玩家。';return s;}s.night.victim=s.selected;log(s,`狼队选择了 ${s.selected} 号。`,true);enter(s,'seer');return s;}
  if(s.phase==='seer'&&hasTurn(s)){if(!canTarget(s,s.selected)){s.message='请选择尚存活的其他玩家。';return s;}s.lastInspection={id:s.selected,wolf:player(s,s.selected).role==='wolf'};s.checked[s.selected]=s.lastInspection.wolf?'狼人':'好人';log(s,`查验 ${s.selected} 号：${s.checked[s.selected]}。`,true);s.selected=null;return s;}
  if(s.phase==='witch'&&hasTurn(s)){if(s.medicineChoice==='poison'&&!canTarget(s,s.selected)){s.message='请选择毒药目标。';return s;}
   if(s.medicineChoice==='save'){s.night.saved=true;s.medicine.save=false;log(s,`使用解药救下 ${s.night.victim} 号。`,true);}
   if(s.medicineChoice==='poison'){s.night.poison=s.selected;s.medicine.poison=false;log(s,`使用毒药，目标 ${s.selected} 号。`,true);}afterNight(s);return s;}
  if(s.phase==='vote'&&me.alive&&me.canVote){if(!canTarget(s,s.selected)){s.message='请选择投票目标。';return s;}return transition(s,{type:'CAST',target:s.selected});}
  if(s.phase==='hunter'&&s.hunterId===s.me){if(!canTarget(s,s.selected)){s.message='请选择开枪目标。';return s;}return transition(s,{type:'SHOOT',target:s.selected});}
  return s;
 }
 if(action.type==='CAST'&&s.phase==='vote'&&me.alive&&me.canVote&&canTarget(s,action.target)){const target=Number(action.target);return resolveBallots(s,botBallots(s,target));}
 if(action.type==='ABSTAIN'&&s.phase==='vote'&&me.alive&&me.canVote){return resolveBallots(s,botBallots(s,null));}
 if(action.type==='SHOOT'&&s.phase==='hunter'){if(s.hunterId!==s.me||!canTarget(s,action.target))return s;player(s,action.target).alive=false;log(s,`${s.hunterId} 号猎人带走 ${action.target} 号。`);s.lastWordsId=s.exiled??s.hunterId;s.hunterId=null;if(!finish(s)){enter(s,s.hunterResume);if(s.phase==='speech'){/* enter owns speaker initialization */}}return s;}
 if(action.type!=='ADVANCE')return s;
 switch(s.phase){
  case 'reveal':beginNight(s);break;
  case 'wolf':if(hasTurn(s)){s.message='请先确认狼队目标。';break;}s.night.victim=botVictim(s);enter(s,'seer');break;
  case 'seer':if(hasTurn(s)&&!s.lastInspection){s.message='请先完成查验。';break;}enter(s,'witch');break;
  case 'witch':if(hasTurn(s)){s.message='请确认用药选择，也可以选择不用药。';break;}afterNight(s);break;
  case 'dawn':if(!pendingHunter(s,s.deaths,'speech')&&!finish(s))enter(s,'speech');break;
  case 'speech':s.speechIndex++;s.mic=false;if(s.speechIndex>=s.speechOrder.length){s.speaker=null;enter(s,'vote');}else{s.speaker=s.speechOrder[s.speechIndex];s.remaining=120;log(s,`${s.speaker} 号开始发言。`);}break;
  case 'vote':if(me.alive&&me.canVote){s.message='请先确认投票。';break;}s=resolveBallots(s,botBallots(s,null,false));break;
  case 'vote_result':if(s.exiled){if(!pendingHunter(s,[{id:s.exiled,cause:'vote'}],'lastwords')&&!finish(s))enter(s,'lastwords');}else if(!finish(s)){s.day++;beginNight(s);}break;
  case 'hunter':if(s.hunterId!==s.me){const id=botVoteTarget(s);if(id){player(s,id).alive=false;log(s,`${s.hunterId} 号猎人带走 ${id} 号。`);}}s.lastWordsId=s.exiled??s.hunterId;s.hunterId=null;if(!finish(s))enter(s,s.hunterResume);break;
  case 'lastwords':s.day++;beginNight(s);break;
 }
 return s;
}
// Explicit scene fixtures for inspecting the reconstructed UI; not captured traffic.
export function scenario(role,scene){let s=createGame(role);if(scene==='lobby')return s;s.ready=true;s.players[6].ready=true;
 if(scene==='night'){beginNight(s);if(role==='seer'){s.night.victim=2;enter(s,'seer');}else if(role==='witch'){s.night.victim=2;enter(s,'witch');}return s;}
 if(scene==='speech'){enter(s,'speech');s.speechIndex=s.speechOrder.indexOf(7);s.speaker=7;return s;}
 if(scene==='vote'){enter(s,'vote');return s;}
 if(scene==='hunter'){s.players[6].role='hunter';s.players[9].role=role==='hunter'?'seer':role;s.players[6].alive=false;s.hunterId=7;s.hunterResume='lastwords';enter(s,'hunter');return s;}
 if(scene==='result'){for(const p of s.players)if(p.role==='wolf')p.alive=false;finish(s);}return s;
}
export function viewFor(s){const me=player(s,s.me);return {...s,players:s.players.map(p=>({...p,role:s.phase==='result'||p.flipped||p.id===s.me||(me.role==='wolf'&&s.phase!=='lobby'&&p.role==='wolf')?p.role:null})),night:me.role==='witch'||me.role==='wolf'?s.night:{victim:null,poison:null,saved:false},log:s.log.filter(e=>!e.private||e.audience===s.me)};}
