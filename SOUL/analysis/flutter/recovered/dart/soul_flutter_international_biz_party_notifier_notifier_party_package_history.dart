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

dynamic AllocationStub_PartySendLuckBagItem, AllocationStub__Closure, BARRIER, FP;
dynamic GrowableList_addAll, GrowableList_clear, GrowableList_factory_ctor, HEAP, LR, NULL, PP;
dynamic PartySendLuckBagItem_ctor_fromJson, SOApiService_getSendPackRecordList, SP;
dynamic SafeChangeNotifier_safeNotify, SlowTypeTestStub_0x61d6e4;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, WriteBarrierStub_x1, local_0;
dynamic local_10, local_18, local_m10, local_m18, local_m20, local_m8, sub_0x2b15f0;
dynamic sub_0x61d99c, sub_0x61e890, sub_0x62aa34, w0, w1, w16, w17, w2, w22, w3, w4, x0, x1;
dynamic x16, x17, x2, x21, x3, x4, x5, x8, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$party$notifier$notifier_party_package_history
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// LuckyBagHistoryListItemNotifier_requestLuckyBagHistoryList
// raw disassembly:
//  0x3ab794: stp FP, LR, [SP, #-0x10]!
//  0x3ab798: mov FP, SP
//  0x3ab79c: sub SP, SP, #0x20
//  0x3ab7a0: stur x1, [FP, #-8]
//  0x3ab7a4: stur x2, [FP, #-0x10]
//  0x3ab7a8: ldr BARRIER, [THR, #0x38]
//  0x3ab7ac: cmp SP, BARRIER
//  0x3ab7b0: b.ls #0x3ab82c
//  0x3ab7b4: mov x1, #2
//  0x3ab7b8: bl #0x61e890
//  0x3ab7bc: mov x2, x0
//  0x3ab7c0: ldur x0, [FP, #-8]
//  0x3ab7c4: stur x2, [FP, #-0x18]
//  0x3ab7c8: stur w0, [x2, #0xf]
//  0x3ab7cc: ldur x1, [FP, #-0x10]
//  0x3ab7d0: stur w1, [x2, #0x13]
//  0x3ab7d4: mov x1, x0
//  0x3ab7d8: bl #0x3ac980
//  0x3ab7dc: ldur x0, [FP, #-8]
//  0x3ab7e0: ldur x3, [x0, #0x2f]
//  0x3ab7e4: ldur x2, [FP, #-0x18]
//  0x3ab7e8: stur x3, [FP, #-0x20]
//  0x3ab7ec: add x1, PP, #0x11, lsl #12
//  0x3ab7f0: ldr x1, [x1, #0x470]
//  0x3ab7f4: bl #0x61ec54
//  0x3ab7f8: ldur x2, [FP, #-0x18]
//  0x3ab7fc: add x1, PP, #0x11, lsl #12
//  0x3ab800: ldr x1, [x1, #0x478]
//  0x3ab804: stur x0, [FP, #-8]
//  0x3ab808: bl #0x61ec54
//  0x3ab80c: ldur x1, [FP, #-0x20]
//  0x3ab810: ldur x2, [FP, #-8]
//  0x3ab814: mov x3, x0
//  0x3ab818: bl #0x3ab854
//  0x3ab81c: mov x0, NULL
//  0x3ab820: mov SP, FP
//  0x3ab824: ldp FP, LR, [SP], #0x10
//  0x3ab828: ret 
//  0x3ab82c: bl #0x61fa28
//  0x3ab830: b #0x3ab7b4
//
dynamic LuckyBagHistoryListItemNotifier_requestLuckyBagHistoryList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ab794
  // frame: FP = SP // 0x3ab798
  // frame: SP = SP - 0x20 // 0x3ab79c
  local_m8 = x1; // 0x3ab7a0
  local_m10 = x2; // 0x3ab7a4
  BARRIER = mem(THR, 0x38); // 0x3ab7a8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ab82c
  }
  x1 = 2; // 0x3ab7b4
  sub_0x61e890(); // 0x3ab7b8
  x0 = local_m8; // 0x3ab7c0
  x2 = x0; // 0x3ab7bc
  local_m18 = x2; // 0x3ab7c4
  memSet(x2, 0xf, w0); // 0x3ab7c8
  x1 = local_m10; // 0x3ab7cc
  memSet(x2, 0x13, w1); // 0x3ab7d0
  x1 = x0; // 0x3ab7d4
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x3ab7d8
  x0 = local_m8; // 0x3ab7dc
  x2 = local_m18; // 0x3ab7e4
  x3 = mem((local_m8), 0x2f); // 0x3ab7e0
  local_m20 = x3; // 0x3ab7e8
  x1 = mem((PP + 0x11000), 0x470) /* Function */; // 0x3ab7f0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3ab7f4
  x1 = mem((PP + 0x11000), 0x478) /* Function */; // 0x3ab800
  x2 = local_m18; // 0x3ab7f8
  local_m8 = x0; // 0x3ab804
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3ab808
  x1 = local_m20; // 0x3ab80c
  x2 = local_m8; // 0x3ab810
  x3 = x0; // 0x3ab814
  SOApiService_getSendPackRecordList() /* 0x3ab854 */; // 0x3ab818
  SP = FP; // 0x3ab820
  x0 = NULL; // 0x3ab81c
  // frame: FP, LR, mem(SP), 0x10 // 0x3ab824
  return;
}

