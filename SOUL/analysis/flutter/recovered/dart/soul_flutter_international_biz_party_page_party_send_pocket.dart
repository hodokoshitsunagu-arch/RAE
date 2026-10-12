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

dynamic AllocationStub_BorderRadius, AllocationStub_BoxConstraints;
dynamic AllocationStub_BoxDecoration, AllocationStub_ChangeNotifierProvider;
dynamic AllocationStub_Color, AllocationStub_Column, AllocationStub_Container;
dynamic AllocationStub_Divider, AllocationStub_EdgeInsets, AllocationStub_Expanded;
dynamic AllocationStub_GridView, AllocationStub_LinearGradient, AllocationStub_MediaQuery;
dynamic AllocationStub_NeverScrollableScrollPhysics, AllocationStub_Padding;
dynamic AllocationStub_PartyPocketButton, AllocationStub_PartyPocketDialog;
dynamic AllocationStub_PartySendPocketItem, AllocationStub_PartySendPocketNotifier;
dynamic AllocationStub_Radius, AllocationStub_Row, AllocationStub_SOAssetImage;
dynamic AllocationStub_SOCoinWidget, AllocationStub_SOImage, AllocationStub_Selector;
dynamic AllocationStub_SingleChildScrollView, AllocationStub_SizedBox;
dynamic AllocationStub_SliverGridDelegateWithFixedCrossAxisCount, AllocationStub_Text;
dynamic AllocationStub_Wrap, AllocationStub__Closure, AllocationStub__GrowableList;
dynamic AllocationStub__Mint, AllocationStub__SendPocketPageState;
dynamic AllocationStub__ValueInheritedProvider, BARRIER, Border_factory_ctor_all;
dynamic Container_ctor, EventTrack_eventClick, EventTrack_eventPv, FP, GestureDetector_ctor;
dynamic GridView_ctor_builder, HEAP, LR;
dynamic LateInitializationErrorSharedWithoutFpuRegsStub_0x620258, Map_factory_ctor_fromLiteral;
dynamic MediaQuery_ctor_removePadding, NULL, NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0;
dynamic PP, PartySendPocketItem_ctor_createCoin, PartySendPocketItem_ctor_createNum;
dynamic PartySendPocketNotifier_ctor, PartySendPocketNotifier_requestData;
dynamic PartySendPocketNotifier_sendRedPocket, PartySendPocketNotifier_updateCoinIndex;
dynamic PartySendPocketNotifier_updatePocketNum, RangeErrorSharedWithoutFpuRegsStub_0x61fe70;
dynamic RouterNative_getInstance, RouterNative_routeFlutter, SOColors_get_color_282828;
dynamic SOColors_get_color_9a4507, SOColors_get_s_10, SOEventBus_addEventListener;
dynamic SOEventBus_removeEventListener, SP, SafeChangeNotifier_get_coinSum;
dynamic ScreenUtil_getPaddingBottom, SoulNavigator_navigate, SoulState_dispose;
dynamic SoulState_onPageShow, StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR;
dynamic TextStyle_copyWith, TextStyles_commonContent, TextStyles_fontDINCondensedBold;
dynamic TextStyles_pageStandardTitle, WriteBarrierStub_x1, WriteBarrierStub_x2, d0, d1, d2, d3;
dynamic getString, int_kNull, local_0, local_10, local_18, local_20, local_28, local_m10;
dynamic local_m18, local_m20, local_m28, local_m30, local_m38, local_m40, local_m48, local_m50;
dynamic local_m8, sub_0x3a1d94, sub_0x61d8f8, sub_0x61e890, sub_0x61f920, sub_0x62a0c0, v0_16b;
dynamic v1_16b, w0, w1, w16, w17, w2, w22, w3, w4, w5, w6, w7, x0, x1, x16, x17, x2, x21, x3;
dynamic x4, x5, x6, x7, x8, x9, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$party$page_party_send_pocket
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// SendPocketPageState_anon_closure
// raw disassembly:
//  0x41c598: stp FP, LR, [SP, #-0x10]!
//  0x41c59c: mov FP, SP
//  0x41c5a0: sub SP, SP, #0x30
//  0x41c5a4: ldr BARRIER, [THR, #0x38]
//  0x41c5a8: cmp SP, BARRIER
//  0x41c5ac: b.ls #0x41c744
//  0x41c5b0: bl #0x41c788
//  0x41c5b4: fmov d0, #22.00000000
//  0x41c5b8: stur x0, [FP, #-8]
//  0x41c5bc: stur d0, [x0, #0xb]
//  0x41c5c0: bl #0x31d844
//  0x41c5c4: mov x1, x0
//  0x41c5c8: ldr x0, [PP, #0x6310]
//  0x41c5cc: stur w0, [x1, #0x27]
//  0x41c5d0: fmov d0, #1.00000000
//  0x41c5d4: stur d0, [x1, #7]
//  0x41c5d8: add x17, PP, #0xf, lsl #12
//  0x41c5dc: ldr d0, [x17, #0x608]
//  0x41c5e0: stur d0, [x1, #0xf]
//  0x41c5e4: stur d0, [x1, #0x17]
//  0x41c5e8: stur d0, [x1, #0x1f]
//  0x41c5ec: fmov d0, #18.00000000
//  0x41c5f0: bl #0x3a86fc
//  0x41c5f4: stur x0, [FP, #-0x10]
//  0x41c5f8: bl #0x393bf8
//  0x41c5fc: mov x1, x0
//  0x41c600: ldr x0, [FP, #0x18]
//  0x41c604: stur x1, [FP, #-0x18]
//  0x41c608: stur w0, [x1, #0xb]
//  0x41c60c: ldur x0, [FP, #-0x10]
//  0x41c610: stur w0, [x1, #0x13]
//  0x41c614: bl #0x391c0c
//  0x41c618: mov x3, x0
//  0x41c61c: add x0, PP, #0x10, lsl #12
//  0x41c620: ldr x0, [x0, #0xd30]
//  0x41c624: stur x3, [FP, #-0x10]
//  0x41c628: stur w0, [x3, #0xf]
//  0x41c62c: ldur x0, [FP, #-0x18]
//  0x41c630: stur w0, [x3, #0xb]
//  0x41c634: mov x1, NULL
//  0x41c638: mov x2, #4
//  0x41c63c: bl #0x61f920
//  0x41c640: mov x2, x0
//  0x41c644: ldur x0, [FP, #-8]
//  0x41c648: stur x2, [FP, #-0x18]
//  0x41c64c: stur w0, [x2, #0xf]
//  0x41c650: ldur x0, [FP, #-0x10]
//  0x41c654: stur w0, [x2, #0x13]
//  0x41c658: ldr x1, [PP, #0x5c58]
//  0x41c65c: bl #0x61e854
//  0x41c660: mov x1, x0
//  0x41c664: ldur x0, [FP, #-0x18]
//  0x41c668: stur x1, [FP, #-8]
//  0x41c66c: stur w0, [x1, #0xf]
//  0x41c670: mov x0, #4
//  0x41c674: stur w0, [x1, #0xb]
//  0x41c678: bl #0x3a1414
//  0x41c67c: mov x1, x0
//  0x41c680: ldr x0, [PP, #0x5140]
//  0x41c684: stur x1, [FP, #-0x10]
//  0x41c688: stur w0, [x1, #0xf]
//  0x41c68c: add x0, PP, #0xe, lsl #12
//  0x41c690: ldr x0, [x0, #0xae0]
//  0x41c694: stur w0, [x1, #0x13]
//  0x41c698: add x0, PP, #0xe, lsl #12
//  0x41c69c: ldr x0, [x0, #0xb08]
//  0x41c6a0: stur w0, [x1, #0x17]
//  0x41c6a4: add x0, PP, #0xe, lsl #12
//  0x41c6a8: ldr x0, [x0, #0xb60]
//  0x41c6ac: stur w0, [x1, #0x1b]
//  0x41c6b0: add x0, PP, #0xe, lsl #12
//  0x41c6b4: ldr x0, [x0, #0xaf8]
//  0x41c6b8: stur w0, [x1, #0x23]
//  0x41c6bc: add x0, PP, #0xa, lsl #12
//  0x41c6c0: ldr x0, [x0, #0xa8]
//  0x41c6c4: stur w0, [x1, #0x2b]
//  0x41c6c8: stur xzr, [x1, #0x2f]
//  0x41c6cc: ldur x0, [FP, #-8]
//  0x41c6d0: stur w0, [x1, #0xb]
//  0x41c6d4: bl #0x3a1d94
//  0x41c6d8: add x1, PP, #0x10, lsl #12
//  0x41c6dc: ldr x1, [x1, #0xd38]
//  0x41c6e0: mov x2, NULL
//  0x41c6e4: stur x0, [FP, #-8]
//  0x41c6e8: bl #0x61ec54
//  0x41c6ec: ldur BARRIER, [FP, #-0x10]
//  0x41c6f0: stp x0, BARRIER, [SP]
//  0x41c6f4: ldur x1, [FP, #-8]
//  0x41c6f8: add x4, PP, #0xe, lsl #12
//  0x41c6fc: ldr x4, [x4, #0xec0]
//  0x41c700: bl #0x3a18c4
//  0x41c704: bl #0x391a04
//  0x41c708: stur x0, [FP, #-0x10]
//  0x41c70c: ldr BARRIER, [PP, #0x5458]
//  0x41c710: add LR, PP, #0xe, lsl #12
//  0x41c714: ldr LR, [LR, #0xac8]
//  0x41c718: stp LR, BARRIER, [SP, #8]
//  0x41c71c: ldur BARRIER, [FP, #-8]
//  0x41c720: str BARRIER, [SP]
//  0x41c724: mov x1, x0
//  0x41c728: add x4, PP, #0x10, lsl #12
//  0x41c72c: ldr x4, [x4, #0xd40]
//  0x41c730: bl #0x391490
//  0x41c734: ldur x0, [FP, #-0x10]
//  0x41c738: mov SP, FP
//  0x41c73c: ldp FP, LR, [SP], #0x10
//  0x41c740: ret 
//  0x41c744: bl #0x61fa28
//  0x41c748: b #0x41c5b0
//
dynamic SendPocketPageState_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41c598
  BARRIER = mem(THR, 0x38); // 0x41c5a4
  // frame: FP = SP // 0x41c59c
  // frame: SP = SP - 0x30 // 0x41c5a0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41c744
  }
  AllocationStub_SOCoinWidget() /* 0x41c788 */; // 0x41c5b0
  d0 = 22.00000000 /* bits */; // 0x41c5b4
  local_m8 = x0; // 0x41c5b8
  memSet(x0, 0xb, d0); // 0x41c5bc
  AllocationStub_Color() /* 0x31d844 */; // 0x41c5c0
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x41c5c8
  x1 = x0; // 0x41c5c4
  memSet(x1, 0x27, w0); // 0x41c5cc
  d0 = 1.00000000 /* bits */; // 0x41c5d0
  memSet(x1, 7, d0); // 0x41c5d4
  d0 = 4594819596293510164; // 0x41c5dc
  x17 = PP + 0xf000; // 0x41c5d8
  memSet(x1, 0xf, d0); // 0x41c5e0
  memSet(x1, 0x17, d0); // 0x41c5e4
  memSet(x1, 0x1f, d0); // 0x41c5e8
  d0 = 18.00000000 /* bits */; // 0x41c5ec
  TextStyles_fontDINCondensedBold() /* 0x3a86fc */; // 0x41c5f0
  local_m10 = x0; // 0x41c5f4
  AllocationStub_Text() /* 0x393bf8 */; // 0x41c5f8
  x0 = local_18; // 0x41c600
  x1 = x0; // 0x41c5fc
  local_m18 = x1; // 0x41c604
  memSet(x1, 0xb, w0); // 0x41c608
  x0 = local_m10; // 0x41c60c
  memSet(x1, 0x13, w0); // 0x41c610
  AllocationStub_Padding() /* 0x391c0c */; // 0x41c614
  x0 = mem((PP + 0x10000), 0xd30) /* Obj!EdgeInsetsDirectional@11b73  */; // 0x41c620
  x3 = x0; // 0x41c618
  local_m10 = x3; // 0x41c624
  memSet(x3, 0xf, w0); // 0x41c628
  x0 = local_m18; // 0x41c62c
  memSet(x3, 0xb, w0); // 0x41c630
  x1 = NULL; // 0x41c634
  x2 = 4; // 0x41c638
  sub_0x61f920(); // 0x41c63c
  x0 = local_m8; // 0x41c644
  x2 = x0; // 0x41c640
  local_m18 = x2; // 0x41c648
  memSet(x2, 0xf, w0); // 0x41c64c
  x0 = local_m10; // 0x41c650
  memSet(x2, 0x13, w0); // 0x41c654
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x41c658
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x41c65c
  x0 = local_m18; // 0x41c664
  x1 = x0; // 0x41c660
  local_m8 = x1; // 0x41c668
  memSet(x1, 0xf, w0); // 0x41c66c
  x0 = 4; // 0x41c670
  memSet(x1, 0xb, w0); // 0x41c674
  AllocationStub_Row() /* 0x3a1414 */; // 0x41c678
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x41c680
  x1 = x0; // 0x41c67c
  local_m10 = x1; // 0x41c684
  memSet(x1, 0xf, w0); // 0x41c688
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x41c690
  memSet(x1, 0x13, w0); // 0x41c694
  x0 = mem((PP + 0xe000), 0xb08) /* Obj!MainAxisSize@12270  */; // 0x41c69c
  memSet(x1, 0x17, w0); // 0x41c6a0
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x41c6a8
  memSet(x1, 0x1b, w0); // 0x41c6ac
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x41c6b4
  memSet(x1, 0x23, w0); // 0x41c6b8
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x41c6c0
  memSet(x1, 0x2b, w0); // 0x41c6c4
  memSet(x1, 0x2f, xzr); // 0x41c6c8
  x0 = local_m8; // 0x41c6cc
  memSet(x1, 0xb, w0); // 0x41c6d0
  sub_0x3a1d94(); // 0x41c6d4
  x1 = mem((PP + 0x10000), 0xd38) /* Function */; // 0x41c6dc
  x2 = NULL; // 0x41c6e0
  local_m8 = x0; // 0x41c6e4
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41c6e8
  BARRIER = local_m10; // 0x41c6ec
  // frame: x0, BARRIER, mem(SP) // 0x41c6f0
  x1 = local_m8; // 0x41c6f4
  x4 = mem((PP + 0xe000), 0xec0) /* ImmutableArray */; // 0x41c6fc
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x41c700
  AllocationStub_Container() /* 0x391a04 */; // 0x41c704
  local_m10 = x0; // 0x41c708
  BARRIER = mem(PP, 0x5458) /* Double */; // 0x41c70c
  LR = mem((PP + 0xe000), 0xac8) /* Obj!Alignment@11bdf  */; // 0x41c714
  // frame: LR, BARRIER, mem(SP, 8) // 0x41c718
  BARRIER = local_m8; // 0x41c71c
  local_0 = BARRIER; // 0x41c720
  x1 = x0; // 0x41c724
  x4 = mem((PP + 0x10000), 0xd40) /* ImmutableArray */; // 0x41c72c
  Container_ctor() /* 0x391490 */; // 0x41c730
  SP = FP; // 0x41c738
  x0 = local_m10; // 0x41c734
  // frame: FP, LR, mem(SP), 0x10 // 0x41c73c
  return;
}

// SendPocketPageState_buildCoinSum
// raw disassembly:
//  0x41c794: stp FP, LR, [SP, #-0x10]!
//  0x41c798: mov FP, SP
//  0x41c79c: sub SP, SP, #0x10
//  0x41c7a0: mov x0, x1
//  0x41c7a4: add x1, PP, #0x10, lsl #12
//  0x41c7a8: ldr x1, [x1, #0xd18]
//  0x41c7ac: bl #0x41c8d4
//  0x41c7b0: stur x0, [FP, #-8]
//  0x41c7b4: mov x1, #2
//  0x41c7b8: bl #0x61e890
//  0x41c7bc: mov x3, x0
//  0x41c7c0: ldur x0, [FP, #-8]
//  0x41c7c4: stur x3, [FP, #-0x10]
//  0x41c7c8: stur w0, [x3, #0xf]
//  0x41c7cc: add x1, PP, #0x10, lsl #12
//  0x41c7d0: ldr x1, [x1, #0xd20]
//  0x41c7d4: mov x2, NULL
//  0x41c7d8: bl #0x61ec54
//  0x41c7dc: mov x1, x0
//  0x41c7e0: ldur x0, [FP, #-0x10]
//  0x41c7e4: stur w1, [x0, #0x13]
//  0x41c7e8: add x1, PP, #0x10, lsl #12
//  0x41c7ec: ldr x1, [x1, #0xd28]
//  0x41c7f0: mov x2, NULL
//  0x41c7f4: bl #0x61ec54
//  0x41c7f8: mov x1, x0
//  0x41c7fc: ldur x0, [FP, #-8]
//  0x41c800: stur w1, [x0, #0x13]
//  0x41c804: ldur x2, [FP, #-0x10]
//  0x41c808: add x1, PP, #0xf, lsl #12
//  0x41c80c: ldr x1, [x1, #0x640]
//  0x41c810: add x3, PP, #0x10, lsl #12
//  0x41c814: ldr x3, [x3, #0xd18]
//  0x41c818: bl #0x61ea98
//  0x41c81c: mov x1, x0
//  0x41c820: ldur x0, [FP, #-8]
//  0x41c824: stur w1, [x0, #0x17]
//  0x41c828: mov SP, FP
//  0x41c82c: ldp FP, LR, [SP], #0x10
//  0x41c830: ret 
//
dynamic SendPocketPageState_buildCoinSum() {
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41c794
  // frame: FP = SP // 0x41c798
  // frame: SP = SP - 0x10 // 0x41c79c
  x0 = x1; // 0x41c7a0
  x1 = mem((PP + 0x10000), 0xd18) /* TypeArguments */; // 0x41c7a8
  AllocationStub_Selector() /* 0x41c8d4 */; // 0x41c7ac
  local_m8 = x0; // 0x41c7b0
  x1 = 2; // 0x41c7b4
  sub_0x61e890(); // 0x41c7b8
  x0 = local_m8; // 0x41c7c0
  x3 = x0; // 0x41c7bc
  local_m10 = x3; // 0x41c7c4
  memSet(x3, 0xf, w0); // 0x41c7c8
  x1 = mem((PP + 0x10000), 0xd20) /* Function */; // 0x41c7d0
  x2 = NULL; // 0x41c7d4
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41c7d8
  x0 = local_m10; // 0x41c7e0
  x1 = x0; // 0x41c7dc
  memSet(x0, 0x13, w1); // 0x41c7e4
  x1 = mem((PP + 0x10000), 0xd28) /* Function */; // 0x41c7ec
  x2 = NULL; // 0x41c7f0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41c7f4
  x0 = local_m8; // 0x41c7fc
  x1 = x0; // 0x41c7f8
  memSet(x0, 0x13, w1); // 0x41c800
  x1 = mem((PP + 0xf000), 0x640) /* Function */; // 0x41c80c
  x2 = local_m10; // 0x41c804
  x3 = mem((PP + 0x10000), 0xd18) /* TypeArguments */; // 0x41c814
  AllocationStub__Closure() /* 0x61ea98 */; // 0x41c818
  x0 = local_m8; // 0x41c820
  x1 = x0; // 0x41c81c
  memSet(x0, 0x17, w1); // 0x41c824
  SP = FP; // 0x41c828
  // frame: FP, LR, mem(SP), 0x10 // 0x41c82c
  return;
}

// SendPocketPageState_anon_closure_2
// raw disassembly:
//  0x41c8e0: stp FP, LR, [SP, #-0x10]!
//  0x41c8e4: mov FP, SP
//  0x41c8e8: ldr BARRIER, [THR, #0x38]
//  0x41c8ec: cmp SP, BARRIER
//  0x41c8f0: b.ls #0x41c908
//  0x41c8f4: ldr x1, [FP, #0x10]
//  0x41c8f8: bl #0x41b064
//  0x41c8fc: mov SP, FP
//  0x41c900: ldp FP, LR, [SP], #0x10
//  0x41c904: ret 
//  0x41c908: bl #0x61fa28
//  0x41c90c: b #0x41c8f4
//
dynamic SendPocketPageState_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41c8e0
  BARRIER = mem(THR, 0x38); // 0x41c8e8
  // frame: FP = SP // 0x41c8e4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41c908
  }
  x1 = local_10; // 0x41c8f4
  SafeChangeNotifier_get_coinSum() /* 0x41b064 */; // 0x41c8f8
  SP = FP; // 0x41c8fc
  // frame: FP, LR, mem(SP), 0x10 // 0x41c900
  return;
}

