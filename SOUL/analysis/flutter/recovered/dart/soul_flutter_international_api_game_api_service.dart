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

dynamic AllocationStub_BetItemInfo, AllocationStub_FruitLandResource;
dynamic AllocationStub_GameFruitProcessResult, AllocationStub_GameFruitWinnerDialogInfo;
dynamic AllocationStub__Closure, AllocationStub__Mint, BARRIER, BetItemInfo_ctor_fromJson, FP;
dynamic FruitLandResource_ctor_fromJson, GameFruitProcessResult_ctor_fromJson;
dynamic GameFruitWinnerDialogInfo_ctor_fromJson, GrowableList_factory_ctor, HEAP;
dynamic Http_getSimple, Http_postSimple, LR, Map_factory_ctor_fromLiteral, NULL, PP, SP;
dynamic SlowTypeTestStub_0x61d6e4, StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR;
dynamic local_0, local_10, local_18, local_m10, local_m18, local_m20, local_m28, local_m8;
dynamic sub_0x2b15f0, sub_0x61e890, sub_0x61f920, w0, w1, w16, w22, w3, x0, x1, x17, x2, x21;
dynamic x3, x4, x5, x8;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$api$game_api_service
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// GameApiService_betFruit
// raw disassembly:
//  0x41e31c: stp FP, LR, [SP, #-0x10]!
//  0x41e320: mov FP, SP
//  0x41e324: sub SP, SP, #0x38
//  0x41e328: stur x1, [FP, #-8]
//  0x41e32c: stur x2, [FP, #-0x10]
//  0x41e330: stur x3, [FP, #-0x18]
//  0x41e334: stur x5, [FP, #-0x20]
//  0x41e338: ldr BARRIER, [THR, #0x38]
//  0x41e33c: cmp SP, BARRIER
//  0x41e340: b.ls #0x41e428
//  0x41e344: mov x1, #2
//  0x41e348: bl #0x61e890
//  0x41e34c: mov x3, x0
//  0x41e350: ldur x0, [FP, #-0x18]
//  0x41e354: stur x3, [FP, #-0x28]
//  0x41e358: stur w0, [x3, #0xf]
//  0x41e35c: ldur x0, [FP, #-0x20]
//  0x41e360: stur w0, [x3, #0x13]
//  0x41e364: mov x1, NULL
//  0x41e368: mov x2, #8
//  0x41e36c: bl #0x61f920
//  0x41e370: mov x2, x0
//  0x41e374: add BARRIER, PP, #0x10, lsl #12
//  0x41e378: ldr BARRIER, [BARRIER, #0xb98]
//  0x41e37c: stur w16, [x2, #0xf]
//  0x41e380: ldur x3, [FP, #-8]
//  0x41e384: sbfiz x0, x3, #1, #0x1f
//  0x41e388: cmp x3, x0, asr #1
//  0x41e38c: b.eq #0x41e398
//  0x41e390: bl #0x61fba8
//  0x41e394: stur x3, [x0, #7]
//  0x41e398: stur w0, [x2, #0x13]
//  0x41e39c: add BARRIER, PP, #0x10, lsl #12
//  0x41e3a0: ldr BARRIER, [BARRIER, #0xb90]
//  0x41e3a4: stur w16, [x2, #0x17]
//  0x41e3a8: ldur x3, [FP, #-0x10]
//  0x41e3ac: sbfiz x0, x3, #1, #0x1f
//  0x41e3b0: cmp x3, x0, asr #1
//  0x41e3b4: b.eq #0x41e3c0
//  0x41e3b8: bl #0x61fba8
//  0x41e3bc: stur x3, [x0, #7]
//  0x41e3c0: stur w0, [x2, #0x1b]
//  0x41e3c4: ldr BARRIER, [PP, #0xbf0]
//  0x41e3c8: stp x2, BARRIER, [SP]
//  0x41e3cc: bl #0x27c0c8
//  0x41e3d0: ldur x2, [FP, #-0x28]
//  0x41e3d4: add x1, PP, #0x15, lsl #12
//  0x41e3d8: ldr x1, [x1, #0x298]
//  0x41e3dc: stur x0, [FP, #-0x18]
//  0x41e3e0: bl #0x61ec54
//  0x41e3e4: ldur x2, [FP, #-0x28]
//  0x41e3e8: add x1, PP, #0x15, lsl #12
//  0x41e3ec: ldr x1, [x1, #0x2a0]
//  0x41e3f0: stur x0, [FP, #-0x20]
//  0x41e3f4: bl #0x61ec54
//  0x41e3f8: str x0, [SP]
//  0x41e3fc: ldur x2, [FP, #-0x18]
//  0x41e400: ldur x3, [FP, #-0x20]
//  0x41e404: add x1, PP, #0x15, lsl #12
//  0x41e408: ldr x1, [x1, #0x2a8]
//  0x41e40c: add x4, PP, #0x10, lsl #12
//  0x41e410: ldr x4, [x4, #0xbc0]
//  0x41e414: bl #0x41e430
//  0x41e418: mov x0, NULL
//  0x41e41c: mov SP, FP
//  0x41e420: ldp FP, LR, [SP], #0x10
//  0x41e424: ret 
//  0x41e428: bl #0x61fa28
//  0x41e42c: b #0x41e344
//
dynamic GameApiService_betFruit() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41e31c
  // frame: FP = SP // 0x41e320
  // frame: SP = SP - 0x38 // 0x41e324
  local_m8 = x1; // 0x41e328
  local_m10 = x2; // 0x41e32c
  local_m18 = x3; // 0x41e330
  local_m20 = x5; // 0x41e334
  BARRIER = mem(THR, 0x38); // 0x41e338
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41e428
  }
  x1 = 2; // 0x41e344
  sub_0x61e890(); // 0x41e348
  x0 = local_m18; // 0x41e350
  x3 = x0; // 0x41e34c
  local_m28 = x3; // 0x41e354
  memSet(x3, 0xf, w0); // 0x41e358
  x0 = local_m20; // 0x41e35c
  memSet(x3, 0x13, w0); // 0x41e360
  x1 = NULL; // 0x41e364
  x2 = 8; // 0x41e368
  sub_0x61f920(); // 0x41e36c
  BARRIER = "packetNum" /* pp+0x10b98 */; // 0x41e378
  x2 = x0; // 0x41e370
  memSet(x2, 0xf, w16); // 0x41e37c
  x0 = (((local_m8) & 0x7fffffff) << 1) /* signed */; // 0x41e384
  x3 = local_m8; // 0x41e380
  if (x3 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x41e390
    memSet(x0, 7, x3); // 0x41e394
  }
  memSet(x2, 0x13, w0); // 0x41e398
  BARRIER = "soulCoinNum" /* pp+0x10b90 */; // 0x41e3a0
  memSet(x2, 0x17, w16); // 0x41e3a4
  x0 = (((local_m10) & 0x7fffffff) << 1) /* signed */; // 0x41e3ac
  x3 = local_m10; // 0x41e3a8
  if (x3 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x41e3b8
    memSet(x0, 7, x3); // 0x41e3bc
  }
  memSet(x2, 0x1b, w0); // 0x41e3c0
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x41e3c4
  // frame: x2, BARRIER, mem(SP) // 0x41e3c8
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x41e3cc
  x1 = mem((PP + 0x15000), 0x298) /* Function */; // 0x41e3d8
  x2 = local_m28; // 0x41e3d0
  local_m18 = x0; // 0x41e3dc
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41e3e0
  x1 = mem((PP + 0x15000), 0x2a0) /* Function */; // 0x41e3ec
  x2 = local_m28; // 0x41e3e4
  local_m20 = x0; // 0x41e3f0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41e3f4
  local_0 = x0; // 0x41e3f8
  x1 = "slot/machine/bet" /* pp+0x152a8 */; // 0x41e408
  x2 = local_m18; // 0x41e3fc
  x3 = local_m20; // 0x41e400
  x4 = mem((PP + 0x10000), 0xbc0) /* ImmutableArray */; // 0x41e410
  Http_postSimple() /* 0x41e430 */; // 0x41e414
  SP = FP; // 0x41e41c
  x0 = NULL; // 0x41e418
  // frame: FP, LR, mem(SP), 0x10 // 0x41e420
  return;
}

