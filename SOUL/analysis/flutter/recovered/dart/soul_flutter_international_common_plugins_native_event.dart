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

dynamic AllocationStub_ChannelNative, AllocationStub__Closure, AllocationStub__Mint, BARRIER;
dynamic ChannelNative_call, ChannelNative_ctor, ChannelNative_registerHandler;
dynamic ChannelNative_removeHandler, FP, HEAP, JsonCodec_decode;
dynamic Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData;
dynamic Map_factory_ctor_fromLiteral, NULL, PP, SP, SlowTypeTestStub_0x61d6cc;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolate, THR;
dynamic TimeUtil_currentTimeMillis, local_0, local_10, local_18, local_m10, local_m18;
dynamic local_m20, local_m8, sub_0x61d99c, sub_0x61db00, sub_0x61e890, sub_0x61f920;
dynamic sub_0x62a0c0, w0, w1, w16, w17, w2, w22, w3, w4, x0, x1, x16, x17, x2, x25, x3, x4, x8;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$common$plugins$native_event
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// SOEventBus_removeEventListener
// raw disassembly:
//  0x450ab8: stp FP, LR, [SP, #-0x10]!
//  0x450abc: mov FP, SP
//  0x450ac0: sub SP, SP, #0x28
//  0x450ac4: stur x1, [FP, #-8]
//  0x450ac8: stur x2, [FP, #-0x10]
//  0x450acc: ldr BARRIER, [THR, #0x38]
//  0x450ad0: cmp SP, BARRIER
//  0x450ad4: b.ls #0x450b90
//  0x450ad8: ldur w0, [x1, #7]
//  0x450adc: cbz w0, #0x450ae8
//  0x450ae0: ldur w0, [x2, #7]
//  0x450ae4: cbnz w0, #0x450af8
//  0x450ae8: mov x0, NULL
//  0x450aec: mov SP, FP
//  0x450af0: ldp FP, LR, [SP], #0x10
//  0x450af4: ret 
//  0x450af8: ldr x0, [THR, #0x68]
//  0x450afc: ldr x0, [x0, #0x17a0]
//  0x450b00: ldr BARRIER, [PP, #0x40]
//  0x450b04: cmp w0, w16
//  0x450b08: b.ne #0x450b18
//  0x450b0c: add x2, PP, #0xb, lsl #12
//  0x450b10: ldr x2, [x2, #0x600]
//  0x450b14: bl #0x61d99c
//  0x450b18: mov x1, NULL
//  0x450b1c: mov x2, #8
//  0x450b20: stur x0, [FP, #-0x18]
//  0x450b24: bl #0x61f920
//  0x450b28: add BARRIER, PP, #0xb, lsl #12
//  0x450b2c: ldr BARRIER, [BARRIER, #0x608]
//  0x450b30: stur w16, [x0, #0xf]
//  0x450b34: ldur x1, [FP, #-8]
//  0x450b38: stur w1, [x0, #0x13]
//  0x450b3c: add BARRIER, PP, #0xb, lsl #12
//  0x450b40: ldr BARRIER, [BARRIER, #0x610]
//  0x450b44: stur w16, [x0, #0x17]
//  0x450b48: ldur x2, [FP, #-0x10]
//  0x450b4c: stur w2, [x0, #0x1b]
//  0x450b50: ldr BARRIER, [PP, #0x2a60]
//  0x450b54: stp x0, BARRIER, [SP]
//  0x450b58: bl #0x27c0c8
//  0x450b5c: str x0, [SP]
//  0x450b60: ldur x1, [FP, #-0x18]
//  0x450b64: add x2, PP, #0xb, lsl #12
//  0x450b68: ldr x2, [x2, #0x618]
//  0x450b6c: ldr x4, [PP, #0x280]
//  0x450b70: bl #0x3a8288
//  0x450b74: ldur x1, [FP, #-0x18]
//  0x450b78: ldur x2, [FP, #-0x10]
//  0x450b7c: bl #0x450b98
//  0x450b80: mov x0, NULL
//  0x450b84: mov SP, FP
//  0x450b88: ldp FP, LR, [SP], #0x10
//  0x450b8c: ret 
//  0x450b90: bl #0x61fa28
//  0x450b94: b #0x450ad8
//
dynamic SOEventBus_removeEventListener() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x450ab8
  // frame: FP = SP // 0x450abc
  // frame: SP = SP - 0x28 // 0x450ac0
  local_m8 = x1; // 0x450ac4
  local_m10 = x2; // 0x450ac8
  BARRIER = mem(THR, 0x38); // 0x450acc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x450b90
  }
  x0 = w0 & 0xffffffff; // 0x450ad8
  if (w0 == 0) {
  } else {
    x0 = w0 & 0xffffffff; // 0x450ae0
    if (w0 == 0) {
      // duplicated branch body (target 0x450ae8 terminates; the same code is emitted below)
      SP = FP; // 0x450aec
      x0 = NULL; // 0x450ae8
      // frame: FP, LR, mem(SP), 0x10 // 0x450af0
      return;
    }
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x450b00
    x0 = mem((mem(THR, 0x68)), 0x17a0); // 0x450afc
    if (w0 != w16) {
    } else {
      x2 = mem((PP + 0xb000), 0x600) /* Field */; // 0x450b10
      sub_0x61d99c(); // 0x450b14
    }
    x1 = NULL; // 0x450b18
    x2 = 8; // 0x450b1c
    local_m18 = x0; // 0x450b20
    sub_0x61f920(); // 0x450b24
    BARRIER = "eventName" /* pp+0xb608 */; // 0x450b2c
    memSet(x0, 0xf, w16); // 0x450b30
    x1 = local_m8; // 0x450b34
    memSet(x0, 0x13, w1); // 0x450b38
    BARRIER = "invokeMethodName" /* pp+0xb610 */; // 0x450b40
    memSet(x0, 0x17, w16); // 0x450b44
    x2 = local_m10; // 0x450b48
    memSet(x0, 0x1b, w2); // 0x450b4c
    BARRIER = mem(PP, 0x2a60) /* TypeArguments */; // 0x450b50
    // frame: x0, BARRIER, mem(SP) // 0x450b54
    Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x450b58
    local_0 = x0; // 0x450b5c
    x1 = local_m18; // 0x450b60
    x2 = "removeEventListener" /* pp+0xb618 */; // 0x450b68
    x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x450b6c
    ChannelNative_call() /* 0x3a8288 */; // 0x450b70
    x1 = local_m18; // 0x450b74
    x2 = local_m10; // 0x450b78
    ChannelNative_removeHandler() /* 0x450b98 */; // 0x450b7c
    SP = FP; // 0x450b84
    x0 = NULL; // 0x450b80
    // frame: FP, LR, mem(SP), 0x10 // 0x450b88
    return;
  }
  SP = FP; // 0x450aec
  x0 = NULL; // 0x450ae8
  // frame: FP, LR, mem(SP), 0x10 // 0x450af0
  return;
}

