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

dynamic AllocationStub_Align, AllocationStub_AssetImage, AllocationStub_BorderRadius;
dynamic AllocationStub_BoxConstraints, AllocationStub_BoxDecoration;
dynamic AllocationStub_ChangeNotifierProvider, AllocationStub_ClipRRect, AllocationStub_Color;
dynamic AllocationStub_Column, AllocationStub_Consumer, AllocationStub_Container;
dynamic AllocationStub_DecorationImage, AllocationStub_EdgeInsets, AllocationStub_Expanded;
dynamic AllocationStub_GamePKBetRankingNotifier, AllocationStub_ListView;
dynamic AllocationStub_MediaQuery, AllocationStub_Radius, AllocationStub_Row;
dynamic AllocationStub_SOAssetImage, AllocationStub_SizedBox, AllocationStub_SoulAvatarImage;
dynamic AllocationStub_Stack, AllocationStub_StrutStyle, AllocationStub_Text;
dynamic AllocationStub_TextStyle, AllocationStub__Closure, AllocationStub__Double;
dynamic AllocationStub__GrowableList, AllocationStub__PagePKGameBetRankState, BARRIER;
dynamic Container_ctor, FP, GamePKBetRankingNotifier_ctor;
dynamic GamePKBetRankingNotifier_gainPKBetGameRank, GestureDetector_ctor, HEAP;
dynamic InheritedProvider_ctor, LR, ListView_ctor_builder, MediaQuery_ctor_removePadding, NULL;
dynamic NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0, PP;
dynamic RangeErrorSharedWithoutFpuRegsStub_0x61fe70, SP, ScreenUtil_getScreenHeight;
dynamic ScreenUtil_getScreenWidth, StackOverflowSharedWithFpuRegsStub_0x61faa8;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, TextStyles_fontDINCondensedBold;
dynamic WriteBarrierStub_x1, WriteBarrierStub_x3, d0, d1, d2, getString, int_parse, local_0;
dynamic local_10, local_20, local_28, local_m10, local_m18, local_m20, local_m28, local_m30;
dynamic local_m38, local_m40, local_m48, local_m50, local_m58, local_m60, local_m68, local_m70;
dynamic local_m78, local_m8, local_m80, local_m88, local_m90, q0, q1, q2, sub_0x3a1d94;
dynamic sub_0x61e890, sub_0x61f920, sub_0x62a0c0, v0_16b, v1_16b, w0, w1, w16, w17, w2, w22;
dynamic w3, w4, w5, w6, w7, x0, x1, x16, x17, x2, x21, x3, x4, x5, x6, x7, x8, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$pkGame$page_game_make_bet_record
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PagePKGameBetRankState_build
// raw disassembly:
//  0x440e40: stp FP, LR, [SP, #-0x10]!
//  0x440e44: mov FP, SP
//  0x440e48: sub SP, SP, #0x20
//  0x440e4c: mov x0, x1
//  0x440e50: stur x1, [FP, #-8]
//  0x440e54: mov x1, x2
//  0x440e58: stur x2, [FP, #-0x10]
//  0x440e5c: ldr BARRIER, [THR, #0x38]
//  0x440e60: cmp SP, BARRIER
//  0x440e64: b.ls #0x440fbc
//  0x440e68: mov x1, #3
//  0x440e6c: bl #0x61e890
//  0x440e70: mov x2, x0
//  0x440e74: ldur x0, [FP, #-8]
//  0x440e78: stur x2, [FP, #-0x18]
//  0x440e7c: stur w0, [x2, #0xf]
//  0x440e80: ldur x1, [FP, #-0x10]
//  0x440e84: bl #0x3b5484
//  0x440e88: ldur x1, [FP, #-0x10]
//  0x440e8c: stur d0, [FP, #-0x20]
//  0x440e90: bl #0x3a877c
//  0x440e94: mov v1.16b, v0.16b
//  0x440e98: add x17, PP, #0xe, lsl #12
//  0x440e9c: ldr d0, [x17, #0xea0]
//  0x440ea0: fmul d2, d1, d0
//  0x440ea4: add x17, PP, #0xe, lsl #12
//  0x440ea8: ldr d0, [x17, #0xea8]
//  0x440eac: fdiv d1, d2, d0
//  0x440eb0: ldp x0, x1, [THR, #0x50]
//  0x440eb4: add x0, x0, #0x10
//  0x440eb8: cmp x1, x0
//  0x440ebc: b.ls #0x440fc4
//  0x440ec0: str x0, [THR, #0x50]
//  0x440ec4: sub x0, x0, #0xf
//  0x440ec8: mov x1, #0xe15c
//  0x440ecc: movk x1, #3, lsl #16
//  0x440ed0: stur x1, [x0, #-1]
//  0x440ed4: stur d1, [x0, #7]
//  0x440ed8: ldur x3, [FP, #-0x18]
//  0x440edc: stur w0, [x3, #0x13]
//  0x440ee0: ldurb w16, [x3, #-1]
//  0x440ee4: ldurb w17, [x0, #-1]
//  0x440ee8: and BARRIER, x17, BARRIER, lsr #2
//  0x440eec: tst BARRIER, HEAP, lsr #32
//  0x440ef0: b.eq #0x440ef8
//  0x440ef4: bl #0x61e08c
//  0x440ef8: ldur d0, [FP, #-0x20]
//  0x440efc: fsub d2, d0, d1
//  0x440f00: ldp x0, x1, [THR, #0x50]
//  0x440f04: add x0, x0, #0x10
//  0x440f08: cmp x1, x0
//  0x440f0c: b.ls #0x440fd4
//  0x440f10: str x0, [THR, #0x50]
//  0x440f14: sub x0, x0, #0xf
//  0x440f18: mov x1, #0xe15c
//  0x440f1c: movk x1, #3, lsl #16
//  0x440f20: stur x1, [x0, #-1]
//  0x440f24: stur d2, [x0, #7]
//  0x440f28: stur w0, [x3, #0x17]
//  0x440f2c: ldurb w16, [x3, #-1]
//  0x440f30: ldurb w17, [x0, #-1]
//  0x440f34: and BARRIER, x17, BARRIER, lsr #2
//  0x440f38: tst BARRIER, HEAP, lsr #32
//  0x440f3c: b.eq #0x440f44
//  0x440f40: bl #0x61e08c
//  0x440f44: mov x2, x3
//  0x440f48: add x1, PP, #0xf, lsl #12
//  0x440f4c: ldr x1, [x1, #0x1a8]
//  0x440f50: bl #0x61ec54
//  0x440f54: add x1, PP, #0xf, lsl #12
//  0x440f58: ldr x1, [x1, #0x1b0]
//  0x440f5c: stur x0, [FP, #-8]
//  0x440f60: bl #0x41a414
//  0x440f64: mov x3, x0
//  0x440f68: ldur x0, [FP, #-8]
//  0x440f6c: stur x3, [FP, #-0x10]
//  0x440f70: stur w0, [x3, #0x13]
//  0x440f74: ldur x2, [FP, #-0x18]
//  0x440f78: add x1, PP, #0xf, lsl #12
//  0x440f7c: ldr x1, [x1, #0x1b8]
//  0x440f80: bl #0x61ec54
//  0x440f84: add x1, PP, #0xf, lsl #12
//  0x440f88: ldr x1, [x1, #0x1b0]
//  0x440f8c: stur x0, [FP, #-8]
//  0x440f90: bl #0x3b81c4
//  0x440f94: mov x1, x0
//  0x440f98: ldur x2, [FP, #-0x10]
//  0x440f9c: ldur x3, [FP, #-8]
//  0x440fa0: mov x5, NULL
//  0x440fa4: stur x0, [FP, #-8]
//  0x440fa8: bl #0x3b7e8c
//  0x440fac: ldur x0, [FP, #-8]
//  0x440fb0: mov SP, FP
//  0x440fb4: ldp FP, LR, [SP], #0x10
//  0x440fb8: ret 
//  0x440fbc: bl #0x61fa28
//  0x440fc0: b #0x440e68
//  0x440fc4: str q1, [SP, #-0x10]!
//  0x440fc8: bl #0x61f878
//  0x440fcc: ldr q1, [SP], #0x10
//  0x440fd0: b #0x440ed4
//  0x440fd4: str q2, [SP, #-0x10]!
//  0x440fd8: str x3, [SP, #-8]!
//  0x440fdc: bl #0x61f878
//  0x440fe0: ldr x3, [SP], #8
//  0x440fe4: ldr q2, [SP], #0x10
//  0x440fe8: b #0x440f24
//
dynamic PagePKGameBetRankState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic q1;
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
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x440e40
  // frame: FP = SP // 0x440e44
  // frame: SP = SP - 0x20 // 0x440e48
  x0 = x1; // 0x440e4c
  local_m8 = x1; // 0x440e50
  x1 = x2; // 0x440e54
  local_m10 = x2; // 0x440e58
  BARRIER = mem(THR, 0x38); // 0x440e5c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x440fbc
  }
  x1 = 3; // 0x440e68
  sub_0x61e890(); // 0x440e6c
  x0 = local_m8; // 0x440e74
  x2 = x0; // 0x440e70
  local_m18 = x2; // 0x440e78
  memSet(x2, 0xf, w0); // 0x440e7c
  x1 = local_m10; // 0x440e80
  ScreenUtil_getScreenHeight() /* 0x3b5484 */; // 0x440e84
  x1 = local_m10; // 0x440e88
  local_m20 = d0; // 0x440e8c
  ScreenUtil_getScreenWidth() /* 0x3a877c */; // 0x440e90
  d0 = 4645304685958266880; // 0x440ea8
  d1 = (((d1 * d0) /* float */) / d0) /* float */; // 0x440eac
  d2 = (d1 * d0) /* float */; // 0x440ea0
  v1_16b = v0_16b; // 0x440e94
  x17 = PP + 0xe000; // 0x440ea4
  memRead2(THR, 0x50, x0, x1); // 0x440eb0
  x0 = x0 + 0x10; // 0x440eb4
  if (x1 <= x0) {
    local_m10 = q1; // 0x440fc4
    AllocationStub__Double() /* 0x61f878 */; // 0x440fc8
    q1 = local_0; // 0x440fcc
  } else {
    memSet(THR, 0x50, x0); // 0x440ec0
    x0 = x0 - 0xf; // 0x440ec4
    x1 = (x1 & 0xffff) | 0x30000; // 0x440ecc
    memSet(x0, -1, x1); // 0x440ed0
  }
  memSet(x0, 7, d1); // 0x440ed4
  x3 = local_m18; // 0x440ed8
  memSet(x3, 0x13, w0); // 0x440edc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x440ee8
  w16 = mem(x3, -1); // 0x440ee0
  w17 = mem(x0, -1); // 0x440ee4
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x440ee0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x440ee4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x440ef4
  }
  d0 = local_m20; // 0x440ef8
  d2 = ((local_m20) - d1) /* float */; // 0x440efc
  memRead2(THR, 0x50, x0, x1); // 0x440f00
  x0 = x0 + 0x10; // 0x440f04
  if (x1 <= x0) {
    local_m10 = q2; // 0x440fd4
    local_m8 = x3; // 0x440fd8
    AllocationStub__Double() /* 0x61f878 */; // 0x440fdc
    q2 = local_0; // 0x440fe4
    x3 = local_0; // 0x440fe0
  } else {
    memSet(THR, 0x50, x0); // 0x440f10
    x0 = x0 - 0xf; // 0x440f14
    x1 = (x1 & 0xffff) | 0x30000; // 0x440f1c
    memSet(x0, -1, x1); // 0x440f20
  }
  memSet(x0, 7, d2); // 0x440f24
  memSet(x3, 0x17, w0); // 0x440f28
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x440f34
  w16 = mem(x3, -1); // 0x440f2c
  w17 = mem(x0, -1); // 0x440f30
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x440f2c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x440f30
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x440f40
  }
  x1 = mem((PP + 0xf000), 0x1a8) /* Function */; // 0x440f4c
  x2 = x3; // 0x440f44
  AllocationStub__Closure() /* 0x61ec54 */; // 0x440f50
  x1 = mem((PP + 0xf000), 0x1b0) /* TypeArguments */; // 0x440f58
  local_m8 = x0; // 0x440f5c
  AllocationStub_Consumer() /* 0x41a414 */; // 0x440f60
  x0 = local_m8; // 0x440f68
  x3 = x0; // 0x440f64
  local_m10 = x3; // 0x440f6c
  memSet(x3, 0x13, w0); // 0x440f70
  x1 = mem((PP + 0xf000), 0x1b8) /* Function */; // 0x440f7c
  x2 = local_m18; // 0x440f74
  AllocationStub__Closure() /* 0x61ec54 */; // 0x440f80
  x1 = mem((PP + 0xf000), 0x1b0) /* TypeArguments */; // 0x440f88
  local_m8 = x0; // 0x440f8c
  AllocationStub_ChangeNotifierProvider() /* 0x3b81c4 */; // 0x440f90
  x1 = x0; // 0x440f94
  x2 = local_m10; // 0x440f98
  x3 = local_m8; // 0x440f9c
  x5 = NULL; // 0x440fa0
  local_m8 = x0; // 0x440fa4
  InheritedProvider_ctor() /* 0x3b7e8c */; // 0x440fa8
  SP = FP; // 0x440fb0
  x0 = local_m8; // 0x440fac
  // frame: FP, LR, mem(SP), 0x10 // 0x440fb4
  return;
}

// PagePKGameBetRankState_anon_closure
// raw disassembly:
//  0x440fec: stp FP, LR, [SP, #-0x10]!
//  0x440ff0: mov FP, SP
//  0x440ff4: ldr x0, [FP, #0x28]
//  0x440ff8: ldur w1, [x0, #0x17]
//  0x440ffc: add x1, x1, HEAP, lsl #32
//  0x441000: ldr BARRIER, [THR, #0x38]
//  0x441004: cmp SP, BARRIER
//  0x441008: b.ls #0x441050
//  0x44100c: ldur w0, [x1, #0xf]
//  0x441010: add x0, x0, HEAP, lsl #32
//  0x441014: ldur w2, [x0, #0x17]
//  0x441018: add x2, x2, HEAP, lsl #32
//  0x44101c: ldur w3, [x0, #0x13]
//  0x441020: add x3, x3, HEAP, lsl #32
//  0x441024: ldur w0, [x1, #0x13]
//  0x441028: add x0, x0, HEAP, lsl #32
//  0x44102c: ldur w4, [x1, #0x17]
//  0x441030: add x4, x4, HEAP, lsl #32
//  0x441034: ldur d0, [x0, #7]
//  0x441038: ldur d1, [x4, #7]
//  0x44103c: ldr x1, [FP, #0x20]
//  0x441040: bl #0x441058
//  0x441044: mov SP, FP
//  0x441048: ldp FP, LR, [SP], #0x10
//  0x44104c: ret 
//  0x441050: bl #0x61fa28
//  0x441054: b #0x44100c
//
dynamic PagePKGameBetRankState_anon_closure() {
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
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x440fec
  BARRIER = mem(THR, 0x38); // 0x441000
  // frame: FP = SP // 0x440ff0
  w1 = mem((local_28), 0x17); // 0x440ff8
  x0 = local_28; // 0x440ff4
  x1 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x440ffc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x441050
  }
  w0 = mem(x1, 0x13); // 0x441024
  w2 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x441014
  w3 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13); // 0x44101c
  x0 = (mem(x1, 0x13)) & 0xffffffff; // 0x441024
  x2 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x441018
  x3 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x441020
  d0 = mem((x0 + (HEAP << 32)), 7); // 0x441034
  d1 = mem((((mem(x1, 0x17)) & 0xffffffff) + (HEAP << 32)), 7); // 0x441038
  w4 = mem(x1, 0x17); // 0x44102c
  x0 = x0 + (HEAP << 32); // 0x441028
  x1 = local_20; // 0x44103c
  x4 = ((mem(x1, 0x17)) & 0xffffffff) + (HEAP << 32); // 0x441030
  betRankListWidget() /* 0x441058 */; // 0x441040
  SP = FP; // 0x441044
  // frame: FP, LR, mem(SP), 0x10 // 0x441048
  return;
}

