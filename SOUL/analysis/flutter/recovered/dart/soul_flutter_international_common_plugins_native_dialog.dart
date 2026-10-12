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

dynamic AllocationStub_ChannelNative, BARRIER, ChannelNative_call, ChannelNative_ctor, FP;
dynamic Map_factory_ctor_fromLiteral, NULL, PP, SP;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, local_0, local_m10, local_m18;
dynamic local_m8, sub_0x61d99c, sub_0x61f920, w0, w1, w16, w2, w22, x0, x1, x2, x4;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$common$plugins$native_dialog
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// NativeDialog_toast
// raw disassembly:
//  0x3ac64c: stp FP, LR, [SP, #-0x10]!
//  0x3ac650: mov FP, SP
//  0x3ac654: sub SP, SP, #0x28
//  0x3ac658: stur x1, [FP, #-0x10]
//  0x3ac65c: ldur w0, [x4, #0x13]
//  0x3ac660: sub x2, x0, #2
//  0x3ac664: cmp w2, #2
//  0x3ac668: b.lt #0x3ac678
//  0x3ac66c: add x0, FP, w2, sxtw #2
//  0x3ac670: ldr x0, [x0, #8]
//  0x3ac674: b #0x3ac67c
//  0x3ac678: add x0, NULL, #0x30
//  0x3ac67c: stur x0, [FP, #-8]
//  0x3ac680: ldr BARRIER, [THR, #0x38]
//  0x3ac684: cmp SP, BARRIER
//  0x3ac688: b.ls #0x3ac748
//  0x3ac68c: cmp w1, w22
//  0x3ac690: b.eq #0x3ac69c
//  0x3ac694: ldur w2, [x1, #7]
//  0x3ac698: cbnz w2, #0x3ac6ac
//  0x3ac69c: mov x0, NULL
//  0x3ac6a0: mov SP, FP
//  0x3ac6a4: ldp FP, LR, [SP], #0x10
//  0x3ac6a8: ret 
//  0x3ac6ac: ldr x0, [THR, #0x68]
//  0x3ac6b0: ldr x0, [x0, #0x1788]
//  0x3ac6b4: ldr BARRIER, [PP, #0x40]
//  0x3ac6b8: cmp w0, w16
//  0x3ac6bc: b.ne #0x3ac6cc
//  0x3ac6c0: add x2, PP, #0xf, lsl #12
//  0x3ac6c4: ldr x2, [x2, #0x458]
//  0x3ac6c8: bl #0x61d99c
//  0x3ac6cc: mov x1, NULL
//  0x3ac6d0: mov x2, #8
//  0x3ac6d4: stur x0, [FP, #-0x18]
//  0x3ac6d8: bl #0x61f920
//  0x3ac6dc: ldr BARRIER, [PP, #0x79f8]
//  0x3ac6e0: stur w16, [x0, #0xf]
//  0x3ac6e4: ldur x1, [FP, #-0x10]
//  0x3ac6e8: stur w1, [x0, #0x13]
//  0x3ac6ec: ldr BARRIER, [PP, #0x2250]
//  0x3ac6f0: stur w16, [x0, #0x17]
//  0x3ac6f4: ldur x1, [FP, #-8]
//  0x3ac6f8: tbnz w1, #4, #0x3ac708
//  0x3ac6fc: add x1, PP, #0xf, lsl #12
//  0x3ac700: ldr x1, [x1, #0x460]
//  0x3ac704: b #0x3ac710
//  0x3ac708: add x1, PP, #0xf, lsl #12
//  0x3ac70c: ldr x1, [x1, #0x468]
//  0x3ac710: stur w1, [x0, #0x1b]
//  0x3ac714: ldr BARRIER, [PP, #0x2a60]
//  0x3ac718: stp x0, BARRIER, [SP]
//  0x3ac71c: bl #0x27c0c8
//  0x3ac720: str x0, [SP]
//  0x3ac724: ldur x1, [FP, #-0x18]
//  0x3ac728: add x2, PP, #0xf, lsl #12
//  0x3ac72c: ldr x2, [x2, #0x470]
//  0x3ac730: ldr x4, [PP, #0x280]
//  0x3ac734: bl #0x3a8288
//  0x3ac738: mov x0, NULL
//  0x3ac73c: mov SP, FP
//  0x3ac740: ldp FP, LR, [SP], #0x10
//  0x3ac744: ret 
//  0x3ac748: bl #0x61fa28
//  0x3ac74c: b #0x3ac68c
//
dynamic NativeDialog_toast() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ac64c
  // frame: FP = SP // 0x3ac650
  // frame: SP = SP - 0x28 // 0x3ac654
  local_m10 = x1; // 0x3ac658
  w0 = mem(x4, 0x13); // 0x3ac65c
  x0 = (mem(x4, 0x13)) & 0xffffffff; // 0x3ac65c
  x2 = ((mem(x4, 0x13)) & 0xffffffff) - 2; // 0x3ac660
  if (w2 < 2) {
    x0 = NULL + 0x30; // 0x3ac678
  } else {
    x0 = mem((FP + (w2 /* sxtw 2 */)), 8); // 0x3ac670
  }
  local_m8 = x0; // 0x3ac67c
  BARRIER = mem(THR, 0x38); // 0x3ac680
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ac748
  }
  if (w1 == w22) {
  } else {
    x2 = w2 & 0xffffffff; // 0x3ac694
    if (w2 == 0) {
      // duplicated branch body (target 0x3ac69c terminates; the same code is emitted below)
      SP = FP; // 0x3ac6a0
      x0 = NULL; // 0x3ac69c
      // frame: FP, LR, mem(SP), 0x10 // 0x3ac6a4
      return;
    }
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3ac6b4
    x0 = mem((mem(THR, 0x68)), 0x1788); // 0x3ac6b0
    if (w0 != w16) {
    } else {
      x2 = mem((PP + 0xf000), 0x458) /* Field */; // 0x3ac6c4
      sub_0x61d99c(); // 0x3ac6c8
    }
    x1 = NULL; // 0x3ac6cc
    x2 = 8; // 0x3ac6d0
    local_m18 = x0; // 0x3ac6d4
    sub_0x61f920(); // 0x3ac6d8
    BARRIER = "text" /* pp+0x79f8 */; // 0x3ac6dc
    memSet(x0, 0xf, w16); // 0x3ac6e0
    x1 = local_m10; // 0x3ac6e4
    memSet(x0, 0x13, w1); // 0x3ac6e8
    BARRIER = "type" /* pp+0x2250 */; // 0x3ac6ec
    memSet(x0, 0x17, w16); // 0x3ac6f0
    x1 = local_m8; // 0x3ac6f4
    if (x1 & (1 << 4) != 0) {
      x1 = "failed" /* pp+0xf468 */; // 0x3ac70c
    } else {
      x1 = "success" /* pp+0xf460 */; // 0x3ac700
    }
    memSet(x0, 0x1b, w1); // 0x3ac710
    BARRIER = mem(PP, 0x2a60) /* TypeArguments */; // 0x3ac714
    // frame: x0, BARRIER, mem(SP) // 0x3ac718
    Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x3ac71c
    local_0 = x0; // 0x3ac720
    x1 = local_m18; // 0x3ac724
    x2 = "toast" /* pp+0xf470 */; // 0x3ac72c
    x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x3ac730
    ChannelNative_call() /* 0x3a8288 */; // 0x3ac734
    SP = FP; // 0x3ac73c
    x0 = NULL; // 0x3ac738
    // frame: FP, LR, mem(SP), 0x10 // 0x3ac740
    return;
  }
  SP = FP; // 0x3ac6a0
  x0 = NULL; // 0x3ac69c
  // frame: FP, LR, mem(SP), 0x10 // 0x3ac6a4
  return;
}

