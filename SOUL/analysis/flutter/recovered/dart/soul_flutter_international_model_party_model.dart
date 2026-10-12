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

dynamic AllocationStub_ChatItemInfo, AllocationStub_DateTime;
dynamic AllocationStub_PartyRedPocketCoin, AllocationStub_PartyRedPocketNum;
dynamic AllocationStub_PartyRoomBackground, AllocationStub_PartyRoomMusic;
dynamic AllocationStub_PartyRoomOwner, AllocationStub_PartyRoomTag, AllocationStub__Closure;
dynamic BARRIER, ChatItemInfo_ctor_fromJson, DateTime_ctor_withValue, DateTime_toLocal;
dynamic DateTime_toString, DateTime_validateMilliseconds, FP, GrowableList_factory_ctor, HEAP;
dynamic LR, LateInitializationErrorSharedWithoutFpuRegsStub_0x620258;
dynamic Map_factory_ctor_fromLiteral, NULL, PP, SP;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolateSingle;
dynamic StringBase_substring, THR, WriteBarrierStub_x1, WriteBarrierStub_x2;
dynamic WriteBarrierStub_x3, WriteBarrierStub_x4, local_0, local_10, local_18, local_m10;
dynamic local_m18, local_m20, local_m8, sub_0x285664, sub_0x2b15f0, sub_0x62a0a0, sub_0x62a0c0;
dynamic sub_0x62aa34, w0, w1, w16, w17, w2, w22, x0, x1, x16, x17, x2, x21, x3, x4, x5, x8, x9;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$model$party_model
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PartySendLuckBagItem_ctor_fromJson
// raw disassembly:
//  0x3acd20: stp FP, LR, [SP, #-0x10]!
//  0x3acd24: mov FP, SP
//  0x3acd28: sub SP, SP, #0x28
//  0x3acd2c: ldr x0, [PP, #0x40]
//  0x3acd30: mov x4, x1
//  0x3acd34: mov x3, x2
//  0x3acd38: stur x1, [FP, #-8]
//  0x3acd3c: stur x2, [FP, #-0x10]
//  0x3acd40: ldr BARRIER, [THR, #0x38]
//  0x3acd44: cmp SP, BARRIER
//  0x3acd48: b.ls #0x3acf24
//  0x3acd4c: stur w0, [x4, #7]
//  0x3acd50: stur w0, [x4, #0xb]
//  0x3acd54: stur w0, [x4, #0xf]
//  0x3acd58: ldur x0, [x3, #-1]
//  0x3acd5c: ubfx x0, x0, #0xc, #0x14
//  0x3acd60: mov x1, x3
//  0x3acd64: add x2, PP, #0x11, lsl #12
//  0x3acd68: ldr x2, [x2, #0x4b8]
//  0x3acd6c: sub LR, x0, #1, lsl #12
//  0x3acd70: ldr LR, [x21, LR, lsl #3]
//  0x3acd74: blr LR
//  0x3acd78: cmp w0, w22
//  0x3acd7c: b.ne #0x3acd88
//  0x3acd80: mov x5, #0
//  0x3acd84: b #0x3acd8c
//  0x3acd88: mov x5, x0
//  0x3acd8c: ldur x4, [FP, #-8]
//  0x3acd90: ldur x3, [FP, #-0x10]
//  0x3acd94: mov x0, x5
//  0x3acd98: stur x5, [FP, #-0x18]
//  0x3acd9c: mov x2, NULL
//  0x3acda0: mov x1, NULL
//  0x3acda4: tbz w0, #0, #0x3acdcc
//  0x3acda8: ldur x4, [x0, #-1]
//  0x3acdac: ubfx x4, x4, #0xc, #0x14
//  0x3acdb0: sub x4, x4, #0x3c
//  0x3acdb4: cmp x4, #1
//  0x3acdb8: b.ls #0x3acdcc
//  0x3acdbc: ldr x8, [PP, #0x1170]
//  0x3acdc0: add x3, PP, #0x11, lsl #12
//  0x3acdc4: ldr x3, [x3, #0x4c0]
//  0x3acdc8: bl #0x62aa34
//  0x3acdcc: ldur x0, [FP, #-0x18]
//  0x3acdd0: sbfx x1, x0, #1, #0x1f
//  0x3acdd4: tbz w0, #0, #0x3acddc
//  0x3acdd8: ldur x1, [x0, #7]
//  0x3acddc: bl #0x3adab8
//  0x3acde0: mov BARRIER, #0x3e8
//  0x3acde4: mul x2, x0, BARRIER
//  0x3acde8: stur x2, [FP, #-0x20]
//  0x3acdec: bl #0x3adaac
//  0x3acdf0: mov x1, x0
//  0x3acdf4: ldur x2, [FP, #-0x20]
//  0x3acdf8: add x3, NULL, #0x30
//  0x3acdfc: stur x0, [FP, #-0x18]
//  0x3ace00: bl #0x3acfd0
//  0x3ace04: ldur x1, [FP, #-0x18]
//  0x3ace08: bl #0x3acf4c
//  0x3ace0c: str x0, [SP]
//  0x3ace10: bl #0x48f214
//  0x3ace14: mov BARRIER, #0x14
//  0x3ace18: str BARRIER, [SP]
//  0x3ace1c: mov x1, x0
//  0x3ace20: mov x2, #0
//  0x3ace24: ldr x4, [PP, #0x280]
//  0x3ace28: bl #0x281608
//  0x3ace2c: ldur x3, [FP, #-8]
//  0x3ace30: stur w0, [x3, #7]
//  0x3ace34: ldurb w16, [x3, #-1]
//  0x3ace38: ldurb w17, [x0, #-1]
//  0x3ace3c: and BARRIER, x17, BARRIER, lsr #2
//  0x3ace40: tst BARRIER, HEAP, lsr #32
//  0x3ace44: b.eq #0x3ace4c
//  0x3ace48: bl #0x61e08c
//  0x3ace4c: ldur x4, [FP, #-0x10]
//  0x3ace50: ldur x0, [x4, #-1]
//  0x3ace54: ubfx x0, x0, #0xc, #0x14
//  0x3ace58: mov x1, x4
//  0x3ace5c: add x2, PP, #0x10, lsl #12
//  0x3ace60: ldr x2, [x2, #0xb90]
//  0x3ace64: sub LR, x0, #1, lsl #12
//  0x3ace68: ldr LR, [x21, LR, lsl #3]
//  0x3ace6c: blr LR
//  0x3ace70: cmp w0, w22
//  0x3ace74: b.ne #0x3ace80
//  0x3ace78: mov x2, #0
//  0x3ace7c: b #0x3ace84
//  0x3ace80: mov x2, x0
//  0x3ace84: ldur x0, [FP, #-8]
//  0x3ace88: ldur x1, [FP, #-0x10]
//  0x3ace8c: str x2, [SP]
//  0x3ace90: bl #0x2ac0a0
//  0x3ace94: ldur x3, [FP, #-8]
//  0x3ace98: stur w0, [x3, #0xb]
//  0x3ace9c: ldurb w16, [x3, #-1]
//  0x3acea0: ldurb w17, [x0, #-1]
//  0x3acea4: and BARRIER, x17, BARRIER, lsr #2
//  0x3acea8: tst BARRIER, HEAP, lsr #32
//  0x3aceac: b.eq #0x3aceb4
//  0x3aceb0: bl #0x61e08c
//  0x3aceb4: ldur x1, [FP, #-0x10]
//  0x3aceb8: ldur x0, [x1, #-1]
//  0x3acebc: ubfx x0, x0, #0xc, #0x14
//  0x3acec0: add x2, PP, #0x10, lsl #12
//  0x3acec4: ldr x2, [x2, #0xb98]
//  0x3acec8: sub LR, x0, #1, lsl #12
//  0x3acecc: ldr LR, [x21, LR, lsl #3]
//  0x3aced0: blr LR
//  0x3aced4: cmp w0, w22
//  0x3aced8: b.ne #0x3acee4
//  0x3acedc: mov x1, #0
//  0x3acee0: b #0x3acee8
//  0x3acee4: mov x1, x0
//  0x3acee8: ldur x0, [FP, #-8]
//  0x3aceec: str x1, [SP]
//  0x3acef0: bl #0x2ac0a0
//  0x3acef4: ldur x1, [FP, #-8]
//  0x3acef8: stur w0, [x1, #0xf]
//  0x3acefc: ldurb w16, [x1, #-1]
//  0x3acf00: ldurb w17, [x0, #-1]
//  0x3acf04: and BARRIER, x17, BARRIER, lsr #2
//  0x3acf08: tst BARRIER, HEAP, lsr #32
//  0x3acf0c: b.eq #0x3acf14
//  0x3acf10: bl #0x61e04c
//  0x3acf14: mov x0, NULL
//  0x3acf18: mov SP, FP
//  0x3acf1c: ldp FP, LR, [SP], #0x10
//  0x3acf20: ret 
//  0x3acf24: bl #0x61fa28
//  0x3acf28: b #0x3acd4c
//
dynamic PartySendLuckBagItem_ctor_fromJson() {
  dynamic BARRIER;
  dynamic FP;
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
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3acd20
  // frame: FP = SP // 0x3acd24
  // frame: SP = SP - 0x28 // 0x3acd28
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x3acd2c
  x3 = x2; // 0x3acd34
  x4 = x1; // 0x3acd30
  local_m8 = x1; // 0x3acd38
  local_m10 = x2; // 0x3acd3c
  BARRIER = mem(THR, 0x38); // 0x3acd40
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3acf24
  }
  memSet(x4, 7, w0); // 0x3acd4c
  memSet(x4, 0xb, w0); // 0x3acd50
  memSet(x4, 0xf, w0); // 0x3acd54
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x3acd70
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x3acd5c
  x1 = x3; // 0x3acd60
  x2 = "createTime" /* pp+0x114b8 */; // 0x3acd68
  callIndirect(LR); // 0x3acd74
  if (w0 != w22) {
    x5 = x0; // 0x3acd88
  } else {
    x5 = 0; // 0x3acd80
  }
  x0 = x5; // 0x3acd94
  x3 = local_m10; // 0x3acd90
  x4 = local_m8; // 0x3acd8c
  local_m18 = x5; // 0x3acd98
  x1 = NULL; // 0x3acda0
  x2 = NULL; // 0x3acd9c
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x3acdb0
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x11000), 0x4c0) /* Obj!? */; // 0x3acdc4
      x8 = mem(PP, 0x1170) /* Type */; // 0x3acdbc
      sub_0x62aa34(); // 0x3acdc8
    }
  }
  x0 = local_m18; // 0x3acdcc
  x1 = ((local_m18) >> 1) & 0x7fffffff; // 0x3acdd0
  if (x0 & (1 << 0) == 0) {
  } else {
    x1 = mem(x0, 7); /* PartySendLuckBagItem.createTime (off 0x8) */  // 0x3acdd8
  }
  DateTime_validateMilliseconds() /* 0x3adab8 */; // 0x3acddc
  BARRIER = 1000; // 0x3acde0
  x2 = x0 * BARRIER; // 0x3acde4
  local_m20 = x2; // 0x3acde8
  AllocationStub_DateTime() /* 0x3adaac */; // 0x3acdec
  x1 = x0; // 0x3acdf0
  x2 = local_m20; // 0x3acdf4
  x3 = NULL + 0x30; // 0x3acdf8
  local_m18 = x0; // 0x3acdfc
  DateTime_ctor_withValue() /* 0x3acfd0 */; // 0x3ace00
  x1 = local_m18; // 0x3ace04
  DateTime_toLocal() /* 0x3acf4c */; // 0x3ace08
  local_0 = x0; // 0x3ace0c
  DateTime_toString() /* 0x48f214 */; // 0x3ace10
  BARRIER = 20; // 0x3ace14
  local_0 = BARRIER; // 0x3ace18
  x1 = x0; // 0x3ace1c
  x2 = 0; // 0x3ace20
  x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x3ace24
  StringBase_substring() /* 0x281608 */; // 0x3ace28
  x3 = local_m8; // 0x3ace2c
  memSet(x3, 7, w0); // 0x3ace30
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3ace3c
  w16 = mem(x3, -1); // 0x3ace34
  w17 = mem(x0, -1); // 0x3ace38
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x3ace34
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3ace38
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x3ace48
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x3ace68
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x3ace54
  x1 = local_m10; // 0x3ace58
  x2 = "soulCoinNum" /* pp+0x10b90 */; // 0x3ace60
  x4 = local_m10; // 0x3ace4c
  callIndirect(LR); // 0x3ace6c
  if (w0 != w22) {
    x2 = x0; // 0x3ace80
  } else {
    x2 = 0; // 0x3ace78
  }
  x0 = local_m8; // 0x3ace84
  x1 = local_m10; // 0x3ace88
  local_0 = x2; // 0x3ace8c
  StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x3ace90
  x3 = local_m8; // 0x3ace94
  memSet(x3, 0xb, w0); // 0x3ace98
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3acea4
  w16 = mem(x3, -1); // 0x3ace9c
  w17 = mem(x0, -1); // 0x3acea0
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x3ace9c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3acea0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x3aceb0
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x3acecc
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x3acebc
  x1 = local_m10; // 0x3aceb4
  x2 = "packetNum" /* pp+0x10b98 */; // 0x3acec4
  callIndirect(LR); // 0x3aced0
  if (w0 != w22) {
    x1 = x0; // 0x3acee4
  } else {
    x1 = 0; // 0x3acedc
  }
  x0 = local_m8; // 0x3acee8
  local_0 = x1; // 0x3aceec
  StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x3acef0
  x1 = local_m8; // 0x3acef4
  memSet(x1, 0xf, w0); // 0x3acef8
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3acf04
  w16 = mem(x1, -1); // 0x3acefc
  w17 = mem(x0, -1); // 0x3acf00
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x3acefc
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3acf00
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x3acf10
  }
  SP = FP; // 0x3acf18
  x0 = NULL; // 0x3acf14
  // frame: FP, LR, mem(SP), 0x10 // 0x3acf1c
  return;
}

// PartyInviteItem_ctor_fromJson
// raw disassembly:
//  0x422f0c: stp FP, LR, [SP, #-0x10]!
//  0x422f10: mov FP, SP
//  0x422f14: sub SP, SP, #0x10
//  0x422f18: ldr x0, [PP, #0x40]
//  0x422f1c: stur x1, [FP, #-8]
//  0x422f20: stur x2, [FP, #-0x10]
//  0x422f24: ldr BARRIER, [THR, #0x38]
//  0x422f28: cmp SP, BARRIER
//  0x422f2c: b.ls #0x422f88
//  0x422f30: stur w0, [x1, #7]
//  0x422f34: stur w0, [x1, #0xb]
//  0x422f38: bl #0x4234f8
//  0x422f3c: mov x1, x0
//  0x422f40: ldur x2, [FP, #-0x10]
//  0x422f44: stur x0, [FP, #-0x10]
//  0x422f48: bl #0x422f90
//  0x422f4c: ldur x0, [FP, #-0x10]
//  0x422f50: ldur x1, [FP, #-8]
//  0x422f54: stur w0, [x1, #7]
//  0x422f58: ldurb w16, [x1, #-1]
//  0x422f5c: ldurb w17, [x0, #-1]
//  0x422f60: and BARRIER, x17, BARRIER, lsr #2
//  0x422f64: tst BARRIER, HEAP, lsr #32
//  0x422f68: b.eq #0x422f70
//  0x422f6c: bl #0x61e04c
//  0x422f70: add x2, NULL, #0x30
//  0x422f74: stur w2, [x1, #0xb]
//  0x422f78: mov x0, NULL
//  0x422f7c: mov SP, FP
//  0x422f80: ldp FP, LR, [SP], #0x10
//  0x422f84: ret 
//  0x422f88: bl #0x61fa28
//  0x422f8c: b #0x422f30
//
dynamic PartyInviteItem_ctor_fromJson() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x422f0c
  // frame: FP = SP // 0x422f10
  // frame: SP = SP - 0x10 // 0x422f14
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x422f18
  local_m8 = x1; // 0x422f1c
  local_m10 = x2; // 0x422f20
  BARRIER = mem(THR, 0x38); // 0x422f24
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x422f88
  }
  memSet(x1, 7, w0); // 0x422f30
  memSet(x1, 0xb, w0); // 0x422f34
  AllocationStub_ChatItemInfo() /* 0x4234f8 */; // 0x422f38
  x1 = x0; // 0x422f3c
  x2 = local_m10; // 0x422f40
  local_m10 = x0; // 0x422f44
  ChatItemInfo_ctor_fromJson() /* 0x422f90 */; // 0x422f48
  x0 = local_m10; // 0x422f4c
  x1 = local_m8; // 0x422f50
  memSet(x1, 7, w0); // 0x422f54
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x422f60
  w16 = mem(x1, -1); // 0x422f58
  w17 = mem(x0, -1); // 0x422f5c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x422f58
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x422f5c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x422f6c
  }
  x2 = NULL + 0x30; // 0x422f70
  memSet(x1, 0xb, w2); // 0x422f74
  SP = FP; // 0x422f7c
  x0 = NULL; // 0x422f78
  // frame: FP, LR, mem(SP), 0x10 // 0x422f80
  return;
}

// PartyInviteItem_get_hashCode
// raw disassembly:
//  0x489b50: stp FP, LR, [SP, #-0x10]!
//  0x489b54: mov FP, SP
//  0x489b58: sub SP, SP, #8
//  0x489b5c: ldr BARRIER, [THR, #0x38]
//  0x489b60: cmp SP, BARRIER
//  0x489b64: b.ls #0x489bd0
//  0x489b68: ldr x0, [FP, #0x10]
//  0x489b6c: ldur w1, [x0, #7]
//  0x489b70: add x1, x1, HEAP, lsl #32
//  0x489b74: ldr BARRIER, [PP, #0x40]
//  0x489b78: cmp w1, w16
//  0x489b7c: b.eq #0x489bd8
//  0x489b80: ldur w0, [x1, #7]
//  0x489b84: add x0, x0, HEAP, lsl #32
//  0x489b88: ldr BARRIER, [PP, #0x40]
//  0x489b8c: cmp w0, w16
//  0x489b90: b.eq #0x489be4
//  0x489b94: ldur w1, [x0, #7]
//  0x489b98: add x1, x1, HEAP, lsl #32
//  0x489b9c: ldr BARRIER, [PP, #0x40]
//  0x489ba0: cmp w1, w16
//  0x489ba4: b.eq #0x489bf0
//  0x489ba8: ldur x0, [x1, #-1]
//  0x489bac: ubfx x0, x0, #0xc, #0x14
//  0x489bb0: str x1, [SP]
//  0x489bb4: mov x17, #0x4d80
//  0x489bb8: add LR, x0, x17
//  0x489bbc: ldr LR, [x21, LR, lsl #3]
//  0x489bc0: blr LR
//  0x489bc4: mov SP, FP
//  0x489bc8: ldp FP, LR, [SP], #0x10
//  0x489bcc: ret 
//  0x489bd0: bl #0x61fa28
//  0x489bd4: b #0x489b68
//  0x489bd8: add x9, PP, #0x11, lsl #12
//  0x489bdc: ldr x9, [x9, #0x738]
//  0x489be0: bl #0x620258
//  0x489be4: add x9, PP, #0x11, lsl #12
//  0x489be8: ldr x9, [x9, #0x740]
//  0x489bec: bl #0x620258
//  0x489bf0: add x9, PP, #0x11, lsl #12
//  0x489bf4: ldr x9, [x9, #0x748]
//  0x489bf8: bl #0x620258
//
dynamic PartyInviteItem_get_hashCode() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x489b50
  BARRIER = mem(THR, 0x38); // 0x489b5c
  // frame: FP = SP // 0x489b54
  // frame: SP = SP - 8 // 0x489b58
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x489bd0
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x489b74
  w1 = mem((local_10), 7); /* PartyInviteItem.item (off 0x8) */  // 0x489b6c
  x0 = local_10; // 0x489b68
  x1 = ((mem((local_10), 7)) & 0xffffffff) + (HEAP << 32); /* PartyInviteItem.item (off 0x8) */  // 0x489b70
  if (w1 == w16) {
    x9 = mem((PP + 0x11000), 0x738) /* Field */; // 0x489bdc
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x489be0
  } else {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x489b88
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x489b84
    if (w0 == w16) {
      x9 = mem((PP + 0x11000), 0x740) /* Field */; // 0x489be8
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x489bec
    } else {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x489b9c
      x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x489b98
      if (w1 != w16) {
        x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x489bac
        local_0 = x1; // 0x489bb0
        LR = mem(x21, ((x0 + x17) << 3)); // 0x489bbc
        x17 = 19840; // 0x489bb4
        callIndirect(LR); // 0x489bc0
        SP = FP; // 0x489bc4
        // frame: FP, LR, mem(SP), 0x10 // 0x489bc8
        return;
      }
    }
    x9 = mem((PP + 0x11000), 0x748) /* Field */; // 0x489bf4
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x489bf8
  }
}

