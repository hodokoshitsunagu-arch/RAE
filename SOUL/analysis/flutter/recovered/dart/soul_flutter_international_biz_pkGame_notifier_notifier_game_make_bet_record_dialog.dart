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

dynamic AllocationStub_GamePkMakeBetListModel, AllocationStub__Closure, BARRIER, FP;
dynamic GamePkMakeBetListModel_ctor_fromJson, GrowableList_addAll, GrowableList_clear;
dynamic GrowableList_factory_ctor, HEAP, LR, NULL, PP, SOApiService_getPKBetGameRankList, SP;
dynamic SafeChangeNotifier_safeNotify, SlowTypeTestStub_0x61d6e4;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, WriteBarrierStub_x1, local_0;
dynamic local_10, local_18, local_m10, local_m18, local_m20, local_m28, local_m30, local_m38;
dynamic local_m8, sub_0x2b15f0, sub_0x61d99c, sub_0x61e890, sub_0x62aa34, w0, w1, w16, w17, w2;
dynamic w22, w3, w4, x0, x1, x16, x17, x2, x21, x3, x4, x5, x6, x8, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$pkGame$notifier$notifier_game_make_bet_record_dialog
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// GamePKBetRankingNotifier_requestPKBetGameRankList
// raw disassembly:
//  0x42ea84: stp FP, LR, [SP, #-0x10]!
//  0x42ea88: mov FP, SP
//  0x42ea8c: sub SP, SP, #0x38
//  0x42ea90: stur x1, [FP, #-8]
//  0x42ea94: stur x2, [FP, #-0x10]
//  0x42ea98: stur x3, [FP, #-0x18]
//  0x42ea9c: stur x5, [FP, #-0x20]
//  0x42eaa0: ldr BARRIER, [THR, #0x38]
//  0x42eaa4: cmp SP, BARRIER
//  0x42eaa8: b.ls #0x42eb44
//  0x42eaac: mov x1, #2
//  0x42eab0: bl #0x61e890
//  0x42eab4: mov x2, x0
//  0x42eab8: ldur x0, [FP, #-8]
//  0x42eabc: stur x2, [FP, #-0x28]
//  0x42eac0: stur w0, [x2, #0xf]
//  0x42eac4: ldur x1, [FP, #-0x20]
//  0x42eac8: stur w1, [x2, #0x13]
//  0x42eacc: mov x1, x0
//  0x42ead0: bl #0x3ac980
//  0x42ead4: ldur x0, [FP, #-0x10]
//  0x42ead8: tst x0, #0x10
//  0x42eadc: cset x1, eq
//  0x42eae0: lsl x1, x1, #1
//  0x42eae4: ldur x0, [FP, #-8]
//  0x42eae8: ldur x3, [x0, #0x2f]
//  0x42eaec: stur x3, [FP, #-0x38]
//  0x42eaf0: sbfx x0, x1, #1, #0x1f
//  0x42eaf4: ldur x2, [FP, #-0x28]
//  0x42eaf8: stur x0, [FP, #-0x30]
//  0x42eafc: add x1, PP, #0xf, lsl #12
//  0x42eb00: ldr x1, [x1, #0x358]
//  0x42eb04: bl #0x61ec54
//  0x42eb08: ldur x2, [FP, #-0x28]
//  0x42eb0c: add x1, PP, #0xf, lsl #12
//  0x42eb10: ldr x1, [x1, #0x360]
//  0x42eb14: stur x0, [FP, #-8]
//  0x42eb18: bl #0x61ec54
//  0x42eb1c: ldur x1, [FP, #-0x38]
//  0x42eb20: ldur x2, [FP, #-0x30]
//  0x42eb24: ldur x3, [FP, #-0x18]
//  0x42eb28: ldur x5, [FP, #-8]
//  0x42eb2c: mov x6, x0
//  0x42eb30: bl #0x3ac7ec
//  0x42eb34: mov x0, NULL
//  0x42eb38: mov SP, FP
//  0x42eb3c: ldp FP, LR, [SP], #0x10
//  0x42eb40: ret 
//  0x42eb44: bl #0x61fa28
//  0x42eb48: b #0x42eaac
//
dynamic GamePKBetRankingNotifier_requestPKBetGameRankList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x5;
  dynamic x6;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42ea84
  // frame: FP = SP // 0x42ea88
  // frame: SP = SP - 0x38 // 0x42ea8c
  local_m8 = x1; // 0x42ea90
  local_m10 = x2; // 0x42ea94
  local_m18 = x3; // 0x42ea98
  local_m20 = x5; // 0x42ea9c
  BARRIER = mem(THR, 0x38); // 0x42eaa0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42eb44
  }
  x1 = 2; // 0x42eaac
  sub_0x61e890(); // 0x42eab0
  x0 = local_m8; // 0x42eab8
  x2 = x0; // 0x42eab4
  local_m28 = x2; // 0x42eabc
  memSet(x2, 0xf, w0); // 0x42eac0
  x1 = local_m20; // 0x42eac4
  memSet(x2, 0x13, w1); // 0x42eac8
  x1 = x0; // 0x42eacc
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x42ead0
  x0 = local_m10; // 0x42ead4
  x0 = local_m8; // 0x42eae4
  x1 = (((x0 & 0x10) == 0) ? 1 : 0) << 1; // 0x42eae0
  x3 = mem((local_m8), 0x2f); // 0x42eae8
  local_m38 = x3; // 0x42eaec
  x0 = (x1 >> 1) & 0x7fffffff; // 0x42eaf0
  x2 = local_m28; // 0x42eaf4
  local_m30 = x0; // 0x42eaf8
  x1 = mem((PP + 0xf000), 0x358) /* Function */; // 0x42eb00
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42eb04
  x1 = mem((PP + 0xf000), 0x360) /* Function */; // 0x42eb10
  x2 = local_m28; // 0x42eb08
  local_m8 = x0; // 0x42eb14
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42eb18
  x1 = local_m38; // 0x42eb1c
  x2 = local_m30; // 0x42eb20
  x3 = local_m18; // 0x42eb24
  x5 = local_m8; // 0x42eb28
  x6 = x0; // 0x42eb2c
  SOApiService_getPKBetGameRankList() /* 0x3ac7ec */; // 0x42eb30
  SP = FP; // 0x42eb38
  x0 = NULL; // 0x42eb34
  // frame: FP, LR, mem(SP), 0x10 // 0x42eb3c
  return;
}

