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

dynamic AllocationStub_BorderRadius, AllocationStub_BoxDecoration, AllocationStub_ButtonStyle;
dynamic AllocationStub_ChangeNotifierProvider, AllocationStub_Color, AllocationStub_Column;
dynamic AllocationStub_Consumer, AllocationStub_Container, AllocationStub_Duration;
dynamic AllocationStub_LabeledGlobalKey, AllocationStub_Padding;
dynamic AllocationStub_PartyPasswordNotifier, AllocationStub_Radius;
dynamic AllocationStub_RepaintBoundary, AllocationStub_RoundedRectangleBorder;
dynamic AllocationStub_Row, AllocationStub_SOAssetImage, AllocationStub_SingleChildScrollView;
dynamic AllocationStub_SizedBox, AllocationStub_SoulPageScaffold, AllocationStub_Spacer;
dynamic AllocationStub_Stack, AllocationStub_Text, AllocationStub_TextButton;
dynamic AllocationStub__Closure, AllocationStub__GrowableList;
dynamic AllocationStub__PartyPasswordState, BARRIER, Container_ctor, EventTrack_eventClick;
dynamic EventTrack_eventPv, FP, GestureDetector_ctor, HEAP, InheritedProvider_ctor, LR;
dynamic LateInitializationErrorSharedWithoutFpuRegsStub_0x620258, NULL;
dynamic NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0, PP, PartyPasswordNotifier_saveSnapshot;
dynamic RouterNative_getInstance, RouterNative_routeFlutter, SOColors_get_color_0b005c;
dynamic SOColors_get_color_20f6f6f6, SOColors_get_color_3825C5, SOColors_get_white60, SP;
dynamic SoulNavigator_navigate, SoulNavigator_withString, SoulState_onPageShow;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_op_add;
dynamic StringBase_substring, THR, TextStyles_commonContent, TextStyles_pageBigTitle;
dynamic TextStyles_pageBiggerTitle, TextStyles_pageStandardTitle, Theme_of;
dynamic WidgetStateProperty_all, WriteBarrierStub_x1, WriteBarrierStub_x2, WriteBarrierStub_x3;
dynamic d0, d1, getString, local_0, local_10, local_28, local_m10, local_m18, local_m20;
dynamic local_m28, local_m30, local_m38, local_m40, local_m48, local_m8, sub_0x2b16e4;
dynamic sub_0x3a1d94, sub_0x61d99c, sub_0x61e890, sub_0x61f920, sub_0x62a0c0, w0, w1, w16, w17;
dynamic w2, w22, w3, w4, w5, w6, x0, x1, x16, x17, x2, x21, x3, x4, x5, x6, x8, x9, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$party$page_party_password
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PartyPasswordState_build
// raw disassembly:
//  0x424740: stp FP, LR, [SP, #-0x10]!
//  0x424744: mov FP, SP
//  0x424748: sub SP, SP, #0x20
//  0x42474c: stur x1, [FP, #-8]
//  0x424750: ldr BARRIER, [THR, #0x38]
//  0x424754: cmp SP, BARRIER
//  0x424758: b.ls #0x42480c
//  0x42475c: mov x1, #1
//  0x424760: bl #0x61e890
//  0x424764: mov x1, x0
//  0x424768: ldur x0, [FP, #-8]
//  0x42476c: stur x1, [FP, #-0x10]
//  0x424770: stur w0, [x1, #0xf]
//  0x424774: bl #0x424814
//  0x424778: ldur x2, [FP, #-0x10]
//  0x42477c: add x1, PP, #0x11, lsl #12
//  0x424780: ldr x1, [x1, #0xe0]
//  0x424784: stur x0, [FP, #-8]
//  0x424788: bl #0x61ec54
//  0x42478c: add x1, PP, #0x11, lsl #12
//  0x424790: ldr x1, [x1, #0xe8]
//  0x424794: stur x0, [FP, #-0x18]
//  0x424798: bl #0x41a414
//  0x42479c: mov x3, x0
//  0x4247a0: ldur x0, [FP, #-0x18]
//  0x4247a4: stur x3, [FP, #-0x20]
//  0x4247a8: stur w0, [x3, #0x13]
//  0x4247ac: ldur x2, [FP, #-0x10]
//  0x4247b0: add x1, PP, #0x11, lsl #12
//  0x4247b4: ldr x1, [x1, #0xf0]
//  0x4247b8: bl #0x61ec54
//  0x4247bc: add x1, PP, #0x11, lsl #12
//  0x4247c0: ldr x1, [x1, #0xe8]
//  0x4247c4: stur x0, [FP, #-0x10]
//  0x4247c8: bl #0x3b81c4
//  0x4247cc: mov x1, x0
//  0x4247d0: ldur x2, [FP, #-0x20]
//  0x4247d4: ldur x3, [FP, #-0x10]
//  0x4247d8: mov x5, NULL
//  0x4247dc: stur x0, [FP, #-0x10]
//  0x4247e0: bl #0x3b7e8c
//  0x4247e4: bl #0x3b7d48
//  0x4247e8: ldr x1, [PP, #0x148]
//  0x4247ec: stur w1, [x0, #0xb]
//  0x4247f0: ldur x1, [FP, #-8]
//  0x4247f4: stur w1, [x0, #0x17]
//  0x4247f8: ldur x1, [FP, #-0x10]
//  0x4247fc: stur w1, [x0, #0x1b]
//  0x424800: mov SP, FP
//  0x424804: ldp FP, LR, [SP], #0x10
//  0x424808: ret 
//  0x42480c: bl #0x61fa28
//  0x424810: b #0x42475c
//
dynamic PartyPasswordState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x424740
  // frame: FP = SP // 0x424744
  // frame: SP = SP - 0x20 // 0x424748
  local_m8 = x1; // 0x42474c
  BARRIER = mem(THR, 0x38); // 0x424750
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42480c
  }
  x1 = 1; // 0x42475c
  sub_0x61e890(); // 0x424760
  x0 = local_m8; // 0x424768
  x1 = x0; // 0x424764
  local_m10 = x1; // 0x42476c
  memSet(x1, 0xf, w0); // 0x424770
  SOColors_get_color_0b005c() /* 0x424814 */; // 0x424774
  x1 = mem((PP + 0x11000), 0xe0) /* Function */; // 0x424780
  x2 = local_m10; // 0x424778
  local_m8 = x0; // 0x424784
  AllocationStub__Closure() /* 0x61ec54 */; // 0x424788
  x1 = mem((PP + 0x11000), 0xe8) /* TypeArguments */; // 0x424790
  local_m18 = x0; // 0x424794
  AllocationStub_Consumer() /* 0x41a414 */; // 0x424798
  x0 = local_m18; // 0x4247a0
  x3 = x0; // 0x42479c
  local_m20 = x3; // 0x4247a4
  memSet(x3, 0x13, w0); // 0x4247a8
  x1 = mem((PP + 0x11000), 0xf0) /* Function */; // 0x4247b4
  x2 = local_m10; // 0x4247ac
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4247b8
  x1 = mem((PP + 0x11000), 0xe8) /* TypeArguments */; // 0x4247c0
  local_m10 = x0; // 0x4247c4
  AllocationStub_ChangeNotifierProvider() /* 0x3b81c4 */; // 0x4247c8
  x1 = x0; // 0x4247cc
  x2 = local_m20; // 0x4247d0
  x3 = local_m10; // 0x4247d4
  x5 = NULL; // 0x4247d8
  local_m10 = x0; // 0x4247dc
  InheritedProvider_ctor() /* 0x3b7e8c */; // 0x4247e0
  AllocationStub_SoulPageScaffold() /* 0x3b7d48 */; // 0x4247e4
  x1 = "" /* pp+0x148 */; // 0x4247e8
  memSet(x0, 0xb, w1); // 0x4247ec
  x1 = local_m8; // 0x4247f0
  memSet(x0, 0x17, w1); // 0x4247f4
  x1 = local_m10; // 0x4247f8
  memSet(x0, 0x1b, w1); // 0x4247fc
  SP = FP; // 0x424800
  // frame: FP, LR, mem(SP), 0x10 // 0x424804
  return;
}

// PartyPasswordState_anon_closure
// raw disassembly:
//  0x4248b8: stp FP, LR, [SP, #-0x10]!
//  0x4248bc: mov FP, SP
//  0x4248c0: sub SP, SP, #0x18
//  0x4248c4: ldr x0, [FP, #0x28]
//  0x4248c8: ldur w2, [x0, #0x17]
//  0x4248cc: add x2, x2, HEAP, lsl #32
//  0x4248d0: stur x2, [FP, #-8]
//  0x4248d4: ldr BARRIER, [THR, #0x38]
//  0x4248d8: cmp SP, BARRIER
//  0x4248dc: b.ls #0x424988
//  0x4248e0: ldur w1, [x2, #0xf]
//  0x4248e4: add x1, x1, HEAP, lsl #32
//  0x4248e8: bl #0x426d0c
//  0x4248ec: mov x2, x0
//  0x4248f0: ldur x0, [FP, #-8]
//  0x4248f4: stur x2, [FP, #-0x10]
//  0x4248f8: ldur w1, [x0, #0xf]
//  0x4248fc: add x1, x1, HEAP, lsl #32
//  0x424900: bl #0x424990
//  0x424904: mov x1, NULL
//  0x424908: mov x2, #4
//  0x42490c: stur x0, [FP, #-8]
//  0x424910: bl #0x61f920
//  0x424914: mov x2, x0
//  0x424918: ldur x0, [FP, #-0x10]
//  0x42491c: stur x2, [FP, #-0x18]
//  0x424920: stur w0, [x2, #0xf]
//  0x424924: ldur x0, [FP, #-8]
//  0x424928: stur w0, [x2, #0x13]
//  0x42492c: ldr x1, [PP, #0x5c58]
//  0x424930: bl #0x61e854
//  0x424934: mov x1, x0
//  0x424938: ldur x0, [FP, #-0x18]
//  0x42493c: stur x1, [FP, #-8]
//  0x424940: stur w0, [x1, #0xf]
//  0x424944: mov x0, #4
//  0x424948: stur w0, [x1, #0xb]
//  0x42494c: bl #0x39e6f4
//  0x424950: add x1, PP, #0xe, lsl #12
//  0x424954: ldr x1, [x1, #0xf00]
//  0x424958: stur w1, [x0, #0xf]
//  0x42495c: add x1, PP, #0xe, lsl #12
//  0x424960: ldr x1, [x1, #0xf08]
//  0x424964: stur w1, [x0, #0x17]
//  0x424968: add x1, PP, #0xe, lsl #12
//  0x42496c: ldr x1, [x1, #0xf10]
//  0x424970: stur w1, [x0, #0x1b]
//  0x424974: ldur x1, [FP, #-8]
//  0x424978: stur w1, [x0, #0xb]
//  0x42497c: mov SP, FP
//  0x424980: ldp FP, LR, [SP], #0x10
//  0x424984: ret 
//  0x424988: bl #0x61fa28
//  0x42498c: b #0x4248e0
//
dynamic PartyPasswordState_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4248b8
  // frame: FP = SP // 0x4248bc
  // frame: SP = SP - 0x18 // 0x4248c0
  w2 = mem((local_28), 0x17); // 0x4248c8
  x0 = local_28; // 0x4248c4
  x2 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4248cc
  local_m8 = x2; // 0x4248d0
  BARRIER = mem(THR, 0x38); // 0x4248d4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x424988
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4248e4
  PartyPasswordState_buildSnapshot() /* 0x426d0c */; // 0x4248e8
  x0 = local_m8; // 0x4248f0
  x2 = x0; // 0x4248ec
  local_m10 = x2; // 0x4248f4
  w1 = mem(x0, 0xf); // 0x4248f8
  x1 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4248fc
  PartyPasswordState_buildOperation() /* 0x424990 */; // 0x424900
  x1 = NULL; // 0x424904
  x2 = 4; // 0x424908
  local_m8 = x0; // 0x42490c
  sub_0x61f920(); // 0x424910
  x0 = local_m10; // 0x424918
  x2 = x0; // 0x424914
  local_m18 = x2; // 0x42491c
  memSet(x2, 0xf, w0); // 0x424920
  x0 = local_m8; // 0x424924
  memSet(x2, 0x13, w0); // 0x424928
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x42492c
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x424930
  x0 = local_m18; // 0x424938
  x1 = x0; // 0x424934
  local_m8 = x1; // 0x42493c
  memSet(x1, 0xf, w0); // 0x424940
  x0 = 4; // 0x424944
  memSet(x1, 0xb, w0); // 0x424948
  AllocationStub_Stack() /* 0x39e6f4 */; // 0x42494c
  x1 = mem((PP + 0xe000), 0xf00) /* Obj!AlignmentDirectional@11bd4  */; // 0x424954
  memSet(x0, 0xf, w1); // 0x424958
  x1 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x424960
  memSet(x0, 0x17, w1); // 0x424964
  x1 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x42496c
  memSet(x0, 0x1b, w1); // 0x424970
  x1 = local_m8; // 0x424974
  memSet(x0, 0xb, w1); // 0x424978
  SP = FP; // 0x42497c
  // frame: FP, LR, mem(SP), 0x10 // 0x424980
  return;
}

