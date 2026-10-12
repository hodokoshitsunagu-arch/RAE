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

dynamic AllocationStub__Closure, AllocationStub__Mint, BARRIER, FP, HEAP, Http_getSimple;
dynamic Http_postSimple, LR;
dynamic Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign;
dynamic Map_factory_ctor_fromLiteral, NULL, PP, SP;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, local_0, local_10, local_18;
dynamic local_20, local_m10, local_m18, local_m20, local_m28, local_m30, local_m8;
dynamic sub_0x61e890, sub_0x61f920, w0, w1, w16, w2, w22, w3, x0, x1, x2, x21, x3, x4, x5, x6;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$api$api_service
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// SOApiService_getSendPackRecordList
// raw disassembly:
//  0x3ab854: stp FP, LR, [SP, #-0x10]!
//  0x3ab858: mov FP, SP
//  0x3ab85c: sub SP, SP, #0x30
//  0x3ab860: stur x1, [FP, #-8]
//  0x3ab864: stur x2, [FP, #-0x10]
//  0x3ab868: stur x3, [FP, #-0x18]
//  0x3ab86c: ldr BARRIER, [THR, #0x38]
//  0x3ab870: cmp SP, BARRIER
//  0x3ab874: b.ls #0x3ab950
//  0x3ab878: mov x1, #2
//  0x3ab87c: bl #0x61e890
//  0x3ab880: mov x3, x0
//  0x3ab884: ldur x0, [FP, #-0x10]
//  0x3ab888: stur x3, [FP, #-0x20]
//  0x3ab88c: stur w0, [x3, #0xf]
//  0x3ab890: ldur x0, [FP, #-0x18]
//  0x3ab894: stur w0, [x3, #0x13]
//  0x3ab898: mov x1, NULL
//  0x3ab89c: mov x2, #4
//  0x3ab8a0: bl #0x61f920
//  0x3ab8a4: add BARRIER, PP, #0x10, lsl #12
//  0x3ab8a8: ldr BARRIER, [BARRIER, #0xba0]
//  0x3ab8ac: stur w16, [x0, #0xf]
//  0x3ab8b0: mov BARRIER, #4
//  0x3ab8b4: stur w16, [x0, #0x13]
//  0x3ab8b8: ldr BARRIER, [PP, #0xbf0]
//  0x3ab8bc: stp x0, BARRIER, [SP]
//  0x3ab8c0: bl #0x27c0c8
//  0x3ab8c4: mov x4, x0
//  0x3ab8c8: ldur x2, [FP, #-8]
//  0x3ab8cc: stur x4, [FP, #-0x10]
//  0x3ab8d0: tbnz x2, #0x3f, #0x3ab8fc
//  0x3ab8d4: sbfiz x0, x2, #1, #0x1f
//  0x3ab8d8: cmp x2, x0, asr #1
//  0x3ab8dc: b.eq #0x3ab8e8
//  0x3ab8e0: bl #0x61fba8
//  0x3ab8e4: stur x2, [x0, #7]
//  0x3ab8e8: mov x1, x4
//  0x3ab8ec: mov x3, x0
//  0x3ab8f0: add x2, PP, #0xf, lsl #12
//  0x3ab8f4: ldr x2, [x2, #0x368]
//  0x3ab8f8: bl #0x6164d4
//  0x3ab8fc: ldur x2, [FP, #-0x20]
//  0x3ab900: add x1, PP, #0x11, lsl #12
//  0x3ab904: ldr x1, [x1, #0x558]
//  0x3ab908: bl #0x61ec54
//  0x3ab90c: ldur x2, [FP, #-0x20]
//  0x3ab910: add x1, PP, #0x11, lsl #12
//  0x3ab914: ldr x1, [x1, #0x560]
//  0x3ab918: stur x0, [FP, #-0x18]
//  0x3ab91c: bl #0x61ec54
//  0x3ab920: ldur BARRIER, [FP, #-0x10]
//  0x3ab924: stp x0, BARRIER, [SP]
//  0x3ab928: ldur x2, [FP, #-0x18]
//  0x3ab92c: add x1, PP, #0x11, lsl #12
//  0x3ab930: ldr x1, [x1, #0x568]
//  0x3ab934: add x4, PP, #0xf, lsl #12
//  0x3ab938: ldr x4, [x4, #0x400]
//  0x3ab93c: bl #0x3ab958
//  0x3ab940: mov x0, NULL
//  0x3ab944: mov SP, FP
//  0x3ab948: ldp FP, LR, [SP], #0x10
//  0x3ab94c: ret 
//  0x3ab950: bl #0x61fa28
//  0x3ab954: b #0x3ab878
//
dynamic SOApiService_getSendPackRecordList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ab854
  // frame: FP = SP // 0x3ab858
  // frame: SP = SP - 0x30 // 0x3ab85c
  local_m8 = x1; // 0x3ab860
  local_m10 = x2; // 0x3ab864
  local_m18 = x3; // 0x3ab868
  BARRIER = mem(THR, 0x38); // 0x3ab86c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ab950
  }
  x1 = 2; // 0x3ab878
  sub_0x61e890(); // 0x3ab87c
  x0 = local_m10; // 0x3ab884
  x3 = x0; // 0x3ab880
  local_m20 = x3; // 0x3ab888
  memSet(x3, 0xf, w0); // 0x3ab88c
  x0 = local_m18; // 0x3ab890
  memSet(x3, 0x13, w0); // 0x3ab894
  x1 = NULL; // 0x3ab898
  x2 = 4; // 0x3ab89c
  sub_0x61f920(); // 0x3ab8a0
  BARRIER = "packetType" /* pp+0x10ba0 */; // 0x3ab8a8
  memSet(x0, 0xf, w16); // 0x3ab8ac
  BARRIER = 4; // 0x3ab8b0
  memSet(x0, 0x13, w16); // 0x3ab8b4
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x3ab8b8
  // frame: x0, BARRIER, mem(SP) // 0x3ab8bc
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x3ab8c0
  x2 = local_m8; // 0x3ab8c8
  x4 = x0; // 0x3ab8c4
  local_m10 = x4; // 0x3ab8cc
  if (x2 & (1 << 0x3f) != 0) {
  } else {
    x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x3ab8d4
    if (x2 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x3ab8e0
      memSet(x0, 7, x2); // 0x3ab8e4
    }
    x1 = x4; // 0x3ab8e8
    x2 = "cursor" /* pp+0xf368 */; // 0x3ab8f4
    x3 = x0; // 0x3ab8ec
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3ab8f8
  }
  x1 = mem((PP + 0x11000), 0x558) /* Function */; // 0x3ab904
  x2 = local_m20; // 0x3ab8fc
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3ab908
  x1 = mem((PP + 0x11000), 0x560) /* Function */; // 0x3ab914
  x2 = local_m20; // 0x3ab90c
  local_m18 = x0; // 0x3ab918
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3ab91c
  BARRIER = local_m10; // 0x3ab920
  // frame: x0, BARRIER, mem(SP) // 0x3ab924
  x1 = "red/packet/make/record/list" /* pp+0x11568 */; // 0x3ab930
  x2 = local_m18; // 0x3ab928
  x4 = mem((PP + 0xf000), 0x400) /* ImmutableArray */; // 0x3ab938
  Http_getSimple() /* 0x3ab958 */; // 0x3ab93c
  SP = FP; // 0x3ab944
  x0 = NULL; // 0x3ab940
  // frame: FP, LR, mem(SP), 0x10 // 0x3ab948
  return;
}

// SOApiService_anon_closure
// raw disassembly:
//  0x3ac798: stp FP, LR, [SP, #-0x10]!
//  0x3ac79c: mov FP, SP
//  0x3ac7a0: sub SP, SP, #8
//  0x3ac7a4: ldr x0, [FP, #0x20]
//  0x3ac7a8: ldur w1, [x0, #0x17]
//  0x3ac7ac: add x1, x1, HEAP, lsl #32
//  0x3ac7b0: ldr BARRIER, [THR, #0x38]
//  0x3ac7b4: cmp SP, BARRIER
//  0x3ac7b8: b.ls #0x3ac7e4
//  0x3ac7bc: ldur w0, [x1, #0x13]
//  0x3ac7c0: add x0, x0, HEAP, lsl #32
//  0x3ac7c4: str x0, [SP]
//  0x3ac7c8: ldr x4, [PP, #0x3a8]
//  0x3ac7cc: ldur x2, [x0, #0x1f]
//  0x3ac7d0: blr x2
//  0x3ac7d4: mov x0, NULL
//  0x3ac7d8: mov SP, FP
//  0x3ac7dc: ldp FP, LR, [SP], #0x10
//  0x3ac7e0: ret 
//  0x3ac7e4: bl #0x61fa28
//  0x3ac7e8: b #0x3ac7bc
//
dynamic SOApiService_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ac798
  BARRIER = mem(THR, 0x38); // 0x3ac7b0
  // frame: FP = SP // 0x3ac79c
  // frame: SP = SP - 8 // 0x3ac7a0
  w1 = mem((local_20), 0x17); // 0x3ac7a8
  x0 = local_20; // 0x3ac7a4
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3ac7ac
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ac7e4
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x3ac7c0
  local_0 = x0; // 0x3ac7c4
  x2 = mem(x0, 0x1f); // 0x3ac7cc
  x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x3ac7c8
  callIndirect(x2); // 0x3ac7d0
  SP = FP; // 0x3ac7d8
  x0 = NULL; // 0x3ac7d4
  // frame: FP, LR, mem(SP), 0x10 // 0x3ac7dc
  return;
}

// SOApiService_getPKBetGameRankList
// raw disassembly:
//  0x3ac7ec: stp FP, LR, [SP, #-0x10]!
//  0x3ac7f0: mov FP, SP
//  0x3ac7f4: sub SP, SP, #0x40
//  0x3ac7f8: stur x1, [FP, #-8]
//  0x3ac7fc: stur x2, [FP, #-0x10]
//  0x3ac800: stur x3, [FP, #-0x18]
//  0x3ac804: stur x5, [FP, #-0x20]
//  0x3ac808: stur x6, [FP, #-0x28]
//  0x3ac80c: ldr BARRIER, [THR, #0x38]
//  0x3ac810: cmp SP, BARRIER
//  0x3ac814: b.ls #0x3ac920
//  0x3ac818: mov x1, #2
//  0x3ac81c: bl #0x61e890
//  0x3ac820: mov x3, x0
//  0x3ac824: ldur x0, [FP, #-0x20]
//  0x3ac828: stur x3, [FP, #-0x30]
//  0x3ac82c: stur w0, [x3, #0xf]
//  0x3ac830: ldur x0, [FP, #-0x28]
//  0x3ac834: stur w0, [x3, #0x13]
//  0x3ac838: mov x1, NULL
//  0x3ac83c: mov x2, #8
//  0x3ac840: bl #0x61f920
//  0x3ac844: mov x2, x0
//  0x3ac848: add BARRIER, PP, #0xf, lsl #12
//  0x3ac84c: ldr BARRIER, [BARRIER, #0x320]
//  0x3ac850: stur w16, [x2, #0xf]
//  0x3ac854: ldur x3, [FP, #-0x18]
//  0x3ac858: sbfiz x0, x3, #1, #0x1f
//  0x3ac85c: cmp x3, x0, asr #1
//  0x3ac860: b.eq #0x3ac86c
//  0x3ac864: bl #0x61fba8
//  0x3ac868: stur x3, [x0, #7]
//  0x3ac86c: stur w0, [x2, #0x13]
//  0x3ac870: add BARRIER, PP, #0xf, lsl #12
//  0x3ac874: ldr BARRIER, [BARRIER, #0x338]
//  0x3ac878: stur w16, [x2, #0x17]
//  0x3ac87c: ldur x0, [FP, #-0x10]
//  0x3ac880: lsl x1, x0, #1
//  0x3ac884: stur w1, [x2, #0x1b]
//  0x3ac888: ldr BARRIER, [PP, #0xbf0]
//  0x3ac88c: stp x2, BARRIER, [SP]
//  0x3ac890: bl #0x27c0c8
//  0x3ac894: mov x4, x0
//  0x3ac898: ldur x2, [FP, #-8]
//  0x3ac89c: stur x4, [FP, #-0x20]
//  0x3ac8a0: tbnz x2, #0x3f, #0x3ac8cc
//  0x3ac8a4: sbfiz x0, x2, #1, #0x1f
//  0x3ac8a8: cmp x2, x0, asr #1
//  0x3ac8ac: b.eq #0x3ac8b8
//  0x3ac8b0: bl #0x61fba8
//  0x3ac8b4: stur x2, [x0, #7]
//  0x3ac8b8: mov x1, x4
//  0x3ac8bc: mov x3, x0
//  0x3ac8c0: add x2, PP, #0xf, lsl #12
//  0x3ac8c4: ldr x2, [x2, #0x368]
//  0x3ac8c8: bl #0x6164d4
//  0x3ac8cc: ldur x2, [FP, #-0x30]
//  0x3ac8d0: add x1, PP, #0xf, lsl #12
//  0x3ac8d4: ldr x1, [x1, #0x3e8]
//  0x3ac8d8: bl #0x61ec54
//  0x3ac8dc: ldur x2, [FP, #-0x30]
//  0x3ac8e0: add x1, PP, #0xf, lsl #12
//  0x3ac8e4: ldr x1, [x1, #0x3f0]
//  0x3ac8e8: stur x0, [FP, #-0x28]
//  0x3ac8ec: bl #0x61ec54
//  0x3ac8f0: ldur BARRIER, [FP, #-0x20]
//  0x3ac8f4: stp x0, BARRIER, [SP]
//  0x3ac8f8: ldur x2, [FP, #-0x28]
//  0x3ac8fc: add x1, PP, #0xf, lsl #12
//  0x3ac900: ldr x1, [x1, #0x3f8]
//  0x3ac904: add x4, PP, #0xf, lsl #12
//  0x3ac908: ldr x4, [x4, #0x400]
//  0x3ac90c: bl #0x3ab958
//  0x3ac910: mov x0, NULL
//  0x3ac914: mov SP, FP
//  0x3ac918: ldp FP, LR, [SP], #0x10
//  0x3ac91c: ret 
//  0x3ac920: bl #0x61fa28
//  0x3ac924: b #0x3ac818
//
dynamic SOApiService_getPKBetGameRankList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ac7ec
  // frame: FP = SP // 0x3ac7f0
  // frame: SP = SP - 0x40 // 0x3ac7f4
  local_m8 = x1; // 0x3ac7f8
  local_m10 = x2; // 0x3ac7fc
  local_m18 = x3; // 0x3ac800
  local_m20 = x5; // 0x3ac804
  local_m28 = x6; // 0x3ac808
  BARRIER = mem(THR, 0x38); // 0x3ac80c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ac920
  }
  x1 = 2; // 0x3ac818
  sub_0x61e890(); // 0x3ac81c
  x0 = local_m20; // 0x3ac824
  x3 = x0; // 0x3ac820
  local_m30 = x3; // 0x3ac828
  memSet(x3, 0xf, w0); // 0x3ac82c
  x0 = local_m28; // 0x3ac830
  memSet(x3, 0x13, w0); // 0x3ac834
  x1 = NULL; // 0x3ac838
  x2 = 8; // 0x3ac83c
  sub_0x61f920(); // 0x3ac840
  BARRIER = "gambleDiceId" /* pp+0xf320 */; // 0x3ac84c
  x2 = x0; // 0x3ac844
  memSet(x2, 0xf, w16); // 0x3ac850
  x0 = (((local_m18) & 0x7fffffff) << 1) /* signed */; // 0x3ac858
  x3 = local_m18; // 0x3ac854
  if (x3 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x3ac864
    memSet(x0, 7, x3); // 0x3ac868
  }
  memSet(x2, 0x13, w0); // 0x3ac86c
  BARRIER = "diceBet" /* pp+0xf338 */; // 0x3ac874
  memSet(x2, 0x17, w16); // 0x3ac878
  x0 = local_m10; // 0x3ac87c
  x1 = (local_m10) << 1; // 0x3ac880
  memSet(x2, 0x1b, w1); // 0x3ac884
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x3ac888
  // frame: x2, BARRIER, mem(SP) // 0x3ac88c
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x3ac890
  x2 = local_m8; // 0x3ac898
  x4 = x0; // 0x3ac894
  local_m20 = x4; // 0x3ac89c
  if (x2 & (1 << 0x3f) != 0) {
  } else {
    x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x3ac8a4
    if (x2 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x3ac8b0
      memSet(x0, 7, x2); // 0x3ac8b4
    }
    x1 = x4; // 0x3ac8b8
    x2 = "cursor" /* pp+0xf368 */; // 0x3ac8c4
    x3 = x0; // 0x3ac8bc
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3ac8c8
  }
  x1 = mem((PP + 0xf000), 0x3e8) /* Function */; // 0x3ac8d4
  x2 = local_m30; // 0x3ac8cc
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3ac8d8
  x1 = mem((PP + 0xf000), 0x3f0) /* Function */; // 0x3ac8e4
  x2 = local_m30; // 0x3ac8dc
  local_m28 = x0; // 0x3ac8e8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3ac8ec
  BARRIER = local_m20; // 0x3ac8f0
  // frame: x0, BARRIER, mem(SP) // 0x3ac8f4
  x1 = "gamble/dice/record/detail" /* pp+0xf3f8 */; // 0x3ac900
  x2 = local_m28; // 0x3ac8f8
  x4 = mem((PP + 0xf000), 0x400) /* ImmutableArray */; // 0x3ac908
  Http_getSimple() /* 0x3ab958 */; // 0x3ac90c
  SP = FP; // 0x3ac914
  x0 = NULL; // 0x3ac910
  // frame: FP, LR, mem(SP), 0x10 // 0x3ac918
  return;
}

