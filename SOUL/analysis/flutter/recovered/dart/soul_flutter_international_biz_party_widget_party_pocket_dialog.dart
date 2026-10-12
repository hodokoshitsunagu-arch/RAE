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

dynamic AllocationStub_AutoSizeText, AllocationStub_BorderRadius;
dynamic AllocationStub_BoxConstraints, AllocationStub_BoxDecoration, AllocationStub_ClipPath;
dynamic AllocationStub_Color, AllocationStub_Column, AllocationStub_Container;
dynamic AllocationStub_Expanded, AllocationStub_LinearGradient, AllocationStub_Paint;
dynamic AllocationStub_PartyPocketShapeBorder, AllocationStub_Radius, AllocationStub_Rect;
dynamic AllocationStub_SOAssetImage, AllocationStub_ShapeBorderClipper;
dynamic AllocationStub_SizedBox, AllocationStub_Stack, AllocationStub_TextStyle;
dynamic AllocationStub__Closure, AllocationStub__GrowableList;
dynamic AllocationStub__PartyPocketDialogState, BARRIER, ByteData_factory_ctor, Container_ctor;
dynamic FP, GestureDetector_ctor, HEAP, LR, LinearGradient_createShader, NULL;
dynamic NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0, PP;
dynamic PagePKGameBetTabRecordState_anon_closure, Paint_ensureObjectsInitialized;
dynamic SOColors_get_color_ff6b17, SOColors_get_color_fff59c, SOEventBus_addEventListener;
dynamic SOEventBus_removeEventListener, SP, ScreenUtil_getScreenHeight;
dynamic ScreenUtil_getScreenWidth, SoulState_dispose;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, WriteBarrierStub_x1, d0, d1, d2;
dynamic d3, local_0, local_m10, local_m18, local_m20, local_m28, local_m30, local_m38;
dynamic local_m40, local_m48, local_m50, local_m58, local_m60, local_m68, local_m8;
dynamic sub_0x3a1d94, sub_0x61f920, v0_16b, v1_16b, w0, w1, w16, w17, w2, w22, w3, w4, x0, x1;
dynamic x16, x17, x2, x21, x3, x4, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$party$widget$party_pocket_dialog
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PartyPocketDialogState_build
// raw disassembly:
//  0x42b758: stp FP, LR, [SP, #-0x10]!
//  0x42b75c: mov FP, SP
//  0x42b760: sub SP, SP, #0x90
//  0x42b764: mov x0, x2
//  0x42b768: stur x2, [FP, #-0x10]
//  0x42b76c: mov x2, x1
//  0x42b770: stur x1, [FP, #-8]
//  0x42b774: ldr BARRIER, [THR, #0x38]
//  0x42b778: cmp SP, BARRIER
//  0x42b77c: b.ls #0x42c038
//  0x42b780: mov x1, x0
//  0x42b784: bl #0x3a877c
//  0x42b788: ldur x1, [FP, #-0x10]
//  0x42b78c: stur d0, [FP, #-0x58]
//  0x42b790: bl #0x3b5484
//  0x42b794: mov v1.16b, v0.16b
//  0x42b798: ldr d0, [PP, #0x66a0]
//  0x42b79c: stur d1, [FP, #-0x68]
//  0x42b7a0: fmul d2, d1, d0
//  0x42b7a4: stur d2, [FP, #-0x60]
//  0x42b7a8: bl #0x2b8e80
//  0x42b7ac: ldr d0, [PP, #0xb90]
//  0x42b7b0: stur x0, [FP, #-0x10]
//  0x42b7b4: stur d0, [x0, #7]
//  0x42b7b8: stur d0, [x0, #0xf]
//  0x42b7bc: ldur d1, [FP, #-0x60]
//  0x42b7c0: stur d1, [x0, #0x17]
//  0x42b7c4: stur d1, [x0, #0x1f]
//  0x42b7c8: bl #0x391a04
//  0x42b7cc: stur x0, [FP, #-0x18]
//  0x42b7d0: ldur BARRIER, [FP, #-0x10]
//  0x42b7d4: add LR, PP, #0xa, lsl #12
//  0x42b7d8: ldr LR, [LR, #0x3c0]
//  0x42b7dc: stp LR, BARRIER, [SP]
//  0x42b7e0: mov x1, x0
//  0x42b7e4: add x4, PP, #0x10, lsl #12
//  0x42b7e8: ldr x4, [x4, #0xc98]
//  0x42b7ec: bl #0x391490
//  0x42b7f0: bl #0x3a1d94
//  0x42b7f4: stur x0, [FP, #-0x10]
//  0x42b7f8: add BARRIER, PP, #0xf, lsl #12
//  0x42b7fc: ldr BARRIER, [BARRIER, #0x318]
//  0x42b800: ldur LR, [FP, #-0x18]
//  0x42b804: stp LR, BARRIER, [SP]
//  0x42b808: mov x1, x0
//  0x42b80c: add x4, PP, #0xc, lsl #12
//  0x42b810: ldr x4, [x4, #0x208]
//  0x42b814: bl #0x3a18c4
//  0x42b818: bl #0x2b8e80
//  0x42b81c: ldr d0, [PP, #0xb90]
//  0x42b820: stur x0, [FP, #-0x18]
//  0x42b824: stur d0, [x0, #7]
//  0x42b828: stur d0, [x0, #0xf]
//  0x42b82c: ldr d1, [PP, #0x6688]
//  0x42b830: stur d1, [x0, #0x17]
//  0x42b834: stur d1, [x0, #0x1f]
//  0x42b838: bl #0x42c0a0
//  0x42b83c: stur x0, [FP, #-0x20]
//  0x42b840: bl #0x42c05c
//  0x42b844: mov x1, NULL
//  0x42b848: mov x2, #4
//  0x42b84c: stur x0, [FP, #-0x28]
//  0x42b850: bl #0x61f920
//  0x42b854: mov x2, x0
//  0x42b858: ldur x0, [FP, #-0x20]
//  0x42b85c: stur x2, [FP, #-0x30]
//  0x42b860: stur w0, [x2, #0xf]
//  0x42b864: ldur x0, [FP, #-0x28]
//  0x42b868: stur w0, [x2, #0x13]
//  0x42b86c: add x1, PP, #0x10, lsl #12
//  0x42b870: ldr x1, [x1, #0xc58]
//  0x42b874: bl #0x61e854
//  0x42b878: mov x1, x0
//  0x42b87c: ldur x0, [FP, #-0x30]
//  0x42b880: stur x1, [FP, #-0x20]
//  0x42b884: stur w0, [x1, #0xf]
//  0x42b888: mov x2, #4
//  0x42b88c: stur w2, [x1, #0xb]
//  0x42b890: bl #0x3a108c
//  0x42b894: mov x1, x0
//  0x42b898: add x0, PP, #0x10, lsl #12
//  0x42b89c: ldr x0, [x0, #0xc68]
//  0x42b8a0: stur x1, [FP, #-0x28]
//  0x42b8a4: stur w0, [x1, #0x13]
//  0x42b8a8: add x2, PP, #0x10, lsl #12
//  0x42b8ac: ldr x2, [x2, #0xc70]
//  0x42b8b0: stur w2, [x1, #0x17]
//  0x42b8b4: add x3, PP, #0x10, lsl #12
//  0x42b8b8: ldr x3, [x3, #0xc78]
//  0x42b8bc: stur w3, [x1, #0x1b]
//  0x42b8c0: ldur x4, [FP, #-0x20]
//  0x42b8c4: stur w4, [x1, #7]
//  0x42b8c8: bl #0x352b04
//  0x42b8cc: add x17, PP, #0x14, lsl #12
//  0x42b8d0: ldr d0, [x17, #0xca0]
//  0x42b8d4: stur x0, [FP, #-0x20]
//  0x42b8d8: stur d0, [x0, #7]
//  0x42b8dc: stur d0, [x0, #0xf]
//  0x42b8e0: bl #0x352b04
//  0x42b8e4: add x17, PP, #0x14, lsl #12
//  0x42b8e8: ldr d0, [x17, #0xca0]
//  0x42b8ec: stur x0, [FP, #-0x30]
//  0x42b8f0: stur d0, [x0, #7]
//  0x42b8f4: stur d0, [x0, #0xf]
//  0x42b8f8: bl #0x392f28
//  0x42b8fc: mov x1, x0
//  0x42b900: ldur x0, [FP, #-0x20]
//  0x42b904: stur x1, [FP, #-0x38]
//  0x42b908: stur w0, [x1, #7]
//  0x42b90c: ldur x0, [FP, #-0x30]
//  0x42b910: stur w0, [x1, #0xb]
//  0x42b914: add x0, PP, #0xa, lsl #12
//  0x42b918: ldr x0, [x0, #0x510]
//  0x42b91c: stur w0, [x1, #0xf]
//  0x42b920: stur w0, [x1, #0x13]
//  0x42b924: bl #0x391dd8
//  0x42b928: mov x1, x0
//  0x42b92c: ldur x0, [FP, #-0x38]
//  0x42b930: stur x1, [FP, #-0x20]
//  0x42b934: stur w0, [x1, #0x13]
//  0x42b938: ldur x0, [FP, #-0x28]
//  0x42b93c: stur w0, [x1, #0x1b]
//  0x42b940: add x0, PP, #0xe, lsl #12
//  0x42b944: ldr x0, [x0, #0xb78]
//  0x42b948: stur w0, [x1, #0x23]
//  0x42b94c: mov BARRIER, #0x88
//  0x42b950: stp BARRIER, NULL, [SP]
//  0x42b954: bl #0x297550
//  0x42b958: stur x0, [FP, #-0x28]
//  0x42b95c: bl #0x2eeee8
//  0x42b960: mov x1, x0
//  0x42b964: ldur x0, [FP, #-0x28]
//  0x42b968: stur x1, [FP, #-0x30]
//  0x42b96c: stur w0, [x1, #7]
//  0x42b970: bl #0x31d844
//  0x42b974: mov x1, x0
//  0x42b978: ldr x0, [PP, #0x6310]
//  0x42b97c: stur x1, [FP, #-0x28]
//  0x42b980: stur w0, [x1, #0x27]
//  0x42b984: fmov d0, #1.00000000
//  0x42b988: stur d0, [x1, #7]
//  0x42b98c: stur d0, [x1, #0xf]
//  0x42b990: add x17, PP, #0xf, lsl #12
//  0x42b994: ldr d1, [x17, #0xd60]
//  0x42b998: stur d1, [x1, #0x17]
//  0x42b99c: add x17, PP, #0x10, lsl #12
//  0x42b9a0: ldr d1, [x17, #0xad0]
//  0x42b9a4: stur d1, [x1, #0x1f]
//  0x42b9a8: bl #0x31d844
//  0x42b9ac: mov x3, x0
//  0x42b9b0: ldr x0, [PP, #0x6310]
//  0x42b9b4: stur x3, [FP, #-0x38]
//  0x42b9b8: stur w0, [x3, #0x27]
//  0x42b9bc: ldr d0, [PP, #0x7060]
//  0x42b9c0: stur d0, [x3, #7]
//  0x42b9c4: fmov d0, #1.00000000
//  0x42b9c8: stur d0, [x3, #0xf]
//  0x42b9cc: add x17, PP, #0x14, lsl #12
//  0x42b9d0: ldr d1, [x17, #0xca8]
//  0x42b9d4: stur d1, [x3, #0x17]
//  0x42b9d8: stur xzr, [x3, #0x1f]
//  0x42b9dc: mov x1, NULL
//  0x42b9e0: mov x2, #4
//  0x42b9e4: bl #0x61f920
//  0x42b9e8: mov x2, x0
//  0x42b9ec: ldur x0, [FP, #-0x28]
//  0x42b9f0: stur x2, [FP, #-0x40]
//  0x42b9f4: stur w0, [x2, #0xf]
//  0x42b9f8: ldur x0, [FP, #-0x38]
//  0x42b9fc: stur w0, [x2, #0x13]
//  0x42ba00: add x1, PP, #0x10, lsl #12
//  0x42ba04: ldr x1, [x1, #0xc58]
//  0x42ba08: bl #0x61e854
//  0x42ba0c: mov x1, x0
//  0x42ba10: ldur x0, [FP, #-0x40]
//  0x42ba14: stur x1, [FP, #-0x28]
//  0x42ba18: stur w0, [x1, #0xf]
//  0x42ba1c: mov x2, #4
//  0x42ba20: stur w2, [x1, #0xb]
//  0x42ba24: bl #0x3a108c
//  0x42ba28: mov x1, x0
//  0x42ba2c: add x0, PP, #0x10, lsl #12
//  0x42ba30: ldr x0, [x0, #0xc68]
//  0x42ba34: stur x1, [FP, #-0x38]
//  0x42ba38: stur w0, [x1, #0x13]
//  0x42ba3c: add x2, PP, #0x10, lsl #12
//  0x42ba40: ldr x2, [x2, #0xc70]
//  0x42ba44: stur w2, [x1, #0x17]
//  0x42ba48: add x3, PP, #0x10, lsl #12
//  0x42ba4c: ldr x3, [x3, #0xc78]
//  0x42ba50: stur w3, [x1, #0x1b]
//  0x42ba54: ldur x4, [FP, #-0x28]
//  0x42ba58: stur w4, [x1, #7]
//  0x42ba5c: ldur d0, [FP, #-0x58]
//  0x42ba60: eor v1.16b, v1.16b, v1.16b
//  0x42ba64: fadd d2, d0, d1
//  0x42ba68: ldur d0, [FP, #-0x68]
//  0x42ba6c: stur d2, [FP, #-0x60]
//  0x42ba70: fadd d3, d0, d1
//  0x42ba74: stur d3, [FP, #-0x58]
//  0x42ba78: bl #0x2984c0
//  0x42ba7c: stur xzr, [x0, #7]
//  0x42ba80: stur xzr, [x0, #0xf]
//  0x42ba84: ldur d0, [FP, #-0x60]
//  0x42ba88: stur d0, [x0, #0x17]
//  0x42ba8c: ldur d0, [FP, #-0x58]
//  0x42ba90: stur d0, [x0, #0x1f]
//  0x42ba94: ldur x1, [FP, #-0x38]
//  0x42ba98: mov x2, x0
//  0x42ba9c: ldr x4, [PP, #0x278]
//  0x42baa0: bl #0x3b4f80
//  0x42baa4: ldur x1, [FP, #-0x30]
//  0x42baa8: stur x0, [FP, #-0x28]
//  0x42baac: bl #0x35f1e8
//  0x42bab0: ldur x1, [x0, #-1]
//  0x42bab4: ubfx x1, x1, #0xc, #0x14
//  0x42bab8: stp xzr, x0, [SP, #8]
//  0x42babc: ldur BARRIER, [FP, #-0x28]
//  0x42bac0: str BARRIER, [SP]
//  0x42bac4: mov x0, x1
//  0x42bac8: sub LR, x0, #0xfa2
//  0x42bacc: ldr LR, [x21, LR, lsl #3]
//  0x42bad0: blr LR
//  0x42bad4: bl #0x31abec
//  0x42bad8: mov x1, x0
//  0x42badc: add x0, NULL, #0x20
//  0x42bae0: stur x1, [FP, #-0x28]
//  0x42bae4: stur w0, [x1, #7]
//  0x42bae8: add x2, PP, #0xa, lsl #12
//  0x42baec: ldr x2, [x2, #0x4e0]
//  0x42baf0: stur w2, [x1, #0x1f]
//  0x42baf4: add x2, PP, #0x10, lsl #12
//  0x42baf8: ldr x2, [x2, #0x948]
//  0x42bafc: stur w2, [x1, #0x23]
//  0x42bb00: add x2, PP, #0x12, lsl #12
//  0x42bb04: ldr x2, [x2, #0x208]
//  0x42bb08: stur w2, [x1, #0x27]
//  0x42bb0c: ldur x2, [FP, #-0x30]
//  0x42bb10: stur w2, [x1, #0x43]
//  0x42bb14: bl #0x42c050
//  0x42bb18: mov x1, x0
//  0x42bb1c: add x0, PP, #0x14, lsl #12
//  0x42bb20: ldr x0, [x0, #0xcb0]
//  0x42bb24: stur x1, [FP, #-0x30]
//  0x42bb28: stur w0, [x1, #0xf]
//  0x42bb2c: ldur x0, [FP, #-0x28]
//  0x42bb30: stur w0, [x1, #0x17]
//  0x42bb34: fmov d0, #12.00000000
//  0x42bb38: stur d0, [x1, #0x1f]
//  0x42bb3c: ldr d1, [PP, #0xb90]
//  0x42bb40: stur d1, [x1, #0x27]
//  0x42bb44: fmov d2, #1.00000000
//  0x42bb48: stur d2, [x1, #0x2f]
//  0x42bb4c: add x0, NULL, #0x20
//  0x42bb50: stur w0, [x1, #0x4f]
//  0x42bb54: mov x0, #1
//  0x42bb58: stur x0, [x1, #0x5f]
//  0x42bb5c: bl #0x391a04
//  0x42bb60: stur x0, [FP, #-0x28]
//  0x42bb64: ldur BARRIER, [FP, #-0x18]
//  0x42bb68: add LR, PP, #0x10, lsl #12
//  0x42bb6c: ldr LR, [LR, #0xc68]
//  0x42bb70: stp LR, BARRIER, [SP, #0x18]
//  0x42bb74: add BARRIER, PP, #0x14, lsl #12
//  0x42bb78: ldr BARRIER, [BARRIER, #0xcb8]
//  0x42bb7c: ldur LR, [FP, #-0x20]
//  0x42bb80: stp LR, BARRIER, [SP, #8]
//  0x42bb84: ldur BARRIER, [FP, #-0x30]
//  0x42bb88: str BARRIER, [SP]
//  0x42bb8c: mov x1, x0
//  0x42bb90: add x4, PP, #0x14, lsl #12
//  0x42bb94: ldr x4, [x4, #0xcc0]
//  0x42bb98: bl #0x391490
//  0x42bb9c: bl #0x2b8e80
//  0x42bba0: ldr d0, [PP, #0xb90]
//  0x42bba4: stur x0, [FP, #-0x18]
//  0x42bba8: stur d0, [x0, #7]
//  0x42bbac: stur d0, [x0, #0xf]
//  0x42bbb0: stur d0, [x0, #0x17]
//  0x42bbb4: stur d0, [x0, #0x1f]
//  0x42bbb8: bl #0x42c044
//  0x42bbbc: add x1, PP, #0x11, lsl #12
//  0x42bbc0: ldr x1, [x1, #0xfe0]
//  0x42bbc4: stur x0, [FP, #-0x20]
//  0x42bbc8: bl #0x39e828
//  0x42bbcc: mov x1, x0
//  0x42bbd0: ldur x0, [FP, #-0x20]
//  0x42bbd4: stur x1, [FP, #-0x30]
//  0x42bbd8: stur w0, [x1, #0xf]
//  0x42bbdc: bl #0x2b8e80
//  0x42bbe0: ldr d0, [PP, #0xb90]
//  0x42bbe4: stur x0, [FP, #-0x20]
//  0x42bbe8: stur d0, [x0, #7]
//  0x42bbec: stur d0, [x0, #0xf]
//  0x42bbf0: stur d0, [x0, #0x17]
//  0x42bbf4: stur d0, [x0, #0x1f]
//  0x42bbf8: bl #0x31d844
//  0x42bbfc: mov x1, x0
//  0x42bc00: ldr x0, [PP, #0x6310]
//  0x42bc04: stur x1, [FP, #-0x38]
//  0x42bc08: stur w0, [x1, #0x27]
//  0x42bc0c: fmov d0, #1.00000000
//  0x42bc10: stur d0, [x1, #7]
//  0x42bc14: stur d0, [x1, #0xf]
//  0x42bc18: add x17, PP, #0x11, lsl #12
//  0x42bc1c: ldr d1, [x17, #0xb48]
//  0x42bc20: stur d1, [x1, #0x17]
//  0x42bc24: add x17, PP, #0x11, lsl #12
//  0x42bc28: ldr d1, [x17, #0xb30]
//  0x42bc2c: stur d1, [x1, #0x1f]
//  0x42bc30: bl #0x31d844
//  0x42bc34: mov x3, x0
//  0x42bc38: ldr x0, [PP, #0x6310]
//  0x42bc3c: stur x3, [FP, #-0x40]
//  0x42bc40: stur w0, [x3, #0x27]
//  0x42bc44: fmov d0, #1.00000000
//  0x42bc48: stur d0, [x3, #7]
//  0x42bc4c: stur d0, [x3, #0xf]
//  0x42bc50: add x17, PP, #0x14, lsl #12
//  0x42bc54: ldr d0, [x17, #0xcc8]
//  0x42bc58: stur d0, [x3, #0x17]
//  0x42bc5c: add x17, PP, #0x14, lsl #12
//  0x42bc60: ldr d0, [x17, #0xcd0]
//  0x42bc64: stur d0, [x3, #0x1f]
//  0x42bc68: mov x1, NULL
//  0x42bc6c: mov x2, #4
//  0x42bc70: bl #0x61f920
//  0x42bc74: mov x2, x0
//  0x42bc78: ldur x0, [FP, #-0x38]
//  0x42bc7c: stur x2, [FP, #-0x48]
//  0x42bc80: stur w0, [x2, #0xf]
//  0x42bc84: ldur x0, [FP, #-0x40]
//  0x42bc88: stur w0, [x2, #0x13]
//  0x42bc8c: add x1, PP, #0x10, lsl #12
//  0x42bc90: ldr x1, [x1, #0xc58]
//  0x42bc94: bl #0x61e854
//  0x42bc98: mov x1, x0
//  0x42bc9c: ldur x0, [FP, #-0x48]
//  0x42bca0: stur x1, [FP, #-0x38]
//  0x42bca4: stur w0, [x1, #0xf]
//  0x42bca8: mov x2, #4
//  0x42bcac: stur w2, [x1, #0xb]
//  0x42bcb0: bl #0x3a108c
//  0x42bcb4: mov x1, x0
//  0x42bcb8: add x0, PP, #0x10, lsl #12
//  0x42bcbc: ldr x0, [x0, #0xc68]
//  0x42bcc0: stur x1, [FP, #-0x40]
//  0x42bcc4: stur w0, [x1, #0x13]
//  0x42bcc8: add x0, PP, #0x10, lsl #12
//  0x42bccc: ldr x0, [x0, #0xc70]
//  0x42bcd0: stur w0, [x1, #0x17]
//  0x42bcd4: add x0, PP, #0x10, lsl #12
//  0x42bcd8: ldr x0, [x0, #0xc78]
//  0x42bcdc: stur w0, [x1, #0x1b]
//  0x42bce0: ldur x0, [FP, #-0x38]
//  0x42bce4: stur w0, [x1, #7]
//  0x42bce8: bl #0x352b04
//  0x42bcec: fmov d0, #12.00000000
//  0x42bcf0: stur x0, [FP, #-0x38]
//  0x42bcf4: stur d0, [x0, #7]
//  0x42bcf8: stur d0, [x0, #0xf]
//  0x42bcfc: bl #0x352b04
//  0x42bd00: fmov d0, #12.00000000
//  0x42bd04: stur x0, [FP, #-0x48]
//  0x42bd08: stur d0, [x0, #7]
//  0x42bd0c: stur d0, [x0, #0xf]
//  0x42bd10: bl #0x392f28
//  0x42bd14: mov x1, x0
//  0x42bd18: ldur x0, [FP, #-0x38]
//  0x42bd1c: stur x1, [FP, #-0x50]
//  0x42bd20: stur w0, [x1, #7]
//  0x42bd24: ldur x0, [FP, #-0x48]
//  0x42bd28: stur w0, [x1, #0xb]
//  0x42bd2c: add x0, PP, #0xa, lsl #12
//  0x42bd30: ldr x0, [x0, #0x510]
//  0x42bd34: stur w0, [x1, #0xf]
//  0x42bd38: stur w0, [x1, #0x13]
//  0x42bd3c: bl #0x391dd8
//  0x42bd40: mov x1, x0
//  0x42bd44: ldur x0, [FP, #-0x50]
//  0x42bd48: stur x1, [FP, #-0x38]
//  0x42bd4c: stur w0, [x1, #0x13]
//  0x42bd50: ldur x0, [FP, #-0x40]
//  0x42bd54: stur w0, [x1, #0x1b]
//  0x42bd58: add x0, PP, #0xe, lsl #12
//  0x42bd5c: ldr x0, [x0, #0xb78]
//  0x42bd60: stur w0, [x1, #0x23]
//  0x42bd64: bl #0x3a142c
//  0x42bd68: mov x1, x0
//  0x42bd6c: add x0, PP, #0x14, lsl #12
//  0x42bd70: ldr x0, [x0, #0xcd8]
//  0x42bd74: stur x1, [FP, #-0x40]
//  0x42bd78: stur w0, [x1, #0xb]
//  0x42bd7c: add x0, PP, #0xf, lsl #12
//  0x42bd80: ldr x0, [x0, #0x170]
//  0x42bd84: stur w0, [x1, #0xf]
//  0x42bd88: ldr x0, [PP, #0x5458]
//  0x42bd8c: stur w0, [x1, #0x17]
//  0x42bd90: add x2, PP, #0xf, lsl #12
//  0x42bd94: ldr x2, [x2, #0x178]
//  0x42bd98: stur w2, [x1, #0x1b]
//  0x42bd9c: bl #0x391a04
//  0x42bda0: stur x0, [FP, #-0x48]
//  0x42bda4: ldur BARRIER, [FP, #-0x20]
//  0x42bda8: add LR, PP, #0x11, lsl #12
//  0x42bdac: ldr LR, [LR, #0xb18]
//  0x42bdb0: stp LR, BARRIER, [SP, #0x10]
//  0x42bdb4: ldur BARRIER, [FP, #-0x38]
//  0x42bdb8: ldur LR, [FP, #-0x40]
//  0x42bdbc: stp LR, BARRIER, [SP]
//  0x42bdc0: mov x1, x0
//  0x42bdc4: add x4, PP, #0x14, lsl #12
//  0x42bdc8: ldr x4, [x4, #0xce0]
//  0x42bdcc: bl #0x391490
//  0x42bdd0: bl #0x39a528
//  0x42bdd4: mov x1, x0
//  0x42bdd8: ldur x0, [FP, #-0x30]
//  0x42bddc: stur x1, [FP, #-0x20]
//  0x42bde0: stur w0, [x1, #0xf]
//  0x42bde4: add x0, PP, #0xe, lsl #12
//  0x42bde8: ldr x0, [x0, #0xf40]
//  0x42bdec: stur w0, [x1, #0x13]
//  0x42bdf0: ldur x0, [FP, #-0x48]
//  0x42bdf4: stur w0, [x1, #0xb]
//  0x42bdf8: ldur x0, [FP, #-8]
//  0x42bdfc: ldur w2, [x0, #0xb]
//  0x42be00: add x2, x2, HEAP, lsl #32
//  0x42be04: cmp w2, w22
//  0x42be08: b.eq #0x42c040
//  0x42be0c: ldur w0, [x2, #0xb]
//  0x42be10: add x0, x0, HEAP, lsl #32
//  0x42be14: stur x0, [FP, #-8]
//  0x42be18: bl #0x3949ec
//  0x42be1c: mov x3, x0
//  0x42be20: ldr x0, [PP, #0x5458]
//  0x42be24: stur x3, [FP, #-0x30]
//  0x42be28: stur w0, [x3, #0xf]
//  0x42be2c: stur w0, [x3, #0x13]
//  0x42be30: ldur x0, [FP, #-8]
//  0x42be34: stur w0, [x3, #0xb]
//  0x42be38: mov x1, NULL
//  0x42be3c: mov x2, #4
//  0x42be40: bl #0x61f920
//  0x42be44: mov x2, x0
//  0x42be48: ldur x0, [FP, #-0x20]
//  0x42be4c: stur x2, [FP, #-8]
//  0x42be50: stur w0, [x2, #0xf]
//  0x42be54: ldur x0, [FP, #-0x30]
//  0x42be58: stur w0, [x2, #0x13]
//  0x42be5c: ldr x1, [PP, #0x5c58]
//  0x42be60: bl #0x61e854
//  0x42be64: mov x1, x0
//  0x42be68: ldur x0, [FP, #-8]
//  0x42be6c: stur x1, [FP, #-0x20]
//  0x42be70: stur w0, [x1, #0xf]
//  0x42be74: mov x2, #4
//  0x42be78: stur w2, [x1, #0xb]
//  0x42be7c: bl #0x39e6f4
//  0x42be80: mov x1, x0
//  0x42be84: add x0, PP, #0xe, lsl #12
//  0x42be88: ldr x0, [x0, #0xf00]
//  0x42be8c: stur x1, [FP, #-8]
//  0x42be90: stur w0, [x1, #0xf]
//  0x42be94: add x2, PP, #0xe, lsl #12
//  0x42be98: ldr x2, [x2, #0xf08]
//  0x42be9c: stur w2, [x1, #0x17]
//  0x42bea0: add x3, PP, #0xe, lsl #12
//  0x42bea4: ldr x3, [x3, #0xf10]
//  0x42bea8: stur w3, [x1, #0x1b]
//  0x42beac: ldur x4, [FP, #-0x20]
//  0x42beb0: stur w4, [x1, #0xb]
//  0x42beb4: bl #0x391a04
//  0x42beb8: stur x0, [FP, #-0x20]
//  0x42bebc: ldur BARRIER, [FP, #-0x18]
//  0x42bec0: add LR, PP, #0x14, lsl #12
//  0x42bec4: ldr LR, [LR, #0xce8]
//  0x42bec8: stp LR, BARRIER, [SP, #8]
//  0x42becc: ldur BARRIER, [FP, #-8]
//  0x42bed0: str BARRIER, [SP]
//  0x42bed4: mov x1, x0
//  0x42bed8: add x4, PP, #0x14, lsl #12
//  0x42bedc: ldr x4, [x4, #0xcf0]
//  0x42bee0: bl #0x391490
//  0x42bee4: mov x1, NULL
//  0x42bee8: mov x2, #4
//  0x42beec: bl #0x61f920
//  0x42bef0: mov x2, x0
//  0x42bef4: ldur x0, [FP, #-0x28]
//  0x42bef8: stur x2, [FP, #-8]
//  0x42befc: stur w0, [x2, #0xf]
//  0x42bf00: ldur x0, [FP, #-0x20]
//  0x42bf04: stur w0, [x2, #0x13]
//  0x42bf08: ldr x1, [PP, #0x5c58]
//  0x42bf0c: bl #0x61e854
//  0x42bf10: mov x1, x0
//  0x42bf14: ldur x0, [FP, #-8]
//  0x42bf18: stur x1, [FP, #-0x18]
//  0x42bf1c: stur w0, [x1, #0xf]
//  0x42bf20: mov x2, #4
//  0x42bf24: stur w2, [x1, #0xb]
//  0x42bf28: bl #0x39e6f4
//  0x42bf2c: mov x2, x0
//  0x42bf30: add x0, PP, #0xe, lsl #12
//  0x42bf34: ldr x0, [x0, #0xf00]
//  0x42bf38: stur x2, [FP, #-8]
//  0x42bf3c: stur w0, [x2, #0xf]
//  0x42bf40: add x0, PP, #0xe, lsl #12
//  0x42bf44: ldr x0, [x0, #0xf08]
//  0x42bf48: stur w0, [x2, #0x17]
//  0x42bf4c: add x0, PP, #0xe, lsl #12
//  0x42bf50: ldr x0, [x0, #0xf10]
//  0x42bf54: stur w0, [x2, #0x1b]
//  0x42bf58: ldur x0, [FP, #-0x18]
//  0x42bf5c: stur w0, [x2, #0xb]
//  0x42bf60: add x1, PP, #0xe, lsl #12
//  0x42bf64: ldr x1, [x1, #0xad0]
//  0x42bf68: bl #0x39fb14
//  0x42bf6c: mov x3, x0
//  0x42bf70: mov x0, #1
//  0x42bf74: stur x3, [FP, #-0x18]
//  0x42bf78: stur x0, [x3, #0x13]
//  0x42bf7c: add x0, PP, #0xe, lsl #12
//  0x42bf80: ldr x0, [x0, #0xad8]
//  0x42bf84: stur w0, [x3, #0x1b]
//  0x42bf88: ldur x0, [FP, #-8]
//  0x42bf8c: stur w0, [x3, #0xb]
//  0x42bf90: mov x1, NULL
//  0x42bf94: mov x2, #4
//  0x42bf98: bl #0x61f920
//  0x42bf9c: mov x2, x0
//  0x42bfa0: ldur x0, [FP, #-0x10]
//  0x42bfa4: stur x2, [FP, #-8]
//  0x42bfa8: stur w0, [x2, #0xf]
//  0x42bfac: ldur x0, [FP, #-0x18]
//  0x42bfb0: stur w0, [x2, #0x13]
//  0x42bfb4: ldr x1, [PP, #0x5c58]
//  0x42bfb8: bl #0x61e854
//  0x42bfbc: mov x1, x0
//  0x42bfc0: ldur x0, [FP, #-8]
//  0x42bfc4: stur x1, [FP, #-0x10]
//  0x42bfc8: stur w0, [x1, #0xf]
//  0x42bfcc: mov x0, #4
//  0x42bfd0: stur w0, [x1, #0xb]
//  0x42bfd4: bl #0x39310c
//  0x42bfd8: add x1, PP, #0xa, lsl #12
//  0x42bfdc: ldr x1, [x1, #0x858]
//  0x42bfe0: stur w1, [x0, #0xf]
//  0x42bfe4: add x1, PP, #0xe, lsl #12
//  0x42bfe8: ldr x1, [x1, #0xae0]
//  0x42bfec: stur w1, [x0, #0x13]
//  0x42bff0: add x1, PP, #0xe, lsl #12
//  0x42bff4: ldr x1, [x1, #0xae8]
//  0x42bff8: stur w1, [x0, #0x17]
//  0x42bffc: add x1, PP, #0xe, lsl #12
//  0x42c000: ldr x1, [x1, #0xb60]
//  0x42c004: stur w1, [x0, #0x1b]
//  0x42c008: add x1, PP, #0xe, lsl #12
//  0x42c00c: ldr x1, [x1, #0xaf8]
//  0x42c010: stur w1, [x0, #0x23]
//  0x42c014: add x1, PP, #0xa, lsl #12
//  0x42c018: ldr x1, [x1, #0xa8]
//  0x42c01c: stur w1, [x0, #0x2b]
//  0x42c020: stur xzr, [x0, #0x2f]
//  0x42c024: ldur x1, [FP, #-0x10]
//  0x42c028: stur w1, [x0, #0xb]
//  0x42c02c: mov SP, FP
//  0x42c030: ldp FP, LR, [SP], #0x10
//  0x42c034: ret 
//  0x42c038: bl #0x61fa28
//  0x42c03c: b #0x42b780
//  0x42c040: bl #0x61ffd0
//
dynamic PartyPocketDialogState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic d3;
  dynamic v1_16b;
  dynamic w0;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42b758
  // frame: FP = SP // 0x42b75c
  // frame: SP = SP - 0x90 // 0x42b760
  x0 = x2; // 0x42b764
  local_m10 = x2; // 0x42b768
  x2 = x1; // 0x42b76c
  local_m8 = x1; // 0x42b770
  BARRIER = mem(THR, 0x38); // 0x42b774
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42c038
  }
  x1 = x0; // 0x42b780
  ScreenUtil_getScreenWidth() /* 0x3a877c */; // 0x42b784
  x1 = local_m10; // 0x42b788
  local_m58 = d0; // 0x42b78c
  ScreenUtil_getScreenHeight() /* 0x3b5484 */; // 0x42b790
  d0 = 4596373779694328218; // 0x42b798
  v1_16b = v0_16b; // 0x42b794
  local_m68 = d1; // 0x42b79c
  d2 = (d1 * d0) /* float */; // 0x42b7a0
  local_m60 = d2; // 0x42b7a4
  AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x42b7a8
  d0 = 9218868437227405312; // 0x42b7ac
  local_m10 = x0; // 0x42b7b0
  memSet(x0, 7, d0); // 0x42b7b4
  memSet(x0, 0xf, d0); // 0x42b7b8
  d1 = local_m60; // 0x42b7bc
  memSet(x0, 0x17, d1); // 0x42b7c0
  memSet(x0, 0x1f, d1); // 0x42b7c4
  AllocationStub_Container() /* 0x391a04 */; // 0x42b7c8
  local_m18 = x0; // 0x42b7cc
  BARRIER = local_m10; // 0x42b7d0
  LR = mem((PP + 0xa000), 0x3c0) /* Obj!Color@120b8  */; // 0x42b7d8
  // frame: LR, BARRIER, mem(SP) // 0x42b7dc
  x1 = x0; // 0x42b7e0
  x4 = mem((PP + 0x10000), 0xc98) /* ImmutableArray */; // 0x42b7e8
  Container_ctor() /* 0x391490 */; // 0x42b7ec
  sub_0x3a1d94(); // 0x42b7f0
  local_m10 = x0; // 0x42b7f4
  BARRIER = mem((PP + 0xf000), 0x318) /* Closure */; // 0x42b7fc
  LR = local_m18; // 0x42b800
  // frame: LR, BARRIER, mem(SP) // 0x42b804
  x1 = x0; // 0x42b808
  x4 = mem((PP + 0xc000), 0x208) /* ImmutableArray */; // 0x42b810
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x42b814
  AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x42b818
  d0 = 9218868437227405312; // 0x42b81c
  local_m18 = x0; // 0x42b820
  memSet(x0, 7, d0); // 0x42b824
  memSet(x0, 0xf, d0); // 0x42b828
  d1 = 4636174341401214976; // 0x42b82c
  memSet(x0, 0x17, d1); // 0x42b830
  memSet(x0, 0x1f, d1); // 0x42b834
  SOColors_get_color_fff59c() /* 0x42c0a0 */; // 0x42b838
  local_m20 = x0; // 0x42b83c
  SOColors_get_color_ff6b17() /* 0x42c05c */; // 0x42b840
  x1 = NULL; // 0x42b844
  x2 = 4; // 0x42b848
  local_m28 = x0; // 0x42b84c
  sub_0x61f920(); // 0x42b850
  x0 = local_m20; // 0x42b858
  x2 = x0; // 0x42b854
  local_m30 = x2; // 0x42b85c
  memSet(x2, 0xf, w0); // 0x42b860
  x0 = local_m28; // 0x42b864
  memSet(x2, 0x13, w0); // 0x42b868
  x1 = mem((PP + 0x10000), 0xc58) /* TypeArguments */; // 0x42b870
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x42b874
  x0 = local_m30; // 0x42b87c
  x1 = x0; // 0x42b878
  local_m20 = x1; // 0x42b880
  memSet(x1, 0xf, w0); // 0x42b884
  x2 = 4; // 0x42b888
  memSet(x1, 0xb, w2); // 0x42b88c
  AllocationStub_LinearGradient() /* 0x3a108c */; // 0x42b890
  x0 = mem((PP + 0x10000), 0xc68) /* Obj!Alignment@11bdd  */; // 0x42b89c
  x1 = x0; // 0x42b894
  local_m28 = x1; // 0x42b8a0
  memSet(x1, 0x13, w0); // 0x42b8a4
  x2 = mem((PP + 0x10000), 0xc70) /* Obj!Alignment@11bdc  */; // 0x42b8ac
  memSet(x1, 0x17, w2); // 0x42b8b0
  x3 = mem((PP + 0x10000), 0xc78) /* Obj!TileMode@1233e  */; // 0x42b8b8
  memSet(x1, 0x1b, w3); // 0x42b8bc
  x4 = local_m20; // 0x42b8c0
  memSet(x1, 7, w4); // 0x42b8c4
  AllocationStub_Radius() /* 0x352b04 */; // 0x42b8c8
  d0 = 4636666922610458624; // 0x42b8d0
  x17 = PP + 0x14000; // 0x42b8cc
  local_m20 = x0; // 0x42b8d4
  memSet(x0, 7, d0); // 0x42b8d8
  memSet(x0, 0xf, d0); // 0x42b8dc
  AllocationStub_Radius() /* 0x352b04 */; // 0x42b8e0
  d0 = 4636666922610458624; // 0x42b8e8
  x17 = PP + 0x14000; // 0x42b8e4
  local_m30 = x0; // 0x42b8ec
  memSet(x0, 7, d0); // 0x42b8f0
  memSet(x0, 0xf, d0); // 0x42b8f4
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x42b8f8
  x0 = local_m20; // 0x42b900
  x1 = x0; // 0x42b8fc
  local_m38 = x1; // 0x42b904
  memSet(x1, 7, w0); // 0x42b908
  x0 = local_m30; // 0x42b90c
  memSet(x1, 0xb, w0); // 0x42b910
  x0 = mem((PP + 0xa000), 0x510) /* Obj!Radius@120d9  */; // 0x42b918
  memSet(x1, 0xf, w0); // 0x42b91c
  memSet(x1, 0x13, w0); // 0x42b920
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x42b924
  x0 = local_m38; // 0x42b92c
  x1 = x0; // 0x42b928
  local_m20 = x1; // 0x42b930
  memSet(x1, 0x13, w0); // 0x42b934
  x0 = local_m28; // 0x42b938
  memSet(x1, 0x1b, w0); // 0x42b93c
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x42b944
  memSet(x1, 0x23, w0); // 0x42b948
  BARRIER = 136; // 0x42b94c
  // frame: BARRIER, NULL, mem(SP) // 0x42b950
  ByteData_factory_ctor() /* 0x297550 */; // 0x42b954
  local_m28 = x0; // 0x42b958
  AllocationStub_Paint() /* 0x2eeee8 */; // 0x42b95c
  x0 = local_m28; // 0x42b964
  x1 = x0; // 0x42b960
  local_m30 = x1; // 0x42b968
  memSet(x1, 7, w0); // 0x42b96c
  AllocationStub_Color() /* 0x31d844 */; // 0x42b970
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x42b978
  x1 = x0; // 0x42b974
  local_m28 = x1; // 0x42b97c
  memSet(x1, 0x27, w0); // 0x42b980
  d0 = 1.00000000 /* bits */; // 0x42b984
  memSet(x1, 7, d0); // 0x42b988
  memSet(x1, 0xf, d0); // 0x42b98c
  d1 = 4606758550599794302; // 0x42b994
  x17 = PP + 0xf000; // 0x42b990
  memSet(x1, 0x17, d1); // 0x42b998
  d1 = 4603614861448139603; // 0x42b9a0
  x17 = PP + 0x10000; // 0x42b99c
  memSet(x1, 0x1f, d1); // 0x42b9a4
  AllocationStub_Color() /* 0x31d844 */; // 0x42b9a8
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x42b9b0
  x3 = x0; // 0x42b9ac
  local_m38 = x3; // 0x42b9b4
  memSet(x3, 0x27, w0); // 0x42b9b8
  d0 = 4600877379321698714; // 0x42b9bc
  memSet(x3, 7, d0); // 0x42b9c0
  d0 = 1.00000000 /* bits */; // 0x42b9c4
  memSet(x3, 0xf, d0); // 0x42b9c8
  d1 = 4604674531948697367; // 0x42b9d0
  x17 = PP + 0x14000; // 0x42b9cc
  memSet(x3, 0x17, d1); // 0x42b9d4
  memSet(x3, 0x1f, xzr); // 0x42b9d8
  x1 = NULL; // 0x42b9dc
  x2 = 4; // 0x42b9e0
  sub_0x61f920(); // 0x42b9e4
  x0 = local_m28; // 0x42b9ec
  x2 = x0; // 0x42b9e8
  local_m40 = x2; // 0x42b9f0
  memSet(x2, 0xf, w0); // 0x42b9f4
  x0 = local_m38; // 0x42b9f8
  memSet(x2, 0x13, w0); // 0x42b9fc
  x1 = mem((PP + 0x10000), 0xc58) /* TypeArguments */; // 0x42ba04
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x42ba08
  x0 = local_m40; // 0x42ba10
  x1 = x0; // 0x42ba0c
  local_m28 = x1; // 0x42ba14
  memSet(x1, 0xf, w0); // 0x42ba18
  x2 = 4; // 0x42ba1c
  memSet(x1, 0xb, w2); // 0x42ba20
  AllocationStub_LinearGradient() /* 0x3a108c */; // 0x42ba24
  x0 = mem((PP + 0x10000), 0xc68) /* Obj!Alignment@11bdd  */; // 0x42ba30
  x1 = x0; // 0x42ba28
  local_m38 = x1; // 0x42ba34
  memSet(x1, 0x13, w0); // 0x42ba38
  x2 = mem((PP + 0x10000), 0xc70) /* Obj!Alignment@11bdc  */; // 0x42ba40
  memSet(x1, 0x17, w2); // 0x42ba44
  x3 = mem((PP + 0x10000), 0xc78) /* Obj!TileMode@1233e  */; // 0x42ba4c
  memSet(x1, 0x1b, w3); // 0x42ba50
  x4 = local_m28; // 0x42ba54
  memSet(x1, 7, w4); // 0x42ba58
  d0 = local_m68; // 0x42ba68
  d2 = ((local_m58) + d1) /* float */; // 0x42ba64
  v1_16b = v1_16b ^ v1_16b; // 0x42ba60
  local_m60 = d2; // 0x42ba6c
  d3 = (d0 + d1) /* float */; // 0x42ba70
  local_m58 = d3; // 0x42ba74
  AllocationStub_Rect() /* 0x2984c0 */; // 0x42ba78
  memSet(x0, 7, xzr); // 0x42ba7c
  memSet(x0, 0xf, xzr); // 0x42ba80
  d0 = local_m60; // 0x42ba84
  memSet(x0, 0x17, d0); // 0x42ba88
  d0 = local_m58; // 0x42ba8c
  memSet(x0, 0x1f, d0); // 0x42ba90
  x1 = local_m38; // 0x42ba94
  x2 = x0; // 0x42ba98
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x42ba9c
  LinearGradient_createShader() /* 0x3b4f80 */; // 0x42baa0
  x1 = local_m30; // 0x42baa4
  local_m28 = x0; // 0x42baa8
  Paint_ensureObjectsInitialized() /* 0x35f1e8 */; // 0x42baac
  x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x42bab4
  // frame: xzr, x0, mem(SP, 8) // 0x42bab8
  BARRIER = local_m28; // 0x42babc
  local_0 = BARRIER; // 0x42bac0
  LR = mem(x21, ((x0 - 0xfa2) << 3)); // 0x42bacc
  x0 = x1; // 0x42bac4
  callIndirect(LR); // 0x42bad0
  AllocationStub_TextStyle() /* 0x31abec */; // 0x42bad4
  x0 = NULL + 0x20; // 0x42badc
  x1 = x0; // 0x42bad8
  local_m28 = x1; // 0x42bae0
  memSet(x1, 7, w0); // 0x42bae4
  x2 = mem((PP + 0xa000), 0x4e0) /* Double */; // 0x42baec
  memSet(x1, 0x1f, w2); // 0x42baf0
  x2 = mem((PP + 0x10000), 0x948) /* Obj!FontWeight@12028  */; // 0x42baf8
  memSet(x1, 0x23, w2); // 0x42bafc
  x2 = mem((PP + 0x12000), 0x208) /* Obj!FontStyle@12319  */; // 0x42bb04
  memSet(x1, 0x27, w2); // 0x42bb08
  x2 = local_m30; // 0x42bb0c
  memSet(x1, 0x43, w2); // 0x42bb10
  AllocationStub_AutoSizeText() /* 0x42c050 */; // 0x42bb14
  x0 = "Soul lucky pocket" /* pp+0x14cb0 */; // 0x42bb20
  x1 = x0; // 0x42bb18
  local_m30 = x1; // 0x42bb24
  memSet(x1, 0xf, w0); // 0x42bb28
  x0 = local_m28; // 0x42bb2c
  memSet(x1, 0x17, w0); // 0x42bb30
  d0 = 12.00000000 /* bits */; // 0x42bb34
  memSet(x1, 0x1f, d0); // 0x42bb38
  d1 = 9218868437227405312; // 0x42bb3c
  memSet(x1, 0x27, d1); // 0x42bb40
  d2 = 1.00000000 /* bits */; // 0x42bb44
  memSet(x1, 0x2f, d2); // 0x42bb48
  x0 = NULL + 0x20; // 0x42bb4c
  memSet(x1, 0x4f, w0); // 0x42bb50
  x0 = 1; // 0x42bb54
  memSet(x1, 0x5f, x0); // 0x42bb58
  AllocationStub_Container() /* 0x391a04 */; // 0x42bb5c
  local_m28 = x0; // 0x42bb60
  BARRIER = local_m18; // 0x42bb64
  LR = mem((PP + 0x10000), 0xc68) /* Obj!Alignment@11bdd  */; // 0x42bb6c
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x42bb70
  BARRIER = mem((PP + 0x14000), 0xcb8) /* Obj!EdgeInsets@11bbc  */; // 0x42bb78
  LR = local_m20; // 0x42bb7c
  // frame: LR, BARRIER, mem(SP, 8) // 0x42bb80
  BARRIER = local_m30; // 0x42bb84
  local_0 = BARRIER; // 0x42bb88
  x1 = x0; // 0x42bb8c
  x4 = mem((PP + 0x14000), 0xcc0) /* ImmutableArray */; // 0x42bb94
  Container_ctor() /* 0x391490 */; // 0x42bb98
  AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x42bb9c
  d0 = 9218868437227405312; // 0x42bba0
  local_m18 = x0; // 0x42bba4
  memSet(x0, 7, d0); // 0x42bba8
  memSet(x0, 0xf, d0); // 0x42bbac
  memSet(x0, 0x17, d0); // 0x42bbb0
  memSet(x0, 0x1f, d0); // 0x42bbb4
  AllocationStub_PartyPocketShapeBorder() /* 0x42c044 */; // 0x42bbb8
  x1 = mem((PP + 0x11000), 0xfe0) /* TypeArguments */; // 0x42bbc0
  local_m20 = x0; // 0x42bbc4
  AllocationStub_ShapeBorderClipper() /* 0x39e828 */; // 0x42bbc8
  x0 = local_m20; // 0x42bbd0
  x1 = x0; // 0x42bbcc
  local_m30 = x1; // 0x42bbd4
  memSet(x1, 0xf, w0); // 0x42bbd8
  AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x42bbdc
  d0 = 9218868437227405312; // 0x42bbe0
  local_m20 = x0; // 0x42bbe4
  memSet(x0, 7, d0); // 0x42bbe8
  memSet(x0, 0xf, d0); // 0x42bbec
  memSet(x0, 0x17, d0); // 0x42bbf0
  memSet(x0, 0x1f, d0); // 0x42bbf4
  AllocationStub_Color() /* 0x31d844 */; // 0x42bbf8
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x42bc00
  x1 = x0; // 0x42bbfc
  local_m38 = x1; // 0x42bc04
  memSet(x1, 0x27, w0); // 0x42bc08
  d0 = 1.00000000 /* bits */; // 0x42bc0c
  memSet(x1, 7, d0); // 0x42bc10
  memSet(x1, 0xf, d0); // 0x42bc14
  d1 = 4606829195299831487; // 0x42bc1c
  x17 = PP + 0x11000; // 0x42bc18
  memSet(x1, 0x17, d1); // 0x42bc20
  d1 = 4603685506148176788; // 0x42bc28
  x17 = PP + 0x11000; // 0x42bc24
  memSet(x1, 0x1f, d1); // 0x42bc2c
  AllocationStub_Color() /* 0x31d844 */; // 0x42bc30
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x42bc38
  x3 = x0; // 0x42bc34
  local_m40 = x3; // 0x42bc3c
  memSet(x3, 0x27, w0); // 0x42bc40
  d0 = 1.00000000 /* bits */; // 0x42bc44
  memSet(x3, 7, d0); // 0x42bc48
  memSet(x3, 0xf, d0); // 0x42bc4c
  d0 = 4601230602821884635; // 0x42bc54
  x17 = PP + 0x14000; // 0x42bc50
  memSet(x3, 0x17, d0); // 0x42bc58
  d0 = 4591163733066585879; // 0x42bc60
  x17 = PP + 0x14000; // 0x42bc5c
  memSet(x3, 0x1f, d0); // 0x42bc64
  x1 = NULL; // 0x42bc68
  x2 = 4; // 0x42bc6c
  sub_0x61f920(); // 0x42bc70
  x0 = local_m38; // 0x42bc78
  x2 = x0; // 0x42bc74
  local_m48 = x2; // 0x42bc7c
  memSet(x2, 0xf, w0); // 0x42bc80
  x0 = local_m40; // 0x42bc84
  memSet(x2, 0x13, w0); // 0x42bc88
  x1 = mem((PP + 0x10000), 0xc58) /* TypeArguments */; // 0x42bc90
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x42bc94
  x0 = local_m48; // 0x42bc9c
  x1 = x0; // 0x42bc98
  local_m38 = x1; // 0x42bca0
  memSet(x1, 0xf, w0); // 0x42bca4
  x2 = 4; // 0x42bca8
  memSet(x1, 0xb, w2); // 0x42bcac
  AllocationStub_LinearGradient() /* 0x3a108c */; // 0x42bcb0
  x0 = mem((PP + 0x10000), 0xc68) /* Obj!Alignment@11bdd  */; // 0x42bcbc
  x1 = x0; // 0x42bcb4
  local_m40 = x1; // 0x42bcc0
  memSet(x1, 0x13, w0); // 0x42bcc4
  x0 = mem((PP + 0x10000), 0xc70) /* Obj!Alignment@11bdc  */; // 0x42bccc
  memSet(x1, 0x17, w0); // 0x42bcd0
  x0 = mem((PP + 0x10000), 0xc78) /* Obj!TileMode@1233e  */; // 0x42bcd8
  memSet(x1, 0x1b, w0); // 0x42bcdc
  x0 = local_m38; // 0x42bce0
  memSet(x1, 7, w0); // 0x42bce4
  AllocationStub_Radius() /* 0x352b04 */; // 0x42bce8
  d0 = 12.00000000 /* bits */; // 0x42bcec
  local_m38 = x0; // 0x42bcf0
  memSet(x0, 7, d0); // 0x42bcf4
  memSet(x0, 0xf, d0); // 0x42bcf8
  AllocationStub_Radius() /* 0x352b04 */; // 0x42bcfc
  d0 = 12.00000000 /* bits */; // 0x42bd00
  local_m48 = x0; // 0x42bd04
  memSet(x0, 7, d0); // 0x42bd08
  memSet(x0, 0xf, d0); // 0x42bd0c
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x42bd10
  x0 = local_m38; // 0x42bd18
  x1 = x0; // 0x42bd14
  local_m50 = x1; // 0x42bd1c
  memSet(x1, 7, w0); // 0x42bd20
  x0 = local_m48; // 0x42bd24
  memSet(x1, 0xb, w0); // 0x42bd28
  x0 = mem((PP + 0xa000), 0x510) /* Obj!Radius@120d9  */; // 0x42bd30
  memSet(x1, 0xf, w0); // 0x42bd34
  memSet(x1, 0x13, w0); // 0x42bd38
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x42bd3c
  x0 = local_m50; // 0x42bd44
  x1 = x0; // 0x42bd40
  local_m38 = x1; // 0x42bd48
  memSet(x1, 0x13, w0); // 0x42bd4c
  x0 = local_m40; // 0x42bd50
  memSet(x1, 0x1b, w0); // 0x42bd54
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x42bd5c
  memSet(x1, 0x23, w0); // 0x42bd60
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x42bd64
  x0 = "assets/images/3.0x/party_icon_pocket_lucky_bg.webp" /* pp+0x14cd8 */; // 0x42bd70
  x1 = x0; // 0x42bd68
  local_m40 = x1; // 0x42bd74
  memSet(x1, 0xb, w0); // 0x42bd78
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x42bd80
  memSet(x1, 0xf, w0); // 0x42bd84
  x0 = mem(PP, 0x5458) /* Double */; // 0x42bd88
  memSet(x1, 0x17, w0); // 0x42bd8c
  x2 = mem((PP + 0xf000), 0x178) /* Obj!BoxFit@12284  */; // 0x42bd94
  memSet(x1, 0x1b, w2); // 0x42bd98
  AllocationStub_Container() /* 0x391a04 */; // 0x42bd9c
  local_m48 = x0; // 0x42bda0
  BARRIER = local_m20; // 0x42bda4
  LR = mem((PP + 0x11000), 0xb18) /* Obj!AlignmentDirectional@11bd8  */; // 0x42bdac
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x42bdb0
  BARRIER = local_m38; // 0x42bdb4
  LR = local_m40; // 0x42bdb8
  // frame: LR, BARRIER, mem(SP) // 0x42bdbc
  x1 = x0; // 0x42bdc0
  x4 = mem((PP + 0x14000), 0xce0) /* ImmutableArray */; // 0x42bdc8
  Container_ctor() /* 0x391490 */; // 0x42bdcc
  AllocationStub_ClipPath() /* 0x39a528 */; // 0x42bdd0
  x0 = local_m30; // 0x42bdd8
  x1 = x0; // 0x42bdd4
  local_m20 = x1; // 0x42bddc
  memSet(x1, 0xf, w0); // 0x42bde0
  x0 = mem((PP + 0xe000), 0xf40) /* Obj!Clip@12344  */; // 0x42bde8
  memSet(x1, 0x13, w0); // 0x42bdec
  x0 = local_m48; // 0x42bdf0
  memSet(x1, 0xb, w0); // 0x42bdf4
  w2 = mem((local_m8), 0xb); // 0x42bdfc
  x0 = local_m8; // 0x42bdf8
  x2 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x42be00
  if (w2 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x42c040
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x42be10
  local_m8 = x0; // 0x42be14
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x42be18
  x0 = mem(PP, 0x5458) /* Double */; // 0x42be20
  x3 = x0; // 0x42be1c
  local_m30 = x3; // 0x42be24
  memSet(x3, 0xf, w0); // 0x42be28
  memSet(x3, 0x13, w0); // 0x42be2c
  x0 = local_m8; // 0x42be30
  memSet(x3, 0xb, w0); // 0x42be34
  x1 = NULL; // 0x42be38
  x2 = 4; // 0x42be3c
  sub_0x61f920(); // 0x42be40
  x0 = local_m20; // 0x42be48
  x2 = x0; // 0x42be44
  local_m8 = x2; // 0x42be4c
  memSet(x2, 0xf, w0); // 0x42be50
  x0 = local_m30; // 0x42be54
  memSet(x2, 0x13, w0); // 0x42be58
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x42be5c
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x42be60
  x0 = local_m8; // 0x42be68
  x1 = x0; // 0x42be64
  local_m20 = x1; // 0x42be6c
  memSet(x1, 0xf, w0); // 0x42be70
  x2 = 4; // 0x42be74
  memSet(x1, 0xb, w2); // 0x42be78
  AllocationStub_Stack() /* 0x39e6f4 */; // 0x42be7c
  x0 = mem((PP + 0xe000), 0xf00) /* Obj!AlignmentDirectional@11bd4  */; // 0x42be88
  x1 = x0; // 0x42be80
  local_m8 = x1; // 0x42be8c
  memSet(x1, 0xf, w0); // 0x42be90
  x2 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x42be98
  memSet(x1, 0x17, w2); // 0x42be9c
  x3 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x42bea4
  memSet(x1, 0x1b, w3); // 0x42bea8
  x4 = local_m20; // 0x42beac
  memSet(x1, 0xb, w4); // 0x42beb0
  AllocationStub_Container() /* 0x391a04 */; // 0x42beb4
  local_m20 = x0; // 0x42beb8
  BARRIER = local_m18; // 0x42bebc
  LR = mem((PP + 0x14000), 0xce8) /* Obj!EdgeInsets@11bbb  */; // 0x42bec4
  // frame: LR, BARRIER, mem(SP, 8) // 0x42bec8
  BARRIER = local_m8; // 0x42becc
  local_0 = BARRIER; // 0x42bed0
  x1 = x0; // 0x42bed4
  x4 = mem((PP + 0x14000), 0xcf0) /* ImmutableArray */; // 0x42bedc
  Container_ctor() /* 0x391490 */; // 0x42bee0
  x1 = NULL; // 0x42bee4
  x2 = 4; // 0x42bee8
  sub_0x61f920(); // 0x42beec
  x0 = local_m28; // 0x42bef4
  x2 = x0; // 0x42bef0
  local_m8 = x2; // 0x42bef8
  memSet(x2, 0xf, w0); // 0x42befc
  x0 = local_m20; // 0x42bf00
  memSet(x2, 0x13, w0); // 0x42bf04
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x42bf08
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x42bf0c
  x0 = local_m8; // 0x42bf14
  x1 = x0; // 0x42bf10
  local_m18 = x1; // 0x42bf18
  memSet(x1, 0xf, w0); // 0x42bf1c
  x2 = 4; // 0x42bf20
  memSet(x1, 0xb, w2); // 0x42bf24
  AllocationStub_Stack() /* 0x39e6f4 */; // 0x42bf28
  x0 = mem((PP + 0xe000), 0xf00) /* Obj!AlignmentDirectional@11bd4  */; // 0x42bf34
  x2 = x0; // 0x42bf2c
  local_m8 = x2; // 0x42bf38
  memSet(x2, 0xf, w0); // 0x42bf3c
  x0 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x42bf44
  memSet(x2, 0x17, w0); // 0x42bf48
  x0 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x42bf50
  memSet(x2, 0x1b, w0); // 0x42bf54
  x0 = local_m18; // 0x42bf58
  memSet(x2, 0xb, w0); // 0x42bf5c
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x42bf64
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x42bf68
  x0 = 1; // 0x42bf70
  x3 = x0; // 0x42bf6c
  local_m18 = x3; // 0x42bf74
  memSet(x3, 0x13, x0); // 0x42bf78
  x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x42bf80
  memSet(x3, 0x1b, w0); // 0x42bf84
  x0 = local_m8; // 0x42bf88
  memSet(x3, 0xb, w0); // 0x42bf8c
  x1 = NULL; // 0x42bf90
  x2 = 4; // 0x42bf94
  sub_0x61f920(); // 0x42bf98
  x0 = local_m10; // 0x42bfa0
  x2 = x0; // 0x42bf9c
  local_m8 = x2; // 0x42bfa4
  memSet(x2, 0xf, w0); // 0x42bfa8
  x0 = local_m18; // 0x42bfac
  memSet(x2, 0x13, w0); // 0x42bfb0
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x42bfb4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x42bfb8
  x0 = local_m8; // 0x42bfc0
  x1 = x0; // 0x42bfbc
  local_m10 = x1; // 0x42bfc4
  memSet(x1, 0xf, w0); // 0x42bfc8
  x0 = 4; // 0x42bfcc
  memSet(x1, 0xb, w0); // 0x42bfd0
  AllocationStub_Column() /* 0x39310c */; // 0x42bfd4
  x1 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x42bfdc
  memSet(x0, 0xf, w1); // 0x42bfe0
  x1 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x42bfe8
  memSet(x0, 0x13, w1); // 0x42bfec
  x1 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x42bff4
  memSet(x0, 0x17, w1); // 0x42bff8
  x1 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x42c000
  memSet(x0, 0x1b, w1); // 0x42c004
  x1 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x42c00c
  memSet(x0, 0x23, w1); // 0x42c010
  x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x42c018
  memSet(x0, 0x2b, w1); // 0x42c01c
  memSet(x0, 0x2f, xzr); // 0x42c020
  x1 = local_m10; // 0x42c024
  memSet(x0, 0xb, w1); // 0x42c028
  SP = FP; // 0x42c02c
  // frame: FP, LR, mem(SP), 0x10 // 0x42c030
  return;
}

