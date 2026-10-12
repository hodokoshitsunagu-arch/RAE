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

dynamic AllocationStub_AlwaysScrollableScrollPhysics, AllocationStub_BorderRadius;
dynamic AllocationStub_BorderSide, AllocationStub_BoxConstraints, AllocationStub_BoxDecoration;
dynamic AllocationStub_ChangeNotifierProvider, AllocationStub_Column;
dynamic AllocationStub_ConstrainedBox, AllocationStub_Consumer, AllocationStub_Container;
dynamic AllocationStub_CustomFooter, AllocationStub_Divider, AllocationStub_Duration;
dynamic AllocationStub_EdgeInsets, AllocationStub_Expanded, AllocationStub_HighlightTextParser;
dynamic AllocationStub_ListView, AllocationStub_Padding, AllocationStub_PageController;
dynamic AllocationStub_PageView, AllocationStub_PartyInviteNotifier;
dynamic AllocationStub_PetalLoading, AllocationStub_Radius, AllocationStub_RefreshController;
dynamic AllocationStub_Row, AllocationStub_SOAssetImage, AllocationStub_SOButton;
dynamic AllocationStub_SOTabIndicator, AllocationStub_SizedBox, AllocationStub_SmartRefresher;
dynamic AllocationStub_SoulAvatarImage, AllocationStub_SoulPageScaffold, AllocationStub_Spacer;
dynamic AllocationStub_Tab, AllocationStub_TabBar, AllocationStub_TabController;
dynamic AllocationStub_Text, AllocationStub_TextStyle, AllocationStub_Visibility;
dynamic AllocationStub__Closure, AllocationStub__GrowableList, AllocationStub__InviteUserPage;
dynamic AllocationStub__InviteUserPageState, AllocationStub__Mint;
dynamic AllocationStub__PartyInvitePageState, AllocationStub__Set;
dynamic AllocationStub__WidgetTicker, BARRIER, Border_factory_ctor_all;
dynamic CompactIterator_moveNext, Container_ctor;
dynamic EditableTextState_State_AutomaticKeepAliveClientMixin_ensureKeepAlive;
dynamic EditableTextState_State_AutomaticKeepAliveClientMixin_releaseKeepAlive;
dynamic EventTrack_eventPv, FP, Future_factory_ctor_delayed, GestureDetector_ctor;
dynamic GrowableList_factory_ctor, GrowableList_factory_ctor_of, HEAP;
dynamic HighlightTextParser_parser, InheritedProvider_ctor, LR;
dynamic LateInitializationErrorSharedWithoutFpuRegsStub_0x620258, ListBase_map;
dynamic ListView_ctor_builder, MediaQuery_of, NULL;
dynamic NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0, PP, PageController_jumpToPage;
dynamic PageView_ctor_builder, PartyInviteNotifier_confirmInvite, PartyInviteNotifier_ctor;
dynamic PartyInviteNotifier_getEmptyTipsWithIndex, PartyInviteNotifier_getItemFlag;
dynamic PartyInviteNotifier_getItemsWithIndex, PartyInviteNotifier_get_isUserSelected;
dynamic PartyInviteNotifier_get_selectedCount, PartyInviteNotifier_needFlagHighlight;
dynamic PartyInviteNotifier_requestItemList, PartyInviteNotifier_selectCurrentItem;
dynamic RangeErrorSharedWithoutFpuRegsStub_0x61fe70, RefreshController_ctor;
dynamic RefreshController_dispose, RefreshController_loadComplete;
dynamic RefreshController_loadFailed, RefreshController_loadNoData, SOColors_get_s_00;
dynamic SOColors_get_s_01, SOColors_get_s_02, SOColors_get_s_05, SOColors_get_s_06;
dynamic SOColors_get_s_10, SP, ScrollController_ctor, ScrollController_dispose;
dynamic Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_add;
dynamic Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_get_iterator;
dynamic SoulState_dispose, SoulState_onPageShow;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolateSingle, THR;
dynamic TabController_animateTo, TabController_ctor, TabController_dispose;
dynamic TextStyles_commonContent, TextStyles_firstLevelTitle, TextStyles_smallestTitle;
dynamic TickerMode_getNotifier, Ticker_get_shouldScheduleTick, Ticker_muted_assign;
dynamic Ticker_scheduleTick, Ticker_unscheduleTick, WriteBarrierStub_x1, WriteBarrierStub_x2;
dynamic WriteBarrierStub_x3, d0, d1, d2, getString, local_0, local_10, local_18, local_20;
dynamic local_28, local_8, local_m10, local_m18, local_m20, local_m28, local_m30, local_m38;
dynamic local_m40, local_m48, local_m50, local_m58, local_m60, local_m68, local_m8;
dynamic sub_0x2b16e4, sub_0x3a1d94, sub_0x61d99c, sub_0x61e890, sub_0x61f920, sub_0x62a0c0, w0;
dynamic w1, w16, w17, w2, w22, w3, w4, w5, w6, wzr, x0, x1, x16, x17, x2, x21, x3, x4, x5, x6;
dynamic x8, x9, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$party$page_party_invite
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PartyInvitePageState_SoulState_TickerProviderStateMixin_createTicker
// raw disassembly:
//  0x2d4200: stp FP, LR, [SP, #-0x10]!
//  0x2d4204: mov FP, SP
//  0x2d4208: sub SP, SP, #0x20
//  0x2d420c: mov x0, x1
//  0x2d4210: stur x1, [FP, #-8]
//  0x2d4214: stur x2, [FP, #-0x10]
//  0x2d4218: ldr BARRIER, [THR, #0x38]
//  0x2d421c: cmp SP, BARRIER
//  0x2d4220: b.ls #0x2d436c
//  0x2d4224: ldur w1, [x0, #0x17]
//  0x2d4228: add x1, x1, HEAP, lsl #32
//  0x2d422c: cmp w1, w22
//  0x2d4230: b.ne #0x2d423c
//  0x2d4234: mov x1, x0
//  0x2d4238: bl #0x2d439c
//  0x2d423c: ldur x0, [FP, #-8]
//  0x2d4240: ldur w1, [x0, #0x13]
//  0x2d4244: add x1, x1, HEAP, lsl #32
//  0x2d4248: cmp w1, w22
//  0x2d424c: b.ne #0x2d42e4
//  0x2d4250: ldr x0, [THR, #0x68]
//  0x2d4254: ldr x0, [x0, #0x6e8]
//  0x2d4258: ldr BARRIER, [PP, #0x40]
//  0x2d425c: cmp w0, w16
//  0x2d4260: b.ne #0x2d426c
//  0x2d4264: ldr x2, [PP, #0xbf8]
//  0x2d4268: bl #0x61d99c
//  0x2d426c: add x1, PP, #0xe, lsl #12
//  0x2d4270: ldr x1, [x1, #0xe98]
//  0x2d4274: stur x0, [FP, #-0x18]
//  0x2d4278: bl #0x2a5de4
//  0x2d427c: mov x1, x0
//  0x2d4280: ldur x0, [FP, #-0x18]
//  0x2d4284: stur x1, [FP, #-0x20]
//  0x2d4288: stur w0, [x1, #0x1b]
//  0x2d428c: stur wzr, [x1, #0xb]
//  0x2d4290: ldr x0, [THR, #0x68]
//  0x2d4294: ldr x0, [x0, #0x6f0]
//  0x2d4298: ldr BARRIER, [PP, #0x40]
//  0x2d429c: cmp w0, w16
//  0x2d42a0: b.ne #0x2d42ac
//  0x2d42a4: ldr x2, [PP, #0xc00]
//  0x2d42a8: bl #0x61d99c
//  0x2d42ac: mov x1, x0
//  0x2d42b0: ldur x0, [FP, #-0x20]
//  0x2d42b4: stur w1, [x0, #0xf]
//  0x2d42b8: stur wzr, [x0, #0x13]
//  0x2d42bc: stur wzr, [x0, #0x17]
//  0x2d42c0: ldur x1, [FP, #-8]
//  0x2d42c4: stur w0, [x1, #0x13]
//  0x2d42c8: ldurb w16, [x1, #-1]
//  0x2d42cc: ldurb w17, [x0, #-1]
//  0x2d42d0: and BARRIER, x17, BARRIER, lsr #2
//  0x2d42d4: tst BARRIER, HEAP, lsr #32
//  0x2d42d8: b.eq #0x2d42e0
//  0x2d42dc: bl #0x61e04c
//  0x2d42e0: b #0x2d42e8
//  0x2d42e4: mov x1, x0
//  0x2d42e8: ldur x0, [FP, #-0x10]
//  0x2d42ec: bl #0x2cf960
//  0x2d42f0: mov x3, x0
//  0x2d42f4: ldur x2, [FP, #-8]
//  0x2d42f8: stur x3, [FP, #-0x18]
//  0x2d42fc: stur w2, [x3, #0x1b]
//  0x2d4300: add x0, NULL, #0x30
//  0x2d4304: stur w0, [x3, #0xb]
//  0x2d4308: ldur x0, [FP, #-0x10]
//  0x2d430c: stur w0, [x3, #0x13]
//  0x2d4310: ldur w1, [x2, #0x17]
//  0x2d4314: add x1, x1, HEAP, lsl #32
//  0x2d4318: cmp w1, w22
//  0x2d431c: b.eq #0x2d4374
//  0x2d4320: ldur x0, [x1, #-1]
//  0x2d4324: ubfx x0, x0, #0xc, #0x14
//  0x2d4328: sub LR, x0, #0xfff
//  0x2d432c: ldr LR, [x21, LR, lsl #3]
//  0x2d4330: blr LR
//  0x2d4334: eor x2, x0, #0x10
//  0x2d4338: ldur x1, [FP, #-0x18]
//  0x2d433c: bl #0x2cf190
//  0x2d4340: ldur x0, [FP, #-8]
//  0x2d4344: ldur w1, [x0, #0x13]
//  0x2d4348: add x1, x1, HEAP, lsl #32
//  0x2d434c: cmp w1, w22
//  0x2d4350: b.eq #0x2d4378
//  0x2d4354: ldur x2, [FP, #-0x18]
//  0x2d4358: bl #0x611d50
//  0x2d435c: ldur x0, [FP, #-0x18]
//  0x2d4360: mov SP, FP
//  0x2d4364: ldp FP, LR, [SP], #0x10
//  0x2d4368: ret 
//  0x2d436c: bl #0x61fa28
//  0x2d4370: b #0x2d4224
//  0x2d4374: bl #0x61ffd0
//  0x2d4378: bl #0x61ffd0
//
dynamic PartyInvitePageState_SoulState_TickerProviderStateMixin_createTicker() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x2d4200
  // frame: FP = SP // 0x2d4204
  // frame: SP = SP - 0x20 // 0x2d4208
  x0 = x1; // 0x2d420c
  local_m8 = x1; // 0x2d4210
  local_m10 = x2; // 0x2d4214
  BARRIER = mem(THR, 0x38); // 0x2d4218
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2d436c
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x2d4228
  if (w1 != w22) {
  } else {
    x1 = x0; // 0x2d4234
    PartyInvitePageState_SoulState_TickerProviderStateMixin_updateTickerModeNotifier() /* 0x2d439c */; // 0x2d4238
  }
  w1 = mem((local_m8), 0x13); // 0x2d4240
  x0 = local_m8; // 0x2d423c
  x1 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x2d4244
  if (w1 != w22) {
    x1 = x0; // 0x2d42e4
  } else {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x2d4258
    x0 = mem((mem(THR, 0x68)), 0x6e8); // 0x2d4254
    if (w0 != w16) {
    } else {
      x2 = mem(PP, 0xbf8) /* Field */; // 0x2d4264
      sub_0x61d99c(); // 0x2d4268
    }
    x1 = mem((PP + 0xe000), 0xe98) /* TypeArguments */; // 0x2d4270
    local_m18 = x0; // 0x2d4274
    AllocationStub__Set() /* 0x2a5de4 */; // 0x2d4278
    x0 = local_m18; // 0x2d4280
    x1 = x0; // 0x2d427c
    local_m20 = x1; // 0x2d4284
    memSet(x1, 0x1b, w0); // 0x2d4288
    memSet(x1, 0xb, wzr); // 0x2d428c
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x2d4298
    x0 = mem((mem(THR, 0x68)), 0x6f0); // 0x2d4294
    if (w0 != w16) {
    } else {
      x2 = mem(PP, 0xc00) /* Field */; // 0x2d42a4
      sub_0x61d99c(); // 0x2d42a8
    }
    x0 = local_m20; // 0x2d42b0
    x1 = x0; // 0x2d42ac
    memSet(x0, 0xf, w1); // 0x2d42b4
    memSet(x0, 0x13, wzr); // 0x2d42b8
    memSet(x0, 0x17, wzr); // 0x2d42bc
    x1 = local_m8; // 0x2d42c0
    memSet(x1, 0x13, w0); // 0x2d42c4
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x2d42d0
    w16 = mem(x1, -1); // 0x2d42c8
    w17 = mem(x0, -1); // 0x2d42cc
    x16 = (mem(x1, -1)) & 0xffffffff; // 0x2d42c8
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x2d42cc
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x1() /* 0x61e04c */; // 0x2d42dc
    }
  }
  x0 = local_m10; // 0x2d42e8
  AllocationStub__WidgetTicker() /* 0x2cf960 */; // 0x2d42ec
  x2 = local_m8; // 0x2d42f4
  x3 = x0; // 0x2d42f0
  local_m18 = x3; // 0x2d42f8
  memSet(x3, 0x1b, w2); // 0x2d42fc
  x0 = NULL + 0x30; // 0x2d4300
  memSet(x3, 0xb, w0); // 0x2d4304
  x0 = local_m10; // 0x2d4308
  memSet(x3, 0x13, w0); // 0x2d430c
  w1 = mem(x2, 0x17); // 0x2d4310
  x1 = ((mem(x2, 0x17)) & 0xffffffff) + (HEAP << 32); // 0x2d4314
  if (w1 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2d4374
  } else {
    LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0xfff) << 3)); // 0x2d432c
    x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x2d4324
    callIndirect(LR); // 0x2d4330
    x1 = local_m18; // 0x2d4338
    x2 = x0 ^ 0x10; // 0x2d4334
    Ticker_muted_assign() /* 0x2cf190 */; // 0x2d433c
    w1 = mem((local_m8), 0x13); // 0x2d4344
    x0 = local_m8; // 0x2d4340
    x1 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x2d4348
    if (w1 != w22) {
      x2 = local_m18; // 0x2d4354
      Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_add() /* 0x611d50 */; // 0x2d4358
      SP = FP; // 0x2d4360
      x0 = local_m18; // 0x2d435c
      // frame: FP, LR, mem(SP), 0x10 // 0x2d4364
      return;
    }
  }
  NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2d4378
}

// PartyInvitePageState_SoulState_TickerProviderStateMixin_updateTickerModeNotifier
// raw disassembly:
//  0x2d439c: stp FP, LR, [SP, #-0x10]!
//  0x2d43a0: mov FP, SP
//  0x2d43a4: sub SP, SP, #0x18
//  0x2d43a8: mov x2, x1
//  0x2d43ac: stur x1, [FP, #-8]
//  0x2d43b0: ldr BARRIER, [THR, #0x38]
//  0x2d43b4: cmp SP, BARRIER
//  0x2d43b8: b.ls #0x2d44ac
//  0x2d43bc: ldur w1, [x2, #0xf]
//  0x2d43c0: add x1, x1, HEAP, lsl #32
//  0x2d43c4: cmp w1, w22
//  0x2d43c8: b.eq #0x2d44b4
//  0x2d43cc: bl #0x2cf6f0
//  0x2d43d0: mov x3, x0
//  0x2d43d4: ldur x0, [FP, #-8]
//  0x2d43d8: stur x3, [FP, #-0x18]
//  0x2d43dc: ldur w4, [x0, #0x17]
//  0x2d43e0: add x4, x4, HEAP, lsl #32
//  0x2d43e4: stur x4, [FP, #-0x10]
//  0x2d43e8: cmp w3, w4
//  0x2d43ec: b.ne #0x2d4400
//  0x2d43f0: mov x0, NULL
//  0x2d43f4: mov SP, FP
//  0x2d43f8: ldp FP, LR, [SP], #0x10
//  0x2d43fc: ret 
//  0x2d4400: cmp w4, w22
//  0x2d4404: b.eq #0x2d4444
//  0x2d4408: mov x2, x0
//  0x2d440c: add x1, PP, #0x11, lsl #12
//  0x2d4410: ldr x1, [x1, #0x7d8]
//  0x2d4414: bl #0x61ec54
//  0x2d4418: ldur x1, [FP, #-0x10]
//  0x2d441c: ldur x2, [x1, #-1]
//  0x2d4420: ubfx x2, x2, #0xc, #0x14
//  0x2d4424: mov BARRIER, x0
//  0x2d4428: mov x0, x2
//  0x2d442c: mov x2, BARRIER
//  0x2d4430: add LR, x0, #0xd6f
//  0x2d4434: ldr LR, [x21, LR, lsl #3]
//  0x2d4438: blr LR
//  0x2d443c: ldur x0, [FP, #-8]
//  0x2d4440: ldur x3, [FP, #-0x18]
//  0x2d4444: mov x2, x0
//  0x2d4448: add x1, PP, #0x11, lsl #12
//  0x2d444c: ldr x1, [x1, #0x7d8]
//  0x2d4450: bl #0x61ec54
//  0x2d4454: ldur x3, [FP, #-0x18]
//  0x2d4458: ldur x1, [x3, #-1]
//  0x2d445c: ubfx x1, x1, #0xc, #0x14
//  0x2d4460: mov x2, x0
//  0x2d4464: mov x0, x1
//  0x2d4468: mov x1, x3
//  0x2d446c: add LR, x0, #0xdbb
//  0x2d4470: ldr LR, [x21, LR, lsl #3]
//  0x2d4474: blr LR
//  0x2d4478: ldur x0, [FP, #-0x18]
//  0x2d447c: ldur x1, [FP, #-8]
//  0x2d4480: stur w0, [x1, #0x17]
//  0x2d4484: ldurb w16, [x1, #-1]
//  0x2d4488: ldurb w17, [x0, #-1]
//  0x2d448c: and BARRIER, x17, BARRIER, lsr #2
//  0x2d4490: tst BARRIER, HEAP, lsr #32
//  0x2d4494: b.eq #0x2d449c
//  0x2d4498: bl #0x61e04c
//  0x2d449c: mov x0, NULL
//  0x2d44a0: mov SP, FP
//  0x2d44a4: ldp FP, LR, [SP], #0x10
//  0x2d44a8: ret 
//  0x2d44ac: bl #0x61fa28
//  0x2d44b0: b #0x2d43bc
//  0x2d44b4: bl #0x61ffd0
//
dynamic PartyInvitePageState_SoulState_TickerProviderStateMixin_updateTickerModeNotifier() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x2d439c
  // frame: FP = SP // 0x2d43a0
  // frame: SP = SP - 0x18 // 0x2d43a4
  x2 = x1; // 0x2d43a8
  local_m8 = x1; // 0x2d43ac
  BARRIER = mem(THR, 0x38); // 0x2d43b0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2d44ac
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x2d43c0
  if (w1 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2d44b4
  }
  TickerMode_getNotifier() /* 0x2cf6f0 */; // 0x2d43cc
  x0 = local_m8; // 0x2d43d4
  x3 = x0; // 0x2d43d0
  local_m18 = x3; // 0x2d43d8
  w4 = mem(x0, 0x17); // 0x2d43dc
  x4 = ((mem(x0, 0x17)) & 0xffffffff) + (HEAP << 32); // 0x2d43e0
  local_m10 = x4; // 0x2d43e4
  if (w3 == w4) {
    SP = FP; // 0x2d43f4
    x0 = NULL; // 0x2d43f0
    // frame: FP, LR, mem(SP), 0x10 // 0x2d43f8
    return;
  }
  if (w4 == w22) {
  } else {
    x1 = mem((PP + 0x11000), 0x7d8) /* Function */; // 0x2d4410
    x2 = x0; // 0x2d4408
    AllocationStub__Closure() /* 0x61ec54 */; // 0x2d4414
    BARRIER = x0; // 0x2d4424
    x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x2d4428
    x1 = local_m10; // 0x2d4418
    x2 = x0; // 0x2d442c
    LR = mem(x21, ((x0 + 0xd6f) << 3)); // 0x2d4434
    callIndirect(LR); // 0x2d4438
    x0 = local_m8; // 0x2d443c
    x3 = local_m18; // 0x2d4440
  }
  x1 = mem((PP + 0x11000), 0x7d8) /* Function */; // 0x2d444c
  x2 = x0; // 0x2d4444
  AllocationStub__Closure() /* 0x61ec54 */; // 0x2d4450
  x0 = ((mem((local_m18), -1)) >> 12) & 0xfffff; // 0x2d4464
  x1 = local_m18; // 0x2d4468
  x2 = x0; // 0x2d4460
  x3 = local_m18; // 0x2d4454
  LR = mem(x21, ((x0 + 0xdbb) << 3)); // 0x2d4470
  callIndirect(LR); // 0x2d4474
  x0 = local_m18; // 0x2d4478
  x1 = local_m8; // 0x2d447c
  memSet(x1, 0x17, w0); // 0x2d4480
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x2d448c
  w16 = mem(x1, -1); // 0x2d4484
  w17 = mem(x0, -1); // 0x2d4488
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x2d4484
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x2d4488
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x2d4498
  }
  SP = FP; // 0x2d44a0
  x0 = NULL; // 0x2d449c
  // frame: FP, LR, mem(SP), 0x10 // 0x2d44a4
  return;
}

// PartyInvitePageState_SoulState_TickerProviderStateMixin_updateTickers
// raw disassembly:
//  0x2d44b8: stp FP, LR, [SP, #-0x10]!
//  0x2d44bc: mov FP, SP
//  0x2d44c0: ldr x0, [FP, #0x10]
//  0x2d44c4: ldur w1, [x0, #0x17]
//  0x2d44c8: add x1, x1, HEAP, lsl #32
//  0x2d44cc: ldr BARRIER, [THR, #0x38]
//  0x2d44d0: cmp SP, BARRIER
//  0x2d44d4: b.ls #0x2d44e8
//  0x2d44d8: bl #0x2d44f0
//  0x2d44dc: mov SP, FP
//  0x2d44e0: ldp FP, LR, [SP], #0x10
//  0x2d44e4: ret 
//  0x2d44e8: bl #0x61fa28
//  0x2d44ec: b #0x2d44d8
//
dynamic PartyInvitePageState_SoulState_TickerProviderStateMixin_updateTickers() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x2d44b8
  BARRIER = mem(THR, 0x38); // 0x2d44cc
  // frame: FP = SP // 0x2d44bc
  w1 = mem((local_10), 0x17); // 0x2d44c4
  x0 = local_10; // 0x2d44c0
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x2d44c8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2d44e8
  }
  PartyInvitePageState_SoulState_TickerProviderStateMixin_updateTickers() /* 0x2d44f0 */; // 0x2d44d8
  SP = FP; // 0x2d44dc
  // frame: FP, LR, mem(SP), 0x10 // 0x2d44e0
  return;
}

// PartyInvitePageState_SoulState_TickerProviderStateMixin_updateTickers_2
// raw disassembly:
//  0x2d44f0: stp FP, LR, [SP, #-0x10]!
//  0x2d44f4: mov FP, SP
//  0x2d44f8: sub SP, SP, #0x20
//  0x2d44fc: mov x2, x1
//  0x2d4500: stur x1, [FP, #-8]
//  0x2d4504: ldr BARRIER, [THR, #0x38]
//  0x2d4508: cmp SP, BARRIER
//  0x2d450c: b.ls #0x2d4634
//  0x2d4510: ldur w0, [x2, #0x13]
//  0x2d4514: add x0, x0, HEAP, lsl #32
//  0x2d4518: cmp w0, w22
//  0x2d451c: b.eq #0x2d4624
//  0x2d4520: ldur w1, [x2, #0x17]
//  0x2d4524: add x1, x1, HEAP, lsl #32
//  0x2d4528: cmp w1, w22
//  0x2d452c: b.eq #0x2d463c
//  0x2d4530: ldur x0, [x1, #-1]
//  0x2d4534: ubfx x0, x0, #0xc, #0x14
//  0x2d4538: sub LR, x0, #0xfff
//  0x2d453c: ldr LR, [x21, LR, lsl #3]
//  0x2d4540: blr LR
//  0x2d4544: eor x2, x0, #0x10
//  0x2d4548: ldur x0, [FP, #-8]
//  0x2d454c: stur x2, [FP, #-0x10]
//  0x2d4550: ldur w1, [x0, #0x13]
//  0x2d4554: add x1, x1, HEAP, lsl #32
//  0x2d4558: cmp w1, w22
//  0x2d455c: b.eq #0x2d4640
//  0x2d4560: bl #0x54bba4
//  0x2d4564: stur x0, [FP, #-0x18]
//  0x2d4568: ldur w2, [x0, #7]
//  0x2d456c: add x2, x2, HEAP, lsl #32
//  0x2d4570: stur x2, [FP, #-8]
//  0x2d4574: ldur x3, [FP, #-0x10]
//  0x2d4578: ldr BARRIER, [THR, #0x38]
//  0x2d457c: cmp SP, BARRIER
//  0x2d4580: b.ls #0x2d4644
//  0x2d4584: mov x1, x0
//  0x2d4588: bl #0x594d70
//  0x2d458c: tbnz w0, #4, #0x2d4624
//  0x2d4590: ldur x3, [FP, #-0x18]
//  0x2d4594: ldur w4, [x3, #0x33]
//  0x2d4598: add x4, x4, HEAP, lsl #32
//  0x2d459c: stur x4, [FP, #-0x20]
//  0x2d45a0: cmp w4, w22
//  0x2d45a4: b.ne #0x2d45d8
//  0x2d45a8: mov x0, x4
//  0x2d45ac: ldur x2, [FP, #-8]
//  0x2d45b0: mov x1, NULL
//  0x2d45b4: cmp w2, w22
//  0x2d45b8: b.eq #0x2d45d8
//  0x2d45bc: ldur w4, [x2, #0x17]
//  0x2d45c0: add x4, x4, HEAP, lsl #32
//  0x2d45c4: ldr x8, [PP, #0x180]
//  0x2d45c8: ldur x9, [x4, #7]
//  0x2d45cc: add x3, PP, #0x11, lsl #12
//  0x2d45d0: ldr x3, [x3, #0x7c8]
//  0x2d45d4: blr x9
//  0x2d45d8: ldur x2, [FP, #-0x10]
//  0x2d45dc: ldur x0, [FP, #-0x20]
//  0x2d45e0: ldur w1, [x0, #0xb]
//  0x2d45e4: add x1, x1, HEAP, lsl #32
//  0x2d45e8: cmp w2, w1
//  0x2d45ec: b.eq #0x2d4618
//  0x2d45f0: stur w2, [x0, #0xb]
//  0x2d45f4: tbnz w2, #4, #0x2d4604
//  0x2d45f8: mov x1, x0
//  0x2d45fc: bl #0x2cf4e0
//  0x2d4600: b #0x2d4618
//  0x2d4604: mov x1, x0
//  0x2d4608: bl #0x2cf49c
//  0x2d460c: tbnz w0, #4, #0x2d4618
//  0x2d4610: ldur x1, [FP, #-0x20]
//  0x2d4614: bl #0x2cf210
//  0x2d4618: ldur x0, [FP, #-0x18]
//  0x2d461c: ldur x2, [FP, #-8]
//  0x2d4620: b #0x2d4574
//  0x2d4624: mov x0, NULL
//  0x2d4628: mov SP, FP
//  0x2d462c: ldp FP, LR, [SP], #0x10
//  0x2d4630: ret 
//  0x2d4634: bl #0x61fa28
//  0x2d4638: b #0x2d4510
//  0x2d463c: bl #0x61ffd0
//  0x2d4640: bl #0x61ffd0
//  0x2d4644: bl #0x61fa28
//  0x2d4648: b #0x2d4584
//
// NOTE: control flow was not fully structured (goto kept) -- pseudocode only.
dynamic PartyInvitePageState_SoulState_TickerProviderStateMixin_updateTickers_2() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x2d44f0
  // frame: FP = SP // 0x2d44f4
  // frame: SP = SP - 0x20 // 0x2d44f8
  x2 = x1; // 0x2d44fc
  local_m8 = x1; // 0x2d4500
  BARRIER = mem(THR, 0x38); // 0x2d4504
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2d4634
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x2d4514
  if (w0 == w22) {
  } else {
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x2d4524
    if (w1 == w22) {
      NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2d463c
    } else {
      LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0xfff) << 3)); // 0x2d453c
      x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x2d4534
      callIndirect(LR); // 0x2d4540
      x0 = local_m8; // 0x2d4548
      x2 = x0 ^ 0x10; // 0x2d4544
      local_m10 = x2; // 0x2d454c
      w1 = mem(x0, 0x13); // 0x2d4550
      x1 = ((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x2d4554
      if (w1 == w22) {
        NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x2d4640
      } else {
        Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_get_iterator() /* 0x54bba4 */; // 0x2d4560
        local_m18 = x0; // 0x2d4564
        w2 = mem(x0, 7); // 0x2d4568
        x2 = ((mem(x0, 7)) & 0xffffffff) + (HEAP << 32); // 0x2d456c
        local_m8 = x2; // 0x2d4570
        BARRIER = mem(THR, 0x38); // 0x2d4578
        x3 = local_m10; // 0x2d4574
        if (SP <= BARRIER) {
          StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x2d4644
        }
        x1 = x0; // 0x2d4584
        CompactIterator_moveNext() /* 0x594d70 */; // 0x2d4588
        if (x0 & (1 << 4) != 0) {
        } else {
          w4 = mem((local_m18), 0x33); // 0x2d4594
          x3 = local_m18; // 0x2d4590
          x4 = ((mem((local_m18), 0x33)) & 0xffffffff) + (HEAP << 32); // 0x2d4598
          local_m20 = x4; // 0x2d459c
          if (w4 != w22) {
          } else {
            x0 = x4; // 0x2d45a8
            x1 = NULL; // 0x2d45b0
            x2 = local_m8; // 0x2d45ac
            if (w2 == w22) {
            } else {
              x3 = mem((PP + 0x11000), 0x7c8) /* Obj!? */; // 0x2d45d0
              x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x2d45c0
              x8 = mem(PP, 0x180) /* TypeParameter */; // 0x2d45c4
              x9 = mem(((w4 & 0xffffffff) + (HEAP << 32)), 7); // 0x2d45c8
              callIndirect(x9); // 0x2d45d4
            }
          }
          w1 = mem((local_m20), 0xb); // 0x2d45e0
          x0 = local_m20; // 0x2d45dc
          x1 = ((mem((local_m20), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x2d45e4
          x2 = local_m10; // 0x2d45d8
          if (w2 == w1) {
          } else {
            memSet(x0, 0xb, w2); // 0x2d45f0
            if (x2 & (1 << 4) != 0) {
              x1 = x0; // 0x2d4604
              Ticker_get_shouldScheduleTick() /* 0x2cf49c */; // 0x2d4608
              if (x0 & (1 << 4) != 0) {
              } else {
                x1 = local_m20; // 0x2d4610
                Ticker_scheduleTick() /* 0x2cf210 */; // 0x2d4614
              }
            } else {
              x1 = x0; // 0x2d45f8
              Ticker_unscheduleTick() /* 0x2cf4e0 */; // 0x2d45fc
            }
          }
          x0 = local_m18; // 0x2d4618
          x2 = local_m8; // 0x2d461c
          gotoLabel(0x2d4574);
        }
        SP = FP; // 0x2d4628
        x0 = NULL; // 0x2d4624
        // frame: FP, LR, mem(SP), 0x10 // 0x2d462c
        return;
      }
    }
  }
}

// PartyInvitePageState_SoulState_TickerProviderStateMixin_activate
// raw disassembly:
//  0x3e8140: stp FP, LR, [SP, #-0x10]!
//  0x3e8144: mov FP, SP
//  0x3e8148: sub SP, SP, #8
//  0x3e814c: mov x0, x1
//  0x3e8150: stur x1, [FP, #-8]
//  0x3e8154: ldr BARRIER, [THR, #0x38]
//  0x3e8158: cmp SP, BARRIER
//  0x3e815c: b.ls #0x3e8180
//  0x3e8160: mov x1, x0
//  0x3e8164: bl #0x2d439c
//  0x3e8168: ldur x1, [FP, #-8]
//  0x3e816c: bl #0x2d44f0
//  0x3e8170: mov x0, NULL
//  0x3e8174: mov SP, FP
//  0x3e8178: ldp FP, LR, [SP], #0x10
//  0x3e817c: ret 
//  0x3e8180: bl #0x61fa28
//  0x3e8184: b #0x3e8160
//
dynamic PartyInvitePageState_SoulState_TickerProviderStateMixin_activate() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3e8140
  // frame: FP = SP // 0x3e8144
  // frame: SP = SP - 8 // 0x3e8148
  x0 = x1; // 0x3e814c
  local_m8 = x1; // 0x3e8150
  BARRIER = mem(THR, 0x38); // 0x3e8154
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3e8180
  }
  x1 = x0; // 0x3e8160
  PartyInvitePageState_SoulState_TickerProviderStateMixin_updateTickerModeNotifier() /* 0x2d439c */; // 0x3e8164
  x1 = local_m8; // 0x3e8168
  PartyInvitePageState_SoulState_TickerProviderStateMixin_updateTickers() /* 0x2d44f0 */; // 0x3e816c
  SP = FP; // 0x3e8174
  x0 = NULL; // 0x3e8170
  // frame: FP, LR, mem(SP), 0x10 // 0x3e8178
  return;
}

