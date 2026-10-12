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

dynamic AllocationStub_BetCoinInfo, AllocationStub_BetItemInfo, AllocationStub_DateTime;
dynamic AllocationStub_GameFruitWinerListInfo, AllocationStub_GameFruitWinnerBetResultInfo;
dynamic AllocationStub__Closure, BARRIER, DateTime_ctor_withValue, DateTime_toLocal;
dynamic DateTime_toString, DateTime_validateMilliseconds, FP, GrowableList_factory_ctor, HEAP;
dynamic LR, Map_factory_ctor_fromLiteral, NULL, PP;
dynamic RangeErrorSharedWithoutFpuRegsStub_0x61fe70, SP;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolate;
dynamic StringBase_substring, THR, WriteBarrierStub_x1, WriteBarrierStub_x3;
dynamic WriteBarrierStub_x4, local_0, local_10, local_m10, local_m18, local_m20, local_m8;
dynamic sub_0x278d08, sub_0x285664, sub_0x2b15f0, sub_0x61f920, sub_0x62a0c0, sub_0x62a9f8;
dynamic sub_0x62aa34, w0, w1, w16, w17, w2, w22, x0, x1, x16, x17, x2, x21, x3, x4, x5, x8;
dynamic xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$model$game_fruit_model
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// GameFruitDialogListInfo_ctor_fromJson
// raw disassembly:
//  0x436214: stp FP, LR, [SP, #-0x10]!
//  0x436218: mov FP, SP
//  0x43621c: sub SP, SP, #0x28
//  0x436220: mov x4, x1
//  0x436224: mov x3, x2
//  0x436228: stur x1, [FP, #-8]
//  0x43622c: stur x2, [FP, #-0x10]
//  0x436230: ldr BARRIER, [THR, #0x38]
//  0x436234: cmp SP, BARRIER
//  0x436238: b.ls #0x4364d8
//  0x43623c: ldur x0, [x3, #-1]
//  0x436240: ubfx x0, x0, #0xc, #0x14
//  0x436244: mov x1, x3
//  0x436248: add x2, PP, #0xb, lsl #12
//  0x43624c: ldr x2, [x2, #0x990]
//  0x436250: sub LR, x0, #1, lsl #12
//  0x436254: ldr LR, [x21, LR, lsl #3]
//  0x436258: blr LR
//  0x43625c: cmp w0, w22
//  0x436260: b.ne #0x43626c
//  0x436264: mov x0, NULL
//  0x436268: b #0x436298
//  0x43626c: mov x1, #0x3c
//  0x436270: tbz w0, #0, #0x43627c
//  0x436274: ldur x1, [x0, #-1]
//  0x436278: ubfx x1, x1, #0xc, #0x14
//  0x43627c: str x0, [SP]
//  0x436280: mov x0, x1
//  0x436284: ldr x4, [PP, #0x3a8]
//  0x436288: mov x17, #0x3e07
//  0x43628c: add LR, x0, x17
//  0x436290: ldr LR, [x21, LR, lsl #3]
//  0x436294: blr LR
//  0x436298: cmp w0, w22
//  0x43629c: b.ne #0x4362a4
//  0x4362a0: ldr x0, [PP, #0x148]
//  0x4362a4: ldur x4, [FP, #-8]
//  0x4362a8: ldur x3, [FP, #-0x10]
//  0x4362ac: stur w0, [x4, #7]
//  0x4362b0: ldurb w16, [x4, #-1]
//  0x4362b4: ldurb w17, [x0, #-1]
//  0x4362b8: and BARRIER, x17, BARRIER, lsr #2
//  0x4362bc: tst BARRIER, HEAP, lsr #32
//  0x4362c0: b.eq #0x4362c8
//  0x4362c4: bl #0x61e0ac
//  0x4362c8: ldur x0, [x3, #-1]
//  0x4362cc: ubfx x0, x0, #0xc, #0x14
//  0x4362d0: mov x1, x3
//  0x4362d4: add x2, PP, #0x11, lsl #12
//  0x4362d8: ldr x2, [x2, #0x9c0]
//  0x4362dc: sub LR, x0, #1, lsl #12
//  0x4362e0: ldr LR, [x21, LR, lsl #3]
//  0x4362e4: blr LR
//  0x4362e8: cmp w0, w22
//  0x4362ec: b.ne #0x4362f8
//  0x4362f0: mov x0, NULL
//  0x4362f4: b #0x436324
//  0x4362f8: mov x1, #0x3c
//  0x4362fc: tbz w0, #0, #0x436308
//  0x436300: ldur x1, [x0, #-1]
//  0x436304: ubfx x1, x1, #0xc, #0x14
//  0x436308: str x0, [SP]
//  0x43630c: mov x0, x1
//  0x436310: ldr x4, [PP, #0x3a8]
//  0x436314: mov x17, #0x3e07
//  0x436318: add LR, x0, x17
//  0x43631c: ldr LR, [x21, LR, lsl #3]
//  0x436320: blr LR
//  0x436324: cmp w0, w22
//  0x436328: b.ne #0x436330
//  0x43632c: ldr x0, [PP, #0x148]
//  0x436330: ldur x4, [FP, #-8]
//  0x436334: ldur x3, [FP, #-0x10]
//  0x436338: stur w0, [x4, #0xb]
//  0x43633c: ldurb w16, [x4, #-1]
//  0x436340: ldurb w17, [x0, #-1]
//  0x436344: and BARRIER, x17, BARRIER, lsr #2
//  0x436348: tst BARRIER, HEAP, lsr #32
//  0x43634c: b.eq #0x436354
//  0x436350: bl #0x61e0ac
//  0x436354: ldur x0, [x3, #-1]
//  0x436358: ubfx x0, x0, #0xc, #0x14
//  0x43635c: mov x1, x3
//  0x436360: add x2, PP, #0xf, lsl #12
//  0x436364: ldr x2, [x2, #0xa68]
//  0x436368: sub LR, x0, #1, lsl #12
//  0x43636c: ldr LR, [x21, LR, lsl #3]
//  0x436370: blr LR
//  0x436374: cmp w0, w22
//  0x436378: b.ne #0x436384
//  0x43637c: ldr x5, [PP, #0x148]
//  0x436380: b #0x436388
//  0x436384: mov x5, x0
//  0x436388: ldur x4, [FP, #-8]
//  0x43638c: ldur x3, [FP, #-0x10]
//  0x436390: mov x0, x5
//  0x436394: stur x5, [FP, #-0x18]
//  0x436398: mov x2, NULL
//  0x43639c: mov x1, NULL
//  0x4363a0: mov x4, #0x3c
//  0x4363a4: tbz w0, #0, #0x4363b0
//  0x4363a8: ldur x4, [x0, #-1]
//  0x4363ac: ubfx x4, x4, #0xc, #0x14
//  0x4363b0: sub x4, x4, #0x5e
//  0x4363b4: cmp x4, #1
//  0x4363b8: b.ls #0x4363cc
//  0x4363bc: ldr x8, [PP, #0xae0]
//  0x4363c0: add x3, PP, #0x15, lsl #12
//  0x4363c4: ldr x3, [x3, #0x420]
//  0x4363c8: bl #0x278d08
//  0x4363cc: ldur x0, [FP, #-0x18]
//  0x4363d0: ldur x3, [FP, #-8]
//  0x4363d4: stur w0, [x3, #0x13]
//  0x4363d8: ldurb w16, [x3, #-1]
//  0x4363dc: ldurb w17, [x0, #-1]
//  0x4363e0: and BARRIER, x17, BARRIER, lsr #2
//  0x4363e4: tst BARRIER, HEAP, lsr #32
//  0x4363e8: b.eq #0x4363f0
//  0x4363ec: bl #0x61e08c
//  0x4363f0: ldur x1, [FP, #-0x10]
//  0x4363f4: ldur x0, [x1, #-1]
//  0x4363f8: ubfx x0, x0, #0xc, #0x14
//  0x4363fc: add x2, PP, #0x11, lsl #12
//  0x436400: ldr x2, [x2, #0x4b8]
//  0x436404: sub LR, x0, #1, lsl #12
//  0x436408: ldr LR, [x21, LR, lsl #3]
//  0x43640c: blr LR
//  0x436410: mov x3, x0
//  0x436414: mov x2, NULL
//  0x436418: mov x1, NULL
//  0x43641c: stur x3, [FP, #-0x10]
//  0x436420: tbz w0, #0, #0x436448
//  0x436424: ldur x4, [x0, #-1]
//  0x436428: ubfx x4, x4, #0xc, #0x14
//  0x43642c: sub x4, x4, #0x3c
//  0x436430: cmp x4, #1
//  0x436434: b.ls #0x436448
//  0x436438: ldr x8, [PP, #0x1170]
//  0x43643c: add x3, PP, #0x15, lsl #12
//  0x436440: ldr x3, [x3, #0x430]
//  0x436444: bl #0x62aa34
//  0x436448: ldur x0, [FP, #-0x10]
//  0x43644c: sbfx x1, x0, #1, #0x1f
//  0x436450: tbz w0, #0, #0x436458
//  0x436454: ldur x1, [x0, #7]
//  0x436458: bl #0x3adab8
//  0x43645c: mov BARRIER, #0x3e8
//  0x436460: mul x2, x0, BARRIER
//  0x436464: stur x2, [FP, #-0x20]
//  0x436468: bl #0x3adaac
//  0x43646c: mov x1, x0
//  0x436470: ldur x2, [FP, #-0x20]
//  0x436474: add x3, NULL, #0x30
//  0x436478: stur x0, [FP, #-0x10]
//  0x43647c: bl #0x3acfd0
//  0x436480: ldur x1, [FP, #-0x10]
//  0x436484: bl #0x3acf4c
//  0x436488: str x0, [SP]
//  0x43648c: bl #0x48f214
//  0x436490: mov BARRIER, #0x20
//  0x436494: str BARRIER, [SP]
//  0x436498: mov x1, x0
//  0x43649c: mov x2, #0xa
//  0x4364a0: ldr x4, [PP, #0x280]
//  0x4364a4: bl #0x281608
//  0x4364a8: ldur x1, [FP, #-8]
//  0x4364ac: stur w0, [x1, #0xf]
//  0x4364b0: ldurb w16, [x1, #-1]
//  0x4364b4: ldurb w17, [x0, #-1]
//  0x4364b8: and BARRIER, x17, BARRIER, lsr #2
//  0x4364bc: tst BARRIER, HEAP, lsr #32
//  0x4364c0: b.eq #0x4364c8
//  0x4364c4: bl #0x61e04c
//  0x4364c8: mov x0, NULL
//  0x4364cc: mov SP, FP
//  0x4364d0: ldp FP, LR, [SP], #0x10
//  0x4364d4: ret 
//  0x4364d8: bl #0x61fa28
//  0x4364dc: b #0x43623c
//
dynamic GameFruitDialogListInfo_ctor_fromJson() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x436214
  // frame: FP = SP // 0x436218
  // frame: SP = SP - 0x28 // 0x43621c
  x3 = x2; // 0x436224
  x4 = x1; // 0x436220
  local_m8 = x1; // 0x436228
  local_m10 = x2; // 0x43622c
  BARRIER = mem(THR, 0x38); // 0x436230
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4364d8
  }
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x436254
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x436240
  x1 = x3; // 0x436244
  x2 = "coin" /* pp+0xb990 */; // 0x43624c
  callIndirect(LR); // 0x436258
  if (w0 != w22) {
    x1 = 60; // 0x43626c
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x436278
    }
    local_0 = x0; // 0x43627c
    LR = mem(x21, ((x0 + x17) << 3)); // 0x436290
    x0 = x1; // 0x436280
    x17 = 15879; // 0x436288
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x436284
    callIndirect(LR); // 0x436294
  } else {
    x0 = NULL; // 0x436264
  }
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x4362a0
  }
  x3 = local_m10; // 0x4362a8
  x4 = local_m8; // 0x4362a4
  memSet(x4, 7, w0); // 0x4362ac
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4362b8
  w16 = mem(x4, -1); // 0x4362b0
  w17 = mem(x0, -1); // 0x4362b4
  x16 = (mem(x4, -1)) & 0xffffffff; // 0x4362b0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4362b4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x4() /* 0x61e0ac */; // 0x4362c4
  }
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4362e0
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x4362cc
  x1 = x3; // 0x4362d0
  x2 = "winCoin" /* pp+0x119c0 */; // 0x4362d8
  callIndirect(LR); // 0x4362e4
  if (w0 != w22) {
    x1 = 60; // 0x4362f8
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x436304
    }
    local_0 = x0; // 0x436308
    LR = mem(x21, ((x0 + x17) << 3)); // 0x43631c
    x0 = x1; // 0x43630c
    x17 = 15879; // 0x436314
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x436310
    callIndirect(LR); // 0x436320
  } else {
    x0 = NULL; // 0x4362f0
  }
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x43632c
  }
  x3 = local_m10; // 0x436334
  x4 = local_m8; // 0x436330
  memSet(x4, 0xb, w0); // 0x436338
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x436344
  w16 = mem(x4, -1); // 0x43633c
  w17 = mem(x0, -1); // 0x436340
  x16 = (mem(x4, -1)) & 0xffffffff; // 0x43633c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x436340
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x4() /* 0x61e0ac */; // 0x436350
  }
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x43636c
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x436358
  x1 = x3; // 0x43635c
  x2 = "itemName" /* pp+0xfa68 */; // 0x436364
  callIndirect(LR); // 0x436370
  if (w0 != w22) {
    x5 = x0; // 0x436384
  } else {
    x5 = "" /* pp+0x148 */; // 0x43637c
  }
  x0 = x5; // 0x436390
  x3 = local_m10; // 0x43638c
  x4 = local_m8; // 0x436388
  local_m18 = x5; // 0x436394
  x1 = NULL; // 0x43639c
  x2 = NULL; // 0x436398
  x4 = 60; // 0x4363a0
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4363ac
  }
  x4 = x4 - 0x5e; // 0x4363b0
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x15000), 0x420) /* Obj!? */; // 0x4363c4
    x8 = mem(PP, 0xae0) /* Type */; // 0x4363bc
    sub_0x278d08(); // 0x4363c8
  }
  x0 = local_m18; // 0x4363cc
  x3 = local_m8; // 0x4363d0
  memSet(x3, 0x13, w0); // 0x4363d4
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4363e0
  w16 = mem(x3, -1); // 0x4363d8
  w17 = mem(x0, -1); // 0x4363dc
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4363d8
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4363dc
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4363ec
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x436408
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4363f8
  x1 = local_m10; // 0x4363f0
  x2 = "createTime" /* pp+0x114b8 */; // 0x436400
  callIndirect(LR); // 0x43640c
  x1 = NULL; // 0x436418
  x2 = NULL; // 0x436414
  x3 = x0; // 0x436410
  local_m10 = x3; // 0x43641c
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x43642c
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x15000), 0x430) /* Obj!? */; // 0x436440
      x8 = mem(PP, 0x1170) /* Type */; // 0x436438
      sub_0x62aa34(); // 0x436444
    }
  }
  x0 = local_m10; // 0x436448
  x1 = ((local_m10) >> 1) & 0x7fffffff; // 0x43644c
  if (x0 & (1 << 0) == 0) {
  } else {
    x1 = mem(x0, 7); // 0x436454
  }
  DateTime_validateMilliseconds() /* 0x3adab8 */; // 0x436458
  BARRIER = 1000; // 0x43645c
  x2 = x0 * BARRIER; // 0x436460
  local_m20 = x2; // 0x436464
  AllocationStub_DateTime() /* 0x3adaac */; // 0x436468
  x1 = x0; // 0x43646c
  x2 = local_m20; // 0x436470
  x3 = NULL + 0x30; // 0x436474
  local_m10 = x0; // 0x436478
  DateTime_ctor_withValue() /* 0x3acfd0 */; // 0x43647c
  x1 = local_m10; // 0x436480
  DateTime_toLocal() /* 0x3acf4c */; // 0x436484
  local_0 = x0; // 0x436488
  DateTime_toString() /* 0x48f214 */; // 0x43648c
  BARRIER = 32; // 0x436490
  local_0 = BARRIER; // 0x436494
  x1 = x0; // 0x436498
  x2 = 10; // 0x43649c
  x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x4364a0
  StringBase_substring() /* 0x281608 */; // 0x4364a4
  x1 = local_m8; // 0x4364a8
  memSet(x1, 0xf, w0); // 0x4364ac
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4364b8
  w16 = mem(x1, -1); // 0x4364b0
  w17 = mem(x0, -1); // 0x4364b4
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4364b0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4364b4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4364c4
  }
  SP = FP; // 0x4364cc
  x0 = NULL; // 0x4364c8
  // frame: FP, LR, mem(SP), 0x10 // 0x4364d0
  return;
}