// SOApiService_anon_closure_2
// raw disassembly:
//  0x3ac928: stp FP, LR, [SP, #-0x10]!
//  0x3ac92c: mov FP, SP
//  0x3ac930: sub SP, SP, #0x10
//  0x3ac934: ldr x0, [FP, #0x18]
//  0x3ac938: ldur w1, [x0, #0x17]
//  0x3ac93c: add x1, x1, HEAP, lsl #32
//  0x3ac940: ldr BARRIER, [THR, #0x38]
//  0x3ac944: cmp SP, BARRIER
//  0x3ac948: b.ls #0x3ac978
//  0x3ac94c: ldur w0, [x1, #0xf]
//  0x3ac950: add x0, x0, HEAP, lsl #32
//  0x3ac954: ldr BARRIER, [FP, #0x10]
//  0x3ac958: stp BARRIER, x0, [SP]
//  0x3ac95c: ldr x4, [PP, #0x140]
//  0x3ac960: ldur x2, [x0, #0x1f]
//  0x3ac964: blr x2
//  0x3ac968: mov x0, NULL
//  0x3ac96c: mov SP, FP
//  0x3ac970: ldp FP, LR, [SP], #0x10
//  0x3ac974: ret 
//  0x3ac978: bl #0x61fa28
//  0x3ac97c: b #0x3ac94c
//
dynamic SOApiService_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ac928
  BARRIER = mem(THR, 0x38); // 0x3ac940
  // frame: FP = SP // 0x3ac92c
  // frame: SP = SP - 0x10 // 0x3ac930
  w1 = mem((local_18), 0x17); // 0x3ac938
  x0 = local_18; // 0x3ac934
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3ac93c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ac978
  }
  BARRIER = local_10; // 0x3ac954
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x3ac950
  // frame: BARRIER, x0, mem(SP) // 0x3ac958
  x2 = mem(x0, 0x1f); // 0x3ac960
  x4 = mem(PP, 0x140) /* Obj!? */; // 0x3ac95c
  callIndirect(x2); // 0x3ac964
  SP = FP; // 0x3ac96c
  x0 = NULL; // 0x3ac968
  // frame: FP, LR, mem(SP), 0x10 // 0x3ac970
  return;
}

// SOApiService_getFinchFaceList
// raw disassembly:
//  0x3af000: stp FP, LR, [SP, #-0x10]!
//  0x3af004: mov FP, SP
//  0x3af008: sub SP, SP, #0x38
//  0x3af00c: mov x0, x2
//  0x3af010: stur x1, [FP, #-8]
//  0x3af014: stur x2, [FP, #-0x10]
//  0x3af018: stur x3, [FP, #-0x18]
//  0x3af01c: stur x5, [FP, #-0x20]
//  0x3af020: ldr BARRIER, [THR, #0x38]
//  0x3af024: cmp SP, BARRIER
//  0x3af028: b.ls #0x3af110
//  0x3af02c: mov x1, #2
//  0x3af030: bl #0x61e890
//  0x3af034: mov x3, x0
//  0x3af038: ldur x0, [FP, #-0x18]
//  0x3af03c: stur x3, [FP, #-0x28]
//  0x3af040: stur w0, [x3, #0xf]
//  0x3af044: ldur x0, [FP, #-0x20]
//  0x3af048: stur w0, [x3, #0x13]
//  0x3af04c: mov x1, NULL
//  0x3af050: mov x2, #4
//  0x3af054: bl #0x61f920
//  0x3af058: add BARRIER, PP, #0xf, lsl #12
//  0x3af05c: ldr BARRIER, [BARRIER, #0xb28]
//  0x3af060: stur w16, [x0, #0xf]
//  0x3af064: mov BARRIER, #0x28
//  0x3af068: stur w16, [x0, #0x13]
//  0x3af06c: ldr BARRIER, [PP, #0xbf0]
//  0x3af070: stp x0, BARRIER, [SP]
//  0x3af074: bl #0x27c0c8
//  0x3af078: ldur x3, [FP, #-8]
//  0x3af07c: stur x0, [FP, #-0x18]
//  0x3af080: cmp w3, w22
//  0x3af084: b.eq #0x3af0a8
//  0x3af088: sbfx x1, x3, #1, #0x1f
//  0x3af08c: tbz w3, #0, #0x3af094
//  0x3af090: ldur x1, [x3, #7]
//  0x3af094: tbnz x1, #0x3f, #0x3af0a8
//  0x3af098: mov x1, x0
//  0x3af09c: add x2, PP, #0xf, lsl #12
//  0x3af0a0: ldr x2, [x2, #0x368]
//  0x3af0a4: bl #0x6164d4
//  0x3af0a8: ldur x1, [FP, #-0x18]
//  0x3af0ac: ldur x3, [FP, #-0x10]
//  0x3af0b0: add x2, PP, #0xf, lsl #12
//  0x3af0b4: ldr x2, [x2, #0xb30]
//  0x3af0b8: bl #0x6164d4
//  0x3af0bc: ldur x2, [FP, #-0x28]
//  0x3af0c0: add x1, PP, #0xf, lsl #12
//  0x3af0c4: ldr x1, [x1, #0xb38]
//  0x3af0c8: bl #0x61ec54
//  0x3af0cc: ldur x2, [FP, #-0x28]
//  0x3af0d0: add x1, PP, #0xf, lsl #12
//  0x3af0d4: ldr x1, [x1, #0xb40]
//  0x3af0d8: stur x0, [FP, #-8]
//  0x3af0dc: bl #0x61ec54
//  0x3af0e0: ldur BARRIER, [FP, #-0x18]
//  0x3af0e4: stp x0, BARRIER, [SP]
//  0x3af0e8: ldur x2, [FP, #-8]
//  0x3af0ec: add x1, PP, #0xf, lsl #12
//  0x3af0f0: ldr x1, [x1, #0xb48]
//  0x3af0f4: add x4, PP, #0xf, lsl #12
//  0x3af0f8: ldr x4, [x4, #0x400]
//  0x3af0fc: bl #0x3ab958
//  0x3af100: mov x0, NULL
//  0x3af104: mov SP, FP
//  0x3af108: ldp FP, LR, [SP], #0x10
//  0x3af10c: ret 
//  0x3af110: bl #0x61fa28
//  0x3af114: b #0x3af02c
//
dynamic SOApiService_getFinchFaceList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3af000
  // frame: FP = SP // 0x3af004
  // frame: SP = SP - 0x38 // 0x3af008
  x0 = x2; // 0x3af00c
  local_m8 = x1; // 0x3af010
  local_m10 = x2; // 0x3af014
  local_m18 = x3; // 0x3af018
  local_m20 = x5; // 0x3af01c
  BARRIER = mem(THR, 0x38); // 0x3af020
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3af110
  }
  x1 = 2; // 0x3af02c
  sub_0x61e890(); // 0x3af030
  x0 = local_m18; // 0x3af038
  x3 = x0; // 0x3af034
  local_m28 = x3; // 0x3af03c
  memSet(x3, 0xf, w0); // 0x3af040
  x0 = local_m20; // 0x3af044
  memSet(x3, 0x13, w0); // 0x3af048
  x1 = NULL; // 0x3af04c
  x2 = 4; // 0x3af050
  sub_0x61f920(); // 0x3af054
  BARRIER = "pageSize" /* pp+0xfb28 */; // 0x3af05c
  memSet(x0, 0xf, w16); // 0x3af060
  BARRIER = 40; // 0x3af064
  memSet(x0, 0x13, w16); // 0x3af068
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x3af06c
  // frame: x0, BARRIER, mem(SP) // 0x3af070
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x3af074
  x3 = local_m8; // 0x3af078
  local_m18 = x0; // 0x3af07c
  if (w3 == w22) {
  } else {
    x1 = (x3 >> 1) & 0x7fffffff; // 0x3af088
    if (x3 & (1 << 0) == 0) {
    } else {
      x1 = mem(x3, 7); // 0x3af090
    }
    if (x1 & (1 << 0x3f) != 0) {
    } else {
      x1 = x0; // 0x3af098
      x2 = "cursor" /* pp+0xf368 */; // 0x3af0a0
      Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3af0a4
    }
  }
  x1 = local_m18; // 0x3af0a8
  x2 = "groupId" /* pp+0xfb30 */; // 0x3af0b4
  x3 = local_m10; // 0x3af0ac
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3af0b8
  x1 = mem((PP + 0xf000), 0xb38) /* Function */; // 0x3af0c4
  x2 = local_m28; // 0x3af0bc
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3af0c8
  x1 = mem((PP + 0xf000), 0xb40) /* Function */; // 0x3af0d4
  x2 = local_m28; // 0x3af0cc
  local_m8 = x0; // 0x3af0d8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3af0dc
  BARRIER = local_m18; // 0x3af0e0
  // frame: x0, BARRIER, mem(SP) // 0x3af0e4
  x1 = "commodity/coin/specialFace/query" /* pp+0xfb48 */; // 0x3af0f0
  x2 = local_m8; // 0x3af0e8
  x4 = mem((PP + 0xf000), 0x400) /* ImmutableArray */; // 0x3af0f8
  Http_getSimple() /* 0x3ab958 */; // 0x3af0fc
  SP = FP; // 0x3af104
  x0 = NULL; // 0x3af100
  // frame: FP, LR, mem(SP), 0x10 // 0x3af108
  return;
}

// SOApiService_anon_closure_3
// raw disassembly:
//  0x41e59c: stp FP, LR, [SP, #-0x10]!
//  0x41e5a0: mov FP, SP
//  0x41e5a4: sub SP, SP, #0x10
//  0x41e5a8: ldr x0, [FP, #0x20]
//  0x41e5ac: ldur w1, [x0, #0x17]
//  0x41e5b0: add x1, x1, HEAP, lsl #32
//  0x41e5b4: ldr BARRIER, [THR, #0x38]
//  0x41e5b8: cmp SP, BARRIER
//  0x41e5bc: b.ls #0x41e5ec
//  0x41e5c0: ldur w0, [x1, #0x13]
//  0x41e5c4: add x0, x0, HEAP, lsl #32
//  0x41e5c8: ldr BARRIER, [FP, #0x18]
//  0x41e5cc: stp BARRIER, x0, [SP]
//  0x41e5d0: ldr x4, [PP, #0x140]
//  0x41e5d4: ldur x2, [x0, #0x1f]
//  0x41e5d8: blr x2
//  0x41e5dc: mov x0, NULL
//  0x41e5e0: mov SP, FP
//  0x41e5e4: ldp FP, LR, [SP], #0x10
//  0x41e5e8: ret 
//  0x41e5ec: bl #0x61fa28
//  0x41e5f0: b #0x41e5c0
//
dynamic SOApiService_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41e59c
  BARRIER = mem(THR, 0x38); // 0x41e5b4
  // frame: FP = SP // 0x41e5a0
  // frame: SP = SP - 0x10 // 0x41e5a4
  w1 = mem((local_20), 0x17); // 0x41e5ac
  x0 = local_20; // 0x41e5a8
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41e5b0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41e5ec
  }
  BARRIER = local_18; // 0x41e5c8
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x41e5c4
  // frame: BARRIER, x0, mem(SP) // 0x41e5cc
  x2 = mem(x0, 0x1f); // 0x41e5d4
  x4 = mem(PP, 0x140) /* Obj!? */; // 0x41e5d0
  callIndirect(x2); // 0x41e5d8
  SP = FP; // 0x41e5e0
  x0 = NULL; // 0x41e5dc
  // frame: FP, LR, mem(SP), 0x10 // 0x41e5e4
  return;
}

// SOApiService_buyAvatarItem
// raw disassembly:
//  0x41e5f4: stp FP, LR, [SP, #-0x10]!
//  0x41e5f8: mov FP, SP
//  0x41e5fc: sub SP, SP, #0x38
//  0x41e600: stur x1, [FP, #-8]
//  0x41e604: stur x2, [FP, #-0x10]
//  0x41e608: stur x3, [FP, #-0x18]
//  0x41e60c: stur x5, [FP, #-0x20]
//  0x41e610: ldr BARRIER, [THR, #0x38]
//  0x41e614: cmp SP, BARRIER
//  0x41e618: b.ls #0x41e6d4
//  0x41e61c: mov x1, #2
//  0x41e620: bl #0x61e890
//  0x41e624: mov x3, x0
//  0x41e628: ldur x0, [FP, #-0x18]
//  0x41e62c: stur x3, [FP, #-0x28]
//  0x41e630: stur w0, [x3, #0xf]
//  0x41e634: ldur x0, [FP, #-0x20]
//  0x41e638: stur w0, [x3, #0x13]
//  0x41e63c: mov x1, NULL
//  0x41e640: mov x2, #8
//  0x41e644: bl #0x61f920
//  0x41e648: add BARRIER, PP, #0xf, lsl #12
//  0x41e64c: ldr BARRIER, [BARRIER, #0xa80]
//  0x41e650: stur w16, [x0, #0xf]
//  0x41e654: ldur x1, [FP, #-8]
//  0x41e658: stur w1, [x0, #0x13]
//  0x41e65c: add BARRIER, PP, #0x14, lsl #12
//  0x41e660: ldr BARRIER, [BARRIER, #0xab0]
//  0x41e664: stur w16, [x0, #0x17]
//  0x41e668: ldur x1, [FP, #-0x10]
//  0x41e66c: stur w1, [x0, #0x1b]
//  0x41e670: ldr BARRIER, [PP, #0xbf0]
//  0x41e674: stp x0, BARRIER, [SP]
//  0x41e678: bl #0x27c0c8
//  0x41e67c: ldur x2, [FP, #-0x28]
//  0x41e680: add x1, PP, #0x14, lsl #12
//  0x41e684: ldr x1, [x1, #0xab8]
//  0x41e688: stur x0, [FP, #-8]
//  0x41e68c: bl #0x61ec54
//  0x41e690: ldur x2, [FP, #-0x28]
//  0x41e694: add x1, PP, #0x14, lsl #12
//  0x41e698: ldr x1, [x1, #0xac0]
//  0x41e69c: stur x0, [FP, #-0x10]
//  0x41e6a0: bl #0x61ec54
//  0x41e6a4: str x0, [SP]
//  0x41e6a8: ldur x2, [FP, #-8]
//  0x41e6ac: ldur x3, [FP, #-0x10]
//  0x41e6b0: add x1, PP, #0x14, lsl #12
//  0x41e6b4: ldr x1, [x1, #0xac8]
//  0x41e6b8: add x4, PP, #0x10, lsl #12
//  0x41e6bc: ldr x4, [x4, #0xbc0]
//  0x41e6c0: bl #0x41e430
//  0x41e6c4: mov x0, NULL
//  0x41e6c8: mov SP, FP
//  0x41e6cc: ldp FP, LR, [SP], #0x10
//  0x41e6d0: ret 
//  0x41e6d4: bl #0x61fa28
//  0x41e6d8: b #0x41e61c
//
dynamic SOApiService_buyAvatarItem() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41e5f4
  // frame: FP = SP // 0x41e5f8
  // frame: SP = SP - 0x38 // 0x41e5fc
  local_m8 = x1; // 0x41e600
  local_m10 = x2; // 0x41e604
  local_m18 = x3; // 0x41e608
  local_m20 = x5; // 0x41e60c
  BARRIER = mem(THR, 0x38); // 0x41e610
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41e6d4
  }
  x1 = 2; // 0x41e61c
  sub_0x61e890(); // 0x41e620
  x0 = local_m18; // 0x41e628
  x3 = x0; // 0x41e624
  local_m28 = x3; // 0x41e62c
  memSet(x3, 0xf, w0); // 0x41e630
  x0 = local_m20; // 0x41e634
  memSet(x3, 0x13, w0); // 0x41e638
  x1 = NULL; // 0x41e63c
  x2 = 8; // 0x41e640
  sub_0x61f920(); // 0x41e644
  BARRIER = "itemIdentity" /* pp+0xfa80 */; // 0x41e64c
  memSet(x0, 0xf, w16); // 0x41e650
  x1 = local_m8; // 0x41e654
  memSet(x0, 0x13, w1); // 0x41e658
  BARRIER = "sourceCode" /* pp+0x14ab0 */; // 0x41e660
  memSet(x0, 0x17, w16); // 0x41e664
  x1 = local_m10; // 0x41e668
  memSet(x0, 0x1b, w1); // 0x41e66c
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x41e670
  // frame: x0, BARRIER, mem(SP) // 0x41e674
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x41e678
  x1 = mem((PP + 0x14000), 0xab8) /* Function */; // 0x41e684
  x2 = local_m28; // 0x41e67c
  local_m8 = x0; // 0x41e688
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41e68c
  x1 = mem((PP + 0x14000), 0xac0) /* Function */; // 0x41e698
  x2 = local_m28; // 0x41e690
  local_m10 = x0; // 0x41e69c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41e6a0
  local_0 = x0; // 0x41e6a4
  x1 = "commodity/coin/purchase" /* pp+0x14ac8 */; // 0x41e6b4
  x2 = local_m8; // 0x41e6a8
  x3 = local_m10; // 0x41e6ac
  x4 = mem((PP + 0x10000), 0xbc0) /* ImmutableArray */; // 0x41e6bc
  Http_postSimple() /* 0x41e430 */; // 0x41e6c0
  SP = FP; // 0x41e6c8
  x0 = NULL; // 0x41e6c4
  // frame: FP, LR, mem(SP), 0x10 // 0x41e6cc
  return;
}