// PartyInvitePageState_SoulState_TickerProviderStateMixin_dispose
// raw disassembly:
//  0x451234: stp FP, LR, [SP, #-0x10]!
//  0x451238: mov FP, SP
//  0x45123c: sub SP, SP, #0x10
//  0x451240: mov x0, x1
//  0x451244: stur x1, [FP, #-0x10]
//  0x451248: ldr BARRIER, [THR, #0x38]
//  0x45124c: cmp SP, BARRIER
//  0x451250: b.ls #0x4512c0
//  0x451254: ldur w3, [x0, #0x17]
//  0x451258: add x3, x3, HEAP, lsl #32
//  0x45125c: stur x3, [FP, #-8]
//  0x451260: cmp w3, w22
//  0x451264: b.ne #0x451270
//  0x451268: mov x1, x0
//  0x45126c: b #0x4512a8
//  0x451270: mov x2, x0
//  0x451274: add x1, PP, #0x11, lsl #12
//  0x451278: ldr x1, [x1, #0x7d8]
//  0x45127c: bl #0x61ec54
//  0x451280: ldur x1, [FP, #-8]
//  0x451284: ldur x2, [x1, #-1]
//  0x451288: ubfx x2, x2, #0xc, #0x14
//  0x45128c: mov BARRIER, x0
//  0x451290: mov x0, x2
//  0x451294: mov x2, BARRIER
//  0x451298: add LR, x0, #0xd6f
//  0x45129c: ldr LR, [x21, LR, lsl #3]
//  0x4512a0: blr LR
//  0x4512a4: ldur x1, [FP, #-0x10]
//  0x4512a8: stur w22, [x1, #0x17]
//  0x4512ac: bl #0x451970
//  0x4512b0: mov x0, NULL
//  0x4512b4: mov SP, FP
//  0x4512b8: ldp FP, LR, [SP], #0x10
//  0x4512bc: ret 
//  0x4512c0: bl #0x61fa28
//  0x4512c4: b #0x451254
//
dynamic PartyInvitePageState_SoulState_TickerProviderStateMixin_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x451234
  // frame: FP = SP // 0x451238
  // frame: SP = SP - 0x10 // 0x45123c
  x0 = x1; // 0x451240
  local_m10 = x1; // 0x451244
  BARRIER = mem(THR, 0x38); // 0x451248
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4512c0
  }
  x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x451258
  local_m8 = x3; // 0x45125c
  if (w3 != w22) {
    x1 = mem((PP + 0x11000), 0x7d8) /* Function */; // 0x451278
    x2 = x0; // 0x451270
    AllocationStub__Closure() /* 0x61ec54 */; // 0x45127c
    BARRIER = x0; // 0x45128c
    x0 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x451290
    x1 = local_m8; // 0x451280
    x2 = x0; // 0x451294
    LR = mem(x21, ((x0 + 0xd6f) << 3)); // 0x45129c
    callIndirect(LR); // 0x4512a0
    x1 = local_m10; // 0x4512a4
  } else {
    x1 = x0; // 0x451268
  }
  memSet(x1, 0x17, w22); // 0x4512a8
  SoulState_dispose() /* 0x451970 */; // 0x4512ac
  SP = FP; // 0x4512b4
  x0 = NULL; // 0x4512b0
  // frame: FP, LR, mem(SP), 0x10 // 0x4512b8
  return;
}

// InviteUserPageState_SoulState_AutomaticKeepAliveClientMixin_deactivate
// raw disassembly:
//  0x3e8c54: stp FP, LR, [SP, #-0x10]!
//  0x3e8c58: mov FP, SP
//  0x3e8c5c: ldr BARRIER, [THR, #0x38]
//  0x3e8c60: cmp SP, BARRIER
//  0x3e8c64: b.ls #0x3e8c8c
//  0x3e8c68: ldur w0, [x1, #0x13]
//  0x3e8c6c: add x0, x0, HEAP, lsl #32
//  0x3e8c70: cmp w0, w22
//  0x3e8c74: b.eq #0x3e8c7c
//  0x3e8c78: bl #0x3e85a0
//  0x3e8c7c: mov x0, NULL
//  0x3e8c80: mov SP, FP
//  0x3e8c84: ldp FP, LR, [SP], #0x10
//  0x3e8c88: ret 
//  0x3e8c8c: bl #0x61fa28
//  0x3e8c90: b #0x3e8c68
//
dynamic InviteUserPageState_SoulState_AutomaticKeepAliveClientMixin_deactivate() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3e8c54
  BARRIER = mem(THR, 0x38); // 0x3e8c5c
  // frame: FP = SP // 0x3e8c58
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3e8c8c
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x3e8c6c
  if (w0 == w22) {
  } else {
    EditableTextState_State_AutomaticKeepAliveClientMixin_releaseKeepAlive() /* 0x3e85a0 */; // 0x3e8c78
  }
  SP = FP; // 0x3e8c80
  x0 = NULL; // 0x3e8c7c
  // frame: FP, LR, mem(SP), 0x10 // 0x3e8c84
  return;
}

// InviteUserPageState_SoulState_AutomaticKeepAliveClientMixin_build
// raw disassembly:
//  0x422754: stp FP, LR, [SP, #-0x10]!
//  0x422758: mov FP, SP
//  0x42275c: ldr BARRIER, [THR, #0x38]
//  0x422760: cmp SP, BARRIER
//  0x422764: b.ls #0x422790
//  0x422768: ldur w0, [x1, #0x13]
//  0x42276c: add x0, x0, HEAP, lsl #32
//  0x422770: cmp w0, w22
//  0x422774: b.ne #0x42277c
//  0x422778: bl #0x3f42bc
//  0x42277c: add x0, PP, #0x14, lsl #12
//  0x422780: ldr x0, [x0, #0xfa8]
//  0x422784: mov SP, FP
//  0x422788: ldp FP, LR, [SP], #0x10
//  0x42278c: ret 
//  0x422790: bl #0x61fa28
//  0x422794: b #0x422768
//
dynamic InviteUserPageState_SoulState_AutomaticKeepAliveClientMixin_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  // frame: FP, LR, mem(SP, -0x10)! // 0x422754
  BARRIER = mem(THR, 0x38); // 0x42275c
  // frame: FP = SP // 0x422758
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x422790
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x42276c
  if (w0 != w22) {
  } else {
    EditableTextState_State_AutomaticKeepAliveClientMixin_ensureKeepAlive() /* 0x3f42bc */; // 0x422778
  }
  SP = FP; // 0x422784
  x0 = mem((PP + 0x14000), 0xfa8) /* Obj!_NullWidget@12014 */; // 0x422780
  // frame: FP, LR, mem(SP), 0x10 // 0x422788
  return;
}

// InviteUserPageState_SoulState_AutomaticKeepAliveClientMixin_initState
// raw disassembly:
//  0x4d4598: stp FP, LR, [SP, #-0x10]!
//  0x4d459c: mov FP, SP
//  0x4d45a0: ldr BARRIER, [THR, #0x38]
//  0x4d45a4: cmp SP, BARRIER
//  0x4d45a8: b.ls #0x4d45c0
//  0x4d45ac: bl #0x3f42bc
//  0x4d45b0: mov x0, NULL
//  0x4d45b4: mov SP, FP
//  0x4d45b8: ldp FP, LR, [SP], #0x10
//  0x4d45bc: ret 
//  0x4d45c0: bl #0x61fa28
//  0x4d45c4: b #0x4d45ac
//
dynamic InviteUserPageState_SoulState_AutomaticKeepAliveClientMixin_initState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d4598
  BARRIER = mem(THR, 0x38); // 0x4d45a0
  // frame: FP = SP // 0x4d459c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d45c0
  }
  EditableTextState_State_AutomaticKeepAliveClientMixin_ensureKeepAlive() /* 0x3f42bc */; // 0x4d45ac
  SP = FP; // 0x4d45b4
  x0 = NULL; // 0x4d45b0
  // frame: FP, LR, mem(SP), 0x10 // 0x4d45b8
  return;
}

// PartyInvitePageState_build
// raw disassembly:
//  0x41fd0c: stp FP, LR, [SP, #-0x10]!
//  0x41fd10: mov FP, SP
//  0x41fd14: sub SP, SP, #0x28
//  0x41fd18: stur x1, [FP, #-8]
//  0x41fd1c: ldr BARRIER, [THR, #0x38]
//  0x41fd20: cmp SP, BARRIER
//  0x41fd24: b.ls #0x41fdec
//  0x41fd28: mov x1, #1
//  0x41fd2c: bl #0x61e890
//  0x41fd30: mov x2, x0
//  0x41fd34: ldur x0, [FP, #-8]
//  0x41fd38: stur x2, [FP, #-0x10]
//  0x41fd3c: stur w0, [x2, #0xf]
//  0x41fd40: add x1, PP, #0xc, lsl #12
//  0x41fd44: ldr x1, [x1, #0xa58]
//  0x41fd48: ldr x4, [PP, #0x4c0]
//  0x41fd4c: bl #0x3a1dcc
//  0x41fd50: stur x0, [FP, #-8]
//  0x41fd54: bl #0x3b82c4
//  0x41fd58: ldur x2, [FP, #-0x10]
//  0x41fd5c: add x1, PP, #0x11, lsl #12
//  0x41fd60: ldr x1, [x1, #0x6f0]
//  0x41fd64: stur x0, [FP, #-0x18]
//  0x41fd68: bl #0x61ec54
//  0x41fd6c: add x1, PP, #0x11, lsl #12
//  0x41fd70: ldr x1, [x1, #0x6f8]
//  0x41fd74: stur x0, [FP, #-0x20]
//  0x41fd78: bl #0x41a414
//  0x41fd7c: mov x3, x0
//  0x41fd80: ldur x0, [FP, #-0x20]
//  0x41fd84: stur x3, [FP, #-0x28]
//  0x41fd88: stur w0, [x3, #0x13]
//  0x41fd8c: ldur x2, [FP, #-0x10]
//  0x41fd90: add x1, PP, #0x11, lsl #12
//  0x41fd94: ldr x1, [x1, #0x700]
//  0x41fd98: bl #0x61ec54
//  0x41fd9c: add x1, PP, #0x11, lsl #12
//  0x41fda0: ldr x1, [x1, #0x6f8]
//  0x41fda4: stur x0, [FP, #-0x10]
//  0x41fda8: bl #0x3b81c4
//  0x41fdac: mov x1, x0
//  0x41fdb0: ldur x2, [FP, #-0x28]
//  0x41fdb4: ldur x3, [FP, #-0x10]
//  0x41fdb8: mov x5, NULL
//  0x41fdbc: stur x0, [FP, #-0x10]
//  0x41fdc0: bl #0x3b7e8c
//  0x41fdc4: bl #0x3b7d48
//  0x41fdc8: ldur x1, [FP, #-8]
//  0x41fdcc: stur w1, [x0, #0xb]
//  0x41fdd0: ldur x1, [FP, #-0x18]
//  0x41fdd4: stur w1, [x0, #0x17]
//  0x41fdd8: ldur x1, [FP, #-0x10]
//  0x41fddc: stur w1, [x0, #0x1b]
//  0x41fde0: mov SP, FP
//  0x41fde4: ldp FP, LR, [SP], #0x10
//  0x41fde8: ret 
//  0x41fdec: bl #0x61fa28
//  0x41fdf0: b #0x41fd28
//
dynamic PartyInvitePageState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41fd0c
  // frame: FP = SP // 0x41fd10
  // frame: SP = SP - 0x28 // 0x41fd14
  local_m8 = x1; // 0x41fd18
  BARRIER = mem(THR, 0x38); // 0x41fd1c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41fdec
  }
  x1 = 1; // 0x41fd28
  sub_0x61e890(); // 0x41fd2c
  x0 = local_m8; // 0x41fd34
  x2 = x0; // 0x41fd30
  local_m10 = x2; // 0x41fd38
  memSet(x2, 0xf, w0); // 0x41fd3c
  x1 = "invite_btn" /* pp+0xca58 */; // 0x41fd44
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x41fd48
  getString() /* 0x3a1dcc */; // 0x41fd4c
  local_m8 = x0; // 0x41fd50
  SOColors_get_s_06() /* 0x3b82c4 */; // 0x41fd54
  x1 = mem((PP + 0x11000), 0x6f0) /* Function */; // 0x41fd60
  x2 = local_m10; // 0x41fd58
  local_m18 = x0; // 0x41fd64
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41fd68
  x1 = mem((PP + 0x11000), 0x6f8) /* TypeArguments */; // 0x41fd70
  local_m20 = x0; // 0x41fd74
  AllocationStub_Consumer() /* 0x41a414 */; // 0x41fd78
  x0 = local_m20; // 0x41fd80
  x3 = x0; // 0x41fd7c
  local_m28 = x3; // 0x41fd84
  memSet(x3, 0x13, w0); // 0x41fd88
  x1 = mem((PP + 0x11000), 0x700) /* Function */; // 0x41fd94
  x2 = local_m10; // 0x41fd8c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41fd98
  x1 = mem((PP + 0x11000), 0x6f8) /* TypeArguments */; // 0x41fda0
  local_m10 = x0; // 0x41fda4
  AllocationStub_ChangeNotifierProvider() /* 0x3b81c4 */; // 0x41fda8
  x1 = x0; // 0x41fdac
  x2 = local_m28; // 0x41fdb0
  x3 = local_m10; // 0x41fdb4
  x5 = NULL; // 0x41fdb8
  local_m10 = x0; // 0x41fdbc
  InheritedProvider_ctor() /* 0x3b7e8c */; // 0x41fdc0
  AllocationStub_SoulPageScaffold() /* 0x3b7d48 */; // 0x41fdc4
  x1 = local_m8; // 0x41fdc8
  memSet(x0, 0xb, w1); // 0x41fdcc
  x1 = local_m18; // 0x41fdd0
  memSet(x0, 0x17, w1); // 0x41fdd4
  x1 = local_m10; // 0x41fdd8
  memSet(x0, 0x1b, w1); // 0x41fddc
  SP = FP; // 0x41fde0
  // frame: FP, LR, mem(SP), 0x10 // 0x41fde4
  return;
}

