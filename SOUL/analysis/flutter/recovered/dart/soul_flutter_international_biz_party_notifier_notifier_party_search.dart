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

dynamic AllocationStub_PartyRoomInfo, AllocationStub__Closure, AllocationStub__Mint, BARRIER;
dynamic FP, GrowableList_addAll, GrowableList_clear, GrowableList_factory_ctor, HEAP, LR, NULL;
dynamic PP, PartyRoomInfo_ctor_fromJson, PartySearchPageState_onLoaded;
dynamic RefreshController_loadFailed, SOApiService_searchRoomList, SP;
dynamic SafeChangeNotifier_safeNotify, SlowTypeTestStub_0x61d6e4;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolate, THR;
dynamic WriteBarrierStub_x1, WriteBarrierStub_x2, local_0, local_10, local_18, local_m10;
dynamic local_m18, local_m20, local_m8, sub_0x2b15f0, sub_0x61d99c, sub_0x61e890, sub_0x61f920;
dynamic sub_0x62aa34, w0, w1, w16, w17, w2, w22, w3, w4, x0, x1, x16, x17, x2, x21, x3, x4, x5;
dynamic x8, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$party$notifier$notifier_party_search
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PartySearchNotifier_requestRoomList
// raw disassembly:
//  0x427e64: stp FP, LR, [SP, #-0x10]!
//  0x427e68: mov FP, SP
//  0x427e6c: sub SP, SP, #0x28
//  0x427e70: stur x1, [FP, #-8]
//  0x427e74: stur x2, [FP, #-0x10]
//  0x427e78: ldr BARRIER, [THR, #0x38]
//  0x427e7c: cmp SP, BARRIER
//  0x427e80: b.ls #0x427f60
//  0x427e84: mov x1, #2
//  0x427e88: bl #0x61e890
//  0x427e8c: mov x3, x0
//  0x427e90: ldur x0, [FP, #-8]
//  0x427e94: stur x3, [FP, #-0x18]
//  0x427e98: stur w0, [x3, #0xf]
//  0x427e9c: ldur x1, [FP, #-0x10]
//  0x427ea0: stur w1, [x3, #0x13]
//  0x427ea4: mov x1, NULL
//  0x427ea8: mov x2, #8
//  0x427eac: bl #0x61f920
//  0x427eb0: mov x2, x0
//  0x427eb4: add BARRIER, PP, #0x10, lsl #12
//  0x427eb8: ldr BARRIER, [BARRIER, #0xea8]
//  0x427ebc: stur w16, [x2, #0xf]
//  0x427ec0: ldur x3, [FP, #-8]
//  0x427ec4: ldur w0, [x3, #0x2f]
//  0x427ec8: add x0, x0, HEAP, lsl #32
//  0x427ecc: stur w0, [x2, #0x13]
//  0x427ed0: add BARRIER, PP, #0x10, lsl #12
//  0x427ed4: ldr BARRIER, [BARRIER, #0xeb0]
//  0x427ed8: stur w16, [x2, #0x17]
//  0x427edc: ldur x4, [x3, #0x33]
//  0x427ee0: sbfiz x0, x4, #1, #0x1f
//  0x427ee4: cmp x4, x0, asr #1
//  0x427ee8: b.eq #0x427ef4
//  0x427eec: bl #0x61fba8
//  0x427ef0: stur x4, [x0, #7]
//  0x427ef4: stur w0, [x2, #0x1b]
//  0x427ef8: str x2, [SP]
//  0x427efc: bl #0x2ad854
//  0x427f00: ldur x0, [FP, #-8]
//  0x427f04: ldur w3, [x0, #0x2f]
//  0x427f08: add x3, x3, HEAP, lsl #32
//  0x427f0c: stur x3, [FP, #-0x10]
//  0x427f10: ldur x4, [x0, #0x33]
//  0x427f14: ldur x2, [FP, #-0x18]
//  0x427f18: stur x4, [FP, #-0x20]
//  0x427f1c: add x1, PP, #0x10, lsl #12
//  0x427f20: ldr x1, [x1, #0xeb8]
//  0x427f24: bl #0x61ec54
//  0x427f28: ldur x2, [FP, #-0x18]
//  0x427f2c: add x1, PP, #0x10, lsl #12
//  0x427f30: ldr x1, [x1, #0xec0]
//  0x427f34: stur x0, [FP, #-8]
//  0x427f38: bl #0x61ec54
//  0x427f3c: ldur x1, [FP, #-0x10]
//  0x427f40: ldur x2, [FP, #-0x20]
//  0x427f44: ldur x3, [FP, #-8]
//  0x427f48: mov x5, x0
//  0x427f4c: bl #0x427f68
//  0x427f50: mov x0, NULL
//  0x427f54: mov SP, FP
//  0x427f58: ldp FP, LR, [SP], #0x10
//  0x427f5c: ret 
//  0x427f60: bl #0x61fa28
//  0x427f64: b #0x427e84
//
dynamic PartySearchNotifier_requestRoomList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x427e64
  // frame: FP = SP // 0x427e68
  // frame: SP = SP - 0x28 // 0x427e6c
  local_m8 = x1; // 0x427e70
  local_m10 = x2; // 0x427e74
  BARRIER = mem(THR, 0x38); // 0x427e78
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x427f60
  }
  x1 = 2; // 0x427e84
  sub_0x61e890(); // 0x427e88
  x0 = local_m8; // 0x427e90
  x3 = x0; // 0x427e8c
  local_m18 = x3; // 0x427e94
  memSet(x3, 0xf, w0); // 0x427e98
  x1 = local_m10; // 0x427e9c
  memSet(x3, 0x13, w1); // 0x427ea0
  x1 = NULL; // 0x427ea4
  x2 = 8; // 0x427ea8
  sub_0x61f920(); // 0x427eac
  BARRIER = "request room list: " /* pp+0x10ea8 */; // 0x427eb8
  x2 = x0; // 0x427eb0
  memSet(x2, 0xf, w16); // 0x427ebc
  w0 = mem((local_m8), 0x2f); // 0x427ec4
  x0 = ((mem((local_m8), 0x2f)) & 0xffffffff) + (HEAP << 32); // 0x427ec8
  x3 = local_m8; // 0x427ec0
  memSet(x2, 0x13, w0); // 0x427ecc
  BARRIER = " | " /* pp+0x10eb0 */; // 0x427ed4
  memSet(x2, 0x17, w16); // 0x427ed8
  x0 = (((mem(x3, 0x33)) & 0x7fffffff) << 1) /* signed */; // 0x427ee0
  x4 = mem(x3, 0x33); // 0x427edc
  if (x4 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x427eec
    memSet(x0, 7, x4); // 0x427ef0
  }
  memSet(x2, 0x1b, w0); // 0x427ef4
  local_0 = x2; // 0x427ef8
  StringBase_interpolate() /* 0x2ad854 */; // 0x427efc
  w3 = mem((local_m8), 0x2f); // 0x427f04
  x0 = local_m8; // 0x427f00
  x3 = ((mem((local_m8), 0x2f)) & 0xffffffff) + (HEAP << 32); // 0x427f08
  local_m10 = x3; // 0x427f0c
  x2 = local_m18; // 0x427f14
  x4 = mem(x0, 0x33); // 0x427f10
  local_m20 = x4; // 0x427f18
  x1 = mem((PP + 0x10000), 0xeb8) /* Function */; // 0x427f20
  AllocationStub__Closure() /* 0x61ec54 */; // 0x427f24
  x1 = mem((PP + 0x10000), 0xec0) /* Function */; // 0x427f30
  x2 = local_m18; // 0x427f28
  local_m8 = x0; // 0x427f34
  AllocationStub__Closure() /* 0x61ec54 */; // 0x427f38
  x1 = local_m10; // 0x427f3c
  x2 = local_m20; // 0x427f40
  x3 = local_m8; // 0x427f44
  x5 = x0; // 0x427f48
  SOApiService_searchRoomList() /* 0x427f68 */; // 0x427f4c
  SP = FP; // 0x427f54
  x0 = NULL; // 0x427f50
  // frame: FP, LR, mem(SP), 0x10 // 0x427f58
  return;
}