// GameFruitRankListInfo_ctor_fromJson
// raw disassembly:
//  0x436a6c: stp FP, LR, [SP, #-0x10]!
//  0x436a70: mov FP, SP
//  0x436a74: sub SP, SP, #0x20
//  0x436a78: ldr x0, [PP, #0x40]
//  0x436a7c: mov x4, x1
//  0x436a80: mov x3, x2
//  0x436a84: stur x1, [FP, #-8]
//  0x436a88: stur x2, [FP, #-0x10]
//  0x436a8c: ldr BARRIER, [THR, #0x38]
//  0x436a90: cmp SP, BARRIER
//  0x436a94: b.ls #0x436cec
//  0x436a98: stur w0, [x4, #7]
//  0x436a9c: stur w0, [x4, #0xb]
//  0x436aa0: stur w0, [x4, #0xf]
//  0x436aa4: ldur x0, [x3, #-1]
//  0x436aa8: ubfx x0, x0, #0xc, #0x14
//  0x436aac: mov x1, x3
//  0x436ab0: add x2, PP, #0xb, lsl #12
//  0x436ab4: ldr x2, [x2, #0x730]
//  0x436ab8: sub LR, x0, #1, lsl #12
//  0x436abc: ldr LR, [x21, LR, lsl #3]
//  0x436ac0: blr LR
//  0x436ac4: cmp w0, w22
//  0x436ac8: b.ne #0x436ad4
//  0x436acc: ldr x5, [PP, #0x148]
//  0x436ad0: b #0x436ad8
//  0x436ad4: mov x5, x0
//  0x436ad8: ldur x4, [FP, #-8]
//  0x436adc: ldur x3, [FP, #-0x10]
//  0x436ae0: mov x0, x5
//  0x436ae4: stur x5, [FP, #-0x18]
//  0x436ae8: mov x2, NULL
//  0x436aec: mov x1, NULL
//  0x436af0: mov x4, #0x3c
//  0x436af4: tbz w0, #0, #0x436b00
//  0x436af8: ldur x4, [x0, #-1]
//  0x436afc: ubfx x4, x4, #0xc, #0x14
//  0x436b00: sub x4, x4, #0x5e
//  0x436b04: cmp x4, #1
//  0x436b08: b.ls #0x436b1c
//  0x436b0c: ldr x8, [PP, #0x2f8]
//  0x436b10: add x3, PP, #0x11, lsl #12
//  0x436b14: ldr x3, [x3, #0x990]
//  0x436b18: bl #0x62a0c0
//  0x436b1c: ldur x0, [FP, #-0x18]
//  0x436b20: ldur x3, [FP, #-8]
//  0x436b24: stur w0, [x3, #0xb]
//  0x436b28: ldurb w16, [x3, #-1]
//  0x436b2c: ldurb w17, [x0, #-1]
//  0x436b30: and BARRIER, x17, BARRIER, lsr #2
//  0x436b34: tst BARRIER, HEAP, lsr #32
//  0x436b38: b.eq #0x436b40
//  0x436b3c: bl #0x61e08c
//  0x436b40: ldur x4, [FP, #-0x10]
//  0x436b44: ldur x0, [x4, #-1]
//  0x436b48: ubfx x0, x0, #0xc, #0x14
//  0x436b4c: mov x1, x4
//  0x436b50: add x2, PP, #0xb, lsl #12
//  0x436b54: ldr x2, [x2, #0x718]
//  0x436b58: sub LR, x0, #1, lsl #12
//  0x436b5c: ldr LR, [x21, LR, lsl #3]
//  0x436b60: blr LR
//  0x436b64: cmp w0, w22
//  0x436b68: b.ne #0x436b74
//  0x436b6c: ldr x5, [PP, #0x148]
//  0x436b70: b #0x436b78
//  0x436b74: mov x5, x0
//  0x436b78: ldur x3, [FP, #-8]
//  0x436b7c: ldur x4, [FP, #-0x10]
//  0x436b80: mov x0, x5
//  0x436b84: stur x5, [FP, #-0x18]
//  0x436b88: mov x2, NULL
//  0x436b8c: mov x1, NULL
//  0x436b90: mov x4, #0x3c
//  0x436b94: tbz w0, #0, #0x436ba0
//  0x436b98: ldur x4, [x0, #-1]
//  0x436b9c: ubfx x4, x4, #0xc, #0x14
//  0x436ba0: sub x4, x4, #0x5e
//  0x436ba4: cmp x4, #1
//  0x436ba8: b.ls #0x436bbc
//  0x436bac: ldr x8, [PP, #0x2f8]
//  0x436bb0: add x3, PP, #0x11, lsl #12
//  0x436bb4: ldr x3, [x3, #0x9a0]
//  0x436bb8: bl #0x62a0c0
//  0x436bbc: ldur x0, [FP, #-0x18]
//  0x436bc0: ldur x3, [FP, #-8]
//  0x436bc4: stur w0, [x3, #7]
//  0x436bc8: ldurb w16, [x3, #-1]
//  0x436bcc: ldurb w17, [x0, #-1]
//  0x436bd0: and BARRIER, x17, BARRIER, lsr #2
//  0x436bd4: tst BARRIER, HEAP, lsr #32
//  0x436bd8: b.eq #0x436be0
//  0x436bdc: bl #0x61e08c
//  0x436be0: ldur x4, [FP, #-0x10]
//  0x436be4: ldur x0, [x4, #-1]
//  0x436be8: ubfx x0, x0, #0xc, #0x14
//  0x436bec: mov x1, x4
//  0x436bf0: add x2, PP, #0xb, lsl #12
//  0x436bf4: ldr x2, [x2, #0x748]
//  0x436bf8: sub LR, x0, #1, lsl #12
//  0x436bfc: ldr LR, [x21, LR, lsl #3]
//  0x436c00: blr LR
//  0x436c04: cmp w0, w22
//  0x436c08: b.ne #0x436c10
//  0x436c0c: ldr x0, [PP, #0x148]
//  0x436c10: ldur x3, [FP, #-0x10]
//  0x436c14: mov x2, NULL
//  0x436c18: mov x1, NULL
//  0x436c1c: mov x4, #0x3c
//  0x436c20: tbz w0, #0, #0x436c2c
//  0x436c24: ldur x4, [x0, #-1]
//  0x436c28: ubfx x4, x4, #0xc, #0x14
//  0x436c2c: sub x4, x4, #0x5e
//  0x436c30: cmp x4, #1
//  0x436c34: b.ls #0x436c48
//  0x436c38: ldr x8, [PP, #0x2f8]
//  0x436c3c: add x3, PP, #0x11, lsl #12
//  0x436c40: ldr x3, [x3, #0x9b0]
//  0x436c44: bl #0x62a0c0
//  0x436c48: ldur x1, [FP, #-0x10]
//  0x436c4c: ldur x0, [x1, #-1]
//  0x436c50: ubfx x0, x0, #0xc, #0x14
//  0x436c54: add x2, PP, #0x11, lsl #12
//  0x436c58: ldr x2, [x2, #0x9c0]
//  0x436c5c: sub LR, x0, #1, lsl #12
//  0x436c60: ldr LR, [x21, LR, lsl #3]
//  0x436c64: blr LR
//  0x436c68: cmp w0, w22
//  0x436c6c: b.ne #0x436c78
//  0x436c70: mov x1, NULL
//  0x436c74: b #0x436ca8
//  0x436c78: mov x1, #0x3c
//  0x436c7c: tbz w0, #0, #0x436c88
//  0x436c80: ldur x1, [x0, #-1]
//  0x436c84: ubfx x1, x1, #0xc, #0x14
//  0x436c88: str x0, [SP]
//  0x436c8c: mov x0, x1
//  0x436c90: ldr x4, [PP, #0x3a8]
//  0x436c94: mov x17, #0x3e07
//  0x436c98: add LR, x0, x17
//  0x436c9c: ldr LR, [x21, LR, lsl #3]
//  0x436ca0: blr LR
//  0x436ca4: mov x1, x0
//  0x436ca8: cmp w1, w22
//  0x436cac: b.ne #0x436cb8
//  0x436cb0: ldr x0, [PP, #0x148]
//  0x436cb4: b #0x436cbc
//  0x436cb8: mov x0, x1
//  0x436cbc: ldur x1, [FP, #-8]
//  0x436cc0: stur w0, [x1, #0xf]
//  0x436cc4: ldurb w16, [x1, #-1]
//  0x436cc8: ldurb w17, [x0, #-1]
//  0x436ccc: and BARRIER, x17, BARRIER, lsr #2
//  0x436cd0: tst BARRIER, HEAP, lsr #32
//  0x436cd4: b.eq #0x436cdc
//  0x436cd8: bl #0x61e04c
//  0x436cdc: mov x0, NULL
//  0x436ce0: mov SP, FP
//  0x436ce4: ldp FP, LR, [SP], #0x10
//  0x436ce8: ret 
//  0x436cec: bl #0x61fa28
//  0x436cf0: b #0x436a98
//
dynamic GameFruitRankListInfo_ctor_fromJson() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x436a6c
  // frame: FP = SP // 0x436a70
  // frame: SP = SP - 0x20 // 0x436a74
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x436a78
  x3 = x2; // 0x436a80
  x4 = x1; // 0x436a7c
  local_m8 = x1; // 0x436a84
  local_m10 = x2; // 0x436a88
  BARRIER = mem(THR, 0x38); // 0x436a8c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x436cec
  }
  memSet(x4, 7, w0); // 0x436a98
  memSet(x4, 0xb, w0); // 0x436a9c
  memSet(x4, 0xf, w0); // 0x436aa0
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x436abc
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x436aa8
  x1 = x3; // 0x436aac
  x2 = "signature" /* pp+0xb730 */; // 0x436ab4
  callIndirect(LR); // 0x436ac0
  if (w0 != w22) {
    x5 = x0; // 0x436ad4
  } else {
    x5 = "" /* pp+0x148 */; // 0x436acc
  }
  x0 = x5; // 0x436ae0
  x3 = local_m10; // 0x436adc
  x4 = local_m8; // 0x436ad8
  local_m18 = x5; // 0x436ae4
  x1 = NULL; // 0x436aec
  x2 = NULL; // 0x436ae8
  x4 = 60; // 0x436af0
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x436afc
  }
  x4 = x4 - 0x5e; // 0x436b00
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0x990) /* Obj!? */; // 0x436b14
    x8 = mem(PP, 0x2f8) /* Type */; // 0x436b0c
    sub_0x62a0c0(); // 0x436b18
  }
  x0 = local_m18; // 0x436b1c
  x3 = local_m8; // 0x436b20
  memSet(x3, 0xb, w0); // 0x436b24
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x436b30
  w16 = mem(x3, -1); // 0x436b28
  w17 = mem(x0, -1); // 0x436b2c
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x436b28
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x436b2c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x436b3c
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x436b5c
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x436b48
  x1 = local_m10; // 0x436b4c
  x2 = "avatarUrl" /* pp+0xb718 */; // 0x436b54
  x4 = local_m10; // 0x436b40
  callIndirect(LR); // 0x436b60
  if (w0 != w22) {
    x5 = x0; // 0x436b74
  } else {
    x5 = "" /* pp+0x148 */; // 0x436b6c
  }
  x0 = x5; // 0x436b80
  x3 = local_m8; // 0x436b78
  x4 = local_m10; // 0x436b7c
  local_m18 = x5; // 0x436b84
  x1 = NULL; // 0x436b8c
  x2 = NULL; // 0x436b88
  x4 = 60; // 0x436b90
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x436b9c
  }
  x4 = x4 - 0x5e; // 0x436ba0
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0x9a0) /* Obj!? */; // 0x436bb4
    x8 = mem(PP, 0x2f8) /* Type */; // 0x436bac
    sub_0x62a0c0(); // 0x436bb8
  }
  x0 = local_m18; // 0x436bbc
  x3 = local_m8; // 0x436bc0
  memSet(x3, 7, w0); // 0x436bc4
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x436bd0
  w16 = mem(x3, -1); // 0x436bc8
  w17 = mem(x0, -1); // 0x436bcc
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x436bc8
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x436bcc
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x436bdc
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x436bfc
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x436be8
  x1 = local_m10; // 0x436bec
  x2 = "garlandUrl" /* pp+0xb748 */; // 0x436bf4
  x4 = local_m10; // 0x436be0
  callIndirect(LR); // 0x436c00
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x436c0c
  }
  x1 = NULL; // 0x436c18
  x2 = NULL; // 0x436c14
  x3 = local_m10; // 0x436c10
  x4 = 60; // 0x436c1c
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x436c28
  }
  x4 = x4 - 0x5e; // 0x436c2c
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0x9b0) /* Obj!? */; // 0x436c40
    x8 = mem(PP, 0x2f8) /* Type */; // 0x436c38
    sub_0x62a0c0(); // 0x436c44
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x436c60
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x436c50
  x1 = local_m10; // 0x436c48
  x2 = "winCoin" /* pp+0x119c0 */; // 0x436c58
  callIndirect(LR); // 0x436c64
  if (w0 != w22) {
    x1 = 60; // 0x436c78
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x436c84
    }
    local_0 = x0; // 0x436c88
    LR = mem(x21, ((x0 + x17) << 3)); // 0x436c9c
    x0 = x1; // 0x436c8c
    x17 = 15879; // 0x436c94
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x436c90
    callIndirect(LR); // 0x436ca0
    x1 = x0; // 0x436ca4
  } else {
    x1 = NULL; // 0x436c70
  }
  if (w1 != w22) {
    x0 = x1; // 0x436cb8
  } else {
    x0 = "" /* pp+0x148 */; // 0x436cb0
  }
  x1 = local_m8; // 0x436cbc
  memSet(x1, 0xf, w0); // 0x436cc0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x436ccc
  w16 = mem(x1, -1); // 0x436cc4
  w17 = mem(x0, -1); // 0x436cc8
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x436cc4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x436cc8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x436cd8
  }
  SP = FP; // 0x436ce0
  x0 = NULL; // 0x436cdc
  // frame: FP, LR, mem(SP), 0x10 // 0x436ce4
  return;
}

// GameFruitWinnerDialogInfo_ctor_fromJson
// raw disassembly:
//  0x44462c: stp FP, LR, [SP, #-0x10]!
//  0x444630: mov FP, SP
//  0x444634: sub SP, SP, #0x30
//  0x444638: mov x4, x1
//  0x44463c: mov x3, x2
//  0x444640: stur x1, [FP, #-8]
//  0x444644: stur x2, [FP, #-0x10]
//  0x444648: ldr BARRIER, [THR, #0x38]
//  0x44464c: cmp SP, BARRIER
//  0x444650: b.ls #0x444900
//  0x444654: ldur x0, [x3, #-1]
//  0x444658: ubfx x0, x0, #0xc, #0x14
//  0x44465c: mov x1, x3
//  0x444660: add x2, PP, #0xb, lsl #12
//  0x444664: ldr x2, [x2, #0x8c0]
//  0x444668: sub LR, x0, #1, lsl #12
//  0x44466c: ldr LR, [x21, LR, lsl #3]
//  0x444670: blr LR
//  0x444674: mov x3, x0
//  0x444678: mov x2, NULL
//  0x44467c: mov x1, NULL
//  0x444680: stur x3, [FP, #-0x18]
//  0x444684: tbz w0, #0, #0x4446ac
//  0x444688: ldur x4, [x0, #-1]
//  0x44468c: ubfx x4, x4, #0xc, #0x14
//  0x444690: sub x4, x4, #0x3c
//  0x444694: cmp x4, #1
//  0x444698: b.ls #0x4446ac
//  0x44469c: ldr x8, [PP, #0xaf8]
//  0x4446a0: add x3, PP, #0x11, lsl #12
//  0x4446a4: ldr x3, [x3, #0xca8]
//  0x4446a8: bl #0x62a9f8
//  0x4446ac: ldur x0, [FP, #-0x18]
//  0x4446b0: ldur x3, [FP, #-8]
//  0x4446b4: stur w0, [x3, #7]
//  0x4446b8: tbz w0, #0, #0x4446d4
//  0x4446bc: ldurb w16, [x3, #-1]
//  0x4446c0: ldurb w17, [x0, #-1]
//  0x4446c4: and BARRIER, x17, BARRIER, lsr #2
//  0x4446c8: tst BARRIER, HEAP, lsr #32
//  0x4446cc: b.eq #0x4446d4
//  0x4446d0: bl #0x61e08c
//  0x4446d4: ldur x4, [FP, #-0x10]
//  0x4446d8: ldur x0, [x4, #-1]
//  0x4446dc: ubfx x0, x0, #0xc, #0x14
//  0x4446e0: mov x1, x4
//  0x4446e4: add x2, PP, #0xb, lsl #12
//  0x4446e8: ldr x2, [x2, #0x920]
//  0x4446ec: sub LR, x0, #1, lsl #12
//  0x4446f0: ldr LR, [x21, LR, lsl #3]
//  0x4446f4: blr LR
//  0x4446f8: mov x3, x0
//  0x4446fc: mov x2, NULL
//  0x444700: mov x1, NULL
//  0x444704: stur x3, [FP, #-0x18]
//  0x444708: tbz w0, #0, #0x444730
//  0x44470c: ldur x4, [x0, #-1]
//  0x444710: ubfx x4, x4, #0xc, #0x14
//  0x444714: sub x4, x4, #0x3c
//  0x444718: cmp x4, #1
//  0x44471c: b.ls #0x444730
//  0x444720: ldr x8, [PP, #0xaf8]
//  0x444724: add x3, PP, #0x11, lsl #12
//  0x444728: ldr x3, [x3, #0xcb8]
//  0x44472c: bl #0x62a9f8
//  0x444730: ldur x0, [FP, #-0x18]
//  0x444734: ldur x3, [FP, #-8]
//  0x444738: stur w0, [x3, #0xb]
//  0x44473c: tbz w0, #0, #0x444758
//  0x444740: ldurb w16, [x3, #-1]
//  0x444744: ldurb w17, [x0, #-1]
//  0x444748: and BARRIER, x17, BARRIER, lsr #2
//  0x44474c: tst BARRIER, HEAP, lsr #32
//  0x444750: b.eq #0x444758
//  0x444754: bl #0x61e08c
//  0x444758: ldur x4, [FP, #-0x10]
//  0x44475c: ldur x0, [x4, #-1]
//  0x444760: ubfx x0, x0, #0xc, #0x14
//  0x444764: mov x1, x4
//  0x444768: add x2, PP, #0x11, lsl #12
//  0x44476c: ldr x2, [x2, #0xcc8]
//  0x444770: sub LR, x0, #1, lsl #12
//  0x444774: ldr LR, [x21, LR, lsl #3]
//  0x444778: blr LR
//  0x44477c: cmp w0, w22
//  0x444780: b.ne #0x444798
//  0x444784: mov x1, NULL
//  0x444788: mov x2, #0
//  0x44478c: bl #0x277268
//  0x444790: mov x5, x0
//  0x444794: b #0x44479c
//  0x444798: mov x5, x0
//  0x44479c: ldur x3, [FP, #-8]
//  0x4447a0: ldur x4, [FP, #-0x10]
//  0x4447a4: mov x0, x5
//  0x4447a8: stur x5, [FP, #-0x18]
//  0x4447ac: mov x2, NULL
//  0x4447b0: mov x1, NULL
//  0x4447b4: ldr x8, [PP, #0xfa8]
//  0x4447b8: add x3, PP, #0x11, lsl #12
//  0x4447bc: ldr x3, [x3, #0xcd0]
//  0x4447c0: bl #0x285664
//  0x4447c4: add x1, PP, #0x11, lsl #12
//  0x4447c8: ldr x1, [x1, #0xce0]
//  0x4447cc: mov x2, NULL
//  0x4447d0: bl #0x61ec54
//  0x4447d4: mov x1, x0
//  0x4447d8: ldur x0, [FP, #-0x18]
//  0x4447dc: ldur x2, [x0, #-1]
//  0x4447e0: ubfx x2, x2, #0xc, #0x14
//  0x4447e4: add BARRIER, PP, #0x11, lsl #12
//  0x4447e8: ldr BARRIER, [BARRIER, #0xce8]
//  0x4447ec: stp x0, BARRIER, [SP, #8]
//  0x4447f0: str x1, [SP]
//  0x4447f4: mov x0, x2
//  0x4447f8: ldr x4, [PP, #0x58]
//  0x4447fc: mov x17, #0x86d9
//  0x444800: add LR, x0, x17
//  0x444804: ldr LR, [x21, LR, lsl #3]
//  0x444808: blr LR
//  0x44480c: ldur x1, [x0, #-1]
//  0x444810: ubfx x1, x1, #0xc, #0x14
//  0x444814: mov BARRIER, x0
//  0x444818: mov x0, x1
//  0x44481c: mov x1, BARRIER
//  0x444820: ldr x4, [PP, #0x4c0]
//  0x444824: add LR, x0, #0x35e
//  0x444828: ldr LR, [x21, LR, lsl #3]
//  0x44482c: blr LR
//  0x444830: ldur x3, [FP, #-8]
//  0x444834: stur w0, [x3, #0xf]
//  0x444838: ldurb w16, [x3, #-1]
//  0x44483c: ldurb w17, [x0, #-1]
//  0x444840: and BARRIER, x17, BARRIER, lsr #2
//  0x444844: tst BARRIER, HEAP, lsr #32
//  0x444848: b.eq #0x444850
//  0x44484c: bl #0x61e08c
//  0x444850: ldur x1, [FP, #-0x10]
//  0x444854: ldur x0, [x1, #-1]
//  0x444858: ubfx x0, x0, #0xc, #0x14
//  0x44485c: add x2, PP, #0x11, lsl #12
//  0x444860: ldr x2, [x2, #0xcf0]
//  0x444864: sub LR, x0, #1, lsl #12
//  0x444868: ldr LR, [x21, LR, lsl #3]
//  0x44486c: blr LR
//  0x444870: cmp w0, w22
//  0x444874: b.ne #0x444890
//  0x444878: ldr BARRIER, [PP, #0xbf0]
//  0x44487c: ldr LR, [THR, #0x90]
//  0x444880: stp LR, BARRIER, [SP]
//  0x444884: bl #0x27c0c8
//  0x444888: mov x4, x0
//  0x44488c: b #0x444894
//  0x444890: mov x4, x0
//  0x444894: ldur x3, [FP, #-8]
//  0x444898: mov x0, x4
//  0x44489c: stur x4, [FP, #-0x10]
//  0x4448a0: mov x2, NULL
//  0x4448a4: mov x1, NULL
//  0x4448a8: ldr x8, [PP, #0x3cd0]
//  0x4448ac: add x3, PP, #0x11, lsl #12
//  0x4448b0: ldr x3, [x3, #0xcf8]
//  0x4448b4: bl #0x2b15f0
//  0x4448b8: bl #0x444af4
//  0x4448bc: mov x1, x0
//  0x4448c0: ldur x2, [FP, #-0x10]
//  0x4448c4: stur x0, [FP, #-0x10]
//  0x4448c8: bl #0x444908
//  0x4448cc: ldur x0, [FP, #-0x10]
//  0x4448d0: ldur x1, [FP, #-8]
//  0x4448d4: stur w0, [x1, #0x13]
//  0x4448d8: ldurb w16, [x1, #-1]
//  0x4448dc: ldurb w17, [x0, #-1]
//  0x4448e0: and BARRIER, x17, BARRIER, lsr #2
//  0x4448e4: tst BARRIER, HEAP, lsr #32
//  0x4448e8: b.eq #0x4448f0
//  0x4448ec: bl #0x61e04c
//  0x4448f0: mov x0, NULL
//  0x4448f4: mov SP, FP
//  0x4448f8: ldp FP, LR, [SP], #0x10
//  0x4448fc: ret 
//  0x444900: bl #0x61fa28
//  0x444904: b #0x444654
//
dynamic GameFruitWinnerDialogInfo_ctor_fromJson() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x44462c
  // frame: FP = SP // 0x444630
  // frame: SP = SP - 0x30 // 0x444634
  x3 = x2; // 0x44463c
  x4 = x1; // 0x444638
  local_m8 = x1; // 0x444640
  local_m10 = x2; // 0x444644
  BARRIER = mem(THR, 0x38); // 0x444648
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x444900
  }
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x44466c
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x444658
  x1 = x3; // 0x44465c
  x2 = "totalMs" /* pp+0xb8c0 */; // 0x444664
  callIndirect(LR); // 0x444670
  x1 = NULL; // 0x44467c
  x2 = NULL; // 0x444678
  x3 = x0; // 0x444674
  local_m18 = x3; // 0x444680
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x444690
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x11000), 0xca8) /* Obj!? */; // 0x4446a4
      x8 = mem(PP, 0xaf8) /* Type */; // 0x44469c
      sub_0x62a9f8(); // 0x4446a8
    }
  }
  x0 = local_m18; // 0x4446ac
  x3 = local_m8; // 0x4446b0
  memSet(x3, 7, w0); // 0x4446b4
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4446c4
    w17 = mem(x0, -1); // 0x4446c0
    x16 = w16 & 0xffffffff; // 0x4446bc
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4446c0
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x3() /* 0x61e08c */; // 0x4446d0
    }
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4446f0
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4446dc
  x1 = local_m10; // 0x4446e0
  x2 = "currentMs" /* pp+0xb920 */; // 0x4446e8
  x4 = local_m10; // 0x4446d4
  callIndirect(LR); // 0x4446f4
  x1 = NULL; // 0x444700
  x2 = NULL; // 0x4446fc
  x3 = x0; // 0x4446f8
  local_m18 = x3; // 0x444704
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x444714
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x11000), 0xcb8) /* Obj!? */; // 0x444728
      x8 = mem(PP, 0xaf8) /* Type */; // 0x444720
      sub_0x62a9f8(); // 0x44472c
    }
  }
  x0 = local_m18; // 0x444730
  x3 = local_m8; // 0x444734
  memSet(x3, 0xb, w0); // 0x444738
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x444748
    w17 = mem(x0, -1); // 0x444744
    x16 = w16 & 0xffffffff; // 0x444740
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x444744
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x3() /* 0x61e08c */; // 0x444754
    }
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x444774
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x444760
  x1 = local_m10; // 0x444764
  x2 = "rankingList" /* pp+0x11cc8 */; // 0x44476c
  x4 = local_m10; // 0x444758
  callIndirect(LR); // 0x444778
  if (w0 != w22) {
    x5 = x0; // 0x444798
  } else {
    x1 = NULL; // 0x444784
    x2 = 0; // 0x444788
    GrowableList_factory_ctor() /* 0x277268 */; // 0x44478c
    x5 = x0; // 0x444790
  }
  x0 = x5; // 0x4447a4
  x3 = local_m8; // 0x44479c
  x4 = local_m10; // 0x4447a0
  local_m18 = x5; // 0x4447a8
  x1 = NULL; // 0x4447b0
  x2 = NULL; // 0x4447ac
  x3 = mem((PP + 0x11000), 0xcd0) /* Obj!? */; // 0x4447bc
  x8 = mem(PP, 0xfa8) /* Type */; // 0x4447b4
  sub_0x285664(); // 0x4447c0
  x1 = mem((PP + 0x11000), 0xce0) /* Function */; // 0x4447c8
  x2 = NULL; // 0x4447cc
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4447d0
  BARRIER = mem((PP + 0x11000), 0xce8) /* TypeArguments */; // 0x4447e8
  x0 = local_m18; // 0x4447d8
  x1 = x0; // 0x4447d4
  x2 = ((mem((local_m18), -1)) >> 12) & 0xfffff; // 0x4447e0
  // frame: x0, BARRIER, mem(SP, 8) // 0x4447ec
  local_0 = x1; // 0x4447f0
  LR = mem(x21, ((x0 + x17) << 3)); // 0x444804
  x0 = x2; // 0x4447f4
  x17 = 34521; // 0x4447fc
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x4447f8
  callIndirect(LR); // 0x444808
  BARRIER = x0; // 0x444814
  x0 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x444818
  x1 = x0; // 0x44481c
  LR = mem(x21, ((x0 + 0x35e) << 3)); // 0x444828
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x444820
  callIndirect(LR); // 0x44482c
  x3 = local_m8; // 0x444830
  memSet(x3, 0xf, w0); // 0x444834
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x444840
  w16 = mem(x3, -1); // 0x444838
  w17 = mem(x0, -1); // 0x44483c
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x444838
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x44483c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x44484c
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x444868
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x444858
  x1 = local_m10; // 0x444850
  x2 = "userBetResult" /* pp+0x11cf0 */; // 0x444860
  callIndirect(LR); // 0x44486c
  if (w0 != w22) {
    x4 = x0; // 0x444890
  } else {
    BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x444878
    LR = mem(THR, 0x90); // 0x44487c
    // frame: LR, BARRIER, mem(SP) // 0x444880
    Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x444884
    x4 = x0; // 0x444888
  }
  x0 = x4; // 0x444898
  x3 = local_m8; // 0x444894
  local_m10 = x4; // 0x44489c
  x1 = NULL; // 0x4448a4
  x2 = NULL; // 0x4448a0
  x3 = mem((PP + 0x11000), 0xcf8) /* Obj!? */; // 0x4448b0
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x4448a8
  sub_0x2b15f0(); // 0x4448b4
  AllocationStub_GameFruitWinnerBetResultInfo() /* 0x444af4 */; // 0x4448b8
  x1 = x0; // 0x4448bc
  x2 = local_m10; // 0x4448c0
  local_m10 = x0; // 0x4448c4
  GameFruitWinnerBetResultInfo_ctor_fromJson() /* 0x444908 */; // 0x4448c8
  x0 = local_m10; // 0x4448cc
  x1 = local_m8; // 0x4448d0
  memSet(x1, 0x13, w0); // 0x4448d4
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4448e0
  w16 = mem(x1, -1); // 0x4448d8
  w17 = mem(x0, -1); // 0x4448dc
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4448d8
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4448dc
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4448ec
  }
  SP = FP; // 0x4448f4
  x0 = NULL; // 0x4448f0
  // frame: FP, LR, mem(SP), 0x10 // 0x4448f8
  return;
}

