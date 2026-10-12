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
dynamic AllocationStub_ChangeNotifierProvider, AllocationStub_ClampingScrollPhysics;
dynamic AllocationStub_Color, AllocationStub_Column, AllocationStub_Consumer;
dynamic AllocationStub_Container, AllocationStub_DecorationImage, AllocationStub_Expanded;
dynamic AllocationStub_Flexible, AllocationStub_GameFruitLand;
dynamic AllocationStub_GameFruitNotifier, AllocationStub_LinearGradient;
dynamic AllocationStub_ListView, AllocationStub_NeverScrollableScrollPhysics;
dynamic AllocationStub_Padding, AllocationStub_Radius, AllocationStub_Row;
dynamic AllocationStub_SOAssetImage, AllocationStub_SOImage;
dynamic AllocationStub_SingleChildScrollView, AllocationStub_SoulPageScaffold;
dynamic AllocationStub_Stack, AllocationStub_Text, AllocationStub_TextStyle;
dynamic AllocationStub__Closure, AllocationStub__GameFruitPageState;
dynamic AllocationStub__GrowableList, AllocationStub__Mint;
dynamic AllocationStub__ValueInheritedProvider, BARRIER, Container_ctor, EventTrack_eventClick;
dynamic EventTrack_eventPv, FP, GameFruitBetRecordDialog_showGameDialog;
dynamic GameFruitBetRecordDialog_showGameRuleDialog, GameFruitNotifier_ctor;
dynamic GameFruitNotifier_getCurrentProcess, GameFruitNotifier_get_currentTips;
dynamic GameFruitNotifier_release, GestureDetector_ctor, HEAP, LR;
dynamic LateInitializationErrorSharedWithoutFpuRegsStub_0x620258, ListView_ctor_builder;
dynamic Map_factory_ctor_fromLiteral, NULL, NativeDialog_toCoinDialog;
dynamic NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0, PP;
dynamic RangeErrorSharedWithoutFpuRegsStub_0x61fe70, RouterNative_getInstance;
dynamic RouterNative_routeFlutter, SOColors_get_color_3e00a5, SOColors_get_color_4900b4;
dynamic SOColors_get_s_06, SOEventBus_addEventListener, SOEventBus_removeEventListener, SP;
dynamic SafeChangeNotifier_requestTotalCoins, SafeChangeNotifier_updateCoinSum;
dynamic SoulNavigator_navigate, SoulState_dispose, SoulState_onPageShow;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolateSingle, THR;
dynamic WriteBarrierStub_x1, d0, d1, getString, int_kNull, local_0, local_10, local_18;
dynamic local_20, local_28, local_m10, local_m18, local_m20, local_m28, local_m30, local_m38;
dynamic local_m40, local_m48, local_m50, local_m58, local_m60, local_m8, sub_0x3a1d94;
dynamic sub_0x61db00, sub_0x61e890, sub_0x61f920, w0, w1, w16, w17, w2, w22, w3, w4, w5, w6;
dynamic w7, x0, x1, x16, x17, x2, x21, x25, x3, x4, x5, x6, x7, x9, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$game$page_game_fruit
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// GameFruitPageState_build
// raw disassembly:
//  0x41a20c: stp FP, LR, [SP, #-0x10]!
//  0x41a210: mov FP, SP
//  0x41a214: sub SP, SP, #0x30
//  0x41a218: stur x1, [FP, #-8]
//  0x41a21c: ldr BARRIER, [THR, #0x38]
//  0x41a220: cmp SP, BARRIER
//  0x41a224: b.ls #0x41a340
//  0x41a228: mov x1, #1
//  0x41a22c: bl #0x61e890
//  0x41a230: mov x2, x0
//  0x41a234: ldur x0, [FP, #-8]
//  0x41a238: stur x2, [FP, #-0x10]
//  0x41a23c: stur w0, [x2, #0xf]
//  0x41a240: add x1, PP, #0xc, lsl #12
//  0x41a244: ldr x1, [x1, #0x8f0]
//  0x41a248: ldr x4, [PP, #0x4c0]
//  0x41a24c: bl #0x3a1dcc
//  0x41a250: stur x0, [FP, #-0x18]
//  0x41a254: bl #0x3b82c4
//  0x41a258: mov x3, x0
//  0x41a25c: ldur x0, [FP, #-8]
//  0x41a260: stur x3, [FP, #-0x28]
//  0x41a264: ldur w4, [x0, #0x13]
//  0x41a268: add x4, x4, HEAP, lsl #32
//  0x41a26c: ldur x2, [FP, #-0x10]
//  0x41a270: stur x4, [FP, #-0x20]
//  0x41a274: add x1, PP, #0x11, lsl #12
//  0x41a278: ldr x1, [x1, #0xa20]
//  0x41a27c: bl #0x61ec54
//  0x41a280: add x1, PP, #0x11, lsl #12
//  0x41a284: ldr x1, [x1, #0xa28]
//  0x41a288: stur x0, [FP, #-8]
//  0x41a28c: bl #0x41a414
//  0x41a290: mov x2, x0
//  0x41a294: ldur x0, [FP, #-8]
//  0x41a298: stur x2, [FP, #-0x30]
//  0x41a29c: stur w0, [x2, #0x13]
//  0x41a2a0: add x1, PP, #0x11, lsl #12
//  0x41a2a4: ldr x1, [x1, #0xa28]
//  0x41a2a8: bl #0x41a408
//  0x41a2ac: mov x2, x0
//  0x41a2b0: ldur x0, [FP, #-0x20]
//  0x41a2b4: stur x2, [FP, #-8]
//  0x41a2b8: stur w0, [x2, #0xb]
//  0x41a2bc: add x0, PP, #0xc, lsl #12
//  0x41a2c0: ldr x0, [x0, #0x2f0]
//  0x41a2c4: stur w0, [x2, #0x13]
//  0x41a2c8: add x1, PP, #0x11, lsl #12
//  0x41a2cc: ldr x1, [x1, #0xa28]
//  0x41a2d0: bl #0x3b81c4
//  0x41a2d4: mov x2, x0
//  0x41a2d8: ldur x0, [FP, #-8]
//  0x41a2dc: stur x2, [FP, #-0x20]
//  0x41a2e0: stur w0, [x2, #0x13]
//  0x41a2e4: ldur x0, [FP, #-0x30]
//  0x41a2e8: stur w0, [x2, #0xb]
//  0x41a2ec: mov x1, x2
//  0x41a2f0: bl #0x60bd34
//  0x41a2f4: bl #0x3b7d48
//  0x41a2f8: mov x3, x0
//  0x41a2fc: ldur x0, [FP, #-0x18]
//  0x41a300: stur x3, [FP, #-8]
//  0x41a304: stur w0, [x3, #0xb]
//  0x41a308: ldur x0, [FP, #-0x28]
//  0x41a30c: stur w0, [x3, #0x17]
//  0x41a310: ldur x0, [FP, #-0x20]
//  0x41a314: stur w0, [x3, #0x1b]
//  0x41a318: ldur x2, [FP, #-0x10]
//  0x41a31c: add x1, PP, #0x11, lsl #12
//  0x41a320: ldr x1, [x1, #0xa30]
//  0x41a324: bl #0x61ec54
//  0x41a328: mov x1, x0
//  0x41a32c: ldur x0, [FP, #-8]
//  0x41a330: stur w1, [x0, #0x1f]
//  0x41a334: mov SP, FP
//  0x41a338: ldp FP, LR, [SP], #0x10
//  0x41a33c: ret 
//  0x41a340: bl #0x61fa28
//  0x41a344: b #0x41a228
//
dynamic GameFruitPageState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41a20c
  // frame: FP = SP // 0x41a210
  // frame: SP = SP - 0x30 // 0x41a214
  local_m8 = x1; // 0x41a218
  BARRIER = mem(THR, 0x38); // 0x41a21c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41a340
  }
  x1 = 1; // 0x41a228
  sub_0x61e890(); // 0x41a22c
  x0 = local_m8; // 0x41a234
  x2 = x0; // 0x41a230
  local_m10 = x2; // 0x41a238
  memSet(x2, 0xf, w0); // 0x41a23c
  x1 = "virtual_party_fruitland_page_title" /* pp+0xc8f0 */; // 0x41a244
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x41a248
  getString() /* 0x3a1dcc */; // 0x41a24c
  local_m18 = x0; // 0x41a250
  SOColors_get_s_06() /* 0x3b82c4 */; // 0x41a254
  x0 = local_m8; // 0x41a25c
  x3 = x0; // 0x41a258
  local_m28 = x3; // 0x41a260
  w4 = mem(x0, 0x13); // 0x41a264
  x2 = local_m10; // 0x41a26c
  x4 = ((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x41a268
  local_m20 = x4; // 0x41a270
  x1 = mem((PP + 0x11000), 0xa20) /* Function */; // 0x41a278
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41a27c
  x1 = mem((PP + 0x11000), 0xa28) /* TypeArguments */; // 0x41a284
  local_m8 = x0; // 0x41a288
  AllocationStub_Consumer() /* 0x41a414 */; // 0x41a28c
  x0 = local_m8; // 0x41a294
  x2 = x0; // 0x41a290
  local_m30 = x2; // 0x41a298
  memSet(x2, 0x13, w0); // 0x41a29c
  x1 = mem((PP + 0x11000), 0xa28) /* TypeArguments */; // 0x41a2a4
  AllocationStub__ValueInheritedProvider() /* 0x41a408 */; // 0x41a2a8
  x0 = local_m20; // 0x41a2b0
  x2 = x0; // 0x41a2ac
  local_m8 = x2; // 0x41a2b4
  memSet(x2, 0xb, w0); // 0x41a2b8
  x0 = mem((PP + 0xc000), 0x2f0) /* Closure */; // 0x41a2c0
  memSet(x2, 0x13, w0); // 0x41a2c4
  x1 = mem((PP + 0x11000), 0xa28) /* TypeArguments */; // 0x41a2cc
  AllocationStub_ChangeNotifierProvider() /* 0x3b81c4 */; // 0x41a2d0
  x0 = local_m8; // 0x41a2d8
  x2 = x0; // 0x41a2d4
  local_m20 = x2; // 0x41a2dc
  memSet(x2, 0x13, w0); // 0x41a2e0
  x0 = local_m30; // 0x41a2e4
  memSet(x2, 0xb, w0); // 0x41a2e8
  x1 = x2; // 0x41a2ec
  int_kNull() /* 0x60bd34 */; // 0x41a2f0
  AllocationStub_SoulPageScaffold() /* 0x3b7d48 */; // 0x41a2f4
  x0 = local_m18; // 0x41a2fc
  x3 = x0; // 0x41a2f8
  local_m8 = x3; // 0x41a300
  memSet(x3, 0xb, w0); // 0x41a304
  x0 = local_m28; // 0x41a308
  memSet(x3, 0x17, w0); // 0x41a30c
  x0 = local_m20; // 0x41a310
  memSet(x3, 0x1b, w0); // 0x41a314
  x1 = mem((PP + 0x11000), 0xa30) /* Function */; // 0x41a320
  x2 = local_m10; // 0x41a318
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41a324
  x0 = local_m8; // 0x41a32c
  x1 = x0; // 0x41a328
  memSet(x0, 0x1f, w1); // 0x41a330
  SP = FP; // 0x41a334
  // frame: FP, LR, mem(SP), 0x10 // 0x41a338
  return;
}

// GameFruitPageState_anon_closure
// raw disassembly:
//  0x41a420: stp FP, LR, [SP, #-0x10]!
//  0x41a424: mov FP, SP
//  0x41a428: ldr x0, [FP, #0x10]
//  0x41a42c: ldur w1, [x0, #0x17]
//  0x41a430: add x1, x1, HEAP, lsl #32
//  0x41a434: ldr BARRIER, [THR, #0x38]
//  0x41a438: cmp SP, BARRIER
//  0x41a43c: b.ls #0x41a464
//  0x41a440: ldur w0, [x1, #0xf]
//  0x41a444: add x0, x0, HEAP, lsl #32
//  0x41a448: ldur w1, [x0, #0x13]
//  0x41a44c: add x1, x1, HEAP, lsl #32
//  0x41a450: bl #0x41a46c
//  0x41a454: mov x0, NULL
//  0x41a458: mov SP, FP
//  0x41a45c: ldp FP, LR, [SP], #0x10
//  0x41a460: ret 
//  0x41a464: bl #0x61fa28
//  0x41a468: b #0x41a440
//
dynamic GameFruitPageState_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41a420
  BARRIER = mem(THR, 0x38); // 0x41a434
  // frame: FP = SP // 0x41a424
  w1 = mem((local_10), 0x17); // 0x41a42c
  x0 = local_10; // 0x41a428
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41a430
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41a464
  }
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13); // 0x41a448
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x41a444
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x41a44c
  GameFruitNotifier_release() /* 0x41a46c */; // 0x41a450
  SP = FP; // 0x41a458
  x0 = NULL; // 0x41a454
  // frame: FP, LR, mem(SP), 0x10 // 0x41a45c
  return;
}

