// ---------------------------------------------------------------------------
// Pseudo-runtime declarations. dae output is pseudocode, but it must also parse
// and analyse as Dart: these names stand in for the machine-level concepts
// (memory access, indirect calls, unwinding) and for the registers the code
// touches, which are not Dart built-ins.
// ---------------------------------------------------------------------------
dynamic mem(dynamic a, [dynamic b, dynamic c, dynamic d]) => null;
dynamic memSet(dynamic a, [dynamic b, dynamic c, dynamic d]) => null;
dynamic memRead2(dynamic a, [dynamic b, dynamic c, dynamic d]) => null;
dynamic gotoIndirect(dynamic a) => null;
dynamic convert(dynamic a) => null;
dynamic mul(dynamic a) => null;
dynamic addCarry(dynamic a, dynamic b) => null;
dynamic subBorrow(dynamic a, dynamic b) => null;
dynamic toIntFloor(dynamic a) => null;
dynamic toIntCeil(dynamic a) => null;
dynamic toIntRound(dynamic a) => null;
dynamic xchg(dynamic a, dynamic b) => null;
dynamic idiv(dynamic a) => null;
dynamic mulHigh(dynamic a) => null;
bool condFlag(String cc) => false;
dynamic clz(dynamic a) => null;
dynamic stxr(dynamic a, [dynamic b, dynamic c, dynamic d]) => null;
dynamic callIndirect(dynamic a) => null;
dynamic gotoLabel(dynamic a) => null;
dynamic addr(dynamic a) => null;
dynamic abort([dynamic a]) => null;
dynamic sqrt(dynamic a) => null;
dynamic abs(dynamic a) => null;
dynamic max(dynamic a, dynamic b) => null;
dynamic min(dynamic a, dynamic b) => null;
dynamic toFloat(dynamic a) => null;
dynamic toFloatUnsigned(dynamic a) => null;
dynamic toInt(dynamic a) => null;
dynamic toIntUnsigned(dynamic a) => null;
dynamic toDouble(dynamic a) => null;
dynamic sxtb(dynamic a) => null;
dynamic sxth(dynamic a) => null;
dynamic sxtw(dynamic a) => null;
dynamic uxtb(dynamic a) => null;
dynamic uxth(dynamic a) => null;
dynamic uxtw(dynamic a) => null;
typedef u8 = int;
typedef u16 = int;
typedef u32 = int;
typedef i8 = int;
typedef i16 = int;
typedef i32 = int;

