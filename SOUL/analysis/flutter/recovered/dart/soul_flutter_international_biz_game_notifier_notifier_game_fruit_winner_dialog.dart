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

dynamic AllocationStub_CountDownTimer, AllocationStub_GameFruitWinnerDialogInfo;
dynamic AllocationStub_LabeledGlobalKey, AllocationStub__Closure, AllocationStub__Mint;
dynamic BARRIER, CountDownTimer_cancel, CountDownTimer_start, FP;
dynamic GameApiService_getGameFruitResultDialog, GameFruitWinnerDialogInfo_ctor_fromJson;
dynamic GameFruitWinnerDialog_dismissWinnerDialog, GlobalKey_get_currentElement, HEAP, LR;
dynamic Map_factory_ctor_fromLiteral, NULL, PP, SP, SafeChangeNotifier_safeNotify;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolate, THR;
dynamic WriteBarrierStub_x1, WriteBarrierStub_x2, d0, d1, d2, local_0, local_10, local_18;
dynamic local_m10, local_m18, local_m20, local_m8, q2, sub_0x61d99c, sub_0x61e890;
dynamic sub_0x61f920, w0, w1, w16, w17, w2, w22, w3, x0, x1, x16, x17, x2, x3, x4, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$game$notifier$notifier_game_fruit_winner_dialog
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// GameFruitWinnerDialogNotifier_get_currentTime
// raw disassembly:
//  0x43b044: stp FP, LR, [SP, #-0x10]!
//  0x43b048: mov FP, SP
//  0x43b04c: sub SP, SP, #0x10
//  0x43b050: ldr BARRIER, [THR, #0x38]
//  0x43b054: cmp SP, BARRIER
//  0x43b058: b.ls #0x43b0bc
//  0x43b05c: ldur x2, [x1, #0x37]
//  0x43b060: tbz x2, #0x3f, #0x43b06c
//  0x43b064: ldr x0, [PP, #0x148]
//  0x43b068: b #0x43b0b0
//  0x43b06c: sbfiz x0, x2, #1, #0x1f
//  0x43b070: cmp x2, x0, asr #1
//  0x43b074: b.eq #0x43b080
//  0x43b078: bl #0x61fba8
//  0x43b07c: stur x2, [x0, #7]
//  0x43b080: mov x1, NULL
//  0x43b084: mov x2, #4
//  0x43b088: stur x0, [FP, #-8]
//  0x43b08c: bl #0x61f920
//  0x43b090: mov x1, x0
//  0x43b094: ldur x0, [FP, #-8]
//  0x43b098: stur w0, [x1, #0xf]
//  0x43b09c: add BARRIER, PP, #0x15, lsl #12
//  0x43b0a0: ldr BARRIER, [BARRIER, #0x520]
//  0x43b0a4: stur w16, [x1, #0x13]
//  0x43b0a8: str x1, [SP]
//  0x43b0ac: bl #0x2ad854
//  0x43b0b0: mov SP, FP
//  0x43b0b4: ldp FP, LR, [SP], #0x10
//  0x43b0b8: ret 
//  0x43b0bc: bl #0x61fa28
//  0x43b0c0: b #0x43b05c
//
dynamic GameFruitWinnerDialogNotifier_get_currentTime() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x43b044
  BARRIER = mem(THR, 0x38); // 0x43b050
  // frame: FP = SP // 0x43b048
  // frame: SP = SP - 0x10 // 0x43b04c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x43b0bc
  }
  x2 = mem(x1, 0x37); // 0x43b05c
  if (x2 & (1 << 0x3f) == 0) {
    x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x43b06c
    if (x2 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x43b078
      memSet(x0, 7, x2); // 0x43b07c
    }
    x1 = NULL; // 0x43b080
    x2 = 4; // 0x43b084
    local_m8 = x0; // 0x43b088
    sub_0x61f920(); // 0x43b08c
    x0 = local_m8; // 0x43b094
    x1 = x0; // 0x43b090
    memSet(x1, 0xf, w0); // 0x43b098
    BARRIER = "S" /* pp+0x15520 */; // 0x43b0a0
    memSet(x1, 0x13, w16); // 0x43b0a4
    local_0 = x1; // 0x43b0a8
    StringBase_interpolate() /* 0x2ad854 */; // 0x43b0ac
  } else {
    x0 = "" /* pp+0x148 */; // 0x43b064
  }
  SP = FP; // 0x43b0b0
  // frame: FP, LR, mem(SP), 0x10 // 0x43b0b4
  return;
}

