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

dynamic AllocationStub_GamePkBetRecordListModel, AllocationStub__Closure, BARRIER, FP;
dynamic GamePkBetRecordListModel_ctor_fromJson, GrowableList_addAll, GrowableList_clear;
dynamic GrowableList_factory_ctor, HEAP, LR, NULL, PP, SOApiService_getPKGameRecordList, SP;
dynamic SafeChangeNotifier_safeNotify, SlowTypeTestStub_0x61d6e4;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, WriteBarrierStub_x1, local_0;
dynamic local_10, local_18, local_m10, local_m18, local_m20, local_m8, sub_0x2b15f0;
dynamic sub_0x61d99c, sub_0x61e890, sub_0x62aa34, w0, w1, w16, w17, w2, w22, w3, w4, x0, x1;
dynamic x16, x17, x2, x21, x3, x4, x5, x8, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$pkGame$notifier$notifier_game_bet_record
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// GamePKBetLaunchRecordNotifier_requestPKGameLaunchRankList
// raw disassembly:
//  0x4442bc: stp FP, LR, [SP, #-0x10]!
//  0x4442c0: mov FP, SP
//  0x4442c4: sub SP, SP, #0x20
//  0x4442c8: stur x1, [FP, #-8]
//  0x4442cc: stur x2, [FP, #-0x10]
//  0x4442d0: ldr BARRIER, [THR, #0x38]
//  0x4442d4: cmp SP, BARRIER
//  0x4442d8: b.ls #0x444358
//  0x4442dc: mov x1, #2
//  0x4442e0: bl #0x61e890
//  0x4442e4: mov x2, x0
//  0x4442e8: ldur x0, [FP, #-8]
//  0x4442ec: stur x2, [FP, #-0x18]
//  0x4442f0: stur w0, [x2, #0xf]
//  0x4442f4: ldur x1, [FP, #-0x10]
//  0x4442f8: stur w1, [x2, #0x13]
//  0x4442fc: mov x1, x0
//  0x444300: bl #0x3ac980
//  0x444304: ldur x0, [FP, #-8]
//  0x444308: ldur x3, [x0, #0x2f]
//  0x44430c: ldur x2, [FP, #-0x18]
//  0x444310: stur x3, [FP, #-0x20]
//  0x444314: add x1, PP, #0x14, lsl #12
//  0x444318: ldr x1, [x1, #0x490]
//  0x44431c: bl #0x61ec54
//  0x444320: ldur x2, [FP, #-0x18]
//  0x444324: add x1, PP, #0x14, lsl #12
//  0x444328: ldr x1, [x1, #0x498]
//  0x44432c: stur x0, [FP, #-8]
//  0x444330: bl #0x61ec54
//  0x444334: ldur x1, [FP, #-0x20]
//  0x444338: ldur x3, [FP, #-8]
//  0x44433c: mov x5, x0
//  0x444340: mov x2, #1
//  0x444344: bl #0x444360
//  0x444348: mov x0, NULL
//  0x44434c: mov SP, FP
//  0x444350: ldp FP, LR, [SP], #0x10
//  0x444354: ret 
//  0x444358: bl #0x61fa28
//  0x44435c: b #0x4442dc
//
dynamic GamePKBetLaunchRecordNotifier_requestPKGameLaunchRankList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4442bc
  // frame: FP = SP // 0x4442c0
  // frame: SP = SP - 0x20 // 0x4442c4
  local_m8 = x1; // 0x4442c8
  local_m10 = x2; // 0x4442cc
  BARRIER = mem(THR, 0x38); // 0x4442d0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x444358
  }
  x1 = 2; // 0x4442dc
  sub_0x61e890(); // 0x4442e0
  x0 = local_m8; // 0x4442e8
  x2 = x0; // 0x4442e4
  local_m18 = x2; // 0x4442ec
  memSet(x2, 0xf, w0); // 0x4442f0
  x1 = local_m10; // 0x4442f4
  memSet(x2, 0x13, w1); // 0x4442f8
  x1 = x0; // 0x4442fc
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x444300
  x0 = local_m8; // 0x444304
  x2 = local_m18; // 0x44430c
  x3 = mem((local_m8), 0x2f); // 0x444308
  local_m20 = x3; // 0x444310
  x1 = mem((PP + 0x14000), 0x490) /* Function */; // 0x444318
  AllocationStub__Closure() /* 0x61ec54 */; // 0x44431c
  x1 = mem((PP + 0x14000), 0x498) /* Function */; // 0x444328
  x2 = local_m18; // 0x444320
  local_m8 = x0; // 0x44432c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x444330
  x1 = local_m20; // 0x444334
  x2 = 1; // 0x444340
  x3 = local_m8; // 0x444338
  x5 = x0; // 0x44433c
  SOApiService_getPKGameRecordList() /* 0x444360 */; // 0x444344
  SP = FP; // 0x44434c
  x0 = NULL; // 0x444348
  // frame: FP, LR, mem(SP), 0x10 // 0x444350
  return;
}