// GameFruitWinnerDialogInfo_anon_closure
// raw disassembly:
//  0x444b00: stp FP, LR, [SP, #-0x10]!
//  0x444b04: mov FP, SP
//  0x444b08: sub SP, SP, #8
//  0x444b0c: ldr BARRIER, [THR, #0x38]
//  0x444b10: cmp SP, BARRIER
//  0x444b14: b.ls #0x444b58
//  0x444b18: ldr x0, [FP, #0x10]
//  0x444b1c: mov x2, NULL
//  0x444b20: mov x1, NULL
//  0x444b24: ldr x8, [PP, #0x3cd0]
//  0x444b28: add x3, PP, #0x11, lsl #12
//  0x444b2c: ldr x3, [x3, #0xd08]
//  0x444b30: bl #0x2b15f0
//  0x444b34: bl #0x444d70
//  0x444b38: mov x1, x0
//  0x444b3c: ldr x2, [FP, #0x10]
//  0x444b40: stur x0, [FP, #-8]
//  0x444b44: bl #0x444b60
//  0x444b48: ldur x0, [FP, #-8]
//  0x444b4c: mov SP, FP
//  0x444b50: ldp FP, LR, [SP], #0x10
//  0x444b54: ret 
//  0x444b58: bl #0x61fa28
//  0x444b5c: b #0x444b18
//
dynamic GameFruitWinnerDialogInfo_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x444b00
  BARRIER = mem(THR, 0x38); // 0x444b0c
  // frame: FP = SP // 0x444b04
  // frame: SP = SP - 8 // 0x444b08
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x444b58
  }
  x0 = local_10; // 0x444b18
  x1 = NULL; // 0x444b20
  x2 = NULL; // 0x444b1c
  x3 = mem((PP + 0x11000), 0xd08) /* Obj!? */; // 0x444b2c
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x444b24
  sub_0x2b15f0(); // 0x444b30
  AllocationStub_GameFruitWinerListInfo() /* 0x444d70 */; // 0x444b34
  x1 = x0; // 0x444b38
  x2 = local_10; // 0x444b3c
  local_m8 = x0; // 0x444b40
  GameFruitWinerListInfo_ctor_fromJson() /* 0x444b60 */; // 0x444b44
  SP = FP; // 0x444b4c
  x0 = local_m8; // 0x444b48
  // frame: FP, LR, mem(SP), 0x10 // 0x444b50
  return;
}

// GameFruitWinnerBetResultInfo_ctor_fromJson
// raw disassembly:
//  0x444908: stp FP, LR, [SP, #-0x10]!
//  0x44490c: mov FP, SP
//  0x444910: sub SP, SP, #0x18
//  0x444914: mov x4, x1
//  0x444918: mov x3, x2
//  0x44491c: stur x1, [FP, #-8]
//  0x444920: stur x2, [FP, #-0x10]
//  0x444924: ldr BARRIER, [THR, #0x38]
//  0x444928: cmp SP, BARRIER
//  0x44492c: b.ls #0x444aec
//  0x444930: ldur x0, [x3, #-1]
//  0x444934: ubfx x0, x0, #0xc, #0x14
//  0x444938: mov x1, x3
//  0x44493c: add x2, PP, #0x11, lsl #12
//  0x444940: ldr x2, [x2, #0x9c0]
//  0x444944: sub LR, x0, #1, lsl #12
//  0x444948: ldr LR, [x21, LR, lsl #3]
//  0x44494c: blr LR
//  0x444950: cmp w0, w22
//  0x444954: b.ne #0x444960
//  0x444958: mov x0, NULL
//  0x44495c: b #0x44498c
//  0x444960: mov x1, #0x3c
//  0x444964: tbz w0, #0, #0x444970
//  0x444968: ldur x1, [x0, #-1]
//  0x44496c: ubfx x1, x1, #0xc, #0x14
//  0x444970: str x0, [SP]
//  0x444974: mov x0, x1
//  0x444978: ldr x4, [PP, #0x3a8]
//  0x44497c: mov x17, #0x3e07
//  0x444980: add LR, x0, x17
//  0x444984: ldr LR, [x21, LR, lsl #3]
//  0x444988: blr LR
//  0x44498c: cmp w0, w22
//  0x444990: b.ne #0x444998
//  0x444994: ldr x0, [PP, #0x148]
//  0x444998: ldur x4, [FP, #-8]
//  0x44499c: ldur x3, [FP, #-0x10]
//  0x4449a0: stur w0, [x4, #7]
//  0x4449a4: ldurb w16, [x4, #-1]
//  0x4449a8: ldurb w17, [x0, #-1]
//  0x4449ac: and BARRIER, x17, BARRIER, lsr #2
//  0x4449b0: tst BARRIER, HEAP, lsr #32
//  0x4449b4: b.eq #0x4449bc
//  0x4449b8: bl #0x61e0ac
//  0x4449bc: ldur x0, [x3, #-1]
//  0x4449c0: ubfx x0, x0, #0xc, #0x14
//  0x4449c4: mov x1, x3
//  0x4449c8: add x2, PP, #0xb, lsl #12
//  0x4449cc: ldr x2, [x2, #0x990]
//  0x4449d0: sub LR, x0, #1, lsl #12
//  0x4449d4: ldr LR, [x21, LR, lsl #3]
//  0x4449d8: blr LR
//  0x4449dc: cmp w0, w22
//  0x4449e0: b.ne #0x4449ec
//  0x4449e4: mov x0, NULL
//  0x4449e8: b #0x444a18
//  0x4449ec: mov x1, #0x3c
//  0x4449f0: tbz w0, #0, #0x4449fc
//  0x4449f4: ldur x1, [x0, #-1]
//  0x4449f8: ubfx x1, x1, #0xc, #0x14
//  0x4449fc: str x0, [SP]
//  0x444a00: mov x0, x1
//  0x444a04: ldr x4, [PP, #0x3a8]
//  0x444a08: mov x17, #0x3e07
//  0x444a0c: add LR, x0, x17
//  0x444a10: ldr LR, [x21, LR, lsl #3]
//  0x444a14: blr LR
//  0x444a18: cmp w0, w22
//  0x444a1c: b.ne #0x444a24
//  0x444a20: ldr x0, [PP, #0x148]
//  0x444a24: ldur x3, [FP, #-8]
//  0x444a28: ldur x1, [FP, #-0x10]
//  0x444a2c: stur w0, [x3, #0xf]
//  0x444a30: ldurb w16, [x3, #-1]
//  0x444a34: ldurb w17, [x0, #-1]
//  0x444a38: and BARRIER, x17, BARRIER, lsr #2
//  0x444a3c: tst BARRIER, HEAP, lsr #32
//  0x444a40: b.eq #0x444a48
//  0x444a44: bl #0x61e08c
//  0x444a48: ldur x0, [x1, #-1]
//  0x444a4c: ubfx x0, x0, #0xc, #0x14
//  0x444a50: add x2, PP, #0xf, lsl #12
//  0x444a54: ldr x2, [x2, #0xa50]
//  0x444a58: sub LR, x0, #1, lsl #12
//  0x444a5c: ldr LR, [x21, LR, lsl #3]
//  0x444a60: blr LR
//  0x444a64: cmp w0, w22
//  0x444a68: b.ne #0x444a74
//  0x444a6c: ldr x4, [PP, #0x148]
//  0x444a70: b #0x444a78
//  0x444a74: mov x4, x0
//  0x444a78: ldur x3, [FP, #-8]
//  0x444a7c: mov x0, x4
//  0x444a80: stur x4, [FP, #-0x10]
//  0x444a84: mov x2, NULL
//  0x444a88: mov x1, NULL
//  0x444a8c: mov x4, #0x3c
//  0x444a90: tbz w0, #0, #0x444a9c
//  0x444a94: ldur x4, [x0, #-1]
//  0x444a98: ubfx x4, x4, #0xc, #0x14
//  0x444a9c: sub x4, x4, #0x5e
//  0x444aa0: cmp x4, #1
//  0x444aa4: b.ls #0x444ab8
//  0x444aa8: ldr x8, [PP, #0xae0]
//  0x444aac: add x3, PP, #0x11, lsl #12
//  0x444ab0: ldr x3, [x3, #0xd38]
//  0x444ab4: bl #0x278d08
//  0x444ab8: ldur x0, [FP, #-0x10]
//  0x444abc: ldur x1, [FP, #-8]
//  0x444ac0: stur w0, [x1, #0xb]
//  0x444ac4: ldurb w16, [x1, #-1]
//  0x444ac8: ldurb w17, [x0, #-1]
//  0x444acc: and BARRIER, x17, BARRIER, lsr #2
//  0x444ad0: tst BARRIER, HEAP, lsr #32
//  0x444ad4: b.eq #0x444adc
//  0x444ad8: bl #0x61e04c
//  0x444adc: mov x0, NULL
//  0x444ae0: mov SP, FP
//  0x444ae4: ldp FP, LR, [SP], #0x10
//  0x444ae8: ret 
//  0x444aec: bl #0x61fa28
//  0x444af0: b #0x444930
//
dynamic GameFruitWinnerBetResultInfo_ctor_fromJson() {
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
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x444908
  // frame: FP = SP // 0x44490c
  // frame: SP = SP - 0x18 // 0x444910
  x3 = x2; // 0x444918
  x4 = x1; // 0x444914
  local_m8 = x1; // 0x44491c
  local_m10 = x2; // 0x444920
  BARRIER = mem(THR, 0x38); // 0x444924
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x444aec
  }
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x444948
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x444934
  x1 = x3; // 0x444938
  x2 = "winCoin" /* pp+0x119c0 */; // 0x444940
  callIndirect(LR); // 0x44494c
  if (w0 != w22) {
    x1 = 60; // 0x444960
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x44496c
    }
    local_0 = x0; // 0x444970
    LR = mem(x21, ((x0 + x17) << 3)); // 0x444984
    x0 = x1; // 0x444974
    x17 = 15879; // 0x44497c
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x444978
    callIndirect(LR); // 0x444988
  } else {
    x0 = NULL; // 0x444958
  }
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x444994
  }
  x3 = local_m10; // 0x44499c
  x4 = local_m8; // 0x444998
  memSet(x4, 7, w0); // 0x4449a0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4449ac
  w16 = mem(x4, -1); // 0x4449a4
  w17 = mem(x0, -1); // 0x4449a8
  x16 = (mem(x4, -1)) & 0xffffffff; // 0x4449a4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4449a8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x4() /* 0x61e0ac */; // 0x4449b8
  }
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4449d4
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x4449c0
  x1 = x3; // 0x4449c4
  x2 = "coin" /* pp+0xb990 */; // 0x4449cc
  callIndirect(LR); // 0x4449d8
  if (w0 != w22) {
    x1 = 60; // 0x4449ec
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4449f8
    }
    local_0 = x0; // 0x4449fc
    LR = mem(x21, ((x0 + x17) << 3)); // 0x444a10
    x0 = x1; // 0x444a00
    x17 = 15879; // 0x444a08
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x444a04
    callIndirect(LR); // 0x444a14
  } else {
    x0 = NULL; // 0x4449e4
  }
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x444a20
  }
  x1 = local_m10; // 0x444a28
  x3 = local_m8; // 0x444a24
  memSet(x3, 0xf, w0); // 0x444a2c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x444a38
  w16 = mem(x3, -1); // 0x444a30
  w17 = mem(x0, -1); // 0x444a34
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x444a30
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x444a34
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x444a44
  }
  LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x444a5c
  x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x444a4c
  x2 = "imageUrl" /* pp+0xfa50 */; // 0x444a54
  callIndirect(LR); // 0x444a60
  if (w0 != w22) {
    x4 = x0; // 0x444a74
  } else {
    x4 = "" /* pp+0x148 */; // 0x444a6c
  }
  x0 = x4; // 0x444a7c
  x3 = local_m8; // 0x444a78
  local_m10 = x4; // 0x444a80
  x1 = NULL; // 0x444a88
  x2 = NULL; // 0x444a84
  x4 = 60; // 0x444a8c
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x444a98
  }
  x4 = x4 - 0x5e; // 0x444a9c
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0xd38) /* Obj!? */; // 0x444ab0
    x8 = mem(PP, 0xae0) /* Type */; // 0x444aa8
    sub_0x278d08(); // 0x444ab4
  }
  x0 = local_m10; // 0x444ab8
  x1 = local_m8; // 0x444abc
  memSet(x1, 0xb, w0); // 0x444ac0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x444acc
  w16 = mem(x1, -1); // 0x444ac4
  w17 = mem(x0, -1); // 0x444ac8
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x444ac4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x444ac8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x444ad8
  }
  SP = FP; // 0x444ae0
  x0 = NULL; // 0x444adc
  // frame: FP, LR, mem(SP), 0x10 // 0x444ae4
  return;
}

