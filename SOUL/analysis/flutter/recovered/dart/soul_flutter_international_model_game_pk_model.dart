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

dynamic AllocationStub_DateTime, BARRIER, DateTime_ctor_withValue, DateTime_toLocal;
dynamic DateTime_toString, DateTime_validateMilliseconds, FP, HEAP, LR, NULL, PP, SP;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_substring, THR;
dynamic WriteBarrierStub_x1, WriteBarrierStub_x2, WriteBarrierStub_x3, WriteBarrierStub_x4;
dynamic local_0, local_m10, local_m18, local_m20, local_m28, local_m8, sub_0x278d08;
dynamic sub_0x62a9f8, sub_0x62aa34, w0, w1, w16, w17, w22, x0, x1, x16, x17, x2, x21, x3, x4;
dynamic x5, x8;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$model$game_pk_model
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// GamePkMakeBetListModel_ctor_fromJson
// raw disassembly:
//  0x42ee08: stp FP, LR, [SP, #-0x10]!
//  0x42ee0c: mov FP, SP
//  0x42ee10: sub SP, SP, #0x20
//  0x42ee14: mov x4, x1
//  0x42ee18: mov x3, x2
//  0x42ee1c: stur x1, [FP, #-8]
//  0x42ee20: stur x2, [FP, #-0x10]
//  0x42ee24: ldr BARRIER, [THR, #0x38]
//  0x42ee28: cmp SP, BARRIER
//  0x42ee2c: b.ls #0x42f0b0
//  0x42ee30: ldur x0, [x3, #-1]
//  0x42ee34: ubfx x0, x0, #0xc, #0x14
//  0x42ee38: mov x1, x3
//  0x42ee3c: add x2, PP, #0xb, lsl #12
//  0x42ee40: ldr x2, [x2, #0x730]
//  0x42ee44: sub LR, x0, #1, lsl #12
//  0x42ee48: ldr LR, [x21, LR, lsl #3]
//  0x42ee4c: blr LR
//  0x42ee50: cmp w0, w22
//  0x42ee54: b.ne #0x42ee60
//  0x42ee58: ldr x5, [PP, #0x148]
//  0x42ee5c: b #0x42ee64
//  0x42ee60: mov x5, x0
//  0x42ee64: ldur x4, [FP, #-8]
//  0x42ee68: ldur x3, [FP, #-0x10]
//  0x42ee6c: mov x0, x5
//  0x42ee70: stur x5, [FP, #-0x18]
//  0x42ee74: mov x2, NULL
//  0x42ee78: mov x1, NULL
//  0x42ee7c: mov x4, #0x3c
//  0x42ee80: tbz w0, #0, #0x42ee8c
//  0x42ee84: ldur x4, [x0, #-1]
//  0x42ee88: ubfx x4, x4, #0xc, #0x14
//  0x42ee8c: sub x4, x4, #0x5e
//  0x42ee90: cmp x4, #1
//  0x42ee94: b.ls #0x42eea8
//  0x42ee98: ldr x8, [PP, #0xae0]
//  0x42ee9c: add x3, PP, #0xf, lsl #12
//  0x42eea0: ldr x3, [x3, #0x3b0]
//  0x42eea4: bl #0x278d08
//  0x42eea8: ldur x0, [FP, #-0x18]
//  0x42eeac: ldur x3, [FP, #-8]
//  0x42eeb0: stur w0, [x3, #7]
//  0x42eeb4: ldurb w16, [x3, #-1]
//  0x42eeb8: ldurb w17, [x0, #-1]
//  0x42eebc: and BARRIER, x17, BARRIER, lsr #2
//  0x42eec0: tst BARRIER, HEAP, lsr #32
//  0x42eec4: b.eq #0x42eecc
//  0x42eec8: bl #0x61e08c
//  0x42eecc: ldur x4, [FP, #-0x10]
//  0x42eed0: ldur x0, [x4, #-1]
//  0x42eed4: ubfx x0, x0, #0xc, #0x14
//  0x42eed8: mov x1, x4
//  0x42eedc: add x2, PP, #0xb, lsl #12
//  0x42eee0: ldr x2, [x2, #0x718]
//  0x42eee4: sub LR, x0, #1, lsl #12
//  0x42eee8: ldr LR, [x21, LR, lsl #3]
//  0x42eeec: blr LR
//  0x42eef0: cmp w0, w22
//  0x42eef4: b.ne #0x42ef00
//  0x42eef8: ldr x5, [PP, #0x148]
//  0x42eefc: b #0x42ef04
//  0x42ef00: mov x5, x0
//  0x42ef04: ldur x3, [FP, #-8]
//  0x42ef08: ldur x4, [FP, #-0x10]
//  0x42ef0c: mov x0, x5
//  0x42ef10: stur x5, [FP, #-0x18]
//  0x42ef14: mov x2, NULL
//  0x42ef18: mov x1, NULL
//  0x42ef1c: mov x4, #0x3c
//  0x42ef20: tbz w0, #0, #0x42ef2c
//  0x42ef24: ldur x4, [x0, #-1]
//  0x42ef28: ubfx x4, x4, #0xc, #0x14
//  0x42ef2c: sub x4, x4, #0x5e
//  0x42ef30: cmp x4, #1
//  0x42ef34: b.ls #0x42ef48
//  0x42ef38: ldr x8, [PP, #0xae0]
//  0x42ef3c: add x3, PP, #0xf, lsl #12
//  0x42ef40: ldr x3, [x3, #0x3c0]
//  0x42ef44: bl #0x278d08
//  0x42ef48: ldur x0, [FP, #-0x18]
//  0x42ef4c: ldur x3, [FP, #-8]
//  0x42ef50: stur w0, [x3, #0xb]
//  0x42ef54: ldurb w16, [x3, #-1]
//  0x42ef58: ldurb w17, [x0, #-1]
//  0x42ef5c: and BARRIER, x17, BARRIER, lsr #2
//  0x42ef60: tst BARRIER, HEAP, lsr #32
//  0x42ef64: b.eq #0x42ef6c
//  0x42ef68: bl #0x61e08c
//  0x42ef6c: ldur x4, [FP, #-0x10]
//  0x42ef70: ldur x0, [x4, #-1]
//  0x42ef74: ubfx x0, x0, #0xc, #0x14
//  0x42ef78: mov x1, x4
//  0x42ef7c: add x2, PP, #0xb, lsl #12
//  0x42ef80: ldr x2, [x2, #0x748]
//  0x42ef84: sub LR, x0, #1, lsl #12
//  0x42ef88: ldr LR, [x21, LR, lsl #3]
//  0x42ef8c: blr LR
//  0x42ef90: cmp w0, w22
//  0x42ef94: b.ne #0x42efa0
//  0x42ef98: ldr x5, [PP, #0x148]
//  0x42ef9c: b #0x42efa4
//  0x42efa0: mov x5, x0
//  0x42efa4: ldur x3, [FP, #-8]
//  0x42efa8: ldur x4, [FP, #-0x10]
//  0x42efac: mov x0, x5
//  0x42efb0: stur x5, [FP, #-0x18]
//  0x42efb4: mov x2, NULL
//  0x42efb8: mov x1, NULL
//  0x42efbc: mov x4, #0x3c
//  0x42efc0: tbz w0, #0, #0x42efcc
//  0x42efc4: ldur x4, [x0, #-1]
//  0x42efc8: ubfx x4, x4, #0xc, #0x14
//  0x42efcc: sub x4, x4, #0x5e
//  0x42efd0: cmp x4, #1
//  0x42efd4: b.ls #0x42efe8
//  0x42efd8: ldr x8, [PP, #0xae0]
//  0x42efdc: add x3, PP, #0xf, lsl #12
//  0x42efe0: ldr x3, [x3, #0x3d0]
//  0x42efe4: bl #0x278d08
//  0x42efe8: ldur x0, [FP, #-0x18]
//  0x42efec: ldur x3, [FP, #-8]
//  0x42eff0: stur w0, [x3, #0xf]
//  0x42eff4: ldurb w16, [x3, #-1]
//  0x42eff8: ldurb w17, [x0, #-1]
//  0x42effc: and BARRIER, x17, BARRIER, lsr #2
//  0x42f000: tst BARRIER, HEAP, lsr #32
//  0x42f004: b.eq #0x42f00c
//  0x42f008: bl #0x61e08c
//  0x42f00c: ldur x1, [FP, #-0x10]
//  0x42f010: ldur x0, [x1, #-1]
//  0x42f014: ubfx x0, x0, #0xc, #0x14
//  0x42f018: add x2, PP, #0xf, lsl #12
//  0x42f01c: ldr x2, [x2, #0x3e0]
//  0x42f020: sub LR, x0, #1, lsl #12
//  0x42f024: ldr LR, [x21, LR, lsl #3]
//  0x42f028: blr LR
//  0x42f02c: cmp w0, w22
//  0x42f030: b.ne #0x42f03c
//  0x42f034: mov x1, NULL
//  0x42f038: b #0x42f06c
//  0x42f03c: mov x1, #0x3c
//  0x42f040: tbz w0, #0, #0x42f04c
//  0x42f044: ldur x1, [x0, #-1]
//  0x42f048: ubfx x1, x1, #0xc, #0x14
//  0x42f04c: str x0, [SP]
//  0x42f050: mov x0, x1
//  0x42f054: ldr x4, [PP, #0x3a8]
//  0x42f058: mov x17, #0x3e07
//  0x42f05c: add LR, x0, x17
//  0x42f060: ldr LR, [x21, LR, lsl #3]
//  0x42f064: blr LR
//  0x42f068: mov x1, x0
//  0x42f06c: cmp w1, w22
//  0x42f070: b.ne #0x42f07c
//  0x42f074: ldr x0, [PP, #0x148]
//  0x42f078: b #0x42f080
//  0x42f07c: mov x0, x1
//  0x42f080: ldur x1, [FP, #-8]
//  0x42f084: stur w0, [x1, #0x13]
//  0x42f088: ldurb w16, [x1, #-1]
//  0x42f08c: ldurb w17, [x0, #-1]
//  0x42f090: and BARRIER, x17, BARRIER, lsr #2
//  0x42f094: tst BARRIER, HEAP, lsr #32
//  0x42f098: b.eq #0x42f0a0
//  0x42f09c: bl #0x61e04c
//  0x42f0a0: mov x0, NULL
//  0x42f0a4: mov SP, FP
//  0x42f0a8: ldp FP, LR, [SP], #0x10
//  0x42f0ac: ret 
//  0x42f0b0: bl #0x61fa28
//  0x42f0b4: b #0x42ee30
//
dynamic GamePkMakeBetListModel_ctor_fromJson() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x42ee08
  // frame: FP = SP // 0x42ee0c
  // frame: SP = SP - 0x20 // 0x42ee10
  x3 = x2; // 0x42ee18
  x4 = x1; // 0x42ee14
  local_m8 = x1; // 0x42ee1c
  local_m10 = x2; // 0x42ee20
  BARRIER = mem(THR, 0x38); // 0x42ee24
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42f0b0
  }
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x42ee48
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x42ee34
  x1 = x3; // 0x42ee38
  x2 = "signature" /* pp+0xb730 */; // 0x42ee40
  callIndirect(LR); // 0x42ee4c
  if (w0 != w22) {
    x5 = x0; // 0x42ee60
  } else {
    x5 = "" /* pp+0x148 */; // 0x42ee58
  }
  x0 = x5; // 0x42ee6c
  x3 = local_m10; // 0x42ee68
  x4 = local_m8; // 0x42ee64
  local_m18 = x5; // 0x42ee70
  x1 = NULL; // 0x42ee78
  x2 = NULL; // 0x42ee74
  x4 = 60; // 0x42ee7c
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x42ee88
  }
  x4 = x4 - 0x5e; // 0x42ee8c
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0xf000), 0x3b0) /* Obj!? */; // 0x42eea0
    x8 = mem(PP, 0xae0) /* Type */; // 0x42ee98
    sub_0x278d08(); // 0x42eea4
  }
  x0 = local_m18; // 0x42eea8
  x3 = local_m8; // 0x42eeac
  memSet(x3, 7, w0); // 0x42eeb0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x42eebc
  w16 = mem(x3, -1); // 0x42eeb4
  w17 = mem(x0, -1); // 0x42eeb8
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x42eeb4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x42eeb8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x42eec8
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x42eee8
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x42eed4
  x1 = local_m10; // 0x42eed8
  x2 = "avatarUrl" /* pp+0xb718 */; // 0x42eee0
  x4 = local_m10; // 0x42eecc
  callIndirect(LR); // 0x42eeec
  if (w0 != w22) {
    x5 = x0; // 0x42ef00
  } else {
    x5 = "" /* pp+0x148 */; // 0x42eef8
  }
  x0 = x5; // 0x42ef0c
  x3 = local_m8; // 0x42ef04
  x4 = local_m10; // 0x42ef08
  local_m18 = x5; // 0x42ef10
  x1 = NULL; // 0x42ef18
  x2 = NULL; // 0x42ef14
  x4 = 60; // 0x42ef1c
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x42ef28
  }
  x4 = x4 - 0x5e; // 0x42ef2c
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0xf000), 0x3c0) /* Obj!? */; // 0x42ef40
    x8 = mem(PP, 0xae0) /* Type */; // 0x42ef38
    sub_0x278d08(); // 0x42ef44
  }
  x0 = local_m18; // 0x42ef48
  x3 = local_m8; // 0x42ef4c
  memSet(x3, 0xb, w0); // 0x42ef50
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x42ef5c
  w16 = mem(x3, -1); // 0x42ef54
  w17 = mem(x0, -1); // 0x42ef58
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x42ef54
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x42ef58
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x42ef68
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x42ef88
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x42ef74
  x1 = local_m10; // 0x42ef78
  x2 = "garlandUrl" /* pp+0xb748 */; // 0x42ef80
  x4 = local_m10; // 0x42ef6c
  callIndirect(LR); // 0x42ef8c
  if (w0 != w22) {
    x5 = x0; // 0x42efa0
  } else {
    x5 = "" /* pp+0x148 */; // 0x42ef98
  }
  x0 = x5; // 0x42efac
  x3 = local_m8; // 0x42efa4
  x4 = local_m10; // 0x42efa8
  local_m18 = x5; // 0x42efb0
  x1 = NULL; // 0x42efb8
  x2 = NULL; // 0x42efb4
  x4 = 60; // 0x42efbc
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x42efc8
  }
  x4 = x4 - 0x5e; // 0x42efcc
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0xf000), 0x3d0) /* Obj!? */; // 0x42efe0
    x8 = mem(PP, 0xae0) /* Type */; // 0x42efd8
    sub_0x278d08(); // 0x42efe4
  }
  x0 = local_m18; // 0x42efe8
  x3 = local_m8; // 0x42efec
  memSet(x3, 0xf, w0); // 0x42eff0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x42effc
  w16 = mem(x3, -1); // 0x42eff4
  w17 = mem(x0, -1); // 0x42eff8
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x42eff4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x42eff8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x42f008
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x42f024
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x42f014
  x1 = local_m10; // 0x42f00c
  x2 = "diceCoin" /* pp+0xf3e0 */; // 0x42f01c
  callIndirect(LR); // 0x42f028
  if (w0 != w22) {
    x1 = 60; // 0x42f03c
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x42f048
    }
    local_0 = x0; // 0x42f04c
    LR = mem(x21, ((x0 + x17) << 3)); // 0x42f060
    x0 = x1; // 0x42f050
    x17 = 15879; // 0x42f058
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x42f054
    callIndirect(LR); // 0x42f064
    x1 = x0; // 0x42f068
  } else {
    x1 = NULL; // 0x42f034
  }
  if (w1 != w22) {
    x0 = x1; // 0x42f07c
  } else {
    x0 = "" /* pp+0x148 */; // 0x42f074
  }
  x1 = local_m8; // 0x42f080
  memSet(x1, 0x13, w0); // 0x42f084
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x42f090
  w16 = mem(x1, -1); // 0x42f088
  w17 = mem(x0, -1); // 0x42f08c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x42f088
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x42f08c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x42f09c
  }
  SP = FP; // 0x42f0a4
  x0 = NULL; // 0x42f0a0
  // frame: FP, LR, mem(SP), 0x10 // 0x42f0a8
  return;
}