// PartyPocketDialogState_dispose
// raw disassembly:
//  0x4514cc: stp FP, LR, [SP, #-0x10]!
//  0x4514d0: mov FP, SP
//  0x4514d4: sub SP, SP, #8
//  0x4514d8: mov x0, x1
//  0x4514dc: stur x1, [FP, #-8]
//  0x4514e0: ldr BARRIER, [THR, #0x38]
//  0x4514e4: cmp SP, BARRIER
//  0x4514e8: b.ls #0x45151c
//  0x4514ec: mov x1, x0
//  0x4514f0: bl #0x451970
//  0x4514f4: ldur x0, [FP, #-8]
//  0x4514f8: ldur w2, [x0, #0x13]
//  0x4514fc: add x2, x2, HEAP, lsl #32
//  0x451500: add x1, PP, #0x14, lsl #12
//  0x451504: ldr x1, [x1, #0xcf8]
//  0x451508: bl #0x450ab8
//  0x45150c: mov x0, NULL
//  0x451510: mov SP, FP
//  0x451514: ldp FP, LR, [SP], #0x10
//  0x451518: ret 
//  0x45151c: bl #0x61fa28
//  0x451520: b #0x4514ec
//
dynamic PartyPocketDialogState_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4514cc
  // frame: FP = SP // 0x4514d0
  // frame: SP = SP - 8 // 0x4514d4
  x0 = x1; // 0x4514d8
  local_m8 = x1; // 0x4514dc
  BARRIER = mem(THR, 0x38); // 0x4514e0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x45151c
  }
  x1 = x0; // 0x4514ec
  SoulState_dispose() /* 0x451970 */; // 0x4514f0
  w2 = mem((local_m8), 0x13); // 0x4514f8
  x0 = local_m8; // 0x4514f4
  x1 = "soul.event.party_close_pocket" /* pp+0x14cf8 */; // 0x451504
  x2 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4514fc
  SOEventBus_removeEventListener() /* 0x450ab8 */; // 0x451508
  SP = FP; // 0x451510
  x0 = NULL; // 0x45150c
  // frame: FP, LR, mem(SP), 0x10 // 0x451514
  return;
}