// GameFruitWinerListInfo_ctor_fromJson
// raw disassembly:
//  0x444b60: stp FP, LR, [SP, #-0x10]!
//  0x444b64: mov FP, SP
//  0x444b68: sub SP, SP, #0x20
//  0x444b6c: mov x4, x1
//  0x444b70: mov x3, x2
//  0x444b74: stur x1, [FP, #-8]
//  0x444b78: stur x2, [FP, #-0x10]
//  0x444b7c: ldr BARRIER, [THR, #0x38]
//  0x444b80: cmp SP, BARRIER
//  0x444b84: b.ls #0x444d68
//  0x444b88: ldur x0, [x3, #-1]
//  0x444b8c: ubfx x0, x0, #0xc, #0x14
//  0x444b90: mov x1, x3
//  0x444b94: add x2, PP, #0xb, lsl #12
//  0x444b98: ldr x2, [x2, #0x730]
//  0x444b9c: sub LR, x0, #1, lsl #12
//  0x444ba0: ldr LR, [x21, LR, lsl #3]
//  0x444ba4: blr LR
//  0x444ba8: cmp w0, w22
//  0x444bac: b.ne #0x444bb8
//  0x444bb0: ldr x5, [PP, #0x148]
//  0x444bb4: b #0x444bbc
//  0x444bb8: mov x5, x0
//  0x444bbc: ldur x4, [FP, #-8]
//  0x444bc0: ldur x3, [FP, #-0x10]
//  0x444bc4: mov x0, x5
//  0x444bc8: stur x5, [FP, #-0x18]
//  0x444bcc: mov x2, NULL
//  0x444bd0: mov x1, NULL
//  0x444bd4: mov x4, #0x3c
//  0x444bd8: tbz w0, #0, #0x444be4
//  0x444bdc: ldur x4, [x0, #-1]
//  0x444be0: ubfx x4, x4, #0xc, #0x14
//  0x444be4: sub x4, x4, #0x5e
//  0x444be8: cmp x4, #1
//  0x444bec: b.ls #0x444c00
//  0x444bf0: ldr x8, [PP, #0xae0]
//  0x444bf4: add x3, PP, #0x11, lsl #12
//  0x444bf8: ldr x3, [x3, #0xd18]
//  0x444bfc: bl #0x278d08
//  0x444c00: ldur x0, [FP, #-0x18]
//  0x444c04: ldur x3, [FP, #-8]
//  0x444c08: stur w0, [x3, #7]
//  0x444c0c: ldurb w16, [x3, #-1]
//  0x444c10: ldurb w17, [x0, #-1]
//  0x444c14: and BARRIER, x17, BARRIER, lsr #2
//  0x444c18: tst BARRIER, HEAP, lsr #32
//  0x444c1c: b.eq #0x444c24
//  0x444c20: bl #0x61e08c
//  0x444c24: ldur x4, [FP, #-0x10]
//  0x444c28: ldur x0, [x4, #-1]
//  0x444c2c: ubfx x0, x0, #0xc, #0x14
//  0x444c30: mov x1, x4
//  0x444c34: add x2, PP, #0xb, lsl #12
//  0x444c38: ldr x2, [x2, #0x718]
//  0x444c3c: sub LR, x0, #1, lsl #12
//  0x444c40: ldr LR, [x21, LR, lsl #3]
//  0x444c44: blr LR
//  0x444c48: cmp w0, w22
//  0x444c4c: b.ne #0x444c58
//  0x444c50: ldr x5, [PP, #0x148]
//  0x444c54: b #0x444c5c
//  0x444c58: mov x5, x0
//  0x444c5c: ldur x3, [FP, #-8]
//  0x444c60: ldur x4, [FP, #-0x10]
//  0x444c64: mov x0, x5
//  0x444c68: stur x5, [FP, #-0x18]
//  0x444c6c: mov x2, NULL
//  0x444c70: mov x1, NULL
//  0x444c74: mov x4, #0x3c
//  0x444c78: tbz w0, #0, #0x444c84
//  0x444c7c: ldur x4, [x0, #-1]
//  0x444c80: ubfx x4, x4, #0xc, #0x14
//  0x444c84: sub x4, x4, #0x5e
//  0x444c88: cmp x4, #1
//  0x444c8c: b.ls #0x444ca0
//  0x444c90: ldr x8, [PP, #0xae0]
//  0x444c94: add x3, PP, #0x11, lsl #12
//  0x444c98: ldr x3, [x3, #0xd28]
//  0x444c9c: bl #0x278d08
//  0x444ca0: ldur x0, [FP, #-0x18]
//  0x444ca4: ldur x3, [FP, #-8]
//  0x444ca8: stur w0, [x3, #0xb]
//  0x444cac: ldurb w16, [x3, #-1]
//  0x444cb0: ldurb w17, [x0, #-1]
//  0x444cb4: and BARRIER, x17, BARRIER, lsr #2
//  0x444cb8: tst BARRIER, HEAP, lsr #32
//  0x444cbc: b.eq #0x444cc4
//  0x444cc0: bl #0x61e08c
//  0x444cc4: ldur x1, [FP, #-0x10]
//  0x444cc8: ldur x0, [x1, #-1]
//  0x444ccc: ubfx x0, x0, #0xc, #0x14
//  0x444cd0: add x2, PP, #0x11, lsl #12
//  0x444cd4: ldr x2, [x2, #0x9c0]
//  0x444cd8: sub LR, x0, #1, lsl #12
//  0x444cdc: ldr LR, [x21, LR, lsl #3]
//  0x444ce0: blr LR
//  0x444ce4: cmp w0, w22
//  0x444ce8: b.ne #0x444cf4
//  0x444cec: mov x1, NULL
//  0x444cf0: b #0x444d24
//  0x444cf4: mov x1, #0x3c
//  0x444cf8: tbz w0, #0, #0x444d04
//  0x444cfc: ldur x1, [x0, #-1]
//  0x444d00: ubfx x1, x1, #0xc, #0x14
//  0x444d04: str x0, [SP]
//  0x444d08: mov x0, x1
//  0x444d0c: ldr x4, [PP, #0x3a8]
//  0x444d10: mov x17, #0x3e07
//  0x444d14: add LR, x0, x17
//  0x444d18: ldr LR, [x21, LR, lsl #3]
//  0x444d1c: blr LR
//  0x444d20: mov x1, x0
//  0x444d24: cmp w1, w22
//  0x444d28: b.ne #0x444d34
//  0x444d2c: ldr x0, [PP, #0x148]
//  0x444d30: b #0x444d38
//  0x444d34: mov x0, x1
//  0x444d38: ldur x1, [FP, #-8]
//  0x444d3c: stur w0, [x1, #0xf]
//  0x444d40: ldurb w16, [x1, #-1]
//  0x444d44: ldurb w17, [x0, #-1]
//  0x444d48: and BARRIER, x17, BARRIER, lsr #2
//  0x444d4c: tst BARRIER, HEAP, lsr #32
//  0x444d50: b.eq #0x444d58
//  0x444d54: bl #0x61e04c
//  0x444d58: mov x0, NULL
//  0x444d5c: mov SP, FP
//  0x444d60: ldp FP, LR, [SP], #0x10
//  0x444d64: ret 
//  0x444d68: bl #0x61fa28
//  0x444d6c: b #0x444b88
//
dynamic GameFruitWinerListInfo_ctor_fromJson() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x444b60
  // frame: FP = SP // 0x444b64
  // frame: SP = SP - 0x20 // 0x444b68
  x3 = x2; // 0x444b70
  x4 = x1; // 0x444b6c
  local_m8 = x1; // 0x444b74
  local_m10 = x2; // 0x444b78
  BARRIER = mem(THR, 0x38); // 0x444b7c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x444d68
  }
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x444ba0
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x444b8c
  x1 = x3; // 0x444b90
  x2 = "signature" /* pp+0xb730 */; // 0x444b98
  callIndirect(LR); // 0x444ba4
  if (w0 != w22) {
    x5 = x0; // 0x444bb8
  } else {
    x5 = "" /* pp+0x148 */; // 0x444bb0
  }
  x0 = x5; // 0x444bc4
  x3 = local_m10; // 0x444bc0
  x4 = local_m8; // 0x444bbc
  local_m18 = x5; // 0x444bc8
  x1 = NULL; // 0x444bd0
  x2 = NULL; // 0x444bcc
  x4 = 60; // 0x444bd4
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x444be0
  }
  x4 = x4 - 0x5e; // 0x444be4
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0xd18) /* Obj!? */; // 0x444bf8
    x8 = mem(PP, 0xae0) /* Type */; // 0x444bf0
    sub_0x278d08(); // 0x444bfc
  }
  x0 = local_m18; // 0x444c00
  x3 = local_m8; // 0x444c04
  memSet(x3, 7, w0); // 0x444c08
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x444c14
  w16 = mem(x3, -1); // 0x444c0c
  w17 = mem(x0, -1); // 0x444c10
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x444c0c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x444c10
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x444c20
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x444c40
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x444c2c
  x1 = local_m10; // 0x444c30
  x2 = "avatarUrl" /* pp+0xb718 */; // 0x444c38
  x4 = local_m10; // 0x444c24
  callIndirect(LR); // 0x444c44
  if (w0 != w22) {
    x5 = x0; // 0x444c58
  } else {
    x5 = "" /* pp+0x148 */; // 0x444c50
  }
  x0 = x5; // 0x444c64
  x3 = local_m8; // 0x444c5c
  x4 = local_m10; // 0x444c60
  local_m18 = x5; // 0x444c68
  x1 = NULL; // 0x444c70
  x2 = NULL; // 0x444c6c
  x4 = 60; // 0x444c74
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x444c80
  }
  x4 = x4 - 0x5e; // 0x444c84
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0xd28) /* Obj!? */; // 0x444c98
    x8 = mem(PP, 0xae0) /* Type */; // 0x444c90
    sub_0x278d08(); // 0x444c9c
  }
  x0 = local_m18; // 0x444ca0
  x3 = local_m8; // 0x444ca4
  memSet(x3, 0xb, w0); // 0x444ca8
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x444cb4
  w16 = mem(x3, -1); // 0x444cac
  w17 = mem(x0, -1); // 0x444cb0
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x444cac
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x444cb0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x444cc0
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x444cdc
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x444ccc
  x1 = local_m10; // 0x444cc4
  x2 = "winCoin" /* pp+0x119c0 */; // 0x444cd4
  callIndirect(LR); // 0x444ce0
  if (w0 != w22) {
    x1 = 60; // 0x444cf4
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x444d00
    }
    local_0 = x0; // 0x444d04
    LR = mem(x21, ((x0 + x17) << 3)); // 0x444d18
    x0 = x1; // 0x444d08
    x17 = 15879; // 0x444d10
    x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x444d0c
    callIndirect(LR); // 0x444d1c
    x1 = x0; // 0x444d20
  } else {
    x1 = NULL; // 0x444cec
  }
  if (w1 != w22) {
    x0 = x1; // 0x444d34
  } else {
    x0 = "" /* pp+0x148 */; // 0x444d2c
  }
  x1 = local_m8; // 0x444d38
  memSet(x1, 0xf, w0); // 0x444d3c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x444d48
  w16 = mem(x1, -1); // 0x444d40
  w17 = mem(x0, -1); // 0x444d44
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x444d40
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x444d44
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x444d54
  }
  SP = FP; // 0x444d5c
  x0 = NULL; // 0x444d58
  // frame: FP, LR, mem(SP), 0x10 // 0x444d60
  return;
}

// GameFruitProcessState_enumToString
// raw disassembly:
//  0x4aebfc: stp FP, LR, [SP, #-0x10]!
//  0x4aec00: mov FP, SP
//  0x4aec04: sub SP, SP, #0x10
//  0x4aec08: mov x0, x1
//  0x4aec0c: stur x1, [FP, #-8]
//  0x4aec10: ldr BARRIER, [THR, #0x38]
//  0x4aec14: cmp SP, BARRIER
//  0x4aec18: b.ls #0x4aec58
//  0x4aec1c: mov x1, NULL
//  0x4aec20: mov x2, #4
//  0x4aec24: bl #0x61f920
//  0x4aec28: add BARRIER, PP, #0x11, lsl #12
//  0x4aec2c: ldr BARRIER, [BARRIER, #0xdf8]
//  0x4aec30: stur w16, [x0, #0xf]
//  0x4aec34: ldur x1, [FP, #-8]
//  0x4aec38: ldur w2, [x1, #0xf]
//  0x4aec3c: add x2, x2, HEAP, lsl #32
//  0x4aec40: stur w2, [x0, #0x13]
//  0x4aec44: str x0, [SP]
//  0x4aec48: bl #0x2ad854
//  0x4aec4c: mov SP, FP
//  0x4aec50: ldp FP, LR, [SP], #0x10
//  0x4aec54: ret 
//  0x4aec58: bl #0x61fa28
//  0x4aec5c: b #0x4aec1c
//
dynamic GameFruitProcessState_enumToString() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4aebfc
  // frame: FP = SP // 0x4aec00
  // frame: SP = SP - 0x10 // 0x4aec04
  x0 = x1; // 0x4aec08
  local_m8 = x1; // 0x4aec0c
  BARRIER = mem(THR, 0x38); // 0x4aec10
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4aec58
  }
  x1 = NULL; // 0x4aec1c
  x2 = 4; // 0x4aec20
  sub_0x61f920(); // 0x4aec24
  BARRIER = "GameFruitProcessState." /* pp+0x11df8 */; // 0x4aec2c
  memSet(x0, 0xf, w16); // 0x4aec30
  w2 = mem((local_m8), 0xf); // 0x4aec38
  x1 = local_m8; // 0x4aec34
  x2 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4aec3c
  memSet(x0, 0x13, w2); // 0x4aec40
  local_0 = x0; // 0x4aec44
  StringBase_interpolate() /* 0x2ad854 */; // 0x4aec48
  SP = FP; // 0x4aec4c
  // frame: FP, LR, mem(SP), 0x10 // 0x4aec50
  return;
}

