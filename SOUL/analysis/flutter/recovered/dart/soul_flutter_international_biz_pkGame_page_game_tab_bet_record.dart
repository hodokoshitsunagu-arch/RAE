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
dynamic AllocationStub_BouncingScrollPhysics, AllocationStub_BoxDecoration;
dynamic AllocationStub_Center, AllocationStub_ChangeNotifierProvider, AllocationStub_ClipRRect;
dynamic AllocationStub_Color, AllocationStub_Column, AllocationStub_Consumer;
dynamic AllocationStub_Container, AllocationStub_CustomFooter, AllocationStub_DecorationImage;
dynamic AllocationStub_EdgeInsets, AllocationStub_Expanded;
dynamic AllocationStub_GamePKBetLaunchRecordNotifier;
dynamic AllocationStub_GamePKBetParticipateRecordNotifier, AllocationStub_ListView;
dynamic AllocationStub_MediaQuery, AllocationStub_PageController;
dynamic AllocationStub_PagePKGameBetLaunchRecord;
dynamic AllocationStub_PagePKGameBetParticipateRecord, AllocationStub_PageView;
dynamic AllocationStub_PetalLoading, AllocationStub_Radius, AllocationStub_RefreshController;
dynamic AllocationStub_Row, AllocationStub_SOAssetImage, AllocationStub_SizedBox;
dynamic AllocationStub_SmartRefresher, AllocationStub_Stack, AllocationStub_Tab;
dynamic AllocationStub_TabBar, AllocationStub_TabController, AllocationStub_Text;
dynamic AllocationStub_TextStyle, AllocationStub__Closure, AllocationStub__Double;
dynamic AllocationStub__GrowableList, AllocationStub__PagePKGameBetLaunchRecordState;
dynamic AllocationStub__PagePKGameBetParticipateRecordState;
dynamic AllocationStub__PagePKGameBetTabRecordState, AllocationStub__Set;
dynamic AllocationStub__WidgetTicker, BARRIER, BoostNavigator_get_instance, BoostNavigator_pop;
dynamic ChangeNotifier_addListener, CompactIterator_moveNext, Container_ctor, FP;
dynamic GamePKBetLaunchRecordNotifier_ctor, GamePKBetLaunchRecordNotifier_gainPKGameLaunchRank;
dynamic GamePKBetLaunchRecordNotifier_requestPKGameLaunchRankList;
dynamic GamePKBetParticipateRecordNotifier_gainPKGameParticipateRank;
dynamic GamePKBetParticipateRecordNotifier_requestGameParticipateRankList;
dynamic GestureDetector_ctor, HEAP, InheritedProvider_ctor, LR;
dynamic LateInitializationErrorSharedWithoutFpuRegsStub_0x620258, ListView_ctor_builder;
dynamic MediaQuery_ctor_removePadding, NULL, NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0;
dynamic PP, PageController_jumpToPage, PageView_ctor_builder;
dynamic RangeErrorSharedWithoutFpuRegsStub_0x61fe70, RefreshController_ctor;
dynamic RefreshController_dispose, RefreshController_loadComplete;
dynamic RefreshController_loadFailed, RefreshController_loadNoData, SP;
dynamic ScreenUtil_getScreenHeight, ScreenUtil_getScreenWidth, ScrollController_ctor;
dynamic ScrollController_dispose;
dynamic Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_add;
dynamic Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_get_iterator;
dynamic Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_remove;
dynamic StackOverflowSharedWithFpuRegsStub_0x61faa8;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_op_add, THR;
dynamic TabController_animateTo, TabController_ctor, TabController_dispose;
dynamic TickerMode_getNotifier, Ticker_get_shouldScheduleTick, Ticker_muted_assign;
dynamic Ticker_scheduleTick, Ticker_unscheduleTick, WriteBarrierStub_x1, WriteBarrierStub_x2;
dynamic WriteBarrierStub_x3, d0, d1, d2, getString, local_0, local_10, local_18, local_20;
dynamic local_28, local_8, local_m10, local_m18, local_m20, local_m28, local_m30, local_m38;
dynamic local_m40, local_m48, local_m50, local_m58, local_m60, local_m68, local_m70, local_m78;
dynamic local_m8, q0, q2, sub_0x3a1d94, sub_0x61d99c, sub_0x61e890, sub_0x61f920, v0_16b;
dynamic v1_16b, w0, w1, w16, w17, w2, w22, w3, w4, w5, w6, w7, wzr, x0, x1, x16, x17, x2, x21;
dynamic x3, x4, x5, x6, x7, x8, x9, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$pkGame$page_game_tab_bet_record
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PagePKGameBetTabRecordState_State_TickerProviderStateMixin_removeTicker
// raw disassembly:
//  0x2b19cc: stp FP, LR, [SP, #-0x10]!
//  0x2b19d0: mov FP, SP
//  0x2b19d4: ldr BARRIER, [THR, #0x38]
//  0x2b19d8: cmp SP, BARRIER
//  0x2b19dc: b.ls #0x2b1a08
//  0x2b19e0: ldur w0, [x1, #0x13]
//  0x2b19e4: add x0, x0, HEAP, lsl #32
//  0x2b19e8: cmp w0, w22
//  0x2b19ec: b.eq #0x2b1a10
//  0x2b19f0: mov x1, x0
//  0x2b19f4: bl #0x614948
//  0x2b19f8: mov x0, NULL
//  0x2b19fc: mov SP, FP
//  0x2b1a00: ldp FP, LR, [SP], #0x10
//  0x2b1a04: ret 
//  0x2b1a08: bl #0x61fa28
//  0x2b1a0c: b #0x2b19e0
//  0x2b1a10: bl #0x61ffd0
//
dynamic PagePKGameBetTabRecordState_State_TickerProviderStateMixin_removeTicker() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x2b19cc
  BARRIER = mem(THR, 0x38); // 0x2b19d4
  // frame: FP = SP // 0x2b19d0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2b1a08
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x2b19e4
  if (w0 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2b1a10
  }
  x1 = x0; // 0x2b19f0
  Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_remove() /* 0x614948 */; // 0x2b19f4
  SP = FP; // 0x2b19fc
  x0 = NULL; // 0x2b19f8
  // frame: FP, LR, mem(SP), 0x10 // 0x2b1a00
  return;
}

// PagePKGameBetTabRecordState_State_TickerProviderStateMixin_createTicker
// raw disassembly:
//  0x2d55c4: stp FP, LR, [SP, #-0x10]!
//  0x2d55c8: mov FP, SP
//  0x2d55cc: sub SP, SP, #0x20
//  0x2d55d0: mov x0, x1
//  0x2d55d4: stur x1, [FP, #-8]
//  0x2d55d8: stur x2, [FP, #-0x10]
//  0x2d55dc: ldr BARRIER, [THR, #0x38]
//  0x2d55e0: cmp SP, BARRIER
//  0x2d55e4: b.ls #0x2d5730
//  0x2d55e8: ldur w1, [x0, #0x17]
//  0x2d55ec: add x1, x1, HEAP, lsl #32
//  0x2d55f0: cmp w1, w22
//  0x2d55f4: b.ne #0x2d5600
//  0x2d55f8: mov x1, x0
//  0x2d55fc: bl #0x2d5740
//  0x2d5600: ldur x0, [FP, #-8]
//  0x2d5604: ldur w1, [x0, #0x13]
//  0x2d5608: add x1, x1, HEAP, lsl #32
//  0x2d560c: cmp w1, w22
//  0x2d5610: b.ne #0x2d56a8
//  0x2d5614: ldr x0, [THR, #0x68]
//  0x2d5618: ldr x0, [x0, #0x6e8]
//  0x2d561c: ldr BARRIER, [PP, #0x40]
//  0x2d5620: cmp w0, w16
//  0x2d5624: b.ne #0x2d5630
//  0x2d5628: ldr x2, [PP, #0xbf8]
//  0x2d562c: bl #0x61d99c
//  0x2d5630: add x1, PP, #0xe, lsl #12
//  0x2d5634: ldr x1, [x1, #0xe98]
//  0x2d5638: stur x0, [FP, #-0x18]
//  0x2d563c: bl #0x2a5de4
//  0x2d5640: mov x1, x0
//  0x2d5644: ldur x0, [FP, #-0x18]
//  0x2d5648: stur x1, [FP, #-0x20]
//  0x2d564c: stur w0, [x1, #0x1b]
//  0x2d5650: stur wzr, [x1, #0xb]
//  0x2d5654: ldr x0, [THR, #0x68]
//  0x2d5658: ldr x0, [x0, #0x6f0]
//  0x2d565c: ldr BARRIER, [PP, #0x40]
//  0x2d5660: cmp w0, w16
//  0x2d5664: b.ne #0x2d5670
//  0x2d5668: ldr x2, [PP, #0xc00]
//  0x2d566c: bl #0x61d99c
//  0x2d5670: mov x1, x0
//  0x2d5674: ldur x0, [FP, #-0x20]
//  0x2d5678: stur w1, [x0, #0xf]
//  0x2d567c: stur wzr, [x0, #0x13]
//  0x2d5680: stur wzr, [x0, #0x17]
//  0x2d5684: ldur x1, [FP, #-8]
//  0x2d5688: stur w0, [x1, #0x13]
//  0x2d568c: ldurb w16, [x1, #-1]
//  0x2d5690: ldurb w17, [x0, #-1]
//  0x2d5694: and BARRIER, x17, BARRIER, lsr #2
//  0x2d5698: tst BARRIER, HEAP, lsr #32
//  0x2d569c: b.eq #0x2d56a4
//  0x2d56a0: bl #0x61e04c
//  0x2d56a4: b #0x2d56ac
//  0x2d56a8: mov x1, x0
//  0x2d56ac: ldur x0, [FP, #-0x10]
//  0x2d56b0: bl #0x2cf960
//  0x2d56b4: mov x3, x0
//  0x2d56b8: ldur x2, [FP, #-8]
//  0x2d56bc: stur x3, [FP, #-0x18]
//  0x2d56c0: stur w2, [x3, #0x1b]
//  0x2d56c4: add x0, NULL, #0x30
//  0x2d56c8: stur w0, [x3, #0xb]
//  0x2d56cc: ldur x0, [FP, #-0x10]
//  0x2d56d0: stur w0, [x3, #0x13]
//  0x2d56d4: ldur w1, [x2, #0x17]
//  0x2d56d8: add x1, x1, HEAP, lsl #32
//  0x2d56dc: cmp w1, w22
//  0x2d56e0: b.eq #0x2d5738
//  0x2d56e4: ldur x0, [x1, #-1]
//  0x2d56e8: ubfx x0, x0, #0xc, #0x14
//  0x2d56ec: sub LR, x0, #0xfff
//  0x2d56f0: ldr LR, [x21, LR, lsl #3]
//  0x2d56f4: blr LR
//  0x2d56f8: eor x2, x0, #0x10
//  0x2d56fc: ldur x1, [FP, #-0x18]
//  0x2d5700: bl #0x2cf190
//  0x2d5704: ldur x0, [FP, #-8]
//  0x2d5708: ldur w1, [x0, #0x13]
//  0x2d570c: add x1, x1, HEAP, lsl #32
//  0x2d5710: cmp w1, w22
//  0x2d5714: b.eq #0x2d573c
//  0x2d5718: ldur x2, [FP, #-0x18]
//  0x2d571c: bl #0x611d50
//  0x2d5720: ldur x0, [FP, #-0x18]
//  0x2d5724: mov SP, FP
//  0x2d5728: ldp FP, LR, [SP], #0x10
//  0x2d572c: ret 
//  0x2d5730: bl #0x61fa28
//  0x2d5734: b #0x2d55e8
//  0x2d5738: bl #0x61ffd0
//  0x2d573c: bl #0x61ffd0
//
dynamic PagePKGameBetTabRecordState_State_TickerProviderStateMixin_createTicker() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x2d55c4
  // frame: FP = SP // 0x2d55c8
  // frame: SP = SP - 0x20 // 0x2d55cc
  x0 = x1; // 0x2d55d0
  local_m8 = x1; // 0x2d55d4
  local_m10 = x2; // 0x2d55d8
  BARRIER = mem(THR, 0x38); // 0x2d55dc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2d5730
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x2d55ec
  if (w1 != w22) {
  } else {
    x1 = x0; // 0x2d55f8
    PagePKGameBetTabRecordState_State_TickerProviderStateMixin_updateTickerModeNotifier() /* 0x2d5740 */; // 0x2d55fc
  }
  w1 = mem((local_m8), 0x13); // 0x2d5604
  x0 = local_m8; // 0x2d5600
  x1 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x2d5608
  if (w1 != w22) {
    x1 = x0; // 0x2d56a8
  } else {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x2d561c
    x0 = mem((mem(THR, 0x68)), 0x6e8); // 0x2d5618
    if (w0 != w16) {
    } else {
      x2 = mem(PP, 0xbf8) /* Field */; // 0x2d5628
      sub_0x61d99c(); // 0x2d562c
    }
    x1 = mem((PP + 0xe000), 0xe98) /* TypeArguments */; // 0x2d5634
    local_m18 = x0; // 0x2d5638
    AllocationStub__Set() /* 0x2a5de4 */; // 0x2d563c
    x0 = local_m18; // 0x2d5644
    x1 = x0; // 0x2d5640
    local_m20 = x1; // 0x2d5648
    memSet(x1, 0x1b, w0); // 0x2d564c
    memSet(x1, 0xb, wzr); // 0x2d5650
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x2d565c
    x0 = mem((mem(THR, 0x68)), 0x6f0); // 0x2d5658
    if (w0 != w16) {
    } else {
      x2 = mem(PP, 0xc00) /* Field */; // 0x2d5668
      sub_0x61d99c(); // 0x2d566c
    }
    x0 = local_m20; // 0x2d5674
    x1 = x0; // 0x2d5670
    memSet(x0, 0xf, w1); // 0x2d5678
    memSet(x0, 0x13, wzr); // 0x2d567c
    memSet(x0, 0x17, wzr); // 0x2d5680
    x1 = local_m8; // 0x2d5684
    memSet(x1, 0x13, w0); // 0x2d5688
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x2d5694
    w16 = mem(x1, -1); // 0x2d568c
    w17 = mem(x0, -1); // 0x2d5690
    x16 = (mem(x1, -1)) & 0xffffffff; // 0x2d568c
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x2d5690
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x1() /* 0x61e04c */; // 0x2d56a0
    }
  }
  x0 = local_m10; // 0x2d56ac
  AllocationStub__WidgetTicker() /* 0x2cf960 */; // 0x2d56b0
  x2 = local_m8; // 0x2d56b8
  x3 = x0; // 0x2d56b4
  local_m18 = x3; // 0x2d56bc
  memSet(x3, 0x1b, w2); // 0x2d56c0
  x0 = NULL + 0x30; // 0x2d56c4
  memSet(x3, 0xb, w0); // 0x2d56c8
  x0 = local_m10; // 0x2d56cc
  memSet(x3, 0x13, w0); // 0x2d56d0
  w1 = mem(x2, 0x17); // 0x2d56d4
  x1 = ((mem(x2, 0x17)) & 0xffffffff) + (HEAP << 32); // 0x2d56d8
  if (w1 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2d5738
  } else {
    LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0xfff) << 3)); // 0x2d56f0
    x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x2d56e8
    callIndirect(LR); // 0x2d56f4
    x1 = local_m18; // 0x2d56fc
    x2 = x0 ^ 0x10; // 0x2d56f8
    Ticker_muted_assign() /* 0x2cf190 */; // 0x2d5700
    w1 = mem((local_m8), 0x13); // 0x2d5708
    x0 = local_m8; // 0x2d5704
    x1 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x2d570c
    if (w1 != w22) {
      x2 = local_m18; // 0x2d5718
      Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_add() /* 0x611d50 */; // 0x2d571c
      SP = FP; // 0x2d5724
      x0 = local_m18; // 0x2d5720
      // frame: FP, LR, mem(SP), 0x10 // 0x2d5728
      return;
    }
  }
  NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2d573c
}

// PagePKGameBetTabRecordState_State_TickerProviderStateMixin_updateTickerModeNotifier
// raw disassembly:
//  0x2d5740: stp FP, LR, [SP, #-0x10]!
//  0x2d5744: mov FP, SP
//  0x2d5748: sub SP, SP, #0x18
//  0x2d574c: mov x2, x1
//  0x2d5750: stur x1, [FP, #-8]
//  0x2d5754: ldr BARRIER, [THR, #0x38]
//  0x2d5758: cmp SP, BARRIER
//  0x2d575c: b.ls #0x2d5850
//  0x2d5760: ldur w1, [x2, #0xf]
//  0x2d5764: add x1, x1, HEAP, lsl #32
//  0x2d5768: cmp w1, w22
//  0x2d576c: b.eq #0x2d5858
//  0x2d5770: bl #0x2cf6f0
//  0x2d5774: mov x3, x0
//  0x2d5778: ldur x0, [FP, #-8]
//  0x2d577c: stur x3, [FP, #-0x18]
//  0x2d5780: ldur w4, [x0, #0x17]
//  0x2d5784: add x4, x4, HEAP, lsl #32
//  0x2d5788: stur x4, [FP, #-0x10]
//  0x2d578c: cmp w3, w4
//  0x2d5790: b.ne #0x2d57a4
//  0x2d5794: mov x0, NULL
//  0x2d5798: mov SP, FP
//  0x2d579c: ldp FP, LR, [SP], #0x10
//  0x2d57a0: ret 
//  0x2d57a4: cmp w4, w22
//  0x2d57a8: b.eq #0x2d57e8
//  0x2d57ac: mov x2, x0
//  0x2d57b0: add x1, PP, #0xe, lsl #12
//  0x2d57b4: ldr x1, [x1, #0xe90]
//  0x2d57b8: bl #0x61ec54
//  0x2d57bc: ldur x1, [FP, #-0x10]
//  0x2d57c0: ldur x2, [x1, #-1]
//  0x2d57c4: ubfx x2, x2, #0xc, #0x14
//  0x2d57c8: mov BARRIER, x0
//  0x2d57cc: mov x0, x2
//  0x2d57d0: mov x2, BARRIER
//  0x2d57d4: add LR, x0, #0xd6f
//  0x2d57d8: ldr LR, [x21, LR, lsl #3]
//  0x2d57dc: blr LR
//  0x2d57e0: ldur x0, [FP, #-8]
//  0x2d57e4: ldur x3, [FP, #-0x18]
//  0x2d57e8: mov x2, x0
//  0x2d57ec: add x1, PP, #0xe, lsl #12
//  0x2d57f0: ldr x1, [x1, #0xe90]
//  0x2d57f4: bl #0x61ec54
//  0x2d57f8: ldur x3, [FP, #-0x18]
//  0x2d57fc: ldur x1, [x3, #-1]
//  0x2d5800: ubfx x1, x1, #0xc, #0x14
//  0x2d5804: mov x2, x0
//  0x2d5808: mov x0, x1
//  0x2d580c: mov x1, x3
//  0x2d5810: add LR, x0, #0xdbb
//  0x2d5814: ldr LR, [x21, LR, lsl #3]
//  0x2d5818: blr LR
//  0x2d581c: ldur x0, [FP, #-0x18]
//  0x2d5820: ldur x1, [FP, #-8]
//  0x2d5824: stur w0, [x1, #0x17]
//  0x2d5828: ldurb w16, [x1, #-1]
//  0x2d582c: ldurb w17, [x0, #-1]
//  0x2d5830: and BARRIER, x17, BARRIER, lsr #2
//  0x2d5834: tst BARRIER, HEAP, lsr #32
//  0x2d5838: b.eq #0x2d5840
//  0x2d583c: bl #0x61e04c
//  0x2d5840: mov x0, NULL
//  0x2d5844: mov SP, FP
//  0x2d5848: ldp FP, LR, [SP], #0x10
//  0x2d584c: ret 
//  0x2d5850: bl #0x61fa28
//  0x2d5854: b #0x2d5760
//  0x2d5858: bl #0x61ffd0
//
dynamic PagePKGameBetTabRecordState_State_TickerProviderStateMixin_updateTickerModeNotifier() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x2d5740
  // frame: FP = SP // 0x2d5744
  // frame: SP = SP - 0x18 // 0x2d5748
  x2 = x1; // 0x2d574c
  local_m8 = x1; // 0x2d5750
  BARRIER = mem(THR, 0x38); // 0x2d5754
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2d5850
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x2d5764
  if (w1 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2d5858
  }
  TickerMode_getNotifier() /* 0x2cf6f0 */; // 0x2d5770
  x0 = local_m8; // 0x2d5778
  x3 = x0; // 0x2d5774
  local_m18 = x3; // 0x2d577c
  w4 = mem(x0, 0x17); // 0x2d5780
  x4 = ((mem(x0, 0x17)) & 0xffffffff) + (HEAP << 32); // 0x2d5784
  local_m10 = x4; // 0x2d5788
  if (w3 == w4) {
    SP = FP; // 0x2d5798
    x0 = NULL; // 0x2d5794
    // frame: FP, LR, mem(SP), 0x10 // 0x2d579c
    return;
  }
  if (w4 == w22) {
  } else {
    x1 = mem((PP + 0xe000), 0xe90) /* Function */; // 0x2d57b4
    x2 = x0; // 0x2d57ac
    AllocationStub__Closure() /* 0x61ec54 */; // 0x2d57b8
    BARRIER = x0; // 0x2d57c8
    x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x2d57cc
    x1 = local_m10; // 0x2d57bc
    x2 = x0; // 0x2d57d0
    LR = mem(x21, ((x0 + 0xd6f) << 3)); // 0x2d57d8
    callIndirect(LR); // 0x2d57dc
    x0 = local_m8; // 0x2d57e0
    x3 = local_m18; // 0x2d57e4
  }
  x1 = mem((PP + 0xe000), 0xe90) /* Function */; // 0x2d57f0
  x2 = x0; // 0x2d57e8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x2d57f4
  x0 = ((mem((local_m18), -1)) >> 12) & 0xfffff; // 0x2d5808
  x1 = local_m18; // 0x2d580c
  x2 = x0; // 0x2d5804
  x3 = local_m18; // 0x2d57f8
  LR = mem(x21, ((x0 + 0xdbb) << 3)); // 0x2d5814
  callIndirect(LR); // 0x2d5818
  x0 = local_m18; // 0x2d581c
  x1 = local_m8; // 0x2d5820
  memSet(x1, 0x17, w0); // 0x2d5824
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x2d5830
  w16 = mem(x1, -1); // 0x2d5828
  w17 = mem(x0, -1); // 0x2d582c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x2d5828
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x2d582c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x2d583c
  }
  SP = FP; // 0x2d5844
  x0 = NULL; // 0x2d5840
  // frame: FP, LR, mem(SP), 0x10 // 0x2d5848
  return;
}

// PagePKGameBetTabRecordState_State_TickerProviderStateMixin_updateTickers
// raw disassembly:
//  0x2d585c: stp FP, LR, [SP, #-0x10]!
//  0x2d5860: mov FP, SP
//  0x2d5864: ldr x0, [FP, #0x10]
//  0x2d5868: ldur w1, [x0, #0x17]
//  0x2d586c: add x1, x1, HEAP, lsl #32
//  0x2d5870: ldr BARRIER, [THR, #0x38]
//  0x2d5874: cmp SP, BARRIER
//  0x2d5878: b.ls #0x2d588c
//  0x2d587c: bl #0x2d5894
//  0x2d5880: mov SP, FP
//  0x2d5884: ldp FP, LR, [SP], #0x10
//  0x2d5888: ret 
//  0x2d588c: bl #0x61fa28
//  0x2d5890: b #0x2d587c
//
dynamic PagePKGameBetTabRecordState_State_TickerProviderStateMixin_updateTickers() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x2d585c
  BARRIER = mem(THR, 0x38); // 0x2d5870
  // frame: FP = SP // 0x2d5860
  w1 = mem((local_10), 0x17); // 0x2d5868
  x0 = local_10; // 0x2d5864
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x2d586c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2d588c
  }
  PagePKGameBetTabRecordState_State_TickerProviderStateMixin_updateTickers() /* 0x2d5894 */; // 0x2d587c
  SP = FP; // 0x2d5880
  // frame: FP, LR, mem(SP), 0x10 // 0x2d5884
  return;
}

// PagePKGameBetTabRecordState_State_TickerProviderStateMixin_updateTickers_2
// raw disassembly:
//  0x2d5894: stp FP, LR, [SP, #-0x10]!
//  0x2d5898: mov FP, SP
//  0x2d589c: sub SP, SP, #0x20
//  0x2d58a0: mov x2, x1
//  0x2d58a4: stur x1, [FP, #-8]
//  0x2d58a8: ldr BARRIER, [THR, #0x38]
//  0x2d58ac: cmp SP, BARRIER
//  0x2d58b0: b.ls #0x2d59d8
//  0x2d58b4: ldur w0, [x2, #0x13]
//  0x2d58b8: add x0, x0, HEAP, lsl #32
//  0x2d58bc: cmp w0, w22
//  0x2d58c0: b.eq #0x2d59c8
//  0x2d58c4: ldur w1, [x2, #0x17]
//  0x2d58c8: add x1, x1, HEAP, lsl #32
//  0x2d58cc: cmp w1, w22
//  0x2d58d0: b.eq #0x2d59e0
//  0x2d58d4: ldur x0, [x1, #-1]
//  0x2d58d8: ubfx x0, x0, #0xc, #0x14
//  0x2d58dc: sub LR, x0, #0xfff
//  0x2d58e0: ldr LR, [x21, LR, lsl #3]
//  0x2d58e4: blr LR
//  0x2d58e8: eor x2, x0, #0x10
//  0x2d58ec: ldur x0, [FP, #-8]
//  0x2d58f0: stur x2, [FP, #-0x10]
//  0x2d58f4: ldur w1, [x0, #0x13]
//  0x2d58f8: add x1, x1, HEAP, lsl #32
//  0x2d58fc: cmp w1, w22
//  0x2d5900: b.eq #0x2d59e4
//  0x2d5904: bl #0x54bba4
//  0x2d5908: stur x0, [FP, #-0x18]
//  0x2d590c: ldur w2, [x0, #7]
//  0x2d5910: add x2, x2, HEAP, lsl #32
//  0x2d5914: stur x2, [FP, #-8]
//  0x2d5918: ldur x3, [FP, #-0x10]
//  0x2d591c: ldr BARRIER, [THR, #0x38]
//  0x2d5920: cmp SP, BARRIER
//  0x2d5924: b.ls #0x2d59e8
//  0x2d5928: mov x1, x0
//  0x2d592c: bl #0x594d70
//  0x2d5930: tbnz w0, #4, #0x2d59c8
//  0x2d5934: ldur x3, [FP, #-0x18]
//  0x2d5938: ldur w4, [x3, #0x33]
//  0x2d593c: add x4, x4, HEAP, lsl #32
//  0x2d5940: stur x4, [FP, #-0x20]
//  0x2d5944: cmp w4, w22
//  0x2d5948: b.ne #0x2d597c
//  0x2d594c: mov x0, x4
//  0x2d5950: ldur x2, [FP, #-8]
//  0x2d5954: mov x1, NULL
//  0x2d5958: cmp w2, w22
//  0x2d595c: b.eq #0x2d597c
//  0x2d5960: ldur w4, [x2, #0x17]
//  0x2d5964: add x4, x4, HEAP, lsl #32
//  0x2d5968: ldr x8, [PP, #0x180]
//  0x2d596c: ldur x9, [x4, #7]
//  0x2d5970: add x3, PP, #0xe, lsl #12
//  0x2d5974: ldr x3, [x3, #0xe80]
//  0x2d5978: blr x9
//  0x2d597c: ldur x2, [FP, #-0x10]
//  0x2d5980: ldur x0, [FP, #-0x20]
//  0x2d5984: ldur w1, [x0, #0xb]
//  0x2d5988: add x1, x1, HEAP, lsl #32
//  0x2d598c: cmp w2, w1
//  0x2d5990: b.eq #0x2d59bc
//  0x2d5994: stur w2, [x0, #0xb]
//  0x2d5998: tbnz w2, #4, #0x2d59a8
//  0x2d599c: mov x1, x0
//  0x2d59a0: bl #0x2cf4e0
//  0x2d59a4: b #0x2d59bc
//  0x2d59a8: mov x1, x0
//  0x2d59ac: bl #0x2cf49c
//  0x2d59b0: tbnz w0, #4, #0x2d59bc
//  0x2d59b4: ldur x1, [FP, #-0x20]
//  0x2d59b8: bl #0x2cf210
//  0x2d59bc: ldur x0, [FP, #-0x18]
//  0x2d59c0: ldur x2, [FP, #-8]
//  0x2d59c4: b #0x2d5918
//  0x2d59c8: mov x0, NULL
//  0x2d59cc: mov SP, FP
//  0x2d59d0: ldp FP, LR, [SP], #0x10
//  0x2d59d4: ret 
//  0x2d59d8: bl #0x61fa28
//  0x2d59dc: b #0x2d58b4
//  0x2d59e0: bl #0x61ffd0
//  0x2d59e4: bl #0x61ffd0
//  0x2d59e8: bl #0x61fa28
//  0x2d59ec: b #0x2d5928
//
// NOTE: control flow was not fully structured (goto kept) -- pseudocode only.
dynamic PagePKGameBetTabRecordState_State_TickerProviderStateMixin_updateTickers_2() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x2d5894
  // frame: FP = SP // 0x2d5898
  // frame: SP = SP - 0x20 // 0x2d589c
  x2 = x1; // 0x2d58a0
  local_m8 = x1; // 0x2d58a4
  BARRIER = mem(THR, 0x38); // 0x2d58a8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2d59d8
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x2d58b8
  if (w0 == w22) {
  } else {
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x2d58c8
    if (w1 == w22) {
      NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2d59e0
    } else {
      LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0xfff) << 3)); // 0x2d58e0
      x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x2d58d8
      callIndirect(LR); // 0x2d58e4
      x0 = local_m8; // 0x2d58ec
      x2 = x0 ^ 0x10; // 0x2d58e8
      local_m10 = x2; // 0x2d58f0
      w1 = mem(x0, 0x13); // 0x2d58f4
      x1 = ((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x2d58f8
      if (w1 == w22) {
        NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2d59e4
      } else {
        Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_get_iterator() /* 0x54bba4 */; // 0x2d5904
        local_m18 = x0; // 0x2d5908
        w2 = mem(x0, 7); // 0x2d590c
        x2 = ((mem(x0, 7)) & 0xffffffff) + (HEAP << 32); // 0x2d5910
        local_m8 = x2; // 0x2d5914
        BARRIER = mem(THR, 0x38); // 0x2d591c
        x3 = local_m10; // 0x2d5918
        if (SP <= BARRIER) {
          StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2d59e8
        }
        x1 = x0; // 0x2d5928
        CompactIterator_moveNext() /* 0x594d70 */; // 0x2d592c
        if (x0 & (1 << 4) != 0) {
        } else {
          w4 = mem((local_m18), 0x33); // 0x2d5938
          x3 = local_m18; // 0x2d5934
          x4 = ((mem((local_m18), 0x33)) & 0xffffffff) + (HEAP << 32); // 0x2d593c
          local_m20 = x4; // 0x2d5940
          if (w4 != w22) {
          } else {
            x0 = x4; // 0x2d594c
            x1 = NULL; // 0x2d5954
            x2 = local_m8; // 0x2d5950
            if (w2 == w22) {
            } else {
              x3 = mem((PP + 0xe000), 0xe80) /* Obj!? */; // 0x2d5974
              x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x2d5964
              x8 = mem(PP, 0x180) /* TypeParameter */; // 0x2d5968
              x9 = mem(((w4 & 0xffffffff) + (HEAP << 32)), 7); // 0x2d596c
              callIndirect(x9); // 0x2d5978
            }
          }
          w1 = mem((local_m20), 0xb); // 0x2d5984
          x0 = local_m20; // 0x2d5980
          x1 = ((mem((local_m20), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x2d5988
          x2 = local_m10; // 0x2d597c
          if (w2 == w1) {
          } else {
            memSet(x0, 0xb, w2); // 0x2d5994
            if (x2 & (1 << 4) != 0) {
              x1 = x0; // 0x2d59a8
              Ticker_get_shouldScheduleTick() /* 0x2cf49c */; // 0x2d59ac
              if (x0 & (1 << 4) != 0) {
              } else {
                x1 = local_m20; // 0x2d59b4
                Ticker_scheduleTick() /* 0x2cf210 */; // 0x2d59b8
              }
            } else {
              x1 = x0; // 0x2d599c
              Ticker_unscheduleTick() /* 0x2cf4e0 */; // 0x2d59a0
            }
          }
          x0 = local_m18; // 0x2d59bc
          x2 = local_m8; // 0x2d59c0
          gotoLabel(0x2d5918);
        }
        SP = FP; // 0x2d59cc
        x0 = NULL; // 0x2d59c8
        // frame: FP, LR, mem(SP), 0x10 // 0x2d59d0
        return;
      }
    }
  }
}

// PagePKGameBetTabRecordState_State_TickerProviderStateMixin_activate
// raw disassembly:
//  0x3e8218: stp FP, LR, [SP, #-0x10]!
//  0x3e821c: mov FP, SP
//  0x3e8220: sub SP, SP, #8
//  0x3e8224: mov x0, x1
//  0x3e8228: stur x1, [FP, #-8]
//  0x3e822c: ldr BARRIER, [THR, #0x38]
//  0x3e8230: cmp SP, BARRIER
//  0x3e8234: b.ls #0x3e8258
//  0x3e8238: mov x1, x0
//  0x3e823c: bl #0x2d5740
//  0x3e8240: ldur x1, [FP, #-8]
//  0x3e8244: bl #0x2d5894
//  0x3e8248: mov x0, NULL
//  0x3e824c: mov SP, FP
//  0x3e8250: ldp FP, LR, [SP], #0x10
//  0x3e8254: ret 
//  0x3e8258: bl #0x61fa28
//  0x3e825c: b #0x3e8238
//
dynamic PagePKGameBetTabRecordState_State_TickerProviderStateMixin_activate() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3e8218
  // frame: FP = SP // 0x3e821c
  // frame: SP = SP - 8 // 0x3e8220
  x0 = x1; // 0x3e8224
  local_m8 = x1; // 0x3e8228
  BARRIER = mem(THR, 0x38); // 0x3e822c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3e8258
  }
  x1 = x0; // 0x3e8238
  PagePKGameBetTabRecordState_State_TickerProviderStateMixin_updateTickerModeNotifier() /* 0x2d5740 */; // 0x3e823c
  x1 = local_m8; // 0x3e8240
  PagePKGameBetTabRecordState_State_TickerProviderStateMixin_updateTickers() /* 0x2d5894 */; // 0x3e8244
  SP = FP; // 0x3e824c
  x0 = NULL; // 0x3e8248
  // frame: FP, LR, mem(SP), 0x10 // 0x3e8250
  return;
}

// PagePKGameBetTabRecordState_State_TickerProviderStateMixin_dispose
// raw disassembly:
//  0x4526c4: stp FP, LR, [SP, #-0x10]!
//  0x4526c8: mov FP, SP
//  0x4526cc: sub SP, SP, #0x10
//  0x4526d0: mov x0, x1
//  0x4526d4: stur x1, [FP, #-0x10]
//  0x4526d8: ldr BARRIER, [THR, #0x38]
//  0x4526dc: cmp SP, BARRIER
//  0x4526e0: b.ls #0x45274c
//  0x4526e4: ldur w3, [x0, #0x17]
//  0x4526e8: add x3, x3, HEAP, lsl #32
//  0x4526ec: stur x3, [FP, #-8]
//  0x4526f0: cmp w3, w22
//  0x4526f4: b.ne #0x452700
//  0x4526f8: mov x1, x0
//  0x4526fc: b #0x452738
//  0x452700: mov x2, x0
//  0x452704: add x1, PP, #0xe, lsl #12
//  0x452708: ldr x1, [x1, #0xe90]
//  0x45270c: bl #0x61ec54
//  0x452710: ldur x1, [FP, #-8]
//  0x452714: ldur x2, [x1, #-1]
//  0x452718: ubfx x2, x2, #0xc, #0x14
//  0x45271c: mov BARRIER, x0
//  0x452720: mov x0, x2
//  0x452724: mov x2, BARRIER
//  0x452728: add LR, x0, #0xd6f
//  0x45272c: ldr LR, [x21, LR, lsl #3]
//  0x452730: blr LR
//  0x452734: ldur x1, [FP, #-0x10]
//  0x452738: stur w22, [x1, #0x17]
//  0x45273c: mov x0, NULL
//  0x452740: mov SP, FP
//  0x452744: ldp FP, LR, [SP], #0x10
//  0x452748: ret 
//  0x45274c: bl #0x61fa28
//  0x452750: b #0x4526e4
//
dynamic PagePKGameBetTabRecordState_State_TickerProviderStateMixin_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4526c4
  // frame: FP = SP // 0x4526c8
  // frame: SP = SP - 0x10 // 0x4526cc
  x0 = x1; // 0x4526d0
  local_m10 = x1; // 0x4526d4
  BARRIER = mem(THR, 0x38); // 0x4526d8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x45274c
  }
  x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x4526e8
  local_m8 = x3; // 0x4526ec
  if (w3 != w22) {
    x1 = mem((PP + 0xe000), 0xe90) /* Function */; // 0x452708
    x2 = x0; // 0x452700
    AllocationStub__Closure() /* 0x61ec54 */; // 0x45270c
    BARRIER = x0; // 0x45271c
    x0 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x452720
    x1 = local_m8; // 0x452710
    x2 = x0; // 0x452724
    LR = mem(x21, ((x0 + 0xd6f) << 3)); // 0x45272c
    callIndirect(LR); // 0x452730
    x1 = local_m10; // 0x452734
  } else {
    x1 = x0; // 0x4526f8
  }
  memSet(x1, 0x17, w22); // 0x452738
  SP = FP; // 0x452740
  x0 = NULL; // 0x45273c
  // frame: FP, LR, mem(SP), 0x10 // 0x452744
  return;
}

// PagePKGameBetTabRecordState_anon_closure
// raw disassembly:
//  0x3a8d00: stp FP, LR, [SP, #-0x10]!
//  0x3a8d04: mov FP, SP
//  0x3a8d08: sub SP, SP, #0x10
//  0x3a8d0c: ldr BARRIER, [THR, #0x38]
//  0x3a8d10: cmp SP, BARRIER
//  0x3a8d14: b.ls #0x3a8d38
//  0x3a8d18: bl #0x3a4c98
//  0x3a8d1c: ldr BARRIER, [PP, #0x120]
//  0x3a8d20: stp x0, BARRIER, [SP]
//  0x3a8d24: ldr x4, [PP, #0x910]
//  0x3a8d28: bl #0x3a264c
//  0x3a8d2c: mov SP, FP
//  0x3a8d30: ldp FP, LR, [SP], #0x10
//  0x3a8d34: ret 
//  0x3a8d38: bl #0x61fa28
//  0x3a8d3c: b #0x3a8d18
//
dynamic PagePKGameBetTabRecordState_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a8d00
  BARRIER = mem(THR, 0x38); // 0x3a8d0c
  // frame: FP = SP // 0x3a8d04
  // frame: SP = SP - 0x10 // 0x3a8d08
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a8d38
  }
  BoostNavigator_get_instance() /* 0x3a4c98 */; // 0x3a8d18
  BARRIER = mem(PP, 0x120) /* TypeArguments */; // 0x3a8d1c
  // frame: x0, BARRIER, mem(SP) // 0x3a8d20
  x4 = mem(PP, 0x910) /* ImmutableArray */; // 0x3a8d24
  BoostNavigator_pop() /* 0x3a264c */; // 0x3a8d28
  SP = FP; // 0x3a8d2c
  // frame: FP, LR, mem(SP), 0x10 // 0x3a8d30
  return;
}

// PagePKGameBetTabRecordState_build
// raw disassembly:
//  0x442070: stp FP, LR, [SP, #-0x10]!
//  0x442074: mov FP, SP
//  0x442078: sub SP, SP, #0x98
//  0x44207c: mov x0, x2
//  0x442080: stur x2, [FP, #-0x10]
//  0x442084: mov x2, x1
//  0x442088: stur x1, [FP, #-8]
//  0x44208c: ldr BARRIER, [THR, #0x38]
//  0x442090: cmp SP, BARRIER
//  0x442094: b.ls #0x442664
//  0x442098: mov x1, x0
//  0x44209c: bl #0x3b5484
//  0x4420a0: ldur x1, [FP, #-0x10]
//  0x4420a4: stur d0, [FP, #-0x68]
//  0x4420a8: bl #0x3a877c
//  0x4420ac: mov v1.16b, v0.16b
//  0x4420b0: add x17, PP, #0xe, lsl #12
//  0x4420b4: ldr d0, [x17, #0xea0]
//  0x4420b8: fmul d2, d1, d0
//  0x4420bc: add x17, PP, #0xe, lsl #12
//  0x4420c0: ldr d0, [x17, #0xea8]
//  0x4420c4: fdiv d1, d2, d0
//  0x4420c8: ldur d0, [FP, #-0x68]
//  0x4420cc: stur d1, [FP, #-0x78]
//  0x4420d0: fsub d2, d0, d1
//  0x4420d4: stur d2, [FP, #-0x70]
//  0x4420d8: bl #0x31d844
//  0x4420dc: mov x1, x0
//  0x4420e0: ldr x0, [PP, #0x6310]
//  0x4420e4: stur x1, [FP, #-0x18]
//  0x4420e8: stur w0, [x1, #0x27]
//  0x4420ec: ldr d0, [PP, #0x6080]
//  0x4420f0: stur d0, [x1, #7]
//  0x4420f4: stur xzr, [x1, #0xf]
//  0x4420f8: stur xzr, [x1, #0x17]
//  0x4420fc: stur xzr, [x1, #0x1f]
//  0x442100: ldur d0, [FP, #-0x70]
//  0x442104: ldp x0, x2, [THR, #0x50]
//  0x442108: add x0, x0, #0x10
//  0x44210c: cmp x2, x0
//  0x442110: b.ls #0x44266c
//  0x442114: str x0, [THR, #0x50]
//  0x442118: sub x0, x0, #0xf
//  0x44211c: mov x2, #0xe15c
//  0x442120: movk x2, #3, lsl #16
//  0x442124: stur x2, [x0, #-1]
//  0x442128: stur d0, [x0, #7]
//  0x44212c: stur x0, [FP, #-0x10]
//  0x442130: bl #0x391a04
//  0x442134: stur x0, [FP, #-0x20]
//  0x442138: ldur BARRIER, [FP, #-0x10]
//  0x44213c: add LR, PP, #0xa, lsl #12
//  0x442140: ldr LR, [LR, #0x3c0]
//  0x442144: stp LR, BARRIER, [SP]
//  0x442148: mov x1, x0
//  0x44214c: add x4, PP, #0xe, lsl #12
//  0x442150: ldr x4, [x4, #0xeb0]
//  0x442154: bl #0x391490
//  0x442158: bl #0x3a1d94
//  0x44215c: add x1, PP, #0xe, lsl #12
//  0x442160: ldr x1, [x1, #0xeb8]
//  0x442164: mov x2, NULL
//  0x442168: stur x0, [FP, #-0x28]
//  0x44216c: bl #0x61ec54
//  0x442170: ldur BARRIER, [FP, #-0x20]
//  0x442174: stp x0, BARRIER, [SP]
//  0x442178: ldur x1, [FP, #-0x28]
//  0x44217c: add x4, PP, #0xe, lsl #12
//  0x442180: ldr x4, [x4, #0xec0]
//  0x442184: bl #0x3a18c4
//  0x442188: bl #0x352b04
//  0x44218c: add x17, PP, #0xe, lsl #12
//  0x442190: ldr d0, [x17, #0xec8]
//  0x442194: stur x0, [FP, #-0x20]
//  0x442198: stur d0, [x0, #7]
//  0x44219c: stur d0, [x0, #0xf]
//  0x4421a0: bl #0x352b04
//  0x4421a4: add x17, PP, #0xe, lsl #12
//  0x4421a8: ldr d0, [x17, #0xec8]
//  0x4421ac: stur x0, [FP, #-0x30]
//  0x4421b0: stur d0, [x0, #7]
//  0x4421b4: stur d0, [x0, #0xf]
//  0x4421b8: bl #0x392f28
//  0x4421bc: mov x2, x0
//  0x4421c0: ldur x0, [FP, #-0x20]
//  0x4421c4: stur x2, [FP, #-0x38]
//  0x4421c8: stur w0, [x2, #7]
//  0x4421cc: ldur x0, [FP, #-0x30]
//  0x4421d0: stur w0, [x2, #0xb]
//  0x4421d4: add x0, PP, #0xa, lsl #12
//  0x4421d8: ldr x0, [x0, #0x510]
//  0x4421dc: stur w0, [x2, #0xf]
//  0x4421e0: stur w0, [x2, #0x13]
//  0x4421e4: add x1, PP, #0xe, lsl #12
//  0x4421e8: ldr x1, [x1, #0xed0]
//  0x4421ec: bl #0x3b5478
//  0x4421f0: mov x1, x0
//  0x4421f4: add x0, PP, #0xe, lsl #12
//  0x4421f8: ldr x0, [x0, #0xed8]
//  0x4421fc: stur x1, [FP, #-0x20]
//  0x442200: stur w0, [x1, #0xb]
//  0x442204: bl #0x3b546c
//  0x442208: mov x1, x0
//  0x44220c: ldur x0, [FP, #-0x20]
//  0x442210: stur x1, [FP, #-0x30]
//  0x442214: stur w0, [x1, #7]
//  0x442218: add x0, PP, #0xe, lsl #12
//  0x44221c: ldr x0, [x0, #0xee0]
//  0x442220: stur w0, [x1, #0x13]
//  0x442224: add x0, PP, #0xe, lsl #12
//  0x442228: ldr x0, [x0, #0xaa0]
//  0x44222c: stur w0, [x1, #0x17]
//  0x442230: add x0, PP, #0xe, lsl #12
//  0x442234: ldr x0, [x0, #0xee8]
//  0x442238: stur w0, [x1, #0x1f]
//  0x44223c: add x0, NULL, #0x30
//  0x442240: stur w0, [x1, #0x23]
//  0x442244: fmov d0, #1.00000000
//  0x442248: stur d0, [x1, #0x27]
//  0x44224c: stur d0, [x1, #0x2f]
//  0x442250: add x2, PP, #0xe, lsl #12
//  0x442254: ldr x2, [x2, #0xef0]
//  0x442258: stur w2, [x1, #0x37]
//  0x44225c: stur w0, [x1, #0x3b]
//  0x442260: stur w0, [x1, #0x3f]
//  0x442264: bl #0x391dd8
//  0x442268: mov x1, x0
//  0x44226c: ldur x0, [FP, #-0x30]
//  0x442270: stur x1, [FP, #-0x20]
//  0x442274: stur w0, [x1, #0xb]
//  0x442278: add x0, PP, #0xe, lsl #12
//  0x44227c: ldr x0, [x0, #0xb78]
//  0x442280: stur w0, [x1, #0x23]
//  0x442284: bl #0x442954
//  0x442288: mov x3, x0
//  0x44228c: ldur x0, [FP, #-8]
//  0x442290: stur x3, [FP, #-0x48]
//  0x442294: ldur w4, [x0, #0x1b]
//  0x442298: add x4, x4, HEAP, lsl #32
//  0x44229c: ldr BARRIER, [PP, #0x40]
//  0x4422a0: cmp w4, w16
//  0x4422a4: b.eq #0x442684
//  0x4422a8: stur x4, [FP, #-0x40]
//  0x4422ac: ldur w5, [x0, #0x23]
//  0x4422b0: add x5, x5, HEAP, lsl #32
//  0x4422b4: mov x2, x0
//  0x4422b8: stur x5, [FP, #-0x30]
//  0x4422bc: add x1, PP, #0xe, lsl #12
//  0x4422c0: ldr x1, [x1, #0xef8]
//  0x4422c4: bl #0x61ec54
//  0x4422c8: mov x1, x0
//  0x4422cc: ldur x2, [FP, #-0x40]
//  0x4422d0: ldur x3, [FP, #-0x30]
//  0x4422d4: add x17, PP, #0xe, lsl #12
//  0x4422d8: ldr d0, [x17, #0xec8]
//  0x4422dc: bl #0x4426d0
//  0x4422e0: mov x1, NULL
//  0x4422e4: mov x2, #4
//  0x4422e8: stur x0, [FP, #-0x40]
//  0x4422ec: bl #0x61f920
//  0x4422f0: mov x2, x0
//  0x4422f4: ldur x0, [FP, #-0x48]
//  0x4422f8: stur x2, [FP, #-0x50]
//  0x4422fc: stur w0, [x2, #0xf]
//  0x442300: ldur x0, [FP, #-0x40]
//  0x442304: stur w0, [x2, #0x13]
//  0x442308: ldr x1, [PP, #0x5c58]
//  0x44230c: bl #0x61e854
//  0x442310: mov x1, x0
//  0x442314: ldur x0, [FP, #-0x50]
//  0x442318: stur x1, [FP, #-0x40]
//  0x44231c: stur w0, [x1, #0xf]
//  0x442320: mov x2, #4
//  0x442324: stur w2, [x1, #0xb]
//  0x442328: bl #0x39e6f4
//  0x44232c: mov x1, x0
//  0x442330: add x0, PP, #0xe, lsl #12
//  0x442334: ldr x0, [x0, #0xf00]
//  0x442338: stur x1, [FP, #-0x48]
//  0x44233c: stur w0, [x1, #0xf]
//  0x442340: add x0, PP, #0xe, lsl #12
//  0x442344: ldr x0, [x0, #0xf08]
//  0x442348: stur w0, [x1, #0x17]
//  0x44234c: add x0, PP, #0xe, lsl #12
//  0x442350: ldr x0, [x0, #0xf10]
//  0x442354: stur w0, [x1, #0x1b]
//  0x442358: ldur x0, [FP, #-0x40]
//  0x44235c: stur w0, [x1, #0xb]
//  0x442360: bl #0x43d680
//  0x442364: mov x3, x0
//  0x442368: add x0, PP, #0xe, lsl #12
//  0x44236c: ldr x0, [x0, #0xf18]
//  0x442370: stur x3, [FP, #-0x50]
//  0x442374: stur w0, [x3, #0xb]
//  0x442378: ldur x2, [FP, #-8]
//  0x44237c: ldur w0, [x2, #0x1f]
//  0x442380: add x0, x0, HEAP, lsl #32
//  0x442384: ldr BARRIER, [PP, #0x40]
//  0x442388: cmp w0, w16
//  0x44238c: b.eq #0x442690
//  0x442390: ldur x1, [FP, #-0x30]
//  0x442394: stur x0, [FP, #-0x40]
//  0x442398: ldur w4, [x1, #0xb]
//  0x44239c: sbfx x5, x4, #1, #0x1f
//  0x4423a0: stur x5, [FP, #-0x58]
//  0x4423a4: add x1, PP, #0xe, lsl #12
//  0x4423a8: ldr x1, [x1, #0xf20]
//  0x4423ac: bl #0x61ec54
//  0x4423b0: add x1, PP, #0xe, lsl #12
//  0x4423b4: ldr x1, [x1, #0xf28]
//  0x4423b8: mov x2, NULL
//  0x4423bc: stur x0, [FP, #-8]
//  0x4423c0: bl #0x61ec54
//  0x4423c4: stur x0, [FP, #-0x30]
//  0x4423c8: bl #0x400664
//  0x4423cc: stur x0, [FP, #-0x60]
//  0x4423d0: ldur BARRIER, [FP, #-0x50]
//  0x4423d4: str BARRIER, [SP]
//  0x4423d8: mov x1, x0
//  0x4423dc: ldur x2, [FP, #-0x40]
//  0x4423e0: ldur x3, [FP, #-0x30]
//  0x4423e4: ldur x5, [FP, #-0x58]
//  0x4423e8: ldur x6, [FP, #-8]
//  0x4423ec: add x4, PP, #0xe, lsl #12
//  0x4423f0: ldr x4, [x4, #0xf30]
//  0x4423f4: bl #0x420bbc
//  0x4423f8: add x1, PP, #0xe, lsl #12
//  0x4423fc: ldr x1, [x1, #0xad0]
//  0x442400: bl #0x39fb14
//  0x442404: mov x3, x0
//  0x442408: mov x0, #1
//  0x44240c: stur x3, [FP, #-8]
//  0x442410: stur x0, [x3, #0x13]
//  0x442414: add x4, PP, #0xe, lsl #12
//  0x442418: ldr x4, [x4, #0xad8]
//  0x44241c: stur w4, [x3, #0x1b]
//  0x442420: ldur x1, [FP, #-0x60]
//  0x442424: stur w1, [x3, #0xb]
//  0x442428: mov x1, NULL
//  0x44242c: mov x2, #4
//  0x442430: bl #0x61f920
//  0x442434: mov x2, x0
//  0x442438: ldur x0, [FP, #-0x48]
//  0x44243c: stur x2, [FP, #-0x30]
//  0x442440: stur w0, [x2, #0xf]
//  0x442444: ldur x0, [FP, #-8]
//  0x442448: stur w0, [x2, #0x13]
//  0x44244c: ldr x1, [PP, #0x5c58]
//  0x442450: bl #0x61e854
//  0x442454: mov x1, x0
//  0x442458: ldur x0, [FP, #-0x30]
//  0x44245c: stur x1, [FP, #-8]
//  0x442460: stur w0, [x1, #0xf]
//  0x442464: mov x2, #4
//  0x442468: stur w2, [x1, #0xb]
//  0x44246c: bl #0x39310c
//  0x442470: mov x1, x0
//  0x442474: add x0, PP, #0xa, lsl #12
//  0x442478: ldr x0, [x0, #0x858]
//  0x44247c: stur x1, [FP, #-0x30]
//  0x442480: stur w0, [x1, #0xf]
//  0x442484: add x2, PP, #0xe, lsl #12
//  0x442488: ldr x2, [x2, #0xae0]
//  0x44248c: stur w2, [x1, #0x13]
//  0x442490: add x3, PP, #0xe, lsl #12
//  0x442494: ldr x3, [x3, #0xae8]
//  0x442498: stur w3, [x1, #0x17]
//  0x44249c: add x4, PP, #0xe, lsl #12
//  0x4424a0: ldr x4, [x4, #0xb60]
//  0x4424a4: stur w4, [x1, #0x1b]
//  0x4424a8: add x5, PP, #0xe, lsl #12
//  0x4424ac: ldr x5, [x5, #0xaf8]
//  0x4424b0: stur w5, [x1, #0x23]
//  0x4424b4: add x6, PP, #0xa, lsl #12
//  0x4424b8: ldr x6, [x6, #0xa8]
//  0x4424bc: stur w6, [x1, #0x2b]
//  0x4424c0: stur xzr, [x1, #0x2f]
//  0x4424c4: ldur x7, [FP, #-8]
//  0x4424c8: stur w7, [x1, #0xb]
//  0x4424cc: ldur d0, [FP, #-0x78]
//  0x4424d0: ldp x7, x8, [THR, #0x50]
//  0x4424d4: add x7, x7, #0x10
//  0x4424d8: cmp x8, x7
//  0x4424dc: b.ls #0x44269c
//  0x4424e0: str x7, [THR, #0x50]
//  0x4424e4: sub x7, x7, #0xf
//  0x4424e8: mov x8, #0xe15c
//  0x4424ec: movk x8, #3, lsl #16
//  0x4424f0: stur x8, [x7, #-1]
//  0x4424f4: stur d0, [x7, #7]
//  0x4424f8: stur x7, [FP, #-8]
//  0x4424fc: bl #0x391a04
//  0x442500: stur x0, [FP, #-0x40]
//  0x442504: ldur BARRIER, [FP, #-8]
//  0x442508: ldr LR, [PP, #0x5458]
//  0x44250c: stp LR, BARRIER, [SP, #0x10]
//  0x442510: ldur BARRIER, [FP, #-0x20]
//  0x442514: ldur LR, [FP, #-0x30]
//  0x442518: stp LR, BARRIER, [SP]
//  0x44251c: mov x1, x0
//  0x442520: add x4, PP, #0xe, lsl #12
//  0x442524: ldr x4, [x4, #0xf38]
//  0x442528: bl #0x391490
//  0x44252c: bl #0x3b378c
//  0x442530: mov x2, x0
//  0x442534: ldur x0, [FP, #-0x38]
//  0x442538: stur x2, [FP, #-8]
//  0x44253c: stur w0, [x2, #0xf]
//  0x442540: add x0, PP, #0xe, lsl #12
//  0x442544: ldr x0, [x0, #0xf40]
//  0x442548: stur w0, [x2, #0x17]
//  0x44254c: ldur x0, [FP, #-0x40]
//  0x442550: stur w0, [x2, #0xb]
//  0x442554: add x1, PP, #0xe, lsl #12
//  0x442558: ldr x1, [x1, #0xad0]
//  0x44255c: bl #0x39fb14
//  0x442560: mov x3, x0
//  0x442564: mov x0, #1
//  0x442568: stur x3, [FP, #-0x20]
//  0x44256c: stur x0, [x3, #0x13]
//  0x442570: add x0, PP, #0xe, lsl #12
//  0x442574: ldr x0, [x0, #0xad8]
//  0x442578: stur w0, [x3, #0x1b]
//  0x44257c: ldur x0, [FP, #-8]
//  0x442580: stur w0, [x3, #0xb]
//  0x442584: mov x1, NULL
//  0x442588: mov x2, #4
//  0x44258c: bl #0x61f920
//  0x442590: mov x2, x0
//  0x442594: ldur x0, [FP, #-0x28]
//  0x442598: stur x2, [FP, #-8]
//  0x44259c: stur w0, [x2, #0xf]
//  0x4425a0: ldur x0, [FP, #-0x20]
//  0x4425a4: stur w0, [x2, #0x13]
//  0x4425a8: ldr x1, [PP, #0x5c58]
//  0x4425ac: bl #0x61e854
//  0x4425b0: mov x1, x0
//  0x4425b4: ldur x0, [FP, #-8]
//  0x4425b8: stur x1, [FP, #-0x20]
//  0x4425bc: stur w0, [x1, #0xf]
//  0x4425c0: mov x0, #4
//  0x4425c4: stur w0, [x1, #0xb]
//  0x4425c8: bl #0x39310c
//  0x4425cc: mov x1, x0
//  0x4425d0: add x0, PP, #0xa, lsl #12
//  0x4425d4: ldr x0, [x0, #0x858]
//  0x4425d8: stur x1, [FP, #-8]
//  0x4425dc: stur w0, [x1, #0xf]
//  0x4425e0: add x0, PP, #0xe, lsl #12
//  0x4425e4: ldr x0, [x0, #0xae0]
//  0x4425e8: stur w0, [x1, #0x13]
//  0x4425ec: add x0, PP, #0xe, lsl #12
//  0x4425f0: ldr x0, [x0, #0xae8]
//  0x4425f4: stur w0, [x1, #0x17]
//  0x4425f8: add x0, PP, #0xe, lsl #12
//  0x4425fc: ldr x0, [x0, #0xb60]
//  0x442600: stur w0, [x1, #0x1b]
//  0x442604: add x0, PP, #0xe, lsl #12
//  0x442608: ldr x0, [x0, #0xaf8]
//  0x44260c: stur w0, [x1, #0x23]
//  0x442610: add x0, PP, #0xa, lsl #12
//  0x442614: ldr x0, [x0, #0xa8]
//  0x442618: stur w0, [x1, #0x2b]
//  0x44261c: stur xzr, [x1, #0x2f]
//  0x442620: ldur x0, [FP, #-0x20]
//  0x442624: stur w0, [x1, #0xb]
//  0x442628: bl #0x391a04
//  0x44262c: stur x0, [FP, #-0x20]
//  0x442630: ldur BARRIER, [FP, #-0x18]
//  0x442634: ldur LR, [FP, #-0x10]
//  0x442638: stp LR, BARRIER, [SP, #8]
//  0x44263c: ldur BARRIER, [FP, #-8]
//  0x442640: str BARRIER, [SP]
//  0x442644: mov x1, x0
//  0x442648: add x4, PP, #0xe, lsl #12
//  0x44264c: ldr x4, [x4, #0xf48]
//  0x442650: bl #0x391490
//  0x442654: ldur x0, [FP, #-0x20]
//  0x442658: mov SP, FP
//  0x44265c: ldp FP, LR, [SP], #0x10
//  0x442660: ret 
//  0x442664: bl #0x61fa28
//  0x442668: b #0x442098
//  0x44266c: str q0, [SP, #-0x10]!
//  0x442670: str x1, [SP, #-8]!
//  0x442674: bl #0x61f878
//  0x442678: ldr x1, [SP], #8
//  0x44267c: ldr q0, [SP], #0x10
//  0x442680: b #0x442128
//  0x442684: add x9, PP, #0xe, lsl #12
//  0x442688: ldr x9, [x9, #0xf50]
//  0x44268c: bl #0x620258
//  0x442690: add x9, PP, #0xe, lsl #12
//  0x442694: ldr x9, [x9, #0xf58]
//  0x442698: bl #0x620258
//  0x44269c: str q0, [SP, #-0x10]!
//  0x4426a0: stp x5, x6, [SP, #-0x10]!
//  0x4426a4: stp x3, x4, [SP, #-0x10]!
//  0x4426a8: stp x1, x2, [SP, #-0x10]!
//  0x4426ac: str x0, [SP, #-8]!
//  0x4426b0: bl #0x61f878
//  0x4426b4: mov x7, x0
//  0x4426b8: ldr x0, [SP], #8
//  0x4426bc: ldp x1, x2, [SP], #0x10
//  0x4426c0: ldp x3, x4, [SP], #0x10
//  0x4426c4: ldp x5, x6, [SP], #0x10
//  0x4426c8: ldr q0, [SP], #0x10
//  0x4426cc: b #0x4424f4
//
dynamic PagePKGameBetTabRecordState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic q0;
  dynamic v1_16b;
  dynamic w0;
  dynamic w4;
  dynamic w5;
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
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x442070
  // frame: FP = SP // 0x442074
  // frame: SP = SP - 0x98 // 0x442078
  x0 = x2; // 0x44207c
  local_m10 = x2; // 0x442080
  x2 = x1; // 0x442084
  local_m8 = x1; // 0x442088
  BARRIER = mem(THR, 0x38); // 0x44208c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x442664
  }
  x1 = x0; // 0x442098
  ScreenUtil_getScreenHeight() /* 0x3b5484 */; // 0x44209c
  x1 = local_m10; // 0x4420a0
  local_m68 = d0; // 0x4420a4
  ScreenUtil_getScreenWidth() /* 0x3a877c */; // 0x4420a8
  d0 = local_m68; // 0x4420c8
  d1 = (((d1 * d0) /* float */) / d0) /* float */; // 0x4420c4
  d2 = (d1 * d0) /* float */; // 0x4420b8
  v1_16b = v0_16b; // 0x4420ac
  x17 = PP + 0xe000; // 0x4420bc
  local_m78 = d1; // 0x4420cc
  d2 = (d0 - d1) /* float */; // 0x4420d0
  local_m70 = d2; // 0x4420d4
  AllocationStub_Color() /* 0x31d844 */; // 0x4420d8
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x4420e0
  x1 = x0; // 0x4420dc
  local_m18 = x1; // 0x4420e4
  memSet(x1, 0x27, w0); // 0x4420e8
  d0 = 4603579539098121011; // 0x4420ec
  memSet(x1, 7, d0); // 0x4420f0
  memSet(x1, 0xf, xzr); // 0x4420f4
  memSet(x1, 0x17, xzr); // 0x4420f8
  memSet(x1, 0x1f, xzr); // 0x4420fc
  d0 = local_m70; // 0x442100
  memRead2(THR, 0x50, x0, x2); // 0x442104
  x0 = x0 + 0x10; // 0x442108
  if (x2 <= x0) {
    local_m10 = q0; // 0x44266c
    local_m8 = x1; // 0x442670
    AllocationStub__Double() /* 0x61f878 */; // 0x442674
    q0 = local_0; // 0x44267c
    x1 = local_0; // 0x442678
  } else {
    memSet(THR, 0x50, x0); // 0x442114
    x0 = x0 - 0xf; // 0x442118
    x2 = (x2 & 0xffff) | 0x30000; // 0x442120
    memSet(x0, -1, x2); // 0x442124
  }
  memSet(x0, 7, d0); // 0x442128
  local_m10 = x0; // 0x44212c
  AllocationStub_Container() /* 0x391a04 */; // 0x442130
  local_m20 = x0; // 0x442134
  BARRIER = local_m10; // 0x442138
  LR = mem((PP + 0xa000), 0x3c0) /* Obj!Color@120b8  */; // 0x442140
  // frame: LR, BARRIER, mem(SP) // 0x442144
  x1 = x0; // 0x442148
  x4 = mem((PP + 0xe000), 0xeb0) /* ImmutableArray */; // 0x442150
  Container_ctor() /* 0x391490 */; // 0x442154
  sub_0x3a1d94(); // 0x442158
  x1 = mem((PP + 0xe000), 0xeb8) /* Function */; // 0x442160
  x2 = NULL; // 0x442164
  local_m28 = x0; // 0x442168
  AllocationStub__Closure() /* 0x61ec54 */; // 0x44216c
  BARRIER = local_m20; // 0x442170
  // frame: x0, BARRIER, mem(SP) // 0x442174
  x1 = local_m28; // 0x442178
  x4 = mem((PP + 0xe000), 0xec0) /* ImmutableArray */; // 0x442180
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x442184
  AllocationStub_Radius() /* 0x352b04 */; // 0x442188
  d0 = 4629700416936869888; // 0x442190
  x17 = PP + 0xe000; // 0x44218c
  local_m20 = x0; // 0x442194
  memSet(x0, 7, d0); // 0x442198
  memSet(x0, 0xf, d0); // 0x44219c
  AllocationStub_Radius() /* 0x352b04 */; // 0x4421a0
  d0 = 4629700416936869888; // 0x4421a8
  x17 = PP + 0xe000; // 0x4421a4
  local_m30 = x0; // 0x4421ac
  memSet(x0, 7, d0); // 0x4421b0
  memSet(x0, 0xf, d0); // 0x4421b4
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x4421b8
  x0 = local_m20; // 0x4421c0
  x2 = x0; // 0x4421bc
  local_m38 = x2; // 0x4421c4
  memSet(x2, 7, w0); // 0x4421c8
  x0 = local_m30; // 0x4421cc
  memSet(x2, 0xb, w0); // 0x4421d0
  x0 = mem((PP + 0xa000), 0x510) /* Obj!Radius@120d9  */; // 0x4421d8
  memSet(x2, 0xf, w0); // 0x4421dc
  memSet(x2, 0x13, w0); // 0x4421e0
  x1 = mem((PP + 0xe000), 0xed0) /* TypeArguments */; // 0x4421e8
  AllocationStub_AssetImage() /* 0x3b5478 */; // 0x4421ec
  x0 = "assets/images/3.0x/game_bg_bet_normal.webp" /* pp+0xeed8 */; // 0x4421f8
  x1 = x0; // 0x4421f0
  local_m20 = x1; // 0x4421fc
  memSet(x1, 0xb, w0); // 0x442200
  AllocationStub_DecorationImage() /* 0x3b546c */; // 0x442204
  x0 = local_m20; // 0x44220c
  x1 = x0; // 0x442208
  local_m30 = x1; // 0x442210
  memSet(x1, 7, w0); // 0x442214
  x0 = mem((PP + 0xe000), 0xee0) /* Obj!BoxFit@12285  */; // 0x44221c
  memSet(x1, 0x13, w0); // 0x442220
  x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x442228
  memSet(x1, 0x17, w0); // 0x44222c
  x0 = mem((PP + 0xe000), 0xee8) /* Obj!ImageRepeat@12281  */; // 0x442234
  memSet(x1, 0x1f, w0); // 0x442238
  x0 = NULL + 0x30; // 0x44223c
  memSet(x1, 0x23, w0); // 0x442240
  d0 = 1.00000000 /* bits */; // 0x442244
  memSet(x1, 0x27, d0); // 0x442248
  memSet(x1, 0x2f, d0); // 0x44224c
  x2 = mem((PP + 0xe000), 0xef0) /* Obj!FilterQuality@12349  */; // 0x442254
  memSet(x1, 0x37, w2); // 0x442258
  memSet(x1, 0x3b, w0); // 0x44225c
  memSet(x1, 0x3f, w0); // 0x442260
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x442264
  x0 = local_m30; // 0x44226c
  x1 = x0; // 0x442268
  local_m20 = x1; // 0x442270
  memSet(x1, 0xb, w0); // 0x442274
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x44227c
  memSet(x1, 0x23, w0); // 0x442280
  backButton() /* 0x442954 */; // 0x442284
  x0 = local_m8; // 0x44228c
  x3 = x0; // 0x442288
  local_m48 = x3; // 0x442290
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x44229c
  w4 = mem(x0, 0x1b); /* _PagePKGameBetTabRecordState._controller (off 0x1c) */  // 0x442294
  x4 = ((mem(x0, 0x1b)) & 0xffffffff) + (HEAP << 32); /* _PagePKGameBetTabRecordState._controller (off 0x1c) */  // 0x442298
  if (w4 == w16) {
    x9 = mem((PP + 0xe000), 0xf50) /* Field */; // 0x442688
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x44268c
  } else {
    local_m40 = x4; // 0x4422a8
    w5 = mem(x0, 0x23); // 0x4422ac
    x2 = x0; // 0x4422b4
    x5 = ((mem(x0, 0x23)) & 0xffffffff) + (HEAP << 32); // 0x4422b0
    local_m30 = x5; // 0x4422b8
    x1 = mem((PP + 0xe000), 0xef8) /* Function */; // 0x4422c0
    AllocationStub__Closure() /* 0x61ec54 */; // 0x4422c4
    d0 = 4629700416936869888; // 0x4422d8
    x1 = x0; // 0x4422c8
    x17 = PP + 0xe000; // 0x4422d4
    x2 = local_m40; // 0x4422cc
    x3 = local_m30; // 0x4422d0
    tabBarWidget() /* 0x4426d0 */; // 0x4422dc
    x1 = NULL; // 0x4422e0
    x2 = 4; // 0x4422e4
    local_m40 = x0; // 0x4422e8
    sub_0x61f920(); // 0x4422ec
    x0 = local_m48; // 0x4422f4
    x2 = x0; // 0x4422f0
    local_m50 = x2; // 0x4422f8
    memSet(x2, 0xf, w0); // 0x4422fc
    x0 = local_m40; // 0x442300
    memSet(x2, 0x13, w0); // 0x442304
    x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x442308
    AllocationStub__GrowableList() /* 0x61e854 */; // 0x44230c
    x0 = local_m50; // 0x442314
    x1 = x0; // 0x442310
    local_m40 = x1; // 0x442318
    memSet(x1, 0xf, w0); // 0x44231c
    x2 = 4; // 0x442320
    memSet(x1, 0xb, w2); // 0x442324
    AllocationStub_Stack() /* 0x39e6f4 */; // 0x442328
    x0 = mem((PP + 0xe000), 0xf00) /* Obj!AlignmentDirectional@11bd4  */; // 0x442334
    x1 = x0; // 0x44232c
    local_m48 = x1; // 0x442338
    memSet(x1, 0xf, w0); // 0x44233c
    x0 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x442344
    memSet(x1, 0x17, w0); // 0x442348
    x0 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x442350
    memSet(x1, 0x1b, w0); // 0x442354
    x0 = local_m40; // 0x442358
    memSet(x1, 0xb, w0); // 0x44235c
    AllocationStub_BouncingScrollPhysics() /* 0x43d680 */; // 0x442360
    x0 = mem((PP + 0xe000), 0xf18) /* Obj!ScrollDecelerationRate@121b7  */; // 0x44236c
    x3 = x0; // 0x442364
    local_m50 = x3; // 0x442370
    memSet(x3, 0xb, w0); // 0x442374
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x442384
    w0 = mem((local_m8), 0x1f); /* _PagePKGameBetTabRecordState._pageController (off 0x20) */  // 0x44237c
    x0 = ((mem((local_m8), 0x1f)) & 0xffffffff) + (HEAP << 32); /* _PagePKGameBetTabRecordState._pageController (off 0x20) */  // 0x442380
    x2 = local_m8; // 0x442378
    if (w0 == w16) {
      x9 = mem((PP + 0xe000), 0xf58) /* Field */; // 0x442694
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x442698
    } else {
      x1 = local_m30; // 0x442390
      local_m40 = x0; // 0x442394
      w4 = mem(x1, 0xb); // 0x442398
      x4 = (mem(x1, 0xb)) & 0xffffffff; // 0x442398
      x5 = (((mem(x1, 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x44239c
      local_m58 = x5; // 0x4423a0
      x1 = mem((PP + 0xe000), 0xf20) /* Function */; // 0x4423a8
      AllocationStub__Closure() /* 0x61ec54 */; // 0x4423ac
      x1 = mem((PP + 0xe000), 0xf28) /* Function */; // 0x4423b4
      x2 = NULL; // 0x4423b8
      local_m8 = x0; // 0x4423bc
      AllocationStub__Closure() /* 0x61ec54 */; // 0x4423c0
      local_m30 = x0; // 0x4423c4
      AllocationStub_PageView() /* 0x400664 */; // 0x4423c8
      local_m60 = x0; // 0x4423cc
      BARRIER = local_m50; // 0x4423d0
      local_0 = BARRIER; // 0x4423d4
      x1 = x0; // 0x4423d8
      x2 = local_m40; // 0x4423dc
      x3 = local_m30; // 0x4423e0
      x4 = mem((PP + 0xe000), 0xf30) /* ImmutableArray */; // 0x4423f0
      x5 = local_m58; // 0x4423e4
      x6 = local_m8; // 0x4423e8
      PageView_ctor_builder() /* 0x420bbc */; // 0x4423f4
      x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x4423fc
      AllocationStub_Expanded() /* 0x39fb14 */; // 0x442400
      x0 = 1; // 0x442408
      x3 = x0; // 0x442404
      local_m8 = x3; // 0x44240c
      memSet(x3, 0x13, x0); // 0x442410
      x4 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x442418
      memSet(x3, 0x1b, w4); // 0x44241c
      x1 = local_m60; // 0x442420
      memSet(x3, 0xb, w1); // 0x442424
      x1 = NULL; // 0x442428
      x2 = 4; // 0x44242c
      sub_0x61f920(); // 0x442430
      x0 = local_m48; // 0x442438
      x2 = x0; // 0x442434
      local_m30 = x2; // 0x44243c
      memSet(x2, 0xf, w0); // 0x442440
      x0 = local_m8; // 0x442444
      memSet(x2, 0x13, w0); // 0x442448
      x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x44244c
      AllocationStub__GrowableList() /* 0x61e854 */; // 0x442450
      x0 = local_m30; // 0x442458
      x1 = x0; // 0x442454
      local_m8 = x1; // 0x44245c
      memSet(x1, 0xf, w0); // 0x442460
      x2 = 4; // 0x442464
      memSet(x1, 0xb, w2); // 0x442468
      AllocationStub_Column() /* 0x39310c */; // 0x44246c
      x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x442478
      x1 = x0; // 0x442470
      local_m30 = x1; // 0x44247c
      memSet(x1, 0xf, w0); // 0x442480
      x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x442488
      memSet(x1, 0x13, w2); // 0x44248c
      x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x442494
      memSet(x1, 0x17, w3); // 0x442498
      x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x4424a0
      memSet(x1, 0x1b, w4); // 0x4424a4
      x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x4424ac
      memSet(x1, 0x23, w5); // 0x4424b0
      x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x4424b8
      memSet(x1, 0x2b, w6); // 0x4424bc
      memSet(x1, 0x2f, xzr); // 0x4424c0
      x7 = local_m8; // 0x4424c4
      memSet(x1, 0xb, w7); // 0x4424c8
      d0 = local_m78; // 0x4424cc
      memRead2(THR, 0x50, x7, x8); // 0x4424d0
      x7 = x7 + 0x10; // 0x4424d4
      if (x8 <= x7) {
        local_m10 = q0; // 0x44269c
        // frame: x5, x6, mem(SP, -0x10)! // 0x4426a0
        // frame: x3, x4, mem(SP, -0x10)! // 0x4426a4
        // frame: x1, x2, mem(SP, -0x10)! // 0x4426a8
        local_m8 = x0; // 0x4426ac
        AllocationStub__Double() /* 0x61f878 */; // 0x4426b0
        x0 = local_0; // 0x4426b8
        x7 = x0; // 0x4426b4
        // frame: x1, x2, mem(SP), 0x10 // 0x4426bc
        // frame: x3, x4, mem(SP), 0x10 // 0x4426c0
        // frame: x5, x6, mem(SP), 0x10 // 0x4426c4
        q0 = local_0; // 0x4426c8
      } else {
        memSet(THR, 0x50, x7); // 0x4424e0
        x7 = x7 - 0xf; // 0x4424e4
        x8 = (x8 & 0xffff) | 0x30000; // 0x4424ec
        memSet(x7, -1, x8); // 0x4424f0
      }
      memSet(x7, 7, d0); // 0x4424f4
      local_m8 = x7; // 0x4424f8
      AllocationStub_Container() /* 0x391a04 */; // 0x4424fc
      local_m40 = x0; // 0x442500
      BARRIER = local_m8; // 0x442504
      LR = mem(PP, 0x5458) /* Double */; // 0x442508
      // frame: LR, BARRIER, mem(SP, 0x10) // 0x44250c
      BARRIER = local_m20; // 0x442510
      LR = local_m30; // 0x442514
      // frame: LR, BARRIER, mem(SP) // 0x442518
      x1 = x0; // 0x44251c
      x4 = mem((PP + 0xe000), 0xf38) /* ImmutableArray */; // 0x442524
      Container_ctor() /* 0x391490 */; // 0x442528
      AllocationStub_ClipRRect() /* 0x3b378c */; // 0x44252c
      x0 = local_m38; // 0x442534
      x2 = x0; // 0x442530
      local_m8 = x2; // 0x442538
      memSet(x2, 0xf, w0); // 0x44253c
      x0 = mem((PP + 0xe000), 0xf40) /* Obj!Clip@12344  */; // 0x442544
      memSet(x2, 0x17, w0); // 0x442548
      x0 = local_m40; // 0x44254c
      memSet(x2, 0xb, w0); // 0x442550
      x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x442558
      AllocationStub_Expanded() /* 0x39fb14 */; // 0x44255c
      x0 = 1; // 0x442564
      x3 = x0; // 0x442560
      local_m20 = x3; // 0x442568
      memSet(x3, 0x13, x0); // 0x44256c
      x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x442574
      memSet(x3, 0x1b, w0); // 0x442578
      x0 = local_m8; // 0x44257c
      memSet(x3, 0xb, w0); // 0x442580
      x1 = NULL; // 0x442584
      x2 = 4; // 0x442588
      sub_0x61f920(); // 0x44258c
      x0 = local_m28; // 0x442594
      x2 = x0; // 0x442590
      local_m8 = x2; // 0x442598
      memSet(x2, 0xf, w0); // 0x44259c
      x0 = local_m20; // 0x4425a0
      memSet(x2, 0x13, w0); // 0x4425a4
      x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x4425a8
      AllocationStub__GrowableList() /* 0x61e854 */; // 0x4425ac
      x0 = local_m8; // 0x4425b4
      x1 = x0; // 0x4425b0
      local_m20 = x1; // 0x4425b8
      memSet(x1, 0xf, w0); // 0x4425bc
      x0 = 4; // 0x4425c0
      memSet(x1, 0xb, w0); // 0x4425c4
      AllocationStub_Column() /* 0x39310c */; // 0x4425c8
      x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x4425d4
      x1 = x0; // 0x4425cc
      local_m8 = x1; // 0x4425d8
      memSet(x1, 0xf, w0); // 0x4425dc
      x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x4425e4
      memSet(x1, 0x13, w0); // 0x4425e8
      x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x4425f0
      memSet(x1, 0x17, w0); // 0x4425f4
      x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x4425fc
      memSet(x1, 0x1b, w0); // 0x442600
      x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x442608
      memSet(x1, 0x23, w0); // 0x44260c
      x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x442614
      memSet(x1, 0x2b, w0); // 0x442618
      memSet(x1, 0x2f, xzr); // 0x44261c
      x0 = local_m20; // 0x442620
      memSet(x1, 0xb, w0); // 0x442624
      AllocationStub_Container() /* 0x391a04 */; // 0x442628
      local_m20 = x0; // 0x44262c
      BARRIER = local_m18; // 0x442630
      LR = local_m10; // 0x442634
      // frame: LR, BARRIER, mem(SP, 8) // 0x442638
      BARRIER = local_m8; // 0x44263c
      local_0 = BARRIER; // 0x442640
      x1 = x0; // 0x442644
      x4 = mem((PP + 0xe000), 0xf48) /* ImmutableArray */; // 0x44264c
      Container_ctor() /* 0x391490 */; // 0x442650
      SP = FP; // 0x442658
      x0 = local_m20; // 0x442654
      // frame: FP, LR, mem(SP), 0x10 // 0x44265c
      return;
    }
  }
}

// PagePKGameBetTabRecordState_anon_closure_2
// raw disassembly:
//  0x442a4c: stp FP, LR, [SP, #-0x10]!
//  0x442a50: mov FP, SP
//  0x442a54: ldr x0, [FP, #0x10]
//  0x442a58: cbnz w0, #0x442a64
//  0x442a5c: bl #0x442aa0
//  0x442a60: b #0x442a68
//  0x442a64: bl #0x442a74
//  0x442a68: mov SP, FP
//  0x442a6c: ldp FP, LR, [SP], #0x10
//  0x442a70: ret 
//
dynamic PagePKGameBetTabRecordState_anon_closure_2() {
  dynamic FP;
  dynamic SP;
  dynamic x0;
  // frame: FP, LR, mem(SP, -0x10)! // 0x442a4c
  // frame: FP = SP // 0x442a50
  x0 = local_10; // 0x442a54
  if (w0 != 0) {
    AllocationStub_PagePKGameBetParticipateRecord() /* 0x442a74 */; // 0x442a64
  } else {
    AllocationStub_PagePKGameBetLaunchRecord() /* 0x442aa0 */; // 0x442a5c
  }
  SP = FP; // 0x442a68
  // frame: FP, LR, mem(SP), 0x10 // 0x442a6c
  return;
}

// PagePKGameBetTabRecordState_onPageChanged
// raw disassembly:
//  0x442acc: stp FP, LR, [SP, #-0x10]!
//  0x442ad0: mov FP, SP
//  0x442ad4: ldr x0, [FP, #0x18]
//  0x442ad8: ldur w1, [x0, #0x17]
//  0x442adc: add x1, x1, HEAP, lsl #32
//  0x442ae0: ldr BARRIER, [THR, #0x38]
//  0x442ae4: cmp SP, BARRIER
//  0x442ae8: b.ls #0x442b00
//  0x442aec: ldr x2, [FP, #0x10]
//  0x442af0: bl #0x442b08
//  0x442af4: mov SP, FP
//  0x442af8: ldp FP, LR, [SP], #0x10
//  0x442afc: ret 
//  0x442b00: bl #0x61fa28
//  0x442b04: b #0x442aec
//
dynamic PagePKGameBetTabRecordState_onPageChanged() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x442acc
  BARRIER = mem(THR, 0x38); // 0x442ae0
  // frame: FP = SP // 0x442ad0
  w1 = mem((local_18), 0x17); // 0x442ad8
  x0 = local_18; // 0x442ad4
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x442adc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x442b00
  }
  x2 = local_10; // 0x442aec
  PagePKGameBetTabRecordState_onPageChanged() /* 0x442b08 */; // 0x442af0
  SP = FP; // 0x442af4
  // frame: FP, LR, mem(SP), 0x10 // 0x442af8
  return;
}

// PagePKGameBetTabRecordState_onPageChanged_2
// raw disassembly:
//  0x442b08: stp FP, LR, [SP, #-0x10]!
//  0x442b0c: mov FP, SP
//  0x442b10: ldr BARRIER, [THR, #0x38]
//  0x442b14: cmp SP, BARRIER
//  0x442b18: b.ls #0x442b5c
//  0x442b1c: ldur w0, [x1, #0x1b]
//  0x442b20: add x0, x0, HEAP, lsl #32
//  0x442b24: ldr BARRIER, [PP, #0x40]
//  0x442b28: cmp w0, w16
//  0x442b2c: b.eq #0x442b64
//  0x442b30: sbfx x1, x2, #1, #0x1f
//  0x442b34: tbz w2, #0, #0x442b3c
//  0x442b38: ldur x1, [x2, #7]
//  0x442b3c: mov x2, x1
//  0x442b40: mov x1, x0
//  0x442b44: ldr x4, [PP, #0x278]
//  0x442b48: bl #0x3ff4a0
//  0x442b4c: mov x0, NULL
//  0x442b50: mov SP, FP
//  0x442b54: ldp FP, LR, [SP], #0x10
//  0x442b58: ret 
//  0x442b5c: bl #0x61fa28
//  0x442b60: b #0x442b1c
//  0x442b64: add x9, PP, #0xe, lsl #12
//  0x442b68: ldr x9, [x9, #0xf50]
//  0x442b6c: bl #0x620258
//
dynamic PagePKGameBetTabRecordState_onPageChanged_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x442b08
  BARRIER = mem(THR, 0x38); // 0x442b10
  // frame: FP = SP // 0x442b0c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x442b5c
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x442b24
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x442b20
  if (w0 == w16) {
    x9 = mem((PP + 0xe000), 0xf50) /* Field */; // 0x442b68
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x442b6c
  }
  x1 = (x2 >> 1) & 0x7fffffff; // 0x442b30
  if (x2 & (1 << 0) == 0) {
  } else {
    x1 = mem(x2, 7); // 0x442b38
  }
  x1 = x0; // 0x442b40
  x2 = x1; // 0x442b3c
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x442b44
  TabController_animateTo() /* 0x3ff4a0 */; // 0x442b48
  SP = FP; // 0x442b50
  x0 = NULL; // 0x442b4c
  // frame: FP, LR, mem(SP), 0x10 // 0x442b54
  return;
}

// PagePKGameBetTabRecordState_changeTab
// raw disassembly:
//  0x442b70: stp FP, LR, [SP, #-0x10]!
//  0x442b74: mov FP, SP
//  0x442b78: ldr x0, [FP, #0x18]
//  0x442b7c: ldur w1, [x0, #0x17]
//  0x442b80: add x1, x1, HEAP, lsl #32
//  0x442b84: ldr BARRIER, [THR, #0x38]
//  0x442b88: cmp SP, BARRIER
//  0x442b8c: b.ls #0x442ba4
//  0x442b90: ldr x2, [FP, #0x10]
//  0x442b94: bl #0x442bac
//  0x442b98: mov SP, FP
//  0x442b9c: ldp FP, LR, [SP], #0x10
//  0x442ba0: ret 
//  0x442ba4: bl #0x61fa28
//  0x442ba8: b #0x442b90
//
dynamic PagePKGameBetTabRecordState_changeTab() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x442b70
  BARRIER = mem(THR, 0x38); // 0x442b84
  // frame: FP = SP // 0x442b74
  w1 = mem((local_18), 0x17); // 0x442b7c
  x0 = local_18; // 0x442b78
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x442b80
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x442ba4
  }
  x2 = local_10; // 0x442b90
  PagePKGameBetTabRecordState_changeTab() /* 0x442bac */; // 0x442b94
  SP = FP; // 0x442b98
  // frame: FP, LR, mem(SP), 0x10 // 0x442b9c
  return;
}

// PagePKGameBetTabRecordState_changeTab_2
// raw disassembly:
//  0x442bac: stp FP, LR, [SP, #-0x10]!
//  0x442bb0: mov FP, SP
//  0x442bb4: ldr BARRIER, [THR, #0x38]
//  0x442bb8: cmp SP, BARRIER
//  0x442bbc: b.ls #0x442bfc
//  0x442bc0: ldur w0, [x1, #0x1f]
//  0x442bc4: add x0, x0, HEAP, lsl #32
//  0x442bc8: ldr BARRIER, [PP, #0x40]
//  0x442bcc: cmp w0, w16
//  0x442bd0: b.eq #0x442c04
//  0x442bd4: sbfx x1, x2, #1, #0x1f
//  0x442bd8: tbz w2, #0, #0x442be0
//  0x442bdc: ldur x1, [x2, #7]
//  0x442be0: mov x2, x1
//  0x442be4: mov x1, x0
//  0x442be8: bl #0x3cfd4c
//  0x442bec: mov x0, NULL
//  0x442bf0: mov SP, FP
//  0x442bf4: ldp FP, LR, [SP], #0x10
//  0x442bf8: ret 
//  0x442bfc: bl #0x61fa28
//  0x442c00: b #0x442bc0
//  0x442c04: add x9, PP, #0xe, lsl #12
//  0x442c08: ldr x9, [x9, #0xf58]
//  0x442c0c: bl #0x620258
//
dynamic PagePKGameBetTabRecordState_changeTab_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x442bac
  BARRIER = mem(THR, 0x38); // 0x442bb4
  // frame: FP = SP // 0x442bb0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x442bfc
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x442bc8
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x442bc4
  if (w0 == w16) {
    x9 = mem((PP + 0xe000), 0xf58) /* Field */; // 0x442c08
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x442c0c
  }
  x1 = (x2 >> 1) & 0x7fffffff; // 0x442bd4
  if (x2 & (1 << 0) == 0) {
  } else {
    x1 = mem(x2, 7); // 0x442bdc
  }
  x1 = x0; // 0x442be4
  x2 = x1; // 0x442be0
  PageController_jumpToPage() /* 0x3cfd4c */; // 0x442be8
  SP = FP; // 0x442bf0
  x0 = NULL; // 0x442bec
  // frame: FP, LR, mem(SP), 0x10 // 0x442bf4
  return;
}

// PagePKGameBetTabRecordState_dispose
// raw disassembly:
//  0x452638: stp FP, LR, [SP, #-0x10]!
//  0x45263c: mov FP, SP
//  0x452640: sub SP, SP, #8
//  0x452644: mov x0, x1
//  0x452648: stur x1, [FP, #-8]
//  0x45264c: ldr BARRIER, [THR, #0x38]
//  0x452650: cmp SP, BARRIER
//  0x452654: b.ls #0x4526a4
//  0x452658: ldur w1, [x0, #0x1b]
//  0x45265c: add x1, x1, HEAP, lsl #32
//  0x452660: ldr BARRIER, [PP, #0x40]
//  0x452664: cmp w1, w16
//  0x452668: b.eq #0x4526ac
//  0x45266c: bl #0x45a240
//  0x452670: ldur x0, [FP, #-8]
//  0x452674: ldur w1, [x0, #0x1f]
//  0x452678: add x1, x1, HEAP, lsl #32
//  0x45267c: ldr BARRIER, [PP, #0x40]
//  0x452680: cmp w1, w16
//  0x452684: b.eq #0x4526b8
//  0x452688: bl #0x45a380
//  0x45268c: ldur x1, [FP, #-8]
//  0x452690: bl #0x4526c4
//  0x452694: mov x0, NULL
//  0x452698: mov SP, FP
//  0x45269c: ldp FP, LR, [SP], #0x10
//  0x4526a0: ret 
//  0x4526a4: bl #0x61fa28
//  0x4526a8: b #0x452658
//  0x4526ac: add x9, PP, #0xe, lsl #12
//  0x4526b0: ldr x9, [x9, #0xf50]
//  0x4526b4: bl #0x620258
//  0x4526b8: add x9, PP, #0xe, lsl #12
//  0x4526bc: ldr x9, [x9, #0xf58]
//  0x4526c0: bl #0x620258
//
dynamic PagePKGameBetTabRecordState_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x452638
  // frame: FP = SP // 0x45263c
  // frame: SP = SP - 8 // 0x452640
  x0 = x1; // 0x452644
  local_m8 = x1; // 0x452648
  BARRIER = mem(THR, 0x38); // 0x45264c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4526a4
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x452660
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x45265c
  if (w1 == w16) {
    x9 = mem((PP + 0xe000), 0xf50) /* Field */; // 0x4526b0
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4526b4
  } else {
    TabController_dispose() /* 0x45a240 */; // 0x45266c
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x45267c
    w1 = mem((local_m8), 0x1f); /* _PagePKGameBetTabRecordState._pageController (off 0x20) */  // 0x452674
    x0 = local_m8; // 0x452670
    x1 = ((mem((local_m8), 0x1f)) & 0xffffffff) + (HEAP << 32); /* _PagePKGameBetTabRecordState._pageController (off 0x20) */  // 0x452678
    if (w1 != w16) {
      ScrollController_dispose() /* 0x45a380 */; // 0x452688
      x1 = local_m8; // 0x45268c
      PagePKGameBetTabRecordState_State_TickerProviderStateMixin_dispose() /* 0x4526c4 */; // 0x452690
      SP = FP; // 0x452698
      x0 = NULL; // 0x452694
      // frame: FP, LR, mem(SP), 0x10 // 0x45269c
      return;
    }
  }
  x9 = mem((PP + 0xe000), 0xf58) /* Field */; // 0x4526bc
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4526c0
}

// PagePKGameBetTabRecordState_ctor
// raw disassembly:
//  0x4c564c: stp FP, LR, [SP, #-0x10]!
//  0x4c5650: mov FP, SP
//  0x4c5654: sub SP, SP, #0x20
//  0x4c5658: ldr x0, [PP, #0x40]
//  0x4c565c: mov x2, x1
//  0x4c5660: stur x1, [FP, #-8]
//  0x4c5664: ldr BARRIER, [THR, #0x38]
//  0x4c5668: cmp SP, BARRIER
//  0x4c566c: b.ls #0x4c5738
//  0x4c5670: stur w0, [x2, #0x1b]
//  0x4c5674: stur w0, [x2, #0x1f]
//  0x4c5678: add x1, PP, #0xb, lsl #12
//  0x4c567c: ldr x1, [x1, #0x630]
//  0x4c5680: ldr x4, [PP, #0x4c0]
//  0x4c5684: bl #0x3a1dcc
//  0x4c5688: stur x0, [FP, #-0x10]
//  0x4c568c: bl #0x42122c
//  0x4c5690: mov x2, x0
//  0x4c5694: ldur x0, [FP, #-0x10]
//  0x4c5698: stur x2, [FP, #-0x18]
//  0x4c569c: stur w0, [x2, #0xb]
//  0x4c56a0: add x1, PP, #0xb, lsl #12
//  0x4c56a4: ldr x1, [x1, #0x638]
//  0x4c56a8: ldr x4, [PP, #0x4c0]
//  0x4c56ac: bl #0x3a1dcc
//  0x4c56b0: stur x0, [FP, #-0x10]
//  0x4c56b4: bl #0x42122c
//  0x4c56b8: mov x3, x0
//  0x4c56bc: ldur x0, [FP, #-0x10]
//  0x4c56c0: stur x3, [FP, #-0x20]
//  0x4c56c4: stur w0, [x3, #0xb]
//  0x4c56c8: mov x1, NULL
//  0x4c56cc: mov x2, #4
//  0x4c56d0: bl #0x61f920
//  0x4c56d4: mov x2, x0
//  0x4c56d8: ldur x0, [FP, #-0x18]
//  0x4c56dc: stur x2, [FP, #-0x10]
//  0x4c56e0: stur w0, [x2, #0xf]
//  0x4c56e4: ldur x0, [FP, #-0x20]
//  0x4c56e8: stur w0, [x2, #0x13]
//  0x4c56ec: add x1, PP, #0xb, lsl #12
//  0x4c56f0: ldr x1, [x1, #0x640]
//  0x4c56f4: bl #0x61e854
//  0x4c56f8: ldur x1, [FP, #-0x10]
//  0x4c56fc: stur w1, [x0, #0xf]
//  0x4c5700: mov x1, #4
//  0x4c5704: stur w1, [x0, #0xb]
//  0x4c5708: ldur x1, [FP, #-8]
//  0x4c570c: stur w0, [x1, #0x23]
//  0x4c5710: ldurb w16, [x1, #-1]
//  0x4c5714: ldurb w17, [x0, #-1]
//  0x4c5718: and BARRIER, x17, BARRIER, lsr #2
//  0x4c571c: tst BARRIER, HEAP, lsr #32
//  0x4c5720: b.eq #0x4c5728
//  0x4c5724: bl #0x61e04c
//  0x4c5728: mov x0, NULL
//  0x4c572c: mov SP, FP
//  0x4c5730: ldp FP, LR, [SP], #0x10
//  0x4c5734: ret 
//  0x4c5738: bl #0x61fa28
//  0x4c573c: b #0x4c5670
//
dynamic PagePKGameBetTabRecordState_ctor() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c564c
  // frame: FP = SP // 0x4c5650
  // frame: SP = SP - 0x20 // 0x4c5654
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4c5658
  x2 = x1; // 0x4c565c
  local_m8 = x1; // 0x4c5660
  BARRIER = mem(THR, 0x38); // 0x4c5664
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c5738
  }
  memSet(x2, 0x1b, w0); // 0x4c5670
  memSet(x2, 0x1f, w0); // 0x4c5674
  x1 = "virtual_party_dice_game_banker_record_title" /* pp+0xb630 */; // 0x4c567c
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4c5680
  getString() /* 0x3a1dcc */; // 0x4c5684
  local_m10 = x0; // 0x4c5688
  AllocationStub_Tab() /* 0x42122c */; // 0x4c568c
  x0 = local_m10; // 0x4c5694
  x2 = x0; // 0x4c5690
  local_m18 = x2; // 0x4c5698
  memSet(x2, 0xb, w0); // 0x4c569c
  x1 = "virtual_party_dice_game_player_record_title" /* pp+0xb638 */; // 0x4c56a4
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4c56a8
  getString() /* 0x3a1dcc */; // 0x4c56ac
  local_m10 = x0; // 0x4c56b0
  AllocationStub_Tab() /* 0x42122c */; // 0x4c56b4
  x0 = local_m10; // 0x4c56bc
  x3 = x0; // 0x4c56b8
  local_m20 = x3; // 0x4c56c0
  memSet(x3, 0xb, w0); // 0x4c56c4
  x1 = NULL; // 0x4c56c8
  x2 = 4; // 0x4c56cc
  sub_0x61f920(); // 0x4c56d0
  x0 = local_m18; // 0x4c56d8
  x2 = x0; // 0x4c56d4
  local_m10 = x2; // 0x4c56dc
  memSet(x2, 0xf, w0); // 0x4c56e0
  x0 = local_m20; // 0x4c56e4
  memSet(x2, 0x13, w0); // 0x4c56e8
  x1 = mem((PP + 0xb000), 0x640) /* TypeArguments */; // 0x4c56f0
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x4c56f4
  x1 = local_m10; // 0x4c56f8
  memSet(x0, 0xf, w1); // 0x4c56fc
  x1 = 4; // 0x4c5700
  memSet(x0, 0xb, w1); // 0x4c5704
  x1 = local_m8; // 0x4c5708
  memSet(x1, 0x23, w0); // 0x4c570c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c5718
  w16 = mem(x1, -1); // 0x4c5710
  w17 = mem(x0, -1); // 0x4c5714
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c5710
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c5714
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c5724
  }
  SP = FP; // 0x4c572c
  x0 = NULL; // 0x4c5728
  // frame: FP, LR, mem(SP), 0x10 // 0x4c5730
  return;
}

// PagePKGameBetTabRecordState_initState
// raw disassembly:
//  0x4da578: stp FP, LR, [SP, #-0x10]!
//  0x4da57c: mov FP, SP
//  0x4da580: sub SP, SP, #0x18
//  0x4da584: mov x3, x1
//  0x4da588: stur x1, [FP, #-0x10]
//  0x4da58c: ldr BARRIER, [THR, #0x38]
//  0x4da590: cmp SP, BARRIER
//  0x4da594: b.ls #0x4da660
//  0x4da598: ldur w0, [x3, #0x23]
//  0x4da59c: add x0, x0, HEAP, lsl #32
//  0x4da5a0: ldur w1, [x0, #0xb]
//  0x4da5a4: sbfx x2, x1, #1, #0x1f
//  0x4da5a8: stur x2, [FP, #-8]
//  0x4da5ac: bl #0x4d44d0
//  0x4da5b0: mov x1, x0
//  0x4da5b4: ldur x2, [FP, #-8]
//  0x4da5b8: ldur x3, [FP, #-0x10]
//  0x4da5bc: stur x0, [FP, #-0x18]
//  0x4da5c0: ldr x4, [PP, #0x2e0]
//  0x4da5c4: bl #0x4d437c
//  0x4da5c8: ldur x0, [FP, #-0x18]
//  0x4da5cc: ldur x3, [FP, #-0x10]
//  0x4da5d0: stur w0, [x3, #0x1b]
//  0x4da5d4: ldurb w16, [x3, #-1]
//  0x4da5d8: ldurb w17, [x0, #-1]
//  0x4da5dc: and BARRIER, x17, BARRIER, lsr #2
//  0x4da5e0: tst BARRIER, HEAP, lsr #32
//  0x4da5e4: b.eq #0x4da5ec
//  0x4da5e8: bl #0x61e08c
//  0x4da5ec: add x1, PP, #0xf, lsl #12
//  0x4da5f0: ldr x1, [x1, #0x198]
//  0x4da5f4: mov x2, NULL
//  0x4da5f8: bl #0x61ec54
//  0x4da5fc: ldur x1, [FP, #-0x18]
//  0x4da600: mov x2, x0
//  0x4da604: bl #0x51c390
//  0x4da608: bl #0x3cff08
//  0x4da60c: stur x0, [FP, #-0x18]
//  0x4da610: stur xzr, [x0, #0x3f]
//  0x4da614: add x1, NULL, #0x20
//  0x4da618: stur w1, [x0, #0x47]
//  0x4da61c: fmov d0, #1.00000000
//  0x4da620: stur d0, [x0, #0x4b]
//  0x4da624: mov x1, x0
//  0x4da628: bl #0x317954
//  0x4da62c: ldur x0, [FP, #-0x18]
//  0x4da630: ldur x1, [FP, #-0x10]
//  0x4da634: stur w0, [x1, #0x1f]
//  0x4da638: ldurb w16, [x1, #-1]
//  0x4da63c: ldurb w17, [x0, #-1]
//  0x4da640: and BARRIER, x17, BARRIER, lsr #2
//  0x4da644: tst BARRIER, HEAP, lsr #32
//  0x4da648: b.eq #0x4da650
//  0x4da64c: bl #0x61e04c
//  0x4da650: mov x0, NULL
//  0x4da654: mov SP, FP
//  0x4da658: ldp FP, LR, [SP], #0x10
//  0x4da65c: ret 
//  0x4da660: bl #0x61fa28
//  0x4da664: b #0x4da598
//
dynamic PagePKGameBetTabRecordState_initState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4da578
  // frame: FP = SP // 0x4da57c
  // frame: SP = SP - 0x18 // 0x4da580
  x3 = x1; // 0x4da584
  local_m10 = x1; // 0x4da588
  BARRIER = mem(THR, 0x38); // 0x4da58c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4da660
  }
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x4da5a0
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4da59c
  x1 = (mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x4da5a0
  x2 = (((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x4da5a4
  local_m8 = x2; // 0x4da5a8
  AllocationStub_TabController() /* 0x4d44d0 */; // 0x4da5ac
  x1 = x0; // 0x4da5b0
  x2 = local_m8; // 0x4da5b4
  x3 = local_m10; // 0x4da5b8
  local_m18 = x0; // 0x4da5bc
  x4 = mem(PP, 0x2e0) /* ImmutableArray */; // 0x4da5c0
  TabController_ctor() /* 0x4d437c */; // 0x4da5c4
  x0 = local_m18; // 0x4da5c8
  x3 = local_m10; // 0x4da5cc
  memSet(x3, 0x1b, w0); // 0x4da5d0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4da5dc
  w16 = mem(x3, -1); // 0x4da5d4
  w17 = mem(x0, -1); // 0x4da5d8
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4da5d4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4da5d8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4da5e8
  }
  x1 = mem((PP + 0xf000), 0x198) /* Function */; // 0x4da5f0
  x2 = NULL; // 0x4da5f4
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4da5f8
  x1 = local_m18; // 0x4da5fc
  x2 = x0; // 0x4da600
  ChangeNotifier_addListener() /* 0x51c390 */; // 0x4da604
  AllocationStub_PageController() /* 0x3cff08 */; // 0x4da608
  local_m18 = x0; // 0x4da60c
  memSet(x0, 0x3f, xzr); // 0x4da610
  x1 = NULL + 0x20; // 0x4da614
  memSet(x0, 0x47, w1); // 0x4da618
  d0 = 1.00000000 /* bits */; // 0x4da61c
  memSet(x0, 0x4b, d0); // 0x4da620
  x1 = x0; // 0x4da624
  ScrollController_ctor() /* 0x317954 */; // 0x4da628
  x0 = local_m18; // 0x4da62c
  x1 = local_m10; // 0x4da630
  memSet(x1, 0x1f, w0); // 0x4da634
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4da640
  w16 = mem(x1, -1); // 0x4da638
  w17 = mem(x0, -1); // 0x4da63c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4da638
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4da63c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4da64c
  }
  SP = FP; // 0x4da654
  x0 = NULL; // 0x4da650
  // frame: FP, LR, mem(SP), 0x10 // 0x4da658
  return;
}

// PagePKGameBetTabRecordState_anon_closure_3
// raw disassembly:
//  0x60bd34: mov x0, NULL
//  0x60bd38: ret 
//
dynamic PagePKGameBetTabRecordState_anon_closure_3() {
  dynamic x0;
  x0 = NULL; // 0x60bd34
  return x0;
}

// tabBarWidget
// raw disassembly:
//  0x4426d0: stp FP, LR, [SP, #-0x10]!
//  0x4426d4: mov FP, SP
//  0x4426d8: sub SP, SP, #0x88
//  0x4426dc: stur x1, [FP, #-8]
//  0x4426e0: stur x2, [FP, #-0x10]
//  0x4426e4: stur x3, [FP, #-0x18]
//  0x4426e8: stur d0, [FP, #-0x58]
//  0x4426ec: ldr BARRIER, [THR, #0x38]
//  0x4426f0: cmp SP, BARRIER
//  0x4426f4: b.ls #0x44294c
//  0x4426f8: bl #0x2e3578
//  0x4426fc: add x17, PP, #0xf, lsl #12
//  0x442700: ldr d0, [x17, #0x150]
//  0x442704: stur x0, [FP, #-0x20]
//  0x442708: stur d0, [x0, #7]
//  0x44270c: fmov d1, #17.00000000
//  0x442710: stur d1, [x0, #0xf]
//  0x442714: stur d0, [x0, #0x17]
//  0x442718: stur xzr, [x0, #0x1f]
//  0x44271c: bl #0x2e3578
//  0x442720: fmov d0, #2.00000000
//  0x442724: stur x0, [FP, #-0x28]
//  0x442728: stur d0, [x0, #7]
//  0x44272c: stur d0, [x0, #0xf]
//  0x442730: stur d0, [x0, #0x17]
//  0x442734: stur d0, [x0, #0x1f]
//  0x442738: bl #0x31d844
//  0x44273c: mov x1, x0
//  0x442740: ldr x0, [PP, #0x6310]
//  0x442744: stur x1, [FP, #-0x30]
//  0x442748: stur w0, [x1, #0x27]
//  0x44274c: ldr d0, [PP, #0x66a0]
//  0x442750: stur d0, [x1, #7]
//  0x442754: fmov d0, #1.00000000
//  0x442758: stur d0, [x1, #0xf]
//  0x44275c: stur d0, [x1, #0x17]
//  0x442760: stur d0, [x1, #0x1f]
//  0x442764: bl #0x352b04
//  0x442768: fmov d0, #18.00000000
//  0x44276c: stur x0, [FP, #-0x38]
//  0x442770: stur d0, [x0, #7]
//  0x442774: stur d0, [x0, #0xf]
//  0x442778: bl #0x392f28
//  0x44277c: mov x1, x0
//  0x442780: ldur x0, [FP, #-0x38]
//  0x442784: stur x1, [FP, #-0x40]
//  0x442788: stur w0, [x1, #7]
//  0x44278c: stur w0, [x1, #0xb]
//  0x442790: stur w0, [x1, #0xf]
//  0x442794: stur w0, [x1, #0x13]
//  0x442798: bl #0x391dd8
//  0x44279c: mov x1, x0
//  0x4427a0: ldur x0, [FP, #-0x30]
//  0x4427a4: stur x1, [FP, #-0x38]
//  0x4427a8: stur w0, [x1, #7]
//  0x4427ac: ldur x0, [FP, #-0x40]
//  0x4427b0: stur w0, [x1, #0x13]
//  0x4427b4: add x0, PP, #0xe, lsl #12
//  0x4427b8: ldr x0, [x0, #0xb78]
//  0x4427bc: stur w0, [x1, #0x23]
//  0x4427c0: bl #0x31abec
//  0x4427c4: mov x1, x0
//  0x4427c8: add x0, NULL, #0x20
//  0x4427cc: stur x1, [FP, #-0x30]
//  0x4427d0: stur w0, [x1, #7]
//  0x4427d4: add x2, PP, #0xe, lsl #12
//  0x4427d8: ldr x2, [x2, #0xde8]
//  0x4427dc: stur w2, [x1, #0x1f]
//  0x4427e0: add x3, PP, #0xe, lsl #12
//  0x4427e4: ldr x3, [x3, #0xe40]
//  0x4427e8: stur w3, [x1, #0x23]
//  0x4427ec: bl #0x31abec
//  0x4427f0: mov x1, x0
//  0x4427f4: add x0, NULL, #0x20
//  0x4427f8: stur x1, [FP, #-0x40]
//  0x4427fc: stur w0, [x1, #7]
//  0x442800: add x2, PP, #0xe, lsl #12
//  0x442804: ldr x2, [x2, #0xde8]
//  0x442808: stur w2, [x1, #0x1f]
//  0x44280c: add x2, PP, #0xe, lsl #12
//  0x442810: ldr x2, [x2, #0xe40]
//  0x442814: stur w2, [x1, #0x23]
//  0x442818: ldur d1, [FP, #-0x58]
//  0x44281c: fmov d0, #2.00000000
//  0x442820: fdiv d2, d1, d0
//  0x442824: stur d2, [FP, #-0x60]
//  0x442828: bl #0x352b04
//  0x44282c: ldur d0, [FP, #-0x60]
//  0x442830: stur x0, [FP, #-0x48]
//  0x442834: stur d0, [x0, #7]
//  0x442838: stur d0, [x0, #0xf]
//  0x44283c: bl #0x392f28
//  0x442840: mov x1, x0
//  0x442844: ldur x0, [FP, #-0x48]
//  0x442848: stur x1, [FP, #-0x50]
//  0x44284c: stur w0, [x1, #7]
//  0x442850: stur w0, [x1, #0xb]
//  0x442854: stur w0, [x1, #0xf]
//  0x442858: stur w0, [x1, #0x13]
//  0x44285c: bl #0x391dd8
//  0x442860: mov x1, x0
//  0x442864: ldr x0, [PP, #0x6050]
//  0x442868: stur x1, [FP, #-0x48]
//  0x44286c: stur w0, [x1, #7]
//  0x442870: ldur x2, [FP, #-0x50]
//  0x442874: stur w2, [x1, #0x13]
//  0x442878: add x2, PP, #0xe, lsl #12
//  0x44287c: ldr x2, [x2, #0xb78]
//  0x442880: stur w2, [x1, #0x23]
//  0x442884: bl #0x420d1c
//  0x442888: mov x1, x0
//  0x44288c: ldur x0, [FP, #-0x18]
//  0x442890: stur x1, [FP, #-0x50]
//  0x442894: stur w0, [x1, #0xb]
//  0x442898: ldur x0, [FP, #-0x10]
//  0x44289c: stur w0, [x1, #0xf]
//  0x4428a0: add x0, NULL, #0x30
//  0x4428a4: stur w0, [x1, #0x13]
//  0x4428a8: stur xzr, [x1, #0x1f]
//  0x4428ac: ldr x0, [PP, #0x5ac0]
//  0x4428b0: stur w0, [x1, #0x27]
//  0x4428b4: ldur x0, [FP, #-0x48]
//  0x4428b8: stur w0, [x1, #0x2b]
//  0x4428bc: ldr x0, [PP, #0x5d50]
//  0x4428c0: stur w0, [x1, #0x3b]
//  0x4428c4: ldur x0, [FP, #-0x30]
//  0x4428c8: stur w0, [x1, #0x43]
//  0x4428cc: add x0, PP, #0xf, lsl #12
//  0x4428d0: ldr x0, [x0, #0x158]
//  0x4428d4: stur w0, [x1, #0x4b]
//  0x4428d8: ldr x0, [PP, #0x6050]
//  0x4428dc: stur w0, [x1, #0x3f]
//  0x4428e0: ldur x0, [FP, #-0x40]
//  0x4428e4: stur w0, [x1, #0x47]
//  0x4428e8: ldr x0, [PP, #0x77d8]
//  0x4428ec: stur w0, [x1, #0x53]
//  0x4428f0: ldur x0, [FP, #-8]
//  0x4428f4: stur w0, [x1, #0x5f]
//  0x4428f8: add x0, NULL, #0x20
//  0x4428fc: stur w0, [x1, #0x7b]
//  0x442900: bl #0x391a04
//  0x442904: stur x0, [FP, #-8]
//  0x442908: ldur BARRIER, [FP, #-0x20]
//  0x44290c: ldur LR, [FP, #-0x28]
//  0x442910: stp LR, BARRIER, [SP, #0x18]
//  0x442914: ldur BARRIER, [FP, #-0x38]
//  0x442918: add LR, PP, #0xa, lsl #12
//  0x44291c: ldr LR, [LR, #0x4e0]
//  0x442920: stp LR, BARRIER, [SP, #8]
//  0x442924: ldur BARRIER, [FP, #-0x50]
//  0x442928: str BARRIER, [SP]
//  0x44292c: mov x1, x0
//  0x442930: add x4, PP, #0xf, lsl #12
//  0x442934: ldr x4, [x4, #0x160]
//  0x442938: bl #0x391490
//  0x44293c: ldur x0, [FP, #-8]
//  0x442940: mov SP, FP
//  0x442944: ldp FP, LR, [SP], #0x10
//  0x442948: ret 
//  0x44294c: bl #0x61faa8
//  0x442950: b #0x4426f8
//
dynamic tabBarWidget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4426d0
  // frame: FP = SP // 0x4426d4
  // frame: SP = SP - 0x88 // 0x4426d8
  local_m8 = x1; // 0x4426dc
  local_m10 = x2; // 0x4426e0
  local_m18 = x3; // 0x4426e4
  local_m58 = d0; // 0x4426e8
  BARRIER = mem(THR, 0x38); // 0x4426ec
  if (SP <= BARRIER) {
    StackOverflowSharedWithFpuRegsStub_0x61faa8() /* 0x61faa8 */; // 0x44294c
  }
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x4426f8
  d0 = 4633218854145753088; // 0x442700
  x17 = PP + 0xf000; // 0x4426fc
  local_m20 = x0; // 0x442704
  memSet(x0, 7, d0); // 0x442708
  d1 = 17.00000000 /* bits */; // 0x44270c
  memSet(x0, 0xf, d1); // 0x442710
  memSet(x0, 0x17, d0); // 0x442714
  memSet(x0, 0x1f, xzr); // 0x442718
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x44271c
  d0 = 2.00000000 /* bits */; // 0x442720
  local_m28 = x0; // 0x442724
  memSet(x0, 7, d0); // 0x442728
  memSet(x0, 0xf, d0); // 0x44272c
  memSet(x0, 0x17, d0); // 0x442730
  memSet(x0, 0x1f, d0); // 0x442734
  AllocationStub_Color() /* 0x31d844 */; // 0x442738
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x442740
  x1 = x0; // 0x44273c
  local_m30 = x1; // 0x442744
  memSet(x1, 0x27, w0); // 0x442748
  d0 = 4596373779694328218; // 0x44274c
  memSet(x1, 7, d0); // 0x442750
  d0 = 1.00000000 /* bits */; // 0x442754
  memSet(x1, 0xf, d0); // 0x442758
  memSet(x1, 0x17, d0); // 0x44275c
  memSet(x1, 0x1f, d0); // 0x442760
  AllocationStub_Radius() /* 0x352b04 */; // 0x442764
  d0 = 18.00000000 /* bits */; // 0x442768
  local_m38 = x0; // 0x44276c
  memSet(x0, 7, d0); // 0x442770
  memSet(x0, 0xf, d0); // 0x442774
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x442778
  x0 = local_m38; // 0x442780
  x1 = x0; // 0x44277c
  local_m40 = x1; // 0x442784
  memSet(x1, 7, w0); // 0x442788
  memSet(x1, 0xb, w0); // 0x44278c
  memSet(x1, 0xf, w0); // 0x442790
  memSet(x1, 0x13, w0); // 0x442794
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x442798
  x0 = local_m30; // 0x4427a0
  x1 = x0; // 0x44279c
  local_m38 = x1; // 0x4427a4
  memSet(x1, 7, w0); // 0x4427a8
  x0 = local_m40; // 0x4427ac
  memSet(x1, 0x13, w0); // 0x4427b0
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x4427b8
  memSet(x1, 0x23, w0); // 0x4427bc
  AllocationStub_TextStyle() /* 0x31abec */; // 0x4427c0
  x0 = NULL + 0x20; // 0x4427c8
  x1 = x0; // 0x4427c4
  local_m30 = x1; // 0x4427cc
  memSet(x1, 7, w0); // 0x4427d0
  x2 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x4427d8
  memSet(x1, 0x1f, w2); // 0x4427dc
  x3 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x4427e4
  memSet(x1, 0x23, w3); // 0x4427e8
  AllocationStub_TextStyle() /* 0x31abec */; // 0x4427ec
  x0 = NULL + 0x20; // 0x4427f4
  x1 = x0; // 0x4427f0
  local_m40 = x1; // 0x4427f8
  memSet(x1, 7, w0); // 0x4427fc
  x2 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x442804
  memSet(x1, 0x1f, w2); // 0x442808
  x2 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x442810
  memSet(x1, 0x23, w2); // 0x442814
  d0 = 2.00000000 /* bits */; // 0x44281c
  d1 = local_m58; // 0x442818
  d2 = ((local_m58) / (2.00000000 /* bits */)) /* float */; // 0x442820
  local_m60 = d2; // 0x442824
  AllocationStub_Radius() /* 0x352b04 */; // 0x442828
  d0 = local_m60; // 0x44282c
  local_m48 = x0; // 0x442830
  memSet(x0, 7, d0); // 0x442834
  memSet(x0, 0xf, d0); // 0x442838
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x44283c
  x0 = local_m48; // 0x442844
  x1 = x0; // 0x442840
  local_m50 = x1; // 0x442848
  memSet(x1, 7, w0); // 0x44284c
  memSet(x1, 0xb, w0); // 0x442850
  memSet(x1, 0xf, w0); // 0x442854
  memSet(x1, 0x13, w0); // 0x442858
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x44285c
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x442864
  x1 = x0; // 0x442860
  local_m48 = x1; // 0x442868
  memSet(x1, 7, w0); // 0x44286c
  x2 = local_m50; // 0x442870
  memSet(x1, 0x13, w2); // 0x442874
  x2 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x44287c
  memSet(x1, 0x23, w2); // 0x442880
  AllocationStub_TabBar() /* 0x420d1c */; // 0x442884
  x0 = local_m18; // 0x44288c
  x1 = x0; // 0x442888
  local_m50 = x1; // 0x442890
  memSet(x1, 0xb, w0); // 0x442894
  x0 = local_m10; // 0x442898
  memSet(x1, 0xf, w0); // 0x44289c
  x0 = NULL + 0x30; // 0x4428a0
  memSet(x1, 0x13, w0); // 0x4428a4
  memSet(x1, 0x1f, xzr); // 0x4428a8
  x0 = mem(PP, 0x5ac0) /* Obj!EdgeInsets@11b7c  */; // 0x4428ac
  memSet(x1, 0x27, w0); // 0x4428b0
  x0 = local_m48; // 0x4428b4
  memSet(x1, 0x2b, w0); // 0x4428b8
  x0 = mem(PP, 0x5d50) /* Obj!Color@12062  */; // 0x4428bc
  memSet(x1, 0x3b, w0); // 0x4428c0
  x0 = local_m30; // 0x4428c4
  memSet(x1, 0x43, w0); // 0x4428c8
  x0 = mem((PP + 0xf000), 0x158) /* Obj!EdgeInsets@11bc4  */; // 0x4428d0
  memSet(x1, 0x4b, w0); // 0x4428d4
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x4428d8
  memSet(x1, 0x3f, w0); // 0x4428dc
  x0 = local_m40; // 0x4428e0
  memSet(x1, 0x47, w0); // 0x4428e4
  x0 = mem(PP, 0x77d8) /* Obj!DragStartBehavior@122d8  */; // 0x4428e8
  memSet(x1, 0x53, w0); // 0x4428ec
  x0 = local_m8; // 0x4428f0
  memSet(x1, 0x5f, w0); // 0x4428f4
  x0 = NULL + 0x20; // 0x4428f8
  memSet(x1, 0x7b, w0); // 0x4428fc
  AllocationStub_Container() /* 0x391a04 */; // 0x442900
  local_m8 = x0; // 0x442904
  BARRIER = local_m20; // 0x442908
  LR = local_m28; // 0x44290c
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x442910
  BARRIER = local_m38; // 0x442914
  LR = mem((PP + 0xa000), 0x4e0) /* Double */; // 0x44291c
  // frame: LR, BARRIER, mem(SP, 8) // 0x442920
  BARRIER = local_m50; // 0x442924
  local_0 = BARRIER; // 0x442928
  x1 = x0; // 0x44292c
  x4 = mem((PP + 0xf000), 0x160) /* ImmutableArray */; // 0x442934
  Container_ctor() /* 0x391490 */; // 0x442938
  SP = FP; // 0x442940
  x0 = local_m8; // 0x44293c
  // frame: FP, LR, mem(SP), 0x10 // 0x442944
  return;
}

// backButton
// raw disassembly:
//  0x442954: stp FP, LR, [SP, #-0x10]!
//  0x442958: mov FP, SP
//  0x44295c: sub SP, SP, #0x38
//  0x442960: ldr BARRIER, [THR, #0x38]
//  0x442964: cmp SP, BARRIER
//  0x442968: b.ls #0x442a44
//  0x44296c: bl #0x2e3578
//  0x442970: fmov d0, #20.00000000
//  0x442974: stur x0, [FP, #-8]
//  0x442978: stur d0, [x0, #7]
//  0x44297c: stur d0, [x0, #0xf]
//  0x442980: stur xzr, [x0, #0x17]
//  0x442984: stur xzr, [x0, #0x1f]
//  0x442988: bl #0x3a142c
//  0x44298c: mov x1, x0
//  0x442990: add x0, PP, #0xf, lsl #12
//  0x442994: ldr x0, [x0, #0x168]
//  0x442998: stur x1, [FP, #-0x10]
//  0x44299c: stur w0, [x1, #0xb]
//  0x4429a0: add x0, PP, #0xf, lsl #12
//  0x4429a4: ldr x0, [x0, #0x170]
//  0x4429a8: stur w0, [x1, #0xf]
//  0x4429ac: add x0, PP, #0xf, lsl #12
//  0x4429b0: ldr x0, [x0, #0x178]
//  0x4429b4: stur w0, [x1, #0x1b]
//  0x4429b8: bl #0x391a04
//  0x4429bc: stur x0, [FP, #-0x18]
//  0x4429c0: ldur BARRIER, [FP, #-8]
//  0x4429c4: add LR, PP, #0xe, lsl #12
//  0x4429c8: ldr LR, [LR, #0xb50]
//  0x4429cc: stp LR, BARRIER, [SP, #0x10]
//  0x4429d0: add BARRIER, PP, #0xe, lsl #12
//  0x4429d4: ldr BARRIER, [BARRIER, #0xb50]
//  0x4429d8: ldur LR, [FP, #-0x10]
//  0x4429dc: stp LR, BARRIER, [SP]
//  0x4429e0: mov x1, x0
//  0x4429e4: add x4, PP, #0xf, lsl #12
//  0x4429e8: ldr x4, [x4, #0x180]
//  0x4429ec: bl #0x391490
//  0x4429f0: bl #0x3a1d94
//  0x4429f4: add x1, PP, #0xf, lsl #12
//  0x4429f8: ldr x1, [x1, #0x188]
//  0x4429fc: mov x2, NULL
//  0x442a00: stur x0, [FP, #-8]
//  0x442a04: bl #0x61ec54
//  0x442a08: ldur BARRIER, [FP, #-0x18]
//  0x442a0c: stp x0, BARRIER, [SP]
//  0x442a10: ldur x1, [FP, #-8]
//  0x442a14: add x4, PP, #0xe, lsl #12
//  0x442a18: ldr x4, [x4, #0xec0]
//  0x442a1c: bl #0x3a18c4
//  0x442a20: bl #0x396460
//  0x442a24: add x1, PP, #0xf, lsl #12
//  0x442a28: ldr x1, [x1, #0x190]
//  0x442a2c: stur w1, [x0, #0xf]
//  0x442a30: ldur x1, [FP, #-8]
//  0x442a34: stur w1, [x0, #0xb]
//  0x442a38: mov SP, FP
//  0x442a3c: ldp FP, LR, [SP], #0x10
//  0x442a40: ret 
//  0x442a44: bl #0x61fa28
//  0x442a48: b #0x44296c
//
dynamic backButton() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x442954
  BARRIER = mem(THR, 0x38); // 0x442960
  // frame: FP = SP // 0x442958
  // frame: SP = SP - 0x38 // 0x44295c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x442a44
  }
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x44296c
  d0 = 20.00000000 /* bits */; // 0x442970
  local_m8 = x0; // 0x442974
  memSet(x0, 7, d0); // 0x442978
  memSet(x0, 0xf, d0); // 0x44297c
  memSet(x0, 0x17, xzr); // 0x442980
  memSet(x0, 0x1f, xzr); // 0x442984
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x442988
  x0 = "assets/images/3.0x/game_bg_bet_close.webp" /* pp+0xf168 */; // 0x442994
  x1 = x0; // 0x44298c
  local_m10 = x1; // 0x442998
  memSet(x1, 0xb, w0); // 0x44299c
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x4429a4
  memSet(x1, 0xf, w0); // 0x4429a8
  x0 = mem((PP + 0xf000), 0x178) /* Obj!BoxFit@12284  */; // 0x4429b0
  memSet(x1, 0x1b, w0); // 0x4429b4
  AllocationStub_Container() /* 0x391a04 */; // 0x4429b8
  local_m18 = x0; // 0x4429bc
  BARRIER = local_m8; // 0x4429c0
  LR = mem((PP + 0xe000), 0xb50) /* Double */; // 0x4429c8
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x4429cc
  BARRIER = mem((PP + 0xe000), 0xb50) /* Double */; // 0x4429d4
  LR = local_m10; // 0x4429d8
  // frame: LR, BARRIER, mem(SP) // 0x4429dc
  x1 = x0; // 0x4429e0
  x4 = mem((PP + 0xf000), 0x180) /* ImmutableArray */; // 0x4429e8
  Container_ctor() /* 0x391490 */; // 0x4429ec
  sub_0x3a1d94(); // 0x4429f0
  x1 = mem((PP + 0xf000), 0x188) /* Function */; // 0x4429f8
  x2 = NULL; // 0x4429fc
  local_m8 = x0; // 0x442a00
  AllocationStub__Closure() /* 0x61ec54 */; // 0x442a04
  BARRIER = local_m18; // 0x442a08
  // frame: x0, BARRIER, mem(SP) // 0x442a0c
  x1 = local_m8; // 0x442a10
  x4 = mem((PP + 0xe000), 0xec0) /* ImmutableArray */; // 0x442a18
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x442a1c
  AllocationStub_Align() /* 0x396460 */; // 0x442a20
  x1 = mem((PP + 0xf000), 0x190) /* Obj!Alignment@11bdb  */; // 0x442a28
  memSet(x0, 0xf, w1); // 0x442a2c
  x1 = local_m8; // 0x442a30
  memSet(x0, 0xb, w1); // 0x442a34
  SP = FP; // 0x442a38
  // frame: FP, LR, mem(SP), 0x10 // 0x442a3c
  return;
}

// emptyWidge
// raw disassembly:
//  0x443014: stp FP, LR, [SP, #-0x10]!
//  0x443018: mov FP, SP
//  0x44301c: sub SP, SP, #0x30
//  0x443020: ldr BARRIER, [THR, #0x38]
//  0x443024: cmp SP, BARRIER
//  0x443028: b.ls #0x443200
//  0x44302c: bl #0x3a142c
//  0x443030: mov x1, x0
//  0x443034: add x0, PP, #0xf, lsl #12
//  0x443038: ldr x0, [x0, #0x268]
//  0x44303c: stur x1, [FP, #-8]
//  0x443040: stur w0, [x1, #0xb]
//  0x443044: add x0, PP, #0xf, lsl #12
//  0x443048: ldr x0, [x0, #0x170]
//  0x44304c: stur w0, [x1, #0xf]
//  0x443050: add x0, PP, #0xf, lsl #12
//  0x443054: ldr x0, [x0, #0x270]
//  0x443058: stur w0, [x1, #0x13]
//  0x44305c: add x0, PP, #0xf, lsl #12
//  0x443060: ldr x0, [x0, #0x278]
//  0x443064: stur w0, [x1, #0x17]
//  0x443068: bl #0x3949ec
//  0x44306c: mov x2, x0
//  0x443070: add x0, PP, #0xf, lsl #12
//  0x443074: ldr x0, [x0, #0x280]
//  0x443078: stur x2, [FP, #-0x10]
//  0x44307c: stur w0, [x2, #0x13]
//  0x443080: add x1, PP, #0xc, lsl #12
//  0x443084: ldr x1, [x1, #0x818]
//  0x443088: ldr x4, [PP, #0x4c0]
//  0x44308c: bl #0x3a1dcc
//  0x443090: stur x0, [FP, #-0x18]
//  0x443094: bl #0x31d844
//  0x443098: mov x1, x0
//  0x44309c: ldr x0, [PP, #0x6310]
//  0x4430a0: stur x1, [FP, #-0x20]
//  0x4430a4: stur w0, [x1, #0x27]
//  0x4430a8: fmov d0, #1.00000000
//  0x4430ac: stur d0, [x1, #7]
//  0x4430b0: add x17, PP, #0xe, lsl #12
//  0x4430b4: ldr d0, [x17, #0xe08]
//  0x4430b8: stur d0, [x1, #0xf]
//  0x4430bc: stur d0, [x1, #0x17]
//  0x4430c0: stur d0, [x1, #0x1f]
//  0x4430c4: bl #0x31abec
//  0x4430c8: mov x1, x0
//  0x4430cc: add x0, NULL, #0x20
//  0x4430d0: stur x1, [FP, #-0x28]
//  0x4430d4: stur w0, [x1, #7]
//  0x4430d8: ldur x0, [FP, #-0x20]
//  0x4430dc: stur w0, [x1, #0xb]
//  0x4430e0: add x0, PP, #0xe, lsl #12
//  0x4430e4: ldr x0, [x0, #0xde8]
//  0x4430e8: stur w0, [x1, #0x1f]
//  0x4430ec: bl #0x393bf8
//  0x4430f0: mov x1, x0
//  0x4430f4: ldur x0, [FP, #-0x18]
//  0x4430f8: stur x1, [FP, #-0x20]
//  0x4430fc: stur w0, [x1, #0xb]
//  0x443100: ldur x0, [FP, #-0x28]
//  0x443104: stur w0, [x1, #0x13]
//  0x443108: bl #0x3949ec
//  0x44310c: mov x3, x0
//  0x443110: ldr x0, [PP, #0x66c8]
//  0x443114: stur x3, [FP, #-0x18]
//  0x443118: stur w0, [x3, #0x13]
//  0x44311c: mov x1, NULL
//  0x443120: mov x2, #8
//  0x443124: bl #0x61f920
//  0x443128: mov x2, x0
//  0x44312c: ldur x0, [FP, #-8]
//  0x443130: stur x2, [FP, #-0x28]
//  0x443134: stur w0, [x2, #0xf]
//  0x443138: ldur x0, [FP, #-0x10]
//  0x44313c: stur w0, [x2, #0x13]
//  0x443140: ldur x0, [FP, #-0x20]
//  0x443144: stur w0, [x2, #0x17]
//  0x443148: ldur x0, [FP, #-0x18]
//  0x44314c: stur w0, [x2, #0x1b]
//  0x443150: ldr x1, [PP, #0x5c58]
//  0x443154: bl #0x61e854
//  0x443158: mov x1, x0
//  0x44315c: ldur x0, [FP, #-0x28]
//  0x443160: stur x1, [FP, #-8]
//  0x443164: stur w0, [x1, #0xf]
//  0x443168: mov x0, #8
//  0x44316c: stur w0, [x1, #0xb]
//  0x443170: bl #0x39310c
//  0x443174: mov x1, x0
//  0x443178: add x0, PP, #0xa, lsl #12
//  0x44317c: ldr x0, [x0, #0x858]
//  0x443180: stur x1, [FP, #-0x10]
//  0x443184: stur w0, [x1, #0xf]
//  0x443188: add x0, PP, #0xf, lsl #12
//  0x44318c: ldr x0, [x0, #0x288]
//  0x443190: stur w0, [x1, #0x13]
//  0x443194: add x0, PP, #0xe, lsl #12
//  0x443198: ldr x0, [x0, #0xae8]
//  0x44319c: stur w0, [x1, #0x17]
//  0x4431a0: add x0, PP, #0xe, lsl #12
//  0x4431a4: ldr x0, [x0, #0xb60]
//  0x4431a8: stur w0, [x1, #0x1b]
//  0x4431ac: add x0, PP, #0xe, lsl #12
//  0x4431b0: ldr x0, [x0, #0xaf8]
//  0x4431b4: stur w0, [x1, #0x23]
//  0x4431b8: add x0, PP, #0xa, lsl #12
//  0x4431bc: ldr x0, [x0, #0xa8]
//  0x4431c0: stur w0, [x1, #0x2b]
//  0x4431c4: stur xzr, [x1, #0x2f]
//  0x4431c8: ldur x0, [FP, #-8]
//  0x4431cc: stur w0, [x1, #0xb]
//  0x4431d0: bl #0x391a04
//  0x4431d4: stur x0, [FP, #-8]
//  0x4431d8: ldur BARRIER, [FP, #-0x10]
//  0x4431dc: str BARRIER, [SP]
//  0x4431e0: mov x1, x0
//  0x4431e4: add x4, PP, #0xc, lsl #12
//  0x4431e8: ldr x4, [x4, #0x1f8]
//  0x4431ec: bl #0x391490
//  0x4431f0: ldur x0, [FP, #-8]
//  0x4431f4: mov SP, FP
//  0x4431f8: ldp FP, LR, [SP], #0x10
//  0x4431fc: ret 
//  0x443200: bl #0x61fa28
//  0x443204: b #0x44302c
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x443014
  BARRIER = mem(THR, 0x38); // 0x443020
  // frame: FP = SP // 0x443018
  // frame: SP = SP - 0x30 // 0x44301c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x443200
  }
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x44302c
  x0 = "assets/images/3.0x/game_fruit_empty.webp" /* pp+0xf268 */; // 0x443038
  x1 = x0; // 0x443030
  local_m8 = x1; // 0x44303c
  memSet(x1, 0xb, w0); // 0x443040
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x443048
  memSet(x1, 0xf, w0); // 0x44304c
  x0 = mem((PP + 0xf000), 0x270) /* Double */; // 0x443054
  memSet(x1, 0x13, w0); // 0x443058
  x0 = mem((PP + 0xf000), 0x278) /* Double */; // 0x443060
  memSet(x1, 0x17, w0); // 0x443064
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x443068
  x0 = mem((PP + 0xf000), 0x280) /* Double */; // 0x443074
  x2 = x0; // 0x44306c
  local_m10 = x2; // 0x443078
  memSet(x2, 0x13, w0); // 0x44307c
  x1 = "virtual_party_fruitland_page_bet_record_popup_default_text" /* pp+0xc818 */; // 0x443084
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x443088
  getString() /* 0x3a1dcc */; // 0x44308c
  local_m18 = x0; // 0x443090
  AllocationStub_Color() /* 0x31d844 */; // 0x443094
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x44309c
  x1 = x0; // 0x443098
  local_m20 = x1; // 0x4430a0
  memSet(x1, 0x27, w0); // 0x4430a4
  d0 = 1.00000000 /* bits */; // 0x4430a8
  memSet(x1, 7, d0); // 0x4430ac
  d0 = 4604745176648734551; // 0x4430b4
  x17 = PP + 0xe000; // 0x4430b0
  memSet(x1, 0xf, d0); // 0x4430b8
  memSet(x1, 0x17, d0); // 0x4430bc
  memSet(x1, 0x1f, d0); // 0x4430c0
  AllocationStub_TextStyle() /* 0x31abec */; // 0x4430c4
  x0 = NULL + 0x20; // 0x4430cc
  x1 = x0; // 0x4430c8
  local_m28 = x1; // 0x4430d0
  memSet(x1, 7, w0); // 0x4430d4
  x0 = local_m20; // 0x4430d8
  memSet(x1, 0xb, w0); // 0x4430dc
  x0 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x4430e4
  memSet(x1, 0x1f, w0); // 0x4430e8
  AllocationStub_Text() /* 0x393bf8 */; // 0x4430ec
  x0 = local_m18; // 0x4430f4
  x1 = x0; // 0x4430f0
  local_m20 = x1; // 0x4430f8
  memSet(x1, 0xb, w0); // 0x4430fc
  x0 = local_m28; // 0x443100
  memSet(x1, 0x13, w0); // 0x443104
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x443108
  x0 = mem(PP, 0x66c8) /* Double */; // 0x443110
  x3 = x0; // 0x44310c
  local_m18 = x3; // 0x443114
  memSet(x3, 0x13, w0); // 0x443118
  x1 = NULL; // 0x44311c
  x2 = 8; // 0x443120
  sub_0x61f920(); // 0x443124
  x0 = local_m8; // 0x44312c
  x2 = x0; // 0x443128
  local_m28 = x2; // 0x443130
  memSet(x2, 0xf, w0); // 0x443134
  x0 = local_m10; // 0x443138
  memSet(x2, 0x13, w0); // 0x44313c
  x0 = local_m20; // 0x443140
  memSet(x2, 0x17, w0); // 0x443144
  x0 = local_m18; // 0x443148
  memSet(x2, 0x1b, w0); // 0x44314c
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x443150
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x443154
  x0 = local_m28; // 0x44315c
  x1 = x0; // 0x443158
  local_m8 = x1; // 0x443160
  memSet(x1, 0xf, w0); // 0x443164
  x0 = 8; // 0x443168
  memSet(x1, 0xb, w0); // 0x44316c
  AllocationStub_Column() /* 0x39310c */; // 0x443170
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x44317c
  x1 = x0; // 0x443174
  local_m10 = x1; // 0x443180
  memSet(x1, 0xf, w0); // 0x443184
  x0 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x44318c
  memSet(x1, 0x13, w0); // 0x443190
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x443198
  memSet(x1, 0x17, w0); // 0x44319c
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x4431a4
  memSet(x1, 0x1b, w0); // 0x4431a8
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x4431b0
  memSet(x1, 0x23, w0); // 0x4431b4
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x4431bc
  memSet(x1, 0x2b, w0); // 0x4431c0
  memSet(x1, 0x2f, xzr); // 0x4431c4
  x0 = local_m8; // 0x4431c8
  memSet(x1, 0xb, w0); // 0x4431cc
  AllocationStub_Container() /* 0x391a04 */; // 0x4431d0
  local_m8 = x0; // 0x4431d4
  BARRIER = local_m10; // 0x4431d8
  local_0 = BARRIER; // 0x4431dc
  x1 = x0; // 0x4431e0
  x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x4431e8
  Container_ctor() /* 0x391490 */; // 0x4431ec
  SP = FP; // 0x4431f4
  x0 = local_m8; // 0x4431f0
  // frame: FP, LR, mem(SP), 0x10 // 0x4431f8
  return;
}

// launchRecordListWidget
// raw disassembly:
//  0x443208: stp FP, LR, [SP, #-0x10]!
//  0x44320c: mov FP, SP
//  0x443210: sub SP, SP, #0x20
//  0x443214: stur x1, [FP, #-0x10]
//  0x443218: stur x2, [FP, #-0x18]
//  0x44321c: ldr BARRIER, [THR, #0x38]
//  0x443220: cmp SP, BARRIER
//  0x443224: b.ls #0x443358
//  0x443228: ldp x0, x3, [THR, #0x50]
//  0x44322c: add x0, x0, #0x10
//  0x443230: cmp x3, x0
//  0x443234: b.ls #0x443360
//  0x443238: str x0, [THR, #0x50]
//  0x44323c: sub x0, x0, #0xf
//  0x443240: mov x3, #0xe15c
//  0x443244: movk x3, #3, lsl #16
//  0x443248: stur x3, [x0, #-1]
//  0x44324c: stur d0, [x0, #7]
//  0x443250: stur x0, [FP, #-8]
//  0x443254: mov x1, #6
//  0x443258: bl #0x61e890
//  0x44325c: mov x1, x0
//  0x443260: ldur x0, [FP, #-8]
//  0x443264: stur x1, [FP, #-0x20]
//  0x443268: stur w0, [x1, #0xf]
//  0x44326c: ldur x0, [FP, #-0x10]
//  0x443270: lsl x2, x0, #1
//  0x443274: stur w2, [x1, #0x13]
//  0x443278: ldur x0, [FP, #-0x18]
//  0x44327c: stur w0, [x1, #0x17]
//  0x443280: bl #0x31abec
//  0x443284: mov x1, x0
//  0x443288: add x0, NULL, #0x20
//  0x44328c: stur w0, [x1, #7]
//  0x443290: ldr x0, [PP, #0x6050]
//  0x443294: stur w0, [x1, #0xb]
//  0x443298: ldr x0, [PP, #0x7598]
//  0x44329c: stur w0, [x1, #0x1f]
//  0x4432a0: ldur x2, [FP, #-0x20]
//  0x4432a4: stur w1, [x2, #0x1b]
//  0x4432a8: add x1, PP, #0xc, lsl #12
//  0x4432ac: ldr x1, [x1, #0x6b0]
//  0x4432b0: ldr x4, [PP, #0x4c0]
//  0x4432b4: bl #0x3a1dcc
//  0x4432b8: ldur x2, [FP, #-0x20]
//  0x4432bc: stur w0, [x2, #0x1f]
//  0x4432c0: ldurb w16, [x2, #-1]
//  0x4432c4: ldurb w17, [x0, #-1]
//  0x4432c8: and BARRIER, x17, BARRIER, lsr #2
//  0x4432cc: tst BARRIER, HEAP, lsr #32
//  0x4432d0: b.eq #0x4432d8
//  0x4432d4: bl #0x61e06c
//  0x4432d8: add x1, PP, #0xc, lsl #12
//  0x4432dc: ldr x1, [x1, #0x6a0]
//  0x4432e0: ldr x4, [PP, #0x4c0]
//  0x4432e4: bl #0x3a1dcc
//  0x4432e8: ldur x2, [FP, #-0x20]
//  0x4432ec: stur w0, [x2, #0x23]
//  0x4432f0: ldurb w16, [x2, #-1]
//  0x4432f4: ldurb w17, [x0, #-1]
//  0x4432f8: and BARRIER, x17, BARRIER, lsr #2
//  0x4432fc: tst BARRIER, HEAP, lsr #32
//  0x443300: b.eq #0x443308
//  0x443304: bl #0x61e06c
//  0x443308: ldur w0, [x2, #0x17]
//  0x44330c: add x0, x0, HEAP, lsl #32
//  0x443310: ldur w1, [x0, #0xb]
//  0x443314: sbfx x3, x1, #1, #0x1f
//  0x443318: stur x3, [FP, #-0x10]
//  0x44331c: add x1, PP, #0x14, lsl #12
//  0x443320: ldr x1, [x1, #0x440]
//  0x443324: bl #0x61ec54
//  0x443328: stur x0, [FP, #-8]
//  0x44332c: bl #0x3ab5ac
//  0x443330: mov x1, x0
//  0x443334: ldur x2, [FP, #-8]
//  0x443338: ldur x3, [FP, #-0x10]
//  0x44333c: stur x0, [FP, #-8]
//  0x443340: ldr x4, [PP, #0x2e0]
//  0x443344: bl #0x3ab2bc
//  0x443348: ldur x0, [FP, #-8]
//  0x44334c: mov SP, FP
//  0x443350: ldp FP, LR, [SP], #0x10
//  0x443354: ret 
//  0x443358: bl #0x61faa8
//  0x44335c: b #0x443228
//  0x443360: str q0, [SP, #-0x10]!
//  0x443364: stp x1, x2, [SP, #-0x10]!
//  0x443368: bl #0x61f878
//  0x44336c: ldp x1, x2, [SP], #0x10
//  0x443370: ldr q0, [SP], #0x10
//  0x443374: b #0x44324c
//
dynamic launchRecordListWidget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic q0;
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x443208
  // frame: FP = SP // 0x44320c
  // frame: SP = SP - 0x20 // 0x443210
  local_m10 = x1; // 0x443214
  local_m18 = x2; // 0x443218
  BARRIER = mem(THR, 0x38); // 0x44321c
  if (SP <= BARRIER) {
    StackOverflowSharedWithFpuRegsStub_0x61faa8() /* 0x61faa8 */; // 0x443358
  }
  memRead2(THR, 0x50, x0, x3); // 0x443228
  x0 = x0 + 0x10; // 0x44322c
  if (x3 <= x0) {
    local_m10 = q0; // 0x443360
    // frame: x1, x2, mem(SP, -0x10)! // 0x443364
    AllocationStub__Double() /* 0x61f878 */; // 0x443368
    // frame: x1, x2, mem(SP), 0x10 // 0x44336c
    q0 = local_0; // 0x443370
  } else {
    memSet(THR, 0x50, x0); // 0x443238
    x0 = x0 - 0xf; // 0x44323c
    x3 = (x3 & 0xffff) | 0x30000; // 0x443244
    memSet(x0, -1, x3); // 0x443248
  }
  memSet(x0, 7, d0); // 0x44324c
  local_m8 = x0; // 0x443250
  x1 = 6; // 0x443254
  sub_0x61e890(); // 0x443258
  x0 = local_m8; // 0x443260
  x1 = x0; // 0x44325c
  local_m20 = x1; // 0x443264
  memSet(x1, 0xf, w0); // 0x443268
  x0 = local_m10; // 0x44326c
  x2 = (local_m10) << 1; // 0x443270
  memSet(x1, 0x13, w2); // 0x443274
  x0 = local_m18; // 0x443278
  memSet(x1, 0x17, w0); // 0x44327c
  AllocationStub_TextStyle() /* 0x31abec */; // 0x443280
  x0 = NULL + 0x20; // 0x443288
  x1 = x0; // 0x443284
  memSet(x1, 7, w0); // 0x44328c
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x443290
  memSet(x1, 0xb, w0); // 0x443294
  x0 = mem(PP, 0x7598) /* Double */; // 0x443298
  memSet(x1, 0x1f, w0); // 0x44329c
  x2 = local_m20; // 0x4432a0
  memSet(x2, 0x1b, w1); // 0x4432a4
  x1 = "virtual_party_dice_game_bet_big_button" /* pp+0xc6b0 */; // 0x4432ac
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4432b0
  getString() /* 0x3a1dcc */; // 0x4432b4
  x2 = local_m20; // 0x4432b8
  memSet(x2, 0x1f, w0); // 0x4432bc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4432c8
  w16 = mem(x2, -1); // 0x4432c0
  w17 = mem(x0, -1); // 0x4432c4
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x4432c0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4432c4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x4432d4
  }
  x1 = "virtual_party_dice_game_bet_small_button" /* pp+0xc6a0 */; // 0x4432dc
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4432e0
  getString() /* 0x3a1dcc */; // 0x4432e4
  x2 = local_m20; // 0x4432e8
  memSet(x2, 0x23, w0); // 0x4432ec
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4432f8
  w16 = mem(x2, -1); // 0x4432f0
  w17 = mem(x0, -1); // 0x4432f4
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x4432f0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4432f4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x443304
  }
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x443310
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x44330c
  x1 = (mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x443310
  x3 = (((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x443314
  local_m10 = x3; // 0x443318
  x1 = mem((PP + 0x14000), 0x440) /* Function */; // 0x443320
  AllocationStub__Closure() /* 0x61ec54 */; // 0x443324
  local_m8 = x0; // 0x443328
  AllocationStub_ListView() /* 0x3ab5ac */; // 0x44332c
  x1 = x0; // 0x443330
  x2 = local_m8; // 0x443334
  x3 = local_m10; // 0x443338
  local_m8 = x0; // 0x44333c
  x4 = mem(PP, 0x2e0) /* ImmutableArray */; // 0x443340
  ListView_ctor_builder() /* 0x3ab2bc */; // 0x443344
  SP = FP; // 0x44334c
  x0 = local_m8; // 0x443348
  // frame: FP, LR, mem(SP), 0x10 // 0x443350
  return;
}

// anon_closure
// raw disassembly:
//  0x443378: stp FP, LR, [SP, #-0x10]!
//  0x44337c: mov FP, SP
//  0x443380: sub SP, SP, #0x58
//  0x443384: ldr x0, [FP, #0x20]
//  0x443388: ldur w2, [x0, #0x17]
//  0x44338c: add x2, x2, HEAP, lsl #32
//  0x443390: stur x2, [FP, #-0x10]
//  0x443394: ldr BARRIER, [THR, #0x38]
//  0x443398: cmp SP, BARRIER
//  0x44339c: b.ls #0x443a88
//  0x4433a0: ldur w3, [x2, #0x17]
//  0x4433a4: add x3, x3, HEAP, lsl #32
//  0x4433a8: ldur w0, [x3, #0xb]
//  0x4433ac: ldr x1, [FP, #0x10]
//  0x4433b0: sbfx x4, x1, #1, #0x1f
//  0x4433b4: tbz w1, #0, #0x4433bc
//  0x4433b8: ldur x4, [x1, #7]
//  0x4433bc: sbfx x1, x0, #1, #0x1f
//  0x4433c0: mov x0, x1
//  0x4433c4: mov x1, x4
//  0x4433c8: cmp x1, x0
//  0x4433cc: b.hs #0x443a90
//  0x4433d0: ldur w0, [x3, #0xf]
//  0x4433d4: add x0, x0, HEAP, lsl #32
//  0x4433d8: add BARRIER, x0, x4, lsl #2
//  0x4433dc: ldur w1, [BARRIER, #0xf]
//  0x4433e0: add x1, x1, HEAP, lsl #32
//  0x4433e4: stur x1, [FP, #-8]
//  0x4433e8: bl #0x2e3578
//  0x4433ec: stur x0, [FP, #-0x30]
//  0x4433f0: stur xzr, [x0, #7]
//  0x4433f4: fmov d0, #5.00000000
//  0x4433f8: stur d0, [x0, #0xf]
//  0x4433fc: stur xzr, [x0, #0x17]
//  0x443400: stur xzr, [x0, #0x1f]
//  0x443404: ldur x1, [FP, #-0x10]
//  0x443408: ldur w2, [x1, #0xf]
//  0x44340c: add x2, x2, HEAP, lsl #32
//  0x443410: ldur x3, [FP, #-8]
//  0x443414: stur x2, [FP, #-0x28]
//  0x443418: ldur w4, [x3, #0x13]
//  0x44341c: add x4, x4, HEAP, lsl #32
//  0x443420: cmp w4, w22
//  0x443424: b.ne #0x44342c
//  0x443428: ldr x4, [PP, #0x148]
//  0x44342c: stur x4, [FP, #-0x20]
//  0x443430: ldur w5, [x1, #0x1b]
//  0x443434: add x5, x5, HEAP, lsl #32
//  0x443438: stur x5, [FP, #-0x18]
//  0x44343c: bl #0x393bf8
//  0x443440: mov x1, x0
//  0x443444: ldur x0, [FP, #-0x20]
//  0x443448: stur x1, [FP, #-0x38]
//  0x44344c: stur w0, [x1, #0xb]
//  0x443450: ldur x0, [FP, #-0x18]
//  0x443454: stur w0, [x1, #0x13]
//  0x443458: ldur x2, [FP, #-8]
//  0x44345c: ldur w3, [x2, #0x17]
//  0x443460: add x3, x3, HEAP, lsl #32
//  0x443464: cmp w3, w22
//  0x443468: b.ne #0x443474
//  0x44346c: ldr x4, [PP, #0x148]
//  0x443470: b #0x443478
//  0x443474: mov x4, x3
//  0x443478: ldur x3, [FP, #-0x10]
//  0x44347c: stur x4, [FP, #-0x20]
//  0x443480: bl #0x393bf8
//  0x443484: mov x3, x0
//  0x443488: ldur x0, [FP, #-0x20]
//  0x44348c: stur x3, [FP, #-0x40]
//  0x443490: stur w0, [x3, #0xb]
//  0x443494: ldur x0, [FP, #-0x18]
//  0x443498: stur w0, [x3, #0x13]
//  0x44349c: mov x1, NULL
//  0x4434a0: mov x2, #4
//  0x4434a4: bl #0x61f920
//  0x4434a8: mov x2, x0
//  0x4434ac: ldur x0, [FP, #-0x38]
//  0x4434b0: stur x2, [FP, #-0x18]
//  0x4434b4: stur w0, [x2, #0xf]
//  0x4434b8: ldur x0, [FP, #-0x40]
//  0x4434bc: stur w0, [x2, #0x13]
//  0x4434c0: ldr x1, [PP, #0x5c58]
//  0x4434c4: bl #0x61e854
//  0x4434c8: mov x1, x0
//  0x4434cc: ldur x0, [FP, #-0x18]
//  0x4434d0: stur x1, [FP, #-0x20]
//  0x4434d4: stur w0, [x1, #0xf]
//  0x4434d8: mov x2, #4
//  0x4434dc: stur w2, [x1, #0xb]
//  0x4434e0: bl #0x39310c
//  0x4434e4: mov x1, x0
//  0x4434e8: add x0, PP, #0xa, lsl #12
//  0x4434ec: ldr x0, [x0, #0x858]
//  0x4434f0: stur x1, [FP, #-0x18]
//  0x4434f4: stur w0, [x1, #0xf]
//  0x4434f8: add x2, PP, #0xe, lsl #12
//  0x4434fc: ldr x2, [x2, #0xae0]
//  0x443500: stur w2, [x1, #0x13]
//  0x443504: add x3, PP, #0xe, lsl #12
//  0x443508: ldr x3, [x3, #0xae8]
//  0x44350c: stur w3, [x1, #0x17]
//  0x443510: add x4, PP, #0xe, lsl #12
//  0x443514: ldr x4, [x4, #0xb60]
//  0x443518: stur w4, [x1, #0x1b]
//  0x44351c: add x5, PP, #0xe, lsl #12
//  0x443520: ldr x5, [x5, #0xaf8]
//  0x443524: stur w5, [x1, #0x23]
//  0x443528: add x6, PP, #0xa, lsl #12
//  0x44352c: ldr x6, [x6, #0xa8]
//  0x443530: stur w6, [x1, #0x2b]
//  0x443534: stur xzr, [x1, #0x2f]
//  0x443538: ldur x7, [FP, #-0x20]
//  0x44353c: stur w7, [x1, #0xb]
//  0x443540: bl #0x391a04
//  0x443544: stur x0, [FP, #-0x20]
//  0x443548: ldur BARRIER, [FP, #-0x30]
//  0x44354c: ldur LR, [FP, #-0x28]
//  0x443550: stp LR, BARRIER, [SP, #8]
//  0x443554: ldur BARRIER, [FP, #-0x18]
//  0x443558: str BARRIER, [SP]
//  0x44355c: mov x1, x0
//  0x443560: add x4, PP, #0x11, lsl #12
//  0x443564: ldr x4, [x4, #0x3b0]
//  0x443568: bl #0x391490
//  0x44356c: ldur x0, [FP, #-0x10]
//  0x443570: ldur w1, [x0, #0x13]
//  0x443574: cmp w1, #2
//  0x443578: b.ne #0x443604
//  0x44357c: ldur x1, [FP, #-8]
//  0x443580: ldur w2, [x0, #0xf]
//  0x443584: add x2, x2, HEAP, lsl #32
//  0x443588: stur x2, [FP, #-0x30]
//  0x44358c: ldur w3, [x1, #7]
//  0x443590: add x3, x3, HEAP, lsl #32
//  0x443594: cmp w3, w22
//  0x443598: b.ne #0x4435a0
//  0x44359c: ldr x3, [PP, #0x148]
//  0x4435a0: stur x3, [FP, #-0x28]
//  0x4435a4: ldur w4, [x0, #0x1b]
//  0x4435a8: add x4, x4, HEAP, lsl #32
//  0x4435ac: stur x4, [FP, #-0x18]
//  0x4435b0: bl #0x393bf8
//  0x4435b4: mov x1, x0
//  0x4435b8: ldur x0, [FP, #-0x28]
//  0x4435bc: stur x1, [FP, #-0x38]
//  0x4435c0: stur w0, [x1, #0xb]
//  0x4435c4: ldur x0, [FP, #-0x18]
//  0x4435c8: stur w0, [x1, #0x13]
//  0x4435cc: bl #0x391a04
//  0x4435d0: stur x0, [FP, #-0x18]
//  0x4435d4: ldur BARRIER, [FP, #-0x30]
//  0x4435d8: add LR, PP, #0xe, lsl #12
//  0x4435dc: ldr LR, [LR, #0xaa0]
//  0x4435e0: stp LR, BARRIER, [SP, #8]
//  0x4435e4: ldur BARRIER, [FP, #-0x38]
//  0x4435e8: str BARRIER, [SP]
//  0x4435ec: mov x1, x0
//  0x4435f0: add x4, PP, #0x10, lsl #12
//  0x4435f4: ldr x4, [x4, #0xd40]
//  0x4435f8: bl #0x391490
//  0x4435fc: ldur x1, [FP, #-0x18]
//  0x443600: b #0x443698
//  0x443604: ldur x1, [FP, #-8]
//  0x443608: ldur w2, [x0, #0xf]
//  0x44360c: add x2, x2, HEAP, lsl #32
//  0x443610: stur x2, [FP, #-0x30]
//  0x443614: ldur w3, [x1, #0x1f]
//  0x443618: add x3, x3, HEAP, lsl #32
//  0x44361c: cmp w3, #2
//  0x443620: b.ne #0x443630
//  0x443624: ldur w3, [x0, #0x1f]
//  0x443628: add x3, x3, HEAP, lsl #32
//  0x44362c: b #0x443638
//  0x443630: ldur w3, [x0, #0x23]
//  0x443634: add x3, x3, HEAP, lsl #32
//  0x443638: stur x3, [FP, #-0x28]
//  0x44363c: ldur w4, [x0, #0x1b]
//  0x443640: add x4, x4, HEAP, lsl #32
//  0x443644: stur x4, [FP, #-0x18]
//  0x443648: bl #0x393bf8
//  0x44364c: mov x1, x0
//  0x443650: ldur x0, [FP, #-0x28]
//  0x443654: stur x1, [FP, #-0x38]
//  0x443658: stur w0, [x1, #0xb]
//  0x44365c: ldur x0, [FP, #-0x18]
//  0x443660: stur w0, [x1, #0x13]
//  0x443664: bl #0x391a04
//  0x443668: stur x0, [FP, #-0x18]
//  0x44366c: ldur BARRIER, [FP, #-0x30]
//  0x443670: add LR, PP, #0xe, lsl #12
//  0x443674: ldr LR, [LR, #0xaa0]
//  0x443678: stp LR, BARRIER, [SP, #8]
//  0x44367c: ldur BARRIER, [FP, #-0x38]
//  0x443680: str BARRIER, [SP]
//  0x443684: mov x1, x0
//  0x443688: add x4, PP, #0x10, lsl #12
//  0x44368c: ldr x4, [x4, #0xd40]
//  0x443690: bl #0x391490
//  0x443694: ldur x1, [FP, #-0x18]
//  0x443698: ldur x0, [FP, #-0x10]
//  0x44369c: stur x1, [FP, #-0x38]
//  0x4436a0: ldur w2, [x0, #0x13]
//  0x4436a4: cmp w2, #2
//  0x4436a8: b.ne #0x443734
//  0x4436ac: ldur x2, [FP, #-8]
//  0x4436b0: ldur w3, [x0, #0xf]
//  0x4436b4: add x3, x3, HEAP, lsl #32
//  0x4436b8: stur x3, [FP, #-0x30]
//  0x4436bc: ldur w4, [x2, #0xb]
//  0x4436c0: add x4, x4, HEAP, lsl #32
//  0x4436c4: cmp w4, w22
//  0x4436c8: b.ne #0x4436d0
//  0x4436cc: ldr x4, [PP, #0x148]
//  0x4436d0: stur x4, [FP, #-0x28]
//  0x4436d4: ldur w5, [x0, #0x1b]
//  0x4436d8: add x5, x5, HEAP, lsl #32
//  0x4436dc: stur x5, [FP, #-0x18]
//  0x4436e0: bl #0x393bf8
//  0x4436e4: mov x1, x0
//  0x4436e8: ldur x0, [FP, #-0x28]
//  0x4436ec: stur x1, [FP, #-0x40]
//  0x4436f0: stur w0, [x1, #0xb]
//  0x4436f4: ldur x0, [FP, #-0x18]
//  0x4436f8: stur w0, [x1, #0x13]
//  0x4436fc: bl #0x391a04
//  0x443700: stur x0, [FP, #-0x18]
//  0x443704: ldur BARRIER, [FP, #-0x30]
//  0x443708: add LR, PP, #0xe, lsl #12
//  0x44370c: ldr LR, [LR, #0xaa0]
//  0x443710: stp LR, BARRIER, [SP, #8]
//  0x443714: ldur BARRIER, [FP, #-0x40]
//  0x443718: str BARRIER, [SP]
//  0x44371c: mov x1, x0
//  0x443720: add x4, PP, #0x10, lsl #12
//  0x443724: ldr x4, [x4, #0xd40]
//  0x443728: bl #0x391490
//  0x44372c: ldur x2, [FP, #-0x18]
//  0x443730: b #0x4437b8
//  0x443734: ldur x1, [FP, #-8]
//  0x443738: ldur w2, [x0, #0xf]
//  0x44373c: add x2, x2, HEAP, lsl #32
//  0x443740: stur x2, [FP, #-0x30]
//  0x443744: ldur w3, [x1, #0xf]
//  0x443748: add x3, x3, HEAP, lsl #32
//  0x44374c: cmp w3, w22
//  0x443750: b.ne #0x443758
//  0x443754: ldr x3, [PP, #0x148]
//  0x443758: stur x3, [FP, #-0x28]
//  0x44375c: ldur w4, [x0, #0x1b]
//  0x443760: add x4, x4, HEAP, lsl #32
//  0x443764: stur x4, [FP, #-0x18]
//  0x443768: bl #0x393bf8
//  0x44376c: mov x1, x0
//  0x443770: ldur x0, [FP, #-0x28]
//  0x443774: stur x1, [FP, #-0x40]
//  0x443778: stur w0, [x1, #0xb]
//  0x44377c: ldur x0, [FP, #-0x18]
//  0x443780: stur w0, [x1, #0x13]
//  0x443784: bl #0x391a04
//  0x443788: stur x0, [FP, #-0x18]
//  0x44378c: ldur BARRIER, [FP, #-0x30]
//  0x443790: add LR, PP, #0xe, lsl #12
//  0x443794: ldr LR, [LR, #0xaa0]
//  0x443798: stp LR, BARRIER, [SP, #8]
//  0x44379c: ldur BARRIER, [FP, #-0x40]
//  0x4437a0: str BARRIER, [SP]
//  0x4437a4: mov x1, x0
//  0x4437a8: add x4, PP, #0x10, lsl #12
//  0x4437ac: ldr x4, [x4, #0xd40]
//  0x4437b0: bl #0x391490
//  0x4437b4: ldur x2, [FP, #-0x18]
//  0x4437b8: ldur x0, [FP, #-0x10]
//  0x4437bc: ldur x1, [FP, #-8]
//  0x4437c0: stur x2, [FP, #-0x28]
//  0x4437c4: ldur w3, [x0, #0xf]
//  0x4437c8: add x3, x3, HEAP, lsl #32
//  0x4437cc: stur x3, [FP, #-0x18]
//  0x4437d0: ldur w0, [x1, #0x1b]
//  0x4437d4: add x0, x0, HEAP, lsl #32
//  0x4437d8: cmp w0, #2
//  0x4437dc: b.ne #0x4437e8
//  0x4437e0: ldr x5, [PP, #0x1d98]
//  0x4437e4: b #0x4437ec
//  0x4437e8: ldr x5, [PP, #0x3f00]
//  0x4437ec: ldur x4, [FP, #-0x20]
//  0x4437f0: ldur x0, [FP, #-0x38]
//  0x4437f4: ldur w6, [x1, #0xf]
//  0x4437f8: add x6, x6, HEAP, lsl #32
//  0x4437fc: cmp w6, w22
//  0x443800: b.eq #0x443a94
//  0x443804: stp x6, x5, [SP]
//  0x443808: bl #0x281718
//  0x44380c: stur x0, [FP, #-8]
//  0x443810: bl #0x31d844
//  0x443814: mov x1, x0
//  0x443818: ldr x0, [PP, #0x6310]
//  0x44381c: stur x1, [FP, #-0x10]
//  0x443820: stur w0, [x1, #0x27]
//  0x443824: fmov d0, #1.00000000
//  0x443828: stur d0, [x1, #7]
//  0x44382c: stur d0, [x1, #0xf]
//  0x443830: add x17, PP, #0x11, lsl #12
//  0x443834: ldr d1, [x17, #0x378]
//  0x443838: stur d1, [x1, #0x17]
//  0x44383c: add x17, PP, #0x14, lsl #12
//  0x443840: ldr d1, [x17, #0x448]
//  0x443844: stur d1, [x1, #0x1f]
//  0x443848: bl #0x31abec
//  0x44384c: mov x1, x0
//  0x443850: add x0, NULL, #0x20
//  0x443854: stur x1, [FP, #-0x30]
//  0x443858: stur w0, [x1, #7]
//  0x44385c: ldur x0, [FP, #-0x10]
//  0x443860: stur w0, [x1, #0xb]
//  0x443864: ldr x0, [PP, #0x7598]
//  0x443868: stur w0, [x1, #0x1f]
//  0x44386c: bl #0x393bf8
//  0x443870: mov x1, x0
//  0x443874: ldur x0, [FP, #-8]
//  0x443878: stur x1, [FP, #-0x10]
//  0x44387c: stur w0, [x1, #0xb]
//  0x443880: ldur x0, [FP, #-0x30]
//  0x443884: stur w0, [x1, #0x13]
//  0x443888: bl #0x391a04
//  0x44388c: stur x0, [FP, #-8]
//  0x443890: ldur BARRIER, [FP, #-0x18]
//  0x443894: add LR, PP, #0xe, lsl #12
//  0x443898: ldr LR, [LR, #0xaa0]
//  0x44389c: stp LR, BARRIER, [SP, #8]
//  0x4438a0: ldur BARRIER, [FP, #-0x10]
//  0x4438a4: str BARRIER, [SP]
//  0x4438a8: mov x1, x0
//  0x4438ac: add x4, PP, #0x10, lsl #12
//  0x4438b0: ldr x4, [x4, #0xd40]
//  0x4438b4: bl #0x391490
//  0x4438b8: mov x1, NULL
//  0x4438bc: mov x2, #8
//  0x4438c0: bl #0x61f920
//  0x4438c4: mov x2, x0
//  0x4438c8: ldur x0, [FP, #-0x20]
//  0x4438cc: stur x2, [FP, #-0x10]
//  0x4438d0: stur w0, [x2, #0xf]
//  0x4438d4: ldur x0, [FP, #-0x38]
//  0x4438d8: stur w0, [x2, #0x13]
//  0x4438dc: ldur x0, [FP, #-0x28]
//  0x4438e0: stur w0, [x2, #0x17]
//  0x4438e4: ldur x0, [FP, #-8]
//  0x4438e8: stur w0, [x2, #0x1b]
//  0x4438ec: ldr x1, [PP, #0x5c58]
//  0x4438f0: bl #0x61e854
//  0x4438f4: mov x1, x0
//  0x4438f8: ldur x0, [FP, #-0x10]
//  0x4438fc: stur x1, [FP, #-8]
//  0x443900: stur w0, [x1, #0xf]
//  0x443904: mov x0, #8
//  0x443908: stur w0, [x1, #0xb]
//  0x44390c: bl #0x3a1414
//  0x443910: mov x1, x0
//  0x443914: ldr x0, [PP, #0x5140]
//  0x443918: stur x1, [FP, #-0x10]
//  0x44391c: stur w0, [x1, #0xf]
//  0x443920: add x0, PP, #0xe, lsl #12
//  0x443924: ldr x0, [x0, #0xae0]
//  0x443928: stur w0, [x1, #0x13]
//  0x44392c: add x2, PP, #0xe, lsl #12
//  0x443930: ldr x2, [x2, #0xae8]
//  0x443934: stur w2, [x1, #0x17]
//  0x443938: add x3, PP, #0xe, lsl #12
//  0x44393c: ldr x3, [x3, #0xb60]
//  0x443940: stur w3, [x1, #0x1b]
//  0x443944: add x4, PP, #0xe, lsl #12
//  0x443948: ldr x4, [x4, #0xaf8]
//  0x44394c: stur w4, [x1, #0x23]
//  0x443950: add x5, PP, #0xa, lsl #12
//  0x443954: ldr x5, [x5, #0xa8]
//  0x443958: stur w5, [x1, #0x2b]
//  0x44395c: stur xzr, [x1, #0x2f]
//  0x443960: ldur x6, [FP, #-8]
//  0x443964: stur w6, [x1, #0xb]
//  0x443968: bl #0x391a04
//  0x44396c: stur x0, [FP, #-8]
//  0x443970: add BARRIER, PP, #0xa, lsl #12
//  0x443974: ldr BARRIER, [BARRIER, #0x4e0]
//  0x443978: ldur LR, [FP, #-0x10]
//  0x44397c: stp LR, BARRIER, [SP]
//  0x443980: mov x1, x0
//  0x443984: add x4, PP, #0xf, lsl #12
//  0x443988: ldr x4, [x4, #0x5f0]
//  0x44398c: bl #0x391490
//  0x443990: bl #0x31d844
//  0x443994: mov x1, x0
//  0x443998: ldr x0, [PP, #0x6310]
//  0x44399c: stur x1, [FP, #-0x10]
//  0x4439a0: stur w0, [x1, #0x27]
//  0x4439a4: ldr d0, [PP, #0x6658]
//  0x4439a8: stur d0, [x1, #7]
//  0x4439ac: fmov d0, #1.00000000
//  0x4439b0: stur d0, [x1, #0xf]
//  0x4439b4: stur d0, [x1, #0x17]
//  0x4439b8: stur d0, [x1, #0x1f]
//  0x4439bc: bl #0x391a04
//  0x4439c0: stur x0, [FP, #-0x18]
//  0x4439c4: ldr BARRIER, [PP, #0x53b0]
//  0x4439c8: ldur LR, [FP, #-0x10]
//  0x4439cc: stp LR, BARRIER, [SP]
//  0x4439d0: mov x1, x0
//  0x4439d4: add x4, PP, #0xe, lsl #12
//  0x4439d8: ldr x4, [x4, #0xeb0]
//  0x4439dc: bl #0x391490
//  0x4439e0: mov x1, NULL
//  0x4439e4: mov x2, #4
//  0x4439e8: bl #0x61f920
//  0x4439ec: mov x2, x0
//  0x4439f0: ldur x0, [FP, #-8]
//  0x4439f4: stur x2, [FP, #-0x10]
//  0x4439f8: stur w0, [x2, #0xf]
//  0x4439fc: ldur x0, [FP, #-0x18]
//  0x443a00: stur w0, [x2, #0x13]
//  0x443a04: ldr x1, [PP, #0x5c58]
//  0x443a08: bl #0x61e854
//  0x443a0c: mov x1, x0
//  0x443a10: ldur x0, [FP, #-0x10]
//  0x443a14: stur x1, [FP, #-8]
//  0x443a18: stur w0, [x1, #0xf]
//  0x443a1c: mov x0, #4
//  0x443a20: stur w0, [x1, #0xb]
//  0x443a24: bl #0x39310c
//  0x443a28: add x1, PP, #0xa, lsl #12
//  0x443a2c: ldr x1, [x1, #0x858]
//  0x443a30: stur w1, [x0, #0xf]
//  0x443a34: add x1, PP, #0xe, lsl #12
//  0x443a38: ldr x1, [x1, #0xae0]
//  0x443a3c: stur w1, [x0, #0x13]
//  0x443a40: add x1, PP, #0xe, lsl #12
//  0x443a44: ldr x1, [x1, #0xae8]
//  0x443a48: stur w1, [x0, #0x17]
//  0x443a4c: add x1, PP, #0xe, lsl #12
//  0x443a50: ldr x1, [x1, #0xb60]
//  0x443a54: stur w1, [x0, #0x1b]
//  0x443a58: add x1, PP, #0xe, lsl #12
//  0x443a5c: ldr x1, [x1, #0xaf8]
//  0x443a60: stur w1, [x0, #0x23]
//  0x443a64: add x1, PP, #0xa, lsl #12
//  0x443a68: ldr x1, [x1, #0xa8]
//  0x443a6c: stur w1, [x0, #0x2b]
//  0x443a70: stur xzr, [x0, #0x2f]
//  0x443a74: ldur x1, [FP, #-8]
//  0x443a78: stur w1, [x0, #0xb]
//  0x443a7c: mov SP, FP
//  0x443a80: ldp FP, LR, [SP], #0x10
//  0x443a84: ret 
//  0x443a88: bl #0x61fa28
//  0x443a8c: b #0x4433a0
//  0x443a90: bl #0x61fe70
//  0x443a94: bl #0x61ffd0
//
dynamic anon_closure() {
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
  dynamic w4;
  dynamic w5;
  dynamic w6;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x7;
  // frame: FP, LR, mem(SP, -0x10)! // 0x443378
  // frame: FP = SP // 0x44337c
  // frame: SP = SP - 0x58 // 0x443380
  w2 = mem((local_20), 0x17); // 0x443388
  x0 = local_20; // 0x443384
  x2 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x44338c
  local_m10 = x2; // 0x443390
  BARRIER = mem(THR, 0x38); // 0x443394
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x443a88
  }
  w0 = mem(((w3 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x4433a8
  x0 = (mem(((w3 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x4433a8
  x1 = local_10; // 0x4433ac
  x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x4433a4
  x4 = ((local_10) >> 1) & 0x7fffffff; // 0x4433b0
  if (x1 & (1 << 0) == 0) {
  } else {
    x4 = mem(x1, 7); // 0x4433b8
  }
  x0 = (x0 >> 1) & 0x7fffffff; // 0x4433c0
  x1 = x4; // 0x4433c4
  if (x1 >= x0) {
    RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x443a90
  } else {
    BARRIER = ((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2); // 0x4433d8
    w1 = mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2)), 0xf); // 0x4433dc
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4433d4
    x1 = ((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4433e0
    local_m8 = x1; // 0x4433e4
    AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x4433e8
    local_m30 = x0; // 0x4433ec
    memSet(x0, 7, xzr); // 0x4433f0
    d0 = 5.00000000 /* bits */; // 0x4433f4
    memSet(x0, 0xf, d0); // 0x4433f8
    memSet(x0, 0x17, xzr); // 0x4433fc
    memSet(x0, 0x1f, xzr); // 0x443400
    w2 = mem((local_m10), 0xf); // 0x443408
    x1 = local_m10; // 0x443404
    x2 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x44340c
    x3 = local_m8; // 0x443410
    local_m28 = x2; // 0x443414
    w4 = mem(x3, 0x13); // 0x443418
    x4 = ((mem(x3, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x44341c
    if (w4 != w22) {
    } else {
      x4 = "" /* pp+0x148 */; // 0x443428
    }
    local_m20 = x4; // 0x44342c
    w5 = mem(x1, 0x1b); // 0x443430
    x5 = ((mem(x1, 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x443434
    local_m18 = x5; // 0x443438
    AllocationStub_Text() /* 0x393bf8 */; // 0x44343c
    x0 = local_m20; // 0x443444
    x1 = x0; // 0x443440
    local_m38 = x1; // 0x443448
    memSet(x1, 0xb, w0); // 0x44344c
    x0 = local_m18; // 0x443450
    memSet(x1, 0x13, w0); // 0x443454
    w3 = mem((local_m8), 0x17); // 0x44345c
    x2 = local_m8; // 0x443458
    x3 = ((mem((local_m8), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x443460
    if (w3 != w22) {
      x4 = x3; // 0x443474
    } else {
      x4 = "" /* pp+0x148 */; // 0x44346c
    }
    x3 = local_m10; // 0x443478
    local_m20 = x4; // 0x44347c
    AllocationStub_Text() /* 0x393bf8 */; // 0x443480
    x0 = local_m20; // 0x443488
    x3 = x0; // 0x443484
    local_m40 = x3; // 0x44348c
    memSet(x3, 0xb, w0); // 0x443490
    x0 = local_m18; // 0x443494
    memSet(x3, 0x13, w0); // 0x443498
    x1 = NULL; // 0x44349c
    x2 = 4; // 0x4434a0
    sub_0x61f920(); // 0x4434a4
    x0 = local_m38; // 0x4434ac
    x2 = x0; // 0x4434a8
    local_m18 = x2; // 0x4434b0
    memSet(x2, 0xf, w0); // 0x4434b4
    x0 = local_m40; // 0x4434b8
    memSet(x2, 0x13, w0); // 0x4434bc
    x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x4434c0
    AllocationStub__GrowableList() /* 0x61e854 */; // 0x4434c4
    x0 = local_m18; // 0x4434cc
    x1 = x0; // 0x4434c8
    local_m20 = x1; // 0x4434d0
    memSet(x1, 0xf, w0); // 0x4434d4
    x2 = 4; // 0x4434d8
    memSet(x1, 0xb, w2); // 0x4434dc
    AllocationStub_Column() /* 0x39310c */; // 0x4434e0
    x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x4434ec
    x1 = x0; // 0x4434e4
    local_m18 = x1; // 0x4434f0
    memSet(x1, 0xf, w0); // 0x4434f4
    x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x4434fc
    memSet(x1, 0x13, w2); // 0x443500
    x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x443508
    memSet(x1, 0x17, w3); // 0x44350c
    x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x443514
    memSet(x1, 0x1b, w4); // 0x443518
    x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x443520
    memSet(x1, 0x23, w5); // 0x443524
    x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x44352c
    memSet(x1, 0x2b, w6); // 0x443530
    memSet(x1, 0x2f, xzr); // 0x443534
    x7 = local_m20; // 0x443538
    memSet(x1, 0xb, w7); // 0x44353c
    AllocationStub_Container() /* 0x391a04 */; // 0x443540
    local_m20 = x0; // 0x443544
    BARRIER = local_m30; // 0x443548
    LR = local_m28; // 0x44354c
    // frame: LR, BARRIER, mem(SP, 8) // 0x443550
    BARRIER = local_m18; // 0x443554
    local_0 = BARRIER; // 0x443558
    x1 = x0; // 0x44355c
    x4 = mem((PP + 0x11000), 0x3b0) /* ImmutableArray */; // 0x443564
    Container_ctor() /* 0x391490 */; // 0x443568
    w1 = mem((local_m10), 0x13); // 0x443570
    x0 = local_m10; // 0x44356c
    x1 = (mem((local_m10), 0x13)) & 0xffffffff; // 0x443570
    if (w1 != 2) {
      w2 = mem(x0, 0xf); // 0x443608
      x1 = local_m8; // 0x443604
      x2 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x44360c
      local_m30 = x2; // 0x443610
      w3 = mem(x1, 0x1f); // 0x443614
      x3 = ((mem(x1, 0x1f)) & 0xffffffff) + (HEAP << 32); // 0x443618
      if (w3 != 2) {
        x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x443634
      } else {
        x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x443628
      }
      local_m28 = x3; // 0x443638
      w4 = mem(x0, 0x1b); // 0x44363c
      x4 = ((mem(x0, 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x443640
      local_m18 = x4; // 0x443644
      AllocationStub_Text() /* 0x393bf8 */; // 0x443648
      x0 = local_m28; // 0x443650
      x1 = x0; // 0x44364c
      local_m38 = x1; // 0x443654
      memSet(x1, 0xb, w0); // 0x443658
      x0 = local_m18; // 0x44365c
      memSet(x1, 0x13, w0); // 0x443660
      AllocationStub_Container() /* 0x391a04 */; // 0x443664
      local_m18 = x0; // 0x443668
      BARRIER = local_m30; // 0x44366c
      LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x443674
      // frame: LR, BARRIER, mem(SP, 8) // 0x443678
      BARRIER = local_m38; // 0x44367c
      local_0 = BARRIER; // 0x443680
      x1 = x0; // 0x443684
      x4 = mem((PP + 0x10000), 0xd40) /* ImmutableArray */; // 0x44368c
      Container_ctor() /* 0x391490 */; // 0x443690
      x1 = local_m18; // 0x443694
    } else {
      w2 = mem(x0, 0xf); // 0x443580
      x1 = local_m8; // 0x44357c
      x2 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x443584
      local_m30 = x2; // 0x443588
      w3 = mem(x1, 7); // 0x44358c
      x3 = ((mem(x1, 7)) & 0xffffffff) + (HEAP << 32); // 0x443590
      if (w3 != w22) {
      } else {
        x3 = "" /* pp+0x148 */; // 0x44359c
      }
      local_m28 = x3; // 0x4435a0
      w4 = mem(x0, 0x1b); // 0x4435a4
      x4 = ((mem(x0, 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x4435a8
      local_m18 = x4; // 0x4435ac
      AllocationStub_Text() /* 0x393bf8 */; // 0x4435b0
      x0 = local_m28; // 0x4435b8
      x1 = x0; // 0x4435b4
      local_m38 = x1; // 0x4435bc
      memSet(x1, 0xb, w0); // 0x4435c0
      x0 = local_m18; // 0x4435c4
      memSet(x1, 0x13, w0); // 0x4435c8
      AllocationStub_Container() /* 0x391a04 */; // 0x4435cc
      local_m18 = x0; // 0x4435d0
      BARRIER = local_m30; // 0x4435d4
      LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x4435dc
      // frame: LR, BARRIER, mem(SP, 8) // 0x4435e0
      BARRIER = local_m38; // 0x4435e4
      local_0 = BARRIER; // 0x4435e8
      x1 = x0; // 0x4435ec
      x4 = mem((PP + 0x10000), 0xd40) /* ImmutableArray */; // 0x4435f4
      Container_ctor() /* 0x391490 */; // 0x4435f8
      x1 = local_m18; // 0x4435fc
    }
    x0 = local_m10; // 0x443698
    local_m38 = x1; // 0x44369c
    w2 = mem(x0, 0x13); // 0x4436a0
    x2 = (mem(x0, 0x13)) & 0xffffffff; // 0x4436a0
    if (w2 != 2) {
      w2 = mem(x0, 0xf); // 0x443738
      x1 = local_m8; // 0x443734
      x2 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x44373c
      local_m30 = x2; // 0x443740
      w3 = mem(x1, 0xf); // 0x443744
      x3 = ((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x443748
      if (w3 != w22) {
      } else {
        x3 = "" /* pp+0x148 */; // 0x443754
      }
      local_m28 = x3; // 0x443758
      w4 = mem(x0, 0x1b); // 0x44375c
      x4 = ((mem(x0, 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x443760
      local_m18 = x4; // 0x443764
      AllocationStub_Text() /* 0x393bf8 */; // 0x443768
      x0 = local_m28; // 0x443770
      x1 = x0; // 0x44376c
      local_m40 = x1; // 0x443774
      memSet(x1, 0xb, w0); // 0x443778
      x0 = local_m18; // 0x44377c
      memSet(x1, 0x13, w0); // 0x443780
      AllocationStub_Container() /* 0x391a04 */; // 0x443784
      local_m18 = x0; // 0x443788
      BARRIER = local_m30; // 0x44378c
      LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x443794
      // frame: LR, BARRIER, mem(SP, 8) // 0x443798
      BARRIER = local_m40; // 0x44379c
      local_0 = BARRIER; // 0x4437a0
      x1 = x0; // 0x4437a4
      x4 = mem((PP + 0x10000), 0xd40) /* ImmutableArray */; // 0x4437ac
      Container_ctor() /* 0x391490 */; // 0x4437b0
      x2 = local_m18; // 0x4437b4
    } else {
      w3 = mem(x0, 0xf); // 0x4436b0
      x2 = local_m8; // 0x4436ac
      x3 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4436b4
      local_m30 = x3; // 0x4436b8
      w4 = mem(x2, 0xb); // 0x4436bc
      x4 = ((mem(x2, 0xb)) & 0xffffffff) + (HEAP << 32); // 0x4436c0
      if (w4 != w22) {
      } else {
        x4 = "" /* pp+0x148 */; // 0x4436cc
      }
      local_m28 = x4; // 0x4436d0
      w5 = mem(x0, 0x1b); // 0x4436d4
      x5 = ((mem(x0, 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x4436d8
      local_m18 = x5; // 0x4436dc
      AllocationStub_Text() /* 0x393bf8 */; // 0x4436e0
      x0 = local_m28; // 0x4436e8
      x1 = x0; // 0x4436e4
      local_m40 = x1; // 0x4436ec
      memSet(x1, 0xb, w0); // 0x4436f0
      x0 = local_m18; // 0x4436f4
      memSet(x1, 0x13, w0); // 0x4436f8
      AllocationStub_Container() /* 0x391a04 */; // 0x4436fc
      local_m18 = x0; // 0x443700
      BARRIER = local_m30; // 0x443704
      LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x44370c
      // frame: LR, BARRIER, mem(SP, 8) // 0x443710
      BARRIER = local_m40; // 0x443714
      local_0 = BARRIER; // 0x443718
      x1 = x0; // 0x44371c
      x4 = mem((PP + 0x10000), 0xd40) /* ImmutableArray */; // 0x443724
      Container_ctor() /* 0x391490 */; // 0x443728
      x2 = local_m18; // 0x44372c
    }
    x0 = local_m10; // 0x4437b8
    x1 = local_m8; // 0x4437bc
    local_m28 = x2; // 0x4437c0
    w3 = mem(x0, 0xf); // 0x4437c4
    x3 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4437c8
    local_m18 = x3; // 0x4437cc
    w0 = mem(x1, 0x1b); // 0x4437d0
    x0 = ((mem(x1, 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x4437d4
    if (w0 != 2) {
      x5 = "-" /* pp+0x3f00 */; // 0x4437e8
    } else {
      x5 = "+" /* pp+0x1d98 */; // 0x4437e0
    }
    w6 = mem(x1, 0xf); // 0x4437f4
    x0 = local_m38; // 0x4437f0
    x4 = local_m20; // 0x4437ec
    x6 = ((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4437f8
    if (w6 != w22) {
      // frame: x6, x5, mem(SP) // 0x443804
      StringBase_op_add() /* 0x281718 */; // 0x443808
      local_m8 = x0; // 0x44380c
      AllocationStub_Color() /* 0x31d844 */; // 0x443810
      x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x443818
      x1 = x0; // 0x443814
      local_m10 = x1; // 0x44381c
      memSet(x1, 0x27, w0); // 0x443820
      d0 = 1.00000000 /* bits */; // 0x443824
      memSet(x1, 7, d0); // 0x443828
      memSet(x1, 0xf, d0); // 0x44382c
      d1 = 4605133722498939065; // 0x443834
      x17 = PP + 0x11000; // 0x443830
      memSet(x1, 0x17, d1); // 0x443838
      d1 = 4599747064121103766; // 0x443840
      x17 = PP + 0x14000; // 0x44383c
      memSet(x1, 0x1f, d1); // 0x443844
      AllocationStub_TextStyle() /* 0x31abec */; // 0x443848
      x0 = NULL + 0x20; // 0x443850
      x1 = x0; // 0x44384c
      local_m30 = x1; // 0x443854
      memSet(x1, 7, w0); // 0x443858
      x0 = local_m10; // 0x44385c
      memSet(x1, 0xb, w0); // 0x443860
      x0 = mem(PP, 0x7598) /* Double */; // 0x443864
      memSet(x1, 0x1f, w0); // 0x443868
      AllocationStub_Text() /* 0x393bf8 */; // 0x44386c
      x0 = local_m8; // 0x443874
      x1 = x0; // 0x443870
      local_m10 = x1; // 0x443878
      memSet(x1, 0xb, w0); // 0x44387c
      x0 = local_m30; // 0x443880
      memSet(x1, 0x13, w0); // 0x443884
      AllocationStub_Container() /* 0x391a04 */; // 0x443888
      local_m8 = x0; // 0x44388c
      BARRIER = local_m18; // 0x443890
      LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x443898
      // frame: LR, BARRIER, mem(SP, 8) // 0x44389c
      BARRIER = local_m10; // 0x4438a0
      local_0 = BARRIER; // 0x4438a4
      x1 = x0; // 0x4438a8
      x4 = mem((PP + 0x10000), 0xd40) /* ImmutableArray */; // 0x4438b0
      Container_ctor() /* 0x391490 */; // 0x4438b4
      x1 = NULL; // 0x4438b8
      x2 = 8; // 0x4438bc
      sub_0x61f920(); // 0x4438c0
      x0 = local_m20; // 0x4438c8
      x2 = x0; // 0x4438c4
      local_m10 = x2; // 0x4438cc
      memSet(x2, 0xf, w0); // 0x4438d0
      x0 = local_m38; // 0x4438d4
      memSet(x2, 0x13, w0); // 0x4438d8
      x0 = local_m28; // 0x4438dc
      memSet(x2, 0x17, w0); // 0x4438e0
      x0 = local_m8; // 0x4438e4
      memSet(x2, 0x1b, w0); // 0x4438e8
      x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x4438ec
      AllocationStub__GrowableList() /* 0x61e854 */; // 0x4438f0
      x0 = local_m10; // 0x4438f8
      x1 = x0; // 0x4438f4
      local_m8 = x1; // 0x4438fc
      memSet(x1, 0xf, w0); // 0x443900
      x0 = 8; // 0x443904
      memSet(x1, 0xb, w0); // 0x443908
      AllocationStub_Row() /* 0x3a1414 */; // 0x44390c
      x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x443914
      x1 = x0; // 0x443910
      local_m10 = x1; // 0x443918
      memSet(x1, 0xf, w0); // 0x44391c
      x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x443924
      memSet(x1, 0x13, w0); // 0x443928
      x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x443930
      memSet(x1, 0x17, w2); // 0x443934
      x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x44393c
      memSet(x1, 0x1b, w3); // 0x443940
      x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x443948
      memSet(x1, 0x23, w4); // 0x44394c
      x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x443954
      memSet(x1, 0x2b, w5); // 0x443958
      memSet(x1, 0x2f, xzr); // 0x44395c
      x6 = local_m8; // 0x443960
      memSet(x1, 0xb, w6); // 0x443964
      AllocationStub_Container() /* 0x391a04 */; // 0x443968
      local_m8 = x0; // 0x44396c
      BARRIER = mem((PP + 0xa000), 0x4e0) /* Double */; // 0x443974
      LR = local_m10; // 0x443978
      // frame: LR, BARRIER, mem(SP) // 0x44397c
      x1 = x0; // 0x443980
      x4 = mem((PP + 0xf000), 0x5f0) /* ImmutableArray */; // 0x443988
      Container_ctor() /* 0x391490 */; // 0x44398c
      AllocationStub_Color() /* 0x31d844 */; // 0x443990
      x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x443998
      x1 = x0; // 0x443994
      local_m10 = x1; // 0x44399c
      memSet(x1, 0x27, w0); // 0x4439a0
      d0 = 4591870180066957722; // 0x4439a4
      memSet(x1, 7, d0); // 0x4439a8
      d0 = 1.00000000 /* bits */; // 0x4439ac
      memSet(x1, 0xf, d0); // 0x4439b0
      memSet(x1, 0x17, d0); // 0x4439b4
      memSet(x1, 0x1f, d0); // 0x4439b8
      AllocationStub_Container() /* 0x391a04 */; // 0x4439bc
      local_m18 = x0; // 0x4439c0
      BARRIER = mem(PP, 0x53b0) /* Double */; // 0x4439c4
      LR = local_m10; // 0x4439c8
      // frame: LR, BARRIER, mem(SP) // 0x4439cc
      x1 = x0; // 0x4439d0
      x4 = mem((PP + 0xe000), 0xeb0) /* ImmutableArray */; // 0x4439d8
      Container_ctor() /* 0x391490 */; // 0x4439dc
      x1 = NULL; // 0x4439e0
      x2 = 4; // 0x4439e4
      sub_0x61f920(); // 0x4439e8
      x0 = local_m8; // 0x4439f0
      x2 = x0; // 0x4439ec
      local_m10 = x2; // 0x4439f4
      memSet(x2, 0xf, w0); // 0x4439f8
      x0 = local_m18; // 0x4439fc
      memSet(x2, 0x13, w0); // 0x443a00
      x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x443a04
      AllocationStub__GrowableList() /* 0x61e854 */; // 0x443a08
      x0 = local_m10; // 0x443a10
      x1 = x0; // 0x443a0c
      local_m8 = x1; // 0x443a14
      memSet(x1, 0xf, w0); // 0x443a18
      x0 = 4; // 0x443a1c
      memSet(x1, 0xb, w0); // 0x443a20
      AllocationStub_Column() /* 0x39310c */; // 0x443a24
      x1 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x443a2c
      memSet(x0, 0xf, w1); // 0x443a30
      x1 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x443a38
      memSet(x0, 0x13, w1); // 0x443a3c
      x1 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x443a44
      memSet(x0, 0x17, w1); // 0x443a48
      x1 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x443a50
      memSet(x0, 0x1b, w1); // 0x443a54
      x1 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x443a5c
      memSet(x0, 0x23, w1); // 0x443a60
      x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x443a68
      memSet(x0, 0x2b, w1); // 0x443a6c
      memSet(x0, 0x2f, xzr); // 0x443a70
      x1 = local_m8; // 0x443a74
      memSet(x0, 0xb, w1); // 0x443a78
      SP = FP; // 0x443a7c
      // frame: FP, LR, mem(SP), 0x10 // 0x443a80
      return;
    }
  }
  NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x443a94
}

// titleBarWidget
// raw disassembly:
//  0x443a98: stp FP, LR, [SP, #-0x10]!
//  0x443a9c: mov FP, SP
//  0x443aa0: sub SP, SP, #0x70
//  0x443aa4: stur x1, [FP, #-8]
//  0x443aa8: stur d0, [FP, #-0x58]
//  0x443aac: ldr BARRIER, [THR, #0x38]
//  0x443ab0: cmp SP, BARRIER
//  0x443ab4: b.ls #0x444230
//  0x443ab8: bl #0x31d844
//  0x443abc: mov x1, x0
//  0x443ac0: ldr x0, [PP, #0x6310]
//  0x443ac4: stur x1, [FP, #-0x10]
//  0x443ac8: stur w0, [x1, #0x27]
//  0x443acc: ldr d0, [PP, #0x6080]
//  0x443ad0: stur d0, [x1, #7]
//  0x443ad4: fmov d0, #1.00000000
//  0x443ad8: stur d0, [x1, #0xf]
//  0x443adc: stur d0, [x1, #0x17]
//  0x443ae0: stur d0, [x1, #0x1f]
//  0x443ae4: bl #0x31abec
//  0x443ae8: mov x2, x0
//  0x443aec: add x0, NULL, #0x20
//  0x443af0: stur x2, [FP, #-0x18]
//  0x443af4: stur w0, [x2, #7]
//  0x443af8: ldur x0, [FP, #-0x10]
//  0x443afc: stur w0, [x2, #0xb]
//  0x443b00: ldr x0, [PP, #0x7598]
//  0x443b04: stur w0, [x2, #0x1f]
//  0x443b08: add x1, PP, #0xc, lsl #12
//  0x443b0c: ldr x1, [x1, #0x720]
//  0x443b10: ldr x4, [PP, #0x4c0]
//  0x443b14: bl #0x3a1dcc
//  0x443b18: stur x0, [FP, #-0x10]
//  0x443b1c: bl #0x393bf8
//  0x443b20: mov x1, x0
//  0x443b24: ldur x0, [FP, #-0x10]
//  0x443b28: stur x1, [FP, #-0x20]
//  0x443b2c: stur w0, [x1, #0xb]
//  0x443b30: ldur x0, [FP, #-0x18]
//  0x443b34: stur w0, [x1, #0x13]
//  0x443b38: ldur d0, [FP, #-0x58]
//  0x443b3c: ldp x2, x3, [THR, #0x50]
//  0x443b40: add x2, x2, #0x10
//  0x443b44: cmp x3, x2
//  0x443b48: b.ls #0x444238
//  0x443b4c: str x2, [THR, #0x50]
//  0x443b50: sub x2, x2, #0xf
//  0x443b54: mov x3, #0xe15c
//  0x443b58: movk x3, #3, lsl #16
//  0x443b5c: stur x3, [x2, #-1]
//  0x443b60: stur d0, [x2, #7]
//  0x443b64: stur x2, [FP, #-0x10]
//  0x443b68: bl #0x391a04
//  0x443b6c: stur x0, [FP, #-0x28]
//  0x443b70: add BARRIER, PP, #0xe, lsl #12
//  0x443b74: ldr BARRIER, [BARRIER, #0xaa0]
//  0x443b78: ldur LR, [FP, #-0x10]
//  0x443b7c: stp LR, BARRIER, [SP, #8]
//  0x443b80: ldur BARRIER, [FP, #-0x20]
//  0x443b84: str BARRIER, [SP]
//  0x443b88: mov x1, x0
//  0x443b8c: add x4, PP, #0x12, lsl #12
//  0x443b90: ldr x4, [x4, #0x308]
//  0x443b94: bl #0x391490
//  0x443b98: ldur x0, [FP, #-8]
//  0x443b9c: cmp x0, #1
//  0x443ba0: b.ne #0x443cf8
//  0x443ba4: ldur x1, [FP, #-0x18]
//  0x443ba8: bl #0x3a142c
//  0x443bac: mov x1, x0
//  0x443bb0: add x0, PP, #0xf, lsl #12
//  0x443bb4: ldr x0, [x0, #0x248]
//  0x443bb8: stur x1, [FP, #-0x20]
//  0x443bbc: stur w0, [x1, #0xb]
//  0x443bc0: add x2, PP, #0xf, lsl #12
//  0x443bc4: ldr x2, [x2, #0x170]
//  0x443bc8: stur w2, [x1, #0xf]
//  0x443bcc: add x3, PP, #0xf, lsl #12
//  0x443bd0: ldr x3, [x3, #0xb80]
//  0x443bd4: stur w3, [x1, #0x13]
//  0x443bd8: stur w3, [x1, #0x17]
//  0x443bdc: bl #0x3949ec
//  0x443be0: mov x2, x0
//  0x443be4: add x0, PP, #0x10, lsl #12
//  0x443be8: ldr x0, [x0, #0x940]
//  0x443bec: stur x2, [FP, #-0x30]
//  0x443bf0: stur w0, [x2, #0xf]
//  0x443bf4: add x1, PP, #0xc, lsl #12
//  0x443bf8: ldr x1, [x1, #0x710]
//  0x443bfc: ldr x4, [PP, #0x4c0]
//  0x443c00: bl #0x3a1dcc
//  0x443c04: stur x0, [FP, #-0x38]
//  0x443c08: bl #0x393bf8
//  0x443c0c: mov x3, x0
//  0x443c10: ldur x0, [FP, #-0x38]
//  0x443c14: stur x3, [FP, #-0x40]
//  0x443c18: stur w0, [x3, #0xb]
//  0x443c1c: ldur x0, [FP, #-0x18]
//  0x443c20: stur w0, [x3, #0x13]
//  0x443c24: mov x1, NULL
//  0x443c28: mov x2, #6
//  0x443c2c: bl #0x61f920
//  0x443c30: mov x2, x0
//  0x443c34: ldur x0, [FP, #-0x20]
//  0x443c38: stur x2, [FP, #-0x38]
//  0x443c3c: stur w0, [x2, #0xf]
//  0x443c40: ldur x0, [FP, #-0x30]
//  0x443c44: stur w0, [x2, #0x13]
//  0x443c48: ldur x0, [FP, #-0x40]
//  0x443c4c: stur w0, [x2, #0x17]
//  0x443c50: ldr x1, [PP, #0x5c58]
//  0x443c54: bl #0x61e854
//  0x443c58: mov x1, x0
//  0x443c5c: ldur x0, [FP, #-0x38]
//  0x443c60: stur x1, [FP, #-0x20]
//  0x443c64: stur w0, [x1, #0xf]
//  0x443c68: mov x2, #6
//  0x443c6c: stur w2, [x1, #0xb]
//  0x443c70: bl #0x3a1414
//  0x443c74: mov x1, x0
//  0x443c78: ldr x0, [PP, #0x5140]
//  0x443c7c: stur x1, [FP, #-0x30]
//  0x443c80: stur w0, [x1, #0xf]
//  0x443c84: add x2, PP, #0xf, lsl #12
//  0x443c88: ldr x2, [x2, #0x288]
//  0x443c8c: stur w2, [x1, #0x13]
//  0x443c90: add x3, PP, #0xe, lsl #12
//  0x443c94: ldr x3, [x3, #0xae8]
//  0x443c98: stur w3, [x1, #0x17]
//  0x443c9c: add x4, PP, #0xe, lsl #12
//  0x443ca0: ldr x4, [x4, #0xb60]
//  0x443ca4: stur w4, [x1, #0x1b]
//  0x443ca8: add x5, PP, #0xe, lsl #12
//  0x443cac: ldr x5, [x5, #0xaf8]
//  0x443cb0: stur w5, [x1, #0x23]
//  0x443cb4: add x6, PP, #0xa, lsl #12
//  0x443cb8: ldr x6, [x6, #0xa8]
//  0x443cbc: stur w6, [x1, #0x2b]
//  0x443cc0: stur xzr, [x1, #0x2f]
//  0x443cc4: ldur x7, [FP, #-0x20]
//  0x443cc8: stur w7, [x1, #0xb]
//  0x443ccc: bl #0x391a04
//  0x443cd0: stur x0, [FP, #-0x20]
//  0x443cd4: ldur BARRIER, [FP, #-0x10]
//  0x443cd8: ldur LR, [FP, #-0x30]
//  0x443cdc: stp LR, BARRIER, [SP]
//  0x443ce0: mov x1, x0
//  0x443ce4: add x4, PP, #0xf, lsl #12
//  0x443ce8: ldr x4, [x4, #0x240]
//  0x443cec: bl #0x391490
//  0x443cf0: ldur x1, [FP, #-0x20]
//  0x443cf4: b #0x443d60
//  0x443cf8: ldur x0, [FP, #-0x18]
//  0x443cfc: add x1, PP, #0xc, lsl #12
//  0x443d00: ldr x1, [x1, #0x6c0]
//  0x443d04: ldr x4, [PP, #0x4c0]
//  0x443d08: bl #0x3a1dcc
//  0x443d0c: stur x0, [FP, #-0x20]
//  0x443d10: bl #0x393bf8
//  0x443d14: mov x1, x0
//  0x443d18: ldur x0, [FP, #-0x20]
//  0x443d1c: stur x1, [FP, #-0x30]
//  0x443d20: stur w0, [x1, #0xb]
//  0x443d24: ldur x0, [FP, #-0x18]
//  0x443d28: stur w0, [x1, #0x13]
//  0x443d2c: bl #0x391a04
//  0x443d30: stur x0, [FP, #-0x20]
//  0x443d34: add BARRIER, PP, #0xe, lsl #12
//  0x443d38: ldr BARRIER, [BARRIER, #0xaa0]
//  0x443d3c: ldur LR, [FP, #-0x10]
//  0x443d40: stp LR, BARRIER, [SP, #8]
//  0x443d44: ldur BARRIER, [FP, #-0x30]
//  0x443d48: str BARRIER, [SP]
//  0x443d4c: mov x1, x0
//  0x443d50: add x4, PP, #0x12, lsl #12
//  0x443d54: ldr x4, [x4, #0x308]
//  0x443d58: bl #0x391490
//  0x443d5c: ldur x1, [FP, #-0x20]
//  0x443d60: ldur x0, [FP, #-8]
//  0x443d64: stur x1, [FP, #-0x20]
//  0x443d68: bl #0x3a142c
//  0x443d6c: mov x1, x0
//  0x443d70: add x0, PP, #0xf, lsl #12
//  0x443d74: ldr x0, [x0, #0x248]
//  0x443d78: stur x1, [FP, #-0x30]
//  0x443d7c: stur w0, [x1, #0xb]
//  0x443d80: add x2, PP, #0xf, lsl #12
//  0x443d84: ldr x2, [x2, #0x170]
//  0x443d88: stur w2, [x1, #0xf]
//  0x443d8c: add x3, PP, #0xf, lsl #12
//  0x443d90: ldr x3, [x3, #0xb80]
//  0x443d94: stur w3, [x1, #0x13]
//  0x443d98: stur w3, [x1, #0x17]
//  0x443d9c: bl #0x3949ec
//  0x443da0: mov x2, x0
//  0x443da4: add x0, PP, #0x10, lsl #12
//  0x443da8: ldr x0, [x0, #0x940]
//  0x443dac: stur x2, [FP, #-0x38]
//  0x443db0: stur w0, [x2, #0xf]
//  0x443db4: ldur x1, [FP, #-8]
//  0x443db8: cmp x1, #1
//  0x443dbc: b.ne #0x443dd8
//  0x443dc0: add x1, PP, #0xc, lsl #12
//  0x443dc4: ldr x1, [x1, #0x700]
//  0x443dc8: ldr x4, [PP, #0x4c0]
//  0x443dcc: bl #0x3a1dcc
//  0x443dd0: mov x5, x0
//  0x443dd4: b #0x443dec
//  0x443dd8: add x1, PP, #0xc, lsl #12
//  0x443ddc: ldr x1, [x1, #0x690]
//  0x443de0: ldr x4, [PP, #0x4c0]
//  0x443de4: bl #0x3a1dcc
//  0x443de8: mov x5, x0
//  0x443dec: ldur x3, [FP, #-0x18]
//  0x443df0: ldur x4, [FP, #-0x28]
//  0x443df4: ldur x2, [FP, #-0x20]
//  0x443df8: ldur x1, [FP, #-0x30]
//  0x443dfc: ldur x0, [FP, #-0x38]
//  0x443e00: stur x5, [FP, #-0x40]
//  0x443e04: bl #0x393bf8
//  0x443e08: mov x3, x0
//  0x443e0c: ldur x0, [FP, #-0x40]
//  0x443e10: stur x3, [FP, #-0x48]
//  0x443e14: stur w0, [x3, #0xb]
//  0x443e18: ldur x0, [FP, #-0x18]
//  0x443e1c: stur w0, [x3, #0x13]
//  0x443e20: mov x1, NULL
//  0x443e24: mov x2, #6
//  0x443e28: bl #0x61f920
//  0x443e2c: mov x2, x0
//  0x443e30: ldur x0, [FP, #-0x30]
//  0x443e34: stur x2, [FP, #-0x40]
//  0x443e38: stur w0, [x2, #0xf]
//  0x443e3c: ldur x0, [FP, #-0x38]
//  0x443e40: stur w0, [x2, #0x13]
//  0x443e44: ldur x0, [FP, #-0x48]
//  0x443e48: stur w0, [x2, #0x17]
//  0x443e4c: ldr x1, [PP, #0x5c58]
//  0x443e50: bl #0x61e854
//  0x443e54: mov x1, x0
//  0x443e58: ldur x0, [FP, #-0x40]
//  0x443e5c: stur x1, [FP, #-0x30]
//  0x443e60: stur w0, [x1, #0xf]
//  0x443e64: mov x2, #6
//  0x443e68: stur w2, [x1, #0xb]
//  0x443e6c: bl #0x3a1414
//  0x443e70: mov x1, x0
//  0x443e74: ldr x0, [PP, #0x5140]
//  0x443e78: stur x1, [FP, #-0x38]
//  0x443e7c: stur w0, [x1, #0xf]
//  0x443e80: add x2, PP, #0xf, lsl #12
//  0x443e84: ldr x2, [x2, #0x288]
//  0x443e88: stur w2, [x1, #0x13]
//  0x443e8c: add x3, PP, #0xe, lsl #12
//  0x443e90: ldr x3, [x3, #0xae8]
//  0x443e94: stur w3, [x1, #0x17]
//  0x443e98: add x4, PP, #0xe, lsl #12
//  0x443e9c: ldr x4, [x4, #0xb60]
//  0x443ea0: stur w4, [x1, #0x1b]
//  0x443ea4: add x5, PP, #0xe, lsl #12
//  0x443ea8: ldr x5, [x5, #0xaf8]
//  0x443eac: stur w5, [x1, #0x23]
//  0x443eb0: add x6, PP, #0xa, lsl #12
//  0x443eb4: ldr x6, [x6, #0xa8]
//  0x443eb8: stur w6, [x1, #0x2b]
//  0x443ebc: stur xzr, [x1, #0x2f]
//  0x443ec0: ldur x7, [FP, #-0x30]
//  0x443ec4: stur w7, [x1, #0xb]
//  0x443ec8: bl #0x391a04
//  0x443ecc: stur x0, [FP, #-0x30]
//  0x443ed0: ldur BARRIER, [FP, #-0x10]
//  0x443ed4: ldur LR, [FP, #-0x38]
//  0x443ed8: stp LR, BARRIER, [SP]
//  0x443edc: mov x1, x0
//  0x443ee0: add x4, PP, #0xf, lsl #12
//  0x443ee4: ldr x4, [x4, #0x240]
//  0x443ee8: bl #0x391490
//  0x443eec: bl #0x3a142c
//  0x443ef0: mov x1, x0
//  0x443ef4: add x0, PP, #0xf, lsl #12
//  0x443ef8: ldr x0, [x0, #0x248]
//  0x443efc: stur x1, [FP, #-0x38]
//  0x443f00: stur w0, [x1, #0xb]
//  0x443f04: add x0, PP, #0xf, lsl #12
//  0x443f08: ldr x0, [x0, #0x170]
//  0x443f0c: stur w0, [x1, #0xf]
//  0x443f10: add x0, PP, #0xf, lsl #12
//  0x443f14: ldr x0, [x0, #0xb80]
//  0x443f18: stur w0, [x1, #0x13]
//  0x443f1c: stur w0, [x1, #0x17]
//  0x443f20: bl #0x3949ec
//  0x443f24: mov x2, x0
//  0x443f28: add x0, PP, #0x10, lsl #12
//  0x443f2c: ldr x0, [x0, #0x940]
//  0x443f30: stur x2, [FP, #-0x40]
//  0x443f34: stur w0, [x2, #0xf]
//  0x443f38: add x1, PP, #0xc, lsl #12
//  0x443f3c: ldr x1, [x1, #0x6f0]
//  0x443f40: ldr x4, [PP, #0x4c0]
//  0x443f44: bl #0x3a1dcc
//  0x443f48: stur x0, [FP, #-0x48]
//  0x443f4c: bl #0x393bf8
//  0x443f50: mov x3, x0
//  0x443f54: ldur x0, [FP, #-0x48]
//  0x443f58: stur x3, [FP, #-0x50]
//  0x443f5c: stur w0, [x3, #0xb]
//  0x443f60: ldur x0, [FP, #-0x18]
//  0x443f64: stur w0, [x3, #0x13]
//  0x443f68: mov x1, NULL
//  0x443f6c: mov x2, #6
//  0x443f70: bl #0x61f920
//  0x443f74: mov x2, x0
//  0x443f78: ldur x0, [FP, #-0x38]
//  0x443f7c: stur x2, [FP, #-0x18]
//  0x443f80: stur w0, [x2, #0xf]
//  0x443f84: ldur x0, [FP, #-0x40]
//  0x443f88: stur w0, [x2, #0x13]
//  0x443f8c: ldur x0, [FP, #-0x50]
//  0x443f90: stur w0, [x2, #0x17]
//  0x443f94: ldr x1, [PP, #0x5c58]
//  0x443f98: bl #0x61e854
//  0x443f9c: mov x1, x0
//  0x443fa0: ldur x0, [FP, #-0x18]
//  0x443fa4: stur x1, [FP, #-0x38]
//  0x443fa8: stur w0, [x1, #0xf]
//  0x443fac: mov x0, #6
//  0x443fb0: stur w0, [x1, #0xb]
//  0x443fb4: bl #0x3a1414
//  0x443fb8: mov x1, x0
//  0x443fbc: ldr x0, [PP, #0x5140]
//  0x443fc0: stur x1, [FP, #-0x18]
//  0x443fc4: stur w0, [x1, #0xf]
//  0x443fc8: add x2, PP, #0xf, lsl #12
//  0x443fcc: ldr x2, [x2, #0x288]
//  0x443fd0: stur w2, [x1, #0x13]
//  0x443fd4: add x2, PP, #0xe, lsl #12
//  0x443fd8: ldr x2, [x2, #0xae8]
//  0x443fdc: stur w2, [x1, #0x17]
//  0x443fe0: add x3, PP, #0xe, lsl #12
//  0x443fe4: ldr x3, [x3, #0xb60]
//  0x443fe8: stur w3, [x1, #0x1b]
//  0x443fec: add x4, PP, #0xe, lsl #12
//  0x443ff0: ldr x4, [x4, #0xaf8]
//  0x443ff4: stur w4, [x1, #0x23]
//  0x443ff8: add x5, PP, #0xa, lsl #12
//  0x443ffc: ldr x5, [x5, #0xa8]
//  0x444000: stur w5, [x1, #0x2b]
//  0x444004: stur xzr, [x1, #0x2f]
//  0x444008: ldur x6, [FP, #-0x38]
//  0x44400c: stur w6, [x1, #0xb]
//  0x444010: bl #0x391a04
//  0x444014: stur x0, [FP, #-0x38]
//  0x444018: ldur BARRIER, [FP, #-0x10]
//  0x44401c: ldur LR, [FP, #-0x18]
//  0x444020: stp LR, BARRIER, [SP]
//  0x444024: mov x1, x0
//  0x444028: add x4, PP, #0xf, lsl #12
//  0x44402c: ldr x4, [x4, #0x240]
//  0x444030: bl #0x391490
//  0x444034: mov x1, NULL
//  0x444038: mov x2, #8
//  0x44403c: bl #0x61f920
//  0x444040: mov x2, x0
//  0x444044: ldur x0, [FP, #-0x28]
//  0x444048: stur x2, [FP, #-0x10]
//  0x44404c: stur w0, [x2, #0xf]
//  0x444050: ldur x0, [FP, #-0x20]
//  0x444054: stur w0, [x2, #0x13]
//  0x444058: ldur x0, [FP, #-0x30]
//  0x44405c: stur w0, [x2, #0x17]
//  0x444060: ldur x0, [FP, #-0x38]
//  0x444064: stur w0, [x2, #0x1b]
//  0x444068: ldr x1, [PP, #0x5c58]
//  0x44406c: bl #0x61e854
//  0x444070: mov x1, x0
//  0x444074: ldur x0, [FP, #-0x10]
//  0x444078: stur x1, [FP, #-0x18]
//  0x44407c: stur w0, [x1, #0xf]
//  0x444080: mov x0, #8
//  0x444084: stur w0, [x1, #0xb]
//  0x444088: bl #0x3a1414
//  0x44408c: mov x1, x0
//  0x444090: ldr x0, [PP, #0x5140]
//  0x444094: stur x1, [FP, #-0x10]
//  0x444098: stur w0, [x1, #0xf]
//  0x44409c: add x0, PP, #0xe, lsl #12
//  0x4440a0: ldr x0, [x0, #0xae0]
//  0x4440a4: stur w0, [x1, #0x13]
//  0x4440a8: add x2, PP, #0xe, lsl #12
//  0x4440ac: ldr x2, [x2, #0xae8]
//  0x4440b0: stur w2, [x1, #0x17]
//  0x4440b4: add x3, PP, #0xe, lsl #12
//  0x4440b8: ldr x3, [x3, #0xb60]
//  0x4440bc: stur w3, [x1, #0x1b]
//  0x4440c0: add x4, PP, #0xe, lsl #12
//  0x4440c4: ldr x4, [x4, #0xaf8]
//  0x4440c8: stur w4, [x1, #0x23]
//  0x4440cc: add x5, PP, #0xa, lsl #12
//  0x4440d0: ldr x5, [x5, #0xa8]
//  0x4440d4: stur w5, [x1, #0x2b]
//  0x4440d8: stur xzr, [x1, #0x2f]
//  0x4440dc: ldur x6, [FP, #-0x18]
//  0x4440e0: stur w6, [x1, #0xb]
//  0x4440e4: bl #0x391a04
//  0x4440e8: stur x0, [FP, #-0x18]
//  0x4440ec: add BARRIER, PP, #0xa, lsl #12
//  0x4440f0: ldr BARRIER, [BARRIER, #0x4e0]
//  0x4440f4: ldur LR, [FP, #-0x10]
//  0x4440f8: stp LR, BARRIER, [SP]
//  0x4440fc: mov x1, x0
//  0x444100: add x4, PP, #0xf, lsl #12
//  0x444104: ldr x4, [x4, #0x5f0]
//  0x444108: bl #0x391490
//  0x44410c: bl #0x31d844
//  0x444110: mov x1, x0
//  0x444114: ldr x0, [PP, #0x6310]
//  0x444118: stur x1, [FP, #-0x10]
//  0x44411c: stur w0, [x1, #0x27]
//  0x444120: ldr d0, [PP, #0x6658]
//  0x444124: stur d0, [x1, #7]
//  0x444128: fmov d0, #1.00000000
//  0x44412c: stur d0, [x1, #0xf]
//  0x444130: stur d0, [x1, #0x17]
//  0x444134: stur d0, [x1, #0x1f]
//  0x444138: bl #0x391a04
//  0x44413c: stur x0, [FP, #-0x20]
//  0x444140: ldr BARRIER, [PP, #0x53b0]
//  0x444144: ldur LR, [FP, #-0x10]
//  0x444148: stp LR, BARRIER, [SP]
//  0x44414c: mov x1, x0
//  0x444150: add x4, PP, #0xe, lsl #12
//  0x444154: ldr x4, [x4, #0xeb0]
//  0x444158: bl #0x391490
//  0x44415c: mov x1, NULL
//  0x444160: mov x2, #4
//  0x444164: bl #0x61f920
//  0x444168: mov x2, x0
//  0x44416c: ldur x0, [FP, #-0x18]
//  0x444170: stur x2, [FP, #-0x10]
//  0x444174: stur w0, [x2, #0xf]
//  0x444178: ldur x0, [FP, #-0x20]
//  0x44417c: stur w0, [x2, #0x13]
//  0x444180: ldr x1, [PP, #0x5c58]
//  0x444184: bl #0x61e854
//  0x444188: mov x1, x0
//  0x44418c: ldur x0, [FP, #-0x10]
//  0x444190: stur x1, [FP, #-0x18]
//  0x444194: stur w0, [x1, #0xf]
//  0x444198: mov x0, #4
//  0x44419c: stur w0, [x1, #0xb]
//  0x4441a0: bl #0x39310c
//  0x4441a4: mov x1, x0
//  0x4441a8: add x0, PP, #0xa, lsl #12
//  0x4441ac: ldr x0, [x0, #0x858]
//  0x4441b0: stur x1, [FP, #-0x10]
//  0x4441b4: stur w0, [x1, #0xf]
//  0x4441b8: add x0, PP, #0xe, lsl #12
//  0x4441bc: ldr x0, [x0, #0xae0]
//  0x4441c0: stur w0, [x1, #0x13]
//  0x4441c4: add x0, PP, #0xe, lsl #12
//  0x4441c8: ldr x0, [x0, #0xae8]
//  0x4441cc: stur w0, [x1, #0x17]
//  0x4441d0: add x0, PP, #0xe, lsl #12
//  0x4441d4: ldr x0, [x0, #0xb60]
//  0x4441d8: stur w0, [x1, #0x1b]
//  0x4441dc: add x0, PP, #0xe, lsl #12
//  0x4441e0: ldr x0, [x0, #0xaf8]
//  0x4441e4: stur w0, [x1, #0x23]
//  0x4441e8: add x0, PP, #0xa, lsl #12
//  0x4441ec: ldr x0, [x0, #0xa8]
//  0x4441f0: stur w0, [x1, #0x2b]
//  0x4441f4: stur xzr, [x1, #0x2f]
//  0x4441f8: ldur x0, [FP, #-0x18]
//  0x4441fc: stur w0, [x1, #0xb]
//  0x444200: bl #0x391a04
//  0x444204: stur x0, [FP, #-0x18]
//  0x444208: ldur BARRIER, [FP, #-0x10]
//  0x44420c: str BARRIER, [SP]
//  0x444210: mov x1, x0
//  0x444214: add x4, PP, #0xc, lsl #12
//  0x444218: ldr x4, [x4, #0x1f8]
//  0x44421c: bl #0x391490
//  0x444220: ldur x0, [FP, #-0x18]
//  0x444224: mov SP, FP
//  0x444228: ldp FP, LR, [SP], #0x10
//  0x44422c: ret 
//  0x444230: bl #0x61faa8
//  0x444234: b #0x443ab8
//  0x444238: str q0, [SP, #-0x10]!
//  0x44423c: stp x0, x1, [SP, #-0x10]!
//  0x444240: bl #0x61f878
//  0x444244: mov x2, x0
//  0x444248: ldp x0, x1, [SP], #0x10
//  0x44424c: ldr q0, [SP], #0x10
//  0x444250: b #0x443b60
//
dynamic titleBarWidget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic q0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x7;
  // frame: FP, LR, mem(SP, -0x10)! // 0x443a98
  // frame: FP = SP // 0x443a9c
  // frame: SP = SP - 0x70 // 0x443aa0
  local_m8 = x1; // 0x443aa4
  local_m58 = d0; // 0x443aa8
  BARRIER = mem(THR, 0x38); // 0x443aac
  if (SP <= BARRIER) {
    StackOverflowSharedWithFpuRegsStub_0x61faa8() /* 0x61faa8 */; // 0x444230
  }
  AllocationStub_Color() /* 0x31d844 */; // 0x443ab8
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x443ac0
  x1 = x0; // 0x443abc
  local_m10 = x1; // 0x443ac4
  memSet(x1, 0x27, w0); // 0x443ac8
  d0 = 4603579539098121011; // 0x443acc
  memSet(x1, 7, d0); // 0x443ad0
  d0 = 1.00000000 /* bits */; // 0x443ad4
  memSet(x1, 0xf, d0); // 0x443ad8
  memSet(x1, 0x17, d0); // 0x443adc
  memSet(x1, 0x1f, d0); // 0x443ae0
  AllocationStub_TextStyle() /* 0x31abec */; // 0x443ae4
  x0 = NULL + 0x20; // 0x443aec
  x2 = x0; // 0x443ae8
  local_m18 = x2; // 0x443af0
  memSet(x2, 7, w0); // 0x443af4
  x0 = local_m10; // 0x443af8
  memSet(x2, 0xb, w0); // 0x443afc
  x0 = mem(PP, 0x7598) /* Double */; // 0x443b00
  memSet(x2, 0x1f, w0); // 0x443b04
  x1 = "virtual_party_dice_game_record_popup_bet_time" /* pp+0xc720 */; // 0x443b0c
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x443b10
  getString() /* 0x3a1dcc */; // 0x443b14
  local_m10 = x0; // 0x443b18
  AllocationStub_Text() /* 0x393bf8 */; // 0x443b1c
  x0 = local_m10; // 0x443b24
  x1 = x0; // 0x443b20
  local_m20 = x1; // 0x443b28
  memSet(x1, 0xb, w0); // 0x443b2c
  x0 = local_m18; // 0x443b30
  memSet(x1, 0x13, w0); // 0x443b34
  d0 = local_m58; // 0x443b38
  memRead2(THR, 0x50, x2, x3); // 0x443b3c
  x2 = x2 + 0x10; // 0x443b40
  if (x3 <= x2) {
    local_m10 = q0; // 0x444238
    // frame: x0, x1, mem(SP, -0x10)! // 0x44423c
    AllocationStub__Double() /* 0x61f878 */; // 0x444240
    x2 = x0; // 0x444244
    // frame: x0, x1, mem(SP), 0x10 // 0x444248
    q0 = local_0; // 0x44424c
  } else {
    memSet(THR, 0x50, x2); // 0x443b4c
    x2 = x2 - 0xf; // 0x443b50
    x3 = (x3 & 0xffff) | 0x30000; // 0x443b58
    memSet(x2, -1, x3); // 0x443b5c
  }
  memSet(x2, 7, d0); // 0x443b60
  local_m10 = x2; // 0x443b64
  AllocationStub_Container() /* 0x391a04 */; // 0x443b68
  local_m28 = x0; // 0x443b6c
  BARRIER = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x443b74
  LR = local_m10; // 0x443b78
  // frame: LR, BARRIER, mem(SP, 8) // 0x443b7c
  BARRIER = local_m20; // 0x443b80
  local_0 = BARRIER; // 0x443b84
  x1 = x0; // 0x443b88
  x4 = mem((PP + 0x12000), 0x308) /* ImmutableArray */; // 0x443b90
  Container_ctor() /* 0x391490 */; // 0x443b94
  x0 = local_m8; // 0x443b98
  if (x0 != 1) {
    x0 = local_m18; // 0x443cf8
    x1 = "virtual_party_dice_game_bet_record_popup_bet_side" /* pp+0xc6c0 */; // 0x443d00
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x443d04
    getString() /* 0x3a1dcc */; // 0x443d08
    local_m20 = x0; // 0x443d0c
    AllocationStub_Text() /* 0x393bf8 */; // 0x443d10
    x0 = local_m20; // 0x443d18
    x1 = x0; // 0x443d14
    local_m30 = x1; // 0x443d1c
    memSet(x1, 0xb, w0); // 0x443d20
    x0 = local_m18; // 0x443d24
    memSet(x1, 0x13, w0); // 0x443d28
    AllocationStub_Container() /* 0x391a04 */; // 0x443d2c
    local_m20 = x0; // 0x443d30
    BARRIER = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x443d38
    LR = local_m10; // 0x443d3c
    // frame: LR, BARRIER, mem(SP, 8) // 0x443d40
    BARRIER = local_m30; // 0x443d44
    local_0 = BARRIER; // 0x443d48
    x1 = x0; // 0x443d4c
    x4 = mem((PP + 0x12000), 0x308) /* ImmutableArray */; // 0x443d54
    Container_ctor() /* 0x391490 */; // 0x443d58
    x1 = local_m20; // 0x443d5c
  } else {
    x1 = local_m18; // 0x443ba4
    AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x443ba8
    x0 = "assets/images/3.0x/party_icon_soulcoin_big.webp" /* pp+0xf248 */; // 0x443bb4
    x1 = x0; // 0x443bac
    local_m20 = x1; // 0x443bb8
    memSet(x1, 0xb, w0); // 0x443bbc
    x2 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x443bc4
    memSet(x1, 0xf, w2); // 0x443bc8
    x3 = mem((PP + 0xf000), 0xb80) /* Double */; // 0x443bd0
    memSet(x1, 0x13, w3); // 0x443bd4
    memSet(x1, 0x17, w3); // 0x443bd8
    AllocationStub_SizedBox() /* 0x3949ec */; // 0x443bdc
    x0 = mem((PP + 0x10000), 0x940) /* Double */; // 0x443be8
    x2 = x0; // 0x443be0
    local_m30 = x2; // 0x443bec
    memSet(x2, 0xf, w0); // 0x443bf0
    x1 = "virtual_party_dice_game_winners_bet_amount" /* pp+0xc710 */; // 0x443bf8
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x443bfc
    getString() /* 0x3a1dcc */; // 0x443c00
    local_m38 = x0; // 0x443c04
    AllocationStub_Text() /* 0x393bf8 */; // 0x443c08
    x0 = local_m38; // 0x443c10
    x3 = x0; // 0x443c0c
    local_m40 = x3; // 0x443c14
    memSet(x3, 0xb, w0); // 0x443c18
    x0 = local_m18; // 0x443c1c
    memSet(x3, 0x13, w0); // 0x443c20
    x1 = NULL; // 0x443c24
    x2 = 6; // 0x443c28
    sub_0x61f920(); // 0x443c2c
    x0 = local_m20; // 0x443c34
    x2 = x0; // 0x443c30
    local_m38 = x2; // 0x443c38
    memSet(x2, 0xf, w0); // 0x443c3c
    x0 = local_m30; // 0x443c40
    memSet(x2, 0x13, w0); // 0x443c44
    x0 = local_m40; // 0x443c48
    memSet(x2, 0x17, w0); // 0x443c4c
    x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x443c50
    AllocationStub__GrowableList() /* 0x61e854 */; // 0x443c54
    x0 = local_m38; // 0x443c5c
    x1 = x0; // 0x443c58
    local_m20 = x1; // 0x443c60
    memSet(x1, 0xf, w0); // 0x443c64
    x2 = 6; // 0x443c68
    memSet(x1, 0xb, w2); // 0x443c6c
    AllocationStub_Row() /* 0x3a1414 */; // 0x443c70
    x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x443c78
    x1 = x0; // 0x443c74
    local_m30 = x1; // 0x443c7c
    memSet(x1, 0xf, w0); // 0x443c80
    x2 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x443c88
    memSet(x1, 0x13, w2); // 0x443c8c
    x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x443c94
    memSet(x1, 0x17, w3); // 0x443c98
    x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x443ca0
    memSet(x1, 0x1b, w4); // 0x443ca4
    x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x443cac
    memSet(x1, 0x23, w5); // 0x443cb0
    x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x443cb8
    memSet(x1, 0x2b, w6); // 0x443cbc
    memSet(x1, 0x2f, xzr); // 0x443cc0
    x7 = local_m20; // 0x443cc4
    memSet(x1, 0xb, w7); // 0x443cc8
    AllocationStub_Container() /* 0x391a04 */; // 0x443ccc
    local_m20 = x0; // 0x443cd0
    BARRIER = local_m10; // 0x443cd4
    LR = local_m30; // 0x443cd8
    // frame: LR, BARRIER, mem(SP) // 0x443cdc
    x1 = x0; // 0x443ce0
    x4 = mem((PP + 0xf000), 0x240) /* ImmutableArray */; // 0x443ce8
    Container_ctor() /* 0x391490 */; // 0x443cec
    x1 = local_m20; // 0x443cf0
  }
  x0 = local_m8; // 0x443d60
  local_m20 = x1; // 0x443d64
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x443d68
  x0 = "assets/images/3.0x/party_icon_soulcoin_big.webp" /* pp+0xf248 */; // 0x443d74
  x1 = x0; // 0x443d6c
  local_m30 = x1; // 0x443d78
  memSet(x1, 0xb, w0); // 0x443d7c
  x2 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x443d84
  memSet(x1, 0xf, w2); // 0x443d88
  x3 = mem((PP + 0xf000), 0xb80) /* Double */; // 0x443d90
  memSet(x1, 0x13, w3); // 0x443d94
  memSet(x1, 0x17, w3); // 0x443d98
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x443d9c
  x0 = mem((PP + 0x10000), 0x940) /* Double */; // 0x443da8
  x2 = x0; // 0x443da0
  local_m38 = x2; // 0x443dac
  memSet(x2, 0xf, w0); // 0x443db0
  x1 = local_m8; // 0x443db4
  if (x1 != 1) {
    x1 = "virtual_party_dice_game_result_popup_bet_amount" /* pp+0xc690 */; // 0x443ddc
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x443de0
    getString() /* 0x3a1dcc */; // 0x443de4
    x5 = x0; // 0x443de8
  } else {
    x1 = "virtual_party_dice_game_losers_bet_amount" /* pp+0xc700 */; // 0x443dc4
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x443dc8
    getString() /* 0x3a1dcc */; // 0x443dcc
    x5 = x0; // 0x443dd0
  }
  x0 = local_m38; // 0x443dfc
  x1 = local_m30; // 0x443df8
  x2 = local_m20; // 0x443df4
  x3 = local_m18; // 0x443dec
  x4 = local_m28; // 0x443df0
  local_m40 = x5; // 0x443e00
  AllocationStub_Text() /* 0x393bf8 */; // 0x443e04
  x0 = local_m40; // 0x443e0c
  x3 = x0; // 0x443e08
  local_m48 = x3; // 0x443e10
  memSet(x3, 0xb, w0); // 0x443e14
  x0 = local_m18; // 0x443e18
  memSet(x3, 0x13, w0); // 0x443e1c
  x1 = NULL; // 0x443e20
  x2 = 6; // 0x443e24
  sub_0x61f920(); // 0x443e28
  x0 = local_m30; // 0x443e30
  x2 = x0; // 0x443e2c
  local_m40 = x2; // 0x443e34
  memSet(x2, 0xf, w0); // 0x443e38
  x0 = local_m38; // 0x443e3c
  memSet(x2, 0x13, w0); // 0x443e40
  x0 = local_m48; // 0x443e44
  memSet(x2, 0x17, w0); // 0x443e48
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x443e4c
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x443e50
  x0 = local_m40; // 0x443e58
  x1 = x0; // 0x443e54
  local_m30 = x1; // 0x443e5c
  memSet(x1, 0xf, w0); // 0x443e60
  x2 = 6; // 0x443e64
  memSet(x1, 0xb, w2); // 0x443e68
  AllocationStub_Row() /* 0x3a1414 */; // 0x443e6c
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x443e74
  x1 = x0; // 0x443e70
  local_m38 = x1; // 0x443e78
  memSet(x1, 0xf, w0); // 0x443e7c
  x2 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x443e84
  memSet(x1, 0x13, w2); // 0x443e88
  x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x443e90
  memSet(x1, 0x17, w3); // 0x443e94
  x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x443e9c
  memSet(x1, 0x1b, w4); // 0x443ea0
  x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x443ea8
  memSet(x1, 0x23, w5); // 0x443eac
  x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x443eb4
  memSet(x1, 0x2b, w6); // 0x443eb8
  memSet(x1, 0x2f, xzr); // 0x443ebc
  x7 = local_m30; // 0x443ec0
  memSet(x1, 0xb, w7); // 0x443ec4
  AllocationStub_Container() /* 0x391a04 */; // 0x443ec8
  local_m30 = x0; // 0x443ecc
  BARRIER = local_m10; // 0x443ed0
  LR = local_m38; // 0x443ed4
  // frame: LR, BARRIER, mem(SP) // 0x443ed8
  x1 = x0; // 0x443edc
  x4 = mem((PP + 0xf000), 0x240) /* ImmutableArray */; // 0x443ee4
  Container_ctor() /* 0x391490 */; // 0x443ee8
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x443eec
  x0 = "assets/images/3.0x/party_icon_soulcoin_big.webp" /* pp+0xf248 */; // 0x443ef8
  x1 = x0; // 0x443ef0
  local_m38 = x1; // 0x443efc
  memSet(x1, 0xb, w0); // 0x443f00
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x443f08
  memSet(x1, 0xf, w0); // 0x443f0c
  x0 = mem((PP + 0xf000), 0xb80) /* Double */; // 0x443f14
  memSet(x1, 0x13, w0); // 0x443f18
  memSet(x1, 0x17, w0); // 0x443f1c
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x443f20
  x0 = mem((PP + 0x10000), 0x940) /* Double */; // 0x443f2c
  x2 = x0; // 0x443f24
  local_m40 = x2; // 0x443f30
  memSet(x2, 0xf, w0); // 0x443f34
  x1 = "virtual_party_dice_game_earned_amount" /* pp+0xc6f0 */; // 0x443f3c
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x443f40
  getString() /* 0x3a1dcc */; // 0x443f44
  local_m48 = x0; // 0x443f48
  AllocationStub_Text() /* 0x393bf8 */; // 0x443f4c
  x0 = local_m48; // 0x443f54
  x3 = x0; // 0x443f50
  local_m50 = x3; // 0x443f58
  memSet(x3, 0xb, w0); // 0x443f5c
  x0 = local_m18; // 0x443f60
  memSet(x3, 0x13, w0); // 0x443f64
  x1 = NULL; // 0x443f68
  x2 = 6; // 0x443f6c
  sub_0x61f920(); // 0x443f70
  x0 = local_m38; // 0x443f78
  x2 = x0; // 0x443f74
  local_m18 = x2; // 0x443f7c
  memSet(x2, 0xf, w0); // 0x443f80
  x0 = local_m40; // 0x443f84
  memSet(x2, 0x13, w0); // 0x443f88
  x0 = local_m50; // 0x443f8c
  memSet(x2, 0x17, w0); // 0x443f90
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x443f94
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x443f98
  x0 = local_m18; // 0x443fa0
  x1 = x0; // 0x443f9c
  local_m38 = x1; // 0x443fa4
  memSet(x1, 0xf, w0); // 0x443fa8
  x0 = 6; // 0x443fac
  memSet(x1, 0xb, w0); // 0x443fb0
  AllocationStub_Row() /* 0x3a1414 */; // 0x443fb4
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x443fbc
  x1 = x0; // 0x443fb8
  local_m18 = x1; // 0x443fc0
  memSet(x1, 0xf, w0); // 0x443fc4
  x2 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x443fcc
  memSet(x1, 0x13, w2); // 0x443fd0
  x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x443fd8
  memSet(x1, 0x17, w2); // 0x443fdc
  x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x443fe4
  memSet(x1, 0x1b, w3); // 0x443fe8
  x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x443ff0
  memSet(x1, 0x23, w4); // 0x443ff4
  x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x443ffc
  memSet(x1, 0x2b, w5); // 0x444000
  memSet(x1, 0x2f, xzr); // 0x444004
  x6 = local_m38; // 0x444008
  memSet(x1, 0xb, w6); // 0x44400c
  AllocationStub_Container() /* 0x391a04 */; // 0x444010
  local_m38 = x0; // 0x444014
  BARRIER = local_m10; // 0x444018
  LR = local_m18; // 0x44401c
  // frame: LR, BARRIER, mem(SP) // 0x444020
  x1 = x0; // 0x444024
  x4 = mem((PP + 0xf000), 0x240) /* ImmutableArray */; // 0x44402c
  Container_ctor() /* 0x391490 */; // 0x444030
  x1 = NULL; // 0x444034
  x2 = 8; // 0x444038
  sub_0x61f920(); // 0x44403c
  x0 = local_m28; // 0x444044
  x2 = x0; // 0x444040
  local_m10 = x2; // 0x444048
  memSet(x2, 0xf, w0); // 0x44404c
  x0 = local_m20; // 0x444050
  memSet(x2, 0x13, w0); // 0x444054
  x0 = local_m30; // 0x444058
  memSet(x2, 0x17, w0); // 0x44405c
  x0 = local_m38; // 0x444060
  memSet(x2, 0x1b, w0); // 0x444064
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x444068
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x44406c
  x0 = local_m10; // 0x444074
  x1 = x0; // 0x444070
  local_m18 = x1; // 0x444078
  memSet(x1, 0xf, w0); // 0x44407c
  x0 = 8; // 0x444080
  memSet(x1, 0xb, w0); // 0x444084
  AllocationStub_Row() /* 0x3a1414 */; // 0x444088
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x444090
  x1 = x0; // 0x44408c
  local_m10 = x1; // 0x444094
  memSet(x1, 0xf, w0); // 0x444098
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x4440a0
  memSet(x1, 0x13, w0); // 0x4440a4
  x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x4440ac
  memSet(x1, 0x17, w2); // 0x4440b0
  x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x4440b8
  memSet(x1, 0x1b, w3); // 0x4440bc
  x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x4440c4
  memSet(x1, 0x23, w4); // 0x4440c8
  x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x4440d0
  memSet(x1, 0x2b, w5); // 0x4440d4
  memSet(x1, 0x2f, xzr); // 0x4440d8
  x6 = local_m18; // 0x4440dc
  memSet(x1, 0xb, w6); // 0x4440e0
  AllocationStub_Container() /* 0x391a04 */; // 0x4440e4
  local_m18 = x0; // 0x4440e8
  BARRIER = mem((PP + 0xa000), 0x4e0) /* Double */; // 0x4440f0
  LR = local_m10; // 0x4440f4
  // frame: LR, BARRIER, mem(SP) // 0x4440f8
  x1 = x0; // 0x4440fc
  x4 = mem((PP + 0xf000), 0x5f0) /* ImmutableArray */; // 0x444104
  Container_ctor() /* 0x391490 */; // 0x444108
  AllocationStub_Color() /* 0x31d844 */; // 0x44410c
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x444114
  x1 = x0; // 0x444110
  local_m10 = x1; // 0x444118
  memSet(x1, 0x27, w0); // 0x44411c
  d0 = 4591870180066957722; // 0x444120
  memSet(x1, 7, d0); // 0x444124
  d0 = 1.00000000 /* bits */; // 0x444128
  memSet(x1, 0xf, d0); // 0x44412c
  memSet(x1, 0x17, d0); // 0x444130
  memSet(x1, 0x1f, d0); // 0x444134
  AllocationStub_Container() /* 0x391a04 */; // 0x444138
  local_m20 = x0; // 0x44413c
  BARRIER = mem(PP, 0x53b0) /* Double */; // 0x444140
  LR = local_m10; // 0x444144
  // frame: LR, BARRIER, mem(SP) // 0x444148
  x1 = x0; // 0x44414c
  x4 = mem((PP + 0xe000), 0xeb0) /* ImmutableArray */; // 0x444154
  Container_ctor() /* 0x391490 */; // 0x444158
  x1 = NULL; // 0x44415c
  x2 = 4; // 0x444160
  sub_0x61f920(); // 0x444164
  x0 = local_m18; // 0x44416c
  x2 = x0; // 0x444168
  local_m10 = x2; // 0x444170
  memSet(x2, 0xf, w0); // 0x444174
  x0 = local_m20; // 0x444178
  memSet(x2, 0x13, w0); // 0x44417c
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x444180
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x444184
  x0 = local_m10; // 0x44418c
  x1 = x0; // 0x444188
  local_m18 = x1; // 0x444190
  memSet(x1, 0xf, w0); // 0x444194
  x0 = 4; // 0x444198
  memSet(x1, 0xb, w0); // 0x44419c
  AllocationStub_Column() /* 0x39310c */; // 0x4441a0
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x4441ac
  x1 = x0; // 0x4441a4
  local_m10 = x1; // 0x4441b0
  memSet(x1, 0xf, w0); // 0x4441b4
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x4441bc
  memSet(x1, 0x13, w0); // 0x4441c0
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x4441c8
  memSet(x1, 0x17, w0); // 0x4441cc
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x4441d4
  memSet(x1, 0x1b, w0); // 0x4441d8
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x4441e0
  memSet(x1, 0x23, w0); // 0x4441e4
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x4441ec
  memSet(x1, 0x2b, w0); // 0x4441f0
  memSet(x1, 0x2f, xzr); // 0x4441f4
  x0 = local_m18; // 0x4441f8
  memSet(x1, 0xb, w0); // 0x4441fc
  AllocationStub_Container() /* 0x391a04 */; // 0x444200
  local_m18 = x0; // 0x444204
  BARRIER = local_m10; // 0x444208
  local_0 = BARRIER; // 0x44420c
  x1 = x0; // 0x444210
  x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x444218
  Container_ctor() /* 0x391490 */; // 0x44421c
  SP = FP; // 0x444224
  x0 = local_m18; // 0x444220
  // frame: FP, LR, mem(SP), 0x10 // 0x444228
  return;
}

// PagePKGameBetLaunchRecordState_build
// raw disassembly:
//  0x442c10: stp FP, LR, [SP, #-0x10]!
//  0x442c14: mov FP, SP
//  0x442c18: sub SP, SP, #0x20
//  0x442c1c: mov x0, x1
//  0x442c20: stur x1, [FP, #-8]
//  0x442c24: mov x1, x2
//  0x442c28: stur x2, [FP, #-0x10]
//  0x442c2c: ldr BARRIER, [THR, #0x38]
//  0x442c30: cmp SP, BARRIER
//  0x442c34: b.ls #0x442d74
//  0x442c38: mov x1, #3
//  0x442c3c: bl #0x61e890
//  0x442c40: mov x2, x0
//  0x442c44: ldur x0, [FP, #-8]
//  0x442c48: stur x2, [FP, #-0x18]
//  0x442c4c: stur w0, [x2, #0xf]
//  0x442c50: ldur x1, [FP, #-0x10]
//  0x442c54: bl #0x3a877c
//  0x442c58: mov v1.16b, v0.16b
//  0x442c5c: fmov d0, #4.00000000
//  0x442c60: fdiv d2, d1, d0
//  0x442c64: ldp x0, x1, [THR, #0x50]
//  0x442c68: add x0, x0, #0x10
//  0x442c6c: cmp x1, x0
//  0x442c70: b.ls #0x442d7c
//  0x442c74: str x0, [THR, #0x50]
//  0x442c78: sub x0, x0, #0xf
//  0x442c7c: mov x1, #0xe15c
//  0x442c80: movk x1, #3, lsl #16
//  0x442c84: stur x1, [x0, #-1]
//  0x442c88: stur d2, [x0, #7]
//  0x442c8c: ldur x3, [FP, #-0x18]
//  0x442c90: stur w0, [x3, #0x13]
//  0x442c94: ldurb w16, [x3, #-1]
//  0x442c98: ldurb w17, [x0, #-1]
//  0x442c9c: and BARRIER, x17, BARRIER, lsr #2
//  0x442ca0: tst BARRIER, HEAP, lsr #32
//  0x442ca4: b.eq #0x442cac
//  0x442ca8: bl #0x61e08c
//  0x442cac: ldur x0, [FP, #-8]
//  0x442cb0: ldur w1, [x0, #0x13]
//  0x442cb4: add x1, x1, HEAP, lsl #32
//  0x442cb8: ldur w0, [x1, #0x2b]
//  0x442cbc: add x0, x0, HEAP, lsl #32
//  0x442cc0: stur w0, [x3, #0x17]
//  0x442cc4: ldurb w16, [x3, #-1]
//  0x442cc8: ldurb w17, [x0, #-1]
//  0x442ccc: and BARRIER, x17, BARRIER, lsr #2
//  0x442cd0: tst BARRIER, HEAP, lsr #32
//  0x442cd4: b.eq #0x442cdc
//  0x442cd8: bl #0x61e08c
//  0x442cdc: mov x2, x3
//  0x442ce0: add x1, PP, #0x14, lsl #12
//  0x442ce4: ldr x1, [x1, #0x458]
//  0x442ce8: bl #0x61ec54
//  0x442cec: add x1, PP, #0x14, lsl #12
//  0x442cf0: ldr x1, [x1, #0x460]
//  0x442cf4: stur x0, [FP, #-8]
//  0x442cf8: bl #0x41a414
//  0x442cfc: mov x3, x0
//  0x442d00: ldur x0, [FP, #-8]
//  0x442d04: stur x3, [FP, #-0x10]
//  0x442d08: stur w0, [x3, #0x13]
//  0x442d0c: ldur x2, [FP, #-0x18]
//  0x442d10: add x1, PP, #0x14, lsl #12
//  0x442d14: ldr x1, [x1, #0x468]
//  0x442d18: bl #0x61ec54
//  0x442d1c: add x1, PP, #0x14, lsl #12
//  0x442d20: ldr x1, [x1, #0x460]
//  0x442d24: stur x0, [FP, #-8]
//  0x442d28: bl #0x3b81c4
//  0x442d2c: mov x1, x0
//  0x442d30: ldur x2, [FP, #-0x10]
//  0x442d34: ldur x3, [FP, #-8]
//  0x442d38: mov x5, NULL
//  0x442d3c: stur x0, [FP, #-8]
//  0x442d40: bl #0x3b7e8c
//  0x442d44: bl #0x391a04
//  0x442d48: stur x0, [FP, #-0x10]
//  0x442d4c: ldur BARRIER, [FP, #-8]
//  0x442d50: str BARRIER, [SP]
//  0x442d54: mov x1, x0
//  0x442d58: add x4, PP, #0xc, lsl #12
//  0x442d5c: ldr x4, [x4, #0x1f8]
//  0x442d60: bl #0x391490
//  0x442d64: ldur x0, [FP, #-0x10]
//  0x442d68: mov SP, FP
//  0x442d6c: ldp FP, LR, [SP], #0x10
//  0x442d70: ret 
//  0x442d74: bl #0x61fa28
//  0x442d78: b #0x442c38
//  0x442d7c: str q2, [SP, #-0x10]!
//  0x442d80: bl #0x61f878
//  0x442d84: ldr q2, [SP], #0x10
//  0x442d88: b #0x442c88
//
dynamic PagePKGameBetLaunchRecordState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic d2;
  dynamic q2;
  dynamic v1_16b;
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
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x442c10
  // frame: FP = SP // 0x442c14
  // frame: SP = SP - 0x20 // 0x442c18
  x0 = x1; // 0x442c1c
  local_m8 = x1; // 0x442c20
  x1 = x2; // 0x442c24
  local_m10 = x2; // 0x442c28
  BARRIER = mem(THR, 0x38); // 0x442c2c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x442d74
  }
  x1 = 3; // 0x442c38
  sub_0x61e890(); // 0x442c3c
  x0 = local_m8; // 0x442c44
  x2 = x0; // 0x442c40
  local_m18 = x2; // 0x442c48
  memSet(x2, 0xf, w0); // 0x442c4c
  x1 = local_m10; // 0x442c50
  ScreenUtil_getScreenWidth() /* 0x3a877c */; // 0x442c54
  d0 = 4.00000000 /* bits */; // 0x442c5c
  d2 = (d1 / (4.00000000 /* bits */)) /* float */; // 0x442c60
  v1_16b = v0_16b; // 0x442c58
  memRead2(THR, 0x50, x0, x1); // 0x442c64
  x0 = x0 + 0x10; // 0x442c68
  if (x1 <= x0) {
    local_m10 = q2; // 0x442d7c
    AllocationStub__Double() /* 0x61f878 */; // 0x442d80
    q2 = local_0; // 0x442d84
  } else {
    memSet(THR, 0x50, x0); // 0x442c74
    x0 = x0 - 0xf; // 0x442c78
    x1 = (x1 & 0xffff) | 0x30000; // 0x442c80
    memSet(x0, -1, x1); // 0x442c84
  }
  memSet(x0, 7, d2); // 0x442c88
  x3 = local_m18; // 0x442c8c
  memSet(x3, 0x13, w0); // 0x442c90
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x442c9c
  w16 = mem(x3, -1); // 0x442c94
  w17 = mem(x0, -1); // 0x442c98
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x442c94
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x442c98
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x442ca8
  }
  w0 = mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x442cb8
  w1 = mem((local_m8), 0x13); // 0x442cb0
  x0 = ((mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x442cbc
  x1 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x442cb4
  memSet(x3, 0x17, w0); // 0x442cc0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x442ccc
  w16 = mem(x3, -1); // 0x442cc4
  w17 = mem(x0, -1); // 0x442cc8
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x442cc4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x442cc8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x442cd8
  }
  x1 = mem((PP + 0x14000), 0x458) /* Function */; // 0x442ce4
  x2 = x3; // 0x442cdc
  AllocationStub__Closure() /* 0x61ec54 */; // 0x442ce8
  x1 = mem((PP + 0x14000), 0x460) /* TypeArguments */; // 0x442cf0
  local_m8 = x0; // 0x442cf4
  AllocationStub_Consumer() /* 0x41a414 */; // 0x442cf8
  x0 = local_m8; // 0x442d00
  x3 = x0; // 0x442cfc
  local_m10 = x3; // 0x442d04
  memSet(x3, 0x13, w0); // 0x442d08
  x1 = mem((PP + 0x14000), 0x468) /* Function */; // 0x442d14
  x2 = local_m18; // 0x442d0c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x442d18
  x1 = mem((PP + 0x14000), 0x460) /* TypeArguments */; // 0x442d20
  local_m8 = x0; // 0x442d24
  AllocationStub_ChangeNotifierProvider() /* 0x3b81c4 */; // 0x442d28
  x1 = x0; // 0x442d2c
  x2 = local_m10; // 0x442d30
  x3 = local_m8; // 0x442d34
  x5 = NULL; // 0x442d38
  local_m8 = x0; // 0x442d3c
  InheritedProvider_ctor() /* 0x3b7e8c */; // 0x442d40
  AllocationStub_Container() /* 0x391a04 */; // 0x442d44
  local_m10 = x0; // 0x442d48
  BARRIER = local_m8; // 0x442d4c
  local_0 = BARRIER; // 0x442d50
  x1 = x0; // 0x442d54
  x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x442d5c
  Container_ctor() /* 0x391490 */; // 0x442d60
  SP = FP; // 0x442d68
  x0 = local_m10; // 0x442d64
  // frame: FP, LR, mem(SP), 0x10 // 0x442d6c
  return;
}

// PagePKGameBetLaunchRecordState_anon_closure
// raw disassembly:
//  0x424858: ldr x1, [SP, #8]
//  0x42485c: ldur w2, [x1, #0x17]
//  0x424860: add x2, x2, HEAP, lsl #32
//  0x424864: ldur w1, [x2, #0xf]
//  0x424868: add x1, x1, HEAP, lsl #32
//  0x42486c: ldur w0, [x1, #0x13]
//  0x424870: add x0, x0, HEAP, lsl #32
//  0x424874: ret 
//
dynamic PagePKGameBetLaunchRecordState_anon_closure() {
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  w1 = mem((((mem((local_8), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf); /* _PagePKGameBetLaunchRecordState._refreshController (off 0x18) */  // 0x424864
  w2 = mem((local_8), 0x17); /* _PagePKGameBetLaunchRecordState._refreshController (off 0x18) */  // 0x42485c
  x1 = ((mem((((mem((local_8), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); /* _PagePKGameBetLaunchRecordState._refreshController (off 0x18) */  // 0x424868
  x2 = ((mem((local_8), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PagePKGameBetLaunchRecordState._refreshController (off 0x18) */  // 0x424860
  w0 = mem(x1, 0x13); // 0x42486c
  x0 = ((mem(x1, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x424870
  return x0;
}

// PagePKGameBetLaunchRecordState_anon_closure_2
// raw disassembly:
//  0x442dac: stp FP, LR, [SP, #-0x10]!
//  0x442db0: mov FP, SP
//  0x442db4: sub SP, SP, #0x38
//  0x442db8: ldr x0, [FP, #0x28]
//  0x442dbc: ldur w2, [x0, #0x17]
//  0x442dc0: add x2, x2, HEAP, lsl #32
//  0x442dc4: stur x2, [FP, #-8]
//  0x442dc8: ldr BARRIER, [THR, #0x38]
//  0x442dcc: cmp SP, BARRIER
//  0x442dd0: b.ls #0x443000
//  0x442dd4: ldur w0, [x2, #0xf]
//  0x442dd8: add x0, x0, HEAP, lsl #32
//  0x442ddc: ldur w1, [x0, #0x13]
//  0x442de0: add x1, x1, HEAP, lsl #32
//  0x442de4: ldur w0, [x1, #0x2b]
//  0x442de8: add x0, x0, HEAP, lsl #32
//  0x442dec: ldur w1, [x0, #0xb]
//  0x442df0: sbfx x0, x1, #1, #0x1f
//  0x442df4: cmp x0, #0
//  0x442df8: b.le #0x442ff0
//  0x442dfc: mov x0, #1
//  0x442e00: ldur w1, [x2, #0x13]
//  0x442e04: add x1, x1, HEAP, lsl #32
//  0x442e08: ldur d1, [x1, #7]
//  0x442e0c: mov v0.16b, v1.16b
//  0x442e10: mov x1, x0
//  0x442e14: stur d1, [FP, #-0x38]
//  0x442e18: bl #0x443a98
//  0x442e1c: mov x3, x0
//  0x442e20: ldur x0, [FP, #-8]
//  0x442e24: stur x3, [FP, #-0x18]
//  0x442e28: ldur w1, [x0, #0xf]
//  0x442e2c: add x1, x1, HEAP, lsl #32
//  0x442e30: ldur w4, [x1, #0x17]
//  0x442e34: add x4, x4, HEAP, lsl #32
//  0x442e38: ldr BARRIER, [PP, #0x40]
//  0x442e3c: cmp w4, w16
//  0x442e40: b.eq #0x443008
//  0x442e44: stur x4, [FP, #-0x10]
//  0x442e48: add x1, PP, #0x14, lsl #12
//  0x442e4c: ldr x1, [x1, #0x470]
//  0x442e50: mov x2, NULL
//  0x442e54: bl #0x61ec54
//  0x442e58: stur x0, [FP, #-0x20]
//  0x442e5c: bl #0x3ab5b8
//  0x442e60: mov x3, x0
//  0x442e64: ldur x0, [FP, #-0x20]
//  0x442e68: stur x3, [FP, #-0x28]
//  0x442e6c: stur w0, [x3, #0x1b]
//  0x442e70: add x0, PP, #0xf, lsl #12
//  0x442e74: ldr x0, [x0, #0x898]
//  0x442e78: stur w0, [x3, #0xb]
//  0x442e7c: add x17, PP, #0xf, lsl #12
//  0x442e80: ldr d0, [x17, #0x8a0]
//  0x442e84: stur d0, [x3, #0xf]
//  0x442e88: ldur x0, [FP, #-8]
//  0x442e8c: ldur w2, [x0, #0x17]
//  0x442e90: add x2, x2, HEAP, lsl #32
//  0x442e94: ldur d0, [FP, #-0x38]
//  0x442e98: mov x1, #1
//  0x442e9c: bl #0x443208
//  0x442ea0: stur x0, [FP, #-0x20]
//  0x442ea4: bl #0x3ab290
//  0x442ea8: mov x3, x0
//  0x442eac: ldur x0, [FP, #-0x10]
//  0x442eb0: stur x3, [FP, #-0x30]
//  0x442eb4: stur w0, [x3, #0x2b]
//  0x442eb8: ldur x0, [FP, #-0x20]
//  0x442ebc: stur w0, [x3, #0xb]
//  0x442ec0: ldur x0, [FP, #-0x28]
//  0x442ec4: stur w0, [x3, #0xf]
//  0x442ec8: add x0, NULL, #0x30
//  0x442ecc: stur w0, [x3, #0x1b]
//  0x442ed0: add x1, NULL, #0x20
//  0x442ed4: stur w1, [x3, #0x13]
//  0x442ed8: stur w0, [x3, #0x17]
//  0x442edc: ldur x2, [FP, #-8]
//  0x442ee0: add x1, PP, #0x14, lsl #12
//  0x442ee4: ldr x1, [x1, #0x478]
//  0x442ee8: bl #0x61ec54
//  0x442eec: ldur x2, [FP, #-0x30]
//  0x442ef0: stur w0, [x2, #0x23]
//  0x442ef4: add x1, PP, #0xf, lsl #12
//  0x442ef8: ldr x1, [x1, #0x218]
//  0x442efc: bl #0x396454
//  0x442f00: mov x1, x0
//  0x442f04: ldur x2, [FP, #-0x30]
//  0x442f08: ldr x3, [FP, #0x20]
//  0x442f0c: stur x0, [FP, #-8]
//  0x442f10: ldr x4, [PP, #0x2e0]
//  0x442f14: bl #0x39ecf8
//  0x442f18: add x1, PP, #0xe, lsl #12
//  0x442f1c: ldr x1, [x1, #0xad0]
//  0x442f20: bl #0x39fb14
//  0x442f24: mov x3, x0
//  0x442f28: mov x0, #1
//  0x442f2c: stur x3, [FP, #-0x10]
//  0x442f30: stur x0, [x3, #0x13]
//  0x442f34: add x0, PP, #0xe, lsl #12
//  0x442f38: ldr x0, [x0, #0xad8]
//  0x442f3c: stur w0, [x3, #0x1b]
//  0x442f40: ldur x0, [FP, #-8]
//  0x442f44: stur w0, [x3, #0xb]
//  0x442f48: mov x1, NULL
//  0x442f4c: mov x2, #4
//  0x442f50: bl #0x61f920
//  0x442f54: mov x2, x0
//  0x442f58: ldur x0, [FP, #-0x18]
//  0x442f5c: stur x2, [FP, #-8]
//  0x442f60: stur w0, [x2, #0xf]
//  0x442f64: ldur x0, [FP, #-0x10]
//  0x442f68: stur w0, [x2, #0x13]
//  0x442f6c: ldr x1, [PP, #0x5c58]
//  0x442f70: bl #0x61e854
//  0x442f74: mov x1, x0
//  0x442f78: ldur x0, [FP, #-8]
//  0x442f7c: stur x1, [FP, #-0x10]
//  0x442f80: stur w0, [x1, #0xf]
//  0x442f84: mov x0, #4
//  0x442f88: stur w0, [x1, #0xb]
//  0x442f8c: bl #0x39310c
//  0x442f90: mov x1, x0
//  0x442f94: add x0, PP, #0xa, lsl #12
//  0x442f98: ldr x0, [x0, #0x858]
//  0x442f9c: stur w0, [x1, #0xf]
//  0x442fa0: add x0, PP, #0xe, lsl #12
//  0x442fa4: ldr x0, [x0, #0xae0]
//  0x442fa8: stur w0, [x1, #0x13]
//  0x442fac: add x0, PP, #0xe, lsl #12
//  0x442fb0: ldr x0, [x0, #0xae8]
//  0x442fb4: stur w0, [x1, #0x17]
//  0x442fb8: add x0, PP, #0xe, lsl #12
//  0x442fbc: ldr x0, [x0, #0xb60]
//  0x442fc0: stur w0, [x1, #0x1b]
//  0x442fc4: add x0, PP, #0xe, lsl #12
//  0x442fc8: ldr x0, [x0, #0xaf8]
//  0x442fcc: stur w0, [x1, #0x23]
//  0x442fd0: add x0, PP, #0xa, lsl #12
//  0x442fd4: ldr x0, [x0, #0xa8]
//  0x442fd8: stur w0, [x1, #0x2b]
//  0x442fdc: stur xzr, [x1, #0x2f]
//  0x442fe0: ldur x0, [FP, #-0x10]
//  0x442fe4: stur w0, [x1, #0xb]
//  0x442fe8: mov x0, x1
//  0x442fec: b #0x442ff4
//  0x442ff0: bl #0x443014
//  0x442ff4: mov SP, FP
//  0x442ff8: ldp FP, LR, [SP], #0x10
//  0x442ffc: ret 
//  0x443000: bl #0x61fa28
//  0x443004: b #0x442dd4
//  0x443008: add x9, PP, #0x14, lsl #12
//  0x44300c: ldr x9, [x9, #0x480]
//  0x443010: bl #0x620258
//
dynamic PagePKGameBetLaunchRecordState_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic v0_16b;
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
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x442dac
  // frame: FP = SP // 0x442db0
  // frame: SP = SP - 0x38 // 0x442db4
  w2 = mem((local_28), 0x17); /* _PagePKGameBetLaunchRecordState._refreshController (off 0x18) */  // 0x442dbc
  x0 = local_28; // 0x442db8
  x2 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PagePKGameBetLaunchRecordState._refreshController (off 0x18) */  // 0x442dc0
  local_m8 = x2; // 0x442dc4
  BARRIER = mem(THR, 0x38); // 0x442dc8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x443000
  }
  w0 = mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x442de4
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13); // 0x442ddc
  x0 = (mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff; // 0x442de4
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x442de0
  w1 = mem((x0 + (HEAP << 32)), 0xb); // 0x442dec
  x0 = (((mem(((x0 + (HEAP << 32)) + (HEAP << 32)), 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x442df0
  x1 = (mem(((x0 + (HEAP << 32)) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x442dec
  if (x0 <= 0) {
    emptyWidge() /* 0x443014 */; // 0x442ff0
  } else {
    d1 = mem((((mem(x2, 0x13)) & 0xffffffff) + (HEAP << 32)), 7); // 0x442e08
    v0_16b = v1_16b; // 0x442e0c
    w1 = mem(x2, 0x13); // 0x442e00
    x0 = 1; // 0x442dfc
    x1 = 1; // 0x442e10
    local_m38 = d1; // 0x442e14
    titleBarWidget() /* 0x443a98 */; // 0x442e18
    x0 = local_m8; // 0x442e20
    x3 = x0; // 0x442e1c
    local_m18 = x3; // 0x442e24
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x442e38
    w1 = mem(x0, 0xf); // 0x442e28
    w4 = mem((((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x17); // 0x442e30
    x1 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x442e2c
    x4 = ((mem((((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x442e34
    if (w4 == w16) {
      x9 = mem((PP + 0x14000), 0x480) /* Field */; // 0x44300c
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x443010
    }
    local_m10 = x4; // 0x442e44
    x1 = mem((PP + 0x14000), 0x470) /* Function */; // 0x442e4c
    x2 = NULL; // 0x442e50
    AllocationStub__Closure() /* 0x61ec54 */; // 0x442e54
    local_m20 = x0; // 0x442e58
    AllocationStub_CustomFooter() /* 0x3ab5b8 */; // 0x442e5c
    x0 = local_m20; // 0x442e64
    x3 = x0; // 0x442e60
    local_m28 = x3; // 0x442e68
    memSet(x3, 0x1b, w0); // 0x442e6c
    x0 = mem((PP + 0xf000), 0x898) /* Obj!LoadStyle@12174  */; // 0x442e74
    memSet(x3, 0xb, w0); // 0x442e78
    d0 = 4631248529308778496; // 0x442e80
    x17 = PP + 0xf000; // 0x442e7c
    memSet(x3, 0xf, d0); // 0x442e84
    d0 = local_m38; // 0x442e94
    w2 = mem((local_m8), 0x17); /* _PagePKGameBetLaunchRecordState._refreshController (off 0x18) */  // 0x442e8c
    x0 = local_m8; // 0x442e88
    x1 = 1; // 0x442e98
    x2 = ((mem((local_m8), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PagePKGameBetLaunchRecordState._refreshController (off 0x18) */  // 0x442e90
    launchRecordListWidget() /* 0x443208 */; // 0x442e9c
    local_m20 = x0; // 0x442ea0
    AllocationStub_SmartRefresher() /* 0x3ab290 */; // 0x442ea4
    x0 = local_m10; // 0x442eac
    x3 = x0; // 0x442ea8
    local_m30 = x3; // 0x442eb0
    memSet(x3, 0x2b, w0); // 0x442eb4
    x0 = local_m20; // 0x442eb8
    memSet(x3, 0xb, w0); // 0x442ebc
    x0 = local_m28; // 0x442ec0
    memSet(x3, 0xf, w0); // 0x442ec4
    x0 = NULL + 0x30; // 0x442ec8
    memSet(x3, 0x1b, w0); // 0x442ecc
    x1 = NULL + 0x20; // 0x442ed0
    memSet(x3, 0x13, w1); // 0x442ed4
    memSet(x3, 0x17, w0); // 0x442ed8
    x1 = mem((PP + 0x14000), 0x478) /* Function */; // 0x442ee4
    x2 = local_m8; // 0x442edc
    AllocationStub__Closure() /* 0x61ec54 */; // 0x442ee8
    x2 = local_m30; // 0x442eec
    memSet(x2, 0x23, w0); // 0x442ef0
    x1 = mem((PP + 0xf000), 0x218) /* TypeArguments */; // 0x442ef8
    AllocationStub_MediaQuery() /* 0x396454 */; // 0x442efc
    x1 = x0; // 0x442f00
    x2 = local_m30; // 0x442f04
    x3 = local_20; // 0x442f08
    local_m8 = x0; // 0x442f0c
    x4 = mem(PP, 0x2e0) /* ImmutableArray */; // 0x442f10
    MediaQuery_ctor_removePadding() /* 0x39ecf8 */; // 0x442f14
    x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x442f1c
    AllocationStub_Expanded() /* 0x39fb14 */; // 0x442f20
    x0 = 1; // 0x442f28
    x3 = x0; // 0x442f24
    local_m10 = x3; // 0x442f2c
    memSet(x3, 0x13, x0); // 0x442f30
    x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x442f38
    memSet(x3, 0x1b, w0); // 0x442f3c
    x0 = local_m8; // 0x442f40
    memSet(x3, 0xb, w0); // 0x442f44
    x1 = NULL; // 0x442f48
    x2 = 4; // 0x442f4c
    sub_0x61f920(); // 0x442f50
    x0 = local_m18; // 0x442f58
    x2 = x0; // 0x442f54
    local_m8 = x2; // 0x442f5c
    memSet(x2, 0xf, w0); // 0x442f60
    x0 = local_m10; // 0x442f64
    memSet(x2, 0x13, w0); // 0x442f68
    x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x442f6c
    AllocationStub__GrowableList() /* 0x61e854 */; // 0x442f70
    x0 = local_m8; // 0x442f78
    x1 = x0; // 0x442f74
    local_m10 = x1; // 0x442f7c
    memSet(x1, 0xf, w0); // 0x442f80
    x0 = 4; // 0x442f84
    memSet(x1, 0xb, w0); // 0x442f88
    AllocationStub_Column() /* 0x39310c */; // 0x442f8c
    x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x442f98
    x1 = x0; // 0x442f90
    memSet(x1, 0xf, w0); // 0x442f9c
    x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x442fa4
    memSet(x1, 0x13, w0); // 0x442fa8
    x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x442fb0
    memSet(x1, 0x17, w0); // 0x442fb4
    x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x442fbc
    memSet(x1, 0x1b, w0); // 0x442fc0
    x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x442fc8
    memSet(x1, 0x23, w0); // 0x442fcc
    x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x442fd4
    memSet(x1, 0x2b, w0); // 0x442fd8
    memSet(x1, 0x2f, xzr); // 0x442fdc
    x0 = local_m10; // 0x442fe0
    memSet(x1, 0xb, w0); // 0x442fe4
    x0 = x1; // 0x442fe8
  }
  SP = FP; // 0x442ff4
  // frame: FP, LR, mem(SP), 0x10 // 0x442ff8
  return;
}

// PagePKGameBetLaunchRecordState_anon_closure_3
// raw disassembly:
//  0x444254: stp FP, LR, [SP, #-0x10]!
//  0x444258: mov FP, SP
//  0x44425c: sub SP, SP, #8
//  0x444260: ldr x0, [FP, #0x10]
//  0x444264: ldur w2, [x0, #0x17]
//  0x444268: add x2, x2, HEAP, lsl #32
//  0x44426c: ldr BARRIER, [THR, #0x38]
//  0x444270: cmp SP, BARRIER
//  0x444274: b.ls #0x4442b4
//  0x444278: ldur w0, [x2, #0xf]
//  0x44427c: add x0, x0, HEAP, lsl #32
//  0x444280: ldur w3, [x0, #0x13]
//  0x444284: add x3, x3, HEAP, lsl #32
//  0x444288: stur x3, [FP, #-8]
//  0x44428c: add x1, PP, #0x14, lsl #12
//  0x444290: ldr x1, [x1, #0x488]
//  0x444294: bl #0x61ec54
//  0x444298: ldur x1, [FP, #-8]
//  0x44429c: mov x2, x0
//  0x4442a0: bl #0x4442bc
//  0x4442a4: mov x0, NULL
//  0x4442a8: mov SP, FP
//  0x4442ac: ldp FP, LR, [SP], #0x10
//  0x4442b0: ret 
//  0x4442b4: bl #0x61fa28
//  0x4442b8: b #0x444278
//
dynamic PagePKGameBetLaunchRecordState_anon_closure_3() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x444254
  BARRIER = mem(THR, 0x38); // 0x44426c
  // frame: FP = SP // 0x444258
  // frame: SP = SP - 8 // 0x44425c
  w2 = mem((local_10), 0x17); /* _PagePKGameBetLaunchRecordState._refreshController (off 0x18) */  // 0x444264
  x0 = local_10; // 0x444260
  x2 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PagePKGameBetLaunchRecordState._refreshController (off 0x18) */  // 0x444268
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4442b4
  }
  w3 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13); // 0x444280
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x44427c
  x3 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x444284
  local_m8 = x3; // 0x444288
  x1 = mem((PP + 0x14000), 0x488) /* Function */; // 0x444290
  AllocationStub__Closure() /* 0x61ec54 */; // 0x444294
  x1 = local_m8; // 0x444298
  x2 = x0; // 0x44429c
  GamePKBetLaunchRecordNotifier_requestPKGameLaunchRankList() /* 0x4442bc */; // 0x4442a0
  SP = FP; // 0x4442a8
  x0 = NULL; // 0x4442a4
  // frame: FP, LR, mem(SP), 0x10 // 0x4442ac
  return;
}

// PagePKGameBetLaunchRecordState_anon_closure_4
// raw disassembly:
//  0x445538: stp FP, LR, [SP, #-0x10]!
//  0x44553c: mov FP, SP
//  0x445540: ldr x0, [FP, #0x20]
//  0x445544: ldur w1, [x0, #0x17]
//  0x445548: add x1, x1, HEAP, lsl #32
//  0x44554c: ldr BARRIER, [THR, #0x38]
//  0x445550: cmp SP, BARRIER
//  0x445554: b.ls #0x4455e0
//  0x445558: ldr x0, [FP, #0x18]
//  0x44555c: tbnz w0, #4, #0x4455b0
//  0x445560: ldr x0, [FP, #0x10]
//  0x445564: tbnz w0, #4, #0x44558c
//  0x445568: ldur w0, [x1, #0xf]
//  0x44556c: add x0, x0, HEAP, lsl #32
//  0x445570: ldur w1, [x0, #0x17]
//  0x445574: add x1, x1, HEAP, lsl #32
//  0x445578: ldr BARRIER, [PP, #0x40]
//  0x44557c: cmp w1, w16
//  0x445580: b.eq #0x4455e8
//  0x445584: bl #0x3adfd4
//  0x445588: b #0x4455d0
//  0x44558c: ldur w0, [x1, #0xf]
//  0x445590: add x0, x0, HEAP, lsl #32
//  0x445594: ldur w1, [x0, #0x17]
//  0x445598: add x1, x1, HEAP, lsl #32
//  0x44559c: ldr BARRIER, [PP, #0x40]
//  0x4455a0: cmp w1, w16
//  0x4455a4: b.eq #0x4455f4
//  0x4455a8: bl #0x3ade48
//  0x4455ac: b #0x4455d0
//  0x4455b0: ldur w0, [x1, #0xf]
//  0x4455b4: add x0, x0, HEAP, lsl #32
//  0x4455b8: ldur w1, [x0, #0x17]
//  0x4455bc: add x1, x1, HEAP, lsl #32
//  0x4455c0: ldr BARRIER, [PP, #0x40]
//  0x4455c4: cmp w1, w16
//  0x4455c8: b.eq #0x445600
//  0x4455cc: bl #0x3adbb4
//  0x4455d0: mov x0, NULL
//  0x4455d4: mov SP, FP
//  0x4455d8: ldp FP, LR, [SP], #0x10
//  0x4455dc: ret 
//  0x4455e0: bl #0x61fa28
//  0x4455e4: b #0x445558
//  0x4455e8: add x9, PP, #0x14, lsl #12
//  0x4455ec: ldr x9, [x9, #0x480]
//  0x4455f0: bl #0x620258
//  0x4455f4: add x9, PP, #0x14, lsl #12
//  0x4455f8: ldr x9, [x9, #0x480]
//  0x4455fc: bl #0x620258
//  0x445600: add x9, PP, #0x14, lsl #12
//  0x445604: ldr x9, [x9, #0x480]
//  0x445608: bl #0x620258
//
dynamic PagePKGameBetLaunchRecordState_anon_closure_4() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x445538
  BARRIER = mem(THR, 0x38); // 0x44554c
  // frame: FP = SP // 0x44553c
  w1 = mem((local_20), 0x17); /* _PagePKGameBetLaunchRecordState._refreshController (off 0x18) */  // 0x445544
  x0 = local_20; // 0x445540
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PagePKGameBetLaunchRecordState._refreshController (off 0x18) */  // 0x445548
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4455e0
  }
  x0 = local_18; // 0x445558
  if (x0 & (1 << 4) != 0) {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4455c0
    w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4455b8
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4455b4
    x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4455bc
    if (w1 != w16) {
      RefreshController_loadFailed() /* 0x3adbb4 */; // 0x4455cc
      SP = FP; // 0x4455d4
      x0 = NULL; // 0x4455d0
      // frame: FP, LR, mem(SP), 0x10 // 0x4455d8
      return;
    }
  } else {
    x0 = local_10; // 0x445560
    if (x0 & (1 << 4) != 0) {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x44559c
      w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x445594
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x445590
      x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x445598
      if (w1 != w16) {
        RefreshController_loadComplete() /* 0x3ade48 */; // 0x4455a8
        // duplicated tail (join at 0x4455d0; the same code was emitted above)
        SP = FP; // 0x4455d4
        x0 = NULL; // 0x4455d0
        // frame: FP, LR, mem(SP), 0x10 // 0x4455d8
        return;
      }
    } else {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x445578
      w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x445570
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x44556c
      x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x445574
      if (w1 == w16) {
        x9 = mem((PP + 0x14000), 0x480) /* Field */; // 0x4455ec
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4455f0
      }
      RefreshController_loadNoData() /* 0x3adfd4 */; // 0x445584
      // duplicated tail (join at 0x4455d0; the same code was emitted above)
      SP = FP; // 0x4455d4
      x0 = NULL; // 0x4455d0
      // frame: FP, LR, mem(SP), 0x10 // 0x4455d8
      return;
    }
    x9 = mem((PP + 0x14000), 0x480) /* Field */; // 0x4455f8
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4455fc
  }
  x9 = mem((PP + 0x14000), 0x480) /* Field */; // 0x445604
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x445608
}

// PagePKGameBetLaunchRecordState_anon_closure_5
// raw disassembly:
//  0x3ae8a0: stp FP, LR, [SP, #-0x10]!
//  0x3ae8a4: mov FP, SP
//  0x3ae8a8: sub SP, SP, #8
//  0x3ae8ac: ldr BARRIER, [THR, #0x38]
//  0x3ae8b0: cmp SP, BARRIER
//  0x3ae8b4: b.ls #0x3ae91c
//  0x3ae8b8: ldr x0, [FP, #0x10]
//  0x3ae8bc: add BARRIER, PP, #0xf, lsl #12
//  0x3ae8c0: ldr BARRIER, [BARRIER, #0xe08]
//  0x3ae8c4: cmp w0, w16
//  0x3ae8c8: b.ne #0x3ae8f8
//  0x3ae8cc: bl #0x396940
//  0x3ae8d0: mov x1, x0
//  0x3ae8d4: add x0, PP, #0xe, lsl #12
//  0x3ae8d8: ldr x0, [x0, #0xaa0]
//  0x3ae8dc: stur x1, [FP, #-8]
//  0x3ae8e0: stur w0, [x1, #0xf]
//  0x3ae8e4: bl #0x3b3c18
//  0x3ae8e8: mov x1, x0
//  0x3ae8ec: ldur x0, [FP, #-8]
//  0x3ae8f0: stur w1, [x0, #0xb]
//  0x3ae8f4: b #0x3ae910
//  0x3ae8f8: bl #0x391a04
//  0x3ae8fc: mov x1, x0
//  0x3ae900: stur x0, [FP, #-8]
//  0x3ae904: ldr x4, [PP, #0x4c0]
//  0x3ae908: bl #0x391490
//  0x3ae90c: ldur x0, [FP, #-8]
//  0x3ae910: mov SP, FP
//  0x3ae914: ldp FP, LR, [SP], #0x10
//  0x3ae918: ret 
//  0x3ae91c: bl #0x61fa28
//  0x3ae920: b #0x3ae8b8
//
dynamic PagePKGameBetLaunchRecordState_anon_closure_5() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ae8a0
  BARRIER = mem(THR, 0x38); // 0x3ae8ac
  // frame: FP = SP // 0x3ae8a4
  // frame: SP = SP - 8 // 0x3ae8a8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ae91c
  }
  BARRIER = mem((PP + 0xf000), 0xe08) /* Obj!LoadStatus@1217a  */; // 0x3ae8c0
  x0 = local_10; // 0x3ae8b8
  if (w0 != w16) {
    AllocationStub_Container() /* 0x391a04 */; // 0x3ae8f8
    x1 = x0; // 0x3ae8fc
    local_m8 = x0; // 0x3ae900
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3ae904
    Container_ctor() /* 0x391490 */; // 0x3ae908
    x0 = local_m8; // 0x3ae90c
  } else {
    AllocationStub_Center() /* 0x396940 */; // 0x3ae8cc
    x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x3ae8d8
    x1 = x0; // 0x3ae8d0
    local_m8 = x1; // 0x3ae8dc
    memSet(x1, 0xf, w0); // 0x3ae8e0
    AllocationStub_PetalLoading() /* 0x3b3c18 */; // 0x3ae8e4
    x0 = local_m8; // 0x3ae8ec
    x1 = x0; // 0x3ae8e8
    memSet(x0, 0xb, w1); // 0x3ae8f0
  }
  SP = FP; // 0x3ae910
  // frame: FP, LR, mem(SP), 0x10 // 0x3ae914
  return;
}

// PagePKGameBetLaunchRecordState_dispose
// raw disassembly:
//  0x452754: stp FP, LR, [SP, #-0x10]!
//  0x452758: mov FP, SP
//  0x45275c: ldr BARRIER, [THR, #0x38]
//  0x452760: cmp SP, BARRIER
//  0x452764: b.ls #0x452794
//  0x452768: ldur w0, [x1, #0x17]
//  0x45276c: add x0, x0, HEAP, lsl #32
//  0x452770: ldr BARRIER, [PP, #0x40]
//  0x452774: cmp w0, w16
//  0x452778: b.eq #0x45279c
//  0x45277c: mov x1, x0
//  0x452780: bl #0x45132c
//  0x452784: mov x0, NULL
//  0x452788: mov SP, FP
//  0x45278c: ldp FP, LR, [SP], #0x10
//  0x452790: ret 
//  0x452794: bl #0x61fa28
//  0x452798: b #0x452768
//  0x45279c: add x9, PP, #0x14, lsl #12
//  0x4527a0: ldr x9, [x9, #0x480]
//  0x4527a4: bl #0x620258
//
dynamic PagePKGameBetLaunchRecordState_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x452754
  BARRIER = mem(THR, 0x38); // 0x45275c
  // frame: FP = SP // 0x452758
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x452794
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x452770
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x45276c
  if (w0 == w16) {
    x9 = mem((PP + 0x14000), 0x480) /* Field */; // 0x4527a0
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4527a4
  }
  x1 = x0; // 0x45277c
  RefreshController_dispose() /* 0x45132c */; // 0x452780
  SP = FP; // 0x452788
  x0 = NULL; // 0x452784
  // frame: FP, LR, mem(SP), 0x10 // 0x45278c
  return;
}

// PagePKGameBetLaunchRecordState_initState
// raw disassembly:
//  0x4da668: stp FP, LR, [SP, #-0x10]!
//  0x4da66c: mov FP, SP
//  0x4da670: sub SP, SP, #0x18
//  0x4da674: stur x1, [FP, #-8]
//  0x4da678: ldr BARRIER, [THR, #0x38]
//  0x4da67c: cmp SP, BARRIER
//  0x4da680: b.ls #0x4da708
//  0x4da684: mov x1, #1
//  0x4da688: bl #0x61e890
//  0x4da68c: mov x1, x0
//  0x4da690: ldur x0, [FP, #-8]
//  0x4da694: stur x1, [FP, #-0x10]
//  0x4da698: stur w0, [x1, #0xf]
//  0x4da69c: bl #0x4c47f0
//  0x4da6a0: mov x1, x0
//  0x4da6a4: stur x0, [FP, #-0x18]
//  0x4da6a8: bl #0x4c46e0
//  0x4da6ac: ldur x0, [FP, #-0x18]
//  0x4da6b0: ldur x1, [FP, #-8]
//  0x4da6b4: stur w0, [x1, #0x17]
//  0x4da6b8: ldurb w16, [x1, #-1]
//  0x4da6bc: ldurb w17, [x0, #-1]
//  0x4da6c0: and BARRIER, x17, BARRIER, lsr #2
//  0x4da6c4: tst BARRIER, HEAP, lsr #32
//  0x4da6c8: b.eq #0x4da6d0
//  0x4da6cc: bl #0x61e04c
//  0x4da6d0: ldur w0, [x1, #0x13]
//  0x4da6d4: add x0, x0, HEAP, lsl #32
//  0x4da6d8: ldur x2, [FP, #-0x10]
//  0x4da6dc: stur x0, [FP, #-0x18]
//  0x4da6e0: add x1, PP, #0x14, lsl #12
//  0x4da6e4: ldr x1, [x1, #0x4d8]
//  0x4da6e8: bl #0x61ec54
//  0x4da6ec: ldur x1, [FP, #-0x18]
//  0x4da6f0: mov x2, x0
//  0x4da6f4: bl #0x4da710
//  0x4da6f8: mov x0, NULL
//  0x4da6fc: mov SP, FP
//  0x4da700: ldp FP, LR, [SP], #0x10
//  0x4da704: ret 
//  0x4da708: bl #0x61fa28
//  0x4da70c: b #0x4da684
//
dynamic PagePKGameBetLaunchRecordState_initState() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4da668
  // frame: FP = SP // 0x4da66c
  // frame: SP = SP - 0x18 // 0x4da670
  local_m8 = x1; // 0x4da674
  BARRIER = mem(THR, 0x38); // 0x4da678
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4da708
  }
  x1 = 1; // 0x4da684
  sub_0x61e890(); // 0x4da688
  x0 = local_m8; // 0x4da690
  x1 = x0; // 0x4da68c
  local_m10 = x1; // 0x4da694
  memSet(x1, 0xf, w0); // 0x4da698
  AllocationStub_RefreshController() /* 0x4c47f0 */; // 0x4da69c
  x1 = x0; // 0x4da6a0
  local_m18 = x0; // 0x4da6a4
  RefreshController_ctor() /* 0x4c46e0 */; // 0x4da6a8
  x0 = local_m18; // 0x4da6ac
  x1 = local_m8; // 0x4da6b0
  memSet(x1, 0x17, w0); // 0x4da6b4
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4da6c0
  w16 = mem(x1, -1); // 0x4da6b8
  w17 = mem(x0, -1); // 0x4da6bc
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4da6b8
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4da6bc
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4da6cc
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4da6d4
  x2 = local_m10; // 0x4da6d8
  local_m18 = x0; // 0x4da6dc
  x1 = mem((PP + 0x14000), 0x4d8) /* Function */; // 0x4da6e4
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4da6e8
  x1 = local_m18; // 0x4da6ec
  x2 = x0; // 0x4da6f0
  GamePKBetLaunchRecordNotifier_gainPKGameLaunchRank() /* 0x4da710 */; // 0x4da6f4
  SP = FP; // 0x4da6fc
  x0 = NULL; // 0x4da6f8
  // frame: FP, LR, mem(SP), 0x10 // 0x4da700
  return;
}

// PagePKGameBetParticipateRecordState_build
// raw disassembly:
//  0x44560c: stp FP, LR, [SP, #-0x10]!
//  0x445610: mov FP, SP
//  0x445614: sub SP, SP, #0x20
//  0x445618: mov x0, x1
//  0x44561c: stur x1, [FP, #-8]
//  0x445620: mov x1, x2
//  0x445624: stur x2, [FP, #-0x10]
//  0x445628: ldr BARRIER, [THR, #0x38]
//  0x44562c: cmp SP, BARRIER
//  0x445630: b.ls #0x445770
//  0x445634: mov x1, #3
//  0x445638: bl #0x61e890
//  0x44563c: mov x2, x0
//  0x445640: ldur x0, [FP, #-8]
//  0x445644: stur x2, [FP, #-0x18]
//  0x445648: stur w0, [x2, #0xf]
//  0x44564c: ldur x1, [FP, #-0x10]
//  0x445650: bl #0x3a877c
//  0x445654: mov v1.16b, v0.16b
//  0x445658: fmov d0, #4.00000000
//  0x44565c: fdiv d2, d1, d0
//  0x445660: ldp x0, x1, [THR, #0x50]
//  0x445664: add x0, x0, #0x10
//  0x445668: cmp x1, x0
//  0x44566c: b.ls #0x445778
//  0x445670: str x0, [THR, #0x50]
//  0x445674: sub x0, x0, #0xf
//  0x445678: mov x1, #0xe15c
//  0x44567c: movk x1, #3, lsl #16
//  0x445680: stur x1, [x0, #-1]
//  0x445684: stur d2, [x0, #7]
//  0x445688: ldur x3, [FP, #-0x18]
//  0x44568c: stur w0, [x3, #0x13]
//  0x445690: ldurb w16, [x3, #-1]
//  0x445694: ldurb w17, [x0, #-1]
//  0x445698: and BARRIER, x17, BARRIER, lsr #2
//  0x44569c: tst BARRIER, HEAP, lsr #32
//  0x4456a0: b.eq #0x4456a8
//  0x4456a4: bl #0x61e08c
//  0x4456a8: ldur x0, [FP, #-8]
//  0x4456ac: ldur w1, [x0, #0x13]
//  0x4456b0: add x1, x1, HEAP, lsl #32
//  0x4456b4: ldur w0, [x1, #0x2b]
//  0x4456b8: add x0, x0, HEAP, lsl #32
//  0x4456bc: stur w0, [x3, #0x17]
//  0x4456c0: ldurb w16, [x3, #-1]
//  0x4456c4: ldurb w17, [x0, #-1]
//  0x4456c8: and BARRIER, x17, BARRIER, lsr #2
//  0x4456cc: tst BARRIER, HEAP, lsr #32
//  0x4456d0: b.eq #0x4456d8
//  0x4456d4: bl #0x61e08c
//  0x4456d8: mov x2, x3
//  0x4456dc: add x1, PP, #0x14, lsl #12
//  0x4456e0: ldr x1, [x1, #0x358]
//  0x4456e4: bl #0x61ec54
//  0x4456e8: add x1, PP, #0x14, lsl #12
//  0x4456ec: ldr x1, [x1, #0x360]
//  0x4456f0: stur x0, [FP, #-8]
//  0x4456f4: bl #0x41a414
//  0x4456f8: mov x3, x0
//  0x4456fc: ldur x0, [FP, #-8]
//  0x445700: stur x3, [FP, #-0x10]
//  0x445704: stur w0, [x3, #0x13]
//  0x445708: ldur x2, [FP, #-0x18]
//  0x44570c: add x1, PP, #0x14, lsl #12
//  0x445710: ldr x1, [x1, #0x368]
//  0x445714: bl #0x61ec54
//  0x445718: add x1, PP, #0x14, lsl #12
//  0x44571c: ldr x1, [x1, #0x360]
//  0x445720: stur x0, [FP, #-8]
//  0x445724: bl #0x3b81c4
//  0x445728: mov x1, x0
//  0x44572c: ldur x2, [FP, #-0x10]
//  0x445730: ldur x3, [FP, #-8]
//  0x445734: mov x5, NULL
//  0x445738: stur x0, [FP, #-8]
//  0x44573c: bl #0x3b7e8c
//  0x445740: bl #0x391a04
//  0x445744: stur x0, [FP, #-0x10]
//  0x445748: ldur BARRIER, [FP, #-8]
//  0x44574c: str BARRIER, [SP]
//  0x445750: mov x1, x0
//  0x445754: add x4, PP, #0xc, lsl #12
//  0x445758: ldr x4, [x4, #0x1f8]
//  0x44575c: bl #0x391490
//  0x445760: ldur x0, [FP, #-0x10]
//  0x445764: mov SP, FP
//  0x445768: ldp FP, LR, [SP], #0x10
//  0x44576c: ret 
//  0x445770: bl #0x61fa28
//  0x445774: b #0x445634
//  0x445778: str q2, [SP, #-0x10]!
//  0x44577c: bl #0x61f878
//  0x445780: ldr q2, [SP], #0x10
//  0x445784: b #0x445684
//
dynamic PagePKGameBetParticipateRecordState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic d2;
  dynamic q2;
  dynamic v1_16b;
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
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x44560c
  // frame: FP = SP // 0x445610
  // frame: SP = SP - 0x20 // 0x445614
  x0 = x1; // 0x445618
  local_m8 = x1; // 0x44561c
  x1 = x2; // 0x445620
  local_m10 = x2; // 0x445624
  BARRIER = mem(THR, 0x38); // 0x445628
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x445770
  }
  x1 = 3; // 0x445634
  sub_0x61e890(); // 0x445638
  x0 = local_m8; // 0x445640
  x2 = x0; // 0x44563c
  local_m18 = x2; // 0x445644
  memSet(x2, 0xf, w0); // 0x445648
  x1 = local_m10; // 0x44564c
  ScreenUtil_getScreenWidth() /* 0x3a877c */; // 0x445650
  d0 = 4.00000000 /* bits */; // 0x445658
  d2 = (d1 / (4.00000000 /* bits */)) /* float */; // 0x44565c
  v1_16b = v0_16b; // 0x445654
  memRead2(THR, 0x50, x0, x1); // 0x445660
  x0 = x0 + 0x10; // 0x445664
  if (x1 <= x0) {
    local_m10 = q2; // 0x445778
    AllocationStub__Double() /* 0x61f878 */; // 0x44577c
    q2 = local_0; // 0x445780
  } else {
    memSet(THR, 0x50, x0); // 0x445670
    x0 = x0 - 0xf; // 0x445674
    x1 = (x1 & 0xffff) | 0x30000; // 0x44567c
    memSet(x0, -1, x1); // 0x445680
  }
  memSet(x0, 7, d2); // 0x445684
  x3 = local_m18; // 0x445688
  memSet(x3, 0x13, w0); // 0x44568c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x445698
  w16 = mem(x3, -1); // 0x445690
  w17 = mem(x0, -1); // 0x445694
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x445690
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x445694
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4456a4
  }
  w0 = mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x4456b4
  w1 = mem((local_m8), 0x13); // 0x4456ac
  x0 = ((mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x4456b8
  x1 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4456b0
  memSet(x3, 0x17, w0); // 0x4456bc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4456c8
  w16 = mem(x3, -1); // 0x4456c0
  w17 = mem(x0, -1); // 0x4456c4
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4456c0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4456c4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4456d4
  }
  x1 = mem((PP + 0x14000), 0x358) /* Function */; // 0x4456e0
  x2 = x3; // 0x4456d8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4456e4
  x1 = mem((PP + 0x14000), 0x360) /* TypeArguments */; // 0x4456ec
  local_m8 = x0; // 0x4456f0
  AllocationStub_Consumer() /* 0x41a414 */; // 0x4456f4
  x0 = local_m8; // 0x4456fc
  x3 = x0; // 0x4456f8
  local_m10 = x3; // 0x445700
  memSet(x3, 0x13, w0); // 0x445704
  x1 = mem((PP + 0x14000), 0x368) /* Function */; // 0x445710
  x2 = local_m18; // 0x445708
  AllocationStub__Closure() /* 0x61ec54 */; // 0x445714
  x1 = mem((PP + 0x14000), 0x360) /* TypeArguments */; // 0x44571c
  local_m8 = x0; // 0x445720
  AllocationStub_ChangeNotifierProvider() /* 0x3b81c4 */; // 0x445724
  x1 = x0; // 0x445728
  x2 = local_m10; // 0x44572c
  x3 = local_m8; // 0x445730
  x5 = NULL; // 0x445734
  local_m8 = x0; // 0x445738
  InheritedProvider_ctor() /* 0x3b7e8c */; // 0x44573c
  AllocationStub_Container() /* 0x391a04 */; // 0x445740
  local_m10 = x0; // 0x445744
  BARRIER = local_m8; // 0x445748
  local_0 = BARRIER; // 0x44574c
  x1 = x0; // 0x445750
  x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x445758
  Container_ctor() /* 0x391490 */; // 0x44575c
  SP = FP; // 0x445764
  x0 = local_m10; // 0x445760
  // frame: FP, LR, mem(SP), 0x10 // 0x445768
  return;
}

// PagePKGameBetParticipateRecordState_anon_closure
// raw disassembly:
//  0x4457a8: stp FP, LR, [SP, #-0x10]!
//  0x4457ac: mov FP, SP
//  0x4457b0: sub SP, SP, #0x38
//  0x4457b4: ldr x0, [FP, #0x28]
//  0x4457b8: ldur w2, [x0, #0x17]
//  0x4457bc: add x2, x2, HEAP, lsl #32
//  0x4457c0: stur x2, [FP, #-8]
//  0x4457c4: ldr BARRIER, [THR, #0x38]
//  0x4457c8: cmp SP, BARRIER
//  0x4457cc: b.ls #0x445a34
//  0x4457d0: ldur w0, [x2, #0xf]
//  0x4457d4: add x0, x0, HEAP, lsl #32
//  0x4457d8: ldur w1, [x0, #0x13]
//  0x4457dc: add x1, x1, HEAP, lsl #32
//  0x4457e0: ldur w0, [x1, #0x2b]
//  0x4457e4: add x0, x0, HEAP, lsl #32
//  0x4457e8: ldur w1, [x0, #0xb]
//  0x4457ec: sbfx x0, x1, #1, #0x1f
//  0x4457f0: cmp x0, #0
//  0x4457f4: b.le #0x445a24
//  0x4457f8: ldur w0, [x2, #0x13]
//  0x4457fc: add x0, x0, HEAP, lsl #32
//  0x445800: ldur d1, [x0, #7]
//  0x445804: mov v0.16b, v1.16b
//  0x445808: stur d1, [FP, #-0x38]
//  0x44580c: mov x1, #2
//  0x445810: bl #0x443a98
//  0x445814: mov x3, x0
//  0x445818: ldur x0, [FP, #-8]
//  0x44581c: stur x3, [FP, #-0x20]
//  0x445820: ldur w4, [x0, #0x17]
//  0x445824: add x4, x4, HEAP, lsl #32
//  0x445828: stur x4, [FP, #-0x18]
//  0x44582c: ldur w1, [x4, #0xb]
//  0x445830: sbfx x2, x1, #1, #0x1f
//  0x445834: cmp x2, #0
//  0x445838: b.le #0x445958
//  0x44583c: ldur w1, [x0, #0xf]
//  0x445840: add x1, x1, HEAP, lsl #32
//  0x445844: ldur w5, [x1, #0x17]
//  0x445848: add x5, x5, HEAP, lsl #32
//  0x44584c: ldr BARRIER, [PP, #0x40]
//  0x445850: cmp w5, w16
//  0x445854: b.eq #0x445a3c
//  0x445858: stur x5, [FP, #-0x10]
//  0x44585c: add x1, PP, #0x14, lsl #12
//  0x445860: ldr x1, [x1, #0x370]
//  0x445864: mov x2, NULL
//  0x445868: bl #0x61ec54
//  0x44586c: stur x0, [FP, #-0x28]
//  0x445870: bl #0x3ab5b8
//  0x445874: mov x3, x0
//  0x445878: ldur x0, [FP, #-0x28]
//  0x44587c: stur x3, [FP, #-0x30]
//  0x445880: stur w0, [x3, #0x1b]
//  0x445884: add x0, PP, #0xf, lsl #12
//  0x445888: ldr x0, [x0, #0x898]
//  0x44588c: stur w0, [x3, #0xb]
//  0x445890: add x17, PP, #0xf, lsl #12
//  0x445894: ldr d0, [x17, #0x8a0]
//  0x445898: stur d0, [x3, #0xf]
//  0x44589c: ldur d0, [FP, #-0x38]
//  0x4458a0: ldur x2, [FP, #-0x18]
//  0x4458a4: mov x1, #2
//  0x4458a8: bl #0x443208
//  0x4458ac: stur x0, [FP, #-0x18]
//  0x4458b0: bl #0x3ab290
//  0x4458b4: mov x3, x0
//  0x4458b8: ldur x0, [FP, #-0x10]
//  0x4458bc: stur x3, [FP, #-0x28]
//  0x4458c0: stur w0, [x3, #0x2b]
//  0x4458c4: ldur x0, [FP, #-0x18]
//  0x4458c8: stur w0, [x3, #0xb]
//  0x4458cc: ldur x0, [FP, #-0x30]
//  0x4458d0: stur w0, [x3, #0xf]
//  0x4458d4: add x0, NULL, #0x30
//  0x4458d8: stur w0, [x3, #0x1b]
//  0x4458dc: add x1, NULL, #0x20
//  0x4458e0: stur w1, [x3, #0x13]
//  0x4458e4: stur w0, [x3, #0x17]
//  0x4458e8: ldur x2, [FP, #-8]
//  0x4458ec: add x1, PP, #0x14, lsl #12
//  0x4458f0: ldr x1, [x1, #0x378]
//  0x4458f4: bl #0x61ec54
//  0x4458f8: ldur x2, [FP, #-0x28]
//  0x4458fc: stur w0, [x2, #0x23]
//  0x445900: add x1, PP, #0xf, lsl #12
//  0x445904: ldr x1, [x1, #0x218]
//  0x445908: bl #0x396454
//  0x44590c: mov x1, x0
//  0x445910: ldur x2, [FP, #-0x28]
//  0x445914: ldr x3, [FP, #0x20]
//  0x445918: stur x0, [FP, #-8]
//  0x44591c: ldr x4, [PP, #0x2e0]
//  0x445920: bl #0x39ecf8
//  0x445924: add x1, PP, #0xe, lsl #12
//  0x445928: ldr x1, [x1, #0xad0]
//  0x44592c: bl #0x39fb14
//  0x445930: mov x1, x0
//  0x445934: mov x0, #1
//  0x445938: stur x0, [x1, #0x13]
//  0x44593c: add x0, PP, #0xe, lsl #12
//  0x445940: ldr x0, [x0, #0xad8]
//  0x445944: stur w0, [x1, #0x1b]
//  0x445948: ldur x0, [FP, #-8]
//  0x44594c: stur w0, [x1, #0xb]
//  0x445950: mov x4, x1
//  0x445954: b #0x445970
//  0x445958: bl #0x391a04
//  0x44595c: mov x1, x0
//  0x445960: stur x0, [FP, #-8]
//  0x445964: ldr x4, [PP, #0x4c0]
//  0x445968: bl #0x391490
//  0x44596c: ldur x4, [FP, #-8]
//  0x445970: ldur x0, [FP, #-0x20]
//  0x445974: mov x3, #4
//  0x445978: mov x2, x3
//  0x44597c: stur x4, [FP, #-8]
//  0x445980: mov x1, NULL
//  0x445984: bl #0x61f920
//  0x445988: mov x2, x0
//  0x44598c: ldur x0, [FP, #-0x20]
//  0x445990: stur x2, [FP, #-0x10]
//  0x445994: stur w0, [x2, #0xf]
//  0x445998: ldur x0, [FP, #-8]
//  0x44599c: stur w0, [x2, #0x13]
//  0x4459a0: ldr x1, [PP, #0x5c58]
//  0x4459a4: bl #0x61e854
//  0x4459a8: mov x1, x0
//  0x4459ac: ldur x0, [FP, #-0x10]
//  0x4459b0: stur x1, [FP, #-8]
//  0x4459b4: stur w0, [x1, #0xf]
//  0x4459b8: mov x0, #4
//  0x4459bc: stur w0, [x1, #0xb]
//  0x4459c0: bl #0x39310c
//  0x4459c4: mov x1, x0
//  0x4459c8: add x0, PP, #0xa, lsl #12
//  0x4459cc: ldr x0, [x0, #0x858]
//  0x4459d0: stur w0, [x1, #0xf]
//  0x4459d4: add x0, PP, #0xe, lsl #12
//  0x4459d8: ldr x0, [x0, #0xae0]
//  0x4459dc: stur w0, [x1, #0x13]
//  0x4459e0: add x0, PP, #0xe, lsl #12
//  0x4459e4: ldr x0, [x0, #0xae8]
//  0x4459e8: stur w0, [x1, #0x17]
//  0x4459ec: add x0, PP, #0xe, lsl #12
//  0x4459f0: ldr x0, [x0, #0xb60]
//  0x4459f4: stur w0, [x1, #0x1b]
//  0x4459f8: add x0, PP, #0xe, lsl #12
//  0x4459fc: ldr x0, [x0, #0xaf8]
//  0x445a00: stur w0, [x1, #0x23]
//  0x445a04: add x0, PP, #0xa, lsl #12
//  0x445a08: ldr x0, [x0, #0xa8]
//  0x445a0c: stur w0, [x1, #0x2b]
//  0x445a10: stur xzr, [x1, #0x2f]
//  0x445a14: ldur x0, [FP, #-8]
//  0x445a18: stur w0, [x1, #0xb]
//  0x445a1c: mov x0, x1
//  0x445a20: b #0x445a28
//  0x445a24: bl #0x443014
//  0x445a28: mov SP, FP
//  0x445a2c: ldp FP, LR, [SP], #0x10
//  0x445a30: ret 
//  0x445a34: bl #0x61fa28
//  0x445a38: b #0x4457d0
//  0x445a3c: add x9, PP, #0x14, lsl #12
//  0x445a40: ldr x9, [x9, #0x380]
//  0x445a44: bl #0x620258
//
dynamic PagePKGameBetParticipateRecordState_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic v0_16b;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w4;
  dynamic w5;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4457a8
  // frame: FP = SP // 0x4457ac
  // frame: SP = SP - 0x38 // 0x4457b0
  w2 = mem((local_28), 0x17); /* _PagePKGameBetParticipateRecordState._refreshController (off 0x18) */  // 0x4457b8
  x0 = local_28; // 0x4457b4
  x2 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PagePKGameBetParticipateRecordState._refreshController (off 0x18) */  // 0x4457bc
  local_m8 = x2; // 0x4457c0
  BARRIER = mem(THR, 0x38); // 0x4457c4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x445a34
  }
  w0 = mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x4457e0
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13); // 0x4457d8
  x0 = (mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff; // 0x4457e0
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4457dc
  w1 = mem((x0 + (HEAP << 32)), 0xb); // 0x4457e8
  x0 = (((mem(((x0 + (HEAP << 32)) + (HEAP << 32)), 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x4457ec
  x1 = (mem(((x0 + (HEAP << 32)) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x4457e8
  if (x0 <= 0) {
    emptyWidge() /* 0x443014 */; // 0x445a24
  } else {
    d1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 7); // 0x445800
    v0_16b = v1_16b; // 0x445804
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4457fc
    local_m38 = d1; // 0x445808
    x1 = 2; // 0x44580c
    titleBarWidget() /* 0x443a98 */; // 0x445810
    x0 = local_m8; // 0x445818
    x3 = x0; // 0x445814
    local_m20 = x3; // 0x44581c
    w4 = mem(x0, 0x17); /* _PagePKGameBetParticipateRecordState._refreshController (off 0x18) */  // 0x445820
    x4 = ((mem(x0, 0x17)) & 0xffffffff) + (HEAP << 32); /* _PagePKGameBetParticipateRecordState._refreshController (off 0x18) */  // 0x445824
    local_m18 = x4; // 0x445828
    w1 = mem(x4, 0xb); // 0x44582c
    x1 = (mem(x4, 0xb)) & 0xffffffff; // 0x44582c
    x2 = (((mem(x4, 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x445830
    if (x2 <= 0) {
      AllocationStub_Container() /* 0x391a04 */; // 0x445958
      x1 = x0; // 0x44595c
      local_m8 = x0; // 0x445960
      x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x445964
      Container_ctor() /* 0x391490 */; // 0x445968
      x4 = local_m8; // 0x44596c
    } else {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x44584c
      w5 = mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x445844
      x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x445840
      x5 = ((mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x445848
      if (w5 == w16) {
        x9 = mem((PP + 0x14000), 0x380) /* Field */; // 0x445a40
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x445a44
      }
      local_m10 = x5; // 0x445858
      x1 = mem((PP + 0x14000), 0x370) /* Function */; // 0x445860
      x2 = NULL; // 0x445864
      AllocationStub__Closure() /* 0x61ec54 */; // 0x445868
      local_m28 = x0; // 0x44586c
      AllocationStub_CustomFooter() /* 0x3ab5b8 */; // 0x445870
      x0 = local_m28; // 0x445878
      x3 = x0; // 0x445874
      local_m30 = x3; // 0x44587c
      memSet(x3, 0x1b, w0); // 0x445880
      x0 = mem((PP + 0xf000), 0x898) /* Obj!LoadStyle@12174  */; // 0x445888
      memSet(x3, 0xb, w0); // 0x44588c
      d0 = 4631248529308778496; // 0x445894
      x17 = PP + 0xf000; // 0x445890
      memSet(x3, 0xf, d0); // 0x445898
      d0 = local_m38; // 0x44589c
      x1 = 2; // 0x4458a4
      x2 = local_m18; // 0x4458a0
      launchRecordListWidget() /* 0x443208 */; // 0x4458a8
      local_m18 = x0; // 0x4458ac
      AllocationStub_SmartRefresher() /* 0x3ab290 */; // 0x4458b0
      x0 = local_m10; // 0x4458b8
      x3 = x0; // 0x4458b4
      local_m28 = x3; // 0x4458bc
      memSet(x3, 0x2b, w0); // 0x4458c0
      x0 = local_m18; // 0x4458c4
      memSet(x3, 0xb, w0); // 0x4458c8
      x0 = local_m30; // 0x4458cc
      memSet(x3, 0xf, w0); // 0x4458d0
      x0 = NULL + 0x30; // 0x4458d4
      memSet(x3, 0x1b, w0); // 0x4458d8
      x1 = NULL + 0x20; // 0x4458dc
      memSet(x3, 0x13, w1); // 0x4458e0
      memSet(x3, 0x17, w0); // 0x4458e4
      x1 = mem((PP + 0x14000), 0x378) /* Function */; // 0x4458f0
      x2 = local_m8; // 0x4458e8
      AllocationStub__Closure() /* 0x61ec54 */; // 0x4458f4
      x2 = local_m28; // 0x4458f8
      memSet(x2, 0x23, w0); // 0x4458fc
      x1 = mem((PP + 0xf000), 0x218) /* TypeArguments */; // 0x445904
      AllocationStub_MediaQuery() /* 0x396454 */; // 0x445908
      x1 = x0; // 0x44590c
      x2 = local_m28; // 0x445910
      x3 = local_20; // 0x445914
      local_m8 = x0; // 0x445918
      x4 = mem(PP, 0x2e0) /* ImmutableArray */; // 0x44591c
      MediaQuery_ctor_removePadding() /* 0x39ecf8 */; // 0x445920
      x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x445928
      AllocationStub_Expanded() /* 0x39fb14 */; // 0x44592c
      x0 = 1; // 0x445934
      x1 = x0; // 0x445930
      memSet(x1, 0x13, x0); // 0x445938
      x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x445940
      memSet(x1, 0x1b, w0); // 0x445944
      x0 = local_m8; // 0x445948
      memSet(x1, 0xb, w0); // 0x44594c
      x4 = x1; // 0x445950
    }
    x0 = local_m20; // 0x445970
    x2 = 4; // 0x445978
    x3 = 4; // 0x445974
    local_m8 = x4; // 0x44597c
    x1 = NULL; // 0x445980
    sub_0x61f920(); // 0x445984
    x0 = local_m20; // 0x44598c
    x2 = x0; // 0x445988
    local_m10 = x2; // 0x445990
    memSet(x2, 0xf, w0); // 0x445994
    x0 = local_m8; // 0x445998
    memSet(x2, 0x13, w0); // 0x44599c
    x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x4459a0
    AllocationStub__GrowableList() /* 0x61e854 */; // 0x4459a4
    x0 = local_m10; // 0x4459ac
    x1 = x0; // 0x4459a8
    local_m8 = x1; // 0x4459b0
    memSet(x1, 0xf, w0); // 0x4459b4
    x0 = 4; // 0x4459b8
    memSet(x1, 0xb, w0); // 0x4459bc
    AllocationStub_Column() /* 0x39310c */; // 0x4459c0
    x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x4459cc
    x1 = x0; // 0x4459c4
    memSet(x1, 0xf, w0); // 0x4459d0
    x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x4459d8
    memSet(x1, 0x13, w0); // 0x4459dc
    x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x4459e4
    memSet(x1, 0x17, w0); // 0x4459e8
    x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x4459f0
    memSet(x1, 0x1b, w0); // 0x4459f4
    x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x4459fc
    memSet(x1, 0x23, w0); // 0x445a00
    x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x445a08
    memSet(x1, 0x2b, w0); // 0x445a0c
    memSet(x1, 0x2f, xzr); // 0x445a10
    x0 = local_m8; // 0x445a14
    memSet(x1, 0xb, w0); // 0x445a18
    x0 = x1; // 0x445a1c
  }
  SP = FP; // 0x445a28
  // frame: FP, LR, mem(SP), 0x10 // 0x445a2c
  return;
}

// PagePKGameBetParticipateRecordState_anon_closure_2
// raw disassembly:
//  0x445a48: stp FP, LR, [SP, #-0x10]!
//  0x445a4c: mov FP, SP
//  0x445a50: sub SP, SP, #8
//  0x445a54: ldr x0, [FP, #0x10]
//  0x445a58: ldur w2, [x0, #0x17]
//  0x445a5c: add x2, x2, HEAP, lsl #32
//  0x445a60: ldr BARRIER, [THR, #0x38]
//  0x445a64: cmp SP, BARRIER
//  0x445a68: b.ls #0x445aa8
//  0x445a6c: ldur w0, [x2, #0xf]
//  0x445a70: add x0, x0, HEAP, lsl #32
//  0x445a74: ldur w3, [x0, #0x13]
//  0x445a78: add x3, x3, HEAP, lsl #32
//  0x445a7c: stur x3, [FP, #-8]
//  0x445a80: add x1, PP, #0x14, lsl #12
//  0x445a84: ldr x1, [x1, #0x388]
//  0x445a88: bl #0x61ec54
//  0x445a8c: ldur x1, [FP, #-8]
//  0x445a90: mov x2, x0
//  0x445a94: bl #0x445ab0
//  0x445a98: mov x0, NULL
//  0x445a9c: mov SP, FP
//  0x445aa0: ldp FP, LR, [SP], #0x10
//  0x445aa4: ret 
//  0x445aa8: bl #0x61fa28
//  0x445aac: b #0x445a6c
//
dynamic PagePKGameBetParticipateRecordState_anon_closure_2() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x445a48
  BARRIER = mem(THR, 0x38); // 0x445a60
  // frame: FP = SP // 0x445a4c
  // frame: SP = SP - 8 // 0x445a50
  w2 = mem((local_10), 0x17); /* _PagePKGameBetParticipateRecordState._refreshController (off 0x18) */  // 0x445a58
  x0 = local_10; // 0x445a54
  x2 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PagePKGameBetParticipateRecordState._refreshController (off 0x18) */  // 0x445a5c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x445aa8
  }
  w3 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13); // 0x445a74
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x445a70
  x3 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x445a78
  local_m8 = x3; // 0x445a7c
  x1 = mem((PP + 0x14000), 0x388) /* Function */; // 0x445a84
  AllocationStub__Closure() /* 0x61ec54 */; // 0x445a88
  x1 = local_m8; // 0x445a8c
  x2 = x0; // 0x445a90
  GamePKBetParticipateRecordNotifier_requestGameParticipateRankList() /* 0x445ab0 */; // 0x445a94
  SP = FP; // 0x445a9c
  x0 = NULL; // 0x445a98
  // frame: FP, LR, mem(SP), 0x10 // 0x445aa0
  return;
}

// PagePKGameBetParticipateRecordState_anon_closure_3
// raw disassembly:
//  0x445e10: stp FP, LR, [SP, #-0x10]!
//  0x445e14: mov FP, SP
//  0x445e18: ldr x0, [FP, #0x20]
//  0x445e1c: ldur w1, [x0, #0x17]
//  0x445e20: add x1, x1, HEAP, lsl #32
//  0x445e24: ldr BARRIER, [THR, #0x38]
//  0x445e28: cmp SP, BARRIER
//  0x445e2c: b.ls #0x445eb8
//  0x445e30: ldr x0, [FP, #0x18]
//  0x445e34: tbnz w0, #4, #0x445e88
//  0x445e38: ldr x0, [FP, #0x10]
//  0x445e3c: tbnz w0, #4, #0x445e64
//  0x445e40: ldur w0, [x1, #0xf]
//  0x445e44: add x0, x0, HEAP, lsl #32
//  0x445e48: ldur w1, [x0, #0x17]
//  0x445e4c: add x1, x1, HEAP, lsl #32
//  0x445e50: ldr BARRIER, [PP, #0x40]
//  0x445e54: cmp w1, w16
//  0x445e58: b.eq #0x445ec0
//  0x445e5c: bl #0x3adfd4
//  0x445e60: b #0x445ea8
//  0x445e64: ldur w0, [x1, #0xf]
//  0x445e68: add x0, x0, HEAP, lsl #32
//  0x445e6c: ldur w1, [x0, #0x17]
//  0x445e70: add x1, x1, HEAP, lsl #32
//  0x445e74: ldr BARRIER, [PP, #0x40]
//  0x445e78: cmp w1, w16
//  0x445e7c: b.eq #0x445ecc
//  0x445e80: bl #0x3ade48
//  0x445e84: b #0x445ea8
//  0x445e88: ldur w0, [x1, #0xf]
//  0x445e8c: add x0, x0, HEAP, lsl #32
//  0x445e90: ldur w1, [x0, #0x17]
//  0x445e94: add x1, x1, HEAP, lsl #32
//  0x445e98: ldr BARRIER, [PP, #0x40]
//  0x445e9c: cmp w1, w16
//  0x445ea0: b.eq #0x445ed8
//  0x445ea4: bl #0x3adbb4
//  0x445ea8: mov x0, NULL
//  0x445eac: mov SP, FP
//  0x445eb0: ldp FP, LR, [SP], #0x10
//  0x445eb4: ret 
//  0x445eb8: bl #0x61fa28
//  0x445ebc: b #0x445e30
//  0x445ec0: add x9, PP, #0x14, lsl #12
//  0x445ec4: ldr x9, [x9, #0x380]
//  0x445ec8: bl #0x620258
//  0x445ecc: add x9, PP, #0x14, lsl #12
//  0x445ed0: ldr x9, [x9, #0x380]
//  0x445ed4: bl #0x620258
//  0x445ed8: add x9, PP, #0x14, lsl #12
//  0x445edc: ldr x9, [x9, #0x380]
//  0x445ee0: bl #0x620258
//
dynamic PagePKGameBetParticipateRecordState_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x445e10
  BARRIER = mem(THR, 0x38); // 0x445e24
  // frame: FP = SP // 0x445e14
  w1 = mem((local_20), 0x17); /* _PagePKGameBetParticipateRecordState._refreshController (off 0x18) */  // 0x445e1c
  x0 = local_20; // 0x445e18
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PagePKGameBetParticipateRecordState._refreshController (off 0x18) */  // 0x445e20
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x445eb8
  }
  x0 = local_18; // 0x445e30
  if (x0 & (1 << 4) != 0) {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x445e98
    w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x445e90
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x445e8c
    x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x445e94
    if (w1 != w16) {
      RefreshController_loadFailed() /* 0x3adbb4 */; // 0x445ea4
      SP = FP; // 0x445eac
      x0 = NULL; // 0x445ea8
      // frame: FP, LR, mem(SP), 0x10 // 0x445eb0
      return;
    }
  } else {
    x0 = local_10; // 0x445e38
    if (x0 & (1 << 4) != 0) {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x445e74
      w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x445e6c
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x445e68
      x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x445e70
      if (w1 != w16) {
        RefreshController_loadComplete() /* 0x3ade48 */; // 0x445e80
        // duplicated tail (join at 0x445ea8; the same code was emitted above)
        SP = FP; // 0x445eac
        x0 = NULL; // 0x445ea8
        // frame: FP, LR, mem(SP), 0x10 // 0x445eb0
        return;
      }
    } else {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x445e50
      w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x445e48
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x445e44
      x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x445e4c
      if (w1 == w16) {
        x9 = mem((PP + 0x14000), 0x380) /* Field */; // 0x445ec4
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x445ec8
      }
      RefreshController_loadNoData() /* 0x3adfd4 */; // 0x445e5c
      // duplicated tail (join at 0x445ea8; the same code was emitted above)
      SP = FP; // 0x445eac
      x0 = NULL; // 0x445ea8
      // frame: FP, LR, mem(SP), 0x10 // 0x445eb0
      return;
    }
    x9 = mem((PP + 0x14000), 0x380) /* Field */; // 0x445ed0
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x445ed4
  }
  x9 = mem((PP + 0x14000), 0x380) /* Field */; // 0x445edc
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x445ee0
}

// PagePKGameBetParticipateRecordState_dispose
// raw disassembly:
//  0x4527a8: stp FP, LR, [SP, #-0x10]!
//  0x4527ac: mov FP, SP
//  0x4527b0: ldr BARRIER, [THR, #0x38]
//  0x4527b4: cmp SP, BARRIER
//  0x4527b8: b.ls #0x4527e8
//  0x4527bc: ldur w0, [x1, #0x17]
//  0x4527c0: add x0, x0, HEAP, lsl #32
//  0x4527c4: ldr BARRIER, [PP, #0x40]
//  0x4527c8: cmp w0, w16
//  0x4527cc: b.eq #0x4527f0
//  0x4527d0: mov x1, x0
//  0x4527d4: bl #0x45132c
//  0x4527d8: mov x0, NULL
//  0x4527dc: mov SP, FP
//  0x4527e0: ldp FP, LR, [SP], #0x10
//  0x4527e4: ret 
//  0x4527e8: bl #0x61fa28
//  0x4527ec: b #0x4527bc
//  0x4527f0: add x9, PP, #0x14, lsl #12
//  0x4527f4: ldr x9, [x9, #0x380]
//  0x4527f8: bl #0x620258
//
dynamic PagePKGameBetParticipateRecordState_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4527a8
  BARRIER = mem(THR, 0x38); // 0x4527b0
  // frame: FP = SP // 0x4527ac
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4527e8
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4527c4
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4527c0
  if (w0 == w16) {
    x9 = mem((PP + 0x14000), 0x380) /* Field */; // 0x4527f4
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4527f8
  }
  x1 = x0; // 0x4527d0
  RefreshController_dispose() /* 0x45132c */; // 0x4527d4
  SP = FP; // 0x4527dc
  x0 = NULL; // 0x4527d8
  // frame: FP, LR, mem(SP), 0x10 // 0x4527e0
  return;
}

// PagePKGameBetParticipateRecordState_initState
// raw disassembly:
//  0x4da764: stp FP, LR, [SP, #-0x10]!
//  0x4da768: mov FP, SP
//  0x4da76c: sub SP, SP, #0x18
//  0x4da770: stur x1, [FP, #-8]
//  0x4da774: ldr BARRIER, [THR, #0x38]
//  0x4da778: cmp SP, BARRIER
//  0x4da77c: b.ls #0x4da804
//  0x4da780: mov x1, #1
//  0x4da784: bl #0x61e890
//  0x4da788: mov x1, x0
//  0x4da78c: ldur x0, [FP, #-8]
//  0x4da790: stur x1, [FP, #-0x10]
//  0x4da794: stur w0, [x1, #0xf]
//  0x4da798: bl #0x4c47f0
//  0x4da79c: mov x1, x0
//  0x4da7a0: stur x0, [FP, #-0x18]
//  0x4da7a4: bl #0x4c46e0
//  0x4da7a8: ldur x0, [FP, #-0x18]
//  0x4da7ac: ldur x1, [FP, #-8]
//  0x4da7b0: stur w0, [x1, #0x17]
//  0x4da7b4: ldurb w16, [x1, #-1]
//  0x4da7b8: ldurb w17, [x0, #-1]
//  0x4da7bc: and BARRIER, x17, BARRIER, lsr #2
//  0x4da7c0: tst BARRIER, HEAP, lsr #32
//  0x4da7c4: b.eq #0x4da7cc
//  0x4da7c8: bl #0x61e04c
//  0x4da7cc: ldur w0, [x1, #0x13]
//  0x4da7d0: add x0, x0, HEAP, lsl #32
//  0x4da7d4: ldur x2, [FP, #-0x10]
//  0x4da7d8: stur x0, [FP, #-0x18]
//  0x4da7dc: add x1, PP, #0x14, lsl #12
//  0x4da7e0: ldr x1, [x1, #0x450]
//  0x4da7e4: bl #0x61ec54
//  0x4da7e8: ldur x1, [FP, #-0x18]
//  0x4da7ec: mov x2, x0
//  0x4da7f0: bl #0x4da80c
//  0x4da7f4: mov x0, NULL
//  0x4da7f8: mov SP, FP
//  0x4da7fc: ldp FP, LR, [SP], #0x10
//  0x4da800: ret 
//  0x4da804: bl #0x61fa28
//  0x4da808: b #0x4da780
//
dynamic PagePKGameBetParticipateRecordState_initState() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4da764
  // frame: FP = SP // 0x4da768
  // frame: SP = SP - 0x18 // 0x4da76c
  local_m8 = x1; // 0x4da770
  BARRIER = mem(THR, 0x38); // 0x4da774
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4da804
  }
  x1 = 1; // 0x4da780
  sub_0x61e890(); // 0x4da784
  x0 = local_m8; // 0x4da78c
  x1 = x0; // 0x4da788
  local_m10 = x1; // 0x4da790
  memSet(x1, 0xf, w0); // 0x4da794
  AllocationStub_RefreshController() /* 0x4c47f0 */; // 0x4da798
  x1 = x0; // 0x4da79c
  local_m18 = x0; // 0x4da7a0
  RefreshController_ctor() /* 0x4c46e0 */; // 0x4da7a4
  x0 = local_m18; // 0x4da7a8
  x1 = local_m8; // 0x4da7ac
  memSet(x1, 0x17, w0); // 0x4da7b0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4da7bc
  w16 = mem(x1, -1); // 0x4da7b4
  w17 = mem(x0, -1); // 0x4da7b8
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4da7b4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4da7b8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4da7c8
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4da7d0
  x2 = local_m10; // 0x4da7d4
  local_m18 = x0; // 0x4da7d8
  x1 = mem((PP + 0x14000), 0x450) /* Function */; // 0x4da7e0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4da7e4
  x1 = local_m18; // 0x4da7e8
  x2 = x0; // 0x4da7ec
  GamePKBetParticipateRecordNotifier_gainPKGameParticipateRank() /* 0x4da80c */; // 0x4da7f0
  SP = FP; // 0x4da7f8
  x0 = NULL; // 0x4da7f4
  // frame: FP, LR, mem(SP), 0x10 // 0x4da7fc
  return;
}

// PagePKGameBetTabRecord_createState
// raw disassembly:
//  0x4c5604: stp FP, LR, [SP, #-0x10]!
//  0x4c5608: mov FP, SP
//  0x4c560c: sub SP, SP, #8
//  0x4c5610: ldr BARRIER, [THR, #0x38]
//  0x4c5614: cmp SP, BARRIER
//  0x4c5618: b.ls #0x4c5644
//  0x4c561c: add x1, PP, #0xb, lsl #12
//  0x4c5620: ldr x1, [x1, #0x628]
//  0x4c5624: bl #0x4c5740
//  0x4c5628: mov x1, x0
//  0x4c562c: stur x0, [FP, #-8]
//  0x4c5630: bl #0x4c564c
//  0x4c5634: ldur x0, [FP, #-8]
//  0x4c5638: mov SP, FP
//  0x4c563c: ldp FP, LR, [SP], #0x10
//  0x4c5640: ret 
//  0x4c5644: bl #0x61fa28
//  0x4c5648: b #0x4c561c
//
dynamic PagePKGameBetTabRecord_createState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c5604
  BARRIER = mem(THR, 0x38); // 0x4c5610
  // frame: FP = SP // 0x4c5608
  // frame: SP = SP - 8 // 0x4c560c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c5644
  }
  x1 = mem((PP + 0xb000), 0x628) /* TypeArguments */; // 0x4c5620
  AllocationStub__PagePKGameBetTabRecordState() /* 0x4c5740 */; // 0x4c5624
  x1 = x0; // 0x4c5628
  local_m8 = x0; // 0x4c562c
  PagePKGameBetTabRecordState_ctor() /* 0x4c564c */; // 0x4c5630
  SP = FP; // 0x4c5638
  x0 = local_m8; // 0x4c5634
  // frame: FP, LR, mem(SP), 0x10 // 0x4c563c
  return;
}

// PagePKGameBetLaunchRecord_createState
// raw disassembly:
//  0x4c574c: stp FP, LR, [SP, #-0x10]!
//  0x4c5750: mov FP, SP
//  0x4c5754: sub SP, SP, #0x10
//  0x4c5758: ldr BARRIER, [THR, #0x38]
//  0x4c575c: cmp SP, BARRIER
//  0x4c5760: b.ls #0x4c57c4
//  0x4c5764: add x1, PP, #0x12, lsl #12
//  0x4c5768: ldr x1, [x1, #0xd8]
//  0x4c576c: bl #0x4c5894
//  0x4c5770: mov x1, x0
//  0x4c5774: ldr x0, [PP, #0x40]
//  0x4c5778: stur x1, [FP, #-8]
//  0x4c577c: stur w0, [x1, #0x17]
//  0x4c5780: bl #0x4c5888
//  0x4c5784: mov x1, x0
//  0x4c5788: stur x0, [FP, #-0x10]
//  0x4c578c: bl #0x4c57cc
//  0x4c5790: ldur x0, [FP, #-0x10]
//  0x4c5794: ldur x1, [FP, #-8]
//  0x4c5798: stur w0, [x1, #0x13]
//  0x4c579c: ldurb w16, [x1, #-1]
//  0x4c57a0: ldurb w17, [x0, #-1]
//  0x4c57a4: and BARRIER, x17, BARRIER, lsr #2
//  0x4c57a8: tst BARRIER, HEAP, lsr #32
//  0x4c57ac: b.eq #0x4c57b4
//  0x4c57b0: bl #0x61e04c
//  0x4c57b4: mov x0, x1
//  0x4c57b8: mov SP, FP
//  0x4c57bc: ldp FP, LR, [SP], #0x10
//  0x4c57c0: ret 
//  0x4c57c4: bl #0x61fa28
//  0x4c57c8: b #0x4c5764
//
dynamic PagePKGameBetLaunchRecord_createState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c574c
  BARRIER = mem(THR, 0x38); // 0x4c5758
  // frame: FP = SP // 0x4c5750
  // frame: SP = SP - 0x10 // 0x4c5754
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c57c4
  }
  x1 = mem((PP + 0x12000), 0xd8) /* TypeArguments */; // 0x4c5768
  AllocationStub__PagePKGameBetLaunchRecordState() /* 0x4c5894 */; // 0x4c576c
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4c5774
  x1 = x0; // 0x4c5770
  local_m8 = x1; // 0x4c5778
  memSet(x1, 0x17, w0); // 0x4c577c
  AllocationStub_GamePKBetLaunchRecordNotifier() /* 0x4c5888 */; // 0x4c5780
  x1 = x0; // 0x4c5784
  local_m10 = x0; // 0x4c5788
  GamePKBetLaunchRecordNotifier_ctor() /* 0x4c57cc */; // 0x4c578c
  x0 = local_m10; // 0x4c5790
  x1 = local_m8; // 0x4c5794
  memSet(x1, 0x13, w0); // 0x4c5798
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c57a4
  w16 = mem(x1, -1); // 0x4c579c
  w17 = mem(x0, -1); // 0x4c57a0
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c579c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c57a0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c57b0
  }
  SP = FP; // 0x4c57b8
  x0 = x1; // 0x4c57b4
  // frame: FP, LR, mem(SP), 0x10 // 0x4c57bc
  return;
}

// PagePKGameBetParticipateRecord_createState
// raw disassembly:
//  0x4c58a0: stp FP, LR, [SP, #-0x10]!
//  0x4c58a4: mov FP, SP
//  0x4c58a8: sub SP, SP, #0x10
//  0x4c58ac: ldr BARRIER, [THR, #0x38]
//  0x4c58b0: cmp SP, BARRIER
//  0x4c58b4: b.ls #0x4c5918
//  0x4c58b8: add x1, PP, #0x12, lsl #12
//  0x4c58bc: ldr x1, [x1, #0xe8]
//  0x4c58c0: bl #0x4c592c
//  0x4c58c4: mov x1, x0
//  0x4c58c8: ldr x0, [PP, #0x40]
//  0x4c58cc: stur x1, [FP, #-8]
//  0x4c58d0: stur w0, [x1, #0x17]
//  0x4c58d4: bl #0x4c5920
//  0x4c58d8: mov x1, x0
//  0x4c58dc: stur x0, [FP, #-0x10]
//  0x4c58e0: bl #0x4c57cc
//  0x4c58e4: ldur x0, [FP, #-0x10]
//  0x4c58e8: ldur x1, [FP, #-8]
//  0x4c58ec: stur w0, [x1, #0x13]
//  0x4c58f0: ldurb w16, [x1, #-1]
//  0x4c58f4: ldurb w17, [x0, #-1]
//  0x4c58f8: and BARRIER, x17, BARRIER, lsr #2
//  0x4c58fc: tst BARRIER, HEAP, lsr #32
//  0x4c5900: b.eq #0x4c5908
//  0x4c5904: bl #0x61e04c
//  0x4c5908: mov x0, x1
//  0x4c590c: mov SP, FP
//  0x4c5910: ldp FP, LR, [SP], #0x10
//  0x4c5914: ret 
//  0x4c5918: bl #0x61fa28
//  0x4c591c: b #0x4c58b8
//
dynamic PagePKGameBetParticipateRecord_createState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c58a0
  BARRIER = mem(THR, 0x38); // 0x4c58ac
  // frame: FP = SP // 0x4c58a4
  // frame: SP = SP - 0x10 // 0x4c58a8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c5918
  }
  x1 = mem((PP + 0x12000), 0xe8) /* TypeArguments */; // 0x4c58bc
  AllocationStub__PagePKGameBetParticipateRecordState() /* 0x4c592c */; // 0x4c58c0
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4c58c8
  x1 = x0; // 0x4c58c4
  local_m8 = x1; // 0x4c58cc
  memSet(x1, 0x17, w0); // 0x4c58d0
  AllocationStub_GamePKBetParticipateRecordNotifier() /* 0x4c5920 */; // 0x4c58d4
  x1 = x0; // 0x4c58d8
  local_m10 = x0; // 0x4c58dc
  GamePKBetLaunchRecordNotifier_ctor() /* 0x4c57cc */; // 0x4c58e0
  x0 = local_m10; // 0x4c58e4
  x1 = local_m8; // 0x4c58e8
  memSet(x1, 0x13, w0); // 0x4c58ec
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c58f8
  w16 = mem(x1, -1); // 0x4c58f0
  w17 = mem(x0, -1); // 0x4c58f4
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c58f0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c58f4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c5904
  }
  SP = FP; // 0x4c590c
  x0 = x1; // 0x4c5908
  // frame: FP, LR, mem(SP), 0x10 // 0x4c5910
  return;
}