// PagePKGameBetRankState_initState
// raw disassembly:
//  0x4da338: stp FP, LR, [SP, #-0x10]!
//  0x4da33c: mov FP, SP
//  0x4da340: sub SP, SP, #0x20
//  0x4da344: mov x3, x1
//  0x4da348: stur x1, [FP, #-8]
//  0x4da34c: ldr BARRIER, [THR, #0x38]
//  0x4da350: cmp SP, BARRIER
//  0x4da354: b.ls #0x4da504
//  0x4da358: ldur w0, [x3, #0xb]
//  0x4da35c: add x0, x0, HEAP, lsl #32
//  0x4da360: cmp w0, w22
//  0x4da364: b.eq #0x4da50c
//  0x4da368: ldur w1, [x0, #0xb]
//  0x4da36c: add x1, x1, HEAP, lsl #32
//  0x4da370: cmp w1, w22
//  0x4da374: b.ne #0x4da380
//  0x4da378: mov x0, NULL
//  0x4da37c: b #0x4da39c
//  0x4da380: ldur x0, [x1, #-1]
//  0x4da384: ubfx x0, x0, #0xc, #0x14
//  0x4da388: add x2, PP, #0xf, lsl #12
//  0x4da38c: ldr x2, [x2, #0x320]
//  0x4da390: sub LR, x0, #1, lsl #12
//  0x4da394: ldr LR, [x21, LR, lsl #3]
//  0x4da398: blr LR
//  0x4da39c: cmp w0, w22
//  0x4da3a0: b.ne #0x4da3ac
//  0x4da3a4: ldr x4, [PP, #0x2a50]
//  0x4da3a8: b #0x4da3b0
//  0x4da3ac: mov x4, x0
//  0x4da3b0: ldur x3, [FP, #-8]
//  0x4da3b4: mov x0, x4
//  0x4da3b8: stur x4, [FP, #-0x10]
//  0x4da3bc: mov x2, NULL
//  0x4da3c0: mov x1, NULL
//  0x4da3c4: mov x4, #0x3c
//  0x4da3c8: tbz w0, #0, #0x4da3d4
//  0x4da3cc: ldur x4, [x0, #-1]
//  0x4da3d0: ubfx x4, x4, #0xc, #0x14
//  0x4da3d4: sub x4, x4, #0x5e
//  0x4da3d8: cmp x4, #1
//  0x4da3dc: b.ls #0x4da3f0
//  0x4da3e0: ldr x8, [PP, #0x2f8]
//  0x4da3e4: add x3, PP, #0xf, lsl #12
//  0x4da3e8: ldr x3, [x3, #0x328]
//  0x4da3ec: bl #0x62a0c0
//  0x4da3f0: ldur x3, [FP, #-8]
//  0x4da3f4: ldur w0, [x3, #0xb]
//  0x4da3f8: add x0, x0, HEAP, lsl #32
//  0x4da3fc: cmp w0, w22
//  0x4da400: b.eq #0x4da510
//  0x4da404: ldur w1, [x0, #0xb]
//  0x4da408: add x1, x1, HEAP, lsl #32
//  0x4da40c: cmp w1, w22
//  0x4da410: b.ne #0x4da41c
//  0x4da414: mov x0, NULL
//  0x4da418: b #0x4da438
//  0x4da41c: ldur x0, [x1, #-1]
//  0x4da420: ubfx x0, x0, #0xc, #0x14
//  0x4da424: add x2, PP, #0xf, lsl #12
//  0x4da428: ldr x2, [x2, #0x338]
//  0x4da42c: sub LR, x0, #1, lsl #12
//  0x4da430: ldr LR, [x21, LR, lsl #3]
//  0x4da434: blr LR
//  0x4da438: cmp w0, w22
//  0x4da43c: b.ne #0x4da448
//  0x4da440: ldr x3, [PP, #0x2a50]
//  0x4da444: b #0x4da44c
//  0x4da448: mov x3, x0
//  0x4da44c: mov x0, x3
//  0x4da450: stur x3, [FP, #-0x18]
//  0x4da454: mov x2, NULL
//  0x4da458: mov x1, NULL
//  0x4da45c: mov x4, #0x3c
//  0x4da460: tbz w0, #0, #0x4da46c
//  0x4da464: ldur x4, [x0, #-1]
//  0x4da468: ubfx x4, x4, #0xc, #0x14
//  0x4da46c: sub x4, x4, #0x5e
//  0x4da470: cmp x4, #1
//  0x4da474: b.ls #0x4da488
//  0x4da478: ldr x8, [PP, #0x2f8]
//  0x4da47c: add x3, PP, #0xf, lsl #12
//  0x4da480: ldr x3, [x3, #0x340]
//  0x4da484: bl #0x62a0c0
//  0x4da488: ldur x1, [FP, #-0x10]
//  0x4da48c: ldr x4, [PP, #0x4c0]
//  0x4da490: bl #0x28703c
//  0x4da494: ldur x1, [FP, #-0x18]
//  0x4da498: stur x0, [FP, #-0x20]
//  0x4da49c: ldr x4, [PP, #0x4c0]
//  0x4da4a0: bl #0x28703c
//  0x4da4a4: cmp x0, #1
//  0x4da4a8: b.ne #0x4da4b4
//  0x4da4ac: add x3, NULL, #0x20
//  0x4da4b0: b #0x4da4b8
//  0x4da4b4: add x3, NULL, #0x30
//  0x4da4b8: ldur x0, [FP, #-8]
//  0x4da4bc: stur x3, [FP, #-0x18]
//  0x4da4c0: stur w3, [x0, #0x17]
//  0x4da4c4: ldur w4, [x0, #0x13]
//  0x4da4c8: add x4, x4, HEAP, lsl #32
//  0x4da4cc: stur x4, [FP, #-0x10]
//  0x4da4d0: add x1, PP, #0xf, lsl #12
//  0x4da4d4: ldr x1, [x1, #0x350]
//  0x4da4d8: mov x2, NULL
//  0x4da4dc: bl #0x61ec54
//  0x4da4e0: ldur x1, [FP, #-0x10]
//  0x4da4e4: ldur x2, [FP, #-0x18]
//  0x4da4e8: ldur x3, [FP, #-0x20]
//  0x4da4ec: mov x5, x0
//  0x4da4f0: bl #0x4da514
//  0x4da4f4: mov x0, NULL
//  0x4da4f8: mov SP, FP
//  0x4da4fc: ldp FP, LR, [SP], #0x10
//  0x4da500: ret 
//  0x4da504: bl #0x61fa28
//  0x4da508: b #0x4da358
//  0x4da50c: bl #0x61ffd0
//  0x4da510: bl #0x61ffd0
//
dynamic PagePKGameBetRankState_initState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4da338
  // frame: FP = SP // 0x4da33c
  // frame: SP = SP - 0x20 // 0x4da340
  x3 = x1; // 0x4da344
  local_m8 = x1; // 0x4da348
  BARRIER = mem(THR, 0x38); // 0x4da34c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4da504
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4da35c
  if (w0 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4da50c
  } else {
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4da36c
    if (w1 != w22) {
      LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4da394
      x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4da384
      x2 = "gambleDiceId" /* pp+0xf320 */; // 0x4da38c
      callIndirect(LR); // 0x4da398
    } else {
      x0 = NULL; // 0x4da378
    }
    if (w0 != w22) {
      x4 = x0; // 0x4da3ac
    } else {
      x4 = "0" /* pp+0x2a50 */; // 0x4da3a4
    }
    x0 = x4; // 0x4da3b4
    x3 = local_m8; // 0x4da3b0
    local_m10 = x4; // 0x4da3b8
    x1 = NULL; // 0x4da3c0
    x2 = NULL; // 0x4da3bc
    x4 = 60; // 0x4da3c4
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4da3d0
    }
    x4 = x4 - 0x5e; // 0x4da3d4
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0xf000), 0x328) /* Obj!? */; // 0x4da3e8
      x8 = mem(PP, 0x2f8) /* Type */; // 0x4da3e0
      sub_0x62a0c0(); // 0x4da3ec
    }
    w0 = mem((local_m8), 0xb); // 0x4da3f4
    x0 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x4da3f8
    x3 = local_m8; // 0x4da3f0
    if (w0 == w22) {
      // duplicated branch body (target 0x4da510 terminates; the same code is emitted below)
      NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4da510
    }
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4da408
    if (w1 != w22) {
      LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4da430
      x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4da420
      x2 = "diceBet" /* pp+0xf338 */; // 0x4da428
      callIndirect(LR); // 0x4da434
    } else {
      x0 = NULL; // 0x4da414
    }
    if (w0 != w22) {
      x3 = x0; // 0x4da448
    } else {
      x3 = "0" /* pp+0x2a50 */; // 0x4da440
    }
    x0 = x3; // 0x4da44c
    local_m18 = x3; // 0x4da450
    x1 = NULL; // 0x4da458
    x2 = NULL; // 0x4da454
    x4 = 60; // 0x4da45c
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4da468
    }
    x4 = x4 - 0x5e; // 0x4da46c
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0xf000), 0x340) /* Obj!? */; // 0x4da480
      x8 = mem(PP, 0x2f8) /* Type */; // 0x4da478
      sub_0x62a0c0(); // 0x4da484
    }
    x1 = local_m10; // 0x4da488
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4da48c
    int_parse() /* 0x28703c */; // 0x4da490
    x1 = local_m18; // 0x4da494
    local_m20 = x0; // 0x4da498
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4da49c
    int_parse() /* 0x28703c */; // 0x4da4a0
    if (x0 != 1) {
      x3 = NULL + 0x30; // 0x4da4b4
    } else {
      x3 = NULL + 0x20; // 0x4da4ac
    }
    x0 = local_m8; // 0x4da4b8
    local_m18 = x3; // 0x4da4bc
    memSet(x0, 0x17, w3); // 0x4da4c0
    w4 = mem(x0, 0x13); // 0x4da4c4
    x4 = ((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4da4c8
    local_m10 = x4; // 0x4da4cc
    x1 = mem((PP + 0xf000), 0x350) /* Function */; // 0x4da4d4
    x2 = NULL; // 0x4da4d8
    AllocationStub__Closure() /* 0x61ec54 */; // 0x4da4dc
    x1 = local_m10; // 0x4da4e0
    x2 = local_m18; // 0x4da4e4
    x3 = local_m20; // 0x4da4e8
    x5 = x0; // 0x4da4ec
    GamePKBetRankingNotifier_gainPKBetGameRank() /* 0x4da514 */; // 0x4da4f0
    SP = FP; // 0x4da4f8
    x0 = NULL; // 0x4da4f4
    // frame: FP, LR, mem(SP), 0x10 // 0x4da4fc
    return;
  }
  NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4da510
}