// SOEventBus_channel
// raw disassembly:
//  0x450bd4: stp FP, LR, [SP, #-0x10]!
//  0x450bd8: mov FP, SP
//  0x450bdc: sub SP, SP, #8
//  0x450be0: ldr BARRIER, [THR, #0x38]
//  0x450be4: cmp SP, BARRIER
//  0x450be8: b.ls #0x450c14
//  0x450bec: bl #0x3a84b8
//  0x450bf0: mov x1, x0
//  0x450bf4: add x2, PP, #0xb, lsl #12
//  0x450bf8: ldr x2, [x2, #0x620]
//  0x450bfc: stur x0, [FP, #-8]
//  0x450c00: bl #0x3a83ec
//  0x450c04: ldur x0, [FP, #-8]
//  0x450c08: mov SP, FP
//  0x450c0c: ldp FP, LR, [SP], #0x10
//  0x450c10: ret 
//  0x450c14: bl #0x61fa28
//  0x450c18: b #0x450bec
//
dynamic SOEventBus_channel() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x450bd4
  BARRIER = mem(THR, 0x38); // 0x450be0
  // frame: FP = SP // 0x450bd8
  // frame: SP = SP - 8 // 0x450bdc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x450c14
  }
  AllocationStub_ChannelNative() /* 0x3a84b8 */; // 0x450bec
  x1 = x0; // 0x450bf0
  x2 = "soul_channel_event" /* pp+0xb620 */; // 0x450bf8
  local_m8 = x0; // 0x450bfc
  ChannelNative_ctor() /* 0x3a83ec */; // 0x450c00
  SP = FP; // 0x450c08
  x0 = local_m8; // 0x450c04
  // frame: FP, LR, mem(SP), 0x10 // 0x450c0c
  return;
}