// SOApiService_anon_closure_4
// raw disassembly:
//  0x33b21c: stp FP, LR, [SP, #-0x10]!
//  0x33b220: mov FP, SP
//  0x33b224: sub SP, SP, #8
//  0x33b228: ldr x0, [FP, #0x18]
//  0x33b22c: ldur w1, [x0, #0x17]
//  0x33b230: add x1, x1, HEAP, lsl #32
//  0x33b234: ldr BARRIER, [THR, #0x38]
//  0x33b238: cmp SP, BARRIER
//  0x33b23c: b.ls #0x33b268
//  0x33b240: ldur w0, [x1, #0xf]
//  0x33b244: add x0, x0, HEAP, lsl #32
//  0x33b248: str x0, [SP]
//  0x33b24c: ldr x4, [PP, #0x3a8]
//  0x33b250: ldur x2, [x0, #0x1f]
//  0x33b254: blr x2
//  0x33b258: mov x0, NULL
//  0x33b25c: mov SP, FP
//  0x33b260: ldp FP, LR, [SP], #0x10
//  0x33b264: ret 
//  0x33b268: bl #0x61fa28
//  0x33b26c: b #0x33b240
//
dynamic SOApiService_anon_closure_4() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x33b21c
  BARRIER = mem(THR, 0x38); // 0x33b234
  // frame: FP = SP // 0x33b220
  // frame: SP = SP - 8 // 0x33b224
  w1 = mem((local_18), 0x17); // 0x33b22c
  x0 = local_18; // 0x33b228
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x33b230
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x33b268
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x33b244
  local_0 = x0; // 0x33b248
  x2 = mem(x0, 0x1f); // 0x33b250
  x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x33b24c
  callIndirect(x2); // 0x33b254
  SP = FP; // 0x33b25c
  x0 = NULL; // 0x33b258
  // frame: FP, LR, mem(SP), 0x10 // 0x33b260
  return;
}

// SOApiService_getTotalCoins
// raw disassembly:
//  0x41e914: stp FP, LR, [SP, #-0x10]!
//  0x41e918: mov FP, SP
//  0x41e91c: sub SP, SP, #8
//  0x41e920: stur x1, [FP, #-8]
//  0x41e924: ldr BARRIER, [THR, #0x38]
//  0x41e928: cmp SP, BARRIER
//  0x41e92c: b.ls #0x41e978
//  0x41e930: mov x1, #1
//  0x41e934: bl #0x61e890
//  0x41e938: mov x1, x0
//  0x41e93c: ldur x0, [FP, #-8]
//  0x41e940: stur w0, [x1, #0xf]
//  0x41e944: mov x2, x1
//  0x41e948: add x1, PP, #0x10, lsl #12
//  0x41e94c: ldr x1, [x1, #0xd78]
//  0x41e950: bl #0x61ec54
//  0x41e954: mov x2, x0
//  0x41e958: add x1, PP, #0x10, lsl #12
//  0x41e95c: ldr x1, [x1, #0xd80]
//  0x41e960: ldr x4, [PP, #0x278]
//  0x41e964: bl #0x3ab958
//  0x41e968: mov x0, NULL
//  0x41e96c: mov SP, FP
//  0x41e970: ldp FP, LR, [SP], #0x10
//  0x41e974: ret 
//  0x41e978: bl #0x61fa28
//  0x41e97c: b #0x41e930
//
dynamic SOApiService_getTotalCoins() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41e914
  // frame: FP = SP // 0x41e918
  // frame: SP = SP - 8 // 0x41e91c
  local_m8 = x1; // 0x41e920
  BARRIER = mem(THR, 0x38); // 0x41e924
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41e978
  }
  x1 = 1; // 0x41e930
  sub_0x61e890(); // 0x41e934
  x0 = local_m8; // 0x41e93c
  x1 = x0; // 0x41e938
  memSet(x1, 0xf, w0); // 0x41e940
  x1 = mem((PP + 0x10000), 0xd78) /* Function */; // 0x41e94c
  x2 = x1; // 0x41e944
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41e950
  x1 = "soul-coin/total" /* pp+0x10d80 */; // 0x41e95c
  x2 = x0; // 0x41e954
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x41e960
  Http_getSimple() /* 0x3ab958 */; // 0x41e964
  SP = FP; // 0x41e96c
  x0 = NULL; // 0x41e968
  // frame: FP, LR, mem(SP), 0x10 // 0x41e970
  return;
}

// SOApiService_anon_closure_5
// raw disassembly:
//  0x41e980: stp FP, LR, [SP, #-0x10]!
//  0x41e984: mov FP, SP
//  0x41e988: sub SP, SP, #0x18
//  0x41e98c: ldr x0, [FP, #0x18]
//  0x41e990: ldur w3, [x0, #0x17]
//  0x41e994: add x3, x3, HEAP, lsl #32
//  0x41e998: stur x3, [FP, #-8]
//  0x41e99c: ldr BARRIER, [THR, #0x38]
//  0x41e9a0: cmp SP, BARRIER
//  0x41e9a4: b.ls #0x41ea48
//  0x41e9a8: ldr x1, [FP, #0x10]
//  0x41e9ac: ldur x0, [x1, #-1]
//  0x41e9b0: ubfx x0, x0, #0xc, #0x14
//  0x41e9b4: ldr x2, [PP, #0x1348]
//  0x41e9b8: sub LR, x0, #1, lsl #12
//  0x41e9bc: ldr LR, [x21, LR, lsl #3]
//  0x41e9c0: blr LR
//  0x41e9c4: mov x1, x0
//  0x41e9c8: ldur x0, [FP, #-8]
//  0x41e9cc: ldur w2, [x0, #0xf]
//  0x41e9d0: add x2, x2, HEAP, lsl #32
//  0x41e9d4: cmp w1, w22
//  0x41e9d8: b.eq #0x41ea0c
//  0x41e9dc: mov x0, #0x3c
//  0x41e9e0: tbz w1, #0, #0x41e9ec
//  0x41e9e4: ldur x0, [x1, #-1]
//  0x41e9e8: ubfx x0, x0, #0xc, #0x14
//  0x41e9ec: sub BARRIER, x0, #0x3c
//  0x41e9f0: cmp BARRIER, #1
//  0x41e9f4: b.hi #0x41ea0c
//  0x41e9f8: sbfx x0, x1, #1, #0x1f
//  0x41e9fc: tbz w1, #0, #0x41ea04
//  0x41ea00: ldur x0, [x1, #7]
//  0x41ea04: mov x3, x0
//  0x41ea08: b #0x41ea10
//  0x41ea0c: mov x3, #0
//  0x41ea10: sbfiz x0, x3, #1, #0x1f
//  0x41ea14: cmp x3, x0, asr #1
//  0x41ea18: b.eq #0x41ea24
//  0x41ea1c: bl #0x61fba8
//  0x41ea20: stur x3, [x0, #7]
//  0x41ea24: stp x0, x2, [SP]
//  0x41ea28: mov x0, x2
//  0x41ea2c: ldr x4, [PP, #0x140]
//  0x41ea30: ldur x2, [x0, #0x1f]
//  0x41ea34: blr x2
//  0x41ea38: mov x0, NULL
//  0x41ea3c: mov SP, FP
//  0x41ea40: ldp FP, LR, [SP], #0x10
//  0x41ea44: ret 
//  0x41ea48: bl #0x61fa28
//  0x41ea4c: b #0x41e9a8
//
dynamic SOApiService_anon_closure_5() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41e980
  // frame: FP = SP // 0x41e984
  // frame: SP = SP - 0x18 // 0x41e988
  w3 = mem((local_18), 0x17); // 0x41e990
  x0 = local_18; // 0x41e98c
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41e994
  local_m8 = x3; // 0x41e998
  BARRIER = mem(THR, 0x38); // 0x41e99c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41ea48
  }
  LR = mem(x21, ((((mem((local_10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x41e9bc
  x0 = ((mem((local_10), -1)) >> 12) & 0xfffff; // 0x41e9b0
  x1 = local_10; // 0x41e9a8
  x2 = "data" /* pp+0x1348 */; // 0x41e9b4
  callIndirect(LR); // 0x41e9c0
  w2 = mem((local_m8), 0xf); // 0x41e9cc
  x0 = local_m8; // 0x41e9c8
  x1 = x0; // 0x41e9c4
  x2 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41e9d0
  if (w1 == w22) {
  } else {
    x0 = 60; // 0x41e9dc
    if (x1 & (1 << 0) == 0) {
    } else {
      x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x41e9e8
    }
    BARRIER = x0 - 0x3c; // 0x41e9ec
    if (BARRIER > 1) {
      x3 = 0; // 0x41ea0c
    } else {
      x0 = (x1 >> 1) & 0x7fffffff; // 0x41e9f8
      if (x1 & (1 << 0) == 0) {
      } else {
        x0 = mem(x1, 7); // 0x41ea00
      }
      x3 = x0; // 0x41ea04
    }
    x0 = ((x3 & 0x7fffffff) << 1) /* signed */; // 0x41ea10
    if (x3 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x41ea1c
      memSet(x0, 7, x3); // 0x41ea20
    }
    // frame: x0, x2, mem(SP) // 0x41ea24
    x0 = x2; // 0x41ea28
    x2 = mem(x0, 0x1f); // 0x41ea30
    x4 = mem(PP, 0x140) /* Obj!? */; // 0x41ea2c
    callIndirect(x2); // 0x41ea34
    SP = FP; // 0x41ea3c
    x0 = NULL; // 0x41ea38
    // frame: FP, LR, mem(SP), 0x10 // 0x41ea40
    return;
  }
}

// SOApiService_getRecentChat
// raw disassembly:
//  0x4229c0: stp FP, LR, [SP, #-0x10]!
//  0x4229c4: mov FP, SP
//  0x4229c8: sub SP, SP, #0x20
//  0x4229cc: stur x1, [FP, #-8]
//  0x4229d0: stur x2, [FP, #-0x10]
//  0x4229d4: ldr BARRIER, [THR, #0x38]
//  0x4229d8: cmp SP, BARRIER
//  0x4229dc: b.ls #0x422a50
//  0x4229e0: mov x1, #2
//  0x4229e4: bl #0x61e890
//  0x4229e8: mov x3, x0
//  0x4229ec: ldur x0, [FP, #-8]
//  0x4229f0: stur x3, [FP, #-0x18]
//  0x4229f4: stur w0, [x3, #0xf]
//  0x4229f8: ldur x0, [FP, #-0x10]
//  0x4229fc: stur w0, [x3, #0x13]
//  0x422a00: mov x2, x3
//  0x422a04: add x1, PP, #0x14, lsl #12
//  0x422a08: ldr x1, [x1, #0xe50]
//  0x422a0c: bl #0x61ec54
//  0x422a10: ldur x2, [FP, #-0x18]
//  0x422a14: add x1, PP, #0x14, lsl #12
//  0x422a18: ldr x1, [x1, #0xe58]
//  0x422a1c: stur x0, [FP, #-8]
//  0x422a20: bl #0x61ec54
//  0x422a24: str x0, [SP]
//  0x422a28: ldur x2, [FP, #-8]
//  0x422a2c: add x1, PP, #0x14, lsl #12
//  0x422a30: ldr x1, [x1, #0xe60]
//  0x422a34: add x4, PP, #0x14, lsl #12
//  0x422a38: ldr x4, [x4, #0xe68]
//  0x422a3c: bl #0x3ab958
//  0x422a40: mov x0, NULL
//  0x422a44: mov SP, FP
//  0x422a48: ldp FP, LR, [SP], #0x10
//  0x422a4c: ret 
//  0x422a50: bl #0x61fa28
//  0x422a54: b #0x4229e0
//
dynamic SOApiService_getRecentChat() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4229c0
  // frame: FP = SP // 0x4229c4
  // frame: SP = SP - 0x20 // 0x4229c8
  local_m8 = x1; // 0x4229cc
  local_m10 = x2; // 0x4229d0
  BARRIER = mem(THR, 0x38); // 0x4229d4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x422a50
  }
  x1 = 2; // 0x4229e0
  sub_0x61e890(); // 0x4229e4
  x0 = local_m8; // 0x4229ec
  x3 = x0; // 0x4229e8
  local_m18 = x3; // 0x4229f0
  memSet(x3, 0xf, w0); // 0x4229f4
  x0 = local_m10; // 0x4229f8
  memSet(x3, 0x13, w0); // 0x4229fc
  x1 = mem((PP + 0x14000), 0xe50) /* Function */; // 0x422a08
  x2 = x3; // 0x422a00
  AllocationStub__Closure() /* 0x61ec54 */; // 0x422a0c
  x1 = mem((PP + 0x14000), 0xe58) /* Function */; // 0x422a18
  x2 = local_m18; // 0x422a10
  local_m8 = x0; // 0x422a1c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x422a20
  local_0 = x0; // 0x422a24
  x1 = "user/chat/recent" /* pp+0x14e60 */; // 0x422a30
  x2 = local_m8; // 0x422a28
  x4 = mem((PP + 0x14000), 0xe68) /* ImmutableArray */; // 0x422a38
  Http_getSimple() /* 0x3ab958 */; // 0x422a3c
  SP = FP; // 0x422a44
  x0 = NULL; // 0x422a40
  // frame: FP, LR, mem(SP), 0x10 // 0x422a48
  return;
}

// SOApiService_searchFollow
// raw disassembly:
//  0x4235dc: stp FP, LR, [SP, #-0x10]!
//  0x4235e0: mov FP, SP
//  0x4235e4: sub SP, SP, #0x38
//  0x4235e8: stur x1, [FP, #-8]
//  0x4235ec: stur x2, [FP, #-0x10]
//  0x4235f0: stur x3, [FP, #-0x18]
//  0x4235f4: stur x5, [FP, #-0x20]
//  0x4235f8: ldr BARRIER, [THR, #0x38]
//  0x4235fc: cmp SP, BARRIER
//  0x423600: b.ls #0x42371c
//  0x423604: mov x1, #2
//  0x423608: bl #0x61e890
//  0x42360c: mov x3, x0
//  0x423610: ldur x0, [FP, #-0x18]
//  0x423614: stur x3, [FP, #-0x28]
//  0x423618: stur w0, [x3, #0xf]
//  0x42361c: ldur x0, [FP, #-0x20]
//  0x423620: stur w0, [x3, #0x13]
//  0x423624: ldur x0, [FP, #-8]
//  0x423628: add BARRIER, PP, #0x14, lsl #12
//  0x42362c: ldr BARRIER, [BARRIER, #0xee8]
//  0x423630: cmp w0, w16
//  0x423634: b.ne #0x423648
//  0x423638: mov x0, NULL
//  0x42363c: mov SP, FP
//  0x423640: ldp FP, LR, [SP], #0x10
//  0x423644: ret 
//  0x423648: ldur x4, [FP, #-0x10]
//  0x42364c: mov x1, NULL
//  0x423650: mov x2, #4
//  0x423654: bl #0x61f920
//  0x423658: mov x2, x0
//  0x42365c: ldr BARRIER, [PP, #0x2250]
//  0x423660: stur w16, [x2, #0xf]
//  0x423664: ldur x0, [FP, #-8]
//  0x423668: ldur x3, [x0, #7]
//  0x42366c: sbfiz x0, x3, #1, #0x1f
//  0x423670: cmp x3, x0, asr #1
//  0x423674: b.eq #0x423680
//  0x423678: bl #0x61fba8
//  0x42367c: stur x3, [x0, #7]
//  0x423680: stur w0, [x2, #0x13]
//  0x423684: ldr BARRIER, [PP, #0xbf0]
//  0x423688: stp x2, BARRIER, [SP]
//  0x42368c: bl #0x27c0c8
//  0x423690: mov x4, x0
//  0x423694: ldur x2, [FP, #-0x10]
//  0x423698: stur x4, [FP, #-8]
//  0x42369c: tbnz x2, #0x3f, #0x4236c8
//  0x4236a0: sbfiz x0, x2, #1, #0x1f
//  0x4236a4: cmp x2, x0, asr #1
//  0x4236a8: b.eq #0x4236b4
//  0x4236ac: bl #0x61fba8
//  0x4236b0: stur x2, [x0, #7]
//  0x4236b4: mov x1, x4
//  0x4236b8: mov x3, x0
//  0x4236bc: add x2, PP, #0xf, lsl #12
//  0x4236c0: ldr x2, [x2, #0x368]
//  0x4236c4: bl #0x6164d4
//  0x4236c8: ldur x2, [FP, #-0x28]
//  0x4236cc: add x1, PP, #0x14, lsl #12
//  0x4236d0: ldr x1, [x1, #0xef0]
//  0x4236d4: bl #0x61ec54
//  0x4236d8: ldur x2, [FP, #-0x28]
//  0x4236dc: add x1, PP, #0x14, lsl #12
//  0x4236e0: ldr x1, [x1, #0xef8]
//  0x4236e4: stur x0, [FP, #-0x18]
//  0x4236e8: bl #0x61ec54
//  0x4236ec: ldur BARRIER, [FP, #-8]
//  0x4236f0: stp x0, BARRIER, [SP]
//  0x4236f4: ldur x2, [FP, #-0x18]
//  0x4236f8: add x1, PP, #0x14, lsl #12
//  0x4236fc: ldr x1, [x1, #0xf00]
//  0x423700: add x4, PP, #0xf, lsl #12
//  0x423704: ldr x4, [x4, #0x400]
//  0x423708: bl #0x3ab958
//  0x42370c: mov x0, NULL
//  0x423710: mov SP, FP
//  0x423714: ldp FP, LR, [SP], #0x10
//  0x423718: ret 
//  0x42371c: bl #0x61fa28
//  0x423720: b #0x423604
//
dynamic SOApiService_searchFollow() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4235dc
  // frame: FP = SP // 0x4235e0
  // frame: SP = SP - 0x38 // 0x4235e4
  local_m8 = x1; // 0x4235e8
  local_m10 = x2; // 0x4235ec
  local_m18 = x3; // 0x4235f0
  local_m20 = x5; // 0x4235f4
  BARRIER = mem(THR, 0x38); // 0x4235f8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42371c
  }
  x1 = 2; // 0x423604
  sub_0x61e890(); // 0x423608
  x0 = local_m18; // 0x423610
  x3 = x0; // 0x42360c
  local_m28 = x3; // 0x423614
  memSet(x3, 0xf, w0); // 0x423618
  x0 = local_m20; // 0x42361c
  memSet(x3, 0x13, w0); // 0x423620
  BARRIER = mem((PP + 0x14000), 0xee8) /* Obj!FollowType@12165  */; // 0x42362c
  x0 = local_m8; // 0x423624
  if (w0 == w16) {
    SP = FP; // 0x42363c
    x0 = NULL; // 0x423638
    // frame: FP, LR, mem(SP), 0x10 // 0x423640
    return;
  }
  x1 = NULL; // 0x42364c
  x2 = 4; // 0x423650
  x4 = local_m10; // 0x423648
  sub_0x61f920(); // 0x423654
  BARRIER = "type" /* pp+0x2250 */; // 0x42365c
  x2 = x0; // 0x423658
  memSet(x2, 0xf, w16); // 0x423660
  x0 = (((mem((local_m8), 7)) & 0x7fffffff) << 1) /* signed */; // 0x42366c
  x3 = mem((local_m8), 7); // 0x423668
  if (x3 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x423678
    memSet(x0, 7, x3); // 0x42367c
  }
  memSet(x2, 0x13, w0); // 0x423680
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x423684
  // frame: x2, BARRIER, mem(SP) // 0x423688
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x42368c
  x2 = local_m10; // 0x423694
  x4 = x0; // 0x423690
  local_m8 = x4; // 0x423698
  if (x2 & (1 << 0x3f) != 0) {
  } else {
    x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x4236a0
    if (x2 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x4236ac
      memSet(x0, 7, x2); // 0x4236b0
    }
    x1 = x4; // 0x4236b4
    x2 = "cursor" /* pp+0xf368 */; // 0x4236c0
    x3 = x0; // 0x4236b8
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x4236c4
  }
  x1 = mem((PP + 0x14000), 0xef0) /* Function */; // 0x4236d0
  x2 = local_m28; // 0x4236c8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4236d4
  x1 = mem((PP + 0x14000), 0xef8) /* Function */; // 0x4236e0
  x2 = local_m28; // 0x4236d8
  local_m18 = x0; // 0x4236e4
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4236e8
  BARRIER = local_m8; // 0x4236ec
  // frame: x0, BARRIER, mem(SP) // 0x4236f0
  x1 = "user/follow/search" /* pp+0x14f00 */; // 0x4236fc
  x2 = local_m18; // 0x4236f4
  x4 = mem((PP + 0xf000), 0x400) /* ImmutableArray */; // 0x423704
  Http_getSimple() /* 0x3ab958 */; // 0x423708
  SP = FP; // 0x423710
  x0 = NULL; // 0x42370c
  // frame: FP, LR, mem(SP), 0x10 // 0x423714
  return;
}

// SOApiService_searchRoomList
// raw disassembly:
//  0x427f68: stp FP, LR, [SP, #-0x10]!
//  0x427f6c: mov FP, SP
//  0x427f70: sub SP, SP, #0x38
//  0x427f74: stur x1, [FP, #-8]
//  0x427f78: stur x2, [FP, #-0x10]
//  0x427f7c: stur x3, [FP, #-0x18]
//  0x427f80: stur x5, [FP, #-0x20]
//  0x427f84: ldr BARRIER, [THR, #0x38]
//  0x427f88: cmp SP, BARRIER
//  0x427f8c: b.ls #0x428088
//  0x427f90: mov x1, #2
//  0x427f94: bl #0x61e890
//  0x427f98: mov x3, x0
//  0x427f9c: ldur x0, [FP, #-0x18]
//  0x427fa0: stur x3, [FP, #-0x28]
//  0x427fa4: stur w0, [x3, #0xf]
//  0x427fa8: ldur x0, [FP, #-0x20]
//  0x427fac: stur w0, [x3, #0x13]
//  0x427fb0: ldur x0, [FP, #-8]
//  0x427fb4: ldur w1, [x0, #7]
//  0x427fb8: cbnz w1, #0x427fcc
//  0x427fbc: mov x0, NULL
//  0x427fc0: mov SP, FP
//  0x427fc4: ldp FP, LR, [SP], #0x10
//  0x427fc8: ret 
//  0x427fcc: ldur x4, [FP, #-0x10]
//  0x427fd0: mov x1, NULL
//  0x427fd4: mov x2, #4
//  0x427fd8: bl #0x61f920
//  0x427fdc: add BARRIER, PP, #0x10, lsl #12
//  0x427fe0: ldr BARRIER, [BARRIER, #0xc0]
//  0x427fe4: stur w16, [x0, #0xf]
//  0x427fe8: ldur x1, [FP, #-8]
//  0x427fec: stur w1, [x0, #0x13]
//  0x427ff0: ldr BARRIER, [PP, #0xbf0]
//  0x427ff4: stp x0, BARRIER, [SP]
//  0x427ff8: bl #0x27c0c8
//  0x427ffc: mov x4, x0
//  0x428000: ldur x2, [FP, #-0x10]
//  0x428004: stur x4, [FP, #-8]
//  0x428008: tbnz x2, #0x3f, #0x428034
//  0x42800c: sbfiz x0, x2, #1, #0x1f
//  0x428010: cmp x2, x0, asr #1
//  0x428014: b.eq #0x428020
//  0x428018: bl #0x61fba8
//  0x42801c: stur x2, [x0, #7]
//  0x428020: mov x1, x4
//  0x428024: mov x3, x0
//  0x428028: add x2, PP, #0xf, lsl #12
//  0x42802c: ldr x2, [x2, #0x368]
//  0x428030: bl #0x6164d4
//  0x428034: ldur x2, [FP, #-0x28]
//  0x428038: add x1, PP, #0x11, lsl #12
//  0x42803c: ldr x1, [x1, #0x88]
//  0x428040: bl #0x61ec54
//  0x428044: ldur x2, [FP, #-0x28]
//  0x428048: add x1, PP, #0x11, lsl #12
//  0x42804c: ldr x1, [x1, #0x90]
//  0x428050: stur x0, [FP, #-0x18]
//  0x428054: bl #0x61ec54
//  0x428058: ldur BARRIER, [FP, #-8]
//  0x42805c: stp x0, BARRIER, [SP]
//  0x428060: ldur x2, [FP, #-0x18]
//  0x428064: add x1, PP, #0x11, lsl #12
//  0x428068: ldr x1, [x1, #0x98]
//  0x42806c: add x4, PP, #0xf, lsl #12
//  0x428070: ldr x4, [x4, #0x400]
//  0x428074: bl #0x3ab958
//  0x428078: mov x0, NULL
//  0x42807c: mov SP, FP
//  0x428080: ldp FP, LR, [SP], #0x10
//  0x428084: ret 
//  0x428088: bl #0x61fa28
//  0x42808c: b #0x427f90
//
dynamic SOApiService_searchRoomList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x427f68
  // frame: FP = SP // 0x427f6c
  // frame: SP = SP - 0x38 // 0x427f70
  local_m8 = x1; // 0x427f74
  local_m10 = x2; // 0x427f78
  local_m18 = x3; // 0x427f7c
  local_m20 = x5; // 0x427f80
  BARRIER = mem(THR, 0x38); // 0x427f84
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x428088
  }
  x1 = 2; // 0x427f90
  sub_0x61e890(); // 0x427f94
  x0 = local_m18; // 0x427f9c
  x3 = x0; // 0x427f98
  local_m28 = x3; // 0x427fa0
  memSet(x3, 0xf, w0); // 0x427fa4
  x0 = local_m20; // 0x427fa8
  memSet(x3, 0x13, w0); // 0x427fac
  w1 = mem((local_m8), 7); // 0x427fb4
  x0 = local_m8; // 0x427fb0
  x1 = (mem((local_m8), 7)) & 0xffffffff; // 0x427fb4
  if (w1 == 0) {
    SP = FP; // 0x427fc0
    x0 = NULL; // 0x427fbc
    // frame: FP, LR, mem(SP), 0x10 // 0x427fc4
    return;
  }
  x1 = NULL; // 0x427fd0
  x2 = 4; // 0x427fd4
  x4 = local_m10; // 0x427fcc
  sub_0x61f920(); // 0x427fd8
  BARRIER = "content" /* pp+0x100c0 */; // 0x427fe0
  memSet(x0, 0xf, w16); // 0x427fe4
  x1 = local_m8; // 0x427fe8
  memSet(x0, 0x13, w1); // 0x427fec
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x427ff0
  // frame: x0, BARRIER, mem(SP) // 0x427ff4
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x427ff8
  x2 = local_m10; // 0x428000
  x4 = x0; // 0x427ffc
  local_m8 = x4; // 0x428004
  if (x2 & (1 << 0x3f) != 0) {
  } else {
    x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x42800c
    if (x2 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x428018
      memSet(x0, 7, x2); // 0x42801c
    }
    x1 = x4; // 0x428020
    x2 = "cursor" /* pp+0xf368 */; // 0x42802c
    x3 = x0; // 0x428024
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x428030
  }
  x1 = mem((PP + 0x11000), 0x88) /* Function */; // 0x42803c
  x2 = local_m28; // 0x428034
  AllocationStub__Closure() /* 0x61ec54 */; // 0x428040
  x1 = mem((PP + 0x11000), 0x90) /* Function */; // 0x42804c
  x2 = local_m28; // 0x428044
  local_m18 = x0; // 0x428050
  AllocationStub__Closure() /* 0x61ec54 */; // 0x428054
  BARRIER = local_m8; // 0x428058
  // frame: x0, BARRIER, mem(SP) // 0x42805c
  x1 = "virtual/party/room/search" /* pp+0x11098 */; // 0x428068
  x2 = local_m18; // 0x428060
  x4 = mem((PP + 0xf000), 0x400) /* ImmutableArray */; // 0x428070
  Http_getSimple() /* 0x3ab958 */; // 0x428074
  SP = FP; // 0x42807c
  x0 = NULL; // 0x428078
  // frame: FP, LR, mem(SP), 0x10 // 0x428080
  return;
}

