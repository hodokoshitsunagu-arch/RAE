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

dynamic AllocationStub_MethodChannel, AllocationStub__Closure, BARRIER, FP, HEAP, LR;
dynamic LateInitializationErrorSharedWithoutFpuRegsStub_0x620258;
dynamic Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData;
dynamic Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign;
dynamic Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_remove;
dynamic Map_factory_ctor, MethodChannel_invokeMethod, MethodChannel_setMethodCallHandler, NULL;
dynamic PP, SP, StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolate, THR;
dynamic WriteBarrierStub_x1, local_0, local_m10, local_m18, local_m20, local_m28, local_m68;
dynamic local_m70, local_m78, local_m8, local_m80, sub_0x2b13a0, sub_0x2b16e4, sub_0x61e890;
dynamic sub_0x61f920, w0, w1, w16, w17, w2, w22, w3, w5, x0, x1, x16, x17, x2, x3, x4, x5, x9;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$common$plugins$channel_native
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// ChannelNative_call
// raw disassembly:
//  0x3a8288: stp FP, LR, [SP, #-0x10]!
//  0x3a828c: mov FP, SP
//  0x3a8290: sub SP, SP, #0xa0
//  0x3a8294: stur NULL, [FP, #-8]
//  0x3a8298: stur x1, [FP, #-0x70]
//  0x3a829c: stur x2, [FP, #-0x78]
//  0x3a82a0: stur x4, [FP, #-0x80]
//  0x3a82a4: ldur w0, [x4, #0x13]
//  0x3a82a8: sub x3, x0, #4
//  0x3a82ac: cmp w3, #2
//  0x3a82b0: b.lt #0x3a82c4
//  0x3a82b4: add x0, FP, w3, sxtw #2
//  0x3a82b8: ldr x0, [x0, #8]
//  0x3a82bc: mov x3, x0
//  0x3a82c0: b #0x3a82c8
//  0x3a82c4: mov x3, NULL
//  0x3a82c8: stur x3, [FP, #-0x68]
//  0x3a82cc: ldr BARRIER, [THR, #0x38]
//  0x3a82d0: cmp SP, BARRIER
//  0x3a82d4: b.ls #0x3a8394
//  0x3a82d8: mov x0, NULL
//  0x3a82dc: bl #0x2b16e4
//  0x3a82e0: ldur x3, [FP, #-0x70]
//  0x3a82e4: ldur x0, [FP, #-0x78]
//  0x3a82e8: ldur x4, [FP, #-0x68]
//  0x3a82ec: mov x1, NULL
//  0x3a82f0: mov x2, #8
//  0x3a82f4: bl #0x61f920
//  0x3a82f8: ldr BARRIER, [PP, #0x22b0]
//  0x3a82fc: stur w16, [x0, #0xf]
//  0x3a8300: ldur x1, [FP, #-0x78]
//  0x3a8304: stur w1, [x0, #0x13]
//  0x3a8308: ldr BARRIER, [PP, #0x22b8]
//  0x3a830c: stur w16, [x0, #0x17]
//  0x3a8310: ldur x2, [FP, #-0x68]
//  0x3a8314: stur w2, [x0, #0x1b]
//  0x3a8318: str x0, [SP]
//  0x3a831c: bl #0x2ad854
//  0x3a8320: ldur x0, [FP, #-0x70]
//  0x3a8324: ldur w1, [x0, #0xb]
//  0x3a8328: add x1, x1, HEAP, lsl #32
//  0x3a832c: ldr BARRIER, [PP, #0x40]
//  0x3a8330: cmp w1, w16
//  0x3a8334: b.eq #0x3a839c
//  0x3a8338: stp x1, NULL, [SP, #0x10]
//  0x3a833c: ldur BARRIER, [FP, #-0x78]
//  0x3a8340: ldur LR, [FP, #-0x68]
//  0x3a8344: stp LR, BARRIER, [SP]
//  0x3a8348: ldr x4, [PP, #0x408]
//  0x3a834c: bl #0x604e3c
//  0x3a8350: mov x1, x0
//  0x3a8354: stur x1, [FP, #-0x68]
//  0x3a8358: bl #0x2b13a0
//  0x3a835c: b #0x2b19a0
//  0x3a8360: sub SP, FP, #0xa0
//  0x3a8364: stur x0, [FP, #-0x68]
//  0x3a8368: mov x1, NULL
//  0x3a836c: mov x2, #4
//  0x3a8370: bl #0x61f920
//  0x3a8374: ldr BARRIER, [PP, #0x22c0]
//  0x3a8378: stur w16, [x0, #0xf]
//  0x3a837c: ldur x1, [FP, #-0x68]
//  0x3a8380: stur w1, [x0, #0x13]
//  0x3a8384: str x0, [SP]
//  0x3a8388: bl #0x2ad854
//  0x3a838c: bl #0x61dadc
//  0x3a8390: brk #0
//  0x3a8394: bl #0x61fa28
//  0x3a8398: b #0x3a82d8
//  0x3a839c: ldr x9, [PP, #0x22c8]
//  0x3a83a0: bl #0x620258
//
dynamic ChannelNative_call() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a8288
  // frame: FP = SP // 0x3a828c
  // frame: SP = SP - 0xa0 // 0x3a8290
  local_m8 = NULL; // 0x3a8294
  local_m70 = x1; // 0x3a8298
  local_m78 = x2; // 0x3a829c
  local_m80 = x4; // 0x3a82a0
  w0 = mem(x4, 0x13); // 0x3a82a4
  x0 = (mem(x4, 0x13)) & 0xffffffff; // 0x3a82a4
  x3 = ((mem(x4, 0x13)) & 0xffffffff) - 4; // 0x3a82a8
  if (w3 < 2) {
    x3 = NULL; // 0x3a82c4
  } else {
    x0 = mem((FP + (w3 /* sxtw 2 */)), 8); // 0x3a82b8
    x3 = mem((FP + (w3 /* sxtw 2 */)), 8); // 0x3a82bc
  }
  local_m68 = x3; // 0x3a82c8
  BARRIER = mem(THR, 0x38); // 0x3a82cc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a8394
  }
  x0 = NULL; // 0x3a82d8
  sub_0x2b16e4(); // 0x3a82dc
  x0 = local_m78; // 0x3a82e4
  x1 = NULL; // 0x3a82ec
  x2 = 8; // 0x3a82f0
  x3 = local_m70; // 0x3a82e0
  x4 = local_m68; // 0x3a82e8
  sub_0x61f920(); // 0x3a82f4
  BARRIER = "flutter -- handlerName = " /* pp+0x22b0 */; // 0x3a82f8
  memSet(x0, 0xf, w16); // 0x3a82fc
  x1 = local_m78; // 0x3a8300
  memSet(x0, 0x13, w1); // 0x3a8304
  BARRIER = ", arguments = " /* pp+0x22b8 */; // 0x3a8308
  memSet(x0, 0x17, w16); // 0x3a830c
  x2 = local_m68; // 0x3a8310
  memSet(x0, 0x1b, w2); // 0x3a8314
  local_0 = x0; // 0x3a8318
  StringBase_interpolate() /* 0x2ad854 */; // 0x3a831c
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3a832c
  w1 = mem((local_m70), 0xb); /* ChannelNative._methodChannel (off 0xc) */  // 0x3a8324
  x0 = local_m70; // 0x3a8320
  x1 = ((mem((local_m70), 0xb)) & 0xffffffff) + (HEAP << 32); /* ChannelNative._methodChannel (off 0xc) */  // 0x3a8328
  if (w1 == w16) {
    x9 = mem(PP, 0x22c8) /* Field */; // 0x3a839c
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x3a83a0
  }
  // frame: x1, NULL, mem(SP, 0x10) // 0x3a8338
  BARRIER = local_m78; // 0x3a833c
  LR = local_m68; // 0x3a8340
  // frame: LR, BARRIER, mem(SP) // 0x3a8344
  x4 = mem(PP, 0x408) /* ImmutableArray */; // 0x3a8348
  MethodChannel_invokeMethod() /* 0x604e3c */; // 0x3a834c
  x1 = x0; // 0x3a8350
  local_m68 = x1; // 0x3a8354
  sub_0x2b13a0(); // 0x3a8358
}