// PartyPasswordState_buildOperation
// raw disassembly:
//  0x424990: stp FP, LR, [SP, #-0x10]!
//  0x424994: mov FP, SP
//  0x424998: sub SP, SP, #0x70
//  0x42499c: stur x1, [FP, #-8]
//  0x4249a0: ldr BARRIER, [THR, #0x38]
//  0x4249a4: cmp SP, BARRIER
//  0x4249a8: b.ls #0x424edc
//  0x4249ac: mov x1, #1
//  0x4249b0: bl #0x61e890
//  0x4249b4: mov x1, x0
//  0x4249b8: ldur x0, [FP, #-8]
//  0x4249bc: stur x1, [FP, #-0x10]
//  0x4249c0: stur w0, [x1, #0xf]
//  0x4249c4: bl #0x3a142c
//  0x4249c8: mov x1, x0
//  0x4249cc: add x0, PP, #0xf, lsl #12
//  0x4249d0: ldr x0, [x0, #0x308]
//  0x4249d4: stur x1, [FP, #-0x18]
//  0x4249d8: stur w0, [x1, #0xb]
//  0x4249dc: add x0, PP, #0xf, lsl #12
//  0x4249e0: ldr x0, [x0, #0x170]
//  0x4249e4: stur w0, [x1, #0xf]
//  0x4249e8: ldr x2, [PP, #0x5458]
//  0x4249ec: stur w2, [x1, #0x13]
//  0x4249f0: stur w2, [x1, #0x17]
//  0x4249f4: bl #0x3949ec
//  0x4249f8: mov x1, x0
//  0x4249fc: add x0, PP, #0xf, lsl #12
//  0x424a00: ldr x0, [x0, #0x310]
//  0x424a04: stur x1, [FP, #-0x20]
//  0x424a08: stur w0, [x1, #0xf]
//  0x424a0c: stur w0, [x1, #0x13]
//  0x424a10: ldur x2, [FP, #-0x18]
//  0x424a14: stur w2, [x1, #0xb]
//  0x424a18: bl #0x3a1d94
//  0x424a1c: stur x0, [FP, #-0x18]
//  0x424a20: add BARRIER, PP, #0xf, lsl #12
//  0x424a24: ldr BARRIER, [BARRIER, #0x318]
//  0x424a28: ldur LR, [FP, #-0x20]
//  0x424a2c: stp LR, BARRIER, [SP]
//  0x424a30: mov x1, x0
//  0x424a34: add x4, PP, #0xc, lsl #12
//  0x424a38: ldr x4, [x4, #0x208]
//  0x424a3c: bl #0x3a18c4
//  0x424a40: bl #0x391c0c
//  0x424a44: mov x1, x0
//  0x424a48: add x0, PP, #0x11, lsl #12
//  0x424a4c: ldr x0, [x0, #0xf8]
//  0x424a50: stur x1, [FP, #-0x20]
//  0x424a54: stur w0, [x1, #0xf]
//  0x424a58: ldur x0, [FP, #-0x18]
//  0x424a5c: stur w0, [x1, #0xb]
//  0x424a60: bl #0x421f24
//  0x424a64: mov x1, x0
//  0x424a68: mov x0, #1
//  0x424a6c: stur x1, [FP, #-0x18]
//  0x424a70: stur x0, [x1, #0xb]
//  0x424a74: bl #0x28d374
//  0x424a78: mov x3, x0
//  0x424a7c: mov x0, #0x4240
//  0x424a80: movk x0, #0xf, lsl #16
//  0x424a84: stur x3, [FP, #-0x28]
//  0x424a88: stur x0, [x3, #7]
//  0x424a8c: ldur x2, [FP, #-0x10]
//  0x424a90: add x1, PP, #0x11, lsl #12
//  0x424a94: ldr x1, [x1, #0x100]
//  0x424a98: bl #0x61ec54
//  0x424a9c: stur x0, [FP, #-0x30]
//  0x424aa0: mov x1, #3
//  0x424aa4: bl #0x61e890
//  0x424aa8: mov x1, x0
//  0x424aac: ldur x0, [FP, #-0x30]
//  0x424ab0: stur x1, [FP, #-0x38]
//  0x424ab4: stur w0, [x1, #0xf]
//  0x424ab8: ldur x0, [FP, #-0x28]
//  0x424abc: stur w0, [x1, #0x13]
//  0x424ac0: add x0, NULL, #0x20
//  0x424ac4: stur w0, [x1, #0x17]
//  0x424ac8: bl #0x3a142c
//  0x424acc: mov x1, x0
//  0x424ad0: add x0, PP, #0x11, lsl #12
//  0x424ad4: ldr x0, [x0, #0x108]
//  0x424ad8: stur x1, [FP, #-0x28]
//  0x424adc: stur w0, [x1, #0xb]
//  0x424ae0: add x0, PP, #0xf, lsl #12
//  0x424ae4: ldr x0, [x0, #0x170]
//  0x424ae8: stur w0, [x1, #0xf]
//  0x424aec: ldr x0, [PP, #0x5458]
//  0x424af0: stur w0, [x1, #0x13]
//  0x424af4: stur w0, [x1, #0x17]
//  0x424af8: bl #0x3949ec
//  0x424afc: mov x1, x0
//  0x424b00: add x0, PP, #0xf, lsl #12
//  0x424b04: ldr x0, [x0, #0x310]
//  0x424b08: stur x1, [FP, #-0x30]
//  0x424b0c: stur w0, [x1, #0xf]
//  0x424b10: stur w0, [x1, #0x13]
//  0x424b14: ldur x0, [FP, #-0x28]
//  0x424b18: stur w0, [x1, #0xb]
//  0x424b1c: bl #0x3a1d94
//  0x424b20: ldur x2, [FP, #-0x38]
//  0x424b24: add x1, PP, #0x11, lsl #12
//  0x424b28: ldr x1, [x1, #0x110]
//  0x424b2c: stur x0, [FP, #-0x28]
//  0x424b30: bl #0x61ec54
//  0x424b34: ldur BARRIER, [FP, #-0x30]
//  0x424b38: stp BARRIER, x0, [SP]
//  0x424b3c: ldur x1, [FP, #-0x28]
//  0x424b40: add x4, PP, #0xc, lsl #12
//  0x424b44: ldr x4, [x4, #0x208]
//  0x424b48: bl #0x3a18c4
//  0x424b4c: bl #0x391c0c
//  0x424b50: mov x3, x0
//  0x424b54: add x0, PP, #0x11, lsl #12
//  0x424b58: ldr x0, [x0, #0x118]
//  0x424b5c: stur x3, [FP, #-0x30]
//  0x424b60: stur w0, [x3, #0xf]
//  0x424b64: ldur x0, [FP, #-0x28]
//  0x424b68: stur w0, [x3, #0xb]
//  0x424b6c: mov x1, NULL
//  0x424b70: mov x2, #6
//  0x424b74: bl #0x61f920
//  0x424b78: mov x2, x0
//  0x424b7c: ldur x0, [FP, #-0x20]
//  0x424b80: stur x2, [FP, #-0x28]
//  0x424b84: stur w0, [x2, #0xf]
//  0x424b88: ldur x0, [FP, #-0x18]
//  0x424b8c: stur w0, [x2, #0x13]
//  0x424b90: ldur x0, [FP, #-0x30]
//  0x424b94: stur w0, [x2, #0x17]
//  0x424b98: ldr x1, [PP, #0x5c58]
//  0x424b9c: bl #0x61e854
//  0x424ba0: mov x1, x0
//  0x424ba4: ldur x0, [FP, #-0x28]
//  0x424ba8: stur x1, [FP, #-0x18]
//  0x424bac: stur w0, [x1, #0xf]
//  0x424bb0: mov x2, #6
//  0x424bb4: stur w2, [x1, #0xb]
//  0x424bb8: bl #0x3a1414
//  0x424bbc: mov x1, x0
//  0x424bc0: ldr x0, [PP, #0x5140]
//  0x424bc4: stur x1, [FP, #-0x20]
//  0x424bc8: stur w0, [x1, #0xf]
//  0x424bcc: add x0, PP, #0xe, lsl #12
//  0x424bd0: ldr x0, [x0, #0xae0]
//  0x424bd4: stur w0, [x1, #0x13]
//  0x424bd8: add x2, PP, #0xe, lsl #12
//  0x424bdc: ldr x2, [x2, #0xae8]
//  0x424be0: stur w2, [x1, #0x17]
//  0x424be4: add x3, PP, #0xe, lsl #12
//  0x424be8: ldr x3, [x3, #0xb60]
//  0x424bec: stur w3, [x1, #0x1b]
//  0x424bf0: add x4, PP, #0xe, lsl #12
//  0x424bf4: ldr x4, [x4, #0xaf8]
//  0x424bf8: stur w4, [x1, #0x23]
//  0x424bfc: add x5, PP, #0xa, lsl #12
//  0x424c00: ldr x5, [x5, #0xa8]
//  0x424c04: stur w5, [x1, #0x2b]
//  0x424c08: stur xzr, [x1, #0x2f]
//  0x424c0c: ldur x6, [FP, #-0x18]
//  0x424c10: stur w6, [x1, #0xb]
//  0x424c14: bl #0x3949ec
//  0x424c18: mov x1, x0
//  0x424c1c: add x0, PP, #0x10, lsl #12
//  0x424c20: ldr x0, [x0, #0x208]
//  0x424c24: stur x1, [FP, #-0x18]
//  0x424c28: stur w0, [x1, #0x13]
//  0x424c2c: ldur x0, [FP, #-0x20]
//  0x424c30: stur w0, [x1, #0xb]
//  0x424c34: bl #0x421f24
//  0x424c38: mov x2, x0
//  0x424c3c: mov x0, #1
//  0x424c40: stur x2, [FP, #-0x20]
//  0x424c44: stur x0, [x2, #0xb]
//  0x424c48: ldr x1, [PP, #0x6050]
//  0x424c4c: bl #0x41dfb4
//  0x424c50: add BARRIER, PP, #0x11, lsl #12
//  0x424c54: ldr BARRIER, [BARRIER, #0x120]
//  0x424c58: stp x0, BARRIER, [SP]
//  0x424c5c: ldr x4, [PP, #0x910]
//  0x424c60: bl #0x41df68
//  0x424c64: stur x0, [FP, #-0x28]
//  0x424c68: add BARRIER, PP, #0xa, lsl #12
//  0x424c6c: ldr BARRIER, [BARRIER, #0x198]
//  0x424c70: ldr LR, [PP, #0x6050]
//  0x424c74: stp LR, BARRIER, [SP]
//  0x424c78: ldr x4, [PP, #0x910]
//  0x424c7c: bl #0x41df68
//  0x424c80: stur x0, [FP, #-0x30]
//  0x424c84: bl #0x424ee8
//  0x424c88: add BARRIER, PP, #0xa, lsl #12
//  0x424c8c: ldr BARRIER, [BARRIER, #0x198]
//  0x424c90: stp x0, BARRIER, [SP]
//  0x424c94: ldr x4, [PP, #0x910]
//  0x424c98: bl #0x41df68
//  0x424c9c: stur x0, [FP, #-0x38]
//  0x424ca0: bl #0x352b04
//  0x424ca4: fmov d0, #24.00000000
//  0x424ca8: stur x0, [FP, #-0x40]
//  0x424cac: stur d0, [x0, #7]
//  0x424cb0: stur d0, [x0, #0xf]
//  0x424cb4: bl #0x392f28
//  0x424cb8: mov x1, x0
//  0x424cbc: ldur x0, [FP, #-0x40]
//  0x424cc0: stur x1, [FP, #-0x48]
//  0x424cc4: stur w0, [x1, #7]
//  0x424cc8: stur w0, [x1, #0xb]
//  0x424ccc: stur w0, [x1, #0xf]
//  0x424cd0: stur w0, [x1, #0x13]
//  0x424cd4: bl #0x398b5c
//  0x424cd8: mov x1, x0
//  0x424cdc: ldur x0, [FP, #-0x48]
//  0x424ce0: stur w0, [x1, #0xb]
//  0x424ce4: add x0, PP, #0x11, lsl #12
//  0x424ce8: ldr x0, [x0, #0x128]
//  0x424cec: stur w0, [x1, #7]
//  0x424cf0: add BARRIER, PP, #0x11, lsl #12
//  0x424cf4: ldr BARRIER, [BARRIER, #0x130]
//  0x424cf8: stp x1, BARRIER, [SP]
//  0x424cfc: ldr x4, [PP, #0x910]
//  0x424d00: bl #0x41df68
//  0x424d04: mov x2, x0
//  0x424d08: ldur x0, [FP, #-8]
//  0x424d0c: stur x2, [FP, #-0x40]
//  0x424d10: ldur w1, [x0, #0xf]
//  0x424d14: add x1, x1, HEAP, lsl #32
//  0x424d18: cmp w1, w22
//  0x424d1c: b.eq #0x424ee4
//  0x424d20: bl #0x318258
//  0x424d24: ldur w1, [x0, #0x7b]
//  0x424d28: add x1, x1, HEAP, lsl #32
//  0x424d2c: add BARRIER, PP, #0xa, lsl #12
//  0x424d30: ldr BARRIER, [BARRIER, #0x198]
//  0x424d34: stp x1, BARRIER, [SP]
//  0x424d38: ldr x4, [PP, #0x910]
//  0x424d3c: bl #0x41df68
//  0x424d40: stur x0, [FP, #-8]
//  0x424d44: bl #0x3954f8
//  0x424d48: mov x2, x0
//  0x424d4c: ldur x0, [FP, #-0x28]
//  0x424d50: stur x2, [FP, #-0x48]
//  0x424d54: stur w0, [x2, #7]
//  0x424d58: ldur x0, [FP, #-0x38]
//  0x424d5c: stur w0, [x2, #0xb]
//  0x424d60: ldur x0, [FP, #-0x30]
//  0x424d64: stur w0, [x2, #0xf]
//  0x424d68: ldur x0, [FP, #-8]
//  0x424d6c: stur w0, [x2, #0x13]
//  0x424d70: ldur x0, [FP, #-0x40]
//  0x424d74: stur w0, [x2, #0x3f]
//  0x424d78: add x1, PP, #0xc, lsl #12
//  0x424d7c: ldr x1, [x1, #0xa58]
//  0x424d80: ldr x4, [PP, #0x4c0]
//  0x424d84: bl #0x3a1dcc
//  0x424d88: stur x0, [FP, #-8]
//  0x424d8c: bl #0x393bf8
//  0x424d90: mov x3, x0
//  0x424d94: ldur x0, [FP, #-8]
//  0x424d98: stur x3, [FP, #-0x28]
//  0x424d9c: stur w0, [x3, #0xb]
//  0x424da0: ldur x2, [FP, #-0x10]
//  0x424da4: add x1, PP, #0x11, lsl #12
//  0x424da8: ldr x1, [x1, #0x138]
//  0x424dac: bl #0x61ec54
//  0x424db0: stur x0, [FP, #-8]
//  0x424db4: bl #0x394b14
//  0x424db8: mov x1, x0
//  0x424dbc: ldur x0, [FP, #-8]
//  0x424dc0: stur x1, [FP, #-0x10]
//  0x424dc4: stur w0, [x1, #0xb]
//  0x424dc8: ldur x0, [FP, #-0x48]
//  0x424dcc: stur w0, [x1, #0x1b]
//  0x424dd0: add x0, NULL, #0x30
//  0x424dd4: stur w0, [x1, #0x27]
//  0x424dd8: add x0, NULL, #0x20
//  0x424ddc: stur w0, [x1, #0x2f]
//  0x424de0: ldur x0, [FP, #-0x28]
//  0x424de4: stur w0, [x1, #0x37]
//  0x424de8: bl #0x391a04
//  0x424dec: stur x0, [FP, #-8]
//  0x424df0: add BARRIER, PP, #0x11, lsl #12
//  0x424df4: ldr BARRIER, [BARRIER, #0x140]
//  0x424df8: ldr LR, [PP, #0x5458]
//  0x424dfc: stp LR, BARRIER, [SP, #0x18]
//  0x424e00: add BARRIER, PP, #0x10, lsl #12
//  0x424e04: ldr BARRIER, [BARRIER, #0x208]
//  0x424e08: add LR, PP, #0x11, lsl #12
//  0x424e0c: ldr LR, [LR, #0x148]
//  0x424e10: stp LR, BARRIER, [SP, #8]
//  0x424e14: ldur BARRIER, [FP, #-0x10]
//  0x424e18: str BARRIER, [SP]
//  0x424e1c: mov x1, x0
//  0x424e20: add x4, PP, #0x11, lsl #12
//  0x424e24: ldr x4, [x4, #0x150]
//  0x424e28: bl #0x391490
//  0x424e2c: mov x1, NULL
//  0x424e30: mov x2, #6
//  0x424e34: bl #0x61f920
//  0x424e38: mov x2, x0
//  0x424e3c: ldur x0, [FP, #-0x18]
//  0x424e40: stur x2, [FP, #-0x10]
//  0x424e44: stur w0, [x2, #0xf]
//  0x424e48: ldur x0, [FP, #-0x20]
//  0x424e4c: stur w0, [x2, #0x13]
//  0x424e50: ldur x0, [FP, #-8]
//  0x424e54: stur w0, [x2, #0x17]
//  0x424e58: ldr x1, [PP, #0x5c58]
//  0x424e5c: bl #0x61e854
//  0x424e60: mov x1, x0
//  0x424e64: ldur x0, [FP, #-0x10]
//  0x424e68: stur x1, [FP, #-8]
//  0x424e6c: stur w0, [x1, #0xf]
//  0x424e70: mov x0, #6
//  0x424e74: stur w0, [x1, #0xb]
//  0x424e78: bl #0x39310c
//  0x424e7c: add x1, PP, #0xa, lsl #12
//  0x424e80: ldr x1, [x1, #0x858]
//  0x424e84: stur w1, [x0, #0xf]
//  0x424e88: add x1, PP, #0xe, lsl #12
//  0x424e8c: ldr x1, [x1, #0xae0]
//  0x424e90: stur w1, [x0, #0x13]
//  0x424e94: add x1, PP, #0xe, lsl #12
//  0x424e98: ldr x1, [x1, #0xae8]
//  0x424e9c: stur w1, [x0, #0x17]
//  0x424ea0: add x1, PP, #0xe, lsl #12
//  0x424ea4: ldr x1, [x1, #0xb60]
//  0x424ea8: stur w1, [x0, #0x1b]
//  0x424eac: add x1, PP, #0xe, lsl #12
//  0x424eb0: ldr x1, [x1, #0xaf8]
//  0x424eb4: stur w1, [x0, #0x23]
//  0x424eb8: add x1, PP, #0xa, lsl #12
//  0x424ebc: ldr x1, [x1, #0xa8]
//  0x424ec0: stur w1, [x0, #0x2b]
//  0x424ec4: stur xzr, [x0, #0x2f]
//  0x424ec8: ldur x1, [FP, #-8]
//  0x424ecc: stur w1, [x0, #0xb]
//  0x424ed0: mov SP, FP
//  0x424ed4: ldp FP, LR, [SP], #0x10
//  0x424ed8: ret 
//  0x424edc: bl #0x61fa28
//  0x424ee0: b #0x4249ac
//  0x424ee4: bl #0x61ffd0
//
dynamic PartyPasswordState_buildOperation() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  // frame: FP, LR, mem(SP, -0x10)! // 0x424990
  // frame: FP = SP // 0x424994
  // frame: SP = SP - 0x70 // 0x424998
  local_m8 = x1; // 0x42499c
  BARRIER = mem(THR, 0x38); // 0x4249a0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x424edc
  }
  x1 = 1; // 0x4249ac
  sub_0x61e890(); // 0x4249b0
  x0 = local_m8; // 0x4249b8
  x1 = x0; // 0x4249b4
  local_m10 = x1; // 0x4249bc
  memSet(x1, 0xf, w0); // 0x4249c0
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x4249c4
  x0 = "assets/images/3.0x/topbar_icon_back_white.webp" /* pp+0xf308 */; // 0x4249d0
  x1 = x0; // 0x4249c8
  local_m18 = x1; // 0x4249d4
  memSet(x1, 0xb, w0); // 0x4249d8
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x4249e0
  memSet(x1, 0xf, w0); // 0x4249e4
  x2 = mem(PP, 0x5458) /* Double */; // 0x4249e8
  memSet(x1, 0x13, w2); // 0x4249ec
  memSet(x1, 0x17, w2); // 0x4249f0
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x4249f4
  x0 = mem((PP + 0xf000), 0x310) /* Double */; // 0x424a00
  x1 = x0; // 0x4249f8
  local_m20 = x1; // 0x424a04
  memSet(x1, 0xf, w0); // 0x424a08
  memSet(x1, 0x13, w0); // 0x424a0c
  x2 = local_m18; // 0x424a10
  memSet(x1, 0xb, w2); // 0x424a14
  sub_0x3a1d94(); // 0x424a18
  local_m18 = x0; // 0x424a1c
  BARRIER = mem((PP + 0xf000), 0x318) /* Closure */; // 0x424a24
  LR = local_m20; // 0x424a28
  // frame: LR, BARRIER, mem(SP) // 0x424a2c
  x1 = x0; // 0x424a30
  x4 = mem((PP + 0xc000), 0x208) /* ImmutableArray */; // 0x424a38
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x424a3c
  AllocationStub_Padding() /* 0x391c0c */; // 0x424a40
  x0 = mem((PP + 0x11000), 0xf8) /* Obj!EdgeInsetsDirectional@11b79  */; // 0x424a4c
  x1 = x0; // 0x424a44
  local_m20 = x1; // 0x424a50
  memSet(x1, 0xf, w0); // 0x424a54
  x0 = local_m18; // 0x424a58
  memSet(x1, 0xb, w0); // 0x424a5c
  AllocationStub_Spacer() /* 0x421f24 */; // 0x424a60
  x0 = 1; // 0x424a68
  x1 = x0; // 0x424a64
  local_m18 = x1; // 0x424a6c
  memSet(x1, 0xb, x0); // 0x424a70
  AllocationStub_Duration() /* 0x28d374 */; // 0x424a74
  x0 = (x0 & 0xffff) | 0xf0000; // 0x424a80
  x3 = x0; // 0x424a78
  local_m28 = x3; // 0x424a84
  memSet(x3, 7, x0); // 0x424a88
  x1 = mem((PP + 0x11000), 0x100) /* Function */; // 0x424a94
  x2 = local_m10; // 0x424a8c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x424a98
  local_m30 = x0; // 0x424a9c
  x1 = 3; // 0x424aa0
  sub_0x61e890(); // 0x424aa4
  x0 = local_m30; // 0x424aac
  x1 = x0; // 0x424aa8
  local_m38 = x1; // 0x424ab0
  memSet(x1, 0xf, w0); // 0x424ab4
  x0 = local_m28; // 0x424ab8
  memSet(x1, 0x13, w0); // 0x424abc
  x0 = NULL + 0x20; // 0x424ac0
  memSet(x1, 0x17, w0); // 0x424ac4
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x424ac8
  x0 = "assets/images/3.0x/topbar_icon_download.webp" /* pp+0x11108 */; // 0x424ad4
  x1 = x0; // 0x424acc
  local_m28 = x1; // 0x424ad8
  memSet(x1, 0xb, w0); // 0x424adc
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x424ae4
  memSet(x1, 0xf, w0); // 0x424ae8
  x0 = mem(PP, 0x5458) /* Double */; // 0x424aec
  memSet(x1, 0x13, w0); // 0x424af0
  memSet(x1, 0x17, w0); // 0x424af4
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x424af8
  x0 = mem((PP + 0xf000), 0x310) /* Double */; // 0x424b04
  x1 = x0; // 0x424afc
  local_m30 = x1; // 0x424b08
  memSet(x1, 0xf, w0); // 0x424b0c
  memSet(x1, 0x13, w0); // 0x424b10
  x0 = local_m28; // 0x424b14
  memSet(x1, 0xb, w0); // 0x424b18
  sub_0x3a1d94(); // 0x424b1c
  x1 = mem((PP + 0x11000), 0x110) /* Function */; // 0x424b28
  x2 = local_m38; // 0x424b20
  local_m28 = x0; // 0x424b2c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x424b30
  BARRIER = local_m30; // 0x424b34
  // frame: BARRIER, x0, mem(SP) // 0x424b38
  x1 = local_m28; // 0x424b3c
  x4 = mem((PP + 0xc000), 0x208) /* ImmutableArray */; // 0x424b44
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x424b48
  AllocationStub_Padding() /* 0x391c0c */; // 0x424b4c
  x0 = mem((PP + 0x11000), 0x118) /* Obj!EdgeInsetsDirectional@11b70  */; // 0x424b58
  x3 = x0; // 0x424b50
  local_m30 = x3; // 0x424b5c
  memSet(x3, 0xf, w0); // 0x424b60
  x0 = local_m28; // 0x424b64
  memSet(x3, 0xb, w0); // 0x424b68
  x1 = NULL; // 0x424b6c
  x2 = 6; // 0x424b70
  sub_0x61f920(); // 0x424b74
  x0 = local_m20; // 0x424b7c
  x2 = x0; // 0x424b78
  local_m28 = x2; // 0x424b80
  memSet(x2, 0xf, w0); // 0x424b84
  x0 = local_m18; // 0x424b88
  memSet(x2, 0x13, w0); // 0x424b8c
  x0 = local_m30; // 0x424b90
  memSet(x2, 0x17, w0); // 0x424b94
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x424b98
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x424b9c
  x0 = local_m28; // 0x424ba4
  x1 = x0; // 0x424ba0
  local_m18 = x1; // 0x424ba8
  memSet(x1, 0xf, w0); // 0x424bac
  x2 = 6; // 0x424bb0
  memSet(x1, 0xb, w2); // 0x424bb4
  AllocationStub_Row() /* 0x3a1414 */; // 0x424bb8
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x424bc0
  x1 = x0; // 0x424bbc
  local_m20 = x1; // 0x424bc4
  memSet(x1, 0xf, w0); // 0x424bc8
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x424bd0
  memSet(x1, 0x13, w0); // 0x424bd4
  x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x424bdc
  memSet(x1, 0x17, w2); // 0x424be0
  x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x424be8
  memSet(x1, 0x1b, w3); // 0x424bec
  x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x424bf4
  memSet(x1, 0x23, w4); // 0x424bf8
  x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x424c00
  memSet(x1, 0x2b, w5); // 0x424c04
  memSet(x1, 0x2f, xzr); // 0x424c08
  x6 = local_m18; // 0x424c0c
  memSet(x1, 0xb, w6); // 0x424c10
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x424c14
  x0 = mem((PP + 0x10000), 0x208) /* Double */; // 0x424c20
  x1 = x0; // 0x424c18
  local_m18 = x1; // 0x424c24
  memSet(x1, 0x13, w0); // 0x424c28
  x0 = local_m20; // 0x424c2c
  memSet(x1, 0xb, w0); // 0x424c30
  AllocationStub_Spacer() /* 0x421f24 */; // 0x424c34
  x0 = 1; // 0x424c3c
  x2 = x0; // 0x424c38
  local_m20 = x2; // 0x424c40
  memSet(x2, 0xb, x0); // 0x424c44
  x1 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x424c48
  TextStyles_pageStandardTitle() /* 0x41dfb4 */; // 0x424c4c
  BARRIER = mem((PP + 0x11000), 0x120) /* TypeArguments */; // 0x424c54
  // frame: x0, BARRIER, mem(SP) // 0x424c58
  x4 = mem(PP, 0x910) /* ImmutableArray */; // 0x424c5c
  WidgetStateProperty_all() /* 0x41df68 */; // 0x424c60
  local_m28 = x0; // 0x424c64
  BARRIER = mem((PP + 0xa000), 0x198) /* TypeArguments */; // 0x424c6c
  LR = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x424c70
  // frame: LR, BARRIER, mem(SP) // 0x424c74
  x4 = mem(PP, 0x910) /* ImmutableArray */; // 0x424c78
  WidgetStateProperty_all() /* 0x41df68 */; // 0x424c7c
  local_m30 = x0; // 0x424c80
  SOColors_get_color_3825C5() /* 0x424ee8 */; // 0x424c84
  BARRIER = mem((PP + 0xa000), 0x198) /* TypeArguments */; // 0x424c8c
  // frame: x0, BARRIER, mem(SP) // 0x424c90
  x4 = mem(PP, 0x910) /* ImmutableArray */; // 0x424c94
  WidgetStateProperty_all() /* 0x41df68 */; // 0x424c98
  local_m38 = x0; // 0x424c9c
  AllocationStub_Radius() /* 0x352b04 */; // 0x424ca0
  d0 = 24.00000000 /* bits */; // 0x424ca4
  local_m40 = x0; // 0x424ca8
  memSet(x0, 7, d0); // 0x424cac
  memSet(x0, 0xf, d0); // 0x424cb0
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x424cb4
  x0 = local_m40; // 0x424cbc
  x1 = x0; // 0x424cb8
  local_m48 = x1; // 0x424cc0
  memSet(x1, 7, w0); // 0x424cc4
  memSet(x1, 0xb, w0); // 0x424cc8
  memSet(x1, 0xf, w0); // 0x424ccc
  memSet(x1, 0x13, w0); // 0x424cd0
  AllocationStub_RoundedRectangleBorder() /* 0x398b5c */; // 0x424cd4
  x0 = local_m48; // 0x424cdc
  x1 = x0; // 0x424cd8
  memSet(x1, 0xb, w0); // 0x424ce0
  x0 = mem((PP + 0x11000), 0x128) /* Obj!BorderSide@11fba  */; // 0x424ce8
  memSet(x1, 7, w0); // 0x424cec
  BARRIER = mem((PP + 0x11000), 0x130) /* TypeArguments */; // 0x424cf4
  // frame: x1, BARRIER, mem(SP) // 0x424cf8
  x4 = mem(PP, 0x910) /* ImmutableArray */; // 0x424cfc
  WidgetStateProperty_all() /* 0x41df68 */; // 0x424d00
  x0 = local_m8; // 0x424d08
  x2 = x0; // 0x424d04
  local_m40 = x2; // 0x424d0c
  w1 = mem(x0, 0xf); // 0x424d10
  x1 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x424d14
  if (w1 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x424ee4
  }
  Theme_of() /* 0x318258 */; // 0x424d20
  BARRIER = mem((PP + 0xa000), 0x198) /* TypeArguments */; // 0x424d30
  w1 = mem(x0, 0x7b); // 0x424d24
  x1 = ((mem(x0, 0x7b)) & 0xffffffff) + (HEAP << 32); // 0x424d28
  // frame: x1, BARRIER, mem(SP) // 0x424d34
  x4 = mem(PP, 0x910) /* ImmutableArray */; // 0x424d38
  WidgetStateProperty_all() /* 0x41df68 */; // 0x424d3c
  local_m8 = x0; // 0x424d40
  AllocationStub_ButtonStyle() /* 0x3954f8 */; // 0x424d44
  x0 = local_m28; // 0x424d4c
  x2 = x0; // 0x424d48
  local_m48 = x2; // 0x424d50
  memSet(x2, 7, w0); // 0x424d54
  x0 = local_m38; // 0x424d58
  memSet(x2, 0xb, w0); // 0x424d5c
  x0 = local_m30; // 0x424d60
  memSet(x2, 0xf, w0); // 0x424d64
  x0 = local_m8; // 0x424d68
  memSet(x2, 0x13, w0); // 0x424d6c
  x0 = local_m40; // 0x424d70
  memSet(x2, 0x3f, w0); // 0x424d74
  x1 = "invite_btn" /* pp+0xca58 */; // 0x424d7c
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x424d80
  getString() /* 0x3a1dcc */; // 0x424d84
  local_m8 = x0; // 0x424d88
  AllocationStub_Text() /* 0x393bf8 */; // 0x424d8c
  x0 = local_m8; // 0x424d94
  x3 = x0; // 0x424d90
  local_m28 = x3; // 0x424d98
  memSet(x3, 0xb, w0); // 0x424d9c
  x1 = mem((PP + 0x11000), 0x138) /* Function */; // 0x424da8
  x2 = local_m10; // 0x424da0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x424dac
  local_m8 = x0; // 0x424db0
  AllocationStub_TextButton() /* 0x394b14 */; // 0x424db4
  x0 = local_m8; // 0x424dbc
  x1 = x0; // 0x424db8
  local_m10 = x1; // 0x424dc0
  memSet(x1, 0xb, w0); // 0x424dc4
  x0 = local_m48; // 0x424dc8
  memSet(x1, 0x1b, w0); // 0x424dcc
  x0 = NULL + 0x30; // 0x424dd0
  memSet(x1, 0x27, w0); // 0x424dd4
  x0 = NULL + 0x20; // 0x424dd8
  memSet(x1, 0x2f, w0); // 0x424ddc
  x0 = local_m28; // 0x424de0
  memSet(x1, 0x37, w0); // 0x424de4
  AllocationStub_Container() /* 0x391a04 */; // 0x424de8
  local_m8 = x0; // 0x424dec
  BARRIER = mem((PP + 0x11000), 0x140) /* Obj!EdgeInsets@11bae  */; // 0x424df4
  LR = mem(PP, 0x5458) /* Double */; // 0x424df8
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x424dfc
  BARRIER = mem((PP + 0x10000), 0x208) /* Double */; // 0x424e04
  LR = mem((PP + 0x11000), 0x148) /* Obj!EdgeInsets@11bad  */; // 0x424e0c
  // frame: LR, BARRIER, mem(SP, 8) // 0x424e10
  BARRIER = local_m10; // 0x424e14
  local_0 = BARRIER; // 0x424e18
  x1 = x0; // 0x424e1c
  x4 = mem((PP + 0x11000), 0x150) /* ImmutableArray */; // 0x424e24
  Container_ctor() /* 0x391490 */; // 0x424e28
  x1 = NULL; // 0x424e2c
  x2 = 6; // 0x424e30
  sub_0x61f920(); // 0x424e34
  x0 = local_m18; // 0x424e3c
  x2 = x0; // 0x424e38
  local_m10 = x2; // 0x424e40
  memSet(x2, 0xf, w0); // 0x424e44
  x0 = local_m20; // 0x424e48
  memSet(x2, 0x13, w0); // 0x424e4c
  x0 = local_m8; // 0x424e50
  memSet(x2, 0x17, w0); // 0x424e54
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x424e58
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x424e5c
  x0 = local_m10; // 0x424e64
  x1 = x0; // 0x424e60
  local_m8 = x1; // 0x424e68
  memSet(x1, 0xf, w0); // 0x424e6c
  x0 = 6; // 0x424e70
  memSet(x1, 0xb, w0); // 0x424e74
  AllocationStub_Column() /* 0x39310c */; // 0x424e78
  x1 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x424e80
  memSet(x0, 0xf, w1); // 0x424e84
  x1 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x424e8c
  memSet(x0, 0x13, w1); // 0x424e90
  x1 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x424e98
  memSet(x0, 0x17, w1); // 0x424e9c
  x1 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x424ea4
  memSet(x0, 0x1b, w1); // 0x424ea8
  x1 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x424eb0
  memSet(x0, 0x23, w1); // 0x424eb4
  x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x424ebc
  memSet(x0, 0x2b, w1); // 0x424ec0
  memSet(x0, 0x2f, xzr); // 0x424ec4
  x1 = local_m8; // 0x424ec8
  memSet(x0, 0xb, w1); // 0x424ecc
  SP = FP; // 0x424ed0
  // frame: FP, LR, mem(SP), 0x10 // 0x424ed4
  return;
}

