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

dynamic AllocationStub_PartyLuckBagItem, AllocationStub_UserInfo, AllocationStub__Closure;
dynamic AllocationStub__Mint, BARRIER, FP, Future_then, GrowableList_addAll;
dynamic GrowableList_clear, GrowableList_factory_ctor, HEAP, LR, Map_factory_ctor_fromLiteral;
dynamic NULL, PP, PagePKGameBetTabRecordState_anon_closure, PartyLuckBagItem_ctor_fromJson;
dynamic RouterNative_getInstance, RouterNative_routeFlutter, SOApiService_getPackRecordList;
dynamic SOMessages_getUserInfo, SP, SafeChangeNotifier_safeNotify, SlowTypeTestStub_0x61d6e4;
dynamic SoulNavigator_navigate, SoulNavigator_withString;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolate, THR;
dynamic UserInfo_ctor_fromJson, WriteBarrierStub_x1, local_0, local_10, local_18, local_m10;
dynamic local_m18, local_m20, local_m8, sub_0x2b13a0, sub_0x2b15f0, sub_0x2b16e4, sub_0x61d99c;
dynamic sub_0x61e890, sub_0x61f920, w0, w1, w16, w17, w22, w3, w4, x0, x1, x16, x17, x2, x21;
dynamic x3, x4, x8, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$party$notifier$notifier_party_packag_list
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// LuckyBagListItemNotifier_sendBlessBag
// raw disassembly:
//  0x3a988c: stp FP, LR, [SP, #-0x10]!
//  0x3a9890: mov FP, SP
//  0x3a9894: sub SP, SP, #0x28
//  0x3a9898: stur x2, [FP, #-8]
//  0x3a989c: ldr BARRIER, [THR, #0x38]
//  0x3a98a0: cmp SP, BARRIER
//  0x3a98a4: b.ls #0x3a9900
//  0x3a98a8: mov x1, #1
//  0x3a98ac: bl #0x61e890
//  0x3a98b0: mov x1, x0
//  0x3a98b4: ldur x0, [FP, #-8]
//  0x3a98b8: stur x1, [FP, #-0x10]
//  0x3a98bc: stur w0, [x1, #0xf]
//  0x3a98c0: bl #0x3a8d00
//  0x3a98c4: ldur x2, [FP, #-0x10]
//  0x3a98c8: add x1, PP, #0x12, lsl #12
//  0x3a98cc: ldr x1, [x1, #0x4f0]
//  0x3a98d0: stur x0, [FP, #-8]
//  0x3a98d4: bl #0x61ec54
//  0x3a98d8: ldr BARRIER, [PP, #0xcf0]
//  0x3a98dc: ldur LR, [FP, #-8]
//  0x3a98e0: stp LR, BARRIER, [SP, #8]
//  0x3a98e4: str x0, [SP]
//  0x3a98e8: ldr x4, [PP, #0x58]
//  0x3a98ec: bl #0x591880
//  0x3a98f0: mov x0, NULL
//  0x3a98f4: mov SP, FP
//  0x3a98f8: ldp FP, LR, [SP], #0x10
//  0x3a98fc: ret 
//  0x3a9900: bl #0x61fa28
//  0x3a9904: b #0x3a98a8
//
dynamic LuckyBagListItemNotifier_sendBlessBag() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a988c
  // frame: FP = SP // 0x3a9890
  // frame: SP = SP - 0x28 // 0x3a9894
  local_m8 = x2; // 0x3a9898
  BARRIER = mem(THR, 0x38); // 0x3a989c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a9900
  }
  x1 = 1; // 0x3a98a8
  sub_0x61e890(); // 0x3a98ac
  x0 = local_m8; // 0x3a98b4
  x1 = x0; // 0x3a98b0
  local_m10 = x1; // 0x3a98b8
  memSet(x1, 0xf, w0); // 0x3a98bc
  PagePKGameBetTabRecordState_anon_closure() /* 0x3a8d00 */; // 0x3a98c0
  x1 = mem((PP + 0x12000), 0x4f0) /* Function */; // 0x3a98cc
  x2 = local_m10; // 0x3a98c4
  local_m8 = x0; // 0x3a98d0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3a98d4
  BARRIER = mem(PP, 0xcf0) /* TypeArguments */; // 0x3a98d8
  LR = local_m8; // 0x3a98dc
  // frame: LR, BARRIER, mem(SP, 8) // 0x3a98e0
  local_0 = x0; // 0x3a98e4
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x3a98e8
  Future_then() /* 0x591880 */; // 0x3a98ec
  SP = FP; // 0x3a98f4
  x0 = NULL; // 0x3a98f0
  // frame: FP, LR, mem(SP), 0x10 // 0x3a98f8
  return;
}