// GameApiService_getGameFruitResultDialog
// raw disassembly:
//  0x4444d0: stp FP, LR, [SP, #-0x10]!
//  0x4444d4: mov FP, SP
//  0x4444d8: sub SP, SP, #0x30
//  0x4444dc: stur x1, [FP, #-8]
//  0x4444e0: stur x2, [FP, #-0x10]
//  0x4444e4: stur x3, [FP, #-0x18]
//  0x4444e8: ldr BARRIER, [THR, #0x38]
//  0x4444ec: cmp SP, BARRIER
//  0x4444f0: b.ls #0x4445b0
//  0x4444f4: mov x1, #2
//  0x4444f8: bl #0x61e890
//  0x4444fc: mov x3, x0
//  0x444500: ldur x0, [FP, #-0x10]
//  0x444504: stur x3, [FP, #-0x20]
//  0x444508: stur w0, [x3, #0xf]
//  0x44450c: ldur x0, [FP, #-0x18]
//  0x444510: stur w0, [x3, #0x13]
//  0x444514: mov x1, NULL
//  0x444518: mov x2, #4
//  0x44451c: bl #0x61f920
//  0x444520: mov x2, x0
//  0x444524: add BARRIER, PP, #0xb, lsl #12
//  0x444528: ldr BARRIER, [BARRIER, #0x878]
//  0x44452c: stur w16, [x2, #0xf]
//  0x444530: ldur x3, [FP, #-8]
//  0x444534: sbfiz x0, x3, #1, #0x1f
//  0x444538: cmp x3, x0, asr #1
//  0x44453c: b.eq #0x444548
//  0x444540: bl #0x61fba8
//  0x444544: stur x3, [x0, #7]
//  0x444548: stur w0, [x2, #0x13]
//  0x44454c: ldr BARRIER, [PP, #0xbf0]
//  0x444550: stp x2, BARRIER, [SP]
//  0x444554: bl #0x27c0c8
//  0x444558: ldur x2, [FP, #-0x20]
//  0x44455c: add x1, PP, #0x11, lsl #12
//  0x444560: ldr x1, [x1, #0xc90]
//  0x444564: stur x0, [FP, #-0x10]
//  0x444568: bl #0x61ec54
//  0x44456c: ldur x2, [FP, #-0x20]
//  0x444570: add x1, PP, #0x11, lsl #12
//  0x444574: ldr x1, [x1, #0xc98]
//  0x444578: stur x0, [FP, #-0x18]
//  0x44457c: bl #0x61ec54
//  0x444580: ldur BARRIER, [FP, #-0x10]
//  0x444584: stp x0, BARRIER, [SP]
//  0x444588: ldur x2, [FP, #-0x18]
//  0x44458c: add x1, PP, #0x11, lsl #12
//  0x444590: ldr x1, [x1, #0xca0]
//  0x444594: add x4, PP, #0xf, lsl #12
//  0x444598: ldr x4, [x4, #0x400]
//  0x44459c: bl #0x3ab958
//  0x4445a0: mov x0, NULL
//  0x4445a4: mov SP, FP
//  0x4445a8: ldp FP, LR, [SP], #0x10
//  0x4445ac: ret 
//  0x4445b0: bl #0x61fa28
//  0x4445b4: b #0x4444f4
//
dynamic GameApiService_getGameFruitResultDialog() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4444d0
  // frame: FP = SP // 0x4444d4
  // frame: SP = SP - 0x30 // 0x4444d8
  local_m8 = x1; // 0x4444dc
  local_m10 = x2; // 0x4444e0
  local_m18 = x3; // 0x4444e4
  BARRIER = mem(THR, 0x38); // 0x4444e8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4445b0
  }
  x1 = 2; // 0x4444f4
  sub_0x61e890(); // 0x4444f8
  x0 = local_m10; // 0x444500
  x3 = x0; // 0x4444fc
  local_m20 = x3; // 0x444504
  memSet(x3, 0xf, w0); // 0x444508
  x0 = local_m18; // 0x44450c
  memSet(x3, 0x13, w0); // 0x444510
  x1 = NULL; // 0x444514
  x2 = 4; // 0x444518
  sub_0x61f920(); // 0x44451c
  BARRIER = "currentTimes" /* pp+0xb878 */; // 0x444528
  x2 = x0; // 0x444520
  memSet(x2, 0xf, w16); // 0x44452c
  x0 = (((local_m8) & 0x7fffffff) << 1) /* signed */; // 0x444534
  x3 = local_m8; // 0x444530
  if (x3 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x444540
    memSet(x0, 7, x3); // 0x444544
  }
  memSet(x2, 0x13, w0); // 0x444548
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x44454c
  // frame: x2, BARRIER, mem(SP) // 0x444550
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x444554
  x1 = mem((PP + 0x11000), 0xc90) /* Function */; // 0x444560
  x2 = local_m20; // 0x444558
  local_m10 = x0; // 0x444564
  AllocationStub__Closure() /* 0x61ec54 */; // 0x444568
  x1 = mem((PP + 0x11000), 0xc98) /* Function */; // 0x444574
  x2 = local_m20; // 0x44456c
  local_m18 = x0; // 0x444578
  AllocationStub__Closure() /* 0x61ec54 */; // 0x44457c
  BARRIER = local_m10; // 0x444580
  // frame: x0, BARRIER, mem(SP) // 0x444584
  x1 = "slot/machine/result" /* pp+0x11ca0 */; // 0x444590
  x2 = local_m18; // 0x444588
  x4 = mem((PP + 0xf000), 0x400) /* ImmutableArray */; // 0x444598
  Http_getSimple() /* 0x3ab958 */; // 0x44459c
  SP = FP; // 0x4445a4
  x0 = NULL; // 0x4445a0
  // frame: FP, LR, mem(SP), 0x10 // 0x4445a8
  return;
}

