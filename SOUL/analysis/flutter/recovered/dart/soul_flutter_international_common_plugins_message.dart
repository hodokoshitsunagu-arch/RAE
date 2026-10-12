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

dynamic AllocationStub_AppChangeNotifier, AllocationStub_ChannelNative;
dynamic AllocationStub_UserInfo, AllocationStub__Future, AllocationStub__GrowableList, BARRIER;
dynamic ChannelNative_call, ChannelNative_ctor, FP, Future_asyncComplete, Future_wait, HEAP;
dynamic LR;
dynamic Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData;
dynamic Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign;
dynamic Map_factory_ctor, NULL, PP, SP, SlowTypeTestStub_0x61d6cc;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, WriteBarrierStub_x3, local_10;
dynamic local_m10, local_m18, local_m20, local_m8, sub_0x278d08, sub_0x2b13a0, sub_0x2b16e4;
dynamic sub_0x61d99c, sub_0x61da04, sub_0x61f920, w0, w1, w16, w17, w2, w22, x0, x1, x16, x17;
dynamic x2, x21, x3, x4, x5, x8, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$common$plugins$message
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// SOMessages_getH5Host
// raw disassembly:
//  0x3a8570: stp FP, LR, [SP, #-0x10]!
//  0x3a8574: mov FP, SP
//  0x3a8578: sub SP, SP, #0x18
//  0x3a857c: stur NULL, [FP, #-8]
//  0x3a8580: ldr BARRIER, [THR, #0x38]
//  0x3a8584: cmp SP, BARRIER
//  0x3a8588: b.ls #0x3a8674
//  0x3a858c: ldr x0, [PP, #0x868]
//  0x3a8590: bl #0x2b16e4
//  0x3a8594: ldr x0, [THR, #0x68]
//  0x3a8598: ldr x0, [x0, #0x17d8]
//  0x3a859c: ldr BARRIER, [PP, #0x40]
//  0x3a85a0: cmp w0, w16
//  0x3a85a4: b.ne #0x3a85b0
//  0x3a85a8: ldr x2, [PP, #0x3680]
//  0x3a85ac: bl #0x61d99c
//  0x3a85b0: mov x1, x0
//  0x3a85b4: add x2, PP, #0x10, lsl #12
//  0x3a85b8: ldr x2, [x2, #0x320]
//  0x3a85bc: ldr x4, [PP, #0x278]
//  0x3a85c0: bl #0x3a8288
//  0x3a85c4: mov x1, x0
//  0x3a85c8: stur x1, [FP, #-0x10]
//  0x3a85cc: bl #0x2b13a0
//  0x3a85d0: mov x3, x0
//  0x3a85d4: mov x2, NULL
//  0x3a85d8: mov x1, NULL
//  0x3a85dc: stur x3, [FP, #-0x10]
//  0x3a85e0: mov x4, #0x3c
//  0x3a85e4: tbz w0, #0, #0x3a85f0
//  0x3a85e8: ldur x4, [x0, #-1]
//  0x3a85ec: ubfx x4, x4, #0xc, #0x14
//  0x3a85f0: sub x4, x4, #0x5e
//  0x3a85f4: cmp x4, #1
//  0x3a85f8: b.ls #0x3a860c
//  0x3a85fc: ldr x8, [PP, #0xae0]
//  0x3a8600: add x3, PP, #0x10, lsl #12
//  0x3a8604: ldr x3, [x3, #0x328]
//  0x3a8608: bl #0x278d08
//  0x3a860c: ldur x0, [FP, #-0x10]
//  0x3a8610: cmp w0, w22
//  0x3a8614: b.ne #0x3a8620
//  0x3a8618: ldr x2, [PP, #0x148]
//  0x3a861c: b #0x3a8624
//  0x3a8620: mov x2, x0
//  0x3a8624: stur x2, [FP, #-0x10]
//  0x3a8628: ldr x1, [PP, #0x868]
//  0x3a862c: bl #0x2abee8
//  0x3a8630: stur x0, [FP, #-0x18]
//  0x3a8634: stur xzr, [x0, #0xb]
//  0x3a8638: ldr x0, [THR, #0x68]
//  0x3a863c: ldr x0, [x0, #0x710]
//  0x3a8640: ldr BARRIER, [PP, #0x40]
//  0x3a8644: cmp w0, w16
//  0x3a8648: b.ne #0x3a8654
//  0x3a864c: ldr x2, [PP, #0x128]
//  0x3a8650: bl #0x61da04
//  0x3a8654: mov x1, x0
//  0x3a8658: ldur x0, [FP, #-0x18]
//  0x3a865c: stur w1, [x0, #0x13]
//  0x3a8660: mov x1, x0
//  0x3a8664: ldur x2, [FP, #-0x10]
//  0x3a8668: bl #0x27a970
//  0x3a866c: ldur x0, [FP, #-0x18]
//  0x3a8670: b #0x2b19a0
//  0x3a8674: bl #0x61fa28
//  0x3a8678: b #0x3a858c
//
dynamic SOMessages_getH5Host() {
  dynamic BARRIER;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a8570
  // frame: FP = SP // 0x3a8574
  // frame: SP = SP - 0x18 // 0x3a8578
  local_m8 = NULL; // 0x3a857c
  BARRIER = mem(THR, 0x38); // 0x3a8580
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a8674
  }
  x0 = mem(PP, 0x868) /* TypeArguments */; // 0x3a858c
  sub_0x2b16e4(); // 0x3a8590
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3a859c
  x0 = mem((mem(THR, 0x68)), 0x17d8); // 0x3a8598
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3680) /* Field */; // 0x3a85a8
    sub_0x61d99c(); // 0x3a85ac
  }
  x1 = x0; // 0x3a85b0
  x2 = "getH5Host" /* pp+0x10320 */; // 0x3a85b8
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x3a85bc
  ChannelNative_call() /* 0x3a8288 */; // 0x3a85c0
  x1 = x0; // 0x3a85c4
  local_m10 = x1; // 0x3a85c8
  sub_0x2b13a0(); // 0x3a85cc
  x1 = NULL; // 0x3a85d8
  x2 = NULL; // 0x3a85d4
  x3 = x0; // 0x3a85d0
  local_m10 = x3; // 0x3a85dc
  x4 = 60; // 0x3a85e0
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3a85ec
  }
  x4 = x4 - 0x5e; // 0x3a85f0
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x10000), 0x328) /* Obj!? */; // 0x3a8604
    x8 = mem(PP, 0xae0) /* Type */; // 0x3a85fc
    sub_0x278d08(); // 0x3a8608
  }
  x0 = local_m10; // 0x3a860c
  if (w0 != w22) {
    x2 = x0; // 0x3a8620
  } else {
    x2 = "" /* pp+0x148 */; // 0x3a8618
  }
  local_m10 = x2; // 0x3a8624
  x1 = mem(PP, 0x868) /* TypeArguments */; // 0x3a8628
  AllocationStub__Future() /* 0x2abee8 */; // 0x3a862c
  local_m18 = x0; // 0x3a8630
  memSet(x0, 0xb, xzr); // 0x3a8634
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3a8640
  x0 = mem((mem(THR, 0x68)), 0x710); // 0x3a863c
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x128) /* Field */; // 0x3a864c
    sub_0x61da04(); // 0x3a8650
  }
  x0 = local_m18; // 0x3a8658
  x1 = x0; // 0x3a8654
  memSet(x0, 0x13, w1); // 0x3a865c
  x1 = x0; // 0x3a8660
  x2 = local_m10; // 0x3a8664
  Future_asyncComplete() /* 0x27a970 */; // 0x3a8668
  x0 = local_m18; // 0x3a866c
}

// SOMessages_channel
// raw disassembly:
//  0x3a867c: stp FP, LR, [SP, #-0x10]!
//  0x3a8680: mov FP, SP
//  0x3a8684: sub SP, SP, #8
//  0x3a8688: ldr BARRIER, [THR, #0x38]
//  0x3a868c: cmp SP, BARRIER
//  0x3a8690: b.ls #0x3a86b8
//  0x3a8694: bl #0x3a84b8
//  0x3a8698: mov x1, x0
//  0x3a869c: ldr x2, [PP, #0x36a0]
//  0x3a86a0: stur x0, [FP, #-8]
//  0x3a86a4: bl #0x3a83ec
//  0x3a86a8: ldur x0, [FP, #-8]
//  0x3a86ac: mov SP, FP
//  0x3a86b0: ldp FP, LR, [SP], #0x10
//  0x3a86b4: ret 
//  0x3a86b8: bl #0x61fa28
//  0x3a86bc: b #0x3a8694
//
dynamic SOMessages_channel() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a867c
  BARRIER = mem(THR, 0x38); // 0x3a8688
  // frame: FP = SP // 0x3a8680
  // frame: SP = SP - 8 // 0x3a8684
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a86b8
  }
  AllocationStub_ChannelNative() /* 0x3a84b8 */; // 0x3a8694
  x1 = x0; // 0x3a8698
  x2 = "soul_channel_message" /* pp+0x36a0 */; // 0x3a869c
  local_m8 = x0; // 0x3a86a0
  ChannelNative_ctor() /* 0x3a83ec */; // 0x3a86a4
  SP = FP; // 0x3a86ac
  x0 = local_m8; // 0x3a86a8
  // frame: FP, LR, mem(SP), 0x10 // 0x3a86b0
  return;
}