// betRankListWidget
// raw disassembly:
//  0x441058: stp FP, LR, [SP, #-0x10]!
//  0x44105c: mov FP, SP
//  0x441060: sub SP, SP, #0xb8
//  0x441064: mov x0, x1
//  0x441068: stur x1, [FP, #-8]
//  0x44106c: stur x2, [FP, #-0x10]
//  0x441070: stur x3, [FP, #-0x18]
//  0x441074: stur d0, [FP, #-0x88]
//  0x441078: stur d1, [FP, #-0x90]
//  0x44107c: ldr BARRIER, [THR, #0x38]
//  0x441080: cmp SP, BARRIER
//  0x441084: b.ls #0x4418a0
//  0x441088: tbnz w2, #4, #0x4410a4
//  0x44108c: add x1, PP, #0xc, lsl #12
//  0x441090: ldr x1, [x1, #0x740]
//  0x441094: ldr x4, [PP, #0x4c0]
//  0x441098: bl #0x3a1dcc
//  0x44109c: mov x2, x0
//  0x4410a0: b #0x4410b8
//  0x4410a4: add x1, PP, #0xc, lsl #12
//  0x4410a8: ldr x1, [x1, #0x750]
//  0x4410ac: ldr x4, [PP, #0x4c0]
//  0x4410b0: bl #0x3a1dcc
//  0x4410b4: mov x2, x0
//  0x4410b8: ldur x1, [FP, #-0x10]
//  0x4410bc: ldur x0, [FP, #-0x18]
//  0x4410c0: ldur d0, [FP, #-0x90]
//  0x4410c4: stur x2, [FP, #-0x28]
//  0x4410c8: ldur w3, [x0, #0x2b]
//  0x4410cc: add x3, x3, HEAP, lsl #32
//  0x4410d0: stur x3, [FP, #-0x20]
//  0x4410d4: mov x1, #1
//  0x4410d8: bl #0x61e890
//  0x4410dc: mov x1, x0
//  0x4410e0: ldur x0, [FP, #-0x20]
//  0x4410e4: stur x1, [FP, #-0x18]
//  0x4410e8: stur w0, [x1, #0xf]
//  0x4410ec: bl #0x31d844
//  0x4410f0: mov x1, x0
//  0x4410f4: ldr x0, [PP, #0x6310]
//  0x4410f8: stur x1, [FP, #-0x38]
//  0x4410fc: stur w0, [x1, #0x27]
//  0x441100: ldr d0, [PP, #0x6080]
//  0x441104: stur d0, [x1, #7]
//  0x441108: stur xzr, [x1, #0xf]
//  0x44110c: stur xzr, [x1, #0x17]
//  0x441110: stur xzr, [x1, #0x1f]
//  0x441114: ldur d0, [FP, #-0x90]
//  0x441118: ldp x0, x2, [THR, #0x50]
//  0x44111c: add x0, x0, #0x10
//  0x441120: cmp x2, x0
//  0x441124: b.ls #0x4418a8
//  0x441128: str x0, [THR, #0x50]
//  0x44112c: sub x0, x0, #0xf
//  0x441130: mov x2, #0xe15c
//  0x441134: movk x2, #3, lsl #16
//  0x441138: stur x2, [x0, #-1]
//  0x44113c: stur d0, [x0, #7]
//  0x441140: stur x0, [FP, #-0x30]
//  0x441144: bl #0x391a04
//  0x441148: stur x0, [FP, #-0x40]
//  0x44114c: ldur BARRIER, [FP, #-0x30]
//  0x441150: add LR, PP, #0xa, lsl #12
//  0x441154: ldr LR, [LR, #0x3c0]
//  0x441158: stp LR, BARRIER, [SP]
//  0x44115c: mov x1, x0
//  0x441160: add x4, PP, #0xe, lsl #12
//  0x441164: ldr x4, [x4, #0xeb0]
//  0x441168: bl #0x391490
//  0x44116c: bl #0x3a1d94
//  0x441170: add x1, PP, #0xf, lsl #12
//  0x441174: ldr x1, [x1, #0x1c0]
//  0x441178: mov x2, NULL
//  0x44117c: stur x0, [FP, #-0x48]
//  0x441180: bl #0x61ec54
//  0x441184: ldur BARRIER, [FP, #-0x40]
//  0x441188: stp x0, BARRIER, [SP]
//  0x44118c: ldur x1, [FP, #-0x48]
//  0x441190: add x4, PP, #0xe, lsl #12
//  0x441194: ldr x4, [x4, #0xec0]
//  0x441198: bl #0x3a18c4
//  0x44119c: bl #0x352b04
//  0x4411a0: add x17, PP, #0xe, lsl #12
//  0x4411a4: ldr d0, [x17, #0xec8]
//  0x4411a8: stur x0, [FP, #-0x40]
//  0x4411ac: stur d0, [x0, #7]
//  0x4411b0: stur d0, [x0, #0xf]
//  0x4411b4: bl #0x352b04
//  0x4411b8: add x17, PP, #0xe, lsl #12
//  0x4411bc: ldr d0, [x17, #0xec8]
//  0x4411c0: stur x0, [FP, #-0x50]
//  0x4411c4: stur d0, [x0, #7]
//  0x4411c8: stur d0, [x0, #0xf]
//  0x4411cc: bl #0x392f28
//  0x4411d0: mov x2, x0
//  0x4411d4: ldur x0, [FP, #-0x40]
//  0x4411d8: stur x2, [FP, #-0x58]
//  0x4411dc: stur w0, [x2, #7]
//  0x4411e0: ldur x0, [FP, #-0x50]
//  0x4411e4: stur w0, [x2, #0xb]
//  0x4411e8: add x0, PP, #0xa, lsl #12
//  0x4411ec: ldr x0, [x0, #0x510]
//  0x4411f0: stur w0, [x2, #0xf]
//  0x4411f4: stur w0, [x2, #0x13]
//  0x4411f8: add x1, PP, #0xe, lsl #12
//  0x4411fc: ldr x1, [x1, #0xed0]
//  0x441200: bl #0x3b5478
//  0x441204: mov x1, x0
//  0x441208: add x0, PP, #0xe, lsl #12
//  0x44120c: ldr x0, [x0, #0xed8]
//  0x441210: stur x1, [FP, #-0x40]
//  0x441214: stur w0, [x1, #0xb]
//  0x441218: bl #0x3b546c
//  0x44121c: mov x1, x0
//  0x441220: ldur x0, [FP, #-0x40]
//  0x441224: stur x1, [FP, #-0x50]
//  0x441228: stur w0, [x1, #7]
//  0x44122c: add x0, PP, #0xe, lsl #12
//  0x441230: ldr x0, [x0, #0xee0]
//  0x441234: stur w0, [x1, #0x13]
//  0x441238: add x0, PP, #0xe, lsl #12
//  0x44123c: ldr x0, [x0, #0xaa0]
//  0x441240: stur w0, [x1, #0x17]
//  0x441244: add x2, PP, #0xe, lsl #12
//  0x441248: ldr x2, [x2, #0xee8]
//  0x44124c: stur w2, [x1, #0x1f]
//  0x441250: add x3, NULL, #0x30
//  0x441254: stur w3, [x1, #0x23]
//  0x441258: fmov d0, #1.00000000
//  0x44125c: stur d0, [x1, #0x27]
//  0x441260: stur d0, [x1, #0x2f]
//  0x441264: add x4, PP, #0xe, lsl #12
//  0x441268: ldr x4, [x4, #0xef0]
//  0x44126c: stur w4, [x1, #0x37]
//  0x441270: stur w3, [x1, #0x3b]
//  0x441274: stur w3, [x1, #0x3f]
//  0x441278: bl #0x391dd8
//  0x44127c: mov x1, x0
//  0x441280: ldur x0, [FP, #-0x50]
//  0x441284: stur x1, [FP, #-0x40]
//  0x441288: stur w0, [x1, #0xb]
//  0x44128c: add x0, PP, #0xe, lsl #12
//  0x441290: ldr x0, [x0, #0xb78]
//  0x441294: stur w0, [x1, #0x23]
//  0x441298: bl #0x2e3578
//  0x44129c: stur x0, [FP, #-0x50]
//  0x4412a0: stur xzr, [x0, #7]
//  0x4412a4: fmov d0, #17.00000000
//  0x4412a8: stur d0, [x0, #0xf]
//  0x4412ac: stur xzr, [x0, #0x17]
//  0x4412b0: stur xzr, [x0, #0x1f]
//  0x4412b4: bl #0x2b8e80
//  0x4412b8: add x17, PP, #0xf, lsl #12
//  0x4412bc: ldr d0, [x17, #0x1c8]
//  0x4412c0: stur x0, [FP, #-0x60]
//  0x4412c4: stur d0, [x0, #7]
//  0x4412c8: ldr d0, [PP, #0xb90]
//  0x4412cc: stur d0, [x0, #0xf]
//  0x4412d0: stur xzr, [x0, #0x17]
//  0x4412d4: stur d0, [x0, #0x1f]
//  0x4412d8: ldur x1, [FP, #-0x10]
//  0x4412dc: tbnz w1, #4, #0x441304
//  0x4412e0: add x1, PP, #0xe, lsl #12
//  0x4412e4: ldr x1, [x1, #0xed0]
//  0x4412e8: bl #0x3b5478
//  0x4412ec: mov x1, x0
//  0x4412f0: add x0, PP, #0xf, lsl #12
//  0x4412f4: ldr x0, [x0, #0x1d0]
//  0x4412f8: stur w0, [x1, #0xb]
//  0x4412fc: mov x2, x1
//  0x441300: b #0x441324
//  0x441304: add x1, PP, #0xe, lsl #12
//  0x441308: ldr x1, [x1, #0xed0]
//  0x44130c: bl #0x3b5478
//  0x441310: mov x1, x0
//  0x441314: add x0, PP, #0xf, lsl #12
//  0x441318: ldr x0, [x0, #0x1d8]
//  0x44131c: stur w0, [x1, #0xb]
//  0x441320: mov x2, x1
//  0x441324: ldur x1, [FP, #-0x28]
//  0x441328: ldur x0, [FP, #-0x20]
//  0x44132c: stur x2, [FP, #-0x10]
//  0x441330: bl #0x3b546c
//  0x441334: mov x1, x0
//  0x441338: ldur x0, [FP, #-0x10]
//  0x44133c: stur x1, [FP, #-0x68]
//  0x441340: stur w0, [x1, #7]
//  0x441344: add x0, PP, #0xf, lsl #12
//  0x441348: ldr x0, [x0, #0x1e0]
//  0x44134c: stur w0, [x1, #0x13]
//  0x441350: add x0, PP, #0xe, lsl #12
//  0x441354: ldr x0, [x0, #0xaa0]
//  0x441358: stur w0, [x1, #0x17]
//  0x44135c: add x2, PP, #0xe, lsl #12
//  0x441360: ldr x2, [x2, #0xee8]
//  0x441364: stur w2, [x1, #0x1f]
//  0x441368: add x2, NULL, #0x30
//  0x44136c: stur w2, [x1, #0x23]
//  0x441370: fmov d0, #1.00000000
//  0x441374: stur d0, [x1, #0x27]
//  0x441378: stur d0, [x1, #0x2f]
//  0x44137c: add x3, PP, #0xe, lsl #12
//  0x441380: ldr x3, [x3, #0xef0]
//  0x441384: stur w3, [x1, #0x37]
//  0x441388: stur w2, [x1, #0x3b]
//  0x44138c: stur w2, [x1, #0x3f]
//  0x441390: bl #0x391dd8
//  0x441394: mov x1, x0
//  0x441398: ldur x0, [FP, #-0x68]
//  0x44139c: stur x1, [FP, #-0x10]
//  0x4413a0: stur w0, [x1, #0xb]
//  0x4413a4: add x0, PP, #0xe, lsl #12
//  0x4413a8: ldr x0, [x0, #0xb78]
//  0x4413ac: stur w0, [x1, #0x23]
//  0x4413b0: bl #0x31abec
//  0x4413b4: mov x1, x0
//  0x4413b8: add x0, NULL, #0x20
//  0x4413bc: stur x1, [FP, #-0x68]
//  0x4413c0: stur w0, [x1, #7]
//  0x4413c4: ldr x2, [PP, #0x6050]
//  0x4413c8: stur w2, [x1, #0xb]
//  0x4413cc: add x2, PP, #0xf, lsl #12
//  0x4413d0: ldr x2, [x2, #0x1e8]
//  0x4413d4: stur w2, [x1, #0x1f]
//  0x4413d8: add x3, PP, #0xe, lsl #12
//  0x4413dc: ldr x3, [x3, #0xe40]
//  0x4413e0: stur w3, [x1, #0x23]
//  0x4413e4: bl #0x3b3480
//  0x4413e8: mov x1, x0
//  0x4413ec: add x0, PP, #0xf, lsl #12
//  0x4413f0: ldr x0, [x0, #0x1e8]
//  0x4413f4: stur x1, [FP, #-0x70]
//  0x4413f8: stur w0, [x1, #0x13]
//  0x4413fc: ldr x0, [PP, #0x52c8]
//  0x441400: stur w0, [x1, #0x27]
//  0x441404: add x0, PP, #0xe, lsl #12
//  0x441408: ldr x0, [x0, #0xe40]
//  0x44140c: stur w0, [x1, #0x1f]
//  0x441410: add x0, NULL, #0x20
//  0x441414: stur w0, [x1, #0x2b]
//  0x441418: bl #0x393bf8
//  0x44141c: mov x1, x0
//  0x441420: ldur x0, [FP, #-0x28]
//  0x441424: stur x1, [FP, #-0x78]
//  0x441428: stur w0, [x1, #0xb]
//  0x44142c: ldur x0, [FP, #-0x68]
//  0x441430: stur w0, [x1, #0x13]
//  0x441434: ldur x0, [FP, #-0x70]
//  0x441438: stur w0, [x1, #0x17]
//  0x44143c: ldr x0, [PP, #0x53a8]
//  0x441440: stur w0, [x1, #0x1b]
//  0x441444: mov x0, #2
//  0x441448: stur w0, [x1, #0x37]
//  0x44144c: bl #0x391a04
//  0x441450: stur x0, [FP, #-0x28]
//  0x441454: ldur BARRIER, [FP, #-0x50]
//  0x441458: ldur LR, [FP, #-0x60]
//  0x44145c: stp LR, BARRIER, [SP, #0x18]
//  0x441460: add BARRIER, PP, #0xf, lsl #12
//  0x441464: ldr BARRIER, [BARRIER, #0x1f0]
//  0x441468: ldur LR, [FP, #-0x10]
//  0x44146c: stp LR, BARRIER, [SP, #8]
//  0x441470: ldur BARRIER, [FP, #-0x78]
//  0x441474: str BARRIER, [SP]
//  0x441478: mov x1, x0
//  0x44147c: add x4, PP, #0xf, lsl #12
//  0x441480: ldr x4, [x4, #0x1f8]
//  0x441484: bl #0x391490
//  0x441488: bl #0x2e3578
//  0x44148c: stur x0, [FP, #-0x10]
//  0x441490: stur xzr, [x0, #7]
//  0x441494: fmov d0, #17.00000000
//  0x441498: stur d0, [x0, #0xf]
//  0x44149c: stur xzr, [x0, #0x17]
//  0x4414a0: stur xzr, [x0, #0x1f]
//  0x4414a4: bl #0x441b0c
//  0x4414a8: stur x0, [FP, #-0x50]
//  0x4414ac: bl #0x391a04
//  0x4414b0: stur x0, [FP, #-0x60]
//  0x4414b4: ldur BARRIER, [FP, #-0x10]
//  0x4414b8: ldur LR, [FP, #-0x50]
//  0x4414bc: stp LR, BARRIER, [SP]
//  0x4414c0: mov x1, x0
//  0x4414c4: add x4, PP, #0xf, lsl #12
//  0x4414c8: ldr x4, [x4, #0x200]
//  0x4414cc: bl #0x391490
//  0x4414d0: mov x1, NULL
//  0x4414d4: mov x2, #4
//  0x4414d8: bl #0x61f920
//  0x4414dc: mov x2, x0
//  0x4414e0: ldur x0, [FP, #-0x28]
//  0x4414e4: stur x2, [FP, #-0x10]
//  0x4414e8: stur w0, [x2, #0xf]
//  0x4414ec: ldur x0, [FP, #-0x60]
//  0x4414f0: stur w0, [x2, #0x13]
//  0x4414f4: ldr x1, [PP, #0x5c58]
//  0x4414f8: bl #0x61e854
//  0x4414fc: mov x1, x0
//  0x441500: ldur x0, [FP, #-0x10]
//  0x441504: stur x1, [FP, #-0x28]
//  0x441508: stur w0, [x1, #0xf]
//  0x44150c: mov x2, #4
//  0x441510: stur w2, [x1, #0xb]
//  0x441514: bl #0x39e6f4
//  0x441518: mov x1, x0
//  0x44151c: add x0, PP, #0xe, lsl #12
//  0x441520: ldr x0, [x0, #0xaa0]
//  0x441524: stur x1, [FP, #-0x10]
//  0x441528: stur w0, [x1, #0xf]
//  0x44152c: add x0, PP, #0xe, lsl #12
//  0x441530: ldr x0, [x0, #0xf08]
//  0x441534: stur w0, [x1, #0x17]
//  0x441538: add x0, PP, #0xe, lsl #12
//  0x44153c: ldr x0, [x0, #0xf10]
//  0x441540: stur w0, [x1, #0x1b]
//  0x441544: ldur x0, [FP, #-0x28]
//  0x441548: stur w0, [x1, #0xb]
//  0x44154c: bl #0x3949ec
//  0x441550: mov x3, x0
//  0x441554: add x0, PP, #0xf, lsl #12
//  0x441558: ldr x0, [x0, #0x208]
//  0x44155c: stur x3, [FP, #-0x28]
//  0x441560: stur w0, [x3, #0x13]
//  0x441564: ldur x0, [FP, #-0x20]
//  0x441568: ldur w1, [x0, #0xb]
//  0x44156c: sbfx x0, x1, #1, #0x1f
//  0x441570: cmp x0, #0
//  0x441574: b.le #0x441638
//  0x441578: ldur x2, [FP, #-0x18]
//  0x44157c: ldur w0, [x2, #0xf]
//  0x441580: add x0, x0, HEAP, lsl #32
//  0x441584: ldur w1, [x0, #0xb]
//  0x441588: sbfx x0, x1, #1, #0x1f
//  0x44158c: stur x0, [FP, #-0x80]
//  0x441590: add x1, PP, #0xf, lsl #12
//  0x441594: ldr x1, [x1, #0x210]
//  0x441598: bl #0x61ec54
//  0x44159c: stur x0, [FP, #-0x18]
//  0x4415a0: bl #0x3ab5ac
//  0x4415a4: mov x1, x0
//  0x4415a8: ldur x2, [FP, #-0x18]
//  0x4415ac: ldur x3, [FP, #-0x80]
//  0x4415b0: stur x0, [FP, #-0x18]
//  0x4415b4: ldr x4, [PP, #0x2e0]
//  0x4415b8: bl #0x3ab2bc
//  0x4415bc: bl #0x391a04
//  0x4415c0: stur x0, [FP, #-0x20]
//  0x4415c4: ldur BARRIER, [FP, #-0x18]
//  0x4415c8: str BARRIER, [SP]
//  0x4415cc: mov x1, x0
//  0x4415d0: add x4, PP, #0xc, lsl #12
//  0x4415d4: ldr x4, [x4, #0x1f8]
//  0x4415d8: bl #0x391490
//  0x4415dc: add x1, PP, #0xe, lsl #12
//  0x4415e0: ldr x1, [x1, #0xad0]
//  0x4415e4: bl #0x39fb14
//  0x4415e8: mov x2, x0
//  0x4415ec: mov x0, #1
//  0x4415f0: stur x2, [FP, #-0x18]
//  0x4415f4: stur x0, [x2, #0x13]
//  0x4415f8: add x3, PP, #0xe, lsl #12
//  0x4415fc: ldr x3, [x3, #0xad8]
//  0x441600: stur w3, [x2, #0x1b]
//  0x441604: ldur x1, [FP, #-0x20]
//  0x441608: stur w1, [x2, #0xb]
//  0x44160c: add x1, PP, #0xf, lsl #12
//  0x441610: ldr x1, [x1, #0x218]
//  0x441614: bl #0x396454
//  0x441618: mov x1, x0
//  0x44161c: ldur x2, [FP, #-0x18]
//  0x441620: ldur x3, [FP, #-8]
//  0x441624: stur x0, [FP, #-8]
//  0x441628: ldr x4, [PP, #0x2e0]
//  0x44162c: bl #0x39ecf8
//  0x441630: ldur x7, [FP, #-8]
//  0x441634: b #0x441640
//  0x441638: bl #0x4418f4
//  0x44163c: mov x7, x0
//  0x441640: ldur d0, [FP, #-0x88]
//  0x441644: ldur x5, [FP, #-0x48]
//  0x441648: ldur x4, [FP, #-0x58]
//  0x44164c: ldur x3, [FP, #-0x10]
//  0x441650: ldur x0, [FP, #-0x28]
//  0x441654: mov x6, #6
//  0x441658: mov x2, x6
//  0x44165c: stur x7, [FP, #-8]
//  0x441660: mov x1, NULL
//  0x441664: bl #0x61f920
//  0x441668: mov x2, x0
//  0x44166c: ldur x0, [FP, #-0x10]
//  0x441670: stur x2, [FP, #-0x18]
//  0x441674: stur w0, [x2, #0xf]
//  0x441678: ldur x0, [FP, #-0x28]
//  0x44167c: stur w0, [x2, #0x13]
//  0x441680: ldur x0, [FP, #-8]
//  0x441684: stur w0, [x2, #0x17]
//  0x441688: ldr x1, [PP, #0x5c58]
//  0x44168c: bl #0x61e854
//  0x441690: mov x1, x0
//  0x441694: ldur x0, [FP, #-0x18]
//  0x441698: stur x1, [FP, #-8]
//  0x44169c: stur w0, [x1, #0xf]
//  0x4416a0: mov x0, #6
//  0x4416a4: stur w0, [x1, #0xb]
//  0x4416a8: bl #0x39310c
//  0x4416ac: mov x1, x0
//  0x4416b0: add x0, PP, #0xa, lsl #12
//  0x4416b4: ldr x0, [x0, #0x858]
//  0x4416b8: stur x1, [FP, #-0x10]
//  0x4416bc: stur w0, [x1, #0xf]
//  0x4416c0: add x2, PP, #0xe, lsl #12
//  0x4416c4: ldr x2, [x2, #0xae0]
//  0x4416c8: stur w2, [x1, #0x13]
//  0x4416cc: add x3, PP, #0xe, lsl #12
//  0x4416d0: ldr x3, [x3, #0xae8]
//  0x4416d4: stur w3, [x1, #0x17]
//  0x4416d8: add x4, PP, #0xe, lsl #12
//  0x4416dc: ldr x4, [x4, #0xb60]
//  0x4416e0: stur w4, [x1, #0x1b]
//  0x4416e4: add x5, PP, #0xe, lsl #12
//  0x4416e8: ldr x5, [x5, #0xaf8]
//  0x4416ec: stur w5, [x1, #0x23]
//  0x4416f0: add x6, PP, #0xa, lsl #12
//  0x4416f4: ldr x6, [x6, #0xa8]
//  0x4416f8: stur w6, [x1, #0x2b]
//  0x4416fc: stur xzr, [x1, #0x2f]
//  0x441700: ldur x7, [FP, #-8]
//  0x441704: stur w7, [x1, #0xb]
//  0x441708: ldur d0, [FP, #-0x88]
//  0x44170c: ldp x7, x8, [THR, #0x50]
//  0x441710: add x7, x7, #0x10
//  0x441714: cmp x8, x7
//  0x441718: b.ls #0x4418c0
//  0x44171c: str x7, [THR, #0x50]
//  0x441720: sub x7, x7, #0xf
//  0x441724: mov x8, #0xe15c
//  0x441728: movk x8, #3, lsl #16
//  0x44172c: stur x8, [x7, #-1]
//  0x441730: stur d0, [x7, #7]
//  0x441734: stur x7, [FP, #-8]
//  0x441738: bl #0x391a04
//  0x44173c: stur x0, [FP, #-0x18]
//  0x441740: ldur BARRIER, [FP, #-8]
//  0x441744: ldr LR, [PP, #0x5458]
//  0x441748: stp LR, BARRIER, [SP, #0x10]
//  0x44174c: ldur BARRIER, [FP, #-0x40]
//  0x441750: ldur LR, [FP, #-0x10]
//  0x441754: stp LR, BARRIER, [SP]
//  0x441758: mov x1, x0
//  0x44175c: add x4, PP, #0xe, lsl #12
//  0x441760: ldr x4, [x4, #0xf38]
//  0x441764: bl #0x391490
//  0x441768: bl #0x3b378c
//  0x44176c: mov x2, x0
//  0x441770: ldur x0, [FP, #-0x58]
//  0x441774: stur x2, [FP, #-8]
//  0x441778: stur w0, [x2, #0xf]
//  0x44177c: add x0, PP, #0xe, lsl #12
//  0x441780: ldr x0, [x0, #0xf40]
//  0x441784: stur w0, [x2, #0x17]
//  0x441788: ldur x0, [FP, #-0x18]
//  0x44178c: stur w0, [x2, #0xb]
//  0x441790: add x1, PP, #0xe, lsl #12
//  0x441794: ldr x1, [x1, #0xad0]
//  0x441798: bl #0x39fb14
//  0x44179c: mov x3, x0
//  0x4417a0: mov x0, #1
//  0x4417a4: stur x3, [FP, #-0x10]
//  0x4417a8: stur x0, [x3, #0x13]
//  0x4417ac: add x0, PP, #0xe, lsl #12
//  0x4417b0: ldr x0, [x0, #0xad8]
//  0x4417b4: stur w0, [x3, #0x1b]
//  0x4417b8: ldur x0, [FP, #-8]
//  0x4417bc: stur w0, [x3, #0xb]
//  0x4417c0: mov x1, NULL
//  0x4417c4: mov x2, #4
//  0x4417c8: bl #0x61f920
//  0x4417cc: mov x2, x0
//  0x4417d0: ldur x0, [FP, #-0x48]
//  0x4417d4: stur x2, [FP, #-8]
//  0x4417d8: stur w0, [x2, #0xf]
//  0x4417dc: ldur x0, [FP, #-0x10]
//  0x4417e0: stur w0, [x2, #0x13]
//  0x4417e4: ldr x1, [PP, #0x5c58]
//  0x4417e8: bl #0x61e854
//  0x4417ec: mov x1, x0
//  0x4417f0: ldur x0, [FP, #-8]
//  0x4417f4: stur x1, [FP, #-0x10]
//  0x4417f8: stur w0, [x1, #0xf]
//  0x4417fc: mov x0, #4
//  0x441800: stur w0, [x1, #0xb]
//  0x441804: bl #0x39310c
//  0x441808: mov x1, x0
//  0x44180c: add x0, PP, #0xa, lsl #12
//  0x441810: ldr x0, [x0, #0x858]
//  0x441814: stur x1, [FP, #-8]
//  0x441818: stur w0, [x1, #0xf]
//  0x44181c: add x0, PP, #0xe, lsl #12
//  0x441820: ldr x0, [x0, #0xae0]
//  0x441824: stur w0, [x1, #0x13]
//  0x441828: add x0, PP, #0xe, lsl #12
//  0x44182c: ldr x0, [x0, #0xae8]
//  0x441830: stur w0, [x1, #0x17]
//  0x441834: add x0, PP, #0xe, lsl #12
//  0x441838: ldr x0, [x0, #0xb60]
//  0x44183c: stur w0, [x1, #0x1b]
//  0x441840: add x0, PP, #0xe, lsl #12
//  0x441844: ldr x0, [x0, #0xaf8]
//  0x441848: stur w0, [x1, #0x23]
//  0x44184c: add x0, PP, #0xa, lsl #12
//  0x441850: ldr x0, [x0, #0xa8]
//  0x441854: stur w0, [x1, #0x2b]
//  0x441858: stur xzr, [x1, #0x2f]
//  0x44185c: ldur x0, [FP, #-0x10]
//  0x441860: stur w0, [x1, #0xb]
//  0x441864: bl #0x391a04
//  0x441868: stur x0, [FP, #-0x10]
//  0x44186c: ldur BARRIER, [FP, #-0x38]
//  0x441870: ldur LR, [FP, #-0x30]
//  0x441874: stp LR, BARRIER, [SP, #8]
//  0x441878: ldur BARRIER, [FP, #-8]
//  0x44187c: str BARRIER, [SP]
//  0x441880: mov x1, x0
//  0x441884: add x4, PP, #0xe, lsl #12
//  0x441888: ldr x4, [x4, #0xf48]
//  0x44188c: bl #0x391490
//  0x441890: ldur x0, [FP, #-0x10]
//  0x441894: mov SP, FP
//  0x441898: ldp FP, LR, [SP], #0x10
//  0x44189c: ret 
//  0x4418a0: bl #0x61faa8
//  0x4418a4: b #0x441088
//  0x4418a8: str q0, [SP, #-0x10]!
//  0x4418ac: str x1, [SP, #-8]!
//  0x4418b0: bl #0x61f878
//  0x4418b4: ldr x1, [SP], #8
//  0x4418b8: ldr q0, [SP], #0x10
//  0x4418bc: b #0x44113c
//  0x4418c0: str q0, [SP, #-0x10]!
//  0x4418c4: stp x5, x6, [SP, #-0x10]!
//  0x4418c8: stp x3, x4, [SP, #-0x10]!
//  0x4418cc: stp x1, x2, [SP, #-0x10]!
//  0x4418d0: str x0, [SP, #-8]!
//  0x4418d4: bl #0x61f878
//  0x4418d8: mov x7, x0
//  0x4418dc: ldr x0, [SP], #8
//  0x4418e0: ldp x1, x2, [SP], #0x10
//  0x4418e4: ldp x3, x4, [SP], #0x10
//  0x4418e8: ldp x5, x6, [SP], #0x10
//  0x4418ec: ldr q0, [SP], #0x10
//  0x4418f0: b #0x441730
//
dynamic betRankListWidget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic q0;
  dynamic w0;
  dynamic w1;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x7;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x441058
  // frame: FP = SP // 0x44105c
  // frame: SP = SP - 0xb8 // 0x441060
  x0 = x1; // 0x441064
  local_m8 = x1; // 0x441068
  local_m10 = x2; // 0x44106c
  local_m18 = x3; // 0x441070
  local_m88 = d0; // 0x441074
  local_m90 = d1; // 0x441078
  BARRIER = mem(THR, 0x38); // 0x44107c
  if (SP <= BARRIER) {
    StackOverflowSharedWithFpuRegsStub_0x61faa8() /* 0x61faa8 */; // 0x4418a0
  }
  if (x2 & (1 << 4) != 0) {
    x1 = "virtual_party_dice_game_bet_small_ranking_title" /* pp+0xc750 */; // 0x4410a8
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4410ac
    getString() /* 0x3a1dcc */; // 0x4410b0
    x2 = x0; // 0x4410b4
  } else {
    x1 = "virtual_party_dice_game_bet_big_ranking_title" /* pp+0xc740 */; // 0x441090
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x441094
    getString() /* 0x3a1dcc */; // 0x441098
    x2 = x0; // 0x44109c
  }
  d0 = local_m90; // 0x4410c0
  x0 = local_m18; // 0x4410bc
  x1 = local_m10; // 0x4410b8
  local_m28 = x2; // 0x4410c4
  w3 = mem(x0, 0x2b); // 0x4410c8
  x3 = ((mem(x0, 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x4410cc
  local_m20 = x3; // 0x4410d0
  x1 = 1; // 0x4410d4
  sub_0x61e890(); // 0x4410d8
  x0 = local_m20; // 0x4410e0
  x1 = x0; // 0x4410dc
  local_m18 = x1; // 0x4410e4
  memSet(x1, 0xf, w0); // 0x4410e8
  AllocationStub_Color() /* 0x31d844 */; // 0x4410ec
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x4410f4
  x1 = x0; // 0x4410f0
  local_m38 = x1; // 0x4410f8
  memSet(x1, 0x27, w0); // 0x4410fc
  d0 = 4603579539098121011; // 0x441100
  memSet(x1, 7, d0); // 0x441104
  memSet(x1, 0xf, xzr); // 0x441108
  memSet(x1, 0x17, xzr); // 0x44110c
  memSet(x1, 0x1f, xzr); // 0x441110
  d0 = local_m90; // 0x441114
  memRead2(THR, 0x50, x0, x2); // 0x441118
  x0 = x0 + 0x10; // 0x44111c
  if (x2 <= x0) {
    local_m10 = q0; // 0x4418a8
    local_m8 = x1; // 0x4418ac
    AllocationStub__Double() /* 0x61f878 */; // 0x4418b0
    q0 = local_0; // 0x4418b8
    x1 = local_0; // 0x4418b4
  } else {
    memSet(THR, 0x50, x0); // 0x441128
    x0 = x0 - 0xf; // 0x44112c
    x2 = (x2 & 0xffff) | 0x30000; // 0x441134
    memSet(x0, -1, x2); // 0x441138
  }
  memSet(x0, 7, d0); // 0x44113c
  local_m30 = x0; // 0x441140
  AllocationStub_Container() /* 0x391a04 */; // 0x441144
  local_m40 = x0; // 0x441148
  BARRIER = local_m30; // 0x44114c
  LR = mem((PP + 0xa000), 0x3c0) /* Obj!Color@120b8  */; // 0x441154
  // frame: LR, BARRIER, mem(SP) // 0x441158
  x1 = x0; // 0x44115c
  x4 = mem((PP + 0xe000), 0xeb0) /* ImmutableArray */; // 0x441164
  Container_ctor() /* 0x391490 */; // 0x441168
  sub_0x3a1d94(); // 0x44116c
  x1 = mem((PP + 0xf000), 0x1c0) /* Function */; // 0x441174
  x2 = NULL; // 0x441178
  local_m48 = x0; // 0x44117c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x441180
  BARRIER = local_m40; // 0x441184
  // frame: x0, BARRIER, mem(SP) // 0x441188
  x1 = local_m48; // 0x44118c
  x4 = mem((PP + 0xe000), 0xec0) /* ImmutableArray */; // 0x441194
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x441198
  AllocationStub_Radius() /* 0x352b04 */; // 0x44119c
  d0 = 4629700416936869888; // 0x4411a4
  x17 = PP + 0xe000; // 0x4411a0
  local_m40 = x0; // 0x4411a8
  memSet(x0, 7, d0); // 0x4411ac
  memSet(x0, 0xf, d0); // 0x4411b0
  AllocationStub_Radius() /* 0x352b04 */; // 0x4411b4
  d0 = 4629700416936869888; // 0x4411bc
  x17 = PP + 0xe000; // 0x4411b8
  local_m50 = x0; // 0x4411c0
  memSet(x0, 7, d0); // 0x4411c4
  memSet(x0, 0xf, d0); // 0x4411c8
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x4411cc
  x0 = local_m40; // 0x4411d4
  x2 = x0; // 0x4411d0
  local_m58 = x2; // 0x4411d8
  memSet(x2, 7, w0); // 0x4411dc
  x0 = local_m50; // 0x4411e0
  memSet(x2, 0xb, w0); // 0x4411e4
  x0 = mem((PP + 0xa000), 0x510) /* Obj!Radius@120d9  */; // 0x4411ec
  memSet(x2, 0xf, w0); // 0x4411f0
  memSet(x2, 0x13, w0); // 0x4411f4
  x1 = mem((PP + 0xe000), 0xed0) /* TypeArguments */; // 0x4411fc
  AllocationStub_AssetImage() /* 0x3b5478 */; // 0x441200
  x0 = "assets/images/3.0x/game_bg_bet_normal.webp" /* pp+0xeed8 */; // 0x44120c
  x1 = x0; // 0x441204
  local_m40 = x1; // 0x441210
  memSet(x1, 0xb, w0); // 0x441214
  AllocationStub_DecorationImage() /* 0x3b546c */; // 0x441218
  x0 = local_m40; // 0x441220
  x1 = x0; // 0x44121c
  local_m50 = x1; // 0x441224
  memSet(x1, 7, w0); // 0x441228
  x0 = mem((PP + 0xe000), 0xee0) /* Obj!BoxFit@12285  */; // 0x441230
  memSet(x1, 0x13, w0); // 0x441234
  x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x44123c
  memSet(x1, 0x17, w0); // 0x441240
  x2 = mem((PP + 0xe000), 0xee8) /* Obj!ImageRepeat@12281  */; // 0x441248
  memSet(x1, 0x1f, w2); // 0x44124c
  x3 = NULL + 0x30; // 0x441250
  memSet(x1, 0x23, w3); // 0x441254
  d0 = 1.00000000 /* bits */; // 0x441258
  memSet(x1, 0x27, d0); // 0x44125c
  memSet(x1, 0x2f, d0); // 0x441260
  x4 = mem((PP + 0xe000), 0xef0) /* Obj!FilterQuality@12349  */; // 0x441268
  memSet(x1, 0x37, w4); // 0x44126c
  memSet(x1, 0x3b, w3); // 0x441270
  memSet(x1, 0x3f, w3); // 0x441274
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x441278
  x0 = local_m50; // 0x441280
  x1 = x0; // 0x44127c
  local_m40 = x1; // 0x441284
  memSet(x1, 0xb, w0); // 0x441288
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x441290
  memSet(x1, 0x23, w0); // 0x441294
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x441298
  local_m50 = x0; // 0x44129c
  memSet(x0, 7, xzr); // 0x4412a0
  d0 = 17.00000000 /* bits */; // 0x4412a4
  memSet(x0, 0xf, d0); // 0x4412a8
  memSet(x0, 0x17, xzr); // 0x4412ac
  memSet(x0, 0x1f, xzr); // 0x4412b0
  AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x4412b4
  d0 = 4639692778610098176; // 0x4412bc
  x17 = PP + 0xf000; // 0x4412b8
  local_m60 = x0; // 0x4412c0
  memSet(x0, 7, d0); // 0x4412c4
  d0 = 9218868437227405312; // 0x4412c8
  memSet(x0, 0xf, d0); // 0x4412cc
  memSet(x0, 0x17, xzr); // 0x4412d0
  memSet(x0, 0x1f, d0); // 0x4412d4
  x1 = local_m10; // 0x4412d8
  if (x1 & (1 << 4) != 0) {
    x1 = mem((PP + 0xe000), 0xed0) /* TypeArguments */; // 0x441308
    AllocationStub_AssetImage() /* 0x3b5478 */; // 0x44130c
    x0 = "assets/images/3.0x/game_bg_bet_small.webp" /* pp+0xf1d8 */; // 0x441318
    x1 = x0; // 0x441310
    memSet(x1, 0xb, w0); // 0x44131c
    x2 = x1; // 0x441320
  } else {
    x1 = mem((PP + 0xe000), 0xed0) /* TypeArguments */; // 0x4412e4
    AllocationStub_AssetImage() /* 0x3b5478 */; // 0x4412e8
    x0 = "assets/images/3.0x/game_bg_bet_big.webp" /* pp+0xf1d0 */; // 0x4412f4
    x1 = x0; // 0x4412ec
    memSet(x1, 0xb, w0); // 0x4412f8
    x2 = x1; // 0x4412fc
  }
  x0 = local_m20; // 0x441328
  x1 = local_m28; // 0x441324
  local_m10 = x2; // 0x44132c
  AllocationStub_DecorationImage() /* 0x3b546c */; // 0x441330
  x0 = local_m10; // 0x441338
  x1 = x0; // 0x441334
  local_m68 = x1; // 0x44133c
  memSet(x1, 7, w0); // 0x441340
  x0 = mem((PP + 0xf000), 0x1e0) /* Obj!BoxFit@12286  */; // 0x441348
  memSet(x1, 0x13, w0); // 0x44134c
  x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x441354
  memSet(x1, 0x17, w0); // 0x441358
  x2 = mem((PP + 0xe000), 0xee8) /* Obj!ImageRepeat@12281  */; // 0x441360
  memSet(x1, 0x1f, w2); // 0x441364
  x2 = NULL + 0x30; // 0x441368
  memSet(x1, 0x23, w2); // 0x44136c
  d0 = 1.00000000 /* bits */; // 0x441370
  memSet(x1, 0x27, d0); // 0x441374
  memSet(x1, 0x2f, d0); // 0x441378
  x3 = mem((PP + 0xe000), 0xef0) /* Obj!FilterQuality@12349  */; // 0x441380
  memSet(x1, 0x37, w3); // 0x441384
  memSet(x1, 0x3b, w2); // 0x441388
  memSet(x1, 0x3f, w2); // 0x44138c
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x441390
  x0 = local_m68; // 0x441398
  x1 = x0; // 0x441394
  local_m10 = x1; // 0x44139c
  memSet(x1, 0xb, w0); // 0x4413a0
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x4413a8
  memSet(x1, 0x23, w0); // 0x4413ac
  AllocationStub_TextStyle() /* 0x31abec */; // 0x4413b0
  x0 = NULL + 0x20; // 0x4413b8
  x1 = x0; // 0x4413b4
  local_m68 = x1; // 0x4413bc
  memSet(x1, 7, w0); // 0x4413c0
  x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x4413c4
  memSet(x1, 0xb, w2); // 0x4413c8
  x2 = mem((PP + 0xf000), 0x1e8) /* Double */; // 0x4413d0
  memSet(x1, 0x1f, w2); // 0x4413d4
  x3 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x4413dc
  memSet(x1, 0x23, w3); // 0x4413e0
  AllocationStub_StrutStyle() /* 0x3b3480 */; // 0x4413e4
  x0 = mem((PP + 0xf000), 0x1e8) /* Double */; // 0x4413f0
  x1 = x0; // 0x4413e8
  local_m70 = x1; // 0x4413f4
  memSet(x1, 0x13, w0); // 0x4413f8
  x0 = mem(PP, 0x52c8) /* Double */; // 0x4413fc
  memSet(x1, 0x27, w0); // 0x441400
  x0 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x441408
  memSet(x1, 0x1f, w0); // 0x44140c
  x0 = NULL + 0x20; // 0x441410
  memSet(x1, 0x2b, w0); // 0x441414
  AllocationStub_Text() /* 0x393bf8 */; // 0x441418
  x0 = local_m28; // 0x441420
  x1 = x0; // 0x44141c
  local_m78 = x1; // 0x441424
  memSet(x1, 0xb, w0); // 0x441428
  x0 = local_m68; // 0x44142c
  memSet(x1, 0x13, w0); // 0x441430
  x0 = local_m70; // 0x441434
  memSet(x1, 0x17, w0); // 0x441438
  x0 = mem(PP, 0x53a8) /* Obj!TextAlign@12316  */; // 0x44143c
  memSet(x1, 0x1b, w0); // 0x441440
  x0 = 2; // 0x441444
  memSet(x1, 0x37, w0); // 0x441448
  AllocationStub_Container() /* 0x391a04 */; // 0x44144c
  local_m28 = x0; // 0x441450
  BARRIER = local_m50; // 0x441454
  LR = local_m60; // 0x441458
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x44145c
  BARRIER = mem((PP + 0xf000), 0x1f0) /* Obj!EdgeInsets@11b8a  */; // 0x441464
  LR = local_m10; // 0x441468
  // frame: LR, BARRIER, mem(SP, 8) // 0x44146c
  BARRIER = local_m78; // 0x441470
  local_0 = BARRIER; // 0x441474
  x1 = x0; // 0x441478
  x4 = mem((PP + 0xf000), 0x1f8) /* ImmutableArray */; // 0x441480
  Container_ctor() /* 0x391490 */; // 0x441484
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x441488
  local_m10 = x0; // 0x44148c
  memSet(x0, 7, xzr); // 0x441490
  d0 = 17.00000000 /* bits */; // 0x441494
  memSet(x0, 0xf, d0); // 0x441498
  memSet(x0, 0x17, xzr); // 0x44149c
  memSet(x0, 0x1f, xzr); // 0x4414a0
  backButton() /* 0x441b0c */; // 0x4414a4
  local_m50 = x0; // 0x4414a8
  AllocationStub_Container() /* 0x391a04 */; // 0x4414ac
  local_m60 = x0; // 0x4414b0
  BARRIER = local_m10; // 0x4414b4
  LR = local_m50; // 0x4414b8
  // frame: LR, BARRIER, mem(SP) // 0x4414bc
  x1 = x0; // 0x4414c0
  x4 = mem((PP + 0xf000), 0x200) /* ImmutableArray */; // 0x4414c8
  Container_ctor() /* 0x391490 */; // 0x4414cc
  x1 = NULL; // 0x4414d0
  x2 = 4; // 0x4414d4
  sub_0x61f920(); // 0x4414d8
  x0 = local_m28; // 0x4414e0
  x2 = x0; // 0x4414dc
  local_m10 = x2; // 0x4414e4
  memSet(x2, 0xf, w0); // 0x4414e8
  x0 = local_m60; // 0x4414ec
  memSet(x2, 0x13, w0); // 0x4414f0
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x4414f4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x4414f8
  x0 = local_m10; // 0x441500
  x1 = x0; // 0x4414fc
  local_m28 = x1; // 0x441504
  memSet(x1, 0xf, w0); // 0x441508
  x2 = 4; // 0x44150c
  memSet(x1, 0xb, w2); // 0x441510
  AllocationStub_Stack() /* 0x39e6f4 */; // 0x441514
  x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x441520
  x1 = x0; // 0x441518
  local_m10 = x1; // 0x441524
  memSet(x1, 0xf, w0); // 0x441528
  x0 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x441530
  memSet(x1, 0x17, w0); // 0x441534
  x0 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x44153c
  memSet(x1, 0x1b, w0); // 0x441540
  x0 = local_m28; // 0x441544
  memSet(x1, 0xb, w0); // 0x441548
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x44154c
  x0 = mem((PP + 0xf000), 0x208) /* Double */; // 0x441558
  x3 = x0; // 0x441550
  local_m28 = x3; // 0x44155c
  memSet(x3, 0x13, w0); // 0x441560
  w1 = mem((local_m20), 0xb); // 0x441568
  x0 = (((mem((local_m20), 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x44156c
  x1 = (mem((local_m20), 0xb)) & 0xffffffff; // 0x441568
  if (x0 <= 0) {
    emptyWidge() /* 0x4418f4 */; // 0x441638
    x7 = x0; // 0x44163c
  } else {
    w0 = mem((local_m18), 0xf); // 0x44157c
    w1 = mem((((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x441584
    x0 = (((mem((((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x441588
    x1 = (mem((((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x441584
    x2 = local_m18; // 0x441578
    local_m80 = x0; // 0x44158c
    x1 = mem((PP + 0xf000), 0x210) /* Function */; // 0x441594
    AllocationStub__Closure() /* 0x61ec54 */; // 0x441598
    local_m18 = x0; // 0x44159c
    AllocationStub_ListView() /* 0x3ab5ac */; // 0x4415a0
    x1 = x0; // 0x4415a4
    x2 = local_m18; // 0x4415a8
    x3 = local_m80; // 0x4415ac
    local_m18 = x0; // 0x4415b0
    x4 = mem(PP, 0x2e0) /* ImmutableArray */; // 0x4415b4
    ListView_ctor_builder() /* 0x3ab2bc */; // 0x4415b8
    AllocationStub_Container() /* 0x391a04 */; // 0x4415bc
    local_m20 = x0; // 0x4415c0
    BARRIER = local_m18; // 0x4415c4
    local_0 = BARRIER; // 0x4415c8
    x1 = x0; // 0x4415cc
    x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x4415d4
    Container_ctor() /* 0x391490 */; // 0x4415d8
    x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x4415e0
    AllocationStub_Expanded() /* 0x39fb14 */; // 0x4415e4
    x0 = 1; // 0x4415ec
    x2 = x0; // 0x4415e8
    local_m18 = x2; // 0x4415f0
    memSet(x2, 0x13, x0); // 0x4415f4
    x3 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x4415fc
    memSet(x2, 0x1b, w3); // 0x441600
    x1 = local_m20; // 0x441604
    memSet(x2, 0xb, w1); // 0x441608
    x1 = mem((PP + 0xf000), 0x218) /* TypeArguments */; // 0x441610
    AllocationStub_MediaQuery() /* 0x396454 */; // 0x441614
    x1 = x0; // 0x441618
    x2 = local_m18; // 0x44161c
    x3 = local_m8; // 0x441620
    local_m8 = x0; // 0x441624
    x4 = mem(PP, 0x2e0) /* ImmutableArray */; // 0x441628
    MediaQuery_ctor_removePadding() /* 0x39ecf8 */; // 0x44162c
    x7 = local_m8; // 0x441630
  }
  d0 = local_m88; // 0x441640
  x0 = local_m28; // 0x441650
  x2 = 6; // 0x441658
  x3 = local_m10; // 0x44164c
  x4 = local_m58; // 0x441648
  x5 = local_m48; // 0x441644
  x6 = 6; // 0x441654
  local_m8 = x7; // 0x44165c
  x1 = NULL; // 0x441660
  sub_0x61f920(); // 0x441664
  x0 = local_m10; // 0x44166c
  x2 = x0; // 0x441668
  local_m18 = x2; // 0x441670
  memSet(x2, 0xf, w0); // 0x441674
  x0 = local_m28; // 0x441678
  memSet(x2, 0x13, w0); // 0x44167c
  x0 = local_m8; // 0x441680
  memSet(x2, 0x17, w0); // 0x441684
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x441688
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x44168c
  x0 = local_m18; // 0x441694
  x1 = x0; // 0x441690
  local_m8 = x1; // 0x441698
  memSet(x1, 0xf, w0); // 0x44169c
  x0 = 6; // 0x4416a0
  memSet(x1, 0xb, w0); // 0x4416a4
  AllocationStub_Column() /* 0x39310c */; // 0x4416a8
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x4416b4
  x1 = x0; // 0x4416ac
  local_m10 = x1; // 0x4416b8
  memSet(x1, 0xf, w0); // 0x4416bc
  x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x4416c4
  memSet(x1, 0x13, w2); // 0x4416c8
  x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x4416d0
  memSet(x1, 0x17, w3); // 0x4416d4
  x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x4416dc
  memSet(x1, 0x1b, w4); // 0x4416e0
  x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x4416e8
  memSet(x1, 0x23, w5); // 0x4416ec
  x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x4416f4
  memSet(x1, 0x2b, w6); // 0x4416f8
  memSet(x1, 0x2f, xzr); // 0x4416fc
  x7 = local_m8; // 0x441700
  memSet(x1, 0xb, w7); // 0x441704
  d0 = local_m88; // 0x441708
  memRead2(THR, 0x50, x7, x8); // 0x44170c
  x7 = x7 + 0x10; // 0x441710
  if (x8 <= x7) {
    local_m10 = q0; // 0x4418c0
    // frame: x5, x6, mem(SP, -0x10)! // 0x4418c4
    // frame: x3, x4, mem(SP, -0x10)! // 0x4418c8
    // frame: x1, x2, mem(SP, -0x10)! // 0x4418cc
    local_m8 = x0; // 0x4418d0
    AllocationStub__Double() /* 0x61f878 */; // 0x4418d4
    x0 = local_0; // 0x4418dc
    x7 = x0; // 0x4418d8
    // frame: x1, x2, mem(SP), 0x10 // 0x4418e0
    // frame: x3, x4, mem(SP), 0x10 // 0x4418e4
    // frame: x5, x6, mem(SP), 0x10 // 0x4418e8
    q0 = local_0; // 0x4418ec
  } else {
    memSet(THR, 0x50, x7); // 0x44171c
    x7 = x7 - 0xf; // 0x441720
    x8 = (x8 & 0xffff) | 0x30000; // 0x441728
    memSet(x7, -1, x8); // 0x44172c
  }
  memSet(x7, 7, d0); // 0x441730
  local_m8 = x7; // 0x441734
  AllocationStub_Container() /* 0x391a04 */; // 0x441738
  local_m18 = x0; // 0x44173c
  BARRIER = local_m8; // 0x441740
  LR = mem(PP, 0x5458) /* Double */; // 0x441744
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x441748
  BARRIER = local_m40; // 0x44174c
  LR = local_m10; // 0x441750
  // frame: LR, BARRIER, mem(SP) // 0x441754
  x1 = x0; // 0x441758
  x4 = mem((PP + 0xe000), 0xf38) /* ImmutableArray */; // 0x441760
  Container_ctor() /* 0x391490 */; // 0x441764
  AllocationStub_ClipRRect() /* 0x3b378c */; // 0x441768
  x0 = local_m58; // 0x441770
  x2 = x0; // 0x44176c
  local_m8 = x2; // 0x441774
  memSet(x2, 0xf, w0); // 0x441778
  x0 = mem((PP + 0xe000), 0xf40) /* Obj!Clip@12344  */; // 0x441780
  memSet(x2, 0x17, w0); // 0x441784
  x0 = local_m18; // 0x441788
  memSet(x2, 0xb, w0); // 0x44178c
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x441794
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x441798
  x0 = 1; // 0x4417a0
  x3 = x0; // 0x44179c
  local_m10 = x3; // 0x4417a4
  memSet(x3, 0x13, x0); // 0x4417a8
  x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x4417b0
  memSet(x3, 0x1b, w0); // 0x4417b4
  x0 = local_m8; // 0x4417b8
  memSet(x3, 0xb, w0); // 0x4417bc
  x1 = NULL; // 0x4417c0
  x2 = 4; // 0x4417c4
  sub_0x61f920(); // 0x4417c8
  x0 = local_m48; // 0x4417d0
  x2 = x0; // 0x4417cc
  local_m8 = x2; // 0x4417d4
  memSet(x2, 0xf, w0); // 0x4417d8
  x0 = local_m10; // 0x4417dc
  memSet(x2, 0x13, w0); // 0x4417e0
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x4417e4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x4417e8
  x0 = local_m8; // 0x4417f0
  x1 = x0; // 0x4417ec
  local_m10 = x1; // 0x4417f4
  memSet(x1, 0xf, w0); // 0x4417f8
  x0 = 4; // 0x4417fc
  memSet(x1, 0xb, w0); // 0x441800
  AllocationStub_Column() /* 0x39310c */; // 0x441804
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x441810
  x1 = x0; // 0x441808
  local_m8 = x1; // 0x441814
  memSet(x1, 0xf, w0); // 0x441818
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x441820
  memSet(x1, 0x13, w0); // 0x441824
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x44182c
  memSet(x1, 0x17, w0); // 0x441830
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x441838
  memSet(x1, 0x1b, w0); // 0x44183c
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x441844
  memSet(x1, 0x23, w0); // 0x441848
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x441850
  memSet(x1, 0x2b, w0); // 0x441854
  memSet(x1, 0x2f, xzr); // 0x441858
  x0 = local_m10; // 0x44185c
  memSet(x1, 0xb, w0); // 0x441860
  AllocationStub_Container() /* 0x391a04 */; // 0x441864
  local_m10 = x0; // 0x441868
  BARRIER = local_m38; // 0x44186c
  LR = local_m30; // 0x441870
  // frame: LR, BARRIER, mem(SP, 8) // 0x441874
  BARRIER = local_m8; // 0x441878
  local_0 = BARRIER; // 0x44187c
  x1 = x0; // 0x441880
  x4 = mem((PP + 0xe000), 0xf48) /* ImmutableArray */; // 0x441888
  Container_ctor() /* 0x391490 */; // 0x44188c
  SP = FP; // 0x441894
  x0 = local_m10; // 0x441890
  // frame: FP, LR, mem(SP), 0x10 // 0x441898
  return;
}

// emptyWidge
// raw disassembly:
//  0x4418f4: stp FP, LR, [SP, #-0x10]!
//  0x4418f8: mov FP, SP
//  0x4418fc: sub SP, SP, #0x30
//  0x441900: ldr BARRIER, [THR, #0x38]
//  0x441904: cmp SP, BARRIER
//  0x441908: b.ls #0x441b04
//  0x44190c: bl #0x3a142c
//  0x441910: mov x1, x0
//  0x441914: add x0, PP, #0xf, lsl #12
//  0x441918: ldr x0, [x0, #0x268]
//  0x44191c: stur x1, [FP, #-8]
//  0x441920: stur w0, [x1, #0xb]
//  0x441924: add x0, PP, #0xf, lsl #12
//  0x441928: ldr x0, [x0, #0x170]
//  0x44192c: stur w0, [x1, #0xf]
//  0x441930: add x0, PP, #0xf, lsl #12
//  0x441934: ldr x0, [x0, #0x270]
//  0x441938: stur w0, [x1, #0x13]
//  0x44193c: add x0, PP, #0xf, lsl #12
//  0x441940: ldr x0, [x0, #0x278]
//  0x441944: stur w0, [x1, #0x17]
//  0x441948: bl #0x3949ec
//  0x44194c: mov x2, x0
//  0x441950: add x0, PP, #0xf, lsl #12
//  0x441954: ldr x0, [x0, #0x280]
//  0x441958: stur x2, [FP, #-0x10]
//  0x44195c: stur w0, [x2, #0x13]
//  0x441960: add x1, PP, #0xc, lsl #12
//  0x441964: ldr x1, [x1, #0x888]
//  0x441968: ldr x4, [PP, #0x4c0]
//  0x44196c: bl #0x3a1dcc
//  0x441970: stur x0, [FP, #-0x18]
//  0x441974: bl #0x31d844
//  0x441978: mov x1, x0
//  0x44197c: ldr x0, [PP, #0x6310]
//  0x441980: stur x1, [FP, #-0x20]
//  0x441984: stur w0, [x1, #0x27]
//  0x441988: fmov d0, #1.00000000
//  0x44198c: stur d0, [x1, #7]
//  0x441990: add x17, PP, #0xe, lsl #12
//  0x441994: ldr d0, [x17, #0xe08]
//  0x441998: stur d0, [x1, #0xf]
//  0x44199c: stur d0, [x1, #0x17]
//  0x4419a0: stur d0, [x1, #0x1f]
//  0x4419a4: bl #0x31abec
//  0x4419a8: mov x1, x0
//  0x4419ac: add x0, NULL, #0x20
//  0x4419b0: stur x1, [FP, #-0x28]
//  0x4419b4: stur w0, [x1, #7]
//  0x4419b8: ldur x0, [FP, #-0x20]
//  0x4419bc: stur w0, [x1, #0xb]
//  0x4419c0: add x0, PP, #0xe, lsl #12
//  0x4419c4: ldr x0, [x0, #0xde8]
//  0x4419c8: stur w0, [x1, #0x1f]
//  0x4419cc: bl #0x393bf8
//  0x4419d0: mov x1, x0
//  0x4419d4: ldur x0, [FP, #-0x18]
//  0x4419d8: stur x1, [FP, #-0x20]
//  0x4419dc: stur w0, [x1, #0xb]
//  0x4419e0: ldur x0, [FP, #-0x28]
//  0x4419e4: stur w0, [x1, #0x13]
//  0x4419e8: bl #0x3949ec
//  0x4419ec: mov x3, x0
//  0x4419f0: ldr x0, [PP, #0x66c8]
//  0x4419f4: stur x3, [FP, #-0x18]
//  0x4419f8: stur w0, [x3, #0x13]
//  0x4419fc: mov x1, NULL
//  0x441a00: mov x2, #8
//  0x441a04: bl #0x61f920
//  0x441a08: mov x2, x0
//  0x441a0c: ldur x0, [FP, #-8]
//  0x441a10: stur x2, [FP, #-0x28]
//  0x441a14: stur w0, [x2, #0xf]
//  0x441a18: ldur x0, [FP, #-0x10]
//  0x441a1c: stur w0, [x2, #0x13]
//  0x441a20: ldur x0, [FP, #-0x20]
//  0x441a24: stur w0, [x2, #0x17]
//  0x441a28: ldur x0, [FP, #-0x18]
//  0x441a2c: stur w0, [x2, #0x1b]
//  0x441a30: ldr x1, [PP, #0x5c58]
//  0x441a34: bl #0x61e854
//  0x441a38: mov x1, x0
//  0x441a3c: ldur x0, [FP, #-0x28]
//  0x441a40: stur x1, [FP, #-8]
//  0x441a44: stur w0, [x1, #0xf]
//  0x441a48: mov x0, #8
//  0x441a4c: stur w0, [x1, #0xb]
//  0x441a50: bl #0x39310c
//  0x441a54: mov x1, x0
//  0x441a58: add x0, PP, #0xa, lsl #12
//  0x441a5c: ldr x0, [x0, #0x858]
//  0x441a60: stur x1, [FP, #-0x10]
//  0x441a64: stur w0, [x1, #0xf]
//  0x441a68: add x0, PP, #0xf, lsl #12
//  0x441a6c: ldr x0, [x0, #0x288]
//  0x441a70: stur w0, [x1, #0x13]
//  0x441a74: add x0, PP, #0xe, lsl #12
//  0x441a78: ldr x0, [x0, #0xae8]
//  0x441a7c: stur w0, [x1, #0x17]
//  0x441a80: add x0, PP, #0xe, lsl #12
//  0x441a84: ldr x0, [x0, #0xb60]
//  0x441a88: stur w0, [x1, #0x1b]
//  0x441a8c: add x0, PP, #0xe, lsl #12
//  0x441a90: ldr x0, [x0, #0xaf8]
//  0x441a94: stur w0, [x1, #0x23]
//  0x441a98: add x0, PP, #0xa, lsl #12
//  0x441a9c: ldr x0, [x0, #0xa8]
//  0x441aa0: stur w0, [x1, #0x2b]
//  0x441aa4: stur xzr, [x1, #0x2f]
//  0x441aa8: ldur x0, [FP, #-8]
//  0x441aac: stur w0, [x1, #0xb]
//  0x441ab0: bl #0x391a04
//  0x441ab4: stur x0, [FP, #-8]
//  0x441ab8: ldur BARRIER, [FP, #-0x10]
//  0x441abc: str BARRIER, [SP]
//  0x441ac0: mov x1, x0
//  0x441ac4: add x4, PP, #0xc, lsl #12
//  0x441ac8: ldr x4, [x4, #0x1f8]
//  0x441acc: bl #0x391490
//  0x441ad0: add x1, PP, #0xe, lsl #12
//  0x441ad4: ldr x1, [x1, #0xad0]
//  0x441ad8: bl #0x39fb14
//  0x441adc: mov x1, #1
//  0x441ae0: stur x1, [x0, #0x13]
//  0x441ae4: add x1, PP, #0xe, lsl #12
//  0x441ae8: ldr x1, [x1, #0xad8]
//  0x441aec: stur w1, [x0, #0x1b]
//  0x441af0: ldur x1, [FP, #-8]
//  0x441af4: stur w1, [x0, #0xb]
//  0x441af8: mov SP, FP
//  0x441afc: ldp FP, LR, [SP], #0x10
//  0x441b00: ret 
//  0x441b04: bl #0x61fa28
//  0x441b08: b #0x44190c
//
dynamic emptyWidge() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4418f4
  BARRIER = mem(THR, 0x38); // 0x441900
  // frame: FP = SP // 0x4418f8
  // frame: SP = SP - 0x30 // 0x4418fc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x441b04
  }
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x44190c
  x0 = "assets/images/3.0x/game_fruit_empty.webp" /* pp+0xf268 */; // 0x441918
  x1 = x0; // 0x441910
  local_m8 = x1; // 0x44191c
  memSet(x1, 0xb, w0); // 0x441920
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x441928
  memSet(x1, 0xf, w0); // 0x44192c
  x0 = mem((PP + 0xf000), 0x270) /* Double */; // 0x441934
  memSet(x1, 0x13, w0); // 0x441938
  x0 = mem((PP + 0xf000), 0x278) /* Double */; // 0x441940
  memSet(x1, 0x17, w0); // 0x441944
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x441948
  x0 = mem((PP + 0xf000), 0x280) /* Double */; // 0x441954
  x2 = x0; // 0x44194c
  local_m10 = x2; // 0x441958
  memSet(x2, 0x13, w0); // 0x44195c
  x1 = "virtual_party_fruitland_ranking_page_default_text" /* pp+0xc888 */; // 0x441964
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x441968
  getString() /* 0x3a1dcc */; // 0x44196c
  local_m18 = x0; // 0x441970
  AllocationStub_Color() /* 0x31d844 */; // 0x441974
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x44197c
  x1 = x0; // 0x441978
  local_m20 = x1; // 0x441980
  memSet(x1, 0x27, w0); // 0x441984
  d0 = 1.00000000 /* bits */; // 0x441988
  memSet(x1, 7, d0); // 0x44198c
  d0 = 4604745176648734551; // 0x441994
  x17 = PP + 0xe000; // 0x441990
  memSet(x1, 0xf, d0); // 0x441998
  memSet(x1, 0x17, d0); // 0x44199c
  memSet(x1, 0x1f, d0); // 0x4419a0
  AllocationStub_TextStyle() /* 0x31abec */; // 0x4419a4
  x0 = NULL + 0x20; // 0x4419ac
  x1 = x0; // 0x4419a8
  local_m28 = x1; // 0x4419b0
  memSet(x1, 7, w0); // 0x4419b4
  x0 = local_m20; // 0x4419b8
  memSet(x1, 0xb, w0); // 0x4419bc
  x0 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x4419c4
  memSet(x1, 0x1f, w0); // 0x4419c8
  AllocationStub_Text() /* 0x393bf8 */; // 0x4419cc
  x0 = local_m18; // 0x4419d4
  x1 = x0; // 0x4419d0
  local_m20 = x1; // 0x4419d8
  memSet(x1, 0xb, w0); // 0x4419dc
  x0 = local_m28; // 0x4419e0
  memSet(x1, 0x13, w0); // 0x4419e4
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x4419e8
  x0 = mem(PP, 0x66c8) /* Double */; // 0x4419f0
  x3 = x0; // 0x4419ec
  local_m18 = x3; // 0x4419f4
  memSet(x3, 0x13, w0); // 0x4419f8
  x1 = NULL; // 0x4419fc
  x2 = 8; // 0x441a00
  sub_0x61f920(); // 0x441a04
  x0 = local_m8; // 0x441a0c
  x2 = x0; // 0x441a08
  local_m28 = x2; // 0x441a10
  memSet(x2, 0xf, w0); // 0x441a14
  x0 = local_m10; // 0x441a18
  memSet(x2, 0x13, w0); // 0x441a1c
  x0 = local_m20; // 0x441a20
  memSet(x2, 0x17, w0); // 0x441a24
  x0 = local_m18; // 0x441a28
  memSet(x2, 0x1b, w0); // 0x441a2c
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x441a30
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x441a34
  x0 = local_m28; // 0x441a3c
  x1 = x0; // 0x441a38
  local_m8 = x1; // 0x441a40
  memSet(x1, 0xf, w0); // 0x441a44
  x0 = 8; // 0x441a48
  memSet(x1, 0xb, w0); // 0x441a4c
  AllocationStub_Column() /* 0x39310c */; // 0x441a50
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x441a5c
  x1 = x0; // 0x441a54
  local_m10 = x1; // 0x441a60
  memSet(x1, 0xf, w0); // 0x441a64
  x0 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x441a6c
  memSet(x1, 0x13, w0); // 0x441a70
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x441a78
  memSet(x1, 0x17, w0); // 0x441a7c
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x441a84
  memSet(x1, 0x1b, w0); // 0x441a88
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x441a90
  memSet(x1, 0x23, w0); // 0x441a94
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x441a9c
  memSet(x1, 0x2b, w0); // 0x441aa0
  memSet(x1, 0x2f, xzr); // 0x441aa4
  x0 = local_m8; // 0x441aa8
  memSet(x1, 0xb, w0); // 0x441aac
  AllocationStub_Container() /* 0x391a04 */; // 0x441ab0
  local_m8 = x0; // 0x441ab4
  BARRIER = local_m10; // 0x441ab8
  local_0 = BARRIER; // 0x441abc
  x1 = x0; // 0x441ac0
  x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x441ac8
  Container_ctor() /* 0x391490 */; // 0x441acc
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x441ad4
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x441ad8
  x1 = 1; // 0x441adc
  memSet(x0, 0x13, x1); // 0x441ae0
  x1 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x441ae8
  memSet(x0, 0x1b, w1); // 0x441aec
  x1 = local_m8; // 0x441af0
  memSet(x0, 0xb, w1); // 0x441af4
  SP = FP; // 0x441af8
  // frame: FP, LR, mem(SP), 0x10 // 0x441afc
  return;
}

// backButton
// raw disassembly:
//  0x441b0c: stp FP, LR, [SP, #-0x10]!
//  0x441b10: mov FP, SP
//  0x441b14: sub SP, SP, #0x38
//  0x441b18: ldr BARRIER, [THR, #0x38]
//  0x441b1c: cmp SP, BARRIER
//  0x441b20: b.ls #0x441bf4
//  0x441b24: bl #0x2e3578
//  0x441b28: fmov d0, #10.00000000
//  0x441b2c: stur x0, [FP, #-8]
//  0x441b30: stur d0, [x0, #7]
//  0x441b34: stur xzr, [x0, #0xf]
//  0x441b38: stur xzr, [x0, #0x17]
//  0x441b3c: stur xzr, [x0, #0x1f]
//  0x441b40: bl #0x3a142c
//  0x441b44: mov x1, x0
//  0x441b48: add x0, PP, #0xf, lsl #12
//  0x441b4c: ldr x0, [x0, #0x308]
//  0x441b50: stur x1, [FP, #-0x10]
//  0x441b54: stur w0, [x1, #0xb]
//  0x441b58: add x0, PP, #0xf, lsl #12
//  0x441b5c: ldr x0, [x0, #0x170]
//  0x441b60: stur w0, [x1, #0xf]
//  0x441b64: add x0, PP, #0xf, lsl #12
//  0x441b68: ldr x0, [x0, #0x178]
//  0x441b6c: stur w0, [x1, #0x1b]
//  0x441b70: bl #0x391a04
//  0x441b74: stur x0, [FP, #-0x18]
//  0x441b78: ldur BARRIER, [FP, #-8]
//  0x441b7c: add LR, PP, #0xf, lsl #12
//  0x441b80: ldr LR, [LR, #0x310]
//  0x441b84: stp LR, BARRIER, [SP, #0x10]
//  0x441b88: add BARRIER, PP, #0xf, lsl #12
//  0x441b8c: ldr BARRIER, [BARRIER, #0x310]
//  0x441b90: ldur LR, [FP, #-0x10]
//  0x441b94: stp LR, BARRIER, [SP]
//  0x441b98: mov x1, x0
//  0x441b9c: add x4, PP, #0xf, lsl #12
//  0x441ba0: ldr x4, [x4, #0x180]
//  0x441ba4: bl #0x391490
//  0x441ba8: bl #0x3a1d94
//  0x441bac: stur x0, [FP, #-8]
//  0x441bb0: ldur BARRIER, [FP, #-0x18]
//  0x441bb4: add LR, PP, #0xf, lsl #12
//  0x441bb8: ldr LR, [LR, #0x318]
//  0x441bbc: stp LR, BARRIER, [SP]
//  0x441bc0: mov x1, x0
//  0x441bc4: add x4, PP, #0xe, lsl #12
//  0x441bc8: ldr x4, [x4, #0xec0]
//  0x441bcc: bl #0x3a18c4
//  0x441bd0: bl #0x396460
//  0x441bd4: add x1, PP, #0xf, lsl #12
//  0x441bd8: ldr x1, [x1, #0x190]
//  0x441bdc: stur w1, [x0, #0xf]
//  0x441be0: ldur x1, [FP, #-8]
//  0x441be4: stur w1, [x0, #0xb]
//  0x441be8: mov SP, FP
//  0x441bec: ldp FP, LR, [SP], #0x10
//  0x441bf0: ret 
//  0x441bf4: bl #0x61fa28
//  0x441bf8: b #0x441b24
//
dynamic backButton() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic x0;
  dynamic x1;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x441b0c
  BARRIER = mem(THR, 0x38); // 0x441b18
  // frame: FP = SP // 0x441b10
  // frame: SP = SP - 0x38 // 0x441b14
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x441bf4
  }
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x441b24
  d0 = 10.00000000 /* bits */; // 0x441b28
  local_m8 = x0; // 0x441b2c
  memSet(x0, 7, d0); // 0x441b30
  memSet(x0, 0xf, xzr); // 0x441b34
  memSet(x0, 0x17, xzr); // 0x441b38
  memSet(x0, 0x1f, xzr); // 0x441b3c
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x441b40
  x0 = "assets/images/3.0x/topbar_icon_back_white.webp" /* pp+0xf308 */; // 0x441b4c
  x1 = x0; // 0x441b44
  local_m10 = x1; // 0x441b50
  memSet(x1, 0xb, w0); // 0x441b54
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x441b5c
  memSet(x1, 0xf, w0); // 0x441b60
  x0 = mem((PP + 0xf000), 0x178) /* Obj!BoxFit@12284  */; // 0x441b68
  memSet(x1, 0x1b, w0); // 0x441b6c
  AllocationStub_Container() /* 0x391a04 */; // 0x441b70
  local_m18 = x0; // 0x441b74
  BARRIER = local_m8; // 0x441b78
  LR = mem((PP + 0xf000), 0x310) /* Double */; // 0x441b80
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x441b84
  BARRIER = mem((PP + 0xf000), 0x310) /* Double */; // 0x441b8c
  LR = local_m10; // 0x441b90
  // frame: LR, BARRIER, mem(SP) // 0x441b94
  x1 = x0; // 0x441b98
  x4 = mem((PP + 0xf000), 0x180) /* ImmutableArray */; // 0x441ba0
  Container_ctor() /* 0x391490 */; // 0x441ba4
  sub_0x3a1d94(); // 0x441ba8
  local_m8 = x0; // 0x441bac
  BARRIER = local_m18; // 0x441bb0
  LR = mem((PP + 0xf000), 0x318) /* Closure */; // 0x441bb8
  // frame: LR, BARRIER, mem(SP) // 0x441bbc
  x1 = x0; // 0x441bc0
  x4 = mem((PP + 0xe000), 0xec0) /* ImmutableArray */; // 0x441bc8
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x441bcc
  AllocationStub_Align() /* 0x396460 */; // 0x441bd0
  x1 = mem((PP + 0xf000), 0x190) /* Obj!Alignment@11bdb  */; // 0x441bd8
  memSet(x0, 0xf, w1); // 0x441bdc
  x1 = local_m8; // 0x441be0
  memSet(x0, 0xb, w1); // 0x441be4
  SP = FP; // 0x441be8
  // frame: FP, LR, mem(SP), 0x10 // 0x441bec
  return;
}

// anon_closure
// raw disassembly:
//  0x441bfc: stp FP, LR, [SP, #-0x10]!
//  0x441c00: mov FP, SP
//  0x441c04: sub SP, SP, #0x58
//  0x441c08: ldr x0, [FP, #0x20]
//  0x441c0c: ldur w1, [x0, #0x17]
//  0x441c10: add x1, x1, HEAP, lsl #32
//  0x441c14: ldr BARRIER, [THR, #0x38]
//  0x441c18: cmp SP, BARRIER
//  0x441c1c: b.ls #0x442064
//  0x441c20: ldur w2, [x1, #0xf]
//  0x441c24: add x2, x2, HEAP, lsl #32
//  0x441c28: ldur w0, [x2, #0xb]
//  0x441c2c: ldr x1, [FP, #0x10]
//  0x441c30: sbfx x3, x1, #1, #0x1f
//  0x441c34: tbz w1, #0, #0x441c3c
//  0x441c38: ldur x3, [x1, #7]
//  0x441c3c: sbfx x1, x0, #1, #0x1f
//  0x441c40: mov x0, x1
//  0x441c44: mov x1, x3
//  0x441c48: cmp x1, x0
//  0x441c4c: b.hs #0x44206c
//  0x441c50: ldur w0, [x2, #0xf]
//  0x441c54: add x0, x0, HEAP, lsl #32
//  0x441c58: add BARRIER, x0, x3, lsl #2
//  0x441c5c: ldur w1, [BARRIER, #0xf]
//  0x441c60: add x1, x1, HEAP, lsl #32
//  0x441c64: stur x1, [FP, #-8]
//  0x441c68: bl #0x2e3578
//  0x441c6c: fmov d0, #16.00000000
//  0x441c70: stur x0, [FP, #-0x20]
//  0x441c74: stur d0, [x0, #7]
//  0x441c78: stur xzr, [x0, #0xf]
//  0x441c7c: stur d0, [x0, #0x17]
//  0x441c80: stur d0, [x0, #0x1f]
//  0x441c84: ldur x1, [FP, #-8]
//  0x441c88: ldur w2, [x1, #0xb]
//  0x441c8c: add x2, x2, HEAP, lsl #32
//  0x441c90: cmp w2, w22
//  0x441c94: b.ne #0x441c9c
//  0x441c98: ldr x2, [PP, #0x148]
//  0x441c9c: stur x2, [FP, #-0x18]
//  0x441ca0: ldur w3, [x1, #0xf]
//  0x441ca4: add x3, x3, HEAP, lsl #32
//  0x441ca8: cmp w3, w22
//  0x441cac: b.ne #0x441cb4
//  0x441cb0: ldr x3, [PP, #0x148]
//  0x441cb4: stur x3, [FP, #-0x10]
//  0x441cb8: bl #0x3a67fc
//  0x441cbc: mov x1, x0
//  0x441cc0: ldur x0, [FP, #-0x18]
//  0x441cc4: stur x1, [FP, #-0x28]
//  0x441cc8: stur w0, [x1, #0xb]
//  0x441ccc: ldur x0, [FP, #-0x10]
//  0x441cd0: stur w0, [x1, #0xf]
//  0x441cd4: add x17, PP, #0xf, lsl #12
//  0x441cd8: ldr d0, [x17, #0x220]
//  0x441cdc: stur d0, [x1, #0x13]
//  0x441ce0: add x0, NULL, #0x20
//  0x441ce4: stur w0, [x1, #0x1b]
//  0x441ce8: bl #0x391a04
//  0x441cec: stur x0, [FP, #-0x10]
//  0x441cf0: ldur BARRIER, [FP, #-0x28]
//  0x441cf4: str BARRIER, [SP]
//  0x441cf8: mov x1, x0
//  0x441cfc: add x4, PP, #0xc, lsl #12
//  0x441d00: ldr x4, [x4, #0x1f8]
//  0x441d04: bl #0x391490
//  0x441d08: bl #0x3949ec
//  0x441d0c: mov x1, x0
//  0x441d10: add x0, PP, #0xf, lsl #12
//  0x441d14: ldr x0, [x0, #0x228]
//  0x441d18: stur x1, [FP, #-0x28]
//  0x441d1c: stur w0, [x1, #0xf]
//  0x441d20: ldur x0, [FP, #-8]
//  0x441d24: ldur w2, [x0, #7]
//  0x441d28: add x2, x2, HEAP, lsl #32
//  0x441d2c: cmp w2, w22
//  0x441d30: b.ne #0x441d38
//  0x441d34: ldr x2, [PP, #0x148]
//  0x441d38: stur x2, [FP, #-0x18]
//  0x441d3c: bl #0x31abec
//  0x441d40: mov x1, x0
//  0x441d44: add x0, NULL, #0x20
//  0x441d48: stur x1, [FP, #-0x30]
//  0x441d4c: stur w0, [x1, #7]
//  0x441d50: ldr x0, [PP, #0x6050]
//  0x441d54: stur w0, [x1, #0xb]
//  0x441d58: add x2, PP, #0xe, lsl #12
//  0x441d5c: ldr x2, [x2, #0xb50]
//  0x441d60: stur w2, [x1, #0x1f]
//  0x441d64: bl #0x393bf8
//  0x441d68: mov x1, x0
//  0x441d6c: ldur x0, [FP, #-0x18]
//  0x441d70: stur x1, [FP, #-0x38]
//  0x441d74: stur w0, [x1, #0xb]
//  0x441d78: ldur x0, [FP, #-0x30]
//  0x441d7c: stur w0, [x1, #0x13]
//  0x441d80: add x0, PP, #0xf, lsl #12
//  0x441d84: ldr x0, [x0, #0x230]
//  0x441d88: stur w0, [x1, #0x2b]
//  0x441d8c: mov x0, #2
//  0x441d90: stur w0, [x1, #0x37]
//  0x441d94: bl #0x391a04
//  0x441d98: stur x0, [FP, #-0x18]
//  0x441d9c: add BARRIER, PP, #0xf, lsl #12
//  0x441da0: ldr BARRIER, [BARRIER, #0x238]
//  0x441da4: ldur LR, [FP, #-0x38]
//  0x441da8: stp LR, BARRIER, [SP]
//  0x441dac: mov x1, x0
//  0x441db0: add x4, PP, #0xf, lsl #12
//  0x441db4: ldr x4, [x4, #0x240]
//  0x441db8: bl #0x391490
//  0x441dbc: bl #0x3a142c
//  0x441dc0: mov x1, x0
//  0x441dc4: add x0, PP, #0xf, lsl #12
//  0x441dc8: ldr x0, [x0, #0x248]
//  0x441dcc: stur x1, [FP, #-0x30]
//  0x441dd0: stur w0, [x1, #0xb]
//  0x441dd4: add x0, PP, #0xf, lsl #12
//  0x441dd8: ldr x0, [x0, #0x170]
//  0x441ddc: stur w0, [x1, #0xf]
//  0x441de0: add x0, PP, #0xf, lsl #12
//  0x441de4: ldr x0, [x0, #0x250]
//  0x441de8: stur w0, [x1, #0x13]
//  0x441dec: stur w0, [x1, #0x17]
//  0x441df0: bl #0x2e3578
//  0x441df4: fmov d0, #3.00000000
//  0x441df8: stur x0, [FP, #-0x38]
//  0x441dfc: stur d0, [x0, #7]
//  0x441e00: stur xzr, [x0, #0xf]
//  0x441e04: stur xzr, [x0, #0x17]
//  0x441e08: stur xzr, [x0, #0x1f]
//  0x441e0c: ldur x1, [FP, #-8]
//  0x441e10: ldur w2, [x1, #0x13]
//  0x441e14: add x2, x2, HEAP, lsl #32
//  0x441e18: cmp w2, w22
//  0x441e1c: b.ne #0x441e28
//  0x441e20: ldr x6, [PP, #0x148]
//  0x441e24: b #0x441e2c
//  0x441e28: mov x6, x2
//  0x441e2c: ldur x5, [FP, #-0x10]
//  0x441e30: ldur x4, [FP, #-0x28]
//  0x441e34: ldur x3, [FP, #-0x18]
//  0x441e38: ldur x2, [FP, #-0x30]
//  0x441e3c: stur x6, [FP, #-8]
//  0x441e40: ldr x1, [PP, #0x6050]
//  0x441e44: fmov d0, #16.00000000
//  0x441e48: bl #0x3a86fc
//  0x441e4c: stur x0, [FP, #-0x40]
//  0x441e50: bl #0x393bf8
//  0x441e54: mov x1, x0
//  0x441e58: ldur x0, [FP, #-8]
//  0x441e5c: stur x1, [FP, #-0x48]
//  0x441e60: stur w0, [x1, #0xb]
//  0x441e64: ldur x0, [FP, #-0x40]
//  0x441e68: stur w0, [x1, #0x13]
//  0x441e6c: bl #0x391a04
//  0x441e70: stur x0, [FP, #-8]
//  0x441e74: ldur BARRIER, [FP, #-0x38]
//  0x441e78: ldur LR, [FP, #-0x48]
//  0x441e7c: stp LR, BARRIER, [SP]
//  0x441e80: mov x1, x0
//  0x441e84: add x4, PP, #0xf, lsl #12
//  0x441e88: ldr x4, [x4, #0x258]
//  0x441e8c: bl #0x391490
//  0x441e90: mov x1, NULL
//  0x441e94: mov x2, #4
//  0x441e98: bl #0x61f920
//  0x441e9c: mov x2, x0
//  0x441ea0: ldur x0, [FP, #-0x30]
//  0x441ea4: stur x2, [FP, #-0x38]
//  0x441ea8: stur w0, [x2, #0xf]
//  0x441eac: ldur x0, [FP, #-8]
//  0x441eb0: stur w0, [x2, #0x13]
//  0x441eb4: ldr x1, [PP, #0x5c58]
//  0x441eb8: bl #0x61e854
//  0x441ebc: mov x1, x0
//  0x441ec0: ldur x0, [FP, #-0x38]
//  0x441ec4: stur x1, [FP, #-8]
//  0x441ec8: stur w0, [x1, #0xf]
//  0x441ecc: mov x0, #4
//  0x441ed0: stur w0, [x1, #0xb]
//  0x441ed4: bl #0x3a1414
//  0x441ed8: mov x1, x0
//  0x441edc: ldr x0, [PP, #0x5140]
//  0x441ee0: stur x1, [FP, #-0x30]
//  0x441ee4: stur w0, [x1, #0xf]
//  0x441ee8: add x2, PP, #0xf, lsl #12
//  0x441eec: ldr x2, [x2, #0x260]
//  0x441ef0: stur w2, [x1, #0x13]
//  0x441ef4: add x2, PP, #0xe, lsl #12
//  0x441ef8: ldr x2, [x2, #0xae8]
//  0x441efc: stur w2, [x1, #0x17]
//  0x441f00: add x3, PP, #0xe, lsl #12
//  0x441f04: ldr x3, [x3, #0xb60]
//  0x441f08: stur w3, [x1, #0x1b]
//  0x441f0c: add x4, PP, #0xe, lsl #12
//  0x441f10: ldr x4, [x4, #0xaf8]
//  0x441f14: stur w4, [x1, #0x23]
//  0x441f18: add x5, PP, #0xa, lsl #12
//  0x441f1c: ldr x5, [x5, #0xa8]
//  0x441f20: stur w5, [x1, #0x2b]
//  0x441f24: stur xzr, [x1, #0x2f]
//  0x441f28: ldur x6, [FP, #-8]
//  0x441f2c: stur w6, [x1, #0xb]
//  0x441f30: bl #0x391a04
//  0x441f34: stur x0, [FP, #-8]
//  0x441f38: ldur BARRIER, [FP, #-0x30]
//  0x441f3c: str BARRIER, [SP]
//  0x441f40: mov x1, x0
//  0x441f44: add x4, PP, #0xc, lsl #12
//  0x441f48: ldr x4, [x4, #0x1f8]
//  0x441f4c: bl #0x391490
//  0x441f50: add x1, PP, #0xe, lsl #12
//  0x441f54: ldr x1, [x1, #0xad0]
//  0x441f58: bl #0x39fb14
//  0x441f5c: mov x3, x0
//  0x441f60: mov x0, #1
//  0x441f64: stur x3, [FP, #-0x30]
//  0x441f68: stur x0, [x3, #0x13]
//  0x441f6c: add x0, PP, #0xe, lsl #12
//  0x441f70: ldr x0, [x0, #0xad8]
//  0x441f74: stur w0, [x3, #0x1b]
//  0x441f78: ldur x0, [FP, #-8]
//  0x441f7c: stur w0, [x3, #0xb]
//  0x441f80: mov x1, NULL
//  0x441f84: mov x2, #8
//  0x441f88: bl #0x61f920
//  0x441f8c: mov x2, x0
//  0x441f90: ldur x0, [FP, #-0x10]
//  0x441f94: stur x2, [FP, #-8]
//  0x441f98: stur w0, [x2, #0xf]
//  0x441f9c: ldur x0, [FP, #-0x28]
//  0x441fa0: stur w0, [x2, #0x13]
//  0x441fa4: ldur x0, [FP, #-0x18]
//  0x441fa8: stur w0, [x2, #0x17]
//  0x441fac: ldur x0, [FP, #-0x30]
//  0x441fb0: stur w0, [x2, #0x1b]
//  0x441fb4: ldr x1, [PP, #0x5c58]
//  0x441fb8: bl #0x61e854
//  0x441fbc: mov x1, x0
//  0x441fc0: ldur x0, [FP, #-8]
//  0x441fc4: stur x1, [FP, #-0x10]
//  0x441fc8: stur w0, [x1, #0xf]
//  0x441fcc: mov x0, #8
//  0x441fd0: stur w0, [x1, #0xb]
//  0x441fd4: bl #0x3a1414
//  0x441fd8: mov x1, x0
//  0x441fdc: ldr x0, [PP, #0x5140]
//  0x441fe0: stur x1, [FP, #-8]
//  0x441fe4: stur w0, [x1, #0xf]
//  0x441fe8: add x0, PP, #0xe, lsl #12
//  0x441fec: ldr x0, [x0, #0xae0]
//  0x441ff0: stur w0, [x1, #0x13]
//  0x441ff4: add x0, PP, #0xe, lsl #12
//  0x441ff8: ldr x0, [x0, #0xae8]
//  0x441ffc: stur w0, [x1, #0x17]
//  0x442000: add x0, PP, #0xe, lsl #12
//  0x442004: ldr x0, [x0, #0xb60]
//  0x442008: stur w0, [x1, #0x1b]
//  0x44200c: add x0, PP, #0xe, lsl #12
//  0x442010: ldr x0, [x0, #0xaf8]
//  0x442014: stur w0, [x1, #0x23]
//  0x442018: add x0, PP, #0xa, lsl #12
//  0x44201c: ldr x0, [x0, #0xa8]
//  0x442020: stur w0, [x1, #0x2b]
//  0x442024: stur xzr, [x1, #0x2f]
//  0x442028: ldur x0, [FP, #-0x10]
//  0x44202c: stur w0, [x1, #0xb]
//  0x442030: bl #0x391a04
//  0x442034: stur x0, [FP, #-0x10]
//  0x442038: ldur BARRIER, [FP, #-0x20]
//  0x44203c: ldur LR, [FP, #-8]
//  0x442040: stp LR, BARRIER, [SP]
//  0x442044: mov x1, x0
//  0x442048: add x4, PP, #0xf, lsl #12
//  0x44204c: ldr x4, [x4, #0x258]
//  0x442050: bl #0x391490
//  0x442054: ldur x0, [FP, #-0x10]
//  0x442058: mov SP, FP
//  0x44205c: ldp FP, LR, [SP], #0x10
//  0x442060: ret 
//  0x442064: bl #0x61fa28
//  0x442068: b #0x441c20
//  0x44206c: bl #0x61fe70
//
dynamic anon_closure() {
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
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  // frame: FP, LR, mem(SP, -0x10)! // 0x441bfc
  BARRIER = mem(THR, 0x38); // 0x441c14
  // frame: FP = SP // 0x441c00
  // frame: SP = SP - 0x58 // 0x441c04
  w1 = mem((local_20), 0x17); // 0x441c0c
  x0 = local_20; // 0x441c08
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x441c10
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x442064
  }
  w0 = mem(((w2 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x441c28
  x0 = (mem(((w2 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x441c28
  x1 = local_10; // 0x441c2c
  x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x441c24
  x3 = ((local_10) >> 1) & 0x7fffffff; // 0x441c30
  if (x1 & (1 << 0) == 0) {
  } else {
    x3 = mem(x1, 7); // 0x441c38
  }
  x0 = (x0 >> 1) & 0x7fffffff; // 0x441c40
  x1 = x3; // 0x441c44
  if (x1 >= x0) {
    RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x44206c
  }
  BARRIER = ((w0 & 0xffffffff) + (HEAP << 32)) + (x3 << 2); // 0x441c58
  w1 = mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x3 << 2)), 0xf); // 0x441c5c
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x441c54
  x1 = ((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x3 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x441c60
  local_m8 = x1; // 0x441c64
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x441c68
  d0 = 16.00000000 /* bits */; // 0x441c6c
  local_m20 = x0; // 0x441c70
  memSet(x0, 7, d0); // 0x441c74
  memSet(x0, 0xf, xzr); // 0x441c78
  memSet(x0, 0x17, d0); // 0x441c7c
  memSet(x0, 0x1f, d0); // 0x441c80
  w2 = mem((local_m8), 0xb); // 0x441c88
  x1 = local_m8; // 0x441c84
  x2 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x441c8c
  if (w2 != w22) {
  } else {
    x2 = "" /* pp+0x148 */; // 0x441c98
  }
  local_m18 = x2; // 0x441c9c
  w3 = mem(x1, 0xf); // 0x441ca0
  x3 = ((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x441ca4
  if (w3 != w22) {
  } else {
    x3 = "" /* pp+0x148 */; // 0x441cb0
  }
  local_m10 = x3; // 0x441cb4
  AllocationStub_SoulAvatarImage() /* 0x3a67fc */; // 0x441cb8
  x0 = local_m18; // 0x441cc0
  x1 = x0; // 0x441cbc
  local_m28 = x1; // 0x441cc4
  memSet(x1, 0xb, w0); // 0x441cc8
  x0 = local_m10; // 0x441ccc
  memSet(x1, 0xf, w0); // 0x441cd0
  d0 = 4632937379169042432; // 0x441cd8
  x17 = PP + 0xf000; // 0x441cd4
  memSet(x1, 0x13, d0); // 0x441cdc
  x0 = NULL + 0x20; // 0x441ce0
  memSet(x1, 0x1b, w0); // 0x441ce4
  AllocationStub_Container() /* 0x391a04 */; // 0x441ce8
  local_m10 = x0; // 0x441cec
  BARRIER = local_m28; // 0x441cf0
  local_0 = BARRIER; // 0x441cf4
  x1 = x0; // 0x441cf8
  x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x441d00
  Container_ctor() /* 0x391490 */; // 0x441d04
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x441d08
  x0 = mem((PP + 0xf000), 0x228) /* Double */; // 0x441d14
  x1 = x0; // 0x441d0c
  local_m28 = x1; // 0x441d18
  memSet(x1, 0xf, w0); // 0x441d1c
  w2 = mem((local_m8), 7); // 0x441d24
  x0 = local_m8; // 0x441d20
  x2 = ((mem((local_m8), 7)) & 0xffffffff) + (HEAP << 32); // 0x441d28
  if (w2 != w22) {
  } else {
    x2 = "" /* pp+0x148 */; // 0x441d34
  }
  local_m18 = x2; // 0x441d38
  AllocationStub_TextStyle() /* 0x31abec */; // 0x441d3c
  x0 = NULL + 0x20; // 0x441d44
  x1 = x0; // 0x441d40
  local_m30 = x1; // 0x441d48
  memSet(x1, 7, w0); // 0x441d4c
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x441d50
  memSet(x1, 0xb, w0); // 0x441d54
  x2 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x441d5c
  memSet(x1, 0x1f, w2); // 0x441d60
  AllocationStub_Text() /* 0x393bf8 */; // 0x441d64
  x0 = local_m18; // 0x441d6c
  x1 = x0; // 0x441d68
  local_m38 = x1; // 0x441d70
  memSet(x1, 0xb, w0); // 0x441d74
  x0 = local_m30; // 0x441d78
  memSet(x1, 0x13, w0); // 0x441d7c
  x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x441d84
  memSet(x1, 0x2b, w0); // 0x441d88
  x0 = 2; // 0x441d8c
  memSet(x1, 0x37, w0); // 0x441d90
  AllocationStub_Container() /* 0x391a04 */; // 0x441d94
  local_m18 = x0; // 0x441d98
  BARRIER = mem((PP + 0xf000), 0x238) /* Double */; // 0x441da0
  LR = local_m38; // 0x441da4
  // frame: LR, BARRIER, mem(SP) // 0x441da8
  x1 = x0; // 0x441dac
  x4 = mem((PP + 0xf000), 0x240) /* ImmutableArray */; // 0x441db4
  Container_ctor() /* 0x391490 */; // 0x441db8
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x441dbc
  x0 = "assets/images/3.0x/party_icon_soulcoin_big.webp" /* pp+0xf248 */; // 0x441dc8
  x1 = x0; // 0x441dc0
  local_m30 = x1; // 0x441dcc
  memSet(x1, 0xb, w0); // 0x441dd0
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x441dd8
  memSet(x1, 0xf, w0); // 0x441ddc
  x0 = mem((PP + 0xf000), 0x250) /* Double */; // 0x441de4
  memSet(x1, 0x13, w0); // 0x441de8
  memSet(x1, 0x17, w0); // 0x441dec
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x441df0
  d0 = 3.00000000 /* bits */; // 0x441df4
  local_m38 = x0; // 0x441df8
  memSet(x0, 7, d0); // 0x441dfc
  memSet(x0, 0xf, xzr); // 0x441e00
  memSet(x0, 0x17, xzr); // 0x441e04
  memSet(x0, 0x1f, xzr); // 0x441e08
  w2 = mem((local_m8), 0x13); // 0x441e10
  x1 = local_m8; // 0x441e0c
  x2 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x441e14
  if (w2 != w22) {
    x6 = x2; // 0x441e28
  } else {
    x6 = "" /* pp+0x148 */; // 0x441e20
  }
  x2 = local_m30; // 0x441e38
  x3 = local_m18; // 0x441e34
  x4 = local_m28; // 0x441e30
  x5 = local_m10; // 0x441e2c
  local_m8 = x6; // 0x441e3c
  d0 = 16.00000000 /* bits */; // 0x441e44
  x1 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x441e40
  TextStyles_fontDINCondensedBold() /* 0x3a86fc */; // 0x441e48
  local_m40 = x0; // 0x441e4c
  AllocationStub_Text() /* 0x393bf8 */; // 0x441e50
  x0 = local_m8; // 0x441e58
  x1 = x0; // 0x441e54
  local_m48 = x1; // 0x441e5c
  memSet(x1, 0xb, w0); // 0x441e60
  x0 = local_m40; // 0x441e64
  memSet(x1, 0x13, w0); // 0x441e68
  AllocationStub_Container() /* 0x391a04 */; // 0x441e6c
  local_m8 = x0; // 0x441e70
  BARRIER = local_m38; // 0x441e74
  LR = local_m48; // 0x441e78
  // frame: LR, BARRIER, mem(SP) // 0x441e7c
  x1 = x0; // 0x441e80
  x4 = mem((PP + 0xf000), 0x258) /* ImmutableArray */; // 0x441e88
  Container_ctor() /* 0x391490 */; // 0x441e8c
  x1 = NULL; // 0x441e90
  x2 = 4; // 0x441e94
  sub_0x61f920(); // 0x441e98
  x0 = local_m30; // 0x441ea0
  x2 = x0; // 0x441e9c
  local_m38 = x2; // 0x441ea4
  memSet(x2, 0xf, w0); // 0x441ea8
  x0 = local_m8; // 0x441eac
  memSet(x2, 0x13, w0); // 0x441eb0
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x441eb4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x441eb8
  x0 = local_m38; // 0x441ec0
  x1 = x0; // 0x441ebc
  local_m8 = x1; // 0x441ec4
  memSet(x1, 0xf, w0); // 0x441ec8
  x0 = 4; // 0x441ecc
  memSet(x1, 0xb, w0); // 0x441ed0
  AllocationStub_Row() /* 0x3a1414 */; // 0x441ed4
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x441edc
  x1 = x0; // 0x441ed8
  local_m30 = x1; // 0x441ee0
  memSet(x1, 0xf, w0); // 0x441ee4
  x2 = mem((PP + 0xf000), 0x260) /* Obj!MainAxisAlignment@1226e  */; // 0x441eec
  memSet(x1, 0x13, w2); // 0x441ef0
  x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x441ef8
  memSet(x1, 0x17, w2); // 0x441efc
  x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x441f04
  memSet(x1, 0x1b, w3); // 0x441f08
  x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x441f10
  memSet(x1, 0x23, w4); // 0x441f14
  x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x441f1c
  memSet(x1, 0x2b, w5); // 0x441f20
  memSet(x1, 0x2f, xzr); // 0x441f24
  x6 = local_m8; // 0x441f28
  memSet(x1, 0xb, w6); // 0x441f2c
  AllocationStub_Container() /* 0x391a04 */; // 0x441f30
  local_m8 = x0; // 0x441f34
  BARRIER = local_m30; // 0x441f38
  local_0 = BARRIER; // 0x441f3c
  x1 = x0; // 0x441f40
  x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x441f48
  Container_ctor() /* 0x391490 */; // 0x441f4c
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x441f54
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x441f58
  x0 = 1; // 0x441f60
  x3 = x0; // 0x441f5c
  local_m30 = x3; // 0x441f64
  memSet(x3, 0x13, x0); // 0x441f68
  x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x441f70
  memSet(x3, 0x1b, w0); // 0x441f74
  x0 = local_m8; // 0x441f78
  memSet(x3, 0xb, w0); // 0x441f7c
  x1 = NULL; // 0x441f80
  x2 = 8; // 0x441f84
  sub_0x61f920(); // 0x441f88
  x0 = local_m10; // 0x441f90
  x2 = x0; // 0x441f8c
  local_m8 = x2; // 0x441f94
  memSet(x2, 0xf, w0); // 0x441f98
  x0 = local_m28; // 0x441f9c
  memSet(x2, 0x13, w0); // 0x441fa0
  x0 = local_m18; // 0x441fa4
  memSet(x2, 0x17, w0); // 0x441fa8
  x0 = local_m30; // 0x441fac
  memSet(x2, 0x1b, w0); // 0x441fb0
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x441fb4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x441fb8
  x0 = local_m8; // 0x441fc0
  x1 = x0; // 0x441fbc
  local_m10 = x1; // 0x441fc4
  memSet(x1, 0xf, w0); // 0x441fc8
  x0 = 8; // 0x441fcc
  memSet(x1, 0xb, w0); // 0x441fd0
  AllocationStub_Row() /* 0x3a1414 */; // 0x441fd4
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x441fdc
  x1 = x0; // 0x441fd8
  local_m8 = x1; // 0x441fe0
  memSet(x1, 0xf, w0); // 0x441fe4
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x441fec
  memSet(x1, 0x13, w0); // 0x441ff0
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x441ff8
  memSet(x1, 0x17, w0); // 0x441ffc
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x442004
  memSet(x1, 0x1b, w0); // 0x442008
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x442010
  memSet(x1, 0x23, w0); // 0x442014
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x44201c
  memSet(x1, 0x2b, w0); // 0x442020
  memSet(x1, 0x2f, xzr); // 0x442024
  x0 = local_m10; // 0x442028
  memSet(x1, 0xb, w0); // 0x44202c
  AllocationStub_Container() /* 0x391a04 */; // 0x442030
  local_m10 = x0; // 0x442034
  BARRIER = local_m20; // 0x442038
  LR = local_m8; // 0x44203c
  // frame: LR, BARRIER, mem(SP) // 0x442040
  x1 = x0; // 0x442044
  x4 = mem((PP + 0xf000), 0x258) /* ImmutableArray */; // 0x44204c
  Container_ctor() /* 0x391490 */; // 0x442050
  SP = FP; // 0x442058
  x0 = local_m10; // 0x442054
  // frame: FP, LR, mem(SP), 0x10 // 0x44205c
  return;
}

// PagePKGameBetRank_createState
// raw disassembly:
//  0x4c54b0: stp FP, LR, [SP, #-0x10]!
//  0x4c54b4: mov FP, SP
//  0x4c54b8: sub SP, SP, #0x10
//  0x4c54bc: ldr BARRIER, [THR, #0x38]
//  0x4c54c0: cmp SP, BARRIER
//  0x4c54c4: b.ls #0x4c5528
//  0x4c54c8: add x1, PP, #0xb, lsl #12
//  0x4c54cc: ldr x1, [x1, #0x690]
//  0x4c54d0: bl #0x4c55f8
//  0x4c54d4: mov x1, x0
//  0x4c54d8: add x0, NULL, #0x20
//  0x4c54dc: stur x1, [FP, #-8]
//  0x4c54e0: stur w0, [x1, #0x17]
//  0x4c54e4: bl #0x4c55ec
//  0x4c54e8: mov x1, x0
//  0x4c54ec: stur x0, [FP, #-0x10]
//  0x4c54f0: bl #0x4c5530
//  0x4c54f4: ldur x0, [FP, #-0x10]
//  0x4c54f8: ldur x1, [FP, #-8]
//  0x4c54fc: stur w0, [x1, #0x13]
//  0x4c5500: ldurb w16, [x1, #-1]
//  0x4c5504: ldurb w17, [x0, #-1]
//  0x4c5508: and BARRIER, x17, BARRIER, lsr #2
//  0x4c550c: tst BARRIER, HEAP, lsr #32
//  0x4c5510: b.eq #0x4c5518
//  0x4c5514: bl #0x61e04c
//  0x4c5518: mov x0, x1
//  0x4c551c: mov SP, FP
//  0x4c5520: ldp FP, LR, [SP], #0x10
//  0x4c5524: ret 
//  0x4c5528: bl #0x61fa28
//  0x4c552c: b #0x4c54c8
//
dynamic PagePKGameBetRank_createState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c54b0
  BARRIER = mem(THR, 0x38); // 0x4c54bc
  // frame: FP = SP // 0x4c54b4
  // frame: SP = SP - 0x10 // 0x4c54b8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c5528
  }
  x1 = mem((PP + 0xb000), 0x690) /* TypeArguments */; // 0x4c54cc
  AllocationStub__PagePKGameBetRankState() /* 0x4c55f8 */; // 0x4c54d0
  x0 = NULL + 0x20; // 0x4c54d8
  x1 = x0; // 0x4c54d4
  local_m8 = x1; // 0x4c54dc
  memSet(x1, 0x17, w0); // 0x4c54e0
  AllocationStub_GamePKBetRankingNotifier() /* 0x4c55ec */; // 0x4c54e4
  x1 = x0; // 0x4c54e8
  local_m10 = x0; // 0x4c54ec
  GamePKBetRankingNotifier_ctor() /* 0x4c5530 */; // 0x4c54f0
  x0 = local_m10; // 0x4c54f4
  x1 = local_m8; // 0x4c54f8
  memSet(x1, 0x13, w0); // 0x4c54fc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c5508
  w16 = mem(x1, -1); // 0x4c5500
  w17 = mem(x0, -1); // 0x4c5504
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c5500
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c5504
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c5514
  }
  SP = FP; // 0x4c551c
  x0 = x1; // 0x4c5518
  // frame: FP, LR, mem(SP), 0x10 // 0x4c5520
  return;
}
