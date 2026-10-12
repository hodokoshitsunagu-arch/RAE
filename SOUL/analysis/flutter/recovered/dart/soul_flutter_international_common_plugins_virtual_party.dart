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
// library: soul_flutter_international$common$plugins$virtual_party
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// VirtualParty_sendTextToParty
// raw disassembly:
//  0x3a8d40: stp FP, LR, [SP, #-0x10]!
//  0x3a8d44: mov FP, SP
//  0x3a8d48: sub SP, SP, #0x28
//  0x3a8d4c: stur x1, [FP, #-8]
//  0x3a8d50: stur x2, [FP, #-0x10]
//  0x3a8d54: ldr BARRIER, [THR, #0x38]
//  0x3a8d58: cmp SP, BARRIER
//  0x3a8d5c: b.ls #0x3a8e10
//  0x3a8d60: ldur w0, [x1, #7]
//  0x3a8d64: cbz w0, #0x3a8d78
//  0x3a8d68: cmp w2, w22
//  0x3a8d6c: b.eq #0x3a8d78
//  0x3a8d70: ldur w0, [x2, #7]
//  0x3a8d74: cbnz w0, #0x3a8d88
//  0x3a8d78: mov x0, NULL
//  0x3a8d7c: mov SP, FP
//  0x3a8d80: ldp FP, LR, [SP], #0x10
//  0x3a8d84: ret 
//  0x3a8d88: ldr x0, [THR, #0x68]
//  0x3a8d8c: ldr x0, [x0, #0x17c8]
//  0x3a8d90: ldr BARRIER, [PP, #0x40]
//  0x3a8d94: cmp w0, w16
//  0x3a8d98: b.ne #0x3a8da8
//  0x3a8d9c: add x2, PP, #0x11, lsl #12
//  0x3a8da0: ldr x2, [x2, #0x750]
//  0x3a8da4: bl #0x61d99c
//  0x3a8da8: mov x1, NULL
//  0x3a8dac: mov x2, #8
//  0x3a8db0: stur x0, [FP, #-0x18]
//  0x3a8db4: bl #0x61f920
//  0x3a8db8: add BARRIER, PP, #0x10, lsl #12
//  0x3a8dbc: ldr BARRIER, [BARRIER, #0xd48]
//  0x3a8dc0: stur w16, [x0, #0xf]
//  0x3a8dc4: ldur x1, [FP, #-8]
//  0x3a8dc8: stur w1, [x0, #0x13]
//  0x3a8dcc: ldr BARRIER, [PP, #0x79f8]
//  0x3a8dd0: stur w16, [x0, #0x17]
//  0x3a8dd4: ldur x1, [FP, #-0x10]
//  0x3a8dd8: stur w1, [x0, #0x1b]
//  0x3a8ddc: ldr BARRIER, [PP, #0x2a60]
//  0x3a8de0: stp x0, BARRIER, [SP]
//  0x3a8de4: bl #0x27c0c8
//  0x3a8de8: str x0, [SP]
//  0x3a8dec: ldur x1, [FP, #-0x18]
//  0x3a8df0: add x2, PP, #0x12, lsl #12
//  0x3a8df4: ldr x2, [x2, #0x428]
//  0x3a8df8: ldr x4, [PP, #0x280]
//  0x3a8dfc: bl #0x3a8288
//  0x3a8e00: mov x0, NULL
//  0x3a8e04: mov SP, FP
//  0x3a8e08: ldp FP, LR, [SP], #0x10
//  0x3a8e0c: ret 
//  0x3a8e10: bl #0x61fa28
//  0x3a8e14: b #0x3a8d60
//
dynamic VirtualParty_sendTextToParty() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a8d40
  // frame: FP = SP // 0x3a8d44
  // frame: SP = SP - 0x28 // 0x3a8d48
  local_m8 = x1; // 0x3a8d4c
  local_m10 = x2; // 0x3a8d50
  BARRIER = mem(THR, 0x38); // 0x3a8d54
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a8e10
  }
  x0 = w0 & 0xffffffff; // 0x3a8d60
  if (w0 == 0) {
  } else {
    if (w2 == w22) {
    } else {
      x0 = w0 & 0xffffffff; // 0x3a8d70
      if (w0 == 0) {
        // duplicated branch body (target 0x3a8d78 terminates; the same code is emitted below)
        SP = FP; // 0x3a8d7c
        x0 = NULL; // 0x3a8d78
        // frame: FP, LR, mem(SP), 0x10 // 0x3a8d80
        return;
      }
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3a8d90
      x0 = mem((mem(THR, 0x68)), 0x17c8); // 0x3a8d8c
      if (w0 != w16) {
      } else {
        x2 = mem((PP + 0x11000), 0x750) /* Field */; // 0x3a8da0
        sub_0x61d99c(); // 0x3a8da4
      }
      x1 = NULL; // 0x3a8da8
      x2 = 8; // 0x3a8dac
      local_m18 = x0; // 0x3a8db0
      sub_0x61f920(); // 0x3a8db4
      BARRIER = "roomId" /* pp+0x10d48 */; // 0x3a8dbc
      memSet(x0, 0xf, w16); // 0x3a8dc0
      x1 = local_m8; // 0x3a8dc4
      memSet(x0, 0x13, w1); // 0x3a8dc8
      BARRIER = "text" /* pp+0x79f8 */; // 0x3a8dcc
      memSet(x0, 0x17, w16); // 0x3a8dd0
      x1 = local_m10; // 0x3a8dd4
      memSet(x0, 0x1b, w1); // 0x3a8dd8
      BARRIER = mem(PP, 0x2a60) /* TypeArguments */; // 0x3a8ddc
      // frame: x0, BARRIER, mem(SP) // 0x3a8de0
      Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x3a8de4
      local_0 = x0; // 0x3a8de8
      x1 = local_m18; // 0x3a8dec
      x2 = "sendTextToParty" /* pp+0x12428 */; // 0x3a8df4
      x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x3a8df8
      ChannelNative_call() /* 0x3a8288 */; // 0x3a8dfc
      SP = FP; // 0x3a8e04
      x0 = NULL; // 0x3a8e00
      // frame: FP, LR, mem(SP), 0x10 // 0x3a8e08
      return;
    }
  }
  SP = FP; // 0x3a8d7c
  x0 = NULL; // 0x3a8d78
  // frame: FP, LR, mem(SP), 0x10 // 0x3a8d80
  return;
}