// GameFruitWinnerDialogNotifier_release
// raw disassembly:
//  0x45246c: stp FP, LR, [SP, #-0x10]!
//  0x452470: mov FP, SP
//  0x452474: ldr BARRIER, [THR, #0x38]
//  0x452478: cmp SP, BARRIER
//  0x45247c: b.ls #0x4524a0
//  0x452480: ldur w0, [x1, #0x33]
//  0x452484: add x0, x0, HEAP, lsl #32
//  0x452488: mov x1, x0
//  0x45248c: bl #0x41a500
//  0x452490: mov x0, NULL
//  0x452494: mov SP, FP
//  0x452498: ldp FP, LR, [SP], #0x10
//  0x45249c: ret 
//  0x4524a0: bl #0x61fa28
//  0x4524a4: b #0x452480
//
dynamic GameFruitWinnerDialogNotifier_release() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x45246c
  BARRIER = mem(THR, 0x38); // 0x452474
  // frame: FP = SP // 0x452470
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4524a0
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x452484
  x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x452488
  CountDownTimer_cancel() /* 0x41a500 */; // 0x45248c
  SP = FP; // 0x452494
  x0 = NULL; // 0x452490
  // frame: FP, LR, mem(SP), 0x10 // 0x452498
  return;
}

// GameFruitWinnerDialogNotifier_ctor
// raw disassembly:
//  0x4c3c40: stp FP, LR, [SP, #-0x10]!
//  0x4c3c44: mov FP, SP
//  0x4c3c48: sub SP, SP, #0x20
//  0x4c3c4c: mov x0, x1
//  0x4c3c50: stur x1, [FP, #-8]
//  0x4c3c54: ldr BARRIER, [THR, #0x38]
//  0x4c3c58: cmp SP, BARRIER
//  0x4c3c5c: b.ls #0x4c3d74
//  0x4c3c60: ldr x1, [PP, #0x5558]
//  0x4c3c64: bl #0x303988
//  0x4c3c68: mov x1, x0
//  0x4c3c6c: add x0, PP, #0x12, lsl #12
//  0x4c3c70: ldr x0, [x0, #0x5a0]
//  0x4c3c74: stur w0, [x1, #0xb]
//  0x4c3c78: mov x0, x1
//  0x4c3c7c: ldur x1, [FP, #-8]
//  0x4c3c80: stur w0, [x1, #0x2b]
//  0x4c3c84: ldurb w16, [x1, #-1]
//  0x4c3c88: ldurb w17, [x0, #-1]
//  0x4c3c8c: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3c90: tst BARRIER, HEAP, lsr #32
//  0x4c3c94: b.eq #0x4c3c9c
//  0x4c3c98: bl #0x61e04c
//  0x4c3c9c: ldr BARRIER, [PP, #0xbf0]
//  0x4c3ca0: ldr LR, [THR, #0x90]
//  0x4c3ca4: stp LR, BARRIER, [SP]
//  0x4c3ca8: bl #0x27c0c8
//  0x4c3cac: stur x0, [FP, #-0x10]
//  0x4c3cb0: bl #0x444d7c
//  0x4c3cb4: mov x1, x0
//  0x4c3cb8: ldur x2, [FP, #-0x10]
//  0x4c3cbc: stur x0, [FP, #-0x10]
//  0x4c3cc0: bl #0x44462c
//  0x4c3cc4: ldur x0, [FP, #-0x10]
//  0x4c3cc8: ldur x1, [FP, #-8]
//  0x4c3ccc: stur w0, [x1, #0x2f]
//  0x4c3cd0: ldurb w16, [x1, #-1]
//  0x4c3cd4: ldurb w17, [x0, #-1]
//  0x4c3cd8: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3cdc: tst BARRIER, HEAP, lsr #32
//  0x4c3ce0: b.eq #0x4c3ce8
//  0x4c3ce4: bl #0x61e04c
//  0x4c3ce8: bl #0x4c2f94
//  0x4c3cec: mov x1, #-1
//  0x4c3cf0: stur x1, [x0, #7]
//  0x4c3cf4: ldur x2, [FP, #-8]
//  0x4c3cf8: stur w0, [x2, #0x33]
//  0x4c3cfc: ldurb w16, [x2, #-1]
//  0x4c3d00: ldurb w17, [x0, #-1]
//  0x4c3d04: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3d08: tst BARRIER, HEAP, lsr #32
//  0x4c3d0c: b.eq #0x4c3d14
//  0x4c3d10: bl #0x61e06c
//  0x4c3d14: stur x1, [x2, #0x37]
//  0x4c3d18: stur x1, [x2, #0x23]
//  0x4c3d1c: stur xzr, [x2, #7]
//  0x4c3d20: stur xzr, [x2, #0x13]
//  0x4c3d24: stur xzr, [x2, #0x1b]
//  0x4c3d28: ldr x0, [THR, #0x68]
//  0x4c3d2c: ldr x0, [x0, #0xb90]
//  0x4c3d30: ldr BARRIER, [PP, #0x40]
//  0x4c3d34: cmp w0, w16
//  0x4c3d38: b.ne #0x4c3d44
//  0x4c3d3c: ldr x2, [PP, #0x3608]
//  0x4c3d40: bl #0x61d99c
//  0x4c3d44: ldur x1, [FP, #-8]
//  0x4c3d48: stur w0, [x1, #0xf]
//  0x4c3d4c: ldurb w16, [x1, #-1]
//  0x4c3d50: ldurb w17, [x0, #-1]
//  0x4c3d54: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3d58: tst BARRIER, HEAP, lsr #32
//  0x4c3d5c: b.eq #0x4c3d64
//  0x4c3d60: bl #0x61e04c
//  0x4c3d64: mov x0, NULL
//  0x4c3d68: mov SP, FP
//  0x4c3d6c: ldp FP, LR, [SP], #0x10
//  0x4c3d70: ret 
//  0x4c3d74: bl #0x61fa28
//  0x4c3d78: b #0x4c3c60
//
dynamic GameFruitWinnerDialogNotifier_ctor() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c3c40
  // frame: FP = SP // 0x4c3c44
  // frame: SP = SP - 0x20 // 0x4c3c48
  x0 = x1; // 0x4c3c4c
  local_m8 = x1; // 0x4c3c50
  BARRIER = mem(THR, 0x38); // 0x4c3c54
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c3d74
  }
  x1 = mem(PP, 0x5558) /* TypeArguments */; // 0x4c3c60
  AllocationStub_LabeledGlobalKey() /* 0x303988 */; // 0x4c3c64
  x0 = "GameFruitWinnerDialog" /* pp+0x125a0 */; // 0x4c3c70
  x1 = x0; // 0x4c3c68
  memSet(x1, 0xb, w0); // 0x4c3c74
  x0 = x1; // 0x4c3c78
  x1 = local_m8; // 0x4c3c7c
  memSet(x1, 0x2b, w0); // 0x4c3c80
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3c8c
  w16 = mem(x1, -1); // 0x4c3c84
  w17 = mem(x0, -1); // 0x4c3c88
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c3c84
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3c88
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c3c98
  }
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x4c3c9c
  LR = mem(THR, 0x90); // 0x4c3ca0
  // frame: LR, BARRIER, mem(SP) // 0x4c3ca4
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x4c3ca8
  local_m10 = x0; // 0x4c3cac
  AllocationStub_GameFruitWinnerDialogInfo() /* 0x444d7c */; // 0x4c3cb0
  x1 = x0; // 0x4c3cb4
  x2 = local_m10; // 0x4c3cb8
  local_m10 = x0; // 0x4c3cbc
  GameFruitWinnerDialogInfo_ctor_fromJson() /* 0x44462c */; // 0x4c3cc0
  x0 = local_m10; // 0x4c3cc4
  x1 = local_m8; // 0x4c3cc8
  memSet(x1, 0x2f, w0); // 0x4c3ccc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3cd8
  w16 = mem(x1, -1); // 0x4c3cd0
  w17 = mem(x0, -1); // 0x4c3cd4
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c3cd0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3cd4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c3ce4
  }
  AllocationStub_CountDownTimer() /* 0x4c2f94 */; // 0x4c3ce8
  x1 = -1; // 0x4c3cec
  memSet(x0, 7, x1); // 0x4c3cf0
  x2 = local_m8; // 0x4c3cf4
  memSet(x2, 0x33, w0); // 0x4c3cf8
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3d04
  w16 = mem(x2, -1); // 0x4c3cfc
  w17 = mem(x0, -1); // 0x4c3d00
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x4c3cfc
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3d00
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x4c3d10
  }
  memSet(x2, 0x37, x1); // 0x4c3d14
  memSet(x2, 0x23, x1); // 0x4c3d18
  memSet(x2, 7, xzr); // 0x4c3d1c
  memSet(x2, 0x13, xzr); // 0x4c3d20
  memSet(x2, 0x1b, xzr); // 0x4c3d24
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4c3d30
  x0 = mem((mem(THR, 0x68)), 0xb90); // 0x4c3d2c
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3608) /* Field */; // 0x4c3d3c
    sub_0x61d99c(); // 0x4c3d40
  }
  x1 = local_m8; // 0x4c3d44
  memSet(x1, 0xf, w0); // 0x4c3d48
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3d54
  w16 = mem(x1, -1); // 0x4c3d4c
  w17 = mem(x0, -1); // 0x4c3d50
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c3d4c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3d50
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c3d60
  }
  SP = FP; // 0x4c3d68
  x0 = NULL; // 0x4c3d64
  // frame: FP, LR, mem(SP), 0x10 // 0x4c3d6c
  return;
}