// SOApiService_getPinchFaceBuyRecordList
// raw disassembly:
//  0x42e8f4: stp FP, LR, [SP, #-0x10]!
//  0x42e8f8: mov FP, SP
//  0x42e8fc: sub SP, SP, #0x30
//  0x42e900: stur x1, [FP, #-8]
//  0x42e904: stur x2, [FP, #-0x10]
//  0x42e908: stur x3, [FP, #-0x18]
//  0x42e90c: ldr BARRIER, [THR, #0x38]
//  0x42e910: cmp SP, BARRIER
//  0x42e914: b.ls #0x42e9f0
//  0x42e918: mov x1, #2
//  0x42e91c: bl #0x61e890
//  0x42e920: mov x3, x0
//  0x42e924: ldur x0, [FP, #-0x10]
//  0x42e928: stur x3, [FP, #-0x20]
//  0x42e92c: stur w0, [x3, #0xf]
//  0x42e930: ldur x0, [FP, #-0x18]
//  0x42e934: stur w0, [x3, #0x13]
//  0x42e938: mov x1, NULL
//  0x42e93c: mov x2, #4
//  0x42e940: bl #0x61f920
//  0x42e944: add BARRIER, PP, #0xf, lsl #12
//  0x42e948: ldr BARRIER, [BARRIER, #0xb28]
//  0x42e94c: stur w16, [x0, #0xf]
//  0x42e950: mov BARRIER, #0x28
//  0x42e954: stur w16, [x0, #0x13]
//  0x42e958: ldr BARRIER, [PP, #0xbf0]
//  0x42e95c: stp x0, BARRIER, [SP]
//  0x42e960: bl #0x27c0c8
//  0x42e964: mov x4, x0
//  0x42e968: ldur x2, [FP, #-8]
//  0x42e96c: stur x4, [FP, #-0x10]
//  0x42e970: tbnz x2, #0x3f, #0x42e99c
//  0x42e974: sbfiz x0, x2, #1, #0x1f
//  0x42e978: cmp x2, x0, asr #1
//  0x42e97c: b.eq #0x42e988
//  0x42e980: bl #0x61fba8
//  0x42e984: stur x2, [x0, #7]
//  0x42e988: mov x1, x4
//  0x42e98c: mov x3, x0
//  0x42e990: add x2, PP, #0xf, lsl #12
//  0x42e994: ldr x2, [x2, #0x368]
//  0x42e998: bl #0x6164d4
//  0x42e99c: ldur x2, [FP, #-0x20]
//  0x42e9a0: add x1, PP, #0x14, lsl #12
//  0x42e9a4: ldr x1, [x1, #0x8a8]
//  0x42e9a8: bl #0x61ec54
//  0x42e9ac: ldur x2, [FP, #-0x20]
//  0x42e9b0: add x1, PP, #0x14, lsl #12
//  0x42e9b4: ldr x1, [x1, #0x8b0]
//  0x42e9b8: stur x0, [FP, #-0x18]
//  0x42e9bc: bl #0x61ec54
//  0x42e9c0: ldur BARRIER, [FP, #-0x10]
//  0x42e9c4: stp x0, BARRIER, [SP]
//  0x42e9c8: ldur x2, [FP, #-0x18]
//  0x42e9cc: add x1, PP, #0x14, lsl #12
//  0x42e9d0: ldr x1, [x1, #0x8b8]
//  0x42e9d4: add x4, PP, #0xf, lsl #12
//  0x42e9d8: ldr x4, [x4, #0x400]
//  0x42e9dc: bl #0x3ab958
//  0x42e9e0: mov x0, NULL
//  0x42e9e4: mov SP, FP
//  0x42e9e8: ldp FP, LR, [SP], #0x10
//  0x42e9ec: ret 
//  0x42e9f0: bl #0x61fa28
//  0x42e9f4: b #0x42e918
//
dynamic SOApiService_getPinchFaceBuyRecordList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42e8f4
  // frame: FP = SP // 0x42e8f8
  // frame: SP = SP - 0x30 // 0x42e8fc
  local_m8 = x1; // 0x42e900
  local_m10 = x2; // 0x42e904
  local_m18 = x3; // 0x42e908
  BARRIER = mem(THR, 0x38); // 0x42e90c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42e9f0
  }
  x1 = 2; // 0x42e918
  sub_0x61e890(); // 0x42e91c
  x0 = local_m10; // 0x42e924
  x3 = x0; // 0x42e920
  local_m20 = x3; // 0x42e928
  memSet(x3, 0xf, w0); // 0x42e92c
  x0 = local_m18; // 0x42e930
  memSet(x3, 0x13, w0); // 0x42e934
  x1 = NULL; // 0x42e938
  x2 = 4; // 0x42e93c
  sub_0x61f920(); // 0x42e940
  BARRIER = "pageSize" /* pp+0xfb28 */; // 0x42e948
  memSet(x0, 0xf, w16); // 0x42e94c
  BARRIER = 40; // 0x42e950
  memSet(x0, 0x13, w16); // 0x42e954
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x42e958
  // frame: x0, BARRIER, mem(SP) // 0x42e95c
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x42e960
  x2 = local_m8; // 0x42e968
  x4 = x0; // 0x42e964
  local_m10 = x4; // 0x42e96c
  if (x2 & (1 << 0x3f) != 0) {
  } else {
    x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x42e974
    if (x2 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x42e980
      memSet(x0, 7, x2); // 0x42e984
    }
    x1 = x4; // 0x42e988
    x2 = "cursor" /* pp+0xf368 */; // 0x42e994
    x3 = x0; // 0x42e98c
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x42e998
  }
  x1 = mem((PP + 0x14000), 0x8a8) /* Function */; // 0x42e9a4
  x2 = local_m20; // 0x42e99c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42e9a8
  x1 = mem((PP + 0x14000), 0x8b0) /* Function */; // 0x42e9b4
  x2 = local_m20; // 0x42e9ac
  local_m18 = x0; // 0x42e9b8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42e9bc
  BARRIER = local_m10; // 0x42e9c0
  // frame: x0, BARRIER, mem(SP) // 0x42e9c4
  x1 = "special/face/purchase/record" /* pp+0x148b8 */; // 0x42e9d0
  x2 = local_m18; // 0x42e9c8
  x4 = mem((PP + 0xf000), 0x400) /* ImmutableArray */; // 0x42e9d8
  Http_getSimple() /* 0x3ab958 */; // 0x42e9dc
  SP = FP; // 0x42e9e4
  x0 = NULL; // 0x42e9e0
  // frame: FP, LR, mem(SP), 0x10 // 0x42e9e8
  return;
}