// GamePkBetRecordListModel_ctor_fromJson
// raw disassembly:
//  0x445098: stp FP, LR, [SP, #-0x10]!
//  0x44509c: mov FP, SP
//  0x4450a0: sub SP, SP, #0x30
//  0x4450a4: mov x4, x1
//  0x4450a8: mov x3, x2
//  0x4450ac: stur x1, [FP, #-8]
//  0x4450b0: stur x2, [FP, #-0x10]
//  0x4450b4: ldr BARRIER, [THR, #0x38]
//  0x4450b8: cmp SP, BARRIER
//  0x4450bc: b.ls #0x445504
//  0x4450c0: ldur x0, [x3, #-1]
//  0x4450c4: ubfx x0, x0, #0xc, #0x14
//  0x4450c8: mov x1, x3
//  0x4450cc: add x2, PP, #0x14, lsl #12
//  0x4450d0: ldr x2, [x2, #0x3d8]
//  0x4450d4: sub LR, x0, #1, lsl #12
//  0x4450d8: ldr LR, [x21, LR, lsl #3]
//  0x4450dc: blr LR
//  0x4450e0: cmp w0, w22
//  0x4450e4: b.ne #0x4450f0
//  0x4450e8: mov x0, NULL
//  0x4450ec: b #0x44511c
//  0x4450f0: mov x1, #0x3c
//  0x4450f4: tbz w0, #0, #0x445100
//  0x4450f8: ldur x1, [x0, #-1]
//  0x4450fc: ubfx x1, x1, #0xc, #0x14
//  0x445100: str x0, [SP]
//  0x445104: mov x0, x1
//  0x445108: ldr x4, [PP, #0x3a8]
//  0x44510c: mov x17, #0x3e07
//  0x445110: add LR, x0, x17
//  0x445114: ldr LR, [x21, LR, lsl #3]
//  0x445118: blr LR
//  0x44511c: cmp w0, w22
//  0x445120: b.ne #0x445128
//  0x445124: ldr x0, [PP, #0x148]
//  0x445128: ldur x4, [FP, #-8]
//  0x44512c: ldur x3, [FP, #-0x10]
//  0x445130: stur w0, [x4, #7]
//  0x445134: ldurb w16, [x4, #-1]
//  0x445138: ldurb w17, [x0, #-1]
//  0x44513c: and BARRIER, x17, BARRIER, lsr #2
//  0x445140: tst BARRIER, HEAP, lsr #32
//  0x445144: b.eq #0x44514c
//  0x445148: bl #0x61e0ac
//  0x44514c: ldur x0, [x3, #-1]
//  0x445150: ubfx x0, x0, #0xc, #0x14
//  0x445154: mov x1, x3
//  0x445158: add x2, PP, #0x14, lsl #12
//  0x44515c: ldr x2, [x2, #0x3e0]
//  0x445160: sub LR, x0, #1, lsl #12
//  0x445164: ldr LR, [x21, LR, lsl #3]
//  0x445168: blr LR
//  0x44516c: cmp w0, w22
//  0x445170: b.ne #0x44517c
//  0x445174: mov x0, NULL
//  0x445178: b #0x4451a8
//  0x44517c: mov x1, #0x3c
//  0x445180: tbz w0, #0, #0x44518c
//  0x445184: ldur x1, [x0, #-1]
//  0x445188: ubfx x1, x1, #0xc, #0x14
//  0x44518c: str x0, [SP]
//  0x445190: mov x0, x1
//  0x445194: ldr x4, [PP, #0x3a8]
//  0x445198: mov x17, #0x3e07
//  0x44519c: add LR, x0, x17
//  0x4451a0: ldr LR, [x21, LR, lsl #3]
//  0x4451a4: blr LR
//  0x4451a8: cmp w0, w22
//  0x4451ac: b.ne #0x4451b4
//  0x4451b0: ldr x0, [PP, #0x148]
//  0x4451b4: ldur x4, [FP, #-8]
//  0x4451b8: ldur x3, [FP, #-0x10]
//  0x4451bc: stur w0, [x4, #0xb]
//  0x4451c0: ldurb w16, [x4, #-1]
//  0x4451c4: ldurb w17, [x0, #-1]
//  0x4451c8: and BARRIER, x17, BARRIER, lsr #2
//  0x4451cc: tst BARRIER, HEAP, lsr #32
//  0x4451d0: b.eq #0x4451d8
//  0x4451d4: bl #0x61e0ac
//  0x4451d8: ldur x0, [x3, #-1]
//  0x4451dc: ubfx x0, x0, #0xc, #0x14
//  0x4451e0: mov x1, x3
//  0x4451e4: add x2, PP, #0xf, lsl #12
//  0x4451e8: ldr x2, [x2, #0x3e0]
//  0x4451ec: sub LR, x0, #1, lsl #12
//  0x4451f0: ldr LR, [x21, LR, lsl #3]
//  0x4451f4: blr LR
//  0x4451f8: cmp w0, w22
//  0x4451fc: b.ne #0x445208
//  0x445200: mov x0, NULL
//  0x445204: b #0x445234
//  0x445208: mov x1, #0x3c
//  0x44520c: tbz w0, #0, #0x445218
//  0x445210: ldur x1, [x0, #-1]
//  0x445214: ubfx x1, x1, #0xc, #0x14
//  0x445218: str x0, [SP]
//  0x44521c: mov x0, x1
//  0x445220: ldr x4, [PP, #0x3a8]
//  0x445224: mov x17, #0x3e07
//  0x445228: add LR, x0, x17
//  0x44522c: ldr LR, [x21, LR, lsl #3]
//  0x445230: blr LR
//  0x445234: cmp w0, w22
//  0x445238: b.ne #0x445240
//  0x44523c: ldr x0, [PP, #0x148]
//  0x445240: ldur x4, [FP, #-8]
//  0x445244: ldur x3, [FP, #-0x10]
//  0x445248: stur w0, [x4, #0xf]
//  0x44524c: ldurb w16, [x4, #-1]
//  0x445250: ldurb w17, [x0, #-1]
//  0x445254: and BARRIER, x17, BARRIER, lsr #2
//  0x445258: tst BARRIER, HEAP, lsr #32
//  0x44525c: b.eq #0x445264
//  0x445260: bl #0x61e0ac
//  0x445264: ldur x0, [x3, #-1]
//  0x445268: ubfx x0, x0, #0xc, #0x14
//  0x44526c: mov x1, x3
//  0x445270: add x2, PP, #0x14, lsl #12
//  0x445274: ldr x2, [x2, #0x3e8]
//  0x445278: sub LR, x0, #1, lsl #12
//  0x44527c: ldr LR, [x21, LR, lsl #3]
//  0x445280: blr LR
//  0x445284: cmp w0, w22
//  0x445288: b.ne #0x445294
//  0x44528c: mov x5, #0
//  0x445290: b #0x445298
//  0x445294: mov x5, x0
//  0x445298: ldur x4, [FP, #-8]
//  0x44529c: ldur x3, [FP, #-0x10]
//  0x4452a0: mov x0, x5
//  0x4452a4: stur x5, [FP, #-0x18]
//  0x4452a8: mov x2, NULL
//  0x4452ac: mov x1, NULL
//  0x4452b0: tbz w0, #0, #0x4452d8
//  0x4452b4: ldur x4, [x0, #-1]
//  0x4452b8: ubfx x4, x4, #0xc, #0x14
//  0x4452bc: sub x4, x4, #0x3c
//  0x4452c0: cmp x4, #1
//  0x4452c4: b.ls #0x4452d8
//  0x4452c8: ldr x8, [PP, #0xaf8]
//  0x4452cc: add x3, PP, #0x14, lsl #12
//  0x4452d0: ldr x3, [x3, #0x3f0]
//  0x4452d4: bl #0x62a9f8
//  0x4452d8: ldur x0, [FP, #-0x18]
//  0x4452dc: ldur x3, [FP, #-8]
//  0x4452e0: stur w0, [x3, #0x1b]
//  0x4452e4: tbz w0, #0, #0x445300
//  0x4452e8: ldurb w16, [x3, #-1]
//  0x4452ec: ldurb w17, [x0, #-1]
//  0x4452f0: and BARRIER, x17, BARRIER, lsr #2
//  0x4452f4: tst BARRIER, HEAP, lsr #32
//  0x4452f8: b.eq #0x445300
//  0x4452fc: bl #0x61e08c
//  0x445300: ldur x4, [FP, #-0x10]
//  0x445304: ldur x0, [x4, #-1]
//  0x445308: ubfx x0, x0, #0xc, #0x14
//  0x44530c: mov x1, x4
//  0x445310: add x2, PP, #0xf, lsl #12
//  0x445314: ldr x2, [x2, #0x338]
//  0x445318: sub LR, x0, #1, lsl #12
//  0x44531c: ldr LR, [x21, LR, lsl #3]
//  0x445320: blr LR
//  0x445324: cmp w0, w22
//  0x445328: b.ne #0x445334
//  0x44532c: mov x5, #0
//  0x445330: b #0x445338
//  0x445334: mov x5, x0
//  0x445338: ldur x3, [FP, #-8]
//  0x44533c: ldur x4, [FP, #-0x10]
//  0x445340: mov x0, x5
//  0x445344: stur x5, [FP, #-0x18]
//  0x445348: mov x2, NULL
//  0x44534c: mov x1, NULL
//  0x445350: tbz w0, #0, #0x445378
//  0x445354: ldur x4, [x0, #-1]
//  0x445358: ubfx x4, x4, #0xc, #0x14
//  0x44535c: sub x4, x4, #0x3c
//  0x445360: cmp x4, #1
//  0x445364: b.ls #0x445378
//  0x445368: ldr x8, [PP, #0xaf8]
//  0x44536c: add x3, PP, #0x14, lsl #12
//  0x445370: ldr x3, [x3, #0x400]
//  0x445374: bl #0x62a9f8
//  0x445378: ldur x0, [FP, #-0x18]
//  0x44537c: ldur x3, [FP, #-8]
//  0x445380: stur w0, [x3, #0x1f]
//  0x445384: tbz w0, #0, #0x4453a0
//  0x445388: ldurb w16, [x3, #-1]
//  0x44538c: ldurb w17, [x0, #-1]
//  0x445390: and BARRIER, x17, BARRIER, lsr #2
//  0x445394: tst BARRIER, HEAP, lsr #32
//  0x445398: b.eq #0x4453a0
//  0x44539c: bl #0x61e08c
//  0x4453a0: ldur x1, [FP, #-0x10]
//  0x4453a4: ldur x0, [x1, #-1]
//  0x4453a8: ubfx x0, x0, #0xc, #0x14
//  0x4453ac: add x2, PP, #0x11, lsl #12
//  0x4453b0: ldr x2, [x2, #0x4b8]
//  0x4453b4: sub LR, x0, #1, lsl #12
//  0x4453b8: ldr LR, [x21, LR, lsl #3]
//  0x4453bc: blr LR
//  0x4453c0: mov x3, x0
//  0x4453c4: mov x2, NULL
//  0x4453c8: mov x1, NULL
//  0x4453cc: stur x3, [FP, #-0x10]
//  0x4453d0: tbz w0, #0, #0x4453f8
//  0x4453d4: ldur x4, [x0, #-1]
//  0x4453d8: ubfx x4, x4, #0xc, #0x14
//  0x4453dc: sub x4, x4, #0x3c
//  0x4453e0: cmp x4, #1
//  0x4453e4: b.ls #0x4453f8
//  0x4453e8: ldr x8, [PP, #0x1170]
//  0x4453ec: add x3, PP, #0x14, lsl #12
//  0x4453f0: ldr x3, [x3, #0x410]
//  0x4453f4: bl #0x62aa34
//  0x4453f8: ldur x0, [FP, #-0x10]
//  0x4453fc: sbfx x2, x0, #1, #0x1f
//  0x445400: tbz w0, #0, #0x445408
//  0x445404: ldur x2, [x0, #7]
//  0x445408: mov x1, x2
//  0x44540c: stur x2, [FP, #-0x20]
//  0x445410: bl #0x3adab8
//  0x445414: mov BARRIER, #0x3e8
//  0x445418: mul x2, x0, BARRIER
//  0x44541c: stur x2, [FP, #-0x28]
//  0x445420: bl #0x3adaac
//  0x445424: mov x1, x0
//  0x445428: ldur x2, [FP, #-0x28]
//  0x44542c: add x3, NULL, #0x30
//  0x445430: stur x0, [FP, #-0x10]
//  0x445434: bl #0x3acfd0
//  0x445438: ldur x1, [FP, #-0x10]
//  0x44543c: bl #0x3acf4c
//  0x445440: str x0, [SP]
//  0x445444: bl #0x48f214
//  0x445448: mov BARRIER, #0x14
//  0x44544c: str BARRIER, [SP]
//  0x445450: mov x1, x0
//  0x445454: mov x2, #0
//  0x445458: ldr x4, [PP, #0x280]
//  0x44545c: bl #0x281608
//  0x445460: ldur x2, [FP, #-8]
//  0x445464: stur w0, [x2, #0x13]
//  0x445468: ldurb w16, [x2, #-1]
//  0x44546c: ldurb w17, [x0, #-1]
//  0x445470: and BARRIER, x17, BARRIER, lsr #2
//  0x445474: tst BARRIER, HEAP, lsr #32
//  0x445478: b.eq #0x445480
//  0x44547c: bl #0x61e06c
//  0x445480: ldur x1, [FP, #-0x20]
//  0x445484: bl #0x3adab8
//  0x445488: mov BARRIER, #0x3e8
//  0x44548c: mul x2, x0, BARRIER
//  0x445490: stur x2, [FP, #-0x20]
//  0x445494: bl #0x3adaac
//  0x445498: mov x1, x0
//  0x44549c: ldur x2, [FP, #-0x20]
//  0x4454a0: add x3, NULL, #0x30
//  0x4454a4: stur x0, [FP, #-0x10]
//  0x4454a8: bl #0x3acfd0
//  0x4454ac: ldur x1, [FP, #-0x10]
//  0x4454b0: bl #0x3acf4c
//  0x4454b4: str x0, [SP]
//  0x4454b8: bl #0x48f214
//  0x4454bc: mov BARRIER, #0x20
//  0x4454c0: str BARRIER, [SP]
//  0x4454c4: mov x1, x0
//  0x4454c8: mov x2, #0xa
//  0x4454cc: ldr x4, [PP, #0x280]
//  0x4454d0: bl #0x281608
//  0x4454d4: ldur x1, [FP, #-8]
//  0x4454d8: stur w0, [x1, #0x17]
//  0x4454dc: ldurb w16, [x1, #-1]
//  0x4454e0: ldurb w17, [x0, #-1]
//  0x4454e4: and BARRIER, x17, BARRIER, lsr #2
//  0x4454e8: tst BARRIER, HEAP, lsr #32
//  0x4454ec: b.eq #0x4454f4
//  0x4454f0: bl #0x61e04c
//  0x4454f4: mov x0, NULL
//  0x4454f8: mov SP, FP
//  0x4454fc: ldp FP, LR, [SP], #0x10
//  0x445500: ret 
//  0x445504: bl #0x61fa28
//  0x445508: b #0x4450c0
//
dynamic GamePkBetRecordListModel_ctor_fromJson() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x445098
  // frame: FP = SP // 0x44509c
  // frame: SP = SP - 0x30 // 0x4450a0
  x3 = x2; // 0x4450a8
  x4 = x1; // 0x4450a4
  local_m8 = x1; // 0x4450ac
  local_m10 = x2; // 0x4450b0
  BARRIER = mem(THR, 0x38); // 0x4450b4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x445504
  }
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4450d8
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x4450c4
  x1 = x3; // 0x4450c8
  x2 = "winBetCoin" /* pp+0x143d8 */; // 0x4450d0
  callIndirect(LR); // 0x4450dc
  if (w0 != w22) {
    x1 = 60; // 0x4450f0
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4450fc
    }
    local_0 = x0; // 0x445100
    LR = mem(x21, ((x0 + x17) << 3)); // 0x445114
    x0 = x1; // 0x445104
    x17 = 15879; // 0x44510c
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x445108
    callIndirect(LR); // 0x445118
  } else {
    x0 = NULL; // 0x4450e8
  }
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x445124
  }
  x3 = local_m10; // 0x44512c
  x4 = local_m8; // 0x445128
  memSet(x4, 7, w0); // 0x445130
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x44513c
  w16 = mem(x4, -1); // 0x445134
  w17 = mem(x0, -1); // 0x445138
  x16 = (mem(x4, -1)) & 0xffffffff; // 0x445134
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x445138
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x4() /* 0x61e0ac */; // 0x445148
  }
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x445164
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x445150
  x1 = x3; // 0x445154
  x2 = "loseBetCoin" /* pp+0x143e0 */; // 0x44515c
  callIndirect(LR); // 0x445168
  if (w0 != w22) {
    x1 = 60; // 0x44517c
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x445188
    }
    local_0 = x0; // 0x44518c
    LR = mem(x21, ((x0 + x17) << 3)); // 0x4451a0
    x0 = x1; // 0x445190
    x17 = 15879; // 0x445198
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x445194
    callIndirect(LR); // 0x4451a4
  } else {
    x0 = NULL; // 0x445174
  }
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x4451b0
  }
  x3 = local_m10; // 0x4451b8
  x4 = local_m8; // 0x4451b4
  memSet(x4, 0xb, w0); // 0x4451bc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4451c8
  w16 = mem(x4, -1); // 0x4451c0
  w17 = mem(x0, -1); // 0x4451c4
  x16 = (mem(x4, -1)) & 0xffffffff; // 0x4451c0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4451c4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x4() /* 0x61e0ac */; // 0x4451d4
  }
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4451f0
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x4451dc
  x1 = x3; // 0x4451e0
  x2 = "diceCoin" /* pp+0xf3e0 */; // 0x4451e8
  callIndirect(LR); // 0x4451f4
  if (w0 != w22) {
    x1 = 60; // 0x445208
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x445214
    }
    local_0 = x0; // 0x445218
    LR = mem(x21, ((x0 + x17) << 3)); // 0x44522c
    x0 = x1; // 0x44521c
    x17 = 15879; // 0x445224
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x445220
    callIndirect(LR); // 0x445230
  } else {
    x0 = NULL; // 0x445200
  }
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x44523c
  }
  x3 = local_m10; // 0x445244
  x4 = local_m8; // 0x445240
  memSet(x4, 0xf, w0); // 0x445248
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x445254
  w16 = mem(x4, -1); // 0x44524c
  w17 = mem(x0, -1); // 0x445250
  x16 = (mem(x4, -1)) & 0xffffffff; // 0x44524c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x445250
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x4() /* 0x61e0ac */; // 0x445260
  }
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x44527c
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x445268
  x1 = x3; // 0x44526c
  x2 = "resultType" /* pp+0x143e8 */; // 0x445274
  callIndirect(LR); // 0x445280
  if (w0 != w22) {
    x5 = x0; // 0x445294
  } else {
    x5 = 0; // 0x44528c
  }
  x0 = x5; // 0x4452a0
  x3 = local_m10; // 0x44529c
  x4 = local_m8; // 0x445298
  local_m18 = x5; // 0x4452a4
  x1 = NULL; // 0x4452ac
  x2 = NULL; // 0x4452a8
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4452bc
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x14000), 0x3f0) /* Obj!? */; // 0x4452d0
      x8 = mem(PP, 0xaf8) /* Type */; // 0x4452c8
      sub_0x62a9f8(); // 0x4452d4
    }
  }
  x0 = local_m18; // 0x4452d8
  x3 = local_m8; // 0x4452dc
  memSet(x3, 0x1b, w0); // 0x4452e0
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4452f0
    w17 = mem(x0, -1); // 0x4452ec
    x16 = w16 & 0xffffffff; // 0x4452e8
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4452ec
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x3() /* 0x61e08c */; // 0x4452fc
    }
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x44531c
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x445308
  x1 = local_m10; // 0x44530c
  x2 = "diceBet" /* pp+0xf338 */; // 0x445314
  x4 = local_m10; // 0x445300
  callIndirect(LR); // 0x445320
  if (w0 != w22) {
    x5 = x0; // 0x445334
  } else {
    x5 = 0; // 0x44532c
  }
  x0 = x5; // 0x445340
  x3 = local_m8; // 0x445338
  x4 = local_m10; // 0x44533c
  local_m18 = x5; // 0x445344
  x1 = NULL; // 0x44534c
  x2 = NULL; // 0x445348
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x44535c
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x14000), 0x400) /* Obj!? */; // 0x445370
      x8 = mem(PP, 0xaf8) /* Type */; // 0x445368
      sub_0x62a9f8(); // 0x445374
    }
  }
  x0 = local_m18; // 0x445378
  x3 = local_m8; // 0x44537c
  memSet(x3, 0x1f, w0); // 0x445380
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x445390
    w17 = mem(x0, -1); // 0x44538c
    x16 = w16 & 0xffffffff; // 0x445388
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x44538c
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x3() /* 0x61e08c */; // 0x44539c
    }
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4453b8
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4453a8
  x1 = local_m10; // 0x4453a0
  x2 = "createTime" /* pp+0x114b8 */; // 0x4453b0
  callIndirect(LR); // 0x4453bc
  x1 = NULL; // 0x4453c8
  x2 = NULL; // 0x4453c4
  x3 = x0; // 0x4453c0
  local_m10 = x3; // 0x4453cc
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4453dc
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x14000), 0x410) /* Obj!? */; // 0x4453f0
      x8 = mem(PP, 0x1170) /* Type */; // 0x4453e8
      sub_0x62aa34(); // 0x4453f4
    }
  }
  x0 = local_m10; // 0x4453f8
  x2 = ((local_m10) >> 1) & 0x7fffffff; // 0x4453fc
  if (x0 & (1 << 0) == 0) {
  } else {
    x2 = mem(x0, 7); // 0x445404
  }
  x1 = x2; // 0x445408
  local_m20 = x2; // 0x44540c
  DateTime_validateMilliseconds() /* 0x3adab8 */; // 0x445410
  BARRIER = 1000; // 0x445414
  x2 = x0 * BARRIER; // 0x445418
  local_m28 = x2; // 0x44541c
  AllocationStub_DateTime() /* 0x3adaac */; // 0x445420
  x1 = x0; // 0x445424
  x2 = local_m28; // 0x445428
  x3 = NULL + 0x30; // 0x44542c
  local_m10 = x0; // 0x445430
  DateTime_ctor_withValue() /* 0x3acfd0 */; // 0x445434
  x1 = local_m10; // 0x445438
  DateTime_toLocal() /* 0x3acf4c */; // 0x44543c
  local_0 = x0; // 0x445440
  DateTime_toString() /* 0x48f214 */; // 0x445444
  BARRIER = 20; // 0x445448
  local_0 = BARRIER; // 0x44544c
  x1 = x0; // 0x445450
  x2 = 0; // 0x445454
  x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x445458
  StringBase_substring() /* 0x281608 */; // 0x44545c
  x2 = local_m8; // 0x445460
  memSet(x2, 0x13, w0); // 0x445464
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x445470
  w16 = mem(x2, -1); // 0x445468
  w17 = mem(x0, -1); // 0x44546c
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x445468
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x44546c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x44547c
  }
  x1 = local_m20; // 0x445480
  DateTime_validateMilliseconds() /* 0x3adab8 */; // 0x445484
  BARRIER = 1000; // 0x445488
  x2 = x0 * BARRIER; // 0x44548c
  local_m20 = x2; // 0x445490
  AllocationStub_DateTime() /* 0x3adaac */; // 0x445494
  x1 = x0; // 0x445498
  x2 = local_m20; // 0x44549c
  x3 = NULL + 0x30; // 0x4454a0
  local_m10 = x0; // 0x4454a4
  DateTime_ctor_withValue() /* 0x3acfd0 */; // 0x4454a8
  x1 = local_m10; // 0x4454ac
  DateTime_toLocal() /* 0x3acf4c */; // 0x4454b0
  local_0 = x0; // 0x4454b4
  DateTime_toString() /* 0x48f214 */; // 0x4454b8
  BARRIER = 32; // 0x4454bc
  local_0 = BARRIER; // 0x4454c0
  x1 = x0; // 0x4454c4
  x2 = 10; // 0x4454c8
  x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x4454cc
  StringBase_substring() /* 0x281608 */; // 0x4454d0
  x1 = local_m8; // 0x4454d4
  memSet(x1, 0x17, w0); // 0x4454d8
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4454e4
  w16 = mem(x1, -1); // 0x4454dc
  w17 = mem(x0, -1); // 0x4454e0
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4454dc
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4454e0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4454f0
  }
  SP = FP; // 0x4454f8
  x0 = NULL; // 0x4454f4
  // frame: FP, LR, mem(SP), 0x10 // 0x4454fc
  return;
}