// LuckyBagHistoryListItemNotifier_anon_closure
// raw disassembly:
//  0x3ac9bc: stp FP, LR, [SP, #-0x10]!
//  0x3ac9c0: mov FP, SP
//  0x3ac9c4: sub SP, SP, #0x20
//  0x3ac9c8: add x1, NULL, #0x20
//  0x3ac9cc: add x0, NULL, #0x30
//  0x3ac9d0: ldr x2, [FP, #0x10]
//  0x3ac9d4: ldur w3, [x2, #0x17]
//  0x3ac9d8: add x3, x3, HEAP, lsl #32
//  0x3ac9dc: stur x3, [FP, #-8]
//  0x3ac9e0: ldr BARRIER, [THR, #0x38]
//  0x3ac9e4: cmp SP, BARRIER
//  0x3ac9e8: b.ls #0x3aca50
//  0x3ac9ec: ldur w2, [x3, #0xf]
//  0x3ac9f0: add x2, x2, HEAP, lsl #32
//  0x3ac9f4: stur w1, [x2, #0x37]
//  0x3ac9f8: stur w0, [x2, #0x3b]
//  0x3ac9fc: ldur w0, [x3, #0x13]
//  0x3aca00: add x0, x0, HEAP, lsl #32
//  0x3aca04: ldur x1, [x2, #0x2f]
//  0x3aca08: tbnz x1, #0x3f, #0x3aca14
//  0x3aca0c: add x2, NULL, #0x30
//  0x3aca10: b #0x3aca18
//  0x3aca14: add x2, NULL, #0x20
//  0x3aca18: add BARRIER, NULL, #0x30
//  0x3aca1c: stp BARRIER, x0, [SP, #8]
//  0x3aca20: str x2, [SP]
//  0x3aca24: ldr x4, [PP, #0x370]
//  0x3aca28: ldur x2, [x0, #0x1f]
//  0x3aca2c: blr x2
//  0x3aca30: ldur x0, [FP, #-8]
//  0x3aca34: ldur w1, [x0, #0xf]
//  0x3aca38: add x1, x1, HEAP, lsl #32
//  0x3aca3c: bl #0x3ac980
//  0x3aca40: mov x0, NULL
//  0x3aca44: mov SP, FP
//  0x3aca48: ldp FP, LR, [SP], #0x10
//  0x3aca4c: ret 
//  0x3aca50: bl #0x61fa28
//  0x3aca54: b #0x3ac9ec
//
dynamic LuckyBagHistoryListItemNotifier_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ac9bc
  // frame: FP = SP // 0x3ac9c0
  // frame: SP = SP - 0x20 // 0x3ac9c4
  w3 = mem((local_10), 0x17); // 0x3ac9d4
  x0 = NULL + 0x30; // 0x3ac9cc
  x1 = NULL + 0x20; // 0x3ac9c8
  x2 = local_10; // 0x3ac9d0
  x3 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3ac9d8
  local_m8 = x3; // 0x3ac9dc
  BARRIER = mem(THR, 0x38); // 0x3ac9e0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3aca50
  }
  x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x3ac9f0
  memSet(x2, 0x37, w1); // 0x3ac9f4
  memSet(x2, 0x3b, w0); // 0x3ac9f8
  w0 = mem(x3, 0x13); // 0x3ac9fc
  x0 = ((mem(x3, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x3aca00
  x1 = mem(x2, 0x2f); // 0x3aca04
  if (x1 & (1 << 0x3f) != 0) {
    x2 = NULL + 0x20; // 0x3aca14
  } else {
    x2 = NULL + 0x30; // 0x3aca0c
  }
  BARRIER = NULL + 0x30; // 0x3aca18
  // frame: BARRIER, x0, mem(SP, 8) // 0x3aca1c
  local_0 = x2; // 0x3aca20
  x2 = mem(x0, 0x1f); // 0x3aca28
  x4 = mem(PP, 0x370) /* Obj!? */; // 0x3aca24
  callIndirect(x2); // 0x3aca2c
  w1 = mem((local_m8), 0xf); // 0x3aca34
  x0 = local_m8; // 0x3aca30
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3aca38
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x3aca3c
  SP = FP; // 0x3aca44
  x0 = NULL; // 0x3aca40
  // frame: FP, LR, mem(SP), 0x10 // 0x3aca48
  return;
}

// LuckyBagHistoryListItemNotifier_anon_closure_2
// raw disassembly:
//  0x3aca58: stp FP, LR, [SP, #-0x10]!
//  0x3aca5c: mov FP, SP
//  0x3aca60: sub SP, SP, #0x30
//  0x3aca64: ldr x0, [FP, #0x18]
//  0x3aca68: ldur w3, [x0, #0x17]
//  0x3aca6c: add x3, x3, HEAP, lsl #32
//  0x3aca70: stur x3, [FP, #-0x10]
//  0x3aca74: ldr BARRIER, [THR, #0x38]
//  0x3aca78: cmp SP, BARRIER
//  0x3aca7c: b.ls #0x3accb8
//  0x3aca80: ldur w4, [x3, #0xf]
//  0x3aca84: add x4, x4, HEAP, lsl #32
//  0x3aca88: ldr x5, [FP, #0x10]
//  0x3aca8c: stur x4, [FP, #-8]
//  0x3aca90: ldur x0, [x5, #-1]
//  0x3aca94: ubfx x0, x0, #0xc, #0x14
//  0x3aca98: mov x1, x5
//  0x3aca9c: add x2, PP, #0xf, lsl #12
//  0x3acaa0: ldr x2, [x2, #0x368]
//  0x3acaa4: sub LR, x0, #1, lsl #12
//  0x3acaa8: ldr LR, [x21, LR, lsl #3]
//  0x3acaac: blr LR
//  0x3acab0: cmp w0, w22
//  0x3acab4: b.ne #0x3acac0
//  0x3acab8: orr x5, xzr, #0xfffffffffffffffe
//  0x3acabc: b #0x3acac4
//  0x3acac0: mov x5, x0
//  0x3acac4: ldr x4, [FP, #0x10]
//  0x3acac8: ldur x3, [FP, #-8]
//  0x3acacc: mov x0, x5
//  0x3acad0: stur x5, [FP, #-0x18]
//  0x3acad4: mov x2, NULL
//  0x3acad8: mov x1, NULL
//  0x3acadc: tbz w0, #0, #0x3acb04
//  0x3acae0: ldur x4, [x0, #-1]
//  0x3acae4: ubfx x4, x4, #0xc, #0x14
//  0x3acae8: sub x4, x4, #0x3c
//  0x3acaec: cmp x4, #1
//  0x3acaf0: b.ls #0x3acb04
//  0x3acaf4: ldr x8, [PP, #0x1170]
//  0x3acaf8: add x3, PP, #0x11, lsl #12
//  0x3acafc: ldr x3, [x3, #0x480]
//  0x3acb00: bl #0x62aa34
//  0x3acb04: ldur x0, [FP, #-0x18]
//  0x3acb08: sbfx x1, x0, #1, #0x1f
//  0x3acb0c: tbz w0, #0, #0x3acb14
//  0x3acb10: ldur x1, [x0, #7]
//  0x3acb14: ldur x0, [FP, #-8]
//  0x3acb18: stur x1, [x0, #0x2f]
//  0x3acb1c: ldr x1, [FP, #0x10]
//  0x3acb20: ldur x0, [x1, #-1]
//  0x3acb24: ubfx x0, x0, #0xc, #0x14
//  0x3acb28: add x2, PP, #0xf, lsl #12
//  0x3acb2c: ldr x2, [x2, #0x380]
//  0x3acb30: sub LR, x0, #1, lsl #12
//  0x3acb34: ldr LR, [x21, LR, lsl #3]
//  0x3acb38: blr LR
//  0x3acb3c: cmp w0, w22
//  0x3acb40: b.ne #0x3acb58
//  0x3acb44: mov x1, NULL
//  0x3acb48: mov x2, #0
//  0x3acb4c: bl #0x277268
//  0x3acb50: mov x3, x0
//  0x3acb54: b #0x3acb5c
//  0x3acb58: mov x3, x0
//  0x3acb5c: mov x0, x3
//  0x3acb60: stur x3, [FP, #-8]
//  0x3acb64: mov x2, NULL
//  0x3acb68: mov x1, NULL
//  0x3acb6c: mov x4, #0x3c
//  0x3acb70: tbz w0, #0, #0x3acb7c
//  0x3acb74: ldur x4, [x0, #-1]
//  0x3acb78: ubfx x4, x4, #0xc, #0x14
//  0x3acb7c: sub x4, x4, #0x5a
//  0x3acb80: cmp x4, #2
//  0x3acb84: b.ls #0x3acbb8
//  0x3acb88: sub x4, x4, #0x16
//  0x3acb8c: cmp x4, #0x37
//  0x3acb90: b.ls #0x3acbb8
//  0x3acb94: cmp x4, #0xebc
//  0x3acb98: b.eq #0x3acbb8
//  0x3acb9c: sub x4, x4, #0xedd
//  0x3acba0: cmp x4, #4
//  0x3acba4: b.ls #0x3acbb8
//  0x3acba8: ldr x8, [PP, #0x3b80]
//  0x3acbac: add x3, PP, #0x11, lsl #12
//  0x3acbb0: ldr x3, [x3, #0x490]
//  0x3acbb4: bl #0x61d6e4
//  0x3acbb8: ldur x2, [FP, #-8]
//  0x3acbbc: ldur x0, [x2, #-1]
//  0x3acbc0: ubfx x0, x0, #0xc, #0x14
//  0x3acbc4: mov x1, x2
//  0x3acbc8: mov x17, #0x89aa
//  0x3acbcc: add LR, x0, x17
//  0x3acbd0: ldr LR, [x21, LR, lsl #3]
//  0x3acbd4: blr LR
//  0x3acbd8: tbnz w0, #4, #0x3acc4c
//  0x3acbdc: ldur x3, [FP, #-0x10]
//  0x3acbe0: ldur x0, [FP, #-8]
//  0x3acbe4: ldur w1, [x3, #0xf]
//  0x3acbe8: add x1, x1, HEAP, lsl #32
//  0x3acbec: ldur w4, [x1, #0x2b]
//  0x3acbf0: add x4, x4, HEAP, lsl #32
//  0x3acbf4: stur x4, [FP, #-0x18]
//  0x3acbf8: add x1, PP, #0x11, lsl #12
//  0x3acbfc: ldr x1, [x1, #0x4a0]
//  0x3acc00: mov x2, NULL
//  0x3acc04: bl #0x61ec54
//  0x3acc08: mov x1, x0
//  0x3acc0c: ldur x0, [FP, #-8]
//  0x3acc10: ldur x2, [x0, #-1]
//  0x3acc14: ubfx x2, x2, #0xc, #0x14
//  0x3acc18: add BARRIER, PP, #0xb, lsl #12
//  0x3acc1c: ldr BARRIER, [BARRIER, #0x7d8]
//  0x3acc20: stp x0, BARRIER, [SP, #8]
//  0x3acc24: str x1, [SP]
//  0x3acc28: mov x0, x2
//  0x3acc2c: ldr x4, [PP, #0x58]
//  0x3acc30: mov x17, #0x86d9
//  0x3acc34: add LR, x0, x17
//  0x3acc38: ldr LR, [x21, LR, lsl #3]
//  0x3acc3c: blr LR
//  0x3acc40: ldur x1, [FP, #-0x18]
//  0x3acc44: mov x2, x0
//  0x3acc48: bl #0x2ce4e8
//  0x3acc4c: ldur x1, [FP, #-0x10]
//  0x3acc50: add x0, NULL, #0x20
//  0x3acc54: ldur w2, [x1, #0xf]
//  0x3acc58: add x2, x2, HEAP, lsl #32
//  0x3acc5c: stur w0, [x2, #0x37]
//  0x3acc60: stur w0, [x2, #0x3b]
//  0x3acc64: ldur w0, [x1, #0x13]
//  0x3acc68: add x0, x0, HEAP, lsl #32
//  0x3acc6c: ldur x3, [x2, #0x2f]
//  0x3acc70: tbnz x3, #0x3f, #0x3acc7c
//  0x3acc74: add x2, NULL, #0x30
//  0x3acc78: b #0x3acc80
//  0x3acc7c: add x2, NULL, #0x20
//  0x3acc80: add BARRIER, NULL, #0x20
//  0x3acc84: stp BARRIER, x0, [SP, #8]
//  0x3acc88: str x2, [SP]
//  0x3acc8c: ldr x4, [PP, #0x370]
//  0x3acc90: ldur x2, [x0, #0x1f]
//  0x3acc94: blr x2
//  0x3acc98: ldur x0, [FP, #-0x10]
//  0x3acc9c: ldur w1, [x0, #0xf]
//  0x3acca0: add x1, x1, HEAP, lsl #32
//  0x3acca4: bl #0x3ac980
//  0x3acca8: mov x0, NULL
//  0x3accac: mov SP, FP
//  0x3accb0: ldp FP, LR, [SP], #0x10
//  0x3accb4: ret 
//  0x3accb8: bl #0x61fa28
//  0x3accbc: b #0x3aca80
//
dynamic LuckyBagHistoryListItemNotifier_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3aca58
  // frame: FP = SP // 0x3aca5c
  // frame: SP = SP - 0x30 // 0x3aca60
  w3 = mem((local_18), 0x17); // 0x3aca68
  x0 = local_18; // 0x3aca64
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3aca6c
  local_m10 = x3; // 0x3aca70
  BARRIER = mem(THR, 0x38); // 0x3aca74
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3accb8
  }
  x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x3aca84
  x5 = local_10; // 0x3aca88
  local_m8 = x4; // 0x3aca8c
  LR = mem(x21, ((((mem(x5, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x3acaa8
  x0 = ((mem(x5, -1)) >> 12) & 0xfffff; // 0x3aca94
  x1 = x5; // 0x3aca98
  x2 = "cursor" /* pp+0xf368 */; // 0x3acaa0
  callIndirect(LR); // 0x3acaac
  if (w0 != w22) {
    x5 = x0; // 0x3acac0
  } else {
    x5 = xzr | 0xfffffffffffffffe; // 0x3acab8
  }
  x0 = x5; // 0x3acacc
  x3 = local_m8; // 0x3acac8
  x4 = local_10; // 0x3acac4
  local_m18 = x5; // 0x3acad0
  x1 = NULL; // 0x3acad8
  x2 = NULL; // 0x3acad4
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x3acae8
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x11000), 0x480) /* Obj!? */; // 0x3acafc
      x8 = mem(PP, 0x1170) /* Type */; // 0x3acaf4
      sub_0x62aa34(); // 0x3acb00
    }
  }
  x0 = local_m18; // 0x3acb04
  x1 = ((local_m18) >> 1) & 0x7fffffff; // 0x3acb08
  if (x0 & (1 << 0) == 0) {
  } else {
    x1 = mem(x0, 7); // 0x3acb10
  }
  x0 = local_m8; // 0x3acb14
  memSet(x0, 0x2f, x1); // 0x3acb18
  LR = mem(x21, ((((mem((local_10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x3acb34
  x0 = ((mem((local_10), -1)) >> 12) & 0xfffff; // 0x3acb24
  x1 = local_10; // 0x3acb1c
  x2 = "list" /* pp+0xf380 */; // 0x3acb2c
  callIndirect(LR); // 0x3acb38
  if (w0 != w22) {
    x3 = x0; // 0x3acb58
  } else {
    x1 = NULL; // 0x3acb44
    x2 = 0; // 0x3acb48
    GrowableList_factory_ctor() /* 0x277268 */; // 0x3acb4c
    x3 = x0; // 0x3acb50
  }
  x0 = x3; // 0x3acb5c
  local_m8 = x3; // 0x3acb60
  x1 = NULL; // 0x3acb68
  x2 = NULL; // 0x3acb64
  x4 = 60; // 0x3acb6c
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3acb78
  }
  x4 = x4 - 0x5a; // 0x3acb7c
  if (x4 <= 2) {
  } else {
    x4 = x4 - 0x16; // 0x3acb88
    if (x4 <= 0x37) {
    } else {
      if (x4 == 0xebc) {
      } else {
        x4 = x4 - 0xedd; // 0x3acb9c
        if (x4 <= 4) {
        } else {
          x3 = mem((PP + 0x11000), 0x490) /* Obj!? */; // 0x3acbb0
          x8 = mem(PP, 0x3b80) /* Type */; // 0x3acba8
          SlowTypeTestStub_0x61d6e4() /* 0x61d6e4 */; // 0x3acbb4
        }
      }
    }
  }
  LR = mem(x21, ((((mem((local_m8), (-1)) >> 12) & 0xfffff) + x17) << 3)); // 0x3acbd0
  x0 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x3acbc0
  x1 = local_m8; // 0x3acbc4
  x17 = 35242; // 0x3acbc8
  x2 = local_m8; // 0x3acbb8
  callIndirect(LR); // 0x3acbd4
  if (x0 & (1 << 4) != 0) {
  } else {
    w1 = mem((local_m10), 0xf); // 0x3acbe4
    w4 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x3acbec
    x0 = local_m8; // 0x3acbe0
    x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3acbe8
    x3 = local_m10; // 0x3acbdc
    x4 = ((mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x3acbf0
    local_m18 = x4; // 0x3acbf4
    x1 = mem((PP + 0x11000), 0x4a0) /* Function */; // 0x3acbfc
    x2 = NULL; // 0x3acc00
    AllocationStub__Closure() /* 0x61ec54 */; // 0x3acc04
    BARRIER = mem((PP + 0xb000), 0x7d8) /* TypeArguments */; // 0x3acc1c
    x0 = local_m8; // 0x3acc0c
    x1 = x0; // 0x3acc08
    x2 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x3acc14
    // frame: x0, BARRIER, mem(SP, 8) // 0x3acc20
    local_0 = x1; // 0x3acc24
    LR = mem(x21, ((x0 + x17) << 3)); // 0x3acc38
    x0 = x2; // 0x3acc28
    x17 = 34521; // 0x3acc30
    x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x3acc2c
    callIndirect(LR); // 0x3acc3c
    x1 = local_m18; // 0x3acc40
    x2 = x0; // 0x3acc44
    GrowableList_addAll() /* 0x2ce4e8 */; // 0x3acc48
  }
  w2 = mem((local_m10), 0xf); // 0x3acc54
  x0 = NULL + 0x20; // 0x3acc50
  x1 = local_m10; // 0x3acc4c
  x2 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3acc58
  memSet(x2, 0x37, w0); // 0x3acc5c
  memSet(x2, 0x3b, w0); // 0x3acc60
  w0 = mem(x1, 0x13); // 0x3acc64
  x0 = ((mem(x1, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x3acc68
  x3 = mem(x2, 0x2f); // 0x3acc6c
  if (x3 & (1 << 0x3f) != 0) {
    x2 = NULL + 0x20; // 0x3acc7c
  } else {
    x2 = NULL + 0x30; // 0x3acc74
  }
  BARRIER = NULL + 0x20; // 0x3acc80
  // frame: BARRIER, x0, mem(SP, 8) // 0x3acc84
  local_0 = x2; // 0x3acc88
  x2 = mem(x0, 0x1f); // 0x3acc90
  x4 = mem(PP, 0x370) /* Obj!? */; // 0x3acc8c
  callIndirect(x2); // 0x3acc94
  w1 = mem((local_m10), 0xf); // 0x3acc9c
  x0 = local_m10; // 0x3acc98
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3acca0
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x3acca4
  SP = FP; // 0x3accac
  x0 = NULL; // 0x3acca8
  // frame: FP, LR, mem(SP), 0x10 // 0x3accb0
  return;
}

// LuckyBagHistoryListItemNotifier_anon_closure_3
// raw disassembly:
//  0x3accc0: stp FP, LR, [SP, #-0x10]!
//  0x3accc4: mov FP, SP
//  0x3accc8: sub SP, SP, #8
//  0x3acccc: ldr BARRIER, [THR, #0x38]
//  0x3accd0: cmp SP, BARRIER
//  0x3accd4: b.ls #0x3acd18
//  0x3accd8: ldr x0, [FP, #0x10]
//  0x3accdc: mov x2, NULL
//  0x3acce0: mov x1, NULL
//  0x3acce4: ldr x8, [PP, #0x3cd0]
//  0x3acce8: add x3, PP, #0x11, lsl #12
//  0x3accec: ldr x3, [x3, #0x4a8]
//  0x3accf0: bl #0x2b15f0
//  0x3accf4: bl #0x3adafc
//  0x3accf8: mov x1, x0
//  0x3accfc: ldr x2, [FP, #0x10]
//  0x3acd00: stur x0, [FP, #-8]
//  0x3acd04: bl #0x3acd20
//  0x3acd08: ldur x0, [FP, #-8]
//  0x3acd0c: mov SP, FP
//  0x3acd10: ldp FP, LR, [SP], #0x10
//  0x3acd14: ret 
//  0x3acd18: bl #0x61fa28
//  0x3acd1c: b #0x3accd8
//
dynamic LuckyBagHistoryListItemNotifier_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3accc0
  BARRIER = mem(THR, 0x38); // 0x3acccc
  // frame: FP = SP // 0x3accc4
  // frame: SP = SP - 8 // 0x3accc8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3acd18
  }
  x0 = local_10; // 0x3accd8
  x1 = NULL; // 0x3acce0
  x2 = NULL; // 0x3accdc
  x3 = mem((PP + 0x11000), 0x4a8) /* Obj!? */; // 0x3accec
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x3acce4
  sub_0x2b15f0(); // 0x3accf0
  AllocationStub_PartySendLuckBagItem() /* 0x3adafc */; // 0x3accf4
  x1 = x0; // 0x3accf8
  x2 = local_10; // 0x3accfc
  local_m8 = x0; // 0x3acd00
  PartySendLuckBagItem_ctor_fromJson() /* 0x3acd20 */; // 0x3acd04
  SP = FP; // 0x3acd0c
  x0 = local_m8; // 0x3acd08
  // frame: FP, LR, mem(SP), 0x10 // 0x3acd10
  return;
}

// LuckyBagHistoryListItemNotifier_ctor
// raw disassembly:
//  0x4c43b4: stp FP, LR, [SP, #-0x10]!
//  0x4c43b8: mov FP, SP
//  0x4c43bc: sub SP, SP, #8
//  0x4c43c0: add x0, NULL, #0x30
//  0x4c43c4: mov x3, x1
//  0x4c43c8: stur x1, [FP, #-8]
//  0x4c43cc: ldr BARRIER, [THR, #0x38]
//  0x4c43d0: cmp SP, BARRIER
//  0x4c43d4: b.ls #0x4c4474
//  0x4c43d8: stur w0, [x3, #0x37]
//  0x4c43dc: stur w0, [x3, #0x3b]
//  0x4c43e0: add x1, PP, #0xb, lsl #12
//  0x4c43e4: ldr x1, [x1, #0x7d8]
//  0x4c43e8: mov x2, #0
//  0x4c43ec: bl #0x277268
//  0x4c43f0: ldur x1, [FP, #-8]
//  0x4c43f4: stur w0, [x1, #0x2b]
//  0x4c43f8: ldurb w16, [x1, #-1]
//  0x4c43fc: ldurb w17, [x0, #-1]
//  0x4c4400: and BARRIER, x17, BARRIER, lsr #2
//  0x4c4404: tst BARRIER, HEAP, lsr #32
//  0x4c4408: b.eq #0x4c4410
//  0x4c440c: bl #0x61e04c
//  0x4c4410: mov x0, #-1
//  0x4c4414: stur x0, [x1, #0x2f]
//  0x4c4418: stur x0, [x1, #0x23]
//  0x4c441c: stur xzr, [x1, #7]
//  0x4c4420: stur xzr, [x1, #0x13]
//  0x4c4424: stur xzr, [x1, #0x1b]
//  0x4c4428: ldr x0, [THR, #0x68]
//  0x4c442c: ldr x0, [x0, #0xb90]
//  0x4c4430: ldr BARRIER, [PP, #0x40]
//  0x4c4434: cmp w0, w16
//  0x4c4438: b.ne #0x4c4444
//  0x4c443c: ldr x2, [PP, #0x3608]
//  0x4c4440: bl #0x61d99c
//  0x4c4444: ldur x1, [FP, #-8]
//  0x4c4448: stur w0, [x1, #0xf]
//  0x4c444c: ldurb w16, [x1, #-1]
//  0x4c4450: ldurb w17, [x0, #-1]
//  0x4c4454: and BARRIER, x17, BARRIER, lsr #2
//  0x4c4458: tst BARRIER, HEAP, lsr #32
//  0x4c445c: b.eq #0x4c4464
//  0x4c4460: bl #0x61e04c
//  0x4c4464: mov x0, NULL
//  0x4c4468: mov SP, FP
//  0x4c446c: ldp FP, LR, [SP], #0x10
//  0x4c4470: ret 
//  0x4c4474: bl #0x61fa28
//  0x4c4478: b #0x4c43d8
//
dynamic LuckyBagHistoryListItemNotifier_ctor() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c43b4
  // frame: FP = SP // 0x4c43b8
  // frame: SP = SP - 8 // 0x4c43bc
  x0 = NULL + 0x30; // 0x4c43c0
  x3 = x1; // 0x4c43c4
  local_m8 = x1; // 0x4c43c8
  BARRIER = mem(THR, 0x38); // 0x4c43cc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c4474
  }
  memSet(x3, 0x37, w0); // 0x4c43d8
  memSet(x3, 0x3b, w0); // 0x4c43dc
  x1 = mem((PP + 0xb000), 0x7d8) /* TypeArguments */; // 0x4c43e4
  x2 = 0; // 0x4c43e8
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c43ec
  x1 = local_m8; // 0x4c43f0
  memSet(x1, 0x2b, w0); // 0x4c43f4
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c4400
  w16 = mem(x1, -1); // 0x4c43f8
  w17 = mem(x0, -1); // 0x4c43fc
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c43f8
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c43fc
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c440c
  }
  x0 = -1; // 0x4c4410
  memSet(x1, 0x2f, x0); // 0x4c4414
  memSet(x1, 0x23, x0); // 0x4c4418
  memSet(x1, 7, xzr); // 0x4c441c
  memSet(x1, 0x13, xzr); // 0x4c4420
  memSet(x1, 0x1b, xzr); // 0x4c4424
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4c4430
  x0 = mem((mem(THR, 0x68)), 0xb90); // 0x4c442c
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3608) /* Field */; // 0x4c443c
    sub_0x61d99c(); // 0x4c4440
  }
  x1 = local_m8; // 0x4c4444
  memSet(x1, 0xf, w0); // 0x4c4448
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c4454
  w16 = mem(x1, -1); // 0x4c444c
  w17 = mem(x0, -1); // 0x4c4450
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c444c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c4450
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c4460
  }
  SP = FP; // 0x4c4468
  x0 = NULL; // 0x4c4464
  // frame: FP, LR, mem(SP), 0x10 // 0x4c446c
  return;
}

// LuckyBagHistoryListItemNotifier_gainLuckyBagHistory
// raw disassembly:
//  0x4d5650: stp FP, LR, [SP, #-0x10]!
//  0x4d5654: mov FP, SP
//  0x4d5658: sub SP, SP, #0x10
//  0x4d565c: mov x0, x1
//  0x4d5660: stur x1, [FP, #-8]
//  0x4d5664: stur x2, [FP, #-0x10]
//  0x4d5668: ldr BARRIER, [THR, #0x38]
//  0x4d566c: cmp SP, BARRIER
//  0x4d5670: b.ls #0x4d569c
//  0x4d5674: ldur w1, [x0, #0x2b]
//  0x4d5678: add x1, x1, HEAP, lsl #32
//  0x4d567c: bl #0x2b3608
//  0x4d5680: ldur x1, [FP, #-8]
//  0x4d5684: ldur x2, [FP, #-0x10]
//  0x4d5688: bl #0x3ab794
//  0x4d568c: mov x0, NULL
//  0x4d5690: mov SP, FP
//  0x4d5694: ldp FP, LR, [SP], #0x10
//  0x4d5698: ret 
//  0x4d569c: bl #0x61fa28
//  0x4d56a0: b #0x4d5674
//
dynamic LuckyBagHistoryListItemNotifier_gainLuckyBagHistory() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d5650
  // frame: FP = SP // 0x4d5654
  // frame: SP = SP - 0x10 // 0x4d5658
  x0 = x1; // 0x4d565c
  local_m8 = x1; // 0x4d5660
  local_m10 = x2; // 0x4d5664
  BARRIER = mem(THR, 0x38); // 0x4d5668
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d569c
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d5678
  GrowableList_clear() /* 0x2b3608 */; // 0x4d567c
  x1 = local_m8; // 0x4d5680
  x2 = local_m10; // 0x4d5684
  LuckyBagHistoryListItemNotifier_requestLuckyBagHistoryList() /* 0x3ab794 */; // 0x4d5688
  SP = FP; // 0x4d5690
  x0 = NULL; // 0x4d568c
  // frame: FP, LR, mem(SP), 0x10 // 0x4d5694
  return;
}
