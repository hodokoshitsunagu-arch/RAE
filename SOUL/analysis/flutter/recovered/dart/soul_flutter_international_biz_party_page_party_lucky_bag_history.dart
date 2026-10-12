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

dynamic AllocationStub_Align, AllocationStub_ChangeNotifierProvider, AllocationStub_Color;
dynamic AllocationStub_Column, AllocationStub_Consumer, AllocationStub_Container;
dynamic AllocationStub_CustomFooter, AllocationStub_Divider, AllocationStub_EdgeInsets;
dynamic AllocationStub_Expanded, AllocationStub_Flexible, AllocationStub_ListView;
dynamic AllocationStub_LuckyBagHistoryListItemNotifier, AllocationStub_PartyPocketButton;
dynamic AllocationStub_PartyPocketDialog, AllocationStub_RefreshController, AllocationStub_Row;
dynamic AllocationStub_SOAssetImage, AllocationStub_SizedBox, AllocationStub_SmartRefresher;
dynamic AllocationStub_Stack, AllocationStub_Text, AllocationStub_TextStyle;
dynamic AllocationStub__Closure, AllocationStub__Double, AllocationStub__GrowableList;
dynamic AllocationStub__PagePartyLuckyBagHistoryEmpty;
dynamic AllocationStub__PagePartyLuckyBagHistoryList;
dynamic AllocationStub__PagePartyLuckyBagHistoryState, AllocationStub__ValueInheritedProvider;
dynamic BARRIER, Container_ctor, EventTrack_eventClick, FP, GestureDetector_ctor, HEAP, LR;
dynamic LateInitializationErrorSharedWithFpuRegsStub_0x6202a8;
dynamic LateInitializationErrorSharedWithoutFpuRegsStub_0x620258, ListView_ctor_builder;
dynamic LuckyBagHistoryListItemNotifier_ctor;
dynamic LuckyBagHistoryListItemNotifier_gainLuckyBagHistory;
dynamic LuckyBagHistoryListItemNotifier_requestLuckyBagHistoryList, NULL, PP;
dynamic PagePKGameBetTabRecordState_anon_closure, RangeErrorSharedWithoutFpuRegsStub_0x61fe70;
dynamic RefreshController_ctor, RefreshController_dispose, RefreshController_loadComplete;
dynamic RefreshController_loadFailed, RefreshController_loadNoData, SP;
dynamic ScreenUtil_getScreenWidth, SoulState_dispose;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, WriteBarrierStub_x1;
dynamic WriteBarrierStub_x2, d0, d1, d2, d3, getString, int_kNull, local_0, local_10, local_18;
dynamic local_20, local_28, local_m10, local_m18, local_m20, local_m28, local_m30, local_m38;
dynamic local_m40, local_m48, local_m50, local_m58, local_m60, local_m68, local_m70, local_m8;
dynamic q1, sub_0x3a1d94, sub_0x61e890, sub_0x61f920, v0_16b, v1_16b, w0, w1, w16, w17, w2, w3;
dynamic w4, w5, w6, w7, x0, x1, x16, x17, x2, x3, x4, x5, x6, x7, x9, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$party$page_party_lucky_bag_history
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PagePartyLuckyBagHistoryList_build
// raw disassembly:
//  0x3aa824: stp FP, LR, [SP, #-0x10]!
//  0x3aa828: mov FP, SP
//  0x3aa82c: sub SP, SP, #0x88
//  0x3aa830: mov x0, x1
//  0x3aa834: stur x1, [FP, #-8]
//  0x3aa838: mov x1, x2
//  0x3aa83c: stur x2, [FP, #-0x10]
//  0x3aa840: ldr BARRIER, [THR, #0x38]
//  0x3aa844: cmp SP, BARRIER
//  0x3aa848: b.ls #0x3ab244
//  0x3aa84c: mov x1, #8
//  0x3aa850: bl #0x61e890
//  0x3aa854: mov x2, x0
//  0x3aa858: ldur x0, [FP, #-8]
//  0x3aa85c: stur x2, [FP, #-0x18]
//  0x3aa860: stur w0, [x2, #0xf]
//  0x3aa864: ldur x1, [FP, #-0x10]
//  0x3aa868: bl #0x3a877c
//  0x3aa86c: mov v1.16b, v0.16b
//  0x3aa870: fmov d0, #28.00000000
//  0x3aa874: fsub d2, d1, d0
//  0x3aa878: fmov d0, #3.00000000
//  0x3aa87c: fdiv d1, d2, d0
//  0x3aa880: ldp x1, x0, [THR, #0x50]
//  0x3aa884: add x1, x1, #0x10
//  0x3aa888: cmp x0, x1
//  0x3aa88c: b.ls #0x3ab24c
//  0x3aa890: str x1, [THR, #0x50]
//  0x3aa894: sub x1, x1, #0xf
//  0x3aa898: mov x0, #0xe15c
//  0x3aa89c: movk x0, #3, lsl #16
//  0x3aa8a0: stur x0, [x1, #-1]
//  0x3aa8a4: stur d1, [x1, #7]
//  0x3aa8a8: mov x0, x1
//  0x3aa8ac: ldur x2, [FP, #-0x18]
//  0x3aa8b0: stur x1, [FP, #-0x10]
//  0x3aa8b4: stur w0, [x2, #0x13]
//  0x3aa8b8: ldurb w16, [x2, #-1]
//  0x3aa8bc: ldurb w17, [x0, #-1]
//  0x3aa8c0: and BARRIER, x17, BARRIER, lsr #2
//  0x3aa8c4: tst BARRIER, HEAP, lsr #32
//  0x3aa8c8: b.eq #0x3aa8d0
//  0x3aa8cc: bl #0x61e06c
//  0x3aa8d0: add x0, PP, #0x12, lsl #12
//  0x3aa8d4: ldr x0, [x0, #0x300]
//  0x3aa8d8: stur w0, [x2, #0x17]
//  0x3aa8dc: add x0, PP, #0xa, lsl #12
//  0x3aa8e0: ldr x0, [x0, #0x430]
//  0x3aa8e4: stur w0, [x2, #0x1b]
//  0x3aa8e8: add x0, PP, #0x11, lsl #12
//  0x3aa8ec: ldr x0, [x0, #0xba0]
//  0x3aa8f0: stur w0, [x2, #0x1f]
//  0x3aa8f4: fmov d2, #0.50000000
//  0x3aa8f8: fmul d3, d1, d2
//  0x3aa8fc: fmov d1, #24.00000000
//  0x3aa900: fsub d2, d3, d1
//  0x3aa904: fsub d1, d2, d0
//  0x3aa908: ldp x0, x3, [THR, #0x50]
//  0x3aa90c: add x0, x0, #0x10
//  0x3aa910: cmp x3, x0
//  0x3aa914: b.ls #0x3ab260
//  0x3aa918: str x0, [THR, #0x50]
//  0x3aa91c: sub x0, x0, #0xf
//  0x3aa920: mov x3, #0xe15c
//  0x3aa924: movk x3, #3, lsl #16
//  0x3aa928: stur x3, [x0, #-1]
//  0x3aa92c: stur d1, [x0, #7]
//  0x3aa930: stur w0, [x2, #0x23]
//  0x3aa934: ldurb w16, [x2, #-1]
//  0x3aa938: ldurb w17, [x0, #-1]
//  0x3aa93c: and BARRIER, x17, BARRIER, lsr #2
//  0x3aa940: tst BARRIER, HEAP, lsr #32
//  0x3aa944: b.eq #0x3aa94c
//  0x3aa948: bl #0x61e06c
//  0x3aa94c: fmov d0, #27.00000000
//  0x3aa950: fsub d1, d3, d0
//  0x3aa954: ldp x0, x3, [THR, #0x50]
//  0x3aa958: add x0, x0, #0x10
//  0x3aa95c: cmp x3, x0
//  0x3aa960: b.ls #0x3ab278
//  0x3aa964: str x0, [THR, #0x50]
//  0x3aa968: sub x0, x0, #0xf
//  0x3aa96c: mov x3, #0xe15c
//  0x3aa970: movk x3, #3, lsl #16
//  0x3aa974: stur x3, [x0, #-1]
//  0x3aa978: stur d1, [x0, #7]
//  0x3aa97c: stur w0, [x2, #0x27]
//  0x3aa980: ldurb w16, [x2, #-1]
//  0x3aa984: ldurb w17, [x0, #-1]
//  0x3aa988: and BARRIER, x17, BARRIER, lsr #2
//  0x3aa98c: tst BARRIER, HEAP, lsr #32
//  0x3aa990: b.eq #0x3aa998
//  0x3aa994: bl #0x61e06c
//  0x3aa998: bl #0x31d844
//  0x3aa99c: mov x1, x0
//  0x3aa9a0: ldr x0, [PP, #0x6310]
//  0x3aa9a4: stur x1, [FP, #-0x20]
//  0x3aa9a8: stur w0, [x1, #0x27]
//  0x3aa9ac: fmov d0, #1.00000000
//  0x3aa9b0: stur d0, [x1, #7]
//  0x3aa9b4: add x17, PP, #0x10, lsl #12
//  0x3aa9b8: ldr d1, [x17, #0xad0]
//  0x3aa9bc: stur d1, [x1, #0xf]
//  0x3aa9c0: add x17, PP, #0x10, lsl #12
//  0x3aa9c4: ldr d2, [x17, #0xad8]
//  0x3aa9c8: stur d2, [x1, #0x17]
//  0x3aa9cc: add x17, PP, #0x10, lsl #12
//  0x3aa9d0: ldr d3, [x17, #0xae0]
//  0x3aa9d4: stur d3, [x1, #0x1f]
//  0x3aa9d8: bl #0x31abec
//  0x3aa9dc: mov x2, x0
//  0x3aa9e0: add x0, NULL, #0x20
//  0x3aa9e4: stur x2, [FP, #-0x28]
//  0x3aa9e8: stur w0, [x2, #7]
//  0x3aa9ec: ldur x1, [FP, #-0x20]
//  0x3aa9f0: stur w1, [x2, #0xb]
//  0x3aa9f4: add x1, PP, #0xf, lsl #12
//  0x3aa9f8: ldr x1, [x1, #0xb90]
//  0x3aa9fc: stur w1, [x2, #0x1f]
//  0x3aaa00: add x1, PP, #0xe, lsl #12
//  0x3aaa04: ldr x1, [x1, #0xe40]
//  0x3aaa08: stur w1, [x2, #0x23]
//  0x3aaa0c: add x1, PP, #0xc, lsl #12
//  0x3aaa10: ldr x1, [x1, #0x9c8]
//  0x3aaa14: ldr x4, [PP, #0x4c0]
//  0x3aaa18: bl #0x3a1dcc
//  0x3aaa1c: add x1, PP, #0xc, lsl #12
//  0x3aaa20: ldr x1, [x1, #0x900]
//  0x3aaa24: stur x0, [FP, #-0x20]
//  0x3aaa28: ldr x4, [PP, #0x4c0]
//  0x3aaa2c: bl #0x3a1dcc
//  0x3aaa30: add x1, PP, #0xc, lsl #12
//  0x3aaa34: ldr x1, [x1, #0x9b8]
//  0x3aaa38: stur x0, [FP, #-0x30]
//  0x3aaa3c: ldr x4, [PP, #0x4c0]
//  0x3aaa40: bl #0x3a1dcc
//  0x3aaa44: stur x0, [FP, #-0x38]
//  0x3aaa48: bl #0x31d844
//  0x3aaa4c: mov x1, x0
//  0x3aaa50: ldr x0, [PP, #0x6310]
//  0x3aaa54: stur x1, [FP, #-0x40]
//  0x3aaa58: stur w0, [x1, #0x27]
//  0x3aaa5c: fmov d0, #1.00000000
//  0x3aaa60: stur d0, [x1, #7]
//  0x3aaa64: add x17, PP, #0x10, lsl #12
//  0x3aaa68: ldr d1, [x17, #0xad0]
//  0x3aaa6c: stur d1, [x1, #0xf]
//  0x3aaa70: add x17, PP, #0x10, lsl #12
//  0x3aaa74: ldr d2, [x17, #0xad8]
//  0x3aaa78: stur d2, [x1, #0x17]
//  0x3aaa7c: add x17, PP, #0x10, lsl #12
//  0x3aaa80: ldr d3, [x17, #0xae0]
//  0x3aaa84: stur d3, [x1, #0x1f]
//  0x3aaa88: bl #0x31abec
//  0x3aaa8c: mov x1, x0
//  0x3aaa90: add x0, NULL, #0x20
//  0x3aaa94: stur x1, [FP, #-0x48]
//  0x3aaa98: stur w0, [x1, #7]
//  0x3aaa9c: ldur x2, [FP, #-0x40]
//  0x3aaaa0: stur w2, [x1, #0xb]
//  0x3aaaa4: add x2, PP, #0xf, lsl #12
//  0x3aaaa8: ldr x2, [x2, #0x208]
//  0x3aaaac: stur w2, [x1, #0x1f]
//  0x3aaab0: add x3, PP, #0xf, lsl #12
//  0x3aaab4: ldr x3, [x3, #0xe88]
//  0x3aaab8: stur w3, [x1, #0x23]
//  0x3aaabc: bl #0x31d844
//  0x3aaac0: mov x1, x0
//  0x3aaac4: ldr x0, [PP, #0x6310]
//  0x3aaac8: stur x1, [FP, #-0x40]
//  0x3aaacc: stur w0, [x1, #0x27]
//  0x3aaad0: fmov d0, #1.00000000
//  0x3aaad4: stur d0, [x1, #7]
//  0x3aaad8: add x17, PP, #0x10, lsl #12
//  0x3aaadc: ldr d1, [x17, #0xad0]
//  0x3aaae0: stur d1, [x1, #0xf]
//  0x3aaae4: add x17, PP, #0x10, lsl #12
//  0x3aaae8: ldr d1, [x17, #0xad8]
//  0x3aaaec: stur d1, [x1, #0x17]
//  0x3aaaf0: add x17, PP, #0x10, lsl #12
//  0x3aaaf4: ldr d1, [x17, #0xae0]
//  0x3aaaf8: stur d1, [x1, #0x1f]
//  0x3aaafc: bl #0x31abec
//  0x3aab00: add x1, NULL, #0x20
//  0x3aab04: stur w1, [x0, #7]
//  0x3aab08: ldur x2, [FP, #-0x40]
//  0x3aab0c: stur w2, [x0, #0xb]
//  0x3aab10: add x2, PP, #0xf, lsl #12
//  0x3aab14: ldr x2, [x2, #0x208]
//  0x3aab18: stur w2, [x0, #0x1f]
//  0x3aab1c: add x2, PP, #0xf, lsl #12
//  0x3aab20: ldr x2, [x2, #0xe88]
//  0x3aab24: stur w2, [x0, #0x23]
//  0x3aab28: ldur x2, [FP, #-0x18]
//  0x3aab2c: stur w0, [x2, #0x2b]
//  0x3aab30: ldurb w16, [x2, #-1]
//  0x3aab34: ldurb w17, [x0, #-1]
//  0x3aab38: and BARRIER, x17, BARRIER, lsr #2
//  0x3aab3c: tst BARRIER, HEAP, lsr #32
//  0x3aab40: b.eq #0x3aab48
//  0x3aab44: bl #0x61e06c
//  0x3aab48: bl #0x2e3578
//  0x3aab4c: stur x0, [FP, #-0x40]
//  0x3aab50: stur xzr, [x0, #7]
//  0x3aab54: ldr d0, [PP, #0x72d0]
//  0x3aab58: stur d0, [x0, #0xf]
//  0x3aab5c: stur xzr, [x0, #0x17]
//  0x3aab60: stur xzr, [x0, #0x1f]
//  0x3aab64: add x1, PP, #0xc, lsl #12
//  0x3aab68: ldr x1, [x1, #0x9d8]
//  0x3aab6c: ldr x4, [PP, #0x4c0]
//  0x3aab70: bl #0x3a1dcc
//  0x3aab74: stur x0, [FP, #-0x50]
//  0x3aab78: bl #0x393bf8
//  0x3aab7c: mov x2, x0
//  0x3aab80: ldur x0, [FP, #-0x50]
//  0x3aab84: stur x2, [FP, #-0x58]
//  0x3aab88: stur w0, [x2, #0xb]
//  0x3aab8c: ldur x0, [FP, #-0x28]
//  0x3aab90: stur w0, [x2, #0x13]
//  0x3aab94: add x1, NULL, #0x30
//  0x3aab98: bl #0x3ab5e4
//  0x3aab9c: mov x1, NULL
//  0x3aaba0: mov x2, #4
//  0x3aaba4: stur x0, [FP, #-0x28]
//  0x3aaba8: bl #0x61f920
//  0x3aabac: mov x2, x0
//  0x3aabb0: ldur x0, [FP, #-0x58]
//  0x3aabb4: stur x2, [FP, #-0x50]
//  0x3aabb8: stur w0, [x2, #0xf]
//  0x3aabbc: ldur x0, [FP, #-0x28]
//  0x3aabc0: stur w0, [x2, #0x13]
//  0x3aabc4: ldr x1, [PP, #0x5c58]
//  0x3aabc8: bl #0x61e854
//  0x3aabcc: mov x1, x0
//  0x3aabd0: ldur x0, [FP, #-0x50]
//  0x3aabd4: stur x1, [FP, #-0x28]
//  0x3aabd8: stur w0, [x1, #0xf]
//  0x3aabdc: mov x2, #4
//  0x3aabe0: stur w2, [x1, #0xb]
//  0x3aabe4: bl #0x39e6f4
//  0x3aabe8: mov x1, x0
//  0x3aabec: add x0, PP, #0xe, lsl #12
//  0x3aabf0: ldr x0, [x0, #0xaa0]
//  0x3aabf4: stur x1, [FP, #-0x50]
//  0x3aabf8: stur w0, [x1, #0xf]
//  0x3aabfc: add x0, PP, #0xe, lsl #12
//  0x3aac00: ldr x0, [x0, #0xf08]
//  0x3aac04: stur w0, [x1, #0x17]
//  0x3aac08: add x0, PP, #0xe, lsl #12
//  0x3aac0c: ldr x0, [x0, #0xf10]
//  0x3aac10: stur w0, [x1, #0x1b]
//  0x3aac14: ldur x0, [FP, #-0x28]
//  0x3aac18: stur w0, [x1, #0xb]
//  0x3aac1c: bl #0x391a04
//  0x3aac20: stur x0, [FP, #-0x28]
//  0x3aac24: ldur BARRIER, [FP, #-0x50]
//  0x3aac28: str BARRIER, [SP]
//  0x3aac2c: mov x1, x0
//  0x3aac30: add x4, PP, #0xc, lsl #12
//  0x3aac34: ldr x4, [x4, #0x1f8]
//  0x3aac38: bl #0x391490
//  0x3aac3c: bl #0x2e3578
//  0x3aac40: fmov d0, #14.00000000
//  0x3aac44: stur x0, [FP, #-0x50]
//  0x3aac48: stur d0, [x0, #7]
//  0x3aac4c: fmov d1, #21.00000000
//  0x3aac50: stur d1, [x0, #0xf]
//  0x3aac54: stur d0, [x0, #0x17]
//  0x3aac58: stur xzr, [x0, #0x1f]
//  0x3aac5c: bl #0x2e3578
//  0x3aac60: stur x0, [FP, #-0x58]
//  0x3aac64: stur xzr, [x0, #7]
//  0x3aac68: stur xzr, [x0, #0xf]
//  0x3aac6c: stur xzr, [x0, #0x17]
//  0x3aac70: stur xzr, [x0, #0x1f]
//  0x3aac74: bl #0x31d844
//  0x3aac78: mov x1, x0
//  0x3aac7c: ldr x0, [PP, #0x6310]
//  0x3aac80: stur x1, [FP, #-0x60]
//  0x3aac84: stur w0, [x1, #0x27]
//  0x3aac88: fmov d0, #1.00000000
//  0x3aac8c: stur d0, [x1, #7]
//  0x3aac90: stur d0, [x1, #0xf]
//  0x3aac94: add x17, PP, #0x10, lsl #12
//  0x3aac98: ldr d1, [x17, #0xac0]
//  0x3aac9c: stur d1, [x1, #0x17]
//  0x3aaca0: add x17, PP, #0x10, lsl #12
//  0x3aaca4: ldr d2, [x17, #0xac8]
//  0x3aaca8: stur d2, [x1, #0x1f]
//  0x3aacac: bl #0x391a04
//  0x3aacb0: stur x0, [FP, #-0x68]
//  0x3aacb4: ldur BARRIER, [FP, #-0x58]
//  0x3aacb8: ldr LR, [PP, #0x53b0]
//  0x3aacbc: stp LR, BARRIER, [SP, #8]
//  0x3aacc0: ldur BARRIER, [FP, #-0x60]
//  0x3aacc4: str BARRIER, [SP]
//  0x3aacc8: mov x1, x0
//  0x3aaccc: add x4, PP, #0x10, lsl #12
//  0x3aacd0: ldr x4, [x4, #0x258]
//  0x3aacd4: bl #0x391490
//  0x3aacd8: bl #0x2e3578
//  0x3aacdc: stur x0, [FP, #-0x58]
//  0x3aace0: stur xzr, [x0, #7]
//  0x3aace4: stur xzr, [x0, #0xf]
//  0x3aace8: stur xzr, [x0, #0x17]
//  0x3aacec: stur xzr, [x0, #0x1f]
//  0x3aacf0: bl #0x393bf8
//  0x3aacf4: mov x1, x0
//  0x3aacf8: ldur x0, [FP, #-0x20]
//  0x3aacfc: stur x1, [FP, #-0x60]
//  0x3aad00: stur w0, [x1, #0xb]
//  0x3aad04: ldur x0, [FP, #-0x48]
//  0x3aad08: stur w0, [x1, #0x13]
//  0x3aad0c: ldr x2, [PP, #0x53a8]
//  0x3aad10: stur w2, [x1, #0x1b]
//  0x3aad14: bl #0x391a04
//  0x3aad18: stur x0, [FP, #-0x20]
//  0x3aad1c: add BARRIER, PP, #0xe, lsl #12
//  0x3aad20: ldr BARRIER, [BARRIER, #0xaa0]
//  0x3aad24: ldur LR, [FP, #-0x10]
//  0x3aad28: stp LR, BARRIER, [SP, #8]
//  0x3aad2c: ldur BARRIER, [FP, #-0x60]
//  0x3aad30: str BARRIER, [SP]
//  0x3aad34: mov x1, x0
//  0x3aad38: add x4, PP, #0x12, lsl #12
//  0x3aad3c: ldr x4, [x4, #0x308]
//  0x3aad40: bl #0x391490
//  0x3aad44: bl #0x393bf8
//  0x3aad48: mov x1, x0
//  0x3aad4c: ldur x0, [FP, #-0x30]
//  0x3aad50: stur x1, [FP, #-0x60]
//  0x3aad54: stur w0, [x1, #0xb]
//  0x3aad58: ldur x0, [FP, #-0x48]
//  0x3aad5c: stur w0, [x1, #0x13]
//  0x3aad60: ldr x2, [PP, #0x53a8]
//  0x3aad64: stur w2, [x1, #0x1b]
//  0x3aad68: bl #0x391a04
//  0x3aad6c: stur x0, [FP, #-0x30]
//  0x3aad70: add BARRIER, PP, #0xe, lsl #12
//  0x3aad74: ldr BARRIER, [BARRIER, #0xaa0]
//  0x3aad78: ldur LR, [FP, #-0x10]
//  0x3aad7c: stp LR, BARRIER, [SP, #8]
//  0x3aad80: ldur BARRIER, [FP, #-0x60]
//  0x3aad84: str BARRIER, [SP]
//  0x3aad88: mov x1, x0
//  0x3aad8c: add x4, PP, #0x12, lsl #12
//  0x3aad90: ldr x4, [x4, #0x308]
//  0x3aad94: bl #0x391490
//  0x3aad98: bl #0x393bf8
//  0x3aad9c: mov x1, x0
//  0x3aada0: ldur x0, [FP, #-0x38]
//  0x3aada4: stur x1, [FP, #-0x60]
//  0x3aada8: stur w0, [x1, #0xb]
//  0x3aadac: ldur x0, [FP, #-0x48]
//  0x3aadb0: stur w0, [x1, #0x13]
//  0x3aadb4: ldr x0, [PP, #0x53a8]
//  0x3aadb8: stur w0, [x1, #0x1b]
//  0x3aadbc: bl #0x391a04
//  0x3aadc0: stur x0, [FP, #-0x38]
//  0x3aadc4: add BARRIER, PP, #0xe, lsl #12
//  0x3aadc8: ldr BARRIER, [BARRIER, #0xaa0]
//  0x3aadcc: ldur LR, [FP, #-0x10]
//  0x3aadd0: stp LR, BARRIER, [SP, #8]
//  0x3aadd4: ldur BARRIER, [FP, #-0x60]
//  0x3aadd8: str BARRIER, [SP]
//  0x3aaddc: mov x1, x0
//  0x3aade0: add x4, PP, #0x12, lsl #12
//  0x3aade4: ldr x4, [x4, #0x308]
//  0x3aade8: bl #0x391490
//  0x3aadec: mov x1, NULL
//  0x3aadf0: mov x2, #6
//  0x3aadf4: bl #0x61f920
//  0x3aadf8: mov x2, x0
//  0x3aadfc: ldur x0, [FP, #-0x20]
//  0x3aae00: stur x2, [FP, #-0x10]
//  0x3aae04: stur w0, [x2, #0xf]
//  0x3aae08: ldur x0, [FP, #-0x30]
//  0x3aae0c: stur w0, [x2, #0x13]
//  0x3aae10: ldur x0, [FP, #-0x38]
//  0x3aae14: stur w0, [x2, #0x17]
//  0x3aae18: ldr x1, [PP, #0x5c58]
//  0x3aae1c: bl #0x61e854
//  0x3aae20: mov x1, x0
//  0x3aae24: ldur x0, [FP, #-0x10]
//  0x3aae28: stur x1, [FP, #-0x20]
//  0x3aae2c: stur w0, [x1, #0xf]
//  0x3aae30: mov x0, #6
//  0x3aae34: stur w0, [x1, #0xb]
//  0x3aae38: bl #0x3a1414
//  0x3aae3c: mov x1, x0
//  0x3aae40: ldr x0, [PP, #0x5140]
//  0x3aae44: stur x1, [FP, #-0x10]
//  0x3aae48: stur w0, [x1, #0xf]
//  0x3aae4c: add x0, PP, #0x11, lsl #12
//  0x3aae50: ldr x0, [x0, #0xa90]
//  0x3aae54: stur w0, [x1, #0x13]
//  0x3aae58: add x0, PP, #0xe, lsl #12
//  0x3aae5c: ldr x0, [x0, #0xae8]
//  0x3aae60: stur w0, [x1, #0x17]
//  0x3aae64: add x2, PP, #0xe, lsl #12
//  0x3aae68: ldr x2, [x2, #0xb60]
//  0x3aae6c: stur w2, [x1, #0x1b]
//  0x3aae70: add x3, PP, #0xe, lsl #12
//  0x3aae74: ldr x3, [x3, #0xaf8]
//  0x3aae78: stur w3, [x1, #0x23]
//  0x3aae7c: add x4, PP, #0xa, lsl #12
//  0x3aae80: ldr x4, [x4, #0xa8]
//  0x3aae84: stur w4, [x1, #0x2b]
//  0x3aae88: stur xzr, [x1, #0x2f]
//  0x3aae8c: ldur x5, [FP, #-0x20]
//  0x3aae90: stur w5, [x1, #0xb]
//  0x3aae94: bl #0x391a04
//  0x3aae98: stur x0, [FP, #-0x20]
//  0x3aae9c: add BARRIER, PP, #0xf, lsl #12
//  0x3aaea0: ldr BARRIER, [BARRIER, #0x310]
//  0x3aaea4: ldur LR, [FP, #-0x58]
//  0x3aaea8: stp LR, BARRIER, [SP, #8]
//  0x3aaeac: ldur BARRIER, [FP, #-0x10]
//  0x3aaeb0: str BARRIER, [SP]
//  0x3aaeb4: mov x1, x0
//  0x3aaeb8: add x4, PP, #0x11, lsl #12
//  0x3aaebc: ldr x4, [x4, #0xab0]
//  0x3aaec0: bl #0x391490
//  0x3aaec4: bl #0x2e3578
//  0x3aaec8: stur x0, [FP, #-0x10]
//  0x3aaecc: stur xzr, [x0, #7]
//  0x3aaed0: stur xzr, [x0, #0xf]
//  0x3aaed4: stur xzr, [x0, #0x17]
//  0x3aaed8: stur xzr, [x0, #0x1f]
//  0x3aaedc: bl #0x31d844
//  0x3aaee0: mov x1, x0
//  0x3aaee4: ldr x0, [PP, #0x6310]
//  0x3aaee8: stur x1, [FP, #-0x30]
//  0x3aaeec: stur w0, [x1, #0x27]
//  0x3aaef0: fmov d0, #1.00000000
//  0x3aaef4: stur d0, [x1, #7]
//  0x3aaef8: stur d0, [x1, #0xf]
//  0x3aaefc: add x17, PP, #0x10, lsl #12
//  0x3aaf00: ldr d0, [x17, #0xac0]
//  0x3aaf04: stur d0, [x1, #0x17]
//  0x3aaf08: add x17, PP, #0x10, lsl #12
//  0x3aaf0c: ldr d0, [x17, #0xac8]
//  0x3aaf10: stur d0, [x1, #0x1f]
//  0x3aaf14: bl #0x391a04
//  0x3aaf18: stur x0, [FP, #-0x38]
//  0x3aaf1c: ldur BARRIER, [FP, #-0x10]
//  0x3aaf20: ldr LR, [PP, #0x53b0]
//  0x3aaf24: stp LR, BARRIER, [SP, #8]
//  0x3aaf28: ldur BARRIER, [FP, #-0x30]
//  0x3aaf2c: str BARRIER, [SP]
//  0x3aaf30: mov x1, x0
//  0x3aaf34: add x4, PP, #0x10, lsl #12
//  0x3aaf38: ldr x4, [x4, #0x258]
//  0x3aaf3c: bl #0x391490
//  0x3aaf40: ldur x0, [FP, #-8]
//  0x3aaf44: ldur w3, [x0, #0xf]
//  0x3aaf48: add x3, x3, HEAP, lsl #32
//  0x3aaf4c: stur x3, [FP, #-0x10]
//  0x3aaf50: add x1, PP, #0x12, lsl #12
//  0x3aaf54: ldr x1, [x1, #0x310]
//  0x3aaf58: mov x2, NULL
//  0x3aaf5c: bl #0x61ec54
//  0x3aaf60: stur x0, [FP, #-0x30]
//  0x3aaf64: bl #0x3ab5b8
//  0x3aaf68: mov x3, x0
//  0x3aaf6c: ldur x0, [FP, #-0x30]
//  0x3aaf70: stur x3, [FP, #-0x48]
//  0x3aaf74: stur w0, [x3, #0x1b]
//  0x3aaf78: add x0, PP, #0xf, lsl #12
//  0x3aaf7c: ldr x0, [x0, #0x898]
//  0x3aaf80: stur w0, [x3, #0xb]
//  0x3aaf84: add x17, PP, #0xf, lsl #12
//  0x3aaf88: ldr d0, [x17, #0x8a0]
//  0x3aaf8c: stur d0, [x3, #0xf]
//  0x3aaf90: ldur x0, [FP, #-8]
//  0x3aaf94: ldur w1, [x0, #0xb]
//  0x3aaf98: add x1, x1, HEAP, lsl #32
//  0x3aaf9c: ldur w0, [x1, #0x2b]
//  0x3aafa0: add x0, x0, HEAP, lsl #32
//  0x3aafa4: ldur w1, [x0, #0xb]
//  0x3aafa8: sbfx x0, x1, #1, #0x1f
//  0x3aafac: ldur x2, [FP, #-0x18]
//  0x3aafb0: stur x0, [FP, #-0x70]
//  0x3aafb4: add x1, PP, #0x12, lsl #12
//  0x3aafb8: ldr x1, [x1, #0x318]
//  0x3aafbc: bl #0x61ec54
//  0x3aafc0: stur x0, [FP, #-8]
//  0x3aafc4: bl #0x3ab5ac
//  0x3aafc8: mov x1, x0
//  0x3aafcc: ldur x2, [FP, #-8]
//  0x3aafd0: ldur x3, [FP, #-0x70]
//  0x3aafd4: stur x0, [FP, #-8]
//  0x3aafd8: ldr x4, [PP, #0x2e0]
//  0x3aafdc: bl #0x3ab2bc
//  0x3aafe0: bl #0x3ab290
//  0x3aafe4: mov x3, x0
//  0x3aafe8: ldur x0, [FP, #-0x10]
//  0x3aafec: stur x3, [FP, #-0x30]
//  0x3aaff0: stur w0, [x3, #0x2b]
//  0x3aaff4: ldur x0, [FP, #-8]
//  0x3aaff8: stur w0, [x3, #0xb]
//  0x3aaffc: ldur x0, [FP, #-0x48]
//  0x3ab000: stur w0, [x3, #0xf]
//  0x3ab004: add x0, NULL, #0x30
//  0x3ab008: stur w0, [x3, #0x1b]
//  0x3ab00c: add x1, NULL, #0x20
//  0x3ab010: stur w1, [x3, #0x13]
//  0x3ab014: stur w0, [x3, #0x17]
//  0x3ab018: ldur x2, [FP, #-0x18]
//  0x3ab01c: add x1, PP, #0x12, lsl #12
//  0x3ab020: ldr x1, [x1, #0x320]
//  0x3ab024: bl #0x61ec54
//  0x3ab028: mov x1, x0
//  0x3ab02c: ldur x0, [FP, #-0x30]
//  0x3ab030: stur w1, [x0, #0x23]
//  0x3ab034: add x1, PP, #0xe, lsl #12
//  0x3ab038: ldr x1, [x1, #0xad0]
//  0x3ab03c: bl #0x39fb14
//  0x3ab040: mov x3, x0
//  0x3ab044: mov x0, #1
//  0x3ab048: stur x3, [FP, #-8]
//  0x3ab04c: stur x0, [x3, #0x13]
//  0x3ab050: add x4, PP, #0xe, lsl #12
//  0x3ab054: ldr x4, [x4, #0xad8]
//  0x3ab058: stur w4, [x3, #0x1b]
//  0x3ab05c: ldur x1, [FP, #-0x30]
//  0x3ab060: stur w1, [x3, #0xb]
//  0x3ab064: mov x1, NULL
//  0x3ab068: mov x2, #8
//  0x3ab06c: bl #0x61f920
//  0x3ab070: mov x2, x0
//  0x3ab074: ldur x0, [FP, #-0x68]
//  0x3ab078: stur x2, [FP, #-0x10]
//  0x3ab07c: stur w0, [x2, #0xf]
//  0x3ab080: ldur x0, [FP, #-0x20]
//  0x3ab084: stur w0, [x2, #0x13]
//  0x3ab088: ldur x0, [FP, #-0x38]
//  0x3ab08c: stur w0, [x2, #0x17]
//  0x3ab090: ldur x0, [FP, #-8]
//  0x3ab094: stur w0, [x2, #0x1b]
//  0x3ab098: ldr x1, [PP, #0x5c58]
//  0x3ab09c: bl #0x61e854
//  0x3ab0a0: mov x1, x0
//  0x3ab0a4: ldur x0, [FP, #-0x10]
//  0x3ab0a8: stur x1, [FP, #-8]
//  0x3ab0ac: stur w0, [x1, #0xf]
//  0x3ab0b0: mov x0, #8
//  0x3ab0b4: stur w0, [x1, #0xb]
//  0x3ab0b8: bl #0x39310c
//  0x3ab0bc: mov x1, x0
//  0x3ab0c0: add x0, PP, #0xa, lsl #12
//  0x3ab0c4: ldr x0, [x0, #0x858]
//  0x3ab0c8: stur x1, [FP, #-0x10]
//  0x3ab0cc: stur w0, [x1, #0xf]
//  0x3ab0d0: add x2, PP, #0xe, lsl #12
//  0x3ab0d4: ldr x2, [x2, #0xae0]
//  0x3ab0d8: stur w2, [x1, #0x13]
//  0x3ab0dc: add x3, PP, #0xe, lsl #12
//  0x3ab0e0: ldr x3, [x3, #0xae8]
//  0x3ab0e4: stur w3, [x1, #0x17]
//  0x3ab0e8: add x4, PP, #0xe, lsl #12
//  0x3ab0ec: ldr x4, [x4, #0xb60]
//  0x3ab0f0: stur w4, [x1, #0x1b]
//  0x3ab0f4: add x5, PP, #0xe, lsl #12
//  0x3ab0f8: ldr x5, [x5, #0xaf8]
//  0x3ab0fc: stur w5, [x1, #0x23]
//  0x3ab100: add x6, PP, #0xa, lsl #12
//  0x3ab104: ldr x6, [x6, #0xa8]
//  0x3ab108: stur w6, [x1, #0x2b]
//  0x3ab10c: stur xzr, [x1, #0x2f]
//  0x3ab110: ldur x7, [FP, #-8]
//  0x3ab114: stur w7, [x1, #0xb]
//  0x3ab118: bl #0x391a04
//  0x3ab11c: stur x0, [FP, #-8]
//  0x3ab120: ldur BARRIER, [FP, #-0x50]
//  0x3ab124: ldur LR, [FP, #-0x10]
//  0x3ab128: stp LR, BARRIER, [SP]
//  0x3ab12c: mov x1, x0
//  0x3ab130: add x4, PP, #0xf, lsl #12
//  0x3ab134: ldr x4, [x4, #0x200]
//  0x3ab138: bl #0x391490
//  0x3ab13c: add x1, PP, #0xe, lsl #12
//  0x3ab140: ldr x1, [x1, #0xad0]
//  0x3ab144: bl #0x39fb14
//  0x3ab148: mov x3, x0
//  0x3ab14c: mov x0, #1
//  0x3ab150: stur x3, [FP, #-0x10]
//  0x3ab154: stur x0, [x3, #0x13]
//  0x3ab158: add x0, PP, #0xe, lsl #12
//  0x3ab15c: ldr x0, [x0, #0xad8]
//  0x3ab160: stur w0, [x3, #0x1b]
//  0x3ab164: ldur x0, [FP, #-8]
//  0x3ab168: stur w0, [x3, #0xb]
//  0x3ab16c: mov x1, NULL
//  0x3ab170: mov x2, #4
//  0x3ab174: bl #0x61f920
//  0x3ab178: mov x2, x0
//  0x3ab17c: ldur x0, [FP, #-0x28]
//  0x3ab180: stur x2, [FP, #-8]
//  0x3ab184: stur w0, [x2, #0xf]
//  0x3ab188: ldur x0, [FP, #-0x10]
//  0x3ab18c: stur w0, [x2, #0x13]
//  0x3ab190: ldr x1, [PP, #0x5c58]
//  0x3ab194: bl #0x61e854
//  0x3ab198: mov x1, x0
//  0x3ab19c: ldur x0, [FP, #-8]
//  0x3ab1a0: stur x1, [FP, #-0x10]
//  0x3ab1a4: stur w0, [x1, #0xf]
//  0x3ab1a8: mov x0, #4
//  0x3ab1ac: stur w0, [x1, #0xb]
//  0x3ab1b0: bl #0x39310c
//  0x3ab1b4: mov x1, x0
//  0x3ab1b8: add x0, PP, #0xa, lsl #12
//  0x3ab1bc: ldr x0, [x0, #0x858]
//  0x3ab1c0: stur x1, [FP, #-8]
//  0x3ab1c4: stur w0, [x1, #0xf]
//  0x3ab1c8: add x0, PP, #0xe, lsl #12
//  0x3ab1cc: ldr x0, [x0, #0xae0]
//  0x3ab1d0: stur w0, [x1, #0x13]
//  0x3ab1d4: add x0, PP, #0xe, lsl #12
//  0x3ab1d8: ldr x0, [x0, #0xae8]
//  0x3ab1dc: stur w0, [x1, #0x17]
//  0x3ab1e0: add x0, PP, #0xe, lsl #12
//  0x3ab1e4: ldr x0, [x0, #0xb60]
//  0x3ab1e8: stur w0, [x1, #0x1b]
//  0x3ab1ec: add x0, PP, #0xe, lsl #12
//  0x3ab1f0: ldr x0, [x0, #0xaf8]
//  0x3ab1f4: stur w0, [x1, #0x23]
//  0x3ab1f8: add x0, PP, #0xa, lsl #12
//  0x3ab1fc: ldr x0, [x0, #0xa8]
//  0x3ab200: stur w0, [x1, #0x2b]
//  0x3ab204: stur xzr, [x1, #0x2f]
//  0x3ab208: ldur x0, [FP, #-0x10]
//  0x3ab20c: stur w0, [x1, #0xb]
//  0x3ab210: bl #0x391a04
//  0x3ab214: stur x0, [FP, #-0x10]
//  0x3ab218: ldur BARRIER, [FP, #-0x40]
//  0x3ab21c: ldur LR, [FP, #-8]
//  0x3ab220: stp LR, BARRIER, [SP]
//  0x3ab224: mov x1, x0
//  0x3ab228: add x4, PP, #0xf, lsl #12
//  0x3ab22c: ldr x4, [x4, #0x200]
//  0x3ab230: bl #0x391490
//  0x3ab234: ldur x0, [FP, #-0x10]
//  0x3ab238: mov SP, FP
//  0x3ab23c: ldp FP, LR, [SP], #0x10
//  0x3ab240: ret 
//  0x3ab244: bl #0x61fa28
//  0x3ab248: b #0x3aa84c
//  0x3ab24c: stp q0, q1, [SP, #-0x20]!
//  0x3ab250: bl #0x61f878
//  0x3ab254: mov x1, x0
//  0x3ab258: ldp q0, q1, [SP], #0x20
//  0x3ab25c: b #0x3aa8a4
//  0x3ab260: stp q1, q3, [SP, #-0x20]!
//  0x3ab264: stp x1, x2, [SP, #-0x10]!
//  0x3ab268: bl #0x61f878
//  0x3ab26c: ldp x1, x2, [SP], #0x10
//  0x3ab270: ldp q1, q3, [SP], #0x20
//  0x3ab274: b #0x3aa92c
//  0x3ab278: str q1, [SP, #-0x10]!
//  0x3ab27c: stp x1, x2, [SP, #-0x10]!
//  0x3ab280: bl #0x61f878
//  0x3ab284: ldp x1, x2, [SP], #0x10
//  0x3ab288: ldr q1, [SP], #0x10
//  0x3ab28c: b #0x3aa978
//
dynamic PagePartyLuckyBagHistoryList_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic d3;
  dynamic q1;
  dynamic v1_16b;
  dynamic w0;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w3;
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x3aa824
  // frame: FP = SP // 0x3aa828
  // frame: SP = SP - 0x88 // 0x3aa82c
  x0 = x1; // 0x3aa830
  local_m8 = x1; // 0x3aa834
  x1 = x2; // 0x3aa838
  local_m10 = x2; // 0x3aa83c
  BARRIER = mem(THR, 0x38); // 0x3aa840
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ab244
  }
  x1 = 8; // 0x3aa84c
  sub_0x61e890(); // 0x3aa850
  x0 = local_m8; // 0x3aa858
  x2 = x0; // 0x3aa854
  local_m18 = x2; // 0x3aa85c
  memSet(x2, 0xf, w0); // 0x3aa860
  x1 = local_m10; // 0x3aa864
  ScreenUtil_getScreenWidth() /* 0x3a877c */; // 0x3aa868
  d0 = 3.00000000 /* bits */; // 0x3aa878
  d1 = (((d1 - (28.00000000 /* bits */)) /* float */) / (3.00000000 /* bits */)) /* float */; // 0x3aa87c
  d2 = (d1 - (28.00000000 /* bits */)) /* float */; // 0x3aa874
  v1_16b = v0_16b; // 0x3aa86c
  memRead2(THR, 0x50, x1, x0); // 0x3aa880
  x1 = x1 + 0x10; // 0x3aa884
  if (x0 <= x1) {
    // frame: q0, q1, mem(SP, -0x20)! // 0x3ab24c
    AllocationStub__Double() /* 0x61f878 */; // 0x3ab250
    x1 = x0; // 0x3ab254
    // frame: q0, q1, mem(SP), 0x20 // 0x3ab258
  } else {
    memSet(THR, 0x50, x1); // 0x3aa890
    x0 = (x0 & 0xffff) | 0x30000; // 0x3aa89c
    x1 = x1 - 0xf; // 0x3aa894
    memSet(x1, -1, x0); // 0x3aa8a0
  }
  memSet(x1, 7, d1); // 0x3aa8a4
  x0 = x1; // 0x3aa8a8
  x2 = local_m18; // 0x3aa8ac
  local_m10 = x1; // 0x3aa8b0
  memSet(x2, 0x13, w0); // 0x3aa8b4
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3aa8c0
  w16 = mem(x2, -1); // 0x3aa8b8
  w17 = mem(x0, -1); // 0x3aa8bc
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x3aa8b8
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3aa8bc
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x3aa8cc
  }
  x0 = mem((PP + 0x12000), 0x300) /* Double */; // 0x3aa8d4
  memSet(x2, 0x17, w0); // 0x3aa8d8
  x0 = mem((PP + 0xa000), 0x430) /* Double */; // 0x3aa8e0
  memSet(x2, 0x1b, w0); // 0x3aa8e4
  x0 = mem((PP + 0x11000), 0xba0) /* Double */; // 0x3aa8ec
  memSet(x2, 0x1f, w0); // 0x3aa8f0
  d1 = (((((d1 * (0.50000000 /* bits */)) /* float */) - (24.00000000 /* bits */)) /* float */) - d0) /* float */; // 0x3aa904
  d2 = (((d1 * (0.50000000 /* bits */)) /* float */) - (24.00000000 /* bits */)) /* float */; // 0x3aa900
  d3 = (d1 * (0.50000000 /* bits */)) /* float */; // 0x3aa8f8
  memRead2(THR, 0x50, x0, x3); // 0x3aa908
  x0 = x0 + 0x10; // 0x3aa90c
  if (x3 <= x0) {
    // frame: q1, q3, mem(SP, -0x20)! // 0x3ab260
    // frame: x1, x2, mem(SP, -0x10)! // 0x3ab264
    AllocationStub__Double() /* 0x61f878 */; // 0x3ab268
    // frame: x1, x2, mem(SP), 0x10 // 0x3ab26c
    // frame: q1, q3, mem(SP), 0x20 // 0x3ab270
  } else {
    memSet(THR, 0x50, x0); // 0x3aa918
    x0 = x0 - 0xf; // 0x3aa91c
    x3 = (x3 & 0xffff) | 0x30000; // 0x3aa924
    memSet(x0, -1, x3); // 0x3aa928
  }
  memSet(x0, 7, d1); // 0x3aa92c
  memSet(x2, 0x23, w0); // 0x3aa930
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3aa93c
  w16 = mem(x2, -1); // 0x3aa934
  w17 = mem(x0, -1); // 0x3aa938
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x3aa934
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3aa938
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x3aa948
  }
  d0 = 27.00000000 /* bits */; // 0x3aa94c
  d1 = (d3 - (27.00000000 /* bits */)) /* float */; // 0x3aa950
  memRead2(THR, 0x50, x0, x3); // 0x3aa954
  x0 = x0 + 0x10; // 0x3aa958
  if (x3 <= x0) {
    local_m10 = q1; // 0x3ab278
    // frame: x1, x2, mem(SP, -0x10)! // 0x3ab27c
    AllocationStub__Double() /* 0x61f878 */; // 0x3ab280
    // frame: x1, x2, mem(SP), 0x10 // 0x3ab284
    q1 = local_0; // 0x3ab288
  } else {
    memSet(THR, 0x50, x0); // 0x3aa964
    x0 = x0 - 0xf; // 0x3aa968
    x3 = (x3 & 0xffff) | 0x30000; // 0x3aa970
    memSet(x0, -1, x3); // 0x3aa974
  }
  memSet(x0, 7, d1); // 0x3aa978
  memSet(x2, 0x27, w0); // 0x3aa97c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3aa988
  w16 = mem(x2, -1); // 0x3aa980
  w17 = mem(x0, -1); // 0x3aa984
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x3aa980
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3aa984
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x3aa994
  }
  AllocationStub_Color() /* 0x31d844 */; // 0x3aa998
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3aa9a0
  x1 = x0; // 0x3aa99c
  local_m20 = x1; // 0x3aa9a4
  memSet(x1, 0x27, w0); // 0x3aa9a8
  d0 = 1.00000000 /* bits */; // 0x3aa9ac
  memSet(x1, 7, d0); // 0x3aa9b0
  d1 = 4603614861448139603; // 0x3aa9b8
  x17 = PP + 0x10000; // 0x3aa9b4
  memSet(x1, 0xf, d1); // 0x3aa9bc
  d2 = 4598546104220471633; // 0x3aa9c4
  x17 = PP + 0x10000; // 0x3aa9c0
  memSet(x1, 0x17, d2); // 0x3aa9c8
  d3 = 4583569427812588572; // 0x3aa9d0
  x17 = PP + 0x10000; // 0x3aa9cc
  memSet(x1, 0x1f, d3); // 0x3aa9d4
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3aa9d8
  x0 = NULL + 0x20; // 0x3aa9e0
  x2 = x0; // 0x3aa9dc
  local_m28 = x2; // 0x3aa9e4
  memSet(x2, 7, w0); // 0x3aa9e8
  x1 = local_m20; // 0x3aa9ec
  memSet(x2, 0xb, w1); // 0x3aa9f0
  x1 = mem((PP + 0xf000), 0xb90) /* Double */; // 0x3aa9f8
  memSet(x2, 0x1f, w1); // 0x3aa9fc
  x1 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x3aaa04
  memSet(x2, 0x23, w1); // 0x3aaa08
  x1 = "virtual_party_lucky_pocket_send_popup_send_time" /* pp+0xc9c8 */; // 0x3aaa10
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3aaa14
  getString() /* 0x3a1dcc */; // 0x3aaa18
  x1 = "settings_soul_coin" /* pp+0xc900 */; // 0x3aaa20
  local_m20 = x0; // 0x3aaa24
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3aaa28
  getString() /* 0x3a1dcc */; // 0x3aaa2c
  x1 = "virtual_party_lucky_pocket_send_popup_quantity" /* pp+0xc9b8 */; // 0x3aaa34
  local_m30 = x0; // 0x3aaa38
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3aaa3c
  getString() /* 0x3a1dcc */; // 0x3aaa40
  local_m38 = x0; // 0x3aaa44
  AllocationStub_Color() /* 0x31d844 */; // 0x3aaa48
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3aaa50
  x1 = x0; // 0x3aaa4c
  local_m40 = x1; // 0x3aaa54
  memSet(x1, 0x27, w0); // 0x3aaa58
  d0 = 1.00000000 /* bits */; // 0x3aaa5c
  memSet(x1, 7, d0); // 0x3aaa60
  d1 = 4603614861448139603; // 0x3aaa68
  x17 = PP + 0x10000; // 0x3aaa64
  memSet(x1, 0xf, d1); // 0x3aaa6c
  d2 = 4598546104220471633; // 0x3aaa74
  x17 = PP + 0x10000; // 0x3aaa70
  memSet(x1, 0x17, d2); // 0x3aaa78
  d3 = 4583569427812588572; // 0x3aaa80
  x17 = PP + 0x10000; // 0x3aaa7c
  memSet(x1, 0x1f, d3); // 0x3aaa84
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3aaa88
  x0 = NULL + 0x20; // 0x3aaa90
  x1 = x0; // 0x3aaa8c
  local_m48 = x1; // 0x3aaa94
  memSet(x1, 7, w0); // 0x3aaa98
  x2 = local_m40; // 0x3aaa9c
  memSet(x1, 0xb, w2); // 0x3aaaa0
  x2 = mem((PP + 0xf000), 0x208) /* Double */; // 0x3aaaa8
  memSet(x1, 0x1f, w2); // 0x3aaaac
  x3 = mem((PP + 0xf000), 0xe88) /* Obj!FontWeight@1202b  */; // 0x3aaab4
  memSet(x1, 0x23, w3); // 0x3aaab8
  AllocationStub_Color() /* 0x31d844 */; // 0x3aaabc
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3aaac4
  x1 = x0; // 0x3aaac0
  local_m40 = x1; // 0x3aaac8
  memSet(x1, 0x27, w0); // 0x3aaacc
  d0 = 1.00000000 /* bits */; // 0x3aaad0
  memSet(x1, 7, d0); // 0x3aaad4
  d1 = 4603614861448139603; // 0x3aaadc
  x17 = PP + 0x10000; // 0x3aaad8
  memSet(x1, 0xf, d1); // 0x3aaae0
  d1 = 4598546104220471633; // 0x3aaae8
  x17 = PP + 0x10000; // 0x3aaae4
  memSet(x1, 0x17, d1); // 0x3aaaec
  d1 = 4583569427812588572; // 0x3aaaf4
  x17 = PP + 0x10000; // 0x3aaaf0
  memSet(x1, 0x1f, d1); // 0x3aaaf8
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3aaafc
  x1 = NULL + 0x20; // 0x3aab00
  memSet(x0, 7, w1); // 0x3aab04
  x2 = local_m40; // 0x3aab08
  memSet(x0, 0xb, w2); // 0x3aab0c
  x2 = mem((PP + 0xf000), 0x208) /* Double */; // 0x3aab14
  memSet(x0, 0x1f, w2); // 0x3aab18
  x2 = mem((PP + 0xf000), 0xe88) /* Obj!FontWeight@1202b  */; // 0x3aab20
  memSet(x0, 0x23, w2); // 0x3aab24
  x2 = local_m18; // 0x3aab28
  memSet(x2, 0x2b, w0); // 0x3aab2c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3aab38
  w16 = mem(x2, -1); // 0x3aab30
  w17 = mem(x0, -1); // 0x3aab34
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x3aab30
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3aab34
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x3aab44
  }
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3aab48
  local_m40 = x0; // 0x3aab4c
  memSet(x0, 7, xzr); // 0x3aab50
  d0 = 4629981891913580544; // 0x3aab54
  memSet(x0, 0xf, d0); // 0x3aab58
  memSet(x0, 0x17, xzr); // 0x3aab5c
  memSet(x0, 0x1f, xzr); // 0x3aab60
  x1 = "virtual_party_lucky_pocket_send_popup_send_history" /* pp+0xc9d8 */; // 0x3aab68
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3aab6c
  getString() /* 0x3a1dcc */; // 0x3aab70
  local_m50 = x0; // 0x3aab74
  AllocationStub_Text() /* 0x393bf8 */; // 0x3aab78
  x0 = local_m50; // 0x3aab80
  x2 = x0; // 0x3aab7c
  local_m58 = x2; // 0x3aab84
  memSet(x2, 0xb, w0); // 0x3aab88
  x0 = local_m28; // 0x3aab8c
  memSet(x2, 0x13, w0); // 0x3aab90
  x1 = NULL + 0x30; // 0x3aab94
  backButton() /* 0x3ab5e4 */; // 0x3aab98
  x1 = NULL; // 0x3aab9c
  x2 = 4; // 0x3aaba0
  local_m28 = x0; // 0x3aaba4
  sub_0x61f920(); // 0x3aaba8
  x0 = local_m58; // 0x3aabb0
  x2 = x0; // 0x3aabac
  local_m50 = x2; // 0x3aabb4
  memSet(x2, 0xf, w0); // 0x3aabb8
  x0 = local_m28; // 0x3aabbc
  memSet(x2, 0x13, w0); // 0x3aabc0
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3aabc4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3aabc8
  x0 = local_m50; // 0x3aabd0
  x1 = x0; // 0x3aabcc
  local_m28 = x1; // 0x3aabd4
  memSet(x1, 0xf, w0); // 0x3aabd8
  x2 = 4; // 0x3aabdc
  memSet(x1, 0xb, w2); // 0x3aabe0
  AllocationStub_Stack() /* 0x39e6f4 */; // 0x3aabe4
  x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x3aabf0
  x1 = x0; // 0x3aabe8
  local_m50 = x1; // 0x3aabf4
  memSet(x1, 0xf, w0); // 0x3aabf8
  x0 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x3aac00
  memSet(x1, 0x17, w0); // 0x3aac04
  x0 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x3aac0c
  memSet(x1, 0x1b, w0); // 0x3aac10
  x0 = local_m28; // 0x3aac14
  memSet(x1, 0xb, w0); // 0x3aac18
  AllocationStub_Container() /* 0x391a04 */; // 0x3aac1c
  local_m28 = x0; // 0x3aac20
  BARRIER = local_m50; // 0x3aac24
  local_0 = BARRIER; // 0x3aac28
  x1 = x0; // 0x3aac2c
  x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x3aac34
  Container_ctor() /* 0x391490 */; // 0x3aac38
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3aac3c
  d0 = 14.00000000 /* bits */; // 0x3aac40
  local_m50 = x0; // 0x3aac44
  memSet(x0, 7, d0); // 0x3aac48
  d1 = 21.00000000 /* bits */; // 0x3aac4c
  memSet(x0, 0xf, d1); // 0x3aac50
  memSet(x0, 0x17, d0); // 0x3aac54
  memSet(x0, 0x1f, xzr); // 0x3aac58
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3aac5c
  local_m58 = x0; // 0x3aac60
  memSet(x0, 7, xzr); // 0x3aac64
  memSet(x0, 0xf, xzr); // 0x3aac68
  memSet(x0, 0x17, xzr); // 0x3aac6c
  memSet(x0, 0x1f, xzr); // 0x3aac70
  AllocationStub_Color() /* 0x31d844 */; // 0x3aac74
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3aac7c
  x1 = x0; // 0x3aac78
  local_m60 = x1; // 0x3aac80
  memSet(x1, 0x27, w0); // 0x3aac84
  d0 = 1.00000000 /* bits */; // 0x3aac88
  memSet(x1, 7, d0); // 0x3aac8c
  memSet(x1, 0xf, d0); // 0x3aac90
  d1 = 4606617261199719934; // 0x3aac98
  x17 = PP + 0x10000; // 0x3aac94
  memSet(x1, 0x17, d1); // 0x3aac9c
  d2 = 4600312221721401240; // 0x3aaca4
  x17 = PP + 0x10000; // 0x3aaca0
  memSet(x1, 0x1f, d2); // 0x3aaca8
  AllocationStub_Container() /* 0x391a04 */; // 0x3aacac
  local_m68 = x0; // 0x3aacb0
  BARRIER = local_m58; // 0x3aacb4
  LR = mem(PP, 0x53b0) /* Double */; // 0x3aacb8
  // frame: LR, BARRIER, mem(SP, 8) // 0x3aacbc
  BARRIER = local_m60; // 0x3aacc0
  local_0 = BARRIER; // 0x3aacc4
  x1 = x0; // 0x3aacc8
  x4 = mem((PP + 0x10000), 0x258) /* ImmutableArray */; // 0x3aacd0
  Container_ctor() /* 0x391490 */; // 0x3aacd4
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3aacd8
  local_m58 = x0; // 0x3aacdc
  memSet(x0, 7, xzr); // 0x3aace0
  memSet(x0, 0xf, xzr); // 0x3aace4
  memSet(x0, 0x17, xzr); // 0x3aace8
  memSet(x0, 0x1f, xzr); // 0x3aacec
  AllocationStub_Text() /* 0x393bf8 */; // 0x3aacf0
  x0 = local_m20; // 0x3aacf8
  x1 = x0; // 0x3aacf4
  local_m60 = x1; // 0x3aacfc
  memSet(x1, 0xb, w0); // 0x3aad00
  x0 = local_m48; // 0x3aad04
  memSet(x1, 0x13, w0); // 0x3aad08
  x2 = mem(PP, 0x53a8) /* Obj!TextAlign@12316  */; // 0x3aad0c
  memSet(x1, 0x1b, w2); // 0x3aad10
  AllocationStub_Container() /* 0x391a04 */; // 0x3aad14
  local_m20 = x0; // 0x3aad18
  BARRIER = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x3aad20
  LR = local_m10; // 0x3aad24
  // frame: LR, BARRIER, mem(SP, 8) // 0x3aad28
  BARRIER = local_m60; // 0x3aad2c
  local_0 = BARRIER; // 0x3aad30
  x1 = x0; // 0x3aad34
  x4 = mem((PP + 0x12000), 0x308) /* ImmutableArray */; // 0x3aad3c
  Container_ctor() /* 0x391490 */; // 0x3aad40
  AllocationStub_Text() /* 0x393bf8 */; // 0x3aad44
  x0 = local_m30; // 0x3aad4c
  x1 = x0; // 0x3aad48
  local_m60 = x1; // 0x3aad50
  memSet(x1, 0xb, w0); // 0x3aad54
  x0 = local_m48; // 0x3aad58
  memSet(x1, 0x13, w0); // 0x3aad5c
  x2 = mem(PP, 0x53a8) /* Obj!TextAlign@12316  */; // 0x3aad60
  memSet(x1, 0x1b, w2); // 0x3aad64
  AllocationStub_Container() /* 0x391a04 */; // 0x3aad68
  local_m30 = x0; // 0x3aad6c
  BARRIER = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x3aad74
  LR = local_m10; // 0x3aad78
  // frame: LR, BARRIER, mem(SP, 8) // 0x3aad7c
  BARRIER = local_m60; // 0x3aad80
  local_0 = BARRIER; // 0x3aad84
  x1 = x0; // 0x3aad88
  x4 = mem((PP + 0x12000), 0x308) /* ImmutableArray */; // 0x3aad90
  Container_ctor() /* 0x391490 */; // 0x3aad94
  AllocationStub_Text() /* 0x393bf8 */; // 0x3aad98
  x0 = local_m38; // 0x3aada0
  x1 = x0; // 0x3aad9c
  local_m60 = x1; // 0x3aada4
  memSet(x1, 0xb, w0); // 0x3aada8
  x0 = local_m48; // 0x3aadac
  memSet(x1, 0x13, w0); // 0x3aadb0
  x0 = mem(PP, 0x53a8) /* Obj!TextAlign@12316  */; // 0x3aadb4
  memSet(x1, 0x1b, w0); // 0x3aadb8
  AllocationStub_Container() /* 0x391a04 */; // 0x3aadbc
  local_m38 = x0; // 0x3aadc0
  BARRIER = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x3aadc8
  LR = local_m10; // 0x3aadcc
  // frame: LR, BARRIER, mem(SP, 8) // 0x3aadd0
  BARRIER = local_m60; // 0x3aadd4
  local_0 = BARRIER; // 0x3aadd8
  x1 = x0; // 0x3aaddc
  x4 = mem((PP + 0x12000), 0x308) /* ImmutableArray */; // 0x3aade4
  Container_ctor() /* 0x391490 */; // 0x3aade8
  x1 = NULL; // 0x3aadec
  x2 = 6; // 0x3aadf0
  sub_0x61f920(); // 0x3aadf4
  x0 = local_m20; // 0x3aadfc
  x2 = x0; // 0x3aadf8
  local_m10 = x2; // 0x3aae00
  memSet(x2, 0xf, w0); // 0x3aae04
  x0 = local_m30; // 0x3aae08
  memSet(x2, 0x13, w0); // 0x3aae0c
  x0 = local_m38; // 0x3aae10
  memSet(x2, 0x17, w0); // 0x3aae14
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3aae18
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3aae1c
  x0 = local_m10; // 0x3aae24
  x1 = x0; // 0x3aae20
  local_m20 = x1; // 0x3aae28
  memSet(x1, 0xf, w0); // 0x3aae2c
  x0 = 6; // 0x3aae30
  memSet(x1, 0xb, w0); // 0x3aae34
  AllocationStub_Row() /* 0x3a1414 */; // 0x3aae38
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x3aae40
  x1 = x0; // 0x3aae3c
  local_m10 = x1; // 0x3aae44
  memSet(x1, 0xf, w0); // 0x3aae48
  x0 = mem((PP + 0x11000), 0xa90) /* Obj!MainAxisAlignment@1226d  */; // 0x3aae50
  memSet(x1, 0x13, w0); // 0x3aae54
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3aae5c
  memSet(x1, 0x17, w0); // 0x3aae60
  x2 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3aae68
  memSet(x1, 0x1b, w2); // 0x3aae6c
  x3 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3aae74
  memSet(x1, 0x23, w3); // 0x3aae78
  x4 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3aae80
  memSet(x1, 0x2b, w4); // 0x3aae84
  memSet(x1, 0x2f, xzr); // 0x3aae88
  x5 = local_m20; // 0x3aae8c
  memSet(x1, 0xb, w5); // 0x3aae90
  AllocationStub_Container() /* 0x391a04 */; // 0x3aae94
  local_m20 = x0; // 0x3aae98
  BARRIER = mem((PP + 0xf000), 0x310) /* Double */; // 0x3aaea0
  LR = local_m58; // 0x3aaea4
  // frame: LR, BARRIER, mem(SP, 8) // 0x3aaea8
  BARRIER = local_m10; // 0x3aaeac
  local_0 = BARRIER; // 0x3aaeb0
  x1 = x0; // 0x3aaeb4
  x4 = mem((PP + 0x11000), 0xab0) /* ImmutableArray */; // 0x3aaebc
  Container_ctor() /* 0x391490 */; // 0x3aaec0
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3aaec4
  local_m10 = x0; // 0x3aaec8
  memSet(x0, 7, xzr); // 0x3aaecc
  memSet(x0, 0xf, xzr); // 0x3aaed0
  memSet(x0, 0x17, xzr); // 0x3aaed4
  memSet(x0, 0x1f, xzr); // 0x3aaed8
  AllocationStub_Color() /* 0x31d844 */; // 0x3aaedc
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3aaee4
  x1 = x0; // 0x3aaee0
  local_m30 = x1; // 0x3aaee8
  memSet(x1, 0x27, w0); // 0x3aaeec
  d0 = 1.00000000 /* bits */; // 0x3aaef0
  memSet(x1, 7, d0); // 0x3aaef4
  memSet(x1, 0xf, d0); // 0x3aaef8
  d0 = 4606617261199719934; // 0x3aaf00
  x17 = PP + 0x10000; // 0x3aaefc
  memSet(x1, 0x17, d0); // 0x3aaf04
  d0 = 4600312221721401240; // 0x3aaf0c
  x17 = PP + 0x10000; // 0x3aaf08
  memSet(x1, 0x1f, d0); // 0x3aaf10
  AllocationStub_Container() /* 0x391a04 */; // 0x3aaf14
  local_m38 = x0; // 0x3aaf18
  BARRIER = local_m10; // 0x3aaf1c
  LR = mem(PP, 0x53b0) /* Double */; // 0x3aaf20
  // frame: LR, BARRIER, mem(SP, 8) // 0x3aaf24
  BARRIER = local_m30; // 0x3aaf28
  local_0 = BARRIER; // 0x3aaf2c
  x1 = x0; // 0x3aaf30
  x4 = mem((PP + 0x10000), 0x258) /* ImmutableArray */; // 0x3aaf38
  Container_ctor() /* 0x391490 */; // 0x3aaf3c
  w3 = mem((local_m8), 0xf); // 0x3aaf44
  x0 = local_m8; // 0x3aaf40
  x3 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3aaf48
  local_m10 = x3; // 0x3aaf4c
  x1 = mem((PP + 0x12000), 0x310) /* Function */; // 0x3aaf54
  x2 = NULL; // 0x3aaf58
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3aaf5c
  local_m30 = x0; // 0x3aaf60
  AllocationStub_CustomFooter() /* 0x3ab5b8 */; // 0x3aaf64
  x0 = local_m30; // 0x3aaf6c
  x3 = x0; // 0x3aaf68
  local_m48 = x3; // 0x3aaf70
  memSet(x3, 0x1b, w0); // 0x3aaf74
  x0 = mem((PP + 0xf000), 0x898) /* Obj!LoadStyle@12174  */; // 0x3aaf7c
  memSet(x3, 0xb, w0); // 0x3aaf80
  d0 = 4631248529308778496; // 0x3aaf88
  x17 = PP + 0xf000; // 0x3aaf84
  memSet(x3, 0xf, d0); // 0x3aaf8c
  w0 = mem((((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x3aaf9c
  w1 = mem((local_m8), 0xb); // 0x3aaf94
  x0 = ((mem((((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x3aafa0
  x1 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3aaf98
  w1 = mem(x0, 0xb); // 0x3aafa4
  x0 = (((mem(x0, 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x3aafa8
  x1 = (mem(x0, 0xb)) & 0xffffffff; // 0x3aafa4
  x2 = local_m18; // 0x3aafac
  local_m70 = x0; // 0x3aafb0
  x1 = mem((PP + 0x12000), 0x318) /* Function */; // 0x3aafb8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3aafbc
  local_m8 = x0; // 0x3aafc0
  AllocationStub_ListView() /* 0x3ab5ac */; // 0x3aafc4
  x1 = x0; // 0x3aafc8
  x2 = local_m8; // 0x3aafcc
  x3 = local_m70; // 0x3aafd0
  local_m8 = x0; // 0x3aafd4
  x4 = mem(PP, 0x2e0) /* ImmutableArray */; // 0x3aafd8
  ListView_ctor_builder() /* 0x3ab2bc */; // 0x3aafdc
  AllocationStub_SmartRefresher() /* 0x3ab290 */; // 0x3aafe0
  x0 = local_m10; // 0x3aafe8
  x3 = x0; // 0x3aafe4
  local_m30 = x3; // 0x3aafec
  memSet(x3, 0x2b, w0); // 0x3aaff0
  x0 = local_m8; // 0x3aaff4
  memSet(x3, 0xb, w0); // 0x3aaff8
  x0 = local_m48; // 0x3aaffc
  memSet(x3, 0xf, w0); // 0x3ab000
  x0 = NULL + 0x30; // 0x3ab004
  memSet(x3, 0x1b, w0); // 0x3ab008
  x1 = NULL + 0x20; // 0x3ab00c
  memSet(x3, 0x13, w1); // 0x3ab010
  memSet(x3, 0x17, w0); // 0x3ab014
  x1 = mem((PP + 0x12000), 0x320) /* Function */; // 0x3ab020
  x2 = local_m18; // 0x3ab018
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3ab024
  x0 = local_m30; // 0x3ab02c
  x1 = x0; // 0x3ab028
  memSet(x0, 0x23, w1); // 0x3ab030
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x3ab038
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x3ab03c
  x0 = 1; // 0x3ab044
  x3 = x0; // 0x3ab040
  local_m8 = x3; // 0x3ab048
  memSet(x3, 0x13, x0); // 0x3ab04c
  x4 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x3ab054
  memSet(x3, 0x1b, w4); // 0x3ab058
  x1 = local_m30; // 0x3ab05c
  memSet(x3, 0xb, w1); // 0x3ab060
  x1 = NULL; // 0x3ab064
  x2 = 8; // 0x3ab068
  sub_0x61f920(); // 0x3ab06c
  x0 = local_m68; // 0x3ab074
  x2 = x0; // 0x3ab070
  local_m10 = x2; // 0x3ab078
  memSet(x2, 0xf, w0); // 0x3ab07c
  x0 = local_m20; // 0x3ab080
  memSet(x2, 0x13, w0); // 0x3ab084
  x0 = local_m38; // 0x3ab088
  memSet(x2, 0x17, w0); // 0x3ab08c
  x0 = local_m8; // 0x3ab090
  memSet(x2, 0x1b, w0); // 0x3ab094
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3ab098
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3ab09c
  x0 = local_m10; // 0x3ab0a4
  x1 = x0; // 0x3ab0a0
  local_m8 = x1; // 0x3ab0a8
  memSet(x1, 0xf, w0); // 0x3ab0ac
  x0 = 8; // 0x3ab0b0
  memSet(x1, 0xb, w0); // 0x3ab0b4
  AllocationStub_Column() /* 0x39310c */; // 0x3ab0b8
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3ab0c4
  x1 = x0; // 0x3ab0bc
  local_m10 = x1; // 0x3ab0c8
  memSet(x1, 0xf, w0); // 0x3ab0cc
  x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3ab0d4
  memSet(x1, 0x13, w2); // 0x3ab0d8
  x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3ab0e0
  memSet(x1, 0x17, w3); // 0x3ab0e4
  x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3ab0ec
  memSet(x1, 0x1b, w4); // 0x3ab0f0
  x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3ab0f8
  memSet(x1, 0x23, w5); // 0x3ab0fc
  x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3ab104
  memSet(x1, 0x2b, w6); // 0x3ab108
  memSet(x1, 0x2f, xzr); // 0x3ab10c
  x7 = local_m8; // 0x3ab110
  memSet(x1, 0xb, w7); // 0x3ab114
  AllocationStub_Container() /* 0x391a04 */; // 0x3ab118
  local_m8 = x0; // 0x3ab11c
  BARRIER = local_m50; // 0x3ab120
  LR = local_m10; // 0x3ab124
  // frame: LR, BARRIER, mem(SP) // 0x3ab128
  x1 = x0; // 0x3ab12c
  x4 = mem((PP + 0xf000), 0x200) /* ImmutableArray */; // 0x3ab134
  Container_ctor() /* 0x391490 */; // 0x3ab138
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x3ab140
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x3ab144
  x0 = 1; // 0x3ab14c
  x3 = x0; // 0x3ab148
  local_m10 = x3; // 0x3ab150
  memSet(x3, 0x13, x0); // 0x3ab154
  x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x3ab15c
  memSet(x3, 0x1b, w0); // 0x3ab160
  x0 = local_m8; // 0x3ab164
  memSet(x3, 0xb, w0); // 0x3ab168
  x1 = NULL; // 0x3ab16c
  x2 = 4; // 0x3ab170
  sub_0x61f920(); // 0x3ab174
  x0 = local_m28; // 0x3ab17c
  x2 = x0; // 0x3ab178
  local_m8 = x2; // 0x3ab180
  memSet(x2, 0xf, w0); // 0x3ab184
  x0 = local_m10; // 0x3ab188
  memSet(x2, 0x13, w0); // 0x3ab18c
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3ab190
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3ab194
  x0 = local_m8; // 0x3ab19c
  x1 = x0; // 0x3ab198
  local_m10 = x1; // 0x3ab1a0
  memSet(x1, 0xf, w0); // 0x3ab1a4
  x0 = 4; // 0x3ab1a8
  memSet(x1, 0xb, w0); // 0x3ab1ac
  AllocationStub_Column() /* 0x39310c */; // 0x3ab1b0
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3ab1bc
  x1 = x0; // 0x3ab1b4
  local_m8 = x1; // 0x3ab1c0
  memSet(x1, 0xf, w0); // 0x3ab1c4
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3ab1cc
  memSet(x1, 0x13, w0); // 0x3ab1d0
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3ab1d8
  memSet(x1, 0x17, w0); // 0x3ab1dc
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3ab1e4
  memSet(x1, 0x1b, w0); // 0x3ab1e8
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3ab1f0
  memSet(x1, 0x23, w0); // 0x3ab1f4
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3ab1fc
  memSet(x1, 0x2b, w0); // 0x3ab200
  memSet(x1, 0x2f, xzr); // 0x3ab204
  x0 = local_m10; // 0x3ab208
  memSet(x1, 0xb, w0); // 0x3ab20c
  AllocationStub_Container() /* 0x391a04 */; // 0x3ab210
  local_m10 = x0; // 0x3ab214
  BARRIER = local_m40; // 0x3ab218
  LR = local_m8; // 0x3ab21c
  // frame: LR, BARRIER, mem(SP) // 0x3ab220
  x1 = x0; // 0x3ab224
  x4 = mem((PP + 0xf000), 0x200) /* ImmutableArray */; // 0x3ab22c
  Container_ctor() /* 0x391490 */; // 0x3ab230
  SP = FP; // 0x3ab238
  x0 = local_m10; // 0x3ab234
  // frame: FP, LR, mem(SP), 0x10 // 0x3ab23c
  return;
}

// PagePartyLuckyBagHistoryList_anon_closure
// raw disassembly:
//  0x3ab72c: stp FP, LR, [SP, #-0x10]!
//  0x3ab730: mov FP, SP
//  0x3ab734: sub SP, SP, #8
//  0x3ab738: ldr x0, [FP, #0x10]
//  0x3ab73c: ldur w1, [x0, #0x17]
//  0x3ab740: add x1, x1, HEAP, lsl #32
//  0x3ab744: ldr BARRIER, [THR, #0x38]
//  0x3ab748: cmp SP, BARRIER
//  0x3ab74c: b.ls #0x3ab78c
//  0x3ab750: ldur w2, [x1, #0xf]
//  0x3ab754: add x2, x2, HEAP, lsl #32
//  0x3ab758: ldur w0, [x2, #0xb]
//  0x3ab75c: add x0, x0, HEAP, lsl #32
//  0x3ab760: stur x0, [FP, #-8]
//  0x3ab764: add x1, PP, #0x12, lsl #12
//  0x3ab768: ldr x1, [x1, #0x328]
//  0x3ab76c: bl #0x61ec54
//  0x3ab770: ldur x1, [FP, #-8]
//  0x3ab774: mov x2, x0
//  0x3ab778: bl #0x3ab794
//  0x3ab77c: mov x0, NULL
//  0x3ab780: mov SP, FP
//  0x3ab784: ldp FP, LR, [SP], #0x10
//  0x3ab788: ret 
//  0x3ab78c: bl #0x61fa28
//  0x3ab790: b #0x3ab750
//
dynamic PagePartyLuckyBagHistoryList_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ab72c
  BARRIER = mem(THR, 0x38); // 0x3ab744
  // frame: FP = SP // 0x3ab730
  // frame: SP = SP - 8 // 0x3ab734
  w1 = mem((local_10), 0x17); // 0x3ab73c
  x0 = local_10; // 0x3ab738
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3ab740
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ab78c
  }
  w0 = mem(((w2 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x3ab758
  x0 = ((mem(((w2 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3ab75c
  x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x3ab754
  local_m8 = x0; // 0x3ab760
  x1 = mem((PP + 0x12000), 0x328) /* Function */; // 0x3ab768
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3ab76c
  x1 = local_m8; // 0x3ab770
  x2 = x0; // 0x3ab774
  LuckyBagHistoryListItemNotifier_requestLuckyBagHistoryList() /* 0x3ab794 */; // 0x3ab778
  SP = FP; // 0x3ab780
  x0 = NULL; // 0x3ab77c
  // frame: FP, LR, mem(SP), 0x10 // 0x3ab784
  return;
}

// PagePartyLuckyBagHistoryList_onLoaded
// raw disassembly:
//  0x3adb08: stp FP, LR, [SP, #-0x10]!
//  0x3adb0c: mov FP, SP
//  0x3adb10: ldr x0, [FP, #0x20]
//  0x3adb14: ldur w1, [x0, #0x17]
//  0x3adb18: add x1, x1, HEAP, lsl #32
//  0x3adb1c: ldr BARRIER, [THR, #0x38]
//  0x3adb20: cmp SP, BARRIER
//  0x3adb24: b.ls #0x3adb40
//  0x3adb28: ldr x2, [FP, #0x18]
//  0x3adb2c: ldr x3, [FP, #0x10]
//  0x3adb30: bl #0x3adb48
//  0x3adb34: mov SP, FP
//  0x3adb38: ldp FP, LR, [SP], #0x10
//  0x3adb3c: ret 
//  0x3adb40: bl #0x61fa28
//  0x3adb44: b #0x3adb28
//
dynamic PagePartyLuckyBagHistoryList_onLoaded() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3adb08
  BARRIER = mem(THR, 0x38); // 0x3adb1c
  // frame: FP = SP // 0x3adb0c
  w1 = mem((local_20), 0x17); // 0x3adb14
  x0 = local_20; // 0x3adb10
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3adb18
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3adb40
  }
  x2 = local_18; // 0x3adb28
  x3 = local_10; // 0x3adb2c
  PagePartyLuckyBagHistoryList_onLoaded() /* 0x3adb48 */; // 0x3adb30
  SP = FP; // 0x3adb34
  // frame: FP, LR, mem(SP), 0x10 // 0x3adb38
  return;
}

// PagePartyLuckyBagHistoryList_onLoaded_2
// raw disassembly:
//  0x3adb48: stp FP, LR, [SP, #-0x10]!
//  0x3adb4c: mov FP, SP
//  0x3adb50: ldr BARRIER, [THR, #0x38]
//  0x3adb54: cmp SP, BARRIER
//  0x3adb58: b.ls #0x3adbac
//  0x3adb5c: tbnz w2, #4, #0x3adb8c
//  0x3adb60: tbnz w3, #4, #0x3adb78
//  0x3adb64: ldur w0, [x1, #0xf]
//  0x3adb68: add x0, x0, HEAP, lsl #32
//  0x3adb6c: mov x1, x0
//  0x3adb70: bl #0x3adfd4
//  0x3adb74: b #0x3adb9c
//  0x3adb78: ldur w0, [x1, #0xf]
//  0x3adb7c: add x0, x0, HEAP, lsl #32
//  0x3adb80: mov x1, x0
//  0x3adb84: bl #0x3ade48
//  0x3adb88: b #0x3adb9c
//  0x3adb8c: ldur w0, [x1, #0xf]
//  0x3adb90: add x0, x0, HEAP, lsl #32
//  0x3adb94: mov x1, x0
//  0x3adb98: bl #0x3adbb4
//  0x3adb9c: mov x0, NULL
//  0x3adba0: mov SP, FP
//  0x3adba4: ldp FP, LR, [SP], #0x10
//  0x3adba8: ret 
//  0x3adbac: bl #0x61fa28
//  0x3adbb0: b #0x3adb5c
//
dynamic PagePartyLuckyBagHistoryList_onLoaded_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3adb48
  BARRIER = mem(THR, 0x38); // 0x3adb50
  // frame: FP = SP // 0x3adb4c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3adbac
  }
  if (x2 & (1 << 4) != 0) {
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x3adb90
    x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x3adb94
    RefreshController_loadFailed() /* 0x3adbb4 */; // 0x3adb98
  } else {
    if (x3 & (1 << 4) != 0) {
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x3adb7c
      x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x3adb80
      RefreshController_loadComplete() /* 0x3ade48 */; // 0x3adb84
    } else {
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x3adb68
      x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x3adb6c
      RefreshController_loadNoData() /* 0x3adfd4 */; // 0x3adb70
    }
  }
  SP = FP; // 0x3adba0
  x0 = NULL; // 0x3adb9c
  // frame: FP, LR, mem(SP), 0x10 // 0x3adba4
  return;
}

// PagePartyLuckyBagHistoryList_anon_closure_2
// raw disassembly:
//  0x3ae160: stp FP, LR, [SP, #-0x10]!
//  0x3ae164: mov FP, SP
//  0x3ae168: sub SP, SP, #0x88
//  0x3ae16c: ldr x0, [FP, #0x20]
//  0x3ae170: ldur w2, [x0, #0x17]
//  0x3ae174: add x2, x2, HEAP, lsl #32
//  0x3ae178: stur x2, [FP, #-0x10]
//  0x3ae17c: ldr BARRIER, [THR, #0x38]
//  0x3ae180: cmp SP, BARRIER
//  0x3ae184: b.ls #0x3ae864
//  0x3ae188: ldur w0, [x2, #0xf]
//  0x3ae18c: add x0, x0, HEAP, lsl #32
//  0x3ae190: ldur w1, [x0, #0xb]
//  0x3ae194: add x1, x1, HEAP, lsl #32
//  0x3ae198: ldur w3, [x1, #0x2b]
//  0x3ae19c: add x3, x3, HEAP, lsl #32
//  0x3ae1a0: ldur w0, [x3, #0xb]
//  0x3ae1a4: ldr x1, [FP, #0x10]
//  0x3ae1a8: sbfx x4, x1, #1, #0x1f
//  0x3ae1ac: tbz w1, #0, #0x3ae1b4
//  0x3ae1b0: ldur x4, [x1, #7]
//  0x3ae1b4: sbfx x1, x0, #1, #0x1f
//  0x3ae1b8: mov x0, x1
//  0x3ae1bc: mov x1, x4
//  0x3ae1c0: cmp x1, x0
//  0x3ae1c4: b.hs #0x3ae86c
//  0x3ae1c8: ldur w0, [x3, #0xf]
//  0x3ae1cc: add x0, x0, HEAP, lsl #32
//  0x3ae1d0: add BARRIER, x0, x4, lsl #2
//  0x3ae1d4: ldur w1, [BARRIER, #0xf]
//  0x3ae1d8: add x1, x1, HEAP, lsl #32
//  0x3ae1dc: stur x1, [FP, #-8]
//  0x3ae1e0: bl #0x2e3578
//  0x3ae1e4: stur x0, [FP, #-0x38]
//  0x3ae1e8: stur xzr, [x0, #7]
//  0x3ae1ec: stur xzr, [x0, #0xf]
//  0x3ae1f0: stur xzr, [x0, #0x17]
//  0x3ae1f4: fmov d0, #8.00000000
//  0x3ae1f8: stur d0, [x0, #0x1f]
//  0x3ae1fc: ldur x1, [FP, #-0x10]
//  0x3ae200: ldur w2, [x1, #0x13]
//  0x3ae204: add x2, x2, HEAP, lsl #32
//  0x3ae208: stur x2, [FP, #-0x30]
//  0x3ae20c: ldur w3, [x1, #0x17]
//  0x3ae210: add x3, x3, HEAP, lsl #32
//  0x3ae214: ldur x4, [FP, #-8]
//  0x3ae218: stur x3, [FP, #-0x28]
//  0x3ae21c: ldur w5, [x4, #7]
//  0x3ae220: add x5, x5, HEAP, lsl #32
//  0x3ae224: ldr BARRIER, [PP, #0x40]
//  0x3ae228: cmp w5, w16
//  0x3ae22c: b.eq #0x3ae870
//  0x3ae230: stur x5, [FP, #-0x20]
//  0x3ae234: ldur w6, [x1, #0x2b]
//  0x3ae238: add x6, x6, HEAP, lsl #32
//  0x3ae23c: stur x6, [FP, #-0x18]
//  0x3ae240: bl #0x393bf8
//  0x3ae244: mov x1, x0
//  0x3ae248: ldur x0, [FP, #-0x20]
//  0x3ae24c: stur x1, [FP, #-0x40]
//  0x3ae250: stur w0, [x1, #0xb]
//  0x3ae254: ldur x0, [FP, #-0x18]
//  0x3ae258: stur w0, [x1, #0x13]
//  0x3ae25c: ldr x0, [PP, #0x53a8]
//  0x3ae260: stur w0, [x1, #0x1b]
//  0x3ae264: add x2, PP, #0xf, lsl #12
//  0x3ae268: ldr x2, [x2, #0x230]
//  0x3ae26c: stur w2, [x1, #0x2b]
//  0x3ae270: mov x3, #2
//  0x3ae274: stur w3, [x1, #0x37]
//  0x3ae278: bl #0x391a04
//  0x3ae27c: stur x0, [FP, #-0x18]
//  0x3ae280: add BARRIER, PP, #0x10, lsl #12
//  0x3ae284: ldr BARRIER, [BARRIER, #0xc70]
//  0x3ae288: ldur LR, [FP, #-0x38]
//  0x3ae28c: stp LR, BARRIER, [SP, #0x18]
//  0x3ae290: ldur BARRIER, [FP, #-0x30]
//  0x3ae294: ldur LR, [FP, #-0x28]
//  0x3ae298: stp LR, BARRIER, [SP, #8]
//  0x3ae29c: ldur BARRIER, [FP, #-0x40]
//  0x3ae2a0: str BARRIER, [SP]
//  0x3ae2a4: mov x1, x0
//  0x3ae2a8: add x4, PP, #0x12, lsl #12
//  0x3ae2ac: ldr x4, [x4, #0x330]
//  0x3ae2b0: bl #0x391490
//  0x3ae2b4: bl #0x2e3578
//  0x3ae2b8: stur x0, [FP, #-0x38]
//  0x3ae2bc: stur xzr, [x0, #7]
//  0x3ae2c0: stur xzr, [x0, #0xf]
//  0x3ae2c4: stur xzr, [x0, #0x17]
//  0x3ae2c8: fmov d0, #8.00000000
//  0x3ae2cc: stur d0, [x0, #0x1f]
//  0x3ae2d0: ldur x1, [FP, #-0x10]
//  0x3ae2d4: ldur w2, [x1, #0x23]
//  0x3ae2d8: add x2, x2, HEAP, lsl #32
//  0x3ae2dc: stur x2, [FP, #-0x20]
//  0x3ae2e0: bl #0x3949ec
//  0x3ae2e4: mov x1, x0
//  0x3ae2e8: ldur x0, [FP, #-0x20]
//  0x3ae2ec: stur x1, [FP, #-0x40]
//  0x3ae2f0: stur w0, [x1, #0xf]
//  0x3ae2f4: ldur x0, [FP, #-0x10]
//  0x3ae2f8: ldur w2, [x0, #0x1b]
//  0x3ae2fc: add x2, x2, HEAP, lsl #32
//  0x3ae300: stur x2, [FP, #-0x20]
//  0x3ae304: bl #0x3a142c
//  0x3ae308: mov x1, x0
//  0x3ae30c: add x0, PP, #0xf, lsl #12
//  0x3ae310: ldr x0, [x0, #0x248]
//  0x3ae314: stur x1, [FP, #-0x48]
//  0x3ae318: stur w0, [x1, #0xb]
//  0x3ae31c: add x0, PP, #0xf, lsl #12
//  0x3ae320: ldr x0, [x0, #0x170]
//  0x3ae324: stur w0, [x1, #0xf]
//  0x3ae328: ldur x2, [FP, #-0x20]
//  0x3ae32c: stur w2, [x1, #0x13]
//  0x3ae330: stur w2, [x1, #0x17]
//  0x3ae334: bl #0x3949ec
//  0x3ae338: mov x1, x0
//  0x3ae33c: add x0, PP, #0x12, lsl #12
//  0x3ae340: ldr x0, [x0, #0x338]
//  0x3ae344: stur x1, [FP, #-0x58]
//  0x3ae348: stur w0, [x1, #0xf]
//  0x3ae34c: ldur x0, [FP, #-8]
//  0x3ae350: ldur w2, [x0, #0xb]
//  0x3ae354: add x2, x2, HEAP, lsl #32
//  0x3ae358: ldr BARRIER, [PP, #0x40]
//  0x3ae35c: cmp w2, w16
//  0x3ae360: b.eq #0x3ae87c
//  0x3ae364: ldur x3, [FP, #-0x10]
//  0x3ae368: stur x2, [FP, #-0x50]
//  0x3ae36c: ldur w4, [x3, #0x2b]
//  0x3ae370: add x4, x4, HEAP, lsl #32
//  0x3ae374: stur x4, [FP, #-0x20]
//  0x3ae378: bl #0x393bf8
//  0x3ae37c: mov x2, x0
//  0x3ae380: ldur x0, [FP, #-0x50]
//  0x3ae384: stur x2, [FP, #-0x60]
//  0x3ae388: stur w0, [x2, #0xb]
//  0x3ae38c: ldur x0, [FP, #-0x20]
//  0x3ae390: stur w0, [x2, #0x13]
//  0x3ae394: ldr x0, [PP, #0x53a8]
//  0x3ae398: stur w0, [x2, #0x1b]
//  0x3ae39c: add x3, PP, #0xf, lsl #12
//  0x3ae3a0: ldr x3, [x3, #0x230]
//  0x3ae3a4: stur w3, [x2, #0x2b]
//  0x3ae3a8: mov x4, #2
//  0x3ae3ac: stur w4, [x2, #0x37]
//  0x3ae3b0: add x1, PP, #0xe, lsl #12
//  0x3ae3b4: ldr x1, [x1, #0xad0]
//  0x3ae3b8: bl #0x3a1420
//  0x3ae3bc: mov x3, x0
//  0x3ae3c0: mov x0, #1
//  0x3ae3c4: stur x3, [FP, #-0x20]
//  0x3ae3c8: stur x0, [x3, #0x13]
//  0x3ae3cc: add x4, PP, #0x10, lsl #12
//  0x3ae3d0: ldr x4, [x4, #0x950]
//  0x3ae3d4: stur w4, [x3, #0x1b]
//  0x3ae3d8: ldur x1, [FP, #-0x60]
//  0x3ae3dc: stur w1, [x3, #0xb]
//  0x3ae3e0: mov x1, NULL
//  0x3ae3e4: mov x2, #8
//  0x3ae3e8: bl #0x61f920
//  0x3ae3ec: mov x2, x0
//  0x3ae3f0: ldur x0, [FP, #-0x40]
//  0x3ae3f4: stur x2, [FP, #-0x50]
//  0x3ae3f8: stur w0, [x2, #0xf]
//  0x3ae3fc: ldur x0, [FP, #-0x48]
//  0x3ae400: stur w0, [x2, #0x13]
//  0x3ae404: ldur x0, [FP, #-0x58]
//  0x3ae408: stur w0, [x2, #0x17]
//  0x3ae40c: ldur x0, [FP, #-0x20]
//  0x3ae410: stur w0, [x2, #0x1b]
//  0x3ae414: ldr x1, [PP, #0x5c58]
//  0x3ae418: bl #0x61e854
//  0x3ae41c: mov x1, x0
//  0x3ae420: ldur x0, [FP, #-0x50]
//  0x3ae424: stur x1, [FP, #-0x20]
//  0x3ae428: stur w0, [x1, #0xf]
//  0x3ae42c: mov x0, #8
//  0x3ae430: stur w0, [x1, #0xb]
//  0x3ae434: bl #0x3a1414
//  0x3ae438: mov x1, x0
//  0x3ae43c: ldr x0, [PP, #0x5140]
//  0x3ae440: stur x1, [FP, #-0x40]
//  0x3ae444: stur w0, [x1, #0xf]
//  0x3ae448: add x2, PP, #0xe, lsl #12
//  0x3ae44c: ldr x2, [x2, #0xae0]
//  0x3ae450: stur w2, [x1, #0x13]
//  0x3ae454: add x3, PP, #0xe, lsl #12
//  0x3ae458: ldr x3, [x3, #0xae8]
//  0x3ae45c: stur w3, [x1, #0x17]
//  0x3ae460: add x4, PP, #0xe, lsl #12
//  0x3ae464: ldr x4, [x4, #0xb60]
//  0x3ae468: stur w4, [x1, #0x1b]
//  0x3ae46c: add x5, PP, #0xe, lsl #12
//  0x3ae470: ldr x5, [x5, #0xaf8]
//  0x3ae474: stur w5, [x1, #0x23]
//  0x3ae478: add x6, PP, #0xa, lsl #12
//  0x3ae47c: ldr x6, [x6, #0xa8]
//  0x3ae480: stur w6, [x1, #0x2b]
//  0x3ae484: stur xzr, [x1, #0x2f]
//  0x3ae488: ldur x7, [FP, #-0x20]
//  0x3ae48c: stur w7, [x1, #0xb]
//  0x3ae490: bl #0x391a04
//  0x3ae494: stur x0, [FP, #-0x20]
//  0x3ae498: add BARRIER, PP, #0x10, lsl #12
//  0x3ae49c: ldr BARRIER, [BARRIER, #0xc70]
//  0x3ae4a0: ldur LR, [FP, #-0x38]
//  0x3ae4a4: stp LR, BARRIER, [SP, #0x18]
//  0x3ae4a8: ldur BARRIER, [FP, #-0x30]
//  0x3ae4ac: ldur LR, [FP, #-0x28]
//  0x3ae4b0: stp LR, BARRIER, [SP, #8]
//  0x3ae4b4: ldur BARRIER, [FP, #-0x40]
//  0x3ae4b8: str BARRIER, [SP]
//  0x3ae4bc: mov x1, x0
//  0x3ae4c0: add x4, PP, #0x12, lsl #12
//  0x3ae4c4: ldr x4, [x4, #0x330]
//  0x3ae4c8: bl #0x391490
//  0x3ae4cc: bl #0x2e3578
//  0x3ae4d0: stur x0, [FP, #-0x40]
//  0x3ae4d4: stur xzr, [x0, #7]
//  0x3ae4d8: stur xzr, [x0, #0xf]
//  0x3ae4dc: stur xzr, [x0, #0x17]
//  0x3ae4e0: fmov d0, #4.00000000
//  0x3ae4e4: stur d0, [x0, #0x1f]
//  0x3ae4e8: ldur x1, [FP, #-0x10]
//  0x3ae4ec: ldur w2, [x1, #0x27]
//  0x3ae4f0: add x2, x2, HEAP, lsl #32
//  0x3ae4f4: stur x2, [FP, #-0x38]
//  0x3ae4f8: bl #0x3949ec
//  0x3ae4fc: mov x1, x0
//  0x3ae500: ldur x0, [FP, #-0x38]
//  0x3ae504: stur x1, [FP, #-0x48]
//  0x3ae508: stur w0, [x1, #0xf]
//  0x3ae50c: ldur x0, [FP, #-0x10]
//  0x3ae510: ldur w2, [x0, #0x1f]
//  0x3ae514: add x2, x2, HEAP, lsl #32
//  0x3ae518: stur x2, [FP, #-0x38]
//  0x3ae51c: bl #0x3a142c
//  0x3ae520: mov x1, x0
//  0x3ae524: add x0, PP, #0x12, lsl #12
//  0x3ae528: ldr x0, [x0, #0x340]
//  0x3ae52c: stur x1, [FP, #-0x50]
//  0x3ae530: stur w0, [x1, #0xb]
//  0x3ae534: add x0, PP, #0xf, lsl #12
//  0x3ae538: ldr x0, [x0, #0x170]
//  0x3ae53c: stur w0, [x1, #0xf]
//  0x3ae540: ldur x0, [FP, #-0x38]
//  0x3ae544: stur w0, [x1, #0x13]
//  0x3ae548: stur w0, [x1, #0x17]
//  0x3ae54c: ldur x0, [FP, #-8]
//  0x3ae550: ldur w2, [x0, #0xf]
//  0x3ae554: add x2, x2, HEAP, lsl #32
//  0x3ae558: ldr BARRIER, [PP, #0x40]
//  0x3ae55c: cmp w2, w16
//  0x3ae560: b.eq #0x3ae888
//  0x3ae564: ldur x0, [FP, #-0x10]
//  0x3ae568: stur x2, [FP, #-0x38]
//  0x3ae56c: ldur w3, [x0, #0x2b]
//  0x3ae570: add x3, x3, HEAP, lsl #32
//  0x3ae574: stur x3, [FP, #-8]
//  0x3ae578: bl #0x393bf8
//  0x3ae57c: mov x2, x0
//  0x3ae580: ldur x0, [FP, #-0x38]
//  0x3ae584: stur x2, [FP, #-0x10]
//  0x3ae588: stur w0, [x2, #0xb]
//  0x3ae58c: ldur x0, [FP, #-8]
//  0x3ae590: stur w0, [x2, #0x13]
//  0x3ae594: ldr x0, [PP, #0x53a8]
//  0x3ae598: stur w0, [x2, #0x1b]
//  0x3ae59c: add x0, PP, #0xf, lsl #12
//  0x3ae5a0: ldr x0, [x0, #0x230]
//  0x3ae5a4: stur w0, [x2, #0x2b]
//  0x3ae5a8: mov x0, #2
//  0x3ae5ac: stur w0, [x2, #0x37]
//  0x3ae5b0: add x1, PP, #0xe, lsl #12
//  0x3ae5b4: ldr x1, [x1, #0xad0]
//  0x3ae5b8: bl #0x3a1420
//  0x3ae5bc: mov x3, x0
//  0x3ae5c0: mov x0, #1
//  0x3ae5c4: stur x3, [FP, #-8]
//  0x3ae5c8: stur x0, [x3, #0x13]
//  0x3ae5cc: add x0, PP, #0x10, lsl #12
//  0x3ae5d0: ldr x0, [x0, #0x950]
//  0x3ae5d4: stur w0, [x3, #0x1b]
//  0x3ae5d8: ldur x0, [FP, #-0x10]
//  0x3ae5dc: stur w0, [x3, #0xb]
//  0x3ae5e0: mov x1, NULL
//  0x3ae5e4: mov x2, #6
//  0x3ae5e8: bl #0x61f920
//  0x3ae5ec: mov x2, x0
//  0x3ae5f0: ldur x0, [FP, #-0x48]
//  0x3ae5f4: stur x2, [FP, #-0x10]
//  0x3ae5f8: stur w0, [x2, #0xf]
//  0x3ae5fc: ldur x0, [FP, #-0x50]
//  0x3ae600: stur w0, [x2, #0x13]
//  0x3ae604: ldur x0, [FP, #-8]
//  0x3ae608: stur w0, [x2, #0x17]
//  0x3ae60c: ldr x1, [PP, #0x5c58]
//  0x3ae610: bl #0x61e854
//  0x3ae614: mov x1, x0
//  0x3ae618: ldur x0, [FP, #-0x10]
//  0x3ae61c: stur x1, [FP, #-8]
//  0x3ae620: stur w0, [x1, #0xf]
//  0x3ae624: mov x2, #6
//  0x3ae628: stur w2, [x1, #0xb]
//  0x3ae62c: bl #0x3a1414
//  0x3ae630: mov x1, x0
//  0x3ae634: ldr x0, [PP, #0x5140]
//  0x3ae638: stur x1, [FP, #-0x10]
//  0x3ae63c: stur w0, [x1, #0xf]
//  0x3ae640: add x2, PP, #0xe, lsl #12
//  0x3ae644: ldr x2, [x2, #0xae0]
//  0x3ae648: stur w2, [x1, #0x13]
//  0x3ae64c: add x3, PP, #0xe, lsl #12
//  0x3ae650: ldr x3, [x3, #0xae8]
//  0x3ae654: stur w3, [x1, #0x17]
//  0x3ae658: add x4, PP, #0xe, lsl #12
//  0x3ae65c: ldr x4, [x4, #0xb60]
//  0x3ae660: stur w4, [x1, #0x1b]
//  0x3ae664: add x5, PP, #0xe, lsl #12
//  0x3ae668: ldr x5, [x5, #0xaf8]
//  0x3ae66c: stur w5, [x1, #0x23]
//  0x3ae670: add x6, PP, #0xa, lsl #12
//  0x3ae674: ldr x6, [x6, #0xa8]
//  0x3ae678: stur w6, [x1, #0x2b]
//  0x3ae67c: stur xzr, [x1, #0x2f]
//  0x3ae680: ldur x7, [FP, #-8]
//  0x3ae684: stur w7, [x1, #0xb]
//  0x3ae688: bl #0x391a04
//  0x3ae68c: stur x0, [FP, #-8]
//  0x3ae690: add BARRIER, PP, #0x10, lsl #12
//  0x3ae694: ldr BARRIER, [BARRIER, #0xc70]
//  0x3ae698: ldur LR, [FP, #-0x40]
//  0x3ae69c: stp LR, BARRIER, [SP, #0x18]
//  0x3ae6a0: ldur BARRIER, [FP, #-0x30]
//  0x3ae6a4: ldur LR, [FP, #-0x28]
//  0x3ae6a8: stp LR, BARRIER, [SP, #8]
//  0x3ae6ac: ldur BARRIER, [FP, #-0x10]
//  0x3ae6b0: str BARRIER, [SP]
//  0x3ae6b4: mov x1, x0
//  0x3ae6b8: add x4, PP, #0x12, lsl #12
//  0x3ae6bc: ldr x4, [x4, #0x330]
//  0x3ae6c0: bl #0x391490
//  0x3ae6c4: mov x1, NULL
//  0x3ae6c8: mov x2, #6
//  0x3ae6cc: bl #0x61f920
//  0x3ae6d0: mov x2, x0
//  0x3ae6d4: ldur x0, [FP, #-0x18]
//  0x3ae6d8: stur x2, [FP, #-0x10]
//  0x3ae6dc: stur w0, [x2, #0xf]
//  0x3ae6e0: ldur x0, [FP, #-0x20]
//  0x3ae6e4: stur w0, [x2, #0x13]
//  0x3ae6e8: ldur x0, [FP, #-8]
//  0x3ae6ec: stur w0, [x2, #0x17]
//  0x3ae6f0: ldr x1, [PP, #0x5c58]
//  0x3ae6f4: bl #0x61e854
//  0x3ae6f8: mov x1, x0
//  0x3ae6fc: ldur x0, [FP, #-0x10]
//  0x3ae700: stur x1, [FP, #-8]
//  0x3ae704: stur w0, [x1, #0xf]
//  0x3ae708: mov x0, #6
//  0x3ae70c: stur w0, [x1, #0xb]
//  0x3ae710: bl #0x3a1414
//  0x3ae714: mov x1, x0
//  0x3ae718: ldr x0, [PP, #0x5140]
//  0x3ae71c: stur x1, [FP, #-0x10]
//  0x3ae720: stur w0, [x1, #0xf]
//  0x3ae724: add x0, PP, #0xe, lsl #12
//  0x3ae728: ldr x0, [x0, #0xae0]
//  0x3ae72c: stur w0, [x1, #0x13]
//  0x3ae730: add x2, PP, #0xe, lsl #12
//  0x3ae734: ldr x2, [x2, #0xae8]
//  0x3ae738: stur w2, [x1, #0x17]
//  0x3ae73c: add x3, PP, #0xe, lsl #12
//  0x3ae740: ldr x3, [x3, #0xb60]
//  0x3ae744: stur w3, [x1, #0x1b]
//  0x3ae748: add x4, PP, #0xe, lsl #12
//  0x3ae74c: ldr x4, [x4, #0xaf8]
//  0x3ae750: stur w4, [x1, #0x23]
//  0x3ae754: add x5, PP, #0xa, lsl #12
//  0x3ae758: ldr x5, [x5, #0xa8]
//  0x3ae75c: stur w5, [x1, #0x2b]
//  0x3ae760: stur xzr, [x1, #0x2f]
//  0x3ae764: ldur x6, [FP, #-8]
//  0x3ae768: stur w6, [x1, #0xb]
//  0x3ae76c: bl #0x31d844
//  0x3ae770: mov x1, x0
//  0x3ae774: ldr x0, [PP, #0x6310]
//  0x3ae778: stur x1, [FP, #-8]
//  0x3ae77c: stur w0, [x1, #0x27]
//  0x3ae780: fmov d0, #1.00000000
//  0x3ae784: stur d0, [x1, #7]
//  0x3ae788: stur d0, [x1, #0xf]
//  0x3ae78c: add x17, PP, #0x10, lsl #12
//  0x3ae790: ldr d0, [x17, #0xac0]
//  0x3ae794: stur d0, [x1, #0x17]
//  0x3ae798: add x17, PP, #0x10, lsl #12
//  0x3ae79c: ldr d0, [x17, #0xac8]
//  0x3ae7a0: stur d0, [x1, #0x1f]
//  0x3ae7a4: bl #0x3ae894
//  0x3ae7a8: fmov d0, #0.50000000
//  0x3ae7ac: stur x0, [FP, #-0x18]
//  0x3ae7b0: stur d0, [x0, #0xb]
//  0x3ae7b4: ldur x1, [FP, #-8]
//  0x3ae7b8: stur w1, [x0, #0x1f]
//  0x3ae7bc: mov x1, NULL
//  0x3ae7c0: mov x2, #4
//  0x3ae7c4: bl #0x61f920
//  0x3ae7c8: mov x2, x0
//  0x3ae7cc: ldur x0, [FP, #-0x10]
//  0x3ae7d0: stur x2, [FP, #-8]
//  0x3ae7d4: stur w0, [x2, #0xf]
//  0x3ae7d8: ldur x0, [FP, #-0x18]
//  0x3ae7dc: stur w0, [x2, #0x13]
//  0x3ae7e0: ldr x1, [PP, #0x5c58]
//  0x3ae7e4: bl #0x61e854
//  0x3ae7e8: mov x1, x0
//  0x3ae7ec: ldur x0, [FP, #-8]
//  0x3ae7f0: stur x1, [FP, #-0x10]
//  0x3ae7f4: stur w0, [x1, #0xf]
//  0x3ae7f8: mov x0, #4
//  0x3ae7fc: stur w0, [x1, #0xb]
//  0x3ae800: bl #0x39310c
//  0x3ae804: add x1, PP, #0xa, lsl #12
//  0x3ae808: ldr x1, [x1, #0x858]
//  0x3ae80c: stur w1, [x0, #0xf]
//  0x3ae810: add x1, PP, #0xe, lsl #12
//  0x3ae814: ldr x1, [x1, #0xae0]
//  0x3ae818: stur w1, [x0, #0x13]
//  0x3ae81c: add x1, PP, #0xe, lsl #12
//  0x3ae820: ldr x1, [x1, #0xae8]
//  0x3ae824: stur w1, [x0, #0x17]
//  0x3ae828: add x1, PP, #0xe, lsl #12
//  0x3ae82c: ldr x1, [x1, #0xb60]
//  0x3ae830: stur w1, [x0, #0x1b]
//  0x3ae834: add x1, PP, #0xe, lsl #12
//  0x3ae838: ldr x1, [x1, #0xaf8]
//  0x3ae83c: stur w1, [x0, #0x23]
//  0x3ae840: add x1, PP, #0xa, lsl #12
//  0x3ae844: ldr x1, [x1, #0xa8]
//  0x3ae848: stur w1, [x0, #0x2b]
//  0x3ae84c: stur xzr, [x0, #0x2f]
//  0x3ae850: ldur x1, [FP, #-0x10]
//  0x3ae854: stur w1, [x0, #0xb]
//  0x3ae858: mov SP, FP
//  0x3ae85c: ldp FP, LR, [SP], #0x10
//  0x3ae860: ret 
//  0x3ae864: bl #0x61fa28
//  0x3ae868: b #0x3ae188
//  0x3ae86c: bl #0x61fe70
//  0x3ae870: add x9, PP, #0x12, lsl #12
//  0x3ae874: ldr x9, [x9, #0x348]
//  0x3ae878: bl #0x6202a8
//  0x3ae87c: add x9, PP, #0x12, lsl #12
//  0x3ae880: ldr x9, [x9, #0x350]
//  0x3ae884: bl #0x620258
//  0x3ae888: add x9, PP, #0x12, lsl #12
//  0x3ae88c: ldr x9, [x9, #0x358]
//  0x3ae890: bl #0x620258
//
dynamic PagePartyLuckyBagHistoryList_anon_closure_2() {
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
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ae160
  // frame: FP = SP // 0x3ae164
  // frame: SP = SP - 0x88 // 0x3ae168
  w2 = mem((local_20), 0x17); // 0x3ae170
  x0 = local_20; // 0x3ae16c
  x2 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3ae174
  local_m10 = x2; // 0x3ae178
  BARRIER = mem(THR, 0x38); // 0x3ae17c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ae864
  }
  w0 = mem((((mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x3ae1a0
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x3ae190
  w3 = mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x3ae198
  x0 = (mem((((mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x3ae1a0
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3ae194
  x3 = ((mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x3ae19c
  x1 = local_10; // 0x3ae1a4
  x4 = ((local_10) >> 1) & 0x7fffffff; // 0x3ae1a8
  if (x1 & (1 << 0) == 0) {
  } else {
    x4 = mem(x1, 7); // 0x3ae1b0
  }
  x0 = (x0 >> 1) & 0x7fffffff; // 0x3ae1b8
  x1 = x4; // 0x3ae1bc
  if (x1 >= x0) {
    RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x3ae86c
  } else {
    BARRIER = ((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2); // 0x3ae1d0
    w1 = mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2)), 0xf); // 0x3ae1d4
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x3ae1cc
    x1 = ((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3ae1d8
    local_m8 = x1; // 0x3ae1dc
    AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3ae1e0
    local_m38 = x0; // 0x3ae1e4
    memSet(x0, 7, xzr); // 0x3ae1e8
    memSet(x0, 0xf, xzr); // 0x3ae1ec
    memSet(x0, 0x17, xzr); // 0x3ae1f0
    d0 = 8.00000000 /* bits */; // 0x3ae1f4
    memSet(x0, 0x1f, d0); // 0x3ae1f8
    w2 = mem((local_m10), 0x13); // 0x3ae200
    x1 = local_m10; // 0x3ae1fc
    x2 = ((mem((local_m10), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x3ae204
    local_m30 = x2; // 0x3ae208
    w3 = mem(x1, 0x17); // 0x3ae20c
    x3 = ((mem(x1, 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3ae210
    x4 = local_m8; // 0x3ae214
    local_m28 = x3; // 0x3ae218
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3ae224
    w5 = mem(x4, 7); // 0x3ae21c
    x5 = ((mem(x4, 7)) & 0xffffffff) + (HEAP << 32); // 0x3ae220
    if (w5 == w16) {
      x9 = mem((PP + 0x12000), 0x348) /* Field */; // 0x3ae874
      LateInitializationErrorSharedWithFpuRegsStub_0x6202a8() /* 0x6202a8 */; // 0x3ae878
    } else {
      local_m20 = x5; // 0x3ae230
      w6 = mem(x1, 0x2b); // 0x3ae234
      x6 = ((mem(x1, 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x3ae238
      local_m18 = x6; // 0x3ae23c
      AllocationStub_Text() /* 0x393bf8 */; // 0x3ae240
      x0 = local_m20; // 0x3ae248
      x1 = x0; // 0x3ae244
      local_m40 = x1; // 0x3ae24c
      memSet(x1, 0xb, w0); // 0x3ae250
      x0 = local_m18; // 0x3ae254
      memSet(x1, 0x13, w0); // 0x3ae258
      x0 = mem(PP, 0x53a8) /* Obj!TextAlign@12316  */; // 0x3ae25c
      memSet(x1, 0x1b, w0); // 0x3ae260
      x2 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x3ae268
      memSet(x1, 0x2b, w2); // 0x3ae26c
      x3 = 2; // 0x3ae270
      memSet(x1, 0x37, w3); // 0x3ae274
      AllocationStub_Container() /* 0x391a04 */; // 0x3ae278
      local_m18 = x0; // 0x3ae27c
      BARRIER = mem((PP + 0x10000), 0xc70) /* Obj!Alignment@11bdc  */; // 0x3ae284
      LR = local_m38; // 0x3ae288
      // frame: LR, BARRIER, mem(SP, 0x18) // 0x3ae28c
      BARRIER = local_m30; // 0x3ae290
      LR = local_m28; // 0x3ae294
      // frame: LR, BARRIER, mem(SP, 8) // 0x3ae298
      BARRIER = local_m40; // 0x3ae29c
      local_0 = BARRIER; // 0x3ae2a0
      x1 = x0; // 0x3ae2a4
      x4 = mem((PP + 0x12000), 0x330) /* ImmutableArray */; // 0x3ae2ac
      Container_ctor() /* 0x391490 */; // 0x3ae2b0
      AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3ae2b4
      local_m38 = x0; // 0x3ae2b8
      memSet(x0, 7, xzr); // 0x3ae2bc
      memSet(x0, 0xf, xzr); // 0x3ae2c0
      memSet(x0, 0x17, xzr); // 0x3ae2c4
      d0 = 8.00000000 /* bits */; // 0x3ae2c8
      memSet(x0, 0x1f, d0); // 0x3ae2cc
      w2 = mem((local_m10), 0x23); // 0x3ae2d4
      x1 = local_m10; // 0x3ae2d0
      x2 = ((mem((local_m10), 0x23)) & 0xffffffff) + (HEAP << 32); // 0x3ae2d8
      local_m20 = x2; // 0x3ae2dc
      AllocationStub_SizedBox() /* 0x3949ec */; // 0x3ae2e0
      x0 = local_m20; // 0x3ae2e8
      x1 = x0; // 0x3ae2e4
      local_m40 = x1; // 0x3ae2ec
      memSet(x1, 0xf, w0); // 0x3ae2f0
      w2 = mem((local_m10), 0x1b); // 0x3ae2f8
      x0 = local_m10; // 0x3ae2f4
      x2 = ((mem((local_m10), 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x3ae2fc
      local_m20 = x2; // 0x3ae300
      AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x3ae304
      x0 = "assets/images/3.0x/party_icon_soulcoin_big.webp" /* pp+0xf248 */; // 0x3ae310
      x1 = x0; // 0x3ae308
      local_m48 = x1; // 0x3ae314
      memSet(x1, 0xb, w0); // 0x3ae318
      x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x3ae320
      memSet(x1, 0xf, w0); // 0x3ae324
      x2 = local_m20; // 0x3ae328
      memSet(x1, 0x13, w2); // 0x3ae32c
      memSet(x1, 0x17, w2); // 0x3ae330
      AllocationStub_SizedBox() /* 0x3949ec */; // 0x3ae334
      x0 = mem((PP + 0x12000), 0x338) /* Double */; // 0x3ae340
      x1 = x0; // 0x3ae338
      local_m58 = x1; // 0x3ae344
      memSet(x1, 0xf, w0); // 0x3ae348
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3ae358
      w2 = mem((local_m8), 0xb); // 0x3ae350
      x0 = local_m8; // 0x3ae34c
      x2 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3ae354
      if (w2 == w16) {
        x9 = mem((PP + 0x12000), 0x350) /* Field */; // 0x3ae880
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3ae884
      } else {
        x3 = local_m10; // 0x3ae364
        local_m50 = x2; // 0x3ae368
        w4 = mem(x3, 0x2b); // 0x3ae36c
        x4 = ((mem(x3, 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x3ae370
        local_m20 = x4; // 0x3ae374
        AllocationStub_Text() /* 0x393bf8 */; // 0x3ae378
        x0 = local_m50; // 0x3ae380
        x2 = x0; // 0x3ae37c
        local_m60 = x2; // 0x3ae384
        memSet(x2, 0xb, w0); // 0x3ae388
        x0 = local_m20; // 0x3ae38c
        memSet(x2, 0x13, w0); // 0x3ae390
        x0 = mem(PP, 0x53a8) /* Obj!TextAlign@12316  */; // 0x3ae394
        memSet(x2, 0x1b, w0); // 0x3ae398
        x3 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x3ae3a0
        memSet(x2, 0x2b, w3); // 0x3ae3a4
        x4 = 2; // 0x3ae3a8
        memSet(x2, 0x37, w4); // 0x3ae3ac
        x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x3ae3b4
        AllocationStub_Flexible() /* 0x3a1420 */; // 0x3ae3b8
        x0 = 1; // 0x3ae3c0
        x3 = x0; // 0x3ae3bc
        local_m20 = x3; // 0x3ae3c4
        memSet(x3, 0x13, x0); // 0x3ae3c8
        x4 = mem((PP + 0x10000), 0x950) /* Obj!FlexFit@12273  */; // 0x3ae3d0
        memSet(x3, 0x1b, w4); // 0x3ae3d4
        x1 = local_m60; // 0x3ae3d8
        memSet(x3, 0xb, w1); // 0x3ae3dc
        x1 = NULL; // 0x3ae3e0
        x2 = 8; // 0x3ae3e4
        sub_0x61f920(); // 0x3ae3e8
        x0 = local_m40; // 0x3ae3f0
        x2 = x0; // 0x3ae3ec
        local_m50 = x2; // 0x3ae3f4
        memSet(x2, 0xf, w0); // 0x3ae3f8
        x0 = local_m48; // 0x3ae3fc
        memSet(x2, 0x13, w0); // 0x3ae400
        x0 = local_m58; // 0x3ae404
        memSet(x2, 0x17, w0); // 0x3ae408
        x0 = local_m20; // 0x3ae40c
        memSet(x2, 0x1b, w0); // 0x3ae410
        x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3ae414
        AllocationStub__GrowableList() /* 0x61e854 */; // 0x3ae418
        x0 = local_m50; // 0x3ae420
        x1 = x0; // 0x3ae41c
        local_m20 = x1; // 0x3ae424
        memSet(x1, 0xf, w0); // 0x3ae428
        x0 = 8; // 0x3ae42c
        memSet(x1, 0xb, w0); // 0x3ae430
        AllocationStub_Row() /* 0x3a1414 */; // 0x3ae434
        x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x3ae43c
        x1 = x0; // 0x3ae438
        local_m40 = x1; // 0x3ae440
        memSet(x1, 0xf, w0); // 0x3ae444
        x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3ae44c
        memSet(x1, 0x13, w2); // 0x3ae450
        x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3ae458
        memSet(x1, 0x17, w3); // 0x3ae45c
        x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3ae464
        memSet(x1, 0x1b, w4); // 0x3ae468
        x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3ae470
        memSet(x1, 0x23, w5); // 0x3ae474
        x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3ae47c
        memSet(x1, 0x2b, w6); // 0x3ae480
        memSet(x1, 0x2f, xzr); // 0x3ae484
        x7 = local_m20; // 0x3ae488
        memSet(x1, 0xb, w7); // 0x3ae48c
        AllocationStub_Container() /* 0x391a04 */; // 0x3ae490
        local_m20 = x0; // 0x3ae494
        BARRIER = mem((PP + 0x10000), 0xc70) /* Obj!Alignment@11bdc  */; // 0x3ae49c
        LR = local_m38; // 0x3ae4a0
        // frame: LR, BARRIER, mem(SP, 0x18) // 0x3ae4a4
        BARRIER = local_m30; // 0x3ae4a8
        LR = local_m28; // 0x3ae4ac
        // frame: LR, BARRIER, mem(SP, 8) // 0x3ae4b0
        BARRIER = local_m40; // 0x3ae4b4
        local_0 = BARRIER; // 0x3ae4b8
        x1 = x0; // 0x3ae4bc
        x4 = mem((PP + 0x12000), 0x330) /* ImmutableArray */; // 0x3ae4c4
        Container_ctor() /* 0x391490 */; // 0x3ae4c8
        AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3ae4cc
        local_m40 = x0; // 0x3ae4d0
        memSet(x0, 7, xzr); // 0x3ae4d4
        memSet(x0, 0xf, xzr); // 0x3ae4d8
        memSet(x0, 0x17, xzr); // 0x3ae4dc
        d0 = 4.00000000 /* bits */; // 0x3ae4e0
        memSet(x0, 0x1f, d0); // 0x3ae4e4
        w2 = mem((local_m10), 0x27); // 0x3ae4ec
        x1 = local_m10; // 0x3ae4e8
        x2 = ((mem((local_m10), 0x27)) & 0xffffffff) + (HEAP << 32); // 0x3ae4f0
        local_m38 = x2; // 0x3ae4f4
        AllocationStub_SizedBox() /* 0x3949ec */; // 0x3ae4f8
        x0 = local_m38; // 0x3ae500
        x1 = x0; // 0x3ae4fc
        local_m48 = x1; // 0x3ae504
        memSet(x1, 0xf, w0); // 0x3ae508
        w2 = mem((local_m10), 0x1f); // 0x3ae510
        x0 = local_m10; // 0x3ae50c
        x2 = ((mem((local_m10), 0x1f)) & 0xffffffff) + (HEAP << 32); // 0x3ae514
        local_m38 = x2; // 0x3ae518
        AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x3ae51c
        x0 = "assets/images/3.0x/party_icon_list_luckbag.webp" /* pp+0x12340 */; // 0x3ae528
        x1 = x0; // 0x3ae520
        local_m50 = x1; // 0x3ae52c
        memSet(x1, 0xb, w0); // 0x3ae530
        x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x3ae538
        memSet(x1, 0xf, w0); // 0x3ae53c
        x0 = local_m38; // 0x3ae540
        memSet(x1, 0x13, w0); // 0x3ae544
        memSet(x1, 0x17, w0); // 0x3ae548
        BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3ae558
        w2 = mem((local_m8), 0xf); // 0x3ae550
        x0 = local_m8; // 0x3ae54c
        x2 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3ae554
        if (w2 != w16) {
          x0 = local_m10; // 0x3ae564
          local_m38 = x2; // 0x3ae568
          w3 = mem(x0, 0x2b); // 0x3ae56c
          x3 = ((mem(x0, 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x3ae570
          local_m8 = x3; // 0x3ae574
          AllocationStub_Text() /* 0x393bf8 */; // 0x3ae578
          x0 = local_m38; // 0x3ae580
          x2 = x0; // 0x3ae57c
          local_m10 = x2; // 0x3ae584
          memSet(x2, 0xb, w0); // 0x3ae588
          x0 = local_m8; // 0x3ae58c
          memSet(x2, 0x13, w0); // 0x3ae590
          x0 = mem(PP, 0x53a8) /* Obj!TextAlign@12316  */; // 0x3ae594
          memSet(x2, 0x1b, w0); // 0x3ae598
          x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x3ae5a0
          memSet(x2, 0x2b, w0); // 0x3ae5a4
          x0 = 2; // 0x3ae5a8
          memSet(x2, 0x37, w0); // 0x3ae5ac
          x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x3ae5b4
          AllocationStub_Flexible() /* 0x3a1420 */; // 0x3ae5b8
          x0 = 1; // 0x3ae5c0
          x3 = x0; // 0x3ae5bc
          local_m8 = x3; // 0x3ae5c4
          memSet(x3, 0x13, x0); // 0x3ae5c8
          x0 = mem((PP + 0x10000), 0x950) /* Obj!FlexFit@12273  */; // 0x3ae5d0
          memSet(x3, 0x1b, w0); // 0x3ae5d4
          x0 = local_m10; // 0x3ae5d8
          memSet(x3, 0xb, w0); // 0x3ae5dc
          x1 = NULL; // 0x3ae5e0
          x2 = 6; // 0x3ae5e4
          sub_0x61f920(); // 0x3ae5e8
          x0 = local_m48; // 0x3ae5f0
          x2 = x0; // 0x3ae5ec
          local_m10 = x2; // 0x3ae5f4
          memSet(x2, 0xf, w0); // 0x3ae5f8
          x0 = local_m50; // 0x3ae5fc
          memSet(x2, 0x13, w0); // 0x3ae600
          x0 = local_m8; // 0x3ae604
          memSet(x2, 0x17, w0); // 0x3ae608
          x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3ae60c
          AllocationStub__GrowableList() /* 0x61e854 */; // 0x3ae610
          x0 = local_m10; // 0x3ae618
          x1 = x0; // 0x3ae614
          local_m8 = x1; // 0x3ae61c
          memSet(x1, 0xf, w0); // 0x3ae620
          x2 = 6; // 0x3ae624
          memSet(x1, 0xb, w2); // 0x3ae628
          AllocationStub_Row() /* 0x3a1414 */; // 0x3ae62c
          x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x3ae634
          x1 = x0; // 0x3ae630
          local_m10 = x1; // 0x3ae638
          memSet(x1, 0xf, w0); // 0x3ae63c
          x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3ae644
          memSet(x1, 0x13, w2); // 0x3ae648
          x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3ae650
          memSet(x1, 0x17, w3); // 0x3ae654
          x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3ae65c
          memSet(x1, 0x1b, w4); // 0x3ae660
          x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3ae668
          memSet(x1, 0x23, w5); // 0x3ae66c
          x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3ae674
          memSet(x1, 0x2b, w6); // 0x3ae678
          memSet(x1, 0x2f, xzr); // 0x3ae67c
          x7 = local_m8; // 0x3ae680
          memSet(x1, 0xb, w7); // 0x3ae684
          AllocationStub_Container() /* 0x391a04 */; // 0x3ae688
          local_m8 = x0; // 0x3ae68c
          BARRIER = mem((PP + 0x10000), 0xc70) /* Obj!Alignment@11bdc  */; // 0x3ae694
          LR = local_m40; // 0x3ae698
          // frame: LR, BARRIER, mem(SP, 0x18) // 0x3ae69c
          BARRIER = local_m30; // 0x3ae6a0
          LR = local_m28; // 0x3ae6a4
          // frame: LR, BARRIER, mem(SP, 8) // 0x3ae6a8
          BARRIER = local_m10; // 0x3ae6ac
          local_0 = BARRIER; // 0x3ae6b0
          x1 = x0; // 0x3ae6b4
          x4 = mem((PP + 0x12000), 0x330) /* ImmutableArray */; // 0x3ae6bc
          Container_ctor() /* 0x391490 */; // 0x3ae6c0
          x1 = NULL; // 0x3ae6c4
          x2 = 6; // 0x3ae6c8
          sub_0x61f920(); // 0x3ae6cc
          x0 = local_m18; // 0x3ae6d4
          x2 = x0; // 0x3ae6d0
          local_m10 = x2; // 0x3ae6d8
          memSet(x2, 0xf, w0); // 0x3ae6dc
          x0 = local_m20; // 0x3ae6e0
          memSet(x2, 0x13, w0); // 0x3ae6e4
          x0 = local_m8; // 0x3ae6e8
          memSet(x2, 0x17, w0); // 0x3ae6ec
          x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3ae6f0
          AllocationStub__GrowableList() /* 0x61e854 */; // 0x3ae6f4
          x0 = local_m10; // 0x3ae6fc
          x1 = x0; // 0x3ae6f8
          local_m8 = x1; // 0x3ae700
          memSet(x1, 0xf, w0); // 0x3ae704
          x0 = 6; // 0x3ae708
          memSet(x1, 0xb, w0); // 0x3ae70c
          AllocationStub_Row() /* 0x3a1414 */; // 0x3ae710
          x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x3ae718
          x1 = x0; // 0x3ae714
          local_m10 = x1; // 0x3ae71c
          memSet(x1, 0xf, w0); // 0x3ae720
          x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3ae728
          memSet(x1, 0x13, w0); // 0x3ae72c
          x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3ae734
          memSet(x1, 0x17, w2); // 0x3ae738
          x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3ae740
          memSet(x1, 0x1b, w3); // 0x3ae744
          x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3ae74c
          memSet(x1, 0x23, w4); // 0x3ae750
          x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3ae758
          memSet(x1, 0x2b, w5); // 0x3ae75c
          memSet(x1, 0x2f, xzr); // 0x3ae760
          x6 = local_m8; // 0x3ae764
          memSet(x1, 0xb, w6); // 0x3ae768
          AllocationStub_Color() /* 0x31d844 */; // 0x3ae76c
          x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3ae774
          x1 = x0; // 0x3ae770
          local_m8 = x1; // 0x3ae778
          memSet(x1, 0x27, w0); // 0x3ae77c
          d0 = 1.00000000 /* bits */; // 0x3ae780
          memSet(x1, 7, d0); // 0x3ae784
          memSet(x1, 0xf, d0); // 0x3ae788
          d0 = 4606617261199719934; // 0x3ae790
          x17 = PP + 0x10000; // 0x3ae78c
          memSet(x1, 0x17, d0); // 0x3ae794
          d0 = 4600312221721401240; // 0x3ae79c
          x17 = PP + 0x10000; // 0x3ae798
          memSet(x1, 0x1f, d0); // 0x3ae7a0
          AllocationStub_Divider() /* 0x3ae894 */; // 0x3ae7a4
          d0 = 0.50000000 /* bits */; // 0x3ae7a8
          local_m18 = x0; // 0x3ae7ac
          memSet(x0, 0xb, d0); // 0x3ae7b0
          x1 = local_m8; // 0x3ae7b4
          memSet(x0, 0x1f, w1); // 0x3ae7b8
          x1 = NULL; // 0x3ae7bc
          x2 = 4; // 0x3ae7c0
          sub_0x61f920(); // 0x3ae7c4
          x0 = local_m10; // 0x3ae7cc
          x2 = x0; // 0x3ae7c8
          local_m8 = x2; // 0x3ae7d0
          memSet(x2, 0xf, w0); // 0x3ae7d4
          x0 = local_m18; // 0x3ae7d8
          memSet(x2, 0x13, w0); // 0x3ae7dc
          x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3ae7e0
          AllocationStub__GrowableList() /* 0x61e854 */; // 0x3ae7e4
          x0 = local_m8; // 0x3ae7ec
          x1 = x0; // 0x3ae7e8
          local_m10 = x1; // 0x3ae7f0
          memSet(x1, 0xf, w0); // 0x3ae7f4
          x0 = 4; // 0x3ae7f8
          memSet(x1, 0xb, w0); // 0x3ae7fc
          AllocationStub_Column() /* 0x39310c */; // 0x3ae800
          x1 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3ae808
          memSet(x0, 0xf, w1); // 0x3ae80c
          x1 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3ae814
          memSet(x0, 0x13, w1); // 0x3ae818
          x1 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3ae820
          memSet(x0, 0x17, w1); // 0x3ae824
          x1 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3ae82c
          memSet(x0, 0x1b, w1); // 0x3ae830
          x1 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3ae838
          memSet(x0, 0x23, w1); // 0x3ae83c
          x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3ae844
          memSet(x0, 0x2b, w1); // 0x3ae848
          memSet(x0, 0x2f, xzr); // 0x3ae84c
          x1 = local_m10; // 0x3ae850
          memSet(x0, 0xb, w1); // 0x3ae854
          SP = FP; // 0x3ae858
          // frame: FP, LR, mem(SP), 0x10 // 0x3ae85c
          return;
        }
      }
      x9 = mem((PP + 0x12000), 0x358) /* Field */; // 0x3ae88c
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3ae890
    }
  }
}

// backButton
// raw disassembly:
//  0x3ab5e4: stp FP, LR, [SP, #-0x10]!
//  0x3ab5e8: mov FP, SP
//  0x3ab5ec: sub SP, SP, #0x40
//  0x3ab5f0: ldr BARRIER, [THR, #0x38]
//  0x3ab5f4: cmp SP, BARRIER
//  0x3ab5f8: b.ls #0x3ab6f8
//  0x3ab5fc: tbnz w1, #4, #0x3ab60c
//  0x3ab600: add x17, PP, #0x12, lsl #12
//  0x3ab604: ldr d0, [x17, #0x2f0]
//  0x3ab608: b #0x3ab610
//  0x3ab60c: eor v0.16b, v0.16b, v0.16b
//  0x3ab610: stur d0, [FP, #-0x20]
//  0x3ab614: bl #0x2e3578
//  0x3ab618: fmov d0, #14.00000000
//  0x3ab61c: stur x0, [FP, #-8]
//  0x3ab620: stur d0, [x0, #7]
//  0x3ab624: ldur d0, [FP, #-0x20]
//  0x3ab628: stur d0, [x0, #0xf]
//  0x3ab62c: stur xzr, [x0, #0x17]
//  0x3ab630: stur xzr, [x0, #0x1f]
//  0x3ab634: bl #0x3a142c
//  0x3ab638: mov x1, x0
//  0x3ab63c: add x0, PP, #0x12, lsl #12
//  0x3ab640: ldr x0, [x0, #0x2f8]
//  0x3ab644: stur x1, [FP, #-0x10]
//  0x3ab648: stur w0, [x1, #0xb]
//  0x3ab64c: add x0, PP, #0xf, lsl #12
//  0x3ab650: ldr x0, [x0, #0x170]
//  0x3ab654: stur w0, [x1, #0xf]
//  0x3ab658: add x0, PP, #0xf, lsl #12
//  0x3ab65c: ldr x0, [x0, #0x1e8]
//  0x3ab660: stur w0, [x1, #0x13]
//  0x3ab664: stur w0, [x1, #0x17]
//  0x3ab668: add x0, PP, #0xf, lsl #12
//  0x3ab66c: ldr x0, [x0, #0x178]
//  0x3ab670: stur w0, [x1, #0x1b]
//  0x3ab674: bl #0x391a04
//  0x3ab678: stur x0, [FP, #-0x18]
//  0x3ab67c: ldur BARRIER, [FP, #-8]
//  0x3ab680: add LR, PP, #0xf, lsl #12
//  0x3ab684: ldr LR, [LR, #0xba8]
//  0x3ab688: stp LR, BARRIER, [SP, #0x10]
//  0x3ab68c: add BARRIER, PP, #0xf, lsl #12
//  0x3ab690: ldr BARRIER, [BARRIER, #0xba8]
//  0x3ab694: ldur LR, [FP, #-0x10]
//  0x3ab698: stp LR, BARRIER, [SP]
//  0x3ab69c: mov x1, x0
//  0x3ab6a0: add x4, PP, #0xf, lsl #12
//  0x3ab6a4: ldr x4, [x4, #0x180]
//  0x3ab6a8: bl #0x391490
//  0x3ab6ac: bl #0x3a1d94
//  0x3ab6b0: stur x0, [FP, #-8]
//  0x3ab6b4: ldur BARRIER, [FP, #-0x18]
//  0x3ab6b8: add LR, PP, #0xf, lsl #12
//  0x3ab6bc: ldr LR, [LR, #0x318]
//  0x3ab6c0: stp LR, BARRIER, [SP]
//  0x3ab6c4: mov x1, x0
//  0x3ab6c8: add x4, PP, #0xe, lsl #12
//  0x3ab6cc: ldr x4, [x4, #0xec0]
//  0x3ab6d0: bl #0x3a18c4
//  0x3ab6d4: bl #0x396460
//  0x3ab6d8: add x1, PP, #0xf, lsl #12
//  0x3ab6dc: ldr x1, [x1, #0x190]
//  0x3ab6e0: stur w1, [x0, #0xf]
//  0x3ab6e4: ldur x1, [FP, #-8]
//  0x3ab6e8: stur w1, [x0, #0xb]
//  0x3ab6ec: mov SP, FP
//  0x3ab6f0: ldp FP, LR, [SP], #0x10
//  0x3ab6f4: ret 
//  0x3ab6f8: bl #0x61fa28
//  0x3ab6fc: b #0x3ab5fc
//
dynamic backButton() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic v0_16b;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ab5e4
  BARRIER = mem(THR, 0x38); // 0x3ab5f0
  // frame: FP = SP // 0x3ab5e8
  // frame: SP = SP - 0x40 // 0x3ab5ec
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ab6f8
  }
  if (x1 & (1 << 4) != 0) {
    v0_16b = v0_16b ^ v0_16b; // 0x3ab60c
  } else {
    d0 = 4629841154425225216; // 0x3ab604
    x17 = PP + 0x12000; // 0x3ab600
  }
  local_m20 = d0; // 0x3ab610
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3ab614
  d0 = 14.00000000 /* bits */; // 0x3ab618
  local_m8 = x0; // 0x3ab61c
  memSet(x0, 7, d0); // 0x3ab620
  d0 = local_m20; // 0x3ab624
  memSet(x0, 0xf, d0); // 0x3ab628
  memSet(x0, 0x17, xzr); // 0x3ab62c
  memSet(x0, 0x1f, xzr); // 0x3ab630
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x3ab634
  x0 = "assets/images/3.0x/party_icon_list_back.webp" /* pp+0x122f8 */; // 0x3ab640
  x1 = x0; // 0x3ab638
  local_m10 = x1; // 0x3ab644
  memSet(x1, 0xb, w0); // 0x3ab648
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x3ab650
  memSet(x1, 0xf, w0); // 0x3ab654
  x0 = mem((PP + 0xf000), 0x1e8) /* Double */; // 0x3ab65c
  memSet(x1, 0x13, w0); // 0x3ab660
  memSet(x1, 0x17, w0); // 0x3ab664
  x0 = mem((PP + 0xf000), 0x178) /* Obj!BoxFit@12284  */; // 0x3ab66c
  memSet(x1, 0x1b, w0); // 0x3ab670
  AllocationStub_Container() /* 0x391a04 */; // 0x3ab674
  local_m18 = x0; // 0x3ab678
  BARRIER = local_m8; // 0x3ab67c
  LR = mem((PP + 0xf000), 0xba8) /* Double */; // 0x3ab684
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x3ab688
  BARRIER = mem((PP + 0xf000), 0xba8) /* Double */; // 0x3ab690
  LR = local_m10; // 0x3ab694
  // frame: LR, BARRIER, mem(SP) // 0x3ab698
  x1 = x0; // 0x3ab69c
  x4 = mem((PP + 0xf000), 0x180) /* ImmutableArray */; // 0x3ab6a4
  Container_ctor() /* 0x391490 */; // 0x3ab6a8
  sub_0x3a1d94(); // 0x3ab6ac
  local_m8 = x0; // 0x3ab6b0
  BARRIER = local_m18; // 0x3ab6b4
  LR = mem((PP + 0xf000), 0x318) /* Closure */; // 0x3ab6bc
  // frame: LR, BARRIER, mem(SP) // 0x3ab6c0
  x1 = x0; // 0x3ab6c4
  x4 = mem((PP + 0xe000), 0xec0) /* ImmutableArray */; // 0x3ab6cc
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x3ab6d0
  AllocationStub_Align() /* 0x396460 */; // 0x3ab6d4
  x1 = mem((PP + 0xf000), 0x190) /* Obj!Alignment@11bdb  */; // 0x3ab6dc
  memSet(x0, 0xf, w1); // 0x3ab6e0
  x1 = local_m8; // 0x3ab6e4
  memSet(x0, 0xb, w1); // 0x3ab6e8
  SP = FP; // 0x3ab6ec
  // frame: FP, LR, mem(SP), 0x10 // 0x3ab6f0
  return;
}

// PagePartyLuckyBagHistoryEmpty_build
// raw disassembly:
//  0x3b3c24: stp FP, LR, [SP, #-0x10]!
//  0x3b3c28: mov FP, SP
//  0x3b3c2c: sub SP, SP, #0x40
//  0x3b3c30: stur x1, [FP, #-8]
//  0x3b3c34: ldr BARRIER, [THR, #0x38]
//  0x3b3c38: cmp SP, BARRIER
//  0x3b3c3c: b.ls #0x3b3ee8
//  0x3b3c40: bl #0x31d844
//  0x3b3c44: mov x1, x0
//  0x3b3c48: ldr x0, [PP, #0x6310]
//  0x3b3c4c: stur x1, [FP, #-0x10]
//  0x3b3c50: stur w0, [x1, #0x27]
//  0x3b3c54: fmov d0, #1.00000000
//  0x3b3c58: stur d0, [x1, #7]
//  0x3b3c5c: add x17, PP, #0x10, lsl #12
//  0x3b3c60: ldr d0, [x17, #0xad0]
//  0x3b3c64: stur d0, [x1, #0xf]
//  0x3b3c68: add x17, PP, #0x10, lsl #12
//  0x3b3c6c: ldr d0, [x17, #0xad8]
//  0x3b3c70: stur d0, [x1, #0x17]
//  0x3b3c74: add x17, PP, #0x10, lsl #12
//  0x3b3c78: ldr d0, [x17, #0xae0]
//  0x3b3c7c: stur d0, [x1, #0x1f]
//  0x3b3c80: bl #0x31abec
//  0x3b3c84: mov x2, x0
//  0x3b3c88: add x0, NULL, #0x20
//  0x3b3c8c: stur x2, [FP, #-0x18]
//  0x3b3c90: stur w0, [x2, #7]
//  0x3b3c94: ldur x1, [FP, #-0x10]
//  0x3b3c98: stur w1, [x2, #0xb]
//  0x3b3c9c: add x1, PP, #0xf, lsl #12
//  0x3b3ca0: ldr x1, [x1, #0xb90]
//  0x3b3ca4: stur w1, [x2, #0x1f]
//  0x3b3ca8: add x1, PP, #0xe, lsl #12
//  0x3b3cac: ldr x1, [x1, #0xe40]
//  0x3b3cb0: stur w1, [x2, #0x23]
//  0x3b3cb4: add x1, PP, #0xc, lsl #12
//  0x3b3cb8: ldr x1, [x1, #0x9a8]
//  0x3b3cbc: ldr x4, [PP, #0x4c0]
//  0x3b3cc0: bl #0x3a1dcc
//  0x3b3cc4: mov x1, x0
//  0x3b3cc8: ldur x0, [FP, #-8]
//  0x3b3ccc: ldur w2, [x0, #0xb]
//  0x3b3cd0: add x2, x2, HEAP, lsl #32
//  0x3b3cd4: tbz w2, #4, #0x3b3cf0
//  0x3b3cd8: add x1, PP, #0xc, lsl #12
//  0x3b3cdc: ldr x1, [x1, #0xb50]
//  0x3b3ce0: ldr x4, [PP, #0x4c0]
//  0x3b3ce4: bl #0x3a1dcc
//  0x3b3ce8: mov x2, x0
//  0x3b3cec: b #0x3b3cf4
//  0x3b3cf0: mov x2, x1
//  0x3b3cf4: ldur x0, [FP, #-0x18]
//  0x3b3cf8: stur x2, [FP, #-8]
//  0x3b3cfc: add x1, NULL, #0x20
//  0x3b3d00: bl #0x3ab5e4
//  0x3b3d04: stur x0, [FP, #-0x10]
//  0x3b3d08: bl #0x2e3578
//  0x3b3d0c: stur x0, [FP, #-0x20]
//  0x3b3d10: stur xzr, [x0, #7]
//  0x3b3d14: ldr d0, [PP, #0x7040]
//  0x3b3d18: stur d0, [x0, #0xf]
//  0x3b3d1c: stur xzr, [x0, #0x17]
//  0x3b3d20: stur xzr, [x0, #0x1f]
//  0x3b3d24: bl #0x393bf8
//  0x3b3d28: mov x1, x0
//  0x3b3d2c: ldur x0, [FP, #-8]
//  0x3b3d30: stur x1, [FP, #-0x28]
//  0x3b3d34: stur w0, [x1, #0xb]
//  0x3b3d38: ldur x0, [FP, #-0x18]
//  0x3b3d3c: stur w0, [x1, #0x13]
//  0x3b3d40: ldr x0, [PP, #0x53a8]
//  0x3b3d44: stur w0, [x1, #0x1b]
//  0x3b3d48: bl #0x391a04
//  0x3b3d4c: stur x0, [FP, #-8]
//  0x3b3d50: ldur BARRIER, [FP, #-0x20]
//  0x3b3d54: ldur LR, [FP, #-0x28]
//  0x3b3d58: stp LR, BARRIER, [SP]
//  0x3b3d5c: mov x1, x0
//  0x3b3d60: add x4, PP, #0xf, lsl #12
//  0x3b3d64: ldr x4, [x4, #0x200]
//  0x3b3d68: bl #0x391490
//  0x3b3d6c: bl #0x2e3578
//  0x3b3d70: stur x0, [FP, #-0x18]
//  0x3b3d74: stur xzr, [x0, #7]
//  0x3b3d78: fmov d0, #30.00000000
//  0x3b3d7c: stur d0, [x0, #0xf]
//  0x3b3d80: stur xzr, [x0, #0x17]
//  0x3b3d84: stur xzr, [x0, #0x1f]
//  0x3b3d88: bl #0x3a142c
//  0x3b3d8c: mov x1, x0
//  0x3b3d90: add x0, PP, #0x12, lsl #12
//  0x3b3d94: ldr x0, [x0, #0x2c8]
//  0x3b3d98: stur x1, [FP, #-0x20]
//  0x3b3d9c: stur w0, [x1, #0xb]
//  0x3b3da0: add x0, PP, #0xf, lsl #12
//  0x3b3da4: ldr x0, [x0, #0x170]
//  0x3b3da8: stur w0, [x1, #0xf]
//  0x3b3dac: add x0, PP, #0x12, lsl #12
//  0x3b3db0: ldr x0, [x0, #0x2d0]
//  0x3b3db4: stur w0, [x1, #0x13]
//  0x3b3db8: add x0, PP, #0x12, lsl #12
//  0x3b3dbc: ldr x0, [x0, #0x2d8]
//  0x3b3dc0: stur w0, [x1, #0x17]
//  0x3b3dc4: bl #0x391a04
//  0x3b3dc8: stur x0, [FP, #-0x28]
//  0x3b3dcc: ldur BARRIER, [FP, #-0x18]
//  0x3b3dd0: ldur LR, [FP, #-0x20]
//  0x3b3dd4: stp LR, BARRIER, [SP]
//  0x3b3dd8: mov x1, x0
//  0x3b3ddc: add x4, PP, #0xf, lsl #12
//  0x3b3de0: ldr x4, [x4, #0x200]
//  0x3b3de4: bl #0x391490
//  0x3b3de8: bl #0x3949ec
//  0x3b3dec: mov x3, x0
//  0x3b3df0: add x0, PP, #0x11, lsl #12
//  0x3b3df4: ldr x0, [x0, #0xb88]
//  0x3b3df8: stur x3, [FP, #-0x18]
//  0x3b3dfc: stur w0, [x3, #0x13]
//  0x3b3e00: add x1, PP, #0x12, lsl #12
//  0x3b3e04: ldr x1, [x1, #0x2e0]
//  0x3b3e08: mov x2, NULL
//  0x3b3e0c: bl #0x61ec54
//  0x3b3e10: stur x0, [FP, #-0x20]
//  0x3b3e14: bl #0x3b3ef0
//  0x3b3e18: mov x3, x0
//  0x3b3e1c: ldur x0, [FP, #-0x20]
//  0x3b3e20: stur x3, [FP, #-0x30]
//  0x3b3e24: stur w0, [x3, #0xb]
//  0x3b3e28: mov x1, NULL
//  0x3b3e2c: mov x2, #0xa
//  0x3b3e30: bl #0x61f920
//  0x3b3e34: mov x2, x0
//  0x3b3e38: ldur x0, [FP, #-0x10]
//  0x3b3e3c: stur x2, [FP, #-0x20]
//  0x3b3e40: stur w0, [x2, #0xf]
//  0x3b3e44: ldur x0, [FP, #-8]
//  0x3b3e48: stur w0, [x2, #0x13]
//  0x3b3e4c: ldur x0, [FP, #-0x28]
//  0x3b3e50: stur w0, [x2, #0x17]
//  0x3b3e54: ldur x0, [FP, #-0x18]
//  0x3b3e58: stur w0, [x2, #0x1b]
//  0x3b3e5c: ldur x0, [FP, #-0x30]
//  0x3b3e60: stur w0, [x2, #0x1f]
//  0x3b3e64: ldr x1, [PP, #0x5c58]
//  0x3b3e68: bl #0x61e854
//  0x3b3e6c: mov x1, x0
//  0x3b3e70: ldur x0, [FP, #-0x20]
//  0x3b3e74: stur x1, [FP, #-8]
//  0x3b3e78: stur w0, [x1, #0xf]
//  0x3b3e7c: mov x0, #0xa
//  0x3b3e80: stur w0, [x1, #0xb]
//  0x3b3e84: bl #0x39310c
//  0x3b3e88: add x1, PP, #0xa, lsl #12
//  0x3b3e8c: ldr x1, [x1, #0x858]
//  0x3b3e90: stur w1, [x0, #0xf]
//  0x3b3e94: add x1, PP, #0xe, lsl #12
//  0x3b3e98: ldr x1, [x1, #0xae0]
//  0x3b3e9c: stur w1, [x0, #0x13]
//  0x3b3ea0: add x1, PP, #0xe, lsl #12
//  0x3b3ea4: ldr x1, [x1, #0xae8]
//  0x3b3ea8: stur w1, [x0, #0x17]
//  0x3b3eac: add x1, PP, #0xe, lsl #12
//  0x3b3eb0: ldr x1, [x1, #0xb60]
//  0x3b3eb4: stur w1, [x0, #0x1b]
//  0x3b3eb8: add x1, PP, #0xe, lsl #12
//  0x3b3ebc: ldr x1, [x1, #0xaf8]
//  0x3b3ec0: stur w1, [x0, #0x23]
//  0x3b3ec4: add x1, PP, #0xa, lsl #12
//  0x3b3ec8: ldr x1, [x1, #0xa8]
//  0x3b3ecc: stur w1, [x0, #0x2b]
//  0x3b3ed0: stur xzr, [x0, #0x2f]
//  0x3b3ed4: ldur x1, [FP, #-8]
//  0x3b3ed8: stur w1, [x0, #0xb]
//  0x3b3edc: mov SP, FP
//  0x3b3ee0: ldp FP, LR, [SP], #0x10
//  0x3b3ee4: ret 
//  0x3b3ee8: bl #0x61fa28
//  0x3b3eec: b #0x3b3c40
//
dynamic PagePartyLuckyBagHistoryEmpty_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3b3c24
  // frame: FP = SP // 0x3b3c28
  // frame: SP = SP - 0x40 // 0x3b3c2c
  local_m8 = x1; // 0x3b3c30
  BARRIER = mem(THR, 0x38); // 0x3b3c34
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3b3ee8
  }
  AllocationStub_Color() /* 0x31d844 */; // 0x3b3c40
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3b3c48
  x1 = x0; // 0x3b3c44
  local_m10 = x1; // 0x3b3c4c
  memSet(x1, 0x27, w0); // 0x3b3c50
  d0 = 1.00000000 /* bits */; // 0x3b3c54
  memSet(x1, 7, d0); // 0x3b3c58
  d0 = 4603614861448139603; // 0x3b3c60
  x17 = PP + 0x10000; // 0x3b3c5c
  memSet(x1, 0xf, d0); // 0x3b3c64
  d0 = 4598546104220471633; // 0x3b3c6c
  x17 = PP + 0x10000; // 0x3b3c68
  memSet(x1, 0x17, d0); // 0x3b3c70
  d0 = 4583569427812588572; // 0x3b3c78
  x17 = PP + 0x10000; // 0x3b3c74
  memSet(x1, 0x1f, d0); // 0x3b3c7c
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3b3c80
  x0 = NULL + 0x20; // 0x3b3c88
  x2 = x0; // 0x3b3c84
  local_m18 = x2; // 0x3b3c8c
  memSet(x2, 7, w0); // 0x3b3c90
  x1 = local_m10; // 0x3b3c94
  memSet(x2, 0xb, w1); // 0x3b3c98
  x1 = mem((PP + 0xf000), 0xb90) /* Double */; // 0x3b3ca0
  memSet(x2, 0x1f, w1); // 0x3b3ca4
  x1 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x3b3cac
  memSet(x2, 0x23, w1); // 0x3b3cb0
  x1 = "virtual_party_lucky_pocket_send_popup_history_blank_tip" /* pp+0xc9a8 */; // 0x3b3cb8
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3b3cbc
  getString() /* 0x3a1dcc */; // 0x3b3cc0
  w2 = mem((local_m8), 0xb); // 0x3b3ccc
  x0 = local_m8; // 0x3b3cc8
  x1 = x0; // 0x3b3cc4
  x2 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3b3cd0
  if (x2 & (1 << 4) == 0) {
    x2 = x1; // 0x3b3cf0
  } else {
    x1 = "common_net_error_tips" /* pp+0xcb50 */; // 0x3b3cdc
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3b3ce0
    getString() /* 0x3a1dcc */; // 0x3b3ce4
    x2 = x0; // 0x3b3ce8
  }
  x0 = local_m18; // 0x3b3cf4
  local_m8 = x2; // 0x3b3cf8
  x1 = NULL + 0x20; // 0x3b3cfc
  backButton() /* 0x3ab5e4 */; // 0x3b3d00
  local_m10 = x0; // 0x3b3d04
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3b3d08
  local_m20 = x0; // 0x3b3d0c
  memSet(x0, 7, xzr); // 0x3b3d10
  d0 = 4633641066610819072; // 0x3b3d14
  memSet(x0, 0xf, d0); // 0x3b3d18
  memSet(x0, 0x17, xzr); // 0x3b3d1c
  memSet(x0, 0x1f, xzr); // 0x3b3d20
  AllocationStub_Text() /* 0x393bf8 */; // 0x3b3d24
  x0 = local_m8; // 0x3b3d2c
  x1 = x0; // 0x3b3d28
  local_m28 = x1; // 0x3b3d30
  memSet(x1, 0xb, w0); // 0x3b3d34
  x0 = local_m18; // 0x3b3d38
  memSet(x1, 0x13, w0); // 0x3b3d3c
  x0 = mem(PP, 0x53a8) /* Obj!TextAlign@12316  */; // 0x3b3d40
  memSet(x1, 0x1b, w0); // 0x3b3d44
  AllocationStub_Container() /* 0x391a04 */; // 0x3b3d48
  local_m8 = x0; // 0x3b3d4c
  BARRIER = local_m20; // 0x3b3d50
  LR = local_m28; // 0x3b3d54
  // frame: LR, BARRIER, mem(SP) // 0x3b3d58
  x1 = x0; // 0x3b3d5c
  x4 = mem((PP + 0xf000), 0x200) /* ImmutableArray */; // 0x3b3d64
  Container_ctor() /* 0x391490 */; // 0x3b3d68
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3b3d6c
  local_m18 = x0; // 0x3b3d70
  memSet(x0, 7, xzr); // 0x3b3d74
  d0 = 30.00000000 /* bits */; // 0x3b3d78
  memSet(x0, 0xf, d0); // 0x3b3d7c
  memSet(x0, 0x17, xzr); // 0x3b3d80
  memSet(x0, 0x1f, xzr); // 0x3b3d84
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x3b3d88
  x0 = "assets/images/3.0x/party_icon_empty_soul.webp" /* pp+0x122c8 */; // 0x3b3d94
  x1 = x0; // 0x3b3d8c
  local_m20 = x1; // 0x3b3d98
  memSet(x1, 0xb, w0); // 0x3b3d9c
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x3b3da4
  memSet(x1, 0xf, w0); // 0x3b3da8
  x0 = mem((PP + 0x12000), 0x2d0) /* Double */; // 0x3b3db0
  memSet(x1, 0x13, w0); // 0x3b3db4
  x0 = mem((PP + 0x12000), 0x2d8) /* Double */; // 0x3b3dbc
  memSet(x1, 0x17, w0); // 0x3b3dc0
  AllocationStub_Container() /* 0x391a04 */; // 0x3b3dc4
  local_m28 = x0; // 0x3b3dc8
  BARRIER = local_m18; // 0x3b3dcc
  LR = local_m20; // 0x3b3dd0
  // frame: LR, BARRIER, mem(SP) // 0x3b3dd4
  x1 = x0; // 0x3b3dd8
  x4 = mem((PP + 0xf000), 0x200) /* ImmutableArray */; // 0x3b3de0
  Container_ctor() /* 0x391490 */; // 0x3b3de4
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x3b3de8
  x0 = mem((PP + 0x11000), 0xb88) /* Double */; // 0x3b3df4
  x3 = x0; // 0x3b3dec
  local_m18 = x3; // 0x3b3df8
  memSet(x3, 0x13, w0); // 0x3b3dfc
  x1 = mem((PP + 0x12000), 0x2e0) /* Function */; // 0x3b3e04
  x2 = NULL; // 0x3b3e08
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3b3e0c
  local_m20 = x0; // 0x3b3e10
  AllocationStub_PartyPocketButton() /* 0x3b3ef0 */; // 0x3b3e14
  x0 = local_m20; // 0x3b3e1c
  x3 = x0; // 0x3b3e18
  local_m30 = x3; // 0x3b3e20
  memSet(x3, 0xb, w0); // 0x3b3e24
  x1 = NULL; // 0x3b3e28
  x2 = 10; // 0x3b3e2c
  sub_0x61f920(); // 0x3b3e30
  x0 = local_m10; // 0x3b3e38
  x2 = x0; // 0x3b3e34
  local_m20 = x2; // 0x3b3e3c
  memSet(x2, 0xf, w0); // 0x3b3e40
  x0 = local_m8; // 0x3b3e44
  memSet(x2, 0x13, w0); // 0x3b3e48
  x0 = local_m28; // 0x3b3e4c
  memSet(x2, 0x17, w0); // 0x3b3e50
  x0 = local_m18; // 0x3b3e54
  memSet(x2, 0x1b, w0); // 0x3b3e58
  x0 = local_m30; // 0x3b3e5c
  memSet(x2, 0x1f, w0); // 0x3b3e60
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3b3e64
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3b3e68
  x0 = local_m20; // 0x3b3e70
  x1 = x0; // 0x3b3e6c
  local_m8 = x1; // 0x3b3e74
  memSet(x1, 0xf, w0); // 0x3b3e78
  x0 = 10; // 0x3b3e7c
  memSet(x1, 0xb, w0); // 0x3b3e80
  AllocationStub_Column() /* 0x39310c */; // 0x3b3e84
  x1 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3b3e8c
  memSet(x0, 0xf, w1); // 0x3b3e90
  x1 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3b3e98
  memSet(x0, 0x13, w1); // 0x3b3e9c
  x1 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3b3ea4
  memSet(x0, 0x17, w1); // 0x3b3ea8
  x1 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3b3eb0
  memSet(x0, 0x1b, w1); // 0x3b3eb4
  x1 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3b3ebc
  memSet(x0, 0x23, w1); // 0x3b3ec0
  x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3b3ec8
  memSet(x0, 0x2b, w1); // 0x3b3ecc
  memSet(x0, 0x2f, xzr); // 0x3b3ed0
  x1 = local_m8; // 0x3b3ed4
  memSet(x0, 0xb, w1); // 0x3b3ed8
  SP = FP; // 0x3b3edc
  // frame: FP, LR, mem(SP), 0x10 // 0x3b3ee0
  return;
}

// PagePartyLuckyBagHistoryEmpty_anon_closure
// raw disassembly:
//  0x3b3efc: stp FP, LR, [SP, #-0x10]!
//  0x3b3f00: mov FP, SP
//  0x3b3f04: ldr BARRIER, [THR, #0x38]
//  0x3b3f08: cmp SP, BARRIER
//  0x3b3f0c: b.ls #0x3b3f34
//  0x3b3f10: bl #0x3a8d00
//  0x3b3f14: add x1, PP, #0x12, lsl #12
//  0x3b3f18: ldr x1, [x1, #0x2e8]
//  0x3b3f1c: ldr x4, [PP, #0x4c0]
//  0x3b3f20: bl #0x3a8e60
//  0x3b3f24: mov x0, NULL
//  0x3b3f28: mov SP, FP
//  0x3b3f2c: ldp FP, LR, [SP], #0x10
//  0x3b3f30: ret 
//  0x3b3f34: bl #0x61fa28
//  0x3b3f38: b #0x3b3f10
//
dynamic PagePartyLuckyBagHistoryEmpty_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3b3efc
  BARRIER = mem(THR, 0x38); // 0x3b3f04
  // frame: FP = SP // 0x3b3f00
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3b3f34
  }
  PagePKGameBetTabRecordState_anon_closure() /* 0x3a8d00 */; // 0x3b3f10
  x1 = "LuckyPocket_NoneHistoryforSendPop" /* pp+0x122e8 */; // 0x3b3f18
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3b3f1c
  EventTrack_eventClick() /* 0x3a8e60 */; // 0x3b3f20
  SP = FP; // 0x3b3f28
  x0 = NULL; // 0x3b3f24
  // frame: FP, LR, mem(SP), 0x10 // 0x3b3f2c
  return;
}

// PagePartyLuckyBagHistoryState_build
// raw disassembly:
//  0x424530: stp FP, LR, [SP, #-0x10]!
//  0x424534: mov FP, SP
//  0x424538: sub SP, SP, #0x18
//  0x42453c: stur x1, [FP, #-8]
//  0x424540: ldr BARRIER, [THR, #0x38]
//  0x424544: cmp SP, BARRIER
//  0x424548: b.ls #0x4245e8
//  0x42454c: mov x1, #1
//  0x424550: bl #0x61e890
//  0x424554: mov x1, x0
//  0x424558: ldur x0, [FP, #-8]
//  0x42455c: stur w0, [x1, #0xf]
//  0x424560: ldur w3, [x0, #0x13]
//  0x424564: add x3, x3, HEAP, lsl #32
//  0x424568: mov x2, x1
//  0x42456c: stur x3, [FP, #-0x10]
//  0x424570: add x1, PP, #0x11, lsl #12
//  0x424574: ldr x1, [x1, #0x448]
//  0x424578: bl #0x61ec54
//  0x42457c: add x1, PP, #0x11, lsl #12
//  0x424580: ldr x1, [x1, #0x450]
//  0x424584: stur x0, [FP, #-8]
//  0x424588: bl #0x3b81c4
//  0x42458c: mov x2, x0
//  0x424590: ldur x0, [FP, #-8]
//  0x424594: stur x2, [FP, #-0x18]
//  0x424598: stur w0, [x2, #0x1b]
//  0x42459c: add x1, PP, #0x11, lsl #12
//  0x4245a0: ldr x1, [x1, #0x450]
//  0x4245a4: bl #0x41a408
//  0x4245a8: mov x1, x0
//  0x4245ac: ldur x0, [FP, #-0x10]
//  0x4245b0: stur w0, [x1, #0xb]
//  0x4245b4: add x0, PP, #0xc, lsl #12
//  0x4245b8: ldr x0, [x0, #0x2f0]
//  0x4245bc: stur w0, [x1, #0x13]
//  0x4245c0: ldur x0, [FP, #-0x18]
//  0x4245c4: stur w1, [x0, #0x13]
//  0x4245c8: mov x1, x0
//  0x4245cc: bl #0x60bd34
//  0x4245d0: bl #0x3b91cc
//  0x4245d4: ldur x1, [FP, #-0x18]
//  0x4245d8: stur w1, [x0, #0xb]
//  0x4245dc: mov SP, FP
//  0x4245e0: ldp FP, LR, [SP], #0x10
//  0x4245e4: ret 
//  0x4245e8: bl #0x61fa28
//  0x4245ec: b #0x42454c
//
dynamic PagePartyLuckyBagHistoryState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x424530
  // frame: FP = SP // 0x424534
  // frame: SP = SP - 0x18 // 0x424538
  local_m8 = x1; // 0x42453c
  BARRIER = mem(THR, 0x38); // 0x424540
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4245e8
  }
  x1 = 1; // 0x42454c
  sub_0x61e890(); // 0x424550
  x0 = local_m8; // 0x424558
  x1 = x0; // 0x424554
  memSet(x1, 0xf, w0); // 0x42455c
  w3 = mem(x0, 0x13); // 0x424560
  x2 = x1; // 0x424568
  x3 = ((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x424564
  local_m10 = x3; // 0x42456c
  x1 = mem((PP + 0x11000), 0x448) /* Function */; // 0x424574
  AllocationStub__Closure() /* 0x61ec54 */; // 0x424578
  x1 = mem((PP + 0x11000), 0x450) /* TypeArguments */; // 0x424580
  local_m8 = x0; // 0x424584
  AllocationStub_ChangeNotifierProvider() /* 0x3b81c4 */; // 0x424588
  x0 = local_m8; // 0x424590
  x2 = x0; // 0x42458c
  local_m18 = x2; // 0x424594
  memSet(x2, 0x1b, w0); // 0x424598
  x1 = mem((PP + 0x11000), 0x450) /* TypeArguments */; // 0x4245a0
  AllocationStub__ValueInheritedProvider() /* 0x41a408 */; // 0x4245a4
  x0 = local_m10; // 0x4245ac
  x1 = x0; // 0x4245a8
  memSet(x1, 0xb, w0); // 0x4245b0
  x0 = mem((PP + 0xc000), 0x2f0) /* Closure */; // 0x4245b8
  memSet(x1, 0x13, w0); // 0x4245bc
  x0 = local_m18; // 0x4245c0
  memSet(x0, 0x13, w1); // 0x4245c4
  x1 = x0; // 0x4245c8
  int_kNull() /* 0x60bd34 */; // 0x4245cc
  AllocationStub_PartyPocketDialog() /* 0x3b91cc */; // 0x4245d0
  x1 = local_m18; // 0x4245d4
  memSet(x0, 0xb, w1); // 0x4245d8
  SP = FP; // 0x4245dc
  // frame: FP, LR, mem(SP), 0x10 // 0x4245e0
  return;
}

// PagePartyLuckyBagHistoryState_anon_closure
// raw disassembly:
//  0x4245f0: stp FP, LR, [SP, #-0x10]!
//  0x4245f4: mov FP, SP
//  0x4245f8: sub SP, SP, #8
//  0x4245fc: ldr x0, [FP, #0x20]
//  0x424600: ldur w2, [x0, #0x17]
//  0x424604: add x2, x2, HEAP, lsl #32
//  0x424608: add x1, PP, #0x11, lsl #12
//  0x42460c: ldr x1, [x1, #0x458]
//  0x424610: bl #0x61ec54
//  0x424614: add x1, PP, #0x11, lsl #12
//  0x424618: ldr x1, [x1, #0x450]
//  0x42461c: stur x0, [FP, #-8]
//  0x424620: bl #0x41a414
//  0x424624: ldur x1, [FP, #-8]
//  0x424628: stur w1, [x0, #0x13]
//  0x42462c: mov SP, FP
//  0x424630: ldp FP, LR, [SP], #0x10
//  0x424634: ret 
//
dynamic PagePartyLuckyBagHistoryState_anon_closure() {
  dynamic FP;
  dynamic SP;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4245f0
  // frame: FP = SP // 0x4245f4
  // frame: SP = SP - 8 // 0x4245f8
  w2 = mem((local_20), 0x17); /* _PagePartyLuckyBagHistoryState._refreshController (off 0x18) */  // 0x424600
  x0 = local_20; // 0x4245fc
  x1 = mem((PP + 0x11000), 0x458) /* Function */; // 0x42460c
  x2 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PagePartyLuckyBagHistoryState._refreshController (off 0x18) */  // 0x424604
  AllocationStub__Closure() /* 0x61ec54 */; // 0x424610
  x1 = mem((PP + 0x11000), 0x450) /* TypeArguments */; // 0x424618
  local_m8 = x0; // 0x42461c
  AllocationStub_Consumer() /* 0x41a414 */; // 0x424620
  x1 = local_m8; // 0x424624
  memSet(x0, 0x13, w1); // 0x424628
  SP = FP; // 0x42462c
  // frame: FP, LR, mem(SP), 0x10 // 0x424630
  return;
}

// PagePartyLuckyBagHistoryState_anon_closure_2
// raw disassembly:
//  0x424638: stp FP, LR, [SP, #-0x10]!
//  0x42463c: mov FP, SP
//  0x424640: sub SP, SP, #8
//  0x424644: ldr x0, [FP, #0x28]
//  0x424648: ldur w1, [x0, #0x17]
//  0x42464c: add x1, x1, HEAP, lsl #32
//  0x424650: ldr BARRIER, [THR, #0x38]
//  0x424654: cmp SP, BARRIER
//  0x424658: b.ls #0x424714
//  0x42465c: ldr x0, [FP, #0x18]
//  0x424660: ldur w2, [x0, #0x37]
//  0x424664: add x2, x2, HEAP, lsl #32
//  0x424668: tbnz w2, #4, #0x4246f0
//  0x42466c: ldur w2, [x0, #0x2b]
//  0x424670: add x2, x2, HEAP, lsl #32
//  0x424674: ldur w3, [x2, #0xb]
//  0x424678: sbfx x2, x3, #1, #0x1f
//  0x42467c: cmp x2, #0
//  0x424680: b.le #0x4246c4
//  0x424684: ldur w2, [x1, #0xf]
//  0x424688: add x2, x2, HEAP, lsl #32
//  0x42468c: ldur w1, [x2, #0x17]
//  0x424690: add x1, x1, HEAP, lsl #32
//  0x424694: ldr BARRIER, [PP, #0x40]
//  0x424698: cmp w1, w16
//  0x42469c: b.eq #0x42471c
//  0x4246a0: stur x1, [FP, #-8]
//  0x4246a4: bl #0x424734
//  0x4246a8: mov x1, x0
//  0x4246ac: ldr x0, [FP, #0x18]
//  0x4246b0: stur w0, [x1, #0xb]
//  0x4246b4: ldur x0, [FP, #-8]
//  0x4246b8: stur w0, [x1, #0xf]
//  0x4246bc: mov x0, x1
//  0x4246c0: b #0x4246e4
//  0x4246c4: ldur w1, [x0, #0x3b]
//  0x4246c8: add x1, x1, HEAP, lsl #32
//  0x4246cc: stur x1, [FP, #-8]
//  0x4246d0: bl #0x424728
//  0x4246d4: mov x1, x0
//  0x4246d8: ldur x0, [FP, #-8]
//  0x4246dc: stur w0, [x1, #0xb]
//  0x4246e0: mov x0, x1
//  0x4246e4: mov SP, FP
//  0x4246e8: ldp FP, LR, [SP], #0x10
//  0x4246ec: ret 
//  0x4246f0: bl #0x391a04
//  0x4246f4: mov x1, x0
//  0x4246f8: stur x0, [FP, #-8]
//  0x4246fc: ldr x4, [PP, #0x4c0]
//  0x424700: bl #0x391490
//  0x424704: ldur x0, [FP, #-8]
//  0x424708: mov SP, FP
//  0x42470c: ldp FP, LR, [SP], #0x10
//  0x424710: ret 
//  0x424714: bl #0x61fa28
//  0x424718: b #0x42465c
//  0x42471c: add x9, PP, #0x11, lsl #12
//  0x424720: ldr x9, [x9, #0x460]
//  0x424724: bl #0x620258
//
dynamic PagePartyLuckyBagHistoryState_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x424638
  BARRIER = mem(THR, 0x38); // 0x424650
  // frame: FP = SP // 0x42463c
  // frame: SP = SP - 8 // 0x424640
  w1 = mem((local_28), 0x17); /* _PagePartyLuckyBagHistoryState._refreshController (off 0x18) */  // 0x424648
  x0 = local_28; // 0x424644
  x1 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PagePartyLuckyBagHistoryState._refreshController (off 0x18) */  // 0x42464c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x424714
  }
  w2 = mem((local_18), 0x37); // 0x424660
  x0 = local_18; // 0x42465c
  x2 = ((mem((local_18), 0x37)) & 0xffffffff) + (HEAP << 32); // 0x424664
  if (x2 & (1 << 4) != 0) {
    AllocationStub_Container() /* 0x391a04 */; // 0x4246f0
    x1 = x0; // 0x4246f4
    local_m8 = x0; // 0x4246f8
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4246fc
    Container_ctor() /* 0x391490 */; // 0x424700
    SP = FP; // 0x424708
    x0 = local_m8; // 0x424704
    // frame: FP, LR, mem(SP), 0x10 // 0x42470c
    return;
  }
  w3 = mem(((w2 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x424674
  x2 = (((mem(((w2 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x424678
  x3 = (mem(((w2 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x424674
  if (x2 <= 0) {
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4246c8
    local_m8 = x1; // 0x4246cc
    AllocationStub__PagePartyLuckyBagHistoryEmpty() /* 0x424728 */; // 0x4246d0
    x0 = local_m8; // 0x4246d8
    x1 = x0; // 0x4246d4
    memSet(x1, 0xb, w0); // 0x4246dc
    x0 = x1; // 0x4246e0
  } else {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x424694
    w1 = mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x42468c
    x1 = ((mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x424690
    x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x424688
    if (w1 == w16) {
      x9 = mem((PP + 0x11000), 0x460) /* Field */; // 0x424720
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x424724
    }
    local_m8 = x1; // 0x4246a0
    AllocationStub__PagePartyLuckyBagHistoryList() /* 0x424734 */; // 0x4246a4
    x0 = local_18; // 0x4246ac
    x1 = x0; // 0x4246a8
    memSet(x1, 0xb, w0); // 0x4246b0
    x0 = local_m8; // 0x4246b4
    memSet(x1, 0xf, w0); // 0x4246b8
    x0 = x1; // 0x4246bc
  }
  SP = FP; // 0x4246e4
  // frame: FP, LR, mem(SP), 0x10 // 0x4246e8
  return;
}

// PagePartyLuckyBagHistoryState_dispose
// raw disassembly:
//  0x4513a4: stp FP, LR, [SP, #-0x10]!
//  0x4513a8: mov FP, SP
//  0x4513ac: sub SP, SP, #8
//  0x4513b0: mov x0, x1
//  0x4513b4: stur x1, [FP, #-8]
//  0x4513b8: ldr BARRIER, [THR, #0x38]
//  0x4513bc: cmp SP, BARRIER
//  0x4513c0: b.ls #0x4513f8
//  0x4513c4: mov x1, x0
//  0x4513c8: bl #0x451970
//  0x4513cc: ldur x0, [FP, #-8]
//  0x4513d0: ldur w1, [x0, #0x17]
//  0x4513d4: add x1, x1, HEAP, lsl #32
//  0x4513d8: ldr BARRIER, [PP, #0x40]
//  0x4513dc: cmp w1, w16
//  0x4513e0: b.eq #0x451400
//  0x4513e4: bl #0x45132c
//  0x4513e8: mov x0, NULL
//  0x4513ec: mov SP, FP
//  0x4513f0: ldp FP, LR, [SP], #0x10
//  0x4513f4: ret 
//  0x4513f8: bl #0x61fa28
//  0x4513fc: b #0x4513c4
//  0x451400: add x9, PP, #0x11, lsl #12
//  0x451404: ldr x9, [x9, #0x460]
//  0x451408: bl #0x620258
//
dynamic PagePartyLuckyBagHistoryState_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4513a4
  // frame: FP = SP // 0x4513a8
  // frame: SP = SP - 8 // 0x4513ac
  x0 = x1; // 0x4513b0
  local_m8 = x1; // 0x4513b4
  BARRIER = mem(THR, 0x38); // 0x4513b8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4513f8
  }
  x1 = x0; // 0x4513c4
  SoulState_dispose() /* 0x451970 */; // 0x4513c8
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4513d8
  w1 = mem((local_m8), 0x17); /* _PagePartyLuckyBagHistoryState._refreshController (off 0x18) */  // 0x4513d0
  x0 = local_m8; // 0x4513cc
  x1 = ((mem((local_m8), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PagePartyLuckyBagHistoryState._refreshController (off 0x18) */  // 0x4513d4
  if (w1 == w16) {
    x9 = mem((PP + 0x11000), 0x460) /* Field */; // 0x451404
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x451408
  }
  RefreshController_dispose() /* 0x45132c */; // 0x4513e4
  SP = FP; // 0x4513ec
  x0 = NULL; // 0x4513e8
  // frame: FP, LR, mem(SP), 0x10 // 0x4513f0
  return;
}

// PagePartyLuckyBagHistoryState_initState
// raw disassembly:
//  0x4d55a8: stp FP, LR, [SP, #-0x10]!
//  0x4d55ac: mov FP, SP
//  0x4d55b0: sub SP, SP, #0x18
//  0x4d55b4: stur x1, [FP, #-8]
//  0x4d55b8: ldr BARRIER, [THR, #0x38]
//  0x4d55bc: cmp SP, BARRIER
//  0x4d55c0: b.ls #0x4d5648
//  0x4d55c4: mov x1, #1
//  0x4d55c8: bl #0x61e890
//  0x4d55cc: mov x1, x0
//  0x4d55d0: ldur x0, [FP, #-8]
//  0x4d55d4: stur x1, [FP, #-0x10]
//  0x4d55d8: stur w0, [x1, #0xf]
//  0x4d55dc: bl #0x4c47f0
//  0x4d55e0: mov x1, x0
//  0x4d55e4: stur x0, [FP, #-0x18]
//  0x4d55e8: bl #0x4c46e0
//  0x4d55ec: ldur x0, [FP, #-0x18]
//  0x4d55f0: ldur x1, [FP, #-8]
//  0x4d55f4: stur w0, [x1, #0x17]
//  0x4d55f8: ldurb w16, [x1, #-1]
//  0x4d55fc: ldurb w17, [x0, #-1]
//  0x4d5600: and BARRIER, x17, BARRIER, lsr #2
//  0x4d5604: tst BARRIER, HEAP, lsr #32
//  0x4d5608: b.eq #0x4d5610
//  0x4d560c: bl #0x61e04c
//  0x4d5610: ldur w0, [x1, #0x13]
//  0x4d5614: add x0, x0, HEAP, lsl #32
//  0x4d5618: ldur x2, [FP, #-0x10]
//  0x4d561c: stur x0, [FP, #-0x18]
//  0x4d5620: add x1, PP, #0x11, lsl #12
//  0x4d5624: ldr x1, [x1, #0x468]
//  0x4d5628: bl #0x61ec54
//  0x4d562c: ldur x1, [FP, #-0x18]
//  0x4d5630: mov x2, x0
//  0x4d5634: bl #0x4d5650
//  0x4d5638: mov x0, NULL
//  0x4d563c: mov SP, FP
//  0x4d5640: ldp FP, LR, [SP], #0x10
//  0x4d5644: ret 
//  0x4d5648: bl #0x61fa28
//  0x4d564c: b #0x4d55c4
//
dynamic PagePartyLuckyBagHistoryState_initState() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d55a8
  // frame: FP = SP // 0x4d55ac
  // frame: SP = SP - 0x18 // 0x4d55b0
  local_m8 = x1; // 0x4d55b4
  BARRIER = mem(THR, 0x38); // 0x4d55b8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d5648
  }
  x1 = 1; // 0x4d55c4
  sub_0x61e890(); // 0x4d55c8
  x0 = local_m8; // 0x4d55d0
  x1 = x0; // 0x4d55cc
  local_m10 = x1; // 0x4d55d4
  memSet(x1, 0xf, w0); // 0x4d55d8
  AllocationStub_RefreshController() /* 0x4c47f0 */; // 0x4d55dc
  x1 = x0; // 0x4d55e0
  local_m18 = x0; // 0x4d55e4
  RefreshController_ctor() /* 0x4c46e0 */; // 0x4d55e8
  x0 = local_m18; // 0x4d55ec
  x1 = local_m8; // 0x4d55f0
  memSet(x1, 0x17, w0); // 0x4d55f4
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d5600
  w16 = mem(x1, -1); // 0x4d55f8
  w17 = mem(x0, -1); // 0x4d55fc
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d55f8
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d55fc
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d560c
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d5614
  x2 = local_m10; // 0x4d5618
  local_m18 = x0; // 0x4d561c
  x1 = mem((PP + 0x11000), 0x468) /* Function */; // 0x4d5624
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d5628
  x1 = local_m18; // 0x4d562c
  x2 = x0; // 0x4d5630
  LuckyBagHistoryListItemNotifier_gainLuckyBagHistory() /* 0x4d5650 */; // 0x4d5634
  SP = FP; // 0x4d563c
  x0 = NULL; // 0x4d5638
  // frame: FP, LR, mem(SP), 0x10 // 0x4d5640
  return;
}

// PagePartyLuckyBagHistoryState_anon_closure_3
// raw disassembly:
//  0x4d56a4: stp FP, LR, [SP, #-0x10]!
//  0x4d56a8: mov FP, SP
//  0x4d56ac: ldr x0, [FP, #0x20]
//  0x4d56b0: ldur w1, [x0, #0x17]
//  0x4d56b4: add x1, x1, HEAP, lsl #32
//  0x4d56b8: ldr BARRIER, [THR, #0x38]
//  0x4d56bc: cmp SP, BARRIER
//  0x4d56c0: b.ls #0x4d574c
//  0x4d56c4: ldr x0, [FP, #0x18]
//  0x4d56c8: tbnz w0, #4, #0x4d571c
//  0x4d56cc: ldr x0, [FP, #0x10]
//  0x4d56d0: tbnz w0, #4, #0x4d56f8
//  0x4d56d4: ldur w0, [x1, #0xf]
//  0x4d56d8: add x0, x0, HEAP, lsl #32
//  0x4d56dc: ldur w1, [x0, #0x17]
//  0x4d56e0: add x1, x1, HEAP, lsl #32
//  0x4d56e4: ldr BARRIER, [PP, #0x40]
//  0x4d56e8: cmp w1, w16
//  0x4d56ec: b.eq #0x4d5754
//  0x4d56f0: bl #0x3adfd4
//  0x4d56f4: b #0x4d573c
//  0x4d56f8: ldur w0, [x1, #0xf]
//  0x4d56fc: add x0, x0, HEAP, lsl #32
//  0x4d5700: ldur w1, [x0, #0x17]
//  0x4d5704: add x1, x1, HEAP, lsl #32
//  0x4d5708: ldr BARRIER, [PP, #0x40]
//  0x4d570c: cmp w1, w16
//  0x4d5710: b.eq #0x4d5760
//  0x4d5714: bl #0x3ade48
//  0x4d5718: b #0x4d573c
//  0x4d571c: ldur w0, [x1, #0xf]
//  0x4d5720: add x0, x0, HEAP, lsl #32
//  0x4d5724: ldur w1, [x0, #0x17]
//  0x4d5728: add x1, x1, HEAP, lsl #32
//  0x4d572c: ldr BARRIER, [PP, #0x40]
//  0x4d5730: cmp w1, w16
//  0x4d5734: b.eq #0x4d576c
//  0x4d5738: bl #0x3adbb4
//  0x4d573c: mov x0, NULL
//  0x4d5740: mov SP, FP
//  0x4d5744: ldp FP, LR, [SP], #0x10
//  0x4d5748: ret 
//  0x4d574c: bl #0x61fa28
//  0x4d5750: b #0x4d56c4
//  0x4d5754: add x9, PP, #0x11, lsl #12
//  0x4d5758: ldr x9, [x9, #0x460]
//  0x4d575c: bl #0x620258
//  0x4d5760: add x9, PP, #0x11, lsl #12
//  0x4d5764: ldr x9, [x9, #0x460]
//  0x4d5768: bl #0x620258
//  0x4d576c: add x9, PP, #0x11, lsl #12
//  0x4d5770: ldr x9, [x9, #0x460]
//  0x4d5774: bl #0x620258
//
dynamic PagePartyLuckyBagHistoryState_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d56a4
  BARRIER = mem(THR, 0x38); // 0x4d56b8
  // frame: FP = SP // 0x4d56a8
  w1 = mem((local_20), 0x17); /* _PagePartyLuckyBagHistoryState._refreshController (off 0x18) */  // 0x4d56b0
  x0 = local_20; // 0x4d56ac
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); /* _PagePartyLuckyBagHistoryState._refreshController (off 0x18) */  // 0x4d56b4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d574c
  }
  x0 = local_18; // 0x4d56c4
  if (x0 & (1 << 4) != 0) {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d572c
    w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4d5724
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d5720
    x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d5728
    if (w1 != w16) {
      RefreshController_loadFailed() /* 0x3adbb4 */; // 0x4d5738
      SP = FP; // 0x4d5740
      x0 = NULL; // 0x4d573c
      // frame: FP, LR, mem(SP), 0x10 // 0x4d5744
      return;
    }
  } else {
    x0 = local_10; // 0x4d56cc
    if (x0 & (1 << 4) != 0) {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d5708
      w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4d5700
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d56fc
      x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d5704
      if (w1 != w16) {
        RefreshController_loadComplete() /* 0x3ade48 */; // 0x4d5714
        // duplicated tail (join at 0x4d573c; the same code was emitted above)
        SP = FP; // 0x4d5740
        x0 = NULL; // 0x4d573c
        // frame: FP, LR, mem(SP), 0x10 // 0x4d5744
        return;
      }
    } else {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d56e4
      w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4d56dc
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d56d8
      x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d56e0
      if (w1 == w16) {
        x9 = mem((PP + 0x11000), 0x460) /* Field */; // 0x4d5758
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d575c
      }
      RefreshController_loadNoData() /* 0x3adfd4 */; // 0x4d56f0
      // duplicated tail (join at 0x4d573c; the same code was emitted above)
      SP = FP; // 0x4d5740
      x0 = NULL; // 0x4d573c
      // frame: FP, LR, mem(SP), 0x10 // 0x4d5744
      return;
    }
    x9 = mem((PP + 0x11000), 0x460) /* Field */; // 0x4d5764
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d5768
  }
  x9 = mem((PP + 0x11000), 0x460) /* Field */; // 0x4d5770
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d5774
}

// PagePartyLuckyBagHistory_createState
// raw disassembly:
//  0x4c4334: stp FP, LR, [SP, #-0x10]!
//  0x4c4338: mov FP, SP
//  0x4c433c: sub SP, SP, #0x10
//  0x4c4340: ldr BARRIER, [THR, #0x38]
//  0x4c4344: cmp SP, BARRIER
//  0x4c4348: b.ls #0x4c43ac
//  0x4c434c: add x1, PP, #0xb, lsl #12
//  0x4c4350: ldr x1, [x1, #0x7d0]
//  0x4c4354: bl #0x4c4488
//  0x4c4358: mov x1, x0
//  0x4c435c: ldr x0, [PP, #0x40]
//  0x4c4360: stur x1, [FP, #-8]
//  0x4c4364: stur w0, [x1, #0x17]
//  0x4c4368: bl #0x4c447c
//  0x4c436c: mov x1, x0
//  0x4c4370: stur x0, [FP, #-0x10]
//  0x4c4374: bl #0x4c43b4
//  0x4c4378: ldur x0, [FP, #-0x10]
//  0x4c437c: ldur x1, [FP, #-8]
//  0x4c4380: stur w0, [x1, #0x13]
//  0x4c4384: ldurb w16, [x1, #-1]
//  0x4c4388: ldurb w17, [x0, #-1]
//  0x4c438c: and BARRIER, x17, BARRIER, lsr #2
//  0x4c4390: tst BARRIER, HEAP, lsr #32
//  0x4c4394: b.eq #0x4c439c
//  0x4c4398: bl #0x61e04c
//  0x4c439c: mov x0, x1
//  0x4c43a0: mov SP, FP
//  0x4c43a4: ldp FP, LR, [SP], #0x10
//  0x4c43a8: ret 
//  0x4c43ac: bl #0x61fa28
//  0x4c43b0: b #0x4c434c
//
dynamic PagePartyLuckyBagHistory_createState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c4334
  BARRIER = mem(THR, 0x38); // 0x4c4340
  // frame: FP = SP // 0x4c4338
  // frame: SP = SP - 0x10 // 0x4c433c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c43ac
  }
  x1 = mem((PP + 0xb000), 0x7d0) /* TypeArguments */; // 0x4c4350
  AllocationStub__PagePartyLuckyBagHistoryState() /* 0x4c4488 */; // 0x4c4354
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4c435c
  x1 = x0; // 0x4c4358
  local_m8 = x1; // 0x4c4360
  memSet(x1, 0x17, w0); // 0x4c4364
  AllocationStub_LuckyBagHistoryListItemNotifier() /* 0x4c447c */; // 0x4c4368
  x1 = x0; // 0x4c436c
  local_m10 = x0; // 0x4c4370
  LuckyBagHistoryListItemNotifier_ctor() /* 0x4c43b4 */; // 0x4c4374
  x0 = local_m10; // 0x4c4378
  x1 = local_m8; // 0x4c437c
  memSet(x1, 0x13, w0); // 0x4c4380
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c438c
  w16 = mem(x1, -1); // 0x4c4384
  w17 = mem(x0, -1); // 0x4c4388
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c4384
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c4388
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c4398
  }
  SP = FP; // 0x4c43a0
  x0 = x1; // 0x4c439c
  // frame: FP, LR, mem(SP), 0x10 // 0x4c43a4
  return;
}