// PartySearchNotifier_anon_closure
// raw disassembly:
//  0x428090: stp FP, LR, [SP, #-0x10]!
//  0x428094: mov FP, SP
//  0x428098: sub SP, SP, #8
//  0x42809c: ldr x0, [FP, #0x10]
//  0x4280a0: ldur w2, [x0, #0x17]
//  0x4280a4: add x2, x2, HEAP, lsl #32
//  0x4280a8: stur x2, [FP, #-8]
//  0x4280ac: ldr BARRIER, [THR, #0x38]
//  0x4280b0: cmp SP, BARRIER
//  0x4280b4: b.ls #0x428104
//  0x4280b8: ldur w0, [x2, #0x13]
//  0x4280bc: add x0, x0, HEAP, lsl #32
//  0x4280c0: ldur w1, [x0, #0x17]
//  0x4280c4: add x1, x1, HEAP, lsl #32
//  0x4280c8: ldur w0, [x1, #0x17]
//  0x4280cc: add x0, x0, HEAP, lsl #32
//  0x4280d0: mov x1, x0
//  0x4280d4: bl #0x3adbb4
//  0x4280d8: ldur x0, [FP, #-8]
//  0x4280dc: ldur w1, [x0, #0xf]
//  0x4280e0: add x1, x1, HEAP, lsl #32
//  0x4280e4: add x0, PP, #0x10, lsl #12
//  0x4280e8: ldr x0, [x0, #0xec8]
//  0x4280ec: stur w0, [x1, #0x2b]
//  0x4280f0: bl #0x3ac980
//  0x4280f4: mov x0, NULL
//  0x4280f8: mov SP, FP
//  0x4280fc: ldp FP, LR, [SP], #0x10
//  0x428100: ret 
//  0x428104: bl #0x61fa28
//  0x428108: b #0x4280b8
//
dynamic PartySearchNotifier_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x428090
  // frame: FP = SP // 0x428094
  // frame: SP = SP - 8 // 0x428098
  w2 = mem((local_10), 0x17); // 0x4280a0
  x0 = local_10; // 0x42809c
  x2 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4280a4
  local_m8 = x2; // 0x4280a8
  BARRIER = mem(THR, 0x38); // 0x4280ac
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x428104
  }
  w0 = mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4280c8
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4280c0
  x0 = (mem((((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff; // 0x4280c8
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4280c4
  x0 = x0 + (HEAP << 32); // 0x4280cc
  x1 = x0 + (HEAP << 32); // 0x4280d0
  RefreshController_loadFailed() /* 0x3adbb4 */; // 0x4280d4
  w1 = mem((local_m8), 0xf); // 0x4280dc
  x0 = mem((PP + 0x10000), 0xec8) /* Obj!SearchState@1216e  */; // 0x4280e8
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4280e0
  memSet(x1, 0x2b, w0); // 0x4280ec
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x4280f0
  SP = FP; // 0x4280f8
  x0 = NULL; // 0x4280f4
  // frame: FP, LR, mem(SP), 0x10 // 0x4280fc
  return;
}

// PartySearchNotifier_anon_closure_2
// raw disassembly:
//  0x428178: stp FP, LR, [SP, #-0x10]!
//  0x42817c: mov FP, SP
//  0x428180: sub SP, SP, #0x30
//  0x428184: ldr x0, [FP, #0x18]
//  0x428188: ldur w3, [x0, #0x17]
//  0x42818c: add x3, x3, HEAP, lsl #32
//  0x428190: stur x3, [FP, #-0x10]
//  0x428194: ldr BARRIER, [THR, #0x38]
//  0x428198: cmp SP, BARRIER
//  0x42819c: b.ls #0x42840c
//  0x4281a0: ldur w4, [x3, #0xf]
//  0x4281a4: add x4, x4, HEAP, lsl #32
//  0x4281a8: ldr x5, [FP, #0x10]
//  0x4281ac: stur x4, [FP, #-8]
//  0x4281b0: ldur x0, [x5, #-1]
//  0x4281b4: ubfx x0, x0, #0xc, #0x14
//  0x4281b8: mov x1, x5
//  0x4281bc: add x2, PP, #0xf, lsl #12
//  0x4281c0: ldr x2, [x2, #0x368]
//  0x4281c4: sub LR, x0, #1, lsl #12
//  0x4281c8: ldr LR, [x21, LR, lsl #3]
//  0x4281cc: blr LR
//  0x4281d0: cmp w0, w22
//  0x4281d4: b.ne #0x4281e0
//  0x4281d8: orr x5, xzr, #0xfffffffffffffffe
//  0x4281dc: b #0x4281e4
//  0x4281e0: mov x5, x0
//  0x4281e4: ldr x4, [FP, #0x10]
//  0x4281e8: ldur x3, [FP, #-8]
//  0x4281ec: mov x0, x5
//  0x4281f0: stur x5, [FP, #-0x18]
//  0x4281f4: mov x2, NULL
//  0x4281f8: mov x1, NULL
//  0x4281fc: tbz w0, #0, #0x428224
//  0x428200: ldur x4, [x0, #-1]
//  0x428204: ubfx x4, x4, #0xc, #0x14
//  0x428208: sub x4, x4, #0x3c
//  0x42820c: cmp x4, #1
//  0x428210: b.ls #0x428224
//  0x428214: ldr x8, [PP, #0x1170]
//  0x428218: add x3, PP, #0x10, lsl #12
//  0x42821c: ldr x3, [x3, #0xed0]
//  0x428220: bl #0x62aa34
//  0x428224: ldur x0, [FP, #-0x18]
//  0x428228: sbfx x1, x0, #1, #0x1f
//  0x42822c: tbz w0, #0, #0x428234
//  0x428230: ldur x1, [x0, #7]
//  0x428234: ldur x0, [FP, #-8]
//  0x428238: stur x1, [x0, #0x33]
//  0x42823c: ldr x1, [FP, #0x10]
//  0x428240: ldur x0, [x1, #-1]
//  0x428244: ubfx x0, x0, #0xc, #0x14
//  0x428248: add x2, PP, #0xf, lsl #12
//  0x42824c: ldr x2, [x2, #0x380]
//  0x428250: sub LR, x0, #1, lsl #12
//  0x428254: ldr LR, [x21, LR, lsl #3]
//  0x428258: blr LR
//  0x42825c: cmp w0, w22
//  0x428260: b.ne #0x428278
//  0x428264: mov x1, NULL
//  0x428268: mov x2, #0
//  0x42826c: bl #0x277268
//  0x428270: mov x3, x0
//  0x428274: b #0x42827c
//  0x428278: mov x3, x0
//  0x42827c: mov x0, x3
//  0x428280: stur x3, [FP, #-8]
//  0x428284: mov x2, NULL
//  0x428288: mov x1, NULL
//  0x42828c: mov x4, #0x3c
//  0x428290: tbz w0, #0, #0x42829c
//  0x428294: ldur x4, [x0, #-1]
//  0x428298: ubfx x4, x4, #0xc, #0x14
//  0x42829c: sub x4, x4, #0x5a
//  0x4282a0: cmp x4, #2
//  0x4282a4: b.ls #0x4282d8
//  0x4282a8: sub x4, x4, #0x16
//  0x4282ac: cmp x4, #0x37
//  0x4282b0: b.ls #0x4282d8
//  0x4282b4: cmp x4, #0xebc
//  0x4282b8: b.eq #0x4282d8
//  0x4282bc: sub x4, x4, #0xedd
//  0x4282c0: cmp x4, #4
//  0x4282c4: b.ls #0x4282d8
//  0x4282c8: ldr x8, [PP, #0x3b80]
//  0x4282cc: add x3, PP, #0x10, lsl #12
//  0x4282d0: ldr x3, [x3, #0xee0]
//  0x4282d4: bl #0x61d6e4
//  0x4282d8: ldur x2, [FP, #-8]
//  0x4282dc: ldur x0, [x2, #-1]
//  0x4282e0: ubfx x0, x0, #0xc, #0x14
//  0x4282e4: mov x1, x2
//  0x4282e8: mov x17, #0x89aa
//  0x4282ec: add LR, x0, x17
//  0x4282f0: ldr LR, [x21, LR, lsl #3]
//  0x4282f4: blr LR
//  0x4282f8: tbnz w0, #4, #0x42836c
//  0x4282fc: ldur x3, [FP, #-0x10]
//  0x428300: ldur x0, [FP, #-8]
//  0x428304: ldur w1, [x3, #0xf]
//  0x428308: add x1, x1, HEAP, lsl #32
//  0x42830c: ldur w4, [x1, #0x3b]
//  0x428310: add x4, x4, HEAP, lsl #32
//  0x428314: stur x4, [FP, #-0x18]
//  0x428318: add x1, PP, #0x10, lsl #12
//  0x42831c: ldr x1, [x1, #0xef0]
//  0x428320: mov x2, NULL
//  0x428324: bl #0x61ec54
//  0x428328: mov x1, x0
//  0x42832c: ldur x0, [FP, #-8]
//  0x428330: ldur x2, [x0, #-1]
//  0x428334: ubfx x2, x2, #0xc, #0x14
//  0x428338: add BARRIER, PP, #0xb, lsl #12
//  0x42833c: ldr BARRIER, [BARRIER, #0x7c0]
//  0x428340: stp x0, BARRIER, [SP, #8]
//  0x428344: str x1, [SP]
//  0x428348: mov x0, x2
//  0x42834c: ldr x4, [PP, #0x58]
//  0x428350: mov x17, #0x86d9
//  0x428354: add LR, x0, x17
//  0x428358: ldr LR, [x21, LR, lsl #3]
//  0x42835c: blr LR
//  0x428360: ldur x1, [FP, #-0x18]
//  0x428364: mov x2, x0
//  0x428368: bl #0x2ce4e8
//  0x42836c: ldur x0, [FP, #-0x10]
//  0x428370: ldur w1, [x0, #0x13]
//  0x428374: add x1, x1, HEAP, lsl #32
//  0x428378: ldur w2, [x0, #0xf]
//  0x42837c: add x2, x2, HEAP, lsl #32
//  0x428380: ldur x3, [x2, #0x33]
//  0x428384: tbnz x3, #0x3f, #0x428390
//  0x428388: add x2, NULL, #0x30
//  0x42838c: b #0x428394
//  0x428390: add x2, NULL, #0x20
//  0x428394: ldur w3, [x1, #0x17]
//  0x428398: add x3, x3, HEAP, lsl #32
//  0x42839c: mov x1, x3
//  0x4283a0: mov x3, x2
//  0x4283a4: add x2, NULL, #0x20
//  0x4283a8: bl #0x42810c
//  0x4283ac: ldur x0, [FP, #-0x10]
//  0x4283b0: ldur w1, [x0, #0xf]
//  0x4283b4: add x1, x1, HEAP, lsl #32
//  0x4283b8: ldur w0, [x1, #0x3b]
//  0x4283bc: add x0, x0, HEAP, lsl #32
//  0x4283c0: ldur w2, [x0, #0xb]
//  0x4283c4: cbnz w2, #0x4283d4
//  0x4283c8: add x0, PP, #0x10, lsl #12
//  0x4283cc: ldr x0, [x0, #0xef8]
//  0x4283d0: b #0x4283dc
//  0x4283d4: add x0, PP, #0x10, lsl #12
//  0x4283d8: ldr x0, [x0, #0xec8]
//  0x4283dc: stur w0, [x1, #0x2b]
//  0x4283e0: ldurb w16, [x1, #-1]
//  0x4283e4: ldurb w17, [x0, #-1]
//  0x4283e8: and BARRIER, x17, BARRIER, lsr #2
//  0x4283ec: tst BARRIER, HEAP, lsr #32
//  0x4283f0: b.eq #0x4283f8
//  0x4283f4: bl #0x61e04c
//  0x4283f8: bl #0x3ac980
//  0x4283fc: mov x0, NULL
//  0x428400: mov SP, FP
//  0x428404: ldp FP, LR, [SP], #0x10
//  0x428408: ret 
//  0x42840c: bl #0x61fa28
//  0x428410: b #0x4281a0
//
dynamic PartySearchNotifier_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w2;
  dynamic w3;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x428178
  // frame: FP = SP // 0x42817c
  // frame: SP = SP - 0x30 // 0x428180
  w3 = mem((local_18), 0x17); // 0x428188
  x0 = local_18; // 0x428184
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x42818c
  local_m10 = x3; // 0x428190
  BARRIER = mem(THR, 0x38); // 0x428194
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42840c
  }
  x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x4281a4
  x5 = local_10; // 0x4281a8
  local_m8 = x4; // 0x4281ac
  LR = mem(x21, ((((mem(x5, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x4281c8
  x0 = ((mem(x5, -1)) >> 12) & 0xfffff; // 0x4281b4
  x1 = x5; // 0x4281b8
  x2 = "cursor" /* pp+0xf368 */; // 0x4281c0
  callIndirect(LR); // 0x4281cc
  if (w0 != w22) {
    x5 = x0; // 0x4281e0
  } else {
    x5 = xzr | 0xfffffffffffffffe; // 0x4281d8
  }
  x0 = x5; // 0x4281ec
  x3 = local_m8; // 0x4281e8
  x4 = local_10; // 0x4281e4
  local_m18 = x5; // 0x4281f0
  x1 = NULL; // 0x4281f8
  x2 = NULL; // 0x4281f4
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x428208
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x10000), 0xed0) /* Obj!? */; // 0x42821c
      x8 = mem(PP, 0x1170) /* Type */; // 0x428214
      sub_0x62aa34(); // 0x428220
    }
  }
  x0 = local_m18; // 0x428224
  x1 = ((local_m18) >> 1) & 0x7fffffff; // 0x428228
  if (x0 & (1 << 0) == 0) {
  } else {
    x1 = mem(x0, 7); // 0x428230
  }
  x0 = local_m8; // 0x428234
  memSet(x0, 0x33, x1); // 0x428238
  LR = mem(x21, ((((mem((local_10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x428254
  x0 = ((mem((local_10), -1)) >> 12) & 0xfffff; // 0x428244
  x1 = local_10; // 0x42823c
  x2 = "list" /* pp+0xf380 */; // 0x42824c
  callIndirect(LR); // 0x428258
  if (w0 != w22) {
    x3 = x0; // 0x428278
  } else {
    x1 = NULL; // 0x428264
    x2 = 0; // 0x428268
    GrowableList_factory_ctor() /* 0x277268 */; // 0x42826c
    x3 = x0; // 0x428270
  }
  x0 = x3; // 0x42827c
  local_m8 = x3; // 0x428280
  x1 = NULL; // 0x428288
  x2 = NULL; // 0x428284
  x4 = 60; // 0x42828c
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x428298
  }
  x4 = x4 - 0x5a; // 0x42829c
  if (x4 <= 2) {
  } else {
    x4 = x4 - 0x16; // 0x4282a8
    if (x4 <= 0x37) {
    } else {
      if (x4 == 0xebc) {
      } else {
        x4 = x4 - 0xedd; // 0x4282bc
        if (x4 <= 4) {
        } else {
          x3 = mem((PP + 0x10000), 0xee0) /* Obj!? */; // 0x4282d0
          x8 = mem(PP, 0x3b80) /* Type */; // 0x4282c8
          SlowTypeTestStub_0x61d6e4() /* 0x61d6e4 */; // 0x4282d4
        }
      }
    }
  }
  LR = mem(x21, ((((mem((local_m8), (-1)) >> 12) & 0xfffff) + x17) << 3)); // 0x4282f0
  x0 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x4282e0
  x1 = local_m8; // 0x4282e4
  x17 = 35242; // 0x4282e8
  x2 = local_m8; // 0x4282d8
  callIndirect(LR); // 0x4282f4
  if (x0 & (1 << 4) != 0) {
  } else {
    w1 = mem((local_m10), 0xf); // 0x428304
    w4 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x3b); // 0x42830c
    x0 = local_m8; // 0x428300
    x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x428308
    x3 = local_m10; // 0x4282fc
    x4 = ((mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x3b)) & 0xffffffff) + (HEAP << 32); // 0x428310
    local_m18 = x4; // 0x428314
    x1 = mem((PP + 0x10000), 0xef0) /* Function */; // 0x42831c
    x2 = NULL; // 0x428320
    AllocationStub__Closure() /* 0x61ec54 */; // 0x428324
    BARRIER = mem((PP + 0xb000), 0x7c0) /* TypeArguments */; // 0x42833c
    x0 = local_m8; // 0x42832c
    x1 = x0; // 0x428328
    x2 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x428334
    // frame: x0, BARRIER, mem(SP, 8) // 0x428340
    local_0 = x1; // 0x428344
    LR = mem(x21, ((x0 + x17) << 3)); // 0x428358
    x0 = x2; // 0x428348
    x17 = 34521; // 0x428350
    x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x42834c
    callIndirect(LR); // 0x42835c
    x1 = local_m18; // 0x428360
    x2 = x0; // 0x428364
    GrowableList_addAll() /* 0x2ce4e8 */; // 0x428368
  }
  w1 = mem((local_m10), 0x13); // 0x428370
  w2 = mem((local_m10), 0xf); // 0x428378
  x0 = local_m10; // 0x42836c
  x1 = ((mem((local_m10), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x428374
  x2 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42837c
  x3 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x33); // 0x428380
  if (x3 & (1 << 0x3f) != 0) {
    x2 = NULL + 0x20; // 0x428390
  } else {
    x2 = NULL + 0x30; // 0x428388
  }
  x1 = (w3 & 0xffffffff) + (HEAP << 32); // 0x42839c
  x3 = x2; // 0x4283a0
  x2 = NULL + 0x20; // 0x4283a4
  PartySearchPageState_onLoaded() /* 0x42810c */; // 0x4283a8
  w0 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x3b); // 0x4283b8
  w1 = mem((local_m10), 0xf); // 0x4283b0
  x0 = ((mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x3b)) & 0xffffffff) + (HEAP << 32); // 0x4283bc
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4283b4
  w2 = mem(x0, 0xb); // 0x4283c0
  x2 = (mem(x0, 0xb)) & 0xffffffff; // 0x4283c0
  if (w2 != 0) {
    x0 = mem((PP + 0x10000), 0xec8) /* Obj!SearchState@1216e  */; // 0x4283d8
  } else {
    x0 = mem((PP + 0x10000), 0xef8) /* Obj!SearchState@1216f  */; // 0x4283cc
  }
  memSet(x1, 0x2b, w0); // 0x4283dc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4283e8
  w16 = mem(x1, -1); // 0x4283e0
  w17 = mem(x0, -1); // 0x4283e4
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4283e0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4283e4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4283f4
  }
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x4283f8
  SP = FP; // 0x428400
  x0 = NULL; // 0x4283fc
  // frame: FP, LR, mem(SP), 0x10 // 0x428404
  return;
}

// PartySearchNotifier_anon_closure_3
// raw disassembly:
//  0x428414: stp FP, LR, [SP, #-0x10]!
//  0x428418: mov FP, SP
//  0x42841c: sub SP, SP, #8
//  0x428420: ldr BARRIER, [THR, #0x38]
//  0x428424: cmp SP, BARRIER
//  0x428428: b.ls #0x42846c
//  0x42842c: ldr x0, [FP, #0x10]
//  0x428430: mov x2, NULL
//  0x428434: mov x1, NULL
//  0x428438: ldr x8, [PP, #0x3cd0]
//  0x42843c: add x3, PP, #0x10, lsl #12
//  0x428440: ldr x3, [x3, #0xf00]
//  0x428444: bl #0x2b15f0
//  0x428448: bl #0x429078
//  0x42844c: mov x1, x0
//  0x428450: ldr x2, [FP, #0x10]
//  0x428454: stur x0, [FP, #-8]
//  0x428458: bl #0x428474
//  0x42845c: ldur x0, [FP, #-8]
//  0x428460: mov SP, FP
//  0x428464: ldp FP, LR, [SP], #0x10
//  0x428468: ret 
//  0x42846c: bl #0x61fa28
//  0x428470: b #0x42842c
//
dynamic PartySearchNotifier_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x428414
  BARRIER = mem(THR, 0x38); // 0x428420
  // frame: FP = SP // 0x428418
  // frame: SP = SP - 8 // 0x42841c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42846c
  }
  x0 = local_10; // 0x42842c
  x1 = NULL; // 0x428434
  x2 = NULL; // 0x428430
  x3 = mem((PP + 0x10000), 0xf00) /* Obj!? */; // 0x428440
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x428438
  sub_0x2b15f0(); // 0x428444
  AllocationStub_PartyRoomInfo() /* 0x429078 */; // 0x428448
  x1 = x0; // 0x42844c
  x2 = local_10; // 0x428450
  local_m8 = x0; // 0x428454
  PartyRoomInfo_ctor_fromJson() /* 0x428474 */; // 0x428458
  SP = FP; // 0x428460
  x0 = local_m8; // 0x42845c
  // frame: FP, LR, mem(SP), 0x10 // 0x428464
  return;
}

// PartySearchNotifier_searchRoom
// raw disassembly:
//  0x429358: stp FP, LR, [SP, #-0x10]!
//  0x42935c: mov FP, SP
//  0x429360: sub SP, SP, #0x20
//  0x429364: mov x4, x1
//  0x429368: mov x0, x3
//  0x42936c: stur x3, [FP, #-0x18]
//  0x429370: mov x3, x2
//  0x429374: stur x1, [FP, #-8]
//  0x429378: stur x2, [FP, #-0x10]
//  0x42937c: ldr BARRIER, [THR, #0x38]
//  0x429380: cmp SP, BARRIER
//  0x429384: b.ls #0x429418
//  0x429388: mov x1, NULL
//  0x42938c: mov x2, #4
//  0x429390: bl #0x61f920
//  0x429394: add BARRIER, PP, #0x11, lsl #12
//  0x429398: ldr BARRIER, [BARRIER, #0xd8]
//  0x42939c: stur w16, [x0, #0xf]
//  0x4293a0: ldur x1, [FP, #-0x10]
//  0x4293a4: stur w1, [x0, #0x13]
//  0x4293a8: str x0, [SP]
//  0x4293ac: bl #0x2ad854
//  0x4293b0: ldur x2, [FP, #-8]
//  0x4293b4: add x0, PP, #0x10, lsl #12
//  0x4293b8: ldr x0, [x0, #0xec8]
//  0x4293bc: stur w0, [x2, #0x2b]
//  0x4293c0: ldur x0, [FP, #-0x10]
//  0x4293c4: stur w0, [x2, #0x2f]
//  0x4293c8: ldurb w16, [x2, #-1]
//  0x4293cc: ldurb w17, [x0, #-1]
//  0x4293d0: and BARRIER, x17, BARRIER, lsr #2
//  0x4293d4: tst BARRIER, HEAP, lsr #32
//  0x4293d8: b.eq #0x4293e0
//  0x4293dc: bl #0x61e06c
//  0x4293e0: mov x0, #-1
//  0x4293e4: stur x0, [x2, #0x33]
//  0x4293e8: ldur w1, [x2, #0x3b]
//  0x4293ec: add x1, x1, HEAP, lsl #32
//  0x4293f0: bl #0x2b3608
//  0x4293f4: ldur x1, [FP, #-8]
//  0x4293f8: bl #0x3ac980
//  0x4293fc: ldur x1, [FP, #-8]
//  0x429400: ldur x2, [FP, #-0x18]
//  0x429404: bl #0x427e64
//  0x429408: mov x0, NULL
//  0x42940c: mov SP, FP
//  0x429410: ldp FP, LR, [SP], #0x10
//  0x429414: ret 
//  0x429418: bl #0x61fa28
//  0x42941c: b #0x429388
//
dynamic PartySearchNotifier_searchRoom() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x429358
  // frame: FP = SP // 0x42935c
  // frame: SP = SP - 0x20 // 0x429360
  x0 = x3; // 0x429368
  x4 = x1; // 0x429364
  local_m18 = x3; // 0x42936c
  x3 = x2; // 0x429370
  local_m8 = x1; // 0x429374
  local_m10 = x2; // 0x429378
  BARRIER = mem(THR, 0x38); // 0x42937c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x429418
  }
  x1 = NULL; // 0x429388
  x2 = 4; // 0x42938c
  sub_0x61f920(); // 0x429390
  BARRIER = "search room: " /* pp+0x110d8 */; // 0x429398
  memSet(x0, 0xf, w16); // 0x42939c
  x1 = local_m10; // 0x4293a0
  memSet(x0, 0x13, w1); // 0x4293a4
  local_0 = x0; // 0x4293a8
  StringBase_interpolate() /* 0x2ad854 */; // 0x4293ac
  x0 = mem((PP + 0x10000), 0xec8) /* Obj!SearchState@1216e  */; // 0x4293b8
  x2 = local_m8; // 0x4293b0
  memSet(x2, 0x2b, w0); // 0x4293bc
  x0 = local_m10; // 0x4293c0
  memSet(x2, 0x2f, w0); // 0x4293c4
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4293d0
  w16 = mem(x2, -1); // 0x4293c8
  w17 = mem(x0, -1); // 0x4293cc
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x4293c8
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4293cc
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x4293dc
  }
  x0 = -1; // 0x4293e0
  memSet(x2, 0x33, x0); // 0x4293e4
  w1 = mem(x2, 0x3b); // 0x4293e8
  x1 = ((mem(x2, 0x3b)) & 0xffffffff) + (HEAP << 32); // 0x4293ec
  GrowableList_clear() /* 0x2b3608 */; // 0x4293f0
  x1 = local_m8; // 0x4293f4
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x4293f8
  x1 = local_m8; // 0x4293fc
  x2 = local_m18; // 0x429400
  PartySearchNotifier_requestRoomList() /* 0x427e64 */; // 0x429404
  SP = FP; // 0x42940c
  x0 = NULL; // 0x429408
  // frame: FP, LR, mem(SP), 0x10 // 0x429410
  return;
}

// PartySearchNotifier_ctor
// raw disassembly:
//  0x4c47fc: stp FP, LR, [SP, #-0x10]!
//  0x4c4800: mov FP, SP
//  0x4c4804: sub SP, SP, #8
//  0x4c4808: add x3, PP, #0xb, lsl #12
//  0x4c480c: ldr x3, [x3, #0x7b8]
//  0x4c4810: ldr x2, [PP, #0x148]
//  0x4c4814: mov x0, #-1
//  0x4c4818: mov x4, x1
//  0x4c481c: stur x1, [FP, #-8]
//  0x4c4820: ldr BARRIER, [THR, #0x38]
//  0x4c4824: cmp SP, BARRIER
//  0x4c4828: b.ls #0x4c48c8
//  0x4c482c: stur w3, [x4, #0x2b]
//  0x4c4830: stur w2, [x4, #0x2f]
//  0x4c4834: stur x0, [x4, #0x33]
//  0x4c4838: add x1, PP, #0xb, lsl #12
//  0x4c483c: ldr x1, [x1, #0x7c0]
//  0x4c4840: mov x2, #0
//  0x4c4844: bl #0x277268
//  0x4c4848: ldur x1, [FP, #-8]
//  0x4c484c: stur w0, [x1, #0x3b]
//  0x4c4850: ldurb w16, [x1, #-1]
//  0x4c4854: ldurb w17, [x0, #-1]
//  0x4c4858: and BARRIER, x17, BARRIER, lsr #2
//  0x4c485c: tst BARRIER, HEAP, lsr #32
//  0x4c4860: b.eq #0x4c4868
//  0x4c4864: bl #0x61e04c
//  0x4c4868: mov x0, #-1
//  0x4c486c: stur x0, [x1, #0x23]
//  0x4c4870: stur xzr, [x1, #7]
//  0x4c4874: stur xzr, [x1, #0x13]
//  0x4c4878: stur xzr, [x1, #0x1b]
//  0x4c487c: ldr x0, [THR, #0x68]
//  0x4c4880: ldr x0, [x0, #0xb90]
//  0x4c4884: ldr BARRIER, [PP, #0x40]
//  0x4c4888: cmp w0, w16
//  0x4c488c: b.ne #0x4c4898
//  0x4c4890: ldr x2, [PP, #0x3608]
//  0x4c4894: bl #0x61d99c
//  0x4c4898: ldur x1, [FP, #-8]
//  0x4c489c: stur w0, [x1, #0xf]
//  0x4c48a0: ldurb w16, [x1, #-1]
//  0x4c48a4: ldurb w17, [x0, #-1]
//  0x4c48a8: and BARRIER, x17, BARRIER, lsr #2
//  0x4c48ac: tst BARRIER, HEAP, lsr #32
//  0x4c48b0: b.eq #0x4c48b8
//  0x4c48b4: bl #0x61e04c
//  0x4c48b8: mov x0, NULL
//  0x4c48bc: mov SP, FP
//  0x4c48c0: ldp FP, LR, [SP], #0x10
//  0x4c48c4: ret 
//  0x4c48c8: bl #0x61fa28
//  0x4c48cc: b #0x4c482c
//
dynamic PartySearchNotifier_ctor() {
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
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c47fc
  // frame: FP = SP // 0x4c4800
  // frame: SP = SP - 8 // 0x4c4804
  x0 = -1; // 0x4c4814
  x2 = "" /* pp+0x148 */; // 0x4c4810
  x3 = mem((PP + 0xb000), 0x7b8) /* Obj!SearchState@12170  */; // 0x4c480c
  x4 = x1; // 0x4c4818
  local_m8 = x1; // 0x4c481c
  BARRIER = mem(THR, 0x38); // 0x4c4820
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c48c8
  }
  memSet(x4, 0x2b, w3); // 0x4c482c
  memSet(x4, 0x2f, w2); // 0x4c4830
  memSet(x4, 0x33, x0); // 0x4c4834
  x1 = mem((PP + 0xb000), 0x7c0) /* TypeArguments */; // 0x4c483c
  x2 = 0; // 0x4c4840
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c4844
  x1 = local_m8; // 0x4c4848
  memSet(x1, 0x3b, w0); // 0x4c484c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c4858
  w16 = mem(x1, -1); // 0x4c4850
  w17 = mem(x0, -1); // 0x4c4854
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c4850
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c4854
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c4864
  }
  x0 = -1; // 0x4c4868
  memSet(x1, 0x23, x0); // 0x4c486c
  memSet(x1, 7, xzr); // 0x4c4870
  memSet(x1, 0x13, xzr); // 0x4c4874
  memSet(x1, 0x1b, xzr); // 0x4c4878
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4c4884
  x0 = mem((mem(THR, 0x68)), 0xb90); // 0x4c4880
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3608) /* Field */; // 0x4c4890
    sub_0x61d99c(); // 0x4c4894
  }
  x1 = local_m8; // 0x4c4898
  memSet(x1, 0xf, w0); // 0x4c489c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c48a8
  w16 = mem(x1, -1); // 0x4c48a0
  w17 = mem(x0, -1); // 0x4c48a4
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c48a0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c48a4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c48b4
  }
  SP = FP; // 0x4c48bc
  x0 = NULL; // 0x4c48b8
  // frame: FP, LR, mem(SP), 0x10 // 0x4c48c0
  return;
}