// GameApiService_anon_closure
// raw disassembly:
//  0x4445b8: stp FP, LR, [SP, #-0x10]!
//  0x4445bc: mov FP, SP
//  0x4445c0: sub SP, SP, #0x20
//  0x4445c4: ldr x0, [FP, #0x18]
//  0x4445c8: ldur w1, [x0, #0x17]
//  0x4445cc: add x1, x1, HEAP, lsl #32
//  0x4445d0: ldr BARRIER, [THR, #0x38]
//  0x4445d4: cmp SP, BARRIER
//  0x4445d8: b.ls #0x444624
//  0x4445dc: ldur w0, [x1, #0xf]
//  0x4445e0: add x0, x0, HEAP, lsl #32
//  0x4445e4: stur x0, [FP, #-8]
//  0x4445e8: bl #0x444d7c
//  0x4445ec: mov x1, x0
//  0x4445f0: ldr x2, [FP, #0x10]
//  0x4445f4: stur x0, [FP, #-0x10]
//  0x4445f8: bl #0x44462c
//  0x4445fc: ldur BARRIER, [FP, #-8]
//  0x444600: ldur LR, [FP, #-0x10]
//  0x444604: stp LR, BARRIER, [SP]
//  0x444608: ldur x0, [FP, #-8]
//  0x44460c: ldr x4, [PP, #0x140]
//  0x444610: ldur x2, [x0, #0x1f]
//  0x444614: blr x2
//  0x444618: mov SP, FP
//  0x44461c: ldp FP, LR, [SP], #0x10
//  0x444620: ret 
//  0x444624: bl #0x61fa28
//  0x444628: b #0x4445dc
//
dynamic GameApiService_anon_closure() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4445b8
  BARRIER = mem(THR, 0x38); // 0x4445d0
  // frame: FP = SP // 0x4445bc
  // frame: SP = SP - 0x20 // 0x4445c0
  w1 = mem((local_18), 0x17); // 0x4445c8
  x0 = local_18; // 0x4445c4
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4445cc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x444624
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4445e0
  local_m8 = x0; // 0x4445e4
  AllocationStub_GameFruitWinnerDialogInfo() /* 0x444d7c */; // 0x4445e8
  x1 = x0; // 0x4445ec
  x2 = local_10; // 0x4445f0
  local_m10 = x0; // 0x4445f4
  GameFruitWinnerDialogInfo_ctor_fromJson() /* 0x44462c */; // 0x4445f8
  BARRIER = local_m8; // 0x4445fc
  LR = local_m10; // 0x444600
  // frame: LR, BARRIER, mem(SP) // 0x444604
  x0 = local_m8; // 0x444608
  x2 = mem((local_m8), 0x1f); // 0x444610
  x4 = mem(PP, 0x140) /* Obj!? */; // 0x44460c
  callIndirect(x2); // 0x444614
  SP = FP; // 0x444618
  // frame: FP, LR, mem(SP), 0x10 // 0x44461c
  return;
}