// SOApiService_wearAvatarItem
// raw disassembly:
//  0x430cb8: stp FP, LR, [SP, #-0x10]!
//  0x430cbc: mov FP, SP
//  0x430cc0: sub SP, SP, #0x30
//  0x430cc4: stur x1, [FP, #-8]
//  0x430cc8: stur x2, [FP, #-0x10]
//  0x430ccc: stur x3, [FP, #-0x18]
//  0x430cd0: ldr BARRIER, [THR, #0x38]
//  0x430cd4: cmp SP, BARRIER
//  0x430cd8: b.ls #0x430d80
//  0x430cdc: mov x1, #2
//  0x430ce0: bl #0x61e890
//  0x430ce4: mov x3, x0
//  0x430ce8: ldur x0, [FP, #-0x10]
//  0x430cec: stur x3, [FP, #-0x20]
//  0x430cf0: stur w0, [x3, #0xf]
//  0x430cf4: ldur x0, [FP, #-0x18]
//  0x430cf8: stur w0, [x3, #0x13]
//  0x430cfc: mov x1, NULL
//  0x430d00: mov x2, #4
//  0x430d04: bl #0x61f920
//  0x430d08: add BARRIER, PP, #0xf, lsl #12
//  0x430d0c: ldr BARRIER, [BARRIER, #0xa80]
//  0x430d10: stur w16, [x0, #0xf]
//  0x430d14: ldur x1, [FP, #-8]
//  0x430d18: stur w1, [x0, #0x13]
//  0x430d1c: ldr BARRIER, [PP, #0xbf0]
//  0x430d20: stp x0, BARRIER, [SP]
//  0x430d24: bl #0x27c0c8
//  0x430d28: ldur x2, [FP, #-0x20]
//  0x430d2c: add x1, PP, #0x14, lsl #12
//  0x430d30: ldr x1, [x1, #0x790]
//  0x430d34: stur x0, [FP, #-8]
//  0x430d38: bl #0x61ec54
//  0x430d3c: ldur x2, [FP, #-0x20]
//  0x430d40: add x1, PP, #0x14, lsl #12
//  0x430d44: ldr x1, [x1, #0x798]
//  0x430d48: stur x0, [FP, #-0x10]
//  0x430d4c: bl #0x61ec54
//  0x430d50: str x0, [SP]
//  0x430d54: ldur x2, [FP, #-8]
//  0x430d58: ldur x3, [FP, #-0x10]
//  0x430d5c: add x1, PP, #0x14, lsl #12
//  0x430d60: ldr x1, [x1, #0x7a0]
//  0x430d64: add x4, PP, #0x10, lsl #12
//  0x430d68: ldr x4, [x4, #0xbc0]
//  0x430d6c: bl #0x41e430
//  0x430d70: mov x0, NULL
//  0x430d74: mov SP, FP
//  0x430d78: ldp FP, LR, [SP], #0x10
//  0x430d7c: ret 
//  0x430d80: bl #0x61fa28
//  0x430d84: b #0x430cdc
//
dynamic SOApiService_wearAvatarItem() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x430cb8
  // frame: FP = SP // 0x430cbc
  // frame: SP = SP - 0x30 // 0x430cc0
  local_m8 = x1; // 0x430cc4
  local_m10 = x2; // 0x430cc8
  local_m18 = x3; // 0x430ccc
  BARRIER = mem(THR, 0x38); // 0x430cd0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x430d80
  }
  x1 = 2; // 0x430cdc
  sub_0x61e890(); // 0x430ce0
  x0 = local_m10; // 0x430ce8
  x3 = x0; // 0x430ce4
  local_m20 = x3; // 0x430cec
  memSet(x3, 0xf, w0); // 0x430cf0
  x0 = local_m18; // 0x430cf4
  memSet(x3, 0x13, w0); // 0x430cf8
  x1 = NULL; // 0x430cfc
  x2 = 4; // 0x430d00
  sub_0x61f920(); // 0x430d04
  BARRIER = "itemIdentity" /* pp+0xfa80 */; // 0x430d0c
  memSet(x0, 0xf, w16); // 0x430d10
  x1 = local_m8; // 0x430d14
  memSet(x0, 0x13, w1); // 0x430d18
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x430d1c
  // frame: x0, BARRIER, mem(SP) // 0x430d20
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x430d24
  x1 = mem((PP + 0x14000), 0x790) /* Function */; // 0x430d30
  x2 = local_m20; // 0x430d28
  local_m8 = x0; // 0x430d34
  AllocationStub__Closure() /* 0x61ec54 */; // 0x430d38
  x1 = mem((PP + 0x14000), 0x798) /* Function */; // 0x430d44
  x2 = local_m20; // 0x430d3c
  local_m10 = x0; // 0x430d48
  AllocationStub__Closure() /* 0x61ec54 */; // 0x430d4c
  local_0 = x0; // 0x430d50
  x1 = "special/face/wear" /* pp+0x147a0 */; // 0x430d60
  x2 = local_m8; // 0x430d54
  x3 = local_m10; // 0x430d58
  x4 = mem((PP + 0x10000), 0xbc0) /* ImmutableArray */; // 0x430d68
  Http_postSimple() /* 0x41e430 */; // 0x430d6c
  SP = FP; // 0x430d74
  x0 = NULL; // 0x430d70
  // frame: FP, LR, mem(SP), 0x10 // 0x430d78
  return;
}

// SOApiService_anon_closure_6
// raw disassembly:
//  0x430d88: stp FP, LR, [SP, #-0x10]!
//  0x430d8c: mov FP, SP
//  0x430d90: sub SP, SP, #0x10
//  0x430d94: ldr x0, [FP, #0x20]
//  0x430d98: ldur w1, [x0, #0x17]
//  0x430d9c: add x1, x1, HEAP, lsl #32
//  0x430da0: ldr BARRIER, [THR, #0x38]
//  0x430da4: cmp SP, BARRIER
//  0x430da8: b.ls #0x430dd4
//  0x430dac: ldur w0, [x1, #0x13]
//  0x430db0: add x0, x0, HEAP, lsl #32
//  0x430db4: ldr BARRIER, [FP, #0x18]
//  0x430db8: stp BARRIER, x0, [SP]
//  0x430dbc: ldr x4, [PP, #0x140]
//  0x430dc0: ldur x2, [x0, #0x1f]
//  0x430dc4: blr x2
//  0x430dc8: mov SP, FP
//  0x430dcc: ldp FP, LR, [SP], #0x10
//  0x430dd0: ret 
//  0x430dd4: bl #0x61fa28
//  0x430dd8: b #0x430dac
//
dynamic SOApiService_anon_closure_6() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x430d88
  BARRIER = mem(THR, 0x38); // 0x430da0
  // frame: FP = SP // 0x430d8c
  // frame: SP = SP - 0x10 // 0x430d90
  w1 = mem((local_20), 0x17); // 0x430d98
  x0 = local_20; // 0x430d94
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x430d9c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x430dd4
  }
  BARRIER = local_18; // 0x430db4
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x430db0
  // frame: BARRIER, x0, mem(SP) // 0x430db8
  x2 = mem(x0, 0x1f); // 0x430dc0
  x4 = mem(PP, 0x140) /* Obj!? */; // 0x430dbc
  callIndirect(x2); // 0x430dc4
  SP = FP; // 0x430dc8
  // frame: FP, LR, mem(SP), 0x10 // 0x430dcc
  return;
}

// SOApiService_anon_closure_7
// raw disassembly:
//  0x430ddc: stp FP, LR, [SP, #-0x10]!
//  0x430de0: mov FP, SP
//  0x430de4: sub SP, SP, #8
//  0x430de8: ldr x0, [FP, #0x18]
//  0x430dec: ldur w1, [x0, #0x17]
//  0x430df0: add x1, x1, HEAP, lsl #32
//  0x430df4: ldr BARRIER, [THR, #0x38]
//  0x430df8: cmp SP, BARRIER
//  0x430dfc: b.ls #0x430e24
//  0x430e00: ldur w0, [x1, #0xf]
//  0x430e04: add x0, x0, HEAP, lsl #32
//  0x430e08: str x0, [SP]
//  0x430e0c: ldr x4, [PP, #0x3a8]
//  0x430e10: ldur x2, [x0, #0x1f]
//  0x430e14: blr x2
//  0x430e18: mov SP, FP
//  0x430e1c: ldp FP, LR, [SP], #0x10
//  0x430e20: ret 
//  0x430e24: bl #0x61fa28
//  0x430e28: b #0x430e00
//
dynamic SOApiService_anon_closure_7() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x430ddc
  BARRIER = mem(THR, 0x38); // 0x430df4
  // frame: FP = SP // 0x430de0
  // frame: SP = SP - 8 // 0x430de4
  w1 = mem((local_18), 0x17); // 0x430dec
  x0 = local_18; // 0x430de8
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x430df0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x430e24
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x430e04
  local_0 = x0; // 0x430e08
  x2 = mem(x0, 0x1f); // 0x430e10
  x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x430e0c
  callIndirect(x2); // 0x430e14
  SP = FP; // 0x430e18
  // frame: FP, LR, mem(SP), 0x10 // 0x430e1c
  return;
}

// SOApiService_getPinchFaceReceiveRecordList
// raw disassembly:
//  0x431b74: stp FP, LR, [SP, #-0x10]!
//  0x431b78: mov FP, SP
//  0x431b7c: sub SP, SP, #0x30
//  0x431b80: stur x1, [FP, #-8]
//  0x431b84: stur x2, [FP, #-0x10]
//  0x431b88: stur x3, [FP, #-0x18]
//  0x431b8c: ldr BARRIER, [THR, #0x38]
//  0x431b90: cmp SP, BARRIER
//  0x431b94: b.ls #0x431c70
//  0x431b98: mov x1, #2
//  0x431b9c: bl #0x61e890
//  0x431ba0: mov x3, x0
//  0x431ba4: ldur x0, [FP, #-0x10]
//  0x431ba8: stur x3, [FP, #-0x20]
//  0x431bac: stur w0, [x3, #0xf]
//  0x431bb0: ldur x0, [FP, #-0x18]
//  0x431bb4: stur w0, [x3, #0x13]
//  0x431bb8: mov x1, NULL
//  0x431bbc: mov x2, #4
//  0x431bc0: bl #0x61f920
//  0x431bc4: add BARRIER, PP, #0xf, lsl #12
//  0x431bc8: ldr BARRIER, [BARRIER, #0xb28]
//  0x431bcc: stur w16, [x0, #0xf]
//  0x431bd0: mov BARRIER, #0x28
//  0x431bd4: stur w16, [x0, #0x13]
//  0x431bd8: ldr BARRIER, [PP, #0xbf0]
//  0x431bdc: stp x0, BARRIER, [SP]
//  0x431be0: bl #0x27c0c8
//  0x431be4: mov x4, x0
//  0x431be8: ldur x2, [FP, #-8]
//  0x431bec: stur x4, [FP, #-0x10]
//  0x431bf0: tbnz x2, #0x3f, #0x431c1c
//  0x431bf4: sbfiz x0, x2, #1, #0x1f
//  0x431bf8: cmp x2, x0, asr #1
//  0x431bfc: b.eq #0x431c08
//  0x431c00: bl #0x61fba8
//  0x431c04: stur x2, [x0, #7]
//  0x431c08: mov x1, x4
//  0x431c0c: mov x3, x0
//  0x431c10: add x2, PP, #0xf, lsl #12
//  0x431c14: ldr x2, [x2, #0x368]
//  0x431c18: bl #0x6164d4
//  0x431c1c: ldur x2, [FP, #-0x20]
//  0x431c20: add x1, PP, #0x14, lsl #12
//  0x431c24: ldr x1, [x1, #0x6f0]
//  0x431c28: bl #0x61ec54
//  0x431c2c: ldur x2, [FP, #-0x20]
//  0x431c30: add x1, PP, #0x14, lsl #12
//  0x431c34: ldr x1, [x1, #0x6f8]
//  0x431c38: stur x0, [FP, #-0x18]
//  0x431c3c: bl #0x61ec54
//  0x431c40: ldur BARRIER, [FP, #-0x10]
//  0x431c44: stp x0, BARRIER, [SP]
//  0x431c48: ldur x2, [FP, #-0x18]
//  0x431c4c: add x1, PP, #0x14, lsl #12
//  0x431c50: ldr x1, [x1, #0x700]
//  0x431c54: add x4, PP, #0xf, lsl #12
//  0x431c58: ldr x4, [x4, #0x400]
//  0x431c5c: bl #0x3ab958
//  0x431c60: mov x0, NULL
//  0x431c64: mov SP, FP
//  0x431c68: ldp FP, LR, [SP], #0x10
//  0x431c6c: ret 
//  0x431c70: bl #0x61fa28
//  0x431c74: b #0x431b98
//
dynamic SOApiService_getPinchFaceReceiveRecordList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x431b74
  // frame: FP = SP // 0x431b78
  // frame: SP = SP - 0x30 // 0x431b7c
  local_m8 = x1; // 0x431b80
  local_m10 = x2; // 0x431b84
  local_m18 = x3; // 0x431b88
  BARRIER = mem(THR, 0x38); // 0x431b8c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x431c70
  }
  x1 = 2; // 0x431b98
  sub_0x61e890(); // 0x431b9c
  x0 = local_m10; // 0x431ba4
  x3 = x0; // 0x431ba0
  local_m20 = x3; // 0x431ba8
  memSet(x3, 0xf, w0); // 0x431bac
  x0 = local_m18; // 0x431bb0
  memSet(x3, 0x13, w0); // 0x431bb4
  x1 = NULL; // 0x431bb8
  x2 = 4; // 0x431bbc
  sub_0x61f920(); // 0x431bc0
  BARRIER = "pageSize" /* pp+0xfb28 */; // 0x431bc8
  memSet(x0, 0xf, w16); // 0x431bcc
  BARRIER = 40; // 0x431bd0
  memSet(x0, 0x13, w16); // 0x431bd4
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x431bd8
  // frame: x0, BARRIER, mem(SP) // 0x431bdc
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x431be0
  x2 = local_m8; // 0x431be8
  x4 = x0; // 0x431be4
  local_m10 = x4; // 0x431bec
  if (x2 & (1 << 0x3f) != 0) {
  } else {
    x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x431bf4
    if (x2 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x431c00
      memSet(x0, 7, x2); // 0x431c04
    }
    x1 = x4; // 0x431c08
    x2 = "cursor" /* pp+0xf368 */; // 0x431c14
    x3 = x0; // 0x431c0c
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x431c18
  }
  x1 = mem((PP + 0x14000), 0x6f0) /* Function */; // 0x431c24
  x2 = local_m20; // 0x431c1c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x431c28
  x1 = mem((PP + 0x14000), 0x6f8) /* Function */; // 0x431c34
  x2 = local_m20; // 0x431c2c
  local_m18 = x0; // 0x431c38
  AllocationStub__Closure() /* 0x61ec54 */; // 0x431c3c
  BARRIER = local_m10; // 0x431c40
  // frame: x0, BARRIER, mem(SP) // 0x431c44
  x1 = "special/face/receive/record" /* pp+0x14700 */; // 0x431c50
  x2 = local_m18; // 0x431c48
  x4 = mem((PP + 0xf000), 0x400) /* ImmutableArray */; // 0x431c58
  Http_getSimple() /* 0x3ab958 */; // 0x431c5c
  SP = FP; // 0x431c64
  x0 = NULL; // 0x431c60
  // frame: FP, LR, mem(SP), 0x10 // 0x431c68
  return;
}

// SOApiService_getPinchFaceSendRecordList
// raw disassembly:
//  0x432be4: stp FP, LR, [SP, #-0x10]!
//  0x432be8: mov FP, SP
//  0x432bec: sub SP, SP, #0x30
//  0x432bf0: stur x1, [FP, #-8]
//  0x432bf4: stur x2, [FP, #-0x10]
//  0x432bf8: stur x3, [FP, #-0x18]
//  0x432bfc: ldr BARRIER, [THR, #0x38]
//  0x432c00: cmp SP, BARRIER
//  0x432c04: b.ls #0x432ce0
//  0x432c08: mov x1, #2
//  0x432c0c: bl #0x61e890
//  0x432c10: mov x3, x0
//  0x432c14: ldur x0, [FP, #-0x10]
//  0x432c18: stur x3, [FP, #-0x20]
//  0x432c1c: stur w0, [x3, #0xf]
//  0x432c20: ldur x0, [FP, #-0x18]
//  0x432c24: stur w0, [x3, #0x13]
//  0x432c28: mov x1, NULL
//  0x432c2c: mov x2, #4
//  0x432c30: bl #0x61f920
//  0x432c34: add BARRIER, PP, #0xf, lsl #12
//  0x432c38: ldr BARRIER, [BARRIER, #0xb28]
//  0x432c3c: stur w16, [x0, #0xf]
//  0x432c40: mov BARRIER, #0x28
//  0x432c44: stur w16, [x0, #0x13]
//  0x432c48: ldr BARRIER, [PP, #0xbf0]
//  0x432c4c: stp x0, BARRIER, [SP]
//  0x432c50: bl #0x27c0c8
//  0x432c54: mov x4, x0
//  0x432c58: ldur x2, [FP, #-8]
//  0x432c5c: stur x4, [FP, #-0x10]
//  0x432c60: tbnz x2, #0x3f, #0x432c8c
//  0x432c64: sbfiz x0, x2, #1, #0x1f
//  0x432c68: cmp x2, x0, asr #1
//  0x432c6c: b.eq #0x432c78
//  0x432c70: bl #0x61fba8
//  0x432c74: stur x2, [x0, #7]
//  0x432c78: mov x1, x4
//  0x432c7c: mov x3, x0
//  0x432c80: add x2, PP, #0xf, lsl #12
//  0x432c84: ldr x2, [x2, #0x368]
//  0x432c88: bl #0x6164d4
//  0x432c8c: ldur x2, [FP, #-0x20]
//  0x432c90: add x1, PP, #0x14, lsl #12
//  0x432c94: ldr x1, [x1, #0x648]
//  0x432c98: bl #0x61ec54
//  0x432c9c: ldur x2, [FP, #-0x20]
//  0x432ca0: add x1, PP, #0x14, lsl #12
//  0x432ca4: ldr x1, [x1, #0x650]
//  0x432ca8: stur x0, [FP, #-0x18]
//  0x432cac: bl #0x61ec54
//  0x432cb0: ldur BARRIER, [FP, #-0x10]
//  0x432cb4: stp x0, BARRIER, [SP]
//  0x432cb8: ldur x2, [FP, #-0x18]
//  0x432cbc: add x1, PP, #0x14, lsl #12
//  0x432cc0: ldr x1, [x1, #0x658]
//  0x432cc4: add x4, PP, #0xf, lsl #12
//  0x432cc8: ldr x4, [x4, #0x400]
//  0x432ccc: bl #0x3ab958
//  0x432cd0: mov x0, NULL
//  0x432cd4: mov SP, FP
//  0x432cd8: ldp FP, LR, [SP], #0x10
//  0x432cdc: ret 
//  0x432ce0: bl #0x61fa28
//  0x432ce4: b #0x432c08
//
dynamic SOApiService_getPinchFaceSendRecordList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x432be4
  // frame: FP = SP // 0x432be8
  // frame: SP = SP - 0x30 // 0x432bec
  local_m8 = x1; // 0x432bf0
  local_m10 = x2; // 0x432bf4
  local_m18 = x3; // 0x432bf8
  BARRIER = mem(THR, 0x38); // 0x432bfc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x432ce0
  }
  x1 = 2; // 0x432c08
  sub_0x61e890(); // 0x432c0c
  x0 = local_m10; // 0x432c14
  x3 = x0; // 0x432c10
  local_m20 = x3; // 0x432c18
  memSet(x3, 0xf, w0); // 0x432c1c
  x0 = local_m18; // 0x432c20
  memSet(x3, 0x13, w0); // 0x432c24
  x1 = NULL; // 0x432c28
  x2 = 4; // 0x432c2c
  sub_0x61f920(); // 0x432c30
  BARRIER = "pageSize" /* pp+0xfb28 */; // 0x432c38
  memSet(x0, 0xf, w16); // 0x432c3c
  BARRIER = 40; // 0x432c40
  memSet(x0, 0x13, w16); // 0x432c44
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x432c48
  // frame: x0, BARRIER, mem(SP) // 0x432c4c
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x432c50
  x2 = local_m8; // 0x432c58
  x4 = x0; // 0x432c54
  local_m10 = x4; // 0x432c5c
  if (x2 & (1 << 0x3f) != 0) {
  } else {
    x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x432c64
    if (x2 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x432c70
      memSet(x0, 7, x2); // 0x432c74
    }
    x1 = x4; // 0x432c78
    x2 = "cursor" /* pp+0xf368 */; // 0x432c84
    x3 = x0; // 0x432c7c
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x432c88
  }
  x1 = mem((PP + 0x14000), 0x648) /* Function */; // 0x432c94
  x2 = local_m20; // 0x432c8c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x432c98
  x1 = mem((PP + 0x14000), 0x650) /* Function */; // 0x432ca4
  x2 = local_m20; // 0x432c9c
  local_m18 = x0; // 0x432ca8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x432cac
  BARRIER = local_m10; // 0x432cb0
  // frame: x0, BARRIER, mem(SP) // 0x432cb4
  x1 = "special/face/give/record" /* pp+0x14658 */; // 0x432cc0
  x2 = local_m18; // 0x432cb8
  x4 = mem((PP + 0xf000), 0x400) /* ImmutableArray */; // 0x432cc8
  Http_getSimple() /* 0x3ab958 */; // 0x432ccc
  SP = FP; // 0x432cd4
  x0 = NULL; // 0x432cd0
  // frame: FP, LR, mem(SP), 0x10 // 0x432cd8
  return;
}