// SOMessages_getUserInfo
// raw disassembly:
//  0x3b89cc: stp FP, LR, [SP, #-0x10]!
//  0x3b89d0: mov FP, SP
//  0x3b89d4: sub SP, SP, #0x18
//  0x3b89d8: stur NULL, [FP, #-8]
//  0x3b89dc: ldr BARRIER, [THR, #0x38]
//  0x3b89e0: cmp SP, BARRIER
//  0x3b89e4: b.ls #0x3b8b50
//  0x3b89e8: add x0, PP, #0xe, lsl #12
//  0x3b89ec: ldr x0, [x0, #0xd98]
//  0x3b89f0: bl #0x2b16e4
//  0x3b89f4: ldr x0, [THR, #0x68]
//  0x3b89f8: ldr x0, [x0, #0x17d8]
//  0x3b89fc: ldr BARRIER, [PP, #0x40]
//  0x3b8a00: cmp w0, w16
//  0x3b8a04: b.ne #0x3b8a10
//  0x3b8a08: ldr x2, [PP, #0x3680]
//  0x3b8a0c: bl #0x61d99c
//  0x3b8a10: mov x1, x0
//  0x3b8a14: add x2, PP, #0xe, lsl #12
//  0x3b8a18: ldr x2, [x2, #0xda0]
//  0x3b8a1c: ldr x4, [PP, #0x278]
//  0x3b8a20: bl #0x3a8288
//  0x3b8a24: mov x1, x0
//  0x3b8a28: stur x1, [FP, #-0x10]
//  0x3b8a2c: bl #0x2b13a0
//  0x3b8a30: mov x3, x0
//  0x3b8a34: mov x2, NULL
//  0x3b8a38: mov x1, NULL
//  0x3b8a3c: stur x3, [FP, #-0x10]
//  0x3b8a40: mov x4, #0x3c
//  0x3b8a44: tbz w0, #0, #0x3b8a50
//  0x3b8a48: ldur x4, [x0, #-1]
//  0x3b8a4c: ubfx x4, x4, #0xc, #0x14
//  0x3b8a50: sub x4, x4, #0x5e
//  0x3b8a54: cmp x4, #1
//  0x3b8a58: b.ls #0x3b8a6c
//  0x3b8a5c: ldr x8, [PP, #0xae0]
//  0x3b8a60: add x3, PP, #0xe, lsl #12
//  0x3b8a64: ldr x3, [x3, #0xda8]
//  0x3b8a68: bl #0x278d08
//  0x3b8a6c: ldur x1, [FP, #-0x10]
//  0x3b8a70: cmp w1, w22
//  0x3b8a74: b.eq #0x3b8b00
//  0x3b8a78: bl #0x3ac138
//  0x3b8a7c: mov x3, x0
//  0x3b8a80: mov x2, NULL
//  0x3b8a84: mov x1, NULL
//  0x3b8a88: stur x3, [FP, #-0x10]
//  0x3b8a8c: ldr x8, [PP, #0x3cd0]
//  0x3b8a90: add x3, PP, #0xe, lsl #12
//  0x3b8a94: ldr x3, [x3, #0xdb8]
//  0x3b8a98: bl #0x2b15f0
//  0x3b8a9c: bl #0x3b9118
//  0x3b8aa0: mov x1, x0
//  0x3b8aa4: ldur x2, [FP, #-0x10]
//  0x3b8aa8: stur x0, [FP, #-0x10]
//  0x3b8aac: bl #0x3b8b58
//  0x3b8ab0: add x1, PP, #0xe, lsl #12
//  0x3b8ab4: ldr x1, [x1, #0xd98]
//  0x3b8ab8: bl #0x2abee8
//  0x3b8abc: stur x0, [FP, #-0x18]
//  0x3b8ac0: stur xzr, [x0, #0xb]
//  0x3b8ac4: ldr x0, [THR, #0x68]
//  0x3b8ac8: ldr x0, [x0, #0x710]
//  0x3b8acc: ldr BARRIER, [PP, #0x40]
//  0x3b8ad0: cmp w0, w16
//  0x3b8ad4: b.ne #0x3b8ae0
//  0x3b8ad8: ldr x2, [PP, #0x128]
//  0x3b8adc: bl #0x61da04
//  0x3b8ae0: mov x1, x0
//  0x3b8ae4: ldur x0, [FP, #-0x18]
//  0x3b8ae8: stur w1, [x0, #0x13]
//  0x3b8aec: mov x1, x0
//  0x3b8af0: ldur x2, [FP, #-0x10]
//  0x3b8af4: bl #0x27a970
//  0x3b8af8: ldur x0, [FP, #-0x18]
//  0x3b8afc: b #0x2b19a0
//  0x3b8b00: add x1, PP, #0xe, lsl #12
//  0x3b8b04: ldr x1, [x1, #0xd98]
//  0x3b8b08: bl #0x2abee8
//  0x3b8b0c: stur x0, [FP, #-0x10]
//  0x3b8b10: stur xzr, [x0, #0xb]
//  0x3b8b14: ldr x0, [THR, #0x68]
//  0x3b8b18: ldr x0, [x0, #0x710]
//  0x3b8b1c: ldr BARRIER, [PP, #0x40]
//  0x3b8b20: cmp w0, w16
//  0x3b8b24: b.ne #0x3b8b30
//  0x3b8b28: ldr x2, [PP, #0x128]
//  0x3b8b2c: bl #0x61da04
//  0x3b8b30: ldur x1, [FP, #-0x10]
//  0x3b8b34: stur w0, [x1, #0x13]
//  0x3b8b38: bl #0x3b9118
//  0x3b8b3c: ldur x1, [FP, #-0x10]
//  0x3b8b40: mov x2, x0
//  0x3b8b44: bl #0x27a970
//  0x3b8b48: ldur x0, [FP, #-0x10]
//  0x3b8b4c: b #0x2b19a0
//  0x3b8b50: bl #0x61fa28
//  0x3b8b54: b #0x3b89e8
//
// NOTE: control flow was not fully structured (goto kept) -- pseudocode only.
dynamic SOMessages_getUserInfo() {
  dynamic BARRIER;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3b89cc
  // frame: FP = SP // 0x3b89d0
  // frame: SP = SP - 0x18 // 0x3b89d4
  local_m8 = NULL; // 0x3b89d8
  BARRIER = mem(THR, 0x38); // 0x3b89dc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3b8b50
  }
  x0 = mem((PP + 0xe000), 0xd98) /* TypeArguments */; // 0x3b89ec
  sub_0x2b16e4(); // 0x3b89f0
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3b89fc
  x0 = mem((mem(THR, 0x68)), 0x17d8); // 0x3b89f8
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3680) /* Field */; // 0x3b8a08
    sub_0x61d99c(); // 0x3b8a0c
  }
  x1 = x0; // 0x3b8a10
  x2 = "getUserInfo" /* pp+0xeda0 */; // 0x3b8a18
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x3b8a1c
  ChannelNative_call() /* 0x3a8288 */; // 0x3b8a20
  x1 = x0; // 0x3b8a24
  local_m10 = x1; // 0x3b8a28
  sub_0x2b13a0(); // 0x3b8a2c
  x1 = NULL; // 0x3b8a38
  x2 = NULL; // 0x3b8a34
  x3 = x0; // 0x3b8a30
  local_m10 = x3; // 0x3b8a3c
  x4 = 60; // 0x3b8a40
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3b8a4c
  }
  x4 = x4 - 0x5e; // 0x3b8a50
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0xe000), 0xda8) /* Obj!? */; // 0x3b8a64
    x8 = mem(PP, 0xae0) /* Type */; // 0x3b8a5c
    sub_0x278d08(); // 0x3b8a68
  }
  x1 = local_m10; // 0x3b8a6c
  if (w1 == w22) {
    x1 = mem((PP + 0xe000), 0xd98) /* TypeArguments */; // 0x3b8b04
    AllocationStub__Future() /* 0x2abee8 */; // 0x3b8b08
    local_m10 = x0; // 0x3b8b0c
    memSet(x0, 0xb, xzr); // 0x3b8b10
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3b8b1c
    x0 = mem((mem(THR, 0x68)), 0x710); // 0x3b8b18
    if (w0 != w16) {
    } else {
      x2 = mem(PP, 0x128) /* Field */; // 0x3b8b28
      sub_0x61da04(); // 0x3b8b2c
    }
    x1 = local_m10; // 0x3b8b30
    memSet(x1, 0x13, w0); // 0x3b8b34
    AllocationStub_UserInfo() /* 0x3b9118 */; // 0x3b8b38
    x1 = local_m10; // 0x3b8b3c
    x2 = x0; // 0x3b8b40
    Future_asyncComplete() /* 0x27a970 */; // 0x3b8b44
    x0 = local_m10; // 0x3b8b48
  }
  gotoLabel(0x3b8a78);
}

// SOMessages_resetSpecialFaceDot
// raw disassembly:
//  0x43ddf8: stp FP, LR, [SP, #-0x10]!
//  0x43ddfc: mov FP, SP
//  0x43de00: sub SP, SP, #0x18
//  0x43de04: stur NULL, [FP, #-8]
//  0x43de08: ldr BARRIER, [THR, #0x38]
//  0x43de0c: cmp SP, BARRIER
//  0x43de10: b.ls #0x43defc
//  0x43de14: ldr x0, [PP, #0x868]
//  0x43de18: bl #0x2b16e4
//  0x43de1c: ldr x0, [THR, #0x68]
//  0x43de20: ldr x0, [x0, #0x17d8]
//  0x43de24: ldr BARRIER, [PP, #0x40]
//  0x43de28: cmp w0, w16
//  0x43de2c: b.ne #0x43de38
//  0x43de30: ldr x2, [PP, #0x3680]
//  0x43de34: bl #0x61d99c
//  0x43de38: mov x1, x0
//  0x43de3c: add x2, PP, #0xf, lsl #12
//  0x43de40: ldr x2, [x2, #0x588]
//  0x43de44: ldr x4, [PP, #0x278]
//  0x43de48: bl #0x3a8288
//  0x43de4c: mov x1, x0
//  0x43de50: stur x1, [FP, #-0x10]
//  0x43de54: bl #0x2b13a0
//  0x43de58: mov x3, x0
//  0x43de5c: mov x2, NULL
//  0x43de60: mov x1, NULL
//  0x43de64: stur x3, [FP, #-0x10]
//  0x43de68: mov x4, #0x3c
//  0x43de6c: tbz w0, #0, #0x43de78
//  0x43de70: ldur x4, [x0, #-1]
//  0x43de74: ubfx x4, x4, #0xc, #0x14
//  0x43de78: sub x4, x4, #0x5e
//  0x43de7c: cmp x4, #1
//  0x43de80: b.ls #0x43de94
//  0x43de84: ldr x8, [PP, #0xae0]
//  0x43de88: add x3, PP, #0xf, lsl #12
//  0x43de8c: ldr x3, [x3, #0x590]
//  0x43de90: bl #0x278d08
//  0x43de94: ldur x0, [FP, #-0x10]
//  0x43de98: cmp w0, w22
//  0x43de9c: b.ne #0x43dea8
//  0x43dea0: ldr x2, [PP, #0x148]
//  0x43dea4: b #0x43deac
//  0x43dea8: mov x2, x0
//  0x43deac: stur x2, [FP, #-0x10]
//  0x43deb0: ldr x1, [PP, #0x868]
//  0x43deb4: bl #0x2abee8
//  0x43deb8: stur x0, [FP, #-0x18]
//  0x43debc: stur xzr, [x0, #0xb]
//  0x43dec0: ldr x0, [THR, #0x68]
//  0x43dec4: ldr x0, [x0, #0x710]
//  0x43dec8: ldr BARRIER, [PP, #0x40]
//  0x43decc: cmp w0, w16
//  0x43ded0: b.ne #0x43dedc
//  0x43ded4: ldr x2, [PP, #0x128]
//  0x43ded8: bl #0x61da04
//  0x43dedc: mov x1, x0
//  0x43dee0: ldur x0, [FP, #-0x18]
//  0x43dee4: stur w1, [x0, #0x13]
//  0x43dee8: mov x1, x0
//  0x43deec: ldur x2, [FP, #-0x10]
//  0x43def0: bl #0x27a970
//  0x43def4: ldur x0, [FP, #-0x18]
//  0x43def8: b #0x2b19a0
//  0x43defc: bl #0x61fa28
//  0x43df00: b #0x43de14
//
dynamic SOMessages_resetSpecialFaceDot() {
  dynamic BARRIER;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x43ddf8
  // frame: FP = SP // 0x43ddfc
  // frame: SP = SP - 0x18 // 0x43de00
  local_m8 = NULL; // 0x43de04
  BARRIER = mem(THR, 0x38); // 0x43de08
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x43defc
  }
  x0 = mem(PP, 0x868) /* TypeArguments */; // 0x43de14
  sub_0x2b16e4(); // 0x43de18
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x43de24
  x0 = mem((mem(THR, 0x68)), 0x17d8); // 0x43de20
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3680) /* Field */; // 0x43de30
    sub_0x61d99c(); // 0x43de34
  }
  x1 = x0; // 0x43de38
  x2 = "resetSpecialFaceDot" /* pp+0xf588 */; // 0x43de40
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x43de44
  ChannelNative_call() /* 0x3a8288 */; // 0x43de48
  x1 = x0; // 0x43de4c
  local_m10 = x1; // 0x43de50
  sub_0x2b13a0(); // 0x43de54
  x1 = NULL; // 0x43de60
  x2 = NULL; // 0x43de5c
  x3 = x0; // 0x43de58
  local_m10 = x3; // 0x43de64
  x4 = 60; // 0x43de68
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x43de74
  }
  x4 = x4 - 0x5e; // 0x43de78
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0xf000), 0x590) /* Obj!? */; // 0x43de8c
    x8 = mem(PP, 0xae0) /* Type */; // 0x43de84
    sub_0x278d08(); // 0x43de90
  }
  x0 = local_m10; // 0x43de94
  if (w0 != w22) {
    x2 = x0; // 0x43dea8
  } else {
    x2 = "" /* pp+0x148 */; // 0x43dea0
  }
  local_m10 = x2; // 0x43deac
  x1 = mem(PP, 0x868) /* TypeArguments */; // 0x43deb0
  AllocationStub__Future() /* 0x2abee8 */; // 0x43deb4
  local_m18 = x0; // 0x43deb8
  memSet(x0, 0xb, xzr); // 0x43debc
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x43dec8
  x0 = mem((mem(THR, 0x68)), 0x710); // 0x43dec4
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x128) /* Field */; // 0x43ded4
    sub_0x61da04(); // 0x43ded8
  }
  x0 = local_m18; // 0x43dee0
  x1 = x0; // 0x43dedc
  memSet(x0, 0x13, w1); // 0x43dee4
  x1 = x0; // 0x43dee8
  x2 = local_m10; // 0x43deec
  Future_asyncComplete() /* 0x27a970 */; // 0x43def0
  x0 = local_m18; // 0x43def4
}