// SendPocketPageState_build
// raw disassembly:
//  0x429420: stp FP, LR, [SP, #-0x10]!
//  0x429424: mov FP, SP
//  0x429428: sub SP, SP, #0x68
//  0x42942c: mov x0, x1
//  0x429430: stur x1, [FP, #-0x10]
//  0x429434: stur x2, [FP, #-0x18]
//  0x429438: ldr BARRIER, [THR, #0x38]
//  0x42943c: cmp SP, BARRIER
//  0x429440: b.ls #0x4298e0
//  0x429444: ldur w3, [x0, #0x13]
//  0x429448: add x3, x3, HEAP, lsl #32
//  0x42944c: mov x1, x0
//  0x429450: stur x3, [FP, #-8]
//  0x429454: bl #0x41c794
//  0x429458: stur x0, [FP, #-0x20]
//  0x42945c: bl #0x391c0c
//  0x429460: mov x2, x0
//  0x429464: add x0, PP, #0x10, lsl #12
//  0x429468: ldr x0, [x0, #0xaa0]
//  0x42946c: stur x2, [FP, #-0x28]
//  0x429470: stur w0, [x2, #0xf]
//  0x429474: ldur x0, [FP, #-0x20]
//  0x429478: stur w0, [x2, #0xb]
//  0x42947c: add x1, PP, #0xc, lsl #12
//  0x429480: ldr x1, [x1, #0xa08]
//  0x429484: ldr x4, [PP, #0x4c0]
//  0x429488: bl #0x3a1dcc
//  0x42948c: stur x0, [FP, #-0x20]
//  0x429490: bl #0x42b70c
//  0x429494: mov x1, x0
//  0x429498: bl #0x41dfb4
//  0x42949c: stur x0, [FP, #-0x30]
//  0x4294a0: bl #0x393bf8
//  0x4294a4: mov x1, x0
//  0x4294a8: ldur x0, [FP, #-0x20]
//  0x4294ac: stur x1, [FP, #-0x38]
//  0x4294b0: stur w0, [x1, #0xb]
//  0x4294b4: ldur x0, [FP, #-0x30]
//  0x4294b8: stur w0, [x1, #0x13]
//  0x4294bc: bl #0x391a04
//  0x4294c0: stur x0, [FP, #-0x20]
//  0x4294c4: ldr BARRIER, [PP, #0x5458]
//  0x4294c8: add LR, PP, #0x10, lsl #12
//  0x4294cc: ldr LR, [LR, #0xaa8]
//  0x4294d0: stp LR, BARRIER, [SP, #8]
//  0x4294d4: ldur BARRIER, [FP, #-0x38]
//  0x4294d8: str BARRIER, [SP]
//  0x4294dc: mov x1, x0
//  0x4294e0: add x4, PP, #0x10, lsl #12
//  0x4294e4: ldr x4, [x4, #0xab0]
//  0x4294e8: bl #0x391490
//  0x4294ec: ldur x1, [FP, #-0x10]
//  0x4294f0: bl #0x42adac
//  0x4294f4: stur x0, [FP, #-0x30]
//  0x4294f8: bl #0x391a04
//  0x4294fc: stur x0, [FP, #-0x38]
//  0x429500: add BARRIER, PP, #0x10, lsl #12
//  0x429504: ldr BARRIER, [BARRIER, #0xab8]
//  0x429508: ldur LR, [FP, #-0x30]
//  0x42950c: stp LR, BARRIER, [SP]
//  0x429510: mov x1, x0
//  0x429514: add x4, PP, #0xf, lsl #12
//  0x429518: ldr x4, [x4, #0x200]
//  0x42951c: bl #0x391490
//  0x429520: bl #0x31d844
//  0x429524: mov x1, x0
//  0x429528: ldr x0, [PP, #0x6310]
//  0x42952c: stur x1, [FP, #-0x30]
//  0x429530: stur w0, [x1, #0x27]
//  0x429534: fmov d0, #1.00000000
//  0x429538: stur d0, [x1, #7]
//  0x42953c: stur d0, [x1, #0xf]
//  0x429540: add x17, PP, #0x10, lsl #12
//  0x429544: ldr d1, [x17, #0xac0]
//  0x429548: stur d1, [x1, #0x17]
//  0x42954c: add x17, PP, #0x10, lsl #12
//  0x429550: ldr d1, [x17, #0xac8]
//  0x429554: stur d1, [x1, #0x1f]
//  0x429558: bl #0x3ae894
//  0x42955c: fmov d0, #1.00000000
//  0x429560: stur x0, [FP, #-0x40]
//  0x429564: stur d0, [x0, #0xb]
//  0x429568: add x1, PP, #0xe, lsl #12
//  0x42956c: ldr x1, [x1, #0xb50]
//  0x429570: stur w1, [x0, #0x17]
//  0x429574: stur w1, [x0, #0x1b]
//  0x429578: ldur x1, [FP, #-0x30]
//  0x42957c: stur w1, [x0, #0x1f]
//  0x429580: add x1, PP, #0xc, lsl #12
//  0x429584: ldr x1, [x1, #0x9f8]
//  0x429588: ldr x4, [PP, #0x4c0]
//  0x42958c: bl #0x3a1dcc
//  0x429590: stur x0, [FP, #-0x30]
//  0x429594: bl #0x31d844
//  0x429598: mov x1, x0
//  0x42959c: ldr x0, [PP, #0x6310]
//  0x4295a0: stur w0, [x1, #0x27]
//  0x4295a4: fmov d0, #1.00000000
//  0x4295a8: stur d0, [x1, #7]
//  0x4295ac: add x17, PP, #0x10, lsl #12
//  0x4295b0: ldr d0, [x17, #0xad0]
//  0x4295b4: stur d0, [x1, #0xf]
//  0x4295b8: add x17, PP, #0x10, lsl #12
//  0x4295bc: ldr d0, [x17, #0xad8]
//  0x4295c0: stur d0, [x1, #0x17]
//  0x4295c4: add x17, PP, #0x10, lsl #12
//  0x4295c8: ldr d0, [x17, #0xae0]
//  0x4295cc: stur d0, [x1, #0x1f]
//  0x4295d0: bl #0x41dfb4
//  0x4295d4: stur x0, [FP, #-0x48]
//  0x4295d8: bl #0x393bf8
//  0x4295dc: mov x1, x0
//  0x4295e0: ldur x0, [FP, #-0x30]
//  0x4295e4: stur x1, [FP, #-0x50]
//  0x4295e8: stur w0, [x1, #0xb]
//  0x4295ec: ldur x0, [FP, #-0x48]
//  0x4295f0: stur w0, [x1, #0x13]
//  0x4295f4: bl #0x391a04
//  0x4295f8: stur x0, [FP, #-0x30]
//  0x4295fc: ldr BARRIER, [PP, #0x5458]
//  0x429600: add LR, PP, #0x10, lsl #12
//  0x429604: ldr LR, [LR, #0xae8]
//  0x429608: stp LR, BARRIER, [SP, #8]
//  0x42960c: ldur BARRIER, [FP, #-0x50]
//  0x429610: str BARRIER, [SP]
//  0x429614: mov x1, x0
//  0x429618: add x4, PP, #0x10, lsl #12
//  0x42961c: ldr x4, [x4, #0xab0]
//  0x429620: bl #0x391490
//  0x429624: ldur x1, [FP, #-0x10]
//  0x429628: bl #0x42a04c
//  0x42962c: stur x0, [FP, #-0x48]
//  0x429630: bl #0x391a04
//  0x429634: stur x0, [FP, #-0x50]
//  0x429638: add BARRIER, PP, #0x10, lsl #12
//  0x42963c: ldr BARRIER, [BARRIER, #0xab8]
//  0x429640: ldur LR, [FP, #-0x48]
//  0x429644: stp LR, BARRIER, [SP]
//  0x429648: mov x1, x0
//  0x42964c: add x4, PP, #0xf, lsl #12
//  0x429650: ldr x4, [x4, #0x200]
//  0x429654: bl #0x391490
//  0x429658: mov x1, NULL
//  0x42965c: mov x2, #0xc
//  0x429660: bl #0x61f920
//  0x429664: mov x2, x0
//  0x429668: ldur x0, [FP, #-0x28]
//  0x42966c: stur x2, [FP, #-0x48]
//  0x429670: stur w0, [x2, #0xf]
//  0x429674: ldur x0, [FP, #-0x20]
//  0x429678: stur w0, [x2, #0x13]
//  0x42967c: ldur x0, [FP, #-0x38]
//  0x429680: stur w0, [x2, #0x17]
//  0x429684: ldur x0, [FP, #-0x40]
//  0x429688: stur w0, [x2, #0x1b]
//  0x42968c: ldur x0, [FP, #-0x30]
//  0x429690: stur w0, [x2, #0x1f]
//  0x429694: ldur x0, [FP, #-0x50]
//  0x429698: stur w0, [x2, #0x23]
//  0x42969c: ldr x1, [PP, #0x5c58]
//  0x4296a0: bl #0x61e854
//  0x4296a4: mov x1, x0
//  0x4296a8: ldur x0, [FP, #-0x48]
//  0x4296ac: stur x1, [FP, #-0x20]
//  0x4296b0: stur w0, [x1, #0xf]
//  0x4296b4: mov x0, #0xc
//  0x4296b8: stur w0, [x1, #0xb]
//  0x4296bc: bl #0x39310c
//  0x4296c0: mov x1, x0
//  0x4296c4: add x0, PP, #0xa, lsl #12
//  0x4296c8: ldr x0, [x0, #0x858]
//  0x4296cc: stur x1, [FP, #-0x28]
//  0x4296d0: stur w0, [x1, #0xf]
//  0x4296d4: add x2, PP, #0xe, lsl #12
//  0x4296d8: ldr x2, [x2, #0xae0]
//  0x4296dc: stur w2, [x1, #0x13]
//  0x4296e0: add x3, PP, #0xe, lsl #12
//  0x4296e4: ldr x3, [x3, #0xae8]
//  0x4296e8: stur w3, [x1, #0x17]
//  0x4296ec: add x4, PP, #0xe, lsl #12
//  0x4296f0: ldr x4, [x4, #0xb60]
//  0x4296f4: stur w4, [x1, #0x1b]
//  0x4296f8: add x5, PP, #0xe, lsl #12
//  0x4296fc: ldr x5, [x5, #0xaf8]
//  0x429700: stur w5, [x1, #0x23]
//  0x429704: add x6, PP, #0xa, lsl #12
//  0x429708: ldr x6, [x6, #0xa8]
//  0x42970c: stur w6, [x1, #0x2b]
//  0x429710: stur xzr, [x1, #0x2f]
//  0x429714: ldur x7, [FP, #-0x20]
//  0x429718: stur w7, [x1, #0xb]
//  0x42971c: bl #0x3a1db4
//  0x429720: mov x1, x0
//  0x429724: add x0, PP, #0xa, lsl #12
//  0x429728: ldr x0, [x0, #0x858]
//  0x42972c: stur x1, [FP, #-0x20]
//  0x429730: stur w0, [x1, #0xb]
//  0x429734: add x2, NULL, #0x30
//  0x429738: stur w2, [x1, #0xf]
//  0x42973c: ldur x2, [FP, #-0x28]
//  0x429740: stur w2, [x1, #0x23]
//  0x429744: ldr x2, [PP, #0x77d8]
//  0x429748: stur w2, [x1, #0x27]
//  0x42974c: add x2, PP, #0xe, lsl #12
//  0x429750: ldr x2, [x2, #0xf10]
//  0x429754: stur w2, [x1, #0x2b]
//  0x429758: add x2, PP, #0xf, lsl #12
//  0x42975c: ldr x2, [x2, #0x140]
//  0x429760: stur w2, [x1, #0x2f]
//  0x429764: add x2, PP, #0xf, lsl #12
//  0x429768: ldr x2, [x2, #0x2f8]
//  0x42976c: stur w2, [x1, #0x37]
//  0x429770: bl #0x391c0c
//  0x429774: mov x2, x0
//  0x429778: add x0, PP, #0x10, lsl #12
//  0x42977c: ldr x0, [x0, #0xaf0]
//  0x429780: stur x2, [FP, #-0x28]
//  0x429784: stur w0, [x2, #0xf]
//  0x429788: ldur x0, [FP, #-0x20]
//  0x42978c: stur w0, [x2, #0xb]
//  0x429790: add x1, PP, #0xe, lsl #12
//  0x429794: ldr x1, [x1, #0xad0]
//  0x429798: bl #0x39fb14
//  0x42979c: mov x3, x0
//  0x4297a0: mov x0, #1
//  0x4297a4: stur x3, [FP, #-0x20]
//  0x4297a8: stur x0, [x3, #0x13]
//  0x4297ac: add x0, PP, #0xe, lsl #12
//  0x4297b0: ldr x0, [x0, #0xad8]
//  0x4297b4: stur w0, [x3, #0x1b]
//  0x4297b8: ldur x0, [FP, #-0x28]
//  0x4297bc: stur w0, [x3, #0xb]
//  0x4297c0: ldur x1, [FP, #-0x10]
//  0x4297c4: ldur x2, [FP, #-0x18]
//  0x4297c8: bl #0x4298e8
//  0x4297cc: mov x1, NULL
//  0x4297d0: mov x2, #4
//  0x4297d4: stur x0, [FP, #-0x10]
//  0x4297d8: bl #0x61f920
//  0x4297dc: mov x2, x0
//  0x4297e0: ldur x0, [FP, #-0x20]
//  0x4297e4: stur x2, [FP, #-0x18]
//  0x4297e8: stur w0, [x2, #0xf]
//  0x4297ec: ldur x0, [FP, #-0x10]
//  0x4297f0: stur w0, [x2, #0x13]
//  0x4297f4: ldr x1, [PP, #0x5c58]
//  0x4297f8: bl #0x61e854
//  0x4297fc: mov x1, x0
//  0x429800: ldur x0, [FP, #-0x18]
//  0x429804: stur x1, [FP, #-0x10]
//  0x429808: stur w0, [x1, #0xf]
//  0x42980c: mov x0, #4
//  0x429810: stur w0, [x1, #0xb]
//  0x429814: bl #0x39310c
//  0x429818: mov x2, x0
//  0x42981c: add x0, PP, #0xa, lsl #12
//  0x429820: ldr x0, [x0, #0x858]
//  0x429824: stur x2, [FP, #-0x18]
//  0x429828: stur w0, [x2, #0xf]
//  0x42982c: add x0, PP, #0xe, lsl #12
//  0x429830: ldr x0, [x0, #0xae0]
//  0x429834: stur w0, [x2, #0x13]
//  0x429838: add x0, PP, #0xe, lsl #12
//  0x42983c: ldr x0, [x0, #0xae8]
//  0x429840: stur w0, [x2, #0x17]
//  0x429844: add x0, PP, #0xe, lsl #12
//  0x429848: ldr x0, [x0, #0xb60]
//  0x42984c: stur w0, [x2, #0x1b]
//  0x429850: add x0, PP, #0xe, lsl #12
//  0x429854: ldr x0, [x0, #0xaf8]
//  0x429858: stur w0, [x2, #0x23]
//  0x42985c: add x0, PP, #0xa, lsl #12
//  0x429860: ldr x0, [x0, #0xa8]
//  0x429864: stur w0, [x2, #0x2b]
//  0x429868: stur xzr, [x2, #0x2f]
//  0x42986c: ldur x0, [FP, #-0x10]
//  0x429870: stur w0, [x2, #0xb]
//  0x429874: add x1, PP, #0x10, lsl #12
//  0x429878: ldr x1, [x1, #0xaf8]
//  0x42987c: bl #0x41a408
//  0x429880: mov x2, x0
//  0x429884: ldur x0, [FP, #-8]
//  0x429888: stur x2, [FP, #-0x10]
//  0x42988c: stur w0, [x2, #0xb]
//  0x429890: add x0, PP, #0xc, lsl #12
//  0x429894: ldr x0, [x0, #0x2f0]
//  0x429898: stur w0, [x2, #0x13]
//  0x42989c: add x1, PP, #0x10, lsl #12
//  0x4298a0: ldr x1, [x1, #0xaf8]
//  0x4298a4: bl #0x3b81c4
//  0x4298a8: mov x2, x0
//  0x4298ac: ldur x0, [FP, #-0x10]
//  0x4298b0: stur x2, [FP, #-8]
//  0x4298b4: stur w0, [x2, #0x13]
//  0x4298b8: ldur x0, [FP, #-0x18]
//  0x4298bc: stur w0, [x2, #0xb]
//  0x4298c0: mov x1, x2
//  0x4298c4: bl #0x60bd34
//  0x4298c8: bl #0x3b91cc
//  0x4298cc: ldur x1, [FP, #-8]
//  0x4298d0: stur w1, [x0, #0xb]
//  0x4298d4: mov SP, FP
//  0x4298d8: ldp FP, LR, [SP], #0x10
//  0x4298dc: ret 
//  0x4298e0: bl #0x61fa28
//  0x4298e4: b #0x429444
//
dynamic SendPocketPageState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x429420
  // frame: FP = SP // 0x429424
  // frame: SP = SP - 0x68 // 0x429428
  x0 = x1; // 0x42942c
  local_m10 = x1; // 0x429430
  local_m18 = x2; // 0x429434
  BARRIER = mem(THR, 0x38); // 0x429438
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4298e0
  }
  x1 = x0; // 0x42944c
  x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x429448
  local_m8 = x3; // 0x429450
  SendPocketPageState_buildCoinSum() /* 0x41c794 */; // 0x429454
  local_m20 = x0; // 0x429458
  AllocationStub_Padding() /* 0x391c0c */; // 0x42945c
  x0 = mem((PP + 0x10000), 0xaa0) /* Obj!EdgeInsetsDirectional@11b7a  */; // 0x429468
  x2 = x0; // 0x429460
  local_m28 = x2; // 0x42946c
  memSet(x2, 0xf, w0); // 0x429470
  x0 = local_m20; // 0x429474
  memSet(x2, 0xb, w0); // 0x429478
  x1 = "virtual_party_lucky_pocket_send_popup_amount_title" /* pp+0xca08 */; // 0x429480
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x429484
  getString() /* 0x3a1dcc */; // 0x429488
  local_m20 = x0; // 0x42948c
  SOColors_get_color_9a4507() /* 0x42b70c */; // 0x429490
  x1 = x0; // 0x429494
  TextStyles_pageStandardTitle() /* 0x41dfb4 */; // 0x429498
  local_m30 = x0; // 0x42949c
  AllocationStub_Text() /* 0x393bf8 */; // 0x4294a0
  x0 = local_m20; // 0x4294a8
  x1 = x0; // 0x4294a4
  local_m38 = x1; // 0x4294ac
  memSet(x1, 0xb, w0); // 0x4294b0
  x0 = local_m30; // 0x4294b4
  memSet(x1, 0x13, w0); // 0x4294b8
  AllocationStub_Container() /* 0x391a04 */; // 0x4294bc
  local_m20 = x0; // 0x4294c0
  BARRIER = mem(PP, 0x5458) /* Double */; // 0x4294c4
  LR = mem((PP + 0x10000), 0xaa8) /* Obj!EdgeInsets@11bba  */; // 0x4294cc
  // frame: LR, BARRIER, mem(SP, 8) // 0x4294d0
  BARRIER = local_m38; // 0x4294d4
  local_0 = BARRIER; // 0x4294d8
  x1 = x0; // 0x4294dc
  x4 = mem((PP + 0x10000), 0xab0) /* ImmutableArray */; // 0x4294e4
  Container_ctor() /* 0x391490 */; // 0x4294e8
  x1 = local_m10; // 0x4294ec
  SendPocketPageState_buildCoinLayout() /* 0x42adac */; // 0x4294f0
  local_m30 = x0; // 0x4294f4
  AllocationStub_Container() /* 0x391a04 */; // 0x4294f8
  local_m38 = x0; // 0x4294fc
  BARRIER = mem((PP + 0x10000), 0xab8) /* Obj!EdgeInsets@11bb9  */; // 0x429504
  LR = local_m30; // 0x429508
  // frame: LR, BARRIER, mem(SP) // 0x42950c
  x1 = x0; // 0x429510
  x4 = mem((PP + 0xf000), 0x200) /* ImmutableArray */; // 0x429518
  Container_ctor() /* 0x391490 */; // 0x42951c
  AllocationStub_Color() /* 0x31d844 */; // 0x429520
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x429528
  x1 = x0; // 0x429524
  local_m30 = x1; // 0x42952c
  memSet(x1, 0x27, w0); // 0x429530
  d0 = 1.00000000 /* bits */; // 0x429534
  memSet(x1, 7, d0); // 0x429538
  memSet(x1, 0xf, d0); // 0x42953c
  d1 = 4606617261199719934; // 0x429544
  x17 = PP + 0x10000; // 0x429540
  memSet(x1, 0x17, d1); // 0x429548
  d1 = 4600312221721401240; // 0x429550
  x17 = PP + 0x10000; // 0x42954c
  memSet(x1, 0x1f, d1); // 0x429554
  AllocationStub_Divider() /* 0x3ae894 */; // 0x429558
  d0 = 1.00000000 /* bits */; // 0x42955c
  local_m40 = x0; // 0x429560
  memSet(x0, 0xb, d0); // 0x429564
  x1 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x42956c
  memSet(x0, 0x17, w1); // 0x429570
  memSet(x0, 0x1b, w1); // 0x429574
  x1 = local_m30; // 0x429578
  memSet(x0, 0x1f, w1); // 0x42957c
  x1 = "virtual_party_lucky_pocket_send_popup_quantity_title" /* pp+0xc9f8 */; // 0x429584
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x429588
  getString() /* 0x3a1dcc */; // 0x42958c
  local_m30 = x0; // 0x429590
  AllocationStub_Color() /* 0x31d844 */; // 0x429594
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x42959c
  x1 = x0; // 0x429598
  memSet(x1, 0x27, w0); // 0x4295a0
  d0 = 1.00000000 /* bits */; // 0x4295a4
  memSet(x1, 7, d0); // 0x4295a8
  d0 = 4603614861448139603; // 0x4295b0
  x17 = PP + 0x10000; // 0x4295ac
  memSet(x1, 0xf, d0); // 0x4295b4
  d0 = 4598546104220471633; // 0x4295bc
  x17 = PP + 0x10000; // 0x4295b8
  memSet(x1, 0x17, d0); // 0x4295c0
  d0 = 4583569427812588572; // 0x4295c8
  x17 = PP + 0x10000; // 0x4295c4
  memSet(x1, 0x1f, d0); // 0x4295cc
  TextStyles_pageStandardTitle() /* 0x41dfb4 */; // 0x4295d0
  local_m48 = x0; // 0x4295d4
  AllocationStub_Text() /* 0x393bf8 */; // 0x4295d8
  x0 = local_m30; // 0x4295e0
  x1 = x0; // 0x4295dc
  local_m50 = x1; // 0x4295e4
  memSet(x1, 0xb, w0); // 0x4295e8
  x0 = local_m48; // 0x4295ec
  memSet(x1, 0x13, w0); // 0x4295f0
  AllocationStub_Container() /* 0x391a04 */; // 0x4295f4
  local_m30 = x0; // 0x4295f8
  BARRIER = mem(PP, 0x5458) /* Double */; // 0x4295fc
  LR = mem((PP + 0x10000), 0xae8) /* Obj!EdgeInsets@11bb8  */; // 0x429604
  // frame: LR, BARRIER, mem(SP, 8) // 0x429608
  BARRIER = local_m50; // 0x42960c
  local_0 = BARRIER; // 0x429610
  x1 = x0; // 0x429614
  x4 = mem((PP + 0x10000), 0xab0) /* ImmutableArray */; // 0x42961c
  Container_ctor() /* 0x391490 */; // 0x429620
  x1 = local_m10; // 0x429624
  SendPocketPageState_buildPocketNumLayout() /* 0x42a04c */; // 0x429628
  local_m48 = x0; // 0x42962c
  AllocationStub_Container() /* 0x391a04 */; // 0x429630
  local_m50 = x0; // 0x429634
  BARRIER = mem((PP + 0x10000), 0xab8) /* Obj!EdgeInsets@11bb9  */; // 0x42963c
  LR = local_m48; // 0x429640
  // frame: LR, BARRIER, mem(SP) // 0x429644
  x1 = x0; // 0x429648
  x4 = mem((PP + 0xf000), 0x200) /* ImmutableArray */; // 0x429650
  Container_ctor() /* 0x391490 */; // 0x429654
  x1 = NULL; // 0x429658
  x2 = 12; // 0x42965c
  sub_0x61f920(); // 0x429660
  x0 = local_m28; // 0x429668
  x2 = x0; // 0x429664
  local_m48 = x2; // 0x42966c
  memSet(x2, 0xf, w0); // 0x429670
  x0 = local_m20; // 0x429674
  memSet(x2, 0x13, w0); // 0x429678
  x0 = local_m38; // 0x42967c
  memSet(x2, 0x17, w0); // 0x429680
  x0 = local_m40; // 0x429684
  memSet(x2, 0x1b, w0); // 0x429688
  x0 = local_m30; // 0x42968c
  memSet(x2, 0x1f, w0); // 0x429690
  x0 = local_m50; // 0x429694
  memSet(x2, 0x23, w0); // 0x429698
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x42969c
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x4296a0
  x0 = local_m48; // 0x4296a8
  x1 = x0; // 0x4296a4
  local_m20 = x1; // 0x4296ac
  memSet(x1, 0xf, w0); // 0x4296b0
  x0 = 12; // 0x4296b4
  memSet(x1, 0xb, w0); // 0x4296b8
  AllocationStub_Column() /* 0x39310c */; // 0x4296bc
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x4296c8
  x1 = x0; // 0x4296c0
  local_m28 = x1; // 0x4296cc
  memSet(x1, 0xf, w0); // 0x4296d0
  x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x4296d8
  memSet(x1, 0x13, w2); // 0x4296dc
  x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x4296e4
  memSet(x1, 0x17, w3); // 0x4296e8
  x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x4296f0
  memSet(x1, 0x1b, w4); // 0x4296f4
  x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x4296fc
  memSet(x1, 0x23, w5); // 0x429700
  x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x429708
  memSet(x1, 0x2b, w6); // 0x42970c
  memSet(x1, 0x2f, xzr); // 0x429710
  x7 = local_m20; // 0x429714
  memSet(x1, 0xb, w7); // 0x429718
  AllocationStub_SingleChildScrollView() /* 0x3a1db4 */; // 0x42971c
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x429728
  x1 = x0; // 0x429720
  local_m20 = x1; // 0x42972c
  memSet(x1, 0xb, w0); // 0x429730
  x2 = NULL + 0x30; // 0x429734
  memSet(x1, 0xf, w2); // 0x429738
  x2 = local_m28; // 0x42973c
  memSet(x1, 0x23, w2); // 0x429740
  x2 = mem(PP, 0x77d8) /* Obj!DragStartBehavior@122d8  */; // 0x429744
  memSet(x1, 0x27, w2); // 0x429748
  x2 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x429750
  memSet(x1, 0x2b, w2); // 0x429754
  x2 = mem((PP + 0xf000), 0x140) /* Obj!HitTestBehavior@12262  */; // 0x42975c
  memSet(x1, 0x2f, w2); // 0x429760
  x2 = mem((PP + 0xf000), 0x2f8); // 0x429768
  memSet(x1, 0x37, w2); // 0x42976c
  AllocationStub_Padding() /* 0x391c0c */; // 0x429770
  x0 = mem((PP + 0x10000), 0xaf0) /* Obj!EdgeInsets@11bb7  */; // 0x42977c
  x2 = x0; // 0x429774
  local_m28 = x2; // 0x429780
  memSet(x2, 0xf, w0); // 0x429784
  x0 = local_m20; // 0x429788
  memSet(x2, 0xb, w0); // 0x42978c
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x429794
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x429798
  x0 = 1; // 0x4297a0
  x3 = x0; // 0x42979c
  local_m20 = x3; // 0x4297a4
  memSet(x3, 0x13, x0); // 0x4297a8
  x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x4297b0
  memSet(x3, 0x1b, w0); // 0x4297b4
  x0 = local_m28; // 0x4297b8
  memSet(x3, 0xb, w0); // 0x4297bc
  x1 = local_m10; // 0x4297c0
  x2 = local_m18; // 0x4297c4
  SendPocketPageState_buildBottomLayout() /* 0x4298e8 */; // 0x4297c8
  x1 = NULL; // 0x4297cc
  x2 = 4; // 0x4297d0
  local_m10 = x0; // 0x4297d4
  sub_0x61f920(); // 0x4297d8
  x0 = local_m20; // 0x4297e0
  x2 = x0; // 0x4297dc
  local_m18 = x2; // 0x4297e4
  memSet(x2, 0xf, w0); // 0x4297e8
  x0 = local_m10; // 0x4297ec
  memSet(x2, 0x13, w0); // 0x4297f0
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x4297f4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x4297f8
  x0 = local_m18; // 0x429800
  x1 = x0; // 0x4297fc
  local_m10 = x1; // 0x429804
  memSet(x1, 0xf, w0); // 0x429808
  x0 = 4; // 0x42980c
  memSet(x1, 0xb, w0); // 0x429810
  AllocationStub_Column() /* 0x39310c */; // 0x429814
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x429820
  x2 = x0; // 0x429818
  local_m18 = x2; // 0x429824
  memSet(x2, 0xf, w0); // 0x429828
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x429830
  memSet(x2, 0x13, w0); // 0x429834
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x42983c
  memSet(x2, 0x17, w0); // 0x429840
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x429848
  memSet(x2, 0x1b, w0); // 0x42984c
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x429854
  memSet(x2, 0x23, w0); // 0x429858
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x429860
  memSet(x2, 0x2b, w0); // 0x429864
  memSet(x2, 0x2f, xzr); // 0x429868
  x0 = local_m10; // 0x42986c
  memSet(x2, 0xb, w0); // 0x429870
  x1 = mem((PP + 0x10000), 0xaf8) /* TypeArguments */; // 0x429878
  AllocationStub__ValueInheritedProvider() /* 0x41a408 */; // 0x42987c
  x0 = local_m8; // 0x429884
  x2 = x0; // 0x429880
  local_m10 = x2; // 0x429888
  memSet(x2, 0xb, w0); // 0x42988c
  x0 = mem((PP + 0xc000), 0x2f0) /* Closure */; // 0x429894
  memSet(x2, 0x13, w0); // 0x429898
  x1 = mem((PP + 0x10000), 0xaf8) /* TypeArguments */; // 0x4298a0
  AllocationStub_ChangeNotifierProvider() /* 0x3b81c4 */; // 0x4298a4
  x0 = local_m10; // 0x4298ac
  x2 = x0; // 0x4298a8
  local_m8 = x2; // 0x4298b0
  memSet(x2, 0x13, w0); // 0x4298b4
  x0 = local_m18; // 0x4298b8
  memSet(x2, 0xb, w0); // 0x4298bc
  x1 = x2; // 0x4298c0
  int_kNull() /* 0x60bd34 */; // 0x4298c4
  AllocationStub_PartyPocketDialog() /* 0x3b91cc */; // 0x4298c8
  x1 = local_m8; // 0x4298cc
  memSet(x0, 0xb, w1); // 0x4298d0
  SP = FP; // 0x4298d4
  // frame: FP, LR, mem(SP), 0x10 // 0x4298d8
  return;
}

