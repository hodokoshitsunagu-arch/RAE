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
dynamic AllocationStub_BoxConstraints, AllocationStub_BoxDecoration, AllocationStub_Color;
dynamic AllocationStub_Column, AllocationStub_Container, AllocationStub_DecorationImage;
dynamic AllocationStub_Expanded, AllocationStub_Flexible, AllocationStub_GridView;
dynamic AllocationStub_MediaQuery, AllocationStub_NeverScrollableScrollPhysics;
dynamic AllocationStub_Padding, AllocationStub_Radius, AllocationStub_Row;
dynamic AllocationStub_SOAssetImage, AllocationStub_SOImage, AllocationStub_SizedBox;
dynamic AllocationStub_SliverGridDelegateWithFixedCrossAxisCount, AllocationStub_Stack;
dynamic AllocationStub_Text, AllocationStub_TextStyle, AllocationStub_Visibility;
dynamic AllocationStub_WillPopScope, AllocationStub__Closure;
dynamic AllocationStub__GameFruitLandState, AllocationStub__GrowableList, AllocationStub__Mint;
dynamic AllocationStub__Set, AllocationStub__WidgetTicker, BARRIER, Border_factory_ctor_all;
dynamic CompactIterator_moveNext, Container_ctor, CupertinoSwitchState_get_value;
dynamic EventTrack_eventClick, FP, GameFruitNotifier_betFruit;
dynamic GameFruitNotifier_getBetCoinGear, GameFruitNotifier_getCurrentBetItem;
dynamic GameFruitNotifier_getFruitLandResource, GameFruitNotifier_getItemBetCoin;
dynamic GameFruitNotifier_initAnimation, GameFruitNotifier_release;
dynamic GameFruitNotifier_updateSelectedIndex, GestureDetector_ctor, GridView_ctor_builder;
dynamic GrowableList_factory_ctor_of, HEAP, LR;
dynamic LateInitializationErrorSharedWithoutFpuRegsStub_0x620258, ListBase_asMap;
dynamic ListIterable_map, ListMapView_get_keys, Map_factory_ctor_fromLiteral;
dynamic MediaQuery_ctor_removePadding, NULL, NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0;
dynamic PP, SP;
dynamic Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_add;
dynamic Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_get_iterator;
dynamic SoulState_dispose, StackOverflowSharedWithoutFpuRegsStub_0x61fa28;
dynamic StringBase_interpolateSingle, THR, TextStyles_commonContent;
dynamic TextStyles_fontDINCondensedBold, TickerMode_getNotifier, Ticker_get_shouldScheduleTick;
dynamic Ticker_muted_assign, Ticker_scheduleTick, Ticker_unscheduleTick, Wakelock_disable;
dynamic Wakelock_enable, WriteBarrierStub_x1, WriteBarrierStub_x2, d0, d1, d2, getString;
dynamic local_0, local_10, local_18, local_20, local_m10, local_m18, local_m20, local_m28;
dynamic local_m30, local_m38, local_m40, local_m48, local_m50, local_m58, local_m8;
dynamic sub_0x2b16e4, sub_0x3a1d94, sub_0x61d99c, sub_0x61db00, sub_0x61e890, sub_0x61f920, w0;
dynamic w1, w16, w17, w2, w22, w3, w4, w5, wzr, x0, x1, x16, x17, x2, x21, x25, x3, x4, x5, x6;
dynamic x8, x9, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$game$widget$game_fruit_land
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// GameFruitLandState_SoulState_TickerProviderStateMixin_createTicker
// raw disassembly:
//  0x2d3d90: stp FP, LR, [SP, #-0x10]!
//  0x2d3d94: mov FP, SP
//  0x2d3d98: sub SP, SP, #0x20
//  0x2d3d9c: mov x0, x1
//  0x2d3da0: stur x1, [FP, #-8]
//  0x2d3da4: stur x2, [FP, #-0x10]
//  0x2d3da8: ldr BARRIER, [THR, #0x38]
//  0x2d3dac: cmp SP, BARRIER
//  0x2d3db0: b.ls #0x2d3efc
//  0x2d3db4: ldur w1, [x0, #0x17]
//  0x2d3db8: add x1, x1, HEAP, lsl #32
//  0x2d3dbc: cmp w1, w22
//  0x2d3dc0: b.ne #0x2d3dcc
//  0x2d3dc4: mov x1, x0
//  0x2d3dc8: bl #0x2d3f50
//  0x2d3dcc: ldur x0, [FP, #-8]
//  0x2d3dd0: ldur w1, [x0, #0x13]
//  0x2d3dd4: add x1, x1, HEAP, lsl #32
//  0x2d3dd8: cmp w1, w22
//  0x2d3ddc: b.ne #0x2d3e74
//  0x2d3de0: ldr x0, [THR, #0x68]
//  0x2d3de4: ldr x0, [x0, #0x6e8]
//  0x2d3de8: ldr BARRIER, [PP, #0x40]
//  0x2d3dec: cmp w0, w16
//  0x2d3df0: b.ne #0x2d3dfc
//  0x2d3df4: ldr x2, [PP, #0xbf8]
//  0x2d3df8: bl #0x61d99c
//  0x2d3dfc: add x1, PP, #0xe, lsl #12
//  0x2d3e00: ldr x1, [x1, #0xe98]
//  0x2d3e04: stur x0, [FP, #-0x18]
//  0x2d3e08: bl #0x2a5de4
//  0x2d3e0c: mov x1, x0
//  0x2d3e10: ldur x0, [FP, #-0x18]
//  0x2d3e14: stur x1, [FP, #-0x20]
//  0x2d3e18: stur w0, [x1, #0x1b]
//  0x2d3e1c: stur wzr, [x1, #0xb]
//  0x2d3e20: ldr x0, [THR, #0x68]
//  0x2d3e24: ldr x0, [x0, #0x6f0]
//  0x2d3e28: ldr BARRIER, [PP, #0x40]
//  0x2d3e2c: cmp w0, w16
//  0x2d3e30: b.ne #0x2d3e3c
//  0x2d3e34: ldr x2, [PP, #0xc00]
//  0x2d3e38: bl #0x61d99c
//  0x2d3e3c: mov x1, x0
//  0x2d3e40: ldur x0, [FP, #-0x20]
//  0x2d3e44: stur w1, [x0, #0xf]
//  0x2d3e48: stur wzr, [x0, #0x13]
//  0x2d3e4c: stur wzr, [x0, #0x17]
//  0x2d3e50: ldur x1, [FP, #-8]
//  0x2d3e54: stur w0, [x1, #0x13]
//  0x2d3e58: ldurb w16, [x1, #-1]
//  0x2d3e5c: ldurb w17, [x0, #-1]
//  0x2d3e60: and BARRIER, x17, BARRIER, lsr #2
//  0x2d3e64: tst BARRIER, HEAP, lsr #32
//  0x2d3e68: b.eq #0x2d3e70
//  0x2d3e6c: bl #0x61e04c
//  0x2d3e70: b #0x2d3e78
//  0x2d3e74: mov x1, x0
//  0x2d3e78: ldur x0, [FP, #-0x10]
//  0x2d3e7c: bl #0x2cf960
//  0x2d3e80: mov x3, x0
//  0x2d3e84: ldur x2, [FP, #-8]
//  0x2d3e88: stur x3, [FP, #-0x18]
//  0x2d3e8c: stur w2, [x3, #0x1b]
//  0x2d3e90: add x0, NULL, #0x30
//  0x2d3e94: stur w0, [x3, #0xb]
//  0x2d3e98: ldur x0, [FP, #-0x10]
//  0x2d3e9c: stur w0, [x3, #0x13]
//  0x2d3ea0: ldur w1, [x2, #0x17]
//  0x2d3ea4: add x1, x1, HEAP, lsl #32
//  0x2d3ea8: cmp w1, w22
//  0x2d3eac: b.eq #0x2d3f04
//  0x2d3eb0: ldur x0, [x1, #-1]
//  0x2d3eb4: ubfx x0, x0, #0xc, #0x14
//  0x2d3eb8: sub LR, x0, #0xfff
//  0x2d3ebc: ldr LR, [x21, LR, lsl #3]
//  0x2d3ec0: blr LR
//  0x2d3ec4: eor x2, x0, #0x10
//  0x2d3ec8: ldur x1, [FP, #-0x18]
//  0x2d3ecc: bl #0x2cf190
//  0x2d3ed0: ldur x0, [FP, #-8]
//  0x2d3ed4: ldur w1, [x0, #0x13]
//  0x2d3ed8: add x1, x1, HEAP, lsl #32
//  0x2d3edc: cmp w1, w22
//  0x2d3ee0: b.eq #0x2d3f08
//  0x2d3ee4: ldur x2, [FP, #-0x18]
//  0x2d3ee8: bl #0x611d50
//  0x2d3eec: ldur x0, [FP, #-0x18]
//  0x2d3ef0: mov SP, FP
//  0x2d3ef4: ldp FP, LR, [SP], #0x10
//  0x2d3ef8: ret 
//  0x2d3efc: bl #0x61fa28
//  0x2d3f00: b #0x2d3db4
//  0x2d3f04: bl #0x61ffd0
//  0x2d3f08: bl #0x61ffd0
//
dynamic GameFruitLandState_SoulState_TickerProviderStateMixin_createTicker() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x2d3d90
  // frame: FP = SP // 0x2d3d94
  // frame: SP = SP - 0x20 // 0x2d3d98
  x0 = x1; // 0x2d3d9c
  local_m8 = x1; // 0x2d3da0
  local_m10 = x2; // 0x2d3da4
  BARRIER = mem(THR, 0x38); // 0x2d3da8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2d3efc
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x2d3db8
  if (w1 != w22) {
  } else {
    x1 = x0; // 0x2d3dc4
    GameFruitLandState_SoulState_TickerProviderStateMixin_updateTickerModeNotifier() /* 0x2d3f50 */; // 0x2d3dc8
  }
  w1 = mem((local_m8), 0x13); // 0x2d3dd0
  x0 = local_m8; // 0x2d3dcc
  x1 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x2d3dd4
  if (w1 != w22) {
    x1 = x0; // 0x2d3e74
  } else {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x2d3de8
    x0 = mem((mem(THR, 0x68)), 0x6e8); // 0x2d3de4
    if (w0 != w16) {
    } else {
      x2 = mem(PP, 0xbf8) /* Field */; // 0x2d3df4
      sub_0x61d99c(); // 0x2d3df8
    }
    x1 = mem((PP + 0xe000), 0xe98) /* TypeArguments */; // 0x2d3e00
    local_m18 = x0; // 0x2d3e04
    AllocationStub__Set() /* 0x2a5de4 */; // 0x2d3e08
    x0 = local_m18; // 0x2d3e10
    x1 = x0; // 0x2d3e0c
    local_m20 = x1; // 0x2d3e14
    memSet(x1, 0x1b, w0); // 0x2d3e18
    memSet(x1, 0xb, wzr); // 0x2d3e1c
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x2d3e28
    x0 = mem((mem(THR, 0x68)), 0x6f0); // 0x2d3e24
    if (w0 != w16) {
    } else {
      x2 = mem(PP, 0xc00) /* Field */; // 0x2d3e34
      sub_0x61d99c(); // 0x2d3e38
    }
    x0 = local_m20; // 0x2d3e40
    x1 = x0; // 0x2d3e3c
    memSet(x0, 0xf, w1); // 0x2d3e44
    memSet(x0, 0x13, wzr); // 0x2d3e48
    memSet(x0, 0x17, wzr); // 0x2d3e4c
    x1 = local_m8; // 0x2d3e50
    memSet(x1, 0x13, w0); // 0x2d3e54
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x2d3e60
    w16 = mem(x1, -1); // 0x2d3e58
    w17 = mem(x0, -1); // 0x2d3e5c
    x16 = (mem(x1, -1)) & 0xffffffff; // 0x2d3e58
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x2d3e5c
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x1() /* 0x61e04c */; // 0x2d3e6c
    }
  }
  x0 = local_m10; // 0x2d3e78
  AllocationStub__WidgetTicker() /* 0x2cf960 */; // 0x2d3e7c
  x2 = local_m8; // 0x2d3e84
  x3 = x0; // 0x2d3e80
  local_m18 = x3; // 0x2d3e88
  memSet(x3, 0x1b, w2); // 0x2d3e8c
  x0 = NULL + 0x30; // 0x2d3e90
  memSet(x3, 0xb, w0); // 0x2d3e94
  x0 = local_m10; // 0x2d3e98
  memSet(x3, 0x13, w0); // 0x2d3e9c
  w1 = mem(x2, 0x17); // 0x2d3ea0
  x1 = ((mem(x2, 0x17)) & 0xffffffff) + (HEAP << 32); // 0x2d3ea4
  if (w1 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2d3f04
  } else {
    LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0xfff) << 3)); // 0x2d3ebc
    x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x2d3eb4
    callIndirect(LR); // 0x2d3ec0
    x1 = local_m18; // 0x2d3ec8
    x2 = x0 ^ 0x10; // 0x2d3ec4
    Ticker_muted_assign() /* 0x2cf190 */; // 0x2d3ecc
    w1 = mem((local_m8), 0x13); // 0x2d3ed4
    x0 = local_m8; // 0x2d3ed0
    x1 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x2d3ed8
    if (w1 != w22) {
      x2 = local_m18; // 0x2d3ee4
      Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_add() /* 0x611d50 */; // 0x2d3ee8
      SP = FP; // 0x2d3ef0
      x0 = local_m18; // 0x2d3eec
      // frame: FP, LR, mem(SP), 0x10 // 0x2d3ef4
      return;
    }
  }
  NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2d3f08
}

// GameFruitLandState_SoulState_TickerProviderStateMixin_updateTickerModeNotifier
// raw disassembly:
//  0x2d3f50: stp FP, LR, [SP, #-0x10]!
//  0x2d3f54: mov FP, SP
//  0x2d3f58: sub SP, SP, #0x18
//  0x2d3f5c: mov x2, x1
//  0x2d3f60: stur x1, [FP, #-8]
//  0x2d3f64: ldr BARRIER, [THR, #0x38]
//  0x2d3f68: cmp SP, BARRIER
//  0x2d3f6c: b.ls #0x2d4060
//  0x2d3f70: ldur w1, [x2, #0xf]
//  0x2d3f74: add x1, x1, HEAP, lsl #32
//  0x2d3f78: cmp w1, w22
//  0x2d3f7c: b.eq #0x2d4068
//  0x2d3f80: bl #0x2cf6f0
//  0x2d3f84: mov x3, x0
//  0x2d3f88: ldur x0, [FP, #-8]
//  0x2d3f8c: stur x3, [FP, #-0x18]
//  0x2d3f90: ldur w4, [x0, #0x17]
//  0x2d3f94: add x4, x4, HEAP, lsl #32
//  0x2d3f98: stur x4, [FP, #-0x10]
//  0x2d3f9c: cmp w3, w4
//  0x2d3fa0: b.ne #0x2d3fb4
//  0x2d3fa4: mov x0, NULL
//  0x2d3fa8: mov SP, FP
//  0x2d3fac: ldp FP, LR, [SP], #0x10
//  0x2d3fb0: ret 
//  0x2d3fb4: cmp w4, w22
//  0x2d3fb8: b.eq #0x2d3ff8
//  0x2d3fbc: mov x2, x0
//  0x2d3fc0: add x1, PP, #0x15, lsl #12
//  0x2d3fc4: ldr x1, [x1, #0x388]
//  0x2d3fc8: bl #0x61ec54
//  0x2d3fcc: ldur x1, [FP, #-0x10]
//  0x2d3fd0: ldur x2, [x1, #-1]
//  0x2d3fd4: ubfx x2, x2, #0xc, #0x14
//  0x2d3fd8: mov BARRIER, x0
//  0x2d3fdc: mov x0, x2
//  0x2d3fe0: mov x2, BARRIER
//  0x2d3fe4: add LR, x0, #0xd6f
//  0x2d3fe8: ldr LR, [x21, LR, lsl #3]
//  0x2d3fec: blr LR
//  0x2d3ff0: ldur x0, [FP, #-8]
//  0x2d3ff4: ldur x3, [FP, #-0x18]
//  0x2d3ff8: mov x2, x0
//  0x2d3ffc: add x1, PP, #0x15, lsl #12
//  0x2d4000: ldr x1, [x1, #0x388]
//  0x2d4004: bl #0x61ec54
//  0x2d4008: ldur x3, [FP, #-0x18]
//  0x2d400c: ldur x1, [x3, #-1]
//  0x2d4010: ubfx x1, x1, #0xc, #0x14
//  0x2d4014: mov x2, x0
//  0x2d4018: mov x0, x1
//  0x2d401c: mov x1, x3
//  0x2d4020: add LR, x0, #0xdbb
//  0x2d4024: ldr LR, [x21, LR, lsl #3]
//  0x2d4028: blr LR
//  0x2d402c: ldur x0, [FP, #-0x18]
//  0x2d4030: ldur x1, [FP, #-8]
//  0x2d4034: stur w0, [x1, #0x17]
//  0x2d4038: ldurb w16, [x1, #-1]
//  0x2d403c: ldurb w17, [x0, #-1]
//  0x2d4040: and BARRIER, x17, BARRIER, lsr #2
//  0x2d4044: tst BARRIER, HEAP, lsr #32
//  0x2d4048: b.eq #0x2d4050
//  0x2d404c: bl #0x61e04c
//  0x2d4050: mov x0, NULL
//  0x2d4054: mov SP, FP
//  0x2d4058: ldp FP, LR, [SP], #0x10
//  0x2d405c: ret 
//  0x2d4060: bl #0x61fa28
//  0x2d4064: b #0x2d3f70
//  0x2d4068: bl #0x61ffd0
//
dynamic GameFruitLandState_SoulState_TickerProviderStateMixin_updateTickerModeNotifier() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x2d3f50
  // frame: FP = SP // 0x2d3f54
  // frame: SP = SP - 0x18 // 0x2d3f58
  x2 = x1; // 0x2d3f5c
  local_m8 = x1; // 0x2d3f60
  BARRIER = mem(THR, 0x38); // 0x2d3f64
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2d4060
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x2d3f74
  if (w1 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2d4068
  }
  TickerMode_getNotifier() /* 0x2cf6f0 */; // 0x2d3f80
  x0 = local_m8; // 0x2d3f88
  x3 = x0; // 0x2d3f84
  local_m18 = x3; // 0x2d3f8c
  w4 = mem(x0, 0x17); // 0x2d3f90
  x4 = ((mem(x0, 0x17)) & 0xffffffff) + (HEAP << 32); // 0x2d3f94
  local_m10 = x4; // 0x2d3f98
  if (w3 == w4) {
    SP = FP; // 0x2d3fa8
    x0 = NULL; // 0x2d3fa4
    // frame: FP, LR, mem(SP), 0x10 // 0x2d3fac
    return;
  }
  if (w4 == w22) {
  } else {
    x1 = mem((PP + 0x15000), 0x388) /* Function */; // 0x2d3fc4
    x2 = x0; // 0x2d3fbc
    AllocationStub__Closure() /* 0x61ec54 */; // 0x2d3fc8
    BARRIER = x0; // 0x2d3fd8
    x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x2d3fdc
    x1 = local_m10; // 0x2d3fcc
    x2 = x0; // 0x2d3fe0
    LR = mem(x21, ((x0 + 0xd6f) << 3)); // 0x2d3fe8
    callIndirect(LR); // 0x2d3fec
    x0 = local_m8; // 0x2d3ff0
    x3 = local_m18; // 0x2d3ff4
  }
  x1 = mem((PP + 0x15000), 0x388) /* Function */; // 0x2d4000
  x2 = x0; // 0x2d3ff8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x2d4004
  x0 = ((mem((local_m18), -1)) >> 12) & 0xfffff; // 0x2d4018
  x1 = local_m18; // 0x2d401c
  x2 = x0; // 0x2d4014
  x3 = local_m18; // 0x2d4008
  LR = mem(x21, ((x0 + 0xdbb) << 3)); // 0x2d4024
  callIndirect(LR); // 0x2d4028
  x0 = local_m18; // 0x2d402c
  x1 = local_m8; // 0x2d4030
  memSet(x1, 0x17, w0); // 0x2d4034
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x2d4040
  w16 = mem(x1, -1); // 0x2d4038
  w17 = mem(x0, -1); // 0x2d403c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x2d4038
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x2d403c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x2d404c
  }
  SP = FP; // 0x2d4054
  x0 = NULL; // 0x2d4050
  // frame: FP, LR, mem(SP), 0x10 // 0x2d4058
  return;
}

// GameFruitLandState_SoulState_TickerProviderStateMixin_updateTickers
// raw disassembly:
//  0x2d406c: stp FP, LR, [SP, #-0x10]!
//  0x2d4070: mov FP, SP
//  0x2d4074: ldr x0, [FP, #0x10]
//  0x2d4078: ldur w1, [x0, #0x17]
//  0x2d407c: add x1, x1, HEAP, lsl #32
//  0x2d4080: ldr BARRIER, [THR, #0x38]
//  0x2d4084: cmp SP, BARRIER
//  0x2d4088: b.ls #0x2d409c
//  0x2d408c: bl #0x2d40a4
//  0x2d4090: mov SP, FP
//  0x2d4094: ldp FP, LR, [SP], #0x10
//  0x2d4098: ret 
//  0x2d409c: bl #0x61fa28
//  0x2d40a0: b #0x2d408c
//
dynamic GameFruitLandState_SoulState_TickerProviderStateMixin_updateTickers() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x2d406c
  BARRIER = mem(THR, 0x38); // 0x2d4080
  // frame: FP = SP // 0x2d4070
  w1 = mem((local_10), 0x17); // 0x2d4078
  x0 = local_10; // 0x2d4074
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x2d407c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2d409c
  }
  GameFruitLandState_SoulState_TickerProviderStateMixin_updateTickers() /* 0x2d40a4 */; // 0x2d408c
  SP = FP; // 0x2d4090
  // frame: FP, LR, mem(SP), 0x10 // 0x2d4094
  return;
}

