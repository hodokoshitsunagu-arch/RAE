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

dynamic AllocationStub_GameFruitDialogListInfo, AllocationStub__Closure, BARRIER, FP;
dynamic GameFruitDialogListInfo_ctor_fromJson, GrowableList_addAll, GrowableList_clear;
dynamic GrowableList_factory_ctor, HEAP, LR, NULL, PP, SOApiService_getGameFruitDialogList, SP;
dynamic SafeChangeNotifier_safeNotify, SlowTypeTestStub_0x61d6e4;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, WriteBarrierStub_x1, local_0;
dynamic local_10, local_18, local_m10, local_m18, local_m20, local_m8, sub_0x2b15f0;
dynamic sub_0x61d99c, sub_0x61e890, sub_0x62aa34, w0, w1, w16, w17, w2, w22, w3, w4, x0, x1;
dynamic x16, x17, x2, x21, x3, x4, x5, x8, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$game$notifier$notifier_game_fruit_bet_record_dialog
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// GameFruitBetRecordNotifier_requestGameFruitDialogList
// raw disassembly:
//  0x435db4: stp FP, LR, [SP, #-0x10]!
//  0x435db8: mov FP, SP
//  0x435dbc: sub SP, SP, #0x20
//  0x435dc0: stur x1, [FP, #-8]
//  0x435dc4: stur x2, [FP, #-0x10]
//  0x435dc8: ldr BARRIER, [THR, #0x38]
//  0x435dcc: cmp SP, BARRIER
//  0x435dd0: b.ls #0x435e4c
//  0x435dd4: mov x1, #2
//  0x435dd8: bl #0x61e890
//  0x435ddc: mov x2, x0
//  0x435de0: ldur x0, [FP, #-8]
//  0x435de4: stur x2, [FP, #-0x18]
//  0x435de8: stur w0, [x2, #0xf]
//  0x435dec: ldur x1, [FP, #-0x10]
//  0x435df0: stur w1, [x2, #0x13]
//  0x435df4: mov x1, x0
//  0x435df8: bl #0x3ac980
//  0x435dfc: ldur x0, [FP, #-8]
//  0x435e00: ldur x3, [x0, #0x2f]
//  0x435e04: ldur x2, [FP, #-0x18]
//  0x435e08: stur x3, [FP, #-0x20]
//  0x435e0c: add x1, PP, #0x15, lsl #12
//  0x435e10: ldr x1, [x1, #0x3d8]
//  0x435e14: bl #0x61ec54
//  0x435e18: ldur x2, [FP, #-0x18]
//  0x435e1c: add x1, PP, #0x15, lsl #12
//  0x435e20: ldr x1, [x1, #0x3e0]
//  0x435e24: stur x0, [FP, #-8]
//  0x435e28: bl #0x61ec54
//  0x435e2c: ldur x1, [FP, #-0x20]
//  0x435e30: ldur x2, [FP, #-8]
//  0x435e34: mov x3, x0
//  0x435e38: bl #0x435e54
//  0x435e3c: mov x0, NULL
//  0x435e40: mov SP, FP
//  0x435e44: ldp FP, LR, [SP], #0x10
//  0x435e48: ret 
//  0x435e4c: bl #0x61fa28
//  0x435e50: b #0x435dd4
//
dynamic GameFruitBetRecordNotifier_requestGameFruitDialogList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x435db4
  // frame: FP = SP // 0x435db8
  // frame: SP = SP - 0x20 // 0x435dbc
  local_m8 = x1; // 0x435dc0
  local_m10 = x2; // 0x435dc4
  BARRIER = mem(THR, 0x38); // 0x435dc8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x435e4c
  }
  x1 = 2; // 0x435dd4
  sub_0x61e890(); // 0x435dd8
  x0 = local_m8; // 0x435de0
  x2 = x0; // 0x435ddc
  local_m18 = x2; // 0x435de4
  memSet(x2, 0xf, w0); // 0x435de8
  x1 = local_m10; // 0x435dec
  memSet(x2, 0x13, w1); // 0x435df0
  x1 = x0; // 0x435df4
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x435df8
  x0 = local_m8; // 0x435dfc
  x2 = local_m18; // 0x435e04
  x3 = mem((local_m8), 0x2f); // 0x435e00
  local_m20 = x3; // 0x435e08
  x1 = mem((PP + 0x15000), 0x3d8) /* Function */; // 0x435e10
  AllocationStub__Closure() /* 0x61ec54 */; // 0x435e14
  x1 = mem((PP + 0x15000), 0x3e0) /* Function */; // 0x435e20
  x2 = local_m18; // 0x435e18
  local_m8 = x0; // 0x435e24
  AllocationStub__Closure() /* 0x61ec54 */; // 0x435e28
  x1 = local_m20; // 0x435e2c
  x2 = local_m8; // 0x435e30
  x3 = x0; // 0x435e34
  SOApiService_getGameFruitDialogList() /* 0x435e54 */; // 0x435e38
  SP = FP; // 0x435e40
  x0 = NULL; // 0x435e3c
  // frame: FP, LR, mem(SP), 0x10 // 0x435e44
  return;
}