// SOMessages_getSpecialFaceDot
// raw disassembly:
//  0x4aa1c4: stp FP, LR, [SP, #-0x10]!
//  0x4aa1c8: mov FP, SP
//  0x4aa1cc: sub SP, SP, #0x18
//  0x4aa1d0: stur NULL, [FP, #-8]
//  0x4aa1d4: ldr BARRIER, [THR, #0x38]
//  0x4aa1d8: cmp SP, BARRIER
//  0x4aa1dc: b.ls #0x4aa2c8
//  0x4aa1e0: ldr x0, [PP, #0x868]
//  0x4aa1e4: bl #0x2b16e4
//  0x4aa1e8: ldr x0, [THR, #0x68]
//  0x4aa1ec: ldr x0, [x0, #0x17d8]
//  0x4aa1f0: ldr BARRIER, [PP, #0x40]
//  0x4aa1f4: cmp w0, w16
//  0x4aa1f8: b.ne #0x4aa204
//  0x4aa1fc: ldr x2, [PP, #0x3680]
//  0x4aa200: bl #0x61d99c
//  0x4aa204: mov x1, x0
//  0x4aa208: add x2, PP, #0xf, lsl #12
//  0x4aa20c: ldr x2, [x2, #0x758]
//  0x4aa210: ldr x4, [PP, #0x278]
//  0x4aa214: bl #0x3a8288
//  0x4aa218: mov x1, x0
//  0x4aa21c: stur x1, [FP, #-0x10]
//  0x4aa220: bl #0x2b13a0
//  0x4aa224: mov x3, x0
//  0x4aa228: mov x2, NULL
//  0x4aa22c: mov x1, NULL
//  0x4aa230: stur x3, [FP, #-0x10]
//  0x4aa234: mov x4, #0x3c
//  0x4aa238: tbz w0, #0, #0x4aa244
//  0x4aa23c: ldur x4, [x0, #-1]
//  0x4aa240: ubfx x4, x4, #0xc, #0x14
//  0x4aa244: sub x4, x4, #0x5e
//  0x4aa248: cmp x4, #1
//  0x4aa24c: b.ls #0x4aa260
//  0x4aa250: ldr x8, [PP, #0xae0]
//  0x4aa254: add x3, PP, #0xf, lsl #12
//  0x4aa258: ldr x3, [x3, #0x760]
//  0x4aa25c: bl #0x278d08
//  0x4aa260: ldur x0, [FP, #-0x10]
//  0x4aa264: cmp w0, w22
//  0x4aa268: b.ne #0x4aa274
//  0x4aa26c: ldr x2, [PP, #0x2a50]
//  0x4aa270: b #0x4aa278
//  0x4aa274: mov x2, x0
//  0x4aa278: stur x2, [FP, #-0x10]
//  0x4aa27c: ldr x1, [PP, #0x868]
//  0x4aa280: bl #0x2abee8
//  0x4aa284: stur x0, [FP, #-0x18]
//  0x4aa288: stur xzr, [x0, #0xb]
//  0x4aa28c: ldr x0, [THR, #0x68]
//  0x4aa290: ldr x0, [x0, #0x710]
//  0x4aa294: ldr BARRIER, [PP, #0x40]
//  0x4aa298: cmp w0, w16
//  0x4aa29c: b.ne #0x4aa2a8
//  0x4aa2a0: ldr x2, [PP, #0x128]
//  0x4aa2a4: bl #0x61da04
//  0x4aa2a8: mov x1, x0
//  0x4aa2ac: ldur x0, [FP, #-0x18]
//  0x4aa2b0: stur w1, [x0, #0x13]
//  0x4aa2b4: mov x1, x0
//  0x4aa2b8: ldur x2, [FP, #-0x10]
//  0x4aa2bc: bl #0x27a970
//  0x4aa2c0: ldur x0, [FP, #-0x18]
//  0x4aa2c4: b #0x2b19a0
//  0x4aa2c8: bl #0x61fa28
//  0x4aa2cc: b #0x4aa1e0
//
dynamic SOMessages_getSpecialFaceDot() {
  dynamic BARRIER;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4aa1c4
  // frame: FP = SP // 0x4aa1c8
  // frame: SP = SP - 0x18 // 0x4aa1cc
  local_m8 = NULL; // 0x4aa1d0
  BARRIER = mem(THR, 0x38); // 0x4aa1d4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4aa2c8
  }
  x0 = mem(PP, 0x868) /* TypeArguments */; // 0x4aa1e0
  sub_0x2b16e4(); // 0x4aa1e4
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4aa1f0
  x0 = mem((mem(THR, 0x68)), 0x17d8); // 0x4aa1ec
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3680) /* Field */; // 0x4aa1fc
    sub_0x61d99c(); // 0x4aa200
  }
  x1 = x0; // 0x4aa204
  x2 = "getSpecialFaceDot" /* pp+0xf758 */; // 0x4aa20c
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x4aa210
  ChannelNative_call() /* 0x3a8288 */; // 0x4aa214
  x1 = x0; // 0x4aa218
  local_m10 = x1; // 0x4aa21c
  sub_0x2b13a0(); // 0x4aa220
  x1 = NULL; // 0x4aa22c
  x2 = NULL; // 0x4aa228
  x3 = x0; // 0x4aa224
  local_m10 = x3; // 0x4aa230
  x4 = 60; // 0x4aa234
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4aa240
  }
  x4 = x4 - 0x5e; // 0x4aa244
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0xf000), 0x760) /* Obj!? */; // 0x4aa258
    x8 = mem(PP, 0xae0) /* Type */; // 0x4aa250
    sub_0x278d08(); // 0x4aa25c
  }
  x0 = local_m10; // 0x4aa260
  if (w0 != w22) {
    x2 = x0; // 0x4aa274
  } else {
    x2 = "0" /* pp+0x2a50 */; // 0x4aa26c
  }
  local_m10 = x2; // 0x4aa278
  x1 = mem(PP, 0x868) /* TypeArguments */; // 0x4aa27c
  AllocationStub__Future() /* 0x2abee8 */; // 0x4aa280
  local_m18 = x0; // 0x4aa284
  memSet(x0, 0xb, xzr); // 0x4aa288
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4aa294
  x0 = mem((mem(THR, 0x68)), 0x710); // 0x4aa290
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x128) /* Field */; // 0x4aa2a0
    sub_0x61da04(); // 0x4aa2a4
  }
  x0 = local_m18; // 0x4aa2ac
  x1 = x0; // 0x4aa2a8
  memSet(x0, 0x13, w1); // 0x4aa2b0
  x1 = x0; // 0x4aa2b4
  x2 = local_m10; // 0x4aa2b8
  Future_asyncComplete() /* 0x27a970 */; // 0x4aa2bc
  x0 = local_m18; // 0x4aa2c0
}

