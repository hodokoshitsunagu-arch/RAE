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

dynamic AllocationStub_RouterNative, AllocationStub_SoulNavigator, BARRIER;
dynamic BoostNavigator_get_instance, BoostNavigator_push, FP, HEAP, LR;
dynamic Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign;
dynamic Map_factory_ctor, NULL, PP, PagePKGameBetTabRecordState_anon_closure;
dynamic SOCodec_urlEncode, SP, StackOverflowSharedWithoutFpuRegsStub_0x61fa28;
dynamic StringBase_interpolate, THR, Uri_parse, local_0, local_m10, local_m18, local_m20;
dynamic local_m60, local_m68, local_m70, local_m8, sub_0x2b13a0, sub_0x2b16e4, sub_0x61f920;
dynamic w0, w1, w16, w2, w22, w3, w4, w5, w6, w7, x0, x1, x2, x21, x3, x4, x5, x6, x7;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$common$plugins$router
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// RouterNative_routeH5
// raw disassembly:
//  0x3a6a60: stp FP, LR, [SP, #-0x10]!
//  0x3a6a64: mov FP, SP
//  0x3a6a68: sub SP, SP, #0x18
//  0x3a6a6c: stur NULL, [FP, #-8]
//  0x3a6a70: stur x1, [FP, #-0x10]
//  0x3a6a74: mov BARRIER, x2
//  0x3a6a78: mov x2, x1
//  0x3a6a7c: mov x1, BARRIER
//  0x3a6a80: stur x1, [FP, #-0x18]
//  0x3a6a84: ldr BARRIER, [THR, #0x38]
//  0x3a6a88: cmp SP, BARRIER
//  0x3a6a8c: b.ls #0x3a6ae0
//  0x3a6a90: mov x0, NULL
//  0x3a6a94: bl #0x2b16e4
//  0x3a6a98: ldur x1, [FP, #-0x10]
//  0x3a6a9c: add x2, PP, #0xf, lsl #12
//  0x3a6aa0: ldr x2, [x2, #0xf38]
//  0x3a6aa4: bl #0x3a84c4
//  0x3a6aa8: ldur x1, [FP, #-0x18]
//  0x3a6aac: stur x0, [FP, #-0x10]
//  0x3a6ab0: bl #0x3a80b0
//  0x3a6ab4: mov x1, x0
//  0x3a6ab8: stur x1, [FP, #-0x18]
//  0x3a6abc: bl #0x2b13a0
//  0x3a6ac0: ldur x1, [FP, #-0x10]
//  0x3a6ac4: mov x3, x0
//  0x3a6ac8: ldr x2, [PP, #0x2c48]
//  0x3a6acc: bl #0x3a8024
//  0x3a6ad0: mov x1, x0
//  0x3a6ad4: bl #0x3a6ae8
//  0x3a6ad8: mov x0, NULL
//  0x3a6adc: b #0x2b16b8
//  0x3a6ae0: bl #0x61fa28
//  0x3a6ae4: b #0x3a6a90
//
dynamic RouterNative_routeH5() {
  dynamic BARRIER;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a6a60
  // frame: FP = SP // 0x3a6a64
  // frame: SP = SP - 0x18 // 0x3a6a68
  local_m8 = NULL; // 0x3a6a6c
  local_m10 = x1; // 0x3a6a70
  BARRIER = x2; // 0x3a6a74
  x1 = x2; // 0x3a6a7c
  x2 = x1; // 0x3a6a78
  local_m18 = x1; // 0x3a6a80
  BARRIER = mem(THR, 0x38); // 0x3a6a84
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a6ae0
  }
  x0 = NULL; // 0x3a6a90
  sub_0x2b16e4(); // 0x3a6a94
  x1 = local_m10; // 0x3a6a98
  x2 = "/h5/web" /* pp+0xff38 */; // 0x3a6aa0
  RouterNative_route() /* 0x3a84c4 */; // 0x3a6aa4
  x1 = local_m18; // 0x3a6aa8
  local_m10 = x0; // 0x3a6aac
  SOCodec_urlEncode() /* 0x3a80b0 */; // 0x3a6ab0
  x1 = x0; // 0x3a6ab4
  local_m18 = x1; // 0x3a6ab8
  sub_0x2b13a0(); // 0x3a6abc
  x1 = local_m10; // 0x3a6ac0
  x2 = "url" /* pp+0x2c48 */; // 0x3a6ac8
  x3 = x0; // 0x3a6ac4
  SoulNavigator_withString() /* 0x3a8024 */; // 0x3a6acc
  x1 = x0; // 0x3a6ad0
  SoulNavigator_navigate() /* 0x3a6ae8 */; // 0x3a6ad4
  x0 = NULL; // 0x3a6ad8
}

// RouterNative_route
// raw disassembly:
//  0x3a84c4: stp FP, LR, [SP, #-0x10]!
//  0x3a84c8: mov FP, SP
//  0x3a84cc: sub SP, SP, #0x10
//  0x3a84d0: stur x2, [FP, #-8]
//  0x3a84d4: ldr BARRIER, [THR, #0x38]
//  0x3a84d8: cmp SP, BARRIER
//  0x3a84dc: b.ls #0x3a850c
//  0x3a84e0: ldr x1, [PP, #0x2a60]
//  0x3a84e4: bl #0x28cd60
//  0x3a84e8: stur x0, [FP, #-0x10]
//  0x3a84ec: bl #0x3a8514
//  0x3a84f0: ldur x1, [FP, #-0x10]
//  0x3a84f4: stur w1, [x0, #0xb]
//  0x3a84f8: ldur x1, [FP, #-8]
//  0x3a84fc: stur w1, [x0, #7]
//  0x3a8500: mov SP, FP
//  0x3a8504: ldp FP, LR, [SP], #0x10
//  0x3a8508: ret 
//  0x3a850c: bl #0x61fa28
//  0x3a8510: b #0x3a84e0
//
dynamic RouterNative_route() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a84c4
  // frame: FP = SP // 0x3a84c8
  // frame: SP = SP - 0x10 // 0x3a84cc
  local_m8 = x2; // 0x3a84d0
  BARRIER = mem(THR, 0x38); // 0x3a84d4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a850c
  }
  x1 = mem(PP, 0x2a60) /* TypeArguments */; // 0x3a84e0
  Map_factory_ctor() /* 0x28cd60 */; // 0x3a84e4
  local_m10 = x0; // 0x3a84e8
  AllocationStub_SoulNavigator() /* 0x3a8514 */; // 0x3a84ec
  x1 = local_m10; // 0x3a84f0
  memSet(x0, 0xb, w1); // 0x3a84f4
  x1 = local_m8; // 0x3a84f8
  memSet(x0, 7, w1); // 0x3a84fc
  SP = FP; // 0x3a8500
  // frame: FP, LR, mem(SP), 0x10 // 0x3a8504
  return;
}

