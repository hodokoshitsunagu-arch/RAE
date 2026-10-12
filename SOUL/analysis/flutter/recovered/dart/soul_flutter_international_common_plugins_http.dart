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

dynamic AllocationStub_ChannelNative, AllocationStub_Response, AllocationStub__Closure;
dynamic AllocationStub__Future, AllocationStub__Mint, BARRIER, ChannelNative_call;
dynamic ChannelNative_ctor, FP, Future_asyncComplete, Future_then, HEAP;
dynamic IntegerImplementation_op_eq, LR;
dynamic Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData;
dynamic Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign;
dynamic Map_factory_ctor, Map_factory_ctor_fromLiteral, NULL, NativeDialog_toast, PP, SP;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolate, THR;
dynamic WriteBarrierStub_x1, WriteBarrierStub_x3, getString, jsonDecode, local_0, local_10;
dynamic local_18, local_m10, local_m18, local_m20, local_m28, local_m8, sub_0x278d08;
dynamic sub_0x2b13a0, sub_0x2b16e4, sub_0x312aa0, sub_0x61d99c, sub_0x61da04, sub_0x61e890;
dynamic sub_0x61f920, sub_0x62a0c0, sub_0x62a9f8, w0, w1, w16, w17, w2, w22, w3, w4, w5, w6;
dynamic w7, x0, x1, x16, x17, x2, x3, x4, x5, x6, x7, x8, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$common$plugins$http
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// Http_getSimple
// raw disassembly:
//  0x3ab958: stp FP, LR, [SP, #-0x10]!
//  0x3ab95c: mov FP, SP
//  0x3ab960: sub SP, SP, #0x40
//  0x3ab964: stur x1, [FP, #-0x18]
//  0x3ab968: stur x2, [FP, #-0x20]
//  0x3ab96c: ldur w0, [x4, #0x13]
//  0x3ab970: ldur w3, [x4, #0x1f]
//  0x3ab974: add x3, x3, HEAP, lsl #32
//  0x3ab978: add BARRIER, PP, #0xf, lsl #12
//  0x3ab97c: ldr BARRIER, [BARRIER, #0x408]
//  0x3ab980: cmp w3, w16
//  0x3ab984: b.ne #0x3ab9a4
//  0x3ab988: ldur w3, [x4, #0x23]
//  0x3ab98c: add x3, x3, HEAP, lsl #32
//  0x3ab990: sub w5, w0, w3
//  0x3ab994: add x3, FP, w5, sxtw #2
//  0x3ab998: ldr x3, [x3, #8]
//  0x3ab99c: mov x5, #1
//  0x3ab9a0: b #0x3ab9ac
//  0x3ab9a4: mov x5, #0
//  0x3ab9a8: mov x3, NULL
//  0x3ab9ac: stur x3, [FP, #-0x10]
//  0x3ab9b0: lsl x6, x5, #1
//  0x3ab9b4: lsl w5, w6, #1
//  0x3ab9b8: add w6, w5, #8
//  0x3ab9bc: add BARRIER, x4, w6, sxtw #1
//  0x3ab9c0: ldur w7, [BARRIER, #0xf]
//  0x3ab9c4: add x7, x7, HEAP, lsl #32
//  0x3ab9c8: ldr BARRIER, [PP, #0xe70]
//  0x3ab9cc: cmp w7, w16
//  0x3ab9d0: b.ne #0x3ab9f4
//  0x3ab9d4: add w6, w5, #0xa
//  0x3ab9d8: add BARRIER, x4, w6, sxtw #1
//  0x3ab9dc: ldur w5, [BARRIER, #0xf]
//  0x3ab9e0: add x5, x5, HEAP, lsl #32
//  0x3ab9e4: sub w4, w0, w5
//  0x3ab9e8: add x0, FP, w4, sxtw #2
//  0x3ab9ec: ldr x0, [x0, #8]
//  0x3ab9f0: b #0x3ab9f8
//  0x3ab9f4: mov x0, NULL
//  0x3ab9f8: stur x0, [FP, #-8]
//  0x3ab9fc: ldr BARRIER, [THR, #0x38]
//  0x3aba00: cmp SP, BARRIER
//  0x3aba04: b.ls #0x3aba70
//  0x3aba08: mov x1, #2
//  0x3aba0c: bl #0x61e890
//  0x3aba10: mov x3, x0
//  0x3aba14: ldur x0, [FP, #-0x20]
//  0x3aba18: stur x3, [FP, #-0x28]
//  0x3aba1c: stur w0, [x3, #0xf]
//  0x3aba20: ldur x0, [FP, #-0x10]
//  0x3aba24: stur w0, [x3, #0x13]
//  0x3aba28: ldur x1, [FP, #-0x18]
//  0x3aba2c: ldur x2, [FP, #-8]
//  0x3aba30: bl #0x3aba78
//  0x3aba34: ldur x2, [FP, #-0x28]
//  0x3aba38: add x1, PP, #0xf, lsl #12
//  0x3aba3c: ldr x1, [x1, #0x410]
//  0x3aba40: stur x0, [FP, #-8]
//  0x3aba44: bl #0x61ec54
//  0x3aba48: ldr BARRIER, [PP, #0x1658]
//  0x3aba4c: ldur LR, [FP, #-8]
//  0x3aba50: stp LR, BARRIER, [SP, #8]
//  0x3aba54: str x0, [SP]
//  0x3aba58: ldr x4, [PP, #0x58]
//  0x3aba5c: bl #0x591880
//  0x3aba60: mov x0, NULL
//  0x3aba64: mov SP, FP
//  0x3aba68: ldp FP, LR, [SP], #0x10
//  0x3aba6c: ret 
//  0x3aba70: bl #0x61fa28
//  0x3aba74: b #0x3aba08
//
dynamic Http_getSimple() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w3;
  dynamic w4;
  dynamic w5;
  dynamic w6;
  dynamic w7;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x7;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ab958
  // frame: FP = SP // 0x3ab95c
  // frame: SP = SP - 0x40 // 0x3ab960
  local_m18 = x1; // 0x3ab964
  local_m20 = x2; // 0x3ab968
  BARRIER = "onNetError" /* pp+0xf408 */; // 0x3ab97c
  w0 = mem(x4, 0x13); // 0x3ab96c
  w3 = mem(x4, 0x1f); // 0x3ab970
  x0 = (mem(x4, 0x13)) & 0xffffffff; // 0x3ab96c
  x3 = ((mem(x4, 0x1f)) & 0xffffffff) + (HEAP << 32); // 0x3ab974
  if (w3 != w16) {
    x3 = NULL; // 0x3ab9a8
    x5 = 0; // 0x3ab9a4
  } else {
    w5 = w0 - w3; // 0x3ab990
    x3 = FP + ((w0 - w3) /* sxtw 2 */); // 0x3ab994
    x5 = (w0 - w3) & 0xffffffff; // 0x3ab990
    x3 = mem(x3, 8); // 0x3ab998
    x5 = 1; // 0x3ab99c
  }
  local_m10 = x3; // 0x3ab9ac
  BARRIER = "query" /* pp+0xe70 */; // 0x3ab9c8
  w5 = w6 << 1; // 0x3ab9b4
  w6 = (w6 << 1) + 8; // 0x3ab9b8
  w7 = mem((x4 + (((((w6 << 1) + 8) << 1) + 8) /* sxtw 1 */)), 0xf); // 0x3ab9c0
  x5 = (w6 << 1) & 0xffffffff; // 0x3ab9b4
  x6 = ((w6 << 1) + 8) & 0xffffffff; // 0x3ab9b8
  x7 = ((mem((x4 + (((((w6 << 1) + 8) << 1) + 8) /* sxtw 1 */)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3ab9c4
  if (w7 != w16) {
    x0 = NULL; // 0x3ab9f4
  } else {
    BARRIER = x4 + (w6 /* sxtw 1 */); // 0x3ab9d8
    w4 = w0 - (mem((x4 + (w6 /* sxtw 1 */)), 0xf)); // 0x3ab9e4
    w5 = mem((x4 + (w6 /* sxtw 1 */)), 0xf); // 0x3ab9dc
    x0 = mem((FP + ((w0 - (mem((((w0 - (mem((((w0 - (mem((x4 + (w6 /* sxtw 1 */)), 0xf))) & 0xffffffff) + (w6 /* sxtw 1 */)), 0xf))) & 0xffffffff) + (w6 /* sxtw 1 */)), 0xf))) /* sxtw 2 */)), 8); // 0x3ab9ec
    x4 = (w0 - (mem((x4 + (w6 /* sxtw 1 */)), 0xf))) & 0xffffffff; // 0x3ab9e4
    x5 = ((mem((x4 + (w6 /* sxtw 1 */)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3ab9e0
    x6 = w6 & 0xffffffff; // 0x3ab9d4
  }
  local_m8 = x0; // 0x3ab9f8
  BARRIER = mem(THR, 0x38); // 0x3ab9fc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3aba70
  }
  x1 = 2; // 0x3aba08
  sub_0x61e890(); // 0x3aba0c
  x0 = local_m20; // 0x3aba14
  x3 = x0; // 0x3aba10
  local_m28 = x3; // 0x3aba18
  memSet(x3, 0xf, w0); // 0x3aba1c
  x0 = local_m10; // 0x3aba20
  memSet(x3, 0x13, w0); // 0x3aba24
  x1 = local_m18; // 0x3aba28
  x2 = local_m8; // 0x3aba2c
  Http_get() /* 0x3aba78 */; // 0x3aba30
  x1 = mem((PP + 0xf000), 0x410) /* Function */; // 0x3aba3c
  x2 = local_m28; // 0x3aba34
  local_m8 = x0; // 0x3aba40
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3aba44
  BARRIER = mem(PP, 0x1658) /* TypeArguments */; // 0x3aba48
  LR = local_m8; // 0x3aba4c
  // frame: LR, BARRIER, mem(SP, 8) // 0x3aba50
  local_0 = x0; // 0x3aba54
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x3aba58
  Future_then() /* 0x591880 */; // 0x3aba5c
  SP = FP; // 0x3aba64
  x0 = NULL; // 0x3aba60
  // frame: FP, LR, mem(SP), 0x10 // 0x3aba68
  return;
}

// Http_get
// raw disassembly:
//  0x3aba78: stp FP, LR, [SP, #-0x10]!
//  0x3aba7c: mov FP, SP
//  0x3aba80: sub SP, SP, #0x28
//  0x3aba84: stur NULL, [FP, #-8]
//  0x3aba88: stur x1, [FP, #-0x10]
//  0x3aba8c: stur x2, [FP, #-0x18]
//  0x3aba90: ldr BARRIER, [THR, #0x38]
//  0x3aba94: cmp SP, BARRIER
//  0x3aba98: b.ls #0x3abb3c
//  0x3aba9c: add x0, PP, #0xf, lsl #12
//  0x3abaa0: ldr x0, [x0, #0x480]
//  0x3abaa4: bl #0x2b16e4
//  0x3abaa8: ldur x0, [FP, #-0x18]
//  0x3abaac: cmp w0, w22
//  0x3abab0: b.ne #0x3abacc
//  0x3abab4: ldr BARRIER, [PP, #0xbf0]
//  0x3abab8: ldr LR, [THR, #0x90]
//  0x3ababc: stp LR, BARRIER, [SP]
//  0x3abac0: bl #0x27c0c8
//  0x3abac4: mov x3, x0
//  0x3abac8: b #0x3abad0
//  0x3abacc: mov x3, x0
//  0x3abad0: ldur x0, [FP, #-0x10]
//  0x3abad4: stur x3, [FP, #-0x18]
//  0x3abad8: mov x1, NULL
//  0x3abadc: mov x2, #0xc
//  0x3abae0: bl #0x61f920
//  0x3abae4: ldr BARRIER, [PP, #0x2a68]
//  0x3abae8: stur w16, [x0, #0xf]
//  0x3abaec: add BARRIER, PP, #0xf, lsl #12
//  0x3abaf0: ldr BARRIER, [BARRIER, #0x488]
//  0x3abaf4: stur w16, [x0, #0x13]
//  0x3abaf8: ldr BARRIER, [PP, #0xe58]
//  0x3abafc: stur w16, [x0, #0x17]
//  0x3abb00: ldur x1, [FP, #-0x10]
//  0x3abb04: stur w1, [x0, #0x1b]
//  0x3abb08: ldr BARRIER, [PP, #0x1348]
//  0x3abb0c: stur w16, [x0, #0x1f]
//  0x3abb10: ldur x1, [FP, #-0x18]
//  0x3abb14: stur w1, [x0, #0x23]
//  0x3abb18: ldr BARRIER, [PP, #0xbf0]
//  0x3abb1c: stp x0, BARRIER, [SP]
//  0x3abb20: bl #0x27c0c8
//  0x3abb24: mov x1, x0
//  0x3abb28: bl #0x3abb44
//  0x3abb2c: mov x1, x0
//  0x3abb30: stur x1, [FP, #-0x10]
//  0x3abb34: bl #0x2b13a0
//  0x3abb38: b #0x2b19a0
//  0x3abb3c: bl #0x61fa28
//  0x3abb40: b #0x3aba9c
//
dynamic Http_get() {
  dynamic BARRIER;
  dynamic LR;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3aba78
  // frame: FP = SP // 0x3aba7c
  // frame: SP = SP - 0x28 // 0x3aba80
  local_m8 = NULL; // 0x3aba84
  local_m10 = x1; // 0x3aba88
  local_m18 = x2; // 0x3aba8c
  BARRIER = mem(THR, 0x38); // 0x3aba90
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3abb3c
  }
  x0 = mem((PP + 0xf000), 0x480) /* TypeArguments */; // 0x3abaa0
  sub_0x2b16e4(); // 0x3abaa4
  x0 = local_m18; // 0x3abaa8
  if (w0 != w22) {
    x3 = x0; // 0x3abacc
  } else {
    BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x3abab4
    LR = mem(THR, 0x90); // 0x3abab8
    // frame: LR, BARRIER, mem(SP) // 0x3ababc
    Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x3abac0
    x3 = x0; // 0x3abac4
  }
  x0 = local_m10; // 0x3abad0
  local_m18 = x3; // 0x3abad4
  x1 = NULL; // 0x3abad8
  x2 = 12; // 0x3abadc
  sub_0x61f920(); // 0x3abae0
  BARRIER = "method" /* pp+0x2a68 */; // 0x3abae4
  memSet(x0, 0xf, w16); // 0x3abae8
  BARRIER = "GET" /* pp+0xf488 */; // 0x3abaf0
  memSet(x0, 0x13, w16); // 0x3abaf4
  BARRIER = "path" /* pp+0xe58 */; // 0x3abaf8
  memSet(x0, 0x17, w16); // 0x3abafc
  x1 = local_m10; // 0x3abb00
  memSet(x0, 0x1b, w1); // 0x3abb04
  BARRIER = "data" /* pp+0x1348 */; // 0x3abb08
  memSet(x0, 0x1f, w16); // 0x3abb0c
  x1 = local_m18; // 0x3abb10
  memSet(x0, 0x23, w1); // 0x3abb14
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x3abb18
  // frame: x0, BARRIER, mem(SP) // 0x3abb1c
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x3abb20
  x1 = x0; // 0x3abb24
  Http_request() /* 0x3abb44 */; // 0x3abb28
  x1 = x0; // 0x3abb2c
  local_m10 = x1; // 0x3abb30
  sub_0x2b13a0(); // 0x3abb34
}

// Http_request
// raw disassembly:
//  0x3abb44: stp FP, LR, [SP, #-0x10]!
//  0x3abb48: mov FP, SP
//  0x3abb4c: sub SP, SP, #0x28
//  0x3abb50: stur NULL, [FP, #-8]
//  0x3abb54: stur x1, [FP, #-0x10]
//  0x3abb58: ldr BARRIER, [THR, #0x38]
//  0x3abb5c: cmp SP, BARRIER
//  0x3abb60: b.ls #0x3abd60
//  0x3abb64: add x0, PP, #0xf, lsl #12
//  0x3abb68: ldr x0, [x0, #0x480]
//  0x3abb6c: bl #0x2b16e4
//  0x3abb70: ldr x0, [THR, #0x68]
//  0x3abb74: ldr x0, [x0, #0x1768]
//  0x3abb78: ldr BARRIER, [PP, #0x40]
//  0x3abb7c: cmp w0, w16
//  0x3abb80: b.ne #0x3abb90
//  0x3abb84: add x2, PP, #0xf, lsl #12
//  0x3abb88: ldr x2, [x2, #0x490]
//  0x3abb8c: bl #0x61d99c
//  0x3abb90: ldur BARRIER, [FP, #-0x10]
//  0x3abb94: str BARRIER, [SP]
//  0x3abb98: mov x1, x0
//  0x3abb9c: add x2, PP, #0xf, lsl #12
//  0x3abba0: ldr x2, [x2, #0x498]
//  0x3abba4: ldr x4, [PP, #0x280]
//  0x3abba8: bl #0x3a8288
//  0x3abbac: mov x1, x0
//  0x3abbb0: stur x1, [FP, #-0x18]
//  0x3abbb4: bl #0x2b13a0
//  0x3abbb8: mov x3, x0
//  0x3abbbc: mov x2, NULL
//  0x3abbc0: mov x1, NULL
//  0x3abbc4: stur x3, [FP, #-0x18]
//  0x3abbc8: mov x4, #0x3c
//  0x3abbcc: tbz w0, #0, #0x3abbd8
//  0x3abbd0: ldur x4, [x0, #-1]
//  0x3abbd4: ubfx x4, x4, #0xc, #0x14
//  0x3abbd8: sub x4, x4, #0x5e
//  0x3abbdc: cmp x4, #1
//  0x3abbe0: b.ls #0x3abbf4
//  0x3abbe4: ldr x8, [PP, #0xae0]
//  0x3abbe8: add x3, PP, #0xf, lsl #12
//  0x3abbec: ldr x3, [x3, #0x4a0]
//  0x3abbf0: bl #0x278d08
//  0x3abbf4: mov x1, NULL
//  0x3abbf8: mov x2, #4
//  0x3abbfc: bl #0x61f920
//  0x3abc00: add BARRIER, PP, #0xf, lsl #12
//  0x3abc04: ldr BARRIER, [BARRIER, #0x4b0]
//  0x3abc08: stur w16, [x0, #0xf]
//  0x3abc0c: ldur x1, [FP, #-0x10]
//  0x3abc10: stur w1, [x0, #0x13]
//  0x3abc14: str x0, [SP]
//  0x3abc18: bl #0x2ad854
//  0x3abc1c: mov x1, NULL
//  0x3abc20: mov x2, #4
//  0x3abc24: bl #0x61f920
//  0x3abc28: add BARRIER, PP, #0xf, lsl #12
//  0x3abc2c: ldr BARRIER, [BARRIER, #0x4b8]
//  0x3abc30: stur w16, [x0, #0xf]
//  0x3abc34: ldur x1, [FP, #-0x18]
//  0x3abc38: stur w1, [x0, #0x13]
//  0x3abc3c: str x0, [SP]
//  0x3abc40: bl #0x2ad854
//  0x3abc44: ldur x1, [FP, #-0x18]
//  0x3abc48: cmp w1, w22
//  0x3abc4c: b.eq #0x3abcd8
//  0x3abc50: bl #0x3ac138
//  0x3abc54: mov x3, x0
//  0x3abc58: mov x2, NULL
//  0x3abc5c: mov x1, NULL
//  0x3abc60: stur x3, [FP, #-0x10]
//  0x3abc64: ldr x8, [PP, #0x3cd0]
//  0x3abc68: add x3, PP, #0xf, lsl #12
//  0x3abc6c: ldr x3, [x3, #0x4c0]
//  0x3abc70: bl #0x2b15f0
//  0x3abc74: bl #0x3ac12c
//  0x3abc78: mov x1, x0
//  0x3abc7c: ldur x2, [FP, #-0x10]
//  0x3abc80: stur x0, [FP, #-0x10]
//  0x3abc84: bl #0x3abd68
//  0x3abc88: add x1, PP, #0xf, lsl #12
//  0x3abc8c: ldr x1, [x1, #0x480]
//  0x3abc90: bl #0x2abee8
//  0x3abc94: stur x0, [FP, #-0x18]
//  0x3abc98: stur xzr, [x0, #0xb]
//  0x3abc9c: ldr x0, [THR, #0x68]
//  0x3abca0: ldr x0, [x0, #0x710]
//  0x3abca4: ldr BARRIER, [PP, #0x40]
//  0x3abca8: cmp w0, w16
//  0x3abcac: b.ne #0x3abcb8
//  0x3abcb0: ldr x2, [PP, #0x128]
//  0x3abcb4: bl #0x61da04
//  0x3abcb8: mov x1, x0
//  0x3abcbc: ldur x0, [FP, #-0x18]
//  0x3abcc0: stur w1, [x0, #0x13]
//  0x3abcc4: mov x1, x0
//  0x3abcc8: ldur x2, [FP, #-0x10]
//  0x3abccc: bl #0x27a970
//  0x3abcd0: ldur x0, [FP, #-0x18]
//  0x3abcd4: b #0x2b19a0
//  0x3abcd8: ldr BARRIER, [PP, #0xbf0]
//  0x3abcdc: ldr LR, [THR, #0x90]
//  0x3abce0: stp LR, BARRIER, [SP]
//  0x3abce4: bl #0x27c0c8
//  0x3abce8: stur x0, [FP, #-0x10]
//  0x3abcec: bl #0x3ac12c
//  0x3abcf0: mov x2, x0
//  0x3abcf4: orr x0, xzr, #0xfffffffffffffffe
//  0x3abcf8: stur x2, [FP, #-0x18]
//  0x3abcfc: stur w0, [x2, #7]
//  0x3abd00: ldur x0, [FP, #-0x10]
//  0x3abd04: stur w0, [x2, #0xb]
//  0x3abd08: ldr x0, [PP, #0x148]
//  0x3abd0c: stur w0, [x2, #0xf]
//  0x3abd10: add x1, PP, #0xf, lsl #12
//  0x3abd14: ldr x1, [x1, #0x480]
//  0x3abd18: bl #0x2abee8
//  0x3abd1c: stur x0, [FP, #-0x10]
//  0x3abd20: stur xzr, [x0, #0xb]
//  0x3abd24: ldr x0, [THR, #0x68]
//  0x3abd28: ldr x0, [x0, #0x710]
//  0x3abd2c: ldr BARRIER, [PP, #0x40]
//  0x3abd30: cmp w0, w16
//  0x3abd34: b.ne #0x3abd40
//  0x3abd38: ldr x2, [PP, #0x128]
//  0x3abd3c: bl #0x61da04
//  0x3abd40: mov x1, x0
//  0x3abd44: ldur x0, [FP, #-0x10]
//  0x3abd48: stur w1, [x0, #0x13]
//  0x3abd4c: mov x1, x0
//  0x3abd50: ldur x2, [FP, #-0x18]
//  0x3abd54: bl #0x27a970
//  0x3abd58: ldur x0, [FP, #-0x10]
//  0x3abd5c: b #0x2b19a0
//  0x3abd60: bl #0x61fa28
//  0x3abd64: b #0x3abb64
//
// NOTE: control flow was not fully structured (goto kept) -- pseudocode only.
dynamic Http_request() {
  dynamic BARRIER;
  dynamic LR;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3abb44
  // frame: FP = SP // 0x3abb48
  // frame: SP = SP - 0x28 // 0x3abb4c
  local_m8 = NULL; // 0x3abb50
  local_m10 = x1; // 0x3abb54
  BARRIER = mem(THR, 0x38); // 0x3abb58
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3abd60
  }
  x0 = mem((PP + 0xf000), 0x480) /* TypeArguments */; // 0x3abb68
  sub_0x2b16e4(); // 0x3abb6c
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3abb78
  x0 = mem((mem(THR, 0x68)), 0x1768); // 0x3abb74
  if (w0 != w16) {
  } else {
    x2 = mem((PP + 0xf000), 0x490) /* Field */; // 0x3abb88
    sub_0x61d99c(); // 0x3abb8c
  }
  BARRIER = local_m10; // 0x3abb90
  local_0 = BARRIER; // 0x3abb94
  x1 = x0; // 0x3abb98
  x2 = "action_network_request" /* pp+0xf498 */; // 0x3abba0
  x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x3abba4
  ChannelNative_call() /* 0x3a8288 */; // 0x3abba8
  x1 = x0; // 0x3abbac
  local_m18 = x1; // 0x3abbb0
  sub_0x2b13a0(); // 0x3abbb4
  x1 = NULL; // 0x3abbc0
  x2 = NULL; // 0x3abbbc
  x3 = x0; // 0x3abbb8
  local_m18 = x3; // 0x3abbc4
  x4 = 60; // 0x3abbc8
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3abbd4
  }
  x4 = x4 - 0x5e; // 0x3abbd8
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0xf000), 0x4a0) /* Obj!? */; // 0x3abbec
    x8 = mem(PP, 0xae0) /* Type */; // 0x3abbe4
    sub_0x278d08(); // 0x3abbf0
  }
  x1 = NULL; // 0x3abbf4
  x2 = 4; // 0x3abbf8
  sub_0x61f920(); // 0x3abbfc
  BARRIER = "request: " /* pp+0xf4b0 */; // 0x3abc04
  memSet(x0, 0xf, w16); // 0x3abc08
  x1 = local_m10; // 0x3abc0c
  memSet(x0, 0x13, w1); // 0x3abc10
  local_0 = x0; // 0x3abc14
  StringBase_interpolate() /* 0x2ad854 */; // 0x3abc18
  x1 = NULL; // 0x3abc1c
  x2 = 4; // 0x3abc20
  sub_0x61f920(); // 0x3abc24
  BARRIER = "response: " /* pp+0xf4b8 */; // 0x3abc2c
  memSet(x0, 0xf, w16); // 0x3abc30
  x1 = local_m18; // 0x3abc34
  memSet(x0, 0x13, w1); // 0x3abc38
  local_0 = x0; // 0x3abc3c
  StringBase_interpolate() /* 0x2ad854 */; // 0x3abc40
  x1 = local_m18; // 0x3abc44
  if (w1 == w22) {
    BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x3abcd8
    LR = mem(THR, 0x90); // 0x3abcdc
    // frame: LR, BARRIER, mem(SP) // 0x3abce0
    Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x3abce4
    local_m10 = x0; // 0x3abce8
    AllocationStub_Response() /* 0x3ac12c */; // 0x3abcec
    x0 = xzr | 0xfffffffffffffffe; // 0x3abcf4
    x2 = x0; // 0x3abcf0
    local_m18 = x2; // 0x3abcf8
    memSet(x2, 7, w0); // 0x3abcfc
    x0 = local_m10; // 0x3abd00
    memSet(x2, 0xb, w0); // 0x3abd04
    x0 = "" /* pp+0x148 */; // 0x3abd08
    memSet(x2, 0xf, w0); // 0x3abd0c
    x1 = mem((PP + 0xf000), 0x480) /* TypeArguments */; // 0x3abd14
    AllocationStub__Future() /* 0x2abee8 */; // 0x3abd18
    local_m10 = x0; // 0x3abd1c
    memSet(x0, 0xb, xzr); // 0x3abd20
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3abd2c
    x0 = mem((mem(THR, 0x68)), 0x710); // 0x3abd28
    if (w0 != w16) {
    } else {
      x2 = mem(PP, 0x128) /* Field */; // 0x3abd38
      sub_0x61da04(); // 0x3abd3c
    }
    x0 = local_m10; // 0x3abd44
    x1 = x0; // 0x3abd40
    memSet(x0, 0x13, w1); // 0x3abd48
    x1 = x0; // 0x3abd4c
    x2 = local_m18; // 0x3abd50
    Future_asyncComplete() /* 0x27a970 */; // 0x3abd54
    x0 = local_m10; // 0x3abd58
  }
  gotoLabel(0x3abc50);
}