// GameFruitBetRecordNotifier_anon_closure
// raw disassembly:
//  0x435f58: stp FP, LR, [SP, #-0x10]!
//  0x435f5c: mov FP, SP
//  0x435f60: sub SP, SP, #0x30
//  0x435f64: ldr x0, [FP, #0x18]
//  0x435f68: ldur w3, [x0, #0x17]
//  0x435f6c: add x3, x3, HEAP, lsl #32
//  0x435f70: stur x3, [FP, #-0x10]
//  0x435f74: ldr BARRIER, [THR, #0x38]
//  0x435f78: cmp SP, BARRIER
//  0x435f7c: b.ls #0x4361ac
//  0x435f80: ldur w4, [x3, #0xf]
//  0x435f84: add x4, x4, HEAP, lsl #32
//  0x435f88: ldr x5, [FP, #0x10]
//  0x435f8c: stur x4, [FP, #-8]
//  0x435f90: ldur x0, [x5, #-1]
//  0x435f94: ubfx x0, x0, #0xc, #0x14
//  0x435f98: mov x1, x5
//  0x435f9c: add x2, PP, #0xf, lsl #12
//  0x435fa0: ldr x2, [x2, #0x368]
//  0x435fa4: sub LR, x0, #1, lsl #12
//  0x435fa8: ldr LR, [x21, LR, lsl #3]
//  0x435fac: blr LR
//  0x435fb0: cmp w0, w22
//  0x435fb4: b.ne #0x435fc0
//  0x435fb8: orr x5, xzr, #0xfffffffffffffffe
//  0x435fbc: b #0x435fc4
//  0x435fc0: mov x5, x0
//  0x435fc4: ldr x4, [FP, #0x10]
//  0x435fc8: ldur x3, [FP, #-8]
//  0x435fcc: mov x0, x5
//  0x435fd0: stur x5, [FP, #-0x18]
//  0x435fd4: mov x2, NULL
//  0x435fd8: mov x1, NULL
//  0x435fdc: tbz w0, #0, #0x436004
//  0x435fe0: ldur x4, [x0, #-1]
//  0x435fe4: ubfx x4, x4, #0xc, #0x14
//  0x435fe8: sub x4, x4, #0x3c
//  0x435fec: cmp x4, #1
//  0x435ff0: b.ls #0x436004
//  0x435ff4: ldr x8, [PP, #0x1170]
//  0x435ff8: add x3, PP, #0x15, lsl #12
//  0x435ffc: ldr x3, [x3, #0x3e8]
//  0x436000: bl #0x62aa34
//  0x436004: ldur x0, [FP, #-0x18]
//  0x436008: sbfx x1, x0, #1, #0x1f
//  0x43600c: tbz w0, #0, #0x436014
//  0x436010: ldur x1, [x0, #7]
//  0x436014: ldur x0, [FP, #-8]
//  0x436018: stur x1, [x0, #0x2f]
//  0x43601c: ldr x1, [FP, #0x10]
//  0x436020: ldur x0, [x1, #-1]
//  0x436024: ubfx x0, x0, #0xc, #0x14
//  0x436028: add x2, PP, #0xf, lsl #12
//  0x43602c: ldr x2, [x2, #0x380]
//  0x436030: sub LR, x0, #1, lsl #12
//  0x436034: ldr LR, [x21, LR, lsl #3]
//  0x436038: blr LR
//  0x43603c: cmp w0, w22
//  0x436040: b.ne #0x436058
//  0x436044: mov x1, NULL
//  0x436048: mov x2, #0
//  0x43604c: bl #0x277268
//  0x436050: mov x3, x0
//  0x436054: b #0x43605c
//  0x436058: mov x3, x0
//  0x43605c: mov x0, x3
//  0x436060: stur x3, [FP, #-8]
//  0x436064: mov x2, NULL
//  0x436068: mov x1, NULL
//  0x43606c: mov x4, #0x3c
//  0x436070: tbz w0, #0, #0x43607c
//  0x436074: ldur x4, [x0, #-1]
//  0x436078: ubfx x4, x4, #0xc, #0x14
//  0x43607c: sub x4, x4, #0x5a
//  0x436080: cmp x4, #2
//  0x436084: b.ls #0x4360b8
//  0x436088: sub x4, x4, #0x16
//  0x43608c: cmp x4, #0x37
//  0x436090: b.ls #0x4360b8
//  0x436094: cmp x4, #0xebc
//  0x436098: b.eq #0x4360b8
//  0x43609c: sub x4, x4, #0xedd
//  0x4360a0: cmp x4, #4
//  0x4360a4: b.ls #0x4360b8
//  0x4360a8: ldr x8, [PP, #0x3b80]
//  0x4360ac: add x3, PP, #0x15, lsl #12
//  0x4360b0: ldr x3, [x3, #0x3f8]
//  0x4360b4: bl #0x61d6e4
//  0x4360b8: ldur x2, [FP, #-8]
//  0x4360bc: ldur x0, [x2, #-1]
//  0x4360c0: ubfx x0, x0, #0xc, #0x14
//  0x4360c4: mov x1, x2
//  0x4360c8: mov x17, #0x89aa
//  0x4360cc: add LR, x0, x17
//  0x4360d0: ldr LR, [x21, LR, lsl #3]
//  0x4360d4: blr LR
//  0x4360d8: tbnz w0, #4, #0x43614c
//  0x4360dc: ldur x3, [FP, #-0x10]
//  0x4360e0: ldur x0, [FP, #-8]
//  0x4360e4: ldur w1, [x3, #0xf]
//  0x4360e8: add x1, x1, HEAP, lsl #32
//  0x4360ec: ldur w4, [x1, #0x2b]
//  0x4360f0: add x4, x4, HEAP, lsl #32
//  0x4360f4: stur x4, [FP, #-0x18]
//  0x4360f8: add x1, PP, #0x15, lsl #12
//  0x4360fc: ldr x1, [x1, #0x408]
//  0x436100: mov x2, NULL
//  0x436104: bl #0x61ec54
//  0x436108: mov x1, x0
//  0x43610c: ldur x0, [FP, #-8]
//  0x436110: ldur x2, [x0, #-1]
//  0x436114: ubfx x2, x2, #0xc, #0x14
//  0x436118: add BARRIER, PP, #0x12, lsl #12
//  0x43611c: ldr BARRIER, [BARRIER, #0x590]
//  0x436120: stp x0, BARRIER, [SP, #8]
//  0x436124: str x1, [SP]
//  0x436128: mov x0, x2
//  0x43612c: ldr x4, [PP, #0x58]
//  0x436130: mov x17, #0x86d9
//  0x436134: add LR, x0, x17
//  0x436138: ldr LR, [x21, LR, lsl #3]
//  0x43613c: blr LR
//  0x436140: ldur x1, [FP, #-0x18]
//  0x436144: mov x2, x0
//  0x436148: bl #0x2ce4e8
//  0x43614c: ldur x1, [FP, #-0x10]
//  0x436150: ldur w0, [x1, #0x13]
//  0x436154: add x0, x0, HEAP, lsl #32
//  0x436158: ldur w2, [x1, #0xf]
//  0x43615c: add x2, x2, HEAP, lsl #32
//  0x436160: ldur x3, [x2, #0x2f]
//  0x436164: tbnz x3, #0x3f, #0x436170
//  0x436168: add x2, NULL, #0x30
//  0x43616c: b #0x436174
//  0x436170: add x2, NULL, #0x20
//  0x436174: add BARRIER, NULL, #0x20
//  0x436178: stp BARRIER, x0, [SP, #8]
//  0x43617c: str x2, [SP]
//  0x436180: ldr x4, [PP, #0x370]
//  0x436184: ldur x2, [x0, #0x1f]
//  0x436188: blr x2
//  0x43618c: ldur x0, [FP, #-0x10]
//  0x436190: ldur w1, [x0, #0xf]
//  0x436194: add x1, x1, HEAP, lsl #32
//  0x436198: bl #0x3ac980
//  0x43619c: mov x0, NULL
//  0x4361a0: mov SP, FP
//  0x4361a4: ldp FP, LR, [SP], #0x10
//  0x4361a8: ret 
//  0x4361ac: bl #0x61fa28
//  0x4361b0: b #0x435f80
//
dynamic GameFruitBetRecordNotifier_anon_closure() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x435f58
  // frame: FP = SP // 0x435f5c
  // frame: SP = SP - 0x30 // 0x435f60
  w3 = mem((local_18), 0x17); // 0x435f68
  x0 = local_18; // 0x435f64
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x435f6c
  local_m10 = x3; // 0x435f70
  BARRIER = mem(THR, 0x38); // 0x435f74
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4361ac
  }
  x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x435f84
  x5 = local_10; // 0x435f88
  local_m8 = x4; // 0x435f8c
  LR = mem(x21, ((((mem(x5, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x435fa8
  x0 = ((mem(x5, -1)) >> 12) & 0xfffff; // 0x435f94
  x1 = x5; // 0x435f98
  x2 = "cursor" /* pp+0xf368 */; // 0x435fa0
  callIndirect(LR); // 0x435fac
  if (w0 != w22) {
    x5 = x0; // 0x435fc0
  } else {
    x5 = xzr | 0xfffffffffffffffe; // 0x435fb8
  }
  x0 = x5; // 0x435fcc
  x3 = local_m8; // 0x435fc8
  x4 = local_10; // 0x435fc4
  local_m18 = x5; // 0x435fd0
  x1 = NULL; // 0x435fd8
  x2 = NULL; // 0x435fd4
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x435fe8
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x15000), 0x3e8) /* Obj!? */; // 0x435ffc
      x8 = mem(PP, 0x1170) /* Type */; // 0x435ff4
      sub_0x62aa34(); // 0x436000
    }
  }
  x0 = local_m18; // 0x436004
  x1 = ((local_m18) >> 1) & 0x7fffffff; // 0x436008
  if (x0 & (1 << 0) == 0) {
  } else {
    x1 = mem(x0, 7); // 0x436010
  }
  x0 = local_m8; // 0x436014
  memSet(x0, 0x2f, x1); // 0x436018
  LR = mem(x21, ((((mem((local_10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x436034
  x0 = ((mem((local_10), -1)) >> 12) & 0xfffff; // 0x436024
  x1 = local_10; // 0x43601c
  x2 = "list" /* pp+0xf380 */; // 0x43602c
  callIndirect(LR); // 0x436038
  if (w0 != w22) {
    x3 = x0; // 0x436058
  } else {
    x1 = NULL; // 0x436044
    x2 = 0; // 0x436048
    GrowableList_factory_ctor() /* 0x277268 */; // 0x43604c
    x3 = x0; // 0x436050
  }
  x0 = x3; // 0x43605c
  local_m8 = x3; // 0x436060
  x1 = NULL; // 0x436068
  x2 = NULL; // 0x436064
  x4 = 60; // 0x43606c
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x436078
  }
  x4 = x4 - 0x5a; // 0x43607c
  if (x4 <= 2) {
  } else {
    x4 = x4 - 0x16; // 0x436088
    if (x4 <= 0x37) {
    } else {
      if (x4 == 0xebc) {
      } else {
        x4 = x4 - 0xedd; // 0x43609c
        if (x4 <= 4) {
        } else {
          x3 = mem((PP + 0x15000), 0x3f8) /* Obj!? */; // 0x4360b0
          x8 = mem(PP, 0x3b80) /* Type */; // 0x4360a8
          SlowTypeTestStub_0x61d6e4() /* 0x61d6e4 */; // 0x4360b4
        }
      }
    }
  }
  LR = mem(x21, ((((mem((local_m8), (-1)) >> 12) & 0xfffff) + x17) << 3)); // 0x4360d0
  x0 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x4360c0
  x1 = local_m8; // 0x4360c4
  x17 = 35242; // 0x4360c8
  x2 = local_m8; // 0x4360b8
  callIndirect(LR); // 0x4360d4
  if (x0 & (1 << 4) != 0) {
  } else {
    w1 = mem((local_m10), 0xf); // 0x4360e4
    w4 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x4360ec
    x0 = local_m8; // 0x4360e0
    x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4360e8
    x3 = local_m10; // 0x4360dc
    x4 = ((mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x4360f0
    local_m18 = x4; // 0x4360f4
    x1 = mem((PP + 0x15000), 0x408) /* Function */; // 0x4360fc
    x2 = NULL; // 0x436100
    AllocationStub__Closure() /* 0x61ec54 */; // 0x436104
    BARRIER = mem((PP + 0x12000), 0x590) /* TypeArguments */; // 0x43611c
    x0 = local_m8; // 0x43610c
    x1 = x0; // 0x436108
    x2 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x436114
    // frame: x0, BARRIER, mem(SP, 8) // 0x436120
    local_0 = x1; // 0x436124
    LR = mem(x21, ((x0 + x17) << 3)); // 0x436138
    x0 = x2; // 0x436128
    x17 = 34521; // 0x436130
    x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x43612c
    callIndirect(LR); // 0x43613c
    x1 = local_m18; // 0x436140
    x2 = x0; // 0x436144
    GrowableList_addAll() /* 0x2ce4e8 */; // 0x436148
  }
  w0 = mem((local_m10), 0x13); // 0x436150
  w2 = mem((local_m10), 0xf); // 0x436158
  x0 = ((mem((local_m10), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x436154
  x1 = local_m10; // 0x43614c
  x2 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x43615c
  x3 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2f); // 0x436160
  if (x3 & (1 << 0x3f) != 0) {
    x2 = NULL + 0x20; // 0x436170
  } else {
    x2 = NULL + 0x30; // 0x436168
  }
  BARRIER = NULL + 0x20; // 0x436174
  // frame: BARRIER, x0, mem(SP, 8) // 0x436178
  local_0 = x2; // 0x43617c
  x2 = mem(x0, 0x1f); // 0x436184
  x4 = mem(PP, 0x370) /* Obj!? */; // 0x436180
  callIndirect(x2); // 0x436188
  w1 = mem((local_m10), 0xf); // 0x436190
  x0 = local_m10; // 0x43618c
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x436194
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x436198
  SP = FP; // 0x4361a0
  x0 = NULL; // 0x43619c
  // frame: FP, LR, mem(SP), 0x10 // 0x4361a4
  return;
}

// GameFruitBetRecordNotifier_anon_closure_2
// raw disassembly:
//  0x4361b4: stp FP, LR, [SP, #-0x10]!
//  0x4361b8: mov FP, SP
//  0x4361bc: sub SP, SP, #8
//  0x4361c0: ldr BARRIER, [THR, #0x38]
//  0x4361c4: cmp SP, BARRIER
//  0x4361c8: b.ls #0x43620c
//  0x4361cc: ldr x0, [FP, #0x10]
//  0x4361d0: mov x2, NULL
//  0x4361d4: mov x1, NULL
//  0x4361d8: ldr x8, [PP, #0x3cd0]
//  0x4361dc: add x3, PP, #0x15, lsl #12
//  0x4361e0: ldr x3, [x3, #0x410]
//  0x4361e4: bl #0x2b15f0
//  0x4361e8: bl #0x436500
//  0x4361ec: mov x1, x0
//  0x4361f0: ldr x2, [FP, #0x10]
//  0x4361f4: stur x0, [FP, #-8]
//  0x4361f8: bl #0x436214
//  0x4361fc: ldur x0, [FP, #-8]
//  0x436200: mov SP, FP
//  0x436204: ldp FP, LR, [SP], #0x10
//  0x436208: ret 
//  0x43620c: bl #0x61fa28
//  0x436210: b #0x4361cc
//
dynamic GameFruitBetRecordNotifier_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4361b4
  BARRIER = mem(THR, 0x38); // 0x4361c0
  // frame: FP = SP // 0x4361b8
  // frame: SP = SP - 8 // 0x4361bc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x43620c
  }
  x0 = local_10; // 0x4361cc
  x1 = NULL; // 0x4361d4
  x2 = NULL; // 0x4361d0
  x3 = mem((PP + 0x15000), 0x410) /* Obj!? */; // 0x4361e0
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x4361d8
  sub_0x2b15f0(); // 0x4361e4
  AllocationStub_GameFruitDialogListInfo() /* 0x436500 */; // 0x4361e8
  x1 = x0; // 0x4361ec
  x2 = local_10; // 0x4361f0
  local_m8 = x0; // 0x4361f4
  GameFruitDialogListInfo_ctor_fromJson() /* 0x436214 */; // 0x4361f8
  SP = FP; // 0x436200
  x0 = local_m8; // 0x4361fc
  // frame: FP, LR, mem(SP), 0x10 // 0x436204
  return;
}

// GameFruitBetRecordNotifier_ctor
// raw disassembly:
//  0x4c39bc: stp FP, LR, [SP, #-0x10]!
//  0x4c39c0: mov FP, SP
//  0x4c39c4: sub SP, SP, #8
//  0x4c39c8: mov x0, x1
//  0x4c39cc: stur x1, [FP, #-8]
//  0x4c39d0: ldr BARRIER, [THR, #0x38]
//  0x4c39d4: cmp SP, BARRIER
//  0x4c39d8: b.ls #0x4c3a70
//  0x4c39dc: add x1, PP, #0x12, lsl #12
//  0x4c39e0: ldr x1, [x1, #0x590]
//  0x4c39e4: mov x2, #0
//  0x4c39e8: bl #0x277268
//  0x4c39ec: ldur x1, [FP, #-8]
//  0x4c39f0: stur w0, [x1, #0x2b]
//  0x4c39f4: ldurb w16, [x1, #-1]
//  0x4c39f8: ldurb w17, [x0, #-1]
//  0x4c39fc: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3a00: tst BARRIER, HEAP, lsr #32
//  0x4c3a04: b.eq #0x4c3a0c
//  0x4c3a08: bl #0x61e04c
//  0x4c3a0c: mov x0, #-1
//  0x4c3a10: stur x0, [x1, #0x2f]
//  0x4c3a14: stur x0, [x1, #0x23]
//  0x4c3a18: stur xzr, [x1, #7]
//  0x4c3a1c: stur xzr, [x1, #0x13]
//  0x4c3a20: stur xzr, [x1, #0x1b]
//  0x4c3a24: ldr x0, [THR, #0x68]
//  0x4c3a28: ldr x0, [x0, #0xb90]
//  0x4c3a2c: ldr BARRIER, [PP, #0x40]
//  0x4c3a30: cmp w0, w16
//  0x4c3a34: b.ne #0x4c3a40
//  0x4c3a38: ldr x2, [PP, #0x3608]
//  0x4c3a3c: bl #0x61d99c
//  0x4c3a40: ldur x1, [FP, #-8]
//  0x4c3a44: stur w0, [x1, #0xf]
//  0x4c3a48: ldurb w16, [x1, #-1]
//  0x4c3a4c: ldurb w17, [x0, #-1]
//  0x4c3a50: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3a54: tst BARRIER, HEAP, lsr #32
//  0x4c3a58: b.eq #0x4c3a60
//  0x4c3a5c: bl #0x61e04c
//  0x4c3a60: mov x0, NULL
//  0x4c3a64: mov SP, FP
//  0x4c3a68: ldp FP, LR, [SP], #0x10
//  0x4c3a6c: ret 
//  0x4c3a70: bl #0x61fa28
//  0x4c3a74: b #0x4c39dc
//
dynamic GameFruitBetRecordNotifier_ctor() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c39bc
  // frame: FP = SP // 0x4c39c0
  // frame: SP = SP - 8 // 0x4c39c4
  x0 = x1; // 0x4c39c8
  local_m8 = x1; // 0x4c39cc
  BARRIER = mem(THR, 0x38); // 0x4c39d0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c3a70
  }
  x1 = mem((PP + 0x12000), 0x590) /* TypeArguments */; // 0x4c39e0
  x2 = 0; // 0x4c39e4
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c39e8
  x1 = local_m8; // 0x4c39ec
  memSet(x1, 0x2b, w0); // 0x4c39f0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c39fc
  w16 = mem(x1, -1); // 0x4c39f4
  w17 = mem(x0, -1); // 0x4c39f8
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c39f4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c39f8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c3a08
  }
  x0 = -1; // 0x4c3a0c
  memSet(x1, 0x2f, x0); // 0x4c3a10
  memSet(x1, 0x23, x0); // 0x4c3a14
  memSet(x1, 7, xzr); // 0x4c3a18
  memSet(x1, 0x13, xzr); // 0x4c3a1c
  memSet(x1, 0x1b, xzr); // 0x4c3a20
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4c3a2c
  x0 = mem((mem(THR, 0x68)), 0xb90); // 0x4c3a28
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3608) /* Field */; // 0x4c3a38
    sub_0x61d99c(); // 0x4c3a3c
  }
  x1 = local_m8; // 0x4c3a40
  memSet(x1, 0xf, w0); // 0x4c3a44
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3a50
  w16 = mem(x1, -1); // 0x4c3a48
  w17 = mem(x0, -1); // 0x4c3a4c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c3a48
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3a4c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c3a5c
  }
  SP = FP; // 0x4c3a64
  x0 = NULL; // 0x4c3a60
  // frame: FP, LR, mem(SP), 0x10 // 0x4c3a68
  return;
}

// GameFruitBetRecordNotifier_gainGameFruitDialog
// raw disassembly:
//  0x4d8dec: stp FP, LR, [SP, #-0x10]!
//  0x4d8df0: mov FP, SP
//  0x4d8df4: sub SP, SP, #0x10
//  0x4d8df8: mov x0, x1
//  0x4d8dfc: stur x1, [FP, #-8]
//  0x4d8e00: stur x2, [FP, #-0x10]
//  0x4d8e04: ldr BARRIER, [THR, #0x38]
//  0x4d8e08: cmp SP, BARRIER
//  0x4d8e0c: b.ls #0x4d8e38
//  0x4d8e10: ldur w1, [x0, #0x2b]
//  0x4d8e14: add x1, x1, HEAP, lsl #32
//  0x4d8e18: bl #0x2b3608
//  0x4d8e1c: ldur x1, [FP, #-8]
//  0x4d8e20: ldur x2, [FP, #-0x10]
//  0x4d8e24: bl #0x435db4
//  0x4d8e28: mov x0, NULL
//  0x4d8e2c: mov SP, FP
//  0x4d8e30: ldp FP, LR, [SP], #0x10
//  0x4d8e34: ret 
//  0x4d8e38: bl #0x61fa28
//  0x4d8e3c: b #0x4d8e10
//
dynamic GameFruitBetRecordNotifier_gainGameFruitDialog() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d8dec
  // frame: FP = SP // 0x4d8df0
  // frame: SP = SP - 0x10 // 0x4d8df4
  x0 = x1; // 0x4d8df8
  local_m8 = x1; // 0x4d8dfc
  local_m10 = x2; // 0x4d8e00
  BARRIER = mem(THR, 0x38); // 0x4d8e04
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d8e38
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d8e14
  GrowableList_clear() /* 0x2b3608 */; // 0x4d8e18
  x1 = local_m8; // 0x4d8e1c
  x2 = local_m10; // 0x4d8e20
  GameFruitBetRecordNotifier_requestGameFruitDialogList() /* 0x435db4 */; // 0x4d8e24
  SP = FP; // 0x4d8e2c
  x0 = NULL; // 0x4d8e28
  // frame: FP, LR, mem(SP), 0x10 // 0x4d8e30
  return;
}