// PartyInviteItem_op_eq
// raw disassembly:
//  0x5780a8: stp FP, LR, [SP, #-0x10]!
//  0x5780ac: mov FP, SP
//  0x5780b0: sub SP, SP, #0x10
//  0x5780b4: ldr BARRIER, [THR, #0x38]
//  0x5780b8: cmp SP, BARRIER
//  0x5780bc: b.ls #0x5781a0
//  0x5780c0: ldr x0, [FP, #0x10]
//  0x5780c4: cmp w0, w22
//  0x5780c8: b.ne #0x5780dc
//  0x5780cc: add x0, NULL, #0x30
//  0x5780d0: mov SP, FP
//  0x5780d4: ldp FP, LR, [SP], #0x10
//  0x5780d8: ret 
//  0x5780dc: mov x1, #0x3c
//  0x5780e0: tbz w0, #0, #0x5780ec
//  0x5780e4: ldur x1, [x0, #-1]
//  0x5780e8: ubfx x1, x1, #0xc, #0x14
//  0x5780ec: cmp x1, #0xee
//  0x5780f0: b.ne #0x578190
//  0x5780f4: ldr x1, [FP, #0x18]
//  0x5780f8: ldur w2, [x0, #7]
//  0x5780fc: add x2, x2, HEAP, lsl #32
//  0x578100: ldr BARRIER, [PP, #0x40]
//  0x578104: cmp w2, w16
//  0x578108: b.eq #0x5781a8
//  0x57810c: ldur w0, [x2, #7]
//  0x578110: add x0, x0, HEAP, lsl #32
//  0x578114: ldr BARRIER, [PP, #0x40]
//  0x578118: cmp w0, w16
//  0x57811c: b.eq #0x5781b4
//  0x578120: ldur w2, [x0, #7]
//  0x578124: add x2, x2, HEAP, lsl #32
//  0x578128: ldr BARRIER, [PP, #0x40]
//  0x57812c: cmp w2, w16
//  0x578130: b.eq #0x5781c0
//  0x578134: ldur w0, [x1, #7]
//  0x578138: add x0, x0, HEAP, lsl #32
//  0x57813c: ldr BARRIER, [PP, #0x40]
//  0x578140: cmp w0, w16
//  0x578144: b.eq #0x5781cc
//  0x578148: ldur w1, [x0, #7]
//  0x57814c: add x1, x1, HEAP, lsl #32
//  0x578150: ldr BARRIER, [PP, #0x40]
//  0x578154: cmp w1, w16
//  0x578158: b.eq #0x5781d8
//  0x57815c: ldur w0, [x1, #7]
//  0x578160: add x0, x0, HEAP, lsl #32
//  0x578164: ldr BARRIER, [PP, #0x40]
//  0x578168: cmp w0, w16
//  0x57816c: b.eq #0x5781e4
//  0x578170: ldur x1, [x2, #-1]
//  0x578174: ubfx x1, x1, #0xc, #0x14
//  0x578178: stp x0, x2, [SP]
//  0x57817c: mov x0, x1
//  0x578180: mov LR, x0
//  0x578184: ldr LR, [x21, LR, lsl #3]
//  0x578188: blr LR
//  0x57818c: b #0x578194
//  0x578190: add x0, NULL, #0x30
//  0x578194: mov SP, FP
//  0x578198: ldp FP, LR, [SP], #0x10
//  0x57819c: ret 
//  0x5781a0: bl #0x61fa28
//  0x5781a4: b #0x5780c0
//  0x5781a8: add x9, PP, #0x11, lsl #12
//  0x5781ac: ldr x9, [x9, #0x738]
//  0x5781b0: bl #0x620258
//  0x5781b4: add x9, PP, #0x11, lsl #12
//  0x5781b8: ldr x9, [x9, #0x740]
//  0x5781bc: bl #0x620258
//  0x5781c0: add x9, PP, #0x11, lsl #12
//  0x5781c4: ldr x9, [x9, #0x748]
//  0x5781c8: bl #0x620258
//  0x5781cc: add x9, PP, #0x11, lsl #12
//  0x5781d0: ldr x9, [x9, #0x738]
//  0x5781d4: bl #0x620258
//  0x5781d8: add x9, PP, #0x11, lsl #12
//  0x5781dc: ldr x9, [x9, #0x740]
//  0x5781e0: bl #0x620258
//  0x5781e4: add x9, PP, #0x11, lsl #12
//  0x5781e8: ldr x9, [x9, #0x748]
//  0x5781ec: bl #0x620258
//
dynamic PartyInviteItem_op_eq() {
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
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x5780a8
  BARRIER = mem(THR, 0x38); // 0x5780b4
  // frame: FP = SP // 0x5780ac
  // frame: SP = SP - 0x10 // 0x5780b0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x5781a0
  }
  x0 = local_10; // 0x5780c0
  if (w0 == w22) {
    SP = FP; // 0x5780d0
    x0 = NULL + 0x30; // 0x5780cc
    // frame: FP, LR, mem(SP), 0x10 // 0x5780d4
    return;
  }
  x1 = 60; // 0x5780dc
  if (x0 & (1 << 0) == 0) {
  } else {
    x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x5780e8
  }
  if (x1 != 0xee) {
    x0 = NULL + 0x30; // 0x578190
  } else {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x578100
    w2 = mem(x0, 7); /* PartyInviteItem.item (off 0x8) */  // 0x5780f8
    x1 = local_18; // 0x5780f4
    x2 = ((mem(x0, 7)) & 0xffffffff) + (HEAP << 32); /* PartyInviteItem.item (off 0x8) */  // 0x5780fc
    if (w2 == w16) {
      x9 = mem((PP + 0x11000), 0x738) /* Field */; // 0x5781ac
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x5781b0
    } else {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x578114
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x578110
      if (w0 == w16) {
        x9 = mem((PP + 0x11000), 0x740) /* Field */; // 0x5781b8
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x5781bc
      } else {
        BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x578128
        x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x578124
        if (w2 == w16) {
          x9 = mem((PP + 0x11000), 0x748) /* Field */; // 0x5781c4
          LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x5781c8
        } else {
          BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x57813c
          x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x578138
          if (w0 == w16) {
            x9 = mem((PP + 0x11000), 0x738) /* Field */; // 0x5781d0
            LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x5781d4
          } else {
            BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x578150
            x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x57814c
            if (w1 == w16) {
              x9 = mem((PP + 0x11000), 0x740) /* Field */; // 0x5781dc
              LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x5781e0
            } else {
              BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x578164
              x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x578160
              if (w0 != w16) {
                x1 = ((mem(x2, -1)) >> 12) & 0xfffff; // 0x578174
                // frame: x0, x2, mem(SP) // 0x578178
                LR = mem(x21, (LR << 3)); // 0x578184
                x0 = x1; // 0x57817c
                callIndirect(LR); // 0x578188
                SP = FP; // 0x578194
                // frame: FP, LR, mem(SP), 0x10 // 0x578198
                return;
              }
            }
            x9 = mem((PP + 0x11000), 0x748) /* Field */; // 0x5781e8
            LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x5781ec
          }
        }
      }
    }
  }
}