// RouterNative_getInstance
// raw disassembly:
//  0x3a86c0: stp FP, LR, [SP, #-0x10]!
//  0x3a86c4: mov FP, SP
//  0x3a86c8: ldr x0, [THR, #0x68]
//  0x3a86cc: ldr x0, [x0, #0x17a8]
//  0x3a86d0: cmp w0, w22
//  0x3a86d4: b.ne #0x3a86e4
//  0x3a86d8: bl #0x3a86f0
//  0x3a86dc: ldr x1, [THR, #0x68]
//  0x3a86e0: str x0, [x1, #0x17a8]
//  0x3a86e4: mov SP, FP
//  0x3a86e8: ldp FP, LR, [SP], #0x10
//  0x3a86ec: ret 
//
dynamic RouterNative_getInstance() {
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a86c0
  // frame: FP = SP // 0x3a86c4
  x0 = mem((mem(THR, 0x68)), 0x17a8); // 0x3a86cc
  if (w0 != w22) {
  } else {
    AllocationStub_RouterNative() /* 0x3a86f0 */; // 0x3a86d8
    x1 = mem(THR, 0x68); // 0x3a86dc
    memSet(x1, 0x17a8, x0); // 0x3a86e0
  }
  SP = FP; // 0x3a86e4
  // frame: FP, LR, mem(SP), 0x10 // 0x3a86e8
  return;
}