// VirtualParty_channel
// raw disassembly:
//  0x3a8e18: stp FP, LR, [SP, #-0x10]!
//  0x3a8e1c: mov FP, SP
//  0x3a8e20: sub SP, SP, #8
//  0x3a8e24: ldr BARRIER, [THR, #0x38]
//  0x3a8e28: cmp SP, BARRIER
//  0x3a8e2c: b.ls #0x3a8e58
//  0x3a8e30: bl #0x3a84b8
//  0x3a8e34: mov x1, x0
//  0x3a8e38: add x2, PP, #0x11, lsl #12
//  0x3a8e3c: ldr x2, [x2, #0x768]
//  0x3a8e40: stur x0, [FP, #-8]
//  0x3a8e44: bl #0x3a83ec
//  0x3a8e48: ldur x0, [FP, #-8]
//  0x3a8e4c: mov SP, FP
//  0x3a8e50: ldp FP, LR, [SP], #0x10
//  0x3a8e54: ret 
//  0x3a8e58: bl #0x61fa28
//  0x3a8e5c: b #0x3a8e30
//
dynamic VirtualParty_channel() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a8e18
  BARRIER = mem(THR, 0x38); // 0x3a8e24
  // frame: FP = SP // 0x3a8e1c
  // frame: SP = SP - 8 // 0x3a8e20
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a8e58
  }
  AllocationStub_ChannelNative() /* 0x3a84b8 */; // 0x3a8e30
  x1 = x0; // 0x3a8e34
  x2 = "channel_virtual_party" /* pp+0x11768 */; // 0x3a8e3c
  local_m8 = x0; // 0x3a8e40
  ChannelNative_ctor() /* 0x3a83ec */; // 0x3a8e44
  SP = FP; // 0x3a8e4c
  x0 = local_m8; // 0x3a8e48
  // frame: FP, LR, mem(SP), 0x10 // 0x3a8e50
  return;
}