dynamic AllocationStub_ChannelNative, BARRIER, ChannelNative_call, ChannelNative_ctor, FP;
dynamic HEAP;
dynamic Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign;
dynamic Map_factory_ctor, Map_factory_ctor_fromLiteral, NULL, PP, SP;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, local_0, local_m40, local_m48;
dynamic local_m50, local_m58, local_m60, local_m68, local_m8, sub_0x61d99c, sub_0x61f920, w0;
dynamic w1, w16, w2, w22, w3, x0, x1, x2, x3, x4, x5;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$common$plugins$event_track
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// EventTrack_eventClick
// raw disassembly:
//  0x3a8e60: stp FP, LR, [SP, #-0x10]!
//  0x3a8e64: mov FP, SP
//  0x3a8e68: mov x2, x1
//  0x3a8e6c: ldur w0, [x4, #0x13]
//  0x3a8e70: ldur w1, [x4, #0x1f]
//  0x3a8e74: add x1, x1, HEAP, lsl #32
//  0x3a8e78: add BARRIER, PP, #0xb, lsl #12
//  0x3a8e7c: ldr BARRIER, [BARRIER, #0x648]
//  0x3a8e80: cmp w1, w16
//  0x3a8e84: b.ne #0x3a8ea4
//  0x3a8e88: ldur w1, [x4, #0x23]
//  0x3a8e8c: add x1, x1, HEAP, lsl #32
//  0x3a8e90: sub w3, w0, w1
//  0x3a8e94: add x0, FP, w3, sxtw #2
//  0x3a8e98: ldr x0, [x0, #8]
//  0x3a8e9c: mov x5, x0
//  0x3a8ea0: b #0x3a8ea8
//  0x3a8ea4: mov x5, NULL
//  0x3a8ea8: ldr BARRIER, [THR, #0x38]
//  0x3a8eac: cmp SP, BARRIER
//  0x3a8eb0: b.ls #0x3a8ed4
//  0x3a8eb4: add x1, PP, #0xf, lsl #12
//  0x3a8eb8: ldr x1, [x1, #0xf70]
//  0x3a8ebc: mov x3, NULL
//  0x3a8ec0: bl #0x3a8edc
//  0x3a8ec4: mov x0, NULL
//  0x3a8ec8: mov SP, FP
//  0x3a8ecc: ldp FP, LR, [SP], #0x10
//  0x3a8ed0: ret 
//  0x3a8ed4: bl #0x61fa28
//  0x3a8ed8: b #0x3a8eb4
//
dynamic EventTrack_eventClick() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a8e60
  BARRIER = "params" /* pp+0xb648 */; // 0x3a8e7c
  // frame: FP = SP // 0x3a8e64
  w0 = mem(x4, 0x13); // 0x3a8e6c
  w1 = mem(x4, 0x1f); // 0x3a8e70
  x0 = (mem(x4, 0x13)) & 0xffffffff; // 0x3a8e6c
  x1 = ((mem(x4, 0x1f)) & 0xffffffff) + (HEAP << 32); // 0x3a8e74
  x2 = x1; // 0x3a8e68
  if (w1 != w16) {
    x5 = NULL; // 0x3a8ea4
  } else {
    w3 = w0 - w1; // 0x3a8e90
    x0 = mem((FP + ((w0 - w1) /* sxtw 2 */)), 8); // 0x3a8e98
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x3a8e8c
    x3 = (w0 - w1) & 0xffffffff; // 0x3a8e90
    x5 = mem((FP + ((w0 - w1) /* sxtw 2 */)), 8); // 0x3a8e9c
  }
  BARRIER = mem(THR, 0x38); // 0x3a8ea8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a8ed4
  }
  x1 = "click" /* pp+0xff70 */; // 0x3a8eb8
  x3 = NULL; // 0x3a8ebc
  EventTrack_callNative() /* 0x3a8edc */; // 0x3a8ec0
  SP = FP; // 0x3a8ec8
  x0 = NULL; // 0x3a8ec4
  // frame: FP, LR, mem(SP), 0x10 // 0x3a8ecc
  return;
}