// NativeDialog_channel
// raw disassembly:
//  0x3ac750: stp FP, LR, [SP, #-0x10]!
//  0x3ac754: mov FP, SP
//  0x3ac758: sub SP, SP, #8
//  0x3ac75c: ldr BARRIER, [THR, #0x38]
//  0x3ac760: cmp SP, BARRIER
//  0x3ac764: b.ls #0x3ac790
//  0x3ac768: bl #0x3a84b8
//  0x3ac76c: mov x1, x0
//  0x3ac770: add x2, PP, #0xf, lsl #12
//  0x3ac774: ldr x2, [x2, #0x478]
//  0x3ac778: stur x0, [FP, #-8]
//  0x3ac77c: bl #0x3a83ec
//  0x3ac780: ldur x0, [FP, #-8]
//  0x3ac784: mov SP, FP
//  0x3ac788: ldp FP, LR, [SP], #0x10
//  0x3ac78c: ret 
//  0x3ac790: bl #0x61fa28
//  0x3ac794: b #0x3ac768
//
dynamic NativeDialog_channel() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ac750
  BARRIER = mem(THR, 0x38); // 0x3ac75c
  // frame: FP = SP // 0x3ac754
  // frame: SP = SP - 8 // 0x3ac758
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ac790
  }
  AllocationStub_ChannelNative() /* 0x3a84b8 */; // 0x3ac768
  x1 = x0; // 0x3ac76c
  x2 = "soul_channel_dialog" /* pp+0xf478 */; // 0x3ac774
  local_m8 = x0; // 0x3ac778
  ChannelNative_ctor() /* 0x3a83ec */; // 0x3ac77c
  SP = FP; // 0x3ac784
  x0 = local_m8; // 0x3ac780
  // frame: FP, LR, mem(SP), 0x10 // 0x3ac788
  return;
}