// GameFruitWinnerDialogNotifier_startCountDown
// raw disassembly:
//  0x4d9144: stp FP, LR, [SP, #-0x10]!
//  0x4d9148: mov FP, SP
//  0x4d914c: sub SP, SP, #0x20
//  0x4d9150: mov x0, x3
//  0x4d9154: stur x1, [FP, #-8]
//  0x4d9158: stur x2, [FP, #-0x10]
//  0x4d915c: stur x3, [FP, #-0x18]
//  0x4d9160: ldr BARRIER, [THR, #0x38]
//  0x4d9164: cmp SP, BARRIER
//  0x4d9168: b.ls #0x4d91f8
//  0x4d916c: mov x1, #1
//  0x4d9170: bl #0x61e890
//  0x4d9174: mov x1, x0
//  0x4d9178: ldur x0, [FP, #-8]
//  0x4d917c: stur w0, [x1, #0xf]
//  0x4d9180: mov x2, x1
//  0x4d9184: add x1, PP, #0x15, lsl #12
//  0x4d9188: ldr x1, [x1, #0x528]
//  0x4d918c: bl #0x61ec54
//  0x4d9190: mov x1, x0
//  0x4d9194: ldur x0, [FP, #-0x18]
//  0x4d9198: cmp w0, w22
//  0x4d919c: b.ne #0x4d91b4
//  0x4d91a0: mov x3, x1
//  0x4d91a4: ldur x1, [FP, #-8]
//  0x4d91a8: ldur x2, [FP, #-0x10]
//  0x4d91ac: bl #0x4d9200
//  0x4d91b0: b #0x4d91e8
//  0x4d91b4: ldur x2, [FP, #-8]
//  0x4d91b8: stur w0, [x2, #0x2f]
//  0x4d91bc: ldurb w16, [x2, #-1]
//  0x4d91c0: ldurb w17, [x0, #-1]
//  0x4d91c4: and BARRIER, x17, BARRIER, lsr #2
//  0x4d91c8: tst BARRIER, HEAP, lsr #32
//  0x4d91cc: b.eq #0x4d91d4
//  0x4d91d0: bl #0x61e06c
//  0x4d91d4: str x1, [SP]
//  0x4d91d8: mov x0, x1
//  0x4d91dc: ldr x4, [PP, #0x3a8]
//  0x4d91e0: ldur x2, [x0, #0x1f]
//  0x4d91e4: blr x2
//  0x4d91e8: mov x0, NULL
//  0x4d91ec: mov SP, FP
//  0x4d91f0: ldp FP, LR, [SP], #0x10
//  0x4d91f4: ret 
//  0x4d91f8: bl #0x61fa28
//  0x4d91fc: b #0x4d916c
//
dynamic GameFruitWinnerDialogNotifier_startCountDown() {
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
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d9144
  // frame: FP = SP // 0x4d9148
  // frame: SP = SP - 0x20 // 0x4d914c
  x0 = x3; // 0x4d9150
  local_m8 = x1; // 0x4d9154
  local_m10 = x2; // 0x4d9158
  local_m18 = x3; // 0x4d915c
  BARRIER = mem(THR, 0x38); // 0x4d9160
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d91f8
  }
  x1 = 1; // 0x4d916c
  sub_0x61e890(); // 0x4d9170
  x0 = local_m8; // 0x4d9178
  x1 = x0; // 0x4d9174
  memSet(x1, 0xf, w0); // 0x4d917c
  x1 = mem((PP + 0x15000), 0x528) /* Function */; // 0x4d9188
  x2 = x1; // 0x4d9180
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d918c
  x0 = local_m18; // 0x4d9194
  x1 = x0; // 0x4d9190
  if (w0 != w22) {
    x2 = local_m8; // 0x4d91b4
    memSet(x2, 0x2f, w0); // 0x4d91b8
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d91c4
    w16 = mem(x2, -1); // 0x4d91bc
    w17 = mem(x0, -1); // 0x4d91c0
    x16 = (mem(x2, -1)) & 0xffffffff; // 0x4d91bc
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d91c0
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x2() /* 0x61e06c */; // 0x4d91d0
    }
    local_0 = x1; // 0x4d91d4
    x0 = x1; // 0x4d91d8
    x2 = mem(x0, 0x1f); // 0x4d91e0
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x4d91dc
    callIndirect(x2); // 0x4d91e4
  } else {
    x1 = local_m8; // 0x4d91a4
    x2 = local_m10; // 0x4d91a8
    x3 = x1; // 0x4d91a0
    GameFruitWinnerDialogNotifier_requestGameFruitWinnerDialogList() /* 0x4d9200 */; // 0x4d91ac
  }
  SP = FP; // 0x4d91ec
  x0 = NULL; // 0x4d91e8
  // frame: FP, LR, mem(SP), 0x10 // 0x4d91f0
  return;
}