// EventTrack_callNative
// raw disassembly:
//  0x3a8edc: stp FP, LR, [SP, #-0x10]!
//  0x3a8ee0: mov FP, SP
//  0x3a8ee4: sub SP, SP, #0x70
//  0x3a8ee8: mov x4, x1
//  0x3a8eec: mov x0, x3
//  0x3a8ef0: stur x3, [FP, #-0x60]
//  0x3a8ef4: mov x3, x5
//  0x3a8ef8: stur x1, [FP, #-0x50]
//  0x3a8efc: stur x2, [FP, #-0x58]
//  0x3a8f00: stur x5, [FP, #-0x68]
//  0x3a8f04: ldr BARRIER, [THR, #0x38]
//  0x3a8f08: cmp SP, BARRIER
//  0x3a8f0c: b.ls #0x3a8fd0
//  0x3a8f10: ldr x1, [PP, #0xbf0]
//  0x3a8f14: bl #0x28cd60
//  0x3a8f18: mov x1, x0
//  0x3a8f1c: ldur x3, [FP, #-0x50]
//  0x3a8f20: ldr x2, [PP, #0x2250]
//  0x3a8f24: stur x0, [FP, #-0x50]
//  0x3a8f28: bl #0x6164d4
//  0x3a8f2c: ldur x3, [FP, #-0x58]
//  0x3a8f30: cmp w3, w22
//  0x3a8f34: b.eq #0x3a8f48
//  0x3a8f38: ldur x1, [FP, #-0x50]
//  0x3a8f3c: add x2, PP, #0xf, lsl #12
//  0x3a8f40: ldr x2, [x2, #0xf00]
//  0x3a8f44: bl #0x6164d4
//  0x3a8f48: ldur x3, [FP, #-0x60]
//  0x3a8f4c: cmp w3, w22
//  0x3a8f50: b.eq #0x3a8f64
//  0x3a8f54: ldur x1, [FP, #-0x50]
//  0x3a8f58: add x2, PP, #0xf, lsl #12
//  0x3a8f5c: ldr x2, [x2, #0xf08]
//  0x3a8f60: bl #0x6164d4
//  0x3a8f64: ldur x3, [FP, #-0x68]
//  0x3a8f68: cmp w3, w22
//  0x3a8f6c: b.eq #0x3a8f80
//  0x3a8f70: ldur x1, [FP, #-0x50]
//  0x3a8f74: add x2, PP, #0xb, lsl #12
//  0x3a8f78: ldr x2, [x2, #0x648]
//  0x3a8f7c: bl #0x6164d4
//  0x3a8f80: ldr x0, [THR, #0x68]
//  0x3a8f84: ldr x0, [x0, #0x1798]
//  0x3a8f88: ldr BARRIER, [PP, #0x40]
//  0x3a8f8c: cmp w0, w16
//  0x3a8f90: b.ne #0x3a8f9c
//  0x3a8f94: ldr x2, [PP, #0x2280]
//  0x3a8f98: bl #0x61d99c
//  0x3a8f9c: ldur BARRIER, [FP, #-0x50]
//  0x3a8fa0: str BARRIER, [SP]
//  0x3a8fa4: mov x1, x0
//  0x3a8fa8: add x2, PP, #0xf, lsl #12
//  0x3a8fac: ldr x2, [x2, #0xf10]
//  0x3a8fb0: ldr x4, [PP, #0x280]
//  0x3a8fb4: bl #0x3a8288
//  0x3a8fb8: b #0x3a8fc0
//  0x3a8fbc: sub SP, FP, #0x70
//  0x3a8fc0: mov x0, NULL
//  0x3a8fc4: mov SP, FP
//  0x3a8fc8: ldp FP, LR, [SP], #0x10
//  0x3a8fcc: ret 
//  0x3a8fd0: bl #0x61fa28
//  0x3a8fd4: b #0x3a8f10
//
dynamic EventTrack_callNative() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a8edc
  // frame: FP = SP // 0x3a8ee0
  // frame: SP = SP - 0x70 // 0x3a8ee4
  x0 = x3; // 0x3a8eec
  x4 = x1; // 0x3a8ee8
  local_m60 = x3; // 0x3a8ef0
  x3 = x5; // 0x3a8ef4
  local_m50 = x1; // 0x3a8ef8
  local_m58 = x2; // 0x3a8efc
  local_m68 = x5; // 0x3a8f00
  BARRIER = mem(THR, 0x38); // 0x3a8f04
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a8fd0
  }
  x1 = mem(PP, 0xbf0) /* TypeArguments */; // 0x3a8f10
  Map_factory_ctor() /* 0x28cd60 */; // 0x3a8f14
  x1 = x0; // 0x3a8f18
  x2 = "type" /* pp+0x2250 */; // 0x3a8f20
  x3 = local_m50; // 0x3a8f1c
  local_m50 = x0; // 0x3a8f24
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3a8f28
  x3 = local_m58; // 0x3a8f2c
  if (w3 == w22) {
  } else {
    x1 = local_m50; // 0x3a8f38
    x2 = "eventId" /* pp+0xff00 */; // 0x3a8f40
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3a8f44
  }
  x3 = local_m60; // 0x3a8f48
  if (w3 == w22) {
  } else {
    x1 = local_m50; // 0x3a8f54
    x2 = "pageId" /* pp+0xff08 */; // 0x3a8f5c
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3a8f60
  }
  x3 = local_m68; // 0x3a8f64
  if (w3 == w22) {
  } else {
    x1 = local_m50; // 0x3a8f70
    x2 = "params" /* pp+0xb648 */; // 0x3a8f78
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3a8f7c
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3a8f88
  x0 = mem((mem(THR, 0x68)), 0x1798); // 0x3a8f84
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x2280) /* Field */; // 0x3a8f94
    sub_0x61d99c(); // 0x3a8f98
  }
  BARRIER = local_m50; // 0x3a8f9c
  local_0 = BARRIER; // 0x3a8fa0
  x1 = x0; // 0x3a8fa4
  x2 = "action_event_track" /* pp+0xff10 */; // 0x3a8fac
  x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x3a8fb0
  ChannelNative_call() /* 0x3a8288 */; // 0x3a8fb4
  SP = FP; // 0x3a8fc4
  x0 = NULL; // 0x3a8fc0
  // frame: FP, LR, mem(SP), 0x10 // 0x3a8fc8
  return;
}

