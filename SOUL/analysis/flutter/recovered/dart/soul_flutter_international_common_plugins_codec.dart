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

dynamic AllocationStub_ChannelNative, AllocationStub__Future, BARRIER, ChannelNative_call;
dynamic ChannelNative_ctor, FP, Future_asyncComplete, NULL, PP, SP;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, local_0, local_m10, local_m8;
dynamic sub_0x278d08, sub_0x2b13a0, sub_0x2b16e4, sub_0x61d99c, sub_0x61da04, w0, w1, w16, w22;
dynamic x0, x1, x2, x3, x4, x8, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$common$plugins$codec
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// SOCodec_urlEncode
// raw disassembly:
//  0x3a80b0: stp FP, LR, [SP, #-0x10]!
//  0x3a80b4: mov FP, SP
//  0x3a80b8: sub SP, SP, #0x20
//  0x3a80bc: stur NULL, [FP, #-8]
//  0x3a80c0: stur x1, [FP, #-0x10]
//  0x3a80c4: ldr BARRIER, [THR, #0x38]
//  0x3a80c8: cmp SP, BARRIER
//  0x3a80cc: b.ls #0x3a8280
//  0x3a80d0: ldr x0, [PP, #0x868]
//  0x3a80d4: bl #0x2b16e4
//  0x3a80d8: ldur x0, [FP, #-0x10]
//  0x3a80dc: ldur w1, [x0, #7]
//  0x3a80e0: cbnz w1, #0x3a8130
//  0x3a80e4: ldr x1, [PP, #0x868]
//  0x3a80e8: bl #0x2abee8
//  0x3a80ec: stur x0, [FP, #-0x18]
//  0x3a80f0: stur xzr, [x0, #0xb]
//  0x3a80f4: ldr x0, [THR, #0x68]
//  0x3a80f8: ldr x0, [x0, #0x710]
//  0x3a80fc: ldr BARRIER, [PP, #0x40]
//  0x3a8100: cmp w0, w16
//  0x3a8104: b.ne #0x3a8110
//  0x3a8108: ldr x2, [PP, #0x128]
//  0x3a810c: bl #0x61da04
//  0x3a8110: mov x1, x0
//  0x3a8114: ldur x0, [FP, #-0x18]
//  0x3a8118: stur w1, [x0, #0x13]
//  0x3a811c: mov x1, x0
//  0x3a8120: ldr x2, [PP, #0x148]
//  0x3a8124: bl #0x27a970
//  0x3a8128: ldur x0, [FP, #-0x18]
//  0x3a812c: b #0x2b19a0
//  0x3a8130: ldr x0, [THR, #0x68]
//  0x3a8134: ldr x0, [x0, #0x1840]
//  0x3a8138: ldr BARRIER, [PP, #0x40]
//  0x3a813c: cmp w0, w16
//  0x3a8140: b.ne #0x3a8150
//  0x3a8144: add x2, PP, #0xf, lsl #12
//  0x3a8148: ldr x2, [x2, #0xf40]
//  0x3a814c: bl #0x61d99c
//  0x3a8150: ldur BARRIER, [FP, #-0x10]
//  0x3a8154: str BARRIER, [SP]
//  0x3a8158: mov x1, x0
//  0x3a815c: add x2, PP, #0xf, lsl #12
//  0x3a8160: ldr x2, [x2, #0xf48]
//  0x3a8164: ldr x4, [PP, #0x280]
//  0x3a8168: bl #0x3a8288
//  0x3a816c: mov x1, x0
//  0x3a8170: stur x1, [FP, #-0x10]
//  0x3a8174: bl #0x2b13a0
//  0x3a8178: mov x3, x0
//  0x3a817c: mov x2, NULL
//  0x3a8180: mov x1, NULL
//  0x3a8184: stur x3, [FP, #-0x10]
//  0x3a8188: mov x4, #0x3c
//  0x3a818c: tbz w0, #0, #0x3a8198
//  0x3a8190: ldur x4, [x0, #-1]
//  0x3a8194: ubfx x4, x4, #0xc, #0x14
//  0x3a8198: sub x4, x4, #0x5e
//  0x3a819c: cmp x4, #1
//  0x3a81a0: b.ls #0x3a81b4
//  0x3a81a4: ldr x8, [PP, #0xae0]
//  0x3a81a8: add x3, PP, #0xf, lsl #12
//  0x3a81ac: ldr x3, [x3, #0xf50]
//  0x3a81b0: bl #0x278d08
//  0x3a81b4: ldur x0, [FP, #-0x10]
//  0x3a81b8: cmp w0, w22
//  0x3a81bc: b.eq #0x3a8234
//  0x3a81c0: mov x1, NULL
//  0x3a81c4: mov x2, #4
//  0x3a81c8: bl #0x61f920
//  0x3a81cc: add BARRIER, PP, #0xf, lsl #12
//  0x3a81d0: ldr BARRIER, [BARRIER, #0xf60]
//  0x3a81d4: stur w16, [x0, #0xf]
//  0x3a81d8: ldur x2, [FP, #-0x10]
//  0x3a81dc: stur w2, [x0, #0x13]
//  0x3a81e0: str x0, [SP]
//  0x3a81e4: bl #0x2ad854
//  0x3a81e8: ldr x1, [PP, #0x868]
//  0x3a81ec: bl #0x2abee8
//  0x3a81f0: stur x0, [FP, #-0x18]
//  0x3a81f4: stur xzr, [x0, #0xb]
//  0x3a81f8: ldr x0, [THR, #0x68]
//  0x3a81fc: ldr x0, [x0, #0x710]
//  0x3a8200: ldr BARRIER, [PP, #0x40]
//  0x3a8204: cmp w0, w16
//  0x3a8208: b.ne #0x3a8214
//  0x3a820c: ldr x2, [PP, #0x128]
//  0x3a8210: bl #0x61da04
//  0x3a8214: mov x1, x0
//  0x3a8218: ldur x0, [FP, #-0x18]
//  0x3a821c: stur w1, [x0, #0x13]
//  0x3a8220: mov x1, x0
//  0x3a8224: ldur x2, [FP, #-0x10]
//  0x3a8228: bl #0x27a970
//  0x3a822c: ldur x0, [FP, #-0x18]
//  0x3a8230: b #0x2b19a0
//  0x3a8234: ldr x1, [PP, #0x868]
//  0x3a8238: bl #0x2abee8
//  0x3a823c: stur x0, [FP, #-0x10]
//  0x3a8240: stur xzr, [x0, #0xb]
//  0x3a8244: ldr x0, [THR, #0x68]
//  0x3a8248: ldr x0, [x0, #0x710]
//  0x3a824c: ldr BARRIER, [PP, #0x40]
//  0x3a8250: cmp w0, w16
//  0x3a8254: b.ne #0x3a8260
//  0x3a8258: ldr x2, [PP, #0x128]
//  0x3a825c: bl #0x61da04
//  0x3a8260: mov x1, x0
//  0x3a8264: ldur x0, [FP, #-0x10]
//  0x3a8268: stur w1, [x0, #0x13]
//  0x3a826c: mov x1, x0
//  0x3a8270: ldr x2, [PP, #0x148]
//  0x3a8274: bl #0x27a970
//  0x3a8278: ldur x0, [FP, #-0x10]
//  0x3a827c: b #0x2b19a0
//  0x3a8280: bl #0x61fa28
//  0x3a8284: b #0x3a80d0
//
// NOTE: control flow was not fully structured (goto kept) -- pseudocode only.
dynamic SOCodec_urlEncode() {
  dynamic BARRIER;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a80b0
  // frame: FP = SP // 0x3a80b4
  // frame: SP = SP - 0x20 // 0x3a80b8
  local_m8 = NULL; // 0x3a80bc
  local_m10 = x1; // 0x3a80c0
  BARRIER = mem(THR, 0x38); // 0x3a80c4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a8280
  }
  x0 = mem(PP, 0x868) /* TypeArguments */; // 0x3a80d0
  sub_0x2b16e4(); // 0x3a80d4
  w1 = mem((local_m10), 7); // 0x3a80dc
  x0 = local_m10; // 0x3a80d8
  x1 = (mem((local_m10), 7)) & 0xffffffff; // 0x3a80dc
  if (w1 != 0) {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3a8138
    x0 = mem((mem(THR, 0x68)), 0x1840); // 0x3a8134
    if (w0 != w16) {
    } else {
      x2 = mem((PP + 0xf000), 0xf40) /* Field */; // 0x3a8148
      sub_0x61d99c(); // 0x3a814c
    }
    BARRIER = local_m10; // 0x3a8150
    local_0 = BARRIER; // 0x3a8154
    x1 = x0; // 0x3a8158
    x2 = "urlEncode" /* pp+0xff48 */; // 0x3a8160
    x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x3a8164
    ChannelNative_call() /* 0x3a8288 */; // 0x3a8168
    x1 = x0; // 0x3a816c
    local_m10 = x1; // 0x3a8170
    sub_0x2b13a0(); // 0x3a8174
    x1 = NULL; // 0x3a8180
    x2 = NULL; // 0x3a817c
    x3 = x0; // 0x3a8178
    local_m10 = x3; // 0x3a8184
    x4 = 60; // 0x3a8188
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3a8194
    }
    x4 = x4 - 0x5e; // 0x3a8198
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0xf000), 0xf50) /* Obj!? */; // 0x3a81ac
      x8 = mem(PP, 0xae0) /* Type */; // 0x3a81a4
      sub_0x278d08(); // 0x3a81b0
    }
    x0 = local_m10; // 0x3a81b4
    if (w0 == w22) {
      x1 = mem(PP, 0x868) /* TypeArguments */; // 0x3a8234
      AllocationStub__Future() /* 0x2abee8 */; // 0x3a8238
      local_m10 = x0; // 0x3a823c
      memSet(x0, 0xb, xzr); // 0x3a8240
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3a824c
      x0 = mem((mem(THR, 0x68)), 0x710); // 0x3a8248
      if (w0 != w16) {
      } else {
        x2 = mem(PP, 0x128) /* Field */; // 0x3a8258
        sub_0x61da04(); // 0x3a825c
      }
      x0 = local_m10; // 0x3a8264
      x1 = x0; // 0x3a8260
      memSet(x0, 0x13, w1); // 0x3a8268
      x1 = x0; // 0x3a826c
      x2 = "" /* pp+0x148 */; // 0x3a8270
      Future_asyncComplete() /* 0x27a970 */; // 0x3a8274
      x0 = local_m10; // 0x3a8278
    }
    gotoLabel(0x3a81c0);
  }
  gotoLabel(0x3a80e4);
}