// Http_channel
// raw disassembly:
//  0x3ac17c: stp FP, LR, [SP, #-0x10]!
//  0x3ac180: mov FP, SP
//  0x3ac184: sub SP, SP, #8
//  0x3ac188: ldr BARRIER, [THR, #0x38]
//  0x3ac18c: cmp SP, BARRIER
//  0x3ac190: b.ls #0x3ac1bc
//  0x3ac194: bl #0x3a84b8
//  0x3ac198: mov x1, x0
//  0x3ac19c: add x2, PP, #0xf, lsl #12
//  0x3ac1a0: ldr x2, [x2, #0x520]
//  0x3ac1a4: stur x0, [FP, #-8]
//  0x3ac1a8: bl #0x3a83ec
//  0x3ac1ac: ldur x0, [FP, #-8]
//  0x3ac1b0: mov SP, FP
//  0x3ac1b4: ldp FP, LR, [SP], #0x10
//  0x3ac1b8: ret 
//  0x3ac1bc: bl #0x61fa28
//  0x3ac1c0: b #0x3ac194
//
dynamic Http_channel() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ac17c
  BARRIER = mem(THR, 0x38); // 0x3ac188
  // frame: FP = SP // 0x3ac180
  // frame: SP = SP - 8 // 0x3ac184
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ac1bc
  }
  AllocationStub_ChannelNative() /* 0x3a84b8 */; // 0x3ac194
  x1 = x0; // 0x3ac198
  x2 = "channel_network" /* pp+0xf520 */; // 0x3ac1a0
  local_m8 = x0; // 0x3ac1a4
  ChannelNative_ctor() /* 0x3a83ec */; // 0x3ac1a8
  SP = FP; // 0x3ac1b0
  x0 = local_m8; // 0x3ac1ac
  // frame: FP, LR, mem(SP), 0x10 // 0x3ac1b4
  return;
}