// LuckyBagListItemNotifier_anon_closure
// raw disassembly:
//  0x3a9928: stp FP, LR, [SP, #-0x10]!
//  0x3a992c: mov FP, SP
//  0x3a9930: sub SP, SP, #0x18
//  0x3a9934: ldr x0, [FP, #0x18]
//  0x3a9938: ldur w1, [x0, #0x17]
//  0x3a993c: add x1, x1, HEAP, lsl #32
//  0x3a9940: stur x1, [FP, #-8]
//  0x3a9944: ldr BARRIER, [THR, #0x38]
//  0x3a9948: cmp SP, BARRIER
//  0x3a994c: b.ls #0x3a99ac
//  0x3a9950: bl #0x3a86c0
//  0x3a9954: add BARRIER, NULL, #0x20
//  0x3a9958: add LR, NULL, #0x20
//  0x3a995c: stp LR, BARRIER, [SP]
//  0x3a9960: mov x1, x0
//  0x3a9964: add x2, PP, #9, lsl #12
//  0x3a9968: ldr x2, [x2, #0xe70]
//  0x3a996c: add x4, PP, #0x12, lsl #12
//  0x3a9970: ldr x4, [x4, #0x4f8]
//  0x3a9974: bl #0x3a99b4
//  0x3a9978: mov x1, x0
//  0x3a997c: ldur x0, [FP, #-8]
//  0x3a9980: ldur w3, [x0, #0xf]
//  0x3a9984: add x3, x3, HEAP, lsl #32
//  0x3a9988: add x2, PP, #0x10, lsl #12
//  0x3a998c: ldr x2, [x2, #0xd48]
//  0x3a9990: bl #0x3a8024
//  0x3a9994: mov x1, x0
//  0x3a9998: bl #0x3a6ae8
//  0x3a999c: mov x0, NULL
//  0x3a99a0: mov SP, FP
//  0x3a99a4: ldp FP, LR, [SP], #0x10
//  0x3a99a8: ret 
//  0x3a99ac: bl #0x61fa28
//  0x3a99b0: b #0x3a9950
//
dynamic LuckyBagListItemNotifier_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w1;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a9928
  // frame: FP = SP // 0x3a992c
  // frame: SP = SP - 0x18 // 0x3a9930
  w1 = mem((local_18), 0x17); // 0x3a9938
  x0 = local_18; // 0x3a9934
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3a993c
  local_m8 = x1; // 0x3a9940
  BARRIER = mem(THR, 0x38); // 0x3a9944
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a99ac
  }
  RouterNative_getInstance() /* 0x3a86c0 */; // 0x3a9950
  BARRIER = NULL + 0x20; // 0x3a9954
  LR = NULL + 0x20; // 0x3a9958
  // frame: LR, BARRIER, mem(SP) // 0x3a995c
  x1 = x0; // 0x3a9960
  x2 = "page_virtual_party_send_pocket" /* pp+0x9e70 */; // 0x3a9968
  x4 = mem((PP + 0x12000), 0x4f8) /* ImmutableArray */; // 0x3a9970
  RouterNative_routeFlutter() /* 0x3a99b4 */; // 0x3a9974
  w3 = mem((local_m8), 0xf); // 0x3a9980
  x0 = local_m8; // 0x3a997c
  x1 = x0; // 0x3a9978
  x2 = "roomId" /* pp+0x10d48 */; // 0x3a998c
  x3 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3a9984
  SoulNavigator_withString() /* 0x3a8024 */; // 0x3a9990
  x1 = x0; // 0x3a9994
  SoulNavigator_navigate() /* 0x3a6ae8 */; // 0x3a9998
  SP = FP; // 0x3a99a0
  x0 = NULL; // 0x3a999c
  // frame: FP, LR, mem(SP), 0x10 // 0x3a99a4
  return;
}