// PartyRoomInfo_ctor_fromJson
// raw disassembly:
//  0x428474: stp FP, LR, [SP, #-0x10]!
//  0x428478: mov FP, SP
//  0x42847c: sub SP, SP, #0x28
//  0x428480: ldr x0, [PP, #0x40]
//  0x428484: mov x4, x1
//  0x428488: mov x3, x2
//  0x42848c: stur x1, [FP, #-8]
//  0x428490: stur x2, [FP, #-0x10]
//  0x428494: ldr BARRIER, [THR, #0x38]
//  0x428498: cmp SP, BARRIER
//  0x42849c: b.ls #0x428954
//  0x4284a0: stur w0, [x4, #7]
//  0x4284a4: stur w0, [x4, #0xb]
//  0x4284a8: stur w0, [x4, #0xf]
//  0x4284ac: stur w0, [x4, #0x13]
//  0x4284b0: stur w0, [x4, #0x17]
//  0x4284b4: stur w0, [x4, #0x1b]
//  0x4284b8: ldur x0, [x3, #-1]
//  0x4284bc: ubfx x0, x0, #0xc, #0x14
//  0x4284c0: mov x1, x3
//  0x4284c4: add x2, PP, #0xe, lsl #12
//  0x4284c8: ldr x2, [x2, #0x518]
//  0x4284cc: sub LR, x0, #1, lsl #12
//  0x4284d0: ldr LR, [x21, LR, lsl #3]
//  0x4284d4: blr LR
//  0x4284d8: cmp w0, w22
//  0x4284dc: b.ne #0x4284e8
//  0x4284e0: mov x0, NULL
//  0x4284e4: b #0x428514
//  0x4284e8: mov x1, #0x3c
//  0x4284ec: tbz w0, #0, #0x4284f8
//  0x4284f0: ldur x1, [x0, #-1]
//  0x4284f4: ubfx x1, x1, #0xc, #0x14
//  0x4284f8: str x0, [SP]
//  0x4284fc: mov x0, x1
//  0x428500: ldr x4, [PP, #0x3a8]
//  0x428504: mov x17, #0x3e07
//  0x428508: add LR, x0, x17
//  0x42850c: ldr LR, [x21, LR, lsl #3]
//  0x428510: blr LR
//  0x428514: cmp w0, w22
//  0x428518: b.ne #0x428520
//  0x42851c: ldr x0, [PP, #0x148]
//  0x428520: ldur x4, [FP, #-8]
//  0x428524: ldur x3, [FP, #-0x10]
//  0x428528: stur w0, [x4, #7]
//  0x42852c: ldurb w16, [x4, #-1]
//  0x428530: ldurb w17, [x0, #-1]
//  0x428534: and BARRIER, x17, BARRIER, lsr #2
//  0x428538: tst BARRIER, HEAP, lsr #32
//  0x42853c: b.eq #0x428544
//  0x428540: bl #0x61e0ac
//  0x428544: ldur x0, [x3, #-1]
//  0x428548: ubfx x0, x0, #0xc, #0x14
//  0x42854c: mov x1, x3
//  0x428550: add x2, PP, #0x10, lsl #12
//  0x428554: ldr x2, [x2, #0xf10]
//  0x428558: sub LR, x0, #1, lsl #12
//  0x42855c: ldr LR, [x21, LR, lsl #3]
//  0x428560: blr LR
//  0x428564: cmp w0, w22
//  0x428568: b.eq #0x428598
//  0x42856c: mov x1, #0x3c
//  0x428570: tbz w0, #0, #0x42857c
//  0x428574: ldur x1, [x0, #-1]
//  0x428578: ubfx x1, x1, #0xc, #0x14
//  0x42857c: str x0, [SP]
//  0x428580: mov x0, x1
//  0x428584: ldr x4, [PP, #0x3a8]
//  0x428588: mov x17, #0x3e07
//  0x42858c: add LR, x0, x17
//  0x428590: ldr LR, [x21, LR, lsl #3]
//  0x428594: blr LR
//  0x428598: ldur x3, [FP, #-0x10]
//  0x42859c: ldur x0, [x3, #-1]
//  0x4285a0: ubfx x0, x0, #0xc, #0x14
//  0x4285a4: mov x1, x3
//  0x4285a8: add x2, PP, #0x10, lsl #12
//  0x4285ac: ldr x2, [x2, #0xf18]
//  0x4285b0: sub LR, x0, #1, lsl #12
//  0x4285b4: ldr LR, [x21, LR, lsl #3]
//  0x4285b8: blr LR
//  0x4285bc: cmp w0, w22
//  0x4285c0: b.ne #0x4285cc
//  0x4285c4: ldr x5, [PP, #0x148]
//  0x4285c8: b #0x4285d0
//  0x4285cc: mov x5, x0
//  0x4285d0: ldur x4, [FP, #-8]
//  0x4285d4: ldur x3, [FP, #-0x10]
//  0x4285d8: mov x0, x5
//  0x4285dc: stur x5, [FP, #-0x18]
//  0x4285e0: mov x2, NULL
//  0x4285e4: mov x1, NULL
//  0x4285e8: mov x4, #0x3c
//  0x4285ec: tbz w0, #0, #0x4285f8
//  0x4285f0: ldur x4, [x0, #-1]
//  0x4285f4: ubfx x4, x4, #0xc, #0x14
//  0x4285f8: sub x4, x4, #0x5e
//  0x4285fc: cmp x4, #1
//  0x428600: b.ls #0x428614
//  0x428604: ldr x8, [PP, #0x2f8]
//  0x428608: add x3, PP, #0x10, lsl #12
//  0x42860c: ldr x3, [x3, #0xf20]
//  0x428610: bl #0x62a0c0
//  0x428614: ldur x0, [FP, #-0x18]
//  0x428618: ldur x3, [FP, #-8]
//  0x42861c: stur w0, [x3, #0xb]
//  0x428620: ldurb w16, [x3, #-1]
//  0x428624: ldurb w17, [x0, #-1]
//  0x428628: and BARRIER, x17, BARRIER, lsr #2
//  0x42862c: tst BARRIER, HEAP, lsr #32
//  0x428630: b.eq #0x428638
//  0x428634: bl #0x61e08c
//  0x428638: ldur x4, [FP, #-0x10]
//  0x42863c: ldur x0, [x4, #-1]
//  0x428640: ubfx x0, x0, #0xc, #0x14
//  0x428644: mov x1, x4
//  0x428648: add x2, PP, #0x10, lsl #12
//  0x42864c: ldr x2, [x2, #0xf30]
//  0x428650: sub LR, x0, #1, lsl #12
//  0x428654: ldr LR, [x21, LR, lsl #3]
//  0x428658: blr LR
//  0x42865c: cmp w0, w22
//  0x428660: b.ne #0x42866c
//  0x428664: mov x5, #0
//  0x428668: b #0x428670
//  0x42866c: mov x5, x0
//  0x428670: ldur x3, [FP, #-8]
//  0x428674: ldur x4, [FP, #-0x10]
//  0x428678: mov x0, x5
//  0x42867c: stur x5, [FP, #-0x18]
//  0x428680: mov x2, NULL
//  0x428684: mov x1, NULL
//  0x428688: tbz w0, #0, #0x4286b0
//  0x42868c: ldur x4, [x0, #-1]
//  0x428690: ubfx x4, x4, #0xc, #0x14
//  0x428694: sub x4, x4, #0x3c
//  0x428698: cmp x4, #1
//  0x42869c: b.ls #0x4286b0
//  0x4286a0: ldr x8, [PP, #0x1170]
//  0x4286a4: add x3, PP, #0x10, lsl #12
//  0x4286a8: ldr x3, [x3, #0xf38]
//  0x4286ac: bl #0x62aa34
//  0x4286b0: ldur x0, [FP, #-0x18]
//  0x4286b4: ldur x3, [FP, #-8]
//  0x4286b8: stur w0, [x3, #0xf]
//  0x4286bc: tbz w0, #0, #0x4286d8
//  0x4286c0: ldurb w16, [x3, #-1]
//  0x4286c4: ldurb w17, [x0, #-1]
//  0x4286c8: and BARRIER, x17, BARRIER, lsr #2
//  0x4286cc: tst BARRIER, HEAP, lsr #32
//  0x4286d0: b.eq #0x4286d8
//  0x4286d4: bl #0x61e08c
//  0x4286d8: ldur x4, [FP, #-0x10]
//  0x4286dc: ldur x0, [x4, #-1]
//  0x4286e0: ubfx x0, x0, #0xc, #0x14
//  0x4286e4: mov x1, x4
//  0x4286e8: add x2, PP, #0x10, lsl #12
//  0x4286ec: ldr x2, [x2, #0xf48]
//  0x4286f0: sub LR, x0, #1, lsl #12
//  0x4286f4: ldr LR, [x21, LR, lsl #3]
//  0x4286f8: blr LR
//  0x4286fc: cmp w0, w22
//  0x428700: b.ne #0x42871c
//  0x428704: ldr BARRIER, [PP, #0xbf0]
//  0x428708: ldr LR, [THR, #0x90]
//  0x42870c: stp LR, BARRIER, [SP]
//  0x428710: bl #0x27c0c8
//  0x428714: mov x5, x0
//  0x428718: b #0x428720
//  0x42871c: mov x5, x0
//  0x428720: ldur x3, [FP, #-8]
//  0x428724: ldur x4, [FP, #-0x10]
//  0x428728: mov x0, x5
//  0x42872c: stur x5, [FP, #-0x18]
//  0x428730: mov x2, NULL
//  0x428734: mov x1, NULL
//  0x428738: ldr x8, [PP, #0x3cd0]
//  0x42873c: add x3, PP, #0x10, lsl #12
//  0x428740: ldr x3, [x3, #0xf50]
//  0x428744: bl #0x2b15f0
//  0x428748: bl #0x42906c
//  0x42874c: mov x1, x0
//  0x428750: ldur x2, [FP, #-0x18]
//  0x428754: stur x0, [FP, #-0x18]
//  0x428758: bl #0x428dd4
//  0x42875c: ldur x0, [FP, #-0x18]
//  0x428760: ldur x3, [FP, #-8]
//  0x428764: stur w0, [x3, #0x13]
//  0x428768: ldurb w16, [x3, #-1]
//  0x42876c: ldurb w17, [x0, #-1]
//  0x428770: and BARRIER, x17, BARRIER, lsr #2
//  0x428774: tst BARRIER, HEAP, lsr #32
//  0x428778: b.eq #0x428780
//  0x42877c: bl #0x61e08c
//  0x428780: ldur x4, [FP, #-0x10]
//  0x428784: ldur x0, [x4, #-1]
//  0x428788: ubfx x0, x0, #0xc, #0x14
//  0x42878c: mov x1, x4
//  0x428790: add x2, PP, #0x10, lsl #12
//  0x428794: ldr x2, [x2, #0xf60]
//  0x428798: sub LR, x0, #1, lsl #12
//  0x42879c: ldr LR, [x21, LR, lsl #3]
//  0x4287a0: blr LR
//  0x4287a4: cmp w0, w22
//  0x4287a8: b.ne #0x4287c4
//  0x4287ac: ldr BARRIER, [PP, #0xbf0]
//  0x4287b0: ldr LR, [THR, #0x90]
//  0x4287b4: stp LR, BARRIER, [SP]
//  0x4287b8: bl #0x27c0c8
//  0x4287bc: mov x5, x0
//  0x4287c0: b #0x4287c8
//  0x4287c4: mov x5, x0
//  0x4287c8: ldur x3, [FP, #-8]
//  0x4287cc: ldur x4, [FP, #-0x10]
//  0x4287d0: mov x0, x5
//  0x4287d4: stur x5, [FP, #-0x18]
//  0x4287d8: mov x2, NULL
//  0x4287dc: mov x1, NULL
//  0x4287e0: ldr x8, [PP, #0x3cd0]
//  0x4287e4: add x3, PP, #0x10, lsl #12
//  0x4287e8: ldr x3, [x3, #0xf68]
//  0x4287ec: bl #0x2b15f0
//  0x4287f0: bl #0x428dc8
//  0x4287f4: mov x1, x0
//  0x4287f8: ldur x2, [FP, #-0x18]
//  0x4287fc: stur x0, [FP, #-0x18]
//  0x428800: bl #0x428c84
//  0x428804: ldur x0, [FP, #-0x18]
//  0x428808: ldur x3, [FP, #-8]
//  0x42880c: stur w0, [x3, #0x17]
//  0x428810: ldurb w16, [x3, #-1]
//  0x428814: ldurb w17, [x0, #-1]
//  0x428818: and BARRIER, x17, BARRIER, lsr #2
//  0x42881c: tst BARRIER, HEAP, lsr #32
//  0x428820: b.eq #0x428828
//  0x428824: bl #0x61e08c
//  0x428828: ldur x4, [FP, #-0x10]
//  0x42882c: ldur x0, [x4, #-1]
//  0x428830: ubfx x0, x0, #0xc, #0x14
//  0x428834: mov x1, x4
//  0x428838: add x2, PP, #0x10, lsl #12
//  0x42883c: ldr x2, [x2, #0xf78]
//  0x428840: sub LR, x0, #1, lsl #12
//  0x428844: ldr LR, [x21, LR, lsl #3]
//  0x428848: blr LR
//  0x42884c: cmp w0, w22
//  0x428850: b.ne #0x42886c
//  0x428854: ldr BARRIER, [PP, #0xbf0]
//  0x428858: ldr LR, [THR, #0x90]
//  0x42885c: stp LR, BARRIER, [SP]
//  0x428860: bl #0x27c0c8
//  0x428864: mov x5, x0
//  0x428868: b #0x428870
//  0x42886c: mov x5, x0
//  0x428870: ldur x3, [FP, #-8]
//  0x428874: ldur x4, [FP, #-0x10]
//  0x428878: mov x0, x5
//  0x42887c: stur x5, [FP, #-0x18]
//  0x428880: mov x2, NULL
//  0x428884: mov x1, NULL
//  0x428888: ldr x8, [PP, #0x3cd0]
//  0x42888c: add x3, PP, #0x10, lsl #12
//  0x428890: ldr x3, [x3, #0xf80]
//  0x428894: bl #0x2b15f0
//  0x428898: bl #0x428c78
//  0x42889c: mov x1, x0
//  0x4288a0: ldur x2, [FP, #-0x18]
//  0x4288a4: stur x0, [FP, #-0x18]
//  0x4288a8: bl #0x428acc
//  0x4288ac: ldur x0, [FP, #-0x18]
//  0x4288b0: ldur x1, [FP, #-8]
//  0x4288b4: stur w0, [x1, #0x1b]
//  0x4288b8: ldurb w16, [x1, #-1]
//  0x4288bc: ldurb w17, [x0, #-1]
//  0x4288c0: and BARRIER, x17, BARRIER, lsr #2
//  0x4288c4: tst BARRIER, HEAP, lsr #32
//  0x4288c8: b.eq #0x4288d0
//  0x4288cc: bl #0x61e04c
//  0x4288d0: ldur x1, [FP, #-0x10]
//  0x4288d4: ldur x0, [x1, #-1]
//  0x4288d8: ubfx x0, x0, #0xc, #0x14
//  0x4288dc: add x2, PP, #0x10, lsl #12
//  0x4288e0: ldr x2, [x2, #0xf90]
//  0x4288e4: sub LR, x0, #1, lsl #12
//  0x4288e8: ldr LR, [x21, LR, lsl #3]
//  0x4288ec: blr LR
//  0x4288f0: cmp w0, w22
//  0x4288f4: b.ne #0x428910
//  0x4288f8: ldr BARRIER, [PP, #0xbf0]
//  0x4288fc: ldr LR, [THR, #0x90]
//  0x428900: stp LR, BARRIER, [SP]
//  0x428904: bl #0x27c0c8
//  0x428908: mov x3, x0
//  0x42890c: b #0x428914
//  0x428910: mov x3, x0
//  0x428914: mov x0, x3
//  0x428918: stur x3, [FP, #-8]
//  0x42891c: mov x2, NULL
//  0x428920: mov x1, NULL
//  0x428924: ldr x8, [PP, #0x3cd0]
//  0x428928: add x3, PP, #0x10, lsl #12
//  0x42892c: ldr x3, [x3, #0xf98]
//  0x428930: bl #0x2b15f0
//  0x428934: bl #0x428ac0
//  0x428938: mov x1, x0
//  0x42893c: ldur x2, [FP, #-8]
//  0x428940: bl #0x42895c
//  0x428944: mov x0, NULL
//  0x428948: mov SP, FP
//  0x42894c: ldp FP, LR, [SP], #0x10
//  0x428950: ret 
//  0x428954: bl #0x61fa28
//  0x428958: b #0x4284a0
//
dynamic PartyRoomInfo_ctor_fromJson() {
  dynamic BARRIER;
  dynamic FP;
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
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x428474
  // frame: FP = SP // 0x428478
  // frame: SP = SP - 0x28 // 0x42847c
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x428480
  x3 = x2; // 0x428488
  x4 = x1; // 0x428484
  local_m8 = x1; // 0x42848c
  local_m10 = x2; // 0x428490
  BARRIER = mem(THR, 0x38); // 0x428494
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x428954
  }
  memSet(x4, 7, w0); // 0x4284a0
  memSet(x4, 0xb, w0); // 0x4284a4
  memSet(x4, 0xf, w0); // 0x4284a8
  memSet(x4, 0x13, w0); // 0x4284ac
  memSet(x4, 0x17, w0); // 0x4284b0
  memSet(x4, 0x1b, w0); // 0x4284b4
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4284d0
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x4284bc
  x1 = x3; // 0x4284c0
  x2 = "id" /* pp+0xe518 */; // 0x4284c8
  callIndirect(LR); // 0x4284d4
  if (w0 != w22) {
    x1 = 60; // 0x4284e8
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4284f4
    }
    local_0 = x0; // 0x4284f8
    LR = mem(x21, ((x0 + x17) << 3)); // 0x42850c
    x0 = x1; // 0x4284fc
    x17 = 15879; // 0x428504
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x428500
    callIndirect(LR); // 0x428510
  } else {
    x0 = NULL; // 0x4284e0
  }
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x42851c
  }
  x3 = local_m10; // 0x428524
  x4 = local_m8; // 0x428520
  memSet(x4, 7, w0); // 0x428528
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x428534
  w16 = mem(x4, -1); // 0x42852c
  w17 = mem(x0, -1); // 0x428530
  x16 = (mem(x4, -1)) & 0xffffffff; // 0x42852c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x428530
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x4() /* 0x61e0ac */; // 0x428540
  }
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x42855c
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x428548
  x1 = x3; // 0x42854c
  x2 = "createUserId" /* pp+0x10f10 */; // 0x428554
  callIndirect(LR); // 0x428560
  if (w0 == w22) {
  } else {
    x1 = 60; // 0x42856c
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x428578
    }
    local_0 = x0; // 0x42857c
    LR = mem(x21, ((x0 + x17) << 3)); // 0x428590
    x0 = x1; // 0x428580
    x17 = 15879; // 0x428588
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x428584
    callIndirect(LR); // 0x428594
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4285b4
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4285a0
  x1 = local_m10; // 0x4285a4
  x2 = "topic" /* pp+0x10f18 */; // 0x4285ac
  x3 = local_m10; // 0x428598
  callIndirect(LR); // 0x4285b8
  if (w0 != w22) {
    x5 = x0; // 0x4285cc
  } else {
    x5 = "" /* pp+0x148 */; // 0x4285c4
  }
  x0 = x5; // 0x4285d8
  x3 = local_m10; // 0x4285d4
  x4 = local_m8; // 0x4285d0
  local_m18 = x5; // 0x4285dc
  x1 = NULL; // 0x4285e4
  x2 = NULL; // 0x4285e0
  x4 = 60; // 0x4285e8
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4285f4
  }
  x4 = x4 - 0x5e; // 0x4285f8
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x10000), 0xf20) /* Obj!? */; // 0x42860c
    x8 = mem(PP, 0x2f8) /* Type */; // 0x428604
    sub_0x62a0c0(); // 0x428610
  }
  x0 = local_m18; // 0x428614
  x3 = local_m8; // 0x428618
  memSet(x3, 0xb, w0); // 0x42861c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x428628
  w16 = mem(x3, -1); // 0x428620
  w17 = mem(x0, -1); // 0x428624
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x428620
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x428624
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x428634
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x428654
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x428640
  x1 = local_m10; // 0x428644
  x2 = "roomerNum" /* pp+0x10f30 */; // 0x42864c
  x4 = local_m10; // 0x428638
  callIndirect(LR); // 0x428658
  if (w0 != w22) {
    x5 = x0; // 0x42866c
  } else {
    x5 = 0; // 0x428664
  }
  x0 = x5; // 0x428678
  x3 = local_m8; // 0x428670
  x4 = local_m10; // 0x428674
  local_m18 = x5; // 0x42867c
  x1 = NULL; // 0x428684
  x2 = NULL; // 0x428680
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x428694
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x10000), 0xf38) /* Obj!? */; // 0x4286a8
      x8 = mem(PP, 0x1170) /* Type */; // 0x4286a0
      sub_0x62aa34(); // 0x4286ac
    }
  }
  x0 = local_m18; // 0x4286b0
  x3 = local_m8; // 0x4286b4
  memSet(x3, 0xf, w0); // 0x4286b8
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4286c8
    w17 = mem(x0, -1); // 0x4286c4
    x16 = w16 & 0xffffffff; // 0x4286c0
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4286c4
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x3() /* 0x61e08c */; // 0x4286d4
    }
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4286f4
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4286e0
  x1 = local_m10; // 0x4286e4
  x2 = "owner" /* pp+0x10f48 */; // 0x4286ec
  x4 = local_m10; // 0x4286d8
  callIndirect(LR); // 0x4286f8
  if (w0 != w22) {
    x5 = x0; // 0x42871c
  } else {
    BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x428704
    LR = mem(THR, 0x90); // 0x428708
    // frame: LR, BARRIER, mem(SP) // 0x42870c
    Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x428710
    x5 = x0; // 0x428714
  }
  x0 = x5; // 0x428728
  x3 = local_m8; // 0x428720
  x4 = local_m10; // 0x428724
  local_m18 = x5; // 0x42872c
  x1 = NULL; // 0x428734
  x2 = NULL; // 0x428730
  x3 = mem((PP + 0x10000), 0xf50) /* Obj!? */; // 0x428740
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x428738
  sub_0x2b15f0(); // 0x428744
  AllocationStub_PartyRoomOwner() /* 0x42906c */; // 0x428748
  x1 = x0; // 0x42874c
  x2 = local_m18; // 0x428750
  local_m18 = x0; // 0x428754
  PartyRoomOwner_ctor_fromJson() /* 0x428dd4 */; // 0x428758
  x0 = local_m18; // 0x42875c
  x3 = local_m8; // 0x428760
  memSet(x3, 0x13, w0); // 0x428764
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x428770
  w16 = mem(x3, -1); // 0x428768
  w17 = mem(x0, -1); // 0x42876c
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x428768
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x42876c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x42877c
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x42879c
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x428788
  x1 = local_m10; // 0x42878c
  x2 = "tag" /* pp+0x10f60 */; // 0x428794
  x4 = local_m10; // 0x428780
  callIndirect(LR); // 0x4287a0
  if (w0 != w22) {
    x5 = x0; // 0x4287c4
  } else {
    BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x4287ac
    LR = mem(THR, 0x90); // 0x4287b0
    // frame: LR, BARRIER, mem(SP) // 0x4287b4
    Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x4287b8
    x5 = x0; // 0x4287bc
  }
  x0 = x5; // 0x4287d0
  x3 = local_m8; // 0x4287c8
  x4 = local_m10; // 0x4287cc
  local_m18 = x5; // 0x4287d4
  x1 = NULL; // 0x4287dc
  x2 = NULL; // 0x4287d8
  x3 = mem((PP + 0x10000), 0xf68) /* Obj!? */; // 0x4287e8
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x4287e0
  sub_0x2b15f0(); // 0x4287ec
  AllocationStub_PartyRoomTag() /* 0x428dc8 */; // 0x4287f0
  x1 = x0; // 0x4287f4
  x2 = local_m18; // 0x4287f8
  local_m18 = x0; // 0x4287fc
  PartyRoomTag_ctor_fromJson() /* 0x428c84 */; // 0x428800
  x0 = local_m18; // 0x428804
  x3 = local_m8; // 0x428808
  memSet(x3, 0x17, w0); // 0x42880c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x428818
  w16 = mem(x3, -1); // 0x428810
  w17 = mem(x0, -1); // 0x428814
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x428810
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x428814
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x428824
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x428844
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x428830
  x1 = local_m10; // 0x428834
  x2 = "backgroundImage" /* pp+0x10f78 */; // 0x42883c
  x4 = local_m10; // 0x428828
  callIndirect(LR); // 0x428848
  if (w0 != w22) {
    x5 = x0; // 0x42886c
  } else {
    BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x428854
    LR = mem(THR, 0x90); // 0x428858
    // frame: LR, BARRIER, mem(SP) // 0x42885c
    Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x428860
    x5 = x0; // 0x428864
  }
  x0 = x5; // 0x428878
  x3 = local_m8; // 0x428870
  x4 = local_m10; // 0x428874
  local_m18 = x5; // 0x42887c
  x1 = NULL; // 0x428884
  x2 = NULL; // 0x428880
  x3 = mem((PP + 0x10000), 0xf80) /* Obj!? */; // 0x428890
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x428888
  sub_0x2b15f0(); // 0x428894
  AllocationStub_PartyRoomBackground() /* 0x428c78 */; // 0x428898
  x1 = x0; // 0x42889c
  x2 = local_m18; // 0x4288a0
  local_m18 = x0; // 0x4288a4
  PartyRoomBackground_ctor_fromJson() /* 0x428acc */; // 0x4288a8
  x0 = local_m18; // 0x4288ac
  x1 = local_m8; // 0x4288b0
  memSet(x1, 0x1b, w0); // 0x4288b4
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4288c0
  w16 = mem(x1, -1); // 0x4288b8
  w17 = mem(x0, -1); // 0x4288bc
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4288b8
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4288bc
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4288cc
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4288e8
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4288d8
  x1 = local_m10; // 0x4288d0
  x2 = "musicStation" /* pp+0x10f90 */; // 0x4288e0
  callIndirect(LR); // 0x4288ec
  if (w0 != w22) {
    x3 = x0; // 0x428910
  } else {
    BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x4288f8
    LR = mem(THR, 0x90); // 0x4288fc
    // frame: LR, BARRIER, mem(SP) // 0x428900
    Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x428904
    x3 = x0; // 0x428908
  }
  x0 = x3; // 0x428914
  local_m8 = x3; // 0x428918
  x1 = NULL; // 0x428920
  x2 = NULL; // 0x42891c
  x3 = mem((PP + 0x10000), 0xf98) /* Obj!? */; // 0x42892c
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x428924
  sub_0x2b15f0(); // 0x428930
  AllocationStub_PartyRoomMusic() /* 0x428ac0 */; // 0x428934
  x1 = x0; // 0x428938
  x2 = local_m8; // 0x42893c
  PartyRoomMusic_ctor_fromJson() /* 0x42895c */; // 0x428940
  SP = FP; // 0x428948
  x0 = NULL; // 0x428944
  // frame: FP, LR, mem(SP), 0x10 // 0x42894c
  return;
}

