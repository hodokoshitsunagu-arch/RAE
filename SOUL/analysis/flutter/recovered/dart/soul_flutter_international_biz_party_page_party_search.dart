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

dynamic AllocationStub_Align, AllocationStub_BorderRadius, AllocationStub_BoxConstraints;
dynamic AllocationStub_BoxDecoration, AllocationStub_ChangeNotifierProvider;
dynamic AllocationStub_ClampingScrollPhysics, AllocationStub_Column;
dynamic AllocationStub_ConstrainedBox, AllocationStub_Consumer, AllocationStub_Container;
dynamic AllocationStub_CustomFooter, AllocationStub_Expanded, AllocationStub_FocusNode;
dynamic AllocationStub_GridView, AllocationStub_Listener, AllocationStub_Padding;
dynamic AllocationStub_PartySearchNotifier, AllocationStub_PetalLoading;
dynamic AllocationStub_Positioned, AllocationStub_Radius, AllocationStub_RefreshController;
dynamic AllocationStub_RoundImage, AllocationStub_Row, AllocationStub_SOAssetImage;
dynamic AllocationStub_SearchBar2, AllocationStub_SingleChildScrollView;
dynamic AllocationStub_SizedBox, AllocationStub_SliverGridDelegateWithFixedCrossAxisCount;
dynamic AllocationStub_SmartRefresher, AllocationStub_SoulAvatarImage;
dynamic AllocationStub_SoulPageScaffold, AllocationStub_Stack, AllocationStub_Text;
dynamic AllocationStub_Wrap, AllocationStub__Closure, AllocationStub__GrowableList;
dynamic AllocationStub__PartyRoomItem, AllocationStub__PartySearchPageState, BARRIER;
dynamic Container_ctor, FP, FocusNode_ctor, FocusNode_unfocus, GestureDetector_ctor;
dynamic GridView_ctor_builder, HEAP, InheritedProvider_ctor, LR;
dynamic LateInitializationErrorSharedWithoutFpuRegsStub_0x620258, NULL, PP;
dynamic PartySearchNotifier_ctor, PartySearchNotifier_requestRoomList;
dynamic PartySearchNotifier_searchRoom, RangeErrorSharedWithoutFpuRegsStub_0x61fe70;
dynamic RefreshController_ctor, RefreshController_dispose, RefreshController_loadComplete;
dynamic RefreshController_loadFailed, RefreshController_loadNoData;
dynamic RefreshNotifier_value_assign, RouterNative_getInstance, RouterNative_route;
dynamic SOColors_get_black20, SOColors_get_s_03, SOColors_get_s_05, SOColors_get_s_06, SP;
dynamic SoulNavigator_navigate, SoulNavigator_withString, SoulState_dispose;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolateSingle, THR;
dynamic TextStyles_commonContent, TextStyles_firstLevelContent, TextStyles_firstLevelTitle;
dynamic TextStyles_smallContent, TextStyles_smallerContent, WriteBarrierStub_x1, d0, getString;
dynamic local_0, local_10, local_18, local_20, local_28, local_m10, local_m18, local_m20;
dynamic local_m28, local_m30, local_m38, local_m40, local_m48, local_m50, local_m58, local_m8;
dynamic sub_0x3a1d94, sub_0x61e890, sub_0x61f920, w0, w1, w16, w17, w2, w22, w3, w4, w5, w6;
dynamic w7, x0, x1, x16, x17, x2, x3, x4, x5, x6, x7, x9, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$party$page_party_search
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PartyRoomItem_build
// raw disassembly:
//  0x3b3f3c: stp FP, LR, [SP, #-0x10]!
//  0x3b3f40: mov FP, SP
//  0x3b3f44: sub SP, SP, #0x78
//  0x3b3f48: stur x1, [FP, #-8]
//  0x3b3f4c: ldr BARRIER, [THR, #0x38]
//  0x3b3f50: cmp SP, BARRIER
//  0x3b3f54: b.ls #0x3b4734
//  0x3b3f58: mov x1, #1
//  0x3b3f5c: bl #0x61e890
//  0x3b3f60: mov x1, x0
//  0x3b3f64: ldur x0, [FP, #-8]
//  0x3b3f68: stur x1, [FP, #-0x18]
//  0x3b3f6c: stur w0, [x1, #0xf]
//  0x3b3f70: ldur w2, [x0, #0xb]
//  0x3b3f74: add x2, x2, HEAP, lsl #32
//  0x3b3f78: stur x2, [FP, #-0x10]
//  0x3b3f7c: ldur w0, [x2, #0x1b]
//  0x3b3f80: add x0, x0, HEAP, lsl #32
//  0x3b3f84: ldr BARRIER, [PP, #0x40]
//  0x3b3f88: cmp w0, w16
//  0x3b3f8c: b.eq #0x3b473c
//  0x3b3f90: ldur w3, [x0, #7]
//  0x3b3f94: add x3, x3, HEAP, lsl #32
//  0x3b3f98: ldr BARRIER, [PP, #0x40]
//  0x3b3f9c: cmp w3, w16
//  0x3b3fa0: b.eq #0x3b4748
//  0x3b3fa4: stur x3, [FP, #-8]
//  0x3b3fa8: bl #0x3b48d8
//  0x3b3fac: mov x2, x0
//  0x3b3fb0: ldur x0, [FP, #-8]
//  0x3b3fb4: stur x2, [FP, #-0x20]
//  0x3b3fb8: stur w0, [x2, #0x13]
//  0x3b3fbc: fmov d0, #16.00000000
//  0x3b3fc0: stur d0, [x2, #0xb]
//  0x3b3fc4: add x1, PP, #0xf, lsl #12
//  0x3b3fc8: ldr x1, [x1, #0x5d8]
//  0x3b3fcc: bl #0x399e40
//  0x3b3fd0: mov x1, x0
//  0x3b3fd4: ldr x0, [PP, #0x52c8]
//  0x3b3fd8: stur x1, [FP, #-0x28]
//  0x3b3fdc: stur w0, [x1, #0x13]
//  0x3b3fe0: stur w0, [x1, #0x17]
//  0x3b3fe4: stur w0, [x1, #0x1b]
//  0x3b3fe8: stur w0, [x1, #0x1f]
//  0x3b3fec: ldur x0, [FP, #-0x20]
//  0x3b3ff0: stur w0, [x1, #0xb]
//  0x3b3ff4: ldur x0, [FP, #-0x10]
//  0x3b3ff8: ldur w2, [x0, #0x17]
//  0x3b3ffc: add x2, x2, HEAP, lsl #32
//  0x3b4000: ldr BARRIER, [PP, #0x40]
//  0x3b4004: cmp w2, w16
//  0x3b4008: b.eq #0x3b4754
//  0x3b400c: ldur w3, [x2, #7]
//  0x3b4010: add x3, x3, HEAP, lsl #32
//  0x3b4014: ldr BARRIER, [PP, #0x40]
//  0x3b4018: cmp w3, w16
//  0x3b401c: b.eq #0x3b4760
//  0x3b4020: stur x3, [FP, #-8]
//  0x3b4024: bl #0x3b48a4
//  0x3b4028: stur x0, [FP, #-0x20]
//  0x3b402c: bl #0x393bf8
//  0x3b4030: mov x1, x0
//  0x3b4034: ldur x0, [FP, #-8]
//  0x3b4038: stur x1, [FP, #-0x30]
//  0x3b403c: stur w0, [x1, #0xb]
//  0x3b4040: ldur x0, [FP, #-0x20]
//  0x3b4044: stur w0, [x1, #0x13]
//  0x3b4048: add x0, PP, #0xf, lsl #12
//  0x3b404c: ldr x0, [x0, #0x230]
//  0x3b4050: stur w0, [x1, #0x2b]
//  0x3b4054: mov x2, #2
//  0x3b4058: stur w2, [x1, #0x37]
//  0x3b405c: ldur x3, [FP, #-0x10]
//  0x3b4060: ldur w4, [x3, #0xb]
//  0x3b4064: add x4, x4, HEAP, lsl #32
//  0x3b4068: ldr BARRIER, [PP, #0x40]
//  0x3b406c: cmp w4, w16
//  0x3b4070: b.eq #0x3b476c
//  0x3b4074: stur x4, [FP, #-8]
//  0x3b4078: bl #0x3b4864
//  0x3b407c: stur x0, [FP, #-0x20]
//  0x3b4080: bl #0x393bf8
//  0x3b4084: mov x1, x0
//  0x3b4088: ldur x0, [FP, #-8]
//  0x3b408c: stur x1, [FP, #-0x38]
//  0x3b4090: stur w0, [x1, #0xb]
//  0x3b4094: ldur x0, [FP, #-0x20]
//  0x3b4098: stur w0, [x1, #0x13]
//  0x3b409c: add x0, NULL, #0x20
//  0x3b40a0: stur w0, [x1, #0x27]
//  0x3b40a4: add x2, PP, #0xf, lsl #12
//  0x3b40a8: ldr x2, [x2, #0x230]
//  0x3b40ac: stur w2, [x1, #0x2b]
//  0x3b40b0: mov x3, #8
//  0x3b40b4: stur w3, [x1, #0x37]
//  0x3b40b8: bl #0x391c0c
//  0x3b40bc: mov x2, x0
//  0x3b40c0: add x0, PP, #0x12, lsl #12
//  0x3b40c4: ldr x0, [x0, #0x138]
//  0x3b40c8: stur x2, [FP, #-8]
//  0x3b40cc: stur w0, [x2, #0xf]
//  0x3b40d0: ldur x0, [FP, #-0x38]
//  0x3b40d4: stur w0, [x2, #0xb]
//  0x3b40d8: add x1, PP, #0xe, lsl #12
//  0x3b40dc: ldr x1, [x1, #0xad0]
//  0x3b40e0: bl #0x39fb14
//  0x3b40e4: mov x1, x0
//  0x3b40e8: mov x0, #1
//  0x3b40ec: stur x1, [FP, #-0x20]
//  0x3b40f0: stur x0, [x1, #0x13]
//  0x3b40f4: add x2, PP, #0xe, lsl #12
//  0x3b40f8: ldr x2, [x2, #0xad8]
//  0x3b40fc: stur w2, [x1, #0x1b]
//  0x3b4100: ldur x3, [FP, #-8]
//  0x3b4104: stur w3, [x1, #0xb]
//  0x3b4108: bl #0x3b4830
//  0x3b410c: stur x0, [FP, #-8]
//  0x3b4110: bl #0x352b04
//  0x3b4114: fmov d0, #12.00000000
//  0x3b4118: stur x0, [FP, #-0x38]
//  0x3b411c: stur d0, [x0, #7]
//  0x3b4120: stur d0, [x0, #0xf]
//  0x3b4124: bl #0x392f28
//  0x3b4128: mov x1, x0
//  0x3b412c: ldur x0, [FP, #-0x38]
//  0x3b4130: stur x1, [FP, #-0x40]
//  0x3b4134: stur w0, [x1, #7]
//  0x3b4138: stur w0, [x1, #0xb]
//  0x3b413c: stur w0, [x1, #0xf]
//  0x3b4140: stur w0, [x1, #0x13]
//  0x3b4144: bl #0x391dd8
//  0x3b4148: mov x1, x0
//  0x3b414c: ldur x0, [FP, #-8]
//  0x3b4150: stur x1, [FP, #-0x38]
//  0x3b4154: stur w0, [x1, #7]
//  0x3b4158: ldur x0, [FP, #-0x40]
//  0x3b415c: stur w0, [x1, #0x13]
//  0x3b4160: add x0, PP, #0xe, lsl #12
//  0x3b4164: ldr x0, [x0, #0xb78]
//  0x3b4168: stur w0, [x1, #0x23]
//  0x3b416c: bl #0x3a142c
//  0x3b4170: mov x1, x0
//  0x3b4174: add x0, PP, #0x12, lsl #12
//  0x3b4178: ldr x0, [x0, #0x140]
//  0x3b417c: stur x1, [FP, #-8]
//  0x3b4180: stur w0, [x1, #0xb]
//  0x3b4184: add x0, PP, #0xf, lsl #12
//  0x3b4188: ldr x0, [x0, #0x170]
//  0x3b418c: stur w0, [x1, #0xf]
//  0x3b4190: add x0, PP, #0xf, lsl #12
//  0x3b4194: ldr x0, [x0, #0xb80]
//  0x3b4198: stur w0, [x1, #0x13]
//  0x3b419c: stur w0, [x1, #0x17]
//  0x3b41a0: bl #0x2b8e80
//  0x3b41a4: stur x0, [FP, #-0x40]
//  0x3b41a8: stur xzr, [x0, #7]
//  0x3b41ac: ldr d0, [PP, #0xb90]
//  0x3b41b0: stur d0, [x0, #0xf]
//  0x3b41b4: stur xzr, [x0, #0x17]
//  0x3b41b8: stur d0, [x0, #0x1f]
//  0x3b41bc: ldur x1, [FP, #-0x10]
//  0x3b41c0: ldur w2, [x1, #0xf]
//  0x3b41c4: add x2, x2, HEAP, lsl #32
//  0x3b41c8: ldr BARRIER, [PP, #0x40]
//  0x3b41cc: cmp w2, w16
//  0x3b41d0: b.eq #0x3b4778
//  0x3b41d4: str x2, [SP]
//  0x3b41d8: bl #0x2ac0a0
//  0x3b41dc: stur x0, [FP, #-0x48]
//  0x3b41e0: bl #0x3b47fc
//  0x3b41e4: stur x0, [FP, #-0x50]
//  0x3b41e8: bl #0x393bf8
//  0x3b41ec: mov x1, x0
//  0x3b41f0: ldur x0, [FP, #-0x48]
//  0x3b41f4: stur x1, [FP, #-0x58]
//  0x3b41f8: stur w0, [x1, #0xb]
//  0x3b41fc: ldur x0, [FP, #-0x50]
//  0x3b4200: stur w0, [x1, #0x13]
//  0x3b4204: add x0, PP, #0xf, lsl #12
//  0x3b4208: ldr x0, [x0, #0x230]
//  0x3b420c: stur w0, [x1, #0x2b]
//  0x3b4210: mov x2, #2
//  0x3b4214: stur w2, [x1, #0x37]
//  0x3b4218: bl #0x39646c
//  0x3b421c: mov x3, x0
//  0x3b4220: ldur x0, [FP, #-0x40]
//  0x3b4224: stur x3, [FP, #-0x48]
//  0x3b4228: stur w0, [x3, #0xf]
//  0x3b422c: ldur x0, [FP, #-0x58]
//  0x3b4230: stur w0, [x3, #0xb]
//  0x3b4234: mov x1, NULL
//  0x3b4238: mov x2, #4
//  0x3b423c: bl #0x61f920
//  0x3b4240: mov x2, x0
//  0x3b4244: ldur x0, [FP, #-8]
//  0x3b4248: stur x2, [FP, #-0x40]
//  0x3b424c: stur w0, [x2, #0xf]
//  0x3b4250: ldur x0, [FP, #-0x48]
//  0x3b4254: stur w0, [x2, #0x13]
//  0x3b4258: ldr x1, [PP, #0x5c58]
//  0x3b425c: bl #0x61e854
//  0x3b4260: mov x1, x0
//  0x3b4264: ldur x0, [FP, #-0x40]
//  0x3b4268: stur x1, [FP, #-8]
//  0x3b426c: stur w0, [x1, #0xf]
//  0x3b4270: mov x2, #4
//  0x3b4274: stur w2, [x1, #0xb]
//  0x3b4278: bl #0x3b47f0
//  0x3b427c: mov x1, x0
//  0x3b4280: ldr x0, [PP, #0x5140]
//  0x3b4284: stur x1, [FP, #-0x40]
//  0x3b4288: stur w0, [x1, #0xf]
//  0x3b428c: add x2, PP, #0x10, lsl #12
//  0x3b4290: ldr x2, [x2, #0xc80]
//  0x3b4294: stur w2, [x1, #0x13]
//  0x3b4298: fmov d0, #2.00000000
//  0x3b429c: stur d0, [x1, #0x17]
//  0x3b42a0: add x2, PP, #0x12, lsl #12
//  0x3b42a4: ldr x2, [x2, #0x148]
//  0x3b42a8: stur w2, [x1, #0x1f]
//  0x3b42ac: stur xzr, [x1, #0x23]
//  0x3b42b0: add x2, PP, #0x12, lsl #12
//  0x3b42b4: ldr x2, [x2, #0x150]
//  0x3b42b8: stur w2, [x1, #0x2b]
//  0x3b42bc: add x2, PP, #0xe, lsl #12
//  0x3b42c0: ldr x2, [x2, #0xaf8]
//  0x3b42c4: stur w2, [x1, #0x33]
//  0x3b42c8: add x3, PP, #0xa, lsl #12
//  0x3b42cc: ldr x3, [x3, #0xa8]
//  0x3b42d0: stur w3, [x1, #0x37]
//  0x3b42d4: ldur x4, [FP, #-8]
//  0x3b42d8: stur w4, [x1, #0xb]
//  0x3b42dc: bl #0x391a04
//  0x3b42e0: stur x0, [FP, #-8]
//  0x3b42e4: add BARRIER, PP, #0xf, lsl #12
//  0x3b42e8: ldr BARRIER, [BARRIER, #0x1e8]
//  0x3b42ec: add LR, PP, #0x12, lsl #12
//  0x3b42f0: ldr LR, [LR, #0x158]
//  0x3b42f4: stp LR, BARRIER, [SP, #0x10]
//  0x3b42f8: ldur BARRIER, [FP, #-0x38]
//  0x3b42fc: ldur LR, [FP, #-0x40]
//  0x3b4300: stp LR, BARRIER, [SP]
//  0x3b4304: mov x1, x0
//  0x3b4308: add x4, PP, #0x12, lsl #12
//  0x3b430c: ldr x4, [x4, #0x160]
//  0x3b4310: bl #0x391490
//  0x3b4314: mov x1, NULL
//  0x3b4318: mov x2, #6
//  0x3b431c: bl #0x61f920
//  0x3b4320: mov x2, x0
//  0x3b4324: ldur x0, [FP, #-0x30]
//  0x3b4328: stur x2, [FP, #-0x38]
//  0x3b432c: stur w0, [x2, #0xf]
//  0x3b4330: ldur x0, [FP, #-0x20]
//  0x3b4334: stur w0, [x2, #0x13]
//  0x3b4338: ldur x0, [FP, #-8]
//  0x3b433c: stur w0, [x2, #0x17]
//  0x3b4340: ldr x1, [PP, #0x5c58]
//  0x3b4344: bl #0x61e854
//  0x3b4348: mov x1, x0
//  0x3b434c: ldur x0, [FP, #-0x38]
//  0x3b4350: stur x1, [FP, #-8]
//  0x3b4354: stur w0, [x1, #0xf]
//  0x3b4358: mov x0, #6
//  0x3b435c: stur w0, [x1, #0xb]
//  0x3b4360: bl #0x39310c
//  0x3b4364: mov x2, x0
//  0x3b4368: add x0, PP, #0xa, lsl #12
//  0x3b436c: ldr x0, [x0, #0x858]
//  0x3b4370: stur x2, [FP, #-0x20]
//  0x3b4374: stur w0, [x2, #0xf]
//  0x3b4378: add x3, PP, #0xe, lsl #12
//  0x3b437c: ldr x3, [x3, #0xae0]
//  0x3b4380: stur w3, [x2, #0x13]
//  0x3b4384: add x4, PP, #0xe, lsl #12
//  0x3b4388: ldr x4, [x4, #0xae8]
//  0x3b438c: stur w4, [x2, #0x17]
//  0x3b4390: add x1, PP, #0xe, lsl #12
//  0x3b4394: ldr x1, [x1, #0xaf0]
//  0x3b4398: stur w1, [x2, #0x1b]
//  0x3b439c: add x5, PP, #0xe, lsl #12
//  0x3b43a0: ldr x5, [x5, #0xaf8]
//  0x3b43a4: stur w5, [x2, #0x23]
//  0x3b43a8: add x6, PP, #0xa, lsl #12
//  0x3b43ac: ldr x6, [x6, #0xa8]
//  0x3b43b0: stur w6, [x2, #0x2b]
//  0x3b43b4: stur xzr, [x2, #0x2f]
//  0x3b43b8: ldur x1, [FP, #-8]
//  0x3b43bc: stur w1, [x2, #0xb]
//  0x3b43c0: add x1, PP, #0xf, lsl #12
//  0x3b43c4: ldr x1, [x1, #0x5d8]
//  0x3b43c8: bl #0x399e40
//  0x3b43cc: mov x3, x0
//  0x3b43d0: ldr x0, [PP, #0x7598]
//  0x3b43d4: stur x3, [FP, #-8]
//  0x3b43d8: stur w0, [x3, #0x13]
//  0x3b43dc: add x1, PP, #0xe, lsl #12
//  0x3b43e0: ldr x1, [x1, #0xde8]
//  0x3b43e4: stur w1, [x3, #0x17]
//  0x3b43e8: stur w0, [x3, #0x1b]
//  0x3b43ec: add x0, PP, #0xf, lsl #12
//  0x3b43f0: ldr x0, [x0, #0x5c8]
//  0x3b43f4: stur w0, [x3, #0x1f]
//  0x3b43f8: ldur x0, [FP, #-0x20]
//  0x3b43fc: stur w0, [x3, #0xb]
//  0x3b4400: mov x1, NULL
//  0x3b4404: mov x2, #4
//  0x3b4408: bl #0x61f920
//  0x3b440c: mov x2, x0
//  0x3b4410: ldur x0, [FP, #-0x28]
//  0x3b4414: stur x2, [FP, #-0x20]
//  0x3b4418: stur w0, [x2, #0xf]
//  0x3b441c: ldur x0, [FP, #-8]
//  0x3b4420: stur w0, [x2, #0x13]
//  0x3b4424: ldr x1, [PP, #0x5c58]
//  0x3b4428: bl #0x61e854
//  0x3b442c: mov x1, x0
//  0x3b4430: ldur x0, [FP, #-0x20]
//  0x3b4434: stur x1, [FP, #-8]
//  0x3b4438: stur w0, [x1, #0xf]
//  0x3b443c: mov x2, #4
//  0x3b4440: stur w2, [x1, #0xb]
//  0x3b4444: bl #0x39e6f4
//  0x3b4448: mov x2, x0
//  0x3b444c: add x0, PP, #0xe, lsl #12
//  0x3b4450: ldr x0, [x0, #0xf00]
//  0x3b4454: stur x2, [FP, #-0x20]
//  0x3b4458: stur w0, [x2, #0xf]
//  0x3b445c: add x0, PP, #0xe, lsl #12
//  0x3b4460: ldr x0, [x0, #0xf08]
//  0x3b4464: stur w0, [x2, #0x17]
//  0x3b4468: add x0, PP, #0xe, lsl #12
//  0x3b446c: ldr x0, [x0, #0xf10]
//  0x3b4470: stur w0, [x2, #0x1b]
//  0x3b4474: ldur x0, [FP, #-8]
//  0x3b4478: stur w0, [x2, #0xb]
//  0x3b447c: add x1, PP, #0xe, lsl #12
//  0x3b4480: ldr x1, [x1, #0xad0]
//  0x3b4484: bl #0x39fb14
//  0x3b4488: mov x1, x0
//  0x3b448c: mov x0, #1
//  0x3b4490: stur x1, [FP, #-0x28]
//  0x3b4494: stur x0, [x1, #0x13]
//  0x3b4498: add x2, PP, #0xe, lsl #12
//  0x3b449c: ldr x2, [x2, #0xad8]
//  0x3b44a0: stur w2, [x1, #0x1b]
//  0x3b44a4: ldur x3, [FP, #-0x20]
//  0x3b44a8: stur w3, [x1, #0xb]
//  0x3b44ac: ldur x3, [FP, #-0x10]
//  0x3b44b0: ldur w4, [x3, #0x13]
//  0x3b44b4: add x4, x4, HEAP, lsl #32
//  0x3b44b8: ldr BARRIER, [PP, #0x40]
//  0x3b44bc: cmp w4, w16
//  0x3b44c0: b.eq #0x3b4784
//  0x3b44c4: stur x4, [FP, #-0x20]
//  0x3b44c8: ldur w3, [x4, #7]
//  0x3b44cc: add x3, x3, HEAP, lsl #32
//  0x3b44d0: ldr BARRIER, [PP, #0x40]
//  0x3b44d4: cmp w3, w16
//  0x3b44d8: b.eq #0x3b4790
//  0x3b44dc: stur x3, [FP, #-8]
//  0x3b44e0: bl #0x3a67fc
//  0x3b44e4: mov x1, x0
//  0x3b44e8: ldur x0, [FP, #-8]
//  0x3b44ec: stur x1, [FP, #-0x10]
//  0x3b44f0: stur w0, [x1, #0xb]
//  0x3b44f4: fmov d0, #22.00000000
//  0x3b44f8: stur d0, [x1, #0x13]
//  0x3b44fc: add x0, NULL, #0x20
//  0x3b4500: stur w0, [x1, #0x1b]
//  0x3b4504: bl #0x391c0c
//  0x3b4508: mov x1, x0
//  0x3b450c: add x0, PP, #0x12, lsl #12
//  0x3b4510: ldr x0, [x0, #0x168]
//  0x3b4514: stur x1, [FP, #-0x30]
//  0x3b4518: stur w0, [x1, #0xf]
//  0x3b451c: ldur x0, [FP, #-0x10]
//  0x3b4520: stur w0, [x1, #0xb]
//  0x3b4524: ldur x0, [FP, #-0x20]
//  0x3b4528: ldur w2, [x0, #0xb]
//  0x3b452c: add x2, x2, HEAP, lsl #32
//  0x3b4530: ldr BARRIER, [PP, #0x40]
//  0x3b4534: cmp w2, w16
//  0x3b4538: b.eq #0x3b479c
//  0x3b453c: stur x2, [FP, #-8]
//  0x3b4540: bl #0x3a6578
//  0x3b4544: mov x1, x0
//  0x3b4548: bl #0x3b47a8
//  0x3b454c: stur x0, [FP, #-0x10]
//  0x3b4550: bl #0x393bf8
//  0x3b4554: mov x2, x0
//  0x3b4558: ldur x0, [FP, #-8]
//  0x3b455c: stur x2, [FP, #-0x20]
//  0x3b4560: stur w0, [x2, #0xb]
//  0x3b4564: ldur x0, [FP, #-0x10]
//  0x3b4568: stur w0, [x2, #0x13]
//  0x3b456c: add x0, PP, #0xf, lsl #12
//  0x3b4570: ldr x0, [x0, #0x230]
//  0x3b4574: stur w0, [x2, #0x2b]
//  0x3b4578: mov x0, #2
//  0x3b457c: stur w0, [x2, #0x37]
//  0x3b4580: add x1, PP, #0xe, lsl #12
//  0x3b4584: ldr x1, [x1, #0xad0]
//  0x3b4588: bl #0x39fb14
//  0x3b458c: mov x3, x0
//  0x3b4590: mov x0, #1
//  0x3b4594: stur x3, [FP, #-8]
//  0x3b4598: stur x0, [x3, #0x13]
//  0x3b459c: add x0, PP, #0xe, lsl #12
//  0x3b45a0: ldr x0, [x0, #0xad8]
//  0x3b45a4: stur w0, [x3, #0x1b]
//  0x3b45a8: ldur x0, [FP, #-0x20]
//  0x3b45ac: stur w0, [x3, #0xb]
//  0x3b45b0: mov x1, NULL
//  0x3b45b4: mov x2, #4
//  0x3b45b8: bl #0x61f920
//  0x3b45bc: mov x2, x0
//  0x3b45c0: ldur x0, [FP, #-0x30]
//  0x3b45c4: stur x2, [FP, #-0x10]
//  0x3b45c8: stur w0, [x2, #0xf]
//  0x3b45cc: ldur x0, [FP, #-8]
//  0x3b45d0: stur w0, [x2, #0x13]
//  0x3b45d4: ldr x1, [PP, #0x5c58]
//  0x3b45d8: bl #0x61e854
//  0x3b45dc: mov x1, x0
//  0x3b45e0: ldur x0, [FP, #-0x10]
//  0x3b45e4: stur x1, [FP, #-8]
//  0x3b45e8: stur w0, [x1, #0xf]
//  0x3b45ec: mov x2, #4
//  0x3b45f0: stur w2, [x1, #0xb]
//  0x3b45f4: bl #0x3a1414
//  0x3b45f8: mov x3, x0
//  0x3b45fc: ldr x0, [PP, #0x5140]
//  0x3b4600: stur x3, [FP, #-0x10]
//  0x3b4604: stur w0, [x3, #0xf]
//  0x3b4608: add x0, PP, #0xe, lsl #12
//  0x3b460c: ldr x0, [x0, #0xae0]
//  0x3b4610: stur w0, [x3, #0x13]
//  0x3b4614: add x4, PP, #0xe, lsl #12
//  0x3b4618: ldr x4, [x4, #0xae8]
//  0x3b461c: stur w4, [x3, #0x17]
//  0x3b4620: add x5, PP, #0xe, lsl #12
//  0x3b4624: ldr x5, [x5, #0xb60]
//  0x3b4628: stur w5, [x3, #0x1b]
//  0x3b462c: add x6, PP, #0xe, lsl #12
//  0x3b4630: ldr x6, [x6, #0xaf8]
//  0x3b4634: stur w6, [x3, #0x23]
//  0x3b4638: add x7, PP, #0xa, lsl #12
//  0x3b463c: ldr x7, [x7, #0xa8]
//  0x3b4640: stur w7, [x3, #0x2b]
//  0x3b4644: stur xzr, [x3, #0x2f]
//  0x3b4648: ldur x1, [FP, #-8]
//  0x3b464c: stur w1, [x3, #0xb]
//  0x3b4650: mov x1, NULL
//  0x3b4654: mov x2, #4
//  0x3b4658: bl #0x61f920
//  0x3b465c: mov x2, x0
//  0x3b4660: ldur x0, [FP, #-0x28]
//  0x3b4664: stur x2, [FP, #-8]
//  0x3b4668: stur w0, [x2, #0xf]
//  0x3b466c: ldur x0, [FP, #-0x10]
//  0x3b4670: stur w0, [x2, #0x13]
//  0x3b4674: ldr x1, [PP, #0x5c58]
//  0x3b4678: bl #0x61e854
//  0x3b467c: mov x1, x0
//  0x3b4680: ldur x0, [FP, #-8]
//  0x3b4684: stur x1, [FP, #-0x10]
//  0x3b4688: stur w0, [x1, #0xf]
//  0x3b468c: mov x0, #4
//  0x3b4690: stur w0, [x1, #0xb]
//  0x3b4694: bl #0x39310c
//  0x3b4698: mov x1, x0
//  0x3b469c: add x0, PP, #0xa, lsl #12
//  0x3b46a0: ldr x0, [x0, #0x858]
//  0x3b46a4: stur x1, [FP, #-8]
//  0x3b46a8: stur w0, [x1, #0xf]
//  0x3b46ac: add x0, PP, #0xe, lsl #12
//  0x3b46b0: ldr x0, [x0, #0xae0]
//  0x3b46b4: stur w0, [x1, #0x13]
//  0x3b46b8: add x0, PP, #0xe, lsl #12
//  0x3b46bc: ldr x0, [x0, #0xae8]
//  0x3b46c0: stur w0, [x1, #0x17]
//  0x3b46c4: add x0, PP, #0xe, lsl #12
//  0x3b46c8: ldr x0, [x0, #0xb60]
//  0x3b46cc: stur w0, [x1, #0x1b]
//  0x3b46d0: add x0, PP, #0xe, lsl #12
//  0x3b46d4: ldr x0, [x0, #0xaf8]
//  0x3b46d8: stur w0, [x1, #0x23]
//  0x3b46dc: add x0, PP, #0xa, lsl #12
//  0x3b46e0: ldr x0, [x0, #0xa8]
//  0x3b46e4: stur w0, [x1, #0x2b]
//  0x3b46e8: stur xzr, [x1, #0x2f]
//  0x3b46ec: ldur x0, [FP, #-0x10]
//  0x3b46f0: stur w0, [x1, #0xb]
//  0x3b46f4: bl #0x3a1d94
//  0x3b46f8: ldur x2, [FP, #-0x18]
//  0x3b46fc: add x1, PP, #0x12, lsl #12
//  0x3b4700: ldr x1, [x1, #0x170]
//  0x3b4704: stur x0, [FP, #-0x10]
//  0x3b4708: bl #0x61ec54
//  0x3b470c: ldur BARRIER, [FP, #-8]
//  0x3b4710: stp BARRIER, x0, [SP]
//  0x3b4714: ldur x1, [FP, #-0x10]
//  0x3b4718: add x4, PP, #0xc, lsl #12
//  0x3b471c: ldr x4, [x4, #0x208]
//  0x3b4720: bl #0x3a18c4
//  0x3b4724: ldur x0, [FP, #-0x10]
//  0x3b4728: mov SP, FP
//  0x3b472c: ldp FP, LR, [SP], #0x10
//  0x3b4730: ret 
//  0x3b4734: bl #0x61fa28
//  0x3b4738: b #0x3b3f58
//  0x3b473c: add x9, PP, #0x12, lsl #12
//  0x3b4740: ldr x9, [x9, #0x178]
//  0x3b4744: bl #0x620258
//  0x3b4748: add x9, PP, #0x12, lsl #12
//  0x3b474c: ldr x9, [x9, #0x180]
//  0x3b4750: bl #0x620258
//  0x3b4754: add x9, PP, #0x12, lsl #12
//  0x3b4758: ldr x9, [x9, #0x188]
//  0x3b475c: bl #0x620258
//  0x3b4760: add x9, PP, #0x12, lsl #12
//  0x3b4764: ldr x9, [x9, #0x190]
//  0x3b4768: bl #0x620258
//  0x3b476c: add x9, PP, #0x12, lsl #12
//  0x3b4770: ldr x9, [x9, #0x198]
//  0x3b4774: bl #0x620258
//  0x3b4778: add x9, PP, #0x12, lsl #12
//  0x3b477c: ldr x9, [x9, #0x1a0]
//  0x3b4780: bl #0x620258
//  0x3b4784: add x9, PP, #0x12, lsl #12
//  0x3b4788: ldr x9, [x9, #0x1a8]
//  0x3b478c: bl #0x620258
//  0x3b4790: add x9, PP, #0x12, lsl #12
//  0x3b4794: ldr x9, [x9, #0x1b0]
//  0x3b4798: bl #0x620258
//  0x3b479c: add x9, PP, #0x12, lsl #12
//  0x3b47a0: ldr x9, [x9, #0x1b8]
//  0x3b47a4: bl #0x620258
//
dynamic PartyRoomItem_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic w0;
  dynamic w2;
  dynamic w3;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x7;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3b3f3c
  // frame: FP = SP // 0x3b3f40
  // frame: SP = SP - 0x78 // 0x3b3f44
  local_m8 = x1; // 0x3b3f48
  BARRIER = mem(THR, 0x38); // 0x3b3f4c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3b4734
  }
  x1 = 1; // 0x3b3f58
  sub_0x61e890(); // 0x3b3f5c
  x0 = local_m8; // 0x3b3f64
  x1 = x0; // 0x3b3f60
  local_m18 = x1; // 0x3b3f68
  memSet(x1, 0xf, w0); // 0x3b3f6c
  w2 = mem(x0, 0xb); // 0x3b3f70
  x2 = ((mem(x0, 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3b3f74
  local_m10 = x2; // 0x3b3f78
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3b3f84
  w0 = mem(x2, 0x1b); // 0x3b3f7c
  x0 = ((mem(x2, 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x3b3f80
  if (w0 == w16) {
    x9 = mem((PP + 0x12000), 0x178) /* Field */; // 0x3b4740
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3b4744
  } else {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3b3f98
    x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x3b3f94
    if (w3 == w16) {
      x9 = mem((PP + 0x12000), 0x180) /* Field */; // 0x3b474c
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3b4750
    } else {
      local_m8 = x3; // 0x3b3fa4
      AllocationStub_RoundImage() /* 0x3b48d8 */; // 0x3b3fa8
      x0 = local_m8; // 0x3b3fb0
      x2 = x0; // 0x3b3fac
      local_m20 = x2; // 0x3b3fb4
      memSet(x2, 0x13, w0); // 0x3b3fb8
      d0 = 16.00000000 /* bits */; // 0x3b3fbc
      memSet(x2, 0xb, d0); // 0x3b3fc0
      x1 = mem((PP + 0xf000), 0x5d8) /* TypeArguments */; // 0x3b3fc8
      AllocationStub_Positioned() /* 0x399e40 */; // 0x3b3fcc
      x0 = mem(PP, 0x52c8) /* Double */; // 0x3b3fd4
      x1 = x0; // 0x3b3fd0
      local_m28 = x1; // 0x3b3fd8
      memSet(x1, 0x13, w0); // 0x3b3fdc
      memSet(x1, 0x17, w0); // 0x3b3fe0
      memSet(x1, 0x1b, w0); // 0x3b3fe4
      memSet(x1, 0x1f, w0); // 0x3b3fe8
      x0 = local_m20; // 0x3b3fec
      memSet(x1, 0xb, w0); // 0x3b3ff0
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3b4000
      w2 = mem((local_m10), 0x17); // 0x3b3ff8
      x0 = local_m10; // 0x3b3ff4
      x2 = ((mem((local_m10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3b3ffc
      if (w2 == w16) {
        x9 = mem((PP + 0x12000), 0x188) /* Field */; // 0x3b4758
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3b475c
      } else {
        BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3b4014
        x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x3b4010
        if (w3 == w16) {
          x9 = mem((PP + 0x12000), 0x190) /* Field */; // 0x3b4764
          LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3b4768
        } else {
          local_m8 = x3; // 0x3b4020
          TextStyles_smallContent() /* 0x3b48a4 */; // 0x3b4024
          local_m20 = x0; // 0x3b4028
          AllocationStub_Text() /* 0x393bf8 */; // 0x3b402c
          x0 = local_m8; // 0x3b4034
          x1 = x0; // 0x3b4030
          local_m30 = x1; // 0x3b4038
          memSet(x1, 0xb, w0); // 0x3b403c
          x0 = local_m20; // 0x3b4040
          memSet(x1, 0x13, w0); // 0x3b4044
          x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x3b404c
          memSet(x1, 0x2b, w0); // 0x3b4050
          x2 = 2; // 0x3b4054
          memSet(x1, 0x37, w2); // 0x3b4058
          BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3b4068
          w4 = mem((local_m10), 0xb); // 0x3b4060
          x3 = local_m10; // 0x3b405c
          x4 = ((mem((local_m10), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3b4064
          if (w4 == w16) {
            x9 = mem((PP + 0x12000), 0x198) /* Field */; // 0x3b4770
            LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3b4774
          } else {
            local_m8 = x4; // 0x3b4074
            TextStyles_firstLevelContent() /* 0x3b4864 */; // 0x3b4078
            local_m20 = x0; // 0x3b407c
            AllocationStub_Text() /* 0x393bf8 */; // 0x3b4080
            x0 = local_m8; // 0x3b4088
            x1 = x0; // 0x3b4084
            local_m38 = x1; // 0x3b408c
            memSet(x1, 0xb, w0); // 0x3b4090
            x0 = local_m20; // 0x3b4094
            memSet(x1, 0x13, w0); // 0x3b4098
            x0 = NULL + 0x20; // 0x3b409c
            memSet(x1, 0x27, w0); // 0x3b40a0
            x2 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x3b40a8
            memSet(x1, 0x2b, w2); // 0x3b40ac
            x3 = 8; // 0x3b40b0
            memSet(x1, 0x37, w3); // 0x3b40b4
            AllocationStub_Padding() /* 0x391c0c */; // 0x3b40b8
            x0 = mem((PP + 0x12000), 0x138) /* Obj!EdgeInsets@11b88  */; // 0x3b40c4
            x2 = x0; // 0x3b40bc
            local_m8 = x2; // 0x3b40c8
            memSet(x2, 0xf, w0); // 0x3b40cc
            x0 = local_m38; // 0x3b40d0
            memSet(x2, 0xb, w0); // 0x3b40d4
            x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x3b40dc
            AllocationStub_Expanded() /* 0x39fb14 */; // 0x3b40e0
            x0 = 1; // 0x3b40e8
            x1 = x0; // 0x3b40e4
            local_m20 = x1; // 0x3b40ec
            memSet(x1, 0x13, x0); // 0x3b40f0
            x2 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x3b40f8
            memSet(x1, 0x1b, w2); // 0x3b40fc
            x3 = local_m8; // 0x3b4100
            memSet(x1, 0xb, w3); // 0x3b4104
            SOColors_get_black20() /* 0x3b4830 */; // 0x3b4108
            local_m8 = x0; // 0x3b410c
            AllocationStub_Radius() /* 0x352b04 */; // 0x3b4110
            d0 = 12.00000000 /* bits */; // 0x3b4114
            local_m38 = x0; // 0x3b4118
            memSet(x0, 7, d0); // 0x3b411c
            memSet(x0, 0xf, d0); // 0x3b4120
            AllocationStub_BorderRadius() /* 0x392f28 */; // 0x3b4124
            x0 = local_m38; // 0x3b412c
            x1 = x0; // 0x3b4128
            local_m40 = x1; // 0x3b4130
            memSet(x1, 7, w0); // 0x3b4134
            memSet(x1, 0xb, w0); // 0x3b4138
            memSet(x1, 0xf, w0); // 0x3b413c
            memSet(x1, 0x13, w0); // 0x3b4140
            AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x3b4144
            x0 = local_m8; // 0x3b414c
            x1 = x0; // 0x3b4148
            local_m38 = x1; // 0x3b4150
            memSet(x1, 7, w0); // 0x3b4154
            x0 = local_m40; // 0x3b4158
            memSet(x1, 0x13, w0); // 0x3b415c
            x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x3b4164
            memSet(x1, 0x23, w0); // 0x3b4168
            AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x3b416c
            x0 = "assets/images/3.0x/party_icon_people.webp" /* pp+0x12140 */; // 0x3b4178
            x1 = x0; // 0x3b4170
            local_m8 = x1; // 0x3b417c
            memSet(x1, 0xb, w0); // 0x3b4180
            x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x3b4188
            memSet(x1, 0xf, w0); // 0x3b418c
            x0 = mem((PP + 0xf000), 0xb80) /* Double */; // 0x3b4194
            memSet(x1, 0x13, w0); // 0x3b4198
            memSet(x1, 0x17, w0); // 0x3b419c
            AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x3b41a0
            local_m40 = x0; // 0x3b41a4
            memSet(x0, 7, xzr); // 0x3b41a8
            d0 = 9218868437227405312; // 0x3b41ac
            memSet(x0, 0xf, d0); // 0x3b41b0
            memSet(x0, 0x17, xzr); // 0x3b41b4
            memSet(x0, 0x1f, d0); // 0x3b41b8
            BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3b41c8
            w2 = mem((local_m10), 0xf); // 0x3b41c0
            x1 = local_m10; // 0x3b41bc
            x2 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3b41c4
            if (w2 == w16) {
              x9 = mem((PP + 0x12000), 0x1a0) /* Field */; // 0x3b477c
              LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3b4780
            } else {
              local_0 = x2; // 0x3b41d4
              StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x3b41d8
              local_m48 = x0; // 0x3b41dc
              TextStyles_smallerContent() /* 0x3b47fc */; // 0x3b41e0
              local_m50 = x0; // 0x3b41e4
              AllocationStub_Text() /* 0x393bf8 */; // 0x3b41e8
              x0 = local_m48; // 0x3b41f0
              x1 = x0; // 0x3b41ec
              local_m58 = x1; // 0x3b41f4
              memSet(x1, 0xb, w0); // 0x3b41f8
              x0 = local_m50; // 0x3b41fc
              memSet(x1, 0x13, w0); // 0x3b4200
              x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x3b4208
              memSet(x1, 0x2b, w0); // 0x3b420c
              x2 = 2; // 0x3b4210
              memSet(x1, 0x37, w2); // 0x3b4214
              AllocationStub_ConstrainedBox() /* 0x39646c */; // 0x3b4218
              x0 = local_m40; // 0x3b4220
              x3 = x0; // 0x3b421c
              local_m48 = x3; // 0x3b4224
              memSet(x3, 0xf, w0); // 0x3b4228
              x0 = local_m58; // 0x3b422c
              memSet(x3, 0xb, w0); // 0x3b4230
              x1 = NULL; // 0x3b4234
              x2 = 4; // 0x3b4238
              sub_0x61f920(); // 0x3b423c
              x0 = local_m8; // 0x3b4244
              x2 = x0; // 0x3b4240
              local_m40 = x2; // 0x3b4248
              memSet(x2, 0xf, w0); // 0x3b424c
              x0 = local_m48; // 0x3b4250
              memSet(x2, 0x13, w0); // 0x3b4254
              x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3b4258
              AllocationStub__GrowableList() /* 0x61e854 */; // 0x3b425c
              x0 = local_m40; // 0x3b4264
              x1 = x0; // 0x3b4260
              local_m8 = x1; // 0x3b4268
              memSet(x1, 0xf, w0); // 0x3b426c
              x2 = 4; // 0x3b4270
              memSet(x1, 0xb, w2); // 0x3b4274
              AllocationStub_Wrap() /* 0x3b47f0 */; // 0x3b4278
              x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x3b4280
              x1 = x0; // 0x3b427c
              local_m40 = x1; // 0x3b4284
              memSet(x1, 0xf, w0); // 0x3b4288
              x2 = mem((PP + 0x10000), 0xc80) /* Obj!WrapAlignment@12254  */; // 0x3b4290
              memSet(x1, 0x13, w2); // 0x3b4294
              d0 = 2.00000000 /* bits */; // 0x3b4298
              memSet(x1, 0x17, d0); // 0x3b429c
              x2 = mem((PP + 0x12000), 0x148) /* Obj!WrapAlignment@12253  */; // 0x3b42a4
              memSet(x1, 0x1f, w2); // 0x3b42a8
              memSet(x1, 0x23, xzr); // 0x3b42ac
              x2 = mem((PP + 0x12000), 0x150) /* Obj!WrapCrossAlignment@1224e  */; // 0x3b42b4
              memSet(x1, 0x2b, w2); // 0x3b42b8
              x2 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3b42c0
              memSet(x1, 0x33, w2); // 0x3b42c4
              x3 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3b42cc
              memSet(x1, 0x37, w3); // 0x3b42d0
              x4 = local_m8; // 0x3b42d4
              memSet(x1, 0xb, w4); // 0x3b42d8
              AllocationStub_Container() /* 0x391a04 */; // 0x3b42dc
              local_m8 = x0; // 0x3b42e0
              BARRIER = mem((PP + 0xf000), 0x1e8) /* Double */; // 0x3b42e8
              LR = mem((PP + 0x12000), 0x158) /* Obj!EdgeInsetsDirectional@11b69  */; // 0x3b42f0
              // frame: LR, BARRIER, mem(SP, 0x10) // 0x3b42f4
              BARRIER = local_m38; // 0x3b42f8
              LR = local_m40; // 0x3b42fc
              // frame: LR, BARRIER, mem(SP) // 0x3b4300
              x1 = x0; // 0x3b4304
              x4 = mem((PP + 0x12000), 0x160) /* ImmutableArray */; // 0x3b430c
              Container_ctor() /* 0x391490 */; // 0x3b4310
              x1 = NULL; // 0x3b4314
              x2 = 6; // 0x3b4318
              sub_0x61f920(); // 0x3b431c
              x0 = local_m30; // 0x3b4324
              x2 = x0; // 0x3b4320
              local_m38 = x2; // 0x3b4328
              memSet(x2, 0xf, w0); // 0x3b432c
              x0 = local_m20; // 0x3b4330
              memSet(x2, 0x13, w0); // 0x3b4334
              x0 = local_m8; // 0x3b4338
              memSet(x2, 0x17, w0); // 0x3b433c
              x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3b4340
              AllocationStub__GrowableList() /* 0x61e854 */; // 0x3b4344
              x0 = local_m38; // 0x3b434c
              x1 = x0; // 0x3b4348
              local_m8 = x1; // 0x3b4350
              memSet(x1, 0xf, w0); // 0x3b4354
              x0 = 6; // 0x3b4358
              memSet(x1, 0xb, w0); // 0x3b435c
              AllocationStub_Column() /* 0x39310c */; // 0x3b4360
              x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3b436c
              x2 = x0; // 0x3b4364
              local_m20 = x2; // 0x3b4370
              memSet(x2, 0xf, w0); // 0x3b4374
              x3 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3b437c
              memSet(x2, 0x13, w3); // 0x3b4380
              x4 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3b4388
              memSet(x2, 0x17, w4); // 0x3b438c
              x1 = mem((PP + 0xe000), 0xaf0) /* Obj!CrossAxisAlignment@12269  */; // 0x3b4394
              memSet(x2, 0x1b, w1); // 0x3b4398
              x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3b43a0
              memSet(x2, 0x23, w5); // 0x3b43a4
              x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3b43ac
              memSet(x2, 0x2b, w6); // 0x3b43b0
              memSet(x2, 0x2f, xzr); // 0x3b43b4
              x1 = local_m8; // 0x3b43b8
              memSet(x2, 0xb, w1); // 0x3b43bc
              x1 = mem((PP + 0xf000), 0x5d8) /* TypeArguments */; // 0x3b43c4
              AllocationStub_Positioned() /* 0x399e40 */; // 0x3b43c8
              x0 = mem(PP, 0x7598) /* Double */; // 0x3b43d0
              x3 = x0; // 0x3b43cc
              local_m8 = x3; // 0x3b43d4
              memSet(x3, 0x13, w0); // 0x3b43d8
              x1 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x3b43e0
              memSet(x3, 0x17, w1); // 0x3b43e4
              memSet(x3, 0x1b, w0); // 0x3b43e8
              x0 = mem((PP + 0xf000), 0x5c8) /* Double */; // 0x3b43f0
              memSet(x3, 0x1f, w0); // 0x3b43f4
              x0 = local_m20; // 0x3b43f8
              memSet(x3, 0xb, w0); // 0x3b43fc
              x1 = NULL; // 0x3b4400
              x2 = 4; // 0x3b4404
              sub_0x61f920(); // 0x3b4408
              x0 = local_m28; // 0x3b4410
              x2 = x0; // 0x3b440c
              local_m20 = x2; // 0x3b4414
              memSet(x2, 0xf, w0); // 0x3b4418
              x0 = local_m8; // 0x3b441c
              memSet(x2, 0x13, w0); // 0x3b4420
              x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3b4424
              AllocationStub__GrowableList() /* 0x61e854 */; // 0x3b4428
              x0 = local_m20; // 0x3b4430
              x1 = x0; // 0x3b442c
              local_m8 = x1; // 0x3b4434
              memSet(x1, 0xf, w0); // 0x3b4438
              x2 = 4; // 0x3b443c
              memSet(x1, 0xb, w2); // 0x3b4440
              AllocationStub_Stack() /* 0x39e6f4 */; // 0x3b4444
              x0 = mem((PP + 0xe000), 0xf00) /* Obj!AlignmentDirectional@11bd4  */; // 0x3b4450
              x2 = x0; // 0x3b4448
              local_m20 = x2; // 0x3b4454
              memSet(x2, 0xf, w0); // 0x3b4458
              x0 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x3b4460
              memSet(x2, 0x17, w0); // 0x3b4464
              x0 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x3b446c
              memSet(x2, 0x1b, w0); // 0x3b4470
              x0 = local_m8; // 0x3b4474
              memSet(x2, 0xb, w0); // 0x3b4478
              x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x3b4480
              AllocationStub_Expanded() /* 0x39fb14 */; // 0x3b4484
              x0 = 1; // 0x3b448c
              x1 = x0; // 0x3b4488
              local_m28 = x1; // 0x3b4490
              memSet(x1, 0x13, x0); // 0x3b4494
              x2 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x3b449c
              memSet(x1, 0x1b, w2); // 0x3b44a0
              x3 = local_m20; // 0x3b44a4
              memSet(x1, 0xb, w3); // 0x3b44a8
              BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3b44b8
              w4 = mem((local_m10), 0x13); // 0x3b44b0
              x3 = local_m10; // 0x3b44ac
              x4 = ((mem((local_m10), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x3b44b4
              if (w4 == w16) {
                x9 = mem((PP + 0x12000), 0x1a8) /* Field */; // 0x3b4788
                LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3b478c
              } else {
                local_m20 = x4; // 0x3b44c4
                BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3b44d0
                w3 = mem(x4, 7); // 0x3b44c8
                x3 = ((mem(x4, 7)) & 0xffffffff) + (HEAP << 32); // 0x3b44cc
                if (w3 == w16) {
                  x9 = mem((PP + 0x12000), 0x1b0) /* Field */; // 0x3b4794
                  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3b4798
                } else {
                  local_m8 = x3; // 0x3b44dc
                  AllocationStub_SoulAvatarImage() /* 0x3a67fc */; // 0x3b44e0
                  x0 = local_m8; // 0x3b44e8
                  x1 = x0; // 0x3b44e4
                  local_m10 = x1; // 0x3b44ec
                  memSet(x1, 0xb, w0); // 0x3b44f0
                  d0 = 22.00000000 /* bits */; // 0x3b44f4
                  memSet(x1, 0x13, d0); // 0x3b44f8
                  x0 = NULL + 0x20; // 0x3b44fc
                  memSet(x1, 0x1b, w0); // 0x3b4500
                  AllocationStub_Padding() /* 0x391c0c */; // 0x3b4504
                  x0 = mem((PP + 0x12000), 0x168) /* Obj!EdgeInsets@11b87  */; // 0x3b4510
                  x1 = x0; // 0x3b4508
                  local_m30 = x1; // 0x3b4514
                  memSet(x1, 0xf, w0); // 0x3b4518
                  x0 = local_m10; // 0x3b451c
                  memSet(x1, 0xb, w0); // 0x3b4520
                  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3b4530
                  w2 = mem((local_m20), 0xb); // 0x3b4528
                  x0 = local_m20; // 0x3b4524
                  x2 = ((mem((local_m20), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3b452c
                  if (w2 != w16) {
                    local_m8 = x2; // 0x3b453c
                    SOColors_get_s_03() /* 0x3a6578 */; // 0x3b4540
                    x1 = x0; // 0x3b4544
                    TextStyles_firstLevelTitle() /* 0x3b47a8 */; // 0x3b4548
                    local_m10 = x0; // 0x3b454c
                    AllocationStub_Text() /* 0x393bf8 */; // 0x3b4550
                    x0 = local_m8; // 0x3b4558
                    x2 = x0; // 0x3b4554
                    local_m20 = x2; // 0x3b455c
                    memSet(x2, 0xb, w0); // 0x3b4560
                    x0 = local_m10; // 0x3b4564
                    memSet(x2, 0x13, w0); // 0x3b4568
                    x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x3b4570
                    memSet(x2, 0x2b, w0); // 0x3b4574
                    x0 = 2; // 0x3b4578
                    memSet(x2, 0x37, w0); // 0x3b457c
                    x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x3b4584
                    AllocationStub_Expanded() /* 0x39fb14 */; // 0x3b4588
                    x0 = 1; // 0x3b4590
                    x3 = x0; // 0x3b458c
                    local_m8 = x3; // 0x3b4594
                    memSet(x3, 0x13, x0); // 0x3b4598
                    x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x3b45a0
                    memSet(x3, 0x1b, w0); // 0x3b45a4
                    x0 = local_m20; // 0x3b45a8
                    memSet(x3, 0xb, w0); // 0x3b45ac
                    x1 = NULL; // 0x3b45b0
                    x2 = 4; // 0x3b45b4
                    sub_0x61f920(); // 0x3b45b8
                    x0 = local_m30; // 0x3b45c0
                    x2 = x0; // 0x3b45bc
                    local_m10 = x2; // 0x3b45c4
                    memSet(x2, 0xf, w0); // 0x3b45c8
                    x0 = local_m8; // 0x3b45cc
                    memSet(x2, 0x13, w0); // 0x3b45d0
                    x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3b45d4
                    AllocationStub__GrowableList() /* 0x61e854 */; // 0x3b45d8
                    x0 = local_m10; // 0x3b45e0
                    x1 = x0; // 0x3b45dc
                    local_m8 = x1; // 0x3b45e4
                    memSet(x1, 0xf, w0); // 0x3b45e8
                    x2 = 4; // 0x3b45ec
                    memSet(x1, 0xb, w2); // 0x3b45f0
                    AllocationStub_Row() /* 0x3a1414 */; // 0x3b45f4
                    x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x3b45fc
                    x3 = x0; // 0x3b45f8
                    local_m10 = x3; // 0x3b4600
                    memSet(x3, 0xf, w0); // 0x3b4604
                    x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3b460c
                    memSet(x3, 0x13, w0); // 0x3b4610
                    x4 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3b4618
                    memSet(x3, 0x17, w4); // 0x3b461c
                    x5 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3b4624
                    memSet(x3, 0x1b, w5); // 0x3b4628
                    x6 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3b4630
                    memSet(x3, 0x23, w6); // 0x3b4634
                    x7 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3b463c
                    memSet(x3, 0x2b, w7); // 0x3b4640
                    memSet(x3, 0x2f, xzr); // 0x3b4644
                    x1 = local_m8; // 0x3b4648
                    memSet(x3, 0xb, w1); // 0x3b464c
                    x1 = NULL; // 0x3b4650
                    x2 = 4; // 0x3b4654
                    sub_0x61f920(); // 0x3b4658
                    x0 = local_m28; // 0x3b4660
                    x2 = x0; // 0x3b465c
                    local_m8 = x2; // 0x3b4664
                    memSet(x2, 0xf, w0); // 0x3b4668
                    x0 = local_m10; // 0x3b466c
                    memSet(x2, 0x13, w0); // 0x3b4670
                    x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3b4674
                    AllocationStub__GrowableList() /* 0x61e854 */; // 0x3b4678
                    x0 = local_m8; // 0x3b4680
                    x1 = x0; // 0x3b467c
                    local_m10 = x1; // 0x3b4684
                    memSet(x1, 0xf, w0); // 0x3b4688
                    x0 = 4; // 0x3b468c
                    memSet(x1, 0xb, w0); // 0x3b4690
                    AllocationStub_Column() /* 0x39310c */; // 0x3b4694
                    x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3b46a0
                    x1 = x0; // 0x3b4698
                    local_m8 = x1; // 0x3b46a4
                    memSet(x1, 0xf, w0); // 0x3b46a8
                    x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3b46b0
                    memSet(x1, 0x13, w0); // 0x3b46b4
                    x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3b46bc
                    memSet(x1, 0x17, w0); // 0x3b46c0
                    x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3b46c8
                    memSet(x1, 0x1b, w0); // 0x3b46cc
                    x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3b46d4
                    memSet(x1, 0x23, w0); // 0x3b46d8
                    x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3b46e0
                    memSet(x1, 0x2b, w0); // 0x3b46e4
                    memSet(x1, 0x2f, xzr); // 0x3b46e8
                    x0 = local_m10; // 0x3b46ec
                    memSet(x1, 0xb, w0); // 0x3b46f0
                    sub_0x3a1d94(); // 0x3b46f4
                    x1 = mem((PP + 0x12000), 0x170) /* Function */; // 0x3b4700
                    x2 = local_m18; // 0x3b46f8
                    local_m10 = x0; // 0x3b4704
                    AllocationStub__Closure() /* 0x61ec54 */; // 0x3b4708
                    BARRIER = local_m8; // 0x3b470c
                    // frame: BARRIER, x0, mem(SP) // 0x3b4710
                    x1 = local_m10; // 0x3b4714
                    x4 = mem((PP + 0xc000), 0x208) /* ImmutableArray */; // 0x3b471c
                    GestureDetector_ctor() /* 0x3a18c4 */; // 0x3b4720
                    SP = FP; // 0x3b4728
                    x0 = local_m10; // 0x3b4724
                    // frame: FP, LR, mem(SP), 0x10 // 0x3b472c
                    return;
                  }
                }
                x9 = mem((PP + 0x12000), 0x1b8) /* Field */; // 0x3b47a0
                LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3b47a4
              }
            }
          }
        }
      }
    }
  }
}

// PartyRoomItem_anon_closure
// raw disassembly:
//  0x3b4904: stp FP, LR, [SP, #-0x10]!
//  0x3b4908: mov FP, SP
//  0x3b490c: sub SP, SP, #8
//  0x3b4910: ldr x0, [FP, #0x10]
//  0x3b4914: ldur w1, [x0, #0x17]
//  0x3b4918: add x1, x1, HEAP, lsl #32
//  0x3b491c: ldr BARRIER, [THR, #0x38]
//  0x3b4920: cmp SP, BARRIER
//  0x3b4924: b.ls #0x3b49b0
//  0x3b4928: ldur w0, [x1, #0xf]
//  0x3b492c: add x0, x0, HEAP, lsl #32
//  0x3b4930: ldur w1, [x0, #0xb]
//  0x3b4934: add x1, x1, HEAP, lsl #32
//  0x3b4938: ldur w3, [x1, #7]
//  0x3b493c: add x3, x3, HEAP, lsl #32
//  0x3b4940: ldr BARRIER, [PP, #0x40]
//  0x3b4944: cmp w3, w16
//  0x3b4948: b.eq #0x3b49b8
//  0x3b494c: stur x3, [FP, #-8]
//  0x3b4950: ldur w0, [x3, #7]
//  0x3b4954: cbz w0, #0x3b49a0
//  0x3b4958: bl #0x3a86c0
//  0x3b495c: mov x1, x0
//  0x3b4960: add x2, PP, #0x12, lsl #12
//  0x3b4964: ldr x2, [x2, #0x1c0]
//  0x3b4968: bl #0x3a84c4
//  0x3b496c: mov x1, x0
//  0x3b4970: ldur x3, [FP, #-8]
//  0x3b4974: add x2, PP, #0x10, lsl #12
//  0x3b4978: ldr x2, [x2, #0xd48]
//  0x3b497c: bl #0x3a8024
//  0x3b4980: mov x1, x0
//  0x3b4984: add x2, PP, #0x12, lsl #12
//  0x3b4988: ldr x2, [x2, #0x1c8]
//  0x3b498c: add x3, PP, #0x12, lsl #12
//  0x3b4990: ldr x3, [x3, #0x1d0]
//  0x3b4994: bl #0x3a8024
//  0x3b4998: mov x1, x0
//  0x3b499c: bl #0x3a6ae8
//  0x3b49a0: mov x0, NULL
//  0x3b49a4: mov SP, FP
//  0x3b49a8: ldp FP, LR, [SP], #0x10
//  0x3b49ac: ret 
//  0x3b49b0: bl #0x61fa28
//  0x3b49b4: b #0x3b4928
//  0x3b49b8: add x9, PP, #0x12, lsl #12
//  0x3b49bc: ldr x9, [x9, #0x1d8]
//  0x3b49c0: bl #0x620258
//
dynamic PartyRoomItem_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3b4904
  BARRIER = mem(THR, 0x38); // 0x3b491c
  // frame: FP = SP // 0x3b4908
  // frame: SP = SP - 8 // 0x3b490c
  w1 = mem((local_10), 0x17); // 0x3b4914
  x0 = local_10; // 0x3b4910
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3b4918
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3b49b0
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3b4940
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x3b4930
  w3 = mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32)), 7); // 0x3b4938
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x3b492c
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3b4934
  x3 = ((mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32)), 7)) & 0xffffffff) + (HEAP << 32); // 0x3b493c
  if (w3 == w16) {
    x9 = mem((PP + 0x12000), 0x1d8) /* Field */; // 0x3b49bc
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3b49c0
  }
  local_m8 = x3; // 0x3b494c
  w0 = mem(x3, 7); // 0x3b4950
  x0 = (mem(x3, 7)) & 0xffffffff; // 0x3b4950
  if (w0 == 0) {
  } else {
    RouterNative_getInstance() /* 0x3a86c0 */; // 0x3b4958
    x1 = x0; // 0x3b495c
    x2 = "/party/room" /* pp+0x121c0 */; // 0x3b4964
    RouterNative_route() /* 0x3a84c4 */; // 0x3b4968
    x1 = x0; // 0x3b496c
    x2 = "roomId" /* pp+0x10d48 */; // 0x3b4978
    x3 = local_m8; // 0x3b4970
    SoulNavigator_withString() /* 0x3a8024 */; // 0x3b497c
    x1 = x0; // 0x3b4980
    x2 = "channel" /* pp+0x121c8 */; // 0x3b4988
    x3 = "7" /* pp+0x121d0 */; // 0x3b4990
    SoulNavigator_withString() /* 0x3a8024 */; // 0x3b4994
    x1 = x0; // 0x3b4998
    SoulNavigator_navigate() /* 0x3a6ae8 */; // 0x3b499c
  }
  SP = FP; // 0x3b49a4
  x0 = NULL; // 0x3b49a0
  // frame: FP, LR, mem(SP), 0x10 // 0x3b49a8
  return;
}

// PartySearchPageState_build
// raw disassembly:
//  0x427758: stp FP, LR, [SP, #-0x10]!
//  0x42775c: mov FP, SP
//  0x427760: sub SP, SP, #0x28
//  0x427764: stur x1, [FP, #-8]
//  0x427768: ldr BARRIER, [THR, #0x38]
//  0x42776c: cmp SP, BARRIER
//  0x427770: b.ls #0x427968
//  0x427774: mov x1, #1
//  0x427778: bl #0x61e890
//  0x42777c: mov x1, x0
//  0x427780: ldur x0, [FP, #-8]
//  0x427784: stur x1, [FP, #-0x10]
//  0x427788: stur w0, [x1, #0xf]
//  0x42778c: bl #0x3b82c4
//  0x427790: add x1, PP, #0xc, lsl #12
//  0x427794: ldr x1, [x1, #0xb80]
//  0x427798: stur x0, [FP, #-0x18]
//  0x42779c: ldr x4, [PP, #0x4c0]
//  0x4277a0: bl #0x3a1dcc
//  0x4277a4: mov x1, x0
//  0x4277a8: ldur x0, [FP, #-8]
//  0x4277ac: stur x1, [FP, #-0x28]
//  0x4277b0: ldur w2, [x0, #0x1b]
//  0x4277b4: add x2, x2, HEAP, lsl #32
//  0x4277b8: stur x2, [FP, #-0x20]
//  0x4277bc: bl #0x427970
//  0x4277c0: mov x3, x0
//  0x4277c4: ldr x0, [PP, #0x148]
//  0x4277c8: stur x3, [FP, #-8]
//  0x4277cc: stur w0, [x3, #0xb]
//  0x4277d0: ldur x1, [FP, #-0x28]
//  0x4277d4: stur w1, [x3, #0xf]
//  0x4277d8: mov x1, #-1
//  0x4277dc: stur x1, [x3, #0x13]
//  0x4277e0: ldur x1, [FP, #-0x20]
//  0x4277e4: stur w1, [x3, #0x1b]
//  0x4277e8: ldur x2, [FP, #-0x10]
//  0x4277ec: add x1, PP, #0x10, lsl #12
//  0x4277f0: ldr x1, [x1, #0xe50]
//  0x4277f4: bl #0x61ec54
//  0x4277f8: mov x1, x0
//  0x4277fc: ldur x0, [FP, #-8]
//  0x427800: stur w1, [x0, #0x1f]
//  0x427804: ldur x2, [FP, #-0x10]
//  0x427808: add x1, PP, #0x10, lsl #12
//  0x42780c: ldr x1, [x1, #0xe58]
//  0x427810: bl #0x61ec54
//  0x427814: add x1, PP, #0x10, lsl #12
//  0x427818: ldr x1, [x1, #0xe60]
//  0x42781c: stur x0, [FP, #-0x20]
//  0x427820: bl #0x41a414
//  0x427824: mov x3, x0
//  0x427828: ldur x0, [FP, #-0x20]
//  0x42782c: stur x3, [FP, #-0x28]
//  0x427830: stur w0, [x3, #0x13]
//  0x427834: ldur x2, [FP, #-0x10]
//  0x427838: add x1, PP, #0x10, lsl #12
//  0x42783c: ldr x1, [x1, #0xe68]
//  0x427840: bl #0x61ec54
//  0x427844: add x1, PP, #0x10, lsl #12
//  0x427848: ldr x1, [x1, #0xe60]
//  0x42784c: stur x0, [FP, #-0x10]
//  0x427850: bl #0x3b81c4
//  0x427854: mov x1, x0
//  0x427858: ldur x2, [FP, #-0x28]
//  0x42785c: ldur x3, [FP, #-0x10]
//  0x427860: mov x5, NULL
//  0x427864: stur x0, [FP, #-0x10]
//  0x427868: bl #0x3b7e8c
//  0x42786c: add x1, PP, #0xe, lsl #12
//  0x427870: ldr x1, [x1, #0xad0]
//  0x427874: bl #0x39fb14
//  0x427878: mov x3, x0
//  0x42787c: mov x0, #1
//  0x427880: stur x3, [FP, #-0x20]
//  0x427884: stur x0, [x3, #0x13]
//  0x427888: add x0, PP, #0xe, lsl #12
//  0x42788c: ldr x0, [x0, #0xad8]
//  0x427890: stur w0, [x3, #0x1b]
//  0x427894: ldur x0, [FP, #-0x10]
//  0x427898: stur w0, [x3, #0xb]
//  0x42789c: mov x1, NULL
//  0x4278a0: mov x2, #4
//  0x4278a4: bl #0x61f920
//  0x4278a8: mov x2, x0
//  0x4278ac: ldur x0, [FP, #-8]
//  0x4278b0: stur x2, [FP, #-0x10]
//  0x4278b4: stur w0, [x2, #0xf]
//  0x4278b8: ldur x0, [FP, #-0x20]
//  0x4278bc: stur w0, [x2, #0x13]
//  0x4278c0: ldr x1, [PP, #0x5c58]
//  0x4278c4: bl #0x61e854
//  0x4278c8: mov x1, x0
//  0x4278cc: ldur x0, [FP, #-0x10]
//  0x4278d0: stur x1, [FP, #-8]
//  0x4278d4: stur w0, [x1, #0xf]
//  0x4278d8: mov x0, #4
//  0x4278dc: stur w0, [x1, #0xb]
//  0x4278e0: bl #0x39310c
//  0x4278e4: mov x1, x0
//  0x4278e8: add x0, PP, #0xa, lsl #12
//  0x4278ec: ldr x0, [x0, #0x858]
//  0x4278f0: stur x1, [FP, #-0x10]
//  0x4278f4: stur w0, [x1, #0xf]
//  0x4278f8: add x0, PP, #0xe, lsl #12
//  0x4278fc: ldr x0, [x0, #0xae0]
//  0x427900: stur w0, [x1, #0x13]
//  0x427904: add x0, PP, #0xe, lsl #12
//  0x427908: ldr x0, [x0, #0xae8]
//  0x42790c: stur w0, [x1, #0x17]
//  0x427910: add x0, PP, #0xe, lsl #12
//  0x427914: ldr x0, [x0, #0xb60]
//  0x427918: stur w0, [x1, #0x1b]
//  0x42791c: add x0, PP, #0xe, lsl #12
//  0x427920: ldr x0, [x0, #0xaf8]
//  0x427924: stur w0, [x1, #0x23]
//  0x427928: add x0, PP, #0xa, lsl #12
//  0x42792c: ldr x0, [x0, #0xa8]
//  0x427930: stur w0, [x1, #0x2b]
//  0x427934: stur xzr, [x1, #0x2f]
//  0x427938: ldur x0, [FP, #-8]
//  0x42793c: stur w0, [x1, #0xb]
//  0x427940: bl #0x3b7d48
//  0x427944: ldr x1, [PP, #0x148]
//  0x427948: stur w1, [x0, #0xb]
//  0x42794c: ldur x1, [FP, #-0x18]
//  0x427950: stur w1, [x0, #0x17]
//  0x427954: ldur x1, [FP, #-0x10]
//  0x427958: stur w1, [x0, #0x1b]
//  0x42795c: mov SP, FP
//  0x427960: ldp FP, LR, [SP], #0x10
//  0x427964: ret 
//  0x427968: bl #0x61fa28
//  0x42796c: b #0x427774
//
dynamic PartySearchPageState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x427758
  // frame: FP = SP // 0x42775c
  // frame: SP = SP - 0x28 // 0x427760
  local_m8 = x1; // 0x427764
  BARRIER = mem(THR, 0x38); // 0x427768
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x427968
  }
  x1 = 1; // 0x427774
  sub_0x61e890(); // 0x427778
  x0 = local_m8; // 0x427780
  x1 = x0; // 0x42777c
  local_m10 = x1; // 0x427784
  memSet(x1, 0xf, w0); // 0x427788
  SOColors_get_s_06() /* 0x3b82c4 */; // 0x42778c
  x1 = "placeholder_search_party_id" /* pp+0xcb80 */; // 0x427794
  local_m18 = x0; // 0x427798
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x42779c
  getString() /* 0x3a1dcc */; // 0x4277a0
  x0 = local_m8; // 0x4277a8
  x1 = x0; // 0x4277a4
  local_m28 = x1; // 0x4277ac
  w2 = mem(x0, 0x1b); // 0x4277b0
  x2 = ((mem(x0, 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x4277b4
  local_m20 = x2; // 0x4277b8
  AllocationStub_SearchBar2() /* 0x427970 */; // 0x4277bc
  x0 = "" /* pp+0x148 */; // 0x4277c4
  x3 = x0; // 0x4277c0
  local_m8 = x3; // 0x4277c8
  memSet(x3, 0xb, w0); // 0x4277cc
  x1 = local_m28; // 0x4277d0
  memSet(x3, 0xf, w1); // 0x4277d4
  x1 = -1; // 0x4277d8
  memSet(x3, 0x13, x1); // 0x4277dc
  x1 = local_m20; // 0x4277e0
  memSet(x3, 0x1b, w1); // 0x4277e4
  x1 = mem((PP + 0x10000), 0xe50) /* Function */; // 0x4277f0
  x2 = local_m10; // 0x4277e8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4277f4
  x0 = local_m8; // 0x4277fc
  x1 = x0; // 0x4277f8
  memSet(x0, 0x1f, w1); // 0x427800
  x1 = mem((PP + 0x10000), 0xe58) /* Function */; // 0x42780c
  x2 = local_m10; // 0x427804
  AllocationStub__Closure() /* 0x61ec54 */; // 0x427810
  x1 = mem((PP + 0x10000), 0xe60) /* TypeArguments */; // 0x427818
  local_m20 = x0; // 0x42781c
  AllocationStub_Consumer() /* 0x41a414 */; // 0x427820
  x0 = local_m20; // 0x427828
  x3 = x0; // 0x427824
  local_m28 = x3; // 0x42782c
  memSet(x3, 0x13, w0); // 0x427830
  x1 = mem((PP + 0x10000), 0xe68) /* Function */; // 0x42783c
  x2 = local_m10; // 0x427834
  AllocationStub__Closure() /* 0x61ec54 */; // 0x427840
  x1 = mem((PP + 0x10000), 0xe60) /* TypeArguments */; // 0x427848
  local_m10 = x0; // 0x42784c
  AllocationStub_ChangeNotifierProvider() /* 0x3b81c4 */; // 0x427850
  x1 = x0; // 0x427854
  x2 = local_m28; // 0x427858
  x3 = local_m10; // 0x42785c
  x5 = NULL; // 0x427860
  local_m10 = x0; // 0x427864
  InheritedProvider_ctor() /* 0x3b7e8c */; // 0x427868
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x427870
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x427874
  x0 = 1; // 0x42787c
  x3 = x0; // 0x427878
  local_m20 = x3; // 0x427880
  memSet(x3, 0x13, x0); // 0x427884
  x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x42788c
  memSet(x3, 0x1b, w0); // 0x427890
  x0 = local_m10; // 0x427894
  memSet(x3, 0xb, w0); // 0x427898
  x1 = NULL; // 0x42789c
  x2 = 4; // 0x4278a0
  sub_0x61f920(); // 0x4278a4
  x0 = local_m8; // 0x4278ac
  x2 = x0; // 0x4278a8
  local_m10 = x2; // 0x4278b0
  memSet(x2, 0xf, w0); // 0x4278b4
  x0 = local_m20; // 0x4278b8
  memSet(x2, 0x13, w0); // 0x4278bc
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x4278c0
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x4278c4
  x0 = local_m10; // 0x4278cc
  x1 = x0; // 0x4278c8
  local_m8 = x1; // 0x4278d0
  memSet(x1, 0xf, w0); // 0x4278d4
  x0 = 4; // 0x4278d8
  memSet(x1, 0xb, w0); // 0x4278dc
  AllocationStub_Column() /* 0x39310c */; // 0x4278e0
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x4278ec
  x1 = x0; // 0x4278e4
  local_m10 = x1; // 0x4278f0
  memSet(x1, 0xf, w0); // 0x4278f4
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x4278fc
  memSet(x1, 0x13, w0); // 0x427900
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x427908
  memSet(x1, 0x17, w0); // 0x42790c
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x427914
  memSet(x1, 0x1b, w0); // 0x427918
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x427920
  memSet(x1, 0x23, w0); // 0x427924
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x42792c
  memSet(x1, 0x2b, w0); // 0x427930
  memSet(x1, 0x2f, xzr); // 0x427934
  x0 = local_m8; // 0x427938
  memSet(x1, 0xb, w0); // 0x42793c
  AllocationStub_SoulPageScaffold() /* 0x3b7d48 */; // 0x427940
  x1 = "" /* pp+0x148 */; // 0x427944
  memSet(x0, 0xb, w1); // 0x427948
  x1 = local_m18; // 0x42794c
  memSet(x0, 0x17, w1); // 0x427950
  x1 = local_m10; // 0x427954
  memSet(x0, 0x1b, w1); // 0x427958
  SP = FP; // 0x42795c
  // frame: FP, LR, mem(SP), 0x10 // 0x427960
  return;
}

// PartySearchPageState_anon_closure
// raw disassembly:
//  0x42799c: stp FP, LR, [SP, #-0x10]!
//  0x4279a0: mov FP, SP
//  0x4279a4: sub SP, SP, #8
//  0x4279a8: ldr x0, [FP, #0x28]
//  0x4279ac: ldur w1, [x0, #0x17]
//  0x4279b0: add x1, x1, HEAP, lsl #32
//  0x4279b4: ldr BARRIER, [THR, #0x38]
//  0x4279b8: cmp SP, BARRIER
//  0x4279bc: b.ls #0x4279f8
//  0x4279c0: ldur w0, [x1, #0xf]
//  0x4279c4: add x0, x0, HEAP, lsl #32
//  0x4279c8: mov x1, x0
//  0x4279cc: bl #0x427a00
//  0x4279d0: stur x0, [FP, #-8]
//  0x4279d4: bl #0x396460
//  0x4279d8: add x1, PP, #0x10, lsl #12
//  0x4279dc: ldr x1, [x1, #0xc68]
//  0x4279e0: stur w1, [x0, #0xf]
//  0x4279e4: ldur x1, [FP, #-8]
//  0x4279e8: stur w1, [x0, #0xb]
//  0x4279ec: mov SP, FP
//  0x4279f0: ldp FP, LR, [SP], #0x10
//  0x4279f4: ret 
//  0x4279f8: bl #0x61fa28
//  0x4279fc: b #0x4279c0
//
dynamic PartySearchPageState_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42799c
  BARRIER = mem(THR, 0x38); // 0x4279b4
  // frame: FP = SP // 0x4279a0
  // frame: SP = SP - 8 // 0x4279a4
  w1 = mem((local_28), 0x17); // 0x4279ac
  x0 = local_28; // 0x4279a8
  x1 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4279b0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4279f8
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4279c4
  x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4279c8
  PartySearchPageState_buildContent() /* 0x427a00 */; // 0x4279cc
  local_m8 = x0; // 0x4279d0
  AllocationStub_Align() /* 0x396460 */; // 0x4279d4
  x1 = mem((PP + 0x10000), 0xc68) /* Obj!Alignment@11bdd  */; // 0x4279dc
  memSet(x0, 0xf, w1); // 0x4279e0
  x1 = local_m8; // 0x4279e4
  memSet(x0, 0xb, w1); // 0x4279e8
  SP = FP; // 0x4279ec
  // frame: FP, LR, mem(SP), 0x10 // 0x4279f0
  return;
}

// PartySearchPageState_buildContent
// raw disassembly:
//  0x427a00: stp FP, LR, [SP, #-0x10]!
//  0x427a04: mov FP, SP
//  0x427a08: sub SP, SP, #8
//  0x427a0c: mov x0, x1
//  0x427a10: stur x1, [FP, #-8]
//  0x427a14: ldr BARRIER, [THR, #0x38]
//  0x427a18: cmp SP, BARRIER
//  0x427a1c: b.ls #0x427ab8
//  0x427a20: ldur w1, [x0, #0x13]
//  0x427a24: add x1, x1, HEAP, lsl #32
//  0x427a28: ldur w2, [x1, #0x2b]
//  0x427a2c: add x2, x2, HEAP, lsl #32
//  0x427a30: ldur x1, [x2, #7]
//  0x427a34: cmp x1, #1
//  0x427a38: b.gt #0x427a88
//  0x427a3c: cmp x1, #0
//  0x427a40: b.gt #0x427a74
//  0x427a44: add x1, PP, #0xc, lsl #12
//  0x427a48: ldr x1, [x1, #0xb30]
//  0x427a4c: ldr x4, [PP, #0x4c0]
//  0x427a50: bl #0x3a1dcc
//  0x427a54: ldur x1, [FP, #-8]
//  0x427a58: mov x3, x0
//  0x427a5c: add x2, PP, #0x10, lsl #12
//  0x427a60: ldr x2, [x2, #0xe70]
//  0x427a64: bl #0x4290c4
//  0x427a68: mov SP, FP
//  0x427a6c: ldp FP, LR, [SP], #0x10
//  0x427a70: ret 
//  0x427a74: ldur x1, [FP, #-8]
//  0x427a78: bl #0x427ac0
//  0x427a7c: mov SP, FP
//  0x427a80: ldp FP, LR, [SP], #0x10
//  0x427a84: ret 
//  0x427a88: add x1, PP, #0xc, lsl #12
//  0x427a8c: ldr x1, [x1, #0xb70]
//  0x427a90: ldr x4, [PP, #0x4c0]
//  0x427a94: bl #0x3a1dcc
//  0x427a98: ldur x1, [FP, #-8]
//  0x427a9c: mov x3, x0
//  0x427aa0: add x2, PP, #0x10, lsl #12
//  0x427aa4: ldr x2, [x2, #0xe78]
//  0x427aa8: bl #0x4290c4
//  0x427aac: mov SP, FP
//  0x427ab0: ldp FP, LR, [SP], #0x10
//  0x427ab4: ret 
//  0x427ab8: bl #0x61fa28
//  0x427abc: b #0x427a20
//
dynamic PartySearchPageState_buildContent() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x427a00
  // frame: FP = SP // 0x427a04
  // frame: SP = SP - 8 // 0x427a08
  x0 = x1; // 0x427a0c
  local_m8 = x1; // 0x427a10
  BARRIER = mem(THR, 0x38); // 0x427a14
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x427ab8
  }
  w2 = mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x427a28
  x1 = mem((((mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32)), 7); // 0x427a30
  x2 = ((mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x427a2c
  if (x1 > 1) {
    x1 = "search_party_id_result_string" /* pp+0xcb70 */; // 0x427a8c
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x427a90
    getString() /* 0x3a1dcc */; // 0x427a94
    x1 = local_m8; // 0x427a98
    x2 = "assets/images/3.0x/empty_img_search_failed.webp" /* pp+0x10e78 */; // 0x427aa4
    x3 = x0; // 0x427a9c
    PartySearchPageState_buildTipContent() /* 0x4290c4 */; // 0x427aa8
    SP = FP; // 0x427aac
    // frame: FP, LR, mem(SP), 0x10 // 0x427ab0
    return;
  }
  if (x1 > 0) {
    x1 = local_m8; // 0x427a74
    PartySearchPageState_buildRoomList() /* 0x427ac0 */; // 0x427a78
    SP = FP; // 0x427a7c
    // frame: FP, LR, mem(SP), 0x10 // 0x427a80
    return;
  }
  x1 = "search_party_id_page_empty" /* pp+0xcb30 */; // 0x427a48
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x427a4c
  getString() /* 0x3a1dcc */; // 0x427a50
  x1 = local_m8; // 0x427a54
  x2 = "assets/images/3.0x/empty_img_search.webp" /* pp+0x10e70 */; // 0x427a60
  x3 = x0; // 0x427a58
  PartySearchPageState_buildTipContent() /* 0x4290c4 */; // 0x427a64
  SP = FP; // 0x427a68
  // frame: FP, LR, mem(SP), 0x10 // 0x427a6c
  return;
}

// PartySearchPageState_buildRoomList
// raw disassembly:
//  0x427ac0: stp FP, LR, [SP, #-0x10]!
//  0x427ac4: mov FP, SP
//  0x427ac8: sub SP, SP, #0x28
//  0x427acc: stur x1, [FP, #-8]
//  0x427ad0: ldr BARRIER, [THR, #0x38]
//  0x427ad4: cmp SP, BARRIER
//  0x427ad8: b.ls #0x427c24
//  0x427adc: mov x1, #1
//  0x427ae0: bl #0x61e890
//  0x427ae4: mov x3, x0
//  0x427ae8: ldur x0, [FP, #-8]
//  0x427aec: stur x3, [FP, #-0x18]
//  0x427af0: stur w0, [x3, #0xf]
//  0x427af4: ldur w1, [x0, #0x13]
//  0x427af8: add x1, x1, HEAP, lsl #32
//  0x427afc: ldur w2, [x1, #0x3b]
//  0x427b00: add x2, x2, HEAP, lsl #32
//  0x427b04: ldur w1, [x2, #0xb]
//  0x427b08: cbnz w1, #0x427b38
//  0x427b0c: bl #0x391c0c
//  0x427b10: mov x1, x0
//  0x427b14: add x0, PP, #0x10, lsl #12
//  0x427b18: ldr x0, [x0, #0xe80]
//  0x427b1c: stur x1, [FP, #-0x10]
//  0x427b20: stur w0, [x1, #0xf]
//  0x427b24: bl #0x3b3c18
//  0x427b28: mov x1, x0
//  0x427b2c: ldur x0, [FP, #-0x10]
//  0x427b30: stur w1, [x0, #0xb]
//  0x427b34: b #0x427c18
//  0x427b38: ldur w4, [x0, #0x17]
//  0x427b3c: add x4, x4, HEAP, lsl #32
//  0x427b40: stur x4, [FP, #-0x10]
//  0x427b44: add x1, PP, #0x10, lsl #12
//  0x427b48: ldr x1, [x1, #0xe88]
//  0x427b4c: mov x2, NULL
//  0x427b50: bl #0x61ec54
//  0x427b54: stur x0, [FP, #-0x20]
//  0x427b58: bl #0x3ab5b8
//  0x427b5c: mov x2, x0
//  0x427b60: ldur x0, [FP, #-0x20]
//  0x427b64: stur x2, [FP, #-0x28]
//  0x427b68: stur w0, [x2, #0x1b]
//  0x427b6c: add x0, PP, #0xf, lsl #12
//  0x427b70: ldr x0, [x0, #0x898]
//  0x427b74: stur w0, [x2, #0xb]
//  0x427b78: add x17, PP, #0xf, lsl #12
//  0x427b7c: ldr d0, [x17, #0x8a0]
//  0x427b80: stur d0, [x2, #0xf]
//  0x427b84: ldur x1, [FP, #-8]
//  0x427b88: bl #0x427c2c
//  0x427b8c: stur x0, [FP, #-8]
//  0x427b90: bl #0x3ab290
//  0x427b94: mov x3, x0
//  0x427b98: ldur x0, [FP, #-0x10]
//  0x427b9c: stur x3, [FP, #-0x20]
//  0x427ba0: stur w0, [x3, #0x2b]
//  0x427ba4: ldur x0, [FP, #-8]
//  0x427ba8: stur w0, [x3, #0xb]
//  0x427bac: ldur x0, [FP, #-0x28]
//  0x427bb0: stur w0, [x3, #0xf]
//  0x427bb4: add x0, NULL, #0x30
//  0x427bb8: stur w0, [x3, #0x1b]
//  0x427bbc: add x1, NULL, #0x20
//  0x427bc0: stur w1, [x3, #0x13]
//  0x427bc4: stur w0, [x3, #0x17]
//  0x427bc8: ldur x2, [FP, #-0x18]
//  0x427bcc: add x1, PP, #0x10, lsl #12
//  0x427bd0: ldr x1, [x1, #0xe90]
//  0x427bd4: bl #0x61ec54
//  0x427bd8: mov x1, x0
//  0x427bdc: ldur x0, [FP, #-0x20]
//  0x427be0: stur w1, [x0, #0x23]
//  0x427be4: bl #0x3ec08c
//  0x427be8: ldur x2, [FP, #-0x18]
//  0x427bec: add x1, PP, #0x10, lsl #12
//  0x427bf0: ldr x1, [x1, #0xe98]
//  0x427bf4: stur x0, [FP, #-8]
//  0x427bf8: bl #0x61ec54
//  0x427bfc: ldur x1, [FP, #-8]
//  0x427c00: stur w0, [x1, #0x13]
//  0x427c04: ldr x2, [PP, #0x77e0]
//  0x427c08: stur w2, [x1, #0x33]
//  0x427c0c: ldur x2, [FP, #-0x20]
//  0x427c10: stur w2, [x1, #0xb]
//  0x427c14: mov x0, x1
//  0x427c18: mov SP, FP
//  0x427c1c: ldp FP, LR, [SP], #0x10
//  0x427c20: ret 
//  0x427c24: bl #0x61fa28
//  0x427c28: b #0x427adc
//
dynamic PartySearchPageState_buildRoomList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic w1;
  dynamic w2;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x427ac0
  // frame: FP = SP // 0x427ac4
  // frame: SP = SP - 0x28 // 0x427ac8
  local_m8 = x1; // 0x427acc
  BARRIER = mem(THR, 0x38); // 0x427ad0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x427c24
  }
  x1 = 1; // 0x427adc
  sub_0x61e890(); // 0x427ae0
  x0 = local_m8; // 0x427ae8
  x3 = x0; // 0x427ae4
  local_m18 = x3; // 0x427aec
  memSet(x3, 0xf, w0); // 0x427af0
  w1 = mem((((mem((((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32)), 0x3b)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x427b04
  w2 = mem((((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32)), 0x3b); // 0x427afc
  x1 = (mem((((mem((((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32)), 0x3b)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x427b04
  x2 = ((mem((((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32)), 0x3b)) & 0xffffffff) + (HEAP << 32); // 0x427b00
  if (w1 != 0) {
    x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x427b3c
    local_m10 = x4; // 0x427b40
    x1 = mem((PP + 0x10000), 0xe88) /* Function */; // 0x427b48
    x2 = NULL; // 0x427b4c
    AllocationStub__Closure() /* 0x61ec54 */; // 0x427b50
    local_m20 = x0; // 0x427b54
    AllocationStub_CustomFooter() /* 0x3ab5b8 */; // 0x427b58
    x0 = local_m20; // 0x427b60
    x2 = x0; // 0x427b5c
    local_m28 = x2; // 0x427b64
    memSet(x2, 0x1b, w0); // 0x427b68
    x0 = mem((PP + 0xf000), 0x898) /* Obj!LoadStyle@12174  */; // 0x427b70
    memSet(x2, 0xb, w0); // 0x427b74
    d0 = 4631248529308778496; // 0x427b7c
    x17 = PP + 0xf000; // 0x427b78
    memSet(x2, 0xf, d0); // 0x427b80
    x1 = local_m8; // 0x427b84
    PartySearchPageState_buildGridView() /* 0x427c2c */; // 0x427b88
    local_m8 = x0; // 0x427b8c
    AllocationStub_SmartRefresher() /* 0x3ab290 */; // 0x427b90
    x0 = local_m10; // 0x427b98
    x3 = x0; // 0x427b94
    local_m20 = x3; // 0x427b9c
    memSet(x3, 0x2b, w0); // 0x427ba0
    x0 = local_m8; // 0x427ba4
    memSet(x3, 0xb, w0); // 0x427ba8
    x0 = local_m28; // 0x427bac
    memSet(x3, 0xf, w0); // 0x427bb0
    x0 = NULL + 0x30; // 0x427bb4
    memSet(x3, 0x1b, w0); // 0x427bb8
    x1 = NULL + 0x20; // 0x427bbc
    memSet(x3, 0x13, w1); // 0x427bc0
    memSet(x3, 0x17, w0); // 0x427bc4
    x1 = mem((PP + 0x10000), 0xe90) /* Function */; // 0x427bd0
    x2 = local_m18; // 0x427bc8
    AllocationStub__Closure() /* 0x61ec54 */; // 0x427bd4
    x0 = local_m20; // 0x427bdc
    x1 = x0; // 0x427bd8
    memSet(x0, 0x23, w1); // 0x427be0
    AllocationStub_Listener() /* 0x3ec08c */; // 0x427be4
    x1 = mem((PP + 0x10000), 0xe98) /* Function */; // 0x427bf0
    x2 = local_m18; // 0x427be8
    local_m8 = x0; // 0x427bf4
    AllocationStub__Closure() /* 0x61ec54 */; // 0x427bf8
    x1 = local_m8; // 0x427bfc
    memSet(x1, 0x13, w0); // 0x427c00
    x2 = mem(PP, 0x77e0) /* Obj!HitTestBehavior@12263  */; // 0x427c04
    memSet(x1, 0x33, w2); // 0x427c08
    x2 = local_m20; // 0x427c0c
    memSet(x1, 0xb, w2); // 0x427c10
    x0 = x1; // 0x427c14
  } else {
    AllocationStub_Padding() /* 0x391c0c */; // 0x427b0c
    x0 = mem((PP + 0x10000), 0xe80) /* Obj!EdgeInsets@11bab  */; // 0x427b18
    x1 = x0; // 0x427b10
    local_m10 = x1; // 0x427b1c
    memSet(x1, 0xf, w0); // 0x427b20
    AllocationStub_PetalLoading() /* 0x3b3c18 */; // 0x427b24
    x0 = local_m10; // 0x427b2c
    x1 = x0; // 0x427b28
    memSet(x0, 0xb, w1); // 0x427b30
  }
  SP = FP; // 0x427c18
  // frame: FP, LR, mem(SP), 0x10 // 0x427c1c
  return;
}

// PartySearchPageState_buildGridView
// raw disassembly:
//  0x427c2c: stp FP, LR, [SP, #-0x10]!
//  0x427c30: mov FP, SP
//  0x427c34: sub SP, SP, #0x30
//  0x427c38: stur x1, [FP, #-8]
//  0x427c3c: ldr BARRIER, [THR, #0x38]
//  0x427c40: cmp SP, BARRIER
//  0x427c44: b.ls #0x427d0c
//  0x427c48: mov x1, #1
//  0x427c4c: bl #0x61e890
//  0x427c50: mov x1, x0
//  0x427c54: ldur x0, [FP, #-8]
//  0x427c58: stur x1, [FP, #-0x10]
//  0x427c5c: stur w0, [x1, #0xf]
//  0x427c60: bl #0x41ee8c
//  0x427c64: mov x1, x0
//  0x427c68: mov x0, #2
//  0x427c6c: stur x1, [FP, #-0x20]
//  0x427c70: stur x0, [x1, #7]
//  0x427c74: fmov d0, #20.00000000
//  0x427c78: stur d0, [x1, #0xf]
//  0x427c7c: fmov d0, #10.00000000
//  0x427c80: stur d0, [x1, #0x17]
//  0x427c84: fmov d0, #0.75000000
//  0x427c88: stur d0, [x1, #0x1f]
//  0x427c8c: ldur x0, [FP, #-8]
//  0x427c90: ldur w2, [x0, #0x13]
//  0x427c94: add x2, x2, HEAP, lsl #32
//  0x427c98: ldur w0, [x2, #0x3b]
//  0x427c9c: add x0, x0, HEAP, lsl #32
//  0x427ca0: ldur w2, [x0, #0xb]
//  0x427ca4: sbfx x5, x2, #1, #0x1f
//  0x427ca8: stur x5, [FP, #-0x18]
//  0x427cac: bl #0x41b0bc
//  0x427cb0: ldur x2, [FP, #-0x10]
//  0x427cb4: add x1, PP, #0x11, lsl #12
//  0x427cb8: ldr x1, [x1, #0xa0]
//  0x427cbc: stur x0, [FP, #-8]
//  0x427cc0: bl #0x61ec54
//  0x427cc4: stur x0, [FP, #-0x10]
//  0x427cc8: bl #0x41ee80
//  0x427ccc: stur x0, [FP, #-0x28]
//  0x427cd0: add BARRIER, PP, #0x11, lsl #12
//  0x427cd4: ldr BARRIER, [BARRIER, #0xa8]
//  0x427cd8: str BARRIER, [SP]
//  0x427cdc: mov x1, x0
//  0x427ce0: ldur x2, [FP, #-0x20]
//  0x427ce4: ldur x3, [FP, #-0x10]
//  0x427ce8: ldur x5, [FP, #-0x18]
//  0x427cec: ldur x6, [FP, #-8]
//  0x427cf0: add x4, PP, #0x11, lsl #12
//  0x427cf4: ldr x4, [x4, #0xb0]
//  0x427cf8: bl #0x41ec7c
//  0x427cfc: ldur x0, [FP, #-0x28]
//  0x427d00: mov SP, FP
//  0x427d04: ldp FP, LR, [SP], #0x10
//  0x427d08: ret 
//  0x427d0c: bl #0x61fa28
//  0x427d10: b #0x427c48
//
dynamic PartySearchPageState_buildGridView() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic w0;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  // frame: FP, LR, mem(SP, -0x10)! // 0x427c2c
  // frame: FP = SP // 0x427c30
  // frame: SP = SP - 0x30 // 0x427c34
  local_m8 = x1; // 0x427c38
  BARRIER = mem(THR, 0x38); // 0x427c3c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x427d0c
  }
  x1 = 1; // 0x427c48
  sub_0x61e890(); // 0x427c4c
  x0 = local_m8; // 0x427c54
  x1 = x0; // 0x427c50
  local_m10 = x1; // 0x427c58
  memSet(x1, 0xf, w0); // 0x427c5c
  AllocationStub_SliverGridDelegateWithFixedCrossAxisCount() /* 0x41ee8c */; // 0x427c60
  x0 = 2; // 0x427c68
  x1 = x0; // 0x427c64
  local_m20 = x1; // 0x427c6c
  memSet(x1, 7, x0); // 0x427c70
  d0 = 20.00000000 /* bits */; // 0x427c74
  memSet(x1, 0xf, d0); // 0x427c78
  d0 = 10.00000000 /* bits */; // 0x427c7c
  memSet(x1, 0x17, d0); // 0x427c80
  d0 = 0.75000000 /* bits */; // 0x427c84
  memSet(x1, 0x1f, d0); // 0x427c88
  w0 = mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x3b); // 0x427c98
  w2 = mem((local_m8), 0x13); // 0x427c90
  x0 = ((mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x3b)) & 0xffffffff) + (HEAP << 32); // 0x427c9c
  x2 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x427c94
  w2 = mem(x0, 0xb); // 0x427ca0
  x2 = (mem(x0, 0xb)) & 0xffffffff; // 0x427ca0
  x5 = (((mem(x0, 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x427ca4
  local_m18 = x5; // 0x427ca8
  AllocationStub_ClampingScrollPhysics() /* 0x41b0bc */; // 0x427cac
  x1 = mem((PP + 0x11000), 0xa0) /* Function */; // 0x427cb8
  x2 = local_m10; // 0x427cb0
  local_m8 = x0; // 0x427cbc
  AllocationStub__Closure() /* 0x61ec54 */; // 0x427cc0
  local_m10 = x0; // 0x427cc4
  AllocationStub_GridView() /* 0x41ee80 */; // 0x427cc8
  local_m28 = x0; // 0x427ccc
  BARRIER = mem((PP + 0x11000), 0xa8) /* Obj!EdgeInsets@11bb3  */; // 0x427cd4
  local_0 = BARRIER; // 0x427cd8
  x1 = x0; // 0x427cdc
  x2 = local_m20; // 0x427ce0
  x3 = local_m10; // 0x427ce4
  x4 = mem((PP + 0x11000), 0xb0) /* ImmutableArray */; // 0x427cf4
  x5 = local_m18; // 0x427ce8
  x6 = local_m8; // 0x427cec
  GridView_ctor_builder() /* 0x41ec7c */; // 0x427cf8
  SP = FP; // 0x427d00
  x0 = local_m28; // 0x427cfc
  // frame: FP, LR, mem(SP), 0x10 // 0x427d04
  return;
}

// PartySearchPageState_anon_closure_2
// raw disassembly:
//  0x427d14: stp FP, LR, [SP, #-0x10]!
//  0x427d18: mov FP, SP
//  0x427d1c: sub SP, SP, #8
//  0x427d20: ldr x0, [FP, #0x20]
//  0x427d24: ldur w1, [x0, #0x17]
//  0x427d28: add x1, x1, HEAP, lsl #32
//  0x427d2c: ldur w0, [x1, #0xf]
//  0x427d30: add x0, x0, HEAP, lsl #32
//  0x427d34: ldur w1, [x0, #0x13]
//  0x427d38: add x1, x1, HEAP, lsl #32
//  0x427d3c: ldur w2, [x1, #0x3b]
//  0x427d40: add x2, x2, HEAP, lsl #32
//  0x427d44: ldur w0, [x2, #0xb]
//  0x427d48: ldr x1, [FP, #0x10]
//  0x427d4c: sbfx x3, x1, #1, #0x1f
//  0x427d50: tbz w1, #0, #0x427d58
//  0x427d54: ldur x3, [x1, #7]
//  0x427d58: sbfx x1, x0, #1, #0x1f
//  0x427d5c: mov x0, x1
//  0x427d60: mov x1, x3
//  0x427d64: cmp x1, x0
//  0x427d68: b.hs #0x427d9c
//  0x427d6c: ldur w0, [x2, #0xf]
//  0x427d70: add x0, x0, HEAP, lsl #32
//  0x427d74: add BARRIER, x0, x3, lsl #2
//  0x427d78: ldur w1, [BARRIER, #0xf]
//  0x427d7c: add x1, x1, HEAP, lsl #32
//  0x427d80: stur x1, [FP, #-8]
//  0x427d84: bl #0x427da0
//  0x427d88: ldur x1, [FP, #-8]
//  0x427d8c: stur w1, [x0, #0xb]
//  0x427d90: mov SP, FP
//  0x427d94: ldp FP, LR, [SP], #0x10
//  0x427d98: ret 
//  0x427d9c: bl #0x61fe70
//
dynamic PartySearchPageState_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x427d14
  // frame: FP = SP // 0x427d18
  // frame: SP = SP - 8 // 0x427d1c
  w0 = mem((((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf); // 0x427d2c
  w1 = mem((local_20), 0x17); // 0x427d24
  x0 = ((mem((((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x427d30
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x427d28
  w0 = mem((((mem((((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32)), 0x3b)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x427d44
  w1 = mem(x0, 0x13); // 0x427d34
  w2 = mem((((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32)), 0x3b); // 0x427d3c
  x0 = (mem((((mem((((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32)), 0x3b)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x427d44
  x1 = local_10; // 0x427d48
  x2 = ((mem((((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32)), 0x3b)) & 0xffffffff) + (HEAP << 32); // 0x427d40
  x3 = (x1 >> 1) & 0x7fffffff; // 0x427d4c
  if (x1 & (1 << 0) == 0) {
  } else {
    x3 = mem(x1, 7); // 0x427d54
  }
  x0 = (x0 >> 1) & 0x7fffffff; // 0x427d5c
  x1 = x3; // 0x427d60
  if (x1 >= x0) {
    RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x427d9c
  }
  BARRIER = ((w0 & 0xffffffff) + (HEAP << 32)) + (x3 << 2); // 0x427d74
  w1 = mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x3 << 2)), 0xf); // 0x427d78
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x427d70
  x1 = ((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x3 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x427d7c
  local_m8 = x1; // 0x427d80
  AllocationStub__PartyRoomItem() /* 0x427da0 */; // 0x427d84
  x1 = local_m8; // 0x427d88
  memSet(x0, 0xb, w1); // 0x427d8c
  SP = FP; // 0x427d90
  // frame: FP, LR, mem(SP), 0x10 // 0x427d94
  return;
}

// PartySearchPageState_anon_closure_3
// raw disassembly:
//  0x427dac: stp FP, LR, [SP, #-0x10]!
//  0x427db0: mov FP, SP
//  0x427db4: ldr x0, [FP, #0x18]
//  0x427db8: ldur w1, [x0, #0x17]
//  0x427dbc: add x1, x1, HEAP, lsl #32
//  0x427dc0: ldr BARRIER, [THR, #0x38]
//  0x427dc4: cmp SP, BARRIER
//  0x427dc8: b.ls #0x427df4
//  0x427dcc: ldur w0, [x1, #0xf]
//  0x427dd0: add x0, x0, HEAP, lsl #32
//  0x427dd4: ldur w1, [x0, #0x1b]
//  0x427dd8: add x1, x1, HEAP, lsl #32
//  0x427ddc: ldr x4, [PP, #0x4c0]
//  0x427de0: bl #0x30b7fc
//  0x427de4: mov x0, NULL
//  0x427de8: mov SP, FP
//  0x427dec: ldp FP, LR, [SP], #0x10
//  0x427df0: ret 
//  0x427df4: bl #0x61fa28
//  0x427df8: b #0x427dcc
//
dynamic PartySearchPageState_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x427dac
  BARRIER = mem(THR, 0x38); // 0x427dc0
  // frame: FP = SP // 0x427db0
  w1 = mem((local_18), 0x17); // 0x427db8
  x0 = local_18; // 0x427db4
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x427dbc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x427df4
  }
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x1b); // 0x427dd4
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x427dd0
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x427dd8
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x427ddc
  FocusNode_unfocus() /* 0x30b7fc */; // 0x427de0
  SP = FP; // 0x427de8
  x0 = NULL; // 0x427de4
  // frame: FP, LR, mem(SP), 0x10 // 0x427dec
  return;
}

// PartySearchPageState_anon_closure_4
// raw disassembly:
//  0x427dfc: stp FP, LR, [SP, #-0x10]!
//  0x427e00: mov FP, SP
//  0x427e04: sub SP, SP, #8
//  0x427e08: ldr x0, [FP, #0x10]
//  0x427e0c: ldur w1, [x0, #0x17]
//  0x427e10: add x1, x1, HEAP, lsl #32
//  0x427e14: ldr BARRIER, [THR, #0x38]
//  0x427e18: cmp SP, BARRIER
//  0x427e1c: b.ls #0x427e5c
//  0x427e20: ldur w2, [x1, #0xf]
//  0x427e24: add x2, x2, HEAP, lsl #32
//  0x427e28: ldur w0, [x2, #0x13]
//  0x427e2c: add x0, x0, HEAP, lsl #32
//  0x427e30: stur x0, [FP, #-8]
//  0x427e34: add x1, PP, #0x10, lsl #12
//  0x427e38: ldr x1, [x1, #0xea0]
//  0x427e3c: bl #0x61ec54
//  0x427e40: ldur x1, [FP, #-8]
//  0x427e44: mov x2, x0
//  0x427e48: bl #0x427e64
//  0x427e4c: mov x0, NULL
//  0x427e50: mov SP, FP
//  0x427e54: ldp FP, LR, [SP], #0x10
//  0x427e58: ret 
//  0x427e5c: bl #0x61fa28
//  0x427e60: b #0x427e20
//
dynamic PartySearchPageState_anon_closure_4() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x427dfc
  BARRIER = mem(THR, 0x38); // 0x427e14
  // frame: FP = SP // 0x427e00
  // frame: SP = SP - 8 // 0x427e04
  w1 = mem((local_10), 0x17); // 0x427e0c
  x0 = local_10; // 0x427e08
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x427e10
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x427e5c
  }
  w0 = mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x13); // 0x427e28
  x0 = ((mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x427e2c
  x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x427e24
  local_m8 = x0; // 0x427e30
  x1 = mem((PP + 0x10000), 0xea0) /* Function */; // 0x427e38
  AllocationStub__Closure() /* 0x61ec54 */; // 0x427e3c
  x1 = local_m8; // 0x427e40
  x2 = x0; // 0x427e44
  PartySearchNotifier_requestRoomList() /* 0x427e64 */; // 0x427e48
  SP = FP; // 0x427e50
  x0 = NULL; // 0x427e4c
  // frame: FP, LR, mem(SP), 0x10 // 0x427e54
  return;
}

// PartySearchPageState_onLoaded
// raw disassembly:
//  0x42810c: stp FP, LR, [SP, #-0x10]!
//  0x428110: mov FP, SP
//  0x428114: ldr BARRIER, [THR, #0x38]
//  0x428118: cmp SP, BARRIER
//  0x42811c: b.ls #0x428170
//  0x428120: tbnz w2, #4, #0x428150
//  0x428124: tbnz w3, #4, #0x42813c
//  0x428128: ldur w0, [x1, #0x17]
//  0x42812c: add x0, x0, HEAP, lsl #32
//  0x428130: mov x1, x0
//  0x428134: bl #0x3adfd4
//  0x428138: b #0x428160
//  0x42813c: ldur w0, [x1, #0x17]
//  0x428140: add x0, x0, HEAP, lsl #32
//  0x428144: mov x1, x0
//  0x428148: bl #0x3ade48
//  0x42814c: b #0x428160
//  0x428150: ldur w0, [x1, #0x17]
//  0x428154: add x0, x0, HEAP, lsl #32
//  0x428158: mov x1, x0
//  0x42815c: bl #0x3adbb4
//  0x428160: mov x0, NULL
//  0x428164: mov SP, FP
//  0x428168: ldp FP, LR, [SP], #0x10
//  0x42816c: ret 
//  0x428170: bl #0x61fa28
//  0x428174: b #0x428120
//
dynamic PartySearchPageState_onLoaded() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42810c
  BARRIER = mem(THR, 0x38); // 0x428114
  // frame: FP = SP // 0x428110
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x428170
  }
  if (x2 & (1 << 4) != 0) {
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x428154
    x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x428158
    RefreshController_loadFailed() /* 0x3adbb4 */; // 0x42815c
  } else {
    if (x3 & (1 << 4) != 0) {
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x428140
      x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x428144
      RefreshController_loadComplete() /* 0x3ade48 */; // 0x428148
    } else {
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x42812c
      x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x428130
      RefreshController_loadNoData() /* 0x3adfd4 */; // 0x428134
    }
  }
  SP = FP; // 0x428164
  x0 = NULL; // 0x428160
  // frame: FP, LR, mem(SP), 0x10 // 0x428168
  return;
}

// PartySearchPageState_onLoaded_2
// raw disassembly:
//  0x429084: stp FP, LR, [SP, #-0x10]!
//  0x429088: mov FP, SP
//  0x42908c: ldr x0, [FP, #0x20]
//  0x429090: ldur w1, [x0, #0x17]
//  0x429094: add x1, x1, HEAP, lsl #32
//  0x429098: ldr BARRIER, [THR, #0x38]
//  0x42909c: cmp SP, BARRIER
//  0x4290a0: b.ls #0x4290bc
//  0x4290a4: ldr x2, [FP, #0x18]
//  0x4290a8: ldr x3, [FP, #0x10]
//  0x4290ac: bl #0x42810c
//  0x4290b0: mov SP, FP
//  0x4290b4: ldp FP, LR, [SP], #0x10
//  0x4290b8: ret 
//  0x4290bc: bl #0x61fa28
//  0x4290c0: b #0x4290a4
//
dynamic PartySearchPageState_onLoaded_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x429084
  BARRIER = mem(THR, 0x38); // 0x429098
  // frame: FP = SP // 0x429088
  w1 = mem((local_20), 0x17); // 0x429090
  x0 = local_20; // 0x42908c
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x429094
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4290bc
  }
  x2 = local_18; // 0x4290a4
  x3 = local_10; // 0x4290a8
  PartySearchPageState_onLoaded() /* 0x42810c */; // 0x4290ac
  SP = FP; // 0x4290b0
  // frame: FP, LR, mem(SP), 0x10 // 0x4290b4
  return;
}

// PartySearchPageState_buildTipContent
// raw disassembly:
//  0x4290c4: stp FP, LR, [SP, #-0x10]!
//  0x4290c8: mov FP, SP
//  0x4290cc: sub SP, SP, #0x20
//  0x4290d0: stur x2, [FP, #-8]
//  0x4290d4: stur x3, [FP, #-0x10]
//  0x4290d8: ldr BARRIER, [THR, #0x38]
//  0x4290dc: cmp SP, BARRIER
//  0x4290e0: b.ls #0x429294
//  0x4290e4: bl #0x3a142c
//  0x4290e8: mov x1, x0
//  0x4290ec: ldur x0, [FP, #-8]
//  0x4290f0: stur x1, [FP, #-0x18]
//  0x4290f4: stur w0, [x1, #0xb]
//  0x4290f8: add x0, PP, #0x11, lsl #12
//  0x4290fc: ldr x0, [x0, #0xb8]
//  0x429100: stur w0, [x1, #0xf]
//  0x429104: ldr x0, [PP, #0x5458]
//  0x429108: stur w0, [x1, #0x13]
//  0x42910c: add x2, PP, #0x11, lsl #12
//  0x429110: ldr x2, [x2, #0xc0]
//  0x429114: stur w2, [x1, #0x17]
//  0x429118: bl #0x3a6088
//  0x42911c: mov x1, x0
//  0x429120: bl #0x3b7e50
//  0x429124: stur x0, [FP, #-8]
//  0x429128: bl #0x393bf8
//  0x42912c: mov x1, x0
//  0x429130: ldur x0, [FP, #-0x10]
//  0x429134: stur x1, [FP, #-0x20]
//  0x429138: stur w0, [x1, #0xb]
//  0x42913c: ldur x0, [FP, #-8]
//  0x429140: stur w0, [x1, #0x13]
//  0x429144: ldr x0, [PP, #0x53a8]
//  0x429148: stur w0, [x1, #0x1b]
//  0x42914c: bl #0x391c0c
//  0x429150: mov x3, x0
//  0x429154: add x0, PP, #0x11, lsl #12
//  0x429158: ldr x0, [x0, #0xc8]
//  0x42915c: stur x3, [FP, #-8]
//  0x429160: stur w0, [x3, #0xf]
//  0x429164: ldur x0, [FP, #-0x20]
//  0x429168: stur w0, [x3, #0xb]
//  0x42916c: mov x1, NULL
//  0x429170: mov x2, #4
//  0x429174: bl #0x61f920
//  0x429178: mov x2, x0
//  0x42917c: ldur x0, [FP, #-0x18]
//  0x429180: stur x2, [FP, #-0x10]
//  0x429184: stur w0, [x2, #0xf]
//  0x429188: ldur x0, [FP, #-8]
//  0x42918c: stur w0, [x2, #0x13]
//  0x429190: ldr x1, [PP, #0x5c58]
//  0x429194: bl #0x61e854
//  0x429198: mov x1, x0
//  0x42919c: ldur x0, [FP, #-0x10]
//  0x4291a0: stur x1, [FP, #-8]
//  0x4291a4: stur w0, [x1, #0xf]
//  0x4291a8: mov x0, #4
//  0x4291ac: stur w0, [x1, #0xb]
//  0x4291b0: bl #0x39310c
//  0x4291b4: mov x1, x0
//  0x4291b8: add x0, PP, #0xa, lsl #12
//  0x4291bc: ldr x0, [x0, #0x858]
//  0x4291c0: stur x1, [FP, #-0x10]
//  0x4291c4: stur w0, [x1, #0xf]
//  0x4291c8: add x2, PP, #0xe, lsl #12
//  0x4291cc: ldr x2, [x2, #0xae0]
//  0x4291d0: stur w2, [x1, #0x13]
//  0x4291d4: add x2, PP, #0xe, lsl #12
//  0x4291d8: ldr x2, [x2, #0xae8]
//  0x4291dc: stur w2, [x1, #0x17]
//  0x4291e0: add x2, PP, #0xe, lsl #12
//  0x4291e4: ldr x2, [x2, #0xb60]
//  0x4291e8: stur w2, [x1, #0x1b]
//  0x4291ec: add x2, PP, #0xe, lsl #12
//  0x4291f0: ldr x2, [x2, #0xaf8]
//  0x4291f4: stur w2, [x1, #0x23]
//  0x4291f8: add x2, PP, #0xa, lsl #12
//  0x4291fc: ldr x2, [x2, #0xa8]
//  0x429200: stur w2, [x1, #0x2b]
//  0x429204: stur xzr, [x1, #0x2f]
//  0x429208: ldur x2, [FP, #-8]
//  0x42920c: stur w2, [x1, #0xb]
//  0x429210: bl #0x3a1db4
//  0x429214: mov x1, x0
//  0x429218: add x0, PP, #0xa, lsl #12
//  0x42921c: ldr x0, [x0, #0x858]
//  0x429220: stur x1, [FP, #-8]
//  0x429224: stur w0, [x1, #0xb]
//  0x429228: add x0, NULL, #0x30
//  0x42922c: stur w0, [x1, #0xf]
//  0x429230: add x0, PP, #0x11, lsl #12
//  0x429234: ldr x0, [x0, #0xd0]
//  0x429238: stur w0, [x1, #0x13]
//  0x42923c: ldur x0, [FP, #-0x10]
//  0x429240: stur w0, [x1, #0x23]
//  0x429244: ldr x0, [PP, #0x77d8]
//  0x429248: stur w0, [x1, #0x27]
//  0x42924c: add x0, PP, #0xe, lsl #12
//  0x429250: ldr x0, [x0, #0xf10]
//  0x429254: stur w0, [x1, #0x2b]
//  0x429258: add x0, PP, #0xf, lsl #12
//  0x42925c: ldr x0, [x0, #0x140]
//  0x429260: stur w0, [x1, #0x2f]
//  0x429264: add x0, PP, #0xf, lsl #12
//  0x429268: ldr x0, [x0, #0x2f8]
//  0x42926c: stur w0, [x1, #0x37]
//  0x429270: bl #0x3949ec
//  0x429274: ldr x1, [PP, #0x5458]
//  0x429278: stur w1, [x0, #0xf]
//  0x42927c: stur w1, [x0, #0x13]
//  0x429280: ldur x1, [FP, #-8]
//  0x429284: stur w1, [x0, #0xb]
//  0x429288: mov SP, FP
//  0x42928c: ldp FP, LR, [SP], #0x10
//  0x429290: ret 
//  0x429294: bl #0x61fa28
//  0x429298: b #0x4290e4
//
dynamic PartySearchPageState_buildTipContent() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4290c4
  // frame: FP = SP // 0x4290c8
  // frame: SP = SP - 0x20 // 0x4290cc
  local_m8 = x2; // 0x4290d0
  local_m10 = x3; // 0x4290d4
  BARRIER = mem(THR, 0x38); // 0x4290d8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x429294
  }
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x4290e4
  x0 = local_m8; // 0x4290ec
  x1 = x0; // 0x4290e8
  local_m18 = x1; // 0x4290f0
  memSet(x1, 0xb, w0); // 0x4290f4
  x0 = mem((PP + 0x11000), 0xb8) /* Obj!ImageType@12160  */; // 0x4290fc
  memSet(x1, 0xf, w0); // 0x429100
  x0 = mem(PP, 0x5458) /* Double */; // 0x429104
  memSet(x1, 0x13, w0); // 0x429108
  x2 = mem((PP + 0x11000), 0xc0) /* Double */; // 0x429110
  memSet(x1, 0x17, w2); // 0x429114
  SOColors_get_s_05() /* 0x3a6088 */; // 0x429118
  x1 = x0; // 0x42911c
  TextStyles_commonContent() /* 0x3b7e50 */; // 0x429120
  local_m8 = x0; // 0x429124
  AllocationStub_Text() /* 0x393bf8 */; // 0x429128
  x0 = local_m10; // 0x429130
  x1 = x0; // 0x42912c
  local_m20 = x1; // 0x429134
  memSet(x1, 0xb, w0); // 0x429138
  x0 = local_m8; // 0x42913c
  memSet(x1, 0x13, w0); // 0x429140
  x0 = mem(PP, 0x53a8) /* Obj!TextAlign@12316  */; // 0x429144
  memSet(x1, 0x1b, w0); // 0x429148
  AllocationStub_Padding() /* 0x391c0c */; // 0x42914c
  x0 = mem((PP + 0x11000), 0xc8) /* Obj!EdgeInsets@11baa  */; // 0x429158
  x3 = x0; // 0x429150
  local_m8 = x3; // 0x42915c
  memSet(x3, 0xf, w0); // 0x429160
  x0 = local_m20; // 0x429164
  memSet(x3, 0xb, w0); // 0x429168
  x1 = NULL; // 0x42916c
  x2 = 4; // 0x429170
  sub_0x61f920(); // 0x429174
  x0 = local_m18; // 0x42917c
  x2 = x0; // 0x429178
  local_m10 = x2; // 0x429180
  memSet(x2, 0xf, w0); // 0x429184
  x0 = local_m8; // 0x429188
  memSet(x2, 0x13, w0); // 0x42918c
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x429190
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x429194
  x0 = local_m10; // 0x42919c
  x1 = x0; // 0x429198
  local_m8 = x1; // 0x4291a0
  memSet(x1, 0xf, w0); // 0x4291a4
  x0 = 4; // 0x4291a8
  memSet(x1, 0xb, w0); // 0x4291ac
  AllocationStub_Column() /* 0x39310c */; // 0x4291b0
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x4291bc
  x1 = x0; // 0x4291b4
  local_m10 = x1; // 0x4291c0
  memSet(x1, 0xf, w0); // 0x4291c4
  x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x4291cc
  memSet(x1, 0x13, w2); // 0x4291d0
  x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x4291d8
  memSet(x1, 0x17, w2); // 0x4291dc
  x2 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x4291e4
  memSet(x1, 0x1b, w2); // 0x4291e8
  x2 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x4291f0
  memSet(x1, 0x23, w2); // 0x4291f4
  x2 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x4291fc
  memSet(x1, 0x2b, w2); // 0x429200
  memSet(x1, 0x2f, xzr); // 0x429204
  x2 = local_m8; // 0x429208
  memSet(x1, 0xb, w2); // 0x42920c
  AllocationStub_SingleChildScrollView() /* 0x3a1db4 */; // 0x429210
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x42921c
  x1 = x0; // 0x429214
  local_m8 = x1; // 0x429220
  memSet(x1, 0xb, w0); // 0x429224
  x0 = NULL + 0x30; // 0x429228
  memSet(x1, 0xf, w0); // 0x42922c
  x0 = mem((PP + 0x11000), 0xd0) /* Obj!EdgeInsets@11bb4  */; // 0x429234
  memSet(x1, 0x13, w0); // 0x429238
  x0 = local_m10; // 0x42923c
  memSet(x1, 0x23, w0); // 0x429240
  x0 = mem(PP, 0x77d8) /* Obj!DragStartBehavior@122d8  */; // 0x429244
  memSet(x1, 0x27, w0); // 0x429248
  x0 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x429250
  memSet(x1, 0x2b, w0); // 0x429254
  x0 = mem((PP + 0xf000), 0x140) /* Obj!HitTestBehavior@12262  */; // 0x42925c
  memSet(x1, 0x2f, w0); // 0x429260
  x0 = mem((PP + 0xf000), 0x2f8); // 0x429268
  memSet(x1, 0x37, w0); // 0x42926c
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x429270
  x1 = mem(PP, 0x5458) /* Double */; // 0x429274
  memSet(x0, 0xf, w1); // 0x429278
  memSet(x0, 0x13, w1); // 0x42927c
  x1 = local_m8; // 0x429280
  memSet(x0, 0xb, w1); // 0x429284
  SP = FP; // 0x429288
  // frame: FP, LR, mem(SP), 0x10 // 0x42928c
  return;
}

// PartySearchPageState_anon_closure_5
// raw disassembly:
//  0x42929c: stp FP, LR, [SP, #-0x10]!
//  0x4292a0: mov FP, SP
//  0x4292a4: sub SP, SP, #8
//  0x4292a8: ldr x0, [FP, #0x18]
//  0x4292ac: ldur w3, [x0, #0x17]
//  0x4292b0: add x3, x3, HEAP, lsl #32
//  0x4292b4: stur x3, [FP, #-8]
//  0x4292b8: ldr BARRIER, [THR, #0x38]
//  0x4292bc: cmp SP, BARRIER
//  0x4292c0: b.ls #0x429350
//  0x4292c4: ldr x0, [FP, #0x10]
//  0x4292c8: cmp w0, w22
//  0x4292cc: b.eq #0x429340
//  0x4292d0: ldur w1, [x0, #7]
//  0x4292d4: cbz w1, #0x429340
//  0x4292d8: ldur w1, [x3, #0xf]
//  0x4292dc: add x1, x1, HEAP, lsl #32
//  0x4292e0: ldur w2, [x1, #0x17]
//  0x4292e4: add x2, x2, HEAP, lsl #32
//  0x4292e8: ldur w1, [x2, #0xf]
//  0x4292ec: add x1, x1, HEAP, lsl #32
//  0x4292f0: cmp w1, w22
//  0x4292f4: b.ne #0x429300
//  0x4292f8: mov x0, x3
//  0x4292fc: b #0x429310
//  0x429300: add x2, PP, #0xb, lsl #12
//  0x429304: ldr x2, [x2, #0x7b0]
//  0x429308: bl #0x3add40
//  0x42930c: ldur x0, [FP, #-8]
//  0x429310: ldur w2, [x0, #0xf]
//  0x429314: add x2, x2, HEAP, lsl #32
//  0x429318: ldur w0, [x2, #0x13]
//  0x42931c: add x0, x0, HEAP, lsl #32
//  0x429320: stur x0, [FP, #-8]
//  0x429324: add x1, PP, #0x10, lsl #12
//  0x429328: ldr x1, [x1, #0xea0]
//  0x42932c: bl #0x61ec54
//  0x429330: ldur x1, [FP, #-8]
//  0x429334: ldr x2, [FP, #0x10]
//  0x429338: mov x3, x0
//  0x42933c: bl #0x429358
//  0x429340: mov x0, NULL
//  0x429344: mov SP, FP
//  0x429348: ldp FP, LR, [SP], #0x10
//  0x42934c: ret 
//  0x429350: bl #0x61fa28
//  0x429354: b #0x4292c4
//
dynamic PartySearchPageState_anon_closure_5() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x42929c
  // frame: FP = SP // 0x4292a0
  // frame: SP = SP - 8 // 0x4292a4
  w3 = mem((local_18), 0x17); // 0x4292ac
  x0 = local_18; // 0x4292a8
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4292b0
  local_m8 = x3; // 0x4292b4
  BARRIER = mem(THR, 0x38); // 0x4292b8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x429350
  }
  x0 = local_10; // 0x4292c4
  if (w0 == w22) {
  } else {
    x1 = w1 & 0xffffffff; // 0x4292d0
    if (w1 == 0) {
    } else {
      w1 = mem((((mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf); // 0x4292e8
      w2 = mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4292e0
      x1 = (mem((((mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff; // 0x4292e8
      x2 = ((mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4292e4
      x1 = x1 + (HEAP << 32); // 0x4292ec
      if (w1 != w22) {
        x2 = mem((PP + 0xb000), 0x7b0) /* Obj!LoadStatus@12178  */; // 0x429304
        RefreshNotifier_value_assign() /* 0x3add40 */; // 0x429308
        x0 = local_m8; // 0x42930c
      } else {
        x0 = x3; // 0x4292f8
      }
      w0 = mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x13); // 0x429318
      x0 = ((mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x42931c
      x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x429314
      local_m8 = x0; // 0x429320
      x1 = mem((PP + 0x10000), 0xea0) /* Function */; // 0x429328
      AllocationStub__Closure() /* 0x61ec54 */; // 0x42932c
      x1 = local_m8; // 0x429330
      x2 = local_10; // 0x429334
      x3 = x0; // 0x429338
      PartySearchNotifier_searchRoom() /* 0x429358 */; // 0x42933c
    }
  }
  SP = FP; // 0x429344
  x0 = NULL; // 0x429340
  // frame: FP, LR, mem(SP), 0x10 // 0x429348
  return;
}

// PartySearchPageState_dispose
// raw disassembly:
//  0x45140c: stp FP, LR, [SP, #-0x10]!
//  0x451410: mov FP, SP
//  0x451414: sub SP, SP, #8
//  0x451418: mov x0, x1
//  0x45141c: stur x1, [FP, #-8]
//  0x451420: ldr BARRIER, [THR, #0x38]
//  0x451424: cmp SP, BARRIER
//  0x451428: b.ls #0x451450
//  0x45142c: ldur w1, [x0, #0x17]
//  0x451430: add x1, x1, HEAP, lsl #32
//  0x451434: bl #0x45132c
//  0x451438: ldur x1, [FP, #-8]
//  0x45143c: bl #0x451970
//  0x451440: mov x0, NULL
//  0x451444: mov SP, FP
//  0x451448: ldp FP, LR, [SP], #0x10
//  0x45144c: ret 
//  0x451450: bl #0x61fa28
//  0x451454: b #0x45142c
//
dynamic PartySearchPageState_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x45140c
  // frame: FP = SP // 0x451410
  // frame: SP = SP - 8 // 0x451414
  x0 = x1; // 0x451418
  local_m8 = x1; // 0x45141c
  BARRIER = mem(THR, 0x38); // 0x451420
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x451450
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x451430
  RefreshController_dispose() /* 0x45132c */; // 0x451434
  x1 = local_m8; // 0x451438
  SoulState_dispose() /* 0x451970 */; // 0x45143c
  SP = FP; // 0x451444
  x0 = NULL; // 0x451440
  // frame: FP, LR, mem(SP), 0x10 // 0x451448
  return;
}

// PartySearchPageState_ctor
// raw disassembly:
//  0x4c460c: stp FP, LR, [SP, #-0x10]!
//  0x4c4610: mov FP, SP
//  0x4c4614: sub SP, SP, #0x10
//  0x4c4618: stur x1, [FP, #-8]
//  0x4c461c: ldr BARRIER, [THR, #0x38]
//  0x4c4620: cmp SP, BARRIER
//  0x4c4624: b.ls #0x4c46d8
//  0x4c4628: bl #0x4c48d0
//  0x4c462c: mov x1, x0
//  0x4c4630: stur x0, [FP, #-0x10]
//  0x4c4634: bl #0x4c47fc
//  0x4c4638: ldur x0, [FP, #-0x10]
//  0x4c463c: ldur x1, [FP, #-8]
//  0x4c4640: stur w0, [x1, #0x13]
//  0x4c4644: ldurb w16, [x1, #-1]
//  0x4c4648: ldurb w17, [x0, #-1]
//  0x4c464c: and BARRIER, x17, BARRIER, lsr #2
//  0x4c4650: tst BARRIER, HEAP, lsr #32
//  0x4c4654: b.eq #0x4c465c
//  0x4c4658: bl #0x61e04c
//  0x4c465c: bl #0x4c47f0
//  0x4c4660: mov x1, x0
//  0x4c4664: stur x0, [FP, #-0x10]
//  0x4c4668: bl #0x4c46e0
//  0x4c466c: ldur x0, [FP, #-0x10]
//  0x4c4670: ldur x1, [FP, #-8]
//  0x4c4674: stur w0, [x1, #0x17]
//  0x4c4678: ldurb w16, [x1, #-1]
//  0x4c467c: ldurb w17, [x0, #-1]
//  0x4c4680: and BARRIER, x17, BARRIER, lsr #2
//  0x4c4684: tst BARRIER, HEAP, lsr #32
//  0x4c4688: b.eq #0x4c4690
//  0x4c468c: bl #0x61e04c
//  0x4c4690: bl #0x4c1b28
//  0x4c4694: mov x1, x0
//  0x4c4698: stur x0, [FP, #-0x10]
//  0x4c469c: ldr x4, [PP, #0x4c0]
//  0x4c46a0: bl #0x3d2078
//  0x4c46a4: ldur x0, [FP, #-0x10]
//  0x4c46a8: ldur x1, [FP, #-8]
//  0x4c46ac: stur w0, [x1, #0x1b]
//  0x4c46b0: ldurb w16, [x1, #-1]
//  0x4c46b4: ldurb w17, [x0, #-1]
//  0x4c46b8: and BARRIER, x17, BARRIER, lsr #2
//  0x4c46bc: tst BARRIER, HEAP, lsr #32
//  0x4c46c0: b.eq #0x4c46c8
//  0x4c46c4: bl #0x61e04c
//  0x4c46c8: mov x0, NULL
//  0x4c46cc: mov SP, FP
//  0x4c46d0: ldp FP, LR, [SP], #0x10
//  0x4c46d4: ret 
//  0x4c46d8: bl #0x61fa28
//  0x4c46dc: b #0x4c4628
//
dynamic PartySearchPageState_ctor() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c460c
  // frame: FP = SP // 0x4c4610
  // frame: SP = SP - 0x10 // 0x4c4614
  local_m8 = x1; // 0x4c4618
  BARRIER = mem(THR, 0x38); // 0x4c461c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c46d8
  }
  AllocationStub_PartySearchNotifier() /* 0x4c48d0 */; // 0x4c4628
  x1 = x0; // 0x4c462c
  local_m10 = x0; // 0x4c4630
  PartySearchNotifier_ctor() /* 0x4c47fc */; // 0x4c4634
  x0 = local_m10; // 0x4c4638
  x1 = local_m8; // 0x4c463c
  memSet(x1, 0x13, w0); // 0x4c4640
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c464c
  w16 = mem(x1, -1); // 0x4c4644
  w17 = mem(x0, -1); // 0x4c4648
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c4644
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c4648
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c4658
  }
  AllocationStub_RefreshController() /* 0x4c47f0 */; // 0x4c465c
  x1 = x0; // 0x4c4660
  local_m10 = x0; // 0x4c4664
  RefreshController_ctor() /* 0x4c46e0 */; // 0x4c4668
  x0 = local_m10; // 0x4c466c
  x1 = local_m8; // 0x4c4670
  memSet(x1, 0x17, w0); // 0x4c4674
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c4680
  w16 = mem(x1, -1); // 0x4c4678
  w17 = mem(x0, -1); // 0x4c467c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c4678
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c467c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c468c
  }
  AllocationStub_FocusNode() /* 0x4c1b28 */; // 0x4c4690
  x1 = x0; // 0x4c4694
  local_m10 = x0; // 0x4c4698
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4c469c
  FocusNode_ctor() /* 0x3d2078 */; // 0x4c46a0
  x0 = local_m10; // 0x4c46a4
  x1 = local_m8; // 0x4c46a8
  memSet(x1, 0x1b, w0); // 0x4c46ac
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c46b8
  w16 = mem(x1, -1); // 0x4c46b0
  w17 = mem(x0, -1); // 0x4c46b4
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c46b0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c46b4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c46c4
  }
  SP = FP; // 0x4c46cc
  x0 = NULL; // 0x4c46c8
  // frame: FP, LR, mem(SP), 0x10 // 0x4c46d0
  return;
}

// PartySearchPage_createState
// raw disassembly:
//  0x4c45c4: stp FP, LR, [SP, #-0x10]!
//  0x4c45c8: mov FP, SP
//  0x4c45cc: sub SP, SP, #8
//  0x4c45d0: ldr BARRIER, [THR, #0x38]
//  0x4c45d4: cmp SP, BARRIER
//  0x4c45d8: b.ls #0x4c4604
//  0x4c45dc: add x1, PP, #0xb, lsl #12
//  0x4c45e0: ldr x1, [x1, #0x790]
//  0x4c45e4: bl #0x4c48dc
//  0x4c45e8: mov x1, x0
//  0x4c45ec: stur x0, [FP, #-8]
//  0x4c45f0: bl #0x4c460c
//  0x4c45f4: ldur x0, [FP, #-8]
//  0x4c45f8: mov SP, FP
//  0x4c45fc: ldp FP, LR, [SP], #0x10
//  0x4c4600: ret 
//  0x4c4604: bl #0x61fa28
//  0x4c4608: b #0x4c45dc
//
dynamic PartySearchPage_createState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c45c4
  BARRIER = mem(THR, 0x38); // 0x4c45d0
  // frame: FP = SP // 0x4c45c8
  // frame: SP = SP - 8 // 0x4c45cc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c4604
  }
  x1 = mem((PP + 0xb000), 0x790) /* TypeArguments */; // 0x4c45e0
  AllocationStub__PartySearchPageState() /* 0x4c48dc */; // 0x4c45e4
  x1 = x0; // 0x4c45e8
  local_m8 = x0; // 0x4c45ec
  PartySearchPageState_ctor() /* 0x4c460c */; // 0x4c45f0
  SP = FP; // 0x4c45f8
  x0 = local_m8; // 0x4c45f4
  // frame: FP, LR, mem(SP), 0x10 // 0x4c45fc
  return;
}