// GameFruitProcessResult_ctor_fromJson
// raw disassembly:
//  0x4c2fa0: stp FP, LR, [SP, #-0x10]!
//  0x4c2fa4: mov FP, SP
//  0x4c2fa8: sub SP, SP, #0x30
//  0x4c2fac: ldr x0, [PP, #0x40]
//  0x4c2fb0: mov x4, x1
//  0x4c2fb4: mov x3, x2
//  0x4c2fb8: stur x1, [FP, #-8]
//  0x4c2fbc: stur x2, [FP, #-0x10]
//  0x4c2fc0: ldr BARRIER, [THR, #0x38]
//  0x4c2fc4: cmp SP, BARRIER
//  0x4c2fc8: b.ls #0x4c3730
//  0x4c2fcc: stur w0, [x4, #7]
//  0x4c2fd0: stur w0, [x4, #0xb]
//  0x4c2fd4: stur w0, [x4, #0xf]
//  0x4c2fd8: stur w0, [x4, #0x13]
//  0x4c2fdc: stur w0, [x4, #0x17]
//  0x4c2fe0: stur w0, [x4, #0x1b]
//  0x4c2fe4: stur w0, [x4, #0x1f]
//  0x4c2fe8: stur w0, [x4, #0x23]
//  0x4c2fec: stur w0, [x4, #0x27]
//  0x4c2ff0: stur w0, [x4, #0x2b]
//  0x4c2ff4: ldur x0, [x3, #-1]
//  0x4c2ff8: ubfx x0, x0, #0xc, #0x14
//  0x4c2ffc: mov x1, x3
//  0x4c3000: add x2, PP, #8, lsl #12
//  0x4c3004: ldr x2, [x2, #0x9d8]
//  0x4c3008: sub LR, x0, #1, lsl #12
//  0x4c300c: ldr LR, [x21, LR, lsl #3]
//  0x4c3010: blr LR
//  0x4c3014: cmp w0, w22
//  0x4c3018: b.ne #0x4c3024
//  0x4c301c: mov x3, #0
//  0x4c3020: b #0x4c3028
//  0x4c3024: mov x3, x0
//  0x4c3028: mov x0, x3
//  0x4c302c: stur x3, [FP, #-0x18]
//  0x4c3030: mov x2, NULL
//  0x4c3034: mov x1, NULL
//  0x4c3038: tbz w0, #0, #0x4c3060
//  0x4c303c: ldur x4, [x0, #-1]
//  0x4c3040: ubfx x4, x4, #0xc, #0x14
//  0x4c3044: sub x4, x4, #0x3c
//  0x4c3048: cmp x4, #1
//  0x4c304c: b.ls #0x4c3060
//  0x4c3050: ldr x8, [PP, #0x1170]
//  0x4c3054: add x3, PP, #0xb, lsl #12
//  0x4c3058: ldr x3, [x3, #0x860]
//  0x4c305c: bl #0x62aa34
//  0x4c3060: ldur x0, [FP, #-0x18]
//  0x4c3064: sbfx x1, x0, #1, #0x1f
//  0x4c3068: tbz w0, #0, #0x4c3070
//  0x4c306c: ldur x1, [x0, #7]
//  0x4c3070: tbnz x1, #0x3f, #0x4c307c
//  0x4c3074: cmp x1, #3
//  0x4c3078: b.le #0x4c3084
//  0x4c307c: mov x5, #0
//  0x4c3080: b #0x4c3088
//  0x4c3084: mov x5, x1
//  0x4c3088: ldur x4, [FP, #-8]
//  0x4c308c: ldur x3, [FP, #-0x10]
//  0x4c3090: add x2, PP, #0xb, lsl #12
//  0x4c3094: ldr x2, [x2, #0x870]
//  0x4c3098: mov x1, x5
//  0x4c309c: mov x0, #4
//  0x4c30a0: cmp x1, x0
//  0x4c30a4: b.hs #0x4c3738
//  0x4c30a8: add BARRIER, x2, x5, lsl #2
//  0x4c30ac: ldur w0, [BARRIER, #0xf]
//  0x4c30b0: add x0, x0, HEAP, lsl #32
//  0x4c30b4: stur w0, [x4, #7]
//  0x4c30b8: ldurb w16, [x4, #-1]
//  0x4c30bc: ldurb w17, [x0, #-1]
//  0x4c30c0: and BARRIER, x17, BARRIER, lsr #2
//  0x4c30c4: tst BARRIER, HEAP, lsr #32
//  0x4c30c8: b.eq #0x4c30d0
//  0x4c30cc: bl #0x61e0ac
//  0x4c30d0: ldur x0, [x3, #-1]
//  0x4c30d4: ubfx x0, x0, #0xc, #0x14
//  0x4c30d8: mov x1, x3
//  0x4c30dc: add x2, PP, #0xb, lsl #12
//  0x4c30e0: ldr x2, [x2, #0x878]
//  0x4c30e4: sub LR, x0, #1, lsl #12
//  0x4c30e8: ldr LR, [x21, LR, lsl #3]
//  0x4c30ec: blr LR
//  0x4c30f0: cmp w0, w22
//  0x4c30f4: b.ne #0x4c3100
//  0x4c30f8: mov x5, #0
//  0x4c30fc: b #0x4c3104
//  0x4c3100: mov x5, x0
//  0x4c3104: ldur x4, [FP, #-8]
//  0x4c3108: ldur x3, [FP, #-0x10]
//  0x4c310c: mov x0, x5
//  0x4c3110: stur x5, [FP, #-0x18]
//  0x4c3114: mov x2, NULL
//  0x4c3118: mov x1, NULL
//  0x4c311c: tbz w0, #0, #0x4c3144
//  0x4c3120: ldur x4, [x0, #-1]
//  0x4c3124: ubfx x4, x4, #0xc, #0x14
//  0x4c3128: sub x4, x4, #0x3c
//  0x4c312c: cmp x4, #1
//  0x4c3130: b.ls #0x4c3144
//  0x4c3134: ldr x8, [PP, #0x1170]
//  0x4c3138: add x3, PP, #0xb, lsl #12
//  0x4c313c: ldr x3, [x3, #0x880]
//  0x4c3140: bl #0x62aa34
//  0x4c3144: ldur x0, [FP, #-0x18]
//  0x4c3148: ldur x3, [FP, #-8]
//  0x4c314c: stur w0, [x3, #0xb]
//  0x4c3150: tbz w0, #0, #0x4c316c
//  0x4c3154: ldurb w16, [x3, #-1]
//  0x4c3158: ldurb w17, [x0, #-1]
//  0x4c315c: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3160: tst BARRIER, HEAP, lsr #32
//  0x4c3164: b.eq #0x4c316c
//  0x4c3168: bl #0x61e08c
//  0x4c316c: ldur x4, [FP, #-0x10]
//  0x4c3170: ldur x0, [x4, #-1]
//  0x4c3174: ubfx x0, x0, #0xc, #0x14
//  0x4c3178: mov x1, x4
//  0x4c317c: add x2, PP, #0xb, lsl #12
//  0x4c3180: ldr x2, [x2, #0x890]
//  0x4c3184: sub LR, x0, #1, lsl #12
//  0x4c3188: ldr LR, [x21, LR, lsl #3]
//  0x4c318c: blr LR
//  0x4c3190: cmp w0, w22
//  0x4c3194: b.ne #0x4c31a0
//  0x4c3198: orr x5, xzr, #0xfffffffffffffffe
//  0x4c319c: b #0x4c31a4
//  0x4c31a0: mov x5, x0
//  0x4c31a4: ldur x3, [FP, #-8]
//  0x4c31a8: ldur x4, [FP, #-0x10]
//  0x4c31ac: mov x0, x5
//  0x4c31b0: stur x5, [FP, #-0x18]
//  0x4c31b4: mov x2, NULL
//  0x4c31b8: mov x1, NULL
//  0x4c31bc: tbz w0, #0, #0x4c31e4
//  0x4c31c0: ldur x4, [x0, #-1]
//  0x4c31c4: ubfx x4, x4, #0xc, #0x14
//  0x4c31c8: sub x4, x4, #0x3c
//  0x4c31cc: cmp x4, #1
//  0x4c31d0: b.ls #0x4c31e4
//  0x4c31d4: ldr x8, [PP, #0x1170]
//  0x4c31d8: add x3, PP, #0xb, lsl #12
//  0x4c31dc: ldr x3, [x3, #0x898]
//  0x4c31e0: bl #0x62aa34
//  0x4c31e4: ldur x0, [FP, #-0x18]
//  0x4c31e8: ldur x3, [FP, #-8]
//  0x4c31ec: stur w0, [x3, #0xf]
//  0x4c31f0: tbz w0, #0, #0x4c320c
//  0x4c31f4: ldurb w16, [x3, #-1]
//  0x4c31f8: ldurb w17, [x0, #-1]
//  0x4c31fc: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3200: tst BARRIER, HEAP, lsr #32
//  0x4c3204: b.eq #0x4c320c
//  0x4c3208: bl #0x61e08c
//  0x4c320c: ldur x4, [FP, #-0x10]
//  0x4c3210: ldur x0, [x4, #-1]
//  0x4c3214: ubfx x0, x0, #0xc, #0x14
//  0x4c3218: mov x1, x4
//  0x4c321c: add x2, PP, #0xb, lsl #12
//  0x4c3220: ldr x2, [x2, #0x8a8]
//  0x4c3224: sub LR, x0, #1, lsl #12
//  0x4c3228: ldr LR, [x21, LR, lsl #3]
//  0x4c322c: blr LR
//  0x4c3230: cmp w0, w22
//  0x4c3234: b.ne #0x4c3240
//  0x4c3238: mov x5, #0
//  0x4c323c: b #0x4c3244
//  0x4c3240: mov x5, x0
//  0x4c3244: ldur x3, [FP, #-8]
//  0x4c3248: ldur x4, [FP, #-0x10]
//  0x4c324c: mov x0, x5
//  0x4c3250: stur x5, [FP, #-0x18]
//  0x4c3254: mov x2, NULL
//  0x4c3258: mov x1, NULL
//  0x4c325c: tbz w0, #0, #0x4c3284
//  0x4c3260: ldur x4, [x0, #-1]
//  0x4c3264: ubfx x4, x4, #0xc, #0x14
//  0x4c3268: sub x4, x4, #0x3c
//  0x4c326c: cmp x4, #1
//  0x4c3270: b.ls #0x4c3284
//  0x4c3274: ldr x8, [PP, #0x1170]
//  0x4c3278: add x3, PP, #0xb, lsl #12
//  0x4c327c: ldr x3, [x3, #0x8b0]
//  0x4c3280: bl #0x62aa34
//  0x4c3284: ldur x0, [FP, #-0x18]
//  0x4c3288: ldur x3, [FP, #-8]
//  0x4c328c: stur w0, [x3, #0x13]
//  0x4c3290: tbz w0, #0, #0x4c32ac
//  0x4c3294: ldurb w16, [x3, #-1]
//  0x4c3298: ldurb w17, [x0, #-1]
//  0x4c329c: and BARRIER, x17, BARRIER, lsr #2
//  0x4c32a0: tst BARRIER, HEAP, lsr #32
//  0x4c32a4: b.eq #0x4c32ac
//  0x4c32a8: bl #0x61e08c
//  0x4c32ac: ldur x4, [FP, #-0x10]
//  0x4c32b0: ldur x0, [x4, #-1]
//  0x4c32b4: ubfx x0, x0, #0xc, #0x14
//  0x4c32b8: mov x1, x4
//  0x4c32bc: add x2, PP, #0xb, lsl #12
//  0x4c32c0: ldr x2, [x2, #0x8c0]
//  0x4c32c4: sub LR, x0, #1, lsl #12
//  0x4c32c8: ldr LR, [x21, LR, lsl #3]
//  0x4c32cc: blr LR
//  0x4c32d0: cmp w0, w22
//  0x4c32d4: b.ne #0x4c32e0
//  0x4c32d8: mov x5, #0
//  0x4c32dc: b #0x4c32e4
//  0x4c32e0: mov x5, x0
//  0x4c32e4: ldur x3, [FP, #-8]
//  0x4c32e8: ldur x4, [FP, #-0x10]
//  0x4c32ec: mov x0, x5
//  0x4c32f0: stur x5, [FP, #-0x18]
//  0x4c32f4: mov x2, NULL
//  0x4c32f8: mov x1, NULL
//  0x4c32fc: tbz w0, #0, #0x4c3324
//  0x4c3300: ldur x4, [x0, #-1]
//  0x4c3304: ubfx x4, x4, #0xc, #0x14
//  0x4c3308: sub x4, x4, #0x3c
//  0x4c330c: cmp x4, #1
//  0x4c3310: b.ls #0x4c3324
//  0x4c3314: ldr x8, [PP, #0x1170]
//  0x4c3318: add x3, PP, #0xb, lsl #12
//  0x4c331c: ldr x3, [x3, #0x8c8]
//  0x4c3320: bl #0x62aa34
//  0x4c3324: ldur x0, [FP, #-0x18]
//  0x4c3328: ldur x3, [FP, #-8]
//  0x4c332c: stur w0, [x3, #0x17]
//  0x4c3330: tbz w0, #0, #0x4c334c
//  0x4c3334: ldurb w16, [x3, #-1]
//  0x4c3338: ldurb w17, [x0, #-1]
//  0x4c333c: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3340: tst BARRIER, HEAP, lsr #32
//  0x4c3344: b.eq #0x4c334c
//  0x4c3348: bl #0x61e08c
//  0x4c334c: ldur x4, [FP, #-0x10]
//  0x4c3350: ldur x0, [x4, #-1]
//  0x4c3354: ubfx x0, x0, #0xc, #0x14
//  0x4c3358: mov x1, x4
//  0x4c335c: add x2, PP, #0xb, lsl #12
//  0x4c3360: ldr x2, [x2, #0x8d8]
//  0x4c3364: sub LR, x0, #1, lsl #12
//  0x4c3368: ldr LR, [x21, LR, lsl #3]
//  0x4c336c: blr LR
//  0x4c3370: cmp w0, w22
//  0x4c3374: b.ne #0x4c3380
//  0x4c3378: mov x5, #0
//  0x4c337c: b #0x4c3384
//  0x4c3380: mov x5, x0
//  0x4c3384: ldur x3, [FP, #-8]
//  0x4c3388: ldur x4, [FP, #-0x10]
//  0x4c338c: mov x0, x5
//  0x4c3390: stur x5, [FP, #-0x18]
//  0x4c3394: mov x2, NULL
//  0x4c3398: mov x1, NULL
//  0x4c339c: tbz w0, #0, #0x4c33c4
//  0x4c33a0: ldur x4, [x0, #-1]
//  0x4c33a4: ubfx x4, x4, #0xc, #0x14
//  0x4c33a8: sub x4, x4, #0x3c
//  0x4c33ac: cmp x4, #1
//  0x4c33b0: b.ls #0x4c33c4
//  0x4c33b4: ldr x8, [PP, #0x1170]
//  0x4c33b8: add x3, PP, #0xb, lsl #12
//  0x4c33bc: ldr x3, [x3, #0x8e0]
//  0x4c33c0: bl #0x62aa34
//  0x4c33c4: ldur x0, [FP, #-0x18]
//  0x4c33c8: ldur x3, [FP, #-8]
//  0x4c33cc: stur w0, [x3, #0x1b]
//  0x4c33d0: tbz w0, #0, #0x4c33ec
//  0x4c33d4: ldurb w16, [x3, #-1]
//  0x4c33d8: ldurb w17, [x0, #-1]
//  0x4c33dc: and BARRIER, x17, BARRIER, lsr #2
//  0x4c33e0: tst BARRIER, HEAP, lsr #32
//  0x4c33e4: b.eq #0x4c33ec
//  0x4c33e8: bl #0x61e08c
//  0x4c33ec: ldur x4, [FP, #-0x10]
//  0x4c33f0: ldur x0, [x4, #-1]
//  0x4c33f4: ubfx x0, x0, #0xc, #0x14
//  0x4c33f8: mov x1, x4
//  0x4c33fc: add x2, PP, #0xb, lsl #12
//  0x4c3400: ldr x2, [x2, #0x8f0]
//  0x4c3404: sub LR, x0, #1, lsl #12
//  0x4c3408: ldr LR, [x21, LR, lsl #3]
//  0x4c340c: blr LR
//  0x4c3410: cmp w0, w22
//  0x4c3414: b.ne #0x4c3420
//  0x4c3418: mov x5, #0
//  0x4c341c: b #0x4c3424
//  0x4c3420: mov x5, x0
//  0x4c3424: ldur x3, [FP, #-8]
//  0x4c3428: ldur x4, [FP, #-0x10]
//  0x4c342c: mov x0, x5
//  0x4c3430: stur x5, [FP, #-0x18]
//  0x4c3434: mov x2, NULL
//  0x4c3438: mov x1, NULL
//  0x4c343c: tbz w0, #0, #0x4c3464
//  0x4c3440: ldur x4, [x0, #-1]
//  0x4c3444: ubfx x4, x4, #0xc, #0x14
//  0x4c3448: sub x4, x4, #0x3c
//  0x4c344c: cmp x4, #1
//  0x4c3450: b.ls #0x4c3464
//  0x4c3454: ldr x8, [PP, #0x1170]
//  0x4c3458: add x3, PP, #0xb, lsl #12
//  0x4c345c: ldr x3, [x3, #0x8f8]
//  0x4c3460: bl #0x62aa34
//  0x4c3464: ldur x0, [FP, #-0x18]
//  0x4c3468: ldur x3, [FP, #-8]
//  0x4c346c: stur w0, [x3, #0x1f]
//  0x4c3470: tbz w0, #0, #0x4c348c
//  0x4c3474: ldurb w16, [x3, #-1]
//  0x4c3478: ldurb w17, [x0, #-1]
//  0x4c347c: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3480: tst BARRIER, HEAP, lsr #32
//  0x4c3484: b.eq #0x4c348c
//  0x4c3488: bl #0x61e08c
//  0x4c348c: ldur x4, [FP, #-0x10]
//  0x4c3490: ldur x0, [x4, #-1]
//  0x4c3494: ubfx x0, x0, #0xc, #0x14
//  0x4c3498: mov x1, x4
//  0x4c349c: add x2, PP, #0xb, lsl #12
//  0x4c34a0: ldr x2, [x2, #0x908]
//  0x4c34a4: sub LR, x0, #1, lsl #12
//  0x4c34a8: ldr LR, [x21, LR, lsl #3]
//  0x4c34ac: blr LR
//  0x4c34b0: cmp w0, w22
//  0x4c34b4: b.ne #0x4c34bc
//  0x4c34b8: mov x0, #0
//  0x4c34bc: ldur x3, [FP, #-0x10]
//  0x4c34c0: mov x2, NULL
//  0x4c34c4: mov x1, NULL
//  0x4c34c8: tbz w0, #0, #0x4c34f0
//  0x4c34cc: ldur x4, [x0, #-1]
//  0x4c34d0: ubfx x4, x4, #0xc, #0x14
//  0x4c34d4: sub x4, x4, #0x3c
//  0x4c34d8: cmp x4, #1
//  0x4c34dc: b.ls #0x4c34f0
//  0x4c34e0: ldr x8, [PP, #0x1170]
//  0x4c34e4: add x3, PP, #0xb, lsl #12
//  0x4c34e8: ldr x3, [x3, #0x910]
//  0x4c34ec: bl #0x62aa34
//  0x4c34f0: ldur x3, [FP, #-0x10]
//  0x4c34f4: ldur x0, [x3, #-1]
//  0x4c34f8: ubfx x0, x0, #0xc, #0x14
//  0x4c34fc: mov x1, x3
//  0x4c3500: add x2, PP, #0xb, lsl #12
//  0x4c3504: ldr x2, [x2, #0x920]
//  0x4c3508: sub LR, x0, #1, lsl #12
//  0x4c350c: ldr LR, [x21, LR, lsl #3]
//  0x4c3510: blr LR
//  0x4c3514: cmp w0, w22
//  0x4c3518: b.ne #0x4c3524
//  0x4c351c: mov x5, #0
//  0x4c3520: b #0x4c3528
//  0x4c3524: mov x5, x0
//  0x4c3528: ldur x4, [FP, #-8]
//  0x4c352c: ldur x3, [FP, #-0x10]
//  0x4c3530: mov x0, x5
//  0x4c3534: stur x5, [FP, #-0x18]
//  0x4c3538: mov x2, NULL
//  0x4c353c: mov x1, NULL
//  0x4c3540: tbz w0, #0, #0x4c3568
//  0x4c3544: ldur x4, [x0, #-1]
//  0x4c3548: ubfx x4, x4, #0xc, #0x14
//  0x4c354c: sub x4, x4, #0x3c
//  0x4c3550: cmp x4, #1
//  0x4c3554: b.ls #0x4c3568
//  0x4c3558: ldr x8, [PP, #0x1170]
//  0x4c355c: add x3, PP, #0xb, lsl #12
//  0x4c3560: ldr x3, [x3, #0x928]
//  0x4c3564: bl #0x62aa34
//  0x4c3568: ldur x0, [FP, #-0x18]
//  0x4c356c: ldur x3, [FP, #-8]
//  0x4c3570: stur w0, [x3, #0x23]
//  0x4c3574: tbz w0, #0, #0x4c3590
//  0x4c3578: ldurb w16, [x3, #-1]
//  0x4c357c: ldurb w17, [x0, #-1]
//  0x4c3580: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3584: tst BARRIER, HEAP, lsr #32
//  0x4c3588: b.eq #0x4c3590
//  0x4c358c: bl #0x61e08c
//  0x4c3590: ldur x4, [FP, #-0x10]
//  0x4c3594: ldur x0, [x4, #-1]
//  0x4c3598: ubfx x0, x0, #0xc, #0x14
//  0x4c359c: mov x1, x4
//  0x4c35a0: add x2, PP, #0xb, lsl #12
//  0x4c35a4: ldr x2, [x2, #0x938]
//  0x4c35a8: sub LR, x0, #1, lsl #12
//  0x4c35ac: ldr LR, [x21, LR, lsl #3]
//  0x4c35b0: blr LR
//  0x4c35b4: cmp w0, w22
//  0x4c35b8: b.ne #0x4c35c4
//  0x4c35bc: mov x5, #0
//  0x4c35c0: b #0x4c35c8
//  0x4c35c4: mov x5, x0
//  0x4c35c8: ldur x3, [FP, #-8]
//  0x4c35cc: ldur x4, [FP, #-0x10]
//  0x4c35d0: mov x0, x5
//  0x4c35d4: stur x5, [FP, #-0x18]
//  0x4c35d8: mov x2, NULL
//  0x4c35dc: mov x1, NULL
//  0x4c35e0: tbz w0, #0, #0x4c3608
//  0x4c35e4: ldur x4, [x0, #-1]
//  0x4c35e8: ubfx x4, x4, #0xc, #0x14
//  0x4c35ec: sub x4, x4, #0x3c
//  0x4c35f0: cmp x4, #1
//  0x4c35f4: b.ls #0x4c3608
//  0x4c35f8: ldr x8, [PP, #0x1170]
//  0x4c35fc: add x3, PP, #0xb, lsl #12
//  0x4c3600: ldr x3, [x3, #0x940]
//  0x4c3604: bl #0x62aa34
//  0x4c3608: ldur x0, [FP, #-0x18]
//  0x4c360c: ldur x3, [FP, #-8]
//  0x4c3610: stur w0, [x3, #0x27]
//  0x4c3614: tbz w0, #0, #0x4c3630
//  0x4c3618: ldurb w16, [x3, #-1]
//  0x4c361c: ldurb w17, [x0, #-1]
//  0x4c3620: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3624: tst BARRIER, HEAP, lsr #32
//  0x4c3628: b.eq #0x4c3630
//  0x4c362c: bl #0x61e08c
//  0x4c3630: ldur x1, [FP, #-0x10]
//  0x4c3634: ldur x0, [x1, #-1]
//  0x4c3638: ubfx x0, x0, #0xc, #0x14
//  0x4c363c: add x2, PP, #0xb, lsl #12
//  0x4c3640: ldr x2, [x2, #0x950]
//  0x4c3644: sub LR, x0, #1, lsl #12
//  0x4c3648: ldr LR, [x21, LR, lsl #3]
//  0x4c364c: blr LR
//  0x4c3650: cmp w0, w22
//  0x4c3654: b.ne #0x4c366c
//  0x4c3658: mov x1, NULL
//  0x4c365c: mov x2, #0
//  0x4c3660: bl #0x277268
//  0x4c3664: mov x4, x0
//  0x4c3668: b #0x4c3670
//  0x4c366c: mov x4, x0
//  0x4c3670: ldur x3, [FP, #-8]
//  0x4c3674: mov x0, x4
//  0x4c3678: stur x4, [FP, #-0x10]
//  0x4c367c: mov x2, NULL
//  0x4c3680: mov x1, NULL
//  0x4c3684: ldr x8, [PP, #0xfa8]
//  0x4c3688: add x3, PP, #0xb, lsl #12
//  0x4c368c: ldr x3, [x3, #0x958]
//  0x4c3690: bl #0x285664
//  0x4c3694: add x1, PP, #0xb, lsl #12
//  0x4c3698: ldr x1, [x1, #0x968]
//  0x4c369c: mov x2, NULL
//  0x4c36a0: bl #0x61ec54
//  0x4c36a4: mov x1, x0
//  0x4c36a8: ldur x0, [FP, #-0x10]
//  0x4c36ac: ldur x2, [x0, #-1]
//  0x4c36b0: ubfx x2, x2, #0xc, #0x14
//  0x4c36b4: add BARRIER, PP, #0xb, lsl #12
//  0x4c36b8: ldr BARRIER, [BARRIER, #0x858]
//  0x4c36bc: stp x0, BARRIER, [SP, #8]
//  0x4c36c0: str x1, [SP]
//  0x4c36c4: mov x0, x2
//  0x4c36c8: ldr x4, [PP, #0x58]
//  0x4c36cc: mov x17, #0x86d9
//  0x4c36d0: add LR, x0, x17
//  0x4c36d4: ldr LR, [x21, LR, lsl #3]
//  0x4c36d8: blr LR
//  0x4c36dc: ldur x1, [x0, #-1]
//  0x4c36e0: ubfx x1, x1, #0xc, #0x14
//  0x4c36e4: mov BARRIER, x0
//  0x4c36e8: mov x0, x1
//  0x4c36ec: mov x1, BARRIER
//  0x4c36f0: ldr x4, [PP, #0x4c0]
//  0x4c36f4: add LR, x0, #0x35e
//  0x4c36f8: ldr LR, [x21, LR, lsl #3]
//  0x4c36fc: blr LR
//  0x4c3700: ldur x1, [FP, #-8]
//  0x4c3704: stur w0, [x1, #0x2b]
//  0x4c3708: ldurb w16, [x1, #-1]
//  0x4c370c: ldurb w17, [x0, #-1]
//  0x4c3710: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3714: tst BARRIER, HEAP, lsr #32
//  0x4c3718: b.eq #0x4c3720
//  0x4c371c: bl #0x61e04c
//  0x4c3720: mov x0, NULL
//  0x4c3724: mov SP, FP
//  0x4c3728: ldp FP, LR, [SP], #0x10
//  0x4c372c: ret 
//  0x4c3730: bl #0x61fa28
//  0x4c3734: b #0x4c2fcc
//  0x4c3738: bl #0x61fe70
//
dynamic GameFruitProcessResult_ctor_fromJson() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
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
  dynamic x4;
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c2fa0
  // frame: FP = SP // 0x4c2fa4
  // frame: SP = SP - 0x30 // 0x4c2fa8
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4c2fac
  x3 = x2; // 0x4c2fb4
  x4 = x1; // 0x4c2fb0
  local_m8 = x1; // 0x4c2fb8
  local_m10 = x2; // 0x4c2fbc
  BARRIER = mem(THR, 0x38); // 0x4c2fc0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c3730
  }
  memSet(x4, 7, w0); // 0x4c2fcc
  memSet(x4, 0xb, w0); // 0x4c2fd0
  memSet(x4, 0xf, w0); // 0x4c2fd4
  memSet(x4, 0x13, w0); // 0x4c2fd8
  memSet(x4, 0x17, w0); // 0x4c2fdc
  memSet(x4, 0x1b, w0); // 0x4c2fe0
  memSet(x4, 0x1f, w0); // 0x4c2fe4
  memSet(x4, 0x23, w0); // 0x4c2fe8
  memSet(x4, 0x27, w0); // 0x4c2fec
  memSet(x4, 0x2b, w0); // 0x4c2ff0
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4c300c
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x4c2ff8
  x1 = x3; // 0x4c2ffc
  x2 = "state" /* pp+0x89d8 */; // 0x4c3004
  callIndirect(LR); // 0x4c3010
  if (w0 != w22) {
    x3 = x0; // 0x4c3024
  } else {
    x3 = 0; // 0x4c301c
  }
  x0 = x3; // 0x4c3028
  local_m18 = x3; // 0x4c302c
  x1 = NULL; // 0x4c3034
  x2 = NULL; // 0x4c3030
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4c3044
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0xb000), 0x860) /* Obj!? */; // 0x4c3058
      x8 = mem(PP, 0x1170) /* Type */; // 0x4c3050
      sub_0x62aa34(); // 0x4c305c
    }
  }
  x0 = local_m18; // 0x4c3060
  x1 = ((local_m18) >> 1) & 0x7fffffff; // 0x4c3064
  if (x0 & (1 << 0) == 0) {
  } else {
    x1 = mem(x0, 7); /* GameFruitProcessResult.state (off 0x8) */  // 0x4c306c
  }
  if (x1 & (1 << 0x3f) != 0) {
  } else {
    if (x1 <= 3) {
      x5 = x1; // 0x4c3084
    } else {
      x5 = 0; // 0x4c307c
    }
    x0 = 4; // 0x4c309c
    x1 = x5; // 0x4c3098
    x2 = mem((PP + 0xb000), 0x870) /* ImmutableArray */; // 0x4c3094
    x3 = local_m10; // 0x4c308c
    x4 = local_m8; // 0x4c3088
    if (x1 >= x0) {
      RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x4c3738
    }
    BARRIER = x2 + (x5 << 2); // 0x4c30a8
    w0 = mem((x2 + (x5 << 2)), 0xf); // 0x4c30ac
    x0 = ((mem((x2 + (x5 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4c30b0
    memSet(x4, 7, w0); // 0x4c30b4
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c30c0
    w16 = mem(x4, -1); // 0x4c30b8
    w17 = mem(x0, -1); // 0x4c30bc
    x16 = (mem(x4, -1)) & 0xffffffff; // 0x4c30b8
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c30bc
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x4() /* 0x61e0ac */; // 0x4c30cc
    }
    LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4c30e8
    x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x4c30d4
    x1 = x3; // 0x4c30d8
    x2 = "currentTimes" /* pp+0xb878 */; // 0x4c30e0
    callIndirect(LR); // 0x4c30ec
    if (w0 != w22) {
      x5 = x0; // 0x4c3100
    } else {
      x5 = 0; // 0x4c30f8
    }
    x0 = x5; // 0x4c310c
    x3 = local_m10; // 0x4c3108
    x4 = local_m8; // 0x4c3104
    local_m18 = x5; // 0x4c3110
    x1 = NULL; // 0x4c3118
    x2 = NULL; // 0x4c3114
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4c3128
      if (x4 <= 1) {
      } else {
        x3 = mem((PP + 0xb000), 0x880) /* Obj!? */; // 0x4c313c
        x8 = mem(PP, 0x1170) /* Type */; // 0x4c3134
        sub_0x62aa34(); // 0x4c3140
      }
    }
    x0 = local_m18; // 0x4c3144
    x3 = local_m8; // 0x4c3148
    memSet(x3, 0xb, w0); // 0x4c314c
    if (x0 & (1 << 0) == 0) {
    } else {
      BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c315c
      w17 = mem(x0, -1); // 0x4c3158
      x16 = w16 & 0xffffffff; // 0x4c3154
      x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3158
      if ((BARRIER & (HEAP >> 32)) == 0) {
      } else {
        WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c3168
      }
    }
    LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4c3188
    x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4c3174
    x1 = local_m10; // 0x4c3178
    x2 = "currentResult" /* pp+0xb890 */; // 0x4c3180
    x4 = local_m10; // 0x4c316c
    callIndirect(LR); // 0x4c318c
    if (w0 != w22) {
      x5 = x0; // 0x4c31a0
    } else {
      x5 = xzr | 0xfffffffffffffffe; // 0x4c3198
    }
    x0 = x5; // 0x4c31ac
    x3 = local_m8; // 0x4c31a4
    x4 = local_m10; // 0x4c31a8
    local_m18 = x5; // 0x4c31b0
    x1 = NULL; // 0x4c31b8
    x2 = NULL; // 0x4c31b4
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4c31c8
      if (x4 <= 1) {
      } else {
        x3 = mem((PP + 0xb000), 0x898) /* Obj!? */; // 0x4c31dc
        x8 = mem(PP, 0x1170) /* Type */; // 0x4c31d4
        sub_0x62aa34(); // 0x4c31e0
      }
    }
    x0 = local_m18; // 0x4c31e4
    x3 = local_m8; // 0x4c31e8
    memSet(x3, 0xf, w0); // 0x4c31ec
    if (x0 & (1 << 0) == 0) {
    } else {
      BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c31fc
      w17 = mem(x0, -1); // 0x4c31f8
      x16 = w16 & 0xffffffff; // 0x4c31f4
      x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c31f8
      if ((BARRIER & (HEAP >> 32)) == 0) {
      } else {
        WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c3208
      }
    }
    LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4c3228
    x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4c3214
    x1 = local_m10; // 0x4c3218
    x2 = "todayWinCoin" /* pp+0xb8a8 */; // 0x4c3220
    x4 = local_m10; // 0x4c320c
    callIndirect(LR); // 0x4c322c
    if (w0 != w22) {
      x5 = x0; // 0x4c3240
    } else {
      x5 = 0; // 0x4c3238
    }
    x0 = x5; // 0x4c324c
    x3 = local_m8; // 0x4c3244
    x4 = local_m10; // 0x4c3248
    local_m18 = x5; // 0x4c3250
    x1 = NULL; // 0x4c3258
    x2 = NULL; // 0x4c3254
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4c3268
      if (x4 <= 1) {
      } else {
        x3 = mem((PP + 0xb000), 0x8b0) /* Obj!? */; // 0x4c327c
        x8 = mem(PP, 0x1170) /* Type */; // 0x4c3274
        sub_0x62aa34(); // 0x4c3280
      }
    }
    x0 = local_m18; // 0x4c3284
    x3 = local_m8; // 0x4c3288
    memSet(x3, 0x13, w0); // 0x4c328c
    if (x0 & (1 << 0) == 0) {
    } else {
      BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c329c
      w17 = mem(x0, -1); // 0x4c3298
      x16 = w16 & 0xffffffff; // 0x4c3294
      x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3298
      if ((BARRIER & (HEAP >> 32)) == 0) {
      } else {
        WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c32a8
      }
    }
    LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4c32c8
    x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4c32b4
    x1 = local_m10; // 0x4c32b8
    x2 = "totalMs" /* pp+0xb8c0 */; // 0x4c32c0
    x4 = local_m10; // 0x4c32ac
    callIndirect(LR); // 0x4c32cc
    if (w0 != w22) {
      x5 = x0; // 0x4c32e0
    } else {
      x5 = 0; // 0x4c32d8
    }
    x0 = x5; // 0x4c32ec
    x3 = local_m8; // 0x4c32e4
    x4 = local_m10; // 0x4c32e8
    local_m18 = x5; // 0x4c32f0
    x1 = NULL; // 0x4c32f8
    x2 = NULL; // 0x4c32f4
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4c3308
      if (x4 <= 1) {
      } else {
        x3 = mem((PP + 0xb000), 0x8c8) /* Obj!? */; // 0x4c331c
        x8 = mem(PP, 0x1170) /* Type */; // 0x4c3314
        sub_0x62aa34(); // 0x4c3320
      }
    }
    x0 = local_m18; // 0x4c3324
    x3 = local_m8; // 0x4c3328
    memSet(x3, 0x17, w0); // 0x4c332c
    if (x0 & (1 << 0) == 0) {
    } else {
      BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c333c
      w17 = mem(x0, -1); // 0x4c3338
      x16 = w16 & 0xffffffff; // 0x4c3334
      x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3338
      if ((BARRIER & (HEAP >> 32)) == 0) {
      } else {
        WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c3348
      }
    }
    LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4c3368
    x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4c3354
    x1 = local_m10; // 0x4c3358
    x2 = "totalBetMs" /* pp+0xb8d8 */; // 0x4c3360
    x4 = local_m10; // 0x4c334c
    callIndirect(LR); // 0x4c336c
    if (w0 != w22) {
      x5 = x0; // 0x4c3380
    } else {
      x5 = 0; // 0x4c3378
    }
    x0 = x5; // 0x4c338c
    x3 = local_m8; // 0x4c3384
    x4 = local_m10; // 0x4c3388
    local_m18 = x5; // 0x4c3390
    x1 = NULL; // 0x4c3398
    x2 = NULL; // 0x4c3394
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4c33a8
      if (x4 <= 1) {
      } else {
        x3 = mem((PP + 0xb000), 0x8e0) /* Obj!? */; // 0x4c33bc
        x8 = mem(PP, 0x1170) /* Type */; // 0x4c33b4
        sub_0x62aa34(); // 0x4c33c0
      }
    }
    x0 = local_m18; // 0x4c33c4
    x3 = local_m8; // 0x4c33c8
    memSet(x3, 0x1b, w0); // 0x4c33cc
    if (x0 & (1 << 0) == 0) {
    } else {
      BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c33dc
      w17 = mem(x0, -1); // 0x4c33d8
      x16 = w16 & 0xffffffff; // 0x4c33d4
      x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c33d8
      if ((BARRIER & (HEAP >> 32)) == 0) {
      } else {
        WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c33e8
      }
    }
    LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4c3408
    x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4c33f4
    x1 = local_m10; // 0x4c33f8
    x2 = "totalDistributeMs" /* pp+0xb8f0 */; // 0x4c3400
    x4 = local_m10; // 0x4c33ec
    callIndirect(LR); // 0x4c340c
    if (w0 != w22) {
      x5 = x0; // 0x4c3420
    } else {
      x5 = 0; // 0x4c3418
    }
    x0 = x5; // 0x4c342c
    x3 = local_m8; // 0x4c3424
    x4 = local_m10; // 0x4c3428
    local_m18 = x5; // 0x4c3430
    x1 = NULL; // 0x4c3438
    x2 = NULL; // 0x4c3434
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4c3448
      if (x4 <= 1) {
      } else {
        x3 = mem((PP + 0xb000), 0x8f8) /* Obj!? */; // 0x4c345c
        x8 = mem(PP, 0x1170) /* Type */; // 0x4c3454
        sub_0x62aa34(); // 0x4c3460
      }
    }
    x0 = local_m18; // 0x4c3464
    x3 = local_m8; // 0x4c3468
    memSet(x3, 0x1f, w0); // 0x4c346c
    if (x0 & (1 << 0) == 0) {
    } else {
      BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c347c
      w17 = mem(x0, -1); // 0x4c3478
      x16 = w16 & 0xffffffff; // 0x4c3474
      x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3478
      if ((BARRIER & (HEAP >> 32)) == 0) {
      } else {
        WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c3488
      }
    }
    LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4c34a8
    x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4c3494
    x1 = local_m10; // 0x4c3498
    x2 = "totalShowMs" /* pp+0xb908 */; // 0x4c34a0
    x4 = local_m10; // 0x4c348c
    callIndirect(LR); // 0x4c34ac
    if (w0 != w22) {
    } else {
      x0 = 0; // 0x4c34b8
    }
    x1 = NULL; // 0x4c34c4
    x2 = NULL; // 0x4c34c0
    x3 = local_m10; // 0x4c34bc
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4c34d4
      if (x4 <= 1) {
      } else {
        x3 = mem((PP + 0xb000), 0x910) /* Obj!? */; // 0x4c34e8
        x8 = mem(PP, 0x1170) /* Type */; // 0x4c34e0
        sub_0x62aa34(); // 0x4c34ec
      }
    }
    LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4c350c
    x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4c34f8
    x1 = local_m10; // 0x4c34fc
    x2 = "currentMs" /* pp+0xb920 */; // 0x4c3504
    x3 = local_m10; // 0x4c34f0
    callIndirect(LR); // 0x4c3510
    if (w0 != w22) {
      x5 = x0; // 0x4c3524
    } else {
      x5 = 0; // 0x4c351c
    }
    x0 = x5; // 0x4c3530
    x3 = local_m10; // 0x4c352c
    x4 = local_m8; // 0x4c3528
    local_m18 = x5; // 0x4c3534
    x1 = NULL; // 0x4c353c
    x2 = NULL; // 0x4c3538
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4c354c
      if (x4 <= 1) {
      } else {
        x3 = mem((PP + 0xb000), 0x928) /* Obj!? */; // 0x4c3560
        x8 = mem(PP, 0x1170) /* Type */; // 0x4c3558
        sub_0x62aa34(); // 0x4c3564
      }
    }
    x0 = local_m18; // 0x4c3568
    x3 = local_m8; // 0x4c356c
    memSet(x3, 0x23, w0); // 0x4c3570
    if (x0 & (1 << 0) == 0) {
    } else {
      BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3580
      w17 = mem(x0, -1); // 0x4c357c
      x16 = w16 & 0xffffffff; // 0x4c3578
      x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c357c
      if ((BARRIER & (HEAP >> 32)) == 0) {
      } else {
        WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c358c
      }
    }
    LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4c35ac
    x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4c3598
    x1 = local_m10; // 0x4c359c
    x2 = "resultRemainMs" /* pp+0xb938 */; // 0x4c35a4
    x4 = local_m10; // 0x4c3590
    callIndirect(LR); // 0x4c35b0
    if (w0 != w22) {
      x5 = x0; // 0x4c35c4
    } else {
      x5 = 0; // 0x4c35bc
    }
    x0 = x5; // 0x4c35d0
    x3 = local_m8; // 0x4c35c8
    x4 = local_m10; // 0x4c35cc
    local_m18 = x5; // 0x4c35d4
    x1 = NULL; // 0x4c35dc
    x2 = NULL; // 0x4c35d8
    if (x0 & (1 << 0) == 0) {
    } else {
      x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4c35ec
      if (x4 <= 1) {
      } else {
        x3 = mem((PP + 0xb000), 0x940) /* Obj!? */; // 0x4c3600
        x8 = mem(PP, 0x1170) /* Type */; // 0x4c35f8
        sub_0x62aa34(); // 0x4c3604
      }
    }
    x0 = local_m18; // 0x4c3608
    x3 = local_m8; // 0x4c360c
    memSet(x3, 0x27, w0); // 0x4c3610
    if (x0 & (1 << 0) == 0) {
    } else {
      BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3620
      w17 = mem(x0, -1); // 0x4c361c
      x16 = w16 & 0xffffffff; // 0x4c3618
      x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c361c
      if ((BARRIER & (HEAP >> 32)) == 0) {
      } else {
        WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c362c
      }
    }
    LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4c3648
    x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4c3638
    x1 = local_m10; // 0x4c3630
    x2 = "userBetList" /* pp+0xb950 */; // 0x4c3640
    callIndirect(LR); // 0x4c364c
    if (w0 != w22) {
      x4 = x0; // 0x4c366c
    } else {
      x1 = NULL; // 0x4c3658
      x2 = 0; // 0x4c365c
      GrowableList_factory_ctor() /* 0x277268 */; // 0x4c3660
      x4 = x0; // 0x4c3664
    }
    x0 = x4; // 0x4c3674
    x3 = local_m8; // 0x4c3670
    local_m10 = x4; // 0x4c3678
    x1 = NULL; // 0x4c3680
    x2 = NULL; // 0x4c367c
    x3 = mem((PP + 0xb000), 0x958) /* Obj!? */; // 0x4c368c
    x8 = mem(PP, 0xfa8) /* Type */; // 0x4c3684
    sub_0x285664(); // 0x4c3690
    x1 = mem((PP + 0xb000), 0x968) /* Function */; // 0x4c3698
    x2 = NULL; // 0x4c369c
    AllocationStub__Closure() /* 0x61ec54 */; // 0x4c36a0
    BARRIER = mem((PP + 0xb000), 0x858) /* TypeArguments */; // 0x4c36b8
    x0 = local_m10; // 0x4c36a8
    x1 = x0; // 0x4c36a4
    x2 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4c36b0
    // frame: x0, BARRIER, mem(SP, 8) // 0x4c36bc
    local_0 = x1; // 0x4c36c0
    LR = mem(x21, ((x0 + x17) << 3)); // 0x4c36d4
    x0 = x2; // 0x4c36c4
    x17 = 34521; // 0x4c36cc
    x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x4c36c8
    callIndirect(LR); // 0x4c36d8
    BARRIER = x0; // 0x4c36e4
    x0 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4c36e8
    x1 = x0; // 0x4c36ec
    LR = mem(x21, ((x0 + 0x35e) << 3)); // 0x4c36f8
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4c36f0
    callIndirect(LR); // 0x4c36fc
    x1 = local_m8; // 0x4c3700
    memSet(x1, 0x2b, w0); // 0x4c3704
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3710
    w16 = mem(x1, -1); // 0x4c3708
    w17 = mem(x0, -1); // 0x4c370c
    x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c3708
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c370c
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c371c
    }
    SP = FP; // 0x4c3724
    x0 = NULL; // 0x4c3720
    // frame: FP, LR, mem(SP), 0x10 // 0x4c3728
    return;
  }
}