// Http_anon_closure
// raw disassembly:
//  0x3ac1c4: stp FP, LR, [SP, #-0x10]!
//  0x3ac1c8: mov FP, SP
//  0x3ac1cc: ldr x0, [FP, #0x18]
//  0x3ac1d0: ldur w1, [x0, #0x17]
//  0x3ac1d4: add x1, x1, HEAP, lsl #32
//  0x3ac1d8: ldr BARRIER, [THR, #0x38]
//  0x3ac1dc: cmp SP, BARRIER
//  0x3ac1e0: b.ls #0x3ac20c
//  0x3ac1e4: ldur w2, [x1, #0xf]
//  0x3ac1e8: add x2, x2, HEAP, lsl #32
//  0x3ac1ec: ldur w3, [x1, #0x13]
//  0x3ac1f0: add x3, x3, HEAP, lsl #32
//  0x3ac1f4: ldr x1, [FP, #0x10]
//  0x3ac1f8: bl #0x3ac214
//  0x3ac1fc: mov x0, NULL
//  0x3ac200: mov SP, FP
//  0x3ac204: ldp FP, LR, [SP], #0x10
//  0x3ac208: ret 
//  0x3ac20c: bl #0x61fa28
//  0x3ac210: b #0x3ac1e4
//
dynamic Http_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ac1c4
  BARRIER = mem(THR, 0x38); // 0x3ac1d8
  // frame: FP = SP // 0x3ac1c8
  w1 = mem((local_18), 0x17); // 0x3ac1d0
  x0 = local_18; // 0x3ac1cc
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3ac1d4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ac20c
  }
  w3 = mem(x1, 0x13); // 0x3ac1ec
  x1 = local_10; // 0x3ac1f4
  x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x3ac1e8
  x3 = ((mem(x1, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x3ac1f0
  Http_handleResponse() /* 0x3ac214 */; // 0x3ac1f8
  SP = FP; // 0x3ac200
  x0 = NULL; // 0x3ac1fc
  // frame: FP, LR, mem(SP), 0x10 // 0x3ac204
  return;
}

// Http_handleResponse
// raw disassembly:
//  0x3ac214: stp FP, LR, [SP, #-0x10]!
//  0x3ac218: mov FP, SP
//  0x3ac21c: sub SP, SP, #0x38
//  0x3ac220: mov x4, x1
//  0x3ac224: mov x0, x3
//  0x3ac228: stur x3, [FP, #-0x20]
//  0x3ac22c: mov x3, x2
//  0x3ac230: stur x1, [FP, #-0x10]
//  0x3ac234: stur x2, [FP, #-0x18]
//  0x3ac238: ldr BARRIER, [THR, #0x38]
//  0x3ac23c: cmp SP, BARRIER
//  0x3ac240: b.ls #0x3ac590
//  0x3ac244: ldur w1, [x4, #7]
//  0x3ac248: add x1, x1, HEAP, lsl #32
//  0x3ac24c: cbnz w1, #0x3ac4fc
//  0x3ac250: ldur w5, [x4, #0xb]
//  0x3ac254: add x5, x5, HEAP, lsl #32
//  0x3ac258: stur x5, [FP, #-8]
//  0x3ac25c: cmp w5, w22
//  0x3ac260: b.ne #0x3ac26c
//  0x3ac264: mov x0, NULL
//  0x3ac268: b #0x3ac29c
//  0x3ac26c: mov x1, x5
//  0x3ac270: ldr x2, [PP, #0x4828]
//  0x3ac274: bl #0x61c9d0
//  0x3ac278: mov x1, x0
//  0x3ac27c: ldur x0, [FP, #-8]
//  0x3ac280: ldur w2, [x0, #0xf]
//  0x3ac284: add x2, x2, HEAP, lsl #32
//  0x3ac288: cmp w2, w1
//  0x3ac28c: b.ne #0x3ac298
//  0x3ac290: mov x0, NULL
//  0x3ac294: b #0x3ac29c
//  0x3ac298: mov x0, x1
//  0x3ac29c: mov BARRIER, #0x4e22
//  0x3ac2a0: stp x0, BARRIER, [SP]
//  0x3ac2a4: bl #0x579cf4
//  0x3ac2a8: tbnz w0, #4, #0x3ac4f4
//  0x3ac2ac: ldur x0, [FP, #-0x10]
//  0x3ac2b0: ldur w3, [x0, #0xb]
//  0x3ac2b4: add x3, x3, HEAP, lsl #32
//  0x3ac2b8: stur x3, [FP, #-8]
//  0x3ac2bc: cmp w3, w22
//  0x3ac2c0: b.ne #0x3ac2cc
//  0x3ac2c4: mov x3, NULL
//  0x3ac2c8: b #0x3ac300
//  0x3ac2cc: mov x1, x3
//  0x3ac2d0: ldr x2, [PP, #0x1348]
//  0x3ac2d4: bl #0x61c9d0
//  0x3ac2d8: mov x1, x0
//  0x3ac2dc: ldur x0, [FP, #-8]
//  0x3ac2e0: ldur w2, [x0, #0xf]
//  0x3ac2e4: add x2, x2, HEAP, lsl #32
//  0x3ac2e8: cmp w2, w1
//  0x3ac2ec: b.ne #0x3ac2f8
//  0x3ac2f0: mov x0, NULL
//  0x3ac2f4: b #0x3ac2fc
//  0x3ac2f8: mov x0, x1
//  0x3ac2fc: mov x3, x0
//  0x3ac300: stur x3, [FP, #-8]
//  0x3ac304: cmp w3, w22
//  0x3ac308: b.eq #0x3ac418
//  0x3ac30c: mov x0, x3
//  0x3ac310: mov x2, NULL
//  0x3ac314: mov x1, NULL
//  0x3ac318: cmp w0, w22
//  0x3ac31c: b.eq #0x3ac3b8
//  0x3ac320: tbz w0, #0, #0x3ac3b8
//  0x3ac324: ldur x3, [x0, #-1]
//  0x3ac328: ubfx x3, x3, #0xc, #0x14
//  0x3ac32c: cmp x3, #0xe2c
//  0x3ac330: b.eq #0x3ac3c0
//  0x3ac334: sub x3, x3, #0x5a
//  0x3ac338: cmp x3, #2
//  0x3ac33c: b.ls #0x3ac3c0
//  0x3ac340: ldur x4, [x0, #-1]
//  0x3ac344: ubfx x4, x4, #0xc, #0x14
//  0x3ac348: ldr x3, [THR, #0x760]
//  0x3ac34c: ldr x3, [x3, #0x18]
//  0x3ac350: ldr x3, [x3, x4, lsl #3]
//  0x3ac354: ldur w3, [x3, #0x2b]
//  0x3ac358: add x3, x3, HEAP, lsl #32
//  0x3ac35c: cmp w3, w22
//  0x3ac360: b.eq #0x3ac3b8
//  0x3ac364: ldur w3, [x3, #0xf]
//  0x3ac368: lsr x3, x3, #3
//  0x3ac36c: cmp x3, #0xe2c
//  0x3ac370: b.eq #0x3ac3c0
//  0x3ac374: add x3, PP, #0xf, lsl #12
//  0x3ac378: ldr x3, [x3, #0x418]
//  0x3ac37c: ldr LR, [PP, #0x8f0]
//  0x3ac380: ldur LR, [LR, #7]
//  0x3ac384: blr LR
//  0x3ac388: cmp w7, w22
//  0x3ac38c: b.eq #0x3ac398
//  0x3ac390: tbnz w7, #4, #0x3ac3b8
//  0x3ac394: b #0x3ac3c0
//  0x3ac398: add x8, PP, #0xf, lsl #12
//  0x3ac39c: ldr x8, [x8, #0x420]
//  0x3ac3a0: add x3, PP, #0xf, lsl #12
//  0x3ac3a4: ldr x3, [x3, #0x428]
//  0x3ac3a8: ldr LR, [PP, #0x390]
//  0x3ac3ac: ldur LR, [LR, #7]
//  0x3ac3b0: blr LR
//  0x3ac3b4: b #0x3ac3c4
//  0x3ac3b8: add x0, NULL, #0x30
//  0x3ac3bc: b #0x3ac3c4
//  0x3ac3c0: add x0, NULL, #0x20
//  0x3ac3c4: tbnz w0, #4, #0x3ac414
//  0x3ac3c8: ldur x0, [FP, #-8]
//  0x3ac3cc: mov x1, NULL
//  0x3ac3d0: mov x2, #4
//  0x3ac3d4: bl #0x61f920
//  0x3ac3d8: add BARRIER, PP, #0xf, lsl #12
//  0x3ac3dc: ldr BARRIER, [BARRIER, #0x380]
//  0x3ac3e0: stur w16, [x0, #0xf]
//  0x3ac3e4: ldur x3, [FP, #-8]
//  0x3ac3e8: stur w3, [x0, #0x13]
//  0x3ac3ec: ldr BARRIER, [PP, #0xbf0]
//  0x3ac3f0: stp x0, BARRIER, [SP]
//  0x3ac3f4: bl #0x27c0c8
//  0x3ac3f8: ldur BARRIER, [FP, #-0x18]
//  0x3ac3fc: stp x0, BARRIER, [SP]
//  0x3ac400: ldur x0, [FP, #-0x18]
//  0x3ac404: ldr x4, [PP, #0x140]
//  0x3ac408: ldur x2, [x0, #0x1f]
//  0x3ac40c: blr x2
//  0x3ac410: b #0x3ac580
//  0x3ac414: ldur x3, [FP, #-8]
//  0x3ac418: cmp w3, w22
//  0x3ac41c: b.eq #0x3ac4ac
//  0x3ac420: mov x0, x3
//  0x3ac424: mov x2, NULL
//  0x3ac428: mov x1, NULL
//  0x3ac42c: cmp w0, w22
//  0x3ac430: b.eq #0x3ac47c
//  0x3ac434: tbz w0, #0, #0x3ac47c
//  0x3ac438: add x3, PP, #0xf, lsl #12
//  0x3ac43c: ldr x3, [x3, #0x430]
//  0x3ac440: ldr LR, [PP, #0x30]
//  0x3ac444: ldur LR, [LR, #7]
//  0x3ac448: blr LR
//  0x3ac44c: cmp w7, w22
//  0x3ac450: b.eq #0x3ac45c
//  0x3ac454: tbnz w7, #4, #0x3ac47c
//  0x3ac458: b #0x3ac484
//  0x3ac45c: add x8, PP, #0xf, lsl #12
//  0x3ac460: ldr x8, [x8, #0x438]
//  0x3ac464: add x3, PP, #0xf, lsl #12
//  0x3ac468: ldr x3, [x3, #0x440]
//  0x3ac46c: ldr LR, [PP, #0x390]
//  0x3ac470: ldur LR, [LR, #7]
//  0x3ac474: blr LR
//  0x3ac478: b #0x3ac488
//  0x3ac47c: add x0, NULL, #0x30
//  0x3ac480: b #0x3ac488
//  0x3ac484: add x0, NULL, #0x20
//  0x3ac488: tbnz w0, #4, #0x3ac4ac
//  0x3ac48c: ldur BARRIER, [FP, #-0x18]
//  0x3ac490: ldur LR, [FP, #-8]
//  0x3ac494: stp LR, BARRIER, [SP]
//  0x3ac498: ldur x0, [FP, #-0x18]
//  0x3ac49c: ldr x4, [PP, #0x140]
//  0x3ac4a0: ldur x2, [x0, #0x1f]
//  0x3ac4a4: blr x2
//  0x3ac4a8: b #0x3ac580
//  0x3ac4ac: ldur x0, [FP, #-8]
//  0x3ac4b0: mov x1, NULL
//  0x3ac4b4: mov x2, #4
//  0x3ac4b8: bl #0x61f920
//  0x3ac4bc: ldr BARRIER, [PP, #0x1348]
//  0x3ac4c0: stur w16, [x0, #0xf]
//  0x3ac4c4: ldur x1, [FP, #-8]
//  0x3ac4c8: stur w1, [x0, #0x13]
//  0x3ac4cc: ldr BARRIER, [PP, #0xbf0]
//  0x3ac4d0: stp x0, BARRIER, [SP]
//  0x3ac4d4: bl #0x27c0c8
//  0x3ac4d8: ldur BARRIER, [FP, #-0x18]
//  0x3ac4dc: stp x0, BARRIER, [SP]
//  0x3ac4e0: ldur x0, [FP, #-0x18]
//  0x3ac4e4: ldr x4, [PP, #0x140]
//  0x3ac4e8: ldur x2, [x0, #0x1f]
//  0x3ac4ec: blr x2
//  0x3ac4f0: b #0x3ac580
//  0x3ac4f4: ldur x0, [FP, #-0x10]
//  0x3ac4f8: b #0x3ac500
//  0x3ac4fc: mov x0, x4
//  0x3ac500: ldur x1, [FP, #-0x20]
//  0x3ac504: ldr x0, [THR, #0x68]
//  0x3ac508: ldr x0, [x0, #0x1770]
//  0x3ac50c: ldr BARRIER, [PP, #0x40]
//  0x3ac510: cmp w0, w16
//  0x3ac514: b.ne #0x3ac524
//  0x3ac518: add x2, PP, #0xf, lsl #12
//  0x3ac51c: ldr x2, [x2, #0x448]
//  0x3ac520: bl #0x61d99c
//  0x3ac524: ldur x1, [FP, #-0x10]
//  0x3ac528: ldur w2, [x1, #7]
//  0x3ac52c: add x2, x2, HEAP, lsl #32
//  0x3ac530: ldur w3, [x1, #0xf]
//  0x3ac534: add x3, x3, HEAP, lsl #32
//  0x3ac538: stp x2, x0, [SP, #8]
//  0x3ac53c: str x3, [SP]
//  0x3ac540: ldr x4, [PP, #0x370]
//  0x3ac544: ldur x2, [x0, #0x1f]
//  0x3ac548: blr x2
//  0x3ac54c: ldur x0, [FP, #-0x20]
//  0x3ac550: cmp w0, w22
//  0x3ac554: b.eq #0x3ac580
//  0x3ac558: ldur x1, [FP, #-0x10]
//  0x3ac55c: ldur w2, [x1, #7]
//  0x3ac560: add x2, x2, HEAP, lsl #32
//  0x3ac564: ldur w3, [x1, #0xf]
//  0x3ac568: add x3, x3, HEAP, lsl #32
//  0x3ac56c: stp x2, x0, [SP, #8]
//  0x3ac570: str x3, [SP]
//  0x3ac574: ldr x4, [PP, #0x370]
//  0x3ac578: ldur x2, [x0, #0x1f]
//  0x3ac57c: blr x2
//  0x3ac580: mov x0, NULL
//  0x3ac584: mov SP, FP
//  0x3ac588: ldp FP, LR, [SP], #0x10
//  0x3ac58c: ret 
//  0x3ac590: bl #0x61fa28
//  0x3ac594: b #0x3ac244
//
// NOTE: control flow was not fully structured (goto kept) -- pseudocode only.
dynamic Http_handleResponse() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
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
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ac214
  // frame: FP = SP // 0x3ac218
  // frame: SP = SP - 0x38 // 0x3ac21c
  x0 = x3; // 0x3ac224
  x4 = x1; // 0x3ac220
  local_m20 = x3; // 0x3ac228
  x3 = x2; // 0x3ac22c
  local_m10 = x1; // 0x3ac230
  local_m18 = x2; // 0x3ac234
  BARRIER = mem(THR, 0x38); // 0x3ac238
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ac590
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x3ac248
  if (w1 != 0) {
    x0 = x4; // 0x3ac4fc
  } else {
    x5 = (w5 & 0xffffffff) + (HEAP << 32); // 0x3ac254
    local_m8 = x5; // 0x3ac258
    if (w5 != w22) {
      x1 = x5; // 0x3ac26c
      x2 = "code" /* pp+0x4828 */; // 0x3ac270
      Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData() /* 0x61c9d0 */; // 0x3ac274
      w2 = mem((local_m8), 0xf); // 0x3ac280
      x0 = local_m8; // 0x3ac27c
      x1 = x0; // 0x3ac278
      x2 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3ac284
      if (w2 != w1) {
        x0 = x1; // 0x3ac298
      } else {
        x0 = NULL; // 0x3ac290
      }
    } else {
      x0 = NULL; // 0x3ac264
    }
    BARRIER = 20002; // 0x3ac29c
    // frame: x0, BARRIER, mem(SP) // 0x3ac2a0
    IntegerImplementation_op_eq() /* 0x579cf4 */; // 0x3ac2a4
    if (x0 & (1 << 4) != 0) {
      x0 = local_m10; // 0x3ac4f4
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x3ac50c
      x0 = mem((mem(THR, 0x68)), 0x1770); // 0x3ac508
      x1 = local_m20; // 0x3ac500
      if (w0 != w16) {
      } else {
        x2 = mem((PP + 0xf000), 0x448) /* Field */; // 0x3ac51c
        sub_0x61d99c(); // 0x3ac520
      }
      w2 = mem((local_m10), 7); // 0x3ac528
      w3 = mem((local_m10), 0xf); // 0x3ac530
      x1 = local_m10; // 0x3ac524
      x2 = ((mem((local_m10), 7)) & 0xffffffff) + (HEAP << 32); // 0x3ac52c
      x3 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3ac534
      // frame: x2, x0, mem(SP, 8) // 0x3ac538
      local_0 = x3; // 0x3ac53c
      x2 = mem(x0, 0x1f); // 0x3ac544
      x4 = mem(PP, 0x370) /* Obj!? */; // 0x3ac540
      callIndirect(x2); // 0x3ac548
      x0 = local_m20; // 0x3ac54c
      if (w0 == w22) {
      } else {
        w2 = mem((local_m10), 7); // 0x3ac55c
        w3 = mem((local_m10), 0xf); // 0x3ac564
        x1 = local_m10; // 0x3ac558
        x2 = ((mem((local_m10), 7)) & 0xffffffff) + (HEAP << 32); // 0x3ac560
        x3 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3ac568
        // frame: x2, x0, mem(SP, 8) // 0x3ac56c
        local_0 = x3; // 0x3ac570
        x2 = mem(x0, 0x1f); // 0x3ac578
        x4 = mem(PP, 0x370) /* Obj!? */; // 0x3ac574
        callIndirect(x2); // 0x3ac57c
      }
    } else {
      w3 = mem((local_m10), 0xb); // 0x3ac2b0
      x0 = local_m10; // 0x3ac2ac
      x3 = ((mem((local_m10), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3ac2b4
      local_m8 = x3; // 0x3ac2b8
      if (w3 != w22) {
        x1 = x3; // 0x3ac2cc
        x2 = "data" /* pp+0x1348 */; // 0x3ac2d0
        Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData() /* 0x61c9d0 */; // 0x3ac2d4
        w2 = mem((local_m8), 0xf); // 0x3ac2e0
        x0 = local_m8; // 0x3ac2dc
        x1 = x0; // 0x3ac2d8
        x2 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3ac2e4
        if (w2 != w1) {
          x0 = x1; // 0x3ac2f8
        } else {
          x0 = NULL; // 0x3ac2f0
        }
        x3 = x0; // 0x3ac2fc
      } else {
        x3 = NULL; // 0x3ac2c4
      }
      local_m8 = x3; // 0x3ac300
      if (w3 == w22) {
      } else {
        x0 = x3; // 0x3ac30c
        x1 = NULL; // 0x3ac314
        x2 = NULL; // 0x3ac310
        if (w0 == w22) {
        } else {
          if (x0 & (1 << 0) == 0) {
            x0 = NULL + 0x30; // 0x3ac3b8
          } else {
            x3 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3ac328
            if (x3 == 0xe2c) {
            } else {
              x3 = x3 - 0x5a; // 0x3ac334
              if (x3 <= 2) {
                x0 = NULL + 0x20; // 0x3ac3c0
              } else {
                x3 = mem((mem((mem(THR, 0x760)), 0x18)), (((mem(x0, (-1)) >> 12) & 0xfffff) << 3)); // 0x3ac350
                x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3ac344
                w3 = mem(x3, 0x2b); // 0x3ac354
                x3 = ((mem(x3, 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x3ac358
                if (w3 == w22) {
                  // duplicated branch body (shared block 0x3ac3b8, joins at 0x3ac3c4; the same code was emitted above)
                  x0 = NULL + 0x30; // 0x3ac3b8
                } else {
                  x3 = (w3 & 0xffffffff) >> 3; // 0x3ac368
                  if (x3 == 0xe2c) {
                    // duplicated branch body (shared block 0x3ac3c0, joins at 0x3ac3c4; the same code was emitted above)
                    x0 = NULL + 0x20; // 0x3ac3c0
                  } else {
                    LR = mem((mem(PP, 0x8f0) /* Stub */), 7); // 0x3ac380
                    x3 = mem((PP + 0xf000), 0x418) /* SubtypeTestCache */; // 0x3ac378
                    callIndirect(LR); // 0x3ac384
                    if (w7 == w22) {
                      LR = mem((mem(PP, 0x390) /* Stub */), 7); // 0x3ac3ac
                      x3 = mem((PP + 0xf000), 0x428) /* SubtypeTestCache */; // 0x3ac3a4
                      x8 = mem((PP + 0xf000), 0x420) /* Type */; // 0x3ac39c
                      callIndirect(LR); // 0x3ac3b0
                    } else {
                      if (x7 & (1 << 4) != 0) {
                        gotoLabel(0x3ac3b8);
                      } else {
                        gotoLabel(0x3ac394);
                      }
                    }
                  }
                }
              }
              if (x0 & (1 << 4) != 0) {
                x3 = local_m8; // 0x3ac414
                if (w3 == w22) {
                } else {
                  x0 = x3; // 0x3ac420
                  x1 = NULL; // 0x3ac428
                  x2 = NULL; // 0x3ac424
                  if (w0 == w22) {
                  } else {
                    if (x0 & (1 << 0) == 0) {
                      x0 = NULL + 0x30; // 0x3ac47c
                    } else {
                      LR = mem((mem(PP, 0x30) /* Stub */), 7); // 0x3ac444
                      x3 = mem((PP + 0xf000), 0x430) /* SubtypeTestCache */; // 0x3ac43c
                      callIndirect(LR); // 0x3ac448
                      if (w7 == w22) {
                        gotoLabel(0x3ac45c);
                      } else {
                        gotoLabel(0x3ac454);
                      }
                    }
                    if (x0 & (1 << 4) != 0) {
                      x0 = local_m8; // 0x3ac4ac
                      x1 = NULL; // 0x3ac4b0
                      x2 = 4; // 0x3ac4b4
                      sub_0x61f920(); // 0x3ac4b8
                      BARRIER = "data" /* pp+0x1348 */; // 0x3ac4bc
                      memSet(x0, 0xf, w16); // 0x3ac4c0
                      x1 = local_m8; // 0x3ac4c4
                      memSet(x0, 0x13, w1); // 0x3ac4c8
                      BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x3ac4cc
                      // frame: x0, BARRIER, mem(SP) // 0x3ac4d0
                      Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x3ac4d4
                      BARRIER = local_m18; // 0x3ac4d8
                      // frame: x0, BARRIER, mem(SP) // 0x3ac4dc
                      x0 = local_m18; // 0x3ac4e0
                      x2 = mem((local_m18), 0x1f); // 0x3ac4e8
                      x4 = mem(PP, 0x140) /* Obj!? */; // 0x3ac4e4
                      callIndirect(x2); // 0x3ac4ec
                    } else {
                      BARRIER = local_m18; // 0x3ac48c
                      LR = local_m8; // 0x3ac490
                      // frame: LR, BARRIER, mem(SP) // 0x3ac494
                      x0 = local_m18; // 0x3ac498
                      x2 = mem((local_m18), 0x1f); // 0x3ac4a0
                      x4 = mem(PP, 0x140) /* Obj!? */; // 0x3ac49c
                      callIndirect(x2); // 0x3ac4a4
                    }
                    SP = FP; // 0x3ac584
                    x0 = NULL; // 0x3ac580
                    // frame: FP, LR, mem(SP), 0x10 // 0x3ac588
                    return;
                  }
                }
              } else {
                x0 = local_m8; // 0x3ac3c8
                x1 = NULL; // 0x3ac3cc
                x2 = 4; // 0x3ac3d0
                sub_0x61f920(); // 0x3ac3d4
                BARRIER = "list" /* pp+0xf380 */; // 0x3ac3dc
                memSet(x0, 0xf, w16); // 0x3ac3e0
                x3 = local_m8; // 0x3ac3e4
                memSet(x0, 0x13, w3); // 0x3ac3e8
                BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x3ac3ec
                // frame: x0, BARRIER, mem(SP) // 0x3ac3f0
                Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x3ac3f4
                BARRIER = local_m18; // 0x3ac3f8
                // frame: x0, BARRIER, mem(SP) // 0x3ac3fc
                x0 = local_m18; // 0x3ac400
                x2 = mem((local_m18), 0x1f); // 0x3ac408
                x4 = mem(PP, 0x140) /* Obj!? */; // 0x3ac404
                callIndirect(x2); // 0x3ac40c
              }
            }
          }
        }
      }
    }
  }
}

// Http_postSimple
// raw disassembly:
//  0x41e430: stp FP, LR, [SP, #-0x10]!
//  0x41e434: mov FP, SP
//  0x41e438: sub SP, SP, #0x40
//  0x41e43c: stur x1, [FP, #-0x10]
//  0x41e440: stur x2, [FP, #-0x18]
//  0x41e444: stur x3, [FP, #-0x20]
//  0x41e448: ldur w0, [x4, #0x13]
//  0x41e44c: ldur w5, [x4, #0x1f]
//  0x41e450: add x5, x5, HEAP, lsl #32
//  0x41e454: add BARRIER, PP, #0xf, lsl #12
//  0x41e458: ldr BARRIER, [BARRIER, #0x408]
//  0x41e45c: cmp w5, w16
//  0x41e460: b.ne #0x41e47c
//  0x41e464: ldur w5, [x4, #0x23]
//  0x41e468: add x5, x5, HEAP, lsl #32
//  0x41e46c: sub w4, w0, w5
//  0x41e470: add x0, FP, w4, sxtw #2
//  0x41e474: ldr x0, [x0, #8]
//  0x41e478: b #0x41e480
//  0x41e47c: mov x0, NULL
//  0x41e480: stur x0, [FP, #-8]
//  0x41e484: ldr BARRIER, [THR, #0x38]
//  0x41e488: cmp SP, BARRIER
//  0x41e48c: b.ls #0x41e4f8
//  0x41e490: mov x1, #2
//  0x41e494: bl #0x61e890
//  0x41e498: mov x3, x0
//  0x41e49c: ldur x0, [FP, #-0x20]
//  0x41e4a0: stur x3, [FP, #-0x28]
//  0x41e4a4: stur w0, [x3, #0xf]
//  0x41e4a8: ldur x0, [FP, #-8]
//  0x41e4ac: stur w0, [x3, #0x13]
//  0x41e4b0: ldur x1, [FP, #-0x10]
//  0x41e4b4: ldur x2, [FP, #-0x18]
//  0x41e4b8: bl #0x41e500
//  0x41e4bc: ldur x2, [FP, #-0x28]
//  0x41e4c0: add x1, PP, #0x10, lsl #12
//  0x41e4c4: ldr x1, [x1, #0xbc8]
//  0x41e4c8: stur x0, [FP, #-8]
//  0x41e4cc: bl #0x61ec54
//  0x41e4d0: ldr BARRIER, [PP, #0x1658]
//  0x41e4d4: ldur LR, [FP, #-8]
//  0x41e4d8: stp LR, BARRIER, [SP, #8]
//  0x41e4dc: str x0, [SP]
//  0x41e4e0: ldr x4, [PP, #0x58]
//  0x41e4e4: bl #0x591880
//  0x41e4e8: mov x0, NULL
//  0x41e4ec: mov SP, FP
//  0x41e4f0: ldp FP, LR, [SP], #0x10
//  0x41e4f4: ret 
//  0x41e4f8: bl #0x61fa28
//  0x41e4fc: b #0x41e490
//
dynamic Http_postSimple() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w4;
  dynamic w5;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41e430
  // frame: FP = SP // 0x41e434
  // frame: SP = SP - 0x40 // 0x41e438
  local_m10 = x1; // 0x41e43c
  local_m18 = x2; // 0x41e440
  local_m20 = x3; // 0x41e444
  BARRIER = "onNetError" /* pp+0xf408 */; // 0x41e458
  w0 = mem(x4, 0x13); // 0x41e448
  w5 = mem(x4, 0x1f); // 0x41e44c
  x0 = (mem(x4, 0x13)) & 0xffffffff; // 0x41e448
  x5 = ((mem(x4, 0x1f)) & 0xffffffff) + (HEAP << 32); // 0x41e450
  if (w5 != w16) {
    x0 = NULL; // 0x41e47c
  } else {
    w4 = w0 - w5; // 0x41e46c
    x0 = mem((FP + ((w0 - w5) /* sxtw 2 */)), 8); // 0x41e474
    x4 = (w0 - w5) & 0xffffffff; // 0x41e46c
    x5 = (w5 & 0xffffffff) + (HEAP << 32); // 0x41e468
  }
  local_m8 = x0; // 0x41e480
  BARRIER = mem(THR, 0x38); // 0x41e484
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41e4f8
  }
  x1 = 2; // 0x41e490
  sub_0x61e890(); // 0x41e494
  x0 = local_m20; // 0x41e49c
  x3 = x0; // 0x41e498
  local_m28 = x3; // 0x41e4a0
  memSet(x3, 0xf, w0); // 0x41e4a4
  x0 = local_m8; // 0x41e4a8
  memSet(x3, 0x13, w0); // 0x41e4ac
  x1 = local_m10; // 0x41e4b0
  x2 = local_m18; // 0x41e4b4
  Http_post() /* 0x41e500 */; // 0x41e4b8
  x1 = mem((PP + 0x10000), 0xbc8) /* Function */; // 0x41e4c4
  x2 = local_m28; // 0x41e4bc
  local_m8 = x0; // 0x41e4c8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41e4cc
  BARRIER = mem(PP, 0x1658) /* TypeArguments */; // 0x41e4d0
  LR = local_m8; // 0x41e4d4
  // frame: LR, BARRIER, mem(SP, 8) // 0x41e4d8
  local_0 = x0; // 0x41e4dc
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x41e4e0
  Future_then() /* 0x591880 */; // 0x41e4e4
  SP = FP; // 0x41e4ec
  x0 = NULL; // 0x41e4e8
  // frame: FP, LR, mem(SP), 0x10 // 0x41e4f0
  return;
}

// Http_post
// raw disassembly:
//  0x41e500: stp FP, LR, [SP, #-0x10]!
//  0x41e504: mov FP, SP
//  0x41e508: sub SP, SP, #0x28
//  0x41e50c: stur NULL, [FP, #-8]
//  0x41e510: stur x1, [FP, #-0x10]
//  0x41e514: stur x2, [FP, #-0x18]
//  0x41e518: ldr BARRIER, [THR, #0x38]
//  0x41e51c: cmp SP, BARRIER
//  0x41e520: b.ls #0x41e594
//  0x41e524: add x0, PP, #0xf, lsl #12
//  0x41e528: ldr x0, [x0, #0x480]
//  0x41e52c: bl #0x2b16e4
//  0x41e530: mov x1, NULL
//  0x41e534: mov x2, #0xc
//  0x41e538: bl #0x61f920
//  0x41e53c: ldr BARRIER, [PP, #0x2a68]
//  0x41e540: stur w16, [x0, #0xf]
//  0x41e544: add BARRIER, PP, #0x10, lsl #12
//  0x41e548: ldr BARRIER, [BARRIER, #0xbd0]
//  0x41e54c: stur w16, [x0, #0x13]
//  0x41e550: ldr BARRIER, [PP, #0xe58]
//  0x41e554: stur w16, [x0, #0x17]
//  0x41e558: ldur x1, [FP, #-0x10]
//  0x41e55c: stur w1, [x0, #0x1b]
//  0x41e560: ldr BARRIER, [PP, #0x1348]
//  0x41e564: stur w16, [x0, #0x1f]
//  0x41e568: ldur x1, [FP, #-0x18]
//  0x41e56c: stur w1, [x0, #0x23]
//  0x41e570: ldr BARRIER, [PP, #0xbf0]
//  0x41e574: stp x0, BARRIER, [SP]
//  0x41e578: bl #0x27c0c8
//  0x41e57c: mov x1, x0
//  0x41e580: bl #0x3abb44
//  0x41e584: mov x1, x0
//  0x41e588: stur x1, [FP, #-0x10]
//  0x41e58c: bl #0x2b13a0
//  0x41e590: b #0x2b19a0
//  0x41e594: bl #0x61fa28
//  0x41e598: b #0x41e524
//
dynamic Http_post() {
  dynamic BARRIER;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41e500
  // frame: FP = SP // 0x41e504
  // frame: SP = SP - 0x28 // 0x41e508
  local_m8 = NULL; // 0x41e50c
  local_m10 = x1; // 0x41e510
  local_m18 = x2; // 0x41e514
  BARRIER = mem(THR, 0x38); // 0x41e518
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41e594
  }
  x0 = mem((PP + 0xf000), 0x480) /* TypeArguments */; // 0x41e528
  sub_0x2b16e4(); // 0x41e52c
  x1 = NULL; // 0x41e530
  x2 = 12; // 0x41e534
  sub_0x61f920(); // 0x41e538
  BARRIER = "method" /* pp+0x2a68 */; // 0x41e53c
  memSet(x0, 0xf, w16); // 0x41e540
  BARRIER = "POST" /* pp+0x10bd0 */; // 0x41e548
  memSet(x0, 0x13, w16); // 0x41e54c
  BARRIER = "path" /* pp+0xe58 */; // 0x41e550
  memSet(x0, 0x17, w16); // 0x41e554
  x1 = local_m10; // 0x41e558
  memSet(x0, 0x1b, w1); // 0x41e55c
  BARRIER = "data" /* pp+0x1348 */; // 0x41e560
  memSet(x0, 0x1f, w16); // 0x41e564
  x1 = local_m18; // 0x41e568
  memSet(x0, 0x23, w1); // 0x41e56c
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x41e570
  // frame: x0, BARRIER, mem(SP) // 0x41e574
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x41e578
  x1 = x0; // 0x41e57c
  Http_request() /* 0x3abb44 */; // 0x41e580
  x1 = x0; // 0x41e584
  local_m10 = x1; // 0x41e588
  sub_0x2b13a0(); // 0x41e58c
}

// Response_ctor_fromJson
// raw disassembly:
//  0x3abd68: stp FP, LR, [SP, #-0x10]!
//  0x3abd6c: mov FP, SP
//  0x3abd70: sub SP, SP, #0x18
//  0x3abd74: mov x3, x1
//  0x3abd78: mov x0, x2
//  0x3abd7c: stur x1, [FP, #-8]
//  0x3abd80: stur x2, [FP, #-0x10]
//  0x3abd84: ldr BARRIER, [THR, #0x38]
//  0x3abd88: cmp SP, BARRIER
//  0x3abd8c: b.ls #0x3abfb4
//  0x3abd90: mov x1, x0
//  0x3abd94: ldr x2, [PP, #0x4828]
//  0x3abd98: bl #0x61c9d0
//  0x3abd9c: ldur x3, [FP, #-0x10]
//  0x3abda0: ldur w1, [x3, #0xf]
//  0x3abda4: add x1, x1, HEAP, lsl #32
//  0x3abda8: cmp w1, w0
//  0x3abdac: b.ne #0x3abdb4
//  0x3abdb0: mov x0, NULL
//  0x3abdb4: cmp w0, w22
//  0x3abdb8: b.ne #0x3abdc4
//  0x3abdbc: orr x5, xzr, #0xfffffffffffffffe
//  0x3abdc0: b #0x3abdc8
//  0x3abdc4: mov x5, x0
//  0x3abdc8: ldur x4, [FP, #-8]
//  0x3abdcc: mov x0, x5
//  0x3abdd0: stur x5, [FP, #-0x18]
//  0x3abdd4: mov x2, NULL
//  0x3abdd8: mov x1, NULL
//  0x3abddc: tbz w0, #0, #0x3abe04
//  0x3abde0: ldur x4, [x0, #-1]
//  0x3abde4: ubfx x4, x4, #0xc, #0x14
//  0x3abde8: sub x4, x4, #0x3c
//  0x3abdec: cmp x4, #1
//  0x3abdf0: b.ls #0x3abe04
//  0x3abdf4: ldr x8, [PP, #0xaf8]
//  0x3abdf8: add x3, PP, #0xf, lsl #12
//  0x3abdfc: ldr x3, [x3, #0x4d0]
//  0x3abe00: bl #0x62a9f8
//  0x3abe04: ldur x0, [FP, #-0x18]
//  0x3abe08: ldur x3, [FP, #-8]
//  0x3abe0c: stur w0, [x3, #7]
//  0x3abe10: tbz w0, #0, #0x3abe2c
//  0x3abe14: ldurb w16, [x3, #-1]
//  0x3abe18: ldurb w17, [x0, #-1]
//  0x3abe1c: and BARRIER, x17, BARRIER, lsr #2
//  0x3abe20: tst BARRIER, HEAP, lsr #32
//  0x3abe24: b.eq #0x3abe2c
//  0x3abe28: bl #0x61e08c
//  0x3abe2c: ldur x1, [FP, #-0x10]
//  0x3abe30: add x2, PP, #0xf, lsl #12
//  0x3abe34: ldr x2, [x2, #0x4e0]
//  0x3abe38: bl #0x61c9d0
//  0x3abe3c: ldur x3, [FP, #-0x10]
//  0x3abe40: ldur w1, [x3, #0xf]
//  0x3abe44: add x1, x1, HEAP, lsl #32
//  0x3abe48: cmp w1, w0
//  0x3abe4c: b.ne #0x3abe54
//  0x3abe50: mov x0, NULL
//  0x3abe54: cmp w0, w22
//  0x3abe58: b.ne #0x3abe64
//  0x3abe5c: ldr x5, [PP, #0x148]
//  0x3abe60: b #0x3abe68
//  0x3abe64: mov x5, x0
//  0x3abe68: ldur x4, [FP, #-8]
//  0x3abe6c: mov x0, x5
//  0x3abe70: stur x5, [FP, #-0x18]
//  0x3abe74: mov x2, NULL
//  0x3abe78: mov x1, NULL
//  0x3abe7c: mov x4, #0x3c
//  0x3abe80: tbz w0, #0, #0x3abe8c
//  0x3abe84: ldur x4, [x0, #-1]
//  0x3abe88: ubfx x4, x4, #0xc, #0x14
//  0x3abe8c: sub x4, x4, #0x5e
//  0x3abe90: cmp x4, #1
//  0x3abe94: b.ls #0x3abea8
//  0x3abe98: ldr x8, [PP, #0xae0]
//  0x3abe9c: add x3, PP, #0xf, lsl #12
//  0x3abea0: ldr x3, [x3, #0x4e8]
//  0x3abea4: bl #0x278d08
//  0x3abea8: ldur x0, [FP, #-0x18]
//  0x3abeac: ldur x3, [FP, #-8]
//  0x3abeb0: stur w0, [x3, #0xf]
//  0x3abeb4: ldurb w16, [x3, #-1]
//  0x3abeb8: ldurb w17, [x0, #-1]
//  0x3abebc: and BARRIER, x17, BARRIER, lsr #2
//  0x3abec0: tst BARRIER, HEAP, lsr #32
//  0x3abec4: b.eq #0x3abecc
//  0x3abec8: bl #0x61e08c
//  0x3abecc: ldur x1, [FP, #-0x10]
//  0x3abed0: ldr x2, [PP, #0x1348]
//  0x3abed4: bl #0x61c9d0
//  0x3abed8: mov x1, x0
//  0x3abedc: ldur x0, [FP, #-0x10]
//  0x3abee0: ldur w2, [x0, #0xf]
//  0x3abee4: add x2, x2, HEAP, lsl #32
//  0x3abee8: cmp w2, w1
//  0x3abeec: b.ne #0x3abef8
//  0x3abef0: mov x0, NULL
//  0x3abef4: b #0x3abefc
//  0x3abef8: mov x0, x1
//  0x3abefc: cmp w0, w22
//  0x3abf00: b.ne #0x3abf10
//  0x3abf04: add x4, PP, #0xa, lsl #12
//  0x3abf08: ldr x4, [x4, #0xdf8]
//  0x3abf0c: b #0x3abf14
//  0x3abf10: mov x4, x0
//  0x3abf14: ldur x3, [FP, #-8]
//  0x3abf18: mov x0, x4
//  0x3abf1c: stur x4, [FP, #-0x10]
//  0x3abf20: mov x2, NULL
//  0x3abf24: mov x1, NULL
//  0x3abf28: mov x4, #0x3c
//  0x3abf2c: tbz w0, #0, #0x3abf38
//  0x3abf30: ldur x4, [x0, #-1]
//  0x3abf34: ubfx x4, x4, #0xc, #0x14
//  0x3abf38: sub x4, x4, #0x5e
//  0x3abf3c: cmp x4, #1
//  0x3abf40: b.ls #0x3abf54
//  0x3abf44: ldr x8, [PP, #0x2f8]
//  0x3abf48: add x3, PP, #0xf, lsl #12
//  0x3abf4c: ldr x3, [x3, #0x4f8]
//  0x3abf50: bl #0x62a0c0
//  0x3abf54: ldur x1, [FP, #-0x10]
//  0x3abf58: bl #0x3ac138
//  0x3abf5c: mov x3, x0
//  0x3abf60: mov x2, NULL
//  0x3abf64: mov x1, NULL
//  0x3abf68: stur x3, [FP, #-0x10]
//  0x3abf6c: add x8, PP, #0xf, lsl #12
//  0x3abf70: ldr x8, [x8, #0x508]
//  0x3abf74: add x3, PP, #0xf, lsl #12
//  0x3abf78: ldr x3, [x3, #0x510]
//  0x3abf7c: bl #0x312aa0
//  0x3abf80: ldur x0, [FP, #-0x10]
//  0x3abf84: ldur x1, [FP, #-8]
//  0x3abf88: stur w0, [x1, #0xb]
//  0x3abf8c: ldurb w16, [x1, #-1]
//  0x3abf90: ldurb w17, [x0, #-1]
//  0x3abf94: and BARRIER, x17, BARRIER, lsr #2
//  0x3abf98: tst BARRIER, HEAP, lsr #32
//  0x3abf9c: b.eq #0x3abfa4
//  0x3abfa0: bl #0x61e04c
//  0x3abfa4: mov x0, NULL
//  0x3abfa8: mov SP, FP
//  0x3abfac: ldp FP, LR, [SP], #0x10
//  0x3abfb0: ret 
//  0x3abfb4: bl #0x61fa28
//  0x3abfb8: b #0x3abd90
//
dynamic Response_ctor_fromJson() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3abd68
  // frame: FP = SP // 0x3abd6c
  // frame: SP = SP - 0x18 // 0x3abd70
  x0 = x2; // 0x3abd78
  x3 = x1; // 0x3abd74
  local_m8 = x1; // 0x3abd7c
  local_m10 = x2; // 0x3abd80
  BARRIER = mem(THR, 0x38); // 0x3abd84
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3abfb4
  }
  x1 = x0; // 0x3abd90
  x2 = "code" /* pp+0x4828 */; // 0x3abd94
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData() /* 0x61c9d0 */; // 0x3abd98
  w1 = mem((local_m10), 0xf); // 0x3abda0
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3abda4
  x3 = local_m10; // 0x3abd9c
  if (w1 != w0) {
  } else {
    x0 = NULL; // 0x3abdb0
  }
  if (w0 != w22) {
    x5 = x0; // 0x3abdc4
  } else {
    x5 = xzr | 0xfffffffffffffffe; // 0x3abdbc
  }
  x0 = x5; // 0x3abdcc
  x4 = local_m8; // 0x3abdc8
  local_m18 = x5; // 0x3abdd0
  x1 = NULL; // 0x3abdd8
  x2 = NULL; // 0x3abdd4
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x3abde8
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0xf000), 0x4d0) /* Obj!? */; // 0x3abdfc
      x8 = mem(PP, 0xaf8) /* Type */; // 0x3abdf4
      sub_0x62a9f8(); // 0x3abe00
    }
  }
  x0 = local_m18; // 0x3abe04
  x3 = local_m8; // 0x3abe08
  memSet(x3, 7, w0); // 0x3abe0c
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3abe1c
    w17 = mem(x0, -1); // 0x3abe18
    x16 = w16 & 0xffffffff; // 0x3abe14
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x3abe18
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x3() /* 0x61e08c */; // 0x3abe28
    }
  }
  x1 = local_m10; // 0x3abe2c
  x2 = "msg" /* pp+0xf4e0 */; // 0x3abe34
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData() /* 0x61c9d0 */; // 0x3abe38
  w1 = mem((local_m10), 0xf); // 0x3abe40
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3abe44
  x3 = local_m10; // 0x3abe3c
  if (w1 != w0) {
  } else {
    x0 = NULL; // 0x3abe50
  }
  if (w0 != w22) {
    x5 = x0; // 0x3abe64
  } else {
    x5 = "" /* pp+0x148 */; // 0x3abe5c
  }
  x0 = x5; // 0x3abe6c
  x4 = local_m8; // 0x3abe68
  local_m18 = x5; // 0x3abe70
  x1 = NULL; // 0x3abe78
  x2 = NULL; // 0x3abe74
  x4 = 60; // 0x3abe7c
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3abe88
  }
  x4 = x4 - 0x5e; // 0x3abe8c
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0xf000), 0x4e8) /* Obj!? */; // 0x3abea0
    x8 = mem(PP, 0xae0) /* Type */; // 0x3abe98
    sub_0x278d08(); // 0x3abea4
  }
  x0 = local_m18; // 0x3abea8
  x3 = local_m8; // 0x3abeac
  memSet(x3, 0xf, w0); // 0x3abeb0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3abebc
  w16 = mem(x3, -1); // 0x3abeb4
  w17 = mem(x0, -1); // 0x3abeb8
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x3abeb4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3abeb8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x3abec8
  }
  x1 = local_m10; // 0x3abecc
  x2 = "data" /* pp+0x1348 */; // 0x3abed0
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_getValueOrData() /* 0x61c9d0 */; // 0x3abed4
  w2 = mem((local_m10), 0xf); // 0x3abee0
  x0 = local_m10; // 0x3abedc
  x1 = x0; // 0x3abed8
  x2 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3abee4
  if (w2 != w1) {
    x0 = x1; // 0x3abef8
  } else {
    x0 = NULL; // 0x3abef0
  }
  if (w0 != w22) {
    x4 = x0; // 0x3abf10
  } else {
    x4 = "{}" /* pp+0xadf8 */; // 0x3abf08
  }
  x0 = x4; // 0x3abf18
  x3 = local_m8; // 0x3abf14
  local_m10 = x4; // 0x3abf1c
  x1 = NULL; // 0x3abf24
  x2 = NULL; // 0x3abf20
  x4 = 60; // 0x3abf28
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3abf34
  }
  x4 = x4 - 0x5e; // 0x3abf38
  if (x4 <= 1) {
  } else {
    x3 = mem((PP + 0xf000), 0x4f8) /* Obj!? */; // 0x3abf4c
    x8 = mem(PP, 0x2f8) /* Type */; // 0x3abf44
    sub_0x62a0c0(); // 0x3abf50
  }
  x1 = local_m10; // 0x3abf54
  jsonDecode() /* 0x3ac138 */; // 0x3abf58
  x1 = NULL; // 0x3abf64
  x2 = NULL; // 0x3abf60
  x3 = x0; // 0x3abf5c
  local_m10 = x3; // 0x3abf68
  x3 = mem((PP + 0xf000), 0x510) /* Obj!? */; // 0x3abf78
  x8 = mem((PP + 0xf000), 0x508) /* Type */; // 0x3abf70
  sub_0x312aa0(); // 0x3abf7c
  x0 = local_m10; // 0x3abf80
  x1 = local_m8; // 0x3abf84
  memSet(x1, 0xb, w0); // 0x3abf88
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x3abf94
  w16 = mem(x1, -1); // 0x3abf8c
  w17 = mem(x0, -1); // 0x3abf90
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x3abf8c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x3abf90
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x3abfa0
  }
  SP = FP; // 0x3abfa8
  x0 = NULL; // 0x3abfa4
  // frame: FP, LR, mem(SP), 0x10 // 0x3abfac
  return;
}

