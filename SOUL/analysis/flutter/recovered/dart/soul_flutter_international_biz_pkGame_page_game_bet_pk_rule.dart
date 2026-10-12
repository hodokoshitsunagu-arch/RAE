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
dynamic AllocationStub_BoxConstraints, AllocationStub_BoxDecoration, AllocationStub_ClipRRect;
dynamic AllocationStub_Color, AllocationStub_Column, AllocationStub_Container;
dynamic AllocationStub_DecorationImage, AllocationStub_EdgeInsets, AllocationStub_Expanded;
dynamic AllocationStub_Radius, AllocationStub_SOAssetImage;
dynamic AllocationStub_SingleChildScrollView, AllocationStub_SizedBox, AllocationStub_Stack;
dynamic AllocationStub_StrutStyle, AllocationStub_Text, AllocationStub_TextStyle;
dynamic AllocationStub__Closure, AllocationStub__Double, AllocationStub__GrowableList, BARRIER;
dynamic Container_ctor, FP, GestureDetector_ctor, LR, NULL, PP, SP, ScreenUtil_getScreenHeight;
dynamic ScreenUtil_getScreenWidth, StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, d0, d1;
dynamic d2, getString, local_0, local_m10, local_m18, local_m20, local_m28, local_m30;
dynamic local_m38, local_m40, local_m48, local_m50, local_m58, local_m60, local_m68, local_m70;
dynamic local_m78, local_m8, q0, sub_0x3a1d94, sub_0x61f920, v0_16b, v1_16b, w0, w1, w2, w3;
dynamic w4, w5, w6, w7, x0, x1, x17, x2, x3, x4, x5, x6, x7, x8, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$pkGame$page_game_bet_pk_rule
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PagePKGameBetRule_build
// raw disassembly:
//  0x3b6b9c: stp FP, LR, [SP, #-0x10]!
//  0x3b6ba0: mov FP, SP
//  0x3b6ba4: sub SP, SP, #0xa0
//  0x3b6ba8: mov x0, x2
//  0x3b6bac: stur x2, [FP, #-8]
//  0x3b6bb0: ldr BARRIER, [THR, #0x38]
//  0x3b6bb4: cmp SP, BARRIER
//  0x3b6bb8: b.ls #0x3b73b0
//  0x3b6bbc: mov x1, x0
//  0x3b6bc0: bl #0x3b5484
//  0x3b6bc4: ldur x1, [FP, #-8]
//  0x3b6bc8: stur d0, [FP, #-0x68]
//  0x3b6bcc: bl #0x3a877c
//  0x3b6bd0: mov v1.16b, v0.16b
//  0x3b6bd4: add x17, PP, #0xe, lsl #12
//  0x3b6bd8: ldr d0, [x17, #0xea0]
//  0x3b6bdc: fmul d2, d1, d0
//  0x3b6be0: add x17, PP, #0xe, lsl #12
//  0x3b6be4: ldr d0, [x17, #0xea8]
//  0x3b6be8: fdiv d1, d2, d0
//  0x3b6bec: ldur d0, [FP, #-0x68]
//  0x3b6bf0: stur d1, [FP, #-0x78]
//  0x3b6bf4: fsub d2, d0, d1
//  0x3b6bf8: stur d2, [FP, #-0x70]
//  0x3b6bfc: bl #0x31d844
//  0x3b6c00: mov x1, x0
//  0x3b6c04: ldr x0, [PP, #0x6310]
//  0x3b6c08: stur x1, [FP, #-0x10]
//  0x3b6c0c: stur w0, [x1, #0x27]
//  0x3b6c10: ldr d0, [PP, #0x6080]
//  0x3b6c14: stur d0, [x1, #7]
//  0x3b6c18: stur xzr, [x1, #0xf]
//  0x3b6c1c: stur xzr, [x1, #0x17]
//  0x3b6c20: stur xzr, [x1, #0x1f]
//  0x3b6c24: ldur d0, [FP, #-0x70]
//  0x3b6c28: ldp x0, x2, [THR, #0x50]
//  0x3b6c2c: add x0, x0, #0x10
//  0x3b6c30: cmp x2, x0
//  0x3b6c34: b.ls #0x3b73b8
//  0x3b6c38: str x0, [THR, #0x50]
//  0x3b6c3c: sub x0, x0, #0xf
//  0x3b6c40: mov x2, #0xe15c
//  0x3b6c44: movk x2, #3, lsl #16
//  0x3b6c48: stur x2, [x0, #-1]
//  0x3b6c4c: stur d0, [x0, #7]
//  0x3b6c50: stur x0, [FP, #-8]
//  0x3b6c54: bl #0x391a04
//  0x3b6c58: stur x0, [FP, #-0x18]
//  0x3b6c5c: ldur BARRIER, [FP, #-8]
//  0x3b6c60: add LR, PP, #0xa, lsl #12
//  0x3b6c64: ldr LR, [LR, #0x3c0]
//  0x3b6c68: stp LR, BARRIER, [SP]
//  0x3b6c6c: mov x1, x0
//  0x3b6c70: add x4, PP, #0xe, lsl #12
//  0x3b6c74: ldr x4, [x4, #0xeb0]
//  0x3b6c78: bl #0x391490
//  0x3b6c7c: bl #0x3a1d94
//  0x3b6c80: add x1, PP, #0xf, lsl #12
//  0x3b6c84: ldr x1, [x1, #0x528]
//  0x3b6c88: mov x2, NULL
//  0x3b6c8c: stur x0, [FP, #-0x20]
//  0x3b6c90: bl #0x61ec54
//  0x3b6c94: ldur BARRIER, [FP, #-0x18]
//  0x3b6c98: stp x0, BARRIER, [SP]
//  0x3b6c9c: ldur x1, [FP, #-0x20]
//  0x3b6ca0: add x4, PP, #0xe, lsl #12
//  0x3b6ca4: ldr x4, [x4, #0xec0]
//  0x3b6ca8: bl #0x3a18c4
//  0x3b6cac: bl #0x352b04
//  0x3b6cb0: add x17, PP, #0xe, lsl #12
//  0x3b6cb4: ldr d0, [x17, #0xec8]
//  0x3b6cb8: stur x0, [FP, #-0x18]
//  0x3b6cbc: stur d0, [x0, #7]
//  0x3b6cc0: stur d0, [x0, #0xf]
//  0x3b6cc4: bl #0x352b04
//  0x3b6cc8: add x17, PP, #0xe, lsl #12
//  0x3b6ccc: ldr d0, [x17, #0xec8]
//  0x3b6cd0: stur x0, [FP, #-0x28]
//  0x3b6cd4: stur d0, [x0, #7]
//  0x3b6cd8: stur d0, [x0, #0xf]
//  0x3b6cdc: bl #0x392f28
//  0x3b6ce0: mov x2, x0
//  0x3b6ce4: ldur x0, [FP, #-0x18]
//  0x3b6ce8: stur x2, [FP, #-0x30]
//  0x3b6cec: stur w0, [x2, #7]
//  0x3b6cf0: ldur x0, [FP, #-0x28]
//  0x3b6cf4: stur w0, [x2, #0xb]
//  0x3b6cf8: add x0, PP, #0xa, lsl #12
//  0x3b6cfc: ldr x0, [x0, #0x510]
//  0x3b6d00: stur w0, [x2, #0xf]
//  0x3b6d04: stur w0, [x2, #0x13]
//  0x3b6d08: add x1, PP, #0xe, lsl #12
//  0x3b6d0c: ldr x1, [x1, #0xed0]
//  0x3b6d10: bl #0x3b5478
//  0x3b6d14: mov x1, x0
//  0x3b6d18: add x0, PP, #0xe, lsl #12
//  0x3b6d1c: ldr x0, [x0, #0xed8]
//  0x3b6d20: stur x1, [FP, #-0x18]
//  0x3b6d24: stur w0, [x1, #0xb]
//  0x3b6d28: bl #0x3b546c
//  0x3b6d2c: mov x1, x0
//  0x3b6d30: ldur x0, [FP, #-0x18]
//  0x3b6d34: stur x1, [FP, #-0x28]
//  0x3b6d38: stur w0, [x1, #7]
//  0x3b6d3c: add x0, PP, #0xe, lsl #12
//  0x3b6d40: ldr x0, [x0, #0xee0]
//  0x3b6d44: stur w0, [x1, #0x13]
//  0x3b6d48: add x0, PP, #0xe, lsl #12
//  0x3b6d4c: ldr x0, [x0, #0xaa0]
//  0x3b6d50: stur w0, [x1, #0x17]
//  0x3b6d54: add x2, PP, #0xe, lsl #12
//  0x3b6d58: ldr x2, [x2, #0xee8]
//  0x3b6d5c: stur w2, [x1, #0x1f]
//  0x3b6d60: add x3, NULL, #0x30
//  0x3b6d64: stur w3, [x1, #0x23]
//  0x3b6d68: fmov d0, #1.00000000
//  0x3b6d6c: stur d0, [x1, #0x27]
//  0x3b6d70: stur d0, [x1, #0x2f]
//  0x3b6d74: add x4, PP, #0xe, lsl #12
//  0x3b6d78: ldr x4, [x4, #0xef0]
//  0x3b6d7c: stur w4, [x1, #0x37]
//  0x3b6d80: stur w3, [x1, #0x3b]
//  0x3b6d84: stur w3, [x1, #0x3f]
//  0x3b6d88: bl #0x391dd8
//  0x3b6d8c: mov x1, x0
//  0x3b6d90: ldur x0, [FP, #-0x28]
//  0x3b6d94: stur x1, [FP, #-0x18]
//  0x3b6d98: stur w0, [x1, #0xb]
//  0x3b6d9c: add x0, PP, #0xe, lsl #12
//  0x3b6da0: ldr x0, [x0, #0xb78]
//  0x3b6da4: stur w0, [x1, #0x23]
//  0x3b6da8: bl #0x2e3578
//  0x3b6dac: stur x0, [FP, #-0x28]
//  0x3b6db0: stur xzr, [x0, #7]
//  0x3b6db4: fmov d0, #17.00000000
//  0x3b6db8: stur d0, [x0, #0xf]
//  0x3b6dbc: stur xzr, [x0, #0x17]
//  0x3b6dc0: stur xzr, [x0, #0x1f]
//  0x3b6dc4: bl #0x2b8e80
//  0x3b6dc8: add x17, PP, #0xf, lsl #12
//  0x3b6dcc: ldr d0, [x17, #0x1c8]
//  0x3b6dd0: stur x0, [FP, #-0x38]
//  0x3b6dd4: stur d0, [x0, #7]
//  0x3b6dd8: ldr d0, [PP, #0xb90]
//  0x3b6ddc: stur d0, [x0, #0xf]
//  0x3b6de0: stur xzr, [x0, #0x17]
//  0x3b6de4: stur d0, [x0, #0x1f]
//  0x3b6de8: add x1, PP, #0xe, lsl #12
//  0x3b6dec: ldr x1, [x1, #0xed0]
//  0x3b6df0: bl #0x3b5478
//  0x3b6df4: mov x1, x0
//  0x3b6df8: add x0, PP, #0xf, lsl #12
//  0x3b6dfc: ldr x0, [x0, #0x530]
//  0x3b6e00: stur x1, [FP, #-0x40]
//  0x3b6e04: stur w0, [x1, #0xb]
//  0x3b6e08: bl #0x3b546c
//  0x3b6e0c: mov x1, x0
//  0x3b6e10: ldur x0, [FP, #-0x40]
//  0x3b6e14: stur x1, [FP, #-0x48]
//  0x3b6e18: stur w0, [x1, #7]
//  0x3b6e1c: add x0, PP, #0xf, lsl #12
//  0x3b6e20: ldr x0, [x0, #0x1e0]
//  0x3b6e24: stur w0, [x1, #0x13]
//  0x3b6e28: add x0, PP, #0xe, lsl #12
//  0x3b6e2c: ldr x0, [x0, #0xaa0]
//  0x3b6e30: stur w0, [x1, #0x17]
//  0x3b6e34: add x2, PP, #0xe, lsl #12
//  0x3b6e38: ldr x2, [x2, #0xee8]
//  0x3b6e3c: stur w2, [x1, #0x1f]
//  0x3b6e40: add x2, NULL, #0x30
//  0x3b6e44: stur w2, [x1, #0x23]
//  0x3b6e48: fmov d0, #1.00000000
//  0x3b6e4c: stur d0, [x1, #0x27]
//  0x3b6e50: stur d0, [x1, #0x2f]
//  0x3b6e54: add x3, PP, #0xe, lsl #12
//  0x3b6e58: ldr x3, [x3, #0xef0]
//  0x3b6e5c: stur w3, [x1, #0x37]
//  0x3b6e60: stur w2, [x1, #0x3b]
//  0x3b6e64: stur w2, [x1, #0x3f]
//  0x3b6e68: bl #0x391dd8
//  0x3b6e6c: mov x2, x0
//  0x3b6e70: ldur x0, [FP, #-0x48]
//  0x3b6e74: stur x2, [FP, #-0x40]
//  0x3b6e78: stur w0, [x2, #0xb]
//  0x3b6e7c: add x0, PP, #0xe, lsl #12
//  0x3b6e80: ldr x0, [x0, #0xb78]
//  0x3b6e84: stur w0, [x2, #0x23]
//  0x3b6e88: add x1, PP, #0xc, lsl #12
//  0x3b6e8c: ldr x1, [x1, #0x6e0]
//  0x3b6e90: ldr x4, [PP, #0x4c0]
//  0x3b6e94: bl #0x3a1dcc
//  0x3b6e98: stur x0, [FP, #-0x48]
//  0x3b6e9c: bl #0x31abec
//  0x3b6ea0: mov x1, x0
//  0x3b6ea4: add x0, NULL, #0x20
//  0x3b6ea8: stur x1, [FP, #-0x50]
//  0x3b6eac: stur w0, [x1, #7]
//  0x3b6eb0: ldr x2, [PP, #0x6050]
//  0x3b6eb4: stur w2, [x1, #0xb]
//  0x3b6eb8: add x3, PP, #0xf, lsl #12
//  0x3b6ebc: ldr x3, [x3, #0x1e8]
//  0x3b6ec0: stur w3, [x1, #0x1f]
//  0x3b6ec4: add x4, PP, #0xe, lsl #12
//  0x3b6ec8: ldr x4, [x4, #0xe40]
//  0x3b6ecc: stur w4, [x1, #0x23]
//  0x3b6ed0: bl #0x3b3480
//  0x3b6ed4: mov x1, x0
//  0x3b6ed8: add x0, PP, #0xf, lsl #12
//  0x3b6edc: ldr x0, [x0, #0x1e8]
//  0x3b6ee0: stur x1, [FP, #-0x58]
//  0x3b6ee4: stur w0, [x1, #0x13]
//  0x3b6ee8: ldr x0, [PP, #0x52c8]
//  0x3b6eec: stur w0, [x1, #0x27]
//  0x3b6ef0: add x0, PP, #0xe, lsl #12
//  0x3b6ef4: ldr x0, [x0, #0xe40]
//  0x3b6ef8: stur w0, [x1, #0x1f]
//  0x3b6efc: add x0, NULL, #0x20
//  0x3b6f00: stur w0, [x1, #0x2b]
//  0x3b6f04: bl #0x393bf8
//  0x3b6f08: mov x1, x0
//  0x3b6f0c: ldur x0, [FP, #-0x48]
//  0x3b6f10: stur x1, [FP, #-0x60]
//  0x3b6f14: stur w0, [x1, #0xb]
//  0x3b6f18: ldur x0, [FP, #-0x50]
//  0x3b6f1c: stur w0, [x1, #0x13]
//  0x3b6f20: ldur x0, [FP, #-0x58]
//  0x3b6f24: stur w0, [x1, #0x17]
//  0x3b6f28: ldr x0, [PP, #0x53a8]
//  0x3b6f2c: stur w0, [x1, #0x1b]
//  0x3b6f30: mov x0, #2
//  0x3b6f34: stur w0, [x1, #0x37]
//  0x3b6f38: bl #0x391a04
//  0x3b6f3c: stur x0, [FP, #-0x48]
//  0x3b6f40: ldur BARRIER, [FP, #-0x28]
//  0x3b6f44: ldur LR, [FP, #-0x38]
//  0x3b6f48: stp LR, BARRIER, [SP, #0x18]
//  0x3b6f4c: add BARRIER, PP, #0xf, lsl #12
//  0x3b6f50: ldr BARRIER, [BARRIER, #0x1f0]
//  0x3b6f54: ldur LR, [FP, #-0x40]
//  0x3b6f58: stp LR, BARRIER, [SP, #8]
//  0x3b6f5c: ldur BARRIER, [FP, #-0x60]
//  0x3b6f60: str BARRIER, [SP]
//  0x3b6f64: mov x1, x0
//  0x3b6f68: add x4, PP, #0xf, lsl #12
//  0x3b6f6c: ldr x4, [x4, #0x1f8]
//  0x3b6f70: bl #0x391490
//  0x3b6f74: bl #0x2e3578
//  0x3b6f78: stur x0, [FP, #-0x28]
//  0x3b6f7c: stur xzr, [x0, #7]
//  0x3b6f80: fmov d0, #17.00000000
//  0x3b6f84: stur d0, [x0, #0xf]
//  0x3b6f88: stur xzr, [x0, #0x17]
//  0x3b6f8c: stur xzr, [x0, #0x1f]
//  0x3b6f90: bl #0x3b7404
//  0x3b6f94: stur x0, [FP, #-0x38]
//  0x3b6f98: bl #0x391a04
//  0x3b6f9c: stur x0, [FP, #-0x40]
//  0x3b6fa0: ldur BARRIER, [FP, #-0x28]
//  0x3b6fa4: ldur LR, [FP, #-0x38]
//  0x3b6fa8: stp LR, BARRIER, [SP]
//  0x3b6fac: mov x1, x0
//  0x3b6fb0: add x4, PP, #0xf, lsl #12
//  0x3b6fb4: ldr x4, [x4, #0x200]
//  0x3b6fb8: bl #0x391490
//  0x3b6fbc: mov x1, NULL
//  0x3b6fc0: mov x2, #4
//  0x3b6fc4: bl #0x61f920
//  0x3b6fc8: mov x2, x0
//  0x3b6fcc: ldur x0, [FP, #-0x48]
//  0x3b6fd0: stur x2, [FP, #-0x28]
//  0x3b6fd4: stur w0, [x2, #0xf]
//  0x3b6fd8: ldur x0, [FP, #-0x40]
//  0x3b6fdc: stur w0, [x2, #0x13]
//  0x3b6fe0: ldr x1, [PP, #0x5c58]
//  0x3b6fe4: bl #0x61e854
//  0x3b6fe8: mov x1, x0
//  0x3b6fec: ldur x0, [FP, #-0x28]
//  0x3b6ff0: stur x1, [FP, #-0x38]
//  0x3b6ff4: stur w0, [x1, #0xf]
//  0x3b6ff8: mov x2, #4
//  0x3b6ffc: stur w2, [x1, #0xb]
//  0x3b7000: bl #0x39e6f4
//  0x3b7004: mov x1, x0
//  0x3b7008: add x0, PP, #0xe, lsl #12
//  0x3b700c: ldr x0, [x0, #0xaa0]
//  0x3b7010: stur x1, [FP, #-0x28]
//  0x3b7014: stur w0, [x1, #0xf]
//  0x3b7018: add x0, PP, #0xe, lsl #12
//  0x3b701c: ldr x0, [x0, #0xf08]
//  0x3b7020: stur w0, [x1, #0x17]
//  0x3b7024: add x0, PP, #0xe, lsl #12
//  0x3b7028: ldr x0, [x0, #0xf10]
//  0x3b702c: stur w0, [x1, #0x1b]
//  0x3b7030: ldur x2, [FP, #-0x38]
//  0x3b7034: stur w2, [x1, #0xb]
//  0x3b7038: bl #0x3949ec
//  0x3b703c: mov x1, x0
//  0x3b7040: add x0, PP, #0xf, lsl #12
//  0x3b7044: ldr x0, [x0, #0x280]
//  0x3b7048: stur x1, [FP, #-0x38]
//  0x3b704c: stur w0, [x1, #0x13]
//  0x3b7050: bl #0x2e3578
//  0x3b7054: fmov d0, #20.00000000
//  0x3b7058: stur x0, [FP, #-0x40]
//  0x3b705c: stur d0, [x0, #7]
//  0x3b7060: stur xzr, [x0, #0xf]
//  0x3b7064: stur d0, [x0, #0x17]
//  0x3b7068: stur xzr, [x0, #0x1f]
//  0x3b706c: add x1, PP, #0xc, lsl #12
//  0x3b7070: ldr x1, [x1, #0x6d0]
//  0x3b7074: ldr x4, [PP, #0x4c0]
//  0x3b7078: bl #0x3a1dcc
//  0x3b707c: stur x0, [FP, #-0x48]
//  0x3b7080: bl #0x31abec
//  0x3b7084: mov x1, x0
//  0x3b7088: add x0, NULL, #0x20
//  0x3b708c: stur x1, [FP, #-0x50]
//  0x3b7090: stur w0, [x1, #7]
//  0x3b7094: ldr x0, [PP, #0x6050]
//  0x3b7098: stur w0, [x1, #0xb]
//  0x3b709c: add x0, PP, #0xe, lsl #12
//  0x3b70a0: ldr x0, [x0, #0xde8]
//  0x3b70a4: stur w0, [x1, #0x1f]
//  0x3b70a8: bl #0x393bf8
//  0x3b70ac: mov x1, x0
//  0x3b70b0: ldur x0, [FP, #-0x48]
//  0x3b70b4: stur x1, [FP, #-0x58]
//  0x3b70b8: stur w0, [x1, #0xb]
//  0x3b70bc: ldur x0, [FP, #-0x50]
//  0x3b70c0: stur w0, [x1, #0x13]
//  0x3b70c4: bl #0x391a04
//  0x3b70c8: stur x0, [FP, #-0x48]
//  0x3b70cc: ldur BARRIER, [FP, #-0x40]
//  0x3b70d0: ldur LR, [FP, #-0x58]
//  0x3b70d4: stp LR, BARRIER, [SP]
//  0x3b70d8: mov x1, x0
//  0x3b70dc: add x4, PP, #0xf, lsl #12
//  0x3b70e0: ldr x4, [x4, #0x258]
//  0x3b70e4: bl #0x391490
//  0x3b70e8: bl #0x3a1db4
//  0x3b70ec: mov x2, x0
//  0x3b70f0: add x0, PP, #0xa, lsl #12
//  0x3b70f4: ldr x0, [x0, #0x858]
//  0x3b70f8: stur x2, [FP, #-0x40]
//  0x3b70fc: stur w0, [x2, #0xb]
//  0x3b7100: add x1, NULL, #0x30
//  0x3b7104: stur w1, [x2, #0xf]
//  0x3b7108: ldur x1, [FP, #-0x48]
//  0x3b710c: stur w1, [x2, #0x23]
//  0x3b7110: ldr x1, [PP, #0x77d8]
//  0x3b7114: stur w1, [x2, #0x27]
//  0x3b7118: add x1, PP, #0xe, lsl #12
//  0x3b711c: ldr x1, [x1, #0xf10]
//  0x3b7120: stur w1, [x2, #0x2b]
//  0x3b7124: add x1, PP, #0xf, lsl #12
//  0x3b7128: ldr x1, [x1, #0x140]
//  0x3b712c: stur w1, [x2, #0x2f]
//  0x3b7130: add x1, PP, #0xf, lsl #12
//  0x3b7134: ldr x1, [x1, #0x2f8]
//  0x3b7138: stur w1, [x2, #0x37]
//  0x3b713c: add x1, PP, #0xe, lsl #12
//  0x3b7140: ldr x1, [x1, #0xad0]
//  0x3b7144: bl #0x39fb14
//  0x3b7148: mov x3, x0
//  0x3b714c: mov x0, #1
//  0x3b7150: stur x3, [FP, #-0x48]
//  0x3b7154: stur x0, [x3, #0x13]
//  0x3b7158: add x4, PP, #0xe, lsl #12
//  0x3b715c: ldr x4, [x4, #0xad8]
//  0x3b7160: stur w4, [x3, #0x1b]
//  0x3b7164: ldur x1, [FP, #-0x40]
//  0x3b7168: stur w1, [x3, #0xb]
//  0x3b716c: mov x1, NULL
//  0x3b7170: mov x2, #6
//  0x3b7174: bl #0x61f920
//  0x3b7178: mov x2, x0
//  0x3b717c: ldur x0, [FP, #-0x28]
//  0x3b7180: stur x2, [FP, #-0x40]
//  0x3b7184: stur w0, [x2, #0xf]
//  0x3b7188: ldur x0, [FP, #-0x38]
//  0x3b718c: stur w0, [x2, #0x13]
//  0x3b7190: ldur x0, [FP, #-0x48]
//  0x3b7194: stur w0, [x2, #0x17]
//  0x3b7198: ldr x1, [PP, #0x5c58]
//  0x3b719c: bl #0x61e854
//  0x3b71a0: mov x1, x0
//  0x3b71a4: ldur x0, [FP, #-0x40]
//  0x3b71a8: stur x1, [FP, #-0x28]
//  0x3b71ac: stur w0, [x1, #0xf]
//  0x3b71b0: mov x0, #6
//  0x3b71b4: stur w0, [x1, #0xb]
//  0x3b71b8: bl #0x39310c
//  0x3b71bc: mov x1, x0
//  0x3b71c0: add x0, PP, #0xa, lsl #12
//  0x3b71c4: ldr x0, [x0, #0x858]
//  0x3b71c8: stur x1, [FP, #-0x38]
//  0x3b71cc: stur w0, [x1, #0xf]
//  0x3b71d0: add x2, PP, #0xe, lsl #12
//  0x3b71d4: ldr x2, [x2, #0xae0]
//  0x3b71d8: stur w2, [x1, #0x13]
//  0x3b71dc: add x3, PP, #0xe, lsl #12
//  0x3b71e0: ldr x3, [x3, #0xae8]
//  0x3b71e4: stur w3, [x1, #0x17]
//  0x3b71e8: add x4, PP, #0xe, lsl #12
//  0x3b71ec: ldr x4, [x4, #0xb60]
//  0x3b71f0: stur w4, [x1, #0x1b]
//  0x3b71f4: add x5, PP, #0xe, lsl #12
//  0x3b71f8: ldr x5, [x5, #0xaf8]
//  0x3b71fc: stur w5, [x1, #0x23]
//  0x3b7200: add x6, PP, #0xa, lsl #12
//  0x3b7204: ldr x6, [x6, #0xa8]
//  0x3b7208: stur w6, [x1, #0x2b]
//  0x3b720c: stur xzr, [x1, #0x2f]
//  0x3b7210: ldur x7, [FP, #-0x28]
//  0x3b7214: stur w7, [x1, #0xb]
//  0x3b7218: ldur d0, [FP, #-0x78]
//  0x3b721c: ldp x7, x8, [THR, #0x50]
//  0x3b7220: add x7, x7, #0x10
//  0x3b7224: cmp x8, x7
//  0x3b7228: b.ls #0x3b73d0
//  0x3b722c: str x7, [THR, #0x50]
//  0x3b7230: sub x7, x7, #0xf
//  0x3b7234: mov x8, #0xe15c
//  0x3b7238: movk x8, #3, lsl #16
//  0x3b723c: stur x8, [x7, #-1]
//  0x3b7240: stur d0, [x7, #7]
//  0x3b7244: stur x7, [FP, #-0x28]
//  0x3b7248: bl #0x391a04
//  0x3b724c: stur x0, [FP, #-0x40]
//  0x3b7250: ldur BARRIER, [FP, #-0x28]
//  0x3b7254: ldr LR, [PP, #0x5458]
//  0x3b7258: stp LR, BARRIER, [SP, #0x10]
//  0x3b725c: ldur BARRIER, [FP, #-0x18]
//  0x3b7260: ldur LR, [FP, #-0x38]
//  0x3b7264: stp LR, BARRIER, [SP]
//  0x3b7268: mov x1, x0
//  0x3b726c: add x4, PP, #0xe, lsl #12
//  0x3b7270: ldr x4, [x4, #0xf38]
//  0x3b7274: bl #0x391490
//  0x3b7278: bl #0x3b378c
//  0x3b727c: mov x2, x0
//  0x3b7280: ldur x0, [FP, #-0x30]
//  0x3b7284: stur x2, [FP, #-0x18]
//  0x3b7288: stur w0, [x2, #0xf]
//  0x3b728c: add x0, PP, #0xe, lsl #12
//  0x3b7290: ldr x0, [x0, #0xf40]
//  0x3b7294: stur w0, [x2, #0x17]
//  0x3b7298: ldur x0, [FP, #-0x40]
//  0x3b729c: stur w0, [x2, #0xb]
//  0x3b72a0: add x1, PP, #0xe, lsl #12
//  0x3b72a4: ldr x1, [x1, #0xad0]
//  0x3b72a8: bl #0x39fb14
//  0x3b72ac: mov x3, x0
//  0x3b72b0: mov x0, #1
//  0x3b72b4: stur x3, [FP, #-0x28]
//  0x3b72b8: stur x0, [x3, #0x13]
//  0x3b72bc: add x0, PP, #0xe, lsl #12
//  0x3b72c0: ldr x0, [x0, #0xad8]
//  0x3b72c4: stur w0, [x3, #0x1b]
//  0x3b72c8: ldur x0, [FP, #-0x18]
//  0x3b72cc: stur w0, [x3, #0xb]
//  0x3b72d0: mov x1, NULL
//  0x3b72d4: mov x2, #4
//  0x3b72d8: bl #0x61f920
//  0x3b72dc: mov x2, x0
//  0x3b72e0: ldur x0, [FP, #-0x20]
//  0x3b72e4: stur x2, [FP, #-0x18]
//  0x3b72e8: stur w0, [x2, #0xf]
//  0x3b72ec: ldur x0, [FP, #-0x28]
//  0x3b72f0: stur w0, [x2, #0x13]
//  0x3b72f4: ldr x1, [PP, #0x5c58]
//  0x3b72f8: bl #0x61e854
//  0x3b72fc: mov x1, x0
//  0x3b7300: ldur x0, [FP, #-0x18]
//  0x3b7304: stur x1, [FP, #-0x20]
//  0x3b7308: stur w0, [x1, #0xf]
//  0x3b730c: mov x0, #4
//  0x3b7310: stur w0, [x1, #0xb]
//  0x3b7314: bl #0x39310c
//  0x3b7318: mov x1, x0
//  0x3b731c: add x0, PP, #0xa, lsl #12
//  0x3b7320: ldr x0, [x0, #0x858]
//  0x3b7324: stur x1, [FP, #-0x18]
//  0x3b7328: stur w0, [x1, #0xf]
//  0x3b732c: add x0, PP, #0xe, lsl #12
//  0x3b7330: ldr x0, [x0, #0xae0]
//  0x3b7334: stur w0, [x1, #0x13]
//  0x3b7338: add x0, PP, #0xe, lsl #12
//  0x3b733c: ldr x0, [x0, #0xae8]
//  0x3b7340: stur w0, [x1, #0x17]
//  0x3b7344: add x0, PP, #0xe, lsl #12
//  0x3b7348: ldr x0, [x0, #0xb60]
//  0x3b734c: stur w0, [x1, #0x1b]
//  0x3b7350: add x0, PP, #0xe, lsl #12
//  0x3b7354: ldr x0, [x0, #0xaf8]
//  0x3b7358: stur w0, [x1, #0x23]
//  0x3b735c: add x0, PP, #0xa, lsl #12
//  0x3b7360: ldr x0, [x0, #0xa8]
//  0x3b7364: stur w0, [x1, #0x2b]
//  0x3b7368: stur xzr, [x1, #0x2f]
//  0x3b736c: ldur x0, [FP, #-0x20]
//  0x3b7370: stur w0, [x1, #0xb]
//  0x3b7374: bl #0x391a04
//  0x3b7378: stur x0, [FP, #-0x20]
//  0x3b737c: ldur BARRIER, [FP, #-0x10]
//  0x3b7380: ldur LR, [FP, #-8]
//  0x3b7384: stp LR, BARRIER, [SP, #8]
//  0x3b7388: ldur BARRIER, [FP, #-0x18]
//  0x3b738c: str BARRIER, [SP]
//  0x3b7390: mov x1, x0
//  0x3b7394: add x4, PP, #0xe, lsl #12
//  0x3b7398: ldr x4, [x4, #0xf48]
//  0x3b739c: bl #0x391490
//  0x3b73a0: ldur x0, [FP, #-0x20]
//  0x3b73a4: mov SP, FP
//  0x3b73a8: ldp FP, LR, [SP], #0x10
//  0x3b73ac: ret 
//  0x3b73b0: bl #0x61fa28
//  0x3b73b4: b #0x3b6bbc
//  0x3b73b8: str q0, [SP, #-0x10]!
//  0x3b73bc: str x1, [SP, #-8]!
//  0x3b73c0: bl #0x61f878
//  0x3b73c4: ldr x1, [SP], #8
//  0x3b73c8: ldr q0, [SP], #0x10
//  0x3b73cc: b #0x3b6c4c
//  0x3b73d0: str q0, [SP, #-0x10]!
//  0x3b73d4: stp x5, x6, [SP, #-0x10]!
//  0x3b73d8: stp x3, x4, [SP, #-0x10]!
//  0x3b73dc: stp x1, x2, [SP, #-0x10]!
//  0x3b73e0: str x0, [SP, #-8]!
//  0x3b73e4: bl #0x61f878
//  0x3b73e8: mov x7, x0
//  0x3b73ec: ldr x0, [SP], #8
//  0x3b73f0: ldp x1, x2, [SP], #0x10
//  0x3b73f4: ldp x3, x4, [SP], #0x10
//  0x3b73f8: ldp x5, x6, [SP], #0x10
//  0x3b73fc: ldr q0, [SP], #0x10
//  0x3b7400: b #0x3b7240
//
dynamic PagePKGameBetRule_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic q0;
  dynamic v1_16b;
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x3b6b9c
  // frame: FP = SP // 0x3b6ba0
  // frame: SP = SP - 0xa0 // 0x3b6ba4
  x0 = x2; // 0x3b6ba8
  local_m8 = x2; // 0x3b6bac
  BARRIER = mem(THR, 0x38); // 0x3b6bb0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3b73b0
  }
  x1 = x0; // 0x3b6bbc
  ScreenUtil_getScreenHeight() /* 0x3b5484 */; // 0x3b6bc0
  x1 = local_m8; // 0x3b6bc4
  local_m68 = d0; // 0x3b6bc8
  ScreenUtil_getScreenWidth() /* 0x3a877c */; // 0x3b6bcc
  d0 = local_m68; // 0x3b6bec
  d1 = (((d1 * d0) /* float */) / d0) /* float */; // 0x3b6be8
  d2 = (d1 * d0) /* float */; // 0x3b6bdc
  v1_16b = v0_16b; // 0x3b6bd0
  x17 = PP + 0xe000; // 0x3b6be0
  local_m78 = d1; // 0x3b6bf0
  d2 = (d0 - d1) /* float */; // 0x3b6bf4
  local_m70 = d2; // 0x3b6bf8
  AllocationStub_Color() /* 0x31d844 */; // 0x3b6bfc
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3b6c04
  x1 = x0; // 0x3b6c00
  local_m10 = x1; // 0x3b6c08
  memSet(x1, 0x27, w0); // 0x3b6c0c
  d0 = 4603579539098121011; // 0x3b6c10
  memSet(x1, 7, d0); // 0x3b6c14
  memSet(x1, 0xf, xzr); // 0x3b6c18
  memSet(x1, 0x17, xzr); // 0x3b6c1c
  memSet(x1, 0x1f, xzr); // 0x3b6c20
  d0 = local_m70; // 0x3b6c24
  memRead2(THR, 0x50, x0, x2); // 0x3b6c28
  x0 = x0 + 0x10; // 0x3b6c2c
  if (x2 <= x0) {
    local_m10 = q0; // 0x3b73b8
    local_m8 = x1; // 0x3b73bc
    AllocationStub__Double() /* 0x61f878 */; // 0x3b73c0
    q0 = local_0; // 0x3b73c8
    x1 = local_0; // 0x3b73c4
  } else {
    memSet(THR, 0x50, x0); // 0x3b6c38
    x0 = x0 - 0xf; // 0x3b6c3c
    x2 = (x2 & 0xffff) | 0x30000; // 0x3b6c44
    memSet(x0, -1, x2); // 0x3b6c48
  }
  memSet(x0, 7, d0); // 0x3b6c4c
  local_m8 = x0; // 0x3b6c50
  AllocationStub_Container() /* 0x391a04 */; // 0x3b6c54
  local_m18 = x0; // 0x3b6c58
  BARRIER = local_m8; // 0x3b6c5c
  LR = mem((PP + 0xa000), 0x3c0) /* Obj!Color@120b8  */; // 0x3b6c64
  // frame: LR, BARRIER, mem(SP) // 0x3b6c68
  x1 = x0; // 0x3b6c6c
  x4 = mem((PP + 0xe000), 0xeb0) /* ImmutableArray */; // 0x3b6c74
  Container_ctor() /* 0x391490 */; // 0x3b6c78
  sub_0x3a1d94(); // 0x3b6c7c
  x1 = mem((PP + 0xf000), 0x528) /* Function */; // 0x3b6c84
  x2 = NULL; // 0x3b6c88
  local_m20 = x0; // 0x3b6c8c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3b6c90
  BARRIER = local_m18; // 0x3b6c94
  // frame: x0, BARRIER, mem(SP) // 0x3b6c98
  x1 = local_m20; // 0x3b6c9c
  x4 = mem((PP + 0xe000), 0xec0) /* ImmutableArray */; // 0x3b6ca4
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x3b6ca8
  AllocationStub_Radius() /* 0x352b04 */; // 0x3b6cac
  d0 = 4629700416936869888; // 0x3b6cb4
  x17 = PP + 0xe000; // 0x3b6cb0
  local_m18 = x0; // 0x3b6cb8
  memSet(x0, 7, d0); // 0x3b6cbc
  memSet(x0, 0xf, d0); // 0x3b6cc0
  AllocationStub_Radius() /* 0x352b04 */; // 0x3b6cc4
  d0 = 4629700416936869888; // 0x3b6ccc
  x17 = PP + 0xe000; // 0x3b6cc8
  local_m28 = x0; // 0x3b6cd0
  memSet(x0, 7, d0); // 0x3b6cd4
  memSet(x0, 0xf, d0); // 0x3b6cd8
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x3b6cdc
  x0 = local_m18; // 0x3b6ce4
  x2 = x0; // 0x3b6ce0
  local_m30 = x2; // 0x3b6ce8
  memSet(x2, 7, w0); // 0x3b6cec
  x0 = local_m28; // 0x3b6cf0
  memSet(x2, 0xb, w0); // 0x3b6cf4
  x0 = mem((PP + 0xa000), 0x510) /* Obj!Radius@120d9  */; // 0x3b6cfc
  memSet(x2, 0xf, w0); // 0x3b6d00
  memSet(x2, 0x13, w0); // 0x3b6d04
  x1 = mem((PP + 0xe000), 0xed0) /* TypeArguments */; // 0x3b6d0c
  AllocationStub_AssetImage() /* 0x3b5478 */; // 0x3b6d10
  x0 = "assets/images/3.0x/game_bg_bet_normal.webp" /* pp+0xeed8 */; // 0x3b6d1c
  x1 = x0; // 0x3b6d14
  local_m18 = x1; // 0x3b6d20
  memSet(x1, 0xb, w0); // 0x3b6d24
  AllocationStub_DecorationImage() /* 0x3b546c */; // 0x3b6d28
  x0 = local_m18; // 0x3b6d30
  x1 = x0; // 0x3b6d2c
  local_m28 = x1; // 0x3b6d34
  memSet(x1, 7, w0); // 0x3b6d38
  x0 = mem((PP + 0xe000), 0xee0) /* Obj!BoxFit@12285  */; // 0x3b6d40
  memSet(x1, 0x13, w0); // 0x3b6d44
  x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x3b6d4c
  memSet(x1, 0x17, w0); // 0x3b6d50
  x2 = mem((PP + 0xe000), 0xee8) /* Obj!ImageRepeat@12281  */; // 0x3b6d58
  memSet(x1, 0x1f, w2); // 0x3b6d5c
  x3 = NULL + 0x30; // 0x3b6d60
  memSet(x1, 0x23, w3); // 0x3b6d64
  d0 = 1.00000000 /* bits */; // 0x3b6d68
  memSet(x1, 0x27, d0); // 0x3b6d6c
  memSet(x1, 0x2f, d0); // 0x3b6d70
  x4 = mem((PP + 0xe000), 0xef0) /* Obj!FilterQuality@12349  */; // 0x3b6d78
  memSet(x1, 0x37, w4); // 0x3b6d7c
  memSet(x1, 0x3b, w3); // 0x3b6d80
  memSet(x1, 0x3f, w3); // 0x3b6d84
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x3b6d88
  x0 = local_m28; // 0x3b6d90
  x1 = x0; // 0x3b6d8c
  local_m18 = x1; // 0x3b6d94
  memSet(x1, 0xb, w0); // 0x3b6d98
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x3b6da0
  memSet(x1, 0x23, w0); // 0x3b6da4
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3b6da8
  local_m28 = x0; // 0x3b6dac
  memSet(x0, 7, xzr); // 0x3b6db0
  d0 = 17.00000000 /* bits */; // 0x3b6db4
  memSet(x0, 0xf, d0); // 0x3b6db8
  memSet(x0, 0x17, xzr); // 0x3b6dbc
  memSet(x0, 0x1f, xzr); // 0x3b6dc0
  AllocationStub_BoxConstraints() /* 0x2b8e80 */; // 0x3b6dc4
  d0 = 4639692778610098176; // 0x3b6dcc
  x17 = PP + 0xf000; // 0x3b6dc8
  local_m38 = x0; // 0x3b6dd0
  memSet(x0, 7, d0); // 0x3b6dd4
  d0 = 9218868437227405312; // 0x3b6dd8
  memSet(x0, 0xf, d0); // 0x3b6ddc
  memSet(x0, 0x17, xzr); // 0x3b6de0
  memSet(x0, 0x1f, d0); // 0x3b6de4
  x1 = mem((PP + 0xe000), 0xed0) /* TypeArguments */; // 0x3b6dec
  AllocationStub_AssetImage() /* 0x3b5478 */; // 0x3b6df0
  x0 = "assets/images/3.0x/game_bg_bet_win_lose.webp" /* pp+0xf530 */; // 0x3b6dfc
  x1 = x0; // 0x3b6df4
  local_m40 = x1; // 0x3b6e00
  memSet(x1, 0xb, w0); // 0x3b6e04
  AllocationStub_DecorationImage() /* 0x3b546c */; // 0x3b6e08
  x0 = local_m40; // 0x3b6e10
  x1 = x0; // 0x3b6e0c
  local_m48 = x1; // 0x3b6e14
  memSet(x1, 7, w0); // 0x3b6e18
  x0 = mem((PP + 0xf000), 0x1e0) /* Obj!BoxFit@12286  */; // 0x3b6e20
  memSet(x1, 0x13, w0); // 0x3b6e24
  x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x3b6e2c
  memSet(x1, 0x17, w0); // 0x3b6e30
  x2 = mem((PP + 0xe000), 0xee8) /* Obj!ImageRepeat@12281  */; // 0x3b6e38
  memSet(x1, 0x1f, w2); // 0x3b6e3c
  x2 = NULL + 0x30; // 0x3b6e40
  memSet(x1, 0x23, w2); // 0x3b6e44
  d0 = 1.00000000 /* bits */; // 0x3b6e48
  memSet(x1, 0x27, d0); // 0x3b6e4c
  memSet(x1, 0x2f, d0); // 0x3b6e50
  x3 = mem((PP + 0xe000), 0xef0) /* Obj!FilterQuality@12349  */; // 0x3b6e58
  memSet(x1, 0x37, w3); // 0x3b6e5c
  memSet(x1, 0x3b, w2); // 0x3b6e60
  memSet(x1, 0x3f, w2); // 0x3b6e64
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x3b6e68
  x0 = local_m48; // 0x3b6e70
  x2 = x0; // 0x3b6e6c
  local_m40 = x2; // 0x3b6e74
  memSet(x2, 0xb, w0); // 0x3b6e78
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x3b6e80
  memSet(x2, 0x23, w0); // 0x3b6e84
  x1 = "virtual_party_dice_game_rules_popup_title" /* pp+0xc6e0 */; // 0x3b6e8c
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3b6e90
  getString() /* 0x3a1dcc */; // 0x3b6e94
  local_m48 = x0; // 0x3b6e98
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3b6e9c
  x0 = NULL + 0x20; // 0x3b6ea4
  x1 = x0; // 0x3b6ea0
  local_m50 = x1; // 0x3b6ea8
  memSet(x1, 7, w0); // 0x3b6eac
  x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x3b6eb0
  memSet(x1, 0xb, w2); // 0x3b6eb4
  x3 = mem((PP + 0xf000), 0x1e8) /* Double */; // 0x3b6ebc
  memSet(x1, 0x1f, w3); // 0x3b6ec0
  x4 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x3b6ec8
  memSet(x1, 0x23, w4); // 0x3b6ecc
  AllocationStub_StrutStyle() /* 0x3b3480 */; // 0x3b6ed0
  x0 = mem((PP + 0xf000), 0x1e8) /* Double */; // 0x3b6edc
  x1 = x0; // 0x3b6ed4
  local_m58 = x1; // 0x3b6ee0
  memSet(x1, 0x13, w0); // 0x3b6ee4
  x0 = mem(PP, 0x52c8) /* Double */; // 0x3b6ee8
  memSet(x1, 0x27, w0); // 0x3b6eec
  x0 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x3b6ef4
  memSet(x1, 0x1f, w0); // 0x3b6ef8
  x0 = NULL + 0x20; // 0x3b6efc
  memSet(x1, 0x2b, w0); // 0x3b6f00
  AllocationStub_Text() /* 0x393bf8 */; // 0x3b6f04
  x0 = local_m48; // 0x3b6f0c
  x1 = x0; // 0x3b6f08
  local_m60 = x1; // 0x3b6f10
  memSet(x1, 0xb, w0); // 0x3b6f14
  x0 = local_m50; // 0x3b6f18
  memSet(x1, 0x13, w0); // 0x3b6f1c
  x0 = local_m58; // 0x3b6f20
  memSet(x1, 0x17, w0); // 0x3b6f24
  x0 = mem(PP, 0x53a8) /* Obj!TextAlign@12316  */; // 0x3b6f28
  memSet(x1, 0x1b, w0); // 0x3b6f2c
  x0 = 2; // 0x3b6f30
  memSet(x1, 0x37, w0); // 0x3b6f34
  AllocationStub_Container() /* 0x391a04 */; // 0x3b6f38
  local_m48 = x0; // 0x3b6f3c
  BARRIER = local_m28; // 0x3b6f40
  LR = local_m38; // 0x3b6f44
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x3b6f48
  BARRIER = mem((PP + 0xf000), 0x1f0) /* Obj!EdgeInsets@11b8a  */; // 0x3b6f50
  LR = local_m40; // 0x3b6f54
  // frame: LR, BARRIER, mem(SP, 8) // 0x3b6f58
  BARRIER = local_m60; // 0x3b6f5c
  local_0 = BARRIER; // 0x3b6f60
  x1 = x0; // 0x3b6f64
  x4 = mem((PP + 0xf000), 0x1f8) /* ImmutableArray */; // 0x3b6f6c
  Container_ctor() /* 0x391490 */; // 0x3b6f70
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3b6f74
  local_m28 = x0; // 0x3b6f78
  memSet(x0, 7, xzr); // 0x3b6f7c
  d0 = 17.00000000 /* bits */; // 0x3b6f80
  memSet(x0, 0xf, d0); // 0x3b6f84
  memSet(x0, 0x17, xzr); // 0x3b6f88
  memSet(x0, 0x1f, xzr); // 0x3b6f8c
  backButton() /* 0x3b7404 */; // 0x3b6f90
  local_m38 = x0; // 0x3b6f94
  AllocationStub_Container() /* 0x391a04 */; // 0x3b6f98
  local_m40 = x0; // 0x3b6f9c
  BARRIER = local_m28; // 0x3b6fa0
  LR = local_m38; // 0x3b6fa4
  // frame: LR, BARRIER, mem(SP) // 0x3b6fa8
  x1 = x0; // 0x3b6fac
  x4 = mem((PP + 0xf000), 0x200) /* ImmutableArray */; // 0x3b6fb4
  Container_ctor() /* 0x391490 */; // 0x3b6fb8
  x1 = NULL; // 0x3b6fbc
  x2 = 4; // 0x3b6fc0
  sub_0x61f920(); // 0x3b6fc4
  x0 = local_m48; // 0x3b6fcc
  x2 = x0; // 0x3b6fc8
  local_m28 = x2; // 0x3b6fd0
  memSet(x2, 0xf, w0); // 0x3b6fd4
  x0 = local_m40; // 0x3b6fd8
  memSet(x2, 0x13, w0); // 0x3b6fdc
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3b6fe0
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3b6fe4
  x0 = local_m28; // 0x3b6fec
  x1 = x0; // 0x3b6fe8
  local_m38 = x1; // 0x3b6ff0
  memSet(x1, 0xf, w0); // 0x3b6ff4
  x2 = 4; // 0x3b6ff8
  memSet(x1, 0xb, w2); // 0x3b6ffc
  AllocationStub_Stack() /* 0x39e6f4 */; // 0x3b7000
  x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x3b700c
  x1 = x0; // 0x3b7004
  local_m28 = x1; // 0x3b7010
  memSet(x1, 0xf, w0); // 0x3b7014
  x0 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x3b701c
  memSet(x1, 0x17, w0); // 0x3b7020
  x0 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x3b7028
  memSet(x1, 0x1b, w0); // 0x3b702c
  x2 = local_m38; // 0x3b7030
  memSet(x1, 0xb, w2); // 0x3b7034
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x3b7038
  x0 = mem((PP + 0xf000), 0x280) /* Double */; // 0x3b7044
  x1 = x0; // 0x3b703c
  local_m38 = x1; // 0x3b7048
  memSet(x1, 0x13, w0); // 0x3b704c
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3b7050
  d0 = 20.00000000 /* bits */; // 0x3b7054
  local_m40 = x0; // 0x3b7058
  memSet(x0, 7, d0); // 0x3b705c
  memSet(x0, 0xf, xzr); // 0x3b7060
  memSet(x0, 0x17, d0); // 0x3b7064
  memSet(x0, 0x1f, xzr); // 0x3b7068
  x1 = "virtual_party_dice_game_rules_popup_content" /* pp+0xc6d0 */; // 0x3b7070
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3b7074
  getString() /* 0x3a1dcc */; // 0x3b7078
  local_m48 = x0; // 0x3b707c
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3b7080
  x0 = NULL + 0x20; // 0x3b7088
  x1 = x0; // 0x3b7084
  local_m50 = x1; // 0x3b708c
  memSet(x1, 7, w0); // 0x3b7090
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x3b7094
  memSet(x1, 0xb, w0); // 0x3b7098
  x0 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x3b70a0
  memSet(x1, 0x1f, w0); // 0x3b70a4
  AllocationStub_Text() /* 0x393bf8 */; // 0x3b70a8
  x0 = local_m48; // 0x3b70b0
  x1 = x0; // 0x3b70ac
  local_m58 = x1; // 0x3b70b4
  memSet(x1, 0xb, w0); // 0x3b70b8
  x0 = local_m50; // 0x3b70bc
  memSet(x1, 0x13, w0); // 0x3b70c0
  AllocationStub_Container() /* 0x391a04 */; // 0x3b70c4
  local_m48 = x0; // 0x3b70c8
  BARRIER = local_m40; // 0x3b70cc
  LR = local_m58; // 0x3b70d0
  // frame: LR, BARRIER, mem(SP) // 0x3b70d4
  x1 = x0; // 0x3b70d8
  x4 = mem((PP + 0xf000), 0x258) /* ImmutableArray */; // 0x3b70e0
  Container_ctor() /* 0x391490 */; // 0x3b70e4
  AllocationStub_SingleChildScrollView() /* 0x3a1db4 */; // 0x3b70e8
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3b70f4
  x2 = x0; // 0x3b70ec
  local_m40 = x2; // 0x3b70f8
  memSet(x2, 0xb, w0); // 0x3b70fc
  x1 = NULL + 0x30; // 0x3b7100
  memSet(x2, 0xf, w1); // 0x3b7104
  x1 = local_m48; // 0x3b7108
  memSet(x2, 0x23, w1); // 0x3b710c
  x1 = mem(PP, 0x77d8) /* Obj!DragStartBehavior@122d8  */; // 0x3b7110
  memSet(x2, 0x27, w1); // 0x3b7114
  x1 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x3b711c
  memSet(x2, 0x2b, w1); // 0x3b7120
  x1 = mem((PP + 0xf000), 0x140) /* Obj!HitTestBehavior@12262  */; // 0x3b7128
  memSet(x2, 0x2f, w1); // 0x3b712c
  x1 = mem((PP + 0xf000), 0x2f8); // 0x3b7134
  memSet(x2, 0x37, w1); // 0x3b7138
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x3b7140
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x3b7144
  x0 = 1; // 0x3b714c
  x3 = x0; // 0x3b7148
  local_m48 = x3; // 0x3b7150
  memSet(x3, 0x13, x0); // 0x3b7154
  x4 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x3b715c
  memSet(x3, 0x1b, w4); // 0x3b7160
  x1 = local_m40; // 0x3b7164
  memSet(x3, 0xb, w1); // 0x3b7168
  x1 = NULL; // 0x3b716c
  x2 = 6; // 0x3b7170
  sub_0x61f920(); // 0x3b7174
  x0 = local_m28; // 0x3b717c
  x2 = x0; // 0x3b7178
  local_m40 = x2; // 0x3b7180
  memSet(x2, 0xf, w0); // 0x3b7184
  x0 = local_m38; // 0x3b7188
  memSet(x2, 0x13, w0); // 0x3b718c
  x0 = local_m48; // 0x3b7190
  memSet(x2, 0x17, w0); // 0x3b7194
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3b7198
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3b719c
  x0 = local_m40; // 0x3b71a4
  x1 = x0; // 0x3b71a0
  local_m28 = x1; // 0x3b71a8
  memSet(x1, 0xf, w0); // 0x3b71ac
  x0 = 6; // 0x3b71b0
  memSet(x1, 0xb, w0); // 0x3b71b4
  AllocationStub_Column() /* 0x39310c */; // 0x3b71b8
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3b71c4
  x1 = x0; // 0x3b71bc
  local_m38 = x1; // 0x3b71c8
  memSet(x1, 0xf, w0); // 0x3b71cc
  x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3b71d4
  memSet(x1, 0x13, w2); // 0x3b71d8
  x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3b71e0
  memSet(x1, 0x17, w3); // 0x3b71e4
  x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3b71ec
  memSet(x1, 0x1b, w4); // 0x3b71f0
  x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3b71f8
  memSet(x1, 0x23, w5); // 0x3b71fc
  x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3b7204
  memSet(x1, 0x2b, w6); // 0x3b7208
  memSet(x1, 0x2f, xzr); // 0x3b720c
  x7 = local_m28; // 0x3b7210
  memSet(x1, 0xb, w7); // 0x3b7214
  d0 = local_m78; // 0x3b7218
  memRead2(THR, 0x50, x7, x8); // 0x3b721c
  x7 = x7 + 0x10; // 0x3b7220
  if (x8 <= x7) {
    local_m10 = q0; // 0x3b73d0
    // frame: x5, x6, mem(SP, -0x10)! // 0x3b73d4
    // frame: x3, x4, mem(SP, -0x10)! // 0x3b73d8
    // frame: x1, x2, mem(SP, -0x10)! // 0x3b73dc
    local_m8 = x0; // 0x3b73e0
    AllocationStub__Double() /* 0x61f878 */; // 0x3b73e4
    x0 = local_0; // 0x3b73ec
    x7 = x0; // 0x3b73e8
    // frame: x1, x2, mem(SP), 0x10 // 0x3b73f0
    // frame: x3, x4, mem(SP), 0x10 // 0x3b73f4
    // frame: x5, x6, mem(SP), 0x10 // 0x3b73f8
    q0 = local_0; // 0x3b73fc
  } else {
    memSet(THR, 0x50, x7); // 0x3b722c
    x7 = x7 - 0xf; // 0x3b7230
    x8 = (x8 & 0xffff) | 0x30000; // 0x3b7238
    memSet(x7, -1, x8); // 0x3b723c
  }
  memSet(x7, 7, d0); // 0x3b7240
  local_m28 = x7; // 0x3b7244
  AllocationStub_Container() /* 0x391a04 */; // 0x3b7248
  local_m40 = x0; // 0x3b724c
  BARRIER = local_m28; // 0x3b7250
  LR = mem(PP, 0x5458) /* Double */; // 0x3b7254
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x3b7258
  BARRIER = local_m18; // 0x3b725c
  LR = local_m38; // 0x3b7260
  // frame: LR, BARRIER, mem(SP) // 0x3b7264
  x1 = x0; // 0x3b7268
  x4 = mem((PP + 0xe000), 0xf38) /* ImmutableArray */; // 0x3b7270
  Container_ctor() /* 0x391490 */; // 0x3b7274
  AllocationStub_ClipRRect() /* 0x3b378c */; // 0x3b7278
  x0 = local_m30; // 0x3b7280
  x2 = x0; // 0x3b727c
  local_m18 = x2; // 0x3b7284
  memSet(x2, 0xf, w0); // 0x3b7288
  x0 = mem((PP + 0xe000), 0xf40) /* Obj!Clip@12344  */; // 0x3b7290
  memSet(x2, 0x17, w0); // 0x3b7294
  x0 = local_m40; // 0x3b7298
  memSet(x2, 0xb, w0); // 0x3b729c
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x3b72a4
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x3b72a8
  x0 = 1; // 0x3b72b0
  x3 = x0; // 0x3b72ac
  local_m28 = x3; // 0x3b72b4
  memSet(x3, 0x13, x0); // 0x3b72b8
  x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x3b72c0
  memSet(x3, 0x1b, w0); // 0x3b72c4
  x0 = local_m18; // 0x3b72c8
  memSet(x3, 0xb, w0); // 0x3b72cc
  x1 = NULL; // 0x3b72d0
  x2 = 4; // 0x3b72d4
  sub_0x61f920(); // 0x3b72d8
  x0 = local_m20; // 0x3b72e0
  x2 = x0; // 0x3b72dc
  local_m18 = x2; // 0x3b72e4
  memSet(x2, 0xf, w0); // 0x3b72e8
  x0 = local_m28; // 0x3b72ec
  memSet(x2, 0x13, w0); // 0x3b72f0
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3b72f4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3b72f8
  x0 = local_m18; // 0x3b7300
  x1 = x0; // 0x3b72fc
  local_m20 = x1; // 0x3b7304
  memSet(x1, 0xf, w0); // 0x3b7308
  x0 = 4; // 0x3b730c
  memSet(x1, 0xb, w0); // 0x3b7310
  AllocationStub_Column() /* 0x39310c */; // 0x3b7314
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3b7320
  x1 = x0; // 0x3b7318
  local_m18 = x1; // 0x3b7324
  memSet(x1, 0xf, w0); // 0x3b7328
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3b7330
  memSet(x1, 0x13, w0); // 0x3b7334
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3b733c
  memSet(x1, 0x17, w0); // 0x3b7340
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3b7348
  memSet(x1, 0x1b, w0); // 0x3b734c
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3b7354
  memSet(x1, 0x23, w0); // 0x3b7358
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3b7360
  memSet(x1, 0x2b, w0); // 0x3b7364
  memSet(x1, 0x2f, xzr); // 0x3b7368
  x0 = local_m20; // 0x3b736c
  memSet(x1, 0xb, w0); // 0x3b7370
  AllocationStub_Container() /* 0x391a04 */; // 0x3b7374
  local_m20 = x0; // 0x3b7378
  BARRIER = local_m10; // 0x3b737c
  LR = local_m8; // 0x3b7380
  // frame: LR, BARRIER, mem(SP, 8) // 0x3b7384
  BARRIER = local_m18; // 0x3b7388
  local_0 = BARRIER; // 0x3b738c
  x1 = x0; // 0x3b7390
  x4 = mem((PP + 0xe000), 0xf48) /* ImmutableArray */; // 0x3b7398
  Container_ctor() /* 0x391490 */; // 0x3b739c
  SP = FP; // 0x3b73a4
  x0 = local_m20; // 0x3b73a0
  // frame: FP, LR, mem(SP), 0x10 // 0x3b73a8
  return;
}

