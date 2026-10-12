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

dynamic AllocationStub__Closure, AllocationStub__GrowableList, BARRIER;
dynamic Element_findRenderObject, FP, GlobalKey_get_currentElement, HEAP;
dynamic ImageGallerySaver_saveImage, Image_toByteData, LR, NULL, NativeDialog_toast, PP;
dynamic PermissionHelper_check, RenderRepaintBoundary_toImage, SP, SlowTypeTestStub_0x61d6e4;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolate, THR;
dynamic WriteBarrierStub_x3, getString, local_0, local_10, local_8, local_m10, local_m18;
dynamic local_m20, local_m8, sub_0x2b13a0, sub_0x2b16e4, sub_0x61e890, sub_0x61f920;
dynamic sub_0x62a0a0, w0, w1, w16, w17, w2, w22, w3, x0, x1, x16, x17, x2, x21, x3, x4, x5, x8;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$party$notifier$notifier_party_password
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PartyPasswordNotifier_saveSnapshot
// raw disassembly:
//  0x425060: stp FP, LR, [SP, #-0x10]!
//  0x425064: mov FP, SP
//  0x425068: sub SP, SP, #0x20
//  0x42506c: stur NULL, [FP, #-8]
//  0x425070: mov x0, x1
//  0x425074: stur x1, [FP, #-0x10]
//  0x425078: mov x1, x2
//  0x42507c: stur x2, [FP, #-0x18]
//  0x425080: ldr BARRIER, [THR, #0x38]
//  0x425084: cmp SP, BARRIER
//  0x425088: b.ls #0x425218
//  0x42508c: mov x1, #2
//  0x425090: bl #0x61e890
//  0x425094: mov x1, x0
//  0x425098: ldur x0, [FP, #-0x10]
//  0x42509c: stur x1, [FP, #-0x20]
//  0x4250a0: stur w0, [x1, #0xf]
//  0x4250a4: ldr x0, [PP, #0x1658]
//  0x4250a8: bl #0x2b16e4
//  0x4250ac: ldur x1, [FP, #-0x18]
//  0x4250b0: bl #0x2c0440
//  0x4250b4: cmp w0, w22
//  0x4250b8: b.ne #0x4250c4
//  0x4250bc: mov x3, NULL
//  0x4250c0: b #0x4250d0
//  0x4250c4: mov x1, x0
//  0x4250c8: bl #0x30292c
//  0x4250cc: mov x3, x0
//  0x4250d0: stur x3, [FP, #-0x10]
//  0x4250d4: cmp w3, w22
//  0x4250d8: b.ne #0x4250e4
//  0x4250dc: mov x0, NULL
//  0x4250e0: b #0x2b16b8
//  0x4250e4: mov x0, x3
//  0x4250e8: mov x2, NULL
//  0x4250ec: mov x1, NULL
//  0x4250f0: ldur x4, [x0, #-1]
//  0x4250f4: ubfx x4, x4, #0xc, #0x14
//  0x4250f8: cmp x4, #0x4e9
//  0x4250fc: b.eq #0x425114
//  0x425100: add x8, PP, #0x11, lsl #12
//  0x425104: ldr x8, [x8, #0x178]
//  0x425108: add x3, PP, #0x11, lsl #12
//  0x42510c: ldr x3, [x3, #0x180]
//  0x425110: bl #0x61d6e4
//  0x425114: ldur x1, [FP, #-0x10]
//  0x425118: bl #0x426084
//  0x42511c: mov x1, x0
//  0x425120: stur x1, [FP, #-0x10]
//  0x425124: bl #0x2b13a0
//  0x425128: mov x1, x0
//  0x42512c: bl #0x425a60
//  0x425130: mov x1, x0
//  0x425134: stur x1, [FP, #-0x10]
//  0x425138: bl #0x2b13a0
//  0x42513c: cmp w0, w22
//  0x425140: b.ne #0x42514c
//  0x425144: mov x0, NULL
//  0x425148: b #0x2b16b8
//  0x42514c: ldur x2, [FP, #-0x20]
//  0x425150: ldur x1, [x0, #-1]
//  0x425154: ubfx x1, x1, #0xc, #0x14
//  0x425158: mov BARRIER, x0
//  0x42515c: mov x0, x1
//  0x425160: mov x1, BARRIER
//  0x425164: sub LR, x0, #0xed2
//  0x425168: ldr LR, [x21, LR, lsl #3]
//  0x42516c: blr LR
//  0x425170: ldur x1, [x0, #-1]
//  0x425174: ubfx x1, x1, #0xc, #0x14
//  0x425178: mov BARRIER, x0
//  0x42517c: mov x0, x1
//  0x425180: mov x1, BARRIER
//  0x425184: ldr x4, [PP, #0x4c0]
//  0x425188: sub LR, x0, #1, lsl #12
//  0x42518c: ldr LR, [x21, LR, lsl #3]
//  0x425190: blr LR
//  0x425194: ldur x3, [FP, #-0x20]
//  0x425198: stur w0, [x3, #0x13]
//  0x42519c: ldurb w16, [x3, #-1]
//  0x4251a0: ldurb w17, [x0, #-1]
//  0x4251a4: and BARRIER, x17, BARRIER, lsr #2
//  0x4251a8: tst BARRIER, HEAP, lsr #32
//  0x4251ac: b.eq #0x4251b4
//  0x4251b0: bl #0x61e08c
//  0x4251b4: mov x1, NULL
//  0x4251b8: mov x2, #2
//  0x4251bc: bl #0x61f920
//  0x4251c0: stur x0, [FP, #-0x10]
//  0x4251c4: add BARRIER, PP, #0x11, lsl #12
//  0x4251c8: ldr BARRIER, [BARRIER, #0x190]
//  0x4251cc: stur w16, [x0, #0xf]
//  0x4251d0: add x1, PP, #0x11, lsl #12
//  0x4251d4: ldr x1, [x1, #0x198]
//  0x4251d8: bl #0x61e854
//  0x4251dc: mov x3, x0
//  0x4251e0: ldur x0, [FP, #-0x10]
//  0x4251e4: stur x3, [FP, #-0x18]
//  0x4251e8: stur w0, [x3, #0xf]
//  0x4251ec: mov x0, #2
//  0x4251f0: stur w0, [x3, #0xb]
//  0x4251f4: ldur x2, [FP, #-0x20]
//  0x4251f8: add x1, PP, #0x11, lsl #12
//  0x4251fc: ldr x1, [x1, #0x1a0]
//  0x425200: bl #0x61ec54
//  0x425204: ldur x1, [FP, #-0x18]
//  0x425208: mov x2, x0
//  0x42520c: bl #0x425220
//  0x425210: mov x0, NULL
//  0x425214: b #0x2b16b8
//  0x425218: bl #0x61fa28
//  0x42521c: b #0x42508c
//
dynamic PartyPasswordNotifier_saveSnapshot() {
  dynamic BARRIER;
  dynamic LR;
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
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x425060
  // frame: FP = SP // 0x425064
  // frame: SP = SP - 0x20 // 0x425068
  local_m8 = NULL; // 0x42506c
  x0 = x1; // 0x425070
  local_m10 = x1; // 0x425074
  x1 = x2; // 0x425078
  local_m18 = x2; // 0x42507c
  BARRIER = mem(THR, 0x38); // 0x425080
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x425218
  }
  x1 = 2; // 0x42508c
  sub_0x61e890(); // 0x425090
  x0 = local_m10; // 0x425098
  x1 = x0; // 0x425094
  local_m20 = x1; // 0x42509c
  memSet(x1, 0xf, w0); // 0x4250a0
  x0 = mem(PP, 0x1658) /* TypeArguments */; // 0x4250a4
  sub_0x2b16e4(); // 0x4250a8
  x1 = local_m18; // 0x4250ac
  GlobalKey_get_currentElement() /* 0x2c0440 */; // 0x4250b0
  if (w0 != w22) {
    x1 = x0; // 0x4250c4
    Element_findRenderObject() /* 0x30292c */; // 0x4250c8
    x3 = x0; // 0x4250cc
  } else {
    x3 = NULL; // 0x4250bc
  }
  local_m10 = x3; // 0x4250d0
  if (w3 == w22) {
    x0 = NULL; // 0x4250dc
  }
  x0 = x3; // 0x4250e4
  x1 = NULL; // 0x4250ec
  x2 = NULL; // 0x4250e8
  x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4250f4
  if (x4 == 0x4e9) {
  } else {
    x3 = mem((PP + 0x11000), 0x180) /* Obj!? */; // 0x42510c
    x8 = mem((PP + 0x11000), 0x178) /* Type */; // 0x425104
    SlowTypeTestStub_0x61d6e4() /* 0x61d6e4 */; // 0x425110
  }
  x1 = local_m10; // 0x425114
  RenderRepaintBoundary_toImage() /* 0x426084 */; // 0x425118
  x1 = x0; // 0x42511c
  local_m10 = x1; // 0x425120
  sub_0x2b13a0(); // 0x425124
  x1 = x0; // 0x425128
  Image_toByteData() /* 0x425a60 */; // 0x42512c
  x1 = x0; // 0x425130
  local_m10 = x1; // 0x425134
  sub_0x2b13a0(); // 0x425138
  if (w0 == w22) {
    x0 = NULL; // 0x425144
  }
  BARRIER = x0; // 0x425158
  x0 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x42515c
  x1 = x0; // 0x425160
  x2 = local_m20; // 0x42514c
  LR = mem(x21, ((x0 - 0xed2) << 3)); // 0x425168
  callIndirect(LR); // 0x42516c
  BARRIER = x0; // 0x425178
  x0 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x42517c
  x1 = x0; // 0x425180
  LR = mem(x21, ((x0 - 0x1000) << 3)); // 0x42518c
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x425184
  callIndirect(LR); // 0x425190
  x3 = local_m20; // 0x425194
  memSet(x3, 0x13, w0); // 0x425198
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4251a4
  w16 = mem(x3, -1); // 0x42519c
  w17 = mem(x0, -1); // 0x4251a0
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x42519c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4251a0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4251b0
  }
  x1 = NULL; // 0x4251b4
  x2 = 2; // 0x4251b8
  sub_0x61f920(); // 0x4251bc
  local_m10 = x0; // 0x4251c0
  BARRIER = mem((PP + 0x11000), 0x190) /* Obj!Permission@11a6f  */; // 0x4251c8
  memSet(x0, 0xf, w16); // 0x4251cc
  x1 = mem((PP + 0x11000), 0x198) /* TypeArguments */; // 0x4251d4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x4251d8
  x0 = local_m10; // 0x4251e0
  x3 = x0; // 0x4251dc
  local_m18 = x3; // 0x4251e4
  memSet(x3, 0xf, w0); // 0x4251e8
  x0 = 2; // 0x4251ec
  memSet(x3, 0xb, w0); // 0x4251f0
  x1 = mem((PP + 0x11000), 0x1a0) /* Function */; // 0x4251fc
  x2 = local_m20; // 0x4251f4
  AllocationStub__Closure() /* 0x61ec54 */; // 0x425200
  x1 = local_m18; // 0x425204
  x2 = x0; // 0x425208
  PermissionHelper_check() /* 0x425220 */; // 0x42520c
  x0 = NULL; // 0x425210
}

