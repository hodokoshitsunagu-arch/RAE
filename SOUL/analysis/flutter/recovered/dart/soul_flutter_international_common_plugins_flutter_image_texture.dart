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

dynamic AllocationStub__Double, BARRIER, HEAP, LR, Map_factory_ctor_fromLiteral;
dynamic MethodChannel_invokeMethod, NULL, PP, SP, SlowTypeTestStub_0x61d6e4;
dynamic StackOverflowSharedWithFpuRegsStub_0x61faa8;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, d0, d1, local_0, local_m10;
dynamic local_m18, local_m20, local_m8, q0, sub_0x2b13a0, sub_0x2b16e4, sub_0x61db00;
dynamic sub_0x61f920, w0, w1, w16, w17, x0, x1, x16, x17, x2, x25, x3, x4, x8;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$common$plugins$flutter_image_texture
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// FlutterImageTexture_release
// raw disassembly:
//  0x447534: stp FP, LR, [SP, #-0x10]!
//  0x447538: mov FP, SP
//  0x44753c: sub SP, SP, #0x30
//  0x447540: stur NULL, [FP, #-8]
//  0x447544: stur x1, [FP, #-0x10]
//  0x447548: ldr BARRIER, [THR, #0x38]
//  0x44754c: cmp SP, BARRIER
//  0x447550: b.ls #0x4475bc
//  0x447554: ldr x0, [PP, #0x25a8]
//  0x447558: bl #0x2b16e4
//  0x44755c: mov x1, NULL
//  0x447560: mov x2, #4
//  0x447564: bl #0x61f920
//  0x447568: add BARRIER, PP, #0xe, lsl #12
//  0x44756c: ldr BARRIER, [BARRIER, #0x518]
//  0x447570: stur w16, [x0, #0xf]
//  0x447574: ldur x1, [FP, #-0x10]
//  0x447578: stur w1, [x0, #0x13]
//  0x44757c: ldr BARRIER, [PP, #0xbf0]
//  0x447580: stp x0, BARRIER, [SP]
//  0x447584: bl #0x27c0c8
//  0x447588: ldr BARRIER, [PP, #0x868]
//  0x44758c: add LR, PP, #0x15, lsl #12
//  0x447590: ldr LR, [LR, #0x58]
//  0x447594: stp LR, BARRIER, [SP, #0x10]
//  0x447598: add BARRIER, PP, #0x15, lsl #12
//  0x44759c: ldr BARRIER, [BARRIER, #0x60]
//  0x4475a0: stp x0, BARRIER, [SP]
//  0x4475a4: ldr x4, [PP, #0x408]
//  0x4475a8: bl #0x604e3c
//  0x4475ac: mov x1, x0
//  0x4475b0: stur x1, [FP, #-0x10]
//  0x4475b4: bl #0x2b13a0
//  0x4475b8: b #0x2b19a0
//  0x4475bc: bl #0x61fa28
//  0x4475c0: b #0x447554
//
dynamic FlutterImageTexture_release() {
  dynamic BARRIER;
  dynamic LR;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x447534
  // frame: FP = SP // 0x447538
  // frame: SP = SP - 0x30 // 0x44753c
  local_m8 = NULL; // 0x447540
  local_m10 = x1; // 0x447544
  BARRIER = mem(THR, 0x38); // 0x447548
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4475bc
  }
  x0 = mem(PP, 0x25a8) /* TypeArguments */; // 0x447554
  sub_0x2b16e4(); // 0x447558
  x1 = NULL; // 0x44755c
  x2 = 4; // 0x447560
  sub_0x61f920(); // 0x447564
  BARRIER = "id" /* pp+0xe518 */; // 0x44756c
  memSet(x0, 0xf, w16); // 0x447570
  x1 = local_m10; // 0x447574
  memSet(x0, 0x13, w1); // 0x447578
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x44757c
  // frame: x0, BARRIER, mem(SP) // 0x447580
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x447584
  BARRIER = mem(PP, 0x868) /* TypeArguments */; // 0x447588
  LR = mem((PP + 0x15000), 0x58) /* Obj!MethodChannel@11b2f  */; // 0x447590
  // frame: LR, BARRIER, mem(SP, 0x10) // 0x447594
  BARRIER = "release" /* pp+0x15060 */; // 0x44759c
  // frame: x0, BARRIER, mem(SP) // 0x4475a0
  x4 = mem(PP, 0x408) /* ImmutableArray */; // 0x4475a4
  MethodChannel_invokeMethod() /* 0x604e3c */; // 0x4475a8
  x1 = x0; // 0x4475ac
  local_m10 = x1; // 0x4475b0
  sub_0x2b13a0(); // 0x4475b4
}