// GameFruitWinnerDialogNotifier_requestGameFruitWinnerDialogList
// raw disassembly:
//  0x4d9200: stp FP, LR, [SP, #-0x10]!
//  0x4d9204: mov FP, SP
//  0x4d9208: sub SP, SP, #0x20
//  0x4d920c: mov x0, x1
//  0x4d9210: stur x1, [FP, #-8]
//  0x4d9214: mov x1, x2
//  0x4d9218: stur x2, [FP, #-0x10]
//  0x4d921c: stur x3, [FP, #-0x18]
//  0x4d9220: ldr BARRIER, [THR, #0x38]
//  0x4d9224: cmp SP, BARRIER
//  0x4d9228: b.ls #0x4d9290
//  0x4d922c: mov x1, #2
//  0x4d9230: bl #0x61e890
//  0x4d9234: mov x3, x0
//  0x4d9238: ldur x0, [FP, #-8]
//  0x4d923c: stur x3, [FP, #-0x20]
//  0x4d9240: stur w0, [x3, #0xf]
//  0x4d9244: ldur x0, [FP, #-0x18]
//  0x4d9248: stur w0, [x3, #0x13]
//  0x4d924c: mov x2, x3
//  0x4d9250: add x1, PP, #0x15, lsl #12
//  0x4d9254: ldr x1, [x1, #0x530]
//  0x4d9258: bl #0x61ec54
//  0x4d925c: ldur x2, [FP, #-0x20]
//  0x4d9260: add x1, PP, #0x15, lsl #12
//  0x4d9264: ldr x1, [x1, #0x538]
//  0x4d9268: stur x0, [FP, #-8]
//  0x4d926c: bl #0x61ec54
//  0x4d9270: ldur x1, [FP, #-0x10]
//  0x4d9274: ldur x2, [FP, #-8]
//  0x4d9278: mov x3, x0
//  0x4d927c: bl #0x4444d0
//  0x4d9280: mov x0, NULL
//  0x4d9284: mov SP, FP
//  0x4d9288: ldp FP, LR, [SP], #0x10
//  0x4d928c: ret 
//  0x4d9290: bl #0x61fa28
//  0x4d9294: b #0x4d922c
//
dynamic GameFruitWinnerDialogNotifier_requestGameFruitWinnerDialogList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d9200
  // frame: FP = SP // 0x4d9204
  // frame: SP = SP - 0x20 // 0x4d9208
  x0 = x1; // 0x4d920c
  local_m8 = x1; // 0x4d9210
  x1 = x2; // 0x4d9214
  local_m10 = x2; // 0x4d9218
  local_m18 = x3; // 0x4d921c
  BARRIER = mem(THR, 0x38); // 0x4d9220
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d9290
  }
  x1 = 2; // 0x4d922c
  sub_0x61e890(); // 0x4d9230
  x0 = local_m8; // 0x4d9238
  x3 = x0; // 0x4d9234
  local_m20 = x3; // 0x4d923c
  memSet(x3, 0xf, w0); // 0x4d9240
  x0 = local_m18; // 0x4d9244
  memSet(x3, 0x13, w0); // 0x4d9248
  x1 = mem((PP + 0x15000), 0x530) /* Function */; // 0x4d9254
  x2 = x3; // 0x4d924c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d9258
  x1 = mem((PP + 0x15000), 0x538) /* Function */; // 0x4d9264
  x2 = local_m20; // 0x4d925c
  local_m8 = x0; // 0x4d9268
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d926c
  x1 = local_m10; // 0x4d9270
  x2 = local_m8; // 0x4d9274
  x3 = x0; // 0x4d9278
  GameApiService_getGameFruitResultDialog() /* 0x4444d0 */; // 0x4d927c
  SP = FP; // 0x4d9284
  x0 = NULL; // 0x4d9280
  // frame: FP, LR, mem(SP), 0x10 // 0x4d9288
  return;
}