// GameFruitProcessResult_anon_closure
// raw disassembly:
//  0x4c373c: stp FP, LR, [SP, #-0x10]!
//  0x4c3740: mov FP, SP
//  0x4c3744: sub SP, SP, #8
//  0x4c3748: ldr BARRIER, [THR, #0x38]
//  0x4c374c: cmp SP, BARRIER
//  0x4c3750: b.ls #0x4c3794
//  0x4c3754: ldr x0, [FP, #0x10]
//  0x4c3758: mov x2, NULL
//  0x4c375c: mov x1, NULL
//  0x4c3760: ldr x8, [PP, #0x3cd0]
//  0x4c3764: add x3, PP, #0xb, lsl #12
//  0x4c3768: ldr x3, [x3, #0x970]
//  0x4c376c: bl #0x2b15f0
//  0x4c3770: bl #0x4c390c
//  0x4c3774: mov x1, x0
//  0x4c3778: ldr x2, [FP, #0x10]
//  0x4c377c: stur x0, [FP, #-8]
//  0x4c3780: bl #0x4c379c
//  0x4c3784: ldur x0, [FP, #-8]
//  0x4c3788: mov SP, FP
//  0x4c378c: ldp FP, LR, [SP], #0x10
//  0x4c3790: ret 
//  0x4c3794: bl #0x61fa28
//  0x4c3798: b #0x4c3754
//
dynamic GameFruitProcessResult_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c373c
  BARRIER = mem(THR, 0x38); // 0x4c3748
  // frame: FP = SP // 0x4c3740
  // frame: SP = SP - 8 // 0x4c3744
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c3794
  }
  x0 = local_10; // 0x4c3754
  x1 = NULL; // 0x4c375c
  x2 = NULL; // 0x4c3758
  x3 = mem((PP + 0xb000), 0x970) /* Obj!? */; // 0x4c3768
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x4c3760
  sub_0x2b15f0(); // 0x4c376c
  AllocationStub_BetCoinInfo() /* 0x4c390c */; // 0x4c3770
  x1 = x0; // 0x4c3774
  x2 = local_10; // 0x4c3778
  local_m8 = x0; // 0x4c377c
  BetCoinInfo_ctor_fromJson() /* 0x4c379c */; // 0x4c3780
  SP = FP; // 0x4c3788
  x0 = local_m8; // 0x4c3784
  // frame: FP, LR, mem(SP), 0x10 // 0x4c378c
  return;
}