// EventTrack_channel
// raw disassembly:
//  0x3a8fd8: stp FP, LR, [SP, #-0x10]!
//  0x3a8fdc: mov FP, SP
//  0x3a8fe0: sub SP, SP, #8
//  0x3a8fe4: ldr BARRIER, [THR, #0x38]
//  0x3a8fe8: cmp SP, BARRIER
//  0x3a8fec: b.ls #0x3a9014
//  0x3a8ff0: bl #0x3a84b8
//  0x3a8ff4: mov x1, x0
//  0x3a8ff8: ldr x2, [PP, #0x2a18]
//  0x3a8ffc: stur x0, [FP, #-8]
//  0x3a9000: bl #0x3a83ec
//  0x3a9004: ldur x0, [FP, #-8]
//  0x3a9008: mov SP, FP
//  0x3a900c: ldp FP, LR, [SP], #0x10
//  0x3a9010: ret 
//  0x3a9014: bl #0x61fa28
//  0x3a9018: b #0x3a8ff0
//
dynamic EventTrack_channel() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a8fd8
  BARRIER = mem(THR, 0x38); // 0x3a8fe4
  // frame: FP = SP // 0x3a8fdc
  // frame: SP = SP - 8 // 0x3a8fe0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a9014
  }
  AllocationStub_ChannelNative() /* 0x3a84b8 */; // 0x3a8ff0
  x1 = x0; // 0x3a8ff4
  x2 = "channel_event_track" /* pp+0x2a18 */; // 0x3a8ff8
  local_m8 = x0; // 0x3a8ffc
  ChannelNative_ctor() /* 0x3a83ec */; // 0x3a9000
  SP = FP; // 0x3a9008
  x0 = local_m8; // 0x3a9004
  // frame: FP, LR, mem(SP), 0x10 // 0x3a900c
  return;
}

// EventTrack_eventExpose
// raw disassembly:
//  0x42dbb8: stp FP, LR, [SP, #-0x10]!
//  0x42dbbc: mov FP, SP
//  0x42dbc0: mov x5, x1
//  0x42dbc4: ldr BARRIER, [THR, #0x38]
//  0x42dbc8: cmp SP, BARRIER
//  0x42dbcc: b.ls #0x42dbf8
//  0x42dbd0: add x1, PP, #0xf, lsl #12
//  0x42dbd4: ldr x1, [x1, #0xef0]
//  0x42dbd8: add x2, PP, #0xf, lsl #12
//  0x42dbdc: ldr x2, [x2, #0xef8]
//  0x42dbe0: mov x3, NULL
//  0x42dbe4: bl #0x3a8edc
//  0x42dbe8: mov x0, NULL
//  0x42dbec: mov SP, FP
//  0x42dbf0: ldp FP, LR, [SP], #0x10
//  0x42dbf4: ret 
//  0x42dbf8: bl #0x61fa28
//  0x42dbfc: b #0x42dbd0
//
dynamic EventTrack_eventExpose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42dbb8
  BARRIER = mem(THR, 0x38); // 0x42dbc4
  // frame: FP = SP // 0x42dbbc
  x5 = x1; // 0x42dbc0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42dbf8
  }
  x1 = "expose" /* pp+0xfef0 */; // 0x42dbd4
  x2 = "Avatarstore_Banner_exp" /* pp+0xfef8 */; // 0x42dbdc
  x3 = NULL; // 0x42dbe0
  EventTrack_callNative() /* 0x3a8edc */; // 0x42dbe4
  SP = FP; // 0x42dbec
  x0 = NULL; // 0x42dbe8
  // frame: FP, LR, mem(SP), 0x10 // 0x42dbf0
  return;
}