// GameFruitWinnerDialogNotifier_anon_closure
// raw disassembly:
//  0x4d9298: stp FP, LR, [SP, #-0x10]!
//  0x4d929c: mov FP, SP
//  0x4d92a0: ldr x0, [FP, #0x10]
//  0x4d92a4: ldur w1, [x0, #0x17]
//  0x4d92a8: add x1, x1, HEAP, lsl #32
//  0x4d92ac: ldr BARRIER, [THR, #0x38]
//  0x4d92b0: cmp SP, BARRIER
//  0x4d92b4: b.ls #0x4d92d8
//  0x4d92b8: ldur w0, [x1, #0xf]
//  0x4d92bc: add x0, x0, HEAP, lsl #32
//  0x4d92c0: mov x1, x0
//  0x4d92c4: bl #0x3ac980
//  0x4d92c8: mov x0, NULL
//  0x4d92cc: mov SP, FP
//  0x4d92d0: ldp FP, LR, [SP], #0x10
//  0x4d92d4: ret 
//  0x4d92d8: bl #0x61fa28
//  0x4d92dc: b #0x4d92b8
//
dynamic GameFruitWinnerDialogNotifier_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d9298
  BARRIER = mem(THR, 0x38); // 0x4d92ac
  // frame: FP = SP // 0x4d929c
  w1 = mem((local_10), 0x17); // 0x4d92a4
  x0 = local_10; // 0x4d92a0
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d92a8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d92d8
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d92bc
  x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d92c0
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x4d92c4
  SP = FP; // 0x4d92cc
  x0 = NULL; // 0x4d92c8
  // frame: FP, LR, mem(SP), 0x10 // 0x4d92d0
  return;
}