// PartyRoomMusic_ctor_fromJson
// raw disassembly:
//  0x42895c: stp FP, LR, [SP, #-0x10]!
//  0x428960: mov FP, SP
//  0x428964: sub SP, SP, #8
//  0x428968: mov x3, x2
//  0x42896c: stur x2, [FP, #-8]
//  0x428970: ldr BARRIER, [THR, #0x38]
//  0x428974: cmp SP, BARRIER
//  0x428978: b.ls #0x428ab8
//  0x42897c: ldur x0, [x3, #-1]
//  0x428980: ubfx x0, x0, #0xc, #0x14
//  0x428984: mov x1, x3
//  0x428988: add x2, PP, #8, lsl #12
//  0x42898c: ldr x2, [x2, #0x198]
//  0x428990: sub LR, x0, #1, lsl #12
//  0x428994: ldr LR, [x21, LR, lsl #3]
//  0x428998: blr LR
//  0x42899c: cmp w0, w22
//  0x4289a0: b.ne #0x4289a8
//  0x4289a4: ldr x0, [PP, #0x148]
//  0x4289a8: ldur x3, [FP, #-8]
//  0x4289ac: mov x2, NULL
//  0x4289b0: mov x1, NULL
//  0x4289b4: mov x4, #0x3c
//  0x4289b8: tbz w0, #0, #0x4289c4
//  0x4289bc: ldur x4, [x0, #-1]
//  0x4289c0: ubfx x4, x4, #0xc, #0x14
//  0x4289c4: sub x4, x4, #0x5e
//  0x4289c8: cmp x4, #1
//  0x4289cc: b.ls #0x4289e0
//  0x4289d0: ldr x8, [PP, #0x2f8]
//  0x4289d4: add x3, PP, #0x10, lsl #12
//  0x4289d8: ldr x3, [x3, #0xfa8]
//  0x4289dc: bl #0x62a0c0
//  0x4289e0: ldur x3, [FP, #-8]
//  0x4289e4: ldur x0, [x3, #-1]
//  0x4289e8: ubfx x0, x0, #0xc, #0x14
//  0x4289ec: mov x1, x3
//  0x4289f0: add x2, PP, #0xf, lsl #12
//  0x4289f4: ldr x2, [x2, #0xa50]
//  0x4289f8: sub LR, x0, #1, lsl #12
//  0x4289fc: ldr LR, [x21, LR, lsl #3]
//  0x428a00: blr LR
//  0x428a04: cmp w0, w22
//  0x428a08: b.ne #0x428a10
//  0x428a0c: ldr x0, [PP, #0x148]
//  0x428a10: ldur x3, [FP, #-8]
//  0x428a14: mov x2, NULL
//  0x428a18: mov x1, NULL
//  0x428a1c: mov x4, #0x3c
//  0x428a20: tbz w0, #0, #0x428a2c
//  0x428a24: ldur x4, [x0, #-1]
//  0x428a28: ubfx x4, x4, #0xc, #0x14
//  0x428a2c: sub x4, x4, #0x5e
//  0x428a30: cmp x4, #1
//  0x428a34: b.ls #0x428a48
//  0x428a38: ldr x8, [PP, #0x2f8]
//  0x428a3c: add x3, PP, #0x10, lsl #12
//  0x428a40: ldr x3, [x3, #0xfb8]
//  0x428a44: bl #0x62a0c0
//  0x428a48: ldur x1, [FP, #-8]
//  0x428a4c: ldur x0, [x1, #-1]
//  0x428a50: ubfx x0, x0, #0xc, #0x14
//  0x428a54: add x2, PP, #0x10, lsl #12
//  0x428a58: ldr x2, [x2, #0xfc8]
//  0x428a5c: sub LR, x0, #1, lsl #12
//  0x428a60: ldr LR, [x21, LR, lsl #3]
//  0x428a64: blr LR
//  0x428a68: cmp w0, w22
//  0x428a6c: b.ne #0x428a74
//  0x428a70: ldr x0, [PP, #0x148]
//  0x428a74: mov x2, NULL
//  0x428a78: mov x1, NULL
//  0x428a7c: mov x4, #0x3c
//  0x428a80: tbz w0, #0, #0x428a8c
//  0x428a84: ldur x4, [x0, #-1]
//  0x428a88: ubfx x4, x4, #0xc, #0x14
//  0x428a8c: sub x4, x4, #0x5e
//  0x428a90: cmp x4, #1
//  0x428a94: b.ls #0x428aa8
//  0x428a98: ldr x8, [PP, #0x2f8]
//  0x428a9c: add x3, PP, #0x10, lsl #12
//  0x428aa0: ldr x3, [x3, #0xfd0]
//  0x428aa4: bl #0x62a0c0
//  0x428aa8: mov x0, NULL
//  0x428aac: mov SP, FP
//  0x428ab0: ldp FP, LR, [SP], #0x10
//  0x428ab4: ret 
//  0x428ab8: bl #0x61fa28
//  0x428abc: b #0x42897c
//
dynamic PartyRoomMusic_ctor_fromJson() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42895c
  // frame: FP = SP // 0x428960
  // frame: SP = SP - 8 // 0x428964
  x3 = x2; // 0x428968
  local_m8 = x2; // 0x42896c
  BARRIER = mem(THR, 0x38); // 0x428970
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x428ab8
  }
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x428994
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x428980
  x1 = x3; // 0x428984
  x2 = "name" /* pp+0x8198 */; // 0x42898c
  callIndirect(LR); // 0x428998
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x4289a4
  }
  x1 = NULL; // 0x4289b0
  x2 = NULL; // 0x4289ac
  x3 = local_m8; // 0x4289a8
  x4 = 60; // 0x4289b4
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4289c0
  }
  x4 = x4 - 0x5e; // 0x4289c4
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x10000), 0xfa8) /* Obj!? */; // 0x4289d8
    x8 = mem(PP, 0x2f8) /* Type */; // 0x4289d0
    sub_0x62a0c0(); // 0x4289dc
  }
  LR = mem(x21, ((((mem((local_m8), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4289fc
  x0 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x4289e8
  x1 = local_m8; // 0x4289ec
  x2 = "imageUrl" /* pp+0xfa50 */; // 0x4289f4
  x3 = local_m8; // 0x4289e0
  callIndirect(LR); // 0x428a00
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x428a0c
  }
  x1 = NULL; // 0x428a18
  x2 = NULL; // 0x428a14
  x3 = local_m8; // 0x428a10
  x4 = 60; // 0x428a1c
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x428a28
  }
  x4 = x4 - 0x5e; // 0x428a2c
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x10000), 0xfb8) /* Obj!? */; // 0x428a40
    x8 = mem(PP, 0x2f8) /* Type */; // 0x428a38
    sub_0x62a0c0(); // 0x428a44
  }
  LR = mem(x21, ((((mem((local_m8), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x428a60
  x0 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x428a50
  x1 = local_m8; // 0x428a48
  x2 = "musicUrl" /* pp+0x10fc8 */; // 0x428a58
  callIndirect(LR); // 0x428a64
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x428a70
  }
  x1 = NULL; // 0x428a78
  x2 = NULL; // 0x428a74
  x4 = 60; // 0x428a7c
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x428a88
  }
  x4 = x4 - 0x5e; // 0x428a8c
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x10000), 0xfd0) /* Obj!? */; // 0x428aa0
    x8 = mem(PP, 0x2f8) /* Type */; // 0x428a98
    sub_0x62a0c0(); // 0x428aa4
  }
  SP = FP; // 0x428aac
  x0 = NULL; // 0x428aa8
  // frame: FP, LR, mem(SP), 0x10 // 0x428ab0
  return;
}

// PartyRoomBackground_ctor_fromJson
// raw disassembly:
//  0x428acc: stp FP, LR, [SP, #-0x10]!
//  0x428ad0: mov FP, SP
//  0x428ad4: sub SP, SP, #0x18
//  0x428ad8: ldr x0, [PP, #0x40]
//  0x428adc: mov x4, x1
//  0x428ae0: mov x3, x2
//  0x428ae4: stur x1, [FP, #-8]
//  0x428ae8: stur x2, [FP, #-0x10]
//  0x428aec: ldr BARRIER, [THR, #0x38]
//  0x428af0: cmp SP, BARRIER
//  0x428af4: b.ls #0x428c70
//  0x428af8: stur w0, [x4, #7]
//  0x428afc: ldur x0, [x3, #-1]
//  0x428b00: ubfx x0, x0, #0xc, #0x14
//  0x428b04: mov x1, x3
//  0x428b08: add x2, PP, #0x10, lsl #12
//  0x428b0c: ldr x2, [x2, #0xfe0]
//  0x428b10: sub LR, x0, #1, lsl #12
//  0x428b14: ldr LR, [x21, LR, lsl #3]
//  0x428b18: blr LR
//  0x428b1c: cmp w0, w22
//  0x428b20: b.ne #0x428b28
//  0x428b24: ldr x0, [PP, #0x148]
//  0x428b28: ldur x3, [FP, #-0x10]
//  0x428b2c: mov x2, NULL
//  0x428b30: mov x1, NULL
//  0x428b34: mov x4, #0x3c
//  0x428b38: tbz w0, #0, #0x428b44
//  0x428b3c: ldur x4, [x0, #-1]
//  0x428b40: ubfx x4, x4, #0xc, #0x14
//  0x428b44: sub x4, x4, #0x5e
//  0x428b48: cmp x4, #1
//  0x428b4c: b.ls #0x428b60
//  0x428b50: ldr x8, [PP, #0x2f8]
//  0x428b54: add x3, PP, #0x10, lsl #12
//  0x428b58: ldr x3, [x3, #0xfe8]
//  0x428b5c: bl #0x62a0c0
//  0x428b60: ldur x3, [FP, #-0x10]
//  0x428b64: ldur x0, [x3, #-1]
//  0x428b68: ubfx x0, x0, #0xc, #0x14
//  0x428b6c: mov x1, x3
//  0x428b70: add x2, PP, #0x10, lsl #12
//  0x428b74: ldr x2, [x2, #0xff8]
//  0x428b78: sub LR, x0, #1, lsl #12
//  0x428b7c: ldr LR, [x21, LR, lsl #3]
//  0x428b80: blr LR
//  0x428b84: cmp w0, w22
//  0x428b88: b.ne #0x428b94
//  0x428b8c: ldr x5, [PP, #0x148]
//  0x428b90: b #0x428b98
//  0x428b94: mov x5, x0
//  0x428b98: ldur x4, [FP, #-8]
//  0x428b9c: ldur x3, [FP, #-0x10]
//  0x428ba0: mov x0, x5
//  0x428ba4: stur x5, [FP, #-0x18]
//  0x428ba8: mov x2, NULL
//  0x428bac: mov x1, NULL
//  0x428bb0: mov x4, #0x3c
//  0x428bb4: tbz w0, #0, #0x428bc0
//  0x428bb8: ldur x4, [x0, #-1]
//  0x428bbc: ubfx x4, x4, #0xc, #0x14
//  0x428bc0: sub x4, x4, #0x5e
//  0x428bc4: cmp x4, #1
//  0x428bc8: b.ls #0x428bdc
//  0x428bcc: ldr x8, [PP, #0x2f8]
//  0x428bd0: add x3, PP, #0x11, lsl #12
//  0x428bd4: ldr x3, [x3]
//  0x428bd8: bl #0x62a0c0
//  0x428bdc: ldur x0, [FP, #-0x18]
//  0x428be0: ldur x1, [FP, #-8]
//  0x428be4: stur w0, [x1, #7]
//  0x428be8: ldurb w16, [x1, #-1]
//  0x428bec: ldurb w17, [x0, #-1]
//  0x428bf0: and BARRIER, x17, BARRIER, lsr #2
//  0x428bf4: tst BARRIER, HEAP, lsr #32
//  0x428bf8: b.eq #0x428c00
//  0x428bfc: bl #0x61e04c
//  0x428c00: ldur x1, [FP, #-0x10]
//  0x428c04: ldur x0, [x1, #-1]
//  0x428c08: ubfx x0, x0, #0xc, #0x14
//  0x428c0c: add x2, PP, #0x11, lsl #12
//  0x428c10: ldr x2, [x2, #0x10]
//  0x428c14: sub LR, x0, #1, lsl #12
//  0x428c18: ldr LR, [x21, LR, lsl #3]
//  0x428c1c: blr LR
//  0x428c20: cmp w0, w22
//  0x428c24: b.ne #0x428c2c
//  0x428c28: ldr x0, [PP, #0x148]
//  0x428c2c: mov x2, NULL
//  0x428c30: mov x1, NULL
//  0x428c34: mov x4, #0x3c
//  0x428c38: tbz w0, #0, #0x428c44
//  0x428c3c: ldur x4, [x0, #-1]
//  0x428c40: ubfx x4, x4, #0xc, #0x14
//  0x428c44: sub x4, x4, #0x5e
//  0x428c48: cmp x4, #1
//  0x428c4c: b.ls #0x428c60
//  0x428c50: ldr x8, [PP, #0x2f8]
//  0x428c54: add x3, PP, #0x11, lsl #12
//  0x428c58: ldr x3, [x3, #0x18]
//  0x428c5c: bl #0x62a0c0
//  0x428c60: mov x0, NULL
//  0x428c64: mov SP, FP
//  0x428c68: ldp FP, LR, [SP], #0x10
//  0x428c6c: ret 
//  0x428c70: bl #0x61fa28
//  0x428c74: b #0x428af8
//
dynamic PartyRoomBackground_ctor_fromJson() {
  dynamic BARRIER;
  dynamic FP;
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
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x428acc
  // frame: FP = SP // 0x428ad0
  // frame: SP = SP - 0x18 // 0x428ad4
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x428ad8
  x3 = x2; // 0x428ae0
  x4 = x1; // 0x428adc
  local_m8 = x1; // 0x428ae4
  local_m10 = x2; // 0x428ae8
  BARRIER = mem(THR, 0x38); // 0x428aec
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x428c70
  }
  memSet(x4, 7, w0); // 0x428af8
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x428b14
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x428b00
  x1 = x3; // 0x428b04
  x2 = "createShowUrl" /* pp+0x10fe0 */; // 0x428b0c
  callIndirect(LR); // 0x428b18
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x428b24
  }
  x1 = NULL; // 0x428b30
  x2 = NULL; // 0x428b2c
  x3 = local_m10; // 0x428b28
  x4 = 60; // 0x428b34
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x428b40
  }
  x4 = x4 - 0x5e; // 0x428b44
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x10000), 0xfe8) /* Obj!? */; // 0x428b58
    x8 = mem(PP, 0x2f8) /* Type */; // 0x428b50
    sub_0x62a0c0(); // 0x428b5c
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x428b7c
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x428b68
  x1 = local_m10; // 0x428b6c
  x2 = "baseUrl" /* pp+0x10ff8 */; // 0x428b74
  x3 = local_m10; // 0x428b60
  callIndirect(LR); // 0x428b80
  if (w0 != w22) {
    x5 = x0; // 0x428b94
  } else {
    x5 = "" /* pp+0x148 */; // 0x428b8c
  }
  x0 = x5; // 0x428ba0
  x3 = local_m10; // 0x428b9c
  x4 = local_m8; // 0x428b98
  local_m18 = x5; // 0x428ba4
  x1 = NULL; // 0x428bac
  x2 = NULL; // 0x428ba8
  x4 = 60; // 0x428bb0
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x428bbc
  }
  x4 = x4 - 0x5e; // 0x428bc0
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000)) /* Obj!? */; // 0x428bd4
    x8 = mem(PP, 0x2f8) /* Type */; // 0x428bcc
    sub_0x62a0c0(); // 0x428bd8
  }
  x0 = local_m18; // 0x428bdc
  x1 = local_m8; // 0x428be0
  memSet(x1, 7, w0); // 0x428be4
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x428bf0
  w16 = mem(x1, -1); // 0x428be8
  w17 = mem(x0, -1); // 0x428bec
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x428be8
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x428bec
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x428bfc
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x428c18
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x428c08
  x1 = local_m10; // 0x428c00
  x2 = "backgroundUrl" /* pp+0x11010 */; // 0x428c10
  callIndirect(LR); // 0x428c1c
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x428c28
  }
  x1 = NULL; // 0x428c30
  x2 = NULL; // 0x428c2c
  x4 = 60; // 0x428c34
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x428c40
  }
  x4 = x4 - 0x5e; // 0x428c44
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0x18) /* Obj!? */; // 0x428c58
    x8 = mem(PP, 0x2f8) /* Type */; // 0x428c50
    sub_0x62a0c0(); // 0x428c5c
  }
  SP = FP; // 0x428c64
  x0 = NULL; // 0x428c60
  // frame: FP, LR, mem(SP), 0x10 // 0x428c68
  return;
}

// PartyRoomTag_ctor_fromJson
// raw disassembly:
//  0x428c84: stp FP, LR, [SP, #-0x10]!
//  0x428c88: mov FP, SP
//  0x428c8c: sub SP, SP, #0x18
//  0x428c90: ldr x0, [PP, #0x40]
//  0x428c94: mov x4, x1
//  0x428c98: mov x3, x2
//  0x428c9c: stur x1, [FP, #-8]
//  0x428ca0: stur x2, [FP, #-0x10]
//  0x428ca4: ldr BARRIER, [THR, #0x38]
//  0x428ca8: cmp SP, BARRIER
//  0x428cac: b.ls #0x428dc0
//  0x428cb0: stur w0, [x4, #7]
//  0x428cb4: ldur x0, [x3, #-1]
//  0x428cb8: ubfx x0, x0, #0xc, #0x14
//  0x428cbc: mov x1, x3
//  0x428cc0: add x2, PP, #8, lsl #12
//  0x428cc4: ldr x2, [x2, #0x198]
//  0x428cc8: sub LR, x0, #1, lsl #12
//  0x428ccc: ldr LR, [x21, LR, lsl #3]
//  0x428cd0: blr LR
//  0x428cd4: cmp w0, w22
//  0x428cd8: b.ne #0x428ce4
//  0x428cdc: ldr x5, [PP, #0x148]
//  0x428ce0: b #0x428ce8
//  0x428ce4: mov x5, x0
//  0x428ce8: ldur x4, [FP, #-8]
//  0x428cec: ldur x3, [FP, #-0x10]
//  0x428cf0: mov x0, x5
//  0x428cf4: stur x5, [FP, #-0x18]
//  0x428cf8: mov x2, NULL
//  0x428cfc: mov x1, NULL
//  0x428d00: mov x4, #0x3c
//  0x428d04: tbz w0, #0, #0x428d10
//  0x428d08: ldur x4, [x0, #-1]
//  0x428d0c: ubfx x4, x4, #0xc, #0x14
//  0x428d10: sub x4, x4, #0x5e
//  0x428d14: cmp x4, #1
//  0x428d18: b.ls #0x428d2c
//  0x428d1c: ldr x8, [PP, #0x2f8]
//  0x428d20: add x3, PP, #0x11, lsl #12
//  0x428d24: ldr x3, [x3, #0x28]
//  0x428d28: bl #0x62a0c0
//  0x428d2c: ldur x0, [FP, #-0x18]
//  0x428d30: ldur x1, [FP, #-8]
//  0x428d34: stur w0, [x1, #7]
//  0x428d38: ldurb w16, [x1, #-1]
//  0x428d3c: ldurb w17, [x0, #-1]
//  0x428d40: and BARRIER, x17, BARRIER, lsr #2
//  0x428d44: tst BARRIER, HEAP, lsr #32
//  0x428d48: b.eq #0x428d50
//  0x428d4c: bl #0x61e04c
//  0x428d50: ldur x1, [FP, #-0x10]
//  0x428d54: ldur x0, [x1, #-1]
//  0x428d58: ubfx x0, x0, #0xc, #0x14
//  0x428d5c: add x2, PP, #0x11, lsl #12
//  0x428d60: ldr x2, [x2, #0x38]
//  0x428d64: sub LR, x0, #1, lsl #12
//  0x428d68: ldr LR, [x21, LR, lsl #3]
//  0x428d6c: blr LR
//  0x428d70: cmp w0, w22
//  0x428d74: b.ne #0x428d7c
//  0x428d78: ldr x0, [PP, #0x148]
//  0x428d7c: mov x2, NULL
//  0x428d80: mov x1, NULL
//  0x428d84: mov x4, #0x3c
//  0x428d88: tbz w0, #0, #0x428d94
//  0x428d8c: ldur x4, [x0, #-1]
//  0x428d90: ubfx x4, x4, #0xc, #0x14
//  0x428d94: sub x4, x4, #0x5e
//  0x428d98: cmp x4, #1
//  0x428d9c: b.ls #0x428db0
//  0x428da0: ldr x8, [PP, #0x2f8]
//  0x428da4: add x3, PP, #0x11, lsl #12
//  0x428da8: ldr x3, [x3, #0x40]
//  0x428dac: bl #0x62a0c0
//  0x428db0: mov x0, NULL
//  0x428db4: mov SP, FP
//  0x428db8: ldp FP, LR, [SP], #0x10
//  0x428dbc: ret 
//  0x428dc0: bl #0x61fa28
//  0x428dc4: b #0x428cb0
//
dynamic PartyRoomTag_ctor_fromJson() {
  dynamic BARRIER;
  dynamic FP;
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
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x428c84
  // frame: FP = SP // 0x428c88
  // frame: SP = SP - 0x18 // 0x428c8c
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x428c90
  x3 = x2; // 0x428c98
  x4 = x1; // 0x428c94
  local_m8 = x1; // 0x428c9c
  local_m10 = x2; // 0x428ca0
  BARRIER = mem(THR, 0x38); // 0x428ca4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x428dc0
  }
  memSet(x4, 7, w0); // 0x428cb0
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x428ccc
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x428cb8
  x1 = x3; // 0x428cbc
  x2 = "name" /* pp+0x8198 */; // 0x428cc4
  callIndirect(LR); // 0x428cd0
  if (w0 != w22) {
    x5 = x0; // 0x428ce4
  } else {
    x5 = "" /* pp+0x148 */; // 0x428cdc
  }
  x0 = x5; // 0x428cf0
  x3 = local_m10; // 0x428cec
  x4 = local_m8; // 0x428ce8
  local_m18 = x5; // 0x428cf4
  x1 = NULL; // 0x428cfc
  x2 = NULL; // 0x428cf8
  x4 = 60; // 0x428d00
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x428d0c
  }
  x4 = x4 - 0x5e; // 0x428d10
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0x28) /* Obj!? */; // 0x428d24
    x8 = mem(PP, 0x2f8) /* Type */; // 0x428d1c
    sub_0x62a0c0(); // 0x428d28
  }
  x0 = local_m18; // 0x428d2c
  x1 = local_m8; // 0x428d30
  memSet(x1, 7, w0); // 0x428d34
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x428d40
  w16 = mem(x1, -1); // 0x428d38
  w17 = mem(x0, -1); // 0x428d3c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x428d38
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x428d3c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x428d4c
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x428d68
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x428d58
  x1 = local_m10; // 0x428d50
  x2 = "defaultRoomTopic" /* pp+0x11038 */; // 0x428d60
  callIndirect(LR); // 0x428d6c
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x428d78
  }
  x1 = NULL; // 0x428d80
  x2 = NULL; // 0x428d7c
  x4 = 60; // 0x428d84
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x428d90
  }
  x4 = x4 - 0x5e; // 0x428d94
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0x40) /* Obj!? */; // 0x428da8
    x8 = mem(PP, 0x2f8) /* Type */; // 0x428da0
    sub_0x62a0c0(); // 0x428dac
  }
  SP = FP; // 0x428db4
  x0 = NULL; // 0x428db0
  // frame: FP, LR, mem(SP), 0x10 // 0x428db8
  return;
}