// EventTrack_eventPv
// raw disassembly:
//  0x4a9e38: stp FP, LR, [SP, #-0x10]!
//  0x4a9e3c: mov FP, SP
//  0x4a9e40: mov x3, x1
//  0x4a9e44: ldur w0, [x4, #0x13]
//  0x4a9e48: ldur w1, [x4, #0x1f]
//  0x4a9e4c: add x1, x1, HEAP, lsl #32
//  0x4a9e50: add BARRIER, PP, #0xb, lsl #12
//  0x4a9e54: ldr BARRIER, [BARRIER, #0x648]
//  0x4a9e58: cmp w1, w16
//  0x4a9e5c: b.ne #0x4a9e7c
//  0x4a9e60: ldur w1, [x4, #0x23]
//  0x4a9e64: add x1, x1, HEAP, lsl #32
//  0x4a9e68: sub w2, w0, w1
//  0x4a9e6c: add x0, FP, w2, sxtw #2
//  0x4a9e70: ldr x0, [x0, #8]
//  0x4a9e74: mov x5, x0
//  0x4a9e78: b #0x4a9e80
//  0x4a9e7c: mov x5, NULL
//  0x4a9e80: ldr BARRIER, [THR, #0x38]
//  0x4a9e84: cmp SP, BARRIER
//  0x4a9e88: b.ls #0x4a9eac
//  0x4a9e8c: add x1, PP, #0x17, lsl #12
//  0x4a9e90: ldr x1, [x1, #0xbd0]
//  0x4a9e94: mov x2, NULL
//  0x4a9e98: bl #0x3a8edc
//  0x4a9e9c: mov x0, NULL
//  0x4a9ea0: mov SP, FP
//  0x4a9ea4: ldp FP, LR, [SP], #0x10
//  0x4a9ea8: ret 
//  0x4a9eac: bl #0x61fa28
//  0x4a9eb0: b #0x4a9e8c
//
dynamic EventTrack_eventPv() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4a9e38
  BARRIER = "params" /* pp+0xb648 */; // 0x4a9e54
  // frame: FP = SP // 0x4a9e3c
  w0 = mem(x4, 0x13); // 0x4a9e44
  w1 = mem(x4, 0x1f); // 0x4a9e48
  x0 = (mem(x4, 0x13)) & 0xffffffff; // 0x4a9e44
  x1 = ((mem(x4, 0x1f)) & 0xffffffff) + (HEAP << 32); // 0x4a9e4c
  x3 = x1; // 0x4a9e40
  if (w1 != w16) {
    x5 = NULL; // 0x4a9e7c
  } else {
    w2 = w0 - w1; // 0x4a9e68
    x0 = mem((FP + ((w0 - w1) /* sxtw 2 */)), 8); // 0x4a9e70
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4a9e64
    x2 = (w0 - w1) & 0xffffffff; // 0x4a9e68
    x5 = mem((FP + ((w0 - w1) /* sxtw 2 */)), 8); // 0x4a9e74
  }
  BARRIER = mem(THR, 0x38); // 0x4a9e80
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4a9eac
  }
  x1 = "pv" /* pp+0x17bd0 */; // 0x4a9e90
  x2 = NULL; // 0x4a9e94
  EventTrack_callNative() /* 0x3a8edc */; // 0x4a9e98
  SP = FP; // 0x4a9ea0
  x0 = NULL; // 0x4a9e9c
  // frame: FP, LR, mem(SP), 0x10 // 0x4a9ea4
  return;
}