// PartyPasswordState_anon_closure_2
// raw disassembly:
//  0x424f34: stp FP, LR, [SP, #-0x10]!
//  0x424f38: mov FP, SP
//  0x424f3c: sub SP, SP, #8
//  0x424f40: ldr x0, [FP, #0x10]
//  0x424f44: ldur w2, [x0, #0x17]
//  0x424f48: add x2, x2, HEAP, lsl #32
//  0x424f4c: stur x2, [FP, #-8]
//  0x424f50: ldr BARRIER, [THR, #0x38]
//  0x424f54: cmp SP, BARRIER
//  0x424f58: b.ls #0x424fcc
//  0x424f5c: add x1, PP, #0x11, lsl #12
//  0x424f60: ldr x1, [x1, #0x158]
//  0x424f64: ldr x4, [PP, #0x4c0]
//  0x424f68: bl #0x3a8e60
//  0x424f6c: bl #0x3a86c0
//  0x424f70: mov x1, x0
//  0x424f74: add x2, PP, #9, lsl #12
//  0x424f78: ldr x2, [x2, #0xe50]
//  0x424f7c: ldr x4, [PP, #0x278]
//  0x424f80: bl #0x3a99b4
//  0x424f84: mov x1, x0
//  0x424f88: ldur x0, [FP, #-8]
//  0x424f8c: ldur w2, [x0, #0xf]
//  0x424f90: add x2, x2, HEAP, lsl #32
//  0x424f94: ldur w3, [x2, #0x1f]
//  0x424f98: add x3, x3, HEAP, lsl #32
//  0x424f9c: ldr BARRIER, [PP, #0x40]
//  0x424fa0: cmp w3, w16
//  0x424fa4: b.eq #0x424fd4
//  0x424fa8: add x2, PP, #0x10, lsl #12
//  0x424fac: ldr x2, [x2, #0xd48]
//  0x424fb0: bl #0x3a8024
//  0x424fb4: mov x1, x0
//  0x424fb8: bl #0x3a6ae8
//  0x424fbc: mov x0, NULL
//  0x424fc0: mov SP, FP
//  0x424fc4: ldp FP, LR, [SP], #0x10
//  0x424fc8: ret 
//  0x424fcc: bl #0x61fa28
//  0x424fd0: b #0x424f5c
//  0x424fd4: add x9, PP, #0x11, lsl #12
//  0x424fd8: ldr x9, [x9, #0x160]
//  0x424fdc: bl #0x620258
//
dynamic PartyPasswordState_anon_closure_2() {
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
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x424f34
  // frame: FP = SP // 0x424f38
  // frame: SP = SP - 8 // 0x424f3c
  w2 = mem((local_10), 0x17); // 0x424f44
  x0 = local_10; // 0x424f40
  x2 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x424f48
  local_m8 = x2; // 0x424f4c
  BARRIER = mem(THR, 0x38); // 0x424f50
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x424fcc
  }
  x1 = "InvitePremiumRoomPage_ClickInvite" /* pp+0x11158 */; // 0x424f60
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x424f64
  EventTrack_eventClick() /* 0x3a8e60 */; // 0x424f68
  RouterNative_getInstance() /* 0x3a86c0 */; // 0x424f6c
  x1 = x0; // 0x424f70
  x2 = "page_virtual_party_invite" /* pp+0x9e50 */; // 0x424f78
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x424f7c
  RouterNative_routeFlutter() /* 0x3a99b4 */; // 0x424f80
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x424f9c
  w2 = mem((local_m8), 0xf); // 0x424f8c
  w3 = mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x1f); // 0x424f94
  x0 = local_m8; // 0x424f88
  x1 = x0; // 0x424f84
  x2 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x424f90
  x3 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x1f)) & 0xffffffff) + (HEAP << 32); // 0x424f98
  if (w3 == w16) {
    x9 = mem((PP + 0x11000), 0x160) /* Field */; // 0x424fd8
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x424fdc
  }
  x2 = "roomId" /* pp+0x10d48 */; // 0x424fac
  SoulNavigator_withString() /* 0x3a8024 */; // 0x424fb0
  x1 = x0; // 0x424fb4
  SoulNavigator_navigate() /* 0x3a6ae8 */; // 0x424fb8
  SP = FP; // 0x424fc0
  x0 = NULL; // 0x424fbc
  // frame: FP, LR, mem(SP), 0x10 // 0x424fc4
  return;
}