// GameFruitPageState_anon_closure_2
// raw disassembly:
//  0x41a55c: stp FP, LR, [SP, #-0x10]!
//  0x41a560: mov FP, SP
//  0x41a564: sub SP, SP, #0x88
//  0x41a568: ldr x0, [FP, #0x28]
//  0x41a56c: ldur w1, [x0, #0x17]
//  0x41a570: add x1, x1, HEAP, lsl #32
//  0x41a574: stur x1, [FP, #-8]
//  0x41a578: ldr BARRIER, [THR, #0x38]
//  0x41a57c: cmp SP, BARRIER
//  0x41a580: b.ls #0x41b050
//  0x41a584: bl #0x2b8e80
//  0x41a588: stur x0, [FP, #-0x10]
//  0x41a58c: stur xzr, [x0, #7]
//  0x41a590: ldr d0, [PP, #0xb90]
//  0x41a594: stur d0, [x0, #0xf]
//  0x41a598: add x17, PP, #0x11, lsl #12
//  0x41a59c: ldr d1, [x17, #0xa38]
//  0x41a5a0: stur d1, [x0, #0x17]
//  0x41a5a4: stur d0, [x0, #0x1f]
//  0x41a5a8: add x1, PP, #0xe, lsl #12
//  0x41a5ac: ldr x1, [x1, #0xed0]
//  0x41a5b0: bl #0x3b5478
//  0x41a5b4: mov x1, x0
//  0x41a5b8: add x0, PP, #0x11, lsl #12
//  0x41a5bc: ldr x0, [x0, #0xa40]
//  0x41a5c0: stur x1, [FP, #-0x18]
//  0x41a5c4: stur w0, [x1, #0xb]
//  0x41a5c8: bl #0x3b546c
//  0x41a5cc: mov x1, x0
//  0x41a5d0: ldur x0, [FP, #-0x18]
//  0x41a5d4: stur x1, [FP, #-0x20]
//  0x41a5d8: stur w0, [x1, #7]
//  0x41a5dc: add x0, PP, #0xf, lsl #12
//  0x41a5e0: ldr x0, [x0, #0x1e0]
//  0x41a5e4: stur w0, [x1, #0x13]
//  0x41a5e8: add x2, PP, #0xe, lsl #12
//  0x41a5ec: ldr x2, [x2, #0xaa0]
//  0x41a5f0: stur w2, [x1, #0x17]
//  0x41a5f4: add x3, PP, #0xe, lsl #12
//  0x41a5f8: ldr x3, [x3, #0xee8]
//  0x41a5fc: stur w3, [x1, #0x1f]
//  0x41a600: add x4, NULL, #0x30
//  0x41a604: stur w4, [x1, #0x23]
//  0x41a608: fmov d0, #1.00000000
//  0x41a60c: stur d0, [x1, #0x27]
//  0x41a610: stur d0, [x1, #0x2f]
//  0x41a614: add x5, PP, #0xe, lsl #12
//  0x41a618: ldr x5, [x5, #0xef0]
//  0x41a61c: stur w5, [x1, #0x37]
//  0x41a620: stur w4, [x1, #0x3b]
//  0x41a624: stur w4, [x1, #0x3f]
//  0x41a628: bl #0x391dd8
//  0x41a62c: mov x2, x0
//  0x41a630: ldur x0, [FP, #-0x20]
//  0x41a634: stur x2, [FP, #-0x18]
//  0x41a638: stur w0, [x2, #0xb]
//  0x41a63c: add x0, PP, #0xe, lsl #12
//  0x41a640: ldr x0, [x0, #0xb78]
//  0x41a644: stur w0, [x2, #0x23]
//  0x41a648: ldur x3, [FP, #-8]
//  0x41a64c: ldur w1, [x3, #0xf]
//  0x41a650: add x1, x1, HEAP, lsl #32
//  0x41a654: bl #0x41b4c8
//  0x41a658: mov x2, x0
//  0x41a65c: ldur x0, [FP, #-8]
//  0x41a660: stur x2, [FP, #-0x20]
//  0x41a664: ldur w1, [x0, #0xf]
//  0x41a668: add x1, x1, HEAP, lsl #32
//  0x41a66c: ldur w3, [x1, #0x13]
//  0x41a670: add x3, x3, HEAP, lsl #32
//  0x41a674: mov x1, x3
//  0x41a678: bl #0x41b40c
//  0x41a67c: stur x0, [FP, #-0x28]
//  0x41a680: bl #0x41b3c8
//  0x41a684: stur x0, [FP, #-0x30]
//  0x41a688: bl #0x31abec
//  0x41a68c: mov x1, x0
//  0x41a690: add x0, NULL, #0x20
//  0x41a694: stur x1, [FP, #-0x38]
//  0x41a698: stur w0, [x1, #7]
//  0x41a69c: ldur x2, [FP, #-0x30]
//  0x41a6a0: stur w2, [x1, #0xb]
//  0x41a6a4: add x2, PP, #0xf, lsl #12
//  0x41a6a8: ldr x2, [x2, #0x208]
//  0x41a6ac: stur w2, [x1, #0x1f]
//  0x41a6b0: add x2, PP, #0x11, lsl #12
//  0x41a6b4: ldr x2, [x2, #0xa48]
//  0x41a6b8: stur w2, [x1, #0x23]
//  0x41a6bc: bl #0x393bf8
//  0x41a6c0: mov x1, x0
//  0x41a6c4: ldur x0, [FP, #-0x28]
//  0x41a6c8: stur x1, [FP, #-0x30]
//  0x41a6cc: stur w0, [x1, #0xb]
//  0x41a6d0: ldur x0, [FP, #-0x38]
//  0x41a6d4: stur w0, [x1, #0x13]
//  0x41a6d8: add x0, PP, #0xf, lsl #12
//  0x41a6dc: ldr x0, [x0, #0x230]
//  0x41a6e0: stur w0, [x1, #0x2b]
//  0x41a6e4: mov x0, #2
//  0x41a6e8: stur w0, [x1, #0x37]
//  0x41a6ec: bl #0x391c0c
//  0x41a6f0: mov x1, x0
//  0x41a6f4: add x0, PP, #0x11, lsl #12
//  0x41a6f8: ldr x0, [x0, #0xa50]
//  0x41a6fc: stur x1, [FP, #-0x38]
//  0x41a700: stur w0, [x1, #0xf]
//  0x41a704: ldur x0, [FP, #-0x30]
//  0x41a708: stur w0, [x1, #0xb]
//  0x41a70c: ldur x0, [FP, #-8]
//  0x41a710: ldur w2, [x0, #0xf]
//  0x41a714: add x2, x2, HEAP, lsl #32
//  0x41a718: ldur w3, [x2, #0x13]
//  0x41a71c: add x3, x3, HEAP, lsl #32
//  0x41a720: stur x3, [FP, #-0x28]
//  0x41a724: bl #0x41b3bc
//  0x41a728: mov x2, x0
//  0x41a72c: ldur x0, [FP, #-0x28]
//  0x41a730: stur x2, [FP, #-0x30]
//  0x41a734: stur w0, [x2, #0xb]
//  0x41a738: add x1, PP, #0xe, lsl #12
//  0x41a73c: ldr x1, [x1, #0xed0]
//  0x41a740: bl #0x3b5478
//  0x41a744: mov x1, x0
//  0x41a748: add x0, PP, #0x11, lsl #12
//  0x41a74c: ldr x0, [x0, #0xa58]
//  0x41a750: stur x1, [FP, #-0x40]
//  0x41a754: stur w0, [x1, #0xb]
//  0x41a758: bl #0x3b546c
//  0x41a75c: mov x1, x0
//  0x41a760: ldur x0, [FP, #-0x40]
//  0x41a764: stur x1, [FP, #-0x48]
//  0x41a768: stur w0, [x1, #7]
//  0x41a76c: add x0, PP, #0xf, lsl #12
//  0x41a770: ldr x0, [x0, #0x1e0]
//  0x41a774: stur w0, [x1, #0x13]
//  0x41a778: add x2, PP, #0xe, lsl #12
//  0x41a77c: ldr x2, [x2, #0xaa0]
//  0x41a780: stur w2, [x1, #0x17]
//  0x41a784: add x3, PP, #0xe, lsl #12
//  0x41a788: ldr x3, [x3, #0xee8]
//  0x41a78c: stur w3, [x1, #0x1f]
//  0x41a790: add x4, NULL, #0x30
//  0x41a794: stur w4, [x1, #0x23]
//  0x41a798: fmov d0, #1.00000000
//  0x41a79c: stur d0, [x1, #0x27]
//  0x41a7a0: stur d0, [x1, #0x2f]
//  0x41a7a4: add x5, PP, #0xe, lsl #12
//  0x41a7a8: ldr x5, [x5, #0xef0]
//  0x41a7ac: stur w5, [x1, #0x37]
//  0x41a7b0: stur w4, [x1, #0x3b]
//  0x41a7b4: stur w4, [x1, #0x3f]
//  0x41a7b8: bl #0x391dd8
//  0x41a7bc: mov x1, x0
//  0x41a7c0: ldur x0, [FP, #-0x48]
//  0x41a7c4: stur x1, [FP, #-0x40]
//  0x41a7c8: stur w0, [x1, #0xb]
//  0x41a7cc: add x0, PP, #0xe, lsl #12
//  0x41a7d0: ldr x0, [x0, #0xb78]
//  0x41a7d4: stur w0, [x1, #0x23]
//  0x41a7d8: ldur x2, [FP, #-0x28]
//  0x41a7dc: ldur w3, [x2, #0x57]
//  0x41a7e0: add x3, x3, HEAP, lsl #32
//  0x41a7e4: ldur w2, [x3, #0x13]
//  0x41a7e8: add x2, x2, HEAP, lsl #32
//  0x41a7ec: ldr BARRIER, [PP, #0x40]
//  0x41a7f0: cmp w2, w16
//  0x41a7f4: b.eq #0x41b058
//  0x41a7f8: str x2, [SP]
//  0x41a7fc: bl #0x2ac0a0
//  0x41a800: stur x0, [FP, #-0x28]
//  0x41a804: bl #0x31abec
//  0x41a808: mov x1, x0
//  0x41a80c: add x0, NULL, #0x20
//  0x41a810: stur x1, [FP, #-0x48]
//  0x41a814: stur w0, [x1, #7]
//  0x41a818: ldr x2, [PP, #0x6050]
//  0x41a81c: stur w2, [x1, #0xb]
//  0x41a820: add x3, PP, #0xe, lsl #12
//  0x41a824: ldr x3, [x3, #0xb50]
//  0x41a828: stur w3, [x1, #0x1f]
//  0x41a82c: add x4, PP, #0x11, lsl #12
//  0x41a830: ldr x4, [x4, #0xa48]
//  0x41a834: stur w4, [x1, #0x23]
//  0x41a838: bl #0x393bf8
//  0x41a83c: mov x2, x0
//  0x41a840: ldur x0, [FP, #-0x28]
//  0x41a844: stur x2, [FP, #-0x50]
//  0x41a848: stur w0, [x2, #0xb]
//  0x41a84c: ldur x0, [FP, #-0x48]
//  0x41a850: stur w0, [x2, #0x13]
//  0x41a854: add x1, PP, #0xc, lsl #12
//  0x41a858: ldr x1, [x1, #0x8c8]
//  0x41a85c: ldr x4, [PP, #0x4c0]
//  0x41a860: bl #0x3a1dcc
//  0x41a864: stur x0, [FP, #-0x28]
//  0x41a868: bl #0x31abec
//  0x41a86c: mov x1, x0
//  0x41a870: add x0, NULL, #0x20
//  0x41a874: stur x1, [FP, #-0x48]
//  0x41a878: stur w0, [x1, #7]
//  0x41a87c: ldr x2, [PP, #0x6050]
//  0x41a880: stur w2, [x1, #0xb]
//  0x41a884: ldr x3, [PP, #0x7598]
//  0x41a888: stur w3, [x1, #0x1f]
//  0x41a88c: bl #0x393bf8
//  0x41a890: mov x3, x0
//  0x41a894: ldur x0, [FP, #-0x28]
//  0x41a898: stur x3, [FP, #-0x58]
//  0x41a89c: stur w0, [x3, #0xb]
//  0x41a8a0: ldur x0, [FP, #-0x48]
//  0x41a8a4: stur w0, [x3, #0x13]
//  0x41a8a8: mov x1, NULL
//  0x41a8ac: mov x2, #4
//  0x41a8b0: bl #0x61f920
//  0x41a8b4: mov x2, x0
//  0x41a8b8: ldur x0, [FP, #-0x50]
//  0x41a8bc: stur x2, [FP, #-0x28]
//  0x41a8c0: stur w0, [x2, #0xf]
//  0x41a8c4: ldur x0, [FP, #-0x58]
//  0x41a8c8: stur w0, [x2, #0x13]
//  0x41a8cc: ldr x1, [PP, #0x5c58]
//  0x41a8d0: bl #0x61e854
//  0x41a8d4: mov x1, x0
//  0x41a8d8: ldur x0, [FP, #-0x28]
//  0x41a8dc: stur x1, [FP, #-0x48]
//  0x41a8e0: stur w0, [x1, #0xf]
//  0x41a8e4: mov x2, #4
//  0x41a8e8: stur w2, [x1, #0xb]
//  0x41a8ec: bl #0x39310c
//  0x41a8f0: mov x1, x0
//  0x41a8f4: add x0, PP, #0xa, lsl #12
//  0x41a8f8: ldr x0, [x0, #0x858]
//  0x41a8fc: stur x1, [FP, #-0x28]
//  0x41a900: stur w0, [x1, #0xf]
//  0x41a904: add x2, PP, #0xe, lsl #12
//  0x41a908: ldr x2, [x2, #0xae0]
//  0x41a90c: stur w2, [x1, #0x13]
//  0x41a910: add x3, PP, #0xe, lsl #12
//  0x41a914: ldr x3, [x3, #0xb08]
//  0x41a918: stur w3, [x1, #0x17]
//  0x41a91c: add x4, PP, #0xe, lsl #12
//  0x41a920: ldr x4, [x4, #0xb60]
//  0x41a924: stur w4, [x1, #0x1b]
//  0x41a928: add x5, PP, #0xe, lsl #12
//  0x41a92c: ldr x5, [x5, #0xaf8]
//  0x41a930: stur w5, [x1, #0x23]
//  0x41a934: add x6, PP, #0xa, lsl #12
//  0x41a938: ldr x6, [x6, #0xa8]
//  0x41a93c: stur w6, [x1, #0x2b]
//  0x41a940: stur xzr, [x1, #0x2f]
//  0x41a944: ldur x7, [FP, #-0x48]
//  0x41a948: stur w7, [x1, #0xb]
//  0x41a94c: bl #0x391a04
//  0x41a950: stur x0, [FP, #-0x48]
//  0x41a954: add BARRIER, PP, #0x11, lsl #12
//  0x41a958: ldr BARRIER, [BARRIER, #0xa60]
//  0x41a95c: add LR, PP, #0x11, lsl #12
//  0x41a960: ldr LR, [LR, #0xa68]
//  0x41a964: stp LR, BARRIER, [SP, #0x18]
//  0x41a968: add BARRIER, PP, #0x11, lsl #12
//  0x41a96c: ldr BARRIER, [BARRIER, #0xa70]
//  0x41a970: ldur LR, [FP, #-0x40]
//  0x41a974: stp LR, BARRIER, [SP, #8]
//  0x41a978: ldur BARRIER, [FP, #-0x28]
//  0x41a97c: str BARRIER, [SP]
//  0x41a980: mov x1, x0
//  0x41a984: add x4, PP, #0x11, lsl #12
//  0x41a988: ldr x4, [x4, #0xa78]
//  0x41a98c: bl #0x391490
//  0x41a990: add x1, PP, #0xe, lsl #12
//  0x41a994: ldr x1, [x1, #0xad0]
//  0x41a998: bl #0x39fb14
//  0x41a99c: mov x2, x0
//  0x41a9a0: mov x0, #1
//  0x41a9a4: stur x2, [FP, #-0x28]
//  0x41a9a8: stur x0, [x2, #0x13]
//  0x41a9ac: add x3, PP, #0xe, lsl #12
//  0x41a9b0: ldr x3, [x3, #0xad8]
//  0x41a9b4: stur w3, [x2, #0x1b]
//  0x41a9b8: ldur x1, [FP, #-0x48]
//  0x41a9bc: stur w1, [x2, #0xb]
//  0x41a9c0: add x1, PP, #0xe, lsl #12
//  0x41a9c4: ldr x1, [x1, #0xed0]
//  0x41a9c8: bl #0x3b5478
//  0x41a9cc: mov x1, x0
//  0x41a9d0: add x0, PP, #0x11, lsl #12
//  0x41a9d4: ldr x0, [x0, #0xa58]
//  0x41a9d8: stur x1, [FP, #-0x40]
//  0x41a9dc: stur w0, [x1, #0xb]
//  0x41a9e0: bl #0x3b546c
//  0x41a9e4: mov x1, x0
//  0x41a9e8: ldur x0, [FP, #-0x40]
//  0x41a9ec: stur x1, [FP, #-0x48]
//  0x41a9f0: stur w0, [x1, #7]
//  0x41a9f4: add x0, PP, #0xf, lsl #12
//  0x41a9f8: ldr x0, [x0, #0x1e0]
//  0x41a9fc: stur w0, [x1, #0x13]
//  0x41aa00: add x0, PP, #0xe, lsl #12
//  0x41aa04: ldr x0, [x0, #0xaa0]
//  0x41aa08: stur w0, [x1, #0x17]
//  0x41aa0c: add x0, PP, #0xe, lsl #12
//  0x41aa10: ldr x0, [x0, #0xee8]
//  0x41aa14: stur w0, [x1, #0x1f]
//  0x41aa18: add x0, NULL, #0x30
//  0x41aa1c: stur w0, [x1, #0x23]
//  0x41aa20: fmov d0, #1.00000000
//  0x41aa24: stur d0, [x1, #0x27]
//  0x41aa28: stur d0, [x1, #0x2f]
//  0x41aa2c: add x2, PP, #0xe, lsl #12
//  0x41aa30: ldr x2, [x2, #0xef0]
//  0x41aa34: stur w2, [x1, #0x37]
//  0x41aa38: stur w0, [x1, #0x3b]
//  0x41aa3c: stur w0, [x1, #0x3f]
//  0x41aa40: bl #0x391dd8
//  0x41aa44: mov x2, x0
//  0x41aa48: ldur x0, [FP, #-0x48]
//  0x41aa4c: stur x2, [FP, #-0x40]
//  0x41aa50: stur w0, [x2, #0xb]
//  0x41aa54: add x0, PP, #0xe, lsl #12
//  0x41aa58: ldr x0, [x0, #0xb78]
//  0x41aa5c: stur w0, [x2, #0x23]
//  0x41aa60: ldur x3, [FP, #-8]
//  0x41aa64: ldur w0, [x3, #0xf]
//  0x41aa68: add x0, x0, HEAP, lsl #32
//  0x41aa6c: ldur w1, [x0, #0x13]
//  0x41aa70: add x1, x1, HEAP, lsl #32
//  0x41aa74: ldur x4, [x1, #0x23]
//  0x41aa78: tbnz x4, #0x3f, #0x41aaa0
//  0x41aa7c: sbfiz x0, x4, #1, #0x1f
//  0x41aa80: cmp x4, x0, asr #1
//  0x41aa84: b.eq #0x41aa90
//  0x41aa88: bl #0x61fba8
//  0x41aa8c: stur x4, [x0, #7]
//  0x41aa90: str x0, [SP]
//  0x41aa94: bl #0x2ac0a0
//  0x41aa98: mov x5, x0
//  0x41aa9c: b #0x41aaa4
//  0x41aaa0: ldr x5, [PP, #0x148]
//  0x41aaa4: ldur x0, [FP, #-8]
//  0x41aaa8: ldur x4, [FP, #-0x20]
//  0x41aaac: ldur x3, [FP, #-0x38]
//  0x41aab0: ldur x2, [FP, #-0x30]
//  0x41aab4: ldur x1, [FP, #-0x28]
//  0x41aab8: stur x5, [FP, #-0x48]
//  0x41aabc: bl #0x31abec
//  0x41aac0: mov x1, x0
//  0x41aac4: add x0, NULL, #0x20
//  0x41aac8: stur x1, [FP, #-0x50]
//  0x41aacc: stur w0, [x1, #7]
//  0x41aad0: ldr x2, [PP, #0x6050]
//  0x41aad4: stur w2, [x1, #0xb]
//  0x41aad8: add x3, PP, #0xe, lsl #12
//  0x41aadc: ldr x3, [x3, #0xb50]
//  0x41aae0: stur w3, [x1, #0x1f]
//  0x41aae4: add x3, PP, #0x11, lsl #12
//  0x41aae8: ldr x3, [x3, #0xa48]
//  0x41aaec: stur w3, [x1, #0x23]
//  0x41aaf0: bl #0x393bf8
//  0x41aaf4: mov x2, x0
//  0x41aaf8: ldur x0, [FP, #-0x48]
//  0x41aafc: stur x2, [FP, #-0x58]
//  0x41ab00: stur w0, [x2, #0xb]
//  0x41ab04: ldur x0, [FP, #-0x50]
//  0x41ab08: stur w0, [x2, #0x13]
//  0x41ab0c: add x1, PP, #0xc, lsl #12
//  0x41ab10: ldr x1, [x1, #0x8b8]
//  0x41ab14: ldr x4, [PP, #0x4c0]
//  0x41ab18: bl #0x3a1dcc
//  0x41ab1c: stur x0, [FP, #-0x48]
//  0x41ab20: bl #0x31abec
//  0x41ab24: mov x1, x0
//  0x41ab28: add x0, NULL, #0x20
//  0x41ab2c: stur x1, [FP, #-0x50]
//  0x41ab30: stur w0, [x1, #7]
//  0x41ab34: ldr x2, [PP, #0x6050]
//  0x41ab38: stur w2, [x1, #0xb]
//  0x41ab3c: ldr x2, [PP, #0x7598]
//  0x41ab40: stur w2, [x1, #0x1f]
//  0x41ab44: bl #0x393bf8
//  0x41ab48: mov x3, x0
//  0x41ab4c: ldur x0, [FP, #-0x48]
//  0x41ab50: stur x3, [FP, #-0x60]
//  0x41ab54: stur w0, [x3, #0xb]
//  0x41ab58: ldur x0, [FP, #-0x50]
//  0x41ab5c: stur w0, [x3, #0x13]
//  0x41ab60: mov x1, NULL
//  0x41ab64: mov x2, #4
//  0x41ab68: bl #0x61f920
//  0x41ab6c: mov x2, x0
//  0x41ab70: ldur x0, [FP, #-0x58]
//  0x41ab74: stur x2, [FP, #-0x48]
//  0x41ab78: stur w0, [x2, #0xf]
//  0x41ab7c: ldur x0, [FP, #-0x60]
//  0x41ab80: stur w0, [x2, #0x13]
//  0x41ab84: ldr x1, [PP, #0x5c58]
//  0x41ab88: bl #0x61e854
//  0x41ab8c: mov x1, x0
//  0x41ab90: ldur x0, [FP, #-0x48]
//  0x41ab94: stur x1, [FP, #-0x50]
//  0x41ab98: stur w0, [x1, #0xf]
//  0x41ab9c: mov x2, #4
//  0x41aba0: stur w2, [x1, #0xb]
//  0x41aba4: bl #0x39310c
//  0x41aba8: mov x1, x0
//  0x41abac: add x0, PP, #0xa, lsl #12
//  0x41abb0: ldr x0, [x0, #0x858]
//  0x41abb4: stur x1, [FP, #-0x48]
//  0x41abb8: stur w0, [x1, #0xf]
//  0x41abbc: add x2, PP, #0xe, lsl #12
//  0x41abc0: ldr x2, [x2, #0xae0]
//  0x41abc4: stur w2, [x1, #0x13]
//  0x41abc8: add x3, PP, #0xe, lsl #12
//  0x41abcc: ldr x3, [x3, #0xb08]
//  0x41abd0: stur w3, [x1, #0x17]
//  0x41abd4: add x3, PP, #0xe, lsl #12
//  0x41abd8: ldr x3, [x3, #0xb60]
//  0x41abdc: stur w3, [x1, #0x1b]
//  0x41abe0: add x4, PP, #0xe, lsl #12
//  0x41abe4: ldr x4, [x4, #0xaf8]
//  0x41abe8: stur w4, [x1, #0x23]
//  0x41abec: add x5, PP, #0xa, lsl #12
//  0x41abf0: ldr x5, [x5, #0xa8]
//  0x41abf4: stur w5, [x1, #0x2b]
//  0x41abf8: stur xzr, [x1, #0x2f]
//  0x41abfc: ldur x6, [FP, #-0x50]
//  0x41ac00: stur w6, [x1, #0xb]
//  0x41ac04: bl #0x391a04
//  0x41ac08: stur x0, [FP, #-0x50]
//  0x41ac0c: add BARRIER, PP, #0x11, lsl #12
//  0x41ac10: ldr BARRIER, [BARRIER, #0xa60]
//  0x41ac14: add LR, PP, #0x11, lsl #12
//  0x41ac18: ldr LR, [LR, #0xa80]
//  0x41ac1c: stp LR, BARRIER, [SP, #0x18]
//  0x41ac20: add BARRIER, PP, #0x11, lsl #12
//  0x41ac24: ldr BARRIER, [BARRIER, #0xa70]
//  0x41ac28: ldur LR, [FP, #-0x40]
//  0x41ac2c: stp LR, BARRIER, [SP, #8]
//  0x41ac30: ldur BARRIER, [FP, #-0x48]
//  0x41ac34: str BARRIER, [SP]
//  0x41ac38: mov x1, x0
//  0x41ac3c: add x4, PP, #0x11, lsl #12
//  0x41ac40: ldr x4, [x4, #0xa78]
//  0x41ac44: bl #0x391490
//  0x41ac48: bl #0x3a1d94
//  0x41ac4c: add x1, PP, #0x11, lsl #12
//  0x41ac50: ldr x1, [x1, #0xa88]
//  0x41ac54: mov x2, NULL
//  0x41ac58: stur x0, [FP, #-0x40]
//  0x41ac5c: bl #0x61ec54
//  0x41ac60: ldur BARRIER, [FP, #-0x50]
//  0x41ac64: stp BARRIER, x0, [SP]
//  0x41ac68: ldur x1, [FP, #-0x40]
//  0x41ac6c: add x4, PP, #0xc, lsl #12
//  0x41ac70: ldr x4, [x4, #0x208]
//  0x41ac74: bl #0x3a18c4
//  0x41ac78: add x1, PP, #0xe, lsl #12
//  0x41ac7c: ldr x1, [x1, #0xad0]
//  0x41ac80: bl #0x39fb14
//  0x41ac84: mov x3, x0
//  0x41ac88: mov x0, #1
//  0x41ac8c: stur x3, [FP, #-0x48]
//  0x41ac90: stur x0, [x3, #0x13]
//  0x41ac94: add x0, PP, #0xe, lsl #12
//  0x41ac98: ldr x0, [x0, #0xad8]
//  0x41ac9c: stur w0, [x3, #0x1b]
//  0x41aca0: ldur x0, [FP, #-0x40]
//  0x41aca4: stur w0, [x3, #0xb]
//  0x41aca8: mov x1, NULL
//  0x41acac: mov x2, #4
//  0x41acb0: bl #0x61f920
//  0x41acb4: mov x2, x0
//  0x41acb8: ldur x0, [FP, #-0x28]
//  0x41acbc: stur x2, [FP, #-0x40]
//  0x41acc0: stur w0, [x2, #0xf]
//  0x41acc4: ldur x0, [FP, #-0x48]
//  0x41acc8: stur w0, [x2, #0x13]
//  0x41accc: ldr x1, [PP, #0x5c58]
//  0x41acd0: bl #0x61e854
//  0x41acd4: mov x1, x0
//  0x41acd8: ldur x0, [FP, #-0x40]
//  0x41acdc: stur x1, [FP, #-0x28]
//  0x41ace0: stur w0, [x1, #0xf]
//  0x41ace4: mov x2, #4
//  0x41ace8: stur w2, [x1, #0xb]
//  0x41acec: bl #0x3a1414
//  0x41acf0: mov x1, x0
//  0x41acf4: ldr x0, [PP, #0x5140]
//  0x41acf8: stur x1, [FP, #-0x40]
//  0x41acfc: stur w0, [x1, #0xf]
//  0x41ad00: add x2, PP, #0x11, lsl #12
//  0x41ad04: ldr x2, [x2, #0xa90]
//  0x41ad08: stur w2, [x1, #0x13]
//  0x41ad0c: add x2, PP, #0xe, lsl #12
//  0x41ad10: ldr x2, [x2, #0xae8]
//  0x41ad14: stur w2, [x1, #0x17]
//  0x41ad18: add x3, PP, #0xe, lsl #12
//  0x41ad1c: ldr x3, [x3, #0xb60]
//  0x41ad20: stur w3, [x1, #0x1b]
//  0x41ad24: add x4, PP, #0xe, lsl #12
//  0x41ad28: ldr x4, [x4, #0xaf8]
//  0x41ad2c: stur w4, [x1, #0x23]
//  0x41ad30: add x5, PP, #0xa, lsl #12
//  0x41ad34: ldr x5, [x5, #0xa8]
//  0x41ad38: stur w5, [x1, #0x2b]
//  0x41ad3c: stur xzr, [x1, #0x2f]
//  0x41ad40: ldur x6, [FP, #-0x28]
//  0x41ad44: stur w6, [x1, #0xb]
//  0x41ad48: bl #0x391a04
//  0x41ad4c: stur x0, [FP, #-0x28]
//  0x41ad50: add BARRIER, PP, #0x11, lsl #12
//  0x41ad54: ldr BARRIER, [BARRIER, #0xa98]
//  0x41ad58: add LR, PP, #0x10, lsl #12
//  0x41ad5c: ldr LR, [LR, #0xc70]
//  0x41ad60: stp LR, BARRIER, [SP, #8]
//  0x41ad64: ldur BARRIER, [FP, #-0x40]
//  0x41ad68: str BARRIER, [SP]
//  0x41ad6c: mov x1, x0
//  0x41ad70: add x4, PP, #0x11, lsl #12
//  0x41ad74: ldr x4, [x4, #0x400]
//  0x41ad78: bl #0x391490
//  0x41ad7c: add x1, PP, #0xc, lsl #12
//  0x41ad80: ldr x1, [x1, #0x8a8]
//  0x41ad84: ldr x4, [PP, #0x4c0]
//  0x41ad88: bl #0x3a1dcc
//  0x41ad8c: stur x0, [FP, #-0x40]
//  0x41ad90: bl #0x41b378
//  0x41ad94: stur x0, [FP, #-0x48]
//  0x41ad98: bl #0x31abec
//  0x41ad9c: mov x1, x0
//  0x41ada0: add x0, NULL, #0x20
//  0x41ada4: stur x1, [FP, #-0x50]
//  0x41ada8: stur w0, [x1, #7]
//  0x41adac: ldur x0, [FP, #-0x48]
//  0x41adb0: stur w0, [x1, #0xb]
//  0x41adb4: add x0, PP, #0xf, lsl #12
//  0x41adb8: ldr x0, [x0, #0xb90]
//  0x41adbc: stur w0, [x1, #0x1f]
//  0x41adc0: add x0, PP, #0x11, lsl #12
//  0x41adc4: ldr x0, [x0, #0xa48]
//  0x41adc8: stur w0, [x1, #0x23]
//  0x41adcc: bl #0x393bf8
//  0x41add0: mov x1, x0
//  0x41add4: ldur x0, [FP, #-0x40]
//  0x41add8: stur x1, [FP, #-0x48]
//  0x41addc: stur w0, [x1, #0xb]
//  0x41ade0: ldur x0, [FP, #-0x50]
//  0x41ade4: stur w0, [x1, #0x13]
//  0x41ade8: mov x0, #2
//  0x41adec: stur w0, [x1, #0x37]
//  0x41adf0: bl #0x391c0c
//  0x41adf4: mov x2, x0
//  0x41adf8: add x0, PP, #0x11, lsl #12
//  0x41adfc: ldr x0, [x0, #0xaa0]
//  0x41ae00: stur x2, [FP, #-0x40]
//  0x41ae04: stur w0, [x2, #0xf]
//  0x41ae08: ldur x0, [FP, #-0x48]
//  0x41ae0c: stur w0, [x2, #0xb]
//  0x41ae10: ldur x0, [FP, #-8]
//  0x41ae14: ldur w1, [x0, #0xf]
//  0x41ae18: add x1, x1, HEAP, lsl #32
//  0x41ae1c: bl #0x41b0c8
//  0x41ae20: mov x1, NULL
//  0x41ae24: mov x2, #4
//  0x41ae28: stur x0, [FP, #-8]
//  0x41ae2c: bl #0x61f920
//  0x41ae30: mov x2, x0
//  0x41ae34: ldur x0, [FP, #-0x40]
//  0x41ae38: stur x2, [FP, #-0x48]
//  0x41ae3c: stur w0, [x2, #0xf]
//  0x41ae40: ldur x0, [FP, #-8]
//  0x41ae44: stur w0, [x2, #0x13]
//  0x41ae48: ldr x1, [PP, #0x5c58]
//  0x41ae4c: bl #0x61e854
//  0x41ae50: mov x1, x0
//  0x41ae54: ldur x0, [FP, #-0x48]
//  0x41ae58: stur x1, [FP, #-8]
//  0x41ae5c: stur w0, [x1, #0xf]
//  0x41ae60: mov x0, #4
//  0x41ae64: stur w0, [x1, #0xb]
//  0x41ae68: bl #0x3a1414
//  0x41ae6c: mov x1, x0
//  0x41ae70: ldr x0, [PP, #0x5140]
//  0x41ae74: stur x1, [FP, #-0x40]
//  0x41ae78: stur w0, [x1, #0xf]
//  0x41ae7c: add x0, PP, #0xe, lsl #12
//  0x41ae80: ldr x0, [x0, #0xae0]
//  0x41ae84: stur w0, [x1, #0x13]
//  0x41ae88: add x2, PP, #0xe, lsl #12
//  0x41ae8c: ldr x2, [x2, #0xae8]
//  0x41ae90: stur w2, [x1, #0x17]
//  0x41ae94: add x3, PP, #0xe, lsl #12
//  0x41ae98: ldr x3, [x3, #0xb60]
//  0x41ae9c: stur w3, [x1, #0x1b]
//  0x41aea0: add x4, PP, #0xe, lsl #12
//  0x41aea4: ldr x4, [x4, #0xaf8]
//  0x41aea8: stur w4, [x1, #0x23]
//  0x41aeac: add x5, PP, #0xa, lsl #12
//  0x41aeb0: ldr x5, [x5, #0xa8]
//  0x41aeb4: stur w5, [x1, #0x2b]
//  0x41aeb8: stur xzr, [x1, #0x2f]
//  0x41aebc: ldur x6, [FP, #-8]
//  0x41aec0: stur w6, [x1, #0xb]
//  0x41aec4: bl #0x391a04
//  0x41aec8: stur x0, [FP, #-8]
//  0x41aecc: add BARRIER, PP, #0x10, lsl #12
//  0x41aed0: ldr BARRIER, [BARRIER, #0x350]
//  0x41aed4: add LR, PP, #0x11, lsl #12
//  0x41aed8: ldr LR, [LR, #0xaa8]
//  0x41aedc: stp LR, BARRIER, [SP, #8]
//  0x41aee0: ldur BARRIER, [FP, #-0x40]
//  0x41aee4: str BARRIER, [SP]
//  0x41aee8: mov x1, x0
//  0x41aeec: add x4, PP, #0x11, lsl #12
//  0x41aef0: ldr x4, [x4, #0xab0]
//  0x41aef4: bl #0x391490
//  0x41aef8: mov x1, NULL
//  0x41aefc: mov x2, #0xa
//  0x41af00: bl #0x61f920
//  0x41af04: mov x2, x0
//  0x41af08: ldur x0, [FP, #-0x20]
//  0x41af0c: stur x2, [FP, #-0x40]
//  0x41af10: stur w0, [x2, #0xf]
//  0x41af14: ldur x0, [FP, #-0x38]
//  0x41af18: stur w0, [x2, #0x13]
//  0x41af1c: ldur x0, [FP, #-0x30]
//  0x41af20: stur w0, [x2, #0x17]
//  0x41af24: ldur x0, [FP, #-0x28]
//  0x41af28: stur w0, [x2, #0x1b]
//  0x41af2c: ldur x0, [FP, #-8]
//  0x41af30: stur w0, [x2, #0x1f]
//  0x41af34: ldr x1, [PP, #0x5c58]
//  0x41af38: bl #0x61e854
//  0x41af3c: mov x1, x0
//  0x41af40: ldur x0, [FP, #-0x40]
//  0x41af44: stur x1, [FP, #-8]
//  0x41af48: stur w0, [x1, #0xf]
//  0x41af4c: mov x0, #0xa
//  0x41af50: stur w0, [x1, #0xb]
//  0x41af54: bl #0x39310c
//  0x41af58: mov x1, x0
//  0x41af5c: add x0, PP, #0xa, lsl #12
//  0x41af60: ldr x0, [x0, #0x858]
//  0x41af64: stur x1, [FP, #-0x20]
//  0x41af68: stur w0, [x1, #0xf]
//  0x41af6c: add x2, PP, #0xe, lsl #12
//  0x41af70: ldr x2, [x2, #0xae0]
//  0x41af74: stur w2, [x1, #0x13]
//  0x41af78: add x2, PP, #0xe, lsl #12
//  0x41af7c: ldr x2, [x2, #0xae8]
//  0x41af80: stur w2, [x1, #0x17]
//  0x41af84: add x2, PP, #0xe, lsl #12
//  0x41af88: ldr x2, [x2, #0xb60]
//  0x41af8c: stur w2, [x1, #0x1b]
//  0x41af90: add x2, PP, #0xe, lsl #12
//  0x41af94: ldr x2, [x2, #0xaf8]
//  0x41af98: stur w2, [x1, #0x23]
//  0x41af9c: add x2, PP, #0xa, lsl #12
//  0x41afa0: ldr x2, [x2, #0xa8]
//  0x41afa4: stur w2, [x1, #0x2b]
//  0x41afa8: stur xzr, [x1, #0x2f]
//  0x41afac: ldur x2, [FP, #-8]
//  0x41afb0: stur w2, [x1, #0xb]
//  0x41afb4: bl #0x391a04
//  0x41afb8: stur x0, [FP, #-8]
//  0x41afbc: ldur BARRIER, [FP, #-0x10]
//  0x41afc0: ldur LR, [FP, #-0x18]
//  0x41afc4: stp LR, BARRIER, [SP, #8]
//  0x41afc8: ldur BARRIER, [FP, #-0x20]
//  0x41afcc: str BARRIER, [SP]
//  0x41afd0: mov x1, x0
//  0x41afd4: add x4, PP, #0x10, lsl #12
//  0x41afd8: ldr x4, [x4, #0xcb0]
//  0x41afdc: bl #0x391490
//  0x41afe0: bl #0x3a1db4
//  0x41afe4: mov x1, x0
//  0x41afe8: add x0, PP, #0xa, lsl #12
//  0x41afec: ldr x0, [x0, #0x858]
//  0x41aff0: stur x1, [FP, #-0x10]
//  0x41aff4: stur w0, [x1, #0xb]
//  0x41aff8: add x0, NULL, #0x30
//  0x41affc: stur w0, [x1, #0xf]
//  0x41b000: bl #0x41b0bc
//  0x41b004: mov x1, x0
//  0x41b008: ldur x0, [FP, #-0x10]
//  0x41b00c: stur w1, [x0, #0x1f]
//  0x41b010: ldur x1, [FP, #-8]
//  0x41b014: stur w1, [x0, #0x23]
//  0x41b018: ldr x1, [PP, #0x77d8]
//  0x41b01c: stur w1, [x0, #0x27]
//  0x41b020: add x1, PP, #0xe, lsl #12
//  0x41b024: ldr x1, [x1, #0xf10]
//  0x41b028: stur w1, [x0, #0x2b]
//  0x41b02c: add x1, PP, #0xf, lsl #12
//  0x41b030: ldr x1, [x1, #0x140]
//  0x41b034: stur w1, [x0, #0x2f]
//  0x41b038: add x1, PP, #0xf, lsl #12
//  0x41b03c: ldr x1, [x1, #0x2f8]
//  0x41b040: stur w1, [x0, #0x37]
//  0x41b044: mov SP, FP
//  0x41b048: ldp FP, LR, [SP], #0x10
//  0x41b04c: ret 
//  0x41b050: bl #0x61fa28
//  0x41b054: b #0x41a584
//  0x41b058: add x9, PP, #0x11, lsl #12
//  0x41b05c: ldr x9, [x9, #0xab8]
//  0x41b060: bl #0x620258
//
dynamic GameFruitPageState_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
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
  dynamic x7;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41a55c
  // frame: FP = SP // 0x41a560
  // frame: SP = SP - 0x88 // 0x41a564
  w1 = mem((local_28), 0x17); // 0x41a56c
  x0 = local_28; // 0x41a568
  x1 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41a570
  local_m8 = x1; // 0x41a574
  BARRIER = mem(THR, 0x38); // 0x41a578
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41b050
  }
  AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x41a584
  local_m10 = x0; // 0x41a588
  memSet(x0, 7, xzr); // 0x41a58c
  d0 = 9218868437227405312; // 0x41a590
  memSet(x0, 0xf, d0); // 0x41a594
  d1 = 4650687894887858176; // 0x41a59c
  x17 = PP + 0x11000; // 0x41a598
  memSet(x0, 0x17, d1); // 0x41a5a0
  memSet(x0, 0x1f, d0); // 0x41a5a4
  x1 = mem((PP + 0xe000), 0xed0) /* TypeArguments */; // 0x41a5ac
  AllocationStub_AssetImage() /* 0x3b5478 */; // 0x41a5b0
  x0 = "assets/images/3.0x/game_fruit_img_bg.webp" /* pp+0x11a40 */; // 0x41a5bc
  x1 = x0; // 0x41a5b4
  local_m18 = x1; // 0x41a5c0
  memSet(x1, 0xb, w0); // 0x41a5c4
  AllocationStub_DecorationImage() /* 0x3b546c */; // 0x41a5c8
  x0 = local_m18; // 0x41a5d0
  x1 = x0; // 0x41a5cc
  local_m20 = x1; // 0x41a5d4
  memSet(x1, 7, w0); // 0x41a5d8
  x0 = mem((PP + 0xf000), 0x1e0) /* Obj!BoxFit@12286  */; // 0x41a5e0
  memSet(x1, 0x13, w0); // 0x41a5e4
  x2 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x41a5ec
  memSet(x1, 0x17, w2); // 0x41a5f0
  x3 = mem((PP + 0xe000), 0xee8) /* Obj!ImageRepeat@12281  */; // 0x41a5f8
  memSet(x1, 0x1f, w3); // 0x41a5fc
  x4 = NULL + 0x30; // 0x41a600
  memSet(x1, 0x23, w4); // 0x41a604
  d0 = 1.00000000 /* bits */; // 0x41a608
  memSet(x1, 0x27, d0); // 0x41a60c
  memSet(x1, 0x2f, d0); // 0x41a610
  x5 = mem((PP + 0xe000), 0xef0) /* Obj!FilterQuality@12349  */; // 0x41a618
  memSet(x1, 0x37, w5); // 0x41a61c
  memSet(x1, 0x3b, w4); // 0x41a620
  memSet(x1, 0x3f, w4); // 0x41a624
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x41a628
  x0 = local_m20; // 0x41a630
  x2 = x0; // 0x41a62c
  local_m18 = x2; // 0x41a634
  memSet(x2, 0xb, w0); // 0x41a638
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x41a640
  memSet(x2, 0x23, w0); // 0x41a644
  w1 = mem((local_m8), 0xf); // 0x41a64c
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41a650
  x3 = local_m8; // 0x41a648
  GameFruitPageState_buildTopWidget() /* 0x41b4c8 */; // 0x41a654
  x0 = local_m8; // 0x41a65c
  x2 = x0; // 0x41a658
  local_m20 = x2; // 0x41a660
  w1 = mem(x0, 0xf); // 0x41a664
  w3 = mem((((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13); // 0x41a66c
  x1 = ((mem((((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x41a674
  x3 = ((mem((((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x41a670
  GameFruitNotifier_get_currentTips() /* 0x41b40c */; // 0x41a678
  local_m28 = x0; // 0x41a67c
  SOColors_get_color_3e00a5() /* 0x41b3c8 */; // 0x41a680
  local_m30 = x0; // 0x41a684
  AllocationStub_TextStyle() /* 0x31abec */; // 0x41a688
  x0 = NULL + 0x20; // 0x41a690
  x1 = x0; // 0x41a68c
  local_m38 = x1; // 0x41a694
  memSet(x1, 7, w0); // 0x41a698
  x2 = local_m30; // 0x41a69c
  memSet(x1, 0xb, w2); // 0x41a6a0
  x2 = mem((PP + 0xf000), 0x208) /* Double */; // 0x41a6a8
  memSet(x1, 0x1f, w2); // 0x41a6ac
  x2 = mem((PP + 0x11000), 0xa48) /* Obj!FontWeight@12029  */; // 0x41a6b4
  memSet(x1, 0x23, w2); // 0x41a6b8
  AllocationStub_Text() /* 0x393bf8 */; // 0x41a6bc
  x0 = local_m28; // 0x41a6c4
  x1 = x0; // 0x41a6c0
  local_m30 = x1; // 0x41a6c8
  memSet(x1, 0xb, w0); // 0x41a6cc
  x0 = local_m38; // 0x41a6d0
  memSet(x1, 0x13, w0); // 0x41a6d4
  x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x41a6dc
  memSet(x1, 0x2b, w0); // 0x41a6e0
  x0 = 2; // 0x41a6e4
  memSet(x1, 0x37, w0); // 0x41a6e8
  AllocationStub_Padding() /* 0x391c0c */; // 0x41a6ec
  x0 = mem((PP + 0x11000), 0xa50) /* Obj!EdgeInsets@11b89  */; // 0x41a6f8
  x1 = x0; // 0x41a6f0
  local_m38 = x1; // 0x41a6fc
  memSet(x1, 0xf, w0); // 0x41a700
  x0 = local_m30; // 0x41a704
  memSet(x1, 0xb, w0); // 0x41a708
  w2 = mem((local_m8), 0xf); // 0x41a710
  w3 = mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13); // 0x41a718
  x0 = local_m8; // 0x41a70c
  x2 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41a714
  x3 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x41a71c
  local_m28 = x3; // 0x41a720
  AllocationStub_GameFruitLand() /* 0x41b3bc */; // 0x41a724
  x0 = local_m28; // 0x41a72c
  x2 = x0; // 0x41a728
  local_m30 = x2; // 0x41a730
  memSet(x2, 0xb, w0); // 0x41a734
  x1 = mem((PP + 0xe000), 0xed0) /* TypeArguments */; // 0x41a73c
  AllocationStub_AssetImage() /* 0x3b5478 */; // 0x41a740
  x0 = "assets/images/3.0x/game_fruit_btn_profit_bg.webp" /* pp+0x11a58 */; // 0x41a74c
  x1 = x0; // 0x41a744
  local_m40 = x1; // 0x41a750
  memSet(x1, 0xb, w0); // 0x41a754
  AllocationStub_DecorationImage() /* 0x3b546c */; // 0x41a758
  x0 = local_m40; // 0x41a760
  x1 = x0; // 0x41a75c
  local_m48 = x1; // 0x41a764
  memSet(x1, 7, w0); // 0x41a768
  x0 = mem((PP + 0xf000), 0x1e0) /* Obj!BoxFit@12286  */; // 0x41a770
  memSet(x1, 0x13, w0); // 0x41a774
  x2 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x41a77c
  memSet(x1, 0x17, w2); // 0x41a780
  x3 = mem((PP + 0xe000), 0xee8) /* Obj!ImageRepeat@12281  */; // 0x41a788
  memSet(x1, 0x1f, w3); // 0x41a78c
  x4 = NULL + 0x30; // 0x41a790
  memSet(x1, 0x23, w4); // 0x41a794
  d0 = 1.00000000 /* bits */; // 0x41a798
  memSet(x1, 0x27, d0); // 0x41a79c
  memSet(x1, 0x2f, d0); // 0x41a7a0
  x5 = mem((PP + 0xe000), 0xef0) /* Obj!FilterQuality@12349  */; // 0x41a7a8
  memSet(x1, 0x37, w5); // 0x41a7ac
  memSet(x1, 0x3b, w4); // 0x41a7b0
  memSet(x1, 0x3f, w4); // 0x41a7b4
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x41a7b8
  x0 = local_m48; // 0x41a7c0
  x1 = x0; // 0x41a7bc
  local_m40 = x1; // 0x41a7c4
  memSet(x1, 0xb, w0); // 0x41a7c8
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x41a7d0
  memSet(x1, 0x23, w0); // 0x41a7d4
  w2 = mem((((mem((local_m28), 0x57)) & 0xffffffff) + (HEAP << 32)), 0x13); // 0x41a7e4
  w3 = mem((local_m28), 0x57); // 0x41a7dc
  x2 = ((mem((((mem((local_m28), 0x57)) & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x41a7e8
  x3 = ((mem((local_m28), 0x57)) & 0xffffffff) + (HEAP << 32); // 0x41a7e0
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x41a7ec
  if (w2 == w16) {
    x9 = mem((PP + 0x11000), 0xab8) /* Field */; // 0x41b05c
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x41b060
  }
  local_0 = x2; // 0x41a7f8
  StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x41a7fc
  local_m28 = x0; // 0x41a800
  AllocationStub_TextStyle() /* 0x31abec */; // 0x41a804
  x0 = NULL + 0x20; // 0x41a80c
  x1 = x0; // 0x41a808
  local_m48 = x1; // 0x41a810
  memSet(x1, 7, w0); // 0x41a814
  x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x41a818
  memSet(x1, 0xb, w2); // 0x41a81c
  x3 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x41a824
  memSet(x1, 0x1f, w3); // 0x41a828
  x4 = mem((PP + 0x11000), 0xa48) /* Obj!FontWeight@12029  */; // 0x41a830
  memSet(x1, 0x23, w4); // 0x41a834
  AllocationStub_Text() /* 0x393bf8 */; // 0x41a838
  x0 = local_m28; // 0x41a840
  x2 = x0; // 0x41a83c
  local_m50 = x2; // 0x41a844
  memSet(x2, 0xb, w0); // 0x41a848
  x0 = local_m48; // 0x41a84c
  memSet(x2, 0x13, w0); // 0x41a850
  x1 = "virtual_party_fruitland_page_today_win_amount" /* pp+0xc8c8 */; // 0x41a858
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x41a85c
  getString() /* 0x3a1dcc */; // 0x41a860
  local_m28 = x0; // 0x41a864
  AllocationStub_TextStyle() /* 0x31abec */; // 0x41a868
  x0 = NULL + 0x20; // 0x41a870
  x1 = x0; // 0x41a86c
  local_m48 = x1; // 0x41a874
  memSet(x1, 7, w0); // 0x41a878
  x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x41a87c
  memSet(x1, 0xb, w2); // 0x41a880
  x3 = mem(PP, 0x7598) /* Double */; // 0x41a884
  memSet(x1, 0x1f, w3); // 0x41a888
  AllocationStub_Text() /* 0x393bf8 */; // 0x41a88c
  x0 = local_m28; // 0x41a894
  x3 = x0; // 0x41a890
  local_m58 = x3; // 0x41a898
  memSet(x3, 0xb, w0); // 0x41a89c
  x0 = local_m48; // 0x41a8a0
  memSet(x3, 0x13, w0); // 0x41a8a4
  x1 = NULL; // 0x41a8a8
  x2 = 4; // 0x41a8ac
  sub_0x61f920(); // 0x41a8b0
  x0 = local_m50; // 0x41a8b8
  x2 = x0; // 0x41a8b4
  local_m28 = x2; // 0x41a8bc
  memSet(x2, 0xf, w0); // 0x41a8c0
  x0 = local_m58; // 0x41a8c4
  memSet(x2, 0x13, w0); // 0x41a8c8
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x41a8cc
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x41a8d0
  x0 = local_m28; // 0x41a8d8
  x1 = x0; // 0x41a8d4
  local_m48 = x1; // 0x41a8dc
  memSet(x1, 0xf, w0); // 0x41a8e0
  x2 = 4; // 0x41a8e4
  memSet(x1, 0xb, w2); // 0x41a8e8
  AllocationStub_Column() /* 0x39310c */; // 0x41a8ec
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x41a8f8
  x1 = x0; // 0x41a8f0
  local_m28 = x1; // 0x41a8fc
  memSet(x1, 0xf, w0); // 0x41a900
  x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x41a908
  memSet(x1, 0x13, w2); // 0x41a90c
  x3 = mem((PP + 0xe000), 0xb08) /* Obj!MainAxisSize@12270  */; // 0x41a914
  memSet(x1, 0x17, w3); // 0x41a918
  x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x41a920
  memSet(x1, 0x1b, w4); // 0x41a924
  x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x41a92c
  memSet(x1, 0x23, w5); // 0x41a930
  x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x41a938
  memSet(x1, 0x2b, w6); // 0x41a93c
  memSet(x1, 0x2f, xzr); // 0x41a940
  x7 = local_m48; // 0x41a944
  memSet(x1, 0xb, w7); // 0x41a948
  AllocationStub_Container() /* 0x391a04 */; // 0x41a94c
  local_m48 = x0; // 0x41a950
  BARRIER = mem((PP + 0x11000), 0xa60) /* Double */; // 0x41a958
  LR = mem((PP + 0x11000), 0xa68) /* Obj!EdgeInsetsDirectional@11b75  */; // 0x41a960
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x41a964
  BARRIER = mem((PP + 0x11000), 0xa70) /* Obj!EdgeInsets@11b9b  */; // 0x41a96c
  LR = local_m40; // 0x41a970
  // frame: LR, BARRIER, mem(SP, 8) // 0x41a974
  BARRIER = local_m28; // 0x41a978
  local_0 = BARRIER; // 0x41a97c
  x1 = x0; // 0x41a980
  x4 = mem((PP + 0x11000), 0xa78) /* ImmutableArray */; // 0x41a988
  Container_ctor() /* 0x391490 */; // 0x41a98c
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x41a994
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x41a998
  x0 = 1; // 0x41a9a0
  x2 = x0; // 0x41a99c
  local_m28 = x2; // 0x41a9a4
  memSet(x2, 0x13, x0); // 0x41a9a8
  x3 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x41a9b0
  memSet(x2, 0x1b, w3); // 0x41a9b4
  x1 = local_m48; // 0x41a9b8
  memSet(x2, 0xb, w1); // 0x41a9bc
  x1 = mem((PP + 0xe000), 0xed0) /* TypeArguments */; // 0x41a9c4
  AllocationStub_AssetImage() /* 0x3b5478 */; // 0x41a9c8
  x0 = "assets/images/3.0x/game_fruit_btn_profit_bg.webp" /* pp+0x11a58 */; // 0x41a9d4
  x1 = x0; // 0x41a9cc
  local_m40 = x1; // 0x41a9d8
  memSet(x1, 0xb, w0); // 0x41a9dc
  AllocationStub_DecorationImage() /* 0x3b546c */; // 0x41a9e0
  x0 = local_m40; // 0x41a9e8
  x1 = x0; // 0x41a9e4
  local_m48 = x1; // 0x41a9ec
  memSet(x1, 7, w0); // 0x41a9f0
  x0 = mem((PP + 0xf000), 0x1e0) /* Obj!BoxFit@12286  */; // 0x41a9f8
  memSet(x1, 0x13, w0); // 0x41a9fc
  x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x41aa04
  memSet(x1, 0x17, w0); // 0x41aa08
  x0 = mem((PP + 0xe000), 0xee8) /* Obj!ImageRepeat@12281  */; // 0x41aa10
  memSet(x1, 0x1f, w0); // 0x41aa14
  x0 = NULL + 0x30; // 0x41aa18
  memSet(x1, 0x23, w0); // 0x41aa1c
  d0 = 1.00000000 /* bits */; // 0x41aa20
  memSet(x1, 0x27, d0); // 0x41aa24
  memSet(x1, 0x2f, d0); // 0x41aa28
  x2 = mem((PP + 0xe000), 0xef0) /* Obj!FilterQuality@12349  */; // 0x41aa30
  memSet(x1, 0x37, w2); // 0x41aa34
  memSet(x1, 0x3b, w0); // 0x41aa38
  memSet(x1, 0x3f, w0); // 0x41aa3c
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x41aa40
  x0 = local_m48; // 0x41aa48
  x2 = x0; // 0x41aa44
  local_m40 = x2; // 0x41aa4c
  memSet(x2, 0xb, w0); // 0x41aa50
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x41aa58
  memSet(x2, 0x23, w0); // 0x41aa5c
  w0 = mem((local_m8), 0xf); // 0x41aa64
  w1 = mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13); // 0x41aa6c
  x0 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41aa68
  x1 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x41aa70
  x3 = local_m8; // 0x41aa60
  x4 = mem((((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x23); // 0x41aa74
  if (x4 & (1 << 0x3f) != 0) {
    x5 = "" /* pp+0x148 */; // 0x41aaa0
  } else {
    x0 = ((x4 & 0x7fffffff) << 1) /* signed */; // 0x41aa7c
    if (x4 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x41aa88
      memSet(x0, 7, x4); // 0x41aa8c
    }
    local_0 = x0; // 0x41aa90
    StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x41aa94
    x5 = x0; // 0x41aa98
  }
  x0 = local_m8; // 0x41aaa4
  x1 = local_m28; // 0x41aab4
  x2 = local_m30; // 0x41aab0
  x3 = local_m38; // 0x41aaac
  x4 = local_m20; // 0x41aaa8
  local_m48 = x5; // 0x41aab8
  AllocationStub_TextStyle() /* 0x31abec */; // 0x41aabc
  x0 = NULL + 0x20; // 0x41aac4
  x1 = x0; // 0x41aac0
  local_m50 = x1; // 0x41aac8
  memSet(x1, 7, w0); // 0x41aacc
  x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x41aad0
  memSet(x1, 0xb, w2); // 0x41aad4
  x3 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x41aadc
  memSet(x1, 0x1f, w3); // 0x41aae0
  x3 = mem((PP + 0x11000), 0xa48) /* Obj!FontWeight@12029  */; // 0x41aae8
  memSet(x1, 0x23, w3); // 0x41aaec
  AllocationStub_Text() /* 0x393bf8 */; // 0x41aaf0
  x0 = local_m48; // 0x41aaf8
  x2 = x0; // 0x41aaf4
  local_m58 = x2; // 0x41aafc
  memSet(x2, 0xb, w0); // 0x41ab00
  x0 = local_m50; // 0x41ab04
  memSet(x2, 0x13, w0); // 0x41ab08
  x1 = "virtual_party_fruitland_page_balance" /* pp+0xc8b8 */; // 0x41ab10
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x41ab14
  getString() /* 0x3a1dcc */; // 0x41ab18
  local_m48 = x0; // 0x41ab1c
  AllocationStub_TextStyle() /* 0x31abec */; // 0x41ab20
  x0 = NULL + 0x20; // 0x41ab28
  x1 = x0; // 0x41ab24
  local_m50 = x1; // 0x41ab2c
  memSet(x1, 7, w0); // 0x41ab30
  x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x41ab34
  memSet(x1, 0xb, w2); // 0x41ab38
  x2 = mem(PP, 0x7598) /* Double */; // 0x41ab3c
  memSet(x1, 0x1f, w2); // 0x41ab40
  AllocationStub_Text() /* 0x393bf8 */; // 0x41ab44
  x0 = local_m48; // 0x41ab4c
  x3 = x0; // 0x41ab48
  local_m60 = x3; // 0x41ab50
  memSet(x3, 0xb, w0); // 0x41ab54
  x0 = local_m50; // 0x41ab58
  memSet(x3, 0x13, w0); // 0x41ab5c
  x1 = NULL; // 0x41ab60
  x2 = 4; // 0x41ab64
  sub_0x61f920(); // 0x41ab68
  x0 = local_m58; // 0x41ab70
  x2 = x0; // 0x41ab6c
  local_m48 = x2; // 0x41ab74
  memSet(x2, 0xf, w0); // 0x41ab78
  x0 = local_m60; // 0x41ab7c
  memSet(x2, 0x13, w0); // 0x41ab80
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x41ab84
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x41ab88
  x0 = local_m48; // 0x41ab90
  x1 = x0; // 0x41ab8c
  local_m50 = x1; // 0x41ab94
  memSet(x1, 0xf, w0); // 0x41ab98
  x2 = 4; // 0x41ab9c
  memSet(x1, 0xb, w2); // 0x41aba0
  AllocationStub_Column() /* 0x39310c */; // 0x41aba4
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x41abb0
  x1 = x0; // 0x41aba8
  local_m48 = x1; // 0x41abb4
  memSet(x1, 0xf, w0); // 0x41abb8
  x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x41abc0
  memSet(x1, 0x13, w2); // 0x41abc4
  x3 = mem((PP + 0xe000), 0xb08) /* Obj!MainAxisSize@12270  */; // 0x41abcc
  memSet(x1, 0x17, w3); // 0x41abd0
  x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x41abd8
  memSet(x1, 0x1b, w3); // 0x41abdc
  x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x41abe4
  memSet(x1, 0x23, w4); // 0x41abe8
  x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x41abf0
  memSet(x1, 0x2b, w5); // 0x41abf4
  memSet(x1, 0x2f, xzr); // 0x41abf8
  x6 = local_m50; // 0x41abfc
  memSet(x1, 0xb, w6); // 0x41ac00
  AllocationStub_Container() /* 0x391a04 */; // 0x41ac04
  local_m50 = x0; // 0x41ac08
  BARRIER = mem((PP + 0x11000), 0xa60) /* Double */; // 0x41ac10
  LR = mem((PP + 0x11000), 0xa80) /* Obj!EdgeInsetsDirectional@11b74  */; // 0x41ac18
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x41ac1c
  BARRIER = mem((PP + 0x11000), 0xa70) /* Obj!EdgeInsets@11b9b  */; // 0x41ac24
  LR = local_m40; // 0x41ac28
  // frame: LR, BARRIER, mem(SP, 8) // 0x41ac2c
  BARRIER = local_m48; // 0x41ac30
  local_0 = BARRIER; // 0x41ac34
  x1 = x0; // 0x41ac38
  x4 = mem((PP + 0x11000), 0xa78) /* ImmutableArray */; // 0x41ac40
  Container_ctor() /* 0x391490 */; // 0x41ac44
  sub_0x3a1d94(); // 0x41ac48
  x1 = mem((PP + 0x11000), 0xa88) /* Function */; // 0x41ac50
  x2 = NULL; // 0x41ac54
  local_m40 = x0; // 0x41ac58
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41ac5c
  BARRIER = local_m50; // 0x41ac60
  // frame: BARRIER, x0, mem(SP) // 0x41ac64
  x1 = local_m40; // 0x41ac68
  x4 = mem((PP + 0xc000), 0x208) /* ImmutableArray */; // 0x41ac70
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x41ac74
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x41ac7c
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x41ac80
  x0 = 1; // 0x41ac88
  x3 = x0; // 0x41ac84
  local_m48 = x3; // 0x41ac8c
  memSet(x3, 0x13, x0); // 0x41ac90
  x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x41ac98
  memSet(x3, 0x1b, w0); // 0x41ac9c
  x0 = local_m40; // 0x41aca0
  memSet(x3, 0xb, w0); // 0x41aca4
  x1 = NULL; // 0x41aca8
  x2 = 4; // 0x41acac
  sub_0x61f920(); // 0x41acb0
  x0 = local_m28; // 0x41acb8
  x2 = x0; // 0x41acb4
  local_m40 = x2; // 0x41acbc
  memSet(x2, 0xf, w0); // 0x41acc0
  x0 = local_m48; // 0x41acc4
  memSet(x2, 0x13, w0); // 0x41acc8
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x41accc
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x41acd0
  x0 = local_m40; // 0x41acd8
  x1 = x0; // 0x41acd4
  local_m28 = x1; // 0x41acdc
  memSet(x1, 0xf, w0); // 0x41ace0
  x2 = 4; // 0x41ace4
  memSet(x1, 0xb, w2); // 0x41ace8
  AllocationStub_Row() /* 0x3a1414 */; // 0x41acec
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x41acf4
  x1 = x0; // 0x41acf0
  local_m40 = x1; // 0x41acf8
  memSet(x1, 0xf, w0); // 0x41acfc
  x2 = mem((PP + 0x11000), 0xa90) /* Obj!MainAxisAlignment@1226d  */; // 0x41ad04
  memSet(x1, 0x13, w2); // 0x41ad08
  x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x41ad10
  memSet(x1, 0x17, w2); // 0x41ad14
  x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x41ad1c
  memSet(x1, 0x1b, w3); // 0x41ad20
  x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x41ad28
  memSet(x1, 0x23, w4); // 0x41ad2c
  x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x41ad34
  memSet(x1, 0x2b, w5); // 0x41ad38
  memSet(x1, 0x2f, xzr); // 0x41ad3c
  x6 = local_m28; // 0x41ad40
  memSet(x1, 0xb, w6); // 0x41ad44
  AllocationStub_Container() /* 0x391a04 */; // 0x41ad48
  local_m28 = x0; // 0x41ad4c
  BARRIER = mem((PP + 0x11000), 0xa98) /* Double */; // 0x41ad54
  LR = mem((PP + 0x10000), 0xc70) /* Obj!Alignment@11bdc  */; // 0x41ad5c
  // frame: LR, BARRIER, mem(SP, 8) // 0x41ad60
  BARRIER = local_m40; // 0x41ad64
  local_0 = BARRIER; // 0x41ad68
  x1 = x0; // 0x41ad6c
  x4 = mem((PP + 0x11000), 0x400) /* ImmutableArray */; // 0x41ad74
  Container_ctor() /* 0x391490 */; // 0x41ad78
  x1 = "virtual_party_fruitland_page_win_record" /* pp+0xc8a8 */; // 0x41ad80
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x41ad84
  getString() /* 0x3a1dcc */; // 0x41ad88
  local_m40 = x0; // 0x41ad8c
  SOColors_get_color_4900b4() /* 0x41b378 */; // 0x41ad90
  local_m48 = x0; // 0x41ad94
  AllocationStub_TextStyle() /* 0x31abec */; // 0x41ad98
  x0 = NULL + 0x20; // 0x41ada0
  x1 = x0; // 0x41ad9c
  local_m50 = x1; // 0x41ada4
  memSet(x1, 7, w0); // 0x41ada8
  x0 = local_m48; // 0x41adac
  memSet(x1, 0xb, w0); // 0x41adb0
  x0 = mem((PP + 0xf000), 0xb90) /* Double */; // 0x41adb8
  memSet(x1, 0x1f, w0); // 0x41adbc
  x0 = mem((PP + 0x11000), 0xa48) /* Obj!FontWeight@12029  */; // 0x41adc4
  memSet(x1, 0x23, w0); // 0x41adc8
  AllocationStub_Text() /* 0x393bf8 */; // 0x41adcc
  x0 = local_m40; // 0x41add4
  x1 = x0; // 0x41add0
  local_m48 = x1; // 0x41add8
  memSet(x1, 0xb, w0); // 0x41addc
  x0 = local_m50; // 0x41ade0
  memSet(x1, 0x13, w0); // 0x41ade4
  x0 = 2; // 0x41ade8
  memSet(x1, 0x37, w0); // 0x41adec
  AllocationStub_Padding() /* 0x391c0c */; // 0x41adf0
  x0 = mem((PP + 0x11000), 0xaa0) /* Obj!EdgeInsetsDirectional@11b72  */; // 0x41adfc
  x2 = x0; // 0x41adf4
  local_m40 = x2; // 0x41ae00
  memSet(x2, 0xf, w0); // 0x41ae04
  x0 = local_m48; // 0x41ae08
  memSet(x2, 0xb, w0); // 0x41ae0c
  w1 = mem((local_m8), 0xf); // 0x41ae14
  x0 = local_m8; // 0x41ae10
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41ae18
  GameFruitPageState_buildRecordWidget() /* 0x41b0c8 */; // 0x41ae1c
  x1 = NULL; // 0x41ae20
  x2 = 4; // 0x41ae24
  local_m8 = x0; // 0x41ae28
  sub_0x61f920(); // 0x41ae2c
  x0 = local_m40; // 0x41ae34
  x2 = x0; // 0x41ae30
  local_m48 = x2; // 0x41ae38
  memSet(x2, 0xf, w0); // 0x41ae3c
  x0 = local_m8; // 0x41ae40
  memSet(x2, 0x13, w0); // 0x41ae44
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x41ae48
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x41ae4c
  x0 = local_m48; // 0x41ae54
  x1 = x0; // 0x41ae50
  local_m8 = x1; // 0x41ae58
  memSet(x1, 0xf, w0); // 0x41ae5c
  x0 = 4; // 0x41ae60
  memSet(x1, 0xb, w0); // 0x41ae64
  AllocationStub_Row() /* 0x3a1414 */; // 0x41ae68
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x41ae70
  x1 = x0; // 0x41ae6c
  local_m40 = x1; // 0x41ae74
  memSet(x1, 0xf, w0); // 0x41ae78
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x41ae80
  memSet(x1, 0x13, w0); // 0x41ae84
  x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x41ae8c
  memSet(x1, 0x17, w2); // 0x41ae90
  x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x41ae98
  memSet(x1, 0x1b, w3); // 0x41ae9c
  x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x41aea4
  memSet(x1, 0x23, w4); // 0x41aea8
  x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x41aeb0
  memSet(x1, 0x2b, w5); // 0x41aeb4
  memSet(x1, 0x2f, xzr); // 0x41aeb8
  x6 = local_m8; // 0x41aebc
  memSet(x1, 0xb, w6); // 0x41aec0
  AllocationStub_Container() /* 0x391a04 */; // 0x41aec4
  local_m8 = x0; // 0x41aec8
  BARRIER = mem((PP + 0x10000), 0x350) /* Double */; // 0x41aed0
  LR = mem((PP + 0x11000), 0xaa8) /* Obj!EdgeInsetsDirectional@11b71  */; // 0x41aed8
  // frame: LR, BARRIER, mem(SP, 8) // 0x41aedc
  BARRIER = local_m40; // 0x41aee0
  local_0 = BARRIER; // 0x41aee4
  x1 = x0; // 0x41aee8
  x4 = mem((PP + 0x11000), 0xab0) /* ImmutableArray */; // 0x41aef0
  Container_ctor() /* 0x391490 */; // 0x41aef4
  x1 = NULL; // 0x41aef8
  x2 = 10; // 0x41aefc
  sub_0x61f920(); // 0x41af00
  x0 = local_m20; // 0x41af08
  x2 = x0; // 0x41af04
  local_m40 = x2; // 0x41af0c
  memSet(x2, 0xf, w0); // 0x41af10
  x0 = local_m38; // 0x41af14
  memSet(x2, 0x13, w0); // 0x41af18
  x0 = local_m30; // 0x41af1c
  memSet(x2, 0x17, w0); // 0x41af20
  x0 = local_m28; // 0x41af24
  memSet(x2, 0x1b, w0); // 0x41af28
  x0 = local_m8; // 0x41af2c
  memSet(x2, 0x1f, w0); // 0x41af30
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x41af34
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x41af38
  x0 = local_m40; // 0x41af40
  x1 = x0; // 0x41af3c
  local_m8 = x1; // 0x41af44
  memSet(x1, 0xf, w0); // 0x41af48
  x0 = 10; // 0x41af4c
  memSet(x1, 0xb, w0); // 0x41af50
  AllocationStub_Column() /* 0x39310c */; // 0x41af54
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x41af60
  x1 = x0; // 0x41af58
  local_m20 = x1; // 0x41af64
  memSet(x1, 0xf, w0); // 0x41af68
  x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x41af70
  memSet(x1, 0x13, w2); // 0x41af74
  x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x41af7c
  memSet(x1, 0x17, w2); // 0x41af80
  x2 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x41af88
  memSet(x1, 0x1b, w2); // 0x41af8c
  x2 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x41af94
  memSet(x1, 0x23, w2); // 0x41af98
  x2 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x41afa0
  memSet(x1, 0x2b, w2); // 0x41afa4
  memSet(x1, 0x2f, xzr); // 0x41afa8
  x2 = local_m8; // 0x41afac
  memSet(x1, 0xb, w2); // 0x41afb0
  AllocationStub_Container() /* 0x391a04 */; // 0x41afb4
  local_m8 = x0; // 0x41afb8
  BARRIER = local_m10; // 0x41afbc
  LR = local_m18; // 0x41afc0
  // frame: LR, BARRIER, mem(SP, 8) // 0x41afc4
  BARRIER = local_m20; // 0x41afc8
  local_0 = BARRIER; // 0x41afcc
  x1 = x0; // 0x41afd0
  x4 = mem((PP + 0x10000), 0xcb0) /* ImmutableArray */; // 0x41afd8
  Container_ctor() /* 0x391490 */; // 0x41afdc
  AllocationStub_SingleChildScrollView() /* 0x3a1db4 */; // 0x41afe0
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x41afec
  x1 = x0; // 0x41afe4
  local_m10 = x1; // 0x41aff0
  memSet(x1, 0xb, w0); // 0x41aff4
  x0 = NULL + 0x30; // 0x41aff8
  memSet(x1, 0xf, w0); // 0x41affc
  AllocationStub_ClampingScrollPhysics() /* 0x41b0bc */; // 0x41b000
  x0 = local_m10; // 0x41b008
  x1 = x0; // 0x41b004
  memSet(x0, 0x1f, w1); // 0x41b00c
  x1 = local_m8; // 0x41b010
  memSet(x0, 0x23, w1); // 0x41b014
  x1 = mem(PP, 0x77d8) /* Obj!DragStartBehavior@122d8  */; // 0x41b018
  memSet(x0, 0x27, w1); // 0x41b01c
  x1 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x41b024
  memSet(x0, 0x2b, w1); // 0x41b028
  x1 = mem((PP + 0xf000), 0x140) /* Obj!HitTestBehavior@12262  */; // 0x41b030
  memSet(x0, 0x2f, w1); // 0x41b034
  x1 = mem((PP + 0xf000), 0x2f8); // 0x41b03c
  memSet(x0, 0x37, w1); // 0x41b040
  SP = FP; // 0x41b044
  // frame: FP, LR, mem(SP), 0x10 // 0x41b048
  return;
}

// GameFruitPageState_buildRecordWidget
// raw disassembly:
//  0x41b0c8: stp FP, LR, [SP, #-0x10]!
//  0x41b0cc: mov FP, SP
//  0x41b0d0: sub SP, SP, #0x28
//  0x41b0d4: ldr BARRIER, [THR, #0x38]
//  0x41b0d8: cmp SP, BARRIER
//  0x41b0dc: b.ls #0x41b18c
//  0x41b0e0: ldur w0, [x1, #0x13]
//  0x41b0e4: add x0, x0, HEAP, lsl #32
//  0x41b0e8: ldur w1, [x0, #0x3f]
//  0x41b0ec: add x1, x1, HEAP, lsl #32
//  0x41b0f0: stur x1, [FP, #-8]
//  0x41b0f4: mov x1, #1
//  0x41b0f8: bl #0x61e890
//  0x41b0fc: mov x1, x0
//  0x41b100: ldur x0, [FP, #-8]
//  0x41b104: stur w0, [x1, #0xf]
//  0x41b108: ldur w2, [x0, #0xb]
//  0x41b10c: sbfx x3, x2, #1, #0x1f
//  0x41b110: mov x2, x1
//  0x41b114: stur x3, [FP, #-0x10]
//  0x41b118: add x1, PP, #0x11, lsl #12
//  0x41b11c: ldr x1, [x1, #0xac0]
//  0x41b120: bl #0x61ec54
//  0x41b124: stur x0, [FP, #-8]
//  0x41b128: bl #0x3ab5ac
//  0x41b12c: stur x0, [FP, #-0x18]
//  0x41b130: ldr BARRIER, [PP, #0x5140]
//  0x41b134: add LR, PP, #0x11, lsl #12
//  0x41b138: ldr LR, [LR, #0xac8]
//  0x41b13c: stp LR, BARRIER, [SP]
//  0x41b140: mov x1, x0
//  0x41b144: ldur x2, [FP, #-8]
//  0x41b148: ldur x3, [FP, #-0x10]
//  0x41b14c: add x4, PP, #0x11, lsl #12
//  0x41b150: ldr x4, [x4, #0xad0]
//  0x41b154: bl #0x3ab2bc
//  0x41b158: add x1, PP, #0xe, lsl #12
//  0x41b15c: ldr x1, [x1, #0xad0]
//  0x41b160: bl #0x39fb14
//  0x41b164: mov x1, #1
//  0x41b168: stur x1, [x0, #0x13]
//  0x41b16c: add x1, PP, #0xe, lsl #12
//  0x41b170: ldr x1, [x1, #0xad8]
//  0x41b174: stur w1, [x0, #0x1b]
//  0x41b178: ldur x1, [FP, #-0x18]
//  0x41b17c: stur w1, [x0, #0xb]
//  0x41b180: mov SP, FP
//  0x41b184: ldp FP, LR, [SP], #0x10
//  0x41b188: ret 
//  0x41b18c: bl #0x61fa28
//  0x41b190: b #0x41b0e0
//
dynamic GameFruitPageState_buildRecordWidget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41b0c8
  BARRIER = mem(THR, 0x38); // 0x41b0d4
  // frame: FP = SP // 0x41b0cc
  // frame: SP = SP - 0x28 // 0x41b0d0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41b18c
  }
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x3f); // 0x41b0e8
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x41b0e4
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x3f)) & 0xffffffff) + (HEAP << 32); // 0x41b0ec
  local_m8 = x1; // 0x41b0f0
  x1 = 1; // 0x41b0f4
  sub_0x61e890(); // 0x41b0f8
  x0 = local_m8; // 0x41b100
  x1 = x0; // 0x41b0fc
  memSet(x1, 0xf, w0); // 0x41b104
  w2 = mem(x0, 0xb); // 0x41b108
  x2 = x1; // 0x41b110
  x3 = (((mem(x0, 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x41b10c
  local_m10 = x3; // 0x41b114
  x1 = mem((PP + 0x11000), 0xac0) /* Function */; // 0x41b11c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41b120
  local_m8 = x0; // 0x41b124
  AllocationStub_ListView() /* 0x3ab5ac */; // 0x41b128
  local_m18 = x0; // 0x41b12c
  BARRIER = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x41b130
  LR = mem((PP + 0x11000), 0xac8) /* Double */; // 0x41b138
  // frame: LR, BARRIER, mem(SP) // 0x41b13c
  x1 = x0; // 0x41b140
  x2 = local_m8; // 0x41b144
  x3 = local_m10; // 0x41b148
  x4 = mem((PP + 0x11000), 0xad0) /* ImmutableArray */; // 0x41b150
  ListView_ctor_builder() /* 0x3ab2bc */; // 0x41b154
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x41b15c
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x41b160
  x1 = 1; // 0x41b164
  memSet(x0, 0x13, x1); // 0x41b168
  x1 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x41b170
  memSet(x0, 0x1b, w1); // 0x41b174
  x1 = local_m18; // 0x41b178
  memSet(x0, 0xb, w1); // 0x41b17c
  SP = FP; // 0x41b180
  // frame: FP, LR, mem(SP), 0x10 // 0x41b184
  return;
}

// GameFruitPageState_anon_closure_3
// raw disassembly:
//  0x41b194: stp FP, LR, [SP, #-0x10]!
//  0x41b198: mov FP, SP
//  0x41b19c: sub SP, SP, #0x48
//  0x41b1a0: ldr x0, [FP, #0x20]
//  0x41b1a4: ldur w1, [x0, #0x17]
//  0x41b1a8: add x1, x1, HEAP, lsl #32
//  0x41b1ac: ldr BARRIER, [THR, #0x38]
//  0x41b1b0: cmp SP, BARRIER
//  0x41b1b4: b.ls #0x41b340
//  0x41b1b8: ldur w2, [x1, #0xf]
//  0x41b1bc: add x2, x2, HEAP, lsl #32
//  0x41b1c0: ldur w0, [x2, #0xb]
//  0x41b1c4: ldr x1, [FP, #0x10]
//  0x41b1c8: sbfx x3, x1, #1, #0x1f
//  0x41b1cc: tbz w1, #0, #0x41b1d4
//  0x41b1d0: ldur x3, [x1, #7]
//  0x41b1d4: sbfx x1, x0, #1, #0x1f
//  0x41b1d8: mov x0, x1
//  0x41b1dc: mov x1, x3
//  0x41b1e0: cmp x1, x0
//  0x41b1e4: b.hs #0x41b348
//  0x41b1e8: ldur w0, [x2, #0xf]
//  0x41b1ec: add x0, x0, HEAP, lsl #32
//  0x41b1f0: add BARRIER, x0, x3, lsl #2
//  0x41b1f4: ldur w1, [BARRIER, #0xf]
//  0x41b1f8: add x1, x1, HEAP, lsl #32
//  0x41b1fc: stur x1, [FP, #-8]
//  0x41b200: bl #0x31d844
//  0x41b204: mov x1, x0
//  0x41b208: ldr x0, [PP, #0x6310]
//  0x41b20c: stur x1, [FP, #-0x10]
//  0x41b210: stur w0, [x1, #0x27]
//  0x41b214: fmov d0, #1.00000000
//  0x41b218: stur d0, [x1, #7]
//  0x41b21c: add x17, PP, #0x11, lsl #12
//  0x41b220: ldr d0, [x17, #0xad8]
//  0x41b224: stur d0, [x1, #0xf]
//  0x41b228: add x17, PP, #0x10, lsl #12
//  0x41b22c: ldr d0, [x17, #0xb10]
//  0x41b230: stur d0, [x1, #0x17]
//  0x41b234: add x17, PP, #0xf, lsl #12
//  0x41b238: ldr d0, [x17, #0x628]
//  0x41b23c: stur d0, [x1, #0x1f]
//  0x41b240: bl #0x352b04
//  0x41b244: fmov d0, #20.00000000
//  0x41b248: stur x0, [FP, #-0x18]
//  0x41b24c: stur d0, [x0, #7]
//  0x41b250: stur d0, [x0, #0xf]
//  0x41b254: bl #0x392f28
//  0x41b258: mov x1, x0
//  0x41b25c: ldur x0, [FP, #-0x18]
//  0x41b260: stur x1, [FP, #-0x20]
//  0x41b264: stur w0, [x1, #7]
//  0x41b268: stur w0, [x1, #0xb]
//  0x41b26c: stur w0, [x1, #0xf]
//  0x41b270: stur w0, [x1, #0x13]
//  0x41b274: bl #0x391dd8
//  0x41b278: mov x1, x0
//  0x41b27c: ldur x0, [FP, #-0x10]
//  0x41b280: stur x1, [FP, #-0x18]
//  0x41b284: stur w0, [x1, #7]
//  0x41b288: ldur x0, [FP, #-0x20]
//  0x41b28c: stur w0, [x1, #0x13]
//  0x41b290: add x0, PP, #0xe, lsl #12
//  0x41b294: ldr x0, [x0, #0xb78]
//  0x41b298: stur w0, [x1, #0x23]
//  0x41b29c: ldur x0, [FP, #-8]
//  0x41b2a0: ldur w2, [x0, #0xf]
//  0x41b2a4: add x2, x2, HEAP, lsl #32
//  0x41b2a8: ldr BARRIER, [PP, #0x40]
//  0x41b2ac: cmp w2, w16
//  0x41b2b0: b.eq #0x41b34c
//  0x41b2b4: stur x2, [FP, #-0x10]
//  0x41b2b8: bl #0x3b6694
//  0x41b2bc: mov x1, x0
//  0x41b2c0: ldur x0, [FP, #-0x10]
//  0x41b2c4: stur x1, [FP, #-8]
//  0x41b2c8: stur w0, [x1, #0xb]
//  0x41b2cc: add x0, NULL, #0x30
//  0x41b2d0: stur w0, [x1, #0x1b]
//  0x41b2d4: stur w0, [x1, #0x1f]
//  0x41b2d8: bl #0x391a04
//  0x41b2dc: stur x0, [FP, #-0x10]
//  0x41b2e0: add BARRIER, PP, #0x11, lsl #12
//  0x41b2e4: ldr BARRIER, [BARRIER, #0x3d8]
//  0x41b2e8: add LR, PP, #0x11, lsl #12
//  0x41b2ec: ldr LR, [LR, #0x3d8]
//  0x41b2f0: stp LR, BARRIER, [SP, #0x18]
//  0x41b2f4: add BARRIER, PP, #0x11, lsl #12
//  0x41b2f8: ldr BARRIER, [BARRIER, #0xae0]
//  0x41b2fc: ldur LR, [FP, #-0x18]
//  0x41b300: stp LR, BARRIER, [SP, #8]
//  0x41b304: ldur BARRIER, [FP, #-8]
//  0x41b308: str BARRIER, [SP]
//  0x41b30c: mov x1, x0
//  0x41b310: add x4, PP, #0x11, lsl #12
//  0x41b314: ldr x4, [x4, #0x888]
//  0x41b318: bl #0x391490
//  0x41b31c: bl #0x396460
//  0x41b320: add x1, PP, #0xe, lsl #12
//  0x41b324: ldr x1, [x1, #0xaa0]
//  0x41b328: stur w1, [x0, #0xf]
//  0x41b32c: ldur x1, [FP, #-0x10]
//  0x41b330: stur w1, [x0, #0xb]
//  0x41b334: mov SP, FP
//  0x41b338: ldp FP, LR, [SP], #0x10
//  0x41b33c: ret 
//  0x41b340: bl #0x61fa28
//  0x41b344: b #0x41b1b8
//  0x41b348: bl #0x61fe70
//  0x41b34c: add x9, PP, #0x11, lsl #12
//  0x41b350: ldr x9, [x9, #0xae8]
//  0x41b354: bl #0x620258
//
dynamic GameFruitPageState_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41b194
  BARRIER = mem(THR, 0x38); // 0x41b1ac
  // frame: FP = SP // 0x41b198
  // frame: SP = SP - 0x48 // 0x41b19c
  w1 = mem((local_20), 0x17); // 0x41b1a4
  x0 = local_20; // 0x41b1a0
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41b1a8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41b340
  }
  w0 = mem(((w2 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x41b1c0
  x0 = (mem(((w2 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x41b1c0
  x1 = local_10; // 0x41b1c4
  x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x41b1bc
  x3 = ((local_10) >> 1) & 0x7fffffff; // 0x41b1c8
  if (x1 & (1 << 0) == 0) {
  } else {
    x3 = mem(x1, 7); // 0x41b1d0
  }
  x0 = (x0 >> 1) & 0x7fffffff; // 0x41b1d8
  x1 = x3; // 0x41b1dc
  if (x1 >= x0) {
    RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x41b348
  } else {
    BARRIER = ((w0 & 0xffffffff) + (HEAP << 32)) + (x3 << 2); // 0x41b1f0
    w1 = mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x3 << 2)), 0xf); // 0x41b1f4
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x41b1ec
    x1 = ((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x3 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41b1f8
    local_m8 = x1; // 0x41b1fc
    AllocationStub_Color() /* 0x31d844 */; // 0x41b200
    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x41b208
    x1 = x0; // 0x41b204
    local_m10 = x1; // 0x41b20c
    memSet(x1, 0x27, w0); // 0x41b210
    d0 = 1.00000000 /* bits */; // 0x41b214
    memSet(x1, 7, d0); // 0x41b218
    d0 = 4601583826322070556; // 0x41b220
    x17 = PP + 0x11000; // 0x41b21c
    memSet(x1, 0xf, d0); // 0x41b224
    d0 = 4597786673695071903; // 0x41b22c
    x17 = PP + 0x10000; // 0x41b228
    memSet(x1, 0x17, d0); // 0x41b230
    d0 = 4607147096449998816; // 0x41b238
    x17 = PP + 0xf000; // 0x41b234
    memSet(x1, 0x1f, d0); // 0x41b23c
    AllocationStub_Radius() /* 0x352b04 */; // 0x41b240
    d0 = 20.00000000 /* bits */; // 0x41b244
    local_m18 = x0; // 0x41b248
    memSet(x0, 7, d0); // 0x41b24c
    memSet(x0, 0xf, d0); // 0x41b250
    AllocationStub_BorderRadius() /* 0x392f28 */; // 0x41b254
    x0 = local_m18; // 0x41b25c
    x1 = x0; // 0x41b258
    local_m20 = x1; // 0x41b260
    memSet(x1, 7, w0); // 0x41b264
    memSet(x1, 0xb, w0); // 0x41b268
    memSet(x1, 0xf, w0); // 0x41b26c
    memSet(x1, 0x13, w0); // 0x41b270
    AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x41b274
    x0 = local_m10; // 0x41b27c
    x1 = x0; // 0x41b278
    local_m18 = x1; // 0x41b280
    memSet(x1, 7, w0); // 0x41b284
    x0 = local_m20; // 0x41b288
    memSet(x1, 0x13, w0); // 0x41b28c
    x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x41b294
    memSet(x1, 0x23, w0); // 0x41b298
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x41b2a8
    w2 = mem((local_m8), 0xf); // 0x41b2a0
    x0 = local_m8; // 0x41b29c
    x2 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41b2a4
    if (w2 != w16) {
      local_m10 = x2; // 0x41b2b4
      AllocationStub_SOImage() /* 0x3b6694 */; // 0x41b2b8
      x0 = local_m10; // 0x41b2c0
      x1 = x0; // 0x41b2bc
      local_m8 = x1; // 0x41b2c4
      memSet(x1, 0xb, w0); // 0x41b2c8
      x0 = NULL + 0x30; // 0x41b2cc
      memSet(x1, 0x1b, w0); // 0x41b2d0
      memSet(x1, 0x1f, w0); // 0x41b2d4
      AllocationStub_Container() /* 0x391a04 */; // 0x41b2d8
      local_m10 = x0; // 0x41b2dc
      BARRIER = mem((PP + 0x11000), 0x3d8) /* Double */; // 0x41b2e4
      LR = mem((PP + 0x11000), 0x3d8) /* Double */; // 0x41b2ec
      // frame: LR, BARRIER, mem(SP, 0x18) // 0x41b2f0
      BARRIER = mem((PP + 0x11000), 0xae0) /* Obj!EdgeInsetsDirectional@11b6e  */; // 0x41b2f8
      LR = local_m18; // 0x41b2fc
      // frame: LR, BARRIER, mem(SP, 8) // 0x41b300
      BARRIER = local_m8; // 0x41b304
      local_0 = BARRIER; // 0x41b308
      x1 = x0; // 0x41b30c
      x4 = mem((PP + 0x11000), 0x888) /* ImmutableArray */; // 0x41b314
      Container_ctor() /* 0x391490 */; // 0x41b318
      AllocationStub_Align() /* 0x396460 */; // 0x41b31c
      x1 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x41b324
      memSet(x0, 0xf, w1); // 0x41b328
      x1 = local_m10; // 0x41b32c
      memSet(x0, 0xb, w1); // 0x41b330
      SP = FP; // 0x41b334
      // frame: FP, LR, mem(SP), 0x10 // 0x41b338
      return;
    }
  }
  x9 = mem((PP + 0x11000), 0xae8) /* Field */; // 0x41b350
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x41b354
}

// GameFruitPageState_buildTopWidget
// raw disassembly:
//  0x41b4c8: stp FP, LR, [SP, #-0x10]!
//  0x41b4cc: mov FP, SP
//  0x41b4d0: sub SP, SP, #0x78
//  0x41b4d4: stur x1, [FP, #-8]
//  0x41b4d8: ldr BARRIER, [THR, #0x38]
//  0x41b4dc: cmp SP, BARRIER
//  0x41b4e0: b.ls #0x41bbdc
//  0x41b4e4: mov x1, #1
//  0x41b4e8: bl #0x61e890
//  0x41b4ec: mov x1, x0
//  0x41b4f0: ldur x0, [FP, #-8]
//  0x41b4f4: stur x1, [FP, #-0x10]
//  0x41b4f8: stur w0, [x1, #0xf]
//  0x41b4fc: bl #0x419950
//  0x41b500: add x1, PP, #0x11, lsl #12
//  0x41b504: ldr x1, [x1, #0xb08]
//  0x41b508: mov x2, NULL
//  0x41b50c: stur x0, [FP, #-0x18]
//  0x41b510: bl #0x61ec54
//  0x41b514: stur x0, [FP, #-0x20]
//  0x41b518: bl #0x3ab5ac
//  0x41b51c: stur x0, [FP, #-0x28]
//  0x41b520: add BARRIER, NULL, #0x20
//  0x41b524: ldur LR, [FP, #-0x18]
//  0x41b528: stp LR, BARRIER, [SP, #0x10]
//  0x41b52c: ldr BARRIER, [PP, #0x5140]
//  0x41b530: add LR, PP, #0x10, lsl #12
//  0x41b534: ldr LR, [LR, #0x208]
//  0x41b538: stp LR, BARRIER, [SP]
//  0x41b53c: mov x1, x0
//  0x41b540: ldur x2, [FP, #-0x20]
//  0x41b544: mov x3, #2
//  0x41b548: add x4, PP, #0x11, lsl #12
//  0x41b54c: ldr x4, [x4, #0xb10]
//  0x41b550: bl #0x3ab2bc
//  0x41b554: bl #0x391a04
//  0x41b558: stur x0, [FP, #-0x18]
//  0x41b55c: add BARRIER, PP, #0xa, lsl #12
//  0x41b560: ldr BARRIER, [BARRIER, #0x4e0]
//  0x41b564: add LR, PP, #0x11, lsl #12
//  0x41b568: ldr LR, [LR, #0xb18]
//  0x41b56c: stp LR, BARRIER, [SP, #0x10]
//  0x41b570: add BARRIER, PP, #0x11, lsl #12
//  0x41b574: ldr BARRIER, [BARRIER, #0xb20]
//  0x41b578: ldur LR, [FP, #-0x28]
//  0x41b57c: stp LR, BARRIER, [SP]
//  0x41b580: mov x1, x0
//  0x41b584: add x4, PP, #0x11, lsl #12
//  0x41b588: ldr x4, [x4, #0xb28]
//  0x41b58c: bl #0x391490
//  0x41b590: bl #0x352b04
//  0x41b594: fmov d0, #28.00000000
//  0x41b598: stur x0, [FP, #-0x20]
//  0x41b59c: stur d0, [x0, #7]
//  0x41b5a0: stur d0, [x0, #0xf]
//  0x41b5a4: bl #0x392f28
//  0x41b5a8: mov x1, x0
//  0x41b5ac: ldur x0, [FP, #-0x20]
//  0x41b5b0: stur x1, [FP, #-0x28]
//  0x41b5b4: stur w0, [x1, #7]
//  0x41b5b8: stur w0, [x1, #0xb]
//  0x41b5bc: stur w0, [x1, #0xf]
//  0x41b5c0: stur w0, [x1, #0x13]
//  0x41b5c4: bl #0x31d844
//  0x41b5c8: mov x1, x0
//  0x41b5cc: ldr x0, [PP, #0x6310]
//  0x41b5d0: stur x1, [FP, #-0x20]
//  0x41b5d4: stur w0, [x1, #0x27]
//  0x41b5d8: fmov d0, #1.00000000
//  0x41b5dc: stur d0, [x1, #7]
//  0x41b5e0: add x17, PP, #0x11, lsl #12
//  0x41b5e4: ldr d1, [x17, #0xb30]
//  0x41b5e8: stur d1, [x1, #0xf]
//  0x41b5ec: add x17, PP, #0x11, lsl #12
//  0x41b5f0: ldr d1, [x17, #0xb38]
//  0x41b5f4: stur d1, [x1, #0x17]
//  0x41b5f8: add x17, PP, #0x11, lsl #12
//  0x41b5fc: ldr d1, [x17, #0xb40]
//  0x41b600: stur d1, [x1, #0x1f]
//  0x41b604: bl #0x31d844
//  0x41b608: mov x1, x0
//  0x41b60c: ldr x0, [PP, #0x6310]
//  0x41b610: stur x1, [FP, #-0x30]
//  0x41b614: stur w0, [x1, #0x27]
//  0x41b618: fmov d0, #1.00000000
//  0x41b61c: stur d0, [x1, #7]
//  0x41b620: add x17, PP, #0x11, lsl #12
//  0x41b624: ldr d1, [x17, #0xb48]
//  0x41b628: stur d1, [x1, #0xf]
//  0x41b62c: add x17, PP, #0x11, lsl #12
//  0x41b630: ldr d1, [x17, #0xb50]
//  0x41b634: stur d1, [x1, #0x17]
//  0x41b638: add x17, PP, #0xe, lsl #12
//  0x41b63c: ldr d1, [x17, #0xe78]
//  0x41b640: stur d1, [x1, #0x1f]
//  0x41b644: bl #0x31d844
//  0x41b648: mov x1, x0
//  0x41b64c: ldr x0, [PP, #0x6310]
//  0x41b650: stur x1, [FP, #-0x38]
//  0x41b654: stur w0, [x1, #0x27]
//  0x41b658: fmov d0, #1.00000000
//  0x41b65c: stur d0, [x1, #7]
//  0x41b660: add x17, PP, #0x11, lsl #12
//  0x41b664: ldr d1, [x17, #0xb58]
//  0x41b668: stur d1, [x1, #0xf]
//  0x41b66c: add x17, PP, #0x11, lsl #12
//  0x41b670: ldr d1, [x17, #0xb60]
//  0x41b674: stur d1, [x1, #0x17]
//  0x41b678: add x17, PP, #0x11, lsl #12
//  0x41b67c: ldr d1, [x17, #0xb68]
//  0x41b680: stur d1, [x1, #0x1f]
//  0x41b684: bl #0x31d844
//  0x41b688: mov x1, x0
//  0x41b68c: ldr x0, [PP, #0x6310]
//  0x41b690: stur x1, [FP, #-0x40]
//  0x41b694: stur w0, [x1, #0x27]
//  0x41b698: fmov d0, #1.00000000
//  0x41b69c: stur d0, [x1, #7]
//  0x41b6a0: add x17, PP, #0xf, lsl #12
//  0x41b6a4: ldr d1, [x17, #0xd60]
//  0x41b6a8: stur d1, [x1, #0xf]
//  0x41b6ac: add x17, PP, #0x11, lsl #12
//  0x41b6b0: ldr d1, [x17, #0xb70]
//  0x41b6b4: stur d1, [x1, #0x17]
//  0x41b6b8: stur d0, [x1, #0x1f]
//  0x41b6bc: bl #0x31d844
//  0x41b6c0: mov x3, x0
//  0x41b6c4: ldr x0, [PP, #0x6310]
//  0x41b6c8: stur x3, [FP, #-0x48]
//  0x41b6cc: stur w0, [x3, #0x27]
//  0x41b6d0: fmov d0, #1.00000000
//  0x41b6d4: stur d0, [x3, #7]
//  0x41b6d8: stur xzr, [x3, #0xf]
//  0x41b6dc: add x17, PP, #0x11, lsl #12
//  0x41b6e0: ldr d1, [x17, #0xb78]
//  0x41b6e4: stur d1, [x3, #0x17]
//  0x41b6e8: add x17, PP, #0x10, lsl #12
//  0x41b6ec: ldr d1, [x17, #0x9a0]
//  0x41b6f0: stur d1, [x3, #0x1f]
//  0x41b6f4: mov x1, NULL
//  0x41b6f8: mov x2, #0xa
//  0x41b6fc: bl #0x61f920
//  0x41b700: mov x2, x0
//  0x41b704: ldur x0, [FP, #-0x20]
//  0x41b708: stur x2, [FP, #-0x50]
//  0x41b70c: stur w0, [x2, #0xf]
//  0x41b710: ldur x0, [FP, #-0x30]
//  0x41b714: stur w0, [x2, #0x13]
//  0x41b718: ldur x0, [FP, #-0x38]
//  0x41b71c: stur w0, [x2, #0x17]
//  0x41b720: ldur x0, [FP, #-0x40]
//  0x41b724: stur w0, [x2, #0x1b]
//  0x41b728: ldur x0, [FP, #-0x48]
//  0x41b72c: stur w0, [x2, #0x1f]
//  0x41b730: add x1, PP, #0x10, lsl #12
//  0x41b734: ldr x1, [x1, #0xc58]
//  0x41b738: bl #0x61e854
//  0x41b73c: mov x1, x0
//  0x41b740: ldur x0, [FP, #-0x50]
//  0x41b744: stur x1, [FP, #-0x20]
//  0x41b748: stur w0, [x1, #0xf]
//  0x41b74c: mov x0, #0xa
//  0x41b750: stur w0, [x1, #0xb]
//  0x41b754: bl #0x3a108c
//  0x41b758: mov x1, x0
//  0x41b75c: add x0, PP, #0xf, lsl #12
//  0x41b760: ldr x0, [x0, #0x190]
//  0x41b764: stur x1, [FP, #-0x30]
//  0x41b768: stur w0, [x1, #0x13]
//  0x41b76c: add x0, PP, #0xe, lsl #12
//  0x41b770: ldr x0, [x0, #0xac8]
//  0x41b774: stur w0, [x1, #0x17]
//  0x41b778: add x0, PP, #0x10, lsl #12
//  0x41b77c: ldr x0, [x0, #0xc78]
//  0x41b780: stur w0, [x1, #0x1b]
//  0x41b784: ldur x0, [FP, #-0x20]
//  0x41b788: stur w0, [x1, #7]
//  0x41b78c: bl #0x391dd8
//  0x41b790: mov x1, x0
//  0x41b794: ldur x0, [FP, #-0x28]
//  0x41b798: stur x1, [FP, #-0x20]
//  0x41b79c: stur w0, [x1, #0x13]
//  0x41b7a0: ldur x0, [FP, #-0x30]
//  0x41b7a4: stur w0, [x1, #0x1b]
//  0x41b7a8: add x0, PP, #0xe, lsl #12
//  0x41b7ac: ldr x0, [x0, #0xb78]
//  0x41b7b0: stur w0, [x1, #0x23]
//  0x41b7b4: bl #0x352b04
//  0x41b7b8: fmov d0, #26.00000000
//  0x41b7bc: stur x0, [FP, #-0x28]
//  0x41b7c0: stur d0, [x0, #7]
//  0x41b7c4: stur d0, [x0, #0xf]
//  0x41b7c8: bl #0x392f28
//  0x41b7cc: mov x1, x0
//  0x41b7d0: ldur x0, [FP, #-0x28]
//  0x41b7d4: stur x1, [FP, #-0x30]
//  0x41b7d8: stur w0, [x1, #7]
//  0x41b7dc: stur w0, [x1, #0xb]
//  0x41b7e0: stur w0, [x1, #0xf]
//  0x41b7e4: stur w0, [x1, #0x13]
//  0x41b7e8: bl #0x391dd8
//  0x41b7ec: mov x1, x0
//  0x41b7f0: ldr x0, [PP, #0x6050]
//  0x41b7f4: stur x1, [FP, #-0x28]
//  0x41b7f8: stur w0, [x1, #7]
//  0x41b7fc: ldur x0, [FP, #-0x30]
//  0x41b800: stur w0, [x1, #0x13]
//  0x41b804: add x0, PP, #0xe, lsl #12
//  0x41b808: ldr x0, [x0, #0xb78]
//  0x41b80c: stur w0, [x1, #0x23]
//  0x41b810: ldur x0, [FP, #-8]
//  0x41b814: ldur w2, [x0, #0x13]
//  0x41b818: add x2, x2, HEAP, lsl #32
//  0x41b81c: ldur w0, [x2, #0x57]
//  0x41b820: add x0, x0, HEAP, lsl #32
//  0x41b824: ldur w2, [x0, #0xb]
//  0x41b828: add x2, x2, HEAP, lsl #32
//  0x41b82c: ldr BARRIER, [PP, #0x40]
//  0x41b830: cmp w2, w16
//  0x41b834: b.eq #0x41bbe4
//  0x41b838: str x2, [SP]
//  0x41b83c: bl #0x2ac0a0
//  0x41b840: mov x1, NULL
//  0x41b844: mov x2, #2
//  0x41b848: stur x0, [FP, #-8]
//  0x41b84c: bl #0x61f920
//  0x41b850: mov x2, x0
//  0x41b854: ldur x0, [FP, #-8]
//  0x41b858: stur x2, [FP, #-0x30]
//  0x41b85c: stur w0, [x2, #0xf]
//  0x41b860: ldr x1, [PP, #0x868]
//  0x41b864: bl #0x61e854
//  0x41b868: mov x1, x0
//  0x41b86c: ldur x0, [FP, #-0x30]
//  0x41b870: stur w0, [x1, #0xf]
//  0x41b874: mov x0, #2
//  0x41b878: stur w0, [x1, #0xb]
//  0x41b87c: str x1, [SP]
//  0x41b880: add x1, PP, #0xc, lsl #12
//  0x41b884: ldr x1, [x1, #0x8e0]
//  0x41b888: add x4, PP, #0xf, lsl #12
//  0x41b88c: ldr x4, [x4, #0xf20]
//  0x41b890: bl #0x3a1dcc
//  0x41b894: stur x0, [FP, #-8]
//  0x41b898: bl #0x31d844
//  0x41b89c: mov x1, x0
//  0x41b8a0: ldr x0, [PP, #0x6310]
//  0x41b8a4: stur x1, [FP, #-0x30]
//  0x41b8a8: stur w0, [x1, #0x27]
//  0x41b8ac: fmov d0, #1.00000000
//  0x41b8b0: stur d0, [x1, #7]
//  0x41b8b4: add x17, PP, #0x11, lsl #12
//  0x41b8b8: ldr d0, [x17, #0xaf0]
//  0x41b8bc: stur d0, [x1, #0xf]
//  0x41b8c0: stur xzr, [x1, #0x17]
//  0x41b8c4: add x17, PP, #0x11, lsl #12
//  0x41b8c8: ldr d0, [x17, #0x8c8]
//  0x41b8cc: stur d0, [x1, #0x1f]
//  0x41b8d0: bl #0x31abec
//  0x41b8d4: mov x1, x0
//  0x41b8d8: add x0, NULL, #0x20
//  0x41b8dc: stur x1, [FP, #-0x38]
//  0x41b8e0: stur w0, [x1, #7]
//  0x41b8e4: ldur x0, [FP, #-0x30]
//  0x41b8e8: stur w0, [x1, #0xb]
//  0x41b8ec: add x0, PP, #0xf, lsl #12
//  0x41b8f0: ldr x0, [x0, #0x208]
//  0x41b8f4: stur w0, [x1, #0x1f]
//  0x41b8f8: add x0, PP, #0x11, lsl #12
//  0x41b8fc: ldr x0, [x0, #0xa48]
//  0x41b900: stur w0, [x1, #0x23]
//  0x41b904: bl #0x393bf8
//  0x41b908: mov x1, x0
//  0x41b90c: ldur x0, [FP, #-8]
//  0x41b910: stur x1, [FP, #-0x30]
//  0x41b914: stur w0, [x1, #0xb]
//  0x41b918: ldur x0, [FP, #-0x38]
//  0x41b91c: stur w0, [x1, #0x13]
//  0x41b920: add x0, PP, #0xf, lsl #12
//  0x41b924: ldr x0, [x0, #0x230]
//  0x41b928: stur w0, [x1, #0x2b]
//  0x41b92c: mov x0, #2
//  0x41b930: stur w0, [x1, #0x37]
//  0x41b934: bl #0x391c0c
//  0x41b938: mov x2, x0
//  0x41b93c: add x0, PP, #0x11, lsl #12
//  0x41b940: ldr x0, [x0, #0xaa0]
//  0x41b944: stur x2, [FP, #-8]
//  0x41b948: stur w0, [x2, #0xf]
//  0x41b94c: ldur x0, [FP, #-0x30]
//  0x41b950: stur w0, [x2, #0xb]
//  0x41b954: add x1, PP, #0xe, lsl #12
//  0x41b958: ldr x1, [x1, #0xad0]
//  0x41b95c: bl #0x3a1420
//  0x41b960: mov x1, x0
//  0x41b964: mov x0, #1
//  0x41b968: stur x1, [FP, #-0x30]
//  0x41b96c: stur x0, [x1, #0x13]
//  0x41b970: add x0, PP, #0x10, lsl #12
//  0x41b974: ldr x0, [x0, #0x950]
//  0x41b978: stur w0, [x1, #0x1b]
//  0x41b97c: ldur x0, [FP, #-8]
//  0x41b980: stur w0, [x1, #0xb]
//  0x41b984: bl #0x3a142c
//  0x41b988: mov x1, x0
//  0x41b98c: add x0, PP, #0x11, lsl #12
//  0x41b990: ldr x0, [x0, #0xb80]
//  0x41b994: stur x1, [FP, #-8]
//  0x41b998: stur w0, [x1, #0xb]
//  0x41b99c: add x0, PP, #0xf, lsl #12
//  0x41b9a0: ldr x0, [x0, #0x170]
//  0x41b9a4: stur w0, [x1, #0xf]
//  0x41b9a8: add x0, PP, #0x11, lsl #12
//  0x41b9ac: ldr x0, [x0, #0xb88]
//  0x41b9b0: stur w0, [x1, #0x13]
//  0x41b9b4: stur w0, [x1, #0x17]
//  0x41b9b8: bl #0x3a1d94
//  0x41b9bc: ldur x2, [FP, #-0x10]
//  0x41b9c0: add x1, PP, #0x11, lsl #12
//  0x41b9c4: ldr x1, [x1, #0xb90]
//  0x41b9c8: stur x0, [FP, #-0x10]
//  0x41b9cc: bl #0x61ec54
//  0x41b9d0: ldur BARRIER, [FP, #-8]
//  0x41b9d4: stp BARRIER, x0, [SP]
//  0x41b9d8: ldur x1, [FP, #-0x10]
//  0x41b9dc: add x4, PP, #0xc, lsl #12
//  0x41b9e0: ldr x4, [x4, #0x208]
//  0x41b9e4: bl #0x3a18c4
//  0x41b9e8: mov x1, NULL
//  0x41b9ec: mov x2, #4
//  0x41b9f0: bl #0x61f920
//  0x41b9f4: mov x2, x0
//  0x41b9f8: ldur x0, [FP, #-0x30]
//  0x41b9fc: stur x2, [FP, #-8]
//  0x41ba00: stur w0, [x2, #0xf]
//  0x41ba04: ldur x0, [FP, #-0x10]
//  0x41ba08: stur w0, [x2, #0x13]
//  0x41ba0c: ldr x1, [PP, #0x5c58]
//  0x41ba10: bl #0x61e854
//  0x41ba14: mov x1, x0
//  0x41ba18: ldur x0, [FP, #-8]
//  0x41ba1c: stur x1, [FP, #-0x10]
//  0x41ba20: stur w0, [x1, #0xf]
//  0x41ba24: mov x2, #4
//  0x41ba28: stur w2, [x1, #0xb]
//  0x41ba2c: bl #0x3a1414
//  0x41ba30: mov x1, x0
//  0x41ba34: ldr x0, [PP, #0x5140]
//  0x41ba38: stur x1, [FP, #-8]
//  0x41ba3c: stur w0, [x1, #0xf]
//  0x41ba40: add x0, PP, #0xe, lsl #12
//  0x41ba44: ldr x0, [x0, #0xae0]
//  0x41ba48: stur w0, [x1, #0x13]
//  0x41ba4c: add x0, PP, #0xe, lsl #12
//  0x41ba50: ldr x0, [x0, #0xb08]
//  0x41ba54: stur w0, [x1, #0x17]
//  0x41ba58: add x0, PP, #0xe, lsl #12
//  0x41ba5c: ldr x0, [x0, #0xb60]
//  0x41ba60: stur w0, [x1, #0x1b]
//  0x41ba64: add x0, PP, #0xe, lsl #12
//  0x41ba68: ldr x0, [x0, #0xaf8]
//  0x41ba6c: stur w0, [x1, #0x23]
//  0x41ba70: add x0, PP, #0xa, lsl #12
//  0x41ba74: ldr x0, [x0, #0xa8]
//  0x41ba78: stur w0, [x1, #0x2b]
//  0x41ba7c: stur xzr, [x1, #0x2f]
//  0x41ba80: ldur x0, [FP, #-0x10]
//  0x41ba84: stur w0, [x1, #0xb]
//  0x41ba88: bl #0x391a04
//  0x41ba8c: stur x0, [FP, #-0x10]
//  0x41ba90: ldr BARRIER, [PP, #0x5458]
//  0x41ba94: add LR, PP, #0x11, lsl #12
//  0x41ba98: ldr LR, [LR, #0xb98]
//  0x41ba9c: stp LR, BARRIER, [SP, #0x18]
//  0x41baa0: add BARRIER, PP, #0x11, lsl #12
//  0x41baa4: ldr BARRIER, [BARRIER, #0x780]
//  0x41baa8: ldur LR, [FP, #-0x28]
//  0x41baac: stp LR, BARRIER, [SP, #8]
//  0x41bab0: ldur BARRIER, [FP, #-8]
//  0x41bab4: str BARRIER, [SP]
//  0x41bab8: mov x1, x0
//  0x41babc: add x4, PP, #0x11, lsl #12
//  0x41bac0: ldr x4, [x4, #0xa78]
//  0x41bac4: bl #0x391490
//  0x41bac8: bl #0x391a04
//  0x41bacc: stur x0, [FP, #-8]
//  0x41bad0: add BARRIER, PP, #0x11, lsl #12
//  0x41bad4: ldr BARRIER, [BARRIER, #0xba0]
//  0x41bad8: add LR, PP, #0x11, lsl #12
//  0x41badc: ldr LR, [LR, #0xba8]
//  0x41bae0: stp LR, BARRIER, [SP, #0x10]
//  0x41bae4: ldur BARRIER, [FP, #-0x20]
//  0x41bae8: ldur LR, [FP, #-0x10]
//  0x41baec: stp LR, BARRIER, [SP]
//  0x41baf0: mov x1, x0
//  0x41baf4: add x4, PP, #0x11, lsl #12
//  0x41baf8: ldr x4, [x4, #0xbb0]
//  0x41bafc: bl #0x391490
//  0x41bb00: bl #0x396460
//  0x41bb04: mov x3, x0
//  0x41bb08: add x0, PP, #0x10, lsl #12
//  0x41bb0c: ldr x0, [x0, #0xc70]
//  0x41bb10: stur x3, [FP, #-0x10]
//  0x41bb14: stur w0, [x3, #0xf]
//  0x41bb18: ldur x0, [FP, #-8]
//  0x41bb1c: stur w0, [x3, #0xb]
//  0x41bb20: mov x1, NULL
//  0x41bb24: mov x2, #4
//  0x41bb28: bl #0x61f920
//  0x41bb2c: mov x2, x0
//  0x41bb30: ldur x0, [FP, #-0x18]
//  0x41bb34: stur x2, [FP, #-8]
//  0x41bb38: stur w0, [x2, #0xf]
//  0x41bb3c: ldur x0, [FP, #-0x10]
//  0x41bb40: stur w0, [x2, #0x13]
//  0x41bb44: ldr x1, [PP, #0x5c58]
//  0x41bb48: bl #0x61e854
//  0x41bb4c: mov x1, x0
//  0x41bb50: ldur x0, [FP, #-8]
//  0x41bb54: stur x1, [FP, #-0x10]
//  0x41bb58: stur w0, [x1, #0xf]
//  0x41bb5c: mov x0, #4
//  0x41bb60: stur w0, [x1, #0xb]
//  0x41bb64: bl #0x39e6f4
//  0x41bb68: mov x1, x0
//  0x41bb6c: add x0, PP, #0xe, lsl #12
//  0x41bb70: ldr x0, [x0, #0xf00]
//  0x41bb74: stur x1, [FP, #-8]
//  0x41bb78: stur w0, [x1, #0xf]
//  0x41bb7c: add x0, PP, #0xe, lsl #12
//  0x41bb80: ldr x0, [x0, #0xf08]
//  0x41bb84: stur w0, [x1, #0x17]
//  0x41bb88: add x0, PP, #0xe, lsl #12
//  0x41bb8c: ldr x0, [x0, #0xf10]
//  0x41bb90: stur w0, [x1, #0x1b]
//  0x41bb94: ldur x0, [FP, #-0x10]
//  0x41bb98: stur w0, [x1, #0xb]
//  0x41bb9c: bl #0x391a04
//  0x41bba0: stur x0, [FP, #-0x10]
//  0x41bba4: ldr BARRIER, [PP, #0x5458]
//  0x41bba8: add LR, PP, #0x11, lsl #12
//  0x41bbac: ldr LR, [LR, #0xbb8]
//  0x41bbb0: stp LR, BARRIER, [SP, #8]
//  0x41bbb4: ldur BARRIER, [FP, #-8]
//  0x41bbb8: str BARRIER, [SP]
//  0x41bbbc: mov x1, x0
//  0x41bbc0: add x4, PP, #0x11, lsl #12
//  0x41bbc4: ldr x4, [x4, #0x868]
//  0x41bbc8: bl #0x391490
//  0x41bbcc: ldur x0, [FP, #-0x10]
//  0x41bbd0: mov SP, FP
//  0x41bbd4: ldp FP, LR, [SP], #0x10
//  0x41bbd8: ret 
//  0x41bbdc: bl #0x61fa28
//  0x41bbe0: b #0x41b4e4
//  0x41bbe4: add x9, PP, #0x11, lsl #12
//  0x41bbe8: ldr x9, [x9, #0xbc0]
//  0x41bbec: bl #0x620258
//
dynamic GameFruitPageState_buildTopWidget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic w0;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41b4c8
  // frame: FP = SP // 0x41b4cc
  // frame: SP = SP - 0x78 // 0x41b4d0
  local_m8 = x1; // 0x41b4d4
  BARRIER = mem(THR, 0x38); // 0x41b4d8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41bbdc
  }
  x1 = 1; // 0x41b4e4
  sub_0x61e890(); // 0x41b4e8
  x0 = local_m8; // 0x41b4f0
  x1 = x0; // 0x41b4ec
  local_m10 = x1; // 0x41b4f4
  memSet(x1, 0xf, w0); // 0x41b4f8
  AllocationStub_NeverScrollableScrollPhysics() /* 0x419950 */; // 0x41b4fc
  x1 = mem((PP + 0x11000), 0xb08) /* Function */; // 0x41b504
  x2 = NULL; // 0x41b508
  local_m18 = x0; // 0x41b50c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41b510
  local_m20 = x0; // 0x41b514
  AllocationStub_ListView() /* 0x3ab5ac */; // 0x41b518
  local_m28 = x0; // 0x41b51c
  BARRIER = NULL + 0x20; // 0x41b520
  LR = local_m18; // 0x41b524
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x41b528
  BARRIER = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x41b52c
  LR = mem((PP + 0x10000), 0x208) /* Double */; // 0x41b534
  // frame: LR, BARRIER, mem(SP) // 0x41b538
  x1 = x0; // 0x41b53c
  x2 = local_m20; // 0x41b540
  x3 = 2; // 0x41b544
  x4 = mem((PP + 0x11000), 0xb10) /* ImmutableArray */; // 0x41b54c
  ListView_ctor_builder() /* 0x3ab2bc */; // 0x41b550
  AllocationStub_Container() /* 0x391a04 */; // 0x41b554
  local_m18 = x0; // 0x41b558
  BARRIER = mem((PP + 0xa000), 0x4e0) /* Double */; // 0x41b560
  LR = mem((PP + 0x11000), 0xb18) /* Obj!AlignmentDirectional@11bd8  */; // 0x41b568
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x41b56c
  BARRIER = mem((PP + 0x11000), 0xb20) /* Obj!EdgeInsetsDirectional@11b6f  */; // 0x41b574
  LR = local_m28; // 0x41b578
  // frame: LR, BARRIER, mem(SP) // 0x41b57c
  x1 = x0; // 0x41b580
  x4 = mem((PP + 0x11000), 0xb28) /* ImmutableArray */; // 0x41b588
  Container_ctor() /* 0x391490 */; // 0x41b58c
  AllocationStub_Radius() /* 0x352b04 */; // 0x41b590
  d0 = 28.00000000 /* bits */; // 0x41b594
  local_m20 = x0; // 0x41b598
  memSet(x0, 7, d0); // 0x41b59c
  memSet(x0, 0xf, d0); // 0x41b5a0
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x41b5a4
  x0 = local_m20; // 0x41b5ac
  x1 = x0; // 0x41b5a8
  local_m28 = x1; // 0x41b5b0
  memSet(x1, 7, w0); // 0x41b5b4
  memSet(x1, 0xb, w0); // 0x41b5b8
  memSet(x1, 0xf, w0); // 0x41b5bc
  memSet(x1, 0x13, w0); // 0x41b5c0
  AllocationStub_Color() /* 0x31d844 */; // 0x41b5c4
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x41b5cc
  x1 = x0; // 0x41b5c8
  local_m20 = x1; // 0x41b5d0
  memSet(x1, 0x27, w0); // 0x41b5d4
  d0 = 1.00000000 /* bits */; // 0x41b5d8
  memSet(x1, 7, d0); // 0x41b5dc
  d1 = 4603685506148176788; // 0x41b5e4
  x17 = PP + 0x11000; // 0x41b5e0
  memSet(x1, 0xf, d1); // 0x41b5e8
  d1 = 4606652583549738526; // 0x41b5f0
  x17 = PP + 0x11000; // 0x41b5ec
  memSet(x1, 0x17, d1); // 0x41b5f4
  d1 = 4607041129399943039; // 0x41b5fc
  x17 = PP + 0x11000; // 0x41b5f8
  memSet(x1, 0x1f, d1); // 0x41b600
  AllocationStub_Color() /* 0x31d844 */; // 0x41b604
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x41b60c
  x1 = x0; // 0x41b608
  local_m30 = x1; // 0x41b610
  memSet(x1, 0x27, w0); // 0x41b614
  d0 = 1.00000000 /* bits */; // 0x41b618
  memSet(x1, 7, d0); // 0x41b61c
  d1 = 4606829195299831487; // 0x41b624
  x17 = PP + 0x11000; // 0x41b620
  memSet(x1, 0xf, d1); // 0x41b628
  d1 = 4603190993247916498; // 0x41b630
  x17 = PP + 0x11000; // 0x41b62c
  memSet(x1, 0x17, d1); // 0x41b634
  d1 = 4606970484699905855; // 0x41b63c
  x17 = PP + 0xe000; // 0x41b638
  memSet(x1, 0x1f, d1); // 0x41b640
  AllocationStub_Color() /* 0x31d844 */; // 0x41b644
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x41b64c
  x1 = x0; // 0x41b648
  local_m38 = x1; // 0x41b650
  memSet(x1, 0x27, w0); // 0x41b654
  d0 = 1.00000000 /* bits */; // 0x41b658
  memSet(x1, 7, d0); // 0x41b65c
  d1 = 4598899327720657555; // 0x41b664
  x17 = PP + 0x11000; // 0x41b660
  memSet(x1, 0xf, d1); // 0x41b668
  d1 = 4584682081838174224; // 0x41b670
  x17 = PP + 0x11000; // 0x41b66c
  memSet(x1, 0x17, d1); // 0x41b674
  d1 = 4606405327099608381; // 0x41b67c
  x17 = PP + 0x11000; // 0x41b678
  memSet(x1, 0x1f, d1); // 0x41b680
  AllocationStub_Color() /* 0x31d844 */; // 0x41b684
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x41b68c
  x1 = x0; // 0x41b688
  local_m40 = x1; // 0x41b690
  memSet(x1, 0x27, w0); // 0x41b694
  d0 = 1.00000000 /* bits */; // 0x41b698
  memSet(x1, 7, d0); // 0x41b69c
  d1 = 4606758550599794302; // 0x41b6a4
  x17 = PP + 0xf000; // 0x41b6a0
  memSet(x1, 0xf, d1); // 0x41b6a8
  d1 = 4594537017493361427; // 0x41b6b0
  x17 = PP + 0x11000; // 0x41b6ac
  memSet(x1, 0x17, d1); // 0x41b6b4
  memSet(x1, 0x1f, d0); // 0x41b6b8
  AllocationStub_Color() /* 0x31d844 */; // 0x41b6bc
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x41b6c4
  x3 = x0; // 0x41b6c0
  local_m48 = x3; // 0x41b6c8
  memSet(x3, 0x27, w0); // 0x41b6cc
  d0 = 1.00000000 /* bits */; // 0x41b6d0
  memSet(x3, 7, d0); // 0x41b6d4
  memSet(x3, 0xf, xzr); // 0x41b6d8
  d1 = 4606581938849701342; // 0x41b6e0
  x17 = PP + 0x11000; // 0x41b6dc
  memSet(x3, 0x17, d1); // 0x41b6e4
  d1 = 4607005807049924447; // 0x41b6ec
  x17 = PP + 0x10000; // 0x41b6e8
  memSet(x3, 0x1f, d1); // 0x41b6f0
  x1 = NULL; // 0x41b6f4
  x2 = 10; // 0x41b6f8
  sub_0x61f920(); // 0x41b6fc
  x0 = local_m20; // 0x41b704
  x2 = x0; // 0x41b700
  local_m50 = x2; // 0x41b708
  memSet(x2, 0xf, w0); // 0x41b70c
  x0 = local_m30; // 0x41b710
  memSet(x2, 0x13, w0); // 0x41b714
  x0 = local_m38; // 0x41b718
  memSet(x2, 0x17, w0); // 0x41b71c
  x0 = local_m40; // 0x41b720
  memSet(x2, 0x1b, w0); // 0x41b724
  x0 = local_m48; // 0x41b728
  memSet(x2, 0x1f, w0); // 0x41b72c
  x1 = mem((PP + 0x10000), 0xc58) /* TypeArguments */; // 0x41b734
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x41b738
  x0 = local_m50; // 0x41b740
  x1 = x0; // 0x41b73c
  local_m20 = x1; // 0x41b744
  memSet(x1, 0xf, w0); // 0x41b748
  x0 = 10; // 0x41b74c
  memSet(x1, 0xb, w0); // 0x41b750
  AllocationStub_LinearGradient() /* 0x3a108c */; // 0x41b754
  x0 = mem((PP + 0xf000), 0x190) /* Obj!Alignment@11bdb  */; // 0x41b760
  x1 = x0; // 0x41b758
  local_m30 = x1; // 0x41b764
  memSet(x1, 0x13, w0); // 0x41b768
  x0 = mem((PP + 0xe000), 0xac8) /* Obj!Alignment@11bdf  */; // 0x41b770
  memSet(x1, 0x17, w0); // 0x41b774
  x0 = mem((PP + 0x10000), 0xc78) /* Obj!TileMode@1233e  */; // 0x41b77c
  memSet(x1, 0x1b, w0); // 0x41b780
  x0 = local_m20; // 0x41b784
  memSet(x1, 7, w0); // 0x41b788
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x41b78c
  x0 = local_m28; // 0x41b794
  x1 = x0; // 0x41b790
  local_m20 = x1; // 0x41b798
  memSet(x1, 0x13, w0); // 0x41b79c
  x0 = local_m30; // 0x41b7a0
  memSet(x1, 0x1b, w0); // 0x41b7a4
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x41b7ac
  memSet(x1, 0x23, w0); // 0x41b7b0
  AllocationStub_Radius() /* 0x352b04 */; // 0x41b7b4
  d0 = 26.00000000 /* bits */; // 0x41b7b8
  local_m28 = x0; // 0x41b7bc
  memSet(x0, 7, d0); // 0x41b7c0
  memSet(x0, 0xf, d0); // 0x41b7c4
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x41b7c8
  x0 = local_m28; // 0x41b7d0
  x1 = x0; // 0x41b7cc
  local_m30 = x1; // 0x41b7d4
  memSet(x1, 7, w0); // 0x41b7d8
  memSet(x1, 0xb, w0); // 0x41b7dc
  memSet(x1, 0xf, w0); // 0x41b7e0
  memSet(x1, 0x13, w0); // 0x41b7e4
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x41b7e8
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x41b7f0
  x1 = x0; // 0x41b7ec
  local_m28 = x1; // 0x41b7f4
  memSet(x1, 7, w0); // 0x41b7f8
  x0 = local_m30; // 0x41b7fc
  memSet(x1, 0x13, w0); // 0x41b800
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x41b808
  memSet(x1, 0x23, w0); // 0x41b80c
  w0 = mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x57); // 0x41b81c
  w2 = mem((local_m8), 0x13); // 0x41b814
  x0 = ((mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x57)) & 0xffffffff) + (HEAP << 32); // 0x41b820
  x2 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x41b818
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x41b82c
  w2 = mem(x0, 0xb); // 0x41b824
  x2 = ((mem(x0, 0xb)) & 0xffffffff) + (HEAP << 32); // 0x41b828
  if (w2 == w16) {
    x9 = mem((PP + 0x11000), 0xbc0) /* Field */; // 0x41bbe8
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x41bbec
  }
  local_0 = x2; // 0x41b838
  StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x41b83c
  x1 = NULL; // 0x41b840
  x2 = 2; // 0x41b844
  local_m8 = x0; // 0x41b848
  sub_0x61f920(); // 0x41b84c
  x0 = local_m8; // 0x41b854
  x2 = x0; // 0x41b850
  local_m30 = x2; // 0x41b858
  memSet(x2, 0xf, w0); // 0x41b85c
  x1 = mem(PP, 0x868) /* TypeArguments */; // 0x41b860
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x41b864
  x0 = local_m30; // 0x41b86c
  x1 = x0; // 0x41b868
  memSet(x1, 0xf, w0); // 0x41b870
  x0 = 2; // 0x41b874
  memSet(x1, 0xb, w0); // 0x41b878
  local_0 = x1; // 0x41b87c
  x1 = "virtual_party_fruitland_page_run_times" /* pp+0xc8e0 */; // 0x41b884
  x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x41b88c
  getString() /* 0x3a1dcc */; // 0x41b890
  local_m8 = x0; // 0x41b894
  AllocationStub_Color() /* 0x31d844 */; // 0x41b898
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x41b8a0
  x1 = x0; // 0x41b89c
  local_m30 = x1; // 0x41b8a4
  memSet(x1, 0x27, w0); // 0x41b8a8
  d0 = 1.00000000 /* bits */; // 0x41b8ac
  memSet(x1, 7, d0); // 0x41b8b0
  d0 = 4598828683020620370; // 0x41b8b8
  x17 = PP + 0x11000; // 0x41b8b4
  memSet(x1, 0xf, d0); // 0x41b8bc
  memSet(x1, 0x17, xzr); // 0x41b8c0
  d0 = 4604533242548622999; // 0x41b8c8
  x17 = PP + 0x11000; // 0x41b8c4
  memSet(x1, 0x1f, d0); // 0x41b8cc
  AllocationStub_TextStyle() /* 0x31abec */; // 0x41b8d0
  x0 = NULL + 0x20; // 0x41b8d8
  x1 = x0; // 0x41b8d4
  local_m38 = x1; // 0x41b8dc
  memSet(x1, 7, w0); // 0x41b8e0
  x0 = local_m30; // 0x41b8e4
  memSet(x1, 0xb, w0); // 0x41b8e8
  x0 = mem((PP + 0xf000), 0x208) /* Double */; // 0x41b8f0
  memSet(x1, 0x1f, w0); // 0x41b8f4
  x0 = mem((PP + 0x11000), 0xa48) /* Obj!FontWeight@12029  */; // 0x41b8fc
  memSet(x1, 0x23, w0); // 0x41b900
  AllocationStub_Text() /* 0x393bf8 */; // 0x41b904
  x0 = local_m8; // 0x41b90c
  x1 = x0; // 0x41b908
  local_m30 = x1; // 0x41b910
  memSet(x1, 0xb, w0); // 0x41b914
  x0 = local_m38; // 0x41b918
  memSet(x1, 0x13, w0); // 0x41b91c
  x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x41b924
  memSet(x1, 0x2b, w0); // 0x41b928
  x0 = 2; // 0x41b92c
  memSet(x1, 0x37, w0); // 0x41b930
  AllocationStub_Padding() /* 0x391c0c */; // 0x41b934
  x0 = mem((PP + 0x11000), 0xaa0) /* Obj!EdgeInsetsDirectional@11b72  */; // 0x41b940
  x2 = x0; // 0x41b938
  local_m8 = x2; // 0x41b944
  memSet(x2, 0xf, w0); // 0x41b948
  x0 = local_m30; // 0x41b94c
  memSet(x2, 0xb, w0); // 0x41b950
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x41b958
  AllocationStub_Flexible() /* 0x3a1420 */; // 0x41b95c
  x0 = 1; // 0x41b964
  x1 = x0; // 0x41b960
  local_m30 = x1; // 0x41b968
  memSet(x1, 0x13, x0); // 0x41b96c
  x0 = mem((PP + 0x10000), 0x950) /* Obj!FlexFit@12273  */; // 0x41b974
  memSet(x1, 0x1b, w0); // 0x41b978
  x0 = local_m8; // 0x41b97c
  memSet(x1, 0xb, w0); // 0x41b980
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x41b984
  x0 = "assets/images/3.0x/game_fruit_icon_help.webp" /* pp+0x11b80 */; // 0x41b990
  x1 = x0; // 0x41b988
  local_m8 = x1; // 0x41b994
  memSet(x1, 0xb, w0); // 0x41b998
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x41b9a0
  memSet(x1, 0xf, w0); // 0x41b9a4
  x0 = mem((PP + 0x11000), 0xb88) /* Double */; // 0x41b9ac
  memSet(x1, 0x13, w0); // 0x41b9b0
  memSet(x1, 0x17, w0); // 0x41b9b4
  sub_0x3a1d94(); // 0x41b9b8
  x1 = mem((PP + 0x11000), 0xb90) /* Function */; // 0x41b9c4
  x2 = local_m10; // 0x41b9bc
  local_m10 = x0; // 0x41b9c8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41b9cc
  BARRIER = local_m8; // 0x41b9d0
  // frame: BARRIER, x0, mem(SP) // 0x41b9d4
  x1 = local_m10; // 0x41b9d8
  x4 = mem((PP + 0xc000), 0x208) /* ImmutableArray */; // 0x41b9e0
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x41b9e4
  x1 = NULL; // 0x41b9e8
  x2 = 4; // 0x41b9ec
  sub_0x61f920(); // 0x41b9f0
  x0 = local_m30; // 0x41b9f8
  x2 = x0; // 0x41b9f4
  local_m8 = x2; // 0x41b9fc
  memSet(x2, 0xf, w0); // 0x41ba00
  x0 = local_m10; // 0x41ba04
  memSet(x2, 0x13, w0); // 0x41ba08
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x41ba0c
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x41ba10
  x0 = local_m8; // 0x41ba18
  x1 = x0; // 0x41ba14
  local_m10 = x1; // 0x41ba1c
  memSet(x1, 0xf, w0); // 0x41ba20
  x2 = 4; // 0x41ba24
  memSet(x1, 0xb, w2); // 0x41ba28
  AllocationStub_Row() /* 0x3a1414 */; // 0x41ba2c
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x41ba34
  x1 = x0; // 0x41ba30
  local_m8 = x1; // 0x41ba38
  memSet(x1, 0xf, w0); // 0x41ba3c
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x41ba44
  memSet(x1, 0x13, w0); // 0x41ba48
  x0 = mem((PP + 0xe000), 0xb08) /* Obj!MainAxisSize@12270  */; // 0x41ba50
  memSet(x1, 0x17, w0); // 0x41ba54
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x41ba5c
  memSet(x1, 0x1b, w0); // 0x41ba60
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x41ba68
  memSet(x1, 0x23, w0); // 0x41ba6c
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x41ba74
  memSet(x1, 0x2b, w0); // 0x41ba78
  memSet(x1, 0x2f, xzr); // 0x41ba7c
  x0 = local_m10; // 0x41ba80
  memSet(x1, 0xb, w0); // 0x41ba84
  AllocationStub_Container() /* 0x391a04 */; // 0x41ba88
  local_m10 = x0; // 0x41ba8c
  BARRIER = mem(PP, 0x5458) /* Double */; // 0x41ba90
  LR = mem((PP + 0x11000), 0xb98) /* Obj!EdgeInsets@11b99  */; // 0x41ba98
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x41ba9c
  BARRIER = mem((PP + 0x11000), 0x780) /* Obj!EdgeInsets@11b9a  */; // 0x41baa4
  LR = local_m28; // 0x41baa8
  // frame: LR, BARRIER, mem(SP, 8) // 0x41baac
  BARRIER = local_m8; // 0x41bab0
  local_0 = BARRIER; // 0x41bab4
  x1 = x0; // 0x41bab8
  x4 = mem((PP + 0x11000), 0xa78) /* ImmutableArray */; // 0x41bac0
  Container_ctor() /* 0x391490 */; // 0x41bac4
  AllocationStub_Container() /* 0x391a04 */; // 0x41bac8
  local_m8 = x0; // 0x41bacc
  BARRIER = mem((PP + 0x11000), 0xba0) /* Double */; // 0x41bad4
  LR = mem((PP + 0x11000), 0xba8) /* Obj!EdgeInsets@11b98  */; // 0x41badc
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x41bae0
  BARRIER = local_m20; // 0x41bae4
  LR = local_m10; // 0x41bae8
  // frame: LR, BARRIER, mem(SP) // 0x41baec
  x1 = x0; // 0x41baf0
  x4 = mem((PP + 0x11000), 0xbb0) /* ImmutableArray */; // 0x41baf8
  Container_ctor() /* 0x391490 */; // 0x41bafc
  AllocationStub_Align() /* 0x396460 */; // 0x41bb00
  x0 = mem((PP + 0x10000), 0xc70) /* Obj!Alignment@11bdc  */; // 0x41bb0c
  x3 = x0; // 0x41bb04
  local_m10 = x3; // 0x41bb10
  memSet(x3, 0xf, w0); // 0x41bb14
  x0 = local_m8; // 0x41bb18
  memSet(x3, 0xb, w0); // 0x41bb1c
  x1 = NULL; // 0x41bb20
  x2 = 4; // 0x41bb24
  sub_0x61f920(); // 0x41bb28
  x0 = local_m18; // 0x41bb30
  x2 = x0; // 0x41bb2c
  local_m8 = x2; // 0x41bb34
  memSet(x2, 0xf, w0); // 0x41bb38
  x0 = local_m10; // 0x41bb3c
  memSet(x2, 0x13, w0); // 0x41bb40
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x41bb44
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x41bb48
  x0 = local_m8; // 0x41bb50
  x1 = x0; // 0x41bb4c
  local_m10 = x1; // 0x41bb54
  memSet(x1, 0xf, w0); // 0x41bb58
  x0 = 4; // 0x41bb5c
  memSet(x1, 0xb, w0); // 0x41bb60
  AllocationStub_Stack() /* 0x39e6f4 */; // 0x41bb64
  x0 = mem((PP + 0xe000), 0xf00) /* Obj!AlignmentDirectional@11bd4  */; // 0x41bb70
  x1 = x0; // 0x41bb68
  local_m8 = x1; // 0x41bb74
  memSet(x1, 0xf, w0); // 0x41bb78
  x0 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x41bb80
  memSet(x1, 0x17, w0); // 0x41bb84
  x0 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x41bb8c
  memSet(x1, 0x1b, w0); // 0x41bb90
  x0 = local_m10; // 0x41bb94
  memSet(x1, 0xb, w0); // 0x41bb98
  AllocationStub_Container() /* 0x391a04 */; // 0x41bb9c
  local_m10 = x0; // 0x41bba0
  BARRIER = mem(PP, 0x5458) /* Double */; // 0x41bba4
  LR = mem((PP + 0x11000), 0xbb8) /* Double */; // 0x41bbac
  // frame: LR, BARRIER, mem(SP, 8) // 0x41bbb0
  BARRIER = local_m8; // 0x41bbb4
  local_0 = BARRIER; // 0x41bbb8
  x1 = x0; // 0x41bbbc
  x4 = mem((PP + 0x11000), 0x868) /* ImmutableArray */; // 0x41bbc4
  Container_ctor() /* 0x391490 */; // 0x41bbc8
  SP = FP; // 0x41bbd0
  x0 = local_m10; // 0x41bbcc
  // frame: FP, LR, mem(SP), 0x10 // 0x41bbd4
  return;
}

// GameFruitPageState_anon_closure_4
// raw disassembly:
//  0x41bbf0: stp FP, LR, [SP, #-0x10]!
//  0x41bbf4: mov FP, SP
//  0x41bbf8: ldr x0, [FP, #0x10]
//  0x41bbfc: ldur w1, [x0, #0x17]
//  0x41bc00: add x1, x1, HEAP, lsl #32
//  0x41bc04: ldr BARRIER, [THR, #0x38]
//  0x41bc08: cmp SP, BARRIER
//  0x41bc0c: b.ls #0x41bc3c
//  0x41bc10: ldur w0, [x1, #0xf]
//  0x41bc14: add x0, x0, HEAP, lsl #32
//  0x41bc18: ldur w1, [x0, #0xf]
//  0x41bc1c: add x1, x1, HEAP, lsl #32
//  0x41bc20: cmp w1, w22
//  0x41bc24: b.eq #0x41bc44
//  0x41bc28: bl #0x41bc48
//  0x41bc2c: mov x0, NULL
//  0x41bc30: mov SP, FP
//  0x41bc34: ldp FP, LR, [SP], #0x10
//  0x41bc38: ret 
//  0x41bc3c: bl #0x61fa28
//  0x41bc40: b #0x41bc10
//  0x41bc44: bl #0x61ffd0
//
dynamic GameFruitPageState_anon_closure_4() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41bbf0
  BARRIER = mem(THR, 0x38); // 0x41bc04
  // frame: FP = SP // 0x41bbf4
  w1 = mem((local_10), 0x17); // 0x41bbfc
  x0 = local_10; // 0x41bbf8
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41bc00
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41bc3c
  }
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf); // 0x41bc18
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x41bc14
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41bc1c
  if (w1 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x41bc44
  }
  GameFruitBetRecordDialog_showGameRuleDialog() /* 0x41bc48 */; // 0x41bc28
  SP = FP; // 0x41bc30
  x0 = NULL; // 0x41bc2c
  // frame: FP, LR, mem(SP), 0x10 // 0x41bc34
  return;
}

// GameFruitPageState_anon_closure_5
// raw disassembly:
//  0x41c320: stp FP, LR, [SP, #-0x10]!
//  0x41c324: mov FP, SP
//  0x41c328: sub SP, SP, #0x28
//  0x41c32c: ldr x0, [FP, #0x20]
//  0x41c330: ldur w1, [x0, #0x17]
//  0x41c334: add x1, x1, HEAP, lsl #32
//  0x41c338: stur x1, [FP, #-8]
//  0x41c33c: ldr BARRIER, [THR, #0x38]
//  0x41c340: cmp SP, BARRIER
//  0x41c344: b.ls #0x41c424
//  0x41c348: mov x1, #2
//  0x41c34c: bl #0x61e890
//  0x41c350: mov x1, x0
//  0x41c354: ldur x0, [FP, #-8]
//  0x41c358: stur x1, [FP, #-0x10]
//  0x41c35c: stur w0, [x1, #0xb]
//  0x41c360: ldr x0, [FP, #0x18]
//  0x41c364: stur w0, [x1, #0xf]
//  0x41c368: ldr x0, [FP, #0x10]
//  0x41c36c: stur w0, [x1, #0x13]
//  0x41c370: sbfx x2, x0, #1, #0x1f
//  0x41c374: tbz w0, #0, #0x41c37c
//  0x41c378: ldur x2, [x0, #7]
//  0x41c37c: cmp x2, #0
//  0x41c380: b.gt #0x41c394
//  0x41c384: cbnz w0, #0x41c3a8
//  0x41c388: add x0, PP, #0x11, lsl #12
//  0x41c38c: ldr x0, [x0, #0xbd0]
//  0x41c390: b #0x41c3ac
//  0x41c394: cmp w0, #2
//  0x41c398: b.ne #0x41c3a8
//  0x41c39c: add x0, PP, #0x11, lsl #12
//  0x41c3a0: ldr x0, [x0, #0xbd8]
//  0x41c3a4: b #0x41c3ac
//  0x41c3a8: ldr x0, [PP, #0x148]
//  0x41c3ac: stur x0, [FP, #-8]
//  0x41c3b0: bl #0x3a142c
//  0x41c3b4: mov x1, x0
//  0x41c3b8: ldur x0, [FP, #-8]
//  0x41c3bc: stur x1, [FP, #-0x18]
//  0x41c3c0: stur w0, [x1, #0xb]
//  0x41c3c4: add x0, PP, #0xf, lsl #12
//  0x41c3c8: ldr x0, [x0, #0x170]
//  0x41c3cc: stur w0, [x1, #0xf]
//  0x41c3d0: bl #0x3a1d94
//  0x41c3d4: ldur x2, [FP, #-0x10]
//  0x41c3d8: add x1, PP, #0x11, lsl #12
//  0x41c3dc: ldr x1, [x1, #0xbe0]
//  0x41c3e0: stur x0, [FP, #-8]
//  0x41c3e4: bl #0x61ec54
//  0x41c3e8: ldur BARRIER, [FP, #-0x18]
//  0x41c3ec: stp BARRIER, x0, [SP]
//  0x41c3f0: ldur x1, [FP, #-8]
//  0x41c3f4: add x4, PP, #0xc, lsl #12
//  0x41c3f8: ldr x4, [x4, #0x208]
//  0x41c3fc: bl #0x3a18c4
//  0x41c400: bl #0x391c0c
//  0x41c404: add x1, PP, #0x11, lsl #12
//  0x41c408: ldr x1, [x1, #0x118]
//  0x41c40c: stur w1, [x0, #0xf]
//  0x41c410: ldur x1, [FP, #-8]
//  0x41c414: stur w1, [x0, #0xb]
//  0x41c418: mov SP, FP
//  0x41c41c: ldp FP, LR, [SP], #0x10
//  0x41c420: ret 
//  0x41c424: bl #0x61fa28
//  0x41c428: b #0x41c348
//
dynamic GameFruitPageState_anon_closure_5() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41c320
  // frame: FP = SP // 0x41c324
  // frame: SP = SP - 0x28 // 0x41c328
  w1 = mem((local_20), 0x17); // 0x41c330
  x0 = local_20; // 0x41c32c
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41c334
  local_m8 = x1; // 0x41c338
  BARRIER = mem(THR, 0x38); // 0x41c33c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41c424
  }
  x1 = 2; // 0x41c348
  sub_0x61e890(); // 0x41c34c
  x0 = local_m8; // 0x41c354
  x1 = x0; // 0x41c350
  local_m10 = x1; // 0x41c358
  memSet(x1, 0xb, w0); // 0x41c35c
  x0 = local_18; // 0x41c360
  memSet(x1, 0xf, w0); // 0x41c364
  x0 = local_10; // 0x41c368
  memSet(x1, 0x13, w0); // 0x41c36c
  x2 = (x0 >> 1) & 0x7fffffff; // 0x41c370
  if (x0 & (1 << 0) == 0) {
  } else {
    x2 = mem(x0, 7); // 0x41c378
  }
  if (x2 > 0) {
    if (w0 != 2) {
      x0 = "" /* pp+0x148 */; // 0x41c3a8
    } else {
      x0 = "assets/images/3.0x/game_fruit_icon_record.webp" /* pp+0x11bd8 */; // 0x41c3a0
    }
    local_m8 = x0; // 0x41c3ac
    AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x41c3b0
    x0 = local_m8; // 0x41c3b8
    x1 = x0; // 0x41c3b4
    local_m18 = x1; // 0x41c3bc
    memSet(x1, 0xb, w0); // 0x41c3c0
    x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x41c3c8
    memSet(x1, 0xf, w0); // 0x41c3cc
    sub_0x3a1d94(); // 0x41c3d0
    x1 = mem((PP + 0x11000), 0xbe0) /* Function */; // 0x41c3dc
    x2 = local_m10; // 0x41c3d4
    local_m8 = x0; // 0x41c3e0
    AllocationStub__Closure() /* 0x61ec54 */; // 0x41c3e4
    BARRIER = local_m18; // 0x41c3e8
    // frame: BARRIER, x0, mem(SP) // 0x41c3ec
    x1 = local_m8; // 0x41c3f0
    x4 = mem((PP + 0xc000), 0x208) /* ImmutableArray */; // 0x41c3f8
    GestureDetector_ctor() /* 0x3a18c4 */; // 0x41c3fc
    AllocationStub_Padding() /* 0x391c0c */; // 0x41c400
    x1 = mem((PP + 0x11000), 0x118) /* Obj!EdgeInsetsDirectional@11b70  */; // 0x41c408
    memSet(x0, 0xf, w1); // 0x41c40c
    x1 = local_m8; // 0x41c410
    memSet(x0, 0xb, w1); // 0x41c414
    SP = FP; // 0x41c418
    // frame: FP, LR, mem(SP), 0x10 // 0x41c41c
    return;
  } else {
    if (w0 != 0) {
      // duplicated branch body (shared block 0x41c3a8, joins at 0x41c3ac; the same code was emitted above)
      x0 = "" /* pp+0x148 */; // 0x41c3a8
    } else {
      x0 = "assets/images/3.0x/game_fruit_icon_ranked.webp" /* pp+0x11bd0 */; // 0x41c38c
    }
  }
}

// GameFruitPageState_anon_closure_6
// raw disassembly:
//  0x41c42c: stp FP, LR, [SP, #-0x10]!
//  0x41c430: mov FP, SP
//  0x41c434: sub SP, SP, #8
//  0x41c438: ldr x0, [FP, #0x10]
//  0x41c43c: ldur w2, [x0, #0x17]
//  0x41c440: add x2, x2, HEAP, lsl #32
//  0x41c444: stur x2, [FP, #-8]
//  0x41c448: ldr BARRIER, [THR, #0x38]
//  0x41c44c: cmp SP, BARRIER
//  0x41c450: b.ls #0x41c4e0
//  0x41c454: ldur w0, [x2, #0x13]
//  0x41c458: add x0, x0, HEAP, lsl #32
//  0x41c45c: sbfx x1, x0, #1, #0x1f
//  0x41c460: tbz w0, #0, #0x41c468
//  0x41c464: ldur x1, [x0, #7]
//  0x41c468: cmp x1, #0
//  0x41c46c: b.gt #0x41c4a8
//  0x41c470: cbnz w0, #0x41c4d0
//  0x41c474: add x1, PP, #0x11, lsl #12
//  0x41c478: ldr x1, [x1, #0xbe8]
//  0x41c47c: ldr x4, [PP, #0x4c0]
//  0x41c480: bl #0x3a8e60
//  0x41c484: bl #0x3a86c0
//  0x41c488: mov x1, x0
//  0x41c48c: add x2, PP, #9, lsl #12
//  0x41c490: ldr x2, [x2, #0xeb0]
//  0x41c494: ldr x4, [PP, #0x278]
//  0x41c498: bl #0x3a99b4
//  0x41c49c: mov x1, x0
//  0x41c4a0: bl #0x3a6ae8
//  0x41c4a4: b #0x41c4d0
//  0x41c4a8: cmp w0, #2
//  0x41c4ac: b.ne #0x41c4d0
//  0x41c4b0: add x1, PP, #0x11, lsl #12
//  0x41c4b4: ldr x1, [x1, #0xbf0]
//  0x41c4b8: ldr x4, [PP, #0x4c0]
//  0x41c4bc: bl #0x3a8e60
//  0x41c4c0: ldur x0, [FP, #-8]
//  0x41c4c4: ldur w1, [x0, #0xf]
//  0x41c4c8: add x1, x1, HEAP, lsl #32
//  0x41c4cc: bl #0x41c4e8
//  0x41c4d0: mov x0, NULL
//  0x41c4d4: mov SP, FP
//  0x41c4d8: ldp FP, LR, [SP], #0x10
//  0x41c4dc: ret 
//  0x41c4e0: bl #0x61fa28
//  0x41c4e4: b #0x41c454
//
dynamic GameFruitPageState_anon_closure_6() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41c42c
  // frame: FP = SP // 0x41c430
  // frame: SP = SP - 8 // 0x41c434
  w2 = mem((local_10), 0x17); // 0x41c43c
  x0 = local_10; // 0x41c438
  x2 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41c440
  local_m8 = x2; // 0x41c444
  BARRIER = mem(THR, 0x38); // 0x41c448
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41c4e0
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x41c458
  x1 = (((w0 & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x41c45c
  if (x0 & (1 << 0) == 0) {
  } else {
    x1 = mem(x0, 7); // 0x41c464
  }
  if (x1 > 0) {
    if (w0 != 2) {
    } else {
      x1 = "FruitGame_RecordClick" /* pp+0x11bf0 */; // 0x41c4b4
      x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x41c4b8
      EventTrack_eventClick() /* 0x3a8e60 */; // 0x41c4bc
      w1 = mem((local_m8), 0xf); // 0x41c4c4
      x0 = local_m8; // 0x41c4c0
      x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41c4c8
      GameFruitBetRecordDialog_showGameDialog() /* 0x41c4e8 */; // 0x41c4cc
    }
  } else {
    if (w0 != 0) {
    } else {
      x1 = "FruitGame_RankClick" /* pp+0x11be8 */; // 0x41c478
      x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x41c47c
      EventTrack_eventClick() /* 0x3a8e60 */; // 0x41c480
      RouterNative_getInstance() /* 0x3a86c0 */; // 0x41c484
      x1 = x0; // 0x41c488
      x2 = "page_fruit_game_ranking" /* pp+0x9eb0 */; // 0x41c490
      x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x41c494
      RouterNative_routeFlutter() /* 0x3a99b4 */; // 0x41c498
      x1 = x0; // 0x41c49c
      SoulNavigator_navigate() /* 0x3a6ae8 */; // 0x41c4a0
    }
  }
  SP = FP; // 0x41c4d4
  x0 = NULL; // 0x41c4d0
  // frame: FP, LR, mem(SP), 0x10 // 0x41c4d8
  return;
}

// GameFruitPageState_anon_closure_7
// raw disassembly:
//  0x41c568: stp FP, LR, [SP, #-0x10]!
//  0x41c56c: mov FP, SP
//  0x41c570: ldr BARRIER, [THR, #0x38]
//  0x41c574: cmp SP, BARRIER
//  0x41c578: b.ls #0x41c590
//  0x41c57c: bl #0x41c9dc
//  0x41c580: mov x0, NULL
//  0x41c584: mov SP, FP
//  0x41c588: ldp FP, LR, [SP], #0x10
//  0x41c58c: ret 
//  0x41c590: bl #0x61fa28
//  0x41c594: b #0x41c57c
//
dynamic GameFruitPageState_anon_closure_7() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41c568
  BARRIER = mem(THR, 0x38); // 0x41c570
  // frame: FP = SP // 0x41c56c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41c590
  }
  NativeDialog_toCoinDialog() /* 0x41c9dc */; // 0x41c57c
  SP = FP; // 0x41c584
  x0 = NULL; // 0x41c580
  // frame: FP, LR, mem(SP), 0x10 // 0x41c588
  return;
}

// GameFruitPageState_dispose
// raw disassembly:
//  0x450a60: stp FP, LR, [SP, #-0x10]!
//  0x450a64: mov FP, SP
//  0x450a68: sub SP, SP, #8
//  0x450a6c: mov x0, x1
//  0x450a70: stur x1, [FP, #-8]
//  0x450a74: ldr BARRIER, [THR, #0x38]
//  0x450a78: cmp SP, BARRIER
//  0x450a7c: b.ls #0x450ab0
//  0x450a80: mov x1, x0
//  0x450a84: bl #0x451970
//  0x450a88: ldur x0, [FP, #-8]
//  0x450a8c: ldur w2, [x0, #0x17]
//  0x450a90: add x2, x2, HEAP, lsl #32
//  0x450a94: add x1, PP, #0x10, lsl #12
//  0x450a98: ldr x1, [x1, #0xa98]
//  0x450a9c: bl #0x450ab8
//  0x450aa0: mov x0, NULL
//  0x450aa4: mov SP, FP
//  0x450aa8: ldp FP, LR, [SP], #0x10
//  0x450aac: ret 
//  0x450ab0: bl #0x61fa28
//  0x450ab4: b #0x450a80
//
dynamic GameFruitPageState_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x450a60
  // frame: FP = SP // 0x450a64
  // frame: SP = SP - 8 // 0x450a68
  x0 = x1; // 0x450a6c
  local_m8 = x1; // 0x450a70
  BARRIER = mem(THR, 0x38); // 0x450a74
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x450ab0
  }
  x1 = x0; // 0x450a80
  SoulState_dispose() /* 0x451970 */; // 0x450a84
  w2 = mem((local_m8), 0x17); // 0x450a8c
  x0 = local_m8; // 0x450a88
  x1 = "soul.event.business.charge_coin_success" /* pp+0x10a98 */; // 0x450a98
  x2 = ((mem((local_m8), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x450a90
  SOEventBus_removeEventListener() /* 0x450ab8 */; // 0x450a9c
  SP = FP; // 0x450aa4
  x0 = NULL; // 0x450aa0
  // frame: FP, LR, mem(SP), 0x10 // 0x450aa8
  return;
}

// GameFruitPageState_onPageShow
// raw disassembly:
//  0x4a9d2c: stp FP, LR, [SP, #-0x10]!
//  0x4a9d30: mov FP, SP
//  0x4a9d34: sub SP, SP, #0x20
//  0x4a9d38: mov x0, x1
//  0x4a9d3c: stur x1, [FP, #-8]
//  0x4a9d40: ldr BARRIER, [THR, #0x38]
//  0x4a9d44: cmp SP, BARRIER
//  0x4a9d48: b.ls #0x4a9e2c
//  0x4a9d4c: mov x1, x0
//  0x4a9d50: bl #0x4aa6c4
//  0x4a9d54: mov x1, NULL
//  0x4a9d58: mov x2, #4
//  0x4a9d5c: bl #0x61f920
//  0x4a9d60: stur x0, [FP, #-0x10]
//  0x4a9d64: add BARRIER, PP, #0x17, lsl #12
//  0x4a9d68: ldr BARRIER, [BARRIER, #0xc88]
//  0x4a9d6c: stur w16, [x0, #0xf]
//  0x4a9d70: ldur x1, [FP, #-8]
//  0x4a9d74: ldur w2, [x1, #0xb]
//  0x4a9d78: add x2, x2, HEAP, lsl #32
//  0x4a9d7c: cmp w2, w22
//  0x4a9d80: b.eq #0x4a9e34
//  0x4a9d84: ldur w1, [x2, #0xb]
//  0x4a9d88: add x1, x1, HEAP, lsl #32
//  0x4a9d8c: cmp w1, w22
//  0x4a9d90: b.ne #0x4a9da4
//  0x4a9d94: ldr BARRIER, [THR, #0x90]
//  0x4a9d98: stp BARRIER, NULL, [SP]
//  0x4a9d9c: bl #0x27c0c8
//  0x4a9da0: mov x1, x0
//  0x4a9da4: ldur x0, [x1, #-1]
//  0x4a9da8: ubfx x0, x0, #0xc, #0x14
//  0x4a9dac: add x2, PP, #0x17, lsl #12
//  0x4a9db0: ldr x2, [x2, #0xc88]
//  0x4a9db4: sub LR, x0, #1, lsl #12
//  0x4a9db8: ldr LR, [x21, LR, lsl #3]
//  0x4a9dbc: blr LR
//  0x4a9dc0: cmp w0, w22
//  0x4a9dc4: b.ne #0x4a9dcc
//  0x4a9dc8: ldr x0, [PP, #0x148]
//  0x4a9dcc: ldur x1, [FP, #-0x10]
//  0x4a9dd0: add x25, x1, #0x13
//  0x4a9dd4: str w0, [x25]
//  0x4a9dd8: tbz w0, #0, #0x4a9df4
//  0x4a9ddc: ldurb w16, [x1, #-1]
//  0x4a9de0: ldurb w17, [x0, #-1]
//  0x4a9de4: and BARRIER, x17, BARRIER, lsr #2
//  0x4a9de8: tst BARRIER, HEAP, lsr #32
//  0x4a9dec: b.eq #0x4a9df4
//  0x4a9df0: bl #0x61db00
//  0x4a9df4: ldr BARRIER, [PP, #0xbf0]
//  0x4a9df8: ldur LR, [FP, #-0x10]
//  0x4a9dfc: stp LR, BARRIER, [SP]
//  0x4a9e00: bl #0x27c0c8
//  0x4a9e04: str x0, [SP]
//  0x4a9e08: add x1, PP, #0x17, lsl #12
//  0x4a9e0c: ldr x1, [x1, #0xc90]
//  0x4a9e10: add x4, PP, #0xf, lsl #12
//  0x4a9e14: ldr x4, [x4, #0xf20]
//  0x4a9e18: bl #0x4a9e38
//  0x4a9e1c: mov x0, NULL
//  0x4a9e20: mov SP, FP
//  0x4a9e24: ldp FP, LR, [SP], #0x10
//  0x4a9e28: ret 
//  0x4a9e2c: bl #0x61fa28
//  0x4a9e30: b #0x4a9d4c
//  0x4a9e34: bl #0x61ffd0
//
dynamic GameFruitPageState_onPageShow() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x25;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4a9d2c
  // frame: FP = SP // 0x4a9d30
  // frame: SP = SP - 0x20 // 0x4a9d34
  x0 = x1; // 0x4a9d38
  local_m8 = x1; // 0x4a9d3c
  BARRIER = mem(THR, 0x38); // 0x4a9d40
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4a9e2c
  }
  x1 = x0; // 0x4a9d4c
  SoulState_onPageShow() /* 0x4aa6c4 */; // 0x4a9d50
  x1 = NULL; // 0x4a9d54
  x2 = 4; // 0x4a9d58
  sub_0x61f920(); // 0x4a9d5c
  local_m10 = x0; // 0x4a9d60
  BARRIER = "enterfrom" /* pp+0x17c88 */; // 0x4a9d68
  memSet(x0, 0xf, w16); // 0x4a9d6c
  w2 = mem((local_m8), 0xb); // 0x4a9d74
  x1 = local_m8; // 0x4a9d70
  x2 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x4a9d78
  if (w2 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4a9e34
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4a9d88
  if (w1 != w22) {
  } else {
    BARRIER = mem(THR, 0x90); // 0x4a9d94
    // frame: BARRIER, NULL, mem(SP) // 0x4a9d98
    Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x4a9d9c
    x1 = x0; // 0x4a9da0
  }
  LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4a9db8
  x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4a9da8
  x2 = "enterfrom" /* pp+0x17c88 */; // 0x4a9db0
  callIndirect(LR); // 0x4a9dbc
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x4a9dc8
  }
  x1 = local_m10; // 0x4a9dcc
  x25 = (local_m10) + 0x13; // 0x4a9dd0
  memSet(x25, w0); // 0x4a9dd4
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4a9de4
    w17 = mem(x0, -1); // 0x4a9de0
    x16 = w16 & 0xffffffff; // 0x4a9ddc
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4a9de0
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      sub_0x61db00(); // 0x4a9df0
    }
  }
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x4a9df4
  LR = local_m10; // 0x4a9df8
  // frame: LR, BARRIER, mem(SP) // 0x4a9dfc
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x4a9e00
  local_0 = x0; // 0x4a9e04
  x1 = "VirtualParty_FruitGamePage" /* pp+0x17c90 */; // 0x4a9e0c
  x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x4a9e14
  EventTrack_eventPv() /* 0x4a9e38 */; // 0x4a9e18
  SP = FP; // 0x4a9e20
  x0 = NULL; // 0x4a9e1c
  // frame: FP, LR, mem(SP), 0x10 // 0x4a9e24
  return;
}

// GameFruitPageState_initState
// raw disassembly:
//  0x4d1b60: stp FP, LR, [SP, #-0x10]!
//  0x4d1b64: mov FP, SP
//  0x4d1b68: sub SP, SP, #0x10
//  0x4d1b6c: stur x1, [FP, #-8]
//  0x4d1b70: ldr BARRIER, [THR, #0x38]
//  0x4d1b74: cmp SP, BARRIER
//  0x4d1b78: b.ls #0x4d1bfc
//  0x4d1b7c: mov x1, #1
//  0x4d1b80: bl #0x61e890
//  0x4d1b84: mov x1, x0
//  0x4d1b88: ldur x0, [FP, #-8]
//  0x4d1b8c: stur w0, [x1, #0xf]
//  0x4d1b90: mov x2, x1
//  0x4d1b94: add x1, PP, #0x11, lsl #12
//  0x4d1b98: ldr x1, [x1, #0xc00]
//  0x4d1b9c: bl #0x61ec54
//  0x4d1ba0: mov x2, x0
//  0x4d1ba4: add x1, PP, #0x10, lsl #12
//  0x4d1ba8: ldr x1, [x1, #0xa98]
//  0x4d1bac: bl #0x4d3338
//  0x4d1bb0: ldur x1, [FP, #-8]
//  0x4d1bb4: stur w0, [x1, #0x17]
//  0x4d1bb8: ldurb w16, [x1, #-1]
//  0x4d1bbc: ldurb w17, [x0, #-1]
//  0x4d1bc0: and BARRIER, x17, BARRIER, lsr #2
//  0x4d1bc4: tst BARRIER, HEAP, lsr #32
//  0x4d1bc8: b.eq #0x4d1bd0
//  0x4d1bcc: bl #0x61e04c
//  0x4d1bd0: ldur w0, [x1, #0x13]
//  0x4d1bd4: add x0, x0, HEAP, lsl #32
//  0x4d1bd8: mov x1, x0
//  0x4d1bdc: stur x0, [FP, #-0x10]
//  0x4d1be0: bl #0x4d1c04
//  0x4d1be4: ldur x1, [FP, #-0x10]
//  0x4d1be8: bl #0x41e8b4
//  0x4d1bec: mov x0, NULL
//  0x4d1bf0: mov SP, FP
//  0x4d1bf4: ldp FP, LR, [SP], #0x10
//  0x4d1bf8: ret 
//  0x4d1bfc: bl #0x61fa28
//  0x4d1c00: b #0x4d1b7c
//
dynamic GameFruitPageState_initState() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d1b60
  // frame: FP = SP // 0x4d1b64
  // frame: SP = SP - 0x10 // 0x4d1b68
  local_m8 = x1; // 0x4d1b6c
  BARRIER = mem(THR, 0x38); // 0x4d1b70
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d1bfc
  }
  x1 = 1; // 0x4d1b7c
  sub_0x61e890(); // 0x4d1b80
  x0 = local_m8; // 0x4d1b88
  x1 = x0; // 0x4d1b84
  memSet(x1, 0xf, w0); // 0x4d1b8c
  x1 = mem((PP + 0x11000), 0xc00) /* Function */; // 0x4d1b98
  x2 = x1; // 0x4d1b90
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d1b9c
  x1 = "soul.event.business.charge_coin_success" /* pp+0x10a98 */; // 0x4d1ba8
  x2 = x0; // 0x4d1ba0
  SOEventBus_addEventListener() /* 0x4d3338 */; // 0x4d1bac
  x1 = local_m8; // 0x4d1bb0
  memSet(x1, 0x17, w0); // 0x4d1bb4
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d1bc0
  w16 = mem(x1, -1); // 0x4d1bb8
  w17 = mem(x0, -1); // 0x4d1bbc
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d1bb8
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d1bbc
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d1bcc
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d1bd4
  x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d1bd8
  local_m10 = x0; // 0x4d1bdc
  GameFruitNotifier_getCurrentProcess() /* 0x4d1c04 */; // 0x4d1be0
  x1 = local_m10; // 0x4d1be4
  SafeChangeNotifier_requestTotalCoins() /* 0x41e8b4 */; // 0x4d1be8
  SP = FP; // 0x4d1bf0
  x0 = NULL; // 0x4d1bec
  // frame: FP, LR, mem(SP), 0x10 // 0x4d1bf4
  return;
}

// GameFruitPageState_anon_closure_8
// raw disassembly:
//  0x4d3964: stp FP, LR, [SP, #-0x10]!
//  0x4d3968: mov FP, SP
//  0x4d396c: sub SP, SP, #0x18
//  0x4d3970: ldr x0, [FP, #0x20]
//  0x4d3974: ldur w1, [x0, #0x17]
//  0x4d3978: add x1, x1, HEAP, lsl #32
//  0x4d397c: stur x1, [FP, #-8]
//  0x4d3980: ldr BARRIER, [THR, #0x38]
//  0x4d3984: cmp SP, BARRIER
//  0x4d3988: b.ls #0x4d3a30
//  0x4d398c: ldr x0, [FP, #0x10]
//  0x4d3990: cmp w0, w22
//  0x4d3994: b.ne #0x4d39ac
//  0x4d3998: ldr BARRIER, [THR, #0x90]
//  0x4d399c: stp BARRIER, NULL, [SP]
//  0x4d39a0: bl #0x27c0c8
//  0x4d39a4: mov x1, x0
//  0x4d39a8: b #0x4d39b0
//  0x4d39ac: mov x1, x0
//  0x4d39b0: ldur x3, [FP, #-8]
//  0x4d39b4: ldur x0, [x1, #-1]
//  0x4d39b8: ubfx x0, x0, #0xc, #0x14
//  0x4d39bc: add x2, PP, #0x10, lsl #12
//  0x4d39c0: ldr x2, [x2, #0xd68]
//  0x4d39c4: sub LR, x0, #1, lsl #12
//  0x4d39c8: ldr LR, [x21, LR, lsl #3]
//  0x4d39cc: blr LR
//  0x4d39d0: mov x1, x0
//  0x4d39d4: ldur x0, [FP, #-8]
//  0x4d39d8: ldur w2, [x0, #0xf]
//  0x4d39dc: add x2, x2, HEAP, lsl #32
//  0x4d39e0: ldur w0, [x2, #0x13]
//  0x4d39e4: add x0, x0, HEAP, lsl #32
//  0x4d39e8: cmp w1, w22
//  0x4d39ec: b.eq #0x4d3a14
//  0x4d39f0: mov x2, #0x3c
//  0x4d39f4: tbz w1, #0, #0x4d3a00
//  0x4d39f8: ldur x2, [x1, #-1]
//  0x4d39fc: ubfx x2, x2, #0xc, #0x14
//  0x4d3a00: sub BARRIER, x2, #0x3c
//  0x4d3a04: cmp BARRIER, #1
//  0x4d3a08: b.hi #0x4d3a14
//  0x4d3a0c: mov x2, x1
//  0x4d3a10: b #0x4d3a18
//  0x4d3a14: mov x2, NULL
//  0x4d3a18: mov x1, x0
//  0x4d3a1c: bl #0x4d3a38
//  0x4d3a20: mov x0, NULL
//  0x4d3a24: mov SP, FP
//  0x4d3a28: ldp FP, LR, [SP], #0x10
//  0x4d3a2c: ret 
//  0x4d3a30: bl #0x61fa28
//  0x4d3a34: b #0x4d398c
//
dynamic GameFruitPageState_anon_closure_8() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d3964
  // frame: FP = SP // 0x4d3968
  // frame: SP = SP - 0x18 // 0x4d396c
  w1 = mem((local_20), 0x17); // 0x4d3974
  x0 = local_20; // 0x4d3970
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d3978
  local_m8 = x1; // 0x4d397c
  BARRIER = mem(THR, 0x38); // 0x4d3980
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d3a30
  }
  x0 = local_10; // 0x4d398c
  if (w0 != w22) {
    x1 = x0; // 0x4d39ac
  } else {
    BARRIER = mem(THR, 0x90); // 0x4d3998
    // frame: BARRIER, NULL, mem(SP) // 0x4d399c
    Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x4d39a0
    x1 = x0; // 0x4d39a4
  }
  LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d39c8
  x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4d39b8
  x2 = "soulCoinTotal" /* pp+0x10d68 */; // 0x4d39c0
  x3 = local_m8; // 0x4d39b0
  callIndirect(LR); // 0x4d39cc
  w0 = mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13); // 0x4d39e0
  w2 = mem((local_m8), 0xf); // 0x4d39d8
  x0 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4d39e4
  x1 = x0; // 0x4d39d0
  x2 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d39dc
  if (w1 == w22) {
  } else {
    x2 = 60; // 0x4d39f0
    if (x1 & (1 << 0) == 0) {
    } else {
      x2 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4d39fc
    }
    BARRIER = x2 - 0x3c; // 0x4d3a00
    if (BARRIER > 1) {
      x2 = NULL; // 0x4d3a14
    } else {
      x2 = x1; // 0x4d3a0c
    }
    x1 = x0; // 0x4d3a18
    SafeChangeNotifier_updateCoinSum() /* 0x4d3a38 */; // 0x4d3a1c
    SP = FP; // 0x4d3a24
    x0 = NULL; // 0x4d3a20
    // frame: FP, LR, mem(SP), 0x10 // 0x4d3a28
    return;
  }
}

// GameFruitPage_createState
// raw disassembly:
//  0x4c2cfc: stp FP, LR, [SP, #-0x10]!
//  0x4c2d00: mov FP, SP
//  0x4c2d04: sub SP, SP, #0x10
//  0x4c2d08: ldr BARRIER, [THR, #0x38]
//  0x4c2d0c: cmp SP, BARRIER
//  0x4c2d10: b.ls #0x4c2d74
//  0x4c2d14: add x1, PP, #0xb, lsl #12
//  0x4c2d18: ldr x1, [x1, #0x838]
//  0x4c2d1c: bl #0x4c3930
//  0x4c2d20: mov x1, x0
//  0x4c2d24: ldr x0, [PP, #0x148]
//  0x4c2d28: stur x1, [FP, #-8]
//  0x4c2d2c: stur w0, [x1, #0x17]
//  0x4c2d30: bl #0x4c3924
//  0x4c2d34: mov x1, x0
//  0x4c2d38: stur x0, [FP, #-0x10]
//  0x4c2d3c: bl #0x4c2d7c
//  0x4c2d40: ldur x0, [FP, #-0x10]
//  0x4c2d44: ldur x1, [FP, #-8]
//  0x4c2d48: stur w0, [x1, #0x13]
//  0x4c2d4c: ldurb w16, [x1, #-1]
//  0x4c2d50: ldurb w17, [x0, #-1]
//  0x4c2d54: and BARRIER, x17, BARRIER, lsr #2
//  0x4c2d58: tst BARRIER, HEAP, lsr #32
//  0x4c2d5c: b.eq #0x4c2d64
//  0x4c2d60: bl #0x61e04c
//  0x4c2d64: mov x0, x1
//  0x4c2d68: mov SP, FP
//  0x4c2d6c: ldp FP, LR, [SP], #0x10
//  0x4c2d70: ret 
//  0x4c2d74: bl #0x61fa28
//  0x4c2d78: b #0x4c2d14
//
dynamic GameFruitPage_createState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c2cfc
  BARRIER = mem(THR, 0x38); // 0x4c2d08
  // frame: FP = SP // 0x4c2d00
  // frame: SP = SP - 0x10 // 0x4c2d04
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c2d74
  }
  x1 = mem((PP + 0xb000), 0x838) /* TypeArguments */; // 0x4c2d18
  AllocationStub__GameFruitPageState() /* 0x4c3930 */; // 0x4c2d1c
  x0 = "" /* pp+0x148 */; // 0x4c2d24
  x1 = x0; // 0x4c2d20
  local_m8 = x1; // 0x4c2d28
  memSet(x1, 0x17, w0); // 0x4c2d2c
  AllocationStub_GameFruitNotifier() /* 0x4c3924 */; // 0x4c2d30
  x1 = x0; // 0x4c2d34
  local_m10 = x0; // 0x4c2d38
  GameFruitNotifier_ctor() /* 0x4c2d7c */; // 0x4c2d3c
  x0 = local_m10; // 0x4c2d40
  x1 = local_m8; // 0x4c2d44
  memSet(x1, 0x13, w0); // 0x4c2d48
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c2d54
  w16 = mem(x1, -1); // 0x4c2d4c
  w17 = mem(x0, -1); // 0x4c2d50
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c2d4c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c2d50
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c2d60
  }
  SP = FP; // 0x4c2d68
  x0 = x1; // 0x4c2d64
  // frame: FP, LR, mem(SP), 0x10 // 0x4c2d6c
  return;
}