// GamePKBetLaunchRecordNotifier_anon_closure
// raw disassembly:
//  0x444ddc: stp FP, LR, [SP, #-0x10]!
//  0x444de0: mov FP, SP
//  0x444de4: sub SP, SP, #0x30
//  0x444de8: ldr x0, [FP, #0x18]
//  0x444dec: ldur w3, [x0, #0x17]
//  0x444df0: add x3, x3, HEAP, lsl #32
//  0x444df4: stur x3, [FP, #-0x10]
//  0x444df8: ldr BARRIER, [THR, #0x38]
//  0x444dfc: cmp SP, BARRIER
//  0x444e00: b.ls #0x445030
//  0x444e04: ldur w4, [x3, #0xf]
//  0x444e08: add x4, x4, HEAP, lsl #32
//  0x444e0c: ldr x5, [FP, #0x10]
//  0x444e10: stur x4, [FP, #-8]
//  0x444e14: ldur x0, [x5, #-1]
//  0x444e18: ubfx x0, x0, #0xc, #0x14
//  0x444e1c: mov x1, x5
//  0x444e20: add x2, PP, #0xf, lsl #12
//  0x444e24: ldr x2, [x2, #0x368]
//  0x444e28: sub LR, x0, #1, lsl #12
//  0x444e2c: ldr LR, [x21, LR, lsl #3]
//  0x444e30: blr LR
//  0x444e34: cmp w0, w22
//  0x444e38: b.ne #0x444e44
//  0x444e3c: orr x5, xzr, #0xfffffffffffffffe
//  0x444e40: b #0x444e48
//  0x444e44: mov x5, x0
//  0x444e48: ldr x4, [FP, #0x10]
//  0x444e4c: ldur x3, [FP, #-8]
//  0x444e50: mov x0, x5
//  0x444e54: stur x5, [FP, #-0x18]
//  0x444e58: mov x2, NULL
//  0x444e5c: mov x1, NULL
//  0x444e60: tbz w0, #0, #0x444e88
//  0x444e64: ldur x4, [x0, #-1]
//  0x444e68: ubfx x4, x4, #0xc, #0x14
//  0x444e6c: sub x4, x4, #0x3c
//  0x444e70: cmp x4, #1
//  0x444e74: b.ls #0x444e88
//  0x444e78: ldr x8, [PP, #0x1170]
//  0x444e7c: add x3, PP, #0x14, lsl #12
//  0x444e80: ldr x3, [x3, #0x4a0]
//  0x444e84: bl #0x62aa34
//  0x444e88: ldur x0, [FP, #-0x18]
//  0x444e8c: sbfx x1, x0, #1, #0x1f
//  0x444e90: tbz w0, #0, #0x444e98
//  0x444e94: ldur x1, [x0, #7]
//  0x444e98: ldur x0, [FP, #-8]
//  0x444e9c: stur x1, [x0, #0x2f]
//  0x444ea0: ldr x1, [FP, #0x10]
//  0x444ea4: ldur x0, [x1, #-1]
//  0x444ea8: ubfx x0, x0, #0xc, #0x14
//  0x444eac: add x2, PP, #0xf, lsl #12
//  0x444eb0: ldr x2, [x2, #0x380]
//  0x444eb4: sub LR, x0, #1, lsl #12
//  0x444eb8: ldr LR, [x21, LR, lsl #3]
//  0x444ebc: blr LR
//  0x444ec0: cmp w0, w22
//  0x444ec4: b.ne #0x444edc
//  0x444ec8: mov x1, NULL
//  0x444ecc: mov x2, #0
//  0x444ed0: bl #0x277268
//  0x444ed4: mov x3, x0
//  0x444ed8: b #0x444ee0
//  0x444edc: mov x3, x0
//  0x444ee0: mov x0, x3
//  0x444ee4: stur x3, [FP, #-8]
//  0x444ee8: mov x2, NULL
//  0x444eec: mov x1, NULL
//  0x444ef0: mov x4, #0x3c
//  0x444ef4: tbz w0, #0, #0x444f00
//  0x444ef8: ldur x4, [x0, #-1]
//  0x444efc: ubfx x4, x4, #0xc, #0x14
//  0x444f00: sub x4, x4, #0x5a
//  0x444f04: cmp x4, #2
//  0x444f08: b.ls #0x444f3c
//  0x444f0c: sub x4, x4, #0x16
//  0x444f10: cmp x4, #0x37
//  0x444f14: b.ls #0x444f3c
//  0x444f18: cmp x4, #0xebc
//  0x444f1c: b.eq #0x444f3c
//  0x444f20: sub x4, x4, #0xedd
//  0x444f24: cmp x4, #4
//  0x444f28: b.ls #0x444f3c
//  0x444f2c: ldr x8, [PP, #0x3b80]
//  0x444f30: add x3, PP, #0x14, lsl #12
//  0x444f34: ldr x3, [x3, #0x4b0]
//  0x444f38: bl #0x61d6e4
//  0x444f3c: ldur x2, [FP, #-8]
//  0x444f40: ldur x0, [x2, #-1]
//  0x444f44: ubfx x0, x0, #0xc, #0x14
//  0x444f48: mov x1, x2
//  0x444f4c: mov x17, #0x89aa
//  0x444f50: add LR, x0, x17
//  0x444f54: ldr LR, [x21, LR, lsl #3]
//  0x444f58: blr LR
//  0x444f5c: tbnz w0, #4, #0x444fd0
//  0x444f60: ldur x3, [FP, #-0x10]
//  0x444f64: ldur x0, [FP, #-8]
//  0x444f68: ldur w1, [x3, #0xf]
//  0x444f6c: add x1, x1, HEAP, lsl #32
//  0x444f70: ldur w4, [x1, #0x2b]
//  0x444f74: add x4, x4, HEAP, lsl #32
//  0x444f78: stur x4, [FP, #-0x18]
//  0x444f7c: add x1, PP, #0x14, lsl #12
//  0x444f80: ldr x1, [x1, #0x4c0]
//  0x444f84: mov x2, NULL
//  0x444f88: bl #0x61ec54
//  0x444f8c: mov x1, x0
//  0x444f90: ldur x0, [FP, #-8]
//  0x444f94: ldur x2, [x0, #-1]
//  0x444f98: ubfx x2, x2, #0xc, #0x14
//  0x444f9c: add BARRIER, PP, #0x12, lsl #12
//  0x444fa0: ldr BARRIER, [BARRIER, #0xe0]
//  0x444fa4: stp x0, BARRIER, [SP, #8]
//  0x444fa8: str x1, [SP]
//  0x444fac: mov x0, x2
//  0x444fb0: ldr x4, [PP, #0x58]
//  0x444fb4: mov x17, #0x86d9
//  0x444fb8: add LR, x0, x17
//  0x444fbc: ldr LR, [x21, LR, lsl #3]
//  0x444fc0: blr LR
//  0x444fc4: ldur x1, [FP, #-0x18]
//  0x444fc8: mov x2, x0
//  0x444fcc: bl #0x2ce4e8
//  0x444fd0: ldur x1, [FP, #-0x10]
//  0x444fd4: ldur w0, [x1, #0x13]
//  0x444fd8: add x0, x0, HEAP, lsl #32
//  0x444fdc: ldur w2, [x1, #0xf]
//  0x444fe0: add x2, x2, HEAP, lsl #32
//  0x444fe4: ldur x3, [x2, #0x2f]
//  0x444fe8: tbnz x3, #0x3f, #0x444ff4
//  0x444fec: add x2, NULL, #0x30
//  0x444ff0: b #0x444ff8
//  0x444ff4: add x2, NULL, #0x20
//  0x444ff8: add BARRIER, NULL, #0x20
//  0x444ffc: stp BARRIER, x0, [SP, #8]
//  0x445000: str x2, [SP]
//  0x445004: ldr x4, [PP, #0x370]
//  0x445008: ldur x2, [x0, #0x1f]
//  0x44500c: blr x2
//  0x445010: ldur x0, [FP, #-0x10]
//  0x445014: ldur w1, [x0, #0xf]
//  0x445018: add x1, x1, HEAP, lsl #32
//  0x44501c: bl #0x3ac980
//  0x445020: mov x0, NULL
//  0x445024: mov SP, FP
//  0x445028: ldp FP, LR, [SP], #0x10
//  0x44502c: ret 
//  0x445030: bl #0x61fa28
//  0x445034: b #0x444e04
//
dynamic GamePKBetLaunchRecordNotifier_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x444ddc
  // frame: FP = SP // 0x444de0
  // frame: SP = SP - 0x30 // 0x444de4
  w3 = mem((local_18), 0x17); // 0x444dec
  x0 = local_18; // 0x444de8
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x444df0
  local_m10 = x3; // 0x444df4
  BARRIER = mem(THR, 0x38); // 0x444df8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x445030
  }
  x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x444e08
  x5 = local_10; // 0x444e0c
  local_m8 = x4; // 0x444e10
  LR = mem(x21, ((((mem(x5, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x444e2c
  x0 = ((mem(x5, -1)) >> 12) & 0xfffff; // 0x444e18
  x1 = x5; // 0x444e1c
  x2 = "cursor" /* pp+0xf368 */; // 0x444e24
  callIndirect(LR); // 0x444e30
  if (w0 != w22) {
    x5 = x0; // 0x444e44
  } else {
    x5 = xzr | 0xfffffffffffffffe; // 0x444e3c
  }
  x0 = x5; // 0x444e50
  x3 = local_m8; // 0x444e4c
  x4 = local_10; // 0x444e48
  local_m18 = x5; // 0x444e54
  x1 = NULL; // 0x444e5c
  x2 = NULL; // 0x444e58
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x444e6c
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x14000), 0x4a0) /* Obj!? */; // 0x444e80
      x8 = mem(PP, 0x1170) /* Type */; // 0x444e78
      sub_0x62aa34(); // 0x444e84
    }
  }
  x0 = local_m18; // 0x444e88
  x1 = ((local_m18) >> 1) & 0x7fffffff; // 0x444e8c
  if (x0 & (1 << 0) == 0) {
  } else {
    x1 = mem(x0, 7); // 0x444e94
  }
  x0 = local_m8; // 0x444e98
  memSet(x0, 0x2f, x1); // 0x444e9c
  LR = mem(x21, ((((mem((local_10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x444eb8
  x0 = ((mem((local_10), -1)) >> 12) & 0xfffff; // 0x444ea8
  x1 = local_10; // 0x444ea0
  x2 = "list" /* pp+0xf380 */; // 0x444eb0
  callIndirect(LR); // 0x444ebc
  if (w0 != w22) {
    x3 = x0; // 0x444edc
  } else {
    x1 = NULL; // 0x444ec8
    x2 = 0; // 0x444ecc
    GrowableList_factory_ctor() /* 0x277268 */; // 0x444ed0
    x3 = x0; // 0x444ed4
  }
  x0 = x3; // 0x444ee0
  local_m8 = x3; // 0x444ee4
  x1 = NULL; // 0x444eec
  x2 = NULL; // 0x444ee8
  x4 = 60; // 0x444ef0
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x444efc
  }
  x4 = x4 - 0x5a; // 0x444f00
  if (x4 <= 2) {
  } else {
    x4 = x4 - 0x16; // 0x444f0c
    if (x4 <= 0x37) {
    } else {
      if (x4 == 0xebc) {
      } else {
        x4 = x4 - 0xedd; // 0x444f20
        if (x4 <= 4) {
        } else {
          x3 = mem((PP + 0x14000), 0x4b0) /* Obj!? */; // 0x444f34
          x8 = mem(PP, 0x3b80) /* Type */; // 0x444f2c
          SlowTypeTestStub_0x61d6e4() /* 0x61d6e4 */; // 0x444f38
        }
      }
    }
  }
  LR = mem(x21, ((((mem((local_m8), (-1)) >> 12) & 0xfffff) + x17) << 3)); // 0x444f54
  x0 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x444f44
  x1 = local_m8; // 0x444f48
  x17 = 35242; // 0x444f4c
  x2 = local_m8; // 0x444f3c
  callIndirect(LR); // 0x444f58
  if (x0 & (1 << 4) != 0) {
  } else {
    w1 = mem((local_m10), 0xf); // 0x444f68
    w4 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x444f70
    x0 = local_m8; // 0x444f64
    x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x444f6c
    x3 = local_m10; // 0x444f60
    x4 = ((mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x444f74
    local_m18 = x4; // 0x444f78
    x1 = mem((PP + 0x14000), 0x4c0) /* Function */; // 0x444f80
    x2 = NULL; // 0x444f84
    AllocationStub__Closure() /* 0x61ec54 */; // 0x444f88
    BARRIER = mem((PP + 0x12000), 0xe0) /* TypeArguments */; // 0x444fa0
    x0 = local_m8; // 0x444f90
    x1 = x0; // 0x444f8c
    x2 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x444f98
    // frame: x0, BARRIER, mem(SP, 8) // 0x444fa4
    local_0 = x1; // 0x444fa8
    LR = mem(x21, ((x0 + x17) << 3)); // 0x444fbc
    x0 = x2; // 0x444fac
    x17 = 34521; // 0x444fb4
    x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x444fb0
    callIndirect(LR); // 0x444fc0
    x1 = local_m18; // 0x444fc4
    x2 = x0; // 0x444fc8
    GrowableList_addAll() /* 0x2ce4e8 */; // 0x444fcc
  }
  w0 = mem((local_m10), 0x13); // 0x444fd4
  w2 = mem((local_m10), 0xf); // 0x444fdc
  x0 = ((mem((local_m10), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x444fd8
  x1 = local_m10; // 0x444fd0
  x2 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x444fe0
  x3 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2f); // 0x444fe4
  if (x3 & (1 << 0x3f) != 0) {
    x2 = NULL + 0x20; // 0x444ff4
  } else {
    x2 = NULL + 0x30; // 0x444fec
  }
  BARRIER = NULL + 0x20; // 0x444ff8
  // frame: BARRIER, x0, mem(SP, 8) // 0x444ffc
  local_0 = x2; // 0x445000
  x2 = mem(x0, 0x1f); // 0x445008
  x4 = mem(PP, 0x370) /* Obj!? */; // 0x445004
  callIndirect(x2); // 0x44500c
  w1 = mem((local_m10), 0xf); // 0x445014
  x0 = local_m10; // 0x445010
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x445018
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x44501c
  SP = FP; // 0x445024
  x0 = NULL; // 0x445020
  // frame: FP, LR, mem(SP), 0x10 // 0x445028
  return;
}

// GamePKBetLaunchRecordNotifier_anon_closure_2
// raw disassembly:
//  0x445038: stp FP, LR, [SP, #-0x10]!
//  0x44503c: mov FP, SP
//  0x445040: sub SP, SP, #8
//  0x445044: ldr BARRIER, [THR, #0x38]
//  0x445048: cmp SP, BARRIER
//  0x44504c: b.ls #0x445090
//  0x445050: ldr x0, [FP, #0x10]
//  0x445054: mov x2, NULL
//  0x445058: mov x1, NULL
//  0x44505c: ldr x8, [PP, #0x3cd0]
//  0x445060: add x3, PP, #0x14, lsl #12
//  0x445064: ldr x3, [x3, #0x4c8]
//  0x445068: bl #0x2b15f0
//  0x44506c: bl #0x44552c
//  0x445070: mov x1, x0
//  0x445074: ldr x2, [FP, #0x10]
//  0x445078: stur x0, [FP, #-8]
//  0x44507c: bl #0x445098
//  0x445080: ldur x0, [FP, #-8]
//  0x445084: mov SP, FP
//  0x445088: ldp FP, LR, [SP], #0x10
//  0x44508c: ret 
//  0x445090: bl #0x61fa28
//  0x445094: b #0x445050
//
dynamic GamePKBetLaunchRecordNotifier_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x445038
  BARRIER = mem(THR, 0x38); // 0x445044
  // frame: FP = SP // 0x44503c
  // frame: SP = SP - 8 // 0x445040
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x445090
  }
  x0 = local_10; // 0x445050
  x1 = NULL; // 0x445058
  x2 = NULL; // 0x445054
  x3 = mem((PP + 0x14000), 0x4c8) /* Obj!? */; // 0x445064
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x44505c
  sub_0x2b15f0(); // 0x445068
  AllocationStub_GamePkBetRecordListModel() /* 0x44552c */; // 0x44506c
  x1 = x0; // 0x445070
  x2 = local_10; // 0x445074
  local_m8 = x0; // 0x445078
  GamePkBetRecordListModel_ctor_fromJson() /* 0x445098 */; // 0x44507c
  SP = FP; // 0x445084
  x0 = local_m8; // 0x445080
  // frame: FP, LR, mem(SP), 0x10 // 0x445088
  return;
}

// GamePKBetLaunchRecordNotifier_ctor
// raw disassembly:
//  0x4c57cc: stp FP, LR, [SP, #-0x10]!
//  0x4c57d0: mov FP, SP
//  0x4c57d4: sub SP, SP, #8
//  0x4c57d8: mov x0, x1
//  0x4c57dc: stur x1, [FP, #-8]
//  0x4c57e0: ldr BARRIER, [THR, #0x38]
//  0x4c57e4: cmp SP, BARRIER
//  0x4c57e8: b.ls #0x4c5880
//  0x4c57ec: add x1, PP, #0x12, lsl #12
//  0x4c57f0: ldr x1, [x1, #0xe0]
//  0x4c57f4: mov x2, #0
//  0x4c57f8: bl #0x277268
//  0x4c57fc: ldur x1, [FP, #-8]
//  0x4c5800: stur w0, [x1, #0x2b]
//  0x4c5804: ldurb w16, [x1, #-1]
//  0x4c5808: ldurb w17, [x0, #-1]
//  0x4c580c: and BARRIER, x17, BARRIER, lsr #2
//  0x4c5810: tst BARRIER, HEAP, lsr #32
//  0x4c5814: b.eq #0x4c581c
//  0x4c5818: bl #0x61e04c
//  0x4c581c: mov x0, #-1
//  0x4c5820: stur x0, [x1, #0x2f]
//  0x4c5824: stur x0, [x1, #0x23]
//  0x4c5828: stur xzr, [x1, #7]
//  0x4c582c: stur xzr, [x1, #0x13]
//  0x4c5830: stur xzr, [x1, #0x1b]
//  0x4c5834: ldr x0, [THR, #0x68]
//  0x4c5838: ldr x0, [x0, #0xb90]
//  0x4c583c: ldr BARRIER, [PP, #0x40]
//  0x4c5840: cmp w0, w16
//  0x4c5844: b.ne #0x4c5850
//  0x4c5848: ldr x2, [PP, #0x3608]
//  0x4c584c: bl #0x61d99c
//  0x4c5850: ldur x1, [FP, #-8]
//  0x4c5854: stur w0, [x1, #0xf]
//  0x4c5858: ldurb w16, [x1, #-1]
//  0x4c585c: ldurb w17, [x0, #-1]
//  0x4c5860: and BARRIER, x17, BARRIER, lsr #2
//  0x4c5864: tst BARRIER, HEAP, lsr #32
//  0x4c5868: b.eq #0x4c5870
//  0x4c586c: bl #0x61e04c
//  0x4c5870: mov x0, NULL
//  0x4c5874: mov SP, FP
//  0x4c5878: ldp FP, LR, [SP], #0x10
//  0x4c587c: ret 
//  0x4c5880: bl #0x61fa28
//  0x4c5884: b #0x4c57ec
//
dynamic GamePKBetLaunchRecordNotifier_ctor() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c57cc
  // frame: FP = SP // 0x4c57d0
  // frame: SP = SP - 8 // 0x4c57d4
  x0 = x1; // 0x4c57d8
  local_m8 = x1; // 0x4c57dc
  BARRIER = mem(THR, 0x38); // 0x4c57e0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c5880
  }
  x1 = mem((PP + 0x12000), 0xe0) /* TypeArguments */; // 0x4c57f0
  x2 = 0; // 0x4c57f4
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c57f8
  x1 = local_m8; // 0x4c57fc
  memSet(x1, 0x2b, w0); // 0x4c5800
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c580c
  w16 = mem(x1, -1); // 0x4c5804
  w17 = mem(x0, -1); // 0x4c5808
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c5804
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c5808
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c5818
  }
  x0 = -1; // 0x4c581c
  memSet(x1, 0x2f, x0); // 0x4c5820
  memSet(x1, 0x23, x0); // 0x4c5824
  memSet(x1, 7, xzr); // 0x4c5828
  memSet(x1, 0x13, xzr); // 0x4c582c
  memSet(x1, 0x1b, xzr); // 0x4c5830
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4c583c
  x0 = mem((mem(THR, 0x68)), 0xb90); // 0x4c5838
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3608) /* Field */; // 0x4c5848
    sub_0x61d99c(); // 0x4c584c
  }
  x1 = local_m8; // 0x4c5850
  memSet(x1, 0xf, w0); // 0x4c5854
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c5860
  w16 = mem(x1, -1); // 0x4c5858
  w17 = mem(x0, -1); // 0x4c585c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c5858
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c585c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c586c
  }
  SP = FP; // 0x4c5874
  x0 = NULL; // 0x4c5870
  // frame: FP, LR, mem(SP), 0x10 // 0x4c5878
  return;
}

// GamePKBetLaunchRecordNotifier_gainPKGameLaunchRank
// raw disassembly:
//  0x4da710: stp FP, LR, [SP, #-0x10]!
//  0x4da714: mov FP, SP
//  0x4da718: sub SP, SP, #0x10
//  0x4da71c: mov x0, x1
//  0x4da720: stur x1, [FP, #-8]
//  0x4da724: stur x2, [FP, #-0x10]
//  0x4da728: ldr BARRIER, [THR, #0x38]
//  0x4da72c: cmp SP, BARRIER
//  0x4da730: b.ls #0x4da75c
//  0x4da734: ldur w1, [x0, #0x2b]
//  0x4da738: add x1, x1, HEAP, lsl #32
//  0x4da73c: bl #0x2b3608
//  0x4da740: ldur x1, [FP, #-8]
//  0x4da744: ldur x2, [FP, #-0x10]
//  0x4da748: bl #0x4442bc
//  0x4da74c: mov x0, NULL
//  0x4da750: mov SP, FP
//  0x4da754: ldp FP, LR, [SP], #0x10
//  0x4da758: ret 
//  0x4da75c: bl #0x61fa28
//  0x4da760: b #0x4da734
//
dynamic GamePKBetLaunchRecordNotifier_gainPKGameLaunchRank() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4da710
  // frame: FP = SP // 0x4da714
  // frame: SP = SP - 0x10 // 0x4da718
  x0 = x1; // 0x4da71c
  local_m8 = x1; // 0x4da720
  local_m10 = x2; // 0x4da724
  BARRIER = mem(THR, 0x38); // 0x4da728
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4da75c
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4da738
  GrowableList_clear() /* 0x2b3608 */; // 0x4da73c
  x1 = local_m8; // 0x4da740
  x2 = local_m10; // 0x4da744
  GamePKBetLaunchRecordNotifier_requestPKGameLaunchRankList() /* 0x4442bc */; // 0x4da748
  SP = FP; // 0x4da750
  x0 = NULL; // 0x4da74c
  // frame: FP, LR, mem(SP), 0x10 // 0x4da754
  return;
}

// GamePKBetParticipateRecordNotifier_requestGameParticipateRankList
// raw disassembly:
//  0x445ab0: stp FP, LR, [SP, #-0x10]!
//  0x445ab4: mov FP, SP
//  0x445ab8: sub SP, SP, #0x20
//  0x445abc: stur x1, [FP, #-8]
//  0x445ac0: stur x2, [FP, #-0x10]
//  0x445ac4: ldr BARRIER, [THR, #0x38]
//  0x445ac8: cmp SP, BARRIER
//  0x445acc: b.ls #0x445b4c
//  0x445ad0: mov x1, #2
//  0x445ad4: bl #0x61e890
//  0x445ad8: mov x2, x0
//  0x445adc: ldur x0, [FP, #-8]
//  0x445ae0: stur x2, [FP, #-0x18]
//  0x445ae4: stur w0, [x2, #0xf]
//  0x445ae8: ldur x1, [FP, #-0x10]
//  0x445aec: stur w1, [x2, #0x13]
//  0x445af0: mov x1, x0
//  0x445af4: bl #0x3ac980
//  0x445af8: ldur x0, [FP, #-8]
//  0x445afc: ldur x3, [x0, #0x2f]
//  0x445b00: ldur x2, [FP, #-0x18]
//  0x445b04: stur x3, [FP, #-0x20]
//  0x445b08: add x1, PP, #0x14, lsl #12
//  0x445b0c: ldr x1, [x1, #0x390]
//  0x445b10: bl #0x61ec54
//  0x445b14: ldur x2, [FP, #-0x18]
//  0x445b18: add x1, PP, #0x14, lsl #12
//  0x445b1c: ldr x1, [x1, #0x398]
//  0x445b20: stur x0, [FP, #-8]
//  0x445b24: bl #0x61ec54
//  0x445b28: ldur x1, [FP, #-0x20]
//  0x445b2c: ldur x3, [FP, #-8]
//  0x445b30: mov x5, x0
//  0x445b34: mov x2, #2
//  0x445b38: bl #0x444360
//  0x445b3c: mov x0, NULL
//  0x445b40: mov SP, FP
//  0x445b44: ldp FP, LR, [SP], #0x10
//  0x445b48: ret 
//  0x445b4c: bl #0x61fa28
//  0x445b50: b #0x445ad0
//
dynamic GamePKBetParticipateRecordNotifier_requestGameParticipateRankList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x445ab0
  // frame: FP = SP // 0x445ab4
  // frame: SP = SP - 0x20 // 0x445ab8
  local_m8 = x1; // 0x445abc
  local_m10 = x2; // 0x445ac0
  BARRIER = mem(THR, 0x38); // 0x445ac4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x445b4c
  }
  x1 = 2; // 0x445ad0
  sub_0x61e890(); // 0x445ad4
  x0 = local_m8; // 0x445adc
  x2 = x0; // 0x445ad8
  local_m18 = x2; // 0x445ae0
  memSet(x2, 0xf, w0); // 0x445ae4
  x1 = local_m10; // 0x445ae8
  memSet(x2, 0x13, w1); // 0x445aec
  x1 = x0; // 0x445af0
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x445af4
  x0 = local_m8; // 0x445af8
  x2 = local_m18; // 0x445b00
  x3 = mem((local_m8), 0x2f); // 0x445afc
  local_m20 = x3; // 0x445b04
  x1 = mem((PP + 0x14000), 0x390) /* Function */; // 0x445b0c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x445b10
  x1 = mem((PP + 0x14000), 0x398) /* Function */; // 0x445b1c
  x2 = local_m18; // 0x445b14
  local_m8 = x0; // 0x445b20
  AllocationStub__Closure() /* 0x61ec54 */; // 0x445b24
  x1 = local_m20; // 0x445b28
  x2 = 2; // 0x445b34
  x3 = local_m8; // 0x445b2c
  x5 = x0; // 0x445b30
  SOApiService_getPKGameRecordList() /* 0x444360 */; // 0x445b38
  SP = FP; // 0x445b40
  x0 = NULL; // 0x445b3c
  // frame: FP, LR, mem(SP), 0x10 // 0x445b44
  return;
}