// PartyPasswordState_anon_closure_3
// raw disassembly:
//  0x424fe0: stp FP, LR, [SP, #-0x10]!
//  0x424fe4: mov FP, SP
//  0x424fe8: sub SP, SP, #0x10
//  0x424fec: stur NULL, [FP, #-8]
//  0x424ff0: mov x0, #0
//  0x424ff4: add x1, FP, w0, sxtw #2
//  0x424ff8: ldr x1, [x1, #0x10]
//  0x424ffc: ldur w2, [x1, #0x17]
//  0x425000: add x2, x2, HEAP, lsl #32
//  0x425004: stur x2, [FP, #-0x10]
//  0x425008: ldr BARRIER, [THR, #0x38]
//  0x42500c: cmp SP, BARRIER
//  0x425010: b.ls #0x425058
//  0x425014: ldr x0, [PP, #0xcf0]
//  0x425018: bl #0x2b16e4
//  0x42501c: add x1, PP, #0x11, lsl #12
//  0x425020: ldr x1, [x1, #0x170]
//  0x425024: ldr x4, [PP, #0x4c0]
//  0x425028: bl #0x3a8e60
//  0x42502c: ldur x0, [FP, #-0x10]
//  0x425030: ldur w1, [x0, #0xf]
//  0x425034: add x1, x1, HEAP, lsl #32
//  0x425038: ldur w0, [x1, #0x13]
//  0x42503c: add x0, x0, HEAP, lsl #32
//  0x425040: ldur w2, [x1, #0x17]
//  0x425044: add x2, x2, HEAP, lsl #32
//  0x425048: mov x1, x0
//  0x42504c: bl #0x425060
//  0x425050: mov x0, NULL
//  0x425054: b #0x2b16b8
//  0x425058: bl #0x61fa28
//  0x42505c: b #0x425014
//
dynamic PartyPasswordState_anon_closure_3() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x424fe0
  // frame: FP = SP // 0x424fe4
  // frame: SP = SP - 0x10 // 0x424fe8
  local_m8 = NULL; // 0x424fec
  w2 = mem((mem((FP + (w0 /* sxtw 2 */)), 0x10)), 0x17); // 0x424ffc
  x0 = 0; // 0x424ff0
  x1 = mem((FP + (w0 /* sxtw 2 */)), 0x10); // 0x424ff8
  x2 = ((mem((mem((FP + (w0 /* sxtw 2 */)), 0x10)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x425000
  local_m10 = x2; // 0x425004
  BARRIER = mem(THR, 0x38); // 0x425008
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x425058
  }
  x0 = mem(PP, 0xcf0) /* TypeArguments */; // 0x425014
  sub_0x2b16e4(); // 0x425018
  x1 = "InvitePremiumRoomPage_ClickDownload" /* pp+0x11170 */; // 0x425020
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x425024
  EventTrack_eventClick() /* 0x3a8e60 */; // 0x425028
  w0 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13); // 0x425038
  w1 = mem((local_m10), 0xf); // 0x425030
  x0 = ((mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x42503c
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x425034
  w2 = mem(x1, 0x17); // 0x425040
  x1 = x0; // 0x425048
  x2 = ((mem(x1, 0x17)) & 0xffffffff) + (HEAP << 32); // 0x425044
  PartyPasswordNotifier_saveSnapshot() /* 0x425060 */; // 0x42504c
  x0 = NULL; // 0x425050
}

// PartyPasswordState_buildSnapshot
// raw disassembly:
//  0x426d0c: stp FP, LR, [SP, #-0x10]!
//  0x426d10: mov FP, SP
//  0x426d14: sub SP, SP, #0x58
//  0x426d18: stur x1, [FP, #-0x10]
//  0x426d1c: ldr BARRIER, [THR, #0x38]
//  0x426d20: cmp SP, BARRIER
//  0x426d24: b.ls #0x4270ec
//  0x426d28: ldur w0, [x1, #0x17]
//  0x426d2c: add x0, x0, HEAP, lsl #32
//  0x426d30: stur x0, [FP, #-8]
//  0x426d34: bl #0x31d844
//  0x426d38: mov x1, x0
//  0x426d3c: ldr x0, [PP, #0x6310]
//  0x426d40: stur x1, [FP, #-0x18]
//  0x426d44: stur w0, [x1, #0x27]
//  0x426d48: fmov d0, #1.00000000
//  0x426d4c: stur d0, [x1, #7]
//  0x426d50: add x17, PP, #0x11, lsl #12
//  0x426d54: ldr d0, [x17, #0x380]
//  0x426d58: stur d0, [x1, #0xf]
//  0x426d5c: stur xzr, [x1, #0x17]
//  0x426d60: add x17, PP, #0x11, lsl #12
//  0x426d64: ldr d0, [x17, #0x388]
//  0x426d68: stur d0, [x1, #0x1f]
//  0x426d6c: bl #0x3a142c
//  0x426d70: mov x2, x0
//  0x426d74: add x0, PP, #0x11, lsl #12
//  0x426d78: ldr x0, [x0, #0x390]
//  0x426d7c: stur x2, [FP, #-0x20]
//  0x426d80: stur w0, [x2, #0xb]
//  0x426d84: add x0, PP, #0xf, lsl #12
//  0x426d88: ldr x0, [x0, #0x170]
//  0x426d8c: stur w0, [x2, #0xf]
//  0x426d90: ldr x1, [PP, #0x5458]
//  0x426d94: stur w1, [x2, #0x13]
//  0x426d98: add x1, PP, #0x11, lsl #12
//  0x426d9c: ldr x1, [x1, #0x398]
//  0x426da0: stur w1, [x2, #0x1b]
//  0x426da4: add x1, PP, #0xc, lsl #12
//  0x426da8: ldr x1, [x1, #0xb00]
//  0x426dac: ldr x4, [PP, #0x4c0]
//  0x426db0: bl #0x3a1dcc
//  0x426db4: stur x0, [FP, #-0x28]
//  0x426db8: bl #0x427718
//  0x426dbc: stur x0, [FP, #-0x30]
//  0x426dc0: bl #0x393bf8
//  0x426dc4: mov x2, x0
//  0x426dc8: ldur x0, [FP, #-0x28]
//  0x426dcc: stur x2, [FP, #-0x38]
//  0x426dd0: stur w0, [x2, #0xb]
//  0x426dd4: ldur x0, [FP, #-0x30]
//  0x426dd8: stur w0, [x2, #0x13]
//  0x426ddc: ldr x0, [PP, #0x53a8]
//  0x426de0: stur w0, [x2, #0x1b]
//  0x426de4: add x1, PP, #0xc, lsl #12
//  0x426de8: ldr x1, [x1, #0xb10]
//  0x426dec: ldr x4, [PP, #0x4c0]
//  0x426df0: bl #0x3a1dcc
//  0x426df4: stur x0, [FP, #-0x28]
//  0x426df8: bl #0x4276e0
//  0x426dfc: mov x1, x0
//  0x426e00: bl #0x3b7e50
//  0x426e04: stur x0, [FP, #-0x30]
//  0x426e08: bl #0x393bf8
//  0x426e0c: mov x1, x0
//  0x426e10: ldur x0, [FP, #-0x28]
//  0x426e14: stur x1, [FP, #-0x40]
//  0x426e18: stur w0, [x1, #0xb]
//  0x426e1c: ldur x0, [FP, #-0x30]
//  0x426e20: stur w0, [x1, #0x13]
//  0x426e24: bl #0x391c0c
//  0x426e28: mov x3, x0
//  0x426e2c: add x0, PP, #0x11, lsl #12
//  0x426e30: ldr x0, [x0, #0x3a0]
//  0x426e34: stur x3, [FP, #-0x28]
//  0x426e38: stur w0, [x3, #0xf]
//  0x426e3c: ldur x0, [FP, #-0x40]
//  0x426e40: stur w0, [x3, #0xb]
//  0x426e44: mov x1, NULL
//  0x426e48: mov x2, #4
//  0x426e4c: bl #0x61f920
//  0x426e50: mov x2, x0
//  0x426e54: ldur x0, [FP, #-0x38]
//  0x426e58: stur x2, [FP, #-0x30]
//  0x426e5c: stur w0, [x2, #0xf]
//  0x426e60: ldur x0, [FP, #-0x28]
//  0x426e64: stur w0, [x2, #0x13]
//  0x426e68: ldr x1, [PP, #0x5c58]
//  0x426e6c: bl #0x61e854
//  0x426e70: mov x1, x0
//  0x426e74: ldur x0, [FP, #-0x30]
//  0x426e78: stur x1, [FP, #-0x28]
//  0x426e7c: stur w0, [x1, #0xf]
//  0x426e80: mov x0, #4
//  0x426e84: stur w0, [x1, #0xb]
//  0x426e88: bl #0x39310c
//  0x426e8c: mov x1, x0
//  0x426e90: add x0, PP, #0xa, lsl #12
//  0x426e94: ldr x0, [x0, #0x858]
//  0x426e98: stur x1, [FP, #-0x30]
//  0x426e9c: stur w0, [x1, #0xf]
//  0x426ea0: add x2, PP, #0xe, lsl #12
//  0x426ea4: ldr x2, [x2, #0xae0]
//  0x426ea8: stur w2, [x1, #0x13]
//  0x426eac: add x3, PP, #0xe, lsl #12
//  0x426eb0: ldr x3, [x3, #0xb08]
//  0x426eb4: stur w3, [x1, #0x17]
//  0x426eb8: add x3, PP, #0xe, lsl #12
//  0x426ebc: ldr x3, [x3, #0xb60]
//  0x426ec0: stur w3, [x1, #0x1b]
//  0x426ec4: add x4, PP, #0xe, lsl #12
//  0x426ec8: ldr x4, [x4, #0xaf8]
//  0x426ecc: stur w4, [x1, #0x23]
//  0x426ed0: add x5, PP, #0xa, lsl #12
//  0x426ed4: ldr x5, [x5, #0xa8]
//  0x426ed8: stur w5, [x1, #0x2b]
//  0x426edc: stur xzr, [x1, #0x2f]
//  0x426ee0: ldur x6, [FP, #-0x28]
//  0x426ee4: stur w6, [x1, #0xb]
//  0x426ee8: bl #0x391a04
//  0x426eec: stur x0, [FP, #-0x28]
//  0x426ef0: add BARRIER, PP, #0x11, lsl #12
//  0x426ef4: ldr BARRIER, [BARRIER, #0x3a8]
//  0x426ef8: ldr LR, [PP, #0x5458]
//  0x426efc: stp LR, BARRIER, [SP, #8]
//  0x426f00: ldur BARRIER, [FP, #-0x30]
//  0x426f04: str BARRIER, [SP]
//  0x426f08: mov x1, x0
//  0x426f0c: add x4, PP, #0x11, lsl #12
//  0x426f10: ldr x4, [x4, #0x3b0]
//  0x426f14: bl #0x391490
//  0x426f18: ldur x1, [FP, #-0x10]
//  0x426f1c: bl #0x4270f4
//  0x426f20: stur x0, [FP, #-0x10]
//  0x426f24: bl #0x391c0c
//  0x426f28: mov x1, x0
//  0x426f2c: add x0, PP, #0x11, lsl #12
//  0x426f30: ldr x0, [x0, #0x3b8]
//  0x426f34: stur x1, [FP, #-0x30]
//  0x426f38: stur w0, [x1, #0xf]
//  0x426f3c: ldur x0, [FP, #-0x10]
//  0x426f40: stur w0, [x1, #0xb]
//  0x426f44: bl #0x3a142c
//  0x426f48: mov x1, x0
//  0x426f4c: add x0, PP, #0x11, lsl #12
//  0x426f50: ldr x0, [x0, #0x3c0]
//  0x426f54: stur x1, [FP, #-0x10]
//  0x426f58: stur w0, [x1, #0xb]
//  0x426f5c: add x0, PP, #0xf, lsl #12
//  0x426f60: ldr x0, [x0, #0x170]
//  0x426f64: stur w0, [x1, #0xf]
//  0x426f68: add x0, PP, #0x11, lsl #12
//  0x426f6c: ldr x0, [x0, #0x3c8]
//  0x426f70: stur w0, [x1, #0x13]
//  0x426f74: add x0, PP, #0x10, lsl #12
//  0x426f78: ldr x0, [x0, #0xc28]
//  0x426f7c: stur w0, [x1, #0x17]
//  0x426f80: bl #0x391c0c
//  0x426f84: mov x3, x0
//  0x426f88: add x0, PP, #0x11, lsl #12
//  0x426f8c: ldr x0, [x0, #0x3d0]
//  0x426f90: stur x3, [FP, #-0x38]
//  0x426f94: stur w0, [x3, #0xf]
//  0x426f98: ldur x0, [FP, #-0x10]
//  0x426f9c: stur w0, [x3, #0xb]
//  0x426fa0: mov x1, NULL
//  0x426fa4: mov x2, #8
//  0x426fa8: bl #0x61f920
//  0x426fac: mov x2, x0
//  0x426fb0: ldur x0, [FP, #-0x20]
//  0x426fb4: stur x2, [FP, #-0x10]
//  0x426fb8: stur w0, [x2, #0xf]
//  0x426fbc: ldur x0, [FP, #-0x28]
//  0x426fc0: stur w0, [x2, #0x13]
//  0x426fc4: ldur x0, [FP, #-0x30]
//  0x426fc8: stur w0, [x2, #0x17]
//  0x426fcc: ldur x0, [FP, #-0x38]
//  0x426fd0: stur w0, [x2, #0x1b]
//  0x426fd4: ldr x1, [PP, #0x5c58]
//  0x426fd8: bl #0x61e854
//  0x426fdc: mov x1, x0
//  0x426fe0: ldur x0, [FP, #-0x10]
//  0x426fe4: stur x1, [FP, #-0x20]
//  0x426fe8: stur w0, [x1, #0xf]
//  0x426fec: mov x0, #8
//  0x426ff0: stur w0, [x1, #0xb]
//  0x426ff4: bl #0x39310c
//  0x426ff8: mov x1, x0
//  0x426ffc: add x0, PP, #0xa, lsl #12
//  0x427000: ldr x0, [x0, #0x858]
//  0x427004: stur x1, [FP, #-0x10]
//  0x427008: stur w0, [x1, #0xf]
//  0x42700c: add x2, PP, #0xe, lsl #12
//  0x427010: ldr x2, [x2, #0xae0]
//  0x427014: stur w2, [x1, #0x13]
//  0x427018: add x2, PP, #0xe, lsl #12
//  0x42701c: ldr x2, [x2, #0xae8]
//  0x427020: stur w2, [x1, #0x17]
//  0x427024: add x2, PP, #0xe, lsl #12
//  0x427028: ldr x2, [x2, #0xb60]
//  0x42702c: stur w2, [x1, #0x1b]
//  0x427030: add x2, PP, #0xe, lsl #12
//  0x427034: ldr x2, [x2, #0xaf8]
//  0x427038: stur w2, [x1, #0x23]
//  0x42703c: add x2, PP, #0xa, lsl #12
//  0x427040: ldr x2, [x2, #0xa8]
//  0x427044: stur w2, [x1, #0x2b]
//  0x427048: stur xzr, [x1, #0x2f]
//  0x42704c: ldur x2, [FP, #-0x20]
//  0x427050: stur w2, [x1, #0xb]
//  0x427054: bl #0x391a04
//  0x427058: stur x0, [FP, #-0x20]
//  0x42705c: ldur BARRIER, [FP, #-0x18]
//  0x427060: ldur LR, [FP, #-0x10]
//  0x427064: stp LR, BARRIER, [SP]
//  0x427068: mov x1, x0
//  0x42706c: add x4, PP, #0xf, lsl #12
//  0x427070: ldr x4, [x4, #0x568]
//  0x427074: bl #0x391490
//  0x427078: bl #0x402b18
//  0x42707c: mov x1, x0
//  0x427080: ldur x0, [FP, #-0x20]
//  0x427084: stur x1, [FP, #-0x10]
//  0x427088: stur w0, [x1, #0xb]
//  0x42708c: ldur x0, [FP, #-8]
//  0x427090: stur w0, [x1, #7]
//  0x427094: bl #0x3a1db4
//  0x427098: add x1, PP, #0xa, lsl #12
//  0x42709c: ldr x1, [x1, #0x858]
//  0x4270a0: stur w1, [x0, #0xb]
//  0x4270a4: add x1, NULL, #0x30
//  0x4270a8: stur w1, [x0, #0xf]
//  0x4270ac: ldur x1, [FP, #-0x10]
//  0x4270b0: stur w1, [x0, #0x23]
//  0x4270b4: ldr x1, [PP, #0x77d8]
//  0x4270b8: stur w1, [x0, #0x27]
//  0x4270bc: add x1, PP, #0xe, lsl #12
//  0x4270c0: ldr x1, [x1, #0xf10]
//  0x4270c4: stur w1, [x0, #0x2b]
//  0x4270c8: add x1, PP, #0xf, lsl #12
//  0x4270cc: ldr x1, [x1, #0x140]
//  0x4270d0: stur w1, [x0, #0x2f]
//  0x4270d4: add x1, PP, #0xf, lsl #12
//  0x4270d8: ldr x1, [x1, #0x2f8]
//  0x4270dc: stur w1, [x0, #0x37]
//  0x4270e0: mov SP, FP
//  0x4270e4: ldp FP, LR, [SP], #0x10
//  0x4270e8: ret 
//  0x4270ec: bl #0x61fa28
//  0x4270f0: b #0x426d28
//
dynamic PartyPasswordState_buildSnapshot() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  // frame: FP, LR, mem(SP, -0x10)! // 0x426d0c
  // frame: FP = SP // 0x426d10
  // frame: SP = SP - 0x58 // 0x426d14
  local_m10 = x1; // 0x426d18
  BARRIER = mem(THR, 0x38); // 0x426d1c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4270ec
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x426d2c
  local_m8 = x0; // 0x426d30
  AllocationStub_Color() /* 0x31d844 */; // 0x426d34
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x426d3c
  x1 = x0; // 0x426d38
  local_m18 = x1; // 0x426d40
  memSet(x1, 0x27, w0); // 0x426d44
  d0 = 1.00000000 /* bits */; // 0x426d48
  memSet(x1, 7, d0); // 0x426d4c
  d0 = 4586377554639066646; // 0x426d54
  x17 = PP + 0x11000; // 0x426d50
  memSet(x1, 0xf, d0); // 0x426d58
  memSet(x1, 0x17, xzr); // 0x426d5c
  d0 = 4600170932321326871; // 0x426d64
  x17 = PP + 0x11000; // 0x426d60
  memSet(x1, 0x1f, d0); // 0x426d68
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x426d6c
  x0 = "assets/images/3.0x/vm_bg_invite.webp" /* pp+0x11390 */; // 0x426d78
  x2 = x0; // 0x426d70
  local_m20 = x2; // 0x426d7c
  memSet(x2, 0xb, w0); // 0x426d80
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x426d88
  memSet(x2, 0xf, w0); // 0x426d8c
  x1 = mem(PP, 0x5458) /* Double */; // 0x426d90
  memSet(x2, 0x13, w1); // 0x426d94
  x1 = mem((PP + 0x11000), 0x398) /* Obj!BoxFit@12283  */; // 0x426d9c
  memSet(x2, 0x1b, w1); // 0x426da0
  x1 = "virtual_party_private_room_invite_page_title" /* pp+0xcb00 */; // 0x426da8
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x426dac
  getString() /* 0x3a1dcc */; // 0x426db0
  local_m28 = x0; // 0x426db4
  TextStyles_pageBiggerTitle() /* 0x427718 */; // 0x426db8
  local_m30 = x0; // 0x426dbc
  AllocationStub_Text() /* 0x393bf8 */; // 0x426dc0
  x0 = local_m28; // 0x426dc8
  x2 = x0; // 0x426dc4
  local_m38 = x2; // 0x426dcc
  memSet(x2, 0xb, w0); // 0x426dd0
  x0 = local_m30; // 0x426dd4
  memSet(x2, 0x13, w0); // 0x426dd8
  x0 = mem(PP, 0x53a8) /* Obj!TextAlign@12316  */; // 0x426ddc
  memSet(x2, 0x1b, w0); // 0x426de0
  x1 = "virtual_party_private_room_invite_page_password" /* pp+0xcb10 */; // 0x426de8
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x426dec
  getString() /* 0x3a1dcc */; // 0x426df0
  local_m28 = x0; // 0x426df4
  SOColors_get_white60() /* 0x4276e0 */; // 0x426df8
  x1 = x0; // 0x426dfc
  TextStyles_commonContent() /* 0x3b7e50 */; // 0x426e00
  local_m30 = x0; // 0x426e04
  AllocationStub_Text() /* 0x393bf8 */; // 0x426e08
  x0 = local_m28; // 0x426e10
  x1 = x0; // 0x426e0c
  local_m40 = x1; // 0x426e14
  memSet(x1, 0xb, w0); // 0x426e18
  x0 = local_m30; // 0x426e1c
  memSet(x1, 0x13, w0); // 0x426e20
  AllocationStub_Padding() /* 0x391c0c */; // 0x426e24
  x0 = mem((PP + 0x11000), 0x3a0) /* Obj!EdgeInsets@11bb2  */; // 0x426e30
  x3 = x0; // 0x426e28
  local_m28 = x3; // 0x426e34
  memSet(x3, 0xf, w0); // 0x426e38
  x0 = local_m40; // 0x426e3c
  memSet(x3, 0xb, w0); // 0x426e40
  x1 = NULL; // 0x426e44
  x2 = 4; // 0x426e48
  sub_0x61f920(); // 0x426e4c
  x0 = local_m38; // 0x426e54
  x2 = x0; // 0x426e50
  local_m30 = x2; // 0x426e58
  memSet(x2, 0xf, w0); // 0x426e5c
  x0 = local_m28; // 0x426e60
  memSet(x2, 0x13, w0); // 0x426e64
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x426e68
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x426e6c
  x0 = local_m30; // 0x426e74
  x1 = x0; // 0x426e70
  local_m28 = x1; // 0x426e78
  memSet(x1, 0xf, w0); // 0x426e7c
  x0 = 4; // 0x426e80
  memSet(x1, 0xb, w0); // 0x426e84
  AllocationStub_Column() /* 0x39310c */; // 0x426e88
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x426e94
  x1 = x0; // 0x426e8c
  local_m30 = x1; // 0x426e98
  memSet(x1, 0xf, w0); // 0x426e9c
  x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x426ea4
  memSet(x1, 0x13, w2); // 0x426ea8
  x3 = mem((PP + 0xe000), 0xb08) /* Obj!MainAxisSize@12270  */; // 0x426eb0
  memSet(x1, 0x17, w3); // 0x426eb4
  x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x426ebc
  memSet(x1, 0x1b, w3); // 0x426ec0
  x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x426ec8
  memSet(x1, 0x23, w4); // 0x426ecc
  x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x426ed4
  memSet(x1, 0x2b, w5); // 0x426ed8
  memSet(x1, 0x2f, xzr); // 0x426edc
  x6 = local_m28; // 0x426ee0
  memSet(x1, 0xb, w6); // 0x426ee4
  AllocationStub_Container() /* 0x391a04 */; // 0x426ee8
  local_m28 = x0; // 0x426eec
  BARRIER = mem((PP + 0x11000), 0x3a8) /* Obj!EdgeInsets@11bb1  */; // 0x426ef4
  LR = mem(PP, 0x5458) /* Double */; // 0x426ef8
  // frame: LR, BARRIER, mem(SP, 8) // 0x426efc
  BARRIER = local_m30; // 0x426f00
  local_0 = BARRIER; // 0x426f04
  x1 = x0; // 0x426f08
  x4 = mem((PP + 0x11000), 0x3b0) /* ImmutableArray */; // 0x426f10
  Container_ctor() /* 0x391490 */; // 0x426f14
  x1 = local_m10; // 0x426f18
  PartyPasswordState_buildDisplayPassword() /* 0x4270f4 */; // 0x426f1c
  local_m10 = x0; // 0x426f20
  AllocationStub_Padding() /* 0x391c0c */; // 0x426f24
  x0 = mem((PP + 0x11000), 0x3b8) /* Obj!EdgeInsets@11bb0  */; // 0x426f30
  x1 = x0; // 0x426f28
  local_m30 = x1; // 0x426f34
  memSet(x1, 0xf, w0); // 0x426f38
  x0 = local_m10; // 0x426f3c
  memSet(x1, 0xb, w0); // 0x426f40
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x426f44
  x0 = "assets/images/3.0x/h5_img_logo.webp" /* pp+0x113c0 */; // 0x426f50
  x1 = x0; // 0x426f48
  local_m10 = x1; // 0x426f54
  memSet(x1, 0xb, w0); // 0x426f58
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x426f60
  memSet(x1, 0xf, w0); // 0x426f64
  x0 = mem((PP + 0x11000), 0x3c8) /* Double */; // 0x426f6c
  memSet(x1, 0x13, w0); // 0x426f70
  x0 = mem((PP + 0x10000), 0xc28) /* Double */; // 0x426f78
  memSet(x1, 0x17, w0); // 0x426f7c
  AllocationStub_Padding() /* 0x391c0c */; // 0x426f80
  x0 = mem((PP + 0x11000), 0x3d0) /* Obj!EdgeInsets@11baf  */; // 0x426f8c
  x3 = x0; // 0x426f84
  local_m38 = x3; // 0x426f90
  memSet(x3, 0xf, w0); // 0x426f94
  x0 = local_m10; // 0x426f98
  memSet(x3, 0xb, w0); // 0x426f9c
  x1 = NULL; // 0x426fa0
  x2 = 8; // 0x426fa4
  sub_0x61f920(); // 0x426fa8
  x0 = local_m20; // 0x426fb0
  x2 = x0; // 0x426fac
  local_m10 = x2; // 0x426fb4
  memSet(x2, 0xf, w0); // 0x426fb8
  x0 = local_m28; // 0x426fbc
  memSet(x2, 0x13, w0); // 0x426fc0
  x0 = local_m30; // 0x426fc4
  memSet(x2, 0x17, w0); // 0x426fc8
  x0 = local_m38; // 0x426fcc
  memSet(x2, 0x1b, w0); // 0x426fd0
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x426fd4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x426fd8
  x0 = local_m10; // 0x426fe0
  x1 = x0; // 0x426fdc
  local_m20 = x1; // 0x426fe4
  memSet(x1, 0xf, w0); // 0x426fe8
  x0 = 8; // 0x426fec
  memSet(x1, 0xb, w0); // 0x426ff0
  AllocationStub_Column() /* 0x39310c */; // 0x426ff4
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x427000
  x1 = x0; // 0x426ff8
  local_m10 = x1; // 0x427004
  memSet(x1, 0xf, w0); // 0x427008
  x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x427010
  memSet(x1, 0x13, w2); // 0x427014
  x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x42701c
  memSet(x1, 0x17, w2); // 0x427020
  x2 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x427028
  memSet(x1, 0x1b, w2); // 0x42702c
  x2 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x427034
  memSet(x1, 0x23, w2); // 0x427038
  x2 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x427040
  memSet(x1, 0x2b, w2); // 0x427044
  memSet(x1, 0x2f, xzr); // 0x427048
  x2 = local_m20; // 0x42704c
  memSet(x1, 0xb, w2); // 0x427050
  AllocationStub_Container() /* 0x391a04 */; // 0x427054
  local_m20 = x0; // 0x427058
  BARRIER = local_m18; // 0x42705c
  LR = local_m10; // 0x427060
  // frame: LR, BARRIER, mem(SP) // 0x427064
  x1 = x0; // 0x427068
  x4 = mem((PP + 0xf000), 0x568) /* ImmutableArray */; // 0x427070
  Container_ctor() /* 0x391490 */; // 0x427074
  AllocationStub_RepaintBoundary() /* 0x402b18 */; // 0x427078
  x0 = local_m20; // 0x427080
  x1 = x0; // 0x42707c
  local_m10 = x1; // 0x427084
  memSet(x1, 0xb, w0); // 0x427088
  x0 = local_m8; // 0x42708c
  memSet(x1, 7, w0); // 0x427090
  AllocationStub_SingleChildScrollView() /* 0x3a1db4 */; // 0x427094
  x1 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x42709c
  memSet(x0, 0xb, w1); // 0x4270a0
  x1 = NULL + 0x30; // 0x4270a4
  memSet(x0, 0xf, w1); // 0x4270a8
  x1 = local_m10; // 0x4270ac
  memSet(x0, 0x23, w1); // 0x4270b0
  x1 = mem(PP, 0x77d8) /* Obj!DragStartBehavior@122d8  */; // 0x4270b4
  memSet(x0, 0x27, w1); // 0x4270b8
  x1 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x4270c0
  memSet(x0, 0x2b, w1); // 0x4270c4
  x1 = mem((PP + 0xf000), 0x140) /* Obj!HitTestBehavior@12262  */; // 0x4270cc
  memSet(x0, 0x2f, w1); // 0x4270d0
  x1 = mem((PP + 0xf000), 0x2f8); // 0x4270d8
  memSet(x0, 0x37, w1); // 0x4270dc
  SP = FP; // 0x4270e0
  // frame: FP, LR, mem(SP), 0x10 // 0x4270e4
  return;
}

// PartyPasswordState_buildDisplayPassword
// raw disassembly:
//  0x4270f4: stp FP, LR, [SP, #-0x10]!
//  0x4270f8: mov FP, SP
//  0x4270fc: sub SP, SP, #0x68
//  0x427100: stur x1, [FP, #-8]
//  0x427104: ldr BARRIER, [THR, #0x38]
//  0x427108: cmp SP, BARRIER
//  0x42710c: b.ls #0x427650
//  0x427110: bl #0x352b04
//  0x427114: fmov d0, #8.00000000
//  0x427118: stur x0, [FP, #-0x10]
//  0x42711c: stur d0, [x0, #7]
//  0x427120: stur d0, [x0, #0xf]
//  0x427124: bl #0x392f28
//  0x427128: mov x1, x0
//  0x42712c: ldur x0, [FP, #-0x10]
//  0x427130: stur x1, [FP, #-0x18]
//  0x427134: stur w0, [x1, #7]
//  0x427138: stur w0, [x1, #0xb]
//  0x42713c: stur w0, [x1, #0xf]
//  0x427140: stur w0, [x1, #0x13]
//  0x427144: bl #0x4276a4
//  0x427148: stur x0, [FP, #-0x10]
//  0x42714c: bl #0x391dd8
//  0x427150: mov x3, x0
//  0x427154: ldur x0, [FP, #-0x10]
//  0x427158: stur x3, [FP, #-0x20]
//  0x42715c: stur w0, [x3, #7]
//  0x427160: ldur x0, [FP, #-0x18]
//  0x427164: stur w0, [x3, #0x13]
//  0x427168: add x0, PP, #0xe, lsl #12
//  0x42716c: ldr x0, [x0, #0xb78]
//  0x427170: stur w0, [x3, #0x23]
//  0x427174: ldur x4, [FP, #-8]
//  0x427178: ldur w1, [x4, #0x1b]
//  0x42717c: add x1, x1, HEAP, lsl #32
//  0x427180: ldr BARRIER, [PP, #0x40]
//  0x427184: cmp w1, w16
//  0x427188: b.eq #0x427658
//  0x42718c: mov BARRIER, #2
//  0x427190: str BARRIER, [SP]
//  0x427194: mov x2, #0
//  0x427198: ldr x4, [PP, #0x280]
//  0x42719c: bl #0x281608
//  0x4271a0: stur x0, [FP, #-0x10]
//  0x4271a4: bl #0x427664
//  0x4271a8: stur x0, [FP, #-0x18]
//  0x4271ac: bl #0x393bf8
//  0x4271b0: mov x1, x0
//  0x4271b4: ldur x0, [FP, #-0x10]
//  0x4271b8: stur x1, [FP, #-0x28]
//  0x4271bc: stur w0, [x1, #0xb]
//  0x4271c0: ldur x0, [FP, #-0x18]
//  0x4271c4: stur w0, [x1, #0x13]
//  0x4271c8: bl #0x391a04
//  0x4271cc: stur x0, [FP, #-0x10]
//  0x4271d0: add BARRIER, PP, #0x11, lsl #12
//  0x4271d4: ldr BARRIER, [BARRIER, #0x3d8]
//  0x4271d8: ldr LR, [PP, #0x5458]
//  0x4271dc: stp LR, BARRIER, [SP, #0x20]
//  0x4271e0: add BARRIER, PP, #0x11, lsl #12
//  0x4271e4: ldr BARRIER, [BARRIER, #0x118]
//  0x4271e8: add LR, PP, #0xe, lsl #12
//  0x4271ec: ldr LR, [LR, #0xaa0]
//  0x4271f0: stp LR, BARRIER, [SP, #0x10]
//  0x4271f4: ldur BARRIER, [FP, #-0x20]
//  0x4271f8: ldur LR, [FP, #-0x28]
//  0x4271fc: stp LR, BARRIER, [SP]
//  0x427200: mov x1, x0
//  0x427204: add x4, PP, #0x11, lsl #12
//  0x427208: ldr x4, [x4, #0x3e0]
//  0x42720c: bl #0x391490
//  0x427210: bl #0x352b04
//  0x427214: fmov d0, #8.00000000
//  0x427218: stur x0, [FP, #-0x18]
//  0x42721c: stur d0, [x0, #7]
//  0x427220: stur d0, [x0, #0xf]
//  0x427224: bl #0x392f28
//  0x427228: mov x1, x0
//  0x42722c: ldur x0, [FP, #-0x18]
//  0x427230: stur x1, [FP, #-0x20]
//  0x427234: stur w0, [x1, #7]
//  0x427238: stur w0, [x1, #0xb]
//  0x42723c: stur w0, [x1, #0xf]
//  0x427240: stur w0, [x1, #0x13]
//  0x427244: bl #0x31d844
//  0x427248: mov x1, x0
//  0x42724c: ldr x0, [PP, #0x6310]
//  0x427250: stur x1, [FP, #-0x18]
//  0x427254: stur w0, [x1, #0x27]
//  0x427258: ldr d0, [PP, #0x66a0]
//  0x42725c: stur d0, [x1, #7]
//  0x427260: add x17, PP, #0xe, lsl #12
//  0x427264: ldr d1, [x17, #0xe68]
//  0x427268: stur d1, [x1, #0xf]
//  0x42726c: stur d1, [x1, #0x17]
//  0x427270: stur d1, [x1, #0x1f]
//  0x427274: bl #0x391dd8
//  0x427278: mov x3, x0
//  0x42727c: ldur x0, [FP, #-0x18]
//  0x427280: stur x3, [FP, #-0x28]
//  0x427284: stur w0, [x3, #7]
//  0x427288: ldur x0, [FP, #-0x20]
//  0x42728c: stur w0, [x3, #0x13]
//  0x427290: add x0, PP, #0xe, lsl #12
//  0x427294: ldr x0, [x0, #0xb78]
//  0x427298: stur w0, [x3, #0x23]
//  0x42729c: ldur x4, [FP, #-8]
//  0x4272a0: ldur w1, [x4, #0x1b]
//  0x4272a4: add x1, x1, HEAP, lsl #32
//  0x4272a8: mov BARRIER, #4
//  0x4272ac: str BARRIER, [SP]
//  0x4272b0: mov x2, #1
//  0x4272b4: ldr x4, [PP, #0x280]
//  0x4272b8: bl #0x281608
//  0x4272bc: stur x0, [FP, #-0x18]
//  0x4272c0: bl #0x427664
//  0x4272c4: stur x0, [FP, #-0x20]
//  0x4272c8: bl #0x393bf8
//  0x4272cc: mov x1, x0
//  0x4272d0: ldur x0, [FP, #-0x18]
//  0x4272d4: stur x1, [FP, #-0x30]
//  0x4272d8: stur w0, [x1, #0xb]
//  0x4272dc: ldur x0, [FP, #-0x20]
//  0x4272e0: stur w0, [x1, #0x13]
//  0x4272e4: bl #0x391a04
//  0x4272e8: stur x0, [FP, #-0x18]
//  0x4272ec: add BARRIER, PP, #0x11, lsl #12
//  0x4272f0: ldr BARRIER, [BARRIER, #0x3d8]
//  0x4272f4: add LR, PP, #0x11, lsl #12
//  0x4272f8: ldr LR, [LR, #0x118]
//  0x4272fc: stp LR, BARRIER, [SP, #0x20]
//  0x427300: ldr BARRIER, [PP, #0x5458]
//  0x427304: add LR, PP, #0xe, lsl #12
//  0x427308: ldr LR, [LR, #0xaa0]
//  0x42730c: stp LR, BARRIER, [SP, #0x10]
//  0x427310: ldur BARRIER, [FP, #-0x28]
//  0x427314: ldur LR, [FP, #-0x30]
//  0x427318: stp LR, BARRIER, [SP]
//  0x42731c: mov x1, x0
//  0x427320: add x4, PP, #0x11, lsl #12
//  0x427324: ldr x4, [x4, #0x3e8]
//  0x427328: bl #0x391490
//  0x42732c: bl #0x352b04
//  0x427330: fmov d0, #8.00000000
//  0x427334: stur x0, [FP, #-0x20]
//  0x427338: stur d0, [x0, #7]
//  0x42733c: stur d0, [x0, #0xf]
//  0x427340: bl #0x392f28
//  0x427344: mov x1, x0
//  0x427348: ldur x0, [FP, #-0x20]
//  0x42734c: stur x1, [FP, #-0x28]
//  0x427350: stur w0, [x1, #7]
//  0x427354: stur w0, [x1, #0xb]
//  0x427358: stur w0, [x1, #0xf]
//  0x42735c: stur w0, [x1, #0x13]
//  0x427360: bl #0x31d844
//  0x427364: mov x1, x0
//  0x427368: ldr x0, [PP, #0x6310]
//  0x42736c: stur x1, [FP, #-0x20]
//  0x427370: stur w0, [x1, #0x27]
//  0x427374: ldr d0, [PP, #0x66a0]
//  0x427378: stur d0, [x1, #7]
//  0x42737c: add x17, PP, #0xe, lsl #12
//  0x427380: ldr d1, [x17, #0xe68]
//  0x427384: stur d1, [x1, #0xf]
//  0x427388: stur d1, [x1, #0x17]
//  0x42738c: stur d1, [x1, #0x1f]
//  0x427390: bl #0x391dd8
//  0x427394: mov x3, x0
//  0x427398: ldur x0, [FP, #-0x20]
//  0x42739c: stur x3, [FP, #-0x30]
//  0x4273a0: stur w0, [x3, #7]
//  0x4273a4: ldur x0, [FP, #-0x28]
//  0x4273a8: stur w0, [x3, #0x13]
//  0x4273ac: add x0, PP, #0xe, lsl #12
//  0x4273b0: ldr x0, [x0, #0xb78]
//  0x4273b4: stur w0, [x3, #0x23]
//  0x4273b8: ldur x4, [FP, #-8]
//  0x4273bc: ldur w1, [x4, #0x1b]
//  0x4273c0: add x1, x1, HEAP, lsl #32
//  0x4273c4: mov BARRIER, #6
//  0x4273c8: str BARRIER, [SP]
//  0x4273cc: mov x2, #2
//  0x4273d0: ldr x4, [PP, #0x280]
//  0x4273d4: bl #0x281608
//  0x4273d8: stur x0, [FP, #-0x20]
//  0x4273dc: bl #0x427664
//  0x4273e0: stur x0, [FP, #-0x28]
//  0x4273e4: bl #0x393bf8
//  0x4273e8: mov x1, x0
//  0x4273ec: ldur x0, [FP, #-0x20]
//  0x4273f0: stur x1, [FP, #-0x38]
//  0x4273f4: stur w0, [x1, #0xb]
//  0x4273f8: ldur x0, [FP, #-0x28]
//  0x4273fc: stur w0, [x1, #0x13]
//  0x427400: bl #0x391a04
//  0x427404: stur x0, [FP, #-0x20]
//  0x427408: add BARRIER, PP, #0x11, lsl #12
//  0x42740c: ldr BARRIER, [BARRIER, #0x3d8]
//  0x427410: add LR, PP, #0x11, lsl #12
//  0x427414: ldr LR, [LR, #0x118]
//  0x427418: stp LR, BARRIER, [SP, #0x20]
//  0x42741c: add BARRIER, PP, #0xe, lsl #12
//  0x427420: ldr BARRIER, [BARRIER, #0xaa0]
//  0x427424: ldr LR, [PP, #0x5458]
//  0x427428: stp LR, BARRIER, [SP, #0x10]
//  0x42742c: ldur BARRIER, [FP, #-0x30]
//  0x427430: ldur LR, [FP, #-0x38]
//  0x427434: stp LR, BARRIER, [SP]
//  0x427438: mov x1, x0
//  0x42743c: add x4, PP, #0x11, lsl #12
//  0x427440: ldr x4, [x4, #0x3f0]
//  0x427444: bl #0x391490
//  0x427448: bl #0x352b04
//  0x42744c: fmov d0, #8.00000000
//  0x427450: stur x0, [FP, #-0x28]
//  0x427454: stur d0, [x0, #7]
//  0x427458: stur d0, [x0, #0xf]
//  0x42745c: bl #0x392f28
//  0x427460: mov x1, x0
//  0x427464: ldur x0, [FP, #-0x28]
//  0x427468: stur x1, [FP, #-0x30]
//  0x42746c: stur w0, [x1, #7]
//  0x427470: stur w0, [x1, #0xb]
//  0x427474: stur w0, [x1, #0xf]
//  0x427478: stur w0, [x1, #0x13]
//  0x42747c: bl #0x31d844
//  0x427480: mov x1, x0
//  0x427484: ldr x0, [PP, #0x6310]
//  0x427488: stur x1, [FP, #-0x28]
//  0x42748c: stur w0, [x1, #0x27]
//  0x427490: ldr d0, [PP, #0x66a0]
//  0x427494: stur d0, [x1, #7]
//  0x427498: add x17, PP, #0xe, lsl #12
//  0x42749c: ldr d0, [x17, #0xe68]
//  0x4274a0: stur d0, [x1, #0xf]
//  0x4274a4: stur d0, [x1, #0x17]
//  0x4274a8: stur d0, [x1, #0x1f]
//  0x4274ac: bl #0x391dd8
//  0x4274b0: mov x3, x0
//  0x4274b4: ldur x0, [FP, #-0x28]
//  0x4274b8: stur x3, [FP, #-0x38]
//  0x4274bc: stur w0, [x3, #7]
//  0x4274c0: ldur x0, [FP, #-0x30]
//  0x4274c4: stur w0, [x3, #0x13]
//  0x4274c8: add x0, PP, #0xe, lsl #12
//  0x4274cc: ldr x0, [x0, #0xb78]
//  0x4274d0: stur w0, [x3, #0x23]
//  0x4274d4: ldur x0, [FP, #-8]
//  0x4274d8: ldur w1, [x0, #0x1b]
//  0x4274dc: add x1, x1, HEAP, lsl #32
//  0x4274e0: mov BARRIER, #8
//  0x4274e4: str BARRIER, [SP]
//  0x4274e8: mov x2, #3
//  0x4274ec: ldr x4, [PP, #0x280]
//  0x4274f0: bl #0x281608
//  0x4274f4: stur x0, [FP, #-8]
//  0x4274f8: bl #0x427664
//  0x4274fc: stur x0, [FP, #-0x28]
//  0x427500: bl #0x393bf8
//  0x427504: mov x1, x0
//  0x427508: ldur x0, [FP, #-8]
//  0x42750c: stur x1, [FP, #-0x30]
//  0x427510: stur w0, [x1, #0xb]
//  0x427514: ldur x0, [FP, #-0x28]
//  0x427518: stur w0, [x1, #0x13]
//  0x42751c: bl #0x391a04
//  0x427520: stur x0, [FP, #-8]
//  0x427524: add BARRIER, PP, #0x11, lsl #12
//  0x427528: ldr BARRIER, [BARRIER, #0x3d8]
//  0x42752c: add LR, PP, #0xe, lsl #12
//  0x427530: ldr LR, [LR, #0xaa0]
//  0x427534: stp LR, BARRIER, [SP, #0x18]
//  0x427538: ldr BARRIER, [PP, #0x5458]
//  0x42753c: ldur LR, [FP, #-0x38]
//  0x427540: stp LR, BARRIER, [SP, #8]
//  0x427544: ldur BARRIER, [FP, #-0x30]
//  0x427548: str BARRIER, [SP]
//  0x42754c: mov x1, x0
//  0x427550: add x4, PP, #0x11, lsl #12
//  0x427554: ldr x4, [x4, #0x3f8]
//  0x427558: bl #0x391490
//  0x42755c: mov x1, NULL
//  0x427560: mov x2, #8
//  0x427564: bl #0x61f920
//  0x427568: mov x2, x0
//  0x42756c: ldur x0, [FP, #-0x10]
//  0x427570: stur x2, [FP, #-0x28]
//  0x427574: stur w0, [x2, #0xf]
//  0x427578: ldur x0, [FP, #-0x18]
//  0x42757c: stur w0, [x2, #0x13]
//  0x427580: ldur x0, [FP, #-0x20]
//  0x427584: stur w0, [x2, #0x17]
//  0x427588: ldur x0, [FP, #-8]
//  0x42758c: stur w0, [x2, #0x1b]
//  0x427590: ldr x1, [PP, #0x5c58]
//  0x427594: bl #0x61e854
//  0x427598: mov x1, x0
//  0x42759c: ldur x0, [FP, #-0x28]
//  0x4275a0: stur x1, [FP, #-8]
//  0x4275a4: stur w0, [x1, #0xf]
//  0x4275a8: mov x0, #8
//  0x4275ac: stur w0, [x1, #0xb]
//  0x4275b0: bl #0x3a1414
//  0x4275b4: mov x1, x0
//  0x4275b8: ldr x0, [PP, #0x5140]
//  0x4275bc: stur x1, [FP, #-0x10]
//  0x4275c0: stur w0, [x1, #0xf]
//  0x4275c4: add x0, PP, #0xe, lsl #12
//  0x4275c8: ldr x0, [x0, #0xae0]
//  0x4275cc: stur w0, [x1, #0x13]
//  0x4275d0: add x0, PP, #0xe, lsl #12
//  0x4275d4: ldr x0, [x0, #0xb08]
//  0x4275d8: stur w0, [x1, #0x17]
//  0x4275dc: add x0, PP, #0xe, lsl #12
//  0x4275e0: ldr x0, [x0, #0xb60]
//  0x4275e4: stur w0, [x1, #0x1b]
//  0x4275e8: add x0, PP, #0xe, lsl #12
//  0x4275ec: ldr x0, [x0, #0xaf8]
//  0x4275f0: stur w0, [x1, #0x23]
//  0x4275f4: add x0, PP, #0xa, lsl #12
//  0x4275f8: ldr x0, [x0, #0xa8]
//  0x4275fc: stur w0, [x1, #0x2b]
//  0x427600: stur xzr, [x1, #0x2f]
//  0x427604: ldur x0, [FP, #-8]
//  0x427608: stur w0, [x1, #0xb]
//  0x42760c: bl #0x391a04
//  0x427610: stur x0, [FP, #-8]
//  0x427614: add BARRIER, PP, #0x11, lsl #12
//  0x427618: ldr BARRIER, [BARRIER, #0x3d8]
//  0x42761c: add LR, PP, #0xe, lsl #12
//  0x427620: ldr LR, [LR, #0xaa0]
//  0x427624: stp LR, BARRIER, [SP, #8]
//  0x427628: ldur BARRIER, [FP, #-0x10]
//  0x42762c: str BARRIER, [SP]
//  0x427630: mov x1, x0
//  0x427634: add x4, PP, #0x11, lsl #12
//  0x427638: ldr x4, [x4, #0x400]
//  0x42763c: bl #0x391490
//  0x427640: ldur x0, [FP, #-8]
//  0x427644: mov SP, FP
//  0x427648: ldp FP, LR, [SP], #0x10
//  0x42764c: ret 
//  0x427650: bl #0x61fa28
//  0x427654: b #0x427110
//  0x427658: add x9, PP, #0x11, lsl #12
//  0x42765c: ldr x9, [x9, #0x408]
//  0x427660: bl #0x620258
//
dynamic PartyPasswordState_buildDisplayPassword() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4270f4
  // frame: FP = SP // 0x4270f8
  // frame: SP = SP - 0x68 // 0x4270fc
  local_m8 = x1; // 0x427100
  BARRIER = mem(THR, 0x38); // 0x427104
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x427650
  }
  AllocationStub_Radius() /* 0x352b04 */; // 0x427110
  d0 = 8.00000000 /* bits */; // 0x427114
  local_m10 = x0; // 0x427118
  memSet(x0, 7, d0); // 0x42711c
  memSet(x0, 0xf, d0); // 0x427120
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x427124
  x0 = local_m10; // 0x42712c
  x1 = x0; // 0x427128
  local_m18 = x1; // 0x427130
  memSet(x1, 7, w0); // 0x427134
  memSet(x1, 0xb, w0); // 0x427138
  memSet(x1, 0xf, w0); // 0x42713c
  memSet(x1, 0x13, w0); // 0x427140
  SOColors_get_color_20f6f6f6() /* 0x4276a4 */; // 0x427144
  local_m10 = x0; // 0x427148
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x42714c
  x0 = local_m10; // 0x427154
  x3 = x0; // 0x427150
  local_m20 = x3; // 0x427158
  memSet(x3, 7, w0); // 0x42715c
  x0 = local_m18; // 0x427160
  memSet(x3, 0x13, w0); // 0x427164
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x42716c
  memSet(x3, 0x23, w0); // 0x427170
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x427180
  w1 = mem((local_m8), 0x1b); /* _PartyPasswordState._password (off 0x1c) */  // 0x427178
  x1 = ((mem((local_m8), 0x1b)) & 0xffffffff) + (HEAP << 32); /* _PartyPasswordState._password (off 0x1c) */  // 0x42717c
  x4 = local_m8; // 0x427174
  if (w1 == w16) {
    x9 = mem((PP + 0x11000), 0x408) /* Field */; // 0x42765c
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x427660
  }
  BARRIER = 2; // 0x42718c
  local_0 = BARRIER; // 0x427190
  x2 = 0; // 0x427194
  x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x427198
  StringBase_substring() /* 0x281608 */; // 0x42719c
  local_m10 = x0; // 0x4271a0
  TextStyles_pageBigTitle() /* 0x427664 */; // 0x4271a4
  local_m18 = x0; // 0x4271a8
  AllocationStub_Text() /* 0x393bf8 */; // 0x4271ac
  x0 = local_m10; // 0x4271b4
  x1 = x0; // 0x4271b0
  local_m28 = x1; // 0x4271b8
  memSet(x1, 0xb, w0); // 0x4271bc
  x0 = local_m18; // 0x4271c0
  memSet(x1, 0x13, w0); // 0x4271c4
  AllocationStub_Container() /* 0x391a04 */; // 0x4271c8
  local_m10 = x0; // 0x4271cc
  BARRIER = mem((PP + 0x11000), 0x3d8) /* Double */; // 0x4271d4
  LR = mem(PP, 0x5458) /* Double */; // 0x4271d8
  // frame: LR, BARRIER, mem(SP, 0x20) // 0x4271dc
  BARRIER = mem((PP + 0x11000), 0x118) /* Obj!EdgeInsetsDirectional@11b70  */; // 0x4271e4
  LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x4271ec
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x4271f0
  BARRIER = local_m20; // 0x4271f4
  LR = local_m28; // 0x4271f8
  // frame: LR, BARRIER, mem(SP) // 0x4271fc
  x1 = x0; // 0x427200
  x4 = mem((PP + 0x11000), 0x3e0) /* ImmutableArray */; // 0x427208
  Container_ctor() /* 0x391490 */; // 0x42720c
  AllocationStub_Radius() /* 0x352b04 */; // 0x427210
  d0 = 8.00000000 /* bits */; // 0x427214
  local_m18 = x0; // 0x427218
  memSet(x0, 7, d0); // 0x42721c
  memSet(x0, 0xf, d0); // 0x427220
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x427224
  x0 = local_m18; // 0x42722c
  x1 = x0; // 0x427228
  local_m20 = x1; // 0x427230
  memSet(x1, 7, w0); // 0x427234
  memSet(x1, 0xb, w0); // 0x427238
  memSet(x1, 0xf, w0); // 0x42723c
  memSet(x1, 0x13, w0); // 0x427240
  AllocationStub_Color() /* 0x31d844 */; // 0x427244
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x42724c
  x1 = x0; // 0x427248
  local_m18 = x1; // 0x427250
  memSet(x1, 0x27, w0); // 0x427254
  d0 = 4596373779694328218; // 0x427258
  memSet(x1, 7, d0); // 0x42725c
  d1 = 4606864517649850079; // 0x427264
  x17 = PP + 0xe000; // 0x427260
  memSet(x1, 0xf, d1); // 0x427268
  memSet(x1, 0x17, d1); // 0x42726c
  memSet(x1, 0x1f, d1); // 0x427270
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x427274
  x0 = local_m18; // 0x42727c
  x3 = x0; // 0x427278
  local_m28 = x3; // 0x427280
  memSet(x3, 7, w0); // 0x427284
  x0 = local_m20; // 0x427288
  memSet(x3, 0x13, w0); // 0x42728c
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x427294
  memSet(x3, 0x23, w0); // 0x427298
  BARRIER = 4; // 0x4272a8
  w1 = mem((local_m8), 0x1b); /* _PartyPasswordState._password (off 0x1c) */  // 0x4272a0
  x1 = ((mem((local_m8), 0x1b)) & 0xffffffff) + (HEAP << 32); /* _PartyPasswordState._password (off 0x1c) */  // 0x4272a4
  x4 = local_m8; // 0x42729c
  local_0 = BARRIER; // 0x4272ac
  x2 = 1; // 0x4272b0
  x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x4272b4
  StringBase_substring() /* 0x281608 */; // 0x4272b8
  local_m18 = x0; // 0x4272bc
  TextStyles_pageBigTitle() /* 0x427664 */; // 0x4272c0
  local_m20 = x0; // 0x4272c4
  AllocationStub_Text() /* 0x393bf8 */; // 0x4272c8
  x0 = local_m18; // 0x4272d0
  x1 = x0; // 0x4272cc
  local_m30 = x1; // 0x4272d4
  memSet(x1, 0xb, w0); // 0x4272d8
  x0 = local_m20; // 0x4272dc
  memSet(x1, 0x13, w0); // 0x4272e0
  AllocationStub_Container() /* 0x391a04 */; // 0x4272e4
  local_m18 = x0; // 0x4272e8
  BARRIER = mem((PP + 0x11000), 0x3d8) /* Double */; // 0x4272f0
  LR = mem((PP + 0x11000), 0x118) /* Obj!EdgeInsetsDirectional@11b70  */; // 0x4272f8
  // frame: LR, BARRIER, mem(SP, 0x20) // 0x4272fc
  BARRIER = mem(PP, 0x5458) /* Double */; // 0x427300
  LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x427308
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x42730c
  BARRIER = local_m28; // 0x427310
  LR = local_m30; // 0x427314
  // frame: LR, BARRIER, mem(SP) // 0x427318
  x1 = x0; // 0x42731c
  x4 = mem((PP + 0x11000), 0x3e8) /* ImmutableArray */; // 0x427324
  Container_ctor() /* 0x391490 */; // 0x427328
  AllocationStub_Radius() /* 0x352b04 */; // 0x42732c
  d0 = 8.00000000 /* bits */; // 0x427330
  local_m20 = x0; // 0x427334
  memSet(x0, 7, d0); // 0x427338
  memSet(x0, 0xf, d0); // 0x42733c
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x427340
  x0 = local_m20; // 0x427348
  x1 = x0; // 0x427344
  local_m28 = x1; // 0x42734c
  memSet(x1, 7, w0); // 0x427350
  memSet(x1, 0xb, w0); // 0x427354
  memSet(x1, 0xf, w0); // 0x427358
  memSet(x1, 0x13, w0); // 0x42735c
  AllocationStub_Color() /* 0x31d844 */; // 0x427360
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x427368
  x1 = x0; // 0x427364
  local_m20 = x1; // 0x42736c
  memSet(x1, 0x27, w0); // 0x427370
  d0 = 4596373779694328218; // 0x427374
  memSet(x1, 7, d0); // 0x427378
  d1 = 4606864517649850079; // 0x427380
  x17 = PP + 0xe000; // 0x42737c
  memSet(x1, 0xf, d1); // 0x427384
  memSet(x1, 0x17, d1); // 0x427388
  memSet(x1, 0x1f, d1); // 0x42738c
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x427390
  x0 = local_m20; // 0x427398
  x3 = x0; // 0x427394
  local_m30 = x3; // 0x42739c
  memSet(x3, 7, w0); // 0x4273a0
  x0 = local_m28; // 0x4273a4
  memSet(x3, 0x13, w0); // 0x4273a8
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x4273b0
  memSet(x3, 0x23, w0); // 0x4273b4
  BARRIER = 6; // 0x4273c4
  w1 = mem((local_m8), 0x1b); /* _PartyPasswordState._password (off 0x1c) */  // 0x4273bc
  x1 = ((mem((local_m8), 0x1b)) & 0xffffffff) + (HEAP << 32); /* _PartyPasswordState._password (off 0x1c) */  // 0x4273c0
  x4 = local_m8; // 0x4273b8
  local_0 = BARRIER; // 0x4273c8
  x2 = 2; // 0x4273cc
  x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x4273d0
  StringBase_substring() /* 0x281608 */; // 0x4273d4
  local_m20 = x0; // 0x4273d8
  TextStyles_pageBigTitle() /* 0x427664 */; // 0x4273dc
  local_m28 = x0; // 0x4273e0
  AllocationStub_Text() /* 0x393bf8 */; // 0x4273e4
  x0 = local_m20; // 0x4273ec
  x1 = x0; // 0x4273e8
  local_m38 = x1; // 0x4273f0
  memSet(x1, 0xb, w0); // 0x4273f4
  x0 = local_m28; // 0x4273f8
  memSet(x1, 0x13, w0); // 0x4273fc
  AllocationStub_Container() /* 0x391a04 */; // 0x427400
  local_m20 = x0; // 0x427404
  BARRIER = mem((PP + 0x11000), 0x3d8) /* Double */; // 0x42740c
  LR = mem((PP + 0x11000), 0x118) /* Obj!EdgeInsetsDirectional@11b70  */; // 0x427414
  // frame: LR, BARRIER, mem(SP, 0x20) // 0x427418
  BARRIER = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x427420
  LR = mem(PP, 0x5458) /* Double */; // 0x427424
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x427428
  BARRIER = local_m30; // 0x42742c
  LR = local_m38; // 0x427430
  // frame: LR, BARRIER, mem(SP) // 0x427434
  x1 = x0; // 0x427438
  x4 = mem((PP + 0x11000), 0x3f0) /* ImmutableArray */; // 0x427440
  Container_ctor() /* 0x391490 */; // 0x427444
  AllocationStub_Radius() /* 0x352b04 */; // 0x427448
  d0 = 8.00000000 /* bits */; // 0x42744c
  local_m28 = x0; // 0x427450
  memSet(x0, 7, d0); // 0x427454
  memSet(x0, 0xf, d0); // 0x427458
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x42745c
  x0 = local_m28; // 0x427464
  x1 = x0; // 0x427460
  local_m30 = x1; // 0x427468
  memSet(x1, 7, w0); // 0x42746c
  memSet(x1, 0xb, w0); // 0x427470
  memSet(x1, 0xf, w0); // 0x427474
  memSet(x1, 0x13, w0); // 0x427478
  AllocationStub_Color() /* 0x31d844 */; // 0x42747c
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x427484
  x1 = x0; // 0x427480
  local_m28 = x1; // 0x427488
  memSet(x1, 0x27, w0); // 0x42748c
  d0 = 4596373779694328218; // 0x427490
  memSet(x1, 7, d0); // 0x427494
  d0 = 4606864517649850079; // 0x42749c
  x17 = PP + 0xe000; // 0x427498
  memSet(x1, 0xf, d0); // 0x4274a0
  memSet(x1, 0x17, d0); // 0x4274a4
  memSet(x1, 0x1f, d0); // 0x4274a8
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x4274ac
  x0 = local_m28; // 0x4274b4
  x3 = x0; // 0x4274b0
  local_m38 = x3; // 0x4274b8
  memSet(x3, 7, w0); // 0x4274bc
  x0 = local_m30; // 0x4274c0
  memSet(x3, 0x13, w0); // 0x4274c4
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x4274cc
  memSet(x3, 0x23, w0); // 0x4274d0
  BARRIER = 8; // 0x4274e0
  w1 = mem((local_m8), 0x1b); /* _PartyPasswordState._password (off 0x1c) */  // 0x4274d8
  x0 = local_m8; // 0x4274d4
  x1 = ((mem((local_m8), 0x1b)) & 0xffffffff) + (HEAP << 32); /* _PartyPasswordState._password (off 0x1c) */  // 0x4274dc
  local_0 = BARRIER; // 0x4274e4
  x2 = 3; // 0x4274e8
  x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x4274ec
  StringBase_substring() /* 0x281608 */; // 0x4274f0
  local_m8 = x0; // 0x4274f4
  TextStyles_pageBigTitle() /* 0x427664 */; // 0x4274f8
  local_m28 = x0; // 0x4274fc
  AllocationStub_Text() /* 0x393bf8 */; // 0x427500
  x0 = local_m8; // 0x427508
  x1 = x0; // 0x427504
  local_m30 = x1; // 0x42750c
  memSet(x1, 0xb, w0); // 0x427510
  x0 = local_m28; // 0x427514
  memSet(x1, 0x13, w0); // 0x427518
  AllocationStub_Container() /* 0x391a04 */; // 0x42751c
  local_m8 = x0; // 0x427520
  BARRIER = mem((PP + 0x11000), 0x3d8) /* Double */; // 0x427528
  LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x427530
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x427534
  BARRIER = mem(PP, 0x5458) /* Double */; // 0x427538
  LR = local_m38; // 0x42753c
  // frame: LR, BARRIER, mem(SP, 8) // 0x427540
  BARRIER = local_m30; // 0x427544
  local_0 = BARRIER; // 0x427548
  x1 = x0; // 0x42754c
  x4 = mem((PP + 0x11000), 0x3f8) /* ImmutableArray */; // 0x427554
  Container_ctor() /* 0x391490 */; // 0x427558
  x1 = NULL; // 0x42755c
  x2 = 8; // 0x427560
  sub_0x61f920(); // 0x427564
  x0 = local_m10; // 0x42756c
  x2 = x0; // 0x427568
  local_m28 = x2; // 0x427570
  memSet(x2, 0xf, w0); // 0x427574
  x0 = local_m18; // 0x427578
  memSet(x2, 0x13, w0); // 0x42757c
  x0 = local_m20; // 0x427580
  memSet(x2, 0x17, w0); // 0x427584
  x0 = local_m8; // 0x427588
  memSet(x2, 0x1b, w0); // 0x42758c
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x427590
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x427594
  x0 = local_m28; // 0x42759c
  x1 = x0; // 0x427598
  local_m8 = x1; // 0x4275a0
  memSet(x1, 0xf, w0); // 0x4275a4
  x0 = 8; // 0x4275a8
  memSet(x1, 0xb, w0); // 0x4275ac
  AllocationStub_Row() /* 0x3a1414 */; // 0x4275b0
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x4275b8
  x1 = x0; // 0x4275b4
  local_m10 = x1; // 0x4275bc
  memSet(x1, 0xf, w0); // 0x4275c0
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x4275c8
  memSet(x1, 0x13, w0); // 0x4275cc
  x0 = mem((PP + 0xe000), 0xb08) /* Obj!MainAxisSize@12270  */; // 0x4275d4
  memSet(x1, 0x17, w0); // 0x4275d8
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x4275e0
  memSet(x1, 0x1b, w0); // 0x4275e4
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x4275ec
  memSet(x1, 0x23, w0); // 0x4275f0
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x4275f8
  memSet(x1, 0x2b, w0); // 0x4275fc
  memSet(x1, 0x2f, xzr); // 0x427600
  x0 = local_m8; // 0x427604
  memSet(x1, 0xb, w0); // 0x427608
  AllocationStub_Container() /* 0x391a04 */; // 0x42760c
  local_m8 = x0; // 0x427610
  BARRIER = mem((PP + 0x11000), 0x3d8) /* Double */; // 0x427618
  LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x427620
  // frame: LR, BARRIER, mem(SP, 8) // 0x427624
  BARRIER = local_m10; // 0x427628
  local_0 = BARRIER; // 0x42762c
  x1 = x0; // 0x427630
  x4 = mem((PP + 0x11000), 0x400) /* ImmutableArray */; // 0x427638
  Container_ctor() /* 0x391490 */; // 0x42763c
  SP = FP; // 0x427644
  x0 = local_m8; // 0x427640
  // frame: FP, LR, mem(SP), 0x10 // 0x427648
  return;
}