// SOMessages_init
// raw disassembly:
//  0x627bb8: stp FP, LR, [SP, #-0x10]!
//  0x627bbc: mov FP, SP
//  0x627bc0: sub SP, SP, #0x30
//  0x627bc4: stur NULL, [FP, #-8]
//  0x627bc8: ldr BARRIER, [THR, #0x38]
//  0x627bcc: cmp SP, BARRIER
//  0x627bd0: b.ls #0x627cf4
//  0x627bd4: ldr x0, [PP, #0x35f8]
//  0x627bd8: bl #0x2b16e4
//  0x627bdc: bl #0x627e0c
//  0x627be0: stur x0, [FP, #-0x10]
//  0x627be4: bl #0x627d08
//  0x627be8: mov x1, NULL
//  0x627bec: mov x2, #4
//  0x627bf0: stur x0, [FP, #-0x18]
//  0x627bf4: bl #0x61f920
//  0x627bf8: mov x2, x0
//  0x627bfc: ldur x0, [FP, #-0x10]
//  0x627c00: stur x2, [FP, #-0x20]
//  0x627c04: stur w0, [x2, #0xf]
//  0x627c08: ldur x0, [FP, #-0x18]
//  0x627c0c: stur w0, [x2, #0x13]
//  0x627c10: ldr x1, [PP, #0x3600]
//  0x627c14: bl #0x61e854
//  0x627c18: mov x1, x0
//  0x627c1c: ldur x0, [FP, #-0x20]
//  0x627c20: stur w0, [x1, #0xf]
//  0x627c24: mov x0, #4
//  0x627c28: stur w0, [x1, #0xb]
//  0x627c2c: ldr BARRIER, [PP, #0x868]
//  0x627c30: stp x1, BARRIER, [SP]
//  0x627c34: ldr x4, [PP, #0x910]
//  0x627c38: bl #0x337318
//  0x627c3c: mov x1, x0
//  0x627c40: stur x1, [FP, #-0x10]
//  0x627c44: bl #0x2b13a0
//  0x627c48: mov x1, x0
//  0x627c4c: stur x1, [FP, #-0x10]
//  0x627c50: ldur x0, [x1, #-1]
//  0x627c54: ubfx x0, x0, #0xc, #0x14
//  0x627c58: stp xzr, x1, [SP]
//  0x627c5c: sub LR, x0, #1, lsl #12
//  0x627c60: ldr LR, [x21, LR, lsl #3]
//  0x627c64: blr LR
//  0x627c68: mov x1, x0
//  0x627c6c: ldur x0, [FP, #-0x10]
//  0x627c70: stur x1, [FP, #-0x18]
//  0x627c74: ldur x2, [x0, #-1]
//  0x627c78: ubfx x2, x2, #0xc, #0x14
//  0x627c7c: mov BARRIER, #2
//  0x627c80: stp BARRIER, x0, [SP]
//  0x627c84: mov x0, x2
//  0x627c88: sub LR, x0, #1, lsl #12
//  0x627c8c: ldr LR, [x21, LR, lsl #3]
//  0x627c90: blr LR
//  0x627c94: stur x0, [FP, #-0x10]
//  0x627c98: bl #0x627cfc
//  0x627c9c: mov x1, x0
//  0x627ca0: ldur x0, [FP, #-0x18]
//  0x627ca4: stur x1, [FP, #-0x20]
//  0x627ca8: stur w0, [x1, #0x2b]
//  0x627cac: ldur x0, [FP, #-0x10]
//  0x627cb0: stur w0, [x1, #0x2f]
//  0x627cb4: mov x0, #-1
//  0x627cb8: stur x0, [x1, #0x23]
//  0x627cbc: stur xzr, [x1, #7]
//  0x627cc0: stur xzr, [x1, #0x13]
//  0x627cc4: stur xzr, [x1, #0x1b]
//  0x627cc8: ldr x0, [THR, #0x68]
//  0x627ccc: ldr x0, [x0, #0xb90]
//  0x627cd0: ldr BARRIER, [PP, #0x40]
//  0x627cd4: cmp w0, w16
//  0x627cd8: b.ne #0x627ce4
//  0x627cdc: ldr x2, [PP, #0x3608]
//  0x627ce0: bl #0x61d99c
//  0x627ce4: mov x1, x0
//  0x627ce8: ldur x0, [FP, #-0x20]
//  0x627cec: stur w1, [x0, #0xf]
//  0x627cf0: b #0x2b16b8
//  0x627cf4: bl #0x61fa28
//  0x627cf8: b #0x627bd4
//
dynamic SOMessages_init() {
  dynamic BARRIER;
  dynamic LR;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x627bb8
  // frame: FP = SP // 0x627bbc
  // frame: SP = SP - 0x30 // 0x627bc0
  local_m8 = NULL; // 0x627bc4
  BARRIER = mem(THR, 0x38); // 0x627bc8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x627cf4
  }
  x0 = mem(PP, 0x35f8) /* TypeArguments */; // 0x627bd4
  sub_0x2b16e4(); // 0x627bd8
  SOMessages_getLanguage() /* 0x627e0c */; // 0x627bdc
  local_m10 = x0; // 0x627be0
  SOMessages_getAppTheme() /* 0x627d08 */; // 0x627be4
  x1 = NULL; // 0x627be8
  x2 = 4; // 0x627bec
  local_m18 = x0; // 0x627bf0
  sub_0x61f920(); // 0x627bf4
  x0 = local_m10; // 0x627bfc
  x2 = x0; // 0x627bf8
  local_m20 = x2; // 0x627c00
  memSet(x2, 0xf, w0); // 0x627c04
  x0 = local_m18; // 0x627c08
  memSet(x2, 0x13, w0); // 0x627c0c
  x1 = mem(PP, 0x3600) /* TypeArguments */; // 0x627c10
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x627c14
  x0 = local_m20; // 0x627c1c
  x1 = x0; // 0x627c18
  memSet(x1, 0xf, w0); // 0x627c20
  x0 = 4; // 0x627c24
  memSet(x1, 0xb, w0); // 0x627c28
  BARRIER = mem(PP, 0x868) /* TypeArguments */; // 0x627c2c
  // frame: x1, BARRIER, mem(SP) // 0x627c30
  x4 = mem(PP, 0x910) /* ImmutableArray */; // 0x627c34
  Future_wait() /* 0x337318 */; // 0x627c38
  x1 = x0; // 0x627c3c
  local_m10 = x1; // 0x627c40
  sub_0x2b13a0(); // 0x627c44
  x1 = x0; // 0x627c48
  local_m10 = x1; // 0x627c4c
  x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x627c54
  // frame: xzr, x1, mem(SP) // 0x627c58
  LR = mem(x21, ((x0 - 0x1000) << 3)); // 0x627c60
  callIndirect(LR); // 0x627c64
  x0 = local_m10; // 0x627c6c
  x1 = x0; // 0x627c68
  local_m18 = x1; // 0x627c70
  BARRIER = 2; // 0x627c7c
  x2 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x627c78
  // frame: BARRIER, x0, mem(SP) // 0x627c80
  LR = mem(x21, ((x0 - 0x1000) << 3)); // 0x627c8c
  x0 = x2; // 0x627c84
  callIndirect(LR); // 0x627c90
  local_m10 = x0; // 0x627c94
  AllocationStub_AppChangeNotifier() /* 0x627cfc */; // 0x627c98
  x0 = local_m18; // 0x627ca0
  x1 = x0; // 0x627c9c
  local_m20 = x1; // 0x627ca4
  memSet(x1, 0x2b, w0); // 0x627ca8
  x0 = local_m10; // 0x627cac
  memSet(x1, 0x2f, w0); // 0x627cb0
  x0 = -1; // 0x627cb4
  memSet(x1, 0x23, x0); // 0x627cb8
  memSet(x1, 7, xzr); // 0x627cbc
  memSet(x1, 0x13, xzr); // 0x627cc0
  memSet(x1, 0x1b, xzr); // 0x627cc4
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x627cd0
  x0 = mem((mem(THR, 0x68)), 0xb90); // 0x627ccc
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3608) /* Field */; // 0x627cdc
    sub_0x61d99c(); // 0x627ce0
  }
  x0 = local_m20; // 0x627ce8
  x1 = x0; // 0x627ce4
  memSet(x0, 0xf, w1); // 0x627cec
}

// SOMessages_getAppTheme
// raw disassembly:
//  0x627d08: stp FP, LR, [SP, #-0x10]!
//  0x627d0c: mov FP, SP
//  0x627d10: sub SP, SP, #0x18
//  0x627d14: stur NULL, [FP, #-8]
//  0x627d18: ldr BARRIER, [THR, #0x38]
//  0x627d1c: cmp SP, BARRIER
//  0x627d20: b.ls #0x627e04
//  0x627d24: ldr x0, [PP, #0x868]
//  0x627d28: bl #0x2b16e4
//  0x627d2c: ldr x0, [THR, #0x68]
//  0x627d30: ldr x0, [x0, #0x17d8]
//  0x627d34: ldr BARRIER, [PP, #0x40]
//  0x627d38: cmp w0, w16
//  0x627d3c: b.ne #0x627d48
//  0x627d40: ldr x2, [PP, #0x3680]
//  0x627d44: bl #0x61d99c
//  0x627d48: mov x1, x0
//  0x627d4c: ldr x2, [PP, #0x3688]
//  0x627d50: ldr x4, [PP, #0x278]
//  0x627d54: bl #0x3a8288
//  0x627d58: mov x1, x0
//  0x627d5c: stur x1, [FP, #-0x10]
//  0x627d60: bl #0x2b13a0
//  0x627d64: mov x3, x0
//  0x627d68: mov x2, NULL
//  0x627d6c: mov x1, NULL
//  0x627d70: stur x3, [FP, #-0x10]
//  0x627d74: mov x4, #0x3c
//  0x627d78: tbz w0, #0, #0x627d84
//  0x627d7c: ldur x4, [x0, #-1]
//  0x627d80: ubfx x4, x4, #0xc, #0x14
//  0x627d84: sub x4, x4, #0x5e
//  0x627d88: cmp x4, #1
//  0x627d8c: b.ls #0x627d9c
//  0x627d90: ldr x8, [PP, #0xae0]
//  0x627d94: ldr x3, [PP, #0x3690]
//  0x627d98: bl #0x278d08
//  0x627d9c: ldur x0, [FP, #-0x10]
//  0x627da0: cmp w0, w22
//  0x627da4: b.ne #0x627db0
//  0x627da8: ldr x2, [PP, #0x148]
//  0x627dac: b #0x627db4
//  0x627db0: mov x2, x0
//  0x627db4: stur x2, [FP, #-0x10]
//  0x627db8: ldr x1, [PP, #0x868]
//  0x627dbc: bl #0x2abee8
//  0x627dc0: stur x0, [FP, #-0x18]
//  0x627dc4: stur xzr, [x0, #0xb]
//  0x627dc8: ldr x0, [THR, #0x68]
//  0x627dcc: ldr x0, [x0, #0x710]
//  0x627dd0: ldr BARRIER, [PP, #0x40]
//  0x627dd4: cmp w0, w16
//  0x627dd8: b.ne #0x627de4
//  0x627ddc: ldr x2, [PP, #0x128]
//  0x627de0: bl #0x61da04
//  0x627de4: mov x1, x0
//  0x627de8: ldur x0, [FP, #-0x18]
//  0x627dec: stur w1, [x0, #0x13]
//  0x627df0: mov x1, x0
//  0x627df4: ldur x2, [FP, #-0x10]
//  0x627df8: bl #0x27a970
//  0x627dfc: ldur x0, [FP, #-0x18]
//  0x627e00: b #0x2b19a0
//  0x627e04: bl #0x61fa28
//  0x627e08: b #0x627d24
//
dynamic SOMessages_getAppTheme() {
  dynamic BARRIER;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x627d08
  // frame: FP = SP // 0x627d0c
  // frame: SP = SP - 0x18 // 0x627d10
  local_m8 = NULL; // 0x627d14
  BARRIER = mem(THR, 0x38); // 0x627d18
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x627e04
  }
  x0 = mem(PP, 0x868) /* TypeArguments */; // 0x627d24
  sub_0x2b16e4(); // 0x627d28
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x627d34
  x0 = mem((mem(THR, 0x68)), 0x17d8); // 0x627d30
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3680) /* Field */; // 0x627d40
    sub_0x61d99c(); // 0x627d44
  }
  x1 = x0; // 0x627d48
  x2 = "getAppTheme" /* pp+0x3688 */; // 0x627d4c
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x627d50
  ChannelNative_call() /* 0x3a8288 */; // 0x627d54
  x1 = x0; // 0x627d58
  local_m10 = x1; // 0x627d5c
  sub_0x2b13a0(); // 0x627d60
  x1 = NULL; // 0x627d6c
  x2 = NULL; // 0x627d68
  x3 = x0; // 0x627d64
  local_m10 = x3; // 0x627d70
  x4 = 60; // 0x627d74
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x627d80
  }
  x4 = x4 - 0x5e; // 0x627d84
  if (x4 <= 1) {
  } else {
    x3 = mem(PP, 0x3690) /* Obj!? */; // 0x627d94
    x8 = mem(PP, 0xae0) /* Type */; // 0x627d90
    sub_0x278d08(); // 0x627d98
  }
  x0 = local_m10; // 0x627d9c
  if (w0 != w22) {
    x2 = x0; // 0x627db0
  } else {
    x2 = "" /* pp+0x148 */; // 0x627da8
  }
  local_m10 = x2; // 0x627db4
  x1 = mem(PP, 0x868) /* TypeArguments */; // 0x627db8
  AllocationStub__Future() /* 0x2abee8 */; // 0x627dbc
  local_m18 = x0; // 0x627dc0
  memSet(x0, 0xb, xzr); // 0x627dc4
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x627dd0
  x0 = mem((mem(THR, 0x68)), 0x710); // 0x627dcc
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x128) /* Field */; // 0x627ddc
    sub_0x61da04(); // 0x627de0
  }
  x0 = local_m18; // 0x627de8
  x1 = x0; // 0x627de4
  memSet(x0, 0x13, w1); // 0x627dec
  x1 = x0; // 0x627df0
  x2 = local_m10; // 0x627df4
  Future_asyncComplete() /* 0x27a970 */; // 0x627df8
  x0 = local_m18; // 0x627dfc
}