// LuckyBagListItemNotifier_ctor
// raw disassembly:
//  0x4c4214: stp FP, LR, [SP, #-0x10]!
//  0x4c4218: mov FP, SP
//  0x4c421c: sub SP, SP, #0x20
//  0x4c4220: mov x0, x1
//  0x4c4224: stur x1, [FP, #-8]
//  0x4c4228: ldr BARRIER, [THR, #0x38]
//  0x4c422c: cmp SP, BARRIER
//  0x4c4230: b.ls #0x4c4314
//  0x4c4234: stur xzr, [x0, #0x2b]
//  0x4c4238: add x1, PP, #0xb, lsl #12
//  0x4c423c: ldr x1, [x1, #0x7e8]
//  0x4c4240: mov x2, #0
//  0x4c4244: bl #0x277268
//  0x4c4248: ldur x1, [FP, #-8]
//  0x4c424c: stur w0, [x1, #0x33]
//  0x4c4250: ldurb w16, [x1, #-1]
//  0x4c4254: ldurb w17, [x0, #-1]
//  0x4c4258: and BARRIER, x17, BARRIER, lsr #2
//  0x4c425c: tst BARRIER, HEAP, lsr #32
//  0x4c4260: b.eq #0x4c4268
//  0x4c4264: bl #0x61e04c
//  0x4c4268: ldr BARRIER, [PP, #0xbf0]
//  0x4c426c: ldr LR, [THR, #0x90]
//  0x4c4270: stp LR, BARRIER, [SP]
//  0x4c4274: bl #0x27c0c8
//  0x4c4278: stur x0, [FP, #-0x10]
//  0x4c427c: bl #0x3b9118
//  0x4c4280: mov x1, x0
//  0x4c4284: ldur x2, [FP, #-0x10]
//  0x4c4288: stur x0, [FP, #-0x10]
//  0x4c428c: bl #0x3b8b58
//  0x4c4290: ldur x0, [FP, #-0x10]
//  0x4c4294: ldur x1, [FP, #-8]
//  0x4c4298: stur w0, [x1, #0x37]
//  0x4c429c: ldurb w16, [x1, #-1]
//  0x4c42a0: ldurb w17, [x0, #-1]
//  0x4c42a4: and BARRIER, x17, BARRIER, lsr #2
//  0x4c42a8: tst BARRIER, HEAP, lsr #32
//  0x4c42ac: b.eq #0x4c42b4
//  0x4c42b0: bl #0x61e04c
//  0x4c42b4: mov x0, #-1
//  0x4c42b8: stur x0, [x1, #0x23]
//  0x4c42bc: stur xzr, [x1, #7]
//  0x4c42c0: stur xzr, [x1, #0x13]
//  0x4c42c4: stur xzr, [x1, #0x1b]
//  0x4c42c8: ldr x0, [THR, #0x68]
//  0x4c42cc: ldr x0, [x0, #0xb90]
//  0x4c42d0: ldr BARRIER, [PP, #0x40]
//  0x4c42d4: cmp w0, w16
//  0x4c42d8: b.ne #0x4c42e4
//  0x4c42dc: ldr x2, [PP, #0x3608]
//  0x4c42e0: bl #0x61d99c
//  0x4c42e4: ldur x1, [FP, #-8]
//  0x4c42e8: stur w0, [x1, #0xf]
//  0x4c42ec: ldurb w16, [x1, #-1]
//  0x4c42f0: ldurb w17, [x0, #-1]
//  0x4c42f4: and BARRIER, x17, BARRIER, lsr #2
//  0x4c42f8: tst BARRIER, HEAP, lsr #32
//  0x4c42fc: b.eq #0x4c4304
//  0x4c4300: bl #0x61e04c
//  0x4c4304: mov x0, NULL
//  0x4c4308: mov SP, FP
//  0x4c430c: ldp FP, LR, [SP], #0x10
//  0x4c4310: ret 
//  0x4c4314: bl #0x61fa28
//  0x4c4318: b #0x4c4234
//
dynamic LuckyBagListItemNotifier_ctor() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c4214
  // frame: FP = SP // 0x4c4218
  // frame: SP = SP - 0x20 // 0x4c421c
  x0 = x1; // 0x4c4220
  local_m8 = x1; // 0x4c4224
  BARRIER = mem(THR, 0x38); // 0x4c4228
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c4314
  }
  memSet(x0, 0x2b, xzr); // 0x4c4234
  x1 = mem((PP + 0xb000), 0x7e8) /* TypeArguments */; // 0x4c423c
  x2 = 0; // 0x4c4240
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c4244
  x1 = local_m8; // 0x4c4248
  memSet(x1, 0x33, w0); // 0x4c424c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c4258
  w16 = mem(x1, -1); // 0x4c4250
  w17 = mem(x0, -1); // 0x4c4254
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c4250
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c4254
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c4264
  }
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x4c4268
  LR = mem(THR, 0x90); // 0x4c426c
  // frame: LR, BARRIER, mem(SP) // 0x4c4270
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x4c4274
  local_m10 = x0; // 0x4c4278
  AllocationStub_UserInfo() /* 0x3b9118 */; // 0x4c427c
  x1 = x0; // 0x4c4280
  x2 = local_m10; // 0x4c4284
  local_m10 = x0; // 0x4c4288
  UserInfo_ctor_fromJson() /* 0x3b8b58 */; // 0x4c428c
  x0 = local_m10; // 0x4c4290
  x1 = local_m8; // 0x4c4294
  memSet(x1, 0x37, w0); // 0x4c4298
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c42a4
  w16 = mem(x1, -1); // 0x4c429c
  w17 = mem(x0, -1); // 0x4c42a0
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c429c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c42a0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c42b0
  }
  x0 = -1; // 0x4c42b4
  memSet(x1, 0x23, x0); // 0x4c42b8
  memSet(x1, 7, xzr); // 0x4c42bc
  memSet(x1, 0x13, xzr); // 0x4c42c0
  memSet(x1, 0x1b, xzr); // 0x4c42c4
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4c42d0
  x0 = mem((mem(THR, 0x68)), 0xb90); // 0x4c42cc
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3608) /* Field */; // 0x4c42dc
    sub_0x61d99c(); // 0x4c42e0
  }
  x1 = local_m8; // 0x4c42e4
  memSet(x1, 0xf, w0); // 0x4c42e8
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c42f4
  w16 = mem(x1, -1); // 0x4c42ec
  w17 = mem(x0, -1); // 0x4c42f0
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c42ec
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c42f0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c4300
  }
  SP = FP; // 0x4c4308
  x0 = NULL; // 0x4c4304
  // frame: FP, LR, mem(SP), 0x10 // 0x4c430c
  return;
}