// SearchState_enumToString
// raw disassembly:
//  0x4aea6c: stp FP, LR, [SP, #-0x10]!
//  0x4aea70: mov FP, SP
//  0x4aea74: sub SP, SP, #0x10
//  0x4aea78: mov x0, x1
//  0x4aea7c: stur x1, [FP, #-8]
//  0x4aea80: ldr BARRIER, [THR, #0x38]
//  0x4aea84: cmp SP, BARRIER
//  0x4aea88: b.ls #0x4aeac8
//  0x4aea8c: mov x1, NULL
//  0x4aea90: mov x2, #4
//  0x4aea94: bl #0x61f920
//  0x4aea98: add BARRIER, PP, #0x11, lsl #12
//  0x4aea9c: ldr BARRIER, [BARRIER, #0x7e0]
//  0x4aeaa0: stur w16, [x0, #0xf]
//  0x4aeaa4: ldur x1, [FP, #-8]
//  0x4aeaa8: ldur w2, [x1, #0xf]
//  0x4aeaac: add x2, x2, HEAP, lsl #32
//  0x4aeab0: stur w2, [x0, #0x13]
//  0x4aeab4: str x0, [SP]
//  0x4aeab8: bl #0x2ad854
//  0x4aeabc: mov SP, FP
//  0x4aeac0: ldp FP, LR, [SP], #0x10
//  0x4aeac4: ret 
//  0x4aeac8: bl #0x61fa28
//  0x4aeacc: b #0x4aea8c
//
dynamic SearchState_enumToString() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4aea6c
  // frame: FP = SP // 0x4aea70
  // frame: SP = SP - 0x10 // 0x4aea74
  x0 = x1; // 0x4aea78
  local_m8 = x1; // 0x4aea7c
  BARRIER = mem(THR, 0x38); // 0x4aea80
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4aeac8
  }
  x1 = NULL; // 0x4aea8c
  x2 = 4; // 0x4aea90
  sub_0x61f920(); // 0x4aea94
  BARRIER = "SearchState." /* pp+0x117e0 */; // 0x4aea9c
  memSet(x0, 0xf, w16); // 0x4aeaa0
  w2 = mem((local_m8), 0xf); // 0x4aeaa8
  x1 = local_m8; // 0x4aeaa4
  x2 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4aeaac
  memSet(x0, 0x13, w2); // 0x4aeab0
  local_0 = x0; // 0x4aeab4
  StringBase_interpolate() /* 0x2ad854 */; // 0x4aeab8
  SP = FP; // 0x4aeabc
  // frame: FP, LR, mem(SP), 0x10 // 0x4aeac0
  return;
}