// GameApiService_getRecentFruitResult
// raw disassembly:
//  0x4d1d18: stp FP, LR, [SP, #-0x10]!
//  0x4d1d1c: mov FP, SP
//  0x4d1d20: sub SP, SP, #8
//  0x4d1d24: stur x1, [FP, #-8]
//  0x4d1d28: ldr BARRIER, [THR, #0x38]
//  0x4d1d2c: cmp SP, BARRIER
//  0x4d1d30: b.ls #0x4d1d7c
//  0x4d1d34: mov x1, #1
//  0x4d1d38: bl #0x61e890
//  0x4d1d3c: mov x1, x0
//  0x4d1d40: ldur x0, [FP, #-8]
//  0x4d1d44: stur w0, [x1, #0xf]
//  0x4d1d48: mov x2, x1
//  0x4d1d4c: add x1, PP, #0x11, lsl #12
//  0x4d1d50: ldr x1, [x1, #0xd78]
//  0x4d1d54: bl #0x61ec54
//  0x4d1d58: mov x2, x0
//  0x4d1d5c: add x1, PP, #0x11, lsl #12
//  0x4d1d60: ldr x1, [x1, #0xd80]
//  0x4d1d64: ldr x4, [PP, #0x278]
//  0x4d1d68: bl #0x3ab958
//  0x4d1d6c: mov x0, NULL
//  0x4d1d70: mov SP, FP
//  0x4d1d74: ldp FP, LR, [SP], #0x10
//  0x4d1d78: ret 
//  0x4d1d7c: bl #0x61fa28
//  0x4d1d80: b #0x4d1d34
//
dynamic GameApiService_getRecentFruitResult() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d1d18
  // frame: FP = SP // 0x4d1d1c
  // frame: SP = SP - 8 // 0x4d1d20
  local_m8 = x1; // 0x4d1d24
  BARRIER = mem(THR, 0x38); // 0x4d1d28
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d1d7c
  }
  x1 = 1; // 0x4d1d34
  sub_0x61e890(); // 0x4d1d38
  x0 = local_m8; // 0x4d1d40
  x1 = x0; // 0x4d1d3c
  memSet(x1, 0xf, w0); // 0x4d1d44
  x1 = mem((PP + 0x11000), 0xd78) /* Function */; // 0x4d1d50
  x2 = x1; // 0x4d1d48
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d1d54
  x1 = "slot/machine/result/recent" /* pp+0x11d80 */; // 0x4d1d60
  x2 = x0; // 0x4d1d58
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x4d1d64
  Http_getSimple() /* 0x3ab958 */; // 0x4d1d68
  SP = FP; // 0x4d1d70
  x0 = NULL; // 0x4d1d6c
  // frame: FP, LR, mem(SP), 0x10 // 0x4d1d74
  return;
}