// PartyPocketDialogState_initState
// raw disassembly:
//  0x4d638c: stp FP, LR, [SP, #-0x10]!
//  0x4d6390: mov FP, SP
//  0x4d6394: sub SP, SP, #8
//  0x4d6398: mov x0, x1
//  0x4d639c: stur x1, [FP, #-8]
//  0x4d63a0: ldr BARRIER, [THR, #0x38]
//  0x4d63a4: cmp SP, BARRIER
//  0x4d63a8: b.ls #0x4d63fc
//  0x4d63ac: add x1, PP, #0x14, lsl #12
//  0x4d63b0: ldr x1, [x1, #0xd00]
//  0x4d63b4: mov x2, NULL
//  0x4d63b8: bl #0x61ec54
//  0x4d63bc: mov x2, x0
//  0x4d63c0: add x1, PP, #0x14, lsl #12
//  0x4d63c4: ldr x1, [x1, #0xcf8]
//  0x4d63c8: bl #0x4d3338
//  0x4d63cc: ldur x1, [FP, #-8]
//  0x4d63d0: stur w0, [x1, #0x13]
//  0x4d63d4: ldurb w16, [x1, #-1]
//  0x4d63d8: ldurb w17, [x0, #-1]
//  0x4d63dc: and BARRIER, x17, BARRIER, lsr #2
//  0x4d63e0: tst BARRIER, HEAP, lsr #32
//  0x4d63e4: b.eq #0x4d63ec
//  0x4d63e8: bl #0x61e04c
//  0x4d63ec: mov x0, NULL
//  0x4d63f0: mov SP, FP
//  0x4d63f4: ldp FP, LR, [SP], #0x10
//  0x4d63f8: ret 
//  0x4d63fc: bl #0x61fa28
//  0x4d6400: b #0x4d63ac
//
dynamic PartyPocketDialogState_initState() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d638c
  // frame: FP = SP // 0x4d6390
  // frame: SP = SP - 8 // 0x4d6394
  x0 = x1; // 0x4d6398
  local_m8 = x1; // 0x4d639c
  BARRIER = mem(THR, 0x38); // 0x4d63a0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d63fc
  }
  x1 = mem((PP + 0x14000), 0xd00) /* Function */; // 0x4d63b0
  x2 = NULL; // 0x4d63b4
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d63b8
  x1 = "soul.event.party_close_pocket" /* pp+0x14cf8 */; // 0x4d63c4
  x2 = x0; // 0x4d63bc
  SOEventBus_addEventListener() /* 0x4d3338 */; // 0x4d63c8
  x1 = local_m8; // 0x4d63cc
  memSet(x1, 0x13, w0); // 0x4d63d0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d63dc
  w16 = mem(x1, -1); // 0x4d63d4
  w17 = mem(x0, -1); // 0x4d63d8
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d63d4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d63d8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d63e8
  }
  SP = FP; // 0x4d63f0
  x0 = NULL; // 0x4d63ec
  // frame: FP, LR, mem(SP), 0x10 // 0x4d63f4
  return;
}