// SOCodec_channel
// raw disassembly:
//  0x3a83a4: stp FP, LR, [SP, #-0x10]!
//  0x3a83a8: mov FP, SP
//  0x3a83ac: sub SP, SP, #8
//  0x3a83b0: ldr BARRIER, [THR, #0x38]
//  0x3a83b4: cmp SP, BARRIER
//  0x3a83b8: b.ls #0x3a83e4
//  0x3a83bc: bl #0x3a84b8
//  0x3a83c0: mov x1, x0
//  0x3a83c4: add x2, PP, #0xf, lsl #12
//  0x3a83c8: ldr x2, [x2, #0xf68]
//  0x3a83cc: stur x0, [FP, #-8]
//  0x3a83d0: bl #0x3a83ec
//  0x3a83d4: ldur x0, [FP, #-8]
//  0x3a83d8: mov SP, FP
//  0x3a83dc: ldp FP, LR, [SP], #0x10
//  0x3a83e0: ret 
//  0x3a83e4: bl #0x61fa28
//  0x3a83e8: b #0x3a83bc
//
dynamic SOCodec_channel() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a83a4
  BARRIER = mem(THR, 0x38); // 0x3a83b0
  // frame: FP = SP // 0x3a83a8
  // frame: SP = SP - 8 // 0x3a83ac
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a83e4
  }
  AllocationStub_ChannelNative() /* 0x3a84b8 */; // 0x3a83bc
  x1 = x0; // 0x3a83c0
  x2 = "soul_channel_codec" /* pp+0xff68 */; // 0x3a83c8
  local_m8 = x0; // 0x3a83cc
  ChannelNative_ctor() /* 0x3a83ec */; // 0x3a83d0
  SP = FP; // 0x3a83d8
  x0 = local_m8; // 0x3a83d4
  // frame: FP, LR, mem(SP), 0x10 // 0x3a83dc
  return;
}