// SendPocketPageState_buildBottomLayout
// raw disassembly:
//  0x4298e8: stp FP, LR, [SP, #-0x10]!
//  0x4298ec: mov FP, SP
//  0x4298f0: sub SP, SP, #0x40
//  0x4298f4: mov x0, x1
//  0x4298f8: stur x1, [FP, #-8]
//  0x4298fc: mov x1, x2
//  0x429900: stur x2, [FP, #-0x10]
//  0x429904: ldr BARRIER, [THR, #0x38]
//  0x429908: cmp SP, BARRIER
//  0x42990c: b.ls #0x429b2c
//  0x429910: mov x1, #1
//  0x429914: bl #0x61e890
//  0x429918: mov x1, x0
//  0x42991c: ldur x0, [FP, #-8]
//  0x429920: stur w0, [x1, #0xf]
//  0x429924: mov x2, x1
//  0x429928: add x1, PP, #0x10, lsl #12
//  0x42992c: ldr x1, [x1, #0xb00]
//  0x429930: bl #0x61ec54
//  0x429934: stur x0, [FP, #-8]
//  0x429938: bl #0x3b3ef0
//  0x42993c: mov x2, x0
//  0x429940: ldur x0, [FP, #-8]
//  0x429944: stur x2, [FP, #-0x18]
//  0x429948: stur w0, [x2, #0xb]
//  0x42994c: ldur x1, [FP, #-0x10]
//  0x429950: bl #0x3b3a3c
//  0x429954: mov v1.16b, v0.16b
//  0x429958: fmov d0, #24.00000000
//  0x42995c: fadd d2, d1, d0
//  0x429960: stur d2, [FP, #-0x30]
//  0x429964: bl #0x2e3578
//  0x429968: stur x0, [FP, #-8]
//  0x42996c: stur xzr, [x0, #7]
//  0x429970: fmov d0, #7.00000000
//  0x429974: stur d0, [x0, #0xf]
//  0x429978: stur xzr, [x0, #0x17]
//  0x42997c: ldur d0, [FP, #-0x30]
//  0x429980: stur d0, [x0, #0x1f]
//  0x429984: add x1, PP, #0xc, lsl #12
//  0x429988: ldr x1, [x1, #0x9d8]
//  0x42998c: ldr x4, [PP, #0x4c0]
//  0x429990: bl #0x3a1dcc
//  0x429994: stur x0, [FP, #-0x10]
//  0x429998: bl #0x31d844
//  0x42999c: mov x1, x0
//  0x4299a0: ldr x0, [PP, #0x6310]
//  0x4299a4: stur w0, [x1, #0x27]
//  0x4299a8: fmov d0, #1.00000000
//  0x4299ac: stur d0, [x1, #7]
//  0x4299b0: add x17, PP, #0x10, lsl #12
//  0x4299b4: ldr d0, [x17, #0xb08]
//  0x4299b8: stur d0, [x1, #0xf]
//  0x4299bc: add x17, PP, #0x10, lsl #12
//  0x4299c0: ldr d0, [x17, #0xb10]
//  0x4299c4: stur d0, [x1, #0x17]
//  0x4299c8: add x17, PP, #0x10, lsl #12
//  0x4299cc: ldr d0, [x17, #0xb18]
//  0x4299d0: stur d0, [x1, #0x1f]
//  0x4299d4: bl #0x3b7e50
//  0x4299d8: add BARRIER, PP, #0xe, lsl #12
//  0x4299dc: ldr BARRIER, [BARRIER, #0xe40]
//  0x4299e0: add LR, PP, #0x10, lsl #12
//  0x4299e4: ldr LR, [LR, #0xb20]
//  0x4299e8: stp LR, BARRIER, [SP]
//  0x4299ec: mov x1, x0
//  0x4299f0: add x4, PP, #0x10, lsl #12
//  0x4299f4: ldr x4, [x4, #0xb28]
//  0x4299f8: bl #0x31a24c
//  0x4299fc: stur x0, [FP, #-0x20]
//  0x429a00: bl #0x393bf8
//  0x429a04: mov x1, x0
//  0x429a08: ldur x0, [FP, #-0x10]
//  0x429a0c: stur x1, [FP, #-0x28]
//  0x429a10: stur w0, [x1, #0xb]
//  0x429a14: ldur x0, [FP, #-0x20]
//  0x429a18: stur w0, [x1, #0x13]
//  0x429a1c: bl #0x3a1d94
//  0x429a20: add x1, PP, #0x10, lsl #12
//  0x429a24: ldr x1, [x1, #0xb30]
//  0x429a28: mov x2, NULL
//  0x429a2c: stur x0, [FP, #-0x10]
//  0x429a30: bl #0x61ec54
//  0x429a34: ldur BARRIER, [FP, #-0x28]
//  0x429a38: stp BARRIER, x0, [SP]
//  0x429a3c: ldur x1, [FP, #-0x10]
//  0x429a40: add x4, PP, #0xc, lsl #12
//  0x429a44: ldr x4, [x4, #0x208]
//  0x429a48: bl #0x3a18c4
//  0x429a4c: bl #0x391c0c
//  0x429a50: mov x3, x0
//  0x429a54: ldur x0, [FP, #-8]
//  0x429a58: stur x3, [FP, #-0x20]
//  0x429a5c: stur w0, [x3, #0xf]
//  0x429a60: ldur x0, [FP, #-0x10]
//  0x429a64: stur w0, [x3, #0xb]
//  0x429a68: mov x1, NULL
//  0x429a6c: mov x2, #4
//  0x429a70: bl #0x61f920
//  0x429a74: mov x2, x0
//  0x429a78: ldur x0, [FP, #-0x18]
//  0x429a7c: stur x2, [FP, #-8]
//  0x429a80: stur w0, [x2, #0xf]
//  0x429a84: ldur x0, [FP, #-0x20]
//  0x429a88: stur w0, [x2, #0x13]
//  0x429a8c: ldr x1, [PP, #0x5c58]
//  0x429a90: bl #0x61e854
//  0x429a94: mov x1, x0
//  0x429a98: ldur x0, [FP, #-8]
//  0x429a9c: stur x1, [FP, #-0x10]
//  0x429aa0: stur w0, [x1, #0xf]
//  0x429aa4: mov x0, #4
//  0x429aa8: stur w0, [x1, #0xb]
//  0x429aac: bl #0x39310c
//  0x429ab0: mov x1, x0
//  0x429ab4: add x0, PP, #0xa, lsl #12
//  0x429ab8: ldr x0, [x0, #0x858]
//  0x429abc: stur x1, [FP, #-8]
//  0x429ac0: stur w0, [x1, #0xf]
//  0x429ac4: add x0, PP, #0xe, lsl #12
//  0x429ac8: ldr x0, [x0, #0xae0]
//  0x429acc: stur w0, [x1, #0x13]
//  0x429ad0: add x0, PP, #0xe, lsl #12
//  0x429ad4: ldr x0, [x0, #0xb08]
//  0x429ad8: stur w0, [x1, #0x17]
//  0x429adc: add x0, PP, #0xe, lsl #12
//  0x429ae0: ldr x0, [x0, #0xb60]
//  0x429ae4: stur w0, [x1, #0x1b]
//  0x429ae8: add x0, PP, #0xe, lsl #12
//  0x429aec: ldr x0, [x0, #0xaf8]
//  0x429af0: stur w0, [x1, #0x23]
//  0x429af4: add x0, PP, #0xa, lsl #12
//  0x429af8: ldr x0, [x0, #0xa8]
//  0x429afc: stur w0, [x1, #0x2b]
//  0x429b00: stur xzr, [x1, #0x2f]
//  0x429b04: ldur x0, [FP, #-0x10]
//  0x429b08: stur w0, [x1, #0xb]
//  0x429b0c: bl #0x3949ec
//  0x429b10: ldr x1, [PP, #0x5458]
//  0x429b14: stur w1, [x0, #0xf]
//  0x429b18: ldur x1, [FP, #-8]
//  0x429b1c: stur w1, [x0, #0xb]
//  0x429b20: mov SP, FP
//  0x429b24: ldp FP, LR, [SP], #0x10
//  0x429b28: ret 
//  0x429b2c: bl #0x61fa28
//  0x429b30: b #0x429910
//
dynamic SendPocketPageState_buildBottomLayout() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d2;
  dynamic v1_16b;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4298e8
  // frame: FP = SP // 0x4298ec
  // frame: SP = SP - 0x40 // 0x4298f0
  x0 = x1; // 0x4298f4
  local_m8 = x1; // 0x4298f8
  x1 = x2; // 0x4298fc
  local_m10 = x2; // 0x429900
  BARRIER = mem(THR, 0x38); // 0x429904
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x429b2c
  }
  x1 = 1; // 0x429910
  sub_0x61e890(); // 0x429914
  x0 = local_m8; // 0x42991c
  x1 = x0; // 0x429918
  memSet(x1, 0xf, w0); // 0x429920
  x1 = mem((PP + 0x10000), 0xb00) /* Function */; // 0x42992c
  x2 = x1; // 0x429924
  AllocationStub__Closure() /* 0x61ec54 */; // 0x429930
  local_m8 = x0; // 0x429934
  AllocationStub_PartyPocketButton() /* 0x3b3ef0 */; // 0x429938
  x0 = local_m8; // 0x429940
  x2 = x0; // 0x42993c
  local_m18 = x2; // 0x429944
  memSet(x2, 0xb, w0); // 0x429948
  x1 = local_m10; // 0x42994c
  ScreenUtil_getPaddingBottom() /* 0x3b3a3c */; // 0x429950
  d0 = 24.00000000 /* bits */; // 0x429958
  d2 = (d1 + (24.00000000 /* bits */)) /* float */; // 0x42995c
  v1_16b = v0_16b; // 0x429954
  local_m30 = d2; // 0x429960
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x429964
  local_m8 = x0; // 0x429968
  memSet(x0, 7, xzr); // 0x42996c
  d0 = 7.00000000 /* bits */; // 0x429970
  memSet(x0, 0xf, d0); // 0x429974
  memSet(x0, 0x17, xzr); // 0x429978
  d0 = local_m30; // 0x42997c
  memSet(x0, 0x1f, d0); // 0x429980
  x1 = "virtual_party_lucky_pocket_send_popup_send_history" /* pp+0xc9d8 */; // 0x429988
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x42998c
  getString() /* 0x3a1dcc */; // 0x429990
  local_m10 = x0; // 0x429994
  AllocationStub_Color() /* 0x31d844 */; // 0x429998
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x4299a0
  x1 = x0; // 0x42999c
  memSet(x1, 0x27, w0); // 0x4299a4
  d0 = 1.00000000 /* bits */; // 0x4299a8
  memSet(x1, 7, d0); // 0x4299ac
  d0 = 4605063077798901880; // 0x4299b4
  x17 = PP + 0x10000; // 0x4299b0
  memSet(x1, 0xf, d0); // 0x4299b8
  d0 = 4597786673695071903; // 0x4299c0
  x17 = PP + 0x10000; // 0x4299bc
  memSet(x1, 0x17, d0); // 0x4299c4
  d0 = 4577935512984623128; // 0x4299cc
  x17 = PP + 0x10000; // 0x4299c8
  memSet(x1, 0x1f, d0); // 0x4299d0
  TextStyles_commonContent() /* 0x3b7e50 */; // 0x4299d4
  BARRIER = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x4299dc
  LR = mem((PP + 0x10000), 0xb20) /* Obj!TextDecoration@12025  */; // 0x4299e4
  // frame: LR, BARRIER, mem(SP) // 0x4299e8
  x1 = x0; // 0x4299ec
  x4 = mem((PP + 0x10000), 0xb28) /* ImmutableArray */; // 0x4299f4
  TextStyle_copyWith() /* 0x31a24c */; // 0x4299f8
  local_m20 = x0; // 0x4299fc
  AllocationStub_Text() /* 0x393bf8 */; // 0x429a00
  x0 = local_m10; // 0x429a08
  x1 = x0; // 0x429a04
  local_m28 = x1; // 0x429a0c
  memSet(x1, 0xb, w0); // 0x429a10
  x0 = local_m20; // 0x429a14
  memSet(x1, 0x13, w0); // 0x429a18
  sub_0x3a1d94(); // 0x429a1c
  x1 = mem((PP + 0x10000), 0xb30) /* Function */; // 0x429a24
  x2 = NULL; // 0x429a28
  local_m10 = x0; // 0x429a2c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x429a30
  BARRIER = local_m28; // 0x429a34
  // frame: BARRIER, x0, mem(SP) // 0x429a38
  x1 = local_m10; // 0x429a3c
  x4 = mem((PP + 0xc000), 0x208) /* ImmutableArray */; // 0x429a44
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x429a48
  AllocationStub_Padding() /* 0x391c0c */; // 0x429a4c
  x0 = local_m8; // 0x429a54
  x3 = x0; // 0x429a50
  local_m20 = x3; // 0x429a58
  memSet(x3, 0xf, w0); // 0x429a5c
  x0 = local_m10; // 0x429a60
  memSet(x3, 0xb, w0); // 0x429a64
  x1 = NULL; // 0x429a68
  x2 = 4; // 0x429a6c
  sub_0x61f920(); // 0x429a70
  x0 = local_m18; // 0x429a78
  x2 = x0; // 0x429a74
  local_m8 = x2; // 0x429a7c
  memSet(x2, 0xf, w0); // 0x429a80
  x0 = local_m20; // 0x429a84
  memSet(x2, 0x13, w0); // 0x429a88
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x429a8c
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x429a90
  x0 = local_m8; // 0x429a98
  x1 = x0; // 0x429a94
  local_m10 = x1; // 0x429a9c
  memSet(x1, 0xf, w0); // 0x429aa0
  x0 = 4; // 0x429aa4
  memSet(x1, 0xb, w0); // 0x429aa8
  AllocationStub_Column() /* 0x39310c */; // 0x429aac
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x429ab8
  x1 = x0; // 0x429ab0
  local_m8 = x1; // 0x429abc
  memSet(x1, 0xf, w0); // 0x429ac0
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x429ac8
  memSet(x1, 0x13, w0); // 0x429acc
  x0 = mem((PP + 0xe000), 0xb08) /* Obj!MainAxisSize@12270  */; // 0x429ad4
  memSet(x1, 0x17, w0); // 0x429ad8
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x429ae0
  memSet(x1, 0x1b, w0); // 0x429ae4
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x429aec
  memSet(x1, 0x23, w0); // 0x429af0
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x429af8
  memSet(x1, 0x2b, w0); // 0x429afc
  memSet(x1, 0x2f, xzr); // 0x429b00
  x0 = local_m10; // 0x429b04
  memSet(x1, 0xb, w0); // 0x429b08
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x429b0c
  x1 = mem(PP, 0x5458) /* Double */; // 0x429b10
  memSet(x0, 0xf, w1); // 0x429b14
  x1 = local_m8; // 0x429b18
  memSet(x0, 0xb, w1); // 0x429b1c
  SP = FP; // 0x429b20
  // frame: FP, LR, mem(SP), 0x10 // 0x429b24
  return;
}

// SendPocketPageState_anon_closure_3
// raw disassembly:
//  0x429b34: stp FP, LR, [SP, #-0x10]!
//  0x429b38: mov FP, SP
//  0x429b3c: sub SP, SP, #8
//  0x429b40: ldr BARRIER, [THR, #0x38]
//  0x429b44: cmp SP, BARRIER
//  0x429b48: b.ls #0x429b98
//  0x429b4c: add x1, PP, #0x10, lsl #12
//  0x429b50: ldr x1, [x1, #0xb38]
//  0x429b54: ldr x4, [PP, #0x4c0]
//  0x429b58: bl #0x3a8e60
//  0x429b5c: bl #0x3a86c0
//  0x429b60: add BARRIER, NULL, #0x20
//  0x429b64: str BARRIER, [SP]
//  0x429b68: mov x1, x0
//  0x429b6c: add x2, PP, #9, lsl #12
//  0x429b70: ldr x2, [x2, #0xe90]
//  0x429b74: add x4, PP, #0x10, lsl #12
//  0x429b78: ldr x4, [x4, #0xb40]
//  0x429b7c: bl #0x3a99b4
//  0x429b80: mov x1, x0
//  0x429b84: bl #0x3a6ae8
//  0x429b88: mov x0, NULL
//  0x429b8c: mov SP, FP
//  0x429b90: ldp FP, LR, [SP], #0x10
//  0x429b94: ret 
//  0x429b98: bl #0x61fa28
//  0x429b9c: b #0x429b4c
//
dynamic SendPocketPageState_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x429b34
  BARRIER = mem(THR, 0x38); // 0x429b40
  // frame: FP = SP // 0x429b38
  // frame: SP = SP - 8 // 0x429b3c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x429b98
  }
  x1 = "LuckyPocket_PopSendHistory" /* pp+0x10b38 */; // 0x429b50
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x429b54
  EventTrack_eventClick() /* 0x3a8e60 */; // 0x429b58
  RouterNative_getInstance() /* 0x3a86c0 */; // 0x429b5c
  BARRIER = NULL + 0x20; // 0x429b60
  local_0 = BARRIER; // 0x429b64
  x1 = x0; // 0x429b68
  x2 = "page_virtual_party_pocket_history" /* pp+0x9e90 */; // 0x429b70
  x4 = mem((PP + 0x10000), 0xb40) /* ImmutableArray */; // 0x429b78
  RouterNative_routeFlutter() /* 0x3a99b4 */; // 0x429b7c
  x1 = x0; // 0x429b80
  SoulNavigator_navigate() /* 0x3a6ae8 */; // 0x429b84
  SP = FP; // 0x429b8c
  x0 = NULL; // 0x429b88
  // frame: FP, LR, mem(SP), 0x10 // 0x429b90
  return;
}

// SendPocketPageState_anon_closure_4
// raw disassembly:
//  0x429ba0: stp FP, LR, [SP, #-0x10]!
//  0x429ba4: mov FP, SP
//  0x429ba8: ldr x0, [FP, #0x10]
//  0x429bac: ldur w1, [x0, #0x17]
//  0x429bb0: add x1, x1, HEAP, lsl #32
//  0x429bb4: ldr BARRIER, [THR, #0x38]
//  0x429bb8: cmp SP, BARRIER
//  0x429bbc: b.ls #0x429bf8
//  0x429bc0: ldur w0, [x1, #0xf]
//  0x429bc4: add x0, x0, HEAP, lsl #32
//  0x429bc8: ldur w1, [x0, #0x13]
//  0x429bcc: add x1, x1, HEAP, lsl #32
//  0x429bd0: ldur w2, [x0, #0x17]
//  0x429bd4: add x2, x2, HEAP, lsl #32
//  0x429bd8: ldr BARRIER, [PP, #0x40]
//  0x429bdc: cmp w2, w16
//  0x429be0: b.eq #0x429c00
//  0x429be4: bl #0x429c0c
//  0x429be8: mov x0, NULL
//  0x429bec: mov SP, FP
//  0x429bf0: ldp FP, LR, [SP], #0x10
//  0x429bf4: ret 
//  0x429bf8: bl #0x61fa28
//  0x429bfc: b #0x429bc0
//  0x429c00: add x9, PP, #0x10, lsl #12
//  0x429c04: ldr x9, [x9, #0xb48]
//  0x429c08: bl #0x620258
//
dynamic SendPocketPageState_anon_closure_4() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x429ba0
  BARRIER = mem(THR, 0x38); // 0x429bb4
  // frame: FP = SP // 0x429ba4
  w1 = mem((local_10), 0x17); /* _SendPocketPageState._roomId (off 0x18) */  // 0x429bac
  x0 = local_10; // 0x429ba8
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); /* _SendPocketPageState._roomId (off 0x18) */  // 0x429bb0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x429bf8
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x429bd8
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13); // 0x429bc8
  w2 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x429bd0
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x429bc4
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x429bcc
  x2 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x429bd4
  if (w2 == w16) {
    x9 = mem((PP + 0x10000), 0xb48) /* Field */; // 0x429c04
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x429c08
  }
  PartySendPocketNotifier_sendRedPocket() /* 0x429c0c */; // 0x429be4
  SP = FP; // 0x429bec
  x0 = NULL; // 0x429be8
  // frame: FP, LR, mem(SP), 0x10 // 0x429bf0
  return;
}