// GameApiService_anon_closure_2
// raw disassembly:
//  0x4d1d84: stp FP, LR, [SP, #-0x10]!
//  0x4d1d88: mov FP, SP
//  0x4d1d8c: sub SP, SP, #0x30
//  0x4d1d90: ldr x0, [FP, #0x18]
//  0x4d1d94: ldur w3, [x0, #0x17]
//  0x4d1d98: add x3, x3, HEAP, lsl #32
//  0x4d1d9c: stur x3, [FP, #-8]
//  0x4d1da0: ldr BARRIER, [THR, #0x38]
//  0x4d1da4: cmp SP, BARRIER
//  0x4d1da8: b.ls #0x4d1ef0
//  0x4d1dac: ldr x1, [FP, #0x10]
//  0x4d1db0: ldur x0, [x1, #-1]
//  0x4d1db4: ubfx x0, x0, #0xc, #0x14
//  0x4d1db8: add x2, PP, #0xf, lsl #12
//  0x4d1dbc: ldr x2, [x2, #0x380]
//  0x4d1dc0: sub LR, x0, #1, lsl #12
//  0x4d1dc4: ldr LR, [x21, LR, lsl #3]
//  0x4d1dc8: blr LR
//  0x4d1dcc: cmp w0, w22
//  0x4d1dd0: b.ne #0x4d1de8
//  0x4d1dd4: mov x1, NULL
//  0x4d1dd8: mov x2, #0
//  0x4d1ddc: bl #0x277268
//  0x4d1de0: mov x4, x0
//  0x4d1de4: b #0x4d1dec
//  0x4d1de8: mov x4, x0
//  0x4d1dec: ldur x3, [FP, #-8]
//  0x4d1df0: mov x0, x4
//  0x4d1df4: stur x4, [FP, #-0x10]
//  0x4d1df8: mov x2, NULL
//  0x4d1dfc: mov x1, NULL
//  0x4d1e00: mov x4, #0x3c
//  0x4d1e04: tbz w0, #0, #0x4d1e10
//  0x4d1e08: ldur x4, [x0, #-1]
//  0x4d1e0c: ubfx x4, x4, #0xc, #0x14
//  0x4d1e10: sub x4, x4, #0x5a
//  0x4d1e14: cmp x4, #2
//  0x4d1e18: b.ls #0x4d1e4c
//  0x4d1e1c: sub x4, x4, #0x16
//  0x4d1e20: cmp x4, #0x37
//  0x4d1e24: b.ls #0x4d1e4c
//  0x4d1e28: cmp x4, #0xebc
//  0x4d1e2c: b.eq #0x4d1e4c
//  0x4d1e30: sub x4, x4, #0xedd
//  0x4d1e34: cmp x4, #4
//  0x4d1e38: b.ls #0x4d1e4c
//  0x4d1e3c: ldr x8, [PP, #0x3b80]
//  0x4d1e40: add x3, PP, #0x11, lsl #12
//  0x4d1e44: ldr x3, [x3, #0xd88]
//  0x4d1e48: bl #0x61d6e4
//  0x4d1e4c: ldur x0, [FP, #-8]
//  0x4d1e50: ldur w3, [x0, #0xf]
//  0x4d1e54: add x3, x3, HEAP, lsl #32
//  0x4d1e58: stur x3, [FP, #-0x18]
//  0x4d1e5c: add x1, PP, #0x11, lsl #12
//  0x4d1e60: ldr x1, [x1, #0xd98]
//  0x4d1e64: mov x2, NULL
//  0x4d1e68: bl #0x61ec54
//  0x4d1e6c: mov x1, x0
//  0x4d1e70: ldur x0, [FP, #-0x10]
//  0x4d1e74: ldur x2, [x0, #-1]
//  0x4d1e78: ubfx x2, x2, #0xc, #0x14
//  0x4d1e7c: add BARRIER, PP, #0xb, lsl #12
//  0x4d1e80: ldr BARRIER, [BARRIER, #0x850]
//  0x4d1e84: stp x0, BARRIER, [SP, #8]
//  0x4d1e88: str x1, [SP]
//  0x4d1e8c: mov x0, x2
//  0x4d1e90: ldr x4, [PP, #0x58]
//  0x4d1e94: mov x17, #0x86d9
//  0x4d1e98: add LR, x0, x17
//  0x4d1e9c: ldr LR, [x21, LR, lsl #3]
//  0x4d1ea0: blr LR
//  0x4d1ea4: ldur x1, [x0, #-1]
//  0x4d1ea8: ubfx x1, x1, #0xc, #0x14
//  0x4d1eac: mov BARRIER, x0
//  0x4d1eb0: mov x0, x1
//  0x4d1eb4: mov x1, BARRIER
//  0x4d1eb8: ldr x4, [PP, #0x4c0]
//  0x4d1ebc: add LR, x0, #0x35e
//  0x4d1ec0: ldr LR, [x21, LR, lsl #3]
//  0x4d1ec4: blr LR
//  0x4d1ec8: ldur BARRIER, [FP, #-0x18]
//  0x4d1ecc: stp x0, BARRIER, [SP]
//  0x4d1ed0: ldur x0, [FP, #-0x18]
//  0x4d1ed4: ldr x4, [PP, #0x140]
//  0x4d1ed8: ldur x2, [x0, #0x1f]
//  0x4d1edc: blr x2
//  0x4d1ee0: mov x0, NULL
//  0x4d1ee4: mov SP, FP
//  0x4d1ee8: ldp FP, LR, [SP], #0x10
//  0x4d1eec: ret 
//  0x4d1ef0: bl #0x61fa28
//  0x4d1ef4: b #0x4d1dac
//
dynamic GameApiService_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d1d84
  // frame: FP = SP // 0x4d1d88
  // frame: SP = SP - 0x30 // 0x4d1d8c
  w3 = mem((local_18), 0x17); // 0x4d1d94
  x0 = local_18; // 0x4d1d90
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d1d98
  local_m8 = x3; // 0x4d1d9c
  BARRIER = mem(THR, 0x38); // 0x4d1da0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d1ef0
  }
  LR = mem(x21, ((((mem((local_10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4d1dc4
  x0 = ((mem((local_10), -1)) >> 12) & 0xfffff; // 0x4d1db4
  x1 = local_10; // 0x4d1dac
  x2 = "list" /* pp+0xf380 */; // 0x4d1dbc
  callIndirect(LR); // 0x4d1dc8
  if (w0 != w22) {
    x4 = x0; // 0x4d1de8
  } else {
    x1 = NULL; // 0x4d1dd4
    x2 = 0; // 0x4d1dd8
    GrowableList_factory_ctor() /* 0x277268 */; // 0x4d1ddc
    x4 = x0; // 0x4d1de0
  }
  x0 = x4; // 0x4d1df0
  x3 = local_m8; // 0x4d1dec
  local_m10 = x4; // 0x4d1df4
  x1 = NULL; // 0x4d1dfc
  x2 = NULL; // 0x4d1df8
  x4 = 60; // 0x4d1e00
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d1e0c
  }
  x4 = x4 - 0x5a; // 0x4d1e10
  if (x4 <= 2) {
  } else {
    x4 = x4 - 0x16; // 0x4d1e1c
    if (x4 <= 0x37) {
    } else {
      if (x4 == 0xebc) {
      } else {
        x4 = x4 - 0xedd; // 0x4d1e30
        if (x4 <= 4) {
        } else {
          x3 = mem((PP + 0x11000), 0xd88) /* Obj!? */; // 0x4d1e44
          x8 = mem(PP, 0x3b80) /* Type */; // 0x4d1e3c
          SlowTypeTestStub_0x61d6e4() /* 0x61d6e4 */; // 0x4d1e48
        }
      }
    }
  }
  w3 = mem((local_m8), 0xf); // 0x4d1e50
  x0 = local_m8; // 0x4d1e4c
  x3 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d1e54
  local_m18 = x3; // 0x4d1e58
  x1 = mem((PP + 0x11000), 0xd98) /* Function */; // 0x4d1e60
  x2 = NULL; // 0x4d1e64
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d1e68
  BARRIER = mem((PP + 0xb000), 0x850) /* TypeArguments */; // 0x4d1e80
  x0 = local_m10; // 0x4d1e70
  x1 = x0; // 0x4d1e6c
  x2 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x4d1e78
  // frame: x0, BARRIER, mem(SP, 8) // 0x4d1e84
  local_0 = x1; // 0x4d1e88
  LR = mem(x21, ((x0 + x17) << 3)); // 0x4d1e9c
  x0 = x2; // 0x4d1e8c
  x17 = 34521; // 0x4d1e94
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x4d1e90
  callIndirect(LR); // 0x4d1ea0
  BARRIER = x0; // 0x4d1eac
  x0 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4d1eb0
  x1 = x0; // 0x4d1eb4
  LR = mem(x21, ((x0 + 0x35e) << 3)); // 0x4d1ec0
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4d1eb8
  callIndirect(LR); // 0x4d1ec4
  BARRIER = local_m18; // 0x4d1ec8
  // frame: x0, BARRIER, mem(SP) // 0x4d1ecc
  x0 = local_m18; // 0x4d1ed0
  x2 = mem((local_m18), 0x1f); // 0x4d1ed8
  x4 = mem(PP, 0x140) /* Obj!? */; // 0x4d1ed4
  callIndirect(x2); // 0x4d1edc
  SP = FP; // 0x4d1ee4
  x0 = NULL; // 0x4d1ee0
  // frame: FP, LR, mem(SP), 0x10 // 0x4d1ee8
  return;
}

// GameApiService_anon_closure_3
// raw disassembly:
//  0x4d1ef8: stp FP, LR, [SP, #-0x10]!
//  0x4d1efc: mov FP, SP
//  0x4d1f00: sub SP, SP, #8
//  0x4d1f04: ldr BARRIER, [THR, #0x38]
//  0x4d1f08: cmp SP, BARRIER
//  0x4d1f0c: b.ls #0x4d1f50
//  0x4d1f10: ldr x0, [FP, #0x10]
//  0x4d1f14: mov x2, NULL
//  0x4d1f18: mov x1, NULL
//  0x4d1f1c: ldr x8, [PP, #0x3cd0]
//  0x4d1f20: add x3, PP, #0x11, lsl #12
//  0x4d1f24: ldr x3, [x3, #0xda0]
//  0x4d1f28: bl #0x2b15f0
//  0x4d1f2c: bl #0x4d2178
//  0x4d1f30: mov x1, x0
//  0x4d1f34: ldr x2, [FP, #0x10]
//  0x4d1f38: stur x0, [FP, #-8]
//  0x4d1f3c: bl #0x4d1f58
//  0x4d1f40: ldur x0, [FP, #-8]
//  0x4d1f44: mov SP, FP
//  0x4d1f48: ldp FP, LR, [SP], #0x10
//  0x4d1f4c: ret 
//  0x4d1f50: bl #0x61fa28
//  0x4d1f54: b #0x4d1f10
//
dynamic GameApiService_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d1ef8
  BARRIER = mem(THR, 0x38); // 0x4d1f04
  // frame: FP = SP // 0x4d1efc
  // frame: SP = SP - 8 // 0x4d1f00
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d1f50
  }
  x0 = local_10; // 0x4d1f10
  x1 = NULL; // 0x4d1f18
  x2 = NULL; // 0x4d1f14
  x3 = mem((PP + 0x11000), 0xda0) /* Obj!? */; // 0x4d1f24
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x4d1f1c
  sub_0x2b15f0(); // 0x4d1f28
  AllocationStub_BetItemInfo() /* 0x4d2178 */; // 0x4d1f2c
  x1 = x0; // 0x4d1f30
  x2 = local_10; // 0x4d1f34
  local_m8 = x0; // 0x4d1f38
  BetItemInfo_ctor_fromJson() /* 0x4d1f58 */; // 0x4d1f3c
  SP = FP; // 0x4d1f44
  x0 = local_m8; // 0x4d1f40
  // frame: FP, LR, mem(SP), 0x10 // 0x4d1f48
  return;
}

// GameApiService_getFruitGameProcess
// raw disassembly:
//  0x4d2184: stp FP, LR, [SP, #-0x10]!
//  0x4d2188: mov FP, SP
//  0x4d218c: sub SP, SP, #8
//  0x4d2190: stur x1, [FP, #-8]
//  0x4d2194: ldr BARRIER, [THR, #0x38]
//  0x4d2198: cmp SP, BARRIER
//  0x4d219c: b.ls #0x4d21e8
//  0x4d21a0: mov x1, #1
//  0x4d21a4: bl #0x61e890
//  0x4d21a8: mov x1, x0
//  0x4d21ac: ldur x0, [FP, #-8]
//  0x4d21b0: stur w0, [x1, #0xf]
//  0x4d21b4: mov x2, x1
//  0x4d21b8: add x1, PP, #0x11, lsl #12
//  0x4d21bc: ldr x1, [x1, #0xde8]
//  0x4d21c0: bl #0x61ec54
//  0x4d21c4: mov x2, x0
//  0x4d21c8: add x1, PP, #0x11, lsl #12
//  0x4d21cc: ldr x1, [x1, #0xdf0]
//  0x4d21d0: ldr x4, [PP, #0x278]
//  0x4d21d4: bl #0x3ab958
//  0x4d21d8: mov x0, NULL
//  0x4d21dc: mov SP, FP
//  0x4d21e0: ldp FP, LR, [SP], #0x10
//  0x4d21e4: ret 
//  0x4d21e8: bl #0x61fa28
//  0x4d21ec: b #0x4d21a0
//
dynamic GameApiService_getFruitGameProcess() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d2184
  // frame: FP = SP // 0x4d2188
  // frame: SP = SP - 8 // 0x4d218c
  local_m8 = x1; // 0x4d2190
  BARRIER = mem(THR, 0x38); // 0x4d2194
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d21e8
  }
  x1 = 1; // 0x4d21a0
  sub_0x61e890(); // 0x4d21a4
  x0 = local_m8; // 0x4d21ac
  x1 = x0; // 0x4d21a8
  memSet(x1, 0xf, w0); // 0x4d21b0
  x1 = mem((PP + 0x11000), 0xde8) /* Function */; // 0x4d21bc
  x2 = x1; // 0x4d21b4
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d21c0
  x1 = "slot/machine/process" /* pp+0x11df0 */; // 0x4d21cc
  x2 = x0; // 0x4d21c4
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x4d21d0
  Http_getSimple() /* 0x3ab958 */; // 0x4d21d4
  SP = FP; // 0x4d21dc
  x0 = NULL; // 0x4d21d8
  // frame: FP, LR, mem(SP), 0x10 // 0x4d21e0
  return;
}

// GameApiService_anon_closure_4
// raw disassembly:
//  0x4d21f0: stp FP, LR, [SP, #-0x10]!
//  0x4d21f4: mov FP, SP
//  0x4d21f8: sub SP, SP, #0x20
//  0x4d21fc: ldr x0, [FP, #0x18]
//  0x4d2200: ldur w1, [x0, #0x17]
//  0x4d2204: add x1, x1, HEAP, lsl #32
//  0x4d2208: ldr BARRIER, [THR, #0x38]
//  0x4d220c: cmp SP, BARRIER
//  0x4d2210: b.ls #0x4d2260
//  0x4d2214: ldur w0, [x1, #0xf]
//  0x4d2218: add x0, x0, HEAP, lsl #32
//  0x4d221c: stur x0, [FP, #-8]
//  0x4d2220: bl #0x4c3918
//  0x4d2224: mov x1, x0
//  0x4d2228: ldr x2, [FP, #0x10]
//  0x4d222c: stur x0, [FP, #-0x10]
//  0x4d2230: bl #0x4c2fa0
//  0x4d2234: ldur BARRIER, [FP, #-8]
//  0x4d2238: ldur LR, [FP, #-0x10]
//  0x4d223c: stp LR, BARRIER, [SP]
//  0x4d2240: ldur x0, [FP, #-8]
//  0x4d2244: ldr x4, [PP, #0x140]
//  0x4d2248: ldur x2, [x0, #0x1f]
//  0x4d224c: blr x2
//  0x4d2250: mov x0, NULL
//  0x4d2254: mov SP, FP
//  0x4d2258: ldp FP, LR, [SP], #0x10
//  0x4d225c: ret 
//  0x4d2260: bl #0x61fa28
//  0x4d2264: b #0x4d2214
//
dynamic GameApiService_anon_closure_4() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d21f0
  BARRIER = mem(THR, 0x38); // 0x4d2208
  // frame: FP = SP // 0x4d21f4
  // frame: SP = SP - 0x20 // 0x4d21f8
  w1 = mem((local_18), 0x17); // 0x4d2200
  x0 = local_18; // 0x4d21fc
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d2204
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d2260
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d2218
  local_m8 = x0; // 0x4d221c
  AllocationStub_GameFruitProcessResult() /* 0x4c3918 */; // 0x4d2220
  x1 = x0; // 0x4d2224
  x2 = local_10; // 0x4d2228
  local_m10 = x0; // 0x4d222c
  GameFruitProcessResult_ctor_fromJson() /* 0x4c2fa0 */; // 0x4d2230
  BARRIER = local_m8; // 0x4d2234
  LR = local_m10; // 0x4d2238
  // frame: LR, BARRIER, mem(SP) // 0x4d223c
  x0 = local_m8; // 0x4d2240
  x2 = mem((local_m8), 0x1f); // 0x4d2248
  x4 = mem(PP, 0x140) /* Obj!? */; // 0x4d2244
  callIndirect(x2); // 0x4d224c
  SP = FP; // 0x4d2254
  x0 = NULL; // 0x4d2250
  // frame: FP, LR, mem(SP), 0x10 // 0x4d2258
  return;
}