// LuckyBagListItemNotifier_requestUserInfo
// raw disassembly:
//  0x4d4cfc: stp FP, LR, [SP, #-0x10]!
//  0x4d4d00: mov FP, SP
//  0x4d4d04: sub SP, SP, #0x18
//  0x4d4d08: stur NULL, [FP, #-8]
//  0x4d4d0c: stur x1, [FP, #-0x10]
//  0x4d4d10: ldr BARRIER, [THR, #0x38]
//  0x4d4d14: cmp SP, BARRIER
//  0x4d4d18: b.ls #0x4d4d60
//  0x4d4d1c: ldr x0, [PP, #0x1658]
//  0x4d4d20: bl #0x2b16e4
//  0x4d4d24: bl #0x3b89cc
//  0x4d4d28: mov x1, x0
//  0x4d4d2c: stur x1, [FP, #-0x18]
//  0x4d4d30: bl #0x2b13a0
//  0x4d4d34: ldur x1, [FP, #-0x10]
//  0x4d4d38: stur w0, [x1, #0x37]
//  0x4d4d3c: ldurb w16, [x1, #-1]
//  0x4d4d40: ldurb w17, [x0, #-1]
//  0x4d4d44: and BARRIER, x17, BARRIER, lsr #2
//  0x4d4d48: tst BARRIER, HEAP, lsr #32
//  0x4d4d4c: b.eq #0x4d4d54
//  0x4d4d50: bl #0x61e04c
//  0x4d4d54: bl #0x3ac980
//  0x4d4d58: mov x0, NULL
//  0x4d4d5c: b #0x2b16b8
//  0x4d4d60: bl #0x61fa28
//  0x4d4d64: b #0x4d4d1c
//
dynamic LuckyBagListItemNotifier_requestUserInfo() {
  dynamic BARRIER;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d4cfc
  // frame: FP = SP // 0x4d4d00
  // frame: SP = SP - 0x18 // 0x4d4d04
  local_m8 = NULL; // 0x4d4d08
  local_m10 = x1; // 0x4d4d0c
  BARRIER = mem(THR, 0x38); // 0x4d4d10
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d4d60
  }
  x0 = mem(PP, 0x1658) /* TypeArguments */; // 0x4d4d1c
  sub_0x2b16e4(); // 0x4d4d20
  SOMessages_getUserInfo() /* 0x3b89cc */; // 0x4d4d24
  x1 = x0; // 0x4d4d28
  local_m18 = x1; // 0x4d4d2c
  sub_0x2b13a0(); // 0x4d4d30
  x1 = local_m10; // 0x4d4d34
  memSet(x1, 0x37, w0); // 0x4d4d38
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d4d44
  w16 = mem(x1, -1); // 0x4d4d3c
  w17 = mem(x0, -1); // 0x4d4d40
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d4d3c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d4d40
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d4d50
  }
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x4d4d54
  x0 = NULL; // 0x4d4d58
}

// LuckyBagListItemNotifier_gainLuckyBagInfo
// raw disassembly:
//  0x4d4d68: stp FP, LR, [SP, #-0x10]!
//  0x4d4d6c: mov FP, SP
//  0x4d4d70: sub SP, SP, #0x20
//  0x4d4d74: mov x4, x1
//  0x4d4d78: mov x0, x3
//  0x4d4d7c: stur x3, [FP, #-0x18]
//  0x4d4d80: mov x3, x2
//  0x4d4d84: stur x1, [FP, #-8]
//  0x4d4d88: stur x2, [FP, #-0x10]
//  0x4d4d8c: ldr BARRIER, [THR, #0x38]
//  0x4d4d90: cmp SP, BARRIER
//  0x4d4d94: b.ls #0x4d4e0c
//  0x4d4d98: mov x1, NULL
//  0x4d4d9c: mov x2, #4
//  0x4d4da0: bl #0x61f920
//  0x4d4da4: mov x2, x0
//  0x4d4da8: add BARRIER, PP, #0x11, lsl #12
//  0x4d4dac: ldr BARRIER, [BARRIER, #0x638]
//  0x4d4db0: stur w16, [x2, #0xf]
//  0x4d4db4: ldur x3, [FP, #-0x10]
//  0x4d4db8: sbfiz x0, x3, #1, #0x1f
//  0x4d4dbc: cmp x3, x0, asr #1
//  0x4d4dc0: b.eq #0x4d4dcc
//  0x4d4dc4: bl #0x61fba8
//  0x4d4dc8: stur x3, [x0, #7]
//  0x4d4dcc: stur w0, [x2, #0x13]
//  0x4d4dd0: str x2, [SP]
//  0x4d4dd4: bl #0x2ad854
//  0x4d4dd8: ldur x2, [FP, #-8]
//  0x4d4ddc: ldur x0, [FP, #-0x10]
//  0x4d4de0: stur x0, [x2, #0x2b]
//  0x4d4de4: ldur w1, [x2, #0x33]
//  0x4d4de8: add x1, x1, HEAP, lsl #32
//  0x4d4dec: bl #0x2b3608
//  0x4d4df0: ldur x1, [FP, #-8]
//  0x4d4df4: ldur x2, [FP, #-0x18]
//  0x4d4df8: bl #0x4d4e14
//  0x4d4dfc: mov x0, NULL
//  0x4d4e00: mov SP, FP
//  0x4d4e04: ldp FP, LR, [SP], #0x10
//  0x4d4e08: ret 
//  0x4d4e0c: bl #0x61fa28
//  0x4d4e10: b #0x4d4d98
//
dynamic LuckyBagListItemNotifier_gainLuckyBagInfo() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d4d68
  // frame: FP = SP // 0x4d4d6c
  // frame: SP = SP - 0x20 // 0x4d4d70
  x0 = x3; // 0x4d4d78
  x4 = x1; // 0x4d4d74
  local_m18 = x3; // 0x4d4d7c
  x3 = x2; // 0x4d4d80
  local_m8 = x1; // 0x4d4d84
  local_m10 = x2; // 0x4d4d88
  BARRIER = mem(THR, 0x38); // 0x4d4d8c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d4e0c
  }
  x1 = NULL; // 0x4d4d98
  x2 = 4; // 0x4d4d9c
  sub_0x61f920(); // 0x4d4da0
  BARRIER = "gainLuckyBag id: " /* pp+0x11638 */; // 0x4d4dac
  x2 = x0; // 0x4d4da4
  memSet(x2, 0xf, w16); // 0x4d4db0
  x0 = (((local_m10) & 0x7fffffff) << 1) /* signed */; // 0x4d4db8
  x3 = local_m10; // 0x4d4db4
  if (x3 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x4d4dc4
    memSet(x0, 7, x3); // 0x4d4dc8
  }
  memSet(x2, 0x13, w0); // 0x4d4dcc
  local_0 = x2; // 0x4d4dd0
  StringBase_interpolate() /* 0x2ad854 */; // 0x4d4dd4
  x0 = local_m10; // 0x4d4ddc
  x2 = local_m8; // 0x4d4dd8
  memSet(x2, 0x2b, x0); // 0x4d4de0
  w1 = mem(x2, 0x33); // 0x4d4de4
  x1 = ((mem(x2, 0x33)) & 0xffffffff) + (HEAP << 32); // 0x4d4de8
  GrowableList_clear() /* 0x2b3608 */; // 0x4d4dec
  x1 = local_m8; // 0x4d4df0
  x2 = local_m18; // 0x4d4df4
  LuckyBagListItemNotifier_requestLuckyBagInfo() /* 0x4d4e14 */; // 0x4d4df8
  SP = FP; // 0x4d4e00
  x0 = NULL; // 0x4d4dfc
  // frame: FP, LR, mem(SP), 0x10 // 0x4d4e04
  return;
}

