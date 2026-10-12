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

dynamic AllocationStub_PartyRedPocketInfo, AllocationStub__Closure, AllocationStub__Mint;
dynamic BARRIER, FP, HEAP, Http_getSimple, Http_postSimple, LR, Map_factory_ctor_fromLiteral;
dynamic NULL, PP, PartyRedPocketInfo_ctor_fromJson, SP;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, local_0, local_10, local_18;
dynamic local_m10, local_m18, local_m20, local_m28, local_m30, local_m8, sub_0x61e890;
dynamic sub_0x61f920, w0, w1, w16, x0, x1, x2, x3, x4, x5, x6;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$api$party_api_service
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PartyApiService_sendRedPocket
// raw disassembly:
//  0x429de0: stp FP, LR, [SP, #-0x10]!
//  0x429de4: mov FP, SP
//  0x429de8: sub SP, SP, #0x40
//  0x429dec: stur x1, [FP, #-8]
//  0x429df0: stur x2, [FP, #-0x10]
//  0x429df4: stur x3, [FP, #-0x18]
//  0x429df8: stur x5, [FP, #-0x20]
//  0x429dfc: stur x6, [FP, #-0x28]
//  0x429e00: ldr BARRIER, [THR, #0x38]
//  0x429e04: cmp SP, BARRIER
//  0x429e08: b.ls #0x429f18
//  0x429e0c: mov x1, #2
//  0x429e10: bl #0x61e890
//  0x429e14: mov x3, x0
//  0x429e18: ldur x0, [FP, #-0x20]
//  0x429e1c: stur x3, [FP, #-0x30]
//  0x429e20: stur w0, [x3, #0xf]
//  0x429e24: ldur x0, [FP, #-0x28]
//  0x429e28: stur w0, [x3, #0x13]
//  0x429e2c: mov x1, NULL
//  0x429e30: mov x2, #0x10
//  0x429e34: bl #0x61f920
//  0x429e38: mov x2, x0
//  0x429e3c: add BARRIER, PP, #0x10, lsl #12
//  0x429e40: ldr BARRIER, [BARRIER, #0xb88]
//  0x429e44: stur w16, [x2, #0xf]
//  0x429e48: ldur x0, [FP, #-8]
//  0x429e4c: stur w0, [x2, #0x13]
//  0x429e50: add BARRIER, PP, #0x10, lsl #12
//  0x429e54: ldr BARRIER, [BARRIER, #0xb90]
//  0x429e58: stur w16, [x2, #0x17]
//  0x429e5c: ldur x3, [FP, #-0x10]
//  0x429e60: sbfiz x0, x3, #1, #0x1f
//  0x429e64: cmp x3, x0, asr #1
//  0x429e68: b.eq #0x429e74
//  0x429e6c: bl #0x61fba8
//  0x429e70: stur x3, [x0, #7]
//  0x429e74: stur w0, [x2, #0x1b]
//  0x429e78: add BARRIER, PP, #0x10, lsl #12
//  0x429e7c: ldr BARRIER, [BARRIER, #0xb98]
//  0x429e80: stur w16, [x2, #0x1f]
//  0x429e84: ldur x3, [FP, #-0x18]
//  0x429e88: sbfiz x0, x3, #1, #0x1f
//  0x429e8c: cmp x3, x0, asr #1
//  0x429e90: b.eq #0x429e9c
//  0x429e94: bl #0x61fba8
//  0x429e98: stur x3, [x0, #7]
//  0x429e9c: stur w0, [x2, #0x23]
//  0x429ea0: add BARRIER, PP, #0x10, lsl #12
//  0x429ea4: ldr BARRIER, [BARRIER, #0xba0]
//  0x429ea8: stur w16, [x2, #0x27]
//  0x429eac: mov BARRIER, #4
//  0x429eb0: stur w16, [x2, #0x2b]
//  0x429eb4: ldr BARRIER, [PP, #0xbf0]
//  0x429eb8: stp x2, BARRIER, [SP]
//  0x429ebc: bl #0x27c0c8
//  0x429ec0: ldur x2, [FP, #-0x30]
//  0x429ec4: add x1, PP, #0x10, lsl #12
//  0x429ec8: ldr x1, [x1, #0xba8]
//  0x429ecc: stur x0, [FP, #-8]
//  0x429ed0: bl #0x61ec54
//  0x429ed4: ldur x2, [FP, #-0x30]
//  0x429ed8: add x1, PP, #0x10, lsl #12
//  0x429edc: ldr x1, [x1, #0xbb0]
//  0x429ee0: stur x0, [FP, #-0x20]
//  0x429ee4: bl #0x61ec54
//  0x429ee8: str x0, [SP]
//  0x429eec: ldur x2, [FP, #-8]
//  0x429ef0: ldur x3, [FP, #-0x20]
//  0x429ef4: add x1, PP, #0x10, lsl #12
//  0x429ef8: ldr x1, [x1, #0xbb8]
//  0x429efc: add x4, PP, #0x10, lsl #12
//  0x429f00: ldr x4, [x4, #0xbc0]
//  0x429f04: bl #0x41e430
//  0x429f08: mov x0, NULL
//  0x429f0c: mov SP, FP
//  0x429f10: ldp FP, LR, [SP], #0x10
//  0x429f14: ret 
//  0x429f18: bl #0x61fa28
//  0x429f1c: b #0x429e0c
//
dynamic PartyApiService_sendRedPocket() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x429de0
  // frame: FP = SP // 0x429de4
  // frame: SP = SP - 0x40 // 0x429de8
  local_m8 = x1; // 0x429dec
  local_m10 = x2; // 0x429df0
  local_m18 = x3; // 0x429df4
  local_m20 = x5; // 0x429df8
  local_m28 = x6; // 0x429dfc
  BARRIER = mem(THR, 0x38); // 0x429e00
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x429f18
  }
  x1 = 2; // 0x429e0c
  sub_0x61e890(); // 0x429e10
  x0 = local_m20; // 0x429e18
  x3 = x0; // 0x429e14
  local_m30 = x3; // 0x429e1c
  memSet(x3, 0xf, w0); // 0x429e20
  x0 = local_m28; // 0x429e24
  memSet(x3, 0x13, w0); // 0x429e28
  x1 = NULL; // 0x429e2c
  x2 = 16; // 0x429e30
  sub_0x61f920(); // 0x429e34
  BARRIER = "targetId" /* pp+0x10b88 */; // 0x429e40
  x2 = x0; // 0x429e38
  memSet(x2, 0xf, w16); // 0x429e44
  x0 = local_m8; // 0x429e48
  memSet(x2, 0x13, w0); // 0x429e4c
  BARRIER = "soulCoinNum" /* pp+0x10b90 */; // 0x429e54
  memSet(x2, 0x17, w16); // 0x429e58
  x0 = (((local_m10) & 0x7fffffff) << 1) /* signed */; // 0x429e60
  x3 = local_m10; // 0x429e5c
  if (x3 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x429e6c
    memSet(x0, 7, x3); // 0x429e70
  }
  memSet(x2, 0x1b, w0); // 0x429e74
  BARRIER = "packetNum" /* pp+0x10b98 */; // 0x429e7c
  memSet(x2, 0x1f, w16); // 0x429e80
  x0 = (((local_m18) & 0x7fffffff) << 1) /* signed */; // 0x429e88
  x3 = local_m18; // 0x429e84
  if (x3 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x429e94
    memSet(x0, 7, x3); // 0x429e98
  }
  memSet(x2, 0x23, w0); // 0x429e9c
  BARRIER = "packetType" /* pp+0x10ba0 */; // 0x429ea4
  memSet(x2, 0x27, w16); // 0x429ea8
  BARRIER = 4; // 0x429eac
  memSet(x2, 0x2b, w16); // 0x429eb0
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x429eb4
  // frame: x2, BARRIER, mem(SP) // 0x429eb8
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x429ebc
  x1 = mem((PP + 0x10000), 0xba8) /* Function */; // 0x429ec8
  x2 = local_m30; // 0x429ec0
  local_m8 = x0; // 0x429ecc
  AllocationStub__Closure() /* 0x61ec54 */; // 0x429ed0
  x1 = mem((PP + 0x10000), 0xbb0) /* Function */; // 0x429edc
  x2 = local_m30; // 0x429ed4
  local_m20 = x0; // 0x429ee0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x429ee4
  local_0 = x0; // 0x429ee8
  x1 = "red/packet/make" /* pp+0x10bb8 */; // 0x429ef8
  x2 = local_m8; // 0x429eec
  x3 = local_m20; // 0x429ef0
  x4 = mem((PP + 0x10000), 0xbc0) /* ImmutableArray */; // 0x429f00
  Http_postSimple() /* 0x41e430 */; // 0x429f04
  SP = FP; // 0x429f0c
  x0 = NULL; // 0x429f08
  // frame: FP, LR, mem(SP), 0x10 // 0x429f10
  return;
}