// GameFruitWinnerDialogNotifier_anon_closure_2
// raw disassembly:
//  0x4d92e0: stp FP, LR, [SP, #-0x10]!
//  0x4d92e4: mov FP, SP
//  0x4d92e8: sub SP, SP, #0x10
//  0x4d92ec: ldr x0, [FP, #0x18]
//  0x4d92f0: ldur w1, [x0, #0x17]
//  0x4d92f4: add x1, x1, HEAP, lsl #32
//  0x4d92f8: stur x1, [FP, #-8]
//  0x4d92fc: ldr BARRIER, [THR, #0x38]
//  0x4d9300: cmp SP, BARRIER
//  0x4d9304: b.ls #0x4d9368
//  0x4d9308: ldur w2, [x1, #0xf]
//  0x4d930c: add x2, x2, HEAP, lsl #32
//  0x4d9310: ldr x0, [FP, #0x10]
//  0x4d9314: stur w0, [x2, #0x2f]
//  0x4d9318: ldurb w16, [x2, #-1]
//  0x4d931c: ldurb w17, [x0, #-1]
//  0x4d9320: and BARRIER, x17, BARRIER, lsr #2
//  0x4d9324: tst BARRIER, HEAP, lsr #32
//  0x4d9328: b.eq #0x4d9330
//  0x4d932c: bl #0x61e06c
//  0x4d9330: ldur w0, [x1, #0x13]
//  0x4d9334: add x0, x0, HEAP, lsl #32
//  0x4d9338: str x0, [SP]
//  0x4d933c: ldr x4, [PP, #0x3a8]
//  0x4d9340: ldur x2, [x0, #0x1f]
//  0x4d9344: blr x2
//  0x4d9348: ldur x0, [FP, #-8]
//  0x4d934c: ldur w1, [x0, #0xf]
//  0x4d9350: add x1, x1, HEAP, lsl #32
//  0x4d9354: bl #0x3ac980
//  0x4d9358: mov x0, NULL
//  0x4d935c: mov SP, FP
//  0x4d9360: ldp FP, LR, [SP], #0x10
//  0x4d9364: ret 
//  0x4d9368: bl #0x61fa28
//  0x4d936c: b #0x4d9308
//
dynamic GameFruitWinnerDialogNotifier_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d92e0
  // frame: FP = SP // 0x4d92e4
  // frame: SP = SP - 0x10 // 0x4d92e8
  w1 = mem((local_18), 0x17); // 0x4d92f0
  x0 = local_18; // 0x4d92ec
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d92f4
  local_m8 = x1; // 0x4d92f8
  BARRIER = mem(THR, 0x38); // 0x4d92fc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d9368
  }
  x0 = local_10; // 0x4d9310
  x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x4d930c
  memSet(x2, 0x2f, w0); // 0x4d9314
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d9320
  w16 = mem(x2, -1); // 0x4d9318
  w17 = mem(x0, -1); // 0x4d931c
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x4d9318
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d931c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x4d932c
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d9334
  local_0 = x0; // 0x4d9338
  x2 = mem(x0, 0x1f); // 0x4d9340
  x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x4d933c
  callIndirect(x2); // 0x4d9344
  w1 = mem((local_m8), 0xf); // 0x4d934c
  x0 = local_m8; // 0x4d9348
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d9350
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x4d9354
  SP = FP; // 0x4d935c
  x0 = NULL; // 0x4d9358
  // frame: FP, LR, mem(SP), 0x10 // 0x4d9360
  return;
}