// VirtualParty_inviteUserToParty
// raw disassembly:
//  0x42066c: stp FP, LR, [SP, #-0x10]!
//  0x420670: mov FP, SP
//  0x420674: sub SP, SP, #0x28
//  0x420678: stur x1, [FP, #-8]
//  0x42067c: stur x2, [FP, #-0x10]
//  0x420680: ldr BARRIER, [THR, #0x38]
//  0x420684: cmp SP, BARRIER
//  0x420688: b.ls #0x420738
//  0x42068c: ldur w0, [x1, #7]
//  0x420690: cbz w0, #0x42069c
//  0x420694: ldur w0, [x2, #0xb]
//  0x420698: cbnz w0, #0x4206ac
//  0x42069c: mov x0, NULL
//  0x4206a0: mov SP, FP
//  0x4206a4: ldp FP, LR, [SP], #0x10
//  0x4206a8: ret 
//  0x4206ac: ldr x0, [THR, #0x68]
//  0x4206b0: ldr x0, [x0, #0x17c8]
//  0x4206b4: ldr BARRIER, [PP, #0x40]
//  0x4206b8: cmp w0, w16
//  0x4206bc: b.ne #0x4206cc
//  0x4206c0: add x2, PP, #0x11, lsl #12
//  0x4206c4: ldr x2, [x2, #0x750]
//  0x4206c8: bl #0x61d99c
//  0x4206cc: mov x1, NULL
//  0x4206d0: mov x2, #8
//  0x4206d4: stur x0, [FP, #-0x18]
//  0x4206d8: bl #0x61f920
//  0x4206dc: add BARRIER, PP, #0x10, lsl #12
//  0x4206e0: ldr BARRIER, [BARRIER, #0xd48]
//  0x4206e4: stur w16, [x0, #0xf]
//  0x4206e8: ldur x1, [FP, #-8]
//  0x4206ec: stur w1, [x0, #0x13]
//  0x4206f0: add BARRIER, PP, #0x11, lsl #12
//  0x4206f4: ldr BARRIER, [BARRIER, #0x758]
//  0x4206f8: stur w16, [x0, #0x17]
//  0x4206fc: ldur x1, [FP, #-0x10]
//  0x420700: stur w1, [x0, #0x1b]
//  0x420704: ldr BARRIER, [PP, #0x36d8]
//  0x420708: stp x0, BARRIER, [SP]
//  0x42070c: bl #0x27c0c8
//  0x420710: str x0, [SP]
//  0x420714: ldur x1, [FP, #-0x18]
//  0x420718: add x2, PP, #0x11, lsl #12
//  0x42071c: ldr x2, [x2, #0x760]
//  0x420720: ldr x4, [PP, #0x280]
//  0x420724: bl #0x3a8288
//  0x420728: mov x0, NULL
//  0x42072c: mov SP, FP
//  0x420730: ldp FP, LR, [SP], #0x10
//  0x420734: ret 
//  0x420738: bl #0x61fa28
//  0x42073c: b #0x42068c
//
dynamic VirtualParty_inviteUserToParty() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42066c
  // frame: FP = SP // 0x420670
  // frame: SP = SP - 0x28 // 0x420674
  local_m8 = x1; // 0x420678
  local_m10 = x2; // 0x42067c
  BARRIER = mem(THR, 0x38); // 0x420680
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x420738
  }
  x0 = w0 & 0xffffffff; // 0x42068c
  if (w0 == 0) {
  } else {
    x0 = w0 & 0xffffffff; // 0x420694
    if (w0 == 0) {
      // duplicated branch body (target 0x42069c terminates; the same code is emitted below)
      SP = FP; // 0x4206a0
      x0 = NULL; // 0x42069c
      // frame: FP, LR, mem(SP), 0x10 // 0x4206a4
      return;
    }
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4206b4
    x0 = mem((mem(THR, 0x68)), 0x17c8); // 0x4206b0
    if (w0 != w16) {
    } else {
      x2 = mem((PP + 0x11000), 0x750) /* Field */; // 0x4206c4
      sub_0x61d99c(); // 0x4206c8
    }
    x1 = NULL; // 0x4206cc
    x2 = 8; // 0x4206d0
    local_m18 = x0; // 0x4206d4
    sub_0x61f920(); // 0x4206d8
    BARRIER = "roomId" /* pp+0x10d48 */; // 0x4206e0
    memSet(x0, 0xf, w16); // 0x4206e4
    x1 = local_m8; // 0x4206e8
    memSet(x0, 0x13, w1); // 0x4206ec
    BARRIER = "userIdList" /* pp+0x11758 */; // 0x4206f4
    memSet(x0, 0x17, w16); // 0x4206f8
    x1 = local_m10; // 0x4206fc
    memSet(x0, 0x1b, w1); // 0x420700
    BARRIER = mem(PP, 0x36d8) /* TypeArguments */; // 0x420704
    // frame: x0, BARRIER, mem(SP) // 0x420708
    Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x42070c
    local_0 = x0; // 0x420710
    x1 = local_m18; // 0x420714
    x2 = "inviteUserToParty" /* pp+0x11760 */; // 0x42071c
    x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x420720
    ChannelNative_call() /* 0x3a8288 */; // 0x420724
    SP = FP; // 0x42072c
    x0 = NULL; // 0x420728
    // frame: FP, LR, mem(SP), 0x10 // 0x420730
    return;
  }
  SP = FP; // 0x4206a0
  x0 = NULL; // 0x42069c
  // frame: FP, LR, mem(SP), 0x10 // 0x4206a4
  return;
}