// Response_toJson
// raw disassembly:
//  0x3abfd4: stp FP, LR, [SP, #-0x10]!
//  0x3abfd8: mov FP, SP
//  0x3abfdc: ldr BARRIER, [THR, #0x38]
//  0x3abfe0: cmp SP, BARRIER
//  0x3abfe4: b.ls #0x3abffc
//  0x3abfe8: ldr x1, [FP, #0x10]
//  0x3abfec: bl #0x3ac004
//  0x3abff0: mov SP, FP
//  0x3abff4: ldp FP, LR, [SP], #0x10
//  0x3abff8: ret 
//  0x3abffc: bl #0x61fa28
//  0x3ac000: b #0x3abfe8
//
dynamic Response_toJson() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3abfd4
  BARRIER = mem(THR, 0x38); // 0x3abfdc
  // frame: FP = SP // 0x3abfd8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3abffc
  }
  x1 = local_10; // 0x3abfe8
  Response_toJson() /* 0x3ac004 */; // 0x3abfec
  SP = FP; // 0x3abff0
  // frame: FP, LR, mem(SP), 0x10 // 0x3abff4
  return;
}

// Response_toJson_2
// raw disassembly:
//  0x3ac004: stp FP, LR, [SP, #-0x10]!
//  0x3ac008: mov FP, SP
//  0x3ac00c: sub SP, SP, #0x20
//  0x3ac010: mov x0, x1
//  0x3ac014: stur x1, [FP, #-8]
//  0x3ac018: ldr BARRIER, [THR, #0x38]
//  0x3ac01c: cmp SP, BARRIER
//  0x3ac020: b.ls #0x3ac104
//  0x3ac024: ldr x1, [PP, #0xbf0]
//  0x3ac028: bl #0x28cd60
//  0x3ac02c: mov x5, x0
//  0x3ac030: ldur x4, [FP, #-8]
//  0x3ac034: stur x5, [FP, #-0x10]
//  0x3ac038: ldur w0, [x4, #7]
//  0x3ac03c: add x0, x0, HEAP, lsl #32
//  0x3ac040: cmp w0, w22
//  0x3ac044: b.ne #0x3ac050
//  0x3ac048: mov x2, #-1
//  0x3ac04c: b #0x3ac060
//  0x3ac050: sbfx x1, x0, #1, #0x1f
//  0x3ac054: tbz w0, #0, #0x3ac05c
//  0x3ac058: ldur x1, [x0, #7]
//  0x3ac05c: mov x2, x1
//  0x3ac060: sbfiz x0, x2, #1, #0x1f
//  0x3ac064: cmp x2, x0, asr #1
//  0x3ac068: b.eq #0x3ac074
//  0x3ac06c: bl #0x61fba8
//  0x3ac070: stur x2, [x0, #7]
//  0x3ac074: mov x1, x5
//  0x3ac078: mov x3, x0
//  0x3ac07c: ldr x2, [PP, #0x4828]
//  0x3ac080: bl #0x6164d4
//  0x3ac084: ldur x0, [FP, #-8]
//  0x3ac088: ldur w1, [x0, #0xb]
//  0x3ac08c: add x1, x1, HEAP, lsl #32
//  0x3ac090: cmp w1, w22
//  0x3ac094: b.ne #0x3ac0b0
//  0x3ac098: ldr BARRIER, [PP, #0xbf0]
//  0x3ac09c: ldr LR, [THR, #0x90]
//  0x3ac0a0: stp LR, BARRIER, [SP]
//  0x3ac0a4: bl #0x27c0c8
//  0x3ac0a8: mov x3, x0
//  0x3ac0ac: b #0x3ac0b4
//  0x3ac0b0: mov x3, x1
//  0x3ac0b4: ldur x0, [FP, #-8]
//  0x3ac0b8: ldur x1, [FP, #-0x10]
//  0x3ac0bc: ldr x2, [PP, #0x1348]
//  0x3ac0c0: bl #0x6164d4
//  0x3ac0c4: ldur x0, [FP, #-8]
//  0x3ac0c8: ldur w1, [x0, #0xf]
//  0x3ac0cc: add x1, x1, HEAP, lsl #32
//  0x3ac0d0: cmp w1, w22
//  0x3ac0d4: b.ne #0x3ac0e0
//  0x3ac0d8: ldr x3, [PP, #0x148]
//  0x3ac0dc: b #0x3ac0e4
//  0x3ac0e0: mov x3, x1
//  0x3ac0e4: ldur x1, [FP, #-0x10]
//  0x3ac0e8: add x2, PP, #0xf, lsl #12
//  0x3ac0ec: ldr x2, [x2, #0x4e0]
//  0x3ac0f0: bl #0x6164d4
//  0x3ac0f4: ldur x0, [FP, #-0x10]
//  0x3ac0f8: mov SP, FP
//  0x3ac0fc: ldp FP, LR, [SP], #0x10
//  0x3ac100: ret 
//  0x3ac104: bl #0x61fa28
//  0x3ac108: b #0x3ac024
//
dynamic Response_toJson_2() {
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
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ac004
  // frame: FP = SP // 0x3ac008
  // frame: SP = SP - 0x20 // 0x3ac00c
  x0 = x1; // 0x3ac010
  local_m8 = x1; // 0x3ac014
  BARRIER = mem(THR, 0x38); // 0x3ac018
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ac104
  }
  x1 = mem(PP, 0xbf0) /* TypeArguments */; // 0x3ac024
  Map_factory_ctor() /* 0x28cd60 */; // 0x3ac028
  x4 = local_m8; // 0x3ac030
  x5 = x0; // 0x3ac02c
  local_m10 = x5; // 0x3ac034
  w0 = mem(x4, 7); // 0x3ac038
  x0 = ((mem(x4, 7)) & 0xffffffff) + (HEAP << 32); // 0x3ac03c
  if (w0 != w22) {
    x1 = (x0 >> 1) & 0x7fffffff; // 0x3ac050
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = mem(x0, 7); // 0x3ac058
    }
    x2 = x1; // 0x3ac05c
  } else {
    x2 = -1; // 0x3ac048
  }
  x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x3ac060
  if (x2 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x3ac06c
    memSet(x0, 7, x2); // 0x3ac070
  }
  x1 = x5; // 0x3ac074
  x2 = "code" /* pp+0x4828 */; // 0x3ac07c
  x3 = x0; // 0x3ac078
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3ac080
  w1 = mem((local_m8), 0xb); // 0x3ac088
  x0 = local_m8; // 0x3ac084
  x1 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3ac08c
  if (w1 != w22) {
    x3 = x1; // 0x3ac0b0
  } else {
    BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x3ac098
    LR = mem(THR, 0x90); // 0x3ac09c
    // frame: LR, BARRIER, mem(SP) // 0x3ac0a0
    Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x3ac0a4
    x3 = x0; // 0x3ac0a8
  }
  x0 = local_m8; // 0x3ac0b4
  x1 = local_m10; // 0x3ac0b8
  x2 = "data" /* pp+0x1348 */; // 0x3ac0bc
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3ac0c0
  w1 = mem((local_m8), 0xf); // 0x3ac0c8
  x0 = local_m8; // 0x3ac0c4
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x3ac0cc
  if (w1 != w22) {
    x3 = x1; // 0x3ac0e0
  } else {
    x3 = "" /* pp+0x148 */; // 0x3ac0d8
  }
  x1 = local_m10; // 0x3ac0e4
  x2 = "msg" /* pp+0xf4e0 */; // 0x3ac0ec
  Map_HashVMBase_MapMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashMapMixin_op_at_assign() /* 0x6164d4 */; // 0x3ac0f0
  SP = FP; // 0x3ac0f8
  x0 = local_m10; // 0x3ac0f4
  // frame: FP, LR, mem(SP), 0x10 // 0x3ac0fc
  return;
}