// SOMessages_getLanguage
// raw disassembly:
//  0x627e0c: stp FP, LR, [SP, #-0x10]!
//  0x627e10: mov FP, SP
//  0x627e14: sub SP, SP, #0x18
//  0x627e18: stur NULL, [FP, #-8]
//  0x627e1c: ldr BARRIER, [THR, #0x38]
//  0x627e20: cmp SP, BARRIER
//  0x627e24: b.ls #0x627f08
//  0x627e28: ldr x0, [PP, #0x868]
//  0x627e2c: bl #0x2b16e4
//  0x627e30: ldr x0, [THR, #0x68]
//  0x627e34: ldr x0, [x0, #0x17d8]
//  0x627e38: ldr BARRIER, [PP, #0x40]
//  0x627e3c: cmp w0, w16
//  0x627e40: b.ne #0x627e4c
//  0x627e44: ldr x2, [PP, #0x3680]
//  0x627e48: bl #0x61d99c
//  0x627e4c: mov x1, x0
//  0x627e50: ldr x2, [PP, #0x36a8]
//  0x627e54: ldr x4, [PP, #0x278]
//  0x627e58: bl #0x3a8288
//  0x627e5c: mov x1, x0
//  0x627e60: stur x1, [FP, #-0x10]
//  0x627e64: bl #0x2b13a0
//  0x627e68: mov x3, x0
//  0x627e6c: mov x2, NULL
//  0x627e70: mov x1, NULL
//  0x627e74: stur x3, [FP, #-0x10]
//  0x627e78: mov x4, #0x3c
//  0x627e7c: tbz w0, #0, #0x627e88
//  0x627e80: ldur x4, [x0, #-1]
//  0x627e84: ubfx x4, x4, #0xc, #0x14
//  0x627e88: sub x4, x4, #0x5e
//  0x627e8c: cmp x4, #1
//  0x627e90: b.ls #0x627ea0
//  0x627e94: ldr x8, [PP, #0xae0]
//  0x627e98: ldr x3, [PP, #0x36b0]
//  0x627e9c: bl #0x278d08
//  0x627ea0: ldur x0, [FP, #-0x10]
//  0x627ea4: cmp w0, w22
//  0x627ea8: b.ne #0x627eb4
//  0x627eac: ldr x2, [PP, #0x148]
//  0x627eb0: b #0x627eb8
//  0x627eb4: mov x2, x0
//  0x627eb8: stur x2, [FP, #-0x10]
//  0x627ebc: ldr x1, [PP, #0x868]
//  0x627ec0: bl #0x2abee8
//  0x627ec4: stur x0, [FP, #-0x18]
//  0x627ec8: stur xzr, [x0, #0xb]
//  0x627ecc: ldr x0, [THR, #0x68]
//  0x627ed0: ldr x0, [x0, #0x710]
//  0x627ed4: ldr BARRIER, [PP, #0x40]
//  0x627ed8: cmp w0, w16
//  0x627edc: b.ne #0x627ee8
//  0x627ee0: ldr x2, [PP, #0x128]
//  0x627ee4: bl #0x61da04
//  0x627ee8: mov x1, x0
//  0x627eec: ldur x0, [FP, #-0x18]
//  0x627ef0: stur w1, [x0, #0x13]
//  0x627ef4: mov x1, x0
//  0x627ef8: ldur x2, [FP, #-0x10]
//  0x627efc: bl #0x27a970
//  0x627f00: ldur x0, [FP, #-0x18]
//  0x627f04: b #0x2b19a0
//  0x627f08: bl #0x61fa28
//  0x627f0c: b #0x627e28
//
dynamic SOMessages_getLanguage() {
  dynamic BARRIER;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x627e0c
  // frame: FP = SP // 0x627e10
  // frame: SP = SP - 0x18 // 0x627e14
  local_m8 = NULL; // 0x627e18
  BARRIER = mem(THR, 0x38); // 0x627e1c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x627f08
  }
  x0 = mem(PP, 0x868) /* TypeArguments */; // 0x627e28
  sub_0x2b16e4(); // 0x627e2c
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x627e38
  x0 = mem((mem(THR, 0x68)), 0x17d8); // 0x627e34
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3680) /* Field */; // 0x627e44
    sub_0x61d99c(); // 0x627e48
  }
  x1 = x0; // 0x627e4c
  x2 = "getLanguage" /* pp+0x36a8 */; // 0x627e50
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x627e54
  ChannelNative_call() /* 0x3a8288 */; // 0x627e58
  x1 = x0; // 0x627e5c
  local_m10 = x1; // 0x627e60
  sub_0x2b13a0(); // 0x627e64
  x1 = NULL; // 0x627e70
  x2 = NULL; // 0x627e6c
  x3 = x0; // 0x627e68
  local_m10 = x3; // 0x627e74
  x4 = 60; // 0x627e78
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x627e84
  }
  x4 = x4 - 0x5e; // 0x627e88
  if (x4 <= 1) {
  } else {
    x3 = mem(PP, 0x36b0) /* Obj!? */; // 0x627e98
    x8 = mem(PP, 0xae0) /* Type */; // 0x627e94
    sub_0x278d08(); // 0x627e9c
  }
  x0 = local_m10; // 0x627ea0
  if (w0 != w22) {
    x2 = x0; // 0x627eb4
  } else {
    x2 = "" /* pp+0x148 */; // 0x627eac
  }
  local_m10 = x2; // 0x627eb8
  x1 = mem(PP, 0x868) /* TypeArguments */; // 0x627ebc
  AllocationStub__Future() /* 0x2abee8 */; // 0x627ec0
  local_m18 = x0; // 0x627ec4
  memSet(x0, 0xb, xzr); // 0x627ec8
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x627ed4
  x0 = mem((mem(THR, 0x68)), 0x710); // 0x627ed0
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x128) /* Field */; // 0x627ee0
    sub_0x61da04(); // 0x627ee4
  }
  x0 = local_m18; // 0x627eec
  x1 = x0; // 0x627ee8
  memSet(x0, 0x13, w1); // 0x627ef0
  x1 = x0; // 0x627ef4
  x2 = local_m10; // 0x627ef8
  Future_asyncComplete() /* 0x27a970 */; // 0x627efc
  x0 = local_m18; // 0x627f00
}