// PartyRoomOwner_ctor_fromJson
// raw disassembly:
//  0x428dd4: stp FP, LR, [SP, #-0x10]!
//  0x428dd8: mov FP, SP
//  0x428ddc: sub SP, SP, #0x20
//  0x428de0: ldr x0, [PP, #0x40]
//  0x428de4: mov x4, x1
//  0x428de8: mov x3, x2
//  0x428dec: stur x1, [FP, #-8]
//  0x428df0: stur x2, [FP, #-0x10]
//  0x428df4: ldr BARRIER, [THR, #0x38]
//  0x428df8: cmp SP, BARRIER
//  0x428dfc: b.ls #0x429064
//  0x428e00: stur w0, [x4, #7]
//  0x428e04: stur w0, [x4, #0xb]
//  0x428e08: ldur x0, [x3, #-1]
//  0x428e0c: ubfx x0, x0, #0xc, #0x14
//  0x428e10: mov x1, x3
//  0x428e14: add x2, PP, #0xb, lsl #12
//  0x428e18: ldr x2, [x2, #0x6e8]
//  0x428e1c: sub LR, x0, #1, lsl #12
//  0x428e20: ldr LR, [x21, LR, lsl #3]
//  0x428e24: blr LR
//  0x428e28: cmp w0, w22
//  0x428e2c: b.eq #0x428e5c
//  0x428e30: mov x1, #0x3c
//  0x428e34: tbz w0, #0, #0x428e40
//  0x428e38: ldur x1, [x0, #-1]
//  0x428e3c: ubfx x1, x1, #0xc, #0x14
//  0x428e40: str x0, [SP]
//  0x428e44: mov x0, x1
//  0x428e48: ldr x4, [PP, #0x3a8]
//  0x428e4c: mov x17, #0x3e07
//  0x428e50: add LR, x0, x17
//  0x428e54: ldr LR, [x21, LR, lsl #3]
//  0x428e58: blr LR
//  0x428e5c: ldur x3, [FP, #-0x10]
//  0x428e60: ldur x0, [x3, #-1]
//  0x428e64: ubfx x0, x0, #0xc, #0x14
//  0x428e68: mov x1, x3
//  0x428e6c: add x2, PP, #0x11, lsl #12
//  0x428e70: ldr x2, [x2, #0x50]
//  0x428e74: sub LR, x0, #1, lsl #12
//  0x428e78: ldr LR, [x21, LR, lsl #3]
//  0x428e7c: blr LR
//  0x428e80: cmp w0, w22
//  0x428e84: b.eq #0x428eb4
//  0x428e88: mov x1, #0x3c
//  0x428e8c: tbz w0, #0, #0x428e98
//  0x428e90: ldur x1, [x0, #-1]
//  0x428e94: ubfx x1, x1, #0xc, #0x14
//  0x428e98: str x0, [SP]
//  0x428e9c: mov x0, x1
//  0x428ea0: ldr x4, [PP, #0x3a8]
//  0x428ea4: mov x17, #0x3e07
//  0x428ea8: add LR, x0, x17
//  0x428eac: ldr LR, [x21, LR, lsl #3]
//  0x428eb0: blr LR
//  0x428eb4: ldur x3, [FP, #-0x10]
//  0x428eb8: ldur x0, [x3, #-1]
//  0x428ebc: ubfx x0, x0, #0xc, #0x14
//  0x428ec0: mov x1, x3
//  0x428ec4: add x2, PP, #0xb, lsl #12
//  0x428ec8: ldr x2, [x2, #0x718]
//  0x428ecc: sub LR, x0, #1, lsl #12
//  0x428ed0: ldr LR, [x21, LR, lsl #3]
//  0x428ed4: blr LR
//  0x428ed8: cmp w0, w22
//  0x428edc: b.ne #0x428ee8
//  0x428ee0: ldr x5, [PP, #0x148]
//  0x428ee4: b #0x428eec
//  0x428ee8: mov x5, x0
//  0x428eec: ldur x4, [FP, #-8]
//  0x428ef0: ldur x3, [FP, #-0x10]
//  0x428ef4: mov x0, x5
//  0x428ef8: stur x5, [FP, #-0x18]
//  0x428efc: mov x2, NULL
//  0x428f00: mov x1, NULL
//  0x428f04: mov x4, #0x3c
//  0x428f08: tbz w0, #0, #0x428f14
//  0x428f0c: ldur x4, [x0, #-1]
//  0x428f10: ubfx x4, x4, #0xc, #0x14
//  0x428f14: sub x4, x4, #0x5e
//  0x428f18: cmp x4, #1
//  0x428f1c: b.ls #0x428f30
//  0x428f20: ldr x8, [PP, #0x2f8]
//  0x428f24: add x3, PP, #0x11, lsl #12
//  0x428f28: ldr x3, [x3, #0x58]
//  0x428f2c: bl #0x62a0c0
//  0x428f30: ldur x0, [FP, #-0x18]
//  0x428f34: ldur x3, [FP, #-8]
//  0x428f38: stur w0, [x3, #7]
//  0x428f3c: ldurb w16, [x3, #-1]
//  0x428f40: ldurb w17, [x0, #-1]
//  0x428f44: and BARRIER, x17, BARRIER, lsr #2
//  0x428f48: tst BARRIER, HEAP, lsr #32
//  0x428f4c: b.eq #0x428f54
//  0x428f50: bl #0x61e08c
//  0x428f54: ldur x4, [FP, #-0x10]
//  0x428f58: ldur x0, [x4, #-1]
//  0x428f5c: ubfx x0, x0, #0xc, #0x14
//  0x428f60: mov x1, x4
//  0x428f64: add x2, PP, #0xb, lsl #12
//  0x428f68: ldr x2, [x2, #0x730]
//  0x428f6c: sub LR, x0, #1, lsl #12
//  0x428f70: ldr LR, [x21, LR, lsl #3]
//  0x428f74: blr LR
//  0x428f78: cmp w0, w22
//  0x428f7c: b.ne #0x428f88
//  0x428f80: ldr x5, [PP, #0x148]
//  0x428f84: b #0x428f8c
//  0x428f88: mov x5, x0
//  0x428f8c: ldur x3, [FP, #-8]
//  0x428f90: ldur x4, [FP, #-0x10]
//  0x428f94: mov x0, x5
//  0x428f98: stur x5, [FP, #-0x18]
//  0x428f9c: mov x2, NULL
//  0x428fa0: mov x1, NULL
//  0x428fa4: mov x4, #0x3c
//  0x428fa8: tbz w0, #0, #0x428fb4
//  0x428fac: ldur x4, [x0, #-1]
//  0x428fb0: ubfx x4, x4, #0xc, #0x14
//  0x428fb4: sub x4, x4, #0x5e
//  0x428fb8: cmp x4, #1
//  0x428fbc: b.ls #0x428fd0
//  0x428fc0: ldr x8, [PP, #0x2f8]
//  0x428fc4: add x3, PP, #0x11, lsl #12
//  0x428fc8: ldr x3, [x3, #0x68]
//  0x428fcc: bl #0x62a0c0
//  0x428fd0: ldur x0, [FP, #-0x18]
//  0x428fd4: ldur x1, [FP, #-8]
//  0x428fd8: stur w0, [x1, #0xb]
//  0x428fdc: ldurb w16, [x1, #-1]
//  0x428fe0: ldurb w17, [x0, #-1]
//  0x428fe4: and BARRIER, x17, BARRIER, lsr #2
//  0x428fe8: tst BARRIER, HEAP, lsr #32
//  0x428fec: b.eq #0x428ff4
//  0x428ff0: bl #0x61e04c
//  0x428ff4: ldur x1, [FP, #-0x10]
//  0x428ff8: ldur x0, [x1, #-1]
//  0x428ffc: ubfx x0, x0, #0xc, #0x14
//  0x429000: add x2, PP, #0xb, lsl #12
//  0x429004: ldr x2, [x2, #0x748]
//  0x429008: sub LR, x0, #1, lsl #12
//  0x42900c: ldr LR, [x21, LR, lsl #3]
//  0x429010: blr LR
//  0x429014: cmp w0, w22
//  0x429018: b.ne #0x429020
//  0x42901c: ldr x0, [PP, #0x148]
//  0x429020: mov x2, NULL
//  0x429024: mov x1, NULL
//  0x429028: mov x4, #0x3c
//  0x42902c: tbz w0, #0, #0x429038
//  0x429030: ldur x4, [x0, #-1]
//  0x429034: ubfx x4, x4, #0xc, #0x14
//  0x429038: sub x4, x4, #0x5e
//  0x42903c: cmp x4, #1
//  0x429040: b.ls #0x429054
//  0x429044: ldr x8, [PP, #0x2f8]
//  0x429048: add x3, PP, #0x11, lsl #12
//  0x42904c: ldr x3, [x3, #0x78]
//  0x429050: bl #0x62a0c0
//  0x429054: mov x0, NULL
//  0x429058: mov SP, FP
//  0x42905c: ldp FP, LR, [SP], #0x10
//  0x429060: ret 
//  0x429064: bl #0x61fa28
//  0x429068: b #0x428e00
//
dynamic PartyRoomOwner_ctor_fromJson() {
  dynamic BARRIER;
  dynamic FP;
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
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x428dd4
  // frame: FP = SP // 0x428dd8
  // frame: SP = SP - 0x20 // 0x428ddc
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x428de0
  x3 = x2; // 0x428de8
  x4 = x1; // 0x428de4
  local_m8 = x1; // 0x428dec
  local_m10 = x2; // 0x428df0
  BARRIER = mem(THR, 0x38); // 0x428df4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x429064
  }
  memSet(x4, 7, w0); // 0x428e00
  memSet(x4, 0xb, w0); // 0x428e04
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x428e20
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x428e0c
  x1 = x3; // 0x428e10
  x2 = "userId" /* pp+0xb6e8 */; // 0x428e18
  callIndirect(LR); // 0x428e24
  if (w0 == w22) {
  } else {
    x1 = 60; // 0x428e30
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x428e3c
    }
    local_0 = x0; // 0x428e40
    LR = mem(x21, ((x0 + x17) << 3)); // 0x428e54
    x0 = x1; // 0x428e44
    x17 = 15879; // 0x428e4c
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x428e48
    callIndirect(LR); // 0x428e58
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x428e78
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x428e64
  x1 = local_m10; // 0x428e68
  x2 = "partyRoomId" /* pp+0x11050 */; // 0x428e70
  x3 = local_m10; // 0x428e5c
  callIndirect(LR); // 0x428e7c
  if (w0 == w22) {
  } else {
    x1 = 60; // 0x428e88
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x428e94
    }
    local_0 = x0; // 0x428e98
    LR = mem(x21, ((x0 + x17) << 3)); // 0x428eac
    x0 = x1; // 0x428e9c
    x17 = 15879; // 0x428ea4
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x428ea0
    callIndirect(LR); // 0x428eb0
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x428ed0
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x428ebc
  x1 = local_m10; // 0x428ec0
  x2 = "avatarUrl" /* pp+0xb718 */; // 0x428ec8
  x3 = local_m10; // 0x428eb4
  callIndirect(LR); // 0x428ed4
  if (w0 != w22) {
    x5 = x0; // 0x428ee8
  } else {
    x5 = "" /* pp+0x148 */; // 0x428ee0
  }
  x0 = x5; // 0x428ef4
  x3 = local_m10; // 0x428ef0
  x4 = local_m8; // 0x428eec
  local_m18 = x5; // 0x428ef8
  x1 = NULL; // 0x428f00
  x2 = NULL; // 0x428efc
  x4 = 60; // 0x428f04
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x428f10
  }
  x4 = x4 - 0x5e; // 0x428f14
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0x58) /* Obj!? */; // 0x428f28
    x8 = mem(PP, 0x2f8) /* Type */; // 0x428f20
    sub_0x62a0c0(); // 0x428f2c
  }
  x0 = local_m18; // 0x428f30
  x3 = local_m8; // 0x428f34
  memSet(x3, 7, w0); // 0x428f38
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x428f44
  w16 = mem(x3, -1); // 0x428f3c
  w17 = mem(x0, -1); // 0x428f40
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x428f3c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x428f40
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x428f50
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x428f70
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x428f5c
  x1 = local_m10; // 0x428f60
  x2 = "signature" /* pp+0xb730 */; // 0x428f68
  x4 = local_m10; // 0x428f54
  callIndirect(LR); // 0x428f74
  if (w0 != w22) {
    x5 = x0; // 0x428f88
  } else {
    x5 = "" /* pp+0x148 */; // 0x428f80
  }
  x0 = x5; // 0x428f94
  x3 = local_m8; // 0x428f8c
  x4 = local_m10; // 0x428f90
  local_m18 = x5; // 0x428f98
  x1 = NULL; // 0x428fa0
  x2 = NULL; // 0x428f9c
  x4 = 60; // 0x428fa4
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x428fb0
  }
  x4 = x4 - 0x5e; // 0x428fb4
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0x68) /* Obj!? */; // 0x428fc8
    x8 = mem(PP, 0x2f8) /* Type */; // 0x428fc0
    sub_0x62a0c0(); // 0x428fcc
  }
  x0 = local_m18; // 0x428fd0
  x1 = local_m8; // 0x428fd4
  memSet(x1, 0xb, w0); // 0x428fd8
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x428fe4
  w16 = mem(x1, -1); // 0x428fdc
  w17 = mem(x0, -1); // 0x428fe0
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x428fdc
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x428fe0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x428ff0
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x42900c
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x428ffc
  x1 = local_m10; // 0x428ff4
  x2 = "garlandUrl" /* pp+0xb748 */; // 0x429004
  callIndirect(LR); // 0x429010
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x42901c
  }
  x1 = NULL; // 0x429024
  x2 = NULL; // 0x429020
  x4 = 60; // 0x429028
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x429034
  }
  x4 = x4 - 0x5e; // 0x429038
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0x78) /* Obj!? */; // 0x42904c
    x8 = mem(PP, 0x2f8) /* Type */; // 0x429044
    sub_0x62a0c0(); // 0x429050
  }
  SP = FP; // 0x429058
  x0 = NULL; // 0x429054
  // frame: FP, LR, mem(SP), 0x10 // 0x42905c
  return;
}

// PartySendPocketItem_ctor_createNum
// raw disassembly:
//  0x42ac74: stp FP, LR, [SP, #-0x10]!
//  0x42ac78: mov FP, SP
//  0x42ac7c: sub SP, SP, #0x18
//  0x42ac80: ldr x0, [PP, #0x40]
//  0x42ac84: stur x1, [FP, #-8]
//  0x42ac88: stur x2, [FP, #-0x10]
//  0x42ac8c: ldr BARRIER, [THR, #0x38]
//  0x42ac90: cmp SP, BARRIER
//  0x42ac94: b.ls #0x42ad3c
//  0x42ac98: stur w0, [x1, #7]
//  0x42ac9c: stur w0, [x1, #0xb]
//  0x42aca0: ldur w0, [x2, #7]
//  0x42aca4: add x0, x0, HEAP, lsl #32
//  0x42aca8: ldr BARRIER, [PP, #0x40]
//  0x42acac: cmp w0, w16
//  0x42acb0: b.eq #0x42ad44
//  0x42acb4: sbfx x3, x0, #1, #0x1f
//  0x42acb8: tbz w0, #0, #0x42acc0
//  0x42acbc: ldur x3, [x0, #7]
//  0x42acc0: cmp x3, #0
//  0x42acc4: b.le #0x42acd4
//  0x42acc8: str x0, [SP]
//  0x42accc: bl #0x2ac0a0
//  0x42acd0: b #0x42acd8
//  0x42acd4: ldr x0, [PP, #0x148]
//  0x42acd8: ldur x2, [FP, #-8]
//  0x42acdc: ldur x1, [FP, #-0x10]
//  0x42ace0: stur w0, [x2, #7]
//  0x42ace4: ldurb w16, [x2, #-1]
//  0x42ace8: ldurb w17, [x0, #-1]
//  0x42acec: and BARRIER, x17, BARRIER, lsr #2
//  0x42acf0: tst BARRIER, HEAP, lsr #32
//  0x42acf4: b.eq #0x42acfc
//  0x42acf8: bl #0x61e06c
//  0x42acfc: ldur w0, [x1, #0xb]
//  0x42ad00: add x0, x0, HEAP, lsl #32
//  0x42ad04: ldr BARRIER, [PP, #0x40]
//  0x42ad08: cmp w0, w16
//  0x42ad0c: b.eq #0x42ad50
//  0x42ad10: stur w0, [x2, #0xb]
//  0x42ad14: ldurb w16, [x2, #-1]
//  0x42ad18: ldurb w17, [x0, #-1]
//  0x42ad1c: and BARRIER, x17, BARRIER, lsr #2
//  0x42ad20: tst BARRIER, HEAP, lsr #32
//  0x42ad24: b.eq #0x42ad2c
//  0x42ad28: bl #0x61e06c
//  0x42ad2c: mov x0, NULL
//  0x42ad30: mov SP, FP
//  0x42ad34: ldp FP, LR, [SP], #0x10
//  0x42ad38: ret 
//  0x42ad3c: bl #0x61fa28
//  0x42ad40: b #0x42ac98
//  0x42ad44: add x9, PP, #0x10, lsl #12
//  0x42ad48: ldr x9, [x9, #0xb68]
//  0x42ad4c: bl #0x620258
//  0x42ad50: add x9, PP, #0x10, lsl #12
//  0x42ad54: ldr x9, [x9, #0xcc8]
//  0x42ad58: bl #0x620258
//
dynamic PartySendPocketItem_ctor_createNum() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42ac74
  // frame: FP = SP // 0x42ac78
  // frame: SP = SP - 0x18 // 0x42ac7c
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x42ac80
  local_m8 = x1; // 0x42ac84
  local_m10 = x2; // 0x42ac88
  BARRIER = mem(THR, 0x38); // 0x42ac8c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42ad3c
  }
  memSet(x1, 7, w0); // 0x42ac98
  memSet(x1, 0xb, w0); // 0x42ac9c
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x42aca8
  w0 = mem(x2, 7); /* PartySendPocketItem.title (off 0x8) */  // 0x42aca0
  x0 = ((mem(x2, 7)) & 0xffffffff) + (HEAP << 32); /* PartySendPocketItem.title (off 0x8) */  // 0x42aca4
  if (w0 == w16) {
    x9 = mem((PP + 0x10000), 0xb68) /* Field */; // 0x42ad48
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42ad4c
  } else {
    x3 = (x0 >> 1) & 0x7fffffff; // 0x42acb4
    if (x0 & (1 << 0) == 0) {
    } else {
      x3 = mem(x0, 7); /* PartySendPocketItem.title (off 0x8) */  // 0x42acbc
    }
    if (x3 <= 0) {
      x0 = "" /* pp+0x148 */; // 0x42acd4
    } else {
      local_0 = x0; // 0x42acc8
      StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x42accc
    }
    x1 = local_m10; // 0x42acdc
    x2 = local_m8; // 0x42acd8
    memSet(x2, 7, w0); // 0x42ace0
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x42acec
    w16 = mem(x2, -1); // 0x42ace4
    w17 = mem(x0, -1); // 0x42ace8
    x16 = (mem(x2, -1)) & 0xffffffff; // 0x42ace4
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x42ace8
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x2() /* 0x61e06c */; // 0x42acf8
    }
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x42ad04
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x42ad00
    if (w0 == w16) {
      // duplicated branch body (target 0x42ad50 terminates; the same code is emitted below)
      x9 = mem((PP + 0x10000), 0xcc8) /* Field */; // 0x42ad54
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42ad58
    }
    memSet(x2, 0xb, w0); // 0x42ad10
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x42ad1c
    w16 = mem(x2, -1); // 0x42ad14
    w17 = mem(x0, -1); // 0x42ad18
    x16 = (mem(x2, -1)) & 0xffffffff; // 0x42ad14
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x42ad18
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x2() /* 0x61e06c */; // 0x42ad28
    }
    SP = FP; // 0x42ad30
    x0 = NULL; // 0x42ad2c
    // frame: FP, LR, mem(SP), 0x10 // 0x42ad34
    return;
  }
  x9 = mem((PP + 0x10000), 0xcc8) /* Field */; // 0x42ad54
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42ad58
}