// GameFruitLandState_SoulState_TickerProviderStateMixin_updateTickers_2
// raw disassembly:
//  0x2d40a4: stp FP, LR, [SP, #-0x10]!
//  0x2d40a8: mov FP, SP
//  0x2d40ac: sub SP, SP, #0x20
//  0x2d40b0: mov x2, x1
//  0x2d40b4: stur x1, [FP, #-8]
//  0x2d40b8: ldr BARRIER, [THR, #0x38]
//  0x2d40bc: cmp SP, BARRIER
//  0x2d40c0: b.ls #0x2d41e8
//  0x2d40c4: ldur w0, [x2, #0x13]
//  0x2d40c8: add x0, x0, HEAP, lsl #32
//  0x2d40cc: cmp w0, w22
//  0x2d40d0: b.eq #0x2d41d8
//  0x2d40d4: ldur w1, [x2, #0x17]
//  0x2d40d8: add x1, x1, HEAP, lsl #32
//  0x2d40dc: cmp w1, w22
//  0x2d40e0: b.eq #0x2d41f0
//  0x2d40e4: ldur x0, [x1, #-1]
//  0x2d40e8: ubfx x0, x0, #0xc, #0x14
//  0x2d40ec: sub LR, x0, #0xfff
//  0x2d40f0: ldr LR, [x21, LR, lsl #3]
//  0x2d40f4: blr LR
//  0x2d40f8: eor x2, x0, #0x10
//  0x2d40fc: ldur x0, [FP, #-8]
//  0x2d4100: stur x2, [FP, #-0x10]
//  0x2d4104: ldur w1, [x0, #0x13]
//  0x2d4108: add x1, x1, HEAP, lsl #32
//  0x2d410c: cmp w1, w22
//  0x2d4110: b.eq #0x2d41f4
//  0x2d4114: bl #0x54bba4
//  0x2d4118: stur x0, [FP, #-0x18]
//  0x2d411c: ldur w2, [x0, #7]
//  0x2d4120: add x2, x2, HEAP, lsl #32
//  0x2d4124: stur x2, [FP, #-8]
//  0x2d4128: ldur x3, [FP, #-0x10]
//  0x2d412c: ldr BARRIER, [THR, #0x38]
//  0x2d4130: cmp SP, BARRIER
//  0x2d4134: b.ls #0x2d41f8
//  0x2d4138: mov x1, x0
//  0x2d413c: bl #0x594d70
//  0x2d4140: tbnz w0, #4, #0x2d41d8
//  0x2d4144: ldur x3, [FP, #-0x18]
//  0x2d4148: ldur w4, [x3, #0x33]
//  0x2d414c: add x4, x4, HEAP, lsl #32
//  0x2d4150: stur x4, [FP, #-0x20]
//  0x2d4154: cmp w4, w22
//  0x2d4158: b.ne #0x2d418c
//  0x2d415c: mov x0, x4
//  0x2d4160: ldur x2, [FP, #-8]
//  0x2d4164: mov x1, NULL
//  0x2d4168: cmp w2, w22
//  0x2d416c: b.eq #0x2d418c
//  0x2d4170: ldur w4, [x2, #0x17]
//  0x2d4174: add x4, x4, HEAP, lsl #32
//  0x2d4178: ldr x8, [PP, #0x180]
//  0x2d417c: ldur x9, [x4, #7]
//  0x2d4180: add x3, PP, #0x15, lsl #12
//  0x2d4184: ldr x3, [x3, #0x378]
//  0x2d4188: blr x9
//  0x2d418c: ldur x2, [FP, #-0x10]
//  0x2d4190: ldur x0, [FP, #-0x20]
//  0x2d4194: ldur w1, [x0, #0xb]
//  0x2d4198: add x1, x1, HEAP, lsl #32
//  0x2d419c: cmp w2, w1
//  0x2d41a0: b.eq #0x2d41cc
//  0x2d41a4: stur w2, [x0, #0xb]
//  0x2d41a8: tbnz w2, #4, #0x2d41b8
//  0x2d41ac: mov x1, x0
//  0x2d41b0: bl #0x2cf4e0
//  0x2d41b4: b #0x2d41cc
//  0x2d41b8: mov x1, x0
//  0x2d41bc: bl #0x2cf49c
//  0x2d41c0: tbnz w0, #4, #0x2d41cc
//  0x2d41c4: ldur x1, [FP, #-0x20]
//  0x2d41c8: bl #0x2cf210
//  0x2d41cc: ldur x0, [FP, #-0x18]
//  0x2d41d0: ldur x2, [FP, #-8]
//  0x2d41d4: b #0x2d4128
//  0x2d41d8: mov x0, NULL
//  0x2d41dc: mov SP, FP
//  0x2d41e0: ldp FP, LR, [SP], #0x10
//  0x2d41e4: ret 
//  0x2d41e8: bl #0x61fa28
//  0x2d41ec: b #0x2d40c4
//  0x2d41f0: bl #0x61ffd0
//  0x2d41f4: bl #0x61ffd0
//  0x2d41f8: bl #0x61fa28
//  0x2d41fc: b #0x2d4138
//
// NOTE: control flow was not fully structured (goto kept) -- pseudocode only.
dynamic GameFruitLandState_SoulState_TickerProviderStateMixin_updateTickers_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x2d40a4
  // frame: FP = SP // 0x2d40a8
  // frame: SP = SP - 0x20 // 0x2d40ac
  x2 = x1; // 0x2d40b0
  local_m8 = x1; // 0x2d40b4
  BARRIER = mem(THR, 0x38); // 0x2d40b8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2d41e8
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x2d40c8
  if (w0 == w22) {
  } else {
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x2d40d8
    if (w1 == w22) {
      NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2d41f0
    } else {
      LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0xfff) << 3)); // 0x2d40f0
      x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x2d40e8
      callIndirect(LR); // 0x2d40f4
      x0 = local_m8; // 0x2d40fc
      x2 = x0 ^ 0x10; // 0x2d40f8
      local_m10 = x2; // 0x2d4100
      w1 = mem(x0, 0x13); // 0x2d4104
      x1 = ((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x2d4108
      if (w1 == w22) {
        NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2d41f4
      } else {
        Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_get_iterator() /* 0x54bba4 */; // 0x2d4114
        local_m18 = x0; // 0x2d4118
        w2 = mem(x0, 7); // 0x2d411c
        x2 = ((mem(x0, 7)) & 0xffffffff) + (HEAP << 32); // 0x2d4120
        local_m8 = x2; // 0x2d4124
        BARRIER = mem(THR, 0x38); // 0x2d412c
        x3 = local_m10; // 0x2d4128
        if (SP <= BARRIER) {
          StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2d41f8
        }
        x1 = x0; // 0x2d4138
        CompactIterator_moveNext() /* 0x594d70 */; // 0x2d413c
        if (x0 & (1 << 4) != 0) {
        } else {
          w4 = mem((local_m18), 0x33); // 0x2d4148
          x3 = local_m18; // 0x2d4144
          x4 = ((mem((local_m18), 0x33)) & 0xffffffff) + (HEAP << 32); // 0x2d414c
          local_m20 = x4; // 0x2d4150
          if (w4 != w22) {
          } else {
            x0 = x4; // 0x2d415c
            x1 = NULL; // 0x2d4164
            x2 = local_m8; // 0x2d4160
            if (w2 == w22) {
            } else {
              x3 = mem((PP + 0x15000), 0x378) /* Obj!? */; // 0x2d4184
              x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x2d4174
              x8 = mem(PP, 0x180) /* TypeParameter */; // 0x2d4178
              x9 = mem(((w4 & 0xffffffff) + (HEAP << 32)), 7); // 0x2d417c
              callIndirect(x9); // 0x2d4188
            }
          }
          w1 = mem((local_m20), 0xb); // 0x2d4194
          x0 = local_m20; // 0x2d4190
          x1 = ((mem((local_m20), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x2d4198
          x2 = local_m10; // 0x2d418c
          if (w2 == w1) {
          } else {
            memSet(x0, 0xb, w2); // 0x2d41a4
            if (x2 & (1 << 4) != 0) {
              x1 = x0; // 0x2d41b8
              Ticker_get_shouldScheduleTick() /* 0x2cf49c */; // 0x2d41bc
              if (x0 & (1 << 4) != 0) {
              } else {
                x1 = local_m20; // 0x2d41c4
                Ticker_scheduleTick() /* 0x2cf210 */; // 0x2d41c8
              }
            } else {
              x1 = x0; // 0x2d41ac
              Ticker_unscheduleTick() /* 0x2cf4e0 */; // 0x2d41b0
            }
          }
          x0 = local_m18; // 0x2d41cc
          x2 = local_m8; // 0x2d41d0
          gotoLabel(0x2d4128);
        }
        SP = FP; // 0x2d41dc
        x0 = NULL; // 0x2d41d8
        // frame: FP, LR, mem(SP), 0x10 // 0x2d41e0
        return;
      }
    }
  }
}

// GameFruitLandState_SoulState_TickerProviderStateMixin_activate
// raw disassembly:
//  0x3e80f8: stp FP, LR, [SP, #-0x10]!
//  0x3e80fc: mov FP, SP
//  0x3e8100: sub SP, SP, #8
//  0x3e8104: mov x0, x1
//  0x3e8108: stur x1, [FP, #-8]
//  0x3e810c: ldr BARRIER, [THR, #0x38]
//  0x3e8110: cmp SP, BARRIER
//  0x3e8114: b.ls #0x3e8138
//  0x3e8118: mov x1, x0
//  0x3e811c: bl #0x2d3f50
//  0x3e8120: ldur x1, [FP, #-8]
//  0x3e8124: bl #0x2d40a4
//  0x3e8128: mov x0, NULL
//  0x3e812c: mov SP, FP
//  0x3e8130: ldp FP, LR, [SP], #0x10
//  0x3e8134: ret 
//  0x3e8138: bl #0x61fa28
//  0x3e813c: b #0x3e8118
//
dynamic GameFruitLandState_SoulState_TickerProviderStateMixin_activate() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3e80f8
  // frame: FP = SP // 0x3e80fc
  // frame: SP = SP - 8 // 0x3e8100
  x0 = x1; // 0x3e8104
  local_m8 = x1; // 0x3e8108
  BARRIER = mem(THR, 0x38); // 0x3e810c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3e8138
  }
  x1 = x0; // 0x3e8118
  GameFruitLandState_SoulState_TickerProviderStateMixin_updateTickerModeNotifier() /* 0x2d3f50 */; // 0x3e811c
  x1 = local_m8; // 0x3e8120
  GameFruitLandState_SoulState_TickerProviderStateMixin_updateTickers() /* 0x2d40a4 */; // 0x3e8124
  SP = FP; // 0x3e812c
  x0 = NULL; // 0x3e8128
  // frame: FP, LR, mem(SP), 0x10 // 0x3e8130
  return;
}

// GameFruitLandState_SoulState_TickerProviderStateMixin_dispose
// raw disassembly:
//  0x450c70: stp FP, LR, [SP, #-0x10]!
//  0x450c74: mov FP, SP
//  0x450c78: sub SP, SP, #0x10
//  0x450c7c: mov x0, x1
//  0x450c80: stur x1, [FP, #-0x10]
//  0x450c84: ldr BARRIER, [THR, #0x38]
//  0x450c88: cmp SP, BARRIER
//  0x450c8c: b.ls #0x450cfc
//  0x450c90: ldur w3, [x0, #0x17]
//  0x450c94: add x3, x3, HEAP, lsl #32
//  0x450c98: stur x3, [FP, #-8]
//  0x450c9c: cmp w3, w22
//  0x450ca0: b.ne #0x450cac
//  0x450ca4: mov x1, x0
//  0x450ca8: b #0x450ce4
//  0x450cac: mov x2, x0
//  0x450cb0: add x1, PP, #0x15, lsl #12
//  0x450cb4: ldr x1, [x1, #0x388]
//  0x450cb8: bl #0x61ec54
//  0x450cbc: ldur x1, [FP, #-8]
//  0x450cc0: ldur x2, [x1, #-1]
//  0x450cc4: ubfx x2, x2, #0xc, #0x14
//  0x450cc8: mov BARRIER, x0
//  0x450ccc: mov x0, x2
//  0x450cd0: mov x2, BARRIER
//  0x450cd4: add LR, x0, #0xd6f
//  0x450cd8: ldr LR, [x21, LR, lsl #3]
//  0x450cdc: blr LR
//  0x450ce0: ldur x1, [FP, #-0x10]
//  0x450ce4: stur w22, [x1, #0x17]
//  0x450ce8: bl #0x451970
//  0x450cec: mov x0, NULL
//  0x450cf0: mov SP, FP
//  0x450cf4: ldp FP, LR, [SP], #0x10
//  0x450cf8: ret 
//  0x450cfc: bl #0x61fa28
//  0x450d00: b #0x450c90
//
dynamic GameFruitLandState_SoulState_TickerProviderStateMixin_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x450c70
  // frame: FP = SP // 0x450c74
  // frame: SP = SP - 0x10 // 0x450c78
  x0 = x1; // 0x450c7c
  local_m10 = x1; // 0x450c80
  BARRIER = mem(THR, 0x38); // 0x450c84
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x450cfc
  }
  x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x450c94
  local_m8 = x3; // 0x450c98
  if (w3 != w22) {
    x1 = mem((PP + 0x15000), 0x388) /* Function */; // 0x450cb4
    x2 = x0; // 0x450cac
    AllocationStub__Closure() /* 0x61ec54 */; // 0x450cb8
    BARRIER = x0; // 0x450cc8
    x0 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x450ccc
    x1 = local_m8; // 0x450cbc
    x2 = x0; // 0x450cd0
    LR = mem(x21, ((x0 + 0xd6f) << 3)); // 0x450cd8
    callIndirect(LR); // 0x450cdc
    x1 = local_m10; // 0x450ce0
  } else {
    x1 = x0; // 0x450ca4
  }
  memSet(x1, 0x17, w22); // 0x450ce4
  SoulState_dispose() /* 0x451970 */; // 0x450ce8
  SP = FP; // 0x450cf0
  x0 = NULL; // 0x450cec
  // frame: FP, LR, mem(SP), 0x10 // 0x450cf4
  return;
}