// SOApiService_updateUserConfig
// raw disassembly:
//  0x4333e8: stp FP, LR, [SP, #-0x10]!
//  0x4333ec: mov FP, SP
//  0x4333f0: sub SP, SP, #0x28
//  0x4333f4: stur x1, [FP, #-8]
//  0x4333f8: stur x2, [FP, #-0x10]
//  0x4333fc: ldr BARRIER, [THR, #0x38]
//  0x433400: cmp SP, BARRIER
//  0x433404: b.ls #0x433488
//  0x433408: mov x1, #1
//  0x43340c: bl #0x61e890
//  0x433410: mov x3, x0
//  0x433414: ldur x0, [FP, #-0x10]
//  0x433418: stur x3, [FP, #-0x18]
//  0x43341c: stur w0, [x3, #0xf]
//  0x433420: mov x1, NULL
//  0x433424: mov x2, #4
//  0x433428: bl #0x61f920
//  0x43342c: add BARRIER, PP, #0xb, lsl #12
//  0x433430: ldr BARRIER, [BARRIER, #0x760]
//  0x433434: stur w16, [x0, #0xf]
//  0x433438: ldur x1, [FP, #-8]
//  0x43343c: stur w1, [x0, #0x13]
//  0x433440: ldr BARRIER, [PP, #0xbf0]
//  0x433444: stp x0, BARRIER, [SP]
//  0x433448: bl #0x27c0c8
//  0x43344c: ldur x2, [FP, #-0x18]
//  0x433450: add x1, PP, #0x14, lsl #12
//  0x433454: ldr x1, [x1, #0x348]
//  0x433458: stur x0, [FP, #-8]
//  0x43345c: bl #0x61ec54
//  0x433460: ldur x2, [FP, #-8]
//  0x433464: mov x3, x0
//  0x433468: add x1, PP, #0x14, lsl #12
//  0x43346c: ldr x1, [x1, #0x350]
//  0x433470: ldr x4, [PP, #0x2e0]
//  0x433474: bl #0x41e430
//  0x433478: mov x0, NULL
//  0x43347c: mov SP, FP
//  0x433480: ldp FP, LR, [SP], #0x10
//  0x433484: ret 
//  0x433488: bl #0x61fa28
//  0x43348c: b #0x433408
//
dynamic SOApiService_updateUserConfig() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4333e8
  // frame: FP = SP // 0x4333ec
  // frame: SP = SP - 0x28 // 0x4333f0
  local_m8 = x1; // 0x4333f4
  local_m10 = x2; // 0x4333f8
  BARRIER = mem(THR, 0x38); // 0x4333fc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x433488
  }
  x1 = 1; // 0x433408
  sub_0x61e890(); // 0x43340c
  x0 = local_m10; // 0x433414
  x3 = x0; // 0x433410
  local_m18 = x3; // 0x433418
  memSet(x3, 0xf, w0); // 0x43341c
  x1 = NULL; // 0x433420
  x2 = 4; // 0x433424
  sub_0x61f920(); // 0x433428
  BARRIER = "showHomepageStatistics" /* pp+0xb760 */; // 0x433430
  memSet(x0, 0xf, w16); // 0x433434
  x1 = local_m8; // 0x433438
  memSet(x0, 0x13, w1); // 0x43343c
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x433440
  // frame: x0, BARRIER, mem(SP) // 0x433444
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x433448
  x1 = mem((PP + 0x14000), 0x348) /* Function */; // 0x433454
  x2 = local_m18; // 0x43344c
  local_m8 = x0; // 0x433458
  AllocationStub__Closure() /* 0x61ec54 */; // 0x43345c
  x1 = "account/update/userConfig" /* pp+0x14350 */; // 0x43346c
  x2 = local_m8; // 0x433460
  x3 = x0; // 0x433464
  x4 = mem(PP, 0x2e0) /* ImmutableArray */; // 0x433470
  Http_postSimple() /* 0x41e430 */; // 0x433474
  SP = FP; // 0x43347c
  x0 = NULL; // 0x433478
  // frame: FP, LR, mem(SP), 0x10 // 0x433480
  return;
}

// SOApiService_getGameFruitDialogList
// raw disassembly:
//  0x435e54: stp FP, LR, [SP, #-0x10]!
//  0x435e58: mov FP, SP
//  0x435e5c: sub SP, SP, #0x30
//  0x435e60: stur x1, [FP, #-8]
//  0x435e64: stur x2, [FP, #-0x10]
//  0x435e68: stur x3, [FP, #-0x18]
//  0x435e6c: ldr BARRIER, [THR, #0x38]
//  0x435e70: cmp SP, BARRIER
//  0x435e74: b.ls #0x435f50
//  0x435e78: mov x1, #2
//  0x435e7c: bl #0x61e890
//  0x435e80: mov x3, x0
//  0x435e84: ldur x0, [FP, #-0x10]
//  0x435e88: stur x3, [FP, #-0x20]
//  0x435e8c: stur w0, [x3, #0xf]
//  0x435e90: ldur x0, [FP, #-0x18]
//  0x435e94: stur w0, [x3, #0x13]
//  0x435e98: mov x1, NULL
//  0x435e9c: mov x2, #4
//  0x435ea0: bl #0x61f920
//  0x435ea4: add BARRIER, PP, #0xf, lsl #12
//  0x435ea8: ldr BARRIER, [BARRIER, #0xb28]
//  0x435eac: stur w16, [x0, #0xf]
//  0x435eb0: mov BARRIER, #0x28
//  0x435eb4: stur w16, [x0, #0x13]
//  0x435eb8: ldr BARRIER, [PP, #0xbf0]
//  0x435ebc: stp x0, BARRIER, [SP]
//  0x435ec0: bl #0x27c0c8
//  0x435ec4: mov x4, x0
//  0x435ec8: ldur x2, [FP, #-8]
//  0x435ecc: stur x4, [FP, #-0x10]
//  0x435ed0: tbnz x2, #0x3f, #0x435efc
//  0x435ed4: sbfiz x0, x2, #1, #0x1f
//  0x435ed8: cmp x2, x0, asr #1
//  0x435edc: b.eq #0x435ee8
//  0x435ee0: bl #0x61fba8
//  0x435ee4: stur x2, [x0, #7]
//  0x435ee8: mov x1, x4
//  0x435eec: mov x3, x0
//  0x435ef0: add x2, PP, #0xf, lsl #12
//  0x435ef4: ldr x2, [x2, #0x368]
//  0x435ef8: bl #0x6164d4
//  0x435efc: ldur x2, [FP, #-0x20]
//  0x435f00: add x1, PP, #0x15, lsl #12
//  0x435f04: ldr x1, [x1, #0x440]
//  0x435f08: bl #0x61ec54
//  0x435f0c: ldur x2, [FP, #-0x20]
//  0x435f10: add x1, PP, #0x15, lsl #12
//  0x435f14: ldr x1, [x1, #0x448]
//  0x435f18: stur x0, [FP, #-0x18]
//  0x435f1c: bl #0x61ec54
//  0x435f20: ldur BARRIER, [FP, #-0x10]
//  0x435f24: stp x0, BARRIER, [SP]
//  0x435f28: ldur x2, [FP, #-0x18]
//  0x435f2c: add x1, PP, #0x15, lsl #12
//  0x435f30: ldr x1, [x1, #0x450]
//  0x435f34: add x4, PP, #0xf, lsl #12
//  0x435f38: ldr x4, [x4, #0x400]
//  0x435f3c: bl #0x3ab958
//  0x435f40: mov x0, NULL
//  0x435f44: mov SP, FP
//  0x435f48: ldp FP, LR, [SP], #0x10
//  0x435f4c: ret 
//  0x435f50: bl #0x61fa28
//  0x435f54: b #0x435e78
//
dynamic SOApiService_getGameFruitDialogList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x435e54
  // frame: FP = SP // 0x435e58
  // frame: SP = SP - 0x30 // 0x435e5c
  local_m8 = x1; // 0x435e60
  local_m10 = x2; // 0x435e64
  local_m18 = x3; // 0x435e68
  BARRIER = mem(THR, 0x38); // 0x435e6c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x435f50
  }
  x1 = 2; // 0x435e78
  sub_0x61e890(); // 0x435e7c
  x0 = local_m10; // 0x435e84
  x3 = x0; // 0x435e80
  local_m20 = x3; // 0x435e88
  memSet(x3, 0xf, w0); // 0x435e8c
  x0 = local_m18; // 0x435e90
  memSet(x3, 0x13, w0); // 0x435e94
  x1 = NULL; // 0x435e98
  x2 = 4; // 0x435e9c
  sub_0x61f920(); // 0x435ea0
  BARRIER = "pageSize" /* pp+0xfb28 */; // 0x435ea8
  memSet(x0, 0xf, w16); // 0x435eac
  BARRIER = 40; // 0x435eb0
  memSet(x0, 0x13, w16); // 0x435eb4
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x435eb8
  // frame: x0, BARRIER, mem(SP) // 0x435ebc
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x435ec0
  x2 = local_m8; // 0x435ec8
  x4 = x0; // 0x435ec4
  local_m10 = x4; // 0x435ecc
  if (x2 & (1 << 0x3f) != 0) {
  } else {
    x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x435ed4
    if (x2 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x435ee0
      memSet(x0, 7, x2); // 0x435ee4
    }
    x1 = x4; // 0x435ee8
    x2 = "cursor" /* pp+0xf368 */; // 0x435ef4
    x3 = x0; // 0x435eec
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x435ef8
  }
  x1 = mem((PP + 0x15000), 0x440) /* Function */; // 0x435f04
  x2 = local_m20; // 0x435efc
  AllocationStub__Closure() /* 0x61ec54 */; // 0x435f08
  x1 = mem((PP + 0x15000), 0x448) /* Function */; // 0x435f14
  x2 = local_m20; // 0x435f0c
  local_m18 = x0; // 0x435f18
  AllocationStub__Closure() /* 0x61ec54 */; // 0x435f1c
  BARRIER = local_m10; // 0x435f20
  // frame: x0, BARRIER, mem(SP) // 0x435f24
  x1 = "slot/machine/user/result/query" /* pp+0x15450 */; // 0x435f30
  x2 = local_m18; // 0x435f28
  x4 = mem((PP + 0xf000), 0x400) /* ImmutableArray */; // 0x435f38
  Http_getSimple() /* 0x3ab958 */; // 0x435f3c
  SP = FP; // 0x435f44
  x0 = NULL; // 0x435f40
  // frame: FP, LR, mem(SP), 0x10 // 0x435f48
  return;
}

// SOApiService_getGameFruitRankList
// raw disassembly:
//  0x4366ac: stp FP, LR, [SP, #-0x10]!
//  0x4366b0: mov FP, SP
//  0x4366b4: sub SP, SP, #0x30
//  0x4366b8: stur x1, [FP, #-8]
//  0x4366bc: stur x2, [FP, #-0x10]
//  0x4366c0: stur x3, [FP, #-0x18]
//  0x4366c4: ldr BARRIER, [THR, #0x38]
//  0x4366c8: cmp SP, BARRIER
//  0x4366cc: b.ls #0x4367a8
//  0x4366d0: mov x1, #2
//  0x4366d4: bl #0x61e890
//  0x4366d8: mov x3, x0
//  0x4366dc: ldur x0, [FP, #-0x10]
//  0x4366e0: stur x3, [FP, #-0x20]
//  0x4366e4: stur w0, [x3, #0xf]
//  0x4366e8: ldur x0, [FP, #-0x18]
//  0x4366ec: stur w0, [x3, #0x13]
//  0x4366f0: mov x1, NULL
//  0x4366f4: mov x2, #4
//  0x4366f8: bl #0x61f920
//  0x4366fc: add BARRIER, PP, #0xf, lsl #12
//  0x436700: ldr BARRIER, [BARRIER, #0xb28]
//  0x436704: stur w16, [x0, #0xf]
//  0x436708: mov BARRIER, #0x28
//  0x43670c: stur w16, [x0, #0x13]
//  0x436710: ldr BARRIER, [PP, #0xbf0]
//  0x436714: stp x0, BARRIER, [SP]
//  0x436718: bl #0x27c0c8
//  0x43671c: mov x4, x0
//  0x436720: ldur x2, [FP, #-8]
//  0x436724: stur x4, [FP, #-0x10]
//  0x436728: tbnz x2, #0x3f, #0x436754
//  0x43672c: sbfiz x0, x2, #1, #0x1f
//  0x436730: cmp x2, x0, asr #1
//  0x436734: b.eq #0x436740
//  0x436738: bl #0x61fba8
//  0x43673c: stur x2, [x0, #7]
//  0x436740: mov x1, x4
//  0x436744: mov x3, x0
//  0x436748: add x2, PP, #0xf, lsl #12
//  0x43674c: ldr x2, [x2, #0x368]
//  0x436750: bl #0x6164d4
//  0x436754: ldur x2, [FP, #-0x20]
//  0x436758: add x1, PP, #0x11, lsl #12
//  0x43675c: ldr x1, [x1, #0x9c8]
//  0x436760: bl #0x61ec54
//  0x436764: ldur x2, [FP, #-0x20]
//  0x436768: add x1, PP, #0x11, lsl #12
//  0x43676c: ldr x1, [x1, #0x9d0]
//  0x436770: stur x0, [FP, #-0x18]
//  0x436774: bl #0x61ec54
//  0x436778: ldur BARRIER, [FP, #-0x10]
//  0x43677c: stp x0, BARRIER, [SP]
//  0x436780: ldur x2, [FP, #-0x18]
//  0x436784: add x1, PP, #0x11, lsl #12
//  0x436788: ldr x1, [x1, #0x9d8]
//  0x43678c: add x4, PP, #0xf, lsl #12
//  0x436790: ldr x4, [x4, #0x400]
//  0x436794: bl #0x3ab958
//  0x436798: mov x0, NULL
//  0x43679c: mov SP, FP
//  0x4367a0: ldp FP, LR, [SP], #0x10
//  0x4367a4: ret 
//  0x4367a8: bl #0x61fa28
//  0x4367ac: b #0x4366d0
//
dynamic SOApiService_getGameFruitRankList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4366ac
  // frame: FP = SP // 0x4366b0
  // frame: SP = SP - 0x30 // 0x4366b4
  local_m8 = x1; // 0x4366b8
  local_m10 = x2; // 0x4366bc
  local_m18 = x3; // 0x4366c0
  BARRIER = mem(THR, 0x38); // 0x4366c4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4367a8
  }
  x1 = 2; // 0x4366d0
  sub_0x61e890(); // 0x4366d4
  x0 = local_m10; // 0x4366dc
  x3 = x0; // 0x4366d8
  local_m20 = x3; // 0x4366e0
  memSet(x3, 0xf, w0); // 0x4366e4
  x0 = local_m18; // 0x4366e8
  memSet(x3, 0x13, w0); // 0x4366ec
  x1 = NULL; // 0x4366f0
  x2 = 4; // 0x4366f4
  sub_0x61f920(); // 0x4366f8
  BARRIER = "pageSize" /* pp+0xfb28 */; // 0x436700
  memSet(x0, 0xf, w16); // 0x436704
  BARRIER = 40; // 0x436708
  memSet(x0, 0x13, w16); // 0x43670c
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x436710
  // frame: x0, BARRIER, mem(SP) // 0x436714
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x436718
  x2 = local_m8; // 0x436720
  x4 = x0; // 0x43671c
  local_m10 = x4; // 0x436724
  if (x2 & (1 << 0x3f) != 0) {
  } else {
    x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x43672c
    if (x2 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x436738
      memSet(x0, 7, x2); // 0x43673c
    }
    x1 = x4; // 0x436740
    x2 = "cursor" /* pp+0xf368 */; // 0x43674c
    x3 = x0; // 0x436744
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x436750
  }
  x1 = mem((PP + 0x11000), 0x9c8) /* Function */; // 0x43675c
  x2 = local_m20; // 0x436754
  AllocationStub__Closure() /* 0x61ec54 */; // 0x436760
  x1 = mem((PP + 0x11000), 0x9d0) /* Function */; // 0x43676c
  x2 = local_m20; // 0x436764
  local_m18 = x0; // 0x436770
  AllocationStub__Closure() /* 0x61ec54 */; // 0x436774
  BARRIER = local_m10; // 0x436778
  // frame: x0, BARRIER, mem(SP) // 0x43677c
  x1 = "slot/machine/ranking" /* pp+0x119d8 */; // 0x436788
  x2 = local_m18; // 0x436780
  x4 = mem((PP + 0xf000), 0x400) /* ImmutableArray */; // 0x436790
  Http_getSimple() /* 0x3ab958 */; // 0x436794
  SP = FP; // 0x43679c
  x0 = NULL; // 0x436798
  // frame: FP, LR, mem(SP), 0x10 // 0x4367a0
  return;
}