// FlutterImageTexture_loadImg
// raw disassembly:
//  0x447dd0: stp FP, LR, [SP, #-0x10]!
//  0x447dd4: mov FP, SP
//  0x447dd8: sub SP, SP, #0x40
//  0x447ddc: stur NULL, [FP, #-8]
//  0x447de0: stur x1, [FP, #-0x10]
//  0x447de4: stur d0, [FP, #-0x18]
//  0x447de8: stur d1, [FP, #-0x20]
//  0x447dec: ldr BARRIER, [THR, #0x38]
//  0x447df0: cmp SP, BARRIER
//  0x447df4: b.ls #0x447f68
//  0x447df8: ldr x0, [PP, #0x908]
//  0x447dfc: bl #0x2b16e4
//  0x447e00: mov x1, NULL
//  0x447e04: mov x2, #0x14
//  0x447e08: bl #0x61f920
//  0x447e0c: mov x2, x0
//  0x447e10: ldr BARRIER, [PP, #0x2c48]
//  0x447e14: stur w16, [x2, #0xf]
//  0x447e18: ldur x0, [FP, #-0x10]
//  0x447e1c: stur w0, [x2, #0x13]
//  0x447e20: ldr BARRIER, [PP, #0x5228]
//  0x447e24: stur w16, [x2, #0x17]
//  0x447e28: ldur d0, [FP, #-0x20]
//  0x447e2c: ldp x0, x1, [THR, #0x50]
//  0x447e30: add x0, x0, #0x10
//  0x447e34: cmp x1, x0
//  0x447e38: b.ls #0x447f70
//  0x447e3c: str x0, [THR, #0x50]
//  0x447e40: sub x0, x0, #0xf
//  0x447e44: mov x1, #0xe15c
//  0x447e48: movk x1, #3, lsl #16
//  0x447e4c: stur x1, [x0, #-1]
//  0x447e50: stur d0, [x0, #7]
//  0x447e54: mov x1, x2
//  0x447e58: add x25, x1, #0x1b
//  0x447e5c: str w0, [x25]
//  0x447e60: tbz w0, #0, #0x447e7c
//  0x447e64: ldurb w16, [x1, #-1]
//  0x447e68: ldurb w17, [x0, #-1]
//  0x447e6c: and BARRIER, x17, BARRIER, lsr #2
//  0x447e70: tst BARRIER, HEAP, lsr #32
//  0x447e74: b.eq #0x447e7c
//  0x447e78: bl #0x61db00
//  0x447e7c: ldr BARRIER, [PP, #0x7d68]
//  0x447e80: stur w16, [x2, #0x1f]
//  0x447e84: ldur d0, [FP, #-0x18]
//  0x447e88: ldp x0, x1, [THR, #0x50]
//  0x447e8c: add x0, x0, #0x10
//  0x447e90: cmp x1, x0
//  0x447e94: b.ls #0x447f88
//  0x447e98: str x0, [THR, #0x50]
//  0x447e9c: sub x0, x0, #0xf
//  0x447ea0: mov x1, #0xe15c
//  0x447ea4: movk x1, #3, lsl #16
//  0x447ea8: stur x1, [x0, #-1]
//  0x447eac: stur d0, [x0, #7]
//  0x447eb0: mov x1, x2
//  0x447eb4: add x25, x1, #0x23
//  0x447eb8: str w0, [x25]
//  0x447ebc: tbz w0, #0, #0x447ed8
//  0x447ec0: ldurb w16, [x1, #-1]
//  0x447ec4: ldurb w17, [x0, #-1]
//  0x447ec8: and BARRIER, x17, BARRIER, lsr #2
//  0x447ecc: tst BARRIER, HEAP, lsr #32
//  0x447ed0: b.eq #0x447ed8
//  0x447ed4: bl #0x61db00
//  0x447ed8: add BARRIER, PP, #0x15, lsl #12
//  0x447edc: ldr BARRIER, [BARRIER, #0xe0]
//  0x447ee0: stur w16, [x2, #0x27]
//  0x447ee4: add BARRIER, NULL, #0x30
//  0x447ee8: stur w16, [x2, #0x2b]
//  0x447eec: add BARRIER, PP, #0x15, lsl #12
//  0x447ef0: ldr BARRIER, [BARRIER, #0xe8]
//  0x447ef4: stur w16, [x2, #0x2f]
//  0x447ef8: add BARRIER, NULL, #0x30
//  0x447efc: stur w16, [x2, #0x33]
//  0x447f00: ldr BARRIER, [PP, #0xbf0]
//  0x447f04: stp x2, BARRIER, [SP]
//  0x447f08: bl #0x27c0c8
//  0x447f0c: add BARRIER, PP, #0x15, lsl #12
//  0x447f10: ldr BARRIER, [BARRIER, #0x58]
//  0x447f14: stp BARRIER, NULL, [SP, #0x10]
//  0x447f18: add BARRIER, PP, #0x15, lsl #12
//  0x447f1c: ldr BARRIER, [BARRIER, #0xf0]
//  0x447f20: stp x0, BARRIER, [SP]
//  0x447f24: ldr x4, [PP, #0x408]
//  0x447f28: bl #0x604e3c
//  0x447f2c: mov x1, x0
//  0x447f30: stur x1, [FP, #-0x10]
//  0x447f34: bl #0x2b13a0
//  0x447f38: mov x3, x0
//  0x447f3c: mov x2, NULL
//  0x447f40: mov x1, NULL
//  0x447f44: stur x3, [FP, #-0x10]
//  0x447f48: tbz w0, #0, #0x447f60
//  0x447f4c: add x8, PP, #0x15, lsl #12
//  0x447f50: ldr x8, [x8, #0xf8]
//  0x447f54: add x3, PP, #0x15, lsl #12
//  0x447f58: ldr x3, [x3, #0x100]
//  0x447f5c: bl #0x61d6e4
//  0x447f60: ldur x0, [FP, #-0x10]
//  0x447f64: b #0x2b19a0
//  0x447f68: bl #0x61faa8
//  0x447f6c: b #0x447df8
//  0x447f70: str q0, [SP, #-0x10]!
//  0x447f74: str x2, [SP, #-8]!
//  0x447f78: bl #0x61f878
//  0x447f7c: ldr x2, [SP], #8
//  0x447f80: ldr q0, [SP], #0x10
//  0x447f84: b #0x447e50
//  0x447f88: str q0, [SP, #-0x10]!
//  0x447f8c: str x2, [SP, #-8]!
//  0x447f90: bl #0x61f878
//  0x447f94: ldr x2, [SP], #8
//  0x447f98: ldr q0, [SP], #0x10
//  0x447f9c: b #0x447eac
//
dynamic FlutterImageTexture_loadImg() {
  dynamic BARRIER;
  dynamic SP;
  dynamic d0;
  dynamic q0;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x25;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x447dd0
  // frame: FP = SP // 0x447dd4
  // frame: SP = SP - 0x40 // 0x447dd8
  local_m8 = NULL; // 0x447ddc
  local_m10 = x1; // 0x447de0
  local_m18 = d0; // 0x447de4
  local_m20 = d1; // 0x447de8
  BARRIER = mem(THR, 0x38); // 0x447dec
  if (SP <= BARRIER) {
    StackOverflowSharedWithFpuRegsStub_0x61faa8() /* 0x61faa8 */; // 0x447f68
  }
  x0 = mem(PP, 0x908) /* TypeArguments */; // 0x447df8
  sub_0x2b16e4(); // 0x447dfc
  x1 = NULL; // 0x447e00
  x2 = 20; // 0x447e04
  sub_0x61f920(); // 0x447e08
  BARRIER = "url" /* pp+0x2c48 */; // 0x447e10
  x2 = x0; // 0x447e0c
  memSet(x2, 0xf, w16); // 0x447e14
  x0 = local_m10; // 0x447e18
  memSet(x2, 0x13, w0); // 0x447e1c
  BARRIER = "height" /* pp+0x5228 */; // 0x447e20
  memSet(x2, 0x17, w16); // 0x447e24
  d0 = local_m20; // 0x447e28
  memRead2(THR, 0x50, x0, x1); // 0x447e2c
  x0 = x0 + 0x10; // 0x447e30
  if (x1 <= x0) {
    local_m10 = q0; // 0x447f70
    local_m8 = x2; // 0x447f74
    AllocationStub__Double() /* 0x61f878 */; // 0x447f78
    q0 = local_0; // 0x447f80
    x2 = local_0; // 0x447f7c
  } else {
    memSet(THR, 0x50, x0); // 0x447e3c
    x0 = x0 - 0xf; // 0x447e40
    x1 = (x1 & 0xffff) | 0x30000; // 0x447e48
    memSet(x0, -1, x1); // 0x447e4c
  }
  memSet(x0, 7, d0); // 0x447e50
  x1 = x2; // 0x447e54
  x25 = x1 + 0x1b; // 0x447e58
  memSet(x25, w0); // 0x447e5c
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x447e6c
    w17 = mem(x0, -1); // 0x447e68
    x16 = w16 & 0xffffffff; // 0x447e64
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x447e68
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      sub_0x61db00(); // 0x447e78
    }
  }
  BARRIER = "width" /* pp+0x7d68 */; // 0x447e7c
  memSet(x2, 0x1f, w16); // 0x447e80
  d0 = local_m18; // 0x447e84
  memRead2(THR, 0x50, x0, x1); // 0x447e88
  x0 = x0 + 0x10; // 0x447e8c
  if (x1 <= x0) {
    local_m10 = q0; // 0x447f88
    local_m8 = x2; // 0x447f8c
    AllocationStub__Double() /* 0x61f878 */; // 0x447f90
    q0 = local_0; // 0x447f98
    x2 = local_0; // 0x447f94
  } else {
    memSet(THR, 0x50, x0); // 0x447e98
    x0 = x0 - 0xf; // 0x447e9c
    x1 = (x1 & 0xffff) | 0x30000; // 0x447ea4
    memSet(x0, -1, x1); // 0x447ea8
  }
  memSet(x0, 7, d0); // 0x447eac
  x1 = x2; // 0x447eb0
  x25 = x1 + 0x23; // 0x447eb4
  memSet(x25, w0); // 0x447eb8
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x447ec8
    w17 = mem(x0, -1); // 0x447ec4
    x16 = w16 & 0xffffffff; // 0x447ec0
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x447ec4
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      sub_0x61db00(); // 0x447ed4
    }
  }
  BARRIER = "asGif" /* pp+0x150e0 */; // 0x447edc
  memSet(x2, 0x27, w16); // 0x447ee0
  BARRIER = NULL + 0x30; // 0x447ee4
  memSet(x2, 0x2b, w16); // 0x447ee8
  BARRIER = "mosaic" /* pp+0x150e8 */; // 0x447ef0
  memSet(x2, 0x2f, w16); // 0x447ef4
  BARRIER = NULL + 0x30; // 0x447ef8
  memSet(x2, 0x33, w16); // 0x447efc
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x447f00
  // frame: x2, BARRIER, mem(SP) // 0x447f04
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x447f08
  BARRIER = mem((PP + 0x15000), 0x58) /* Obj!MethodChannel@11b2f  */; // 0x447f10
  // frame: BARRIER, NULL, mem(SP, 0x10) // 0x447f14
  BARRIER = "loadUrl" /* pp+0x150f0 */; // 0x447f1c
  // frame: x0, BARRIER, mem(SP) // 0x447f20
  x4 = mem(PP, 0x408) /* ImmutableArray */; // 0x447f24
  MethodChannel_invokeMethod() /* 0x604e3c */; // 0x447f28
  x1 = x0; // 0x447f2c
  local_m10 = x1; // 0x447f30
  sub_0x2b13a0(); // 0x447f34
  x1 = NULL; // 0x447f40
  x2 = NULL; // 0x447f3c
  x3 = x0; // 0x447f38
  local_m10 = x3; // 0x447f44
  if (x0 & (1 << 0) == 0) {
  } else {
    x3 = mem((PP + 0x15000), 0x100) /* Obj!? */; // 0x447f58
    x8 = mem((PP + 0x15000), 0xf8) /* Type */; // 0x447f50
    SlowTypeTestStub_0x61d6e4() /* 0x61d6e4 */; // 0x447f5c
  }
  x0 = local_m10; // 0x447f60
}