// PartySendPocketItem_ctor_createCoin
// raw disassembly:
//  0x42b32c: stp FP, LR, [SP, #-0x10]!
//  0x42b330: mov FP, SP
//  0x42b334: sub SP, SP, #0x18
//  0x42b338: ldr x0, [PP, #0x40]
//  0x42b33c: stur x1, [FP, #-8]
//  0x42b340: stur x2, [FP, #-0x10]
//  0x42b344: ldr BARRIER, [THR, #0x38]
//  0x42b348: cmp SP, BARRIER
//  0x42b34c: b.ls #0x42b3f4
//  0x42b350: stur w0, [x1, #7]
//  0x42b354: stur w0, [x1, #0xb]
//  0x42b358: ldur w0, [x2, #7]
//  0x42b35c: add x0, x0, HEAP, lsl #32
//  0x42b360: ldr BARRIER, [PP, #0x40]
//  0x42b364: cmp w0, w16
//  0x42b368: b.eq #0x42b3fc
//  0x42b36c: sbfx x3, x0, #1, #0x1f
//  0x42b370: tbz w0, #0, #0x42b378
//  0x42b374: ldur x3, [x0, #7]
//  0x42b378: cmp x3, #0
//  0x42b37c: b.le #0x42b38c
//  0x42b380: str x0, [SP]
//  0x42b384: bl #0x2ac0a0
//  0x42b388: b #0x42b390
//  0x42b38c: ldr x0, [PP, #0x148]
//  0x42b390: ldur x2, [FP, #-8]
//  0x42b394: ldur x1, [FP, #-0x10]
//  0x42b398: stur w0, [x2, #7]
//  0x42b39c: ldurb w16, [x2, #-1]
//  0x42b3a0: ldurb w17, [x0, #-1]
//  0x42b3a4: and BARRIER, x17, BARRIER, lsr #2
//  0x42b3a8: tst BARRIER, HEAP, lsr #32
//  0x42b3ac: b.eq #0x42b3b4
//  0x42b3b0: bl #0x61e06c
//  0x42b3b4: ldur w0, [x1, #0xb]
//  0x42b3b8: add x0, x0, HEAP, lsl #32
//  0x42b3bc: ldr BARRIER, [PP, #0x40]
//  0x42b3c0: cmp w0, w16
//  0x42b3c4: b.eq #0x42b408
//  0x42b3c8: stur w0, [x2, #0xb]
//  0x42b3cc: ldurb w16, [x2, #-1]
//  0x42b3d0: ldurb w17, [x0, #-1]
//  0x42b3d4: and BARRIER, x17, BARRIER, lsr #2
//  0x42b3d8: tst BARRIER, HEAP, lsr #32
//  0x42b3dc: b.eq #0x42b3e4
//  0x42b3e0: bl #0x61e06c
//  0x42b3e4: mov x0, NULL
//  0x42b3e8: mov SP, FP
//  0x42b3ec: ldp FP, LR, [SP], #0x10
//  0x42b3f0: ret 
//  0x42b3f4: bl #0x61fa28
//  0x42b3f8: b #0x42b350
//  0x42b3fc: add x9, PP, #0x10, lsl #12
//  0x42b400: ldr x9, [x9, #0xb60]
//  0x42b404: bl #0x620258
//  0x42b408: add x9, PP, #0x10, lsl #12
//  0x42b40c: ldr x9, [x9, #0xd10]
//  0x42b410: bl #0x620258
//
dynamic PartySendPocketItem_ctor_createCoin() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42b32c
  // frame: FP = SP // 0x42b330
  // frame: SP = SP - 0x18 // 0x42b334
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x42b338
  local_m8 = x1; // 0x42b33c
  local_m10 = x2; // 0x42b340
  BARRIER = mem(THR, 0x38); // 0x42b344
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42b3f4
  }
  memSet(x1, 7, w0); // 0x42b350
  memSet(x1, 0xb, w0); // 0x42b354
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x42b360
  w0 = mem(x2, 7); /* PartySendPocketItem.title (off 0x8) */  // 0x42b358
  x0 = ((mem(x2, 7)) & 0xffffffff) + (HEAP << 32); /* PartySendPocketItem.title (off 0x8) */  // 0x42b35c
  if (w0 == w16) {
    x9 = mem((PP + 0x10000), 0xb60) /* Field */; // 0x42b400
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42b404
  } else {
    x3 = (x0 >> 1) & 0x7fffffff; // 0x42b36c
    if (x0 & (1 << 0) == 0) {
    } else {
      x3 = mem(x0, 7); /* PartySendPocketItem.title (off 0x8) */  // 0x42b374
    }
    if (x3 <= 0) {
      x0 = "" /* pp+0x148 */; // 0x42b38c
    } else {
      local_0 = x0; // 0x42b380
      StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x42b384
    }
    x1 = local_m10; // 0x42b394
    x2 = local_m8; // 0x42b390
    memSet(x2, 7, w0); // 0x42b398
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x42b3a4
    w16 = mem(x2, -1); // 0x42b39c
    w17 = mem(x0, -1); // 0x42b3a0
    x16 = (mem(x2, -1)) & 0xffffffff; // 0x42b39c
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x42b3a0
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x2() /* 0x61e06c */; // 0x42b3b0
    }
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x42b3bc
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x42b3b8
    if (w0 == w16) {
      // duplicated branch body (target 0x42b408 terminates; the same code is emitted below)
      x9 = mem((PP + 0x10000), 0xd10) /* Field */; // 0x42b40c
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42b410
    }
    memSet(x2, 0xb, w0); // 0x42b3c8
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x42b3d4
    w16 = mem(x2, -1); // 0x42b3cc
    w17 = mem(x0, -1); // 0x42b3d0
    x16 = (mem(x2, -1)) & 0xffffffff; // 0x42b3cc
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x42b3d0
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x2() /* 0x61e06c */; // 0x42b3e0
    }
    SP = FP; // 0x42b3e8
    x0 = NULL; // 0x42b3e4
    // frame: FP, LR, mem(SP), 0x10 // 0x42b3ec
    return;
  }
  x9 = mem((PP + 0x10000), 0xd10) /* Field */; // 0x42b40c
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42b410
}

