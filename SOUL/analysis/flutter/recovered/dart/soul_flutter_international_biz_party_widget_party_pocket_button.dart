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

dynamic AllocationStub_AssetImage, AllocationStub_BoxDecoration, AllocationStub_Color;
dynamic AllocationStub_Container, AllocationStub_DecorationImage;
dynamic AllocationStub_LinearGradient, AllocationStub_Offset, AllocationStub_Paint;
dynamic AllocationStub_Rect, AllocationStub_Shadow, AllocationStub_Stack, AllocationStub_Text;
dynamic AllocationStub_TextStyle, AllocationStub__Closure, AllocationStub__GrowableList;
dynamic BARRIER, ByteData_factory_ctor, Container_ctor, FP, GestureDetector_ctor, HEAP, LR;
dynamic LinearGradient_createShader, NULL, PP, Paint_color_assign, Paint_shader_assign, SP;
dynamic ScreenUtil_getScreenHeight, ScreenUtil_getScreenWidth;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, d0, d1, d2, d3, getString;
dynamic local_0, local_m10, local_m18, local_m20, local_m28, local_m30, local_m38, local_m40;
dynamic local_m48, local_m50, local_m8, s0, sub_0x2b16e4, sub_0x3a1d94, sub_0x61e890;
dynamic sub_0x61f920, v1_16b, w0, w1, w2, w3, w4, w5, x0, x1, x17, x2, x3, x4, x5, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$party$widget$party_pocket_button
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PartyPocketButton_build
// raw disassembly:
//  0x3b49c4: stp FP, LR, [SP, #-0x10]!
//  0x3b49c8: mov FP, SP
//  0x3b49cc: sub SP, SP, #0x70
//  0x3b49d0: mov x0, x1
//  0x3b49d4: stur x1, [FP, #-8]
//  0x3b49d8: mov x1, x2
//  0x3b49dc: stur x2, [FP, #-0x10]
//  0x3b49e0: ldr BARRIER, [THR, #0x38]
//  0x3b49e4: cmp SP, BARRIER
//  0x3b49e8: b.ls #0x3b4f6c
//  0x3b49ec: mov x1, #1
//  0x3b49f0: bl #0x61e890
//  0x3b49f4: mov x2, x0
//  0x3b49f8: ldur x0, [FP, #-8]
//  0x3b49fc: stur x2, [FP, #-0x18]
//  0x3b4a00: stur w0, [x2, #0xf]
//  0x3b4a04: ldur x1, [FP, #-0x10]
//  0x3b4a08: bl #0x3a877c
//  0x3b4a0c: ldur x1, [FP, #-0x10]
//  0x3b4a10: stur d0, [FP, #-0x40]
//  0x3b4a14: bl #0x3b5484
//  0x3b4a18: ldur x2, [FP, #-0x18]
//  0x3b4a1c: add x1, PP, #0x12, lsl #12
//  0x3b4a20: ldr x1, [x1, #0x1e8]
//  0x3b4a24: stur d0, [FP, #-0x48]
//  0x3b4a28: bl #0x61ec54
//  0x3b4a2c: stur x0, [FP, #-8]
//  0x3b4a30: mov x1, #3
//  0x3b4a34: bl #0x61e890
//  0x3b4a38: mov x2, x0
//  0x3b4a3c: ldur x0, [FP, #-8]
//  0x3b4a40: stur x2, [FP, #-0x10]
//  0x3b4a44: stur w0, [x2, #0xf]
//  0x3b4a48: ldr x0, [PP, #0x5a60]
//  0x3b4a4c: stur w0, [x2, #0x13]
//  0x3b4a50: add x0, NULL, #0x20
//  0x3b4a54: stur w0, [x2, #0x17]
//  0x3b4a58: add x1, PP, #0xe, lsl #12
//  0x3b4a5c: ldr x1, [x1, #0xed0]
//  0x3b4a60: bl #0x3b5478
//  0x3b4a64: mov x1, x0
//  0x3b4a68: add x0, PP, #0x12, lsl #12
//  0x3b4a6c: ldr x0, [x0, #0x1f0]
//  0x3b4a70: stur x1, [FP, #-8]
//  0x3b4a74: stur w0, [x1, #0xb]
//  0x3b4a78: bl #0x3b546c
//  0x3b4a7c: mov x1, x0
//  0x3b4a80: ldur x0, [FP, #-8]
//  0x3b4a84: stur x1, [FP, #-0x18]
//  0x3b4a88: stur w0, [x1, #7]
//  0x3b4a8c: add x0, PP, #0xf, lsl #12
//  0x3b4a90: ldr x0, [x0, #0x1e0]
//  0x3b4a94: stur w0, [x1, #0x13]
//  0x3b4a98: add x0, PP, #0xe, lsl #12
//  0x3b4a9c: ldr x0, [x0, #0xaa0]
//  0x3b4aa0: stur w0, [x1, #0x17]
//  0x3b4aa4: add x2, PP, #0xe, lsl #12
//  0x3b4aa8: ldr x2, [x2, #0xee8]
//  0x3b4aac: stur w2, [x1, #0x1f]
//  0x3b4ab0: add x2, NULL, #0x30
//  0x3b4ab4: stur w2, [x1, #0x23]
//  0x3b4ab8: fmov d0, #1.00000000
//  0x3b4abc: stur d0, [x1, #0x27]
//  0x3b4ac0: stur d0, [x1, #0x2f]
//  0x3b4ac4: add x3, PP, #0xe, lsl #12
//  0x3b4ac8: ldr x3, [x3, #0xef0]
//  0x3b4acc: stur w3, [x1, #0x37]
//  0x3b4ad0: stur w2, [x1, #0x3b]
//  0x3b4ad4: stur w2, [x1, #0x3f]
//  0x3b4ad8: bl #0x391dd8
//  0x3b4adc: mov x2, x0
//  0x3b4ae0: ldur x0, [FP, #-0x18]
//  0x3b4ae4: stur x2, [FP, #-8]
//  0x3b4ae8: stur w0, [x2, #0xb]
//  0x3b4aec: add x0, PP, #0xe, lsl #12
//  0x3b4af0: ldr x0, [x0, #0xb78]
//  0x3b4af4: stur w0, [x2, #0x23]
//  0x3b4af8: add x1, PP, #0xc, lsl #12
//  0x3b4afc: ldr x1, [x1, #0x9e8]
//  0x3b4b00: ldr x4, [PP, #0x4c0]
//  0x3b4b04: bl #0x3a1dcc
//  0x3b4b08: stur x0, [FP, #-0x18]
//  0x3b4b0c: mov BARRIER, #0x88
//  0x3b4b10: stp BARRIER, NULL, [SP]
//  0x3b4b14: bl #0x297550
//  0x3b4b18: stur x0, [FP, #-0x20]
//  0x3b4b1c: bl #0x2eeee8
//  0x3b4b20: mov x1, x0
//  0x3b4b24: ldur x0, [FP, #-0x20]
//  0x3b4b28: stur x1, [FP, #-0x28]
//  0x3b4b2c: stur w0, [x1, #7]
//  0x3b4b30: bl #0x31d844
//  0x3b4b34: mov x1, x0
//  0x3b4b38: ldr x0, [PP, #0x6310]
//  0x3b4b3c: stur x1, [FP, #-0x20]
//  0x3b4b40: stur w0, [x1, #0x27]
//  0x3b4b44: fmov d0, #1.00000000
//  0x3b4b48: stur d0, [x1, #7]
//  0x3b4b4c: stur d0, [x1, #0xf]
//  0x3b4b50: add x17, PP, #0x12, lsl #12
//  0x3b4b54: ldr d1, [x17, #0x1f8]
//  0x3b4b58: stur d1, [x1, #0x17]
//  0x3b4b5c: stur xzr, [x1, #0x1f]
//  0x3b4b60: bl #0x31d844
//  0x3b4b64: mov x3, x0
//  0x3b4b68: ldr x0, [PP, #0x6310]
//  0x3b4b6c: stur x3, [FP, #-0x30]
//  0x3b4b70: stur w0, [x3, #0x27]
//  0x3b4b74: fmov d0, #1.00000000
//  0x3b4b78: stur d0, [x3, #7]
//  0x3b4b7c: stur d0, [x3, #0xf]
//  0x3b4b80: add x17, PP, #0x10, lsl #12
//  0x3b4b84: ldr d1, [x17, #0xc48]
//  0x3b4b88: stur d1, [x3, #0x17]
//  0x3b4b8c: stur xzr, [x3, #0x1f]
//  0x3b4b90: mov x1, NULL
//  0x3b4b94: mov x2, #4
//  0x3b4b98: bl #0x61f920
//  0x3b4b9c: mov x2, x0
//  0x3b4ba0: ldur x0, [FP, #-0x20]
//  0x3b4ba4: stur x2, [FP, #-0x38]
//  0x3b4ba8: stur w0, [x2, #0xf]
//  0x3b4bac: ldur x0, [FP, #-0x30]
//  0x3b4bb0: stur w0, [x2, #0x13]
//  0x3b4bb4: add x1, PP, #0x10, lsl #12
//  0x3b4bb8: ldr x1, [x1, #0xc58]
//  0x3b4bbc: bl #0x61e854
//  0x3b4bc0: mov x1, x0
//  0x3b4bc4: ldur x0, [FP, #-0x38]
//  0x3b4bc8: stur x1, [FP, #-0x20]
//  0x3b4bcc: stur w0, [x1, #0xf]
//  0x3b4bd0: mov x2, #4
//  0x3b4bd4: stur w2, [x1, #0xb]
//  0x3b4bd8: bl #0x3a108c
//  0x3b4bdc: mov x1, x0
//  0x3b4be0: add x0, PP, #0x10, lsl #12
//  0x3b4be4: ldr x0, [x0, #0xc68]
//  0x3b4be8: stur x1, [FP, #-0x30]
//  0x3b4bec: stur w0, [x1, #0x13]
//  0x3b4bf0: add x0, PP, #0x10, lsl #12
//  0x3b4bf4: ldr x0, [x0, #0xc70]
//  0x3b4bf8: stur w0, [x1, #0x17]
//  0x3b4bfc: add x0, PP, #0x10, lsl #12
//  0x3b4c00: ldr x0, [x0, #0xc78]
//  0x3b4c04: stur w0, [x1, #0x1b]
//  0x3b4c08: ldur x0, [FP, #-0x20]
//  0x3b4c0c: stur w0, [x1, #7]
//  0x3b4c10: ldur d0, [FP, #-0x40]
//  0x3b4c14: eor v1.16b, v1.16b, v1.16b
//  0x3b4c18: fadd d2, d0, d1
//  0x3b4c1c: ldur d0, [FP, #-0x48]
//  0x3b4c20: stur d2, [FP, #-0x50]
//  0x3b4c24: fadd d3, d0, d1
//  0x3b4c28: stur d3, [FP, #-0x40]
//  0x3b4c2c: bl #0x2984c0
//  0x3b4c30: stur xzr, [x0, #7]
//  0x3b4c34: stur xzr, [x0, #0xf]
//  0x3b4c38: ldur d0, [FP, #-0x50]
//  0x3b4c3c: stur d0, [x0, #0x17]
//  0x3b4c40: ldur d0, [FP, #-0x40]
//  0x3b4c44: stur d0, [x0, #0x1f]
//  0x3b4c48: ldur x1, [FP, #-0x30]
//  0x3b4c4c: mov x2, x0
//  0x3b4c50: ldr x4, [PP, #0x278]
//  0x3b4c54: bl #0x3b4f80
//  0x3b4c58: ldur x1, [FP, #-0x28]
//  0x3b4c5c: mov x2, x0
//  0x3b4c60: bl #0x35f18c
//  0x3b4c64: bl #0x31d844
//  0x3b4c68: mov x1, x0
//  0x3b4c6c: ldr x0, [PP, #0x6310]
//  0x3b4c70: stur x1, [FP, #-0x20]
//  0x3b4c74: stur w0, [x1, #0x27]
//  0x3b4c78: fmov d0, #1.00000000
//  0x3b4c7c: stur d0, [x1, #7]
//  0x3b4c80: add x17, PP, #0xf, lsl #12
//  0x3b4c84: ldr d1, [x17, #0x600]
//  0x3b4c88: stur d1, [x1, #0xf]
//  0x3b4c8c: add x17, PP, #0x12, lsl #12
//  0x3b4c90: ldr d1, [x17, #0x200]
//  0x3b4c94: stur d1, [x1, #0x17]
//  0x3b4c98: add x17, PP, #0x11, lsl #12
//  0x3b4c9c: ldr d1, [x17, #0xb60]
//  0x3b4ca0: stur d1, [x1, #0x1f]
//  0x3b4ca4: bl #0x2a7704
//  0x3b4ca8: stur x0, [FP, #-0x30]
//  0x3b4cac: stur xzr, [x0, #7]
//  0x3b4cb0: fmov d0, #1.00000000
//  0x3b4cb4: stur d0, [x0, #0xf]
//  0x3b4cb8: bl #0x3b4f74
//  0x3b4cbc: mov x3, x0
//  0x3b4cc0: ldur x0, [FP, #-0x20]
//  0x3b4cc4: stur x3, [FP, #-0x38]
//  0x3b4cc8: stur w0, [x3, #7]
//  0x3b4ccc: ldur x0, [FP, #-0x30]
//  0x3b4cd0: stur w0, [x3, #0xb]
//  0x3b4cd4: fmov d0, #4.00000000
//  0x3b4cd8: stur d0, [x3, #0xf]
//  0x3b4cdc: mov x1, NULL
//  0x3b4ce0: mov x2, #2
//  0x3b4ce4: bl #0x61f920
//  0x3b4ce8: mov x2, x0
//  0x3b4cec: ldur x0, [FP, #-0x38]
//  0x3b4cf0: stur x2, [FP, #-0x20]
//  0x3b4cf4: stur w0, [x2, #0xf]
//  0x3b4cf8: add x1, PP, #0xa, lsl #12
//  0x3b4cfc: ldr x1, [x1, #0x570]
//  0x3b4d00: bl #0x61e854
//  0x3b4d04: mov x1, x0
//  0x3b4d08: ldur x0, [FP, #-0x20]
//  0x3b4d0c: stur x1, [FP, #-0x30]
//  0x3b4d10: stur w0, [x1, #0xf]
//  0x3b4d14: mov x0, #2
//  0x3b4d18: stur w0, [x1, #0xb]
//  0x3b4d1c: bl #0x31abec
//  0x3b4d20: mov x1, x0
//  0x3b4d24: add x0, NULL, #0x20
//  0x3b4d28: stur x1, [FP, #-0x20]
//  0x3b4d2c: stur w0, [x1, #7]
//  0x3b4d30: add x2, PP, #0x10, lsl #12
//  0x3b4d34: ldr x2, [x2, #0x238]
//  0x3b4d38: stur w2, [x1, #0x1f]
//  0x3b4d3c: add x3, PP, #0x10, lsl #12
//  0x3b4d40: ldr x3, [x3, #0x948]
//  0x3b4d44: stur w3, [x1, #0x23]
//  0x3b4d48: add x4, PP, #0x12, lsl #12
//  0x3b4d4c: ldr x4, [x4, #0x208]
//  0x3b4d50: stur w4, [x1, #0x27]
//  0x3b4d54: ldur x5, [FP, #-0x28]
//  0x3b4d58: stur w5, [x1, #0x43]
//  0x3b4d5c: ldur x5, [FP, #-0x30]
//  0x3b4d60: stur w5, [x1, #0x5f]
//  0x3b4d64: bl #0x393bf8
//  0x3b4d68: mov x2, x0
//  0x3b4d6c: ldur x0, [FP, #-0x18]
//  0x3b4d70: stur x2, [FP, #-0x28]
//  0x3b4d74: stur w0, [x2, #0xb]
//  0x3b4d78: ldur x0, [FP, #-0x20]
//  0x3b4d7c: stur w0, [x2, #0x13]
//  0x3b4d80: add x1, PP, #0xc, lsl #12
//  0x3b4d84: ldr x1, [x1, #0x9e8]
//  0x3b4d88: ldr x4, [PP, #0x4c0]
//  0x3b4d8c: bl #0x3a1dcc
//  0x3b4d90: stur x0, [FP, #-0x18]
//  0x3b4d94: mov BARRIER, #0x88
//  0x3b4d98: stp BARRIER, NULL, [SP]
//  0x3b4d9c: bl #0x297550
//  0x3b4da0: stur x0, [FP, #-0x20]
//  0x3b4da4: bl #0x2eeee8
//  0x3b4da8: mov x1, x0
//  0x3b4dac: ldur x0, [FP, #-0x20]
//  0x3b4db0: stur x1, [FP, #-0x30]
//  0x3b4db4: stur w0, [x1, #7]
//  0x3b4db8: ldur w2, [x0, #0x17]
//  0x3b4dbc: add x2, x2, HEAP, lsl #32
//  0x3b4dc0: ldur x0, [x2, #7]
//  0x3b4dc4: mov x3, #1
//  0x3b4dc8: str w3, [x0, #0x1c]
//  0x3b4dcc: ldur x0, [x2, #7]
//  0x3b4dd0: add x17, PP, #0x12, lsl #12
//  0x3b4dd4: ldr s0, [x17, #0x210]
//  0x3b4dd8: str s0, [x0, #0x20]
//  0x3b4ddc: bl #0x31d844
//  0x3b4de0: mov x1, x0
//  0x3b4de4: ldr x0, [PP, #0x6310]
//  0x3b4de8: stur w0, [x1, #0x27]
//  0x3b4dec: fmov d0, #1.00000000
//  0x3b4df0: stur d0, [x1, #7]
//  0x3b4df4: stur d0, [x1, #0xf]
//  0x3b4df8: add x17, PP, #0x10, lsl #12
//  0x3b4dfc: ldr d0, [x17, #0x9a0]
//  0x3b4e00: stur d0, [x1, #0x17]
//  0x3b4e04: add x17, PP, #0x12, lsl #12
//  0x3b4e08: ldr d0, [x17, #0x218]
//  0x3b4e0c: stur d0, [x1, #0x1f]
//  0x3b4e10: mov x2, x1
//  0x3b4e14: ldur x1, [FP, #-0x30]
//  0x3b4e18: bl #0x2eecf0
//  0x3b4e1c: bl #0x31abec
//  0x3b4e20: mov x1, x0
//  0x3b4e24: add x0, NULL, #0x20
//  0x3b4e28: stur x1, [FP, #-0x20]
//  0x3b4e2c: stur w0, [x1, #7]
//  0x3b4e30: add x0, PP, #0x10, lsl #12
//  0x3b4e34: ldr x0, [x0, #0x238]
//  0x3b4e38: stur w0, [x1, #0x1f]
//  0x3b4e3c: add x0, PP, #0x10, lsl #12
//  0x3b4e40: ldr x0, [x0, #0x948]
//  0x3b4e44: stur w0, [x1, #0x23]
//  0x3b4e48: add x0, PP, #0x12, lsl #12
//  0x3b4e4c: ldr x0, [x0, #0x208]
//  0x3b4e50: stur w0, [x1, #0x27]
//  0x3b4e54: ldur x0, [FP, #-0x30]
//  0x3b4e58: stur w0, [x1, #0x43]
//  0x3b4e5c: bl #0x393bf8
//  0x3b4e60: mov x3, x0
//  0x3b4e64: ldur x0, [FP, #-0x18]
//  0x3b4e68: stur x3, [FP, #-0x30]
//  0x3b4e6c: stur w0, [x3, #0xb]
//  0x3b4e70: ldur x0, [FP, #-0x20]
//  0x3b4e74: stur w0, [x3, #0x13]
//  0x3b4e78: mov x1, NULL
//  0x3b4e7c: mov x2, #4
//  0x3b4e80: bl #0x61f920
//  0x3b4e84: mov x2, x0
//  0x3b4e88: ldur x0, [FP, #-0x28]
//  0x3b4e8c: stur x2, [FP, #-0x18]
//  0x3b4e90: stur w0, [x2, #0xf]
//  0x3b4e94: ldur x0, [FP, #-0x30]
//  0x3b4e98: stur w0, [x2, #0x13]
//  0x3b4e9c: ldr x1, [PP, #0x5c58]
//  0x3b4ea0: bl #0x61e854
//  0x3b4ea4: mov x1, x0
//  0x3b4ea8: ldur x0, [FP, #-0x18]
//  0x3b4eac: stur x1, [FP, #-0x20]
//  0x3b4eb0: stur w0, [x1, #0xf]
//  0x3b4eb4: mov x0, #4
//  0x3b4eb8: stur w0, [x1, #0xb]
//  0x3b4ebc: bl #0x39e6f4
//  0x3b4ec0: mov x1, x0
//  0x3b4ec4: add x0, PP, #0xe, lsl #12
//  0x3b4ec8: ldr x0, [x0, #0xaa0]
//  0x3b4ecc: stur x1, [FP, #-0x18]
//  0x3b4ed0: stur w0, [x1, #0xf]
//  0x3b4ed4: add x0, PP, #0xe, lsl #12
//  0x3b4ed8: ldr x0, [x0, #0xf08]
//  0x3b4edc: stur w0, [x1, #0x17]
//  0x3b4ee0: add x0, PP, #0xe, lsl #12
//  0x3b4ee4: ldr x0, [x0, #0xf10]
//  0x3b4ee8: stur w0, [x1, #0x1b]
//  0x3b4eec: ldur x0, [FP, #-0x20]
//  0x3b4ef0: stur w0, [x1, #0xb]
//  0x3b4ef4: bl #0x391a04
//  0x3b4ef8: stur x0, [FP, #-0x20]
//  0x3b4efc: add BARRIER, PP, #0x11, lsl #12
//  0x3b4f00: ldr BARRIER, [BARRIER, #0xa60]
//  0x3b4f04: ldur LR, [FP, #-8]
//  0x3b4f08: stp LR, BARRIER, [SP, #0x10]
//  0x3b4f0c: add BARRIER, PP, #0x11, lsl #12
//  0x3b4f10: ldr BARRIER, [BARRIER, #0xa50]
//  0x3b4f14: ldur LR, [FP, #-0x18]
//  0x3b4f18: stp LR, BARRIER, [SP]
//  0x3b4f1c: mov x1, x0
//  0x3b4f20: add x4, PP, #0x12, lsl #12
//  0x3b4f24: ldr x4, [x4, #0x220]
//  0x3b4f28: bl #0x391490
//  0x3b4f2c: bl #0x3a1d94
//  0x3b4f30: ldur x2, [FP, #-0x10]
//  0x3b4f34: add x1, PP, #0x11, lsl #12
//  0x3b4f38: ldr x1, [x1, #0x110]
//  0x3b4f3c: stur x0, [FP, #-8]
//  0x3b4f40: bl #0x61ec54
//  0x3b4f44: ldur BARRIER, [FP, #-0x20]
//  0x3b4f48: stp BARRIER, x0, [SP]
//  0x3b4f4c: ldur x1, [FP, #-8]
//  0x3b4f50: add x4, PP, #0xc, lsl #12
//  0x3b4f54: ldr x4, [x4, #0x208]
//  0x3b4f58: bl #0x3a18c4
//  0x3b4f5c: ldur x0, [FP, #-8]
//  0x3b4f60: mov SP, FP
//  0x3b4f64: ldp FP, LR, [SP], #0x10
//  0x3b4f68: ret 
//  0x3b4f6c: bl #0x61fa28
//  0x3b4f70: b #0x3b49ec
//
dynamic PartyPocketButton_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic d3;
  dynamic s0;
  dynamic v1_16b;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3b49c4
  // frame: FP = SP // 0x3b49c8
  // frame: SP = SP - 0x70 // 0x3b49cc
  x0 = x1; // 0x3b49d0
  local_m8 = x1; // 0x3b49d4
  x1 = x2; // 0x3b49d8
  local_m10 = x2; // 0x3b49dc
  BARRIER = mem(THR, 0x38); // 0x3b49e0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3b4f6c
  }
  x1 = 1; // 0x3b49ec
  sub_0x61e890(); // 0x3b49f0
  x0 = local_m8; // 0x3b49f8
  x2 = x0; // 0x3b49f4
  local_m18 = x2; // 0x3b49fc
  memSet(x2, 0xf, w0); // 0x3b4a00
  x1 = local_m10; // 0x3b4a04
  ScreenUtil_getScreenWidth() /* 0x3a877c */; // 0x3b4a08
  x1 = local_m10; // 0x3b4a0c
  local_m40 = d0; // 0x3b4a10
  ScreenUtil_getScreenHeight() /* 0x3b5484 */; // 0x3b4a14
  x1 = mem((PP + 0x12000), 0x1e8) /* Function */; // 0x3b4a20
  x2 = local_m18; // 0x3b4a18
  local_m48 = d0; // 0x3b4a24
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3b4a28
  local_m8 = x0; // 0x3b4a2c
  x1 = 3; // 0x3b4a30
  sub_0x61e890(); // 0x3b4a34
  x0 = local_m8; // 0x3b4a3c
  x2 = x0; // 0x3b4a38
  local_m10 = x2; // 0x3b4a40
  memSet(x2, 0xf, w0); // 0x3b4a44
  x0 = mem(PP, 0x5a60) /* Obj!Duration@1235a  */; // 0x3b4a48
  memSet(x2, 0x13, w0); // 0x3b4a4c
  x0 = NULL + 0x20; // 0x3b4a50
  memSet(x2, 0x17, w0); // 0x3b4a54
  x1 = mem((PP + 0xe000), 0xed0) /* TypeArguments */; // 0x3b4a5c
  AllocationStub_AssetImage() /* 0x3b5478 */; // 0x3b4a60
  x0 = "assets/images/3.0x/party_send_pocket_bg.webp" /* pp+0x121f0 */; // 0x3b4a6c
  x1 = x0; // 0x3b4a64
  local_m8 = x1; // 0x3b4a70
  memSet(x1, 0xb, w0); // 0x3b4a74
  AllocationStub_DecorationImage() /* 0x3b546c */; // 0x3b4a78
  x0 = local_m8; // 0x3b4a80
  x1 = x0; // 0x3b4a7c
  local_m18 = x1; // 0x3b4a84
  memSet(x1, 7, w0); // 0x3b4a88
  x0 = mem((PP + 0xf000), 0x1e0) /* Obj!BoxFit@12286  */; // 0x3b4a90
  memSet(x1, 0x13, w0); // 0x3b4a94
  x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x3b4a9c
  memSet(x1, 0x17, w0); // 0x3b4aa0
  x2 = mem((PP + 0xe000), 0xee8) /* Obj!ImageRepeat@12281  */; // 0x3b4aa8
  memSet(x1, 0x1f, w2); // 0x3b4aac
  x2 = NULL + 0x30; // 0x3b4ab0
  memSet(x1, 0x23, w2); // 0x3b4ab4
  d0 = 1.00000000 /* bits */; // 0x3b4ab8
  memSet(x1, 0x27, d0); // 0x3b4abc
  memSet(x1, 0x2f, d0); // 0x3b4ac0
  x3 = mem((PP + 0xe000), 0xef0) /* Obj!FilterQuality@12349  */; // 0x3b4ac8
  memSet(x1, 0x37, w3); // 0x3b4acc
  memSet(x1, 0x3b, w2); // 0x3b4ad0
  memSet(x1, 0x3f, w2); // 0x3b4ad4
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x3b4ad8
  x0 = local_m18; // 0x3b4ae0
  x2 = x0; // 0x3b4adc
  local_m8 = x2; // 0x3b4ae4
  memSet(x2, 0xb, w0); // 0x3b4ae8
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x3b4af0
  memSet(x2, 0x23, w0); // 0x3b4af4
  x1 = "virtual_party_lucky_pocket_send_popup_button_send" /* pp+0xc9e8 */; // 0x3b4afc
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3b4b00
  getString() /* 0x3a1dcc */; // 0x3b4b04
  local_m18 = x0; // 0x3b4b08
  BARRIER = 136; // 0x3b4b0c
  // frame: BARRIER, NULL, mem(SP) // 0x3b4b10
  ByteData_factory_ctor() /* 0x297550 */; // 0x3b4b14
  local_m20 = x0; // 0x3b4b18
  AllocationStub_Paint() /* 0x2eeee8 */; // 0x3b4b1c
  x0 = local_m20; // 0x3b4b24
  x1 = x0; // 0x3b4b20
  local_m28 = x1; // 0x3b4b28
  memSet(x1, 7, w0); // 0x3b4b2c
  AllocationStub_Color() /* 0x31d844 */; // 0x3b4b30
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3b4b38
  x1 = x0; // 0x3b4b34
  local_m20 = x1; // 0x3b4b3c
  memSet(x1, 0x27, w0); // 0x3b4b40
  d0 = 1.00000000 /* bits */; // 0x3b4b44
  memSet(x1, 7, d0); // 0x3b4b48
  memSet(x1, 0xf, d0); // 0x3b4b4c
  d1 = 4604957110748846104; // 0x3b4b54
  x17 = PP + 0x12000; // 0x3b4b50
  memSet(x1, 0x17, d1); // 0x3b4b58
  memSet(x1, 0x1f, xzr); // 0x3b4b5c
  AllocationStub_Color() /* 0x31d844 */; // 0x3b4b60
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3b4b68
  x3 = x0; // 0x3b4b64
  local_m30 = x3; // 0x3b4b6c
  memSet(x3, 0x27, w0); // 0x3b4b70
  d0 = 1.00000000 /* bits */; // 0x3b4b74
  memSet(x3, 7, d0); // 0x3b4b78
  memSet(x3, 0xf, d0); // 0x3b4b7c
  d1 = 4602572852122591136; // 0x3b4b84
  x17 = PP + 0x10000; // 0x3b4b80
  memSet(x3, 0x17, d1); // 0x3b4b88
  memSet(x3, 0x1f, xzr); // 0x3b4b8c
  x1 = NULL; // 0x3b4b90
  x2 = 4; // 0x3b4b94
  sub_0x61f920(); // 0x3b4b98
  x0 = local_m20; // 0x3b4ba0
  x2 = x0; // 0x3b4b9c
  local_m38 = x2; // 0x3b4ba4
  memSet(x2, 0xf, w0); // 0x3b4ba8
  x0 = local_m30; // 0x3b4bac
  memSet(x2, 0x13, w0); // 0x3b4bb0
  x1 = mem((PP + 0x10000), 0xc58) /* TypeArguments */; // 0x3b4bb8
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3b4bbc
  x0 = local_m38; // 0x3b4bc4
  x1 = x0; // 0x3b4bc0
  local_m20 = x1; // 0x3b4bc8
  memSet(x1, 0xf, w0); // 0x3b4bcc
  x2 = 4; // 0x3b4bd0
  memSet(x1, 0xb, w2); // 0x3b4bd4
  AllocationStub_LinearGradient() /* 0x3a108c */; // 0x3b4bd8
  x0 = mem((PP + 0x10000), 0xc68) /* Obj!Alignment@11bdd  */; // 0x3b4be4
  x1 = x0; // 0x3b4bdc
  local_m30 = x1; // 0x3b4be8
  memSet(x1, 0x13, w0); // 0x3b4bec
  x0 = mem((PP + 0x10000), 0xc70) /* Obj!Alignment@11bdc  */; // 0x3b4bf4
  memSet(x1, 0x17, w0); // 0x3b4bf8
  x0 = mem((PP + 0x10000), 0xc78) /* Obj!TileMode@1233e  */; // 0x3b4c00
  memSet(x1, 0x1b, w0); // 0x3b4c04
  x0 = local_m20; // 0x3b4c08
  memSet(x1, 7, w0); // 0x3b4c0c
  d0 = local_m48; // 0x3b4c1c
  d2 = ((local_m40) + d1) /* float */; // 0x3b4c18
  v1_16b = v1_16b ^ v1_16b; // 0x3b4c14
  local_m50 = d2; // 0x3b4c20
  d3 = (d0 + d1) /* float */; // 0x3b4c24
  local_m40 = d3; // 0x3b4c28
  AllocationStub_Rect() /* 0x2984c0 */; // 0x3b4c2c
  memSet(x0, 7, xzr); // 0x3b4c30
  memSet(x0, 0xf, xzr); // 0x3b4c34
  d0 = local_m50; // 0x3b4c38
  memSet(x0, 0x17, d0); // 0x3b4c3c
  d0 = local_m40; // 0x3b4c40
  memSet(x0, 0x1f, d0); // 0x3b4c44
  x1 = local_m30; // 0x3b4c48
  x2 = x0; // 0x3b4c4c
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x3b4c50
  LinearGradient_createShader() /* 0x3b4f80 */; // 0x3b4c54
  x1 = local_m28; // 0x3b4c58
  x2 = x0; // 0x3b4c5c
  Paint_shader_assign() /* 0x35f18c */; // 0x3b4c60
  AllocationStub_Color() /* 0x31d844 */; // 0x3b4c64
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3b4c6c
  x1 = x0; // 0x3b4c68
  local_m20 = x1; // 0x3b4c70
  memSet(x1, 0x27, w0); // 0x3b4c74
  d0 = 1.00000000 /* bits */; // 0x3b4c78
  memSet(x1, 7, d0); // 0x3b4c7c
  d1 = 4606122748299459644; // 0x3b4c84
  x17 = PP + 0xf000; // 0x3b4c80
  memSet(x1, 0xf, d1); // 0x3b4c88
  d1 = 4599958998221215318; // 0x3b4c90
  x17 = PP + 0x12000; // 0x3b4c8c
  memSet(x1, 0x17, d1); // 0x3b4c94
  d1 = 4584682081838174224; // 0x3b4c9c
  x17 = PP + 0x11000; // 0x3b4c98
  memSet(x1, 0x1f, d1); // 0x3b4ca0
  AllocationStub_Offset() /* 0x2a7704 */; // 0x3b4ca4
  local_m30 = x0; // 0x3b4ca8
  memSet(x0, 7, xzr); // 0x3b4cac
  d0 = 1.00000000 /* bits */; // 0x3b4cb0
  memSet(x0, 0xf, d0); // 0x3b4cb4
  AllocationStub_Shadow() /* 0x3b4f74 */; // 0x3b4cb8
  x0 = local_m20; // 0x3b4cc0
  x3 = x0; // 0x3b4cbc
  local_m38 = x3; // 0x3b4cc4
  memSet(x3, 7, w0); // 0x3b4cc8
  x0 = local_m30; // 0x3b4ccc
  memSet(x3, 0xb, w0); // 0x3b4cd0
  d0 = 4.00000000 /* bits */; // 0x3b4cd4
  memSet(x3, 0xf, d0); // 0x3b4cd8
  x1 = NULL; // 0x3b4cdc
  x2 = 2; // 0x3b4ce0
  sub_0x61f920(); // 0x3b4ce4
  x0 = local_m38; // 0x3b4cec
  x2 = x0; // 0x3b4ce8
  local_m20 = x2; // 0x3b4cf0
  memSet(x2, 0xf, w0); // 0x3b4cf4
  x1 = mem((PP + 0xa000), 0x570) /* TypeArguments */; // 0x3b4cfc
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3b4d00
  x0 = local_m20; // 0x3b4d08
  x1 = x0; // 0x3b4d04
  local_m30 = x1; // 0x3b4d0c
  memSet(x1, 0xf, w0); // 0x3b4d10
  x0 = 2; // 0x3b4d14
  memSet(x1, 0xb, w0); // 0x3b4d18
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3b4d1c
  x0 = NULL + 0x20; // 0x3b4d24
  x1 = x0; // 0x3b4d20
  local_m20 = x1; // 0x3b4d28
  memSet(x1, 7, w0); // 0x3b4d2c
  x2 = mem((PP + 0x10000), 0x238) /* Double */; // 0x3b4d34
  memSet(x1, 0x1f, w2); // 0x3b4d38
  x3 = mem((PP + 0x10000), 0x948) /* Obj!FontWeight@12028  */; // 0x3b4d40
  memSet(x1, 0x23, w3); // 0x3b4d44
  x4 = mem((PP + 0x12000), 0x208) /* Obj!FontStyle@12319  */; // 0x3b4d4c
  memSet(x1, 0x27, w4); // 0x3b4d50
  x5 = local_m28; // 0x3b4d54
  memSet(x1, 0x43, w5); // 0x3b4d58
  x5 = local_m30; // 0x3b4d5c
  memSet(x1, 0x5f, w5); // 0x3b4d60
  AllocationStub_Text() /* 0x393bf8 */; // 0x3b4d64
  x0 = local_m18; // 0x3b4d6c
  x2 = x0; // 0x3b4d68
  local_m28 = x2; // 0x3b4d70
  memSet(x2, 0xb, w0); // 0x3b4d74
  x0 = local_m20; // 0x3b4d78
  memSet(x2, 0x13, w0); // 0x3b4d7c
  x1 = "virtual_party_lucky_pocket_send_popup_button_send" /* pp+0xc9e8 */; // 0x3b4d84
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3b4d88
  getString() /* 0x3a1dcc */; // 0x3b4d8c
  local_m18 = x0; // 0x3b4d90
  BARRIER = 136; // 0x3b4d94
  // frame: BARRIER, NULL, mem(SP) // 0x3b4d98
  ByteData_factory_ctor() /* 0x297550 */; // 0x3b4d9c
  local_m20 = x0; // 0x3b4da0
  AllocationStub_Paint() /* 0x2eeee8 */; // 0x3b4da4
  x0 = local_m20; // 0x3b4dac
  x1 = x0; // 0x3b4da8
  local_m30 = x1; // 0x3b4db0
  memSet(x1, 7, w0); // 0x3b4db4
  w2 = mem(x0, 0x17); // 0x3b4db8
  x0 = mem((((mem(x0, 0x17)) & 0xffffffff) + (HEAP << 32)), 7); // 0x3b4dc0
  x2 = ((mem(x0, 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3b4dbc
  x3 = 1; // 0x3b4dc4
  memSet(x0, 0x1c, w3); // 0x3b4dc8
  s0 = 1065353216; // 0x3b4dd4
  x0 = mem(x2, 7); // 0x3b4dcc
  x17 = PP + 0x12000; // 0x3b4dd0
  memSet(x0, 0x20, s0); // 0x3b4dd8
  AllocationStub_Color() /* 0x31d844 */; // 0x3b4ddc
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3b4de4
  x1 = x0; // 0x3b4de0
  memSet(x1, 0x27, w0); // 0x3b4de8
  d0 = 1.00000000 /* bits */; // 0x3b4dec
  memSet(x1, 7, d0); // 0x3b4df0
  memSet(x1, 0xf, d0); // 0x3b4df4
  d0 = 4607005807049924447; // 0x3b4dfc
  x17 = PP + 0x10000; // 0x3b4df8
  memSet(x1, 0x17, d0); // 0x3b4e00
  d0 = 4603897440248288340; // 0x3b4e08
  x17 = PP + 0x12000; // 0x3b4e04
  memSet(x1, 0x1f, d0); // 0x3b4e0c
  x1 = local_m30; // 0x3b4e14
  x2 = x1; // 0x3b4e10
  Paint_color_assign() /* 0x2eecf0 */; // 0x3b4e18
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3b4e1c
  x0 = NULL + 0x20; // 0x3b4e24
  x1 = x0; // 0x3b4e20
  local_m20 = x1; // 0x3b4e28
  memSet(x1, 7, w0); // 0x3b4e2c
  x0 = mem((PP + 0x10000), 0x238) /* Double */; // 0x3b4e34
  memSet(x1, 0x1f, w0); // 0x3b4e38
  x0 = mem((PP + 0x10000), 0x948) /* Obj!FontWeight@12028  */; // 0x3b4e40
  memSet(x1, 0x23, w0); // 0x3b4e44
  x0 = mem((PP + 0x12000), 0x208) /* Obj!FontStyle@12319  */; // 0x3b4e4c
  memSet(x1, 0x27, w0); // 0x3b4e50
  x0 = local_m30; // 0x3b4e54
  memSet(x1, 0x43, w0); // 0x3b4e58
  AllocationStub_Text() /* 0x393bf8 */; // 0x3b4e5c
  x0 = local_m18; // 0x3b4e64
  x3 = x0; // 0x3b4e60
  local_m30 = x3; // 0x3b4e68
  memSet(x3, 0xb, w0); // 0x3b4e6c
  x0 = local_m20; // 0x3b4e70
  memSet(x3, 0x13, w0); // 0x3b4e74
  x1 = NULL; // 0x3b4e78
  x2 = 4; // 0x3b4e7c
  sub_0x61f920(); // 0x3b4e80
  x0 = local_m28; // 0x3b4e88
  x2 = x0; // 0x3b4e84
  local_m18 = x2; // 0x3b4e8c
  memSet(x2, 0xf, w0); // 0x3b4e90
  x0 = local_m30; // 0x3b4e94
  memSet(x2, 0x13, w0); // 0x3b4e98
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3b4e9c
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3b4ea0
  x0 = local_m18; // 0x3b4ea8
  x1 = x0; // 0x3b4ea4
  local_m20 = x1; // 0x3b4eac
  memSet(x1, 0xf, w0); // 0x3b4eb0
  x0 = 4; // 0x3b4eb4
  memSet(x1, 0xb, w0); // 0x3b4eb8
  AllocationStub_Stack() /* 0x39e6f4 */; // 0x3b4ebc
  x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x3b4ec8
  x1 = x0; // 0x3b4ec0
  local_m18 = x1; // 0x3b4ecc
  memSet(x1, 0xf, w0); // 0x3b4ed0
  x0 = mem((PP + 0xe000), 0xf08) /* Obj!StackFit@1225a  */; // 0x3b4ed8
  memSet(x1, 0x17, w0); // 0x3b4edc
  x0 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x3b4ee4
  memSet(x1, 0x1b, w0); // 0x3b4ee8
  x0 = local_m20; // 0x3b4eec
  memSet(x1, 0xb, w0); // 0x3b4ef0
  AllocationStub_Container() /* 0x391a04 */; // 0x3b4ef4
  local_m20 = x0; // 0x3b4ef8
  BARRIER = mem((PP + 0x11000), 0xa60) /* Double */; // 0x3b4f00
  LR = local_m8; // 0x3b4f04
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x3b4f08
  BARRIER = mem((PP + 0x11000), 0xa50) /* Obj!EdgeInsets@11b89  */; // 0x3b4f10
  LR = local_m18; // 0x3b4f14
  // frame: LR, BARRIER, mem(SP) // 0x3b4f18
  x1 = x0; // 0x3b4f1c
  x4 = mem((PP + 0x12000), 0x220) /* ImmutableArray */; // 0x3b4f24
  Container_ctor() /* 0x391490 */; // 0x3b4f28
  sub_0x3a1d94(); // 0x3b4f2c
  x1 = mem((PP + 0x11000), 0x110) /* Function */; // 0x3b4f38
  x2 = local_m10; // 0x3b4f30
  local_m8 = x0; // 0x3b4f3c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3b4f40
  BARRIER = local_m20; // 0x3b4f44
  // frame: BARRIER, x0, mem(SP) // 0x3b4f48
  x1 = local_m8; // 0x3b4f4c
  x4 = mem((PP + 0xc000), 0x208) /* ImmutableArray */; // 0x3b4f54
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x3b4f58
  SP = FP; // 0x3b4f60
  x0 = local_m8; // 0x3b4f5c
  // frame: FP, LR, mem(SP), 0x10 // 0x3b4f64
  return;
}

// PartyPocketButton_anon_closure
// raw disassembly:
//  0x3b54c0: stp FP, LR, [SP, #-0x10]!
//  0x3b54c4: mov FP, SP
//  0x3b54c8: sub SP, SP, #0x18
//  0x3b54cc: stur NULL, [FP, #-8]
//  0x3b54d0: mov x0, #0
//  0x3b54d4: add x1, FP, w0, sxtw #2
//  0x3b54d8: ldr x1, [x1, #0x10]
//  0x3b54dc: ldur w2, [x1, #0x17]
//  0x3b54e0: add x2, x2, HEAP, lsl #32
//  0x3b54e4: stur x2, [FP, #-0x10]
//  0x3b54e8: ldr BARRIER, [THR, #0x38]
//  0x3b54ec: cmp SP, BARRIER
//  0x3b54f0: b.ls #0x3b5534
//  0x3b54f4: ldr x0, [PP, #0xcf0]
//  0x3b54f8: bl #0x2b16e4
//  0x3b54fc: ldur x0, [FP, #-0x10]
//  0x3b5500: ldur w1, [x0, #0xf]
//  0x3b5504: add x1, x1, HEAP, lsl #32
//  0x3b5508: ldur w0, [x1, #0xb]
//  0x3b550c: add x0, x0, HEAP, lsl #32
//  0x3b5510: str x0, [SP]
//  0x3b5514: mov x4, #0
//  0x3b5518: ldr x0, [SP]
//  0x3b551c: add BARRIER, PP, #0x12, lsl #12
//  0x3b5520: add BARRIER, BARRIER, #0x228
//  0x3b5524: ldp x5, LR, [BARRIER]
//  0x3b5528: blr LR
//  0x3b552c: mov x0, NULL
//  0x3b5530: b #0x2b16b8
//  0x3b5534: bl #0x61fa28
//  0x3b5538: b #0x3b54f4
//
dynamic PartyPocketButton_anon_closure() {
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
  dynamic x4;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3b54c0
  // frame: FP = SP // 0x3b54c4
  // frame: SP = SP - 0x18 // 0x3b54c8
  local_m8 = NULL; // 0x3b54cc
  w2 = mem((mem((FP + (w0 /* sxtw 2 */)), 0x10)), 0x17); // 0x3b54dc
  x0 = 0; // 0x3b54d0
  x1 = mem((FP + (w0 /* sxtw 2 */)), 0x10); // 0x3b54d8
  x2 = ((mem((mem((FP + (w0 /* sxtw 2 */)), 0x10)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3b54e0
  local_m10 = x2; // 0x3b54e4
  BARRIER = mem(THR, 0x38); // 0x3b54e8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3b5534
  }
  x0 = mem(PP, 0xcf0) /* TypeArguments */; // 0x3b54f4
  sub_0x2b16e4(); // 0x3b54f8
  w0 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x3b5508
  w1 = mem((local_m10), 0xf); // 0x3b5500
  x0 = ((mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3b550c
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3b5504
  local_0 = x0; // 0x3b5510
  BARRIER = (PP + 0x12000) + 0x228; // 0x3b5520
  x0 = local_0; // 0x3b5518
  x4 = 0; // 0x3b5514
  memRead2(BARRIER, 0, x5, LR); // 0x3b5524
  callIndirect(LR); // 0x3b5528
  x0 = NULL; // 0x3b552c
}