// GameFruitLandState_get_notifier
// raw disassembly:
//  0x417f08: ldur w2, [x1, #0xb]
//  0x417f0c: add x2, x2, HEAP, lsl #32
//  0x417f10: cmp w2, w22
//  0x417f14: b.eq #0x417f24
//  0x417f18: ldur w0, [x2, #0xb]
//  0x417f1c: add x0, x0, HEAP, lsl #32
//  0x417f20: ret 
//  0x417f24: stp FP, LR, [SP, #-0x10]!
//  0x417f28: mov FP, SP
//  0x417f2c: bl #0x61ffd0
//
dynamic GameFruitLandState_get_notifier() {
  dynamic w0;
  dynamic w2;
  dynamic x0;
  dynamic x2;
  w2 = mem(x1, 0xb); // 0x417f08
  x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x417f0c
  if (w2 == w22) {
    // frame: FP, LR, mem(SP, -0x10)! // 0x417f24
    // frame: FP = SP // 0x417f28
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x417f2c
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x417f1c
  return x0;
}

// GameFruitLandState_build
// raw disassembly:
//  0x41ca3c: stp FP, LR, [SP, #-0x10]!
//  0x41ca40: mov FP, SP
//  0x41ca44: sub SP, SP, #0x48
//  0x41ca48: mov x3, x2
//  0x41ca4c: stur x1, [FP, #-8]
//  0x41ca50: stur x2, [FP, #-0x10]
//  0x41ca54: ldr BARRIER, [THR, #0x38]
//  0x41ca58: cmp SP, BARRIER
//  0x41ca5c: b.ls #0x41cd30
//  0x41ca60: mov x1, #1
//  0x41ca64: bl #0x61e890
//  0x41ca68: ldur x1, [FP, #-8]
//  0x41ca6c: stur x0, [FP, #-0x20]
//  0x41ca70: stur w1, [x0, #0xf]
//  0x41ca74: ldur w2, [x1, #0xb]
//  0x41ca78: add x2, x2, HEAP, lsl #32
//  0x41ca7c: cmp w2, w22
//  0x41ca80: b.eq #0x41cd38
//  0x41ca84: ldur w3, [x2, #0xb]
//  0x41ca88: add x3, x3, HEAP, lsl #32
//  0x41ca8c: ldur w2, [x3, #0x2b]
//  0x41ca90: add x2, x2, HEAP, lsl #32
//  0x41ca94: stur x2, [FP, #-0x18]
//  0x41ca98: bl #0x41ee8c
//  0x41ca9c: mov x1, x0
//  0x41caa0: mov x0, #3
//  0x41caa4: stur x1, [FP, #-0x28]
//  0x41caa8: stur x0, [x1, #7]
//  0x41caac: fmov d0, #8.00000000
//  0x41cab0: stur d0, [x1, #0xf]
//  0x41cab4: stur xzr, [x1, #0x17]
//  0x41cab8: fmov d0, #1.00000000
//  0x41cabc: stur d0, [x1, #0x1f]
//  0x41cac0: add x0, PP, #0x15, lsl #12
//  0x41cac4: ldr x0, [x0, #0x178]
//  0x41cac8: stur w0, [x1, #0x27]
//  0x41cacc: bl #0x419950
//  0x41cad0: ldur x2, [FP, #-0x20]
//  0x41cad4: add x1, PP, #0x15, lsl #12
//  0x41cad8: ldr x1, [x1, #0x180]
//  0x41cadc: stur x0, [FP, #-0x30]
//  0x41cae0: bl #0x61ec54
//  0x41cae4: stur x0, [FP, #-0x38]
//  0x41cae8: bl #0x41ee80
//  0x41caec: stur x0, [FP, #-0x40]
//  0x41caf0: add BARRIER, NULL, #0x20
//  0x41caf4: str BARRIER, [SP]
//  0x41caf8: mov x1, x0
//  0x41cafc: ldur x2, [FP, #-0x28]
//  0x41cb00: ldur x3, [FP, #-0x38]
//  0x41cb04: ldur x6, [FP, #-0x30]
//  0x41cb08: mov x5, #9
//  0x41cb0c: add x4, PP, #0x10, lsl #12
//  0x41cb10: ldr x4, [x4, #0x928]
//  0x41cb14: bl #0x41ec7c
//  0x41cb18: add x1, PP, #0xf, lsl #12
//  0x41cb1c: ldr x1, [x1, #0x218]
//  0x41cb20: bl #0x396454
//  0x41cb24: stur x0, [FP, #-0x28]
//  0x41cb28: add BARRIER, NULL, #0x20
//  0x41cb2c: str BARRIER, [SP]
//  0x41cb30: mov x1, x0
//  0x41cb34: ldur x2, [FP, #-0x40]
//  0x41cb38: ldur x3, [FP, #-0x10]
//  0x41cb3c: add x4, PP, #0x10, lsl #12
//  0x41cb40: ldr x4, [x4, #0x938]
//  0x41cb44: bl #0x39ecf8
//  0x41cb48: bl #0x391c0c
//  0x41cb4c: mov x2, x0
//  0x41cb50: add x0, PP, #0x15, lsl #12
//  0x41cb54: ldr x0, [x0, #0x188]
//  0x41cb58: stur x2, [FP, #-0x10]
//  0x41cb5c: stur w0, [x2, #0xf]
//  0x41cb60: ldur x0, [FP, #-0x28]
//  0x41cb64: stur w0, [x2, #0xb]
//  0x41cb68: ldur x1, [FP, #-8]
//  0x41cb6c: bl #0x41cd3c
//  0x41cb70: stur x0, [FP, #-8]
//  0x41cb74: bl #0x3a1414
//  0x41cb78: mov x1, x0
//  0x41cb7c: ldr x0, [PP, #0x5140]
//  0x41cb80: stur x1, [FP, #-0x28]
//  0x41cb84: stur w0, [x1, #0xf]
//  0x41cb88: add x0, PP, #0x11, lsl #12
//  0x41cb8c: ldr x0, [x0, #0xa90]
//  0x41cb90: stur w0, [x1, #0x13]
//  0x41cb94: add x0, PP, #0xe, lsl #12
//  0x41cb98: ldr x0, [x0, #0xae8]
//  0x41cb9c: stur w0, [x1, #0x17]
//  0x41cba0: add x2, PP, #0xe, lsl #12
//  0x41cba4: ldr x2, [x2, #0xb60]
//  0x41cba8: stur w2, [x1, #0x1b]
//  0x41cbac: add x3, PP, #0xe, lsl #12
//  0x41cbb0: ldr x3, [x3, #0xaf8]
//  0x41cbb4: stur w3, [x1, #0x23]
//  0x41cbb8: add x4, PP, #0xa, lsl #12
//  0x41cbbc: ldr x4, [x4, #0xa8]
//  0x41cbc0: stur w4, [x1, #0x2b]
//  0x41cbc4: stur xzr, [x1, #0x2f]
//  0x41cbc8: ldur x5, [FP, #-8]
//  0x41cbcc: stur w5, [x1, #0xb]
//  0x41cbd0: bl #0x396460
//  0x41cbd4: mov x2, x0
//  0x41cbd8: add x0, PP, #0x10, lsl #12
//  0x41cbdc: ldr x0, [x0, #0xc70]
//  0x41cbe0: stur x2, [FP, #-8]
//  0x41cbe4: stur w0, [x2, #0xf]
//  0x41cbe8: ldur x0, [FP, #-0x28]
//  0x41cbec: stur w0, [x2, #0xb]
//  0x41cbf0: add x1, PP, #0xe, lsl #12
//  0x41cbf4: ldr x1, [x1, #0xad0]
//  0x41cbf8: bl #0x39fb14
//  0x41cbfc: mov x3, x0
//  0x41cc00: mov x0, #1
//  0x41cc04: stur x3, [FP, #-0x28]
//  0x41cc08: stur x0, [x3, #0x13]
//  0x41cc0c: add x0, PP, #0xe, lsl #12
//  0x41cc10: ldr x0, [x0, #0xad8]
//  0x41cc14: stur w0, [x3, #0x1b]
//  0x41cc18: ldur x0, [FP, #-8]
//  0x41cc1c: stur w0, [x3, #0xb]
//  0x41cc20: mov x1, NULL
//  0x41cc24: mov x2, #4
//  0x41cc28: bl #0x61f920
//  0x41cc2c: mov x2, x0
//  0x41cc30: ldur x0, [FP, #-0x10]
//  0x41cc34: stur x2, [FP, #-8]
//  0x41cc38: stur w0, [x2, #0xf]
//  0x41cc3c: ldur x0, [FP, #-0x28]
//  0x41cc40: stur w0, [x2, #0x13]
//  0x41cc44: ldr x1, [PP, #0x5c58]
//  0x41cc48: bl #0x61e854
//  0x41cc4c: mov x1, x0
//  0x41cc50: ldur x0, [FP, #-8]
//  0x41cc54: stur x1, [FP, #-0x10]
//  0x41cc58: stur w0, [x1, #0xf]
//  0x41cc5c: mov x0, #4
//  0x41cc60: stur w0, [x1, #0xb]
//  0x41cc64: bl #0x39310c
//  0x41cc68: mov x1, x0
//  0x41cc6c: add x0, PP, #0xa, lsl #12
//  0x41cc70: ldr x0, [x0, #0x858]
//  0x41cc74: stur x1, [FP, #-8]
//  0x41cc78: stur w0, [x1, #0xf]
//  0x41cc7c: add x0, PP, #0xe, lsl #12
//  0x41cc80: ldr x0, [x0, #0xae0]
//  0x41cc84: stur w0, [x1, #0x13]
//  0x41cc88: add x0, PP, #0xe, lsl #12
//  0x41cc8c: ldr x0, [x0, #0xae8]
//  0x41cc90: stur w0, [x1, #0x17]
//  0x41cc94: add x0, PP, #0xe, lsl #12
//  0x41cc98: ldr x0, [x0, #0xb60]
//  0x41cc9c: stur w0, [x1, #0x1b]
//  0x41cca0: add x0, PP, #0xe, lsl #12
//  0x41cca4: ldr x0, [x0, #0xaf8]
//  0x41cca8: stur w0, [x1, #0x23]
//  0x41ccac: add x0, PP, #0xa, lsl #12
//  0x41ccb0: ldr x0, [x0, #0xa8]
//  0x41ccb4: stur w0, [x1, #0x2b]
//  0x41ccb8: stur xzr, [x1, #0x2f]
//  0x41ccbc: ldur x0, [FP, #-0x10]
//  0x41ccc0: stur w0, [x1, #0xb]
//  0x41ccc4: bl #0x3949ec
//  0x41ccc8: mov x1, x0
//  0x41cccc: ldr x0, [PP, #0x5458]
//  0x41ccd0: stur x1, [FP, #-0x10]
//  0x41ccd4: stur w0, [x1, #0xf]
//  0x41ccd8: add x0, PP, #0x15, lsl #12
//  0x41ccdc: ldr x0, [x0, #0x190]
//  0x41cce0: stur w0, [x1, #0x13]
//  0x41cce4: ldur x0, [FP, #-8]
//  0x41cce8: stur w0, [x1, #0xb]
//  0x41ccec: ldur x0, [FP, #-0x18]
//  0x41ccf0: stur w0, [x1, #7]
//  0x41ccf4: bl #0x41839c
//  0x41ccf8: mov x3, x0
//  0x41ccfc: ldur x0, [FP, #-0x10]
//  0x41cd00: stur x3, [FP, #-8]
//  0x41cd04: stur w0, [x3, #0xb]
//  0x41cd08: ldur x2, [FP, #-0x20]
//  0x41cd0c: add x1, PP, #0x15, lsl #12
//  0x41cd10: ldr x1, [x1, #0x198]
//  0x41cd14: bl #0x61ec54
//  0x41cd18: mov x1, x0
//  0x41cd1c: ldur x0, [FP, #-8]
//  0x41cd20: stur w1, [x0, #0xf]
//  0x41cd24: mov SP, FP
//  0x41cd28: ldp FP, LR, [SP], #0x10
//  0x41cd2c: ret 
//  0x41cd30: bl #0x61fa28
//  0x41cd34: b #0x41ca60
//  0x41cd38: bl #0x61ffd0
//
dynamic GameFruitLandState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41ca3c
  // frame: FP = SP // 0x41ca40
  // frame: SP = SP - 0x48 // 0x41ca44
  x3 = x2; // 0x41ca48
  local_m8 = x1; // 0x41ca4c
  local_m10 = x2; // 0x41ca50
  BARRIER = mem(THR, 0x38); // 0x41ca54
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41cd30
  }
  x1 = 1; // 0x41ca60
  sub_0x61e890(); // 0x41ca64
  x1 = local_m8; // 0x41ca68
  local_m20 = x0; // 0x41ca6c
  memSet(x0, 0xf, w1); // 0x41ca70
  w2 = mem(x1, 0xb); // 0x41ca74
  x2 = ((mem(x1, 0xb)) & 0xffffffff) + (HEAP << 32); // 0x41ca78
  if (w2 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x41cd38
  }
  w2 = mem(((w3 & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x41ca8c
  x2 = ((mem(((w3 & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x41ca90
  x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x41ca88
  local_m18 = x2; // 0x41ca94
  AllocationStub_SliverGridDelegateWithFixedCrossAxisCount() /* 0x41ee8c */; // 0x41ca98
  x0 = 3; // 0x41caa0
  x1 = x0; // 0x41ca9c
  local_m28 = x1; // 0x41caa4
  memSet(x1, 7, x0); // 0x41caa8
  d0 = 8.00000000 /* bits */; // 0x41caac
  memSet(x1, 0xf, d0); // 0x41cab0
  memSet(x1, 0x17, xzr); // 0x41cab4
  d0 = 1.00000000 /* bits */; // 0x41cab8
  memSet(x1, 0x1f, d0); // 0x41cabc
  x0 = mem((PP + 0x15000), 0x178) /* Double */; // 0x41cac4
  memSet(x1, 0x27, w0); // 0x41cac8
  AllocationStub_NeverScrollableScrollPhysics() /* 0x419950 */; // 0x41cacc
  x1 = mem((PP + 0x15000), 0x180) /* Function */; // 0x41cad8
  x2 = local_m20; // 0x41cad0
  local_m30 = x0; // 0x41cadc
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41cae0
  local_m38 = x0; // 0x41cae4
  AllocationStub_GridView() /* 0x41ee80 */; // 0x41cae8
  local_m40 = x0; // 0x41caec
  BARRIER = NULL + 0x20; // 0x41caf0
  local_0 = BARRIER; // 0x41caf4
  x1 = x0; // 0x41caf8
  x2 = local_m28; // 0x41cafc
  x3 = local_m38; // 0x41cb00
  x4 = mem((PP + 0x10000), 0x928) /* ImmutableArray */; // 0x41cb10
  x5 = 9; // 0x41cb08
  x6 = local_m30; // 0x41cb04
  GridView_ctor_builder() /* 0x41ec7c */; // 0x41cb14
  x1 = mem((PP + 0xf000), 0x218) /* TypeArguments */; // 0x41cb1c
  AllocationStub_MediaQuery() /* 0x396454 */; // 0x41cb20
  local_m28 = x0; // 0x41cb24
  BARRIER = NULL + 0x20; // 0x41cb28
  local_0 = BARRIER; // 0x41cb2c
  x1 = x0; // 0x41cb30
  x2 = local_m40; // 0x41cb34
  x3 = local_m10; // 0x41cb38
  x4 = mem((PP + 0x10000), 0x938) /* ImmutableArray */; // 0x41cb40
  MediaQuery_ctor_removePadding() /* 0x39ecf8 */; // 0x41cb44
  AllocationStub_Padding() /* 0x391c0c */; // 0x41cb48
  x0 = mem((PP + 0x15000), 0x188) /* Obj!EdgeInsets@11ba1  */; // 0x41cb54
  x2 = x0; // 0x41cb4c
  local_m10 = x2; // 0x41cb58
  memSet(x2, 0xf, w0); // 0x41cb5c
  x0 = local_m28; // 0x41cb60
  memSet(x2, 0xb, w0); // 0x41cb64
  x1 = local_m8; // 0x41cb68
  GameFruitLandState_buildBetCoinWidgetList() /* 0x41cd3c */; // 0x41cb6c
  local_m8 = x0; // 0x41cb70
  AllocationStub_Row() /* 0x3a1414 */; // 0x41cb74
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x41cb7c
  x1 = x0; // 0x41cb78
  local_m28 = x1; // 0x41cb80
  memSet(x1, 0xf, w0); // 0x41cb84
  x0 = mem((PP + 0x11000), 0xa90) /* Obj!MainAxisAlignment@1226d  */; // 0x41cb8c
  memSet(x1, 0x13, w0); // 0x41cb90
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x41cb98
  memSet(x1, 0x17, w0); // 0x41cb9c
  x2 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x41cba4
  memSet(x1, 0x1b, w2); // 0x41cba8
  x3 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x41cbb0
  memSet(x1, 0x23, w3); // 0x41cbb4
  x4 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x41cbbc
  memSet(x1, 0x2b, w4); // 0x41cbc0
  memSet(x1, 0x2f, xzr); // 0x41cbc4
  x5 = local_m8; // 0x41cbc8
  memSet(x1, 0xb, w5); // 0x41cbcc
  AllocationStub_Align() /* 0x396460 */; // 0x41cbd0
  x0 = mem((PP + 0x10000), 0xc70) /* Obj!Alignment@11bdc  */; // 0x41cbdc
  x2 = x0; // 0x41cbd4
  local_m8 = x2; // 0x41cbe0
  memSet(x2, 0xf, w0); // 0x41cbe4
  x0 = local_m28; // 0x41cbe8
  memSet(x2, 0xb, w0); // 0x41cbec
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x41cbf4
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x41cbf8
  x0 = 1; // 0x41cc00
  x3 = x0; // 0x41cbfc
  local_m28 = x3; // 0x41cc04
  memSet(x3, 0x13, x0); // 0x41cc08
  x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x41cc10
  memSet(x3, 0x1b, w0); // 0x41cc14
  x0 = local_m8; // 0x41cc18
  memSet(x3, 0xb, w0); // 0x41cc1c
  x1 = NULL; // 0x41cc20
  x2 = 4; // 0x41cc24
  sub_0x61f920(); // 0x41cc28
  x0 = local_m10; // 0x41cc30
  x2 = x0; // 0x41cc2c
  local_m8 = x2; // 0x41cc34
  memSet(x2, 0xf, w0); // 0x41cc38
  x0 = local_m28; // 0x41cc3c
  memSet(x2, 0x13, w0); // 0x41cc40
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x41cc44
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x41cc48
  x0 = local_m8; // 0x41cc50
  x1 = x0; // 0x41cc4c
  local_m10 = x1; // 0x41cc54
  memSet(x1, 0xf, w0); // 0x41cc58
  x0 = 4; // 0x41cc5c
  memSet(x1, 0xb, w0); // 0x41cc60
  AllocationStub_Column() /* 0x39310c */; // 0x41cc64
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x41cc70
  x1 = x0; // 0x41cc68
  local_m8 = x1; // 0x41cc74
  memSet(x1, 0xf, w0); // 0x41cc78
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x41cc80
  memSet(x1, 0x13, w0); // 0x41cc84
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x41cc8c
  memSet(x1, 0x17, w0); // 0x41cc90
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x41cc98
  memSet(x1, 0x1b, w0); // 0x41cc9c
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x41cca4
  memSet(x1, 0x23, w0); // 0x41cca8
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x41ccb0
  memSet(x1, 0x2b, w0); // 0x41ccb4
  memSet(x1, 0x2f, xzr); // 0x41ccb8
  x0 = local_m10; // 0x41ccbc
  memSet(x1, 0xb, w0); // 0x41ccc0
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x41ccc4
  x0 = mem(PP, 0x5458) /* Double */; // 0x41cccc
  x1 = x0; // 0x41ccc8
  local_m10 = x1; // 0x41ccd0
  memSet(x1, 0xf, w0); // 0x41ccd4
  x0 = mem((PP + 0x15000), 0x190) /* Double */; // 0x41ccdc
  memSet(x1, 0x13, w0); // 0x41cce0
  x0 = local_m8; // 0x41cce4
  memSet(x1, 0xb, w0); // 0x41cce8
  x0 = local_m18; // 0x41ccec
  memSet(x1, 7, w0); // 0x41ccf0
  AllocationStub_WillPopScope() /* 0x41839c */; // 0x41ccf4
  x0 = local_m10; // 0x41ccfc
  x3 = x0; // 0x41ccf8
  local_m8 = x3; // 0x41cd00
  memSet(x3, 0xb, w0); // 0x41cd04
  x1 = mem((PP + 0x15000), 0x198) /* Function */; // 0x41cd10
  x2 = local_m20; // 0x41cd08
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41cd14
  x0 = local_m8; // 0x41cd1c
  x1 = x0; // 0x41cd18
  memSet(x0, 0xf, w1); // 0x41cd20
  SP = FP; // 0x41cd24
  // frame: FP, LR, mem(SP), 0x10 // 0x41cd28
  return;
}

// GameFruitLandState_buildBetCoinWidgetList
// raw disassembly:
//  0x41cd3c: stp FP, LR, [SP, #-0x10]!
//  0x41cd40: mov FP, SP
//  0x41cd44: sub SP, SP, #0x28
//  0x41cd48: stur x1, [FP, #-8]
//  0x41cd4c: ldr BARRIER, [THR, #0x38]
//  0x41cd50: cmp SP, BARRIER
//  0x41cd54: b.ls #0x41ce0c
//  0x41cd58: mov x1, #1
//  0x41cd5c: bl #0x61e890
//  0x41cd60: mov x3, x0
//  0x41cd64: ldur x0, [FP, #-8]
//  0x41cd68: stur x3, [FP, #-0x10]
//  0x41cd6c: stur w0, [x3, #0xf]
//  0x41cd70: ldr x1, [PP, #0x868]
//  0x41cd74: mov x2, #6
//  0x41cd78: bl #0x61f920
//  0x41cd7c: mov x1, #0
//  0x41cd80: ldr BARRIER, [THR, #0x38]
//  0x41cd84: cmp SP, BARRIER
//  0x41cd88: b.ls #0x41ce14
//  0x41cd8c: cmp x1, #3
//  0x41cd90: b.ge #0x41cdb0
//  0x41cd94: add x2, x0, x1, lsl #2
//  0x41cd98: add BARRIER, PP, #0xb, lsl #12
//  0x41cd9c: ldr BARRIER, [BARRIER, #0x990]
//  0x41cda0: stur w16, [x2, #0xf]
//  0x41cda4: add x2, x1, #1
//  0x41cda8: mov x1, x2
//  0x41cdac: b #0x41cd80
//  0x41cdb0: mov x1, x0
//  0x41cdb4: bl #0x41ce1c
//  0x41cdb8: mov x1, x0
//  0x41cdbc: bl #0x58e6e8
//  0x41cdc0: ldur x2, [FP, #-0x10]
//  0x41cdc4: add x1, PP, #0x15, lsl #12
//  0x41cdc8: ldr x1, [x1, #0x228]
//  0x41cdcc: stur x0, [FP, #-8]
//  0x41cdd0: bl #0x61ec54
//  0x41cdd4: add BARRIER, PP, #0x15, lsl #12
//  0x41cdd8: ldr BARRIER, [BARRIER, #0x230]
//  0x41cddc: ldur LR, [FP, #-8]
//  0x41cde0: stp LR, BARRIER, [SP, #8]
//  0x41cde4: str x0, [SP]
//  0x41cde8: ldr x4, [PP, #0x58]
//  0x41cdec: bl #0x34c5b8
//  0x41cdf0: ldur w1, [x0, #7]
//  0x41cdf4: add x1, x1, HEAP, lsl #32
//  0x41cdf8: mov x2, x0
//  0x41cdfc: bl #0x276db0
//  0x41ce00: mov SP, FP
//  0x41ce04: ldp FP, LR, [SP], #0x10
//  0x41ce08: ret 
//  0x41ce0c: bl #0x61fa28
//  0x41ce10: b #0x41cd58
//  0x41ce14: bl #0x61fa28
//  0x41ce18: b #0x41cd8c
//
dynamic GameFruitLandState_buildBetCoinWidgetList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41cd3c
  // frame: FP = SP // 0x41cd40
  // frame: SP = SP - 0x28 // 0x41cd44
  local_m8 = x1; // 0x41cd48
  BARRIER = mem(THR, 0x38); // 0x41cd4c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41ce0c
  }
  x1 = 1; // 0x41cd58
  sub_0x61e890(); // 0x41cd5c
  x0 = local_m8; // 0x41cd64
  x3 = x0; // 0x41cd60
  local_m10 = x3; // 0x41cd68
  memSet(x3, 0xf, w0); // 0x41cd6c
  x1 = mem(PP, 0x868) /* TypeArguments */; // 0x41cd70
  x2 = 6; // 0x41cd74
  sub_0x61f920(); // 0x41cd78
  x1 = 0; // 0x41cd7c
  while (true) {
    BARRIER = mem(THR, 0x38); // 0x41cd80
    if (SP <= BARRIER) {
      StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41ce14
    }
    if (x1 >= 3) {
      break;
    }
    BARRIER = "coin" /* pp+0xb990 */; // 0x41cd9c
    x2 = x0 + (x1 << 2); // 0x41cd94
    memSet(x2, 0xf, w16); // 0x41cda0
    x1 = x1 + 1; // 0x41cda8
    x2 = x1 + 1; // 0x41cda4
  }
  x1 = x0; // 0x41cdb0
  ListBase_asMap() /* 0x41ce1c */; // 0x41cdb4
  x1 = x0; // 0x41cdb8
  ListMapView_get_keys() /* 0x58e6e8 */; // 0x41cdbc
  x1 = mem((PP + 0x15000), 0x228) /* Function */; // 0x41cdc8
  x2 = local_m10; // 0x41cdc0
  local_m8 = x0; // 0x41cdcc
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41cdd0
  BARRIER = mem((PP + 0x15000), 0x230) /* TypeArguments */; // 0x41cdd8
  LR = local_m8; // 0x41cddc
  // frame: LR, BARRIER, mem(SP, 8) // 0x41cde0
  local_0 = x0; // 0x41cde4
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x41cde8
  ListIterable_map() /* 0x34c5b8 */; // 0x41cdec
  w1 = mem(x0, 7); // 0x41cdf0
  x1 = ((mem(x0, 7)) & 0xffffffff) + (HEAP << 32); // 0x41cdf4
  x2 = x0; // 0x41cdf8
  GrowableList_factory_ctor_of() /* 0x276db0 */; // 0x41cdfc
  SP = FP; // 0x41ce00
  // frame: FP, LR, mem(SP), 0x10 // 0x41ce04
  return;
}

// GameFruitLandState_anon_closure
// raw disassembly:
//  0x41cfac: stp FP, LR, [SP, #-0x10]!
//  0x41cfb0: mov FP, SP
//  0x41cfb4: sub SP, SP, #0x58
//  0x41cfb8: ldr x0, [FP, #0x18]
//  0x41cfbc: ldur w1, [x0, #0x17]
//  0x41cfc0: add x1, x1, HEAP, lsl #32
//  0x41cfc4: stur x1, [FP, #-8]
//  0x41cfc8: ldr BARRIER, [THR, #0x38]
//  0x41cfcc: cmp SP, BARRIER
//  0x41cfd0: b.ls #0x41d404
//  0x41cfd4: mov x1, #1
//  0x41cfd8: bl #0x61e890
//  0x41cfdc: mov x3, x0
//  0x41cfe0: ldur x0, [FP, #-8]
//  0x41cfe4: stur x3, [FP, #-0x18]
//  0x41cfe8: stur w0, [x3, #0xb]
//  0x41cfec: ldur w1, [x0, #0xf]
//  0x41cff0: add x1, x1, HEAP, lsl #32
//  0x41cff4: ldur w0, [x1, #0xb]
//  0x41cff8: add x0, x0, HEAP, lsl #32
//  0x41cffc: cmp w0, w22
//  0x41d000: b.eq #0x41d40c
//  0x41d004: ldur w1, [x0, #0xb]
//  0x41d008: add x1, x1, HEAP, lsl #32
//  0x41d00c: ldr x0, [FP, #0x10]
//  0x41d010: sbfx x4, x0, #1, #0x1f
//  0x41d014: tbz w0, #0, #0x41d01c
//  0x41d018: ldur x4, [x0, #7]
//  0x41d01c: mov x2, x4
//  0x41d020: stur x4, [FP, #-0x10]
//  0x41d024: bl #0x41d410
//  0x41d028: mov x2, x0
//  0x41d02c: sbfiz x0, x2, #1, #0x1f
//  0x41d030: cmp x2, x0, asr #1
//  0x41d034: b.eq #0x41d040
//  0x41d038: bl #0x61fba8
//  0x41d03c: stur x2, [x0, #7]
//  0x41d040: mov x3, x0
//  0x41d044: ldur x2, [FP, #-0x18]
//  0x41d048: stur x3, [FP, #-0x20]
//  0x41d04c: stur w0, [x2, #0xf]
//  0x41d050: tbz w0, #0, #0x41d06c
//  0x41d054: ldurb w16, [x2, #-1]
//  0x41d058: ldurb w17, [x0, #-1]
//  0x41d05c: and BARRIER, x17, BARRIER, lsr #2
//  0x41d060: tst BARRIER, HEAP, lsr #32
//  0x41d064: b.eq #0x41d06c
//  0x41d068: bl #0x61e06c
//  0x41d06c: ldur x0, [FP, #-0x10]
//  0x41d070: cmp x0, #1
//  0x41d074: b.gt #0x41d0a0
//  0x41d078: cmp x0, #0
//  0x41d07c: b.gt #0x41d094
//  0x41d080: ldr x0, [FP, #0x10]
//  0x41d084: cbnz w0, #0x41d0b8
//  0x41d088: add x0, PP, #0x15, lsl #12
//  0x41d08c: ldr x0, [x0, #0x238]
//  0x41d090: b #0x41d0c0
//  0x41d094: add x0, PP, #0x15, lsl #12
//  0x41d098: ldr x0, [x0, #0x240]
//  0x41d09c: b #0x41d0c0
//  0x41d0a0: ldr x0, [FP, #0x10]
//  0x41d0a4: cmp w0, #4
//  0x41d0a8: b.ne #0x41d0b8
//  0x41d0ac: add x0, PP, #0x15, lsl #12
//  0x41d0b0: ldr x0, [x0, #0x248]
//  0x41d0b4: b #0x41d0c0
//  0x41d0b8: add x0, PP, #0x15, lsl #12
//  0x41d0bc: ldr x0, [x0, #0x238]
//  0x41d0c0: stur x0, [FP, #-8]
//  0x41d0c4: add x1, PP, #0xe, lsl #12
//  0x41d0c8: ldr x1, [x1, #0xed0]
//  0x41d0cc: bl #0x3b5478
//  0x41d0d0: mov x1, x0
//  0x41d0d4: ldur x0, [FP, #-8]
//  0x41d0d8: stur x1, [FP, #-0x28]
//  0x41d0dc: stur w0, [x1, #0xb]
//  0x41d0e0: bl #0x3b546c
//  0x41d0e4: mov x1, x0
//  0x41d0e8: ldur x0, [FP, #-0x28]
//  0x41d0ec: stur x1, [FP, #-8]
//  0x41d0f0: stur w0, [x1, #7]
//  0x41d0f4: add x0, PP, #0xf, lsl #12
//  0x41d0f8: ldr x0, [x0, #0x1e0]
//  0x41d0fc: stur w0, [x1, #0x13]
//  0x41d100: add x0, PP, #0xe, lsl #12
//  0x41d104: ldr x0, [x0, #0xaa0]
//  0x41d108: stur w0, [x1, #0x17]
//  0x41d10c: add x0, PP, #0xe, lsl #12
//  0x41d110: ldr x0, [x0, #0xee8]
//  0x41d114: stur w0, [x1, #0x1f]
//  0x41d118: add x0, NULL, #0x30
//  0x41d11c: stur w0, [x1, #0x23]
//  0x41d120: fmov d0, #1.00000000
//  0x41d124: stur d0, [x1, #0x27]
//  0x41d128: stur d0, [x1, #0x2f]
//  0x41d12c: add x2, PP, #0xe, lsl #12
//  0x41d130: ldr x2, [x2, #0xef0]
//  0x41d134: stur w2, [x1, #0x37]
//  0x41d138: stur w0, [x1, #0x3b]
//  0x41d13c: stur w0, [x1, #0x3f]
//  0x41d140: bl #0x391dd8
//  0x41d144: mov x1, x0
//  0x41d148: ldur x0, [FP, #-8]
//  0x41d14c: stur x1, [FP, #-0x28]
//  0x41d150: stur w0, [x1, #0xb]
//  0x41d154: add x0, PP, #0xe, lsl #12
//  0x41d158: ldr x0, [x0, #0xb78]
//  0x41d15c: stur w0, [x1, #0x23]
//  0x41d160: ldur BARRIER, [FP, #-0x20]
//  0x41d164: str BARRIER, [SP]
//  0x41d168: bl #0x2ac0a0
//  0x41d16c: stur x0, [FP, #-8]
//  0x41d170: bl #0x31d844
//  0x41d174: mov x1, x0
//  0x41d178: ldr x0, [PP, #0x6310]
//  0x41d17c: stur x1, [FP, #-0x20]
//  0x41d180: stur w0, [x1, #0x27]
//  0x41d184: fmov d0, #1.00000000
//  0x41d188: stur d0, [x1, #7]
//  0x41d18c: add x17, PP, #0x11, lsl #12
//  0x41d190: ldr d1, [x17, #0xaf8]
//  0x41d194: stur d1, [x1, #0xf]
//  0x41d198: stur xzr, [x1, #0x17]
//  0x41d19c: add x17, PP, #0x11, lsl #12
//  0x41d1a0: ldr d2, [x17, #0xb00]
//  0x41d1a4: stur d2, [x1, #0x1f]
//  0x41d1a8: bl #0x31abec
//  0x41d1ac: mov x1, x0
//  0x41d1b0: add x0, NULL, #0x20
//  0x41d1b4: stur x1, [FP, #-0x30]
//  0x41d1b8: stur w0, [x1, #7]
//  0x41d1bc: ldur x2, [FP, #-0x20]
//  0x41d1c0: stur w2, [x1, #0xb]
//  0x41d1c4: add x2, PP, #0xe, lsl #12
//  0x41d1c8: ldr x2, [x2, #0xb50]
//  0x41d1cc: stur w2, [x1, #0x1f]
//  0x41d1d0: add x2, PP, #0x11, lsl #12
//  0x41d1d4: ldr x2, [x2, #0xa48]
//  0x41d1d8: stur w2, [x1, #0x23]
//  0x41d1dc: bl #0x393bf8
//  0x41d1e0: mov x2, x0
//  0x41d1e4: ldur x0, [FP, #-8]
//  0x41d1e8: stur x2, [FP, #-0x20]
//  0x41d1ec: stur w0, [x2, #0xb]
//  0x41d1f0: ldur x0, [FP, #-0x30]
//  0x41d1f4: stur w0, [x2, #0x13]
//  0x41d1f8: add x1, PP, #0xc, lsl #12
//  0x41d1fc: ldr x1, [x1, #0x900]
//  0x41d200: ldr x4, [PP, #0x4c0]
//  0x41d204: bl #0x3a1dcc
//  0x41d208: stur x0, [FP, #-8]
//  0x41d20c: bl #0x31d844
//  0x41d210: mov x1, x0
//  0x41d214: ldr x0, [PP, #0x6310]
//  0x41d218: stur x1, [FP, #-0x30]
//  0x41d21c: stur w0, [x1, #0x27]
//  0x41d220: fmov d0, #1.00000000
//  0x41d224: stur d0, [x1, #7]
//  0x41d228: add x17, PP, #0x11, lsl #12
//  0x41d22c: ldr d0, [x17, #0xaf8]
//  0x41d230: stur d0, [x1, #0xf]
//  0x41d234: stur xzr, [x1, #0x17]
//  0x41d238: add x17, PP, #0x11, lsl #12
//  0x41d23c: ldr d0, [x17, #0xb00]
//  0x41d240: stur d0, [x1, #0x1f]
//  0x41d244: bl #0x31abec
//  0x41d248: mov x1, x0
//  0x41d24c: add x0, NULL, #0x20
//  0x41d250: stur x1, [FP, #-0x38]
//  0x41d254: stur w0, [x1, #7]
//  0x41d258: ldur x0, [FP, #-0x30]
//  0x41d25c: stur w0, [x1, #0xb]
//  0x41d260: ldr x0, [PP, #0x7598]
//  0x41d264: stur w0, [x1, #0x1f]
//  0x41d268: add x0, PP, #0x11, lsl #12
//  0x41d26c: ldr x0, [x0, #0xa48]
//  0x41d270: stur w0, [x1, #0x23]
//  0x41d274: bl #0x393bf8
//  0x41d278: mov x1, x0
//  0x41d27c: ldur x0, [FP, #-8]
//  0x41d280: stur x1, [FP, #-0x30]
//  0x41d284: stur w0, [x1, #0xb]
//  0x41d288: ldur x0, [FP, #-0x38]
//  0x41d28c: stur w0, [x1, #0x13]
//  0x41d290: add x0, PP, #0xf, lsl #12
//  0x41d294: ldr x0, [x0, #0x230]
//  0x41d298: stur w0, [x1, #0x2b]
//  0x41d29c: mov x0, #2
//  0x41d2a0: stur w0, [x1, #0x37]
//  0x41d2a4: bl #0x391c0c
//  0x41d2a8: mov x3, x0
//  0x41d2ac: add x0, PP, #0x15, lsl #12
//  0x41d2b0: ldr x0, [x0, #0x250]
//  0x41d2b4: stur x3, [FP, #-8]
//  0x41d2b8: stur w0, [x3, #0xf]
//  0x41d2bc: ldur x0, [FP, #-0x30]
//  0x41d2c0: stur w0, [x3, #0xb]
//  0x41d2c4: mov x1, NULL
//  0x41d2c8: mov x2, #4
//  0x41d2cc: bl #0x61f920
//  0x41d2d0: mov x2, x0
//  0x41d2d4: ldur x0, [FP, #-0x20]
//  0x41d2d8: stur x2, [FP, #-0x30]
//  0x41d2dc: stur w0, [x2, #0xf]
//  0x41d2e0: ldur x0, [FP, #-8]
//  0x41d2e4: stur w0, [x2, #0x13]
//  0x41d2e8: ldr x1, [PP, #0x5c58]
//  0x41d2ec: bl #0x61e854
//  0x41d2f0: mov x1, x0
//  0x41d2f4: ldur x0, [FP, #-0x30]
//  0x41d2f8: stur x1, [FP, #-8]
//  0x41d2fc: stur w0, [x1, #0xf]
//  0x41d300: mov x0, #4
//  0x41d304: stur w0, [x1, #0xb]
//  0x41d308: bl #0x39310c
//  0x41d30c: mov x1, x0
//  0x41d310: add x0, PP, #0xa, lsl #12
//  0x41d314: ldr x0, [x0, #0x858]
//  0x41d318: stur x1, [FP, #-0x20]
//  0x41d31c: stur w0, [x1, #0xf]
//  0x41d320: add x0, PP, #0xe, lsl #12
//  0x41d324: ldr x0, [x0, #0xae0]
//  0x41d328: stur w0, [x1, #0x13]
//  0x41d32c: add x0, PP, #0xe, lsl #12
//  0x41d330: ldr x0, [x0, #0xae8]
//  0x41d334: stur w0, [x1, #0x17]
//  0x41d338: add x0, PP, #0xe, lsl #12
//  0x41d33c: ldr x0, [x0, #0xb60]
//  0x41d340: stur w0, [x1, #0x1b]
//  0x41d344: add x0, PP, #0xe, lsl #12
//  0x41d348: ldr x0, [x0, #0xaf8]
//  0x41d34c: stur w0, [x1, #0x23]
//  0x41d350: add x0, PP, #0xa, lsl #12
//  0x41d354: ldr x0, [x0, #0xa8]
//  0x41d358: stur w0, [x1, #0x2b]
//  0x41d35c: stur xzr, [x1, #0x2f]
//  0x41d360: ldur x0, [FP, #-8]
//  0x41d364: stur w0, [x1, #0xb]
//  0x41d368: bl #0x391a04
//  0x41d36c: stur x0, [FP, #-8]
//  0x41d370: add BARRIER, PP, #0x11, lsl #12
//  0x41d374: ldr BARRIER, [BARRIER, #0x8b8]
//  0x41d378: add LR, PP, #0x15, lsl #12
//  0x41d37c: ldr LR, [LR, #0x258]
//  0x41d380: stp LR, BARRIER, [SP, #0x10]
//  0x41d384: ldur BARRIER, [FP, #-0x28]
//  0x41d388: ldur LR, [FP, #-0x20]
//  0x41d38c: stp LR, BARRIER, [SP]
//  0x41d390: mov x1, x0
//  0x41d394: add x4, PP, #0x12, lsl #12
//  0x41d398: ldr x4, [x4, #0x160]
//  0x41d39c: bl #0x391490
//  0x41d3a0: bl #0x3a1d94
//  0x41d3a4: ldur x2, [FP, #-0x18]
//  0x41d3a8: add x1, PP, #0x15, lsl #12
//  0x41d3ac: ldr x1, [x1, #0x260]
//  0x41d3b0: stur x0, [FP, #-0x18]
//  0x41d3b4: bl #0x61ec54
//  0x41d3b8: ldur BARRIER, [FP, #-8]
//  0x41d3bc: stp BARRIER, x0, [SP]
//  0x41d3c0: ldur x1, [FP, #-0x18]
//  0x41d3c4: add x4, PP, #0xc, lsl #12
//  0x41d3c8: ldr x4, [x4, #0x208]
//  0x41d3cc: bl #0x3a18c4
//  0x41d3d0: add x1, PP, #0xe, lsl #12
//  0x41d3d4: ldr x1, [x1, #0xad0]
//  0x41d3d8: bl #0x39fb14
//  0x41d3dc: mov x1, #1
//  0x41d3e0: stur x1, [x0, #0x13]
//  0x41d3e4: add x1, PP, #0xe, lsl #12
//  0x41d3e8: ldr x1, [x1, #0xad8]
//  0x41d3ec: stur w1, [x0, #0x1b]
//  0x41d3f0: ldur x1, [FP, #-0x18]
//  0x41d3f4: stur w1, [x0, #0xb]
//  0x41d3f8: mov SP, FP
//  0x41d3fc: ldp FP, LR, [SP], #0x10
//  0x41d400: ret 
//  0x41d404: bl #0x61fa28
//  0x41d408: b #0x41cfd4
//  0x41d40c: bl #0x61ffd0
//
dynamic GameFruitLandState_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic w0;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41cfac
  // frame: FP = SP // 0x41cfb0
  // frame: SP = SP - 0x58 // 0x41cfb4
  w1 = mem((local_18), 0x17); // 0x41cfbc
  x0 = local_18; // 0x41cfb8
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41cfc0
  local_m8 = x1; // 0x41cfc4
  BARRIER = mem(THR, 0x38); // 0x41cfc8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41d404
  }
  x1 = 1; // 0x41cfd4
  sub_0x61e890(); // 0x41cfd8
  x0 = local_m8; // 0x41cfe0
  x3 = x0; // 0x41cfdc
  local_m18 = x3; // 0x41cfe4
  memSet(x3, 0xb, w0); // 0x41cfe8
  w0 = mem((((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x41cff4
  w1 = mem(x0, 0xf); // 0x41cfec
  x0 = ((mem((((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x41cff8
  x1 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41cff0
  if (w0 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x41d40c
  }
  x0 = local_10; // 0x41d00c
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x41d008
  x4 = ((local_10) >> 1) & 0x7fffffff; // 0x41d010
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = mem(x0, 7); // 0x41d018
  }
  x2 = x4; // 0x41d01c
  local_m10 = x4; // 0x41d020
  GameFruitNotifier_getBetCoinGear() /* 0x41d410 */; // 0x41d024
  x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x41d02c
  x2 = x0; // 0x41d028
  if (x2 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x41d038
    memSet(x0, 7, x2); // 0x41d03c
  }
  x2 = local_m18; // 0x41d044
  x3 = x0; // 0x41d040
  local_m20 = x3; // 0x41d048
  memSet(x2, 0xf, w0); // 0x41d04c
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x41d05c
    w17 = mem(x0, -1); // 0x41d058
    x16 = w16 & 0xffffffff; // 0x41d054
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x41d058
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x2() /* 0x61e06c */; // 0x41d068
    }
  }
  x0 = local_m10; // 0x41d06c
  if (x0 > 1) {
    x0 = local_10; // 0x41d0a0
    if (w0 != 4) {
      x0 = "assets/images/3.0x/game_fruit_btn_soul_coin_1.webp" /* pp+0x15238 */; // 0x41d0bc
    } else {
      x0 = "assets/images/3.0x/game_fruit_btn_soul_coin_3.webp" /* pp+0x15248 */; // 0x41d0b0
    }
  } else {
    if (x0 > 0) {
      x0 = "assets/images/3.0x/game_fruit_btn_soul_coin_2.webp" /* pp+0x15240 */; // 0x41d098
    } else {
      x0 = local_10; // 0x41d080
      if (w0 != 0) {
        // duplicated branch body (shared block 0x41d0b8, joins at 0x41d0c0; the same code was emitted above)
        x0 = "assets/images/3.0x/game_fruit_btn_soul_coin_1.webp" /* pp+0x15238 */; // 0x41d0bc
      } else {
        x0 = "assets/images/3.0x/game_fruit_btn_soul_coin_1.webp" /* pp+0x15238 */; // 0x41d08c
      }
    }
  }
  local_m8 = x0; // 0x41d0c0
  x1 = mem((PP + 0xe000), 0xed0) /* TypeArguments */; // 0x41d0c8
  AllocationStub_AssetImage() /* 0x3b5478 */; // 0x41d0cc
  x0 = local_m8; // 0x41d0d4
  x1 = x0; // 0x41d0d0
  local_m28 = x1; // 0x41d0d8
  memSet(x1, 0xb, w0); // 0x41d0dc
  AllocationStub_DecorationImage() /* 0x3b546c */; // 0x41d0e0
  x0 = local_m28; // 0x41d0e8
  x1 = x0; // 0x41d0e4
  local_m8 = x1; // 0x41d0ec
  memSet(x1, 7, w0); // 0x41d0f0
  x0 = mem((PP + 0xf000), 0x1e0) /* Obj!BoxFit@12286  */; // 0x41d0f8
  memSet(x1, 0x13, w0); // 0x41d0fc
  x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x41d104
  memSet(x1, 0x17, w0); // 0x41d108
  x0 = mem((PP + 0xe000), 0xee8) /* Obj!ImageRepeat@12281  */; // 0x41d110
  memSet(x1, 0x1f, w0); // 0x41d114
  x0 = NULL + 0x30; // 0x41d118
  memSet(x1, 0x23, w0); // 0x41d11c
  d0 = 1.00000000 /* bits */; // 0x41d120
  memSet(x1, 0x27, d0); // 0x41d124
  memSet(x1, 0x2f, d0); // 0x41d128
  x2 = mem((PP + 0xe000), 0xef0) /* Obj!FilterQuality@12349  */; // 0x41d130
  memSet(x1, 0x37, w2); // 0x41d134
  memSet(x1, 0x3b, w0); // 0x41d138
  memSet(x1, 0x3f, w0); // 0x41d13c
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x41d140
  x0 = local_m8; // 0x41d148
  x1 = x0; // 0x41d144
  local_m28 = x1; // 0x41d14c
  memSet(x1, 0xb, w0); // 0x41d150
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x41d158
  memSet(x1, 0x23, w0); // 0x41d15c
  BARRIER = local_m20; // 0x41d160
  local_0 = BARRIER; // 0x41d164
  StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x41d168
  local_m8 = x0; // 0x41d16c
  AllocationStub_Color() /* 0x31d844 */; // 0x41d170
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x41d178
  x1 = x0; // 0x41d174
  local_m20 = x1; // 0x41d17c
  memSet(x1, 0x27, w0); // 0x41d180
  d0 = 1.00000000 /* bits */; // 0x41d184
  memSet(x1, 7, d0); // 0x41d188
  d1 = 4597927963095146271; // 0x41d190
  x17 = PP + 0x11000; // 0x41d18c
  memSet(x1, 0xf, d1); // 0x41d194
  memSet(x1, 0x17, xzr); // 0x41d198
  d2 = 4604003407298344117; // 0x41d1a0
  x17 = PP + 0x11000; // 0x41d19c
  memSet(x1, 0x1f, d2); // 0x41d1a4
  AllocationStub_TextStyle() /* 0x31abec */; // 0x41d1a8
  x0 = NULL + 0x20; // 0x41d1b0
  x1 = x0; // 0x41d1ac
  local_m30 = x1; // 0x41d1b4
  memSet(x1, 7, w0); // 0x41d1b8
  x2 = local_m20; // 0x41d1bc
  memSet(x1, 0xb, w2); // 0x41d1c0
  x2 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x41d1c8
  memSet(x1, 0x1f, w2); // 0x41d1cc
  x2 = mem((PP + 0x11000), 0xa48) /* Obj!FontWeight@12029  */; // 0x41d1d4
  memSet(x1, 0x23, w2); // 0x41d1d8
  AllocationStub_Text() /* 0x393bf8 */; // 0x41d1dc
  x0 = local_m8; // 0x41d1e4
  x2 = x0; // 0x41d1e0
  local_m20 = x2; // 0x41d1e8
  memSet(x2, 0xb, w0); // 0x41d1ec
  x0 = local_m30; // 0x41d1f0
  memSet(x2, 0x13, w0); // 0x41d1f4
  x1 = "settings_soul_coin" /* pp+0xc900 */; // 0x41d1fc
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x41d200
  getString() /* 0x3a1dcc */; // 0x41d204
  local_m8 = x0; // 0x41d208
  AllocationStub_Color() /* 0x31d844 */; // 0x41d20c
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x41d214
  x1 = x0; // 0x41d210
  local_m30 = x1; // 0x41d218
  memSet(x1, 0x27, w0); // 0x41d21c
  d0 = 1.00000000 /* bits */; // 0x41d220
  memSet(x1, 7, d0); // 0x41d224
  d0 = 4597927963095146271; // 0x41d22c
  x17 = PP + 0x11000; // 0x41d228
  memSet(x1, 0xf, d0); // 0x41d230
  memSet(x1, 0x17, xzr); // 0x41d234
  d0 = 4604003407298344117; // 0x41d23c
  x17 = PP + 0x11000; // 0x41d238
  memSet(x1, 0x1f, d0); // 0x41d240
  AllocationStub_TextStyle() /* 0x31abec */; // 0x41d244
  x0 = NULL + 0x20; // 0x41d24c
  x1 = x0; // 0x41d248
  local_m38 = x1; // 0x41d250
  memSet(x1, 7, w0); // 0x41d254
  x0 = local_m30; // 0x41d258
  memSet(x1, 0xb, w0); // 0x41d25c
  x0 = mem(PP, 0x7598) /* Double */; // 0x41d260
  memSet(x1, 0x1f, w0); // 0x41d264
  x0 = mem((PP + 0x11000), 0xa48) /* Obj!FontWeight@12029  */; // 0x41d26c
  memSet(x1, 0x23, w0); // 0x41d270
  AllocationStub_Text() /* 0x393bf8 */; // 0x41d274
  x0 = local_m8; // 0x41d27c
  x1 = x0; // 0x41d278
  local_m30 = x1; // 0x41d280
  memSet(x1, 0xb, w0); // 0x41d284
  x0 = local_m38; // 0x41d288
  memSet(x1, 0x13, w0); // 0x41d28c
  x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x41d294
  memSet(x1, 0x2b, w0); // 0x41d298
  x0 = 2; // 0x41d29c
  memSet(x1, 0x37, w0); // 0x41d2a0
  AllocationStub_Padding() /* 0x391c0c */; // 0x41d2a4
  x0 = mem((PP + 0x15000), 0x250) /* Obj!EdgeInsets@11ba0  */; // 0x41d2b0
  x3 = x0; // 0x41d2a8
  local_m8 = x3; // 0x41d2b4
  memSet(x3, 0xf, w0); // 0x41d2b8
  x0 = local_m30; // 0x41d2bc
  memSet(x3, 0xb, w0); // 0x41d2c0
  x1 = NULL; // 0x41d2c4
  x2 = 4; // 0x41d2c8
  sub_0x61f920(); // 0x41d2cc
  x0 = local_m20; // 0x41d2d4
  x2 = x0; // 0x41d2d0
  local_m30 = x2; // 0x41d2d8
  memSet(x2, 0xf, w0); // 0x41d2dc
  x0 = local_m8; // 0x41d2e0
  memSet(x2, 0x13, w0); // 0x41d2e4
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x41d2e8
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x41d2ec
  x0 = local_m30; // 0x41d2f4
  x1 = x0; // 0x41d2f0
  local_m8 = x1; // 0x41d2f8
  memSet(x1, 0xf, w0); // 0x41d2fc
  x0 = 4; // 0x41d300
  memSet(x1, 0xb, w0); // 0x41d304
  AllocationStub_Column() /* 0x39310c */; // 0x41d308
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x41d314
  x1 = x0; // 0x41d30c
  local_m20 = x1; // 0x41d318
  memSet(x1, 0xf, w0); // 0x41d31c
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x41d324
  memSet(x1, 0x13, w0); // 0x41d328
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x41d330
  memSet(x1, 0x17, w0); // 0x41d334
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x41d33c
  memSet(x1, 0x1b, w0); // 0x41d340
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x41d348
  memSet(x1, 0x23, w0); // 0x41d34c
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x41d354
  memSet(x1, 0x2b, w0); // 0x41d358
  memSet(x1, 0x2f, xzr); // 0x41d35c
  x0 = local_m8; // 0x41d360
  memSet(x1, 0xb, w0); // 0x41d364
  AllocationStub_Container() /* 0x391a04 */; // 0x41d368
  local_m8 = x0; // 0x41d36c
  BARRIER = mem((PP + 0x11000), 0x8b8) /* Double */; // 0x41d374
  LR = mem((PP + 0x15000), 0x258) /* Obj!EdgeInsets@11b9f  */; // 0x41d37c
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x41d380
  BARRIER = local_m28; // 0x41d384
  LR = local_m20; // 0x41d388
  // frame: LR, BARRIER, mem(SP) // 0x41d38c
  x1 = x0; // 0x41d390
  x4 = mem((PP + 0x12000), 0x160) /* ImmutableArray */; // 0x41d398
  Container_ctor() /* 0x391490 */; // 0x41d39c
  sub_0x3a1d94(); // 0x41d3a0
  x1 = mem((PP + 0x15000), 0x260) /* Function */; // 0x41d3ac
  x2 = local_m18; // 0x41d3a4
  local_m18 = x0; // 0x41d3b0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41d3b4
  BARRIER = local_m8; // 0x41d3b8
  // frame: BARRIER, x0, mem(SP) // 0x41d3bc
  x1 = local_m18; // 0x41d3c0
  x4 = mem((PP + 0xc000), 0x208) /* ImmutableArray */; // 0x41d3c8
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x41d3cc
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x41d3d4
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x41d3d8
  x1 = 1; // 0x41d3dc
  memSet(x0, 0x13, x1); // 0x41d3e0
  x1 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x41d3e8
  memSet(x0, 0x1b, w1); // 0x41d3ec
  x1 = local_m18; // 0x41d3f0
  memSet(x0, 0xb, w1); // 0x41d3f4
  SP = FP; // 0x41d3f8
  // frame: FP, LR, mem(SP), 0x10 // 0x41d3fc
  return;
}

// GameFruitLandState_anon_closure_2
// raw disassembly:
//  0x41d474: stp FP, LR, [SP, #-0x10]!
//  0x41d478: mov FP, SP
//  0x41d47c: sub SP, SP, #0x28
//  0x41d480: ldr x0, [FP, #0x10]
//  0x41d484: ldur w3, [x0, #0x17]
//  0x41d488: add x3, x3, HEAP, lsl #32
//  0x41d48c: stur x3, [FP, #-8]
//  0x41d490: ldr BARRIER, [THR, #0x38]
//  0x41d494: cmp SP, BARRIER
//  0x41d498: b.ls #0x41d58c
//  0x41d49c: mov x1, NULL
//  0x41d4a0: mov x2, #4
//  0x41d4a4: bl #0x61f920
//  0x41d4a8: stur x0, [FP, #-0x18]
//  0x41d4ac: add BARRIER, PP, #0x15, lsl #12
//  0x41d4b0: ldr BARRIER, [BARRIER, #0x268]
//  0x41d4b4: stur w16, [x0, #0xf]
//  0x41d4b8: ldur x1, [FP, #-8]
//  0x41d4bc: ldur w2, [x1, #0xf]
//  0x41d4c0: add x2, x2, HEAP, lsl #32
//  0x41d4c4: stur x2, [FP, #-0x10]
//  0x41d4c8: str x2, [SP]
//  0x41d4cc: bl #0x2ac0a0
//  0x41d4d0: ldur x1, [FP, #-0x18]
//  0x41d4d4: add x25, x1, #0x13
//  0x41d4d8: str w0, [x25]
//  0x41d4dc: tbz w0, #0, #0x41d4f8
//  0x41d4e0: ldurb w16, [x1, #-1]
//  0x41d4e4: ldurb w17, [x0, #-1]
//  0x41d4e8: and BARRIER, x17, BARRIER, lsr #2
//  0x41d4ec: tst BARRIER, HEAP, lsr #32
//  0x41d4f0: b.eq #0x41d4f8
//  0x41d4f4: bl #0x61db00
//  0x41d4f8: ldr BARRIER, [PP, #0xbf0]
//  0x41d4fc: ldur LR, [FP, #-0x18]
//  0x41d500: stp LR, BARRIER, [SP]
//  0x41d504: bl #0x27c0c8
//  0x41d508: str x0, [SP]
//  0x41d50c: add x1, PP, #0x15, lsl #12
//  0x41d510: ldr x1, [x1, #0x270]
//  0x41d514: add x4, PP, #0xf, lsl #12
//  0x41d518: ldr x4, [x4, #0xf20]
//  0x41d51c: bl #0x3a8e60
//  0x41d520: ldur x0, [FP, #-8]
//  0x41d524: ldur w1, [x0, #0xb]
//  0x41d528: add x1, x1, HEAP, lsl #32
//  0x41d52c: ldur w0, [x1, #0xf]
//  0x41d530: add x0, x0, HEAP, lsl #32
//  0x41d534: ldur w1, [x0, #0xb]
//  0x41d538: add x1, x1, HEAP, lsl #32
//  0x41d53c: cmp w1, w22
//  0x41d540: b.eq #0x41d594
//  0x41d544: ldur w2, [x1, #0xb]
//  0x41d548: add x2, x2, HEAP, lsl #32
//  0x41d54c: ldur w1, [x0, #0xf]
//  0x41d550: add x1, x1, HEAP, lsl #32
//  0x41d554: cmp w1, w22
//  0x41d558: b.eq #0x41d598
//  0x41d55c: ldur x0, [FP, #-0x10]
//  0x41d560: sbfx x3, x0, #1, #0x1f
//  0x41d564: tbz w0, #0, #0x41d56c
//  0x41d568: ldur x3, [x0, #7]
//  0x41d56c: mov BARRIER, x1
//  0x41d570: mov x1, x2
//  0x41d574: mov x2, BARRIER
//  0x41d578: bl #0x41d59c
//  0x41d57c: mov x0, NULL
//  0x41d580: mov SP, FP
//  0x41d584: ldp FP, LR, [SP], #0x10
//  0x41d588: ret 
//  0x41d58c: bl #0x61fa28
//  0x41d590: b #0x41d49c
//  0x41d594: bl #0x61ffd0
//  0x41d598: bl #0x61ffd0
//
dynamic GameFruitLandState_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x25;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41d474
  // frame: FP = SP // 0x41d478
  // frame: SP = SP - 0x28 // 0x41d47c
  w3 = mem((local_10), 0x17); // 0x41d484
  x0 = local_10; // 0x41d480
  x3 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41d488
  local_m8 = x3; // 0x41d48c
  BARRIER = mem(THR, 0x38); // 0x41d490
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41d58c
  }
  x1 = NULL; // 0x41d49c
  x2 = 4; // 0x41d4a0
  sub_0x61f920(); // 0x41d4a4
  local_m18 = x0; // 0x41d4a8
  BARRIER = "num" /* pp+0x15268 */; // 0x41d4b0
  memSet(x0, 0xf, w16); // 0x41d4b4
  w2 = mem((local_m8), 0xf); // 0x41d4bc
  x1 = local_m8; // 0x41d4b8
  x2 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41d4c0
  local_m10 = x2; // 0x41d4c4
  local_0 = x2; // 0x41d4c8
  StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x41d4cc
  x1 = local_m18; // 0x41d4d0
  x25 = (local_m18) + 0x13; // 0x41d4d4
  memSet(x25, w0); // 0x41d4d8
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x41d4e8
    w17 = mem(x0, -1); // 0x41d4e4
    x16 = w16 & 0xffffffff; // 0x41d4e0
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x41d4e4
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      sub_0x61db00(); // 0x41d4f4
    }
  }
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x41d4f8
  LR = local_m18; // 0x41d4fc
  // frame: LR, BARRIER, mem(SP) // 0x41d500
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x41d504
  local_0 = x0; // 0x41d508
  x1 = "FruitGame_MoneyClick" /* pp+0x15270 */; // 0x41d510
  x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x41d518
  EventTrack_eventClick() /* 0x3a8e60 */; // 0x41d51c
  w0 = mem((((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32)), 0xf); // 0x41d52c
  w1 = mem((local_m8), 0xb); // 0x41d524
  x0 = ((mem((((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41d530
  x1 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x41d528
  w1 = mem(x0, 0xb); // 0x41d534
  x1 = ((mem(x0, 0xb)) & 0xffffffff) + (HEAP << 32); // 0x41d538
  if (w1 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x41d594
  } else {
    w1 = mem(x0, 0xf); // 0x41d54c
    x1 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41d550
    x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x41d548
    if (w1 == w22) {
      // duplicated branch body (target 0x41d598 terminates; the same code is emitted below)
      NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x41d598
    }
    x0 = local_m10; // 0x41d55c
    x3 = ((local_m10) >> 1) & 0x7fffffff; // 0x41d560
    if (x0 & (1 << 0) == 0) {
    } else {
      x3 = mem(x0, 7); // 0x41d568
    }
    BARRIER = x1; // 0x41d56c
    x1 = x2; // 0x41d570
    x2 = x1; // 0x41d574
    GameFruitNotifier_betFruit() /* 0x41d59c */; // 0x41d578
    SP = FP; // 0x41d580
    x0 = NULL; // 0x41d57c
    // frame: FP, LR, mem(SP), 0x10 // 0x41d584
    return;
  }
  NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x41d598
}

// GameFruitLandState_anon_closure_3
// raw disassembly:
//  0x41ee98: stp FP, LR, [SP, #-0x10]!
//  0x41ee9c: mov FP, SP
//  0x41eea0: sub SP, SP, #0x10
//  0x41eea4: stur NULL, [FP, #-8]
//  0x41eea8: mov x0, #0
//  0x41eeac: add x1, FP, w0, sxtw #2
//  0x41eeb0: ldr x1, [x1, #0x10]
//  0x41eeb4: ldur w2, [x1, #0x17]
//  0x41eeb8: add x2, x2, HEAP, lsl #32
//  0x41eebc: stur x2, [FP, #-0x10]
//  0x41eec0: ldr BARRIER, [THR, #0x38]
//  0x41eec4: cmp SP, BARRIER
//  0x41eec8: b.ls #0x41ef04
//  0x41eecc: ldr x0, [PP, #0x5838]
//  0x41eed0: bl #0x2b16e4
//  0x41eed4: ldur x0, [FP, #-0x10]
//  0x41eed8: ldur w1, [x0, #0xf]
//  0x41eedc: add x1, x1, HEAP, lsl #32
//  0x41eee0: ldur w0, [x1, #0xb]
//  0x41eee4: add x0, x0, HEAP, lsl #32
//  0x41eee8: cmp w0, w22
//  0x41eeec: b.eq #0x41ef0c
//  0x41eef0: ldur w1, [x0, #0xb]
//  0x41eef4: add x1, x1, HEAP, lsl #32
//  0x41eef8: bl #0x41a46c
//  0x41eefc: add x0, NULL, #0x20
//  0x41ef00: b #0x2b16b8
//  0x41ef04: bl #0x61fa28
//  0x41ef08: b #0x41eecc
//  0x41ef0c: bl #0x61ffd0
//
dynamic GameFruitLandState_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41ee98
  // frame: FP = SP // 0x41ee9c
  // frame: SP = SP - 0x10 // 0x41eea0
  local_m8 = NULL; // 0x41eea4
  w2 = mem((mem((FP + (w0 /* sxtw 2 */)), 0x10)), 0x17); // 0x41eeb4
  x0 = 0; // 0x41eea8
  x1 = mem((FP + (w0 /* sxtw 2 */)), 0x10); // 0x41eeb0
  x2 = ((mem((mem((FP + (w0 /* sxtw 2 */)), 0x10)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41eeb8
  local_m10 = x2; // 0x41eebc
  BARRIER = mem(THR, 0x38); // 0x41eec0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41ef04
  }
  x0 = mem(PP, 0x5838) /* TypeArguments */; // 0x41eecc
  sub_0x2b16e4(); // 0x41eed0
  w0 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x41eee0
  w1 = mem((local_m10), 0xf); // 0x41eed8
  x0 = ((mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x41eee4
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41eedc
  if (w0 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x41ef0c
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x41eef4
  GameFruitNotifier_release() /* 0x41a46c */; // 0x41eef8
  x0 = NULL + 0x20; // 0x41eefc
}

// GameFruitLandState_anon_closure_4
// raw disassembly:
//  0x41ef10: stp FP, LR, [SP, #-0x10]!
//  0x41ef14: mov FP, SP
//  0x41ef18: sub SP, SP, #0x28
//  0x41ef1c: ldr x0, [FP, #0x20]
//  0x41ef20: ldur w1, [x0, #0x17]
//  0x41ef24: add x1, x1, HEAP, lsl #32
//  0x41ef28: stur x1, [FP, #-8]
//  0x41ef2c: ldr BARRIER, [THR, #0x38]
//  0x41ef30: cmp SP, BARRIER
//  0x41ef34: b.ls #0x41f0c0
//  0x41ef38: ldr x0, [FP, #0x10]
//  0x41ef3c: sbfx x2, x0, #1, #0x1f
//  0x41ef40: tbz w0, #0, #0x41ef48
//  0x41ef44: ldur x2, [x0, #7]
//  0x41ef48: cmp x2, #4
//  0x41ef4c: b.ne #0x41f0a4
//  0x41ef50: bl #0x3a142c
//  0x41ef54: mov x1, x0
//  0x41ef58: add x0, PP, #0x15, lsl #12
//  0x41ef5c: ldr x0, [x0, #0x1a0]
//  0x41ef60: stur x1, [FP, #-0x10]
//  0x41ef64: stur w0, [x1, #0xb]
//  0x41ef68: add x0, PP, #0xf, lsl #12
//  0x41ef6c: ldr x0, [x0, #0x170]
//  0x41ef70: stur w0, [x1, #0xf]
//  0x41ef74: add x0, PP, #0x15, lsl #12
//  0x41ef78: ldr x0, [x0, #0x1a8]
//  0x41ef7c: stur w0, [x1, #0x17]
//  0x41ef80: bl #0x396460
//  0x41ef84: mov x2, x0
//  0x41ef88: add x0, PP, #0xe, lsl #12
//  0x41ef8c: ldr x0, [x0, #0xaa0]
//  0x41ef90: stur x2, [FP, #-0x18]
//  0x41ef94: stur w0, [x2, #0xf]
//  0x41ef98: ldur x1, [FP, #-0x10]
//  0x41ef9c: stur w1, [x2, #0xb]
//  0x41efa0: ldur x1, [FP, #-8]
//  0x41efa4: ldur w3, [x1, #0xf]
//  0x41efa8: add x3, x3, HEAP, lsl #32
//  0x41efac: ldur w1, [x3, #0xb]
//  0x41efb0: add x1, x1, HEAP, lsl #32
//  0x41efb4: cmp w1, w22
//  0x41efb8: b.eq #0x41f0c8
//  0x41efbc: ldur w3, [x1, #0xb]
//  0x41efc0: add x3, x3, HEAP, lsl #32
//  0x41efc4: ldur w4, [x3, #0x5f]
//  0x41efc8: add x4, x4, HEAP, lsl #32
//  0x41efcc: stur x4, [FP, #-0x10]
//  0x41efd0: ldr x1, [PP, #0x6050]
//  0x41efd4: ldr d0, [PP, #0x6098]
//  0x41efd8: bl #0x3a86fc
//  0x41efdc: stur x0, [FP, #-0x20]
//  0x41efe0: bl #0x393bf8
//  0x41efe4: mov x1, x0
//  0x41efe8: ldur x0, [FP, #-0x10]
//  0x41efec: stur x1, [FP, #-0x28]
//  0x41eff0: stur w0, [x1, #0xb]
//  0x41eff4: ldur x0, [FP, #-0x20]
//  0x41eff8: stur w0, [x1, #0x13]
//  0x41effc: bl #0x396460
//  0x41f000: mov x3, x0
//  0x41f004: add x0, PP, #0xe, lsl #12
//  0x41f008: ldr x0, [x0, #0xaa0]
//  0x41f00c: stur x3, [FP, #-0x10]
//  0x41f010: stur w0, [x3, #0xf]
//  0x41f014: ldur x0, [FP, #-0x28]
//  0x41f018: stur w0, [x3, #0xb]
//  0x41f01c: mov x1, NULL
//  0x41f020: mov x2, #4
//  0x41f024: bl #0x61f920
//  0x41f028: mov x2, x0
//  0x41f02c: ldur x0, [FP, #-0x18]
//  0x41f030: stur x2, [FP, #-0x20]
//  0x41f034: stur w0, [x2, #0xf]
//  0x41f038: ldur x0, [FP, #-0x10]
//  0x41f03c: stur w0, [x2, #0x13]
//  0x41f040: ldr x1, [PP, #0x5c58]
//  0x41f044: bl #0x61e854
//  0x41f048: mov x1, x0
//  0x41f04c: ldur x0, [FP, #-0x20]
//  0x41f050: stur x1, [FP, #-0x10]
//  0x41f054: stur w0, [x1, #0xf]
//  0x41f058: mov x0, #4
//  0x41f05c: stur w0, [x1, #0xb]
//  0x41f060: bl #0x39e6f4
//  0x41f064: mov x1, x0
//  0x41f068: add x0, PP, #0xe, lsl #12
//  0x41f06c: ldr x0, [x0, #0xf00]
//  0x41f070: stur w0, [x1, #0xf]
//  0x41f074: add x0, PP, #0xe, lsl #12
//  0x41f078: ldr x0, [x0, #0xf08]
//  0x41f07c: stur w0, [x1, #0x17]
//  0x41f080: add x0, PP, #0xe, lsl #12
//  0x41f084: ldr x0, [x0, #0xf10]
//  0x41f088: stur w0, [x1, #0x1b]
//  0x41f08c: ldur x0, [FP, #-0x10]
//  0x41f090: stur w0, [x1, #0xb]
//  0x41f094: mov x0, x1
//  0x41f098: mov SP, FP
//  0x41f09c: ldp FP, LR, [SP], #0x10
//  0x41f0a0: ret 
//  0x41f0a4: ldur w0, [x1, #0xf]
//  0x41f0a8: add x0, x0, HEAP, lsl #32
//  0x41f0ac: mov x1, x0
//  0x41f0b0: bl #0x41f0cc
//  0x41f0b4: mov SP, FP
//  0x41f0b8: ldp FP, LR, [SP], #0x10
//  0x41f0bc: ret 
//  0x41f0c0: bl #0x61fa28
//  0x41f0c4: b #0x41ef38
//  0x41f0c8: bl #0x61ffd0
//
dynamic GameFruitLandState_anon_closure_4() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic w0;
  dynamic w1;
  dynamic w3;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41ef10
  // frame: FP = SP // 0x41ef14
  // frame: SP = SP - 0x28 // 0x41ef18
  w1 = mem((local_20), 0x17); // 0x41ef20
  x0 = local_20; // 0x41ef1c
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41ef24
  local_m8 = x1; // 0x41ef28
  BARRIER = mem(THR, 0x38); // 0x41ef2c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41f0c0
  }
  x0 = local_10; // 0x41ef38
  x2 = ((local_10) >> 1) & 0x7fffffff; // 0x41ef3c
  if (x0 & (1 << 0) == 0) {
  } else {
    x2 = mem(x0, 7); // 0x41ef44
  }
  if (x2 != 4) {
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x41f0a8
    x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x41f0ac
    GameFruitLandState_buildFruitItem() /* 0x41f0cc */; // 0x41f0b0
    SP = FP; // 0x41f0b4
    // frame: FP, LR, mem(SP), 0x10 // 0x41f0b8
    return;
  }
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x41ef50
  x0 = "assets/images/3.0x/game_fruit_img_count_down.webp" /* pp+0x151a0 */; // 0x41ef5c
  x1 = x0; // 0x41ef54
  local_m10 = x1; // 0x41ef60
  memSet(x1, 0xb, w0); // 0x41ef64
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x41ef6c
  memSet(x1, 0xf, w0); // 0x41ef70
  x0 = mem((PP + 0x15000), 0x1a8) /* Double */; // 0x41ef78
  memSet(x1, 0x17, w0); // 0x41ef7c
  AllocationStub_Align() /* 0x396460 */; // 0x41ef80
  x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x41ef8c
  x2 = x0; // 0x41ef84
  local_m18 = x2; // 0x41ef90
  memSet(x2, 0xf, w0); // 0x41ef94
  x1 = local_m10; // 0x41ef98
  memSet(x2, 0xb, w1); // 0x41ef9c
  w1 = mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x41efac
  w3 = mem((local_m8), 0xf); // 0x41efa4
  x1 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x41efb0
  x3 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41efa8
  if (w1 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x41f0c8
  }
  w4 = mem(((w3 & 0xffffffff) + (HEAP << 32)), 0x5f); // 0x41efc4
  x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x41efc0
  x4 = ((mem(((w3 & 0xffffffff) + (HEAP << 32)), 0x5f)) & 0xffffffff) + (HEAP << 32); // 0x41efc8
  local_m10 = x4; // 0x41efcc
  d0 = 4630263366890291200; // 0x41efd4
  x1 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x41efd0
  TextStyles_fontDINCondensedBold() /* 0x3a86fc */; // 0x41efd8
  local_m20 = x0; // 0x41efdc
  AllocationStub_Text() /* 0x393bf8 */; // 0x41efe0
  x0 = local_m10; // 0x41efe8
  x1 = x0; // 0x41efe4
  local_m28 = x1; // 0x41efec
  memSet(x1, 0xb, w0); // 0x41eff0
  x0 = local_m20; // 0x41eff4
  memSet(x1, 0x13, w0); // 0x41eff8
  AllocationStub_Align() /* 0x396460 */; // 0x41effc
  x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x41f008
  x3 = x0; // 0x41f000
  local_m10 = x3; // 0x41f00c
  memSet(x3, 0xf, w0); // 0x41f010
  x0 = local_m28; // 0x41f014
  memSet(x3, 0xb, w0); // 0x41f018
  x1 = NULL; // 0x41f01c
  x2 = 4; // 0x41f020
  sub_0x61f920(); // 0x41f024
  x0 = local_m18; // 0x41f02c
  x2 = x0; // 0x41f028
  local_m20 = x2; // 0x41f030
  memSet(x2, 0xf, w0); // 0x41f034
  x0 = local_m10; // 0x41f038
  memSet(x2, 0x13, w0); // 0x41f03c
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x41f040
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x41f044
  x0 = local_m20; // 0x41f04c
  x1 = x0; // 0x41f048
  local_m10 = x1; // 0x41f050
  memSet(x1, 0xf, w0); // 0x41f054
  x0 = 4; // 0x41f058
  memSet(x1, 0xb, w0); // 0x41f05c
  AllocationStub_Stack() /* 0x39e6f4 */; // 0x41f060
  x0 = mem((PP + 0xe000), 0xf00) /* Obj!AlignmentDirectional@11bd4  */; // 0x41f06c
  x1 = x0; // 0x41f064
  memSet(x1, 0xf, w0); // 0x41f070
  x0 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x41f078
  memSet(x1, 0x17, w0); // 0x41f07c
  x0 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x41f084
  memSet(x1, 0x1b, w0); // 0x41f088
  x0 = local_m10; // 0x41f08c
  memSet(x1, 0xb, w0); // 0x41f090
  SP = FP; // 0x41f098
  x0 = x1; // 0x41f094
  // frame: FP, LR, mem(SP), 0x10 // 0x41f09c
  return;
}

// GameFruitLandState_buildFruitItem
// raw disassembly:
//  0x41f0cc: stp FP, LR, [SP, #-0x10]!
//  0x41f0d0: mov FP, SP
//  0x41f0d4: sub SP, SP, #0x68
//  0x41f0d8: stur x1, [FP, #-8]
//  0x41f0dc: stur x2, [FP, #-0x10]
//  0x41f0e0: ldr BARRIER, [THR, #0x38]
//  0x41f0e4: cmp SP, BARRIER
//  0x41f0e8: b.ls #0x41f94c
//  0x41f0ec: mov x1, #2
//  0x41f0f0: bl #0x61e890
//  0x41f0f4: mov x4, x0
//  0x41f0f8: ldur x3, [FP, #-8]
//  0x41f0fc: stur x4, [FP, #-0x20]
//  0x41f100: stur w3, [x4, #0xf]
//  0x41f104: ldur x2, [FP, #-0x10]
//  0x41f108: sbfiz x0, x2, #1, #0x1f
//  0x41f10c: cmp x2, x0, asr #1
//  0x41f110: b.eq #0x41f11c
//  0x41f114: bl #0x61fba8
//  0x41f118: stur x2, [x0, #7]
//  0x41f11c: stur w0, [x4, #0x13]
//  0x41f120: ldur w0, [x3, #0xb]
//  0x41f124: add x0, x0, HEAP, lsl #32
//  0x41f128: cmp w0, w22
//  0x41f12c: b.eq #0x41f954
//  0x41f130: ldur w5, [x0, #0xb]
//  0x41f134: add x5, x5, HEAP, lsl #32
//  0x41f138: ldur w0, [x5, #0x53]
//  0x41f13c: add x0, x0, HEAP, lsl #32
//  0x41f140: ldur x6, [x0, #7]
//  0x41f144: cmp x6, #1
//  0x41f148: b.gt #0x41f170
//  0x41f14c: sbfiz x0, x6, #1, #0x1f
//  0x41f150: cmp x6, x0, asr #1
//  0x41f154: b.eq #0x41f160
//  0x41f158: bl #0x61fba8
//  0x41f15c: stur x6, [x0, #7]
//  0x41f160: cmp w0, #2
//  0x41f164: b.ne #0x41f194
//  0x41f168: ldur x0, [x5, #0x43]
//  0x41f16c: b #0x41f198
//  0x41f170: sbfiz x0, x6, #1, #0x1f
//  0x41f174: cmp x6, x0, asr #1
//  0x41f178: b.eq #0x41f184
//  0x41f17c: bl #0x61fba8
//  0x41f180: stur x6, [x0, #7]
//  0x41f184: cmp w0, #4
//  0x41f188: b.ne #0x41f194
//  0x41f18c: ldur x0, [x5, #0x4b]
//  0x41f190: b #0x41f198
//  0x41f194: mov x0, #-1
//  0x41f198: cmp x0, x2
//  0x41f19c: add BARRIER, NULL, #0x20
//  0x41f1a0: add x17, NULL, #0x30
//  0x41f1a4: csel x6, BARRIER, x17, eq
//  0x41f1a8: mov x1, x5
//  0x41f1ac: stur x6, [FP, #-0x18]
//  0x41f1b0: bl #0x41faec
//  0x41f1b4: mov x3, x0
//  0x41f1b8: ldur x0, [FP, #-8]
//  0x41f1bc: stur x3, [FP, #-0x28]
//  0x41f1c0: ldur w1, [x0, #0xb]
//  0x41f1c4: add x1, x1, HEAP, lsl #32
//  0x41f1c8: cmp w1, w22
//  0x41f1cc: b.eq #0x41f958
//  0x41f1d0: ldur w0, [x1, #0xb]
//  0x41f1d4: add x0, x0, HEAP, lsl #32
//  0x41f1d8: ldur x4, [FP, #-0x20]
//  0x41f1dc: ldur w1, [x4, #0x13]
//  0x41f1e0: add x1, x1, HEAP, lsl #32
//  0x41f1e4: sbfx x2, x1, #1, #0x1f
//  0x41f1e8: tbz w1, #0, #0x41f1f0
//  0x41f1ec: ldur x2, [x1, #7]
//  0x41f1f0: mov x1, x0
//  0x41f1f4: bl #0x41f974
//  0x41f1f8: stur x0, [FP, #-8]
//  0x41f1fc: bl #0x2b8e80
//  0x41f200: ldr d0, [PP, #0xb90]
//  0x41f204: stur x0, [FP, #-0x30]
//  0x41f208: stur d0, [x0, #7]
//  0x41f20c: stur d0, [x0, #0xf]
//  0x41f210: stur d0, [x0, #0x17]
//  0x41f214: stur d0, [x0, #0x1f]
//  0x41f218: ldur x1, [FP, #-0x18]
//  0x41f21c: tbnz w1, #4, #0x41f27c
//  0x41f220: bl #0x31d844
//  0x41f224: mov x1, x0
//  0x41f228: ldr x0, [PP, #0x6310]
//  0x41f22c: stur w0, [x1, #0x27]
//  0x41f230: fmov d0, #1.00000000
//  0x41f234: stur d0, [x1, #7]
//  0x41f238: stur d0, [x1, #0xf]
//  0x41f23c: add x17, PP, #0x15, lsl #12
//  0x41f240: ldr d1, [x17, #0x1b0]
//  0x41f244: stur d1, [x1, #0x17]
//  0x41f248: add x17, PP, #0xc, lsl #12
//  0x41f24c: ldr d1, [x17, #0x2b8]
//  0x41f250: stur d1, [x1, #0x1f]
//  0x41f254: add BARRIER, PP, #0x12, lsl #12
//  0x41f258: ldr BARRIER, [BARRIER, #0x3a0]
//  0x41f25c: str BARRIER, [SP]
//  0x41f260: mov x2, x1
//  0x41f264: mov x1, NULL
//  0x41f268: add x4, PP, #0xf, lsl #12
//  0x41f26c: ldr x4, [x4, #0x818]
//  0x41f270: bl #0x391e08
//  0x41f274: mov x1, x0
//  0x41f278: b #0x41f280
//  0x41f27c: mov x1, NULL
//  0x41f280: ldur x0, [FP, #-0x18]
//  0x41f284: stur x1, [FP, #-0x38]
//  0x41f288: tbnz w0, #4, #0x41f2c4
//  0x41f28c: bl #0x352b04
//  0x41f290: fmov d0, #10.00000000
//  0x41f294: stur x0, [FP, #-0x18]
//  0x41f298: stur d0, [x0, #7]
//  0x41f29c: stur d0, [x0, #0xf]
//  0x41f2a0: bl #0x392f28
//  0x41f2a4: mov x1, x0
//  0x41f2a8: ldur x0, [FP, #-0x18]
//  0x41f2ac: stur w0, [x1, #7]
//  0x41f2b0: stur w0, [x1, #0xb]
//  0x41f2b4: stur w0, [x1, #0xf]
//  0x41f2b8: stur w0, [x1, #0x13]
//  0x41f2bc: mov x3, x1
//  0x41f2c0: b #0x41f2c8
//  0x41f2c4: mov x3, NULL
//  0x41f2c8: ldur x2, [FP, #-0x28]
//  0x41f2cc: ldur x0, [FP, #-0x38]
//  0x41f2d0: stur x3, [FP, #-0x18]
//  0x41f2d4: add x1, PP, #0xe, lsl #12
//  0x41f2d8: ldr x1, [x1, #0xed0]
//  0x41f2dc: bl #0x3b5478
//  0x41f2e0: mov x1, x0
//  0x41f2e4: add x0, PP, #0x15, lsl #12
//  0x41f2e8: ldr x0, [x0, #0x1b8]
//  0x41f2ec: stur x1, [FP, #-0x40]
//  0x41f2f0: stur w0, [x1, #0xb]
//  0x41f2f4: bl #0x3b546c
//  0x41f2f8: mov x1, x0
//  0x41f2fc: ldur x0, [FP, #-0x40]
//  0x41f300: stur x1, [FP, #-0x48]
//  0x41f304: stur w0, [x1, #7]
//  0x41f308: add x0, PP, #0xf, lsl #12
//  0x41f30c: ldr x0, [x0, #0x1e0]
//  0x41f310: stur w0, [x1, #0x13]
//  0x41f314: add x0, PP, #0xe, lsl #12
//  0x41f318: ldr x0, [x0, #0xaa0]
//  0x41f31c: stur w0, [x1, #0x17]
//  0x41f320: add x0, PP, #0xe, lsl #12
//  0x41f324: ldr x0, [x0, #0xee8]
//  0x41f328: stur w0, [x1, #0x1f]
//  0x41f32c: add x0, NULL, #0x30
//  0x41f330: stur w0, [x1, #0x23]
//  0x41f334: fmov d0, #1.00000000
//  0x41f338: stur d0, [x1, #0x27]
//  0x41f33c: stur d0, [x1, #0x2f]
//  0x41f340: add x2, PP, #0xe, lsl #12
//  0x41f344: ldr x2, [x2, #0xef0]
//  0x41f348: stur w2, [x1, #0x37]
//  0x41f34c: stur w0, [x1, #0x3b]
//  0x41f350: stur w0, [x1, #0x3f]
//  0x41f354: bl #0x391dd8
//  0x41f358: mov x1, x0
//  0x41f35c: ldur x0, [FP, #-0x48]
//  0x41f360: stur x1, [FP, #-0x40]
//  0x41f364: stur w0, [x1, #0xb]
//  0x41f368: ldur x0, [FP, #-0x38]
//  0x41f36c: stur w0, [x1, #0xf]
//  0x41f370: ldur x0, [FP, #-0x18]
//  0x41f374: stur w0, [x1, #0x13]
//  0x41f378: add x0, PP, #0xe, lsl #12
//  0x41f37c: ldr x0, [x0, #0xb78]
//  0x41f380: stur w0, [x1, #0x23]
//  0x41f384: bl #0x391a04
//  0x41f388: stur x0, [FP, #-0x18]
//  0x41f38c: ldur BARRIER, [FP, #-0x30]
//  0x41f390: ldur LR, [FP, #-0x40]
//  0x41f394: stp LR, BARRIER, [SP]
//  0x41f398: mov x1, x0
//  0x41f39c: add x4, PP, #0x15, lsl #12
//  0x41f3a0: ldr x4, [x4, #0x1c0]
//  0x41f3a4: bl #0x391490
//  0x41f3a8: bl #0x2b8e80
//  0x41f3ac: ldr d0, [PP, #0xb90]
//  0x41f3b0: stur x0, [FP, #-0x38]
//  0x41f3b4: stur d0, [x0, #7]
//  0x41f3b8: stur d0, [x0, #0xf]
//  0x41f3bc: stur d0, [x0, #0x17]
//  0x41f3c0: stur d0, [x0, #0x1f]
//  0x41f3c4: ldur x1, [FP, #-0x28]
//  0x41f3c8: cmp w1, w22
//  0x41f3cc: b.ne #0x41f3d8
//  0x41f3d0: mov x2, NULL
//  0x41f3d4: b #0x41f3ec
//  0x41f3d8: ldur w2, [x1, #0xf]
//  0x41f3dc: add x2, x2, HEAP, lsl #32
//  0x41f3e0: ldr BARRIER, [PP, #0x40]
//  0x41f3e4: cmp w2, w16
//  0x41f3e8: b.eq #0x41f95c
//  0x41f3ec: cmp w2, w22
//  0x41f3f0: b.ne #0x41f3f8
//  0x41f3f4: ldr x2, [PP, #0x148]
//  0x41f3f8: stur x2, [FP, #-0x30]
//  0x41f3fc: bl #0x3b6694
//  0x41f400: mov x1, x0
//  0x41f404: ldur x0, [FP, #-0x30]
//  0x41f408: stur x1, [FP, #-0x40]
//  0x41f40c: stur w0, [x1, #0xb]
//  0x41f410: add x0, PP, #0x10, lsl #12
//  0x41f414: ldr x0, [x0, #0x350]
//  0x41f418: stur w0, [x1, #0xf]
//  0x41f41c: stur w0, [x1, #0x13]
//  0x41f420: add x0, NULL, #0x30
//  0x41f424: stur w0, [x1, #0x1b]
//  0x41f428: stur w0, [x1, #0x1f]
//  0x41f42c: bl #0x391c0c
//  0x41f430: mov x1, x0
//  0x41f434: add x0, PP, #0x15, lsl #12
//  0x41f438: ldr x0, [x0, #0x1c8]
//  0x41f43c: stur x1, [FP, #-0x30]
//  0x41f440: stur w0, [x1, #0xf]
//  0x41f444: ldur x0, [FP, #-0x40]
//  0x41f448: stur w0, [x1, #0xb]
//  0x41f44c: ldur x0, [FP, #-0x28]
//  0x41f450: cmp w0, w22
//  0x41f454: b.ne #0x41f460
//  0x41f458: ldr x2, [PP, #0x148]
//  0x41f45c: b #0x41f4d4
//  0x41f460: ldur w2, [x0, #7]
//  0x41f464: add x2, x2, HEAP, lsl #32
//  0x41f468: ldr BARRIER, [PP, #0x40]
//  0x41f46c: cmp w2, w16
//  0x41f470: b.eq #0x41f968
//  0x41f474: str x2, [SP]
//  0x41f478: bl #0x2ac0a0
//  0x41f47c: mov x1, NULL
//  0x41f480: mov x2, #2
//  0x41f484: stur x0, [FP, #-0x28]
//  0x41f488: bl #0x61f920
//  0x41f48c: mov x2, x0
//  0x41f490: ldur x0, [FP, #-0x28]
//  0x41f494: stur x2, [FP, #-0x40]
//  0x41f498: stur w0, [x2, #0xf]
//  0x41f49c: ldr x1, [PP, #0x868]
//  0x41f4a0: bl #0x61e854
//  0x41f4a4: mov x1, x0
//  0x41f4a8: ldur x0, [FP, #-0x40]
//  0x41f4ac: stur w0, [x1, #0xf]
//  0x41f4b0: mov x0, #2
//  0x41f4b4: stur w0, [x1, #0xb]
//  0x41f4b8: str x1, [SP]
//  0x41f4bc: add x1, PP, #0xc, lsl #12
//  0x41f4c0: ldr x1, [x1, #0x8d0]
//  0x41f4c4: add x4, PP, #0xf, lsl #12
//  0x41f4c8: ldr x4, [x4, #0xf20]
//  0x41f4cc: bl #0x3a1dcc
//  0x41f4d0: mov x2, x0
//  0x41f4d4: ldur x0, [FP, #-8]
//  0x41f4d8: stur x2, [FP, #-0x28]
//  0x41f4dc: ldr x1, [PP, #0x6050]
//  0x41f4e0: bl #0x3b7e50
//  0x41f4e4: stur x0, [FP, #-0x40]
//  0x41f4e8: bl #0x393bf8
//  0x41f4ec: mov x1, x0
//  0x41f4f0: ldur x0, [FP, #-0x28]
//  0x41f4f4: stur x1, [FP, #-0x48]
//  0x41f4f8: stur w0, [x1, #0xb]
//  0x41f4fc: ldur x0, [FP, #-0x40]
//  0x41f500: stur w0, [x1, #0x13]
//  0x41f504: add x0, PP, #0xf, lsl #12
//  0x41f508: ldr x0, [x0, #0x230]
//  0x41f50c: stur w0, [x1, #0x2b]
//  0x41f510: mov x2, #2
//  0x41f514: stur w2, [x1, #0x37]
//  0x41f518: bl #0x391c0c
//  0x41f51c: mov x1, x0
//  0x41f520: add x0, PP, #0x15, lsl #12
//  0x41f524: ldr x0, [x0, #0x1d0]
//  0x41f528: stur x1, [FP, #-0x40]
//  0x41f52c: stur w0, [x1, #0xf]
//  0x41f530: ldur x0, [FP, #-0x48]
//  0x41f534: stur w0, [x1, #0xb]
//  0x41f538: ldur x0, [FP, #-8]
//  0x41f53c: cmp w0, w22
//  0x41f540: b.ne #0x41f54c
//  0x41f544: mov x2, NULL
//  0x41f548: b #0x41f580
//  0x41f54c: ldur w2, [x0, #0xb]
//  0x41f550: add x2, x2, HEAP, lsl #32
//  0x41f554: cmp w2, w22
//  0x41f558: b.eq #0x41f57c
//  0x41f55c: sbfx x3, x2, #1, #0x1f
//  0x41f560: tbz w2, #0, #0x41f568
//  0x41f564: ldur x3, [x2, #7]
//  0x41f568: cmp x3, #0
//  0x41f56c: add BARRIER, NULL, #0x20
//  0x41f570: add x17, NULL, #0x30
//  0x41f574: csel x2, BARRIER, x17, gt
//  0x41f578: b #0x41f580
//  0x41f57c: add x2, NULL, #0x30
//  0x41f580: cmp w2, w22
//  0x41f584: b.ne #0x41f58c
//  0x41f588: add x2, NULL, #0x30
//  0x41f58c: stur x2, [FP, #-0x28]
//  0x41f590: bl #0x3a142c
//  0x41f594: mov x1, x0
//  0x41f598: add x0, PP, #0xf, lsl #12
//  0x41f59c: ldr x0, [x0, #0x248]
//  0x41f5a0: stur x1, [FP, #-0x48]
//  0x41f5a4: stur w0, [x1, #0xb]
//  0x41f5a8: add x0, PP, #0xf, lsl #12
//  0x41f5ac: ldr x0, [x0, #0x170]
//  0x41f5b0: stur w0, [x1, #0xf]
//  0x41f5b4: add x0, PP, #0x15, lsl #12
//  0x41f5b8: ldr x0, [x0, #0x1d8]
//  0x41f5bc: stur w0, [x1, #0x13]
//  0x41f5c0: stur w0, [x1, #0x17]
//  0x41f5c4: bl #0x391c0c
//  0x41f5c8: mov x1, x0
//  0x41f5cc: add x0, PP, #0x15, lsl #12
//  0x41f5d0: ldr x0, [x0, #0x1e0]
//  0x41f5d4: stur x1, [FP, #-0x50]
//  0x41f5d8: stur w0, [x1, #0xf]
//  0x41f5dc: ldur x0, [FP, #-0x48]
//  0x41f5e0: stur w0, [x1, #0xb]
//  0x41f5e4: ldur x0, [FP, #-8]
//  0x41f5e8: cmp w0, w22
//  0x41f5ec: b.ne #0x41f5f8
//  0x41f5f0: mov x5, NULL
//  0x41f5f4: b #0x41f604
//  0x41f5f8: ldur w2, [x0, #0xb]
//  0x41f5fc: add x2, x2, HEAP, lsl #32
//  0x41f600: mov x5, x2
//  0x41f604: ldur x4, [FP, #-0x18]
//  0x41f608: ldur x3, [FP, #-0x30]
//  0x41f60c: ldur x0, [FP, #-0x40]
//  0x41f610: ldur x2, [FP, #-0x28]
//  0x41f614: str x5, [SP]
//  0x41f618: bl #0x2ac0a0
//  0x41f61c: stur x0, [FP, #-8]
//  0x41f620: bl #0x31abec
//  0x41f624: mov x1, x0
//  0x41f628: add x0, NULL, #0x20
//  0x41f62c: stur x1, [FP, #-0x48]
//  0x41f630: stur w0, [x1, #7]
//  0x41f634: ldr x0, [PP, #0x6050]
//  0x41f638: stur w0, [x1, #0xb]
//  0x41f63c: ldr x0, [PP, #0x7598]
//  0x41f640: stur w0, [x1, #0x1f]
//  0x41f644: add x0, PP, #0xe, lsl #12
//  0x41f648: ldr x0, [x0, #0xe40]
//  0x41f64c: stur w0, [x1, #0x23]
//  0x41f650: bl #0x393bf8
//  0x41f654: mov x2, x0
//  0x41f658: ldur x0, [FP, #-8]
//  0x41f65c: stur x2, [FP, #-0x58]
//  0x41f660: stur w0, [x2, #0xb]
//  0x41f664: ldur x0, [FP, #-0x48]
//  0x41f668: stur w0, [x2, #0x13]
//  0x41f66c: add x0, PP, #0xf, lsl #12
//  0x41f670: ldr x0, [x0, #0x230]
//  0x41f674: stur w0, [x2, #0x2b]
//  0x41f678: mov x0, #2
//  0x41f67c: stur w0, [x2, #0x37]
//  0x41f680: add x1, PP, #0xe, lsl #12
//  0x41f684: ldr x1, [x1, #0xad0]
//  0x41f688: bl #0x3a1420
//  0x41f68c: mov x3, x0
//  0x41f690: mov x0, #1
//  0x41f694: stur x3, [FP, #-8]
//  0x41f698: stur x0, [x3, #0x13]
//  0x41f69c: add x0, PP, #0x10, lsl #12
//  0x41f6a0: ldr x0, [x0, #0x950]
//  0x41f6a4: stur w0, [x3, #0x1b]
//  0x41f6a8: ldur x0, [FP, #-0x58]
//  0x41f6ac: stur w0, [x3, #0xb]
//  0x41f6b0: mov x1, NULL
//  0x41f6b4: mov x2, #4
//  0x41f6b8: bl #0x61f920
//  0x41f6bc: mov x2, x0
//  0x41f6c0: ldur x0, [FP, #-0x50]
//  0x41f6c4: stur x2, [FP, #-0x48]
//  0x41f6c8: stur w0, [x2, #0xf]
//  0x41f6cc: ldur x0, [FP, #-8]
//  0x41f6d0: stur w0, [x2, #0x13]
//  0x41f6d4: ldr x1, [PP, #0x5c58]
//  0x41f6d8: bl #0x61e854
//  0x41f6dc: mov x1, x0
//  0x41f6e0: ldur x0, [FP, #-0x48]
//  0x41f6e4: stur x1, [FP, #-8]
//  0x41f6e8: stur w0, [x1, #0xf]
//  0x41f6ec: mov x2, #4
//  0x41f6f0: stur w2, [x1, #0xb]
//  0x41f6f4: bl #0x3a1414
//  0x41f6f8: mov x1, x0
//  0x41f6fc: ldr x0, [PP, #0x5140]
//  0x41f700: stur x1, [FP, #-0x48]
//  0x41f704: stur w0, [x1, #0xf]
//  0x41f708: add x0, PP, #0xe, lsl #12
//  0x41f70c: ldr x0, [x0, #0xae0]
//  0x41f710: stur w0, [x1, #0x13]
//  0x41f714: add x2, PP, #0xe, lsl #12
//  0x41f718: ldr x2, [x2, #0xb08]
//  0x41f71c: stur w2, [x1, #0x17]
//  0x41f720: add x2, PP, #0xe, lsl #12
//  0x41f724: ldr x2, [x2, #0xb60]
//  0x41f728: stur w2, [x1, #0x1b]
//  0x41f72c: add x3, PP, #0xe, lsl #12
//  0x41f730: ldr x3, [x3, #0xaf8]
//  0x41f734: stur w3, [x1, #0x23]
//  0x41f738: add x4, PP, #0xa, lsl #12
//  0x41f73c: ldr x4, [x4, #0xa8]
//  0x41f740: stur w4, [x1, #0x2b]
//  0x41f744: stur xzr, [x1, #0x2f]
//  0x41f748: ldur x5, [FP, #-8]
//  0x41f74c: stur w5, [x1, #0xb]
//  0x41f750: bl #0x391c0c
//  0x41f754: mov x1, x0
//  0x41f758: add x0, PP, #0x14, lsl #12
//  0x41f75c: ldr x0, [x0, #0x968]
//  0x41f760: stur x1, [FP, #-8]
//  0x41f764: stur w0, [x1, #0xf]
//  0x41f768: ldur x0, [FP, #-0x48]
//  0x41f76c: stur w0, [x1, #0xb]
//  0x41f770: bl #0x41dfa8
//  0x41f774: mov x3, x0
//  0x41f778: ldur x0, [FP, #-8]
//  0x41f77c: stur x3, [FP, #-0x48]
//  0x41f780: stur w0, [x3, #0xb]
//  0x41f784: ldr x0, [PP, #0x56b8]
//  0x41f788: stur w0, [x3, #0xf]
//  0x41f78c: ldur x0, [FP, #-0x28]
//  0x41f790: stur w0, [x3, #0x13]
//  0x41f794: add x0, NULL, #0x30
//  0x41f798: stur w0, [x3, #0x17]
//  0x41f79c: stur w0, [x3, #0x1b]
//  0x41f7a0: stur w0, [x3, #0x1f]
//  0x41f7a4: stur w0, [x3, #0x23]
//  0x41f7a8: stur w0, [x3, #0x27]
//  0x41f7ac: mov x1, NULL
//  0x41f7b0: mov x2, #6
//  0x41f7b4: bl #0x61f920
//  0x41f7b8: mov x2, x0
//  0x41f7bc: ldur x0, [FP, #-0x30]
//  0x41f7c0: stur x2, [FP, #-8]
//  0x41f7c4: stur w0, [x2, #0xf]
//  0x41f7c8: ldur x0, [FP, #-0x40]
//  0x41f7cc: stur w0, [x2, #0x13]
//  0x41f7d0: ldur x0, [FP, #-0x48]
//  0x41f7d4: stur w0, [x2, #0x17]
//  0x41f7d8: ldr x1, [PP, #0x5c58]
//  0x41f7dc: bl #0x61e854
//  0x41f7e0: mov x1, x0
//  0x41f7e4: ldur x0, [FP, #-8]
//  0x41f7e8: stur x1, [FP, #-0x28]
//  0x41f7ec: stur w0, [x1, #0xf]
//  0x41f7f0: mov x0, #6
//  0x41f7f4: stur w0, [x1, #0xb]
//  0x41f7f8: bl #0x39310c
//  0x41f7fc: mov x1, x0
//  0x41f800: add x0, PP, #0xa, lsl #12
//  0x41f804: ldr x0, [x0, #0x858]
//  0x41f808: stur x1, [FP, #-8]
//  0x41f80c: stur w0, [x1, #0xf]
//  0x41f810: add x0, PP, #0xe, lsl #12
//  0x41f814: ldr x0, [x0, #0xae0]
//  0x41f818: stur w0, [x1, #0x13]
//  0x41f81c: add x0, PP, #0xe, lsl #12
//  0x41f820: ldr x0, [x0, #0xae8]
//  0x41f824: stur w0, [x1, #0x17]
//  0x41f828: add x0, PP, #0xe, lsl #12
//  0x41f82c: ldr x0, [x0, #0xb60]
//  0x41f830: stur w0, [x1, #0x1b]
//  0x41f834: add x0, PP, #0xe, lsl #12
//  0x41f838: ldr x0, [x0, #0xaf8]
//  0x41f83c: stur w0, [x1, #0x23]
//  0x41f840: add x0, PP, #0xa, lsl #12
//  0x41f844: ldr x0, [x0, #0xa8]
//  0x41f848: stur w0, [x1, #0x2b]
//  0x41f84c: stur xzr, [x1, #0x2f]
//  0x41f850: ldur x0, [FP, #-0x28]
//  0x41f854: stur w0, [x1, #0xb]
//  0x41f858: bl #0x391a04
//  0x41f85c: stur x0, [FP, #-0x28]
//  0x41f860: ldur BARRIER, [FP, #-0x38]
//  0x41f864: ldur LR, [FP, #-8]
//  0x41f868: stp LR, BARRIER, [SP]
//  0x41f86c: mov x1, x0
//  0x41f870: add x4, PP, #0x14, lsl #12
//  0x41f874: ldr x4, [x4, #0x8c8]
//  0x41f878: bl #0x391490
//  0x41f87c: mov x1, NULL
//  0x41f880: mov x2, #4
//  0x41f884: bl #0x61f920
//  0x41f888: mov x2, x0
//  0x41f88c: ldur x0, [FP, #-0x18]
//  0x41f890: stur x2, [FP, #-8]
//  0x41f894: stur w0, [x2, #0xf]
//  0x41f898: ldur x0, [FP, #-0x28]
//  0x41f89c: stur w0, [x2, #0x13]
//  0x41f8a0: ldr x1, [PP, #0x5c58]
//  0x41f8a4: bl #0x61e854
//  0x41f8a8: mov x1, x0
//  0x41f8ac: ldur x0, [FP, #-8]
//  0x41f8b0: stur x1, [FP, #-0x18]
//  0x41f8b4: stur w0, [x1, #0xf]
//  0x41f8b8: mov x0, #4
//  0x41f8bc: stur w0, [x1, #0xb]
//  0x41f8c0: bl #0x39e6f4
//  0x41f8c4: mov x1, x0
//  0x41f8c8: add x0, PP, #0xe, lsl #12
//  0x41f8cc: ldr x0, [x0, #0xf00]
//  0x41f8d0: stur x1, [FP, #-8]
//  0x41f8d4: stur w0, [x1, #0xf]
//  0x41f8d8: add x0, PP, #0xe, lsl #12
//  0x41f8dc: ldr x0, [x0, #0xf08]
//  0x41f8e0: stur w0, [x1, #0x17]
//  0x41f8e4: add x0, PP, #0xe, lsl #12
//  0x41f8e8: ldr x0, [x0, #0xf10]
//  0x41f8ec: stur w0, [x1, #0x1b]
//  0x41f8f0: ldur x0, [FP, #-0x18]
//  0x41f8f4: stur w0, [x1, #0xb]
//  0x41f8f8: bl #0x3a1d94
//  0x41f8fc: ldur x2, [FP, #-0x20]
//  0x41f900: add x1, PP, #0x15, lsl #12
//  0x41f904: ldr x1, [x1, #0x1e8]
//  0x41f908: stur x0, [FP, #-0x18]
//  0x41f90c: bl #0x61ec54
//  0x41f910: ldur BARRIER, [FP, #-8]
//  0x41f914: stp BARRIER, x0, [SP]
//  0x41f918: ldur x1, [FP, #-0x18]
//  0x41f91c: add x4, PP, #0xc, lsl #12
//  0x41f920: ldr x4, [x4, #0x208]
//  0x41f924: bl #0x3a18c4
//  0x41f928: bl #0x391c0c
//  0x41f92c: add x1, PP, #0x15, lsl #12
//  0x41f930: ldr x1, [x1, #0x1f0]
//  0x41f934: stur w1, [x0, #0xf]
//  0x41f938: ldur x1, [FP, #-0x18]
//  0x41f93c: stur w1, [x0, #0xb]
//  0x41f940: mov SP, FP
//  0x41f944: ldp FP, LR, [SP], #0x10
//  0x41f948: ret 
//  0x41f94c: bl #0x61fa28
//  0x41f950: b #0x41f0ec
//  0x41f954: bl #0x61ffd0
//  0x41f958: bl #0x61ffd0
//  0x41f95c: add x9, PP, #0x11, lsl #12
//  0x41f960: ldr x9, [x9, #0xae8]
//  0x41f964: bl #0x620258
//  0x41f968: add x9, PP, #0x15, lsl #12
//  0x41f96c: ldr x9, [x9, #0x1f8]
//  0x41f970: bl #0x620258
//
dynamic GameFruitLandState_buildFruitItem() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w5;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41f0cc
  // frame: FP = SP // 0x41f0d0
  // frame: SP = SP - 0x68 // 0x41f0d4
  local_m8 = x1; // 0x41f0d8
  local_m10 = x2; // 0x41f0dc
  BARRIER = mem(THR, 0x38); // 0x41f0e0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41f94c
  }
  x1 = 2; // 0x41f0ec
  sub_0x61e890(); // 0x41f0f0
  x3 = local_m8; // 0x41f0f8
  x4 = x0; // 0x41f0f4
  local_m20 = x4; // 0x41f0fc
  memSet(x4, 0xf, w3); // 0x41f100
  x0 = (((local_m10) & 0x7fffffff) << 1) /* signed */; // 0x41f108
  x2 = local_m10; // 0x41f104
  if (x2 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x41f114
    memSet(x0, 7, x2); // 0x41f118
  }
  memSet(x4, 0x13, w0); // 0x41f11c
  w0 = mem(x3, 0xb); // 0x41f120
  x0 = ((mem(x3, 0xb)) & 0xffffffff) + (HEAP << 32); // 0x41f124
  if (w0 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x41f954
  } else {
    w0 = mem(((w5 & 0xffffffff) + (HEAP << 32)), 0x53); // 0x41f138
    x0 = ((mem(((w5 & 0xffffffff) + (HEAP << 32)), 0x53)) & 0xffffffff) + (HEAP << 32); // 0x41f13c
    x5 = (w5 & 0xffffffff) + (HEAP << 32); // 0x41f134
    x6 = mem((((mem(((w5 & 0xffffffff) + (HEAP << 32)), 0x53)) & 0xffffffff) + (HEAP << 32)), 7); // 0x41f140
    if (x6 > 1) {
      x0 = ((x6 & 0x7fffffff) << 1) /* signed */; // 0x41f170
      if (x6 == x0) {
      } else {
        AllocationStub__Mint() /* 0x61fba8 */; // 0x41f17c
        memSet(x0, 7, x6); // 0x41f180
      }
      if (w0 != 4) {
        x0 = -1; // 0x41f194
      } else {
        x0 = mem(x5, 0x4b); // 0x41f18c
      }
      BARRIER = NULL + 0x20; // 0x41f19c
      x1 = x5; // 0x41f1a8
      x17 = NULL + 0x30; // 0x41f1a0
      x6 = (x0 == x2) ? (NULL + 0x20) : (NULL + 0x30); // 0x41f1a4
      local_m18 = x6; // 0x41f1ac
      GameFruitNotifier_getCurrentBetItem() /* 0x41faec */; // 0x41f1b0
      x0 = local_m8; // 0x41f1b8
      x3 = x0; // 0x41f1b4
      local_m28 = x3; // 0x41f1bc
      w1 = mem(x0, 0xb); // 0x41f1c0
      x1 = ((mem(x0, 0xb)) & 0xffffffff) + (HEAP << 32); // 0x41f1c4
      if (w1 == w22) {
        NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x41f958
      } else {
        w1 = mem((local_m20), 0x13); // 0x41f1dc
        x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x41f1d4
        x1 = ((mem((local_m20), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x41f1e0
        x2 = ((((mem((local_m20), 0x13)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x41f1e4
        x4 = local_m20; // 0x41f1d8
        if (x1 & (1 << 0) == 0) {
        } else {
          x2 = mem(x1, 7); // 0x41f1ec
        }
        x1 = x0; // 0x41f1f0
        GameFruitNotifier_getItemBetCoin() /* 0x41f974 */; // 0x41f1f4
        local_m8 = x0; // 0x41f1f8
        AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x41f1fc
        d0 = 9218868437227405312; // 0x41f200
        local_m30 = x0; // 0x41f204
        memSet(x0, 7, d0); // 0x41f208
        memSet(x0, 0xf, d0); // 0x41f20c
        memSet(x0, 0x17, d0); // 0x41f210
        memSet(x0, 0x1f, d0); // 0x41f214
        x1 = local_m18; // 0x41f218
        if (x1 & (1 << 4) != 0) {
          x1 = NULL; // 0x41f27c
        } else {
          AllocationStub_Color() /* 0x31d844 */; // 0x41f220
          x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x41f228
          x1 = x0; // 0x41f224
          memSet(x1, 0x27, w0); // 0x41f22c
          d0 = 1.00000000 /* bits */; // 0x41f230
          memSet(x1, 7, d0); // 0x41f234
          memSet(x1, 0xf, d0); // 0x41f238
          d1 = 4606935162349887263; // 0x41f240
          x17 = PP + 0x15000; // 0x41f23c
          memSet(x1, 0x17, d1); // 0x41f244
          d1 = 4593689281092915216; // 0x41f24c
          x17 = PP + 0xc000; // 0x41f248
          memSet(x1, 0x1f, d1); // 0x41f250
          BARRIER = mem((PP + 0x12000), 0x3a0) /* Double */; // 0x41f258
          local_0 = BARRIER; // 0x41f25c
          x1 = NULL; // 0x41f264
          x2 = x1; // 0x41f260
          x4 = mem((PP + 0xf000), 0x818) /* ImmutableArray */; // 0x41f26c
          Border_factory_ctor_all() /* 0x391e08 */; // 0x41f270
          x1 = x0; // 0x41f274
        }
        x0 = local_m18; // 0x41f280
        local_m38 = x1; // 0x41f284
        if (x0 & (1 << 4) != 0) {
          x3 = NULL; // 0x41f2c4
        } else {
          AllocationStub_Radius() /* 0x352b04 */; // 0x41f28c
          d0 = 10.00000000 /* bits */; // 0x41f290
          local_m18 = x0; // 0x41f294
          memSet(x0, 7, d0); // 0x41f298
          memSet(x0, 0xf, d0); // 0x41f29c
          AllocationStub_BorderRadius() /* 0x392f28 */; // 0x41f2a0
          x0 = local_m18; // 0x41f2a8
          x1 = x0; // 0x41f2a4
          memSet(x1, 7, w0); // 0x41f2ac
          memSet(x1, 0xb, w0); // 0x41f2b0
          memSet(x1, 0xf, w0); // 0x41f2b4
          memSet(x1, 0x13, w0); // 0x41f2b8
          x3 = x1; // 0x41f2bc
        }
        x0 = local_m38; // 0x41f2cc
        x2 = local_m28; // 0x41f2c8
        local_m18 = x3; // 0x41f2d0
        x1 = mem((PP + 0xe000), 0xed0) /* TypeArguments */; // 0x41f2d8
        AllocationStub_AssetImage() /* 0x3b5478 */; // 0x41f2dc
        x0 = "assets/images/3.0x/game_fruit_img_choice_bg.webp" /* pp+0x151b8 */; // 0x41f2e8
        x1 = x0; // 0x41f2e0
        local_m40 = x1; // 0x41f2ec
        memSet(x1, 0xb, w0); // 0x41f2f0
        AllocationStub_DecorationImage() /* 0x3b546c */; // 0x41f2f4
        x0 = local_m40; // 0x41f2fc
        x1 = x0; // 0x41f2f8
        local_m48 = x1; // 0x41f300
        memSet(x1, 7, w0); // 0x41f304
        x0 = mem((PP + 0xf000), 0x1e0) /* Obj!BoxFit@12286  */; // 0x41f30c
        memSet(x1, 0x13, w0); // 0x41f310
        x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x41f318
        memSet(x1, 0x17, w0); // 0x41f31c
        x0 = mem((PP + 0xe000), 0xee8) /* Obj!ImageRepeat@12281  */; // 0x41f324
        memSet(x1, 0x1f, w0); // 0x41f328
        x0 = NULL + 0x30; // 0x41f32c
        memSet(x1, 0x23, w0); // 0x41f330
        d0 = 1.00000000 /* bits */; // 0x41f334
        memSet(x1, 0x27, d0); // 0x41f338
        memSet(x1, 0x2f, d0); // 0x41f33c
        x2 = mem((PP + 0xe000), 0xef0) /* Obj!FilterQuality@12349  */; // 0x41f344
        memSet(x1, 0x37, w2); // 0x41f348
        memSet(x1, 0x3b, w0); // 0x41f34c
        memSet(x1, 0x3f, w0); // 0x41f350
        AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x41f354
        x0 = local_m48; // 0x41f35c
        x1 = x0; // 0x41f358
        local_m40 = x1; // 0x41f360
        memSet(x1, 0xb, w0); // 0x41f364
        x0 = local_m38; // 0x41f368
        memSet(x1, 0xf, w0); // 0x41f36c
        x0 = local_m18; // 0x41f370
        memSet(x1, 0x13, w0); // 0x41f374
        x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x41f37c
        memSet(x1, 0x23, w0); // 0x41f380
        AllocationStub_Container() /* 0x391a04 */; // 0x41f384
        local_m18 = x0; // 0x41f388
        BARRIER = local_m30; // 0x41f38c
        LR = local_m40; // 0x41f390
        // frame: LR, BARRIER, mem(SP) // 0x41f394
        x1 = x0; // 0x41f398
        x4 = mem((PP + 0x15000), 0x1c0) /* ImmutableArray */; // 0x41f3a0
        Container_ctor() /* 0x391490 */; // 0x41f3a4
        AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x41f3a8
        d0 = 9218868437227405312; // 0x41f3ac
        local_m38 = x0; // 0x41f3b0
        memSet(x0, 7, d0); // 0x41f3b4
        memSet(x0, 0xf, d0); // 0x41f3b8
        memSet(x0, 0x17, d0); // 0x41f3bc
        memSet(x0, 0x1f, d0); // 0x41f3c0
        x1 = local_m28; // 0x41f3c4
        if (w1 != w22) {
          BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x41f3e0
          x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x41f3dc
          if (w2 == w16) {
            x9 = mem((PP + 0x11000), 0xae8) /* Field */; // 0x41f960
            LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x41f964
          } else {
            if (w2 != w22) {
            } else {
              x2 = "" /* pp+0x148 */; // 0x41f3f4
            }
            local_m30 = x2; // 0x41f3f8
            AllocationStub_SOImage() /* 0x3b6694 */; // 0x41f3fc
            x0 = local_m30; // 0x41f404
            x1 = x0; // 0x41f400
            local_m40 = x1; // 0x41f408
            memSet(x1, 0xb, w0); // 0x41f40c
            x0 = mem((PP + 0x10000), 0x350) /* Double */; // 0x41f414
            memSet(x1, 0xf, w0); // 0x41f418
            memSet(x1, 0x13, w0); // 0x41f41c
            x0 = NULL + 0x30; // 0x41f420
            memSet(x1, 0x1b, w0); // 0x41f424
            memSet(x1, 0x1f, w0); // 0x41f428
            AllocationStub_Padding() /* 0x391c0c */; // 0x41f42c
            x0 = mem((PP + 0x15000), 0x1c8) /* Obj!EdgeInsets@11ba4  */; // 0x41f438
            x1 = x0; // 0x41f430
            local_m30 = x1; // 0x41f43c
            memSet(x1, 0xf, w0); // 0x41f440
            x0 = local_m40; // 0x41f444
            memSet(x1, 0xb, w0); // 0x41f448
            x0 = local_m28; // 0x41f44c
            if (w0 != w22) {
              BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x41f468
              x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x41f464
              if (w2 == w16) {
                x9 = mem((PP + 0x15000), 0x1f8) /* Field */; // 0x41f96c
                LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x41f970
              }
              local_0 = x2; // 0x41f474
              StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x41f478
              x1 = NULL; // 0x41f47c
              x2 = 2; // 0x41f480
              local_m28 = x0; // 0x41f484
              sub_0x61f920(); // 0x41f488
              x0 = local_m28; // 0x41f490
              x2 = x0; // 0x41f48c
              local_m40 = x2; // 0x41f494
              memSet(x2, 0xf, w0); // 0x41f498
              x1 = mem(PP, 0x868) /* TypeArguments */; // 0x41f49c
              AllocationStub__GrowableList() /* 0x61e854 */; // 0x41f4a0
              x0 = local_m40; // 0x41f4a8
              x1 = x0; // 0x41f4a4
              memSet(x1, 0xf, w0); // 0x41f4ac
              x0 = 2; // 0x41f4b0
              memSet(x1, 0xb, w0); // 0x41f4b4
              local_0 = x1; // 0x41f4b8
              x1 = "virtual_party_fruitland_page_fruit_odds" /* pp+0xc8d0 */; // 0x41f4c0
              x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x41f4c8
              getString() /* 0x3a1dcc */; // 0x41f4cc
              x2 = x0; // 0x41f4d0
            } else {
              x2 = "" /* pp+0x148 */; // 0x41f458
            }
            x0 = local_m8; // 0x41f4d4
            local_m28 = x2; // 0x41f4d8
            x1 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x41f4dc
            TextStyles_commonContent() /* 0x3b7e50 */; // 0x41f4e0
            local_m40 = x0; // 0x41f4e4
            AllocationStub_Text() /* 0x393bf8 */; // 0x41f4e8
            x0 = local_m28; // 0x41f4f0
            x1 = x0; // 0x41f4ec
            local_m48 = x1; // 0x41f4f4
            memSet(x1, 0xb, w0); // 0x41f4f8
            x0 = local_m40; // 0x41f4fc
            memSet(x1, 0x13, w0); // 0x41f500
            x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x41f508
            memSet(x1, 0x2b, w0); // 0x41f50c
            x2 = 2; // 0x41f510
            memSet(x1, 0x37, w2); // 0x41f514
            AllocationStub_Padding() /* 0x391c0c */; // 0x41f518
            x0 = mem((PP + 0x15000), 0x1d0) /* Obj!EdgeInsets@11ba3  */; // 0x41f524
            x1 = x0; // 0x41f51c
            local_m40 = x1; // 0x41f528
            memSet(x1, 0xf, w0); // 0x41f52c
            x0 = local_m48; // 0x41f530
            memSet(x1, 0xb, w0); // 0x41f534
            x0 = local_m8; // 0x41f538
            if (w0 != w22) {
              x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x41f550
              if (w2 == w22) {
                x2 = NULL + 0x30; // 0x41f57c
              } else {
                x3 = (x2 >> 1) & 0x7fffffff; // 0x41f55c
                if (x2 & (1 << 0) == 0) {
                } else {
                  x3 = mem(x2, 7); // 0x41f564
                }
                BARRIER = NULL + 0x20; // 0x41f56c
                x17 = NULL + 0x30; // 0x41f570
                x2 = (x3 > 0) ? (NULL + 0x20) : (NULL + 0x30); // 0x41f574
              }
            } else {
              x2 = NULL; // 0x41f544
            }
            if (w2 != w22) {
            } else {
              x2 = NULL + 0x30; // 0x41f588
            }
            local_m28 = x2; // 0x41f58c
            AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x41f590
            x0 = "assets/images/3.0x/party_icon_soulcoin_big.webp" /* pp+0xf248 */; // 0x41f59c
            x1 = x0; // 0x41f594
            local_m48 = x1; // 0x41f5a0
            memSet(x1, 0xb, w0); // 0x41f5a4
            x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x41f5ac
            memSet(x1, 0xf, w0); // 0x41f5b0
            x0 = mem((PP + 0x15000), 0x1d8) /* Double */; // 0x41f5b8
            memSet(x1, 0x13, w0); // 0x41f5bc
            memSet(x1, 0x17, w0); // 0x41f5c0
            AllocationStub_Padding() /* 0x391c0c */; // 0x41f5c4
            x0 = mem((PP + 0x15000), 0x1e0) /* Obj!EdgeInsetsDirectional@11b76  */; // 0x41f5d0
            x1 = x0; // 0x41f5c8
            local_m50 = x1; // 0x41f5d4
            memSet(x1, 0xf, w0); // 0x41f5d8
            x0 = local_m48; // 0x41f5dc
            memSet(x1, 0xb, w0); // 0x41f5e0
            x0 = local_m8; // 0x41f5e4
            if (w0 != w22) {
              x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x41f5fc
              x5 = (w2 & 0xffffffff) + (HEAP << 32); // 0x41f600
            } else {
              x5 = NULL; // 0x41f5f0
            }
            x0 = local_m40; // 0x41f60c
            x2 = local_m28; // 0x41f610
            x3 = local_m30; // 0x41f608
            x4 = local_m18; // 0x41f604
            local_0 = x5; // 0x41f614
            StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x41f618
            local_m8 = x0; // 0x41f61c
            AllocationStub_TextStyle() /* 0x31abec */; // 0x41f620
            x0 = NULL + 0x20; // 0x41f628
            x1 = x0; // 0x41f624
            local_m48 = x1; // 0x41f62c
            memSet(x1, 7, w0); // 0x41f630
            x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x41f634
            memSet(x1, 0xb, w0); // 0x41f638
            x0 = mem(PP, 0x7598) /* Double */; // 0x41f63c
            memSet(x1, 0x1f, w0); // 0x41f640
            x0 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x41f648
            memSet(x1, 0x23, w0); // 0x41f64c
            AllocationStub_Text() /* 0x393bf8 */; // 0x41f650
            x0 = local_m8; // 0x41f658
            x2 = x0; // 0x41f654
            local_m58 = x2; // 0x41f65c
            memSet(x2, 0xb, w0); // 0x41f660
            x0 = local_m48; // 0x41f664
            memSet(x2, 0x13, w0); // 0x41f668
            x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x41f670
            memSet(x2, 0x2b, w0); // 0x41f674
            x0 = 2; // 0x41f678
            memSet(x2, 0x37, w0); // 0x41f67c
            x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x41f684
            AllocationStub_Flexible() /* 0x3a1420 */; // 0x41f688
            x0 = 1; // 0x41f690
            x3 = x0; // 0x41f68c
            local_m8 = x3; // 0x41f694
            memSet(x3, 0x13, x0); // 0x41f698
            x0 = mem((PP + 0x10000), 0x950) /* Obj!FlexFit@12273  */; // 0x41f6a0
            memSet(x3, 0x1b, w0); // 0x41f6a4
            x0 = local_m58; // 0x41f6a8
            memSet(x3, 0xb, w0); // 0x41f6ac
            x1 = NULL; // 0x41f6b0
            x2 = 4; // 0x41f6b4
            sub_0x61f920(); // 0x41f6b8
            x0 = local_m50; // 0x41f6c0
            x2 = x0; // 0x41f6bc
            local_m48 = x2; // 0x41f6c4
            memSet(x2, 0xf, w0); // 0x41f6c8
            x0 = local_m8; // 0x41f6cc
            memSet(x2, 0x13, w0); // 0x41f6d0
            x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x41f6d4
            AllocationStub__GrowableList() /* 0x61e854 */; // 0x41f6d8
            x0 = local_m48; // 0x41f6e0
            x1 = x0; // 0x41f6dc
            local_m8 = x1; // 0x41f6e4
            memSet(x1, 0xf, w0); // 0x41f6e8
            x2 = 4; // 0x41f6ec
            memSet(x1, 0xb, w2); // 0x41f6f0
            AllocationStub_Row() /* 0x3a1414 */; // 0x41f6f4
            x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x41f6fc
            x1 = x0; // 0x41f6f8
            local_m48 = x1; // 0x41f700
            memSet(x1, 0xf, w0); // 0x41f704
            x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x41f70c
            memSet(x1, 0x13, w0); // 0x41f710
            x2 = mem((PP + 0xe000), 0xb08) /* Obj!MainAxisSize@12270  */; // 0x41f718
            memSet(x1, 0x17, w2); // 0x41f71c
            x2 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x41f724
            memSet(x1, 0x1b, w2); // 0x41f728
            x3 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x41f730
            memSet(x1, 0x23, w3); // 0x41f734
            x4 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x41f73c
            memSet(x1, 0x2b, w4); // 0x41f740
            memSet(x1, 0x2f, xzr); // 0x41f744
            x5 = local_m8; // 0x41f748
            memSet(x1, 0xb, w5); // 0x41f74c
            AllocationStub_Padding() /* 0x391c0c */; // 0x41f750
            x0 = mem((PP + 0x14000), 0x968) /* Obj!EdgeInsets@11ba5  */; // 0x41f75c
            x1 = x0; // 0x41f754
            local_m8 = x1; // 0x41f760
            memSet(x1, 0xf, w0); // 0x41f764
            x0 = local_m48; // 0x41f768
            memSet(x1, 0xb, w0); // 0x41f76c
            AllocationStub_Visibility() /* 0x41dfa8 */; // 0x41f770
            x0 = local_m8; // 0x41f778
            x3 = x0; // 0x41f774
            local_m48 = x3; // 0x41f77c
            memSet(x3, 0xb, w0); // 0x41f780
            x0 = mem(PP, 0x56b8) /* Obj!SizedBox@1200e  */; // 0x41f784
            memSet(x3, 0xf, w0); // 0x41f788
            x0 = local_m28; // 0x41f78c
            memSet(x3, 0x13, w0); // 0x41f790
            x0 = NULL + 0x30; // 0x41f794
            memSet(x3, 0x17, w0); // 0x41f798
            memSet(x3, 0x1b, w0); // 0x41f79c
            memSet(x3, 0x1f, w0); // 0x41f7a0
            memSet(x3, 0x23, w0); // 0x41f7a4
            memSet(x3, 0x27, w0); // 0x41f7a8
            x1 = NULL; // 0x41f7ac
            x2 = 6; // 0x41f7b0
            sub_0x61f920(); // 0x41f7b4
            x0 = local_m30; // 0x41f7bc
            x2 = x0; // 0x41f7b8
            local_m8 = x2; // 0x41f7c0
            memSet(x2, 0xf, w0); // 0x41f7c4
            x0 = local_m40; // 0x41f7c8
            memSet(x2, 0x13, w0); // 0x41f7cc
            x0 = local_m48; // 0x41f7d0
            memSet(x2, 0x17, w0); // 0x41f7d4
            x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x41f7d8
            AllocationStub__GrowableList() /* 0x61e854 */; // 0x41f7dc
            x0 = local_m8; // 0x41f7e4
            x1 = x0; // 0x41f7e0
            local_m28 = x1; // 0x41f7e8
            memSet(x1, 0xf, w0); // 0x41f7ec
            x0 = 6; // 0x41f7f0
            memSet(x1, 0xb, w0); // 0x41f7f4
            AllocationStub_Column() /* 0x39310c */; // 0x41f7f8
            x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x41f804
            x1 = x0; // 0x41f7fc
            local_m8 = x1; // 0x41f808
            memSet(x1, 0xf, w0); // 0x41f80c
            x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x41f814
            memSet(x1, 0x13, w0); // 0x41f818
            x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x41f820
            memSet(x1, 0x17, w0); // 0x41f824
            x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x41f82c
            memSet(x1, 0x1b, w0); // 0x41f830
            x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x41f838
            memSet(x1, 0x23, w0); // 0x41f83c
            x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x41f844
            memSet(x1, 0x2b, w0); // 0x41f848
            memSet(x1, 0x2f, xzr); // 0x41f84c
            x0 = local_m28; // 0x41f850
            memSet(x1, 0xb, w0); // 0x41f854
            AllocationStub_Container() /* 0x391a04 */; // 0x41f858
            local_m28 = x0; // 0x41f85c
            BARRIER = local_m38; // 0x41f860
            LR = local_m8; // 0x41f864
            // frame: LR, BARRIER, mem(SP) // 0x41f868
            x1 = x0; // 0x41f86c
            x4 = mem((PP + 0x14000), 0x8c8) /* ImmutableArray */; // 0x41f874
            Container_ctor() /* 0x391490 */; // 0x41f878
            x1 = NULL; // 0x41f87c
            x2 = 4; // 0x41f880
            sub_0x61f920(); // 0x41f884
            x0 = local_m18; // 0x41f88c
            x2 = x0; // 0x41f888
            local_m8 = x2; // 0x41f890
            memSet(x2, 0xf, w0); // 0x41f894
            x0 = local_m28; // 0x41f898
            memSet(x2, 0x13, w0); // 0x41f89c
            x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x41f8a0
            AllocationStub__GrowableList() /* 0x61e854 */; // 0x41f8a4
            x0 = local_m8; // 0x41f8ac
            x1 = x0; // 0x41f8a8
            local_m18 = x1; // 0x41f8b0
            memSet(x1, 0xf, w0); // 0x41f8b4
            x0 = 4; // 0x41f8b8
            memSet(x1, 0xb, w0); // 0x41f8bc
            AllocationStub_Stack() /* 0x39e6f4 */; // 0x41f8c0
            x0 = mem((PP + 0xe000), 0xf00) /* Obj!AlignmentDirectional@11bd4  */; // 0x41f8cc
            x1 = x0; // 0x41f8c4
            local_m8 = x1; // 0x41f8d0
            memSet(x1, 0xf, w0); // 0x41f8d4
            x0 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x41f8dc
            memSet(x1, 0x17, w0); // 0x41f8e0
            x0 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x41f8e8
            memSet(x1, 0x1b, w0); // 0x41f8ec
            x0 = local_m18; // 0x41f8f0
            memSet(x1, 0xb, w0); // 0x41f8f4
            sub_0x3a1d94(); // 0x41f8f8
            x1 = mem((PP + 0x15000), 0x1e8) /* Function */; // 0x41f904
            x2 = local_m20; // 0x41f8fc
            local_m18 = x0; // 0x41f908
            AllocationStub__Closure() /* 0x61ec54 */; // 0x41f90c
            BARRIER = local_m8; // 0x41f910
            // frame: BARRIER, x0, mem(SP) // 0x41f914
            x1 = local_m18; // 0x41f918
            x4 = mem((PP + 0xc000), 0x208) /* ImmutableArray */; // 0x41f920
            GestureDetector_ctor() /* 0x3a18c4 */; // 0x41f924
            AllocationStub_Padding() /* 0x391c0c */; // 0x41f928
            x1 = mem((PP + 0x15000), 0x1f0) /* Obj!EdgeInsets@11ba2  */; // 0x41f930
            memSet(x0, 0xf, w1); // 0x41f934
            x1 = local_m18; // 0x41f938
            memSet(x0, 0xb, w1); // 0x41f93c
            SP = FP; // 0x41f940
            // frame: FP, LR, mem(SP), 0x10 // 0x41f944
            return;
          }
        } else {
          x2 = NULL; // 0x41f3d0
        }
      }
    } else {
      x0 = ((x6 & 0x7fffffff) << 1) /* signed */; // 0x41f14c
      if (x6 == x0) {
      } else {
        AllocationStub__Mint() /* 0x61fba8 */; // 0x41f158
        memSet(x0, 7, x6); // 0x41f15c
      }
      if (w0 != 2) {
        // duplicated branch body (shared block 0x41f194, joins at 0x41f198; the same code was emitted above)
        x0 = -1; // 0x41f194
      } else {
        x0 = mem(x5, 0x43); // 0x41f168
      }
    }
  }
}

// GameFruitLandState_anon_closure_5
// raw disassembly:
//  0x41fc34: stp FP, LR, [SP, #-0x10]!
//  0x41fc38: mov FP, SP
//  0x41fc3c: ldr x0, [FP, #0x10]
//  0x41fc40: ldur w1, [x0, #0x17]
//  0x41fc44: add x1, x1, HEAP, lsl #32
//  0x41fc48: ldr BARRIER, [THR, #0x38]
//  0x41fc4c: cmp SP, BARRIER
//  0x41fc50: b.ls #0x41fca4
//  0x41fc54: ldur w0, [x1, #0xf]
//  0x41fc58: add x0, x0, HEAP, lsl #32
//  0x41fc5c: ldur w2, [x0, #0xb]
//  0x41fc60: add x2, x2, HEAP, lsl #32
//  0x41fc64: cmp w2, w22
//  0x41fc68: b.eq #0x41fcac
//  0x41fc6c: ldur w0, [x2, #0xb]
//  0x41fc70: add x0, x0, HEAP, lsl #32
//  0x41fc74: ldur w2, [x1, #0x13]
//  0x41fc78: add x2, x2, HEAP, lsl #32
//  0x41fc7c: sbfx x1, x2, #1, #0x1f
//  0x41fc80: tbz w2, #0, #0x41fc88
//  0x41fc84: ldur x1, [x2, #7]
//  0x41fc88: mov x2, x1
//  0x41fc8c: mov x1, x0
//  0x41fc90: bl #0x41fcb0
//  0x41fc94: mov x0, NULL
//  0x41fc98: mov SP, FP
//  0x41fc9c: ldp FP, LR, [SP], #0x10
//  0x41fca0: ret 
//  0x41fca4: bl #0x61fa28
//  0x41fca8: b #0x41fc54
//  0x41fcac: bl #0x61ffd0
//
dynamic GameFruitLandState_anon_closure_5() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41fc34
  BARRIER = mem(THR, 0x38); // 0x41fc48
  // frame: FP = SP // 0x41fc38
  w1 = mem((local_10), 0x17); // 0x41fc40
  x0 = local_10; // 0x41fc3c
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41fc44
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41fca4
  }
  w2 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x41fc5c
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x41fc58
  x2 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x41fc60
  if (w2 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x41fcac
  }
  w2 = mem(x1, 0x13); // 0x41fc74
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x41fc70
  x1 = ((((mem(x1, 0x13)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x41fc7c
  x2 = ((mem(x1, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x41fc78
  if (x2 & (1 << 0) == 0) {
  } else {
    x1 = mem(x2, 7); // 0x41fc84
  }
  x1 = x0; // 0x41fc8c
  x2 = x1; // 0x41fc88
  GameFruitNotifier_updateSelectedIndex() /* 0x41fcb0 */; // 0x41fc90
  SP = FP; // 0x41fc98
  x0 = NULL; // 0x41fc94
  // frame: FP, LR, mem(SP), 0x10 // 0x41fc9c
  return;
}

// GameFruitLandState_dispose
// raw disassembly:
//  0x450c1c: stp FP, LR, [SP, #-0x10]!
//  0x450c20: mov FP, SP
//  0x450c24: sub SP, SP, #8
//  0x450c28: mov x0, x1
//  0x450c2c: stur x1, [FP, #-8]
//  0x450c30: ldr BARRIER, [THR, #0x38]
//  0x450c34: cmp SP, BARRIER
//  0x450c38: b.ls #0x450c68
//  0x450c3c: mov x1, x0
//  0x450c40: bl #0x417f08
//  0x450c44: mov x1, x0
//  0x450c48: bl #0x41a46c
//  0x450c4c: bl #0x450d04
//  0x450c50: ldur x1, [FP, #-8]
//  0x450c54: bl #0x450c70
//  0x450c58: mov x0, NULL
//  0x450c5c: mov SP, FP
//  0x450c60: ldp FP, LR, [SP], #0x10
//  0x450c64: ret 
//  0x450c68: bl #0x61fa28
//  0x450c6c: b #0x450c3c
//
dynamic GameFruitLandState_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x450c1c
  // frame: FP = SP // 0x450c20
  // frame: SP = SP - 8 // 0x450c24
  x0 = x1; // 0x450c28
  local_m8 = x1; // 0x450c2c
  BARRIER = mem(THR, 0x38); // 0x450c30
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x450c68
  }
  x1 = x0; // 0x450c3c
  CupertinoSwitchState_get_value() /* 0x417f08 */; // 0x450c40
  x1 = x0; // 0x450c44
  GameFruitNotifier_release() /* 0x41a46c */; // 0x450c48
  Wakelock_disable() /* 0x450d04 */; // 0x450c4c
  x1 = local_m8; // 0x450c50
  GameFruitLandState_SoulState_TickerProviderStateMixin_dispose() /* 0x450c70 */; // 0x450c54
  SP = FP; // 0x450c5c
  x0 = NULL; // 0x450c58
  // frame: FP, LR, mem(SP), 0x10 // 0x450c60
  return;
}

// GameFruitLandState_initState
// raw disassembly:
//  0x4d3a88: stp FP, LR, [SP, #-0x10]!
//  0x4d3a8c: mov FP, SP
//  0x4d3a90: sub SP, SP, #8
//  0x4d3a94: mov x2, x1
//  0x4d3a98: stur x1, [FP, #-8]
//  0x4d3a9c: ldr BARRIER, [THR, #0x38]
//  0x4d3aa0: cmp SP, BARRIER
//  0x4d3aa4: b.ls #0x4d3b08
//  0x4d3aa8: bl #0x4d41b8
//  0x4d3aac: ldur x0, [FP, #-8]
//  0x4d3ab0: ldur w1, [x0, #0xb]
//  0x4d3ab4: add x1, x1, HEAP, lsl #32
//  0x4d3ab8: cmp w1, w22
//  0x4d3abc: b.eq #0x4d3b10
//  0x4d3ac0: ldur w2, [x1, #0xb]
//  0x4d3ac4: add x2, x2, HEAP, lsl #32
//  0x4d3ac8: mov x1, x2
//  0x4d3acc: mov x2, x0
//  0x4d3ad0: bl #0x4d3fe4
//  0x4d3ad4: ldur x0, [FP, #-8]
//  0x4d3ad8: ldur w1, [x0, #0xb]
//  0x4d3adc: add x1, x1, HEAP, lsl #32
//  0x4d3ae0: cmp w1, w22
//  0x4d3ae4: b.eq #0x4d3b14
//  0x4d3ae8: ldur w0, [x1, #0xb]
//  0x4d3aec: add x0, x0, HEAP, lsl #32
//  0x4d3af0: mov x1, x0
//  0x4d3af4: bl #0x4d3b18
//  0x4d3af8: mov x0, NULL
//  0x4d3afc: mov SP, FP
//  0x4d3b00: ldp FP, LR, [SP], #0x10
//  0x4d3b04: ret 
//  0x4d3b08: bl #0x61fa28
//  0x4d3b0c: b #0x4d3aa8
//  0x4d3b10: bl #0x61ffd0
//  0x4d3b14: bl #0x61ffd0
//
dynamic GameFruitLandState_initState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d3a88
  // frame: FP = SP // 0x4d3a8c
  // frame: SP = SP - 8 // 0x4d3a90
  x2 = x1; // 0x4d3a94
  local_m8 = x1; // 0x4d3a98
  BARRIER = mem(THR, 0x38); // 0x4d3a9c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d3b08
  }
  Wakelock_enable() /* 0x4d41b8 */; // 0x4d3aa8
  w1 = mem((local_m8), 0xb); // 0x4d3ab0
  x0 = local_m8; // 0x4d3aac
  x1 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x4d3ab4
  if (w1 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d3b10
  } else {
    x1 = (w2 & 0xffffffff) + (HEAP << 32); // 0x4d3ac8
    x2 = x0; // 0x4d3acc
    GameFruitNotifier_initAnimation() /* 0x4d3fe4 */; // 0x4d3ad0
    w1 = mem((local_m8), 0xb); // 0x4d3ad8
    x0 = local_m8; // 0x4d3ad4
    x1 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x4d3adc
    if (w1 != w22) {
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d3aec
      x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d3af0
      GameFruitNotifier_getFruitLandResource() /* 0x4d3b18 */; // 0x4d3af4
      SP = FP; // 0x4d3afc
      x0 = NULL; // 0x4d3af8
      // frame: FP, LR, mem(SP), 0x10 // 0x4d3b00
      return;
    }
  }
  NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d3b14
}

// GameFruitLand_createState
// raw disassembly:
//  0x4c3d88: stp FP, LR, [SP, #-0x10]!
//  0x4c3d8c: mov FP, SP
//  0x4c3d90: mov x0, x1
//  0x4c3d94: add x1, PP, #0x12, lsl #12
//  0x4c3d98: ldr x1, [x1, #0x548]
//  0x4c3d9c: bl #0x4c3dac
//  0x4c3da0: mov SP, FP
//  0x4c3da4: ldp FP, LR, [SP], #0x10
//  0x4c3da8: ret 
//
dynamic GameFruitLand_createState() {
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c3d88
  // frame: FP = SP // 0x4c3d8c
  x0 = x1; // 0x4c3d90
  x1 = mem((PP + 0x12000), 0x548) /* TypeArguments */; // 0x4c3d98
  AllocationStub__GameFruitLandState() /* 0x4c3dac */; // 0x4c3d9c
  SP = FP; // 0x4c3da0
  // frame: FP, LR, mem(SP), 0x10 // 0x4c3da4
  return;
}