// ChannelNative_ctor
// raw disassembly:
//  0x3a83ec: stp FP, LR, [SP, #-0x10]!
//  0x3a83f0: mov FP, SP
//  0x3a83f4: sub SP, SP, #0x10
//  0x3a83f8: ldr x0, [PP, #0x40]
//  0x3a83fc: mov x3, x1
//  0x3a8400: stur x1, [FP, #-8]
//  0x3a8404: stur x2, [FP, #-0x10]
//  0x3a8408: ldr BARRIER, [THR, #0x38]
//  0x3a840c: cmp SP, BARRIER
//  0x3a8410: b.ls #0x3a84a4
//  0x3a8414: stur w0, [x3, #0xb]
//  0x3a8418: ldr x1, [PP, #0x2a20]
//  0x3a841c: bl #0x28cd60
//  0x3a8420: ldur x1, [FP, #-8]
//  0x3a8424: stur w0, [x1, #0xf]
//  0x3a8428: ldurb w16, [x1, #-1]
//  0x3a842c: ldurb w17, [x0, #-1]
//  0x3a8430: and BARRIER, x17, BARRIER, lsr #2
//  0x3a8434: tst BARRIER, HEAP, lsr #32
//  0x3a8438: b.eq #0x3a8440
//  0x3a843c: bl #0x61e04c
//  0x3a8440: ldur x0, [FP, #-0x10]
//  0x3a8444: stur w0, [x1, #7]
//  0x3a8448: ldurb w16, [x1, #-1]
//  0x3a844c: ldurb w17, [x0, #-1]
//  0x3a8450: and BARRIER, x17, BARRIER, lsr #2
//  0x3a8454: tst BARRIER, HEAP, lsr #32
//  0x3a8458: b.eq #0x3a8460
//  0x3a845c: bl #0x61e04c
//  0x3a8460: bl #0x3a84ac
//  0x3a8464: ldur x1, [FP, #-0x10]
//  0x3a8468: stur w1, [x0, #7]
//  0x3a846c: ldr x1, [PP, #0x2a28]
//  0x3a8470: stur w1, [x0, #0xb]
//  0x3a8474: ldur x1, [FP, #-8]
//  0x3a8478: stur w0, [x1, #0xb]
//  0x3a847c: ldurb w16, [x1, #-1]
//  0x3a8480: ldurb w17, [x0, #-1]
//  0x3a8484: and BARRIER, x17, BARRIER, lsr #2
//  0x3a8488: tst BARRIER, HEAP, lsr #32
//  0x3a848c: b.eq #0x3a8494
//  0x3a8490: bl #0x61e04c
//  0x3a8494: mov x0, NULL
//  0x3a8498: mov SP, FP
//  0x3a849c: ldp FP, LR, [SP], #0x10
//  0x3a84a0: ret 
//  0x3a84a4: bl #0x61fa28
//  0x3a84a8: b #0x3a8414
//
dynamic ChannelNative_ctor() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a83ec
  // frame: FP = SP // 0x3a83f0
  // frame: SP = SP - 0x10 // 0x3a83f4
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x3a83f8
  x3 = x1; // 0x3a83fc
  local_m8 = x1; // 0x3a8400
  local_m10 = x2; // 0x3a8404
  BARRIER = mem(THR, 0x38); // 0x3a8408
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a84a4
  }
  memSet(x3, 0xb, w0); // 0x3a8414
  x1 = mem(PP, 0x2a20) /* TypeArguments */; // 0x3a8418
  Map_factory_ctor() /* 0x28cd60 */; // 0x3a841c
  x1 = local_m8; // 0x3a8420
  memSet(x1, 0xf, w0); // 0x3a8424
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3a8430
  w16 = mem(x1, -1); // 0x3a8428
  w17 = mem(x0, -1); // 0x3a842c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x3a8428
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3a842c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x3a843c
  }
  x0 = local_m10; // 0x3a8440
  memSet(x1, 7, w0); // 0x3a8444
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3a8450
  w16 = mem(x1, -1); // 0x3a8448
  w17 = mem(x0, -1); // 0x3a844c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x3a8448
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3a844c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x3a845c
  }
  AllocationStub_MethodChannel() /* 0x3a84ac */; // 0x3a8460
  x1 = local_m10; // 0x3a8464
  memSet(x0, 7, w1); // 0x3a8468
  x1 = mem(PP, 0x2a28) /* Obj!StandardMethodCodec@11b4b  */; // 0x3a846c
  memSet(x0, 0xb, w1); // 0x3a8470
  x1 = local_m8; // 0x3a8474
  memSet(x1, 0xb, w0); // 0x3a8478
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3a8484
  w16 = mem(x1, -1); // 0x3a847c
  w17 = mem(x0, -1); // 0x3a8480
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x3a847c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3a8480
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x3a8490
  }
  SP = FP; // 0x3a8498
  x0 = NULL; // 0x3a8494
  // frame: FP, LR, mem(SP), 0x10 // 0x3a849c
  return;
}