// PartyPocketDialogState_anon_closure
// raw disassembly:
//  0x4d6404: stp FP, LR, [SP, #-0x10]!
//  0x4d6408: mov FP, SP
//  0x4d640c: ldr BARRIER, [THR, #0x38]
//  0x4d6410: cmp SP, BARRIER
//  0x4d6414: b.ls #0x4d642c
//  0x4d6418: bl #0x3a8d00
//  0x4d641c: mov x0, NULL
//  0x4d6420: mov SP, FP
//  0x4d6424: ldp FP, LR, [SP], #0x10
//  0x4d6428: ret 
//  0x4d642c: bl #0x61fa28
//  0x4d6430: b #0x4d6418
//
dynamic PartyPocketDialogState_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d6404
  BARRIER = mem(THR, 0x38); // 0x4d640c
  // frame: FP = SP // 0x4d6408
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d642c
  }
  PagePKGameBetTabRecordState_anon_closure() /* 0x3a8d00 */; // 0x4d6418
  SP = FP; // 0x4d6420
  x0 = NULL; // 0x4d641c
  // frame: FP, LR, mem(SP), 0x10 // 0x4d6424
  return;
}

// PartyPocketDialog_createState
// raw disassembly:
//  0x4c4a74: stp FP, LR, [SP, #-0x10]!
//  0x4c4a78: mov FP, SP
//  0x4c4a7c: mov x0, x1
//  0x4c4a80: add x1, PP, #0x12, lsl #12
//  0x4c4a84: ldr x1, [x1, #0x360]
//  0x4c4a88: bl #0x4c4aa0
//  0x4c4a8c: ldr x1, [PP, #0x148]
//  0x4c4a90: stur w1, [x0, #0x13]
//  0x4c4a94: mov SP, FP
//  0x4c4a98: ldp FP, LR, [SP], #0x10
//  0x4c4a9c: ret 
//
dynamic PartyPocketDialog_createState() {
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c4a74
  // frame: FP = SP // 0x4c4a78
  x0 = x1; // 0x4c4a7c
  x1 = mem((PP + 0x12000), 0x360) /* TypeArguments */; // 0x4c4a84
  AllocationStub__PartyPocketDialogState() /* 0x4c4aa0 */; // 0x4c4a88
  x1 = "" /* pp+0x148 */; // 0x4c4a8c
  memSet(x0, 0x13, w1); // 0x4c4a90
  SP = FP; // 0x4c4a94
  // frame: FP, LR, mem(SP), 0x10 // 0x4c4a98
  return;
}