// backButton
// raw disassembly:
//  0x3b7404: stp FP, LR, [SP, #-0x10]!
//  0x3b7408: mov FP, SP
//  0x3b740c: sub SP, SP, #0x38
//  0x3b7410: ldr BARRIER, [THR, #0x38]
//  0x3b7414: cmp SP, BARRIER
//  0x3b7418: b.ls #0x3b74f4
//  0x3b741c: bl #0x2e3578
//  0x3b7420: fmov d0, #10.00000000
//  0x3b7424: stur x0, [FP, #-8]
//  0x3b7428: stur d0, [x0, #7]
//  0x3b742c: stur xzr, [x0, #0xf]
//  0x3b7430: stur xzr, [x0, #0x17]
//  0x3b7434: stur xzr, [x0, #0x1f]
//  0x3b7438: bl #0x3a142c
//  0x3b743c: mov x1, x0
//  0x3b7440: add x0, PP, #0xf, lsl #12
//  0x3b7444: ldr x0, [x0, #0x308]
//  0x3b7448: stur x1, [FP, #-0x10]
//  0x3b744c: stur w0, [x1, #0xb]
//  0x3b7450: add x0, PP, #0xf, lsl #12
//  0x3b7454: ldr x0, [x0, #0x170]
//  0x3b7458: stur w0, [x1, #0xf]
//  0x3b745c: add x0, PP, #0xf, lsl #12
//  0x3b7460: ldr x0, [x0, #0x178]
//  0x3b7464: stur w0, [x1, #0x1b]
//  0x3b7468: bl #0x391a04
//  0x3b746c: stur x0, [FP, #-0x18]
//  0x3b7470: ldur BARRIER, [FP, #-8]
//  0x3b7474: add LR, PP, #0xf, lsl #12
//  0x3b7478: ldr LR, [LR, #0x310]
//  0x3b747c: stp LR, BARRIER, [SP, #0x10]
//  0x3b7480: add BARRIER, PP, #0xf, lsl #12
//  0x3b7484: ldr BARRIER, [BARRIER, #0x310]
//  0x3b7488: ldur LR, [FP, #-0x10]
//  0x3b748c: stp LR, BARRIER, [SP]
//  0x3b7490: mov x1, x0
//  0x3b7494: add x4, PP, #0xf, lsl #12
//  0x3b7498: ldr x4, [x4, #0x180]
//  0x3b749c: bl #0x391490
//  0x3b74a0: bl #0x3a1d94
//  0x3b74a4: add x1, PP, #0xf, lsl #12
//  0x3b74a8: ldr x1, [x1, #0x538]
//  0x3b74ac: mov x2, NULL
//  0x3b74b0: stur x0, [FP, #-8]
//  0x3b74b4: bl #0x61ec54
//  0x3b74b8: ldur BARRIER, [FP, #-0x18]
//  0x3b74bc: stp x0, BARRIER, [SP]
//  0x3b74c0: ldur x1, [FP, #-8]
//  0x3b74c4: add x4, PP, #0xe, lsl #12
//  0x3b74c8: ldr x4, [x4, #0xec0]
//  0x3b74cc: bl #0x3a18c4
//  0x3b74d0: bl #0x396460
//  0x3b74d4: add x1, PP, #0xf, lsl #12
//  0x3b74d8: ldr x1, [x1, #0x190]
//  0x3b74dc: stur w1, [x0, #0xf]
//  0x3b74e0: ldur x1, [FP, #-8]
//  0x3b74e4: stur w1, [x0, #0xb]
//  0x3b74e8: mov SP, FP
//  0x3b74ec: ldp FP, LR, [SP], #0x10
//  0x3b74f0: ret 
//  0x3b74f4: bl #0x61fa28
//  0x3b74f8: b #0x3b741c
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x3b7404
  BARRIER = mem(THR, 0x38); // 0x3b7410
  // frame: FP = SP // 0x3b7408
  // frame: SP = SP - 0x38 // 0x3b740c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3b74f4
  }
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3b741c
  d0 = 10.00000000 /* bits */; // 0x3b7420
  local_m8 = x0; // 0x3b7424
  memSet(x0, 7, d0); // 0x3b7428
  memSet(x0, 0xf, xzr); // 0x3b742c
  memSet(x0, 0x17, xzr); // 0x3b7430
  memSet(x0, 0x1f, xzr); // 0x3b7434
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x3b7438
  x0 = "assets/images/3.0x/topbar_icon_back_white.webp" /* pp+0xf308 */; // 0x3b7444
  x1 = x0; // 0x3b743c
  local_m10 = x1; // 0x3b7448
  memSet(x1, 0xb, w0); // 0x3b744c
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x3b7454
  memSet(x1, 0xf, w0); // 0x3b7458
  x0 = mem((PP + 0xf000), 0x178) /* Obj!BoxFit@12284  */; // 0x3b7460
  memSet(x1, 0x1b, w0); // 0x3b7464
  AllocationStub_Container() /* 0x391a04 */; // 0x3b7468
  local_m18 = x0; // 0x3b746c
  BARRIER = local_m8; // 0x3b7470
  LR = mem((PP + 0xf000), 0x310) /* Double */; // 0x3b7478
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x3b747c
  BARRIER = mem((PP + 0xf000), 0x310) /* Double */; // 0x3b7484
  LR = local_m10; // 0x3b7488
  // frame: LR, BARRIER, mem(SP) // 0x3b748c
  x1 = x0; // 0x3b7490
  x4 = mem((PP + 0xf000), 0x180) /* ImmutableArray */; // 0x3b7498
  Container_ctor() /* 0x391490 */; // 0x3b749c
  sub_0x3a1d94(); // 0x3b74a0
  x1 = mem((PP + 0xf000), 0x538) /* Function */; // 0x3b74a8
  x2 = NULL; // 0x3b74ac
  local_m8 = x0; // 0x3b74b0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3b74b4
  BARRIER = local_m18; // 0x3b74b8
  // frame: x0, BARRIER, mem(SP) // 0x3b74bc
  x1 = local_m8; // 0x3b74c0
  x4 = mem((PP + 0xe000), 0xec0) /* ImmutableArray */; // 0x3b74c8
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x3b74cc
  AllocationStub_Align() /* 0x396460 */; // 0x3b74d0
  x1 = mem((PP + 0xf000), 0x190) /* Obj!Alignment@11bdb  */; // 0x3b74d8
  memSet(x0, 0xf, w1); // 0x3b74dc
  x1 = local_m8; // 0x3b74e0
  memSet(x0, 0xb, w1); // 0x3b74e4
  SP = FP; // 0x3b74e8
  // frame: FP, LR, mem(SP), 0x10 // 0x3b74ec
  return;
}