// PartyPasswordState_onPageShow
// raw disassembly:
//  0x4a9f8c: stp FP, LR, [SP, #-0x10]!
//  0x4a9f90: mov FP, SP
//  0x4a9f94: ldr BARRIER, [THR, #0x38]
//  0x4a9f98: cmp SP, BARRIER
//  0x4a9f9c: b.ls #0x4a9fc4
//  0x4a9fa0: bl #0x4aa6c4
//  0x4a9fa4: add x1, PP, #0x17, lsl #12
//  0x4a9fa8: ldr x1, [x1, #0xc18]
//  0x4a9fac: ldr x4, [PP, #0x4c0]
//  0x4a9fb0: bl #0x4a9e38
//  0x4a9fb4: mov x0, NULL
//  0x4a9fb8: mov SP, FP
//  0x4a9fbc: ldp FP, LR, [SP], #0x10
//  0x4a9fc0: ret 
//  0x4a9fc4: bl #0x61fa28
//  0x4a9fc8: b #0x4a9fa0
//
dynamic PartyPasswordState_onPageShow() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4a9f8c
  BARRIER = mem(THR, 0x38); // 0x4a9f94
  // frame: FP = SP // 0x4a9f90
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4a9fc4
  }
  SoulState_onPageShow() /* 0x4aa6c4 */; // 0x4a9fa0
  x1 = "VirtualParty_InvitePremiumRoomPage" /* pp+0x17c18 */; // 0x4a9fa8
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4a9fac
  EventTrack_eventPv() /* 0x4a9e38 */; // 0x4a9fb0
  SP = FP; // 0x4a9fb8
  x0 = NULL; // 0x4a9fb4
  // frame: FP, LR, mem(SP), 0x10 // 0x4a9fbc
  return;
}