// GamePKBetParticipateRecordNotifier_anon_closure
// raw disassembly:
//  0x445b54: stp FP, LR, [SP, #-0x10]!
//  0x445b58: mov FP, SP
//  0x445b5c: sub SP, SP, #0x30
//  0x445b60: ldr x0, [FP, #0x18]
//  0x445b64: ldur w3, [x0, #0x17]
//  0x445b68: add x3, x3, HEAP, lsl #32
//  0x445b6c: stur x3, [FP, #-0x10]
//  0x445b70: ldr BARRIER, [THR, #0x38]
//  0x445b74: cmp SP, BARRIER
//  0x445b78: b.ls #0x445da8
//  0x445b7c: ldur w4, [x3, #0xf]
//  0x445b80: add x4, x4, HEAP, lsl #32
//  0x445b84: ldr x5, [FP, #0x10]
//  0x445b88: stur x4, [FP, #-8]
//  0x445b8c: ldur x0, [x5, #-1]
//  0x445b90: ubfx x0, x0, #0xc, #0x14
//  0x445b94: mov x1, x5
//  0x445b98: add x2, PP, #0xf, lsl #12
//  0x445b9c: ldr x2, [x2, #0x368]
//  0x445ba0: sub LR, x0, #1, lsl #12
//  0x445ba4: ldr LR, [x21, LR, lsl #3]
//  0x445ba8: blr LR
//  0x445bac: cmp w0, w22
//  0x445bb0: b.ne #0x445bbc
//  0x445bb4: orr x5, xzr, #0xfffffffffffffffe
//  0x445bb8: b #0x445bc0
//  0x445bbc: mov x5, x0
//  0x445bc0: ldr x4, [FP, #0x10]
//  0x445bc4: ldur x3, [FP, #-8]
//  0x445bc8: mov x0, x5
//  0x445bcc: stur x5, [FP, #-0x18]
//  0x445bd0: mov x2, NULL
//  0x445bd4: mov x1, NULL
//  0x445bd8: tbz w0, #0, #0x445c00
//  0x445bdc: ldur x4, [x0, #-1]
//  0x445be0: ubfx x4, x4, #0xc, #0x14
//  0x445be4: sub x4, x4, #0x3c
//  0x445be8: cmp x4, #1
//  0x445bec: b.ls #0x445c00
//  0x445bf0: ldr x8, [PP, #0x1170]
//  0x445bf4: add x3, PP, #0x14, lsl #12
//  0x445bf8: ldr x3, [x3, #0x3a0]
//  0x445bfc: bl #0x62aa34
//  0x445c00: ldur x0, [FP, #-0x18]
//  0x445c04: sbfx x1, x0, #1, #0x1f
//  0x445c08: tbz w0, #0, #0x445c10
//  0x445c0c: ldur x1, [x0, #7]
//  0x445c10: ldur x0, [FP, #-8]
//  0x445c14: stur x1, [x0, #0x2f]
//  0x445c18: ldr x1, [FP, #0x10]
//  0x445c1c: ldur x0, [x1, #-1]
//  0x445c20: ubfx x0, x0, #0xc, #0x14
//  0x445c24: add x2, PP, #0xf, lsl #12
//  0x445c28: ldr x2, [x2, #0x380]
//  0x445c2c: sub LR, x0, #1, lsl #12
//  0x445c30: ldr LR, [x21, LR, lsl #3]
//  0x445c34: blr LR
//  0x445c38: cmp w0, w22
//  0x445c3c: b.ne #0x445c54
//  0x445c40: mov x1, NULL
//  0x445c44: mov x2, #0
//  0x445c48: bl #0x277268
//  0x445c4c: mov x3, x0
//  0x445c50: b #0x445c58
//  0x445c54: mov x3, x0
//  0x445c58: mov x0, x3
//  0x445c5c: stur x3, [FP, #-8]
//  0x445c60: mov x2, NULL
//  0x445c64: mov x1, NULL
//  0x445c68: mov x4, #0x3c
//  0x445c6c: tbz w0, #0, #0x445c78
//  0x445c70: ldur x4, [x0, #-1]
//  0x445c74: ubfx x4, x4, #0xc, #0x14
//  0x445c78: sub x4, x4, #0x5a
//  0x445c7c: cmp x4, #2
//  0x445c80: b.ls #0x445cb4
//  0x445c84: sub x4, x4, #0x16
//  0x445c88: cmp x4, #0x37
//  0x445c8c: b.ls #0x445cb4
//  0x445c90: cmp x4, #0xebc
//  0x445c94: b.eq #0x445cb4
//  0x445c98: sub x4, x4, #0xedd
//  0x445c9c: cmp x4, #4
//  0x445ca0: b.ls #0x445cb4
//  0x445ca4: ldr x8, [PP, #0x3b80]
//  0x445ca8: add x3, PP, #0x14, lsl #12
//  0x445cac: ldr x3, [x3, #0x3b0]
//  0x445cb0: bl #0x61d6e4
//  0x445cb4: ldur x2, [FP, #-8]
//  0x445cb8: ldur x0, [x2, #-1]
//  0x445cbc: ubfx x0, x0, #0xc, #0x14
//  0x445cc0: mov x1, x2
//  0x445cc4: mov x17, #0x89aa
//  0x445cc8: add LR, x0, x17
//  0x445ccc: ldr LR, [x21, LR, lsl #3]
//  0x445cd0: blr LR
//  0x445cd4: tbnz w0, #4, #0x445d48
//  0x445cd8: ldur x3, [FP, #-0x10]
//  0x445cdc: ldur x0, [FP, #-8]
//  0x445ce0: ldur w1, [x3, #0xf]
//  0x445ce4: add x1, x1, HEAP, lsl #32
//  0x445ce8: ldur w4, [x1, #0x2b]
//  0x445cec: add x4, x4, HEAP, lsl #32
//  0x445cf0: stur x4, [FP, #-0x18]
//  0x445cf4: add x1, PP, #0x14, lsl #12
//  0x445cf8: ldr x1, [x1, #0x3c0]
//  0x445cfc: mov x2, NULL
//  0x445d00: bl #0x61ec54
//  0x445d04: mov x1, x0
//  0x445d08: ldur x0, [FP, #-8]
//  0x445d0c: ldur x2, [x0, #-1]
//  0x445d10: ubfx x2, x2, #0xc, #0x14
//  0x445d14: add BARRIER, PP, #0x12, lsl #12
//  0x445d18: ldr BARRIER, [BARRIER, #0xe0]
//  0x445d1c: stp x0, BARRIER, [SP, #8]
//  0x445d20: str x1, [SP]
//  0x445d24: mov x0, x2
//  0x445d28: ldr x4, [PP, #0x58]
//  0x445d2c: mov x17, #0x86d9
//  0x445d30: add LR, x0, x17
//  0x445d34: ldr LR, [x21, LR, lsl #3]
//  0x445d38: blr LR
//  0x445d3c: ldur x1, [FP, #-0x18]
//  0x445d40: mov x2, x0
//  0x445d44: bl #0x2ce4e8
//  0x445d48: ldur x1, [FP, #-0x10]
//  0x445d4c: ldur w0, [x1, #0x13]
//  0x445d50: add x0, x0, HEAP, lsl #32
//  0x445d54: ldur w2, [x1, #0xf]
//  0x445d58: add x2, x2, HEAP, lsl #32
//  0x445d5c: ldur x3, [x2, #0x2f]
//  0x445d60: tbnz x3, #0x3f, #0x445d6c
//  0x445d64: add x2, NULL, #0x30
//  0x445d68: b #0x445d70
//  0x445d6c: add x2, NULL, #0x20
//  0x445d70: add BARRIER, NULL, #0x20
//  0x445d74: stp BARRIER, x0, [SP, #8]
//  0x445d78: str x2, [SP]
//  0x445d7c: ldr x4, [PP, #0x370]
//  0x445d80: ldur x2, [x0, #0x1f]
//  0x445d84: blr x2
//  0x445d88: ldur x0, [FP, #-0x10]
//  0x445d8c: ldur w1, [x0, #0xf]
//  0x445d90: add x1, x1, HEAP, lsl #32
//  0x445d94: bl #0x3ac980
//  0x445d98: mov x0, NULL
//  0x445d9c: mov SP, FP
//  0x445da0: ldp FP, LR, [SP], #0x10
//  0x445da4: ret 
//  0x445da8: bl #0x61fa28
//  0x445dac: b #0x445b7c
//
dynamic GamePKBetParticipateRecordNotifier_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x445b54
  // frame: FP = SP // 0x445b58
  // frame: SP = SP - 0x30 // 0x445b5c
  w3 = mem((local_18), 0x17); // 0x445b64
  x0 = local_18; // 0x445b60
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x445b68
  local_m10 = x3; // 0x445b6c
  BARRIER = mem(THR, 0x38); // 0x445b70
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x445da8
  }
  x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x445b80
  x5 = local_10; // 0x445b84
  local_m8 = x4; // 0x445b88
  LR = mem(x21, ((((mem(x5, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x445ba4
  x0 = ((mem(x5, -1)) >> 12) & 0xfffff; // 0x445b90
  x1 = x5; // 0x445b94
  x2 = "cursor" /* pp+0xf368 */; // 0x445b9c
  callIndirect(LR); // 0x445ba8
  if (w0 != w22) {
    x5 = x0; // 0x445bbc
  } else {
    x5 = xzr | 0xfffffffffffffffe; // 0x445bb4
  }
  x0 = x5; // 0x445bc8
  x3 = local_m8; // 0x445bc4
  x4 = local_10; // 0x445bc0
  local_m18 = x5; // 0x445bcc
  x1 = NULL; // 0x445bd4
  x2 = NULL; // 0x445bd0
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x445be4
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x14000), 0x3a0) /* Obj!? */; // 0x445bf8
      x8 = mem(PP, 0x1170) /* Type */; // 0x445bf0
      sub_0x62aa34(); // 0x445bfc
    }
  }
  x0 = local_m18; // 0x445c00
  x1 = ((local_m18) >> 1) & 0x7fffffff; // 0x445c04
  if (x0 & (1 << 0) == 0) {
  } else {
    x1 = mem(x0, 7); // 0x445c0c
  }
  x0 = local_m8; // 0x445c10
  memSet(x0, 0x2f, x1); // 0x445c14
  LR = mem(x21, ((((mem((local_10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x445c30
  x0 = ((mem((local_10), -1)) >> 12) & 0xfffff; // 0x445c20
  x1 = local_10; // 0x445c18
  x2 = "list" /* pp+0xf380 */; // 0x445c28
  callIndirect(LR); // 0x445c34
  if (w0 != w22) {
    x3 = x0; // 0x445c54
  } else {
    x1 = NULL; // 0x445c40
    x2 = 0; // 0x445c44
    GrowableList_factory_ctor() /* 0x277268 */; // 0x445c48
    x3 = x0; // 0x445c4c
  }
  x0 = x3; // 0x445c58
  local_m8 = x3; // 0x445c5c
  x1 = NULL; // 0x445c64
  x2 = NULL; // 0x445c60
  x4 = 60; // 0x445c68
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x445c74
  }
  x4 = x4 - 0x5a; // 0x445c78
  if (x4 <= 2) {
  } else {
    x4 = x4 - 0x16; // 0x445c84
    if (x4 <= 0x37) {
    } else {
      if (x4 == 0xebc) {
      } else {
        x4 = x4 - 0xedd; // 0x445c98
        if (x4 <= 4) {
        } else {
          x3 = mem((PP + 0x14000), 0x3b0) /* Obj!? */; // 0x445cac
          x8 = mem(PP, 0x3b80) /* Type */; // 0x445ca4
          SlowTypeTestStub_0x61d6e4() /* 0x61d6e4 */; // 0x445cb0
        }
      }
    }
  }
  LR = mem(x21, ((((mem((local_m8), (-1)) >> 12) & 0xfffff) + x17) << 3)); // 0x445ccc
  x0 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x445cbc
  x1 = local_m8; // 0x445cc0
  x17 = 35242; // 0x445cc4
  x2 = local_m8; // 0x445cb4
  callIndirect(LR); // 0x445cd0
  if (x0 & (1 << 4) != 0) {
  } else {
    w1 = mem((local_m10), 0xf); // 0x445ce0
    w4 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x445ce8
    x0 = local_m8; // 0x445cdc
    x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x445ce4
    x3 = local_m10; // 0x445cd8
    x4 = ((mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x445cec
    local_m18 = x4; // 0x445cf0
    x1 = mem((PP + 0x14000), 0x3c0) /* Function */; // 0x445cf8
    x2 = NULL; // 0x445cfc
    AllocationStub__Closure() /* 0x61ec54 */; // 0x445d00
    BARRIER = mem((PP + 0x12000), 0xe0) /* TypeArguments */; // 0x445d18
    x0 = local_m8; // 0x445d08
    x1 = x0; // 0x445d04
    x2 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x445d10
    // frame: x0, BARRIER, mem(SP, 8) // 0x445d1c
    local_0 = x1; // 0x445d20
    LR = mem(x21, ((x0 + x17) << 3)); // 0x445d34
    x0 = x2; // 0x445d24
    x17 = 34521; // 0x445d2c
    x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x445d28
    callIndirect(LR); // 0x445d38
    x1 = local_m18; // 0x445d3c
    x2 = x0; // 0x445d40
    GrowableList_addAll() /* 0x2ce4e8 */; // 0x445d44
  }
  w0 = mem((local_m10), 0x13); // 0x445d4c
  w2 = mem((local_m10), 0xf); // 0x445d54
  x0 = ((mem((local_m10), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x445d50
  x1 = local_m10; // 0x445d48
  x2 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x445d58
  x3 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2f); // 0x445d5c
  if (x3 & (1 << 0x3f) != 0) {
    x2 = NULL + 0x20; // 0x445d6c
  } else {
    x2 = NULL + 0x30; // 0x445d64
  }
  BARRIER = NULL + 0x20; // 0x445d70
  // frame: BARRIER, x0, mem(SP, 8) // 0x445d74
  local_0 = x2; // 0x445d78
  x2 = mem(x0, 0x1f); // 0x445d80
  x4 = mem(PP, 0x370) /* Obj!? */; // 0x445d7c
  callIndirect(x2); // 0x445d84
  w1 = mem((local_m10), 0xf); // 0x445d8c
  x0 = local_m10; // 0x445d88
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x445d90
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x445d94
  SP = FP; // 0x445d9c
  x0 = NULL; // 0x445d98
  // frame: FP, LR, mem(SP), 0x10 // 0x445da0
  return;
}

// GamePKBetParticipateRecordNotifier_anon_closure_2
// raw disassembly:
//  0x445db0: stp FP, LR, [SP, #-0x10]!
//  0x445db4: mov FP, SP
//  0x445db8: sub SP, SP, #8
//  0x445dbc: ldr BARRIER, [THR, #0x38]
//  0x445dc0: cmp SP, BARRIER
//  0x445dc4: b.ls #0x445e08
//  0x445dc8: ldr x0, [FP, #0x10]
//  0x445dcc: mov x2, NULL
//  0x445dd0: mov x1, NULL
//  0x445dd4: ldr x8, [PP, #0x3cd0]
//  0x445dd8: add x3, PP, #0x14, lsl #12
//  0x445ddc: ldr x3, [x3, #0x3c8]
//  0x445de0: bl #0x2b15f0
//  0x445de4: bl #0x44552c
//  0x445de8: mov x1, x0
//  0x445dec: ldr x2, [FP, #0x10]
//  0x445df0: stur x0, [FP, #-8]
//  0x445df4: bl #0x445098
//  0x445df8: ldur x0, [FP, #-8]
//  0x445dfc: mov SP, FP
//  0x445e00: ldp FP, LR, [SP], #0x10
//  0x445e04: ret 
//  0x445e08: bl #0x61fa28
//  0x445e0c: b #0x445dc8
//
dynamic GamePKBetParticipateRecordNotifier_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x445db0
  BARRIER = mem(THR, 0x38); // 0x445dbc
  // frame: FP = SP // 0x445db4
  // frame: SP = SP - 8 // 0x445db8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x445e08
  }
  x0 = local_10; // 0x445dc8
  x1 = NULL; // 0x445dd0
  x2 = NULL; // 0x445dcc
  x3 = mem((PP + 0x14000), 0x3c8) /* Obj!? */; // 0x445ddc
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x445dd4
  sub_0x2b15f0(); // 0x445de0
  AllocationStub_GamePkBetRecordListModel() /* 0x44552c */; // 0x445de4
  x1 = x0; // 0x445de8
  x2 = local_10; // 0x445dec
  local_m8 = x0; // 0x445df0
  GamePkBetRecordListModel_ctor_fromJson() /* 0x445098 */; // 0x445df4
  SP = FP; // 0x445dfc
  x0 = local_m8; // 0x445df8
  // frame: FP, LR, mem(SP), 0x10 // 0x445e00
  return;
}

// GamePKBetParticipateRecordNotifier_gainPKGameParticipateRank
// raw disassembly:
//  0x4da80c: stp FP, LR, [SP, #-0x10]!
//  0x4da810: mov FP, SP
//  0x4da814: sub SP, SP, #0x10
//  0x4da818: mov x0, x1
//  0x4da81c: stur x1, [FP, #-8]
//  0x4da820: stur x2, [FP, #-0x10]
//  0x4da824: ldr BARRIER, [THR, #0x38]
//  0x4da828: cmp SP, BARRIER
//  0x4da82c: b.ls #0x4da858
//  0x4da830: ldur w1, [x0, #0x2b]
//  0x4da834: add x1, x1, HEAP, lsl #32
//  0x4da838: bl #0x2b3608
//  0x4da83c: ldur x1, [FP, #-8]
//  0x4da840: ldur x2, [FP, #-0x10]
//  0x4da844: bl #0x445ab0
//  0x4da848: mov x0, NULL
//  0x4da84c: mov SP, FP
//  0x4da850: ldp FP, LR, [SP], #0x10
//  0x4da854: ret 
//  0x4da858: bl #0x61fa28
//  0x4da85c: b #0x4da830
//
dynamic GamePKBetParticipateRecordNotifier_gainPKGameParticipateRank() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4da80c
  // frame: FP = SP // 0x4da810
  // frame: SP = SP - 0x10 // 0x4da814
  x0 = x1; // 0x4da818
  local_m8 = x1; // 0x4da81c
  local_m10 = x2; // 0x4da820
  BARRIER = mem(THR, 0x38); // 0x4da824
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4da858
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4da834
  GrowableList_clear() /* 0x2b3608 */; // 0x4da838
  x1 = local_m8; // 0x4da83c
  x2 = local_m10; // 0x4da840
  GamePKBetParticipateRecordNotifier_requestGameParticipateRankList() /* 0x445ab0 */; // 0x4da844
  SP = FP; // 0x4da84c
  x0 = NULL; // 0x4da848
  // frame: FP, LR, mem(SP), 0x10 // 0x4da850
  return;
}