// ChannelNative_removeHandler
// raw disassembly:
//  0x450b98: stp FP, LR, [SP, #-0x10]!
//  0x450b9c: mov FP, SP
//  0x450ba0: ldr BARRIER, [THR, #0x38]
//  0x450ba4: cmp SP, BARRIER
//  0x450ba8: b.ls #0x450bcc
//  0x450bac: ldur w0, [x1, #0xf]
//  0x450bb0: add x0, x0, HEAP, lsl #32
//  0x450bb4: mov x1, x0
//  0x450bb8: bl #0x6110cc
//  0x450bbc: mov x0, NULL
//  0x450bc0: mov SP, FP
//  0x450bc4: ldp FP, LR, [SP], #0x10
//  0x450bc8: ret 
//  0x450bcc: bl #0x61fa28
//  0x450bd0: b #0x450bac
//
dynamic ChannelNative_removeHandler() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x450b98
  BARRIER = mem(THR, 0x38); // 0x450ba0
  // frame: FP = SP // 0x450b9c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x450bcc
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x450bb0
  x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x450bb4
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_remove() /* 0x6110cc */; // 0x450bb8
  SP = FP; // 0x450bc0
  x0 = NULL; // 0x450bbc
  // frame: FP, LR, mem(SP), 0x10 // 0x450bc4
  return;
}

