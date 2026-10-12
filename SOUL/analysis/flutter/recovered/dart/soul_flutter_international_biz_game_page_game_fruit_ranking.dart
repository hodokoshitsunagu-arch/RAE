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

dynamic AllocationStub_BorderRadius, AllocationStub_BoxDecoration;
dynamic AllocationStub_ChangeNotifierProvider, AllocationStub_Color, AllocationStub_Column;
dynamic AllocationStub_Consumer, AllocationStub_Container, AllocationStub_EdgeInsets;
dynamic AllocationStub_Expanded, AllocationStub_Flexible;
dynamic AllocationStub_GameFruitRankingNotifier, AllocationStub_LinearGradient;
dynamic AllocationStub_Positioned, AllocationStub_Radius, AllocationStub_RefreshController;
dynamic AllocationStub_Row, AllocationStub_SOAssetImage, AllocationStub_SizedBox;
dynamic AllocationStub_SoulAvatarImage, AllocationStub_SoulPageScaffold, AllocationStub_Stack;
dynamic AllocationStub_Text, AllocationStub_TextStyle, AllocationStub__Closure;
dynamic AllocationStub__Double, AllocationStub__GrowableList;
dynamic AllocationStub__PageGameFruitRankingState, BARRIER, Border_factory_ctor_all;
dynamic Container_ctor, FP, GameFruitRankingNotifier_ctor;
dynamic GameFruitRankingNotifier_gainGameFruitRank;
dynamic GameFruitRankingNotifier_requestGameFruitRankList, HEAP, InheritedProvider_ctor, LR;
dynamic LateInitializationErrorSharedWithoutFpuRegsStub_0x620258, NULL, PP;
dynamic RangeErrorSharedWithoutFpuRegsStub_0x61fe70, RefreshController_ctor;
dynamic RefreshController_dispose, RefreshController_loadComplete;
dynamic RefreshController_loadFailed, RefreshController_loadNoData, SOColors_get_s_06, SP;
dynamic ScreenUtil_getScreenWidth, Smi_toString, StackOverflowSharedWithFpuRegsStub_0x61faa8;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, WriteBarrierStub_x1;
dynamic WriteBarrierStub_x2, d0, d1, d2, d3, getString, local_0, local_10, local_18, local_20;
dynamic local_28, local_m10, local_m18, local_m20, local_m28, local_m30, local_m38, local_m40;
dynamic local_m48, local_m50, local_m58, local_m60, local_m68, local_m70, local_m78, local_m8;
dynamic local_m80, local_m88, local_m90, local_m98, local_ma0, q0, q2, sub_0x61e890;
dynamic sub_0x61f920, v0_16b, v1_16b, w0, w1, w16, w17, w2, w22, w3, w4, w5, w6, w7, x0, x1;
dynamic x10, x11, x12, x16, x17, x2, x3, x4, x5, x6, x7, x8, x9, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$game$page_game_fruit_ranking
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PageGameFruitRankingState_anon_closure
// raw disassembly:
//  0x43658c: stp FP, LR, [SP, #-0x10]!
//  0x436590: mov FP, SP
//  0x436594: sub SP, SP, #8
//  0x436598: ldr x0, [FP, #0x10]
//  0x43659c: ldur w2, [x0, #0x17]
//  0x4365a0: add x2, x2, HEAP, lsl #32
//  0x4365a4: ldr BARRIER, [THR, #0x38]
//  0x4365a8: cmp SP, BARRIER
//  0x4365ac: b.ls #0x4365e4
//  0x4365b0: ldur w0, [x2, #0x17]
//  0x4365b4: add x0, x0, HEAP, lsl #32
//  0x4365b8: stur x0, [FP, #-8]
//  0x4365bc: add x1, PP, #0x11, lsl #12
//  0x4365c0: ldr x1, [x1, #0x940]
//  0x4365c4: bl #0x61ec54
//  0x4365c8: ldur x1, [FP, #-8]
//  0x4365cc: mov x2, x0
//  0x4365d0: bl #0x4365ec
//  0x4365d4: mov x0, NULL
//  0x4365d8: mov SP, FP
//  0x4365dc: ldp FP, LR, [SP], #0x10
//  0x4365e0: ret 
//  0x4365e4: bl #0x61fa28
//  0x4365e8: b #0x4365b0
//
dynamic PageGameFruitRankingState_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x43658c
  BARRIER = mem(THR, 0x38); // 0x4365a4
  // frame: FP = SP // 0x436590
  // frame: SP = SP - 8 // 0x436594
  w2 = mem((local_10), 0x17); /* _PageGameFruitRankingState._refreshController (off 0x18) */  // 0x43659c
  x0 = local_10; // 0x436598
  x2 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PageGameFruitRankingState._refreshController (off 0x18) */  // 0x4365a0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4365e4
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4365b4
  local_m8 = x0; // 0x4365b8
  x1 = mem((PP + 0x11000), 0x940) /* Function */; // 0x4365c0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4365c4
  x1 = local_m8; // 0x4365c8
  x2 = x0; // 0x4365cc
  GameFruitRankingNotifier_requestGameFruitRankList() /* 0x4365ec */; // 0x4365d0
  SP = FP; // 0x4365d8
  x0 = NULL; // 0x4365d4
  // frame: FP, LR, mem(SP), 0x10 // 0x4365dc
  return;
}