// PartyLuckBagItem_ctor_fromJson
// raw disassembly:
//  0x4d51fc: stp FP, LR, [SP, #-0x10]!
//  0x4d5200: mov FP, SP
//  0x4d5204: sub SP, SP, #0x20
//  0x4d5208: ldr x0, [PP, #0x40]
//  0x4d520c: mov x4, x1
//  0x4d5210: mov x3, x2
//  0x4d5214: stur x1, [FP, #-8]
//  0x4d5218: stur x2, [FP, #-0x10]
//  0x4d521c: ldr BARRIER, [THR, #0x38]
//  0x4d5220: cmp SP, BARRIER
//  0x4d5224: b.ls #0x4d5594
//  0x4d5228: stur w0, [x4, #7]
//  0x4d522c: stur w0, [x4, #0xb]
//  0x4d5230: stur w0, [x4, #0xf]
//  0x4d5234: stur w0, [x4, #0x13]
//  0x4d5238: stur w0, [x4, #0x17]
//  0x4d523c: ldur x0, [x3, #-1]
//  0x4d5240: ubfx x0, x0, #0xc, #0x14
//  0x4d5244: mov x1, x3
//  0x4d5248: add x2, PP, #0xb, lsl #12
//  0x4d524c: ldr x2, [x2, #0x730]
//  0x4d5250: sub LR, x0, #1, lsl #12
//  0x4d5254: ldr LR, [x21, LR, lsl #3]
//  0x4d5258: blr LR
//  0x4d525c: cmp w0, w22
//  0x4d5260: b.ne #0x4d526c
//  0x4d5264: ldr x5, [PP, #0x148]
//  0x4d5268: b #0x4d5270
//  0x4d526c: mov x5, x0
//  0x4d5270: ldur x4, [FP, #-8]
//  0x4d5274: ldur x3, [FP, #-0x10]
//  0x4d5278: mov x0, x5
//  0x4d527c: stur x5, [FP, #-0x18]
//  0x4d5280: mov x2, NULL
//  0x4d5284: mov x1, NULL
//  0x4d5288: mov x4, #0x3c
//  0x4d528c: tbz w0, #0, #0x4d5298
//  0x4d5290: ldur x4, [x0, #-1]
//  0x4d5294: ubfx x4, x4, #0xc, #0x14
//  0x4d5298: sub x4, x4, #0x5e
//  0x4d529c: cmp x4, #1
//  0x4d52a0: b.ls #0x4d52b4
//  0x4d52a4: ldr x8, [PP, #0x2f8]
//  0x4d52a8: add x3, PP, #0x11, lsl #12
//  0x4d52ac: ldr x3, [x3, #0x678]
//  0x4d52b0: bl #0x62a0c0
//  0x4d52b4: ldur x0, [FP, #-0x18]
//  0x4d52b8: ldur x3, [FP, #-8]
//  0x4d52bc: stur w0, [x3, #7]
//  0x4d52c0: ldurb w16, [x3, #-1]
//  0x4d52c4: ldurb w17, [x0, #-1]
//  0x4d52c8: and BARRIER, x17, BARRIER, lsr #2
//  0x4d52cc: tst BARRIER, HEAP, lsr #32
//  0x4d52d0: b.eq #0x4d52d8
//  0x4d52d4: bl #0x61e08c
//  0x4d52d8: ldur x4, [FP, #-0x10]
//  0x4d52dc: ldur x0, [x4, #-1]
//  0x4d52e0: ubfx x0, x0, #0xc, #0x14
//  0x4d52e4: mov x1, x4
//  0x4d52e8: add x2, PP, #0xb, lsl #12
//  0x4d52ec: ldr x2, [x2, #0x718]
//  0x4d52f0: sub LR, x0, #1, lsl #12
//  0x4d52f4: ldr LR, [x21, LR, lsl #3]
//  0x4d52f8: blr LR
//  0x4d52fc: cmp w0, w22
//  0x4d5300: b.ne #0x4d530c
//  0x4d5304: ldr x5, [PP, #0x148]
//  0x4d5308: b #0x4d5310
//  0x4d530c: mov x5, x0
//  0x4d5310: ldur x3, [FP, #-8]
//  0x4d5314: ldur x4, [FP, #-0x10]
//  0x4d5318: mov x0, x5
//  0x4d531c: stur x5, [FP, #-0x18]
//  0x4d5320: mov x2, NULL
//  0x4d5324: mov x1, NULL
//  0x4d5328: mov x4, #0x3c
//  0x4d532c: tbz w0, #0, #0x4d5338
//  0x4d5330: ldur x4, [x0, #-1]
//  0x4d5334: ubfx x4, x4, #0xc, #0x14
//  0x4d5338: sub x4, x4, #0x5e
//  0x4d533c: cmp x4, #1
//  0x4d5340: b.ls #0x4d5354
//  0x4d5344: ldr x8, [PP, #0x2f8]
//  0x4d5348: add x3, PP, #0x11, lsl #12
//  0x4d534c: ldr x3, [x3, #0x688]
//  0x4d5350: bl #0x62a0c0
//  0x4d5354: ldur x0, [FP, #-0x18]
//  0x4d5358: ldur x3, [FP, #-8]
//  0x4d535c: stur w0, [x3, #0xb]
//  0x4d5360: ldurb w16, [x3, #-1]
//  0x4d5364: ldurb w17, [x0, #-1]
//  0x4d5368: and BARRIER, x17, BARRIER, lsr #2
//  0x4d536c: tst BARRIER, HEAP, lsr #32
//  0x4d5370: b.eq #0x4d5378
//  0x4d5374: bl #0x61e08c
//  0x4d5378: ldur x4, [FP, #-0x10]
//  0x4d537c: ldur x0, [x4, #-1]
//  0x4d5380: ubfx x0, x0, #0xc, #0x14
//  0x4d5384: mov x1, x4
//  0x4d5388: add x2, PP, #0xb, lsl #12
//  0x4d538c: ldr x2, [x2, #0x748]
//  0x4d5390: sub LR, x0, #1, lsl #12
//  0x4d5394: ldr LR, [x21, LR, lsl #3]
//  0x4d5398: blr LR
//  0x4d539c: cmp w0, w22
//  0x4d53a0: b.ne #0x4d53ac
//  0x4d53a4: ldr x5, [PP, #0x148]
//  0x4d53a8: b #0x4d53b0
//  0x4d53ac: mov x5, x0
//  0x4d53b0: ldur x3, [FP, #-8]
//  0x4d53b4: ldur x4, [FP, #-0x10]
//  0x4d53b8: mov x0, x5
//  0x4d53bc: stur x5, [FP, #-0x18]
//  0x4d53c0: mov x2, NULL
//  0x4d53c4: mov x1, NULL
//  0x4d53c8: mov x4, #0x3c
//  0x4d53cc: tbz w0, #0, #0x4d53d8
//  0x4d53d0: ldur x4, [x0, #-1]
//  0x4d53d4: ubfx x4, x4, #0xc, #0x14
//  0x4d53d8: sub x4, x4, #0x5e
//  0x4d53dc: cmp x4, #1
//  0x4d53e0: b.ls #0x4d53f4
//  0x4d53e4: ldr x8, [PP, #0x2f8]
//  0x4d53e8: add x3, PP, #0x11, lsl #12
//  0x4d53ec: ldr x3, [x3, #0x698]
//  0x4d53f0: bl #0x62a0c0
//  0x4d53f4: ldur x0, [FP, #-0x18]
//  0x4d53f8: ldur x3, [FP, #-8]
//  0x4d53fc: stur w0, [x3, #0xf]
//  0x4d5400: ldurb w16, [x3, #-1]
//  0x4d5404: ldurb w17, [x0, #-1]
//  0x4d5408: and BARRIER, x17, BARRIER, lsr #2
//  0x4d540c: tst BARRIER, HEAP, lsr #32
//  0x4d5410: b.eq #0x4d5418
//  0x4d5414: bl #0x61e08c
//  0x4d5418: ldur x4, [FP, #-0x10]
//  0x4d541c: ldur x0, [x4, #-1]
//  0x4d5420: ubfx x0, x0, #0xc, #0x14
//  0x4d5424: mov x1, x4
//  0x4d5428: add x2, PP, #0x10, lsl #12
//  0x4d542c: ldr x2, [x2, #0xb90]
//  0x4d5430: sub LR, x0, #1, lsl #12
//  0x4d5434: ldr LR, [x21, LR, lsl #3]
//  0x4d5438: blr LR
//  0x4d543c: cmp w0, w22
//  0x4d5440: b.ne #0x4d544c
//  0x4d5444: mov x0, NULL
//  0x4d5448: b #0x4d5478
//  0x4d544c: mov x1, #0x3c
//  0x4d5450: tbz w0, #0, #0x4d545c
//  0x4d5454: ldur x1, [x0, #-1]
//  0x4d5458: ubfx x1, x1, #0xc, #0x14
//  0x4d545c: str x0, [SP]
//  0x4d5460: mov x0, x1
//  0x4d5464: ldr x4, [PP, #0x3a8]
//  0x4d5468: mov x17, #0x3e07
//  0x4d546c: add LR, x0, x17
//  0x4d5470: ldr LR, [x21, LR, lsl #3]
//  0x4d5474: blr LR
//  0x4d5478: cmp w0, w22
//  0x4d547c: b.ne #0x4d5484
//  0x4d5480: ldr x0, [PP, #0x148]
//  0x4d5484: ldur x3, [FP, #-8]
//  0x4d5488: ldur x4, [FP, #-0x10]
//  0x4d548c: stur w0, [x3, #0x13]
//  0x4d5490: ldurb w16, [x3, #-1]
//  0x4d5494: ldurb w17, [x0, #-1]
//  0x4d5498: and BARRIER, x17, BARRIER, lsr #2
//  0x4d549c: tst BARRIER, HEAP, lsr #32
//  0x4d54a0: b.eq #0x4d54a8
//  0x4d54a4: bl #0x61e08c
//  0x4d54a8: ldur x0, [x4, #-1]
//  0x4d54ac: ubfx x0, x0, #0xc, #0x14
//  0x4d54b0: mov x1, x4
//  0x4d54b4: add x2, PP, #0x11, lsl #12
//  0x4d54b8: ldr x2, [x2, #0x6a8]
//  0x4d54bc: sub LR, x0, #1, lsl #12
//  0x4d54c0: ldr LR, [x21, LR, lsl #3]
//  0x4d54c4: blr LR
//  0x4d54c8: cmp w0, w22
//  0x4d54cc: b.ne #0x4d54d4
//  0x4d54d0: add x0, NULL, #0x30
//  0x4d54d4: ldur x3, [FP, #-0x10]
//  0x4d54d8: mov x2, NULL
//  0x4d54dc: mov x1, NULL
//  0x4d54e0: mov x4, #0x3c
//  0x4d54e4: tbz w0, #0, #0x4d54f0
//  0x4d54e8: ldur x4, [x0, #-1]
//  0x4d54ec: ubfx x4, x4, #0xc, #0x14
//  0x4d54f0: cmp x4, #0x3f
//  0x4d54f4: b.eq #0x4d5508
//  0x4d54f8: ldr x8, [PP, #0xa08]
//  0x4d54fc: add x3, PP, #0x11, lsl #12
//  0x4d5500: ldr x3, [x3, #0x6b0]
//  0x4d5504: bl #0x62a0a0
//  0x4d5508: ldur x1, [FP, #-0x10]
//  0x4d550c: ldur x0, [x1, #-1]
//  0x4d5510: ubfx x0, x0, #0xc, #0x14
//  0x4d5514: add x2, PP, #0x11, lsl #12
//  0x4d5518: ldr x2, [x2, #0x6c0]
//  0x4d551c: sub LR, x0, #1, lsl #12
//  0x4d5520: ldr LR, [x21, LR, lsl #3]
//  0x4d5524: blr LR
//  0x4d5528: cmp w0, w22
//  0x4d552c: b.ne #0x4d5538
//  0x4d5530: add x4, NULL, #0x30
//  0x4d5534: b #0x4d553c
//  0x4d5538: mov x4, x0
//  0x4d553c: ldur x3, [FP, #-8]
//  0x4d5540: mov x0, x4
//  0x4d5544: stur x4, [FP, #-0x10]
//  0x4d5548: mov x2, NULL
//  0x4d554c: mov x1, NULL
//  0x4d5550: mov x4, #0x3c
//  0x4d5554: tbz w0, #0, #0x4d5560
//  0x4d5558: ldur x4, [x0, #-1]
//  0x4d555c: ubfx x4, x4, #0xc, #0x14
//  0x4d5560: cmp x4, #0x3f
//  0x4d5564: b.eq #0x4d5578
//  0x4d5568: ldr x8, [PP, #0xa08]
//  0x4d556c: add x3, PP, #0x11, lsl #12
//  0x4d5570: ldr x3, [x3, #0x6c8]
//  0x4d5574: bl #0x62a0a0
//  0x4d5578: ldur x1, [FP, #-8]
//  0x4d557c: ldur x2, [FP, #-0x10]
//  0x4d5580: stur w2, [x1, #0x17]
//  0x4d5584: mov x0, NULL
//  0x4d5588: mov SP, FP
//  0x4d558c: ldp FP, LR, [SP], #0x10
//  0x4d5590: ret 
//  0x4d5594: bl #0x61fa28
//  0x4d5598: b #0x4d5228
//
dynamic PartyLuckBagItem_ctor_fromJson() {
  dynamic BARRIER;
  dynamic FP;
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
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d51fc
  // frame: FP = SP // 0x4d5200
  // frame: SP = SP - 0x20 // 0x4d5204
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4d5208
  x3 = x2; // 0x4d5210
  x4 = x1; // 0x4d520c
  local_m8 = x1; // 0x4d5214
  local_m10 = x2; // 0x4d5218
  BARRIER = mem(THR, 0x38); // 0x4d521c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d5594
  }
  memSet(x4, 7, w0); // 0x4d5228
  memSet(x4, 0xb, w0); // 0x4d522c
  memSet(x4, 0xf, w0); // 0x4d5230
  memSet(x4, 0x13, w0); // 0x4d5234
  memSet(x4, 0x17, w0); // 0x4d5238
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d5254
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x4d5240
  x1 = x3; // 0x4d5244
  x2 = "signature" /* pp+0xb730 */; // 0x4d524c
  callIndirect(LR); // 0x4d5258
  if (w0 != w22) {
    x5 = x0; // 0x4d526c
  } else {
    x5 = "" /* pp+0x148 */; // 0x4d5264
  }
  x0 = x5; // 0x4d5278
  x3 = local_m10; // 0x4d5274
  x4 = local_m8; // 0x4d5270
  local_m18 = x5; // 0x4d527c
  x1 = NULL; // 0x4d5284
  x2 = NULL; // 0x4d5280
  x4 = 60; // 0x4d5288
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d5294
  }
  x4 = x4 - 0x5e; // 0x4d5298
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0x678) /* Obj!? */; // 0x4d52ac
    x8 = mem(PP, 0x2f8) /* Type */; // 0x4d52a4
    sub_0x62a0c0(); // 0x4d52b0
  }
  x0 = local_m18; // 0x4d52b4
  x3 = local_m8; // 0x4d52b8
  memSet(x3, 7, w0); // 0x4d52bc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d52c8
  w16 = mem(x3, -1); // 0x4d52c0
  w17 = mem(x0, -1); // 0x4d52c4
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4d52c0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d52c4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d52d4
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d52f4
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4d52e0
  x1 = local_m10; // 0x4d52e4
  x2 = "avatarUrl" /* pp+0xb718 */; // 0x4d52ec
  x4 = local_m10; // 0x4d52d8
  callIndirect(LR); // 0x4d52f8
  if (w0 != w22) {
    x5 = x0; // 0x4d530c
  } else {
    x5 = "" /* pp+0x148 */; // 0x4d5304
  }
  x0 = x5; // 0x4d5318
  x3 = local_m8; // 0x4d5310
  x4 = local_m10; // 0x4d5314
  local_m18 = x5; // 0x4d531c
  x1 = NULL; // 0x4d5324
  x2 = NULL; // 0x4d5320
  x4 = 60; // 0x4d5328
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d5334
  }
  x4 = x4 - 0x5e; // 0x4d5338
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0x688) /* Obj!? */; // 0x4d534c
    x8 = mem(PP, 0x2f8) /* Type */; // 0x4d5344
    sub_0x62a0c0(); // 0x4d5350
  }
  x0 = local_m18; // 0x4d5354
  x3 = local_m8; // 0x4d5358
  memSet(x3, 0xb, w0); // 0x4d535c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d5368
  w16 = mem(x3, -1); // 0x4d5360
  w17 = mem(x0, -1); // 0x4d5364
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4d5360
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d5364
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d5374
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d5394
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4d5380
  x1 = local_m10; // 0x4d5384
  x2 = "garlandUrl" /* pp+0xb748 */; // 0x4d538c
  x4 = local_m10; // 0x4d5378
  callIndirect(LR); // 0x4d5398
  if (w0 != w22) {
    x5 = x0; // 0x4d53ac
  } else {
    x5 = "" /* pp+0x148 */; // 0x4d53a4
  }
  x0 = x5; // 0x4d53b8
  x3 = local_m8; // 0x4d53b0
  x4 = local_m10; // 0x4d53b4
  local_m18 = x5; // 0x4d53bc
  x1 = NULL; // 0x4d53c4
  x2 = NULL; // 0x4d53c0
  x4 = 60; // 0x4d53c8
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d53d4
  }
  x4 = x4 - 0x5e; // 0x4d53d8
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0x698) /* Obj!? */; // 0x4d53ec
    x8 = mem(PP, 0x2f8) /* Type */; // 0x4d53e4
    sub_0x62a0c0(); // 0x4d53f0
  }
  x0 = local_m18; // 0x4d53f4
  x3 = local_m8; // 0x4d53f8
  memSet(x3, 0xf, w0); // 0x4d53fc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d5408
  w16 = mem(x3, -1); // 0x4d5400
  w17 = mem(x0, -1); // 0x4d5404
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4d5400
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d5404
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d5414
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d5434
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4d5420
  x1 = local_m10; // 0x4d5424
  x2 = "soulCoinNum" /* pp+0x10b90 */; // 0x4d542c
  x4 = local_m10; // 0x4d5418
  callIndirect(LR); // 0x4d5438
  if (w0 != w22) {
    x1 = 60; // 0x4d544c
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d5458
    }
    local_0 = x0; // 0x4d545c
    LR = mem(x21, ((x0 + x17) << 3)); // 0x4d5470
    x0 = x1; // 0x4d5460
    x17 = 15879; // 0x4d5468
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x4d5464
    callIndirect(LR); // 0x4d5474
  } else {
    x0 = NULL; // 0x4d5444
  }
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x4d5480
  }
  x3 = local_m8; // 0x4d5484
  x4 = local_m10; // 0x4d5488
  memSet(x3, 0x13, w0); // 0x4d548c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d5498
  w16 = mem(x3, -1); // 0x4d5490
  w17 = mem(x0, -1); // 0x4d5494
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4d5490
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d5494
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d54a4
  }
  LR = mem(x21, ((((mem(x4, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d54c0
  x0 = ((mem(x4, -1)) >> 12) & 0xfffff; // 0x4d54ac
  x1 = x4; // 0x4d54b0
  x2 = "vip" /* pp+0x116a8 */; // 0x4d54b8
  callIndirect(LR); // 0x4d54c4
  if (w0 != w22) {
  } else {
    x0 = NULL + 0x30; // 0x4d54d0
  }
  x1 = NULL; // 0x4d54dc
  x2 = NULL; // 0x4d54d8
  x3 = local_m10; // 0x4d54d4
  x4 = 60; // 0x4d54e0
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d54ec
  }
  if (x4 == 0x3f) {
  } else {
    x3 = mem((PP + 0x11000), 0x6b0) /* Obj!? */; // 0x4d5500
    x8 = mem(PP, 0xa08) /* Type */; // 0x4d54f8
    sub_0x62a0a0(); // 0x4d5504
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d5520
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4d5510
  x1 = local_m10; // 0x4d5508
  x2 = "lucky" /* pp+0x116c0 */; // 0x4d5518
  callIndirect(LR); // 0x4d5524
  if (w0 != w22) {
    x4 = x0; // 0x4d5538
  } else {
    x4 = NULL + 0x30; // 0x4d5530
  }
  x0 = x4; // 0x4d5540
  x3 = local_m8; // 0x4d553c
  local_m10 = x4; // 0x4d5544
  x1 = NULL; // 0x4d554c
  x2 = NULL; // 0x4d5548
  x4 = 60; // 0x4d5550
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d555c
  }
  if (x4 == 0x3f) {
  } else {
    x3 = mem((PP + 0x11000), 0x6c8) /* Obj!? */; // 0x4d5570
    x8 = mem(PP, 0xa08) /* Type */; // 0x4d5568
    sub_0x62a0a0(); // 0x4d5574
  }
  x1 = local_m8; // 0x4d5578
  x2 = local_m10; // 0x4d557c
  memSet(x1, 0x17, w2); // 0x4d5580
  SP = FP; // 0x4d5588
  x0 = NULL; // 0x4d5584
  // frame: FP, LR, mem(SP), 0x10 // 0x4d558c
  return;
}

// PartyRedPocketInfo_ctor_fromJson
// raw disassembly:
//  0x4d5c6c: stp FP, LR, [SP, #-0x10]!
//  0x4d5c70: mov FP, SP
//  0x4d5c74: sub SP, SP, #0x30
//  0x4d5c78: ldr x0, [PP, #0x40]
//  0x4d5c7c: mov x4, x1
//  0x4d5c80: mov x3, x2
//  0x4d5c84: stur x1, [FP, #-8]
//  0x4d5c88: stur x2, [FP, #-0x10]
//  0x4d5c8c: ldr BARRIER, [THR, #0x38]
//  0x4d5c90: cmp SP, BARRIER
//  0x4d5c94: b.ls #0x4d5e94
//  0x4d5c98: stur w0, [x4, #7]
//  0x4d5c9c: stur w0, [x4, #0xb]
//  0x4d5ca0: ldur x0, [x3, #-1]
//  0x4d5ca4: ubfx x0, x0, #0xc, #0x14
//  0x4d5ca8: mov x1, x3
//  0x4d5cac: add x2, PP, #0x10, lsl #12
//  0x4d5cb0: ldr x2, [x2, #0xdb0]
//  0x4d5cb4: sub LR, x0, #1, lsl #12
//  0x4d5cb8: ldr LR, [x21, LR, lsl #3]
//  0x4d5cbc: blr LR
//  0x4d5cc0: cmp w0, w22
//  0x4d5cc4: b.ne #0x4d5cdc
//  0x4d5cc8: mov x1, NULL
//  0x4d5ccc: mov x2, #0
//  0x4d5cd0: bl #0x277268
//  0x4d5cd4: mov x5, x0
//  0x4d5cd8: b #0x4d5ce0
//  0x4d5cdc: mov x5, x0
//  0x4d5ce0: ldur x4, [FP, #-8]
//  0x4d5ce4: ldur x3, [FP, #-0x10]
//  0x4d5ce8: mov x0, x5
//  0x4d5cec: stur x5, [FP, #-0x18]
//  0x4d5cf0: mov x2, NULL
//  0x4d5cf4: mov x1, NULL
//  0x4d5cf8: ldr x8, [PP, #0xfa8]
//  0x4d5cfc: add x3, PP, #0x10, lsl #12
//  0x4d5d00: ldr x3, [x3, #0xdb8]
//  0x4d5d04: bl #0x285664
//  0x4d5d08: add x1, PP, #0x10, lsl #12
//  0x4d5d0c: ldr x1, [x1, #0xdc8]
//  0x4d5d10: mov x2, NULL
//  0x4d5d14: bl #0x61ec54
//  0x4d5d18: mov x1, x0
//  0x4d5d1c: ldur x0, [FP, #-0x18]
//  0x4d5d20: ldur x2, [x0, #-1]
//  0x4d5d24: ubfx x2, x2, #0xc, #0x14
//  0x4d5d28: add BARRIER, PP, #0xb, lsl #12
//  0x4d5d2c: ldr BARRIER, [BARRIER, #0x780]
//  0x4d5d30: stp x0, BARRIER, [SP, #8]
//  0x4d5d34: str x1, [SP]
//  0x4d5d38: mov x0, x2
//  0x4d5d3c: ldr x4, [PP, #0x58]
//  0x4d5d40: mov x17, #0x86d9
//  0x4d5d44: add LR, x0, x17
//  0x4d5d48: ldr LR, [x21, LR, lsl #3]
//  0x4d5d4c: blr LR
//  0x4d5d50: ldur x1, [x0, #-1]
//  0x4d5d54: ubfx x1, x1, #0xc, #0x14
//  0x4d5d58: mov BARRIER, x0
//  0x4d5d5c: mov x0, x1
//  0x4d5d60: mov x1, BARRIER
//  0x4d5d64: ldr x4, [PP, #0x4c0]
//  0x4d5d68: add LR, x0, #0x35e
//  0x4d5d6c: ldr LR, [x21, LR, lsl #3]
//  0x4d5d70: blr LR
//  0x4d5d74: ldur x3, [FP, #-8]
//  0x4d5d78: stur w0, [x3, #7]
//  0x4d5d7c: ldurb w16, [x3, #-1]
//  0x4d5d80: ldurb w17, [x0, #-1]
//  0x4d5d84: and BARRIER, x17, BARRIER, lsr #2
//  0x4d5d88: tst BARRIER, HEAP, lsr #32
//  0x4d5d8c: b.eq #0x4d5d94
//  0x4d5d90: bl #0x61e08c
//  0x4d5d94: ldur x1, [FP, #-0x10]
//  0x4d5d98: ldur x0, [x1, #-1]
//  0x4d5d9c: ubfx x0, x0, #0xc, #0x14
//  0x4d5da0: add x2, PP, #0x10, lsl #12
//  0x4d5da4: ldr x2, [x2, #0xdd0]
//  0x4d5da8: sub LR, x0, #1, lsl #12
//  0x4d5dac: ldr LR, [x21, LR, lsl #3]
//  0x4d5db0: blr LR
//  0x4d5db4: cmp w0, w22
//  0x4d5db8: b.ne #0x4d5dd0
//  0x4d5dbc: mov x1, NULL
//  0x4d5dc0: mov x2, #0
//  0x4d5dc4: bl #0x277268
//  0x4d5dc8: mov x4, x0
//  0x4d5dcc: b #0x4d5dd4
//  0x4d5dd0: mov x4, x0
//  0x4d5dd4: ldur x3, [FP, #-8]
//  0x4d5dd8: mov x0, x4
//  0x4d5ddc: stur x4, [FP, #-0x10]
//  0x4d5de0: mov x2, NULL
//  0x4d5de4: mov x1, NULL
//  0x4d5de8: ldr x8, [PP, #0xfa8]
//  0x4d5dec: add x3, PP, #0x10, lsl #12
//  0x4d5df0: ldr x3, [x3, #0xdd8]
//  0x4d5df4: bl #0x285664
//  0x4d5df8: add x1, PP, #0x10, lsl #12
//  0x4d5dfc: ldr x1, [x1, #0xde8]
//  0x4d5e00: mov x2, NULL
//  0x4d5e04: bl #0x61ec54
//  0x4d5e08: mov x1, x0
//  0x4d5e0c: ldur x0, [FP, #-0x10]
//  0x4d5e10: ldur x2, [x0, #-1]
//  0x4d5e14: ubfx x2, x2, #0xc, #0x14
//  0x4d5e18: add BARRIER, PP, #0xb, lsl #12
//  0x4d5e1c: ldr BARRIER, [BARRIER, #0x788]
//  0x4d5e20: stp x0, BARRIER, [SP, #8]
//  0x4d5e24: str x1, [SP]
//  0x4d5e28: mov x0, x2
//  0x4d5e2c: ldr x4, [PP, #0x58]
//  0x4d5e30: mov x17, #0x86d9
//  0x4d5e34: add LR, x0, x17
//  0x4d5e38: ldr LR, [x21, LR, lsl #3]
//  0x4d5e3c: blr LR
//  0x4d5e40: ldur x1, [x0, #-1]
//  0x4d5e44: ubfx x1, x1, #0xc, #0x14
//  0x4d5e48: mov BARRIER, x0
//  0x4d5e4c: mov x0, x1
//  0x4d5e50: mov x1, BARRIER
//  0x4d5e54: ldr x4, [PP, #0x4c0]
//  0x4d5e58: add LR, x0, #0x35e
//  0x4d5e5c: ldr LR, [x21, LR, lsl #3]
//  0x4d5e60: blr LR
//  0x4d5e64: ldur x1, [FP, #-8]
//  0x4d5e68: stur w0, [x1, #0xb]
//  0x4d5e6c: ldurb w16, [x1, #-1]
//  0x4d5e70: ldurb w17, [x0, #-1]
//  0x4d5e74: and BARRIER, x17, BARRIER, lsr #2
//  0x4d5e78: tst BARRIER, HEAP, lsr #32
//  0x4d5e7c: b.eq #0x4d5e84
//  0x4d5e80: bl #0x61e04c
//  0x4d5e84: mov x0, NULL
//  0x4d5e88: mov SP, FP
//  0x4d5e8c: ldp FP, LR, [SP], #0x10
//  0x4d5e90: ret 
//  0x4d5e94: bl #0x61fa28
//  0x4d5e98: b #0x4d5c98
//
dynamic PartyRedPocketInfo_ctor_fromJson() {
  dynamic BARRIER;
  dynamic FP;
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
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d5c6c
  // frame: FP = SP // 0x4d5c70
  // frame: SP = SP - 0x30 // 0x4d5c74
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4d5c78
  x3 = x2; // 0x4d5c80
  x4 = x1; // 0x4d5c7c
  local_m8 = x1; // 0x4d5c84
  local_m10 = x2; // 0x4d5c88
  BARRIER = mem(THR, 0x38); // 0x4d5c8c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d5e94
  }
  memSet(x4, 7, w0); // 0x4d5c98
  memSet(x4, 0xb, w0); // 0x4d5c9c
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d5cb8
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x4d5ca4
  x1 = x3; // 0x4d5ca8
  x2 = "packetCoinNumList" /* pp+0x10db0 */; // 0x4d5cb0
  callIndirect(LR); // 0x4d5cbc
  if (w0 != w22) {
    x5 = x0; // 0x4d5cdc
  } else {
    x1 = NULL; // 0x4d5cc8
    x2 = 0; // 0x4d5ccc
    GrowableList_factory_ctor() /* 0x277268 */; // 0x4d5cd0
    x5 = x0; // 0x4d5cd4
  }
  x0 = x5; // 0x4d5ce8
  x3 = local_m10; // 0x4d5ce4
  x4 = local_m8; // 0x4d5ce0
  local_m18 = x5; // 0x4d5cec
  x1 = NULL; // 0x4d5cf4
  x2 = NULL; // 0x4d5cf0
  x3 = mem((PP + 0x10000), 0xdb8) /* Obj!? */; // 0x4d5d00
  x8 = mem(PP, 0xfa8) /* Type */; // 0x4d5cf8
  sub_0x285664(); // 0x4d5d04
  x1 = mem((PP + 0x10000), 0xdc8) /* Function */; // 0x4d5d0c
  x2 = NULL; // 0x4d5d10
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d5d14
  BARRIER = mem((PP + 0xb000), 0x780) /* TypeArguments */; // 0x4d5d2c
  x0 = local_m18; // 0x4d5d1c
  x1 = x0; // 0x4d5d18
  x2 = ((mem((local_m18), -1)) >> 12) & 0xfffff; // 0x4d5d24
  // frame: x0, BARRIER, mem(SP, 8) // 0x4d5d30
  local_0 = x1; // 0x4d5d34
  LR = mem(x21, ((x0 + x17) << 3)); // 0x4d5d48
  x0 = x2; // 0x4d5d38
  x17 = 34521; // 0x4d5d40
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x4d5d3c
  callIndirect(LR); // 0x4d5d4c
  BARRIER = x0; // 0x4d5d58
  x0 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d5d5c
  x1 = x0; // 0x4d5d60
  LR = mem(x21, ((x0 + 0x35e) << 3)); // 0x4d5d6c
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4d5d64
  callIndirect(LR); // 0x4d5d70
  x3 = local_m8; // 0x4d5d74
  memSet(x3, 7, w0); // 0x4d5d78
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d5d84
  w16 = mem(x3, -1); // 0x4d5d7c
  w17 = mem(x0, -1); // 0x4d5d80
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4d5d7c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d5d80
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d5d90
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d5dac
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4d5d9c
  x1 = local_m10; // 0x4d5d94
  x2 = "packetNumList" /* pp+0x10dd0 */; // 0x4d5da4
  callIndirect(LR); // 0x4d5db0
  if (w0 != w22) {
    x4 = x0; // 0x4d5dd0
  } else {
    x1 = NULL; // 0x4d5dbc
    x2 = 0; // 0x4d5dc0
    GrowableList_factory_ctor() /* 0x277268 */; // 0x4d5dc4
    x4 = x0; // 0x4d5dc8
  }
  x0 = x4; // 0x4d5dd8
  x3 = local_m8; // 0x4d5dd4
  local_m10 = x4; // 0x4d5ddc
  x1 = NULL; // 0x4d5de4
  x2 = NULL; // 0x4d5de0
  x3 = mem((PP + 0x10000), 0xdd8) /* Obj!? */; // 0x4d5df0
  x8 = mem(PP, 0xfa8) /* Type */; // 0x4d5de8
  sub_0x285664(); // 0x4d5df4
  x1 = mem((PP + 0x10000), 0xde8) /* Function */; // 0x4d5dfc
  x2 = NULL; // 0x4d5e00
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d5e04
  BARRIER = mem((PP + 0xb000), 0x788) /* TypeArguments */; // 0x4d5e1c
  x0 = local_m10; // 0x4d5e0c
  x1 = x0; // 0x4d5e08
  x2 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4d5e14
  // frame: x0, BARRIER, mem(SP, 8) // 0x4d5e20
  local_0 = x1; // 0x4d5e24
  LR = mem(x21, ((x0 + x17) << 3)); // 0x4d5e38
  x0 = x2; // 0x4d5e28
  x17 = 34521; // 0x4d5e30
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x4d5e2c
  callIndirect(LR); // 0x4d5e3c
  BARRIER = x0; // 0x4d5e48
  x0 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d5e4c
  x1 = x0; // 0x4d5e50
  LR = mem(x21, ((x0 + 0x35e) << 3)); // 0x4d5e5c
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4d5e54
  callIndirect(LR); // 0x4d5e60
  x1 = local_m8; // 0x4d5e64
  memSet(x1, 0xb, w0); // 0x4d5e68
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d5e74
  w16 = mem(x1, -1); // 0x4d5e6c
  w17 = mem(x0, -1); // 0x4d5e70
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d5e6c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d5e70
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d5e80
  }
  SP = FP; // 0x4d5e88
  x0 = NULL; // 0x4d5e84
  // frame: FP, LR, mem(SP), 0x10 // 0x4d5e8c
  return;
}

// PartyRedPocketInfo_anon_closure
// raw disassembly:
//  0x4d5e9c: stp FP, LR, [SP, #-0x10]!
//  0x4d5ea0: mov FP, SP
//  0x4d5ea4: sub SP, SP, #8
//  0x4d5ea8: ldr BARRIER, [THR, #0x38]
//  0x4d5eac: cmp SP, BARRIER
//  0x4d5eb0: b.ls #0x4d5ef4
//  0x4d5eb4: ldr x0, [FP, #0x10]
//  0x4d5eb8: mov x2, NULL
//  0x4d5ebc: mov x1, NULL
//  0x4d5ec0: ldr x8, [PP, #0x3cd0]
//  0x4d5ec4: add x3, PP, #0x10, lsl #12
//  0x4d5ec8: ldr x3, [x3, #0xdf0]
//  0x4d5ecc: bl #0x2b15f0
//  0x4d5ed0: bl #0x4d607c
//  0x4d5ed4: mov x1, x0
//  0x4d5ed8: ldr x2, [FP, #0x10]
//  0x4d5edc: stur x0, [FP, #-8]
//  0x4d5ee0: bl #0x4d5efc
//  0x4d5ee4: ldur x0, [FP, #-8]
//  0x4d5ee8: mov SP, FP
//  0x4d5eec: ldp FP, LR, [SP], #0x10
//  0x4d5ef0: ret 
//  0x4d5ef4: bl #0x61fa28
//  0x4d5ef8: b #0x4d5eb4
//
dynamic PartyRedPocketInfo_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d5e9c
  BARRIER = mem(THR, 0x38); // 0x4d5ea8
  // frame: FP = SP // 0x4d5ea0
  // frame: SP = SP - 8 // 0x4d5ea4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d5ef4
  }
  x0 = local_10; // 0x4d5eb4
  x1 = NULL; // 0x4d5ebc
  x2 = NULL; // 0x4d5eb8
  x3 = mem((PP + 0x10000), 0xdf0) /* Obj!? */; // 0x4d5ec8
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x4d5ec0
  sub_0x2b15f0(); // 0x4d5ecc
  AllocationStub_PartyRedPocketNum() /* 0x4d607c */; // 0x4d5ed0
  x1 = x0; // 0x4d5ed4
  x2 = local_10; // 0x4d5ed8
  local_m8 = x0; // 0x4d5edc
  PartyRedPocketNum_ctor_fromJson() /* 0x4d5efc */; // 0x4d5ee0
  SP = FP; // 0x4d5ee8
  x0 = local_m8; // 0x4d5ee4
  // frame: FP, LR, mem(SP), 0x10 // 0x4d5eec
  return;
}