// ChannelNative_registerHandler
// raw disassembly:
//  0x4d34c0: stp FP, LR, [SP, #-0x10]!
//  0x4d34c4: mov FP, SP
//  0x4d34c8: sub SP, SP, #0x20
//  0x4d34cc: stur x1, [FP, #-8]
//  0x4d34d0: stur x2, [FP, #-0x10]
//  0x4d34d4: stur x3, [FP, #-0x18]
//  0x4d34d8: ldr BARRIER, [THR, #0x38]
//  0x4d34dc: cmp SP, BARRIER
//  0x4d34e0: b.ls #0x4d3558
//  0x4d34e4: mov x1, #1
//  0x4d34e8: bl #0x61e890
//  0x4d34ec: mov x4, x0
//  0x4d34f0: ldur x0, [FP, #-8]
//  0x4d34f4: stur x4, [FP, #-0x20]
//  0x4d34f8: stur w0, [x4, #0xf]
//  0x4d34fc: ldur w1, [x0, #0xf]
//  0x4d3500: add x1, x1, HEAP, lsl #32
//  0x4d3504: ldur x2, [FP, #-0x10]
//  0x4d3508: ldur x3, [FP, #-0x18]
//  0x4d350c: bl #0x6164d4
//  0x4d3510: ldur x0, [FP, #-8]
//  0x4d3514: ldur w3, [x0, #0xb]
//  0x4d3518: add x3, x3, HEAP, lsl #32
//  0x4d351c: ldr BARRIER, [PP, #0x40]
//  0x4d3520: cmp w3, w16
//  0x4d3524: b.eq #0x4d3560
//  0x4d3528: ldur x2, [FP, #-0x20]
//  0x4d352c: stur x3, [FP, #-0x10]
//  0x4d3530: add x1, PP, #0xc, lsl #12
//  0x4d3534: ldr x1, [x1, #0x3f0]
//  0x4d3538: bl #0x61ec54
//  0x4d353c: ldur x1, [FP, #-0x10]
//  0x4d3540: mov x2, x0
//  0x4d3544: bl #0x2ff004
//  0x4d3548: mov x0, NULL
//  0x4d354c: mov SP, FP
//  0x4d3550: ldp FP, LR, [SP], #0x10
//  0x4d3554: ret 
//  0x4d3558: bl #0x61fa28
//  0x4d355c: b #0x4d34e4
//  0x4d3560: ldr x9, [PP, #0x22c8]
//  0x4d3564: bl #0x620258
//
dynamic ChannelNative_registerHandler() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d34c0
  // frame: FP = SP // 0x4d34c4
  // frame: SP = SP - 0x20 // 0x4d34c8
  local_m8 = x1; // 0x4d34cc
  local_m10 = x2; // 0x4d34d0
  local_m18 = x3; // 0x4d34d4
  BARRIER = mem(THR, 0x38); // 0x4d34d8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d3558
  }
  x1 = 1; // 0x4d34e4
  sub_0x61e890(); // 0x4d34e8
  x0 = local_m8; // 0x4d34f0
  x4 = x0; // 0x4d34ec
  local_m20 = x4; // 0x4d34f4
  memSet(x4, 0xf, w0); // 0x4d34f8
  w1 = mem(x0, 0xf); // 0x4d34fc
  x1 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d3500
  x2 = local_m10; // 0x4d3504
  x3 = local_m18; // 0x4d3508
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x4d350c
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d351c
  w3 = mem((local_m8), 0xb); /* ChannelNative._methodChannel (off 0xc) */  // 0x4d3514
  x0 = local_m8; // 0x4d3510
  x3 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); /* ChannelNative._methodChannel (off 0xc) */  // 0x4d3518
  if (w3 == w16) {
    x9 = mem(PP, 0x22c8) /* Field */; // 0x4d3560
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d3564
  }
  x2 = local_m20; // 0x4d3528
  local_m10 = x3; // 0x4d352c
  x1 = mem((PP + 0xc000), 0x3f0) /* Function */; // 0x4d3534
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d3538
  x1 = local_m10; // 0x4d353c
  x2 = x0; // 0x4d3540
  MethodChannel_setMethodCallHandler() /* 0x2ff004 */; // 0x4d3544
  SP = FP; // 0x4d354c
  x0 = NULL; // 0x4d3548
  // frame: FP, LR, mem(SP), 0x10 // 0x4d3550
  return;
}