// BetCoinInfo_ctor_fromJson
// raw disassembly:
//  0x4c379c: stp FP, LR, [SP, #-0x10]!
//  0x4c37a0: mov FP, SP
//  0x4c37a4: sub SP, SP, #0x18
//  0x4c37a8: mov x4, x1
//  0x4c37ac: mov x3, x2
//  0x4c37b0: stur x1, [FP, #-8]
//  0x4c37b4: stur x2, [FP, #-0x10]
//  0x4c37b8: ldr BARRIER, [THR, #0x38]
//  0x4c37bc: cmp SP, BARRIER
//  0x4c37c0: b.ls #0x4c3904
//  0x4c37c4: ldur x0, [x3, #-1]
//  0x4c37c8: ubfx x0, x0, #0xc, #0x14
//  0x4c37cc: mov x1, x3
//  0x4c37d0: ldr x2, [PP, #0x2e40]
//  0x4c37d4: sub LR, x0, #1, lsl #12
//  0x4c37d8: ldr LR, [x21, LR, lsl #3]
//  0x4c37dc: blr LR
//  0x4c37e0: cmp w0, w22
//  0x4c37e4: b.ne #0x4c37f0
//  0x4c37e8: mov x5, #0
//  0x4c37ec: b #0x4c37f4
//  0x4c37f0: mov x5, x0
//  0x4c37f4: ldur x4, [FP, #-8]
//  0x4c37f8: ldur x3, [FP, #-0x10]
//  0x4c37fc: mov x0, x5
//  0x4c3800: stur x5, [FP, #-0x18]
//  0x4c3804: mov x2, NULL
//  0x4c3808: mov x1, NULL
//  0x4c380c: tbz w0, #0, #0x4c3834
//  0x4c3810: ldur x4, [x0, #-1]
//  0x4c3814: ubfx x4, x4, #0xc, #0x14
//  0x4c3818: sub x4, x4, #0x3c
//  0x4c381c: cmp x4, #1
//  0x4c3820: b.ls #0x4c3834
//  0x4c3824: ldr x8, [PP, #0xaf8]
//  0x4c3828: add x3, PP, #0xb, lsl #12
//  0x4c382c: ldr x3, [x3, #0x980]
//  0x4c3830: bl #0x62a9f8
//  0x4c3834: ldur x0, [FP, #-0x18]
//  0x4c3838: ldur x3, [FP, #-8]
//  0x4c383c: stur w0, [x3, #7]
//  0x4c3840: tbz w0, #0, #0x4c385c
//  0x4c3844: ldurb w16, [x3, #-1]
//  0x4c3848: ldurb w17, [x0, #-1]
//  0x4c384c: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3850: tst BARRIER, HEAP, lsr #32
//  0x4c3854: b.eq #0x4c385c
//  0x4c3858: bl #0x61e08c
//  0x4c385c: ldur x1, [FP, #-0x10]
//  0x4c3860: ldur x0, [x1, #-1]
//  0x4c3864: ubfx x0, x0, #0xc, #0x14
//  0x4c3868: add x2, PP, #0xb, lsl #12
//  0x4c386c: ldr x2, [x2, #0x990]
//  0x4c3870: sub LR, x0, #1, lsl #12
//  0x4c3874: ldr LR, [x21, LR, lsl #3]
//  0x4c3878: blr LR
//  0x4c387c: cmp w0, w22
//  0x4c3880: b.ne #0x4c388c
//  0x4c3884: mov x4, #0
//  0x4c3888: b #0x4c3890
//  0x4c388c: mov x4, x0
//  0x4c3890: ldur x3, [FP, #-8]
//  0x4c3894: mov x0, x4
//  0x4c3898: stur x4, [FP, #-0x10]
//  0x4c389c: mov x2, NULL
//  0x4c38a0: mov x1, NULL
//  0x4c38a4: tbz w0, #0, #0x4c38cc
//  0x4c38a8: ldur x4, [x0, #-1]
//  0x4c38ac: ubfx x4, x4, #0xc, #0x14
//  0x4c38b0: sub x4, x4, #0x3c
//  0x4c38b4: cmp x4, #1
//  0x4c38b8: b.ls #0x4c38cc
//  0x4c38bc: ldr x8, [PP, #0xaf8]
//  0x4c38c0: add x3, PP, #0xb, lsl #12
//  0x4c38c4: ldr x3, [x3, #0x998]
//  0x4c38c8: bl #0x62a9f8
//  0x4c38cc: ldur x0, [FP, #-0x10]
//  0x4c38d0: ldur x1, [FP, #-8]
//  0x4c38d4: stur w0, [x1, #0xb]
//  0x4c38d8: tbz w0, #0, #0x4c38f4
//  0x4c38dc: ldurb w16, [x1, #-1]
//  0x4c38e0: ldurb w17, [x0, #-1]
//  0x4c38e4: and BARRIER, x17, BARRIER, lsr #2
//  0x4c38e8: tst BARRIER, HEAP, lsr #32
//  0x4c38ec: b.eq #0x4c38f4
//  0x4c38f0: bl #0x61e04c
//  0x4c38f4: mov x0, NULL
//  0x4c38f8: mov SP, FP
//  0x4c38fc: ldp FP, LR, [SP], #0x10
//  0x4c3900: ret 
//  0x4c3904: bl #0x61fa28
//  0x4c3908: b #0x4c37c4
//
dynamic BetCoinInfo_ctor_fromJson() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c379c
  // frame: FP = SP // 0x4c37a0
  // frame: SP = SP - 0x18 // 0x4c37a4
  x3 = x2; // 0x4c37ac
  x4 = x1; // 0x4c37a8
  local_m8 = x1; // 0x4c37b0
  local_m10 = x2; // 0x4c37b4
  BARRIER = mem(THR, 0x38); // 0x4c37b8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c3904
  }
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4c37d8
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x4c37c8
  x1 = x3; // 0x4c37cc
  x2 = "index" /* pp+0x2e40 */; // 0x4c37d0
  callIndirect(LR); // 0x4c37dc
  if (w0 != w22) {
    x5 = x0; // 0x4c37f0
  } else {
    x5 = 0; // 0x4c37e8
  }
  x0 = x5; // 0x4c37fc
  x3 = local_m10; // 0x4c37f8
  x4 = local_m8; // 0x4c37f4
  local_m18 = x5; // 0x4c3800
  x1 = NULL; // 0x4c3808
  x2 = NULL; // 0x4c3804
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4c3818
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0xb000), 0x980) /* Obj!? */; // 0x4c382c
      x8 = mem(PP, 0xaf8) /* Type */; // 0x4c3824
      sub_0x62a9f8(); // 0x4c3830
    }
  }
  x0 = local_m18; // 0x4c3834
  x3 = local_m8; // 0x4c3838
  memSet(x3, 7, w0); // 0x4c383c
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c384c
    w17 = mem(x0, -1); // 0x4c3848
    x16 = w16 & 0xffffffff; // 0x4c3844
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3848
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c3858
    }
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4c3874
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4c3864
  x1 = local_m10; // 0x4c385c
  x2 = "coin" /* pp+0xb990 */; // 0x4c386c
  callIndirect(LR); // 0x4c3878
  if (w0 != w22) {
    x4 = x0; // 0x4c388c
  } else {
    x4 = 0; // 0x4c3884
  }
  x0 = x4; // 0x4c3894
  x3 = local_m8; // 0x4c3890
  local_m10 = x4; // 0x4c3898
  x1 = NULL; // 0x4c38a0
  x2 = NULL; // 0x4c389c
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4c38b0
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0xb000), 0x998) /* Obj!? */; // 0x4c38c4
      x8 = mem(PP, 0xaf8) /* Type */; // 0x4c38bc
      sub_0x62a9f8(); // 0x4c38c8
    }
  }
  x0 = local_m10; // 0x4c38cc
  x1 = local_m8; // 0x4c38d0
  memSet(x1, 0xb, w0); // 0x4c38d4
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c38e4
    w17 = mem(x0, -1); // 0x4c38e0
    x16 = w16 & 0xffffffff; // 0x4c38dc
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c38e0
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c38f0
    }
  }
  SP = FP; // 0x4c38f8
  x0 = NULL; // 0x4c38f4
  // frame: FP, LR, mem(SP), 0x10 // 0x4c38fc
  return;
}

// BetItemInfo_ctor_fromJson
// raw disassembly:
//  0x4d1f58: stp FP, LR, [SP, #-0x10]!
//  0x4d1f5c: mov FP, SP
//  0x4d1f60: sub SP, SP, #0x18
//  0x4d1f64: ldr x0, [PP, #0x40]
//  0x4d1f68: mov x4, x1
//  0x4d1f6c: mov x3, x2
//  0x4d1f70: stur x1, [FP, #-8]
//  0x4d1f74: stur x2, [FP, #-0x10]
//  0x4d1f78: ldr BARRIER, [THR, #0x38]
//  0x4d1f7c: cmp SP, BARRIER
//  0x4d1f80: b.ls #0x4d2170
//  0x4d1f84: stur w0, [x4, #7]
//  0x4d1f88: stur w0, [x4, #0xb]
//  0x4d1f8c: stur w0, [x4, #0xf]
//  0x4d1f90: ldur x0, [x3, #-1]
//  0x4d1f94: ubfx x0, x0, #0xc, #0x14
//  0x4d1f98: mov x1, x3
//  0x4d1f9c: add x2, PP, #0x11, lsl #12
//  0x4d1fa0: ldr x2, [x2, #0xdb0]
//  0x4d1fa4: sub LR, x0, #1, lsl #12
//  0x4d1fa8: ldr LR, [x21, LR, lsl #3]
//  0x4d1fac: blr LR
//  0x4d1fb0: cmp w0, w22
//  0x4d1fb4: b.ne #0x4d1fc0
//  0x4d1fb8: mov x5, #0
//  0x4d1fbc: b #0x4d1fc4
//  0x4d1fc0: mov x5, x0
//  0x4d1fc4: ldur x4, [FP, #-8]
//  0x4d1fc8: ldur x3, [FP, #-0x10]
//  0x4d1fcc: mov x0, x5
//  0x4d1fd0: stur x5, [FP, #-0x18]
//  0x4d1fd4: mov x2, NULL
//  0x4d1fd8: mov x1, NULL
//  0x4d1fdc: tbz w0, #0, #0x4d2004
//  0x4d1fe0: ldur x4, [x0, #-1]
//  0x4d1fe4: ubfx x4, x4, #0xc, #0x14
//  0x4d1fe8: sub x4, x4, #0x3c
//  0x4d1fec: cmp x4, #1
//  0x4d1ff0: b.ls #0x4d2004
//  0x4d1ff4: ldr x8, [PP, #0x1170]
//  0x4d1ff8: add x3, PP, #0x11, lsl #12
//  0x4d1ffc: ldr x3, [x3, #0xdb8]
//  0x4d2000: bl #0x62aa34
//  0x4d2004: ldur x0, [FP, #-0x18]
//  0x4d2008: ldur x3, [FP, #-8]
//  0x4d200c: stur w0, [x3, #7]
//  0x4d2010: tbz w0, #0, #0x4d202c
//  0x4d2014: ldurb w16, [x3, #-1]
//  0x4d2018: ldurb w17, [x0, #-1]
//  0x4d201c: and BARRIER, x17, BARRIER, lsr #2
//  0x4d2020: tst BARRIER, HEAP, lsr #32
//  0x4d2024: b.eq #0x4d202c
//  0x4d2028: bl #0x61e08c
//  0x4d202c: ldur x4, [FP, #-0x10]
//  0x4d2030: ldur x0, [x4, #-1]
//  0x4d2034: ubfx x0, x0, #0xc, #0x14
//  0x4d2038: mov x1, x4
//  0x4d203c: ldr x2, [PP, #0x2e40]
//  0x4d2040: sub LR, x0, #1, lsl #12
//  0x4d2044: ldr LR, [x21, LR, lsl #3]
//  0x4d2048: blr LR
//  0x4d204c: cmp w0, w22
//  0x4d2050: b.ne #0x4d205c
//  0x4d2054: mov x5, #0
//  0x4d2058: b #0x4d2060
//  0x4d205c: mov x5, x0
//  0x4d2060: ldur x3, [FP, #-8]
//  0x4d2064: ldur x4, [FP, #-0x10]
//  0x4d2068: mov x0, x5
//  0x4d206c: stur x5, [FP, #-0x18]
//  0x4d2070: mov x2, NULL
//  0x4d2074: mov x1, NULL
//  0x4d2078: tbz w0, #0, #0x4d20a0
//  0x4d207c: ldur x4, [x0, #-1]
//  0x4d2080: ubfx x4, x4, #0xc, #0x14
//  0x4d2084: sub x4, x4, #0x3c
//  0x4d2088: cmp x4, #1
//  0x4d208c: b.ls #0x4d20a0
//  0x4d2090: ldr x8, [PP, #0x1170]
//  0x4d2094: add x3, PP, #0x11, lsl #12
//  0x4d2098: ldr x3, [x3, #0xdc8]
//  0x4d209c: bl #0x62aa34
//  0x4d20a0: ldur x0, [FP, #-0x18]
//  0x4d20a4: ldur x3, [FP, #-8]
//  0x4d20a8: stur w0, [x3, #0xb]
//  0x4d20ac: tbz w0, #0, #0x4d20c8
//  0x4d20b0: ldurb w16, [x3, #-1]
//  0x4d20b4: ldurb w17, [x0, #-1]
//  0x4d20b8: and BARRIER, x17, BARRIER, lsr #2
//  0x4d20bc: tst BARRIER, HEAP, lsr #32
//  0x4d20c0: b.eq #0x4d20c8
//  0x4d20c4: bl #0x61e08c
//  0x4d20c8: ldur x1, [FP, #-0x10]
//  0x4d20cc: ldur x0, [x1, #-1]
//  0x4d20d0: ubfx x0, x0, #0xc, #0x14
//  0x4d20d4: add x2, PP, #0xf, lsl #12
//  0x4d20d8: ldr x2, [x2, #0xa50]
//  0x4d20dc: sub LR, x0, #1, lsl #12
//  0x4d20e0: ldr LR, [x21, LR, lsl #3]
//  0x4d20e4: blr LR
//  0x4d20e8: cmp w0, w22
//  0x4d20ec: b.ne #0x4d20f8
//  0x4d20f0: ldr x4, [PP, #0x148]
//  0x4d20f4: b #0x4d20fc
//  0x4d20f8: mov x4, x0
//  0x4d20fc: ldur x3, [FP, #-8]
//  0x4d2100: mov x0, x4
//  0x4d2104: stur x4, [FP, #-0x10]
//  0x4d2108: mov x2, NULL
//  0x4d210c: mov x1, NULL
//  0x4d2110: mov x4, #0x3c
//  0x4d2114: tbz w0, #0, #0x4d2120
//  0x4d2118: ldur x4, [x0, #-1]
//  0x4d211c: ubfx x4, x4, #0xc, #0x14
//  0x4d2120: sub x4, x4, #0x5e
//  0x4d2124: cmp x4, #1
//  0x4d2128: b.ls #0x4d213c
//  0x4d212c: ldr x8, [PP, #0x2f8]
//  0x4d2130: add x3, PP, #0x11, lsl #12
//  0x4d2134: ldr x3, [x3, #0xdd8]
//  0x4d2138: bl #0x62a0c0
//  0x4d213c: ldur x0, [FP, #-0x10]
//  0x4d2140: ldur x1, [FP, #-8]
//  0x4d2144: stur w0, [x1, #0xf]
//  0x4d2148: ldurb w16, [x1, #-1]
//  0x4d214c: ldurb w17, [x0, #-1]
//  0x4d2150: and BARRIER, x17, BARRIER, lsr #2
//  0x4d2154: tst BARRIER, HEAP, lsr #32
//  0x4d2158: b.eq #0x4d2160
//  0x4d215c: bl #0x61e04c
//  0x4d2160: mov x0, NULL
//  0x4d2164: mov SP, FP
//  0x4d2168: ldp FP, LR, [SP], #0x10
//  0x4d216c: ret 
//  0x4d2170: bl #0x61fa28
//  0x4d2174: b #0x4d1f84
//
dynamic BetItemInfo_ctor_fromJson() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d1f58
  // frame: FP = SP // 0x4d1f5c
  // frame: SP = SP - 0x18 // 0x4d1f60
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4d1f64
  x3 = x2; // 0x4d1f6c
  x4 = x1; // 0x4d1f68
  local_m8 = x1; // 0x4d1f70
  local_m10 = x2; // 0x4d1f74
  BARRIER = mem(THR, 0x38); // 0x4d1f78
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d2170
  }
  memSet(x4, 7, w0); // 0x4d1f84
  memSet(x4, 0xb, w0); // 0x4d1f88
  memSet(x4, 0xf, w0); // 0x4d1f8c
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d1fa8
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x4d1f94
  x1 = x3; // 0x4d1f98
  x2 = "odds" /* pp+0x11db0 */; // 0x4d1fa0
  callIndirect(LR); // 0x4d1fac
  if (w0 != w22) {
    x5 = x0; // 0x4d1fc0
  } else {
    x5 = 0; // 0x4d1fb8
  }
  x0 = x5; // 0x4d1fcc
  x3 = local_m10; // 0x4d1fc8
  x4 = local_m8; // 0x4d1fc4
  local_m18 = x5; // 0x4d1fd0
  x1 = NULL; // 0x4d1fd8
  x2 = NULL; // 0x4d1fd4
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4d1fe8
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x11000), 0xdb8) /* Obj!? */; // 0x4d1ffc
      x8 = mem(PP, 0x1170) /* Type */; // 0x4d1ff4
      sub_0x62aa34(); // 0x4d2000
    }
  }
  x0 = local_m18; // 0x4d2004
  x3 = local_m8; // 0x4d2008
  memSet(x3, 7, w0); // 0x4d200c
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d201c
    w17 = mem(x0, -1); // 0x4d2018
    x16 = w16 & 0xffffffff; // 0x4d2014
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d2018
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d2028
    }
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d2044
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4d2034
  x1 = local_m10; // 0x4d2038
  x2 = "index" /* pp+0x2e40 */; // 0x4d203c
  x4 = local_m10; // 0x4d202c
  callIndirect(LR); // 0x4d2048
  if (w0 != w22) {
    x5 = x0; // 0x4d205c
  } else {
    x5 = 0; // 0x4d2054
  }
  x0 = x5; // 0x4d2068
  x3 = local_m8; // 0x4d2060
  x4 = local_m10; // 0x4d2064
  local_m18 = x5; // 0x4d206c
  x1 = NULL; // 0x4d2074
  x2 = NULL; // 0x4d2070
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4d2084
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x11000), 0xdc8) /* Obj!? */; // 0x4d2098
      x8 = mem(PP, 0x1170) /* Type */; // 0x4d2090
      sub_0x62aa34(); // 0x4d209c
    }
  }
  x0 = local_m18; // 0x4d20a0
  x3 = local_m8; // 0x4d20a4
  memSet(x3, 0xb, w0); // 0x4d20a8
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d20b8
    w17 = mem(x0, -1); // 0x4d20b4
    x16 = w16 & 0xffffffff; // 0x4d20b0
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d20b4
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d20c4
    }
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d20e0
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4d20d0
  x1 = local_m10; // 0x4d20c8
  x2 = "imageUrl" /* pp+0xfa50 */; // 0x4d20d8
  callIndirect(LR); // 0x4d20e4
  if (w0 != w22) {
    x4 = x0; // 0x4d20f8
  } else {
    x4 = "" /* pp+0x148 */; // 0x4d20f0
  }
  x0 = x4; // 0x4d2100
  x3 = local_m8; // 0x4d20fc
  local_m10 = x4; // 0x4d2104
  x1 = NULL; // 0x4d210c
  x2 = NULL; // 0x4d2108
  x4 = 60; // 0x4d2110
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d211c
  }
  x4 = x4 - 0x5e; // 0x4d2120
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0x11000), 0xdd8) /* Obj!? */; // 0x4d2134
    x8 = mem(PP, 0x2f8) /* Type */; // 0x4d212c
    sub_0x62a0c0(); // 0x4d2138
  }
  x0 = local_m10; // 0x4d213c
  x1 = local_m8; // 0x4d2140
  memSet(x1, 0xf, w0); // 0x4d2144
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d2150
  w16 = mem(x1, -1); // 0x4d2148
  w17 = mem(x0, -1); // 0x4d214c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d2148
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d214c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d215c
  }
  SP = FP; // 0x4d2164
  x0 = NULL; // 0x4d2160
  // frame: FP, LR, mem(SP), 0x10 // 0x4d2168
  return;
}