// SOApiService_dlocalPayment
// raw disassembly:
//  0x43c49c: stp FP, LR, [SP, #-0x10]!
//  0x43c4a0: mov FP, SP
//  0x43c4a4: sub SP, SP, #0x38
//  0x43c4a8: stur x1, [FP, #-8]
//  0x43c4ac: stur x2, [FP, #-0x10]
//  0x43c4b0: stur x3, [FP, #-0x18]
//  0x43c4b4: stur x5, [FP, #-0x20]
//  0x43c4b8: ldr BARRIER, [THR, #0x38]
//  0x43c4bc: cmp SP, BARRIER
//  0x43c4c0: b.ls #0x43c57c
//  0x43c4c4: mov x1, #2
//  0x43c4c8: bl #0x61e890
//  0x43c4cc: mov x3, x0
//  0x43c4d0: ldur x0, [FP, #-0x18]
//  0x43c4d4: stur x3, [FP, #-0x28]
//  0x43c4d8: stur w0, [x3, #0xf]
//  0x43c4dc: ldur x0, [FP, #-0x20]
//  0x43c4e0: stur w0, [x3, #0x13]
//  0x43c4e4: mov x1, NULL
//  0x43c4e8: mov x2, #8
//  0x43c4ec: bl #0x61f920
//  0x43c4f0: add BARRIER, PP, #0xf, lsl #12
//  0x43c4f4: ldr BARRIER, [BARRIER, #0xa80]
//  0x43c4f8: stur w16, [x0, #0xf]
//  0x43c4fc: ldur x1, [FP, #-8]
//  0x43c500: stur w1, [x0, #0x13]
//  0x43c504: add BARRIER, PP, #8, lsl #12
//  0x43c508: ldr BARRIER, [BARRIER, #0x198]
//  0x43c50c: stur w16, [x0, #0x17]
//  0x43c510: ldur x1, [FP, #-0x10]
//  0x43c514: stur w1, [x0, #0x1b]
//  0x43c518: ldr BARRIER, [PP, #0xbf0]
//  0x43c51c: stp x0, BARRIER, [SP]
//  0x43c520: bl #0x27c0c8
//  0x43c524: ldur x2, [FP, #-0x28]
//  0x43c528: add x1, PP, #0x14, lsl #12
//  0x43c52c: ldr x1, [x1, #0xbe0]
//  0x43c530: stur x0, [FP, #-8]
//  0x43c534: bl #0x61ec54
//  0x43c538: ldur x2, [FP, #-0x28]
//  0x43c53c: add x1, PP, #0x14, lsl #12
//  0x43c540: ldr x1, [x1, #0xbe8]
//  0x43c544: stur x0, [FP, #-0x10]
//  0x43c548: bl #0x61ec54
//  0x43c54c: str x0, [SP]
//  0x43c550: ldur x2, [FP, #-8]
//  0x43c554: ldur x3, [FP, #-0x10]
//  0x43c558: add x1, PP, #0x14, lsl #12
//  0x43c55c: ldr x1, [x1, #0xbf0]
//  0x43c560: add x4, PP, #0x10, lsl #12
//  0x43c564: ldr x4, [x4, #0xbc0]
//  0x43c568: bl #0x41e430
//  0x43c56c: mov x0, NULL
//  0x43c570: mov SP, FP
//  0x43c574: ldp FP, LR, [SP], #0x10
//  0x43c578: ret 
//  0x43c57c: bl #0x61fa28
//  0x43c580: b #0x43c4c4
//
dynamic SOApiService_dlocalPayment() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x43c49c
  // frame: FP = SP // 0x43c4a0
  // frame: SP = SP - 0x38 // 0x43c4a4
  local_m8 = x1; // 0x43c4a8
  local_m10 = x2; // 0x43c4ac
  local_m18 = x3; // 0x43c4b0
  local_m20 = x5; // 0x43c4b4
  BARRIER = mem(THR, 0x38); // 0x43c4b8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x43c57c
  }
  x1 = 2; // 0x43c4c4
  sub_0x61e890(); // 0x43c4c8
  x0 = local_m18; // 0x43c4d0
  x3 = x0; // 0x43c4cc
  local_m28 = x3; // 0x43c4d4
  memSet(x3, 0xf, w0); // 0x43c4d8
  x0 = local_m20; // 0x43c4dc
  memSet(x3, 0x13, w0); // 0x43c4e0
  x1 = NULL; // 0x43c4e4
  x2 = 8; // 0x43c4e8
  sub_0x61f920(); // 0x43c4ec
  BARRIER = "itemIdentity" /* pp+0xfa80 */; // 0x43c4f4
  memSet(x0, 0xf, w16); // 0x43c4f8
  x1 = local_m8; // 0x43c4fc
  memSet(x0, 0x13, w1); // 0x43c500
  BARRIER = "name" /* pp+0x8198 */; // 0x43c508
  memSet(x0, 0x17, w16); // 0x43c50c
  x1 = local_m10; // 0x43c510
  memSet(x0, 0x1b, w1); // 0x43c514
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x43c518
  // frame: x0, BARRIER, mem(SP) // 0x43c51c
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x43c520
  x1 = mem((PP + 0x14000), 0xbe0) /* Function */; // 0x43c52c
  x2 = local_m28; // 0x43c524
  local_m8 = x0; // 0x43c530
  AllocationStub__Closure() /* 0x61ec54 */; // 0x43c534
  x1 = mem((PP + 0x14000), 0xbe8) /* Function */; // 0x43c540
  x2 = local_m28; // 0x43c538
  local_m10 = x0; // 0x43c544
  AllocationStub__Closure() /* 0x61ec54 */; // 0x43c548
  local_0 = x0; // 0x43c54c
  x1 = "dLocal/payments" /* pp+0x14bf0 */; // 0x43c55c
  x2 = local_m8; // 0x43c550
  x3 = local_m10; // 0x43c554
  x4 = mem((PP + 0x10000), 0xbc0) /* ImmutableArray */; // 0x43c564
  Http_postSimple() /* 0x41e430 */; // 0x43c568
  SP = FP; // 0x43c570
  x0 = NULL; // 0x43c56c
  // frame: FP, LR, mem(SP), 0x10 // 0x43c574
  return;
}

// SOApiService_getPKGameRecordList
// raw disassembly:
//  0x444360: stp FP, LR, [SP, #-0x10]!
//  0x444364: mov FP, SP
//  0x444368: sub SP, SP, #0x38
//  0x44436c: stur x1, [FP, #-8]
//  0x444370: stur x2, [FP, #-0x10]
//  0x444374: stur x3, [FP, #-0x18]
//  0x444378: stur x5, [FP, #-0x20]
//  0x44437c: ldr BARRIER, [THR, #0x38]
//  0x444380: cmp SP, BARRIER
//  0x444384: b.ls #0x444478
//  0x444388: mov x1, #2
//  0x44438c: bl #0x61e890
//  0x444390: mov x3, x0
//  0x444394: ldur x0, [FP, #-0x18]
//  0x444398: stur x3, [FP, #-0x28]
//  0x44439c: stur w0, [x3, #0xf]
//  0x4443a0: ldur x0, [FP, #-0x20]
//  0x4443a4: stur w0, [x3, #0x13]
//  0x4443a8: mov x1, NULL
//  0x4443ac: mov x2, #8
//  0x4443b0: bl #0x61f920
//  0x4443b4: add BARRIER, PP, #0x14, lsl #12
//  0x4443b8: ldr BARRIER, [BARRIER, #0x420]
//  0x4443bc: stur w16, [x0, #0xf]
//  0x4443c0: ldur x1, [FP, #-0x10]
//  0x4443c4: lsl x2, x1, #1
//  0x4443c8: stur w2, [x0, #0x13]
//  0x4443cc: add BARRIER, PP, #0xf, lsl #12
//  0x4443d0: ldr BARRIER, [BARRIER, #0xb28]
//  0x4443d4: stur w16, [x0, #0x17]
//  0x4443d8: mov BARRIER, #0x28
//  0x4443dc: stur w16, [x0, #0x1b]
//  0x4443e0: ldr BARRIER, [PP, #0xbf0]
//  0x4443e4: stp x0, BARRIER, [SP]
//  0x4443e8: bl #0x27c0c8
//  0x4443ec: mov x4, x0
//  0x4443f0: ldur x2, [FP, #-8]
//  0x4443f4: stur x4, [FP, #-0x18]
//  0x4443f8: tbnz x2, #0x3f, #0x444424
//  0x4443fc: sbfiz x0, x2, #1, #0x1f
//  0x444400: cmp x2, x0, asr #1
//  0x444404: b.eq #0x444410
//  0x444408: bl #0x61fba8
//  0x44440c: stur x2, [x0, #7]
//  0x444410: mov x1, x4
//  0x444414: mov x3, x0
//  0x444418: add x2, PP, #0xf, lsl #12
//  0x44441c: ldr x2, [x2, #0x368]
//  0x444420: bl #0x6164d4
//  0x444424: ldur x2, [FP, #-0x28]
//  0x444428: add x1, PP, #0x14, lsl #12
//  0x44442c: ldr x1, [x1, #0x428]
//  0x444430: bl #0x61ec54
//  0x444434: ldur x2, [FP, #-0x28]
//  0x444438: add x1, PP, #0x14, lsl #12
//  0x44443c: ldr x1, [x1, #0x430]
//  0x444440: stur x0, [FP, #-0x20]
//  0x444444: bl #0x61ec54
//  0x444448: ldur BARRIER, [FP, #-0x18]
//  0x44444c: stp x0, BARRIER, [SP]
//  0x444450: ldur x2, [FP, #-0x20]
//  0x444454: add x1, PP, #0x14, lsl #12
//  0x444458: ldr x1, [x1, #0x438]
//  0x44445c: add x4, PP, #0xf, lsl #12
//  0x444460: ldr x4, [x4, #0x400]
//  0x444464: bl #0x3ab958
//  0x444468: mov x0, NULL
//  0x44446c: mov SP, FP
//  0x444470: ldp FP, LR, [SP], #0x10
//  0x444474: ret 
//  0x444478: bl #0x61fa28
//  0x44447c: b #0x444388
//
dynamic SOApiService_getPKGameRecordList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x444360
  // frame: FP = SP // 0x444364
  // frame: SP = SP - 0x38 // 0x444368
  local_m8 = x1; // 0x44436c
  local_m10 = x2; // 0x444370
  local_m18 = x3; // 0x444374
  local_m20 = x5; // 0x444378
  BARRIER = mem(THR, 0x38); // 0x44437c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x444478
  }
  x1 = 2; // 0x444388
  sub_0x61e890(); // 0x44438c
  x0 = local_m18; // 0x444394
  x3 = x0; // 0x444390
  local_m28 = x3; // 0x444398
  memSet(x3, 0xf, w0); // 0x44439c
  x0 = local_m20; // 0x4443a0
  memSet(x3, 0x13, w0); // 0x4443a4
  x1 = NULL; // 0x4443a8
  x2 = 8; // 0x4443ac
  sub_0x61f920(); // 0x4443b0
  BARRIER = "dealType" /* pp+0x14420 */; // 0x4443b8
  memSet(x0, 0xf, w16); // 0x4443bc
  x1 = local_m10; // 0x4443c0
  x2 = (local_m10) << 1; // 0x4443c4
  memSet(x0, 0x13, w2); // 0x4443c8
  BARRIER = "pageSize" /* pp+0xfb28 */; // 0x4443d0
  memSet(x0, 0x17, w16); // 0x4443d4
  BARRIER = 40; // 0x4443d8
  memSet(x0, 0x1b, w16); // 0x4443dc
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x4443e0
  // frame: x0, BARRIER, mem(SP) // 0x4443e4
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x4443e8
  x2 = local_m8; // 0x4443f0
  x4 = x0; // 0x4443ec
  local_m18 = x4; // 0x4443f4
  if (x2 & (1 << 0x3f) != 0) {
  } else {
    x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x4443fc
    if (x2 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x444408
      memSet(x0, 7, x2); // 0x44440c
    }
    x1 = x4; // 0x444410
    x2 = "cursor" /* pp+0xf368 */; // 0x44441c
    x3 = x0; // 0x444414
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x444420
  }
  x1 = mem((PP + 0x14000), 0x428) /* Function */; // 0x44442c
  x2 = local_m28; // 0x444424
  AllocationStub__Closure() /* 0x61ec54 */; // 0x444430
  x1 = mem((PP + 0x14000), 0x430) /* Function */; // 0x44443c
  x2 = local_m28; // 0x444434
  local_m20 = x0; // 0x444440
  AllocationStub__Closure() /* 0x61ec54 */; // 0x444444
  BARRIER = local_m18; // 0x444448
  // frame: x0, BARRIER, mem(SP) // 0x44444c
  x1 = "gamble/dice/record/query" /* pp+0x14438 */; // 0x444458
  x2 = local_m20; // 0x444450
  x4 = mem((PP + 0xf000), 0x400) /* ImmutableArray */; // 0x444460
  Http_getSimple() /* 0x3ab958 */; // 0x444464
  SP = FP; // 0x44446c
  x0 = NULL; // 0x444468
  // frame: FP, LR, mem(SP), 0x10 // 0x444470
  return;
}

// SOApiService_anon_closure_8
// raw disassembly:
//  0x444480: stp FP, LR, [SP, #-0x10]!
//  0x444484: mov FP, SP
//  0x444488: sub SP, SP, #8
//  0x44448c: ldr x0, [FP, #0x20]
//  0x444490: ldur w1, [x0, #0x17]
//  0x444494: add x1, x1, HEAP, lsl #32
//  0x444498: ldr BARRIER, [THR, #0x38]
//  0x44449c: cmp SP, BARRIER
//  0x4444a0: b.ls #0x4444c8
//  0x4444a4: ldur w0, [x1, #0x13]
//  0x4444a8: add x0, x0, HEAP, lsl #32
//  0x4444ac: str x0, [SP]
//  0x4444b0: ldr x4, [PP, #0x3a8]
//  0x4444b4: ldur x2, [x0, #0x1f]
//  0x4444b8: blr x2
//  0x4444bc: mov SP, FP
//  0x4444c0: ldp FP, LR, [SP], #0x10
//  0x4444c4: ret 
//  0x4444c8: bl #0x61fa28
//  0x4444cc: b #0x4444a4
//
dynamic SOApiService_anon_closure_8() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x444480
  BARRIER = mem(THR, 0x38); // 0x444498
  // frame: FP = SP // 0x444484
  // frame: SP = SP - 8 // 0x444488
  w1 = mem((local_20), 0x17); // 0x444490
  x0 = local_20; // 0x44448c
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x444494
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4444c8
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4444a8
  local_0 = x0; // 0x4444ac
  x2 = mem(x0, 0x1f); // 0x4444b4
  x4 = mem(PP, 0x3a8) /* Obj!? */; // 0x4444b0
  callIndirect(x2); // 0x4444b8
  SP = FP; // 0x4444bc
  // frame: FP, LR, mem(SP), 0x10 // 0x4444c0
  return;
}

// SOApiService_anon_closure_9
// raw disassembly:
//  0x444d88: stp FP, LR, [SP, #-0x10]!
//  0x444d8c: mov FP, SP
//  0x444d90: sub SP, SP, #0x10
//  0x444d94: ldr x0, [FP, #0x18]
//  0x444d98: ldur w1, [x0, #0x17]
//  0x444d9c: add x1, x1, HEAP, lsl #32
//  0x444da0: ldr BARRIER, [THR, #0x38]
//  0x444da4: cmp SP, BARRIER
//  0x444da8: b.ls #0x444dd4
//  0x444dac: ldur w0, [x1, #0xf]
//  0x444db0: add x0, x0, HEAP, lsl #32
//  0x444db4: ldr BARRIER, [FP, #0x10]
//  0x444db8: stp BARRIER, x0, [SP]
//  0x444dbc: ldr x4, [PP, #0x140]
//  0x444dc0: ldur x2, [x0, #0x1f]
//  0x444dc4: blr x2
//  0x444dc8: mov SP, FP
//  0x444dcc: ldp FP, LR, [SP], #0x10
//  0x444dd0: ret 
//  0x444dd4: bl #0x61fa28
//  0x444dd8: b #0x444dac
//
dynamic SOApiService_anon_closure_9() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x444d88
  BARRIER = mem(THR, 0x38); // 0x444da0
  // frame: FP = SP // 0x444d8c
  // frame: SP = SP - 0x10 // 0x444d90
  w1 = mem((local_18), 0x17); // 0x444d98
  x0 = local_18; // 0x444d94
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x444d9c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x444dd4
  }
  BARRIER = local_10; // 0x444db4
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x444db0
  // frame: BARRIER, x0, mem(SP) // 0x444db8
  x2 = mem(x0, 0x1f); // 0x444dc0
  x4 = mem(PP, 0x140) /* Obj!? */; // 0x444dbc
  callIndirect(x2); // 0x444dc4
  SP = FP; // 0x444dc8
  // frame: FP, LR, mem(SP), 0x10 // 0x444dcc
  return;
}