// GamePKBetRankingNotifier_anon_closure
// raw disassembly:
//  0x42eb4c: stp FP, LR, [SP, #-0x10]!
//  0x42eb50: mov FP, SP
//  0x42eb54: sub SP, SP, #0x30
//  0x42eb58: ldr x0, [FP, #0x18]
//  0x42eb5c: ldur w3, [x0, #0x17]
//  0x42eb60: add x3, x3, HEAP, lsl #32
//  0x42eb64: stur x3, [FP, #-0x10]
//  0x42eb68: ldr BARRIER, [THR, #0x38]
//  0x42eb6c: cmp SP, BARRIER
//  0x42eb70: b.ls #0x42eda0
//  0x42eb74: ldur w4, [x3, #0xf]
//  0x42eb78: add x4, x4, HEAP, lsl #32
//  0x42eb7c: ldr x5, [FP, #0x10]
//  0x42eb80: stur x4, [FP, #-8]
//  0x42eb84: ldur x0, [x5, #-1]
//  0x42eb88: ubfx x0, x0, #0xc, #0x14
//  0x42eb8c: mov x1, x5
//  0x42eb90: add x2, PP, #0xf, lsl #12
//  0x42eb94: ldr x2, [x2, #0x368]
//  0x42eb98: sub LR, x0, #1, lsl #12
//  0x42eb9c: ldr LR, [x21, LR, lsl #3]
//  0x42eba0: blr LR
//  0x42eba4: cmp w0, w22
//  0x42eba8: b.ne #0x42ebb4
//  0x42ebac: orr x5, xzr, #0xfffffffffffffffe
//  0x42ebb0: b #0x42ebb8
//  0x42ebb4: mov x5, x0
//  0x42ebb8: ldr x4, [FP, #0x10]
//  0x42ebbc: ldur x3, [FP, #-8]
//  0x42ebc0: mov x0, x5
//  0x42ebc4: stur x5, [FP, #-0x18]
//  0x42ebc8: mov x2, NULL
//  0x42ebcc: mov x1, NULL
//  0x42ebd0: tbz w0, #0, #0x42ebf8
//  0x42ebd4: ldur x4, [x0, #-1]
//  0x42ebd8: ubfx x4, x4, #0xc, #0x14
//  0x42ebdc: sub x4, x4, #0x3c
//  0x42ebe0: cmp x4, #1
//  0x42ebe4: b.ls #0x42ebf8
//  0x42ebe8: ldr x8, [PP, #0x1170]
//  0x42ebec: add x3, PP, #0xf, lsl #12
//  0x42ebf0: ldr x3, [x3, #0x370]
//  0x42ebf4: bl #0x62aa34
//  0x42ebf8: ldur x0, [FP, #-0x18]
//  0x42ebfc: sbfx x1, x0, #1, #0x1f
//  0x42ec00: tbz w0, #0, #0x42ec08
//  0x42ec04: ldur x1, [x0, #7]
//  0x42ec08: ldur x0, [FP, #-8]
//  0x42ec0c: stur x1, [x0, #0x2f]
//  0x42ec10: ldr x1, [FP, #0x10]
//  0x42ec14: ldur x0, [x1, #-1]
//  0x42ec18: ubfx x0, x0, #0xc, #0x14
//  0x42ec1c: add x2, PP, #0xf, lsl #12
//  0x42ec20: ldr x2, [x2, #0x380]
//  0x42ec24: sub LR, x0, #1, lsl #12
//  0x42ec28: ldr LR, [x21, LR, lsl #3]
//  0x42ec2c: blr LR
//  0x42ec30: cmp w0, w22
//  0x42ec34: b.ne #0x42ec4c
//  0x42ec38: mov x1, NULL
//  0x42ec3c: mov x2, #0
//  0x42ec40: bl #0x277268
//  0x42ec44: mov x3, x0
//  0x42ec48: b #0x42ec50
//  0x42ec4c: mov x3, x0
//  0x42ec50: mov x0, x3
//  0x42ec54: stur x3, [FP, #-8]
//  0x42ec58: mov x2, NULL
//  0x42ec5c: mov x1, NULL
//  0x42ec60: mov x4, #0x3c
//  0x42ec64: tbz w0, #0, #0x42ec70
//  0x42ec68: ldur x4, [x0, #-1]
//  0x42ec6c: ubfx x4, x4, #0xc, #0x14
//  0x42ec70: sub x4, x4, #0x5a
//  0x42ec74: cmp x4, #2
//  0x42ec78: b.ls #0x42ecac
//  0x42ec7c: sub x4, x4, #0x16
//  0x42ec80: cmp x4, #0x37
//  0x42ec84: b.ls #0x42ecac
//  0x42ec88: cmp x4, #0xebc
//  0x42ec8c: b.eq #0x42ecac
//  0x42ec90: sub x4, x4, #0xedd
//  0x42ec94: cmp x4, #4
//  0x42ec98: b.ls #0x42ecac
//  0x42ec9c: ldr x8, [PP, #0x3b80]
//  0x42eca0: add x3, PP, #0xf, lsl #12
//  0x42eca4: ldr x3, [x3, #0x388]
//  0x42eca8: bl #0x61d6e4
//  0x42ecac: ldur x2, [FP, #-8]
//  0x42ecb0: ldur x0, [x2, #-1]
//  0x42ecb4: ubfx x0, x0, #0xc, #0x14
//  0x42ecb8: mov x1, x2
//  0x42ecbc: mov x17, #0x89aa
//  0x42ecc0: add LR, x0, x17
//  0x42ecc4: ldr LR, [x21, LR, lsl #3]
//  0x42ecc8: blr LR
//  0x42eccc: tbnz w0, #4, #0x42ed40
//  0x42ecd0: ldur x3, [FP, #-0x10]
//  0x42ecd4: ldur x0, [FP, #-8]
//  0x42ecd8: ldur w1, [x3, #0xf]
//  0x42ecdc: add x1, x1, HEAP, lsl #32
//  0x42ece0: ldur w4, [x1, #0x2b]
//  0x42ece4: add x4, x4, HEAP, lsl #32
//  0x42ece8: stur x4, [FP, #-0x18]
//  0x42ecec: add x1, PP, #0xf, lsl #12
//  0x42ecf0: ldr x1, [x1, #0x398]
//  0x42ecf4: mov x2, NULL
//  0x42ecf8: bl #0x61ec54
//  0x42ecfc: mov x1, x0
//  0x42ed00: ldur x0, [FP, #-8]
//  0x42ed04: ldur x2, [x0, #-1]
//  0x42ed08: ubfx x2, x2, #0xc, #0x14
//  0x42ed0c: add BARRIER, PP, #0xb, lsl #12
//  0x42ed10: ldr BARRIER, [BARRIER, #0x698]
//  0x42ed14: stp x0, BARRIER, [SP, #8]
//  0x42ed18: str x1, [SP]
//  0x42ed1c: mov x0, x2
//  0x42ed20: ldr x4, [PP, #0x58]
//  0x42ed24: mov x17, #0x86d9
//  0x42ed28: add LR, x0, x17
//  0x42ed2c: ldr LR, [x21, LR, lsl #3]
//  0x42ed30: blr LR
//  0x42ed34: ldur x1, [FP, #-0x18]
//  0x42ed38: mov x2, x0
//  0x42ed3c: bl #0x2ce4e8
//  0x42ed40: ldur x1, [FP, #-0x10]
//  0x42ed44: ldur w0, [x1, #0x13]
//  0x42ed48: add x0, x0, HEAP, lsl #32
//  0x42ed4c: ldur w2, [x1, #0xf]
//  0x42ed50: add x2, x2, HEAP, lsl #32
//  0x42ed54: ldur x3, [x2, #0x2f]
//  0x42ed58: tbnz x3, #0x3f, #0x42ed64
//  0x42ed5c: add x2, NULL, #0x30
//  0x42ed60: b #0x42ed68
//  0x42ed64: add x2, NULL, #0x20
//  0x42ed68: add BARRIER, NULL, #0x20
//  0x42ed6c: stp BARRIER, x0, [SP, #8]
//  0x42ed70: str x2, [SP]
//  0x42ed74: ldr x4, [PP, #0x370]
//  0x42ed78: ldur x2, [x0, #0x1f]
//  0x42ed7c: blr x2
//  0x42ed80: ldur x0, [FP, #-0x10]
//  0x42ed84: ldur w1, [x0, #0xf]
//  0x42ed88: add x1, x1, HEAP, lsl #32
//  0x42ed8c: bl #0x3ac980
//  0x42ed90: mov x0, NULL
//  0x42ed94: mov SP, FP
//  0x42ed98: ldp FP, LR, [SP], #0x10
//  0x42ed9c: ret 
//  0x42eda0: bl #0x61fa28
//  0x42eda4: b #0x42eb74
//
dynamic GamePKBetRankingNotifier_anon_closure() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x42eb4c
  // frame: FP = SP // 0x42eb50
  // frame: SP = SP - 0x30 // 0x42eb54
  w3 = mem((local_18), 0x17); // 0x42eb5c
  x0 = local_18; // 0x42eb58
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x42eb60
  local_m10 = x3; // 0x42eb64
  BARRIER = mem(THR, 0x38); // 0x42eb68
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42eda0
  }
  x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x42eb78
  x5 = local_10; // 0x42eb7c
  local_m8 = x4; // 0x42eb80
  LR = mem(x21, ((((mem(x5, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x42eb9c
  x0 = ((mem(x5, -1)) >> 12) & 0xfffff; // 0x42eb88
  x1 = x5; // 0x42eb8c
  x2 = "cursor" /* pp+0xf368 */; // 0x42eb94
  callIndirect(LR); // 0x42eba0
  if (w0 != w22) {
    x5 = x0; // 0x42ebb4
  } else {
    x5 = xzr | 0xfffffffffffffffe; // 0x42ebac
  }
  x0 = x5; // 0x42ebc0
  x3 = local_m8; // 0x42ebbc
  x4 = local_10; // 0x42ebb8
  local_m18 = x5; // 0x42ebc4
  x1 = NULL; // 0x42ebcc
  x2 = NULL; // 0x42ebc8
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x42ebdc
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0xf000), 0x370) /* Obj!? */; // 0x42ebf0
      x8 = mem(PP, 0x1170) /* Type */; // 0x42ebe8
      sub_0x62aa34(); // 0x42ebf4
    }
  }
  x0 = local_m18; // 0x42ebf8
  x1 = ((local_m18) >> 1) & 0x7fffffff; // 0x42ebfc
  if (x0 & (1 << 0) == 0) {
  } else {
    x1 = mem(x0, 7); // 0x42ec04
  }
  x0 = local_m8; // 0x42ec08
  memSet(x0, 0x2f, x1); // 0x42ec0c
  LR = mem(x21, ((((mem((local_10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x42ec28
  x0 = ((mem((local_10), -1)) >> 12) & 0xfffff; // 0x42ec18
  x1 = local_10; // 0x42ec10
  x2 = "list" /* pp+0xf380 */; // 0x42ec20
  callIndirect(LR); // 0x42ec2c
  if (w0 != w22) {
    x3 = x0; // 0x42ec4c
  } else {
    x1 = NULL; // 0x42ec38
    x2 = 0; // 0x42ec3c
    GrowableList_factory_ctor() /* 0x277268 */; // 0x42ec40
    x3 = x0; // 0x42ec44
  }
  x0 = x3; // 0x42ec50
  local_m8 = x3; // 0x42ec54
  x1 = NULL; // 0x42ec5c
  x2 = NULL; // 0x42ec58
  x4 = 60; // 0x42ec60
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x42ec6c
  }
  x4 = x4 - 0x5a; // 0x42ec70
  if (x4 <= 2) {
  } else {
    x4 = x4 - 0x16; // 0x42ec7c
    if (x4 <= 0x37) {
    } else {
      if (x4 == 0xebc) {
      } else {
        x4 = x4 - 0xedd; // 0x42ec90
        if (x4 <= 4) {
        } else {
          x3 = mem((PP + 0xf000), 0x388) /* Obj!? */; // 0x42eca4
          x8 = mem(PP, 0x3b80) /* Type */; // 0x42ec9c
          SlowTypeTestStub_0x61d6e4() /* 0x61d6e4 */; // 0x42eca8
        }
      }
    }
  }
  LR = mem(x21, ((((mem((local_m8), (-1)) >> 12) & 0xfffff) + x17) << 3)); // 0x42ecc4
  x0 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x42ecb4
  x1 = local_m8; // 0x42ecb8
  x17 = 35242; // 0x42ecbc
  x2 = local_m8; // 0x42ecac
  callIndirect(LR); // 0x42ecc8
  if (x0 & (1 << 4) != 0) {
  } else {
    w1 = mem((local_m10), 0xf); // 0x42ecd8
    w4 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x42ece0
    x0 = local_m8; // 0x42ecd4
    x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42ecdc
    x3 = local_m10; // 0x42ecd0
    x4 = ((mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x42ece4
    local_m18 = x4; // 0x42ece8
    x1 = mem((PP + 0xf000), 0x398) /* Function */; // 0x42ecf0
    x2 = NULL; // 0x42ecf4
    AllocationStub__Closure() /* 0x61ec54 */; // 0x42ecf8
    BARRIER = mem((PP + 0xb000), 0x698) /* TypeArguments */; // 0x42ed10
    x0 = local_m8; // 0x42ed00
    x1 = x0; // 0x42ecfc
    x2 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x42ed08
    // frame: x0, BARRIER, mem(SP, 8) // 0x42ed14
    local_0 = x1; // 0x42ed18
    LR = mem(x21, ((x0 + x17) << 3)); // 0x42ed2c
    x0 = x2; // 0x42ed1c
    x17 = 34521; // 0x42ed24
    x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x42ed20
    callIndirect(LR); // 0x42ed30
    x1 = local_m18; // 0x42ed34
    x2 = x0; // 0x42ed38
    GrowableList_addAll() /* 0x2ce4e8 */; // 0x42ed3c
  }
  w0 = mem((local_m10), 0x13); // 0x42ed44
  w2 = mem((local_m10), 0xf); // 0x42ed4c
  x0 = ((mem((local_m10), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x42ed48
  x1 = local_m10; // 0x42ed40
  x2 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42ed50
  x3 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2f); // 0x42ed54
  if (x3 & (1 << 0x3f) != 0) {
    x2 = NULL + 0x20; // 0x42ed64
  } else {
    x2 = NULL + 0x30; // 0x42ed5c
  }
  BARRIER = NULL + 0x20; // 0x42ed68
  // frame: BARRIER, x0, mem(SP, 8) // 0x42ed6c
  local_0 = x2; // 0x42ed70
  x2 = mem(x0, 0x1f); // 0x42ed78
  x4 = mem(PP, 0x370) /* Obj!? */; // 0x42ed74
  callIndirect(x2); // 0x42ed7c
  w1 = mem((local_m10), 0xf); // 0x42ed84
  x0 = local_m10; // 0x42ed80
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42ed88
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x42ed8c
  SP = FP; // 0x42ed94
  x0 = NULL; // 0x42ed90
  // frame: FP, LR, mem(SP), 0x10 // 0x42ed98
  return;
}

// GamePKBetRankingNotifier_anon_closure_2
// raw disassembly:
//  0x42eda8: stp FP, LR, [SP, #-0x10]!
//  0x42edac: mov FP, SP
//  0x42edb0: sub SP, SP, #8
//  0x42edb4: ldr BARRIER, [THR, #0x38]
//  0x42edb8: cmp SP, BARRIER
//  0x42edbc: b.ls #0x42ee00
//  0x42edc0: ldr x0, [FP, #0x10]
//  0x42edc4: mov x2, NULL
//  0x42edc8: mov x1, NULL
//  0x42edcc: ldr x8, [PP, #0x3cd0]
//  0x42edd0: add x3, PP, #0xf, lsl #12
//  0x42edd4: ldr x3, [x3, #0x3a0]
//  0x42edd8: bl #0x2b15f0
//  0x42eddc: bl #0x42f0d8
//  0x42ede0: mov x1, x0
//  0x42ede4: ldr x2, [FP, #0x10]
//  0x42ede8: stur x0, [FP, #-8]
//  0x42edec: bl #0x42ee08
//  0x42edf0: ldur x0, [FP, #-8]
//  0x42edf4: mov SP, FP
//  0x42edf8: ldp FP, LR, [SP], #0x10
//  0x42edfc: ret 
//  0x42ee00: bl #0x61fa28
//  0x42ee04: b #0x42edc0
//
dynamic GamePKBetRankingNotifier_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42eda8
  BARRIER = mem(THR, 0x38); // 0x42edb4
  // frame: FP = SP // 0x42edac
  // frame: SP = SP - 8 // 0x42edb0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42ee00
  }
  x0 = local_10; // 0x42edc0
  x1 = NULL; // 0x42edc8
  x2 = NULL; // 0x42edc4
  x3 = mem((PP + 0xf000), 0x3a0) /* Obj!? */; // 0x42edd4
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x42edcc
  sub_0x2b15f0(); // 0x42edd8
  AllocationStub_GamePkMakeBetListModel() /* 0x42f0d8 */; // 0x42eddc
  x1 = x0; // 0x42ede0
  x2 = local_10; // 0x42ede4
  local_m8 = x0; // 0x42ede8
  GamePkMakeBetListModel_ctor_fromJson() /* 0x42ee08 */; // 0x42edec
  SP = FP; // 0x42edf4
  x0 = local_m8; // 0x42edf0
  // frame: FP, LR, mem(SP), 0x10 // 0x42edf8
  return;
}

// GamePKBetRankingNotifier_ctor
// raw disassembly:
//  0x4c5530: stp FP, LR, [SP, #-0x10]!
//  0x4c5534: mov FP, SP
//  0x4c5538: sub SP, SP, #8
//  0x4c553c: mov x0, x1
//  0x4c5540: stur x1, [FP, #-8]
//  0x4c5544: ldr BARRIER, [THR, #0x38]
//  0x4c5548: cmp SP, BARRIER
//  0x4c554c: b.ls #0x4c55e4
//  0x4c5550: add x1, PP, #0xb, lsl #12
//  0x4c5554: ldr x1, [x1, #0x698]
//  0x4c5558: mov x2, #0
//  0x4c555c: bl #0x277268
//  0x4c5560: ldur x1, [FP, #-8]
//  0x4c5564: stur w0, [x1, #0x2b]
//  0x4c5568: ldurb w16, [x1, #-1]
//  0x4c556c: ldurb w17, [x0, #-1]
//  0x4c5570: and BARRIER, x17, BARRIER, lsr #2
//  0x4c5574: tst BARRIER, HEAP, lsr #32
//  0x4c5578: b.eq #0x4c5580
//  0x4c557c: bl #0x61e04c
//  0x4c5580: mov x0, #-1
//  0x4c5584: stur x0, [x1, #0x2f]
//  0x4c5588: stur x0, [x1, #0x23]
//  0x4c558c: stur xzr, [x1, #7]
//  0x4c5590: stur xzr, [x1, #0x13]
//  0x4c5594: stur xzr, [x1, #0x1b]
//  0x4c5598: ldr x0, [THR, #0x68]
//  0x4c559c: ldr x0, [x0, #0xb90]
//  0x4c55a0: ldr BARRIER, [PP, #0x40]
//  0x4c55a4: cmp w0, w16
//  0x4c55a8: b.ne #0x4c55b4
//  0x4c55ac: ldr x2, [PP, #0x3608]
//  0x4c55b0: bl #0x61d99c
//  0x4c55b4: ldur x1, [FP, #-8]
//  0x4c55b8: stur w0, [x1, #0xf]
//  0x4c55bc: ldurb w16, [x1, #-1]
//  0x4c55c0: ldurb w17, [x0, #-1]
//  0x4c55c4: and BARRIER, x17, BARRIER, lsr #2
//  0x4c55c8: tst BARRIER, HEAP, lsr #32
//  0x4c55cc: b.eq #0x4c55d4
//  0x4c55d0: bl #0x61e04c
//  0x4c55d4: mov x0, NULL
//  0x4c55d8: mov SP, FP
//  0x4c55dc: ldp FP, LR, [SP], #0x10
//  0x4c55e0: ret 
//  0x4c55e4: bl #0x61fa28
//  0x4c55e8: b #0x4c5550
//
dynamic GamePKBetRankingNotifier_ctor() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c5530
  // frame: FP = SP // 0x4c5534
  // frame: SP = SP - 8 // 0x4c5538
  x0 = x1; // 0x4c553c
  local_m8 = x1; // 0x4c5540
  BARRIER = mem(THR, 0x38); // 0x4c5544
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c55e4
  }
  x1 = mem((PP + 0xb000), 0x698) /* TypeArguments */; // 0x4c5554
  x2 = 0; // 0x4c5558
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c555c
  x1 = local_m8; // 0x4c5560
  memSet(x1, 0x2b, w0); // 0x4c5564
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c5570
  w16 = mem(x1, -1); // 0x4c5568
  w17 = mem(x0, -1); // 0x4c556c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c5568
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c556c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c557c
  }
  x0 = -1; // 0x4c5580
  memSet(x1, 0x2f, x0); // 0x4c5584
  memSet(x1, 0x23, x0); // 0x4c5588
  memSet(x1, 7, xzr); // 0x4c558c
  memSet(x1, 0x13, xzr); // 0x4c5590
  memSet(x1, 0x1b, xzr); // 0x4c5594
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4c55a0
  x0 = mem((mem(THR, 0x68)), 0xb90); // 0x4c559c
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3608) /* Field */; // 0x4c55ac
    sub_0x61d99c(); // 0x4c55b0
  }
  x1 = local_m8; // 0x4c55b4
  memSet(x1, 0xf, w0); // 0x4c55b8
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c55c4
  w16 = mem(x1, -1); // 0x4c55bc
  w17 = mem(x0, -1); // 0x4c55c0
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c55bc
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c55c0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c55d0
  }
  SP = FP; // 0x4c55d8
  x0 = NULL; // 0x4c55d4
  // frame: FP, LR, mem(SP), 0x10 // 0x4c55dc
  return;
}

// GamePKBetRankingNotifier_gainPKBetGameRank
// raw disassembly:
//  0x4da514: stp FP, LR, [SP, #-0x10]!
//  0x4da518: mov FP, SP
//  0x4da51c: sub SP, SP, #0x20
//  0x4da520: mov x0, x1
//  0x4da524: stur x1, [FP, #-8]
//  0x4da528: stur x2, [FP, #-0x10]
//  0x4da52c: stur x3, [FP, #-0x18]
//  0x4da530: stur x5, [FP, #-0x20]
//  0x4da534: ldr BARRIER, [THR, #0x38]
//  0x4da538: cmp SP, BARRIER
//  0x4da53c: b.ls #0x4da570
//  0x4da540: ldur w1, [x0, #0x2b]
//  0x4da544: add x1, x1, HEAP, lsl #32
//  0x4da548: bl #0x2b3608
//  0x4da54c: ldur x1, [FP, #-8]
//  0x4da550: ldur x2, [FP, #-0x10]
//  0x4da554: ldur x3, [FP, #-0x18]
//  0x4da558: ldur x5, [FP, #-0x20]
//  0x4da55c: bl #0x42ea84
//  0x4da560: mov x0, NULL
//  0x4da564: mov SP, FP
//  0x4da568: ldp FP, LR, [SP], #0x10
//  0x4da56c: ret 
//  0x4da570: bl #0x61fa28
//  0x4da574: b #0x4da540
//
dynamic GamePKBetRankingNotifier_gainPKBetGameRank() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4da514
  // frame: FP = SP // 0x4da518
  // frame: SP = SP - 0x20 // 0x4da51c
  x0 = x1; // 0x4da520
  local_m8 = x1; // 0x4da524
  local_m10 = x2; // 0x4da528
  local_m18 = x3; // 0x4da52c
  local_m20 = x5; // 0x4da530
  BARRIER = mem(THR, 0x38); // 0x4da534
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4da570
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4da544
  GrowableList_clear() /* 0x2b3608 */; // 0x4da548
  x1 = local_m8; // 0x4da54c
  x2 = local_m10; // 0x4da550
  x3 = local_m18; // 0x4da554
  x5 = local_m20; // 0x4da558
  GamePKBetRankingNotifier_requestPKBetGameRankList() /* 0x42ea84 */; // 0x4da55c
  SP = FP; // 0x4da564
  x0 = NULL; // 0x4da560
  // frame: FP, LR, mem(SP), 0x10 // 0x4da568
  return;
}