// LuckyBagListItemNotifier_requestLuckyBagInfo
// raw disassembly:
//  0x4d4e14: stp FP, LR, [SP, #-0x10]!
//  0x4d4e18: mov FP, SP
//  0x4d4e1c: sub SP, SP, #0x20
//  0x4d4e20: stur x1, [FP, #-8]
//  0x4d4e24: stur x2, [FP, #-0x10]
//  0x4d4e28: ldr BARRIER, [THR, #0x38]
//  0x4d4e2c: cmp SP, BARRIER
//  0x4d4e30: b.ls #0x4d4ea0
//  0x4d4e34: mov x1, #2
//  0x4d4e38: bl #0x61e890
//  0x4d4e3c: mov x3, x0
//  0x4d4e40: ldur x0, [FP, #-8]
//  0x4d4e44: stur x3, [FP, #-0x20]
//  0x4d4e48: stur w0, [x3, #0xf]
//  0x4d4e4c: ldur x1, [FP, #-0x10]
//  0x4d4e50: stur w1, [x3, #0x13]
//  0x4d4e54: ldur x4, [x0, #0x2b]
//  0x4d4e58: mov x2, x3
//  0x4d4e5c: stur x4, [FP, #-0x18]
//  0x4d4e60: add x1, PP, #0x11, lsl #12
//  0x4d4e64: ldr x1, [x1, #0x640]
//  0x4d4e68: bl #0x61ec54
//  0x4d4e6c: ldur x2, [FP, #-0x20]
//  0x4d4e70: add x1, PP, #0x11, lsl #12
//  0x4d4e74: ldr x1, [x1, #0x648]
//  0x4d4e78: stur x0, [FP, #-8]
//  0x4d4e7c: bl #0x61ec54
//  0x4d4e80: ldur x1, [FP, #-0x18]
//  0x4d4e84: ldur x2, [FP, #-8]
//  0x4d4e88: mov x3, x0
//  0x4d4e8c: bl #0x4d4ea8
//  0x4d4e90: mov x0, NULL
//  0x4d4e94: mov SP, FP
//  0x4d4e98: ldp FP, LR, [SP], #0x10
//  0x4d4e9c: ret 
//  0x4d4ea0: bl #0x61fa28
//  0x4d4ea4: b #0x4d4e34
//
dynamic LuckyBagListItemNotifier_requestLuckyBagInfo() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d4e14
  // frame: FP = SP // 0x4d4e18
  // frame: SP = SP - 0x20 // 0x4d4e1c
  local_m8 = x1; // 0x4d4e20
  local_m10 = x2; // 0x4d4e24
  BARRIER = mem(THR, 0x38); // 0x4d4e28
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d4ea0
  }
  x1 = 2; // 0x4d4e34
  sub_0x61e890(); // 0x4d4e38
  x0 = local_m8; // 0x4d4e40
  x3 = x0; // 0x4d4e3c
  local_m20 = x3; // 0x4d4e44
  memSet(x3, 0xf, w0); // 0x4d4e48
  x1 = local_m10; // 0x4d4e4c
  memSet(x3, 0x13, w1); // 0x4d4e50
  x2 = x3; // 0x4d4e58
  x4 = mem(x0, 0x2b); // 0x4d4e54
  local_m18 = x4; // 0x4d4e5c
  x1 = mem((PP + 0x11000), 0x640) /* Function */; // 0x4d4e64
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d4e68
  x1 = mem((PP + 0x11000), 0x648) /* Function */; // 0x4d4e74
  x2 = local_m20; // 0x4d4e6c
  local_m8 = x0; // 0x4d4e78
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d4e7c
  x1 = local_m18; // 0x4d4e80
  x2 = local_m8; // 0x4d4e84
  x3 = x0; // 0x4d4e88
  SOApiService_getPackRecordList() /* 0x4d4ea8 */; // 0x4d4e8c
  SP = FP; // 0x4d4e94
  x0 = NULL; // 0x4d4e90
  // frame: FP, LR, mem(SP), 0x10 // 0x4d4e98
  return;
}