// SOApiService_getPackRecordList
// raw disassembly:
//  0x4d4ea8: stp FP, LR, [SP, #-0x10]!
//  0x4d4eac: mov FP, SP
//  0x4d4eb0: sub SP, SP, #0x30
//  0x4d4eb4: stur x1, [FP, #-8]
//  0x4d4eb8: stur x2, [FP, #-0x10]
//  0x4d4ebc: stur x3, [FP, #-0x18]
//  0x4d4ec0: ldr BARRIER, [THR, #0x38]
//  0x4d4ec4: cmp SP, BARRIER
//  0x4d4ec8: b.ls #0x4d4f88
//  0x4d4ecc: mov x1, #2
//  0x4d4ed0: bl #0x61e890
//  0x4d4ed4: mov x3, x0
//  0x4d4ed8: ldur x0, [FP, #-0x10]
//  0x4d4edc: stur x3, [FP, #-0x20]
//  0x4d4ee0: stur w0, [x3, #0xf]
//  0x4d4ee4: ldur x0, [FP, #-0x18]
//  0x4d4ee8: stur w0, [x3, #0x13]
//  0x4d4eec: mov x1, NULL
//  0x4d4ef0: mov x2, #4
//  0x4d4ef4: bl #0x61f920
//  0x4d4ef8: mov x2, x0
//  0x4d4efc: add BARRIER, PP, #0x11, lsl #12
//  0x4d4f00: ldr BARRIER, [BARRIER, #0x598]
//  0x4d4f04: stur w16, [x2, #0xf]
//  0x4d4f08: ldur x3, [FP, #-8]
//  0x4d4f0c: sbfiz x0, x3, #1, #0x1f
//  0x4d4f10: cmp x3, x0, asr #1
//  0x4d4f14: b.eq #0x4d4f20
//  0x4d4f18: bl #0x61fba8
//  0x4d4f1c: stur x3, [x0, #7]
//  0x4d4f20: stur w0, [x2, #0x13]
//  0x4d4f24: ldr BARRIER, [PP, #0xbf0]
//  0x4d4f28: stp x2, BARRIER, [SP]
//  0x4d4f2c: bl #0x27c0c8
//  0x4d4f30: ldur x2, [FP, #-0x20]
//  0x4d4f34: add x1, PP, #0x11, lsl #12
//  0x4d4f38: ldr x1, [x1, #0x6d8]
//  0x4d4f3c: stur x0, [FP, #-0x10]
//  0x4d4f40: bl #0x61ec54
//  0x4d4f44: ldur x2, [FP, #-0x20]
//  0x4d4f48: add x1, PP, #0x11, lsl #12
//  0x4d4f4c: ldr x1, [x1, #0x6e0]
//  0x4d4f50: stur x0, [FP, #-0x18]
//  0x4d4f54: bl #0x61ec54
//  0x4d4f58: ldur BARRIER, [FP, #-0x10]
//  0x4d4f5c: stp x0, BARRIER, [SP]
//  0x4d4f60: ldur x2, [FP, #-0x18]
//  0x4d4f64: add x1, PP, #0x11, lsl #12
//  0x4d4f68: ldr x1, [x1, #0x6e8]
//  0x4d4f6c: add x4, PP, #0xf, lsl #12
//  0x4d4f70: ldr x4, [x4, #0x400]
//  0x4d4f74: bl #0x3ab958
//  0x4d4f78: mov x0, NULL
//  0x4d4f7c: mov SP, FP
//  0x4d4f80: ldp FP, LR, [SP], #0x10
//  0x4d4f84: ret 
//  0x4d4f88: bl #0x61fa28
//  0x4d4f8c: b #0x4d4ecc
//
dynamic SOApiService_getPackRecordList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d4ea8
  // frame: FP = SP // 0x4d4eac
  // frame: SP = SP - 0x30 // 0x4d4eb0
  local_m8 = x1; // 0x4d4eb4
  local_m10 = x2; // 0x4d4eb8
  local_m18 = x3; // 0x4d4ebc
  BARRIER = mem(THR, 0x38); // 0x4d4ec0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d4f88
  }
  x1 = 2; // 0x4d4ecc
  sub_0x61e890(); // 0x4d4ed0
  x0 = local_m10; // 0x4d4ed8
  x3 = x0; // 0x4d4ed4
  local_m20 = x3; // 0x4d4edc
  memSet(x3, 0xf, w0); // 0x4d4ee0
  x0 = local_m18; // 0x4d4ee4
  memSet(x3, 0x13, w0); // 0x4d4ee8
  x1 = NULL; // 0x4d4eec
  x2 = 4; // 0x4d4ef0
  sub_0x61f920(); // 0x4d4ef4
  BARRIER = "redPacketId" /* pp+0x11598 */; // 0x4d4f00
  x2 = x0; // 0x4d4ef8
  memSet(x2, 0xf, w16); // 0x4d4f04
  x0 = (((local_m8) & 0x7fffffff) << 1) /* signed */; // 0x4d4f0c
  x3 = local_m8; // 0x4d4f08
  if (x3 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x4d4f18
    memSet(x0, 7, x3); // 0x4d4f1c
  }
  memSet(x2, 0x13, w0); // 0x4d4f20
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x4d4f24
  // frame: x2, BARRIER, mem(SP) // 0x4d4f28
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x4d4f2c
  x1 = mem((PP + 0x11000), 0x6d8) /* Function */; // 0x4d4f38
  x2 = local_m20; // 0x4d4f30
  local_m10 = x0; // 0x4d4f3c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d4f40
  x1 = mem((PP + 0x11000), 0x6e0) /* Function */; // 0x4d4f4c
  x2 = local_m20; // 0x4d4f44
  local_m18 = x0; // 0x4d4f50
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d4f54
  BARRIER = local_m10; // 0x4d4f58
  // frame: x0, BARRIER, mem(SP) // 0x4d4f5c
  x1 = "red/packet/rob/record/list" /* pp+0x116e8 */; // 0x4d4f68
  x2 = local_m18; // 0x4d4f60
  x4 = mem((PP + 0xf000), 0x400) /* ImmutableArray */; // 0x4d4f70
  Http_getSimple() /* 0x3ab958 */; // 0x4d4f74
  SP = FP; // 0x4d4f7c
  x0 = NULL; // 0x4d4f78
  // frame: FP, LR, mem(SP), 0x10 // 0x4d4f80
  return;
}

// SOApiService_getSoulCoinList
// raw disassembly:
//  0x4d6588: stp FP, LR, [SP, #-0x10]!
//  0x4d658c: mov FP, SP
//  0x4d6590: sub SP, SP, #0x30
//  0x4d6594: stur x1, [FP, #-8]
//  0x4d6598: stur x2, [FP, #-0x10]
//  0x4d659c: stur x3, [FP, #-0x18]
//  0x4d65a0: ldr BARRIER, [THR, #0x38]
//  0x4d65a4: cmp SP, BARRIER
//  0x4d65a8: b.ls #0x4d66a0
//  0x4d65ac: mov x1, #2
//  0x4d65b0: bl #0x61e890
//  0x4d65b4: mov x3, x0
//  0x4d65b8: ldur x0, [FP, #-0x10]
//  0x4d65bc: stur x3, [FP, #-0x20]
//  0x4d65c0: stur w0, [x3, #0xf]
//  0x4d65c4: ldur x0, [FP, #-0x18]
//  0x4d65c8: stur w0, [x3, #0x13]
//  0x4d65cc: mov x1, NULL
//  0x4d65d0: mov x2, #8
//  0x4d65d4: bl #0x61f920
//  0x4d65d8: add BARRIER, PP, #0x10, lsl #12
//  0x4d65dc: ldr BARRIER, [BARRIER, #0xa58]
//  0x4d65e0: stur w16, [x0, #0xf]
//  0x4d65e4: add BARRIER, PP, #0x10, lsl #12
//  0x4d65e8: ldr BARRIER, [BARRIER, #0xa60]
//  0x4d65ec: stur w16, [x0, #0x13]
//  0x4d65f0: add BARRIER, PP, #0x10, lsl #12
//  0x4d65f4: ldr BARRIER, [BARRIER, #0xa68]
//  0x4d65f8: stur w16, [x0, #0x17]
//  0x4d65fc: add BARRIER, PP, #0x10, lsl #12
//  0x4d6600: ldr BARRIER, [BARRIER, #0xa70]
//  0x4d6604: stur w16, [x0, #0x1b]
//  0x4d6608: ldr BARRIER, [PP, #0xbf0]
//  0x4d660c: stp x0, BARRIER, [SP]
//  0x4d6610: bl #0x27c0c8
//  0x4d6614: mov x4, x0
//  0x4d6618: ldur x2, [FP, #-8]
//  0x4d661c: stur x4, [FP, #-0x10]
//  0x4d6620: tbnz x2, #0x3f, #0x4d664c
//  0x4d6624: sbfiz x0, x2, #1, #0x1f
//  0x4d6628: cmp x2, x0, asr #1
//  0x4d662c: b.eq #0x4d6638
//  0x4d6630: bl #0x61fba8
//  0x4d6634: stur x2, [x0, #7]
//  0x4d6638: mov x1, x4
//  0x4d663c: mov x3, x0
//  0x4d6640: add x2, PP, #0xf, lsl #12
//  0x4d6644: ldr x2, [x2, #0x368]
//  0x4d6648: bl #0x6164d4
//  0x4d664c: ldur x2, [FP, #-0x20]
//  0x4d6650: add x1, PP, #0x10, lsl #12
//  0x4d6654: ldr x1, [x1, #0xa78]
//  0x4d6658: bl #0x61ec54
//  0x4d665c: ldur x2, [FP, #-0x20]
//  0x4d6660: add x1, PP, #0x10, lsl #12
//  0x4d6664: ldr x1, [x1, #0xa80]
//  0x4d6668: stur x0, [FP, #-0x18]
//  0x4d666c: bl #0x61ec54
//  0x4d6670: ldur BARRIER, [FP, #-0x10]
//  0x4d6674: stp x0, BARRIER, [SP]
//  0x4d6678: ldur x2, [FP, #-0x18]
//  0x4d667c: add x1, PP, #0x10, lsl #12
//  0x4d6680: ldr x1, [x1, #0xa88]
//  0x4d6684: add x4, PP, #0xf, lsl #12
//  0x4d6688: ldr x4, [x4, #0x400]
//  0x4d668c: bl #0x3ab958
//  0x4d6690: mov x0, NULL
//  0x4d6694: mov SP, FP
//  0x4d6698: ldp FP, LR, [SP], #0x10
//  0x4d669c: ret 
//  0x4d66a0: bl #0x61fa28
//  0x4d66a4: b #0x4d65ac
//
dynamic SOApiService_getSoulCoinList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d6588
  // frame: FP = SP // 0x4d658c
  // frame: SP = SP - 0x30 // 0x4d6590
  local_m8 = x1; // 0x4d6594
  local_m10 = x2; // 0x4d6598
  local_m18 = x3; // 0x4d659c
  BARRIER = mem(THR, 0x38); // 0x4d65a0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d66a0
  }
  x1 = 2; // 0x4d65ac
  sub_0x61e890(); // 0x4d65b0
  x0 = local_m10; // 0x4d65b8
  x3 = x0; // 0x4d65b4
  local_m20 = x3; // 0x4d65bc
  memSet(x3, 0xf, w0); // 0x4d65c0
  x0 = local_m18; // 0x4d65c4
  memSet(x3, 0x13, w0); // 0x4d65c8
  x1 = NULL; // 0x4d65cc
  x2 = 8; // 0x4d65d0
  sub_0x61f920(); // 0x4d65d4
  BARRIER = "firstCategory" /* pp+0x10a58 */; // 0x4d65dc
  memSet(x0, 0xf, w16); // 0x4d65e0
  BARRIER = "500" /* pp+0x10a60 */; // 0x4d65e8
  memSet(x0, 0x13, w16); // 0x4d65ec
  BARRIER = "storeType" /* pp+0x10a68 */; // 0x4d65f4
  memSet(x0, 0x17, w16); // 0x4d65f8
  BARRIER = "dLocal" /* pp+0x10a70 */; // 0x4d6600
  memSet(x0, 0x1b, w16); // 0x4d6604
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x4d6608
  // frame: x0, BARRIER, mem(SP) // 0x4d660c
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x4d6610
  x2 = local_m8; // 0x4d6618
  x4 = x0; // 0x4d6614
  local_m10 = x4; // 0x4d661c
  if (x2 & (1 << 0x3f) != 0) {
  } else {
    x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x4d6624
    if (x2 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x4d6630
      memSet(x0, 7, x2); // 0x4d6634
    }
    x1 = x4; // 0x4d6638
    x2 = "cursor" /* pp+0xf368 */; // 0x4d6644
    x3 = x0; // 0x4d663c
    Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x4d6648
  }
  x1 = mem((PP + 0x10000), 0xa78) /* Function */; // 0x4d6654
  x2 = local_m20; // 0x4d664c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d6658
  x1 = mem((PP + 0x10000), 0xa80) /* Function */; // 0x4d6664
  x2 = local_m20; // 0x4d665c
  local_m18 = x0; // 0x4d6668
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d666c
  BARRIER = local_m10; // 0x4d6670
  // frame: x0, BARRIER, mem(SP) // 0x4d6674
  x1 = "commodity/cash/list" /* pp+0x10a88 */; // 0x4d6680
  x2 = local_m18; // 0x4d6678
  x4 = mem((PP + 0xf000), 0x400) /* ImmutableArray */; // 0x4d6688
  Http_getSimple() /* 0x3ab958 */; // 0x4d668c
  SP = FP; // 0x4d6694
  x0 = NULL; // 0x4d6690
  // frame: FP, LR, mem(SP), 0x10 // 0x4d6698
  return;
}

// SOApiService_getPayMethodList
// raw disassembly:
//  0x4d9738: stp FP, LR, [SP, #-0x10]!
//  0x4d973c: mov FP, SP
//  0x4d9740: sub SP, SP, #0x28
//  0x4d9744: stur x1, [FP, #-8]
//  0x4d9748: stur x2, [FP, #-0x10]
//  0x4d974c: ldr BARRIER, [THR, #0x38]
//  0x4d9750: cmp SP, BARRIER
//  0x4d9754: b.ls #0x4d97e0
//  0x4d9758: mov x1, #2
//  0x4d975c: bl #0x61e890
//  0x4d9760: mov x1, x0
//  0x4d9764: ldur x0, [FP, #-8]
//  0x4d9768: stur x1, [FP, #-0x18]
//  0x4d976c: stur w0, [x1, #0xf]
//  0x4d9770: ldur x0, [FP, #-0x10]
//  0x4d9774: stur w0, [x1, #0x13]
//  0x4d9778: ldr BARRIER, [PP, #0xbf0]
//  0x4d977c: ldr LR, [THR, #0x90]
//  0x4d9780: stp LR, BARRIER, [SP]
//  0x4d9784: bl #0x27c0c8
//  0x4d9788: ldur x2, [FP, #-0x18]
//  0x4d978c: add x1, PP, #0x10, lsl #12
//  0x4d9790: ldr x1, [x1, #0x2e8]
//  0x4d9794: stur x0, [FP, #-8]
//  0x4d9798: bl #0x61ec54
//  0x4d979c: ldur x2, [FP, #-0x18]
//  0x4d97a0: add x1, PP, #0x10, lsl #12
//  0x4d97a4: ldr x1, [x1, #0x2f0]
//  0x4d97a8: stur x0, [FP, #-0x10]
//  0x4d97ac: bl #0x61ec54
//  0x4d97b0: ldur BARRIER, [FP, #-8]
//  0x4d97b4: stp x0, BARRIER, [SP]
//  0x4d97b8: ldur x2, [FP, #-0x10]
//  0x4d97bc: add x1, PP, #0x10, lsl #12
//  0x4d97c0: ldr x1, [x1, #0x2f8]
//  0x4d97c4: add x4, PP, #0xf, lsl #12
//  0x4d97c8: ldr x4, [x4, #0x400]
//  0x4d97cc: bl #0x3ab958
//  0x4d97d0: mov x0, NULL
//  0x4d97d4: mov SP, FP
//  0x4d97d8: ldp FP, LR, [SP], #0x10
//  0x4d97dc: ret 
//  0x4d97e0: bl #0x61fa28
//  0x4d97e4: b #0x4d9758
//
dynamic SOApiService_getPayMethodList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d9738
  // frame: FP = SP // 0x4d973c
  // frame: SP = SP - 0x28 // 0x4d9740
  local_m8 = x1; // 0x4d9744
  local_m10 = x2; // 0x4d9748
  BARRIER = mem(THR, 0x38); // 0x4d974c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d97e0
  }
  x1 = 2; // 0x4d9758
  sub_0x61e890(); // 0x4d975c
  x0 = local_m8; // 0x4d9764
  x1 = x0; // 0x4d9760
  local_m18 = x1; // 0x4d9768
  memSet(x1, 0xf, w0); // 0x4d976c
  x0 = local_m10; // 0x4d9770
  memSet(x1, 0x13, w0); // 0x4d9774
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x4d9778
  LR = mem(THR, 0x90); // 0x4d977c
  // frame: LR, BARRIER, mem(SP) // 0x4d9780
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x4d9784
  x1 = mem((PP + 0x10000), 0x2e8) /* Function */; // 0x4d9790
  x2 = local_m18; // 0x4d9788
  local_m8 = x0; // 0x4d9794
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d9798
  x1 = mem((PP + 0x10000), 0x2f0) /* Function */; // 0x4d97a4
  x2 = local_m18; // 0x4d979c
  local_m10 = x0; // 0x4d97a8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d97ac
  BARRIER = local_m8; // 0x4d97b0
  // frame: x0, BARRIER, mem(SP) // 0x4d97b4
  x1 = "dLocal/payments-methods" /* pp+0x102f8 */; // 0x4d97c0
  x2 = local_m10; // 0x4d97b8
  x4 = mem((PP + 0xf000), 0x400) /* ImmutableArray */; // 0x4d97c8
  Http_getSimple() /* 0x3ab958 */; // 0x4d97cc
  SP = FP; // 0x4d97d4
  x0 = NULL; // 0x4d97d0
  // frame: FP, LR, mem(SP), 0x10 // 0x4d97d8
  return;
}