// PartyApiService_getPartyRedPocket
// raw disassembly:
//  0x4d5b88: stp FP, LR, [SP, #-0x10]!
//  0x4d5b8c: mov FP, SP
//  0x4d5b90: sub SP, SP, #8
//  0x4d5b94: stur x1, [FP, #-8]
//  0x4d5b98: ldr BARRIER, [THR, #0x38]
//  0x4d5b9c: cmp SP, BARRIER
//  0x4d5ba0: b.ls #0x4d5bec
//  0x4d5ba4: mov x1, #1
//  0x4d5ba8: bl #0x61e890
//  0x4d5bac: mov x1, x0
//  0x4d5bb0: ldur x0, [FP, #-8]
//  0x4d5bb4: stur w0, [x1, #0xf]
//  0x4d5bb8: mov x2, x1
//  0x4d5bbc: add x1, PP, #0x10, lsl #12
//  0x4d5bc0: ldr x1, [x1, #0xda0]
//  0x4d5bc4: bl #0x61ec54
//  0x4d5bc8: mov x2, x0
//  0x4d5bcc: add x1, PP, #0x10, lsl #12
//  0x4d5bd0: ldr x1, [x1, #0xda8]
//  0x4d5bd4: ldr x4, [PP, #0x278]
//  0x4d5bd8: bl #0x3ab958
//  0x4d5bdc: mov x0, NULL
//  0x4d5be0: mov SP, FP
//  0x4d5be4: ldp FP, LR, [SP], #0x10
//  0x4d5be8: ret 
//  0x4d5bec: bl #0x61fa28
//  0x4d5bf0: b #0x4d5ba4
//
dynamic PartyApiService_getPartyRedPocket() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d5b88
  // frame: FP = SP // 0x4d5b8c
  // frame: SP = SP - 8 // 0x4d5b90
  local_m8 = x1; // 0x4d5b94
  BARRIER = mem(THR, 0x38); // 0x4d5b98
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d5bec
  }
  x1 = 1; // 0x4d5ba4
  sub_0x61e890(); // 0x4d5ba8
  x0 = local_m8; // 0x4d5bb0
  x1 = x0; // 0x4d5bac
  memSet(x1, 0xf, w0); // 0x4d5bb4
  x1 = mem((PP + 0x10000), 0xda0) /* Function */; // 0x4d5bc0
  x2 = x1; // 0x4d5bb8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d5bc4
  x1 = "red/packet/resource" /* pp+0x10da8 */; // 0x4d5bd0
  x2 = x0; // 0x4d5bc8
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x4d5bd4
  Http_getSimple() /* 0x3ab958 */; // 0x4d5bd8
  SP = FP; // 0x4d5be0
  x0 = NULL; // 0x4d5bdc
  // frame: FP, LR, mem(SP), 0x10 // 0x4d5be4
  return;
}

