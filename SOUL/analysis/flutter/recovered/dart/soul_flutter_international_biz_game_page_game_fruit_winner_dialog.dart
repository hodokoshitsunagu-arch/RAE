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
dynamic AllocationStub_GameFruitBackgroundDialog, AllocationStub_GameFruitWinnerDialog;
dynamic AllocationStub_GameFruitWinnerDialogNotifier, AllocationStub_HighlightTextParser;
dynamic AllocationStub_Material, AllocationStub_Positioned, AllocationStub_Radius;
dynamic AllocationStub_Row, AllocationStub_SOAssetImage, AllocationStub_SOImage;
dynamic AllocationStub_SizedBox, AllocationStub_SoulAvatarImage, AllocationStub_Stack;
dynamic AllocationStub_Text, AllocationStub_TextStyle, AllocationStub__Closure;
dynamic AllocationStub__GameFruitWinnerDialogState, AllocationStub__GrowableList;
dynamic AllocationStub__Mint, AllocationStub__ValueInheritedProvider, BARRIER;
dynamic BoostNavigator_get_instance, BoostNavigator_pop, Border_factory_ctor_all;
dynamic Container_ctor, FP, GameFruitWinnerDialogNotifier_ctor;
dynamic GameFruitWinnerDialogNotifier_get_currentTime, GameFruitWinnerDialogNotifier_release;
dynamic GameFruitWinnerDialogNotifier_startCountDown, GestureDetector_ctor;
dynamic GrowableList_factory_ctor, HEAP, HighlightTextParser_parser, LR;
dynamic Map_factory_ctor_fromLiteral, NULL, NavigatorState_canPop, NavigatorState_pop;
dynamic Navigator_of, NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0, PP;
dynamic Positioned_factory_ctor_directional, RangeErrorSharedWithoutFpuRegsStub_0x61fe70, SP;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, TextStyles_smallerContent;
dynamic WriteBarrierStub_x1, d0, d1, getString, int_kNull, local_0, local_10, local_18;
dynamic local_20, local_28, local_m10, local_m18, local_m20, local_m28, local_m30, local_m38;
dynamic local_m40, local_m48, local_m50, local_m58, local_m60, local_m68, local_m70, local_m78;
dynamic local_m8, showDialog, sub_0x3a1d94, sub_0x61db00, sub_0x61e890, sub_0x61f920, w0, w1;
dynamic w16, w17, w2, w22, w3, w4, w5, w6, w7, w8, x0, x1, x16, x17, x2, x21, x25, x3, x4, x5;
dynamic x6, x7, x8, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$game$page_game_fruit_winner_dialog
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// GameFruitWinnerDialogState_build
// raw disassembly:
//  0x439990: stp FP, LR, [SP, #-0x10]!
//  0x439994: mov FP, SP
//  0x439998: sub SP, SP, #0x18
//  0x43999c: stur x1, [FP, #-8]
//  0x4399a0: ldr BARRIER, [THR, #0x38]
//  0x4399a4: cmp SP, BARRIER
//  0x4399a8: b.ls #0x439a40
//  0x4399ac: mov x1, #1
//  0x4399b0: bl #0x61e890
//  0x4399b4: mov x1, x0
//  0x4399b8: ldur x0, [FP, #-8]
//  0x4399bc: stur w0, [x1, #0xf]
//  0x4399c0: ldur w3, [x0, #0x13]
//  0x4399c4: add x3, x3, HEAP, lsl #32
//  0x4399c8: mov x2, x1
//  0x4399cc: stur x3, [FP, #-0x10]
//  0x4399d0: add x1, PP, #0x15, lsl #12
//  0x4399d4: ldr x1, [x1, #0x4d8]
//  0x4399d8: bl #0x61ec54
//  0x4399dc: add x1, PP, #0x15, lsl #12
//  0x4399e0: ldr x1, [x1, #0x4e0]
//  0x4399e4: stur x0, [FP, #-8]
//  0x4399e8: bl #0x3b81c4
//  0x4399ec: mov x2, x0
//  0x4399f0: ldur x0, [FP, #-8]
//  0x4399f4: stur x2, [FP, #-0x18]
//  0x4399f8: stur w0, [x2, #0x1b]
//  0x4399fc: add x1, PP, #0x15, lsl #12
//  0x439a00: ldr x1, [x1, #0x4e0]
//  0x439a04: bl #0x41a408
//  0x439a08: mov x1, x0
//  0x439a0c: ldur x0, [FP, #-0x10]
//  0x439a10: stur w0, [x1, #0xb]
//  0x439a14: add x0, PP, #0xc, lsl #12
//  0x439a18: ldr x0, [x0, #0x2f0]
//  0x439a1c: stur w0, [x1, #0x13]
//  0x439a20: ldur x0, [FP, #-0x18]
//  0x439a24: stur w1, [x0, #0x13]
//  0x439a28: mov x1, x0
//  0x439a2c: bl #0x60bd34
//  0x439a30: ldur x0, [FP, #-0x18]
//  0x439a34: mov SP, FP
//  0x439a38: ldp FP, LR, [SP], #0x10
//  0x439a3c: ret 
//  0x439a40: bl #0x61fa28
//  0x439a44: b #0x4399ac
//
dynamic GameFruitWinnerDialogState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x439990
  // frame: FP = SP // 0x439994
  // frame: SP = SP - 0x18 // 0x439998
  local_m8 = x1; // 0x43999c
  BARRIER = mem(THR, 0x38); // 0x4399a0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x439a40
  }
  x1 = 1; // 0x4399ac
  sub_0x61e890(); // 0x4399b0
  x0 = local_m8; // 0x4399b8
  x1 = x0; // 0x4399b4
  memSet(x1, 0xf, w0); // 0x4399bc
  w3 = mem(x0, 0x13); // 0x4399c0
  x2 = x1; // 0x4399c8
  x3 = ((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4399c4
  local_m10 = x3; // 0x4399cc
  x1 = mem((PP + 0x15000), 0x4d8) /* Function */; // 0x4399d4
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4399d8
  x1 = mem((PP + 0x15000), 0x4e0) /* TypeArguments */; // 0x4399e0
  local_m8 = x0; // 0x4399e4
  AllocationStub_ChangeNotifierProvider() /* 0x3b81c4 */; // 0x4399e8
  x0 = local_m8; // 0x4399f0
  x2 = x0; // 0x4399ec
  local_m18 = x2; // 0x4399f4
  memSet(x2, 0x1b, w0); // 0x4399f8
  x1 = mem((PP + 0x15000), 0x4e0) /* TypeArguments */; // 0x439a00
  AllocationStub__ValueInheritedProvider() /* 0x41a408 */; // 0x439a04
  x0 = local_m10; // 0x439a0c
  x1 = x0; // 0x439a08
  memSet(x1, 0xb, w0); // 0x439a10
  x0 = mem((PP + 0xc000), 0x2f0) /* Closure */; // 0x439a18
  memSet(x1, 0x13, w0); // 0x439a1c
  x0 = local_m18; // 0x439a20
  memSet(x0, 0x13, w1); // 0x439a24
  x1 = x0; // 0x439a28
  int_kNull() /* 0x60bd34 */; // 0x439a2c
  SP = FP; // 0x439a34
  x0 = local_m18; // 0x439a30
  // frame: FP, LR, mem(SP), 0x10 // 0x439a38
  return;
}

// GameFruitWinnerDialogState_anon_closure
// raw disassembly:
//  0x439a88: stp FP, LR, [SP, #-0x10]!
//  0x439a8c: mov FP, SP
//  0x439a90: sub SP, SP, #8
//  0x439a94: ldr x0, [FP, #0x20]
//  0x439a98: ldur w2, [x0, #0x17]
//  0x439a9c: add x2, x2, HEAP, lsl #32
//  0x439aa0: add x1, PP, #0x15, lsl #12
//  0x439aa4: ldr x1, [x1, #0x4e8]
//  0x439aa8: bl #0x61ec54
//  0x439aac: add x1, PP, #0x15, lsl #12
//  0x439ab0: ldr x1, [x1, #0x4e0]
//  0x439ab4: stur x0, [FP, #-8]
//  0x439ab8: bl #0x41a414
//  0x439abc: ldur x1, [FP, #-8]
//  0x439ac0: stur w1, [x0, #0x13]
//  0x439ac4: mov SP, FP
//  0x439ac8: ldp FP, LR, [SP], #0x10
//  0x439acc: ret 
//
dynamic GameFruitWinnerDialogState_anon_closure() {
  dynamic FP;
  dynamic SP;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x439a88
  // frame: FP = SP // 0x439a8c
  // frame: SP = SP - 8 // 0x439a90
  w2 = mem((local_20), 0x17); // 0x439a98
  x0 = local_20; // 0x439a94
  x1 = mem((PP + 0x15000), 0x4e8) /* Function */; // 0x439aa4
  x2 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x439a9c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x439aa8
  x1 = mem((PP + 0x15000), 0x4e0) /* TypeArguments */; // 0x439ab0
  local_m8 = x0; // 0x439ab4
  AllocationStub_Consumer() /* 0x41a414 */; // 0x439ab8
  x1 = local_m8; // 0x439abc
  memSet(x0, 0x13, w1); // 0x439ac0
  SP = FP; // 0x439ac4
  // frame: FP, LR, mem(SP), 0x10 // 0x439ac8
  return;
}

// GameFruitWinnerDialogState_anon_closure_2
// raw disassembly:
//  0x439ad0: stp FP, LR, [SP, #-0x10]!
//  0x439ad4: mov FP, SP
//  0x439ad8: ldr x0, [FP, #0x28]
//  0x439adc: ldur w1, [x0, #0x17]
//  0x439ae0: add x1, x1, HEAP, lsl #32
//  0x439ae4: ldr BARRIER, [THR, #0x38]
//  0x439ae8: cmp SP, BARRIER
//  0x439aec: b.ls #0x439b2c
//  0x439af0: ldur w0, [x1, #0xf]
//  0x439af4: add x0, x0, HEAP, lsl #32
//  0x439af8: ldur w1, [x0, #0xb]
//  0x439afc: add x1, x1, HEAP, lsl #32
//  0x439b00: cmp w1, w22
//  0x439b04: b.eq #0x439b34
//  0x439b08: ldur w5, [x1, #0x13]
//  0x439b0c: add x5, x5, HEAP, lsl #32
//  0x439b10: ldur x2, [x1, #0xb]
//  0x439b14: mov x1, x0
//  0x439b18: ldr x3, [FP, #0x18]
//  0x439b1c: bl #0x439b38
//  0x439b20: mov SP, FP
//  0x439b24: ldp FP, LR, [SP], #0x10
//  0x439b28: ret 
//  0x439b2c: bl #0x61fa28
//  0x439b30: b #0x439af0
//  0x439b34: bl #0x61ffd0
//
dynamic GameFruitWinnerDialogState_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w5;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x439ad0
  BARRIER = mem(THR, 0x38); // 0x439ae4
  // frame: FP = SP // 0x439ad4
  w1 = mem((local_28), 0x17); // 0x439adc
  x0 = local_28; // 0x439ad8
  x1 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x439ae0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x439b2c
  }
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x439af8
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x439af4
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x439afc
  if (w1 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x439b34
  }
  x1 = x0; // 0x439b14
  x2 = mem(x1, 0xb); // 0x439b10
  x3 = local_18; // 0x439b18
  x5 = (w5 & 0xffffffff) + (HEAP << 32); // 0x439b0c
  GameFruitWinnerDialogState_winnerDialogWidget() /* 0x439b38 */; // 0x439b1c
  SP = FP; // 0x439b20
  // frame: FP, LR, mem(SP), 0x10 // 0x439b24
  return;
}