// soulNetError
// raw disassembly:
//  0x3ac598: stp FP, LR, [SP, #-0x10]!
//  0x3ac59c: mov FP, SP
//  0x3ac5a0: add x1, PP, #0xf, lsl #12
//  0x3ac5a4: ldr x1, [x1, #0x450]
//  0x3ac5a8: mov x2, NULL
//  0x3ac5ac: bl #0x61ec54
//  0x3ac5b0: mov SP, FP
//  0x3ac5b4: ldp FP, LR, [SP], #0x10
//  0x3ac5b8: ret 
//
dynamic soulNetError() {
  dynamic FP;
  dynamic SP;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ac598
  // frame: FP = SP // 0x3ac59c
  x1 = mem((PP + 0xf000), 0x450) /* Function */; // 0x3ac5a4
  x2 = NULL; // 0x3ac5a8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3ac5ac
  SP = FP; // 0x3ac5b0
  // frame: FP, LR, mem(SP), 0x10 // 0x3ac5b4
  return;
}

// anon_closure
// raw disassembly:
//  0x3ac5bc: stp FP, LR, [SP, #-0x10]!
//  0x3ac5c0: mov FP, SP
//  0x3ac5c4: ldr BARRIER, [THR, #0x38]
//  0x3ac5c8: cmp SP, BARRIER
//  0x3ac5cc: b.ls #0x3ac644
//  0x3ac5d0: ldr x0, [FP, #0x18]
//  0x3ac5d4: cmp w0, w22
//  0x3ac5d8: b.eq #0x3ac5ec
//  0x3ac5dc: sbfx x1, x0, #1, #0x1f
//  0x3ac5e0: tbz w0, #0, #0x3ac5e8
//  0x3ac5e4: ldur x1, [x0, #7]
//  0x3ac5e8: tbz x1, #0x3f, #0x3ac604
//  0x3ac5ec: add x1, PP, #0xc, lsl #12
//  0x3ac5f0: ldr x1, [x1, #0xb50]
//  0x3ac5f4: ldr x4, [PP, #0x4c0]
//  0x3ac5f8: bl #0x3a1dcc
//  0x3ac5fc: mov x1, x0
//  0x3ac600: b #0x3ac62c
//  0x3ac604: ldr x0, [FP, #0x10]
//  0x3ac608: cmp w0, w22
//  0x3ac60c: b.eq #0x3ac618
//  0x3ac610: ldur w1, [x0, #7]
//  0x3ac614: cbnz w1, #0x3ac628
//  0x3ac618: add x1, PP, #0xc, lsl #12
//  0x3ac61c: ldr x1, [x1, #0xb50]
//  0x3ac620: ldr x4, [PP, #0x4c0]
//  0x3ac624: bl #0x3a1dcc
//  0x3ac628: mov x1, x0
//  0x3ac62c: ldr x4, [PP, #0x4c0]
//  0x3ac630: bl #0x3ac64c
//  0x3ac634: mov x0, NULL
//  0x3ac638: mov SP, FP
//  0x3ac63c: ldp FP, LR, [SP], #0x10
//  0x3ac640: ret 
//  0x3ac644: bl #0x61fa28
//  0x3ac648: b #0x3ac5d0
//
dynamic anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3ac5bc
  BARRIER = mem(THR, 0x38); // 0x3ac5c4
  // frame: FP = SP // 0x3ac5c0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3ac644
  }
  x0 = local_18; // 0x3ac5d0
  if (w0 == w22) {
  } else {
    x1 = (x0 >> 1) & 0x7fffffff; // 0x3ac5dc
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = mem(x0, 7); // 0x3ac5e4
    }
    if (x1 & (1 << 0x3f) == 0) {
      x0 = local_10; // 0x3ac604
      if (w0 == w22) {
        x1 = "common_net_error_tips" /* pp+0xcb50 */; // 0x3ac61c
        x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3ac620
        getString() /* 0x3a1dcc */; // 0x3ac624
      } else {
        x1 = w1 & 0xffffffff; // 0x3ac610
        if (w1 != 0) {
        } else {
          // duplicated branch body (shared block 0x3ac618, joins at 0x3ac628; the same code was emitted above)
          x1 = "common_net_error_tips" /* pp+0xcb50 */; // 0x3ac61c
          x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3ac620
          getString() /* 0x3a1dcc */; // 0x3ac624
        }
      }
      x1 = x0; // 0x3ac628
    } else {
      x1 = "common_net_error_tips" /* pp+0xcb50 */; // 0x3ac5f0
      x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3ac5f4
      getString() /* 0x3a1dcc */; // 0x3ac5f8
      x1 = x0; // 0x3ac5fc
    }
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3ac62c
    NativeDialog_toast() /* 0x3ac64c */; // 0x3ac630
    SP = FP; // 0x3ac638
    x0 = NULL; // 0x3ac634
    // frame: FP, LR, mem(SP), 0x10 // 0x3ac63c
    return;
  }
}