// PartyApiService_anon_closure
// raw disassembly:
//  0x4d5bf4: stp FP, LR, [SP, #-0x10]!
//  0x4d5bf8: mov FP, SP
//  0x4d5bfc: sub SP, SP, #0x20
//  0x4d5c00: ldr x0, [FP, #0x18]
//  0x4d5c04: ldur w1, [x0, #0x17]
//  0x4d5c08: add x1, x1, HEAP, lsl #32
//  0x4d5c0c: ldr BARRIER, [THR, #0x38]
//  0x4d5c10: cmp SP, BARRIER
//  0x4d5c14: b.ls #0x4d5c64
//  0x4d5c18: ldur w0, [x1, #0xf]
//  0x4d5c1c: add x0, x0, HEAP, lsl #32
//  0x4d5c20: stur x0, [FP, #-8]
//  0x4d5c24: bl #0x4d6274
//  0x4d5c28: mov x1, x0
//  0x4d5c2c: ldr x2, [FP, #0x10]
//  0x4d5c30: stur x0, [FP, #-0x10]
//  0x4d5c34: bl #0x4d5c6c
//  0x4d5c38: ldur BARRIER, [FP, #-8]
//  0x4d5c3c: ldur LR, [FP, #-0x10]
//  0x4d5c40: stp LR, BARRIER, [SP]
//  0x4d5c44: ldur x0, [FP, #-8]
//  0x4d5c48: ldr x4, [PP, #0x140]
//  0x4d5c4c: ldur x2, [x0, #0x1f]
//  0x4d5c50: blr x2
//  0x4d5c54: mov x0, NULL
//  0x4d5c58: mov SP, FP
//  0x4d5c5c: ldp FP, LR, [SP], #0x10
//  0x4d5c60: ret 
//  0x4d5c64: bl #0x61fa28
//  0x4d5c68: b #0x4d5c18
//
dynamic PartyApiService_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d5bf4
  BARRIER = mem(THR, 0x38); // 0x4d5c0c
  // frame: FP = SP // 0x4d5bf8
  // frame: SP = SP - 0x20 // 0x4d5bfc
  w1 = mem((local_18), 0x17); // 0x4d5c04
  x0 = local_18; // 0x4d5c00
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d5c08
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d5c64
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d5c1c
  local_m8 = x0; // 0x4d5c20
  AllocationStub_PartyRedPocketInfo() /* 0x4d6274 */; // 0x4d5c24
  x1 = x0; // 0x4d5c28
  x2 = local_10; // 0x4d5c2c
  local_m10 = x0; // 0x4d5c30
  PartyRedPocketInfo_ctor_fromJson() /* 0x4d5c6c */; // 0x4d5c34
  BARRIER = local_m8; // 0x4d5c38
  LR = local_m10; // 0x4d5c3c
  // frame: LR, BARRIER, mem(SP) // 0x4d5c40
  x0 = local_m8; // 0x4d5c44
  x2 = mem((local_m8), 0x1f); // 0x4d5c4c
  x4 = mem(PP, 0x140) /* Obj!? */; // 0x4d5c48
  callIndirect(x2); // 0x4d5c50
  SP = FP; // 0x4d5c58
  x0 = NULL; // 0x4d5c54
  // frame: FP, LR, mem(SP), 0x10 // 0x4d5c5c
  return;
}