// GameFruitWinnerDialogState_winnerDialogWidget
// raw disassembly:
//  0x439b38: stp FP, LR, [SP, #-0x10]!
//  0x439b3c: mov FP, SP
//  0x439b40: sub SP, SP, #0x98
//  0x439b44: stur x1, [FP, #-8]
//  0x439b48: stur x2, [FP, #-0x10]
//  0x439b4c: stur x3, [FP, #-0x18]
//  0x439b50: stur x5, [FP, #-0x20]
//  0x439b54: ldr BARRIER, [THR, #0x38]
//  0x439b58: cmp SP, BARRIER
//  0x439b5c: b.ls #0x43b024
//  0x439b60: mov x1, #1
//  0x439b64: bl #0x61e890
//  0x439b68: mov x3, x0
//  0x439b6c: ldur x0, [FP, #-8]
//  0x439b70: stur x3, [FP, #-0x28]
//  0x439b74: stur w0, [x3, #0xf]
//  0x439b78: ldur x1, [FP, #-0x20]
//  0x439b7c: cmp w1, w22
//  0x439b80: b.ne #0x439b98
//  0x439b84: ldur x1, [FP, #-0x18]
//  0x439b88: ldur w2, [x1, #0x2f]
//  0x439b8c: add x2, x2, HEAP, lsl #32
//  0x439b90: mov x4, x2
//  0x439b94: b #0x439b9c
//  0x439b98: mov x4, x1
//  0x439b9c: stur x4, [FP, #-0x18]
//  0x439ba0: ldur w1, [x4, #0xf]
//  0x439ba4: add x1, x1, HEAP, lsl #32
//  0x439ba8: cmp w1, w22
//  0x439bac: b.ne #0x439bc8
//  0x439bb0: add x1, PP, #0x11, lsl #12
//  0x439bb4: ldr x1, [x1, #0xce8]
//  0x439bb8: mov x2, #0
//  0x439bbc: bl #0x277268
//  0x439bc0: mov x2, x0
//  0x439bc4: b #0x439bcc
//  0x439bc8: mov x2, x1
//  0x439bcc: ldur w0, [x2, #0xb]
//  0x439bd0: sbfx x3, x0, #1, #0x1f
//  0x439bd4: stur x3, [FP, #-0x40]
//  0x439bd8: cmp x3, #1
//  0x439bdc: b.ne #0x439c10
//  0x439be0: mov x0, x3
//  0x439be4: mov x1, #0
//  0x439be8: cmp x1, x0
//  0x439bec: b.hs #0x43b02c
//  0x439bf0: ldur w0, [x2, #0xf]
//  0x439bf4: add x0, x0, HEAP, lsl #32
//  0x439bf8: ldur w1, [x0, #0xf]
//  0x439bfc: add x1, x1, HEAP, lsl #32
//  0x439c00: mov x7, x1
//  0x439c04: mov x6, NULL
//  0x439c08: mov x5, NULL
//  0x439c0c: b #0x439cd4
//  0x439c10: cmp x3, #2
//  0x439c14: b.ne #0x439c5c
//  0x439c18: mov x0, x3
//  0x439c1c: mov x1, #0
//  0x439c20: cmp x1, x0
//  0x439c24: b.hs #0x43b030
//  0x439c28: ldur w4, [x2, #0xf]
//  0x439c2c: add x4, x4, HEAP, lsl #32
//  0x439c30: ldur w2, [x4, #0xf]
//  0x439c34: add x2, x2, HEAP, lsl #32
//  0x439c38: mov x0, x3
//  0x439c3c: mov x1, #1
//  0x439c40: cmp x1, x0
//  0x439c44: b.hs #0x43b034
//  0x439c48: ldur w0, [x4, #0x13]
//  0x439c4c: add x0, x0, HEAP, lsl #32
//  0x439c50: mov x1, x0
//  0x439c54: mov x0, NULL
//  0x439c58: b #0x439cc8
//  0x439c5c: cmp x3, #3
//  0x439c60: b.ne #0x439cbc
//  0x439c64: mov x0, x3
//  0x439c68: mov x1, #0
//  0x439c6c: cmp x1, x0
//  0x439c70: b.hs #0x43b038
//  0x439c74: ldur w4, [x2, #0xf]
//  0x439c78: add x4, x4, HEAP, lsl #32
//  0x439c7c: ldur w2, [x4, #0xf]
//  0x439c80: add x2, x2, HEAP, lsl #32
//  0x439c84: mov x0, x3
//  0x439c88: mov x1, #1
//  0x439c8c: cmp x1, x0
//  0x439c90: b.hs #0x43b03c
//  0x439c94: ldur w5, [x4, #0x13]
//  0x439c98: add x5, x5, HEAP, lsl #32
//  0x439c9c: mov x0, x3
//  0x439ca0: mov x1, #2
//  0x439ca4: cmp x1, x0
//  0x439ca8: b.hs #0x43b040
//  0x439cac: ldur w0, [x4, #0x17]
//  0x439cb0: add x0, x0, HEAP, lsl #32
//  0x439cb4: mov x1, x5
//  0x439cb8: b #0x439cc8
//  0x439cbc: mov x2, NULL
//  0x439cc0: mov x1, NULL
//  0x439cc4: mov x0, NULL
//  0x439cc8: mov x7, x2
//  0x439ccc: mov x6, x1
//  0x439cd0: mov x5, x0
//  0x439cd4: ldur x4, [FP, #-0x10]
//  0x439cd8: ldur x2, [FP, #-0x18]
//  0x439cdc: stur x7, [FP, #-0x20]
//  0x439ce0: stur x6, [FP, #-0x30]
//  0x439ce4: stur x5, [FP, #-0x38]
//  0x439ce8: sbfiz x0, x4, #1, #0x1f
//  0x439cec: cmp x4, x0, asr #1
//  0x439cf0: b.eq #0x439cfc
//  0x439cf4: bl #0x61fba8
//  0x439cf8: stur x4, [x0, #7]
//  0x439cfc: mov x1, #0x3c
//  0x439d00: tbz w0, #0, #0x439d0c
//  0x439d04: ldur x1, [x0, #-1]
//  0x439d08: ubfx x1, x1, #0xc, #0x14
//  0x439d0c: str x0, [SP]
//  0x439d10: mov x0, x1
//  0x439d14: ldr x4, [PP, #0x3a8]
//  0x439d18: mov x17, #0x3e07
//  0x439d1c: add LR, x0, x17
//  0x439d20: ldr LR, [x21, LR, lsl #3]
//  0x439d24: blr LR
//  0x439d28: mov x1, x0
//  0x439d2c: ldur x0, [FP, #-0x18]
//  0x439d30: stur x1, [FP, #-0x58]
//  0x439d34: ldur w2, [x0, #0x13]
//  0x439d38: add x2, x2, HEAP, lsl #32
//  0x439d3c: cmp w2, w22
//  0x439d40: b.ne #0x439d4c
//  0x439d44: mov x3, NULL
//  0x439d48: b #0x439d54
//  0x439d4c: ldur w3, [x2, #7]
//  0x439d50: add x3, x3, HEAP, lsl #32
//  0x439d54: cmp w3, w22
//  0x439d58: b.ne #0x439d60
//  0x439d5c: ldr x3, [PP, #0x148]
//  0x439d60: stur x3, [FP, #-0x50]
//  0x439d64: cmp w2, w22
//  0x439d68: b.ne #0x439d74
//  0x439d6c: mov x2, NULL
//  0x439d70: b #0x439d80
//  0x439d74: ldur w4, [x2, #0xf]
//  0x439d78: add x4, x4, HEAP, lsl #32
//  0x439d7c: mov x2, x4
//  0x439d80: cmp w2, w22
//  0x439d84: b.ne #0x439d8c
//  0x439d88: ldr x2, [PP, #0x148]
//  0x439d8c: stur x2, [FP, #-0x48]
//  0x439d90: bl #0x2e3578
//  0x439d94: fmov d0, #12.00000000
//  0x439d98: stur x0, [FP, #-0x60]
//  0x439d9c: stur d0, [x0, #7]
//  0x439da0: fmov d1, #6.00000000
//  0x439da4: stur d1, [x0, #0xf]
//  0x439da8: stur d0, [x0, #0x17]
//  0x439dac: stur xzr, [x0, #0x1f]
//  0x439db0: bl #0x352b04
//  0x439db4: fmov d0, #8.00000000
//  0x439db8: stur x0, [FP, #-0x68]
//  0x439dbc: stur d0, [x0, #7]
//  0x439dc0: stur d0, [x0, #0xf]
//  0x439dc4: bl #0x392f28
//  0x439dc8: mov x1, x0
//  0x439dcc: ldur x0, [FP, #-0x68]
//  0x439dd0: stur x1, [FP, #-0x70]
//  0x439dd4: stur w0, [x1, #7]
//  0x439dd8: stur w0, [x1, #0xb]
//  0x439ddc: stur w0, [x1, #0xf]
//  0x439de0: stur w0, [x1, #0x13]
//  0x439de4: bl #0x31d844
//  0x439de8: mov x1, x0
//  0x439dec: ldr x0, [PP, #0x6310]
//  0x439df0: stur x1, [FP, #-0x68]
//  0x439df4: stur w0, [x1, #0x27]
//  0x439df8: fmov d0, #1.00000000
//  0x439dfc: stur d0, [x1, #7]
//  0x439e00: add x17, PP, #0x15, lsl #12
//  0x439e04: ldr d1, [x17, #0x4a0]
//  0x439e08: stur d1, [x1, #0xf]
//  0x439e0c: stur xzr, [x1, #0x17]
//  0x439e10: add x17, PP, #0x15, lsl #12
//  0x439e14: ldr d1, [x17, #0x4a8]
//  0x439e18: stur d1, [x1, #0x1f]
//  0x439e1c: bl #0x391dd8
//  0x439e20: mov x3, x0
//  0x439e24: ldur x0, [FP, #-0x68]
//  0x439e28: stur x3, [FP, #-0x78]
//  0x439e2c: stur w0, [x3, #7]
//  0x439e30: ldur x0, [FP, #-0x70]
//  0x439e34: stur w0, [x3, #0x13]
//  0x439e38: add x0, PP, #0xe, lsl #12
//  0x439e3c: ldr x0, [x0, #0xb78]
//  0x439e40: stur w0, [x3, #0x23]
//  0x439e44: mov x1, NULL
//  0x439e48: mov x2, #2
//  0x439e4c: bl #0x61f920
//  0x439e50: mov x2, x0
//  0x439e54: ldur x0, [FP, #-0x58]
//  0x439e58: stur x2, [FP, #-0x68]
//  0x439e5c: stur w0, [x2, #0xf]
//  0x439e60: ldr x1, [PP, #0x868]
//  0x439e64: bl #0x61e854
//  0x439e68: mov x1, x0
//  0x439e6c: ldur x0, [FP, #-0x68]
//  0x439e70: stur w0, [x1, #0xf]
//  0x439e74: mov x2, #2
//  0x439e78: stur w2, [x1, #0xb]
//  0x439e7c: str x1, [SP]
//  0x439e80: add x1, PP, #0xc, lsl #12
//  0x439e84: ldr x1, [x1, #0x8e0]
//  0x439e88: add x4, PP, #0xf, lsl #12
//  0x439e8c: ldr x4, [x4, #0xf20]
//  0x439e90: bl #0x3a1dcc
//  0x439e94: stur x0, [FP, #-0x58]
//  0x439e98: bl #0x31abec
//  0x439e9c: mov x1, x0
//  0x439ea0: add x0, NULL, #0x20
//  0x439ea4: stur x1, [FP, #-0x68]
//  0x439ea8: stur w0, [x1, #7]
//  0x439eac: ldr x2, [PP, #0x6050]
//  0x439eb0: stur w2, [x1, #0xb]
//  0x439eb4: add x3, PP, #0xf, lsl #12
//  0x439eb8: ldr x3, [x3, #0x208]
//  0x439ebc: stur w3, [x1, #0x1f]
//  0x439ec0: bl #0x393bf8
//  0x439ec4: mov x1, x0
//  0x439ec8: ldur x0, [FP, #-0x58]
//  0x439ecc: stur x1, [FP, #-0x70]
//  0x439ed0: stur w0, [x1, #0xb]
//  0x439ed4: ldur x0, [FP, #-0x68]
//  0x439ed8: stur w0, [x1, #0x13]
//  0x439edc: bl #0x391a04
//  0x439ee0: stur x0, [FP, #-0x58]
//  0x439ee4: add BARRIER, PP, #0x12, lsl #12
//  0x439ee8: ldr BARRIER, [BARRIER, #0x560]
//  0x439eec: ldur LR, [FP, #-0x60]
//  0x439ef0: stp LR, BARRIER, [SP, #0x10]
//  0x439ef4: ldur BARRIER, [FP, #-0x78]
//  0x439ef8: ldur LR, [FP, #-0x70]
//  0x439efc: stp LR, BARRIER, [SP]
//  0x439f00: mov x1, x0
//  0x439f04: add x4, PP, #0x12, lsl #12
//  0x439f08: ldr x4, [x4, #0x160]
//  0x439f0c: bl #0x391490
//  0x439f10: ldr x1, [PP, #0x5c58]
//  0x439f14: mov x2, #0x18
//  0x439f18: bl #0x61f920
//  0x439f1c: mov x1, x0
//  0x439f20: ldur x0, [FP, #-0x58]
//  0x439f24: stur x1, [FP, #-0x60]
//  0x439f28: stur w0, [x1, #0xf]
//  0x439f2c: bl #0x3949ec
//  0x439f30: add x2, PP, #0xe, lsl #12
//  0x439f34: ldr x2, [x2, #0xb50]
//  0x439f38: stur w2, [x0, #0x13]
//  0x439f3c: ldur x1, [FP, #-0x60]
//  0x439f40: add x25, x1, #0x13
//  0x439f44: str w0, [x25]
//  0x439f48: tbz w0, #0, #0x439f64
//  0x439f4c: ldurb w16, [x1, #-1]
//  0x439f50: ldurb w17, [x0, #-1]
//  0x439f54: and BARRIER, x17, BARRIER, lsr #2
//  0x439f58: tst BARRIER, HEAP, lsr #32
//  0x439f5c: b.eq #0x439f64
//  0x439f60: bl #0x61db00
//  0x439f64: ldur x0, [FP, #-0x18]
//  0x439f68: ldur w1, [x0, #0x13]
//  0x439f6c: add x1, x1, HEAP, lsl #32
//  0x439f70: cmp w1, w22
//  0x439f74: b.ne #0x439f80
//  0x439f78: mov x0, NULL
//  0x439f7c: b #0x439f88
//  0x439f80: ldur w0, [x1, #0xb]
//  0x439f84: add x0, x0, HEAP, lsl #32
//  0x439f88: cmp w0, w22
//  0x439f8c: b.ne #0x439f98
//  0x439f90: ldr x4, [PP, #0x148]
//  0x439f94: b #0x439f9c
//  0x439f98: mov x4, x0
//  0x439f9c: ldur x0, [FP, #-0x50]
//  0x439fa0: ldur x1, [FP, #-0x48]
//  0x439fa4: ldur x3, [FP, #-0x40]
//  0x439fa8: stur x4, [FP, #-0x18]
//  0x439fac: bl #0x3b6694
//  0x439fb0: mov x1, x0
//  0x439fb4: ldur x0, [FP, #-0x18]
//  0x439fb8: stur w0, [x1, #0xb]
//  0x439fbc: add x0, PP, #0x15, lsl #12
//  0x439fc0: ldr x0, [x0, #0x4f0]
//  0x439fc4: stur w0, [x1, #0xf]
//  0x439fc8: stur w0, [x1, #0x13]
//  0x439fcc: add x0, NULL, #0x30
//  0x439fd0: stur w0, [x1, #0x1b]
//  0x439fd4: stur w0, [x1, #0x1f]
//  0x439fd8: mov x0, x1
//  0x439fdc: ldur x1, [FP, #-0x60]
//  0x439fe0: add x25, x1, #0x17
//  0x439fe4: str w0, [x25]
//  0x439fe8: tbz w0, #0, #0x43a004
//  0x439fec: ldurb w16, [x1, #-1]
//  0x439ff0: ldurb w17, [x0, #-1]
//  0x439ff4: and BARRIER, x17, BARRIER, lsr #2
//  0x439ff8: tst BARRIER, HEAP, lsr #32
//  0x439ffc: b.eq #0x43a004
//  0x43a000: bl #0x61db00
//  0x43a004: bl #0x3949ec
//  0x43a008: mov x1, x0
//  0x43a00c: add x0, PP, #0x12, lsl #12
//  0x43a010: ldr x0, [x0, #0x3a0]
//  0x43a014: stur w0, [x1, #0x13]
//  0x43a018: mov x0, x1
//  0x43a01c: ldur x1, [FP, #-0x60]
//  0x43a020: add x25, x1, #0x1b
//  0x43a024: str w0, [x25]
//  0x43a028: tbz w0, #0, #0x43a044
//  0x43a02c: ldurb w16, [x1, #-1]
//  0x43a030: ldurb w17, [x0, #-1]
//  0x43a034: and BARRIER, x17, BARRIER, lsr #2
//  0x43a038: tst BARRIER, HEAP, lsr #32
//  0x43a03c: b.eq #0x43a044
//  0x43a040: bl #0x61db00
//  0x43a044: mov x1, NULL
//  0x43a048: mov x2, #2
//  0x43a04c: bl #0x61f920
//  0x43a050: mov x2, x0
//  0x43a054: ldur x0, [FP, #-0x48]
//  0x43a058: stur x2, [FP, #-0x18]
//  0x43a05c: stur w0, [x2, #0xf]
//  0x43a060: ldr x1, [PP, #0x868]
//  0x43a064: bl #0x61e854
//  0x43a068: mov x1, x0
//  0x43a06c: ldur x0, [FP, #-0x18]
//  0x43a070: stur w0, [x1, #0xf]
//  0x43a074: mov x2, #2
//  0x43a078: stur w2, [x1, #0xb]
//  0x43a07c: str x1, [SP]
//  0x43a080: add x1, PP, #0xc, lsl #12
//  0x43a084: ldr x1, [x1, #0x760]
//  0x43a088: add x4, PP, #0xf, lsl #12
//  0x43a08c: ldr x4, [x4, #0xf20]
//  0x43a090: bl #0x3a1dcc
//  0x43a094: stur x0, [FP, #-0x18]
//  0x43a098: bl #0x3a67f0
//  0x43a09c: mov x3, x0
//  0x43a0a0: ldr x0, [PP, #0x40]
//  0x43a0a4: stur x3, [FP, #-0x58]
//  0x43a0a8: stur w0, [x3, #0xf]
//  0x43a0ac: add x1, PP, #0xf, lsl #12
//  0x43a0b0: ldr x1, [x1, #0xb78]
//  0x43a0b4: mov x2, #0
//  0x43a0b8: bl #0x277268
//  0x43a0bc: ldur x1, [FP, #-0x58]
//  0x43a0c0: stur w0, [x1, #0x13]
//  0x43a0c4: ldurb w16, [x1, #-1]
//  0x43a0c8: ldurb w17, [x0, #-1]
//  0x43a0cc: and BARRIER, x17, BARRIER, lsr #2
//  0x43a0d0: tst BARRIER, HEAP, lsr #32
//  0x43a0d4: b.eq #0x43a0dc
//  0x43a0d8: bl #0x61e04c
//  0x43a0dc: ldur x0, [FP, #-0x18]
//  0x43a0e0: stur w0, [x1, #7]
//  0x43a0e4: ldurb w16, [x1, #-1]
//  0x43a0e8: ldurb w17, [x0, #-1]
//  0x43a0ec: and BARRIER, x17, BARRIER, lsr #2
//  0x43a0f0: tst BARRIER, HEAP, lsr #32
//  0x43a0f4: b.eq #0x43a0fc
//  0x43a0f8: bl #0x61e04c
//  0x43a0fc: ldur x0, [FP, #-0x48]
//  0x43a100: stur w0, [x1, #0xb]
//  0x43a104: ldurb w16, [x1, #-1]
//  0x43a108: ldurb w17, [x0, #-1]
//  0x43a10c: and BARRIER, x17, BARRIER, lsr #2
//  0x43a110: tst BARRIER, HEAP, lsr #32
//  0x43a114: b.eq #0x43a11c
//  0x43a118: bl #0x61e04c
//  0x43a11c: bl #0x31abec
//  0x43a120: mov x1, x0
//  0x43a124: add x0, NULL, #0x20
//  0x43a128: stur x1, [FP, #-0x18]
//  0x43a12c: stur w0, [x1, #7]
//  0x43a130: ldr x2, [PP, #0x6050]
//  0x43a134: stur w2, [x1, #0xb]
//  0x43a138: add x3, PP, #0xf, lsl #12
//  0x43a13c: ldr x3, [x3, #0x208]
//  0x43a140: stur w3, [x1, #0x1f]
//  0x43a144: bl #0x31abec
//  0x43a148: mov x1, x0
//  0x43a14c: add x0, NULL, #0x20
//  0x43a150: stur w0, [x1, #7]
//  0x43a154: ldr x2, [PP, #0x6050]
//  0x43a158: stur w2, [x1, #0xb]
//  0x43a15c: add x3, PP, #0xf, lsl #12
//  0x43a160: ldr x3, [x3, #0x1e8]
//  0x43a164: stur w3, [x1, #0x1f]
//  0x43a168: ldur BARRIER, [FP, #-0x18]
//  0x43a16c: stp x1, BARRIER, [SP]
//  0x43a170: ldur x1, [FP, #-0x58]
//  0x43a174: add x4, PP, #0xf, lsl #12
//  0x43a178: ldr x4, [x4, #0xb88]
//  0x43a17c: bl #0x3a5b48
//  0x43a180: stur x0, [FP, #-0x18]
//  0x43a184: bl #0x393bf8
//  0x43a188: mov x1, x0
//  0x43a18c: ldur x0, [FP, #-0x18]
//  0x43a190: stur w0, [x1, #0xf]
//  0x43a194: ldr x3, [PP, #0x53a8]
//  0x43a198: stur w3, [x1, #0x1b]
//  0x43a19c: mov x0, x1
//  0x43a1a0: ldur x1, [FP, #-0x60]
//  0x43a1a4: add x25, x1, #0x1f
//  0x43a1a8: str w0, [x25]
//  0x43a1ac: tbz w0, #0, #0x43a1c8
//  0x43a1b0: ldurb w16, [x1, #-1]
//  0x43a1b4: ldurb w17, [x0, #-1]
//  0x43a1b8: and BARRIER, x17, BARRIER, lsr #2
//  0x43a1bc: tst BARRIER, HEAP, lsr #32
//  0x43a1c0: b.eq #0x43a1c8
//  0x43a1c4: bl #0x61db00
//  0x43a1c8: mov x1, NULL
//  0x43a1cc: mov x2, #2
//  0x43a1d0: bl #0x61f920
//  0x43a1d4: mov x2, x0
//  0x43a1d8: ldur x0, [FP, #-0x50]
//  0x43a1dc: stur x2, [FP, #-0x18]
//  0x43a1e0: stur w0, [x2, #0xf]
//  0x43a1e4: ldr x1, [PP, #0x868]
//  0x43a1e8: bl #0x61e854
//  0x43a1ec: mov x1, x0
//  0x43a1f0: ldur x0, [FP, #-0x18]
//  0x43a1f4: stur w0, [x1, #0xf]
//  0x43a1f8: mov x0, #2
//  0x43a1fc: stur w0, [x1, #0xb]
//  0x43a200: str x1, [SP]
//  0x43a204: add x1, PP, #0xc, lsl #12
//  0x43a208: ldr x1, [x1, #0x7f0]
//  0x43a20c: add x4, PP, #0xf, lsl #12
//  0x43a210: ldr x4, [x4, #0xf20]
//  0x43a214: bl #0x3a1dcc
//  0x43a218: stur x0, [FP, #-0x18]
//  0x43a21c: bl #0x3a67f0
//  0x43a220: mov x3, x0
//  0x43a224: ldr x0, [PP, #0x40]
//  0x43a228: stur x3, [FP, #-0x48]
//  0x43a22c: stur w0, [x3, #0xf]
//  0x43a230: add x1, PP, #0xf, lsl #12
//  0x43a234: ldr x1, [x1, #0xb78]
//  0x43a238: mov x2, #0
//  0x43a23c: bl #0x277268
//  0x43a240: ldur x1, [FP, #-0x48]
//  0x43a244: stur w0, [x1, #0x13]
//  0x43a248: ldurb w16, [x1, #-1]
//  0x43a24c: ldurb w17, [x0, #-1]
//  0x43a250: and BARRIER, x17, BARRIER, lsr #2
//  0x43a254: tst BARRIER, HEAP, lsr #32
//  0x43a258: b.eq #0x43a260
//  0x43a25c: bl #0x61e04c
//  0x43a260: ldur x0, [FP, #-0x18]
//  0x43a264: stur w0, [x1, #7]
//  0x43a268: ldurb w16, [x1, #-1]
//  0x43a26c: ldurb w17, [x0, #-1]
//  0x43a270: and BARRIER, x17, BARRIER, lsr #2
//  0x43a274: tst BARRIER, HEAP, lsr #32
//  0x43a278: b.eq #0x43a280
//  0x43a27c: bl #0x61e04c
//  0x43a280: ldur x0, [FP, #-0x50]
//  0x43a284: stur w0, [x1, #0xb]
//  0x43a288: ldurb w16, [x1, #-1]
//  0x43a28c: ldurb w17, [x0, #-1]
//  0x43a290: and BARRIER, x17, BARRIER, lsr #2
//  0x43a294: tst BARRIER, HEAP, lsr #32
//  0x43a298: b.eq #0x43a2a0
//  0x43a29c: bl #0x61e04c
//  0x43a2a0: bl #0x31abec
//  0x43a2a4: mov x1, x0
//  0x43a2a8: add x0, NULL, #0x20
//  0x43a2ac: stur x1, [FP, #-0x18]
//  0x43a2b0: stur w0, [x1, #7]
//  0x43a2b4: ldr x2, [PP, #0x6050]
//  0x43a2b8: stur w2, [x1, #0xb]
//  0x43a2bc: add x3, PP, #0xf, lsl #12
//  0x43a2c0: ldr x3, [x3, #0x208]
//  0x43a2c4: stur w3, [x1, #0x1f]
//  0x43a2c8: bl #0x31abec
//  0x43a2cc: mov x1, x0
//  0x43a2d0: add x0, NULL, #0x20
//  0x43a2d4: stur w0, [x1, #7]
//  0x43a2d8: ldr x2, [PP, #0x6050]
//  0x43a2dc: stur w2, [x1, #0xb]
//  0x43a2e0: add x3, PP, #0xf, lsl #12
//  0x43a2e4: ldr x3, [x3, #0x1e8]
//  0x43a2e8: stur w3, [x1, #0x1f]
//  0x43a2ec: ldur BARRIER, [FP, #-0x18]
//  0x43a2f0: stp x1, BARRIER, [SP]
//  0x43a2f4: ldur x1, [FP, #-0x48]
//  0x43a2f8: add x4, PP, #0xf, lsl #12
//  0x43a2fc: ldr x4, [x4, #0xb88]
//  0x43a300: bl #0x3a5b48
//  0x43a304: stur x0, [FP, #-0x18]
//  0x43a308: bl #0x393bf8
//  0x43a30c: mov x1, x0
//  0x43a310: ldur x0, [FP, #-0x18]
//  0x43a314: stur w0, [x1, #0xf]
//  0x43a318: ldr x0, [PP, #0x53a8]
//  0x43a31c: stur w0, [x1, #0x1b]
//  0x43a320: mov x0, x1
//  0x43a324: ldur x1, [FP, #-0x60]
//  0x43a328: add x25, x1, #0x23
//  0x43a32c: str w0, [x25]
//  0x43a330: tbz w0, #0, #0x43a34c
//  0x43a334: ldurb w16, [x1, #-1]
//  0x43a338: ldurb w17, [x0, #-1]
//  0x43a33c: and BARRIER, x17, BARRIER, lsr #2
//  0x43a340: tst BARRIER, HEAP, lsr #32
//  0x43a344: b.eq #0x43a34c
//  0x43a348: bl #0x61db00
//  0x43a34c: bl #0x3949ec
//  0x43a350: add x2, PP, #0xe, lsl #12
//  0x43a354: ldr x2, [x2, #0xb50]
//  0x43a358: stur w2, [x0, #0x13]
//  0x43a35c: ldur x1, [FP, #-0x60]
//  0x43a360: add x25, x1, #0x27
//  0x43a364: str w0, [x25]
//  0x43a368: tbz w0, #0, #0x43a384
//  0x43a36c: ldurb w16, [x1, #-1]
//  0x43a370: ldurb w17, [x0, #-1]
//  0x43a374: and BARRIER, x17, BARRIER, lsr #2
//  0x43a378: tst BARRIER, HEAP, lsr #32
//  0x43a37c: b.eq #0x43a384
//  0x43a380: bl #0x61db00
//  0x43a384: bl #0x31d844
//  0x43a388: mov x1, x0
//  0x43a38c: ldr x0, [PP, #0x6310]
//  0x43a390: stur x1, [FP, #-0x18]
//  0x43a394: stur w0, [x1, #0x27]
//  0x43a398: ldr d0, [PP, #0x6658]
//  0x43a39c: stur d0, [x1, #7]
//  0x43a3a0: fmov d0, #1.00000000
//  0x43a3a4: stur d0, [x1, #0xf]
//  0x43a3a8: stur d0, [x1, #0x17]
//  0x43a3ac: stur d0, [x1, #0x1f]
//  0x43a3b0: bl #0x391a04
//  0x43a3b4: stur x0, [FP, #-0x48]
//  0x43a3b8: ldr BARRIER, [PP, #0x53a0]
//  0x43a3bc: ldur LR, [FP, #-0x18]
//  0x43a3c0: stp LR, BARRIER, [SP]
//  0x43a3c4: mov x1, x0
//  0x43a3c8: add x4, PP, #0xe, lsl #12
//  0x43a3cc: ldr x4, [x4, #0xeb0]
//  0x43a3d0: bl #0x391490
//  0x43a3d4: ldur x1, [FP, #-0x60]
//  0x43a3d8: ldur x0, [FP, #-0x48]
//  0x43a3dc: add x25, x1, #0x2b
//  0x43a3e0: str w0, [x25]
//  0x43a3e4: tbz w0, #0, #0x43a400
//  0x43a3e8: ldurb w16, [x1, #-1]
//  0x43a3ec: ldurb w17, [x0, #-1]
//  0x43a3f0: and BARRIER, x17, BARRIER, lsr #2
//  0x43a3f4: tst BARRIER, HEAP, lsr #32
//  0x43a3f8: b.eq #0x43a400
//  0x43a3fc: bl #0x61db00
//  0x43a400: bl #0x3949ec
//  0x43a404: mov x1, x0
//  0x43a408: add x0, PP, #0xe, lsl #12
//  0x43a40c: ldr x0, [x0, #0xb50]
//  0x43a410: stur w0, [x1, #0x13]
//  0x43a414: mov x0, x1
//  0x43a418: ldur x1, [FP, #-0x60]
//  0x43a41c: add x25, x1, #0x2f
//  0x43a420: str w0, [x25]
//  0x43a424: tbz w0, #0, #0x43a440
//  0x43a428: ldurb w16, [x1, #-1]
//  0x43a42c: ldurb w17, [x0, #-1]
//  0x43a430: and BARRIER, x17, BARRIER, lsr #2
//  0x43a434: tst BARRIER, HEAP, lsr #32
//  0x43a438: b.eq #0x43a440
//  0x43a43c: bl #0x61db00
//  0x43a440: ldur x0, [FP, #-0x40]
//  0x43a444: cmp x0, #0
//  0x43a448: b.le #0x43a4a8
//  0x43a44c: add x1, PP, #0xc, lsl #12
//  0x43a450: ldr x1, [x1, #0x7e0]
//  0x43a454: ldr x4, [PP, #0x4c0]
//  0x43a458: bl #0x3a1dcc
//  0x43a45c: stur x0, [FP, #-0x18]
//  0x43a460: bl #0x31abec
//  0x43a464: mov x1, x0
//  0x43a468: add x0, NULL, #0x20
//  0x43a46c: stur x1, [FP, #-0x48]
//  0x43a470: stur w0, [x1, #7]
//  0x43a474: ldr x2, [PP, #0x6050]
//  0x43a478: stur w2, [x1, #0xb]
//  0x43a47c: add x3, PP, #0xf, lsl #12
//  0x43a480: ldr x3, [x3, #0xb80]
//  0x43a484: stur w3, [x1, #0x1f]
//  0x43a488: bl #0x393bf8
//  0x43a48c: mov x1, x0
//  0x43a490: ldur x0, [FP, #-0x18]
//  0x43a494: stur w0, [x1, #0xb]
//  0x43a498: ldur x0, [FP, #-0x48]
//  0x43a49c: stur w0, [x1, #0x13]
//  0x43a4a0: mov x0, x1
//  0x43a4a4: b #0x43a4c0
//  0x43a4a8: bl #0x391a04
//  0x43a4ac: mov x1, x0
//  0x43a4b0: stur x0, [FP, #-0x18]
//  0x43a4b4: ldr x4, [PP, #0x4c0]
//  0x43a4b8: bl #0x391490
//  0x43a4bc: ldur x0, [FP, #-0x18]
//  0x43a4c0: ldur x2, [FP, #-0x40]
//  0x43a4c4: ldur x1, [FP, #-0x60]
//  0x43a4c8: add x25, x1, #0x33
//  0x43a4cc: str w0, [x25]
//  0x43a4d0: tbz w0, #0, #0x43a4ec
//  0x43a4d4: ldurb w16, [x1, #-1]
//  0x43a4d8: ldurb w17, [x0, #-1]
//  0x43a4dc: and BARRIER, x17, BARRIER, lsr #2
//  0x43a4e0: tst BARRIER, HEAP, lsr #32
//  0x43a4e4: b.eq #0x43a4ec
//  0x43a4e8: bl #0x61db00
//  0x43a4ec: bl #0x3949ec
//  0x43a4f0: mov x1, x0
//  0x43a4f4: ldr x0, [PP, #0x7598]
//  0x43a4f8: stur w0, [x1, #0x13]
//  0x43a4fc: mov x0, x1
//  0x43a500: ldur x1, [FP, #-0x60]
//  0x43a504: add x25, x1, #0x37
//  0x43a508: str w0, [x25]
//  0x43a50c: tbz w0, #0, #0x43a528
//  0x43a510: ldurb w16, [x1, #-1]
//  0x43a514: ldurb w17, [x0, #-1]
//  0x43a518: and BARRIER, x17, BARRIER, lsr #2
//  0x43a51c: tst BARRIER, HEAP, lsr #32
//  0x43a520: b.eq #0x43a528
//  0x43a524: bl #0x61db00
//  0x43a528: ldur x0, [FP, #-0x40]
//  0x43a52c: cmp x0, #0
//  0x43a530: b.le #0x43ac0c
//  0x43a534: ldur x0, [FP, #-0x20]
//  0x43a538: bl #0x2e3578
//  0x43a53c: fmov d0, #13.00000000
//  0x43a540: stur x0, [FP, #-0x18]
//  0x43a544: stur d0, [x0, #7]
//  0x43a548: stur xzr, [x0, #0xf]
//  0x43a54c: stur d0, [x0, #0x17]
//  0x43a550: stur xzr, [x0, #0x1f]
//  0x43a554: ldur x1, [FP, #-0x20]
//  0x43a558: cmp w1, w22
//  0x43a55c: b.eq #0x43a718
//  0x43a560: bl #0x31d844
//  0x43a564: mov x1, x0
//  0x43a568: ldr x0, [PP, #0x6310]
//  0x43a56c: stur w0, [x1, #0x27]
//  0x43a570: fmov d0, #1.00000000
//  0x43a574: stur d0, [x1, #7]
//  0x43a578: stur d0, [x1, #0xf]
//  0x43a57c: add x17, PP, #0xc, lsl #12
//  0x43a580: ldr d1, [x17, #0x2d8]
//  0x43a584: stur d1, [x1, #0x17]
//  0x43a588: add x17, PP, #0xe, lsl #12
//  0x43a58c: ldr d1, [x17, #0xdd0]
//  0x43a590: stur d1, [x1, #0x1f]
//  0x43a594: ldur x4, [FP, #-0x20]
//  0x43a598: ldur w2, [x4, #0xb]
//  0x43a59c: add x2, x2, HEAP, lsl #32
//  0x43a5a0: cmp w2, w22
//  0x43a5a4: b.ne #0x43a5b0
//  0x43a5a8: ldr x5, [PP, #0x148]
//  0x43a5ac: b #0x43a5b4
//  0x43a5b0: mov x5, x2
//  0x43a5b4: mov x2, x1
//  0x43a5b8: ldur x1, [FP, #-8]
//  0x43a5bc: add x3, PP, #0x11, lsl #12
//  0x43a5c0: ldr x3, [x3, #0x8a0]
//  0x43a5c4: bl #0x43b338
//  0x43a5c8: stur x0, [FP, #-0x48]
//  0x43a5cc: bl #0x3949ec
//  0x43a5d0: mov x3, x0
//  0x43a5d4: add x0, PP, #0xf, lsl #12
//  0x43a5d8: ldr x0, [x0, #0xbb8]
//  0x43a5dc: stur x3, [FP, #-0x50]
//  0x43a5e0: stur w0, [x3, #0x13]
//  0x43a5e4: ldur x4, [FP, #-0x20]
//  0x43a5e8: ldur w2, [x4, #7]
//  0x43a5ec: add x2, x2, HEAP, lsl #32
//  0x43a5f0: ldur x1, [FP, #-8]
//  0x43a5f4: bl #0x43b27c
//  0x43a5f8: stur x0, [FP, #-0x58]
//  0x43a5fc: bl #0x3949ec
//  0x43a600: mov x3, x0
//  0x43a604: add x0, PP, #0x10, lsl #12
//  0x43a608: ldr x0, [x0, #0x940]
//  0x43a60c: stur x3, [FP, #-0x68]
//  0x43a610: stur w0, [x3, #0x13]
//  0x43a614: ldur x1, [FP, #-0x20]
//  0x43a618: ldur w2, [x1, #0xf]
//  0x43a61c: add x2, x2, HEAP, lsl #32
//  0x43a620: ldur x1, [FP, #-8]
//  0x43a624: bl #0x43b0c4
//  0x43a628: mov x1, NULL
//  0x43a62c: mov x2, #0xa
//  0x43a630: stur x0, [FP, #-0x20]
//  0x43a634: bl #0x61f920
//  0x43a638: mov x2, x0
//  0x43a63c: ldur x0, [FP, #-0x48]
//  0x43a640: stur x2, [FP, #-0x70]
//  0x43a644: stur w0, [x2, #0xf]
//  0x43a648: ldur x0, [FP, #-0x50]
//  0x43a64c: stur w0, [x2, #0x13]
//  0x43a650: ldur x0, [FP, #-0x58]
//  0x43a654: stur w0, [x2, #0x17]
//  0x43a658: ldur x0, [FP, #-0x68]
//  0x43a65c: stur w0, [x2, #0x1b]
//  0x43a660: ldur x0, [FP, #-0x20]
//  0x43a664: stur w0, [x2, #0x1f]
//  0x43a668: ldr x1, [PP, #0x5c58]
//  0x43a66c: bl #0x61e854
//  0x43a670: mov x1, x0
//  0x43a674: ldur x0, [FP, #-0x70]
//  0x43a678: stur x1, [FP, #-0x20]
//  0x43a67c: stur w0, [x1, #0xf]
//  0x43a680: mov x2, #0xa
//  0x43a684: stur w2, [x1, #0xb]
//  0x43a688: bl #0x39310c
//  0x43a68c: mov x1, x0
//  0x43a690: add x0, PP, #0xa, lsl #12
//  0x43a694: ldr x0, [x0, #0x858]
//  0x43a698: stur x1, [FP, #-0x48]
//  0x43a69c: stur w0, [x1, #0xf]
//  0x43a6a0: add x2, PP, #0xe, lsl #12
//  0x43a6a4: ldr x2, [x2, #0xae0]
//  0x43a6a8: stur w2, [x1, #0x13]
//  0x43a6ac: add x3, PP, #0xe, lsl #12
//  0x43a6b0: ldr x3, [x3, #0xae8]
//  0x43a6b4: stur w3, [x1, #0x17]
//  0x43a6b8: add x4, PP, #0xe, lsl #12
//  0x43a6bc: ldr x4, [x4, #0xb60]
//  0x43a6c0: stur w4, [x1, #0x1b]
//  0x43a6c4: add x5, PP, #0xe, lsl #12
//  0x43a6c8: ldr x5, [x5, #0xaf8]
//  0x43a6cc: stur w5, [x1, #0x23]
//  0x43a6d0: add x6, PP, #0xa, lsl #12
//  0x43a6d4: ldr x6, [x6, #0xa8]
//  0x43a6d8: stur w6, [x1, #0x2b]
//  0x43a6dc: stur xzr, [x1, #0x2f]
//  0x43a6e0: ldur x7, [FP, #-0x20]
//  0x43a6e4: stur w7, [x1, #0xb]
//  0x43a6e8: bl #0x391a04
//  0x43a6ec: stur x0, [FP, #-0x20]
//  0x43a6f0: add BARRIER, PP, #0x15, lsl #12
//  0x43a6f4: ldr BARRIER, [BARRIER, #0x4f8]
//  0x43a6f8: ldur LR, [FP, #-0x48]
//  0x43a6fc: stp LR, BARRIER, [SP]
//  0x43a700: mov x1, x0
//  0x43a704: add x4, PP, #0xf, lsl #12
//  0x43a708: ldr x4, [x4, #0x240]
//  0x43a70c: bl #0x391490
//  0x43a710: ldur x1, [FP, #-0x20]
//  0x43a714: b #0x43a730
//  0x43a718: bl #0x391a04
//  0x43a71c: mov x1, x0
//  0x43a720: stur x0, [FP, #-0x20]
//  0x43a724: ldr x4, [PP, #0x4c0]
//  0x43a728: bl #0x391490
//  0x43a72c: ldur x1, [FP, #-0x20]
//  0x43a730: ldur x0, [FP, #-0x30]
//  0x43a734: stur x1, [FP, #-0x20]
//  0x43a738: cmp w0, w22
//  0x43a73c: b.eq #0x43a8fc
//  0x43a740: bl #0x31d844
//  0x43a744: mov x1, x0
//  0x43a748: ldr x0, [PP, #0x6310]
//  0x43a74c: stur w0, [x1, #0x27]
//  0x43a750: fmov d0, #1.00000000
//  0x43a754: stur d0, [x1, #7]
//  0x43a758: ldr d1, [PP, #0x6330]
//  0x43a75c: stur d1, [x1, #0xf]
//  0x43a760: add x17, PP, #0x11, lsl #12
//  0x43a764: ldr d1, [x17, #0x878]
//  0x43a768: stur d1, [x1, #0x17]
//  0x43a76c: add x17, PP, #0x10, lsl #12
//  0x43a770: ldr d1, [x17, #0xac0]
//  0x43a774: stur d1, [x1, #0x1f]
//  0x43a778: ldur x4, [FP, #-0x30]
//  0x43a77c: ldur w2, [x4, #0xb]
//  0x43a780: add x2, x2, HEAP, lsl #32
//  0x43a784: cmp w2, w22
//  0x43a788: b.ne #0x43a794
//  0x43a78c: ldr x5, [PP, #0x148]
//  0x43a790: b #0x43a798
//  0x43a794: mov x5, x2
//  0x43a798: mov x2, x1
//  0x43a79c: ldur x1, [FP, #-8]
//  0x43a7a0: add x3, PP, #0x11, lsl #12
//  0x43a7a4: ldr x3, [x3, #0x858]
//  0x43a7a8: bl #0x43b338
//  0x43a7ac: stur x0, [FP, #-0x48]
//  0x43a7b0: bl #0x3949ec
//  0x43a7b4: mov x3, x0
//  0x43a7b8: add x0, PP, #0xf, lsl #12
//  0x43a7bc: ldr x0, [x0, #0xbb8]
//  0x43a7c0: stur x3, [FP, #-0x50]
//  0x43a7c4: stur w0, [x3, #0x13]
//  0x43a7c8: ldur x4, [FP, #-0x30]
//  0x43a7cc: ldur w2, [x4, #7]
//  0x43a7d0: add x2, x2, HEAP, lsl #32
//  0x43a7d4: ldur x1, [FP, #-8]
//  0x43a7d8: bl #0x43b27c
//  0x43a7dc: stur x0, [FP, #-0x58]
//  0x43a7e0: bl #0x3949ec
//  0x43a7e4: mov x3, x0
//  0x43a7e8: add x0, PP, #0x10, lsl #12
//  0x43a7ec: ldr x0, [x0, #0x940]
//  0x43a7f0: stur x3, [FP, #-0x68]
//  0x43a7f4: stur w0, [x3, #0x13]
//  0x43a7f8: ldur x1, [FP, #-0x30]
//  0x43a7fc: ldur w2, [x1, #0xf]
//  0x43a800: add x2, x2, HEAP, lsl #32
//  0x43a804: ldur x1, [FP, #-8]
//  0x43a808: bl #0x43b0c4
//  0x43a80c: mov x1, NULL
//  0x43a810: mov x2, #0xa
//  0x43a814: stur x0, [FP, #-0x30]
//  0x43a818: bl #0x61f920
//  0x43a81c: mov x2, x0
//  0x43a820: ldur x0, [FP, #-0x48]
//  0x43a824: stur x2, [FP, #-0x70]
//  0x43a828: stur w0, [x2, #0xf]
//  0x43a82c: ldur x0, [FP, #-0x50]
//  0x43a830: stur w0, [x2, #0x13]
//  0x43a834: ldur x0, [FP, #-0x58]
//  0x43a838: stur w0, [x2, #0x17]
//  0x43a83c: ldur x0, [FP, #-0x68]
//  0x43a840: stur w0, [x2, #0x1b]
//  0x43a844: ldur x0, [FP, #-0x30]
//  0x43a848: stur w0, [x2, #0x1f]
//  0x43a84c: ldr x1, [PP, #0x5c58]
//  0x43a850: bl #0x61e854
//  0x43a854: mov x1, x0
//  0x43a858: ldur x0, [FP, #-0x70]
//  0x43a85c: stur x1, [FP, #-0x30]
//  0x43a860: stur w0, [x1, #0xf]
//  0x43a864: mov x2, #0xa
//  0x43a868: stur w2, [x1, #0xb]
//  0x43a86c: bl #0x39310c
//  0x43a870: mov x1, x0
//  0x43a874: add x0, PP, #0xa, lsl #12
//  0x43a878: ldr x0, [x0, #0x858]
//  0x43a87c: stur x1, [FP, #-0x48]
//  0x43a880: stur w0, [x1, #0xf]
//  0x43a884: add x2, PP, #0xe, lsl #12
//  0x43a888: ldr x2, [x2, #0xae0]
//  0x43a88c: stur w2, [x1, #0x13]
//  0x43a890: add x3, PP, #0xe, lsl #12
//  0x43a894: ldr x3, [x3, #0xae8]
//  0x43a898: stur w3, [x1, #0x17]
//  0x43a89c: add x4, PP, #0xe, lsl #12
//  0x43a8a0: ldr x4, [x4, #0xb60]
//  0x43a8a4: stur w4, [x1, #0x1b]
//  0x43a8a8: add x5, PP, #0xe, lsl #12
//  0x43a8ac: ldr x5, [x5, #0xaf8]
//  0x43a8b0: stur w5, [x1, #0x23]
//  0x43a8b4: add x6, PP, #0xa, lsl #12
//  0x43a8b8: ldr x6, [x6, #0xa8]
//  0x43a8bc: stur w6, [x1, #0x2b]
//  0x43a8c0: stur xzr, [x1, #0x2f]
//  0x43a8c4: ldur x7, [FP, #-0x30]
//  0x43a8c8: stur w7, [x1, #0xb]
//  0x43a8cc: bl #0x391a04
//  0x43a8d0: stur x0, [FP, #-0x30]
//  0x43a8d4: add BARRIER, PP, #0x15, lsl #12
//  0x43a8d8: ldr BARRIER, [BARRIER, #0x4f8]
//  0x43a8dc: ldur LR, [FP, #-0x48]
//  0x43a8e0: stp LR, BARRIER, [SP]
//  0x43a8e4: mov x1, x0
//  0x43a8e8: add x4, PP, #0xf, lsl #12
//  0x43a8ec: ldr x4, [x4, #0x240]
//  0x43a8f0: bl #0x391490
//  0x43a8f4: ldur x1, [FP, #-0x30]
//  0x43a8f8: b #0x43a914
//  0x43a8fc: bl #0x391a04
//  0x43a900: mov x1, x0
//  0x43a904: stur x0, [FP, #-0x30]
//  0x43a908: ldr x4, [PP, #0x4c0]
//  0x43a90c: bl #0x391490
//  0x43a910: ldur x1, [FP, #-0x30]
//  0x43a914: ldur x0, [FP, #-0x38]
//  0x43a918: stur x1, [FP, #-0x30]
//  0x43a91c: cmp w0, w22
//  0x43a920: b.eq #0x43aae4
//  0x43a924: bl #0x31d844
//  0x43a928: mov x1, x0
//  0x43a92c: ldr x0, [PP, #0x6310]
//  0x43a930: stur w0, [x1, #0x27]
//  0x43a934: fmov d0, #1.00000000
//  0x43a938: stur d0, [x1, #7]
//  0x43a93c: add x17, PP, #0x10, lsl #12
//  0x43a940: ldr d0, [x17, #0x9a0]
//  0x43a944: stur d0, [x1, #0xf]
//  0x43a948: add x17, PP, #0x10, lsl #12
//  0x43a94c: ldr d0, [x17, #0xc60]
//  0x43a950: stur d0, [x1, #0x17]
//  0x43a954: add x17, PP, #0x11, lsl #12
//  0x43a958: ldr d0, [x17, #0x8f0]
//  0x43a95c: stur d0, [x1, #0x1f]
//  0x43a960: ldur x0, [FP, #-0x38]
//  0x43a964: ldur w2, [x0, #0xb]
//  0x43a968: add x2, x2, HEAP, lsl #32
//  0x43a96c: cmp w2, w22
//  0x43a970: b.ne #0x43a97c
//  0x43a974: ldr x5, [PP, #0x148]
//  0x43a978: b #0x43a980
//  0x43a97c: mov x5, x2
//  0x43a980: mov x2, x1
//  0x43a984: ldur x1, [FP, #-8]
//  0x43a988: add x3, PP, #0x11, lsl #12
//  0x43a98c: ldr x3, [x3, #0x8e8]
//  0x43a990: bl #0x43b338
//  0x43a994: stur x0, [FP, #-0x48]
//  0x43a998: bl #0x3949ec
//  0x43a99c: mov x3, x0
//  0x43a9a0: add x0, PP, #0xf, lsl #12
//  0x43a9a4: ldr x0, [x0, #0xbb8]
//  0x43a9a8: stur x3, [FP, #-0x50]
//  0x43a9ac: stur w0, [x3, #0x13]
//  0x43a9b0: ldur x0, [FP, #-0x38]
//  0x43a9b4: ldur w2, [x0, #7]
//  0x43a9b8: add x2, x2, HEAP, lsl #32
//  0x43a9bc: ldur x1, [FP, #-8]
//  0x43a9c0: bl #0x43b27c
//  0x43a9c4: stur x0, [FP, #-0x58]
//  0x43a9c8: bl #0x3949ec
//  0x43a9cc: mov x3, x0
//  0x43a9d0: add x0, PP, #0x10, lsl #12
//  0x43a9d4: ldr x0, [x0, #0x940]
//  0x43a9d8: stur x3, [FP, #-0x68]
//  0x43a9dc: stur w0, [x3, #0x13]
//  0x43a9e0: ldur x0, [FP, #-0x38]
//  0x43a9e4: ldur w2, [x0, #0xf]
//  0x43a9e8: add x2, x2, HEAP, lsl #32
//  0x43a9ec: ldur x1, [FP, #-8]
//  0x43a9f0: bl #0x43b0c4
//  0x43a9f4: mov x1, NULL
//  0x43a9f8: mov x2, #0xa
//  0x43a9fc: stur x0, [FP, #-0x38]
//  0x43aa00: bl #0x61f920
//  0x43aa04: mov x2, x0
//  0x43aa08: ldur x0, [FP, #-0x48]
//  0x43aa0c: stur x2, [FP, #-0x70]
//  0x43aa10: stur w0, [x2, #0xf]
//  0x43aa14: ldur x0, [FP, #-0x50]
//  0x43aa18: stur w0, [x2, #0x13]
//  0x43aa1c: ldur x0, [FP, #-0x58]
//  0x43aa20: stur w0, [x2, #0x17]
//  0x43aa24: ldur x0, [FP, #-0x68]
//  0x43aa28: stur w0, [x2, #0x1b]
//  0x43aa2c: ldur x0, [FP, #-0x38]
//  0x43aa30: stur w0, [x2, #0x1f]
//  0x43aa34: ldr x1, [PP, #0x5c58]
//  0x43aa38: bl #0x61e854
//  0x43aa3c: mov x1, x0
//  0x43aa40: ldur x0, [FP, #-0x70]
//  0x43aa44: stur x1, [FP, #-0x38]
//  0x43aa48: stur w0, [x1, #0xf]
//  0x43aa4c: mov x0, #0xa
//  0x43aa50: stur w0, [x1, #0xb]
//  0x43aa54: bl #0x39310c
//  0x43aa58: mov x1, x0
//  0x43aa5c: add x0, PP, #0xa, lsl #12
//  0x43aa60: ldr x0, [x0, #0x858]
//  0x43aa64: stur x1, [FP, #-0x48]
//  0x43aa68: stur w0, [x1, #0xf]
//  0x43aa6c: add x2, PP, #0xe, lsl #12
//  0x43aa70: ldr x2, [x2, #0xae0]
//  0x43aa74: stur w2, [x1, #0x13]
//  0x43aa78: add x3, PP, #0xe, lsl #12
//  0x43aa7c: ldr x3, [x3, #0xae8]
//  0x43aa80: stur w3, [x1, #0x17]
//  0x43aa84: add x4, PP, #0xe, lsl #12
//  0x43aa88: ldr x4, [x4, #0xb60]
//  0x43aa8c: stur w4, [x1, #0x1b]
//  0x43aa90: add x5, PP, #0xe, lsl #12
//  0x43aa94: ldr x5, [x5, #0xaf8]
//  0x43aa98: stur w5, [x1, #0x23]
//  0x43aa9c: add x6, PP, #0xa, lsl #12
//  0x43aaa0: ldr x6, [x6, #0xa8]
//  0x43aaa4: stur w6, [x1, #0x2b]
//  0x43aaa8: stur xzr, [x1, #0x2f]
//  0x43aaac: ldur x7, [FP, #-0x38]
//  0x43aab0: stur w7, [x1, #0xb]
//  0x43aab4: bl #0x391a04
//  0x43aab8: stur x0, [FP, #-0x38]
//  0x43aabc: add BARRIER, PP, #0x15, lsl #12
//  0x43aac0: ldr BARRIER, [BARRIER, #0x4f8]
//  0x43aac4: ldur LR, [FP, #-0x48]
//  0x43aac8: stp LR, BARRIER, [SP]
//  0x43aacc: mov x1, x0
//  0x43aad0: add x4, PP, #0xf, lsl #12
//  0x43aad4: ldr x4, [x4, #0x240]
//  0x43aad8: bl #0x391490
//  0x43aadc: ldur x5, [FP, #-0x38]
//  0x43aae0: b #0x43aafc
//  0x43aae4: bl #0x391a04
//  0x43aae8: mov x1, x0
//  0x43aaec: stur x0, [FP, #-0x38]
//  0x43aaf0: ldr x4, [PP, #0x4c0]
//  0x43aaf4: bl #0x391490
//  0x43aaf8: ldur x5, [FP, #-0x38]
//  0x43aafc: ldur x3, [FP, #-0x20]
//  0x43ab00: ldur x0, [FP, #-0x30]
//  0x43ab04: mov x4, #6
//  0x43ab08: mov x2, x4
//  0x43ab0c: stur x5, [FP, #-0x38]
//  0x43ab10: mov x1, NULL
//  0x43ab14: bl #0x61f920
//  0x43ab18: mov x2, x0
//  0x43ab1c: ldur x0, [FP, #-0x20]
//  0x43ab20: stur x2, [FP, #-0x48]
//  0x43ab24: stur w0, [x2, #0xf]
//  0x43ab28: ldur x0, [FP, #-0x30]
//  0x43ab2c: stur w0, [x2, #0x13]
//  0x43ab30: ldur x0, [FP, #-0x38]
//  0x43ab34: stur w0, [x2, #0x17]
//  0x43ab38: ldr x1, [PP, #0x5c58]
//  0x43ab3c: bl #0x61e854
//  0x43ab40: mov x1, x0
//  0x43ab44: ldur x0, [FP, #-0x48]
//  0x43ab48: stur x1, [FP, #-0x20]
//  0x43ab4c: stur w0, [x1, #0xf]
//  0x43ab50: mov x2, #6
//  0x43ab54: stur w2, [x1, #0xb]
//  0x43ab58: bl #0x3a1414
//  0x43ab5c: mov x1, x0
//  0x43ab60: ldr x0, [PP, #0x5140]
//  0x43ab64: stur x1, [FP, #-0x30]
//  0x43ab68: stur w0, [x1, #0xf]
//  0x43ab6c: add x0, PP, #0xe, lsl #12
//  0x43ab70: ldr x0, [x0, #0xae0]
//  0x43ab74: stur w0, [x1, #0x13]
//  0x43ab78: add x2, PP, #0xe, lsl #12
//  0x43ab7c: ldr x2, [x2, #0xae8]
//  0x43ab80: stur w2, [x1, #0x17]
//  0x43ab84: add x3, PP, #0xe, lsl #12
//  0x43ab88: ldr x3, [x3, #0xb60]
//  0x43ab8c: stur w3, [x1, #0x1b]
//  0x43ab90: add x4, PP, #0xe, lsl #12
//  0x43ab94: ldr x4, [x4, #0xaf8]
//  0x43ab98: stur w4, [x1, #0x23]
//  0x43ab9c: add x5, PP, #0xa, lsl #12
//  0x43aba0: ldr x5, [x5, #0xa8]
//  0x43aba4: stur w5, [x1, #0x2b]
//  0x43aba8: stur xzr, [x1, #0x2f]
//  0x43abac: ldur x6, [FP, #-0x20]
//  0x43abb0: stur w6, [x1, #0xb]
//  0x43abb4: bl #0x391a04
//  0x43abb8: stur x0, [FP, #-0x20]
//  0x43abbc: ldur BARRIER, [FP, #-0x18]
//  0x43abc0: ldur LR, [FP, #-0x30]
//  0x43abc4: stp LR, BARRIER, [SP]
//  0x43abc8: mov x1, x0
//  0x43abcc: add x4, PP, #0xf, lsl #12
//  0x43abd0: ldr x4, [x4, #0x200]
//  0x43abd4: bl #0x391490
//  0x43abd8: add x1, PP, #0xe, lsl #12
//  0x43abdc: ldr x1, [x1, #0xad0]
//  0x43abe0: bl #0x39fb14
//  0x43abe4: mov x1, x0
//  0x43abe8: mov x0, #1
//  0x43abec: stur x0, [x1, #0x13]
//  0x43abf0: add x0, PP, #0xe, lsl #12
//  0x43abf4: ldr x0, [x0, #0xad8]
//  0x43abf8: stur w0, [x1, #0x1b]
//  0x43abfc: ldur x0, [FP, #-0x20]
//  0x43ac00: stur w0, [x1, #0xb]
//  0x43ac04: mov x0, x1
//  0x43ac08: b #0x43acbc
//  0x43ac0c: fmov d0, #13.00000000
//  0x43ac10: bl #0x2e3578
//  0x43ac14: fmov d0, #13.00000000
//  0x43ac18: stur x0, [FP, #-0x18]
//  0x43ac1c: stur d0, [x0, #7]
//  0x43ac20: ldr d1, [PP, #0x74e8]
//  0x43ac24: stur d1, [x0, #0xf]
//  0x43ac28: stur d0, [x0, #0x17]
//  0x43ac2c: stur xzr, [x0, #0x1f]
//  0x43ac30: add x1, PP, #0xc, lsl #12
//  0x43ac34: ldr x1, [x1, #0x770]
//  0x43ac38: ldr x4, [PP, #0x4c0]
//  0x43ac3c: bl #0x3a1dcc
//  0x43ac40: stur x0, [FP, #-0x20]
//  0x43ac44: bl #0x31abec
//  0x43ac48: mov x1, x0
//  0x43ac4c: add x0, NULL, #0x20
//  0x43ac50: stur x1, [FP, #-0x30]
//  0x43ac54: stur w0, [x1, #7]
//  0x43ac58: ldr x2, [PP, #0x6050]
//  0x43ac5c: stur w2, [x1, #0xb]
//  0x43ac60: add x2, PP, #0xf, lsl #12
//  0x43ac64: ldr x2, [x2, #0xb80]
//  0x43ac68: stur w2, [x1, #0x1f]
//  0x43ac6c: bl #0x393bf8
//  0x43ac70: mov x1, x0
//  0x43ac74: ldur x0, [FP, #-0x20]
//  0x43ac78: stur x1, [FP, #-0x38]
//  0x43ac7c: stur w0, [x1, #0xb]
//  0x43ac80: ldur x0, [FP, #-0x30]
//  0x43ac84: stur w0, [x1, #0x13]
//  0x43ac88: bl #0x391a04
//  0x43ac8c: stur x0, [FP, #-0x20]
//  0x43ac90: ldur BARRIER, [FP, #-0x18]
//  0x43ac94: add LR, PP, #0xe, lsl #12
//  0x43ac98: ldr LR, [LR, #0xaa0]
//  0x43ac9c: stp LR, BARRIER, [SP, #8]
//  0x43aca0: ldur BARRIER, [FP, #-0x38]
//  0x43aca4: str BARRIER, [SP]
//  0x43aca8: mov x1, x0
//  0x43acac: add x4, PP, #0x10, lsl #12
//  0x43acb0: ldr x4, [x4, #0xca8]
//  0x43acb4: bl #0x391490
//  0x43acb8: ldur x0, [FP, #-0x20]
//  0x43acbc: ldur x3, [FP, #-8]
//  0x43acc0: ldur x2, [FP, #-0x60]
//  0x43acc4: mov x1, x2
//  0x43acc8: add x25, x1, #0x3b
//  0x43accc: str w0, [x25]
//  0x43acd0: tbz w0, #0, #0x43acec
//  0x43acd4: ldurb w16, [x1, #-1]
//  0x43acd8: ldurb w17, [x0, #-1]
//  0x43acdc: and BARRIER, x17, BARRIER, lsr #2
//  0x43ace0: tst BARRIER, HEAP, lsr #32
//  0x43ace4: b.eq #0x43acec
//  0x43ace8: bl #0x61db00
//  0x43acec: ldr x1, [PP, #0x5c58]
//  0x43acf0: bl #0x61e854
//  0x43acf4: mov x1, x0
//  0x43acf8: ldur x0, [FP, #-0x60]
//  0x43acfc: stur x1, [FP, #-0x18]
//  0x43ad00: stur w0, [x1, #0xf]
//  0x43ad04: mov x0, #0x18
//  0x43ad08: stur w0, [x1, #0xb]
//  0x43ad0c: bl #0x39310c
//  0x43ad10: mov x2, x0
//  0x43ad14: add x0, PP, #0xa, lsl #12
//  0x43ad18: ldr x0, [x0, #0x858]
//  0x43ad1c: stur x2, [FP, #-0x20]
//  0x43ad20: stur w0, [x2, #0xf]
//  0x43ad24: add x1, PP, #0xe, lsl #12
//  0x43ad28: ldr x1, [x1, #0xae0]
//  0x43ad2c: stur w1, [x2, #0x13]
//  0x43ad30: add x3, PP, #0xe, lsl #12
//  0x43ad34: ldr x3, [x3, #0xae8]
//  0x43ad38: stur w3, [x2, #0x17]
//  0x43ad3c: add x4, PP, #0xe, lsl #12
//  0x43ad40: ldr x4, [x4, #0xb60]
//  0x43ad44: stur w4, [x2, #0x1b]
//  0x43ad48: add x5, PP, #0xe, lsl #12
//  0x43ad4c: ldr x5, [x5, #0xaf8]
//  0x43ad50: stur w5, [x2, #0x23]
//  0x43ad54: add x6, PP, #0xa, lsl #12
//  0x43ad58: ldr x6, [x6, #0xa8]
//  0x43ad5c: stur w6, [x2, #0x2b]
//  0x43ad60: stur xzr, [x2, #0x2f]
//  0x43ad64: ldur x1, [FP, #-0x18]
//  0x43ad68: stur w1, [x2, #0xb]
//  0x43ad6c: ldur x1, [FP, #-8]
//  0x43ad70: ldur w7, [x1, #0x13]
//  0x43ad74: add x7, x7, HEAP, lsl #32
//  0x43ad78: ldur w8, [x7, #0x2b]
//  0x43ad7c: add x8, x8, HEAP, lsl #32
//  0x43ad80: mov x1, x7
//  0x43ad84: stur x8, [FP, #-8]
//  0x43ad88: bl #0x43b044
//  0x43ad8c: stur x0, [FP, #-0x18]
//  0x43ad90: bl #0x3b47fc
//  0x43ad94: stur x0, [FP, #-0x30]
//  0x43ad98: bl #0x393bf8
//  0x43ad9c: mov x1, x0
//  0x43ada0: ldur x0, [FP, #-0x18]
//  0x43ada4: stur w0, [x1, #0xb]
//  0x43ada8: ldur x0, [FP, #-0x30]
//  0x43adac: stur w0, [x1, #0x13]
//  0x43adb0: ldur BARRIER, [FP, #-8]
//  0x43adb4: str BARRIER, [SP]
//  0x43adb8: mov x2, x1
//  0x43adbc: add x1, PP, #0xf, lsl #12
//  0x43adc0: ldr x1, [x1, #0x5d8]
//  0x43adc4: add x3, PP, #0x12, lsl #12
//  0x43adc8: ldr x3, [x3, #0x1e0]
//  0x43adcc: ldr x5, [PP, #0x5330]
//  0x43add0: fmov d0, #9.00000000
//  0x43add4: add x4, PP, #0x15, lsl #12
//  0x43add8: ldr x4, [x4, #0x500]
//  0x43addc: bl #0x399fcc
//  0x43ade0: mov x1, NULL
//  0x43ade4: mov x2, #4
//  0x43ade8: stur x0, [FP, #-8]
//  0x43adec: bl #0x61f920
//  0x43adf0: mov x2, x0
//  0x43adf4: ldur x0, [FP, #-0x20]
//  0x43adf8: stur x2, [FP, #-0x18]
//  0x43adfc: stur w0, [x2, #0xf]
//  0x43ae00: ldur x0, [FP, #-8]
//  0x43ae04: stur w0, [x2, #0x13]
//  0x43ae08: ldr x1, [PP, #0x5c58]
//  0x43ae0c: bl #0x61e854
//  0x43ae10: mov x1, x0
//  0x43ae14: ldur x0, [FP, #-0x18]
//  0x43ae18: stur x1, [FP, #-8]
//  0x43ae1c: stur w0, [x1, #0xf]
//  0x43ae20: mov x0, #4
//  0x43ae24: stur w0, [x1, #0xb]
//  0x43ae28: bl #0x39e6f4
//  0x43ae2c: mov x1, x0
//  0x43ae30: add x0, PP, #0xe, lsl #12
//  0x43ae34: ldr x0, [x0, #0xf00]
//  0x43ae38: stur x1, [FP, #-0x18]
//  0x43ae3c: stur w0, [x1, #0xf]
//  0x43ae40: add x0, PP, #0xe, lsl #12
//  0x43ae44: ldr x0, [x0, #0xf08]
//  0x43ae48: stur w0, [x1, #0x17]
//  0x43ae4c: add x0, PP, #0xe, lsl #12
//  0x43ae50: ldr x0, [x0, #0xf10]
//  0x43ae54: stur w0, [x1, #0x1b]
//  0x43ae58: ldur x0, [FP, #-8]
//  0x43ae5c: stur w0, [x1, #0xb]
//  0x43ae60: bl #0x3a1da8
//  0x43ae64: add x17, PP, #0x12, lsl #12
//  0x43ae68: ldr d0, [x17, #0x550]
//  0x43ae6c: stur x0, [FP, #-8]
//  0x43ae70: stur d0, [x0, #0xb]
//  0x43ae74: add x17, PP, #0x15, lsl #12
//  0x43ae78: ldr d0, [x17, #0x508]
//  0x43ae7c: stur d0, [x0, #0x13]
//  0x43ae80: ldur x1, [FP, #-0x18]
//  0x43ae84: stur w1, [x0, #0x1b]
//  0x43ae88: add x1, PP, #0x15, lsl #12
//  0x43ae8c: ldr x1, [x1, #0x510]
//  0x43ae90: stur w1, [x0, #0x1f]
//  0x43ae94: bl #0x3949ec
//  0x43ae98: mov x1, x0
//  0x43ae9c: add x0, PP, #0x12, lsl #12
//  0x43aea0: ldr x0, [x0, #0x560]
//  0x43aea4: stur x1, [FP, #-0x18]
//  0x43aea8: stur w0, [x1, #0x13]
//  0x43aeac: bl #0x3a142c
//  0x43aeb0: mov x1, x0
//  0x43aeb4: add x0, PP, #0x12, lsl #12
//  0x43aeb8: ldr x0, [x0, #0x568]
//  0x43aebc: stur x1, [FP, #-0x20]
//  0x43aec0: stur w0, [x1, #0xb]
//  0x43aec4: add x0, PP, #0xf, lsl #12
//  0x43aec8: ldr x0, [x0, #0x170]
//  0x43aecc: stur w0, [x1, #0xf]
//  0x43aed0: add x0, PP, #0x12, lsl #12
//  0x43aed4: ldr x0, [x0, #0x560]
//  0x43aed8: stur w0, [x1, #0x13]
//  0x43aedc: stur w0, [x1, #0x17]
//  0x43aee0: bl #0x391a04
//  0x43aee4: stur x0, [FP, #-0x30]
//  0x43aee8: ldur BARRIER, [FP, #-0x20]
//  0x43aeec: str BARRIER, [SP]
//  0x43aef0: mov x1, x0
//  0x43aef4: add x4, PP, #0xc, lsl #12
//  0x43aef8: ldr x4, [x4, #0x1f8]
//  0x43aefc: bl #0x391490
//  0x43af00: bl #0x3a1d94
//  0x43af04: ldur x2, [FP, #-0x28]
//  0x43af08: add x1, PP, #0x15, lsl #12
//  0x43af0c: ldr x1, [x1, #0x518]
//  0x43af10: stur x0, [FP, #-0x20]
//  0x43af14: bl #0x61ec54
//  0x43af18: ldur BARRIER, [FP, #-0x30]
//  0x43af1c: stp x0, BARRIER, [SP]
//  0x43af20: ldur x1, [FP, #-0x20]
//  0x43af24: add x4, PP, #0xe, lsl #12
//  0x43af28: ldr x4, [x4, #0xec0]
//  0x43af2c: bl #0x3a18c4
//  0x43af30: mov x1, NULL
//  0x43af34: mov x2, #6
//  0x43af38: bl #0x61f920
//  0x43af3c: mov x2, x0
//  0x43af40: ldur x0, [FP, #-8]
//  0x43af44: stur x2, [FP, #-0x28]
//  0x43af48: stur w0, [x2, #0xf]
//  0x43af4c: ldur x0, [FP, #-0x18]
//  0x43af50: stur w0, [x2, #0x13]
//  0x43af54: ldur x0, [FP, #-0x20]
//  0x43af58: stur w0, [x2, #0x17]
//  0x43af5c: ldr x1, [PP, #0x5c58]
//  0x43af60: bl #0x61e854
//  0x43af64: mov x1, x0
//  0x43af68: ldur x0, [FP, #-0x28]
//  0x43af6c: stur x1, [FP, #-8]
//  0x43af70: stur w0, [x1, #0xf]
//  0x43af74: mov x0, #6
//  0x43af78: stur w0, [x1, #0xb]
//  0x43af7c: bl #0x39310c
//  0x43af80: mov x1, x0
//  0x43af84: add x0, PP, #0xa, lsl #12
//  0x43af88: ldr x0, [x0, #0x858]
//  0x43af8c: stur x1, [FP, #-0x18]
//  0x43af90: stur w0, [x1, #0xf]
//  0x43af94: add x0, PP, #0xf, lsl #12
//  0x43af98: ldr x0, [x0, #0x288]
//  0x43af9c: stur w0, [x1, #0x13]
//  0x43afa0: add x0, PP, #0xe, lsl #12
//  0x43afa4: ldr x0, [x0, #0xae8]
//  0x43afa8: stur w0, [x1, #0x17]
//  0x43afac: add x0, PP, #0xe, lsl #12
//  0x43afb0: ldr x0, [x0, #0xb60]
//  0x43afb4: stur w0, [x1, #0x1b]
//  0x43afb8: add x0, PP, #0xe, lsl #12
//  0x43afbc: ldr x0, [x0, #0xaf8]
//  0x43afc0: stur w0, [x1, #0x23]
//  0x43afc4: add x0, PP, #0xa, lsl #12
//  0x43afc8: ldr x0, [x0, #0xa8]
//  0x43afcc: stur w0, [x1, #0x2b]
//  0x43afd0: stur xzr, [x1, #0x2f]
//  0x43afd4: ldur x2, [FP, #-8]
//  0x43afd8: stur w2, [x1, #0xb]
//  0x43afdc: bl #0x3949f8
//  0x43afe0: add x1, PP, #0x12, lsl #12
//  0x43afe4: ldr x1, [x1, #0x578]
//  0x43afe8: stur w1, [x0, #0xf]
//  0x43afec: stur xzr, [x0, #0x13]
//  0x43aff0: add x1, NULL, #0x20
//  0x43aff4: stur w1, [x0, #0x2f]
//  0x43aff8: add x1, PP, #0xa, lsl #12
//  0x43affc: ldr x1, [x1, #0xa8]
//  0x43b000: stur w1, [x0, #0x33]
//  0x43b004: add x1, PP, #0xc, lsl #12
//  0x43b008: ldr x1, [x1, #0x258]
//  0x43b00c: stur w1, [x0, #0x37]
//  0x43b010: ldur x1, [FP, #-0x18]
//  0x43b014: stur w1, [x0, #0xb]
//  0x43b018: mov SP, FP
//  0x43b01c: ldp FP, LR, [SP], #0x10
//  0x43b020: ret 
//  0x43b024: bl #0x61fa28
//  0x43b028: b #0x439b60
//  0x43b02c: bl #0x61fe70
//  0x43b030: bl #0x61fe70
//  0x43b034: bl #0x61fe70
//  0x43b038: bl #0x61fe70
//  0x43b03c: bl #0x61fe70
//  0x43b040: bl #0x61fe70
//
// NOTE: control flow was not fully structured (goto kept) -- pseudocode only.
dynamic GameFruitWinnerDialogState_winnerDialogWidget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic w0;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w2;
  dynamic w3;
  dynamic w4;
  dynamic w5;
  dynamic w7;
  dynamic w8;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x25;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x7;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x439b38
  // frame: FP = SP // 0x439b3c
  // frame: SP = SP - 0x98 // 0x439b40
  local_m8 = x1; // 0x439b44
  local_m10 = x2; // 0x439b48
  local_m18 = x3; // 0x439b4c
  local_m20 = x5; // 0x439b50
  BARRIER = mem(THR, 0x38); // 0x439b54
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x43b024
  }
  x1 = 1; // 0x439b60
  sub_0x61e890(); // 0x439b64
  x0 = local_m8; // 0x439b6c
  x3 = x0; // 0x439b68
  local_m28 = x3; // 0x439b70
  memSet(x3, 0xf, w0); // 0x439b74
  x1 = local_m20; // 0x439b78
  if (w1 != w22) {
    x4 = x1; // 0x439b98
  } else {
    w2 = mem((local_m18), 0x2f); // 0x439b88
    x1 = local_m18; // 0x439b84
    x2 = ((mem((local_m18), 0x2f)) & 0xffffffff) + (HEAP << 32); // 0x439b8c
    x4 = ((mem((local_m18), 0x2f)) & 0xffffffff) + (HEAP << 32); // 0x439b90
  }
  local_m18 = x4; // 0x439b9c
  w1 = mem(x4, 0xf); // 0x439ba0
  x1 = ((mem(x4, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x439ba4
  if (w1 != w22) {
    x2 = x1; // 0x439bc8
  } else {
    x1 = mem((PP + 0x11000), 0xce8) /* TypeArguments */; // 0x439bb4
    x2 = 0; // 0x439bb8
    GrowableList_factory_ctor() /* 0x277268 */; // 0x439bbc
    x2 = x0; // 0x439bc0
  }
  x0 = w0 & 0xffffffff; // 0x439bcc
  x3 = ((w0 & 0xffffffff) >> 1) & 0x7fffffff; // 0x439bd0
  local_m40 = x3; // 0x439bd4
  if (x3 != 1) {
    if (x3 != 2) {
      if (x3 != 3) {
        x0 = NULL; // 0x439cc4
        x1 = NULL; // 0x439cc0
        x2 = NULL; // 0x439cbc
      } else {
        x0 = x3; // 0x439c64
        x1 = 0; // 0x439c68
        if (x1 >= x0) {
          RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x43b038
        } else {
          w2 = mem(((w4 & 0xffffffff) + (HEAP << 32)), 0xf); // 0x439c7c
          x0 = x3; // 0x439c84
          x1 = 1; // 0x439c88
          x2 = ((mem(((w4 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x439c80
          x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x439c78
          if (x1 >= x0) {
            RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x43b03c
          } else {
            x0 = x3; // 0x439c9c
            x1 = 2; // 0x439ca0
            x5 = (w5 & 0xffffffff) + (HEAP << 32); // 0x439c98
            if (x1 >= x0) {
              // duplicated branch body (target 0x43b040 terminates; the same code is emitted below)
              RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x43b040
            }
            x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x439cb0
            x1 = x5; // 0x439cb4
            x5 = x0; // 0x439cd0
            x6 = x1; // 0x439ccc
            x7 = x2; // 0x439cc8
            x2 = local_m18; // 0x439cd8
            x4 = local_m10; // 0x439cd4
            local_m20 = x7; // 0x439cdc
            local_m30 = x6; // 0x439ce0
            local_m38 = x5; // 0x439ce4
            x0 = ((x4 & 0x7fffffff) << 1) /* signed */; // 0x439ce8
            if (x4 == x0) {
            } else {
              AllocationStub__Mint() /* 0x61fba8 */; // 0x439cf4
              memSet(x0, 7, x4); // 0x439cf8
            }
            x1 = 60; // 0x439cfc
            if (x0 & (1 << 0) == 0) {
            } else {
              x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x439d08
            }
            local_0 = x0; // 0x439d0c
            LR = mem(x21, ((x0 + x17) << 3)); // 0x439d20
            x0 = x1; // 0x439d10
            x17 = 15879; // 0x439d18
            x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x439d14
            callIndirect(LR); // 0x439d24
            x0 = local_m18; // 0x439d2c
            x1 = x0; // 0x439d28
            local_m58 = x1; // 0x439d30
            w2 = mem(x0, 0x13); // 0x439d34
            x2 = ((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x439d38
            if (w2 != w22) {
              x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x439d50
            } else {
              x3 = NULL; // 0x439d44
            }
            if (w3 != w22) {
            } else {
              x3 = "" /* pp+0x148 */; // 0x439d5c
            }
            local_m50 = x3; // 0x439d60
            if (w2 != w22) {
              x2 = (w4 & 0xffffffff) + (HEAP << 32); // 0x439d7c
              x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x439d78
            } else {
              x2 = NULL; // 0x439d6c
            }
            if (w2 != w22) {
            } else {
              x2 = "" /* pp+0x148 */; // 0x439d88
            }
            local_m48 = x2; // 0x439d8c
            AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x439d90
            d0 = 12.00000000 /* bits */; // 0x439d94
            local_m60 = x0; // 0x439d98
            memSet(x0, 7, d0); // 0x439d9c
            d1 = 6.00000000 /* bits */; // 0x439da0
            memSet(x0, 0xf, d1); // 0x439da4
            memSet(x0, 0x17, d0); // 0x439da8
            memSet(x0, 0x1f, xzr); // 0x439dac
            AllocationStub_Radius() /* 0x352b04 */; // 0x439db0
            d0 = 8.00000000 /* bits */; // 0x439db4
            local_m68 = x0; // 0x439db8
            memSet(x0, 7, d0); // 0x439dbc
            memSet(x0, 0xf, d0); // 0x439dc0
            AllocationStub_BorderRadius() /* 0x392f28 */; // 0x439dc4
            x0 = local_m68; // 0x439dcc
            x1 = x0; // 0x439dc8
            local_m70 = x1; // 0x439dd0
            memSet(x1, 7, w0); // 0x439dd4
            memSet(x1, 0xb, w0); // 0x439dd8
            memSet(x1, 0xf, w0); // 0x439ddc
            memSet(x1, 0x13, w0); // 0x439de0
            AllocationStub_Color() /* 0x31d844 */; // 0x439de4
            x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x439dec
            x1 = x0; // 0x439de8
            local_m68 = x1; // 0x439df0
            memSet(x1, 0x27, w0); // 0x439df4
            d0 = 1.00000000 /* bits */; // 0x439df8
            memSet(x1, 7, d0); // 0x439dfc
            d1 = 4600029642921252503; // 0x439e04
            x17 = PP + 0x15000; // 0x439e00
            memSet(x1, 0xf, d1); // 0x439e08
            memSet(x1, 0x17, xzr); // 0x439e0c
            d1 = 4606016781249403868; // 0x439e14
            x17 = PP + 0x15000; // 0x439e10
            memSet(x1, 0x1f, d1); // 0x439e18
            AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x439e1c
            x0 = local_m68; // 0x439e24
            x3 = x0; // 0x439e20
            local_m78 = x3; // 0x439e28
            memSet(x3, 7, w0); // 0x439e2c
            x0 = local_m70; // 0x439e30
            memSet(x3, 0x13, w0); // 0x439e34
            x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x439e3c
            memSet(x3, 0x23, w0); // 0x439e40
            x1 = NULL; // 0x439e44
            x2 = 2; // 0x439e48
            sub_0x61f920(); // 0x439e4c
            x0 = local_m58; // 0x439e54
            x2 = x0; // 0x439e50
            local_m68 = x2; // 0x439e58
            memSet(x2, 0xf, w0); // 0x439e5c
            x1 = mem(PP, 0x868) /* TypeArguments */; // 0x439e60
            AllocationStub__GrowableList() /* 0x61e854 */; // 0x439e64
            x0 = local_m68; // 0x439e6c
            x1 = x0; // 0x439e68
            memSet(x1, 0xf, w0); // 0x439e70
            x2 = 2; // 0x439e74
            memSet(x1, 0xb, w2); // 0x439e78
            local_0 = x1; // 0x439e7c
            x1 = "virtual_party_fruitland_page_run_times" /* pp+0xc8e0 */; // 0x439e84
            x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x439e8c
            getString() /* 0x3a1dcc */; // 0x439e90
            local_m58 = x0; // 0x439e94
            AllocationStub_TextStyle() /* 0x31abec */; // 0x439e98
            x0 = NULL + 0x20; // 0x439ea0
            x1 = x0; // 0x439e9c
            local_m68 = x1; // 0x439ea4
            memSet(x1, 7, w0); // 0x439ea8
            x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x439eac
            memSet(x1, 0xb, w2); // 0x439eb0
            x3 = mem((PP + 0xf000), 0x208) /* Double */; // 0x439eb8
            memSet(x1, 0x1f, w3); // 0x439ebc
            AllocationStub_Text() /* 0x393bf8 */; // 0x439ec0
            x0 = local_m58; // 0x439ec8
            x1 = x0; // 0x439ec4
            local_m70 = x1; // 0x439ecc
            memSet(x1, 0xb, w0); // 0x439ed0
            x0 = local_m68; // 0x439ed4
            memSet(x1, 0x13, w0); // 0x439ed8
            AllocationStub_Container() /* 0x391a04 */; // 0x439edc
            local_m58 = x0; // 0x439ee0
            BARRIER = mem((PP + 0x12000), 0x560) /* Double */; // 0x439ee8
            LR = local_m60; // 0x439eec
            // frame: LR, BARRIER, mem(SP, 0x10) // 0x439ef0
            BARRIER = local_m78; // 0x439ef4
            LR = local_m70; // 0x439ef8
            // frame: LR, BARRIER, mem(SP) // 0x439efc
            x1 = x0; // 0x439f00
            x4 = mem((PP + 0x12000), 0x160) /* ImmutableArray */; // 0x439f08
            Container_ctor() /* 0x391490 */; // 0x439f0c
            x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x439f10
            x2 = 24; // 0x439f14
            sub_0x61f920(); // 0x439f18
            x0 = local_m58; // 0x439f20
            x1 = x0; // 0x439f1c
            local_m60 = x1; // 0x439f24
            memSet(x1, 0xf, w0); // 0x439f28
            AllocationStub_SizedBox() /* 0x3949ec */; // 0x439f2c
            x2 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x439f34
            memSet(x0, 0x13, w2); // 0x439f38
            x1 = local_m60; // 0x439f3c
            x25 = (local_m60) + 0x13; // 0x439f40
            memSet(x25, w0); // 0x439f44
            if (x0 & (1 << 0) == 0) {
            } else {
              BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x439f54
              w17 = mem(x0, -1); // 0x439f50
              x16 = w16 & 0xffffffff; // 0x439f4c
              x17 = (mem(x0, -1)) & 0xffffffff; // 0x439f50
              if ((BARRIER & (HEAP >> 32)) == 0) {
              } else {
                sub_0x61db00(); // 0x439f60
              }
            }
            w1 = mem((local_m18), 0x13); // 0x439f68
            x0 = local_m18; // 0x439f64
            x1 = ((mem((local_m18), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x439f6c
            if (w1 != w22) {
              x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x439f84
            } else {
              x0 = NULL; // 0x439f78
            }
            if (w0 != w22) {
              x4 = x0; // 0x439f98
            } else {
              x4 = "" /* pp+0x148 */; // 0x439f90
            }
            x0 = local_m50; // 0x439f9c
            x1 = local_m48; // 0x439fa0
            x3 = local_m40; // 0x439fa4
            local_m18 = x4; // 0x439fa8
            AllocationStub_SOImage() /* 0x3b6694 */; // 0x439fac
            x0 = local_m18; // 0x439fb4
            x1 = x0; // 0x439fb0
            memSet(x1, 0xb, w0); // 0x439fb8
            x0 = mem((PP + 0x15000), 0x4f0) /* Double */; // 0x439fc0
            memSet(x1, 0xf, w0); // 0x439fc4
            memSet(x1, 0x13, w0); // 0x439fc8
            x0 = NULL + 0x30; // 0x439fcc
            memSet(x1, 0x1b, w0); // 0x439fd0
            memSet(x1, 0x1f, w0); // 0x439fd4
            x0 = x1; // 0x439fd8
            x1 = local_m60; // 0x439fdc
            x25 = (local_m60) + 0x17; // 0x439fe0
            memSet(x25, w0); // 0x439fe4
            if (x0 & (1 << 0) == 0) {
            } else {
              BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x439ff4
              w17 = mem(x0, -1); // 0x439ff0
              x16 = w16 & 0xffffffff; // 0x439fec
              x17 = (mem(x0, -1)) & 0xffffffff; // 0x439ff0
              if ((BARRIER & (HEAP >> 32)) == 0) {
              } else {
                sub_0x61db00(); // 0x43a000
              }
            }
            AllocationStub_SizedBox() /* 0x3949ec */; // 0x43a004
            x0 = mem((PP + 0x12000), 0x3a0) /* Double */; // 0x43a010
            x1 = x0; // 0x43a008
            memSet(x1, 0x13, w0); // 0x43a014
            x0 = x1; // 0x43a018
            x1 = local_m60; // 0x43a01c
            x25 = (local_m60) + 0x1b; // 0x43a020
            memSet(x25, w0); // 0x43a024
            if (x0 & (1 << 0) == 0) {
            } else {
              BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43a034
              w17 = mem(x0, -1); // 0x43a030
              x16 = w16 & 0xffffffff; // 0x43a02c
              x17 = (mem(x0, -1)) & 0xffffffff; // 0x43a030
              if ((BARRIER & (HEAP >> 32)) == 0) {
              } else {
                sub_0x61db00(); // 0x43a040
              }
            }
            x1 = NULL; // 0x43a044
            x2 = 2; // 0x43a048
            sub_0x61f920(); // 0x43a04c
            x0 = local_m48; // 0x43a054
            x2 = x0; // 0x43a050
            local_m18 = x2; // 0x43a058
            memSet(x2, 0xf, w0); // 0x43a05c
            x1 = mem(PP, 0x868) /* TypeArguments */; // 0x43a060
            AllocationStub__GrowableList() /* 0x61e854 */; // 0x43a064
            x0 = local_m18; // 0x43a06c
            x1 = x0; // 0x43a068
            memSet(x1, 0xf, w0); // 0x43a070
            x2 = 2; // 0x43a074
            memSet(x1, 0xb, w2); // 0x43a078
            local_0 = x1; // 0x43a07c
            x1 = "virtual_party_fruitland_page_one_time_bet_amount" /* pp+0xc760 */; // 0x43a084
            x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x43a08c
            getString() /* 0x3a1dcc */; // 0x43a090
            local_m18 = x0; // 0x43a094
            AllocationStub_HighlightTextParser() /* 0x3a67f0 */; // 0x43a098
            x0 = mem(PP, 0x40) /* Obj!? */; // 0x43a0a0
            x3 = x0; // 0x43a09c
            local_m58 = x3; // 0x43a0a4
            memSet(x3, 0xf, w0); // 0x43a0a8
            x1 = mem((PP + 0xf000), 0xb78) /* TypeArguments */; // 0x43a0b0
            x2 = 0; // 0x43a0b4
            GrowableList_factory_ctor() /* 0x277268 */; // 0x43a0b8
            x1 = local_m58; // 0x43a0bc
            memSet(x1, 0x13, w0); // 0x43a0c0
            BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43a0cc
            w16 = mem(x1, -1); // 0x43a0c4
            w17 = mem(x0, -1); // 0x43a0c8
            x16 = (mem(x1, -1)) & 0xffffffff; // 0x43a0c4
            x17 = (mem(x0, -1)) & 0xffffffff; // 0x43a0c8
            if ((BARRIER & (HEAP >> 32)) == 0) {
            } else {
              WriteBarrierStub_x1() /* 0x61e04c */; // 0x43a0d8
            }
            x0 = local_m18; // 0x43a0dc
            memSet(x1, 7, w0); // 0x43a0e0
            BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43a0ec
            w16 = mem(x1, -1); // 0x43a0e4
            w17 = mem(x0, -1); // 0x43a0e8
            x16 = (mem(x1, -1)) & 0xffffffff; // 0x43a0e4
            x17 = (mem(x0, -1)) & 0xffffffff; // 0x43a0e8
            if ((BARRIER & (HEAP >> 32)) == 0) {
            } else {
              WriteBarrierStub_x1() /* 0x61e04c */; // 0x43a0f8
            }
            x0 = local_m48; // 0x43a0fc
            memSet(x1, 0xb, w0); // 0x43a100
            BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43a10c
            w16 = mem(x1, -1); // 0x43a104
            w17 = mem(x0, -1); // 0x43a108
            x16 = (mem(x1, -1)) & 0xffffffff; // 0x43a104
            x17 = (mem(x0, -1)) & 0xffffffff; // 0x43a108
            if ((BARRIER & (HEAP >> 32)) == 0) {
            } else {
              WriteBarrierStub_x1() /* 0x61e04c */; // 0x43a118
            }
            AllocationStub_TextStyle() /* 0x31abec */; // 0x43a11c
            x0 = NULL + 0x20; // 0x43a124
            x1 = x0; // 0x43a120
            local_m18 = x1; // 0x43a128
            memSet(x1, 7, w0); // 0x43a12c
            x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x43a130
            memSet(x1, 0xb, w2); // 0x43a134
            x3 = mem((PP + 0xf000), 0x208) /* Double */; // 0x43a13c
            memSet(x1, 0x1f, w3); // 0x43a140
            AllocationStub_TextStyle() /* 0x31abec */; // 0x43a144
            x0 = NULL + 0x20; // 0x43a14c
            x1 = x0; // 0x43a148
            memSet(x1, 7, w0); // 0x43a150
            x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x43a154
            memSet(x1, 0xb, w2); // 0x43a158
            x3 = mem((PP + 0xf000), 0x1e8) /* Double */; // 0x43a160
            memSet(x1, 0x1f, w3); // 0x43a164
            BARRIER = local_m18; // 0x43a168
            // frame: x1, BARRIER, mem(SP) // 0x43a16c
            x1 = local_m58; // 0x43a170
            x4 = mem((PP + 0xf000), 0xb88) /* ImmutableArray */; // 0x43a178
            HighlightTextParser_parser() /* 0x3a5b48 */; // 0x43a17c
            local_m18 = x0; // 0x43a180
            AllocationStub_Text() /* 0x393bf8 */; // 0x43a184
            x0 = local_m18; // 0x43a18c
            x1 = x0; // 0x43a188
            memSet(x1, 0xf, w0); // 0x43a190
            x3 = mem(PP, 0x53a8) /* Obj!TextAlign@12316  */; // 0x43a194
            memSet(x1, 0x1b, w3); // 0x43a198
            x0 = x1; // 0x43a19c
            x1 = local_m60; // 0x43a1a0
            x25 = (local_m60) + 0x1f; // 0x43a1a4
            memSet(x25, w0); // 0x43a1a8
            if (x0 & (1 << 0) == 0) {
            } else {
              BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43a1b8
              w17 = mem(x0, -1); // 0x43a1b4
              x16 = w16 & 0xffffffff; // 0x43a1b0
              x17 = (mem(x0, -1)) & 0xffffffff; // 0x43a1b4
              if ((BARRIER & (HEAP >> 32)) == 0) {
              } else {
                sub_0x61db00(); // 0x43a1c4
              }
            }
            x1 = NULL; // 0x43a1c8
            x2 = 2; // 0x43a1cc
            sub_0x61f920(); // 0x43a1d0
            x0 = local_m50; // 0x43a1d8
            x2 = x0; // 0x43a1d4
            local_m18 = x2; // 0x43a1dc
            memSet(x2, 0xf, w0); // 0x43a1e0
            x1 = mem(PP, 0x868) /* TypeArguments */; // 0x43a1e4
            AllocationStub__GrowableList() /* 0x61e854 */; // 0x43a1e8
            x0 = local_m18; // 0x43a1f0
            x1 = x0; // 0x43a1ec
            memSet(x1, 0xf, w0); // 0x43a1f4
            x0 = 2; // 0x43a1f8
            memSet(x1, 0xb, w0); // 0x43a1fc
            local_0 = x1; // 0x43a200
            x1 = "virtual_party_fruitland_page_one_time_win_amount" /* pp+0xc7f0 */; // 0x43a208
            x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x43a210
            getString() /* 0x3a1dcc */; // 0x43a214
            local_m18 = x0; // 0x43a218
            AllocationStub_HighlightTextParser() /* 0x3a67f0 */; // 0x43a21c
            x0 = mem(PP, 0x40) /* Obj!? */; // 0x43a224
            x3 = x0; // 0x43a220
            local_m48 = x3; // 0x43a228
            memSet(x3, 0xf, w0); // 0x43a22c
            x1 = mem((PP + 0xf000), 0xb78) /* TypeArguments */; // 0x43a234
            x2 = 0; // 0x43a238
            GrowableList_factory_ctor() /* 0x277268 */; // 0x43a23c
            x1 = local_m48; // 0x43a240
            memSet(x1, 0x13, w0); // 0x43a244
            BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43a250
            w16 = mem(x1, -1); // 0x43a248
            w17 = mem(x0, -1); // 0x43a24c
            x16 = (mem(x1, -1)) & 0xffffffff; // 0x43a248
            x17 = (mem(x0, -1)) & 0xffffffff; // 0x43a24c
            if ((BARRIER & (HEAP >> 32)) == 0) {
            } else {
              WriteBarrierStub_x1() /* 0x61e04c */; // 0x43a25c
            }
            x0 = local_m18; // 0x43a260
            memSet(x1, 7, w0); // 0x43a264
            BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43a270
            w16 = mem(x1, -1); // 0x43a268
            w17 = mem(x0, -1); // 0x43a26c
            x16 = (mem(x1, -1)) & 0xffffffff; // 0x43a268
            x17 = (mem(x0, -1)) & 0xffffffff; // 0x43a26c
            if ((BARRIER & (HEAP >> 32)) == 0) {
            } else {
              WriteBarrierStub_x1() /* 0x61e04c */; // 0x43a27c
            }
            x0 = local_m50; // 0x43a280
            memSet(x1, 0xb, w0); // 0x43a284
            BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43a290
            w16 = mem(x1, -1); // 0x43a288
            w17 = mem(x0, -1); // 0x43a28c
            x16 = (mem(x1, -1)) & 0xffffffff; // 0x43a288
            x17 = (mem(x0, -1)) & 0xffffffff; // 0x43a28c
            if ((BARRIER & (HEAP >> 32)) == 0) {
            } else {
              WriteBarrierStub_x1() /* 0x61e04c */; // 0x43a29c
            }
            AllocationStub_TextStyle() /* 0x31abec */; // 0x43a2a0
            x0 = NULL + 0x20; // 0x43a2a8
            x1 = x0; // 0x43a2a4
            local_m18 = x1; // 0x43a2ac
            memSet(x1, 7, w0); // 0x43a2b0
            x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x43a2b4
            memSet(x1, 0xb, w2); // 0x43a2b8
            x3 = mem((PP + 0xf000), 0x208) /* Double */; // 0x43a2c0
            memSet(x1, 0x1f, w3); // 0x43a2c4
            AllocationStub_TextStyle() /* 0x31abec */; // 0x43a2c8
            x0 = NULL + 0x20; // 0x43a2d0
            x1 = x0; // 0x43a2cc
            memSet(x1, 7, w0); // 0x43a2d4
            x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x43a2d8
            memSet(x1, 0xb, w2); // 0x43a2dc
            x3 = mem((PP + 0xf000), 0x1e8) /* Double */; // 0x43a2e4
            memSet(x1, 0x1f, w3); // 0x43a2e8
            BARRIER = local_m18; // 0x43a2ec
            // frame: x1, BARRIER, mem(SP) // 0x43a2f0
            x1 = local_m48; // 0x43a2f4
            x4 = mem((PP + 0xf000), 0xb88) /* ImmutableArray */; // 0x43a2fc
            HighlightTextParser_parser() /* 0x3a5b48 */; // 0x43a300
            local_m18 = x0; // 0x43a304
            AllocationStub_Text() /* 0x393bf8 */; // 0x43a308
            x0 = local_m18; // 0x43a310
            x1 = x0; // 0x43a30c
            memSet(x1, 0xf, w0); // 0x43a314
            x0 = mem(PP, 0x53a8) /* Obj!TextAlign@12316  */; // 0x43a318
            memSet(x1, 0x1b, w0); // 0x43a31c
            x0 = x1; // 0x43a320
            x1 = local_m60; // 0x43a324
            x25 = (local_m60) + 0x23; // 0x43a328
            memSet(x25, w0); // 0x43a32c
            if (x0 & (1 << 0) == 0) {
            } else {
              BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43a33c
              w17 = mem(x0, -1); // 0x43a338
              x16 = w16 & 0xffffffff; // 0x43a334
              x17 = (mem(x0, -1)) & 0xffffffff; // 0x43a338
              if ((BARRIER & (HEAP >> 32)) == 0) {
              } else {
                sub_0x61db00(); // 0x43a348
              }
            }
            AllocationStub_SizedBox() /* 0x3949ec */; // 0x43a34c
            x2 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x43a354
            memSet(x0, 0x13, w2); // 0x43a358
            x1 = local_m60; // 0x43a35c
            x25 = (local_m60) + 0x27; // 0x43a360
            memSet(x25, w0); // 0x43a364
            if (x0 & (1 << 0) == 0) {
            } else {
              BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43a374
              w17 = mem(x0, -1); // 0x43a370
              x16 = w16 & 0xffffffff; // 0x43a36c
              x17 = (mem(x0, -1)) & 0xffffffff; // 0x43a370
              if ((BARRIER & (HEAP >> 32)) == 0) {
              } else {
                sub_0x61db00(); // 0x43a380
              }
            }
            AllocationStub_Color() /* 0x31d844 */; // 0x43a384
            x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x43a38c
            x1 = x0; // 0x43a388
            local_m18 = x1; // 0x43a390
            memSet(x1, 0x27, w0); // 0x43a394
            d0 = 4591870180066957722; // 0x43a398
            memSet(x1, 7, d0); // 0x43a39c
            d0 = 1.00000000 /* bits */; // 0x43a3a0
            memSet(x1, 0xf, d0); // 0x43a3a4
            memSet(x1, 0x17, d0); // 0x43a3a8
            memSet(x1, 0x1f, d0); // 0x43a3ac
            AllocationStub_Container() /* 0x391a04 */; // 0x43a3b0
            local_m48 = x0; // 0x43a3b4
            BARRIER = mem(PP, 0x53a0) /* Double */; // 0x43a3b8
            LR = local_m18; // 0x43a3bc
            // frame: LR, BARRIER, mem(SP) // 0x43a3c0
            x1 = x0; // 0x43a3c4
            x4 = mem((PP + 0xe000), 0xeb0) /* ImmutableArray */; // 0x43a3cc
            Container_ctor() /* 0x391490 */; // 0x43a3d0
            x0 = local_m48; // 0x43a3d8
            x1 = local_m60; // 0x43a3d4
            x25 = (local_m60) + 0x2b; // 0x43a3dc
            memSet(x25, w0); // 0x43a3e0
            if (x0 & (1 << 0) == 0) {
            } else {
              BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43a3f0
              w17 = mem(x0, -1); // 0x43a3ec
              x16 = w16 & 0xffffffff; // 0x43a3e8
              x17 = (mem(x0, -1)) & 0xffffffff; // 0x43a3ec
              if ((BARRIER & (HEAP >> 32)) == 0) {
              } else {
                sub_0x61db00(); // 0x43a3fc
              }
            }
            AllocationStub_SizedBox() /* 0x3949ec */; // 0x43a400
            x0 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x43a40c
            x1 = x0; // 0x43a404
            memSet(x1, 0x13, w0); // 0x43a410
            x0 = x1; // 0x43a414
            x1 = local_m60; // 0x43a418
            x25 = (local_m60) + 0x2f; // 0x43a41c
            memSet(x25, w0); // 0x43a420
            if (x0 & (1 << 0) == 0) {
            } else {
              BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43a430
              w17 = mem(x0, -1); // 0x43a42c
              x16 = w16 & 0xffffffff; // 0x43a428
              x17 = (mem(x0, -1)) & 0xffffffff; // 0x43a42c
              if ((BARRIER & (HEAP >> 32)) == 0) {
              } else {
                sub_0x61db00(); // 0x43a43c
              }
            }
            x0 = local_m40; // 0x43a440
            if (x0 <= 0) {
              AllocationStub_Container() /* 0x391a04 */; // 0x43a4a8
              x1 = x0; // 0x43a4ac
              local_m18 = x0; // 0x43a4b0
              x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x43a4b4
              Container_ctor() /* 0x391490 */; // 0x43a4b8
              x0 = local_m18; // 0x43a4bc
            } else {
              x1 = "virtual_party_fruitland_page_one_time_win_top3" /* pp+0xc7e0 */; // 0x43a450
              x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x43a454
              getString() /* 0x3a1dcc */; // 0x43a458
              local_m18 = x0; // 0x43a45c
              AllocationStub_TextStyle() /* 0x31abec */; // 0x43a460
              x0 = NULL + 0x20; // 0x43a468
              x1 = x0; // 0x43a464
              local_m48 = x1; // 0x43a46c
              memSet(x1, 7, w0); // 0x43a470
              x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x43a474
              memSet(x1, 0xb, w2); // 0x43a478
              x3 = mem((PP + 0xf000), 0xb80) /* Double */; // 0x43a480
              memSet(x1, 0x1f, w3); // 0x43a484
              AllocationStub_Text() /* 0x393bf8 */; // 0x43a488
              x0 = local_m18; // 0x43a490
              x1 = x0; // 0x43a48c
              memSet(x1, 0xb, w0); // 0x43a494
              x0 = local_m48; // 0x43a498
              memSet(x1, 0x13, w0); // 0x43a49c
              x0 = x1; // 0x43a4a0
            }
            x1 = local_m60; // 0x43a4c4
            x2 = local_m40; // 0x43a4c0
            x25 = (local_m60) + 0x33; // 0x43a4c8
            memSet(x25, w0); // 0x43a4cc
            if (x0 & (1 << 0) == 0) {
            } else {
              BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43a4dc
              w17 = mem(x0, -1); // 0x43a4d8
              x16 = w16 & 0xffffffff; // 0x43a4d4
              x17 = (mem(x0, -1)) & 0xffffffff; // 0x43a4d8
              if ((BARRIER & (HEAP >> 32)) == 0) {
              } else {
                sub_0x61db00(); // 0x43a4e8
              }
            }
            AllocationStub_SizedBox() /* 0x3949ec */; // 0x43a4ec
            x0 = mem(PP, 0x7598) /* Double */; // 0x43a4f4
            x1 = x0; // 0x43a4f0
            memSet(x1, 0x13, w0); // 0x43a4f8
            x0 = x1; // 0x43a4fc
            x1 = local_m60; // 0x43a500
            x25 = (local_m60) + 0x37; // 0x43a504
            memSet(x25, w0); // 0x43a508
            if (x0 & (1 << 0) == 0) {
            } else {
              BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43a518
              w17 = mem(x0, -1); // 0x43a514
              x16 = w16 & 0xffffffff; // 0x43a510
              x17 = (mem(x0, -1)) & 0xffffffff; // 0x43a514
              if ((BARRIER & (HEAP >> 32)) == 0) {
              } else {
                sub_0x61db00(); // 0x43a524
              }
            }
            x0 = local_m40; // 0x43a528
            if (x0 <= 0) {
              d0 = 13.00000000 /* bits */; // 0x43ac0c
              AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x43ac10
              d0 = 13.00000000 /* bits */; // 0x43ac14
              local_m18 = x0; // 0x43ac18
              memSet(x0, 7, d0); // 0x43ac1c
              d1 = 4634626229029306368; // 0x43ac20
              memSet(x0, 0xf, d1); // 0x43ac24
              memSet(x0, 0x17, d0); // 0x43ac28
              memSet(x0, 0x1f, xzr); // 0x43ac2c
              x1 = "virtual_party_fruitland_page_one_time_win_user_default_tip" /* pp+0xc770 */; // 0x43ac34
              x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x43ac38
              getString() /* 0x3a1dcc */; // 0x43ac3c
              local_m20 = x0; // 0x43ac40
              AllocationStub_TextStyle() /* 0x31abec */; // 0x43ac44
              x0 = NULL + 0x20; // 0x43ac4c
              x1 = x0; // 0x43ac48
              local_m30 = x1; // 0x43ac50
              memSet(x1, 7, w0); // 0x43ac54
              x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x43ac58
              memSet(x1, 0xb, w2); // 0x43ac5c
              x2 = mem((PP + 0xf000), 0xb80) /* Double */; // 0x43ac64
              memSet(x1, 0x1f, w2); // 0x43ac68
              AllocationStub_Text() /* 0x393bf8 */; // 0x43ac6c
              x0 = local_m20; // 0x43ac74
              x1 = x0; // 0x43ac70
              local_m38 = x1; // 0x43ac78
              memSet(x1, 0xb, w0); // 0x43ac7c
              x0 = local_m30; // 0x43ac80
              memSet(x1, 0x13, w0); // 0x43ac84
              AllocationStub_Container() /* 0x391a04 */; // 0x43ac88
              local_m20 = x0; // 0x43ac8c
              BARRIER = local_m18; // 0x43ac90
              LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x43ac98
              // frame: LR, BARRIER, mem(SP, 8) // 0x43ac9c
              BARRIER = local_m38; // 0x43aca0
              local_0 = BARRIER; // 0x43aca4
              x1 = x0; // 0x43aca8
              x4 = mem((PP + 0x10000), 0xca8) /* ImmutableArray */; // 0x43acb0
              Container_ctor() /* 0x391490 */; // 0x43acb4
              x0 = local_m20; // 0x43acb8
            } else {
              x0 = local_m20; // 0x43a534
              AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x43a538
              d0 = 13.00000000 /* bits */; // 0x43a53c
              local_m18 = x0; // 0x43a540
              memSet(x0, 7, d0); // 0x43a544
              memSet(x0, 0xf, xzr); // 0x43a548
              memSet(x0, 0x17, d0); // 0x43a54c
              memSet(x0, 0x1f, xzr); // 0x43a550
              x1 = local_m20; // 0x43a554
              if (w1 == w22) {
                AllocationStub_Container() /* 0x391a04 */; // 0x43a718
                x1 = x0; // 0x43a71c
                local_m20 = x0; // 0x43a720
                x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x43a724
                Container_ctor() /* 0x391490 */; // 0x43a728
                x1 = local_m20; // 0x43a72c
              } else {
                AllocationStub_Color() /* 0x31d844 */; // 0x43a560
                x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x43a568
                x1 = x0; // 0x43a564
                memSet(x1, 0x27, w0); // 0x43a56c
                d0 = 1.00000000 /* bits */; // 0x43a570
                memSet(x1, 7, d0); // 0x43a574
                memSet(x1, 0xf, d0); // 0x43a578
                d1 = 4605663557749217947; // 0x43a580
                x17 = PP + 0xc000; // 0x43a57c
                memSet(x1, 0x17, d1); // 0x43a584
                d1 = 4597221516094774429; // 0x43a58c
                x17 = PP + 0xe000; // 0x43a588
                memSet(x1, 0x1f, d1); // 0x43a590
                w2 = mem((local_m20), 0xb); // 0x43a598
                x2 = ((mem((local_m20), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x43a59c
                x4 = local_m20; // 0x43a594
                if (w2 != w22) {
                  x5 = x2; // 0x43a5b0
                } else {
                  x5 = "" /* pp+0x148 */; // 0x43a5a8
                }
                x1 = local_m8; // 0x43a5b8
                x2 = x1; // 0x43a5b4
                x3 = "assets/images/3.0x/game_fruit_champion_crown.webp" /* pp+0x118a0 */; // 0x43a5c0
                GameFruitWinnerDialogState_userCrownHeadWidget() /* 0x43b338 */; // 0x43a5c4
                local_m48 = x0; // 0x43a5c8
                AllocationStub_SizedBox() /* 0x3949ec */; // 0x43a5cc
                x0 = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x43a5d8
                x3 = x0; // 0x43a5d0
                local_m50 = x3; // 0x43a5dc
                memSet(x3, 0x13, w0); // 0x43a5e0
                w2 = mem((local_m20), 7); // 0x43a5e8
                x1 = local_m8; // 0x43a5f0
                x2 = ((mem((local_m20), 7)) & 0xffffffff) + (HEAP << 32); // 0x43a5ec
                x4 = local_m20; // 0x43a5e4
                GameFruitWinnerDialogState_userFlexibleWidget() /* 0x43b27c */; // 0x43a5f4
                local_m58 = x0; // 0x43a5f8
                AllocationStub_SizedBox() /* 0x3949ec */; // 0x43a5fc
                x0 = mem((PP + 0x10000), 0x940) /* Double */; // 0x43a608
                x3 = x0; // 0x43a600
                local_m68 = x3; // 0x43a60c
                memSet(x3, 0x13, w0); // 0x43a610
                w2 = mem((local_m20), 0xf); // 0x43a618
                x1 = local_m8; // 0x43a620
                x2 = ((mem((local_m20), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x43a61c
                GameFruitWinnerDialogState_coinLabelWidget() /* 0x43b0c4 */; // 0x43a624
                x1 = NULL; // 0x43a628
                x2 = 10; // 0x43a62c
                local_m20 = x0; // 0x43a630
                sub_0x61f920(); // 0x43a634
                x0 = local_m48; // 0x43a63c
                x2 = x0; // 0x43a638
                local_m70 = x2; // 0x43a640
                memSet(x2, 0xf, w0); // 0x43a644
                x0 = local_m50; // 0x43a648
                memSet(x2, 0x13, w0); // 0x43a64c
                x0 = local_m58; // 0x43a650
                memSet(x2, 0x17, w0); // 0x43a654
                x0 = local_m68; // 0x43a658
                memSet(x2, 0x1b, w0); // 0x43a65c
                x0 = local_m20; // 0x43a660
                memSet(x2, 0x1f, w0); // 0x43a664
                x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x43a668
                AllocationStub__GrowableList() /* 0x61e854 */; // 0x43a66c
                x0 = local_m70; // 0x43a674
                x1 = x0; // 0x43a670
                local_m20 = x1; // 0x43a678
                memSet(x1, 0xf, w0); // 0x43a67c
                x2 = 10; // 0x43a680
                memSet(x1, 0xb, w2); // 0x43a684
                AllocationStub_Column() /* 0x39310c */; // 0x43a688
                x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x43a694
                x1 = x0; // 0x43a68c
                local_m48 = x1; // 0x43a698
                memSet(x1, 0xf, w0); // 0x43a69c
                x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x43a6a4
                memSet(x1, 0x13, w2); // 0x43a6a8
                x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x43a6b0
                memSet(x1, 0x17, w3); // 0x43a6b4
                x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x43a6bc
                memSet(x1, 0x1b, w4); // 0x43a6c0
                x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x43a6c8
                memSet(x1, 0x23, w5); // 0x43a6cc
                x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x43a6d4
                memSet(x1, 0x2b, w6); // 0x43a6d8
                memSet(x1, 0x2f, xzr); // 0x43a6dc
                x7 = local_m20; // 0x43a6e0
                memSet(x1, 0xb, w7); // 0x43a6e4
                AllocationStub_Container() /* 0x391a04 */; // 0x43a6e8
                local_m20 = x0; // 0x43a6ec
                BARRIER = mem((PP + 0x15000), 0x4f8) /* Double */; // 0x43a6f4
                LR = local_m48; // 0x43a6f8
                // frame: LR, BARRIER, mem(SP) // 0x43a6fc
                x1 = x0; // 0x43a700
                x4 = mem((PP + 0xf000), 0x240) /* ImmutableArray */; // 0x43a708
                Container_ctor() /* 0x391490 */; // 0x43a70c
                x1 = local_m20; // 0x43a710
              }
              x0 = local_m30; // 0x43a730
              local_m20 = x1; // 0x43a734
              if (w0 == w22) {
                AllocationStub_Container() /* 0x391a04 */; // 0x43a8fc
                x1 = x0; // 0x43a900
                local_m30 = x0; // 0x43a904
                x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x43a908
                Container_ctor() /* 0x391490 */; // 0x43a90c
                x1 = local_m30; // 0x43a910
              } else {
                AllocationStub_Color() /* 0x31d844 */; // 0x43a740
                x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x43a748
                x1 = x0; // 0x43a744
                memSet(x1, 0x27, w0); // 0x43a74c
                d0 = 1.00000000 /* bits */; // 0x43a750
                memSet(x1, 7, d0); // 0x43a754
                d1 = 4605981458899385276; // 0x43a758
                memSet(x1, 0xf, d1); // 0x43a75c
                d1 = 4606264037699534013; // 0x43a764
                x17 = PP + 0x11000; // 0x43a760
                memSet(x1, 0x17, d1); // 0x43a768
                d1 = 4606617261199719934; // 0x43a770
                x17 = PP + 0x10000; // 0x43a76c
                memSet(x1, 0x1f, d1); // 0x43a774
                w2 = mem((local_m30), 0xb); // 0x43a77c
                x2 = ((mem((local_m30), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x43a780
                x4 = local_m30; // 0x43a778
                if (w2 != w22) {
                  x5 = x2; // 0x43a794
                } else {
                  x5 = "" /* pp+0x148 */; // 0x43a78c
                }
                x1 = local_m8; // 0x43a79c
                x2 = x1; // 0x43a798
                x3 = "assets/images/3.0x/game_fruit_secplace_crown.webp" /* pp+0x11858 */; // 0x43a7a4
                GameFruitWinnerDialogState_userCrownHeadWidget() /* 0x43b338 */; // 0x43a7a8
                local_m48 = x0; // 0x43a7ac
                AllocationStub_SizedBox() /* 0x3949ec */; // 0x43a7b0
                x0 = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x43a7bc
                x3 = x0; // 0x43a7b4
                local_m50 = x3; // 0x43a7c0
                memSet(x3, 0x13, w0); // 0x43a7c4
                w2 = mem((local_m30), 7); // 0x43a7cc
                x1 = local_m8; // 0x43a7d4
                x2 = ((mem((local_m30), 7)) & 0xffffffff) + (HEAP << 32); // 0x43a7d0
                x4 = local_m30; // 0x43a7c8
                GameFruitWinnerDialogState_userFlexibleWidget() /* 0x43b27c */; // 0x43a7d8
                local_m58 = x0; // 0x43a7dc
                AllocationStub_SizedBox() /* 0x3949ec */; // 0x43a7e0
                x0 = mem((PP + 0x10000), 0x940) /* Double */; // 0x43a7ec
                x3 = x0; // 0x43a7e4
                local_m68 = x3; // 0x43a7f0
                memSet(x3, 0x13, w0); // 0x43a7f4
                w2 = mem((local_m30), 0xf); // 0x43a7fc
                x1 = local_m8; // 0x43a804
                x2 = ((mem((local_m30), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x43a800
                GameFruitWinnerDialogState_coinLabelWidget() /* 0x43b0c4 */; // 0x43a808
                x1 = NULL; // 0x43a80c
                x2 = 10; // 0x43a810
                local_m30 = x0; // 0x43a814
                sub_0x61f920(); // 0x43a818
                x0 = local_m48; // 0x43a820
                x2 = x0; // 0x43a81c
                local_m70 = x2; // 0x43a824
                memSet(x2, 0xf, w0); // 0x43a828
                x0 = local_m50; // 0x43a82c
                memSet(x2, 0x13, w0); // 0x43a830
                x0 = local_m58; // 0x43a834
                memSet(x2, 0x17, w0); // 0x43a838
                x0 = local_m68; // 0x43a83c
                memSet(x2, 0x1b, w0); // 0x43a840
                x0 = local_m30; // 0x43a844
                memSet(x2, 0x1f, w0); // 0x43a848
                x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x43a84c
                AllocationStub__GrowableList() /* 0x61e854 */; // 0x43a850
                x0 = local_m70; // 0x43a858
                x1 = x0; // 0x43a854
                local_m30 = x1; // 0x43a85c
                memSet(x1, 0xf, w0); // 0x43a860
                x2 = 10; // 0x43a864
                memSet(x1, 0xb, w2); // 0x43a868
                AllocationStub_Column() /* 0x39310c */; // 0x43a86c
                x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x43a878
                x1 = x0; // 0x43a870
                local_m48 = x1; // 0x43a87c
                memSet(x1, 0xf, w0); // 0x43a880
                x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x43a888
                memSet(x1, 0x13, w2); // 0x43a88c
                x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x43a894
                memSet(x1, 0x17, w3); // 0x43a898
                x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x43a8a0
                memSet(x1, 0x1b, w4); // 0x43a8a4
                x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x43a8ac
                memSet(x1, 0x23, w5); // 0x43a8b0
                x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x43a8b8
                memSet(x1, 0x2b, w6); // 0x43a8bc
                memSet(x1, 0x2f, xzr); // 0x43a8c0
                x7 = local_m30; // 0x43a8c4
                memSet(x1, 0xb, w7); // 0x43a8c8
                AllocationStub_Container() /* 0x391a04 */; // 0x43a8cc
                local_m30 = x0; // 0x43a8d0
                BARRIER = mem((PP + 0x15000), 0x4f8) /* Double */; // 0x43a8d8
                LR = local_m48; // 0x43a8dc
                // frame: LR, BARRIER, mem(SP) // 0x43a8e0
                x1 = x0; // 0x43a8e4
                x4 = mem((PP + 0xf000), 0x240) /* ImmutableArray */; // 0x43a8ec
                Container_ctor() /* 0x391490 */; // 0x43a8f0
                x1 = local_m30; // 0x43a8f4
              }
              x0 = local_m38; // 0x43a914
              local_m30 = x1; // 0x43a918
              if (w0 == w22) {
                AllocationStub_Container() /* 0x391a04 */; // 0x43aae4
                x1 = x0; // 0x43aae8
                local_m38 = x0; // 0x43aaec
                x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x43aaf0
                Container_ctor() /* 0x391490 */; // 0x43aaf4
                x5 = local_m38; // 0x43aaf8
              } else {
                AllocationStub_Color() /* 0x31d844 */; // 0x43a924
                x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x43a92c
                x1 = x0; // 0x43a928
                memSet(x1, 0x27, w0); // 0x43a930
                d0 = 1.00000000 /* bits */; // 0x43a934
                memSet(x1, 7, d0); // 0x43a938
                d0 = 4607005807049924447; // 0x43a940
                x17 = PP + 0x10000; // 0x43a93c
                memSet(x1, 0xf, d0); // 0x43a944
                d0 = 4606087425949441052; // 0x43a94c
                x17 = PP + 0x10000; // 0x43a948
                memSet(x1, 0x17, d0); // 0x43a950
                d0 = 4605628235399199354; // 0x43a958
                x17 = PP + 0x11000; // 0x43a954
                memSet(x1, 0x1f, d0); // 0x43a95c
                w2 = mem((local_m38), 0xb); // 0x43a964
                x0 = local_m38; // 0x43a960
                x2 = ((mem((local_m38), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x43a968
                if (w2 != w22) {
                  x5 = x2; // 0x43a97c
                } else {
                  x5 = "" /* pp+0x148 */; // 0x43a974
                }
                x1 = local_m8; // 0x43a984
                x2 = x1; // 0x43a980
                x3 = "assets/images/3.0x/game_fruit_thirdplace_crown.webp" /* pp+0x118e8 */; // 0x43a98c
                GameFruitWinnerDialogState_userCrownHeadWidget() /* 0x43b338 */; // 0x43a990
                local_m48 = x0; // 0x43a994
                AllocationStub_SizedBox() /* 0x3949ec */; // 0x43a998
                x0 = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x43a9a4
                x3 = x0; // 0x43a99c
                local_m50 = x3; // 0x43a9a8
                memSet(x3, 0x13, w0); // 0x43a9ac
                w2 = mem((local_m38), 7); // 0x43a9b4
                x0 = local_m38; // 0x43a9b0
                x1 = local_m8; // 0x43a9bc
                x2 = ((mem((local_m38), 7)) & 0xffffffff) + (HEAP << 32); // 0x43a9b8
                GameFruitWinnerDialogState_userFlexibleWidget() /* 0x43b27c */; // 0x43a9c0
                local_m58 = x0; // 0x43a9c4
                AllocationStub_SizedBox() /* 0x3949ec */; // 0x43a9c8
                x0 = mem((PP + 0x10000), 0x940) /* Double */; // 0x43a9d4
                x3 = x0; // 0x43a9cc
                local_m68 = x3; // 0x43a9d8
                memSet(x3, 0x13, w0); // 0x43a9dc
                w2 = mem((local_m38), 0xf); // 0x43a9e4
                x0 = local_m38; // 0x43a9e0
                x1 = local_m8; // 0x43a9ec
                x2 = ((mem((local_m38), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x43a9e8
                GameFruitWinnerDialogState_coinLabelWidget() /* 0x43b0c4 */; // 0x43a9f0
                x1 = NULL; // 0x43a9f4
                x2 = 10; // 0x43a9f8
                local_m38 = x0; // 0x43a9fc
                sub_0x61f920(); // 0x43aa00
                x0 = local_m48; // 0x43aa08
                x2 = x0; // 0x43aa04
                local_m70 = x2; // 0x43aa0c
                memSet(x2, 0xf, w0); // 0x43aa10
                x0 = local_m50; // 0x43aa14
                memSet(x2, 0x13, w0); // 0x43aa18
                x0 = local_m58; // 0x43aa1c
                memSet(x2, 0x17, w0); // 0x43aa20
                x0 = local_m68; // 0x43aa24
                memSet(x2, 0x1b, w0); // 0x43aa28
                x0 = local_m38; // 0x43aa2c
                memSet(x2, 0x1f, w0); // 0x43aa30
                x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x43aa34
                AllocationStub__GrowableList() /* 0x61e854 */; // 0x43aa38
                x0 = local_m70; // 0x43aa40
                x1 = x0; // 0x43aa3c
                local_m38 = x1; // 0x43aa44
                memSet(x1, 0xf, w0); // 0x43aa48
                x0 = 10; // 0x43aa4c
                memSet(x1, 0xb, w0); // 0x43aa50
                AllocationStub_Column() /* 0x39310c */; // 0x43aa54
                x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x43aa60
                x1 = x0; // 0x43aa58
                local_m48 = x1; // 0x43aa64
                memSet(x1, 0xf, w0); // 0x43aa68
                x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x43aa70
                memSet(x1, 0x13, w2); // 0x43aa74
                x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x43aa7c
                memSet(x1, 0x17, w3); // 0x43aa80
                x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x43aa88
                memSet(x1, 0x1b, w4); // 0x43aa8c
                x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x43aa94
                memSet(x1, 0x23, w5); // 0x43aa98
                x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x43aaa0
                memSet(x1, 0x2b, w6); // 0x43aaa4
                memSet(x1, 0x2f, xzr); // 0x43aaa8
                x7 = local_m38; // 0x43aaac
                memSet(x1, 0xb, w7); // 0x43aab0
                AllocationStub_Container() /* 0x391a04 */; // 0x43aab4
                local_m38 = x0; // 0x43aab8
                BARRIER = mem((PP + 0x15000), 0x4f8) /* Double */; // 0x43aac0
                LR = local_m48; // 0x43aac4
                // frame: LR, BARRIER, mem(SP) // 0x43aac8
                x1 = x0; // 0x43aacc
                x4 = mem((PP + 0xf000), 0x240) /* ImmutableArray */; // 0x43aad4
                Container_ctor() /* 0x391490 */; // 0x43aad8
                x5 = local_m38; // 0x43aadc
              }
              x0 = local_m30; // 0x43ab00
              x2 = 6; // 0x43ab08
              x3 = local_m20; // 0x43aafc
              x4 = 6; // 0x43ab04
              local_m38 = x5; // 0x43ab0c
              x1 = NULL; // 0x43ab10
              sub_0x61f920(); // 0x43ab14
              x0 = local_m20; // 0x43ab1c
              x2 = x0; // 0x43ab18
              local_m48 = x2; // 0x43ab20
              memSet(x2, 0xf, w0); // 0x43ab24
              x0 = local_m30; // 0x43ab28
              memSet(x2, 0x13, w0); // 0x43ab2c
              x0 = local_m38; // 0x43ab30
              memSet(x2, 0x17, w0); // 0x43ab34
              x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x43ab38
              AllocationStub__GrowableList() /* 0x61e854 */; // 0x43ab3c
              x0 = local_m48; // 0x43ab44
              x1 = x0; // 0x43ab40
              local_m20 = x1; // 0x43ab48
              memSet(x1, 0xf, w0); // 0x43ab4c
              x2 = 6; // 0x43ab50
              memSet(x1, 0xb, w2); // 0x43ab54
              AllocationStub_Row() /* 0x3a1414 */; // 0x43ab58
              x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x43ab60
              x1 = x0; // 0x43ab5c
              local_m30 = x1; // 0x43ab64
              memSet(x1, 0xf, w0); // 0x43ab68
              x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x43ab70
              memSet(x1, 0x13, w0); // 0x43ab74
              x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x43ab7c
              memSet(x1, 0x17, w2); // 0x43ab80
              x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x43ab88
              memSet(x1, 0x1b, w3); // 0x43ab8c
              x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x43ab94
              memSet(x1, 0x23, w4); // 0x43ab98
              x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x43aba0
              memSet(x1, 0x2b, w5); // 0x43aba4
              memSet(x1, 0x2f, xzr); // 0x43aba8
              x6 = local_m20; // 0x43abac
              memSet(x1, 0xb, w6); // 0x43abb0
              AllocationStub_Container() /* 0x391a04 */; // 0x43abb4
              local_m20 = x0; // 0x43abb8
              BARRIER = local_m18; // 0x43abbc
              LR = local_m30; // 0x43abc0
              // frame: LR, BARRIER, mem(SP) // 0x43abc4
              x1 = x0; // 0x43abc8
              x4 = mem((PP + 0xf000), 0x200) /* ImmutableArray */; // 0x43abd0
              Container_ctor() /* 0x391490 */; // 0x43abd4
              x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x43abdc
              AllocationStub_Expanded() /* 0x39fb14 */; // 0x43abe0
              x0 = 1; // 0x43abe8
              x1 = x0; // 0x43abe4
              memSet(x1, 0x13, x0); // 0x43abec
              x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x43abf4
              memSet(x1, 0x1b, w0); // 0x43abf8
              x0 = local_m20; // 0x43abfc
              memSet(x1, 0xb, w0); // 0x43ac00
              x0 = x1; // 0x43ac04
            }
            x1 = local_m60; // 0x43acc4
            x2 = local_m60; // 0x43acc0
            x25 = (local_m60) + 0x3b; // 0x43acc8
            x3 = local_m8; // 0x43acbc
            memSet(x25, w0); // 0x43accc
            if (x0 & (1 << 0) == 0) {
            } else {
              BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x43acdc
              w17 = mem(x0, -1); // 0x43acd8
              x16 = w16 & 0xffffffff; // 0x43acd4
              x17 = (mem(x0, -1)) & 0xffffffff; // 0x43acd8
              if ((BARRIER & (HEAP >> 32)) == 0) {
              } else {
                sub_0x61db00(); // 0x43ace8
              }
            }
            x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x43acec
            AllocationStub__GrowableList() /* 0x61e854 */; // 0x43acf0
            x0 = local_m60; // 0x43acf8
            x1 = x0; // 0x43acf4
            local_m18 = x1; // 0x43acfc
            memSet(x1, 0xf, w0); // 0x43ad00
            x0 = 24; // 0x43ad04
            memSet(x1, 0xb, w0); // 0x43ad08
            AllocationStub_Column() /* 0x39310c */; // 0x43ad0c
            x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x43ad18
            x2 = x0; // 0x43ad10
            local_m20 = x2; // 0x43ad1c
            memSet(x2, 0xf, w0); // 0x43ad20
            x1 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x43ad28
            memSet(x2, 0x13, w1); // 0x43ad2c
            x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x43ad34
            memSet(x2, 0x17, w3); // 0x43ad38
            x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x43ad40
            memSet(x2, 0x1b, w4); // 0x43ad44
            x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x43ad4c
            memSet(x2, 0x23, w5); // 0x43ad50
            x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x43ad58
            memSet(x2, 0x2b, w6); // 0x43ad5c
            memSet(x2, 0x2f, xzr); // 0x43ad60
            x1 = local_m18; // 0x43ad64
            memSet(x2, 0xb, w1); // 0x43ad68
            w7 = mem((local_m8), 0x13); // 0x43ad70
            w8 = mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x43ad78
            x1 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x43ad80
            x7 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x43ad74
            x8 = ((mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x43ad7c
            local_m8 = x8; // 0x43ad84
            GameFruitWinnerDialogNotifier_get_currentTime() /* 0x43b044 */; // 0x43ad88
            local_m18 = x0; // 0x43ad8c
            TextStyles_smallerContent() /* 0x3b47fc */; // 0x43ad90
            local_m30 = x0; // 0x43ad94
            AllocationStub_Text() /* 0x393bf8 */; // 0x43ad98
            x0 = local_m18; // 0x43ada0
            x1 = x0; // 0x43ad9c
            memSet(x1, 0xb, w0); // 0x43ada4
            x0 = local_m30; // 0x43ada8
            memSet(x1, 0x13, w0); // 0x43adac
            BARRIER = local_m8; // 0x43adb0
            local_0 = BARRIER; // 0x43adb4
            d0 = 9.00000000 /* bits */; // 0x43add0
            x1 = mem((PP + 0xf000), 0x5d8) /* TypeArguments */; // 0x43adc0
            x2 = x1; // 0x43adb8
            x3 = mem((PP + 0x12000), 0x1e0) /* Double */; // 0x43adc8
            x4 = mem((PP + 0x15000), 0x500) /* ImmutableArray */; // 0x43add8
            x5 = mem(PP, 0x5330) /* Obj!TextDirection@1230d  */; // 0x43adcc
            Positioned_factory_ctor_directional() /* 0x399fcc */; // 0x43addc
            x1 = NULL; // 0x43ade0
            x2 = 4; // 0x43ade4
            local_m8 = x0; // 0x43ade8
            sub_0x61f920(); // 0x43adec
            x0 = local_m20; // 0x43adf4
            x2 = x0; // 0x43adf0
            local_m18 = x2; // 0x43adf8
            memSet(x2, 0xf, w0); // 0x43adfc
            x0 = local_m8; // 0x43ae00
            memSet(x2, 0x13, w0); // 0x43ae04
            x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x43ae08
            AllocationStub__GrowableList() /* 0x61e854 */; // 0x43ae0c
            x0 = local_m18; // 0x43ae14
            x1 = x0; // 0x43ae10
            local_m8 = x1; // 0x43ae18
            memSet(x1, 0xf, w0); // 0x43ae1c
            x0 = 4; // 0x43ae20
            memSet(x1, 0xb, w0); // 0x43ae24
            AllocationStub_Stack() /* 0x39e6f4 */; // 0x43ae28
            x0 = mem((PP + 0xe000), 0xf00) /* Obj!AlignmentDirectional@11bd4  */; // 0x43ae34
            x1 = x0; // 0x43ae2c
            local_m18 = x1; // 0x43ae38
            memSet(x1, 0xf, w0); // 0x43ae3c
            x0 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x43ae44
            memSet(x1, 0x17, w0); // 0x43ae48
            x0 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x43ae50
            memSet(x1, 0x1b, w0); // 0x43ae54
            x0 = local_m8; // 0x43ae58
            memSet(x1, 0xb, w0); // 0x43ae5c
            AllocationStub_GameFruitBackgroundDialog() /* 0x3a1da8 */; // 0x43ae60
            d0 = 4644671367260667904; // 0x43ae68
            x17 = PP + 0x12000; // 0x43ae64
            local_m8 = x0; // 0x43ae6c
            memSet(x0, 0xb, d0); // 0x43ae70
            d0 = 4646237071818620928; // 0x43ae78
            x17 = PP + 0x15000; // 0x43ae74
            memSet(x0, 0x13, d0); // 0x43ae7c
            x1 = local_m18; // 0x43ae80
            memSet(x0, 0x1b, w1); // 0x43ae84
            x1 = mem((PP + 0x15000), 0x510) /* Obj!EdgeInsets@11bc1  */; // 0x43ae8c
            memSet(x0, 0x1f, w1); // 0x43ae90
            AllocationStub_SizedBox() /* 0x3949ec */; // 0x43ae94
            x0 = mem((PP + 0x12000), 0x560) /* Double */; // 0x43aea0
            x1 = x0; // 0x43ae98
            local_m18 = x1; // 0x43aea4
            memSet(x1, 0x13, w0); // 0x43aea8
            AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x43aeac
            x0 = "assets/images/3.0x/game_fruit_icon_close.webp" /* pp+0x12568 */; // 0x43aeb8
            x1 = x0; // 0x43aeb0
            local_m20 = x1; // 0x43aebc
            memSet(x1, 0xb, w0); // 0x43aec0
            x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x43aec8
            memSet(x1, 0xf, w0); // 0x43aecc
            x0 = mem((PP + 0x12000), 0x560) /* Double */; // 0x43aed4
            memSet(x1, 0x13, w0); // 0x43aed8
            memSet(x1, 0x17, w0); // 0x43aedc
            AllocationStub_Container() /* 0x391a04 */; // 0x43aee0
            local_m30 = x0; // 0x43aee4
            BARRIER = local_m20; // 0x43aee8
            local_0 = BARRIER; // 0x43aeec
            x1 = x0; // 0x43aef0
            x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x43aef8
            Container_ctor() /* 0x391490 */; // 0x43aefc
            sub_0x3a1d94(); // 0x43af00
            x1 = mem((PP + 0x15000), 0x518) /* Function */; // 0x43af0c
            x2 = local_m28; // 0x43af04
            local_m20 = x0; // 0x43af10
            AllocationStub__Closure() /* 0x61ec54 */; // 0x43af14
            BARRIER = local_m30; // 0x43af18
            // frame: x0, BARRIER, mem(SP) // 0x43af1c
            x1 = local_m20; // 0x43af20
            x4 = mem((PP + 0xe000), 0xec0) /* ImmutableArray */; // 0x43af28
            GestureDetector_ctor() /* 0x3a18c4 */; // 0x43af2c
            x1 = NULL; // 0x43af30
            x2 = 6; // 0x43af34
            sub_0x61f920(); // 0x43af38
            x0 = local_m8; // 0x43af40
            x2 = x0; // 0x43af3c
            local_m28 = x2; // 0x43af44
            memSet(x2, 0xf, w0); // 0x43af48
            x0 = local_m18; // 0x43af4c
            memSet(x2, 0x13, w0); // 0x43af50
            x0 = local_m20; // 0x43af54
            memSet(x2, 0x17, w0); // 0x43af58
            x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x43af5c
            AllocationStub__GrowableList() /* 0x61e854 */; // 0x43af60
            x0 = local_m28; // 0x43af68
            x1 = x0; // 0x43af64
            local_m8 = x1; // 0x43af6c
            memSet(x1, 0xf, w0); // 0x43af70
            x0 = 6; // 0x43af74
            memSet(x1, 0xb, w0); // 0x43af78
            AllocationStub_Column() /* 0x39310c */; // 0x43af7c
            x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x43af88
            x1 = x0; // 0x43af80
            local_m18 = x1; // 0x43af8c
            memSet(x1, 0xf, w0); // 0x43af90
            x0 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x43af98
            memSet(x1, 0x13, w0); // 0x43af9c
            x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x43afa4
            memSet(x1, 0x17, w0); // 0x43afa8
            x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x43afb0
            memSet(x1, 0x1b, w0); // 0x43afb4
            x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x43afbc
            memSet(x1, 0x23, w0); // 0x43afc0
            x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x43afc8
            memSet(x1, 0x2b, w0); // 0x43afcc
            memSet(x1, 0x2f, xzr); // 0x43afd0
            x2 = local_m8; // 0x43afd4
            memSet(x1, 0xb, w2); // 0x43afd8
            AllocationStub_Material() /* 0x3949f8 */; // 0x43afdc
            x1 = mem((PP + 0x12000), 0x578) /* Obj!MaterialType@122b4  */; // 0x43afe4
            memSet(x0, 0xf, w1); // 0x43afe8
            memSet(x0, 0x13, xzr); // 0x43afec
            x1 = NULL + 0x20; // 0x43aff0
            memSet(x0, 0x2f, w1); // 0x43aff4
            x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x43affc
            memSet(x0, 0x33, w1); // 0x43b000
            x1 = mem((PP + 0xc000), 0x258) /* Obj!Duration@12360  */; // 0x43b008
            memSet(x0, 0x37, w1); // 0x43b00c
            x1 = local_m18; // 0x43b010
            memSet(x0, 0xb, w1); // 0x43b014
            SP = FP; // 0x43b018
            // frame: FP, LR, mem(SP), 0x10 // 0x43b01c
            return;
          }
          RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x43b040
        }
      }
    } else {
      x0 = x3; // 0x439c18
      x1 = 0; // 0x439c1c
      if (x1 >= x0) {
        RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x43b030
      } else {
        w2 = mem(((w4 & 0xffffffff) + (HEAP << 32)), 0xf); // 0x439c30
        x0 = x3; // 0x439c38
        x1 = 1; // 0x439c3c
        x2 = ((mem(((w4 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x439c34
        x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x439c2c
        if (x1 >= x0) {
          // duplicated branch body (target 0x43b034 terminates; the same code is emitted below)
          RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x43b034
          RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x43b038
          RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x43b03c
          RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x43b040
        }
        x0 = NULL; // 0x439c54
        x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x439c50
        gotoLabel(0x439cc8);
      }
      RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x43b034
    }
  } else {
    x0 = x3; // 0x439be0
    x1 = 0; // 0x439be4
    if (x1 >= x0) {
      RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x43b02c
    }
    w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf); // 0x439bf8
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x439bf4
    x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x439bfc
    x5 = NULL; // 0x439c08
    x6 = NULL; // 0x439c04
    x7 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x439c00
    gotoLabel(0x439cd4);
  }
}

// GameFruitWinnerDialogState_coinLabelWidget
// raw disassembly:
//  0x43b0c4: stp FP, LR, [SP, #-0x10]!
//  0x43b0c8: mov FP, SP
//  0x43b0cc: sub SP, SP, #0x28
//  0x43b0d0: stur x2, [FP, #-8]
//  0x43b0d4: bl #0x3a142c
//  0x43b0d8: mov x1, x0
//  0x43b0dc: add x0, PP, #0xf, lsl #12
//  0x43b0e0: ldr x0, [x0, #0x248]
//  0x43b0e4: stur x1, [FP, #-0x10]
//  0x43b0e8: stur w0, [x1, #0xb]
//  0x43b0ec: add x0, PP, #0xf, lsl #12
//  0x43b0f0: ldr x0, [x0, #0x170]
//  0x43b0f4: stur w0, [x1, #0xf]
//  0x43b0f8: add x0, PP, #0xe, lsl #12
//  0x43b0fc: ldr x0, [x0, #0xde8]
//  0x43b100: stur w0, [x1, #0x13]
//  0x43b104: stur w0, [x1, #0x17]
//  0x43b108: bl #0x3949ec
//  0x43b10c: mov x1, x0
//  0x43b110: add x0, PP, #0x10, lsl #12
//  0x43b114: ldr x0, [x0, #0x940]
//  0x43b118: stur x1, [FP, #-0x18]
//  0x43b11c: stur w0, [x1, #0xf]
//  0x43b120: ldur x0, [FP, #-8]
//  0x43b124: cmp w0, w22
//  0x43b128: b.ne #0x43b134
//  0x43b12c: ldr x2, [PP, #0x148]
//  0x43b130: b #0x43b138
//  0x43b134: mov x2, x0
//  0x43b138: ldur x0, [FP, #-0x10]
//  0x43b13c: stur x2, [FP, #-8]
//  0x43b140: bl #0x31abec
//  0x43b144: mov x1, x0
//  0x43b148: add x0, NULL, #0x20
//  0x43b14c: stur x1, [FP, #-0x20]
//  0x43b150: stur w0, [x1, #7]
//  0x43b154: ldr x0, [PP, #0x6050]
//  0x43b158: stur w0, [x1, #0xb]
//  0x43b15c: ldr x0, [PP, #0x7598]
//  0x43b160: stur w0, [x1, #0x1f]
//  0x43b164: add x0, PP, #0xe, lsl #12
//  0x43b168: ldr x0, [x0, #0xe40]
//  0x43b16c: stur w0, [x1, #0x23]
//  0x43b170: bl #0x393bf8
//  0x43b174: mov x2, x0
//  0x43b178: ldur x0, [FP, #-8]
//  0x43b17c: stur x2, [FP, #-0x28]
//  0x43b180: stur w0, [x2, #0xb]
//  0x43b184: ldur x0, [FP, #-0x20]
//  0x43b188: stur w0, [x2, #0x13]
//  0x43b18c: add x0, PP, #0xf, lsl #12
//  0x43b190: ldr x0, [x0, #0x230]
//  0x43b194: stur w0, [x2, #0x2b]
//  0x43b198: mov x0, #2
//  0x43b19c: stur w0, [x2, #0x37]
//  0x43b1a0: add x1, PP, #0xe, lsl #12
//  0x43b1a4: ldr x1, [x1, #0xad0]
//  0x43b1a8: bl #0x3a1420
//  0x43b1ac: mov x3, x0
//  0x43b1b0: mov x0, #1
//  0x43b1b4: stur x3, [FP, #-8]
//  0x43b1b8: stur x0, [x3, #0x13]
//  0x43b1bc: add x0, PP, #0x10, lsl #12
//  0x43b1c0: ldr x0, [x0, #0x950]
//  0x43b1c4: stur w0, [x3, #0x1b]
//  0x43b1c8: ldur x0, [FP, #-0x28]
//  0x43b1cc: stur w0, [x3, #0xb]
//  0x43b1d0: mov x1, NULL
//  0x43b1d4: mov x2, #6
//  0x43b1d8: bl #0x61f920
//  0x43b1dc: mov x2, x0
//  0x43b1e0: ldur x0, [FP, #-0x10]
//  0x43b1e4: stur x2, [FP, #-0x20]
//  0x43b1e8: stur w0, [x2, #0xf]
//  0x43b1ec: ldur x0, [FP, #-0x18]
//  0x43b1f0: stur w0, [x2, #0x13]
//  0x43b1f4: ldur x0, [FP, #-8]
//  0x43b1f8: stur w0, [x2, #0x17]
//  0x43b1fc: ldr x1, [PP, #0x5c58]
//  0x43b200: bl #0x61e854
//  0x43b204: mov x1, x0
//  0x43b208: ldur x0, [FP, #-0x20]
//  0x43b20c: stur x1, [FP, #-8]
//  0x43b210: stur w0, [x1, #0xf]
//  0x43b214: mov x0, #6
//  0x43b218: stur w0, [x1, #0xb]
//  0x43b21c: bl #0x3a1414
//  0x43b220: ldr x1, [PP, #0x5140]
//  0x43b224: stur w1, [x0, #0xf]
//  0x43b228: add x1, PP, #0xf, lsl #12
//  0x43b22c: ldr x1, [x1, #0x288]
//  0x43b230: stur w1, [x0, #0x13]
//  0x43b234: add x1, PP, #0xe, lsl #12
//  0x43b238: ldr x1, [x1, #0xae8]
//  0x43b23c: stur w1, [x0, #0x17]
//  0x43b240: add x1, PP, #0xe, lsl #12
//  0x43b244: ldr x1, [x1, #0xb60]
//  0x43b248: stur w1, [x0, #0x1b]
//  0x43b24c: add x1, PP, #0xe, lsl #12
//  0x43b250: ldr x1, [x1, #0xaf8]
//  0x43b254: stur w1, [x0, #0x23]
//  0x43b258: add x1, PP, #0xa, lsl #12
//  0x43b25c: ldr x1, [x1, #0xa8]
//  0x43b260: stur w1, [x0, #0x2b]
//  0x43b264: stur xzr, [x0, #0x2f]
//  0x43b268: ldur x1, [FP, #-8]
//  0x43b26c: stur w1, [x0, #0xb]
//  0x43b270: mov SP, FP
//  0x43b274: ldp FP, LR, [SP], #0x10
//  0x43b278: ret 
//
dynamic GameFruitWinnerDialogState_coinLabelWidget() {
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x43b0c4
  // frame: FP = SP // 0x43b0c8
  // frame: SP = SP - 0x28 // 0x43b0cc
  local_m8 = x2; // 0x43b0d0
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x43b0d4
  x0 = "assets/images/3.0x/party_icon_soulcoin_big.webp" /* pp+0xf248 */; // 0x43b0e0
  x1 = x0; // 0x43b0d8
  local_m10 = x1; // 0x43b0e4
  memSet(x1, 0xb, w0); // 0x43b0e8
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x43b0f0
  memSet(x1, 0xf, w0); // 0x43b0f4
  x0 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x43b0fc
  memSet(x1, 0x13, w0); // 0x43b100
  memSet(x1, 0x17, w0); // 0x43b104
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x43b108
  x0 = mem((PP + 0x10000), 0x940) /* Double */; // 0x43b114
  x1 = x0; // 0x43b10c
  local_m18 = x1; // 0x43b118
  memSet(x1, 0xf, w0); // 0x43b11c
  x0 = local_m8; // 0x43b120
  if (w0 != w22) {
    x2 = x0; // 0x43b134
  } else {
    x2 = "" /* pp+0x148 */; // 0x43b12c
  }
  x0 = local_m10; // 0x43b138
  local_m8 = x2; // 0x43b13c
  AllocationStub_TextStyle() /* 0x31abec */; // 0x43b140
  x0 = NULL + 0x20; // 0x43b148
  x1 = x0; // 0x43b144
  local_m20 = x1; // 0x43b14c
  memSet(x1, 7, w0); // 0x43b150
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x43b154
  memSet(x1, 0xb, w0); // 0x43b158
  x0 = mem(PP, 0x7598) /* Double */; // 0x43b15c
  memSet(x1, 0x1f, w0); // 0x43b160
  x0 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x43b168
  memSet(x1, 0x23, w0); // 0x43b16c
  AllocationStub_Text() /* 0x393bf8 */; // 0x43b170
  x0 = local_m8; // 0x43b178
  x2 = x0; // 0x43b174
  local_m28 = x2; // 0x43b17c
  memSet(x2, 0xb, w0); // 0x43b180
  x0 = local_m20; // 0x43b184
  memSet(x2, 0x13, w0); // 0x43b188
  x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x43b190
  memSet(x2, 0x2b, w0); // 0x43b194
  x0 = 2; // 0x43b198
  memSet(x2, 0x37, w0); // 0x43b19c
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x43b1a4
  AllocationStub_Flexible() /* 0x3a1420 */; // 0x43b1a8
  x0 = 1; // 0x43b1b0
  x3 = x0; // 0x43b1ac
  local_m8 = x3; // 0x43b1b4
  memSet(x3, 0x13, x0); // 0x43b1b8
  x0 = mem((PP + 0x10000), 0x950) /* Obj!FlexFit@12273  */; // 0x43b1c0
  memSet(x3, 0x1b, w0); // 0x43b1c4
  x0 = local_m28; // 0x43b1c8
  memSet(x3, 0xb, w0); // 0x43b1cc
  x1 = NULL; // 0x43b1d0
  x2 = 6; // 0x43b1d4
  sub_0x61f920(); // 0x43b1d8
  x0 = local_m10; // 0x43b1e0
  x2 = x0; // 0x43b1dc
  local_m20 = x2; // 0x43b1e4
  memSet(x2, 0xf, w0); // 0x43b1e8
  x0 = local_m18; // 0x43b1ec
  memSet(x2, 0x13, w0); // 0x43b1f0
  x0 = local_m8; // 0x43b1f4
  memSet(x2, 0x17, w0); // 0x43b1f8
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x43b1fc
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x43b200
  x0 = local_m20; // 0x43b208
  x1 = x0; // 0x43b204
  local_m8 = x1; // 0x43b20c
  memSet(x1, 0xf, w0); // 0x43b210
  x0 = 6; // 0x43b214
  memSet(x1, 0xb, w0); // 0x43b218
  AllocationStub_Row() /* 0x3a1414 */; // 0x43b21c
  x1 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x43b220
  memSet(x0, 0xf, w1); // 0x43b224
  x1 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x43b22c
  memSet(x0, 0x13, w1); // 0x43b230
  x1 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x43b238
  memSet(x0, 0x17, w1); // 0x43b23c
  x1 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x43b244
  memSet(x0, 0x1b, w1); // 0x43b248
  x1 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x43b250
  memSet(x0, 0x23, w1); // 0x43b254
  x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x43b25c
  memSet(x0, 0x2b, w1); // 0x43b260
  memSet(x0, 0x2f, xzr); // 0x43b264
  x1 = local_m8; // 0x43b268
  memSet(x0, 0xb, w1); // 0x43b26c
  SP = FP; // 0x43b270
  // frame: FP, LR, mem(SP), 0x10 // 0x43b274
  return;
}

// GameFruitWinnerDialogState_userFlexibleWidget
// raw disassembly:
//  0x43b27c: stp FP, LR, [SP, #-0x10]!
//  0x43b280: mov FP, SP
//  0x43b284: sub SP, SP, #0x18
//  0x43b288: cmp w2, w22
//  0x43b28c: b.ne #0x43b298
//  0x43b290: ldr x0, [PP, #0x148]
//  0x43b294: b #0x43b29c
//  0x43b298: mov x0, x2
//  0x43b29c: stur x0, [FP, #-8]
//  0x43b2a0: bl #0x31abec
//  0x43b2a4: mov x1, x0
//  0x43b2a8: add x0, NULL, #0x20
//  0x43b2ac: stur x1, [FP, #-0x10]
//  0x43b2b0: stur w0, [x1, #7]
//  0x43b2b4: ldr x0, [PP, #0x6050]
//  0x43b2b8: stur w0, [x1, #0xb]
//  0x43b2bc: add x0, PP, #0xf, lsl #12
//  0x43b2c0: ldr x0, [x0, #0xb80]
//  0x43b2c4: stur w0, [x1, #0x1f]
//  0x43b2c8: add x0, PP, #0xe, lsl #12
//  0x43b2cc: ldr x0, [x0, #0xe40]
//  0x43b2d0: stur w0, [x1, #0x23]
//  0x43b2d4: bl #0x393bf8
//  0x43b2d8: mov x2, x0
//  0x43b2dc: ldur x0, [FP, #-8]
//  0x43b2e0: stur x2, [FP, #-0x18]
//  0x43b2e4: stur w0, [x2, #0xb]
//  0x43b2e8: ldur x0, [FP, #-0x10]
//  0x43b2ec: stur w0, [x2, #0x13]
//  0x43b2f0: add x0, PP, #0xf, lsl #12
//  0x43b2f4: ldr x0, [x0, #0x230]
//  0x43b2f8: stur w0, [x2, #0x2b]
//  0x43b2fc: mov x0, #2
//  0x43b300: stur w0, [x2, #0x37]
//  0x43b304: add x1, PP, #0xe, lsl #12
//  0x43b308: ldr x1, [x1, #0xad0]
//  0x43b30c: bl #0x3a1420
//  0x43b310: mov x1, #1
//  0x43b314: stur x1, [x0, #0x13]
//  0x43b318: add x1, PP, #0x10, lsl #12
//  0x43b31c: ldr x1, [x1, #0x950]
//  0x43b320: stur w1, [x0, #0x1b]
//  0x43b324: ldur x1, [FP, #-0x18]
//  0x43b328: stur w1, [x0, #0xb]
//  0x43b32c: mov SP, FP
//  0x43b330: ldp FP, LR, [SP], #0x10
//  0x43b334: ret 
//
dynamic GameFruitWinnerDialogState_userFlexibleWidget() {
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x43b27c
  // frame: FP = SP // 0x43b280
  // frame: SP = SP - 0x18 // 0x43b284
  if (w2 != w22) {
    x0 = x2; // 0x43b298
  } else {
    x0 = "" /* pp+0x148 */; // 0x43b290
  }
  local_m8 = x0; // 0x43b29c
  AllocationStub_TextStyle() /* 0x31abec */; // 0x43b2a0
  x0 = NULL + 0x20; // 0x43b2a8
  x1 = x0; // 0x43b2a4
  local_m10 = x1; // 0x43b2ac
  memSet(x1, 7, w0); // 0x43b2b0
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x43b2b4
  memSet(x1, 0xb, w0); // 0x43b2b8
  x0 = mem((PP + 0xf000), 0xb80) /* Double */; // 0x43b2c0
  memSet(x1, 0x1f, w0); // 0x43b2c4
  x0 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x43b2cc
  memSet(x1, 0x23, w0); // 0x43b2d0
  AllocationStub_Text() /* 0x393bf8 */; // 0x43b2d4
  x0 = local_m8; // 0x43b2dc
  x2 = x0; // 0x43b2d8
  local_m18 = x2; // 0x43b2e0
  memSet(x2, 0xb, w0); // 0x43b2e4
  x0 = local_m10; // 0x43b2e8
  memSet(x2, 0x13, w0); // 0x43b2ec
  x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x43b2f4
  memSet(x2, 0x2b, w0); // 0x43b2f8
  x0 = 2; // 0x43b2fc
  memSet(x2, 0x37, w0); // 0x43b300
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x43b308
  AllocationStub_Flexible() /* 0x3a1420 */; // 0x43b30c
  x1 = 1; // 0x43b310
  memSet(x0, 0x13, x1); // 0x43b314
  x1 = mem((PP + 0x10000), 0x950) /* Obj!FlexFit@12273  */; // 0x43b31c
  memSet(x0, 0x1b, w1); // 0x43b320
  x1 = local_m18; // 0x43b324
  memSet(x0, 0xb, w1); // 0x43b328
  SP = FP; // 0x43b32c
  // frame: FP, LR, mem(SP), 0x10 // 0x43b330
  return;
}

// GameFruitWinnerDialogState_userCrownHeadWidget
// raw disassembly:
//  0x43b338: stp FP, LR, [SP, #-0x10]!
//  0x43b33c: mov FP, SP
//  0x43b340: sub SP, SP, #0x58
//  0x43b344: stur x2, [FP, #-8]
//  0x43b348: stur x3, [FP, #-0x10]
//  0x43b34c: stur x5, [FP, #-0x18]
//  0x43b350: ldr BARRIER, [THR, #0x38]
//  0x43b354: cmp SP, BARRIER
//  0x43b358: b.ls #0x43b574
//  0x43b35c: bl #0x3a142c
//  0x43b360: mov x1, x0
//  0x43b364: ldur x0, [FP, #-0x10]
//  0x43b368: stur x1, [FP, #-0x20]
//  0x43b36c: stur w0, [x1, #0xb]
//  0x43b370: add x0, PP, #0xf, lsl #12
//  0x43b374: ldr x0, [x0, #0x170]
//  0x43b378: stur w0, [x1, #0xf]
//  0x43b37c: add x0, PP, #0x11, lsl #12
//  0x43b380: ldr x0, [x0, #0x860]
//  0x43b384: stur w0, [x1, #0x13]
//  0x43b388: add x0, PP, #0x11, lsl #12
//  0x43b38c: ldr x0, [x0, #0x410]
//  0x43b390: stur w0, [x1, #0x17]
//  0x43b394: bl #0x391a04
//  0x43b398: stur x0, [FP, #-0x10]
//  0x43b39c: add BARRIER, PP, #0x11, lsl #12
//  0x43b3a0: ldr BARRIER, [BARRIER, #0x860]
//  0x43b3a4: add LR, PP, #0x11, lsl #12
//  0x43b3a8: ldr LR, [LR, #0x410]
//  0x43b3ac: stp LR, BARRIER, [SP, #8]
//  0x43b3b0: ldur BARRIER, [FP, #-0x20]
//  0x43b3b4: str BARRIER, [SP]
//  0x43b3b8: mov x1, x0
//  0x43b3bc: add x4, PP, #0x11, lsl #12
//  0x43b3c0: ldr x4, [x4, #0x868]
//  0x43b3c4: bl #0x391490
//  0x43b3c8: add x1, PP, #0xf, lsl #12
//  0x43b3cc: ldr x1, [x1, #0x5d8]
//  0x43b3d0: bl #0x399e40
//  0x43b3d4: mov x1, x0
//  0x43b3d8: add x0, PP, #0xf, lsl #12
//  0x43b3dc: ldr x0, [x0, #0x228]
//  0x43b3e0: stur x1, [FP, #-0x20]
//  0x43b3e4: stur w0, [x1, #0x17]
//  0x43b3e8: ldur x0, [FP, #-0x10]
//  0x43b3ec: stur w0, [x1, #0xb]
//  0x43b3f0: bl #0x2e3578
//  0x43b3f4: stur x0, [FP, #-0x10]
//  0x43b3f8: stur xzr, [x0, #7]
//  0x43b3fc: fmov d0, #30.00000000
//  0x43b400: stur d0, [x0, #0xf]
//  0x43b404: stur xzr, [x0, #0x17]
//  0x43b408: stur xzr, [x0, #0x1f]
//  0x43b40c: add BARRIER, PP, #0xf, lsl #12
//  0x43b410: ldr BARRIER, [BARRIER, #0xbb8]
//  0x43b414: str BARRIER, [SP]
//  0x43b418: ldur x2, [FP, #-8]
//  0x43b41c: mov x1, NULL
//  0x43b420: add x4, PP, #0xf, lsl #12
//  0x43b424: ldr x4, [x4, #0x818]
//  0x43b428: bl #0x391e08
//  0x43b42c: stur x0, [FP, #-8]
//  0x43b430: bl #0x352b04
//  0x43b434: fmov d0, #30.00000000
//  0x43b438: stur x0, [FP, #-0x28]
//  0x43b43c: stur d0, [x0, #7]
//  0x43b440: stur d0, [x0, #0xf]
//  0x43b444: bl #0x392f28
//  0x43b448: mov x1, x0
//  0x43b44c: ldur x0, [FP, #-0x28]
//  0x43b450: stur x1, [FP, #-0x30]
//  0x43b454: stur w0, [x1, #7]
//  0x43b458: stur w0, [x1, #0xb]
//  0x43b45c: stur w0, [x1, #0xf]
//  0x43b460: stur w0, [x1, #0x13]
//  0x43b464: bl #0x391dd8
//  0x43b468: mov x1, x0
//  0x43b46c: ldur x0, [FP, #-8]
//  0x43b470: stur x1, [FP, #-0x28]
//  0x43b474: stur w0, [x1, #0xf]
//  0x43b478: ldur x0, [FP, #-0x30]
//  0x43b47c: stur w0, [x1, #0x13]
//  0x43b480: add x0, PP, #0xe, lsl #12
//  0x43b484: ldr x0, [x0, #0xb78]
//  0x43b488: stur w0, [x1, #0x23]
//  0x43b48c: bl #0x3a67fc
//  0x43b490: mov x1, x0
//  0x43b494: ldur x0, [FP, #-0x18]
//  0x43b498: stur x1, [FP, #-8]
//  0x43b49c: stur w0, [x1, #0xb]
//  0x43b4a0: add x17, PP, #0x11, lsl #12
//  0x43b4a4: ldr d0, [x17, #0x880]
//  0x43b4a8: stur d0, [x1, #0x13]
//  0x43b4ac: add x0, NULL, #0x30
//  0x43b4b0: stur w0, [x1, #0x1b]
//  0x43b4b4: bl #0x391a04
//  0x43b4b8: stur x0, [FP, #-0x18]
//  0x43b4bc: add BARRIER, PP, #0x10, lsl #12
//  0x43b4c0: ldr BARRIER, [BARRIER, #0x350]
//  0x43b4c4: add LR, PP, #0x10, lsl #12
//  0x43b4c8: ldr LR, [LR, #0x350]
//  0x43b4cc: stp LR, BARRIER, [SP, #0x18]
//  0x43b4d0: ldur BARRIER, [FP, #-0x10]
//  0x43b4d4: ldur LR, [FP, #-0x28]
//  0x43b4d8: stp LR, BARRIER, [SP, #8]
//  0x43b4dc: ldur BARRIER, [FP, #-8]
//  0x43b4e0: str BARRIER, [SP]
//  0x43b4e4: mov x1, x0
//  0x43b4e8: add x4, PP, #0x11, lsl #12
//  0x43b4ec: ldr x4, [x4, #0x888]
//  0x43b4f0: bl #0x391490
//  0x43b4f4: mov x1, NULL
//  0x43b4f8: mov x2, #4
//  0x43b4fc: bl #0x61f920
//  0x43b500: mov x2, x0
//  0x43b504: ldur x0, [FP, #-0x20]
//  0x43b508: stur x2, [FP, #-8]
//  0x43b50c: stur w0, [x2, #0xf]
//  0x43b510: ldur x0, [FP, #-0x18]
//  0x43b514: stur w0, [x2, #0x13]
//  0x43b518: ldr x1, [PP, #0x5c58]
//  0x43b51c: bl #0x61e854
//  0x43b520: mov x1, x0
//  0x43b524: ldur x0, [FP, #-8]
//  0x43b528: stur x1, [FP, #-0x10]
//  0x43b52c: stur w0, [x1, #0xf]
//  0x43b530: mov x0, #4
//  0x43b534: stur w0, [x1, #0xb]
//  0x43b538: bl #0x39e6f4
//  0x43b53c: add x1, PP, #0xe, lsl #12
//  0x43b540: ldr x1, [x1, #0xaa0]
//  0x43b544: stur w1, [x0, #0xf]
//  0x43b548: add x1, PP, #0xe, lsl #12
//  0x43b54c: ldr x1, [x1, #0xf08]
//  0x43b550: stur w1, [x0, #0x17]
//  0x43b554: add x1, PP, #0xe, lsl #12
//  0x43b558: ldr x1, [x1, #0xf10]
//  0x43b55c: stur w1, [x0, #0x1b]
//  0x43b560: ldur x1, [FP, #-0x10]
//  0x43b564: stur w1, [x0, #0xb]
//  0x43b568: mov SP, FP
//  0x43b56c: ldp FP, LR, [SP], #0x10
//  0x43b570: ret 
//  0x43b574: bl #0x61fa28
//  0x43b578: b #0x43b35c
//
dynamic GameFruitWinnerDialogState_userCrownHeadWidget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x43b338
  // frame: FP = SP // 0x43b33c
  // frame: SP = SP - 0x58 // 0x43b340
  local_m8 = x2; // 0x43b344
  local_m10 = x3; // 0x43b348
  local_m18 = x5; // 0x43b34c
  BARRIER = mem(THR, 0x38); // 0x43b350
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x43b574
  }
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x43b35c
  x0 = local_m10; // 0x43b364
  x1 = x0; // 0x43b360
  local_m20 = x1; // 0x43b368
  memSet(x1, 0xb, w0); // 0x43b36c
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x43b374
  memSet(x1, 0xf, w0); // 0x43b378
  x0 = mem((PP + 0x11000), 0x860) /* Double */; // 0x43b380
  memSet(x1, 0x13, w0); // 0x43b384
  x0 = mem((PP + 0x11000), 0x410) /* Double */; // 0x43b38c
  memSet(x1, 0x17, w0); // 0x43b390
  AllocationStub_Container() /* 0x391a04 */; // 0x43b394
  local_m10 = x0; // 0x43b398
  BARRIER = mem((PP + 0x11000), 0x860) /* Double */; // 0x43b3a0
  LR = mem((PP + 0x11000), 0x410) /* Double */; // 0x43b3a8
  // frame: LR, BARRIER, mem(SP, 8) // 0x43b3ac
  BARRIER = local_m20; // 0x43b3b0
  local_0 = BARRIER; // 0x43b3b4
  x1 = x0; // 0x43b3b8
  x4 = mem((PP + 0x11000), 0x868) /* ImmutableArray */; // 0x43b3c0
  Container_ctor() /* 0x391490 */; // 0x43b3c4
  x1 = mem((PP + 0xf000), 0x5d8) /* TypeArguments */; // 0x43b3cc
  AllocationStub_Positioned() /* 0x399e40 */; // 0x43b3d0
  x0 = mem((PP + 0xf000), 0x228) /* Double */; // 0x43b3dc
  x1 = x0; // 0x43b3d4
  local_m20 = x1; // 0x43b3e0
  memSet(x1, 0x17, w0); // 0x43b3e4
  x0 = local_m10; // 0x43b3e8
  memSet(x1, 0xb, w0); // 0x43b3ec
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x43b3f0
  local_m10 = x0; // 0x43b3f4
  memSet(x0, 7, xzr); // 0x43b3f8
  d0 = 30.00000000 /* bits */; // 0x43b3fc
  memSet(x0, 0xf, d0); // 0x43b400
  memSet(x0, 0x17, xzr); // 0x43b404
  memSet(x0, 0x1f, xzr); // 0x43b408
  BARRIER = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x43b410
  local_0 = BARRIER; // 0x43b414
  x1 = NULL; // 0x43b41c
  x2 = local_m8; // 0x43b418
  x4 = mem((PP + 0xf000), 0x818) /* ImmutableArray */; // 0x43b424
  Border_factory_ctor_all() /* 0x391e08 */; // 0x43b428
  local_m8 = x0; // 0x43b42c
  AllocationStub_Radius() /* 0x352b04 */; // 0x43b430
  d0 = 30.00000000 /* bits */; // 0x43b434
  local_m28 = x0; // 0x43b438
  memSet(x0, 7, d0); // 0x43b43c
  memSet(x0, 0xf, d0); // 0x43b440
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x43b444
  x0 = local_m28; // 0x43b44c
  x1 = x0; // 0x43b448
  local_m30 = x1; // 0x43b450
  memSet(x1, 7, w0); // 0x43b454
  memSet(x1, 0xb, w0); // 0x43b458
  memSet(x1, 0xf, w0); // 0x43b45c
  memSet(x1, 0x13, w0); // 0x43b460
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x43b464
  x0 = local_m8; // 0x43b46c
  x1 = x0; // 0x43b468
  local_m28 = x1; // 0x43b470
  memSet(x1, 0xf, w0); // 0x43b474
  x0 = local_m30; // 0x43b478
  memSet(x1, 0x13, w0); // 0x43b47c
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x43b484
  memSet(x1, 0x23, w0); // 0x43b488
  AllocationStub_SoulAvatarImage() /* 0x3a67fc */; // 0x43b48c
  x0 = local_m18; // 0x43b494
  x1 = x0; // 0x43b490
  local_m8 = x1; // 0x43b498
  memSet(x1, 0xb, w0); // 0x43b49c
  d0 = 4633078116657397760; // 0x43b4a4
  x17 = PP + 0x11000; // 0x43b4a0
  memSet(x1, 0x13, d0); // 0x43b4a8
  x0 = NULL + 0x30; // 0x43b4ac
  memSet(x1, 0x1b, w0); // 0x43b4b0
  AllocationStub_Container() /* 0x391a04 */; // 0x43b4b4
  local_m18 = x0; // 0x43b4b8
  BARRIER = mem((PP + 0x10000), 0x350) /* Double */; // 0x43b4c0
  LR = mem((PP + 0x10000), 0x350) /* Double */; // 0x43b4c8
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x43b4cc
  BARRIER = local_m10; // 0x43b4d0
  LR = local_m28; // 0x43b4d4
  // frame: LR, BARRIER, mem(SP, 8) // 0x43b4d8
  BARRIER = local_m8; // 0x43b4dc
  local_0 = BARRIER; // 0x43b4e0
  x1 = x0; // 0x43b4e4
  x4 = mem((PP + 0x11000), 0x888) /* ImmutableArray */; // 0x43b4ec
  Container_ctor() /* 0x391490 */; // 0x43b4f0
  x1 = NULL; // 0x43b4f4
  x2 = 4; // 0x43b4f8
  sub_0x61f920(); // 0x43b4fc
  x0 = local_m20; // 0x43b504
  x2 = x0; // 0x43b500
  local_m8 = x2; // 0x43b508
  memSet(x2, 0xf, w0); // 0x43b50c
  x0 = local_m18; // 0x43b510
  memSet(x2, 0x13, w0); // 0x43b514
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x43b518
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x43b51c
  x0 = local_m8; // 0x43b524
  x1 = x0; // 0x43b520
  local_m10 = x1; // 0x43b528
  memSet(x1, 0xf, w0); // 0x43b52c
  x0 = 4; // 0x43b530
  memSet(x1, 0xb, w0); // 0x43b534
  AllocationStub_Stack() /* 0x39e6f4 */; // 0x43b538
  x1 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x43b540
  memSet(x0, 0xf, w1); // 0x43b544
  x1 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x43b54c
  memSet(x0, 0x17, w1); // 0x43b550
  x1 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x43b558
  memSet(x0, 0x1b, w1); // 0x43b55c
  x1 = local_m10; // 0x43b560
  memSet(x0, 0xb, w1); // 0x43b564
  SP = FP; // 0x43b568
  // frame: FP, LR, mem(SP), 0x10 // 0x43b56c
  return;
}

// GameFruitWinnerDialogState_anon_closure_3
// raw disassembly:
//  0x43b57c: stp FP, LR, [SP, #-0x10]!
//  0x43b580: mov FP, SP
//  0x43b584: ldr x0, [FP, #0x10]
//  0x43b588: ldur w1, [x0, #0x17]
//  0x43b58c: add x1, x1, HEAP, lsl #32
//  0x43b590: ldr BARRIER, [THR, #0x38]
//  0x43b594: cmp SP, BARRIER
//  0x43b598: b.ls #0x43b5c8
//  0x43b59c: ldur w0, [x1, #0xf]
//  0x43b5a0: add x0, x0, HEAP, lsl #32
//  0x43b5a4: ldur w1, [x0, #0xf]
//  0x43b5a8: add x1, x1, HEAP, lsl #32
//  0x43b5ac: cmp w1, w22
//  0x43b5b0: b.eq #0x43b5d0
//  0x43b5b4: bl #0x43b5d4
//  0x43b5b8: mov x0, NULL
//  0x43b5bc: mov SP, FP
//  0x43b5c0: ldp FP, LR, [SP], #0x10
//  0x43b5c4: ret 
//  0x43b5c8: bl #0x61fa28
//  0x43b5cc: b #0x43b59c
//  0x43b5d0: bl #0x61ffd0
//
dynamic GameFruitWinnerDialogState_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x43b57c
  BARRIER = mem(THR, 0x38); // 0x43b590
  // frame: FP = SP // 0x43b580
  w1 = mem((local_10), 0x17); // 0x43b588
  x0 = local_10; // 0x43b584
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x43b58c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x43b5c8
  }
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf); // 0x43b5a4
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x43b5a0
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x43b5a8
  if (w1 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x43b5d0
  }
  GameFruitWinnerDialog_dismissWinnerDialog() /* 0x43b5d4 */; // 0x43b5b4
  SP = FP; // 0x43b5bc
  x0 = NULL; // 0x43b5b8
  // frame: FP, LR, mem(SP), 0x10 // 0x43b5c0
  return;
}

// GameFruitWinnerDialogState_dispose
// raw disassembly:
//  0x452430: stp FP, LR, [SP, #-0x10]!
//  0x452434: mov FP, SP
//  0x452438: ldr BARRIER, [THR, #0x38]
//  0x45243c: cmp SP, BARRIER
//  0x452440: b.ls #0x452464
//  0x452444: ldur w0, [x1, #0x13]
//  0x452448: add x0, x0, HEAP, lsl #32
//  0x45244c: mov x1, x0
//  0x452450: bl #0x45246c
//  0x452454: mov x0, NULL
//  0x452458: mov SP, FP
//  0x45245c: ldp FP, LR, [SP], #0x10
//  0x452460: ret 
//  0x452464: bl #0x61fa28
//  0x452468: b #0x452444
//
dynamic GameFruitWinnerDialogState_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x452430
  BARRIER = mem(THR, 0x38); // 0x452438
  // frame: FP = SP // 0x452434
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x452464
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x452448
  x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x45244c
  GameFruitWinnerDialogNotifier_release() /* 0x45246c */; // 0x452450
  SP = FP; // 0x452458
  x0 = NULL; // 0x452454
  // frame: FP, LR, mem(SP), 0x10 // 0x45245c
  return;
}

// GameFruitWinnerDialogState_initState
// raw disassembly:
//  0x4d90e4: stp FP, LR, [SP, #-0x10]!
//  0x4d90e8: mov FP, SP
//  0x4d90ec: ldr BARRIER, [THR, #0x38]
//  0x4d90f0: cmp SP, BARRIER
//  0x4d90f4: b.ls #0x4d9138
//  0x4d90f8: ldur w0, [x1, #0x13]
//  0x4d90fc: add x0, x0, HEAP, lsl #32
//  0x4d9100: ldur w2, [x1, #0xb]
//  0x4d9104: add x2, x2, HEAP, lsl #32
//  0x4d9108: cmp w2, w22
//  0x4d910c: b.eq #0x4d9140
//  0x4d9110: ldur x1, [x2, #0xb]
//  0x4d9114: ldur w3, [x2, #0x13]
//  0x4d9118: add x3, x3, HEAP, lsl #32
//  0x4d911c: mov x2, x1
//  0x4d9120: mov x1, x0
//  0x4d9124: bl #0x4d9144
//  0x4d9128: mov x0, NULL
//  0x4d912c: mov SP, FP
//  0x4d9130: ldp FP, LR, [SP], #0x10
//  0x4d9134: ret 
//  0x4d9138: bl #0x61fa28
//  0x4d913c: b #0x4d90f8
//  0x4d9140: bl #0x61ffd0
//
dynamic GameFruitWinnerDialogState_initState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d90e4
  BARRIER = mem(THR, 0x38); // 0x4d90ec
  // frame: FP = SP // 0x4d90e8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d9138
  }
  w2 = mem(x1, 0xb); // 0x4d9100
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d90fc
  x2 = ((mem(x1, 0xb)) & 0xffffffff) + (HEAP << 32); // 0x4d9104
  if (w2 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d9140
  }
  w3 = mem(x2, 0x13); // 0x4d9114
  x1 = x0; // 0x4d9120
  x2 = mem(x2, 0xb); // 0x4d911c
  x3 = ((mem(x2, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4d9118
  GameFruitWinnerDialogNotifier_startCountDown() /* 0x4d9144 */; // 0x4d9124
  SP = FP; // 0x4d912c
  x0 = NULL; // 0x4d9128
  // frame: FP, LR, mem(SP), 0x10 // 0x4d9130
  return;
}

// GameFruitWinnerDialog_dismissWinnerDialog
// raw disassembly:
//  0x43b5d4: stp FP, LR, [SP, #-0x10]!
//  0x43b5d8: mov FP, SP
//  0x43b5dc: sub SP, SP, #0x28
//  0x43b5e0: ldr BARRIER, [THR, #0x38]
//  0x43b5e4: cmp SP, BARRIER
//  0x43b5e8: b.ls #0x43b6a0
//  0x43b5ec: add BARRIER, NULL, #0x20
//  0x43b5f0: str BARRIER, [SP]
//  0x43b5f4: add x4, PP, #0x10, lsl #12
//  0x43b5f8: ldr x4, [x4, #0x370]
//  0x43b5fc: bl #0x3a4e94
//  0x43b600: stur x0, [FP, #-8]
//  0x43b604: ldur x1, [x0, #-1]
//  0x43b608: ubfx x1, x1, #0xc, #0x14
//  0x43b60c: cmp x1, #0x8e7
//  0x43b610: b.ne #0x43b66c
//  0x43b614: mov x1, x0
//  0x43b618: bl #0x3a4d94
//  0x43b61c: tbz w0, #4, #0x43b650
//  0x43b620: bl #0x3a4c98
//  0x43b624: stur x0, [FP, #-0x10]
//  0x43b628: ldr BARRIER, [THR, #0x90]
//  0x43b62c: stp BARRIER, NULL, [SP]
//  0x43b630: bl #0x27c0c8
//  0x43b634: ldr BARRIER, [PP, #0x120]
//  0x43b638: ldur LR, [FP, #-0x10]
//  0x43b63c: stp LR, BARRIER, [SP, #8]
//  0x43b640: str x0, [SP]
//  0x43b644: ldr x4, [PP, #0x58]
//  0x43b648: bl #0x3a264c
//  0x43b64c: b #0x43b690
//  0x43b650: ldr BARRIER, [PP, #0x1a8]
//  0x43b654: ldur LR, [FP, #-8]
//  0x43b658: stp LR, BARRIER, [SP, #8]
//  0x43b65c: str NULL, [SP]
//  0x43b660: ldr x4, [PP, #0x58]
//  0x43b664: bl #0x5e0d74
//  0x43b668: b #0x43b690
//  0x43b66c: ldur x1, [x0, #-1]
//  0x43b670: ubfx x1, x1, #0xc, #0x14
//  0x43b674: ldr BARRIER, [PP, #0x1a8]
//  0x43b678: stp x0, BARRIER, [SP]
//  0x43b67c: mov x0, x1
//  0x43b680: ldr x4, [PP, #0x910]
//  0x43b684: sub LR, x0, #1, lsl #12
//  0x43b688: ldr LR, [x21, LR, lsl #3]
//  0x43b68c: blr LR
//  0x43b690: mov x0, NULL
//  0x43b694: mov SP, FP
//  0x43b698: ldp FP, LR, [SP], #0x10
//  0x43b69c: ret 
//  0x43b6a0: bl #0x61fa28
//  0x43b6a4: b #0x43b5ec
//
dynamic GameFruitWinnerDialog_dismissWinnerDialog() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x43b5d4
  BARRIER = mem(THR, 0x38); // 0x43b5e0
  // frame: FP = SP // 0x43b5d8
  // frame: SP = SP - 0x28 // 0x43b5dc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x43b6a0
  }
  BARRIER = NULL + 0x20; // 0x43b5ec
  local_0 = BARRIER; // 0x43b5f0
  x4 = mem((PP + 0x10000), 0x370) /* ImmutableArray */; // 0x43b5f8
  Navigator_of() /* 0x3a4e94 */; // 0x43b5fc
  local_m8 = x0; // 0x43b600
  x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x43b608
  if (x1 != 0x8e7) {
    BARRIER = mem(PP, 0x1a8) /* TypeArguments */; // 0x43b674
    x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x43b670
    // frame: x0, BARRIER, mem(SP) // 0x43b678
    LR = mem(x21, ((x0 - 0x1000) << 3)); // 0x43b688
    x0 = x1; // 0x43b67c
    x4 = mem(PP, 0x910) /* ImmutableArray */; // 0x43b680
    callIndirect(LR); // 0x43b68c
  } else {
    x1 = x0; // 0x43b614
    NavigatorState_canPop() /* 0x3a4d94 */; // 0x43b618
    if (x0 & (1 << 4) == 0) {
      BARRIER = mem(PP, 0x1a8) /* TypeArguments */; // 0x43b650
      LR = local_m8; // 0x43b654
      // frame: LR, BARRIER, mem(SP, 8) // 0x43b658
      local_0 = NULL; // 0x43b65c
      x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x43b660
      NavigatorState_pop() /* 0x5e0d74 */; // 0x43b664
    } else {
      BoostNavigator_get_instance() /* 0x3a4c98 */; // 0x43b620
      local_m10 = x0; // 0x43b624
      BARRIER = mem(THR, 0x90); // 0x43b628
      // frame: BARRIER, NULL, mem(SP) // 0x43b62c
      Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x43b630
      BARRIER = mem(PP, 0x120) /* TypeArguments */; // 0x43b634
      LR = local_m10; // 0x43b638
      // frame: LR, BARRIER, mem(SP, 8) // 0x43b63c
      local_0 = x0; // 0x43b640
      x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x43b644
      BoostNavigator_pop() /* 0x3a264c */; // 0x43b648
    }
  }
  SP = FP; // 0x43b694
  x0 = NULL; // 0x43b690
  // frame: FP, LR, mem(SP), 0x10 // 0x43b698
  return;
}

// GameFruitWinnerDialog_createState
// raw disassembly:
//  0x4c3be4: stp FP, LR, [SP, #-0x10]!
//  0x4c3be8: mov FP, SP
//  0x4c3bec: sub SP, SP, #8
//  0x4c3bf0: ldr BARRIER, [THR, #0x38]
//  0x4c3bf4: cmp SP, BARRIER
//  0x4c3bf8: b.ls #0x4c3c2c
//  0x4c3bfc: bl #0x4c3d7c
//  0x4c3c00: mov x1, x0
//  0x4c3c04: stur x0, [FP, #-8]
//  0x4c3c08: bl #0x4c3c40
//  0x4c3c0c: add x1, PP, #0x12, lsl #12
//  0x4c3c10: ldr x1, [x1, #0x598]
//  0x4c3c14: bl #0x4c3c34
//  0x4c3c18: ldur x1, [FP, #-8]
//  0x4c3c1c: stur w1, [x0, #0x13]
//  0x4c3c20: mov SP, FP
//  0x4c3c24: ldp FP, LR, [SP], #0x10
//  0x4c3c28: ret 
//  0x4c3c2c: bl #0x61fa28
//  0x4c3c30: b #0x4c3bfc
//
dynamic GameFruitWinnerDialog_createState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c3be4
  BARRIER = mem(THR, 0x38); // 0x4c3bf0
  // frame: FP = SP // 0x4c3be8
  // frame: SP = SP - 8 // 0x4c3bec
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c3c2c
  }
  AllocationStub_GameFruitWinnerDialogNotifier() /* 0x4c3d7c */; // 0x4c3bfc
  x1 = x0; // 0x4c3c00
  local_m8 = x0; // 0x4c3c04
  GameFruitWinnerDialogNotifier_ctor() /* 0x4c3c40 */; // 0x4c3c08
  x1 = mem((PP + 0x12000), 0x598) /* TypeArguments */; // 0x4c3c10
  AllocationStub__GameFruitWinnerDialogState() /* 0x4c3c34 */; // 0x4c3c14
  x1 = local_m8; // 0x4c3c18
  memSet(x0, 0x13, w1); // 0x4c3c1c
  SP = FP; // 0x4c3c20
  // frame: FP, LR, mem(SP), 0x10 // 0x4c3c24
  return;
}

// GameFruitWinnerDialog_showWinnerDialog
// raw disassembly:
//  0x4d2978: stp FP, LR, [SP, #-0x10]!
//  0x4d297c: mov FP, SP
//  0x4d2980: sub SP, SP, #0x30
//  0x4d2984: mov x4, x1
//  0x4d2988: stur x1, [FP, #-0x10]
//  0x4d298c: stur x3, [FP, #-0x18]
//  0x4d2990: ldr BARRIER, [THR, #0x38]
//  0x4d2994: cmp SP, BARRIER
//  0x4d2998: b.ls #0x4d2a04
//  0x4d299c: sbfiz x0, x2, #1, #0x1f
//  0x4d29a0: cmp x2, x0, asr #1
//  0x4d29a4: b.eq #0x4d29b0
//  0x4d29a8: bl #0x61fba8
//  0x4d29ac: stur x2, [x0, #7]
//  0x4d29b0: stur x0, [FP, #-8]
//  0x4d29b4: mov x1, #2
//  0x4d29b8: bl #0x61e890
//  0x4d29bc: mov x1, x0
//  0x4d29c0: ldur x0, [FP, #-8]
//  0x4d29c4: stur w0, [x1, #0xf]
//  0x4d29c8: ldur x0, [FP, #-0x18]
//  0x4d29cc: stur w0, [x1, #0x13]
//  0x4d29d0: mov x2, x1
//  0x4d29d4: add x1, PP, #0x11, lsl #12
//  0x4d29d8: ldr x1, [x1, #0xc48]
//  0x4d29dc: bl #0x61ec54
//  0x4d29e0: stp x0, NULL, [SP, #8]
//  0x4d29e4: ldur BARRIER, [FP, #-0x10]
//  0x4d29e8: str BARRIER, [SP]
//  0x4d29ec: ldr x4, [PP, #0x58]
//  0x4d29f0: bl #0x41bcc4
//  0x4d29f4: mov x0, NULL
//  0x4d29f8: mov SP, FP
//  0x4d29fc: ldp FP, LR, [SP], #0x10
//  0x4d2a00: ret 
//  0x4d2a04: bl #0x61fa28
//  0x4d2a08: b #0x4d299c
//
dynamic GameFruitWinnerDialog_showWinnerDialog() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d2978
  // frame: FP = SP // 0x4d297c
  // frame: SP = SP - 0x30 // 0x4d2980
  x4 = x1; // 0x4d2984
  local_m10 = x1; // 0x4d2988
  local_m18 = x3; // 0x4d298c
  BARRIER = mem(THR, 0x38); // 0x4d2990
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d2a04
  }
  x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x4d299c
  if (x2 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x4d29a8
    memSet(x0, 7, x2); // 0x4d29ac
  }
  local_m8 = x0; // 0x4d29b0
  x1 = 2; // 0x4d29b4
  sub_0x61e890(); // 0x4d29b8
  x0 = local_m8; // 0x4d29c0
  x1 = x0; // 0x4d29bc
  memSet(x1, 0xf, w0); // 0x4d29c4
  x0 = local_m18; // 0x4d29c8
  memSet(x1, 0x13, w0); // 0x4d29cc
  x1 = mem((PP + 0x11000), 0xc48) /* Function */; // 0x4d29d8
  x2 = x1; // 0x4d29d0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d29dc
  // frame: x0, NULL, mem(SP, 8) // 0x4d29e0
  BARRIER = local_m10; // 0x4d29e4
  local_0 = BARRIER; // 0x4d29e8
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x4d29ec
  showDialog() /* 0x41bcc4 */; // 0x4d29f0
  SP = FP; // 0x4d29f8
  x0 = NULL; // 0x4d29f4
  // frame: FP, LR, mem(SP), 0x10 // 0x4d29fc
  return;
}

// GameFruitWinnerDialog_anon_closure
// raw disassembly:
//  0x4d2a0c: stp FP, LR, [SP, #-0x10]!
//  0x4d2a10: mov FP, SP
//  0x4d2a14: sub SP, SP, #0x10
//  0x4d2a18: ldr x0, [FP, #0x18]
//  0x4d2a1c: ldur w1, [x0, #0x17]
//  0x4d2a20: add x1, x1, HEAP, lsl #32
//  0x4d2a24: ldur w0, [x1, #0xf]
//  0x4d2a28: add x0, x0, HEAP, lsl #32
//  0x4d2a2c: ldur w2, [x1, #0x13]
//  0x4d2a30: add x2, x2, HEAP, lsl #32
//  0x4d2a34: stur x2, [FP, #-0x10]
//  0x4d2a38: sbfx x1, x0, #1, #0x1f
//  0x4d2a3c: tbz w0, #0, #0x4d2a44
//  0x4d2a40: ldur x1, [x0, #7]
//  0x4d2a44: stur x1, [FP, #-8]
//  0x4d2a48: bl #0x4d2a68
//  0x4d2a4c: ldur x1, [FP, #-8]
//  0x4d2a50: stur x1, [x0, #0xb]
//  0x4d2a54: ldur x1, [FP, #-0x10]
//  0x4d2a58: stur w1, [x0, #0x13]
//  0x4d2a5c: mov SP, FP
//  0x4d2a60: ldp FP, LR, [SP], #0x10
//  0x4d2a64: ret 
//
dynamic GameFruitWinnerDialog_anon_closure() {
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d2a0c
  // frame: FP = SP // 0x4d2a10
  // frame: SP = SP - 0x10 // 0x4d2a14
  w0 = mem((((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf); // 0x4d2a24
  w1 = mem((local_18), 0x17); // 0x4d2a1c
  x0 = ((mem((((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d2a28
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d2a20
  w2 = mem(x1, 0x13); // 0x4d2a2c
  x2 = ((mem(x1, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4d2a30
  local_m10 = x2; // 0x4d2a34
  x1 = (x0 >> 1) & 0x7fffffff; // 0x4d2a38
  if (x0 & (1 << 0) == 0) {
  } else {
    x1 = mem(x0, 7); // 0x4d2a40
  }
  local_m8 = x1; // 0x4d2a44
  AllocationStub_GameFruitWinnerDialog() /* 0x4d2a68 */; // 0x4d2a48
  x1 = local_m8; // 0x4d2a4c
  memSet(x0, 0xb, x1); // 0x4d2a50
  x1 = local_m10; // 0x4d2a54
  memSet(x0, 0x13, w1); // 0x4d2a58
  SP = FP; // 0x4d2a5c
  // frame: FP, LR, mem(SP), 0x10 // 0x4d2a60
  return;
}