// LuckyBagListItemNotifier_anon_closure_2
// raw disassembly:
//  0x4d4f90: stp FP, LR, [SP, #-0x10]!
//  0x4d4f94: mov FP, SP
//  0x4d4f98: sub SP, SP, #0x18
//  0x4d4f9c: ldr x0, [FP, #0x10]
//  0x4d4fa0: ldur w1, [x0, #0x17]
//  0x4d4fa4: add x1, x1, HEAP, lsl #32
//  0x4d4fa8: stur x1, [FP, #-8]
//  0x4d4fac: ldr BARRIER, [THR, #0x38]
//  0x4d4fb0: cmp SP, BARRIER
//  0x4d4fb4: b.ls #0x4d4ff4
//  0x4d4fb8: ldur w0, [x1, #0x13]
//  0x4d4fbc: add x0, x0, HEAP, lsl #32
//  0x4d4fc0: add BARRIER, NULL, #0x30
//  0x4d4fc4: stp BARRIER, x0, [SP]
//  0x4d4fc8: ldr x4, [PP, #0x140]
//  0x4d4fcc: ldur x2, [x0, #0x1f]
//  0x4d4fd0: blr x2
//  0x4d4fd4: ldur x0, [FP, #-8]
//  0x4d4fd8: ldur w1, [x0, #0xf]
//  0x4d4fdc: add x1, x1, HEAP, lsl #32
//  0x4d4fe0: bl #0x3ac980
//  0x4d4fe4: mov x0, NULL
//  0x4d4fe8: mov SP, FP
//  0x4d4fec: ldp FP, LR, [SP], #0x10
//  0x4d4ff0: ret 
//  0x4d4ff4: bl #0x61fa28
//  0x4d4ff8: b #0x4d4fb8
//
dynamic LuckyBagListItemNotifier_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d4f90
  // frame: FP = SP // 0x4d4f94
  // frame: SP = SP - 0x18 // 0x4d4f98
  w1 = mem((local_10), 0x17); // 0x4d4fa0
  x0 = local_10; // 0x4d4f9c
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d4fa4
  local_m8 = x1; // 0x4d4fa8
  BARRIER = mem(THR, 0x38); // 0x4d4fac
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d4ff4
  }
  BARRIER = NULL + 0x30; // 0x4d4fc0
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d4fbc
  // frame: BARRIER, x0, mem(SP) // 0x4d4fc4
  x2 = mem(x0, 0x1f); // 0x4d4fcc
  x4 = mem(PP, 0x140) /* Obj!? */; // 0x4d4fc8
  callIndirect(x2); // 0x4d4fd0
  w1 = mem((local_m8), 0xf); // 0x4d4fd8
  x0 = local_m8; // 0x4d4fd4
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d4fdc
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x4d4fe0
  SP = FP; // 0x4d4fe8
  x0 = NULL; // 0x4d4fe4
  // frame: FP, LR, mem(SP), 0x10 // 0x4d4fec
  return;
}