// EventTrack_recordError
// raw disassembly:
//  0x622f48: stp FP, LR, [SP, #-0x10]!
//  0x622f4c: mov FP, SP
//  0x622f50: sub SP, SP, #0x60
//  0x622f54: stur x1, [FP, #-0x40]
//  0x622f58: stur x2, [FP, #-0x48]
//  0x622f5c: ldr BARRIER, [THR, #0x38]
//  0x622f60: cmp SP, BARRIER
//  0x622f64: b.ls #0x622ffc
//  0x622f68: ldr x0, [THR, #0x68]
//  0x622f6c: ldr x0, [x0, #0x1798]
//  0x622f70: ldr BARRIER, [PP, #0x40]
//  0x622f74: cmp w0, w16
//  0x622f78: b.ne #0x622f84
//  0x622f7c: ldr x2, [PP, #0x2280]
//  0x622f80: bl #0x61d99c
//  0x622f84: mov x1, NULL
//  0x622f88: mov x2, #0xc
//  0x622f8c: stur x0, [FP, #-0x50]
//  0x622f90: bl #0x61f920
//  0x622f94: ldr BARRIER, [PP, #0x2288]
//  0x622f98: stur w16, [x0, #0xf]
//  0x622f9c: ldur x1, [FP, #-0x40]
//  0x622fa0: stur w1, [x0, #0x13]
//  0x622fa4: ldr BARRIER, [PP, #0x2290]
//  0x622fa8: stur w16, [x0, #0x17]
//  0x622fac: ldr BARRIER, [PP, #0x2298]
//  0x622fb0: stur w16, [x0, #0x1b]
//  0x622fb4: ldr BARRIER, [PP, #0x22a0]
//  0x622fb8: stur w16, [x0, #0x1f]
//  0x622fbc: ldur x1, [FP, #-0x48]
//  0x622fc0: stur w1, [x0, #0x23]
//  0x622fc4: ldr BARRIER, [PP, #0xbf0]
//  0x622fc8: stp x0, BARRIER, [SP]
//  0x622fcc: bl #0x27c0c8
//  0x622fd0: str x0, [SP]
//  0x622fd4: ldur x1, [FP, #-0x50]
//  0x622fd8: ldr x2, [PP, #0x22a8]
//  0x622fdc: ldr x4, [PP, #0x280]
//  0x622fe0: bl #0x3a8288
//  0x622fe4: b #0x622fec
//  0x622fe8: sub SP, FP, #0x60
//  0x622fec: mov x0, NULL
//  0x622ff0: mov SP, FP
//  0x622ff4: ldp FP, LR, [SP], #0x10
//  0x622ff8: ret 
//  0x622ffc: bl #0x61fa28
//  0x623000: b #0x622f68
//
dynamic EventTrack_recordError() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x622f48
  // frame: FP = SP // 0x622f4c
  // frame: SP = SP - 0x60 // 0x622f50
  local_m40 = x1; // 0x622f54
  local_m48 = x2; // 0x622f58
  BARRIER = mem(THR, 0x38); // 0x622f5c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x622ffc
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x622f70
  x0 = mem((mem(THR, 0x68)), 0x1798); // 0x622f6c
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x2280) /* Field */; // 0x622f7c
    sub_0x61d99c(); // 0x622f80
  }
  x1 = NULL; // 0x622f84
  x2 = 12; // 0x622f88
  local_m50 = x0; // 0x622f8c
  sub_0x61f920(); // 0x622f90
  BARRIER = "exception" /* pp+0x2288 */; // 0x622f94
  memSet(x0, 0xf, w16); // 0x622f98
  x1 = local_m40; // 0x622f9c
  memSet(x0, 0x13, w1); // 0x622fa0
  BARRIER = "reason" /* pp+0x2290 */; // 0x622fa4
  memSet(x0, 0x17, w16); // 0x622fa8
  BARRIER = "uncaught error" /* pp+0x2298 */; // 0x622fac
  memSet(x0, 0x1b, w16); // 0x622fb0
  BARRIER = "stackTraceElements" /* pp+0x22a0 */; // 0x622fb4
  memSet(x0, 0x1f, w16); // 0x622fb8
  x1 = local_m48; // 0x622fbc
  memSet(x0, 0x23, w1); // 0x622fc0
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x622fc4
  // frame: x0, BARRIER, mem(SP) // 0x622fc8
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x622fcc
  local_0 = x0; // 0x622fd0
  x1 = local_m50; // 0x622fd4
  x2 = "recordError" /* pp+0x22a8 */; // 0x622fd8
  x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x622fdc
  ChannelNative_call() /* 0x3a8288 */; // 0x622fe0
  SP = FP; // 0x622ff0
  x0 = NULL; // 0x622fec
  // frame: FP, LR, mem(SP), 0x10 // 0x622ff4
  return;
}