// GameApiService_getFruitGameResource
// raw disassembly:
//  0x4d3b98: stp FP, LR, [SP, #-0x10]!
//  0x4d3b9c: mov FP, SP
//  0x4d3ba0: sub SP, SP, #8
//  0x4d3ba4: stur x1, [FP, #-8]
//  0x4d3ba8: ldr BARRIER, [THR, #0x38]
//  0x4d3bac: cmp SP, BARRIER
//  0x4d3bb0: b.ls #0x4d3bfc
//  0x4d3bb4: mov x1, #1
//  0x4d3bb8: bl #0x61e890
//  0x4d3bbc: mov x1, x0
//  0x4d3bc0: ldur x0, [FP, #-8]
//  0x4d3bc4: stur w0, [x1, #0xf]
//  0x4d3bc8: mov x2, x1
//  0x4d3bcc: add x1, PP, #0x15, lsl #12
//  0x4d3bd0: ldr x1, [x1, #0x318]
//  0x4d3bd4: bl #0x61ec54
//  0x4d3bd8: mov x2, x0
//  0x4d3bdc: add x1, PP, #0x15, lsl #12
//  0x4d3be0: ldr x1, [x1, #0x320]
//  0x4d3be4: ldr x4, [PP, #0x278]
//  0x4d3be8: bl #0x3ab958
//  0x4d3bec: mov x0, NULL
//  0x4d3bf0: mov SP, FP
//  0x4d3bf4: ldp FP, LR, [SP], #0x10
//  0x4d3bf8: ret 
//  0x4d3bfc: bl #0x61fa28
//  0x4d3c00: b #0x4d3bb4
//
dynamic GameApiService_getFruitGameResource() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d3b98
  // frame: FP = SP // 0x4d3b9c
  // frame: SP = SP - 8 // 0x4d3ba0
  local_m8 = x1; // 0x4d3ba4
  BARRIER = mem(THR, 0x38); // 0x4d3ba8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d3bfc
  }
  x1 = 1; // 0x4d3bb4
  sub_0x61e890(); // 0x4d3bb8
  x0 = local_m8; // 0x4d3bc0
  x1 = x0; // 0x4d3bbc
  memSet(x1, 0xf, w0); // 0x4d3bc4
  x1 = mem((PP + 0x15000), 0x318) /* Function */; // 0x4d3bd0
  x2 = x1; // 0x4d3bc8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d3bd4
  x1 = "slot/machine/resource" /* pp+0x15320 */; // 0x4d3be0
  x2 = x0; // 0x4d3bd8
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x4d3be4
  Http_getSimple() /* 0x3ab958 */; // 0x4d3be8
  SP = FP; // 0x4d3bf0
  x0 = NULL; // 0x4d3bec
  // frame: FP, LR, mem(SP), 0x10 // 0x4d3bf4
  return;
}