// PartyPasswordState_ctor
// raw disassembly:
//  0x4c44dc: stp FP, LR, [SP, #-0x10]!
//  0x4c44e0: mov FP, SP
//  0x4c44e4: sub SP, SP, #0x10
//  0x4c44e8: ldr x0, [PP, #0x40]
//  0x4c44ec: stur x1, [FP, #-8]
//  0x4c44f0: ldr BARRIER, [THR, #0x38]
//  0x4c44f4: cmp SP, BARRIER
//  0x4c44f8: b.ls #0x4c45a4
//  0x4c44fc: stur w0, [x1, #0x1b]
//  0x4c4500: stur w0, [x1, #0x1f]
//  0x4c4504: bl #0x4c45ac
//  0x4c4508: mov x1, x0
//  0x4c450c: mov x0, #-1
//  0x4c4510: stur x1, [FP, #-0x10]
//  0x4c4514: stur x0, [x1, #0x23]
//  0x4c4518: stur xzr, [x1, #7]
//  0x4c451c: stur xzr, [x1, #0x13]
//  0x4c4520: stur xzr, [x1, #0x1b]
//  0x4c4524: ldr x0, [THR, #0x68]
//  0x4c4528: ldr x0, [x0, #0xb90]
//  0x4c452c: ldr BARRIER, [PP, #0x40]
//  0x4c4530: cmp w0, w16
//  0x4c4534: b.ne #0x4c4540
//  0x4c4538: ldr x2, [PP, #0x3608]
//  0x4c453c: bl #0x61d99c
//  0x4c4540: mov x1, x0
//  0x4c4544: ldur x0, [FP, #-0x10]
//  0x4c4548: stur w1, [x0, #0xf]
//  0x4c454c: ldur x2, [FP, #-8]
//  0x4c4550: stur w0, [x2, #0x13]
//  0x4c4554: ldurb w16, [x2, #-1]
//  0x4c4558: ldurb w17, [x0, #-1]
//  0x4c455c: and BARRIER, x17, BARRIER, lsr #2
//  0x4c4560: tst BARRIER, HEAP, lsr #32
//  0x4c4564: b.eq #0x4c456c
//  0x4c4568: bl #0x61e06c
//  0x4c456c: ldr x1, [PP, #0x5558]
//  0x4c4570: bl #0x303988
//  0x4c4574: ldur x1, [FP, #-8]
//  0x4c4578: stur w0, [x1, #0x17]
//  0x4c457c: ldurb w16, [x1, #-1]
//  0x4c4580: ldurb w17, [x0, #-1]
//  0x4c4584: and BARRIER, x17, BARRIER, lsr #2
//  0x4c4588: tst BARRIER, HEAP, lsr #32
//  0x4c458c: b.eq #0x4c4594
//  0x4c4590: bl #0x61e04c
//  0x4c4594: mov x0, NULL
//  0x4c4598: mov SP, FP
//  0x4c459c: ldp FP, LR, [SP], #0x10
//  0x4c45a0: ret 
//  0x4c45a4: bl #0x61fa28
//  0x4c45a8: b #0x4c44fc
//
dynamic PartyPasswordState_ctor() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c44dc
  // frame: FP = SP // 0x4c44e0
  // frame: SP = SP - 0x10 // 0x4c44e4
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4c44e8
  local_m8 = x1; // 0x4c44ec
  BARRIER = mem(THR, 0x38); // 0x4c44f0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c45a4
  }
  memSet(x1, 0x1b, w0); // 0x4c44fc
  memSet(x1, 0x1f, w0); // 0x4c4500
  AllocationStub_PartyPasswordNotifier() /* 0x4c45ac */; // 0x4c4504
  x0 = -1; // 0x4c450c
  x1 = x0; // 0x4c4508
  local_m10 = x1; // 0x4c4510
  memSet(x1, 0x23, x0); // 0x4c4514
  memSet(x1, 7, xzr); // 0x4c4518
  memSet(x1, 0x13, xzr); // 0x4c451c
  memSet(x1, 0x1b, xzr); // 0x4c4520
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4c452c
  x0 = mem((mem(THR, 0x68)), 0xb90); // 0x4c4528
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3608) /* Field */; // 0x4c4538
    sub_0x61d99c(); // 0x4c453c
  }
  x0 = local_m10; // 0x4c4544
  x1 = x0; // 0x4c4540
  memSet(x0, 0xf, w1); // 0x4c4548
  x2 = local_m8; // 0x4c454c
  memSet(x2, 0x13, w0); // 0x4c4550
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c455c
  w16 = mem(x2, -1); // 0x4c4554
  w17 = mem(x0, -1); // 0x4c4558
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x4c4554
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c4558
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x4c4568
  }
  x1 = mem(PP, 0x5558) /* TypeArguments */; // 0x4c456c
  AllocationStub_LabeledGlobalKey() /* 0x303988 */; // 0x4c4570
  x1 = local_m8; // 0x4c4574
  memSet(x1, 0x17, w0); // 0x4c4578
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c4584
  w16 = mem(x1, -1); // 0x4c457c
  w17 = mem(x0, -1); // 0x4c4580
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c457c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c4580
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c4590
  }
  SP = FP; // 0x4c4598
  x0 = NULL; // 0x4c4594
  // frame: FP, LR, mem(SP), 0x10 // 0x4c459c
  return;
}