// PartyRedPocketInfo_anon_closure_2
// raw disassembly:
//  0x4d6088: stp FP, LR, [SP, #-0x10]!
//  0x4d608c: mov FP, SP
//  0x4d6090: sub SP, SP, #8
//  0x4d6094: ldr BARRIER, [THR, #0x38]
//  0x4d6098: cmp SP, BARRIER
//  0x4d609c: b.ls #0x4d60e0
//  0x4d60a0: ldr x0, [FP, #0x10]
//  0x4d60a4: mov x2, NULL
//  0x4d60a8: mov x1, NULL
//  0x4d60ac: ldr x8, [PP, #0x3cd0]
//  0x4d60b0: add x3, PP, #0x10, lsl #12
//  0x4d60b4: ldr x3, [x3, #0xe20]
//  0x4d60b8: bl #0x2b15f0
//  0x4d60bc: bl #0x4d6268
//  0x4d60c0: mov x1, x0
//  0x4d60c4: ldr x2, [FP, #0x10]
//  0x4d60c8: stur x0, [FP, #-8]
//  0x4d60cc: bl #0x4d60e8
//  0x4d60d0: ldur x0, [FP, #-8]
//  0x4d60d4: mov SP, FP
//  0x4d60d8: ldp FP, LR, [SP], #0x10
//  0x4d60dc: ret 
//  0x4d60e0: bl #0x61fa28
//  0x4d60e4: b #0x4d60a0
//
dynamic PartyRedPocketInfo_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d6088
  BARRIER = mem(THR, 0x38); // 0x4d6094
  // frame: FP = SP // 0x4d608c
  // frame: SP = SP - 8 // 0x4d6090
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d60e0
  }
  x0 = local_10; // 0x4d60a0
  x1 = NULL; // 0x4d60a8
  x2 = NULL; // 0x4d60a4
  x3 = mem((PP + 0x10000), 0xe20) /* Obj!? */; // 0x4d60b4
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x4d60ac
  sub_0x2b15f0(); // 0x4d60b8
  AllocationStub_PartyRedPocketCoin() /* 0x4d6268 */; // 0x4d60bc
  x1 = x0; // 0x4d60c0
  x2 = local_10; // 0x4d60c4
  local_m8 = x0; // 0x4d60c8
  PartyRedPocketCoin_ctor_fromJson() /* 0x4d60e8 */; // 0x4d60cc
  SP = FP; // 0x4d60d4
  x0 = local_m8; // 0x4d60d0
  // frame: FP, LR, mem(SP), 0x10 // 0x4d60d8
  return;
}

// PartyRedPocketNum_ctor_fromJson
// raw disassembly:
//  0x4d5efc: stp FP, LR, [SP, #-0x10]!
//  0x4d5f00: mov FP, SP
//  0x4d5f04: sub SP, SP, #0x18
//  0x4d5f08: ldr x0, [PP, #0x40]
//  0x4d5f0c: mov x4, x1
//  0x4d5f10: mov x3, x2
//  0x4d5f14: stur x1, [FP, #-8]
//  0x4d5f18: stur x2, [FP, #-0x10]
//  0x4d5f1c: ldr BARRIER, [THR, #0x38]
//  0x4d5f20: cmp SP, BARRIER
//  0x4d5f24: b.ls #0x4d6074
//  0x4d5f28: stur w0, [x4, #7]
//  0x4d5f2c: stur w0, [x4, #0xb]
//  0x4d5f30: ldur x0, [x3, #-1]
//  0x4d5f34: ubfx x0, x0, #0xc, #0x14
//  0x4d5f38: mov x1, x3
//  0x4d5f3c: add x2, PP, #0x10, lsl #12
//  0x4d5f40: ldr x2, [x2, #0xb98]
//  0x4d5f44: sub LR, x0, #1, lsl #12
//  0x4d5f48: ldr LR, [x21, LR, lsl #3]
//  0x4d5f4c: blr LR
//  0x4d5f50: cmp w0, w22
//  0x4d5f54: b.ne #0x4d5f60
//  0x4d5f58: mov x5, #0
//  0x4d5f5c: b #0x4d5f64
//  0x4d5f60: mov x5, x0
//  0x4d5f64: ldur x4, [FP, #-8]
//  0x4d5f68: ldur x3, [FP, #-0x10]
//  0x4d5f6c: mov x0, x5
//  0x4d5f70: stur x5, [FP, #-0x18]
//  0x4d5f74: mov x2, NULL
//  0x4d5f78: mov x1, NULL
//  0x4d5f7c: tbz w0, #0, #0x4d5fa4
//  0x4d5f80: ldur x4, [x0, #-1]
//  0x4d5f84: ubfx x4, x4, #0xc, #0x14
//  0x4d5f88: sub x4, x4, #0x3c
//  0x4d5f8c: cmp x4, #1
//  0x4d5f90: b.ls #0x4d5fa4
//  0x4d5f94: ldr x8, [PP, #0x1170]
//  0x4d5f98: add x3, PP, #0x10, lsl #12
//  0x4d5f9c: ldr x3, [x3, #0xe00]
//  0x4d5fa0: bl #0x62aa34
//  0x4d5fa4: ldur x0, [FP, #-0x18]
//  0x4d5fa8: ldur x3, [FP, #-8]
//  0x4d5fac: stur w0, [x3, #7]
//  0x4d5fb0: tbz w0, #0, #0x4d5fcc
//  0x4d5fb4: ldurb w16, [x3, #-1]
//  0x4d5fb8: ldurb w17, [x0, #-1]
//  0x4d5fbc: and BARRIER, x17, BARRIER, lsr #2
//  0x4d5fc0: tst BARRIER, HEAP, lsr #32
//  0x4d5fc4: b.eq #0x4d5fcc
//  0x4d5fc8: bl #0x61e08c
//  0x4d5fcc: ldur x1, [FP, #-0x10]
//  0x4d5fd0: ldur x0, [x1, #-1]
//  0x4d5fd4: ubfx x0, x0, #0xc, #0x14
//  0x4d5fd8: add x2, PP, #0xf, lsl #12
//  0x4d5fdc: ldr x2, [x2, #0xa50]
//  0x4d5fe0: sub LR, x0, #1, lsl #12
//  0x4d5fe4: ldr LR, [x21, LR, lsl #3]
//  0x4d5fe8: blr LR
//  0x4d5fec: cmp w0, w22
//  0x4d5ff0: b.ne #0x4d5ffc
//  0x4d5ff4: ldr x4, [PP, #0x148]
//  0x4d5ff8: b #0x4d6000
//  0x4d5ffc: mov x4, x0
//  0x4d6000: ldur x3, [FP, #-8]
//  0x4d6004: mov x0, x4
//  0x4d6008: stur x4, [FP, #-0x10]
//  0x4d600c: mov x2, NULL
//  0x4d6010: mov x1, NULL
//  0x4d6014: mov x4, #0x3c
//  0x4d6018: tbz w0, #0, #0x4d6024
//  0x4d601c: ldur x4, [x0, #-1]
//  0x4d6020: ubfx x4, x4, #0xc, #0x14
//  0x4d6024: sub x4, x4, #0x5e
//  0x4d6028: cmp x4, #1
//  0x4d602c: b.ls #0x4d6040
//  0x4d6030: ldr x8, [PP, #0x2f8]
//  0x4d6034: add x3, PP, #0x10, lsl #12
//  0x4d6038: ldr x3, [x3, #0xe10]
//  0x4d603c: bl #0x62a0c0
//  0x4d6040: ldur x0, [FP, #-0x10]
//  0x4d6044: ldur x1, [FP, #-8]
//  0x4d6048: stur w0, [x1, #0xb]
//  0x4d604c: ldurb w16, [x1, #-1]
//  0x4d6050: ldurb w17, [x0, #-1]
//  0x4d6054: and BARRIER, x17, BARRIER, lsr #2
//  0x4d6058: tst BARRIER, HEAP, lsr #32
//  0x4d605c: b.eq #0x4d6064
//  0x4d6060: bl #0x61e04c
//  0x4d6064: mov x0, NULL
//  0x4d6068: mov SP, FP
//  0x4d606c: ldp FP, LR, [SP], #0x10
//  0x4d6070: ret 
//  0x4d6074: bl #0x61fa28
//  0x4d6078: b #0x4d5f28
//
dynamic PartyRedPocketNum_ctor_fromJson() {
  dynamic BARRIER;
  dynamic FP;
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
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d5efc
  // frame: FP = SP // 0x4d5f00
  // frame: SP = SP - 0x18 // 0x4d5f04
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4d5f08
  x3 = x2; // 0x4d5f10
  x4 = x1; // 0x4d5f0c
  local_m8 = x1; // 0x4d5f14
  local_m10 = x2; // 0x4d5f18
  BARRIER = mem(THR, 0x38); // 0x4d5f1c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d6074
  }
  memSet(x4, 7, w0); // 0x4d5f28
  memSet(x4, 0xb, w0); // 0x4d5f2c
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d5f48
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x4d5f34
  x1 = x3; // 0x4d5f38
  x2 = "packetNum" /* pp+0x10b98 */; // 0x4d5f40
  callIndirect(LR); // 0x4d5f4c
  if (w0 != w22) {
    x5 = x0; // 0x4d5f60
  } else {
    x5 = 0; // 0x4d5f58
  }
  x0 = x5; // 0x4d5f6c
  x3 = local_m10; // 0x4d5f68
  x4 = local_m8; // 0x4d5f64
  local_m18 = x5; // 0x4d5f70
  x1 = NULL; // 0x4d5f78
  x2 = NULL; // 0x4d5f74
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4d5f88
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x10000), 0xe00) /* Obj!? */; // 0x4d5f9c
      x8 = mem(PP, 0x1170) /* Type */; // 0x4d5f94
      sub_0x62aa34(); // 0x4d5fa0
    }
  }
  x0 = local_m18; // 0x4d5fa4
  x3 = local_m8; // 0x4d5fa8
  memSet(x3, 7, w0); // 0x4d5fac
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d5fbc
    w17 = mem(x0, -1); // 0x4d5fb8
    x16 = w16 & 0xffffffff; // 0x4d5fb4
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d5fb8
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d5fc8
    }
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d5fe4
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4d5fd4
  x1 = local_m10; // 0x4d5fcc
  x2 = "imageUrl" /* pp+0xfa50 */; // 0x4d5fdc
  callIndirect(LR); // 0x4d5fe8
  if (w0 != w22) {
    x4 = x0; // 0x4d5ffc
  } else {
    x4 = "" /* pp+0x148 */; // 0x4d5ff4
  }
  x0 = x4; // 0x4d6004
  x3 = local_m8; // 0x4d6000
  local_m10 = x4; // 0x4d6008
  x1 = NULL; // 0x4d6010
  x2 = NULL; // 0x4d600c
  x4 = 60; // 0x4d6014
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d6020
  }
  x4 = x4 - 0x5e; // 0x4d6024
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x10000), 0xe10) /* Obj!? */; // 0x4d6038
    x8 = mem(PP, 0x2f8) /* Type */; // 0x4d6030
    sub_0x62a0c0(); // 0x4d603c
  }
  x0 = local_m10; // 0x4d6040
  x1 = local_m8; // 0x4d6044
  memSet(x1, 0xb, w0); // 0x4d6048
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d6054
  w16 = mem(x1, -1); // 0x4d604c
  w17 = mem(x0, -1); // 0x4d6050
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d604c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d6050
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d6060
  }
  SP = FP; // 0x4d6068
  x0 = NULL; // 0x4d6064
  // frame: FP, LR, mem(SP), 0x10 // 0x4d606c
  return;
}

// PartyRedPocketCoin_ctor_fromJson
// raw disassembly:
//  0x4d60e8: stp FP, LR, [SP, #-0x10]!
//  0x4d60ec: mov FP, SP
//  0x4d60f0: sub SP, SP, #0x18
//  0x4d60f4: ldr x0, [PP, #0x40]
//  0x4d60f8: mov x4, x1
//  0x4d60fc: mov x3, x2
//  0x4d6100: stur x1, [FP, #-8]
//  0x4d6104: stur x2, [FP, #-0x10]
//  0x4d6108: ldr BARRIER, [THR, #0x38]
//  0x4d610c: cmp SP, BARRIER
//  0x4d6110: b.ls #0x4d6260
//  0x4d6114: stur w0, [x4, #7]
//  0x4d6118: stur w0, [x4, #0xb]
//  0x4d611c: ldur x0, [x3, #-1]
//  0x4d6120: ubfx x0, x0, #0xc, #0x14
//  0x4d6124: mov x1, x3
//  0x4d6128: add x2, PP, #0x10, lsl #12
//  0x4d612c: ldr x2, [x2, #0xb90]
//  0x4d6130: sub LR, x0, #1, lsl #12
//  0x4d6134: ldr LR, [x21, LR, lsl #3]
//  0x4d6138: blr LR
//  0x4d613c: cmp w0, w22
//  0x4d6140: b.ne #0x4d614c
//  0x4d6144: mov x5, #0
//  0x4d6148: b #0x4d6150
//  0x4d614c: mov x5, x0
//  0x4d6150: ldur x4, [FP, #-8]
//  0x4d6154: ldur x3, [FP, #-0x10]
//  0x4d6158: mov x0, x5
//  0x4d615c: stur x5, [FP, #-0x18]
//  0x4d6160: mov x2, NULL
//  0x4d6164: mov x1, NULL
//  0x4d6168: tbz w0, #0, #0x4d6190
//  0x4d616c: ldur x4, [x0, #-1]
//  0x4d6170: ubfx x4, x4, #0xc, #0x14
//  0x4d6174: sub x4, x4, #0x3c
//  0x4d6178: cmp x4, #1
//  0x4d617c: b.ls #0x4d6190
//  0x4d6180: ldr x8, [PP, #0x1170]
//  0x4d6184: add x3, PP, #0x10, lsl #12
//  0x4d6188: ldr x3, [x3, #0xe30]
//  0x4d618c: bl #0x62aa34
//  0x4d6190: ldur x0, [FP, #-0x18]
//  0x4d6194: ldur x3, [FP, #-8]
//  0x4d6198: stur w0, [x3, #7]
//  0x4d619c: tbz w0, #0, #0x4d61b8
//  0x4d61a0: ldurb w16, [x3, #-1]
//  0x4d61a4: ldurb w17, [x0, #-1]
//  0x4d61a8: and BARRIER, x17, BARRIER, lsr #2
//  0x4d61ac: tst BARRIER, HEAP, lsr #32
//  0x4d61b0: b.eq #0x4d61b8
//  0x4d61b4: bl #0x61e08c
//  0x4d61b8: ldur x1, [FP, #-0x10]
//  0x4d61bc: ldur x0, [x1, #-1]
//  0x4d61c0: ubfx x0, x0, #0xc, #0x14
//  0x4d61c4: add x2, PP, #0xf, lsl #12
//  0x4d61c8: ldr x2, [x2, #0xa50]
//  0x4d61cc: sub LR, x0, #1, lsl #12
//  0x4d61d0: ldr LR, [x21, LR, lsl #3]
//  0x4d61d4: blr LR
//  0x4d61d8: cmp w0, w22
//  0x4d61dc: b.ne #0x4d61e8
//  0x4d61e0: ldr x4, [PP, #0x148]
//  0x4d61e4: b #0x4d61ec
//  0x4d61e8: mov x4, x0
//  0x4d61ec: ldur x3, [FP, #-8]
//  0x4d61f0: mov x0, x4
//  0x4d61f4: stur x4, [FP, #-0x10]
//  0x4d61f8: mov x2, NULL
//  0x4d61fc: mov x1, NULL
//  0x4d6200: mov x4, #0x3c
//  0x4d6204: tbz w0, #0, #0x4d6210
//  0x4d6208: ldur x4, [x0, #-1]
//  0x4d620c: ubfx x4, x4, #0xc, #0x14
//  0x4d6210: sub x4, x4, #0x5e
//  0x4d6214: cmp x4, #1
//  0x4d6218: b.ls #0x4d622c
//  0x4d621c: ldr x8, [PP, #0x2f8]
//  0x4d6220: add x3, PP, #0x10, lsl #12
//  0x4d6224: ldr x3, [x3, #0xe40]
//  0x4d6228: bl #0x62a0c0
//  0x4d622c: ldur x0, [FP, #-0x10]
//  0x4d6230: ldur x1, [FP, #-8]
//  0x4d6234: stur w0, [x1, #0xb]
//  0x4d6238: ldurb w16, [x1, #-1]
//  0x4d623c: ldurb w17, [x0, #-1]
//  0x4d6240: and BARRIER, x17, BARRIER, lsr #2
//  0x4d6244: tst BARRIER, HEAP, lsr #32
//  0x4d6248: b.eq #0x4d6250
//  0x4d624c: bl #0x61e04c
//  0x4d6250: mov x0, NULL
//  0x4d6254: mov SP, FP
//  0x4d6258: ldp FP, LR, [SP], #0x10
//  0x4d625c: ret 
//  0x4d6260: bl #0x61fa28
//  0x4d6264: b #0x4d6114
//
dynamic PartyRedPocketCoin_ctor_fromJson() {
  dynamic BARRIER;
  dynamic FP;
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
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d60e8
  // frame: FP = SP // 0x4d60ec
  // frame: SP = SP - 0x18 // 0x4d60f0
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4d60f4
  x3 = x2; // 0x4d60fc
  x4 = x1; // 0x4d60f8
  local_m8 = x1; // 0x4d6100
  local_m10 = x2; // 0x4d6104
  BARRIER = mem(THR, 0x38); // 0x4d6108
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d6260
  }
  memSet(x4, 7, w0); // 0x4d6114
  memSet(x4, 0xb, w0); // 0x4d6118
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d6134
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x4d6120
  x1 = x3; // 0x4d6124
  x2 = "soulCoinNum" /* pp+0x10b90 */; // 0x4d612c
  callIndirect(LR); // 0x4d6138
  if (w0 != w22) {
    x5 = x0; // 0x4d614c
  } else {
    x5 = 0; // 0x4d6144
  }
  x0 = x5; // 0x4d6158
  x3 = local_m10; // 0x4d6154
  x4 = local_m8; // 0x4d6150
  local_m18 = x5; // 0x4d615c
  x1 = NULL; // 0x4d6164
  x2 = NULL; // 0x4d6160
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4d6174
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x10000), 0xe30) /* Obj!? */; // 0x4d6188
      x8 = mem(PP, 0x1170) /* Type */; // 0x4d6180
      sub_0x62aa34(); // 0x4d618c
    }
  }
  x0 = local_m18; // 0x4d6190
  x3 = local_m8; // 0x4d6194
  memSet(x3, 7, w0); // 0x4d6198
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d61a8
    w17 = mem(x0, -1); // 0x4d61a4
    x16 = w16 & 0xffffffff; // 0x4d61a0
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d61a4
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d61b4
    }
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d61d0
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4d61c0
  x1 = local_m10; // 0x4d61b8
  x2 = "imageUrl" /* pp+0xfa50 */; // 0x4d61c8
  callIndirect(LR); // 0x4d61d4
  if (w0 != w22) {
    x4 = x0; // 0x4d61e8
  } else {
    x4 = "" /* pp+0x148 */; // 0x4d61e0
  }
  x0 = x4; // 0x4d61f0
  x3 = local_m8; // 0x4d61ec
  local_m10 = x4; // 0x4d61f4
  x1 = NULL; // 0x4d61fc
  x2 = NULL; // 0x4d61f8
  x4 = 60; // 0x4d6200
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d620c
  }
  x4 = x4 - 0x5e; // 0x4d6210
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x10000), 0xe40) /* Obj!? */; // 0x4d6224
    x8 = mem(PP, 0x2f8) /* Type */; // 0x4d621c
    sub_0x62a0c0(); // 0x4d6228
  }
  x0 = local_m10; // 0x4d622c
  x1 = local_m8; // 0x4d6230
  memSet(x1, 0xb, w0); // 0x4d6234
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d6240
  w16 = mem(x1, -1); // 0x4d6238
  w17 = mem(x0, -1); // 0x4d623c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d6238
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d623c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d624c
  }
  SP = FP; // 0x4d6254
  x0 = NULL; // 0x4d6250
  // frame: FP, LR, mem(SP), 0x10 // 0x4d6258
  return;
}