// ChannelNative_anon_closure
// raw disassembly:
//  0x4d3568: stp FP, LR, [SP, #-0x10]!
//  0x4d356c: mov FP, SP
//  0x4d3570: sub SP, SP, #0x38
//  0x4d3574: stur NULL, [FP, #-8]
//  0x4d3578: mov x0, #0
//  0x4d357c: add x1, FP, w0, sxtw #2
//  0x4d3580: ldr x1, [x1, #0x18]
//  0x4d3584: add x2, FP, w0, sxtw #2
//  0x4d3588: ldr x2, [x2, #0x10]
//  0x4d358c: stur x2, [FP, #-0x18]
//  0x4d3590: ldur w3, [x1, #0x17]
//  0x4d3594: add x3, x3, HEAP, lsl #32
//  0x4d3598: stur x3, [FP, #-0x10]
//  0x4d359c: ldr BARRIER, [THR, #0x38]
//  0x4d35a0: cmp SP, BARRIER
//  0x4d35a4: b.ls #0x4d36a4
//  0x4d35a8: mov x0, NULL
//  0x4d35ac: bl #0x2b16e4
//  0x4d35b0: ldur x0, [FP, #-0x10]
//  0x4d35b4: ldur w1, [x0, #0xf]
//  0x4d35b8: add x1, x1, HEAP, lsl #32
//  0x4d35bc: ldur w3, [x1, #0xf]
//  0x4d35c0: add x3, x3, HEAP, lsl #32
//  0x4d35c4: ldur x4, [FP, #-0x18]
//  0x4d35c8: stur x3, [FP, #-0x28]
//  0x4d35cc: ldur w5, [x4, #7]
//  0x4d35d0: add x5, x5, HEAP, lsl #32
//  0x4d35d4: mov x1, x3
//  0x4d35d8: mov x2, x5
//  0x4d35dc: stur x5, [FP, #-0x20]
//  0x4d35e0: bl #0x61c9d0
//  0x4d35e4: mov x1, x0
//  0x4d35e8: ldur x0, [FP, #-0x28]
//  0x4d35ec: ldur w2, [x0, #0xf]
//  0x4d35f0: add x2, x2, HEAP, lsl #32
//  0x4d35f4: cmp w2, w1
//  0x4d35f8: b.ne #0x4d3604
//  0x4d35fc: mov x0, NULL
//  0x4d3600: b #0x4d3608
//  0x4d3604: mov x0, x1
//  0x4d3608: stur x0, [FP, #-0x28]
//  0x4d360c: cmp w0, w22
//  0x4d3610: b.eq #0x4d369c
//  0x4d3614: ldur x3, [FP, #-0x18]
//  0x4d3618: ldur x4, [FP, #-0x20]
//  0x4d361c: mov x1, NULL
//  0x4d3620: mov x2, #8
//  0x4d3624: bl #0x61f920
//  0x4d3628: add BARRIER, PP, #0xc, lsl #12
//  0x4d362c: ldr BARRIER, [BARRIER, #0x3f8]
//  0x4d3630: stur w16, [x0, #0xf]
//  0x4d3634: ldur x1, [FP, #-0x20]
//  0x4d3638: stur w1, [x0, #0x13]
//  0x4d363c: add BARRIER, PP, #0xc, lsl #12
//  0x4d3640: ldr BARRIER, [BARRIER, #0x400]
//  0x4d3644: stur w16, [x0, #0x17]
//  0x4d3648: ldur x1, [FP, #-0x18]
//  0x4d364c: ldur w2, [x1, #0xb]
//  0x4d3650: add x2, x2, HEAP, lsl #32
//  0x4d3654: stur x2, [FP, #-0x20]
//  0x4d3658: stur w2, [x0, #0x1b]
//  0x4d365c: str x0, [SP]
//  0x4d3660: bl #0x2ad854
//  0x4d3664: ldur x0, [FP, #-0x20]
//  0x4d3668: cmp w0, w22
//  0x4d366c: b.ne #0x4d3674
//  0x4d3670: ldr x0, [PP, #0x148]
//  0x4d3674: ldur BARRIER, [FP, #-0x28]
//  0x4d3678: stp x0, BARRIER, [SP]
//  0x4d367c: ldur x0, [FP, #-0x28]
//  0x4d3680: ldr x4, [PP, #0x140]
//  0x4d3684: ldur x2, [x0, #0x1f]
//  0x4d3688: blr x2
//  0x4d368c: mov x1, x0
//  0x4d3690: stur x1, [FP, #-0x18]
//  0x4d3694: bl #0x2b13a0
//  0x4d3698: b #0x2b19a0
//  0x4d369c: mov x0, NULL
//  0x4d36a0: b #0x2b16b8
//  0x4d36a4: bl #0x61fa28
//  0x4d36a8: b #0x4d35a8
//
dynamic ChannelNative_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic w5;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d3568
  // frame: FP = SP // 0x4d356c
  // frame: SP = SP - 0x38 // 0x4d3570
  local_m8 = NULL; // 0x4d3574
  x0 = 0; // 0x4d3578
  x1 = mem((FP + (w0 /* sxtw 2 */)), 0x18); // 0x4d3580
  x2 = mem((FP + (w0 /* sxtw 2 */)), 0x10); // 0x4d3588
  local_m18 = x2; // 0x4d358c
  w3 = mem(x1, 0x17); // 0x4d3590
  x3 = ((mem(x1, 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d3594
  local_m10 = x3; // 0x4d3598
  BARRIER = mem(THR, 0x38); // 0x4d359c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d36a4
  }
  x0 = NULL; // 0x4d35a8
  sub_0x2b16e4(); // 0x4d35ac
  w1 = mem((local_m10), 0xf); // 0x4d35b4
  w3 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xf); // 0x4d35bc
  x0 = local_m10; // 0x4d35b0
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d35b8
  x3 = ((mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d35c0
  x4 = local_m18; // 0x4d35c4
  local_m28 = x3; // 0x4d35c8
  w5 = mem(x4, 7); // 0x4d35cc
  x1 = x3; // 0x4d35d4
  x2 = ((mem(x4, 7)) & 0xffffffff) + (HEAP << 32); // 0x4d35d8
  x5 = ((mem(x4, 7)) & 0xffffffff) + (HEAP << 32); // 0x4d35d0
  local_m20 = x5; // 0x4d35dc
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData() /* 0x61c9d0 */; // 0x4d35e0
  w2 = mem((local_m28), 0xf); // 0x4d35ec
  x0 = local_m28; // 0x4d35e8
  x1 = x0; // 0x4d35e4
  x2 = ((mem((local_m28), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d35f0
  if (w2 != w1) {
    x0 = x1; // 0x4d3604
  } else {
    x0 = NULL; // 0x4d35fc
  }
  local_m28 = x0; // 0x4d3608
  if (w0 == w22) {
    x0 = NULL; // 0x4d369c
  }
  x1 = NULL; // 0x4d361c
  x2 = 8; // 0x4d3620
  x3 = local_m18; // 0x4d3614
  x4 = local_m20; // 0x4d3618
  sub_0x61f920(); // 0x4d3624
  BARRIER = "flutter -- native - call = " /* pp+0xc3f8 */; // 0x4d362c
  memSet(x0, 0xf, w16); // 0x4d3630
  x1 = local_m20; // 0x4d3634
  memSet(x0, 0x13, w1); // 0x4d3638
  BARRIER = " , arg = " /* pp+0xc400 */; // 0x4d3640
  memSet(x0, 0x17, w16); // 0x4d3644
  w2 = mem((local_m18), 0xb); /* ChannelNative._methodChannel (off 0xc) */  // 0x4d364c
  x1 = local_m18; // 0x4d3648
  x2 = ((mem((local_m18), 0xb)) & 0xffffffff) + (HEAP << 32); /* ChannelNative._methodChannel (off 0xc) */  // 0x4d3650
  local_m20 = x2; // 0x4d3654
  memSet(x0, 0x1b, w2); // 0x4d3658
  local_0 = x0; // 0x4d365c
  StringBase_interpolate() /* 0x2ad854 */; // 0x4d3660
  x0 = local_m20; // 0x4d3664
  if (w0 != w22) {
  } else {
    x0 = "" /* pp+0x148 */; // 0x4d3670
  }
  BARRIER = local_m28; // 0x4d3674
  // frame: x0, BARRIER, mem(SP) // 0x4d3678
  x0 = local_m28; // 0x4d367c
  x2 = mem((local_m28), 0x1f); // 0x4d3684
  x4 = mem(PP, 0x140) /* Obj!? */; // 0x4d3680
  callIndirect(x2); // 0x4d3688
  x1 = x0; // 0x4d368c
  local_m18 = x1; // 0x4d3690
  sub_0x2b13a0(); // 0x4d3694
}