// RouterNative_routeFlutter
// raw disassembly:
//  0x3a99b4: stp FP, LR, [SP, #-0x10]!
//  0x3a99b8: mov FP, SP
//  0x3a99bc: sub SP, SP, #0x18
//  0x3a99c0: mov x3, x2
//  0x3a99c4: stur x2, [FP, #-0x18]
//  0x3a99c8: ldur w0, [x4, #0x13]
//  0x3a99cc: ldur w2, [x4, #0x1f]
//  0x3a99d0: add x2, x2, HEAP, lsl #32
//  0x3a99d4: add BARRIER, PP, #0xf, lsl #12
//  0x3a99d8: ldr BARRIER, [BARRIER, #0x830]
//  0x3a99dc: cmp w2, w16
//  0x3a99e0: b.ne #0x3a9a04
//  0x3a99e4: ldur w2, [x4, #0x23]
//  0x3a99e8: add x2, x2, HEAP, lsl #32
//  0x3a99ec: sub w5, w0, w2
//  0x3a99f0: add x2, FP, w5, sxtw #2
//  0x3a99f4: ldr x2, [x2, #8]
//  0x3a99f8: mov x5, x2
//  0x3a99fc: mov x2, #1
//  0x3a9a00: b #0x3a9a0c
//  0x3a9a04: mov x5, NULL
//  0x3a9a08: mov x2, #0
//  0x3a9a0c: stur x5, [FP, #-0x10]
//  0x3a9a10: lsl x6, x2, #1
//  0x3a9a14: lsl w2, w6, #1
//  0x3a9a18: add w6, w2, #8
//  0x3a9a1c: add BARRIER, x4, w6, sxtw #1
//  0x3a9a20: ldur w7, [BARRIER, #0xf]
//  0x3a9a24: add x7, x7, HEAP, lsl #32
//  0x3a9a28: add BARRIER, PP, #0xf, lsl #12
//  0x3a9a2c: ldr BARRIER, [BARRIER, #0x838]
//  0x3a9a30: cmp w7, w16
//  0x3a9a34: b.ne #0x3a9a58
//  0x3a9a38: add w6, w2, #0xa
//  0x3a9a3c: add BARRIER, x4, w6, sxtw #1
//  0x3a9a40: ldur w2, [BARRIER, #0xf]
//  0x3a9a44: add x2, x2, HEAP, lsl #32
//  0x3a9a48: sub w4, w0, w2
//  0x3a9a4c: add x0, FP, w4, sxtw #2
//  0x3a9a50: ldr x0, [x0, #8]
//  0x3a9a54: b #0x3a9a5c
//  0x3a9a58: mov x0, NULL
//  0x3a9a5c: stur x0, [FP, #-8]
//  0x3a9a60: ldr BARRIER, [THR, #0x38]
//  0x3a9a64: cmp SP, BARRIER
//  0x3a9a68: b.ls #0x3a9b00
//  0x3a9a6c: add x2, PP, #0xf, lsl #12
//  0x3a9a70: ldr x2, [x2, #0x840]
//  0x3a9a74: bl #0x3a84c4
//  0x3a9a78: mov x1, x0
//  0x3a9a7c: ldur x3, [FP, #-0x18]
//  0x3a9a80: add x2, PP, #0xf, lsl #12
//  0x3a9a84: ldr x2, [x2, #0x848]
//  0x3a9a88: bl #0x3a8024
//  0x3a9a8c: mov x1, x0
//  0x3a9a90: ldur x0, [FP, #-0x10]
//  0x3a9a94: cmp w0, w22
//  0x3a9a98: b.ne #0x3a9aa4
//  0x3a9a9c: add x3, NULL, #0x30
//  0x3a9aa0: b #0x3a9aa8
//  0x3a9aa4: mov x3, x0
//  0x3a9aa8: ldur x0, [FP, #-8]
//  0x3a9aac: add x2, PP, #0xf, lsl #12
//  0x3a9ab0: ldr x2, [x2, #0x850]
//  0x3a9ab4: bl #0x3a9b08
//  0x3a9ab8: mov x1, x0
//  0x3a9abc: ldur x0, [FP, #-8]
//  0x3a9ac0: cmp w0, w22
//  0x3a9ac4: b.ne #0x3a9ad0
//  0x3a9ac8: add x3, NULL, #0x30
//  0x3a9acc: b #0x3a9ad4
//  0x3a9ad0: mov x3, x0
//  0x3a9ad4: add x2, PP, #0xf, lsl #12
//  0x3a9ad8: ldr x2, [x2, #0x858]
//  0x3a9adc: bl #0x3a9b08
//  0x3a9ae0: mov x1, x0
//  0x3a9ae4: add x2, PP, #0xf, lsl #12
//  0x3a9ae8: ldr x2, [x2, #0x860]
//  0x3a9aec: add x3, NULL, #0x30
//  0x3a9af0: bl #0x3a9b08
//  0x3a9af4: mov SP, FP
//  0x3a9af8: ldp FP, LR, [SP], #0x10
//  0x3a9afc: ret 
//  0x3a9b00: bl #0x61fa28
//  0x3a9b04: b #0x3a9a6c
//
dynamic RouterNative_routeFlutter() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w2;
  dynamic w4;
  dynamic w5;
  dynamic w6;
  dynamic w7;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x7;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a99b4
  // frame: FP = SP // 0x3a99b8
  // frame: SP = SP - 0x18 // 0x3a99bc
  x3 = x2; // 0x3a99c0
  local_m18 = x2; // 0x3a99c4
  BARRIER = "isBottom" /* pp+0xf830 */; // 0x3a99d8
  w0 = mem(x4, 0x13); // 0x3a99c8
  w2 = mem(x4, 0x1f); // 0x3a99cc
  x0 = (mem(x4, 0x13)) & 0xffffffff; // 0x3a99c8
  x2 = ((mem(x4, 0x1f)) & 0xffffffff) + (HEAP << 32); // 0x3a99d0
  if (w2 != w16) {
    x2 = 0; // 0x3a9a08
    x5 = NULL; // 0x3a9a04
  } else {
    w5 = w0 - w2; // 0x3a99ec
    x2 = FP + ((w0 - w2) /* sxtw 2 */); // 0x3a99f0
    x5 = (w0 - w2) & 0xffffffff; // 0x3a99ec
    x2 = 1; // 0x3a99fc
    x5 = mem(x2, 8); // 0x3a99f8
  }
  local_m10 = x5; // 0x3a9a0c
  BARRIER = "isTransparent" /* pp+0xf838 */; // 0x3a9a2c
  w2 = w6 << 1; // 0x3a9a14
  w6 = (w6 << 1) + 8; // 0x3a9a18
  w7 = mem((x4 + (((((w6 << 1) + 8) << 1) + 8) /* sxtw 1 */)), 0xf); // 0x3a9a20
  x2 = (w6 << 1) & 0xffffffff; // 0x3a9a14
  x6 = ((w6 << 1) + 8) & 0xffffffff; // 0x3a9a18
  x7 = ((mem((x4 + (((((w6 << 1) + 8) << 1) + 8) /* sxtw 1 */)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3a9a24
  if (w7 != w16) {
    x0 = NULL; // 0x3a9a58
  } else {
    BARRIER = x4 + (w6 /* sxtw 1 */); // 0x3a9a3c
    w2 = mem((x4 + (w6 /* sxtw 1 */)), 0xf); // 0x3a9a40
    w4 = w0 - (mem((x4 + (w6 /* sxtw 1 */)), 0xf)); // 0x3a9a48
    x0 = mem((FP + ((w0 - (mem((((w0 - (mem((((w0 - (mem((x4 + (w6 /* sxtw 1 */)), 0xf))) & 0xffffffff) + (w6 /* sxtw 1 */)), 0xf))) & 0xffffffff) + (w6 /* sxtw 1 */)), 0xf))) /* sxtw 2 */)), 8); // 0x3a9a50
    x2 = ((mem((x4 + (w6 /* sxtw 1 */)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3a9a44
    x4 = (w0 - (mem((x4 + (w6 /* sxtw 1 */)), 0xf))) & 0xffffffff; // 0x3a9a48
    x6 = w6 & 0xffffffff; // 0x3a9a38
  }
  local_m8 = x0; // 0x3a9a5c
  BARRIER = mem(THR, 0x38); // 0x3a9a60
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a9b00
  }
  x2 = "/flutter/container" /* pp+0xf840 */; // 0x3a9a70
  RouterNative_route() /* 0x3a84c4 */; // 0x3a9a74
  x1 = x0; // 0x3a9a78
  x2 = "flutterPageId" /* pp+0xf848 */; // 0x3a9a84
  x3 = local_m18; // 0x3a9a7c
  SoulNavigator_withString() /* 0x3a8024 */; // 0x3a9a88
  x0 = local_m10; // 0x3a9a90
  x1 = x0; // 0x3a9a8c
  if (w0 != w22) {
    x3 = x0; // 0x3a9aa4
  } else {
    x3 = NULL + 0x30; // 0x3a9a9c
  }
  x0 = local_m8; // 0x3a9aa8
  x2 = "flutterIsBottom" /* pp+0xf850 */; // 0x3a9ab0
  SoulNavigator_withBoolean() /* 0x3a9b08 */; // 0x3a9ab4
  x0 = local_m8; // 0x3a9abc
  x1 = x0; // 0x3a9ab8
  if (w0 != w22) {
    x3 = x0; // 0x3a9ad0
  } else {
    x3 = NULL + 0x30; // 0x3a9ac8
  }
  x2 = "flutterIsTransparent" /* pp+0xf858 */; // 0x3a9ad8
  SoulNavigator_withBoolean() /* 0x3a9b08 */; // 0x3a9adc
  x1 = x0; // 0x3a9ae0
  x2 = "flutterDisableAnimation" /* pp+0xf860 */; // 0x3a9ae8
  x3 = NULL + 0x30; // 0x3a9aec
  SoulNavigator_withBoolean() /* 0x3a9b08 */; // 0x3a9af0
  SP = FP; // 0x3a9af4
  // frame: FP, LR, mem(SP), 0x10 // 0x3a9af8
  return;
}

// RouterNative_handleSchemaJump
// raw disassembly:
//  0x42dca8: stp FP, LR, [SP, #-0x10]!
//  0x42dcac: mov FP, SP
//  0x42dcb0: sub SP, SP, #0x80
//  0x42dcb4: mov x0, x1
//  0x42dcb8: stur x1, [FP, #-0x60]
//  0x42dcbc: mov x1, x2
//  0x42dcc0: ldr BARRIER, [THR, #0x38]
//  0x42dcc4: cmp SP, BARRIER
//  0x42dcc8: b.ls #0x42deb8
//  0x42dccc: ldr x4, [PP, #0x4c0]
//  0x42dcd0: bl #0x28eb00
//  0x42dcd4: mov x2, x0
//  0x42dcd8: stur x2, [FP, #-0x68]
//  0x42dcdc: ldur x0, [x2, #-1]
//  0x42dce0: ubfx x0, x0, #0xc, #0x14
//  0x42dce4: mov x1, x2
//  0x42dce8: sub LR, x0, #0xffc
//  0x42dcec: ldr LR, [x21, LR, lsl #3]
//  0x42dcf0: blr LR
//  0x42dcf4: ldur x1, [x0, #-1]
//  0x42dcf8: ubfx x1, x1, #0xc, #0x14
//  0x42dcfc: add BARRIER, PP, #0xf, lsl #12
//  0x42dd00: ldr BARRIER, [BARRIER, #0xf28]
//  0x42dd04: stp BARRIER, x0, [SP]
//  0x42dd08: mov x0, x1
//  0x42dd0c: mov LR, x0
//  0x42dd10: ldr LR, [x21, LR, lsl #3]
//  0x42dd14: blr LR
//  0x42dd18: tbnz w0, #4, #0x42dea8
//  0x42dd1c: ldur x2, [FP, #-0x68]
//  0x42dd20: ldur x0, [x2, #-1]
//  0x42dd24: ubfx x0, x0, #0xc, #0x14
//  0x42dd28: mov x1, x2
//  0x42dd2c: sub LR, x0, #0xff0
//  0x42dd30: ldr LR, [x21, LR, lsl #3]
//  0x42dd34: blr LR
//  0x42dd38: ldur x1, [x0, #-1]
//  0x42dd3c: ubfx x1, x1, #0xc, #0x14
//  0x42dd40: add BARRIER, PP, #0xf, lsl #12
//  0x42dd44: ldr BARRIER, [BARRIER, #0xf30]
//  0x42dd48: stp BARRIER, x0, [SP]
//  0x42dd4c: mov x0, x1
//  0x42dd50: mov LR, x0
//  0x42dd54: ldr LR, [x21, LR, lsl #3]
//  0x42dd58: blr LR
//  0x42dd5c: tbnz w0, #4, #0x42dea8
//  0x42dd60: ldur x2, [FP, #-0x68]
//  0x42dd64: ldur x0, [x2, #-1]
//  0x42dd68: ubfx x0, x0, #0xc, #0x14
//  0x42dd6c: mov x1, x2
//  0x42dd70: sub LR, x0, #1, lsl #12
//  0x42dd74: ldr LR, [x21, LR, lsl #3]
//  0x42dd78: blr LR
//  0x42dd7c: mov x1, x0
//  0x42dd80: stur x1, [FP, #-0x70]
//  0x42dd84: ldur x0, [x1, #-1]
//  0x42dd88: ubfx x0, x0, #0xc, #0x14
//  0x42dd8c: add BARRIER, PP, #0xf, lsl #12
//  0x42dd90: ldr BARRIER, [BARRIER, #0xf38]
//  0x42dd94: stp BARRIER, x1, [SP]
//  0x42dd98: mov LR, x0
//  0x42dd9c: ldr LR, [x21, LR, lsl #3]
//  0x42dda0: blr LR
//  0x42dda4: tbnz w0, #4, #0x42de04
//  0x42dda8: ldur x1, [FP, #-0x68]
//  0x42ddac: ldur x0, [x1, #-1]
//  0x42ddb0: ubfx x0, x0, #0xc, #0x14
//  0x42ddb4: sub LR, x0, #0xfad
//  0x42ddb8: ldr LR, [x21, LR, lsl #3]
//  0x42ddbc: blr LR
//  0x42ddc0: ldur x1, [x0, #-1]
//  0x42ddc4: ubfx x1, x1, #0xc, #0x14
//  0x42ddc8: mov BARRIER, x0
//  0x42ddcc: mov x0, x1
//  0x42ddd0: mov x1, BARRIER
//  0x42ddd4: ldr x2, [PP, #0x2c48]
//  0x42ddd8: sub LR, x0, #1, lsl #12
//  0x42dddc: ldr LR, [x21, LR, lsl #3]
//  0x42dde0: blr LR
//  0x42dde4: cmp w0, w22
//  0x42dde8: b.eq #0x42dea8
//  0x42ddec: ldur w1, [x0, #7]
//  0x42ddf0: cbz w1, #0x42dea8
//  0x42ddf4: ldur x1, [FP, #-0x60]
//  0x42ddf8: mov x2, x0
//  0x42ddfc: bl #0x3a6a60
//  0x42de00: b #0x42dea8
//  0x42de04: ldur x1, [FP, #-0x68]
//  0x42de08: ldur x2, [FP, #-0x70]
//  0x42de0c: ldur x0, [x2, #-1]
//  0x42de10: ubfx x0, x0, #0xc, #0x14
//  0x42de14: add BARRIER, PP, #0xf, lsl #12
//  0x42de18: ldr BARRIER, [BARRIER, #0x840]
//  0x42de1c: stp BARRIER, x2, [SP]
//  0x42de20: mov LR, x0
//  0x42de24: ldr LR, [x21, LR, lsl #3]
//  0x42de28: blr LR
//  0x42de2c: tbnz w0, #4, #0x42de94
//  0x42de30: ldur x1, [FP, #-0x68]
//  0x42de34: ldur x0, [x1, #-1]
//  0x42de38: ubfx x0, x0, #0xc, #0x14
//  0x42de3c: sub LR, x0, #0xfad
//  0x42de40: ldr LR, [x21, LR, lsl #3]
//  0x42de44: blr LR
//  0x42de48: ldur x1, [x0, #-1]
//  0x42de4c: ubfx x1, x1, #0xc, #0x14
//  0x42de50: mov BARRIER, x0
//  0x42de54: mov x0, x1
//  0x42de58: mov x1, BARRIER
//  0x42de5c: add x2, PP, #0xf, lsl #12
//  0x42de60: ldr x2, [x2, #0x848]
//  0x42de64: sub LR, x0, #1, lsl #12
//  0x42de68: ldr LR, [x21, LR, lsl #3]
//  0x42de6c: blr LR
//  0x42de70: cmp w0, w22
//  0x42de74: b.eq #0x42dea8
//  0x42de78: ldur w1, [x0, #7]
//  0x42de7c: cbz w1, #0x42dea8
//  0x42de80: ldur x1, [FP, #-0x60]
//  0x42de84: mov x2, x0
//  0x42de88: ldr x4, [PP, #0x278]
//  0x42de8c: bl #0x3a99b4
//  0x42de90: b #0x42dea8
//  0x42de94: ldur x1, [FP, #-0x60]
//  0x42de98: ldur x2, [FP, #-0x70]
//  0x42de9c: bl #0x3a84c4
//  0x42dea0: b #0x42dea8
//  0x42dea4: sub SP, FP, #0x80
//  0x42dea8: mov x0, NULL
//  0x42deac: mov SP, FP
//  0x42deb0: ldp FP, LR, [SP], #0x10
//  0x42deb4: ret 
//  0x42deb8: bl #0x61fa28
//  0x42debc: b #0x42dccc
//
dynamic RouterNative_handleSchemaJump() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42dca8
  // frame: FP = SP // 0x42dcac
  // frame: SP = SP - 0x80 // 0x42dcb0
  x0 = x1; // 0x42dcb4
  local_m60 = x1; // 0x42dcb8
  BARRIER = mem(THR, 0x38); // 0x42dcc0
  x1 = x2; // 0x42dcbc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42deb8
  }
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x42dccc
  Uri_parse() /* 0x28eb00 */; // 0x42dcd0
  x2 = x0; // 0x42dcd4
  local_m68 = x2; // 0x42dcd8
  LR = mem(x21, ((((mem(x2, (-1)) >> 12) & 0xfffff) - 0xffc) << 3)); // 0x42dcec
  x0 = ((mem(x2, -1)) >> 12) & 0xfffff; // 0x42dce0
  x1 = x2; // 0x42dce4
  callIndirect(LR); // 0x42dcf0
  BARRIER = "soulglobal" /* pp+0xff28 */; // 0x42dd00
  x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x42dcf8
  // frame: BARRIER, x0, mem(SP) // 0x42dd04
  LR = mem(x21, (LR << 3)); // 0x42dd10
  x0 = x1; // 0x42dd08
  callIndirect(LR); // 0x42dd14
  if (x0 & (1 << 4) != 0) {
  } else {
    LR = mem(x21, ((((mem((local_m68), (-1)) >> 12) & 0xfffff) - 0xff0) << 3)); // 0x42dd30
    x0 = ((mem((local_m68), -1)) >> 12) & 0xfffff; // 0x42dd24
    x1 = local_m68; // 0x42dd28
    x2 = local_m68; // 0x42dd1c
    callIndirect(LR); // 0x42dd34
    BARRIER = "intl.soulapp.me" /* pp+0xff30 */; // 0x42dd44
    x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x42dd3c
    // frame: BARRIER, x0, mem(SP) // 0x42dd48
    LR = mem(x21, (LR << 3)); // 0x42dd54
    x0 = x1; // 0x42dd4c
    callIndirect(LR); // 0x42dd58
    if (x0 & (1 << 4) != 0) {
    } else {
      LR = mem(x21, ((((mem((local_m68), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x42dd74
      x0 = ((mem((local_m68), -1)) >> 12) & 0xfffff; // 0x42dd68
      x1 = local_m68; // 0x42dd6c
      x2 = local_m68; // 0x42dd60
      callIndirect(LR); // 0x42dd78
      x1 = x0; // 0x42dd7c
      local_m70 = x1; // 0x42dd80
      BARRIER = "/h5/web" /* pp+0xff38 */; // 0x42dd90
      x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x42dd88
      // frame: BARRIER, x1, mem(SP) // 0x42dd94
      LR = mem(x21, (LR << 3)); // 0x42dd9c
      callIndirect(LR); // 0x42dda0
      if (x0 & (1 << 4) != 0) {
        BARRIER = "/flutter/container" /* pp+0xf840 */; // 0x42de18
        x0 = ((mem((local_m70), -1)) >> 12) & 0xfffff; // 0x42de10
        x1 = local_m68; // 0x42de04
        x2 = local_m70; // 0x42de08
        // frame: BARRIER, x2, mem(SP) // 0x42de1c
        LR = mem(x21, (LR << 3)); // 0x42de24
        callIndirect(LR); // 0x42de28
        if (x0 & (1 << 4) != 0) {
          x1 = local_m60; // 0x42de94
          x2 = local_m70; // 0x42de98
          RouterNative_route() /* 0x3a84c4 */; // 0x42de9c
        } else {
          LR = mem(x21, ((((mem((local_m68), (-1)) >> 12) & 0xfffff) - 0xfad) << 3)); // 0x42de40
          x0 = ((mem((local_m68), -1)) >> 12) & 0xfffff; // 0x42de38
          x1 = local_m68; // 0x42de30
          callIndirect(LR); // 0x42de44
          BARRIER = x0; // 0x42de50
          x0 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x42de54
          x1 = x0; // 0x42de58
          LR = mem(x21, ((x0 - 0x1000) << 3)); // 0x42de68
          x2 = "flutterPageId" /* pp+0xf848 */; // 0x42de60
          callIndirect(LR); // 0x42de6c
          if (w0 == w22) {
          } else {
            x1 = w1 & 0xffffffff; // 0x42de78
            if (w1 == 0) {
            } else {
              x1 = local_m60; // 0x42de80
              x2 = x0; // 0x42de84
              x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x42de88
              RouterNative_routeFlutter() /* 0x3a99b4 */; // 0x42de8c
            }
          }
        }
      } else {
        LR = mem(x21, ((((mem((local_m68), (-1)) >> 12) & 0xfffff) - 0xfad) << 3)); // 0x42ddb8
        x0 = ((mem((local_m68), -1)) >> 12) & 0xfffff; // 0x42ddb0
        x1 = local_m68; // 0x42dda8
        callIndirect(LR); // 0x42ddbc
        BARRIER = x0; // 0x42ddc8
        x0 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x42ddcc
        x1 = x0; // 0x42ddd0
        LR = mem(x21, ((x0 - 0x1000) << 3)); // 0x42dddc
        x2 = "url" /* pp+0x2c48 */; // 0x42ddd4
        callIndirect(LR); // 0x42dde0
        if (w0 == w22) {
        } else {
          x1 = w1 & 0xffffffff; // 0x42ddec
          if (w1 == 0) {
          } else {
            x1 = local_m60; // 0x42ddf4
            x2 = x0; // 0x42ddf8
            RouterNative_routeH5() /* 0x3a6a60 */; // 0x42ddfc
          }
        }
      }
    }
  }
  SP = FP; // 0x42deac
  x0 = NULL; // 0x42dea8
  // frame: FP, LR, mem(SP), 0x10 // 0x42deb0
  return;
}

// SoulNavigator_navigate
// raw disassembly:
//  0x3a6ae8: stp FP, LR, [SP, #-0x10]!
//  0x3a6aec: mov FP, SP
//  0x3a6af0: sub SP, SP, #0x28
//  0x3a6af4: mov x0, x1
//  0x3a6af8: stur x1, [FP, #-8]
//  0x3a6afc: ldr BARRIER, [THR, #0x38]
//  0x3a6b00: cmp SP, BARRIER
//  0x3a6b04: b.ls #0x3a6b94
//  0x3a6b08: mov x1, NULL
//  0x3a6b0c: mov x2, #8
//  0x3a6b10: bl #0x61f920
//  0x3a6b14: add BARRIER, PP, #0xe, lsl #12
//  0x3a6b18: ldr BARRIER, [BARRIER, #0xba8]
//  0x3a6b1c: stur w16, [x0, #0xf]
//  0x3a6b20: ldur x1, [FP, #-8]
//  0x3a6b24: ldur w2, [x1, #7]
//  0x3a6b28: add x2, x2, HEAP, lsl #32
//  0x3a6b2c: stur w2, [x0, #0x13]
//  0x3a6b30: add BARRIER, PP, #0xe, lsl #12
//  0x3a6b34: ldr BARRIER, [BARRIER, #0xbb0]
//  0x3a6b38: stur w16, [x0, #0x17]
//  0x3a6b3c: ldur w2, [x1, #0xb]
//  0x3a6b40: add x2, x2, HEAP, lsl #32
//  0x3a6b44: stur w2, [x0, #0x1b]
//  0x3a6b48: str x0, [SP]
//  0x3a6b4c: bl #0x2ad854
//  0x3a6b50: bl #0x3a4c98
//  0x3a6b54: mov x1, x0
//  0x3a6b58: ldur x0, [FP, #-8]
//  0x3a6b5c: ldur w2, [x0, #7]
//  0x3a6b60: add x2, x2, HEAP, lsl #32
//  0x3a6b64: ldur w3, [x0, #0xb]
//  0x3a6b68: add x3, x3, HEAP, lsl #32
//  0x3a6b6c: ldr BARRIER, [PP, #0x1a8]
//  0x3a6b70: stp x1, BARRIER, [SP, #0x10]
//  0x3a6b74: stp x3, x2, [SP]
//  0x3a6b78: add x4, PP, #0xe, lsl #12
//  0x3a6b7c: ldr x4, [x4, #0xbb8]
//  0x3a6b80: bl #0x3a6b9c
//  0x3a6b84: mov x0, NULL
//  0x3a6b88: mov SP, FP
//  0x3a6b8c: ldp FP, LR, [SP], #0x10
//  0x3a6b90: ret 
//  0x3a6b94: bl #0x61fa28
//  0x3a6b98: b #0x3a6b08
//
dynamic SoulNavigator_navigate() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a6ae8
  // frame: FP = SP // 0x3a6aec
  // frame: SP = SP - 0x28 // 0x3a6af0
  x0 = x1; // 0x3a6af4
  local_m8 = x1; // 0x3a6af8
  BARRIER = mem(THR, 0x38); // 0x3a6afc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a6b94
  }
  x1 = NULL; // 0x3a6b08
  x2 = 8; // 0x3a6b0c
  sub_0x61f920(); // 0x3a6b10
  BARRIER = "SoulNavigator=> path = " /* pp+0xeba8 */; // 0x3a6b18
  memSet(x0, 0xf, w16); // 0x3a6b1c
  w2 = mem((local_m8), 7); // 0x3a6b24
  x1 = local_m8; // 0x3a6b20
  x2 = ((mem((local_m8), 7)) & 0xffffffff) + (HEAP << 32); // 0x3a6b28
  memSet(x0, 0x13, w2); // 0x3a6b2c
  BARRIER = ", _bundle = " /* pp+0xebb0 */; // 0x3a6b34
  memSet(x0, 0x17, w16); // 0x3a6b38
  w2 = mem(x1, 0xb); // 0x3a6b3c
  x2 = ((mem(x1, 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3a6b40
  memSet(x0, 0x1b, w2); // 0x3a6b44
  local_0 = x0; // 0x3a6b48
  StringBase_interpolate() /* 0x2ad854 */; // 0x3a6b4c
  BoostNavigator_get_instance() /* 0x3a4c98 */; // 0x3a6b50
  BARRIER = mem(PP, 0x1a8) /* TypeArguments */; // 0x3a6b6c
  w2 = mem((local_m8), 7); // 0x3a6b5c
  w3 = mem((local_m8), 0xb); // 0x3a6b64
  x0 = local_m8; // 0x3a6b58
  x1 = x0; // 0x3a6b54
  x2 = ((mem((local_m8), 7)) & 0xffffffff) + (HEAP << 32); // 0x3a6b60
  x3 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3a6b68
  // frame: x1, BARRIER, mem(SP, 0x10) // 0x3a6b70
  // frame: x3, x2, mem(SP) // 0x3a6b74
  x4 = mem((PP + 0xe000), 0xbb8) /* ImmutableArray */; // 0x3a6b7c
  BoostNavigator_push() /* 0x3a6b9c */; // 0x3a6b80
  SP = FP; // 0x3a6b88
  x0 = NULL; // 0x3a6b84
  // frame: FP, LR, mem(SP), 0x10 // 0x3a6b8c
  return;
}

// SoulNavigator_withString
// raw disassembly:
//  0x3a8024: stp FP, LR, [SP, #-0x10]!
//  0x3a8028: mov FP, SP
//  0x3a802c: sub SP, SP, #0x28
//  0x3a8030: mov x4, x1
//  0x3a8034: mov x0, x2
//  0x3a8038: stur x1, [FP, #-0x10]
//  0x3a803c: stur x2, [FP, #-0x18]
//  0x3a8040: stur x3, [FP, #-0x20]
//  0x3a8044: ldr BARRIER, [THR, #0x38]
//  0x3a8048: cmp SP, BARRIER
//  0x3a804c: b.ls #0x3a80a8
//  0x3a8050: ldur w5, [x4, #0xb]
//  0x3a8054: add x5, x5, HEAP, lsl #32
//  0x3a8058: stur x5, [FP, #-8]
//  0x3a805c: mov x1, NULL
//  0x3a8060: mov x2, #4
//  0x3a8064: bl #0x61f920
//  0x3a8068: mov x1, x0
//  0x3a806c: ldur x0, [FP, #-0x18]
//  0x3a8070: stur w0, [x1, #0xf]
//  0x3a8074: add BARRIER, PP, #0xf, lsl #12
//  0x3a8078: ldr BARRIER, [BARRIER, #0x870]
//  0x3a807c: stur w16, [x1, #0x13]
//  0x3a8080: str x1, [SP]
//  0x3a8084: bl #0x2ad854
//  0x3a8088: ldur x1, [FP, #-8]
//  0x3a808c: mov x2, x0
//  0x3a8090: ldur x3, [FP, #-0x20]
//  0x3a8094: bl #0x6164d4
//  0x3a8098: ldur x0, [FP, #-0x10]
//  0x3a809c: mov SP, FP
//  0x3a80a0: ldp FP, LR, [SP], #0x10
//  0x3a80a4: ret 
//  0x3a80a8: bl #0x61fa28
//  0x3a80ac: b #0x3a8050
//
dynamic SoulNavigator_withString() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w5;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a8024
  // frame: FP = SP // 0x3a8028
  // frame: SP = SP - 0x28 // 0x3a802c
  x0 = x2; // 0x3a8034
  x4 = x1; // 0x3a8030
  local_m10 = x1; // 0x3a8038
  local_m18 = x2; // 0x3a803c
  local_m20 = x3; // 0x3a8040
  BARRIER = mem(THR, 0x38); // 0x3a8044
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a80a8
  }
  x5 = (w5 & 0xffffffff) + (HEAP << 32); // 0x3a8054
  local_m8 = x5; // 0x3a8058
  x1 = NULL; // 0x3a805c
  x2 = 4; // 0x3a8060
  sub_0x61f920(); // 0x3a8064
  x0 = local_m18; // 0x3a806c
  x1 = x0; // 0x3a8068
  memSet(x1, 0xf, w0); // 0x3a8070
  BARRIER = "_join_String" /* pp+0xf870 */; // 0x3a8078
  memSet(x1, 0x13, w16); // 0x3a807c
  local_0 = x1; // 0x3a8080
  StringBase_interpolate() /* 0x2ad854 */; // 0x3a8084
  x1 = local_m8; // 0x3a8088
  x2 = x0; // 0x3a808c
  x3 = local_m20; // 0x3a8090
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3a8094
  SP = FP; // 0x3a809c
  x0 = local_m10; // 0x3a8098
  // frame: FP, LR, mem(SP), 0x10 // 0x3a80a0
  return;
}

// SoulNavigator_withBoolean
// raw disassembly:
//  0x3a9b08: stp FP, LR, [SP, #-0x10]!
//  0x3a9b0c: mov FP, SP
//  0x3a9b10: sub SP, SP, #0x28
//  0x3a9b14: mov x4, x1
//  0x3a9b18: mov x0, x2
//  0x3a9b1c: stur x1, [FP, #-0x10]
//  0x3a9b20: stur x2, [FP, #-0x18]
//  0x3a9b24: stur x3, [FP, #-0x20]
//  0x3a9b28: ldr BARRIER, [THR, #0x38]
//  0x3a9b2c: cmp SP, BARRIER
//  0x3a9b30: b.ls #0x3a9ba0
//  0x3a9b34: ldur w5, [x4, #0xb]
//  0x3a9b38: add x5, x5, HEAP, lsl #32
//  0x3a9b3c: stur x5, [FP, #-8]
//  0x3a9b40: mov x1, NULL
//  0x3a9b44: mov x2, #4
//  0x3a9b48: bl #0x61f920
//  0x3a9b4c: mov x1, x0
//  0x3a9b50: ldur x0, [FP, #-0x18]
//  0x3a9b54: stur w0, [x1, #0xf]
//  0x3a9b58: add BARRIER, PP, #0xf, lsl #12
//  0x3a9b5c: ldr BARRIER, [BARRIER, #0x868]
//  0x3a9b60: stur w16, [x1, #0x13]
//  0x3a9b64: str x1, [SP]
//  0x3a9b68: bl #0x2ad854
//  0x3a9b6c: mov x1, x0
//  0x3a9b70: ldur x0, [FP, #-0x20]
//  0x3a9b74: tbnz w0, #4, #0x3a9b80
//  0x3a9b78: ldr x3, [PP, #0xc58]
//  0x3a9b7c: b #0x3a9b84
//  0x3a9b80: ldr x3, [PP, #0xc68]
//  0x3a9b84: mov x2, x1
//  0x3a9b88: ldur x1, [FP, #-8]
//  0x3a9b8c: bl #0x6164d4
//  0x3a9b90: ldur x0, [FP, #-0x10]
//  0x3a9b94: mov SP, FP
//  0x3a9b98: ldp FP, LR, [SP], #0x10
//  0x3a9b9c: ret 
//  0x3a9ba0: bl #0x61fa28
//  0x3a9ba4: b #0x3a9b34
//
dynamic SoulNavigator_withBoolean() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w5;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a9b08
  // frame: FP = SP // 0x3a9b0c
  // frame: SP = SP - 0x28 // 0x3a9b10
  x0 = x2; // 0x3a9b18
  x4 = x1; // 0x3a9b14
  local_m10 = x1; // 0x3a9b1c
  local_m18 = x2; // 0x3a9b20
  local_m20 = x3; // 0x3a9b24
  BARRIER = mem(THR, 0x38); // 0x3a9b28
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a9ba0
  }
  x5 = (w5 & 0xffffffff) + (HEAP << 32); // 0x3a9b38
  local_m8 = x5; // 0x3a9b3c
  x1 = NULL; // 0x3a9b40
  x2 = 4; // 0x3a9b44
  sub_0x61f920(); // 0x3a9b48
  x0 = local_m18; // 0x3a9b50
  x1 = x0; // 0x3a9b4c
  memSet(x1, 0xf, w0); // 0x3a9b54
  BARRIER = "_join_Boolean" /* pp+0xf868 */; // 0x3a9b5c
  memSet(x1, 0x13, w16); // 0x3a9b60
  local_0 = x1; // 0x3a9b64
  StringBase_interpolate() /* 0x2ad854 */; // 0x3a9b68
  x0 = local_m20; // 0x3a9b70
  x1 = x0; // 0x3a9b6c
  if (x0 & (1 << 4) != 0) {
    x3 = "false" /* pp+0xc68 */; // 0x3a9b80
  } else {
    x3 = "true" /* pp+0xc58 */; // 0x3a9b78
  }
  x1 = local_m8; // 0x3a9b88
  x2 = x1; // 0x3a9b84
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3a9b8c
  SP = FP; // 0x3a9b94
  x0 = local_m10; // 0x3a9b90
  // frame: FP, LR, mem(SP), 0x10 // 0x3a9b98
  return;
}

// finish
// raw disassembly:
//  0x3ab700: stp FP, LR, [SP, #-0x10]!
//  0x3ab704: mov FP, SP
//  0x3ab708: ldr BARRIER, [THR, #0x38]
//  0x3ab70c: cmp SP, BARRIER
//  0x3ab710: b.ls #0x3ab724
//  0x3ab714: bl #0x3a8d00
//  0x3ab718: mov SP, FP
//  0x3ab71c: ldp FP, LR, [SP], #0x10
//  0x3ab720: ret 
//  0x3ab724: bl #0x61fa28
//  0x3ab728: b #0x3ab714
//
dynamic finish() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ab700
  BARRIER = mem(THR, 0x38); // 0x3ab708
  // frame: FP = SP // 0x3ab704
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ab724
  }
  PagePKGameBetTabRecordState_anon_closure() /* 0x3a8d00 */; // 0x3ab714
  SP = FP; // 0x3ab718
  // frame: FP, LR, mem(SP), 0x10 // 0x3ab71c
  return;
}