// GameFruitWinnerDialogNotifier_anon_closure_3
// raw disassembly:
//  0x4d9370: stp FP, LR, [SP, #-0x10]!
//  0x4d9374: mov FP, SP
//  0x4d9378: ldr x0, [FP, #0x10]
//  0x4d937c: ldur w1, [x0, #0x17]
//  0x4d9380: add x1, x1, HEAP, lsl #32
//  0x4d9384: ldr BARRIER, [THR, #0x38]
//  0x4d9388: cmp SP, BARRIER
//  0x4d938c: b.ls #0x4d9444
//  0x4d9390: ldur w3, [x1, #0xf]
//  0x4d9394: add x3, x3, HEAP, lsl #32
//  0x4d9398: ldur w0, [x3, #0x2f]
//  0x4d939c: add x0, x0, HEAP, lsl #32
//  0x4d93a0: ldur w1, [x0, #7]
//  0x4d93a4: add x1, x1, HEAP, lsl #32
//  0x4d93a8: cmp w1, w22
//  0x4d93ac: b.ne #0x4d93b8
//  0x4d93b0: mov x1, #0
//  0x4d93b4: b #0x4d93c8
//  0x4d93b8: sbfx x2, x1, #1, #0x1f
//  0x4d93bc: tbz w1, #0, #0x4d93c4
//  0x4d93c0: ldur x2, [x1, #7]
//  0x4d93c4: mov x1, x2
//  0x4d93c8: ldur w2, [x0, #0xb]
//  0x4d93cc: add x2, x2, HEAP, lsl #32
//  0x4d93d0: cmp w2, w22
//  0x4d93d4: b.ne #0x4d93e0
//  0x4d93d8: mov x0, #0
//  0x4d93dc: b #0x4d93ec
//  0x4d93e0: sbfx x0, x2, #1, #0x1f
//  0x4d93e4: tbz w2, #0, #0x4d93ec
//  0x4d93e8: ldur x0, [x2, #7]
//  0x4d93ec: add x17, PP, #0x11, lsl #12
//  0x4d93f0: ldr d0, [x17, #0xc30]
//  0x4d93f4: sub x2, x1, x0
//  0x4d93f8: scvtf d1, x2
//  0x4d93fc: fdiv d2, d1, d0
//  0x4d9400: fcmp d2, d2
//  0x4d9404: b.vs #0x4d944c
//  0x4d9408: fcvtps x0, d2
//  0x4d940c: asr BARRIER, x0, #0x1e
//  0x4d9410: cmp BARRIER, x0, asr #63
//  0x4d9414: b.ne #0x4d944c
//  0x4d9418: lsl x0, x0, #1
//  0x4d941c: ldur w1, [x3, #0x33]
//  0x4d9420: add x1, x1, HEAP, lsl #32
//  0x4d9424: sbfx x2, x0, #1, #0x1f
//  0x4d9428: tbz w0, #0, #0x4d9430
//  0x4d942c: ldur x2, [x0, #7]
//  0x4d9430: bl #0x4d2ab0
//  0x4d9434: mov x0, NULL
//  0x4d9438: mov SP, FP
//  0x4d943c: ldp FP, LR, [SP], #0x10
//  0x4d9440: ret 
//  0x4d9444: bl #0x61fa28
//  0x4d9448: b #0x4d9390
//  0x4d944c: str q2, [SP, #-0x10]!
//  0x4d9450: str x3, [SP, #-8]!
//  0x4d9454: fmov d0, d2
//  0x4d9458: mov x0, #0x40
//  0x4d945c: ldr LR, [PP, #0x3110]
//  0x4d9460: ldur LR, [LR, #7]
//  0x4d9464: blr LR
//  0x4d9468: ldr x3, [SP], #8
//  0x4d946c: ldr q2, [SP], #0x10
//  0x4d9470: b #0x4d941c
//
dynamic GameFruitWinnerDialogNotifier_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic q2;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d9370
  BARRIER = mem(THR, 0x38); // 0x4d9384
  // frame: FP = SP // 0x4d9374
  w1 = mem((local_10), 0x17); // 0x4d937c
  x0 = local_10; // 0x4d9378
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d9380
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d9444
  }
  w0 = mem(((w3 & 0xffffffff) + (HEAP << 32)), 0x2f); // 0x4d9398
  w1 = mem((((mem(((w3 & 0xffffffff) + (HEAP << 32)), 0x2f)) & 0xffffffff) + (HEAP << 32)), 7); // 0x4d93a0
  x0 = ((mem(((w3 & 0xffffffff) + (HEAP << 32)), 0x2f)) & 0xffffffff) + (HEAP << 32); // 0x4d939c
  x1 = ((mem((((mem(((w3 & 0xffffffff) + (HEAP << 32)), 0x2f)) & 0xffffffff) + (HEAP << 32)), 7)) & 0xffffffff) + (HEAP << 32); // 0x4d93a4
  x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x4d9394
  if (w1 != w22) {
    x2 = (x1 >> 1) & 0x7fffffff; // 0x4d93b8
    if (x1 & (1 << 0) == 0) {
    } else {
      x2 = mem(x1, 7); // 0x4d93c0
    }
    x1 = x2; // 0x4d93c4
  } else {
    x1 = 0; // 0x4d93b0
  }
  x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x4d93cc
  if (w2 != w22) {
    x0 = (x2 >> 1) & 0x7fffffff; // 0x4d93e0
    if (x2 & (1 << 0) == 0) {
    } else {
      x0 = mem(x2, 7); // 0x4d93e8
    }
  } else {
    x0 = 0; // 0x4d93d8
  }
  d0 = 4652007308841189376; // 0x4d93f0
  d1 = toFloat((x1 - x0)); // 0x4d93f8
  d2 = ((toFloat((x1 - x0))) / d0) /* float */; // 0x4d93fc
  x17 = PP + 0x11000; // 0x4d93ec
  x2 = x1 - x0; // 0x4d93f4
  if (condFlag("vs")) {
  } else {
    BARRIER = (toIntCeil(d2)) >> 0x1e; // 0x4d940c
    x0 = toIntCeil(d2); // 0x4d9408
    if (BARRIER != x0) {
      local_m10 = q2; // 0x4d944c
      local_m8 = x3; // 0x4d9450
      LR = mem((mem(PP, 0x3110) /* Stub */), 7); // 0x4d9460
      d0 = d2 /* bits */; // 0x4d9454
      x0 = 64; // 0x4d9458
      callIndirect(LR); // 0x4d9464
      q2 = local_0; // 0x4d946c
      x3 = local_0; // 0x4d9468
    } else {
      x0 = x0 << 1; // 0x4d9418
    }
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d9420
    x2 = (x0 >> 1) & 0x7fffffff; // 0x4d9424
    if (x0 & (1 << 0) == 0) {
    } else {
      x2 = mem(x0, 7); // 0x4d942c
    }
    CountDownTimer_start() /* 0x4d2ab0 */; // 0x4d9430
    SP = FP; // 0x4d9438
    x0 = NULL; // 0x4d9434
    // frame: FP, LR, mem(SP), 0x10 // 0x4d943c
    return;
  }
}