// SendPocketPageState_buildPocketNumLayout
// raw disassembly:
//  0x42a04c: stp FP, LR, [SP, #-0x10]!
//  0x42a050: mov FP, SP
//  0x42a054: sub SP, SP, #0x18
//  0x42a058: stur x1, [FP, #-8]
//  0x42a05c: mov x1, #1
//  0x42a060: bl #0x61e890
//  0x42a064: mov x2, x0
//  0x42a068: ldur x0, [FP, #-8]
//  0x42a06c: stur x2, [FP, #-0x10]
//  0x42a070: stur w0, [x2, #0xf]
//  0x42a074: add x1, PP, #0x10, lsl #12
//  0x42a078: ldr x1, [x1, #0xbd8]
//  0x42a07c: bl #0x41c8d4
//  0x42a080: stur x0, [FP, #-8]
//  0x42a084: mov x1, #2
//  0x42a088: bl #0x61e890
//  0x42a08c: mov x3, x0
//  0x42a090: ldur x0, [FP, #-8]
//  0x42a094: stur x3, [FP, #-0x18]
//  0x42a098: stur w0, [x3, #0xf]
//  0x42a09c: add x1, PP, #0x10, lsl #12
//  0x42a0a0: ldr x1, [x1, #0xbe0]
//  0x42a0a4: mov x2, NULL
//  0x42a0a8: bl #0x61ec54
//  0x42a0ac: mov x1, x0
//  0x42a0b0: ldur x0, [FP, #-0x18]
//  0x42a0b4: stur w1, [x0, #0x13]
//  0x42a0b8: ldur x2, [FP, #-0x10]
//  0x42a0bc: add x1, PP, #0x10, lsl #12
//  0x42a0c0: ldr x1, [x1, #0xbe8]
//  0x42a0c4: bl #0x61ec54
//  0x42a0c8: mov x1, x0
//  0x42a0cc: ldur x0, [FP, #-8]
//  0x42a0d0: stur w1, [x0, #0x13]
//  0x42a0d4: ldur x2, [FP, #-0x18]
//  0x42a0d8: add x1, PP, #0xf, lsl #12
//  0x42a0dc: ldr x1, [x1, #0x640]
//  0x42a0e0: add x3, PP, #0x10, lsl #12
//  0x42a0e4: ldr x3, [x3, #0xbd8]
//  0x42a0e8: bl #0x61ea98
//  0x42a0ec: mov x1, x0
//  0x42a0f0: ldur x0, [FP, #-8]
//  0x42a0f4: stur w1, [x0, #0x17]
//  0x42a0f8: mov SP, FP
//  0x42a0fc: ldp FP, LR, [SP], #0x10
//  0x42a100: ret 
//
dynamic SendPocketPageState_buildPocketNumLayout() {
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42a04c
  // frame: FP = SP // 0x42a050
  // frame: SP = SP - 0x18 // 0x42a054
  local_m8 = x1; // 0x42a058
  x1 = 1; // 0x42a05c
  sub_0x61e890(); // 0x42a060
  x0 = local_m8; // 0x42a068
  x2 = x0; // 0x42a064
  local_m10 = x2; // 0x42a06c
  memSet(x2, 0xf, w0); // 0x42a070
  x1 = mem((PP + 0x10000), 0xbd8) /* TypeArguments */; // 0x42a078
  AllocationStub_Selector() /* 0x41c8d4 */; // 0x42a07c
  local_m8 = x0; // 0x42a080
  x1 = 2; // 0x42a084
  sub_0x61e890(); // 0x42a088
  x0 = local_m8; // 0x42a090
  x3 = x0; // 0x42a08c
  local_m18 = x3; // 0x42a094
  memSet(x3, 0xf, w0); // 0x42a098
  x1 = mem((PP + 0x10000), 0xbe0) /* Function */; // 0x42a0a0
  x2 = NULL; // 0x42a0a4
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42a0a8
  x0 = local_m18; // 0x42a0b0
  x1 = x0; // 0x42a0ac
  memSet(x0, 0x13, w1); // 0x42a0b4
  x1 = mem((PP + 0x10000), 0xbe8) /* Function */; // 0x42a0c0
  x2 = local_m10; // 0x42a0b8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42a0c4
  x0 = local_m8; // 0x42a0cc
  x1 = x0; // 0x42a0c8
  memSet(x0, 0x13, w1); // 0x42a0d0
  x1 = mem((PP + 0xf000), 0x640) /* Function */; // 0x42a0dc
  x2 = local_m18; // 0x42a0d4
  x3 = mem((PP + 0x10000), 0xbd8) /* TypeArguments */; // 0x42a0e4
  AllocationStub__Closure() /* 0x61ea98 */; // 0x42a0e8
  x0 = local_m8; // 0x42a0f0
  x1 = x0; // 0x42a0ec
  memSet(x0, 0x17, w1); // 0x42a0f4
  SP = FP; // 0x42a0f8
  // frame: FP, LR, mem(SP), 0x10 // 0x42a0fc
  return;
}

// SendPocketPageState_anon_closure_5
// raw disassembly:
//  0x42a104: stp FP, LR, [SP, #-0x10]!
//  0x42a108: mov FP, SP
//  0x42a10c: sub SP, SP, #0x30
//  0x42a110: ldr x0, [FP, #0x28]
//  0x42a114: ldur w2, [x0, #0x17]
//  0x42a118: add x2, x2, HEAP, lsl #32
//  0x42a11c: stur x2, [FP, #-8]
//  0x42a120: ldr BARRIER, [THR, #0x38]
//  0x42a124: cmp SP, BARRIER
//  0x42a128: b.ls #0x42a1e8
//  0x42a12c: bl #0x41ee8c
//  0x42a130: mov x1, x0
//  0x42a134: mov x0, #4
//  0x42a138: stur x1, [FP, #-0x18]
//  0x42a13c: stur x0, [x1, #7]
//  0x42a140: fmov d0, #4.00000000
//  0x42a144: stur d0, [x1, #0xf]
//  0x42a148: stur d0, [x1, #0x17]
//  0x42a14c: ldr d0, [PP, #0x6670]
//  0x42a150: stur d0, [x1, #0x1f]
//  0x42a154: ldr x0, [FP, #0x18]
//  0x42a158: sbfx x5, x0, #1, #0x1f
//  0x42a15c: tbz w0, #0, #0x42a164
//  0x42a160: ldur x5, [x0, #7]
//  0x42a164: stur x5, [FP, #-0x10]
//  0x42a168: bl #0x419950
//  0x42a16c: ldur x2, [FP, #-8]
//  0x42a170: add x1, PP, #0x10, lsl #12
//  0x42a174: ldr x1, [x1, #0xbf0]
//  0x42a178: stur x0, [FP, #-8]
//  0x42a17c: bl #0x61ec54
//  0x42a180: stur x0, [FP, #-0x20]
//  0x42a184: bl #0x41ee80
//  0x42a188: stur x0, [FP, #-0x28]
//  0x42a18c: add BARRIER, NULL, #0x20
//  0x42a190: str BARRIER, [SP]
//  0x42a194: mov x1, x0
//  0x42a198: ldur x2, [FP, #-0x18]
//  0x42a19c: ldur x3, [FP, #-0x20]
//  0x42a1a0: ldur x5, [FP, #-0x10]
//  0x42a1a4: ldur x6, [FP, #-8]
//  0x42a1a8: add x4, PP, #0x10, lsl #12
//  0x42a1ac: ldr x4, [x4, #0x928]
//  0x42a1b0: bl #0x41ec7c
//  0x42a1b4: add x1, PP, #0xf, lsl #12
//  0x42a1b8: ldr x1, [x1, #0x218]
//  0x42a1bc: bl #0x396454
//  0x42a1c0: mov x1, x0
//  0x42a1c4: ldur x2, [FP, #-0x28]
//  0x42a1c8: ldr x3, [FP, #0x20]
//  0x42a1cc: stur x0, [FP, #-8]
//  0x42a1d0: ldr x4, [PP, #0x2e0]
//  0x42a1d4: bl #0x39ecf8
//  0x42a1d8: ldur x0, [FP, #-8]
//  0x42a1dc: mov SP, FP
//  0x42a1e0: ldp FP, LR, [SP], #0x10
//  0x42a1e4: ret 
//  0x42a1e8: bl #0x61fa28
//  0x42a1ec: b #0x42a12c
//
dynamic SendPocketPageState_anon_closure_5() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42a104
  // frame: FP = SP // 0x42a108
  // frame: SP = SP - 0x30 // 0x42a10c
  w2 = mem((local_28), 0x17); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42a114
  x0 = local_28; // 0x42a110
  x2 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42a118
  local_m8 = x2; // 0x42a11c
  BARRIER = mem(THR, 0x38); // 0x42a120
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42a1e8
  }
  AllocationStub_SliverGridDelegateWithFixedCrossAxisCount() /* 0x41ee8c */; // 0x42a12c
  x0 = 4; // 0x42a134
  x1 = x0; // 0x42a130
  local_m18 = x1; // 0x42a138
  memSet(x1, 7, x0); // 0x42a13c
  d0 = 4.00000000 /* bits */; // 0x42a140
  memSet(x1, 0xf, d0); // 0x42a144
  memSet(x1, 0x17, d0); // 0x42a148
  d0 = 4604390187031047700; // 0x42a14c
  memSet(x1, 0x1f, d0); // 0x42a150
  x0 = local_18; // 0x42a154
  x5 = ((local_18) >> 1) & 0x7fffffff; // 0x42a158
  if (x0 & (1 << 0) == 0) {
  } else {
    x5 = mem(x0, 7); // 0x42a160
  }
  local_m10 = x5; // 0x42a164
  AllocationStub_NeverScrollableScrollPhysics() /* 0x419950 */; // 0x42a168
  x1 = mem((PP + 0x10000), 0xbf0) /* Function */; // 0x42a174
  x2 = local_m8; // 0x42a16c
  local_m8 = x0; // 0x42a178
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42a17c
  local_m20 = x0; // 0x42a180
  AllocationStub_GridView() /* 0x41ee80 */; // 0x42a184
  local_m28 = x0; // 0x42a188
  BARRIER = NULL + 0x20; // 0x42a18c
  local_0 = BARRIER; // 0x42a190
  x1 = x0; // 0x42a194
  x2 = local_m18; // 0x42a198
  x3 = local_m20; // 0x42a19c
  x4 = mem((PP + 0x10000), 0x928) /* ImmutableArray */; // 0x42a1ac
  x5 = local_m10; // 0x42a1a0
  x6 = local_m8; // 0x42a1a4
  GridView_ctor_builder() /* 0x41ec7c */; // 0x42a1b0
  x1 = mem((PP + 0xf000), 0x218) /* TypeArguments */; // 0x42a1b8
  AllocationStub_MediaQuery() /* 0x396454 */; // 0x42a1bc
  x1 = x0; // 0x42a1c0
  x2 = local_m28; // 0x42a1c4
  x3 = local_20; // 0x42a1c8
  local_m8 = x0; // 0x42a1cc
  x4 = mem(PP, 0x2e0) /* ImmutableArray */; // 0x42a1d0
  MediaQuery_ctor_removePadding() /* 0x39ecf8 */; // 0x42a1d4
  SP = FP; // 0x42a1dc
  x0 = local_m8; // 0x42a1d8
  // frame: FP, LR, mem(SP), 0x10 // 0x42a1e0
  return;
}

// SendPocketPageState_anon_closure_6
// raw disassembly:
//  0x42a1f0: stp FP, LR, [SP, #-0x10]!
//  0x42a1f4: mov FP, SP
//  0x42a1f8: sub SP, SP, #0x28
//  0x42a1fc: ldr x0, [FP, #0x20]
//  0x42a200: ldur w1, [x0, #0x17]
//  0x42a204: add x1, x1, HEAP, lsl #32
//  0x42a208: stur x1, [FP, #-8]
//  0x42a20c: ldr BARRIER, [THR, #0x38]
//  0x42a210: cmp SP, BARRIER
//  0x42a214: b.ls #0x42a2fc
//  0x42a218: mov x1, #1
//  0x42a21c: bl #0x61e890
//  0x42a220: mov x2, x0
//  0x42a224: ldur x0, [FP, #-8]
//  0x42a228: stur x2, [FP, #-0x10]
//  0x42a22c: stur w0, [x2, #0xb]
//  0x42a230: ldr x0, [FP, #0x10]
//  0x42a234: stur w0, [x2, #0xf]
//  0x42a238: add x1, PP, #0x10, lsl #12
//  0x42a23c: ldr x1, [x1, #0xbd8]
//  0x42a240: bl #0x41c8d4
//  0x42a244: stur x0, [FP, #-8]
//  0x42a248: mov x1, #2
//  0x42a24c: bl #0x61e890
//  0x42a250: mov x3, x0
//  0x42a254: ldur x0, [FP, #-8]
//  0x42a258: stur x3, [FP, #-0x18]
//  0x42a25c: stur w0, [x3, #0xf]
//  0x42a260: add x1, PP, #0x10, lsl #12
//  0x42a264: ldr x1, [x1, #0xbf8]
//  0x42a268: mov x2, NULL
//  0x42a26c: bl #0x61ec54
//  0x42a270: mov x1, x0
//  0x42a274: ldur x0, [FP, #-0x18]
//  0x42a278: stur w1, [x0, #0x13]
//  0x42a27c: ldur x2, [FP, #-0x10]
//  0x42a280: add x1, PP, #0x10, lsl #12
//  0x42a284: ldr x1, [x1, #0xc00]
//  0x42a288: bl #0x61ec54
//  0x42a28c: mov x1, x0
//  0x42a290: ldur x0, [FP, #-8]
//  0x42a294: stur w1, [x0, #0x13]
//  0x42a298: ldur x2, [FP, #-0x18]
//  0x42a29c: add x1, PP, #0xf, lsl #12
//  0x42a2a0: ldr x1, [x1, #0x640]
//  0x42a2a4: add x3, PP, #0x10, lsl #12
//  0x42a2a8: ldr x3, [x3, #0xbd8]
//  0x42a2ac: bl #0x61ea98
//  0x42a2b0: mov x1, x0
//  0x42a2b4: ldur x0, [FP, #-8]
//  0x42a2b8: stur w1, [x0, #0x17]
//  0x42a2bc: bl #0x3a1d94
//  0x42a2c0: ldur x2, [FP, #-0x10]
//  0x42a2c4: add x1, PP, #0x10, lsl #12
//  0x42a2c8: ldr x1, [x1, #0xc08]
//  0x42a2cc: stur x0, [FP, #-0x10]
//  0x42a2d0: bl #0x61ec54
//  0x42a2d4: ldur BARRIER, [FP, #-8]
//  0x42a2d8: stp BARRIER, x0, [SP]
//  0x42a2dc: ldur x1, [FP, #-0x10]
//  0x42a2e0: add x4, PP, #0xc, lsl #12
//  0x42a2e4: ldr x4, [x4, #0x208]
//  0x42a2e8: bl #0x3a18c4
//  0x42a2ec: ldur x0, [FP, #-0x10]
//  0x42a2f0: mov SP, FP
//  0x42a2f4: ldp FP, LR, [SP], #0x10
//  0x42a2f8: ret 
//  0x42a2fc: bl #0x61fa28
//  0x42a300: b #0x42a218
//
dynamic SendPocketPageState_anon_closure_6() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42a1f0
  // frame: FP = SP // 0x42a1f4
  // frame: SP = SP - 0x28 // 0x42a1f8
  w1 = mem((local_20), 0x17); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42a200
  x0 = local_20; // 0x42a1fc
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42a204
  local_m8 = x1; // 0x42a208
  BARRIER = mem(THR, 0x38); // 0x42a20c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42a2fc
  }
  x1 = 1; // 0x42a218
  sub_0x61e890(); // 0x42a21c
  x0 = local_m8; // 0x42a224
  x2 = x0; // 0x42a220
  local_m10 = x2; // 0x42a228
  memSet(x2, 0xb, w0); // 0x42a22c
  x0 = local_10; // 0x42a230
  memSet(x2, 0xf, w0); // 0x42a234
  x1 = mem((PP + 0x10000), 0xbd8) /* TypeArguments */; // 0x42a23c
  AllocationStub_Selector() /* 0x41c8d4 */; // 0x42a240
  local_m8 = x0; // 0x42a244
  x1 = 2; // 0x42a248
  sub_0x61e890(); // 0x42a24c
  x0 = local_m8; // 0x42a254
  x3 = x0; // 0x42a250
  local_m18 = x3; // 0x42a258
  memSet(x3, 0xf, w0); // 0x42a25c
  x1 = mem((PP + 0x10000), 0xbf8) /* Function */; // 0x42a264
  x2 = NULL; // 0x42a268
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42a26c
  x0 = local_m18; // 0x42a274
  x1 = x0; // 0x42a270
  memSet(x0, 0x13, w1); // 0x42a278
  x1 = mem((PP + 0x10000), 0xc00) /* Function */; // 0x42a284
  x2 = local_m10; // 0x42a27c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42a288
  x0 = local_m8; // 0x42a290
  x1 = x0; // 0x42a28c
  memSet(x0, 0x13, w1); // 0x42a294
  x1 = mem((PP + 0xf000), 0x640) /* Function */; // 0x42a2a0
  x2 = local_m18; // 0x42a298
  x3 = mem((PP + 0x10000), 0xbd8) /* TypeArguments */; // 0x42a2a8
  AllocationStub__Closure() /* 0x61ea98 */; // 0x42a2ac
  x0 = local_m8; // 0x42a2b4
  x1 = x0; // 0x42a2b0
  memSet(x0, 0x17, w1); // 0x42a2b8
  sub_0x3a1d94(); // 0x42a2bc
  x1 = mem((PP + 0x10000), 0xc08) /* Function */; // 0x42a2c8
  x2 = local_m10; // 0x42a2c0
  local_m10 = x0; // 0x42a2cc
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42a2d0
  BARRIER = local_m8; // 0x42a2d4
  // frame: BARRIER, x0, mem(SP) // 0x42a2d8
  x1 = local_m10; // 0x42a2dc
  x4 = mem((PP + 0xc000), 0x208) /* ImmutableArray */; // 0x42a2e4
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x42a2e8
  SP = FP; // 0x42a2f0
  x0 = local_m10; // 0x42a2ec
  // frame: FP, LR, mem(SP), 0x10 // 0x42a2f4
  return;
}