// PartyInvitePageState_anon_closure
// raw disassembly:
//  0x41fdf4: ldr x1, [SP, #8]
//  0x41fdf8: ldur w2, [x1, #0x17]
//  0x41fdfc: add x2, x2, HEAP, lsl #32
//  0x41fe00: ldur w1, [x2, #0xf]
//  0x41fe04: add x1, x1, HEAP, lsl #32
//  0x41fe08: ldur w0, [x1, #0x1f]
//  0x41fe0c: add x0, x0, HEAP, lsl #32
//  0x41fe10: ret 
//
dynamic PartyInvitePageState_anon_closure() {
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  w1 = mem((((mem((local_8), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf); // 0x41fe00
  w2 = mem((local_8), 0x17); // 0x41fdf8
  x1 = ((mem((((mem((local_8), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41fe04
  x2 = ((mem((local_8), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41fdfc
  w0 = mem(x1, 0x1f); // 0x41fe08
  x0 = ((mem(x1, 0x1f)) & 0xffffffff) + (HEAP << 32); // 0x41fe0c
  return x0;
}

// PartyInvitePageState_anon_closure_2
// raw disassembly:
//  0x41fe34: stp FP, LR, [SP, #-0x10]!
//  0x41fe38: mov FP, SP
//  0x41fe3c: sub SP, SP, #0x30
//  0x41fe40: ldr x0, [FP, #0x28]
//  0x41fe44: ldur w2, [x0, #0x17]
//  0x41fe48: add x2, x2, HEAP, lsl #32
//  0x41fe4c: stur x2, [FP, #-8]
//  0x41fe50: ldr BARRIER, [THR, #0x38]
//  0x41fe54: cmp SP, BARRIER
//  0x41fe58: b.ls #0x41ff88
//  0x41fe5c: ldur w1, [x2, #0xf]
//  0x41fe60: add x1, x1, HEAP, lsl #32
//  0x41fe64: bl #0x4207d8
//  0x41fe68: add x1, PP, #0xe, lsl #12
//  0x41fe6c: ldr x1, [x1, #0xad0]
//  0x41fe70: stur x0, [FP, #-0x10]
//  0x41fe74: bl #0x39fb14
//  0x41fe78: mov x1, x0
//  0x41fe7c: mov x0, #1
//  0x41fe80: stur x1, [FP, #-0x18]
//  0x41fe84: stur x0, [x1, #0x13]
//  0x41fe88: add x0, PP, #0xe, lsl #12
//  0x41fe8c: ldr x0, [x0, #0xad8]
//  0x41fe90: stur w0, [x1, #0x1b]
//  0x41fe94: ldur x0, [FP, #-0x10]
//  0x41fe98: stur w0, [x1, #0xb]
//  0x41fe9c: bl #0x3b81fc
//  0x41fea0: mov x2, x0
//  0x41fea4: ldur x0, [FP, #-8]
//  0x41fea8: stur x2, [FP, #-0x10]
//  0x41feac: ldur w1, [x0, #0xf]
//  0x41feb0: add x1, x1, HEAP, lsl #32
//  0x41feb4: bl #0x41ff90
//  0x41feb8: stur x0, [FP, #-8]
//  0x41febc: bl #0x391a04
//  0x41fec0: stur x0, [FP, #-0x20]
//  0x41fec4: ldur BARRIER, [FP, #-0x10]
//  0x41fec8: ldur LR, [FP, #-8]
//  0x41fecc: stp LR, BARRIER, [SP]
//  0x41fed0: mov x1, x0
//  0x41fed4: add x4, PP, #0xf, lsl #12
//  0x41fed8: ldr x4, [x4, #0x568]
//  0x41fedc: bl #0x391490
//  0x41fee0: mov x1, NULL
//  0x41fee4: mov x2, #4
//  0x41fee8: bl #0x61f920
//  0x41feec: mov x2, x0
//  0x41fef0: ldur x0, [FP, #-0x18]
//  0x41fef4: stur x2, [FP, #-8]
//  0x41fef8: stur w0, [x2, #0xf]
//  0x41fefc: ldur x0, [FP, #-0x20]
//  0x41ff00: stur w0, [x2, #0x13]
//  0x41ff04: ldr x1, [PP, #0x5c58]
//  0x41ff08: bl #0x61e854
//  0x41ff0c: mov x1, x0
//  0x41ff10: ldur x0, [FP, #-8]
//  0x41ff14: stur x1, [FP, #-0x10]
//  0x41ff18: stur w0, [x1, #0xf]
//  0x41ff1c: mov x0, #4
//  0x41ff20: stur w0, [x1, #0xb]
//  0x41ff24: bl #0x39310c
//  0x41ff28: add x1, PP, #0xa, lsl #12
//  0x41ff2c: ldr x1, [x1, #0x858]
//  0x41ff30: stur w1, [x0, #0xf]
//  0x41ff34: add x1, PP, #0xe, lsl #12
//  0x41ff38: ldr x1, [x1, #0xae0]
//  0x41ff3c: stur w1, [x0, #0x13]
//  0x41ff40: add x1, PP, #0xe, lsl #12
//  0x41ff44: ldr x1, [x1, #0xae8]
//  0x41ff48: stur w1, [x0, #0x17]
//  0x41ff4c: add x1, PP, #0xe, lsl #12
//  0x41ff50: ldr x1, [x1, #0xb60]
//  0x41ff54: stur w1, [x0, #0x1b]
//  0x41ff58: add x1, PP, #0xe, lsl #12
//  0x41ff5c: ldr x1, [x1, #0xaf8]
//  0x41ff60: stur w1, [x0, #0x23]
//  0x41ff64: add x1, PP, #0xa, lsl #12
//  0x41ff68: ldr x1, [x1, #0xa8]
//  0x41ff6c: stur w1, [x0, #0x2b]
//  0x41ff70: stur xzr, [x0, #0x2f]
//  0x41ff74: ldur x1, [FP, #-0x10]
//  0x41ff78: stur w1, [x0, #0xb]
//  0x41ff7c: mov SP, FP
//  0x41ff80: ldp FP, LR, [SP], #0x10
//  0x41ff84: ret 
//  0x41ff88: bl #0x61fa28
//  0x41ff8c: b #0x41fe5c
//
dynamic PartyInvitePageState_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41fe34
  // frame: FP = SP // 0x41fe38
  // frame: SP = SP - 0x30 // 0x41fe3c
  w2 = mem((local_28), 0x17); // 0x41fe44
  x0 = local_28; // 0x41fe40
  x2 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41fe48
  local_m8 = x2; // 0x41fe4c
  BARRIER = mem(THR, 0x38); // 0x41fe50
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41ff88
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x41fe60
  PartyInvitePageState_buildBody() /* 0x4207d8 */; // 0x41fe64
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x41fe6c
  local_m10 = x0; // 0x41fe70
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x41fe74
  x0 = 1; // 0x41fe7c
  x1 = x0; // 0x41fe78
  local_m18 = x1; // 0x41fe80
  memSet(x1, 0x13, x0); // 0x41fe84
  x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x41fe8c
  memSet(x1, 0x1b, w0); // 0x41fe90
  x0 = local_m10; // 0x41fe94
  memSet(x1, 0xb, w0); // 0x41fe98
  SOColors_get_s_01() /* 0x3b81fc */; // 0x41fe9c
  x0 = local_m8; // 0x41fea4
  x2 = x0; // 0x41fea0
  local_m10 = x2; // 0x41fea8
  w1 = mem(x0, 0xf); // 0x41feac
  x1 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41feb0
  PartyInvitePageState_buildBottom() /* 0x41ff90 */; // 0x41feb4
  local_m8 = x0; // 0x41feb8
  AllocationStub_Container() /* 0x391a04 */; // 0x41febc
  local_m20 = x0; // 0x41fec0
  BARRIER = local_m10; // 0x41fec4
  LR = local_m8; // 0x41fec8
  // frame: LR, BARRIER, mem(SP) // 0x41fecc
  x1 = x0; // 0x41fed0
  x4 = mem((PP + 0xf000), 0x568) /* ImmutableArray */; // 0x41fed8
  Container_ctor() /* 0x391490 */; // 0x41fedc
  x1 = NULL; // 0x41fee0
  x2 = 4; // 0x41fee4
  sub_0x61f920(); // 0x41fee8
  x0 = local_m18; // 0x41fef0
  x2 = x0; // 0x41feec
  local_m8 = x2; // 0x41fef4
  memSet(x2, 0xf, w0); // 0x41fef8
  x0 = local_m20; // 0x41fefc
  memSet(x2, 0x13, w0); // 0x41ff00
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x41ff04
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x41ff08
  x0 = local_m8; // 0x41ff10
  x1 = x0; // 0x41ff0c
  local_m10 = x1; // 0x41ff14
  memSet(x1, 0xf, w0); // 0x41ff18
  x0 = 4; // 0x41ff1c
  memSet(x1, 0xb, w0); // 0x41ff20
  AllocationStub_Column() /* 0x39310c */; // 0x41ff24
  x1 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x41ff2c
  memSet(x0, 0xf, w1); // 0x41ff30
  x1 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x41ff38
  memSet(x0, 0x13, w1); // 0x41ff3c
  x1 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x41ff44
  memSet(x0, 0x17, w1); // 0x41ff48
  x1 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x41ff50
  memSet(x0, 0x1b, w1); // 0x41ff54
  x1 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x41ff5c
  memSet(x0, 0x23, w1); // 0x41ff60
  x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x41ff68
  memSet(x0, 0x2b, w1); // 0x41ff6c
  memSet(x0, 0x2f, xzr); // 0x41ff70
  x1 = local_m10; // 0x41ff74
  memSet(x0, 0xb, w1); // 0x41ff78
  SP = FP; // 0x41ff7c
  // frame: FP, LR, mem(SP), 0x10 // 0x41ff80
  return;
}

// PartyInvitePageState_buildBottom
// raw disassembly:
//  0x41ff90: stp FP, LR, [SP, #-0x10]!
//  0x41ff94: mov FP, SP
//  0x41ff98: sub SP, SP, #0x50
//  0x41ff9c: stur x1, [FP, #-8]
//  0x41ffa0: ldr BARRIER, [THR, #0x38]
//  0x41ffa4: cmp SP, BARRIER
//  0x41ffa8: b.ls #0x42041c
//  0x41ffac: mov x1, #1
//  0x41ffb0: bl #0x61e890
//  0x41ffb4: mov x1, x0
//  0x41ffb8: ldur x0, [FP, #-8]
//  0x41ffbc: stur x1, [FP, #-0x10]
//  0x41ffc0: stur w0, [x1, #0xf]
//  0x41ffc4: bl #0x2b8e80
//  0x41ffc8: ldr d0, [PP, #0xb90]
//  0x41ffcc: stur x0, [FP, #-0x18]
//  0x41ffd0: stur d0, [x0, #7]
//  0x41ffd4: stur d0, [x0, #0xf]
//  0x41ffd8: add x17, PP, #0x11, lsl #12
//  0x41ffdc: ldr d0, [x17, #0x708]
//  0x41ffe0: stur d0, [x0, #0x17]
//  0x41ffe4: stur d0, [x0, #0x1f]
//  0x41ffe8: bl #0x3b82c4
//  0x41ffec: stur x0, [FP, #-0x20]
//  0x41fff0: bl #0x352b04
//  0x41fff4: fmov d0, #24.00000000
//  0x41fff8: stur x0, [FP, #-0x28]
//  0x41fffc: stur d0, [x0, #7]
//  0x420000: stur d0, [x0, #0xf]
//  0x420004: bl #0x352b04
//  0x420008: fmov d0, #24.00000000
//  0x42000c: stur x0, [FP, #-0x30]
//  0x420010: stur d0, [x0, #7]
//  0x420014: stur d0, [x0, #0xf]
//  0x420018: bl #0x392f28
//  0x42001c: mov x1, x0
//  0x420020: ldur x0, [FP, #-0x28]
//  0x420024: stur x1, [FP, #-0x38]
//  0x420028: stur w0, [x1, #7]
//  0x42002c: ldur x0, [FP, #-0x30]
//  0x420030: stur w0, [x1, #0xb]
//  0x420034: add x0, PP, #0xa, lsl #12
//  0x420038: ldr x0, [x0, #0x510]
//  0x42003c: stur w0, [x1, #0xf]
//  0x420040: stur w0, [x1, #0x13]
//  0x420044: bl #0x3b7d80
//  0x420048: ldr BARRIER, [PP, #0x53b0]
//  0x42004c: str BARRIER, [SP]
//  0x420050: mov x2, x0
//  0x420054: mov x1, NULL
//  0x420058: add x4, PP, #0xf, lsl #12
//  0x42005c: ldr x4, [x4, #0x818]
//  0x420060: bl #0x391e08
//  0x420064: stur x0, [FP, #-0x28]
//  0x420068: bl #0x391dd8
//  0x42006c: mov x1, x0
//  0x420070: ldur x0, [FP, #-0x20]
//  0x420074: stur x1, [FP, #-0x30]
//  0x420078: stur w0, [x1, #7]
//  0x42007c: ldur x0, [FP, #-0x28]
//  0x420080: stur w0, [x1, #0xf]
//  0x420084: ldur x0, [FP, #-0x38]
//  0x420088: stur w0, [x1, #0x13]
//  0x42008c: add x0, PP, #0xe, lsl #12
//  0x420090: ldr x0, [x0, #0xb78]
//  0x420094: stur w0, [x1, #0x23]
//  0x420098: bl #0x2e3578
//  0x42009c: add x17, PP, #0xe, lsl #12
//  0x4200a0: ldr d0, [x17, #0xec8]
//  0x4200a4: stur x0, [FP, #-0x20]
//  0x4200a8: stur d0, [x0, #7]
//  0x4200ac: fmov d1, #8.00000000
//  0x4200b0: stur d1, [x0, #0xf]
//  0x4200b4: stur d0, [x0, #0x17]
//  0x4200b8: stur d1, [x0, #0x1f]
//  0x4200bc: add x1, PP, #0xc, lsl #12
//  0x4200c0: ldr x1, [x1, #0xa68]
//  0x4200c4: ldr x4, [PP, #0x4c0]
//  0x4200c8: bl #0x3a1dcc
//  0x4200cc: mov x2, x0
//  0x4200d0: ldur x0, [FP, #-8]
//  0x4200d4: stur x2, [FP, #-0x38]
//  0x4200d8: ldur w3, [x0, #0x1f]
//  0x4200dc: add x3, x3, HEAP, lsl #32
//  0x4200e0: mov x1, x3
//  0x4200e4: stur x3, [FP, #-0x28]
//  0x4200e8: bl #0x420450
//  0x4200ec: tbnz w0, #4, #0x420140
//  0x4200f0: ldur x2, [FP, #-0x10]
//  0x4200f4: add x1, PP, #0x11, lsl #12
//  0x4200f8: ldr x1, [x1, #0x710]
//  0x4200fc: bl #0x61ec54
//  0x420100: stur x0, [FP, #-8]
//  0x420104: mov x1, #3
//  0x420108: bl #0x61e890
//  0x42010c: mov x1, x0
//  0x420110: ldur x0, [FP, #-8]
//  0x420114: stur w0, [x1, #0xf]
//  0x420118: ldr x0, [PP, #0x5a60]
//  0x42011c: stur w0, [x1, #0x13]
//  0x420120: add x0, NULL, #0x20
//  0x420124: stur w0, [x1, #0x17]
//  0x420128: mov x2, x1
//  0x42012c: add x1, PP, #0x11, lsl #12
//  0x420130: ldr x1, [x1, #0x110]
//  0x420134: bl #0x61ec54
//  0x420138: mov x3, x0
//  0x42013c: b #0x420144
//  0x420140: mov x3, NULL
//  0x420144: ldur x2, [FP, #-0x20]
//  0x420148: ldur x0, [FP, #-0x38]
//  0x42014c: ldur x1, [FP, #-0x28]
//  0x420150: stur x3, [FP, #-8]
//  0x420154: bl #0x393bf8
//  0x420158: mov x1, x0
//  0x42015c: ldur x0, [FP, #-0x38]
//  0x420160: stur x1, [FP, #-0x10]
//  0x420164: stur w0, [x1, #0xb]
//  0x420168: bl #0x420444
//  0x42016c: mov x1, x0
//  0x420170: ldur x0, [FP, #-8]
//  0x420174: stur x1, [FP, #-0x38]
//  0x420178: stur w0, [x1, #0xb]
//  0x42017c: add x0, NULL, #0x30
//  0x420180: stur w0, [x1, #0x27]
//  0x420184: add x0, PP, #0xa, lsl #12
//  0x420188: ldr x0, [x0, #0xa8]
//  0x42018c: stur w0, [x1, #0x1f]
//  0x420190: add x2, NULL, #0x20
//  0x420194: stur w2, [x1, #0x2f]
//  0x420198: ldur x2, [FP, #-0x10]
//  0x42019c: stur w2, [x1, #0x37]
//  0x4201a0: bl #0x3949ec
//  0x4201a4: mov x1, x0
//  0x4201a8: ldr x0, [PP, #0x5458]
//  0x4201ac: stur x1, [FP, #-8]
//  0x4201b0: stur w0, [x1, #0xf]
//  0x4201b4: add x0, PP, #0x11, lsl #12
//  0x4201b8: ldr x0, [x0, #0x3d8]
//  0x4201bc: stur w0, [x1, #0x13]
//  0x4201c0: ldur x0, [FP, #-0x38]
//  0x4201c4: stur w0, [x1, #0xb]
//  0x4201c8: bl #0x391c0c
//  0x4201cc: mov x2, x0
//  0x4201d0: ldur x0, [FP, #-0x20]
//  0x4201d4: stur x2, [FP, #-0x10]
//  0x4201d8: stur w0, [x2, #0xf]
//  0x4201dc: ldur x0, [FP, #-8]
//  0x4201e0: stur w0, [x2, #0xb]
//  0x4201e4: ldur x1, [FP, #-0x28]
//  0x4201e8: bl #0x420424
//  0x4201ec: mov x2, x0
//  0x4201f0: sbfiz x0, x2, #1, #0x1f
//  0x4201f4: cmp x2, x0, asr #1
//  0x4201f8: b.eq #0x420204
//  0x4201fc: bl #0x61fba8
//  0x420200: stur x2, [x0, #7]
//  0x420204: str x0, [SP]
//  0x420208: bl #0x2ac0a0
//  0x42020c: mov x1, NULL
//  0x420210: mov x2, #2
//  0x420214: stur x0, [FP, #-8]
//  0x420218: bl #0x61f920
//  0x42021c: mov x2, x0
//  0x420220: ldur x0, [FP, #-8]
//  0x420224: stur x2, [FP, #-0x20]
//  0x420228: stur w0, [x2, #0xf]
//  0x42022c: ldr x1, [PP, #0x868]
//  0x420230: bl #0x61e854
//  0x420234: mov x1, x0
//  0x420238: ldur x0, [FP, #-0x20]
//  0x42023c: stur w0, [x1, #0xf]
//  0x420240: mov x0, #2
//  0x420244: stur w0, [x1, #0xb]
//  0x420248: str x1, [SP]
//  0x42024c: add x1, PP, #0xc, lsl #12
//  0x420250: ldr x1, [x1, #0xaf0]
//  0x420254: add x4, PP, #0xf, lsl #12
//  0x420258: ldr x4, [x4, #0xf20]
//  0x42025c: bl #0x3a1dcc
//  0x420260: mov x1, x0
//  0x420264: ldur x0, [FP, #-0x28]
//  0x420268: stur x1, [FP, #-8]
//  0x42026c: ldur w2, [x0, #0x63]
//  0x420270: add x2, x2, HEAP, lsl #32
//  0x420274: ldur w0, [x2, #0x13]
//  0x420278: ldur w3, [x2, #0x17]
//  0x42027c: sbfx x2, x0, #1, #0x1f
//  0x420280: sbfx x0, x3, #1, #0x1f
//  0x420284: sub x3, x2, x0
//  0x420288: lsl x0, x3, #1
//  0x42028c: str x0, [SP]
//  0x420290: bl #0x2ac0a0
//  0x420294: stur x0, [FP, #-0x20]
//  0x420298: bl #0x3a67f0
//  0x42029c: mov x3, x0
//  0x4202a0: ldr x0, [PP, #0x40]
//  0x4202a4: stur x3, [FP, #-0x28]
//  0x4202a8: stur w0, [x3, #0xf]
//  0x4202ac: add x1, PP, #0xf, lsl #12
//  0x4202b0: ldr x1, [x1, #0xb78]
//  0x4202b4: mov x2, #0
//  0x4202b8: bl #0x277268
//  0x4202bc: ldur x1, [FP, #-0x28]
//  0x4202c0: stur w0, [x1, #0x13]
//  0x4202c4: ldurb w16, [x1, #-1]
//  0x4202c8: ldurb w17, [x0, #-1]
//  0x4202cc: and BARRIER, x17, BARRIER, lsr #2
//  0x4202d0: tst BARRIER, HEAP, lsr #32
//  0x4202d4: b.eq #0x4202dc
//  0x4202d8: bl #0x61e04c
//  0x4202dc: ldur x0, [FP, #-8]
//  0x4202e0: stur w0, [x1, #7]
//  0x4202e4: ldurb w16, [x1, #-1]
//  0x4202e8: ldurb w17, [x0, #-1]
//  0x4202ec: and BARRIER, x17, BARRIER, lsr #2
//  0x4202f0: tst BARRIER, HEAP, lsr #32
//  0x4202f4: b.eq #0x4202fc
//  0x4202f8: bl #0x61e04c
//  0x4202fc: ldur x0, [FP, #-0x20]
//  0x420300: stur w0, [x1, #0xb]
//  0x420304: ldurb w16, [x1, #-1]
//  0x420308: ldurb w17, [x0, #-1]
//  0x42030c: and BARRIER, x17, BARRIER, lsr #2
//  0x420310: tst BARRIER, HEAP, lsr #32
//  0x420314: b.eq #0x42031c
//  0x420318: bl #0x61e04c
//  0x42031c: ldr x4, [PP, #0x4c0]
//  0x420320: bl #0x3a5b48
//  0x420324: stur x0, [FP, #-8]
//  0x420328: bl #0x393bf8
//  0x42032c: mov x3, x0
//  0x420330: ldur x0, [FP, #-8]
//  0x420334: stur x3, [FP, #-0x20]
//  0x420338: stur w0, [x3, #0xf]
//  0x42033c: mov x1, NULL
//  0x420340: mov x2, #4
//  0x420344: bl #0x61f920
//  0x420348: mov x2, x0
//  0x42034c: ldur x0, [FP, #-0x10]
//  0x420350: stur x2, [FP, #-8]
//  0x420354: stur w0, [x2, #0xf]
//  0x420358: ldur x0, [FP, #-0x20]
//  0x42035c: stur w0, [x2, #0x13]
//  0x420360: ldr x1, [PP, #0x5c58]
//  0x420364: bl #0x61e854
//  0x420368: mov x1, x0
//  0x42036c: ldur x0, [FP, #-8]
//  0x420370: stur x1, [FP, #-0x10]
//  0x420374: stur w0, [x1, #0xf]
//  0x420378: mov x0, #4
//  0x42037c: stur w0, [x1, #0xb]
//  0x420380: bl #0x39310c
//  0x420384: mov x1, x0
//  0x420388: add x0, PP, #0xa, lsl #12
//  0x42038c: ldr x0, [x0, #0x858]
//  0x420390: stur x1, [FP, #-8]
//  0x420394: stur w0, [x1, #0xf]
//  0x420398: add x0, PP, #0xe, lsl #12
//  0x42039c: ldr x0, [x0, #0xae0]
//  0x4203a0: stur w0, [x1, #0x13]
//  0x4203a4: add x0, PP, #0xe, lsl #12
//  0x4203a8: ldr x0, [x0, #0xae8]
//  0x4203ac: stur w0, [x1, #0x17]
//  0x4203b0: add x0, PP, #0xe, lsl #12
//  0x4203b4: ldr x0, [x0, #0xb60]
//  0x4203b8: stur w0, [x1, #0x1b]
//  0x4203bc: add x0, PP, #0xe, lsl #12
//  0x4203c0: ldr x0, [x0, #0xaf8]
//  0x4203c4: stur w0, [x1, #0x23]
//  0x4203c8: add x0, PP, #0xa, lsl #12
//  0x4203cc: ldr x0, [x0, #0xa8]
//  0x4203d0: stur w0, [x1, #0x2b]
//  0x4203d4: stur xzr, [x1, #0x2f]
//  0x4203d8: ldur x0, [FP, #-0x10]
//  0x4203dc: stur w0, [x1, #0xb]
//  0x4203e0: bl #0x391a04
//  0x4203e4: stur x0, [FP, #-0x10]
//  0x4203e8: ldur BARRIER, [FP, #-0x18]
//  0x4203ec: ldur LR, [FP, #-0x30]
//  0x4203f0: stp LR, BARRIER, [SP, #8]
//  0x4203f4: ldur BARRIER, [FP, #-8]
//  0x4203f8: str BARRIER, [SP]
//  0x4203fc: mov x1, x0
//  0x420400: add x4, PP, #0x10, lsl #12
//  0x420404: ldr x4, [x4, #0xcb0]
//  0x420408: bl #0x391490
//  0x42040c: ldur x0, [FP, #-0x10]
//  0x420410: mov SP, FP
//  0x420414: ldp FP, LR, [SP], #0x10
//  0x420418: ret 
//  0x42041c: bl #0x61fa28
//  0x420420: b #0x41ffac
//
dynamic PartyInvitePageState_buildBottom() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic w0;
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x41ff90
  // frame: FP = SP // 0x41ff94
  // frame: SP = SP - 0x50 // 0x41ff98
  local_m8 = x1; // 0x41ff9c
  BARRIER = mem(THR, 0x38); // 0x41ffa0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42041c
  }
  x1 = 1; // 0x41ffac
  sub_0x61e890(); // 0x41ffb0
  x0 = local_m8; // 0x41ffb8
  x1 = x0; // 0x41ffb4
  local_m10 = x1; // 0x41ffbc
  memSet(x1, 0xf, w0); // 0x41ffc0
  AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x41ffc4
  d0 = 9218868437227405312; // 0x41ffc8
  local_m18 = x0; // 0x41ffcc
  memSet(x0, 7, d0); // 0x41ffd0
  memSet(x0, 0xf, d0); // 0x41ffd4
  d0 = 4635189178982727680; // 0x41ffdc
  x17 = PP + 0x11000; // 0x41ffd8
  memSet(x0, 0x17, d0); // 0x41ffe0
  memSet(x0, 0x1f, d0); // 0x41ffe4
  SOColors_get_s_06() /* 0x3b82c4 */; // 0x41ffe8
  local_m20 = x0; // 0x41ffec
  AllocationStub_Radius() /* 0x352b04 */; // 0x41fff0
  d0 = 24.00000000 /* bits */; // 0x41fff4
  local_m28 = x0; // 0x41fff8
  memSet(x0, 7, d0); // 0x41fffc
  memSet(x0, 0xf, d0); // 0x420000
  AllocationStub_Radius() /* 0x352b04 */; // 0x420004
  d0 = 24.00000000 /* bits */; // 0x420008
  local_m30 = x0; // 0x42000c
  memSet(x0, 7, d0); // 0x420010
  memSet(x0, 0xf, d0); // 0x420014
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x420018
  x0 = local_m28; // 0x420020
  x1 = x0; // 0x42001c
  local_m38 = x1; // 0x420024
  memSet(x1, 7, w0); // 0x420028
  x0 = local_m30; // 0x42002c
  memSet(x1, 0xb, w0); // 0x420030
  x0 = mem((PP + 0xa000), 0x510) /* Obj!Radius@120d9  */; // 0x420038
  memSet(x1, 0xf, w0); // 0x42003c
  memSet(x1, 0x13, w0); // 0x420040
  SOColors_get_s_10() /* 0x3b7d80 */; // 0x420044
  BARRIER = mem(PP, 0x53b0) /* Double */; // 0x420048
  local_0 = BARRIER; // 0x42004c
  x1 = NULL; // 0x420054
  x2 = x0; // 0x420050
  x4 = mem((PP + 0xf000), 0x818) /* ImmutableArray */; // 0x42005c
  Border_factory_ctor_all() /* 0x391e08 */; // 0x420060
  local_m28 = x0; // 0x420064
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x420068
  x0 = local_m20; // 0x420070
  x1 = x0; // 0x42006c
  local_m30 = x1; // 0x420074
  memSet(x1, 7, w0); // 0x420078
  x0 = local_m28; // 0x42007c
  memSet(x1, 0xf, w0); // 0x420080
  x0 = local_m38; // 0x420084
  memSet(x1, 0x13, w0); // 0x420088
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x420090
  memSet(x1, 0x23, w0); // 0x420094
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x420098
  d0 = 4629700416936869888; // 0x4200a0
  x17 = PP + 0xe000; // 0x42009c
  local_m20 = x0; // 0x4200a4
  memSet(x0, 7, d0); // 0x4200a8
  d1 = 8.00000000 /* bits */; // 0x4200ac
  memSet(x0, 0xf, d1); // 0x4200b0
  memSet(x0, 0x17, d0); // 0x4200b4
  memSet(x0, 0x1f, d1); // 0x4200b8
  x1 = "common_confirm" /* pp+0xca68 */; // 0x4200c0
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4200c4
  getString() /* 0x3a1dcc */; // 0x4200c8
  x0 = local_m8; // 0x4200d0
  x2 = x0; // 0x4200cc
  local_m38 = x2; // 0x4200d4
  w3 = mem(x0, 0x1f); // 0x4200d8
  x1 = ((mem(x0, 0x1f)) & 0xffffffff) + (HEAP << 32); // 0x4200e0
  x3 = ((mem(x0, 0x1f)) & 0xffffffff) + (HEAP << 32); // 0x4200dc
  local_m28 = x3; // 0x4200e4
  PartyInviteNotifier_get_isUserSelected() /* 0x420450 */; // 0x4200e8
  if (x0 & (1 << 4) != 0) {
    x3 = NULL; // 0x420140
  } else {
    x1 = mem((PP + 0x11000), 0x710) /* Function */; // 0x4200f8
    x2 = local_m10; // 0x4200f0
    AllocationStub__Closure() /* 0x61ec54 */; // 0x4200fc
    local_m8 = x0; // 0x420100
    x1 = 3; // 0x420104
    sub_0x61e890(); // 0x420108
    x0 = local_m8; // 0x420110
    x1 = x0; // 0x42010c
    memSet(x1, 0xf, w0); // 0x420114
    x0 = mem(PP, 0x5a60) /* Obj!Duration@1235a  */; // 0x420118
    memSet(x1, 0x13, w0); // 0x42011c
    x0 = NULL + 0x20; // 0x420120
    memSet(x1, 0x17, w0); // 0x420124
    x1 = mem((PP + 0x11000), 0x110) /* Function */; // 0x420130
    x2 = x1; // 0x420128
    AllocationStub__Closure() /* 0x61ec54 */; // 0x420134
    x3 = x0; // 0x420138
  }
  x0 = local_m38; // 0x420148
  x1 = local_m28; // 0x42014c
  x2 = local_m20; // 0x420144
  local_m8 = x3; // 0x420150
  AllocationStub_Text() /* 0x393bf8 */; // 0x420154
  x0 = local_m38; // 0x42015c
  x1 = x0; // 0x420158
  local_m10 = x1; // 0x420160
  memSet(x1, 0xb, w0); // 0x420164
  AllocationStub_SOButton() /* 0x420444 */; // 0x420168
  x0 = local_m8; // 0x420170
  x1 = x0; // 0x42016c
  local_m38 = x1; // 0x420174
  memSet(x1, 0xb, w0); // 0x420178
  x0 = NULL + 0x30; // 0x42017c
  memSet(x1, 0x27, w0); // 0x420180
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x420188
  memSet(x1, 0x1f, w0); // 0x42018c
  x2 = NULL + 0x20; // 0x420190
  memSet(x1, 0x2f, w2); // 0x420194
  x2 = local_m10; // 0x420198
  memSet(x1, 0x37, w2); // 0x42019c
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x4201a0
  x0 = mem(PP, 0x5458) /* Double */; // 0x4201a8
  x1 = x0; // 0x4201a4
  local_m8 = x1; // 0x4201ac
  memSet(x1, 0xf, w0); // 0x4201b0
  x0 = mem((PP + 0x11000), 0x3d8) /* Double */; // 0x4201b8
  memSet(x1, 0x13, w0); // 0x4201bc
  x0 = local_m38; // 0x4201c0
  memSet(x1, 0xb, w0); // 0x4201c4
  AllocationStub_Padding() /* 0x391c0c */; // 0x4201c8
  x0 = local_m20; // 0x4201d0
  x2 = x0; // 0x4201cc
  local_m10 = x2; // 0x4201d4
  memSet(x2, 0xf, w0); // 0x4201d8
  x0 = local_m8; // 0x4201dc
  memSet(x2, 0xb, w0); // 0x4201e0
  x1 = local_m28; // 0x4201e4
  PartyInviteNotifier_get_selectedCount() /* 0x420424 */; // 0x4201e8
  x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x4201f0
  x2 = x0; // 0x4201ec
  if (x2 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x4201fc
    memSet(x0, 7, x2); // 0x420200
  }
  local_0 = x0; // 0x420204
  StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x420208
  x1 = NULL; // 0x42020c
  x2 = 2; // 0x420210
  local_m8 = x0; // 0x420214
  sub_0x61f920(); // 0x420218
  x0 = local_m8; // 0x420220
  x2 = x0; // 0x42021c
  local_m20 = x2; // 0x420224
  memSet(x2, 0xf, w0); // 0x420228
  x1 = mem(PP, 0x868) /* TypeArguments */; // 0x42022c
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x420230
  x0 = local_m20; // 0x420238
  x1 = x0; // 0x420234
  memSet(x1, 0xf, w0); // 0x42023c
  x0 = 2; // 0x420240
  memSet(x1, 0xb, w0); // 0x420244
  local_0 = x1; // 0x420248
  x1 = "virtual_party_private_room_invite_popup_amount_tip" /* pp+0xcaf0 */; // 0x420250
  x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x420258
  getString() /* 0x3a1dcc */; // 0x42025c
  x0 = local_m28; // 0x420264
  x1 = x0; // 0x420260
  local_m8 = x1; // 0x420268
  w0 = mem((((mem(x0, 0x63)) & 0xffffffff) + (HEAP << 32)), 0x13); // 0x420274
  w2 = mem(x0, 0x63); // 0x42026c
  w3 = mem((((mem(x0, 0x63)) & 0xffffffff) + (HEAP << 32)), 0x17); // 0x420278
  x0 = (mem((((mem(x0, 0x63)) & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff; // 0x420274
  x2 = (((mem((((mem(x0, 0x63)) & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x42027c
  x3 = (mem((((mem(((mem((((mem(x0, 0x63)) & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff), 0x63)) & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff; // 0x420278
  x0 = (x2 - ((x3 >> 1) & 0x7fffffff)) << 1; // 0x420288
  x3 = x2 - ((x3 >> 1) & 0x7fffffff); // 0x420284
  local_0 = x0; // 0x42028c
  StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x420290
  local_m20 = x0; // 0x420294
  AllocationStub_HighlightTextParser() /* 0x3a67f0 */; // 0x420298
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4202a0
  x3 = x0; // 0x42029c
  local_m28 = x3; // 0x4202a4
  memSet(x3, 0xf, w0); // 0x4202a8
  x1 = mem((PP + 0xf000), 0xb78) /* TypeArguments */; // 0x4202b0
  x2 = 0; // 0x4202b4
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4202b8
  x1 = local_m28; // 0x4202bc
  memSet(x1, 0x13, w0); // 0x4202c0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4202cc
  w16 = mem(x1, -1); // 0x4202c4
  w17 = mem(x0, -1); // 0x4202c8
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4202c4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4202c8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4202d8
  }
  x0 = local_m8; // 0x4202dc
  memSet(x1, 7, w0); // 0x4202e0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4202ec
  w16 = mem(x1, -1); // 0x4202e4
  w17 = mem(x0, -1); // 0x4202e8
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4202e4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4202e8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4202f8
  }
  x0 = local_m20; // 0x4202fc
  memSet(x1, 0xb, w0); // 0x420300
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x42030c
  w16 = mem(x1, -1); // 0x420304
  w17 = mem(x0, -1); // 0x420308
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x420304
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x420308
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x420318
  }
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x42031c
  HighlightTextParser_parser() /* 0x3a5b48 */; // 0x420320
  local_m8 = x0; // 0x420324
  AllocationStub_Text() /* 0x393bf8 */; // 0x420328
  x0 = local_m8; // 0x420330
  x3 = x0; // 0x42032c
  local_m20 = x3; // 0x420334
  memSet(x3, 0xf, w0); // 0x420338
  x1 = NULL; // 0x42033c
  x2 = 4; // 0x420340
  sub_0x61f920(); // 0x420344
  x0 = local_m10; // 0x42034c
  x2 = x0; // 0x420348
  local_m8 = x2; // 0x420350
  memSet(x2, 0xf, w0); // 0x420354
  x0 = local_m20; // 0x420358
  memSet(x2, 0x13, w0); // 0x42035c
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x420360
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x420364
  x0 = local_m8; // 0x42036c
  x1 = x0; // 0x420368
  local_m10 = x1; // 0x420370
  memSet(x1, 0xf, w0); // 0x420374
  x0 = 4; // 0x420378
  memSet(x1, 0xb, w0); // 0x42037c
  AllocationStub_Column() /* 0x39310c */; // 0x420380
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x42038c
  x1 = x0; // 0x420384
  local_m8 = x1; // 0x420390
  memSet(x1, 0xf, w0); // 0x420394
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x42039c
  memSet(x1, 0x13, w0); // 0x4203a0
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x4203a8
  memSet(x1, 0x17, w0); // 0x4203ac
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x4203b4
  memSet(x1, 0x1b, w0); // 0x4203b8
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x4203c0
  memSet(x1, 0x23, w0); // 0x4203c4
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x4203cc
  memSet(x1, 0x2b, w0); // 0x4203d0
  memSet(x1, 0x2f, xzr); // 0x4203d4
  x0 = local_m10; // 0x4203d8
  memSet(x1, 0xb, w0); // 0x4203dc
  AllocationStub_Container() /* 0x391a04 */; // 0x4203e0
  local_m10 = x0; // 0x4203e4
  BARRIER = local_m18; // 0x4203e8
  LR = local_m30; // 0x4203ec
  // frame: LR, BARRIER, mem(SP, 8) // 0x4203f0
  BARRIER = local_m8; // 0x4203f4
  local_0 = BARRIER; // 0x4203f8
  x1 = x0; // 0x4203fc
  x4 = mem((PP + 0x10000), 0xcb0) /* ImmutableArray */; // 0x420404
  Container_ctor() /* 0x391490 */; // 0x420408
  SP = FP; // 0x420410
  x0 = local_m10; // 0x42040c
  // frame: FP, LR, mem(SP), 0x10 // 0x420414
  return;
}

// PartyInvitePageState_anon_closure_3
// raw disassembly:
//  0x420494: stp FP, LR, [SP, #-0x10]!
//  0x420498: mov FP, SP
//  0x42049c: sub SP, SP, #0x18
//  0x4204a0: stur NULL, [FP, #-8]
//  0x4204a4: mov x0, #0
//  0x4204a8: add x1, FP, w0, sxtw #2
//  0x4204ac: ldr x1, [x1, #0x10]
//  0x4204b0: ldur w2, [x1, #0x17]
//  0x4204b4: add x2, x2, HEAP, lsl #32
//  0x4204b8: stur x2, [FP, #-0x10]
//  0x4204bc: ldr BARRIER, [THR, #0x38]
//  0x4204c0: cmp SP, BARRIER
//  0x4204c4: b.ls #0x420538
//  0x4204c8: ldr x0, [PP, #0xcf0]
//  0x4204cc: bl #0x2b16e4
//  0x4204d0: ldur x0, [FP, #-0x10]
//  0x4204d4: ldur w1, [x0, #0xf]
//  0x4204d8: add x1, x1, HEAP, lsl #32
//  0x4204dc: ldur w0, [x1, #0x1f]
//  0x4204e0: add x0, x0, HEAP, lsl #32
//  0x4204e4: ldur w2, [x1, #0x2b]
//  0x4204e8: add x2, x2, HEAP, lsl #32
//  0x4204ec: ldr BARRIER, [PP, #0x40]
//  0x4204f0: cmp w2, w16
//  0x4204f4: b.eq #0x420540
//  0x4204f8: mov x1, x0
//  0x4204fc: bl #0x42054c
//  0x420500: bl #0x28d374
//  0x420504: mov x1, x0
//  0x420508: mov x0, #0xa120
//  0x42050c: movk x0, #7, lsl #16
//  0x420510: stur x0, [x1, #7]
//  0x420514: add BARRIER, PP, #0xf, lsl #12
//  0x420518: ldr BARRIER, [BARRIER, #0x318]
//  0x42051c: str BARRIER, [SP]
//  0x420520: mov x2, x1
//  0x420524: ldr x1, [PP, #0x5838]
//  0x420528: ldr x4, [PP, #0x280]
//  0x42052c: bl #0x3b5668
//  0x420530: mov x0, NULL
//  0x420534: b #0x2b16b8
//  0x420538: bl #0x61fa28
//  0x42053c: b #0x4204c8
//  0x420540: add x9, PP, #0x11, lsl #12
//  0x420544: ldr x9, [x9, #0x718]
//  0x420548: bl #0x620258
//
dynamic PartyInvitePageState_anon_closure_3() {
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
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x420494
  // frame: FP = SP // 0x420498
  // frame: SP = SP - 0x18 // 0x42049c
  local_m8 = NULL; // 0x4204a0
  w2 = mem((mem((FP + (w0 /* sxtw 2 */)), 0x10)), 0x17); // 0x4204b0
  x0 = 0; // 0x4204a4
  x1 = mem((FP + (w0 /* sxtw 2 */)), 0x10); // 0x4204ac
  x2 = ((mem((mem((FP + (w0 /* sxtw 2 */)), 0x10)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4204b4
  local_m10 = x2; // 0x4204b8
  BARRIER = mem(THR, 0x38); // 0x4204bc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x420538
  }
  x0 = mem(PP, 0xcf0) /* TypeArguments */; // 0x4204c8
  sub_0x2b16e4(); // 0x4204cc
  w0 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x1f); // 0x4204dc
  w1 = mem((local_m10), 0xf); // 0x4204d4
  x0 = ((mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x1f)) & 0xffffffff) + (HEAP << 32); // 0x4204e0
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4204d8
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4204ec
  w2 = mem(x1, 0x2b); /* _PartyInvitePageState._roomId (off 0x2c) */  // 0x4204e4
  x2 = ((mem(x1, 0x2b)) & 0xffffffff) + (HEAP << 32); /* _PartyInvitePageState._roomId (off 0x2c) */  // 0x4204e8
  if (w2 == w16) {
    x9 = mem((PP + 0x11000), 0x718) /* Field */; // 0x420544
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x420548
  }
  x1 = x0; // 0x4204f8
  PartyInviteNotifier_confirmInvite() /* 0x42054c */; // 0x4204fc
  AllocationStub_Duration() /* 0x28d374 */; // 0x420500
  x0 = (x0 & 0xffff) | 0x70000; // 0x42050c
  x1 = x0; // 0x420504
  memSet(x1, 7, x0); // 0x420510
  BARRIER = mem((PP + 0xf000), 0x318) /* Closure */; // 0x420518
  local_0 = BARRIER; // 0x42051c
  x1 = mem(PP, 0x5838) /* TypeArguments */; // 0x420524
  x2 = x1; // 0x420520
  x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x420528
  Future_factory_ctor_delayed() /* 0x3b5668 */; // 0x42052c
  x0 = NULL; // 0x420530
}

// PartyInvitePageState_buildBody
// raw disassembly:
//  0x4207d8: stp FP, LR, [SP, #-0x10]!
//  0x4207dc: mov FP, SP
//  0x4207e0: sub SP, SP, #0x80
//  0x4207e4: mov x2, x1
//  0x4207e8: stur x1, [FP, #-8]
//  0x4207ec: ldr BARRIER, [THR, #0x38]
//  0x4207f0: cmp SP, BARRIER
//  0x4207f4: b.ls #0x420b9c
//  0x4207f8: mov x1, #1
//  0x4207fc: bl #0x61e890
//  0x420800: ldur x2, [FP, #-8]
//  0x420804: stur x0, [FP, #-0x10]
//  0x420808: stur w2, [x0, #0xf]
//  0x42080c: bl #0x3b82c4
//  0x420810: stur x0, [FP, #-0x18]
//  0x420814: bl #0x3b348c
//  0x420818: stur x0, [FP, #-0x20]
//  0x42081c: bl #0x31abec
//  0x420820: mov x1, x0
//  0x420824: add x0, NULL, #0x20
//  0x420828: stur x1, [FP, #-0x28]
//  0x42082c: stur w0, [x1, #7]
//  0x420830: add x2, PP, #0xe, lsl #12
//  0x420834: ldr x2, [x2, #0xb50]
//  0x420838: stur w2, [x1, #0x1f]
//  0x42083c: add x3, PP, #0xe, lsl #12
//  0x420840: ldr x3, [x3, #0xe40]
//  0x420844: stur w3, [x1, #0x23]
//  0x420848: bl #0x3a6088
//  0x42084c: stur x0, [FP, #-0x30]
//  0x420850: bl #0x31abec
//  0x420854: mov x1, x0
//  0x420858: add x0, NULL, #0x20
//  0x42085c: stur x1, [FP, #-0x38]
//  0x420860: stur w0, [x1, #7]
//  0x420864: add x2, PP, #0xe, lsl #12
//  0x420868: ldr x2, [x2, #0xb50]
//  0x42086c: stur w2, [x1, #0x1f]
//  0x420870: add x2, PP, #0xe, lsl #12
//  0x420874: ldr x2, [x2, #0xe40]
//  0x420878: stur w2, [x1, #0x23]
//  0x42087c: bl #0x3b1380
//  0x420880: stur x0, [FP, #-0x40]
//  0x420884: bl #0x391f1c
//  0x420888: mov x1, x0
//  0x42088c: ldur x0, [FP, #-0x40]
//  0x420890: stur x1, [FP, #-0x48]
//  0x420894: stur w0, [x1, #7]
//  0x420898: fmov d0, #3.00000000
//  0x42089c: stur d0, [x1, #0xb]
//  0x4208a0: add x0, PP, #0xa, lsl #12
//  0x4208a4: ldr x0, [x0, #0x370]
//  0x4208a8: stur w0, [x1, #0x13]
//  0x4208ac: fmov d0, #-1.00000000
//  0x4208b0: stur d0, [x1, #0x17]
//  0x4208b4: bl #0x420d28
//  0x4208b8: mov x3, x0
//  0x4208bc: ldur x0, [FP, #-0x48]
//  0x4208c0: stur x3, [FP, #-0x50]
//  0x4208c4: stur w0, [x3, #7]
//  0x4208c8: add x0, PP, #0x11, lsl #12
//  0x4208cc: ldr x0, [x0, #0x770]
//  0x4208d0: stur w0, [x3, #0xb]
//  0x4208d4: fmov d0, #24.00000000
//  0x4208d8: stur d0, [x3, #0xf]
//  0x4208dc: ldur x0, [FP, #-8]
//  0x4208e0: ldur w4, [x0, #0x23]
//  0x4208e4: add x4, x4, HEAP, lsl #32
//  0x4208e8: ldr BARRIER, [PP, #0x40]
//  0x4208ec: cmp w4, w16
//  0x4208f0: b.eq #0x420ba4
//  0x4208f4: stur x4, [FP, #-0x48]
//  0x4208f8: ldur w5, [x0, #0x1b]
//  0x4208fc: add x5, x5, HEAP, lsl #32
//  0x420900: stur x5, [FP, #-0x40]
//  0x420904: add x1, PP, #0x11, lsl #12
//  0x420908: ldr x1, [x1, #0x778]
//  0x42090c: mov x2, NULL
//  0x420910: bl #0x61ec54
//  0x420914: add BARRIER, PP, #0xb, lsl #12
//  0x420918: ldr BARRIER, [BARRIER, #0x640]
//  0x42091c: ldur LR, [FP, #-0x40]
//  0x420920: stp LR, BARRIER, [SP, #8]
//  0x420924: str x0, [SP]
//  0x420928: ldr x4, [PP, #0x58]
//  0x42092c: bl #0x3bd500
//  0x420930: ldur w1, [x0, #7]
//  0x420934: add x1, x1, HEAP, lsl #32
//  0x420938: mov x2, x0
//  0x42093c: bl #0x276db0
//  0x420940: stur x0, [FP, #-0x58]
//  0x420944: bl #0x420d1c
//  0x420948: mov x3, x0
//  0x42094c: ldur x0, [FP, #-0x58]
//  0x420950: stur x3, [FP, #-0x60]
//  0x420954: stur w0, [x3, #0xb]
//  0x420958: ldur x0, [FP, #-0x48]
//  0x42095c: stur w0, [x3, #0xf]
//  0x420960: add x0, NULL, #0x20
//  0x420964: stur w0, [x3, #0x13]
//  0x420968: fmov d0, #2.00000000
//  0x42096c: stur d0, [x3, #0x1f]
//  0x420970: ldr x1, [PP, #0x5ac0]
//  0x420974: stur w1, [x3, #0x27]
//  0x420978: ldur x1, [FP, #-0x50]
//  0x42097c: stur w1, [x3, #0x2b]
//  0x420980: ldur x1, [FP, #-0x20]
//  0x420984: stur w1, [x3, #0x3b]
//  0x420988: ldur x1, [FP, #-0x28]
//  0x42098c: stur w1, [x3, #0x43]
//  0x420990: add x1, PP, #0x11, lsl #12
//  0x420994: ldr x1, [x1, #0x780]
//  0x420998: stur w1, [x3, #0x4b]
//  0x42099c: ldur x1, [FP, #-0x30]
//  0x4209a0: stur w1, [x3, #0x3f]
//  0x4209a4: ldur x1, [FP, #-0x38]
//  0x4209a8: stur w1, [x3, #0x47]
//  0x4209ac: ldr x1, [PP, #0x77d8]
//  0x4209b0: stur w1, [x3, #0x53]
//  0x4209b4: ldur x2, [FP, #-8]
//  0x4209b8: add x1, PP, #0x11, lsl #12
//  0x4209bc: ldr x1, [x1, #0x788]
//  0x4209c0: bl #0x61ec54
//  0x4209c4: mov x1, x0
//  0x4209c8: ldur x0, [FP, #-0x60]
//  0x4209cc: stur w1, [x0, #0x5f]
//  0x4209d0: add x1, NULL, #0x20
//  0x4209d4: stur w1, [x0, #0x7b]
//  0x4209d8: bl #0x391c0c
//  0x4209dc: mov x1, x0
//  0x4209e0: add x0, PP, #0x11, lsl #12
//  0x4209e4: ldr x0, [x0, #0x790]
//  0x4209e8: stur x1, [FP, #-0x20]
//  0x4209ec: stur w0, [x1, #0xf]
//  0x4209f0: ldur x0, [FP, #-0x60]
//  0x4209f4: stur w0, [x1, #0xb]
//  0x4209f8: bl #0x3949ec
//  0x4209fc: mov x3, x0
//  0x420a00: ldr x0, [PP, #0x5458]
//  0x420a04: stur x3, [FP, #-0x28]
//  0x420a08: stur w0, [x3, #0xf]
//  0x420a0c: add x0, PP, #0x10, lsl #12
//  0x420a10: ldr x0, [x0, #0x208]
//  0x420a14: stur w0, [x3, #0x13]
//  0x420a18: ldur x0, [FP, #-0x20]
//  0x420a1c: stur w0, [x3, #0xb]
//  0x420a20: ldur x2, [FP, #-8]
//  0x420a24: ldur w0, [x2, #0x27]
//  0x420a28: add x0, x0, HEAP, lsl #32
//  0x420a2c: ldr BARRIER, [PP, #0x40]
//  0x420a30: cmp w0, w16
//  0x420a34: b.eq #0x420bb0
//  0x420a38: ldur x1, [FP, #-0x40]
//  0x420a3c: stur x0, [FP, #-0x20]
//  0x420a40: ldur w4, [x1, #0xb]
//  0x420a44: sbfx x5, x4, #1, #0x1f
//  0x420a48: stur x5, [FP, #-0x68]
//  0x420a4c: add x1, PP, #0x11, lsl #12
//  0x420a50: ldr x1, [x1, #0x798]
//  0x420a54: bl #0x61ec54
//  0x420a58: ldur x2, [FP, #-0x10]
//  0x420a5c: add x1, PP, #0x11, lsl #12
//  0x420a60: ldr x1, [x1, #0x7a0]
//  0x420a64: stur x0, [FP, #-8]
//  0x420a68: bl #0x61ec54
//  0x420a6c: stur x0, [FP, #-0x10]
//  0x420a70: bl #0x400664
//  0x420a74: mov x1, x0
//  0x420a78: ldur x2, [FP, #-0x20]
//  0x420a7c: ldur x3, [FP, #-0x10]
//  0x420a80: ldur x5, [FP, #-0x68]
//  0x420a84: ldur x6, [FP, #-8]
//  0x420a88: stur x0, [FP, #-8]
//  0x420a8c: ldr x4, [PP, #0x1360]
//  0x420a90: bl #0x420bbc
//  0x420a94: add x1, PP, #0xe, lsl #12
//  0x420a98: ldr x1, [x1, #0xad0]
//  0x420a9c: bl #0x39fb14
//  0x420aa0: mov x3, x0
//  0x420aa4: mov x0, #1
//  0x420aa8: stur x3, [FP, #-0x10]
//  0x420aac: stur x0, [x3, #0x13]
//  0x420ab0: add x0, PP, #0xe, lsl #12
//  0x420ab4: ldr x0, [x0, #0xad8]
//  0x420ab8: stur w0, [x3, #0x1b]
//  0x420abc: ldur x0, [FP, #-8]
//  0x420ac0: stur w0, [x3, #0xb]
//  0x420ac4: mov x1, NULL
//  0x420ac8: mov x2, #4
//  0x420acc: bl #0x61f920
//  0x420ad0: mov x2, x0
//  0x420ad4: ldur x0, [FP, #-0x28]
//  0x420ad8: stur x2, [FP, #-8]
//  0x420adc: stur w0, [x2, #0xf]
//  0x420ae0: ldur x0, [FP, #-0x10]
//  0x420ae4: stur w0, [x2, #0x13]
//  0x420ae8: ldr x1, [PP, #0x5c58]
//  0x420aec: bl #0x61e854
//  0x420af0: mov x1, x0
//  0x420af4: ldur x0, [FP, #-8]
//  0x420af8: stur x1, [FP, #-0x10]
//  0x420afc: stur w0, [x1, #0xf]
//  0x420b00: mov x0, #4
//  0x420b04: stur w0, [x1, #0xb]
//  0x420b08: bl #0x39310c
//  0x420b0c: mov x1, x0
//  0x420b10: add x0, PP, #0xa, lsl #12
//  0x420b14: ldr x0, [x0, #0x858]
//  0x420b18: stur x1, [FP, #-8]
//  0x420b1c: stur w0, [x1, #0xf]
//  0x420b20: add x0, PP, #0xe, lsl #12
//  0x420b24: ldr x0, [x0, #0xae0]
//  0x420b28: stur w0, [x1, #0x13]
//  0x420b2c: add x0, PP, #0xe, lsl #12
//  0x420b30: ldr x0, [x0, #0xae8]
//  0x420b34: stur w0, [x1, #0x17]
//  0x420b38: add x0, PP, #0xe, lsl #12
//  0x420b3c: ldr x0, [x0, #0xb60]
//  0x420b40: stur w0, [x1, #0x1b]
//  0x420b44: add x0, PP, #0xe, lsl #12
//  0x420b48: ldr x0, [x0, #0xaf8]
//  0x420b4c: stur w0, [x1, #0x23]
//  0x420b50: add x0, PP, #0xa, lsl #12
//  0x420b54: ldr x0, [x0, #0xa8]
//  0x420b58: stur w0, [x1, #0x2b]
//  0x420b5c: stur xzr, [x1, #0x2f]
//  0x420b60: ldur x0, [FP, #-0x10]
//  0x420b64: stur w0, [x1, #0xb]
//  0x420b68: bl #0x391a04
//  0x420b6c: stur x0, [FP, #-0x10]
//  0x420b70: ldur BARRIER, [FP, #-0x18]
//  0x420b74: ldur LR, [FP, #-8]
//  0x420b78: stp LR, BARRIER, [SP]
//  0x420b7c: mov x1, x0
//  0x420b80: add x4, PP, #0xf, lsl #12
//  0x420b84: ldr x4, [x4, #0x568]
//  0x420b88: bl #0x391490
//  0x420b8c: ldur x0, [FP, #-0x10]
//  0x420b90: mov SP, FP
//  0x420b94: ldp FP, LR, [SP], #0x10
//  0x420b98: ret 
//  0x420b9c: bl #0x61fa28
//  0x420ba0: b #0x4207f8
//  0x420ba4: add x9, PP, #0x11, lsl #12
//  0x420ba8: ldr x9, [x9, #0x7a8]
//  0x420bac: bl #0x620258
//  0x420bb0: add x9, PP, #0x11, lsl #12
//  0x420bb4: ldr x9, [x9, #0x7b0]
//  0x420bb8: bl #0x620258
//
dynamic PartyInvitePageState_buildBody() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic w0;
  dynamic w1;
  dynamic w4;
  dynamic w5;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4207d8
  // frame: FP = SP // 0x4207dc
  // frame: SP = SP - 0x80 // 0x4207e0
  x2 = x1; // 0x4207e4
  local_m8 = x1; // 0x4207e8
  BARRIER = mem(THR, 0x38); // 0x4207ec
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x420b9c
  }
  x1 = 1; // 0x4207f8
  sub_0x61e890(); // 0x4207fc
  x2 = local_m8; // 0x420800
  local_m10 = x0; // 0x420804
  memSet(x0, 0xf, w2); // 0x420808
  SOColors_get_s_06() /* 0x3b82c4 */; // 0x42080c
  local_m18 = x0; // 0x420810
  SOColors_get_s_02() /* 0x3b348c */; // 0x420814
  local_m20 = x0; // 0x420818
  AllocationStub_TextStyle() /* 0x31abec */; // 0x42081c
  x0 = NULL + 0x20; // 0x420824
  x1 = x0; // 0x420820
  local_m28 = x1; // 0x420828
  memSet(x1, 7, w0); // 0x42082c
  x2 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x420834
  memSet(x1, 0x1f, w2); // 0x420838
  x3 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x420840
  memSet(x1, 0x23, w3); // 0x420844
  SOColors_get_s_05() /* 0x3a6088 */; // 0x420848
  local_m30 = x0; // 0x42084c
  AllocationStub_TextStyle() /* 0x31abec */; // 0x420850
  x0 = NULL + 0x20; // 0x420858
  x1 = x0; // 0x420854
  local_m38 = x1; // 0x42085c
  memSet(x1, 7, w0); // 0x420860
  x2 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x420868
  memSet(x1, 0x1f, w2); // 0x42086c
  x2 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x420874
  memSet(x1, 0x23, w2); // 0x420878
  SOColors_get_s_00() /* 0x3b1380 */; // 0x42087c
  local_m40 = x0; // 0x420880
  AllocationStub_BorderSide() /* 0x391f1c */; // 0x420884
  x0 = local_m40; // 0x42088c
  x1 = x0; // 0x420888
  local_m48 = x1; // 0x420890
  memSet(x1, 7, w0); // 0x420894
  d0 = 3.00000000 /* bits */; // 0x420898
  memSet(x1, 0xb, d0); // 0x42089c
  x0 = mem((PP + 0xa000), 0x370) /* Obj!BorderStyle@12289  */; // 0x4208a4
  memSet(x1, 0x13, w0); // 0x4208a8
  d0 = -1.00000000 /* bits */; // 0x4208ac
  memSet(x1, 0x17, d0); // 0x4208b0
  AllocationStub_SOTabIndicator() /* 0x420d28 */; // 0x4208b4
  x0 = local_m48; // 0x4208bc
  x3 = x0; // 0x4208b8
  local_m50 = x3; // 0x4208c0
  memSet(x3, 7, w0); // 0x4208c4
  x0 = mem((PP + 0x11000), 0x770) /* Obj!EdgeInsets@11ba7  */; // 0x4208cc
  memSet(x3, 0xb, w0); // 0x4208d0
  d0 = 24.00000000 /* bits */; // 0x4208d4
  memSet(x3, 0xf, d0); // 0x4208d8
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4208e8
  w4 = mem((local_m8), 0x23); /* _PartyInvitePageState._tabController (off 0x24) */  // 0x4208e0
  x0 = local_m8; // 0x4208dc
  x4 = ((mem((local_m8), 0x23)) & 0xffffffff) + (HEAP << 32); /* _PartyInvitePageState._tabController (off 0x24) */  // 0x4208e4
  if (w4 == w16) {
    x9 = mem((PP + 0x11000), 0x7a8) /* Field */; // 0x420ba8
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x420bac
  } else {
    local_m48 = x4; // 0x4208f4
    w5 = mem(x0, 0x1b); // 0x4208f8
    x5 = ((mem(x0, 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x4208fc
    local_m40 = x5; // 0x420900
    x1 = mem((PP + 0x11000), 0x778) /* Function */; // 0x420908
    x2 = NULL; // 0x42090c
    AllocationStub__Closure() /* 0x61ec54 */; // 0x420910
    BARRIER = mem((PP + 0xb000), 0x640) /* TypeArguments */; // 0x420918
    LR = local_m40; // 0x42091c
    // frame: LR, BARRIER, mem(SP, 8) // 0x420920
    local_0 = x0; // 0x420924
    x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x420928
    ListBase_map() /* 0x3bd500 */; // 0x42092c
    w1 = mem(x0, 7); // 0x420930
    x1 = ((mem(x0, 7)) & 0xffffffff) + (HEAP << 32); // 0x420934
    x2 = x0; // 0x420938
    GrowableList_factory_ctor_of() /* 0x276db0 */; // 0x42093c
    local_m58 = x0; // 0x420940
    AllocationStub_TabBar() /* 0x420d1c */; // 0x420944
    x0 = local_m58; // 0x42094c
    x3 = x0; // 0x420948
    local_m60 = x3; // 0x420950
    memSet(x3, 0xb, w0); // 0x420954
    x0 = local_m48; // 0x420958
    memSet(x3, 0xf, w0); // 0x42095c
    x0 = NULL + 0x20; // 0x420960
    memSet(x3, 0x13, w0); // 0x420964
    d0 = 2.00000000 /* bits */; // 0x420968
    memSet(x3, 0x1f, d0); // 0x42096c
    x1 = mem(PP, 0x5ac0) /* Obj!EdgeInsets@11b7c  */; // 0x420970
    memSet(x3, 0x27, w1); // 0x420974
    x1 = local_m50; // 0x420978
    memSet(x3, 0x2b, w1); // 0x42097c
    x1 = local_m20; // 0x420980
    memSet(x3, 0x3b, w1); // 0x420984
    x1 = local_m28; // 0x420988
    memSet(x3, 0x43, w1); // 0x42098c
    x1 = mem((PP + 0x11000), 0x780) /* Obj!EdgeInsets@11b9a  */; // 0x420994
    memSet(x3, 0x4b, w1); // 0x420998
    x1 = local_m30; // 0x42099c
    memSet(x3, 0x3f, w1); // 0x4209a0
    x1 = local_m38; // 0x4209a4
    memSet(x3, 0x47, w1); // 0x4209a8
    x1 = mem(PP, 0x77d8) /* Obj!DragStartBehavior@122d8  */; // 0x4209ac
    memSet(x3, 0x53, w1); // 0x4209b0
    x1 = mem((PP + 0x11000), 0x788) /* Function */; // 0x4209bc
    x2 = local_m8; // 0x4209b4
    AllocationStub__Closure() /* 0x61ec54 */; // 0x4209c0
    x0 = local_m60; // 0x4209c8
    x1 = x0; // 0x4209c4
    memSet(x0, 0x5f, w1); // 0x4209cc
    x1 = NULL + 0x20; // 0x4209d0
    memSet(x0, 0x7b, w1); // 0x4209d4
    AllocationStub_Padding() /* 0x391c0c */; // 0x4209d8
    x0 = mem((PP + 0x11000), 0x790) /* Obj!EdgeInsets@11ba6  */; // 0x4209e4
    x1 = x0; // 0x4209dc
    local_m20 = x1; // 0x4209e8
    memSet(x1, 0xf, w0); // 0x4209ec
    x0 = local_m60; // 0x4209f0
    memSet(x1, 0xb, w0); // 0x4209f4
    AllocationStub_SizedBox() /* 0x3949ec */; // 0x4209f8
    x0 = mem(PP, 0x5458) /* Double */; // 0x420a00
    x3 = x0; // 0x4209fc
    local_m28 = x3; // 0x420a04
    memSet(x3, 0xf, w0); // 0x420a08
    x0 = mem((PP + 0x10000), 0x208) /* Double */; // 0x420a10
    memSet(x3, 0x13, w0); // 0x420a14
    x0 = local_m20; // 0x420a18
    memSet(x3, 0xb, w0); // 0x420a1c
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x420a2c
    w0 = mem((local_m8), 0x27); /* _PartyInvitePageState._pageController (off 0x28) */  // 0x420a24
    x0 = ((mem((local_m8), 0x27)) & 0xffffffff) + (HEAP << 32); /* _PartyInvitePageState._pageController (off 0x28) */  // 0x420a28
    x2 = local_m8; // 0x420a20
    if (w0 != w16) {
      x1 = local_m40; // 0x420a38
      local_m20 = x0; // 0x420a3c
      w4 = mem(x1, 0xb); // 0x420a40
      x4 = (mem(x1, 0xb)) & 0xffffffff; // 0x420a40
      x5 = (((mem(x1, 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x420a44
      local_m68 = x5; // 0x420a48
      x1 = mem((PP + 0x11000), 0x798) /* Function */; // 0x420a50
      AllocationStub__Closure() /* 0x61ec54 */; // 0x420a54
      x1 = mem((PP + 0x11000), 0x7a0) /* Function */; // 0x420a60
      x2 = local_m10; // 0x420a58
      local_m8 = x0; // 0x420a64
      AllocationStub__Closure() /* 0x61ec54 */; // 0x420a68
      local_m10 = x0; // 0x420a6c
      AllocationStub_PageView() /* 0x400664 */; // 0x420a70
      x1 = x0; // 0x420a74
      x2 = local_m20; // 0x420a78
      x3 = local_m10; // 0x420a7c
      x5 = local_m68; // 0x420a80
      x6 = local_m8; // 0x420a84
      local_m8 = x0; // 0x420a88
      x4 = mem(PP, 0x1360) /* ImmutableArray */; // 0x420a8c
      PageView_ctor_builder() /* 0x420bbc */; // 0x420a90
      x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x420a98
      AllocationStub_Expanded() /* 0x39fb14 */; // 0x420a9c
      x0 = 1; // 0x420aa4
      x3 = x0; // 0x420aa0
      local_m10 = x3; // 0x420aa8
      memSet(x3, 0x13, x0); // 0x420aac
      x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x420ab4
      memSet(x3, 0x1b, w0); // 0x420ab8
      x0 = local_m8; // 0x420abc
      memSet(x3, 0xb, w0); // 0x420ac0
      x1 = NULL; // 0x420ac4
      x2 = 4; // 0x420ac8
      sub_0x61f920(); // 0x420acc
      x0 = local_m28; // 0x420ad4
      x2 = x0; // 0x420ad0
      local_m8 = x2; // 0x420ad8
      memSet(x2, 0xf, w0); // 0x420adc
      x0 = local_m10; // 0x420ae0
      memSet(x2, 0x13, w0); // 0x420ae4
      x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x420ae8
      AllocationStub__GrowableList() /* 0x61e854 */; // 0x420aec
      x0 = local_m8; // 0x420af4
      x1 = x0; // 0x420af0
      local_m10 = x1; // 0x420af8
      memSet(x1, 0xf, w0); // 0x420afc
      x0 = 4; // 0x420b00
      memSet(x1, 0xb, w0); // 0x420b04
      AllocationStub_Column() /* 0x39310c */; // 0x420b08
      x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x420b14
      x1 = x0; // 0x420b0c
      local_m8 = x1; // 0x420b18
      memSet(x1, 0xf, w0); // 0x420b1c
      x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x420b24
      memSet(x1, 0x13, w0); // 0x420b28
      x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x420b30
      memSet(x1, 0x17, w0); // 0x420b34
      x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x420b3c
      memSet(x1, 0x1b, w0); // 0x420b40
      x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x420b48
      memSet(x1, 0x23, w0); // 0x420b4c
      x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x420b54
      memSet(x1, 0x2b, w0); // 0x420b58
      memSet(x1, 0x2f, xzr); // 0x420b5c
      x0 = local_m10; // 0x420b60
      memSet(x1, 0xb, w0); // 0x420b64
      AllocationStub_Container() /* 0x391a04 */; // 0x420b68
      local_m10 = x0; // 0x420b6c
      BARRIER = local_m18; // 0x420b70
      LR = local_m8; // 0x420b74
      // frame: LR, BARRIER, mem(SP) // 0x420b78
      x1 = x0; // 0x420b7c
      x4 = mem((PP + 0xf000), 0x568) /* ImmutableArray */; // 0x420b84
      Container_ctor() /* 0x391490 */; // 0x420b88
      SP = FP; // 0x420b90
      x0 = local_m10; // 0x420b8c
      // frame: FP, LR, mem(SP), 0x10 // 0x420b94
      return;
    }
  }
  x9 = mem((PP + 0x11000), 0x7b0) /* Field */; // 0x420bb4
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x420bb8
}

// PartyInvitePageState_anon_closure_4
// raw disassembly:
//  0x420d34: stp FP, LR, [SP, #-0x10]!
//  0x420d38: mov FP, SP
//  0x420d3c: sub SP, SP, #0x10
//  0x420d40: ldr x0, [FP, #0x20]
//  0x420d44: ldur w1, [x0, #0x17]
//  0x420d48: add x1, x1, HEAP, lsl #32
//  0x420d4c: ldur w0, [x1, #0xf]
//  0x420d50: add x0, x0, HEAP, lsl #32
//  0x420d54: ldur w1, [x0, #0x1f]
//  0x420d58: add x1, x1, HEAP, lsl #32
//  0x420d5c: ldr x0, [FP, #0x10]
//  0x420d60: stur x1, [FP, #-0x10]
//  0x420d64: sbfx x2, x0, #1, #0x1f
//  0x420d68: tbz w0, #0, #0x420d70
//  0x420d6c: ldur x2, [x0, #7]
//  0x420d70: stur x2, [FP, #-8]
//  0x420d74: bl #0x420d94
//  0x420d78: ldur x1, [FP, #-8]
//  0x420d7c: stur x1, [x0, #0xb]
//  0x420d80: ldur x1, [FP, #-0x10]
//  0x420d84: stur w1, [x0, #0x13]
//  0x420d88: mov SP, FP
//  0x420d8c: ldp FP, LR, [SP], #0x10
//  0x420d90: ret 
//
dynamic PartyInvitePageState_anon_closure_4() {
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x420d34
  // frame: FP = SP // 0x420d38
  // frame: SP = SP - 0x10 // 0x420d3c
  w0 = mem((((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf); // 0x420d4c
  w1 = mem((local_20), 0x17); // 0x420d44
  x0 = ((mem((((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x420d50
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x420d48
  w1 = mem(x0, 0x1f); // 0x420d54
  x0 = local_10; // 0x420d5c
  x1 = ((mem(x0, 0x1f)) & 0xffffffff) + (HEAP << 32); // 0x420d58
  local_m10 = x1; // 0x420d60
  x2 = (x0 >> 1) & 0x7fffffff; // 0x420d64
  if (x0 & (1 << 0) == 0) {
  } else {
    x2 = mem(x0, 7); // 0x420d6c
  }
  local_m8 = x2; // 0x420d70
  AllocationStub__InviteUserPage() /* 0x420d94 */; // 0x420d74
  x1 = local_m8; // 0x420d78
  memSet(x0, 0xb, x1); // 0x420d7c
  x1 = local_m10; // 0x420d80
  memSet(x0, 0x13, w1); // 0x420d84
  SP = FP; // 0x420d88
  // frame: FP, LR, mem(SP), 0x10 // 0x420d8c
  return;
}

// PartyInvitePageState_onPageChanged
// raw disassembly:
//  0x420da0: stp FP, LR, [SP, #-0x10]!
//  0x420da4: mov FP, SP
//  0x420da8: ldr x0, [FP, #0x18]
//  0x420dac: ldur w1, [x0, #0x17]
//  0x420db0: add x1, x1, HEAP, lsl #32
//  0x420db4: ldr BARRIER, [THR, #0x38]
//  0x420db8: cmp SP, BARRIER
//  0x420dbc: b.ls #0x420dd4
//  0x420dc0: ldr x2, [FP, #0x10]
//  0x420dc4: bl #0x420ddc
//  0x420dc8: mov SP, FP
//  0x420dcc: ldp FP, LR, [SP], #0x10
//  0x420dd0: ret 
//  0x420dd4: bl #0x61fa28
//  0x420dd8: b #0x420dc0
//
dynamic PartyInvitePageState_onPageChanged() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x420da0
  BARRIER = mem(THR, 0x38); // 0x420db4
  // frame: FP = SP // 0x420da4
  w1 = mem((local_18), 0x17); // 0x420dac
  x0 = local_18; // 0x420da8
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x420db0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x420dd4
  }
  x2 = local_10; // 0x420dc0
  PartyInvitePageState_onPageChanged() /* 0x420ddc */; // 0x420dc4
  SP = FP; // 0x420dc8
  // frame: FP, LR, mem(SP), 0x10 // 0x420dcc
  return;
}

// PartyInvitePageState_onPageChanged_2
// raw disassembly:
//  0x420ddc: stp FP, LR, [SP, #-0x10]!
//  0x420de0: mov FP, SP
//  0x420de4: ldr BARRIER, [THR, #0x38]
//  0x420de8: cmp SP, BARRIER
//  0x420dec: b.ls #0x420e30
//  0x420df0: ldur w0, [x1, #0x23]
//  0x420df4: add x0, x0, HEAP, lsl #32
//  0x420df8: ldr BARRIER, [PP, #0x40]
//  0x420dfc: cmp w0, w16
//  0x420e00: b.eq #0x420e38
//  0x420e04: sbfx x1, x2, #1, #0x1f
//  0x420e08: tbz w2, #0, #0x420e10
//  0x420e0c: ldur x1, [x2, #7]
//  0x420e10: mov x2, x1
//  0x420e14: mov x1, x0
//  0x420e18: ldr x4, [PP, #0x278]
//  0x420e1c: bl #0x3ff4a0
//  0x420e20: mov x0, NULL
//  0x420e24: mov SP, FP
//  0x420e28: ldp FP, LR, [SP], #0x10
//  0x420e2c: ret 
//  0x420e30: bl #0x61fa28
//  0x420e34: b #0x420df0
//  0x420e38: add x9, PP, #0x11, lsl #12
//  0x420e3c: ldr x9, [x9, #0x7a8]
//  0x420e40: bl #0x620258
//
dynamic PartyInvitePageState_onPageChanged_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x420ddc
  BARRIER = mem(THR, 0x38); // 0x420de4
  // frame: FP = SP // 0x420de0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x420e30
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x420df8
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x420df4
  if (w0 == w16) {
    x9 = mem((PP + 0x11000), 0x7a8) /* Field */; // 0x420e3c
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x420e40
  }
  x1 = (x2 >> 1) & 0x7fffffff; // 0x420e04
  if (x2 & (1 << 0) == 0) {
  } else {
    x1 = mem(x2, 7); // 0x420e0c
  }
  x1 = x0; // 0x420e14
  x2 = x1; // 0x420e10
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x420e18
  TabController_animateTo() /* 0x3ff4a0 */; // 0x420e1c
  SP = FP; // 0x420e24
  x0 = NULL; // 0x420e20
  // frame: FP, LR, mem(SP), 0x10 // 0x420e28
  return;
}

// PartyInvitePageState_changeTab
// raw disassembly:
//  0x420e44: stp FP, LR, [SP, #-0x10]!
//  0x420e48: mov FP, SP
//  0x420e4c: ldr x0, [FP, #0x18]
//  0x420e50: ldur w1, [x0, #0x17]
//  0x420e54: add x1, x1, HEAP, lsl #32
//  0x420e58: ldr BARRIER, [THR, #0x38]
//  0x420e5c: cmp SP, BARRIER
//  0x420e60: b.ls #0x420e78
//  0x420e64: ldr x2, [FP, #0x10]
//  0x420e68: bl #0x420e80
//  0x420e6c: mov SP, FP
//  0x420e70: ldp FP, LR, [SP], #0x10
//  0x420e74: ret 
//  0x420e78: bl #0x61fa28
//  0x420e7c: b #0x420e64
//
dynamic PartyInvitePageState_changeTab() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x420e44
  BARRIER = mem(THR, 0x38); // 0x420e58
  // frame: FP = SP // 0x420e48
  w1 = mem((local_18), 0x17); // 0x420e50
  x0 = local_18; // 0x420e4c
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x420e54
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x420e78
  }
  x2 = local_10; // 0x420e64
  PartyInvitePageState_changeTab() /* 0x420e80 */; // 0x420e68
  SP = FP; // 0x420e6c
  // frame: FP, LR, mem(SP), 0x10 // 0x420e70
  return;
}

// PartyInvitePageState_changeTab_2
// raw disassembly:
//  0x420e80: stp FP, LR, [SP, #-0x10]!
//  0x420e84: mov FP, SP
//  0x420e88: ldr BARRIER, [THR, #0x38]
//  0x420e8c: cmp SP, BARRIER
//  0x420e90: b.ls #0x420ed0
//  0x420e94: ldur w0, [x1, #0x27]
//  0x420e98: add x0, x0, HEAP, lsl #32
//  0x420e9c: ldr BARRIER, [PP, #0x40]
//  0x420ea0: cmp w0, w16
//  0x420ea4: b.eq #0x420ed8
//  0x420ea8: sbfx x1, x2, #1, #0x1f
//  0x420eac: tbz w2, #0, #0x420eb4
//  0x420eb0: ldur x1, [x2, #7]
//  0x420eb4: mov x2, x1
//  0x420eb8: mov x1, x0
//  0x420ebc: bl #0x3cfd4c
//  0x420ec0: mov x0, NULL
//  0x420ec4: mov SP, FP
//  0x420ec8: ldp FP, LR, [SP], #0x10
//  0x420ecc: ret 
//  0x420ed0: bl #0x61fa28
//  0x420ed4: b #0x420e94
//  0x420ed8: add x9, PP, #0x11, lsl #12
//  0x420edc: ldr x9, [x9, #0x7b0]
//  0x420ee0: bl #0x620258
//
dynamic PartyInvitePageState_changeTab_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x420e80
  BARRIER = mem(THR, 0x38); // 0x420e88
  // frame: FP = SP // 0x420e84
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x420ed0
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x420e9c
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x420e98
  if (w0 == w16) {
    x9 = mem((PP + 0x11000), 0x7b0) /* Field */; // 0x420edc
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x420ee0
  }
  x1 = (x2 >> 1) & 0x7fffffff; // 0x420ea8
  if (x2 & (1 << 0) == 0) {
  } else {
    x1 = mem(x2, 7); // 0x420eb0
  }
  x1 = x0; // 0x420eb8
  x2 = x1; // 0x420eb4
  PageController_jumpToPage() /* 0x3cfd4c */; // 0x420ebc
  SP = FP; // 0x420ec4
  x0 = NULL; // 0x420ec0
  // frame: FP, LR, mem(SP), 0x10 // 0x420ec8
  return;
}

// PartyInvitePageState_anon_closure_5
// raw disassembly:
//  0x420ee4: stp FP, LR, [SP, #-0x10]!
//  0x420ee8: mov FP, SP
//  0x420eec: bl #0x42122c
//  0x420ef0: ldr x1, [FP, #0x10]
//  0x420ef4: stur w1, [x0, #0xb]
//  0x420ef8: mov SP, FP
//  0x420efc: ldp FP, LR, [SP], #0x10
//  0x420f00: ret 
//
dynamic PartyInvitePageState_anon_closure_5() {
  dynamic FP;
  dynamic SP;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x420ee4
  // frame: FP = SP // 0x420ee8
  AllocationStub_Tab() /* 0x42122c */; // 0x420eec
  x1 = local_10; // 0x420ef0
  memSet(x0, 0xb, w1); // 0x420ef4
  SP = FP; // 0x420ef8
  // frame: FP, LR, mem(SP), 0x10 // 0x420efc
  return;
}

// PartyInvitePageState_dispose
// raw disassembly:
//  0x4511a8: stp FP, LR, [SP, #-0x10]!
//  0x4511ac: mov FP, SP
//  0x4511b0: sub SP, SP, #8
//  0x4511b4: mov x0, x1
//  0x4511b8: stur x1, [FP, #-8]
//  0x4511bc: ldr BARRIER, [THR, #0x38]
//  0x4511c0: cmp SP, BARRIER
//  0x4511c4: b.ls #0x451214
//  0x4511c8: ldur w1, [x0, #0x27]
//  0x4511cc: add x1, x1, HEAP, lsl #32
//  0x4511d0: ldr BARRIER, [PP, #0x40]
//  0x4511d4: cmp w1, w16
//  0x4511d8: b.eq #0x45121c
//  0x4511dc: bl #0x45a380
//  0x4511e0: ldur x0, [FP, #-8]
//  0x4511e4: ldur w1, [x0, #0x23]
//  0x4511e8: add x1, x1, HEAP, lsl #32
//  0x4511ec: ldr BARRIER, [PP, #0x40]
//  0x4511f0: cmp w1, w16
//  0x4511f4: b.eq #0x451228
//  0x4511f8: bl #0x45a240
//  0x4511fc: ldur x1, [FP, #-8]
//  0x451200: bl #0x451234
//  0x451204: mov x0, NULL
//  0x451208: mov SP, FP
//  0x45120c: ldp FP, LR, [SP], #0x10
//  0x451210: ret 
//  0x451214: bl #0x61fa28
//  0x451218: b #0x4511c8
//  0x45121c: add x9, PP, #0x11, lsl #12
//  0x451220: ldr x9, [x9, #0x7b0]
//  0x451224: bl #0x620258
//  0x451228: add x9, PP, #0x11, lsl #12
//  0x45122c: ldr x9, [x9, #0x7a8]
//  0x451230: bl #0x620258
//
dynamic PartyInvitePageState_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4511a8
  // frame: FP = SP // 0x4511ac
  // frame: SP = SP - 8 // 0x4511b0
  x0 = x1; // 0x4511b4
  local_m8 = x1; // 0x4511b8
  BARRIER = mem(THR, 0x38); // 0x4511bc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x451214
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4511d0
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4511cc
  if (w1 == w16) {
    x9 = mem((PP + 0x11000), 0x7b0) /* Field */; // 0x451220
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x451224
  } else {
    ScrollController_dispose() /* 0x45a380 */; // 0x4511dc
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4511ec
    w1 = mem((local_m8), 0x23); /* _PartyInvitePageState._tabController (off 0x24) */  // 0x4511e4
    x0 = local_m8; // 0x4511e0
    x1 = ((mem((local_m8), 0x23)) & 0xffffffff) + (HEAP << 32); /* _PartyInvitePageState._tabController (off 0x24) */  // 0x4511e8
    if (w1 != w16) {
      TabController_dispose() /* 0x45a240 */; // 0x4511f8
      x1 = local_m8; // 0x4511fc
      PartyInvitePageState_SoulState_TickerProviderStateMixin_dispose() /* 0x451234 */; // 0x451200
      SP = FP; // 0x451208
      x0 = NULL; // 0x451204
      // frame: FP, LR, mem(SP), 0x10 // 0x45120c
      return;
    }
  }
  x9 = mem((PP + 0x11000), 0x7a8) /* Field */; // 0x45122c
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x451230
}

// PartyInvitePageState_onPageShow
// raw disassembly:
//  0x4a9eb4: stp FP, LR, [SP, #-0x10]!
//  0x4a9eb8: mov FP, SP
//  0x4a9ebc: ldr BARRIER, [THR, #0x38]
//  0x4a9ec0: cmp SP, BARRIER
//  0x4a9ec4: b.ls #0x4a9eec
//  0x4a9ec8: bl #0x4aa6c4
//  0x4a9ecc: add x1, PP, #0x17, lsl #12
//  0x4a9ed0: ldr x1, [x1, #0xc68]
//  0x4a9ed4: ldr x4, [PP, #0x4c0]
//  0x4a9ed8: bl #0x4a9e38
//  0x4a9edc: mov x0, NULL
//  0x4a9ee0: mov SP, FP
//  0x4a9ee4: ldp FP, LR, [SP], #0x10
//  0x4a9ee8: ret 
//  0x4a9eec: bl #0x61fa28
//  0x4a9ef0: b #0x4a9ec8
//
dynamic PartyInvitePageState_onPageShow() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4a9eb4
  BARRIER = mem(THR, 0x38); // 0x4a9ebc
  // frame: FP = SP // 0x4a9eb8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4a9eec
  }
  SoulState_onPageShow() /* 0x4aa6c4 */; // 0x4a9ec8
  x1 = "VirtualParty_InvitePremiumFriendList" /* pp+0x17c68 */; // 0x4a9ed0
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4a9ed4
  EventTrack_eventPv() /* 0x4a9e38 */; // 0x4a9ed8
  SP = FP; // 0x4a9ee0
  x0 = NULL; // 0x4a9edc
  // frame: FP, LR, mem(SP), 0x10 // 0x4a9ee4
  return;
}

// PartyInvitePageState_ctor
// raw disassembly:
//  0x4c3e00: stp FP, LR, [SP, #-0x10]!
//  0x4c3e04: mov FP, SP
//  0x4c3e08: sub SP, SP, #0x30
//  0x4c3e0c: ldr x0, [PP, #0x40]
//  0x4c3e10: mov x2, x1
//  0x4c3e14: stur x1, [FP, #-8]
//  0x4c3e18: ldr BARRIER, [THR, #0x38]
//  0x4c3e1c: cmp SP, BARRIER
//  0x4c3e20: b.ls #0x4c3f38
//  0x4c3e24: stur w0, [x2, #0x23]
//  0x4c3e28: stur w0, [x2, #0x27]
//  0x4c3e2c: stur w0, [x2, #0x2b]
//  0x4c3e30: add x1, PP, #0xb, lsl #12
//  0x4c3e34: ldr x1, [x1, #0x7f8]
//  0x4c3e38: ldr x4, [PP, #0x4c0]
//  0x4c3e3c: bl #0x3a1dcc
//  0x4c3e40: add x1, PP, #0xb, lsl #12
//  0x4c3e44: ldr x1, [x1, #0x800]
//  0x4c3e48: stur x0, [FP, #-0x10]
//  0x4c3e4c: ldr x4, [PP, #0x4c0]
//  0x4c3e50: bl #0x3a1dcc
//  0x4c3e54: add x1, PP, #0xb, lsl #12
//  0x4c3e58: ldr x1, [x1, #0x808]
//  0x4c3e5c: stur x0, [FP, #-0x18]
//  0x4c3e60: ldr x4, [PP, #0x4c0]
//  0x4c3e64: bl #0x3a1dcc
//  0x4c3e68: add x1, PP, #0xb, lsl #12
//  0x4c3e6c: ldr x1, [x1, #0x810]
//  0x4c3e70: stur x0, [FP, #-0x20]
//  0x4c3e74: ldr x4, [PP, #0x4c0]
//  0x4c3e78: bl #0x3a1dcc
//  0x4c3e7c: mov x1, NULL
//  0x4c3e80: mov x2, #8
//  0x4c3e84: stur x0, [FP, #-0x28]
//  0x4c3e88: bl #0x61f920
//  0x4c3e8c: mov x2, x0
//  0x4c3e90: ldur x0, [FP, #-0x10]
//  0x4c3e94: stur x2, [FP, #-0x30]
//  0x4c3e98: stur w0, [x2, #0xf]
//  0x4c3e9c: ldur x0, [FP, #-0x18]
//  0x4c3ea0: stur w0, [x2, #0x13]
//  0x4c3ea4: ldur x0, [FP, #-0x20]
//  0x4c3ea8: stur w0, [x2, #0x17]
//  0x4c3eac: ldur x0, [FP, #-0x28]
//  0x4c3eb0: stur w0, [x2, #0x1b]
//  0x4c3eb4: ldr x1, [PP, #0x868]
//  0x4c3eb8: bl #0x61e854
//  0x4c3ebc: mov x1, x0
//  0x4c3ec0: ldur x0, [FP, #-0x30]
//  0x4c3ec4: stur w0, [x1, #0xf]
//  0x4c3ec8: mov x0, #8
//  0x4c3ecc: stur w0, [x1, #0xb]
//  0x4c3ed0: mov x0, x1
//  0x4c3ed4: ldur x1, [FP, #-8]
//  0x4c3ed8: stur w0, [x1, #0x1b]
//  0x4c3edc: ldurb w16, [x1, #-1]
//  0x4c3ee0: ldurb w17, [x0, #-1]
//  0x4c3ee4: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3ee8: tst BARRIER, HEAP, lsr #32
//  0x4c3eec: b.eq #0x4c3ef4
//  0x4c3ef0: bl #0x61e04c
//  0x4c3ef4: bl #0x4c4140
//  0x4c3ef8: mov x1, x0
//  0x4c3efc: stur x0, [FP, #-0x10]
//  0x4c3f00: bl #0x4c3f40
//  0x4c3f04: ldur x0, [FP, #-0x10]
//  0x4c3f08: ldur x1, [FP, #-8]
//  0x4c3f0c: stur w0, [x1, #0x1f]
//  0x4c3f10: ldurb w16, [x1, #-1]
//  0x4c3f14: ldurb w17, [x0, #-1]
//  0x4c3f18: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3f1c: tst BARRIER, HEAP, lsr #32
//  0x4c3f20: b.eq #0x4c3f28
//  0x4c3f24: bl #0x61e04c
//  0x4c3f28: mov x0, NULL
//  0x4c3f2c: mov SP, FP
//  0x4c3f30: ldp FP, LR, [SP], #0x10
//  0x4c3f34: ret 
//  0x4c3f38: bl #0x61fa28
//  0x4c3f3c: b #0x4c3e24
//
dynamic PartyInvitePageState_ctor() {
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
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c3e00
  // frame: FP = SP // 0x4c3e04
  // frame: SP = SP - 0x30 // 0x4c3e08
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4c3e0c
  x2 = x1; // 0x4c3e10
  local_m8 = x1; // 0x4c3e14
  BARRIER = mem(THR, 0x38); // 0x4c3e18
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c3f38
  }
  memSet(x2, 0x23, w0); // 0x4c3e24
  memSet(x2, 0x27, w0); // 0x4c3e28
  memSet(x2, 0x2b, w0); // 0x4c3e2c
  x1 = "chat_friends" /* pp+0xb7f8 */; // 0x4c3e34
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4c3e38
  getString() /* 0x3a1dcc */; // 0x4c3e3c
  x1 = "chat_following" /* pp+0xb800 */; // 0x4c3e44
  local_m10 = x0; // 0x4c3e48
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4c3e4c
  getString() /* 0x3a1dcc */; // 0x4c3e50
  x1 = "chat_follower" /* pp+0xb808 */; // 0x4c3e58
  local_m18 = x0; // 0x4c3e5c
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4c3e60
  getString() /* 0x3a1dcc */; // 0x4c3e64
  x1 = "recent_chat_string" /* pp+0xb810 */; // 0x4c3e6c
  local_m20 = x0; // 0x4c3e70
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4c3e74
  getString() /* 0x3a1dcc */; // 0x4c3e78
  x1 = NULL; // 0x4c3e7c
  x2 = 8; // 0x4c3e80
  local_m28 = x0; // 0x4c3e84
  sub_0x61f920(); // 0x4c3e88
  x0 = local_m10; // 0x4c3e90
  x2 = x0; // 0x4c3e8c
  local_m30 = x2; // 0x4c3e94
  memSet(x2, 0xf, w0); // 0x4c3e98
  x0 = local_m18; // 0x4c3e9c
  memSet(x2, 0x13, w0); // 0x4c3ea0
  x0 = local_m20; // 0x4c3ea4
  memSet(x2, 0x17, w0); // 0x4c3ea8
  x0 = local_m28; // 0x4c3eac
  memSet(x2, 0x1b, w0); // 0x4c3eb0
  x1 = mem(PP, 0x868) /* TypeArguments */; // 0x4c3eb4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x4c3eb8
  x0 = local_m30; // 0x4c3ec0
  x1 = x0; // 0x4c3ebc
  memSet(x1, 0xf, w0); // 0x4c3ec4
  x0 = 8; // 0x4c3ec8
  memSet(x1, 0xb, w0); // 0x4c3ecc
  x0 = x1; // 0x4c3ed0
  x1 = local_m8; // 0x4c3ed4
  memSet(x1, 0x1b, w0); // 0x4c3ed8
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3ee4
  w16 = mem(x1, -1); // 0x4c3edc
  w17 = mem(x0, -1); // 0x4c3ee0
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c3edc
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3ee0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c3ef0
  }
  AllocationStub_PartyInviteNotifier() /* 0x4c4140 */; // 0x4c3ef4
  x1 = x0; // 0x4c3ef8
  local_m10 = x0; // 0x4c3efc
  PartyInviteNotifier_ctor() /* 0x4c3f40 */; // 0x4c3f00
  x0 = local_m10; // 0x4c3f04
  x1 = local_m8; // 0x4c3f08
  memSet(x1, 0x1f, w0); // 0x4c3f0c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3f18
  w16 = mem(x1, -1); // 0x4c3f10
  w17 = mem(x0, -1); // 0x4c3f14
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c3f10
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3f14
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c3f24
  }
  SP = FP; // 0x4c3f2c
  x0 = NULL; // 0x4c3f28
  // frame: FP, LR, mem(SP), 0x10 // 0x4c3f30
  return;
}

// PartyInvitePageState_initState
// raw disassembly:
//  0x4d41e8: stp FP, LR, [SP, #-0x10]!
//  0x4d41ec: mov FP, SP
//  0x4d41f0: sub SP, SP, #0x18
//  0x4d41f4: mov x3, x1
//  0x4d41f8: stur x1, [FP, #-8]
//  0x4d41fc: ldr BARRIER, [THR, #0x38]
//  0x4d4200: cmp SP, BARRIER
//  0x4d4204: b.ls #0x4d4370
//  0x4d4208: ldur w0, [x3, #0xb]
//  0x4d420c: add x0, x0, HEAP, lsl #32
//  0x4d4210: cmp w0, w22
//  0x4d4214: b.eq #0x4d4378
//  0x4d4218: ldur w1, [x0, #0xb]
//  0x4d421c: add x1, x1, HEAP, lsl #32
//  0x4d4220: cmp w1, w22
//  0x4d4224: b.ne #0x4d4230
//  0x4d4228: mov x0, NULL
//  0x4d422c: b #0x4d424c
//  0x4d4230: ldur x0, [x1, #-1]
//  0x4d4234: ubfx x0, x0, #0xc, #0x14
//  0x4d4238: add x2, PP, #0x10, lsl #12
//  0x4d423c: ldr x2, [x2, #0xd48]
//  0x4d4240: sub LR, x0, #1, lsl #12
//  0x4d4244: ldr LR, [x21, LR, lsl #3]
//  0x4d4248: blr LR
//  0x4d424c: cmp w0, w22
//  0x4d4250: b.ne #0x4d425c
//  0x4d4254: ldr x4, [PP, #0x148]
//  0x4d4258: b #0x4d4260
//  0x4d425c: mov x4, x0
//  0x4d4260: ldur x3, [FP, #-8]
//  0x4d4264: mov x0, x4
//  0x4d4268: stur x4, [FP, #-0x10]
//  0x4d426c: mov x2, NULL
//  0x4d4270: mov x1, NULL
//  0x4d4274: mov x4, #0x3c
//  0x4d4278: tbz w0, #0, #0x4d4284
//  0x4d427c: ldur x4, [x0, #-1]
//  0x4d4280: ubfx x4, x4, #0xc, #0x14
//  0x4d4284: sub x4, x4, #0x5e
//  0x4d4288: cmp x4, #1
//  0x4d428c: b.ls #0x4d42a0
//  0x4d4290: ldr x8, [PP, #0x2f8]
//  0x4d4294: add x3, PP, #0x11, lsl #12
//  0x4d4298: ldr x3, [x3, #0x7b8]
//  0x4d429c: bl #0x62a0c0
//  0x4d42a0: ldur x0, [FP, #-0x10]
//  0x4d42a4: ldur x3, [FP, #-8]
//  0x4d42a8: stur w0, [x3, #0x2b]
//  0x4d42ac: ldurb w16, [x3, #-1]
//  0x4d42b0: ldurb w17, [x0, #-1]
//  0x4d42b4: and BARRIER, x17, BARRIER, lsr #2
//  0x4d42b8: tst BARRIER, HEAP, lsr #32
//  0x4d42bc: b.eq #0x4d42c4
//  0x4d42c0: bl #0x61e08c
//  0x4d42c4: ldur w0, [x3, #0x1b]
//  0x4d42c8: add x0, x0, HEAP, lsl #32
//  0x4d42cc: ldur w1, [x0, #0xb]
//  0x4d42d0: sbfx x2, x1, #1, #0x1f
//  0x4d42d4: stur x2, [FP, #-0x18]
//  0x4d42d8: bl #0x4d44d0
//  0x4d42dc: mov x1, x0
//  0x4d42e0: ldur x2, [FP, #-0x18]
//  0x4d42e4: ldur x3, [FP, #-8]
//  0x4d42e8: stur x0, [FP, #-0x10]
//  0x4d42ec: ldr x4, [PP, #0x2e0]
//  0x4d42f0: bl #0x4d437c
//  0x4d42f4: ldur x0, [FP, #-0x10]
//  0x4d42f8: ldur x1, [FP, #-8]
//  0x4d42fc: stur w0, [x1, #0x23]
//  0x4d4300: ldurb w16, [x1, #-1]
//  0x4d4304: ldurb w17, [x0, #-1]
//  0x4d4308: and BARRIER, x17, BARRIER, lsr #2
//  0x4d430c: tst BARRIER, HEAP, lsr #32
//  0x4d4310: b.eq #0x4d4318
//  0x4d4314: bl #0x61e04c
//  0x4d4318: bl #0x3cff08
//  0x4d431c: stur x0, [FP, #-0x10]
//  0x4d4320: stur xzr, [x0, #0x3f]
//  0x4d4324: add x1, NULL, #0x20
//  0x4d4328: stur w1, [x0, #0x47]
//  0x4d432c: fmov d0, #1.00000000
//  0x4d4330: stur d0, [x0, #0x4b]
//  0x4d4334: mov x1, x0
//  0x4d4338: bl #0x317954
//  0x4d433c: ldur x0, [FP, #-0x10]
//  0x4d4340: ldur x1, [FP, #-8]
//  0x4d4344: stur w0, [x1, #0x27]
//  0x4d4348: ldurb w16, [x1, #-1]
//  0x4d434c: ldurb w17, [x0, #-1]
//  0x4d4350: and BARRIER, x17, BARRIER, lsr #2
//  0x4d4354: tst BARRIER, HEAP, lsr #32
//  0x4d4358: b.eq #0x4d4360
//  0x4d435c: bl #0x61e04c
//  0x4d4360: mov x0, NULL
//  0x4d4364: mov SP, FP
//  0x4d4368: ldp FP, LR, [SP], #0x10
//  0x4d436c: ret 
//  0x4d4370: bl #0x61fa28
//  0x4d4374: b #0x4d4208
//  0x4d4378: bl #0x61ffd0
//
dynamic PartyInvitePageState_initState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
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
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d41e8
  // frame: FP = SP // 0x4d41ec
  // frame: SP = SP - 0x18 // 0x4d41f0
  x3 = x1; // 0x4d41f4
  local_m8 = x1; // 0x4d41f8
  BARRIER = mem(THR, 0x38); // 0x4d41fc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d4370
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d420c
  if (w0 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d4378
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d421c
  if (w1 != w22) {
    LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d4244
    x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4d4234
    x2 = "roomId" /* pp+0x10d48 */; // 0x4d423c
    callIndirect(LR); // 0x4d4248
  } else {
    x0 = NULL; // 0x4d4228
  }
  if (w0 != w22) {
    x4 = x0; // 0x4d425c
  } else {
    x4 = "" /* pp+0x148 */; // 0x4d4254
  }
  x0 = x4; // 0x4d4264
  x3 = local_m8; // 0x4d4260
  local_m10 = x4; // 0x4d4268
  x1 = NULL; // 0x4d4270
  x2 = NULL; // 0x4d426c
  x4 = 60; // 0x4d4274
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d4280
  }
  x4 = x4 - 0x5e; // 0x4d4284
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0x7b8) /* Obj!? */; // 0x4d4298
    x8 = mem(PP, 0x2f8) /* Type */; // 0x4d4290
    sub_0x62a0c0(); // 0x4d429c
  }
  x0 = local_m10; // 0x4d42a0
  x3 = local_m8; // 0x4d42a4
  memSet(x3, 0x2b, w0); // 0x4d42a8
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d42b4
  w16 = mem(x3, -1); // 0x4d42ac
  w17 = mem(x0, -1); // 0x4d42b0
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4d42ac
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d42b0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d42c0
  }
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x4d42cc
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d42c8
  x1 = (mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x4d42cc
  x2 = (((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x4d42d0
  local_m18 = x2; // 0x4d42d4
  AllocationStub_TabController() /* 0x4d44d0 */; // 0x4d42d8
  x1 = x0; // 0x4d42dc
  x2 = local_m18; // 0x4d42e0
  x3 = local_m8; // 0x4d42e4
  local_m10 = x0; // 0x4d42e8
  x4 = mem(PP, 0x2e0) /* ImmutableArray */; // 0x4d42ec
  TabController_ctor() /* 0x4d437c */; // 0x4d42f0
  x0 = local_m10; // 0x4d42f4
  x1 = local_m8; // 0x4d42f8
  memSet(x1, 0x23, w0); // 0x4d42fc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d4308
  w16 = mem(x1, -1); // 0x4d4300
  w17 = mem(x0, -1); // 0x4d4304
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d4300
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d4304
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d4314
  }
  AllocationStub_PageController() /* 0x3cff08 */; // 0x4d4318
  local_m10 = x0; // 0x4d431c
  memSet(x0, 0x3f, xzr); // 0x4d4320
  x1 = NULL + 0x20; // 0x4d4324
  memSet(x0, 0x47, w1); // 0x4d4328
  d0 = 1.00000000 /* bits */; // 0x4d432c
  memSet(x0, 0x4b, d0); // 0x4d4330
  x1 = x0; // 0x4d4334
  ScrollController_ctor() /* 0x317954 */; // 0x4d4338
  x0 = local_m10; // 0x4d433c
  x1 = local_m8; // 0x4d4340
  memSet(x1, 0x27, w0); // 0x4d4344
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d4350
  w16 = mem(x1, -1); // 0x4d4348
  w17 = mem(x0, -1); // 0x4d434c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d4348
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d434c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d435c
  }
  SP = FP; // 0x4d4364
  x0 = NULL; // 0x4d4360
  // frame: FP, LR, mem(SP), 0x10 // 0x4d4368
  return;
}

// InviteUserPageState_build
// raw disassembly:
//  0x421238: stp FP, LR, [SP, #-0x10]!
//  0x42123c: mov FP, SP
//  0x421240: sub SP, SP, #0x68
//  0x421244: stur x1, [FP, #-8]
//  0x421248: stur x2, [FP, #-0x10]
//  0x42124c: ldr BARRIER, [THR, #0x38]
//  0x421250: cmp SP, BARRIER
//  0x421254: b.ls #0x42169c
//  0x421258: mov x1, #3
//  0x42125c: bl #0x61e890
//  0x421260: mov x3, x0
//  0x421264: ldur x0, [FP, #-8]
//  0x421268: stur x3, [FP, #-0x18]
//  0x42126c: stur w0, [x3, #0xf]
//  0x421270: mov x1, x0
//  0x421274: ldur x2, [FP, #-0x10]
//  0x421278: bl #0x422754
//  0x42127c: ldur x2, [FP, #-8]
//  0x421280: ldur w3, [x2, #0xb]
//  0x421284: add x3, x3, HEAP, lsl #32
//  0x421288: cmp w3, w22
//  0x42128c: b.eq #0x4216a4
//  0x421290: ldur x4, [x3, #0xb]
//  0x421294: stur x4, [FP, #-0x20]
//  0x421298: sbfiz x0, x4, #1, #0x1f
//  0x42129c: cmp x4, x0, asr #1
//  0x4212a0: b.eq #0x4212ac
//  0x4212a4: bl #0x61fba8
//  0x4212a8: stur x4, [x0, #7]
//  0x4212ac: ldur x1, [FP, #-0x18]
//  0x4212b0: stur w0, [x1, #0x13]
//  0x4212b4: tbz w0, #0, #0x4212d0
//  0x4212b8: ldurb w16, [x1, #-1]
//  0x4212bc: ldurb w17, [x0, #-1]
//  0x4212c0: and BARRIER, x17, BARRIER, lsr #2
//  0x4212c4: tst BARRIER, HEAP, lsr #32
//  0x4212c8: b.eq #0x4212d0
//  0x4212cc: bl #0x61e04c
//  0x4212d0: ldur w5, [x3, #0x13]
//  0x4212d4: add x5, x5, HEAP, lsl #32
//  0x4212d8: mov x0, x5
//  0x4212dc: stur x5, [FP, #-0x10]
//  0x4212e0: stur w0, [x1, #0x17]
//  0x4212e4: ldurb w16, [x1, #-1]
//  0x4212e8: ldurb w17, [x0, #-1]
//  0x4212ec: and BARRIER, x17, BARRIER, lsr #2
//  0x4212f0: tst BARRIER, HEAP, lsr #32
//  0x4212f4: b.eq #0x4212fc
//  0x4212f8: bl #0x61e04c
//  0x4212fc: bl #0x391a04
//  0x421300: mov x1, x0
//  0x421304: stur x0, [FP, #-0x28]
//  0x421308: ldr x4, [PP, #0x4c0]
//  0x42130c: bl #0x391490
//  0x421310: ldur x3, [FP, #-0x20]
//  0x421314: cbnz x3, #0x421328
//  0x421318: ldur x4, [FP, #-0x10]
//  0x42131c: ldur w0, [x4, #0x43]
//  0x421320: add x0, x0, HEAP, lsl #32
//  0x421324: b #0x421370
//  0x421328: ldur x4, [FP, #-0x10]
//  0x42132c: cmp x3, #1
//  0x421330: b.ne #0x421340
//  0x421334: ldur w0, [x4, #0x47]
//  0x421338: add x0, x0, HEAP, lsl #32
//  0x42133c: b #0x421370
//  0x421340: cmp x3, #2
//  0x421344: b.ne #0x421354
//  0x421348: ldur w0, [x4, #0x4b]
//  0x42134c: add x0, x0, HEAP, lsl #32
//  0x421350: b #0x421370
//  0x421354: cmp x3, #3
//  0x421358: b.ne #0x421368
//  0x42135c: ldur w0, [x4, #0x4f]
//  0x421360: add x0, x0, HEAP, lsl #32
//  0x421364: b #0x421370
//  0x421368: add x0, PP, #0x14, lsl #12
//  0x42136c: ldr x0, [x0, #0xd08]
//  0x421370: ldur x2, [x0, #7]
//  0x421374: cmp x2, #0
//  0x421378: b.gt #0x4213a8
//  0x42137c: bl #0x391c0c
//  0x421380: mov x1, x0
//  0x421384: add x0, PP, #0x10, lsl #12
//  0x421388: ldr x0, [x0, #0xe80]
//  0x42138c: stur x1, [FP, #-0x30]
//  0x421390: stur w0, [x1, #0xf]
//  0x421394: bl #0x3b3c18
//  0x421398: mov x1, x0
//  0x42139c: ldur x0, [FP, #-0x30]
//  0x4213a0: stur w1, [x0, #0xb]
//  0x4213a4: b #0x421650
//  0x4213a8: sbfiz x0, x2, #1, #0x1f
//  0x4213ac: cmp x2, x0, asr #1
//  0x4213b0: b.eq #0x4213bc
//  0x4213b4: bl #0x61fba8
//  0x4213b8: stur x2, [x0, #7]
//  0x4213bc: cmp w0, #2
//  0x4213c0: b.ne #0x42164c
//  0x4213c4: mov x1, x4
//  0x4213c8: mov x2, x3
//  0x4213cc: bl #0x4226b0
//  0x4213d0: ldur w1, [x0, #0xb]
//  0x4213d4: cbnz w1, #0x421584
//  0x4213d8: bl #0x2b8e80
//  0x4213dc: ldr d0, [PP, #0xb90]
//  0x4213e0: stur x0, [FP, #-0x30]
//  0x4213e4: stur d0, [x0, #7]
//  0x4213e8: stur d0, [x0, #0xf]
//  0x4213ec: stur d0, [x0, #0x17]
//  0x4213f0: stur d0, [x0, #0x1f]
//  0x4213f4: bl #0x3a142c
//  0x4213f8: mov x1, x0
//  0x4213fc: add x0, PP, #0x14, lsl #12
//  0x421400: ldr x0, [x0, #0xd10]
//  0x421404: stur x1, [FP, #-0x38]
//  0x421408: stur w0, [x1, #0xb]
//  0x42140c: add x0, PP, #0xe, lsl #12
//  0x421410: ldr x0, [x0, #0xb48]
//  0x421414: stur w0, [x1, #0xf]
//  0x421418: ldr x0, [PP, #0x5458]
//  0x42141c: stur w0, [x1, #0x13]
//  0x421420: add x0, PP, #0x11, lsl #12
//  0x421424: ldr x0, [x0, #0x398]
//  0x421428: stur w0, [x1, #0x1b]
//  0x42142c: bl #0x391c0c
//  0x421430: mov x3, x0
//  0x421434: add x0, PP, #0x14, lsl #12
//  0x421438: ldr x0, [x0, #0xd18]
//  0x42143c: stur x3, [FP, #-0x40]
//  0x421440: stur w0, [x3, #0xf]
//  0x421444: ldur x0, [FP, #-0x38]
//  0x421448: stur w0, [x3, #0xb]
//  0x42144c: ldur x1, [FP, #-0x10]
//  0x421450: ldur x2, [FP, #-0x20]
//  0x421454: bl #0x4225f8
//  0x421458: stur x0, [FP, #-0x38]
//  0x42145c: bl #0x3a6088
//  0x421460: mov x1, x0
//  0x421464: bl #0x3b7e50
//  0x421468: stur x0, [FP, #-0x48]
//  0x42146c: bl #0x393bf8
//  0x421470: mov x1, x0
//  0x421474: ldur x0, [FP, #-0x38]
//  0x421478: stur x1, [FP, #-0x50]
//  0x42147c: stur w0, [x1, #0xb]
//  0x421480: ldur x0, [FP, #-0x48]
//  0x421484: stur w0, [x1, #0x13]
//  0x421488: bl #0x391c0c
//  0x42148c: mov x3, x0
//  0x421490: add x0, PP, #0x11, lsl #12
//  0x421494: ldr x0, [x0, #0xc8]
//  0x421498: stur x3, [FP, #-0x38]
//  0x42149c: stur w0, [x3, #0xf]
//  0x4214a0: ldur x0, [FP, #-0x50]
//  0x4214a4: stur w0, [x3, #0xb]
//  0x4214a8: mov x1, NULL
//  0x4214ac: mov x2, #4
//  0x4214b0: bl #0x61f920
//  0x4214b4: mov x2, x0
//  0x4214b8: ldur x0, [FP, #-0x40]
//  0x4214bc: stur x2, [FP, #-0x48]
//  0x4214c0: stur w0, [x2, #0xf]
//  0x4214c4: ldur x0, [FP, #-0x38]
//  0x4214c8: stur w0, [x2, #0x13]
//  0x4214cc: ldr x1, [PP, #0x5c58]
//  0x4214d0: bl #0x61e854
//  0x4214d4: mov x1, x0
//  0x4214d8: ldur x0, [FP, #-0x48]
//  0x4214dc: stur x1, [FP, #-0x38]
//  0x4214e0: stur w0, [x1, #0xf]
//  0x4214e4: mov x0, #4
//  0x4214e8: stur w0, [x1, #0xb]
//  0x4214ec: bl #0x39310c
//  0x4214f0: mov x1, x0
//  0x4214f4: add x0, PP, #0xa, lsl #12
//  0x4214f8: ldr x0, [x0, #0x858]
//  0x4214fc: stur x1, [FP, #-0x40]
//  0x421500: stur w0, [x1, #0xf]
//  0x421504: add x0, PP, #0xe, lsl #12
//  0x421508: ldr x0, [x0, #0xae0]
//  0x42150c: stur w0, [x1, #0x13]
//  0x421510: add x0, PP, #0xe, lsl #12
//  0x421514: ldr x0, [x0, #0xb08]
//  0x421518: stur w0, [x1, #0x17]
//  0x42151c: add x0, PP, #0xe, lsl #12
//  0x421520: ldr x0, [x0, #0xb60]
//  0x421524: stur w0, [x1, #0x1b]
//  0x421528: add x0, PP, #0xe, lsl #12
//  0x42152c: ldr x0, [x0, #0xaf8]
//  0x421530: stur w0, [x1, #0x23]
//  0x421534: add x0, PP, #0xa, lsl #12
//  0x421538: ldr x0, [x0, #0xa8]
//  0x42153c: stur w0, [x1, #0x2b]
//  0x421540: stur xzr, [x1, #0x2f]
//  0x421544: ldur x0, [FP, #-0x38]
//  0x421548: stur w0, [x1, #0xb]
//  0x42154c: bl #0x391a04
//  0x421550: stur x0, [FP, #-0x38]
//  0x421554: ldur BARRIER, [FP, #-0x30]
//  0x421558: add LR, PP, #0xe, lsl #12
//  0x42155c: ldr LR, [LR, #0xaa0]
//  0x421560: stp LR, BARRIER, [SP, #8]
//  0x421564: ldur BARRIER, [FP, #-0x40]
//  0x421568: str BARRIER, [SP]
//  0x42156c: mov x1, x0
//  0x421570: add x4, PP, #0x14, lsl #12
//  0x421574: ldr x4, [x4, #0xd20]
//  0x421578: bl #0x391490
//  0x42157c: ldur x0, [FP, #-0x38]
//  0x421580: b #0x421650
//  0x421584: ldur x0, [FP, #-8]
//  0x421588: ldur w3, [x0, #0x17]
//  0x42158c: add x3, x3, HEAP, lsl #32
//  0x421590: ldr BARRIER, [PP, #0x40]
//  0x421594: cmp w3, w16
//  0x421598: b.eq #0x4216a8
//  0x42159c: stur x3, [FP, #-0x30]
//  0x4215a0: add x1, PP, #0x14, lsl #12
//  0x4215a4: ldr x1, [x1, #0xd28]
//  0x4215a8: mov x2, NULL
//  0x4215ac: bl #0x61ec54
//  0x4215b0: stur x0, [FP, #-0x38]
//  0x4215b4: bl #0x3ab5b8
//  0x4215b8: mov x4, x0
//  0x4215bc: ldur x0, [FP, #-0x38]
//  0x4215c0: stur x4, [FP, #-0x40]
//  0x4215c4: stur w0, [x4, #0x1b]
//  0x4215c8: add x0, PP, #0xf, lsl #12
//  0x4215cc: ldr x0, [x0, #0x898]
//  0x4215d0: stur w0, [x4, #0xb]
//  0x4215d4: add x17, PP, #0xf, lsl #12
//  0x4215d8: ldr d0, [x17, #0x8a0]
//  0x4215dc: stur d0, [x4, #0xf]
//  0x4215e0: ldur x1, [FP, #-8]
//  0x4215e4: ldur x2, [FP, #-0x20]
//  0x4215e8: ldur x3, [FP, #-0x10]
//  0x4215ec: bl #0x4216b4
//  0x4215f0: stur x0, [FP, #-8]
//  0x4215f4: bl #0x3ab290
//  0x4215f8: mov x3, x0
//  0x4215fc: ldur x0, [FP, #-0x30]
//  0x421600: stur x3, [FP, #-0x10]
//  0x421604: stur w0, [x3, #0x2b]
//  0x421608: ldur x0, [FP, #-8]
//  0x42160c: stur w0, [x3, #0xb]
//  0x421610: ldur x0, [FP, #-0x40]
//  0x421614: stur w0, [x3, #0xf]
//  0x421618: add x0, NULL, #0x30
//  0x42161c: stur w0, [x3, #0x1b]
//  0x421620: add x1, NULL, #0x20
//  0x421624: stur w1, [x3, #0x13]
//  0x421628: stur w0, [x3, #0x17]
//  0x42162c: ldur x2, [FP, #-0x18]
//  0x421630: add x1, PP, #0x14, lsl #12
//  0x421634: ldr x1, [x1, #0xd30]
//  0x421638: bl #0x61ec54
//  0x42163c: mov x1, x0
//  0x421640: ldur x0, [FP, #-0x10]
//  0x421644: stur w1, [x0, #0x23]
//  0x421648: b #0x421650
//  0x42164c: ldur x0, [FP, #-0x28]
//  0x421650: stur x0, [FP, #-8]
//  0x421654: bl #0x3b81fc
//  0x421658: stur x0, [FP, #-0x10]
//  0x42165c: bl #0x391a04
//  0x421660: stur x0, [FP, #-0x18]
//  0x421664: ldur BARRIER, [FP, #-0x10]
//  0x421668: add LR, PP, #0x10, lsl #12
//  0x42166c: ldr LR, [LR, #0xc68]
//  0x421670: stp LR, BARRIER, [SP, #8]
//  0x421674: ldur BARRIER, [FP, #-8]
//  0x421678: str BARRIER, [SP]
//  0x42167c: mov x1, x0
//  0x421680: add x4, PP, #0x14, lsl #12
//  0x421684: ldr x4, [x4, #0xd38]
//  0x421688: bl #0x391490
//  0x42168c: ldur x0, [FP, #-0x18]
//  0x421690: mov SP, FP
//  0x421694: ldp FP, LR, [SP], #0x10
//  0x421698: ret 
//  0x42169c: bl #0x61fa28
//  0x4216a0: b #0x421258
//  0x4216a4: bl #0x61ffd0
//  0x4216a8: add x9, PP, #0x14, lsl #12
//  0x4216ac: ldr x9, [x9, #0xd40]
//  0x4216b0: bl #0x620258
//
dynamic InviteUserPageState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic w0;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w3;
  dynamic w5;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x421238
  // frame: FP = SP // 0x42123c
  // frame: SP = SP - 0x68 // 0x421240
  local_m8 = x1; // 0x421244
  local_m10 = x2; // 0x421248
  BARRIER = mem(THR, 0x38); // 0x42124c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42169c
  }
  x1 = 3; // 0x421258
  sub_0x61e890(); // 0x42125c
  x0 = local_m8; // 0x421264
  x3 = x0; // 0x421260
  local_m18 = x3; // 0x421268
  memSet(x3, 0xf, w0); // 0x42126c
  x1 = x0; // 0x421270
  x2 = local_m10; // 0x421274
  InviteUserPageState_SoulState_AutomaticKeepAliveClientMixin_build() /* 0x422754 */; // 0x421278
  w3 = mem((local_m8), 0xb); // 0x421280
  x2 = local_m8; // 0x42127c
  x3 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x421284
  if (w3 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4216a4
  } else {
    x4 = mem(x3, 0xb); // 0x421290
    local_m20 = x4; // 0x421294
    x0 = ((x4 & 0x7fffffff) << 1) /* signed */; // 0x421298
    if (x4 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x4212a4
      memSet(x0, 7, x4); // 0x4212a8
    }
    x1 = local_m18; // 0x4212ac
    memSet(x1, 0x13, w0); // 0x4212b0
    if (x0 & (1 << 0) == 0) {
    } else {
      BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4212c0
      w17 = mem(x0, -1); // 0x4212bc
      x16 = w16 & 0xffffffff; // 0x4212b8
      x17 = (mem(x0, -1)) & 0xffffffff; // 0x4212bc
      if ((BARRIER & (HEAP >> 32)) == 0) {
      } else {
        WriteBarrierStub_x1() /* 0x61e04c */; // 0x4212cc
      }
    }
    x0 = (w5 & 0xffffffff) + (HEAP << 32); // 0x4212d8
    x5 = (w5 & 0xffffffff) + (HEAP << 32); // 0x4212d4
    local_m10 = x5; // 0x4212dc
    memSet(x1, 0x17, w0); // 0x4212e0
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4212ec
    w16 = mem(x1, -1); // 0x4212e4
    w17 = mem(x0, -1); // 0x4212e8
    x16 = (mem(x1, -1)) & 0xffffffff; // 0x4212e4
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4212e8
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x1() /* 0x61e04c */; // 0x4212f8
    }
    AllocationStub_Container() /* 0x391a04 */; // 0x4212fc
    x1 = x0; // 0x421300
    local_m28 = x0; // 0x421304
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x421308
    Container_ctor() /* 0x391490 */; // 0x42130c
    x3 = local_m20; // 0x421310
    if (x3 != 0) {
      x4 = local_m10; // 0x421328
      if (x3 != 1) {
        if (x3 != 2) {
          if (x3 != 3) {
            x0 = mem((PP + 0x14000), 0xd08) /* Obj!RefreshInviteUserState@12173  */; // 0x42136c
          } else {
            x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x421360
          }
        } else {
          x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x42134c
        }
      } else {
        x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x421338
      }
    } else {
      w0 = mem((local_m10), 0x43); // 0x42131c
      x0 = ((mem((local_m10), 0x43)) & 0xffffffff) + (HEAP << 32); // 0x421320
      x4 = local_m10; // 0x421318
    }
    x2 = mem(x0, 7); // 0x421370
    if (x2 > 0) {
      x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x4213a8
      if (x2 == x0) {
      } else {
        AllocationStub__Mint() /* 0x61fba8 */; // 0x4213b4
        memSet(x0, 7, x2); // 0x4213b8
      }
      if (w0 != 2) {
        x0 = local_m28; // 0x42164c
      } else {
        x1 = x4; // 0x4213c4
        x2 = x3; // 0x4213c8
        PartyInviteNotifier_getItemsWithIndex() /* 0x4226b0 */; // 0x4213cc
        w1 = mem(x0, 0xb); // 0x4213d0
        x1 = (mem(x0, 0xb)) & 0xffffffff; // 0x4213d0
        if (w1 != 0) {
          BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x421590
          w3 = mem((local_m8), 0x17); /* _InviteUserPageState._refreshController (off 0x18) */  // 0x421588
          x0 = local_m8; // 0x421584
          x3 = ((mem((local_m8), 0x17)) & 0xffffffff) + (HEAP << 32); /* _InviteUserPageState._refreshController (off 0x18) */  // 0x42158c
          if (w3 == w16) {
            x9 = mem((PP + 0x14000), 0xd40) /* Field */; // 0x4216ac
            LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4216b0
          }
          local_m30 = x3; // 0x42159c
          x1 = mem((PP + 0x14000), 0xd28) /* Function */; // 0x4215a4
          x2 = NULL; // 0x4215a8
          AllocationStub__Closure() /* 0x61ec54 */; // 0x4215ac
          local_m38 = x0; // 0x4215b0
          AllocationStub_CustomFooter() /* 0x3ab5b8 */; // 0x4215b4
          x0 = local_m38; // 0x4215bc
          x4 = x0; // 0x4215b8
          local_m40 = x4; // 0x4215c0
          memSet(x4, 0x1b, w0); // 0x4215c4
          x0 = mem((PP + 0xf000), 0x898) /* Obj!LoadStyle@12174  */; // 0x4215cc
          memSet(x4, 0xb, w0); // 0x4215d0
          d0 = 4631248529308778496; // 0x4215d8
          x17 = PP + 0xf000; // 0x4215d4
          memSet(x4, 0xf, d0); // 0x4215dc
          x1 = local_m8; // 0x4215e0
          x2 = local_m20; // 0x4215e4
          x3 = local_m10; // 0x4215e8
          InviteUserPageState_buildListView() /* 0x4216b4 */; // 0x4215ec
          local_m8 = x0; // 0x4215f0
          AllocationStub_SmartRefresher() /* 0x3ab290 */; // 0x4215f4
          x0 = local_m30; // 0x4215fc
          x3 = x0; // 0x4215f8
          local_m10 = x3; // 0x421600
          memSet(x3, 0x2b, w0); // 0x421604
          x0 = local_m8; // 0x421608
          memSet(x3, 0xb, w0); // 0x42160c
          x0 = local_m40; // 0x421610
          memSet(x3, 0xf, w0); // 0x421614
          x0 = NULL + 0x30; // 0x421618
          memSet(x3, 0x1b, w0); // 0x42161c
          x1 = NULL + 0x20; // 0x421620
          memSet(x3, 0x13, w1); // 0x421624
          memSet(x3, 0x17, w0); // 0x421628
          x1 = mem((PP + 0x14000), 0xd30) /* Function */; // 0x421634
          x2 = local_m18; // 0x42162c
          AllocationStub__Closure() /* 0x61ec54 */; // 0x421638
          x0 = local_m10; // 0x421640
          x1 = x0; // 0x42163c
          memSet(x0, 0x23, w1); // 0x421644
        } else {
          AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x4213d8
          d0 = 9218868437227405312; // 0x4213dc
          local_m30 = x0; // 0x4213e0
          memSet(x0, 7, d0); // 0x4213e4
          memSet(x0, 0xf, d0); // 0x4213e8
          memSet(x0, 0x17, d0); // 0x4213ec
          memSet(x0, 0x1f, d0); // 0x4213f0
          AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x4213f4
          x0 = "assets/images/3.0x/party_icon_empty_chat_user.webp" /* pp+0x14d10 */; // 0x421400
          x1 = x0; // 0x4213f8
          local_m38 = x1; // 0x421404
          memSet(x1, 0xb, w0); // 0x421408
          x0 = mem((PP + 0xe000), 0xb48) /* Obj!ImageType@1215f  */; // 0x421410
          memSet(x1, 0xf, w0); // 0x421414
          x0 = mem(PP, 0x5458) /* Double */; // 0x421418
          memSet(x1, 0x13, w0); // 0x42141c
          x0 = mem((PP + 0x11000), 0x398) /* Obj!BoxFit@12283  */; // 0x421424
          memSet(x1, 0x1b, w0); // 0x421428
          AllocationStub_Padding() /* 0x391c0c */; // 0x42142c
          x0 = mem((PP + 0x14000), 0xd18) /* Obj!EdgeInsets@11ba9  */; // 0x421438
          x3 = x0; // 0x421430
          local_m40 = x3; // 0x42143c
          memSet(x3, 0xf, w0); // 0x421440
          x0 = local_m38; // 0x421444
          memSet(x3, 0xb, w0); // 0x421448
          x1 = local_m10; // 0x42144c
          x2 = local_m20; // 0x421450
          PartyInviteNotifier_getEmptyTipsWithIndex() /* 0x4225f8 */; // 0x421454
          local_m38 = x0; // 0x421458
          SOColors_get_s_05() /* 0x3a6088 */; // 0x42145c
          x1 = x0; // 0x421460
          TextStyles_commonContent() /* 0x3b7e50 */; // 0x421464
          local_m48 = x0; // 0x421468
          AllocationStub_Text() /* 0x393bf8 */; // 0x42146c
          x0 = local_m38; // 0x421474
          x1 = x0; // 0x421470
          local_m50 = x1; // 0x421478
          memSet(x1, 0xb, w0); // 0x42147c
          x0 = local_m48; // 0x421480
          memSet(x1, 0x13, w0); // 0x421484
          AllocationStub_Padding() /* 0x391c0c */; // 0x421488
          x0 = mem((PP + 0x11000), 0xc8) /* Obj!EdgeInsets@11baa  */; // 0x421494
          x3 = x0; // 0x42148c
          local_m38 = x3; // 0x421498
          memSet(x3, 0xf, w0); // 0x42149c
          x0 = local_m50; // 0x4214a0
          memSet(x3, 0xb, w0); // 0x4214a4
          x1 = NULL; // 0x4214a8
          x2 = 4; // 0x4214ac
          sub_0x61f920(); // 0x4214b0
          x0 = local_m40; // 0x4214b8
          x2 = x0; // 0x4214b4
          local_m48 = x2; // 0x4214bc
          memSet(x2, 0xf, w0); // 0x4214c0
          x0 = local_m38; // 0x4214c4
          memSet(x2, 0x13, w0); // 0x4214c8
          x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x4214cc
          AllocationStub__GrowableList() /* 0x61e854 */; // 0x4214d0
          x0 = local_m48; // 0x4214d8
          x1 = x0; // 0x4214d4
          local_m38 = x1; // 0x4214dc
          memSet(x1, 0xf, w0); // 0x4214e0
          x0 = 4; // 0x4214e4
          memSet(x1, 0xb, w0); // 0x4214e8
          AllocationStub_Column() /* 0x39310c */; // 0x4214ec
          x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x4214f8
          x1 = x0; // 0x4214f0
          local_m40 = x1; // 0x4214fc
          memSet(x1, 0xf, w0); // 0x421500
          x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x421508
          memSet(x1, 0x13, w0); // 0x42150c
          x0 = mem((PP + 0xe000), 0xb08) /* Obj!MainAxisSize@12270  */; // 0x421514
          memSet(x1, 0x17, w0); // 0x421518
          x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x421520
          memSet(x1, 0x1b, w0); // 0x421524
          x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x42152c
          memSet(x1, 0x23, w0); // 0x421530
          x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x421538
          memSet(x1, 0x2b, w0); // 0x42153c
          memSet(x1, 0x2f, xzr); // 0x421540
          x0 = local_m38; // 0x421544
          memSet(x1, 0xb, w0); // 0x421548
          AllocationStub_Container() /* 0x391a04 */; // 0x42154c
          local_m38 = x0; // 0x421550
          BARRIER = local_m30; // 0x421554
          LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x42155c
          // frame: LR, BARRIER, mem(SP, 8) // 0x421560
          BARRIER = local_m40; // 0x421564
          local_0 = BARRIER; // 0x421568
          x1 = x0; // 0x42156c
          x4 = mem((PP + 0x14000), 0xd20) /* ImmutableArray */; // 0x421574
          Container_ctor() /* 0x391490 */; // 0x421578
          x0 = local_m38; // 0x42157c
        }
      }
    } else {
      AllocationStub_Padding() /* 0x391c0c */; // 0x42137c
      x0 = mem((PP + 0x10000), 0xe80) /* Obj!EdgeInsets@11bab  */; // 0x421388
      x1 = x0; // 0x421380
      local_m30 = x1; // 0x42138c
      memSet(x1, 0xf, w0); // 0x421390
      AllocationStub_PetalLoading() /* 0x3b3c18 */; // 0x421394
      x0 = local_m30; // 0x42139c
      x1 = x0; // 0x421398
      memSet(x0, 0xb, w1); // 0x4213a0
    }
    local_m8 = x0; // 0x421650
    SOColors_get_s_01() /* 0x3b81fc */; // 0x421654
    local_m10 = x0; // 0x421658
    AllocationStub_Container() /* 0x391a04 */; // 0x42165c
    local_m18 = x0; // 0x421660
    BARRIER = local_m10; // 0x421664
    LR = mem((PP + 0x10000), 0xc68) /* Obj!Alignment@11bdd  */; // 0x42166c
    // frame: LR, BARRIER, mem(SP, 8) // 0x421670
    BARRIER = local_m8; // 0x421674
    local_0 = BARRIER; // 0x421678
    x1 = x0; // 0x42167c
    x4 = mem((PP + 0x14000), 0xd38) /* ImmutableArray */; // 0x421684
    Container_ctor() /* 0x391490 */; // 0x421688
    SP = FP; // 0x421690
    x0 = local_m18; // 0x42168c
    // frame: FP, LR, mem(SP), 0x10 // 0x421694
    return;
  }
}

// InviteUserPageState_buildListView
// raw disassembly:
//  0x4216b4: stp FP, LR, [SP, #-0x10]!
//  0x4216b8: mov FP, SP
//  0x4216bc: sub SP, SP, #0x28
//  0x4216c0: stur x2, [FP, #-0x10]
//  0x4216c4: mov BARRIER, x3
//  0x4216c8: mov x3, x2
//  0x4216cc: mov x2, BARRIER
//  0x4216d0: stur x2, [FP, #-0x18]
//  0x4216d4: ldr BARRIER, [THR, #0x38]
//  0x4216d8: cmp SP, BARRIER
//  0x4216dc: b.ls #0x4217a4
//  0x4216e0: sbfiz x0, x3, #1, #0x1f
//  0x4216e4: cmp x3, x0, asr #1
//  0x4216e8: b.eq #0x4216f4
//  0x4216ec: bl #0x61fba8
//  0x4216f0: stur x3, [x0, #7]
//  0x4216f4: stur x0, [FP, #-8]
//  0x4216f8: mov x1, #3
//  0x4216fc: bl #0x61e890
//  0x421700: mov x3, x0
//  0x421704: ldur x0, [FP, #-8]
//  0x421708: stur x3, [FP, #-0x20]
//  0x42170c: stur w0, [x3, #0xf]
//  0x421710: ldur x1, [FP, #-0x18]
//  0x421714: stur w1, [x3, #0x13]
//  0x421718: ldur x2, [FP, #-0x10]
//  0x42171c: bl #0x4226b0
//  0x421720: mov x1, x0
//  0x421724: ldur x2, [FP, #-0x20]
//  0x421728: stur w0, [x2, #0x17]
//  0x42172c: ldurb w16, [x2, #-1]
//  0x421730: ldurb w17, [x0, #-1]
//  0x421734: and BARRIER, x17, BARRIER, lsr #2
//  0x421738: tst BARRIER, HEAP, lsr #32
//  0x42173c: b.eq #0x421744
//  0x421740: bl #0x61e06c
//  0x421744: ldur w0, [x1, #0xb]
//  0x421748: sbfx x3, x0, #1, #0x1f
//  0x42174c: stur x3, [FP, #-0x10]
//  0x421750: bl #0x419a30
//  0x421754: ldur x2, [FP, #-0x20]
//  0x421758: add x1, PP, #0x14, lsl #12
//  0x42175c: ldr x1, [x1, #0xf08]
//  0x421760: stur x0, [FP, #-8]
//  0x421764: bl #0x61ec54
//  0x421768: stur x0, [FP, #-0x18]
//  0x42176c: bl #0x3ab5ac
//  0x421770: stur x0, [FP, #-0x20]
//  0x421774: ldur BARRIER, [FP, #-8]
//  0x421778: str BARRIER, [SP]
//  0x42177c: mov x1, x0
//  0x421780: ldur x2, [FP, #-0x18]
//  0x421784: ldur x3, [FP, #-0x10]
//  0x421788: add x4, PP, #0x14, lsl #12
//  0x42178c: ldr x4, [x4, #0xf10]
//  0x421790: bl #0x3ab2bc
//  0x421794: ldur x0, [FP, #-0x20]
//  0x421798: mov SP, FP
//  0x42179c: ldp FP, LR, [SP], #0x10
//  0x4217a0: ret 
//  0x4217a4: bl #0x61fa28
//  0x4217a8: b #0x4216e0
//
dynamic InviteUserPageState_buildListView() {
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
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4216b4
  // frame: FP = SP // 0x4216b8
  // frame: SP = SP - 0x28 // 0x4216bc
  local_m10 = x2; // 0x4216c0
  BARRIER = x3; // 0x4216c4
  x2 = x3; // 0x4216cc
  x3 = x2; // 0x4216c8
  local_m18 = x2; // 0x4216d0
  BARRIER = mem(THR, 0x38); // 0x4216d4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4217a4
  }
  x0 = ((x3 & 0x7fffffff) << 1) /* signed */; // 0x4216e0
  if (x3 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x4216ec
    memSet(x0, 7, x3); // 0x4216f0
  }
  local_m8 = x0; // 0x4216f4
  x1 = 3; // 0x4216f8
  sub_0x61e890(); // 0x4216fc
  x0 = local_m8; // 0x421704
  x3 = x0; // 0x421700
  local_m20 = x3; // 0x421708
  memSet(x3, 0xf, w0); // 0x42170c
  x1 = local_m18; // 0x421710
  memSet(x3, 0x13, w1); // 0x421714
  x2 = local_m10; // 0x421718
  PartyInviteNotifier_getItemsWithIndex() /* 0x4226b0 */; // 0x42171c
  x1 = x0; // 0x421720
  x2 = local_m20; // 0x421724
  memSet(x2, 0x17, w0); // 0x421728
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x421734
  w16 = mem(x2, -1); // 0x42172c
  w17 = mem(x0, -1); // 0x421730
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x42172c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x421730
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x421740
  }
  x0 = w0 & 0xffffffff; // 0x421744
  x3 = ((w0 & 0xffffffff) >> 1) & 0x7fffffff; // 0x421748
  local_m10 = x3; // 0x42174c
  AllocationStub_AlwaysScrollableScrollPhysics() /* 0x419a30 */; // 0x421750
  x1 = mem((PP + 0x14000), 0xf08) /* Function */; // 0x42175c
  x2 = local_m20; // 0x421754
  local_m8 = x0; // 0x421760
  AllocationStub__Closure() /* 0x61ec54 */; // 0x421764
  local_m18 = x0; // 0x421768
  AllocationStub_ListView() /* 0x3ab5ac */; // 0x42176c
  local_m20 = x0; // 0x421770
  BARRIER = local_m8; // 0x421774
  local_0 = BARRIER; // 0x421778
  x1 = x0; // 0x42177c
  x2 = local_m18; // 0x421780
  x3 = local_m10; // 0x421784
  x4 = mem((PP + 0x14000), 0xf10) /* ImmutableArray */; // 0x42178c
  ListView_ctor_builder() /* 0x3ab2bc */; // 0x421790
  SP = FP; // 0x421798
  x0 = local_m20; // 0x421794
  // frame: FP, LR, mem(SP), 0x10 // 0x42179c
  return;
}

// InviteUserPageState_anon_closure
// raw disassembly:
//  0x4217ac: stp FP, LR, [SP, #-0x10]!
//  0x4217b0: mov FP, SP
//  0x4217b4: sub SP, SP, #0x90
//  0x4217b8: ldr x0, [FP, #0x20]
//  0x4217bc: ldur w1, [x0, #0x17]
//  0x4217c0: add x1, x1, HEAP, lsl #32
//  0x4217c4: stur x1, [FP, #-8]
//  0x4217c8: ldr BARRIER, [THR, #0x38]
//  0x4217cc: cmp SP, BARRIER
//  0x4217d0: b.ls #0x421ec4
//  0x4217d4: mov x1, #1
//  0x4217d8: bl #0x61e890
//  0x4217dc: mov x5, x0
//  0x4217e0: ldur x4, [FP, #-8]
//  0x4217e4: stur x5, [FP, #-0x18]
//  0x4217e8: stur w4, [x5, #0xb]
//  0x4217ec: ldur w2, [x4, #0x17]
//  0x4217f0: add x2, x2, HEAP, lsl #32
//  0x4217f4: ldur w0, [x2, #0xb]
//  0x4217f8: ldr x1, [FP, #0x10]
//  0x4217fc: sbfx x3, x1, #1, #0x1f
//  0x421800: tbz w1, #0, #0x421808
//  0x421804: ldur x3, [x1, #7]
//  0x421808: sbfx x1, x0, #1, #0x1f
//  0x42180c: mov x0, x1
//  0x421810: mov x1, x3
//  0x421814: cmp x1, x0
//  0x421818: b.hs #0x421ecc
//  0x42181c: ldur w0, [x2, #0xf]
//  0x421820: add x0, x0, HEAP, lsl #32
//  0x421824: add BARRIER, x0, x3, lsl #2
//  0x421828: ldur w6, [BARRIER, #0xf]
//  0x42182c: add x6, x6, HEAP, lsl #32
//  0x421830: stur x6, [FP, #-0x10]
//  0x421834: stur w6, [x5, #0xf]
//  0x421838: ldur w1, [x4, #0x13]
//  0x42183c: add x1, x1, HEAP, lsl #32
//  0x421840: ldur w0, [x4, #0xf]
//  0x421844: add x0, x0, HEAP, lsl #32
//  0x421848: sbfx x2, x0, #1, #0x1f
//  0x42184c: tbz w0, #0, #0x421854
//  0x421850: ldur x2, [x0, #7]
//  0x421854: mov x3, x6
//  0x421858: bl #0x422010
//  0x42185c: mov x4, x0
//  0x421860: ldur x0, [FP, #-8]
//  0x421864: stur x4, [FP, #-0x20]
//  0x421868: ldur w1, [x0, #0x13]
//  0x42186c: add x1, x1, HEAP, lsl #32
//  0x421870: ldur w2, [x0, #0xf]
//  0x421874: add x2, x2, HEAP, lsl #32
//  0x421878: sbfx x0, x2, #1, #0x1f
//  0x42187c: tbz w2, #0, #0x421884
//  0x421880: ldur x0, [x2, #7]
//  0x421884: mov x2, x0
//  0x421888: ldur x3, [FP, #-0x10]
//  0x42188c: bl #0x421f74
//  0x421890: stur x0, [FP, #-8]
//  0x421894: bl #0x3b81fc
//  0x421898: mov x1, x0
//  0x42189c: ldur x0, [FP, #-0x10]
//  0x4218a0: stur x1, [FP, #-0x38]
//  0x4218a4: ldur w2, [x0, #7]
//  0x4218a8: add x2, x2, HEAP, lsl #32
//  0x4218ac: ldr BARRIER, [PP, #0x40]
//  0x4218b0: cmp w2, w16
//  0x4218b4: b.eq #0x421ed0
//  0x4218b8: ldur w3, [x2, #7]
//  0x4218bc: add x3, x3, HEAP, lsl #32
//  0x4218c0: ldr BARRIER, [PP, #0x40]
//  0x4218c4: cmp w3, w16
//  0x4218c8: b.eq #0x421edc
//  0x4218cc: ldur w2, [x3, #0xf]
//  0x4218d0: add x2, x2, HEAP, lsl #32
//  0x4218d4: ldr BARRIER, [PP, #0x40]
//  0x4218d8: cmp w2, w16
//  0x4218dc: b.eq #0x421ee8
//  0x4218e0: stur x2, [FP, #-0x30]
//  0x4218e4: ldur w4, [x3, #0x13]
//  0x4218e8: add x4, x4, HEAP, lsl #32
//  0x4218ec: ldr BARRIER, [PP, #0x40]
//  0x4218f0: cmp w4, w16
//  0x4218f4: b.eq #0x421ef4
//  0x4218f8: stur x4, [FP, #-0x28]
//  0x4218fc: bl #0x3a67fc
//  0x421900: mov x1, x0
//  0x421904: ldur x0, [FP, #-0x30]
//  0x421908: stur x1, [FP, #-0x40]
//  0x42190c: stur w0, [x1, #0xb]
//  0x421910: ldur x0, [FP, #-0x28]
//  0x421914: stur w0, [x1, #0xf]
//  0x421918: add x17, PP, #0x11, lsl #12
//  0x42191c: ldr d0, [x17, #0x880]
//  0x421920: stur d0, [x1, #0x13]
//  0x421924: add x0, NULL, #0x20
//  0x421928: stur w0, [x1, #0x1b]
//  0x42192c: bl #0x391c0c
//  0x421930: mov x2, x0
//  0x421934: add x0, PP, #0x14, lsl #12
//  0x421938: ldr x0, [x0, #0xc48]
//  0x42193c: stur x2, [FP, #-0x28]
//  0x421940: stur w0, [x2, #0xf]
//  0x421944: ldur x0, [FP, #-0x40]
//  0x421948: stur w0, [x2, #0xb]
//  0x42194c: ldr x1, [FP, #0x18]
//  0x421950: ldr x4, [PP, #0x4c0]
//  0x421954: bl #0x30aef0
//  0x421958: ldur w1, [x0, #7]
//  0x42195c: add x1, x1, HEAP, lsl #32
//  0x421960: ldur d0, [x1, #7]
//  0x421964: add x17, PP, #0x14, lsl #12
//  0x421968: ldr d1, [x17, #0xf18]
//  0x42196c: fsub d2, d0, d1
//  0x421970: stur d2, [FP, #-0x60]
//  0x421974: bl #0x2b8e80
//  0x421978: stur x0, [FP, #-0x40]
//  0x42197c: stur xzr, [x0, #7]
//  0x421980: ldur d0, [FP, #-0x60]
//  0x421984: stur d0, [x0, #0xf]
//  0x421988: fmov d0, #19.00000000
//  0x42198c: stur d0, [x0, #0x17]
//  0x421990: ldr d0, [PP, #0xb90]
//  0x421994: stur d0, [x0, #0x1f]
//  0x421998: ldur x1, [FP, #-0x10]
//  0x42199c: ldur w2, [x1, #7]
//  0x4219a0: add x2, x2, HEAP, lsl #32
//  0x4219a4: ldur w3, [x2, #7]
//  0x4219a8: add x3, x3, HEAP, lsl #32
//  0x4219ac: ldr BARRIER, [PP, #0x40]
//  0x4219b0: cmp w3, w16
//  0x4219b4: b.eq #0x421f00
//  0x4219b8: ldur w2, [x3, #0xb]
//  0x4219bc: add x2, x2, HEAP, lsl #32
//  0x4219c0: ldr BARRIER, [PP, #0x40]
//  0x4219c4: cmp w2, w16
//  0x4219c8: b.eq #0x421f0c
//  0x4219cc: stur x2, [FP, #-0x30]
//  0x4219d0: bl #0x3b348c
//  0x4219d4: mov x1, x0
//  0x4219d8: bl #0x3b47a8
//  0x4219dc: stur x0, [FP, #-0x48]
//  0x4219e0: bl #0x393bf8
//  0x4219e4: mov x1, x0
//  0x4219e8: ldur x0, [FP, #-0x30]
//  0x4219ec: stur x1, [FP, #-0x50]
//  0x4219f0: stur w0, [x1, #0xb]
//  0x4219f4: ldur x0, [FP, #-0x48]
//  0x4219f8: stur w0, [x1, #0x13]
//  0x4219fc: add x0, PP, #0xf, lsl #12
//  0x421a00: ldr x0, [x0, #0x230]
//  0x421a04: stur w0, [x1, #0x2b]
//  0x421a08: mov x0, #2
//  0x421a0c: stur w0, [x1, #0x37]
//  0x421a10: bl #0x39646c
//  0x421a14: mov x1, x0
//  0x421a18: ldur x0, [FP, #-0x40]
//  0x421a1c: stur x1, [FP, #-0x48]
//  0x421a20: stur w0, [x1, #0xf]
//  0x421a24: ldur x0, [FP, #-0x50]
//  0x421a28: stur w0, [x1, #0xb]
//  0x421a2c: ldur x0, [FP, #-0x20]
//  0x421a30: ldur w2, [x0, #7]
//  0x421a34: cbnz w2, #0x421a40
//  0x421a38: add x3, NULL, #0x30
//  0x421a3c: b #0x421a44
//  0x421a40: add x3, NULL, #0x20
//  0x421a44: stur x3, [FP, #-0x30]
//  0x421a48: bl #0x352b04
//  0x421a4c: fmov d0, #8.00000000
//  0x421a50: stur x0, [FP, #-0x40]
//  0x421a54: stur d0, [x0, #7]
//  0x421a58: stur d0, [x0, #0xf]
//  0x421a5c: bl #0x392f28
//  0x421a60: mov x1, x0
//  0x421a64: ldur x0, [FP, #-0x40]
//  0x421a68: stur x1, [FP, #-0x50]
//  0x421a6c: stur w0, [x1, #7]
//  0x421a70: stur w0, [x1, #0xb]
//  0x421a74: stur w0, [x1, #0xf]
//  0x421a78: stur w0, [x1, #0x13]
//  0x421a7c: ldur x0, [FP, #-8]
//  0x421a80: tbnz w0, #4, #0x421a90
//  0x421a84: bl #0x3b1380
//  0x421a88: mov x2, x0
//  0x421a8c: b #0x421a98
//  0x421a90: bl #0x3a6088
//  0x421a94: mov x2, x0
//  0x421a98: ldur x3, [FP, #-8]
//  0x421a9c: ldur x0, [FP, #-0x50]
//  0x421aa0: ldr BARRIER, [PP, #0x53b0]
//  0x421aa4: str BARRIER, [SP]
//  0x421aa8: mov x1, NULL
//  0x421aac: add x4, PP, #0xf, lsl #12
//  0x421ab0: ldr x4, [x4, #0x818]
//  0x421ab4: bl #0x391e08
//  0x421ab8: stur x0, [FP, #-0x40]
//  0x421abc: bl #0x391dd8
//  0x421ac0: mov x1, x0
//  0x421ac4: ldur x0, [FP, #-0x40]
//  0x421ac8: stur x1, [FP, #-0x58]
//  0x421acc: stur w0, [x1, #0xf]
//  0x421ad0: ldur x0, [FP, #-0x50]
//  0x421ad4: stur w0, [x1, #0x13]
//  0x421ad8: add x0, PP, #0xe, lsl #12
//  0x421adc: ldr x0, [x0, #0xb78]
//  0x421ae0: stur w0, [x1, #0x23]
//  0x421ae4: ldur x0, [FP, #-8]
//  0x421ae8: tbnz w0, #4, #0x421af8
//  0x421aec: bl #0x3b1380
//  0x421af0: mov x1, x0
//  0x421af4: b #0x421b00
//  0x421af8: bl #0x3a6088
//  0x421afc: mov x1, x0
//  0x421b00: ldur x0, [FP, #-0x20]
//  0x421b04: ldur x2, [FP, #-0x30]
//  0x421b08: ldur x3, [FP, #-0x10]
//  0x421b0c: bl #0x421f30
//  0x421b10: stur x0, [FP, #-8]
//  0x421b14: bl #0x393bf8
//  0x421b18: mov x1, x0
//  0x421b1c: ldur x0, [FP, #-0x20]
//  0x421b20: stur x1, [FP, #-0x40]
//  0x421b24: stur w0, [x1, #0xb]
//  0x421b28: ldur x0, [FP, #-8]
//  0x421b2c: stur w0, [x1, #0x13]
//  0x421b30: bl #0x391a04
//  0x421b34: stur x0, [FP, #-8]
//  0x421b38: add BARRIER, PP, #0xe, lsl #12
//  0x421b3c: ldr BARRIER, [BARRIER, #0xb50]
//  0x421b40: add LR, PP, #0xe, lsl #12
//  0x421b44: ldr LR, [LR, #0xaa0]
//  0x421b48: stp LR, BARRIER, [SP, #0x20]
//  0x421b4c: ldur BARRIER, [FP, #-0x58]
//  0x421b50: add LR, PP, #0x14, lsl #12
//  0x421b54: ldr LR, [LR, #0xf20]
//  0x421b58: stp LR, BARRIER, [SP, #0x10]
//  0x421b5c: add BARRIER, PP, #0x11, lsl #12
//  0x421b60: ldr BARRIER, [BARRIER, #0x790]
//  0x421b64: ldur LR, [FP, #-0x40]
//  0x421b68: stp LR, BARRIER, [SP]
//  0x421b6c: mov x1, x0
//  0x421b70: add x4, PP, #0x14, lsl #12
//  0x421b74: ldr x4, [x4, #0xf28]
//  0x421b78: bl #0x391490
//  0x421b7c: bl #0x41dfa8
//  0x421b80: mov x1, x0
//  0x421b84: ldur x0, [FP, #-8]
//  0x421b88: stur x1, [FP, #-0x20]
//  0x421b8c: stur w0, [x1, #0xb]
//  0x421b90: ldr x0, [PP, #0x56b8]
//  0x421b94: stur w0, [x1, #0xf]
//  0x421b98: ldur x0, [FP, #-0x30]
//  0x421b9c: stur w0, [x1, #0x13]
//  0x421ba0: add x0, NULL, #0x20
//  0x421ba4: stur w0, [x1, #0x17]
//  0x421ba8: stur w0, [x1, #0x1b]
//  0x421bac: stur w0, [x1, #0x1f]
//  0x421bb0: add x0, NULL, #0x30
//  0x421bb4: stur w0, [x1, #0x23]
//  0x421bb8: stur w0, [x1, #0x27]
//  0x421bbc: bl #0x421f24
//  0x421bc0: mov x1, x0
//  0x421bc4: mov x0, #1
//  0x421bc8: stur x1, [FP, #-8]
//  0x421bcc: stur x0, [x1, #0xb]
//  0x421bd0: ldur x2, [FP, #-0x10]
//  0x421bd4: ldur w3, [x2, #0xb]
//  0x421bd8: add x3, x3, HEAP, lsl #32
//  0x421bdc: ldr BARRIER, [PP, #0x40]
//  0x421be0: cmp w3, w16
//  0x421be4: b.eq #0x421f18
//  0x421be8: tbnz w3, #4, #0x421c24
//  0x421bec: bl #0x3a142c
//  0x421bf0: mov x1, x0
//  0x421bf4: add x0, PP, #0x14, lsl #12
//  0x421bf8: ldr x0, [x0, #0xf30]
//  0x421bfc: stur w0, [x1, #0xb]
//  0x421c00: add x0, PP, #0xe, lsl #12
//  0x421c04: ldr x0, [x0, #0xb48]
//  0x421c08: stur w0, [x1, #0xf]
//  0x421c0c: add x2, PP, #0xf, lsl #12
//  0x421c10: ldr x2, [x2, #0x250]
//  0x421c14: stur w2, [x1, #0x13]
//  0x421c18: stur w2, [x1, #0x17]
//  0x421c1c: mov x4, x1
//  0x421c20: b #0x421c68
//  0x421c24: add x2, PP, #0xf, lsl #12
//  0x421c28: ldr x2, [x2, #0x250]
//  0x421c2c: add x0, PP, #0xe, lsl #12
//  0x421c30: ldr x0, [x0, #0xb48]
//  0x421c34: bl #0x3a142c
//  0x421c38: mov x1, x0
//  0x421c3c: add x0, PP, #0x14, lsl #12
//  0x421c40: ldr x0, [x0, #0xf38]
//  0x421c44: stur w0, [x1, #0xb]
//  0x421c48: add x0, PP, #0xe, lsl #12
//  0x421c4c: ldr x0, [x0, #0xb48]
//  0x421c50: stur w0, [x1, #0xf]
//  0x421c54: add x0, PP, #0xf, lsl #12
//  0x421c58: ldr x0, [x0, #0x250]
//  0x421c5c: stur w0, [x1, #0x13]
//  0x421c60: stur w0, [x1, #0x17]
//  0x421c64: mov x4, x1
//  0x421c68: ldur x3, [FP, #-0x28]
//  0x421c6c: ldur x2, [FP, #-0x48]
//  0x421c70: ldur x1, [FP, #-0x20]
//  0x421c74: ldur x0, [FP, #-8]
//  0x421c78: stur x4, [FP, #-0x10]
//  0x421c7c: bl #0x391c0c
//  0x421c80: mov x3, x0
//  0x421c84: add x0, PP, #0x14, lsl #12
//  0x421c88: ldr x0, [x0, #0xf40]
//  0x421c8c: stur x3, [FP, #-0x30]
//  0x421c90: stur w0, [x3, #0xf]
//  0x421c94: ldur x0, [FP, #-0x10]
//  0x421c98: stur w0, [x3, #0xb]
//  0x421c9c: mov x1, NULL
//  0x421ca0: mov x2, #0xa
//  0x421ca4: bl #0x61f920
//  0x421ca8: mov x2, x0
//  0x421cac: ldur x0, [FP, #-0x28]
//  0x421cb0: stur x2, [FP, #-0x10]
//  0x421cb4: stur w0, [x2, #0xf]
//  0x421cb8: ldur x0, [FP, #-0x48]
//  0x421cbc: stur w0, [x2, #0x13]
//  0x421cc0: ldur x0, [FP, #-0x20]
//  0x421cc4: stur w0, [x2, #0x17]
//  0x421cc8: ldur x0, [FP, #-8]
//  0x421ccc: stur w0, [x2, #0x1b]
//  0x421cd0: ldur x0, [FP, #-0x30]
//  0x421cd4: stur w0, [x2, #0x1f]
//  0x421cd8: ldr x1, [PP, #0x5c58]
//  0x421cdc: bl #0x61e854
//  0x421ce0: mov x1, x0
//  0x421ce4: ldur x0, [FP, #-0x10]
//  0x421ce8: stur x1, [FP, #-8]
//  0x421cec: stur w0, [x1, #0xf]
//  0x421cf0: mov x0, #0xa
//  0x421cf4: stur w0, [x1, #0xb]
//  0x421cf8: bl #0x3a1414
//  0x421cfc: mov x2, x0
//  0x421d00: ldr x0, [PP, #0x5140]
//  0x421d04: stur x2, [FP, #-0x10]
//  0x421d08: stur w0, [x2, #0xf]
//  0x421d0c: add x0, PP, #0xe, lsl #12
//  0x421d10: ldr x0, [x0, #0xae0]
//  0x421d14: stur w0, [x2, #0x13]
//  0x421d18: add x3, PP, #0xe, lsl #12
//  0x421d1c: ldr x3, [x3, #0xae8]
//  0x421d20: stur w3, [x2, #0x17]
//  0x421d24: add x4, PP, #0xe, lsl #12
//  0x421d28: ldr x4, [x4, #0xb60]
//  0x421d2c: stur w4, [x2, #0x1b]
//  0x421d30: add x5, PP, #0xe, lsl #12
//  0x421d34: ldr x5, [x5, #0xaf8]
//  0x421d38: stur w5, [x2, #0x23]
//  0x421d3c: add x6, PP, #0xa, lsl #12
//  0x421d40: ldr x6, [x6, #0xa8]
//  0x421d44: stur w6, [x2, #0x2b]
//  0x421d48: stur xzr, [x2, #0x2f]
//  0x421d4c: ldur x1, [FP, #-8]
//  0x421d50: stur w1, [x2, #0xb]
//  0x421d54: add x1, PP, #0xe, lsl #12
//  0x421d58: ldr x1, [x1, #0xad0]
//  0x421d5c: bl #0x39fb14
//  0x421d60: mov x1, x0
//  0x421d64: mov x0, #1
//  0x421d68: stur x1, [FP, #-8]
//  0x421d6c: stur x0, [x1, #0x13]
//  0x421d70: add x0, PP, #0xe, lsl #12
//  0x421d74: ldr x0, [x0, #0xad8]
//  0x421d78: stur w0, [x1, #0x1b]
//  0x421d7c: ldur x0, [FP, #-0x10]
//  0x421d80: stur w0, [x1, #0xb]
//  0x421d84: bl #0x3b7d80
//  0x421d88: stur x0, [FP, #-0x10]
//  0x421d8c: bl #0x3ae894
//  0x421d90: fmov d0, #0.50000000
//  0x421d94: stur x0, [FP, #-0x20]
//  0x421d98: stur d0, [x0, #0xb]
//  0x421d9c: add x1, PP, #0x11, lsl #12
//  0x421da0: ldr x1, [x1, #0x8b8]
//  0x421da4: stur w1, [x0, #0x17]
//  0x421da8: ldur x1, [FP, #-0x10]
//  0x421dac: stur w1, [x0, #0x1f]
//  0x421db0: mov x1, NULL
//  0x421db4: mov x2, #4
//  0x421db8: bl #0x61f920
//  0x421dbc: mov x2, x0
//  0x421dc0: ldur x0, [FP, #-8]
//  0x421dc4: stur x2, [FP, #-0x10]
//  0x421dc8: stur w0, [x2, #0xf]
//  0x421dcc: ldur x0, [FP, #-0x20]
//  0x421dd0: stur w0, [x2, #0x13]
//  0x421dd4: ldr x1, [PP, #0x5c58]
//  0x421dd8: bl #0x61e854
//  0x421ddc: mov x1, x0
//  0x421de0: ldur x0, [FP, #-0x10]
//  0x421de4: stur x1, [FP, #-8]
//  0x421de8: stur w0, [x1, #0xf]
//  0x421dec: mov x0, #4
//  0x421df0: stur w0, [x1, #0xb]
//  0x421df4: bl #0x39310c
//  0x421df8: mov x1, x0
//  0x421dfc: add x0, PP, #0xa, lsl #12
//  0x421e00: ldr x0, [x0, #0x858]
//  0x421e04: stur x1, [FP, #-0x10]
//  0x421e08: stur w0, [x1, #0xf]
//  0x421e0c: add x0, PP, #0xe, lsl #12
//  0x421e10: ldr x0, [x0, #0xae0]
//  0x421e14: stur w0, [x1, #0x13]
//  0x421e18: add x0, PP, #0xe, lsl #12
//  0x421e1c: ldr x0, [x0, #0xae8]
//  0x421e20: stur w0, [x1, #0x17]
//  0x421e24: add x0, PP, #0xe, lsl #12
//  0x421e28: ldr x0, [x0, #0xb60]
//  0x421e2c: stur w0, [x1, #0x1b]
//  0x421e30: add x0, PP, #0xe, lsl #12
//  0x421e34: ldr x0, [x0, #0xaf8]
//  0x421e38: stur w0, [x1, #0x23]
//  0x421e3c: add x0, PP, #0xa, lsl #12
//  0x421e40: ldr x0, [x0, #0xa8]
//  0x421e44: stur w0, [x1, #0x2b]
//  0x421e48: stur xzr, [x1, #0x2f]
//  0x421e4c: ldur x0, [FP, #-8]
//  0x421e50: stur w0, [x1, #0xb]
//  0x421e54: bl #0x391a04
//  0x421e58: stur x0, [FP, #-8]
//  0x421e5c: add BARRIER, PP, #0x14, lsl #12
//  0x421e60: ldr BARRIER, [BARRIER, #0xf48]
//  0x421e64: ldur LR, [FP, #-0x38]
//  0x421e68: stp LR, BARRIER, [SP, #8]
//  0x421e6c: ldur BARRIER, [FP, #-0x10]
//  0x421e70: str BARRIER, [SP]
//  0x421e74: mov x1, x0
//  0x421e78: add x4, PP, #0x10, lsl #12
//  0x421e7c: ldr x4, [x4, #0x248]
//  0x421e80: bl #0x391490
//  0x421e84: bl #0x3a1d94
//  0x421e88: ldur x2, [FP, #-0x18]
//  0x421e8c: add x1, PP, #0x14, lsl #12
//  0x421e90: ldr x1, [x1, #0xf50]
//  0x421e94: stur x0, [FP, #-0x10]
//  0x421e98: bl #0x61ec54
//  0x421e9c: ldur BARRIER, [FP, #-8]
//  0x421ea0: stp BARRIER, x0, [SP]
//  0x421ea4: ldur x1, [FP, #-0x10]
//  0x421ea8: add x4, PP, #0xc, lsl #12
//  0x421eac: ldr x4, [x4, #0x208]
//  0x421eb0: bl #0x3a18c4
//  0x421eb4: ldur x0, [FP, #-0x10]
//  0x421eb8: mov SP, FP
//  0x421ebc: ldp FP, LR, [SP], #0x10
//  0x421ec0: ret 
//  0x421ec4: bl #0x61fa28
//  0x421ec8: b #0x4217d4
//  0x421ecc: bl #0x61fe70
//  0x421ed0: add x9, PP, #0x11, lsl #12
//  0x421ed4: ldr x9, [x9, #0x738]
//  0x421ed8: bl #0x620258
//  0x421edc: add x9, PP, #0x11, lsl #12
//  0x421ee0: ldr x9, [x9, #0x740]
//  0x421ee4: bl #0x620258
//  0x421ee8: add x9, PP, #0x14, lsl #12
//  0x421eec: ldr x9, [x9, #0xf58]
//  0x421ef0: bl #0x620258
//  0x421ef4: add x9, PP, #0x14, lsl #12
//  0x421ef8: ldr x9, [x9, #0xf60]
//  0x421efc: bl #0x620258
//  0x421f00: add x9, PP, #0x11, lsl #12
//  0x421f04: ldr x9, [x9, #0x740]
//  0x421f08: bl #0x620258
//  0x421f0c: add x9, PP, #0x14, lsl #12
//  0x421f10: ldr x9, [x9, #0xf68]
//  0x421f14: bl #0x620258
//  0x421f18: add x9, PP, #0x14, lsl #12
//  0x421f1c: ldr x9, [x9, #0xf70]
//  0x421f20: bl #0x620258
//
dynamic InviteUserPageState_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic w4;
  dynamic w6;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4217ac
  // frame: FP = SP // 0x4217b0
  // frame: SP = SP - 0x90 // 0x4217b4
  w1 = mem((local_20), 0x17); /* _InviteUserPageState._refreshController (off 0x18) */  // 0x4217bc
  x0 = local_20; // 0x4217b8
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); /* _InviteUserPageState._refreshController (off 0x18) */  // 0x4217c0
  local_m8 = x1; // 0x4217c4
  BARRIER = mem(THR, 0x38); // 0x4217c8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x421ec4
  }
  x1 = 1; // 0x4217d4
  sub_0x61e890(); // 0x4217d8
  x4 = local_m8; // 0x4217e0
  x5 = x0; // 0x4217dc
  local_m18 = x5; // 0x4217e4
  memSet(x5, 0xb, w4); // 0x4217e8
  w0 = mem((((mem(x4, 0x17)) & 0xffffffff) + (HEAP << 32)), 0xb); /* _InviteUserPageState._refreshController (off 0x18) */  // 0x4217f4
  w2 = mem(x4, 0x17); /* _InviteUserPageState._refreshController (off 0x18) */  // 0x4217ec
  x0 = (mem((((mem(x4, 0x17)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; /* _InviteUserPageState._refreshController (off 0x18) */  // 0x4217f4
  x1 = local_10; // 0x4217f8
  x2 = ((mem(x4, 0x17)) & 0xffffffff) + (HEAP << 32); /* _InviteUserPageState._refreshController (off 0x18) */  // 0x4217f0
  x3 = ((local_10) >> 1) & 0x7fffffff; // 0x4217fc
  if (x1 & (1 << 0) == 0) {
  } else {
    x3 = mem(x1, 7); // 0x421804
  }
  x0 = (x0 >> 1) & 0x7fffffff; // 0x42180c
  x1 = x3; // 0x421810
  if (x1 >= x0) {
    RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x421ecc
  } else {
    BARRIER = ((w0 & 0xffffffff) + (HEAP << 32)) + (x3 << 2); // 0x421824
    w6 = mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x3 << 2)), 0xf); // 0x421828
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x421820
    x6 = ((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x3 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42182c
    local_m10 = x6; // 0x421830
    memSet(x5, 0xf, w6); // 0x421834
    w0 = mem(x4, 0xf); // 0x421840
    w1 = mem(x4, 0x13); // 0x421838
    x0 = ((mem(x4, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x421844
    x1 = ((mem(x4, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x42183c
    x2 = ((((mem(x4, 0xf)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x421848
    if (x0 & (1 << 0) == 0) {
    } else {
      x2 = mem(x0, 7); // 0x421850
    }
    x3 = x6; // 0x421854
    PartyInviteNotifier_getItemFlag() /* 0x422010 */; // 0x421858
    x0 = local_m8; // 0x421860
    x4 = x0; // 0x42185c
    local_m20 = x4; // 0x421864
    w1 = mem(x0, 0x13); // 0x421868
    w2 = mem(x0, 0xf); // 0x421870
    x0 = ((((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x421878
    x1 = ((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x42186c
    x2 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x421874
    if (x2 & (1 << 0) == 0) {
    } else {
      x0 = mem(x2, 7); // 0x421880
    }
    x2 = x0; // 0x421884
    x3 = local_m10; // 0x421888
    PartyInviteNotifier_needFlagHighlight() /* 0x421f74 */; // 0x42188c
    local_m8 = x0; // 0x421890
    SOColors_get_s_01() /* 0x3b81fc */; // 0x421894
    x0 = local_m10; // 0x42189c
    x1 = x0; // 0x421898
    local_m38 = x1; // 0x4218a0
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4218ac
    w2 = mem(x0, 7); // 0x4218a4
    x2 = ((mem(x0, 7)) & 0xffffffff) + (HEAP << 32); // 0x4218a8
    if (w2 == w16) {
      x9 = mem((PP + 0x11000), 0x738) /* Field */; // 0x421ed4
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x421ed8
    } else {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4218c0
      x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x4218bc
      if (w3 == w16) {
        x9 = mem((PP + 0x11000), 0x740) /* Field */; // 0x421ee0
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x421ee4
      } else {
        BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4218d4
        x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x4218d0
        if (w2 == w16) {
          x9 = mem((PP + 0x14000), 0xf58) /* Field */; // 0x421eec
          LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x421ef0
        } else {
          local_m30 = x2; // 0x4218e0
          BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4218ec
          w4 = mem(x3, 0x13); // 0x4218e4
          x4 = ((mem(x3, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4218e8
          if (w4 == w16) {
            x9 = mem((PP + 0x14000), 0xf60) /* Field */; // 0x421ef8
            LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x421efc
          } else {
            local_m28 = x4; // 0x4218f8
            AllocationStub_SoulAvatarImage() /* 0x3a67fc */; // 0x4218fc
            x0 = local_m30; // 0x421904
            x1 = x0; // 0x421900
            local_m40 = x1; // 0x421908
            memSet(x1, 0xb, w0); // 0x42190c
            x0 = local_m28; // 0x421910
            memSet(x1, 0xf, w0); // 0x421914
            d0 = 4633078116657397760; // 0x42191c
            x17 = PP + 0x11000; // 0x421918
            memSet(x1, 0x13, d0); // 0x421920
            x0 = NULL + 0x20; // 0x421924
            memSet(x1, 0x1b, w0); // 0x421928
            AllocationStub_Padding() /* 0x391c0c */; // 0x42192c
            x0 = mem((PP + 0x14000), 0xc48) /* Obj!EdgeInsetsDirectional@11b78  */; // 0x421938
            x2 = x0; // 0x421930
            local_m28 = x2; // 0x42193c
            memSet(x2, 0xf, w0); // 0x421940
            x0 = local_m40; // 0x421944
            memSet(x2, 0xb, w0); // 0x421948
            x1 = local_18; // 0x42194c
            x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x421950
            MediaQuery_of() /* 0x30aef0 */; // 0x421954
            d0 = mem((((mem(x0, 7)) & 0xffffffff) + (HEAP << 32)), 7); // 0x421960
            d1 = 4640713125400674304; // 0x421968
            d2 = ((mem((((mem(x0, 7)) & 0xffffffff) + (HEAP << 32)), 7)) - d1) /* float */; // 0x42196c
            w1 = mem(x0, 7); // 0x421958
            x1 = ((mem(x0, 7)) & 0xffffffff) + (HEAP << 32); // 0x42195c
            x17 = PP + 0x14000; // 0x421964
            local_m60 = d2; // 0x421970
            AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x421974
            local_m40 = x0; // 0x421978
            memSet(x0, 7, xzr); // 0x42197c
            d0 = local_m60; // 0x421980
            memSet(x0, 0xf, d0); // 0x421984
            d0 = 19.00000000 /* bits */; // 0x421988
            memSet(x0, 0x17, d0); // 0x42198c
            d0 = 9218868437227405312; // 0x421990
            memSet(x0, 0x1f, d0); // 0x421994
            BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4219ac
            w2 = mem((local_m10), 7); // 0x42199c
            w3 = mem((((mem((local_m10), 7)) & 0xffffffff) + (HEAP << 32)), 7); // 0x4219a4
            x1 = local_m10; // 0x421998
            x2 = ((mem((local_m10), 7)) & 0xffffffff) + (HEAP << 32); // 0x4219a0
            x3 = ((mem((((mem((local_m10), 7)) & 0xffffffff) + (HEAP << 32)), 7)) & 0xffffffff) + (HEAP << 32); // 0x4219a8
            if (w3 == w16) {
              x9 = mem((PP + 0x11000), 0x740) /* Field */; // 0x421f04
              LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x421f08
            } else {
              BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4219c0
              x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x4219bc
              if (w2 == w16) {
                x9 = mem((PP + 0x14000), 0xf68) /* Field */; // 0x421f10
                LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x421f14
              } else {
                local_m30 = x2; // 0x4219cc
                SOColors_get_s_02() /* 0x3b348c */; // 0x4219d0
                x1 = x0; // 0x4219d4
                TextStyles_firstLevelTitle() /* 0x3b47a8 */; // 0x4219d8
                local_m48 = x0; // 0x4219dc
                AllocationStub_Text() /* 0x393bf8 */; // 0x4219e0
                x0 = local_m30; // 0x4219e8
                x1 = x0; // 0x4219e4
                local_m50 = x1; // 0x4219ec
                memSet(x1, 0xb, w0); // 0x4219f0
                x0 = local_m48; // 0x4219f4
                memSet(x1, 0x13, w0); // 0x4219f8
                x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x421a00
                memSet(x1, 0x2b, w0); // 0x421a04
                x0 = 2; // 0x421a08
                memSet(x1, 0x37, w0); // 0x421a0c
                AllocationStub_ConstrainedBox() /* 0x39646c */; // 0x421a10
                x0 = local_m40; // 0x421a18
                x1 = x0; // 0x421a14
                local_m48 = x1; // 0x421a1c
                memSet(x1, 0xf, w0); // 0x421a20
                x0 = local_m50; // 0x421a24
                memSet(x1, 0xb, w0); // 0x421a28
                w2 = mem((local_m20), 7); // 0x421a30
                x0 = local_m20; // 0x421a2c
                x2 = (mem((local_m20), 7)) & 0xffffffff; // 0x421a30
                if (w2 != 0) {
                  x3 = NULL + 0x20; // 0x421a40
                } else {
                  x3 = NULL + 0x30; // 0x421a38
                }
                local_m30 = x3; // 0x421a44
                AllocationStub_Radius() /* 0x352b04 */; // 0x421a48
                d0 = 8.00000000 /* bits */; // 0x421a4c
                local_m40 = x0; // 0x421a50
                memSet(x0, 7, d0); // 0x421a54
                memSet(x0, 0xf, d0); // 0x421a58
                AllocationStub_BorderRadius() /* 0x392f28 */; // 0x421a5c
                x0 = local_m40; // 0x421a64
                x1 = x0; // 0x421a60
                local_m50 = x1; // 0x421a68
                memSet(x1, 7, w0); // 0x421a6c
                memSet(x1, 0xb, w0); // 0x421a70
                memSet(x1, 0xf, w0); // 0x421a74
                memSet(x1, 0x13, w0); // 0x421a78
                x0 = local_m8; // 0x421a7c
                if (x0 & (1 << 4) != 0) {
                  SOColors_get_s_05() /* 0x3a6088 */; // 0x421a90
                  x2 = x0; // 0x421a94
                } else {
                  SOColors_get_s_00() /* 0x3b1380 */; // 0x421a84
                  x2 = x0; // 0x421a88
                }
                BARRIER = mem(PP, 0x53b0) /* Double */; // 0x421aa0
                x0 = local_m50; // 0x421a9c
                x3 = local_m8; // 0x421a98
                local_0 = BARRIER; // 0x421aa4
                x1 = NULL; // 0x421aa8
                x4 = mem((PP + 0xf000), 0x818) /* ImmutableArray */; // 0x421ab0
                Border_factory_ctor_all() /* 0x391e08 */; // 0x421ab4
                local_m40 = x0; // 0x421ab8
                AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x421abc
                x0 = local_m40; // 0x421ac4
                x1 = x0; // 0x421ac0
                local_m58 = x1; // 0x421ac8
                memSet(x1, 0xf, w0); // 0x421acc
                x0 = local_m50; // 0x421ad0
                memSet(x1, 0x13, w0); // 0x421ad4
                x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x421adc
                memSet(x1, 0x23, w0); // 0x421ae0
                x0 = local_m8; // 0x421ae4
                if (x0 & (1 << 4) != 0) {
                  SOColors_get_s_05() /* 0x3a6088 */; // 0x421af8
                  x1 = x0; // 0x421afc
                } else {
                  SOColors_get_s_00() /* 0x3b1380 */; // 0x421aec
                  x1 = x0; // 0x421af0
                }
                x0 = local_m20; // 0x421b00
                x2 = local_m30; // 0x421b04
                x3 = local_m10; // 0x421b08
                TextStyles_smallestTitle() /* 0x421f30 */; // 0x421b0c
                local_m8 = x0; // 0x421b10
                AllocationStub_Text() /* 0x393bf8 */; // 0x421b14
                x0 = local_m20; // 0x421b1c
                x1 = x0; // 0x421b18
                local_m40 = x1; // 0x421b20
                memSet(x1, 0xb, w0); // 0x421b24
                x0 = local_m8; // 0x421b28
                memSet(x1, 0x13, w0); // 0x421b2c
                AllocationStub_Container() /* 0x391a04 */; // 0x421b30
                local_m8 = x0; // 0x421b34
                BARRIER = mem((PP + 0xe000), 0xb50) /* Double */; // 0x421b3c
                LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x421b44
                // frame: LR, BARRIER, mem(SP, 0x20) // 0x421b48
                BARRIER = local_m58; // 0x421b4c
                LR = mem((PP + 0x14000), 0xf20) /* Obj!EdgeInsets@11ba8  */; // 0x421b54
                // frame: LR, BARRIER, mem(SP, 0x10) // 0x421b58
                BARRIER = mem((PP + 0x11000), 0x790) /* Obj!EdgeInsets@11ba6  */; // 0x421b60
                LR = local_m40; // 0x421b64
                // frame: LR, BARRIER, mem(SP) // 0x421b68
                x1 = x0; // 0x421b6c
                x4 = mem((PP + 0x14000), 0xf28) /* ImmutableArray */; // 0x421b74
                Container_ctor() /* 0x391490 */; // 0x421b78
                AllocationStub_Visibility() /* 0x41dfa8 */; // 0x421b7c
                x0 = local_m8; // 0x421b84
                x1 = x0; // 0x421b80
                local_m20 = x1; // 0x421b88
                memSet(x1, 0xb, w0); // 0x421b8c
                x0 = mem(PP, 0x56b8) /* Obj!SizedBox@1200e  */; // 0x421b90
                memSet(x1, 0xf, w0); // 0x421b94
                x0 = local_m30; // 0x421b98
                memSet(x1, 0x13, w0); // 0x421b9c
                x0 = NULL + 0x20; // 0x421ba0
                memSet(x1, 0x17, w0); // 0x421ba4
                memSet(x1, 0x1b, w0); // 0x421ba8
                memSet(x1, 0x1f, w0); // 0x421bac
                x0 = NULL + 0x30; // 0x421bb0
                memSet(x1, 0x23, w0); // 0x421bb4
                memSet(x1, 0x27, w0); // 0x421bb8
                AllocationStub_Spacer() /* 0x421f24 */; // 0x421bbc
                x0 = 1; // 0x421bc4
                x1 = x0; // 0x421bc0
                local_m8 = x1; // 0x421bc8
                memSet(x1, 0xb, x0); // 0x421bcc
                BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x421bdc
                w3 = mem((local_m10), 0xb); // 0x421bd4
                x2 = local_m10; // 0x421bd0
                x3 = ((mem((local_m10), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x421bd8
                if (w3 == w16) {
                  // duplicated branch body (target 0x421f18 terminates; the same code is emitted below)
                  x9 = mem((PP + 0x14000), 0xf70) /* Field */; // 0x421f1c
                  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x421f20
                }
                if (x3 & (1 << 4) != 0) {
                  x0 = mem((PP + 0xe000), 0xb48) /* Obj!ImageType@1215f  */; // 0x421c30
                  x2 = mem((PP + 0xf000), 0x250) /* Double */; // 0x421c28
                  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x421c34
                  x0 = "assets/images/3.0x/list_icon_radio_normal.webp" /* pp+0x14f38 */; // 0x421c40
                  x1 = x0; // 0x421c38
                  memSet(x1, 0xb, w0); // 0x421c44
                  x0 = mem((PP + 0xe000), 0xb48) /* Obj!ImageType@1215f  */; // 0x421c4c
                  memSet(x1, 0xf, w0); // 0x421c50
                  x0 = mem((PP + 0xf000), 0x250) /* Double */; // 0x421c58
                  memSet(x1, 0x13, w0); // 0x421c5c
                  memSet(x1, 0x17, w0); // 0x421c60
                  x4 = x1; // 0x421c64
                } else {
                  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x421bec
                  x0 = "assets/images/3.0x/list_icon_radio_selected.webp" /* pp+0x14f30 */; // 0x421bf8
                  x1 = x0; // 0x421bf0
                  memSet(x1, 0xb, w0); // 0x421bfc
                  x0 = mem((PP + 0xe000), 0xb48) /* Obj!ImageType@1215f  */; // 0x421c04
                  memSet(x1, 0xf, w0); // 0x421c08
                  x2 = mem((PP + 0xf000), 0x250) /* Double */; // 0x421c10
                  memSet(x1, 0x13, w2); // 0x421c14
                  memSet(x1, 0x17, w2); // 0x421c18
                  x4 = x1; // 0x421c1c
                }
                x0 = local_m8; // 0x421c74
                x1 = local_m20; // 0x421c70
                x2 = local_m48; // 0x421c6c
                x3 = local_m28; // 0x421c68
                local_m10 = x4; // 0x421c78
                AllocationStub_Padding() /* 0x391c0c */; // 0x421c7c
                x0 = mem((PP + 0x14000), 0xf40) /* Obj!EdgeInsetsDirectional@11b77  */; // 0x421c88
                x3 = x0; // 0x421c80
                local_m30 = x3; // 0x421c8c
                memSet(x3, 0xf, w0); // 0x421c90
                x0 = local_m10; // 0x421c94
                memSet(x3, 0xb, w0); // 0x421c98
                x1 = NULL; // 0x421c9c
                x2 = 10; // 0x421ca0
                sub_0x61f920(); // 0x421ca4
                x0 = local_m28; // 0x421cac
                x2 = x0; // 0x421ca8
                local_m10 = x2; // 0x421cb0
                memSet(x2, 0xf, w0); // 0x421cb4
                x0 = local_m48; // 0x421cb8
                memSet(x2, 0x13, w0); // 0x421cbc
                x0 = local_m20; // 0x421cc0
                memSet(x2, 0x17, w0); // 0x421cc4
                x0 = local_m8; // 0x421cc8
                memSet(x2, 0x1b, w0); // 0x421ccc
                x0 = local_m30; // 0x421cd0
                memSet(x2, 0x1f, w0); // 0x421cd4
                x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x421cd8
                AllocationStub__GrowableList() /* 0x61e854 */; // 0x421cdc
                x0 = local_m10; // 0x421ce4
                x1 = x0; // 0x421ce0
                local_m8 = x1; // 0x421ce8
                memSet(x1, 0xf, w0); // 0x421cec
                x0 = 10; // 0x421cf0
                memSet(x1, 0xb, w0); // 0x421cf4
                AllocationStub_Row() /* 0x3a1414 */; // 0x421cf8
                x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x421d00
                x2 = x0; // 0x421cfc
                local_m10 = x2; // 0x421d04
                memSet(x2, 0xf, w0); // 0x421d08
                x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x421d10
                memSet(x2, 0x13, w0); // 0x421d14
                x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x421d1c
                memSet(x2, 0x17, w3); // 0x421d20
                x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x421d28
                memSet(x2, 0x1b, w4); // 0x421d2c
                x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x421d34
                memSet(x2, 0x23, w5); // 0x421d38
                x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x421d40
                memSet(x2, 0x2b, w6); // 0x421d44
                memSet(x2, 0x2f, xzr); // 0x421d48
                x1 = local_m8; // 0x421d4c
                memSet(x2, 0xb, w1); // 0x421d50
                x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x421d58
                AllocationStub_Expanded() /* 0x39fb14 */; // 0x421d5c
                x0 = 1; // 0x421d64
                x1 = x0; // 0x421d60
                local_m8 = x1; // 0x421d68
                memSet(x1, 0x13, x0); // 0x421d6c
                x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x421d74
                memSet(x1, 0x1b, w0); // 0x421d78
                x0 = local_m10; // 0x421d7c
                memSet(x1, 0xb, w0); // 0x421d80
                SOColors_get_s_10() /* 0x3b7d80 */; // 0x421d84
                local_m10 = x0; // 0x421d88
                AllocationStub_Divider() /* 0x3ae894 */; // 0x421d8c
                d0 = 0.50000000 /* bits */; // 0x421d90
                local_m20 = x0; // 0x421d94
                memSet(x0, 0xb, d0); // 0x421d98
                x1 = mem((PP + 0x11000), 0x8b8) /* Double */; // 0x421da0
                memSet(x0, 0x17, w1); // 0x421da4
                x1 = local_m10; // 0x421da8
                memSet(x0, 0x1f, w1); // 0x421dac
                x1 = NULL; // 0x421db0
                x2 = 4; // 0x421db4
                sub_0x61f920(); // 0x421db8
                x0 = local_m8; // 0x421dc0
                x2 = x0; // 0x421dbc
                local_m10 = x2; // 0x421dc4
                memSet(x2, 0xf, w0); // 0x421dc8
                x0 = local_m20; // 0x421dcc
                memSet(x2, 0x13, w0); // 0x421dd0
                x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x421dd4
                AllocationStub__GrowableList() /* 0x61e854 */; // 0x421dd8
                x0 = local_m10; // 0x421de0
                x1 = x0; // 0x421ddc
                local_m8 = x1; // 0x421de4
                memSet(x1, 0xf, w0); // 0x421de8
                x0 = 4; // 0x421dec
                memSet(x1, 0xb, w0); // 0x421df0
                AllocationStub_Column() /* 0x39310c */; // 0x421df4
                x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x421e00
                x1 = x0; // 0x421df8
                local_m10 = x1; // 0x421e04
                memSet(x1, 0xf, w0); // 0x421e08
                x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x421e10
                memSet(x1, 0x13, w0); // 0x421e14
                x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x421e1c
                memSet(x1, 0x17, w0); // 0x421e20
                x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x421e28
                memSet(x1, 0x1b, w0); // 0x421e2c
                x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x421e34
                memSet(x1, 0x23, w0); // 0x421e38
                x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x421e40
                memSet(x1, 0x2b, w0); // 0x421e44
                memSet(x1, 0x2f, xzr); // 0x421e48
                x0 = local_m8; // 0x421e4c
                memSet(x1, 0xb, w0); // 0x421e50
                AllocationStub_Container() /* 0x391a04 */; // 0x421e54
                local_m8 = x0; // 0x421e58
                BARRIER = mem((PP + 0x14000), 0xf48) /* Double */; // 0x421e60
                LR = local_m38; // 0x421e64
                // frame: LR, BARRIER, mem(SP, 8) // 0x421e68
                BARRIER = local_m10; // 0x421e6c
                local_0 = BARRIER; // 0x421e70
                x1 = x0; // 0x421e74
                x4 = mem((PP + 0x10000), 0x248) /* ImmutableArray */; // 0x421e7c
                Container_ctor() /* 0x391490 */; // 0x421e80
                sub_0x3a1d94(); // 0x421e84
                x1 = mem((PP + 0x14000), 0xf50) /* Function */; // 0x421e90
                x2 = local_m18; // 0x421e88
                local_m10 = x0; // 0x421e94
                AllocationStub__Closure() /* 0x61ec54 */; // 0x421e98
                BARRIER = local_m8; // 0x421e9c
                // frame: BARRIER, x0, mem(SP) // 0x421ea0
                x1 = local_m10; // 0x421ea4
                x4 = mem((PP + 0xc000), 0x208) /* ImmutableArray */; // 0x421eac
                GestureDetector_ctor() /* 0x3a18c4 */; // 0x421eb0
                SP = FP; // 0x421eb8
                x0 = local_m10; // 0x421eb4
                // frame: FP, LR, mem(SP), 0x10 // 0x421ebc
                return;
              }
              x9 = mem((PP + 0x14000), 0xf70) /* Field */; // 0x421f1c
              LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x421f20
            }
          }
        }
      }
    }
  }
}

// InviteUserPageState_anon_closure_2
// raw disassembly:
//  0x42217c: stp FP, LR, [SP, #-0x10]!
//  0x422180: mov FP, SP
//  0x422184: ldr x0, [FP, #0x10]
//  0x422188: ldur w1, [x0, #0x17]
//  0x42218c: add x1, x1, HEAP, lsl #32
//  0x422190: ldr BARRIER, [THR, #0x38]
//  0x422194: cmp SP, BARRIER
//  0x422198: b.ls #0x4221d0
//  0x42219c: ldur w0, [x1, #0xb]
//  0x4221a0: add x0, x0, HEAP, lsl #32
//  0x4221a4: ldur w2, [x0, #0x13]
//  0x4221a8: add x2, x2, HEAP, lsl #32
//  0x4221ac: ldur w0, [x1, #0xf]
//  0x4221b0: add x0, x0, HEAP, lsl #32
//  0x4221b4: mov x1, x2
//  0x4221b8: mov x2, x0
//  0x4221bc: bl #0x4221d8
//  0x4221c0: mov x0, NULL
//  0x4221c4: mov SP, FP
//  0x4221c8: ldp FP, LR, [SP], #0x10
//  0x4221cc: ret 
//  0x4221d0: bl #0x61fa28
//  0x4221d4: b #0x42219c
//
dynamic InviteUserPageState_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42217c
  BARRIER = mem(THR, 0x38); // 0x422190
  // frame: FP = SP // 0x422180
  w1 = mem((local_10), 0x17); /* _InviteUserPageState._refreshController (off 0x18) */  // 0x422188
  x0 = local_10; // 0x422184
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); /* _InviteUserPageState._refreshController (off 0x18) */  // 0x42218c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4221d0
  }
  w0 = mem(x1, 0xf); // 0x4221ac
  w2 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13); // 0x4221a4
  x0 = (mem(x1, 0xf)) & 0xffffffff; // 0x4221ac
  x2 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4221a8
  x0 = x0 + (HEAP << 32); // 0x4221b0
  x1 = x2; // 0x4221b4
  x2 = x0 + (HEAP << 32); // 0x4221b8
  PartyInviteNotifier_selectCurrentItem() /* 0x4221d8 */; // 0x4221bc
  SP = FP; // 0x4221c4
  x0 = NULL; // 0x4221c0
  // frame: FP, LR, mem(SP), 0x10 // 0x4221c8
  return;
}

// InviteUserPageState_anon_closure_3
// raw disassembly:
//  0x422798: stp FP, LR, [SP, #-0x10]!
//  0x42279c: mov FP, SP
//  0x4227a0: sub SP, SP, #0x10
//  0x4227a4: ldr x0, [FP, #0x10]
//  0x4227a8: ldur w1, [x0, #0x17]
//  0x4227ac: add x1, x1, HEAP, lsl #32
//  0x4227b0: ldr BARRIER, [THR, #0x38]
//  0x4227b4: cmp SP, BARRIER
//  0x4227b8: b.ls #0x422818
//  0x4227bc: ldur w0, [x1, #0x17]
//  0x4227c0: add x0, x0, HEAP, lsl #32
//  0x4227c4: stur x0, [FP, #-0x10]
//  0x4227c8: ldur w2, [x1, #0x13]
//  0x4227cc: add x2, x2, HEAP, lsl #32
//  0x4227d0: ldur w3, [x1, #0xf]
//  0x4227d4: add x3, x3, HEAP, lsl #32
//  0x4227d8: sbfx x4, x2, #1, #0x1f
//  0x4227dc: tbz w2, #0, #0x4227e4
//  0x4227e0: ldur x4, [x2, #7]
//  0x4227e4: mov x2, x3
//  0x4227e8: stur x4, [FP, #-8]
//  0x4227ec: add x1, PP, #0x14, lsl #12
//  0x4227f0: ldr x1, [x1, #0xd48]
//  0x4227f4: bl #0x61ec54
//  0x4227f8: ldur x1, [FP, #-0x10]
//  0x4227fc: ldur x2, [FP, #-8]
//  0x422800: mov x3, x0
//  0x422804: bl #0x422820
//  0x422808: mov x0, NULL
//  0x42280c: mov SP, FP
//  0x422810: ldp FP, LR, [SP], #0x10
//  0x422814: ret 
//  0x422818: bl #0x61fa28
//  0x42281c: b #0x4227bc
//
dynamic InviteUserPageState_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x422798
  BARRIER = mem(THR, 0x38); // 0x4227b0
  // frame: FP = SP // 0x42279c
  // frame: SP = SP - 0x10 // 0x4227a0
  w1 = mem((local_10), 0x17); /* _InviteUserPageState._refreshController (off 0x18) */  // 0x4227a8
  x0 = local_10; // 0x4227a4
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); /* _InviteUserPageState._refreshController (off 0x18) */  // 0x4227ac
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x422818
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4227c0
  local_m10 = x0; // 0x4227c4
  w2 = mem(x1, 0x13); // 0x4227c8
  w3 = mem(x1, 0xf); // 0x4227d0
  x2 = ((mem(x1, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4227cc
  x3 = ((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4227d4
  x4 = ((((mem(x1, 0x13)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x4227d8
  if (x2 & (1 << 0) == 0) {
  } else {
    x4 = mem(x2, 7); // 0x4227e0
  }
  x2 = x3; // 0x4227e4
  local_m8 = x4; // 0x4227e8
  x1 = mem((PP + 0x14000), 0xd48) /* Function */; // 0x4227f0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4227f4
  x1 = local_m10; // 0x4227f8
  x2 = local_m8; // 0x4227fc
  x3 = x0; // 0x422800
  PartyInviteNotifier_requestItemList() /* 0x422820 */; // 0x422804
  SP = FP; // 0x42280c
  x0 = NULL; // 0x422808
  // frame: FP, LR, mem(SP), 0x10 // 0x422810
  return;
}

// InviteUserPageState_onLoaded
// raw disassembly:
//  0x422c60: stp FP, LR, [SP, #-0x10]!
//  0x422c64: mov FP, SP
//  0x422c68: ldr BARRIER, [THR, #0x38]
//  0x422c6c: cmp SP, BARRIER
//  0x422c70: b.ls #0x422ce8
//  0x422c74: tbnz w2, #4, #0x422cbc
//  0x422c78: tbnz w3, #4, #0x422c9c
//  0x422c7c: ldur w0, [x1, #0x17]
//  0x422c80: add x0, x0, HEAP, lsl #32
//  0x422c84: ldr BARRIER, [PP, #0x40]
//  0x422c88: cmp w0, w16
//  0x422c8c: b.eq #0x422cf0
//  0x422c90: mov x1, x0
//  0x422c94: bl #0x3adfd4
//  0x422c98: b #0x422cd8
//  0x422c9c: ldur w0, [x1, #0x17]
//  0x422ca0: add x0, x0, HEAP, lsl #32
//  0x422ca4: ldr BARRIER, [PP, #0x40]
//  0x422ca8: cmp w0, w16
//  0x422cac: b.eq #0x422cfc
//  0x422cb0: mov x1, x0
//  0x422cb4: bl #0x3ade48
//  0x422cb8: b #0x422cd8
//  0x422cbc: ldur w0, [x1, #0x17]
//  0x422cc0: add x0, x0, HEAP, lsl #32
//  0x422cc4: ldr BARRIER, [PP, #0x40]
//  0x422cc8: cmp w0, w16
//  0x422ccc: b.eq #0x422d08
//  0x422cd0: mov x1, x0
//  0x422cd4: bl #0x3adbb4
//  0x422cd8: mov x0, NULL
//  0x422cdc: mov SP, FP
//  0x422ce0: ldp FP, LR, [SP], #0x10
//  0x422ce4: ret 
//  0x422ce8: bl #0x61fa28
//  0x422cec: b #0x422c74
//  0x422cf0: add x9, PP, #0x14, lsl #12
//  0x422cf4: ldr x9, [x9, #0xd40]
//  0x422cf8: bl #0x620258
//  0x422cfc: add x9, PP, #0x14, lsl #12
//  0x422d00: ldr x9, [x9, #0xd40]
//  0x422d04: bl #0x620258
//  0x422d08: add x9, PP, #0x14, lsl #12
//  0x422d0c: ldr x9, [x9, #0xd40]
//  0x422d10: bl #0x620258
//
dynamic InviteUserPageState_onLoaded() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x422c60
  BARRIER = mem(THR, 0x38); // 0x422c68
  // frame: FP = SP // 0x422c64
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x422ce8
  }
  if (x2 & (1 << 4) != 0) {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x422cc4
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x422cc0
    if (w0 != w16) {
      x1 = x0; // 0x422cd0
      RefreshController_loadFailed() /* 0x3adbb4 */; // 0x422cd4
      SP = FP; // 0x422cdc
      x0 = NULL; // 0x422cd8
      // frame: FP, LR, mem(SP), 0x10 // 0x422ce0
      return;
    }
  } else {
    if (x3 & (1 << 4) != 0) {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x422ca4
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x422ca0
      if (w0 != w16) {
        x1 = x0; // 0x422cb0
        RefreshController_loadComplete() /* 0x3ade48 */; // 0x422cb4
        // duplicated tail (join at 0x422cd8; the same code was emitted above)
        SP = FP; // 0x422cdc
        x0 = NULL; // 0x422cd8
        // frame: FP, LR, mem(SP), 0x10 // 0x422ce0
        return;
      }
    } else {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x422c84
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x422c80
      if (w0 == w16) {
        x9 = mem((PP + 0x14000), 0xd40) /* Field */; // 0x422cf4
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x422cf8
      }
      x1 = x0; // 0x422c90
      RefreshController_loadNoData() /* 0x3adfd4 */; // 0x422c94
      // duplicated tail (join at 0x422cd8; the same code was emitted above)
      SP = FP; // 0x422cdc
      x0 = NULL; // 0x422cd8
      // frame: FP, LR, mem(SP), 0x10 // 0x422ce0
      return;
    }
    x9 = mem((PP + 0x14000), 0xd40) /* Field */; // 0x422d00
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x422d04
  }
  x9 = mem((PP + 0x14000), 0xd40) /* Field */; // 0x422d0c
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x422d10
}

// InviteUserPageState_onLoaded_2
// raw disassembly:
//  0x423c00: stp FP, LR, [SP, #-0x10]!
//  0x423c04: mov FP, SP
//  0x423c08: ldr x0, [FP, #0x20]
//  0x423c0c: ldur w1, [x0, #0x17]
//  0x423c10: add x1, x1, HEAP, lsl #32
//  0x423c14: ldr BARRIER, [THR, #0x38]
//  0x423c18: cmp SP, BARRIER
//  0x423c1c: b.ls #0x423c38
//  0x423c20: ldr x2, [FP, #0x18]
//  0x423c24: ldr x3, [FP, #0x10]
//  0x423c28: bl #0x422c60
//  0x423c2c: mov SP, FP
//  0x423c30: ldp FP, LR, [SP], #0x10
//  0x423c34: ret 
//  0x423c38: bl #0x61fa28
//  0x423c3c: b #0x423c20
//
dynamic InviteUserPageState_onLoaded_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x423c00
  BARRIER = mem(THR, 0x38); // 0x423c14
  // frame: FP = SP // 0x423c04
  w1 = mem((local_20), 0x17); /* _InviteUserPageState._refreshController (off 0x18) */  // 0x423c0c
  x0 = local_20; // 0x423c08
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); /* _InviteUserPageState._refreshController (off 0x18) */  // 0x423c10
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x423c38
  }
  x2 = local_18; // 0x423c20
  x3 = local_10; // 0x423c24
  InviteUserPageState_onLoaded() /* 0x422c60 */; // 0x423c28
  SP = FP; // 0x423c2c
  // frame: FP, LR, mem(SP), 0x10 // 0x423c30
  return;
}

// InviteUserPageState_dispose
// raw disassembly:
//  0x4512c8: stp FP, LR, [SP, #-0x10]!
//  0x4512cc: mov FP, SP
//  0x4512d0: sub SP, SP, #8
//  0x4512d4: mov x0, x1
//  0x4512d8: stur x1, [FP, #-8]
//  0x4512dc: ldr BARRIER, [THR, #0x38]
//  0x4512e0: cmp SP, BARRIER
//  0x4512e4: b.ls #0x451318
//  0x4512e8: ldur w1, [x0, #0x17]
//  0x4512ec: add x1, x1, HEAP, lsl #32
//  0x4512f0: ldr BARRIER, [PP, #0x40]
//  0x4512f4: cmp w1, w16
//  0x4512f8: b.eq #0x451320
//  0x4512fc: bl #0x45132c
//  0x451300: ldur x1, [FP, #-8]
//  0x451304: bl #0x451970
//  0x451308: mov x0, NULL
//  0x45130c: mov SP, FP
//  0x451310: ldp FP, LR, [SP], #0x10
//  0x451314: ret 
//  0x451318: bl #0x61fa28
//  0x45131c: b #0x4512e8
//  0x451320: add x9, PP, #0x14, lsl #12
//  0x451324: ldr x9, [x9, #0xd40]
//  0x451328: bl #0x620258
//
dynamic InviteUserPageState_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4512c8
  // frame: FP = SP // 0x4512cc
  // frame: SP = SP - 8 // 0x4512d0
  x0 = x1; // 0x4512d4
  local_m8 = x1; // 0x4512d8
  BARRIER = mem(THR, 0x38); // 0x4512dc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x451318
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4512f0
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4512ec
  if (w1 == w16) {
    x9 = mem((PP + 0x14000), 0xd40) /* Field */; // 0x451324
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x451328
  }
  RefreshController_dispose() /* 0x45132c */; // 0x4512fc
  x1 = local_m8; // 0x451300
  SoulState_dispose() /* 0x451970 */; // 0x451304
  SP = FP; // 0x45130c
  x0 = NULL; // 0x451308
  // frame: FP, LR, mem(SP), 0x10 // 0x451310
  return;
}

// InviteUserPageState_initState
// raw disassembly:
//  0x4d44dc: stp FP, LR, [SP, #-0x10]!
//  0x4d44e0: mov FP, SP
//  0x4d44e4: sub SP, SP, #0x18
//  0x4d44e8: mov x2, x1
//  0x4d44ec: stur x1, [FP, #-8]
//  0x4d44f0: ldr BARRIER, [THR, #0x38]
//  0x4d44f4: cmp SP, BARRIER
//  0x4d44f8: b.ls #0x4d458c
//  0x4d44fc: bl #0x4c47f0
//  0x4d4500: mov x1, x0
//  0x4d4504: stur x0, [FP, #-0x10]
//  0x4d4508: bl #0x4c46e0
//  0x4d450c: ldur x0, [FP, #-0x10]
//  0x4d4510: ldur x3, [FP, #-8]
//  0x4d4514: stur w0, [x3, #0x17]
//  0x4d4518: ldurb w16, [x3, #-1]
//  0x4d451c: ldurb w17, [x0, #-1]
//  0x4d4520: and BARRIER, x17, BARRIER, lsr #2
//  0x4d4524: tst BARRIER, HEAP, lsr #32
//  0x4d4528: b.eq #0x4d4530
//  0x4d452c: bl #0x61e08c
//  0x4d4530: ldur w0, [x3, #0xb]
//  0x4d4534: add x0, x0, HEAP, lsl #32
//  0x4d4538: cmp w0, w22
//  0x4d453c: b.eq #0x4d4594
//  0x4d4540: ldur w4, [x0, #0x13]
//  0x4d4544: add x4, x4, HEAP, lsl #32
//  0x4d4548: stur x4, [FP, #-0x10]
//  0x4d454c: ldur x5, [x0, #0xb]
//  0x4d4550: mov x2, x3
//  0x4d4554: stur x5, [FP, #-0x18]
//  0x4d4558: add x1, PP, #0x14, lsl #12
//  0x4d455c: ldr x1, [x1, #0xd48]
//  0x4d4560: bl #0x61ec54
//  0x4d4564: ldur x1, [FP, #-0x10]
//  0x4d4568: ldur x2, [FP, #-0x18]
//  0x4d456c: mov x3, x0
//  0x4d4570: bl #0x422820
//  0x4d4574: ldur x1, [FP, #-8]
//  0x4d4578: bl #0x4d4598
//  0x4d457c: mov x0, NULL
//  0x4d4580: mov SP, FP
//  0x4d4584: ldp FP, LR, [SP], #0x10
//  0x4d4588: ret 
//  0x4d458c: bl #0x61fa28
//  0x4d4590: b #0x4d44fc
//  0x4d4594: bl #0x61ffd0
//
dynamic InviteUserPageState_initState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
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
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d44dc
  // frame: FP = SP // 0x4d44e0
  // frame: SP = SP - 0x18 // 0x4d44e4
  x2 = x1; // 0x4d44e8
  local_m8 = x1; // 0x4d44ec
  BARRIER = mem(THR, 0x38); // 0x4d44f0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d458c
  }
  AllocationStub_RefreshController() /* 0x4c47f0 */; // 0x4d44fc
  x1 = x0; // 0x4d4500
  local_m10 = x0; // 0x4d4504
  RefreshController_ctor() /* 0x4c46e0 */; // 0x4d4508
  x0 = local_m10; // 0x4d450c
  x3 = local_m8; // 0x4d4510
  memSet(x3, 0x17, w0); // 0x4d4514
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d4520
  w16 = mem(x3, -1); // 0x4d4518
  w17 = mem(x0, -1); // 0x4d451c
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4d4518
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d451c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d452c
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d4534
  if (w0 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d4594
  }
  x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x4d4544
  local_m10 = x4; // 0x4d4548
  x2 = x3; // 0x4d4550
  x5 = mem(x0, 0xb); // 0x4d454c
  local_m18 = x5; // 0x4d4554
  x1 = mem((PP + 0x14000), 0xd48) /* Function */; // 0x4d455c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d4560
  x1 = local_m10; // 0x4d4564
  x2 = local_m18; // 0x4d4568
  x3 = x0; // 0x4d456c
  PartyInviteNotifier_requestItemList() /* 0x422820 */; // 0x4d4570
  x1 = local_m8; // 0x4d4574
  InviteUserPageState_SoulState_AutomaticKeepAliveClientMixin_initState() /* 0x4d4598 */; // 0x4d4578
  SP = FP; // 0x4d4580
  x0 = NULL; // 0x4d457c
  // frame: FP, LR, mem(SP), 0x10 // 0x4d4584
  return;
}

// PartyInvitePage_createState
// raw disassembly:
//  0x4c3db8: stp FP, LR, [SP, #-0x10]!
//  0x4c3dbc: mov FP, SP
//  0x4c3dc0: sub SP, SP, #8
//  0x4c3dc4: ldr BARRIER, [THR, #0x38]
//  0x4c3dc8: cmp SP, BARRIER
//  0x4c3dcc: b.ls #0x4c3df8
//  0x4c3dd0: add x1, PP, #0xb, lsl #12
//  0x4c3dd4: ldr x1, [x1, #0x7f0]
//  0x4c3dd8: bl #0x4c414c
//  0x4c3ddc: mov x1, x0
//  0x4c3de0: stur x0, [FP, #-8]
//  0x4c3de4: bl #0x4c3e00
//  0x4c3de8: ldur x0, [FP, #-8]
//  0x4c3dec: mov SP, FP
//  0x4c3df0: ldp FP, LR, [SP], #0x10
//  0x4c3df4: ret 
//  0x4c3df8: bl #0x61fa28
//  0x4c3dfc: b #0x4c3dd0
//
dynamic PartyInvitePage_createState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c3db8
  BARRIER = mem(THR, 0x38); // 0x4c3dc4
  // frame: FP = SP // 0x4c3dbc
  // frame: SP = SP - 8 // 0x4c3dc0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c3df8
  }
  x1 = mem((PP + 0xb000), 0x7f0) /* TypeArguments */; // 0x4c3dd4
  AllocationStub__PartyInvitePageState() /* 0x4c414c */; // 0x4c3dd8
  x1 = x0; // 0x4c3ddc
  local_m8 = x0; // 0x4c3de0
  PartyInvitePageState_ctor() /* 0x4c3e00 */; // 0x4c3de4
  SP = FP; // 0x4c3dec
  x0 = local_m8; // 0x4c3de8
  // frame: FP, LR, mem(SP), 0x10 // 0x4c3df0
  return;
}

// InviteUserPage_createState
// raw disassembly:
//  0x4c4158: stp FP, LR, [SP, #-0x10]!
//  0x4c415c: mov FP, SP
//  0x4c4160: mov x0, x1
//  0x4c4164: add x1, PP, #0x12, lsl #12
//  0x4c4168: ldr x1, [x1, #0x508]
//  0x4c416c: bl #0x4c4184
//  0x4c4170: ldr x1, [PP, #0x40]
//  0x4c4174: stur w1, [x0, #0x17]
//  0x4c4178: mov SP, FP
//  0x4c417c: ldp FP, LR, [SP], #0x10
//  0x4c4180: ret 
//
dynamic InviteUserPage_createState() {
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c4158
  // frame: FP = SP // 0x4c415c
  x0 = x1; // 0x4c4160
  x1 = mem((PP + 0x12000), 0x508) /* TypeArguments */; // 0x4c4168
  AllocationStub__InviteUserPageState() /* 0x4c4184 */; // 0x4c416c
  x1 = mem(PP, 0x40) /* Obj!? */; // 0x4c4170
  memSet(x0, 0x17, w1); // 0x4c4174
  SP = FP; // 0x4c4178
  // frame: FP, LR, mem(SP), 0x10 // 0x4c417c
  return;
}