// GameFruitWinnerDialogNotifier_onFinished
// raw disassembly:
//  0x5e9c88: stp FP, LR, [SP, #-0x10]!
//  0x5e9c8c: mov FP, SP
//  0x5e9c90: ldr BARRIER, [THR, #0x38]
//  0x5e9c94: cmp SP, BARRIER
//  0x5e9c98: b.ls #0x5e9cdc
//  0x5e9c9c: ldur w0, [x1, #0x2b]
//  0x5e9ca0: add x0, x0, HEAP, lsl #32
//  0x5e9ca4: mov x1, x0
//  0x5e9ca8: bl #0x2c0440
//  0x5e9cac: cmp w0, w22
//  0x5e9cb0: b.ne #0x5e9cc4
//  0x5e9cb4: mov x0, NULL
//  0x5e9cb8: mov SP, FP
//  0x5e9cbc: ldp FP, LR, [SP], #0x10
//  0x5e9cc0: ret 
//  0x5e9cc4: mov x1, x0
//  0x5e9cc8: bl #0x43b5d4
//  0x5e9ccc: mov x0, NULL
//  0x5e9cd0: mov SP, FP
//  0x5e9cd4: ldp FP, LR, [SP], #0x10
//  0x5e9cd8: ret 
//  0x5e9cdc: bl #0x61fa28
//  0x5e9ce0: b #0x5e9c9c
//
dynamic GameFruitWinnerDialogNotifier_onFinished() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x5e9c88
  BARRIER = mem(THR, 0x38); // 0x5e9c90
  // frame: FP = SP // 0x5e9c8c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x5e9cdc
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x5e9ca0
  x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x5e9ca4
  GlobalKey_get_currentElement() /* 0x2c0440 */; // 0x5e9ca8
  if (w0 != w22) {
    x1 = x0; // 0x5e9cc4
    GameFruitWinnerDialog_dismissWinnerDialog() /* 0x43b5d4 */; // 0x5e9cc8
    SP = FP; // 0x5e9cd0
    x0 = NULL; // 0x5e9ccc
    // frame: FP, LR, mem(SP), 0x10 // 0x5e9cd4
    return;
  }
  SP = FP; // 0x5e9cb8
  x0 = NULL; // 0x5e9cb4
  // frame: FP, LR, mem(SP), 0x10 // 0x5e9cbc
  return;
}

// GameFruitWinnerDialogNotifier_onTimed
// raw disassembly:
//  0x5e9ce4: stp FP, LR, [SP, #-0x10]!
//  0x5e9ce8: mov FP, SP
//  0x5e9cec: ldr BARRIER, [THR, #0x38]
//  0x5e9cf0: cmp SP, BARRIER
//  0x5e9cf4: b.ls #0x5e9d10
//  0x5e9cf8: stur x2, [x1, #0x37]
//  0x5e9cfc: bl #0x3ac980
//  0x5e9d00: mov x0, NULL
//  0x5e9d04: mov SP, FP
//  0x5e9d08: ldp FP, LR, [SP], #0x10
//  0x5e9d0c: ret 
//  0x5e9d10: bl #0x61fa28
//  0x5e9d14: b #0x5e9cf8
//
dynamic GameFruitWinnerDialogNotifier_onTimed() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  // frame: FP, LR, mem(SP, -0x10)! // 0x5e9ce4
  BARRIER = mem(THR, 0x38); // 0x5e9cec
  // frame: FP = SP // 0x5e9ce8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x5e9d10
  }
  memSet(x1, 0x37, x2); // 0x5e9cf8
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x5e9cfc
  SP = FP; // 0x5e9d04
  x0 = NULL; // 0x5e9d00
  // frame: FP, LR, mem(SP), 0x10 // 0x5e9d08
  return;
}