// PartyPasswordState_initState
// raw disassembly:
//  0x4d5778: stp FP, LR, [SP, #-0x10]!
//  0x4d577c: mov FP, SP
//  0x4d5780: sub SP, SP, #0x20
//  0x4d5784: mov x3, x1
//  0x4d5788: stur x1, [FP, #-8]
//  0x4d578c: ldr BARRIER, [THR, #0x38]
//  0x4d5790: cmp SP, BARRIER
//  0x4d5794: b.ls #0x4d5968
//  0x4d5798: ldur w0, [x3, #0xb]
//  0x4d579c: add x0, x0, HEAP, lsl #32
//  0x4d57a0: cmp w0, w22
//  0x4d57a4: b.eq #0x4d5970
//  0x4d57a8: ldur w1, [x0, #0xb]
//  0x4d57ac: add x1, x1, HEAP, lsl #32
//  0x4d57b0: cmp w1, w22
//  0x4d57b4: b.ne #0x4d57c0
//  0x4d57b8: mov x0, NULL
//  0x4d57bc: b #0x4d57dc
//  0x4d57c0: ldur x0, [x1, #-1]
//  0x4d57c4: ubfx x0, x0, #0xc, #0x14
//  0x4d57c8: add x2, PP, #0x11, lsl #12
//  0x4d57cc: ldr x2, [x2, #0x418]
//  0x4d57d0: sub LR, x0, #1, lsl #12
//  0x4d57d4: ldr LR, [x21, LR, lsl #3]
//  0x4d57d8: blr LR
//  0x4d57dc: cmp w0, w22
//  0x4d57e0: b.ne #0x4d57ec
//  0x4d57e4: ldr x4, [PP, #0x148]
//  0x4d57e8: b #0x4d57f0
//  0x4d57ec: mov x4, x0
//  0x4d57f0: ldur x3, [FP, #-8]
//  0x4d57f4: mov x0, x4
//  0x4d57f8: stur x4, [FP, #-0x10]
//  0x4d57fc: mov x2, NULL
//  0x4d5800: mov x1, NULL
//  0x4d5804: mov x4, #0x3c
//  0x4d5808: tbz w0, #0, #0x4d5814
//  0x4d580c: ldur x4, [x0, #-1]
//  0x4d5810: ubfx x4, x4, #0xc, #0x14
//  0x4d5814: sub x4, x4, #0x5e
//  0x4d5818: cmp x4, #1
//  0x4d581c: b.ls #0x4d5830
//  0x4d5820: ldr x8, [PP, #0x2f8]
//  0x4d5824: add x3, PP, #0x11, lsl #12
//  0x4d5828: ldr x3, [x3, #0x420]
//  0x4d582c: bl #0x62a0c0
//  0x4d5830: ldur x0, [FP, #-0x10]
//  0x4d5834: ldur x3, [FP, #-8]
//  0x4d5838: stur w0, [x3, #0x1b]
//  0x4d583c: ldurb w16, [x3, #-1]
//  0x4d5840: ldurb w17, [x0, #-1]
//  0x4d5844: and BARRIER, x17, BARRIER, lsr #2
//  0x4d5848: tst BARRIER, HEAP, lsr #32
//  0x4d584c: b.eq #0x4d5854
//  0x4d5850: bl #0x61e08c
//  0x4d5854: ldur w0, [x3, #0xb]
//  0x4d5858: add x0, x0, HEAP, lsl #32
//  0x4d585c: cmp w0, w22
//  0x4d5860: b.eq #0x4d5974
//  0x4d5864: ldur w1, [x0, #0xb]
//  0x4d5868: add x1, x1, HEAP, lsl #32
//  0x4d586c: cmp w1, w22
//  0x4d5870: b.ne #0x4d587c
//  0x4d5874: mov x0, NULL
//  0x4d5878: b #0x4d5898
//  0x4d587c: ldur x0, [x1, #-1]
//  0x4d5880: ubfx x0, x0, #0xc, #0x14
//  0x4d5884: add x2, PP, #0x10, lsl #12
//  0x4d5888: ldr x2, [x2, #0xd48]
//  0x4d588c: sub LR, x0, #1, lsl #12
//  0x4d5890: ldr LR, [x21, LR, lsl #3]
//  0x4d5894: blr LR
//  0x4d5898: cmp w0, w22
//  0x4d589c: b.ne #0x4d58a8
//  0x4d58a0: ldr x4, [PP, #0x148]
//  0x4d58a4: b #0x4d58ac
//  0x4d58a8: mov x4, x0
//  0x4d58ac: ldur x3, [FP, #-8]
//  0x4d58b0: mov x0, x4
//  0x4d58b4: stur x4, [FP, #-0x10]
//  0x4d58b8: mov x2, NULL
//  0x4d58bc: mov x1, NULL
//  0x4d58c0: mov x4, #0x3c
//  0x4d58c4: tbz w0, #0, #0x4d58d0
//  0x4d58c8: ldur x4, [x0, #-1]
//  0x4d58cc: ubfx x4, x4, #0xc, #0x14
//  0x4d58d0: sub x4, x4, #0x5e
//  0x4d58d4: cmp x4, #1
//  0x4d58d8: b.ls #0x4d58ec
//  0x4d58dc: ldr x8, [PP, #0x2f8]
//  0x4d58e0: add x3, PP, #0x11, lsl #12
//  0x4d58e4: ldr x3, [x3, #0x430]
//  0x4d58e8: bl #0x62a0c0
//  0x4d58ec: ldur x0, [FP, #-0x10]
//  0x4d58f0: ldur x1, [FP, #-8]
//  0x4d58f4: stur w0, [x1, #0x1f]
//  0x4d58f8: ldurb w16, [x1, #-1]
//  0x4d58fc: ldurb w17, [x0, #-1]
//  0x4d5900: and BARRIER, x17, BARRIER, lsr #2
//  0x4d5904: tst BARRIER, HEAP, lsr #32
//  0x4d5908: b.eq #0x4d5910
//  0x4d590c: bl #0x61e04c
//  0x4d5910: ldur w0, [x1, #0x1b]
//  0x4d5914: add x0, x0, HEAP, lsl #32
//  0x4d5918: ldur w2, [x0, #7]
//  0x4d591c: sbfx x3, x2, #1, #0x1f
//  0x4d5920: cmp x3, #4
//  0x4d5924: b.ge #0x4d5958
//  0x4d5928: add BARRIER, PP, #0x11, lsl #12
//  0x4d592c: ldr BARRIER, [BARRIER, #0x440]
//  0x4d5930: stp BARRIER, x0, [SP]
//  0x4d5934: bl #0x281718
//  0x4d5938: ldur x1, [FP, #-8]
//  0x4d593c: stur w0, [x1, #0x1b]
//  0x4d5940: ldurb w16, [x1, #-1]
//  0x4d5944: ldurb w17, [x0, #-1]
//  0x4d5948: and BARRIER, x17, BARRIER, lsr #2
//  0x4d594c: tst BARRIER, HEAP, lsr #32
//  0x4d5950: b.eq #0x4d5958
//  0x4d5954: bl #0x61e04c
//  0x4d5958: mov x0, NULL
//  0x4d595c: mov SP, FP
//  0x4d5960: ldp FP, LR, [SP], #0x10
//  0x4d5964: ret 
//  0x4d5968: bl #0x61fa28
//  0x4d596c: b #0x4d5798
//  0x4d5970: bl #0x61ffd0
//  0x4d5974: bl #0x61ffd0
//
dynamic PartyPasswordState_initState() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d5778
  // frame: FP = SP // 0x4d577c
  // frame: SP = SP - 0x20 // 0x4d5780
  x3 = x1; // 0x4d5784
  local_m8 = x1; // 0x4d5788
  BARRIER = mem(THR, 0x38); // 0x4d578c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d5968
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d579c
  if (w0 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d5970
  } else {
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d57ac
    if (w1 != w22) {
      LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d57d4
      x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4d57c4
      x2 = "password" /* pp+0x11418 */; // 0x4d57cc
      callIndirect(LR); // 0x4d57d8
    } else {
      x0 = NULL; // 0x4d57b8
    }
    if (w0 != w22) {
      x4 = x0; // 0x4d57ec
    } else {
      x4 = "" /* pp+0x148 */; // 0x4d57e4
    }
    x0 = x4; // 0x4d57f4
    x3 = local_m8; // 0x4d57f0
    local_m10 = x4; // 0x4d57f8
    x1 = NULL; // 0x4d5800
    x2 = NULL; // 0x4d57fc
    x4 = 60; // 0x4d5804
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d5810
    }
    x4 = x4 - 0x5e; // 0x4d5814
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x11000), 0x420) /* Obj!? */; // 0x4d5828
      x8 = mem(PP, 0x2f8) /* Type */; // 0x4d5820
      sub_0x62a0c0(); // 0x4d582c
    }
    x0 = local_m10; // 0x4d5830
    x3 = local_m8; // 0x4d5834
    memSet(x3, 0x1b, w0); // 0x4d5838
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d5844
    w16 = mem(x3, -1); // 0x4d583c
    w17 = mem(x0, -1); // 0x4d5840
    x16 = (mem(x3, -1)) & 0xffffffff; // 0x4d583c
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d5840
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d5850
    }
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d5858
    if (w0 == w22) {
      // duplicated branch body (target 0x4d5974 terminates; the same code is emitted below)
      NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d5974
    }
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d5868
    if (w1 != w22) {
      LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d5890
      x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x4d5880
      x2 = "roomId" /* pp+0x10d48 */; // 0x4d5888
      callIndirect(LR); // 0x4d5894
    } else {
      x0 = NULL; // 0x4d5874
    }
    if (w0 != w22) {
      x4 = x0; // 0x4d58a8
    } else {
      x4 = "" /* pp+0x148 */; // 0x4d58a0
    }
    x0 = x4; // 0x4d58b0
    x3 = local_m8; // 0x4d58ac
    local_m10 = x4; // 0x4d58b4
    x1 = NULL; // 0x4d58bc
    x2 = NULL; // 0x4d58b8
    x4 = 60; // 0x4d58c0
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d58cc
    }
    x4 = x4 - 0x5e; // 0x4d58d0
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x11000), 0x430) /* Obj!? */; // 0x4d58e4
      x8 = mem(PP, 0x2f8) /* Type */; // 0x4d58dc
      sub_0x62a0c0(); // 0x4d58e8
    }
    x0 = local_m10; // 0x4d58ec
    x1 = local_m8; // 0x4d58f0
    memSet(x1, 0x1f, w0); // 0x4d58f4
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d5900
    w16 = mem(x1, -1); // 0x4d58f8
    w17 = mem(x0, -1); // 0x4d58fc
    x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d58f8
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d58fc
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d590c
    }
    w2 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 7); // 0x4d5918
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d5914
    x2 = (mem(((w0 & 0xffffffff) + (HEAP << 32)), 7)) & 0xffffffff; // 0x4d5918
    x3 = (((mem(((w0 & 0xffffffff) + (HEAP << 32)), 7)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x4d591c
    if (x3 >= 4) {
    } else {
      BARRIER = "    " /* pp+0x11440 */; // 0x4d592c
      // frame: BARRIER, x0, mem(SP) // 0x4d5930
      StringBase_op_add() /* 0x281718 */; // 0x4d5934
      x1 = local_m8; // 0x4d5938
      memSet(x1, 0x1b, w0); // 0x4d593c
      BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d5948
      w16 = mem(x1, -1); // 0x4d5940
      w17 = mem(x0, -1); // 0x4d5944
      x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d5940
      x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d5944
      if ((BARRIER & (HEAP >> 32)) == 0) {
      } else {
        WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d5954
      }
    }
    SP = FP; // 0x4d595c
    x0 = NULL; // 0x4d5958
    // frame: FP, LR, mem(SP), 0x10 // 0x4d5960
    return;
  }
  NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x4d5974
}

// PartyPasswordPage_createState
// raw disassembly:
//  0x4c4494: stp FP, LR, [SP, #-0x10]!
//  0x4c4498: mov FP, SP
//  0x4c449c: sub SP, SP, #8
//  0x4c44a0: ldr BARRIER, [THR, #0x38]
//  0x4c44a4: cmp SP, BARRIER
//  0x4c44a8: b.ls #0x4c44d4
//  0x4c44ac: add x1, PP, #0xb, lsl #12
//  0x4c44b0: ldr x1, [x1, #0x7c8]
//  0x4c44b4: bl #0x4c45b8
//  0x4c44b8: mov x1, x0
//  0x4c44bc: stur x0, [FP, #-8]
//  0x4c44c0: bl #0x4c44dc
//  0x4c44c4: ldur x0, [FP, #-8]
//  0x4c44c8: mov SP, FP
//  0x4c44cc: ldp FP, LR, [SP], #0x10
//  0x4c44d0: ret 
//  0x4c44d4: bl #0x61fa28
//  0x4c44d8: b #0x4c44ac
//
dynamic PartyPasswordPage_createState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c4494
  BARRIER = mem(THR, 0x38); // 0x4c44a0
  // frame: FP = SP // 0x4c4498
  // frame: SP = SP - 8 // 0x4c449c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c44d4
  }
  x1 = mem((PP + 0xb000), 0x7c8) /* TypeArguments */; // 0x4c44b0
  AllocationStub__PartyPasswordState() /* 0x4c45b8 */; // 0x4c44b4
  x1 = x0; // 0x4c44b8
  local_m8 = x0; // 0x4c44bc
  PartyPasswordState_ctor() /* 0x4c44dc */; // 0x4c44c0
  SP = FP; // 0x4c44c8
  x0 = local_m8; // 0x4c44c4
  // frame: FP, LR, mem(SP), 0x10 // 0x4c44cc
  return;
}