// FruitLandResource_ctor_fromJson
// raw disassembly:
//  0x4d3c7c: stp FP, LR, [SP, #-0x10]!
//  0x4d3c80: mov FP, SP
//  0x4d3c84: sub SP, SP, #0x30
//  0x4d3c88: ldr x0, [PP, #0x40]
//  0x4d3c8c: mov x4, x1
//  0x4d3c90: mov x3, x2
//  0x4d3c94: stur x1, [FP, #-8]
//  0x4d3c98: stur x2, [FP, #-0x10]
//  0x4d3c9c: ldr BARRIER, [THR, #0x38]
//  0x4d3ca0: cmp SP, BARRIER
//  0x4d3ca4: b.ls #0x4d3e88
//  0x4d3ca8: stur w0, [x4, #7]
//  0x4d3cac: stur w0, [x4, #0xb]
//  0x4d3cb0: ldur x0, [x3, #-1]
//  0x4d3cb4: ubfx x0, x0, #0xc, #0x14
//  0x4d3cb8: mov x1, x3
//  0x4d3cbc: add x2, PP, #0x15, lsl #12
//  0x4d3cc0: ldr x2, [x2, #0x328]
//  0x4d3cc4: sub LR, x0, #1, lsl #12
//  0x4d3cc8: ldr LR, [x21, LR, lsl #3]
//  0x4d3ccc: blr LR
//  0x4d3cd0: cmp w0, w22
//  0x4d3cd4: b.ne #0x4d3cec
//  0x4d3cd8: mov x1, NULL
//  0x4d3cdc: mov x2, #0
//  0x4d3ce0: bl #0x277268
//  0x4d3ce4: mov x5, x0
//  0x4d3ce8: b #0x4d3cf0
//  0x4d3cec: mov x5, x0
//  0x4d3cf0: ldur x4, [FP, #-8]
//  0x4d3cf4: ldur x3, [FP, #-0x10]
//  0x4d3cf8: mov x0, x5
//  0x4d3cfc: stur x5, [FP, #-0x18]
//  0x4d3d00: mov x2, NULL
//  0x4d3d04: mov x1, NULL
//  0x4d3d08: ldr x8, [PP, #0xfa8]
//  0x4d3d0c: add x3, PP, #0x15, lsl #12
//  0x4d3d10: ldr x3, [x3, #0x330]
//  0x4d3d14: bl #0x285664
//  0x4d3d18: add x1, PP, #0x15, lsl #12
//  0x4d3d1c: ldr x1, [x1, #0x340]
//  0x4d3d20: mov x2, NULL
//  0x4d3d24: bl #0x61ec54
//  0x4d3d28: mov x1, x0
//  0x4d3d2c: ldur x0, [FP, #-0x18]
//  0x4d3d30: ldur x2, [x0, #-1]
//  0x4d3d34: ubfx x2, x2, #0xc, #0x14
//  0x4d3d38: add BARRIER, PP, #0xb, lsl #12
//  0x4d3d3c: ldr BARRIER, [BARRIER, #0x850]
//  0x4d3d40: stp x0, BARRIER, [SP, #8]
//  0x4d3d44: str x1, [SP]
//  0x4d3d48: mov x0, x2
//  0x4d3d4c: ldr x4, [PP, #0x58]
//  0x4d3d50: mov x17, #0x86d9
//  0x4d3d54: add LR, x0, x17
//  0x4d3d58: ldr LR, [x21, LR, lsl #3]
//  0x4d3d5c: blr LR
//  0x4d3d60: ldur x1, [x0, #-1]
//  0x4d3d64: ubfx x1, x1, #0xc, #0x14
//  0x4d3d68: mov BARRIER, x0
//  0x4d3d6c: mov x0, x1
//  0x4d3d70: mov x1, BARRIER
//  0x4d3d74: ldr x4, [PP, #0x4c0]
//  0x4d3d78: add LR, x0, #0x35e
//  0x4d3d7c: ldr LR, [x21, LR, lsl #3]
//  0x4d3d80: blr LR
//  0x4d3d84: ldur x3, [FP, #-8]
//  0x4d3d88: stur w0, [x3, #7]
//  0x4d3d8c: ldurb w16, [x3, #-1]
//  0x4d3d90: ldurb w17, [x0, #-1]
//  0x4d3d94: and BARRIER, x17, BARRIER, lsr #2
//  0x4d3d98: tst BARRIER, HEAP, lsr #32
//  0x4d3d9c: b.eq #0x4d3da4
//  0x4d3da0: bl #0x61e08c
//  0x4d3da4: ldur x1, [FP, #-0x10]
//  0x4d3da8: ldur x0, [x1, #-1]
//  0x4d3dac: ubfx x0, x0, #0xc, #0x14
//  0x4d3db0: add x2, PP, #0x15, lsl #12
//  0x4d3db4: ldr x2, [x2, #0x348]
//  0x4d3db8: sub LR, x0, #1, lsl #12
//  0x4d3dbc: ldr LR, [x21, LR, lsl #3]
//  0x4d3dc0: blr LR
//  0x4d3dc4: cmp w0, w22
//  0x4d3dc8: b.ne #0x4d3de0
//  0x4d3dcc: mov x1, NULL
//  0x4d3dd0: mov x2, #0
//  0x4d3dd4: bl #0x277268
//  0x4d3dd8: mov x4, x0
//  0x4d3ddc: b #0x4d3de4
//  0x4d3de0: mov x4, x0
//  0x4d3de4: ldur x3, [FP, #-8]
//  0x4d3de8: mov x0, x4
//  0x4d3dec: stur x4, [FP, #-0x10]
//  0x4d3df0: mov x2, NULL
//  0x4d3df4: mov x1, NULL
//  0x4d3df8: ldr x8, [PP, #0xfa8]
//  0x4d3dfc: add x3, PP, #0x15, lsl #12
//  0x4d3e00: ldr x3, [x3, #0x350]
//  0x4d3e04: bl #0x285664
//  0x4d3e08: ldur x0, [FP, #-0x10]
//  0x4d3e0c: ldur x1, [x0, #-1]
//  0x4d3e10: ubfx x1, x1, #0xc, #0x14
//  0x4d3e14: ldr BARRIER, [PP, #0x908]
//  0x4d3e18: stp x0, BARRIER, [SP]
//  0x4d3e1c: mov x0, x1
//  0x4d3e20: ldr x4, [PP, #0x910]
//  0x4d3e24: mov x17, #0x8729
//  0x4d3e28: add LR, x0, x17
//  0x4d3e2c: ldr LR, [x21, LR, lsl #3]
//  0x4d3e30: blr LR
//  0x4d3e34: ldur x1, [x0, #-1]
//  0x4d3e38: ubfx x1, x1, #0xc, #0x14
//  0x4d3e3c: mov BARRIER, x0
//  0x4d3e40: mov x0, x1
//  0x4d3e44: mov x1, BARRIER
//  0x4d3e48: ldr x4, [PP, #0x4c0]
//  0x4d3e4c: add LR, x0, #0x35e
//  0x4d3e50: ldr LR, [x21, LR, lsl #3]
//  0x4d3e54: blr LR
//  0x4d3e58: ldur x1, [FP, #-8]
//  0x4d3e5c: stur w0, [x1, #0xb]
//  0x4d3e60: ldurb w16, [x1, #-1]
//  0x4d3e64: ldurb w17, [x0, #-1]
//  0x4d3e68: and BARRIER, x17, BARRIER, lsr #2
//  0x4d3e6c: tst BARRIER, HEAP, lsr #32
//  0x4d3e70: b.eq #0x4d3e78
//  0x4d3e74: bl #0x61e04c
//  0x4d3e78: mov x0, NULL
//  0x4d3e7c: mov SP, FP
//  0x4d3e80: ldp FP, LR, [SP], #0x10
//  0x4d3e84: ret 
//  0x4d3e88: bl #0x61fa28
//  0x4d3e8c: b #0x4d3ca8
//
dynamic FruitLandResource_ctor_fromJson() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d3c7c
  // frame: FP = SP // 0x4d3c80
  // frame: SP = SP - 0x30 // 0x4d3c84
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4d3c88
  x3 = x2; // 0x4d3c90
  x4 = x1; // 0x4d3c8c
  local_m8 = x1; // 0x4d3c94
  local_m10 = x2; // 0x4d3c98
  BARRIER = mem(THR, 0x38); // 0x4d3c9c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d3e88
  }
  memSet(x4, 7, w0); // 0x4d3ca8
  memSet(x4, 0xb, w0); // 0x4d3cac
  LR = mem(x21, ((((mem(x3, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d3cc8
  x0 = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x4d3cb4
  x1 = x3; // 0x4d3cb8
  x2 = "betItemList" /* pp+0x15328 */; // 0x4d3cc0
  callIndirect(LR); // 0x4d3ccc
  if (w0 != w22) {
    x5 = x0; // 0x4d3cec
  } else {
    x1 = NULL; // 0x4d3cd8
    x2 = 0; // 0x4d3cdc
    GrowableList_factory_ctor() /* 0x277268 */; // 0x4d3ce0
    x5 = x0; // 0x4d3ce4
  }
  x0 = x5; // 0x4d3cf8
  x3 = local_m10; // 0x4d3cf4
  x4 = local_m8; // 0x4d3cf0
  local_m18 = x5; // 0x4d3cfc
  x1 = NULL; // 0x4d3d04
  x2 = NULL; // 0x4d3d00
  x3 = mem((PP + 0x15000), 0x330) /* Obj!? */; // 0x4d3d10
  x8 = mem(PP, 0xfa8) /* Type */; // 0x4d3d08
  sub_0x285664(); // 0x4d3d14
  x1 = mem((PP + 0x15000), 0x340) /* Function */; // 0x4d3d1c
  x2 = NULL; // 0x4d3d20
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d3d24
  BARRIER = mem((PP + 0xb000), 0x850) /* TypeArguments */; // 0x4d3d3c
  x0 = local_m18; // 0x4d3d2c
  x1 = x0; // 0x4d3d28
  x2 = ((mem((local_m18), -1)) >> 12) & 0xfffff; // 0x4d3d34
  // frame: x0, BARRIER, mem(SP, 8) // 0x4d3d40
  local_0 = x1; // 0x4d3d44
  LR = mem(x21, ((x0 + x17) << 3)); // 0x4d3d58
  x0 = x2; // 0x4d3d48
  x17 = 34521; // 0x4d3d50
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x4d3d4c
  callIndirect(LR); // 0x4d3d5c
  BARRIER = x0; // 0x4d3d68
  x0 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d3d6c
  x1 = x0; // 0x4d3d70
  LR = mem(x21, ((x0 + 0x35e) << 3)); // 0x4d3d7c
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4d3d74
  callIndirect(LR); // 0x4d3d80
  x3 = local_m8; // 0x4d3d84
  memSet(x3, 7, w0); // 0x4d3d88
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d3d94
  w16 = mem(x3, -1); // 0x4d3d8c
  w17 = mem(x0, -1); // 0x4d3d90
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4d3d8c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d3d90
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4d3da0
  }
  LR = mem(x21, ((((mem((local_m10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d3dbc
  x0 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4d3dac
  x1 = local_m10; // 0x4d3da4
  x2 = "coinList" /* pp+0x15348 */; // 0x4d3db4
  callIndirect(LR); // 0x4d3dc0
  if (w0 != w22) {
    x4 = x0; // 0x4d3de0
  } else {
    x1 = NULL; // 0x4d3dcc
    x2 = 0; // 0x4d3dd0
    GrowableList_factory_ctor() /* 0x277268 */; // 0x4d3dd4
    x4 = x0; // 0x4d3dd8
  }
  x0 = x4; // 0x4d3de8
  x3 = local_m8; // 0x4d3de4
  local_m10 = x4; // 0x4d3dec
  x1 = NULL; // 0x4d3df4
  x2 = NULL; // 0x4d3df0
  x3 = mem((PP + 0x15000), 0x350) /* Obj!? */; // 0x4d3e00
  x8 = mem(PP, 0xfa8) /* Type */; // 0x4d3df8
  sub_0x285664(); // 0x4d3e04
  BARRIER = mem(PP, 0x908) /* TypeArguments */; // 0x4d3e14
  x0 = local_m10; // 0x4d3e08
  x1 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4d3e10
  // frame: x0, BARRIER, mem(SP) // 0x4d3e18
  LR = mem(x21, ((x0 + x17) << 3)); // 0x4d3e2c
  x0 = x1; // 0x4d3e1c
  x17 = 34601; // 0x4d3e24
  x4 = mem(PP, 0x910) /* ImmutableArray */; // 0x4d3e20
  callIndirect(LR); // 0x4d3e30
  BARRIER = x0; // 0x4d3e3c
  x0 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d3e40
  x1 = x0; // 0x4d3e44
  LR = mem(x21, ((x0 + 0x35e) << 3)); // 0x4d3e50
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4d3e48
  callIndirect(LR); // 0x4d3e54
  x1 = local_m8; // 0x4d3e58
  memSet(x1, 0xb, w0); // 0x4d3e5c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d3e68
  w16 = mem(x1, -1); // 0x4d3e60
  w17 = mem(x0, -1); // 0x4d3e64
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d3e60
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d3e64
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d3e74
  }
  SP = FP; // 0x4d3e7c
  x0 = NULL; // 0x4d3e78
  // frame: FP, LR, mem(SP), 0x10 // 0x4d3e80
  return;
}

// FruitLandResource_anon_closure
// raw disassembly:
//  0x4d3e90: stp FP, LR, [SP, #-0x10]!
//  0x4d3e94: mov FP, SP
//  0x4d3e98: sub SP, SP, #8
//  0x4d3e9c: ldr BARRIER, [THR, #0x38]
//  0x4d3ea0: cmp SP, BARRIER
//  0x4d3ea4: b.ls #0x4d3ee8
//  0x4d3ea8: ldr x0, [FP, #0x10]
//  0x4d3eac: mov x2, NULL
//  0x4d3eb0: mov x1, NULL
//  0x4d3eb4: ldr x8, [PP, #0x3cd0]
//  0x4d3eb8: add x3, PP, #0x15, lsl #12
//  0x4d3ebc: ldr x3, [x3, #0x360]
//  0x4d3ec0: bl #0x2b15f0
//  0x4d3ec4: bl #0x4d2178
//  0x4d3ec8: mov x1, x0
//  0x4d3ecc: ldr x2, [FP, #0x10]
//  0x4d3ed0: stur x0, [FP, #-8]
//  0x4d3ed4: bl #0x4d1f58
//  0x4d3ed8: ldur x0, [FP, #-8]
//  0x4d3edc: mov SP, FP
//  0x4d3ee0: ldp FP, LR, [SP], #0x10
//  0x4d3ee4: ret 
//  0x4d3ee8: bl #0x61fa28
//  0x4d3eec: b #0x4d3ea8
//
dynamic FruitLandResource_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d3e90
  BARRIER = mem(THR, 0x38); // 0x4d3e9c
  // frame: FP = SP // 0x4d3e94
  // frame: SP = SP - 8 // 0x4d3e98
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d3ee8
  }
  x0 = local_10; // 0x4d3ea8
  x1 = NULL; // 0x4d3eb0
  x2 = NULL; // 0x4d3eac
  x3 = mem((PP + 0x15000), 0x360) /* Obj!? */; // 0x4d3ebc
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x4d3eb4
  sub_0x2b15f0(); // 0x4d3ec0
  AllocationStub_BetItemInfo() /* 0x4d2178 */; // 0x4d3ec4
  x1 = x0; // 0x4d3ec8
  x2 = local_10; // 0x4d3ecc
  local_m8 = x0; // 0x4d3ed0
  BetItemInfo_ctor_fromJson() /* 0x4d1f58 */; // 0x4d3ed4
  SP = FP; // 0x4d3edc
  x0 = local_m8; // 0x4d3ed8
  // frame: FP, LR, mem(SP), 0x10 // 0x4d3ee0
  return;
}
