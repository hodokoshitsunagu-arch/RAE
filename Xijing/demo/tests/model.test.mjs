import { test } from 'node:test';
import assert from 'node:assert/strict';
import { initialState, transition } from '../model.mjs';
const reduce=(state,action)=>{const result=transition(state,action);assert.equal(result.ok,true,result.error?.message);return result.value;};
const rejected=(state,action,pattern)=>{const result=transition(state,action);assert.equal(result.ok,false);assert.equal(result.error.tag,'room_rule');assert.match(result.error.message,pattern);};
test('spectators must take a seat before claiming a role',()=>{
  const state=initialState();rejected(state,{type:'ROLE',role:'沈知'},/先上麦/);
  const seated=reduce(state,{type:'SEAT',seat:3});const cast=reduce(seated,{type:'ROLE',role:'沈知'});
  assert.equal(cast.roles['沈知'],'self');assert.equal(cast.ready,false);
  const recast=reduce(cast,{type:'ROLE',role:'林屿'});assert.equal(recast.roles['沈知'],undefined);
  assert.equal(reduce(recast,{type:'LEAVE_SEAT'}).role,null);
});
test('actor cannot change room-wide script, BGM or timeline',()=>{
  const actor={...initialState(),persona:'actor'};
  for(const action of [{type:'PLAY',value:true},{type:'SEEK',track:'rain'},{type:'TRACK',track:'dawn'},{type:'SCRIPT',id:'lighthouse'}]) rejected(actor,action,/主持人/);
  assert.equal(reduce(actor,{type:'EFFECT',value:'phone'}).effect,'phone');
});
test('changing script clears casting and playback but preserves seat',()=>{
  const state={...initialState(),seat:3,role:'沈知',roles:{'沈知':'self'},ready:true,playing:true};
  const next=reduce(state,{type:'SCRIPT',id:'lighthouse'});
  assert.equal(next.role,null);assert.deepEqual(next.roles,{});assert.equal(next.playing,false);assert.equal(next.seat,3);assert.equal(next.trackId,'dawn');
  rejected({...state,recording:true},{type:'SCRIPT',id:'lighthouse'},/结束录制/);
});
test('timestamp rejects foreign tracks and leaving closes local state',()=>{
  rejected(initialState(),{type:'SEEK',track:'missing'},/不存在/);
  const left=reduce({...initialState(),playing:true,recording:true,seat:3},{type:'LEAVE'});
  assert.equal(left.playing,false);assert.equal(left.recording,false);assert.equal(left.joined,false);
  rejected(left,{type:'SEAT',seat:3},/进入房间/);
  assert.equal(reduce(left,{type:'JOIN'}).joined,true);
});

test('session start requires readiness; settlement preserves performed role after leaving a seat',()=>{
  rejected(initialState(),{type:'START',now:1000},/准备/);
  let state=initialState();for(const action of [{type:'SEAT',seat:3},{type:'ROLE',role:'沈知'},{type:'READY'},{type:'START',now:1000}]) state=reduce(state,action);
  state=reduce(state,{type:'LEAVE_SEAT'});state=reduce(state,{type:'FINISH',now:62500});
  assert.equal(state.sessionSeconds,61);assert.equal(state.sessionRole,'沈知');assert.equal(state.phase,'finished');
  rejected(initialState(),{type:'FINISH',now:1000},/先开始/);
});
test('recording blocks timeline changes and invalid selectors fail closed',()=>{
  rejected({...initialState(),recording:true},{type:'SEEK',track:'rain'},/结束录制/);
  rejected(initialState(),{type:'SEAT',seat:0},/不可用/);
  rejected(initialState(),{type:'EFFECT',value:'unknown'},/不存在/);
  rejected(initialState(),{type:'CURSOR',index:999},/不存在/);
});