// SOEventBus_addEventListener
// raw disassembly:
//  0x4d3338: stp FP, LR, [SP, #-0x10]!
//  0x4d333c: mov FP, SP
//  0x4d3340: sub SP, SP, #0x30
//  0x4d3344: stur x1, [FP, #-8]
//  0x4d3348: stur x2, [FP, #-0x10]
//  0x4d334c: ldr BARRIER, [THR, #0x38]
//  0x4d3350: cmp SP, BARRIER
//  0x4d3354: b.ls #0x4d34b8
//  0x4d3358: mov x1, #1
//  0x4d335c: bl #0x61e890
//  0x4d3360: mov x3, x0
//  0x4d3364: ldur x0, [FP, #-0x10]
//  0x4d3368: stur x3, [FP, #-0x18]
//  0x4d336c: stur w0, [x3, #0xf]
//  0x4d3370: ldur x0, [FP, #-8]
//  0x4d3374: ldur w1, [x0, #7]
//  0x4d3378: cbnz w1, #0x4d338c
//  0x4d337c: ldr x0, [PP, #0x148]
//  0x4d3380: mov SP, FP
//  0x4d3384: ldp FP, LR, [SP], #0x10
//  0x4d3388: ret 
//  0x4d338c: mov x1, NULL
//  0x4d3390: mov x2, #8
//  0x4d3394: bl #0x61f920
//  0x4d3398: stur x0, [FP, #-0x10]
//  0x4d339c: add BARRIER, PP, #0xc, lsl #12
//  0x4d33a0: ldr BARRIER, [BARRIER, #0x398]
//  0x4d33a4: stur w16, [x0, #0xf]
//  0x4d33a8: ldur x1, [FP, #-8]
//  0x4d33ac: stur w1, [x0, #0x13]
//  0x4d33b0: ldr BARRIER, [PP, #0xd20]
//  0x4d33b4: stur w16, [x0, #0x17]
//  0x4d33b8: bl #0x4d36ac
//  0x4d33bc: mov x2, x0
//  0x4d33c0: sbfiz x0, x2, #1, #0x1f
//  0x4d33c4: cmp x2, x0, asr #1
//  0x4d33c8: b.eq #0x4d33d4
//  0x4d33cc: bl #0x61fba8
//  0x4d33d0: stur x2, [x0, #7]
//  0x4d33d4: ldur x1, [FP, #-0x10]
//  0x4d33d8: add x25, x1, #0x1b
//  0x4d33dc: str w0, [x25]
//  0x4d33e0: tbz w0, #0, #0x4d33fc
//  0x4d33e4: ldurb w16, [x1, #-1]
//  0x4d33e8: ldurb w17, [x0, #-1]
//  0x4d33ec: and BARRIER, x17, BARRIER, lsr #2
//  0x4d33f0: tst BARRIER, HEAP, lsr #32
//  0x4d33f4: b.eq #0x4d33fc
//  0x4d33f8: bl #0x61db00
//  0x4d33fc: ldur BARRIER, [FP, #-0x10]
//  0x4d3400: str BARRIER, [SP]
//  0x4d3404: bl #0x2ad854
//  0x4d3408: stur x0, [FP, #-0x10]
//  0x4d340c: ldr x0, [THR, #0x68]
//  0x4d3410: ldr x0, [x0, #0x17a0]
//  0x4d3414: ldr BARRIER, [PP, #0x40]
//  0x4d3418: cmp w0, w16
//  0x4d341c: b.ne #0x4d342c
//  0x4d3420: add x2, PP, #0xb, lsl #12
//  0x4d3424: ldr x2, [x2, #0x600]
//  0x4d3428: bl #0x61d99c
//  0x4d342c: mov x1, NULL
//  0x4d3430: mov x2, #8
//  0x4d3434: stur x0, [FP, #-0x20]
//  0x4d3438: bl #0x61f920
//  0x4d343c: add BARRIER, PP, #0xb, lsl #12
//  0x4d3440: ldr BARRIER, [BARRIER, #0x608]
//  0x4d3444: stur w16, [x0, #0xf]
//  0x4d3448: ldur x1, [FP, #-8]
//  0x4d344c: stur w1, [x0, #0x13]
//  0x4d3450: add BARRIER, PP, #0xb, lsl #12
//  0x4d3454: ldr BARRIER, [BARRIER, #0x610]
//  0x4d3458: stur w16, [x0, #0x17]
//  0x4d345c: ldur x2, [FP, #-0x10]
//  0x4d3460: stur w2, [x0, #0x1b]
//  0x4d3464: ldr BARRIER, [PP, #0x2a60]
//  0x4d3468: stp x0, BARRIER, [SP]
//  0x4d346c: bl #0x27c0c8
//  0x4d3470: str x0, [SP]
//  0x4d3474: ldur x1, [FP, #-0x20]
//  0x4d3478: add x2, PP, #0xc, lsl #12
//  0x4d347c: ldr x2, [x2, #0x3a0]
//  0x4d3480: ldr x4, [PP, #0x280]
//  0x4d3484: bl #0x3a8288
//  0x4d3488: ldur x2, [FP, #-0x18]
//  0x4d348c: add x1, PP, #0xc, lsl #12
//  0x4d3490: ldr x1, [x1, #0x3a8]
//  0x4d3494: bl #0x61ec54
//  0x4d3498: ldur x1, [FP, #-0x20]
//  0x4d349c: ldur x2, [FP, #-0x10]
//  0x4d34a0: mov x3, x0
//  0x4d34a4: bl #0x4d34c0
//  0x4d34a8: ldur x0, [FP, #-0x10]
//  0x4d34ac: mov SP, FP
//  0x4d34b0: ldp FP, LR, [SP], #0x10
//  0x4d34b4: ret 
//  0x4d34b8: bl #0x61fa28
//  0x4d34bc: b #0x4d3358
//
dynamic SOEventBus_addEventListener() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d3338
  // frame: FP = SP // 0x4d333c
  // frame: SP = SP - 0x30 // 0x4d3340
  local_m8 = x1; // 0x4d3344
  local_m10 = x2; // 0x4d3348
  BARRIER = mem(THR, 0x38); // 0x4d334c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d34b8
  }
  x1 = 1; // 0x4d3358
  sub_0x61e890(); // 0x4d335c
  x0 = local_m10; // 0x4d3364
  x3 = x0; // 0x4d3360
  local_m18 = x3; // 0x4d3368
  memSet(x3, 0xf, w0); // 0x4d336c
  w1 = mem((local_m8), 7); // 0x4d3374
  x0 = local_m8; // 0x4d3370
  x1 = (mem((local_m8), 7)) & 0xffffffff; // 0x4d3374
  if (w1 == 0) {
    SP = FP; // 0x4d3380
    x0 = "" /* pp+0x148 */; // 0x4d337c
    // frame: FP, LR, mem(SP), 0x10 // 0x4d3384
    return;
  }
  x1 = NULL; // 0x4d338c
  x2 = 8; // 0x4d3390
  sub_0x61f920(); // 0x4d3394
  local_m10 = x0; // 0x4d3398
  BARRIER = "soul.event.callback_" /* pp+0xc398 */; // 0x4d33a0
  memSet(x0, 0xf, w16); // 0x4d33a4
  x1 = local_m8; // 0x4d33a8
  memSet(x0, 0x13, w1); // 0x4d33ac
  BARRIER = "_" /* pp+0xd20 */; // 0x4d33b0
  memSet(x0, 0x17, w16); // 0x4d33b4
  TimeUtil_currentTimeMillis() /* 0x4d36ac */; // 0x4d33b8
  x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x4d33c0
  x2 = x0; // 0x4d33bc
  if (x2 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x4d33cc
    memSet(x0, 7, x2); // 0x4d33d0
  }
  x1 = local_m10; // 0x4d33d4
  x25 = (local_m10) + 0x1b; // 0x4d33d8
  memSet(x25, w0); // 0x4d33dc
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d33ec
    w17 = mem(x0, -1); // 0x4d33e8
    x16 = w16 & 0xffffffff; // 0x4d33e4
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d33e8
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      sub_0x61db00(); // 0x4d33f8
    }
  }
  BARRIER = local_m10; // 0x4d33fc
  local_0 = BARRIER; // 0x4d3400
  StringBase_interpolate() /* 0x2ad854 */; // 0x4d3404
  local_m10 = x0; // 0x4d3408
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d3414
  x0 = mem((mem(THR, 0x68)), 0x17a0); // 0x4d3410
  if (w0 != w16) {
  } else {
    x2 = mem((PP + 0xb000), 0x600) /* Field */; // 0x4d3424
    sub_0x61d99c(); // 0x4d3428
  }
  x1 = NULL; // 0x4d342c
  x2 = 8; // 0x4d3430
  local_m20 = x0; // 0x4d3434
  sub_0x61f920(); // 0x4d3438
  BARRIER = "eventName" /* pp+0xb608 */; // 0x4d3440
  memSet(x0, 0xf, w16); // 0x4d3444
  x1 = local_m8; // 0x4d3448
  memSet(x0, 0x13, w1); // 0x4d344c
  BARRIER = "invokeMethodName" /* pp+0xb610 */; // 0x4d3454
  memSet(x0, 0x17, w16); // 0x4d3458
  x2 = local_m10; // 0x4d345c
  memSet(x0, 0x1b, w2); // 0x4d3460
  BARRIER = mem(PP, 0x2a60) /* TypeArguments */; // 0x4d3464
  // frame: x0, BARRIER, mem(SP) // 0x4d3468
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x4d346c
  local_0 = x0; // 0x4d3470
  x1 = local_m20; // 0x4d3474
  x2 = "addEventListener" /* pp+0xc3a0 */; // 0x4d347c
  x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x4d3480
  ChannelNative_call() /* 0x3a8288 */; // 0x4d3484
  x1 = mem((PP + 0xc000), 0x3a8) /* Function */; // 0x4d3490
  x2 = local_m18; // 0x4d3488
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d3494
  x1 = local_m20; // 0x4d3498
  x2 = local_m10; // 0x4d349c
  x3 = x0; // 0x4d34a0
  ChannelNative_registerHandler() /* 0x4d34c0 */; // 0x4d34a4
  SP = FP; // 0x4d34ac
  x0 = local_m10; // 0x4d34a8
  // frame: FP, LR, mem(SP), 0x10 // 0x4d34b0
  return;
}