// SendPocketPageState_anon_closure_7
// raw disassembly:
//  0x42a304: stp FP, LR, [SP, #-0x10]!
//  0x42a308: mov FP, SP
//  0x42a30c: ldr x0, [FP, #0x10]
//  0x42a310: ldur w1, [x0, #0x17]
//  0x42a314: add x1, x1, HEAP, lsl #32
//  0x42a318: ldr BARRIER, [THR, #0x38]
//  0x42a31c: cmp SP, BARRIER
//  0x42a320: b.ls #0x42a36c
//  0x42a324: ldur w0, [x1, #0xb]
//  0x42a328: add x0, x0, HEAP, lsl #32
//  0x42a32c: ldur w2, [x0, #0xf]
//  0x42a330: add x2, x2, HEAP, lsl #32
//  0x42a334: ldur w0, [x2, #0x13]
//  0x42a338: add x0, x0, HEAP, lsl #32
//  0x42a33c: ldur w2, [x1, #0xf]
//  0x42a340: add x2, x2, HEAP, lsl #32
//  0x42a344: sbfx x1, x2, #1, #0x1f
//  0x42a348: tbz w2, #0, #0x42a350
//  0x42a34c: ldur x1, [x2, #7]
//  0x42a350: mov x2, x1
//  0x42a354: mov x1, x0
//  0x42a358: bl #0x42a374
//  0x42a35c: mov x0, NULL
//  0x42a360: mov SP, FP
//  0x42a364: ldp FP, LR, [SP], #0x10
//  0x42a368: ret 
//  0x42a36c: bl #0x61fa28
//  0x42a370: b #0x42a324
//
dynamic SendPocketPageState_anon_closure_7() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42a304
  BARRIER = mem(THR, 0x38); // 0x42a318
  // frame: FP = SP // 0x42a308
  w1 = mem((local_10), 0x17); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42a310
  x0 = local_10; // 0x42a30c
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42a314
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42a36c
  }
  w0 = mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13); // 0x42a334
  w2 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf); // 0x42a32c
  x0 = (mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff; // 0x42a334
  x2 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42a330
  w2 = mem(x1, 0xf); // 0x42a33c
  x0 = x0 + (HEAP << 32); // 0x42a338
  x1 = ((((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x42a344
  x2 = ((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42a340
  if (x2 & (1 << 0) == 0) {
  } else {
    x1 = mem(x2, 7); // 0x42a34c
  }
  x1 = x0; // 0x42a354
  x2 = x1; // 0x42a350
  PartySendPocketNotifier_updatePocketNum() /* 0x42a374 */; // 0x42a358
  SP = FP; // 0x42a360
  x0 = NULL; // 0x42a35c
  // frame: FP, LR, mem(SP), 0x10 // 0x42a364
  return;
}

// SendPocketPageState_anon_closure_8
// raw disassembly:
//  0x42a4b0: stp FP, LR, [SP, #-0x10]!
//  0x42a4b4: mov FP, SP
//  0x42a4b8: sub SP, SP, #0x20
//  0x42a4bc: ldr x0, [FP, #0x28]
//  0x42a4c0: ldur w1, [x0, #0x17]
//  0x42a4c4: add x1, x1, HEAP, lsl #32
//  0x42a4c8: stur x1, [FP, #-0x10]
//  0x42a4cc: ldr BARRIER, [THR, #0x38]
//  0x42a4d0: cmp SP, BARRIER
//  0x42a4d4: b.ls #0x42a5e8
//  0x42a4d8: ldur w0, [x1, #0xb]
//  0x42a4dc: add x0, x0, HEAP, lsl #32
//  0x42a4e0: ldur w2, [x0, #0xf]
//  0x42a4e4: add x2, x2, HEAP, lsl #32
//  0x42a4e8: stur x2, [FP, #-8]
//  0x42a4ec: bl #0x3a142c
//  0x42a4f0: mov x2, x0
//  0x42a4f4: add x0, PP, #0x10, lsl #12
//  0x42a4f8: ldr x0, [x0, #0xc20]
//  0x42a4fc: stur x2, [FP, #-0x20]
//  0x42a500: stur w0, [x2, #0xb]
//  0x42a504: add x0, PP, #0xf, lsl #12
//  0x42a508: ldr x0, [x0, #0x170]
//  0x42a50c: stur w0, [x2, #0xf]
//  0x42a510: add x0, PP, #0xf, lsl #12
//  0x42a514: ldr x0, [x0, #0xb90]
//  0x42a518: stur w0, [x2, #0x13]
//  0x42a51c: add x0, PP, #0x10, lsl #12
//  0x42a520: ldr x0, [x0, #0xc28]
//  0x42a524: stur w0, [x2, #0x17]
//  0x42a528: ldur x3, [FP, #-8]
//  0x42a52c: ldur w0, [x3, #0x13]
//  0x42a530: add x0, x0, HEAP, lsl #32
//  0x42a534: ldur w4, [x0, #0x3f]
//  0x42a538: add x4, x4, HEAP, lsl #32
//  0x42a53c: ldur x5, [FP, #-0x10]
//  0x42a540: ldur w0, [x5, #0xf]
//  0x42a544: add x0, x0, HEAP, lsl #32
//  0x42a548: ldur w1, [x4, #0xb]
//  0x42a54c: sbfx x6, x0, #1, #0x1f
//  0x42a550: tbz w0, #0, #0x42a558
//  0x42a554: ldur x6, [x0, #7]
//  0x42a558: sbfx x0, x1, #1, #0x1f
//  0x42a55c: mov x1, x6
//  0x42a560: cmp x1, x0
//  0x42a564: b.hs #0x42a5f0
//  0x42a568: ldur w0, [x4, #0xf]
//  0x42a56c: add x0, x0, HEAP, lsl #32
//  0x42a570: add BARRIER, x0, x6, lsl #2
//  0x42a574: ldur w1, [BARRIER, #0xf]
//  0x42a578: add x1, x1, HEAP, lsl #32
//  0x42a57c: stur x1, [FP, #-0x18]
//  0x42a580: bl #0x42ad5c
//  0x42a584: mov x1, x0
//  0x42a588: ldur x2, [FP, #-0x18]
//  0x42a58c: stur x0, [FP, #-0x18]
//  0x42a590: bl #0x42ac74
//  0x42a594: ldur x0, [FP, #-0x10]
//  0x42a598: ldur w1, [x0, #0xf]
//  0x42a59c: add x1, x1, HEAP, lsl #32
//  0x42a5a0: ldr x0, [FP, #0x18]
//  0x42a5a4: sbfx x2, x0, #1, #0x1f
//  0x42a5a8: tbz w0, #0, #0x42a5b0
//  0x42a5ac: ldur x2, [x0, #7]
//  0x42a5b0: sbfx x0, x1, #1, #0x1f
//  0x42a5b4: tbz w1, #0, #0x42a5bc
//  0x42a5b8: ldur x0, [x1, #7]
//  0x42a5bc: cmp x0, x2
//  0x42a5c0: add BARRIER, NULL, #0x20
//  0x42a5c4: add x17, NULL, #0x30
//  0x42a5c8: csel x5, BARRIER, x17, eq
//  0x42a5cc: ldur x1, [FP, #-8]
//  0x42a5d0: ldur x2, [FP, #-0x20]
//  0x42a5d4: ldur x3, [FP, #-0x18]
//  0x42a5d8: bl #0x42a5f4
//  0x42a5dc: mov SP, FP
//  0x42a5e0: ldp FP, LR, [SP], #0x10
//  0x42a5e4: ret 
//  0x42a5e8: bl #0x61fa28
//  0x42a5ec: b #0x42a4d8
//  0x42a5f0: bl #0x61fe70
//
dynamic SendPocketPageState_anon_closure_8() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42a4b0
  // frame: FP = SP // 0x42a4b4
  // frame: SP = SP - 0x20 // 0x42a4b8
  w1 = mem((local_28), 0x17); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42a4c0
  x0 = local_28; // 0x42a4bc
  x1 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42a4c4
  local_m10 = x1; // 0x42a4c8
  BARRIER = mem(THR, 0x38); // 0x42a4cc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42a5e8
  }
  w2 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf); // 0x42a4e0
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x42a4dc
  x2 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42a4e4
  local_m8 = x2; // 0x42a4e8
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x42a4ec
  x0 = "assets/images/3.0x/party_icon_lucky.webp" /* pp+0x10c20 */; // 0x42a4f8
  x2 = x0; // 0x42a4f0
  local_m20 = x2; // 0x42a4fc
  memSet(x2, 0xb, w0); // 0x42a500
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x42a508
  memSet(x2, 0xf, w0); // 0x42a50c
  x0 = mem((PP + 0xf000), 0xb90) /* Double */; // 0x42a514
  memSet(x2, 0x13, w0); // 0x42a518
  x0 = mem((PP + 0x10000), 0xc28) /* Double */; // 0x42a520
  memSet(x2, 0x17, w0); // 0x42a524
  w0 = mem((local_m10), 0xf); // 0x42a540
  w4 = mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x3f); // 0x42a534
  x0 = (mem((local_m10), 0xf)) & 0xffffffff; // 0x42a540
  x3 = local_m8; // 0x42a528
  x4 = ((mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x3f)) & 0xffffffff) + (HEAP << 32); // 0x42a538
  x5 = local_m10; // 0x42a53c
  w1 = mem(x4, 0xb); // 0x42a548
  x0 = x0 + (HEAP << 32); // 0x42a544
  x1 = (mem(x4, 0xb)) & 0xffffffff; // 0x42a548
  x6 = ((x0 + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x42a54c
  if (x0 & (1 << 0) == 0) {
  } else {
    x6 = mem(x0, 7); // 0x42a554
  }
  x0 = (x1 >> 1) & 0x7fffffff; // 0x42a558
  x1 = x6; // 0x42a55c
  if (x1 >= x0) {
    RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x42a5f0
  }
  BARRIER = ((w0 & 0xffffffff) + (HEAP << 32)) + (x6 << 2); // 0x42a570
  w1 = mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x6 << 2)), 0xf); // 0x42a574
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x42a56c
  x1 = ((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x6 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42a578
  local_m18 = x1; // 0x42a57c
  AllocationStub_PartySendPocketItem() /* 0x42ad5c */; // 0x42a580
  x1 = x0; // 0x42a584
  x2 = local_m18; // 0x42a588
  local_m18 = x0; // 0x42a58c
  PartySendPocketItem_ctor_createNum() /* 0x42ac74 */; // 0x42a590
  w1 = mem((local_m10), 0xf); // 0x42a598
  x0 = local_18; // 0x42a5a0
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42a59c
  x2 = ((local_18) >> 1) & 0x7fffffff; // 0x42a5a4
  if (x0 & (1 << 0) == 0) {
  } else {
    x2 = mem(x0, 7); // 0x42a5ac
  }
  x0 = (x1 >> 1) & 0x7fffffff; // 0x42a5b0
  if (x1 & (1 << 0) == 0) {
  } else {
    x0 = mem(x1, 7); // 0x42a5b8
  }
  BARRIER = NULL + 0x20; // 0x42a5c0
  x1 = local_m8; // 0x42a5cc
  x17 = NULL + 0x30; // 0x42a5c4
  x2 = local_m20; // 0x42a5d0
  x3 = local_m18; // 0x42a5d4
  x5 = (x0 == x2) ? (NULL + 0x20) : (NULL + 0x30); // 0x42a5c8
  SendPocketPageState_buildSendItem() /* 0x42a5f4 */; // 0x42a5d8
  SP = FP; // 0x42a5dc
  // frame: FP, LR, mem(SP), 0x10 // 0x42a5e0
  return;
}

// SendPocketPageState_buildSendItem
// raw disassembly:
//  0x42a5f4: stp FP, LR, [SP, #-0x10]!
//  0x42a5f8: mov FP, SP
//  0x42a5fc: sub SP, SP, #0x60
//  0x42a600: stur x2, [FP, #-0x18]
//  0x42a604: stur x5, [FP, #-0x20]
//  0x42a608: ldr BARRIER, [THR, #0x38]
//  0x42a60c: cmp SP, BARRIER
//  0x42a610: b.ls #0x42ac54
//  0x42a614: ldur w0, [x3, #7]
//  0x42a618: add x0, x0, HEAP, lsl #32
//  0x42a61c: ldr BARRIER, [PP, #0x40]
//  0x42a620: cmp w0, w16
//  0x42a624: b.eq #0x42ac5c
//  0x42a628: stur x0, [FP, #-0x10]
//  0x42a62c: ldur w1, [x3, #0xb]
//  0x42a630: add x1, x1, HEAP, lsl #32
//  0x42a634: ldr BARRIER, [PP, #0x40]
//  0x42a638: cmp w1, w16
//  0x42a63c: b.eq #0x42ac68
//  0x42a640: stur x1, [FP, #-8]
//  0x42a644: bl #0x2b8e80
//  0x42a648: ldr d0, [PP, #0xb90]
//  0x42a64c: stur x0, [FP, #-0x28]
//  0x42a650: stur d0, [x0, #7]
//  0x42a654: stur d0, [x0, #0xf]
//  0x42a658: stur d0, [x0, #0x17]
//  0x42a65c: stur d0, [x0, #0x1f]
//  0x42a660: bl #0x352b04
//  0x42a664: fmov d0, #6.00000000
//  0x42a668: stur x0, [FP, #-0x30]
//  0x42a66c: stur d0, [x0, #7]
//  0x42a670: stur d0, [x0, #0xf]
//  0x42a674: bl #0x392f28
//  0x42a678: mov x1, x0
//  0x42a67c: ldur x0, [FP, #-0x30]
//  0x42a680: stur x1, [FP, #-0x38]
//  0x42a684: stur w0, [x1, #7]
//  0x42a688: stur w0, [x1, #0xb]
//  0x42a68c: stur w0, [x1, #0xf]
//  0x42a690: stur w0, [x1, #0x13]
//  0x42a694: ldur x0, [FP, #-0x20]
//  0x42a698: tbnz w0, #4, #0x42a6f8
//  0x42a69c: bl #0x31d844
//  0x42a6a0: mov x1, x0
//  0x42a6a4: ldr x0, [PP, #0x6310]
//  0x42a6a8: stur w0, [x1, #0x27]
//  0x42a6ac: fmov d0, #1.00000000
//  0x42a6b0: stur d0, [x1, #7]
//  0x42a6b4: add x17, PP, #0x10, lsl #12
//  0x42a6b8: ldr d1, [x17, #0xc30]
//  0x42a6bc: stur d1, [x1, #0xf]
//  0x42a6c0: stur d0, [x1, #0x17]
//  0x42a6c4: add x17, PP, #0x10, lsl #12
//  0x42a6c8: ldr d1, [x17, #0xc38]
//  0x42a6cc: stur d1, [x1, #0x1f]
//  0x42a6d0: add BARRIER, PP, #0x10, lsl #12
//  0x42a6d4: ldr BARRIER, [BARRIER, #0x940]
//  0x42a6d8: str BARRIER, [SP]
//  0x42a6dc: mov x2, x1
//  0x42a6e0: mov x1, NULL
//  0x42a6e4: add x4, PP, #0xf, lsl #12
//  0x42a6e8: ldr x4, [x4, #0x818]
//  0x42a6ec: bl #0x391e08
//  0x42a6f0: mov x1, x0
//  0x42a6f4: b #0x42a744
//  0x42a6f8: bl #0x31d844
//  0x42a6fc: mov x1, x0
//  0x42a700: ldr x0, [PP, #0x6310]
//  0x42a704: stur w0, [x1, #0x27]
//  0x42a708: fmov d0, #1.00000000
//  0x42a70c: stur d0, [x1, #7]
//  0x42a710: add x17, PP, #0xe, lsl #12
//  0x42a714: ldr d1, [x17, #0xde0]
//  0x42a718: stur d1, [x1, #0xf]
//  0x42a71c: stur d1, [x1, #0x17]
//  0x42a720: stur d1, [x1, #0x1f]
//  0x42a724: ldr BARRIER, [PP, #0x53b0]
//  0x42a728: str BARRIER, [SP]
//  0x42a72c: mov x2, x1
//  0x42a730: mov x1, NULL
//  0x42a734: add x4, PP, #0xf, lsl #12
//  0x42a738: ldr x4, [x4, #0x818]
//  0x42a73c: bl #0x391e08
//  0x42a740: mov x1, x0
//  0x42a744: ldur x0, [FP, #-0x20]
//  0x42a748: stur x1, [FP, #-0x30]
//  0x42a74c: tbnz w0, #4, #0x42a80c
//  0x42a750: bl #0x31d844
//  0x42a754: mov x1, x0
//  0x42a758: ldr x0, [PP, #0x6310]
//  0x42a75c: stur x1, [FP, #-0x20]
//  0x42a760: stur w0, [x1, #0x27]
//  0x42a764: fmov d0, #1.00000000
//  0x42a768: stur d0, [x1, #7]
//  0x42a76c: stur d0, [x1, #0xf]
//  0x42a770: add x17, PP, #0x10, lsl #12
//  0x42a774: ldr d1, [x17, #0xc40]
//  0x42a778: stur d1, [x1, #0x17]
//  0x42a77c: add x17, PP, #0x10, lsl #12
//  0x42a780: ldr d1, [x17, #0xc48]
//  0x42a784: stur d1, [x1, #0x1f]
//  0x42a788: bl #0x31d844
//  0x42a78c: mov x3, x0
//  0x42a790: ldr x0, [PP, #0x6310]
//  0x42a794: stur x3, [FP, #-0x40]
//  0x42a798: stur w0, [x3, #0x27]
//  0x42a79c: fmov d0, #1.00000000
//  0x42a7a0: stur d0, [x3, #7]
//  0x42a7a4: stur d0, [x3, #0xf]
//  0x42a7a8: add x17, PP, #0xf, lsl #12
//  0x42a7ac: ldr d0, [x17, #0xd58]
//  0x42a7b0: stur d0, [x3, #0x17]
//  0x42a7b4: add x17, PP, #0x10, lsl #12
//  0x42a7b8: ldr d0, [x17, #0xc50]
//  0x42a7bc: stur d0, [x3, #0x1f]
//  0x42a7c0: mov x1, NULL
//  0x42a7c4: mov x2, #4
//  0x42a7c8: bl #0x61f920
//  0x42a7cc: mov x2, x0
//  0x42a7d0: ldur x0, [FP, #-0x20]
//  0x42a7d4: stur x2, [FP, #-0x48]
//  0x42a7d8: stur w0, [x2, #0xf]
//  0x42a7dc: ldur x0, [FP, #-0x40]
//  0x42a7e0: stur w0, [x2, #0x13]
//  0x42a7e4: add x1, PP, #0x10, lsl #12
//  0x42a7e8: ldr x1, [x1, #0xc58]
//  0x42a7ec: bl #0x61e854
//  0x42a7f0: mov x1, x0
//  0x42a7f4: ldur x0, [FP, #-0x48]
//  0x42a7f8: stur w0, [x1, #0xf]
//  0x42a7fc: mov x2, #4
//  0x42a800: stur w2, [x1, #0xb]
//  0x42a804: mov x6, x1
//  0x42a808: b #0x42a8e0
//  0x42a80c: mov x2, #4
//  0x42a810: fmov d0, #1.00000000
//  0x42a814: ldr x0, [PP, #0x6310]
//  0x42a818: bl #0x31d844
//  0x42a81c: mov x1, x0
//  0x42a820: ldr x0, [PP, #0x6310]
//  0x42a824: stur x1, [FP, #-0x20]
//  0x42a828: stur w0, [x1, #0x27]
//  0x42a82c: fmov d0, #1.00000000
//  0x42a830: stur d0, [x1, #7]
//  0x42a834: add x17, PP, #0xf, lsl #12
//  0x42a838: ldr d1, [x17, #0x628]
//  0x42a83c: stur d1, [x1, #0xf]
//  0x42a840: add x17, PP, #0xe, lsl #12
//  0x42a844: ldr d2, [x17, #0xe68]
//  0x42a848: stur d2, [x1, #0x17]
//  0x42a84c: add x17, PP, #0x10, lsl #12
//  0x42a850: ldr d3, [x17, #0xc60]
//  0x42a854: stur d3, [x1, #0x1f]
//  0x42a858: bl #0x31d844
//  0x42a85c: mov x3, x0
//  0x42a860: ldr x0, [PP, #0x6310]
//  0x42a864: stur x3, [FP, #-0x40]
//  0x42a868: stur w0, [x3, #0x27]
//  0x42a86c: fmov d0, #1.00000000
//  0x42a870: stur d0, [x3, #7]
//  0x42a874: add x17, PP, #0xf, lsl #12
//  0x42a878: ldr d0, [x17, #0x628]
//  0x42a87c: stur d0, [x3, #0xf]
//  0x42a880: add x17, PP, #0xe, lsl #12
//  0x42a884: ldr d0, [x17, #0xe68]
//  0x42a888: stur d0, [x3, #0x17]
//  0x42a88c: add x17, PP, #0x10, lsl #12
//  0x42a890: ldr d0, [x17, #0xc60]
//  0x42a894: stur d0, [x3, #0x1f]
//  0x42a898: mov x1, NULL
//  0x42a89c: mov x2, #4
//  0x42a8a0: bl #0x61f920
//  0x42a8a4: mov x2, x0
//  0x42a8a8: ldur x0, [FP, #-0x20]
//  0x42a8ac: stur x2, [FP, #-0x48]
//  0x42a8b0: stur w0, [x2, #0xf]
//  0x42a8b4: ldur x0, [FP, #-0x40]
//  0x42a8b8: stur w0, [x2, #0x13]
//  0x42a8bc: add x1, PP, #0x10, lsl #12
//  0x42a8c0: ldr x1, [x1, #0xc58]
//  0x42a8c4: bl #0x61e854
//  0x42a8c8: mov x1, x0
//  0x42a8cc: ldur x0, [FP, #-0x48]
//  0x42a8d0: stur w0, [x1, #0xf]
//  0x42a8d4: mov x2, #4
//  0x42a8d8: stur w2, [x1, #0xb]
//  0x42a8dc: mov x6, x1
//  0x42a8e0: ldur x3, [FP, #-0x18]
//  0x42a8e4: ldur x1, [FP, #-0x38]
//  0x42a8e8: ldur x0, [FP, #-0x30]
//  0x42a8ec: ldur x4, [FP, #-0x10]
//  0x42a8f0: ldur x5, [FP, #-8]
//  0x42a8f4: stur x6, [FP, #-0x20]
//  0x42a8f8: bl #0x3a108c
//  0x42a8fc: mov x1, x0
//  0x42a900: add x0, PP, #0x10, lsl #12
//  0x42a904: ldr x0, [x0, #0xc68]
//  0x42a908: stur x1, [FP, #-0x40]
//  0x42a90c: stur w0, [x1, #0x13]
//  0x42a910: add x0, PP, #0x10, lsl #12
//  0x42a914: ldr x0, [x0, #0xc70]
//  0x42a918: stur w0, [x1, #0x17]
//  0x42a91c: add x0, PP, #0x10, lsl #12
//  0x42a920: ldr x0, [x0, #0xc78]
//  0x42a924: stur w0, [x1, #0x1b]
//  0x42a928: ldur x0, [FP, #-0x20]
//  0x42a92c: stur w0, [x1, #7]
//  0x42a930: bl #0x391dd8
//  0x42a934: mov x1, x0
//  0x42a938: ldur x0, [FP, #-0x30]
//  0x42a93c: stur x1, [FP, #-0x20]
//  0x42a940: stur w0, [x1, #0xf]
//  0x42a944: ldur x0, [FP, #-0x38]
//  0x42a948: stur w0, [x1, #0x13]
//  0x42a94c: ldur x0, [FP, #-0x40]
//  0x42a950: stur w0, [x1, #0x1b]
//  0x42a954: add x0, PP, #0xe, lsl #12
//  0x42a958: ldr x0, [x0, #0xb78]
//  0x42a95c: stur w0, [x1, #0x23]
//  0x42a960: bl #0x41c74c
//  0x42a964: mov x1, x0
//  0x42a968: fmov d0, #14.00000000
//  0x42a96c: bl #0x3a86fc
//  0x42a970: stur x0, [FP, #-0x30]
//  0x42a974: bl #0x393bf8
//  0x42a978: mov x1, x0
//  0x42a97c: ldur x0, [FP, #-0x10]
//  0x42a980: stur x1, [FP, #-0x38]
//  0x42a984: stur w0, [x1, #0xb]
//  0x42a988: ldur x0, [FP, #-0x30]
//  0x42a98c: stur w0, [x1, #0x13]
//  0x42a990: bl #0x391a04
//  0x42a994: stur x0, [FP, #-0x10]
//  0x42a998: ldur BARRIER, [FP, #-0x38]
//  0x42a99c: str BARRIER, [SP]
//  0x42a9a0: mov x1, x0
//  0x42a9a4: add x4, PP, #0xc, lsl #12
//  0x42a9a8: ldr x4, [x4, #0x1f8]
//  0x42a9ac: bl #0x391490
//  0x42a9b0: mov x1, NULL
//  0x42a9b4: mov x2, #4
//  0x42a9b8: bl #0x61f920
//  0x42a9bc: mov x2, x0
//  0x42a9c0: ldur x0, [FP, #-0x18]
//  0x42a9c4: stur x2, [FP, #-0x30]
//  0x42a9c8: stur w0, [x2, #0xf]
//  0x42a9cc: ldur x0, [FP, #-0x10]
//  0x42a9d0: stur w0, [x2, #0x13]
//  0x42a9d4: ldr x1, [PP, #0x5c58]
//  0x42a9d8: bl #0x61e854
//  0x42a9dc: mov x1, x0
//  0x42a9e0: ldur x0, [FP, #-0x30]
//  0x42a9e4: stur x1, [FP, #-0x10]
//  0x42a9e8: stur w0, [x1, #0xf]
//  0x42a9ec: mov x2, #4
//  0x42a9f0: stur w2, [x1, #0xb]
//  0x42a9f4: bl #0x3b47f0
//  0x42a9f8: mov x1, x0
//  0x42a9fc: ldr x0, [PP, #0x5140]
//  0x42aa00: stur x1, [FP, #-0x18]
//  0x42aa04: stur w0, [x1, #0xf]
//  0x42aa08: add x0, PP, #0x10, lsl #12
//  0x42aa0c: ldr x0, [x0, #0xc80]
//  0x42aa10: stur w0, [x1, #0x13]
//  0x42aa14: fmov d0, #4.00000000
//  0x42aa18: stur d0, [x1, #0x17]
//  0x42aa1c: stur w0, [x1, #0x1f]
//  0x42aa20: stur xzr, [x1, #0x23]
//  0x42aa24: add x0, PP, #0x10, lsl #12
//  0x42aa28: ldr x0, [x0, #0xc88]
//  0x42aa2c: stur w0, [x1, #0x2b]
//  0x42aa30: add x0, PP, #0xe, lsl #12
//  0x42aa34: ldr x0, [x0, #0xaf8]
//  0x42aa38: stur w0, [x1, #0x33]
//  0x42aa3c: add x2, PP, #0xa, lsl #12
//  0x42aa40: ldr x2, [x2, #0xa8]
//  0x42aa44: stur w2, [x1, #0x37]
//  0x42aa48: ldur x3, [FP, #-0x10]
//  0x42aa4c: stur w3, [x1, #0xb]
//  0x42aa50: bl #0x391a04
//  0x42aa54: stur x0, [FP, #-0x10]
//  0x42aa58: ldur BARRIER, [FP, #-0x18]
//  0x42aa5c: str BARRIER, [SP]
//  0x42aa60: mov x1, x0
//  0x42aa64: add x4, PP, #0xc, lsl #12
//  0x42aa68: ldr x4, [x4, #0x1f8]
//  0x42aa6c: bl #0x391490
//  0x42aa70: bl #0x391c0c
//  0x42aa74: mov x1, x0
//  0x42aa78: add x0, PP, #0x10, lsl #12
//  0x42aa7c: ldr x0, [x0, #0xc90]
//  0x42aa80: stur x1, [FP, #-0x18]
//  0x42aa84: stur w0, [x1, #0xf]
//  0x42aa88: ldur x0, [FP, #-0x10]
//  0x42aa8c: stur w0, [x1, #0xb]
//  0x42aa90: ldur x0, [FP, #-8]
//  0x42aa94: ldur w2, [x0, #7]
//  0x42aa98: cbz w2, #0x42aabc
//  0x42aa9c: bl #0x3b6694
//  0x42aaa0: mov x1, x0
//  0x42aaa4: ldur x0, [FP, #-8]
//  0x42aaa8: stur w0, [x1, #0xb]
//  0x42aaac: add x0, NULL, #0x30
//  0x42aab0: stur w0, [x1, #0x1b]
//  0x42aab4: stur w0, [x1, #0x1f]
//  0x42aab8: b #0x42ab08
//  0x42aabc: bl #0x2b8e80
//  0x42aac0: ldr d0, [PP, #0xb90]
//  0x42aac4: stur x0, [FP, #-8]
//  0x42aac8: stur d0, [x0, #7]
//  0x42aacc: stur d0, [x0, #0xf]
//  0x42aad0: stur d0, [x0, #0x17]
//  0x42aad4: stur d0, [x0, #0x1f]
//  0x42aad8: bl #0x3b7d80
//  0x42aadc: stur x0, [FP, #-0x10]
//  0x42aae0: bl #0x391a04
//  0x42aae4: stur x0, [FP, #-0x30]
//  0x42aae8: ldur BARRIER, [FP, #-8]
//  0x42aaec: ldur LR, [FP, #-0x10]
//  0x42aaf0: stp LR, BARRIER, [SP]
//  0x42aaf4: mov x1, x0
//  0x42aaf8: add x4, PP, #0x10, lsl #12
//  0x42aafc: ldr x4, [x4, #0xc98]
//  0x42ab00: bl #0x391490
//  0x42ab04: ldur x1, [FP, #-0x30]
//  0x42ab08: ldur x0, [FP, #-0x18]
//  0x42ab0c: stur x1, [FP, #-8]
//  0x42ab10: bl #0x391a04
//  0x42ab14: stur x0, [FP, #-0x10]
//  0x42ab18: add BARRIER, PP, #0x10, lsl #12
//  0x42ab1c: ldr BARRIER, [BARRIER, #0xca0]
//  0x42ab20: add LR, PP, #0xe, lsl #12
//  0x42ab24: ldr LR, [LR, #0xaa0]
//  0x42ab28: stp LR, BARRIER, [SP, #8]
//  0x42ab2c: ldur BARRIER, [FP, #-8]
//  0x42ab30: str BARRIER, [SP]
//  0x42ab34: mov x1, x0
//  0x42ab38: add x4, PP, #0x10, lsl #12
//  0x42ab3c: ldr x4, [x4, #0xca8]
//  0x42ab40: bl #0x391490
//  0x42ab44: add x1, PP, #0xe, lsl #12
//  0x42ab48: ldr x1, [x1, #0xad0]
//  0x42ab4c: bl #0x39fb14
//  0x42ab50: mov x3, x0
//  0x42ab54: mov x0, #1
//  0x42ab58: stur x3, [FP, #-8]
//  0x42ab5c: stur x0, [x3, #0x13]
//  0x42ab60: add x0, PP, #0xe, lsl #12
//  0x42ab64: ldr x0, [x0, #0xad8]
//  0x42ab68: stur w0, [x3, #0x1b]
//  0x42ab6c: ldur x0, [FP, #-0x10]
//  0x42ab70: stur w0, [x3, #0xb]
//  0x42ab74: mov x1, NULL
//  0x42ab78: mov x2, #4
//  0x42ab7c: bl #0x61f920
//  0x42ab80: mov x2, x0
//  0x42ab84: ldur x0, [FP, #-0x18]
//  0x42ab88: stur x2, [FP, #-0x10]
//  0x42ab8c: stur w0, [x2, #0xf]
//  0x42ab90: ldur x0, [FP, #-8]
//  0x42ab94: stur w0, [x2, #0x13]
//  0x42ab98: ldr x1, [PP, #0x5c58]
//  0x42ab9c: bl #0x61e854
//  0x42aba0: mov x1, x0
//  0x42aba4: ldur x0, [FP, #-0x10]
//  0x42aba8: stur x1, [FP, #-8]
//  0x42abac: stur w0, [x1, #0xf]
//  0x42abb0: mov x0, #4
//  0x42abb4: stur w0, [x1, #0xb]
//  0x42abb8: bl #0x39310c
//  0x42abbc: mov x1, x0
//  0x42abc0: add x0, PP, #0xa, lsl #12
//  0x42abc4: ldr x0, [x0, #0x858]
//  0x42abc8: stur x1, [FP, #-0x10]
//  0x42abcc: stur w0, [x1, #0xf]
//  0x42abd0: add x0, PP, #0xe, lsl #12
//  0x42abd4: ldr x0, [x0, #0xae0]
//  0x42abd8: stur w0, [x1, #0x13]
//  0x42abdc: add x0, PP, #0xe, lsl #12
//  0x42abe0: ldr x0, [x0, #0xae8]
//  0x42abe4: stur w0, [x1, #0x17]
//  0x42abe8: add x0, PP, #0xe, lsl #12
//  0x42abec: ldr x0, [x0, #0xb60]
//  0x42abf0: stur w0, [x1, #0x1b]
//  0x42abf4: add x0, PP, #0xe, lsl #12
//  0x42abf8: ldr x0, [x0, #0xaf8]
//  0x42abfc: stur w0, [x1, #0x23]
//  0x42ac00: add x0, PP, #0xa, lsl #12
//  0x42ac04: ldr x0, [x0, #0xa8]
//  0x42ac08: stur w0, [x1, #0x2b]
//  0x42ac0c: stur xzr, [x1, #0x2f]
//  0x42ac10: ldur x0, [FP, #-8]
//  0x42ac14: stur w0, [x1, #0xb]
//  0x42ac18: bl #0x391a04
//  0x42ac1c: stur x0, [FP, #-8]
//  0x42ac20: ldur BARRIER, [FP, #-0x28]
//  0x42ac24: ldur LR, [FP, #-0x20]
//  0x42ac28: stp LR, BARRIER, [SP, #8]
//  0x42ac2c: ldur BARRIER, [FP, #-0x10]
//  0x42ac30: str BARRIER, [SP]
//  0x42ac34: mov x1, x0
//  0x42ac38: add x4, PP, #0x10, lsl #12
//  0x42ac3c: ldr x4, [x4, #0xcb0]
//  0x42ac40: bl #0x391490
//  0x42ac44: ldur x0, [FP, #-8]
//  0x42ac48: mov SP, FP
//  0x42ac4c: ldp FP, LR, [SP], #0x10
//  0x42ac50: ret 
//  0x42ac54: bl #0x61fa28
//  0x42ac58: b #0x42a614
//  0x42ac5c: add x9, PP, #0x10, lsl #12
//  0x42ac60: ldr x9, [x9, #0xcb8]
//  0x42ac64: bl #0x620258
//  0x42ac68: add x9, PP, #0x10, lsl #12
//  0x42ac6c: ldr x9, [x9, #0xcc0]
//  0x42ac70: bl #0x620258
//
dynamic SendPocketPageState_buildSendItem() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic d3;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42a5f4
  // frame: FP = SP // 0x42a5f8
  // frame: SP = SP - 0x60 // 0x42a5fc
  local_m18 = x2; // 0x42a600
  local_m20 = x5; // 0x42a604
  BARRIER = mem(THR, 0x38); // 0x42a608
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42ac54
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x42a61c
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x42a618
  if (w0 == w16) {
    x9 = mem((PP + 0x10000), 0xcb8) /* Field */; // 0x42ac60
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42ac64
  } else {
    local_m10 = x0; // 0x42a628
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x42a634
    w1 = mem(x3, 0xb); // 0x42a62c
    x1 = ((mem(x3, 0xb)) & 0xffffffff) + (HEAP << 32); // 0x42a630
    if (w1 == w16) {
      // duplicated branch body (target 0x42ac68 terminates; the same code is emitted below)
      x9 = mem((PP + 0x10000), 0xcc0) /* Field */; // 0x42ac6c
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42ac70
    }
    local_m8 = x1; // 0x42a640
    AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x42a644
    d0 = 9218868437227405312; // 0x42a648
    local_m28 = x0; // 0x42a64c
    memSet(x0, 7, d0); // 0x42a650
    memSet(x0, 0xf, d0); // 0x42a654
    memSet(x0, 0x17, d0); // 0x42a658
    memSet(x0, 0x1f, d0); // 0x42a65c
    AllocationStub_Radius() /* 0x352b04 */; // 0x42a660
    d0 = 6.00000000 /* bits */; // 0x42a664
    local_m30 = x0; // 0x42a668
    memSet(x0, 7, d0); // 0x42a66c
    memSet(x0, 0xf, d0); // 0x42a670
    AllocationStub_BorderRadius() /* 0x392f28 */; // 0x42a674
    x0 = local_m30; // 0x42a67c
    x1 = x0; // 0x42a678
    local_m38 = x1; // 0x42a680
    memSet(x1, 7, w0); // 0x42a684
    memSet(x1, 0xb, w0); // 0x42a688
    memSet(x1, 0xf, w0); // 0x42a68c
    memSet(x1, 0x13, w0); // 0x42a690
    x0 = local_m20; // 0x42a694
    if (x0 & (1 << 4) != 0) {
      AllocationStub_Color() /* 0x31d844 */; // 0x42a6f8
      x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x42a700
      x1 = x0; // 0x42a6fc
      memSet(x1, 0x27, w0); // 0x42a704
      d0 = 1.00000000 /* bits */; // 0x42a708
      memSet(x1, 7, d0); // 0x42a70c
      d1 = 4606546616499682750; // 0x42a714
      x17 = PP + 0xe000; // 0x42a710
      memSet(x1, 0xf, d1); // 0x42a718
      memSet(x1, 0x17, d1); // 0x42a71c
      memSet(x1, 0x1f, d1); // 0x42a720
      BARRIER = mem(PP, 0x53b0) /* Double */; // 0x42a724
      local_0 = BARRIER; // 0x42a728
      x1 = NULL; // 0x42a730
      x2 = x1; // 0x42a72c
      x4 = mem((PP + 0xf000), 0x818) /* ImmutableArray */; // 0x42a738
      Border_factory_ctor_all() /* 0x391e08 */; // 0x42a73c
      x1 = x0; // 0x42a740
    } else {
      AllocationStub_Color() /* 0x31d844 */; // 0x42a69c
      x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x42a6a4
      x1 = x0; // 0x42a6a0
      memSet(x1, 0x27, w0); // 0x42a6a8
      d0 = 1.00000000 /* bits */; // 0x42a6ac
      memSet(x1, 7, d0); // 0x42a6b0
      d1 = 4607076451749961632; // 0x42a6b8
      x17 = PP + 0x10000; // 0x42a6b4
      memSet(x1, 0xf, d1); // 0x42a6bc
      memSet(x1, 0x17, d0); // 0x42a6c0
      d1 = 4600453511121475608; // 0x42a6c8
      x17 = PP + 0x10000; // 0x42a6c4
      memSet(x1, 0x1f, d1); // 0x42a6cc
      BARRIER = mem((PP + 0x10000), 0x940) /* Double */; // 0x42a6d4
      local_0 = BARRIER; // 0x42a6d8
      x1 = NULL; // 0x42a6e0
      x2 = x1; // 0x42a6dc
      x4 = mem((PP + 0xf000), 0x818) /* ImmutableArray */; // 0x42a6e8
      Border_factory_ctor_all() /* 0x391e08 */; // 0x42a6ec
      x1 = x0; // 0x42a6f0
    }
    x0 = local_m20; // 0x42a744
    local_m30 = x1; // 0x42a748
    if (x0 & (1 << 4) != 0) {
      d0 = 1.00000000 /* bits */; // 0x42a810
      x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x42a814
      x2 = 4; // 0x42a80c
      AllocationStub_Color() /* 0x31d844 */; // 0x42a818
      x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x42a820
      x1 = x0; // 0x42a81c
      local_m20 = x1; // 0x42a824
      memSet(x1, 0x27, w0); // 0x42a828
      d0 = 1.00000000 /* bits */; // 0x42a82c
      memSet(x1, 7, d0); // 0x42a830
      d1 = 4607147096449998816; // 0x42a838
      x17 = PP + 0xf000; // 0x42a834
      memSet(x1, 0xf, d1); // 0x42a83c
      d2 = 4606864517649850079; // 0x42a844
      x17 = PP + 0xe000; // 0x42a840
      memSet(x1, 0x17, d2); // 0x42a848
      d3 = 4606087425949441052; // 0x42a850
      x17 = PP + 0x10000; // 0x42a84c
      memSet(x1, 0x1f, d3); // 0x42a854
      AllocationStub_Color() /* 0x31d844 */; // 0x42a858
      x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x42a860
      x3 = x0; // 0x42a85c
      local_m40 = x3; // 0x42a864
      memSet(x3, 0x27, w0); // 0x42a868
      d0 = 1.00000000 /* bits */; // 0x42a86c
      memSet(x3, 7, d0); // 0x42a870
      d0 = 4607147096449998816; // 0x42a878
      x17 = PP + 0xf000; // 0x42a874
      memSet(x3, 0xf, d0); // 0x42a87c
      d0 = 4606864517649850079; // 0x42a884
      x17 = PP + 0xe000; // 0x42a880
      memSet(x3, 0x17, d0); // 0x42a888
      d0 = 4606087425949441052; // 0x42a890
      x17 = PP + 0x10000; // 0x42a88c
      memSet(x3, 0x1f, d0); // 0x42a894
      x1 = NULL; // 0x42a898
      x2 = 4; // 0x42a89c
      sub_0x61f920(); // 0x42a8a0
      x0 = local_m20; // 0x42a8a8
      x2 = x0; // 0x42a8a4
      local_m48 = x2; // 0x42a8ac
      memSet(x2, 0xf, w0); // 0x42a8b0
      x0 = local_m40; // 0x42a8b4
      memSet(x2, 0x13, w0); // 0x42a8b8
      x1 = mem((PP + 0x10000), 0xc58) /* TypeArguments */; // 0x42a8c0
      AllocationStub__GrowableList() /* 0x61e854 */; // 0x42a8c4
      x0 = local_m48; // 0x42a8cc
      x1 = x0; // 0x42a8c8
      memSet(x1, 0xf, w0); // 0x42a8d0
      x2 = 4; // 0x42a8d4
      memSet(x1, 0xb, w2); // 0x42a8d8
      x6 = x1; // 0x42a8dc
    } else {
      AllocationStub_Color() /* 0x31d844 */; // 0x42a750
      x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x42a758
      x1 = x0; // 0x42a754
      local_m20 = x1; // 0x42a75c
      memSet(x1, 0x27, w0); // 0x42a760
      d0 = 1.00000000 /* bits */; // 0x42a764
      memSet(x1, 7, d0); // 0x42a768
      memSet(x1, 0xf, d0); // 0x42a76c
      d1 = 4606440649449626973; // 0x42a774
      x17 = PP + 0x10000; // 0x42a770
      memSet(x1, 0x17, d1); // 0x42a778
      d1 = 4602572852122591136; // 0x42a780
      x17 = PP + 0x10000; // 0x42a77c
      memSet(x1, 0x1f, d1); // 0x42a784
      AllocationStub_Color() /* 0x31d844 */; // 0x42a788
      x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x42a790
      x3 = x0; // 0x42a78c
      local_m40 = x3; // 0x42a794
      memSet(x3, 0x27, w0); // 0x42a798
      d0 = 1.00000000 /* bits */; // 0x42a79c
      memSet(x3, 7, d0); // 0x42a7a0
      memSet(x3, 0xf, d0); // 0x42a7a4
      d0 = 4599111261820769107; // 0x42a7ac
      x17 = PP + 0xf000; // 0x42a7a8
      memSet(x3, 0x17, d0); // 0x42a7b0
      d0 = 4571171282956062736; // 0x42a7b8
      x17 = PP + 0x10000; // 0x42a7b4
      memSet(x3, 0x1f, d0); // 0x42a7bc
      x1 = NULL; // 0x42a7c0
      x2 = 4; // 0x42a7c4
      sub_0x61f920(); // 0x42a7c8
      x0 = local_m20; // 0x42a7d0
      x2 = x0; // 0x42a7cc
      local_m48 = x2; // 0x42a7d4
      memSet(x2, 0xf, w0); // 0x42a7d8
      x0 = local_m40; // 0x42a7dc
      memSet(x2, 0x13, w0); // 0x42a7e0
      x1 = mem((PP + 0x10000), 0xc58) /* TypeArguments */; // 0x42a7e8
      AllocationStub__GrowableList() /* 0x61e854 */; // 0x42a7ec
      x0 = local_m48; // 0x42a7f4
      x1 = x0; // 0x42a7f0
      memSet(x1, 0xf, w0); // 0x42a7f8
      x2 = 4; // 0x42a7fc
      memSet(x1, 0xb, w2); // 0x42a800
      x6 = x1; // 0x42a804
    }
    x0 = local_m30; // 0x42a8e8
    x1 = local_m38; // 0x42a8e4
    x3 = local_m18; // 0x42a8e0
    x4 = local_m10; // 0x42a8ec
    x5 = local_m8; // 0x42a8f0
    local_m20 = x6; // 0x42a8f4
    AllocationStub_LinearGradient() /* 0x3a108c */; // 0x42a8f8
    x0 = mem((PP + 0x10000), 0xc68) /* Obj!Alignment@11bdd  */; // 0x42a904
    x1 = x0; // 0x42a8fc
    local_m40 = x1; // 0x42a908
    memSet(x1, 0x13, w0); // 0x42a90c
    x0 = mem((PP + 0x10000), 0xc70) /* Obj!Alignment@11bdc  */; // 0x42a914
    memSet(x1, 0x17, w0); // 0x42a918
    x0 = mem((PP + 0x10000), 0xc78) /* Obj!TileMode@1233e  */; // 0x42a920
    memSet(x1, 0x1b, w0); // 0x42a924
    x0 = local_m20; // 0x42a928
    memSet(x1, 7, w0); // 0x42a92c
    AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x42a930
    x0 = local_m30; // 0x42a938
    x1 = x0; // 0x42a934
    local_m20 = x1; // 0x42a93c
    memSet(x1, 0xf, w0); // 0x42a940
    x0 = local_m38; // 0x42a944
    memSet(x1, 0x13, w0); // 0x42a948
    x0 = local_m40; // 0x42a94c
    memSet(x1, 0x1b, w0); // 0x42a950
    x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x42a958
    memSet(x1, 0x23, w0); // 0x42a95c
    SOColors_get_color_282828() /* 0x41c74c */; // 0x42a960
    d0 = 14.00000000 /* bits */; // 0x42a968
    x1 = x0; // 0x42a964
    TextStyles_fontDINCondensedBold() /* 0x3a86fc */; // 0x42a96c
    local_m30 = x0; // 0x42a970
    AllocationStub_Text() /* 0x393bf8 */; // 0x42a974
    x0 = local_m10; // 0x42a97c
    x1 = x0; // 0x42a978
    local_m38 = x1; // 0x42a980
    memSet(x1, 0xb, w0); // 0x42a984
    x0 = local_m30; // 0x42a988
    memSet(x1, 0x13, w0); // 0x42a98c
    AllocationStub_Container() /* 0x391a04 */; // 0x42a990
    local_m10 = x0; // 0x42a994
    BARRIER = local_m38; // 0x42a998
    local_0 = BARRIER; // 0x42a99c
    x1 = x0; // 0x42a9a0
    x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x42a9a8
    Container_ctor() /* 0x391490 */; // 0x42a9ac
    x1 = NULL; // 0x42a9b0
    x2 = 4; // 0x42a9b4
    sub_0x61f920(); // 0x42a9b8
    x0 = local_m18; // 0x42a9c0
    x2 = x0; // 0x42a9bc
    local_m30 = x2; // 0x42a9c4
    memSet(x2, 0xf, w0); // 0x42a9c8
    x0 = local_m10; // 0x42a9cc
    memSet(x2, 0x13, w0); // 0x42a9d0
    x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x42a9d4
    AllocationStub__GrowableList() /* 0x61e854 */; // 0x42a9d8
    x0 = local_m30; // 0x42a9e0
    x1 = x0; // 0x42a9dc
    local_m10 = x1; // 0x42a9e4
    memSet(x1, 0xf, w0); // 0x42a9e8
    x2 = 4; // 0x42a9ec
    memSet(x1, 0xb, w2); // 0x42a9f0
    AllocationStub_Wrap() /* 0x3b47f0 */; // 0x42a9f4
    x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x42a9fc
    x1 = x0; // 0x42a9f8
    local_m18 = x1; // 0x42aa00
    memSet(x1, 0xf, w0); // 0x42aa04
    x0 = mem((PP + 0x10000), 0xc80) /* Obj!WrapAlignment@12254  */; // 0x42aa0c
    memSet(x1, 0x13, w0); // 0x42aa10
    d0 = 4.00000000 /* bits */; // 0x42aa14
    memSet(x1, 0x17, d0); // 0x42aa18
    memSet(x1, 0x1f, w0); // 0x42aa1c
    memSet(x1, 0x23, xzr); // 0x42aa20
    x0 = mem((PP + 0x10000), 0xc88) /* Obj!WrapCrossAlignment@1224d  */; // 0x42aa28
    memSet(x1, 0x2b, w0); // 0x42aa2c
    x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x42aa34
    memSet(x1, 0x33, w0); // 0x42aa38
    x2 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x42aa40
    memSet(x1, 0x37, w2); // 0x42aa44
    x3 = local_m10; // 0x42aa48
    memSet(x1, 0xb, w3); // 0x42aa4c
    AllocationStub_Container() /* 0x391a04 */; // 0x42aa50
    local_m10 = x0; // 0x42aa54
    BARRIER = local_m18; // 0x42aa58
    local_0 = BARRIER; // 0x42aa5c
    x1 = x0; // 0x42aa60
    x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x42aa68
    Container_ctor() /* 0x391490 */; // 0x42aa6c
    AllocationStub_Padding() /* 0x391c0c */; // 0x42aa70
    x0 = mem((PP + 0x10000), 0xc90) /* Obj!EdgeInsets@11bb6  */; // 0x42aa7c
    x1 = x0; // 0x42aa74
    local_m18 = x1; // 0x42aa80
    memSet(x1, 0xf, w0); // 0x42aa84
    x0 = local_m10; // 0x42aa88
    memSet(x1, 0xb, w0); // 0x42aa8c
    w2 = mem((local_m8), 7); // 0x42aa94
    x0 = local_m8; // 0x42aa90
    x2 = (mem((local_m8), 7)) & 0xffffffff; // 0x42aa94
    if (w2 == 0) {
      AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x42aabc
      d0 = 9218868437227405312; // 0x42aac0
      local_m8 = x0; // 0x42aac4
      memSet(x0, 7, d0); // 0x42aac8
      memSet(x0, 0xf, d0); // 0x42aacc
      memSet(x0, 0x17, d0); // 0x42aad0
      memSet(x0, 0x1f, d0); // 0x42aad4
      SOColors_get_s_10() /* 0x3b7d80 */; // 0x42aad8
      local_m10 = x0; // 0x42aadc
      AllocationStub_Container() /* 0x391a04 */; // 0x42aae0
      local_m30 = x0; // 0x42aae4
      BARRIER = local_m8; // 0x42aae8
      LR = local_m10; // 0x42aaec
      // frame: LR, BARRIER, mem(SP) // 0x42aaf0
      x1 = x0; // 0x42aaf4
      x4 = mem((PP + 0x10000), 0xc98) /* ImmutableArray */; // 0x42aafc
      Container_ctor() /* 0x391490 */; // 0x42ab00
      x1 = local_m30; // 0x42ab04
    } else {
      AllocationStub_SOImage() /* 0x3b6694 */; // 0x42aa9c
      x0 = local_m8; // 0x42aaa4
      x1 = x0; // 0x42aaa0
      memSet(x1, 0xb, w0); // 0x42aaa8
      x0 = NULL + 0x30; // 0x42aaac
      memSet(x1, 0x1b, w0); // 0x42aab0
      memSet(x1, 0x1f, w0); // 0x42aab4
    }
    x0 = local_m18; // 0x42ab08
    local_m8 = x1; // 0x42ab0c
    AllocationStub_Container() /* 0x391a04 */; // 0x42ab10
    local_m10 = x0; // 0x42ab14
    BARRIER = mem((PP + 0x10000), 0xca0) /* Obj!EdgeInsets@11bb5  */; // 0x42ab1c
    LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x42ab24
    // frame: LR, BARRIER, mem(SP, 8) // 0x42ab28
    BARRIER = local_m8; // 0x42ab2c
    local_0 = BARRIER; // 0x42ab30
    x1 = x0; // 0x42ab34
    x4 = mem((PP + 0x10000), 0xca8) /* ImmutableArray */; // 0x42ab3c
    Container_ctor() /* 0x391490 */; // 0x42ab40
    x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x42ab48
    AllocationStub_Expanded() /* 0x39fb14 */; // 0x42ab4c
    x0 = 1; // 0x42ab54
    x3 = x0; // 0x42ab50
    local_m8 = x3; // 0x42ab58
    memSet(x3, 0x13, x0); // 0x42ab5c
    x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x42ab64
    memSet(x3, 0x1b, w0); // 0x42ab68
    x0 = local_m10; // 0x42ab6c
    memSet(x3, 0xb, w0); // 0x42ab70
    x1 = NULL; // 0x42ab74
    x2 = 4; // 0x42ab78
    sub_0x61f920(); // 0x42ab7c
    x0 = local_m18; // 0x42ab84
    x2 = x0; // 0x42ab80
    local_m10 = x2; // 0x42ab88
    memSet(x2, 0xf, w0); // 0x42ab8c
    x0 = local_m8; // 0x42ab90
    memSet(x2, 0x13, w0); // 0x42ab94
    x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x42ab98
    AllocationStub__GrowableList() /* 0x61e854 */; // 0x42ab9c
    x0 = local_m10; // 0x42aba4
    x1 = x0; // 0x42aba0
    local_m8 = x1; // 0x42aba8
    memSet(x1, 0xf, w0); // 0x42abac
    x0 = 4; // 0x42abb0
    memSet(x1, 0xb, w0); // 0x42abb4
    AllocationStub_Column() /* 0x39310c */; // 0x42abb8
    x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x42abc4
    x1 = x0; // 0x42abbc
    local_m10 = x1; // 0x42abc8
    memSet(x1, 0xf, w0); // 0x42abcc
    x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x42abd4
    memSet(x1, 0x13, w0); // 0x42abd8
    x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x42abe0
    memSet(x1, 0x17, w0); // 0x42abe4
    x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x42abec
    memSet(x1, 0x1b, w0); // 0x42abf0
    x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x42abf8
    memSet(x1, 0x23, w0); // 0x42abfc
    x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x42ac04
    memSet(x1, 0x2b, w0); // 0x42ac08
    memSet(x1, 0x2f, xzr); // 0x42ac0c
    x0 = local_m8; // 0x42ac10
    memSet(x1, 0xb, w0); // 0x42ac14
    AllocationStub_Container() /* 0x391a04 */; // 0x42ac18
    local_m8 = x0; // 0x42ac1c
    BARRIER = local_m28; // 0x42ac20
    LR = local_m20; // 0x42ac24
    // frame: LR, BARRIER, mem(SP, 8) // 0x42ac28
    BARRIER = local_m10; // 0x42ac2c
    local_0 = BARRIER; // 0x42ac30
    x1 = x0; // 0x42ac34
    x4 = mem((PP + 0x10000), 0xcb0) /* ImmutableArray */; // 0x42ac3c
    Container_ctor() /* 0x391490 */; // 0x42ac40
    SP = FP; // 0x42ac48
    x0 = local_m8; // 0x42ac44
    // frame: FP, LR, mem(SP), 0x10 // 0x42ac4c
    return;
  }
  x9 = mem((PP + 0x10000), 0xcc0) /* Field */; // 0x42ac6c
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42ac70
}

// SendPocketPageState_anon_closure_9
// raw disassembly:
//  0x42ad68: ldr x2, [SP]
//  0x42ad6c: ldur x3, [x2, #0x33]
//  0x42ad70: sbfiz x0, x3, #1, #0x1f
//  0x42ad74: cmp x3, x0, asr #1
//  0x42ad78: b.eq #0x42ad94
//  0x42ad7c: stp FP, LR, [SP, #-0x10]!
//  0x42ad80: mov FP, SP
//  0x42ad84: bl #0x61fba8
//  0x42ad88: mov SP, FP
//  0x42ad8c: ldp FP, LR, [SP], #0x10
//  0x42ad90: stur x3, [x0, #7]
//  0x42ad94: ret 
//
dynamic SendPocketPageState_anon_closure_9() {
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x2;
  dynamic x3;
  x0 = (((mem((local_0), 0x33)) & 0x7fffffff) << 1) /* signed */; // 0x42ad70
  x2 = local_0; // 0x42ad68
  x3 = mem((local_0), 0x33); // 0x42ad6c
  if (x3 == x0) {
  } else {
    // frame: FP, LR, mem(SP, -0x10)! // 0x42ad7c
    // frame: FP = SP // 0x42ad80
    AllocationStub__Mint() /* 0x61fba8 */; // 0x42ad84
    SP = FP; // 0x42ad88
    // frame: FP, LR, mem(SP), 0x10 // 0x42ad8c
    memSet(x0, 7, x3); // 0x42ad90
  }
  return;
}

// SendPocketPageState_anon_closure_10
// raw disassembly:
//  0x42ad98: ldr x1, [SP]
//  0x42ad9c: ldur w2, [x1, #0x3f]
//  0x42ada0: add x2, x2, HEAP, lsl #32
//  0x42ada4: ldur w0, [x2, #0xb]
//  0x42ada8: ret 
//
dynamic SendPocketPageState_anon_closure_10() {
  dynamic w0;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  w0 = mem((((mem((local_0), 0x3f)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x42ada4
  w2 = mem((local_0), 0x3f); // 0x42ad9c
  x0 = (mem((((mem((local_0), 0x3f)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x42ada4
  x1 = local_0; // 0x42ad98
  x2 = ((mem((local_0), 0x3f)) & 0xffffffff) + (HEAP << 32); // 0x42ada0
  return x0;
}

// SendPocketPageState_buildCoinLayout
// raw disassembly:
//  0x42adac: stp FP, LR, [SP, #-0x10]!
//  0x42adb0: mov FP, SP
//  0x42adb4: sub SP, SP, #0x18
//  0x42adb8: stur x1, [FP, #-8]
//  0x42adbc: mov x1, #1
//  0x42adc0: bl #0x61e890
//  0x42adc4: mov x2, x0
//  0x42adc8: ldur x0, [FP, #-8]
//  0x42adcc: stur x2, [FP, #-0x10]
//  0x42add0: stur w0, [x2, #0xf]
//  0x42add4: add x1, PP, #0x10, lsl #12
//  0x42add8: ldr x1, [x1, #0xbd8]
//  0x42addc: bl #0x41c8d4
//  0x42ade0: stur x0, [FP, #-8]
//  0x42ade4: mov x1, #2
//  0x42ade8: bl #0x61e890
//  0x42adec: mov x3, x0
//  0x42adf0: ldur x0, [FP, #-8]
//  0x42adf4: stur x3, [FP, #-0x18]
//  0x42adf8: stur w0, [x3, #0xf]
//  0x42adfc: add x1, PP, #0x10, lsl #12
//  0x42ae00: ldr x1, [x1, #0xcd0]
//  0x42ae04: mov x2, NULL
//  0x42ae08: bl #0x61ec54
//  0x42ae0c: mov x1, x0
//  0x42ae10: ldur x0, [FP, #-0x18]
//  0x42ae14: stur w1, [x0, #0x13]
//  0x42ae18: ldur x2, [FP, #-0x10]
//  0x42ae1c: add x1, PP, #0x10, lsl #12
//  0x42ae20: ldr x1, [x1, #0xcd8]
//  0x42ae24: bl #0x61ec54
//  0x42ae28: mov x1, x0
//  0x42ae2c: ldur x0, [FP, #-8]
//  0x42ae30: stur w1, [x0, #0x13]
//  0x42ae34: ldur x2, [FP, #-0x18]
//  0x42ae38: add x1, PP, #0xf, lsl #12
//  0x42ae3c: ldr x1, [x1, #0x640]
//  0x42ae40: add x3, PP, #0x10, lsl #12
//  0x42ae44: ldr x3, [x3, #0xbd8]
//  0x42ae48: bl #0x61ea98
//  0x42ae4c: mov x1, x0
//  0x42ae50: ldur x0, [FP, #-8]
//  0x42ae54: stur w1, [x0, #0x17]
//  0x42ae58: mov SP, FP
//  0x42ae5c: ldp FP, LR, [SP], #0x10
//  0x42ae60: ret 
//
dynamic SendPocketPageState_buildCoinLayout() {
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42adac
  // frame: FP = SP // 0x42adb0
  // frame: SP = SP - 0x18 // 0x42adb4
  local_m8 = x1; // 0x42adb8
  x1 = 1; // 0x42adbc
  sub_0x61e890(); // 0x42adc0
  x0 = local_m8; // 0x42adc8
  x2 = x0; // 0x42adc4
  local_m10 = x2; // 0x42adcc
  memSet(x2, 0xf, w0); // 0x42add0
  x1 = mem((PP + 0x10000), 0xbd8) /* TypeArguments */; // 0x42add8
  AllocationStub_Selector() /* 0x41c8d4 */; // 0x42addc
  local_m8 = x0; // 0x42ade0
  x1 = 2; // 0x42ade4
  sub_0x61e890(); // 0x42ade8
  x0 = local_m8; // 0x42adf0
  x3 = x0; // 0x42adec
  local_m18 = x3; // 0x42adf4
  memSet(x3, 0xf, w0); // 0x42adf8
  x1 = mem((PP + 0x10000), 0xcd0) /* Function */; // 0x42ae00
  x2 = NULL; // 0x42ae04
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42ae08
  x0 = local_m18; // 0x42ae10
  x1 = x0; // 0x42ae0c
  memSet(x0, 0x13, w1); // 0x42ae14
  x1 = mem((PP + 0x10000), 0xcd8) /* Function */; // 0x42ae20
  x2 = local_m10; // 0x42ae18
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42ae24
  x0 = local_m8; // 0x42ae2c
  x1 = x0; // 0x42ae28
  memSet(x0, 0x13, w1); // 0x42ae30
  x1 = mem((PP + 0xf000), 0x640) /* Function */; // 0x42ae3c
  x2 = local_m18; // 0x42ae34
  x3 = mem((PP + 0x10000), 0xbd8) /* TypeArguments */; // 0x42ae44
  AllocationStub__Closure() /* 0x61ea98 */; // 0x42ae48
  x0 = local_m8; // 0x42ae50
  x1 = x0; // 0x42ae4c
  memSet(x0, 0x17, w1); // 0x42ae54
  SP = FP; // 0x42ae58
  // frame: FP, LR, mem(SP), 0x10 // 0x42ae5c
  return;
}

// SendPocketPageState_anon_closure_11
// raw disassembly:
//  0x42ae64: stp FP, LR, [SP, #-0x10]!
//  0x42ae68: mov FP, SP
//  0x42ae6c: sub SP, SP, #0x30
//  0x42ae70: ldr x0, [FP, #0x28]
//  0x42ae74: ldur w2, [x0, #0x17]
//  0x42ae78: add x2, x2, HEAP, lsl #32
//  0x42ae7c: stur x2, [FP, #-8]
//  0x42ae80: ldr BARRIER, [THR, #0x38]
//  0x42ae84: cmp SP, BARRIER
//  0x42ae88: b.ls #0x42af48
//  0x42ae8c: bl #0x41ee8c
//  0x42ae90: mov x1, x0
//  0x42ae94: mov x0, #4
//  0x42ae98: stur x1, [FP, #-0x18]
//  0x42ae9c: stur x0, [x1, #7]
//  0x42aea0: fmov d0, #4.00000000
//  0x42aea4: stur d0, [x1, #0xf]
//  0x42aea8: stur d0, [x1, #0x17]
//  0x42aeac: ldr d0, [PP, #0x6670]
//  0x42aeb0: stur d0, [x1, #0x1f]
//  0x42aeb4: ldr x0, [FP, #0x18]
//  0x42aeb8: sbfx x5, x0, #1, #0x1f
//  0x42aebc: tbz w0, #0, #0x42aec4
//  0x42aec0: ldur x5, [x0, #7]
//  0x42aec4: stur x5, [FP, #-0x10]
//  0x42aec8: bl #0x419950
//  0x42aecc: ldur x2, [FP, #-8]
//  0x42aed0: add x1, PP, #0x10, lsl #12
//  0x42aed4: ldr x1, [x1, #0xce0]
//  0x42aed8: stur x0, [FP, #-8]
//  0x42aedc: bl #0x61ec54
//  0x42aee0: stur x0, [FP, #-0x20]
//  0x42aee4: bl #0x41ee80
//  0x42aee8: stur x0, [FP, #-0x28]
//  0x42aeec: add BARRIER, NULL, #0x20
//  0x42aef0: str BARRIER, [SP]
//  0x42aef4: mov x1, x0
//  0x42aef8: ldur x2, [FP, #-0x18]
//  0x42aefc: ldur x3, [FP, #-0x20]
//  0x42af00: ldur x5, [FP, #-0x10]
//  0x42af04: ldur x6, [FP, #-8]
//  0x42af08: add x4, PP, #0x10, lsl #12
//  0x42af0c: ldr x4, [x4, #0x928]
//  0x42af10: bl #0x41ec7c
//  0x42af14: add x1, PP, #0xf, lsl #12
//  0x42af18: ldr x1, [x1, #0x218]
//  0x42af1c: bl #0x396454
//  0x42af20: mov x1, x0
//  0x42af24: ldur x2, [FP, #-0x28]
//  0x42af28: ldr x3, [FP, #0x20]
//  0x42af2c: stur x0, [FP, #-8]
//  0x42af30: ldr x4, [PP, #0x2e0]
//  0x42af34: bl #0x39ecf8
//  0x42af38: ldur x0, [FP, #-8]
//  0x42af3c: mov SP, FP
//  0x42af40: ldp FP, LR, [SP], #0x10
//  0x42af44: ret 
//  0x42af48: bl #0x61fa28
//  0x42af4c: b #0x42ae8c
//
dynamic SendPocketPageState_anon_closure_11() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42ae64
  // frame: FP = SP // 0x42ae68
  // frame: SP = SP - 0x30 // 0x42ae6c
  w2 = mem((local_28), 0x17); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42ae74
  x0 = local_28; // 0x42ae70
  x2 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42ae78
  local_m8 = x2; // 0x42ae7c
  BARRIER = mem(THR, 0x38); // 0x42ae80
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42af48
  }
  AllocationStub_SliverGridDelegateWithFixedCrossAxisCount() /* 0x41ee8c */; // 0x42ae8c
  x0 = 4; // 0x42ae94
  x1 = x0; // 0x42ae90
  local_m18 = x1; // 0x42ae98
  memSet(x1, 7, x0); // 0x42ae9c
  d0 = 4.00000000 /* bits */; // 0x42aea0
  memSet(x1, 0xf, d0); // 0x42aea4
  memSet(x1, 0x17, d0); // 0x42aea8
  d0 = 4604390187031047700; // 0x42aeac
  memSet(x1, 0x1f, d0); // 0x42aeb0
  x0 = local_18; // 0x42aeb4
  x5 = ((local_18) >> 1) & 0x7fffffff; // 0x42aeb8
  if (x0 & (1 << 0) == 0) {
  } else {
    x5 = mem(x0, 7); // 0x42aec0
  }
  local_m10 = x5; // 0x42aec4
  AllocationStub_NeverScrollableScrollPhysics() /* 0x419950 */; // 0x42aec8
  x1 = mem((PP + 0x10000), 0xce0) /* Function */; // 0x42aed4
  x2 = local_m8; // 0x42aecc
  local_m8 = x0; // 0x42aed8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42aedc
  local_m20 = x0; // 0x42aee0
  AllocationStub_GridView() /* 0x41ee80 */; // 0x42aee4
  local_m28 = x0; // 0x42aee8
  BARRIER = NULL + 0x20; // 0x42aeec
  local_0 = BARRIER; // 0x42aef0
  x1 = x0; // 0x42aef4
  x2 = local_m18; // 0x42aef8
  x3 = local_m20; // 0x42aefc
  x4 = mem((PP + 0x10000), 0x928) /* ImmutableArray */; // 0x42af0c
  x5 = local_m10; // 0x42af00
  x6 = local_m8; // 0x42af04
  GridView_ctor_builder() /* 0x41ec7c */; // 0x42af10
  x1 = mem((PP + 0xf000), 0x218) /* TypeArguments */; // 0x42af18
  AllocationStub_MediaQuery() /* 0x396454 */; // 0x42af1c
  x1 = x0; // 0x42af20
  x2 = local_m28; // 0x42af24
  x3 = local_20; // 0x42af28
  local_m8 = x0; // 0x42af2c
  x4 = mem(PP, 0x2e0) /* ImmutableArray */; // 0x42af30
  MediaQuery_ctor_removePadding() /* 0x39ecf8 */; // 0x42af34
  SP = FP; // 0x42af3c
  x0 = local_m8; // 0x42af38
  // frame: FP, LR, mem(SP), 0x10 // 0x42af40
  return;
}

// SendPocketPageState_anon_closure_12
// raw disassembly:
//  0x42af50: stp FP, LR, [SP, #-0x10]!
//  0x42af54: mov FP, SP
//  0x42af58: sub SP, SP, #0x28
//  0x42af5c: ldr x0, [FP, #0x20]
//  0x42af60: ldur w1, [x0, #0x17]
//  0x42af64: add x1, x1, HEAP, lsl #32
//  0x42af68: stur x1, [FP, #-8]
//  0x42af6c: ldr BARRIER, [THR, #0x38]
//  0x42af70: cmp SP, BARRIER
//  0x42af74: b.ls #0x42b05c
//  0x42af78: mov x1, #1
//  0x42af7c: bl #0x61e890
//  0x42af80: mov x2, x0
//  0x42af84: ldur x0, [FP, #-8]
//  0x42af88: stur x2, [FP, #-0x10]
//  0x42af8c: stur w0, [x2, #0xb]
//  0x42af90: ldr x0, [FP, #0x10]
//  0x42af94: stur w0, [x2, #0xf]
//  0x42af98: add x1, PP, #0x10, lsl #12
//  0x42af9c: ldr x1, [x1, #0xbd8]
//  0x42afa0: bl #0x41c8d4
//  0x42afa4: stur x0, [FP, #-8]
//  0x42afa8: mov x1, #2
//  0x42afac: bl #0x61e890
//  0x42afb0: mov x3, x0
//  0x42afb4: ldur x0, [FP, #-8]
//  0x42afb8: stur x3, [FP, #-0x18]
//  0x42afbc: stur w0, [x3, #0xf]
//  0x42afc0: add x1, PP, #0x10, lsl #12
//  0x42afc4: ldr x1, [x1, #0xce8]
//  0x42afc8: mov x2, NULL
//  0x42afcc: bl #0x61ec54
//  0x42afd0: mov x1, x0
//  0x42afd4: ldur x0, [FP, #-0x18]
//  0x42afd8: stur w1, [x0, #0x13]
//  0x42afdc: ldur x2, [FP, #-0x10]
//  0x42afe0: add x1, PP, #0x10, lsl #12
//  0x42afe4: ldr x1, [x1, #0xcf0]
//  0x42afe8: bl #0x61ec54
//  0x42afec: mov x1, x0
//  0x42aff0: ldur x0, [FP, #-8]
//  0x42aff4: stur w1, [x0, #0x13]
//  0x42aff8: ldur x2, [FP, #-0x18]
//  0x42affc: add x1, PP, #0xf, lsl #12
//  0x42b000: ldr x1, [x1, #0x640]
//  0x42b004: add x3, PP, #0x10, lsl #12
//  0x42b008: ldr x3, [x3, #0xbd8]
//  0x42b00c: bl #0x61ea98
//  0x42b010: mov x1, x0
//  0x42b014: ldur x0, [FP, #-8]
//  0x42b018: stur w1, [x0, #0x17]
//  0x42b01c: bl #0x3a1d94
//  0x42b020: ldur x2, [FP, #-0x10]
//  0x42b024: add x1, PP, #0x10, lsl #12
//  0x42b028: ldr x1, [x1, #0xcf8]
//  0x42b02c: stur x0, [FP, #-0x10]
//  0x42b030: bl #0x61ec54
//  0x42b034: ldur BARRIER, [FP, #-8]
//  0x42b038: stp BARRIER, x0, [SP]
//  0x42b03c: ldur x1, [FP, #-0x10]
//  0x42b040: add x4, PP, #0xc, lsl #12
//  0x42b044: ldr x4, [x4, #0x208]
//  0x42b048: bl #0x3a18c4
//  0x42b04c: ldur x0, [FP, #-0x10]
//  0x42b050: mov SP, FP
//  0x42b054: ldp FP, LR, [SP], #0x10
//  0x42b058: ret 
//  0x42b05c: bl #0x61fa28
//  0x42b060: b #0x42af78
//
dynamic SendPocketPageState_anon_closure_12() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42af50
  // frame: FP = SP // 0x42af54
  // frame: SP = SP - 0x28 // 0x42af58
  w1 = mem((local_20), 0x17); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42af60
  x0 = local_20; // 0x42af5c
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42af64
  local_m8 = x1; // 0x42af68
  BARRIER = mem(THR, 0x38); // 0x42af6c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42b05c
  }
  x1 = 1; // 0x42af78
  sub_0x61e890(); // 0x42af7c
  x0 = local_m8; // 0x42af84
  x2 = x0; // 0x42af80
  local_m10 = x2; // 0x42af88
  memSet(x2, 0xb, w0); // 0x42af8c
  x0 = local_10; // 0x42af90
  memSet(x2, 0xf, w0); // 0x42af94
  x1 = mem((PP + 0x10000), 0xbd8) /* TypeArguments */; // 0x42af9c
  AllocationStub_Selector() /* 0x41c8d4 */; // 0x42afa0
  local_m8 = x0; // 0x42afa4
  x1 = 2; // 0x42afa8
  sub_0x61e890(); // 0x42afac
  x0 = local_m8; // 0x42afb4
  x3 = x0; // 0x42afb0
  local_m18 = x3; // 0x42afb8
  memSet(x3, 0xf, w0); // 0x42afbc
  x1 = mem((PP + 0x10000), 0xce8) /* Function */; // 0x42afc4
  x2 = NULL; // 0x42afc8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42afcc
  x0 = local_m18; // 0x42afd4
  x1 = x0; // 0x42afd0
  memSet(x0, 0x13, w1); // 0x42afd8
  x1 = mem((PP + 0x10000), 0xcf0) /* Function */; // 0x42afe4
  x2 = local_m10; // 0x42afdc
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42afe8
  x0 = local_m8; // 0x42aff0
  x1 = x0; // 0x42afec
  memSet(x0, 0x13, w1); // 0x42aff4
  x1 = mem((PP + 0xf000), 0x640) /* Function */; // 0x42b000
  x2 = local_m18; // 0x42aff8
  x3 = mem((PP + 0x10000), 0xbd8) /* TypeArguments */; // 0x42b008
  AllocationStub__Closure() /* 0x61ea98 */; // 0x42b00c
  x0 = local_m8; // 0x42b014
  x1 = x0; // 0x42b010
  memSet(x0, 0x17, w1); // 0x42b018
  sub_0x3a1d94(); // 0x42b01c
  x1 = mem((PP + 0x10000), 0xcf8) /* Function */; // 0x42b028
  x2 = local_m10; // 0x42b020
  local_m10 = x0; // 0x42b02c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42b030
  BARRIER = local_m8; // 0x42b034
  // frame: BARRIER, x0, mem(SP) // 0x42b038
  x1 = local_m10; // 0x42b03c
  x4 = mem((PP + 0xc000), 0x208) /* ImmutableArray */; // 0x42b044
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x42b048
  SP = FP; // 0x42b050
  x0 = local_m10; // 0x42b04c
  // frame: FP, LR, mem(SP), 0x10 // 0x42b054
  return;
}

// SendPocketPageState_anon_closure_13
// raw disassembly:
//  0x42b064: stp FP, LR, [SP, #-0x10]!
//  0x42b068: mov FP, SP
//  0x42b06c: ldr x0, [FP, #0x10]
//  0x42b070: ldur w1, [x0, #0x17]
//  0x42b074: add x1, x1, HEAP, lsl #32
//  0x42b078: ldr BARRIER, [THR, #0x38]
//  0x42b07c: cmp SP, BARRIER
//  0x42b080: b.ls #0x42b0cc
//  0x42b084: ldur w0, [x1, #0xb]
//  0x42b088: add x0, x0, HEAP, lsl #32
//  0x42b08c: ldur w2, [x0, #0xf]
//  0x42b090: add x2, x2, HEAP, lsl #32
//  0x42b094: ldur w0, [x2, #0x13]
//  0x42b098: add x0, x0, HEAP, lsl #32
//  0x42b09c: ldur w2, [x1, #0xf]
//  0x42b0a0: add x2, x2, HEAP, lsl #32
//  0x42b0a4: sbfx x1, x2, #1, #0x1f
//  0x42b0a8: tbz w2, #0, #0x42b0b0
//  0x42b0ac: ldur x1, [x2, #7]
//  0x42b0b0: mov x2, x1
//  0x42b0b4: mov x1, x0
//  0x42b0b8: bl #0x42b0d4
//  0x42b0bc: mov x0, NULL
//  0x42b0c0: mov SP, FP
//  0x42b0c4: ldp FP, LR, [SP], #0x10
//  0x42b0c8: ret 
//  0x42b0cc: bl #0x61fa28
//  0x42b0d0: b #0x42b084
//
dynamic SendPocketPageState_anon_closure_13() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42b064
  BARRIER = mem(THR, 0x38); // 0x42b078
  // frame: FP = SP // 0x42b068
  w1 = mem((local_10), 0x17); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42b070
  x0 = local_10; // 0x42b06c
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42b074
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42b0cc
  }
  w0 = mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13); // 0x42b094
  w2 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf); // 0x42b08c
  x0 = (mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff; // 0x42b094
  x2 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42b090
  w2 = mem(x1, 0xf); // 0x42b09c
  x0 = x0 + (HEAP << 32); // 0x42b098
  x1 = ((((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x42b0a4
  x2 = ((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42b0a0
  if (x2 & (1 << 0) == 0) {
  } else {
    x1 = mem(x2, 7); // 0x42b0ac
  }
  x1 = x0; // 0x42b0b4
  x2 = x1; // 0x42b0b0
  PartySendPocketNotifier_updateCoinIndex() /* 0x42b0d4 */; // 0x42b0b8
  SP = FP; // 0x42b0c0
  x0 = NULL; // 0x42b0bc
  // frame: FP, LR, mem(SP), 0x10 // 0x42b0c4
  return;
}

// SendPocketPageState_anon_closure_14
// raw disassembly:
//  0x42b210: stp FP, LR, [SP, #-0x10]!
//  0x42b214: mov FP, SP
//  0x42b218: sub SP, SP, #0x20
//  0x42b21c: ldr x0, [FP, #0x28]
//  0x42b220: ldur w1, [x0, #0x17]
//  0x42b224: add x1, x1, HEAP, lsl #32
//  0x42b228: stur x1, [FP, #-0x10]
//  0x42b22c: ldr BARRIER, [THR, #0x38]
//  0x42b230: cmp SP, BARRIER
//  0x42b234: b.ls #0x42b320
//  0x42b238: ldur w0, [x1, #0xb]
//  0x42b23c: add x0, x0, HEAP, lsl #32
//  0x42b240: ldur w2, [x0, #0xf]
//  0x42b244: add x2, x2, HEAP, lsl #32
//  0x42b248: stur x2, [FP, #-8]
//  0x42b24c: bl #0x41c788
//  0x42b250: mov x2, x0
//  0x42b254: fmov d0, #18.00000000
//  0x42b258: stur x2, [FP, #-0x20]
//  0x42b25c: stur d0, [x2, #0xb]
//  0x42b260: ldur x3, [FP, #-8]
//  0x42b264: ldur w0, [x3, #0x13]
//  0x42b268: add x0, x0, HEAP, lsl #32
//  0x42b26c: ldur w4, [x0, #0x3b]
//  0x42b270: add x4, x4, HEAP, lsl #32
//  0x42b274: ldur x5, [FP, #-0x10]
//  0x42b278: ldur w0, [x5, #0xf]
//  0x42b27c: add x0, x0, HEAP, lsl #32
//  0x42b280: ldur w1, [x4, #0xb]
//  0x42b284: sbfx x6, x0, #1, #0x1f
//  0x42b288: tbz w0, #0, #0x42b290
//  0x42b28c: ldur x6, [x0, #7]
//  0x42b290: sbfx x0, x1, #1, #0x1f
//  0x42b294: mov x1, x6
//  0x42b298: cmp x1, x0
//  0x42b29c: b.hs #0x42b328
//  0x42b2a0: ldur w0, [x4, #0xf]
//  0x42b2a4: add x0, x0, HEAP, lsl #32
//  0x42b2a8: add BARRIER, x0, x6, lsl #2
//  0x42b2ac: ldur w1, [BARRIER, #0xf]
//  0x42b2b0: add x1, x1, HEAP, lsl #32
//  0x42b2b4: stur x1, [FP, #-0x18]
//  0x42b2b8: bl #0x42ad5c
//  0x42b2bc: mov x1, x0
//  0x42b2c0: ldur x2, [FP, #-0x18]
//  0x42b2c4: stur x0, [FP, #-0x18]
//  0x42b2c8: bl #0x42b32c
//  0x42b2cc: ldur x0, [FP, #-0x10]
//  0x42b2d0: ldur w1, [x0, #0xf]
//  0x42b2d4: add x1, x1, HEAP, lsl #32
//  0x42b2d8: ldr x0, [FP, #0x18]
//  0x42b2dc: sbfx x2, x0, #1, #0x1f
//  0x42b2e0: tbz w0, #0, #0x42b2e8
//  0x42b2e4: ldur x2, [x0, #7]
//  0x42b2e8: sbfx x0, x1, #1, #0x1f
//  0x42b2ec: tbz w1, #0, #0x42b2f4
//  0x42b2f0: ldur x0, [x1, #7]
//  0x42b2f4: cmp x0, x2
//  0x42b2f8: add BARRIER, NULL, #0x20
//  0x42b2fc: add x17, NULL, #0x30
//  0x42b300: csel x5, BARRIER, x17, eq
//  0x42b304: ldur x1, [FP, #-8]
//  0x42b308: ldur x2, [FP, #-0x20]
//  0x42b30c: ldur x3, [FP, #-0x18]
//  0x42b310: bl #0x42a5f4
//  0x42b314: mov SP, FP
//  0x42b318: ldp FP, LR, [SP], #0x10
//  0x42b31c: ret 
//  0x42b320: bl #0x61fa28
//  0x42b324: b #0x42b238
//  0x42b328: bl #0x61fe70
//
dynamic SendPocketPageState_anon_closure_14() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42b210
  // frame: FP = SP // 0x42b214
  // frame: SP = SP - 0x20 // 0x42b218
  w1 = mem((local_28), 0x17); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42b220
  x0 = local_28; // 0x42b21c
  x1 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); /* _SendPocketPageState._roomId (off 0x18) */  // 0x42b224
  local_m10 = x1; // 0x42b228
  BARRIER = mem(THR, 0x38); // 0x42b22c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42b320
  }
  w2 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf); // 0x42b240
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x42b23c
  x2 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42b244
  local_m8 = x2; // 0x42b248
  AllocationStub_SOCoinWidget() /* 0x41c788 */; // 0x42b24c
  d0 = 18.00000000 /* bits */; // 0x42b254
  x2 = x0; // 0x42b250
  local_m20 = x2; // 0x42b258
  memSet(x2, 0xb, d0); // 0x42b25c
  w0 = mem((local_m10), 0xf); // 0x42b278
  w4 = mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x3b); // 0x42b26c
  x0 = (mem((local_m10), 0xf)) & 0xffffffff; // 0x42b278
  x3 = local_m8; // 0x42b260
  x4 = ((mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x3b)) & 0xffffffff) + (HEAP << 32); // 0x42b270
  x5 = local_m10; // 0x42b274
  w1 = mem(x4, 0xb); // 0x42b280
  x0 = x0 + (HEAP << 32); // 0x42b27c
  x1 = (mem(x4, 0xb)) & 0xffffffff; // 0x42b280
  x6 = ((x0 + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x42b284
  if (x0 & (1 << 0) == 0) {
  } else {
    x6 = mem(x0, 7); // 0x42b28c
  }
  x0 = (x1 >> 1) & 0x7fffffff; // 0x42b290
  x1 = x6; // 0x42b294
  if (x1 >= x0) {
    RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x42b328
  }
  BARRIER = ((w0 & 0xffffffff) + (HEAP << 32)) + (x6 << 2); // 0x42b2a8
  w1 = mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x6 << 2)), 0xf); // 0x42b2ac
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x42b2a4
  x1 = ((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x6 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42b2b0
  local_m18 = x1; // 0x42b2b4
  AllocationStub_PartySendPocketItem() /* 0x42ad5c */; // 0x42b2b8
  x1 = x0; // 0x42b2bc
  x2 = local_m18; // 0x42b2c0
  local_m18 = x0; // 0x42b2c4
  PartySendPocketItem_ctor_createCoin() /* 0x42b32c */; // 0x42b2c8
  w1 = mem((local_m10), 0xf); // 0x42b2d0
  x0 = local_18; // 0x42b2d8
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42b2d4
  x2 = ((local_18) >> 1) & 0x7fffffff; // 0x42b2dc
  if (x0 & (1 << 0) == 0) {
  } else {
    x2 = mem(x0, 7); // 0x42b2e4
  }
  x0 = (x1 >> 1) & 0x7fffffff; // 0x42b2e8
  if (x1 & (1 << 0) == 0) {
  } else {
    x0 = mem(x1, 7); // 0x42b2f0
  }
  BARRIER = NULL + 0x20; // 0x42b2f8
  x1 = local_m8; // 0x42b304
  x17 = NULL + 0x30; // 0x42b2fc
  x2 = local_m20; // 0x42b308
  x3 = local_m18; // 0x42b30c
  x5 = (x0 == x2) ? (NULL + 0x20) : (NULL + 0x30); // 0x42b300
  SendPocketPageState_buildSendItem() /* 0x42a5f4 */; // 0x42b310
  SP = FP; // 0x42b314
  // frame: FP, LR, mem(SP), 0x10 // 0x42b318
  return;
}

// SendPocketPageState_anon_closure_15
// raw disassembly:
//  0x42b414: ldr x2, [SP]
//  0x42b418: ldur x3, [x2, #0x2b]
//  0x42b41c: sbfiz x0, x3, #1, #0x1f
//  0x42b420: cmp x3, x0, asr #1
//  0x42b424: b.eq #0x42b440
//  0x42b428: stp FP, LR, [SP, #-0x10]!
//  0x42b42c: mov FP, SP
//  0x42b430: bl #0x61fba8
//  0x42b434: mov SP, FP
//  0x42b438: ldp FP, LR, [SP], #0x10
//  0x42b43c: stur x3, [x0, #7]
//  0x42b440: ret 
//
dynamic SendPocketPageState_anon_closure_15() {
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x2;
  dynamic x3;
  x0 = (((mem((local_0), 0x2b)) & 0x7fffffff) << 1) /* signed */; // 0x42b41c
  x2 = local_0; // 0x42b414
  x3 = mem((local_0), 0x2b); // 0x42b418
  if (x3 == x0) {
  } else {
    // frame: FP, LR, mem(SP, -0x10)! // 0x42b428
    // frame: FP = SP // 0x42b42c
    AllocationStub__Mint() /* 0x61fba8 */; // 0x42b430
    SP = FP; // 0x42b434
    // frame: FP, LR, mem(SP), 0x10 // 0x42b438
    memSet(x0, 7, x3); // 0x42b43c
  }
  return;
}

// SendPocketPageState_anon_closure_16
// raw disassembly:
//  0x42b6f8: ldr x1, [SP]
//  0x42b6fc: ldur w2, [x1, #0x3b]
//  0x42b700: add x2, x2, HEAP, lsl #32
//  0x42b704: ldur w0, [x2, #0xb]
//  0x42b708: ret 
//
dynamic SendPocketPageState_anon_closure_16() {
  dynamic w0;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  w0 = mem((((mem((local_0), 0x3b)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x42b704
  w2 = mem((local_0), 0x3b); // 0x42b6fc
  x0 = (mem((((mem((local_0), 0x3b)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x42b704
  x1 = local_0; // 0x42b6f8
  x2 = ((mem((local_0), 0x3b)) & 0xffffffff) + (HEAP << 32); // 0x42b700
  return x0;
}

// SendPocketPageState_dispose
// raw disassembly:
//  0x451458: stp FP, LR, [SP, #-0x10]!
//  0x45145c: mov FP, SP
//  0x451460: sub SP, SP, #8
//  0x451464: mov x0, x1
//  0x451468: stur x1, [FP, #-8]
//  0x45146c: ldr BARRIER, [THR, #0x38]
//  0x451470: cmp SP, BARRIER
//  0x451474: b.ls #0x4514c4
//  0x451478: mov x1, x0
//  0x45147c: bl #0x451970
//  0x451480: ldur x1, [FP, #-8]
//  0x451484: ldur w0, [x1, #0x1b]
//  0x451488: add x0, x0, HEAP, lsl #32
//  0x45148c: ldr BARRIER, [PP, #0x40]
//  0x451490: cmp w0, w16
//  0x451494: b.ne #0x4514a4
//  0x451498: add x2, PP, #0x10, lsl #12
//  0x45149c: ldr x2, [x2, #0xa90]
//  0x4514a0: bl #0x61d8f8
//  0x4514a4: mov x2, x0
//  0x4514a8: add x1, PP, #0x10, lsl #12
//  0x4514ac: ldr x1, [x1, #0xa98]
//  0x4514b0: bl #0x450ab8
//  0x4514b4: mov x0, NULL
//  0x4514b8: mov SP, FP
//  0x4514bc: ldp FP, LR, [SP], #0x10
//  0x4514c0: ret 
//  0x4514c4: bl #0x61fa28
//  0x4514c8: b #0x451478
//
dynamic SendPocketPageState_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x451458
  // frame: FP = SP // 0x45145c
  // frame: SP = SP - 8 // 0x451460
  x0 = x1; // 0x451464
  local_m8 = x1; // 0x451468
  BARRIER = mem(THR, 0x38); // 0x45146c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4514c4
  }
  x1 = x0; // 0x451478
  SoulState_dispose() /* 0x451970 */; // 0x45147c
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x45148c
  w0 = mem((local_m8), 0x1b); /* _SendPocketPageState._coinChargedCallback (off 0x1c) */  // 0x451484
  x0 = ((mem((local_m8), 0x1b)) & 0xffffffff) + (HEAP << 32); /* _SendPocketPageState._coinChargedCallback (off 0x1c) */  // 0x451488
  x1 = local_m8; // 0x451480
  if (w0 != w16) {
  } else {
    x2 = mem((PP + 0x10000), 0xa90) /* Field */; // 0x45149c
    sub_0x61d8f8(); // 0x4514a0
  }
  x1 = "soul.event.business.charge_coin_success" /* pp+0x10a98 */; // 0x4514ac
  x2 = x0; // 0x4514a4
  SOEventBus_removeEventListener() /* 0x450ab8 */; // 0x4514b0
  SP = FP; // 0x4514b8
  x0 = NULL; // 0x4514b4
  // frame: FP, LR, mem(SP), 0x10 // 0x4514bc
  return;
}

// SendPocketPageState_coinChargedCallback
// raw disassembly:
//  0x579184: ldr x0, [PP, #0x148]
//  0x579188: ret 
//
dynamic SendPocketPageState_coinChargedCallback() {
  dynamic x0;
  x0 = "" /* pp+0x148 */; // 0x579184
  return x0;
}

// SendPocketPageState_onPageShow
// raw disassembly:
//  0x4a9fcc: stp FP, LR, [SP, #-0x10]!
//  0x4a9fd0: mov FP, SP
//  0x4a9fd4: ldr BARRIER, [THR, #0x38]
//  0x4a9fd8: cmp SP, BARRIER
//  0x4a9fdc: b.ls #0x4aa004
//  0x4a9fe0: bl #0x4aa6c4
//  0x4a9fe4: add x1, PP, #0x17, lsl #12
//  0x4a9fe8: ldr x1, [x1, #0xc10]
//  0x4a9fec: ldr x4, [PP, #0x4c0]
//  0x4a9ff0: bl #0x4a9e38
//  0x4a9ff4: mov x0, NULL
//  0x4a9ff8: mov SP, FP
//  0x4a9ffc: ldp FP, LR, [SP], #0x10
//  0x4aa000: ret 
//  0x4aa004: bl #0x61fa28
//  0x4aa008: b #0x4a9fe0
//
dynamic SendPocketPageState_onPageShow() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4a9fcc
  BARRIER = mem(THR, 0x38); // 0x4a9fd4
  // frame: FP = SP // 0x4a9fd0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4aa004
  }
  SoulState_onPageShow() /* 0x4aa6c4 */; // 0x4a9fe0
  x1 = "LucketPocket_SendPop" /* pp+0x17c10 */; // 0x4a9fe8
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4a9fec
  EventTrack_eventPv() /* 0x4a9e38 */; // 0x4a9ff0
  SP = FP; // 0x4a9ff8
  x0 = NULL; // 0x4a9ff4
  // frame: FP, LR, mem(SP), 0x10 // 0x4a9ffc
  return;
}

// SendPocketPageState_initState
// raw disassembly:
//  0x4d5978: stp FP, LR, [SP, #-0x10]!
//  0x4d597c: mov FP, SP
//  0x4d5980: sub SP, SP, #0x28
//  0x4d5984: stur x1, [FP, #-8]
//  0x4d5988: ldr BARRIER, [THR, #0x38]
//  0x4d598c: cmp SP, BARRIER
//  0x4d5990: b.ls #0x4d5ad4
//  0x4d5994: mov x1, #1
//  0x4d5998: bl #0x61e890
//  0x4d599c: mov x1, x0
//  0x4d59a0: ldur x0, [FP, #-8]
//  0x4d59a4: stur x1, [FP, #-0x10]
//  0x4d59a8: stur w0, [x1, #0xf]
//  0x4d59ac: ldur w2, [x0, #0xb]
//  0x4d59b0: add x2, x2, HEAP, lsl #32
//  0x4d59b4: cmp w2, w22
//  0x4d59b8: b.eq #0x4d5adc
//  0x4d59bc: ldur w3, [x2, #0xb]
//  0x4d59c0: add x3, x3, HEAP, lsl #32
//  0x4d59c4: cmp w3, w22
//  0x4d59c8: b.ne #0x4d59e0
//  0x4d59cc: ldr BARRIER, [THR, #0x90]
//  0x4d59d0: stp BARRIER, NULL, [SP]
//  0x4d59d4: bl #0x27c0c8
//  0x4d59d8: mov x1, x0
//  0x4d59dc: b #0x4d59e4
//  0x4d59e0: mov x1, x3
//  0x4d59e4: ldur x0, [x1, #-1]
//  0x4d59e8: ubfx x0, x0, #0xc, #0x14
//  0x4d59ec: add x2, PP, #0x10, lsl #12
//  0x4d59f0: ldr x2, [x2, #0xd48]
//  0x4d59f4: sub LR, x0, #1, lsl #12
//  0x4d59f8: ldr LR, [x21, LR, lsl #3]
//  0x4d59fc: blr LR
//  0x4d5a00: cmp w0, w22
//  0x4d5a04: b.ne #0x4d5a10
//  0x4d5a08: ldr x4, [PP, #0x148]
//  0x4d5a0c: b #0x4d5a14
//  0x4d5a10: mov x4, x0
//  0x4d5a14: ldur x3, [FP, #-8]
//  0x4d5a18: mov x0, x4
//  0x4d5a1c: stur x4, [FP, #-0x18]
//  0x4d5a20: mov x2, NULL
//  0x4d5a24: mov x1, NULL
//  0x4d5a28: mov x4, #0x3c
//  0x4d5a2c: tbz w0, #0, #0x4d5a38
//  0x4d5a30: ldur x4, [x0, #-1]
//  0x4d5a34: ubfx x4, x4, #0xc, #0x14
//  0x4d5a38: sub x4, x4, #0x5e
//  0x4d5a3c: cmp x4, #1
//  0x4d5a40: b.ls #0x4d5a54
//  0x4d5a44: ldr x8, [PP, #0x2f8]
//  0x4d5a48: add x3, PP, #0x10, lsl #12
//  0x4d5a4c: ldr x3, [x3, #0xd50]
//  0x4d5a50: bl #0x62a0c0
//  0x4d5a54: ldur x0, [FP, #-0x18]
//  0x4d5a58: ldur x2, [FP, #-8]
//  0x4d5a5c: stur w0, [x2, #0x17]
//  0x4d5a60: ldurb w16, [x2, #-1]
//  0x4d5a64: ldurb w17, [x0, #-1]
//  0x4d5a68: and BARRIER, x17, BARRIER, lsr #2
//  0x4d5a6c: tst BARRIER, HEAP, lsr #32
//  0x4d5a70: b.eq #0x4d5a78
//  0x4d5a74: bl #0x61e06c
//  0x4d5a78: ldur w1, [x2, #0x13]
//  0x4d5a7c: add x1, x1, HEAP, lsl #32
//  0x4d5a80: bl #0x4d5ae0
//  0x4d5a84: ldur x2, [FP, #-0x10]
//  0x4d5a88: add x1, PP, #0x10, lsl #12
//  0x4d5a8c: ldr x1, [x1, #0xd60]
//  0x4d5a90: bl #0x61ec54
//  0x4d5a94: mov x2, x0
//  0x4d5a98: add x1, PP, #0x10, lsl #12
//  0x4d5a9c: ldr x1, [x1, #0xa98]
//  0x4d5aa0: bl #0x4d3338
//  0x4d5aa4: ldur x1, [FP, #-8]
//  0x4d5aa8: stur w0, [x1, #0x1b]
//  0x4d5aac: ldurb w16, [x1, #-1]
//  0x4d5ab0: ldurb w17, [x0, #-1]
//  0x4d5ab4: and BARRIER, x17, BARRIER, lsr #2
//  0x4d5ab8: tst BARRIER, HEAP, lsr #32
//  0x4d5abc: b.eq #0x4d5ac4
//  0x4d5ac0: bl #0x61e04c
//  0x4d5ac4: mov x0, NULL
//  0x4d5ac8: mov SP, FP
//  0x4d5acc: ldp FP, LR, [SP], #0x10
//  0x4d5ad0: ret 
//  0x4d5ad4: bl #0x61fa28
//  0x4d5ad8: b #0x4d5994
//  0x4d5adc: bl #0x61ffd0
//
dynamic SendPocketPageState_initState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
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
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d5978
  // frame: FP = SP // 0x4d597c
  // frame: SP = SP - 0x28 // 0x4d5980
  local_m8 = x1; // 0x4d5984
  BARRIER = mem(THR, 0x38); // 0x4d5988
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d5ad4
  }
  x1 = 1; // 0x4d5994
  sub_0x61e890(); // 0x4d5998
  x0 = local_m8; // 0x4d59a0
  x1 = x0; // 0x4d599c
  local_m10 = x1; // 0x4d59a4
  memSet(x1, 0xf, w0); // 0x4d59a8
  w2 = mem(x0, 0xb); // 0x4d59ac
  x2 = ((mem(x0, 0xb)) & 0xffffffff) + (HEAP << 32); // 0x4d59b0
  if (w2 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d5adc
  }
  x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x4d59c0
  if (w3 != w22) {
    x1 = x3; // 0x4d59e0
  } else {
    BARRIER = mem(THR, 0x90); // 0x4d59cc
    // frame: BARRIER, NULL, mem(SP) // 0x4d59d0
    Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x4d59d4
    x1 = x0; // 0x4d59d8
  }
  LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d59f8
  x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4d59e8
  x2 = "roomId" /* pp+0x10d48 */; // 0x4d59f0
  callIndirect(LR); // 0x4d59fc
  if (w0 != w22) {
    x4 = x0; // 0x4d5a10
  } else {
    x4 = "" /* pp+0x148 */; // 0x4d5a08
  }
  x0 = x4; // 0x4d5a18
  x3 = local_m8; // 0x4d5a14
  local_m18 = x4; // 0x4d5a1c
  x1 = NULL; // 0x4d5a24
  x2 = NULL; // 0x4d5a20
  x4 = 60; // 0x4d5a28
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d5a34
  }
  x4 = x4 - 0x5e; // 0x4d5a38
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x10000), 0xd50) /* Obj!? */; // 0x4d5a4c
    x8 = mem(PP, 0x2f8) /* Type */; // 0x4d5a44
    sub_0x62a0c0(); // 0x4d5a50
  }
  x0 = local_m18; // 0x4d5a54
  x2 = local_m8; // 0x4d5a58
  memSet(x2, 0x17, w0); // 0x4d5a5c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d5a68
  w16 = mem(x2, -1); // 0x4d5a60
  w17 = mem(x0, -1); // 0x4d5a64
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x4d5a60
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d5a64
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x4d5a74
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d5a7c
  PartySendPocketNotifier_requestData() /* 0x4d5ae0 */; // 0x4d5a80
  x1 = mem((PP + 0x10000), 0xd60) /* Function */; // 0x4d5a8c
  x2 = local_m10; // 0x4d5a84
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d5a90
  x1 = "soul.event.business.charge_coin_success" /* pp+0x10a98 */; // 0x4d5a9c
  x2 = x0; // 0x4d5a94
  SOEventBus_addEventListener() /* 0x4d3338 */; // 0x4d5aa0
  x1 = local_m8; // 0x4d5aa4
  memSet(x1, 0x1b, w0); // 0x4d5aa8
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d5ab4
  w16 = mem(x1, -1); // 0x4d5aac
  w17 = mem(x0, -1); // 0x4d5ab0
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d5aac
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d5ab0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d5ac0
  }
  SP = FP; // 0x4d5ac8
  x0 = NULL; // 0x4d5ac4
  // frame: FP, LR, mem(SP), 0x10 // 0x4d5acc
  return;
}

// PartySendPocketPage_createState
// raw disassembly:
//  0x4c48e8: stp FP, LR, [SP, #-0x10]!
//  0x4c48ec: mov FP, SP
//  0x4c48f0: sub SP, SP, #0x10
//  0x4c48f4: ldr BARRIER, [THR, #0x38]
//  0x4c48f8: cmp SP, BARRIER
//  0x4c48fc: b.ls #0x4c4964
//  0x4c4900: add x1, PP, #0xb, lsl #12
//  0x4c4904: ldr x1, [x1, #0x778]
//  0x4c4908: bl #0x4c4a68
//  0x4c490c: mov x1, x0
//  0x4c4910: ldr x0, [PP, #0x40]
//  0x4c4914: stur x1, [FP, #-8]
//  0x4c4918: stur w0, [x1, #0x17]
//  0x4c491c: stur w0, [x1, #0x1b]
//  0x4c4920: bl #0x4c4a5c
//  0x4c4924: mov x1, x0
//  0x4c4928: stur x0, [FP, #-0x10]
//  0x4c492c: bl #0x4c496c
//  0x4c4930: ldur x0, [FP, #-0x10]
//  0x4c4934: ldur x1, [FP, #-8]
//  0x4c4938: stur w0, [x1, #0x13]
//  0x4c493c: ldurb w16, [x1, #-1]
//  0x4c4940: ldurb w17, [x0, #-1]
//  0x4c4944: and BARRIER, x17, BARRIER, lsr #2
//  0x4c4948: tst BARRIER, HEAP, lsr #32
//  0x4c494c: b.eq #0x4c4954
//  0x4c4950: bl #0x61e04c
//  0x4c4954: mov x0, x1
//  0x4c4958: mov SP, FP
//  0x4c495c: ldp FP, LR, [SP], #0x10
//  0x4c4960: ret 
//  0x4c4964: bl #0x61fa28
//  0x4c4968: b #0x4c4900
//
dynamic PartySendPocketPage_createState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c48e8
  BARRIER = mem(THR, 0x38); // 0x4c48f4
  // frame: FP = SP // 0x4c48ec
  // frame: SP = SP - 0x10 // 0x4c48f0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c4964
  }
  x1 = mem((PP + 0xb000), 0x778) /* TypeArguments */; // 0x4c4904
  AllocationStub__SendPocketPageState() /* 0x4c4a68 */; // 0x4c4908
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4c4910
  x1 = x0; // 0x4c490c
  local_m8 = x1; // 0x4c4914
  memSet(x1, 0x17, w0); // 0x4c4918
  memSet(x1, 0x1b, w0); // 0x4c491c
  AllocationStub_PartySendPocketNotifier() /* 0x4c4a5c */; // 0x4c4920
  x1 = x0; // 0x4c4924
  local_m10 = x0; // 0x4c4928
  PartySendPocketNotifier_ctor() /* 0x4c496c */; // 0x4c492c
  x0 = local_m10; // 0x4c4930
  x1 = local_m8; // 0x4c4934
  memSet(x1, 0x13, w0); // 0x4c4938
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c4944
  w16 = mem(x1, -1); // 0x4c493c
  w17 = mem(x0, -1); // 0x4c4940
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c493c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c4940
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c4950
  }
  SP = FP; // 0x4c4958
  x0 = x1; // 0x4c4954
  // frame: FP, LR, mem(SP), 0x10 // 0x4c495c
  return;
}