// PageGameFruitRankingState_userRankListWidget
// raw disassembly:
//  0x436d20: stp FP, LR, [SP, #-0x10]!
//  0x436d24: mov FP, SP
//  0x436d28: sub SP, SP, #0xc8
//  0x436d2c: stur x1, [FP, #-8]
//  0x436d30: stur x2, [FP, #-0x10]
//  0x436d34: stur x3, [FP, #-0x18]
//  0x436d38: stur x5, [FP, #-0x20]
//  0x436d3c: stur d0, [FP, #-0x90]
//  0x436d40: stur d1, [FP, #-0x98]
//  0x436d44: ldr BARRIER, [THR, #0x38]
//  0x436d48: cmp SP, BARRIER
//  0x436d4c: b.ls #0x438430
//  0x436d50: mov x1, #6
//  0x436d54: bl #0x61e890
//  0x436d58: mov x3, x0
//  0x436d5c: ldur x2, [FP, #-8]
//  0x436d60: stur x3, [FP, #-0x28]
//  0x436d64: stur w2, [x3, #0xf]
//  0x436d68: ldur x4, [FP, #-0x10]
//  0x436d6c: stur w4, [x3, #0x13]
//  0x436d70: ldur x0, [FP, #-0x18]
//  0x436d74: stur w0, [x3, #0x17]
//  0x436d78: ldur x0, [FP, #-0x20]
//  0x436d7c: stur w0, [x3, #0x1b]
//  0x436d80: add x0, PP, #0xf, lsl #12
//  0x436d84: ldr x0, [x0, #0xb80]
//  0x436d88: stur w0, [x3, #0x1f]
//  0x436d8c: add x0, PP, #0x11, lsl #12
//  0x436d90: ldr x0, [x0, #0x838]
//  0x436d94: stur w0, [x3, #0x23]
//  0x436d98: ldur w0, [x4, #0xb]
//  0x436d9c: sbfx x5, x0, #1, #0x1f
//  0x436da0: cmp x5, #3
//  0x436da4: b.lt #0x436e00
//  0x436da8: mov x0, x5
//  0x436dac: mov x1, #0
//  0x436db0: cmp x1, x0
//  0x436db4: b.hs #0x438438
//  0x436db8: ldur w6, [x4, #0xf]
//  0x436dbc: add x6, x6, HEAP, lsl #32
//  0x436dc0: ldur w4, [x6, #0xf]
//  0x436dc4: add x4, x4, HEAP, lsl #32
//  0x436dc8: mov x0, x5
//  0x436dcc: mov x1, #1
//  0x436dd0: cmp x1, x0
//  0x436dd4: b.hs #0x43843c
//  0x436dd8: ldur w7, [x6, #0x13]
//  0x436ddc: add x7, x7, HEAP, lsl #32
//  0x436de0: mov x0, x5
//  0x436de4: mov x1, #2
//  0x436de8: cmp x1, x0
//  0x436dec: b.hs #0x438440
//  0x436df0: ldur w0, [x6, #0x17]
//  0x436df4: add x0, x0, HEAP, lsl #32
//  0x436df8: mov x1, x7
//  0x436dfc: b #0x436e80
//  0x436e00: cmp x5, #3
//  0x436e04: b.ge #0x436e50
//  0x436e08: cmp x5, #2
//  0x436e0c: b.lt #0x436e50
//  0x436e10: mov x0, x5
//  0x436e14: mov x1, #0
//  0x436e18: cmp x1, x0
//  0x436e1c: b.hs #0x438444
//  0x436e20: ldur w6, [x4, #0xf]
//  0x436e24: add x6, x6, HEAP, lsl #32
//  0x436e28: ldur w4, [x6, #0xf]
//  0x436e2c: add x4, x4, HEAP, lsl #32
//  0x436e30: mov x0, x5
//  0x436e34: mov x1, #1
//  0x436e38: cmp x1, x0
//  0x436e3c: b.hs #0x438448
//  0x436e40: ldur w0, [x6, #0x13]
//  0x436e44: add x0, x0, HEAP, lsl #32
//  0x436e48: mov x1, x4
//  0x436e4c: b #0x436e74
//  0x436e50: mov x0, x5
//  0x436e54: mov x1, #0
//  0x436e58: cmp x1, x0
//  0x436e5c: b.hs #0x43844c
//  0x436e60: ldur w0, [x4, #0xf]
//  0x436e64: add x0, x0, HEAP, lsl #32
//  0x436e68: ldur w1, [x0, #0xf]
//  0x436e6c: add x1, x1, HEAP, lsl #32
//  0x436e70: mov x0, NULL
//  0x436e74: mov x4, x1
//  0x436e78: mov x1, x0
//  0x436e7c: mov x0, NULL
//  0x436e80: ldur d0, [FP, #-0x98]
//  0x436e84: stur x4, [FP, #-0x10]
//  0x436e88: stur x1, [FP, #-0x18]
//  0x436e8c: stur x0, [FP, #-0x20]
//  0x436e90: bl #0x2e3578
//  0x436e94: fmov d0, #20.00000000
//  0x436e98: stur x0, [FP, #-0x30]
//  0x436e9c: stur d0, [x0, #7]
//  0x436ea0: stur d0, [x0, #0xf]
//  0x436ea4: stur d0, [x0, #0x17]
//  0x436ea8: fmov d1, #12.00000000
//  0x436eac: stur d1, [x0, #0x1f]
//  0x436eb0: bl #0x2e3578
//  0x436eb4: stur x0, [FP, #-0x38]
//  0x436eb8: stur xzr, [x0, #7]
//  0x436ebc: fmov d0, #25.00000000
//  0x436ec0: stur d0, [x0, #0xf]
//  0x436ec4: stur xzr, [x0, #0x17]
//  0x436ec8: stur xzr, [x0, #0x1f]
//  0x436ecc: bl #0x31d844
//  0x436ed0: mov x1, x0
//  0x436ed4: ldr x0, [PP, #0x6310]
//  0x436ed8: stur x1, [FP, #-0x40]
//  0x436edc: stur w0, [x1, #0x27]
//  0x436ee0: add x17, PP, #0x11, lsl #12
//  0x436ee4: ldr d0, [x17, #0x840]
//  0x436ee8: stur d0, [x1, #7]
//  0x436eec: add x17, PP, #0x11, lsl #12
//  0x436ef0: ldr d1, [x17, #0x848]
//  0x436ef4: stur d1, [x1, #0xf]
//  0x436ef8: add x17, PP, #0x11, lsl #12
//  0x436efc: ldr d2, [x17, #0x850]
//  0x436f00: stur d2, [x1, #0x17]
//  0x436f04: fmov d3, #1.00000000
//  0x436f08: stur d3, [x1, #0x1f]
//  0x436f0c: bl #0x31d844
//  0x436f10: mov x3, x0
//  0x436f14: ldr x0, [PP, #0x6310]
//  0x436f18: stur x3, [FP, #-0x48]
//  0x436f1c: stur w0, [x3, #0x27]
//  0x436f20: stur xzr, [x3, #7]
//  0x436f24: add x17, PP, #0x11, lsl #12
//  0x436f28: ldr d0, [x17, #0x848]
//  0x436f2c: stur d0, [x3, #0xf]
//  0x436f30: add x17, PP, #0x11, lsl #12
//  0x436f34: ldr d1, [x17, #0x850]
//  0x436f38: stur d1, [x3, #0x17]
//  0x436f3c: fmov d1, #1.00000000
//  0x436f40: stur d1, [x3, #0x1f]
//  0x436f44: mov x1, NULL
//  0x436f48: mov x2, #4
//  0x436f4c: bl #0x61f920
//  0x436f50: mov x2, x0
//  0x436f54: ldur x0, [FP, #-0x40]
//  0x436f58: stur x2, [FP, #-0x50]
//  0x436f5c: stur w0, [x2, #0xf]
//  0x436f60: ldur x0, [FP, #-0x48]
//  0x436f64: stur w0, [x2, #0x13]
//  0x436f68: add x1, PP, #0x10, lsl #12
//  0x436f6c: ldr x1, [x1, #0xc58]
//  0x436f70: bl #0x61e854
//  0x436f74: mov x1, x0
//  0x436f78: ldur x0, [FP, #-0x50]
//  0x436f7c: stur x1, [FP, #-0x40]
//  0x436f80: stur w0, [x1, #0xf]
//  0x436f84: mov x2, #4
//  0x436f88: stur w2, [x1, #0xb]
//  0x436f8c: bl #0x3a108c
//  0x436f90: mov x1, x0
//  0x436f94: add x0, PP, #0x10, lsl #12
//  0x436f98: ldr x0, [x0, #0xc68]
//  0x436f9c: stur x1, [FP, #-0x48]
//  0x436fa0: stur w0, [x1, #0x13]
//  0x436fa4: add x2, PP, #0x10, lsl #12
//  0x436fa8: ldr x2, [x2, #0xc70]
//  0x436fac: stur w2, [x1, #0x17]
//  0x436fb0: add x3, PP, #0x10, lsl #12
//  0x436fb4: ldr x3, [x3, #0xc78]
//  0x436fb8: stur w3, [x1, #0x1b]
//  0x436fbc: ldur x4, [FP, #-0x40]
//  0x436fc0: stur w4, [x1, #7]
//  0x436fc4: ldur d0, [FP, #-0x98]
//  0x436fc8: fmov d1, #0.50000000
//  0x436fcc: fmul d2, d0, d1
//  0x436fd0: stur d2, [FP, #-0xa0]
//  0x436fd4: bl #0x352b04
//  0x436fd8: ldur d0, [FP, #-0xa0]
//  0x436fdc: stur x0, [FP, #-0x40]
//  0x436fe0: stur d0, [x0, #7]
//  0x436fe4: stur d0, [x0, #0xf]
//  0x436fe8: bl #0x352b04
//  0x436fec: ldur d0, [FP, #-0xa0]
//  0x436ff0: stur x0, [FP, #-0x50]
//  0x436ff4: stur d0, [x0, #7]
//  0x436ff8: stur d0, [x0, #0xf]
//  0x436ffc: bl #0x392f28
//  0x437000: mov x1, x0
//  0x437004: ldur x0, [FP, #-0x40]
//  0x437008: stur x1, [FP, #-0x58]
//  0x43700c: stur w0, [x1, #7]
//  0x437010: ldur x0, [FP, #-0x50]
//  0x437014: stur w0, [x1, #0xb]
//  0x437018: add x0, PP, #0xa, lsl #12
//  0x43701c: ldr x0, [x0, #0x510]
//  0x437020: stur w0, [x1, #0xf]
//  0x437024: stur w0, [x1, #0x13]
//  0x437028: bl #0x391dd8
//  0x43702c: mov x1, x0
//  0x437030: ldur x0, [FP, #-0x58]
//  0x437034: stur x1, [FP, #-0x40]
//  0x437038: stur w0, [x1, #0x13]
//  0x43703c: ldur x0, [FP, #-0x48]
//  0x437040: stur w0, [x1, #0x1b]
//  0x437044: add x0, PP, #0xe, lsl #12
//  0x437048: ldr x0, [x0, #0xb78]
//  0x43704c: stur w0, [x1, #0x23]
//  0x437050: bl #0x3a142c
//  0x437054: mov x1, x0
//  0x437058: add x0, PP, #0x11, lsl #12
//  0x43705c: ldr x0, [x0, #0x858]
//  0x437060: stur x1, [FP, #-0x48]
//  0x437064: stur w0, [x1, #0xb]
//  0x437068: add x0, PP, #0xf, lsl #12
//  0x43706c: ldr x0, [x0, #0x170]
//  0x437070: stur w0, [x1, #0xf]
//  0x437074: add x2, PP, #0x11, lsl #12
//  0x437078: ldr x2, [x2, #0x860]
//  0x43707c: stur w2, [x1, #0x13]
//  0x437080: add x3, PP, #0x11, lsl #12
//  0x437084: ldr x3, [x3, #0x410]
//  0x437088: stur w3, [x1, #0x17]
//  0x43708c: bl #0x391a04
//  0x437090: stur x0, [FP, #-0x50]
//  0x437094: add BARRIER, PP, #0x11, lsl #12
//  0x437098: ldr BARRIER, [BARRIER, #0x860]
//  0x43709c: add LR, PP, #0x11, lsl #12
//  0x4370a0: ldr LR, [LR, #0x410]
//  0x4370a4: stp LR, BARRIER, [SP, #8]
//  0x4370a8: ldur BARRIER, [FP, #-0x48]
//  0x4370ac: str BARRIER, [SP]
//  0x4370b0: mov x1, x0
//  0x4370b4: add x4, PP, #0x11, lsl #12
//  0x4370b8: ldr x4, [x4, #0x868]
//  0x4370bc: bl #0x391490
//  0x4370c0: add x1, PP, #0xf, lsl #12
//  0x4370c4: ldr x1, [x1, #0x5d8]
//  0x4370c8: bl #0x399e40
//  0x4370cc: mov x1, x0
//  0x4370d0: add x0, PP, #0x11, lsl #12
//  0x4370d4: ldr x0, [x0, #0x870]
//  0x4370d8: stur x1, [FP, #-0x48]
//  0x4370dc: stur w0, [x1, #0x17]
//  0x4370e0: ldur x2, [FP, #-0x50]
//  0x4370e4: stur w2, [x1, #0xb]
//  0x4370e8: bl #0x2e3578
//  0x4370ec: stur x0, [FP, #-0x50]
//  0x4370f0: stur xzr, [x0, #7]
//  0x4370f4: fmov d0, #20.00000000
//  0x4370f8: stur d0, [x0, #0xf]
//  0x4370fc: stur xzr, [x0, #0x17]
//  0x437100: stur xzr, [x0, #0x1f]
//  0x437104: bl #0x31d844
//  0x437108: mov x1, x0
//  0x43710c: ldr x0, [PP, #0x6310]
//  0x437110: stur w0, [x1, #0x27]
//  0x437114: fmov d0, #1.00000000
//  0x437118: stur d0, [x1, #7]
//  0x43711c: ldr d1, [PP, #0x6330]
//  0x437120: stur d1, [x1, #0xf]
//  0x437124: add x17, PP, #0x11, lsl #12
//  0x437128: ldr d1, [x17, #0x878]
//  0x43712c: stur d1, [x1, #0x17]
//  0x437130: add x17, PP, #0x10, lsl #12
//  0x437134: ldr d1, [x17, #0xac0]
//  0x437138: stur d1, [x1, #0x1f]
//  0x43713c: add BARRIER, PP, #0xf, lsl #12
//  0x437140: ldr BARRIER, [BARRIER, #0xbb8]
//  0x437144: str BARRIER, [SP]
//  0x437148: mov x2, x1
//  0x43714c: mov x1, NULL
//  0x437150: add x4, PP, #0xf, lsl #12
//  0x437154: ldr x4, [x4, #0x818]
//  0x437158: bl #0x391e08
//  0x43715c: stur x0, [FP, #-0x58]
//  0x437160: bl #0x352b04
//  0x437164: fmov d0, #30.00000000
//  0x437168: stur x0, [FP, #-0x60]
//  0x43716c: stur d0, [x0, #7]
//  0x437170: stur d0, [x0, #0xf]
//  0x437174: bl #0x392f28
//  0x437178: mov x1, x0
//  0x43717c: ldur x0, [FP, #-0x60]
//  0x437180: stur x1, [FP, #-0x68]
//  0x437184: stur w0, [x1, #7]
//  0x437188: stur w0, [x1, #0xb]
//  0x43718c: stur w0, [x1, #0xf]
//  0x437190: stur w0, [x1, #0x13]
//  0x437194: bl #0x391dd8
//  0x437198: mov x1, x0
//  0x43719c: ldur x0, [FP, #-0x58]
//  0x4371a0: stur x1, [FP, #-0x60]
//  0x4371a4: stur w0, [x1, #0xf]
//  0x4371a8: ldur x0, [FP, #-0x68]
//  0x4371ac: stur w0, [x1, #0x13]
//  0x4371b0: add x0, PP, #0xe, lsl #12
//  0x4371b4: ldr x0, [x0, #0xb78]
//  0x4371b8: stur w0, [x1, #0x23]
//  0x4371bc: ldur x2, [FP, #-0x18]
//  0x4371c0: cmp w2, w22
//  0x4371c4: b.eq #0x4371e4
//  0x4371c8: ldur w3, [x2, #7]
//  0x4371cc: add x3, x3, HEAP, lsl #32
//  0x4371d0: ldr BARRIER, [PP, #0x40]
//  0x4371d4: cmp w3, w16
//  0x4371d8: b.eq #0x438450
//  0x4371dc: mov x4, x3
//  0x4371e0: b #0x4371e8
//  0x4371e4: ldr x4, [PP, #0x148]
//  0x4371e8: ldur x3, [FP, #-0x48]
//  0x4371ec: stur x4, [FP, #-0x58]
//  0x4371f0: bl #0x3a67fc
//  0x4371f4: mov x1, x0
//  0x4371f8: ldur x0, [FP, #-0x58]
//  0x4371fc: stur x1, [FP, #-0x68]
//  0x437200: stur w0, [x1, #0xb]
//  0x437204: add x17, PP, #0x11, lsl #12
//  0x437208: ldr d0, [x17, #0x880]
//  0x43720c: stur d0, [x1, #0x13]
//  0x437210: add x0, NULL, #0x30
//  0x437214: stur w0, [x1, #0x1b]
//  0x437218: bl #0x391a04
//  0x43721c: stur x0, [FP, #-0x58]
//  0x437220: add BARRIER, PP, #0x10, lsl #12
//  0x437224: ldr BARRIER, [BARRIER, #0x350]
//  0x437228: add LR, PP, #0x10, lsl #12
//  0x43722c: ldr LR, [LR, #0x350]
//  0x437230: stp LR, BARRIER, [SP, #0x18]
//  0x437234: ldur BARRIER, [FP, #-0x50]
//  0x437238: ldur LR, [FP, #-0x60]
//  0x43723c: stp LR, BARRIER, [SP, #8]
//  0x437240: ldur BARRIER, [FP, #-0x68]
//  0x437244: str BARRIER, [SP]
//  0x437248: mov x1, x0
//  0x43724c: add x4, PP, #0x11, lsl #12
//  0x437250: ldr x4, [x4, #0x888]
//  0x437254: bl #0x391490
//  0x437258: mov x1, NULL
//  0x43725c: mov x2, #4
//  0x437260: bl #0x61f920
//  0x437264: mov x2, x0
//  0x437268: ldur x0, [FP, #-0x48]
//  0x43726c: stur x2, [FP, #-0x50]
//  0x437270: stur w0, [x2, #0xf]
//  0x437274: ldur x0, [FP, #-0x58]
//  0x437278: stur w0, [x2, #0x13]
//  0x43727c: ldr x1, [PP, #0x5c58]
//  0x437280: bl #0x61e854
//  0x437284: mov x1, x0
//  0x437288: ldur x0, [FP, #-0x50]
//  0x43728c: stur x1, [FP, #-0x48]
//  0x437290: stur w0, [x1, #0xf]
//  0x437294: mov x2, #4
//  0x437298: stur w2, [x1, #0xb]
//  0x43729c: bl #0x39e6f4
//  0x4372a0: mov x1, x0
//  0x4372a4: add x0, PP, #0xe, lsl #12
//  0x4372a8: ldr x0, [x0, #0xaa0]
//  0x4372ac: stur x1, [FP, #-0x50]
//  0x4372b0: stur w0, [x1, #0xf]
//  0x4372b4: add x2, PP, #0xe, lsl #12
//  0x4372b8: ldr x2, [x2, #0xf08]
//  0x4372bc: stur w2, [x1, #0x17]
//  0x4372c0: add x3, PP, #0xe, lsl #12
//  0x4372c4: ldr x3, [x3, #0xf10]
//  0x4372c8: stur w3, [x1, #0x1b]
//  0x4372cc: ldur x4, [FP, #-0x48]
//  0x4372d0: stur w4, [x1, #0xb]
//  0x4372d4: bl #0x3949ec
//  0x4372d8: mov x2, x0
//  0x4372dc: add x0, PP, #0xf, lsl #12
//  0x4372e0: ldr x0, [x0, #0xbb8]
//  0x4372e4: stur x2, [FP, #-0x48]
//  0x4372e8: stur w0, [x2, #0x13]
//  0x4372ec: ldur x3, [FP, #-0x18]
//  0x4372f0: cmp w3, w22
//  0x4372f4: b.eq #0x437318
//  0x4372f8: ldur w1, [x3, #0xb]
//  0x4372fc: add x1, x1, HEAP, lsl #32
//  0x437300: ldr BARRIER, [PP, #0x40]
//  0x437304: cmp w1, w16
//  0x437308: b.eq #0x43845c
//  0x43730c: mov x2, x1
//  0x437310: mov x0, x3
//  0x437314: b #0x437330
//  0x437318: add x1, PP, #0xc, lsl #12
//  0x43731c: ldr x1, [x1, #0x888]
//  0x437320: ldr x4, [PP, #0x4c0]
//  0x437324: bl #0x3a1dcc
//  0x437328: mov x2, x0
//  0x43732c: ldur x0, [FP, #-0x18]
//  0x437330: ldur x1, [FP, #-8]
//  0x437334: bl #0x438880
//  0x437338: stur x0, [FP, #-0x58]
//  0x43733c: bl #0x3949ec
//  0x437340: mov x4, x0
//  0x437344: add x0, PP, #0x10, lsl #12
//  0x437348: ldr x0, [x0, #0x940]
//  0x43734c: stur x4, [FP, #-0x60]
//  0x437350: stur w0, [x4, #0x13]
//  0x437354: ldur x1, [FP, #-0x18]
//  0x437358: cmp w1, w22
//  0x43735c: b.eq #0x43738c
//  0x437360: ldur w3, [x1, #0xf]
//  0x437364: add x3, x3, HEAP, lsl #32
//  0x437368: ldr BARRIER, [PP, #0x40]
//  0x43736c: cmp w3, w16
//  0x437370: b.eq #0x438468
//  0x437374: ldur x1, [FP, #-8]
//  0x437378: add x2, PP, #0xf, lsl #12
//  0x43737c: ldr x2, [x2, #0x288]
//  0x437380: bl #0x4386e8
//  0x437384: mov x9, x0
//  0x437388: b #0x4373a4
//  0x43738c: bl #0x391a04
//  0x437390: mov x1, x0
//  0x437394: stur x0, [FP, #-0x18]
//  0x437398: ldr x4, [PP, #0x4c0]
//  0x43739c: bl #0x391490
//  0x4373a0: ldur x9, [FP, #-0x18]
//  0x4373a4: ldur d2, [FP, #-0x90]
//  0x4373a8: ldur d1, [FP, #-0x98]
//  0x4373ac: ldur x7, [FP, #-0x10]
//  0x4373b0: ldur x6, [FP, #-0x20]
//  0x4373b4: ldur d0, [FP, #-0xa0]
//  0x4373b8: ldur x5, [FP, #-0x50]
//  0x4373bc: ldur x4, [FP, #-0x48]
//  0x4373c0: ldur x3, [FP, #-0x58]
//  0x4373c4: ldur x0, [FP, #-0x60]
//  0x4373c8: mov x8, #0xa
//  0x4373cc: mov x2, x8
//  0x4373d0: stur x9, [FP, #-0x18]
//  0x4373d4: mov x1, NULL
//  0x4373d8: bl #0x61f920
//  0x4373dc: mov x2, x0
//  0x4373e0: ldur x0, [FP, #-0x50]
//  0x4373e4: stur x2, [FP, #-0x68]
//  0x4373e8: stur w0, [x2, #0xf]
//  0x4373ec: ldur x0, [FP, #-0x48]
//  0x4373f0: stur w0, [x2, #0x13]
//  0x4373f4: ldur x0, [FP, #-0x58]
//  0x4373f8: stur w0, [x2, #0x17]
//  0x4373fc: ldur x0, [FP, #-0x60]
//  0x437400: stur w0, [x2, #0x1b]
//  0x437404: ldur x0, [FP, #-0x18]
//  0x437408: stur w0, [x2, #0x1f]
//  0x43740c: ldr x1, [PP, #0x5c58]
//  0x437410: bl #0x61e854
//  0x437414: mov x1, x0
//  0x437418: ldur x0, [FP, #-0x68]
//  0x43741c: stur x1, [FP, #-0x18]
//  0x437420: stur w0, [x1, #0xf]
//  0x437424: mov x2, #0xa
//  0x437428: stur w2, [x1, #0xb]
//  0x43742c: bl #0x39310c
//  0x437430: mov x1, x0
//  0x437434: add x0, PP, #0xa, lsl #12
//  0x437438: ldr x0, [x0, #0x858]
//  0x43743c: stur x1, [FP, #-0x48]
//  0x437440: stur w0, [x1, #0xf]
//  0x437444: add x2, PP, #0xe, lsl #12
//  0x437448: ldr x2, [x2, #0xae0]
//  0x43744c: stur w2, [x1, #0x13]
//  0x437450: add x3, PP, #0xe, lsl #12
//  0x437454: ldr x3, [x3, #0xae8]
//  0x437458: stur w3, [x1, #0x17]
//  0x43745c: add x4, PP, #0xe, lsl #12
//  0x437460: ldr x4, [x4, #0xb60]
//  0x437464: stur w4, [x1, #0x1b]
//  0x437468: add x5, PP, #0xe, lsl #12
//  0x43746c: ldr x5, [x5, #0xaf8]
//  0x437470: stur w5, [x1, #0x23]
//  0x437474: add x6, PP, #0xa, lsl #12
//  0x437478: ldr x6, [x6, #0xa8]
//  0x43747c: stur w6, [x1, #0x2b]
//  0x437480: stur xzr, [x1, #0x2f]
//  0x437484: ldur x7, [FP, #-0x18]
//  0x437488: stur w7, [x1, #0xb]
//  0x43748c: ldur d0, [FP, #-0x98]
//  0x437490: ldp x7, x8, [THR, #0x50]
//  0x437494: add x7, x7, #0x10
//  0x437498: cmp x8, x7
//  0x43749c: b.ls #0x438474
//  0x4374a0: str x7, [THR, #0x50]
//  0x4374a4: sub x7, x7, #0xf
//  0x4374a8: mov x8, #0xe15c
//  0x4374ac: movk x8, #3, lsl #16
//  0x4374b0: stur x8, [x7, #-1]
//  0x4374b4: stur d0, [x7, #7]
//  0x4374b8: stur x7, [FP, #-0x18]
//  0x4374bc: bl #0x391a04
//  0x4374c0: stur x0, [FP, #-0x50]
//  0x4374c4: ldur BARRIER, [FP, #-0x38]
//  0x4374c8: ldur LR, [FP, #-0x40]
//  0x4374cc: stp LR, BARRIER, [SP, #0x10]
//  0x4374d0: ldur BARRIER, [FP, #-0x18]
//  0x4374d4: ldur LR, [FP, #-0x48]
//  0x4374d8: stp LR, BARRIER, [SP]
//  0x4374dc: mov x1, x0
//  0x4374e0: add x4, PP, #0x11, lsl #12
//  0x4374e4: ldr x4, [x4, #0x890]
//  0x4374e8: bl #0x391490
//  0x4374ec: bl #0x3949ec
//  0x4374f0: mov x1, x0
//  0x4374f4: add x0, PP, #0x11, lsl #12
//  0x4374f8: ldr x0, [x0, #0x898]
//  0x4374fc: stur x1, [FP, #-0x38]
//  0x437500: stur w0, [x1, #0xf]
//  0x437504: bl #0x31d844
//  0x437508: mov x1, x0
//  0x43750c: ldr x0, [PP, #0x6310]
//  0x437510: stur x1, [FP, #-0x40]
//  0x437514: stur w0, [x1, #0x27]
//  0x437518: add x17, PP, #0x11, lsl #12
//  0x43751c: ldr d0, [x17, #0x840]
//  0x437520: stur d0, [x1, #7]
//  0x437524: fmov d1, #1.00000000
//  0x437528: stur d1, [x1, #0xf]
//  0x43752c: add x17, PP, #0xc, lsl #12
//  0x437530: ldr d2, [x17, #0x2e0]
//  0x437534: stur d2, [x1, #0x17]
//  0x437538: add x17, PP, #0x11, lsl #12
//  0x43753c: ldr d3, [x17, #0x848]
//  0x437540: stur d3, [x1, #0x1f]
//  0x437544: bl #0x31d844
//  0x437548: mov x3, x0
//  0x43754c: ldr x0, [PP, #0x6310]
//  0x437550: stur x3, [FP, #-0x48]
//  0x437554: stur w0, [x3, #0x27]
//  0x437558: stur xzr, [x3, #7]
//  0x43755c: fmov d0, #1.00000000
//  0x437560: stur d0, [x3, #0xf]
//  0x437564: add x17, PP, #0xc, lsl #12
//  0x437568: ldr d1, [x17, #0x2e0]
//  0x43756c: stur d1, [x3, #0x17]
//  0x437570: add x17, PP, #0x11, lsl #12
//  0x437574: ldr d1, [x17, #0x848]
//  0x437578: stur d1, [x3, #0x1f]
//  0x43757c: mov x1, NULL
//  0x437580: mov x2, #4
//  0x437584: bl #0x61f920
//  0x437588: mov x2, x0
//  0x43758c: ldur x0, [FP, #-0x40]
//  0x437590: stur x2, [FP, #-0x58]
//  0x437594: stur w0, [x2, #0xf]
//  0x437598: ldur x0, [FP, #-0x48]
//  0x43759c: stur w0, [x2, #0x13]
//  0x4375a0: add x1, PP, #0x10, lsl #12
//  0x4375a4: ldr x1, [x1, #0xc58]
//  0x4375a8: bl #0x61e854
//  0x4375ac: mov x1, x0
//  0x4375b0: ldur x0, [FP, #-0x58]
//  0x4375b4: stur x1, [FP, #-0x40]
//  0x4375b8: stur w0, [x1, #0xf]
//  0x4375bc: mov x2, #4
//  0x4375c0: stur w2, [x1, #0xb]
//  0x4375c4: bl #0x3a108c
//  0x4375c8: mov x1, x0
//  0x4375cc: add x0, PP, #0x10, lsl #12
//  0x4375d0: ldr x0, [x0, #0xc68]
//  0x4375d4: stur x1, [FP, #-0x48]
//  0x4375d8: stur w0, [x1, #0x13]
//  0x4375dc: add x2, PP, #0x10, lsl #12
//  0x4375e0: ldr x2, [x2, #0xc70]
//  0x4375e4: stur w2, [x1, #0x17]
//  0x4375e8: add x3, PP, #0x10, lsl #12
//  0x4375ec: ldr x3, [x3, #0xc78]
//  0x4375f0: stur w3, [x1, #0x1b]
//  0x4375f4: ldur x4, [FP, #-0x40]
//  0x4375f8: stur w4, [x1, #7]
//  0x4375fc: ldur d1, [FP, #-0x90]
//  0x437600: fmov d0, #0.50000000
//  0x437604: fmul d2, d1, d0
//  0x437608: stur d2, [FP, #-0x98]
//  0x43760c: bl #0x352b04
//  0x437610: ldur d0, [FP, #-0x98]
//  0x437614: stur x0, [FP, #-0x40]
//  0x437618: stur d0, [x0, #7]
//  0x43761c: stur d0, [x0, #0xf]
//  0x437620: bl #0x352b04
//  0x437624: ldur d0, [FP, #-0x98]
//  0x437628: stur x0, [FP, #-0x58]
//  0x43762c: stur d0, [x0, #7]
//  0x437630: stur d0, [x0, #0xf]
//  0x437634: bl #0x392f28
//  0x437638: mov x1, x0
//  0x43763c: ldur x0, [FP, #-0x40]
//  0x437640: stur x1, [FP, #-0x60]
//  0x437644: stur w0, [x1, #7]
//  0x437648: ldur x0, [FP, #-0x58]
//  0x43764c: stur w0, [x1, #0xb]
//  0x437650: add x0, PP, #0xa, lsl #12
//  0x437654: ldr x0, [x0, #0x510]
//  0x437658: stur w0, [x1, #0xf]
//  0x43765c: stur w0, [x1, #0x13]
//  0x437660: bl #0x391dd8
//  0x437664: mov x1, x0
//  0x437668: ldur x0, [FP, #-0x60]
//  0x43766c: stur x1, [FP, #-0x40]
//  0x437670: stur w0, [x1, #0x13]
//  0x437674: ldur x0, [FP, #-0x48]
//  0x437678: stur w0, [x1, #0x1b]
//  0x43767c: add x0, PP, #0xe, lsl #12
//  0x437680: ldr x0, [x0, #0xb78]
//  0x437684: stur w0, [x1, #0x23]
//  0x437688: bl #0x3a142c
//  0x43768c: mov x1, x0
//  0x437690: add x0, PP, #0x11, lsl #12
//  0x437694: ldr x0, [x0, #0x8a0]
//  0x437698: stur x1, [FP, #-0x48]
//  0x43769c: stur w0, [x1, #0xb]
//  0x4376a0: add x0, PP, #0xf, lsl #12
//  0x4376a4: ldr x0, [x0, #0x170]
//  0x4376a8: stur w0, [x1, #0xf]
//  0x4376ac: add x2, PP, #0xe, lsl #12
//  0x4376b0: ldr x2, [x2, #0xb68]
//  0x4376b4: stur w2, [x1, #0x13]
//  0x4376b8: add x2, PP, #0xf, lsl #12
//  0x4376bc: ldr x2, [x2, #0x310]
//  0x4376c0: stur w2, [x1, #0x17]
//  0x4376c4: bl #0x391a04
//  0x4376c8: stur x0, [FP, #-0x58]
//  0x4376cc: add BARRIER, PP, #0xe, lsl #12
//  0x4376d0: ldr BARRIER, [BARRIER, #0xb68]
//  0x4376d4: add LR, PP, #0xf, lsl #12
//  0x4376d8: ldr LR, [LR, #0x310]
//  0x4376dc: stp LR, BARRIER, [SP, #8]
//  0x4376e0: ldur BARRIER, [FP, #-0x48]
//  0x4376e4: str BARRIER, [SP]
//  0x4376e8: mov x1, x0
//  0x4376ec: add x4, PP, #0x11, lsl #12
//  0x4376f0: ldr x4, [x4, #0x868]
//  0x4376f4: bl #0x391490
//  0x4376f8: add x1, PP, #0xf, lsl #12
//  0x4376fc: ldr x1, [x1, #0x5d8]
//  0x437700: bl #0x399e40
//  0x437704: mov x1, x0
//  0x437708: add x0, PP, #0x11, lsl #12
//  0x43770c: ldr x0, [x0, #0x898]
//  0x437710: stur x1, [FP, #-0x48]
//  0x437714: stur w0, [x1, #0x17]
//  0x437718: ldur x2, [FP, #-0x58]
//  0x43771c: stur w2, [x1, #0xb]
//  0x437720: bl #0x2e3578
//  0x437724: stur x0, [FP, #-0x58]
//  0x437728: stur xzr, [x0, #7]
//  0x43772c: add x17, PP, #0x11, lsl #12
//  0x437730: ldr d0, [x17, #0x8a8]
//  0x437734: stur d0, [x0, #0xf]
//  0x437738: stur xzr, [x0, #0x17]
//  0x43773c: stur xzr, [x0, #0x1f]
//  0x437740: bl #0x31d844
//  0x437744: mov x1, x0
//  0x437748: ldr x0, [PP, #0x6310]
//  0x43774c: stur w0, [x1, #0x27]
//  0x437750: fmov d0, #1.00000000
//  0x437754: stur d0, [x1, #7]
//  0x437758: stur d0, [x1, #0xf]
//  0x43775c: add x17, PP, #0xc, lsl #12
//  0x437760: ldr d1, [x17, #0x2d8]
//  0x437764: stur d1, [x1, #0x17]
//  0x437768: add x17, PP, #0xe, lsl #12
//  0x43776c: ldr d1, [x17, #0xdd0]
//  0x437770: stur d1, [x1, #0x1f]
//  0x437774: add BARRIER, PP, #0xf, lsl #12
//  0x437778: ldr BARRIER, [BARRIER, #0xbb8]
//  0x43777c: str BARRIER, [SP]
//  0x437780: mov x2, x1
//  0x437784: mov x1, NULL
//  0x437788: add x4, PP, #0xf, lsl #12
//  0x43778c: ldr x4, [x4, #0x818]
//  0x437790: bl #0x391e08
//  0x437794: stur x0, [FP, #-0x60]
//  0x437798: bl #0x352b04
//  0x43779c: ldr d0, [PP, #0x6098]
//  0x4377a0: stur x0, [FP, #-0x68]
//  0x4377a4: stur d0, [x0, #7]
//  0x4377a8: stur d0, [x0, #0xf]
//  0x4377ac: bl #0x392f28
//  0x4377b0: mov x1, x0
//  0x4377b4: ldur x0, [FP, #-0x68]
//  0x4377b8: stur x1, [FP, #-0x70]
//  0x4377bc: stur w0, [x1, #7]
//  0x4377c0: stur w0, [x1, #0xb]
//  0x4377c4: stur w0, [x1, #0xf]
//  0x4377c8: stur w0, [x1, #0x13]
//  0x4377cc: bl #0x391dd8
//  0x4377d0: mov x1, x0
//  0x4377d4: ldur x0, [FP, #-0x60]
//  0x4377d8: stur x1, [FP, #-0x68]
//  0x4377dc: stur w0, [x1, #0xf]
//  0x4377e0: ldur x0, [FP, #-0x70]
//  0x4377e4: stur w0, [x1, #0x13]
//  0x4377e8: add x0, PP, #0xe, lsl #12
//  0x4377ec: ldr x0, [x0, #0xb78]
//  0x4377f0: stur w0, [x1, #0x23]
//  0x4377f4: ldur x2, [FP, #-0x10]
//  0x4377f8: ldur w3, [x2, #7]
//  0x4377fc: add x3, x3, HEAP, lsl #32
//  0x437800: ldr BARRIER, [PP, #0x40]
//  0x437804: cmp w3, w16
//  0x437808: b.eq #0x4384a8
//  0x43780c: stur x3, [FP, #-0x60]
//  0x437810: bl #0x3a67fc
//  0x437814: mov x1, x0
//  0x437818: ldur x0, [FP, #-0x60]
//  0x43781c: stur x1, [FP, #-0x70]
//  0x437820: stur w0, [x1, #0xb]
//  0x437824: add x17, PP, #0x11, lsl #12
//  0x437828: ldr d0, [x17, #0x8b0]
//  0x43782c: stur d0, [x1, #0x13]
//  0x437830: add x0, NULL, #0x30
//  0x437834: stur w0, [x1, #0x1b]
//  0x437838: bl #0x391a04
//  0x43783c: stur x0, [FP, #-0x60]
//  0x437840: add BARRIER, PP, #0x11, lsl #12
//  0x437844: ldr BARRIER, [BARRIER, #0x8b8]
//  0x437848: add LR, PP, #0x11, lsl #12
//  0x43784c: ldr LR, [LR, #0x8b8]
//  0x437850: stp LR, BARRIER, [SP, #0x18]
//  0x437854: ldur BARRIER, [FP, #-0x58]
//  0x437858: ldur LR, [FP, #-0x68]
//  0x43785c: stp LR, BARRIER, [SP, #8]
//  0x437860: ldur BARRIER, [FP, #-0x70]
//  0x437864: str BARRIER, [SP]
//  0x437868: mov x1, x0
//  0x43786c: add x4, PP, #0x11, lsl #12
//  0x437870: ldr x4, [x4, #0x888]
//  0x437874: bl #0x391490
//  0x437878: mov x1, NULL
//  0x43787c: mov x2, #4
//  0x437880: bl #0x61f920
//  0x437884: mov x2, x0
//  0x437888: ldur x0, [FP, #-0x48]
//  0x43788c: stur x2, [FP, #-0x58]
//  0x437890: stur w0, [x2, #0xf]
//  0x437894: ldur x0, [FP, #-0x60]
//  0x437898: stur w0, [x2, #0x13]
//  0x43789c: ldr x1, [PP, #0x5c58]
//  0x4378a0: bl #0x61e854
//  0x4378a4: mov x1, x0
//  0x4378a8: ldur x0, [FP, #-0x58]
//  0x4378ac: stur x1, [FP, #-0x48]
//  0x4378b0: stur w0, [x1, #0xf]
//  0x4378b4: mov x2, #4
//  0x4378b8: stur w2, [x1, #0xb]
//  0x4378bc: bl #0x39e6f4
//  0x4378c0: mov x1, x0
//  0x4378c4: add x0, PP, #0xe, lsl #12
//  0x4378c8: ldr x0, [x0, #0xaa0]
//  0x4378cc: stur x1, [FP, #-0x58]
//  0x4378d0: stur w0, [x1, #0xf]
//  0x4378d4: add x2, PP, #0xe, lsl #12
//  0x4378d8: ldr x2, [x2, #0xf08]
//  0x4378dc: stur w2, [x1, #0x17]
//  0x4378e0: add x3, PP, #0xe, lsl #12
//  0x4378e4: ldr x3, [x3, #0xf10]
//  0x4378e8: stur w3, [x1, #0x1b]
//  0x4378ec: ldur x4, [FP, #-0x48]
//  0x4378f0: stur w4, [x1, #0xb]
//  0x4378f4: bl #0x3949ec
//  0x4378f8: mov x3, x0
//  0x4378fc: add x0, PP, #0xf, lsl #12
//  0x437900: ldr x0, [x0, #0xbb8]
//  0x437904: stur x3, [FP, #-0x48]
//  0x437908: stur w0, [x3, #0x13]
//  0x43790c: ldur x4, [FP, #-0x10]
//  0x437910: ldur w2, [x4, #0xb]
//  0x437914: add x2, x2, HEAP, lsl #32
//  0x437918: ldr BARRIER, [PP, #0x40]
//  0x43791c: cmp w2, w16
//  0x437920: b.eq #0x4384b4
//  0x437924: ldur x1, [FP, #-8]
//  0x437928: bl #0x438880
//  0x43792c: stur x0, [FP, #-0x60]
//  0x437930: bl #0x3949ec
//  0x437934: mov x4, x0
//  0x437938: add x0, PP, #0x10, lsl #12
//  0x43793c: ldr x0, [x0, #0x940]
//  0x437940: stur x4, [FP, #-0x68]
//  0x437944: stur w0, [x4, #0x13]
//  0x437948: ldur x1, [FP, #-0x10]
//  0x43794c: ldur w3, [x1, #0xf]
//  0x437950: add x3, x3, HEAP, lsl #32
//  0x437954: ldr BARRIER, [PP, #0x40]
//  0x437958: cmp w3, w16
//  0x43795c: b.eq #0x4384c0
//  0x437960: ldur x1, [FP, #-8]
//  0x437964: add x2, PP, #0xf, lsl #12
//  0x437968: ldr x2, [x2, #0x288]
//  0x43796c: bl #0x4386e8
//  0x437970: mov x1, NULL
//  0x437974: mov x2, #0xa
//  0x437978: stur x0, [FP, #-0x10]
//  0x43797c: bl #0x61f920
//  0x437980: mov x2, x0
//  0x437984: ldur x0, [FP, #-0x58]
//  0x437988: stur x2, [FP, #-0x70]
//  0x43798c: stur w0, [x2, #0xf]
//  0x437990: ldur x0, [FP, #-0x48]
//  0x437994: stur w0, [x2, #0x13]
//  0x437998: ldur x0, [FP, #-0x60]
//  0x43799c: stur w0, [x2, #0x17]
//  0x4379a0: ldur x0, [FP, #-0x68]
//  0x4379a4: stur w0, [x2, #0x1b]
//  0x4379a8: ldur x0, [FP, #-0x10]
//  0x4379ac: stur w0, [x2, #0x1f]
//  0x4379b0: ldr x1, [PP, #0x5c58]
//  0x4379b4: bl #0x61e854
//  0x4379b8: mov x1, x0
//  0x4379bc: ldur x0, [FP, #-0x70]
//  0x4379c0: stur x1, [FP, #-0x10]
//  0x4379c4: stur w0, [x1, #0xf]
//  0x4379c8: mov x2, #0xa
//  0x4379cc: stur w2, [x1, #0xb]
//  0x4379d0: bl #0x39310c
//  0x4379d4: mov x1, x0
//  0x4379d8: add x0, PP, #0xa, lsl #12
//  0x4379dc: ldr x0, [x0, #0x858]
//  0x4379e0: stur x1, [FP, #-0x48]
//  0x4379e4: stur w0, [x1, #0xf]
//  0x4379e8: add x2, PP, #0xe, lsl #12
//  0x4379ec: ldr x2, [x2, #0xae0]
//  0x4379f0: stur w2, [x1, #0x13]
//  0x4379f4: add x3, PP, #0xe, lsl #12
//  0x4379f8: ldr x3, [x3, #0xae8]
//  0x4379fc: stur w3, [x1, #0x17]
//  0x437a00: add x4, PP, #0xe, lsl #12
//  0x437a04: ldr x4, [x4, #0xb60]
//  0x437a08: stur w4, [x1, #0x1b]
//  0x437a0c: add x5, PP, #0xe, lsl #12
//  0x437a10: ldr x5, [x5, #0xaf8]
//  0x437a14: stur w5, [x1, #0x23]
//  0x437a18: add x6, PP, #0xa, lsl #12
//  0x437a1c: ldr x6, [x6, #0xa8]
//  0x437a20: stur w6, [x1, #0x2b]
//  0x437a24: stur xzr, [x1, #0x2f]
//  0x437a28: ldur x7, [FP, #-0x10]
//  0x437a2c: stur w7, [x1, #0xb]
//  0x437a30: ldur d0, [FP, #-0x90]
//  0x437a34: ldp x7, x8, [THR, #0x50]
//  0x437a38: add x7, x7, #0x10
//  0x437a3c: cmp x8, x7
//  0x437a40: b.ls #0x4384cc
//  0x437a44: str x7, [THR, #0x50]
//  0x437a48: sub x7, x7, #0xf
//  0x437a4c: mov x8, #0xe15c
//  0x437a50: movk x8, #3, lsl #16
//  0x437a54: stur x8, [x7, #-1]
//  0x437a58: stur d0, [x7, #7]
//  0x437a5c: stur x7, [FP, #-0x10]
//  0x437a60: bl #0x391a04
//  0x437a64: stur x0, [FP, #-0x58]
//  0x437a68: ldur BARRIER, [FP, #-0x40]
//  0x437a6c: ldur LR, [FP, #-0x10]
//  0x437a70: stp LR, BARRIER, [SP, #8]
//  0x437a74: ldur BARRIER, [FP, #-0x48]
//  0x437a78: str BARRIER, [SP]
//  0x437a7c: mov x1, x0
//  0x437a80: add x4, PP, #0x11, lsl #12
//  0x437a84: ldr x4, [x4, #0x8c0]
//  0x437a88: bl #0x391490
//  0x437a8c: bl #0x3949ec
//  0x437a90: mov x1, x0
//  0x437a94: add x0, PP, #0x11, lsl #12
//  0x437a98: ldr x0, [x0, #0x898]
//  0x437a9c: stur x1, [FP, #-0x10]
//  0x437aa0: stur w0, [x1, #0xf]
//  0x437aa4: bl #0x2e3578
//  0x437aa8: stur x0, [FP, #-0x40]
//  0x437aac: stur xzr, [x0, #7]
//  0x437ab0: fmov d0, #25.00000000
//  0x437ab4: stur d0, [x0, #0xf]
//  0x437ab8: stur xzr, [x0, #0x17]
//  0x437abc: stur xzr, [x0, #0x1f]
//  0x437ac0: bl #0x31d844
//  0x437ac4: mov x1, x0
//  0x437ac8: ldr x0, [PP, #0x6310]
//  0x437acc: stur x1, [FP, #-0x48]
//  0x437ad0: stur w0, [x1, #0x27]
//  0x437ad4: add x17, PP, #0x11, lsl #12
//  0x437ad8: ldr d0, [x17, #0x840]
//  0x437adc: stur d0, [x1, #7]
//  0x437ae0: add x17, PP, #0x11, lsl #12
//  0x437ae4: ldr d0, [x17, #0x8c8]
//  0x437ae8: stur d0, [x1, #0xf]
//  0x437aec: add x17, PP, #0x11, lsl #12
//  0x437af0: ldr d0, [x17, #0x8d0]
//  0x437af4: stur d0, [x1, #0x17]
//  0x437af8: add x17, PP, #0x10, lsl #12
//  0x437afc: ldr d0, [x17, #0xad0]
//  0x437b00: stur d0, [x1, #0x1f]
//  0x437b04: bl #0x31d844
//  0x437b08: mov x3, x0
//  0x437b0c: ldr x0, [PP, #0x6310]
//  0x437b10: stur x3, [FP, #-0x60]
//  0x437b14: stur w0, [x3, #0x27]
//  0x437b18: stur xzr, [x3, #7]
//  0x437b1c: add x17, PP, #0x11, lsl #12
//  0x437b20: ldr d0, [x17, #0x8d8]
//  0x437b24: stur d0, [x3, #0xf]
//  0x437b28: add x17, PP, #0xe, lsl #12
//  0x437b2c: ldr d0, [x17, #0xe00]
//  0x437b30: stur d0, [x3, #0x17]
//  0x437b34: add x17, PP, #0x11, lsl #12
//  0x437b38: ldr d0, [x17, #0x8e0]
//  0x437b3c: stur d0, [x3, #0x1f]
//  0x437b40: mov x1, NULL
//  0x437b44: mov x2, #4
//  0x437b48: bl #0x61f920
//  0x437b4c: mov x2, x0
//  0x437b50: ldur x0, [FP, #-0x48]
//  0x437b54: stur x2, [FP, #-0x68]
//  0x437b58: stur w0, [x2, #0xf]
//  0x437b5c: ldur x0, [FP, #-0x60]
//  0x437b60: stur w0, [x2, #0x13]
//  0x437b64: add x1, PP, #0x10, lsl #12
//  0x437b68: ldr x1, [x1, #0xc58]
//  0x437b6c: bl #0x61e854
//  0x437b70: mov x1, x0
//  0x437b74: ldur x0, [FP, #-0x68]
//  0x437b78: stur x1, [FP, #-0x48]
//  0x437b7c: stur w0, [x1, #0xf]
//  0x437b80: mov x2, #4
//  0x437b84: stur w2, [x1, #0xb]
//  0x437b88: bl #0x3a108c
//  0x437b8c: mov x1, x0
//  0x437b90: add x0, PP, #0x10, lsl #12
//  0x437b94: ldr x0, [x0, #0xc68]
//  0x437b98: stur x1, [FP, #-0x60]
//  0x437b9c: stur w0, [x1, #0x13]
//  0x437ba0: add x0, PP, #0x10, lsl #12
//  0x437ba4: ldr x0, [x0, #0xc70]
//  0x437ba8: stur w0, [x1, #0x17]
//  0x437bac: add x0, PP, #0x10, lsl #12
//  0x437bb0: ldr x0, [x0, #0xc78]
//  0x437bb4: stur w0, [x1, #0x1b]
//  0x437bb8: ldur x0, [FP, #-0x48]
//  0x437bbc: stur w0, [x1, #7]
//  0x437bc0: bl #0x352b04
//  0x437bc4: ldur d0, [FP, #-0xa0]
//  0x437bc8: stur x0, [FP, #-0x48]
//  0x437bcc: stur d0, [x0, #7]
//  0x437bd0: stur d0, [x0, #0xf]
//  0x437bd4: bl #0x352b04
//  0x437bd8: ldur d0, [FP, #-0xa0]
//  0x437bdc: stur x0, [FP, #-0x68]
//  0x437be0: stur d0, [x0, #7]
//  0x437be4: stur d0, [x0, #0xf]
//  0x437be8: bl #0x392f28
//  0x437bec: mov x1, x0
//  0x437bf0: ldur x0, [FP, #-0x48]
//  0x437bf4: stur x1, [FP, #-0x70]
//  0x437bf8: stur w0, [x1, #7]
//  0x437bfc: ldur x0, [FP, #-0x68]
//  0x437c00: stur w0, [x1, #0xb]
//  0x437c04: add x0, PP, #0xa, lsl #12
//  0x437c08: ldr x0, [x0, #0x510]
//  0x437c0c: stur w0, [x1, #0xf]
//  0x437c10: stur w0, [x1, #0x13]
//  0x437c14: bl #0x391dd8
//  0x437c18: mov x1, x0
//  0x437c1c: ldur x0, [FP, #-0x70]
//  0x437c20: stur x1, [FP, #-0x48]
//  0x437c24: stur w0, [x1, #0x13]
//  0x437c28: ldur x0, [FP, #-0x60]
//  0x437c2c: stur w0, [x1, #0x1b]
//  0x437c30: add x0, PP, #0xe, lsl #12
//  0x437c34: ldr x0, [x0, #0xb78]
//  0x437c38: stur w0, [x1, #0x23]
//  0x437c3c: bl #0x3a142c
//  0x437c40: mov x1, x0
//  0x437c44: add x0, PP, #0x11, lsl #12
//  0x437c48: ldr x0, [x0, #0x8e8]
//  0x437c4c: stur x1, [FP, #-0x60]
//  0x437c50: stur w0, [x1, #0xb]
//  0x437c54: add x0, PP, #0xf, lsl #12
//  0x437c58: ldr x0, [x0, #0x170]
//  0x437c5c: stur w0, [x1, #0xf]
//  0x437c60: add x0, PP, #0x11, lsl #12
//  0x437c64: ldr x0, [x0, #0x860]
//  0x437c68: stur w0, [x1, #0x13]
//  0x437c6c: add x0, PP, #0x11, lsl #12
//  0x437c70: ldr x0, [x0, #0x410]
//  0x437c74: stur w0, [x1, #0x17]
//  0x437c78: bl #0x391a04
//  0x437c7c: stur x0, [FP, #-0x68]
//  0x437c80: add BARRIER, PP, #0x11, lsl #12
//  0x437c84: ldr BARRIER, [BARRIER, #0x860]
//  0x437c88: add LR, PP, #0x11, lsl #12
//  0x437c8c: ldr LR, [LR, #0x410]
//  0x437c90: stp LR, BARRIER, [SP, #8]
//  0x437c94: ldur BARRIER, [FP, #-0x60]
//  0x437c98: str BARRIER, [SP]
//  0x437c9c: mov x1, x0
//  0x437ca0: add x4, PP, #0x11, lsl #12
//  0x437ca4: ldr x4, [x4, #0x868]
//  0x437ca8: bl #0x391490
//  0x437cac: add x1, PP, #0xf, lsl #12
//  0x437cb0: ldr x1, [x1, #0x5d8]
//  0x437cb4: bl #0x399e40
//  0x437cb8: mov x1, x0
//  0x437cbc: add x0, PP, #0x11, lsl #12
//  0x437cc0: ldr x0, [x0, #0x870]
//  0x437cc4: stur x1, [FP, #-0x60]
//  0x437cc8: stur w0, [x1, #0x17]
//  0x437ccc: ldur x0, [FP, #-0x68]
//  0x437cd0: stur w0, [x1, #0xb]
//  0x437cd4: bl #0x2e3578
//  0x437cd8: stur x0, [FP, #-0x68]
//  0x437cdc: stur xzr, [x0, #7]
//  0x437ce0: fmov d0, #20.00000000
//  0x437ce4: stur d0, [x0, #0xf]
//  0x437ce8: stur xzr, [x0, #0x17]
//  0x437cec: stur xzr, [x0, #0x1f]
//  0x437cf0: bl #0x31d844
//  0x437cf4: mov x1, x0
//  0x437cf8: ldr x0, [PP, #0x6310]
//  0x437cfc: stur w0, [x1, #0x27]
//  0x437d00: fmov d0, #1.00000000
//  0x437d04: stur d0, [x1, #7]
//  0x437d08: add x17, PP, #0x10, lsl #12
//  0x437d0c: ldr d0, [x17, #0x9a0]
//  0x437d10: stur d0, [x1, #0xf]
//  0x437d14: add x17, PP, #0x10, lsl #12
//  0x437d18: ldr d0, [x17, #0xc60]
//  0x437d1c: stur d0, [x1, #0x17]
//  0x437d20: add x17, PP, #0x11, lsl #12
//  0x437d24: ldr d0, [x17, #0x8f0]
//  0x437d28: stur d0, [x1, #0x1f]
//  0x437d2c: add BARRIER, PP, #0xf, lsl #12
//  0x437d30: ldr BARRIER, [BARRIER, #0xbb8]
//  0x437d34: str BARRIER, [SP]
//  0x437d38: mov x2, x1
//  0x437d3c: mov x1, NULL
//  0x437d40: add x4, PP, #0xf, lsl #12
//  0x437d44: ldr x4, [x4, #0x818]
//  0x437d48: bl #0x391e08
//  0x437d4c: stur x0, [FP, #-0x70]
//  0x437d50: bl #0x352b04
//  0x437d54: fmov d0, #30.00000000
//  0x437d58: stur x0, [FP, #-0x78]
//  0x437d5c: stur d0, [x0, #7]
//  0x437d60: stur d0, [x0, #0xf]
//  0x437d64: bl #0x392f28
//  0x437d68: mov x1, x0
//  0x437d6c: ldur x0, [FP, #-0x78]
//  0x437d70: stur x1, [FP, #-0x80]
//  0x437d74: stur w0, [x1, #7]
//  0x437d78: stur w0, [x1, #0xb]
//  0x437d7c: stur w0, [x1, #0xf]
//  0x437d80: stur w0, [x1, #0x13]
//  0x437d84: bl #0x391dd8
//  0x437d88: mov x1, x0
//  0x437d8c: ldur x0, [FP, #-0x70]
//  0x437d90: stur x1, [FP, #-0x78]
//  0x437d94: stur w0, [x1, #0xf]
//  0x437d98: ldur x0, [FP, #-0x80]
//  0x437d9c: stur w0, [x1, #0x13]
//  0x437da0: add x0, PP, #0xe, lsl #12
//  0x437da4: ldr x0, [x0, #0xb78]
//  0x437da8: stur w0, [x1, #0x23]
//  0x437dac: ldur x0, [FP, #-0x20]
//  0x437db0: cmp w0, w22
//  0x437db4: b.eq #0x437dd4
//  0x437db8: ldur w2, [x0, #7]
//  0x437dbc: add x2, x2, HEAP, lsl #32
//  0x437dc0: ldr BARRIER, [PP, #0x40]
//  0x437dc4: cmp w2, w16
//  0x437dc8: b.eq #0x438500
//  0x437dcc: mov x3, x2
//  0x437dd0: b #0x437dd8
//  0x437dd4: ldr x3, [PP, #0x148]
//  0x437dd8: ldur x2, [FP, #-0x60]
//  0x437ddc: stur x3, [FP, #-0x70]
//  0x437de0: bl #0x3a67fc
//  0x437de4: mov x1, x0
//  0x437de8: ldur x0, [FP, #-0x70]
//  0x437dec: stur x1, [FP, #-0x80]
//  0x437df0: stur w0, [x1, #0xb]
//  0x437df4: add x17, PP, #0x11, lsl #12
//  0x437df8: ldr d0, [x17, #0x880]
//  0x437dfc: stur d0, [x1, #0x13]
//  0x437e00: add x0, NULL, #0x30
//  0x437e04: stur w0, [x1, #0x1b]
//  0x437e08: bl #0x391a04
//  0x437e0c: stur x0, [FP, #-0x70]
//  0x437e10: add BARRIER, PP, #0x10, lsl #12
//  0x437e14: ldr BARRIER, [BARRIER, #0x350]
//  0x437e18: add LR, PP, #0x10, lsl #12
//  0x437e1c: ldr LR, [LR, #0x350]
//  0x437e20: stp LR, BARRIER, [SP, #0x18]
//  0x437e24: ldur BARRIER, [FP, #-0x68]
//  0x437e28: ldur LR, [FP, #-0x78]
//  0x437e2c: stp LR, BARRIER, [SP, #8]
//  0x437e30: ldur BARRIER, [FP, #-0x80]
//  0x437e34: str BARRIER, [SP]
//  0x437e38: mov x1, x0
//  0x437e3c: add x4, PP, #0x11, lsl #12
//  0x437e40: ldr x4, [x4, #0x888]
//  0x437e44: bl #0x391490
//  0x437e48: mov x1, NULL
//  0x437e4c: mov x2, #4
//  0x437e50: bl #0x61f920
//  0x437e54: mov x2, x0
//  0x437e58: ldur x0, [FP, #-0x60]
//  0x437e5c: stur x2, [FP, #-0x68]
//  0x437e60: stur w0, [x2, #0xf]
//  0x437e64: ldur x0, [FP, #-0x70]
//  0x437e68: stur w0, [x2, #0x13]
//  0x437e6c: ldr x1, [PP, #0x5c58]
//  0x437e70: bl #0x61e854
//  0x437e74: mov x1, x0
//  0x437e78: ldur x0, [FP, #-0x68]
//  0x437e7c: stur x1, [FP, #-0x60]
//  0x437e80: stur w0, [x1, #0xf]
//  0x437e84: mov x2, #4
//  0x437e88: stur w2, [x1, #0xb]
//  0x437e8c: bl #0x39e6f4
//  0x437e90: mov x1, x0
//  0x437e94: add x0, PP, #0xe, lsl #12
//  0x437e98: ldr x0, [x0, #0xaa0]
//  0x437e9c: stur x1, [FP, #-0x68]
//  0x437ea0: stur w0, [x1, #0xf]
//  0x437ea4: add x0, PP, #0xe, lsl #12
//  0x437ea8: ldr x0, [x0, #0xf08]
//  0x437eac: stur w0, [x1, #0x17]
//  0x437eb0: add x0, PP, #0xe, lsl #12
//  0x437eb4: ldr x0, [x0, #0xf10]
//  0x437eb8: stur w0, [x1, #0x1b]
//  0x437ebc: ldur x0, [FP, #-0x60]
//  0x437ec0: stur w0, [x1, #0xb]
//  0x437ec4: bl #0x3949ec
//  0x437ec8: mov x2, x0
//  0x437ecc: add x0, PP, #0xf, lsl #12
//  0x437ed0: ldr x0, [x0, #0xbb8]
//  0x437ed4: stur x2, [FP, #-0x60]
//  0x437ed8: stur w0, [x2, #0x13]
//  0x437edc: ldur x0, [FP, #-0x20]
//  0x437ee0: cmp w0, w22
//  0x437ee4: b.eq #0x437f04
//  0x437ee8: ldur w1, [x0, #0xb]
//  0x437eec: add x1, x1, HEAP, lsl #32
//  0x437ef0: ldr BARRIER, [PP, #0x40]
//  0x437ef4: cmp w1, w16
//  0x437ef8: b.eq #0x43850c
//  0x437efc: mov x2, x1
//  0x437f00: b #0x437f1c
//  0x437f04: add x1, PP, #0xc, lsl #12
//  0x437f08: ldr x1, [x1, #0x888]
//  0x437f0c: ldr x4, [PP, #0x4c0]
//  0x437f10: bl #0x3a1dcc
//  0x437f14: mov x2, x0
//  0x437f18: ldur x0, [FP, #-0x20]
//  0x437f1c: ldur x1, [FP, #-8]
//  0x437f20: bl #0x438880
//  0x437f24: stur x0, [FP, #-0x70]
//  0x437f28: bl #0x3949ec
//  0x437f2c: mov x4, x0
//  0x437f30: add x0, PP, #0x10, lsl #12
//  0x437f34: ldr x0, [x0, #0x940]
//  0x437f38: stur x4, [FP, #-0x78]
//  0x437f3c: stur w0, [x4, #0x13]
//  0x437f40: ldur x0, [FP, #-0x20]
//  0x437f44: cmp w0, w22
//  0x437f48: b.eq #0x437f78
//  0x437f4c: ldur w3, [x0, #0xf]
//  0x437f50: add x3, x3, HEAP, lsl #32
//  0x437f54: ldr BARRIER, [PP, #0x40]
//  0x437f58: cmp w3, w16
//  0x437f5c: b.eq #0x438518
//  0x437f60: ldur x1, [FP, #-8]
//  0x437f64: add x2, PP, #0xf, lsl #12
//  0x437f68: ldr x2, [x2, #0x288]
//  0x437f6c: bl #0x4386e8
//  0x437f70: mov x12, x0
//  0x437f74: b #0x437f90
//  0x437f78: bl #0x391a04
//  0x437f7c: mov x1, x0
//  0x437f80: stur x0, [FP, #-0x20]
//  0x437f84: ldr x4, [PP, #0x4c0]
//  0x437f88: bl #0x391490
//  0x437f8c: ldur x12, [FP, #-0x20]
//  0x437f90: ldur x11, [FP, #-0x28]
//  0x437f94: ldur x10, [FP, #-0x50]
//  0x437f98: ldur x9, [FP, #-0x38]
//  0x437f9c: ldur x7, [FP, #-0x58]
//  0x437fa0: ldur x6, [FP, #-0x10]
//  0x437fa4: ldur x5, [FP, #-0x68]
//  0x437fa8: ldur x4, [FP, #-0x60]
//  0x437fac: ldur x3, [FP, #-0x70]
//  0x437fb0: ldur x0, [FP, #-0x78]
//  0x437fb4: mov x8, #0xa
//  0x437fb8: mov x2, x8
//  0x437fbc: stur x12, [FP, #-0x20]
//  0x437fc0: mov x1, NULL
//  0x437fc4: bl #0x61f920
//  0x437fc8: mov x2, x0
//  0x437fcc: ldur x0, [FP, #-0x68]
//  0x437fd0: stur x2, [FP, #-0x80]
//  0x437fd4: stur w0, [x2, #0xf]
//  0x437fd8: ldur x0, [FP, #-0x60]
//  0x437fdc: stur w0, [x2, #0x13]
//  0x437fe0: ldur x0, [FP, #-0x70]
//  0x437fe4: stur w0, [x2, #0x17]
//  0x437fe8: ldur x0, [FP, #-0x78]
//  0x437fec: stur w0, [x2, #0x1b]
//  0x437ff0: ldur x0, [FP, #-0x20]
//  0x437ff4: stur w0, [x2, #0x1f]
//  0x437ff8: ldr x1, [PP, #0x5c58]
//  0x437ffc: bl #0x61e854
//  0x438000: mov x1, x0
//  0x438004: ldur x0, [FP, #-0x80]
//  0x438008: stur x1, [FP, #-0x20]
//  0x43800c: stur w0, [x1, #0xf]
//  0x438010: mov x2, #0xa
//  0x438014: stur w2, [x1, #0xb]
//  0x438018: bl #0x39310c
//  0x43801c: mov x1, x0
//  0x438020: add x0, PP, #0xa, lsl #12
//  0x438024: ldr x0, [x0, #0x858]
//  0x438028: stur x1, [FP, #-0x60]
//  0x43802c: stur w0, [x1, #0xf]
//  0x438030: add x2, PP, #0xe, lsl #12
//  0x438034: ldr x2, [x2, #0xae0]
//  0x438038: stur w2, [x1, #0x13]
//  0x43803c: add x3, PP, #0xe, lsl #12
//  0x438040: ldr x3, [x3, #0xae8]
//  0x438044: stur w3, [x1, #0x17]
//  0x438048: add x4, PP, #0xe, lsl #12
//  0x43804c: ldr x4, [x4, #0xb60]
//  0x438050: stur w4, [x1, #0x1b]
//  0x438054: add x5, PP, #0xe, lsl #12
//  0x438058: ldr x5, [x5, #0xaf8]
//  0x43805c: stur w5, [x1, #0x23]
//  0x438060: add x6, PP, #0xa, lsl #12
//  0x438064: ldr x6, [x6, #0xa8]
//  0x438068: stur w6, [x1, #0x2b]
//  0x43806c: stur xzr, [x1, #0x2f]
//  0x438070: ldur x7, [FP, #-0x20]
//  0x438074: stur w7, [x1, #0xb]
//  0x438078: bl #0x391a04
//  0x43807c: stur x0, [FP, #-0x20]
//  0x438080: ldur BARRIER, [FP, #-0x40]
//  0x438084: ldur LR, [FP, #-0x48]
//  0x438088: stp LR, BARRIER, [SP, #0x10]
//  0x43808c: ldur BARRIER, [FP, #-0x18]
//  0x438090: ldur LR, [FP, #-0x60]
//  0x438094: stp LR, BARRIER, [SP]
//  0x438098: mov x1, x0
//  0x43809c: add x4, PP, #0x11, lsl #12
//  0x4380a0: ldr x4, [x4, #0x890]
//  0x4380a4: bl #0x391490
//  0x4380a8: mov x1, NULL
//  0x4380ac: mov x2, #0xa
//  0x4380b0: bl #0x61f920
//  0x4380b4: mov x2, x0
//  0x4380b8: ldur x0, [FP, #-0x50]
//  0x4380bc: stur x2, [FP, #-0x18]
//  0x4380c0: stur w0, [x2, #0xf]
//  0x4380c4: ldur x0, [FP, #-0x38]
//  0x4380c8: stur w0, [x2, #0x13]
//  0x4380cc: ldur x0, [FP, #-0x58]
//  0x4380d0: stur w0, [x2, #0x17]
//  0x4380d4: ldur x0, [FP, #-0x10]
//  0x4380d8: stur w0, [x2, #0x1b]
//  0x4380dc: ldur x0, [FP, #-0x20]
//  0x4380e0: stur w0, [x2, #0x1f]
//  0x4380e4: ldr x1, [PP, #0x5c58]
//  0x4380e8: bl #0x61e854
//  0x4380ec: mov x1, x0
//  0x4380f0: ldur x0, [FP, #-0x18]
//  0x4380f4: stur x1, [FP, #-0x10]
//  0x4380f8: stur w0, [x1, #0xf]
//  0x4380fc: mov x0, #0xa
//  0x438100: stur w0, [x1, #0xb]
//  0x438104: bl #0x3a1414
//  0x438108: mov x1, x0
//  0x43810c: ldr x0, [PP, #0x5140]
//  0x438110: stur x1, [FP, #-0x18]
//  0x438114: stur w0, [x1, #0xf]
//  0x438118: add x0, PP, #0xe, lsl #12
//  0x43811c: ldr x0, [x0, #0xae0]
//  0x438120: stur w0, [x1, #0x13]
//  0x438124: add x2, PP, #0xe, lsl #12
//  0x438128: ldr x2, [x2, #0xae8]
//  0x43812c: stur w2, [x1, #0x17]
//  0x438130: add x3, PP, #0xe, lsl #12
//  0x438134: ldr x3, [x3, #0xb60]
//  0x438138: stur w3, [x1, #0x1b]
//  0x43813c: add x4, PP, #0xe, lsl #12
//  0x438140: ldr x4, [x4, #0xaf8]
//  0x438144: stur w4, [x1, #0x23]
//  0x438148: add x5, PP, #0xa, lsl #12
//  0x43814c: ldr x5, [x5, #0xa8]
//  0x438150: stur w5, [x1, #0x2b]
//  0x438154: stur xzr, [x1, #0x2f]
//  0x438158: ldur x6, [FP, #-0x10]
//  0x43815c: stur w6, [x1, #0xb]
//  0x438160: bl #0x391a04
//  0x438164: stur x0, [FP, #-0x10]
//  0x438168: ldur BARRIER, [FP, #-0x30]
//  0x43816c: add LR, PP, #0x11, lsl #12
//  0x438170: ldr LR, [LR, #0x8f8]
//  0x438174: stp LR, BARRIER, [SP, #0x10]
//  0x438178: ldr BARRIER, [PP, #0x5458]
//  0x43817c: ldur LR, [FP, #-0x18]
//  0x438180: stp LR, BARRIER, [SP]
//  0x438184: mov x1, x0
//  0x438188: add x4, PP, #0x11, lsl #12
//  0x43818c: ldr x4, [x4, #0x900]
//  0x438190: bl #0x391490
//  0x438194: ldur x0, [FP, #-0x28]
//  0x438198: ldur w1, [x0, #0x13]
//  0x43819c: add x1, x1, HEAP, lsl #32
//  0x4381a0: ldur w2, [x1, #0xb]
//  0x4381a4: sbfx x3, x2, #1, #0x1f
//  0x4381a8: stur x3, [FP, #-0x88]
//  0x4381ac: cmp x3, #3
//  0x4381b0: b.le #0x4382f0
//  0x4381b4: ldur x1, [FP, #-8]
//  0x4381b8: ldur w4, [x1, #0xf]
//  0x4381bc: add x4, x4, HEAP, lsl #32
//  0x4381c0: stur x4, [FP, #-0x20]
//  0x4381c4: cmp w4, w22
//  0x4381c8: b.eq #0x438524
//  0x4381cc: ldur w5, [x0, #0x1b]
//  0x4381d0: add x5, x5, HEAP, lsl #32
//  0x4381d4: stur x5, [FP, #-0x18]
//  0x4381d8: add x1, PP, #0x11, lsl #12
//  0x4381dc: ldr x1, [x1, #0x908]
//  0x4381e0: mov x2, NULL
//  0x4381e4: bl #0x61ec54
//  0x4381e8: stur x0, [FP, #-0x30]
//  0x4381ec: bl #0x3ab5b8
//  0x4381f0: mov x3, x0
//  0x4381f4: ldur x0, [FP, #-0x30]
//  0x4381f8: stur x3, [FP, #-0x38]
//  0x4381fc: stur w0, [x3, #0x1b]
//  0x438200: add x0, PP, #0xf, lsl #12
//  0x438204: ldr x0, [x0, #0x898]
//  0x438208: stur w0, [x3, #0xb]
//  0x43820c: add x17, PP, #0xf, lsl #12
//  0x438210: ldr d0, [x17, #0x8a0]
//  0x438214: stur d0, [x3, #0xf]
//  0x438218: ldur x2, [FP, #-0x28]
//  0x43821c: add x1, PP, #0x11, lsl #12
//  0x438220: ldr x1, [x1, #0x910]
//  0x438224: bl #0x61ec54
//  0x438228: stur x0, [FP, #-0x30]
//  0x43822c: bl #0x3ab5ac
//  0x438230: mov x1, x0
//  0x438234: ldur x2, [FP, #-0x30]
//  0x438238: ldur x3, [FP, #-0x88]
//  0x43823c: stur x0, [FP, #-0x30]
//  0x438240: ldr x4, [PP, #0x2e0]
//  0x438244: bl #0x3ab2bc
//  0x438248: bl #0x3ab290
//  0x43824c: mov x3, x0
//  0x438250: ldur x0, [FP, #-0x18]
//  0x438254: stur x3, [FP, #-0x40]
//  0x438258: stur w0, [x3, #0x2b]
//  0x43825c: ldur x0, [FP, #-0x30]
//  0x438260: stur w0, [x3, #0xb]
//  0x438264: ldur x0, [FP, #-0x38]
//  0x438268: stur w0, [x3, #0xf]
//  0x43826c: add x0, NULL, #0x30
//  0x438270: stur w0, [x3, #0x1b]
//  0x438274: add x1, NULL, #0x20
//  0x438278: stur w1, [x3, #0x13]
//  0x43827c: stur w0, [x3, #0x17]
//  0x438280: ldur x2, [FP, #-0x28]
//  0x438284: add x1, PP, #0x11, lsl #12
//  0x438288: ldr x1, [x1, #0x918]
//  0x43828c: bl #0x61ec54
//  0x438290: ldur x2, [FP, #-0x40]
//  0x438294: stur w0, [x2, #0x23]
//  0x438298: add x1, PP, #0xf, lsl #12
//  0x43829c: ldr x1, [x1, #0x218]
//  0x4382a0: bl #0x396454
//  0x4382a4: mov x1, x0
//  0x4382a8: ldur x2, [FP, #-0x40]
//  0x4382ac: ldur x3, [FP, #-0x20]
//  0x4382b0: stur x0, [FP, #-0x18]
//  0x4382b4: ldr x4, [PP, #0x2e0]
//  0x4382b8: bl #0x39ecf8
//  0x4382bc: add x1, PP, #0xe, lsl #12
//  0x4382c0: ldr x1, [x1, #0xad0]
//  0x4382c4: bl #0x39fb14
//  0x4382c8: mov x1, x0
//  0x4382cc: mov x0, #1
//  0x4382d0: stur x0, [x1, #0x13]
//  0x4382d4: add x0, PP, #0xe, lsl #12
//  0x4382d8: ldr x0, [x0, #0xad8]
//  0x4382dc: stur w0, [x1, #0x1b]
//  0x4382e0: ldur x0, [FP, #-0x18]
//  0x4382e4: stur w0, [x1, #0xb]
//  0x4382e8: mov x4, x1
//  0x4382ec: b #0x438350
//  0x4382f0: ldur x1, [FP, #-8]
//  0x4382f4: bl #0x2e3578
//  0x4382f8: stur x0, [FP, #-0x18]
//  0x4382fc: stur xzr, [x0, #7]
//  0x438300: add x17, PP, #0x11, lsl #12
//  0x438304: ldr d0, [x17, #0x920]
//  0x438308: stur d0, [x0, #0xf]
//  0x43830c: stur xzr, [x0, #0x17]
//  0x438310: stur xzr, [x0, #0x1f]
//  0x438314: add x1, PP, #0xc, lsl #12
//  0x438318: ldr x1, [x1, #0x888]
//  0x43831c: ldr x4, [PP, #0x4c0]
//  0x438320: bl #0x3a1dcc
//  0x438324: ldur x1, [FP, #-8]
//  0x438328: mov x2, x0
//  0x43832c: bl #0x438528
//  0x438330: stur x0, [FP, #-8]
//  0x438334: bl #0x391c0c
//  0x438338: mov x1, x0
//  0x43833c: ldur x0, [FP, #-0x18]
//  0x438340: stur w0, [x1, #0xf]
//  0x438344: ldur x0, [FP, #-8]
//  0x438348: stur w0, [x1, #0xb]
//  0x43834c: mov x4, x1
//  0x438350: ldur x0, [FP, #-0x10]
//  0x438354: mov x3, #4
//  0x438358: mov x2, x3
//  0x43835c: stur x4, [FP, #-8]
//  0x438360: mov x1, NULL
//  0x438364: bl #0x61f920
//  0x438368: mov x2, x0
//  0x43836c: ldur x0, [FP, #-0x10]
//  0x438370: stur x2, [FP, #-0x18]
//  0x438374: stur w0, [x2, #0xf]
//  0x438378: ldur x0, [FP, #-8]
//  0x43837c: stur w0, [x2, #0x13]
//  0x438380: ldr x1, [PP, #0x5c58]
//  0x438384: bl #0x61e854
//  0x438388: mov x1, x0
//  0x43838c: ldur x0, [FP, #-0x18]
//  0x438390: stur x1, [FP, #-8]
//  0x438394: stur w0, [x1, #0xf]
//  0x438398: mov x0, #4
//  0x43839c: stur w0, [x1, #0xb]
//  0x4383a0: bl #0x39310c
//  0x4383a4: mov x1, x0
//  0x4383a8: add x0, PP, #0xa, lsl #12
//  0x4383ac: ldr x0, [x0, #0x858]
//  0x4383b0: stur x1, [FP, #-0x10]
//  0x4383b4: stur w0, [x1, #0xf]
//  0x4383b8: add x0, PP, #0xe, lsl #12
//  0x4383bc: ldr x0, [x0, #0xae0]
//  0x4383c0: stur w0, [x1, #0x13]
//  0x4383c4: add x0, PP, #0xe, lsl #12
//  0x4383c8: ldr x0, [x0, #0xae8]
//  0x4383cc: stur w0, [x1, #0x17]
//  0x4383d0: add x0, PP, #0xe, lsl #12
//  0x4383d4: ldr x0, [x0, #0xb60]
//  0x4383d8: stur w0, [x1, #0x1b]
//  0x4383dc: add x0, PP, #0xe, lsl #12
//  0x4383e0: ldr x0, [x0, #0xaf8]
//  0x4383e4: stur w0, [x1, #0x23]
//  0x4383e8: add x0, PP, #0xa, lsl #12
//  0x4383ec: ldr x0, [x0, #0xa8]
//  0x4383f0: stur w0, [x1, #0x2b]
//  0x4383f4: stur xzr, [x1, #0x2f]
//  0x4383f8: ldur x0, [FP, #-8]
//  0x4383fc: stur w0, [x1, #0xb]
//  0x438400: bl #0x391a04
//  0x438404: stur x0, [FP, #-8]
//  0x438408: ldur BARRIER, [FP, #-0x10]
//  0x43840c: str BARRIER, [SP]
//  0x438410: mov x1, x0
//  0x438414: add x4, PP, #0xc, lsl #12
//  0x438418: ldr x4, [x4, #0x1f8]
//  0x43841c: bl #0x391490
//  0x438420: ldur x0, [FP, #-8]
//  0x438424: mov SP, FP
//  0x438428: ldp FP, LR, [SP], #0x10
//  0x43842c: ret 
//  0x438430: bl #0x61faa8
//  0x438434: b #0x436d50
//  0x438438: bl #0x61fe70
//  0x43843c: bl #0x61fe70
//  0x438440: bl #0x61fe70
//  0x438444: bl #0x61fe70
//  0x438448: bl #0x61fe70
//  0x43844c: bl #0x61fe70
//  0x438450: add x9, PP, #0x11, lsl #12
//  0x438454: ldr x9, [x9, #0x928]
//  0x438458: bl #0x620258
//  0x43845c: add x9, PP, #0x11, lsl #12
//  0x438460: ldr x9, [x9, #0x930]
//  0x438464: bl #0x620258
//  0x438468: add x9, PP, #0x11, lsl #12
//  0x43846c: ldr x9, [x9, #0x938]
//  0x438470: bl #0x620258
//  0x438474: str q0, [SP, #-0x10]!
//  0x438478: stp x5, x6, [SP, #-0x10]!
//  0x43847c: stp x3, x4, [SP, #-0x10]!
//  0x438480: stp x1, x2, [SP, #-0x10]!
//  0x438484: str x0, [SP, #-8]!
//  0x438488: bl #0x61f878
//  0x43848c: mov x7, x0
//  0x438490: ldr x0, [SP], #8
//  0x438494: ldp x1, x2, [SP], #0x10
//  0x438498: ldp x3, x4, [SP], #0x10
//  0x43849c: ldp x5, x6, [SP], #0x10
//  0x4384a0: ldr q0, [SP], #0x10
//  0x4384a4: b #0x4374b4
//  0x4384a8: add x9, PP, #0x11, lsl #12
//  0x4384ac: ldr x9, [x9, #0x928]
//  0x4384b0: bl #0x620258
//  0x4384b4: add x9, PP, #0x11, lsl #12
//  0x4384b8: ldr x9, [x9, #0x930]
//  0x4384bc: bl #0x620258
//  0x4384c0: add x9, PP, #0x11, lsl #12
//  0x4384c4: ldr x9, [x9, #0x938]
//  0x4384c8: bl #0x620258
//  0x4384cc: str q0, [SP, #-0x10]!
//  0x4384d0: stp x5, x6, [SP, #-0x10]!
//  0x4384d4: stp x3, x4, [SP, #-0x10]!
//  0x4384d8: stp x1, x2, [SP, #-0x10]!
//  0x4384dc: str x0, [SP, #-8]!
//  0x4384e0: bl #0x61f878
//  0x4384e4: mov x7, x0
//  0x4384e8: ldr x0, [SP], #8
//  0x4384ec: ldp x1, x2, [SP], #0x10
//  0x4384f0: ldp x3, x4, [SP], #0x10
//  0x4384f4: ldp x5, x6, [SP], #0x10
//  0x4384f8: ldr q0, [SP], #0x10
//  0x4384fc: b #0x437a58
//  0x438500: add x9, PP, #0x11, lsl #12
//  0x438504: ldr x9, [x9, #0x928]
//  0x438508: bl #0x620258
//  0x43850c: add x9, PP, #0x11, lsl #12
//  0x438510: ldr x9, [x9, #0x930]
//  0x438514: bl #0x620258
//  0x438518: add x9, PP, #0x11, lsl #12
//  0x43851c: ldr x9, [x9, #0x938]
//  0x438520: bl #0x620258
//  0x438524: bl #0x61ffd0
//
// NOTE: control flow was not fully structured (goto kept) -- pseudocode only.
dynamic PageGameFruitRankingState_userRankListWidget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic d3;
  dynamic q0;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic w4;
  dynamic w5;
  dynamic w6;
  dynamic w7;
  dynamic x0;
  dynamic x1;
  dynamic x10;
  dynamic x11;
  dynamic x12;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x7;
  dynamic x8;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x436d20
  // frame: FP = SP // 0x436d24
  // frame: SP = SP - 0xc8 // 0x436d28
  local_m8 = x1; // 0x436d2c
  local_m10 = x2; // 0x436d30
  local_m18 = x3; // 0x436d34
  local_m20 = x5; // 0x436d38
  local_m90 = d0; // 0x436d3c
  local_m98 = d1; // 0x436d40
  BARRIER = mem(THR, 0x38); // 0x436d44
  if (SP <= BARRIER) {
    StackOverflowSharedWithFpuRegsStub_0x61faa8() /* 0x61faa8 */; // 0x438430
  }
  x1 = 6; // 0x436d50
  sub_0x61e890(); // 0x436d54
  x2 = local_m8; // 0x436d5c
  x3 = x0; // 0x436d58
  local_m28 = x3; // 0x436d60
  memSet(x3, 0xf, w2); // 0x436d64
  x4 = local_m10; // 0x436d68
  memSet(x3, 0x13, w4); // 0x436d6c
  x0 = local_m18; // 0x436d70
  memSet(x3, 0x17, w0); // 0x436d74
  x0 = local_m20; // 0x436d78
  memSet(x3, 0x1b, w0); // 0x436d7c
  x0 = mem((PP + 0xf000), 0xb80) /* Double */; // 0x436d84
  memSet(x3, 0x1f, w0); // 0x436d88
  x0 = mem((PP + 0x11000), 0x838) /* Double */; // 0x436d90
  memSet(x3, 0x23, w0); // 0x436d94
  w0 = mem(x4, 0xb); // 0x436d98
  x0 = (mem(x4, 0xb)) & 0xffffffff; // 0x436d98
  x5 = (((mem(x4, 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x436d9c
  if (x5 < 3) {
    if (x5 >= 3) {
    } else {
      if (x5 < 2) {
        x0 = x5; // 0x436e50
        x1 = 0; // 0x436e54
        if (x1 >= x0) {
          RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x43844c
        } else {
          w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf); // 0x436e68
          x0 = NULL; // 0x436e70
          x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x436e6c
          x0 = NULL; // 0x436e7c
          x1 = x0; // 0x436e78
          x4 = x1; // 0x436e74
          d0 = local_m98; // 0x436e80
          local_m10 = x4; // 0x436e84
          local_m18 = x1; // 0x436e88
          local_m20 = x0; // 0x436e8c
          AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x436e90
          d0 = 20.00000000 /* bits */; // 0x436e94
          local_m30 = x0; // 0x436e98
          memSet(x0, 7, d0); // 0x436e9c
          memSet(x0, 0xf, d0); // 0x436ea0
          memSet(x0, 0x17, d0); // 0x436ea4
          d1 = 12.00000000 /* bits */; // 0x436ea8
          memSet(x0, 0x1f, d1); // 0x436eac
          AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x436eb0
          local_m38 = x0; // 0x436eb4
          memSet(x0, 7, xzr); // 0x436eb8
          d0 = 25.00000000 /* bits */; // 0x436ebc
          memSet(x0, 0xf, d0); // 0x436ec0
          memSet(x0, 0x17, xzr); // 0x436ec4
          memSet(x0, 0x1f, xzr); // 0x436ec8
          AllocationStub_Color() /* 0x31d844 */; // 0x436ecc
          x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x436ed4
          x1 = x0; // 0x436ed0
          local_m40 = x1; // 0x436ed8
          memSet(x1, 0x27, w0); // 0x436edc
          d0 = 4602949035150289142; // 0x436ee4
          x17 = PP + 0x11000; // 0x436ee0
          memSet(x1, 7, d0); // 0x436ee8
          d1 = 4595243464493733270; // 0x436ef0
          x17 = PP + 0x11000; // 0x436eec
          memSet(x1, 0xf, d1); // 0x436ef4
          d2 = 4604921788398827512; // 0x436efc
          x17 = PP + 0x11000; // 0x436ef8
          memSet(x1, 0x17, d2); // 0x436f00
          d3 = 1.00000000 /* bits */; // 0x436f04
          memSet(x1, 0x1f, d3); // 0x436f08
          AllocationStub_Color() /* 0x31d844 */; // 0x436f0c
          x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x436f14
          x3 = x0; // 0x436f10
          local_m48 = x3; // 0x436f18
          memSet(x3, 0x27, w0); // 0x436f1c
          memSet(x3, 7, xzr); // 0x436f20
          d0 = 4595243464493733270; // 0x436f28
          x17 = PP + 0x11000; // 0x436f24
          memSet(x3, 0xf, d0); // 0x436f2c
          d1 = 4604921788398827512; // 0x436f34
          x17 = PP + 0x11000; // 0x436f30
          memSet(x3, 0x17, d1); // 0x436f38
          d1 = 1.00000000 /* bits */; // 0x436f3c
          memSet(x3, 0x1f, d1); // 0x436f40
          x1 = NULL; // 0x436f44
          x2 = 4; // 0x436f48
          sub_0x61f920(); // 0x436f4c
          x0 = local_m40; // 0x436f54
          x2 = x0; // 0x436f50
          local_m50 = x2; // 0x436f58
          memSet(x2, 0xf, w0); // 0x436f5c
          x0 = local_m48; // 0x436f60
          memSet(x2, 0x13, w0); // 0x436f64
          x1 = mem((PP + 0x10000), 0xc58) /* TypeArguments */; // 0x436f6c
          AllocationStub__GrowableList() /* 0x61e854 */; // 0x436f70
          x0 = local_m50; // 0x436f78
          x1 = x0; // 0x436f74
          local_m40 = x1; // 0x436f7c
          memSet(x1, 0xf, w0); // 0x436f80
          x2 = 4; // 0x436f84
          memSet(x1, 0xb, w2); // 0x436f88
          AllocationStub_LinearGradient() /* 0x3a108c */; // 0x436f8c
          x0 = mem((PP + 0x10000), 0xc68) /* Obj!Alignment@11bdd  */; // 0x436f98
          x1 = x0; // 0x436f90
          local_m48 = x1; // 0x436f9c
          memSet(x1, 0x13, w0); // 0x436fa0
          x2 = mem((PP + 0x10000), 0xc70) /* Obj!Alignment@11bdc  */; // 0x436fa8
          memSet(x1, 0x17, w2); // 0x436fac
          x3 = mem((PP + 0x10000), 0xc78) /* Obj!TileMode@1233e  */; // 0x436fb4
          memSet(x1, 0x1b, w3); // 0x436fb8
          x4 = local_m40; // 0x436fbc
          memSet(x1, 7, w4); // 0x436fc0
          d0 = local_m98; // 0x436fc4
          d1 = 0.50000000 /* bits */; // 0x436fc8
          d2 = ((local_m98) * (0.50000000 /* bits */)) /* float */; // 0x436fcc
          local_ma0 = d2; // 0x436fd0
          AllocationStub_Radius() /* 0x352b04 */; // 0x436fd4
          d0 = local_ma0; // 0x436fd8
          local_m40 = x0; // 0x436fdc
          memSet(x0, 7, d0); // 0x436fe0
          memSet(x0, 0xf, d0); // 0x436fe4
          AllocationStub_Radius() /* 0x352b04 */; // 0x436fe8
          d0 = local_ma0; // 0x436fec
          local_m50 = x0; // 0x436ff0
          memSet(x0, 7, d0); // 0x436ff4
          memSet(x0, 0xf, d0); // 0x436ff8
          AllocationStub_BorderRadius() /* 0x392f28 */; // 0x436ffc
          x0 = local_m40; // 0x437004
          x1 = x0; // 0x437000
          local_m58 = x1; // 0x437008
          memSet(x1, 7, w0); // 0x43700c
          x0 = local_m50; // 0x437010
          memSet(x1, 0xb, w0); // 0x437014
          x0 = mem((PP + 0xa000), 0x510) /* Obj!Radius@120d9  */; // 0x43701c
          memSet(x1, 0xf, w0); // 0x437020
          memSet(x1, 0x13, w0); // 0x437024
          AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x437028
          x0 = local_m58; // 0x437030
          x1 = x0; // 0x43702c
          local_m40 = x1; // 0x437034
          memSet(x1, 0x13, w0); // 0x437038
          x0 = local_m48; // 0x43703c
          memSet(x1, 0x1b, w0); // 0x437040
          x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x437048
          memSet(x1, 0x23, w0); // 0x43704c
          AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x437050
          x0 = "assets/images/3.0x/game_fruit_secplace_crown.webp" /* pp+0x11858 */; // 0x43705c
          x1 = x0; // 0x437054
          local_m48 = x1; // 0x437060
          memSet(x1, 0xb, w0); // 0x437064
          x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x43706c
          memSet(x1, 0xf, w0); // 0x437070
          x2 = mem((PP + 0x11000), 0x860) /* Double */; // 0x437078
          memSet(x1, 0x13, w2); // 0x43707c
          x3 = mem((PP + 0x11000), 0x410) /* Double */; // 0x437084
          memSet(x1, 0x17, w3); // 0x437088
          AllocationStub_Container() /* 0x391a04 */; // 0x43708c
          local_m50 = x0; // 0x437090
          BARRIER = mem((PP + 0x11000), 0x860) /* Double */; // 0x437098
          LR = mem((PP + 0x11000), 0x410) /* Double */; // 0x4370a0
          // frame: LR, BARRIER, mem(SP, 8) // 0x4370a4
          BARRIER = local_m48; // 0x4370a8
          local_0 = BARRIER; // 0x4370ac
          x1 = x0; // 0x4370b0
          x4 = mem((PP + 0x11000), 0x868) /* ImmutableArray */; // 0x4370b8
          Container_ctor() /* 0x391490 */; // 0x4370bc
          x1 = mem((PP + 0xf000), 0x5d8) /* TypeArguments */; // 0x4370c4
          AllocationStub_Positioned() /* 0x399e40 */; // 0x4370c8
          x0 = mem((PP + 0x11000), 0x870) /* Double */; // 0x4370d4
          x1 = x0; // 0x4370cc
          local_m48 = x1; // 0x4370d8
          memSet(x1, 0x17, w0); // 0x4370dc
          x2 = local_m50; // 0x4370e0
          memSet(x1, 0xb, w2); // 0x4370e4
          AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x4370e8
          local_m50 = x0; // 0x4370ec
          memSet(x0, 7, xzr); // 0x4370f0
          d0 = 20.00000000 /* bits */; // 0x4370f4
          memSet(x0, 0xf, d0); // 0x4370f8
          memSet(x0, 0x17, xzr); // 0x4370fc
          memSet(x0, 0x1f, xzr); // 0x437100
          AllocationStub_Color() /* 0x31d844 */; // 0x437104
          x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x43710c
          x1 = x0; // 0x437108
          memSet(x1, 0x27, w0); // 0x437110
          d0 = 1.00000000 /* bits */; // 0x437114
          memSet(x1, 7, d0); // 0x437118
          d1 = 4605981458899385276; // 0x43711c
          memSet(x1, 0xf, d1); // 0x437120
          d1 = 4606264037699534013; // 0x437128
          x17 = PP + 0x11000; // 0x437124
          memSet(x1, 0x17, d1); // 0x43712c
          d1 = 4606617261199719934; // 0x437134
          x17 = PP + 0x10000; // 0x437130
          memSet(x1, 0x1f, d1); // 0x437138
          BARRIER = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x437140
          local_0 = BARRIER; // 0x437144
          x1 = NULL; // 0x43714c
          x2 = x1; // 0x437148
          x4 = mem((PP + 0xf000), 0x818) /* ImmutableArray */; // 0x437154
          Border_factory_ctor_all() /* 0x391e08 */; // 0x437158
          local_m58 = x0; // 0x43715c
          AllocationStub_Radius() /* 0x352b04 */; // 0x437160
          d0 = 30.00000000 /* bits */; // 0x437164
          local_m60 = x0; // 0x437168
          memSet(x0, 7, d0); // 0x43716c
          memSet(x0, 0xf, d0); // 0x437170
          AllocationStub_BorderRadius() /* 0x392f28 */; // 0x437174
          x0 = local_m60; // 0x43717c
          x1 = x0; // 0x437178
          local_m68 = x1; // 0x437180
          memSet(x1, 7, w0); // 0x437184
          memSet(x1, 0xb, w0); // 0x437188
          memSet(x1, 0xf, w0); // 0x43718c
          memSet(x1, 0x13, w0); // 0x437190
          AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x437194
          x0 = local_m58; // 0x43719c
          x1 = x0; // 0x437198
          local_m60 = x1; // 0x4371a0
          memSet(x1, 0xf, w0); // 0x4371a4
          x0 = local_m68; // 0x4371a8
          memSet(x1, 0x13, w0); // 0x4371ac
          x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x4371b4
          memSet(x1, 0x23, w0); // 0x4371b8
          x2 = local_m18; // 0x4371bc
          if (w2 == w22) {
            x4 = "" /* pp+0x148 */; // 0x4371e4
          } else {
            BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4371d0
            x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x4371cc
            if (w3 == w16) {
              x9 = mem((PP + 0x11000), 0x928) /* Field */; // 0x438454
              LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x438458
            } else {
              x4 = x3; // 0x4371dc
              x3 = local_m48; // 0x4371e8
              local_m58 = x4; // 0x4371ec
              AllocationStub_SoulAvatarImage() /* 0x3a67fc */; // 0x4371f0
              x0 = local_m58; // 0x4371f8
              x1 = x0; // 0x4371f4
              local_m68 = x1; // 0x4371fc
              memSet(x1, 0xb, w0); // 0x437200
              d0 = 4633078116657397760; // 0x437208
              x17 = PP + 0x11000; // 0x437204
              memSet(x1, 0x13, d0); // 0x43720c
              x0 = NULL + 0x30; // 0x437210
              memSet(x1, 0x1b, w0); // 0x437214
              AllocationStub_Container() /* 0x391a04 */; // 0x437218
              local_m58 = x0; // 0x43721c
              BARRIER = mem((PP + 0x10000), 0x350) /* Double */; // 0x437224
              LR = mem((PP + 0x10000), 0x350) /* Double */; // 0x43722c
              // frame: LR, BARRIER, mem(SP, 0x18) // 0x437230
              BARRIER = local_m50; // 0x437234
              LR = local_m60; // 0x437238
              // frame: LR, BARRIER, mem(SP, 8) // 0x43723c
              BARRIER = local_m68; // 0x437240
              local_0 = BARRIER; // 0x437244
              x1 = x0; // 0x437248
              x4 = mem((PP + 0x11000), 0x888) /* ImmutableArray */; // 0x437250
              Container_ctor() /* 0x391490 */; // 0x437254
              x1 = NULL; // 0x437258
              x2 = 4; // 0x43725c
              sub_0x61f920(); // 0x437260
              x0 = local_m48; // 0x437268
              x2 = x0; // 0x437264
              local_m50 = x2; // 0x43726c
              memSet(x2, 0xf, w0); // 0x437270
              x0 = local_m58; // 0x437274
              memSet(x2, 0x13, w0); // 0x437278
              x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x43727c
              AllocationStub__GrowableList() /* 0x61e854 */; // 0x437280
              x0 = local_m50; // 0x437288
              x1 = x0; // 0x437284
              local_m48 = x1; // 0x43728c
              memSet(x1, 0xf, w0); // 0x437290
              x2 = 4; // 0x437294
              memSet(x1, 0xb, w2); // 0x437298
              AllocationStub_Stack() /* 0x39e6f4 */; // 0x43729c
              x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x4372a8
              x1 = x0; // 0x4372a0
              local_m50 = x1; // 0x4372ac
              memSet(x1, 0xf, w0); // 0x4372b0
              x2 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x4372b8
              memSet(x1, 0x17, w2); // 0x4372bc
              x3 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x4372c4
              memSet(x1, 0x1b, w3); // 0x4372c8
              x4 = local_m48; // 0x4372cc
              memSet(x1, 0xb, w4); // 0x4372d0
              AllocationStub_SizedBox() /* 0x3949ec */; // 0x4372d4
              x0 = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x4372e0
              x2 = x0; // 0x4372d8
              local_m48 = x2; // 0x4372e4
              memSet(x2, 0x13, w0); // 0x4372e8
              x3 = local_m18; // 0x4372ec
              if (w3 == w22) {
                x1 = "virtual_party_fruitland_ranking_page_default_text" /* pp+0xc888 */; // 0x43731c
                x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x437320
                getString() /* 0x3a1dcc */; // 0x437324
                x0 = local_m18; // 0x43732c
                x2 = x0; // 0x437328
              } else {
                BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x437300
                x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4372fc
                if (w1 == w16) {
                  x9 = mem((PP + 0x11000), 0x930) /* Field */; // 0x438460
                  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x438464
                } else {
                  x0 = x3; // 0x437310
                  x2 = x1; // 0x43730c
                  x1 = local_m8; // 0x437330
                  PageGameFruitRankingState_userFlexibleWidget() /* 0x438880 */; // 0x437334
                  local_m58 = x0; // 0x437338
                  AllocationStub_SizedBox() /* 0x3949ec */; // 0x43733c
                  x0 = mem((PP + 0x10000), 0x940) /* Double */; // 0x437348
                  x4 = x0; // 0x437340
                  local_m60 = x4; // 0x43734c
                  memSet(x4, 0x13, w0); // 0x437350
                  x1 = local_m18; // 0x437354
                  if (w1 == w22) {
                    AllocationStub_Container() /* 0x391a04 */; // 0x43738c
                    x1 = x0; // 0x437390
                    local_m18 = x0; // 0x437394
                    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x437398
                    Container_ctor() /* 0x391490 */; // 0x43739c
                    x9 = local_m18; // 0x4373a0
                    d0 = local_ma0; // 0x4373b4
                    d1 = local_m98; // 0x4373a8
                    d2 = local_m90; // 0x4373a4
                    x0 = local_m60; // 0x4373c4
                    x2 = 10; // 0x4373cc
                    x3 = local_m58; // 0x4373c0
                    x4 = local_m48; // 0x4373bc
                    x5 = local_m50; // 0x4373b8
                    x6 = local_m20; // 0x4373b0
                    x7 = local_m10; // 0x4373ac
                    x8 = 10; // 0x4373c8
                    local_m18 = x9; // 0x4373d0
                    x1 = NULL; // 0x4373d4
                    sub_0x61f920(); // 0x4373d8
                    x0 = local_m50; // 0x4373e0
                    x2 = x0; // 0x4373dc
                    local_m68 = x2; // 0x4373e4
                    memSet(x2, 0xf, w0); // 0x4373e8
                    x0 = local_m48; // 0x4373ec
                    memSet(x2, 0x13, w0); // 0x4373f0
                    x0 = local_m58; // 0x4373f4
                    memSet(x2, 0x17, w0); // 0x4373f8
                    x0 = local_m60; // 0x4373fc
                    memSet(x2, 0x1b, w0); // 0x437400
                    x0 = local_m18; // 0x437404
                    memSet(x2, 0x1f, w0); // 0x437408
                    x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x43740c
                    AllocationStub__GrowableList() /* 0x61e854 */; // 0x437410
                    x0 = local_m68; // 0x437418
                    x1 = x0; // 0x437414
                    local_m18 = x1; // 0x43741c
                    memSet(x1, 0xf, w0); // 0x437420
                    x2 = 10; // 0x437424
                    memSet(x1, 0xb, w2); // 0x437428
                    AllocationStub_Column() /* 0x39310c */; // 0x43742c
                    x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x437438
                    x1 = x0; // 0x437430
                    local_m48 = x1; // 0x43743c
                    memSet(x1, 0xf, w0); // 0x437440
                    x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x437448
                    memSet(x1, 0x13, w2); // 0x43744c
                    x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x437454
                    memSet(x1, 0x17, w3); // 0x437458
                    x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x437460
                    memSet(x1, 0x1b, w4); // 0x437464
                    x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x43746c
                    memSet(x1, 0x23, w5); // 0x437470
                    x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x437478
                    memSet(x1, 0x2b, w6); // 0x43747c
                    memSet(x1, 0x2f, xzr); // 0x437480
                    x7 = local_m18; // 0x437484
                    memSet(x1, 0xb, w7); // 0x437488
                    d0 = local_m98; // 0x43748c
                    memRead2(THR, 0x50, x7, x8); // 0x437490
                    x7 = x7 + 0x10; // 0x437494
                    if (x8 <= x7) {
                      local_m10 = q0; // 0x438474
                      // frame: x5, x6, mem(SP, -0x10)! // 0x438478
                      // frame: x3, x4, mem(SP, -0x10)! // 0x43847c
                      // frame: x1, x2, mem(SP, -0x10)! // 0x438480
                      local_m8 = x0; // 0x438484
                      AllocationStub__Double() /* 0x61f878 */; // 0x438488
                      x0 = local_0; // 0x438490
                      x7 = x0; // 0x43848c
                      // frame: x1, x2, mem(SP), 0x10 // 0x438494
                      // frame: x3, x4, mem(SP), 0x10 // 0x438498
                      // frame: x5, x6, mem(SP), 0x10 // 0x43849c
                      q0 = local_0; // 0x4384a0
                    } else {
                      memSet(THR, 0x50, x7); // 0x4374a0
                      x7 = x7 - 0xf; // 0x4374a4
                      x8 = (x8 & 0xffff) | 0x30000; // 0x4374ac
                      memSet(x7, -1, x8); // 0x4374b0
                    }
                    memSet(x7, 7, d0); // 0x4374b4
                    local_m18 = x7; // 0x4374b8
                    AllocationStub_Container() /* 0x391a04 */; // 0x4374bc
                    local_m50 = x0; // 0x4374c0
                    BARRIER = local_m38; // 0x4374c4
                    LR = local_m40; // 0x4374c8
                    // frame: LR, BARRIER, mem(SP, 0x10) // 0x4374cc
                    BARRIER = local_m18; // 0x4374d0
                    LR = local_m48; // 0x4374d4
                    // frame: LR, BARRIER, mem(SP) // 0x4374d8
                    x1 = x0; // 0x4374dc
                    x4 = mem((PP + 0x11000), 0x890) /* ImmutableArray */; // 0x4374e4
                    Container_ctor() /* 0x391490 */; // 0x4374e8
                    AllocationStub_SizedBox() /* 0x3949ec */; // 0x4374ec
                    x0 = mem((PP + 0x11000), 0x898) /* Double */; // 0x4374f8
                    x1 = x0; // 0x4374f0
                    local_m38 = x1; // 0x4374fc
                    memSet(x1, 0xf, w0); // 0x437500
                    AllocationStub_Color() /* 0x31d844 */; // 0x437504
                    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x43750c
                    x1 = x0; // 0x437508
                    local_m40 = x1; // 0x437510
                    memSet(x1, 0x27, w0); // 0x437514
                    d0 = 4602949035150289142; // 0x43751c
                    x17 = PP + 0x11000; // 0x437518
                    memSet(x1, 7, d0); // 0x437520
                    d1 = 1.00000000 /* bits */; // 0x437524
                    memSet(x1, 0xf, d1); // 0x437528
                    d2 = 4605522268349143578; // 0x437530
                    x17 = PP + 0xc000; // 0x43752c
                    memSet(x1, 0x17, d2); // 0x437534
                    d3 = 4595243464493733270; // 0x43753c
                    x17 = PP + 0x11000; // 0x437538
                    memSet(x1, 0x1f, d3); // 0x437540
                    AllocationStub_Color() /* 0x31d844 */; // 0x437544
                    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x43754c
                    x3 = x0; // 0x437548
                    local_m48 = x3; // 0x437550
                    memSet(x3, 0x27, w0); // 0x437554
                    memSet(x3, 7, xzr); // 0x437558
                    d0 = 1.00000000 /* bits */; // 0x43755c
                    memSet(x3, 0xf, d0); // 0x437560
                    d1 = 4605522268349143578; // 0x437568
                    x17 = PP + 0xc000; // 0x437564
                    memSet(x3, 0x17, d1); // 0x43756c
                    d1 = 4595243464493733270; // 0x437574
                    x17 = PP + 0x11000; // 0x437570
                    memSet(x3, 0x1f, d1); // 0x437578
                    x1 = NULL; // 0x43757c
                    x2 = 4; // 0x437580
                    sub_0x61f920(); // 0x437584
                    x0 = local_m40; // 0x43758c
                    x2 = x0; // 0x437588
                    local_m58 = x2; // 0x437590
                    memSet(x2, 0xf, w0); // 0x437594
                    x0 = local_m48; // 0x437598
                    memSet(x2, 0x13, w0); // 0x43759c
                    x1 = mem((PP + 0x10000), 0xc58) /* TypeArguments */; // 0x4375a4
                    AllocationStub__GrowableList() /* 0x61e854 */; // 0x4375a8
                    x0 = local_m58; // 0x4375b0
                    x1 = x0; // 0x4375ac
                    local_m40 = x1; // 0x4375b4
                    memSet(x1, 0xf, w0); // 0x4375b8
                    x2 = 4; // 0x4375bc
                    memSet(x1, 0xb, w2); // 0x4375c0
                    AllocationStub_LinearGradient() /* 0x3a108c */; // 0x4375c4
                    x0 = mem((PP + 0x10000), 0xc68) /* Obj!Alignment@11bdd  */; // 0x4375d0
                    x1 = x0; // 0x4375c8
                    local_m48 = x1; // 0x4375d4
                    memSet(x1, 0x13, w0); // 0x4375d8
                    x2 = mem((PP + 0x10000), 0xc70) /* Obj!Alignment@11bdc  */; // 0x4375e0
                    memSet(x1, 0x17, w2); // 0x4375e4
                    x3 = mem((PP + 0x10000), 0xc78) /* Obj!TileMode@1233e  */; // 0x4375ec
                    memSet(x1, 0x1b, w3); // 0x4375f0
                    x4 = local_m40; // 0x4375f4
                    memSet(x1, 7, w4); // 0x4375f8
                    d0 = 0.50000000 /* bits */; // 0x437600
                    d1 = local_m90; // 0x4375fc
                    d2 = ((local_m90) * (0.50000000 /* bits */)) /* float */; // 0x437604
                    local_m98 = d2; // 0x437608
                    AllocationStub_Radius() /* 0x352b04 */; // 0x43760c
                    d0 = local_m98; // 0x437610
                    local_m40 = x0; // 0x437614
                    memSet(x0, 7, d0); // 0x437618
                    memSet(x0, 0xf, d0); // 0x43761c
                    AllocationStub_Radius() /* 0x352b04 */; // 0x437620
                    d0 = local_m98; // 0x437624
                    local_m58 = x0; // 0x437628
                    memSet(x0, 7, d0); // 0x43762c
                    memSet(x0, 0xf, d0); // 0x437630
                    AllocationStub_BorderRadius() /* 0x392f28 */; // 0x437634
                    x0 = local_m40; // 0x43763c
                    x1 = x0; // 0x437638
                    local_m60 = x1; // 0x437640
                    memSet(x1, 7, w0); // 0x437644
                    x0 = local_m58; // 0x437648
                    memSet(x1, 0xb, w0); // 0x43764c
                    x0 = mem((PP + 0xa000), 0x510) /* Obj!Radius@120d9  */; // 0x437654
                    memSet(x1, 0xf, w0); // 0x437658
                    memSet(x1, 0x13, w0); // 0x43765c
                    AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x437660
                    x0 = local_m60; // 0x437668
                    x1 = x0; // 0x437664
                    local_m40 = x1; // 0x43766c
                    memSet(x1, 0x13, w0); // 0x437670
                    x0 = local_m48; // 0x437674
                    memSet(x1, 0x1b, w0); // 0x437678
                    x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x437680
                    memSet(x1, 0x23, w0); // 0x437684
                    AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x437688
                    x0 = "assets/images/3.0x/game_fruit_champion_crown.webp" /* pp+0x118a0 */; // 0x437694
                    x1 = x0; // 0x43768c
                    local_m48 = x1; // 0x437698
                    memSet(x1, 0xb, w0); // 0x43769c
                    x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x4376a4
                    memSet(x1, 0xf, w0); // 0x4376a8
                    x2 = mem((PP + 0xe000), 0xb68) /* Double */; // 0x4376b0
                    memSet(x1, 0x13, w2); // 0x4376b4
                    x2 = mem((PP + 0xf000), 0x310) /* Double */; // 0x4376bc
                    memSet(x1, 0x17, w2); // 0x4376c0
                    AllocationStub_Container() /* 0x391a04 */; // 0x4376c4
                    local_m58 = x0; // 0x4376c8
                    BARRIER = mem((PP + 0xe000), 0xb68) /* Double */; // 0x4376d0
                    LR = mem((PP + 0xf000), 0x310) /* Double */; // 0x4376d8
                    // frame: LR, BARRIER, mem(SP, 8) // 0x4376dc
                    BARRIER = local_m48; // 0x4376e0
                    local_0 = BARRIER; // 0x4376e4
                    x1 = x0; // 0x4376e8
                    x4 = mem((PP + 0x11000), 0x868) /* ImmutableArray */; // 0x4376f0
                    Container_ctor() /* 0x391490 */; // 0x4376f4
                    x1 = mem((PP + 0xf000), 0x5d8) /* TypeArguments */; // 0x4376fc
                    AllocationStub_Positioned() /* 0x399e40 */; // 0x437700
                    x0 = mem((PP + 0x11000), 0x898) /* Double */; // 0x43770c
                    x1 = x0; // 0x437704
                    local_m48 = x1; // 0x437710
                    memSet(x1, 0x17, w0); // 0x437714
                    x2 = local_m58; // 0x437718
                    memSet(x1, 0xb, w2); // 0x43771c
                    AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x437720
                    local_m58 = x0; // 0x437724
                    memSet(x0, 7, xzr); // 0x437728
                    d0 = 4630122629401935872; // 0x437730
                    x17 = PP + 0x11000; // 0x43772c
                    memSet(x0, 0xf, d0); // 0x437734
                    memSet(x0, 0x17, xzr); // 0x437738
                    memSet(x0, 0x1f, xzr); // 0x43773c
                    AllocationStub_Color() /* 0x31d844 */; // 0x437740
                    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x437748
                    x1 = x0; // 0x437744
                    memSet(x1, 0x27, w0); // 0x43774c
                    d0 = 1.00000000 /* bits */; // 0x437750
                    memSet(x1, 7, d0); // 0x437754
                    memSet(x1, 0xf, d0); // 0x437758
                    d1 = 4605663557749217947; // 0x437760
                    x17 = PP + 0xc000; // 0x43775c
                    memSet(x1, 0x17, d1); // 0x437764
                    d1 = 4597221516094774429; // 0x43776c
                    x17 = PP + 0xe000; // 0x437768
                    memSet(x1, 0x1f, d1); // 0x437770
                    BARRIER = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x437778
                    local_0 = BARRIER; // 0x43777c
                    x1 = NULL; // 0x437784
                    x2 = x1; // 0x437780
                    x4 = mem((PP + 0xf000), 0x818) /* ImmutableArray */; // 0x43778c
                    Border_factory_ctor_all() /* 0x391e08 */; // 0x437790
                    local_m60 = x0; // 0x437794
                    AllocationStub_Radius() /* 0x352b04 */; // 0x437798
                    d0 = 4630263366890291200; // 0x43779c
                    local_m68 = x0; // 0x4377a0
                    memSet(x0, 7, d0); // 0x4377a4
                    memSet(x0, 0xf, d0); // 0x4377a8
                    AllocationStub_BorderRadius() /* 0x392f28 */; // 0x4377ac
                    x0 = local_m68; // 0x4377b4
                    x1 = x0; // 0x4377b0
                    local_m70 = x1; // 0x4377b8
                    memSet(x1, 7, w0); // 0x4377bc
                    memSet(x1, 0xb, w0); // 0x4377c0
                    memSet(x1, 0xf, w0); // 0x4377c4
                    memSet(x1, 0x13, w0); // 0x4377c8
                    AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x4377cc
                    x0 = local_m60; // 0x4377d4
                    x1 = x0; // 0x4377d0
                    local_m68 = x1; // 0x4377d8
                    memSet(x1, 0xf, w0); // 0x4377dc
                    x0 = local_m70; // 0x4377e0
                    memSet(x1, 0x13, w0); // 0x4377e4
                    x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x4377ec
                    memSet(x1, 0x23, w0); // 0x4377f0
                    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x437800
                    w3 = mem((local_m10), 7); // 0x4377f8
                    x2 = local_m10; // 0x4377f4
                    x3 = ((mem((local_m10), 7)) & 0xffffffff) + (HEAP << 32); // 0x4377fc
                    if (w3 == w16) {
                      x9 = mem((PP + 0x11000), 0x928) /* Field */; // 0x4384ac
                      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4384b0
                    } else {
                      local_m60 = x3; // 0x43780c
                      AllocationStub_SoulAvatarImage() /* 0x3a67fc */; // 0x437810
                      x0 = local_m60; // 0x437818
                      x1 = x0; // 0x437814
                      local_m70 = x1; // 0x43781c
                      memSet(x1, 0xb, w0); // 0x437820
                      d0 = 4634485491540951040; // 0x437828
                      x17 = PP + 0x11000; // 0x437824
                      memSet(x1, 0x13, d0); // 0x43782c
                      x0 = NULL + 0x30; // 0x437830
                      memSet(x1, 0x1b, w0); // 0x437834
                      AllocationStub_Container() /* 0x391a04 */; // 0x437838
                      local_m60 = x0; // 0x43783c
                      BARRIER = mem((PP + 0x11000), 0x8b8) /* Double */; // 0x437844
                      LR = mem((PP + 0x11000), 0x8b8) /* Double */; // 0x43784c
                      // frame: LR, BARRIER, mem(SP, 0x18) // 0x437850
                      BARRIER = local_m58; // 0x437854
                      LR = local_m68; // 0x437858
                      // frame: LR, BARRIER, mem(SP, 8) // 0x43785c
                      BARRIER = local_m70; // 0x437860
                      local_0 = BARRIER; // 0x437864
                      x1 = x0; // 0x437868
                      x4 = mem((PP + 0x11000), 0x888) /* ImmutableArray */; // 0x437870
                      Container_ctor() /* 0x391490 */; // 0x437874
                      x1 = NULL; // 0x437878
                      x2 = 4; // 0x43787c
                      sub_0x61f920(); // 0x437880
                      x0 = local_m48; // 0x437888
                      x2 = x0; // 0x437884
                      local_m58 = x2; // 0x43788c
                      memSet(x2, 0xf, w0); // 0x437890
                      x0 = local_m60; // 0x437894
                      memSet(x2, 0x13, w0); // 0x437898
                      x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x43789c
                      AllocationStub__GrowableList() /* 0x61e854 */; // 0x4378a0
                      x0 = local_m58; // 0x4378a8
                      x1 = x0; // 0x4378a4
                      local_m48 = x1; // 0x4378ac
                      memSet(x1, 0xf, w0); // 0x4378b0
                      x2 = 4; // 0x4378b4
                      memSet(x1, 0xb, w2); // 0x4378b8
                      AllocationStub_Stack() /* 0x39e6f4 */; // 0x4378bc
                      x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x4378c8
                      x1 = x0; // 0x4378c0
                      local_m58 = x1; // 0x4378cc
                      memSet(x1, 0xf, w0); // 0x4378d0
                      x2 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x4378d8
                      memSet(x1, 0x17, w2); // 0x4378dc
                      x3 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x4378e4
                      memSet(x1, 0x1b, w3); // 0x4378e8
                      x4 = local_m48; // 0x4378ec
                      memSet(x1, 0xb, w4); // 0x4378f0
                      AllocationStub_SizedBox() /* 0x3949ec */; // 0x4378f4
                      x0 = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x437900
                      x3 = x0; // 0x4378f8
                      local_m48 = x3; // 0x437904
                      memSet(x3, 0x13, w0); // 0x437908
                      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x437918
                      w2 = mem((local_m10), 0xb); // 0x437910
                      x2 = ((mem((local_m10), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x437914
                      x4 = local_m10; // 0x43790c
                      if (w2 == w16) {
                        gotoLabel(0x4384b4);
                      } else {
                        gotoLabel(0x437924);
                      }
                      x9 = mem((PP + 0x11000), 0x938) /* Field */; // 0x4384c4
                      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4384c8
                      local_m10 = q0; // 0x4384cc
                      // frame: x5, x6, mem(SP, -0x10)! // 0x4384d0
                      // frame: x3, x4, mem(SP, -0x10)! // 0x4384d4
                      // frame: x1, x2, mem(SP, -0x10)! // 0x4384d8
                      local_m8 = x0; // 0x4384dc
                      AllocationStub__Double() /* 0x61f878 */; // 0x4384e0
                      x0 = local_0; // 0x4384e8
                      x7 = x0; // 0x4384e4
                      // frame: x1, x2, mem(SP), 0x10 // 0x4384ec
                      // frame: x3, x4, mem(SP), 0x10 // 0x4384f0
                      // frame: x5, x6, mem(SP), 0x10 // 0x4384f4
                      q0 = local_0; // 0x4384f8
                      memSet(x7, 7, d0); // 0x437a58
                      local_m10 = x7; // 0x437a5c
                      AllocationStub_Container() /* 0x391a04 */; // 0x437a60
                      local_m58 = x0; // 0x437a64
                      BARRIER = local_m40; // 0x437a68
                      LR = local_m10; // 0x437a6c
                      // frame: LR, BARRIER, mem(SP, 8) // 0x437a70
                      BARRIER = local_m48; // 0x437a74
                      local_0 = BARRIER; // 0x437a78
                      x1 = x0; // 0x437a7c
                      x4 = mem((PP + 0x11000), 0x8c0) /* ImmutableArray */; // 0x437a84
                      Container_ctor() /* 0x391490 */; // 0x437a88
                      AllocationStub_SizedBox() /* 0x3949ec */; // 0x437a8c
                      x0 = mem((PP + 0x11000), 0x898) /* Double */; // 0x437a98
                      x1 = x0; // 0x437a90
                      local_m10 = x1; // 0x437a9c
                      memSet(x1, 0xf, w0); // 0x437aa0
                      AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x437aa4
                      local_m40 = x0; // 0x437aa8
                      memSet(x0, 7, xzr); // 0x437aac
                      d0 = 25.00000000 /* bits */; // 0x437ab0
                      memSet(x0, 0xf, d0); // 0x437ab4
                      memSet(x0, 0x17, xzr); // 0x437ab8
                      memSet(x0, 0x1f, xzr); // 0x437abc
                      AllocationStub_Color() /* 0x31d844 */; // 0x437ac0
                      x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x437ac8
                      x1 = x0; // 0x437ac4
                      local_m48 = x1; // 0x437acc
                      memSet(x1, 0x27, w0); // 0x437ad0
                      d0 = 4602949035150289142; // 0x437ad8
                      x17 = PP + 0x11000; // 0x437ad4
                      memSet(x1, 7, d0); // 0x437adc
                      d0 = 4604533242548622999; // 0x437ae4
                      x17 = PP + 0x11000; // 0x437ae0
                      memSet(x1, 0xf, d0); // 0x437ae8
                      d0 = 4603826795548251156; // 0x437af0
                      x17 = PP + 0x11000; // 0x437aec
                      memSet(x1, 0x17, d0); // 0x437af4
                      d0 = 4603614861448139603; // 0x437afc
                      x17 = PP + 0x10000; // 0x437af8
                      memSet(x1, 0x1f, d0); // 0x437b00
                      AllocationStub_Color() /* 0x31d844 */; // 0x437b04
                      x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x437b0c
                      x3 = x0; // 0x437b08
                      local_m60 = x3; // 0x437b10
                      memSet(x3, 0x27, w0); // 0x437b14
                      memSet(x3, 7, xzr); // 0x437b18
                      d0 = 4604144696698418485; // 0x437b20
                      x17 = PP + 0x11000; // 0x437b1c
                      memSet(x3, 0xf, d0); // 0x437b24
                      d0 = 4602943736797786353; // 0x437b2c
                      x17 = PP + 0xe000; // 0x437b28
                      memSet(x3, 0x17, d0); // 0x437b30
                      d0 = 4602502207422553951; // 0x437b38
                      x17 = PP + 0x11000; // 0x437b34
                      memSet(x3, 0x1f, d0); // 0x437b3c
                      x1 = NULL; // 0x437b40
                      x2 = 4; // 0x437b44
                      sub_0x61f920(); // 0x437b48
                      x0 = local_m48; // 0x437b50
                      x2 = x0; // 0x437b4c
                      local_m68 = x2; // 0x437b54
                      memSet(x2, 0xf, w0); // 0x437b58
                      x0 = local_m60; // 0x437b5c
                      memSet(x2, 0x13, w0); // 0x437b60
                      x1 = mem((PP + 0x10000), 0xc58) /* TypeArguments */; // 0x437b68
                      AllocationStub__GrowableList() /* 0x61e854 */; // 0x437b6c
                      x0 = local_m68; // 0x437b74
                      x1 = x0; // 0x437b70
                      local_m48 = x1; // 0x437b78
                      memSet(x1, 0xf, w0); // 0x437b7c
                      x2 = 4; // 0x437b80
                      memSet(x1, 0xb, w2); // 0x437b84
                      AllocationStub_LinearGradient() /* 0x3a108c */; // 0x437b88
                      x0 = mem((PP + 0x10000), 0xc68) /* Obj!Alignment@11bdd  */; // 0x437b94
                      x1 = x0; // 0x437b8c
                      local_m60 = x1; // 0x437b98
                      memSet(x1, 0x13, w0); // 0x437b9c
                      x0 = mem((PP + 0x10000), 0xc70) /* Obj!Alignment@11bdc  */; // 0x437ba4
                      memSet(x1, 0x17, w0); // 0x437ba8
                      x0 = mem((PP + 0x10000), 0xc78) /* Obj!TileMode@1233e  */; // 0x437bb0
                      memSet(x1, 0x1b, w0); // 0x437bb4
                      x0 = local_m48; // 0x437bb8
                      memSet(x1, 7, w0); // 0x437bbc
                      AllocationStub_Radius() /* 0x352b04 */; // 0x437bc0
                      d0 = local_ma0; // 0x437bc4
                      local_m48 = x0; // 0x437bc8
                      memSet(x0, 7, d0); // 0x437bcc
                      memSet(x0, 0xf, d0); // 0x437bd0
                      AllocationStub_Radius() /* 0x352b04 */; // 0x437bd4
                      d0 = local_ma0; // 0x437bd8
                      local_m68 = x0; // 0x437bdc
                      memSet(x0, 7, d0); // 0x437be0
                      memSet(x0, 0xf, d0); // 0x437be4
                      AllocationStub_BorderRadius() /* 0x392f28 */; // 0x437be8
                      x0 = local_m48; // 0x437bf0
                      x1 = x0; // 0x437bec
                      local_m70 = x1; // 0x437bf4
                      memSet(x1, 7, w0); // 0x437bf8
                      x0 = local_m68; // 0x437bfc
                      memSet(x1, 0xb, w0); // 0x437c00
                      x0 = mem((PP + 0xa000), 0x510) /* Obj!Radius@120d9  */; // 0x437c08
                      memSet(x1, 0xf, w0); // 0x437c0c
                      memSet(x1, 0x13, w0); // 0x437c10
                      AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x437c14
                      x0 = local_m70; // 0x437c1c
                      x1 = x0; // 0x437c18
                      local_m48 = x1; // 0x437c20
                      memSet(x1, 0x13, w0); // 0x437c24
                      x0 = local_m60; // 0x437c28
                      memSet(x1, 0x1b, w0); // 0x437c2c
                      x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x437c34
                      memSet(x1, 0x23, w0); // 0x437c38
                      AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x437c3c
                      x0 = "assets/images/3.0x/game_fruit_thirdplace_crown.webp" /* pp+0x118e8 */; // 0x437c48
                      x1 = x0; // 0x437c40
                      local_m60 = x1; // 0x437c4c
                      memSet(x1, 0xb, w0); // 0x437c50
                      x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x437c58
                      memSet(x1, 0xf, w0); // 0x437c5c
                      x0 = mem((PP + 0x11000), 0x860) /* Double */; // 0x437c64
                      memSet(x1, 0x13, w0); // 0x437c68
                      x0 = mem((PP + 0x11000), 0x410) /* Double */; // 0x437c70
                      memSet(x1, 0x17, w0); // 0x437c74
                      AllocationStub_Container() /* 0x391a04 */; // 0x437c78
                      local_m68 = x0; // 0x437c7c
                      BARRIER = mem((PP + 0x11000), 0x860) /* Double */; // 0x437c84
                      LR = mem((PP + 0x11000), 0x410) /* Double */; // 0x437c8c
                      // frame: LR, BARRIER, mem(SP, 8) // 0x437c90
                      BARRIER = local_m60; // 0x437c94
                      local_0 = BARRIER; // 0x437c98
                      x1 = x0; // 0x437c9c
                      x4 = mem((PP + 0x11000), 0x868) /* ImmutableArray */; // 0x437ca4
                      Container_ctor() /* 0x391490 */; // 0x437ca8
                      x1 = mem((PP + 0xf000), 0x5d8) /* TypeArguments */; // 0x437cb0
                      AllocationStub_Positioned() /* 0x399e40 */; // 0x437cb4
                      x0 = mem((PP + 0x11000), 0x870) /* Double */; // 0x437cc0
                      x1 = x0; // 0x437cb8
                      local_m60 = x1; // 0x437cc4
                      memSet(x1, 0x17, w0); // 0x437cc8
                      x0 = local_m68; // 0x437ccc
                      memSet(x1, 0xb, w0); // 0x437cd0
                      AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x437cd4
                      local_m68 = x0; // 0x437cd8
                      memSet(x0, 7, xzr); // 0x437cdc
                      d0 = 20.00000000 /* bits */; // 0x437ce0
                      memSet(x0, 0xf, d0); // 0x437ce4
                      memSet(x0, 0x17, xzr); // 0x437ce8
                      memSet(x0, 0x1f, xzr); // 0x437cec
                      AllocationStub_Color() /* 0x31d844 */; // 0x437cf0
                      x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x437cf8
                      x1 = x0; // 0x437cf4
                      memSet(x1, 0x27, w0); // 0x437cfc
                      d0 = 1.00000000 /* bits */; // 0x437d00
                      memSet(x1, 7, d0); // 0x437d04
                      d0 = 4607005807049924447; // 0x437d0c
                      x17 = PP + 0x10000; // 0x437d08
                      memSet(x1, 0xf, d0); // 0x437d10
                      d0 = 4606087425949441052; // 0x437d18
                      x17 = PP + 0x10000; // 0x437d14
                      memSet(x1, 0x17, d0); // 0x437d1c
                      d0 = 4605628235399199354; // 0x437d24
                      x17 = PP + 0x11000; // 0x437d20
                      memSet(x1, 0x1f, d0); // 0x437d28
                      BARRIER = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x437d30
                      local_0 = BARRIER; // 0x437d34
                      x1 = NULL; // 0x437d3c
                      x2 = x1; // 0x437d38
                      x4 = mem((PP + 0xf000), 0x818) /* ImmutableArray */; // 0x437d44
                      Border_factory_ctor_all() /* 0x391e08 */; // 0x437d48
                      local_m70 = x0; // 0x437d4c
                      AllocationStub_Radius() /* 0x352b04 */; // 0x437d50
                      d0 = 30.00000000 /* bits */; // 0x437d54
                      local_m78 = x0; // 0x437d58
                      memSet(x0, 7, d0); // 0x437d5c
                      memSet(x0, 0xf, d0); // 0x437d60
                      AllocationStub_BorderRadius() /* 0x392f28 */; // 0x437d64
                      x0 = local_m78; // 0x437d6c
                      x1 = x0; // 0x437d68
                      local_m80 = x1; // 0x437d70
                      memSet(x1, 7, w0); // 0x437d74
                      memSet(x1, 0xb, w0); // 0x437d78
                      memSet(x1, 0xf, w0); // 0x437d7c
                      memSet(x1, 0x13, w0); // 0x437d80
                      AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x437d84
                      x0 = local_m70; // 0x437d8c
                      x1 = x0; // 0x437d88
                      local_m78 = x1; // 0x437d90
                      memSet(x1, 0xf, w0); // 0x437d94
                      x0 = local_m80; // 0x437d98
                      memSet(x1, 0x13, w0); // 0x437d9c
                      x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x437da4
                      memSet(x1, 0x23, w0); // 0x437da8
                      x0 = local_m20; // 0x437dac
                      if (w0 == w22) {
                        gotoLabel(0x437dd4);
                      } else {
                        gotoLabel(0x437db8);
                      }
                      x2 = local_m60; // 0x437dd8
                      local_m70 = x3; // 0x437ddc
                      AllocationStub_SoulAvatarImage() /* 0x3a67fc */; // 0x437de0
                      x0 = local_m70; // 0x437de8
                      x1 = x0; // 0x437de4
                      local_m80 = x1; // 0x437dec
                      memSet(x1, 0xb, w0); // 0x437df0
                      d0 = 4633078116657397760; // 0x437df8
                      x17 = PP + 0x11000; // 0x437df4
                      memSet(x1, 0x13, d0); // 0x437dfc
                      x0 = NULL + 0x30; // 0x437e00
                      memSet(x1, 0x1b, w0); // 0x437e04
                      AllocationStub_Container() /* 0x391a04 */; // 0x437e08
                      local_m70 = x0; // 0x437e0c
                      BARRIER = mem((PP + 0x10000), 0x350) /* Double */; // 0x437e14
                      LR = mem((PP + 0x10000), 0x350) /* Double */; // 0x437e1c
                      // frame: LR, BARRIER, mem(SP, 0x18) // 0x437e20
                      BARRIER = local_m68; // 0x437e24
                      LR = local_m78; // 0x437e28
                      // frame: LR, BARRIER, mem(SP, 8) // 0x437e2c
                      BARRIER = local_m80; // 0x437e30
                      local_0 = BARRIER; // 0x437e34
                      x1 = x0; // 0x437e38
                      x4 = mem((PP + 0x11000), 0x888) /* ImmutableArray */; // 0x437e40
                      Container_ctor() /* 0x391490 */; // 0x437e44
                      x1 = NULL; // 0x437e48
                      x2 = 4; // 0x437e4c
                      sub_0x61f920(); // 0x437e50
                      x0 = local_m60; // 0x437e58
                      x2 = x0; // 0x437e54
                      local_m68 = x2; // 0x437e5c
                      memSet(x2, 0xf, w0); // 0x437e60
                      x0 = local_m70; // 0x437e64
                      memSet(x2, 0x13, w0); // 0x437e68
                      x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x437e6c
                      AllocationStub__GrowableList() /* 0x61e854 */; // 0x437e70
                      x0 = local_m68; // 0x437e78
                      x1 = x0; // 0x437e74
                      local_m60 = x1; // 0x437e7c
                      memSet(x1, 0xf, w0); // 0x437e80
                      x2 = 4; // 0x437e84
                      memSet(x1, 0xb, w2); // 0x437e88
                      AllocationStub_Stack() /* 0x39e6f4 */; // 0x437e8c
                      x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x437e98
                      x1 = x0; // 0x437e90
                      local_m68 = x1; // 0x437e9c
                      memSet(x1, 0xf, w0); // 0x437ea0
                      x0 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x437ea8
                      memSet(x1, 0x17, w0); // 0x437eac
                      x0 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x437eb4
                      memSet(x1, 0x1b, w0); // 0x437eb8
                      x0 = local_m60; // 0x437ebc
                      memSet(x1, 0xb, w0); // 0x437ec0
                      AllocationStub_SizedBox() /* 0x3949ec */; // 0x437ec4
                      x0 = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x437ed0
                      x2 = x0; // 0x437ec8
                      local_m60 = x2; // 0x437ed4
                      memSet(x2, 0x13, w0); // 0x437ed8
                      x0 = local_m20; // 0x437edc
                      if (w0 == w22) {
                        gotoLabel(0x437f04);
                      } else {
                        gotoLabel(0x437ee8);
                      }
                      x1 = local_m8; // 0x437f1c
                      PageGameFruitRankingState_userFlexibleWidget() /* 0x438880 */; // 0x437f20
                      local_m70 = x0; // 0x437f24
                      AllocationStub_SizedBox() /* 0x3949ec */; // 0x437f28
                      x0 = mem((PP + 0x10000), 0x940) /* Double */; // 0x437f34
                      x4 = x0; // 0x437f2c
                      local_m78 = x4; // 0x437f38
                      memSet(x4, 0x13, w0); // 0x437f3c
                      x0 = local_m20; // 0x437f40
                      if (w0 == w22) {
                        gotoLabel(0x437f78);
                      } else {
                        gotoLabel(0x437f4c);
                      }
                      x0 = local_m78; // 0x437fb0
                      x10 = local_m50; // 0x437f94
                      x11 = local_m28; // 0x437f90
                      x2 = 10; // 0x437fb8
                      x3 = local_m70; // 0x437fac
                      x4 = local_m60; // 0x437fa8
                      x5 = local_m68; // 0x437fa4
                      x6 = local_m10; // 0x437fa0
                      x7 = local_m58; // 0x437f9c
                      x8 = 10; // 0x437fb4
                      x9 = local_m38; // 0x437f98
                      local_m20 = x12; // 0x437fbc
                      x1 = NULL; // 0x437fc0
                      sub_0x61f920(); // 0x437fc4
                      x0 = local_m68; // 0x437fcc
                      x2 = x0; // 0x437fc8
                      local_m80 = x2; // 0x437fd0
                      memSet(x2, 0xf, w0); // 0x437fd4
                      x0 = local_m60; // 0x437fd8
                      memSet(x2, 0x13, w0); // 0x437fdc
                      x0 = local_m70; // 0x437fe0
                      memSet(x2, 0x17, w0); // 0x437fe4
                      x0 = local_m78; // 0x437fe8
                      memSet(x2, 0x1b, w0); // 0x437fec
                      x0 = local_m20; // 0x437ff0
                      memSet(x2, 0x1f, w0); // 0x437ff4
                      x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x437ff8
                      AllocationStub__GrowableList() /* 0x61e854 */; // 0x437ffc
                      x0 = local_m80; // 0x438004
                      x1 = x0; // 0x438000
                      local_m20 = x1; // 0x438008
                      memSet(x1, 0xf, w0); // 0x43800c
                      x2 = 10; // 0x438010
                      memSet(x1, 0xb, w2); // 0x438014
                      AllocationStub_Column() /* 0x39310c */; // 0x438018
                      x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x438024
                      x1 = x0; // 0x43801c
                      local_m60 = x1; // 0x438028
                      memSet(x1, 0xf, w0); // 0x43802c
                      x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x438034
                      memSet(x1, 0x13, w2); // 0x438038
                      x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x438040
                      memSet(x1, 0x17, w3); // 0x438044
                      x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x43804c
                      memSet(x1, 0x1b, w4); // 0x438050
                      x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x438058
                      memSet(x1, 0x23, w5); // 0x43805c
                      x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x438064
                      memSet(x1, 0x2b, w6); // 0x438068
                      memSet(x1, 0x2f, xzr); // 0x43806c
                      x7 = local_m20; // 0x438070
                      memSet(x1, 0xb, w7); // 0x438074
                      AllocationStub_Container() /* 0x391a04 */; // 0x438078
                      local_m20 = x0; // 0x43807c
                      BARRIER = local_m40; // 0x438080
                      LR = local_m48; // 0x438084
                      // frame: LR, BARRIER, mem(SP, 0x10) // 0x438088
                      BARRIER = local_m18; // 0x43808c
                      LR = local_m60; // 0x438090
                      // frame: LR, BARRIER, mem(SP) // 0x438094
                      x1 = x0; // 0x438098
                      x4 = mem((PP + 0x11000), 0x890) /* ImmutableArray */; // 0x4380a0
                      Container_ctor() /* 0x391490 */; // 0x4380a4
                      x1 = NULL; // 0x4380a8
                      x2 = 10; // 0x4380ac
                      sub_0x61f920(); // 0x4380b0
                      x0 = local_m50; // 0x4380b8
                      x2 = x0; // 0x4380b4
                      local_m18 = x2; // 0x4380bc
                      memSet(x2, 0xf, w0); // 0x4380c0
                      x0 = local_m38; // 0x4380c4
                      memSet(x2, 0x13, w0); // 0x4380c8
                      x0 = local_m58; // 0x4380cc
                      memSet(x2, 0x17, w0); // 0x4380d0
                      x0 = local_m10; // 0x4380d4
                      memSet(x2, 0x1b, w0); // 0x4380d8
                      x0 = local_m20; // 0x4380dc
                      memSet(x2, 0x1f, w0); // 0x4380e0
                      x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x4380e4
                      AllocationStub__GrowableList() /* 0x61e854 */; // 0x4380e8
                      x0 = local_m18; // 0x4380f0
                      x1 = x0; // 0x4380ec
                      local_m10 = x1; // 0x4380f4
                      memSet(x1, 0xf, w0); // 0x4380f8
                      x0 = 10; // 0x4380fc
                      memSet(x1, 0xb, w0); // 0x438100
                      AllocationStub_Row() /* 0x3a1414 */; // 0x438104
                      x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x43810c
                      x1 = x0; // 0x438108
                      local_m18 = x1; // 0x438110
                      memSet(x1, 0xf, w0); // 0x438114
                      x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x43811c
                      memSet(x1, 0x13, w0); // 0x438120
                      x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x438128
                      memSet(x1, 0x17, w2); // 0x43812c
                      x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x438134
                      memSet(x1, 0x1b, w3); // 0x438138
                      x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x438140
                      memSet(x1, 0x23, w4); // 0x438144
                      x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x43814c
                      memSet(x1, 0x2b, w5); // 0x438150
                      memSet(x1, 0x2f, xzr); // 0x438154
                      x6 = local_m10; // 0x438158
                      memSet(x1, 0xb, w6); // 0x43815c
                      AllocationStub_Container() /* 0x391a04 */; // 0x438160
                      local_m10 = x0; // 0x438164
                      BARRIER = local_m30; // 0x438168
                      LR = mem((PP + 0x11000), 0x8f8) /* Double */; // 0x438170
                      // frame: LR, BARRIER, mem(SP, 0x10) // 0x438174
                      BARRIER = mem(PP, 0x5458) /* Double */; // 0x438178
                      LR = local_m18; // 0x43817c
                      // frame: LR, BARRIER, mem(SP) // 0x438180
                      x1 = x0; // 0x438184
                      x4 = mem((PP + 0x11000), 0x900) /* ImmutableArray */; // 0x43818c
                      Container_ctor() /* 0x391490 */; // 0x438190
                      w1 = mem((local_m28), 0x13); // 0x438198
                      w2 = mem((((mem((local_m28), 0x13)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x4381a0
                      x0 = local_m28; // 0x438194
                      x1 = ((mem((local_m28), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x43819c
                      x2 = (mem((((mem((local_m28), 0x13)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x4381a0
                      x3 = (((mem((((mem((local_m28), 0x13)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x4381a4
                      local_m88 = x3; // 0x4381a8
                      if (x3 <= 3) {
                        gotoLabel(0x4382f0);
                      } else {
                        gotoLabel(0x4381b4);
                      }
                      x0 = local_m10; // 0x438350
                      x2 = 4; // 0x438358
                      x3 = 4; // 0x438354
                      local_m8 = x4; // 0x43835c
                      x1 = NULL; // 0x438360
                      sub_0x61f920(); // 0x438364
                      x0 = local_m10; // 0x43836c
                      x2 = x0; // 0x438368
                      local_m18 = x2; // 0x438370
                      memSet(x2, 0xf, w0); // 0x438374
                      x0 = local_m8; // 0x438378
                      memSet(x2, 0x13, w0); // 0x43837c
                      x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x438380
                      AllocationStub__GrowableList() /* 0x61e854 */; // 0x438384
                      x0 = local_m18; // 0x43838c
                      x1 = x0; // 0x438388
                      local_m8 = x1; // 0x438390
                      memSet(x1, 0xf, w0); // 0x438394
                      x0 = 4; // 0x438398
                      memSet(x1, 0xb, w0); // 0x43839c
                      AllocationStub_Column() /* 0x39310c */; // 0x4383a0
                      x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x4383ac
                      x1 = x0; // 0x4383a4
                      local_m10 = x1; // 0x4383b0
                      memSet(x1, 0xf, w0); // 0x4383b4
                      x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x4383bc
                      memSet(x1, 0x13, w0); // 0x4383c0
                      x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x4383c8
                      memSet(x1, 0x17, w0); // 0x4383cc
                      x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x4383d4
                      memSet(x1, 0x1b, w0); // 0x4383d8
                      x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x4383e0
                      memSet(x1, 0x23, w0); // 0x4383e4
                      x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x4383ec
                      memSet(x1, 0x2b, w0); // 0x4383f0
                      memSet(x1, 0x2f, xzr); // 0x4383f4
                      x0 = local_m8; // 0x4383f8
                      memSet(x1, 0xb, w0); // 0x4383fc
                      AllocationStub_Container() /* 0x391a04 */; // 0x438400
                      local_m8 = x0; // 0x438404
                      BARRIER = local_m10; // 0x438408
                      local_0 = BARRIER; // 0x43840c
                      x1 = x0; // 0x438410
                      x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x438418
                      Container_ctor() /* 0x391490 */; // 0x43841c
                      SP = FP; // 0x438424
                      x0 = local_m8; // 0x438420
                      // frame: FP, LR, mem(SP), 0x10 // 0x438428
                      return;
                    }
                    x9 = mem((PP + 0x11000), 0x930) /* Field */; // 0x4384b8
                    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4384bc
                  } else {
                    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x437368
                    x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x437364
                    if (w3 == w16) {
                      x9 = mem((PP + 0x11000), 0x938) /* Field */; // 0x43846c
                      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x438470
                    } else {
                      x1 = local_m8; // 0x437374
                      x2 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x43737c
                      PageGameFruitRankingState_coinLabelWidget() /* 0x4386e8 */; // 0x437380
                      x9 = x0; // 0x437384
                      gotoLabel(0x4373a4);
                    }
                  }
                }
              }
            }
          }
        }
      } else {
        x0 = x5; // 0x436e10
        x1 = 0; // 0x436e14
        if (x1 >= x0) {
          RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x438444
        } else {
          w4 = mem(((w6 & 0xffffffff) + (HEAP << 32)), 0xf); // 0x436e28
          x0 = x5; // 0x436e30
          x1 = 1; // 0x436e34
          x4 = ((mem(((w6 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x436e2c
          x6 = (w6 & 0xffffffff) + (HEAP << 32); // 0x436e24
          if (x1 >= x0) {
            RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x438448
          } else {
            x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x436e44
            x1 = x4; // 0x436e48
            gotoLabel(0x436e74);
          }
        }
      }
    }
  } else {
    x0 = x5; // 0x436da8
    x1 = 0; // 0x436dac
    if (x1 >= x0) {
      RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x438438
    } else {
      w4 = mem(((w6 & 0xffffffff) + (HEAP << 32)), 0xf); // 0x436dc0
      x0 = x5; // 0x436dc8
      x1 = 1; // 0x436dcc
      x4 = ((mem(((w6 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x436dc4
      x6 = (w6 & 0xffffffff) + (HEAP << 32); // 0x436dbc
      if (x1 >= x0) {
        RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x43843c
      } else {
        x0 = x5; // 0x436de0
        x1 = 2; // 0x436de4
        x7 = (w7 & 0xffffffff) + (HEAP << 32); // 0x436ddc
        if (x1 >= x0) {
          RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x438440
        } else {
          x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x436df4
          x1 = x7; // 0x436df8
          gotoLabel(0x436e80);
        }
      }
    }
  }
}

// PageGameFruitRankingState_rankListEmptyWidget
// raw disassembly:
//  0x438528: stp FP, LR, [SP, #-0x10]!
//  0x43852c: mov FP, SP
//  0x438530: sub SP, SP, #0x38
//  0x438534: stur x2, [FP, #-8]
//  0x438538: ldr BARRIER, [THR, #0x38]
//  0x43853c: cmp SP, BARRIER
//  0x438540: b.ls #0x4386e0
//  0x438544: bl #0x3a142c
//  0x438548: mov x1, x0
//  0x43854c: add x0, PP, #0xf, lsl #12
//  0x438550: ldr x0, [x0, #0x268]
//  0x438554: stur x1, [FP, #-0x10]
//  0x438558: stur w0, [x1, #0xb]
//  0x43855c: add x0, PP, #0xf, lsl #12
//  0x438560: ldr x0, [x0, #0x170]
//  0x438564: stur w0, [x1, #0xf]
//  0x438568: add x0, PP, #0xf, lsl #12
//  0x43856c: ldr x0, [x0, #0x270]
//  0x438570: stur w0, [x1, #0x13]
//  0x438574: add x0, PP, #0xf, lsl #12
//  0x438578: ldr x0, [x0, #0x278]
//  0x43857c: stur w0, [x1, #0x17]
//  0x438580: bl #0x391a04
//  0x438584: stur x0, [FP, #-0x18]
//  0x438588: ldur BARRIER, [FP, #-0x10]
//  0x43858c: str BARRIER, [SP]
//  0x438590: mov x1, x0
//  0x438594: add x4, PP, #0xc, lsl #12
//  0x438598: ldr x4, [x4, #0x1f8]
//  0x43859c: bl #0x391490
//  0x4385a0: bl #0x3949ec
//  0x4385a4: mov x1, x0
//  0x4385a8: add x0, PP, #0xe, lsl #12
//  0x4385ac: ldr x0, [x0, #0xb50]
//  0x4385b0: stur x1, [FP, #-0x10]
//  0x4385b4: stur w0, [x1, #0x13]
//  0x4385b8: bl #0x31abec
//  0x4385bc: mov x1, x0
//  0x4385c0: add x0, NULL, #0x20
//  0x4385c4: stur x1, [FP, #-0x20]
//  0x4385c8: stur w0, [x1, #7]
//  0x4385cc: ldr x0, [PP, #0x6050]
//  0x4385d0: stur w0, [x1, #0xb]
//  0x4385d4: add x0, PP, #0xe, lsl #12
//  0x4385d8: ldr x0, [x0, #0xde8]
//  0x4385dc: stur w0, [x1, #0x1f]
//  0x4385e0: bl #0x393bf8
//  0x4385e4: mov x3, x0
//  0x4385e8: ldur x0, [FP, #-8]
//  0x4385ec: stur x3, [FP, #-0x28]
//  0x4385f0: stur w0, [x3, #0xb]
//  0x4385f4: ldur x0, [FP, #-0x20]
//  0x4385f8: stur w0, [x3, #0x13]
//  0x4385fc: mov x1, NULL
//  0x438600: mov x2, #6
//  0x438604: bl #0x61f920
//  0x438608: mov x2, x0
//  0x43860c: ldur x0, [FP, #-0x18]
//  0x438610: stur x2, [FP, #-8]
//  0x438614: stur w0, [x2, #0xf]
//  0x438618: ldur x0, [FP, #-0x10]
//  0x43861c: stur w0, [x2, #0x13]
//  0x438620: ldur x0, [FP, #-0x28]
//  0x438624: stur w0, [x2, #0x17]
//  0x438628: ldr x1, [PP, #0x5c58]
//  0x43862c: bl #0x61e854
//  0x438630: mov x1, x0
//  0x438634: ldur x0, [FP, #-8]
//  0x438638: stur x1, [FP, #-0x10]
//  0x43863c: stur w0, [x1, #0xf]
//  0x438640: mov x0, #6
//  0x438644: stur w0, [x1, #0xb]
//  0x438648: bl #0x39310c
//  0x43864c: mov x1, x0
//  0x438650: add x0, PP, #0xa, lsl #12
//  0x438654: ldr x0, [x0, #0x858]
//  0x438658: stur x1, [FP, #-8]
//  0x43865c: stur w0, [x1, #0xf]
//  0x438660: add x0, PP, #0xf, lsl #12
//  0x438664: ldr x0, [x0, #0x288]
//  0x438668: stur w0, [x1, #0x13]
//  0x43866c: add x0, PP, #0xe, lsl #12
//  0x438670: ldr x0, [x0, #0xae8]
//  0x438674: stur w0, [x1, #0x17]
//  0x438678: add x0, PP, #0xe, lsl #12
//  0x43867c: ldr x0, [x0, #0xb60]
//  0x438680: stur w0, [x1, #0x1b]
//  0x438684: add x0, PP, #0xe, lsl #12
//  0x438688: ldr x0, [x0, #0xaf8]
//  0x43868c: stur w0, [x1, #0x23]
//  0x438690: add x0, PP, #0xa, lsl #12
//  0x438694: ldr x0, [x0, #0xa8]
//  0x438698: stur w0, [x1, #0x2b]
//  0x43869c: stur xzr, [x1, #0x2f]
//  0x4386a0: ldur x0, [FP, #-0x10]
//  0x4386a4: stur w0, [x1, #0xb]
//  0x4386a8: bl #0x391a04
//  0x4386ac: stur x0, [FP, #-0x10]
//  0x4386b0: add BARRIER, PP, #0xa, lsl #12
//  0x4386b4: ldr BARRIER, [BARRIER, #0x3c0]
//  0x4386b8: ldur LR, [FP, #-8]
//  0x4386bc: stp LR, BARRIER, [SP]
//  0x4386c0: mov x1, x0
//  0x4386c4: add x4, PP, #0xf, lsl #12
//  0x4386c8: ldr x4, [x4, #0x568]
//  0x4386cc: bl #0x391490
//  0x4386d0: ldur x0, [FP, #-0x10]
//  0x4386d4: mov SP, FP
//  0x4386d8: ldp FP, LR, [SP], #0x10
//  0x4386dc: ret 
//  0x4386e0: bl #0x61fa28
//  0x4386e4: b #0x438544
//
dynamic PageGameFruitRankingState_rankListEmptyWidget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x438528
  // frame: FP = SP // 0x43852c
  // frame: SP = SP - 0x38 // 0x438530
  local_m8 = x2; // 0x438534
  BARRIER = mem(THR, 0x38); // 0x438538
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4386e0
  }
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x438544
  x0 = "assets/images/3.0x/game_fruit_empty.webp" /* pp+0xf268 */; // 0x438550
  x1 = x0; // 0x438548
  local_m10 = x1; // 0x438554
  memSet(x1, 0xb, w0); // 0x438558
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x438560
  memSet(x1, 0xf, w0); // 0x438564
  x0 = mem((PP + 0xf000), 0x270) /* Double */; // 0x43856c
  memSet(x1, 0x13, w0); // 0x438570
  x0 = mem((PP + 0xf000), 0x278) /* Double */; // 0x438578
  memSet(x1, 0x17, w0); // 0x43857c
  AllocationStub_Container() /* 0x391a04 */; // 0x438580
  local_m18 = x0; // 0x438584
  BARRIER = local_m10; // 0x438588
  local_0 = BARRIER; // 0x43858c
  x1 = x0; // 0x438590
  x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x438598
  Container_ctor() /* 0x391490 */; // 0x43859c
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x4385a0
  x0 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x4385ac
  x1 = x0; // 0x4385a4
  local_m10 = x1; // 0x4385b0
  memSet(x1, 0x13, w0); // 0x4385b4
  AllocationStub_TextStyle() /* 0x31abec */; // 0x4385b8
  x0 = NULL + 0x20; // 0x4385c0
  x1 = x0; // 0x4385bc
  local_m20 = x1; // 0x4385c4
  memSet(x1, 7, w0); // 0x4385c8
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x4385cc
  memSet(x1, 0xb, w0); // 0x4385d0
  x0 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x4385d8
  memSet(x1, 0x1f, w0); // 0x4385dc
  AllocationStub_Text() /* 0x393bf8 */; // 0x4385e0
  x0 = local_m8; // 0x4385e8
  x3 = x0; // 0x4385e4
  local_m28 = x3; // 0x4385ec
  memSet(x3, 0xb, w0); // 0x4385f0
  x0 = local_m20; // 0x4385f4
  memSet(x3, 0x13, w0); // 0x4385f8
  x1 = NULL; // 0x4385fc
  x2 = 6; // 0x438600
  sub_0x61f920(); // 0x438604
  x0 = local_m18; // 0x43860c
  x2 = x0; // 0x438608
  local_m8 = x2; // 0x438610
  memSet(x2, 0xf, w0); // 0x438614
  x0 = local_m10; // 0x438618
  memSet(x2, 0x13, w0); // 0x43861c
  x0 = local_m28; // 0x438620
  memSet(x2, 0x17, w0); // 0x438624
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x438628
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x43862c
  x0 = local_m8; // 0x438634
  x1 = x0; // 0x438630
  local_m10 = x1; // 0x438638
  memSet(x1, 0xf, w0); // 0x43863c
  x0 = 6; // 0x438640
  memSet(x1, 0xb, w0); // 0x438644
  AllocationStub_Column() /* 0x39310c */; // 0x438648
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x438654
  x1 = x0; // 0x43864c
  local_m8 = x1; // 0x438658
  memSet(x1, 0xf, w0); // 0x43865c
  x0 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x438664
  memSet(x1, 0x13, w0); // 0x438668
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x438670
  memSet(x1, 0x17, w0); // 0x438674
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x43867c
  memSet(x1, 0x1b, w0); // 0x438680
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x438688
  memSet(x1, 0x23, w0); // 0x43868c
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x438694
  memSet(x1, 0x2b, w0); // 0x438698
  memSet(x1, 0x2f, xzr); // 0x43869c
  x0 = local_m10; // 0x4386a0
  memSet(x1, 0xb, w0); // 0x4386a4
  AllocationStub_Container() /* 0x391a04 */; // 0x4386a8
  local_m10 = x0; // 0x4386ac
  BARRIER = mem((PP + 0xa000), 0x3c0) /* Obj!Color@120b8  */; // 0x4386b4
  LR = local_m8; // 0x4386b8
  // frame: LR, BARRIER, mem(SP) // 0x4386bc
  x1 = x0; // 0x4386c0
  x4 = mem((PP + 0xf000), 0x568) /* ImmutableArray */; // 0x4386c8
  Container_ctor() /* 0x391490 */; // 0x4386cc
  SP = FP; // 0x4386d4
  x0 = local_m10; // 0x4386d0
  // frame: FP, LR, mem(SP), 0x10 // 0x4386d8
  return;
}

// PageGameFruitRankingState_coinLabelWidget
// raw disassembly:
//  0x4386e8: stp FP, LR, [SP, #-0x10]!
//  0x4386ec: mov FP, SP
//  0x4386f0: sub SP, SP, #0x30
//  0x4386f4: stur x2, [FP, #-8]
//  0x4386f8: stur x3, [FP, #-0x10]
//  0x4386fc: bl #0x3a142c
//  0x438700: mov x1, x0
//  0x438704: add x0, PP, #0xf, lsl #12
//  0x438708: ldr x0, [x0, #0x248]
//  0x43870c: stur x1, [FP, #-0x18]
//  0x438710: stur w0, [x1, #0xb]
//  0x438714: add x0, PP, #0xf, lsl #12
//  0x438718: ldr x0, [x0, #0x170]
//  0x43871c: stur w0, [x1, #0xf]
//  0x438720: add x0, PP, #0xe, lsl #12
//  0x438724: ldr x0, [x0, #0xde8]
//  0x438728: stur w0, [x1, #0x13]
//  0x43872c: stur w0, [x1, #0x17]
//  0x438730: bl #0x3949ec
//  0x438734: mov x1, x0
//  0x438738: add x0, PP, #0x10, lsl #12
//  0x43873c: ldr x0, [x0, #0x940]
//  0x438740: stur x1, [FP, #-0x20]
//  0x438744: stur w0, [x1, #0xf]
//  0x438748: bl #0x31abec
//  0x43874c: mov x1, x0
//  0x438750: add x0, NULL, #0x20
//  0x438754: stur x1, [FP, #-0x28]
//  0x438758: stur w0, [x1, #7]
//  0x43875c: ldr x0, [PP, #0x6050]
//  0x438760: stur w0, [x1, #0xb]
//  0x438764: ldr x0, [PP, #0x7598]
//  0x438768: stur w0, [x1, #0x1f]
//  0x43876c: add x0, PP, #0xe, lsl #12
//  0x438770: ldr x0, [x0, #0xe40]
//  0x438774: stur w0, [x1, #0x23]
//  0x438778: bl #0x393bf8
//  0x43877c: mov x2, x0
//  0x438780: ldur x0, [FP, #-0x10]
//  0x438784: stur x2, [FP, #-0x30]
//  0x438788: stur w0, [x2, #0xb]
//  0x43878c: ldur x0, [FP, #-0x28]
//  0x438790: stur w0, [x2, #0x13]
//  0x438794: add x0, PP, #0xf, lsl #12
//  0x438798: ldr x0, [x0, #0x230]
//  0x43879c: stur w0, [x2, #0x2b]
//  0x4387a0: mov x0, #2
//  0x4387a4: stur w0, [x2, #0x37]
//  0x4387a8: add x1, PP, #0xe, lsl #12
//  0x4387ac: ldr x1, [x1, #0xad0]
//  0x4387b0: bl #0x3a1420
//  0x4387b4: mov x3, x0
//  0x4387b8: mov x0, #1
//  0x4387bc: stur x3, [FP, #-0x10]
//  0x4387c0: stur x0, [x3, #0x13]
//  0x4387c4: add x0, PP, #0x10, lsl #12
//  0x4387c8: ldr x0, [x0, #0x950]
//  0x4387cc: stur w0, [x3, #0x1b]
//  0x4387d0: ldur x0, [FP, #-0x30]
//  0x4387d4: stur w0, [x3, #0xb]
//  0x4387d8: mov x1, NULL
//  0x4387dc: mov x2, #6
//  0x4387e0: bl #0x61f920
//  0x4387e4: mov x2, x0
//  0x4387e8: ldur x0, [FP, #-0x18]
//  0x4387ec: stur x2, [FP, #-0x28]
//  0x4387f0: stur w0, [x2, #0xf]
//  0x4387f4: ldur x0, [FP, #-0x20]
//  0x4387f8: stur w0, [x2, #0x13]
//  0x4387fc: ldur x0, [FP, #-0x10]
//  0x438800: stur w0, [x2, #0x17]
//  0x438804: ldr x1, [PP, #0x5c58]
//  0x438808: bl #0x61e854
//  0x43880c: mov x1, x0
//  0x438810: ldur x0, [FP, #-0x28]
//  0x438814: stur x1, [FP, #-0x10]
//  0x438818: stur w0, [x1, #0xf]
//  0x43881c: mov x0, #6
//  0x438820: stur w0, [x1, #0xb]
//  0x438824: bl #0x3a1414
//  0x438828: ldr x1, [PP, #0x5140]
//  0x43882c: stur w1, [x0, #0xf]
//  0x438830: ldur x1, [FP, #-8]
//  0x438834: stur w1, [x0, #0x13]
//  0x438838: add x1, PP, #0xe, lsl #12
//  0x43883c: ldr x1, [x1, #0xae8]
//  0x438840: stur w1, [x0, #0x17]
//  0x438844: add x1, PP, #0xe, lsl #12
//  0x438848: ldr x1, [x1, #0xb60]
//  0x43884c: stur w1, [x0, #0x1b]
//  0x438850: add x1, PP, #0xe, lsl #12
//  0x438854: ldr x1, [x1, #0xaf8]
//  0x438858: stur w1, [x0, #0x23]
//  0x43885c: add x1, PP, #0xa, lsl #12
//  0x438860: ldr x1, [x1, #0xa8]
//  0x438864: stur w1, [x0, #0x2b]
//  0x438868: stur xzr, [x0, #0x2f]
//  0x43886c: ldur x1, [FP, #-0x10]
//  0x438870: stur w1, [x0, #0xb]
//  0x438874: mov SP, FP
//  0x438878: ldp FP, LR, [SP], #0x10
//  0x43887c: ret 
//
dynamic PageGameFruitRankingState_coinLabelWidget() {
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4386e8
  // frame: FP = SP // 0x4386ec
  // frame: SP = SP - 0x30 // 0x4386f0
  local_m8 = x2; // 0x4386f4
  local_m10 = x3; // 0x4386f8
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x4386fc
  x0 = "assets/images/3.0x/party_icon_soulcoin_big.webp" /* pp+0xf248 */; // 0x438708
  x1 = x0; // 0x438700
  local_m18 = x1; // 0x43870c
  memSet(x1, 0xb, w0); // 0x438710
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x438718
  memSet(x1, 0xf, w0); // 0x43871c
  x0 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x438724
  memSet(x1, 0x13, w0); // 0x438728
  memSet(x1, 0x17, w0); // 0x43872c
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x438730
  x0 = mem((PP + 0x10000), 0x940) /* Double */; // 0x43873c
  x1 = x0; // 0x438734
  local_m20 = x1; // 0x438740
  memSet(x1, 0xf, w0); // 0x438744
  AllocationStub_TextStyle() /* 0x31abec */; // 0x438748
  x0 = NULL + 0x20; // 0x438750
  x1 = x0; // 0x43874c
  local_m28 = x1; // 0x438754
  memSet(x1, 7, w0); // 0x438758
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x43875c
  memSet(x1, 0xb, w0); // 0x438760
  x0 = mem(PP, 0x7598) /* Double */; // 0x438764
  memSet(x1, 0x1f, w0); // 0x438768
  x0 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x438770
  memSet(x1, 0x23, w0); // 0x438774
  AllocationStub_Text() /* 0x393bf8 */; // 0x438778
  x0 = local_m10; // 0x438780
  x2 = x0; // 0x43877c
  local_m30 = x2; // 0x438784
  memSet(x2, 0xb, w0); // 0x438788
  x0 = local_m28; // 0x43878c
  memSet(x2, 0x13, w0); // 0x438790
  x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x438798
  memSet(x2, 0x2b, w0); // 0x43879c
  x0 = 2; // 0x4387a0
  memSet(x2, 0x37, w0); // 0x4387a4
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x4387ac
  AllocationStub_Flexible() /* 0x3a1420 */; // 0x4387b0
  x0 = 1; // 0x4387b8
  x3 = x0; // 0x4387b4
  local_m10 = x3; // 0x4387bc
  memSet(x3, 0x13, x0); // 0x4387c0
  x0 = mem((PP + 0x10000), 0x950) /* Obj!FlexFit@12273  */; // 0x4387c8
  memSet(x3, 0x1b, w0); // 0x4387cc
  x0 = local_m30; // 0x4387d0
  memSet(x3, 0xb, w0); // 0x4387d4
  x1 = NULL; // 0x4387d8
  x2 = 6; // 0x4387dc
  sub_0x61f920(); // 0x4387e0
  x0 = local_m18; // 0x4387e8
  x2 = x0; // 0x4387e4
  local_m28 = x2; // 0x4387ec
  memSet(x2, 0xf, w0); // 0x4387f0
  x0 = local_m20; // 0x4387f4
  memSet(x2, 0x13, w0); // 0x4387f8
  x0 = local_m10; // 0x4387fc
  memSet(x2, 0x17, w0); // 0x438800
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x438804
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x438808
  x0 = local_m28; // 0x438810
  x1 = x0; // 0x43880c
  local_m10 = x1; // 0x438814
  memSet(x1, 0xf, w0); // 0x438818
  x0 = 6; // 0x43881c
  memSet(x1, 0xb, w0); // 0x438820
  AllocationStub_Row() /* 0x3a1414 */; // 0x438824
  x1 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x438828
  memSet(x0, 0xf, w1); // 0x43882c
  x1 = local_m8; // 0x438830
  memSet(x0, 0x13, w1); // 0x438834
  x1 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x43883c
  memSet(x0, 0x17, w1); // 0x438840
  x1 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x438848
  memSet(x0, 0x1b, w1); // 0x43884c
  x1 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x438854
  memSet(x0, 0x23, w1); // 0x438858
  x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x438860
  memSet(x0, 0x2b, w1); // 0x438864
  memSet(x0, 0x2f, xzr); // 0x438868
  x1 = local_m10; // 0x43886c
  memSet(x0, 0xb, w1); // 0x438870
  SP = FP; // 0x438874
  // frame: FP, LR, mem(SP), 0x10 // 0x438878
  return;
}

// PageGameFruitRankingState_userFlexibleWidget
// raw disassembly:
//  0x438880: stp FP, LR, [SP, #-0x10]!
//  0x438884: mov FP, SP
//  0x438888: sub SP, SP, #0x18
//  0x43888c: stur x2, [FP, #-8]
//  0x438890: bl #0x31abec
//  0x438894: mov x1, x0
//  0x438898: add x0, NULL, #0x20
//  0x43889c: stur x1, [FP, #-0x10]
//  0x4388a0: stur w0, [x1, #7]
//  0x4388a4: ldr x0, [PP, #0x6050]
//  0x4388a8: stur w0, [x1, #0xb]
//  0x4388ac: add x0, PP, #0xf, lsl #12
//  0x4388b0: ldr x0, [x0, #0xb80]
//  0x4388b4: stur w0, [x1, #0x1f]
//  0x4388b8: add x0, PP, #0xe, lsl #12
//  0x4388bc: ldr x0, [x0, #0xe40]
//  0x4388c0: stur w0, [x1, #0x23]
//  0x4388c4: bl #0x393bf8
//  0x4388c8: mov x2, x0
//  0x4388cc: ldur x0, [FP, #-8]
//  0x4388d0: stur x2, [FP, #-0x18]
//  0x4388d4: stur w0, [x2, #0xb]
//  0x4388d8: ldur x0, [FP, #-0x10]
//  0x4388dc: stur w0, [x2, #0x13]
//  0x4388e0: add x0, PP, #0xf, lsl #12
//  0x4388e4: ldr x0, [x0, #0x230]
//  0x4388e8: stur w0, [x2, #0x2b]
//  0x4388ec: mov x0, #2
//  0x4388f0: stur w0, [x2, #0x37]
//  0x4388f4: add x1, PP, #0xe, lsl #12
//  0x4388f8: ldr x1, [x1, #0xad0]
//  0x4388fc: bl #0x3a1420
//  0x438900: mov x1, #1
//  0x438904: stur x1, [x0, #0x13]
//  0x438908: add x1, PP, #0x10, lsl #12
//  0x43890c: ldr x1, [x1, #0x950]
//  0x438910: stur w1, [x0, #0x1b]
//  0x438914: ldur x1, [FP, #-0x18]
//  0x438918: stur w1, [x0, #0xb]
//  0x43891c: mov SP, FP
//  0x438920: ldp FP, LR, [SP], #0x10
//  0x438924: ret 
//
dynamic PageGameFruitRankingState_userFlexibleWidget() {
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x438880
  // frame: FP = SP // 0x438884
  // frame: SP = SP - 0x18 // 0x438888
  local_m8 = x2; // 0x43888c
  AllocationStub_TextStyle() /* 0x31abec */; // 0x438890
  x0 = NULL + 0x20; // 0x438898
  x1 = x0; // 0x438894
  local_m10 = x1; // 0x43889c
  memSet(x1, 7, w0); // 0x4388a0
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x4388a4
  memSet(x1, 0xb, w0); // 0x4388a8
  x0 = mem((PP + 0xf000), 0xb80) /* Double */; // 0x4388b0
  memSet(x1, 0x1f, w0); // 0x4388b4
  x0 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x4388bc
  memSet(x1, 0x23, w0); // 0x4388c0
  AllocationStub_Text() /* 0x393bf8 */; // 0x4388c4
  x0 = local_m8; // 0x4388cc
  x2 = x0; // 0x4388c8
  local_m18 = x2; // 0x4388d0
  memSet(x2, 0xb, w0); // 0x4388d4
  x0 = local_m10; // 0x4388d8
  memSet(x2, 0x13, w0); // 0x4388dc
  x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x4388e4
  memSet(x2, 0x2b, w0); // 0x4388e8
  x0 = 2; // 0x4388ec
  memSet(x2, 0x37, w0); // 0x4388f0
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x4388f8
  AllocationStub_Flexible() /* 0x3a1420 */; // 0x4388fc
  x1 = 1; // 0x438900
  memSet(x0, 0x13, x1); // 0x438904
  x1 = mem((PP + 0x10000), 0x950) /* Obj!FlexFit@12273  */; // 0x43890c
  memSet(x0, 0x1b, w1); // 0x438910
  x1 = local_m18; // 0x438914
  memSet(x0, 0xb, w1); // 0x438918
  SP = FP; // 0x43891c
  // frame: FP, LR, mem(SP), 0x10 // 0x438920
  return;
}

// PageGameFruitRankingState_anon_closure_2
// raw disassembly:
//  0x438928: stp FP, LR, [SP, #-0x10]!
//  0x43892c: mov FP, SP
//  0x438930: sub SP, SP, #0xa0
//  0x438934: ldr x0, [FP, #0x20]
//  0x438938: ldur w2, [x0, #0x17]
//  0x43893c: add x2, x2, HEAP, lsl #32
//  0x438940: stur x2, [FP, #-0x20]
//  0x438944: ldr BARRIER, [THR, #0x38]
//  0x438948: cmp SP, BARRIER
//  0x43894c: b.ls #0x438e88
//  0x438950: ldur w3, [x2, #0x13]
//  0x438954: add x3, x3, HEAP, lsl #32
//  0x438958: ldur w0, [x3, #0xb]
//  0x43895c: ldr x1, [FP, #0x10]
//  0x438960: sbfx x4, x1, #1, #0x1f
//  0x438964: tbz w1, #0, #0x43896c
//  0x438968: ldur x4, [x1, #7]
//  0x43896c: stur x4, [FP, #-0x18]
//  0x438970: sbfx x1, x0, #1, #0x1f
//  0x438974: mov x0, x1
//  0x438978: mov x1, x4
//  0x43897c: cmp x1, x0
//  0x438980: b.hs #0x438e90
//  0x438984: ldur w0, [x3, #0xf]
//  0x438988: add x0, x0, HEAP, lsl #32
//  0x43898c: add BARRIER, x0, x4, lsl #2
//  0x438990: ldur w1, [BARRIER, #0xf]
//  0x438994: add x1, x1, HEAP, lsl #32
//  0x438998: stur x1, [FP, #-0x10]
//  0x43899c: cbz x4, #0x4389b0
//  0x4389a0: cmp x4, #1
//  0x4389a4: b.eq #0x4389b0
//  0x4389a8: cmp x4, #2
//  0x4389ac: b.ne #0x4389cc
//  0x4389b0: bl #0x391a04
//  0x4389b4: mov x1, x0
//  0x4389b8: stur x0, [FP, #-8]
//  0x4389bc: ldr x4, [PP, #0x4c0]
//  0x4389c0: bl #0x391490
//  0x4389c4: ldur x0, [FP, #-8]
//  0x4389c8: b #0x438e7c
//  0x4389cc: ldur w0, [x2, #0x1f]
//  0x4389d0: add x0, x0, HEAP, lsl #32
//  0x4389d4: stur x0, [FP, #-8]
//  0x4389d8: bl #0x2e3578
//  0x4389dc: fmov d0, #20.00000000
//  0x4389e0: stur x0, [FP, #-0x28]
//  0x4389e4: stur d0, [x0, #7]
//  0x4389e8: stur xzr, [x0, #0xf]
//  0x4389ec: stur d0, [x0, #0x17]
//  0x4389f0: ldur x1, [FP, #-8]
//  0x4389f4: ldur d0, [x1, #7]
//  0x4389f8: stur d0, [x0, #0x1f]
//  0x4389fc: bl #0x31d844
//  0x438a00: mov x1, x0
//  0x438a04: ldr x0, [PP, #0x6310]
//  0x438a08: stur x1, [FP, #-8]
//  0x438a0c: stur w0, [x1, #0x27]
//  0x438a10: ldr d0, [PP, #0x6658]
//  0x438a14: stur d0, [x1, #7]
//  0x438a18: fmov d0, #1.00000000
//  0x438a1c: stur d0, [x1, #0xf]
//  0x438a20: stur d0, [x1, #0x17]
//  0x438a24: stur d0, [x1, #0x1f]
//  0x438a28: bl #0x352b04
//  0x438a2c: fmov d0, #12.00000000
//  0x438a30: stur x0, [FP, #-0x30]
//  0x438a34: stur d0, [x0, #7]
//  0x438a38: stur d0, [x0, #0xf]
//  0x438a3c: bl #0x392f28
//  0x438a40: mov x1, x0
//  0x438a44: ldur x0, [FP, #-0x30]
//  0x438a48: stur x1, [FP, #-0x38]
//  0x438a4c: stur w0, [x1, #7]
//  0x438a50: stur w0, [x1, #0xb]
//  0x438a54: stur w0, [x1, #0xf]
//  0x438a58: stur w0, [x1, #0x13]
//  0x438a5c: bl #0x391dd8
//  0x438a60: mov x1, x0
//  0x438a64: ldur x0, [FP, #-8]
//  0x438a68: stur x1, [FP, #-0x30]
//  0x438a6c: stur w0, [x1, #7]
//  0x438a70: ldur x0, [FP, #-0x38]
//  0x438a74: stur w0, [x1, #0x13]
//  0x438a78: add x0, PP, #0xe, lsl #12
//  0x438a7c: ldr x0, [x0, #0xb78]
//  0x438a80: stur w0, [x1, #0x23]
//  0x438a84: ldur x0, [FP, #-0x20]
//  0x438a88: ldur w2, [x0, #0x23]
//  0x438a8c: add x2, x2, HEAP, lsl #32
//  0x438a90: stur x2, [FP, #-8]
//  0x438a94: bl #0x3949ec
//  0x438a98: mov x1, x0
//  0x438a9c: add x0, PP, #0xf, lsl #12
//  0x438aa0: ldr x0, [x0, #0xb80]
//  0x438aa4: stur x1, [FP, #-0x38]
//  0x438aa8: stur w0, [x1, #0xf]
//  0x438aac: ldur x0, [FP, #-0x18]
//  0x438ab0: add x2, x0, #1
//  0x438ab4: lsl x0, x2, #1
//  0x438ab8: str x0, [SP]
//  0x438abc: bl #0x4a6624
//  0x438ac0: stur x0, [FP, #-0x40]
//  0x438ac4: bl #0x31abec
//  0x438ac8: mov x1, x0
//  0x438acc: add x0, NULL, #0x20
//  0x438ad0: stur x1, [FP, #-0x48]
//  0x438ad4: stur w0, [x1, #7]
//  0x438ad8: ldr x2, [PP, #0x6050]
//  0x438adc: stur w2, [x1, #0xb]
//  0x438ae0: add x3, PP, #0xe, lsl #12
//  0x438ae4: ldr x3, [x3, #0xb50]
//  0x438ae8: stur w3, [x1, #0x1f]
//  0x438aec: add x3, PP, #0xe, lsl #12
//  0x438af0: ldr x3, [x3, #0xe40]
//  0x438af4: stur w3, [x1, #0x23]
//  0x438af8: bl #0x393bf8
//  0x438afc: mov x1, x0
//  0x438b00: ldur x0, [FP, #-0x40]
//  0x438b04: stur x1, [FP, #-0x50]
//  0x438b08: stur w0, [x1, #0xb]
//  0x438b0c: ldur x0, [FP, #-0x48]
//  0x438b10: stur w0, [x1, #0x13]
//  0x438b14: bl #0x3949ec
//  0x438b18: mov x1, x0
//  0x438b1c: add x0, PP, #0xe, lsl #12
//  0x438b20: ldr x0, [x0, #0xde8]
//  0x438b24: stur x1, [FP, #-0x48]
//  0x438b28: stur w0, [x1, #0xf]
//  0x438b2c: ldur x2, [FP, #-0x10]
//  0x438b30: ldur w3, [x2, #7]
//  0x438b34: add x3, x3, HEAP, lsl #32
//  0x438b38: ldr BARRIER, [PP, #0x40]
//  0x438b3c: cmp w3, w16
//  0x438b40: b.eq #0x438e94
//  0x438b44: stur x3, [FP, #-0x40]
//  0x438b48: bl #0x3a67fc
//  0x438b4c: mov x1, x0
//  0x438b50: ldur x0, [FP, #-0x40]
//  0x438b54: stur x1, [FP, #-0x58]
//  0x438b58: stur w0, [x1, #0xb]
//  0x438b5c: ldr d0, [PP, #0x7960]
//  0x438b60: stur d0, [x1, #0x13]
//  0x438b64: add x0, NULL, #0x30
//  0x438b68: stur w0, [x1, #0x1b]
//  0x438b6c: bl #0x391a04
//  0x438b70: stur x0, [FP, #-0x40]
//  0x438b74: ldur BARRIER, [FP, #-0x58]
//  0x438b78: str BARRIER, [SP]
//  0x438b7c: mov x1, x0
//  0x438b80: add x4, PP, #0xc, lsl #12
//  0x438b84: ldr x4, [x4, #0x1f8]
//  0x438b88: bl #0x391490
//  0x438b8c: bl #0x3949ec
//  0x438b90: mov x1, x0
//  0x438b94: add x0, PP, #0xf, lsl #12
//  0x438b98: ldr x0, [x0, #0x5c8]
//  0x438b9c: stur x1, [FP, #-0x58]
//  0x438ba0: stur w0, [x1, #0xf]
//  0x438ba4: bl #0x2e3578
//  0x438ba8: stur x0, [FP, #-0x68]
//  0x438bac: stur xzr, [x0, #7]
//  0x438bb0: stur xzr, [x0, #0xf]
//  0x438bb4: fmov d0, #12.00000000
//  0x438bb8: stur d0, [x0, #0x17]
//  0x438bbc: stur xzr, [x0, #0x1f]
//  0x438bc0: ldur x1, [FP, #-0x10]
//  0x438bc4: ldur w2, [x1, #0xb]
//  0x438bc8: add x2, x2, HEAP, lsl #32
//  0x438bcc: ldr BARRIER, [PP, #0x40]
//  0x438bd0: cmp w2, w16
//  0x438bd4: b.eq #0x438ea0
//  0x438bd8: stur x2, [FP, #-0x60]
//  0x438bdc: bl #0x31abec
//  0x438be0: mov x1, x0
//  0x438be4: add x0, NULL, #0x20
//  0x438be8: stur x1, [FP, #-0x70]
//  0x438bec: stur w0, [x1, #7]
//  0x438bf0: ldr x0, [PP, #0x6050]
//  0x438bf4: stur w0, [x1, #0xb]
//  0x438bf8: add x0, PP, #0xe, lsl #12
//  0x438bfc: ldr x0, [x0, #0xde8]
//  0x438c00: stur w0, [x1, #0x1f]
//  0x438c04: bl #0x393bf8
//  0x438c08: mov x1, x0
//  0x438c0c: ldur x0, [FP, #-0x60]
//  0x438c10: stur x1, [FP, #-0x78]
//  0x438c14: stur w0, [x1, #0xb]
//  0x438c18: ldur x0, [FP, #-0x70]
//  0x438c1c: stur w0, [x1, #0x13]
//  0x438c20: add x0, PP, #0xf, lsl #12
//  0x438c24: ldr x0, [x0, #0x230]
//  0x438c28: stur w0, [x1, #0x2b]
//  0x438c2c: mov x0, #2
//  0x438c30: stur w0, [x1, #0x37]
//  0x438c34: bl #0x391a04
//  0x438c38: stur x0, [FP, #-0x60]
//  0x438c3c: ldur BARRIER, [FP, #-0x68]
//  0x438c40: ldur LR, [FP, #-0x78]
//  0x438c44: stp LR, BARRIER, [SP]
//  0x438c48: mov x1, x0
//  0x438c4c: add x4, PP, #0xf, lsl #12
//  0x438c50: ldr x4, [x4, #0x200]
//  0x438c54: bl #0x391490
//  0x438c58: bl #0x3949ec
//  0x438c5c: mov x4, x0
//  0x438c60: add x0, PP, #0xf, lsl #12
//  0x438c64: ldr x0, [x0, #0x5c8]
//  0x438c68: stur x4, [FP, #-0x68]
//  0x438c6c: stur w0, [x4, #0x13]
//  0x438c70: ldur x0, [FP, #-0x10]
//  0x438c74: ldur w3, [x0, #0xf]
//  0x438c78: add x3, x3, HEAP, lsl #32
//  0x438c7c: ldr BARRIER, [PP, #0x40]
//  0x438c80: cmp w3, w16
//  0x438c84: b.eq #0x438eac
//  0x438c88: ldur x0, [FP, #-0x20]
//  0x438c8c: ldur w1, [x0, #0xf]
//  0x438c90: add x1, x1, HEAP, lsl #32
//  0x438c94: add x2, PP, #0xe, lsl #12
//  0x438c98: ldr x2, [x2, #0xae0]
//  0x438c9c: bl #0x4386e8
//  0x438ca0: mov x1, NULL
//  0x438ca4: mov x2, #6
//  0x438ca8: stur x0, [FP, #-0x10]
//  0x438cac: bl #0x61f920
//  0x438cb0: mov x2, x0
//  0x438cb4: ldur x0, [FP, #-0x60]
//  0x438cb8: stur x2, [FP, #-0x20]
//  0x438cbc: stur w0, [x2, #0xf]
//  0x438cc0: ldur x0, [FP, #-0x68]
//  0x438cc4: stur w0, [x2, #0x13]
//  0x438cc8: ldur x0, [FP, #-0x10]
//  0x438ccc: stur w0, [x2, #0x17]
//  0x438cd0: ldr x1, [PP, #0x5c58]
//  0x438cd4: bl #0x61e854
//  0x438cd8: mov x1, x0
//  0x438cdc: ldur x0, [FP, #-0x20]
//  0x438ce0: stur x1, [FP, #-0x10]
//  0x438ce4: stur w0, [x1, #0xf]
//  0x438ce8: mov x0, #6
//  0x438cec: stur w0, [x1, #0xb]
//  0x438cf0: bl #0x39310c
//  0x438cf4: mov x2, x0
//  0x438cf8: add x0, PP, #0xa, lsl #12
//  0x438cfc: ldr x0, [x0, #0x858]
//  0x438d00: stur x2, [FP, #-0x20]
//  0x438d04: stur w0, [x2, #0xf]
//  0x438d08: add x0, PP, #0xf, lsl #12
//  0x438d0c: ldr x0, [x0, #0x288]
//  0x438d10: stur w0, [x2, #0x13]
//  0x438d14: add x0, PP, #0xe, lsl #12
//  0x438d18: ldr x0, [x0, #0xae8]
//  0x438d1c: stur w0, [x2, #0x17]
//  0x438d20: add x1, PP, #0xe, lsl #12
//  0x438d24: ldr x1, [x1, #0xaf0]
//  0x438d28: stur w1, [x2, #0x1b]
//  0x438d2c: add x3, PP, #0xe, lsl #12
//  0x438d30: ldr x3, [x3, #0xaf8]
//  0x438d34: stur w3, [x2, #0x23]
//  0x438d38: add x4, PP, #0xa, lsl #12
//  0x438d3c: ldr x4, [x4, #0xa8]
//  0x438d40: stur w4, [x2, #0x2b]
//  0x438d44: stur xzr, [x2, #0x2f]
//  0x438d48: ldur x1, [FP, #-0x10]
//  0x438d4c: stur w1, [x2, #0xb]
//  0x438d50: add x1, PP, #0xe, lsl #12
//  0x438d54: ldr x1, [x1, #0xad0]
//  0x438d58: bl #0x39fb14
//  0x438d5c: mov x3, x0
//  0x438d60: mov x0, #1
//  0x438d64: stur x3, [FP, #-0x10]
//  0x438d68: stur x0, [x3, #0x13]
//  0x438d6c: add x0, PP, #0xe, lsl #12
//  0x438d70: ldr x0, [x0, #0xad8]
//  0x438d74: stur w0, [x3, #0x1b]
//  0x438d78: ldur x0, [FP, #-0x20]
//  0x438d7c: stur w0, [x3, #0xb]
//  0x438d80: mov x1, NULL
//  0x438d84: mov x2, #0xc
//  0x438d88: bl #0x61f920
//  0x438d8c: mov x2, x0
//  0x438d90: ldur x0, [FP, #-0x38]
//  0x438d94: stur x2, [FP, #-0x20]
//  0x438d98: stur w0, [x2, #0xf]
//  0x438d9c: ldur x0, [FP, #-0x50]
//  0x438da0: stur w0, [x2, #0x13]
//  0x438da4: ldur x0, [FP, #-0x48]
//  0x438da8: stur w0, [x2, #0x17]
//  0x438dac: ldur x0, [FP, #-0x40]
//  0x438db0: stur w0, [x2, #0x1b]
//  0x438db4: ldur x0, [FP, #-0x58]
//  0x438db8: stur w0, [x2, #0x1f]
//  0x438dbc: ldur x0, [FP, #-0x10]
//  0x438dc0: stur w0, [x2, #0x23]
//  0x438dc4: ldr x1, [PP, #0x5c58]
//  0x438dc8: bl #0x61e854
//  0x438dcc: mov x1, x0
//  0x438dd0: ldur x0, [FP, #-0x20]
//  0x438dd4: stur x1, [FP, #-0x10]
//  0x438dd8: stur w0, [x1, #0xf]
//  0x438ddc: mov x0, #0xc
//  0x438de0: stur w0, [x1, #0xb]
//  0x438de4: bl #0x3a1414
//  0x438de8: mov x1, x0
//  0x438dec: ldr x0, [PP, #0x5140]
//  0x438df0: stur x1, [FP, #-0x20]
//  0x438df4: stur w0, [x1, #0xf]
//  0x438df8: add x0, PP, #0xe, lsl #12
//  0x438dfc: ldr x0, [x0, #0xae0]
//  0x438e00: stur w0, [x1, #0x13]
//  0x438e04: add x0, PP, #0xe, lsl #12
//  0x438e08: ldr x0, [x0, #0xae8]
//  0x438e0c: stur w0, [x1, #0x17]
//  0x438e10: add x0, PP, #0xe, lsl #12
//  0x438e14: ldr x0, [x0, #0xb60]
//  0x438e18: stur w0, [x1, #0x1b]
//  0x438e1c: add x0, PP, #0xe, lsl #12
//  0x438e20: ldr x0, [x0, #0xaf8]
//  0x438e24: stur w0, [x1, #0x23]
//  0x438e28: add x0, PP, #0xa, lsl #12
//  0x438e2c: ldr x0, [x0, #0xa8]
//  0x438e30: stur w0, [x1, #0x2b]
//  0x438e34: stur xzr, [x1, #0x2f]
//  0x438e38: ldur x0, [FP, #-0x10]
//  0x438e3c: stur w0, [x1, #0xb]
//  0x438e40: bl #0x391a04
//  0x438e44: stur x0, [FP, #-0x10]
//  0x438e48: ldur BARRIER, [FP, #-0x28]
//  0x438e4c: ldur LR, [FP, #-0x30]
//  0x438e50: stp LR, BARRIER, [SP, #0x18]
//  0x438e54: ldr BARRIER, [PP, #0x5458]
//  0x438e58: ldur LR, [FP, #-8]
//  0x438e5c: stp LR, BARRIER, [SP, #8]
//  0x438e60: ldur BARRIER, [FP, #-0x20]
//  0x438e64: str BARRIER, [SP]
//  0x438e68: mov x1, x0
//  0x438e6c: add x4, PP, #0x11, lsl #12
//  0x438e70: ldr x4, [x4, #0x9e0]
//  0x438e74: bl #0x391490
//  0x438e78: ldur x0, [FP, #-0x10]
//  0x438e7c: mov SP, FP
//  0x438e80: ldp FP, LR, [SP], #0x10
//  0x438e84: ret 
//  0x438e88: bl #0x61fa28
//  0x438e8c: b #0x438950
//  0x438e90: bl #0x61fe70
//  0x438e94: add x9, PP, #0x11, lsl #12
//  0x438e98: ldr x9, [x9, #0x928]
//  0x438e9c: bl #0x620258
//  0x438ea0: add x9, PP, #0x11, lsl #12
//  0x438ea4: ldr x9, [x9, #0x930]
//  0x438ea8: bl #0x620258
//  0x438eac: add x9, PP, #0x11, lsl #12
//  0x438eb0: ldr x9, [x9, #0x938]
//  0x438eb4: bl #0x620258
//
dynamic PageGameFruitRankingState_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x438928
  // frame: FP = SP // 0x43892c
  // frame: SP = SP - 0xa0 // 0x438930
  w2 = mem((local_20), 0x17); /* _PageGameFruitRankingState._refreshController (off 0x18) */  // 0x438938
  x0 = local_20; // 0x438934
  x2 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PageGameFruitRankingState._refreshController (off 0x18) */  // 0x43893c
  local_m20 = x2; // 0x438940
  BARRIER = mem(THR, 0x38); // 0x438944
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x438e88
  }
  w0 = mem(((w3 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x438958
  x0 = (mem(((w3 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x438958
  x1 = local_10; // 0x43895c
  x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x438954
  x4 = ((local_10) >> 1) & 0x7fffffff; // 0x438960
  if (x1 & (1 << 0) == 0) {
  } else {
    x4 = mem(x1, 7); // 0x438968
  }
  local_m18 = x4; // 0x43896c
  x0 = (x0 >> 1) & 0x7fffffff; // 0x438974
  x1 = x4; // 0x438978
  if (x1 >= x0) {
    RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x438e90
  } else {
    BARRIER = ((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2); // 0x43898c
    w1 = mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2)), 0xf); // 0x438990
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x438988
    x1 = ((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x438994
    local_m10 = x1; // 0x438998
    if (x4 == 0) {
    } else {
      if (x4 == 1) {
      } else {
        if (x4 != 2) {
          x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4389d0
          local_m8 = x0; // 0x4389d4
          AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x4389d8
          d0 = 20.00000000 /* bits */; // 0x4389dc
          local_m28 = x0; // 0x4389e0
          memSet(x0, 7, d0); // 0x4389e4
          memSet(x0, 0xf, xzr); // 0x4389e8
          memSet(x0, 0x17, d0); // 0x4389ec
          d0 = mem((local_m8), 7); // 0x4389f4
          x1 = local_m8; // 0x4389f0
          memSet(x0, 0x1f, d0); // 0x4389f8
          AllocationStub_Color() /* 0x31d844 */; // 0x4389fc
          x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x438a04
          x1 = x0; // 0x438a00
          local_m8 = x1; // 0x438a08
          memSet(x1, 0x27, w0); // 0x438a0c
          d0 = 4591870180066957722; // 0x438a10
          memSet(x1, 7, d0); // 0x438a14
          d0 = 1.00000000 /* bits */; // 0x438a18
          memSet(x1, 0xf, d0); // 0x438a1c
          memSet(x1, 0x17, d0); // 0x438a20
          memSet(x1, 0x1f, d0); // 0x438a24
          AllocationStub_Radius() /* 0x352b04 */; // 0x438a28
          d0 = 12.00000000 /* bits */; // 0x438a2c
          local_m30 = x0; // 0x438a30
          memSet(x0, 7, d0); // 0x438a34
          memSet(x0, 0xf, d0); // 0x438a38
          AllocationStub_BorderRadius() /* 0x392f28 */; // 0x438a3c
          x0 = local_m30; // 0x438a44
          x1 = x0; // 0x438a40
          local_m38 = x1; // 0x438a48
          memSet(x1, 7, w0); // 0x438a4c
          memSet(x1, 0xb, w0); // 0x438a50
          memSet(x1, 0xf, w0); // 0x438a54
          memSet(x1, 0x13, w0); // 0x438a58
          AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x438a5c
          x0 = local_m8; // 0x438a64
          x1 = x0; // 0x438a60
          local_m30 = x1; // 0x438a68
          memSet(x1, 7, w0); // 0x438a6c
          x0 = local_m38; // 0x438a70
          memSet(x1, 0x13, w0); // 0x438a74
          x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x438a7c
          memSet(x1, 0x23, w0); // 0x438a80
          w2 = mem((local_m20), 0x23); // 0x438a88
          x0 = local_m20; // 0x438a84
          x2 = ((mem((local_m20), 0x23)) & 0xffffffff) + (HEAP << 32); // 0x438a8c
          local_m8 = x2; // 0x438a90
          AllocationStub_SizedBox() /* 0x3949ec */; // 0x438a94
          x0 = mem((PP + 0xf000), 0xb80) /* Double */; // 0x438aa0
          x1 = x0; // 0x438a98
          local_m38 = x1; // 0x438aa4
          memSet(x1, 0xf, w0); // 0x438aa8
          x0 = ((local_m18) + 1) << 1; // 0x438ab4
          x2 = (local_m18) + 1; // 0x438ab0
          local_0 = x0; // 0x438ab8
          Smi_toString() /* 0x4a6624 */; // 0x438abc
          local_m40 = x0; // 0x438ac0
          AllocationStub_TextStyle() /* 0x31abec */; // 0x438ac4
          x0 = NULL + 0x20; // 0x438acc
          x1 = x0; // 0x438ac8
          local_m48 = x1; // 0x438ad0
          memSet(x1, 7, w0); // 0x438ad4
          x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x438ad8
          memSet(x1, 0xb, w2); // 0x438adc
          x3 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x438ae4
          memSet(x1, 0x1f, w3); // 0x438ae8
          x3 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x438af0
          memSet(x1, 0x23, w3); // 0x438af4
          AllocationStub_Text() /* 0x393bf8 */; // 0x438af8
          x0 = local_m40; // 0x438b00
          x1 = x0; // 0x438afc
          local_m50 = x1; // 0x438b04
          memSet(x1, 0xb, w0); // 0x438b08
          x0 = local_m48; // 0x438b0c
          memSet(x1, 0x13, w0); // 0x438b10
          AllocationStub_SizedBox() /* 0x3949ec */; // 0x438b14
          x0 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x438b20
          x1 = x0; // 0x438b18
          local_m48 = x1; // 0x438b24
          memSet(x1, 0xf, w0); // 0x438b28
          BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x438b38
          w3 = mem((local_m10), 7); // 0x438b30
          x2 = local_m10; // 0x438b2c
          x3 = ((mem((local_m10), 7)) & 0xffffffff) + (HEAP << 32); // 0x438b34
          if (w3 == w16) {
            x9 = mem((PP + 0x11000), 0x928) /* Field */; // 0x438e98
            LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x438e9c
          } else {
            local_m40 = x3; // 0x438b44
            AllocationStub_SoulAvatarImage() /* 0x3a67fc */; // 0x438b48
            x0 = local_m40; // 0x438b50
            x1 = x0; // 0x438b4c
            local_m58 = x1; // 0x438b54
            memSet(x1, 0xb, w0); // 0x438b58
            d0 = 4631952216750555136; // 0x438b5c
            memSet(x1, 0x13, d0); // 0x438b60
            x0 = NULL + 0x30; // 0x438b64
            memSet(x1, 0x1b, w0); // 0x438b68
            AllocationStub_Container() /* 0x391a04 */; // 0x438b6c
            local_m40 = x0; // 0x438b70
            BARRIER = local_m58; // 0x438b74
            local_0 = BARRIER; // 0x438b78
            x1 = x0; // 0x438b7c
            x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x438b84
            Container_ctor() /* 0x391490 */; // 0x438b88
            AllocationStub_SizedBox() /* 0x3949ec */; // 0x438b8c
            x0 = mem((PP + 0xf000), 0x5c8) /* Double */; // 0x438b98
            x1 = x0; // 0x438b90
            local_m58 = x1; // 0x438b9c
            memSet(x1, 0xf, w0); // 0x438ba0
            AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x438ba4
            local_m68 = x0; // 0x438ba8
            memSet(x0, 7, xzr); // 0x438bac
            memSet(x0, 0xf, xzr); // 0x438bb0
            d0 = 12.00000000 /* bits */; // 0x438bb4
            memSet(x0, 0x17, d0); // 0x438bb8
            memSet(x0, 0x1f, xzr); // 0x438bbc
            BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x438bcc
            w2 = mem((local_m10), 0xb); // 0x438bc4
            x1 = local_m10; // 0x438bc0
            x2 = ((mem((local_m10), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x438bc8
            if (w2 == w16) {
              x9 = mem((PP + 0x11000), 0x930) /* Field */; // 0x438ea4
              LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x438ea8
            } else {
              local_m60 = x2; // 0x438bd8
              AllocationStub_TextStyle() /* 0x31abec */; // 0x438bdc
              x0 = NULL + 0x20; // 0x438be4
              x1 = x0; // 0x438be0
              local_m70 = x1; // 0x438be8
              memSet(x1, 7, w0); // 0x438bec
              x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x438bf0
              memSet(x1, 0xb, w0); // 0x438bf4
              x0 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x438bfc
              memSet(x1, 0x1f, w0); // 0x438c00
              AllocationStub_Text() /* 0x393bf8 */; // 0x438c04
              x0 = local_m60; // 0x438c0c
              x1 = x0; // 0x438c08
              local_m78 = x1; // 0x438c10
              memSet(x1, 0xb, w0); // 0x438c14
              x0 = local_m70; // 0x438c18
              memSet(x1, 0x13, w0); // 0x438c1c
              x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x438c24
              memSet(x1, 0x2b, w0); // 0x438c28
              x0 = 2; // 0x438c2c
              memSet(x1, 0x37, w0); // 0x438c30
              AllocationStub_Container() /* 0x391a04 */; // 0x438c34
              local_m60 = x0; // 0x438c38
              BARRIER = local_m68; // 0x438c3c
              LR = local_m78; // 0x438c40
              // frame: LR, BARRIER, mem(SP) // 0x438c44
              x1 = x0; // 0x438c48
              x4 = mem((PP + 0xf000), 0x200) /* ImmutableArray */; // 0x438c50
              Container_ctor() /* 0x391490 */; // 0x438c54
              AllocationStub_SizedBox() /* 0x3949ec */; // 0x438c58
              x0 = mem((PP + 0xf000), 0x5c8) /* Double */; // 0x438c64
              x4 = x0; // 0x438c5c
              local_m68 = x4; // 0x438c68
              memSet(x4, 0x13, w0); // 0x438c6c
              BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x438c7c
              w3 = mem((local_m10), 0xf); // 0x438c74
              x0 = local_m10; // 0x438c70
              x3 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x438c78
              if (w3 != w16) {
                w1 = mem((local_m20), 0xf); // 0x438c8c
                x0 = local_m20; // 0x438c88
                x1 = ((mem((local_m20), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x438c90
                x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x438c98
                PageGameFruitRankingState_coinLabelWidget() /* 0x4386e8 */; // 0x438c9c
                x1 = NULL; // 0x438ca0
                x2 = 6; // 0x438ca4
                local_m10 = x0; // 0x438ca8
                sub_0x61f920(); // 0x438cac
                x0 = local_m60; // 0x438cb4
                x2 = x0; // 0x438cb0
                local_m20 = x2; // 0x438cb8
                memSet(x2, 0xf, w0); // 0x438cbc
                x0 = local_m68; // 0x438cc0
                memSet(x2, 0x13, w0); // 0x438cc4
                x0 = local_m10; // 0x438cc8
                memSet(x2, 0x17, w0); // 0x438ccc
                x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x438cd0
                AllocationStub__GrowableList() /* 0x61e854 */; // 0x438cd4
                x0 = local_m20; // 0x438cdc
                x1 = x0; // 0x438cd8
                local_m10 = x1; // 0x438ce0
                memSet(x1, 0xf, w0); // 0x438ce4
                x0 = 6; // 0x438ce8
                memSet(x1, 0xb, w0); // 0x438cec
                AllocationStub_Column() /* 0x39310c */; // 0x438cf0
                x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x438cfc
                x2 = x0; // 0x438cf4
                local_m20 = x2; // 0x438d00
                memSet(x2, 0xf, w0); // 0x438d04
                x0 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x438d0c
                memSet(x2, 0x13, w0); // 0x438d10
                x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x438d18
                memSet(x2, 0x17, w0); // 0x438d1c
                x1 = mem((PP + 0xe000), 0xaf0) /* Obj!CrossAxisAlignment@12269  */; // 0x438d24
                memSet(x2, 0x1b, w1); // 0x438d28
                x3 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x438d30
                memSet(x2, 0x23, w3); // 0x438d34
                x4 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x438d3c
                memSet(x2, 0x2b, w4); // 0x438d40
                memSet(x2, 0x2f, xzr); // 0x438d44
                x1 = local_m10; // 0x438d48
                memSet(x2, 0xb, w1); // 0x438d4c
                x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x438d54
                AllocationStub_Expanded() /* 0x39fb14 */; // 0x438d58
                x0 = 1; // 0x438d60
                x3 = x0; // 0x438d5c
                local_m10 = x3; // 0x438d64
                memSet(x3, 0x13, x0); // 0x438d68
                x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x438d70
                memSet(x3, 0x1b, w0); // 0x438d74
                x0 = local_m20; // 0x438d78
                memSet(x3, 0xb, w0); // 0x438d7c
                x1 = NULL; // 0x438d80
                x2 = 12; // 0x438d84
                sub_0x61f920(); // 0x438d88
                x0 = local_m38; // 0x438d90
                x2 = x0; // 0x438d8c
                local_m20 = x2; // 0x438d94
                memSet(x2, 0xf, w0); // 0x438d98
                x0 = local_m50; // 0x438d9c
                memSet(x2, 0x13, w0); // 0x438da0
                x0 = local_m48; // 0x438da4
                memSet(x2, 0x17, w0); // 0x438da8
                x0 = local_m40; // 0x438dac
                memSet(x2, 0x1b, w0); // 0x438db0
                x0 = local_m58; // 0x438db4
                memSet(x2, 0x1f, w0); // 0x438db8
                x0 = local_m10; // 0x438dbc
                memSet(x2, 0x23, w0); // 0x438dc0
                x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x438dc4
                AllocationStub__GrowableList() /* 0x61e854 */; // 0x438dc8
                x0 = local_m20; // 0x438dd0
                x1 = x0; // 0x438dcc
                local_m10 = x1; // 0x438dd4
                memSet(x1, 0xf, w0); // 0x438dd8
                x0 = 12; // 0x438ddc
                memSet(x1, 0xb, w0); // 0x438de0
                AllocationStub_Row() /* 0x3a1414 */; // 0x438de4
                x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x438dec
                x1 = x0; // 0x438de8
                local_m20 = x1; // 0x438df0
                memSet(x1, 0xf, w0); // 0x438df4
                x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x438dfc
                memSet(x1, 0x13, w0); // 0x438e00
                x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x438e08
                memSet(x1, 0x17, w0); // 0x438e0c
                x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x438e14
                memSet(x1, 0x1b, w0); // 0x438e18
                x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x438e20
                memSet(x1, 0x23, w0); // 0x438e24
                x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x438e2c
                memSet(x1, 0x2b, w0); // 0x438e30
                memSet(x1, 0x2f, xzr); // 0x438e34
                x0 = local_m10; // 0x438e38
                memSet(x1, 0xb, w0); // 0x438e3c
                AllocationStub_Container() /* 0x391a04 */; // 0x438e40
                local_m10 = x0; // 0x438e44
                BARRIER = local_m28; // 0x438e48
                LR = local_m30; // 0x438e4c
                // frame: LR, BARRIER, mem(SP, 0x18) // 0x438e50
                BARRIER = mem(PP, 0x5458) /* Double */; // 0x438e54
                LR = local_m8; // 0x438e58
                // frame: LR, BARRIER, mem(SP, 8) // 0x438e5c
                BARRIER = local_m20; // 0x438e60
                local_0 = BARRIER; // 0x438e64
                x1 = x0; // 0x438e68
                x4 = mem((PP + 0x11000), 0x9e0) /* ImmutableArray */; // 0x438e70
                Container_ctor() /* 0x391490 */; // 0x438e74
                x0 = local_m10; // 0x438e78
                SP = FP; // 0x438e7c
                // frame: FP, LR, mem(SP), 0x10 // 0x438e80
                return;
              }
            }
            x9 = mem((PP + 0x11000), 0x938) /* Field */; // 0x438eb0
            LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x438eb4
          }
        } else {
          AllocationStub_Container() /* 0x391a04 */; // 0x4389b0
          x1 = x0; // 0x4389b4
          local_m8 = x0; // 0x4389b8
          x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4389bc
          Container_ctor() /* 0x391490 */; // 0x4389c0
          x0 = local_m8; // 0x4389c4
        }
      }
    }
  }
}

// PageGameFruitRankingState_build
// raw disassembly:
//  0x43955c: stp FP, LR, [SP, #-0x10]!
//  0x439560: mov FP, SP
//  0x439564: sub SP, SP, #0x50
//  0x439568: mov x0, x1
//  0x43956c: stur x1, [FP, #-8]
//  0x439570: mov x1, x2
//  0x439574: stur x2, [FP, #-0x10]
//  0x439578: ldr BARRIER, [THR, #0x38]
//  0x43957c: cmp SP, BARRIER
//  0x439580: b.ls #0x439888
//  0x439584: mov x1, #3
//  0x439588: bl #0x61e890
//  0x43958c: mov x2, x0
//  0x439590: ldur x0, [FP, #-8]
//  0x439594: stur x2, [FP, #-0x18]
//  0x439598: stur w0, [x2, #0xf]
//  0x43959c: ldur x1, [FP, #-0x10]
//  0x4395a0: bl #0x3a877c
//  0x4395a4: mov v1.16b, v0.16b
//  0x4395a8: add x17, PP, #0x11, lsl #12
//  0x4395ac: ldr d0, [x17, #0x7f0]
//  0x4395b0: fmul d2, d1, d0
//  0x4395b4: ldp x0, x1, [THR, #0x50]
//  0x4395b8: add x0, x0, #0x10
//  0x4395bc: cmp x1, x0
//  0x4395c0: b.ls #0x439890
//  0x4395c4: str x0, [THR, #0x50]
//  0x4395c8: sub x0, x0, #0xf
//  0x4395cc: mov x1, #0xe15c
//  0x4395d0: movk x1, #3, lsl #16
//  0x4395d4: stur x1, [x0, #-1]
//  0x4395d8: stur d2, [x0, #7]
//  0x4395dc: ldur x2, [FP, #-0x18]
//  0x4395e0: stur w0, [x2, #0x13]
//  0x4395e4: ldurb w16, [x2, #-1]
//  0x4395e8: ldurb w17, [x0, #-1]
//  0x4395ec: and BARRIER, x17, BARRIER, lsr #2
//  0x4395f0: tst BARRIER, HEAP, lsr #32
//  0x4395f4: b.eq #0x4395fc
//  0x4395f8: bl #0x61e06c
//  0x4395fc: fsub d0, d1, d2
//  0x439600: fmov d1, #14.00000000
//  0x439604: fsub d2, d0, d1
//  0x439608: ldr d0, [PP, #0x65d0]
//  0x43960c: fsub d1, d2, d0
//  0x439610: fmov d0, #2.00000000
//  0x439614: fdiv d2, d1, d0
//  0x439618: ldp x0, x1, [THR, #0x50]
//  0x43961c: add x0, x0, #0x10
//  0x439620: cmp x1, x0
//  0x439624: b.ls #0x4398a0
//  0x439628: str x0, [THR, #0x50]
//  0x43962c: sub x0, x0, #0xf
//  0x439630: mov x1, #0xe15c
//  0x439634: movk x1, #3, lsl #16
//  0x439638: stur x1, [x0, #-1]
//  0x43963c: stur d2, [x0, #7]
//  0x439640: stur w0, [x2, #0x17]
//  0x439644: ldurb w16, [x2, #-1]
//  0x439648: ldurb w17, [x0, #-1]
//  0x43964c: and BARRIER, x17, BARRIER, lsr #2
//  0x439650: tst BARRIER, HEAP, lsr #32
//  0x439654: b.eq #0x43965c
//  0x439658: bl #0x61e06c
//  0x43965c: add x1, PP, #0xc, lsl #12
//  0x439660: ldr x1, [x1, #0x898]
//  0x439664: ldr x4, [PP, #0x4c0]
//  0x439668: bl #0x3a1dcc
//  0x43966c: stur x0, [FP, #-8]
//  0x439670: bl #0x3b82c4
//  0x439674: stur x0, [FP, #-0x10]
//  0x439678: bl #0x31d844
//  0x43967c: mov x1, x0
//  0x439680: ldr x0, [PP, #0x6310]
//  0x439684: stur x1, [FP, #-0x20]
//  0x439688: stur w0, [x1, #0x27]
//  0x43968c: fmov d0, #1.00000000
//  0x439690: stur d0, [x1, #7]
//  0x439694: add x17, PP, #0x11, lsl #12
//  0x439698: ldr d1, [x17, #0x7f8]
//  0x43969c: stur d1, [x1, #0xf]
//  0x4396a0: add x17, PP, #0xf, lsl #12
//  0x4396a4: ldr d1, [x17, #0xd50]
//  0x4396a8: stur d1, [x1, #0x17]
//  0x4396ac: stur d0, [x1, #0x1f]
//  0x4396b0: bl #0x31d844
//  0x4396b4: mov x1, x0
//  0x4396b8: ldr x0, [PP, #0x6310]
//  0x4396bc: stur x1, [FP, #-0x28]
//  0x4396c0: stur w0, [x1, #0x27]
//  0x4396c4: fmov d0, #1.00000000
//  0x4396c8: stur d0, [x1, #7]
//  0x4396cc: ldr d1, [PP, #0x64d0]
//  0x4396d0: stur d1, [x1, #0xf]
//  0x4396d4: add x17, PP, #0x10, lsl #12
//  0x4396d8: ldr d1, [x17, #0xad8]
//  0x4396dc: stur d1, [x1, #0x17]
//  0x4396e0: stur d0, [x1, #0x1f]
//  0x4396e4: bl #0x31d844
//  0x4396e8: mov x3, x0
//  0x4396ec: ldr x0, [PP, #0x6310]
//  0x4396f0: stur x3, [FP, #-0x30]
//  0x4396f4: stur w0, [x3, #0x27]
//  0x4396f8: fmov d0, #1.00000000
//  0x4396fc: stur d0, [x3, #7]
//  0x439700: add x17, PP, #0x11, lsl #12
//  0x439704: ldr d0, [x17, #0x800]
//  0x439708: stur d0, [x3, #0xf]
//  0x43970c: add x17, PP, #0xe, lsl #12
//  0x439710: ldr d0, [x17, #0xe48]
//  0x439714: stur d0, [x3, #0x17]
//  0x439718: add x17, PP, #0xf, lsl #12
//  0x43971c: ldr d0, [x17, #0x628]
//  0x439720: stur d0, [x3, #0x1f]
//  0x439724: mov x1, NULL
//  0x439728: mov x2, #6
//  0x43972c: bl #0x61f920
//  0x439730: mov x2, x0
//  0x439734: ldur x0, [FP, #-0x20]
//  0x439738: stur x2, [FP, #-0x38]
//  0x43973c: stur w0, [x2, #0xf]
//  0x439740: ldur x0, [FP, #-0x28]
//  0x439744: stur w0, [x2, #0x13]
//  0x439748: ldur x0, [FP, #-0x30]
//  0x43974c: stur w0, [x2, #0x17]
//  0x439750: add x1, PP, #0x10, lsl #12
//  0x439754: ldr x1, [x1, #0xc58]
//  0x439758: bl #0x61e854
//  0x43975c: mov x1, x0
//  0x439760: ldur x0, [FP, #-0x38]
//  0x439764: stur x1, [FP, #-0x20]
//  0x439768: stur w0, [x1, #0xf]
//  0x43976c: mov x0, #6
//  0x439770: stur w0, [x1, #0xb]
//  0x439774: bl #0x3a108c
//  0x439778: mov x1, x0
//  0x43977c: add x0, PP, #0xe, lsl #12
//  0x439780: ldr x0, [x0, #0xb88]
//  0x439784: stur x1, [FP, #-0x28]
//  0x439788: stur w0, [x1, #0x13]
//  0x43978c: add x0, PP, #0x11, lsl #12
//  0x439790: ldr x0, [x0, #0x808]
//  0x439794: stur w0, [x1, #0x17]
//  0x439798: add x0, PP, #0x10, lsl #12
//  0x43979c: ldr x0, [x0, #0xc78]
//  0x4397a0: stur w0, [x1, #0x1b]
//  0x4397a4: ldur x0, [FP, #-0x20]
//  0x4397a8: stur w0, [x1, #7]
//  0x4397ac: bl #0x391dd8
//  0x4397b0: mov x3, x0
//  0x4397b4: ldur x0, [FP, #-0x28]
//  0x4397b8: stur x3, [FP, #-0x20]
//  0x4397bc: stur w0, [x3, #0x1b]
//  0x4397c0: add x0, PP, #0xe, lsl #12
//  0x4397c4: ldr x0, [x0, #0xb78]
//  0x4397c8: stur w0, [x3, #0x23]
//  0x4397cc: ldur x2, [FP, #-0x18]
//  0x4397d0: add x1, PP, #0x11, lsl #12
//  0x4397d4: ldr x1, [x1, #0x810]
//  0x4397d8: bl #0x61ec54
//  0x4397dc: add x1, PP, #0x11, lsl #12
//  0x4397e0: ldr x1, [x1, #0x818]
//  0x4397e4: stur x0, [FP, #-0x28]
//  0x4397e8: bl #0x41a414
//  0x4397ec: mov x1, x0
//  0x4397f0: ldur x0, [FP, #-0x28]
//  0x4397f4: stur x1, [FP, #-0x30]
//  0x4397f8: stur w0, [x1, #0x13]
//  0x4397fc: bl #0x391a04
//  0x439800: stur x0, [FP, #-0x28]
//  0x439804: ldr BARRIER, [PP, #0x5458]
//  0x439808: ldur LR, [FP, #-0x20]
//  0x43980c: stp LR, BARRIER, [SP, #8]
//  0x439810: ldur BARRIER, [FP, #-0x30]
//  0x439814: str BARRIER, [SP]
//  0x439818: mov x1, x0
//  0x43981c: add x4, PP, #0x11, lsl #12
//  0x439820: ldr x4, [x4, #0x820]
//  0x439824: bl #0x391490
//  0x439828: ldur x2, [FP, #-0x18]
//  0x43982c: add x1, PP, #0x11, lsl #12
//  0x439830: ldr x1, [x1, #0x828]
//  0x439834: bl #0x61ec54
//  0x439838: add x1, PP, #0x11, lsl #12
//  0x43983c: ldr x1, [x1, #0x818]
//  0x439840: stur x0, [FP, #-0x18]
//  0x439844: bl #0x3b81c4
//  0x439848: mov x1, x0
//  0x43984c: ldur x2, [FP, #-0x28]
//  0x439850: ldur x3, [FP, #-0x18]
//  0x439854: mov x5, NULL
//  0x439858: stur x0, [FP, #-0x18]
//  0x43985c: bl #0x3b7e8c
//  0x439860: bl #0x3b7d48
//  0x439864: ldur x1, [FP, #-8]
//  0x439868: stur w1, [x0, #0xb]
//  0x43986c: ldur x1, [FP, #-0x10]
//  0x439870: stur w1, [x0, #0x17]
//  0x439874: ldur x1, [FP, #-0x18]
//  0x439878: stur w1, [x0, #0x1b]
//  0x43987c: mov SP, FP
//  0x439880: ldp FP, LR, [SP], #0x10
//  0x439884: ret 
//  0x439888: bl #0x61fa28
//  0x43988c: b #0x439584
//  0x439890: stp q1, q2, [SP, #-0x20]!
//  0x439894: bl #0x61f878
//  0x439898: ldp q1, q2, [SP], #0x20
//  0x43989c: b #0x4395d8
//  0x4398a0: str q2, [SP, #-0x10]!
//  0x4398a4: str x2, [SP, #-8]!
//  0x4398a8: bl #0x61f878
//  0x4398ac: ldr x2, [SP], #8
//  0x4398b0: ldr q2, [SP], #0x10
//  0x4398b4: b #0x43963c
//
dynamic PageGameFruitRankingState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic q2;
  dynamic v1_16b;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x43955c
  // frame: FP = SP // 0x439560
  // frame: SP = SP - 0x50 // 0x439564
  x0 = x1; // 0x439568
  local_m8 = x1; // 0x43956c
  x1 = x2; // 0x439570
  local_m10 = x2; // 0x439574
  BARRIER = mem(THR, 0x38); // 0x439578
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x439888
  }
  x1 = 3; // 0x439584
  sub_0x61e890(); // 0x439588
  x0 = local_m8; // 0x439590
  x2 = x0; // 0x43958c
  local_m18 = x2; // 0x439594
  memSet(x2, 0xf, w0); // 0x439598
  x1 = local_m10; // 0x43959c
  ScreenUtil_getScreenWidth() /* 0x3a877c */; // 0x4395a0
  d0 = 4599244073856839014; // 0x4395ac
  d2 = (d1 * d0) /* float */; // 0x4395b0
  v1_16b = v0_16b; // 0x4395a4
  x17 = PP + 0x11000; // 0x4395a8
  memRead2(THR, 0x50, x0, x1); // 0x4395b4
  x0 = x0 + 0x10; // 0x4395b8
  if (x1 <= x0) {
    // frame: q1, q2, mem(SP, -0x20)! // 0x439890
    AllocationStub__Double() /* 0x61f878 */; // 0x439894
    // frame: q1, q2, mem(SP), 0x20 // 0x439898
  } else {
    memSet(THR, 0x50, x0); // 0x4395c4
    x0 = x0 - 0xf; // 0x4395c8
    x1 = (x1 & 0xffff) | 0x30000; // 0x4395d0
    memSet(x0, -1, x1); // 0x4395d4
  }
  memSet(x0, 7, d2); // 0x4395d8
  x2 = local_m18; // 0x4395dc
  memSet(x2, 0x13, w0); // 0x4395e0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4395ec
  w16 = mem(x2, -1); // 0x4395e4
  w17 = mem(x0, -1); // 0x4395e8
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x4395e4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4395e8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x4395f8
  }
  d0 = 2.00000000 /* bits */; // 0x439610
  d1 = ((((((14.00000000 /* bits */) - d2) /* float */) - (14.00000000 /* bits */)) /* float */) - d0) /* float */; // 0x43960c
  d2 = ((((14.00000000 /* bits */) - d2) /* float */) - (14.00000000 /* bits */)) /* float */; // 0x439604
  d2 = (d1 / d0) /* float */; // 0x439614
  memRead2(THR, 0x50, x0, x1); // 0x439618
  x0 = x0 + 0x10; // 0x43961c
  if (x1 <= x0) {
    local_m10 = q2; // 0x4398a0
    local_m8 = x2; // 0x4398a4
    AllocationStub__Double() /* 0x61f878 */; // 0x4398a8
    q2 = local_0; // 0x4398b0
    x2 = local_0; // 0x4398ac
  } else {
    memSet(THR, 0x50, x0); // 0x439628
    x0 = x0 - 0xf; // 0x43962c
    x1 = (x1 & 0xffff) | 0x30000; // 0x439634
    memSet(x0, -1, x1); // 0x439638
  }
  memSet(x0, 7, d2); // 0x43963c
  memSet(x2, 0x17, w0); // 0x439640
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43964c
  w16 = mem(x2, -1); // 0x439644
  w17 = mem(x0, -1); // 0x439648
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x439644
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x439648
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x439658
  }
  x1 = "virtual_party_fruitland_ranking_page_title" /* pp+0xc898 */; // 0x439660
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x439664
  getString() /* 0x3a1dcc */; // 0x439668
  local_m8 = x0; // 0x43966c
  SOColors_get_s_06() /* 0x3b82c4 */; // 0x439670
  local_m10 = x0; // 0x439674
  AllocationStub_Color() /* 0x31d844 */; // 0x439678
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x439680
  x1 = x0; // 0x43967c
  local_m20 = x1; // 0x439684
  memSet(x1, 0x27, w0); // 0x439688
  d0 = 1.00000000 /* bits */; // 0x43968c
  memSet(x1, 7, d0); // 0x439690
  d1 = 4604780498998753143; // 0x439698
  x17 = PP + 0x11000; // 0x439694
  memSet(x1, 0xf, d1); // 0x43969c
  d1 = 4598404814820397265; // 0x4396a4
  x17 = PP + 0xf000; // 0x4396a0
  memSet(x1, 0x17, d1); // 0x4396a8
  memSet(x1, 0x1f, d0); // 0x4396ac
  AllocationStub_Color() /* 0x31d844 */; // 0x4396b0
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x4396b8
  x1 = x0; // 0x4396b4
  local_m28 = x1; // 0x4396bc
  memSet(x1, 0x27, w0); // 0x4396c0
  d0 = 1.00000000 /* bits */; // 0x4396c4
  memSet(x1, 7, d0); // 0x4396c8
  d1 = 4599676419421066581; // 0x4396cc
  memSet(x1, 0xf, d1); // 0x4396d0
  d1 = 4598546104220471633; // 0x4396d8
  x17 = PP + 0x10000; // 0x4396d4
  memSet(x1, 0x17, d1); // 0x4396dc
  memSet(x1, 0x1f, d0); // 0x4396e0
  AllocationStub_Color() /* 0x31d844 */; // 0x4396e4
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x4396ec
  x3 = x0; // 0x4396e8
  local_m30 = x3; // 0x4396f0
  memSet(x3, 0x27, w0); // 0x4396f4
  d0 = 1.00000000 /* bits */; // 0x4396f8
  memSet(x3, 7, d0); // 0x4396fc
  d0 = 4590881154266437142; // 0x439704
  x17 = PP + 0x11000; // 0x439700
  memSet(x3, 0xf, d0); // 0x439708
  d0 = 4603155670897897906; // 0x439710
  x17 = PP + 0xe000; // 0x43970c
  memSet(x3, 0x17, d0); // 0x439714
  d0 = 4607147096449998816; // 0x43971c
  x17 = PP + 0xf000; // 0x439718
  memSet(x3, 0x1f, d0); // 0x439720
  x1 = NULL; // 0x439724
  x2 = 6; // 0x439728
  sub_0x61f920(); // 0x43972c
  x0 = local_m20; // 0x439734
  x2 = x0; // 0x439730
  local_m38 = x2; // 0x439738
  memSet(x2, 0xf, w0); // 0x43973c
  x0 = local_m28; // 0x439740
  memSet(x2, 0x13, w0); // 0x439744
  x0 = local_m30; // 0x439748
  memSet(x2, 0x17, w0); // 0x43974c
  x1 = mem((PP + 0x10000), 0xc58) /* TypeArguments */; // 0x439754
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x439758
  x0 = local_m38; // 0x439760
  x1 = x0; // 0x43975c
  local_m20 = x1; // 0x439764
  memSet(x1, 0xf, w0); // 0x439768
  x0 = 6; // 0x43976c
  memSet(x1, 0xb, w0); // 0x439770
  AllocationStub_LinearGradient() /* 0x3a108c */; // 0x439774
  x0 = mem((PP + 0xe000), 0xb88) /* Obj!Alignment@11bda  */; // 0x439780
  x1 = x0; // 0x439778
  local_m28 = x1; // 0x439784
  memSet(x1, 0x13, w0); // 0x439788
  x0 = mem((PP + 0x11000), 0x808) /* Obj!Alignment@11be1  */; // 0x439790
  memSet(x1, 0x17, w0); // 0x439794
  x0 = mem((PP + 0x10000), 0xc78) /* Obj!TileMode@1233e  */; // 0x43979c
  memSet(x1, 0x1b, w0); // 0x4397a0
  x0 = local_m20; // 0x4397a4
  memSet(x1, 7, w0); // 0x4397a8
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x4397ac
  x0 = local_m28; // 0x4397b4
  x3 = x0; // 0x4397b0
  local_m20 = x3; // 0x4397b8
  memSet(x3, 0x1b, w0); // 0x4397bc
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x4397c4
  memSet(x3, 0x23, w0); // 0x4397c8
  x1 = mem((PP + 0x11000), 0x810) /* Function */; // 0x4397d4
  x2 = local_m18; // 0x4397cc
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4397d8
  x1 = mem((PP + 0x11000), 0x818) /* TypeArguments */; // 0x4397e0
  local_m28 = x0; // 0x4397e4
  AllocationStub_Consumer() /* 0x41a414 */; // 0x4397e8
  x0 = local_m28; // 0x4397f0
  x1 = x0; // 0x4397ec
  local_m30 = x1; // 0x4397f4
  memSet(x1, 0x13, w0); // 0x4397f8
  AllocationStub_Container() /* 0x391a04 */; // 0x4397fc
  local_m28 = x0; // 0x439800
  BARRIER = mem(PP, 0x5458) /* Double */; // 0x439804
  LR = local_m20; // 0x439808
  // frame: LR, BARRIER, mem(SP, 8) // 0x43980c
  BARRIER = local_m30; // 0x439810
  local_0 = BARRIER; // 0x439814
  x1 = x0; // 0x439818
  x4 = mem((PP + 0x11000), 0x820) /* ImmutableArray */; // 0x439820
  Container_ctor() /* 0x391490 */; // 0x439824
  x1 = mem((PP + 0x11000), 0x828) /* Function */; // 0x439830
  x2 = local_m18; // 0x439828
  AllocationStub__Closure() /* 0x61ec54 */; // 0x439834
  x1 = mem((PP + 0x11000), 0x818) /* TypeArguments */; // 0x43983c
  local_m18 = x0; // 0x439840
  AllocationStub_ChangeNotifierProvider() /* 0x3b81c4 */; // 0x439844
  x1 = x0; // 0x439848
  x2 = local_m28; // 0x43984c
  x3 = local_m18; // 0x439850
  x5 = NULL; // 0x439854
  local_m18 = x0; // 0x439858
  InheritedProvider_ctor() /* 0x3b7e8c */; // 0x43985c
  AllocationStub_SoulPageScaffold() /* 0x3b7d48 */; // 0x439860
  x1 = local_m8; // 0x439864
  memSet(x0, 0xb, w1); // 0x439868
  x1 = local_m10; // 0x43986c
  memSet(x0, 0x17, w1); // 0x439870
  x1 = local_m18; // 0x439874
  memSet(x0, 0x1b, w1); // 0x439878
  SP = FP; // 0x43987c
  // frame: FP, LR, mem(SP), 0x10 // 0x439880
  return;
}

// PageGameFruitRankingState_anon_closure_3
// raw disassembly:
//  0x4398b8: stp FP, LR, [SP, #-0x10]!
//  0x4398bc: mov FP, SP
//  0x4398c0: sub SP, SP, #8
//  0x4398c4: ldr x0, [FP, #0x28]
//  0x4398c8: ldur w2, [x0, #0x17]
//  0x4398cc: add x2, x2, HEAP, lsl #32
//  0x4398d0: stur x2, [FP, #-8]
//  0x4398d4: ldr BARRIER, [THR, #0x38]
//  0x4398d8: cmp SP, BARRIER
//  0x4398dc: b.ls #0x43997c
//  0x4398e0: ldur w1, [x2, #0xf]
//  0x4398e4: add x1, x1, HEAP, lsl #32
//  0x4398e8: ldur w3, [x1, #0x13]
//  0x4398ec: add x3, x3, HEAP, lsl #32
//  0x4398f0: ldur w0, [x3, #0x2b]
//  0x4398f4: add x0, x0, HEAP, lsl #32
//  0x4398f8: ldur w4, [x0, #0xb]
//  0x4398fc: sbfx x5, x4, #1, #0x1f
//  0x439900: cmp x5, #0
//  0x439904: b.le #0x439940
//  0x439908: ldur w5, [x1, #0x17]
//  0x43990c: add x5, x5, HEAP, lsl #32
//  0x439910: ldr BARRIER, [PP, #0x40]
//  0x439914: cmp w5, w16
//  0x439918: b.eq #0x439984
//  0x43991c: ldur w4, [x2, #0x13]
//  0x439920: add x4, x4, HEAP, lsl #32
//  0x439924: ldur w6, [x2, #0x17]
//  0x439928: add x6, x6, HEAP, lsl #32
//  0x43992c: ldur d0, [x4, #7]
//  0x439930: ldur d1, [x6, #7]
//  0x439934: mov x2, x0
//  0x439938: bl #0x436d20
//  0x43993c: b #0x439970
//  0x439940: add x1, PP, #0xc, lsl #12
//  0x439944: ldr x1, [x1, #0x888]
//  0x439948: ldr x4, [PP, #0x4c0]
//  0x43994c: bl #0x3a1dcc
//  0x439950: mov x1, x0
//  0x439954: ldur x0, [FP, #-8]
//  0x439958: ldur w2, [x0, #0xf]
//  0x43995c: add x2, x2, HEAP, lsl #32
//  0x439960: mov BARRIER, x1
//  0x439964: mov x1, x2
//  0x439968: mov x2, BARRIER
//  0x43996c: bl #0x438528
//  0x439970: mov SP, FP
//  0x439974: ldp FP, LR, [SP], #0x10
//  0x439978: ret 
//  0x43997c: bl #0x61fa28
//  0x439980: b #0x4398e0
//  0x439984: add x9, PP, #0x11, lsl #12
//  0x439988: ldr x9, [x9, #0x830]
//  0x43998c: bl #0x620258
//
dynamic PageGameFruitRankingState_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic w4;
  dynamic w5;
  dynamic w6;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4398b8
  // frame: FP = SP // 0x4398bc
  // frame: SP = SP - 8 // 0x4398c0
  w2 = mem((local_28), 0x17); /* _PageGameFruitRankingState._refreshController (off 0x18) */  // 0x4398c8
  x0 = local_28; // 0x4398c4
  x2 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PageGameFruitRankingState._refreshController (off 0x18) */  // 0x4398cc
  local_m8 = x2; // 0x4398d0
  BARRIER = mem(THR, 0x38); // 0x4398d4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x43997c
  }
  w0 = mem((((mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x4398f0
  w3 = mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x13); // 0x4398e8
  w4 = mem((((mem((((mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x4398f8
  x0 = ((mem((((mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x4398f4
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4398e4
  x3 = ((mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4398ec
  x4 = (mem((((mem((((mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x4398f8
  x5 = (((mem((((mem((((mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x4398fc
  if (x5 <= 0) {
    x1 = "virtual_party_fruitland_ranking_page_default_text" /* pp+0xc888 */; // 0x439944
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x439948
    getString() /* 0x3a1dcc */; // 0x43994c
    BARRIER = x0; // 0x439960
    w2 = mem((local_m8), 0xf); // 0x439958
    x0 = local_m8; // 0x439954
    x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x439964
    x2 = x0; // 0x439968
    PageGameFruitRankingState_rankListEmptyWidget() /* 0x438528 */; // 0x43996c
  } else {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x439910
    x5 = (w5 & 0xffffffff) + (HEAP << 32); // 0x43990c
    if (w5 == w16) {
      x9 = mem((PP + 0x11000), 0x830) /* Field */; // 0x439988
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x43998c
    }
    d0 = mem(((w4 & 0xffffffff) + (HEAP << 32)), 7); // 0x43992c
    d1 = mem((((mem(x2, 0x17)) & 0xffffffff) + (HEAP << 32)), 7); /* _PageGameFruitRankingState._refreshController (off 0x18) */  // 0x439930
    w6 = mem(x2, 0x17); /* _PageGameFruitRankingState._refreshController (off 0x18) */  // 0x439924
    x2 = x0; // 0x439934
    x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x439920
    x6 = ((mem(x2, 0x17)) & 0xffffffff) + (HEAP << 32); /* _PageGameFruitRankingState._refreshController (off 0x18) */  // 0x439928
    PageGameFruitRankingState_userRankListWidget() /* 0x436d20 */; // 0x439938
  }
  SP = FP; // 0x439970
  // frame: FP, LR, mem(SP), 0x10 // 0x439974
  return;
}

// PageGameFruitRankingState_dispose
// raw disassembly:
//  0x4523dc: stp FP, LR, [SP, #-0x10]!
//  0x4523e0: mov FP, SP
//  0x4523e4: ldr BARRIER, [THR, #0x38]
//  0x4523e8: cmp SP, BARRIER
//  0x4523ec: b.ls #0x45241c
//  0x4523f0: ldur w0, [x1, #0x17]
//  0x4523f4: add x0, x0, HEAP, lsl #32
//  0x4523f8: ldr BARRIER, [PP, #0x40]
//  0x4523fc: cmp w0, w16
//  0x452400: b.eq #0x452424
//  0x452404: mov x1, x0
//  0x452408: bl #0x45132c
//  0x45240c: mov x0, NULL
//  0x452410: mov SP, FP
//  0x452414: ldp FP, LR, [SP], #0x10
//  0x452418: ret 
//  0x45241c: bl #0x61fa28
//  0x452420: b #0x4523f0
//  0x452424: add x9, PP, #0x11, lsl #12
//  0x452428: ldr x9, [x9, #0x830]
//  0x45242c: bl #0x620258
//
dynamic PageGameFruitRankingState_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4523dc
  BARRIER = mem(THR, 0x38); // 0x4523e4
  // frame: FP = SP // 0x4523e0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x45241c
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4523f8
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4523f4
  if (w0 == w16) {
    x9 = mem((PP + 0x11000), 0x830) /* Field */; // 0x452428
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x45242c
  }
  x1 = x0; // 0x452404
  RefreshController_dispose() /* 0x45132c */; // 0x452408
  SP = FP; // 0x452410
  x0 = NULL; // 0x45240c
  // frame: FP, LR, mem(SP), 0x10 // 0x452414
  return;
}

// PageGameFruitRankingState_initState
// raw disassembly:
//  0x4d8f14: stp FP, LR, [SP, #-0x10]!
//  0x4d8f18: mov FP, SP
//  0x4d8f1c: sub SP, SP, #0x18
//  0x4d8f20: stur x1, [FP, #-8]
//  0x4d8f24: ldr BARRIER, [THR, #0x38]
//  0x4d8f28: cmp SP, BARRIER
//  0x4d8f2c: b.ls #0x4d8fb4
//  0x4d8f30: mov x1, #1
//  0x4d8f34: bl #0x61e890
//  0x4d8f38: mov x1, x0
//  0x4d8f3c: ldur x0, [FP, #-8]
//  0x4d8f40: stur x1, [FP, #-0x10]
//  0x4d8f44: stur w0, [x1, #0xf]
//  0x4d8f48: bl #0x4c47f0
//  0x4d8f4c: mov x1, x0
//  0x4d8f50: stur x0, [FP, #-0x18]
//  0x4d8f54: bl #0x4c46e0
//  0x4d8f58: ldur x0, [FP, #-0x18]
//  0x4d8f5c: ldur x1, [FP, #-8]
//  0x4d8f60: stur w0, [x1, #0x17]
//  0x4d8f64: ldurb w16, [x1, #-1]
//  0x4d8f68: ldurb w17, [x0, #-1]
//  0x4d8f6c: and BARRIER, x17, BARRIER, lsr #2
//  0x4d8f70: tst BARRIER, HEAP, lsr #32
//  0x4d8f74: b.eq #0x4d8f7c
//  0x4d8f78: bl #0x61e04c
//  0x4d8f7c: ldur w0, [x1, #0x13]
//  0x4d8f80: add x0, x0, HEAP, lsl #32
//  0x4d8f84: ldur x2, [FP, #-0x10]
//  0x4d8f88: stur x0, [FP, #-0x18]
//  0x4d8f8c: add x1, PP, #0x11, lsl #12
//  0x4d8f90: ldr x1, [x1, #0x9e8]
//  0x4d8f94: bl #0x61ec54
//  0x4d8f98: ldur x1, [FP, #-0x18]
//  0x4d8f9c: mov x2, x0
//  0x4d8fa0: bl #0x4d8fbc
//  0x4d8fa4: mov x0, NULL
//  0x4d8fa8: mov SP, FP
//  0x4d8fac: ldp FP, LR, [SP], #0x10
//  0x4d8fb0: ret 
//  0x4d8fb4: bl #0x61fa28
//  0x4d8fb8: b #0x4d8f30
//
dynamic PageGameFruitRankingState_initState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d8f14
  // frame: FP = SP // 0x4d8f18
  // frame: SP = SP - 0x18 // 0x4d8f1c
  local_m8 = x1; // 0x4d8f20
  BARRIER = mem(THR, 0x38); // 0x4d8f24
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d8fb4
  }
  x1 = 1; // 0x4d8f30
  sub_0x61e890(); // 0x4d8f34
  x0 = local_m8; // 0x4d8f3c
  x1 = x0; // 0x4d8f38
  local_m10 = x1; // 0x4d8f40
  memSet(x1, 0xf, w0); // 0x4d8f44
  AllocationStub_RefreshController() /* 0x4c47f0 */; // 0x4d8f48
  x1 = x0; // 0x4d8f4c
  local_m18 = x0; // 0x4d8f50
  RefreshController_ctor() /* 0x4c46e0 */; // 0x4d8f54
  x0 = local_m18; // 0x4d8f58
  x1 = local_m8; // 0x4d8f5c
  memSet(x1, 0x17, w0); // 0x4d8f60
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d8f6c
  w16 = mem(x1, -1); // 0x4d8f64
  w17 = mem(x0, -1); // 0x4d8f68
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d8f64
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d8f68
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d8f78
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d8f80
  x2 = local_m10; // 0x4d8f84
  local_m18 = x0; // 0x4d8f88
  x1 = mem((PP + 0x11000), 0x9e8) /* Function */; // 0x4d8f90
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d8f94
  x1 = local_m18; // 0x4d8f98
  x2 = x0; // 0x4d8f9c
  GameFruitRankingNotifier_gainGameFruitRank() /* 0x4d8fbc */; // 0x4d8fa0
  SP = FP; // 0x4d8fa8
  x0 = NULL; // 0x4d8fa4
  // frame: FP, LR, mem(SP), 0x10 // 0x4d8fac
  return;
}

// PageGameFruitRankingState_anon_closure_4
// raw disassembly:
//  0x4d9010: stp FP, LR, [SP, #-0x10]!
//  0x4d9014: mov FP, SP
//  0x4d9018: ldr x0, [FP, #0x20]
//  0x4d901c: ldur w1, [x0, #0x17]
//  0x4d9020: add x1, x1, HEAP, lsl #32
//  0x4d9024: ldr BARRIER, [THR, #0x38]
//  0x4d9028: cmp SP, BARRIER
//  0x4d902c: b.ls #0x4d90b8
//  0x4d9030: ldr x0, [FP, #0x18]
//  0x4d9034: tbnz w0, #4, #0x4d9088
//  0x4d9038: ldr x0, [FP, #0x10]
//  0x4d903c: tbnz w0, #4, #0x4d9064
//  0x4d9040: ldur w0, [x1, #0xf]
//  0x4d9044: add x0, x0, HEAP, lsl #32
//  0x4d9048: ldur w1, [x0, #0x17]
//  0x4d904c: add x1, x1, HEAP, lsl #32
//  0x4d9050: ldr BARRIER, [PP, #0x40]
//  0x4d9054: cmp w1, w16
//  0x4d9058: b.eq #0x4d90c0
//  0x4d905c: bl #0x3adfd4
//  0x4d9060: b #0x4d90a8
//  0x4d9064: ldur w0, [x1, #0xf]
//  0x4d9068: add x0, x0, HEAP, lsl #32
//  0x4d906c: ldur w1, [x0, #0x17]
//  0x4d9070: add x1, x1, HEAP, lsl #32
//  0x4d9074: ldr BARRIER, [PP, #0x40]
//  0x4d9078: cmp w1, w16
//  0x4d907c: b.eq #0x4d90cc
//  0x4d9080: bl #0x3ade48
//  0x4d9084: b #0x4d90a8
//  0x4d9088: ldur w0, [x1, #0xf]
//  0x4d908c: add x0, x0, HEAP, lsl #32
//  0x4d9090: ldur w1, [x0, #0x17]
//  0x4d9094: add x1, x1, HEAP, lsl #32
//  0x4d9098: ldr BARRIER, [PP, #0x40]
//  0x4d909c: cmp w1, w16
//  0x4d90a0: b.eq #0x4d90d8
//  0x4d90a4: bl #0x3adbb4
//  0x4d90a8: mov x0, NULL
//  0x4d90ac: mov SP, FP
//  0x4d90b0: ldp FP, LR, [SP], #0x10
//  0x4d90b4: ret 
//  0x4d90b8: bl #0x61fa28
//  0x4d90bc: b #0x4d9030
//  0x4d90c0: add x9, PP, #0x11, lsl #12
//  0x4d90c4: ldr x9, [x9, #0x830]
//  0x4d90c8: bl #0x620258
//  0x4d90cc: add x9, PP, #0x11, lsl #12
//  0x4d90d0: ldr x9, [x9, #0x830]
//  0x4d90d4: bl #0x620258
//  0x4d90d8: add x9, PP, #0x11, lsl #12
//  0x4d90dc: ldr x9, [x9, #0x830]
//  0x4d90e0: bl #0x620258
//
dynamic PageGameFruitRankingState_anon_closure_4() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d9010
  BARRIER = mem(THR, 0x38); // 0x4d9024
  // frame: FP = SP // 0x4d9014
  w1 = mem((local_20), 0x17); /* _PageGameFruitRankingState._refreshController (off 0x18) */  // 0x4d901c
  x0 = local_20; // 0x4d9018
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PageGameFruitRankingState._refreshController (off 0x18) */  // 0x4d9020
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d90b8
  }
  x0 = local_18; // 0x4d9030
  if (x0 & (1 << 4) != 0) {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d9098
    w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4d9090
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d908c
    x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d9094
    if (w1 != w16) {
      RefreshController_loadFailed() /* 0x3adbb4 */; // 0x4d90a4
      SP = FP; // 0x4d90ac
      x0 = NULL; // 0x4d90a8
      // frame: FP, LR, mem(SP), 0x10 // 0x4d90b0
      return;
    }
  } else {
    x0 = local_10; // 0x4d9038
    if (x0 & (1 << 4) != 0) {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d9074
      w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4d906c
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d9068
      x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d9070
      if (w1 != w16) {
        RefreshController_loadComplete() /* 0x3ade48 */; // 0x4d9080
        // duplicated tail (join at 0x4d90a8; the same code was emitted above)
        SP = FP; // 0x4d90ac
        x0 = NULL; // 0x4d90a8
        // frame: FP, LR, mem(SP), 0x10 // 0x4d90b0
        return;
      }
    } else {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d9050
      w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4d9048
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d9044
      x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d904c
      if (w1 == w16) {
        x9 = mem((PP + 0x11000), 0x830) /* Field */; // 0x4d90c4
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d90c8
      }
      RefreshController_loadNoData() /* 0x3adfd4 */; // 0x4d905c
      // duplicated tail (join at 0x4d90a8; the same code was emitted above)
      SP = FP; // 0x4d90ac
      x0 = NULL; // 0x4d90a8
      // frame: FP, LR, mem(SP), 0x10 // 0x4d90b0
      return;
    }
    x9 = mem((PP + 0x11000), 0x830) /* Field */; // 0x4d90d0
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d90d4
  }
  x9 = mem((PP + 0x11000), 0x830) /* Field */; // 0x4d90dc
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d90e0
}

// PageGameFruitRanking_createState
// raw disassembly:
//  0x4c3a90: stp FP, LR, [SP, #-0x10]!
//  0x4c3a94: mov FP, SP
//  0x4c3a98: sub SP, SP, #0x10
//  0x4c3a9c: ldr BARRIER, [THR, #0x38]
//  0x4c3aa0: cmp SP, BARRIER
//  0x4c3aa4: b.ls #0x4c3b08
//  0x4c3aa8: add x1, PP, #0xb, lsl #12
//  0x4c3aac: ldr x1, [x1, #0x828]
//  0x4c3ab0: bl #0x4c3bd8
//  0x4c3ab4: mov x1, x0
//  0x4c3ab8: ldr x0, [PP, #0x40]
//  0x4c3abc: stur x1, [FP, #-8]
//  0x4c3ac0: stur w0, [x1, #0x17]
//  0x4c3ac4: bl #0x4c3bcc
//  0x4c3ac8: mov x1, x0
//  0x4c3acc: stur x0, [FP, #-0x10]
//  0x4c3ad0: bl #0x4c3b10
//  0x4c3ad4: ldur x0, [FP, #-0x10]
//  0x4c3ad8: ldur x1, [FP, #-8]
//  0x4c3adc: stur w0, [x1, #0x13]
//  0x4c3ae0: ldurb w16, [x1, #-1]
//  0x4c3ae4: ldurb w17, [x0, #-1]
//  0x4c3ae8: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3aec: tst BARRIER, HEAP, lsr #32
//  0x4c3af0: b.eq #0x4c3af8
//  0x4c3af4: bl #0x61e04c
//  0x4c3af8: mov x0, x1
//  0x4c3afc: mov SP, FP
//  0x4c3b00: ldp FP, LR, [SP], #0x10
//  0x4c3b04: ret 
//  0x4c3b08: bl #0x61fa28
//  0x4c3b0c: b #0x4c3aa8
//
dynamic PageGameFruitRanking_createState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c3a90
  BARRIER = mem(THR, 0x38); // 0x4c3a9c
  // frame: FP = SP // 0x4c3a94
  // frame: SP = SP - 0x10 // 0x4c3a98
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c3b08
  }
  x1 = mem((PP + 0xb000), 0x828) /* TypeArguments */; // 0x4c3aac
  AllocationStub__PageGameFruitRankingState() /* 0x4c3bd8 */; // 0x4c3ab0
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4c3ab8
  x1 = x0; // 0x4c3ab4
  local_m8 = x1; // 0x4c3abc
  memSet(x1, 0x17, w0); // 0x4c3ac0
  AllocationStub_GameFruitRankingNotifier() /* 0x4c3bcc */; // 0x4c3ac4
  x1 = x0; // 0x4c3ac8
  local_m10 = x0; // 0x4c3acc
  GameFruitRankingNotifier_ctor() /* 0x4c3b10 */; // 0x4c3ad0
  x0 = local_m10; // 0x4c3ad4
  x1 = local_m8; // 0x4c3ad8
  memSet(x1, 0x13, w0); // 0x4c3adc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3ae8
  w16 = mem(x1, -1); // 0x4c3ae0
  w17 = mem(x0, -1); // 0x4c3ae4
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c3ae0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3ae4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c3af4
  }
  SP = FP; // 0x4c3afc
  x0 = x1; // 0x4c3af8
  // frame: FP, LR, mem(SP), 0x10 // 0x4c3b00
  return;
}