// SOEventBus_anon_closure
// raw disassembly:
//  0x4d3700: stp FP, LR, [SP, #-0x10]!
//  0x4d3704: mov FP, SP
//  0x4d3708: sub SP, SP, #0x30
//  0x4d370c: ldr x0, [FP, #0x18]
//  0x4d3710: ldur w3, [x0, #0x17]
//  0x4d3714: add x3, x3, HEAP, lsl #32
//  0x4d3718: stur x3, [FP, #-8]
//  0x4d371c: ldr BARRIER, [THR, #0x38]
//  0x4d3720: cmp SP, BARRIER
//  0x4d3724: b.ls #0x4d395c
//  0x4d3728: ldr x4, [FP, #0x10]
//  0x4d372c: cmp w4, w22
//  0x4d3730: b.ne #0x4d373c
//  0x4d3734: mov x3, NULL
//  0x4d3738: b #0x4d3788
//  0x4d373c: mov x0, x4
//  0x4d3740: mov x2, NULL
//  0x4d3744: mov x1, NULL
//  0x4d3748: mov x4, #0x3c
//  0x4d374c: tbz w0, #0, #0x4d3758
//  0x4d3750: ldur x4, [x0, #-1]
//  0x4d3754: ubfx x4, x4, #0xc, #0x14
//  0x4d3758: sub x4, x4, #0x5e
//  0x4d375c: cmp x4, #1
//  0x4d3760: b.ls #0x4d3774
//  0x4d3764: ldr x8, [PP, #0x2f8]
//  0x4d3768: add x3, PP, #0xc, lsl #12
//  0x4d376c: ldr x3, [x3, #0x3b0]
//  0x4d3770: bl #0x62a0c0
//  0x4d3774: ldr x2, [FP, #0x10]
//  0x4d3778: ldr x1, [PP, #0xa28]
//  0x4d377c: ldr x4, [PP, #0x278]
//  0x4d3780: bl #0x29ba14
//  0x4d3784: mov x3, x0
//  0x4d3788: mov x0, x3
//  0x4d378c: stur x3, [FP, #-0x10]
//  0x4d3790: mov x2, NULL
//  0x4d3794: mov x1, NULL
//  0x4d3798: mov x4, #0x3c
//  0x4d379c: tbz w0, #0, #0x4d37a8
//  0x4d37a0: ldur x4, [x0, #-1]
//  0x4d37a4: ubfx x4, x4, #0xc, #0x14
//  0x4d37a8: sub x4, x4, #0x56
//  0x4d37ac: cmp x4, #1
//  0x4d37b0: b.ls #0x4d37e4
//  0x4d37b4: cmp x4, #0xd02
//  0x4d37b8: b.eq #0x4d37e4
//  0x4d37bc: cmp x4, #0xd10
//  0x4d37c0: b.eq #0x4d37e4
//  0x4d37c4: sub x4, x4, #0xd2f
//  0x4d37c8: cmp x4, #0x2a
//  0x4d37cc: b.ls #0x4d37e4
//  0x4d37d0: add x8, PP, #9, lsl #12
//  0x4d37d4: ldr x8, [x8, #0xf90]
//  0x4d37d8: add x3, PP, #0xc, lsl #12
//  0x4d37dc: ldr x3, [x3, #0x3c0]
//  0x4d37e0: bl #0x61d6cc
//  0x4d37e4: ldur x0, [FP, #-0x10]
//  0x4d37e8: cmp w0, w22
//  0x4d37ec: b.ne #0x4d37fc
//  0x4d37f0: mov x3, x0
//  0x4d37f4: mov x0, NULL
//  0x4d37f8: b #0x4d3824
//  0x4d37fc: mov x1, x0
//  0x4d3800: add x2, PP, #0xb, lsl #12
//  0x4d3804: ldr x2, [x2, #0x608]
//  0x4d3808: bl #0x61c9d0
//  0x4d380c: ldur x3, [FP, #-0x10]
//  0x4d3810: ldur w1, [x3, #0xf]
//  0x4d3814: add x1, x1, HEAP, lsl #32
//  0x4d3818: cmp w1, w0
//  0x4d381c: b.ne #0x4d3824
//  0x4d3820: mov x0, NULL
//  0x4d3824: cmp w0, w22
//  0x4d3828: b.ne #0x4d3834
//  0x4d382c: ldr x4, [PP, #0x148]
//  0x4d3830: b #0x4d3838
//  0x4d3834: mov x4, x0
//  0x4d3838: mov x0, x4
//  0x4d383c: stur x4, [FP, #-0x18]
//  0x4d3840: mov x2, NULL
//  0x4d3844: mov x1, NULL
//  0x4d3848: mov x4, #0x3c
//  0x4d384c: tbz w0, #0, #0x4d3858
//  0x4d3850: ldur x4, [x0, #-1]
//  0x4d3854: ubfx x4, x4, #0xc, #0x14
//  0x4d3858: sub x4, x4, #0x5e
//  0x4d385c: cmp x4, #1
//  0x4d3860: b.ls #0x4d3874
//  0x4d3864: ldr x8, [PP, #0x2f8]
//  0x4d3868: add x3, PP, #0xc, lsl #12
//  0x4d386c: ldr x3, [x3, #0x3d0]
//  0x4d3870: bl #0x62a0c0
//  0x4d3874: ldur x0, [FP, #-0x10]
//  0x4d3878: cmp w0, w22
//  0x4d387c: b.ne #0x4d3888
//  0x4d3880: mov x4, NULL
//  0x4d3884: b #0x4d38c0
//  0x4d3888: mov x1, x0
//  0x4d388c: add x2, PP, #0xb, lsl #12
//  0x4d3890: ldr x2, [x2, #0x648]
//  0x4d3894: bl #0x61c9d0
//  0x4d3898: mov x1, x0
//  0x4d389c: ldur x0, [FP, #-0x10]
//  0x4d38a0: ldur w2, [x0, #0xf]
//  0x4d38a4: add x2, x2, HEAP, lsl #32
//  0x4d38a8: cmp w2, w1
//  0x4d38ac: b.ne #0x4d38b8
//  0x4d38b0: mov x0, NULL
//  0x4d38b4: b #0x4d38bc
//  0x4d38b8: mov x0, x1
//  0x4d38bc: mov x4, x0
//  0x4d38c0: ldur x3, [FP, #-8]
//  0x4d38c4: mov x0, x4
//  0x4d38c8: stur x4, [FP, #-0x10]
//  0x4d38cc: mov x2, NULL
//  0x4d38d0: mov x1, NULL
//  0x4d38d4: mov x4, #0x3c
//  0x4d38d8: tbz w0, #0, #0x4d38e4
//  0x4d38dc: ldur x4, [x0, #-1]
//  0x4d38e0: ubfx x4, x4, #0xc, #0x14
//  0x4d38e4: sub x4, x4, #0x56
//  0x4d38e8: cmp x4, #1
//  0x4d38ec: b.ls #0x4d3920
//  0x4d38f0: cmp x4, #0xd02
//  0x4d38f4: b.eq #0x4d3920
//  0x4d38f8: cmp x4, #0xd10
//  0x4d38fc: b.eq #0x4d3920
//  0x4d3900: sub x4, x4, #0xd2f
//  0x4d3904: cmp x4, #0x2a
//  0x4d3908: b.ls #0x4d3920
//  0x4d390c: add x8, PP, #9, lsl #12
//  0x4d3910: ldr x8, [x8, #0xf90]
//  0x4d3914: add x3, PP, #0xc, lsl #12
//  0x4d3918: ldr x3, [x3, #0x3e0]
//  0x4d391c: bl #0x61d6cc
//  0x4d3920: ldur x0, [FP, #-8]
//  0x4d3924: ldur w1, [x0, #0xf]
//  0x4d3928: add x1, x1, HEAP, lsl #32
//  0x4d392c: ldur BARRIER, [FP, #-0x18]
//  0x4d3930: stp BARRIER, x1, [SP, #8]
//  0x4d3934: ldur BARRIER, [FP, #-0x10]
//  0x4d3938: str BARRIER, [SP]
//  0x4d393c: mov x0, x1
//  0x4d3940: ldr x4, [PP, #0x370]
//  0x4d3944: ldur x2, [x0, #0x1f]
//  0x4d3948: blr x2
//  0x4d394c: mov x0, NULL
//  0x4d3950: mov SP, FP
//  0x4d3954: ldp FP, LR, [SP], #0x10
//  0x4d3958: ret 
//  0x4d395c: bl #0x61fa28
//  0x4d3960: b #0x4d3728
//
dynamic SOEventBus_anon_closure() {
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
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d3700
  // frame: FP = SP // 0x4d3704
  // frame: SP = SP - 0x30 // 0x4d3708
  w3 = mem((local_18), 0x17); // 0x4d3710
  x0 = local_18; // 0x4d370c
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d3714
  local_m8 = x3; // 0x4d3718
  BARRIER = mem(THR, 0x38); // 0x4d371c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d395c
  }
  x4 = local_10; // 0x4d3728
  if (w4 != w22) {
    x0 = x4; // 0x4d373c
    x1 = NULL; // 0x4d3744
    x2 = NULL; // 0x4d3740
    x4 = 60; // 0x4d3748
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d3754
    }
    x4 = x4 - 0x5e; // 0x4d3758
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0xc000), 0x3b0) /* Obj!? */; // 0x4d376c
      x8 = mem(PP, 0x2f8) /* Type */; // 0x4d3764
      sub_0x62a0c0(); // 0x4d3770
    }
    x1 = mem(PP, 0xa28) /* Obj!JsonCodec@12138  */; // 0x4d3778
    x2 = local_10; // 0x4d3774
    x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x4d377c
    JsonCodec_decode() /* 0x29ba14 */; // 0x4d3780
    x3 = x0; // 0x4d3784
  } else {
    x3 = NULL; // 0x4d3734
  }
  x0 = x3; // 0x4d3788
  local_m10 = x3; // 0x4d378c
  x1 = NULL; // 0x4d3794
  x2 = NULL; // 0x4d3790
  x4 = 60; // 0x4d3798
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d37a4
  }
  x4 = x4 - 0x56; // 0x4d37a8
  if (x4 <= 1) {
  } else {
    if (x4 == 0xd02) {
    } else {
      if (x4 == 0xd10) {
      } else {
        x4 = x4 - 0xd2f; // 0x4d37c4
        if (x4 <= 0x2a) {
        } else {
          x3 = mem((PP + 0xc000), 0x3c0) /* Obj!? */; // 0x4d37dc
          x8 = mem((PP + 0x9000), 0xf90) /* Type */; // 0x4d37d4
          SlowTypeTestStub_0x61d6cc() /* 0x61d6cc */; // 0x4d37e0
        }
      }
    }
  }
  x0 = local_m10; // 0x4d37e4
  if (w0 != w22) {
    x1 = x0; // 0x4d37fc
    x2 = "eventName" /* pp+0xb608 */; // 0x4d3804
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData() /* 0x61c9d0 */; // 0x4d3808
    w1 = mem((local_m10), 0xf); // 0x4d3810
    x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d3814
    x3 = local_m10; // 0x4d380c
    if (w1 != w0) {
    } else {
      x0 = NULL; // 0x4d3820
    }
  } else {
    x0 = NULL; // 0x4d37f4
    x3 = x0; // 0x4d37f0
  }
  if (w0 != w22) {
    x4 = x0; // 0x4d3834
  } else {
    x4 = "" /* pp+0x148 */; // 0x4d382c
  }
  x0 = x4; // 0x4d3838
  local_m18 = x4; // 0x4d383c
  x1 = NULL; // 0x4d3844
  x2 = NULL; // 0x4d3840
  x4 = 60; // 0x4d3848
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d3854
  }
  x4 = x4 - 0x5e; // 0x4d3858
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0xc000), 0x3d0) /* Obj!? */; // 0x4d386c
    x8 = mem(PP, 0x2f8) /* Type */; // 0x4d3864
    sub_0x62a0c0(); // 0x4d3870
  }
  x0 = local_m10; // 0x4d3874
  if (w0 != w22) {
    x1 = x0; // 0x4d3888
    x2 = "params" /* pp+0xb648 */; // 0x4d3890
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData() /* 0x61c9d0 */; // 0x4d3894
    w2 = mem((local_m10), 0xf); // 0x4d38a0
    x0 = local_m10; // 0x4d389c
    x1 = x0; // 0x4d3898
    x2 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d38a4
    if (w2 != w1) {
      x0 = x1; // 0x4d38b8
    } else {
      x0 = NULL; // 0x4d38b0
    }
    x4 = x0; // 0x4d38bc
  } else {
    x4 = NULL; // 0x4d3880
  }
  x0 = x4; // 0x4d38c4
  x3 = local_m8; // 0x4d38c0
  local_m10 = x4; // 0x4d38c8
  x1 = NULL; // 0x4d38d0
  x2 = NULL; // 0x4d38cc
  x4 = 60; // 0x4d38d4
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d38e0
  }
  x4 = x4 - 0x56; // 0x4d38e4
  if (x4 <= 1) {
  } else {
    if (x4 == 0xd02) {
    } else {
      if (x4 == 0xd10) {
      } else {
        x4 = x4 - 0xd2f; // 0x4d3900
        if (x4 <= 0x2a) {
        } else {
          x3 = mem((PP + 0xc000), 0x3e0) /* Obj!? */; // 0x4d3918
          x8 = mem((PP + 0x9000), 0xf90) /* Type */; // 0x4d3910
          SlowTypeTestStub_0x61d6cc() /* 0x61d6cc */; // 0x4d391c
        }
      }
    }
  }
  BARRIER = local_m18; // 0x4d392c
  w1 = mem((local_m8), 0xf); // 0x4d3924
  x0 = local_m8; // 0x4d3920
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d3928
  // frame: BARRIER, x1, mem(SP, 8) // 0x4d3930
  BARRIER = local_m10; // 0x4d3934
  local_0 = BARRIER; // 0x4d3938
  x0 = x1; // 0x4d393c
  x2 = mem(x0, 0x1f); // 0x4d3944
  x4 = mem(PP, 0x370) /* Obj!? */; // 0x4d3940
  callIndirect(x2); // 0x4d3948
  SP = FP; // 0x4d3950
  x0 = NULL; // 0x4d394c
  // frame: FP, LR, mem(SP), 0x10 // 0x4d3954
  return;
}