// NativeDialog_toCoinDialog
// raw disassembly:
//  0x41c9dc: stp FP, LR, [SP, #-0x10]!
//  0x41c9e0: mov FP, SP
//  0x41c9e4: ldr BARRIER, [THR, #0x38]
//  0x41c9e8: cmp SP, BARRIER
//  0x41c9ec: b.ls #0x41ca34
//  0x41c9f0: ldr x0, [THR, #0x68]
//  0x41c9f4: ldr x0, [x0, #0x1788]
//  0x41c9f8: ldr BARRIER, [PP, #0x40]
//  0x41c9fc: cmp w0, w16
//  0x41ca00: b.ne #0x41ca10
//  0x41ca04: add x2, PP, #0xf, lsl #12
//  0x41ca08: ldr x2, [x2, #0x458]
//  0x41ca0c: bl #0x61d99c
//  0x41ca10: mov x1, x0
//  0x41ca14: add x2, PP, #0x10, lsl #12
//  0x41ca18: ldr x2, [x2, #0xb80]
//  0x41ca1c: ldr x4, [PP, #0x278]
//  0x41ca20: bl #0x3a8288
//  0x41ca24: mov x0, NULL
//  0x41ca28: mov SP, FP
//  0x41ca2c: ldp FP, LR, [SP], #0x10
//  0x41ca30: ret 
//  0x41ca34: bl #0x61fa28
//  0x41ca38: b #0x41c9f0
//
dynamic NativeDialog_toCoinDialog() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41c9dc
  BARRIER = mem(THR, 0x38); // 0x41c9e4
  // frame: FP = SP // 0x41c9e0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41ca34
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x41c9f8
  x0 = mem((mem(THR, 0x68)), 0x1788); // 0x41c9f4
  if (w0 != w16) {
  } else {
    x2 = mem((PP + 0xf000), 0x458) /* Field */; // 0x41ca08
    sub_0x61d99c(); // 0x41ca0c
  }
  x1 = x0; // 0x41ca10
  x2 = "toCoinChargeDialog" /* pp+0x10b80 */; // 0x41ca18
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x41ca1c
  ChannelNative_call() /* 0x3a8288 */; // 0x41ca20
  SP = FP; // 0x41ca28
  x0 = NULL; // 0x41ca24
  // frame: FP, LR, mem(SP), 0x10 // 0x41ca2c
  return;
}