// UserInfo_ctor_fromJson
// raw disassembly:
//  0x3b8b58: stp FP, LR, [SP, #-0x10]!
//  0x3b8b5c: mov FP, SP
//  0x3b8b60: sub SP, SP, #0x18
//  0x3b8b64: mov x3, x1
//  0x3b8b68: mov x0, x2
//  0x3b8b6c: stur x1, [FP, #-8]
//  0x3b8b70: stur x2, [FP, #-0x10]
//  0x3b8b74: ldr BARRIER, [THR, #0x38]
//  0x3b8b78: cmp SP, BARRIER
//  0x3b8b7c: b.ls #0x3b8f40
//  0x3b8b80: mov x1, x0
//  0x3b8b84: add x2, PP, #0xb, lsl #12
//  0x3b8b88: ldr x2, [x2, #0x6e8]
//  0x3b8b8c: bl #0x61c9d0
//  0x3b8b90: ldur x3, [FP, #-0x10]
//  0x3b8b94: ldur w1, [x3, #0xf]
//  0x3b8b98: add x1, x1, HEAP, lsl #32
//  0x3b8b9c: cmp w1, w0
//  0x3b8ba0: b.ne #0x3b8ba8
//  0x3b8ba4: mov x0, NULL
//  0x3b8ba8: cmp w0, w22
//  0x3b8bac: b.ne #0x3b8bb8
//  0x3b8bb0: ldr x5, [PP, #0x148]
//  0x3b8bb4: b #0x3b8bbc
//  0x3b8bb8: mov x5, x0
//  0x3b8bbc: ldur x4, [FP, #-8]
//  0x3b8bc0: mov x0, x5
//  0x3b8bc4: stur x5, [FP, #-0x18]
//  0x3b8bc8: mov x2, NULL
//  0x3b8bcc: mov x1, NULL
//  0x3b8bd0: mov x4, #0x3c
//  0x3b8bd4: tbz w0, #0, #0x3b8be0
//  0x3b8bd8: ldur x4, [x0, #-1]
//  0x3b8bdc: ubfx x4, x4, #0xc, #0x14
//  0x3b8be0: sub x4, x4, #0x5e
//  0x3b8be4: cmp x4, #1
//  0x3b8be8: b.ls #0x3b8bfc
//  0x3b8bec: ldr x8, [PP, #0xae0]
//  0x3b8bf0: add x3, PP, #0xb, lsl #12
//  0x3b8bf4: ldr x3, [x3, #0x6f0]
//  0x3b8bf8: bl #0x278d08
//  0x3b8bfc: ldur x0, [FP, #-0x18]
//  0x3b8c00: ldur x3, [FP, #-8]
//  0x3b8c04: stur w0, [x3, #7]
//  0x3b8c08: ldurb w16, [x3, #-1]
//  0x3b8c0c: ldurb w17, [x0, #-1]
//  0x3b8c10: and BARRIER, x17, BARRIER, lsr #2
//  0x3b8c14: tst BARRIER, HEAP, lsr #32
//  0x3b8c18: b.eq #0x3b8c20
//  0x3b8c1c: bl #0x61e08c
//  0x3b8c20: ldur x1, [FP, #-0x10]
//  0x3b8c24: add x2, PP, #0xb, lsl #12
//  0x3b8c28: ldr x2, [x2, #0x700]
//  0x3b8c2c: bl #0x61c9d0
//  0x3b8c30: ldur x3, [FP, #-0x10]
//  0x3b8c34: ldur w1, [x3, #0xf]
//  0x3b8c38: add x1, x1, HEAP, lsl #32
//  0x3b8c3c: cmp w1, w0
//  0x3b8c40: b.ne #0x3b8c48
//  0x3b8c44: mov x0, NULL
//  0x3b8c48: cmp w0, w22
//  0x3b8c4c: b.ne #0x3b8c58
//  0x3b8c50: ldr x5, [PP, #0x148]
//  0x3b8c54: b #0x3b8c5c
//  0x3b8c58: mov x5, x0
//  0x3b8c5c: ldur x4, [FP, #-8]
//  0x3b8c60: mov x0, x5
//  0x3b8c64: stur x5, [FP, #-0x18]
//  0x3b8c68: mov x2, NULL
//  0x3b8c6c: mov x1, NULL
//  0x3b8c70: mov x4, #0x3c
//  0x3b8c74: tbz w0, #0, #0x3b8c80
//  0x3b8c78: ldur x4, [x0, #-1]
//  0x3b8c7c: ubfx x4, x4, #0xc, #0x14
//  0x3b8c80: sub x4, x4, #0x5e
//  0x3b8c84: cmp x4, #1
//  0x3b8c88: b.ls #0x3b8c9c
//  0x3b8c8c: ldr x8, [PP, #0xae0]
//  0x3b8c90: add x3, PP, #0xb, lsl #12
//  0x3b8c94: ldr x3, [x3, #0x708]
//  0x3b8c98: bl #0x278d08
//  0x3b8c9c: ldur x0, [FP, #-0x18]
//  0x3b8ca0: ldur x3, [FP, #-8]
//  0x3b8ca4: stur w0, [x3, #0xb]
//  0x3b8ca8: ldurb w16, [x3, #-1]
//  0x3b8cac: ldurb w17, [x0, #-1]
//  0x3b8cb0: and BARRIER, x17, BARRIER, lsr #2
//  0x3b8cb4: tst BARRIER, HEAP, lsr #32
//  0x3b8cb8: b.eq #0x3b8cc0
//  0x3b8cbc: bl #0x61e08c
//  0x3b8cc0: ldur x1, [FP, #-0x10]
//  0x3b8cc4: add x2, PP, #0xb, lsl #12
//  0x3b8cc8: ldr x2, [x2, #0x718]
//  0x3b8ccc: bl #0x61c9d0
//  0x3b8cd0: ldur x3, [FP, #-0x10]
//  0x3b8cd4: ldur w1, [x3, #0xf]
//  0x3b8cd8: add x1, x1, HEAP, lsl #32
//  0x3b8cdc: cmp w1, w0
//  0x3b8ce0: b.ne #0x3b8ce8
//  0x3b8ce4: mov x0, NULL
//  0x3b8ce8: cmp w0, w22
//  0x3b8cec: b.ne #0x3b8cf8
//  0x3b8cf0: ldr x5, [PP, #0x148]
//  0x3b8cf4: b #0x3b8cfc
//  0x3b8cf8: mov x5, x0
//  0x3b8cfc: ldur x4, [FP, #-8]
//  0x3b8d00: mov x0, x5
//  0x3b8d04: stur x5, [FP, #-0x18]
//  0x3b8d08: mov x2, NULL
//  0x3b8d0c: mov x1, NULL
//  0x3b8d10: mov x4, #0x3c
//  0x3b8d14: tbz w0, #0, #0x3b8d20
//  0x3b8d18: ldur x4, [x0, #-1]
//  0x3b8d1c: ubfx x4, x4, #0xc, #0x14
//  0x3b8d20: sub x4, x4, #0x5e
//  0x3b8d24: cmp x4, #1
//  0x3b8d28: b.ls #0x3b8d3c
//  0x3b8d2c: ldr x8, [PP, #0xae0]
//  0x3b8d30: add x3, PP, #0xb, lsl #12
//  0x3b8d34: ldr x3, [x3, #0x720]
//  0x3b8d38: bl #0x278d08
//  0x3b8d3c: ldur x0, [FP, #-0x18]
//  0x3b8d40: ldur x3, [FP, #-8]
//  0x3b8d44: stur w0, [x3, #0xf]
//  0x3b8d48: ldurb w16, [x3, #-1]
//  0x3b8d4c: ldurb w17, [x0, #-1]
//  0x3b8d50: and BARRIER, x17, BARRIER, lsr #2
//  0x3b8d54: tst BARRIER, HEAP, lsr #32
//  0x3b8d58: b.eq #0x3b8d60
//  0x3b8d5c: bl #0x61e08c
//  0x3b8d60: ldur x1, [FP, #-0x10]
//  0x3b8d64: add x2, PP, #0xb, lsl #12
//  0x3b8d68: ldr x2, [x2, #0x730]
//  0x3b8d6c: bl #0x61c9d0
//  0x3b8d70: ldur x3, [FP, #-0x10]
//  0x3b8d74: ldur w1, [x3, #0xf]
//  0x3b8d78: add x1, x1, HEAP, lsl #32
//  0x3b8d7c: cmp w1, w0
//  0x3b8d80: b.ne #0x3b8d88
//  0x3b8d84: mov x0, NULL
//  0x3b8d88: cmp w0, w22
//  0x3b8d8c: b.ne #0x3b8d98
//  0x3b8d90: ldr x5, [PP, #0x148]
//  0x3b8d94: b #0x3b8d9c
//  0x3b8d98: mov x5, x0
//  0x3b8d9c: ldur x4, [FP, #-8]
//  0x3b8da0: mov x0, x5
//  0x3b8da4: stur x5, [FP, #-0x18]
//  0x3b8da8: mov x2, NULL
//  0x3b8dac: mov x1, NULL
//  0x3b8db0: mov x4, #0x3c
//  0x3b8db4: tbz w0, #0, #0x3b8dc0
//  0x3b8db8: ldur x4, [x0, #-1]
//  0x3b8dbc: ubfx x4, x4, #0xc, #0x14
//  0x3b8dc0: sub x4, x4, #0x5e
//  0x3b8dc4: cmp x4, #1
//  0x3b8dc8: b.ls #0x3b8ddc
//  0x3b8dcc: ldr x8, [PP, #0xae0]
//  0x3b8dd0: add x3, PP, #0xb, lsl #12
//  0x3b8dd4: ldr x3, [x3, #0x738]
//  0x3b8dd8: bl #0x278d08
//  0x3b8ddc: ldur x0, [FP, #-0x18]
//  0x3b8de0: ldur x3, [FP, #-8]
//  0x3b8de4: stur w0, [x3, #0x13]
//  0x3b8de8: ldurb w16, [x3, #-1]
//  0x3b8dec: ldurb w17, [x0, #-1]
//  0x3b8df0: and BARRIER, x17, BARRIER, lsr #2
//  0x3b8df4: tst BARRIER, HEAP, lsr #32
//  0x3b8df8: b.eq #0x3b8e00
//  0x3b8dfc: bl #0x61e08c
//  0x3b8e00: ldur x1, [FP, #-0x10]
//  0x3b8e04: add x2, PP, #0xb, lsl #12
//  0x3b8e08: ldr x2, [x2, #0x748]
//  0x3b8e0c: bl #0x61c9d0
//  0x3b8e10: ldur x3, [FP, #-0x10]
//  0x3b8e14: ldur w1, [x3, #0xf]
//  0x3b8e18: add x1, x1, HEAP, lsl #32
//  0x3b8e1c: cmp w1, w0
//  0x3b8e20: b.ne #0x3b8e28
//  0x3b8e24: mov x0, NULL
//  0x3b8e28: cmp w0, w22
//  0x3b8e2c: b.ne #0x3b8e38
//  0x3b8e30: ldr x5, [PP, #0x148]
//  0x3b8e34: b #0x3b8e3c
//  0x3b8e38: mov x5, x0
//  0x3b8e3c: ldur x4, [FP, #-8]
//  0x3b8e40: mov x0, x5
//  0x3b8e44: stur x5, [FP, #-0x18]
//  0x3b8e48: mov x2, NULL
//  0x3b8e4c: mov x1, NULL
//  0x3b8e50: mov x4, #0x3c
//  0x3b8e54: tbz w0, #0, #0x3b8e60
//  0x3b8e58: ldur x4, [x0, #-1]
//  0x3b8e5c: ubfx x4, x4, #0xc, #0x14
//  0x3b8e60: sub x4, x4, #0x5e
//  0x3b8e64: cmp x4, #1
//  0x3b8e68: b.ls #0x3b8e7c
//  0x3b8e6c: ldr x8, [PP, #0xae0]
//  0x3b8e70: add x3, PP, #0xb, lsl #12
//  0x3b8e74: ldr x3, [x3, #0x750]
//  0x3b8e78: bl #0x278d08
//  0x3b8e7c: ldur x0, [FP, #-0x18]
//  0x3b8e80: ldur x3, [FP, #-8]
//  0x3b8e84: stur w0, [x3, #0x17]
//  0x3b8e88: ldurb w16, [x3, #-1]
//  0x3b8e8c: ldurb w17, [x0, #-1]
//  0x3b8e90: and BARRIER, x17, BARRIER, lsr #2
//  0x3b8e94: tst BARRIER, HEAP, lsr #32
//  0x3b8e98: b.eq #0x3b8ea0
//  0x3b8e9c: bl #0x61e08c
//  0x3b8ea0: ldur x1, [FP, #-0x10]
//  0x3b8ea4: add x2, PP, #0xb, lsl #12
//  0x3b8ea8: ldr x2, [x2, #0x760]
//  0x3b8eac: bl #0x61c9d0
//  0x3b8eb0: mov x1, x0
//  0x3b8eb4: ldur x0, [FP, #-0x10]
//  0x3b8eb8: ldur w2, [x0, #0xf]
//  0x3b8ebc: add x2, x2, HEAP, lsl #32
//  0x3b8ec0: cmp w2, w1
//  0x3b8ec4: b.ne #0x3b8ed0
//  0x3b8ec8: mov x0, NULL
//  0x3b8ecc: b #0x3b8ed4
//  0x3b8ed0: mov x0, x1
//  0x3b8ed4: cmp w0, w22
//  0x3b8ed8: b.ne #0x3b8ee4
//  0x3b8edc: add x4, NULL, #0x20
//  0x3b8ee0: b #0x3b8ee8
//  0x3b8ee4: mov x4, x0
//  0x3b8ee8: ldur x3, [FP, #-8]
//  0x3b8eec: mov x0, x4
//  0x3b8ef0: stur x4, [FP, #-0x10]
//  0x3b8ef4: mov x2, NULL
//  0x3b8ef8: mov x1, NULL
//  0x3b8efc: mov x4, #0x3c
//  0x3b8f00: tbz w0, #0, #0x3b8f0c
//  0x3b8f04: ldur x4, [x0, #-1]
//  0x3b8f08: ubfx x4, x4, #0xc, #0x14
//  0x3b8f0c: cmp x4, #0x3f
//  0x3b8f10: b.eq #0x3b8f24
//  0x3b8f14: ldr x8, [PP, #0xa78]
//  0x3b8f18: add x3, PP, #0xb, lsl #12
//  0x3b8f1c: ldr x3, [x3, #0x768]
//  0x3b8f20: bl #0x61d6cc
//  0x3b8f24: ldur x1, [FP, #-8]
//  0x3b8f28: ldur x2, [FP, #-0x10]
//  0x3b8f2c: stur w2, [x1, #0x1b]
//  0x3b8f30: mov x0, NULL
//  0x3b8f34: mov SP, FP
//  0x3b8f38: ldp FP, LR, [SP], #0x10
//  0x3b8f3c: ret 
//  0x3b8f40: bl #0x61fa28
//  0x3b8f44: b #0x3b8b80
//
dynamic UserInfo_ctor_fromJson() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
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
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3b8b58
  // frame: FP = SP // 0x3b8b5c
  // frame: SP = SP - 0x18 // 0x3b8b60
  x0 = x2; // 0x3b8b68
  x3 = x1; // 0x3b8b64
  local_m8 = x1; // 0x3b8b6c
  local_m10 = x2; // 0x3b8b70
  BARRIER = mem(THR, 0x38); // 0x3b8b74
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3b8f40
  }
  x1 = x0; // 0x3b8b80
  x2 = "userId" /* pp+0xb6e8 */; // 0x3b8b88
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData() /* 0x61c9d0 */; // 0x3b8b8c
  w1 = mem((local_m10), 0xf); // 0x3b8b94
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3b8b98
  x3 = local_m10; // 0x3b8b90
  if (w1 != w0) {
  } else {
    x0 = NULL; // 0x3b8ba4
  }
  if (w0 != w22) {
    x5 = x0; // 0x3b8bb8
  } else {
    x5 = "" /* pp+0x148 */; // 0x3b8bb0
  }
  x0 = x5; // 0x3b8bc0
  x4 = local_m8; // 0x3b8bbc
  local_m18 = x5; // 0x3b8bc4
  x1 = NULL; // 0x3b8bcc
  x2 = NULL; // 0x3b8bc8
  x4 = 60; // 0x3b8bd0
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3b8bdc
  }
  x4 = x4 - 0x5e; // 0x3b8be0
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0xb000), 0x6f0) /* Obj!? */; // 0x3b8bf4
    x8 = mem(PP, 0xae0) /* Type */; // 0x3b8bec
    sub_0x278d08(); // 0x3b8bf8
  }
  x0 = local_m18; // 0x3b8bfc
  x3 = local_m8; // 0x3b8c00
  memSet(x3, 7, w0); // 0x3b8c04
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3b8c10
  w16 = mem(x3, -1); // 0x3b8c08
  w17 = mem(x0, -1); // 0x3b8c0c
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x3b8c08
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3b8c0c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x3b8c1c
  }
  x1 = local_m10; // 0x3b8c20
  x2 = "soulId" /* pp+0xb700 */; // 0x3b8c28
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData() /* 0x61c9d0 */; // 0x3b8c2c
  w1 = mem((local_m10), 0xf); // 0x3b8c34
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3b8c38
  x3 = local_m10; // 0x3b8c30
  if (w1 != w0) {
  } else {
    x0 = NULL; // 0x3b8c44
  }
  if (w0 != w22) {
    x5 = x0; // 0x3b8c58
  } else {
    x5 = "" /* pp+0x148 */; // 0x3b8c50
  }
  x0 = x5; // 0x3b8c60
  x4 = local_m8; // 0x3b8c5c
  local_m18 = x5; // 0x3b8c64
  x1 = NULL; // 0x3b8c6c
  x2 = NULL; // 0x3b8c68
  x4 = 60; // 0x3b8c70
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3b8c7c
  }
  x4 = x4 - 0x5e; // 0x3b8c80
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0xb000), 0x708) /* Obj!? */; // 0x3b8c94
    x8 = mem(PP, 0xae0) /* Type */; // 0x3b8c8c
    sub_0x278d08(); // 0x3b8c98
  }
  x0 = local_m18; // 0x3b8c9c
  x3 = local_m8; // 0x3b8ca0
  memSet(x3, 0xb, w0); // 0x3b8ca4
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3b8cb0
  w16 = mem(x3, -1); // 0x3b8ca8
  w17 = mem(x0, -1); // 0x3b8cac
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x3b8ca8
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3b8cac
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x3b8cbc
  }
  x1 = local_m10; // 0x3b8cc0
  x2 = "avatarUrl" /* pp+0xb718 */; // 0x3b8cc8
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData() /* 0x61c9d0 */; // 0x3b8ccc
  w1 = mem((local_m10), 0xf); // 0x3b8cd4
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3b8cd8
  x3 = local_m10; // 0x3b8cd0
  if (w1 != w0) {
  } else {
    x0 = NULL; // 0x3b8ce4
  }
  if (w0 != w22) {
    x5 = x0; // 0x3b8cf8
  } else {
    x5 = "" /* pp+0x148 */; // 0x3b8cf0
  }
  x0 = x5; // 0x3b8d00
  x4 = local_m8; // 0x3b8cfc
  local_m18 = x5; // 0x3b8d04
  x1 = NULL; // 0x3b8d0c
  x2 = NULL; // 0x3b8d08
  x4 = 60; // 0x3b8d10
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3b8d1c
  }
  x4 = x4 - 0x5e; // 0x3b8d20
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0xb000), 0x720) /* Obj!? */; // 0x3b8d34
    x8 = mem(PP, 0xae0) /* Type */; // 0x3b8d2c
    sub_0x278d08(); // 0x3b8d38
  }
  x0 = local_m18; // 0x3b8d3c
  x3 = local_m8; // 0x3b8d40
  memSet(x3, 0xf, w0); // 0x3b8d44
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3b8d50
  w16 = mem(x3, -1); // 0x3b8d48
  w17 = mem(x0, -1); // 0x3b8d4c
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x3b8d48
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3b8d4c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x3b8d5c
  }
  x1 = local_m10; // 0x3b8d60
  x2 = "signature" /* pp+0xb730 */; // 0x3b8d68
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData() /* 0x61c9d0 */; // 0x3b8d6c
  w1 = mem((local_m10), 0xf); // 0x3b8d74
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3b8d78
  x3 = local_m10; // 0x3b8d70
  if (w1 != w0) {
  } else {
    x0 = NULL; // 0x3b8d84
  }
  if (w0 != w22) {
    x5 = x0; // 0x3b8d98
  } else {
    x5 = "" /* pp+0x148 */; // 0x3b8d90
  }
  x0 = x5; // 0x3b8da0
  x4 = local_m8; // 0x3b8d9c
  local_m18 = x5; // 0x3b8da4
  x1 = NULL; // 0x3b8dac
  x2 = NULL; // 0x3b8da8
  x4 = 60; // 0x3b8db0
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3b8dbc
  }
  x4 = x4 - 0x5e; // 0x3b8dc0
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0xb000), 0x738) /* Obj!? */; // 0x3b8dd4
    x8 = mem(PP, 0xae0) /* Type */; // 0x3b8dcc
    sub_0x278d08(); // 0x3b8dd8
  }
  x0 = local_m18; // 0x3b8ddc
  x3 = local_m8; // 0x3b8de0
  memSet(x3, 0x13, w0); // 0x3b8de4
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3b8df0
  w16 = mem(x3, -1); // 0x3b8de8
  w17 = mem(x0, -1); // 0x3b8dec
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x3b8de8
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3b8dec
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x3b8dfc
  }
  x1 = local_m10; // 0x3b8e00
  x2 = "garlandUrl" /* pp+0xb748 */; // 0x3b8e08
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData() /* 0x61c9d0 */; // 0x3b8e0c
  w1 = mem((local_m10), 0xf); // 0x3b8e14
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3b8e18
  x3 = local_m10; // 0x3b8e10
  if (w1 != w0) {
  } else {
    x0 = NULL; // 0x3b8e24
  }
  if (w0 != w22) {
    x5 = x0; // 0x3b8e38
  } else {
    x5 = "" /* pp+0x148 */; // 0x3b8e30
  }
  x0 = x5; // 0x3b8e40
  x4 = local_m8; // 0x3b8e3c
  local_m18 = x5; // 0x3b8e44
  x1 = NULL; // 0x3b8e4c
  x2 = NULL; // 0x3b8e48
  x4 = 60; // 0x3b8e50
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3b8e5c
  }
  x4 = x4 - 0x5e; // 0x3b8e60
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0xb000), 0x750) /* Obj!? */; // 0x3b8e74
    x8 = mem(PP, 0xae0) /* Type */; // 0x3b8e6c
    sub_0x278d08(); // 0x3b8e78
  }
  x0 = local_m18; // 0x3b8e7c
  x3 = local_m8; // 0x3b8e80
  memSet(x3, 0x17, w0); // 0x3b8e84
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3b8e90
  w16 = mem(x3, -1); // 0x3b8e88
  w17 = mem(x0, -1); // 0x3b8e8c
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x3b8e88
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3b8e8c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x3b8e9c
  }
  x1 = local_m10; // 0x3b8ea0
  x2 = "showHomepageStatistics" /* pp+0xb760 */; // 0x3b8ea8
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData() /* 0x61c9d0 */; // 0x3b8eac
  w2 = mem((local_m10), 0xf); // 0x3b8eb8
  x0 = local_m10; // 0x3b8eb4
  x1 = x0; // 0x3b8eb0
  x2 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3b8ebc
  if (w2 != w1) {
    x0 = x1; // 0x3b8ed0
  } else {
    x0 = NULL; // 0x3b8ec8
  }
  if (w0 != w22) {
    x4 = x0; // 0x3b8ee4
  } else {
    x4 = NULL + 0x20; // 0x3b8edc
  }
  x0 = x4; // 0x3b8eec
  x3 = local_m8; // 0x3b8ee8
  local_m10 = x4; // 0x3b8ef0
  x1 = NULL; // 0x3b8ef8
  x2 = NULL; // 0x3b8ef4
  x4 = 60; // 0x3b8efc
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3b8f08
  }
  if (x4 == 0x3f) {
  } else {
    x3 = mem((PP + 0xb000), 0x768) /* Obj!? */; // 0x3b8f1c
    x8 = mem(PP, 0xa78) /* Type */; // 0x3b8f14
    SlowTypeTestStub_0x61d6cc() /* 0x61d6cc */; // 0x3b8f20
  }
  x1 = local_m8; // 0x3b8f24
  x2 = local_m10; // 0x3b8f28
  memSet(x1, 0x1b, w2); // 0x3b8f2c
  SP = FP; // 0x3b8f34
  x0 = NULL; // 0x3b8f30
  // frame: FP, LR, mem(SP), 0x10 // 0x3b8f38
  return;
}