// LuckyBagListItemNotifier_anon_closure_3
// raw disassembly:
//  0x4d4ffc: stp FP, LR, [SP, #-0x10]!
//  0x4d5000: mov FP, SP
//  0x4d5004: sub SP, SP, #0x30
//  0x4d5008: ldr x0, [FP, #0x18]
//  0x4d500c: ldur w3, [x0, #0x17]
//  0x4d5010: add x3, x3, HEAP, lsl #32
//  0x4d5014: stur x3, [FP, #-8]
//  0x4d5018: ldr BARRIER, [THR, #0x38]
//  0x4d501c: cmp SP, BARRIER
//  0x4d5020: b.ls #0x4d5194
//  0x4d5024: ldr x1, [FP, #0x10]
//  0x4d5028: ldur x0, [x1, #-1]
//  0x4d502c: ubfx x0, x0, #0xc, #0x14
//  0x4d5030: add x2, PP, #0xf, lsl #12
//  0x4d5034: ldr x2, [x2, #0x380]
//  0x4d5038: sub LR, x0, #1, lsl #12
//  0x4d503c: ldr LR, [x21, LR, lsl #3]
//  0x4d5040: blr LR
//  0x4d5044: cmp w0, w22
//  0x4d5048: b.ne #0x4d5060
//  0x4d504c: mov x1, NULL
//  0x4d5050: mov x2, #0
//  0x4d5054: bl #0x277268
//  0x4d5058: mov x3, x0
//  0x4d505c: b #0x4d5064
//  0x4d5060: mov x3, x0
//  0x4d5064: mov x0, x3
//  0x4d5068: stur x3, [FP, #-0x10]
//  0x4d506c: mov x2, NULL
//  0x4d5070: mov x1, NULL
//  0x4d5074: mov x4, #0x3c
//  0x4d5078: tbz w0, #0, #0x4d5084
//  0x4d507c: ldur x4, [x0, #-1]
//  0x4d5080: ubfx x4, x4, #0xc, #0x14
//  0x4d5084: sub x4, x4, #0x5a
//  0x4d5088: cmp x4, #2
//  0x4d508c: b.ls #0x4d50c0
//  0x4d5090: sub x4, x4, #0x16
//  0x4d5094: cmp x4, #0x37
//  0x4d5098: b.ls #0x4d50c0
//  0x4d509c: cmp x4, #0xebc
//  0x4d50a0: b.eq #0x4d50c0
//  0x4d50a4: sub x4, x4, #0xedd
//  0x4d50a8: cmp x4, #4
//  0x4d50ac: b.ls #0x4d50c0
//  0x4d50b0: ldr x8, [PP, #0x3b80]
//  0x4d50b4: add x3, PP, #0x11, lsl #12
//  0x4d50b8: ldr x3, [x3, #0x650]
//  0x4d50bc: bl #0x61d6e4
//  0x4d50c0: ldur x2, [FP, #-0x10]
//  0x4d50c4: ldur x0, [x2, #-1]
//  0x4d50c8: ubfx x0, x0, #0xc, #0x14
//  0x4d50cc: mov x1, x2
//  0x4d50d0: mov x17, #0x89aa
//  0x4d50d4: add LR, x0, x17
//  0x4d50d8: ldr LR, [x21, LR, lsl #3]
//  0x4d50dc: blr LR
//  0x4d50e0: tbnz w0, #4, #0x4d5154
//  0x4d50e4: ldur x3, [FP, #-8]
//  0x4d50e8: ldur x0, [FP, #-0x10]
//  0x4d50ec: ldur w1, [x3, #0xf]
//  0x4d50f0: add x1, x1, HEAP, lsl #32
//  0x4d50f4: ldur w4, [x1, #0x33]
//  0x4d50f8: add x4, x4, HEAP, lsl #32
//  0x4d50fc: stur x4, [FP, #-0x18]
//  0x4d5100: add x1, PP, #0x11, lsl #12
//  0x4d5104: ldr x1, [x1, #0x660]
//  0x4d5108: mov x2, NULL
//  0x4d510c: bl #0x61ec54
//  0x4d5110: mov x1, x0
//  0x4d5114: ldur x0, [FP, #-0x10]
//  0x4d5118: ldur x2, [x0, #-1]
//  0x4d511c: ubfx x2, x2, #0xc, #0x14
//  0x4d5120: add BARRIER, PP, #0xb, lsl #12
//  0x4d5124: ldr BARRIER, [BARRIER, #0x7e8]
//  0x4d5128: stp x0, BARRIER, [SP, #8]
//  0x4d512c: str x1, [SP]
//  0x4d5130: mov x0, x2
//  0x4d5134: ldr x4, [PP, #0x58]
//  0x4d5138: mov x17, #0x86d9
//  0x4d513c: add LR, x0, x17
//  0x4d5140: ldr LR, [x21, LR, lsl #3]
//  0x4d5144: blr LR
//  0x4d5148: ldur x1, [FP, #-0x18]
//  0x4d514c: mov x2, x0
//  0x4d5150: bl #0x2ce4e8
//  0x4d5154: ldur x1, [FP, #-8]
//  0x4d5158: ldur w0, [x1, #0x13]
//  0x4d515c: add x0, x0, HEAP, lsl #32
//  0x4d5160: add BARRIER, NULL, #0x20
//  0x4d5164: stp BARRIER, x0, [SP]
//  0x4d5168: ldr x4, [PP, #0x140]
//  0x4d516c: ldur x2, [x0, #0x1f]
//  0x4d5170: blr x2
//  0x4d5174: ldur x0, [FP, #-8]
//  0x4d5178: ldur w1, [x0, #0xf]
//  0x4d517c: add x1, x1, HEAP, lsl #32
//  0x4d5180: bl #0x3ac980
//  0x4d5184: mov x0, NULL
//  0x4d5188: mov SP, FP
//  0x4d518c: ldp FP, LR, [SP], #0x10
//  0x4d5190: ret 
//  0x4d5194: bl #0x61fa28
//  0x4d5198: b #0x4d5024
//
dynamic LuckyBagListItemNotifier_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w3;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d4ffc
  // frame: FP = SP // 0x4d5000
  // frame: SP = SP - 0x30 // 0x4d5004
  w3 = mem((local_18), 0x17); // 0x4d500c
  x0 = local_18; // 0x4d5008
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d5010
  local_m8 = x3; // 0x4d5014
  BARRIER = mem(THR, 0x38); // 0x4d5018
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d5194
  }
  LR = mem(x21, ((((mem((local_10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d503c
  x0 = ((mem((local_10), -1)) >> 12) & 0xfffff; // 0x4d502c
  x1 = local_10; // 0x4d5024
  x2 = "list" /* pp+0xf380 */; // 0x4d5034
  callIndirect(LR); // 0x4d5040
  if (w0 != w22) {
    x3 = x0; // 0x4d5060
  } else {
    x1 = NULL; // 0x4d504c
    x2 = 0; // 0x4d5050
    GrowableList_factory_ctor() /* 0x277268 */; // 0x4d5054
    x3 = x0; // 0x4d5058
  }
  x0 = x3; // 0x4d5064
  local_m10 = x3; // 0x4d5068
  x1 = NULL; // 0x4d5070
  x2 = NULL; // 0x4d506c
  x4 = 60; // 0x4d5074
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d5080
  }
  x4 = x4 - 0x5a; // 0x4d5084
  if (x4 <= 2) {
  } else {
    x4 = x4 - 0x16; // 0x4d5090
    if (x4 <= 0x37) {
    } else {
      if (x4 == 0xebc) {
      } else {
        x4 = x4 - 0xedd; // 0x4d50a4
        if (x4 <= 4) {
        } else {
          x3 = mem((PP + 0x11000), 0x650) /* Obj!? */; // 0x4d50b8
          x8 = mem(PP, 0x3b80) /* Type */; // 0x4d50b0
          SlowTypeTestStub_0x61d6e4() /* 0x61d6e4 */; // 0x4d50bc
        }
      }
    }
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) + x17) << 3)); // 0x4d50d8
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4d50c8
  x1 = local_m10; // 0x4d50cc
  x17 = 35242; // 0x4d50d0
  x2 = local_m10; // 0x4d50c0
  callIndirect(LR); // 0x4d50dc
  if (x0 & (1 << 4) != 0) {
  } else {
    w1 = mem((local_m8), 0xf); // 0x4d50ec
    w4 = mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x33); // 0x4d50f4
    x0 = local_m10; // 0x4d50e8
    x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d50f0
    x3 = local_m8; // 0x4d50e4
    x4 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x33)) & 0xffffffff) + (HEAP << 32); // 0x4d50f8
    local_m18 = x4; // 0x4d50fc
    x1 = mem((PP + 0x11000), 0x660) /* Function */; // 0x4d5104
    x2 = NULL; // 0x4d5108
    AllocationStub__Closure() /* 0x61ec54 */; // 0x4d510c
    BARRIER = mem((PP + 0xb000), 0x7e8) /* TypeArguments */; // 0x4d5124
    x0 = local_m10; // 0x4d5114
    x1 = x0; // 0x4d5110
    x2 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4d511c
    // frame: x0, BARRIER, mem(SP, 8) // 0x4d5128
    local_0 = x1; // 0x4d512c
    LR = mem(x21, ((x0 + x17) << 3)); // 0x4d5140
    x0 = x2; // 0x4d5130
    x17 = 34521; // 0x4d5138
    x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x4d5134
    callIndirect(LR); // 0x4d5144
    x1 = local_m18; // 0x4d5148
    x2 = x0; // 0x4d514c
    GrowableList_addAll() /* 0x2ce4e8 */; // 0x4d5150
  }
  BARRIER = NULL + 0x20; // 0x4d5160
  w0 = mem((local_m8), 0x13); // 0x4d5158
  x0 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4d515c
  x1 = local_m8; // 0x4d5154
  // frame: BARRIER, x0, mem(SP) // 0x4d5164
  x2 = mem(x0, 0x1f); // 0x4d516c
  x4 = mem(PP, 0x140) /* Obj!? */; // 0x4d5168
  callIndirect(x2); // 0x4d5170
  w1 = mem((local_m8), 0xf); // 0x4d5178
  x0 = local_m8; // 0x4d5174
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d517c
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x4d5180
  SP = FP; // 0x4d5188
  x0 = NULL; // 0x4d5184
  // frame: FP, LR, mem(SP), 0x10 // 0x4d518c
  return;
}