// GameApiService_anon_closure_5
// raw disassembly:
//  0x4d3c04: stp FP, LR, [SP, #-0x10]!
//  0x4d3c08: mov FP, SP
//  0x4d3c0c: sub SP, SP, #0x20
//  0x4d3c10: ldr x0, [FP, #0x18]
//  0x4d3c14: ldur w1, [x0, #0x17]
//  0x4d3c18: add x1, x1, HEAP, lsl #32
//  0x4d3c1c: ldr BARRIER, [THR, #0x38]
//  0x4d3c20: cmp SP, BARRIER
//  0x4d3c24: b.ls #0x4d3c74
//  0x4d3c28: ldur w0, [x1, #0xf]
//  0x4d3c2c: add x0, x0, HEAP, lsl #32
//  0x4d3c30: stur x0, [FP, #-8]
//  0x4d3c34: bl #0x4d3ef0
//  0x4d3c38: mov x1, x0
//  0x4d3c3c: ldr x2, [FP, #0x10]
//  0x4d3c40: stur x0, [FP, #-0x10]
//  0x4d3c44: bl #0x4d3c7c
//  0x4d3c48: ldur BARRIER, [FP, #-8]
//  0x4d3c4c: ldur LR, [FP, #-0x10]
//  0x4d3c50: stp LR, BARRIER, [SP]
//  0x4d3c54: ldur x0, [FP, #-8]
//  0x4d3c58: ldr x4, [PP, #0x140]
//  0x4d3c5c: ldur x2, [x0, #0x1f]
//  0x4d3c60: blr x2
//  0x4d3c64: mov x0, NULL
//  0x4d3c68: mov SP, FP
//  0x4d3c6c: ldp FP, LR, [SP], #0x10
//  0x4d3c70: ret 
//  0x4d3c74: bl #0x61fa28
//  0x4d3c78: b #0x4d3c28
//
dynamic GameApiService_anon_closure_5() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d3c04
  BARRIER = mem(THR, 0x38); // 0x4d3c1c
  // frame: FP = SP // 0x4d3c08
  // frame: SP = SP - 0x20 // 0x4d3c0c
  w1 = mem((local_18), 0x17); // 0x4d3c14
  x0 = local_18; // 0x4d3c10
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d3c18
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d3c74
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d3c2c
  local_m8 = x0; // 0x4d3c30
  AllocationStub_FruitLandResource() /* 0x4d3ef0 */; // 0x4d3c34
  x1 = x0; // 0x4d3c38
  x2 = local_10; // 0x4d3c3c
  local_m10 = x0; // 0x4d3c40
  FruitLandResource_ctor_fromJson() /* 0x4d3c7c */; // 0x4d3c44
  BARRIER = local_m8; // 0x4d3c48
  LR = local_m10; // 0x4d3c4c
  // frame: LR, BARRIER, mem(SP) // 0x4d3c50
  x0 = local_m8; // 0x4d3c54
  x2 = mem((local_m8), 0x1f); // 0x4d3c5c
  x4 = mem(PP, 0x140) /* Obj!? */; // 0x4d3c58
  callIndirect(x2); // 0x4d3c60
  SP = FP; // 0x4d3c68
  x0 = NULL; // 0x4d3c64
  // frame: FP, LR, mem(SP), 0x10 // 0x4d3c6c
  return;
}