// UserInfo_toJson
// raw disassembly:
//  0x3b8f60: stp FP, LR, [SP, #-0x10]!
//  0x3b8f64: mov FP, SP
//  0x3b8f68: ldr BARRIER, [THR, #0x38]
//  0x3b8f6c: cmp SP, BARRIER
//  0x3b8f70: b.ls #0x3b8f88
//  0x3b8f74: ldr x1, [FP, #0x10]
//  0x3b8f78: bl #0x3b8f90
//  0x3b8f7c: mov SP, FP
//  0x3b8f80: ldp FP, LR, [SP], #0x10
//  0x3b8f84: ret 
//  0x3b8f88: bl #0x61fa28
//  0x3b8f8c: b #0x3b8f74
//
dynamic UserInfo_toJson() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3b8f60
  BARRIER = mem(THR, 0x38); // 0x3b8f68
  // frame: FP = SP // 0x3b8f64
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3b8f88
  }
  x1 = local_10; // 0x3b8f74
  UserInfo_toJson() /* 0x3b8f90 */; // 0x3b8f78
  SP = FP; // 0x3b8f7c
  // frame: FP, LR, mem(SP), 0x10 // 0x3b8f80
  return;
}

// UserInfo_toJson_2
// raw disassembly:
//  0x3b8f90: stp FP, LR, [SP, #-0x10]!
//  0x3b8f94: mov FP, SP
//  0x3b8f98: sub SP, SP, #0x10
//  0x3b8f9c: mov x0, x1
//  0x3b8fa0: stur x1, [FP, #-8]
//  0x3b8fa4: ldr BARRIER, [THR, #0x38]
//  0x3b8fa8: cmp SP, BARRIER
//  0x3b8fac: b.ls #0x3b90f0
//  0x3b8fb0: ldr x1, [PP, #0xbf0]
//  0x3b8fb4: bl #0x28cd60
//  0x3b8fb8: mov x4, x0
//  0x3b8fbc: ldur x0, [FP, #-8]
//  0x3b8fc0: stur x4, [FP, #-0x10]
//  0x3b8fc4: ldur w1, [x0, #7]
//  0x3b8fc8: add x1, x1, HEAP, lsl #32
//  0x3b8fcc: cmp w1, w22
//  0x3b8fd0: b.ne #0x3b8fdc
//  0x3b8fd4: ldr x3, [PP, #0x148]
//  0x3b8fd8: b #0x3b8fe0
//  0x3b8fdc: mov x3, x1
//  0x3b8fe0: mov x1, x4
//  0x3b8fe4: add x2, PP, #0xb, lsl #12
//  0x3b8fe8: ldr x2, [x2, #0x6e8]
//  0x3b8fec: bl #0x6164d4
//  0x3b8ff0: ldur x0, [FP, #-8]
//  0x3b8ff4: ldur w1, [x0, #0xb]
//  0x3b8ff8: add x1, x1, HEAP, lsl #32
//  0x3b8ffc: cmp w1, w22
//  0x3b9000: b.ne #0x3b900c
//  0x3b9004: ldr x3, [PP, #0x148]
//  0x3b9008: b #0x3b9010
//  0x3b900c: mov x3, x1
//  0x3b9010: ldur x1, [FP, #-0x10]
//  0x3b9014: add x2, PP, #0xb, lsl #12
//  0x3b9018: ldr x2, [x2, #0x700]
//  0x3b901c: bl #0x6164d4
//  0x3b9020: ldur x0, [FP, #-8]
//  0x3b9024: ldur w1, [x0, #0xf]
//  0x3b9028: add x1, x1, HEAP, lsl #32
//  0x3b902c: cmp w1, w22
//  0x3b9030: b.ne #0x3b903c
//  0x3b9034: ldr x3, [PP, #0x148]
//  0x3b9038: b #0x3b9040
//  0x3b903c: mov x3, x1
//  0x3b9040: ldur x1, [FP, #-0x10]
//  0x3b9044: add x2, PP, #0xb, lsl #12
//  0x3b9048: ldr x2, [x2, #0x718]
//  0x3b904c: bl #0x6164d4
//  0x3b9050: ldur x0, [FP, #-8]
//  0x3b9054: ldur w1, [x0, #0x13]
//  0x3b9058: add x1, x1, HEAP, lsl #32
//  0x3b905c: cmp w1, w22
//  0x3b9060: b.ne #0x3b906c
//  0x3b9064: ldr x3, [PP, #0x148]
//  0x3b9068: b #0x3b9070
//  0x3b906c: mov x3, x1
//  0x3b9070: ldur x1, [FP, #-0x10]
//  0x3b9074: add x2, PP, #0xb, lsl #12
//  0x3b9078: ldr x2, [x2, #0x730]
//  0x3b907c: bl #0x6164d4
//  0x3b9080: ldur x0, [FP, #-8]
//  0x3b9084: ldur w1, [x0, #0x17]
//  0x3b9088: add x1, x1, HEAP, lsl #32
//  0x3b908c: cmp w1, w22
//  0x3b9090: b.ne #0x3b909c
//  0x3b9094: ldr x3, [PP, #0x148]
//  0x3b9098: b #0x3b90a0
//  0x3b909c: mov x3, x1
//  0x3b90a0: ldur x1, [FP, #-0x10]
//  0x3b90a4: add x2, PP, #0xb, lsl #12
//  0x3b90a8: ldr x2, [x2, #0x748]
//  0x3b90ac: bl #0x6164d4
//  0x3b90b0: ldur x0, [FP, #-8]
//  0x3b90b4: ldur w1, [x0, #0x1b]
//  0x3b90b8: add x1, x1, HEAP, lsl #32
//  0x3b90bc: cmp w1, w22
//  0x3b90c0: b.ne #0x3b90cc
//  0x3b90c4: add x3, NULL, #0x20
//  0x3b90c8: b #0x3b90d0
//  0x3b90cc: mov x3, x1
//  0x3b90d0: ldur x1, [FP, #-0x10]
//  0x3b90d4: add x2, PP, #0xb, lsl #12
//  0x3b90d8: ldr x2, [x2, #0x760]
//  0x3b90dc: bl #0x6164d4
//  0x3b90e0: ldur x0, [FP, #-0x10]
//  0x3b90e4: mov SP, FP
//  0x3b90e8: ldp FP, LR, [SP], #0x10
//  0x3b90ec: ret 
//  0x3b90f0: bl #0x61fa28
//  0x3b90f4: b #0x3b8fb0
//
dynamic UserInfo_toJson_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3b8f90
  // frame: FP = SP // 0x3b8f94
  // frame: SP = SP - 0x10 // 0x3b8f98
  x0 = x1; // 0x3b8f9c
  local_m8 = x1; // 0x3b8fa0
  BARRIER = mem(THR, 0x38); // 0x3b8fa4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3b90f0
  }
  x1 = mem(PP, 0xbf0) /* TypeArguments */; // 0x3b8fb0
  Map_factory_ctor() /* 0x28cd60 */; // 0x3b8fb4
  x0 = local_m8; // 0x3b8fbc
  x4 = x0; // 0x3b8fb8
  local_m10 = x4; // 0x3b8fc0
  w1 = mem(x0, 7); // 0x3b8fc4
  x1 = ((mem(x0, 7)) & 0xffffffff) + (HEAP << 32); // 0x3b8fc8
  if (w1 != w22) {
    x3 = x1; // 0x3b8fdc
  } else {
    x3 = "" /* pp+0x148 */; // 0x3b8fd4
  }
  x1 = x4; // 0x3b8fe0
  x2 = "userId" /* pp+0xb6e8 */; // 0x3b8fe8
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3b8fec
  w1 = mem((local_m8), 0xb); // 0x3b8ff4
  x0 = local_m8; // 0x3b8ff0
  x1 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3b8ff8
  if (w1 != w22) {
    x3 = x1; // 0x3b900c
  } else {
    x3 = "" /* pp+0x148 */; // 0x3b9004
  }
  x1 = local_m10; // 0x3b9010
  x2 = "soulId" /* pp+0xb700 */; // 0x3b9018
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3b901c
  w1 = mem((local_m8), 0xf); // 0x3b9024
  x0 = local_m8; // 0x3b9020
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3b9028
  if (w1 != w22) {
    x3 = x1; // 0x3b903c
  } else {
    x3 = "" /* pp+0x148 */; // 0x3b9034
  }
  x1 = local_m10; // 0x3b9040
  x2 = "avatarUrl" /* pp+0xb718 */; // 0x3b9048
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3b904c
  w1 = mem((local_m8), 0x13); // 0x3b9054
  x0 = local_m8; // 0x3b9050
  x1 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x3b9058
  if (w1 != w22) {
    x3 = x1; // 0x3b906c
  } else {
    x3 = "" /* pp+0x148 */; // 0x3b9064
  }
  x1 = local_m10; // 0x3b9070
  x2 = "signature" /* pp+0xb730 */; // 0x3b9078
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3b907c
  w1 = mem((local_m8), 0x17); // 0x3b9084
  x0 = local_m8; // 0x3b9080
  x1 = ((mem((local_m8), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3b9088
  if (w1 != w22) {
    x3 = x1; // 0x3b909c
  } else {
    x3 = "" /* pp+0x148 */; // 0x3b9094
  }
  x1 = local_m10; // 0x3b90a0
  x2 = "garlandUrl" /* pp+0xb748 */; // 0x3b90a8
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3b90ac
  w1 = mem((local_m8), 0x1b); // 0x3b90b4
  x0 = local_m8; // 0x3b90b0
  x1 = ((mem((local_m8), 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x3b90b8
  if (w1 != w22) {
    x3 = x1; // 0x3b90cc
  } else {
    x3 = NULL + 0x20; // 0x3b90c4
  }
  x1 = local_m10; // 0x3b90d0
  x2 = "showHomepageStatistics" /* pp+0xb760 */; // 0x3b90d8
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3b90dc
  SP = FP; // 0x3b90e4
  x0 = local_m10; // 0x3b90e0
  // frame: FP, LR, mem(SP), 0x10 // 0x3b90e8
  return;
}
