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
dynamic AllocationStub_ClampingScrollPhysics, AllocationStub_Color, AllocationStub_Column;
dynamic AllocationStub_ConstrainedBox, AllocationStub_Consumer, AllocationStub_Container;
dynamic AllocationStub_EdgeInsets, AllocationStub_Expanded, AllocationStub_HighlightTextParser;
dynamic AllocationStub_LuckyBagListItemNotifier, AllocationStub_Padding;
dynamic AllocationStub_PagePartyLotteryNameList, AllocationStub_PagePartyLotteryPityInfo;
dynamic AllocationStub_PagePartyLotteryWinnerInfo, AllocationStub_PartyPocketDialog;
dynamic AllocationStub_Positioned, AllocationStub_Radius, AllocationStub_Row;
dynamic AllocationStub_SOAssetImage, AllocationStub_SingleChildScrollView;
dynamic AllocationStub_SizedBox, AllocationStub_SoulAvatarImage, AllocationStub_Stack;
dynamic AllocationStub_Text, AllocationStub_TextStyle, AllocationStub__Closure;
dynamic AllocationStub__Double, AllocationStub__GrowableList, AllocationStub__Mint;
dynamic AllocationStub__PagePartyLuckyBagState, AllocationStub__ValueInheritedProvider;
dynamic BARRIER, Border_factory_ctor_all, Container_ctor, EventTrack_eventClick;
dynamic EventTrack_eventPv, FP, GestureDetector_ctor, GrowableList_factory_ctor;
dynamic GrowableList_factory_ctor_of, HEAP, HighlightTextParser_parser, LR;
dynamic LateInitializationErrorSharedWithoutFpuRegsStub_0x620258, ListBase_indexOf;
dynamic ListBase_map, LuckyBagListItemNotifier_ctor, LuckyBagListItemNotifier_gainLuckyBagInfo;
dynamic LuckyBagListItemNotifier_requestUserInfo, LuckyBagListItemNotifier_sendBlessBag;
dynamic Map_factory_ctor_fromLiteral, NULL, NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0, PP;
dynamic PagePKGameBetTabRecordState_anon_closure, Provider_of, RouterNative_getInstance;
dynamic RouterNative_routeH5, SP, ScreenUtil_getScreenWidth, SoulState_onPageShow;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolateSingle;
dynamic StringBase_op_add, THR, TextStyles_fontDINCondensedBold, VirtualParty_sendTextToParty;
dynamic WriteBarrierStub_x1, WriteBarrierStub_x3, d0, d1, d2, d3, getString, getUrlWithHost;
dynamic int_kNull, int_parse, local_0, local_10, local_18, local_20, local_28, local_m10;
dynamic local_m18, local_m20, local_m28, local_m30, local_m38, local_m40, local_m48, local_m50;
dynamic local_m58, local_m60, local_m68, local_m70, local_m8, q0, sub_0x278d08, sub_0x2b13a0;
dynamic sub_0x2b16e4, sub_0x3a1d94, sub_0x61db00, sub_0x61e890, sub_0x61f920, sub_0x62a0c0;
dynamic v0_16b, v1_16b, w0, w1, w16, w17, w2, w22, w3, w4, w5, w6, w7, w8, x0, x1, x16, x17;
dynamic x2, x21, x25, x3, x4, x5, x6, x7, x8, x9, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$party$page_party_lucky_bag
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PagePartyLotteryWinnerInfo_build
// raw disassembly:
//  0x3a52a8: stp FP, LR, [SP, #-0x10]!
//  0x3a52ac: mov FP, SP
//  0x3a52b0: sub SP, SP, #0x80
//  0x3a52b4: mov x0, x1
//  0x3a52b8: stur x1, [FP, #-8]
//  0x3a52bc: mov x1, x2
//  0x3a52c0: stur x2, [FP, #-0x10]
//  0x3a52c4: ldr BARRIER, [THR, #0x38]
//  0x3a52c8: cmp SP, BARRIER
//  0x3a52cc: b.ls #0x3a5b28
//  0x3a52d0: mov x1, #2
//  0x3a52d4: bl #0x61e890
//  0x3a52d8: mov x2, x0
//  0x3a52dc: ldur x0, [FP, #-8]
//  0x3a52e0: stur x2, [FP, #-0x18]
//  0x3a52e4: stur w0, [x2, #0xf]
//  0x3a52e8: add x1, PP, #0xc, lsl #12
//  0x3a52ec: ldr x1, [x1, #0x998]
//  0x3a52f0: ldr x4, [PP, #0x4c0]
//  0x3a52f4: bl #0x3a1dcc
//  0x3a52f8: ldr BARRIER, [PP, #0x1af8]
//  0x3a52fc: stp BARRIER, x0, [SP]
//  0x3a5300: bl #0x281718
//  0x3a5304: ldr BARRIER, [PP, #0x25e0]
//  0x3a5308: stp BARRIER, x0, [SP]
//  0x3a530c: bl #0x281718
//  0x3a5310: ldur x1, [FP, #-0x10]
//  0x3a5314: stur x0, [FP, #-0x10]
//  0x3a5318: bl #0x3a877c
//  0x3a531c: mov v1.16b, v0.16b
//  0x3a5320: add x17, PP, #0x12, lsl #12
//  0x3a5324: ldr d0, [x17, #0x368]
//  0x3a5328: fsub d2, d1, d0
//  0x3a532c: fmov d1, #0.50000000
//  0x3a5330: fmul d3, d2, d1
//  0x3a5334: stur d3, [FP, #-0x68]
//  0x3a5338: bl #0x31d844
//  0x3a533c: mov x1, x0
//  0x3a5340: ldr x0, [PP, #0x6310]
//  0x3a5344: stur x1, [FP, #-0x20]
//  0x3a5348: stur w0, [x1, #0x27]
//  0x3a534c: fmov d0, #1.00000000
//  0x3a5350: stur d0, [x1, #7]
//  0x3a5354: add x17, PP, #0x11, lsl #12
//  0x3a5358: ldr d1, [x17, #0xb40]
//  0x3a535c: stur d1, [x1, #0xf]
//  0x3a5360: stur d0, [x1, #0x17]
//  0x3a5364: add x17, PP, #0x12, lsl #12
//  0x3a5368: ldr d1, [x17, #0x370]
//  0x3a536c: stur d1, [x1, #0x1f]
//  0x3a5370: bl #0x31abec
//  0x3a5374: mov x1, x0
//  0x3a5378: add x0, NULL, #0x20
//  0x3a537c: stur x1, [FP, #-0x28]
//  0x3a5380: stur w0, [x1, #7]
//  0x3a5384: ldur x2, [FP, #-0x20]
//  0x3a5388: stur w2, [x1, #0xb]
//  0x3a538c: add x2, PP, #0xe, lsl #12
//  0x3a5390: ldr x2, [x2, #0xde8]
//  0x3a5394: stur w2, [x1, #0x1f]
//  0x3a5398: bl #0x31d844
//  0x3a539c: mov x1, x0
//  0x3a53a0: ldr x0, [PP, #0x6310]
//  0x3a53a4: stur x1, [FP, #-0x20]
//  0x3a53a8: stur w0, [x1, #0x27]
//  0x3a53ac: fmov d0, #1.00000000
//  0x3a53b0: stur d0, [x1, #7]
//  0x3a53b4: add x17, PP, #0x10, lsl #12
//  0x3a53b8: ldr d1, [x17, #0xad0]
//  0x3a53bc: stur d1, [x1, #0xf]
//  0x3a53c0: add x17, PP, #0x10, lsl #12
//  0x3a53c4: ldr d2, [x17, #0xad8]
//  0x3a53c8: stur d2, [x1, #0x17]
//  0x3a53cc: add x17, PP, #0x10, lsl #12
//  0x3a53d0: ldr d3, [x17, #0xae0]
//  0x3a53d4: stur d3, [x1, #0x1f]
//  0x3a53d8: bl #0x31abec
//  0x3a53dc: mov x1, x0
//  0x3a53e0: add x0, NULL, #0x20
//  0x3a53e4: stur x1, [FP, #-0x30]
//  0x3a53e8: stur w0, [x1, #7]
//  0x3a53ec: ldur x2, [FP, #-0x20]
//  0x3a53f0: stur w2, [x1, #0xb]
//  0x3a53f4: add x2, PP, #0xe, lsl #12
//  0x3a53f8: ldr x2, [x2, #0xde8]
//  0x3a53fc: stur w2, [x1, #0x1f]
//  0x3a5400: bl #0x31d844
//  0x3a5404: mov x1, x0
//  0x3a5408: ldr x0, [PP, #0x6310]
//  0x3a540c: stur w0, [x1, #0x27]
//  0x3a5410: fmov d1, #1.00000000
//  0x3a5414: stur d1, [x1, #7]
//  0x3a5418: add x17, PP, #0x12, lsl #12
//  0x3a541c: ldr d0, [x17, #0x378]
//  0x3a5420: stur d0, [x1, #0xf]
//  0x3a5424: add x17, PP, #0x10, lsl #12
//  0x3a5428: ldr d2, [x17, #0xae0]
//  0x3a542c: stur d2, [x1, #0x17]
//  0x3a5430: stur xzr, [x1, #0x1f]
//  0x3a5434: ldr d0, [PP, #0x65d0]
//  0x3a5438: bl #0x3a86fc
//  0x3a543c: stur x0, [FP, #-0x20]
//  0x3a5440: bl #0x31d844
//  0x3a5444: mov x1, x0
//  0x3a5448: ldr x0, [PP, #0x6310]
//  0x3a544c: stur x1, [FP, #-0x38]
//  0x3a5450: stur w0, [x1, #0x27]
//  0x3a5454: fmov d0, #1.00000000
//  0x3a5458: stur d0, [x1, #7]
//  0x3a545c: add x17, PP, #0x10, lsl #12
//  0x3a5460: ldr d1, [x17, #0xad0]
//  0x3a5464: stur d1, [x1, #0xf]
//  0x3a5468: add x17, PP, #0x10, lsl #12
//  0x3a546c: ldr d1, [x17, #0xad8]
//  0x3a5470: stur d1, [x1, #0x17]
//  0x3a5474: add x17, PP, #0x10, lsl #12
//  0x3a5478: ldr d1, [x17, #0xae0]
//  0x3a547c: stur d1, [x1, #0x1f]
//  0x3a5480: bl #0x31abec
//  0x3a5484: add x1, NULL, #0x20
//  0x3a5488: stur w1, [x0, #7]
//  0x3a548c: ldur x2, [FP, #-0x38]
//  0x3a5490: stur w2, [x0, #0xb]
//  0x3a5494: add x2, PP, #0xe, lsl #12
//  0x3a5498: ldr x2, [x2, #0xde8]
//  0x3a549c: stur w2, [x0, #0x1f]
//  0x3a54a0: ldur x3, [FP, #-0x18]
//  0x3a54a4: stur w0, [x3, #0x13]
//  0x3a54a8: ldurb w16, [x3, #-1]
//  0x3a54ac: ldurb w17, [x0, #-1]
//  0x3a54b0: and BARRIER, x17, BARRIER, lsr #2
//  0x3a54b4: tst BARRIER, HEAP, lsr #32
//  0x3a54b8: b.eq #0x3a54c0
//  0x3a54bc: bl #0x61e08c
//  0x3a54c0: bl #0x31d844
//  0x3a54c4: mov x1, x0
//  0x3a54c8: ldr x0, [PP, #0x6310]
//  0x3a54cc: stur x1, [FP, #-0x38]
//  0x3a54d0: stur w0, [x1, #0x27]
//  0x3a54d4: fmov d0, #1.00000000
//  0x3a54d8: stur d0, [x1, #7]
//  0x3a54dc: add x17, PP, #0x12, lsl #12
//  0x3a54e0: ldr d0, [x17, #0x380]
//  0x3a54e4: stur d0, [x1, #0xf]
//  0x3a54e8: add x17, PP, #0x12, lsl #12
//  0x3a54ec: ldr d0, [x17, #0x388]
//  0x3a54f0: stur d0, [x1, #0x17]
//  0x3a54f4: add x17, PP, #0x12, lsl #12
//  0x3a54f8: ldr d0, [x17, #0x390]
//  0x3a54fc: stur d0, [x1, #0x1f]
//  0x3a5500: bl #0x31abec
//  0x3a5504: mov x1, x0
//  0x3a5508: add x0, NULL, #0x20
//  0x3a550c: stur x1, [FP, #-0x50]
//  0x3a5510: stur w0, [x1, #7]
//  0x3a5514: ldur x2, [FP, #-0x38]
//  0x3a5518: stur w2, [x1, #0xb]
//  0x3a551c: add x2, PP, #0xe, lsl #12
//  0x3a5520: ldr x2, [x2, #0xde8]
//  0x3a5524: stur w2, [x1, #0x1f]
//  0x3a5528: add x2, PP, #0x11, lsl #12
//  0x3a552c: ldr x2, [x2, #0x590]
//  0x3a5530: stur w2, [x1, #0x13]
//  0x3a5534: ldur x2, [FP, #-8]
//  0x3a5538: ldur w3, [x2, #0x17]
//  0x3a553c: add x3, x3, HEAP, lsl #32
//  0x3a5540: stur x3, [FP, #-0x48]
//  0x3a5544: ldur w4, [x2, #0x1b]
//  0x3a5548: add x4, x4, HEAP, lsl #32
//  0x3a554c: stur x4, [FP, #-0x40]
//  0x3a5550: ldur w5, [x2, #0x13]
//  0x3a5554: add x5, x5, HEAP, lsl #32
//  0x3a5558: stur x5, [FP, #-0x38]
//  0x3a555c: bl #0x391a04
//  0x3a5560: stur x0, [FP, #-0x58]
//  0x3a5564: ldr BARRIER, [PP, #0x5458]
//  0x3a5568: add LR, PP, #0x12, lsl #12
//  0x3a556c: ldr LR, [LR, #0x398]
//  0x3a5570: stp LR, BARRIER, [SP]
//  0x3a5574: mov x1, x0
//  0x3a5578: add x4, PP, #0xa, lsl #12
//  0x3a557c: ldr x4, [x4, #0xc8]
//  0x3a5580: bl #0x391490
//  0x3a5584: ldur x1, [FP, #-0x10]
//  0x3a5588: ldur x2, [FP, #-0x50]
//  0x3a558c: bl #0x3a6828
//  0x3a5590: add x1, PP, #0xf, lsl #12
//  0x3a5594: ldr x1, [x1, #0x5d8]
//  0x3a5598: stur x0, [FP, #-0x10]
//  0x3a559c: bl #0x399e40
//  0x3a55a0: mov x1, x0
//  0x3a55a4: ldr x0, [PP, #0x52c8]
//  0x3a55a8: stur x1, [FP, #-0x50]
//  0x3a55ac: stur w0, [x1, #0x17]
//  0x3a55b0: stur w0, [x1, #0x1b]
//  0x3a55b4: ldur x0, [FP, #-0x10]
//  0x3a55b8: stur w0, [x1, #0xb]
//  0x3a55bc: bl #0x3a67fc
//  0x3a55c0: mov x2, x0
//  0x3a55c4: ldur x0, [FP, #-0x48]
//  0x3a55c8: stur x2, [FP, #-0x60]
//  0x3a55cc: stur w0, [x2, #0xb]
//  0x3a55d0: ldur x0, [FP, #-0x40]
//  0x3a55d4: stur w0, [x2, #0xf]
//  0x3a55d8: add x17, PP, #0x12, lsl #12
//  0x3a55dc: ldr d0, [x17, #0x368]
//  0x3a55e0: stur d0, [x2, #0x13]
//  0x3a55e4: add x0, NULL, #0x20
//  0x3a55e8: stur w0, [x2, #0x1b]
//  0x3a55ec: ldur d0, [FP, #-0x68]
//  0x3a55f0: ldp x0, x1, [THR, #0x50]
//  0x3a55f4: add x0, x0, #0x10
//  0x3a55f8: cmp x1, x0
//  0x3a55fc: b.ls #0x3a5b30
//  0x3a5600: str x0, [THR, #0x50]
//  0x3a5604: sub x0, x0, #0xf
//  0x3a5608: mov x1, #0xe15c
//  0x3a560c: movk x1, #3, lsl #16
//  0x3a5610: stur x1, [x0, #-1]
//  0x3a5614: stur d0, [x0, #7]
//  0x3a5618: stur x0, [FP, #-0x10]
//  0x3a561c: add x1, PP, #0xf, lsl #12
//  0x3a5620: ldr x1, [x1, #0x5d8]
//  0x3a5624: bl #0x399e40
//  0x3a5628: mov x3, x0
//  0x3a562c: ldur x0, [FP, #-0x10]
//  0x3a5630: stur x3, [FP, #-0x40]
//  0x3a5634: stur w0, [x3, #0x13]
//  0x3a5638: add x0, PP, #0x12, lsl #12
//  0x3a563c: ldr x0, [x0, #0x3a0]
//  0x3a5640: stur w0, [x3, #0x17]
//  0x3a5644: ldur x0, [FP, #-0x60]
//  0x3a5648: stur w0, [x3, #0xb]
//  0x3a564c: mov x1, NULL
//  0x3a5650: mov x2, #6
//  0x3a5654: bl #0x61f920
//  0x3a5658: mov x2, x0
//  0x3a565c: ldur x0, [FP, #-0x58]
//  0x3a5660: stur x2, [FP, #-0x10]
//  0x3a5664: stur w0, [x2, #0xf]
//  0x3a5668: ldur x0, [FP, #-0x50]
//  0x3a566c: stur w0, [x2, #0x13]
//  0x3a5670: ldur x0, [FP, #-0x40]
//  0x3a5674: stur w0, [x2, #0x17]
//  0x3a5678: ldr x1, [PP, #0x5c58]
//  0x3a567c: bl #0x61e854
//  0x3a5680: mov x1, x0
//  0x3a5684: ldur x0, [FP, #-0x10]
//  0x3a5688: stur x1, [FP, #-0x40]
//  0x3a568c: stur w0, [x1, #0xf]
//  0x3a5690: mov x2, #6
//  0x3a5694: stur w2, [x1, #0xb]
//  0x3a5698: bl #0x39e6f4
//  0x3a569c: mov x1, x0
//  0x3a56a0: add x0, PP, #0xe, lsl #12
//  0x3a56a4: ldr x0, [x0, #0xf00]
//  0x3a56a8: stur x1, [FP, #-0x10]
//  0x3a56ac: stur w0, [x1, #0xf]
//  0x3a56b0: add x0, PP, #0xe, lsl #12
//  0x3a56b4: ldr x0, [x0, #0xf08]
//  0x3a56b8: stur w0, [x1, #0x17]
//  0x3a56bc: add x0, PP, #0xe, lsl #12
//  0x3a56c0: ldr x0, [x0, #0xf10]
//  0x3a56c4: stur w0, [x1, #0x1b]
//  0x3a56c8: ldur x0, [FP, #-0x40]
//  0x3a56cc: stur w0, [x1, #0xb]
//  0x3a56d0: bl #0x3949ec
//  0x3a56d4: mov x3, x0
//  0x3a56d8: add x0, PP, #0xf, lsl #12
//  0x3a56dc: ldr x0, [x0, #0xbb8]
//  0x3a56e0: stur x3, [FP, #-0x40]
//  0x3a56e4: stur w0, [x3, #0x13]
//  0x3a56e8: mov x1, NULL
//  0x3a56ec: mov x2, #2
//  0x3a56f0: bl #0x61f920
//  0x3a56f4: mov x2, x0
//  0x3a56f8: ldur x0, [FP, #-0x38]
//  0x3a56fc: stur x2, [FP, #-0x48]
//  0x3a5700: stur w0, [x2, #0xf]
//  0x3a5704: ldr x1, [PP, #0x868]
//  0x3a5708: bl #0x61e854
//  0x3a570c: mov x1, x0
//  0x3a5710: ldur x0, [FP, #-0x48]
//  0x3a5714: stur w0, [x1, #0xf]
//  0x3a5718: mov x0, #2
//  0x3a571c: stur w0, [x1, #0xb]
//  0x3a5720: str x1, [SP]
//  0x3a5724: add x1, PP, #0xc, lsl #12
//  0x3a5728: ldr x1, [x1, #0x948]
//  0x3a572c: add x4, PP, #0xf, lsl #12
//  0x3a5730: ldr x4, [x4, #0xf20]
//  0x3a5734: bl #0x3a1dcc
//  0x3a5738: stur x0, [FP, #-0x48]
//  0x3a573c: bl #0x3a67f0
//  0x3a5740: mov x3, x0
//  0x3a5744: ldr x0, [PP, #0x40]
//  0x3a5748: stur x3, [FP, #-0x50]
//  0x3a574c: stur w0, [x3, #0xf]
//  0x3a5750: add x1, PP, #0xf, lsl #12
//  0x3a5754: ldr x1, [x1, #0xb78]
//  0x3a5758: mov x2, #0
//  0x3a575c: bl #0x277268
//  0x3a5760: ldur x1, [FP, #-0x50]
//  0x3a5764: stur w0, [x1, #0x13]
//  0x3a5768: ldurb w16, [x1, #-1]
//  0x3a576c: ldurb w17, [x0, #-1]
//  0x3a5770: and BARRIER, x17, BARRIER, lsr #2
//  0x3a5774: tst BARRIER, HEAP, lsr #32
//  0x3a5778: b.eq #0x3a5780
//  0x3a577c: bl #0x61e04c
//  0x3a5780: ldur x0, [FP, #-0x48]
//  0x3a5784: stur w0, [x1, #7]
//  0x3a5788: ldurb w16, [x1, #-1]
//  0x3a578c: ldurb w17, [x0, #-1]
//  0x3a5790: and BARRIER, x17, BARRIER, lsr #2
//  0x3a5794: tst BARRIER, HEAP, lsr #32
//  0x3a5798: b.eq #0x3a57a0
//  0x3a579c: bl #0x61e04c
//  0x3a57a0: ldur x0, [FP, #-0x38]
//  0x3a57a4: stur w0, [x1, #0xb]
//  0x3a57a8: ldurb w16, [x1, #-1]
//  0x3a57ac: ldurb w17, [x0, #-1]
//  0x3a57b0: and BARRIER, x17, BARRIER, lsr #2
//  0x3a57b4: tst BARRIER, HEAP, lsr #32
//  0x3a57b8: b.eq #0x3a57c0
//  0x3a57bc: bl #0x61e04c
//  0x3a57c0: ldur BARRIER, [FP, #-0x30]
//  0x3a57c4: ldur LR, [FP, #-0x28]
//  0x3a57c8: stp LR, BARRIER, [SP]
//  0x3a57cc: add x4, PP, #0xf, lsl #12
//  0x3a57d0: ldr x4, [x4, #0xb88]
//  0x3a57d4: bl #0x3a5b48
//  0x3a57d8: stur x0, [FP, #-0x28]
//  0x3a57dc: bl #0x393bf8
//  0x3a57e0: mov x1, x0
//  0x3a57e4: ldur x0, [FP, #-0x28]
//  0x3a57e8: stur x1, [FP, #-0x30]
//  0x3a57ec: stur w0, [x1, #0xf]
//  0x3a57f0: ldr x0, [PP, #0x53a8]
//  0x3a57f4: stur w0, [x1, #0x1b]
//  0x3a57f8: bl #0x391c0c
//  0x3a57fc: mov x1, x0
//  0x3a5800: add x0, PP, #0x12, lsl #12
//  0x3a5804: ldr x0, [x0, #0x3a8]
//  0x3a5808: stur x1, [FP, #-0x28]
//  0x3a580c: stur w0, [x1, #0xf]
//  0x3a5810: ldur x0, [FP, #-0x30]
//  0x3a5814: stur w0, [x1, #0xb]
//  0x3a5818: bl #0x3949ec
//  0x3a581c: mov x1, x0
//  0x3a5820: add x0, PP, #0xf, lsl #12
//  0x3a5824: ldr x0, [x0, #0xb90]
//  0x3a5828: stur x1, [FP, #-0x30]
//  0x3a582c: stur w0, [x1, #0x13]
//  0x3a5830: bl #0x3a142c
//  0x3a5834: mov x1, x0
//  0x3a5838: add x0, PP, #0xf, lsl #12
//  0x3a583c: ldr x0, [x0, #0x248]
//  0x3a5840: stur x1, [FP, #-0x38]
//  0x3a5844: stur w0, [x1, #0xb]
//  0x3a5848: add x0, PP, #0xf, lsl #12
//  0x3a584c: ldr x0, [x0, #0x170]
//  0x3a5850: stur w0, [x1, #0xf]
//  0x3a5854: add x0, PP, #0x12, lsl #12
//  0x3a5858: ldr x0, [x0, #0x3b0]
//  0x3a585c: stur w0, [x1, #0x13]
//  0x3a5860: stur w0, [x1, #0x17]
//  0x3a5864: bl #0x3949ec
//  0x3a5868: mov x1, x0
//  0x3a586c: add x0, PP, #0x12, lsl #12
//  0x3a5870: ldr x0, [x0, #0x338]
//  0x3a5874: stur x1, [FP, #-0x50]
//  0x3a5878: stur w0, [x1, #0xf]
//  0x3a587c: ldur x0, [FP, #-8]
//  0x3a5880: ldur w2, [x0, #0xb]
//  0x3a5884: add x2, x2, HEAP, lsl #32
//  0x3a5888: stur x2, [FP, #-0x48]
//  0x3a588c: bl #0x393bf8
//  0x3a5890: mov x1, x0
//  0x3a5894: ldur x0, [FP, #-0x48]
//  0x3a5898: stur x1, [FP, #-0x58]
//  0x3a589c: stur w0, [x1, #0xb]
//  0x3a58a0: ldur x0, [FP, #-0x20]
//  0x3a58a4: stur w0, [x1, #0x13]
//  0x3a58a8: bl #0x391a04
//  0x3a58ac: stur x0, [FP, #-0x20]
//  0x3a58b0: ldur BARRIER, [FP, #-0x58]
//  0x3a58b4: str BARRIER, [SP]
//  0x3a58b8: mov x1, x0
//  0x3a58bc: add x4, PP, #0xc, lsl #12
//  0x3a58c0: ldr x4, [x4, #0x1f8]
//  0x3a58c4: bl #0x391490
//  0x3a58c8: mov x1, NULL
//  0x3a58cc: mov x2, #6
//  0x3a58d0: bl #0x61f920
//  0x3a58d4: mov x2, x0
//  0x3a58d8: ldur x0, [FP, #-0x38]
//  0x3a58dc: stur x2, [FP, #-0x48]
//  0x3a58e0: stur w0, [x2, #0xf]
//  0x3a58e4: ldur x0, [FP, #-0x50]
//  0x3a58e8: stur w0, [x2, #0x13]
//  0x3a58ec: ldur x0, [FP, #-0x20]
//  0x3a58f0: stur w0, [x2, #0x17]
//  0x3a58f4: ldr x1, [PP, #0x5c58]
//  0x3a58f8: bl #0x61e854
//  0x3a58fc: mov x1, x0
//  0x3a5900: ldur x0, [FP, #-0x48]
//  0x3a5904: stur x1, [FP, #-0x20]
//  0x3a5908: stur w0, [x1, #0xf]
//  0x3a590c: mov x0, #6
//  0x3a5910: stur w0, [x1, #0xb]
//  0x3a5914: bl #0x3a1414
//  0x3a5918: mov x1, x0
//  0x3a591c: ldr x0, [PP, #0x5140]
//  0x3a5920: stur x1, [FP, #-0x38]
//  0x3a5924: stur w0, [x1, #0xf]
//  0x3a5928: add x0, PP, #0xf, lsl #12
//  0x3a592c: ldr x0, [x0, #0x288]
//  0x3a5930: stur w0, [x1, #0x13]
//  0x3a5934: add x0, PP, #0xe, lsl #12
//  0x3a5938: ldr x0, [x0, #0xae8]
//  0x3a593c: stur w0, [x1, #0x17]
//  0x3a5940: add x2, PP, #0xe, lsl #12
//  0x3a5944: ldr x2, [x2, #0xb60]
//  0x3a5948: stur w2, [x1, #0x1b]
//  0x3a594c: add x3, PP, #0xe, lsl #12
//  0x3a5950: ldr x3, [x3, #0xaf8]
//  0x3a5954: stur w3, [x1, #0x23]
//  0x3a5958: add x4, PP, #0xa, lsl #12
//  0x3a595c: ldr x4, [x4, #0xa8]
//  0x3a5960: stur w4, [x1, #0x2b]
//  0x3a5964: stur xzr, [x1, #0x2f]
//  0x3a5968: ldur x5, [FP, #-0x20]
//  0x3a596c: stur w5, [x1, #0xb]
//  0x3a5970: bl #0x391a04
//  0x3a5974: stur x0, [FP, #-0x20]
//  0x3a5978: ldur BARRIER, [FP, #-0x38]
//  0x3a597c: str BARRIER, [SP]
//  0x3a5980: mov x1, x0
//  0x3a5984: add x4, PP, #0xc, lsl #12
//  0x3a5988: ldr x4, [x4, #0x1f8]
//  0x3a598c: bl #0x391490
//  0x3a5990: bl #0x3949ec
//  0x3a5994: mov x3, x0
//  0x3a5998: add x0, PP, #0xe, lsl #12
//  0x3a599c: ldr x0, [x0, #0xb50]
//  0x3a59a0: stur x3, [FP, #-0x48]
//  0x3a59a4: stur w0, [x3, #0x13]
//  0x3a59a8: ldur x0, [FP, #-8]
//  0x3a59ac: ldur w4, [x0, #0x27]
//  0x3a59b0: add x4, x4, HEAP, lsl #32
//  0x3a59b4: ldur x2, [FP, #-0x18]
//  0x3a59b8: stur x4, [FP, #-0x38]
//  0x3a59bc: add x1, PP, #0x12, lsl #12
//  0x3a59c0: ldr x1, [x1, #0x3b8]
//  0x3a59c4: bl #0x61ec54
//  0x3a59c8: add BARRIER, PP, #0x12, lsl #12
//  0x3a59cc: ldr BARRIER, [BARRIER, #0x3c0]
//  0x3a59d0: ldur LR, [FP, #-0x38]
//  0x3a59d4: stp LR, BARRIER, [SP, #8]
//  0x3a59d8: str x0, [SP]
//  0x3a59dc: ldr x4, [PP, #0x58]
//  0x3a59e0: bl #0x3bd500
//  0x3a59e4: ldur w1, [x0, #7]
//  0x3a59e8: add x1, x1, HEAP, lsl #32
//  0x3a59ec: mov x2, x0
//  0x3a59f0: bl #0x276db0
//  0x3a59f4: stur x0, [FP, #-8]
//  0x3a59f8: bl #0x39310c
//  0x3a59fc: mov x3, x0
//  0x3a5a00: add x0, PP, #0xa, lsl #12
//  0x3a5a04: ldr x0, [x0, #0x858]
//  0x3a5a08: stur x3, [FP, #-0x18]
//  0x3a5a0c: stur w0, [x3, #0xf]
//  0x3a5a10: add x4, PP, #0xe, lsl #12
//  0x3a5a14: ldr x4, [x4, #0xae0]
//  0x3a5a18: stur w4, [x3, #0x13]
//  0x3a5a1c: add x5, PP, #0xe, lsl #12
//  0x3a5a20: ldr x5, [x5, #0xae8]
//  0x3a5a24: stur w5, [x3, #0x17]
//  0x3a5a28: add x6, PP, #0xe, lsl #12
//  0x3a5a2c: ldr x6, [x6, #0xb60]
//  0x3a5a30: stur w6, [x3, #0x1b]
//  0x3a5a34: add x7, PP, #0xe, lsl #12
//  0x3a5a38: ldr x7, [x7, #0xaf8]
//  0x3a5a3c: stur w7, [x3, #0x23]
//  0x3a5a40: add x8, PP, #0xa, lsl #12
//  0x3a5a44: ldr x8, [x8, #0xa8]
//  0x3a5a48: stur w8, [x3, #0x2b]
//  0x3a5a4c: stur xzr, [x3, #0x2f]
//  0x3a5a50: ldur x1, [FP, #-8]
//  0x3a5a54: stur w1, [x3, #0xb]
//  0x3a5a58: mov x1, NULL
//  0x3a5a5c: mov x2, #0xe
//  0x3a5a60: bl #0x61f920
//  0x3a5a64: mov x2, x0
//  0x3a5a68: ldur x0, [FP, #-0x10]
//  0x3a5a6c: stur x2, [FP, #-8]
//  0x3a5a70: stur w0, [x2, #0xf]
//  0x3a5a74: ldur x0, [FP, #-0x40]
//  0x3a5a78: stur w0, [x2, #0x13]
//  0x3a5a7c: ldur x0, [FP, #-0x28]
//  0x3a5a80: stur w0, [x2, #0x17]
//  0x3a5a84: ldur x0, [FP, #-0x30]
//  0x3a5a88: stur w0, [x2, #0x1b]
//  0x3a5a8c: ldur x0, [FP, #-0x20]
//  0x3a5a90: stur w0, [x2, #0x1f]
//  0x3a5a94: ldur x0, [FP, #-0x48]
//  0x3a5a98: stur w0, [x2, #0x23]
//  0x3a5a9c: ldur x0, [FP, #-0x18]
//  0x3a5aa0: stur w0, [x2, #0x27]
//  0x3a5aa4: ldr x1, [PP, #0x5c58]
//  0x3a5aa8: bl #0x61e854
//  0x3a5aac: mov x1, x0
//  0x3a5ab0: ldur x0, [FP, #-8]
//  0x3a5ab4: stur x1, [FP, #-0x10]
//  0x3a5ab8: stur w0, [x1, #0xf]
//  0x3a5abc: mov x0, #0xe
//  0x3a5ac0: stur w0, [x1, #0xb]
//  0x3a5ac4: bl #0x39310c
//  0x3a5ac8: add x1, PP, #0xa, lsl #12
//  0x3a5acc: ldr x1, [x1, #0x858]
//  0x3a5ad0: stur w1, [x0, #0xf]
//  0x3a5ad4: add x1, PP, #0xe, lsl #12
//  0x3a5ad8: ldr x1, [x1, #0xae0]
//  0x3a5adc: stur w1, [x0, #0x13]
//  0x3a5ae0: add x1, PP, #0xe, lsl #12
//  0x3a5ae4: ldr x1, [x1, #0xae8]
//  0x3a5ae8: stur w1, [x0, #0x17]
//  0x3a5aec: add x1, PP, #0xe, lsl #12
//  0x3a5af0: ldr x1, [x1, #0xb60]
//  0x3a5af4: stur w1, [x0, #0x1b]
//  0x3a5af8: add x1, PP, #0xe, lsl #12
//  0x3a5afc: ldr x1, [x1, #0xaf8]
//  0x3a5b00: stur w1, [x0, #0x23]
//  0x3a5b04: add x1, PP, #0xa, lsl #12
//  0x3a5b08: ldr x1, [x1, #0xa8]
//  0x3a5b0c: stur w1, [x0, #0x2b]
//  0x3a5b10: stur xzr, [x0, #0x2f]
//  0x3a5b14: ldur x1, [FP, #-0x10]
//  0x3a5b18: stur w1, [x0, #0xb]
//  0x3a5b1c: mov SP, FP
//  0x3a5b20: ldp FP, LR, [SP], #0x10
//  0x3a5b24: ret 
//  0x3a5b28: bl #0x61fa28
//  0x3a5b2c: b #0x3a52d0
//  0x3a5b30: str q0, [SP, #-0x10]!
//  0x3a5b34: str x2, [SP, #-8]!
//  0x3a5b38: bl #0x61f878
//  0x3a5b3c: ldr x2, [SP], #8
//  0x3a5b40: ldr q0, [SP], #0x10
//  0x3a5b44: b #0x3a5614
//
dynamic PagePartyLotteryWinnerInfo_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic d3;
  dynamic q0;
  dynamic v1_16b;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w2;
  dynamic w3;
  dynamic w4;
  dynamic w5;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x7;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a52a8
  // frame: FP = SP // 0x3a52ac
  // frame: SP = SP - 0x80 // 0x3a52b0
  x0 = x1; // 0x3a52b4
  local_m8 = x1; // 0x3a52b8
  x1 = x2; // 0x3a52bc
  local_m10 = x2; // 0x3a52c0
  BARRIER = mem(THR, 0x38); // 0x3a52c4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a5b28
  }
  x1 = 2; // 0x3a52d0
  sub_0x61e890(); // 0x3a52d4
  x0 = local_m8; // 0x3a52dc
  x2 = x0; // 0x3a52d8
  local_m18 = x2; // 0x3a52e0
  memSet(x2, 0xf, w0); // 0x3a52e4
  x1 = "virtual_party_lucky_pocket_receive_popup_my_wallet" /* pp+0xc998 */; // 0x3a52ec
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3a52f0
  getString() /* 0x3a1dcc */; // 0x3a52f4
  BARRIER = " " /* pp+0x1af8 */; // 0x3a52f8
  // frame: BARRIER, x0, mem(SP) // 0x3a52fc
  StringBase_op_add() /* 0x281718 */; // 0x3a5300
  BARRIER = ">" /* pp+0x25e0 */; // 0x3a5304
  // frame: BARRIER, x0, mem(SP) // 0x3a5308
  StringBase_op_add() /* 0x281718 */; // 0x3a530c
  x1 = local_m10; // 0x3a5310
  local_m10 = x0; // 0x3a5314
  ScreenUtil_getScreenWidth() /* 0x3a877c */; // 0x3a5318
  d0 = 4633359591634108416; // 0x3a5324
  d1 = 0.50000000 /* bits */; // 0x3a532c
  d2 = (d1 - d0) /* float */; // 0x3a5328
  d3 = (((d1 - d0) /* float */) * (0.50000000 /* bits */)) /* float */; // 0x3a5330
  v1_16b = v0_16b; // 0x3a531c
  x17 = PP + 0x12000; // 0x3a5320
  local_m68 = d3; // 0x3a5334
  AllocationStub_Color() /* 0x31d844 */; // 0x3a5338
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a5340
  x1 = x0; // 0x3a533c
  local_m20 = x1; // 0x3a5344
  memSet(x1, 0x27, w0); // 0x3a5348
  d0 = 1.00000000 /* bits */; // 0x3a534c
  memSet(x1, 7, d0); // 0x3a5350
  d1 = 4607041129399943039; // 0x3a5358
  x17 = PP + 0x11000; // 0x3a5354
  memSet(x1, 0xf, d1); // 0x3a535c
  memSet(x1, 0x17, d0); // 0x3a5360
  d1 = 4603014381497823537; // 0x3a5368
  x17 = PP + 0x12000; // 0x3a5364
  memSet(x1, 0x1f, d1); // 0x3a536c
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3a5370
  x0 = NULL + 0x20; // 0x3a5378
  x1 = x0; // 0x3a5374
  local_m28 = x1; // 0x3a537c
  memSet(x1, 7, w0); // 0x3a5380
  x2 = local_m20; // 0x3a5384
  memSet(x1, 0xb, w2); // 0x3a5388
  x2 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x3a5390
  memSet(x1, 0x1f, w2); // 0x3a5394
  AllocationStub_Color() /* 0x31d844 */; // 0x3a5398
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a53a0
  x1 = x0; // 0x3a539c
  local_m20 = x1; // 0x3a53a4
  memSet(x1, 0x27, w0); // 0x3a53a8
  d0 = 1.00000000 /* bits */; // 0x3a53ac
  memSet(x1, 7, d0); // 0x3a53b0
  d1 = 4603614861448139603; // 0x3a53b8
  x17 = PP + 0x10000; // 0x3a53b4
  memSet(x1, 0xf, d1); // 0x3a53bc
  d2 = 4598546104220471633; // 0x3a53c4
  x17 = PP + 0x10000; // 0x3a53c0
  memSet(x1, 0x17, d2); // 0x3a53c8
  d3 = 4583569427812588572; // 0x3a53d0
  x17 = PP + 0x10000; // 0x3a53cc
  memSet(x1, 0x1f, d3); // 0x3a53d4
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3a53d8
  x0 = NULL + 0x20; // 0x3a53e0
  x1 = x0; // 0x3a53dc
  local_m30 = x1; // 0x3a53e4
  memSet(x1, 7, w0); // 0x3a53e8
  x2 = local_m20; // 0x3a53ec
  memSet(x1, 0xb, w2); // 0x3a53f0
  x2 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x3a53f8
  memSet(x1, 0x1f, w2); // 0x3a53fc
  AllocationStub_Color() /* 0x31d844 */; // 0x3a5400
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a5408
  x1 = x0; // 0x3a5404
  memSet(x1, 0x27, w0); // 0x3a540c
  d1 = 1.00000000 /* bits */; // 0x3a5410
  memSet(x1, 7, d1); // 0x3a5414
  d0 = 4599252551220843476; // 0x3a541c
  x17 = PP + 0x12000; // 0x3a5418
  memSet(x1, 0xf, d0); // 0x3a5420
  d2 = 4583569427812588572; // 0x3a5428
  x17 = PP + 0x10000; // 0x3a5424
  memSet(x1, 0x17, d2); // 0x3a542c
  memSet(x1, 0x1f, xzr); // 0x3a5430
  d0 = 4630826316843712512; // 0x3a5434
  TextStyles_fontDINCondensedBold() /* 0x3a86fc */; // 0x3a5438
  local_m20 = x0; // 0x3a543c
  AllocationStub_Color() /* 0x31d844 */; // 0x3a5440
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a5448
  x1 = x0; // 0x3a5444
  local_m38 = x1; // 0x3a544c
  memSet(x1, 0x27, w0); // 0x3a5450
  d0 = 1.00000000 /* bits */; // 0x3a5454
  memSet(x1, 7, d0); // 0x3a5458
  d1 = 4603614861448139603; // 0x3a5460
  x17 = PP + 0x10000; // 0x3a545c
  memSet(x1, 0xf, d1); // 0x3a5464
  d1 = 4598546104220471633; // 0x3a546c
  x17 = PP + 0x10000; // 0x3a5468
  memSet(x1, 0x17, d1); // 0x3a5470
  d1 = 4583569427812588572; // 0x3a5478
  x17 = PP + 0x10000; // 0x3a5474
  memSet(x1, 0x1f, d1); // 0x3a547c
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3a5480
  x1 = NULL + 0x20; // 0x3a5484
  memSet(x0, 7, w1); // 0x3a5488
  x2 = local_m38; // 0x3a548c
  memSet(x0, 0xb, w2); // 0x3a5490
  x2 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x3a5498
  memSet(x0, 0x1f, w2); // 0x3a549c
  x3 = local_m18; // 0x3a54a0
  memSet(x3, 0x13, w0); // 0x3a54a4
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3a54b0
  w16 = mem(x3, -1); // 0x3a54a8
  w17 = mem(x0, -1); // 0x3a54ac
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x3a54a8
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3a54ac
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x3a54bc
  }
  AllocationStub_Color() /* 0x31d844 */; // 0x3a54c0
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a54c8
  x1 = x0; // 0x3a54c4
  local_m38 = x1; // 0x3a54cc
  memSet(x1, 0x27, w0); // 0x3a54d0
  d0 = 1.00000000 /* bits */; // 0x3a54d4
  memSet(x1, 7, d0); // 0x3a54d8
  d0 = 4606052103599422460; // 0x3a54e0
  x17 = PP + 0x12000; // 0x3a54dc
  memSet(x1, 0xf, d0); // 0x3a54e4
  d0 = 4605027755448883288; // 0x3a54ec
  x17 = PP + 0x12000; // 0x3a54e8
  memSet(x1, 0x17, d0); // 0x3a54f0
  d0 = 4596515069094402586; // 0x3a54f8
  x17 = PP + 0x12000; // 0x3a54f4
  memSet(x1, 0x1f, d0); // 0x3a54fc
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3a5500
  x0 = NULL + 0x20; // 0x3a5508
  x1 = x0; // 0x3a5504
  local_m50 = x1; // 0x3a550c
  memSet(x1, 7, w0); // 0x3a5510
  x2 = local_m38; // 0x3a5514
  memSet(x1, 0xb, w2); // 0x3a5518
  x2 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x3a5520
  memSet(x1, 0x1f, w2); // 0x3a5524
  x2 = "Robot" /* pp+0x11590 */; // 0x3a552c
  memSet(x1, 0x13, w2); // 0x3a5530
  w3 = mem((local_m8), 0x17); // 0x3a5538
  x2 = local_m8; // 0x3a5534
  x3 = ((mem((local_m8), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3a553c
  local_m48 = x3; // 0x3a5540
  w4 = mem(x2, 0x1b); // 0x3a5544
  x4 = ((mem(x2, 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x3a5548
  local_m40 = x4; // 0x3a554c
  w5 = mem(x2, 0x13); // 0x3a5550
  x5 = ((mem(x2, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x3a5554
  local_m38 = x5; // 0x3a5558
  AllocationStub_Container() /* 0x391a04 */; // 0x3a555c
  local_m58 = x0; // 0x3a5560
  BARRIER = mem(PP, 0x5458) /* Double */; // 0x3a5564
  LR = mem((PP + 0x12000), 0x398) /* Double */; // 0x3a556c
  // frame: LR, BARRIER, mem(SP) // 0x3a5570
  x1 = x0; // 0x3a5574
  x4 = mem((PP + 0xa000), 0xc8) /* ImmutableArray */; // 0x3a557c
  Container_ctor() /* 0x391490 */; // 0x3a5580
  x1 = local_m10; // 0x3a5584
  x2 = local_m50; // 0x3a5588
  myWallet() /* 0x3a6828 */; // 0x3a558c
  x1 = mem((PP + 0xf000), 0x5d8) /* TypeArguments */; // 0x3a5594
  local_m10 = x0; // 0x3a5598
  AllocationStub_Positioned() /* 0x399e40 */; // 0x3a559c
  x0 = mem(PP, 0x52c8) /* Double */; // 0x3a55a4
  x1 = x0; // 0x3a55a0
  local_m50 = x1; // 0x3a55a8
  memSet(x1, 0x17, w0); // 0x3a55ac
  memSet(x1, 0x1b, w0); // 0x3a55b0
  x0 = local_m10; // 0x3a55b4
  memSet(x1, 0xb, w0); // 0x3a55b8
  AllocationStub_SoulAvatarImage() /* 0x3a67fc */; // 0x3a55bc
  x0 = local_m48; // 0x3a55c4
  x2 = x0; // 0x3a55c0
  local_m60 = x2; // 0x3a55c8
  memSet(x2, 0xb, w0); // 0x3a55cc
  x0 = local_m40; // 0x3a55d0
  memSet(x2, 0xf, w0); // 0x3a55d4
  d0 = 4633359591634108416; // 0x3a55dc
  x17 = PP + 0x12000; // 0x3a55d8
  memSet(x2, 0x13, d0); // 0x3a55e0
  x0 = NULL + 0x20; // 0x3a55e4
  memSet(x2, 0x1b, w0); // 0x3a55e8
  d0 = local_m68; // 0x3a55ec
  memRead2(THR, 0x50, x0, x1); // 0x3a55f0
  x0 = x0 + 0x10; // 0x3a55f4
  if (x1 <= x0) {
    local_m10 = q0; // 0x3a5b30
    local_m8 = x2; // 0x3a5b34
    AllocationStub__Double() /* 0x61f878 */; // 0x3a5b38
    q0 = local_0; // 0x3a5b40
    x2 = local_0; // 0x3a5b3c
  } else {
    memSet(THR, 0x50, x0); // 0x3a5600
    x0 = x0 - 0xf; // 0x3a5604
    x1 = (x1 & 0xffff) | 0x30000; // 0x3a560c
    memSet(x0, -1, x1); // 0x3a5610
  }
  memSet(x0, 7, d0); // 0x3a5614
  local_m10 = x0; // 0x3a5618
  x1 = mem((PP + 0xf000), 0x5d8) /* TypeArguments */; // 0x3a5620
  AllocationStub_Positioned() /* 0x399e40 */; // 0x3a5624
  x0 = local_m10; // 0x3a562c
  x3 = x0; // 0x3a5628
  local_m40 = x3; // 0x3a5630
  memSet(x3, 0x13, w0); // 0x3a5634
  x0 = mem((PP + 0x12000), 0x3a0) /* Double */; // 0x3a563c
  memSet(x3, 0x17, w0); // 0x3a5640
  x0 = local_m60; // 0x3a5644
  memSet(x3, 0xb, w0); // 0x3a5648
  x1 = NULL; // 0x3a564c
  x2 = 6; // 0x3a5650
  sub_0x61f920(); // 0x3a5654
  x0 = local_m58; // 0x3a565c
  x2 = x0; // 0x3a5658
  local_m10 = x2; // 0x3a5660
  memSet(x2, 0xf, w0); // 0x3a5664
  x0 = local_m50; // 0x3a5668
  memSet(x2, 0x13, w0); // 0x3a566c
  x0 = local_m40; // 0x3a5670
  memSet(x2, 0x17, w0); // 0x3a5674
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3a5678
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3a567c
  x0 = local_m10; // 0x3a5684
  x1 = x0; // 0x3a5680
  local_m40 = x1; // 0x3a5688
  memSet(x1, 0xf, w0); // 0x3a568c
  x2 = 6; // 0x3a5690
  memSet(x1, 0xb, w2); // 0x3a5694
  AllocationStub_Stack() /* 0x39e6f4 */; // 0x3a5698
  x0 = mem((PP + 0xe000), 0xf00) /* Obj!AlignmentDirectional@11bd4  */; // 0x3a56a4
  x1 = x0; // 0x3a569c
  local_m10 = x1; // 0x3a56a8
  memSet(x1, 0xf, w0); // 0x3a56ac
  x0 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x3a56b4
  memSet(x1, 0x17, w0); // 0x3a56b8
  x0 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x3a56c0
  memSet(x1, 0x1b, w0); // 0x3a56c4
  x0 = local_m40; // 0x3a56c8
  memSet(x1, 0xb, w0); // 0x3a56cc
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x3a56d0
  x0 = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x3a56dc
  x3 = x0; // 0x3a56d4
  local_m40 = x3; // 0x3a56e0
  memSet(x3, 0x13, w0); // 0x3a56e4
  x1 = NULL; // 0x3a56e8
  x2 = 2; // 0x3a56ec
  sub_0x61f920(); // 0x3a56f0
  x0 = local_m38; // 0x3a56f8
  x2 = x0; // 0x3a56f4
  local_m48 = x2; // 0x3a56fc
  memSet(x2, 0xf, w0); // 0x3a5700
  x1 = mem(PP, 0x868) /* TypeArguments */; // 0x3a5704
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3a5708
  x0 = local_m48; // 0x3a5710
  x1 = x0; // 0x3a570c
  memSet(x1, 0xf, w0); // 0x3a5714
  x0 = 2; // 0x3a5718
  memSet(x1, 0xb, w0); // 0x3a571c
  local_0 = x1; // 0x3a5720
  x1 = "virtual_party_lucky_pocket_receive_popup_best_luck_congrats_..." /* pp+0xc948 */; // 0x3a5728
  x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x3a5730
  getString() /* 0x3a1dcc */; // 0x3a5734
  local_m48 = x0; // 0x3a5738
  AllocationStub_HighlightTextParser() /* 0x3a67f0 */; // 0x3a573c
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x3a5744
  x3 = x0; // 0x3a5740
  local_m50 = x3; // 0x3a5748
  memSet(x3, 0xf, w0); // 0x3a574c
  x1 = mem((PP + 0xf000), 0xb78) /* TypeArguments */; // 0x3a5754
  x2 = 0; // 0x3a5758
  GrowableList_factory_ctor() /* 0x277268 */; // 0x3a575c
  x1 = local_m50; // 0x3a5760
  memSet(x1, 0x13, w0); // 0x3a5764
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3a5770
  w16 = mem(x1, -1); // 0x3a5768
  w17 = mem(x0, -1); // 0x3a576c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x3a5768
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3a576c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x3a577c
  }
  x0 = local_m48; // 0x3a5780
  memSet(x1, 7, w0); // 0x3a5784
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3a5790
  w16 = mem(x1, -1); // 0x3a5788
  w17 = mem(x0, -1); // 0x3a578c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x3a5788
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3a578c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x3a579c
  }
  x0 = local_m38; // 0x3a57a0
  memSet(x1, 0xb, w0); // 0x3a57a4
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3a57b0
  w16 = mem(x1, -1); // 0x3a57a8
  w17 = mem(x0, -1); // 0x3a57ac
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x3a57a8
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3a57ac
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x3a57bc
  }
  BARRIER = local_m30; // 0x3a57c0
  LR = local_m28; // 0x3a57c4
  // frame: LR, BARRIER, mem(SP) // 0x3a57c8
  x4 = mem((PP + 0xf000), 0xb88) /* ImmutableArray */; // 0x3a57d0
  HighlightTextParser_parser() /* 0x3a5b48 */; // 0x3a57d4
  local_m28 = x0; // 0x3a57d8
  AllocationStub_Text() /* 0x393bf8 */; // 0x3a57dc
  x0 = local_m28; // 0x3a57e4
  x1 = x0; // 0x3a57e0
  local_m30 = x1; // 0x3a57e8
  memSet(x1, 0xf, w0); // 0x3a57ec
  x0 = mem(PP, 0x53a8) /* Obj!TextAlign@12316  */; // 0x3a57f0
  memSet(x1, 0x1b, w0); // 0x3a57f4
  AllocationStub_Padding() /* 0x391c0c */; // 0x3a57f8
  x0 = mem((PP + 0x12000), 0x3a8) /* Obj!EdgeInsets@11b85  */; // 0x3a5804
  x1 = x0; // 0x3a57fc
  local_m28 = x1; // 0x3a5808
  memSet(x1, 0xf, w0); // 0x3a580c
  x0 = local_m30; // 0x3a5810
  memSet(x1, 0xb, w0); // 0x3a5814
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x3a5818
  x0 = mem((PP + 0xf000), 0xb90) /* Double */; // 0x3a5824
  x1 = x0; // 0x3a581c
  local_m30 = x1; // 0x3a5828
  memSet(x1, 0x13, w0); // 0x3a582c
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x3a5830
  x0 = "assets/images/3.0x/party_icon_soulcoin_big.webp" /* pp+0xf248 */; // 0x3a583c
  x1 = x0; // 0x3a5834
  local_m38 = x1; // 0x3a5840
  memSet(x1, 0xb, w0); // 0x3a5844
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x3a584c
  memSet(x1, 0xf, w0); // 0x3a5850
  x0 = mem((PP + 0x12000), 0x3b0) /* Double */; // 0x3a5858
  memSet(x1, 0x13, w0); // 0x3a585c
  memSet(x1, 0x17, w0); // 0x3a5860
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x3a5864
  x0 = mem((PP + 0x12000), 0x338) /* Double */; // 0x3a5870
  x1 = x0; // 0x3a5868
  local_m50 = x1; // 0x3a5874
  memSet(x1, 0xf, w0); // 0x3a5878
  w2 = mem((local_m8), 0xb); // 0x3a5880
  x0 = local_m8; // 0x3a587c
  x2 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3a5884
  local_m48 = x2; // 0x3a5888
  AllocationStub_Text() /* 0x393bf8 */; // 0x3a588c
  x0 = local_m48; // 0x3a5894
  x1 = x0; // 0x3a5890
  local_m58 = x1; // 0x3a5898
  memSet(x1, 0xb, w0); // 0x3a589c
  x0 = local_m20; // 0x3a58a0
  memSet(x1, 0x13, w0); // 0x3a58a4
  AllocationStub_Container() /* 0x391a04 */; // 0x3a58a8
  local_m20 = x0; // 0x3a58ac
  BARRIER = local_m58; // 0x3a58b0
  local_0 = BARRIER; // 0x3a58b4
  x1 = x0; // 0x3a58b8
  x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x3a58c0
  Container_ctor() /* 0x391490 */; // 0x3a58c4
  x1 = NULL; // 0x3a58c8
  x2 = 6; // 0x3a58cc
  sub_0x61f920(); // 0x3a58d0
  x0 = local_m38; // 0x3a58d8
  x2 = x0; // 0x3a58d4
  local_m48 = x2; // 0x3a58dc
  memSet(x2, 0xf, w0); // 0x3a58e0
  x0 = local_m50; // 0x3a58e4
  memSet(x2, 0x13, w0); // 0x3a58e8
  x0 = local_m20; // 0x3a58ec
  memSet(x2, 0x17, w0); // 0x3a58f0
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3a58f4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3a58f8
  x0 = local_m48; // 0x3a5900
  x1 = x0; // 0x3a58fc
  local_m20 = x1; // 0x3a5904
  memSet(x1, 0xf, w0); // 0x3a5908
  x0 = 6; // 0x3a590c
  memSet(x1, 0xb, w0); // 0x3a5910
  AllocationStub_Row() /* 0x3a1414 */; // 0x3a5914
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x3a591c
  x1 = x0; // 0x3a5918
  local_m38 = x1; // 0x3a5920
  memSet(x1, 0xf, w0); // 0x3a5924
  x0 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x3a592c
  memSet(x1, 0x13, w0); // 0x3a5930
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3a5938
  memSet(x1, 0x17, w0); // 0x3a593c
  x2 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3a5944
  memSet(x1, 0x1b, w2); // 0x3a5948
  x3 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3a5950
  memSet(x1, 0x23, w3); // 0x3a5954
  x4 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3a595c
  memSet(x1, 0x2b, w4); // 0x3a5960
  memSet(x1, 0x2f, xzr); // 0x3a5964
  x5 = local_m20; // 0x3a5968
  memSet(x1, 0xb, w5); // 0x3a596c
  AllocationStub_Container() /* 0x391a04 */; // 0x3a5970
  local_m20 = x0; // 0x3a5974
  BARRIER = local_m38; // 0x3a5978
  local_0 = BARRIER; // 0x3a597c
  x1 = x0; // 0x3a5980
  x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x3a5988
  Container_ctor() /* 0x391490 */; // 0x3a598c
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x3a5990
  x0 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x3a599c
  x3 = x0; // 0x3a5994
  local_m48 = x3; // 0x3a59a0
  memSet(x3, 0x13, w0); // 0x3a59a4
  w4 = mem((local_m8), 0x27); // 0x3a59ac
  x0 = local_m8; // 0x3a59a8
  x2 = local_m18; // 0x3a59b4
  x4 = ((mem((local_m8), 0x27)) & 0xffffffff) + (HEAP << 32); // 0x3a59b0
  local_m38 = x4; // 0x3a59b8
  x1 = mem((PP + 0x12000), 0x3b8) /* Function */; // 0x3a59c0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3a59c4
  BARRIER = mem((PP + 0x12000), 0x3c0) /* TypeArguments */; // 0x3a59cc
  LR = local_m38; // 0x3a59d0
  // frame: LR, BARRIER, mem(SP, 8) // 0x3a59d4
  local_0 = x0; // 0x3a59d8
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x3a59dc
  ListBase_map() /* 0x3bd500 */; // 0x3a59e0
  w1 = mem(x0, 7); // 0x3a59e4
  x1 = ((mem(x0, 7)) & 0xffffffff) + (HEAP << 32); // 0x3a59e8
  x2 = x0; // 0x3a59ec
  GrowableList_factory_ctor_of() /* 0x276db0 */; // 0x3a59f0
  local_m8 = x0; // 0x3a59f4
  AllocationStub_Column() /* 0x39310c */; // 0x3a59f8
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3a5a04
  x3 = x0; // 0x3a59fc
  local_m18 = x3; // 0x3a5a08
  memSet(x3, 0xf, w0); // 0x3a5a0c
  x4 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3a5a14
  memSet(x3, 0x13, w4); // 0x3a5a18
  x5 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3a5a20
  memSet(x3, 0x17, w5); // 0x3a5a24
  x6 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3a5a2c
  memSet(x3, 0x1b, w6); // 0x3a5a30
  x7 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3a5a38
  memSet(x3, 0x23, w7); // 0x3a5a3c
  x8 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3a5a44
  memSet(x3, 0x2b, w8); // 0x3a5a48
  memSet(x3, 0x2f, xzr); // 0x3a5a4c
  x1 = local_m8; // 0x3a5a50
  memSet(x3, 0xb, w1); // 0x3a5a54
  x1 = NULL; // 0x3a5a58
  x2 = 14; // 0x3a5a5c
  sub_0x61f920(); // 0x3a5a60
  x0 = local_m10; // 0x3a5a68
  x2 = x0; // 0x3a5a64
  local_m8 = x2; // 0x3a5a6c
  memSet(x2, 0xf, w0); // 0x3a5a70
  x0 = local_m40; // 0x3a5a74
  memSet(x2, 0x13, w0); // 0x3a5a78
  x0 = local_m28; // 0x3a5a7c
  memSet(x2, 0x17, w0); // 0x3a5a80
  x0 = local_m30; // 0x3a5a84
  memSet(x2, 0x1b, w0); // 0x3a5a88
  x0 = local_m20; // 0x3a5a8c
  memSet(x2, 0x1f, w0); // 0x3a5a90
  x0 = local_m48; // 0x3a5a94
  memSet(x2, 0x23, w0); // 0x3a5a98
  x0 = local_m18; // 0x3a5a9c
  memSet(x2, 0x27, w0); // 0x3a5aa0
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3a5aa4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3a5aa8
  x0 = local_m8; // 0x3a5ab0
  x1 = x0; // 0x3a5aac
  local_m10 = x1; // 0x3a5ab4
  memSet(x1, 0xf, w0); // 0x3a5ab8
  x0 = 14; // 0x3a5abc
  memSet(x1, 0xb, w0); // 0x3a5ac0
  AllocationStub_Column() /* 0x39310c */; // 0x3a5ac4
  x1 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3a5acc
  memSet(x0, 0xf, w1); // 0x3a5ad0
  x1 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3a5ad8
  memSet(x0, 0x13, w1); // 0x3a5adc
  x1 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3a5ae4
  memSet(x0, 0x17, w1); // 0x3a5ae8
  x1 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3a5af0
  memSet(x0, 0x1b, w1); // 0x3a5af4
  x1 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3a5afc
  memSet(x0, 0x23, w1); // 0x3a5b00
  x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3a5b08
  memSet(x0, 0x2b, w1); // 0x3a5b0c
  memSet(x0, 0x2f, xzr); // 0x3a5b10
  x1 = local_m10; // 0x3a5b14
  memSet(x0, 0xb, w1); // 0x3a5b18
  SP = FP; // 0x3a5b1c
  // frame: FP, LR, mem(SP), 0x10 // 0x3a5b20
  return;
}

// PagePartyLotteryWinnerInfo_anon_closure
// raw disassembly:
//  0x3a87b8: stp FP, LR, [SP, #-0x10]!
//  0x3a87bc: mov FP, SP
//  0x3a87c0: sub SP, SP, #0x58
//  0x3a87c4: ldr x0, [FP, #0x18]
//  0x3a87c8: ldur w1, [x0, #0x17]
//  0x3a87cc: add x1, x1, HEAP, lsl #32
//  0x3a87d0: stur x1, [FP, #-8]
//  0x3a87d4: ldr BARRIER, [THR, #0x38]
//  0x3a87d8: cmp SP, BARRIER
//  0x3a87dc: b.ls #0x3a8b80
//  0x3a87e0: mov x1, #1
//  0x3a87e4: bl #0x61e890
//  0x3a87e8: mov x1, x0
//  0x3a87ec: ldur x0, [FP, #-8]
//  0x3a87f0: stur x1, [FP, #-0x10]
//  0x3a87f4: stur w0, [x1, #0xb]
//  0x3a87f8: ldr x2, [FP, #0x10]
//  0x3a87fc: stur w2, [x1, #0xf]
//  0x3a8800: bl #0x2e3578
//  0x3a8804: add x17, PP, #0x12, lsl #12
//  0x3a8808: ldr d0, [x17, #0x3c8]
//  0x3a880c: stur x0, [FP, #-0x18]
//  0x3a8810: stur d0, [x0, #7]
//  0x3a8814: stur xzr, [x0, #0xf]
//  0x3a8818: stur d0, [x0, #0x17]
//  0x3a881c: fmov d0, #10.00000000
//  0x3a8820: stur d0, [x0, #0x1f]
//  0x3a8824: bl #0x352b04
//  0x3a8828: fmov d0, #13.50000000
//  0x3a882c: stur x0, [FP, #-0x20]
//  0x3a8830: stur d0, [x0, #7]
//  0x3a8834: stur d0, [x0, #0xf]
//  0x3a8838: bl #0x392f28
//  0x3a883c: mov x1, x0
//  0x3a8840: ldur x0, [FP, #-0x20]
//  0x3a8844: stur x1, [FP, #-0x28]
//  0x3a8848: stur w0, [x1, #7]
//  0x3a884c: stur w0, [x1, #0xb]
//  0x3a8850: stur w0, [x1, #0xf]
//  0x3a8854: stur w0, [x1, #0x13]
//  0x3a8858: bl #0x31d844
//  0x3a885c: mov x1, x0
//  0x3a8860: ldr x0, [PP, #0x6310]
//  0x3a8864: stur w0, [x1, #0x27]
//  0x3a8868: fmov d0, #1.00000000
//  0x3a886c: stur d0, [x1, #7]
//  0x3a8870: add x17, PP, #0x10, lsl #12
//  0x3a8874: ldr d0, [x17, #0xad0]
//  0x3a8878: stur d0, [x1, #0xf]
//  0x3a887c: add x17, PP, #0x10, lsl #12
//  0x3a8880: ldr d0, [x17, #0xad8]
//  0x3a8884: stur d0, [x1, #0x17]
//  0x3a8888: add x17, PP, #0x10, lsl #12
//  0x3a888c: ldr d0, [x17, #0xae0]
//  0x3a8890: stur d0, [x1, #0x1f]
//  0x3a8894: ldr BARRIER, [PP, #0x53a0]
//  0x3a8898: str BARRIER, [SP]
//  0x3a889c: mov x2, x1
//  0x3a88a0: mov x1, NULL
//  0x3a88a4: add x4, PP, #0xf, lsl #12
//  0x3a88a8: ldr x4, [x4, #0x818]
//  0x3a88ac: bl #0x391e08
//  0x3a88b0: stur x0, [FP, #-0x20]
//  0x3a88b4: bl #0x391dd8
//  0x3a88b8: mov x1, x0
//  0x3a88bc: ldur x0, [FP, #-0x20]
//  0x3a88c0: stur x1, [FP, #-0x30]
//  0x3a88c4: stur w0, [x1, #0xf]
//  0x3a88c8: ldur x0, [FP, #-0x28]
//  0x3a88cc: stur w0, [x1, #0x13]
//  0x3a88d0: add x0, PP, #0xe, lsl #12
//  0x3a88d4: ldr x0, [x0, #0xb78]
//  0x3a88d8: stur w0, [x1, #0x23]
//  0x3a88dc: bl #0x2e3578
//  0x3a88e0: mov x3, x0
//  0x3a88e4: fmov d0, #16.00000000
//  0x3a88e8: stur x3, [FP, #-0x28]
//  0x3a88ec: stur d0, [x3, #7]
//  0x3a88f0: stur xzr, [x3, #0xf]
//  0x3a88f4: stur xzr, [x3, #0x17]
//  0x3a88f8: stur xzr, [x3, #0x1f]
//  0x3a88fc: ldur x4, [FP, #-0x10]
//  0x3a8900: ldur w5, [x4, #0xf]
//  0x3a8904: add x5, x5, HEAP, lsl #32
//  0x3a8908: mov x0, x5
//  0x3a890c: stur x5, [FP, #-0x20]
//  0x3a8910: mov x2, NULL
//  0x3a8914: mov x1, NULL
//  0x3a8918: mov x4, #0x3c
//  0x3a891c: tbz w0, #0, #0x3a8928
//  0x3a8920: ldur x4, [x0, #-1]
//  0x3a8924: ubfx x4, x4, #0xc, #0x14
//  0x3a8928: sub x4, x4, #0x5e
//  0x3a892c: cmp x4, #1
//  0x3a8930: b.ls #0x3a8944
//  0x3a8934: ldr x8, [PP, #0x2f8]
//  0x3a8938: add x3, PP, #0x12, lsl #12
//  0x3a893c: ldr x3, [x3, #0x3d0]
//  0x3a8940: bl #0x62a0c0
//  0x3a8944: ldur x0, [FP, #-8]
//  0x3a8948: ldur w1, [x0, #0x13]
//  0x3a894c: add x1, x1, HEAP, lsl #32
//  0x3a8950: stur x1, [FP, #-0x38]
//  0x3a8954: bl #0x393bf8
//  0x3a8958: mov x1, x0
//  0x3a895c: ldur x0, [FP, #-0x20]
//  0x3a8960: stur x1, [FP, #-8]
//  0x3a8964: stur w0, [x1, #0xb]
//  0x3a8968: ldur x0, [FP, #-0x38]
//  0x3a896c: stur w0, [x1, #0x13]
//  0x3a8970: add x0, PP, #0x12, lsl #12
//  0x3a8974: ldr x0, [x0, #0x3e0]
//  0x3a8978: stur w0, [x1, #0x2b]
//  0x3a897c: mov x0, #2
//  0x3a8980: stur w0, [x1, #0x37]
//  0x3a8984: bl #0x391a04
//  0x3a8988: stur x0, [FP, #-0x20]
//  0x3a898c: ldur BARRIER, [FP, #-0x28]
//  0x3a8990: ldur LR, [FP, #-8]
//  0x3a8994: stp LR, BARRIER, [SP]
//  0x3a8998: mov x1, x0
//  0x3a899c: add x4, PP, #0xf, lsl #12
//  0x3a89a0: ldr x4, [x4, #0x258]
//  0x3a89a4: bl #0x391490
//  0x3a89a8: add x1, PP, #0xe, lsl #12
//  0x3a89ac: ldr x1, [x1, #0xad0]
//  0x3a89b0: bl #0x39fb14
//  0x3a89b4: mov x1, x0
//  0x3a89b8: mov x0, #1
//  0x3a89bc: stur x1, [FP, #-8]
//  0x3a89c0: stur x0, [x1, #0x13]
//  0x3a89c4: add x0, PP, #0xe, lsl #12
//  0x3a89c8: ldr x0, [x0, #0xad8]
//  0x3a89cc: stur w0, [x1, #0x1b]
//  0x3a89d0: ldur x0, [FP, #-0x20]
//  0x3a89d4: stur w0, [x1, #0xb]
//  0x3a89d8: bl #0x2e3578
//  0x3a89dc: stur x0, [FP, #-0x20]
//  0x3a89e0: stur xzr, [x0, #7]
//  0x3a89e4: stur xzr, [x0, #0xf]
//  0x3a89e8: fmov d0, #13.00000000
//  0x3a89ec: stur d0, [x0, #0x17]
//  0x3a89f0: stur xzr, [x0, #0x1f]
//  0x3a89f4: bl #0x3a142c
//  0x3a89f8: mov x1, x0
//  0x3a89fc: add x0, PP, #0x12, lsl #12
//  0x3a8a00: ldr x0, [x0, #0x3e8]
//  0x3a8a04: stur x1, [FP, #-0x28]
//  0x3a8a08: stur w0, [x1, #0xb]
//  0x3a8a0c: add x0, PP, #0xf, lsl #12
//  0x3a8a10: ldr x0, [x0, #0x170]
//  0x3a8a14: stur w0, [x1, #0xf]
//  0x3a8a18: add x0, PP, #0x12, lsl #12
//  0x3a8a1c: ldr x0, [x0, #0x3f0]
//  0x3a8a20: stur w0, [x1, #0x13]
//  0x3a8a24: stur w0, [x1, #0x17]
//  0x3a8a28: add x0, PP, #0x11, lsl #12
//  0x3a8a2c: ldr x0, [x0, #0x398]
//  0x3a8a30: stur w0, [x1, #0x1b]
//  0x3a8a34: bl #0x391a04
//  0x3a8a38: stur x0, [FP, #-0x38]
//  0x3a8a3c: ldur BARRIER, [FP, #-0x20]
//  0x3a8a40: add LR, PP, #0xe, lsl #12
//  0x3a8a44: ldr LR, [LR, #0xde8]
//  0x3a8a48: stp LR, BARRIER, [SP, #0x10]
//  0x3a8a4c: add BARRIER, PP, #0xe, lsl #12
//  0x3a8a50: ldr BARRIER, [BARRIER, #0xde8]
//  0x3a8a54: ldur LR, [FP, #-0x28]
//  0x3a8a58: stp LR, BARRIER, [SP]
//  0x3a8a5c: mov x1, x0
//  0x3a8a60: add x4, PP, #0xf, lsl #12
//  0x3a8a64: ldr x4, [x4, #0x180]
//  0x3a8a68: bl #0x391490
//  0x3a8a6c: mov x1, NULL
//  0x3a8a70: mov x2, #4
//  0x3a8a74: bl #0x61f920
//  0x3a8a78: mov x2, x0
//  0x3a8a7c: ldur x0, [FP, #-8]
//  0x3a8a80: stur x2, [FP, #-0x20]
//  0x3a8a84: stur w0, [x2, #0xf]
//  0x3a8a88: ldur x0, [FP, #-0x38]
//  0x3a8a8c: stur w0, [x2, #0x13]
//  0x3a8a90: ldr x1, [PP, #0x5c58]
//  0x3a8a94: bl #0x61e854
//  0x3a8a98: mov x1, x0
//  0x3a8a9c: ldur x0, [FP, #-0x20]
//  0x3a8aa0: stur x1, [FP, #-8]
//  0x3a8aa4: stur w0, [x1, #0xf]
//  0x3a8aa8: mov x0, #4
//  0x3a8aac: stur w0, [x1, #0xb]
//  0x3a8ab0: bl #0x3a1414
//  0x3a8ab4: mov x1, x0
//  0x3a8ab8: ldr x0, [PP, #0x5140]
//  0x3a8abc: stur x1, [FP, #-0x20]
//  0x3a8ac0: stur w0, [x1, #0xf]
//  0x3a8ac4: add x0, PP, #0xe, lsl #12
//  0x3a8ac8: ldr x0, [x0, #0xae0]
//  0x3a8acc: stur w0, [x1, #0x13]
//  0x3a8ad0: add x0, PP, #0xe, lsl #12
//  0x3a8ad4: ldr x0, [x0, #0xae8]
//  0x3a8ad8: stur w0, [x1, #0x17]
//  0x3a8adc: add x0, PP, #0xe, lsl #12
//  0x3a8ae0: ldr x0, [x0, #0xb60]
//  0x3a8ae4: stur w0, [x1, #0x1b]
//  0x3a8ae8: add x0, PP, #0xe, lsl #12
//  0x3a8aec: ldr x0, [x0, #0xaf8]
//  0x3a8af0: stur w0, [x1, #0x23]
//  0x3a8af4: add x0, PP, #0xa, lsl #12
//  0x3a8af8: ldr x0, [x0, #0xa8]
//  0x3a8afc: stur w0, [x1, #0x2b]
//  0x3a8b00: stur xzr, [x1, #0x2f]
//  0x3a8b04: ldur x0, [FP, #-8]
//  0x3a8b08: stur w0, [x1, #0xb]
//  0x3a8b0c: bl #0x391a04
//  0x3a8b10: stur x0, [FP, #-8]
//  0x3a8b14: ldur BARRIER, [FP, #-0x18]
//  0x3a8b18: add LR, PP, #0x11, lsl #12
//  0x3a8b1c: ldr LR, [LR, #0xba0]
//  0x3a8b20: stp LR, BARRIER, [SP, #0x10]
//  0x3a8b24: ldur BARRIER, [FP, #-0x30]
//  0x3a8b28: ldur LR, [FP, #-0x20]
//  0x3a8b2c: stp LR, BARRIER, [SP]
//  0x3a8b30: mov x1, x0
//  0x3a8b34: add x4, PP, #0x12, lsl #12
//  0x3a8b38: ldr x4, [x4, #0x3f8]
//  0x3a8b3c: bl #0x391490
//  0x3a8b40: bl #0x3a1d94
//  0x3a8b44: ldur x2, [FP, #-0x10]
//  0x3a8b48: add x1, PP, #0x12, lsl #12
//  0x3a8b4c: ldr x1, [x1, #0x400]
//  0x3a8b50: stur x0, [FP, #-0x10]
//  0x3a8b54: bl #0x61ec54
//  0x3a8b58: ldur BARRIER, [FP, #-8]
//  0x3a8b5c: stp x0, BARRIER, [SP]
//  0x3a8b60: ldur x1, [FP, #-0x10]
//  0x3a8b64: add x4, PP, #0xe, lsl #12
//  0x3a8b68: ldr x4, [x4, #0xec0]
//  0x3a8b6c: bl #0x3a18c4
//  0x3a8b70: ldur x0, [FP, #-0x10]
//  0x3a8b74: mov SP, FP
//  0x3a8b78: ldp FP, LR, [SP], #0x10
//  0x3a8b7c: ret 
//  0x3a8b80: bl #0x61fa28
//  0x3a8b84: b #0x3a87e0
//
dynamic PagePartyLotteryWinnerInfo_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic w1;
  dynamic w5;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a87b8
  // frame: FP = SP // 0x3a87bc
  // frame: SP = SP - 0x58 // 0x3a87c0
  w1 = mem((local_18), 0x17); // 0x3a87c8
  x0 = local_18; // 0x3a87c4
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3a87cc
  local_m8 = x1; // 0x3a87d0
  BARRIER = mem(THR, 0x38); // 0x3a87d4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a8b80
  }
  x1 = 1; // 0x3a87e0
  sub_0x61e890(); // 0x3a87e4
  x0 = local_m8; // 0x3a87ec
  x1 = x0; // 0x3a87e8
  local_m10 = x1; // 0x3a87f0
  memSet(x1, 0xb, w0); // 0x3a87f4
  x2 = local_10; // 0x3a87f8
  memSet(x1, 0xf, w2); // 0x3a87fc
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3a8800
  d0 = 4632796641680687104; // 0x3a8808
  x17 = PP + 0x12000; // 0x3a8804
  local_m18 = x0; // 0x3a880c
  memSet(x0, 7, d0); // 0x3a8810
  memSet(x0, 0xf, xzr); // 0x3a8814
  memSet(x0, 0x17, d0); // 0x3a8818
  d0 = 10.00000000 /* bits */; // 0x3a881c
  memSet(x0, 0x1f, d0); // 0x3a8820
  AllocationStub_Radius() /* 0x352b04 */; // 0x3a8824
  d0 = 13.50000000 /* bits */; // 0x3a8828
  local_m20 = x0; // 0x3a882c
  memSet(x0, 7, d0); // 0x3a8830
  memSet(x0, 0xf, d0); // 0x3a8834
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x3a8838
  x0 = local_m20; // 0x3a8840
  x1 = x0; // 0x3a883c
  local_m28 = x1; // 0x3a8844
  memSet(x1, 7, w0); // 0x3a8848
  memSet(x1, 0xb, w0); // 0x3a884c
  memSet(x1, 0xf, w0); // 0x3a8850
  memSet(x1, 0x13, w0); // 0x3a8854
  AllocationStub_Color() /* 0x31d844 */; // 0x3a8858
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a8860
  x1 = x0; // 0x3a885c
  memSet(x1, 0x27, w0); // 0x3a8864
  d0 = 1.00000000 /* bits */; // 0x3a8868
  memSet(x1, 7, d0); // 0x3a886c
  d0 = 4603614861448139603; // 0x3a8874
  x17 = PP + 0x10000; // 0x3a8870
  memSet(x1, 0xf, d0); // 0x3a8878
  d0 = 4598546104220471633; // 0x3a8880
  x17 = PP + 0x10000; // 0x3a887c
  memSet(x1, 0x17, d0); // 0x3a8884
  d0 = 4583569427812588572; // 0x3a888c
  x17 = PP + 0x10000; // 0x3a8888
  memSet(x1, 0x1f, d0); // 0x3a8890
  BARRIER = mem(PP, 0x53a0) /* Double */; // 0x3a8894
  local_0 = BARRIER; // 0x3a8898
  x1 = NULL; // 0x3a88a0
  x2 = x1; // 0x3a889c
  x4 = mem((PP + 0xf000), 0x818) /* ImmutableArray */; // 0x3a88a8
  Border_factory_ctor_all() /* 0x391e08 */; // 0x3a88ac
  local_m20 = x0; // 0x3a88b0
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x3a88b4
  x0 = local_m20; // 0x3a88bc
  x1 = x0; // 0x3a88b8
  local_m30 = x1; // 0x3a88c0
  memSet(x1, 0xf, w0); // 0x3a88c4
  x0 = local_m28; // 0x3a88c8
  memSet(x1, 0x13, w0); // 0x3a88cc
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x3a88d4
  memSet(x1, 0x23, w0); // 0x3a88d8
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3a88dc
  d0 = 16.00000000 /* bits */; // 0x3a88e4
  x3 = x0; // 0x3a88e0
  local_m28 = x3; // 0x3a88e8
  memSet(x3, 7, d0); // 0x3a88ec
  memSet(x3, 0xf, xzr); // 0x3a88f0
  memSet(x3, 0x17, xzr); // 0x3a88f4
  memSet(x3, 0x1f, xzr); // 0x3a88f8
  w5 = mem((local_m10), 0xf); // 0x3a8900
  x0 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3a8908
  x4 = local_m10; // 0x3a88fc
  x5 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3a8904
  local_m20 = x5; // 0x3a890c
  x1 = NULL; // 0x3a8914
  x2 = NULL; // 0x3a8910
  x4 = 60; // 0x3a8918
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3a8924
  }
  x4 = x4 - 0x5e; // 0x3a8928
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x12000), 0x3d0) /* Obj!? */; // 0x3a893c
    x8 = mem(PP, 0x2f8) /* Type */; // 0x3a8934
    sub_0x62a0c0(); // 0x3a8940
  }
  w1 = mem((local_m8), 0x13); // 0x3a8948
  x0 = local_m8; // 0x3a8944
  x1 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x3a894c
  local_m38 = x1; // 0x3a8950
  AllocationStub_Text() /* 0x393bf8 */; // 0x3a8954
  x0 = local_m20; // 0x3a895c
  x1 = x0; // 0x3a8958
  local_m8 = x1; // 0x3a8960
  memSet(x1, 0xb, w0); // 0x3a8964
  x0 = local_m38; // 0x3a8968
  memSet(x1, 0x13, w0); // 0x3a896c
  x0 = mem((PP + 0x12000), 0x3e0) /* Obj!TextOverflow@1227f  */; // 0x3a8974
  memSet(x1, 0x2b, w0); // 0x3a8978
  x0 = 2; // 0x3a897c
  memSet(x1, 0x37, w0); // 0x3a8980
  AllocationStub_Container() /* 0x391a04 */; // 0x3a8984
  local_m20 = x0; // 0x3a8988
  BARRIER = local_m28; // 0x3a898c
  LR = local_m8; // 0x3a8990
  // frame: LR, BARRIER, mem(SP) // 0x3a8994
  x1 = x0; // 0x3a8998
  x4 = mem((PP + 0xf000), 0x258) /* ImmutableArray */; // 0x3a89a0
  Container_ctor() /* 0x391490 */; // 0x3a89a4
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x3a89ac
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x3a89b0
  x0 = 1; // 0x3a89b8
  x1 = x0; // 0x3a89b4
  local_m8 = x1; // 0x3a89bc
  memSet(x1, 0x13, x0); // 0x3a89c0
  x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x3a89c8
  memSet(x1, 0x1b, w0); // 0x3a89cc
  x0 = local_m20; // 0x3a89d0
  memSet(x1, 0xb, w0); // 0x3a89d4
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3a89d8
  local_m20 = x0; // 0x3a89dc
  memSet(x0, 7, xzr); // 0x3a89e0
  memSet(x0, 0xf, xzr); // 0x3a89e4
  d0 = 13.00000000 /* bits */; // 0x3a89e8
  memSet(x0, 0x17, d0); // 0x3a89ec
  memSet(x0, 0x1f, xzr); // 0x3a89f0
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x3a89f4
  x0 = "assets/images/3.0x/party_icon_right_arrow.webp" /* pp+0x123e8 */; // 0x3a8a00
  x1 = x0; // 0x3a89f8
  local_m28 = x1; // 0x3a8a04
  memSet(x1, 0xb, w0); // 0x3a8a08
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x3a8a10
  memSet(x1, 0xf, w0); // 0x3a8a14
  x0 = mem((PP + 0x12000), 0x3f0) /* Double */; // 0x3a8a1c
  memSet(x1, 0x13, w0); // 0x3a8a20
  memSet(x1, 0x17, w0); // 0x3a8a24
  x0 = mem((PP + 0x11000), 0x398) /* Obj!BoxFit@12283  */; // 0x3a8a2c
  memSet(x1, 0x1b, w0); // 0x3a8a30
  AllocationStub_Container() /* 0x391a04 */; // 0x3a8a34
  local_m38 = x0; // 0x3a8a38
  BARRIER = local_m20; // 0x3a8a3c
  LR = mem((PP + 0xe000), 0xde8) /* Double */; // 0x3a8a44
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x3a8a48
  BARRIER = mem((PP + 0xe000), 0xde8) /* Double */; // 0x3a8a50
  LR = local_m28; // 0x3a8a54
  // frame: LR, BARRIER, mem(SP) // 0x3a8a58
  x1 = x0; // 0x3a8a5c
  x4 = mem((PP + 0xf000), 0x180) /* ImmutableArray */; // 0x3a8a64
  Container_ctor() /* 0x391490 */; // 0x3a8a68
  x1 = NULL; // 0x3a8a6c
  x2 = 4; // 0x3a8a70
  sub_0x61f920(); // 0x3a8a74
  x0 = local_m8; // 0x3a8a7c
  x2 = x0; // 0x3a8a78
  local_m20 = x2; // 0x3a8a80
  memSet(x2, 0xf, w0); // 0x3a8a84
  x0 = local_m38; // 0x3a8a88
  memSet(x2, 0x13, w0); // 0x3a8a8c
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3a8a90
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3a8a94
  x0 = local_m20; // 0x3a8a9c
  x1 = x0; // 0x3a8a98
  local_m8 = x1; // 0x3a8aa0
  memSet(x1, 0xf, w0); // 0x3a8aa4
  x0 = 4; // 0x3a8aa8
  memSet(x1, 0xb, w0); // 0x3a8aac
  AllocationStub_Row() /* 0x3a1414 */; // 0x3a8ab0
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x3a8ab8
  x1 = x0; // 0x3a8ab4
  local_m20 = x1; // 0x3a8abc
  memSet(x1, 0xf, w0); // 0x3a8ac0
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3a8ac8
  memSet(x1, 0x13, w0); // 0x3a8acc
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3a8ad4
  memSet(x1, 0x17, w0); // 0x3a8ad8
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3a8ae0
  memSet(x1, 0x1b, w0); // 0x3a8ae4
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3a8aec
  memSet(x1, 0x23, w0); // 0x3a8af0
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3a8af8
  memSet(x1, 0x2b, w0); // 0x3a8afc
  memSet(x1, 0x2f, xzr); // 0x3a8b00
  x0 = local_m8; // 0x3a8b04
  memSet(x1, 0xb, w0); // 0x3a8b08
  AllocationStub_Container() /* 0x391a04 */; // 0x3a8b0c
  local_m8 = x0; // 0x3a8b10
  BARRIER = local_m18; // 0x3a8b14
  LR = mem((PP + 0x11000), 0xba0) /* Double */; // 0x3a8b1c
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x3a8b20
  BARRIER = local_m30; // 0x3a8b24
  LR = local_m20; // 0x3a8b28
  // frame: LR, BARRIER, mem(SP) // 0x3a8b2c
  x1 = x0; // 0x3a8b30
  x4 = mem((PP + 0x12000), 0x3f8) /* ImmutableArray */; // 0x3a8b38
  Container_ctor() /* 0x391490 */; // 0x3a8b3c
  sub_0x3a1d94(); // 0x3a8b40
  x1 = mem((PP + 0x12000), 0x400) /* Function */; // 0x3a8b4c
  x2 = local_m10; // 0x3a8b44
  local_m10 = x0; // 0x3a8b50
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3a8b54
  BARRIER = local_m8; // 0x3a8b58
  // frame: x0, BARRIER, mem(SP) // 0x3a8b5c
  x1 = local_m10; // 0x3a8b60
  x4 = mem((PP + 0xe000), 0xec0) /* ImmutableArray */; // 0x3a8b68
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x3a8b6c
  SP = FP; // 0x3a8b74
  x0 = local_m10; // 0x3a8b70
  // frame: FP, LR, mem(SP), 0x10 // 0x3a8b78
  return;
}

// PagePartyLotteryWinnerInfo_anon_closure_2
// raw disassembly:
//  0x3a8b88: stp FP, LR, [SP, #-0x10]!
//  0x3a8b8c: mov FP, SP
//  0x3a8b90: sub SP, SP, #0x28
//  0x3a8b94: ldr x0, [FP, #0x10]
//  0x3a8b98: ldur w3, [x0, #0x17]
//  0x3a8b9c: add x3, x3, HEAP, lsl #32
//  0x3a8ba0: stur x3, [FP, #-8]
//  0x3a8ba4: ldr BARRIER, [THR, #0x38]
//  0x3a8ba8: cmp SP, BARRIER
//  0x3a8bac: b.ls #0x3a8cf8
//  0x3a8bb0: mov x1, NULL
//  0x3a8bb4: mov x2, #4
//  0x3a8bb8: bl #0x61f920
//  0x3a8bbc: stur x0, [FP, #-0x18]
//  0x3a8bc0: add BARRIER, PP, #0x12, lsl #12
//  0x3a8bc4: ldr BARRIER, [BARRIER, #0x408]
//  0x3a8bc8: stur w16, [x0, #0xf]
//  0x3a8bcc: ldur x3, [FP, #-8]
//  0x3a8bd0: ldur w4, [x3, #0xb]
//  0x3a8bd4: add x4, x4, HEAP, lsl #32
//  0x3a8bd8: stur x4, [FP, #-0x10]
//  0x3a8bdc: ldur w1, [x4, #0xf]
//  0x3a8be0: add x1, x1, HEAP, lsl #32
//  0x3a8be4: ldur w2, [x1, #0x27]
//  0x3a8be8: add x2, x2, HEAP, lsl #32
//  0x3a8bec: ldur w1, [x3, #0xf]
//  0x3a8bf0: add x1, x1, HEAP, lsl #32
//  0x3a8bf4: mov BARRIER, x1
//  0x3a8bf8: mov x1, x2
//  0x3a8bfc: mov x2, BARRIER
//  0x3a8c00: ldr x4, [PP, #0x278]
//  0x3a8c04: bl #0x302eec
//  0x3a8c08: add x2, x0, #1
//  0x3a8c0c: sbfiz x0, x2, #1, #0x1f
//  0x3a8c10: cmp x2, x0, asr #1
//  0x3a8c14: b.eq #0x3a8c20
//  0x3a8c18: bl #0x61fba8
//  0x3a8c1c: stur x2, [x0, #7]
//  0x3a8c20: str x0, [SP]
//  0x3a8c24: bl #0x2ac0a0
//  0x3a8c28: ldur x1, [FP, #-0x18]
//  0x3a8c2c: add x25, x1, #0x13
//  0x3a8c30: str w0, [x25]
//  0x3a8c34: tbz w0, #0, #0x3a8c50
//  0x3a8c38: ldurb w16, [x1, #-1]
//  0x3a8c3c: ldurb w17, [x0, #-1]
//  0x3a8c40: and BARRIER, x17, BARRIER, lsr #2
//  0x3a8c44: tst BARRIER, HEAP, lsr #32
//  0x3a8c48: b.eq #0x3a8c50
//  0x3a8c4c: bl #0x61db00
//  0x3a8c50: ldr BARRIER, [PP, #0xbf0]
//  0x3a8c54: ldur LR, [FP, #-0x18]
//  0x3a8c58: stp LR, BARRIER, [SP]
//  0x3a8c5c: bl #0x27c0c8
//  0x3a8c60: str x0, [SP]
//  0x3a8c64: add x1, PP, #0x12, lsl #12
//  0x3a8c68: ldr x1, [x1, #0x410]
//  0x3a8c6c: add x4, PP, #0xf, lsl #12
//  0x3a8c70: ldr x4, [x4, #0xf20]
//  0x3a8c74: bl #0x3a8e60
//  0x3a8c78: ldur x0, [FP, #-0x10]
//  0x3a8c7c: ldur w1, [x0, #0xf]
//  0x3a8c80: add x1, x1, HEAP, lsl #32
//  0x3a8c84: ldur w3, [x1, #0xf]
//  0x3a8c88: add x3, x3, HEAP, lsl #32
//  0x3a8c8c: ldur x0, [FP, #-8]
//  0x3a8c90: stur x3, [FP, #-0x18]
//  0x3a8c94: ldur w4, [x0, #0xf]
//  0x3a8c98: add x4, x4, HEAP, lsl #32
//  0x3a8c9c: mov x0, x4
//  0x3a8ca0: stur x4, [FP, #-0x10]
//  0x3a8ca4: mov x2, NULL
//  0x3a8ca8: mov x1, NULL
//  0x3a8cac: mov x4, #0x3c
//  0x3a8cb0: tbz w0, #0, #0x3a8cbc
//  0x3a8cb4: ldur x4, [x0, #-1]
//  0x3a8cb8: ubfx x4, x4, #0xc, #0x14
//  0x3a8cbc: sub x4, x4, #0x5e
//  0x3a8cc0: cmp x4, #1
//  0x3a8cc4: b.ls #0x3a8cd8
//  0x3a8cc8: ldr x8, [PP, #0xae0]
//  0x3a8ccc: add x3, PP, #0x12, lsl #12
//  0x3a8cd0: ldr x3, [x3, #0x418]
//  0x3a8cd4: bl #0x278d08
//  0x3a8cd8: ldur x1, [FP, #-0x18]
//  0x3a8cdc: ldur x2, [FP, #-0x10]
//  0x3a8ce0: bl #0x3a8d40
//  0x3a8ce4: bl #0x3a8d00
//  0x3a8ce8: mov x0, NULL
//  0x3a8cec: mov SP, FP
//  0x3a8cf0: ldp FP, LR, [SP], #0x10
//  0x3a8cf4: ret 
//  0x3a8cf8: bl #0x61fa28
//  0x3a8cfc: b #0x3a8bb0
//
dynamic PagePartyLotteryWinnerInfo_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w2;
  dynamic w3;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x25;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a8b88
  // frame: FP = SP // 0x3a8b8c
  // frame: SP = SP - 0x28 // 0x3a8b90
  w3 = mem((local_10), 0x17); // 0x3a8b98
  x0 = local_10; // 0x3a8b94
  x3 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3a8b9c
  local_m8 = x3; // 0x3a8ba0
  BARRIER = mem(THR, 0x38); // 0x3a8ba4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a8cf8
  }
  x1 = NULL; // 0x3a8bb0
  x2 = 4; // 0x3a8bb4
  sub_0x61f920(); // 0x3a8bb8
  local_m18 = x0; // 0x3a8bbc
  BARRIER = "number" /* pp+0x12408 */; // 0x3a8bc4
  memSet(x0, 0xf, w16); // 0x3a8bc8
  w4 = mem((local_m8), 0xb); // 0x3a8bd0
  x3 = local_m8; // 0x3a8bcc
  x4 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3a8bd4
  local_m10 = x4; // 0x3a8bd8
  w1 = mem(x3, 0xf); // 0x3a8bec
  w2 = mem((((mem(x4, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x27); // 0x3a8be4
  x1 = (mem(x3, 0xf)) & 0xffffffff; // 0x3a8bec
  x2 = ((mem((((mem(x4, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x27)) & 0xffffffff) + (HEAP << 32); // 0x3a8be8
  BARRIER = x1 + (HEAP << 32); // 0x3a8bf4
  x1 = x2; // 0x3a8bf8
  x2 = x1 + (HEAP << 32); // 0x3a8bfc
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x3a8c00
  ListBase_indexOf() /* 0x302eec */; // 0x3a8c04
  x0 = (((x0 + 1) & 0x7fffffff) << 1) /* signed */; // 0x3a8c0c
  x2 = x0 + 1; // 0x3a8c08
  if (x2 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x3a8c18
    memSet(x0, 7, x2); // 0x3a8c1c
  }
  local_0 = x0; // 0x3a8c20
  StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x3a8c24
  x1 = local_m18; // 0x3a8c28
  x25 = (local_m18) + 0x13; // 0x3a8c2c
  memSet(x25, w0); // 0x3a8c30
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3a8c40
    w17 = mem(x0, -1); // 0x3a8c3c
    x16 = w16 & 0xffffffff; // 0x3a8c38
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x3a8c3c
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      sub_0x61db00(); // 0x3a8c4c
    }
  }
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x3a8c50
  LR = local_m18; // 0x3a8c54
  // frame: LR, BARRIER, mem(SP) // 0x3a8c58
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x3a8c5c
  local_0 = x0; // 0x3a8c60
  x1 = "LuckyPocket_GetMoneyResultPagePop" /* pp+0x12410 */; // 0x3a8c68
  x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x3a8c70
  EventTrack_eventClick() /* 0x3a8e60 */; // 0x3a8c74
  w1 = mem((local_m10), 0xf); // 0x3a8c7c
  w3 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xf); // 0x3a8c84
  x0 = local_m8; // 0x3a8c8c
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3a8c80
  x3 = ((mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3a8c88
  local_m18 = x3; // 0x3a8c90
  w4 = mem(x0, 0xf); // 0x3a8c94
  x0 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3a8c9c
  x4 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3a8c98
  local_m10 = x4; // 0x3a8ca0
  x1 = NULL; // 0x3a8ca8
  x2 = NULL; // 0x3a8ca4
  x4 = 60; // 0x3a8cac
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3a8cb8
  }
  x4 = x4 - 0x5e; // 0x3a8cbc
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x12000), 0x418) /* Obj!? */; // 0x3a8cd0
    x8 = mem(PP, 0xae0) /* Type */; // 0x3a8cc8
    sub_0x278d08(); // 0x3a8cd4
  }
  x1 = local_m18; // 0x3a8cd8
  x2 = local_m10; // 0x3a8cdc
  VirtualParty_sendTextToParty() /* 0x3a8d40 */; // 0x3a8ce0
  PagePKGameBetTabRecordState_anon_closure() /* 0x3a8d00 */; // 0x3a8ce4
  SP = FP; // 0x3a8cec
  x0 = NULL; // 0x3a8ce8
  // frame: FP, LR, mem(SP), 0x10 // 0x3a8cf0
  return;
}

// PagePartyLotteryWinnerInfo_ctor
// raw disassembly:
//  0x424370: stp FP, LR, [SP, #-0x10]!
//  0x424374: mov FP, SP
//  0x424378: sub SP, SP, #0x50
//  0x42437c: mov x4, x3
//  0x424380: stur x3, [FP, #-0x18]
//  0x424384: mov x3, x5
//  0x424388: stur x5, [FP, #-0x20]
//  0x42438c: mov x5, x2
//  0x424390: stur x2, [FP, #-0x10]
//  0x424394: mov x2, x6
//  0x424398: stur x6, [FP, #-0x28]
//  0x42439c: mov x6, x1
//  0x4243a0: mov x0, x7
//  0x4243a4: stur x1, [FP, #-8]
//  0x4243a8: stur x7, [FP, #-0x30]
//  0x4243ac: ldr BARRIER, [THR, #0x38]
//  0x4243b0: cmp SP, BARRIER
//  0x4243b4: b.ls #0x424510
//  0x4243b8: add x1, PP, #0xc, lsl #12
//  0x4243bc: ldr x1, [x1, #0x938]
//  0x4243c0: ldr x4, [PP, #0x4c0]
//  0x4243c4: bl #0x3a1dcc
//  0x4243c8: add x1, PP, #0xc, lsl #12
//  0x4243cc: ldr x1, [x1, #0x928]
//  0x4243d0: stur x0, [FP, #-0x38]
//  0x4243d4: ldr x4, [PP, #0x4c0]
//  0x4243d8: bl #0x3a1dcc
//  0x4243dc: add x1, PP, #0xc, lsl #12
//  0x4243e0: ldr x1, [x1, #0x918]
//  0x4243e4: stur x0, [FP, #-0x40]
//  0x4243e8: ldr x4, [PP, #0x4c0]
//  0x4243ec: bl #0x3a1dcc
//  0x4243f0: mov x1, NULL
//  0x4243f4: mov x2, #6
//  0x4243f8: stur x0, [FP, #-0x48]
//  0x4243fc: bl #0x61f920
//  0x424400: mov x2, x0
//  0x424404: ldur x0, [FP, #-0x38]
//  0x424408: stur x2, [FP, #-0x50]
//  0x42440c: stur w0, [x2, #0xf]
//  0x424410: ldur x0, [FP, #-0x40]
//  0x424414: stur w0, [x2, #0x13]
//  0x424418: ldur x0, [FP, #-0x48]
//  0x42441c: stur w0, [x2, #0x17]
//  0x424420: mov x1, NULL
//  0x424424: bl #0x61e854
//  0x424428: ldur x1, [FP, #-0x50]
//  0x42442c: stur w1, [x0, #0xf]
//  0x424430: mov x1, #6
//  0x424434: stur w1, [x0, #0xb]
//  0x424438: ldur x1, [FP, #-8]
//  0x42443c: stur w0, [x1, #0x27]
//  0x424440: ldurb w16, [x1, #-1]
//  0x424444: ldurb w17, [x0, #-1]
//  0x424448: and BARRIER, x17, BARRIER, lsr #2
//  0x42444c: tst BARRIER, HEAP, lsr #32
//  0x424450: b.eq #0x424458
//  0x424454: bl #0x61e04c
//  0x424458: ldur x0, [FP, #-0x10]
//  0x42445c: stur w0, [x1, #0xb]
//  0x424460: ldurb w16, [x1, #-1]
//  0x424464: ldurb w17, [x0, #-1]
//  0x424468: and BARRIER, x17, BARRIER, lsr #2
//  0x42446c: tst BARRIER, HEAP, lsr #32
//  0x424470: b.eq #0x424478
//  0x424474: bl #0x61e04c
//  0x424478: ldur x0, [FP, #-0x18]
//  0x42447c: stur w0, [x1, #0xf]
//  0x424480: ldurb w16, [x1, #-1]
//  0x424484: ldurb w17, [x0, #-1]
//  0x424488: and BARRIER, x17, BARRIER, lsr #2
//  0x42448c: tst BARRIER, HEAP, lsr #32
//  0x424490: b.eq #0x424498
//  0x424494: bl #0x61e04c
//  0x424498: ldur x0, [FP, #-0x30]
//  0x42449c: stur w0, [x1, #0x13]
//  0x4244a0: ldurb w16, [x1, #-1]
//  0x4244a4: ldurb w17, [x0, #-1]
//  0x4244a8: and BARRIER, x17, BARRIER, lsr #2
//  0x4244ac: tst BARRIER, HEAP, lsr #32
//  0x4244b0: b.eq #0x4244b8
//  0x4244b4: bl #0x61e04c
//  0x4244b8: ldur x0, [FP, #-0x20]
//  0x4244bc: stur w0, [x1, #0x17]
//  0x4244c0: ldurb w16, [x1, #-1]
//  0x4244c4: ldurb w17, [x0, #-1]
//  0x4244c8: and BARRIER, x17, BARRIER, lsr #2
//  0x4244cc: tst BARRIER, HEAP, lsr #32
//  0x4244d0: b.eq #0x4244d8
//  0x4244d4: bl #0x61e04c
//  0x4244d8: ldur x0, [FP, #-0x28]
//  0x4244dc: stur w0, [x1, #0x1b]
//  0x4244e0: ldurb w16, [x1, #-1]
//  0x4244e4: ldurb w17, [x0, #-1]
//  0x4244e8: and BARRIER, x17, BARRIER, lsr #2
//  0x4244ec: tst BARRIER, HEAP, lsr #32
//  0x4244f0: b.eq #0x4244f8
//  0x4244f4: bl #0x61e04c
//  0x4244f8: fmov d0, #13.00000000
//  0x4244fc: stur d0, [x1, #0x1f]
//  0x424500: mov x0, NULL
//  0x424504: mov SP, FP
//  0x424508: ldp FP, LR, [SP], #0x10
//  0x42450c: ret 
//  0x424510: bl #0x61fa28
//  0x424514: b #0x4243b8
//
dynamic PagePartyLotteryWinnerInfo_ctor() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
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
  dynamic x6;
  // frame: FP, LR, mem(SP, -0x10)! // 0x424370
  // frame: FP = SP // 0x424374
  // frame: SP = SP - 0x50 // 0x424378
  x4 = x3; // 0x42437c
  local_m18 = x3; // 0x424380
  x3 = x5; // 0x424384
  local_m20 = x5; // 0x424388
  x5 = x2; // 0x42438c
  local_m10 = x2; // 0x424390
  x2 = x6; // 0x424394
  local_m28 = x6; // 0x424398
  x0 = x7; // 0x4243a0
  x6 = x1; // 0x42439c
  local_m8 = x1; // 0x4243a4
  local_m30 = x7; // 0x4243a8
  BARRIER = mem(THR, 0x38); // 0x4243ac
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x424510
  }
  x1 = "virtual_party_lucky_pocket_receive_popup_thank_tip1" /* pp+0xc938 */; // 0x4243bc
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4243c0
  getString() /* 0x3a1dcc */; // 0x4243c4
  x1 = "virtual_party_lucky_pocket_receive_popup_thank_tip2" /* pp+0xc928 */; // 0x4243cc
  local_m38 = x0; // 0x4243d0
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4243d4
  getString() /* 0x3a1dcc */; // 0x4243d8
  x1 = "virtual_party_lucky_pocket_receive_popup_thank_tip3" /* pp+0xc918 */; // 0x4243e0
  local_m40 = x0; // 0x4243e4
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4243e8
  getString() /* 0x3a1dcc */; // 0x4243ec
  x1 = NULL; // 0x4243f0
  x2 = 6; // 0x4243f4
  local_m48 = x0; // 0x4243f8
  sub_0x61f920(); // 0x4243fc
  x0 = local_m38; // 0x424404
  x2 = x0; // 0x424400
  local_m50 = x2; // 0x424408
  memSet(x2, 0xf, w0); // 0x42440c
  x0 = local_m40; // 0x424410
  memSet(x2, 0x13, w0); // 0x424414
  x0 = local_m48; // 0x424418
  memSet(x2, 0x17, w0); // 0x42441c
  x1 = NULL; // 0x424420
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x424424
  x1 = local_m50; // 0x424428
  memSet(x0, 0xf, w1); // 0x42442c
  x1 = 6; // 0x424430
  memSet(x0, 0xb, w1); // 0x424434
  x1 = local_m8; // 0x424438
  memSet(x1, 0x27, w0); // 0x42443c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x424448
  w16 = mem(x1, -1); // 0x424440
  w17 = mem(x0, -1); // 0x424444
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x424440
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x424444
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x424454
  }
  x0 = local_m10; // 0x424458
  memSet(x1, 0xb, w0); // 0x42445c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x424468
  w16 = mem(x1, -1); // 0x424460
  w17 = mem(x0, -1); // 0x424464
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x424460
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x424464
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x424474
  }
  x0 = local_m18; // 0x424478
  memSet(x1, 0xf, w0); // 0x42447c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x424488
  w16 = mem(x1, -1); // 0x424480
  w17 = mem(x0, -1); // 0x424484
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x424480
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x424484
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x424494
  }
  x0 = local_m30; // 0x424498
  memSet(x1, 0x13, w0); // 0x42449c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4244a8
  w16 = mem(x1, -1); // 0x4244a0
  w17 = mem(x0, -1); // 0x4244a4
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4244a0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4244a4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4244b4
  }
  x0 = local_m20; // 0x4244b8
  memSet(x1, 0x17, w0); // 0x4244bc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4244c8
  w16 = mem(x1, -1); // 0x4244c0
  w17 = mem(x0, -1); // 0x4244c4
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4244c0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4244c4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4244d4
  }
  x0 = local_m28; // 0x4244d8
  memSet(x1, 0x1b, w0); // 0x4244dc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4244e8
  w16 = mem(x1, -1); // 0x4244e0
  w17 = mem(x0, -1); // 0x4244e4
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4244e0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4244e4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4244f4
  }
  d0 = 13.00000000 /* bits */; // 0x4244f8
  memSet(x1, 0x1f, d0); // 0x4244fc
  SP = FP; // 0x424504
  x0 = NULL; // 0x424500
  // frame: FP, LR, mem(SP), 0x10 // 0x424508
  return;
}

// myWallet
// raw disassembly:
//  0x3a6828: stp FP, LR, [SP, #-0x10]!
//  0x3a682c: mov FP, SP
//  0x3a6830: sub SP, SP, #0x68
//  0x3a6834: stur x1, [FP, #-8]
//  0x3a6838: stur x2, [FP, #-0x10]
//  0x3a683c: ldr BARRIER, [THR, #0x38]
//  0x3a6840: cmp SP, BARRIER
//  0x3a6844: b.ls #0x3a69e0
//  0x3a6848: bl #0x2e3578
//  0x3a684c: stur x0, [FP, #-0x18]
//  0x3a6850: stur xzr, [x0, #7]
//  0x3a6854: fmov d0, #24.00000000
//  0x3a6858: stur d0, [x0, #0xf]
//  0x3a685c: fmov d0, #10.00000000
//  0x3a6860: stur d0, [x0, #0x17]
//  0x3a6864: stur xzr, [x0, #0x1f]
//  0x3a6868: bl #0x2e3578
//  0x3a686c: fmov d0, #8.00000000
//  0x3a6870: stur x0, [FP, #-0x20]
//  0x3a6874: stur d0, [x0, #7]
//  0x3a6878: stur xzr, [x0, #0xf]
//  0x3a687c: stur d0, [x0, #0x17]
//  0x3a6880: stur xzr, [x0, #0x1f]
//  0x3a6884: bl #0x352b04
//  0x3a6888: fmov d0, #12.50000000
//  0x3a688c: stur x0, [FP, #-0x28]
//  0x3a6890: stur d0, [x0, #7]
//  0x3a6894: stur d0, [x0, #0xf]
//  0x3a6898: bl #0x392f28
//  0x3a689c: mov x1, x0
//  0x3a68a0: ldur x0, [FP, #-0x28]
//  0x3a68a4: stur x1, [FP, #-0x30]
//  0x3a68a8: stur w0, [x1, #7]
//  0x3a68ac: stur w0, [x1, #0xb]
//  0x3a68b0: stur w0, [x1, #0xf]
//  0x3a68b4: stur w0, [x1, #0x13]
//  0x3a68b8: bl #0x31d844
//  0x3a68bc: mov x1, x0
//  0x3a68c0: ldr x0, [PP, #0x6310]
//  0x3a68c4: stur w0, [x1, #0x27]
//  0x3a68c8: fmov d0, #1.00000000
//  0x3a68cc: stur d0, [x1, #7]
//  0x3a68d0: add x17, PP, #0x12, lsl #12
//  0x3a68d4: ldr d0, [x17, #0x380]
//  0x3a68d8: stur d0, [x1, #0xf]
//  0x3a68dc: add x17, PP, #0x12, lsl #12
//  0x3a68e0: ldr d0, [x17, #0x388]
//  0x3a68e4: stur d0, [x1, #0x17]
//  0x3a68e8: add x17, PP, #0x12, lsl #12
//  0x3a68ec: ldr d0, [x17, #0x390]
//  0x3a68f0: stur d0, [x1, #0x1f]
//  0x3a68f4: add BARRIER, PP, #0x12, lsl #12
//  0x3a68f8: ldr BARRIER, [BARRIER, #0x430]
//  0x3a68fc: str BARRIER, [SP]
//  0x3a6900: mov x2, x1
//  0x3a6904: mov x1, NULL
//  0x3a6908: add x4, PP, #0xf, lsl #12
//  0x3a690c: ldr x4, [x4, #0x818]
//  0x3a6910: bl #0x391e08
//  0x3a6914: stur x0, [FP, #-0x28]
//  0x3a6918: bl #0x391dd8
//  0x3a691c: mov x1, x0
//  0x3a6920: ldur x0, [FP, #-0x28]
//  0x3a6924: stur x1, [FP, #-0x38]
//  0x3a6928: stur w0, [x1, #0xf]
//  0x3a692c: ldur x0, [FP, #-0x30]
//  0x3a6930: stur w0, [x1, #0x13]
//  0x3a6934: add x0, PP, #0xe, lsl #12
//  0x3a6938: ldr x0, [x0, #0xb78]
//  0x3a693c: stur w0, [x1, #0x23]
//  0x3a6940: bl #0x393bf8
//  0x3a6944: mov x1, x0
//  0x3a6948: ldur x0, [FP, #-8]
//  0x3a694c: stur x1, [FP, #-0x28]
//  0x3a6950: stur w0, [x1, #0xb]
//  0x3a6954: ldur x0, [FP, #-0x10]
//  0x3a6958: stur w0, [x1, #0x13]
//  0x3a695c: bl #0x391a04
//  0x3a6960: stur x0, [FP, #-8]
//  0x3a6964: ldur BARRIER, [FP, #-0x18]
//  0x3a6968: ldur LR, [FP, #-0x20]
//  0x3a696c: stp LR, BARRIER, [SP, #0x20]
//  0x3a6970: add BARRIER, PP, #0xe, lsl #12
//  0x3a6974: ldr BARRIER, [BARRIER, #0xaa0]
//  0x3a6978: add LR, PP, #0xf, lsl #12
//  0x3a697c: ldr LR, [LR, #0x280]
//  0x3a6980: stp LR, BARRIER, [SP, #0x10]
//  0x3a6984: ldur BARRIER, [FP, #-0x38]
//  0x3a6988: ldur LR, [FP, #-0x28]
//  0x3a698c: stp LR, BARRIER, [SP]
//  0x3a6990: mov x1, x0
//  0x3a6994: add x4, PP, #0x12, lsl #12
//  0x3a6998: ldr x4, [x4, #0x438]
//  0x3a699c: bl #0x391490
//  0x3a69a0: bl #0x3a1d94
//  0x3a69a4: add x1, PP, #0x12, lsl #12
//  0x3a69a8: ldr x1, [x1, #0x440]
//  0x3a69ac: mov x2, NULL
//  0x3a69b0: stur x0, [FP, #-0x10]
//  0x3a69b4: bl #0x61ec54
//  0x3a69b8: ldur BARRIER, [FP, #-8]
//  0x3a69bc: stp x0, BARRIER, [SP]
//  0x3a69c0: ldur x1, [FP, #-0x10]
//  0x3a69c4: add x4, PP, #0xe, lsl #12
//  0x3a69c8: ldr x4, [x4, #0xec0]
//  0x3a69cc: bl #0x3a18c4
//  0x3a69d0: ldur x0, [FP, #-0x10]
//  0x3a69d4: mov SP, FP
//  0x3a69d8: ldp FP, LR, [SP], #0x10
//  0x3a69dc: ret 
//  0x3a69e0: bl #0x61fa28
//  0x3a69e4: b #0x3a6848
//
dynamic myWallet() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a6828
  // frame: FP = SP // 0x3a682c
  // frame: SP = SP - 0x68 // 0x3a6830
  local_m8 = x1; // 0x3a6834
  local_m10 = x2; // 0x3a6838
  BARRIER = mem(THR, 0x38); // 0x3a683c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a69e0
  }
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3a6848
  local_m18 = x0; // 0x3a684c
  memSet(x0, 7, xzr); // 0x3a6850
  d0 = 24.00000000 /* bits */; // 0x3a6854
  memSet(x0, 0xf, d0); // 0x3a6858
  d0 = 10.00000000 /* bits */; // 0x3a685c
  memSet(x0, 0x17, d0); // 0x3a6860
  memSet(x0, 0x1f, xzr); // 0x3a6864
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3a6868
  d0 = 8.00000000 /* bits */; // 0x3a686c
  local_m20 = x0; // 0x3a6870
  memSet(x0, 7, d0); // 0x3a6874
  memSet(x0, 0xf, xzr); // 0x3a6878
  memSet(x0, 0x17, d0); // 0x3a687c
  memSet(x0, 0x1f, xzr); // 0x3a6880
  AllocationStub_Radius() /* 0x352b04 */; // 0x3a6884
  d0 = 12.50000000 /* bits */; // 0x3a6888
  local_m28 = x0; // 0x3a688c
  memSet(x0, 7, d0); // 0x3a6890
  memSet(x0, 0xf, d0); // 0x3a6894
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x3a6898
  x0 = local_m28; // 0x3a68a0
  x1 = x0; // 0x3a689c
  local_m30 = x1; // 0x3a68a4
  memSet(x1, 7, w0); // 0x3a68a8
  memSet(x1, 0xb, w0); // 0x3a68ac
  memSet(x1, 0xf, w0); // 0x3a68b0
  memSet(x1, 0x13, w0); // 0x3a68b4
  AllocationStub_Color() /* 0x31d844 */; // 0x3a68b8
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a68c0
  x1 = x0; // 0x3a68bc
  memSet(x1, 0x27, w0); // 0x3a68c4
  d0 = 1.00000000 /* bits */; // 0x3a68c8
  memSet(x1, 7, d0); // 0x3a68cc
  d0 = 4606052103599422460; // 0x3a68d4
  x17 = PP + 0x12000; // 0x3a68d0
  memSet(x1, 0xf, d0); // 0x3a68d8
  d0 = 4605027755448883288; // 0x3a68e0
  x17 = PP + 0x12000; // 0x3a68dc
  memSet(x1, 0x17, d0); // 0x3a68e4
  d0 = 4596515069094402586; // 0x3a68ec
  x17 = PP + 0x12000; // 0x3a68e8
  memSet(x1, 0x1f, d0); // 0x3a68f0
  BARRIER = mem((PP + 0x12000), 0x430) /* Double */; // 0x3a68f8
  local_0 = BARRIER; // 0x3a68fc
  x1 = NULL; // 0x3a6904
  x2 = x1; // 0x3a6900
  x4 = mem((PP + 0xf000), 0x818) /* ImmutableArray */; // 0x3a690c
  Border_factory_ctor_all() /* 0x391e08 */; // 0x3a6910
  local_m28 = x0; // 0x3a6914
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x3a6918
  x0 = local_m28; // 0x3a6920
  x1 = x0; // 0x3a691c
  local_m38 = x1; // 0x3a6924
  memSet(x1, 0xf, w0); // 0x3a6928
  x0 = local_m30; // 0x3a692c
  memSet(x1, 0x13, w0); // 0x3a6930
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x3a6938
  memSet(x1, 0x23, w0); // 0x3a693c
  AllocationStub_Text() /* 0x393bf8 */; // 0x3a6940
  x0 = local_m8; // 0x3a6948
  x1 = x0; // 0x3a6944
  local_m28 = x1; // 0x3a694c
  memSet(x1, 0xb, w0); // 0x3a6950
  x0 = local_m10; // 0x3a6954
  memSet(x1, 0x13, w0); // 0x3a6958
  AllocationStub_Container() /* 0x391a04 */; // 0x3a695c
  local_m8 = x0; // 0x3a6960
  BARRIER = local_m18; // 0x3a6964
  LR = local_m20; // 0x3a6968
  // frame: LR, BARRIER, mem(SP, 0x20) // 0x3a696c
  BARRIER = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x3a6974
  LR = mem((PP + 0xf000), 0x280) /* Double */; // 0x3a697c
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x3a6980
  BARRIER = local_m38; // 0x3a6984
  LR = local_m28; // 0x3a6988
  // frame: LR, BARRIER, mem(SP) // 0x3a698c
  x1 = x0; // 0x3a6990
  x4 = mem((PP + 0x12000), 0x438) /* ImmutableArray */; // 0x3a6998
  Container_ctor() /* 0x391490 */; // 0x3a699c
  sub_0x3a1d94(); // 0x3a69a0
  x1 = mem((PP + 0x12000), 0x440) /* Function */; // 0x3a69a8
  x2 = NULL; // 0x3a69ac
  local_m10 = x0; // 0x3a69b0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3a69b4
  BARRIER = local_m8; // 0x3a69b8
  // frame: x0, BARRIER, mem(SP) // 0x3a69bc
  x1 = local_m10; // 0x3a69c0
  x4 = mem((PP + 0xe000), 0xec0) /* ImmutableArray */; // 0x3a69c8
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x3a69cc
  SP = FP; // 0x3a69d4
  x0 = local_m10; // 0x3a69d0
  // frame: FP, LR, mem(SP), 0x10 // 0x3a69d8
  return;
}

// anon_closure
// raw disassembly:
//  0x3a69e8: stp FP, LR, [SP, #-0x10]!
//  0x3a69ec: mov FP, SP
//  0x3a69f0: sub SP, SP, #0x20
//  0x3a69f4: stur NULL, [FP, #-8]
//  0x3a69f8: mov x0, #0
//  0x3a69fc: add x1, FP, w0, sxtw #2
//  0x3a6a00: ldr x1, [x1, #0x10]
//  0x3a6a04: ldur w2, [x1, #0x17]
//  0x3a6a08: add x2, x2, HEAP, lsl #32
//  0x3a6a0c: stur x2, [FP, #-0x10]
//  0x3a6a10: ldr BARRIER, [THR, #0x38]
//  0x3a6a14: cmp SP, BARRIER
//  0x3a6a18: b.ls #0x3a6a58
//  0x3a6a1c: ldr x0, [PP, #0x1658]
//  0x3a6a20: bl #0x2b16e4
//  0x3a6a24: bl #0x3a86c0
//  0x3a6a28: add x1, PP, #0x12, lsl #12
//  0x3a6a2c: ldr x1, [x1, #0x448]
//  0x3a6a30: stur x0, [FP, #-0x18]
//  0x3a6a34: bl #0x3a8520
//  0x3a6a38: mov x1, x0
//  0x3a6a3c: stur x1, [FP, #-0x20]
//  0x3a6a40: bl #0x2b13a0
//  0x3a6a44: ldur x1, [FP, #-0x18]
//  0x3a6a48: mov x2, x0
//  0x3a6a4c: bl #0x3a6a60
//  0x3a6a50: mov x0, NULL
//  0x3a6a54: b #0x2b16b8
//  0x3a6a58: bl #0x61fa28
//  0x3a6a5c: b #0x3a6a1c
//
dynamic anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a69e8
  // frame: FP = SP // 0x3a69ec
  // frame: SP = SP - 0x20 // 0x3a69f0
  local_m8 = NULL; // 0x3a69f4
  w2 = mem((mem((FP + (w0 /* sxtw 2 */)), 0x10)), 0x17); // 0x3a6a04
  x0 = 0; // 0x3a69f8
  x1 = mem((FP + (w0 /* sxtw 2 */)), 0x10); // 0x3a6a00
  x2 = ((mem((mem((FP + (w0 /* sxtw 2 */)), 0x10)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3a6a08
  local_m10 = x2; // 0x3a6a0c
  BARRIER = mem(THR, 0x38); // 0x3a6a10
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a6a58
  }
  x0 = mem(PP, 0x1658) /* TypeArguments */; // 0x3a6a1c
  sub_0x2b16e4(); // 0x3a6a20
  RouterNative_getInstance() /* 0x3a86c0 */; // 0x3a6a24
  x1 = "app/#/coin" /* pp+0x12448 */; // 0x3a6a2c
  local_m18 = x0; // 0x3a6a30
  getUrlWithHost() /* 0x3a8520 */; // 0x3a6a34
  x1 = x0; // 0x3a6a38
  local_m20 = x1; // 0x3a6a3c
  sub_0x2b13a0(); // 0x3a6a40
  x1 = local_m18; // 0x3a6a44
  x2 = x0; // 0x3a6a48
  RouterNative_routeH5() /* 0x3a6a60 */; // 0x3a6a4c
  x0 = NULL; // 0x3a6a50
}

// PagePartyLotteryPityInfo_build
// raw disassembly:
//  0x3a901c: stp FP, LR, [SP, #-0x10]!
//  0x3a9020: mov FP, SP
//  0x3a9024: sub SP, SP, #0x88
//  0x3a9028: mov x0, x1
//  0x3a902c: stur x1, [FP, #-8]
//  0x3a9030: mov x1, x2
//  0x3a9034: stur x2, [FP, #-0x10]
//  0x3a9038: ldr BARRIER, [THR, #0x38]
//  0x3a903c: cmp SP, BARRIER
//  0x3a9040: b.ls #0x3a97d0
//  0x3a9044: mov x1, #2
//  0x3a9048: bl #0x61e890
//  0x3a904c: mov x2, x0
//  0x3a9050: ldur x0, [FP, #-8]
//  0x3a9054: stur x2, [FP, #-0x18]
//  0x3a9058: stur w0, [x2, #0xf]
//  0x3a905c: ldur x1, [FP, #-0x10]
//  0x3a9060: stur w1, [x2, #0x13]
//  0x3a9064: bl #0x3a877c
//  0x3a9068: ldur x0, [FP, #-8]
//  0x3a906c: ldur w2, [x0, #0x13]
//  0x3a9070: add x2, x2, HEAP, lsl #32
//  0x3a9074: stur x2, [FP, #-0x20]
//  0x3a9078: ldur w3, [x0, #0x17]
//  0x3a907c: add x3, x3, HEAP, lsl #32
//  0x3a9080: stur x3, [FP, #-0x10]
//  0x3a9084: add x17, PP, #0x12, lsl #12
//  0x3a9088: ldr d1, [x17, #0x4b0]
//  0x3a908c: fsub d2, d0, d1
//  0x3a9090: fmov d0, #0.50000000
//  0x3a9094: fmul d3, d2, d0
//  0x3a9098: stur d3, [FP, #-0x70]
//  0x3a909c: add x1, PP, #0xc, lsl #12
//  0x3a90a0: ldr x1, [x1, #0x998]
//  0x3a90a4: ldr x4, [PP, #0x4c0]
//  0x3a90a8: bl #0x3a1dcc
//  0x3a90ac: ldr BARRIER, [PP, #0x1af8]
//  0x3a90b0: stp BARRIER, x0, [SP]
//  0x3a90b4: bl #0x281718
//  0x3a90b8: ldr BARRIER, [PP, #0x25e0]
//  0x3a90bc: stp BARRIER, x0, [SP]
//  0x3a90c0: bl #0x281718
//  0x3a90c4: stur x0, [FP, #-0x28]
//  0x3a90c8: bl #0x31d844
//  0x3a90cc: mov x1, x0
//  0x3a90d0: ldr x0, [PP, #0x6310]
//  0x3a90d4: stur x1, [FP, #-0x30]
//  0x3a90d8: stur w0, [x1, #0x27]
//  0x3a90dc: fmov d0, #1.00000000
//  0x3a90e0: stur d0, [x1, #7]
//  0x3a90e4: add x17, PP, #0x12, lsl #12
//  0x3a90e8: ldr d1, [x17, #0x380]
//  0x3a90ec: stur d1, [x1, #0xf]
//  0x3a90f0: add x17, PP, #0x12, lsl #12
//  0x3a90f4: ldr d1, [x17, #0x388]
//  0x3a90f8: stur d1, [x1, #0x17]
//  0x3a90fc: add x17, PP, #0x12, lsl #12
//  0x3a9100: ldr d1, [x17, #0x390]
//  0x3a9104: stur d1, [x1, #0x1f]
//  0x3a9108: bl #0x31abec
//  0x3a910c: mov x1, x0
//  0x3a9110: add x0, NULL, #0x20
//  0x3a9114: stur x1, [FP, #-0x38]
//  0x3a9118: stur w0, [x1, #7]
//  0x3a911c: ldur x2, [FP, #-0x30]
//  0x3a9120: stur w2, [x1, #0xb]
//  0x3a9124: add x2, PP, #0xe, lsl #12
//  0x3a9128: ldr x2, [x2, #0xde8]
//  0x3a912c: stur w2, [x1, #0x1f]
//  0x3a9130: add x2, PP, #0x11, lsl #12
//  0x3a9134: ldr x2, [x2, #0x590]
//  0x3a9138: stur w2, [x1, #0x13]
//  0x3a913c: bl #0x31d844
//  0x3a9140: mov x1, x0
//  0x3a9144: ldr x0, [PP, #0x6310]
//  0x3a9148: stur x1, [FP, #-0x30]
//  0x3a914c: stur w0, [x1, #0x27]
//  0x3a9150: fmov d0, #1.00000000
//  0x3a9154: stur d0, [x1, #7]
//  0x3a9158: add x17, PP, #0x11, lsl #12
//  0x3a915c: ldr d1, [x17, #0xb78]
//  0x3a9160: stur d1, [x1, #0xf]
//  0x3a9164: add x17, PP, #0x12, lsl #12
//  0x3a9168: ldr d2, [x17, #0x4b8]
//  0x3a916c: stur d2, [x1, #0x17]
//  0x3a9170: add x17, PP, #0x10, lsl #12
//  0x3a9174: ldr d3, [x17, #0xae0]
//  0x3a9178: stur d3, [x1, #0x1f]
//  0x3a917c: bl #0x31abec
//  0x3a9180: mov x1, x0
//  0x3a9184: add x0, NULL, #0x20
//  0x3a9188: stur x1, [FP, #-0x40]
//  0x3a918c: stur w0, [x1, #7]
//  0x3a9190: ldur x2, [FP, #-0x30]
//  0x3a9194: stur w2, [x1, #0xb]
//  0x3a9198: add x2, PP, #0xe, lsl #12
//  0x3a919c: ldr x2, [x2, #0xb50]
//  0x3a91a0: stur w2, [x1, #0x1f]
//  0x3a91a4: add x3, PP, #0xe, lsl #12
//  0x3a91a8: ldr x3, [x3, #0xe40]
//  0x3a91ac: stur w3, [x1, #0x23]
//  0x3a91b0: bl #0x31d844
//  0x3a91b4: mov x1, x0
//  0x3a91b8: ldr x0, [PP, #0x6310]
//  0x3a91bc: stur x1, [FP, #-0x30]
//  0x3a91c0: stur w0, [x1, #0x27]
//  0x3a91c4: fmov d0, #1.00000000
//  0x3a91c8: stur d0, [x1, #7]
//  0x3a91cc: add x17, PP, #0x11, lsl #12
//  0x3a91d0: ldr d1, [x17, #0xb78]
//  0x3a91d4: stur d1, [x1, #0xf]
//  0x3a91d8: add x17, PP, #0x12, lsl #12
//  0x3a91dc: ldr d1, [x17, #0x4b8]
//  0x3a91e0: stur d1, [x1, #0x17]
//  0x3a91e4: add x17, PP, #0x10, lsl #12
//  0x3a91e8: ldr d1, [x17, #0xae0]
//  0x3a91ec: stur d1, [x1, #0x1f]
//  0x3a91f0: bl #0x31abec
//  0x3a91f4: mov x1, x0
//  0x3a91f8: add x0, NULL, #0x20
//  0x3a91fc: stur x1, [FP, #-0x48]
//  0x3a9200: stur w0, [x1, #7]
//  0x3a9204: ldur x2, [FP, #-0x30]
//  0x3a9208: stur w2, [x1, #0xb]
//  0x3a920c: add x2, PP, #0xe, lsl #12
//  0x3a9210: ldr x2, [x2, #0xb50]
//  0x3a9214: stur w2, [x1, #0x1f]
//  0x3a9218: add x3, PP, #0xf, lsl #12
//  0x3a921c: ldr x3, [x3, #0xe88]
//  0x3a9220: stur w3, [x1, #0x23]
//  0x3a9224: bl #0x31d844
//  0x3a9228: mov x1, x0
//  0x3a922c: ldr x0, [PP, #0x6310]
//  0x3a9230: stur x1, [FP, #-0x30]
//  0x3a9234: stur w0, [x1, #0x27]
//  0x3a9238: fmov d0, #1.00000000
//  0x3a923c: stur d0, [x1, #7]
//  0x3a9240: add x17, PP, #0x10, lsl #12
//  0x3a9244: ldr d0, [x17, #0xad0]
//  0x3a9248: stur d0, [x1, #0xf]
//  0x3a924c: add x17, PP, #0x10, lsl #12
//  0x3a9250: ldr d0, [x17, #0xad8]
//  0x3a9254: stur d0, [x1, #0x17]
//  0x3a9258: add x17, PP, #0x10, lsl #12
//  0x3a925c: ldr d0, [x17, #0xae0]
//  0x3a9260: stur d0, [x1, #0x1f]
//  0x3a9264: bl #0x31abec
//  0x3a9268: mov x2, x0
//  0x3a926c: add x0, NULL, #0x20
//  0x3a9270: stur x2, [FP, #-0x50]
//  0x3a9274: stur w0, [x2, #7]
//  0x3a9278: ldur x1, [FP, #-0x30]
//  0x3a927c: stur w1, [x2, #0xb]
//  0x3a9280: add x1, PP, #0xe, lsl #12
//  0x3a9284: ldr x1, [x1, #0xb50]
//  0x3a9288: stur w1, [x2, #0x1f]
//  0x3a928c: add x1, PP, #0xe, lsl #12
//  0x3a9290: ldr x1, [x1, #0xe40]
//  0x3a9294: stur w1, [x2, #0x23]
//  0x3a9298: add x1, PP, #0xc, lsl #12
//  0x3a929c: ldr x1, [x1, #0x978]
//  0x3a92a0: ldr x4, [PP, #0x4c0]
//  0x3a92a4: bl #0x3a1dcc
//  0x3a92a8: add x1, PP, #0xc, lsl #12
//  0x3a92ac: ldr x1, [x1, #0x978]
//  0x3a92b0: stur x0, [FP, #-0x30]
//  0x3a92b4: ldr x4, [PP, #0x4c0]
//  0x3a92b8: bl #0x3a1dcc
//  0x3a92bc: add x1, PP, #0xc, lsl #12
//  0x3a92c0: ldr x1, [x1, #0x988]
//  0x3a92c4: stur x0, [FP, #-0x58]
//  0x3a92c8: ldr x4, [PP, #0x4c0]
//  0x3a92cc: bl #0x3a1dcc
//  0x3a92d0: stur x0, [FP, #-0x60]
//  0x3a92d4: ldur BARRIER, [FP, #-0x30]
//  0x3a92d8: ldr LR, [PP, #0x1af8]
//  0x3a92dc: stp LR, BARRIER, [SP]
//  0x3a92e0: bl #0x281718
//  0x3a92e4: ldr BARRIER, [PP, #0x25e0]
//  0x3a92e8: stp BARRIER, x0, [SP]
//  0x3a92ec: bl #0x281718
//  0x3a92f0: stur x0, [FP, #-0x30]
//  0x3a92f4: ldur BARRIER, [FP, #-0x58]
//  0x3a92f8: ldr LR, [PP, #0x1af8]
//  0x3a92fc: stp LR, BARRIER, [SP]
//  0x3a9300: bl #0x281718
//  0x3a9304: ldr BARRIER, [PP, #0x25e0]
//  0x3a9308: stp BARRIER, x0, [SP]
//  0x3a930c: bl #0x281718
//  0x3a9310: stur x0, [FP, #-0x58]
//  0x3a9314: bl #0x391a04
//  0x3a9318: stur x0, [FP, #-0x68]
//  0x3a931c: ldr BARRIER, [PP, #0x5458]
//  0x3a9320: add LR, PP, #0x12, lsl #12
//  0x3a9324: ldr LR, [LR, #0x4c0]
//  0x3a9328: stp LR, BARRIER, [SP]
//  0x3a932c: mov x1, x0
//  0x3a9330: add x4, PP, #0xa, lsl #12
//  0x3a9334: ldr x4, [x4, #0xc8]
//  0x3a9338: bl #0x391490
//  0x3a933c: ldur x1, [FP, #-0x28]
//  0x3a9340: ldur x2, [FP, #-0x38]
//  0x3a9344: bl #0x3a6828
//  0x3a9348: add x1, PP, #0xf, lsl #12
//  0x3a934c: ldr x1, [x1, #0x5d8]
//  0x3a9350: stur x0, [FP, #-0x28]
//  0x3a9354: bl #0x399e40
//  0x3a9358: mov x1, x0
//  0x3a935c: ldr x0, [PP, #0x52c8]
//  0x3a9360: stur x1, [FP, #-0x38]
//  0x3a9364: stur w0, [x1, #0x17]
//  0x3a9368: stur w0, [x1, #0x1b]
//  0x3a936c: ldur x0, [FP, #-0x28]
//  0x3a9370: stur w0, [x1, #0xb]
//  0x3a9374: bl #0x3a67fc
//  0x3a9378: mov x2, x0
//  0x3a937c: ldur x0, [FP, #-0x20]
//  0x3a9380: stur x2, [FP, #-0x28]
//  0x3a9384: stur w0, [x2, #0xb]
//  0x3a9388: ldur x0, [FP, #-0x10]
//  0x3a938c: stur w0, [x2, #0xf]
//  0x3a9390: add x17, PP, #0x12, lsl #12
//  0x3a9394: ldr d0, [x17, #0x4b0]
//  0x3a9398: stur d0, [x2, #0x13]
//  0x3a939c: add x0, NULL, #0x20
//  0x3a93a0: stur w0, [x2, #0x1b]
//  0x3a93a4: ldur d0, [FP, #-0x70]
//  0x3a93a8: ldp x0, x1, [THR, #0x50]
//  0x3a93ac: add x0, x0, #0x10
//  0x3a93b0: cmp x1, x0
//  0x3a93b4: b.ls #0x3a97d8
//  0x3a93b8: str x0, [THR, #0x50]
//  0x3a93bc: sub x0, x0, #0xf
//  0x3a93c0: mov x1, #0xe15c
//  0x3a93c4: movk x1, #3, lsl #16
//  0x3a93c8: stur x1, [x0, #-1]
//  0x3a93cc: stur d0, [x0, #7]
//  0x3a93d0: stur x0, [FP, #-0x10]
//  0x3a93d4: add x1, PP, #0xf, lsl #12
//  0x3a93d8: ldr x1, [x1, #0x5d8]
//  0x3a93dc: bl #0x399e40
//  0x3a93e0: mov x3, x0
//  0x3a93e4: ldur x0, [FP, #-0x10]
//  0x3a93e8: stur x3, [FP, #-0x20]
//  0x3a93ec: stur w0, [x3, #0x13]
//  0x3a93f0: add x0, PP, #0x11, lsl #12
//  0x3a93f4: ldr x0, [x0, #0xba0]
//  0x3a93f8: stur w0, [x3, #0x17]
//  0x3a93fc: ldur x0, [FP, #-0x28]
//  0x3a9400: stur w0, [x3, #0xb]
//  0x3a9404: mov x1, NULL
//  0x3a9408: mov x2, #6
//  0x3a940c: bl #0x61f920
//  0x3a9410: mov x2, x0
//  0x3a9414: ldur x0, [FP, #-0x68]
//  0x3a9418: stur x2, [FP, #-0x10]
//  0x3a941c: stur w0, [x2, #0xf]
//  0x3a9420: ldur x0, [FP, #-0x38]
//  0x3a9424: stur w0, [x2, #0x13]
//  0x3a9428: ldur x0, [FP, #-0x20]
//  0x3a942c: stur w0, [x2, #0x17]
//  0x3a9430: ldr x1, [PP, #0x5c58]
//  0x3a9434: bl #0x61e854
//  0x3a9438: mov x1, x0
//  0x3a943c: ldur x0, [FP, #-0x10]
//  0x3a9440: stur x1, [FP, #-0x20]
//  0x3a9444: stur w0, [x1, #0xf]
//  0x3a9448: mov x2, #6
//  0x3a944c: stur w2, [x1, #0xb]
//  0x3a9450: bl #0x39e6f4
//  0x3a9454: mov x1, x0
//  0x3a9458: add x0, PP, #0xe, lsl #12
//  0x3a945c: ldr x0, [x0, #0xf00]
//  0x3a9460: stur x1, [FP, #-0x28]
//  0x3a9464: stur w0, [x1, #0xf]
//  0x3a9468: add x0, PP, #0xe, lsl #12
//  0x3a946c: ldr x0, [x0, #0xf08]
//  0x3a9470: stur w0, [x1, #0x17]
//  0x3a9474: add x0, PP, #0xe, lsl #12
//  0x3a9478: ldr x0, [x0, #0xf10]
//  0x3a947c: stur w0, [x1, #0x1b]
//  0x3a9480: ldur x0, [FP, #-0x20]
//  0x3a9484: stur w0, [x1, #0xb]
//  0x3a9488: ldur x0, [FP, #-8]
//  0x3a948c: ldur w2, [x0, #0xf]
//  0x3a9490: add x2, x2, HEAP, lsl #32
//  0x3a9494: stur x2, [FP, #-0x10]
//  0x3a9498: tbnz w2, #4, #0x3a9544
//  0x3a949c: ldur x3, [FP, #-0x40]
//  0x3a94a0: ldur x0, [FP, #-0x30]
//  0x3a94a4: bl #0x2e3578
//  0x3a94a8: stur x0, [FP, #-8]
//  0x3a94ac: stur xzr, [x0, #7]
//  0x3a94b0: fmov d0, #29.00000000
//  0x3a94b4: stur d0, [x0, #0xf]
//  0x3a94b8: stur xzr, [x0, #0x17]
//  0x3a94bc: stur xzr, [x0, #0x1f]
//  0x3a94c0: bl #0x393bf8
//  0x3a94c4: mov x1, x0
//  0x3a94c8: ldur x0, [FP, #-0x30]
//  0x3a94cc: stur x1, [FP, #-0x20]
//  0x3a94d0: stur w0, [x1, #0xb]
//  0x3a94d4: ldur x0, [FP, #-0x40]
//  0x3a94d8: stur w0, [x1, #0x13]
//  0x3a94dc: bl #0x391a04
//  0x3a94e0: stur x0, [FP, #-0x30]
//  0x3a94e4: ldur BARRIER, [FP, #-8]
//  0x3a94e8: add LR, PP, #0xe, lsl #12
//  0x3a94ec: ldr LR, [LR, #0xaa0]
//  0x3a94f0: stp LR, BARRIER, [SP, #8]
//  0x3a94f4: ldur BARRIER, [FP, #-0x20]
//  0x3a94f8: str BARRIER, [SP]
//  0x3a94fc: mov x1, x0
//  0x3a9500: add x4, PP, #0x10, lsl #12
//  0x3a9504: ldr x4, [x4, #0xca8]
//  0x3a9508: bl #0x391490
//  0x3a950c: bl #0x3a1d94
//  0x3a9510: ldur x2, [FP, #-0x18]
//  0x3a9514: add x1, PP, #0x12, lsl #12
//  0x3a9518: ldr x1, [x1, #0x4c8]
//  0x3a951c: stur x0, [FP, #-8]
//  0x3a9520: bl #0x61ec54
//  0x3a9524: ldur BARRIER, [FP, #-0x30]
//  0x3a9528: stp x0, BARRIER, [SP]
//  0x3a952c: ldur x1, [FP, #-8]
//  0x3a9530: add x4, PP, #0xe, lsl #12
//  0x3a9534: ldr x4, [x4, #0xec0]
//  0x3a9538: bl #0x3a18c4
//  0x3a953c: ldur x1, [FP, #-8]
//  0x3a9540: b #0x3a96d0
//  0x3a9544: ldur x3, [FP, #-0x48]
//  0x3a9548: ldur x2, [FP, #-0x50]
//  0x3a954c: ldur x1, [FP, #-0x60]
//  0x3a9550: ldur x0, [FP, #-0x58]
//  0x3a9554: bl #0x2e3578
//  0x3a9558: stur x0, [FP, #-8]
//  0x3a955c: stur xzr, [x0, #7]
//  0x3a9560: fmov d0, #18.00000000
//  0x3a9564: stur d0, [x0, #0xf]
//  0x3a9568: stur xzr, [x0, #0x17]
//  0x3a956c: stur xzr, [x0, #0x1f]
//  0x3a9570: bl #0x393bf8
//  0x3a9574: mov x1, x0
//  0x3a9578: ldur x0, [FP, #-0x60]
//  0x3a957c: stur x1, [FP, #-0x20]
//  0x3a9580: stur w0, [x1, #0xb]
//  0x3a9584: ldur x0, [FP, #-0x50]
//  0x3a9588: stur w0, [x1, #0x13]
//  0x3a958c: bl #0x3949ec
//  0x3a9590: mov x1, x0
//  0x3a9594: add x0, PP, #0x12, lsl #12
//  0x3a9598: ldr x0, [x0, #0x338]
//  0x3a959c: stur x1, [FP, #-0x30]
//  0x3a95a0: stur w0, [x1, #0x13]
//  0x3a95a4: bl #0x393bf8
//  0x3a95a8: mov x1, x0
//  0x3a95ac: ldur x0, [FP, #-0x58]
//  0x3a95b0: stur x1, [FP, #-0x38]
//  0x3a95b4: stur w0, [x1, #0xb]
//  0x3a95b8: ldur x0, [FP, #-0x48]
//  0x3a95bc: stur w0, [x1, #0x13]
//  0x3a95c0: bl #0x3a1d94
//  0x3a95c4: ldur x2, [FP, #-0x18]
//  0x3a95c8: add x1, PP, #0x12, lsl #12
//  0x3a95cc: ldr x1, [x1, #0x4d0]
//  0x3a95d0: stur x0, [FP, #-0x18]
//  0x3a95d4: bl #0x61ec54
//  0x3a95d8: ldur BARRIER, [FP, #-0x38]
//  0x3a95dc: stp x0, BARRIER, [SP]
//  0x3a95e0: ldur x1, [FP, #-0x18]
//  0x3a95e4: add x4, PP, #0xe, lsl #12
//  0x3a95e8: ldr x4, [x4, #0xec0]
//  0x3a95ec: bl #0x3a18c4
//  0x3a95f0: mov x1, NULL
//  0x3a95f4: mov x2, #6
//  0x3a95f8: bl #0x61f920
//  0x3a95fc: mov x2, x0
//  0x3a9600: ldur x0, [FP, #-0x20]
//  0x3a9604: stur x2, [FP, #-0x38]
//  0x3a9608: stur w0, [x2, #0xf]
//  0x3a960c: ldur x0, [FP, #-0x30]
//  0x3a9610: stur w0, [x2, #0x13]
//  0x3a9614: ldur x0, [FP, #-0x18]
//  0x3a9618: stur w0, [x2, #0x17]
//  0x3a961c: ldr x1, [PP, #0x5c58]
//  0x3a9620: bl #0x61e854
//  0x3a9624: mov x1, x0
//  0x3a9628: ldur x0, [FP, #-0x38]
//  0x3a962c: stur x1, [FP, #-0x18]
//  0x3a9630: stur w0, [x1, #0xf]
//  0x3a9634: mov x2, #6
//  0x3a9638: stur w2, [x1, #0xb]
//  0x3a963c: bl #0x39310c
//  0x3a9640: mov x1, x0
//  0x3a9644: add x0, PP, #0xa, lsl #12
//  0x3a9648: ldr x0, [x0, #0x858]
//  0x3a964c: stur x1, [FP, #-0x20]
//  0x3a9650: stur w0, [x1, #0xf]
//  0x3a9654: add x2, PP, #0xe, lsl #12
//  0x3a9658: ldr x2, [x2, #0xae0]
//  0x3a965c: stur w2, [x1, #0x13]
//  0x3a9660: add x3, PP, #0xe, lsl #12
//  0x3a9664: ldr x3, [x3, #0xae8]
//  0x3a9668: stur w3, [x1, #0x17]
//  0x3a966c: add x4, PP, #0xe, lsl #12
//  0x3a9670: ldr x4, [x4, #0xb60]
//  0x3a9674: stur w4, [x1, #0x1b]
//  0x3a9678: add x5, PP, #0xe, lsl #12
//  0x3a967c: ldr x5, [x5, #0xaf8]
//  0x3a9680: stur w5, [x1, #0x23]
//  0x3a9684: add x6, PP, #0xa, lsl #12
//  0x3a9688: ldr x6, [x6, #0xa8]
//  0x3a968c: stur w6, [x1, #0x2b]
//  0x3a9690: stur xzr, [x1, #0x2f]
//  0x3a9694: ldur x7, [FP, #-0x18]
//  0x3a9698: stur w7, [x1, #0xb]
//  0x3a969c: bl #0x391a04
//  0x3a96a0: stur x0, [FP, #-0x18]
//  0x3a96a4: ldur BARRIER, [FP, #-8]
//  0x3a96a8: add LR, PP, #0xe, lsl #12
//  0x3a96ac: ldr LR, [LR, #0xaa0]
//  0x3a96b0: stp LR, BARRIER, [SP, #8]
//  0x3a96b4: ldur BARRIER, [FP, #-0x20]
//  0x3a96b8: str BARRIER, [SP]
//  0x3a96bc: mov x1, x0
//  0x3a96c0: add x4, PP, #0x10, lsl #12
//  0x3a96c4: ldr x4, [x4, #0xca8]
//  0x3a96c8: bl #0x391490
//  0x3a96cc: ldur x1, [FP, #-0x18]
//  0x3a96d0: ldur x0, [FP, #-0x10]
//  0x3a96d4: stur x1, [FP, #-8]
//  0x3a96d8: tbnz w0, #4, #0x3a96f8
//  0x3a96dc: bl #0x3949ec
//  0x3a96e0: mov x1, x0
//  0x3a96e4: add x0, PP, #0xf, lsl #12
//  0x3a96e8: ldr x0, [x0, #0xba8]
//  0x3a96ec: stur w0, [x1, #0x13]
//  0x3a96f0: mov x5, x1
//  0x3a96f4: b #0x3a9710
//  0x3a96f8: bl #0x3949ec
//  0x3a96fc: mov x1, x0
//  0x3a9700: add x0, PP, #0x12, lsl #12
//  0x3a9704: ldr x0, [x0, #0x4d8]
//  0x3a9708: stur w0, [x1, #0x13]
//  0x3a970c: mov x5, x1
//  0x3a9710: ldur x4, [FP, #-0x28]
//  0x3a9714: ldur x0, [FP, #-8]
//  0x3a9718: mov x3, #6
//  0x3a971c: mov x2, x3
//  0x3a9720: stur x5, [FP, #-0x10]
//  0x3a9724: mov x1, NULL
//  0x3a9728: bl #0x61f920
//  0x3a972c: mov x2, x0
//  0x3a9730: ldur x0, [FP, #-0x28]
//  0x3a9734: stur x2, [FP, #-0x18]
//  0x3a9738: stur w0, [x2, #0xf]
//  0x3a973c: ldur x0, [FP, #-8]
//  0x3a9740: stur w0, [x2, #0x13]
//  0x3a9744: ldur x0, [FP, #-0x10]
//  0x3a9748: stur w0, [x2, #0x17]
//  0x3a974c: ldr x1, [PP, #0x5c58]
//  0x3a9750: bl #0x61e854
//  0x3a9754: mov x1, x0
//  0x3a9758: ldur x0, [FP, #-0x18]
//  0x3a975c: stur x1, [FP, #-8]
//  0x3a9760: stur w0, [x1, #0xf]
//  0x3a9764: mov x0, #6
//  0x3a9768: stur w0, [x1, #0xb]
//  0x3a976c: bl #0x39310c
//  0x3a9770: add x1, PP, #0xa, lsl #12
//  0x3a9774: ldr x1, [x1, #0x858]
//  0x3a9778: stur w1, [x0, #0xf]
//  0x3a977c: add x1, PP, #0xe, lsl #12
//  0x3a9780: ldr x1, [x1, #0xae0]
//  0x3a9784: stur w1, [x0, #0x13]
//  0x3a9788: add x1, PP, #0xe, lsl #12
//  0x3a978c: ldr x1, [x1, #0xae8]
//  0x3a9790: stur w1, [x0, #0x17]
//  0x3a9794: add x1, PP, #0xe, lsl #12
//  0x3a9798: ldr x1, [x1, #0xb60]
//  0x3a979c: stur w1, [x0, #0x1b]
//  0x3a97a0: add x1, PP, #0xe, lsl #12
//  0x3a97a4: ldr x1, [x1, #0xaf8]
//  0x3a97a8: stur w1, [x0, #0x23]
//  0x3a97ac: add x1, PP, #0xa, lsl #12
//  0x3a97b0: ldr x1, [x1, #0xa8]
//  0x3a97b4: stur w1, [x0, #0x2b]
//  0x3a97b8: stur xzr, [x0, #0x2f]
//  0x3a97bc: ldur x1, [FP, #-8]
//  0x3a97c0: stur w1, [x0, #0xb]
//  0x3a97c4: mov SP, FP
//  0x3a97c8: ldp FP, LR, [SP], #0x10
//  0x3a97cc: ret 
//  0x3a97d0: bl #0x61fa28
//  0x3a97d4: b #0x3a9044
//  0x3a97d8: str q0, [SP, #-0x10]!
//  0x3a97dc: str x2, [SP, #-8]!
//  0x3a97e0: bl #0x61f878
//  0x3a97e4: ldr x2, [SP], #8
//  0x3a97e8: ldr q0, [SP], #0x10
//  0x3a97ec: b #0x3a93cc
//
dynamic PagePartyLotteryPityInfo_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic d3;
  dynamic q0;
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a901c
  // frame: FP = SP // 0x3a9020
  // frame: SP = SP - 0x88 // 0x3a9024
  x0 = x1; // 0x3a9028
  local_m8 = x1; // 0x3a902c
  x1 = x2; // 0x3a9030
  local_m10 = x2; // 0x3a9034
  BARRIER = mem(THR, 0x38); // 0x3a9038
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a97d0
  }
  x1 = 2; // 0x3a9044
  sub_0x61e890(); // 0x3a9048
  x0 = local_m8; // 0x3a9050
  x2 = x0; // 0x3a904c
  local_m18 = x2; // 0x3a9054
  memSet(x2, 0xf, w0); // 0x3a9058
  x1 = local_m10; // 0x3a905c
  memSet(x2, 0x13, w1); // 0x3a9060
  ScreenUtil_getScreenWidth() /* 0x3a877c */; // 0x3a9064
  w2 = mem((local_m8), 0x13); // 0x3a906c
  x0 = local_m8; // 0x3a9068
  x2 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x3a9070
  local_m20 = x2; // 0x3a9074
  w3 = mem(x0, 0x17); // 0x3a9078
  x3 = ((mem(x0, 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3a907c
  local_m10 = x3; // 0x3a9080
  d0 = 0.50000000 /* bits */; // 0x3a9090
  d1 = 4635048441494372352; // 0x3a9088
  d2 = (d0 - d1) /* float */; // 0x3a908c
  d3 = (((d0 - d1) /* float */) * (0.50000000 /* bits */)) /* float */; // 0x3a9094
  x17 = PP + 0x12000; // 0x3a9084
  local_m70 = d3; // 0x3a9098
  x1 = "virtual_party_lucky_pocket_receive_popup_my_wallet" /* pp+0xc998 */; // 0x3a90a0
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3a90a4
  getString() /* 0x3a1dcc */; // 0x3a90a8
  BARRIER = " " /* pp+0x1af8 */; // 0x3a90ac
  // frame: BARRIER, x0, mem(SP) // 0x3a90b0
  StringBase_op_add() /* 0x281718 */; // 0x3a90b4
  BARRIER = ">" /* pp+0x25e0 */; // 0x3a90b8
  // frame: BARRIER, x0, mem(SP) // 0x3a90bc
  StringBase_op_add() /* 0x281718 */; // 0x3a90c0
  local_m28 = x0; // 0x3a90c4
  AllocationStub_Color() /* 0x31d844 */; // 0x3a90c8
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a90d0
  x1 = x0; // 0x3a90cc
  local_m30 = x1; // 0x3a90d4
  memSet(x1, 0x27, w0); // 0x3a90d8
  d0 = 1.00000000 /* bits */; // 0x3a90dc
  memSet(x1, 7, d0); // 0x3a90e0
  d1 = 4606052103599422460; // 0x3a90e8
  x17 = PP + 0x12000; // 0x3a90e4
  memSet(x1, 0xf, d1); // 0x3a90ec
  d1 = 4605027755448883288; // 0x3a90f4
  x17 = PP + 0x12000; // 0x3a90f0
  memSet(x1, 0x17, d1); // 0x3a90f8
  d1 = 4596515069094402586; // 0x3a9100
  x17 = PP + 0x12000; // 0x3a90fc
  memSet(x1, 0x1f, d1); // 0x3a9104
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3a9108
  x0 = NULL + 0x20; // 0x3a9110
  x1 = x0; // 0x3a910c
  local_m38 = x1; // 0x3a9114
  memSet(x1, 7, w0); // 0x3a9118
  x2 = local_m30; // 0x3a911c
  memSet(x1, 0xb, w2); // 0x3a9120
  x2 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x3a9128
  memSet(x1, 0x1f, w2); // 0x3a912c
  x2 = "Robot" /* pp+0x11590 */; // 0x3a9134
  memSet(x1, 0x13, w2); // 0x3a9138
  AllocationStub_Color() /* 0x31d844 */; // 0x3a913c
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a9144
  x1 = x0; // 0x3a9140
  local_m30 = x1; // 0x3a9148
  memSet(x1, 0x27, w0); // 0x3a914c
  d0 = 1.00000000 /* bits */; // 0x3a9150
  memSet(x1, 7, d0); // 0x3a9154
  d1 = 4606581938849701342; // 0x3a915c
  x17 = PP + 0x11000; // 0x3a9158
  memSet(x1, 0xf, d1); // 0x3a9160
  d2 = 4601513181622033372; // 0x3a9168
  x17 = PP + 0x12000; // 0x3a9164
  memSet(x1, 0x17, d2); // 0x3a916c
  d3 = 4583569427812588572; // 0x3a9174
  x17 = PP + 0x10000; // 0x3a9170
  memSet(x1, 0x1f, d3); // 0x3a9178
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3a917c
  x0 = NULL + 0x20; // 0x3a9184
  x1 = x0; // 0x3a9180
  local_m40 = x1; // 0x3a9188
  memSet(x1, 7, w0); // 0x3a918c
  x2 = local_m30; // 0x3a9190
  memSet(x1, 0xb, w2); // 0x3a9194
  x2 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x3a919c
  memSet(x1, 0x1f, w2); // 0x3a91a0
  x3 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x3a91a8
  memSet(x1, 0x23, w3); // 0x3a91ac
  AllocationStub_Color() /* 0x31d844 */; // 0x3a91b0
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a91b8
  x1 = x0; // 0x3a91b4
  local_m30 = x1; // 0x3a91bc
  memSet(x1, 0x27, w0); // 0x3a91c0
  d0 = 1.00000000 /* bits */; // 0x3a91c4
  memSet(x1, 7, d0); // 0x3a91c8
  d1 = 4606581938849701342; // 0x3a91d0
  x17 = PP + 0x11000; // 0x3a91cc
  memSet(x1, 0xf, d1); // 0x3a91d4
  d1 = 4601513181622033372; // 0x3a91dc
  x17 = PP + 0x12000; // 0x3a91d8
  memSet(x1, 0x17, d1); // 0x3a91e0
  d1 = 4583569427812588572; // 0x3a91e8
  x17 = PP + 0x10000; // 0x3a91e4
  memSet(x1, 0x1f, d1); // 0x3a91ec
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3a91f0
  x0 = NULL + 0x20; // 0x3a91f8
  x1 = x0; // 0x3a91f4
  local_m48 = x1; // 0x3a91fc
  memSet(x1, 7, w0); // 0x3a9200
  x2 = local_m30; // 0x3a9204
  memSet(x1, 0xb, w2); // 0x3a9208
  x2 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x3a9210
  memSet(x1, 0x1f, w2); // 0x3a9214
  x3 = mem((PP + 0xf000), 0xe88) /* Obj!FontWeight@1202b  */; // 0x3a921c
  memSet(x1, 0x23, w3); // 0x3a9220
  AllocationStub_Color() /* 0x31d844 */; // 0x3a9224
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a922c
  x1 = x0; // 0x3a9228
  local_m30 = x1; // 0x3a9230
  memSet(x1, 0x27, w0); // 0x3a9234
  d0 = 1.00000000 /* bits */; // 0x3a9238
  memSet(x1, 7, d0); // 0x3a923c
  d0 = 4603614861448139603; // 0x3a9244
  x17 = PP + 0x10000; // 0x3a9240
  memSet(x1, 0xf, d0); // 0x3a9248
  d0 = 4598546104220471633; // 0x3a9250
  x17 = PP + 0x10000; // 0x3a924c
  memSet(x1, 0x17, d0); // 0x3a9254
  d0 = 4583569427812588572; // 0x3a925c
  x17 = PP + 0x10000; // 0x3a9258
  memSet(x1, 0x1f, d0); // 0x3a9260
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3a9264
  x0 = NULL + 0x20; // 0x3a926c
  x2 = x0; // 0x3a9268
  local_m50 = x2; // 0x3a9270
  memSet(x2, 7, w0); // 0x3a9274
  x1 = local_m30; // 0x3a9278
  memSet(x2, 0xb, w1); // 0x3a927c
  x1 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x3a9284
  memSet(x2, 0x1f, w1); // 0x3a9288
  x1 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x3a9290
  memSet(x2, 0x23, w1); // 0x3a9294
  x1 = "virtual_party_lucky_pocket_receive_popup_send_button" /* pp+0xc978 */; // 0x3a929c
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3a92a0
  getString() /* 0x3a1dcc */; // 0x3a92a4
  x1 = "virtual_party_lucky_pocket_receive_popup_send_button" /* pp+0xc978 */; // 0x3a92ac
  local_m30 = x0; // 0x3a92b0
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3a92b4
  getString() /* 0x3a1dcc */; // 0x3a92b8
  x1 = "virtual_party_lucky_pocket_receive_popup_miss_tip" /* pp+0xc988 */; // 0x3a92c0
  local_m58 = x0; // 0x3a92c4
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3a92c8
  getString() /* 0x3a1dcc */; // 0x3a92cc
  local_m60 = x0; // 0x3a92d0
  BARRIER = local_m30; // 0x3a92d4
  LR = " " /* pp+0x1af8 */; // 0x3a92d8
  // frame: LR, BARRIER, mem(SP) // 0x3a92dc
  StringBase_op_add() /* 0x281718 */; // 0x3a92e0
  BARRIER = ">" /* pp+0x25e0 */; // 0x3a92e4
  // frame: BARRIER, x0, mem(SP) // 0x3a92e8
  StringBase_op_add() /* 0x281718 */; // 0x3a92ec
  local_m30 = x0; // 0x3a92f0
  BARRIER = local_m58; // 0x3a92f4
  LR = " " /* pp+0x1af8 */; // 0x3a92f8
  // frame: LR, BARRIER, mem(SP) // 0x3a92fc
  StringBase_op_add() /* 0x281718 */; // 0x3a9300
  BARRIER = ">" /* pp+0x25e0 */; // 0x3a9304
  // frame: BARRIER, x0, mem(SP) // 0x3a9308
  StringBase_op_add() /* 0x281718 */; // 0x3a930c
  local_m58 = x0; // 0x3a9310
  AllocationStub_Container() /* 0x391a04 */; // 0x3a9314
  local_m68 = x0; // 0x3a9318
  BARRIER = mem(PP, 0x5458) /* Double */; // 0x3a931c
  LR = mem((PP + 0x12000), 0x4c0) /* Double */; // 0x3a9324
  // frame: LR, BARRIER, mem(SP) // 0x3a9328
  x1 = x0; // 0x3a932c
  x4 = mem((PP + 0xa000), 0xc8) /* ImmutableArray */; // 0x3a9334
  Container_ctor() /* 0x391490 */; // 0x3a9338
  x1 = local_m28; // 0x3a933c
  x2 = local_m38; // 0x3a9340
  myWallet() /* 0x3a6828 */; // 0x3a9344
  x1 = mem((PP + 0xf000), 0x5d8) /* TypeArguments */; // 0x3a934c
  local_m28 = x0; // 0x3a9350
  AllocationStub_Positioned() /* 0x399e40 */; // 0x3a9354
  x0 = mem(PP, 0x52c8) /* Double */; // 0x3a935c
  x1 = x0; // 0x3a9358
  local_m38 = x1; // 0x3a9360
  memSet(x1, 0x17, w0); // 0x3a9364
  memSet(x1, 0x1b, w0); // 0x3a9368
  x0 = local_m28; // 0x3a936c
  memSet(x1, 0xb, w0); // 0x3a9370
  AllocationStub_SoulAvatarImage() /* 0x3a67fc */; // 0x3a9374
  x0 = local_m20; // 0x3a937c
  x2 = x0; // 0x3a9378
  local_m28 = x2; // 0x3a9380
  memSet(x2, 0xb, w0); // 0x3a9384
  x0 = local_m10; // 0x3a9388
  memSet(x2, 0xf, w0); // 0x3a938c
  d0 = 4635048441494372352; // 0x3a9394
  x17 = PP + 0x12000; // 0x3a9390
  memSet(x2, 0x13, d0); // 0x3a9398
  x0 = NULL + 0x20; // 0x3a939c
  memSet(x2, 0x1b, w0); // 0x3a93a0
  d0 = local_m70; // 0x3a93a4
  memRead2(THR, 0x50, x0, x1); // 0x3a93a8
  x0 = x0 + 0x10; // 0x3a93ac
  if (x1 <= x0) {
    local_m10 = q0; // 0x3a97d8
    local_m8 = x2; // 0x3a97dc
    AllocationStub__Double() /* 0x61f878 */; // 0x3a97e0
    q0 = local_0; // 0x3a97e8
    x2 = local_0; // 0x3a97e4
  } else {
    memSet(THR, 0x50, x0); // 0x3a93b8
    x0 = x0 - 0xf; // 0x3a93bc
    x1 = (x1 & 0xffff) | 0x30000; // 0x3a93c4
    memSet(x0, -1, x1); // 0x3a93c8
  }
  memSet(x0, 7, d0); // 0x3a93cc
  local_m10 = x0; // 0x3a93d0
  x1 = mem((PP + 0xf000), 0x5d8) /* TypeArguments */; // 0x3a93d8
  AllocationStub_Positioned() /* 0x399e40 */; // 0x3a93dc
  x0 = local_m10; // 0x3a93e4
  x3 = x0; // 0x3a93e0
  local_m20 = x3; // 0x3a93e8
  memSet(x3, 0x13, w0); // 0x3a93ec
  x0 = mem((PP + 0x11000), 0xba0) /* Double */; // 0x3a93f4
  memSet(x3, 0x17, w0); // 0x3a93f8
  x0 = local_m28; // 0x3a93fc
  memSet(x3, 0xb, w0); // 0x3a9400
  x1 = NULL; // 0x3a9404
  x2 = 6; // 0x3a9408
  sub_0x61f920(); // 0x3a940c
  x0 = local_m68; // 0x3a9414
  x2 = x0; // 0x3a9410
  local_m10 = x2; // 0x3a9418
  memSet(x2, 0xf, w0); // 0x3a941c
  x0 = local_m38; // 0x3a9420
  memSet(x2, 0x13, w0); // 0x3a9424
  x0 = local_m20; // 0x3a9428
  memSet(x2, 0x17, w0); // 0x3a942c
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3a9430
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3a9434
  x0 = local_m10; // 0x3a943c
  x1 = x0; // 0x3a9438
  local_m20 = x1; // 0x3a9440
  memSet(x1, 0xf, w0); // 0x3a9444
  x2 = 6; // 0x3a9448
  memSet(x1, 0xb, w2); // 0x3a944c
  AllocationStub_Stack() /* 0x39e6f4 */; // 0x3a9450
  x0 = mem((PP + 0xe000), 0xf00) /* Obj!AlignmentDirectional@11bd4  */; // 0x3a945c
  x1 = x0; // 0x3a9454
  local_m28 = x1; // 0x3a9460
  memSet(x1, 0xf, w0); // 0x3a9464
  x0 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x3a946c
  memSet(x1, 0x17, w0); // 0x3a9470
  x0 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x3a9478
  memSet(x1, 0x1b, w0); // 0x3a947c
  x0 = local_m20; // 0x3a9480
  memSet(x1, 0xb, w0); // 0x3a9484
  w2 = mem((local_m8), 0xf); // 0x3a948c
  x0 = local_m8; // 0x3a9488
  x2 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3a9490
  local_m10 = x2; // 0x3a9494
  if (x2 & (1 << 4) != 0) {
    x0 = local_m58; // 0x3a9550
    x1 = local_m60; // 0x3a954c
    x2 = local_m50; // 0x3a9548
    x3 = local_m48; // 0x3a9544
    AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3a9554
    local_m8 = x0; // 0x3a9558
    memSet(x0, 7, xzr); // 0x3a955c
    d0 = 18.00000000 /* bits */; // 0x3a9560
    memSet(x0, 0xf, d0); // 0x3a9564
    memSet(x0, 0x17, xzr); // 0x3a9568
    memSet(x0, 0x1f, xzr); // 0x3a956c
    AllocationStub_Text() /* 0x393bf8 */; // 0x3a9570
    x0 = local_m60; // 0x3a9578
    x1 = x0; // 0x3a9574
    local_m20 = x1; // 0x3a957c
    memSet(x1, 0xb, w0); // 0x3a9580
    x0 = local_m50; // 0x3a9584
    memSet(x1, 0x13, w0); // 0x3a9588
    AllocationStub_SizedBox() /* 0x3949ec */; // 0x3a958c
    x0 = mem((PP + 0x12000), 0x338) /* Double */; // 0x3a9598
    x1 = x0; // 0x3a9590
    local_m30 = x1; // 0x3a959c
    memSet(x1, 0x13, w0); // 0x3a95a0
    AllocationStub_Text() /* 0x393bf8 */; // 0x3a95a4
    x0 = local_m58; // 0x3a95ac
    x1 = x0; // 0x3a95a8
    local_m38 = x1; // 0x3a95b0
    memSet(x1, 0xb, w0); // 0x3a95b4
    x0 = local_m48; // 0x3a95b8
    memSet(x1, 0x13, w0); // 0x3a95bc
    sub_0x3a1d94(); // 0x3a95c0
    x1 = mem((PP + 0x12000), 0x4d0) /* Function */; // 0x3a95cc
    x2 = local_m18; // 0x3a95c4
    local_m18 = x0; // 0x3a95d0
    AllocationStub__Closure() /* 0x61ec54 */; // 0x3a95d4
    BARRIER = local_m38; // 0x3a95d8
    // frame: x0, BARRIER, mem(SP) // 0x3a95dc
    x1 = local_m18; // 0x3a95e0
    x4 = mem((PP + 0xe000), 0xec0) /* ImmutableArray */; // 0x3a95e8
    GestureDetector_ctor() /* 0x3a18c4 */; // 0x3a95ec
    x1 = NULL; // 0x3a95f0
    x2 = 6; // 0x3a95f4
    sub_0x61f920(); // 0x3a95f8
    x0 = local_m20; // 0x3a9600
    x2 = x0; // 0x3a95fc
    local_m38 = x2; // 0x3a9604
    memSet(x2, 0xf, w0); // 0x3a9608
    x0 = local_m30; // 0x3a960c
    memSet(x2, 0x13, w0); // 0x3a9610
    x0 = local_m18; // 0x3a9614
    memSet(x2, 0x17, w0); // 0x3a9618
    x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3a961c
    AllocationStub__GrowableList() /* 0x61e854 */; // 0x3a9620
    x0 = local_m38; // 0x3a9628
    x1 = x0; // 0x3a9624
    local_m18 = x1; // 0x3a962c
    memSet(x1, 0xf, w0); // 0x3a9630
    x2 = 6; // 0x3a9634
    memSet(x1, 0xb, w2); // 0x3a9638
    AllocationStub_Column() /* 0x39310c */; // 0x3a963c
    x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3a9648
    x1 = x0; // 0x3a9640
    local_m20 = x1; // 0x3a964c
    memSet(x1, 0xf, w0); // 0x3a9650
    x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3a9658
    memSet(x1, 0x13, w2); // 0x3a965c
    x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3a9664
    memSet(x1, 0x17, w3); // 0x3a9668
    x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3a9670
    memSet(x1, 0x1b, w4); // 0x3a9674
    x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3a967c
    memSet(x1, 0x23, w5); // 0x3a9680
    x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3a9688
    memSet(x1, 0x2b, w6); // 0x3a968c
    memSet(x1, 0x2f, xzr); // 0x3a9690
    x7 = local_m18; // 0x3a9694
    memSet(x1, 0xb, w7); // 0x3a9698
    AllocationStub_Container() /* 0x391a04 */; // 0x3a969c
    local_m18 = x0; // 0x3a96a0
    BARRIER = local_m8; // 0x3a96a4
    LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x3a96ac
    // frame: LR, BARRIER, mem(SP, 8) // 0x3a96b0
    BARRIER = local_m20; // 0x3a96b4
    local_0 = BARRIER; // 0x3a96b8
    x1 = x0; // 0x3a96bc
    x4 = mem((PP + 0x10000), 0xca8) /* ImmutableArray */; // 0x3a96c4
    Container_ctor() /* 0x391490 */; // 0x3a96c8
    x1 = local_m18; // 0x3a96cc
  } else {
    x0 = local_m30; // 0x3a94a0
    x3 = local_m40; // 0x3a949c
    AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3a94a4
    local_m8 = x0; // 0x3a94a8
    memSet(x0, 7, xzr); // 0x3a94ac
    d0 = 29.00000000 /* bits */; // 0x3a94b0
    memSet(x0, 0xf, d0); // 0x3a94b4
    memSet(x0, 0x17, xzr); // 0x3a94b8
    memSet(x0, 0x1f, xzr); // 0x3a94bc
    AllocationStub_Text() /* 0x393bf8 */; // 0x3a94c0
    x0 = local_m30; // 0x3a94c8
    x1 = x0; // 0x3a94c4
    local_m20 = x1; // 0x3a94cc
    memSet(x1, 0xb, w0); // 0x3a94d0
    x0 = local_m40; // 0x3a94d4
    memSet(x1, 0x13, w0); // 0x3a94d8
    AllocationStub_Container() /* 0x391a04 */; // 0x3a94dc
    local_m30 = x0; // 0x3a94e0
    BARRIER = local_m8; // 0x3a94e4
    LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x3a94ec
    // frame: LR, BARRIER, mem(SP, 8) // 0x3a94f0
    BARRIER = local_m20; // 0x3a94f4
    local_0 = BARRIER; // 0x3a94f8
    x1 = x0; // 0x3a94fc
    x4 = mem((PP + 0x10000), 0xca8) /* ImmutableArray */; // 0x3a9504
    Container_ctor() /* 0x391490 */; // 0x3a9508
    sub_0x3a1d94(); // 0x3a950c
    x1 = mem((PP + 0x12000), 0x4c8) /* Function */; // 0x3a9518
    x2 = local_m18; // 0x3a9510
    local_m8 = x0; // 0x3a951c
    AllocationStub__Closure() /* 0x61ec54 */; // 0x3a9520
    BARRIER = local_m30; // 0x3a9524
    // frame: x0, BARRIER, mem(SP) // 0x3a9528
    x1 = local_m8; // 0x3a952c
    x4 = mem((PP + 0xe000), 0xec0) /* ImmutableArray */; // 0x3a9534
    GestureDetector_ctor() /* 0x3a18c4 */; // 0x3a9538
    x1 = local_m8; // 0x3a953c
  }
  x0 = local_m10; // 0x3a96d0
  local_m8 = x1; // 0x3a96d4
  if (x0 & (1 << 4) != 0) {
    AllocationStub_SizedBox() /* 0x3949ec */; // 0x3a96f8
    x0 = mem((PP + 0x12000), 0x4d8) /* Double */; // 0x3a9704
    x1 = x0; // 0x3a96fc
    memSet(x1, 0x13, w0); // 0x3a9708
    x5 = x1; // 0x3a970c
  } else {
    AllocationStub_SizedBox() /* 0x3949ec */; // 0x3a96dc
    x0 = mem((PP + 0xf000), 0xba8) /* Double */; // 0x3a96e8
    x1 = x0; // 0x3a96e0
    memSet(x1, 0x13, w0); // 0x3a96ec
    x5 = x1; // 0x3a96f0
  }
  x0 = local_m8; // 0x3a9714
  x2 = 6; // 0x3a971c
  x3 = 6; // 0x3a9718
  x4 = local_m28; // 0x3a9710
  local_m10 = x5; // 0x3a9720
  x1 = NULL; // 0x3a9724
  sub_0x61f920(); // 0x3a9728
  x0 = local_m28; // 0x3a9730
  x2 = x0; // 0x3a972c
  local_m18 = x2; // 0x3a9734
  memSet(x2, 0xf, w0); // 0x3a9738
  x0 = local_m8; // 0x3a973c
  memSet(x2, 0x13, w0); // 0x3a9740
  x0 = local_m10; // 0x3a9744
  memSet(x2, 0x17, w0); // 0x3a9748
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3a974c
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3a9750
  x0 = local_m18; // 0x3a9758
  x1 = x0; // 0x3a9754
  local_m8 = x1; // 0x3a975c
  memSet(x1, 0xf, w0); // 0x3a9760
  x0 = 6; // 0x3a9764
  memSet(x1, 0xb, w0); // 0x3a9768
  AllocationStub_Column() /* 0x39310c */; // 0x3a976c
  x1 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3a9774
  memSet(x0, 0xf, w1); // 0x3a9778
  x1 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3a9780
  memSet(x0, 0x13, w1); // 0x3a9784
  x1 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3a978c
  memSet(x0, 0x17, w1); // 0x3a9790
  x1 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3a9798
  memSet(x0, 0x1b, w1); // 0x3a979c
  x1 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3a97a4
  memSet(x0, 0x23, w1); // 0x3a97a8
  x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3a97b0
  memSet(x0, 0x2b, w1); // 0x3a97b4
  memSet(x0, 0x2f, xzr); // 0x3a97b8
  x1 = local_m8; // 0x3a97bc
  memSet(x0, 0xb, w1); // 0x3a97c0
  SP = FP; // 0x3a97c4
  // frame: FP, LR, mem(SP), 0x10 // 0x3a97c8
  return;
}

// PagePartyLotteryPityInfo_anon_closure
// raw disassembly:
//  0x3a97f0: stp FP, LR, [SP, #-0x10]!
//  0x3a97f4: mov FP, SP
//  0x3a97f8: sub SP, SP, #0x20
//  0x3a97fc: ldr x0, [FP, #0x10]
//  0x3a9800: ldur w2, [x0, #0x17]
//  0x3a9804: add x2, x2, HEAP, lsl #32
//  0x3a9808: stur x2, [FP, #-8]
//  0x3a980c: ldr BARRIER, [THR, #0x38]
//  0x3a9810: cmp SP, BARRIER
//  0x3a9814: b.ls #0x3a9884
//  0x3a9818: add x1, PP, #0x12, lsl #12
//  0x3a981c: ldr x1, [x1, #0x4e0]
//  0x3a9820: ldr x4, [PP, #0x4c0]
//  0x3a9824: bl #0x3a8e60
//  0x3a9828: ldur x0, [FP, #-8]
//  0x3a982c: ldur w1, [x0, #0x13]
//  0x3a9830: add x1, x1, HEAP, lsl #32
//  0x3a9834: add BARRIER, PP, #0x11, lsl #12
//  0x3a9838: ldr BARRIER, [BARRIER, #0x578]
//  0x3a983c: stp x1, BARRIER, [SP, #8]
//  0x3a9840: add BARRIER, NULL, #0x30
//  0x3a9844: str BARRIER, [SP]
//  0x3a9848: add x4, PP, #0x12, lsl #12
//  0x3a984c: ldr x4, [x4, #0x4e8]
//  0x3a9850: bl #0x3a076c
//  0x3a9854: mov x1, x0
//  0x3a9858: ldur x0, [FP, #-8]
//  0x3a985c: ldur w2, [x0, #0xf]
//  0x3a9860: add x2, x2, HEAP, lsl #32
//  0x3a9864: ldur w0, [x2, #0xb]
//  0x3a9868: add x0, x0, HEAP, lsl #32
//  0x3a986c: mov x2, x0
//  0x3a9870: bl #0x3a988c
//  0x3a9874: mov x0, NULL
//  0x3a9878: mov SP, FP
//  0x3a987c: ldp FP, LR, [SP], #0x10
//  0x3a9880: ret 
//  0x3a9884: bl #0x61fa28
//  0x3a9888: b #0x3a9818
//
dynamic PagePartyLotteryPityInfo_anon_closure() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a97f0
  // frame: FP = SP // 0x3a97f4
  // frame: SP = SP - 0x20 // 0x3a97f8
  w2 = mem((local_10), 0x17); // 0x3a9800
  x0 = local_10; // 0x3a97fc
  x2 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3a9804
  local_m8 = x2; // 0x3a9808
  BARRIER = mem(THR, 0x38); // 0x3a980c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a9884
  }
  x1 = "LuckyPocket_NoneResultPageforSendPop" /* pp+0x124e0 */; // 0x3a981c
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3a9820
  EventTrack_eventClick() /* 0x3a8e60 */; // 0x3a9824
  BARRIER = mem((PP + 0x11000), 0x578) /* TypeArguments */; // 0x3a9838
  w1 = mem((local_m8), 0x13); // 0x3a982c
  x0 = local_m8; // 0x3a9828
  x1 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x3a9830
  // frame: x1, BARRIER, mem(SP, 8) // 0x3a983c
  BARRIER = NULL + 0x30; // 0x3a9840
  local_0 = BARRIER; // 0x3a9844
  x4 = mem((PP + 0x12000), 0x4e8) /* ImmutableArray */; // 0x3a984c
  Provider_of() /* 0x3a076c */; // 0x3a9850
  w0 = mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x3a9864
  w2 = mem((local_m8), 0xf); // 0x3a985c
  x0 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3a9868
  x1 = x0; // 0x3a9854
  x2 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3a986c
  LuckyBagListItemNotifier_sendBlessBag() /* 0x3a988c */; // 0x3a9870
  SP = FP; // 0x3a9878
  x0 = NULL; // 0x3a9874
  // frame: FP, LR, mem(SP), 0x10 // 0x3a987c
  return;
}

// PagePartyLotteryPityInfo_anon_closure_2
// raw disassembly:
//  0x3a9ba8: stp FP, LR, [SP, #-0x10]!
//  0x3a9bac: mov FP, SP
//  0x3a9bb0: sub SP, SP, #0x20
//  0x3a9bb4: ldr x0, [FP, #0x10]
//  0x3a9bb8: ldur w2, [x0, #0x17]
//  0x3a9bbc: add x2, x2, HEAP, lsl #32
//  0x3a9bc0: stur x2, [FP, #-8]
//  0x3a9bc4: ldr BARRIER, [THR, #0x38]
//  0x3a9bc8: cmp SP, BARRIER
//  0x3a9bcc: b.ls #0x3a9c3c
//  0x3a9bd0: add x1, PP, #0x12, lsl #12
//  0x3a9bd4: ldr x1, [x1, #0x500]
//  0x3a9bd8: ldr x4, [PP, #0x4c0]
//  0x3a9bdc: bl #0x3a8e60
//  0x3a9be0: ldur x0, [FP, #-8]
//  0x3a9be4: ldur w1, [x0, #0x13]
//  0x3a9be8: add x1, x1, HEAP, lsl #32
//  0x3a9bec: add BARRIER, PP, #0x11, lsl #12
//  0x3a9bf0: ldr BARRIER, [BARRIER, #0x578]
//  0x3a9bf4: stp x1, BARRIER, [SP, #8]
//  0x3a9bf8: add BARRIER, NULL, #0x30
//  0x3a9bfc: str BARRIER, [SP]
//  0x3a9c00: add x4, PP, #0x12, lsl #12
//  0x3a9c04: ldr x4, [x4, #0x4e8]
//  0x3a9c08: bl #0x3a076c
//  0x3a9c0c: mov x1, x0
//  0x3a9c10: ldur x0, [FP, #-8]
//  0x3a9c14: ldur w2, [x0, #0xf]
//  0x3a9c18: add x2, x2, HEAP, lsl #32
//  0x3a9c1c: ldur w0, [x2, #0xb]
//  0x3a9c20: add x0, x0, HEAP, lsl #32
//  0x3a9c24: mov x2, x0
//  0x3a9c28: bl #0x3a988c
//  0x3a9c2c: mov x0, NULL
//  0x3a9c30: mov SP, FP
//  0x3a9c34: ldp FP, LR, [SP], #0x10
//  0x3a9c38: ret 
//  0x3a9c3c: bl #0x61fa28
//  0x3a9c40: b #0x3a9bd0
//
dynamic PagePartyLotteryPityInfo_anon_closure_2() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a9ba8
  // frame: FP = SP // 0x3a9bac
  // frame: SP = SP - 0x20 // 0x3a9bb0
  w2 = mem((local_10), 0x17); // 0x3a9bb8
  x0 = local_10; // 0x3a9bb4
  x2 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3a9bbc
  local_m8 = x2; // 0x3a9bc0
  BARRIER = mem(THR, 0x38); // 0x3a9bc4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a9c3c
  }
  x1 = "LuckyPocket_SendResultPageforSendPop" /* pp+0x12500 */; // 0x3a9bd4
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3a9bd8
  EventTrack_eventClick() /* 0x3a8e60 */; // 0x3a9bdc
  BARRIER = mem((PP + 0x11000), 0x578) /* TypeArguments */; // 0x3a9bf0
  w1 = mem((local_m8), 0x13); // 0x3a9be4
  x0 = local_m8; // 0x3a9be0
  x1 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x3a9be8
  // frame: x1, BARRIER, mem(SP, 8) // 0x3a9bf4
  BARRIER = NULL + 0x30; // 0x3a9bf8
  local_0 = BARRIER; // 0x3a9bfc
  x4 = mem((PP + 0x12000), 0x4e8) /* ImmutableArray */; // 0x3a9c04
  Provider_of() /* 0x3a076c */; // 0x3a9c08
  w0 = mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x3a9c1c
  w2 = mem((local_m8), 0xf); // 0x3a9c14
  x0 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3a9c20
  x1 = x0; // 0x3a9c0c
  x2 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3a9c24
  LuckyBagListItemNotifier_sendBlessBag() /* 0x3a988c */; // 0x3a9c28
  SP = FP; // 0x3a9c30
  x0 = NULL; // 0x3a9c2c
  // frame: FP, LR, mem(SP), 0x10 // 0x3a9c34
  return;
}

// PagePartyLotteryNameList_build
// raw disassembly:
//  0x3a9c44: stp FP, LR, [SP, #-0x10]!
//  0x3a9c48: mov FP, SP
//  0x3a9c4c: sub SP, SP, #0x58
//  0x3a9c50: stur x1, [FP, #-8]
//  0x3a9c54: ldr BARRIER, [THR, #0x38]
//  0x3a9c58: cmp SP, BARRIER
//  0x3a9c5c: b.ls #0x3a9ef8
//  0x3a9c60: mov x1, #1
//  0x3a9c64: bl #0x61e890
//  0x3a9c68: mov x1, x0
//  0x3a9c6c: ldur x0, [FP, #-8]
//  0x3a9c70: stur x1, [FP, #-0x10]
//  0x3a9c74: stur w0, [x1, #0xf]
//  0x3a9c78: bl #0x2e3578
//  0x3a9c7c: fmov d0, #14.00000000
//  0x3a9c80: stur x0, [FP, #-0x28]
//  0x3a9c84: stur d0, [x0, #7]
//  0x3a9c88: stur xzr, [x0, #0xf]
//  0x3a9c8c: stur d0, [x0, #0x17]
//  0x3a9c90: stur xzr, [x0, #0x1f]
//  0x3a9c94: ldur x1, [FP, #-8]
//  0x3a9c98: ldur w2, [x1, #0xb]
//  0x3a9c9c: add x2, x2, HEAP, lsl #32
//  0x3a9ca0: stur x2, [FP, #-0x20]
//  0x3a9ca4: ldur w3, [x1, #0x13]
//  0x3a9ca8: add x3, x3, HEAP, lsl #32
//  0x3a9cac: stur x3, [FP, #-0x18]
//  0x3a9cb0: bl #0x393bf8
//  0x3a9cb4: mov x1, x0
//  0x3a9cb8: ldur x0, [FP, #-0x20]
//  0x3a9cbc: stur x1, [FP, #-0x30]
//  0x3a9cc0: stur w0, [x1, #0xb]
//  0x3a9cc4: ldur x0, [FP, #-0x18]
//  0x3a9cc8: stur w0, [x1, #0x13]
//  0x3a9ccc: bl #0x3949ec
//  0x3a9cd0: mov x1, x0
//  0x3a9cd4: add x0, PP, #0x12, lsl #12
//  0x3a9cd8: ldr x0, [x0, #0x3f0]
//  0x3a9cdc: stur x1, [FP, #-0x18]
//  0x3a9ce0: stur w0, [x1, #0x13]
//  0x3a9ce4: bl #0x2e3578
//  0x3a9ce8: stur x0, [FP, #-0x20]
//  0x3a9cec: stur xzr, [x0, #7]
//  0x3a9cf0: stur xzr, [x0, #0xf]
//  0x3a9cf4: stur xzr, [x0, #0x17]
//  0x3a9cf8: stur xzr, [x0, #0x1f]
//  0x3a9cfc: bl #0x31d844
//  0x3a9d00: mov x1, x0
//  0x3a9d04: ldr x0, [PP, #0x6310]
//  0x3a9d08: stur x1, [FP, #-0x38]
//  0x3a9d0c: stur w0, [x1, #0x27]
//  0x3a9d10: fmov d0, #1.00000000
//  0x3a9d14: stur d0, [x1, #7]
//  0x3a9d18: stur d0, [x1, #0xf]
//  0x3a9d1c: add x17, PP, #0x10, lsl #12
//  0x3a9d20: ldr d0, [x17, #0xac0]
//  0x3a9d24: stur d0, [x1, #0x17]
//  0x3a9d28: add x17, PP, #0x10, lsl #12
//  0x3a9d2c: ldr d0, [x17, #0xac8]
//  0x3a9d30: stur d0, [x1, #0x1f]
//  0x3a9d34: bl #0x391a04
//  0x3a9d38: stur x0, [FP, #-0x40]
//  0x3a9d3c: ldur BARRIER, [FP, #-0x20]
//  0x3a9d40: ldr LR, [PP, #0x53b0]
//  0x3a9d44: stp LR, BARRIER, [SP, #8]
//  0x3a9d48: ldur BARRIER, [FP, #-0x38]
//  0x3a9d4c: str BARRIER, [SP]
//  0x3a9d50: mov x1, x0
//  0x3a9d54: add x4, PP, #0x10, lsl #12
//  0x3a9d58: ldr x4, [x4, #0x258]
//  0x3a9d5c: bl #0x391490
//  0x3a9d60: ldur x0, [FP, #-8]
//  0x3a9d64: ldur w3, [x0, #0xf]
//  0x3a9d68: add x3, x3, HEAP, lsl #32
//  0x3a9d6c: ldur x2, [FP, #-0x10]
//  0x3a9d70: stur x3, [FP, #-0x20]
//  0x3a9d74: add x1, PP, #0x12, lsl #12
//  0x3a9d78: ldr x1, [x1, #0x450]
//  0x3a9d7c: bl #0x61ec54
//  0x3a9d80: add BARRIER, PP, #0x12, lsl #12
//  0x3a9d84: ldr BARRIER, [BARRIER, #0x458]
//  0x3a9d88: ldur LR, [FP, #-0x20]
//  0x3a9d8c: stp LR, BARRIER, [SP, #8]
//  0x3a9d90: str x0, [SP]
//  0x3a9d94: ldr x4, [PP, #0x58]
//  0x3a9d98: bl #0x3bd500
//  0x3a9d9c: ldur w1, [x0, #7]
//  0x3a9da0: add x1, x1, HEAP, lsl #32
//  0x3a9da4: mov x2, x0
//  0x3a9da8: bl #0x276db0
//  0x3a9dac: stur x0, [FP, #-8]
//  0x3a9db0: bl #0x39310c
//  0x3a9db4: mov x3, x0
//  0x3a9db8: add x0, PP, #0xa, lsl #12
//  0x3a9dbc: ldr x0, [x0, #0x858]
//  0x3a9dc0: stur x3, [FP, #-0x10]
//  0x3a9dc4: stur w0, [x3, #0xf]
//  0x3a9dc8: add x4, PP, #0xe, lsl #12
//  0x3a9dcc: ldr x4, [x4, #0xae0]
//  0x3a9dd0: stur w4, [x3, #0x13]
//  0x3a9dd4: add x5, PP, #0xe, lsl #12
//  0x3a9dd8: ldr x5, [x5, #0xae8]
//  0x3a9ddc: stur w5, [x3, #0x17]
//  0x3a9de0: add x6, PP, #0xe, lsl #12
//  0x3a9de4: ldr x6, [x6, #0xb60]
//  0x3a9de8: stur w6, [x3, #0x1b]
//  0x3a9dec: add x7, PP, #0xe, lsl #12
//  0x3a9df0: ldr x7, [x7, #0xaf8]
//  0x3a9df4: stur w7, [x3, #0x23]
//  0x3a9df8: add x8, PP, #0xa, lsl #12
//  0x3a9dfc: ldr x8, [x8, #0xa8]
//  0x3a9e00: stur w8, [x3, #0x2b]
//  0x3a9e04: stur xzr, [x3, #0x2f]
//  0x3a9e08: ldur x1, [FP, #-8]
//  0x3a9e0c: stur w1, [x3, #0xb]
//  0x3a9e10: mov x1, NULL
//  0x3a9e14: mov x2, #8
//  0x3a9e18: bl #0x61f920
//  0x3a9e1c: mov x2, x0
//  0x3a9e20: ldur x0, [FP, #-0x30]
//  0x3a9e24: stur x2, [FP, #-8]
//  0x3a9e28: stur w0, [x2, #0xf]
//  0x3a9e2c: ldur x0, [FP, #-0x18]
//  0x3a9e30: stur w0, [x2, #0x13]
//  0x3a9e34: ldur x0, [FP, #-0x40]
//  0x3a9e38: stur w0, [x2, #0x17]
//  0x3a9e3c: ldur x0, [FP, #-0x10]
//  0x3a9e40: stur w0, [x2, #0x1b]
//  0x3a9e44: ldr x1, [PP, #0x5c58]
//  0x3a9e48: bl #0x61e854
//  0x3a9e4c: mov x1, x0
//  0x3a9e50: ldur x0, [FP, #-8]
//  0x3a9e54: stur x1, [FP, #-0x10]
//  0x3a9e58: stur w0, [x1, #0xf]
//  0x3a9e5c: mov x0, #8
//  0x3a9e60: stur w0, [x1, #0xb]
//  0x3a9e64: bl #0x39310c
//  0x3a9e68: mov x1, x0
//  0x3a9e6c: add x0, PP, #0xa, lsl #12
//  0x3a9e70: ldr x0, [x0, #0x858]
//  0x3a9e74: stur x1, [FP, #-8]
//  0x3a9e78: stur w0, [x1, #0xf]
//  0x3a9e7c: add x0, PP, #0xe, lsl #12
//  0x3a9e80: ldr x0, [x0, #0xae0]
//  0x3a9e84: stur w0, [x1, #0x13]
//  0x3a9e88: add x0, PP, #0xe, lsl #12
//  0x3a9e8c: ldr x0, [x0, #0xae8]
//  0x3a9e90: stur w0, [x1, #0x17]
//  0x3a9e94: add x0, PP, #0xe, lsl #12
//  0x3a9e98: ldr x0, [x0, #0xb60]
//  0x3a9e9c: stur w0, [x1, #0x1b]
//  0x3a9ea0: add x0, PP, #0xe, lsl #12
//  0x3a9ea4: ldr x0, [x0, #0xaf8]
//  0x3a9ea8: stur w0, [x1, #0x23]
//  0x3a9eac: add x0, PP, #0xa, lsl #12
//  0x3a9eb0: ldr x0, [x0, #0xa8]
//  0x3a9eb4: stur w0, [x1, #0x2b]
//  0x3a9eb8: stur xzr, [x1, #0x2f]
//  0x3a9ebc: ldur x0, [FP, #-0x10]
//  0x3a9ec0: stur w0, [x1, #0xb]
//  0x3a9ec4: bl #0x391a04
//  0x3a9ec8: stur x0, [FP, #-0x10]
//  0x3a9ecc: ldur BARRIER, [FP, #-0x28]
//  0x3a9ed0: ldur LR, [FP, #-8]
//  0x3a9ed4: stp LR, BARRIER, [SP]
//  0x3a9ed8: mov x1, x0
//  0x3a9edc: add x4, PP, #0xf, lsl #12
//  0x3a9ee0: ldr x4, [x4, #0x258]
//  0x3a9ee4: bl #0x391490
//  0x3a9ee8: ldur x0, [FP, #-0x10]
//  0x3a9eec: mov SP, FP
//  0x3a9ef0: ldp FP, LR, [SP], #0x10
//  0x3a9ef4: ret 
//  0x3a9ef8: bl #0x61fa28
//  0x3a9efc: b #0x3a9c60
//
dynamic PagePartyLotteryNameList_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
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
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a9c44
  // frame: FP = SP // 0x3a9c48
  // frame: SP = SP - 0x58 // 0x3a9c4c
  local_m8 = x1; // 0x3a9c50
  BARRIER = mem(THR, 0x38); // 0x3a9c54
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a9ef8
  }
  x1 = 1; // 0x3a9c60
  sub_0x61e890(); // 0x3a9c64
  x0 = local_m8; // 0x3a9c6c
  x1 = x0; // 0x3a9c68
  local_m10 = x1; // 0x3a9c70
  memSet(x1, 0xf, w0); // 0x3a9c74
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3a9c78
  d0 = 14.00000000 /* bits */; // 0x3a9c7c
  local_m28 = x0; // 0x3a9c80
  memSet(x0, 7, d0); // 0x3a9c84
  memSet(x0, 0xf, xzr); // 0x3a9c88
  memSet(x0, 0x17, d0); // 0x3a9c8c
  memSet(x0, 0x1f, xzr); // 0x3a9c90
  w2 = mem((local_m8), 0xb); // 0x3a9c98
  x1 = local_m8; // 0x3a9c94
  x2 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3a9c9c
  local_m20 = x2; // 0x3a9ca0
  w3 = mem(x1, 0x13); // 0x3a9ca4
  x3 = ((mem(x1, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x3a9ca8
  local_m18 = x3; // 0x3a9cac
  AllocationStub_Text() /* 0x393bf8 */; // 0x3a9cb0
  x0 = local_m20; // 0x3a9cb8
  x1 = x0; // 0x3a9cb4
  local_m30 = x1; // 0x3a9cbc
  memSet(x1, 0xb, w0); // 0x3a9cc0
  x0 = local_m18; // 0x3a9cc4
  memSet(x1, 0x13, w0); // 0x3a9cc8
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x3a9ccc
  x0 = mem((PP + 0x12000), 0x3f0) /* Double */; // 0x3a9cd8
  x1 = x0; // 0x3a9cd0
  local_m18 = x1; // 0x3a9cdc
  memSet(x1, 0x13, w0); // 0x3a9ce0
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3a9ce4
  local_m20 = x0; // 0x3a9ce8
  memSet(x0, 7, xzr); // 0x3a9cec
  memSet(x0, 0xf, xzr); // 0x3a9cf0
  memSet(x0, 0x17, xzr); // 0x3a9cf4
  memSet(x0, 0x1f, xzr); // 0x3a9cf8
  AllocationStub_Color() /* 0x31d844 */; // 0x3a9cfc
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a9d04
  x1 = x0; // 0x3a9d00
  local_m38 = x1; // 0x3a9d08
  memSet(x1, 0x27, w0); // 0x3a9d0c
  d0 = 1.00000000 /* bits */; // 0x3a9d10
  memSet(x1, 7, d0); // 0x3a9d14
  memSet(x1, 0xf, d0); // 0x3a9d18
  d0 = 4606617261199719934; // 0x3a9d20
  x17 = PP + 0x10000; // 0x3a9d1c
  memSet(x1, 0x17, d0); // 0x3a9d24
  d0 = 4600312221721401240; // 0x3a9d2c
  x17 = PP + 0x10000; // 0x3a9d28
  memSet(x1, 0x1f, d0); // 0x3a9d30
  AllocationStub_Container() /* 0x391a04 */; // 0x3a9d34
  local_m40 = x0; // 0x3a9d38
  BARRIER = local_m20; // 0x3a9d3c
  LR = mem(PP, 0x53b0) /* Double */; // 0x3a9d40
  // frame: LR, BARRIER, mem(SP, 8) // 0x3a9d44
  BARRIER = local_m38; // 0x3a9d48
  local_0 = BARRIER; // 0x3a9d4c
  x1 = x0; // 0x3a9d50
  x4 = mem((PP + 0x10000), 0x258) /* ImmutableArray */; // 0x3a9d58
  Container_ctor() /* 0x391490 */; // 0x3a9d5c
  w3 = mem((local_m8), 0xf); // 0x3a9d64
  x0 = local_m8; // 0x3a9d60
  x2 = local_m10; // 0x3a9d6c
  x3 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3a9d68
  local_m20 = x3; // 0x3a9d70
  x1 = mem((PP + 0x12000), 0x450) /* Function */; // 0x3a9d78
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3a9d7c
  BARRIER = mem((PP + 0x12000), 0x458) /* TypeArguments */; // 0x3a9d84
  LR = local_m20; // 0x3a9d88
  // frame: LR, BARRIER, mem(SP, 8) // 0x3a9d8c
  local_0 = x0; // 0x3a9d90
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x3a9d94
  ListBase_map() /* 0x3bd500 */; // 0x3a9d98
  w1 = mem(x0, 7); // 0x3a9d9c
  x1 = ((mem(x0, 7)) & 0xffffffff) + (HEAP << 32); // 0x3a9da0
  x2 = x0; // 0x3a9da4
  GrowableList_factory_ctor_of() /* 0x276db0 */; // 0x3a9da8
  local_m8 = x0; // 0x3a9dac
  AllocationStub_Column() /* 0x39310c */; // 0x3a9db0
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3a9dbc
  x3 = x0; // 0x3a9db4
  local_m10 = x3; // 0x3a9dc0
  memSet(x3, 0xf, w0); // 0x3a9dc4
  x4 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3a9dcc
  memSet(x3, 0x13, w4); // 0x3a9dd0
  x5 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3a9dd8
  memSet(x3, 0x17, w5); // 0x3a9ddc
  x6 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3a9de4
  memSet(x3, 0x1b, w6); // 0x3a9de8
  x7 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3a9df0
  memSet(x3, 0x23, w7); // 0x3a9df4
  x8 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3a9dfc
  memSet(x3, 0x2b, w8); // 0x3a9e00
  memSet(x3, 0x2f, xzr); // 0x3a9e04
  x1 = local_m8; // 0x3a9e08
  memSet(x3, 0xb, w1); // 0x3a9e0c
  x1 = NULL; // 0x3a9e10
  x2 = 8; // 0x3a9e14
  sub_0x61f920(); // 0x3a9e18
  x0 = local_m30; // 0x3a9e20
  x2 = x0; // 0x3a9e1c
  local_m8 = x2; // 0x3a9e24
  memSet(x2, 0xf, w0); // 0x3a9e28
  x0 = local_m18; // 0x3a9e2c
  memSet(x2, 0x13, w0); // 0x3a9e30
  x0 = local_m40; // 0x3a9e34
  memSet(x2, 0x17, w0); // 0x3a9e38
  x0 = local_m10; // 0x3a9e3c
  memSet(x2, 0x1b, w0); // 0x3a9e40
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3a9e44
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3a9e48
  x0 = local_m8; // 0x3a9e50
  x1 = x0; // 0x3a9e4c
  local_m10 = x1; // 0x3a9e54
  memSet(x1, 0xf, w0); // 0x3a9e58
  x0 = 8; // 0x3a9e5c
  memSet(x1, 0xb, w0); // 0x3a9e60
  AllocationStub_Column() /* 0x39310c */; // 0x3a9e64
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3a9e70
  x1 = x0; // 0x3a9e68
  local_m8 = x1; // 0x3a9e74
  memSet(x1, 0xf, w0); // 0x3a9e78
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3a9e80
  memSet(x1, 0x13, w0); // 0x3a9e84
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3a9e8c
  memSet(x1, 0x17, w0); // 0x3a9e90
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3a9e98
  memSet(x1, 0x1b, w0); // 0x3a9e9c
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3a9ea4
  memSet(x1, 0x23, w0); // 0x3a9ea8
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3a9eb0
  memSet(x1, 0x2b, w0); // 0x3a9eb4
  memSet(x1, 0x2f, xzr); // 0x3a9eb8
  x0 = local_m10; // 0x3a9ebc
  memSet(x1, 0xb, w0); // 0x3a9ec0
  AllocationStub_Container() /* 0x391a04 */; // 0x3a9ec4
  local_m10 = x0; // 0x3a9ec8
  BARRIER = local_m28; // 0x3a9ecc
  LR = local_m8; // 0x3a9ed0
  // frame: LR, BARRIER, mem(SP) // 0x3a9ed4
  x1 = x0; // 0x3a9ed8
  x4 = mem((PP + 0xf000), 0x258) /* ImmutableArray */; // 0x3a9ee0
  Container_ctor() /* 0x391490 */; // 0x3a9ee4
  SP = FP; // 0x3a9eec
  x0 = local_m10; // 0x3a9ee8
  // frame: FP, LR, mem(SP), 0x10 // 0x3a9ef0
  return;
}

// PagePartyLotteryNameList_anon_closure
// raw disassembly:
//  0x3a9f00: stp FP, LR, [SP, #-0x10]!
//  0x3a9f04: mov FP, SP
//  0x3a9f08: sub SP, SP, #0x58
//  0x3a9f0c: ldr x0, [FP, #0x18]
//  0x3a9f10: ldur w1, [x0, #0x17]
//  0x3a9f14: add x1, x1, HEAP, lsl #32
//  0x3a9f18: stur x1, [FP, #-8]
//  0x3a9f1c: ldr BARRIER, [THR, #0x38]
//  0x3a9f20: cmp SP, BARRIER
//  0x3a9f24: b.ls #0x3aa524
//  0x3a9f28: bl #0x2e3578
//  0x3a9f2c: fmov d0, #22.00000000
//  0x3a9f30: stur x0, [FP, #-0x20]
//  0x3a9f34: stur d0, [x0, #7]
//  0x3a9f38: fmov d0, #10.00000000
//  0x3a9f3c: stur d0, [x0, #0xf]
//  0x3a9f40: stur xzr, [x0, #0x17]
//  0x3a9f44: stur d0, [x0, #0x1f]
//  0x3a9f48: ldr x1, [FP, #0x10]
//  0x3a9f4c: ldur w2, [x1, #0xb]
//  0x3a9f50: add x2, x2, HEAP, lsl #32
//  0x3a9f54: ldr BARRIER, [PP, #0x40]
//  0x3a9f58: cmp w2, w16
//  0x3a9f5c: b.eq #0x3aa52c
//  0x3a9f60: stur x2, [FP, #-0x18]
//  0x3a9f64: ldur w3, [x1, #0xf]
//  0x3a9f68: add x3, x3, HEAP, lsl #32
//  0x3a9f6c: ldr BARRIER, [PP, #0x40]
//  0x3a9f70: cmp w3, w16
//  0x3a9f74: b.eq #0x3aa538
//  0x3a9f78: stur x3, [FP, #-0x10]
//  0x3a9f7c: bl #0x3a67fc
//  0x3a9f80: mov x1, x0
//  0x3a9f84: ldur x0, [FP, #-0x18]
//  0x3a9f88: stur x1, [FP, #-0x28]
//  0x3a9f8c: stur w0, [x1, #0xb]
//  0x3a9f90: ldur x0, [FP, #-0x10]
//  0x3a9f94: stur w0, [x1, #0xf]
//  0x3a9f98: add x17, PP, #0x12, lsl #12
//  0x3a9f9c: ldr d0, [x17, #0x460]
//  0x3a9fa0: stur d0, [x1, #0x13]
//  0x3a9fa4: add x0, NULL, #0x20
//  0x3a9fa8: stur w0, [x1, #0x1b]
//  0x3a9fac: bl #0x391a04
//  0x3a9fb0: stur x0, [FP, #-0x10]
//  0x3a9fb4: ldur BARRIER, [FP, #-0x28]
//  0x3a9fb8: str BARRIER, [SP]
//  0x3a9fbc: mov x1, x0
//  0x3a9fc0: add x4, PP, #0xc, lsl #12
//  0x3a9fc4: ldr x4, [x4, #0x1f8]
//  0x3a9fc8: bl #0x391490
//  0x3a9fcc: ldr x0, [FP, #0x10]
//  0x3a9fd0: ldur w3, [x0, #7]
//  0x3a9fd4: add x3, x3, HEAP, lsl #32
//  0x3a9fd8: ldr BARRIER, [PP, #0x40]
//  0x3a9fdc: cmp w3, w16
//  0x3a9fe0: b.eq #0x3aa544
//  0x3a9fe4: ldur x4, [FP, #-8]
//  0x3a9fe8: ldur w1, [x4, #0xf]
//  0x3a9fec: add x1, x1, HEAP, lsl #32
//  0x3a9ff0: ldur w2, [x1, #0x17]
//  0x3a9ff4: add x2, x2, HEAP, lsl #32
//  0x3a9ff8: bl #0x3aa73c
//  0x3a9ffc: stur x0, [FP, #-0x18]
//  0x3aa000: bl #0x3949ec
//  0x3aa004: mov x2, x0
//  0x3aa008: add x0, PP, #0x12, lsl #12
//  0x3aa00c: ldr x0, [x0, #0x3a0]
//  0x3aa010: stur x2, [FP, #-0x28]
//  0x3aa014: stur w0, [x2, #0xf]
//  0x3aa018: ldr x0, [FP, #0x10]
//  0x3aa01c: ldur w1, [x0, #0x17]
//  0x3aa020: add x1, x1, HEAP, lsl #32
//  0x3aa024: ldr BARRIER, [PP, #0x40]
//  0x3aa028: cmp w1, w16
//  0x3aa02c: b.eq #0x3aa550
//  0x3aa030: tbnz w1, #4, #0x3aa04c
//  0x3aa034: ldur x3, [FP, #-8]
//  0x3aa038: ldur w1, [x3, #0xf]
//  0x3aa03c: add x1, x1, HEAP, lsl #32
//  0x3aa040: bl #0x3aa568
//  0x3aa044: mov x8, x0
//  0x3aa048: b #0x3aa064
//  0x3aa04c: bl #0x391a04
//  0x3aa050: mov x1, x0
//  0x3aa054: stur x0, [FP, #-0x30]
//  0x3aa058: ldr x4, [PP, #0x4c0]
//  0x3aa05c: bl #0x391490
//  0x3aa060: ldur x8, [FP, #-0x30]
//  0x3aa064: ldr x3, [FP, #0x10]
//  0x3aa068: ldur x4, [FP, #-8]
//  0x3aa06c: ldur x6, [FP, #-0x10]
//  0x3aa070: ldur x5, [FP, #-0x18]
//  0x3aa074: ldur x0, [FP, #-0x28]
//  0x3aa078: mov x7, #6
//  0x3aa07c: mov x2, x7
//  0x3aa080: stur x8, [FP, #-0x30]
//  0x3aa084: mov x1, NULL
//  0x3aa088: bl #0x61f920
//  0x3aa08c: mov x2, x0
//  0x3aa090: ldur x0, [FP, #-0x18]
//  0x3aa094: stur x2, [FP, #-0x38]
//  0x3aa098: stur w0, [x2, #0xf]
//  0x3aa09c: ldur x0, [FP, #-0x28]
//  0x3aa0a0: stur w0, [x2, #0x13]
//  0x3aa0a4: ldur x0, [FP, #-0x30]
//  0x3aa0a8: stur w0, [x2, #0x17]
//  0x3aa0ac: ldr x1, [PP, #0x5c58]
//  0x3aa0b0: bl #0x61e854
//  0x3aa0b4: mov x1, x0
//  0x3aa0b8: ldur x0, [FP, #-0x38]
//  0x3aa0bc: stur x1, [FP, #-0x18]
//  0x3aa0c0: stur w0, [x1, #0xf]
//  0x3aa0c4: mov x2, #6
//  0x3aa0c8: stur w2, [x1, #0xb]
//  0x3aa0cc: bl #0x3a1414
//  0x3aa0d0: mov x1, x0
//  0x3aa0d4: ldr x0, [PP, #0x5140]
//  0x3aa0d8: stur x1, [FP, #-0x28]
//  0x3aa0dc: stur w0, [x1, #0xf]
//  0x3aa0e0: add x2, PP, #0xe, lsl #12
//  0x3aa0e4: ldr x2, [x2, #0xae0]
//  0x3aa0e8: stur w2, [x1, #0x13]
//  0x3aa0ec: add x3, PP, #0xe, lsl #12
//  0x3aa0f0: ldr x3, [x3, #0xae8]
//  0x3aa0f4: stur w3, [x1, #0x17]
//  0x3aa0f8: add x4, PP, #0xe, lsl #12
//  0x3aa0fc: ldr x4, [x4, #0xb60]
//  0x3aa100: stur w4, [x1, #0x1b]
//  0x3aa104: add x5, PP, #0xe, lsl #12
//  0x3aa108: ldr x5, [x5, #0xaf8]
//  0x3aa10c: stur w5, [x1, #0x23]
//  0x3aa110: add x6, PP, #0xa, lsl #12
//  0x3aa114: ldr x6, [x6, #0xa8]
//  0x3aa118: stur w6, [x1, #0x2b]
//  0x3aa11c: stur xzr, [x1, #0x2f]
//  0x3aa120: ldur x7, [FP, #-0x18]
//  0x3aa124: stur w7, [x1, #0xb]
//  0x3aa128: bl #0x391c0c
//  0x3aa12c: mov x2, x0
//  0x3aa130: add x0, PP, #0x12, lsl #12
//  0x3aa134: ldr x0, [x0, #0x468]
//  0x3aa138: stur x2, [FP, #-0x18]
//  0x3aa13c: stur w0, [x2, #0xf]
//  0x3aa140: ldur x0, [FP, #-0x28]
//  0x3aa144: stur w0, [x2, #0xb]
//  0x3aa148: add x1, PP, #0xe, lsl #12
//  0x3aa14c: ldr x1, [x1, #0xad0]
//  0x3aa150: bl #0x39fb14
//  0x3aa154: mov x1, x0
//  0x3aa158: mov x0, #1
//  0x3aa15c: stur x1, [FP, #-0x28]
//  0x3aa160: stur x0, [x1, #0x13]
//  0x3aa164: add x0, PP, #0xe, lsl #12
//  0x3aa168: ldr x0, [x0, #0xad8]
//  0x3aa16c: stur w0, [x1, #0x1b]
//  0x3aa170: ldur x0, [FP, #-0x18]
//  0x3aa174: stur w0, [x1, #0xb]
//  0x3aa178: bl #0x3a142c
//  0x3aa17c: mov x1, x0
//  0x3aa180: add x0, PP, #0xf, lsl #12
//  0x3aa184: ldr x0, [x0, #0x248]
//  0x3aa188: stur x1, [FP, #-0x18]
//  0x3aa18c: stur w0, [x1, #0xb]
//  0x3aa190: add x0, PP, #0xf, lsl #12
//  0x3aa194: ldr x0, [x0, #0x170]
//  0x3aa198: stur w0, [x1, #0xf]
//  0x3aa19c: add x0, PP, #0xf, lsl #12
//  0x3aa1a0: ldr x0, [x0, #0x250]
//  0x3aa1a4: stur w0, [x1, #0x13]
//  0x3aa1a8: stur w0, [x1, #0x17]
//  0x3aa1ac: bl #0x2e3578
//  0x3aa1b0: fmov d0, #3.00000000
//  0x3aa1b4: stur x0, [FP, #-0x38]
//  0x3aa1b8: stur d0, [x0, #7]
//  0x3aa1bc: stur xzr, [x0, #0xf]
//  0x3aa1c0: stur xzr, [x0, #0x17]
//  0x3aa1c4: stur xzr, [x0, #0x1f]
//  0x3aa1c8: ldr x1, [FP, #0x10]
//  0x3aa1cc: ldur w2, [x1, #0x13]
//  0x3aa1d0: add x2, x2, HEAP, lsl #32
//  0x3aa1d4: ldr BARRIER, [PP, #0x40]
//  0x3aa1d8: cmp w2, w16
//  0x3aa1dc: b.eq #0x3aa55c
//  0x3aa1e0: ldur x1, [FP, #-8]
//  0x3aa1e4: stur x2, [FP, #-0x30]
//  0x3aa1e8: ldur w3, [x1, #0xf]
//  0x3aa1ec: add x3, x3, HEAP, lsl #32
//  0x3aa1f0: ldur w1, [x3, #0x1b]
//  0x3aa1f4: add x1, x1, HEAP, lsl #32
//  0x3aa1f8: stur x1, [FP, #-8]
//  0x3aa1fc: bl #0x393bf8
//  0x3aa200: mov x1, x0
//  0x3aa204: ldur x0, [FP, #-0x30]
//  0x3aa208: stur x1, [FP, #-0x40]
//  0x3aa20c: stur w0, [x1, #0xb]
//  0x3aa210: ldur x0, [FP, #-8]
//  0x3aa214: stur w0, [x1, #0x13]
//  0x3aa218: bl #0x391a04
//  0x3aa21c: stur x0, [FP, #-8]
//  0x3aa220: ldur BARRIER, [FP, #-0x38]
//  0x3aa224: add LR, PP, #0x11, lsl #12
//  0x3aa228: ldr LR, [LR, #0x860]
//  0x3aa22c: stp LR, BARRIER, [SP, #8]
//  0x3aa230: ldur BARRIER, [FP, #-0x40]
//  0x3aa234: str BARRIER, [SP]
//  0x3aa238: mov x1, x0
//  0x3aa23c: add x4, PP, #0x11, lsl #12
//  0x3aa240: ldr x4, [x4, #0x3b0]
//  0x3aa244: bl #0x391490
//  0x3aa248: mov x1, NULL
//  0x3aa24c: mov x2, #4
//  0x3aa250: bl #0x61f920
//  0x3aa254: mov x2, x0
//  0x3aa258: ldur x0, [FP, #-0x18]
//  0x3aa25c: stur x2, [FP, #-0x30]
//  0x3aa260: stur w0, [x2, #0xf]
//  0x3aa264: ldur x0, [FP, #-8]
//  0x3aa268: stur w0, [x2, #0x13]
//  0x3aa26c: ldr x1, [PP, #0x5c58]
//  0x3aa270: bl #0x61e854
//  0x3aa274: mov x1, x0
//  0x3aa278: ldur x0, [FP, #-0x30]
//  0x3aa27c: stur x1, [FP, #-8]
//  0x3aa280: stur w0, [x1, #0xf]
//  0x3aa284: mov x2, #4
//  0x3aa288: stur w2, [x1, #0xb]
//  0x3aa28c: bl #0x3a1414
//  0x3aa290: mov x1, x0
//  0x3aa294: ldr x0, [PP, #0x5140]
//  0x3aa298: stur x1, [FP, #-0x18]
//  0x3aa29c: stur w0, [x1, #0xf]
//  0x3aa2a0: add x2, PP, #0xf, lsl #12
//  0x3aa2a4: ldr x2, [x2, #0x260]
//  0x3aa2a8: stur w2, [x1, #0x13]
//  0x3aa2ac: add x2, PP, #0xe, lsl #12
//  0x3aa2b0: ldr x2, [x2, #0xae8]
//  0x3aa2b4: stur w2, [x1, #0x17]
//  0x3aa2b8: add x3, PP, #0xe, lsl #12
//  0x3aa2bc: ldr x3, [x3, #0xb60]
//  0x3aa2c0: stur w3, [x1, #0x1b]
//  0x3aa2c4: add x4, PP, #0xe, lsl #12
//  0x3aa2c8: ldr x4, [x4, #0xaf8]
//  0x3aa2cc: stur w4, [x1, #0x23]
//  0x3aa2d0: add x5, PP, #0xa, lsl #12
//  0x3aa2d4: ldr x5, [x5, #0xa8]
//  0x3aa2d8: stur w5, [x1, #0x2b]
//  0x3aa2dc: stur xzr, [x1, #0x2f]
//  0x3aa2e0: ldur x6, [FP, #-8]
//  0x3aa2e4: stur w6, [x1, #0xb]
//  0x3aa2e8: bl #0x391a04
//  0x3aa2ec: stur x0, [FP, #-8]
//  0x3aa2f0: ldur BARRIER, [FP, #-0x18]
//  0x3aa2f4: str BARRIER, [SP]
//  0x3aa2f8: mov x1, x0
//  0x3aa2fc: add x4, PP, #0xc, lsl #12
//  0x3aa300: ldr x4, [x4, #0x1f8]
//  0x3aa304: bl #0x391490
//  0x3aa308: mov x1, NULL
//  0x3aa30c: mov x2, #6
//  0x3aa310: bl #0x61f920
//  0x3aa314: mov x2, x0
//  0x3aa318: ldur x0, [FP, #-0x10]
//  0x3aa31c: stur x2, [FP, #-0x18]
//  0x3aa320: stur w0, [x2, #0xf]
//  0x3aa324: ldur x0, [FP, #-0x28]
//  0x3aa328: stur w0, [x2, #0x13]
//  0x3aa32c: ldur x0, [FP, #-8]
//  0x3aa330: stur w0, [x2, #0x17]
//  0x3aa334: ldr x1, [PP, #0x5c58]
//  0x3aa338: bl #0x61e854
//  0x3aa33c: mov x1, x0
//  0x3aa340: ldur x0, [FP, #-0x18]
//  0x3aa344: stur x1, [FP, #-8]
//  0x3aa348: stur w0, [x1, #0xf]
//  0x3aa34c: mov x0, #6
//  0x3aa350: stur w0, [x1, #0xb]
//  0x3aa354: bl #0x3a1414
//  0x3aa358: mov x1, x0
//  0x3aa35c: ldr x0, [PP, #0x5140]
//  0x3aa360: stur x1, [FP, #-0x10]
//  0x3aa364: stur w0, [x1, #0xf]
//  0x3aa368: add x0, PP, #0xe, lsl #12
//  0x3aa36c: ldr x0, [x0, #0xae0]
//  0x3aa370: stur w0, [x1, #0x13]
//  0x3aa374: add x2, PP, #0xe, lsl #12
//  0x3aa378: ldr x2, [x2, #0xae8]
//  0x3aa37c: stur w2, [x1, #0x17]
//  0x3aa380: add x3, PP, #0xe, lsl #12
//  0x3aa384: ldr x3, [x3, #0xb60]
//  0x3aa388: stur w3, [x1, #0x1b]
//  0x3aa38c: add x4, PP, #0xe, lsl #12
//  0x3aa390: ldr x4, [x4, #0xaf8]
//  0x3aa394: stur w4, [x1, #0x23]
//  0x3aa398: add x5, PP, #0xa, lsl #12
//  0x3aa39c: ldr x5, [x5, #0xa8]
//  0x3aa3a0: stur w5, [x1, #0x2b]
//  0x3aa3a4: stur xzr, [x1, #0x2f]
//  0x3aa3a8: ldur x6, [FP, #-8]
//  0x3aa3ac: stur w6, [x1, #0xb]
//  0x3aa3b0: bl #0x391a04
//  0x3aa3b4: stur x0, [FP, #-8]
//  0x3aa3b8: ldur BARRIER, [FP, #-0x20]
//  0x3aa3bc: ldur LR, [FP, #-0x10]
//  0x3aa3c0: stp LR, BARRIER, [SP]
//  0x3aa3c4: mov x1, x0
//  0x3aa3c8: add x4, PP, #0xf, lsl #12
//  0x3aa3cc: ldr x4, [x4, #0x258]
//  0x3aa3d0: bl #0x391490
//  0x3aa3d4: bl #0x2e3578
//  0x3aa3d8: stur x0, [FP, #-0x10]
//  0x3aa3dc: stur xzr, [x0, #7]
//  0x3aa3e0: stur xzr, [x0, #0xf]
//  0x3aa3e4: stur xzr, [x0, #0x17]
//  0x3aa3e8: stur xzr, [x0, #0x1f]
//  0x3aa3ec: bl #0x31d844
//  0x3aa3f0: mov x1, x0
//  0x3aa3f4: ldr x0, [PP, #0x6310]
//  0x3aa3f8: stur x1, [FP, #-0x18]
//  0x3aa3fc: stur w0, [x1, #0x27]
//  0x3aa400: fmov d0, #1.00000000
//  0x3aa404: stur d0, [x1, #7]
//  0x3aa408: stur d0, [x1, #0xf]
//  0x3aa40c: add x17, PP, #0x10, lsl #12
//  0x3aa410: ldr d0, [x17, #0xac0]
//  0x3aa414: stur d0, [x1, #0x17]
//  0x3aa418: add x17, PP, #0x10, lsl #12
//  0x3aa41c: ldr d0, [x17, #0xac8]
//  0x3aa420: stur d0, [x1, #0x1f]
//  0x3aa424: bl #0x391a04
//  0x3aa428: stur x0, [FP, #-0x20]
//  0x3aa42c: ldur BARRIER, [FP, #-0x10]
//  0x3aa430: ldr LR, [PP, #0x53b0]
//  0x3aa434: stp LR, BARRIER, [SP, #8]
//  0x3aa438: ldur BARRIER, [FP, #-0x18]
//  0x3aa43c: str BARRIER, [SP]
//  0x3aa440: mov x1, x0
//  0x3aa444: add x4, PP, #0x10, lsl #12
//  0x3aa448: ldr x4, [x4, #0x258]
//  0x3aa44c: bl #0x391490
//  0x3aa450: mov x1, NULL
//  0x3aa454: mov x2, #4
//  0x3aa458: bl #0x61f920
//  0x3aa45c: mov x2, x0
//  0x3aa460: ldur x0, [FP, #-8]
//  0x3aa464: stur x2, [FP, #-0x10]
//  0x3aa468: stur w0, [x2, #0xf]
//  0x3aa46c: ldur x0, [FP, #-0x20]
//  0x3aa470: stur w0, [x2, #0x13]
//  0x3aa474: ldr x1, [PP, #0x5c58]
//  0x3aa478: bl #0x61e854
//  0x3aa47c: mov x1, x0
//  0x3aa480: ldur x0, [FP, #-0x10]
//  0x3aa484: stur x1, [FP, #-8]
//  0x3aa488: stur w0, [x1, #0xf]
//  0x3aa48c: mov x0, #4
//  0x3aa490: stur w0, [x1, #0xb]
//  0x3aa494: bl #0x39310c
//  0x3aa498: mov x1, x0
//  0x3aa49c: add x0, PP, #0xa, lsl #12
//  0x3aa4a0: ldr x0, [x0, #0x858]
//  0x3aa4a4: stur x1, [FP, #-0x10]
//  0x3aa4a8: stur w0, [x1, #0xf]
//  0x3aa4ac: add x0, PP, #0xe, lsl #12
//  0x3aa4b0: ldr x0, [x0, #0xae0]
//  0x3aa4b4: stur w0, [x1, #0x13]
//  0x3aa4b8: add x0, PP, #0xe, lsl #12
//  0x3aa4bc: ldr x0, [x0, #0xae8]
//  0x3aa4c0: stur w0, [x1, #0x17]
//  0x3aa4c4: add x0, PP, #0xe, lsl #12
//  0x3aa4c8: ldr x0, [x0, #0xb60]
//  0x3aa4cc: stur w0, [x1, #0x1b]
//  0x3aa4d0: add x0, PP, #0xe, lsl #12
//  0x3aa4d4: ldr x0, [x0, #0xaf8]
//  0x3aa4d8: stur w0, [x1, #0x23]
//  0x3aa4dc: add x0, PP, #0xa, lsl #12
//  0x3aa4e0: ldr x0, [x0, #0xa8]
//  0x3aa4e4: stur w0, [x1, #0x2b]
//  0x3aa4e8: stur xzr, [x1, #0x2f]
//  0x3aa4ec: ldur x0, [FP, #-8]
//  0x3aa4f0: stur w0, [x1, #0xb]
//  0x3aa4f4: bl #0x391a04
//  0x3aa4f8: stur x0, [FP, #-8]
//  0x3aa4fc: ldur BARRIER, [FP, #-0x10]
//  0x3aa500: str BARRIER, [SP]
//  0x3aa504: mov x1, x0
//  0x3aa508: add x4, PP, #0xc, lsl #12
//  0x3aa50c: ldr x4, [x4, #0x1f8]
//  0x3aa510: bl #0x391490
//  0x3aa514: ldur x0, [FP, #-8]
//  0x3aa518: mov SP, FP
//  0x3aa51c: ldp FP, LR, [SP], #0x10
//  0x3aa520: ret 
//  0x3aa524: bl #0x61fa28
//  0x3aa528: b #0x3a9f28
//  0x3aa52c: add x9, PP, #0x12, lsl #12
//  0x3aa530: ldr x9, [x9, #0x470]
//  0x3aa534: bl #0x620258
//  0x3aa538: add x9, PP, #0x12, lsl #12
//  0x3aa53c: ldr x9, [x9, #0x478]
//  0x3aa540: bl #0x620258
//  0x3aa544: add x9, PP, #0x12, lsl #12
//  0x3aa548: ldr x9, [x9, #0x480]
//  0x3aa54c: bl #0x620258
//  0x3aa550: add x9, PP, #0x12, lsl #12
//  0x3aa554: ldr x9, [x9, #0x488]
//  0x3aa558: bl #0x620258
//  0x3aa55c: add x9, PP, #0x12, lsl #12
//  0x3aa560: ldr x9, [x9, #0x490]
//  0x3aa564: bl #0x620258
//
dynamic PagePartyLotteryNameList_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
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
  dynamic x8;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a9f00
  // frame: FP = SP // 0x3a9f04
  // frame: SP = SP - 0x58 // 0x3a9f08
  w1 = mem((local_18), 0x17); // 0x3a9f10
  x0 = local_18; // 0x3a9f0c
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3a9f14
  local_m8 = x1; // 0x3a9f18
  BARRIER = mem(THR, 0x38); // 0x3a9f1c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3aa524
  }
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3a9f28
  d0 = 22.00000000 /* bits */; // 0x3a9f2c
  local_m20 = x0; // 0x3a9f30
  memSet(x0, 7, d0); // 0x3a9f34
  d0 = 10.00000000 /* bits */; // 0x3a9f38
  memSet(x0, 0xf, d0); // 0x3a9f3c
  memSet(x0, 0x17, xzr); // 0x3a9f40
  memSet(x0, 0x1f, d0); // 0x3a9f44
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3a9f54
  w2 = mem((local_10), 0xb); // 0x3a9f4c
  x1 = local_10; // 0x3a9f48
  x2 = ((mem((local_10), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3a9f50
  if (w2 == w16) {
    x9 = mem((PP + 0x12000), 0x470) /* Field */; // 0x3aa530
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3aa534
  } else {
    local_m18 = x2; // 0x3a9f60
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3a9f6c
    w3 = mem(x1, 0xf); // 0x3a9f64
    x3 = ((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3a9f68
    if (w3 == w16) {
      x9 = mem((PP + 0x12000), 0x478) /* Field */; // 0x3aa53c
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3aa540
    } else {
      local_m10 = x3; // 0x3a9f78
      AllocationStub_SoulAvatarImage() /* 0x3a67fc */; // 0x3a9f7c
      x0 = local_m18; // 0x3a9f84
      x1 = x0; // 0x3a9f80
      local_m28 = x1; // 0x3a9f88
      memSet(x1, 0xb, w0); // 0x3a9f8c
      x0 = local_m10; // 0x3a9f90
      memSet(x1, 0xf, w0); // 0x3a9f94
      d0 = 4631389266797133824; // 0x3a9f9c
      x17 = PP + 0x12000; // 0x3a9f98
      memSet(x1, 0x13, d0); // 0x3a9fa0
      x0 = NULL + 0x20; // 0x3a9fa4
      memSet(x1, 0x1b, w0); // 0x3a9fa8
      AllocationStub_Container() /* 0x391a04 */; // 0x3a9fac
      local_m10 = x0; // 0x3a9fb0
      BARRIER = local_m28; // 0x3a9fb4
      local_0 = BARRIER; // 0x3a9fb8
      x1 = x0; // 0x3a9fbc
      x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x3a9fc4
      Container_ctor() /* 0x391490 */; // 0x3a9fc8
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3a9fd8
      w3 = mem((local_10), 7); // 0x3a9fd0
      x0 = local_10; // 0x3a9fcc
      x3 = ((mem((local_10), 7)) & 0xffffffff) + (HEAP << 32); // 0x3a9fd4
      if (w3 == w16) {
        x9 = mem((PP + 0x12000), 0x480) /* Field */; // 0x3aa548
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3aa54c
      } else {
        w1 = mem((local_m8), 0xf); // 0x3a9fe8
        w2 = mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x17); // 0x3a9ff0
        x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3a9fec
        x2 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3a9ff4
        x4 = local_m8; // 0x3a9fe4
        PagePartyLotteryNameList_maxWidthText() /* 0x3aa73c */; // 0x3a9ff8
        local_m18 = x0; // 0x3a9ffc
        AllocationStub_SizedBox() /* 0x3949ec */; // 0x3aa000
        x0 = mem((PP + 0x12000), 0x3a0) /* Double */; // 0x3aa00c
        x2 = x0; // 0x3aa004
        local_m28 = x2; // 0x3aa010
        memSet(x2, 0xf, w0); // 0x3aa014
        BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3aa024
        w1 = mem((local_10), 0x17); // 0x3aa01c
        x0 = local_10; // 0x3aa018
        x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3aa020
        if (w1 == w16) {
          x9 = mem((PP + 0x12000), 0x488) /* Field */; // 0x3aa554
          LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3aa558
        } else {
          if (x1 & (1 << 4) != 0) {
            AllocationStub_Container() /* 0x391a04 */; // 0x3aa04c
            x1 = x0; // 0x3aa050
            local_m30 = x0; // 0x3aa054
            x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3aa058
            Container_ctor() /* 0x391490 */; // 0x3aa05c
            x8 = local_m30; // 0x3aa060
          } else {
            w1 = mem((local_m8), 0xf); // 0x3aa038
            x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3aa03c
            x3 = local_m8; // 0x3aa034
            PagePartyLotteryNameList_bestLuckyLogo() /* 0x3aa568 */; // 0x3aa040
            x8 = x0; // 0x3aa044
          }
          x0 = local_m28; // 0x3aa074
          x2 = 6; // 0x3aa07c
          x3 = local_10; // 0x3aa064
          x4 = local_m8; // 0x3aa068
          x5 = local_m18; // 0x3aa070
          x6 = local_m10; // 0x3aa06c
          x7 = 6; // 0x3aa078
          local_m30 = x8; // 0x3aa080
          x1 = NULL; // 0x3aa084
          sub_0x61f920(); // 0x3aa088
          x0 = local_m18; // 0x3aa090
          x2 = x0; // 0x3aa08c
          local_m38 = x2; // 0x3aa094
          memSet(x2, 0xf, w0); // 0x3aa098
          x0 = local_m28; // 0x3aa09c
          memSet(x2, 0x13, w0); // 0x3aa0a0
          x0 = local_m30; // 0x3aa0a4
          memSet(x2, 0x17, w0); // 0x3aa0a8
          x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3aa0ac
          AllocationStub__GrowableList() /* 0x61e854 */; // 0x3aa0b0
          x0 = local_m38; // 0x3aa0b8
          x1 = x0; // 0x3aa0b4
          local_m18 = x1; // 0x3aa0bc
          memSet(x1, 0xf, w0); // 0x3aa0c0
          x2 = 6; // 0x3aa0c4
          memSet(x1, 0xb, w2); // 0x3aa0c8
          AllocationStub_Row() /* 0x3a1414 */; // 0x3aa0cc
          x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x3aa0d4
          x1 = x0; // 0x3aa0d0
          local_m28 = x1; // 0x3aa0d8
          memSet(x1, 0xf, w0); // 0x3aa0dc
          x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3aa0e4
          memSet(x1, 0x13, w2); // 0x3aa0e8
          x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3aa0f0
          memSet(x1, 0x17, w3); // 0x3aa0f4
          x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3aa0fc
          memSet(x1, 0x1b, w4); // 0x3aa100
          x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3aa108
          memSet(x1, 0x23, w5); // 0x3aa10c
          x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3aa114
          memSet(x1, 0x2b, w6); // 0x3aa118
          memSet(x1, 0x2f, xzr); // 0x3aa11c
          x7 = local_m18; // 0x3aa120
          memSet(x1, 0xb, w7); // 0x3aa124
          AllocationStub_Padding() /* 0x391c0c */; // 0x3aa128
          x0 = mem((PP + 0x12000), 0x468) /* Obj!EdgeInsets@11b86  */; // 0x3aa134
          x2 = x0; // 0x3aa12c
          local_m18 = x2; // 0x3aa138
          memSet(x2, 0xf, w0); // 0x3aa13c
          x0 = local_m28; // 0x3aa140
          memSet(x2, 0xb, w0); // 0x3aa144
          x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x3aa14c
          AllocationStub_Expanded() /* 0x39fb14 */; // 0x3aa150
          x0 = 1; // 0x3aa158
          x1 = x0; // 0x3aa154
          local_m28 = x1; // 0x3aa15c
          memSet(x1, 0x13, x0); // 0x3aa160
          x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x3aa168
          memSet(x1, 0x1b, w0); // 0x3aa16c
          x0 = local_m18; // 0x3aa170
          memSet(x1, 0xb, w0); // 0x3aa174
          AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x3aa178
          x0 = "assets/images/3.0x/party_icon_soulcoin_big.webp" /* pp+0xf248 */; // 0x3aa184
          x1 = x0; // 0x3aa17c
          local_m18 = x1; // 0x3aa188
          memSet(x1, 0xb, w0); // 0x3aa18c
          x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x3aa194
          memSet(x1, 0xf, w0); // 0x3aa198
          x0 = mem((PP + 0xf000), 0x250) /* Double */; // 0x3aa1a0
          memSet(x1, 0x13, w0); // 0x3aa1a4
          memSet(x1, 0x17, w0); // 0x3aa1a8
          AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3aa1ac
          d0 = 3.00000000 /* bits */; // 0x3aa1b0
          local_m38 = x0; // 0x3aa1b4
          memSet(x0, 7, d0); // 0x3aa1b8
          memSet(x0, 0xf, xzr); // 0x3aa1bc
          memSet(x0, 0x17, xzr); // 0x3aa1c0
          memSet(x0, 0x1f, xzr); // 0x3aa1c4
          BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3aa1d4
          w2 = mem((local_10), 0x13); // 0x3aa1cc
          x1 = local_10; // 0x3aa1c8
          x2 = ((mem((local_10), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x3aa1d0
          if (w2 != w16) {
            x1 = local_m8; // 0x3aa1e0
            local_m30 = x2; // 0x3aa1e4
            w1 = mem((((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x1b); // 0x3aa1f0
            w3 = mem(x1, 0xf); // 0x3aa1e8
            x1 = ((mem((((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x3aa1f4
            x3 = ((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3aa1ec
            local_m8 = x1; // 0x3aa1f8
            AllocationStub_Text() /* 0x393bf8 */; // 0x3aa1fc
            x0 = local_m30; // 0x3aa204
            x1 = x0; // 0x3aa200
            local_m40 = x1; // 0x3aa208
            memSet(x1, 0xb, w0); // 0x3aa20c
            x0 = local_m8; // 0x3aa210
            memSet(x1, 0x13, w0); // 0x3aa214
            AllocationStub_Container() /* 0x391a04 */; // 0x3aa218
            local_m8 = x0; // 0x3aa21c
            BARRIER = local_m38; // 0x3aa220
            LR = mem((PP + 0x11000), 0x860) /* Double */; // 0x3aa228
            // frame: LR, BARRIER, mem(SP, 8) // 0x3aa22c
            BARRIER = local_m40; // 0x3aa230
            local_0 = BARRIER; // 0x3aa234
            x1 = x0; // 0x3aa238
            x4 = mem((PP + 0x11000), 0x3b0) /* ImmutableArray */; // 0x3aa240
            Container_ctor() /* 0x391490 */; // 0x3aa244
            x1 = NULL; // 0x3aa248
            x2 = 4; // 0x3aa24c
            sub_0x61f920(); // 0x3aa250
            x0 = local_m18; // 0x3aa258
            x2 = x0; // 0x3aa254
            local_m30 = x2; // 0x3aa25c
            memSet(x2, 0xf, w0); // 0x3aa260
            x0 = local_m8; // 0x3aa264
            memSet(x2, 0x13, w0); // 0x3aa268
            x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3aa26c
            AllocationStub__GrowableList() /* 0x61e854 */; // 0x3aa270
            x0 = local_m30; // 0x3aa278
            x1 = x0; // 0x3aa274
            local_m8 = x1; // 0x3aa27c
            memSet(x1, 0xf, w0); // 0x3aa280
            x2 = 4; // 0x3aa284
            memSet(x1, 0xb, w2); // 0x3aa288
            AllocationStub_Row() /* 0x3a1414 */; // 0x3aa28c
            x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x3aa294
            x1 = x0; // 0x3aa290
            local_m18 = x1; // 0x3aa298
            memSet(x1, 0xf, w0); // 0x3aa29c
            x2 = mem((PP + 0xf000), 0x260) /* Obj!MainAxisAlignment@1226e  */; // 0x3aa2a4
            memSet(x1, 0x13, w2); // 0x3aa2a8
            x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3aa2b0
            memSet(x1, 0x17, w2); // 0x3aa2b4
            x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3aa2bc
            memSet(x1, 0x1b, w3); // 0x3aa2c0
            x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3aa2c8
            memSet(x1, 0x23, w4); // 0x3aa2cc
            x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3aa2d4
            memSet(x1, 0x2b, w5); // 0x3aa2d8
            memSet(x1, 0x2f, xzr); // 0x3aa2dc
            x6 = local_m8; // 0x3aa2e0
            memSet(x1, 0xb, w6); // 0x3aa2e4
            AllocationStub_Container() /* 0x391a04 */; // 0x3aa2e8
            local_m8 = x0; // 0x3aa2ec
            BARRIER = local_m18; // 0x3aa2f0
            local_0 = BARRIER; // 0x3aa2f4
            x1 = x0; // 0x3aa2f8
            x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x3aa300
            Container_ctor() /* 0x391490 */; // 0x3aa304
            x1 = NULL; // 0x3aa308
            x2 = 6; // 0x3aa30c
            sub_0x61f920(); // 0x3aa310
            x0 = local_m10; // 0x3aa318
            x2 = x0; // 0x3aa314
            local_m18 = x2; // 0x3aa31c
            memSet(x2, 0xf, w0); // 0x3aa320
            x0 = local_m28; // 0x3aa324
            memSet(x2, 0x13, w0); // 0x3aa328
            x0 = local_m8; // 0x3aa32c
            memSet(x2, 0x17, w0); // 0x3aa330
            x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3aa334
            AllocationStub__GrowableList() /* 0x61e854 */; // 0x3aa338
            x0 = local_m18; // 0x3aa340
            x1 = x0; // 0x3aa33c
            local_m8 = x1; // 0x3aa344
            memSet(x1, 0xf, w0); // 0x3aa348
            x0 = 6; // 0x3aa34c
            memSet(x1, 0xb, w0); // 0x3aa350
            AllocationStub_Row() /* 0x3a1414 */; // 0x3aa354
            x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x3aa35c
            x1 = x0; // 0x3aa358
            local_m10 = x1; // 0x3aa360
            memSet(x1, 0xf, w0); // 0x3aa364
            x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3aa36c
            memSet(x1, 0x13, w0); // 0x3aa370
            x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3aa378
            memSet(x1, 0x17, w2); // 0x3aa37c
            x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3aa384
            memSet(x1, 0x1b, w3); // 0x3aa388
            x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3aa390
            memSet(x1, 0x23, w4); // 0x3aa394
            x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3aa39c
            memSet(x1, 0x2b, w5); // 0x3aa3a0
            memSet(x1, 0x2f, xzr); // 0x3aa3a4
            x6 = local_m8; // 0x3aa3a8
            memSet(x1, 0xb, w6); // 0x3aa3ac
            AllocationStub_Container() /* 0x391a04 */; // 0x3aa3b0
            local_m8 = x0; // 0x3aa3b4
            BARRIER = local_m20; // 0x3aa3b8
            LR = local_m10; // 0x3aa3bc
            // frame: LR, BARRIER, mem(SP) // 0x3aa3c0
            x1 = x0; // 0x3aa3c4
            x4 = mem((PP + 0xf000), 0x258) /* ImmutableArray */; // 0x3aa3cc
            Container_ctor() /* 0x391490 */; // 0x3aa3d0
            AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3aa3d4
            local_m10 = x0; // 0x3aa3d8
            memSet(x0, 7, xzr); // 0x3aa3dc
            memSet(x0, 0xf, xzr); // 0x3aa3e0
            memSet(x0, 0x17, xzr); // 0x3aa3e4
            memSet(x0, 0x1f, xzr); // 0x3aa3e8
            AllocationStub_Color() /* 0x31d844 */; // 0x3aa3ec
            x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3aa3f4
            x1 = x0; // 0x3aa3f0
            local_m18 = x1; // 0x3aa3f8
            memSet(x1, 0x27, w0); // 0x3aa3fc
            d0 = 1.00000000 /* bits */; // 0x3aa400
            memSet(x1, 7, d0); // 0x3aa404
            memSet(x1, 0xf, d0); // 0x3aa408
            d0 = 4606617261199719934; // 0x3aa410
            x17 = PP + 0x10000; // 0x3aa40c
            memSet(x1, 0x17, d0); // 0x3aa414
            d0 = 4600312221721401240; // 0x3aa41c
            x17 = PP + 0x10000; // 0x3aa418
            memSet(x1, 0x1f, d0); // 0x3aa420
            AllocationStub_Container() /* 0x391a04 */; // 0x3aa424
            local_m20 = x0; // 0x3aa428
            BARRIER = local_m10; // 0x3aa42c
            LR = mem(PP, 0x53b0) /* Double */; // 0x3aa430
            // frame: LR, BARRIER, mem(SP, 8) // 0x3aa434
            BARRIER = local_m18; // 0x3aa438
            local_0 = BARRIER; // 0x3aa43c
            x1 = x0; // 0x3aa440
            x4 = mem((PP + 0x10000), 0x258) /* ImmutableArray */; // 0x3aa448
            Container_ctor() /* 0x391490 */; // 0x3aa44c
            x1 = NULL; // 0x3aa450
            x2 = 4; // 0x3aa454
            sub_0x61f920(); // 0x3aa458
            x0 = local_m8; // 0x3aa460
            x2 = x0; // 0x3aa45c
            local_m10 = x2; // 0x3aa464
            memSet(x2, 0xf, w0); // 0x3aa468
            x0 = local_m20; // 0x3aa46c
            memSet(x2, 0x13, w0); // 0x3aa470
            x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3aa474
            AllocationStub__GrowableList() /* 0x61e854 */; // 0x3aa478
            x0 = local_m10; // 0x3aa480
            x1 = x0; // 0x3aa47c
            local_m8 = x1; // 0x3aa484
            memSet(x1, 0xf, w0); // 0x3aa488
            x0 = 4; // 0x3aa48c
            memSet(x1, 0xb, w0); // 0x3aa490
            AllocationStub_Column() /* 0x39310c */; // 0x3aa494
            x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3aa4a0
            x1 = x0; // 0x3aa498
            local_m10 = x1; // 0x3aa4a4
            memSet(x1, 0xf, w0); // 0x3aa4a8
            x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3aa4b0
            memSet(x1, 0x13, w0); // 0x3aa4b4
            x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3aa4bc
            memSet(x1, 0x17, w0); // 0x3aa4c0
            x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3aa4c8
            memSet(x1, 0x1b, w0); // 0x3aa4cc
            x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3aa4d4
            memSet(x1, 0x23, w0); // 0x3aa4d8
            x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3aa4e0
            memSet(x1, 0x2b, w0); // 0x3aa4e4
            memSet(x1, 0x2f, xzr); // 0x3aa4e8
            x0 = local_m8; // 0x3aa4ec
            memSet(x1, 0xb, w0); // 0x3aa4f0
            AllocationStub_Container() /* 0x391a04 */; // 0x3aa4f4
            local_m8 = x0; // 0x3aa4f8
            BARRIER = local_m10; // 0x3aa4fc
            local_0 = BARRIER; // 0x3aa500
            x1 = x0; // 0x3aa504
            x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x3aa50c
            Container_ctor() /* 0x391490 */; // 0x3aa510
            SP = FP; // 0x3aa518
            x0 = local_m8; // 0x3aa514
            // frame: FP, LR, mem(SP), 0x10 // 0x3aa51c
            return;
          }
        }
        x9 = mem((PP + 0x12000), 0x490) /* Field */; // 0x3aa560
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3aa564
      }
    }
  }
}

// PagePartyLotteryNameList_bestLuckyLogo
// raw disassembly:
//  0x3aa568: stp FP, LR, [SP, #-0x10]!
//  0x3aa56c: mov FP, SP
//  0x3aa570: sub SP, SP, #0x30
//  0x3aa574: bl #0x3a142c
//  0x3aa578: mov x1, x0
//  0x3aa57c: add x0, PP, #0x12, lsl #12
//  0x3aa580: ldr x0, [x0, #0x498]
//  0x3aa584: stur x1, [FP, #-8]
//  0x3aa588: stur w0, [x1, #0xb]
//  0x3aa58c: add x2, PP, #0xf, lsl #12
//  0x3aa590: ldr x2, [x2, #0x170]
//  0x3aa594: stur w2, [x1, #0xf]
//  0x3aa598: ldr x3, [PP, #0x7598]
//  0x3aa59c: stur w3, [x1, #0x13]
//  0x3aa5a0: stur w3, [x1, #0x17]
//  0x3aa5a4: bl #0x3949ec
//  0x3aa5a8: mov x1, x0
//  0x3aa5ac: add x0, PP, #0x12, lsl #12
//  0x3aa5b0: ldr x0, [x0, #0x338]
//  0x3aa5b4: stur x1, [FP, #-0x10]
//  0x3aa5b8: stur w0, [x1, #0xf]
//  0x3aa5bc: bl #0x31d844
//  0x3aa5c0: mov x1, x0
//  0x3aa5c4: ldr x0, [PP, #0x6310]
//  0x3aa5c8: stur x1, [FP, #-0x18]
//  0x3aa5cc: stur w0, [x1, #0x27]
//  0x3aa5d0: fmov d0, #1.00000000
//  0x3aa5d4: stur d0, [x1, #7]
//  0x3aa5d8: stur d0, [x1, #0xf]
//  0x3aa5dc: add x17, PP, #0x10, lsl #12
//  0x3aa5e0: ldr d0, [x17, #0xac0]
//  0x3aa5e4: stur d0, [x1, #0x17]
//  0x3aa5e8: add x17, PP, #0x12, lsl #12
//  0x3aa5ec: ldr d0, [x17, #0x4a0]
//  0x3aa5f0: stur d0, [x1, #0x1f]
//  0x3aa5f4: bl #0x31abec
//  0x3aa5f8: mov x1, x0
//  0x3aa5fc: add x0, NULL, #0x20
//  0x3aa600: stur x1, [FP, #-0x20]
//  0x3aa604: stur w0, [x1, #7]
//  0x3aa608: ldur x0, [FP, #-0x18]
//  0x3aa60c: stur w0, [x1, #0xb]
//  0x3aa610: ldr x0, [PP, #0x7598]
//  0x3aa614: stur w0, [x1, #0x1f]
//  0x3aa618: bl #0x393bf8
//  0x3aa61c: mov x1, x0
//  0x3aa620: add x0, PP, #0x12, lsl #12
//  0x3aa624: ldr x0, [x0, #0x4a8]
//  0x3aa628: stur x1, [FP, #-0x18]
//  0x3aa62c: stur w0, [x1, #0xb]
//  0x3aa630: ldur x0, [FP, #-0x20]
//  0x3aa634: stur w0, [x1, #0x13]
//  0x3aa638: bl #0x3949ec
//  0x3aa63c: mov x1, x0
//  0x3aa640: add x0, PP, #0x12, lsl #12
//  0x3aa644: ldr x0, [x0, #0x338]
//  0x3aa648: stur x1, [FP, #-0x20]
//  0x3aa64c: stur w0, [x1, #0xf]
//  0x3aa650: bl #0x3a142c
//  0x3aa654: mov x3, x0
//  0x3aa658: add x0, PP, #0x12, lsl #12
//  0x3aa65c: ldr x0, [x0, #0x498]
//  0x3aa660: stur x3, [FP, #-0x28]
//  0x3aa664: stur w0, [x3, #0xb]
//  0x3aa668: add x0, PP, #0xf, lsl #12
//  0x3aa66c: ldr x0, [x0, #0x170]
//  0x3aa670: stur w0, [x3, #0xf]
//  0x3aa674: ldr x0, [PP, #0x7598]
//  0x3aa678: stur w0, [x3, #0x13]
//  0x3aa67c: stur w0, [x3, #0x17]
//  0x3aa680: mov x1, NULL
//  0x3aa684: mov x2, #0xa
//  0x3aa688: bl #0x61f920
//  0x3aa68c: mov x2, x0
//  0x3aa690: ldur x0, [FP, #-8]
//  0x3aa694: stur x2, [FP, #-0x30]
//  0x3aa698: stur w0, [x2, #0xf]
//  0x3aa69c: ldur x0, [FP, #-0x10]
//  0x3aa6a0: stur w0, [x2, #0x13]
//  0x3aa6a4: ldur x0, [FP, #-0x18]
//  0x3aa6a8: stur w0, [x2, #0x17]
//  0x3aa6ac: ldur x0, [FP, #-0x20]
//  0x3aa6b0: stur w0, [x2, #0x1b]
//  0x3aa6b4: ldur x0, [FP, #-0x28]
//  0x3aa6b8: stur w0, [x2, #0x1f]
//  0x3aa6bc: ldr x1, [PP, #0x5c58]
//  0x3aa6c0: bl #0x61e854
//  0x3aa6c4: mov x1, x0
//  0x3aa6c8: ldur x0, [FP, #-0x30]
//  0x3aa6cc: stur x1, [FP, #-8]
//  0x3aa6d0: stur w0, [x1, #0xf]
//  0x3aa6d4: mov x0, #0xa
//  0x3aa6d8: stur w0, [x1, #0xb]
//  0x3aa6dc: bl #0x3a1414
//  0x3aa6e0: ldr x1, [PP, #0x5140]
//  0x3aa6e4: stur w1, [x0, #0xf]
//  0x3aa6e8: add x1, PP, #0xe, lsl #12
//  0x3aa6ec: ldr x1, [x1, #0xae0]
//  0x3aa6f0: stur w1, [x0, #0x13]
//  0x3aa6f4: add x1, PP, #0xe, lsl #12
//  0x3aa6f8: ldr x1, [x1, #0xae8]
//  0x3aa6fc: stur w1, [x0, #0x17]
//  0x3aa700: add x1, PP, #0xe, lsl #12
//  0x3aa704: ldr x1, [x1, #0xb60]
//  0x3aa708: stur w1, [x0, #0x1b]
//  0x3aa70c: add x1, PP, #0xe, lsl #12
//  0x3aa710: ldr x1, [x1, #0xaf8]
//  0x3aa714: stur w1, [x0, #0x23]
//  0x3aa718: add x1, PP, #0xa, lsl #12
//  0x3aa71c: ldr x1, [x1, #0xa8]
//  0x3aa720: stur w1, [x0, #0x2b]
//  0x3aa724: stur xzr, [x0, #0x2f]
//  0x3aa728: ldur x1, [FP, #-8]
//  0x3aa72c: stur w1, [x0, #0xb]
//  0x3aa730: mov SP, FP
//  0x3aa734: ldp FP, LR, [SP], #0x10
//  0x3aa738: ret 
//
dynamic PagePartyLotteryNameList_bestLuckyLogo() {
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3aa568
  // frame: FP = SP // 0x3aa56c
  // frame: SP = SP - 0x30 // 0x3aa570
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x3aa574
  x0 = "assets/images/3.0x/party_icon_list_star.webp" /* pp+0x12498 */; // 0x3aa580
  x1 = x0; // 0x3aa578
  local_m8 = x1; // 0x3aa584
  memSet(x1, 0xb, w0); // 0x3aa588
  x2 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x3aa590
  memSet(x1, 0xf, w2); // 0x3aa594
  x3 = mem(PP, 0x7598) /* Double */; // 0x3aa598
  memSet(x1, 0x13, w3); // 0x3aa59c
  memSet(x1, 0x17, w3); // 0x3aa5a0
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x3aa5a4
  x0 = mem((PP + 0x12000), 0x338) /* Double */; // 0x3aa5b0
  x1 = x0; // 0x3aa5a8
  local_m10 = x1; // 0x3aa5b4
  memSet(x1, 0xf, w0); // 0x3aa5b8
  AllocationStub_Color() /* 0x31d844 */; // 0x3aa5bc
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3aa5c4
  x1 = x0; // 0x3aa5c0
  local_m18 = x1; // 0x3aa5c8
  memSet(x1, 0x27, w0); // 0x3aa5cc
  d0 = 1.00000000 /* bits */; // 0x3aa5d0
  memSet(x1, 7, d0); // 0x3aa5d4
  memSet(x1, 0xf, d0); // 0x3aa5d8
  d0 = 4606617261199719934; // 0x3aa5e0
  x17 = PP + 0x10000; // 0x3aa5dc
  memSet(x1, 0x17, d0); // 0x3aa5e4
  d0 = 4600241577021364055; // 0x3aa5ec
  x17 = PP + 0x12000; // 0x3aa5e8
  memSet(x1, 0x1f, d0); // 0x3aa5f0
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3aa5f4
  x0 = NULL + 0x20; // 0x3aa5fc
  x1 = x0; // 0x3aa5f8
  local_m20 = x1; // 0x3aa600
  memSet(x1, 7, w0); // 0x3aa604
  x0 = local_m18; // 0x3aa608
  memSet(x1, 0xb, w0); // 0x3aa60c
  x0 = mem(PP, 0x7598) /* Double */; // 0x3aa610
  memSet(x1, 0x1f, w0); // 0x3aa614
  AllocationStub_Text() /* 0x393bf8 */; // 0x3aa618
  x0 = "Best luck" /* pp+0x124a8 */; // 0x3aa624
  x1 = x0; // 0x3aa61c
  local_m18 = x1; // 0x3aa628
  memSet(x1, 0xb, w0); // 0x3aa62c
  x0 = local_m20; // 0x3aa630
  memSet(x1, 0x13, w0); // 0x3aa634
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x3aa638
  x0 = mem((PP + 0x12000), 0x338) /* Double */; // 0x3aa644
  x1 = x0; // 0x3aa63c
  local_m20 = x1; // 0x3aa648
  memSet(x1, 0xf, w0); // 0x3aa64c
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x3aa650
  x0 = "assets/images/3.0x/party_icon_list_star.webp" /* pp+0x12498 */; // 0x3aa65c
  x3 = x0; // 0x3aa654
  local_m28 = x3; // 0x3aa660
  memSet(x3, 0xb, w0); // 0x3aa664
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x3aa66c
  memSet(x3, 0xf, w0); // 0x3aa670
  x0 = mem(PP, 0x7598) /* Double */; // 0x3aa674
  memSet(x3, 0x13, w0); // 0x3aa678
  memSet(x3, 0x17, w0); // 0x3aa67c
  x1 = NULL; // 0x3aa680
  x2 = 10; // 0x3aa684
  sub_0x61f920(); // 0x3aa688
  x0 = local_m8; // 0x3aa690
  x2 = x0; // 0x3aa68c
  local_m30 = x2; // 0x3aa694
  memSet(x2, 0xf, w0); // 0x3aa698
  x0 = local_m10; // 0x3aa69c
  memSet(x2, 0x13, w0); // 0x3aa6a0
  x0 = local_m18; // 0x3aa6a4
  memSet(x2, 0x17, w0); // 0x3aa6a8
  x0 = local_m20; // 0x3aa6ac
  memSet(x2, 0x1b, w0); // 0x3aa6b0
  x0 = local_m28; // 0x3aa6b4
  memSet(x2, 0x1f, w0); // 0x3aa6b8
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3aa6bc
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3aa6c0
  x0 = local_m30; // 0x3aa6c8
  x1 = x0; // 0x3aa6c4
  local_m8 = x1; // 0x3aa6cc
  memSet(x1, 0xf, w0); // 0x3aa6d0
  x0 = 10; // 0x3aa6d4
  memSet(x1, 0xb, w0); // 0x3aa6d8
  AllocationStub_Row() /* 0x3a1414 */; // 0x3aa6dc
  x1 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x3aa6e0
  memSet(x0, 0xf, w1); // 0x3aa6e4
  x1 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3aa6ec
  memSet(x0, 0x13, w1); // 0x3aa6f0
  x1 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3aa6f8
  memSet(x0, 0x17, w1); // 0x3aa6fc
  x1 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3aa704
  memSet(x0, 0x1b, w1); // 0x3aa708
  x1 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3aa710
  memSet(x0, 0x23, w1); // 0x3aa714
  x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3aa71c
  memSet(x0, 0x2b, w1); // 0x3aa720
  memSet(x0, 0x2f, xzr); // 0x3aa724
  x1 = local_m8; // 0x3aa728
  memSet(x0, 0xb, w1); // 0x3aa72c
  SP = FP; // 0x3aa730
  // frame: FP, LR, mem(SP), 0x10 // 0x3aa734
  return;
}

// PagePartyLotteryNameList_maxWidthText
// raw disassembly:
//  0x3aa73c: stp FP, LR, [SP, #-0x10]!
//  0x3aa740: mov FP, SP
//  0x3aa744: sub SP, SP, #0x20
//  0x3aa748: stur x1, [FP, #-8]
//  0x3aa74c: stur x2, [FP, #-0x10]
//  0x3aa750: stur x3, [FP, #-0x18]
//  0x3aa754: ldr BARRIER, [THR, #0x38]
//  0x3aa758: cmp SP, BARRIER
//  0x3aa75c: b.ls #0x3aa7b4
//  0x3aa760: bl #0x2b8e80
//  0x3aa764: stur x0, [FP, #-0x20]
//  0x3aa768: stur xzr, [x0, #7]
//  0x3aa76c: ldr d0, [PP, #0x6688]
//  0x3aa770: stur d0, [x0, #0xf]
//  0x3aa774: stur xzr, [x0, #0x17]
//  0x3aa778: ldr d0, [PP, #0xb90]
//  0x3aa77c: stur d0, [x0, #0x1f]
//  0x3aa780: ldur x1, [FP, #-8]
//  0x3aa784: ldur x2, [FP, #-0x10]
//  0x3aa788: ldur x3, [FP, #-0x18]
//  0x3aa78c: bl #0x3aa7bc
//  0x3aa790: stur x0, [FP, #-8]
//  0x3aa794: bl #0x39646c
//  0x3aa798: ldur x1, [FP, #-0x20]
//  0x3aa79c: stur w1, [x0, #0xf]
//  0x3aa7a0: ldur x1, [FP, #-8]
//  0x3aa7a4: stur w1, [x0, #0xb]
//  0x3aa7a8: mov SP, FP
//  0x3aa7ac: ldp FP, LR, [SP], #0x10
//  0x3aa7b0: ret 
//  0x3aa7b4: bl #0x61fa28
//  0x3aa7b8: b #0x3aa760
//
dynamic PagePartyLotteryNameList_maxWidthText() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3aa73c
  // frame: FP = SP // 0x3aa740
  // frame: SP = SP - 0x20 // 0x3aa744
  local_m8 = x1; // 0x3aa748
  local_m10 = x2; // 0x3aa74c
  local_m18 = x3; // 0x3aa750
  BARRIER = mem(THR, 0x38); // 0x3aa754
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3aa7b4
  }
  AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x3aa760
  local_m20 = x0; // 0x3aa764
  memSet(x0, 7, xzr); // 0x3aa768
  d0 = 4636174341401214976; // 0x3aa76c
  memSet(x0, 0xf, d0); // 0x3aa770
  memSet(x0, 0x17, xzr); // 0x3aa774
  d0 = 9218868437227405312; // 0x3aa778
  memSet(x0, 0x1f, d0); // 0x3aa77c
  x1 = local_m8; // 0x3aa780
  x2 = local_m10; // 0x3aa784
  x3 = local_m18; // 0x3aa788
  PagePartyLotteryNameList_userName() /* 0x3aa7bc */; // 0x3aa78c
  local_m8 = x0; // 0x3aa790
  AllocationStub_ConstrainedBox() /* 0x39646c */; // 0x3aa794
  x1 = local_m20; // 0x3aa798
  memSet(x0, 0xf, w1); // 0x3aa79c
  x1 = local_m8; // 0x3aa7a0
  memSet(x0, 0xb, w1); // 0x3aa7a4
  SP = FP; // 0x3aa7a8
  // frame: FP, LR, mem(SP), 0x10 // 0x3aa7ac
  return;
}

// PagePartyLotteryNameList_userName
// raw disassembly:
//  0x3aa7bc: stp FP, LR, [SP, #-0x10]!
//  0x3aa7c0: mov FP, SP
//  0x3aa7c4: sub SP, SP, #0x10
//  0x3aa7c8: stur x2, [FP, #-8]
//  0x3aa7cc: stur x3, [FP, #-0x10]
//  0x3aa7d0: bl #0x393bf8
//  0x3aa7d4: ldur x1, [FP, #-0x10]
//  0x3aa7d8: stur w1, [x0, #0xb]
//  0x3aa7dc: ldur x1, [FP, #-8]
//  0x3aa7e0: stur w1, [x0, #0x13]
//  0x3aa7e4: add x1, PP, #0xf, lsl #12
//  0x3aa7e8: ldr x1, [x1, #0x230]
//  0x3aa7ec: stur w1, [x0, #0x2b]
//  0x3aa7f0: mov x1, #2
//  0x3aa7f4: stur w1, [x0, #0x37]
//  0x3aa7f8: mov SP, FP
//  0x3aa7fc: ldp FP, LR, [SP], #0x10
//  0x3aa800: ret 
//
dynamic PagePartyLotteryNameList_userName() {
  dynamic FP;
  dynamic SP;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3aa7bc
  // frame: FP = SP // 0x3aa7c0
  // frame: SP = SP - 0x10 // 0x3aa7c4
  local_m8 = x2; // 0x3aa7c8
  local_m10 = x3; // 0x3aa7cc
  AllocationStub_Text() /* 0x393bf8 */; // 0x3aa7d0
  x1 = local_m10; // 0x3aa7d4
  memSet(x0, 0xb, w1); // 0x3aa7d8
  x1 = local_m8; // 0x3aa7dc
  memSet(x0, 0x13, w1); // 0x3aa7e0
  x1 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x3aa7e8
  memSet(x0, 0x2b, w1); // 0x3aa7ec
  x1 = 2; // 0x3aa7f0
  memSet(x0, 0x37, w1); // 0x3aa7f4
  SP = FP; // 0x3aa7f8
  // frame: FP, LR, mem(SP), 0x10 // 0x3aa7fc
  return;
}

// PagePartyLotteryNameList_ctor
// raw disassembly:
//  0x424130: stp FP, LR, [SP, #-0x10]!
//  0x424134: mov FP, SP
//  0x424138: sub SP, SP, #0x18
//  0x42413c: mov x0, x2
//  0x424140: stur x2, [FP, #-0x10]
//  0x424144: mov x2, x1
//  0x424148: stur x1, [FP, #-8]
//  0x42414c: ldr BARRIER, [THR, #0x38]
//  0x424150: cmp SP, BARRIER
//  0x424154: b.ls #0x42435c
//  0x424158: add x1, PP, #0xc, lsl #12
//  0x42415c: ldr x1, [x1, #0x968]
//  0x424160: ldr x4, [PP, #0x4c0]
//  0x424164: bl #0x3a1dcc
//  0x424168: ldur x1, [FP, #-8]
//  0x42416c: stur w0, [x1, #0xb]
//  0x424170: ldurb w16, [x1, #-1]
//  0x424174: ldurb w17, [x0, #-1]
//  0x424178: and BARRIER, x17, BARRIER, lsr #2
//  0x42417c: tst BARRIER, HEAP, lsr #32
//  0x424180: b.eq #0x424188
//  0x424184: bl #0x61e04c
//  0x424188: bl #0x31d844
//  0x42418c: mov x1, x0
//  0x424190: ldr x0, [PP, #0x6310]
//  0x424194: stur x1, [FP, #-0x18]
//  0x424198: stur w0, [x1, #0x27]
//  0x42419c: fmov d0, #1.00000000
//  0x4241a0: stur d0, [x1, #7]
//  0x4241a4: add x17, PP, #0x10, lsl #12
//  0x4241a8: ldr d1, [x17, #0xad0]
//  0x4241ac: stur d1, [x1, #0xf]
//  0x4241b0: add x17, PP, #0x10, lsl #12
//  0x4241b4: ldr d2, [x17, #0xad8]
//  0x4241b8: stur d2, [x1, #0x17]
//  0x4241bc: add x17, PP, #0x10, lsl #12
//  0x4241c0: ldr d3, [x17, #0xae0]
//  0x4241c4: stur d3, [x1, #0x1f]
//  0x4241c8: bl #0x31abec
//  0x4241cc: add x1, NULL, #0x20
//  0x4241d0: stur w1, [x0, #7]
//  0x4241d4: ldur x2, [FP, #-0x18]
//  0x4241d8: stur w2, [x0, #0xb]
//  0x4241dc: add x2, PP, #0xe, lsl #12
//  0x4241e0: ldr x2, [x2, #0xb50]
//  0x4241e4: stur w2, [x0, #0x1f]
//  0x4241e8: add x2, PP, #0x11, lsl #12
//  0x4241ec: ldr x2, [x2, #0x590]
//  0x4241f0: stur w2, [x0, #0x13]
//  0x4241f4: ldur x3, [FP, #-8]
//  0x4241f8: stur w0, [x3, #0x13]
//  0x4241fc: ldurb w16, [x3, #-1]
//  0x424200: ldurb w17, [x0, #-1]
//  0x424204: and BARRIER, x17, BARRIER, lsr #2
//  0x424208: tst BARRIER, HEAP, lsr #32
//  0x42420c: b.eq #0x424214
//  0x424210: bl #0x61e08c
//  0x424214: bl #0x31d844
//  0x424218: mov x1, x0
//  0x42421c: ldr x0, [PP, #0x6310]
//  0x424220: stur x1, [FP, #-0x18]
//  0x424224: stur w0, [x1, #0x27]
//  0x424228: fmov d0, #1.00000000
//  0x42422c: stur d0, [x1, #7]
//  0x424230: add x17, PP, #0x10, lsl #12
//  0x424234: ldr d1, [x17, #0xad0]
//  0x424238: stur d1, [x1, #0xf]
//  0x42423c: add x17, PP, #0x10, lsl #12
//  0x424240: ldr d2, [x17, #0xad8]
//  0x424244: stur d2, [x1, #0x17]
//  0x424248: add x17, PP, #0x10, lsl #12
//  0x42424c: ldr d3, [x17, #0xae0]
//  0x424250: stur d3, [x1, #0x1f]
//  0x424254: bl #0x31abec
//  0x424258: add x1, NULL, #0x20
//  0x42425c: stur w1, [x0, #7]
//  0x424260: ldur x2, [FP, #-0x18]
//  0x424264: stur w2, [x0, #0xb]
//  0x424268: add x2, PP, #0xf, lsl #12
//  0x42426c: ldr x2, [x2, #0x208]
//  0x424270: stur w2, [x0, #0x1f]
//  0x424274: add x3, PP, #0x11, lsl #12
//  0x424278: ldr x3, [x3, #0x590]
//  0x42427c: stur w3, [x0, #0x13]
//  0x424280: ldur x3, [FP, #-8]
//  0x424284: stur w0, [x3, #0x17]
//  0x424288: ldurb w16, [x3, #-1]
//  0x42428c: ldurb w17, [x0, #-1]
//  0x424290: and BARRIER, x17, BARRIER, lsr #2
//  0x424294: tst BARRIER, HEAP, lsr #32
//  0x424298: b.eq #0x4242a0
//  0x42429c: bl #0x61e08c
//  0x4242a0: bl #0x31d844
//  0x4242a4: mov x1, x0
//  0x4242a8: ldr x0, [PP, #0x6310]
//  0x4242ac: stur x1, [FP, #-0x18]
//  0x4242b0: stur w0, [x1, #0x27]
//  0x4242b4: fmov d0, #1.00000000
//  0x4242b8: stur d0, [x1, #7]
//  0x4242bc: add x17, PP, #0x10, lsl #12
//  0x4242c0: ldr d0, [x17, #0xad0]
//  0x4242c4: stur d0, [x1, #0xf]
//  0x4242c8: add x17, PP, #0x10, lsl #12
//  0x4242cc: ldr d0, [x17, #0xad8]
//  0x4242d0: stur d0, [x1, #0x17]
//  0x4242d4: add x17, PP, #0x10, lsl #12
//  0x4242d8: ldr d0, [x17, #0xae0]
//  0x4242dc: stur d0, [x1, #0x1f]
//  0x4242e0: bl #0x31abec
//  0x4242e4: add x1, NULL, #0x20
//  0x4242e8: stur w1, [x0, #7]
//  0x4242ec: ldur x1, [FP, #-0x18]
//  0x4242f0: stur w1, [x0, #0xb]
//  0x4242f4: add x1, PP, #0xf, lsl #12
//  0x4242f8: ldr x1, [x1, #0x208]
//  0x4242fc: stur w1, [x0, #0x1f]
//  0x424300: add x1, PP, #0x10, lsl #12
//  0x424304: ldr x1, [x1, #0x948]
//  0x424308: stur w1, [x0, #0x23]
//  0x42430c: ldur x1, [FP, #-8]
//  0x424310: stur w0, [x1, #0x1b]
//  0x424314: ldurb w16, [x1, #-1]
//  0x424318: ldurb w17, [x0, #-1]
//  0x42431c: and BARRIER, x17, BARRIER, lsr #2
//  0x424320: tst BARRIER, HEAP, lsr #32
//  0x424324: b.eq #0x42432c
//  0x424328: bl #0x61e04c
//  0x42432c: ldur x0, [FP, #-0x10]
//  0x424330: stur w0, [x1, #0xf]
//  0x424334: ldurb w16, [x1, #-1]
//  0x424338: ldurb w17, [x0, #-1]
//  0x42433c: and BARRIER, x17, BARRIER, lsr #2
//  0x424340: tst BARRIER, HEAP, lsr #32
//  0x424344: b.eq #0x42434c
//  0x424348: bl #0x61e04c
//  0x42434c: mov x0, NULL
//  0x424350: mov SP, FP
//  0x424354: ldp FP, LR, [SP], #0x10
//  0x424358: ret 
//  0x42435c: bl #0x61fa28
//  0x424360: b #0x424158
//
dynamic PagePartyLotteryNameList_ctor() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic d3;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x424130
  // frame: FP = SP // 0x424134
  // frame: SP = SP - 0x18 // 0x424138
  x0 = x2; // 0x42413c
  local_m10 = x2; // 0x424140
  x2 = x1; // 0x424144
  local_m8 = x1; // 0x424148
  BARRIER = mem(THR, 0x38); // 0x42414c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42435c
  }
  x1 = "virtual_party_lucky_pocket_receive_popup_receive_details" /* pp+0xc968 */; // 0x42415c
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x424160
  getString() /* 0x3a1dcc */; // 0x424164
  x1 = local_m8; // 0x424168
  memSet(x1, 0xb, w0); // 0x42416c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x424178
  w16 = mem(x1, -1); // 0x424170
  w17 = mem(x0, -1); // 0x424174
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x424170
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x424174
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x424184
  }
  AllocationStub_Color() /* 0x31d844 */; // 0x424188
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x424190
  x1 = x0; // 0x42418c
  local_m18 = x1; // 0x424194
  memSet(x1, 0x27, w0); // 0x424198
  d0 = 1.00000000 /* bits */; // 0x42419c
  memSet(x1, 7, d0); // 0x4241a0
  d1 = 4603614861448139603; // 0x4241a8
  x17 = PP + 0x10000; // 0x4241a4
  memSet(x1, 0xf, d1); // 0x4241ac
  d2 = 4598546104220471633; // 0x4241b4
  x17 = PP + 0x10000; // 0x4241b0
  memSet(x1, 0x17, d2); // 0x4241b8
  d3 = 4583569427812588572; // 0x4241c0
  x17 = PP + 0x10000; // 0x4241bc
  memSet(x1, 0x1f, d3); // 0x4241c4
  AllocationStub_TextStyle() /* 0x31abec */; // 0x4241c8
  x1 = NULL + 0x20; // 0x4241cc
  memSet(x0, 7, w1); // 0x4241d0
  x2 = local_m18; // 0x4241d4
  memSet(x0, 0xb, w2); // 0x4241d8
  x2 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x4241e0
  memSet(x0, 0x1f, w2); // 0x4241e4
  x2 = "Robot" /* pp+0x11590 */; // 0x4241ec
  memSet(x0, 0x13, w2); // 0x4241f0
  x3 = local_m8; // 0x4241f4
  memSet(x3, 0x13, w0); // 0x4241f8
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x424204
  w16 = mem(x3, -1); // 0x4241fc
  w17 = mem(x0, -1); // 0x424200
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4241fc
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x424200
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x424210
  }
  AllocationStub_Color() /* 0x31d844 */; // 0x424214
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x42421c
  x1 = x0; // 0x424218
  local_m18 = x1; // 0x424220
  memSet(x1, 0x27, w0); // 0x424224
  d0 = 1.00000000 /* bits */; // 0x424228
  memSet(x1, 7, d0); // 0x42422c
  d1 = 4603614861448139603; // 0x424234
  x17 = PP + 0x10000; // 0x424230
  memSet(x1, 0xf, d1); // 0x424238
  d2 = 4598546104220471633; // 0x424240
  x17 = PP + 0x10000; // 0x42423c
  memSet(x1, 0x17, d2); // 0x424244
  d3 = 4583569427812588572; // 0x42424c
  x17 = PP + 0x10000; // 0x424248
  memSet(x1, 0x1f, d3); // 0x424250
  AllocationStub_TextStyle() /* 0x31abec */; // 0x424254
  x1 = NULL + 0x20; // 0x424258
  memSet(x0, 7, w1); // 0x42425c
  x2 = local_m18; // 0x424260
  memSet(x0, 0xb, w2); // 0x424264
  x2 = mem((PP + 0xf000), 0x208) /* Double */; // 0x42426c
  memSet(x0, 0x1f, w2); // 0x424270
  x3 = "Robot" /* pp+0x11590 */; // 0x424278
  memSet(x0, 0x13, w3); // 0x42427c
  x3 = local_m8; // 0x424280
  memSet(x3, 0x17, w0); // 0x424284
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x424290
  w16 = mem(x3, -1); // 0x424288
  w17 = mem(x0, -1); // 0x42428c
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x424288
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x42428c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x42429c
  }
  AllocationStub_Color() /* 0x31d844 */; // 0x4242a0
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x4242a8
  x1 = x0; // 0x4242a4
  local_m18 = x1; // 0x4242ac
  memSet(x1, 0x27, w0); // 0x4242b0
  d0 = 1.00000000 /* bits */; // 0x4242b4
  memSet(x1, 7, d0); // 0x4242b8
  d0 = 4603614861448139603; // 0x4242c0
  x17 = PP + 0x10000; // 0x4242bc
  memSet(x1, 0xf, d0); // 0x4242c4
  d0 = 4598546104220471633; // 0x4242cc
  x17 = PP + 0x10000; // 0x4242c8
  memSet(x1, 0x17, d0); // 0x4242d0
  d0 = 4583569427812588572; // 0x4242d8
  x17 = PP + 0x10000; // 0x4242d4
  memSet(x1, 0x1f, d0); // 0x4242dc
  AllocationStub_TextStyle() /* 0x31abec */; // 0x4242e0
  x1 = NULL + 0x20; // 0x4242e4
  memSet(x0, 7, w1); // 0x4242e8
  x1 = local_m18; // 0x4242ec
  memSet(x0, 0xb, w1); // 0x4242f0
  x1 = mem((PP + 0xf000), 0x208) /* Double */; // 0x4242f8
  memSet(x0, 0x1f, w1); // 0x4242fc
  x1 = mem((PP + 0x10000), 0x948) /* Obj!FontWeight@12028  */; // 0x424304
  memSet(x0, 0x23, w1); // 0x424308
  x1 = local_m8; // 0x42430c
  memSet(x1, 0x1b, w0); // 0x424310
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x42431c
  w16 = mem(x1, -1); // 0x424314
  w17 = mem(x0, -1); // 0x424318
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x424314
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x424318
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x424328
  }
  x0 = local_m10; // 0x42432c
  memSet(x1, 0xf, w0); // 0x424330
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x42433c
  w16 = mem(x1, -1); // 0x424334
  w17 = mem(x0, -1); // 0x424338
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x424334
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x424338
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x424348
  }
  SP = FP; // 0x424350
  x0 = NULL; // 0x42434c
  // frame: FP, LR, mem(SP), 0x10 // 0x424354
  return;
}

// PagePartyLuckyBagState_build
// raw disassembly:
//  0x423c40: stp FP, LR, [SP, #-0x10]!
//  0x423c44: mov FP, SP
//  0x423c48: sub SP, SP, #0x18
//  0x423c4c: stur x1, [FP, #-8]
//  0x423c50: ldr BARRIER, [THR, #0x38]
//  0x423c54: cmp SP, BARRIER
//  0x423c58: b.ls #0x423e18
//  0x423c5c: mov x1, #1
//  0x423c60: bl #0x61e890
//  0x423c64: mov x1, x0
//  0x423c68: ldur x0, [FP, #-8]
//  0x423c6c: stur w0, [x1, #0xf]
//  0x423c70: ldur w3, [x0, #0x37]
//  0x423c74: add x3, x3, HEAP, lsl #32
//  0x423c78: mov x2, x1
//  0x423c7c: stur x3, [FP, #-0x10]
//  0x423c80: add x1, PP, #0x11, lsl #12
//  0x423c84: ldr x1, [x1, #0x570]
//  0x423c88: bl #0x61ec54
//  0x423c8c: add x1, PP, #0x11, lsl #12
//  0x423c90: ldr x1, [x1, #0x578]
//  0x423c94: stur x0, [FP, #-8]
//  0x423c98: bl #0x3b81c4
//  0x423c9c: mov x2, x0
//  0x423ca0: ldur x0, [FP, #-8]
//  0x423ca4: stur x2, [FP, #-0x18]
//  0x423ca8: stur w0, [x2, #0x1b]
//  0x423cac: add x1, PP, #0x11, lsl #12
//  0x423cb0: ldr x1, [x1, #0x578]
//  0x423cb4: bl #0x41a408
//  0x423cb8: mov x1, x0
//  0x423cbc: ldur x0, [FP, #-0x10]
//  0x423cc0: stur w0, [x1, #0xb]
//  0x423cc4: add x0, PP, #0xc, lsl #12
//  0x423cc8: ldr x0, [x0, #0x2f0]
//  0x423ccc: stur w0, [x1, #0x13]
//  0x423cd0: ldur x0, [FP, #-0x18]
//  0x423cd4: stur w1, [x0, #0x13]
//  0x423cd8: mov x1, x0
//  0x423cdc: bl #0x60bd34
//  0x423ce0: mov x1, NULL
//  0x423ce4: mov x2, #2
//  0x423ce8: bl #0x61f920
//  0x423cec: mov x2, x0
//  0x423cf0: ldur x0, [FP, #-0x18]
//  0x423cf4: stur x2, [FP, #-8]
//  0x423cf8: stur w0, [x2, #0xf]
//  0x423cfc: ldr x1, [PP, #0x5c58]
//  0x423d00: bl #0x61e854
//  0x423d04: mov x1, x0
//  0x423d08: ldur x0, [FP, #-8]
//  0x423d0c: stur x1, [FP, #-0x10]
//  0x423d10: stur w0, [x1, #0xf]
//  0x423d14: mov x0, #2
//  0x423d18: stur w0, [x1, #0xb]
//  0x423d1c: bl #0x39310c
//  0x423d20: mov x1, x0
//  0x423d24: add x0, PP, #0xa, lsl #12
//  0x423d28: ldr x0, [x0, #0x858]
//  0x423d2c: stur x1, [FP, #-8]
//  0x423d30: stur w0, [x1, #0xf]
//  0x423d34: add x2, PP, #0xe, lsl #12
//  0x423d38: ldr x2, [x2, #0xae0]
//  0x423d3c: stur w2, [x1, #0x13]
//  0x423d40: add x2, PP, #0xe, lsl #12
//  0x423d44: ldr x2, [x2, #0xae8]
//  0x423d48: stur w2, [x1, #0x17]
//  0x423d4c: add x2, PP, #0xe, lsl #12
//  0x423d50: ldr x2, [x2, #0xb60]
//  0x423d54: stur w2, [x1, #0x1b]
//  0x423d58: add x2, PP, #0xe, lsl #12
//  0x423d5c: ldr x2, [x2, #0xaf8]
//  0x423d60: stur w2, [x1, #0x23]
//  0x423d64: add x2, PP, #0xa, lsl #12
//  0x423d68: ldr x2, [x2, #0xa8]
//  0x423d6c: stur w2, [x1, #0x2b]
//  0x423d70: stur xzr, [x1, #0x2f]
//  0x423d74: ldur x2, [FP, #-0x10]
//  0x423d78: stur w2, [x1, #0xb]
//  0x423d7c: bl #0x3a1db4
//  0x423d80: mov x1, x0
//  0x423d84: add x0, PP, #0xa, lsl #12
//  0x423d88: ldr x0, [x0, #0x858]
//  0x423d8c: stur x1, [FP, #-0x10]
//  0x423d90: stur w0, [x1, #0xb]
//  0x423d94: add x0, NULL, #0x30
//  0x423d98: stur w0, [x1, #0xf]
//  0x423d9c: bl #0x41b0bc
//  0x423da0: mov x1, x0
//  0x423da4: ldur x0, [FP, #-0x10]
//  0x423da8: stur w1, [x0, #0x1f]
//  0x423dac: ldur x1, [FP, #-8]
//  0x423db0: stur w1, [x0, #0x23]
//  0x423db4: ldr x1, [PP, #0x77d8]
//  0x423db8: stur w1, [x0, #0x27]
//  0x423dbc: add x1, PP, #0xe, lsl #12
//  0x423dc0: ldr x1, [x1, #0xf10]
//  0x423dc4: stur w1, [x0, #0x2b]
//  0x423dc8: add x1, PP, #0xf, lsl #12
//  0x423dcc: ldr x1, [x1, #0x140]
//  0x423dd0: stur w1, [x0, #0x2f]
//  0x423dd4: add x1, PP, #0xf, lsl #12
//  0x423dd8: ldr x1, [x1, #0x2f8]
//  0x423ddc: stur w1, [x0, #0x37]
//  0x423de0: bl #0x391c0c
//  0x423de4: mov x1, x0
//  0x423de8: add x0, PP, #0x11, lsl #12
//  0x423dec: ldr x0, [x0, #0x580]
//  0x423df0: stur x1, [FP, #-8]
//  0x423df4: stur w0, [x1, #0xf]
//  0x423df8: ldur x0, [FP, #-0x10]
//  0x423dfc: stur w0, [x1, #0xb]
//  0x423e00: bl #0x3b91cc
//  0x423e04: ldur x1, [FP, #-8]
//  0x423e08: stur w1, [x0, #0xb]
//  0x423e0c: mov SP, FP
//  0x423e10: ldp FP, LR, [SP], #0x10
//  0x423e14: ret 
//  0x423e18: bl #0x61fa28
//  0x423e1c: b #0x423c5c
//
dynamic PagePartyLuckyBagState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x423c40
  // frame: FP = SP // 0x423c44
  // frame: SP = SP - 0x18 // 0x423c48
  local_m8 = x1; // 0x423c4c
  BARRIER = mem(THR, 0x38); // 0x423c50
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x423e18
  }
  x1 = 1; // 0x423c5c
  sub_0x61e890(); // 0x423c60
  x0 = local_m8; // 0x423c68
  x1 = x0; // 0x423c64
  memSet(x1, 0xf, w0); // 0x423c6c
  w3 = mem(x0, 0x37); // 0x423c70
  x2 = x1; // 0x423c78
  x3 = ((mem(x0, 0x37)) & 0xffffffff) + (HEAP << 32); // 0x423c74
  local_m10 = x3; // 0x423c7c
  x1 = mem((PP + 0x11000), 0x570) /* Function */; // 0x423c84
  AllocationStub__Closure() /* 0x61ec54 */; // 0x423c88
  x1 = mem((PP + 0x11000), 0x578) /* TypeArguments */; // 0x423c90
  local_m8 = x0; // 0x423c94
  AllocationStub_ChangeNotifierProvider() /* 0x3b81c4 */; // 0x423c98
  x0 = local_m8; // 0x423ca0
  x2 = x0; // 0x423c9c
  local_m18 = x2; // 0x423ca4
  memSet(x2, 0x1b, w0); // 0x423ca8
  x1 = mem((PP + 0x11000), 0x578) /* TypeArguments */; // 0x423cb0
  AllocationStub__ValueInheritedProvider() /* 0x41a408 */; // 0x423cb4
  x0 = local_m10; // 0x423cbc
  x1 = x0; // 0x423cb8
  memSet(x1, 0xb, w0); // 0x423cc0
  x0 = mem((PP + 0xc000), 0x2f0) /* Closure */; // 0x423cc8
  memSet(x1, 0x13, w0); // 0x423ccc
  x0 = local_m18; // 0x423cd0
  memSet(x0, 0x13, w1); // 0x423cd4
  x1 = x0; // 0x423cd8
  int_kNull() /* 0x60bd34 */; // 0x423cdc
  x1 = NULL; // 0x423ce0
  x2 = 2; // 0x423ce4
  sub_0x61f920(); // 0x423ce8
  x0 = local_m18; // 0x423cf0
  x2 = x0; // 0x423cec
  local_m8 = x2; // 0x423cf4
  memSet(x2, 0xf, w0); // 0x423cf8
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x423cfc
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x423d00
  x0 = local_m8; // 0x423d08
  x1 = x0; // 0x423d04
  local_m10 = x1; // 0x423d0c
  memSet(x1, 0xf, w0); // 0x423d10
  x0 = 2; // 0x423d14
  memSet(x1, 0xb, w0); // 0x423d18
  AllocationStub_Column() /* 0x39310c */; // 0x423d1c
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x423d28
  x1 = x0; // 0x423d20
  local_m8 = x1; // 0x423d2c
  memSet(x1, 0xf, w0); // 0x423d30
  x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x423d38
  memSet(x1, 0x13, w2); // 0x423d3c
  x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x423d44
  memSet(x1, 0x17, w2); // 0x423d48
  x2 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x423d50
  memSet(x1, 0x1b, w2); // 0x423d54
  x2 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x423d5c
  memSet(x1, 0x23, w2); // 0x423d60
  x2 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x423d68
  memSet(x1, 0x2b, w2); // 0x423d6c
  memSet(x1, 0x2f, xzr); // 0x423d70
  x2 = local_m10; // 0x423d74
  memSet(x1, 0xb, w2); // 0x423d78
  AllocationStub_SingleChildScrollView() /* 0x3a1db4 */; // 0x423d7c
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x423d88
  x1 = x0; // 0x423d80
  local_m10 = x1; // 0x423d8c
  memSet(x1, 0xb, w0); // 0x423d90
  x0 = NULL + 0x30; // 0x423d94
  memSet(x1, 0xf, w0); // 0x423d98
  AllocationStub_ClampingScrollPhysics() /* 0x41b0bc */; // 0x423d9c
  x0 = local_m10; // 0x423da4
  x1 = x0; // 0x423da0
  memSet(x0, 0x1f, w1); // 0x423da8
  x1 = local_m8; // 0x423dac
  memSet(x0, 0x23, w1); // 0x423db0
  x1 = mem(PP, 0x77d8) /* Obj!DragStartBehavior@122d8  */; // 0x423db4
  memSet(x0, 0x27, w1); // 0x423db8
  x1 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x423dc0
  memSet(x0, 0x2b, w1); // 0x423dc4
  x1 = mem((PP + 0xf000), 0x140) /* Obj!HitTestBehavior@12262  */; // 0x423dcc
  memSet(x0, 0x2f, w1); // 0x423dd0
  x1 = mem((PP + 0xf000), 0x2f8); // 0x423dd8
  memSet(x0, 0x37, w1); // 0x423ddc
  AllocationStub_Padding() /* 0x391c0c */; // 0x423de0
  x0 = mem((PP + 0x11000), 0x580) /* Obj!EdgeInsets@11bac  */; // 0x423dec
  x1 = x0; // 0x423de4
  local_m8 = x1; // 0x423df0
  memSet(x1, 0xf, w0); // 0x423df4
  x0 = local_m10; // 0x423df8
  memSet(x1, 0xb, w0); // 0x423dfc
  AllocationStub_PartyPocketDialog() /* 0x3b91cc */; // 0x423e00
  x1 = local_m8; // 0x423e04
  memSet(x0, 0xb, w1); // 0x423e08
  SP = FP; // 0x423e0c
  // frame: FP, LR, mem(SP), 0x10 // 0x423e10
  return;
}

// PagePartyLuckyBagState_anon_closure
// raw disassembly:
//  0x423e20: stp FP, LR, [SP, #-0x10]!
//  0x423e24: mov FP, SP
//  0x423e28: sub SP, SP, #8
//  0x423e2c: ldr x0, [FP, #0x20]
//  0x423e30: ldur w2, [x0, #0x17]
//  0x423e34: add x2, x2, HEAP, lsl #32
//  0x423e38: add x1, PP, #0x11, lsl #12
//  0x423e3c: ldr x1, [x1, #0x588]
//  0x423e40: bl #0x61ec54
//  0x423e44: add x1, PP, #0x11, lsl #12
//  0x423e48: ldr x1, [x1, #0x578]
//  0x423e4c: stur x0, [FP, #-8]
//  0x423e50: bl #0x41a414
//  0x423e54: ldur x1, [FP, #-8]
//  0x423e58: stur w1, [x0, #0x13]
//  0x423e5c: mov SP, FP
//  0x423e60: ldp FP, LR, [SP], #0x10
//  0x423e64: ret 
//
dynamic PagePartyLuckyBagState_anon_closure() {
  dynamic FP;
  dynamic SP;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x423e20
  // frame: FP = SP // 0x423e24
  // frame: SP = SP - 8 // 0x423e28
  w2 = mem((local_20), 0x17); // 0x423e30
  x0 = local_20; // 0x423e2c
  x1 = mem((PP + 0x11000), 0x588) /* Function */; // 0x423e3c
  x2 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x423e34
  AllocationStub__Closure() /* 0x61ec54 */; // 0x423e40
  x1 = mem((PP + 0x11000), 0x578) /* TypeArguments */; // 0x423e48
  local_m8 = x0; // 0x423e4c
  AllocationStub_Consumer() /* 0x41a414 */; // 0x423e50
  x1 = local_m8; // 0x423e54
  memSet(x0, 0x13, w1); // 0x423e58
  SP = FP; // 0x423e5c
  // frame: FP, LR, mem(SP), 0x10 // 0x423e60
  return;
}

// PagePartyLuckyBagState_anon_closure_2
// raw disassembly:
//  0x423e68: stp FP, LR, [SP, #-0x10]!
//  0x423e6c: mov FP, SP
//  0x423e70: sub SP, SP, #0x38
//  0x423e74: ldr x0, [FP, #0x28]
//  0x423e78: ldur w1, [x0, #0x17]
//  0x423e7c: add x1, x1, HEAP, lsl #32
//  0x423e80: stur x1, [FP, #-0x28]
//  0x423e84: ldr BARRIER, [THR, #0x38]
//  0x423e88: cmp SP, BARRIER
//  0x423e8c: b.ls #0x424128
//  0x423e90: ldur w0, [x1, #0xf]
//  0x423e94: add x0, x0, HEAP, lsl #32
//  0x423e98: ldur w2, [x0, #0x2f]
//  0x423e9c: add x2, x2, HEAP, lsl #32
//  0x423ea0: stur x2, [FP, #-0x20]
//  0x423ea4: tbz w2, #4, #0x423eb4
//  0x423ea8: ldur w3, [x0, #0x33]
//  0x423eac: add x3, x3, HEAP, lsl #32
//  0x423eb0: tbz w3, #4, #0x423f38
//  0x423eb4: ldur w1, [x0, #0x1f]
//  0x423eb8: add x1, x1, HEAP, lsl #32
//  0x423ebc: cmp w1, w22
//  0x423ec0: b.ne #0x423ec8
//  0x423ec4: ldr x1, [PP, #0x148]
//  0x423ec8: stur x1, [FP, #-0x18]
//  0x423ecc: ldur w3, [x0, #0x2b]
//  0x423ed0: add x3, x3, HEAP, lsl #32
//  0x423ed4: cmp w3, w22
//  0x423ed8: b.ne #0x423ee0
//  0x423edc: ldr x3, [PP, #0x148]
//  0x423ee0: stur x3, [FP, #-0x10]
//  0x423ee4: ldur w4, [x0, #0x27]
//  0x423ee8: add x4, x4, HEAP, lsl #32
//  0x423eec: cmp w4, w22
//  0x423ef0: b.ne #0x423efc
//  0x423ef4: ldr x0, [PP, #0x148]
//  0x423ef8: b #0x423f00
//  0x423efc: mov x0, x4
//  0x423f00: stur x0, [FP, #-8]
//  0x423f04: bl #0x424524
//  0x423f08: mov x1, x0
//  0x423f0c: ldur x0, [FP, #-0x20]
//  0x423f10: stur w0, [x1, #0xf]
//  0x423f14: ldur x0, [FP, #-0x18]
//  0x423f18: stur w0, [x1, #0xb]
//  0x423f1c: ldur x0, [FP, #-0x10]
//  0x423f20: stur w0, [x1, #0x13]
//  0x423f24: ldur x0, [FP, #-8]
//  0x423f28: stur w0, [x1, #0x17]
//  0x423f2c: fmov d0, #13.00000000
//  0x423f30: stur d0, [x1, #0x1b]
//  0x423f34: b #0x42401c
//  0x423f38: ldur w2, [x0, #0x17]
//  0x423f3c: add x2, x2, HEAP, lsl #32
//  0x423f40: ldur x0, [x2, #-1]
//  0x423f44: ubfx x0, x0, #0xc, #0x14
//  0x423f48: str x2, [SP]
//  0x423f4c: ldr x4, [PP, #0x3a8]
//  0x423f50: mov x17, #0x3e07
//  0x423f54: add LR, x0, x17
//  0x423f58: ldr LR, [x21, LR, lsl #3]
//  0x423f5c: blr LR
//  0x423f60: mov x1, x0
//  0x423f64: ldur x0, [FP, #-0x28]
//  0x423f68: stur x1, [FP, #-0x30]
//  0x423f6c: ldur w2, [x0, #0xf]
//  0x423f70: add x2, x2, HEAP, lsl #32
//  0x423f74: ldur w0, [x2, #0x1f]
//  0x423f78: add x0, x0, HEAP, lsl #32
//  0x423f7c: cmp w0, w22
//  0x423f80: b.ne #0x423f8c
//  0x423f84: ldr x3, [PP, #0x148]
//  0x423f88: b #0x423f90
//  0x423f8c: mov x3, x0
//  0x423f90: stur x3, [FP, #-0x20]
//  0x423f94: ldur w0, [x2, #0x23]
//  0x423f98: add x0, x0, HEAP, lsl #32
//  0x423f9c: cmp w0, w22
//  0x423fa0: b.ne #0x423fac
//  0x423fa4: ldr x7, [PP, #0x148]
//  0x423fa8: b #0x423fb0
//  0x423fac: mov x7, x0
//  0x423fb0: stur x7, [FP, #-0x18]
//  0x423fb4: ldur w0, [x2, #0x2b]
//  0x423fb8: add x0, x0, HEAP, lsl #32
//  0x423fbc: cmp w0, w22
//  0x423fc0: b.ne #0x423fcc
//  0x423fc4: ldr x5, [PP, #0x148]
//  0x423fc8: b #0x423fd0
//  0x423fcc: mov x5, x0
//  0x423fd0: stur x5, [FP, #-0x10]
//  0x423fd4: ldur w0, [x2, #0x27]
//  0x423fd8: add x0, x0, HEAP, lsl #32
//  0x423fdc: cmp w0, w22
//  0x423fe0: b.ne #0x423fec
//  0x423fe4: ldr x6, [PP, #0x148]
//  0x423fe8: b #0x423ff0
//  0x423fec: mov x6, x0
//  0x423ff0: stur x6, [FP, #-8]
//  0x423ff4: bl #0x424518
//  0x423ff8: mov x1, x0
//  0x423ffc: ldur x2, [FP, #-0x30]
//  0x424000: ldur x3, [FP, #-0x20]
//  0x424004: ldur x5, [FP, #-0x10]
//  0x424008: ldur x6, [FP, #-8]
//  0x42400c: ldur x7, [FP, #-0x18]
//  0x424010: stur x0, [FP, #-8]
//  0x424014: bl #0x424370
//  0x424018: ldur x1, [FP, #-8]
//  0x42401c: ldr x0, [FP, #0x18]
//  0x424020: stur x1, [FP, #-0x10]
//  0x424024: ldur w2, [x0, #0x33]
//  0x424028: add x2, x2, HEAP, lsl #32
//  0x42402c: stur x2, [FP, #-8]
//  0x424030: ldur w0, [x2, #0xb]
//  0x424034: sbfx x3, x0, #1, #0x1f
//  0x424038: cmp x3, #0
//  0x42403c: b.le #0x42405c
//  0x424040: bl #0x424364
//  0x424044: mov x1, x0
//  0x424048: ldur x2, [FP, #-8]
//  0x42404c: stur x0, [FP, #-8]
//  0x424050: bl #0x424130
//  0x424054: ldur x4, [FP, #-8]
//  0x424058: b #0x424074
//  0x42405c: bl #0x391a04
//  0x424060: mov x1, x0
//  0x424064: stur x0, [FP, #-8]
//  0x424068: ldr x4, [PP, #0x4c0]
//  0x42406c: bl #0x391490
//  0x424070: ldur x4, [FP, #-8]
//  0x424074: ldur x0, [FP, #-0x10]
//  0x424078: mov x3, #4
//  0x42407c: mov x2, x3
//  0x424080: stur x4, [FP, #-8]
//  0x424084: mov x1, NULL
//  0x424088: bl #0x61f920
//  0x42408c: mov x2, x0
//  0x424090: ldur x0, [FP, #-0x10]
//  0x424094: stur x2, [FP, #-0x18]
//  0x424098: stur w0, [x2, #0xf]
//  0x42409c: ldur x0, [FP, #-8]
//  0x4240a0: stur w0, [x2, #0x13]
//  0x4240a4: ldr x1, [PP, #0x5c58]
//  0x4240a8: bl #0x61e854
//  0x4240ac: mov x1, x0
//  0x4240b0: ldur x0, [FP, #-0x18]
//  0x4240b4: stur x1, [FP, #-8]
//  0x4240b8: stur w0, [x1, #0xf]
//  0x4240bc: mov x0, #4
//  0x4240c0: stur w0, [x1, #0xb]
//  0x4240c4: bl #0x39310c
//  0x4240c8: add x1, PP, #0xa, lsl #12
//  0x4240cc: ldr x1, [x1, #0x858]
//  0x4240d0: stur w1, [x0, #0xf]
//  0x4240d4: add x1, PP, #0xe, lsl #12
//  0x4240d8: ldr x1, [x1, #0xae0]
//  0x4240dc: stur w1, [x0, #0x13]
//  0x4240e0: add x1, PP, #0xe, lsl #12
//  0x4240e4: ldr x1, [x1, #0xae8]
//  0x4240e8: stur w1, [x0, #0x17]
//  0x4240ec: add x1, PP, #0xe, lsl #12
//  0x4240f0: ldr x1, [x1, #0xb60]
//  0x4240f4: stur w1, [x0, #0x1b]
//  0x4240f8: add x1, PP, #0xe, lsl #12
//  0x4240fc: ldr x1, [x1, #0xaf8]
//  0x424100: stur w1, [x0, #0x23]
//  0x424104: add x1, PP, #0xa, lsl #12
//  0x424108: ldr x1, [x1, #0xa8]
//  0x42410c: stur w1, [x0, #0x2b]
//  0x424110: stur xzr, [x0, #0x2f]
//  0x424114: ldur x1, [FP, #-8]
//  0x424118: stur w1, [x0, #0xb]
//  0x42411c: mov SP, FP
//  0x424120: ldp FP, LR, [SP], #0x10
//  0x424124: ret 
//  0x424128: bl #0x61fa28
//  0x42412c: b #0x423e90
//
dynamic PagePartyLuckyBagState_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
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
  dynamic x6;
  dynamic x7;
  // frame: FP, LR, mem(SP, -0x10)! // 0x423e68
  // frame: FP = SP // 0x423e6c
  // frame: SP = SP - 0x38 // 0x423e70
  w1 = mem((local_28), 0x17); // 0x423e78
  x0 = local_28; // 0x423e74
  x1 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x423e7c
  local_m28 = x1; // 0x423e80
  BARRIER = mem(THR, 0x38); // 0x423e84
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x424128
  }
  w2 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x2f); // 0x423e98
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x423e94
  x2 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x2f)) & 0xffffffff) + (HEAP << 32); // 0x423e9c
  local_m20 = x2; // 0x423ea0
  if (x2 & (1 << 4) == 0) {
  } else {
    x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x423eac
    if (x3 & (1 << 4) == 0) {
      x0 = ((mem(((w2 & 0xffffffff) + (HEAP << 32)), -1)) >> 12) & 0xfffff; // 0x423f44
      x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x423f3c
      local_0 = x2; // 0x423f48
      LR = mem(x21, ((x0 + x17) << 3)); // 0x423f58
      x17 = 15879; // 0x423f50
      x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x423f4c
      callIndirect(LR); // 0x423f5c
      x0 = local_m28; // 0x423f64
      x1 = x0; // 0x423f60
      local_m30 = x1; // 0x423f68
      w0 = mem((((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x1f); // 0x423f74
      w2 = mem(x0, 0xf); // 0x423f6c
      x0 = ((mem((((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x1f)) & 0xffffffff) + (HEAP << 32); // 0x423f78
      x2 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x423f70
      if (w0 != w22) {
        x3 = x0; // 0x423f8c
      } else {
        x3 = "" /* pp+0x148 */; // 0x423f84
      }
      local_m20 = x3; // 0x423f90
      w0 = mem(x2, 0x23); // 0x423f94
      x0 = ((mem(x2, 0x23)) & 0xffffffff) + (HEAP << 32); // 0x423f98
      if (w0 != w22) {
        x7 = x0; // 0x423fac
      } else {
        x7 = "" /* pp+0x148 */; // 0x423fa4
      }
      local_m18 = x7; // 0x423fb0
      w0 = mem(x2, 0x2b); // 0x423fb4
      x0 = ((mem(x2, 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x423fb8
      if (w0 != w22) {
        x5 = x0; // 0x423fcc
      } else {
        x5 = "" /* pp+0x148 */; // 0x423fc4
      }
      local_m10 = x5; // 0x423fd0
      w0 = mem(x2, 0x27); // 0x423fd4
      x0 = ((mem(x2, 0x27)) & 0xffffffff) + (HEAP << 32); // 0x423fd8
      if (w0 != w22) {
        x6 = x0; // 0x423fec
      } else {
        x6 = "" /* pp+0x148 */; // 0x423fe4
      }
      local_m8 = x6; // 0x423ff0
      AllocationStub_PagePartyLotteryWinnerInfo() /* 0x424518 */; // 0x423ff4
      x1 = x0; // 0x423ff8
      x2 = local_m30; // 0x423ffc
      x3 = local_m20; // 0x424000
      x5 = local_m10; // 0x424004
      x6 = local_m8; // 0x424008
      x7 = local_m18; // 0x42400c
      local_m8 = x0; // 0x424010
      PagePartyLotteryWinnerInfo_ctor() /* 0x424370 */; // 0x424014
      x1 = local_m8; // 0x424018
    } else {
      x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x423eb8
      if (w1 != w22) {
      } else {
        x1 = "" /* pp+0x148 */; // 0x423ec4
      }
      local_m18 = x1; // 0x423ec8
      w3 = mem(x0, 0x2b); // 0x423ecc
      x3 = ((mem(x0, 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x423ed0
      if (w3 != w22) {
      } else {
        x3 = "" /* pp+0x148 */; // 0x423edc
      }
      local_m10 = x3; // 0x423ee0
      w4 = mem(x0, 0x27); // 0x423ee4
      x4 = ((mem(x0, 0x27)) & 0xffffffff) + (HEAP << 32); // 0x423ee8
      if (w4 != w22) {
        x0 = x4; // 0x423efc
      } else {
        x0 = "" /* pp+0x148 */; // 0x423ef4
      }
      local_m8 = x0; // 0x423f00
      AllocationStub_PagePartyLotteryPityInfo() /* 0x424524 */; // 0x423f04
      x0 = local_m20; // 0x423f0c
      x1 = x0; // 0x423f08
      memSet(x1, 0xf, w0); // 0x423f10
      x0 = local_m18; // 0x423f14
      memSet(x1, 0xb, w0); // 0x423f18
      x0 = local_m10; // 0x423f1c
      memSet(x1, 0x13, w0); // 0x423f20
      x0 = local_m8; // 0x423f24
      memSet(x1, 0x17, w0); // 0x423f28
      d0 = 13.00000000 /* bits */; // 0x423f2c
      memSet(x1, 0x1b, d0); // 0x423f30
    }
    x0 = local_18; // 0x42401c
    local_m10 = x1; // 0x424020
    w2 = mem(x0, 0x33); // 0x424024
    x2 = ((mem(x0, 0x33)) & 0xffffffff) + (HEAP << 32); // 0x424028
    local_m8 = x2; // 0x42402c
    w0 = mem(x2, 0xb); // 0x424030
    x0 = (mem(x2, 0xb)) & 0xffffffff; // 0x424030
    x3 = (((mem(x2, 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x424034
    if (x3 <= 0) {
      AllocationStub_Container() /* 0x391a04 */; // 0x42405c
      x1 = x0; // 0x424060
      local_m8 = x0; // 0x424064
      x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x424068
      Container_ctor() /* 0x391490 */; // 0x42406c
      x4 = local_m8; // 0x424070
    } else {
      AllocationStub_PagePartyLotteryNameList() /* 0x424364 */; // 0x424040
      x1 = x0; // 0x424044
      x2 = local_m8; // 0x424048
      local_m8 = x0; // 0x42404c
      PagePartyLotteryNameList_ctor() /* 0x424130 */; // 0x424050
      x4 = local_m8; // 0x424054
    }
    x0 = local_m10; // 0x424074
    x2 = 4; // 0x42407c
    x3 = 4; // 0x424078
    local_m8 = x4; // 0x424080
    x1 = NULL; // 0x424084
    sub_0x61f920(); // 0x424088
    x0 = local_m10; // 0x424090
    x2 = x0; // 0x42408c
    local_m18 = x2; // 0x424094
    memSet(x2, 0xf, w0); // 0x424098
    x0 = local_m8; // 0x42409c
    memSet(x2, 0x13, w0); // 0x4240a0
    x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x4240a4
    AllocationStub__GrowableList() /* 0x61e854 */; // 0x4240a8
    x0 = local_m18; // 0x4240b0
    x1 = x0; // 0x4240ac
    local_m8 = x1; // 0x4240b4
    memSet(x1, 0xf, w0); // 0x4240b8
    x0 = 4; // 0x4240bc
    memSet(x1, 0xb, w0); // 0x4240c0
    AllocationStub_Column() /* 0x39310c */; // 0x4240c4
    x1 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x4240cc
    memSet(x0, 0xf, w1); // 0x4240d0
    x1 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x4240d8
    memSet(x0, 0x13, w1); // 0x4240dc
    x1 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x4240e4
    memSet(x0, 0x17, w1); // 0x4240e8
    x1 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x4240f0
    memSet(x0, 0x1b, w1); // 0x4240f4
    x1 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x4240fc
    memSet(x0, 0x23, w1); // 0x424100
    x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x424108
    memSet(x0, 0x2b, w1); // 0x42410c
    memSet(x0, 0x2f, xzr); // 0x424110
    x1 = local_m8; // 0x424114
    memSet(x0, 0xb, w1); // 0x424118
    SP = FP; // 0x42411c
    // frame: FP, LR, mem(SP), 0x10 // 0x424120
    return;
  }
}

// PagePartyLuckyBagState_onPageShow
// raw disassembly:
//  0x4a9ef4: stp FP, LR, [SP, #-0x10]!
//  0x4a9ef8: mov FP, SP
//  0x4a9efc: sub SP, SP, #8
//  0x4a9f00: mov x0, x1
//  0x4a9f04: stur x1, [FP, #-8]
//  0x4a9f08: ldr BARRIER, [THR, #0x38]
//  0x4a9f0c: cmp SP, BARRIER
//  0x4a9f10: b.ls #0x4a9f84
//  0x4a9f14: mov x1, x0
//  0x4a9f18: bl #0x4aa6c4
//  0x4a9f1c: ldur x0, [FP, #-8]
//  0x4a9f20: ldur w1, [x0, #0x33]
//  0x4a9f24: add x1, x1, HEAP, lsl #32
//  0x4a9f28: tbnz w1, #4, #0x4a9f40
//  0x4a9f2c: add x1, PP, #0x17, lsl #12
//  0x4a9f30: ldr x1, [x1, #0xc20]
//  0x4a9f34: ldr x4, [PP, #0x4c0]
//  0x4a9f38: bl #0x4a9e38
//  0x4a9f3c: b #0x4a9f74
//  0x4a9f40: ldur w1, [x0, #0x2f]
//  0x4a9f44: add x1, x1, HEAP, lsl #32
//  0x4a9f48: tbz w1, #4, #0x4a9f60
//  0x4a9f4c: add x1, PP, #0x17, lsl #12
//  0x4a9f50: ldr x1, [x1, #0xc28]
//  0x4a9f54: ldr x4, [PP, #0x4c0]
//  0x4a9f58: bl #0x4a9e38
//  0x4a9f5c: b #0x4a9f74
//  0x4a9f60: tbnz w1, #4, #0x4a9f74
//  0x4a9f64: add x1, PP, #0x17, lsl #12
//  0x4a9f68: ldr x1, [x1, #0xc30]
//  0x4a9f6c: ldr x4, [PP, #0x4c0]
//  0x4a9f70: bl #0x4a9e38
//  0x4a9f74: mov x0, NULL
//  0x4a9f78: mov SP, FP
//  0x4a9f7c: ldp FP, LR, [SP], #0x10
//  0x4a9f80: ret 
//  0x4a9f84: bl #0x61fa28
//  0x4a9f88: b #0x4a9f14
//
dynamic PagePartyLuckyBagState_onPageShow() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4a9ef4
  // frame: FP = SP // 0x4a9ef8
  // frame: SP = SP - 8 // 0x4a9efc
  x0 = x1; // 0x4a9f00
  local_m8 = x1; // 0x4a9f04
  BARRIER = mem(THR, 0x38); // 0x4a9f08
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4a9f84
  }
  x1 = x0; // 0x4a9f14
  SoulState_onPageShow() /* 0x4aa6c4 */; // 0x4a9f18
  w1 = mem((local_m8), 0x33); // 0x4a9f20
  x0 = local_m8; // 0x4a9f1c
  x1 = ((mem((local_m8), 0x33)) & 0xffffffff) + (HEAP << 32); // 0x4a9f24
  if (x1 & (1 << 4) != 0) {
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4a9f44
    if (x1 & (1 << 4) == 0) {
      if (x1 & (1 << 4) != 0) {
      } else {
        x1 = "LuckyPocket_SendResultPage" /* pp+0x17c30 */; // 0x4a9f68
        x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4a9f6c
        EventTrack_eventPv() /* 0x4a9e38 */; // 0x4a9f70
      }
    } else {
      x1 = "LuckyPocket_NoneResultPage" /* pp+0x17c28 */; // 0x4a9f50
      x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4a9f54
      EventTrack_eventPv() /* 0x4a9e38 */; // 0x4a9f58
    }
  } else {
    x1 = "LuckyPocket_GetMoneyResultPage" /* pp+0x17c20 */; // 0x4a9f30
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4a9f34
    EventTrack_eventPv() /* 0x4a9e38 */; // 0x4a9f38
  }
  SP = FP; // 0x4a9f78
  x0 = NULL; // 0x4a9f74
  // frame: FP, LR, mem(SP), 0x10 // 0x4a9f7c
  return;
}

// PagePartyLuckyBagState_initState
// raw disassembly:
//  0x4d45c8: stp FP, LR, [SP, #-0x10]!
//  0x4d45cc: mov FP, SP
//  0x4d45d0: sub SP, SP, #0x28
//  0x4d45d4: mov x3, x1
//  0x4d45d8: stur x1, [FP, #-8]
//  0x4d45dc: ldr BARRIER, [THR, #0x38]
//  0x4d45e0: cmp SP, BARRIER
//  0x4d45e4: b.ls #0x4d4cd4
//  0x4d45e8: ldur w0, [x3, #0xb]
//  0x4d45ec: add x0, x0, HEAP, lsl #32
//  0x4d45f0: cmp w0, w22
//  0x4d45f4: b.eq #0x4d4cdc
//  0x4d45f8: ldur w1, [x0, #0xb]
//  0x4d45fc: add x1, x1, HEAP, lsl #32
//  0x4d4600: cmp w1, w22
//  0x4d4604: b.ne #0x4d4610
//  0x4d4608: mov x0, NULL
//  0x4d460c: b #0x4d462c
//  0x4d4610: ldur x0, [x1, #-1]
//  0x4d4614: ubfx x0, x0, #0xc, #0x14
//  0x4d4618: add x2, PP, #0x11, lsl #12
//  0x4d461c: ldr x2, [x2, #0x598]
//  0x4d4620: sub LR, x0, #1, lsl #12
//  0x4d4624: ldr LR, [x21, LR, lsl #3]
//  0x4d4628: blr LR
//  0x4d462c: cmp w0, w22
//  0x4d4630: b.ne #0x4d463c
//  0x4d4634: ldr x4, [PP, #0x148]
//  0x4d4638: b #0x4d4640
//  0x4d463c: mov x4, x0
//  0x4d4640: ldur x3, [FP, #-8]
//  0x4d4644: mov x0, x4
//  0x4d4648: stur x4, [FP, #-0x10]
//  0x4d464c: mov x2, NULL
//  0x4d4650: mov x1, NULL
//  0x4d4654: mov x4, #0x3c
//  0x4d4658: tbz w0, #0, #0x4d4664
//  0x4d465c: ldur x4, [x0, #-1]
//  0x4d4660: ubfx x4, x4, #0xc, #0x14
//  0x4d4664: sub x4, x4, #0x5e
//  0x4d4668: cmp x4, #1
//  0x4d466c: b.ls #0x4d4680
//  0x4d4670: ldr x8, [PP, #0xae0]
//  0x4d4674: add x3, PP, #0x11, lsl #12
//  0x4d4678: ldr x3, [x3, #0x5a0]
//  0x4d467c: bl #0x278d08
//  0x4d4680: ldur x0, [FP, #-0x10]
//  0x4d4684: ldur x3, [FP, #-8]
//  0x4d4688: stur w0, [x3, #0x13]
//  0x4d468c: ldurb w16, [x3, #-1]
//  0x4d4690: ldurb w17, [x0, #-1]
//  0x4d4694: and BARRIER, x17, BARRIER, lsr #2
//  0x4d4698: tst BARRIER, HEAP, lsr #32
//  0x4d469c: b.eq #0x4d46a4
//  0x4d46a0: bl #0x61e08c
//  0x4d46a4: ldur w0, [x3, #0xb]
//  0x4d46a8: add x0, x0, HEAP, lsl #32
//  0x4d46ac: cmp w0, w22
//  0x4d46b0: b.eq #0x4d4ce0
//  0x4d46b4: ldur w1, [x0, #0xb]
//  0x4d46b8: add x1, x1, HEAP, lsl #32
//  0x4d46bc: cmp w1, w22
//  0x4d46c0: b.ne #0x4d46cc
//  0x4d46c4: mov x0, NULL
//  0x4d46c8: b #0x4d46e8
//  0x4d46cc: ldur x0, [x1, #-1]
//  0x4d46d0: ubfx x0, x0, #0xc, #0x14
//  0x4d46d4: add x2, PP, #0x10, lsl #12
//  0x4d46d8: ldr x2, [x2, #0xb90]
//  0x4d46dc: sub LR, x0, #1, lsl #12
//  0x4d46e0: ldr LR, [x21, LR, lsl #3]
//  0x4d46e4: blr LR
//  0x4d46e8: cmp w0, w22
//  0x4d46ec: b.ne #0x4d46f8
//  0x4d46f0: ldr x4, [PP, #0x148]
//  0x4d46f4: b #0x4d46fc
//  0x4d46f8: mov x4, x0
//  0x4d46fc: ldur x3, [FP, #-8]
//  0x4d4700: mov x0, x4
//  0x4d4704: stur x4, [FP, #-0x10]
//  0x4d4708: mov x2, NULL
//  0x4d470c: mov x1, NULL
//  0x4d4710: mov x4, #0x3c
//  0x4d4714: tbz w0, #0, #0x4d4720
//  0x4d4718: ldur x4, [x0, #-1]
//  0x4d471c: ubfx x4, x4, #0xc, #0x14
//  0x4d4720: sub x4, x4, #0x5e
//  0x4d4724: cmp x4, #1
//  0x4d4728: b.ls #0x4d473c
//  0x4d472c: ldr x8, [PP, #0xae0]
//  0x4d4730: add x3, PP, #0x11, lsl #12
//  0x4d4734: ldr x3, [x3, #0x5b0]
//  0x4d4738: bl #0x278d08
//  0x4d473c: ldur x0, [FP, #-0x10]
//  0x4d4740: ldur x3, [FP, #-8]
//  0x4d4744: stur w0, [x3, #0x17]
//  0x4d4748: ldurb w16, [x3, #-1]
//  0x4d474c: ldurb w17, [x0, #-1]
//  0x4d4750: and BARRIER, x17, BARRIER, lsr #2
//  0x4d4754: tst BARRIER, HEAP, lsr #32
//  0x4d4758: b.eq #0x4d4760
//  0x4d475c: bl #0x61e08c
//  0x4d4760: ldur w0, [x3, #0xb]
//  0x4d4764: add x0, x0, HEAP, lsl #32
//  0x4d4768: cmp w0, w22
//  0x4d476c: b.eq #0x4d4ce4
//  0x4d4770: ldur w1, [x0, #0xb]
//  0x4d4774: add x1, x1, HEAP, lsl #32
//  0x4d4778: cmp w1, w22
//  0x4d477c: b.ne #0x4d4788
//  0x4d4780: mov x0, NULL
//  0x4d4784: b #0x4d47a4
//  0x4d4788: ldur x0, [x1, #-1]
//  0x4d478c: ubfx x0, x0, #0xc, #0x14
//  0x4d4790: add x2, PP, #0xb, lsl #12
//  0x4d4794: ldr x2, [x2, #0x730]
//  0x4d4798: sub LR, x0, #1, lsl #12
//  0x4d479c: ldr LR, [x21, LR, lsl #3]
//  0x4d47a0: blr LR
//  0x4d47a4: cmp w0, w22
//  0x4d47a8: b.ne #0x4d47b4
//  0x4d47ac: ldr x4, [PP, #0x148]
//  0x4d47b0: b #0x4d47b8
//  0x4d47b4: mov x4, x0
//  0x4d47b8: ldur x3, [FP, #-8]
//  0x4d47bc: mov x0, x4
//  0x4d47c0: stur x4, [FP, #-0x10]
//  0x4d47c4: mov x2, NULL
//  0x4d47c8: mov x1, NULL
//  0x4d47cc: mov x4, #0x3c
//  0x4d47d0: tbz w0, #0, #0x4d47dc
//  0x4d47d4: ldur x4, [x0, #-1]
//  0x4d47d8: ubfx x4, x4, #0xc, #0x14
//  0x4d47dc: sub x4, x4, #0x5e
//  0x4d47e0: cmp x4, #1
//  0x4d47e4: b.ls #0x4d47f8
//  0x4d47e8: ldr x8, [PP, #0xae0]
//  0x4d47ec: add x3, PP, #0x11, lsl #12
//  0x4d47f0: ldr x3, [x3, #0x5c0]
//  0x4d47f4: bl #0x278d08
//  0x4d47f8: ldur x0, [FP, #-0x10]
//  0x4d47fc: ldur x3, [FP, #-8]
//  0x4d4800: stur w0, [x3, #0x23]
//  0x4d4804: ldurb w16, [x3, #-1]
//  0x4d4808: ldurb w17, [x0, #-1]
//  0x4d480c: and BARRIER, x17, BARRIER, lsr #2
//  0x4d4810: tst BARRIER, HEAP, lsr #32
//  0x4d4814: b.eq #0x4d481c
//  0x4d4818: bl #0x61e08c
//  0x4d481c: ldur w0, [x3, #0xb]
//  0x4d4820: add x0, x0, HEAP, lsl #32
//  0x4d4824: cmp w0, w22
//  0x4d4828: b.eq #0x4d4ce8
//  0x4d482c: ldur w1, [x0, #0xb]
//  0x4d4830: add x1, x1, HEAP, lsl #32
//  0x4d4834: cmp w1, w22
//  0x4d4838: b.ne #0x4d4844
//  0x4d483c: mov x0, NULL
//  0x4d4840: b #0x4d4860
//  0x4d4844: ldur x0, [x1, #-1]
//  0x4d4848: ubfx x0, x0, #0xc, #0x14
//  0x4d484c: add x2, PP, #0xb, lsl #12
//  0x4d4850: ldr x2, [x2, #0x718]
//  0x4d4854: sub LR, x0, #1, lsl #12
//  0x4d4858: ldr LR, [x21, LR, lsl #3]
//  0x4d485c: blr LR
//  0x4d4860: cmp w0, w22
//  0x4d4864: b.ne #0x4d4870
//  0x4d4868: ldr x4, [PP, #0x148]
//  0x4d486c: b #0x4d4874
//  0x4d4870: mov x4, x0
//  0x4d4874: ldur x3, [FP, #-8]
//  0x4d4878: mov x0, x4
//  0x4d487c: stur x4, [FP, #-0x10]
//  0x4d4880: mov x2, NULL
//  0x4d4884: mov x1, NULL
//  0x4d4888: mov x4, #0x3c
//  0x4d488c: tbz w0, #0, #0x4d4898
//  0x4d4890: ldur x4, [x0, #-1]
//  0x4d4894: ubfx x4, x4, #0xc, #0x14
//  0x4d4898: sub x4, x4, #0x5e
//  0x4d489c: cmp x4, #1
//  0x4d48a0: b.ls #0x4d48b4
//  0x4d48a4: ldr x8, [PP, #0xae0]
//  0x4d48a8: add x3, PP, #0x11, lsl #12
//  0x4d48ac: ldr x3, [x3, #0x5d0]
//  0x4d48b0: bl #0x278d08
//  0x4d48b4: ldur x0, [FP, #-0x10]
//  0x4d48b8: ldur x3, [FP, #-8]
//  0x4d48bc: stur w0, [x3, #0x2b]
//  0x4d48c0: ldurb w16, [x3, #-1]
//  0x4d48c4: ldurb w17, [x0, #-1]
//  0x4d48c8: and BARRIER, x17, BARRIER, lsr #2
//  0x4d48cc: tst BARRIER, HEAP, lsr #32
//  0x4d48d0: b.eq #0x4d48d8
//  0x4d48d4: bl #0x61e08c
//  0x4d48d8: ldur w0, [x3, #0xb]
//  0x4d48dc: add x0, x0, HEAP, lsl #32
//  0x4d48e0: cmp w0, w22
//  0x4d48e4: b.eq #0x4d4cec
//  0x4d48e8: ldur w1, [x0, #0xb]
//  0x4d48ec: add x1, x1, HEAP, lsl #32
//  0x4d48f0: cmp w1, w22
//  0x4d48f4: b.ne #0x4d4900
//  0x4d48f8: mov x0, NULL
//  0x4d48fc: b #0x4d491c
//  0x4d4900: ldur x0, [x1, #-1]
//  0x4d4904: ubfx x0, x0, #0xc, #0x14
//  0x4d4908: add x2, PP, #0xb, lsl #12
//  0x4d490c: ldr x2, [x2, #0x748]
//  0x4d4910: sub LR, x0, #1, lsl #12
//  0x4d4914: ldr LR, [x21, LR, lsl #3]
//  0x4d4918: blr LR
//  0x4d491c: cmp w0, w22
//  0x4d4920: b.ne #0x4d492c
//  0x4d4924: ldr x4, [PP, #0x148]
//  0x4d4928: b #0x4d4930
//  0x4d492c: mov x4, x0
//  0x4d4930: ldur x3, [FP, #-8]
//  0x4d4934: mov x0, x4
//  0x4d4938: stur x4, [FP, #-0x10]
//  0x4d493c: mov x2, NULL
//  0x4d4940: mov x1, NULL
//  0x4d4944: mov x4, #0x3c
//  0x4d4948: tbz w0, #0, #0x4d4954
//  0x4d494c: ldur x4, [x0, #-1]
//  0x4d4950: ubfx x4, x4, #0xc, #0x14
//  0x4d4954: sub x4, x4, #0x5e
//  0x4d4958: cmp x4, #1
//  0x4d495c: b.ls #0x4d4970
//  0x4d4960: ldr x8, [PP, #0xae0]
//  0x4d4964: add x3, PP, #0x11, lsl #12
//  0x4d4968: ldr x3, [x3, #0x5e0]
//  0x4d496c: bl #0x278d08
//  0x4d4970: ldur x0, [FP, #-0x10]
//  0x4d4974: ldur x3, [FP, #-8]
//  0x4d4978: stur w0, [x3, #0x27]
//  0x4d497c: ldurb w16, [x3, #-1]
//  0x4d4980: ldurb w17, [x0, #-1]
//  0x4d4984: and BARRIER, x17, BARRIER, lsr #2
//  0x4d4988: tst BARRIER, HEAP, lsr #32
//  0x4d498c: b.eq #0x4d4994
//  0x4d4990: bl #0x61e08c
//  0x4d4994: ldur w0, [x3, #0xb]
//  0x4d4998: add x0, x0, HEAP, lsl #32
//  0x4d499c: cmp w0, w22
//  0x4d49a0: b.eq #0x4d4cf0
//  0x4d49a4: ldur w1, [x0, #0xb]
//  0x4d49a8: add x1, x1, HEAP, lsl #32
//  0x4d49ac: cmp w1, w22
//  0x4d49b0: b.ne #0x4d49bc
//  0x4d49b4: mov x0, NULL
//  0x4d49b8: b #0x4d49d8
//  0x4d49bc: ldur x0, [x1, #-1]
//  0x4d49c0: ubfx x0, x0, #0xc, #0x14
//  0x4d49c4: add x2, PP, #0xb, lsl #12
//  0x4d49c8: ldr x2, [x2, #0x6e8]
//  0x4d49cc: sub LR, x0, #1, lsl #12
//  0x4d49d0: ldr LR, [x21, LR, lsl #3]
//  0x4d49d4: blr LR
//  0x4d49d8: cmp w0, w22
//  0x4d49dc: b.ne #0x4d49e4
//  0x4d49e0: ldr x0, [PP, #0x148]
//  0x4d49e4: ldur x3, [FP, #-8]
//  0x4d49e8: mov x2, NULL
//  0x4d49ec: mov x1, NULL
//  0x4d49f0: mov x4, #0x3c
//  0x4d49f4: tbz w0, #0, #0x4d4a00
//  0x4d49f8: ldur x4, [x0, #-1]
//  0x4d49fc: ubfx x4, x4, #0xc, #0x14
//  0x4d4a00: sub x4, x4, #0x5e
//  0x4d4a04: cmp x4, #1
//  0x4d4a08: b.ls #0x4d4a1c
//  0x4d4a0c: ldr x8, [PP, #0xae0]
//  0x4d4a10: add x3, PP, #0x11, lsl #12
//  0x4d4a14: ldr x3, [x3, #0x5f0]
//  0x4d4a18: bl #0x278d08
//  0x4d4a1c: ldur x3, [FP, #-8]
//  0x4d4a20: ldur w0, [x3, #0xb]
//  0x4d4a24: add x0, x0, HEAP, lsl #32
//  0x4d4a28: cmp w0, w22
//  0x4d4a2c: b.eq #0x4d4cf4
//  0x4d4a30: ldur w1, [x0, #0xb]
//  0x4d4a34: add x1, x1, HEAP, lsl #32
//  0x4d4a38: cmp w1, w22
//  0x4d4a3c: b.ne #0x4d4a48
//  0x4d4a40: mov x0, NULL
//  0x4d4a44: b #0x4d4a64
//  0x4d4a48: ldur x0, [x1, #-1]
//  0x4d4a4c: ubfx x0, x0, #0xc, #0x14
//  0x4d4a50: add x2, PP, #8, lsl #12
//  0x4d4a54: ldr x2, [x2, #0x9d8]
//  0x4d4a58: sub LR, x0, #1, lsl #12
//  0x4d4a5c: ldr LR, [x21, LR, lsl #3]
//  0x4d4a60: blr LR
//  0x4d4a64: cmp w0, w22
//  0x4d4a68: b.ne #0x4d4a74
//  0x4d4a6c: ldr x4, [PP, #0x148]
//  0x4d4a70: b #0x4d4a78
//  0x4d4a74: mov x4, x0
//  0x4d4a78: ldur x3, [FP, #-8]
//  0x4d4a7c: mov x0, x4
//  0x4d4a80: stur x4, [FP, #-0x10]
//  0x4d4a84: mov x2, NULL
//  0x4d4a88: mov x1, NULL
//  0x4d4a8c: mov x4, #0x3c
//  0x4d4a90: tbz w0, #0, #0x4d4a9c
//  0x4d4a94: ldur x4, [x0, #-1]
//  0x4d4a98: ubfx x4, x4, #0xc, #0x14
//  0x4d4a9c: sub x4, x4, #0x5e
//  0x4d4aa0: cmp x4, #1
//  0x4d4aa4: b.ls #0x4d4ab8
//  0x4d4aa8: ldr x8, [PP, #0xae0]
//  0x4d4aac: add x3, PP, #0x11, lsl #12
//  0x4d4ab0: ldr x3, [x3, #0x600]
//  0x4d4ab4: bl #0x278d08
//  0x4d4ab8: ldur x0, [FP, #-0x10]
//  0x4d4abc: ldur x3, [FP, #-8]
//  0x4d4ac0: stur w0, [x3, #0x1b]
//  0x4d4ac4: ldurb w16, [x3, #-1]
//  0x4d4ac8: ldurb w17, [x0, #-1]
//  0x4d4acc: and BARRIER, x17, BARRIER, lsr #2
//  0x4d4ad0: tst BARRIER, HEAP, lsr #32
//  0x4d4ad4: b.eq #0x4d4adc
//  0x4d4ad8: bl #0x61e08c
//  0x4d4adc: ldur w0, [x3, #0xb]
//  0x4d4ae0: add x0, x0, HEAP, lsl #32
//  0x4d4ae4: cmp w0, w22
//  0x4d4ae8: b.eq #0x4d4cf8
//  0x4d4aec: ldur w1, [x0, #0xb]
//  0x4d4af0: add x1, x1, HEAP, lsl #32
//  0x4d4af4: cmp w1, w22
//  0x4d4af8: b.ne #0x4d4b04
//  0x4d4afc: mov x0, NULL
//  0x4d4b00: b #0x4d4b20
//  0x4d4b04: ldur x0, [x1, #-1]
//  0x4d4b08: ubfx x0, x0, #0xc, #0x14
//  0x4d4b0c: add x2, PP, #0x10, lsl #12
//  0x4d4b10: ldr x2, [x2, #0xd48]
//  0x4d4b14: sub LR, x0, #1, lsl #12
//  0x4d4b18: ldr LR, [x21, LR, lsl #3]
//  0x4d4b1c: blr LR
//  0x4d4b20: cmp w0, w22
//  0x4d4b24: b.ne #0x4d4b30
//  0x4d4b28: ldr x4, [PP, #0x148]
//  0x4d4b2c: b #0x4d4b34
//  0x4d4b30: mov x4, x0
//  0x4d4b34: ldur x3, [FP, #-8]
//  0x4d4b38: mov x0, x4
//  0x4d4b3c: stur x4, [FP, #-0x10]
//  0x4d4b40: mov x2, NULL
//  0x4d4b44: mov x1, NULL
//  0x4d4b48: mov x4, #0x3c
//  0x4d4b4c: tbz w0, #0, #0x4d4b58
//  0x4d4b50: ldur x4, [x0, #-1]
//  0x4d4b54: ubfx x4, x4, #0xc, #0x14
//  0x4d4b58: sub x4, x4, #0x5e
//  0x4d4b5c: cmp x4, #1
//  0x4d4b60: b.ls #0x4d4b74
//  0x4d4b64: ldr x8, [PP, #0xae0]
//  0x4d4b68: add x3, PP, #0x11, lsl #12
//  0x4d4b6c: ldr x3, [x3, #0x610]
//  0x4d4b70: bl #0x278d08
//  0x4d4b74: ldur x0, [FP, #-0x10]
//  0x4d4b78: ldur x1, [FP, #-8]
//  0x4d4b7c: stur w0, [x1, #0x1f]
//  0x4d4b80: ldurb w16, [x1, #-1]
//  0x4d4b84: ldurb w17, [x0, #-1]
//  0x4d4b88: and BARRIER, x17, BARRIER, lsr #2
//  0x4d4b8c: tst BARRIER, HEAP, lsr #32
//  0x4d4b90: b.eq #0x4d4b98
//  0x4d4b94: bl #0x61e04c
//  0x4d4b98: ldur w0, [x1, #0x1b]
//  0x4d4b9c: add x0, x0, HEAP, lsl #32
//  0x4d4ba0: ldur x2, [x0, #-1]
//  0x4d4ba4: ubfx x2, x2, #0xc, #0x14
//  0x4d4ba8: add BARRIER, PP, #0x11, lsl #12
//  0x4d4bac: ldr BARRIER, [BARRIER, #0x620]
//  0x4d4bb0: stp BARRIER, x0, [SP]
//  0x4d4bb4: mov x0, x2
//  0x4d4bb8: mov LR, x0
//  0x4d4bbc: ldr LR, [x21, LR, lsl #3]
//  0x4d4bc0: blr LR
//  0x4d4bc4: tbnz w0, #4, #0x4d4bdc
//  0x4d4bc8: ldur x1, [FP, #-8]
//  0x4d4bcc: add x2, NULL, #0x20
//  0x4d4bd0: stur w2, [x1, #0x2f]
//  0x4d4bd4: mov x0, x1
//  0x4d4bd8: b #0x4d4c70
//  0x4d4bdc: ldur x1, [FP, #-8]
//  0x4d4be0: add x2, NULL, #0x20
//  0x4d4be4: ldur w0, [x1, #0x1b]
//  0x4d4be8: add x0, x0, HEAP, lsl #32
//  0x4d4bec: ldur x3, [x0, #-1]
//  0x4d4bf0: ubfx x3, x3, #0xc, #0x14
//  0x4d4bf4: add BARRIER, PP, #0xf, lsl #12
//  0x4d4bf8: ldr BARRIER, [BARRIER, #0x750]
//  0x4d4bfc: stp BARRIER, x0, [SP]
//  0x4d4c00: mov x0, x3
//  0x4d4c04: mov LR, x0
//  0x4d4c08: ldr LR, [x21, LR, lsl #3]
//  0x4d4c0c: blr LR
//  0x4d4c10: tbz w0, #4, #0x4d4c48
//  0x4d4c14: ldur x1, [FP, #-8]
//  0x4d4c18: ldur w0, [x1, #0x1b]
//  0x4d4c1c: add x0, x0, HEAP, lsl #32
//  0x4d4c20: ldur x2, [x0, #-1]
//  0x4d4c24: ubfx x2, x2, #0xc, #0x14
//  0x4d4c28: add BARRIER, PP, #0x11, lsl #12
//  0x4d4c2c: ldr BARRIER, [BARRIER, #0x628]
//  0x4d4c30: stp BARRIER, x0, [SP]
//  0x4d4c34: mov x0, x2
//  0x4d4c38: mov LR, x0
//  0x4d4c3c: ldr LR, [x21, LR, lsl #3]
//  0x4d4c40: blr LR
//  0x4d4c44: tbnz w0, #4, #0x4d4c60
//  0x4d4c48: ldur x0, [FP, #-8]
//  0x4d4c4c: add x1, NULL, #0x20
//  0x4d4c50: add x2, NULL, #0x30
//  0x4d4c54: stur w2, [x0, #0x2f]
//  0x4d4c58: stur w1, [x0, #0x33]
//  0x4d4c5c: b #0x4d4c70
//  0x4d4c60: ldur x0, [FP, #-8]
//  0x4d4c64: add x2, NULL, #0x30
//  0x4d4c68: stur w2, [x0, #0x2f]
//  0x4d4c6c: stur w2, [x0, #0x33]
//  0x4d4c70: ldur w2, [x0, #0x37]
//  0x4d4c74: add x2, x2, HEAP, lsl #32
//  0x4d4c78: stur x2, [FP, #-0x10]
//  0x4d4c7c: ldur w1, [x0, #0x13]
//  0x4d4c80: add x1, x1, HEAP, lsl #32
//  0x4d4c84: cmp w1, w22
//  0x4d4c88: b.ne #0x4d4c90
//  0x4d4c8c: ldr x1, [PP, #0x148]
//  0x4d4c90: ldr x4, [PP, #0x4c0]
//  0x4d4c94: bl #0x28703c
//  0x4d4c98: add x1, PP, #0x11, lsl #12
//  0x4d4c9c: ldr x1, [x1, #0x630]
//  0x4d4ca0: mov x2, NULL
//  0x4d4ca4: stur x0, [FP, #-0x18]
//  0x4d4ca8: bl #0x61ec54
//  0x4d4cac: ldur x1, [FP, #-0x10]
//  0x4d4cb0: ldur x2, [FP, #-0x18]
//  0x4d4cb4: mov x3, x0
//  0x4d4cb8: bl #0x4d4d68
//  0x4d4cbc: ldur x1, [FP, #-0x10]
//  0x4d4cc0: bl #0x4d4cfc
//  0x4d4cc4: mov x0, NULL
//  0x4d4cc8: mov SP, FP
//  0x4d4ccc: ldp FP, LR, [SP], #0x10
//  0x4d4cd0: ret 
//  0x4d4cd4: bl #0x61fa28
//  0x4d4cd8: b #0x4d45e8
//  0x4d4cdc: bl #0x61ffd0
//  0x4d4ce0: bl #0x61ffd0
//  0x4d4ce4: bl #0x61ffd0
//  0x4d4ce8: bl #0x61ffd0
//  0x4d4cec: bl #0x61ffd0
//  0x4d4cf0: bl #0x61ffd0
//  0x4d4cf4: bl #0x61ffd0
//  0x4d4cf8: bl #0x61ffd0
//
dynamic PagePartyLuckyBagState_initState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d45c8
  // frame: FP = SP // 0x4d45cc
  // frame: SP = SP - 0x28 // 0x4d45d0
  x3 = x1; // 0x4d45d4
  local_m8 = x1; // 0x4d45d8
  BARRIER = mem(THR, 0x38); // 0x4d45dc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d4cd4
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d45ec
  if (w0 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d4cdc
  } else {
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d45fc
    if (w1 != w22) {
      LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d4624
      x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4d4614
      x2 = "redPacketId" /* pp+0x11598 */; // 0x4d461c
      callIndirect(LR); // 0x4d4628
    } else {
      x0 = NULL; // 0x4d4608
    }
    if (w0 != w22) {
      x4 = x0; // 0x4d463c
    } else {
      x4 = "" /* pp+0x148 */; // 0x4d4634
    }
    x0 = x4; // 0x4d4644
    x3 = local_m8; // 0x4d4640
    local_m10 = x4; // 0x4d4648
    x1 = NULL; // 0x4d4650
    x2 = NULL; // 0x4d464c
    x4 = 60; // 0x4d4654
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d4660
    }
    x4 = x4 - 0x5e; // 0x4d4664
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x11000), 0x5a0) /* Obj!? */; // 0x4d4678
      x8 = mem(PP, 0xae0) /* Type */; // 0x4d4670
      sub_0x278d08(); // 0x4d467c
    }
    x0 = local_m10; // 0x4d4680
    x3 = local_m8; // 0x4d4684
    memSet(x3, 0x13, w0); // 0x4d4688
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d4694
    w16 = mem(x3, -1); // 0x4d468c
    w17 = mem(x0, -1); // 0x4d4690
    x16 = (mem(x3, -1)) & 0xffffffff; // 0x4d468c
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d4690
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d46a0
    }
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d46a8
    if (w0 == w22) {
      NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d4ce0
    } else {
      x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d46b8
      if (w1 != w22) {
        LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d46e0
        x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4d46d0
        x2 = "soulCoinNum" /* pp+0x10b90 */; // 0x4d46d8
        callIndirect(LR); // 0x4d46e4
      } else {
        x0 = NULL; // 0x4d46c4
      }
      if (w0 != w22) {
        x4 = x0; // 0x4d46f8
      } else {
        x4 = "" /* pp+0x148 */; // 0x4d46f0
      }
      x0 = x4; // 0x4d4700
      x3 = local_m8; // 0x4d46fc
      local_m10 = x4; // 0x4d4704
      x1 = NULL; // 0x4d470c
      x2 = NULL; // 0x4d4708
      x4 = 60; // 0x4d4710
      if (x0 & (1 << 0) == 0) {
      } else {
        x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d471c
      }
      x4 = x4 - 0x5e; // 0x4d4720
      if (x4 <= 1) {
      } else {
        x3 = mem((PP + 0x11000), 0x5b0) /* Obj!? */; // 0x4d4734
        x8 = mem(PP, 0xae0) /* Type */; // 0x4d472c
        sub_0x278d08(); // 0x4d4738
      }
      x0 = local_m10; // 0x4d473c
      x3 = local_m8; // 0x4d4740
      memSet(x3, 0x17, w0); // 0x4d4744
      BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d4750
      w16 = mem(x3, -1); // 0x4d4748
      w17 = mem(x0, -1); // 0x4d474c
      x16 = (mem(x3, -1)) & 0xffffffff; // 0x4d4748
      x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d474c
      if ((BARRIER & (HEAP >> 32)) == 0) {
      } else {
        WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d475c
      }
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d4764
      if (w0 == w22) {
        NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d4ce4
      } else {
        x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d4774
        if (w1 != w22) {
          LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d479c
          x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4d478c
          x2 = "signature" /* pp+0xb730 */; // 0x4d4794
          callIndirect(LR); // 0x4d47a0
        } else {
          x0 = NULL; // 0x4d4780
        }
        if (w0 != w22) {
          x4 = x0; // 0x4d47b4
        } else {
          x4 = "" /* pp+0x148 */; // 0x4d47ac
        }
        x0 = x4; // 0x4d47bc
        x3 = local_m8; // 0x4d47b8
        local_m10 = x4; // 0x4d47c0
        x1 = NULL; // 0x4d47c8
        x2 = NULL; // 0x4d47c4
        x4 = 60; // 0x4d47cc
        if (x0 & (1 << 0) == 0) {
        } else {
          x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d47d8
        }
        x4 = x4 - 0x5e; // 0x4d47dc
        if (x4 <= 1) {
        } else {
          x3 = mem((PP + 0x11000), 0x5c0) /* Obj!? */; // 0x4d47f0
          x8 = mem(PP, 0xae0) /* Type */; // 0x4d47e8
          sub_0x278d08(); // 0x4d47f4
        }
        x0 = local_m10; // 0x4d47f8
        x3 = local_m8; // 0x4d47fc
        memSet(x3, 0x23, w0); // 0x4d4800
        BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d480c
        w16 = mem(x3, -1); // 0x4d4804
        w17 = mem(x0, -1); // 0x4d4808
        x16 = (mem(x3, -1)) & 0xffffffff; // 0x4d4804
        x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d4808
        if ((BARRIER & (HEAP >> 32)) == 0) {
        } else {
          WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d4818
        }
        x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d4820
        if (w0 == w22) {
          NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d4ce8
        } else {
          x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d4830
          if (w1 != w22) {
            LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d4858
            x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4d4848
            x2 = "avatarUrl" /* pp+0xb718 */; // 0x4d4850
            callIndirect(LR); // 0x4d485c
          } else {
            x0 = NULL; // 0x4d483c
          }
          if (w0 != w22) {
            x4 = x0; // 0x4d4870
          } else {
            x4 = "" /* pp+0x148 */; // 0x4d4868
          }
          x0 = x4; // 0x4d4878
          x3 = local_m8; // 0x4d4874
          local_m10 = x4; // 0x4d487c
          x1 = NULL; // 0x4d4884
          x2 = NULL; // 0x4d4880
          x4 = 60; // 0x4d4888
          if (x0 & (1 << 0) == 0) {
          } else {
            x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d4894
          }
          x4 = x4 - 0x5e; // 0x4d4898
          if (x4 <= 1) {
          } else {
            x3 = mem((PP + 0x11000), 0x5d0) /* Obj!? */; // 0x4d48ac
            x8 = mem(PP, 0xae0) /* Type */; // 0x4d48a4
            sub_0x278d08(); // 0x4d48b0
          }
          x0 = local_m10; // 0x4d48b4
          x3 = local_m8; // 0x4d48b8
          memSet(x3, 0x2b, w0); // 0x4d48bc
          BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d48c8
          w16 = mem(x3, -1); // 0x4d48c0
          w17 = mem(x0, -1); // 0x4d48c4
          x16 = (mem(x3, -1)) & 0xffffffff; // 0x4d48c0
          x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d48c4
          if ((BARRIER & (HEAP >> 32)) == 0) {
          } else {
            WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d48d4
          }
          x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d48dc
          if (w0 == w22) {
            NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d4cec
          } else {
            x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d48ec
            if (w1 != w22) {
              LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d4914
              x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4d4904
              x2 = "garlandUrl" /* pp+0xb748 */; // 0x4d490c
              callIndirect(LR); // 0x4d4918
            } else {
              x0 = NULL; // 0x4d48f8
            }
            if (w0 != w22) {
              x4 = x0; // 0x4d492c
            } else {
              x4 = "" /* pp+0x148 */; // 0x4d4924
            }
            x0 = x4; // 0x4d4934
            x3 = local_m8; // 0x4d4930
            local_m10 = x4; // 0x4d4938
            x1 = NULL; // 0x4d4940
            x2 = NULL; // 0x4d493c
            x4 = 60; // 0x4d4944
            if (x0 & (1 << 0) == 0) {
            } else {
              x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d4950
            }
            x4 = x4 - 0x5e; // 0x4d4954
            if (x4 <= 1) {
            } else {
              x3 = mem((PP + 0x11000), 0x5e0) /* Obj!? */; // 0x4d4968
              x8 = mem(PP, 0xae0) /* Type */; // 0x4d4960
              sub_0x278d08(); // 0x4d496c
            }
            x0 = local_m10; // 0x4d4970
            x3 = local_m8; // 0x4d4974
            memSet(x3, 0x27, w0); // 0x4d4978
            BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d4984
            w16 = mem(x3, -1); // 0x4d497c
            w17 = mem(x0, -1); // 0x4d4980
            x16 = (mem(x3, -1)) & 0xffffffff; // 0x4d497c
            x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d4980
            if ((BARRIER & (HEAP >> 32)) == 0) {
            } else {
              WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d4990
            }
            x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d4998
            if (w0 == w22) {
              NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d4cf0
            } else {
              x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d49a8
              if (w1 != w22) {
                LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d49d0
                x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4d49c0
                x2 = "userId" /* pp+0xb6e8 */; // 0x4d49c8
                callIndirect(LR); // 0x4d49d4
              } else {
                x0 = NULL; // 0x4d49b4
              }
              if (w0 != w22) {
              } else {
                x0 = "" /* pp+0x148 */; // 0x4d49e0
              }
              x1 = NULL; // 0x4d49ec
              x2 = NULL; // 0x4d49e8
              x3 = local_m8; // 0x4d49e4
              x4 = 60; // 0x4d49f0
              if (x0 & (1 << 0) == 0) {
              } else {
                x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d49fc
              }
              x4 = x4 - 0x5e; // 0x4d4a00
              if (x4 <= 1) {
              } else {
                x3 = mem((PP + 0x11000), 0x5f0) /* Obj!? */; // 0x4d4a14
                x8 = mem(PP, 0xae0) /* Type */; // 0x4d4a0c
                sub_0x278d08(); // 0x4d4a18
              }
              w0 = mem((local_m8), 0xb); // 0x4d4a20
              x0 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x4d4a24
              x3 = local_m8; // 0x4d4a1c
              if (w0 == w22) {
                NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d4cf4
              } else {
                x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d4a34
                if (w1 != w22) {
                  LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d4a5c
                  x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4d4a4c
                  x2 = "state" /* pp+0x89d8 */; // 0x4d4a54
                  callIndirect(LR); // 0x4d4a60
                } else {
                  x0 = NULL; // 0x4d4a40
                }
                if (w0 != w22) {
                  x4 = x0; // 0x4d4a74
                } else {
                  x4 = "" /* pp+0x148 */; // 0x4d4a6c
                }
                x0 = x4; // 0x4d4a7c
                x3 = local_m8; // 0x4d4a78
                local_m10 = x4; // 0x4d4a80
                x1 = NULL; // 0x4d4a88
                x2 = NULL; // 0x4d4a84
                x4 = 60; // 0x4d4a8c
                if (x0 & (1 << 0) == 0) {
                } else {
                  x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d4a98
                }
                x4 = x4 - 0x5e; // 0x4d4a9c
                if (x4 <= 1) {
                } else {
                  x3 = mem((PP + 0x11000), 0x600) /* Obj!? */; // 0x4d4ab0
                  x8 = mem(PP, 0xae0) /* Type */; // 0x4d4aa8
                  sub_0x278d08(); // 0x4d4ab4
                }
                x0 = local_m10; // 0x4d4ab8
                x3 = local_m8; // 0x4d4abc
                memSet(x3, 0x1b, w0); // 0x4d4ac0
                BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d4acc
                w16 = mem(x3, -1); // 0x4d4ac4
                w17 = mem(x0, -1); // 0x4d4ac8
                x16 = (mem(x3, -1)) & 0xffffffff; // 0x4d4ac4
                x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d4ac8
                if ((BARRIER & (HEAP >> 32)) == 0) {
                } else {
                  WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d4ad8
                }
                x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d4ae0
                if (w0 == w22) {
                  // duplicated branch body (target 0x4d4cf8 terminates; the same code is emitted below)
                  NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d4cf8
                }
                x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d4af0
                if (w1 != w22) {
                  LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d4b18
                  x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4d4b08
                  x2 = "roomId" /* pp+0x10d48 */; // 0x4d4b10
                  callIndirect(LR); // 0x4d4b1c
                } else {
                  x0 = NULL; // 0x4d4afc
                }
                if (w0 != w22) {
                  x4 = x0; // 0x4d4b30
                } else {
                  x4 = "" /* pp+0x148 */; // 0x4d4b28
                }
                x0 = x4; // 0x4d4b38
                x3 = local_m8; // 0x4d4b34
                local_m10 = x4; // 0x4d4b3c
                x1 = NULL; // 0x4d4b44
                x2 = NULL; // 0x4d4b40
                x4 = 60; // 0x4d4b48
                if (x0 & (1 << 0) == 0) {
                } else {
                  x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d4b54
                }
                x4 = x4 - 0x5e; // 0x4d4b58
                if (x4 <= 1) {
                } else {
                  x3 = mem((PP + 0x11000), 0x610) /* Obj!? */; // 0x4d4b6c
                  x8 = mem(PP, 0xae0) /* Type */; // 0x4d4b64
                  sub_0x278d08(); // 0x4d4b70
                }
                x0 = local_m10; // 0x4d4b74
                x1 = local_m8; // 0x4d4b78
                memSet(x1, 0x1f, w0); // 0x4d4b7c
                BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d4b88
                w16 = mem(x1, -1); // 0x4d4b80
                w17 = mem(x0, -1); // 0x4d4b84
                x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d4b80
                x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d4b84
                if ((BARRIER & (HEAP >> 32)) == 0) {
                } else {
                  WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d4b94
                }
                BARRIER = "3" /* pp+0x11620 */; // 0x4d4bac
                x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d4b9c
                x2 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), -1)) >> 12) & 0xfffff; // 0x4d4ba4
                // frame: BARRIER, x0, mem(SP) // 0x4d4bb0
                LR = mem(x21, (LR << 3)); // 0x4d4bbc
                x0 = x2; // 0x4d4bb4
                callIndirect(LR); // 0x4d4bc0
                if (x0 & (1 << 4) != 0) {
                  BARRIER = "1" /* pp+0xf750 */; // 0x4d4bf8
                  w0 = mem((local_m8), 0x1b); // 0x4d4be4
                  x0 = ((mem((local_m8), 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x4d4be8
                  x1 = local_m8; // 0x4d4bdc
                  x2 = NULL + 0x20; // 0x4d4be0
                  x3 = ((mem((((mem((local_m8), 0x1b)) & 0xffffffff) + (HEAP << 32)), -1)) >> 12) & 0xfffff; // 0x4d4bf0
                  // frame: BARRIER, x0, mem(SP) // 0x4d4bfc
                  LR = mem(x21, (LR << 3)); // 0x4d4c08
                  x0 = x3; // 0x4d4c00
                  callIndirect(LR); // 0x4d4c0c
                  if (x0 & (1 << 4) == 0) {
                  } else {
                    BARRIER = "2" /* pp+0x11628 */; // 0x4d4c2c
                    w0 = mem((local_m8), 0x1b); // 0x4d4c18
                    x0 = ((mem((local_m8), 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x4d4c1c
                    x1 = local_m8; // 0x4d4c14
                    x2 = ((mem((((mem((local_m8), 0x1b)) & 0xffffffff) + (HEAP << 32)), -1)) >> 12) & 0xfffff; // 0x4d4c24
                    // frame: BARRIER, x0, mem(SP) // 0x4d4c30
                    LR = mem(x21, (LR << 3)); // 0x4d4c3c
                    x0 = x2; // 0x4d4c34
                    callIndirect(LR); // 0x4d4c40
                    if (x0 & (1 << 4) != 0) {
                      x0 = local_m8; // 0x4d4c60
                      x2 = NULL + 0x30; // 0x4d4c64
                      memSet(x0, 0x2f, w2); // 0x4d4c68
                      memSet(x0, 0x33, w2); // 0x4d4c6c
                    } else {
                      x0 = local_m8; // 0x4d4c48
                      x1 = NULL + 0x20; // 0x4d4c4c
                      x2 = NULL + 0x30; // 0x4d4c50
                      memSet(x0, 0x2f, w2); // 0x4d4c54
                      memSet(x0, 0x33, w1); // 0x4d4c58
                    }
                    x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x4d4c74
                    local_m10 = x2; // 0x4d4c78
                    w1 = mem(x0, 0x13); // 0x4d4c7c
                    x1 = ((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4d4c80
                    if (w1 != w22) {
                    } else {
                      x1 = "" /* pp+0x148 */; // 0x4d4c8c
                    }
                    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4d4c90
                    int_parse() /* 0x28703c */; // 0x4d4c94
                    x1 = mem((PP + 0x11000), 0x630) /* Function */; // 0x4d4c9c
                    x2 = NULL; // 0x4d4ca0
                    local_m18 = x0; // 0x4d4ca4
                    AllocationStub__Closure() /* 0x61ec54 */; // 0x4d4ca8
                    x1 = local_m10; // 0x4d4cac
                    x2 = local_m18; // 0x4d4cb0
                    x3 = x0; // 0x4d4cb4
                    LuckyBagListItemNotifier_gainLuckyBagInfo() /* 0x4d4d68 */; // 0x4d4cb8
                    x1 = local_m10; // 0x4d4cbc
                    LuckyBagListItemNotifier_requestUserInfo() /* 0x4d4cfc */; // 0x4d4cc0
                    SP = FP; // 0x4d4cc8
                    x0 = NULL; // 0x4d4cc4
                    // frame: FP, LR, mem(SP), 0x10 // 0x4d4ccc
                    return;
                  }
                } else {
                  x1 = local_m8; // 0x4d4bc8
                  x2 = NULL + 0x20; // 0x4d4bcc
                  memSet(x1, 0x2f, w2); // 0x4d4bd0
                  x0 = x1; // 0x4d4bd4
                }
              }
              NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d4cf8
            }
          }
        }
      }
    }
  }
}

// PagePartyLuckyBag_createState
// raw disassembly:
//  0x4c4190: stp FP, LR, [SP, #-0x10]!
//  0x4c4194: mov FP, SP
//  0x4c4198: sub SP, SP, #0x10
//  0x4c419c: ldr BARRIER, [THR, #0x38]
//  0x4c41a0: cmp SP, BARRIER
//  0x4c41a4: b.ls #0x4c420c
//  0x4c41a8: add x1, PP, #0xb, lsl #12
//  0x4c41ac: ldr x1, [x1, #0x7e0]
//  0x4c41b0: bl #0x4c4328
//  0x4c41b4: mov x1, x0
//  0x4c41b8: add x0, NULL, #0x30
//  0x4c41bc: stur x1, [FP, #-8]
//  0x4c41c0: stur w0, [x1, #0x2f]
//  0x4c41c4: stur w0, [x1, #0x33]
//  0x4c41c8: bl #0x4c431c
//  0x4c41cc: mov x1, x0
//  0x4c41d0: stur x0, [FP, #-0x10]
//  0x4c41d4: bl #0x4c4214
//  0x4c41d8: ldur x0, [FP, #-0x10]
//  0x4c41dc: ldur x1, [FP, #-8]
//  0x4c41e0: stur w0, [x1, #0x37]
//  0x4c41e4: ldurb w16, [x1, #-1]
//  0x4c41e8: ldurb w17, [x0, #-1]
//  0x4c41ec: and BARRIER, x17, BARRIER, lsr #2
//  0x4c41f0: tst BARRIER, HEAP, lsr #32
//  0x4c41f4: b.eq #0x4c41fc
//  0x4c41f8: bl #0x61e04c
//  0x4c41fc: mov x0, x1
//  0x4c4200: mov SP, FP
//  0x4c4204: ldp FP, LR, [SP], #0x10
//  0x4c4208: ret 
//  0x4c420c: bl #0x61fa28
//  0x4c4210: b #0x4c41a8
//
dynamic PagePartyLuckyBag_createState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c4190
  BARRIER = mem(THR, 0x38); // 0x4c419c
  // frame: FP = SP // 0x4c4194
  // frame: SP = SP - 0x10 // 0x4c4198
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c420c
  }
  x1 = mem((PP + 0xb000), 0x7e0) /* TypeArguments */; // 0x4c41ac
  AllocationStub__PagePartyLuckyBagState() /* 0x4c4328 */; // 0x4c41b0
  x0 = NULL + 0x30; // 0x4c41b8
  x1 = x0; // 0x4c41b4
  local_m8 = x1; // 0x4c41bc
  memSet(x1, 0x2f, w0); // 0x4c41c0
  memSet(x1, 0x33, w0); // 0x4c41c4
  AllocationStub_LuckyBagListItemNotifier() /* 0x4c431c */; // 0x4c41c8
  x1 = x0; // 0x4c41cc
  local_m10 = x0; // 0x4c41d0
  LuckyBagListItemNotifier_ctor() /* 0x4c4214 */; // 0x4c41d4
  x0 = local_m10; // 0x4c41d8
  x1 = local_m8; // 0x4c41dc
  memSet(x1, 0x37, w0); // 0x4c41e0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c41ec
  w16 = mem(x1, -1); // 0x4c41e4
  w17 = mem(x0, -1); // 0x4c41e8
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c41e4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c41e8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c41f8
  }
  SP = FP; // 0x4c4200
  x0 = x1; // 0x4c41fc
  // frame: FP, LR, mem(SP), 0x10 // 0x4c4204
  return;
}