// LuckyBagListItemNotifier_anon_closure_4
// raw disassembly:
//  0x4d519c: stp FP, LR, [SP, #-0x10]!
//  0x4d51a0: mov FP, SP
//  0x4d51a4: sub SP, SP, #8
//  0x4d51a8: ldr BARRIER, [THR, #0x38]
//  0x4d51ac: cmp SP, BARRIER
//  0x4d51b0: b.ls #0x4d51f4
//  0x4d51b4: ldr x0, [FP, #0x10]
//  0x4d51b8: mov x2, NULL
//  0x4d51bc: mov x1, NULL
//  0x4d51c0: ldr x8, [PP, #0x3cd0]
//  0x4d51c4: add x3, PP, #0x11, lsl #12
//  0x4d51c8: ldr x3, [x3, #0x668]
//  0x4d51cc: bl #0x2b15f0
//  0x4d51d0: bl #0x4d559c
//  0x4d51d4: mov x1, x0
//  0x4d51d8: ldr x2, [FP, #0x10]
//  0x4d51dc: stur x0, [FP, #-8]
//  0x4d51e0: bl #0x4d51fc
//  0x4d51e4: ldur x0, [FP, #-8]
//  0x4d51e8: mov SP, FP
//  0x4d51ec: ldp FP, LR, [SP], #0x10
//  0x4d51f0: ret 
//  0x4d51f4: bl #0x61fa28
//  0x4d51f8: b #0x4d51b4
//
dynamic LuckyBagListItemNotifier_anon_closure_4() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d519c
  BARRIER = mem(THR, 0x38); // 0x4d51a8
  // frame: FP = SP // 0x4d51a0
  // frame: SP = SP - 8 // 0x4d51a4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d51f4
  }
  x0 = local_10; // 0x4d51b4
  x1 = NULL; // 0x4d51bc
  x2 = NULL; // 0x4d51b8
  x3 = mem((PP + 0x11000), 0x668) /* Obj!? */; // 0x4d51c8
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x4d51c0
  sub_0x2b15f0(); // 0x4d51cc
  AllocationStub_PartyLuckBagItem() /* 0x4d559c */; // 0x4d51d0
  x1 = x0; // 0x4d51d4
  x2 = local_10; // 0x4d51d8
  local_m8 = x0; // 0x4d51dc
  PartyLuckBagItem_ctor_fromJson() /* 0x4d51fc */; // 0x4d51e0
  SP = FP; // 0x4d51e8
  x0 = local_m8; // 0x4d51e4
  // frame: FP, LR, mem(SP), 0x10 // 0x4d51ec
  return;
}