// PartyPasswordNotifier_anon_closure
// raw disassembly:
//  0x426ab8: stp FP, LR, [SP, #-0x10]!
//  0x426abc: mov FP, SP
//  0x426ac0: ldr x0, [FP, #0x10]
//  0x426ac4: ldur w1, [x0, #0x17]
//  0x426ac8: add x1, x1, HEAP, lsl #32
//  0x426acc: ldr BARRIER, [THR, #0x38]
//  0x426ad0: cmp SP, BARRIER
//  0x426ad4: b.ls #0x426b00
//  0x426ad8: ldur w0, [x1, #0xf]
//  0x426adc: add x0, x0, HEAP, lsl #32
//  0x426ae0: ldur w2, [x1, #0x13]
//  0x426ae4: add x2, x2, HEAP, lsl #32
//  0x426ae8: mov x1, x0
//  0x426aec: bl #0x426b08
//  0x426af0: mov x0, NULL
//  0x426af4: mov SP, FP
//  0x426af8: ldp FP, LR, [SP], #0x10
//  0x426afc: ret 
//  0x426b00: bl #0x61fa28
//  0x426b04: b #0x426ad8
//
dynamic PartyPasswordNotifier_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x426ab8
  BARRIER = mem(THR, 0x38); // 0x426acc
  // frame: FP = SP // 0x426abc
  w1 = mem((local_10), 0x17); // 0x426ac4
  x0 = local_10; // 0x426ac0
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x426ac8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x426b00
  }
  w2 = mem(x1, 0x13); // 0x426ae0
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x426adc
  x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x426ae8
  x2 = ((mem(x1, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x426ae4
  PartyPasswordNotifier_saveImageToGallery() /* 0x426b08 */; // 0x426aec
  SP = FP; // 0x426af4
  x0 = NULL; // 0x426af0
  // frame: FP, LR, mem(SP), 0x10 // 0x426af8
  return;
}

// PartyPasswordNotifier_saveImageToGallery
// raw disassembly:
//  0x426b08: stp FP, LR, [SP, #-0x10]!
//  0x426b0c: mov FP, SP
//  0x426b10: sub SP, SP, #0x28
//  0x426b14: stur NULL, [FP, #-8]
//  0x426b18: stur x1, [FP, #-0x10]
//  0x426b1c: mov BARRIER, x2
//  0x426b20: mov x2, x1
//  0x426b24: mov x1, BARRIER
//  0x426b28: stur x1, [FP, #-0x18]
//  0x426b2c: ldr BARRIER, [THR, #0x38]
//  0x426b30: cmp SP, BARRIER
//  0x426b34: b.ls #0x426c38
//  0x426b38: ldr x0, [PP, #0x1658]
//  0x426b3c: bl #0x2b16e4
//  0x426b40: ldur x1, [FP, #-0x18]
//  0x426b44: bl #0x426c40
//  0x426b48: mov x1, x0
//  0x426b4c: stur x1, [FP, #-0x18]
//  0x426b50: bl #0x2b13a0
//  0x426b54: mov x1, NULL
//  0x426b58: mov x2, #4
//  0x426b5c: stur x0, [FP, #-0x10]
//  0x426b60: bl #0x61f920
//  0x426b64: add BARRIER, PP, #0x11, lsl #12
//  0x426b68: ldr BARRIER, [BARRIER, #0x1a8]
//  0x426b6c: stur w16, [x0, #0xf]
//  0x426b70: ldur x1, [FP, #-0x10]
//  0x426b74: stur w1, [x0, #0x13]
//  0x426b78: str x0, [SP]
//  0x426b7c: bl #0x2ad854
//  0x426b80: ldur x0, [FP, #-0x10]
//  0x426b84: cmp w0, w22
//  0x426b88: b.eq #0x426c14
//  0x426b8c: add BARRIER, PP, #0x11, lsl #12
//  0x426b90: ldr BARRIER, [BARRIER, #0x1b0]
//  0x426b94: stp BARRIER, x0, [SP]
//  0x426b98: mov x4, #0
//  0x426b9c: ldr x0, [SP, #8]
//  0x426ba0: add BARRIER, PP, #0x11, lsl #12
//  0x426ba4: ldp x5, LR, [BARRIER, #0x1b8]
//  0x426ba8: blr LR
//  0x426bac: mov x3, x0
//  0x426bb0: mov x2, NULL
//  0x426bb4: mov x1, NULL
//  0x426bb8: stur x3, [FP, #-0x10]
//  0x426bbc: mov x4, #0x3c
//  0x426bc0: tbz w0, #0, #0x426bcc
//  0x426bc4: ldur x4, [x0, #-1]
//  0x426bc8: ubfx x4, x4, #0xc, #0x14
//  0x426bcc: cmp x4, #0x3f
//  0x426bd0: b.eq #0x426be4
//  0x426bd4: ldr x8, [PP, #0xa08]
//  0x426bd8: add x3, PP, #0x11, lsl #12
//  0x426bdc: ldr x3, [x3, #0x1c8]
//  0x426be0: bl #0x62a0a0
//  0x426be4: ldur x0, [FP, #-0x10]
//  0x426be8: tbnz w0, #4, #0x426c14
//  0x426bec: add x1, PP, #0xc, lsl #12
//  0x426bf0: ldr x1, [x1, #0xae0]
//  0x426bf4: ldr x4, [PP, #0x4c0]
//  0x426bf8: bl #0x3a1dcc
//  0x426bfc: add BARRIER, NULL, #0x20
//  0x426c00: str BARRIER, [SP]
//  0x426c04: mov x1, x0
//  0x426c08: ldr x4, [PP, #0x4d0]
//  0x426c0c: bl #0x3ac64c
//  0x426c10: b #0x426c30
//  0x426c14: add x1, PP, #0xc, lsl #12
//  0x426c18: ldr x1, [x1, #0xad0]
//  0x426c1c: ldr x4, [PP, #0x4c0]
//  0x426c20: bl #0x3a1dcc
//  0x426c24: mov x1, x0
//  0x426c28: ldr x4, [PP, #0x4c0]
//  0x426c2c: bl #0x3ac64c
//  0x426c30: mov x0, NULL
//  0x426c34: b #0x2b16b8
//  0x426c38: bl #0x61fa28
//  0x426c3c: b #0x426b38
//
// NOTE: control flow was not fully structured (goto kept) -- pseudocode only.
dynamic PartyPasswordNotifier_saveImageToGallery() {
  dynamic BARRIER;
  dynamic LR;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x426b08
  // frame: FP = SP // 0x426b0c
  // frame: SP = SP - 0x28 // 0x426b10
  local_m8 = NULL; // 0x426b14
  local_m10 = x1; // 0x426b18
  BARRIER = x2; // 0x426b1c
  x1 = x2; // 0x426b24
  x2 = x1; // 0x426b20
  local_m18 = x1; // 0x426b28
  BARRIER = mem(THR, 0x38); // 0x426b2c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x426c38
  }
  x0 = mem(PP, 0x1658) /* TypeArguments */; // 0x426b38
  sub_0x2b16e4(); // 0x426b3c
  x1 = local_m18; // 0x426b40
  ImageGallerySaver_saveImage() /* 0x426c40 */; // 0x426b44
  x1 = x0; // 0x426b48
  local_m18 = x1; // 0x426b4c
  sub_0x2b13a0(); // 0x426b50
  x1 = NULL; // 0x426b54
  x2 = 4; // 0x426b58
  local_m10 = x0; // 0x426b5c
  sub_0x61f920(); // 0x426b60
  BARRIER = "save virtual party invite image result: " /* pp+0x111a8 */; // 0x426b68
  memSet(x0, 0xf, w16); // 0x426b6c
  x1 = local_m10; // 0x426b70
  memSet(x0, 0x13, w1); // 0x426b74
  local_0 = x0; // 0x426b78
  StringBase_interpolate() /* 0x2ad854 */; // 0x426b7c
  x0 = local_m10; // 0x426b80
  if (w0 == w22) {
  } else {
    BARRIER = "isSuccess" /* pp+0x111b0 */; // 0x426b90
    // frame: BARRIER, x0, mem(SP) // 0x426b94
    BARRIER = PP + 0x11000; // 0x426ba0
    x0 = local_8; // 0x426b9c
    x4 = 0; // 0x426b98
    memRead2(BARRIER, 0x1b8, x5, LR); // 0x426ba4
    callIndirect(LR); // 0x426ba8
    x1 = NULL; // 0x426bb4
    x2 = NULL; // 0x426bb0
    x3 = x0; // 0x426bac
    local_m10 = x3; // 0x426bb8
    x4 = 60; // 0x426bbc
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x426bc8
    }
    if (x4 == 0x3f) {
    } else {
      x3 = mem((PP + 0x11000), 0x1c8) /* Obj!? */; // 0x426bdc
      x8 = mem(PP, 0xa08) /* Type */; // 0x426bd4
      sub_0x62a0a0(); // 0x426be0
    }
    x0 = local_m10; // 0x426be4
    if (x0 & (1 << 4) != 0) {
      x1 = "common_share_save_fail_flutter" /* pp+0xcad0 */; // 0x426c18
      x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x426c1c
      getString() /* 0x3a1dcc */; // 0x426c20
      x1 = x0; // 0x426c24
      x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x426c28
      NativeDialog_toast() /* 0x3ac64c */; // 0x426c2c
    } else {
      x1 = "common_share_save_suc_flutter" /* pp+0xcae0 */; // 0x426bf0
      x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x426bf4
      getString() /* 0x3a1dcc */; // 0x426bf8
      BARRIER = NULL + 0x20; // 0x426bfc
      local_0 = BARRIER; // 0x426c00
      x1 = x0; // 0x426c04
      x4 = mem(PP, 0x4d0) /* ImmutableArray */; // 0x426c08
      NativeDialog_toast() /* 0x3ac64c */; // 0x426c0c
    }
    x0 = NULL; // 0x426c30
    gotoLabel(0x2b16b8);
  }
}
