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

dynamic AllocationStub_BorderRadius, AllocationStub_BoxDecoration, AllocationStub_Center;
dynamic AllocationStub_ChangeNotifierProvider, AllocationStub_ClampingScrollPhysics;
dynamic AllocationStub_ClipRRect, AllocationStub_Color, AllocationStub_Column;
dynamic AllocationStub_Consumer, AllocationStub_Container, AllocationStub_CustomFooter;
dynamic AllocationStub_EdgeInsets, AllocationStub_Expanded, AllocationStub_Flexible;
dynamic AllocationStub_GameFruitBackgroundDialog, AllocationStub_GameFruitBetRecordDialog;
dynamic AllocationStub_GameFruitBetRecordNotifier, AllocationStub_GameFruitRuleWidget;
dynamic AllocationStub_GameRuleTitleWidget, AllocationStub_LinearGradient;
dynamic AllocationStub_ListView, AllocationStub_Material, AllocationStub_MediaQuery;
dynamic AllocationStub_Radius, AllocationStub_RefreshController, AllocationStub_Row;
dynamic AllocationStub_SOAssetImage, AllocationStub_SingleChildScrollView;
dynamic AllocationStub_SizedBox, AllocationStub_SmartRefresher, AllocationStub_Text;
dynamic AllocationStub_TextStyle, AllocationStub__Closure, AllocationStub__Double;
dynamic AllocationStub__GameFruitBetRecordDialogState, AllocationStub__GrowableList;
dynamic AllocationStub__ValueInheritedProvider, BARRIER, BoostNavigator_get_instance;
dynamic BoostNavigator_pop, Container_ctor, FP, GameFruitBetRecordNotifier_ctor;
dynamic GameFruitBetRecordNotifier_gainGameFruitDialog;
dynamic GameFruitBetRecordNotifier_requestGameFruitDialogList, GestureDetector_ctor, HEAP, LR;
dynamic LateInitializationErrorSharedWithoutFpuRegsStub_0x620258, ListView_ctor_builder;
dynamic Map_factory_ctor_fromLiteral, MediaQuery_ctor_removeViewInsets, NULL;
dynamic NavigatorState_canPop, NavigatorState_pop, Navigator_of;
dynamic NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0, PP;
dynamic RangeErrorSharedWithoutFpuRegsStub_0x61fe70, RefreshController_ctor;
dynamic RefreshController_dispose, RefreshController_loadComplete;
dynamic RefreshController_loadFailed, RefreshController_loadNoData, SP;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, WriteBarrierStub_x1, d0, d1;
dynamic getString, int_kNull, local_0, local_10, local_18, local_20, local_28, local_m10;
dynamic local_m18, local_m20, local_m28, local_m30, local_m38, local_m40, local_m48, local_m50;
dynamic local_m58, local_m60, local_m68, local_m70, local_m8, q0, showDialog, sub_0x3a1d94;
dynamic sub_0x61e890, sub_0x61f920, v0_16b, v1_16b, w0, w1, w16, w17, w2, w22, w3, w4, w5, w6;
dynamic w7, x0, x1, x16, x17, x2, x21, x3, x4, x5, x6, x7, x9, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$game$page_game_fruit_bet_record_dialog
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// GameFruitBackgroundDialog_build
// raw disassembly:
//  0x3a0e20: stp FP, LR, [SP, #-0x10]!
//  0x3a0e24: mov FP, SP
//  0x3a0e28: sub SP, SP, #0x50
//  0x3a0e2c: stur x1, [FP, #-8]
//  0x3a0e30: ldr BARRIER, [THR, #0x38]
//  0x3a0e34: cmp SP, BARRIER
//  0x3a0e38: b.ls #0x3a1064
//  0x3a0e3c: bl #0x31d844
//  0x3a0e40: mov x1, x0
//  0x3a0e44: ldr x0, [PP, #0x6310]
//  0x3a0e48: stur x1, [FP, #-0x10]
//  0x3a0e4c: stur w0, [x1, #0x27]
//  0x3a0e50: fmov d0, #1.00000000
//  0x3a0e54: stur d0, [x1, #7]
//  0x3a0e58: add x17, PP, #0x11, lsl #12
//  0x3a0e5c: ldr d1, [x17, #0x7f8]
//  0x3a0e60: stur d1, [x1, #0xf]
//  0x3a0e64: add x17, PP, #0xf, lsl #12
//  0x3a0e68: ldr d1, [x17, #0xd50]
//  0x3a0e6c: stur d1, [x1, #0x17]
//  0x3a0e70: stur d0, [x1, #0x1f]
//  0x3a0e74: bl #0x31d844
//  0x3a0e78: mov x1, x0
//  0x3a0e7c: ldr x0, [PP, #0x6310]
//  0x3a0e80: stur x1, [FP, #-0x18]
//  0x3a0e84: stur w0, [x1, #0x27]
//  0x3a0e88: fmov d0, #1.00000000
//  0x3a0e8c: stur d0, [x1, #7]
//  0x3a0e90: ldr d1, [PP, #0x64d0]
//  0x3a0e94: stur d1, [x1, #0xf]
//  0x3a0e98: add x17, PP, #0x10, lsl #12
//  0x3a0e9c: ldr d1, [x17, #0xad8]
//  0x3a0ea0: stur d1, [x1, #0x17]
//  0x3a0ea4: stur d0, [x1, #0x1f]
//  0x3a0ea8: bl #0x31d844
//  0x3a0eac: mov x3, x0
//  0x3a0eb0: ldr x0, [PP, #0x6310]
//  0x3a0eb4: stur x3, [FP, #-0x20]
//  0x3a0eb8: stur w0, [x3, #0x27]
//  0x3a0ebc: fmov d0, #1.00000000
//  0x3a0ec0: stur d0, [x3, #7]
//  0x3a0ec4: add x17, PP, #0x11, lsl #12
//  0x3a0ec8: ldr d0, [x17, #0x800]
//  0x3a0ecc: stur d0, [x3, #0xf]
//  0x3a0ed0: add x17, PP, #0xe, lsl #12
//  0x3a0ed4: ldr d0, [x17, #0xe48]
//  0x3a0ed8: stur d0, [x3, #0x17]
//  0x3a0edc: add x17, PP, #0xf, lsl #12
//  0x3a0ee0: ldr d0, [x17, #0x628]
//  0x3a0ee4: stur d0, [x3, #0x1f]
//  0x3a0ee8: mov x1, NULL
//  0x3a0eec: mov x2, #6
//  0x3a0ef0: bl #0x61f920
//  0x3a0ef4: mov x2, x0
//  0x3a0ef8: ldur x0, [FP, #-0x10]
//  0x3a0efc: stur x2, [FP, #-0x28]
//  0x3a0f00: stur w0, [x2, #0xf]
//  0x3a0f04: ldur x0, [FP, #-0x18]
//  0x3a0f08: stur w0, [x2, #0x13]
//  0x3a0f0c: ldur x0, [FP, #-0x20]
//  0x3a0f10: stur w0, [x2, #0x17]
//  0x3a0f14: add x1, PP, #0x10, lsl #12
//  0x3a0f18: ldr x1, [x1, #0xc58]
//  0x3a0f1c: bl #0x61e854
//  0x3a0f20: mov x1, x0
//  0x3a0f24: ldur x0, [FP, #-0x28]
//  0x3a0f28: stur x1, [FP, #-0x10]
//  0x3a0f2c: stur w0, [x1, #0xf]
//  0x3a0f30: mov x0, #6
//  0x3a0f34: stur w0, [x1, #0xb]
//  0x3a0f38: bl #0x3a108c
//  0x3a0f3c: mov x1, x0
//  0x3a0f40: add x0, PP, #0x10, lsl #12
//  0x3a0f44: ldr x0, [x0, #0xc68]
//  0x3a0f48: stur x1, [FP, #-0x18]
//  0x3a0f4c: stur w0, [x1, #0x13]
//  0x3a0f50: add x0, PP, #0x10, lsl #12
//  0x3a0f54: ldr x0, [x0, #0xc70]
//  0x3a0f58: stur w0, [x1, #0x17]
//  0x3a0f5c: add x0, PP, #0x10, lsl #12
//  0x3a0f60: ldr x0, [x0, #0xc78]
//  0x3a0f64: stur w0, [x1, #0x1b]
//  0x3a0f68: ldur x0, [FP, #-0x10]
//  0x3a0f6c: stur w0, [x1, #7]
//  0x3a0f70: bl #0x352b04
//  0x3a0f74: fmov d0, #16.00000000
//  0x3a0f78: stur x0, [FP, #-0x10]
//  0x3a0f7c: stur d0, [x0, #7]
//  0x3a0f80: stur d0, [x0, #0xf]
//  0x3a0f84: bl #0x392f28
//  0x3a0f88: mov x1, x0
//  0x3a0f8c: ldur x0, [FP, #-0x10]
//  0x3a0f90: stur x1, [FP, #-0x20]
//  0x3a0f94: stur w0, [x1, #7]
//  0x3a0f98: stur w0, [x1, #0xb]
//  0x3a0f9c: stur w0, [x1, #0xf]
//  0x3a0fa0: stur w0, [x1, #0x13]
//  0x3a0fa4: bl #0x391dd8
//  0x3a0fa8: mov x1, x0
//  0x3a0fac: ldur x0, [FP, #-0x20]
//  0x3a0fb0: stur x1, [FP, #-0x28]
//  0x3a0fb4: stur w0, [x1, #0x13]
//  0x3a0fb8: ldur x0, [FP, #-0x18]
//  0x3a0fbc: stur w0, [x1, #0x1b]
//  0x3a0fc0: add x0, PP, #0xe, lsl #12
//  0x3a0fc4: ldr x0, [x0, #0xb78]
//  0x3a0fc8: stur w0, [x1, #0x23]
//  0x3a0fcc: ldur x0, [FP, #-8]
//  0x3a0fd0: ldur w2, [x0, #0x1f]
//  0x3a0fd4: add x2, x2, HEAP, lsl #32
//  0x3a0fd8: stur x2, [FP, #-0x18]
//  0x3a0fdc: ldur d0, [x0, #0x13]
//  0x3a0fe0: ldur w3, [x0, #0x1b]
//  0x3a0fe4: add x3, x3, HEAP, lsl #32
//  0x3a0fe8: stur x3, [FP, #-0x10]
//  0x3a0fec: ldp x0, x4, [THR, #0x50]
//  0x3a0ff0: add x0, x0, #0x10
//  0x3a0ff4: cmp x4, x0
//  0x3a0ff8: b.ls #0x3a106c
//  0x3a0ffc: str x0, [THR, #0x50]
//  0x3a1000: sub x0, x0, #0xf
//  0x3a1004: mov x4, #0xe15c
//  0x3a1008: movk x4, #3, lsl #16
//  0x3a100c: stur x4, [x0, #-1]
//  0x3a1010: stur d0, [x0, #7]
//  0x3a1014: stur x0, [FP, #-8]
//  0x3a1018: bl #0x391a04
//  0x3a101c: stur x0, [FP, #-0x20]
//  0x3a1020: ldur BARRIER, [FP, #-0x28]
//  0x3a1024: ldur LR, [FP, #-0x18]
//  0x3a1028: stp LR, BARRIER, [SP, #0x18]
//  0x3a102c: add BARRIER, PP, #0x15, lsl #12
//  0x3a1030: ldr BARRIER, [BARRIER, #0x4d0]
//  0x3a1034: ldur LR, [FP, #-8]
//  0x3a1038: stp LR, BARRIER, [SP, #8]
//  0x3a103c: ldur BARRIER, [FP, #-0x10]
//  0x3a1040: str BARRIER, [SP]
//  0x3a1044: mov x1, x0
//  0x3a1048: add x4, PP, #0x14, lsl #12
//  0x3a104c: ldr x4, [x4, #0xb80]
//  0x3a1050: bl #0x391490
//  0x3a1054: ldur x0, [FP, #-0x20]
//  0x3a1058: mov SP, FP
//  0x3a105c: ldp FP, LR, [SP], #0x10
//  0x3a1060: ret 
//  0x3a1064: bl #0x61fa28
//  0x3a1068: b #0x3a0e3c
//  0x3a106c: str q0, [SP, #-0x10]!
//  0x3a1070: stp x2, x3, [SP, #-0x10]!
//  0x3a1074: str x1, [SP, #-8]!
//  0x3a1078: bl #0x61f878
//  0x3a107c: ldr x1, [SP], #8
//  0x3a1080: ldp x2, x3, [SP], #0x10
//  0x3a1084: ldr q0, [SP], #0x10
//  0x3a1088: b #0x3a1010
//
dynamic GameFruitBackgroundDialog_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic q0;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a0e20
  // frame: FP = SP // 0x3a0e24
  // frame: SP = SP - 0x50 // 0x3a0e28
  local_m8 = x1; // 0x3a0e2c
  BARRIER = mem(THR, 0x38); // 0x3a0e30
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a1064
  }
  AllocationStub_Color() /* 0x31d844 */; // 0x3a0e3c
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a0e44
  x1 = x0; // 0x3a0e40
  local_m10 = x1; // 0x3a0e48
  memSet(x1, 0x27, w0); // 0x3a0e4c
  d0 = 1.00000000 /* bits */; // 0x3a0e50
  memSet(x1, 7, d0); // 0x3a0e54
  d1 = 4604780498998753143; // 0x3a0e5c
  x17 = PP + 0x11000; // 0x3a0e58
  memSet(x1, 0xf, d1); // 0x3a0e60
  d1 = 4598404814820397265; // 0x3a0e68
  x17 = PP + 0xf000; // 0x3a0e64
  memSet(x1, 0x17, d1); // 0x3a0e6c
  memSet(x1, 0x1f, d0); // 0x3a0e70
  AllocationStub_Color() /* 0x31d844 */; // 0x3a0e74
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a0e7c
  x1 = x0; // 0x3a0e78
  local_m18 = x1; // 0x3a0e80
  memSet(x1, 0x27, w0); // 0x3a0e84
  d0 = 1.00000000 /* bits */; // 0x3a0e88
  memSet(x1, 7, d0); // 0x3a0e8c
  d1 = 4599676419421066581; // 0x3a0e90
  memSet(x1, 0xf, d1); // 0x3a0e94
  d1 = 4598546104220471633; // 0x3a0e9c
  x17 = PP + 0x10000; // 0x3a0e98
  memSet(x1, 0x17, d1); // 0x3a0ea0
  memSet(x1, 0x1f, d0); // 0x3a0ea4
  AllocationStub_Color() /* 0x31d844 */; // 0x3a0ea8
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a0eb0
  x3 = x0; // 0x3a0eac
  local_m20 = x3; // 0x3a0eb4
  memSet(x3, 0x27, w0); // 0x3a0eb8
  d0 = 1.00000000 /* bits */; // 0x3a0ebc
  memSet(x3, 7, d0); // 0x3a0ec0
  d0 = 4590881154266437142; // 0x3a0ec8
  x17 = PP + 0x11000; // 0x3a0ec4
  memSet(x3, 0xf, d0); // 0x3a0ecc
  d0 = 4603155670897897906; // 0x3a0ed4
  x17 = PP + 0xe000; // 0x3a0ed0
  memSet(x3, 0x17, d0); // 0x3a0ed8
  d0 = 4607147096449998816; // 0x3a0ee0
  x17 = PP + 0xf000; // 0x3a0edc
  memSet(x3, 0x1f, d0); // 0x3a0ee4
  x1 = NULL; // 0x3a0ee8
  x2 = 6; // 0x3a0eec
  sub_0x61f920(); // 0x3a0ef0
  x0 = local_m10; // 0x3a0ef8
  x2 = x0; // 0x3a0ef4
  local_m28 = x2; // 0x3a0efc
  memSet(x2, 0xf, w0); // 0x3a0f00
  x0 = local_m18; // 0x3a0f04
  memSet(x2, 0x13, w0); // 0x3a0f08
  x0 = local_m20; // 0x3a0f0c
  memSet(x2, 0x17, w0); // 0x3a0f10
  x1 = mem((PP + 0x10000), 0xc58) /* TypeArguments */; // 0x3a0f18
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3a0f1c
  x0 = local_m28; // 0x3a0f24
  x1 = x0; // 0x3a0f20
  local_m10 = x1; // 0x3a0f28
  memSet(x1, 0xf, w0); // 0x3a0f2c
  x0 = 6; // 0x3a0f30
  memSet(x1, 0xb, w0); // 0x3a0f34
  AllocationStub_LinearGradient() /* 0x3a108c */; // 0x3a0f38
  x0 = mem((PP + 0x10000), 0xc68) /* Obj!Alignment@11bdd  */; // 0x3a0f44
  x1 = x0; // 0x3a0f3c
  local_m18 = x1; // 0x3a0f48
  memSet(x1, 0x13, w0); // 0x3a0f4c
  x0 = mem((PP + 0x10000), 0xc70) /* Obj!Alignment@11bdc  */; // 0x3a0f54
  memSet(x1, 0x17, w0); // 0x3a0f58
  x0 = mem((PP + 0x10000), 0xc78) /* Obj!TileMode@1233e  */; // 0x3a0f60
  memSet(x1, 0x1b, w0); // 0x3a0f64
  x0 = local_m10; // 0x3a0f68
  memSet(x1, 7, w0); // 0x3a0f6c
  AllocationStub_Radius() /* 0x352b04 */; // 0x3a0f70
  d0 = 16.00000000 /* bits */; // 0x3a0f74
  local_m10 = x0; // 0x3a0f78
  memSet(x0, 7, d0); // 0x3a0f7c
  memSet(x0, 0xf, d0); // 0x3a0f80
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x3a0f84
  x0 = local_m10; // 0x3a0f8c
  x1 = x0; // 0x3a0f88
  local_m20 = x1; // 0x3a0f90
  memSet(x1, 7, w0); // 0x3a0f94
  memSet(x1, 0xb, w0); // 0x3a0f98
  memSet(x1, 0xf, w0); // 0x3a0f9c
  memSet(x1, 0x13, w0); // 0x3a0fa0
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x3a0fa4
  x0 = local_m20; // 0x3a0fac
  x1 = x0; // 0x3a0fa8
  local_m28 = x1; // 0x3a0fb0
  memSet(x1, 0x13, w0); // 0x3a0fb4
  x0 = local_m18; // 0x3a0fb8
  memSet(x1, 0x1b, w0); // 0x3a0fbc
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x3a0fc4
  memSet(x1, 0x23, w0); // 0x3a0fc8
  w2 = mem((local_m8), 0x1f); // 0x3a0fd0
  x0 = local_m8; // 0x3a0fcc
  x2 = ((mem((local_m8), 0x1f)) & 0xffffffff) + (HEAP << 32); // 0x3a0fd4
  local_m18 = x2; // 0x3a0fd8
  d0 = mem(x0, 0x13); // 0x3a0fdc
  w3 = mem(x0, 0x1b); // 0x3a0fe0
  x3 = ((mem(x0, 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x3a0fe4
  local_m10 = x3; // 0x3a0fe8
  memRead2(THR, 0x50, x0, x4); // 0x3a0fec
  x0 = x0 + 0x10; // 0x3a0ff0
  if (x4 <= x0) {
    local_m10 = q0; // 0x3a106c
    // frame: x2, x3, mem(SP, -0x10)! // 0x3a1070
    local_m8 = x1; // 0x3a1074
    AllocationStub__Double() /* 0x61f878 */; // 0x3a1078
    x1 = local_0; // 0x3a107c
    // frame: x2, x3, mem(SP), 0x10 // 0x3a1080
    q0 = local_0; // 0x3a1084
  } else {
    memSet(THR, 0x50, x0); // 0x3a0ffc
    x0 = x0 - 0xf; // 0x3a1000
    x4 = (x4 & 0xffff) | 0x30000; // 0x3a1008
    memSet(x0, -1, x4); // 0x3a100c
  }
  memSet(x0, 7, d0); // 0x3a1010
  local_m8 = x0; // 0x3a1014
  AllocationStub_Container() /* 0x391a04 */; // 0x3a1018
  local_m20 = x0; // 0x3a101c
  BARRIER = local_m28; // 0x3a1020
  LR = local_m18; // 0x3a1024
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x3a1028
  BARRIER = mem((PP + 0x15000), 0x4d0) /* Double */; // 0x3a1030
  LR = local_m8; // 0x3a1034
  // frame: LR, BARRIER, mem(SP, 8) // 0x3a1038
  BARRIER = local_m10; // 0x3a103c
  local_0 = BARRIER; // 0x3a1040
  x1 = x0; // 0x3a1044
  x4 = mem((PP + 0x14000), 0xb80) /* ImmutableArray */; // 0x3a104c
  Container_ctor() /* 0x391490 */; // 0x3a1050
  SP = FP; // 0x3a1058
  x0 = local_m20; // 0x3a1054
  // frame: FP, LR, mem(SP), 0x10 // 0x3a105c
  return;
}

// GameRuleTitleWidget_build
// raw disassembly:
//  0x3a1098: stp FP, LR, [SP, #-0x10]!
//  0x3a109c: mov FP, SP
//  0x3a10a0: sub SP, SP, #0x58
//  0x3a10a4: stur x1, [FP, #-8]
//  0x3a10a8: ldr BARRIER, [THR, #0x38]
//  0x3a10ac: cmp SP, BARRIER
//  0x3a10b0: b.ls #0x3a140c
//  0x3a10b4: bl #0x352b04
//  0x3a10b8: fmov d0, #8.00000000
//  0x3a10bc: stur x0, [FP, #-0x10]
//  0x3a10c0: stur d0, [x0, #7]
//  0x3a10c4: stur d0, [x0, #0xf]
//  0x3a10c8: bl #0x392f28
//  0x3a10cc: mov x1, x0
//  0x3a10d0: ldur x0, [FP, #-0x10]
//  0x3a10d4: stur x1, [FP, #-0x18]
//  0x3a10d8: stur w0, [x1, #7]
//  0x3a10dc: stur w0, [x1, #0xb]
//  0x3a10e0: stur w0, [x1, #0xf]
//  0x3a10e4: stur w0, [x1, #0x13]
//  0x3a10e8: bl #0x31d844
//  0x3a10ec: mov x1, x0
//  0x3a10f0: ldr x0, [PP, #0x6310]
//  0x3a10f4: stur x1, [FP, #-0x10]
//  0x3a10f8: stur w0, [x1, #0x27]
//  0x3a10fc: fmov d0, #1.00000000
//  0x3a1100: stur d0, [x1, #7]
//  0x3a1104: add x17, PP, #0x15, lsl #12
//  0x3a1108: ldr d0, [x17, #0x4a0]
//  0x3a110c: stur d0, [x1, #0xf]
//  0x3a1110: stur xzr, [x1, #0x17]
//  0x3a1114: add x17, PP, #0x15, lsl #12
//  0x3a1118: ldr d0, [x17, #0x4a8]
//  0x3a111c: stur d0, [x1, #0x1f]
//  0x3a1120: bl #0x391dd8
//  0x3a1124: mov x1, x0
//  0x3a1128: ldur x0, [FP, #-0x10]
//  0x3a112c: stur x1, [FP, #-0x20]
//  0x3a1130: stur w0, [x1, #7]
//  0x3a1134: ldur x0, [FP, #-0x18]
//  0x3a1138: stur w0, [x1, #0x13]
//  0x3a113c: add x0, PP, #0xe, lsl #12
//  0x3a1140: ldr x0, [x0, #0xb78]
//  0x3a1144: stur w0, [x1, #0x23]
//  0x3a1148: bl #0x2e3578
//  0x3a114c: fmov d0, #10.00000000
//  0x3a1150: stur x0, [FP, #-0x10]
//  0x3a1154: stur d0, [x0, #7]
//  0x3a1158: stur xzr, [x0, #0xf]
//  0x3a115c: stur xzr, [x0, #0x17]
//  0x3a1160: stur xzr, [x0, #0x1f]
//  0x3a1164: bl #0x3a142c
//  0x3a1168: mov x1, x0
//  0x3a116c: add x0, PP, #0x15, lsl #12
//  0x3a1170: ldr x0, [x0, #0x4b0]
//  0x3a1174: stur x1, [FP, #-0x18]
//  0x3a1178: stur w0, [x1, #0xb]
//  0x3a117c: add x0, PP, #0xf, lsl #12
//  0x3a1180: ldr x0, [x0, #0x170]
//  0x3a1184: stur w0, [x1, #0xf]
//  0x3a1188: add x2, PP, #0xe, lsl #12
//  0x3a118c: ldr x2, [x2, #0xb50]
//  0x3a1190: stur w2, [x1, #0x13]
//  0x3a1194: add x3, PP, #0xf, lsl #12
//  0x3a1198: ldr x3, [x3, #0x228]
//  0x3a119c: stur w3, [x1, #0x17]
//  0x3a11a0: bl #0x391a04
//  0x3a11a4: stur x0, [FP, #-0x28]
//  0x3a11a8: ldur BARRIER, [FP, #-0x10]
//  0x3a11ac: ldur LR, [FP, #-0x18]
//  0x3a11b0: stp LR, BARRIER, [SP]
//  0x3a11b4: mov x1, x0
//  0x3a11b8: add x4, PP, #0xf, lsl #12
//  0x3a11bc: ldr x4, [x4, #0x200]
//  0x3a11c0: bl #0x391490
//  0x3a11c4: bl #0x3949ec
//  0x3a11c8: mov x1, x0
//  0x3a11cc: add x0, PP, #0xf, lsl #12
//  0x3a11d0: ldr x0, [x0, #0xbb8]
//  0x3a11d4: stur x1, [FP, #-0x18]
//  0x3a11d8: stur w0, [x1, #0xf]
//  0x3a11dc: ldur x2, [FP, #-8]
//  0x3a11e0: ldur w3, [x2, #0xb]
//  0x3a11e4: add x3, x3, HEAP, lsl #32
//  0x3a11e8: stur x3, [FP, #-0x10]
//  0x3a11ec: bl #0x31abec
//  0x3a11f0: mov x1, x0
//  0x3a11f4: add x0, NULL, #0x20
//  0x3a11f8: stur x1, [FP, #-8]
//  0x3a11fc: stur w0, [x1, #7]
//  0x3a1200: ldr x0, [PP, #0x6050]
//  0x3a1204: stur w0, [x1, #0xb]
//  0x3a1208: add x0, PP, #0xf, lsl #12
//  0x3a120c: ldr x0, [x0, #0x208]
//  0x3a1210: stur w0, [x1, #0x1f]
//  0x3a1214: add x0, PP, #0xe, lsl #12
//  0x3a1218: ldr x0, [x0, #0xe40]
//  0x3a121c: stur w0, [x1, #0x23]
//  0x3a1220: bl #0x393bf8
//  0x3a1224: mov x2, x0
//  0x3a1228: ldur x0, [FP, #-0x10]
//  0x3a122c: stur x2, [FP, #-0x30]
//  0x3a1230: stur w0, [x2, #0xb]
//  0x3a1234: ldur x0, [FP, #-8]
//  0x3a1238: stur w0, [x2, #0x13]
//  0x3a123c: add x0, PP, #0xf, lsl #12
//  0x3a1240: ldr x0, [x0, #0x230]
//  0x3a1244: stur w0, [x2, #0x2b]
//  0x3a1248: mov x0, #2
//  0x3a124c: stur w0, [x2, #0x37]
//  0x3a1250: add x1, PP, #0xe, lsl #12
//  0x3a1254: ldr x1, [x1, #0xad0]
//  0x3a1258: bl #0x3a1420
//  0x3a125c: mov x1, x0
//  0x3a1260: mov x0, #1
//  0x3a1264: stur x1, [FP, #-8]
//  0x3a1268: stur x0, [x1, #0x13]
//  0x3a126c: add x0, PP, #0x10, lsl #12
//  0x3a1270: ldr x0, [x0, #0x950]
//  0x3a1274: stur w0, [x1, #0x1b]
//  0x3a1278: ldur x0, [FP, #-0x30]
//  0x3a127c: stur w0, [x1, #0xb]
//  0x3a1280: bl #0x3949ec
//  0x3a1284: mov x1, x0
//  0x3a1288: add x0, PP, #0xf, lsl #12
//  0x3a128c: ldr x0, [x0, #0xbb8]
//  0x3a1290: stur x1, [FP, #-0x10]
//  0x3a1294: stur w0, [x1, #0xf]
//  0x3a1298: bl #0x2e3578
//  0x3a129c: stur x0, [FP, #-0x30]
//  0x3a12a0: stur xzr, [x0, #7]
//  0x3a12a4: stur xzr, [x0, #0xf]
//  0x3a12a8: fmov d0, #10.00000000
//  0x3a12ac: stur d0, [x0, #0x17]
//  0x3a12b0: stur xzr, [x0, #0x1f]
//  0x3a12b4: bl #0x3a142c
//  0x3a12b8: mov x1, x0
//  0x3a12bc: add x0, PP, #0x15, lsl #12
//  0x3a12c0: ldr x0, [x0, #0x4b8]
//  0x3a12c4: stur x1, [FP, #-0x38]
//  0x3a12c8: stur w0, [x1, #0xb]
//  0x3a12cc: add x0, PP, #0xf, lsl #12
//  0x3a12d0: ldr x0, [x0, #0x170]
//  0x3a12d4: stur w0, [x1, #0xf]
//  0x3a12d8: add x0, PP, #0xe, lsl #12
//  0x3a12dc: ldr x0, [x0, #0xb50]
//  0x3a12e0: stur w0, [x1, #0x13]
//  0x3a12e4: add x0, PP, #0xf, lsl #12
//  0x3a12e8: ldr x0, [x0, #0x228]
//  0x3a12ec: stur w0, [x1, #0x17]
//  0x3a12f0: bl #0x391a04
//  0x3a12f4: stur x0, [FP, #-0x40]
//  0x3a12f8: ldur BARRIER, [FP, #-0x30]
//  0x3a12fc: ldur LR, [FP, #-0x38]
//  0x3a1300: stp LR, BARRIER, [SP]
//  0x3a1304: mov x1, x0
//  0x3a1308: add x4, PP, #0xf, lsl #12
//  0x3a130c: ldr x4, [x4, #0x200]
//  0x3a1310: bl #0x391490
//  0x3a1314: mov x1, NULL
//  0x3a1318: mov x2, #0xa
//  0x3a131c: bl #0x61f920
//  0x3a1320: mov x2, x0
//  0x3a1324: ldur x0, [FP, #-0x28]
//  0x3a1328: stur x2, [FP, #-0x30]
//  0x3a132c: stur w0, [x2, #0xf]
//  0x3a1330: ldur x0, [FP, #-0x18]
//  0x3a1334: stur w0, [x2, #0x13]
//  0x3a1338: ldur x0, [FP, #-8]
//  0x3a133c: stur w0, [x2, #0x17]
//  0x3a1340: ldur x0, [FP, #-0x10]
//  0x3a1344: stur w0, [x2, #0x1b]
//  0x3a1348: ldur x0, [FP, #-0x40]
//  0x3a134c: stur w0, [x2, #0x1f]
//  0x3a1350: ldr x1, [PP, #0x5c58]
//  0x3a1354: bl #0x61e854
//  0x3a1358: mov x1, x0
//  0x3a135c: ldur x0, [FP, #-0x30]
//  0x3a1360: stur x1, [FP, #-8]
//  0x3a1364: stur w0, [x1, #0xf]
//  0x3a1368: mov x0, #0xa
//  0x3a136c: stur w0, [x1, #0xb]
//  0x3a1370: bl #0x3a1414
//  0x3a1374: mov x1, x0
//  0x3a1378: ldr x0, [PP, #0x5140]
//  0x3a137c: stur x1, [FP, #-0x10]
//  0x3a1380: stur w0, [x1, #0xf]
//  0x3a1384: add x0, PP, #0xf, lsl #12
//  0x3a1388: ldr x0, [x0, #0x288]
//  0x3a138c: stur w0, [x1, #0x13]
//  0x3a1390: add x0, PP, #0xe, lsl #12
//  0x3a1394: ldr x0, [x0, #0xb08]
//  0x3a1398: stur w0, [x1, #0x17]
//  0x3a139c: add x0, PP, #0xe, lsl #12
//  0x3a13a0: ldr x0, [x0, #0xb60]
//  0x3a13a4: stur w0, [x1, #0x1b]
//  0x3a13a8: add x0, PP, #0xe, lsl #12
//  0x3a13ac: ldr x0, [x0, #0xaf8]
//  0x3a13b0: stur w0, [x1, #0x23]
//  0x3a13b4: add x0, PP, #0xa, lsl #12
//  0x3a13b8: ldr x0, [x0, #0xa8]
//  0x3a13bc: stur w0, [x1, #0x2b]
//  0x3a13c0: stur xzr, [x1, #0x2f]
//  0x3a13c4: ldur x0, [FP, #-8]
//  0x3a13c8: stur w0, [x1, #0xb]
//  0x3a13cc: bl #0x391a04
//  0x3a13d0: stur x0, [FP, #-8]
//  0x3a13d4: add BARRIER, PP, #0x12, lsl #12
//  0x3a13d8: ldr BARRIER, [BARRIER, #0x560]
//  0x3a13dc: ldur LR, [FP, #-0x20]
//  0x3a13e0: stp LR, BARRIER, [SP, #8]
//  0x3a13e4: ldur BARRIER, [FP, #-0x10]
//  0x3a13e8: str BARRIER, [SP]
//  0x3a13ec: mov x1, x0
//  0x3a13f0: add x4, PP, #0x15, lsl #12
//  0x3a13f4: ldr x4, [x4, #0x4c0]
//  0x3a13f8: bl #0x391490
//  0x3a13fc: ldur x0, [FP, #-8]
//  0x3a1400: mov SP, FP
//  0x3a1404: ldp FP, LR, [SP], #0x10
//  0x3a1408: ret 
//  0x3a140c: bl #0x61fa28
//  0x3a1410: b #0x3a10b4
//
dynamic GameRuleTitleWidget_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a1098
  // frame: FP = SP // 0x3a109c
  // frame: SP = SP - 0x58 // 0x3a10a0
  local_m8 = x1; // 0x3a10a4
  BARRIER = mem(THR, 0x38); // 0x3a10a8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a140c
  }
  AllocationStub_Radius() /* 0x352b04 */; // 0x3a10b4
  d0 = 8.00000000 /* bits */; // 0x3a10b8
  local_m10 = x0; // 0x3a10bc
  memSet(x0, 7, d0); // 0x3a10c0
  memSet(x0, 0xf, d0); // 0x3a10c4
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x3a10c8
  x0 = local_m10; // 0x3a10d0
  x1 = x0; // 0x3a10cc
  local_m18 = x1; // 0x3a10d4
  memSet(x1, 7, w0); // 0x3a10d8
  memSet(x1, 0xb, w0); // 0x3a10dc
  memSet(x1, 0xf, w0); // 0x3a10e0
  memSet(x1, 0x13, w0); // 0x3a10e4
  AllocationStub_Color() /* 0x31d844 */; // 0x3a10e8
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x3a10f0
  x1 = x0; // 0x3a10ec
  local_m10 = x1; // 0x3a10f4
  memSet(x1, 0x27, w0); // 0x3a10f8
  d0 = 1.00000000 /* bits */; // 0x3a10fc
  memSet(x1, 7, d0); // 0x3a1100
  d0 = 4600029642921252503; // 0x3a1108
  x17 = PP + 0x15000; // 0x3a1104
  memSet(x1, 0xf, d0); // 0x3a110c
  memSet(x1, 0x17, xzr); // 0x3a1110
  d0 = 4606016781249403868; // 0x3a1118
  x17 = PP + 0x15000; // 0x3a1114
  memSet(x1, 0x1f, d0); // 0x3a111c
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x3a1120
  x0 = local_m10; // 0x3a1128
  x1 = x0; // 0x3a1124
  local_m20 = x1; // 0x3a112c
  memSet(x1, 7, w0); // 0x3a1130
  x0 = local_m18; // 0x3a1134
  memSet(x1, 0x13, w0); // 0x3a1138
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x3a1140
  memSet(x1, 0x23, w0); // 0x3a1144
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3a1148
  d0 = 10.00000000 /* bits */; // 0x3a114c
  local_m10 = x0; // 0x3a1150
  memSet(x0, 7, d0); // 0x3a1154
  memSet(x0, 0xf, xzr); // 0x3a1158
  memSet(x0, 0x17, xzr); // 0x3a115c
  memSet(x0, 0x1f, xzr); // 0x3a1160
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x3a1164
  x0 = "assets/images/3.0x/game_fruit_icon_left.webp" /* pp+0x154b0 */; // 0x3a1170
  x1 = x0; // 0x3a1168
  local_m18 = x1; // 0x3a1174
  memSet(x1, 0xb, w0); // 0x3a1178
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x3a1180
  memSet(x1, 0xf, w0); // 0x3a1184
  x2 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x3a118c
  memSet(x1, 0x13, w2); // 0x3a1190
  x3 = mem((PP + 0xf000), 0x228) /* Double */; // 0x3a1198
  memSet(x1, 0x17, w3); // 0x3a119c
  AllocationStub_Container() /* 0x391a04 */; // 0x3a11a0
  local_m28 = x0; // 0x3a11a4
  BARRIER = local_m10; // 0x3a11a8
  LR = local_m18; // 0x3a11ac
  // frame: LR, BARRIER, mem(SP) // 0x3a11b0
  x1 = x0; // 0x3a11b4
  x4 = mem((PP + 0xf000), 0x200) /* ImmutableArray */; // 0x3a11bc
  Container_ctor() /* 0x391490 */; // 0x3a11c0
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x3a11c4
  x0 = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x3a11d0
  x1 = x0; // 0x3a11c8
  local_m18 = x1; // 0x3a11d4
  memSet(x1, 0xf, w0); // 0x3a11d8
  w3 = mem((local_m8), 0xb); // 0x3a11e0
  x2 = local_m8; // 0x3a11dc
  x3 = ((mem((local_m8), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x3a11e4
  local_m10 = x3; // 0x3a11e8
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3a11ec
  x0 = NULL + 0x20; // 0x3a11f4
  x1 = x0; // 0x3a11f0
  local_m8 = x1; // 0x3a11f8
  memSet(x1, 7, w0); // 0x3a11fc
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x3a1200
  memSet(x1, 0xb, w0); // 0x3a1204
  x0 = mem((PP + 0xf000), 0x208) /* Double */; // 0x3a120c
  memSet(x1, 0x1f, w0); // 0x3a1210
  x0 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x3a1218
  memSet(x1, 0x23, w0); // 0x3a121c
  AllocationStub_Text() /* 0x393bf8 */; // 0x3a1220
  x0 = local_m10; // 0x3a1228
  x2 = x0; // 0x3a1224
  local_m30 = x2; // 0x3a122c
  memSet(x2, 0xb, w0); // 0x3a1230
  x0 = local_m8; // 0x3a1234
  memSet(x2, 0x13, w0); // 0x3a1238
  x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x3a1240
  memSet(x2, 0x2b, w0); // 0x3a1244
  x0 = 2; // 0x3a1248
  memSet(x2, 0x37, w0); // 0x3a124c
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x3a1254
  AllocationStub_Flexible() /* 0x3a1420 */; // 0x3a1258
  x0 = 1; // 0x3a1260
  x1 = x0; // 0x3a125c
  local_m8 = x1; // 0x3a1264
  memSet(x1, 0x13, x0); // 0x3a1268
  x0 = mem((PP + 0x10000), 0x950) /* Obj!FlexFit@12273  */; // 0x3a1270
  memSet(x1, 0x1b, w0); // 0x3a1274
  x0 = local_m30; // 0x3a1278
  memSet(x1, 0xb, w0); // 0x3a127c
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x3a1280
  x0 = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x3a128c
  x1 = x0; // 0x3a1284
  local_m10 = x1; // 0x3a1290
  memSet(x1, 0xf, w0); // 0x3a1294
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3a1298
  local_m30 = x0; // 0x3a129c
  memSet(x0, 7, xzr); // 0x3a12a0
  memSet(x0, 0xf, xzr); // 0x3a12a4
  d0 = 10.00000000 /* bits */; // 0x3a12a8
  memSet(x0, 0x17, d0); // 0x3a12ac
  memSet(x0, 0x1f, xzr); // 0x3a12b0
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x3a12b4
  x0 = "assets/images/3.0x/game_fruit_icon_right.webp" /* pp+0x154b8 */; // 0x3a12c0
  x1 = x0; // 0x3a12b8
  local_m38 = x1; // 0x3a12c4
  memSet(x1, 0xb, w0); // 0x3a12c8
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x3a12d0
  memSet(x1, 0xf, w0); // 0x3a12d4
  x0 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x3a12dc
  memSet(x1, 0x13, w0); // 0x3a12e0
  x0 = mem((PP + 0xf000), 0x228) /* Double */; // 0x3a12e8
  memSet(x1, 0x17, w0); // 0x3a12ec
  AllocationStub_Container() /* 0x391a04 */; // 0x3a12f0
  local_m40 = x0; // 0x3a12f4
  BARRIER = local_m30; // 0x3a12f8
  LR = local_m38; // 0x3a12fc
  // frame: LR, BARRIER, mem(SP) // 0x3a1300
  x1 = x0; // 0x3a1304
  x4 = mem((PP + 0xf000), 0x200) /* ImmutableArray */; // 0x3a130c
  Container_ctor() /* 0x391490 */; // 0x3a1310
  x1 = NULL; // 0x3a1314
  x2 = 10; // 0x3a1318
  sub_0x61f920(); // 0x3a131c
  x0 = local_m28; // 0x3a1324
  x2 = x0; // 0x3a1320
  local_m30 = x2; // 0x3a1328
  memSet(x2, 0xf, w0); // 0x3a132c
  x0 = local_m18; // 0x3a1330
  memSet(x2, 0x13, w0); // 0x3a1334
  x0 = local_m8; // 0x3a1338
  memSet(x2, 0x17, w0); // 0x3a133c
  x0 = local_m10; // 0x3a1340
  memSet(x2, 0x1b, w0); // 0x3a1344
  x0 = local_m40; // 0x3a1348
  memSet(x2, 0x1f, w0); // 0x3a134c
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3a1350
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3a1354
  x0 = local_m30; // 0x3a135c
  x1 = x0; // 0x3a1358
  local_m8 = x1; // 0x3a1360
  memSet(x1, 0xf, w0); // 0x3a1364
  x0 = 10; // 0x3a1368
  memSet(x1, 0xb, w0); // 0x3a136c
  AllocationStub_Row() /* 0x3a1414 */; // 0x3a1370
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x3a1378
  x1 = x0; // 0x3a1374
  local_m10 = x1; // 0x3a137c
  memSet(x1, 0xf, w0); // 0x3a1380
  x0 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x3a1388
  memSet(x1, 0x13, w0); // 0x3a138c
  x0 = mem((PP + 0xe000), 0xb08) /* Obj!MainAxisSize@12270  */; // 0x3a1394
  memSet(x1, 0x17, w0); // 0x3a1398
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3a13a0
  memSet(x1, 0x1b, w0); // 0x3a13a4
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3a13ac
  memSet(x1, 0x23, w0); // 0x3a13b0
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3a13b8
  memSet(x1, 0x2b, w0); // 0x3a13bc
  memSet(x1, 0x2f, xzr); // 0x3a13c0
  x0 = local_m8; // 0x3a13c4
  memSet(x1, 0xb, w0); // 0x3a13c8
  AllocationStub_Container() /* 0x391a04 */; // 0x3a13cc
  local_m8 = x0; // 0x3a13d0
  BARRIER = mem((PP + 0x12000), 0x560) /* Double */; // 0x3a13d8
  LR = local_m20; // 0x3a13dc
  // frame: LR, BARRIER, mem(SP, 8) // 0x3a13e0
  BARRIER = local_m10; // 0x3a13e4
  local_0 = BARRIER; // 0x3a13e8
  x1 = x0; // 0x3a13ec
  x4 = mem((PP + 0x15000), 0x4c0) /* ImmutableArray */; // 0x3a13f4
  Container_ctor() /* 0x391490 */; // 0x3a13f8
  SP = FP; // 0x3a1400
  x0 = local_m8; // 0x3a13fc
  // frame: FP, LR, mem(SP), 0x10 // 0x3a1404
  return;
}

// GameFruitRuleWidget_build
// raw disassembly:
//  0x3a1438: stp FP, LR, [SP, #-0x10]!
//  0x3a143c: mov FP, SP
//  0x3a1440: sub SP, SP, #0x48
//  0x3a1444: stur x2, [FP, #-8]
//  0x3a1448: ldr BARRIER, [THR, #0x38]
//  0x3a144c: cmp SP, BARRIER
//  0x3a1450: b.ls #0x3a18bc
//  0x3a1454: mov x1, #1
//  0x3a1458: bl #0x61e890
//  0x3a145c: mov x1, x0
//  0x3a1460: ldur x0, [FP, #-8]
//  0x3a1464: stur x1, [FP, #-0x10]
//  0x3a1468: stur w0, [x1, #0xf]
//  0x3a146c: bl #0x2e3578
//  0x3a1470: fmov d0, #18.00000000
//  0x3a1474: stur x0, [FP, #-8]
//  0x3a1478: stur d0, [x0, #7]
//  0x3a147c: fmov d1, #16.00000000
//  0x3a1480: stur d1, [x0, #0xf]
//  0x3a1484: stur d0, [x0, #0x17]
//  0x3a1488: stur d1, [x0, #0x1f]
//  0x3a148c: add x1, PP, #0xc, lsl #12
//  0x3a1490: ldr x1, [x1, #0x810]
//  0x3a1494: ldr x4, [PP, #0x4c0]
//  0x3a1498: bl #0x3a1dcc
//  0x3a149c: stur x0, [FP, #-0x18]
//  0x3a14a0: bl #0x3a1dc0
//  0x3a14a4: mov x1, x0
//  0x3a14a8: ldur x0, [FP, #-0x18]
//  0x3a14ac: stur x1, [FP, #-0x20]
//  0x3a14b0: stur w0, [x1, #0xb]
//  0x3a14b4: bl #0x3949ec
//  0x3a14b8: mov x2, x0
//  0x3a14bc: add x0, PP, #0xe, lsl #12
//  0x3a14c0: ldr x0, [x0, #0xb50]
//  0x3a14c4: stur x2, [FP, #-0x18]
//  0x3a14c8: stur w0, [x2, #0x13]
//  0x3a14cc: add x1, PP, #0xc, lsl #12
//  0x3a14d0: ldr x1, [x1, #0x800]
//  0x3a14d4: ldr x4, [PP, #0x4c0]
//  0x3a14d8: bl #0x3a1dcc
//  0x3a14dc: stur x0, [FP, #-0x28]
//  0x3a14e0: bl #0x31abec
//  0x3a14e4: mov x1, x0
//  0x3a14e8: add x0, NULL, #0x20
//  0x3a14ec: stur x1, [FP, #-0x30]
//  0x3a14f0: stur w0, [x1, #7]
//  0x3a14f4: ldr x2, [PP, #0x6050]
//  0x3a14f8: stur w2, [x1, #0xb]
//  0x3a14fc: add x2, PP, #0xf, lsl #12
//  0x3a1500: ldr x2, [x2, #0x208]
//  0x3a1504: stur w2, [x1, #0x1f]
//  0x3a1508: add x2, PP, #0xe, lsl #12
//  0x3a150c: ldr x2, [x2, #0xe40]
//  0x3a1510: stur w2, [x1, #0x23]
//  0x3a1514: bl #0x393bf8
//  0x3a1518: mov x3, x0
//  0x3a151c: ldur x0, [FP, #-0x28]
//  0x3a1520: stur x3, [FP, #-0x38]
//  0x3a1524: stur w0, [x3, #0xb]
//  0x3a1528: ldur x0, [FP, #-0x30]
//  0x3a152c: stur w0, [x3, #0x13]
//  0x3a1530: mov x1, NULL
//  0x3a1534: mov x2, #2
//  0x3a1538: bl #0x61f920
//  0x3a153c: mov x2, x0
//  0x3a1540: ldur x0, [FP, #-0x38]
//  0x3a1544: stur x2, [FP, #-0x28]
//  0x3a1548: stur w0, [x2, #0xf]
//  0x3a154c: ldr x1, [PP, #0x5c58]
//  0x3a1550: bl #0x61e854
//  0x3a1554: mov x1, x0
//  0x3a1558: ldur x0, [FP, #-0x28]
//  0x3a155c: stur x1, [FP, #-0x30]
//  0x3a1560: stur w0, [x1, #0xf]
//  0x3a1564: mov x0, #2
//  0x3a1568: stur w0, [x1, #0xb]
//  0x3a156c: bl #0x39310c
//  0x3a1570: mov x1, x0
//  0x3a1574: add x0, PP, #0xa, lsl #12
//  0x3a1578: ldr x0, [x0, #0x858]
//  0x3a157c: stur x1, [FP, #-0x28]
//  0x3a1580: stur w0, [x1, #0xf]
//  0x3a1584: add x2, PP, #0xe, lsl #12
//  0x3a1588: ldr x2, [x2, #0xae0]
//  0x3a158c: stur w2, [x1, #0x13]
//  0x3a1590: add x3, PP, #0xe, lsl #12
//  0x3a1594: ldr x3, [x3, #0xae8]
//  0x3a1598: stur w3, [x1, #0x17]
//  0x3a159c: add x4, PP, #0xe, lsl #12
//  0x3a15a0: ldr x4, [x4, #0xb60]
//  0x3a15a4: stur w4, [x1, #0x1b]
//  0x3a15a8: add x5, PP, #0xe, lsl #12
//  0x3a15ac: ldr x5, [x5, #0xaf8]
//  0x3a15b0: stur w5, [x1, #0x23]
//  0x3a15b4: add x6, PP, #0xa, lsl #12
//  0x3a15b8: ldr x6, [x6, #0xa8]
//  0x3a15bc: stur w6, [x1, #0x2b]
//  0x3a15c0: stur xzr, [x1, #0x2f]
//  0x3a15c4: ldur x7, [FP, #-0x30]
//  0x3a15c8: stur w7, [x1, #0xb]
//  0x3a15cc: bl #0x3a1db4
//  0x3a15d0: mov x2, x0
//  0x3a15d4: add x0, PP, #0xa, lsl #12
//  0x3a15d8: ldr x0, [x0, #0x858]
//  0x3a15dc: stur x2, [FP, #-0x30]
//  0x3a15e0: stur w0, [x2, #0xb]
//  0x3a15e4: add x1, NULL, #0x30
//  0x3a15e8: stur w1, [x2, #0xf]
//  0x3a15ec: ldur x1, [FP, #-0x28]
//  0x3a15f0: stur w1, [x2, #0x23]
//  0x3a15f4: ldr x1, [PP, #0x77d8]
//  0x3a15f8: stur w1, [x2, #0x27]
//  0x3a15fc: add x1, PP, #0xe, lsl #12
//  0x3a1600: ldr x1, [x1, #0xf10]
//  0x3a1604: stur w1, [x2, #0x2b]
//  0x3a1608: add x1, PP, #0xf, lsl #12
//  0x3a160c: ldr x1, [x1, #0x140]
//  0x3a1610: stur w1, [x2, #0x2f]
//  0x3a1614: add x1, PP, #0xf, lsl #12
//  0x3a1618: ldr x1, [x1, #0x2f8]
//  0x3a161c: stur w1, [x2, #0x37]
//  0x3a1620: add x1, PP, #0xe, lsl #12
//  0x3a1624: ldr x1, [x1, #0xad0]
//  0x3a1628: bl #0x39fb14
//  0x3a162c: mov x3, x0
//  0x3a1630: mov x0, #1
//  0x3a1634: stur x3, [FP, #-0x28]
//  0x3a1638: stur x0, [x3, #0x13]
//  0x3a163c: add x0, PP, #0xe, lsl #12
//  0x3a1640: ldr x0, [x0, #0xad8]
//  0x3a1644: stur w0, [x3, #0x1b]
//  0x3a1648: ldur x0, [FP, #-0x30]
//  0x3a164c: stur w0, [x3, #0xb]
//  0x3a1650: mov x1, NULL
//  0x3a1654: mov x2, #6
//  0x3a1658: bl #0x61f920
//  0x3a165c: mov x2, x0
//  0x3a1660: ldur x0, [FP, #-0x20]
//  0x3a1664: stur x2, [FP, #-0x30]
//  0x3a1668: stur w0, [x2, #0xf]
//  0x3a166c: ldur x0, [FP, #-0x18]
//  0x3a1670: stur w0, [x2, #0x13]
//  0x3a1674: ldur x0, [FP, #-0x28]
//  0x3a1678: stur w0, [x2, #0x17]
//  0x3a167c: ldr x1, [PP, #0x5c58]
//  0x3a1680: bl #0x61e854
//  0x3a1684: mov x1, x0
//  0x3a1688: ldur x0, [FP, #-0x30]
//  0x3a168c: stur x1, [FP, #-0x18]
//  0x3a1690: stur w0, [x1, #0xf]
//  0x3a1694: mov x2, #6
//  0x3a1698: stur w2, [x1, #0xb]
//  0x3a169c: bl #0x39310c
//  0x3a16a0: mov x1, x0
//  0x3a16a4: add x0, PP, #0xa, lsl #12
//  0x3a16a8: ldr x0, [x0, #0x858]
//  0x3a16ac: stur x1, [FP, #-0x20]
//  0x3a16b0: stur w0, [x1, #0xf]
//  0x3a16b4: add x2, PP, #0xe, lsl #12
//  0x3a16b8: ldr x2, [x2, #0xae0]
//  0x3a16bc: stur w2, [x1, #0x13]
//  0x3a16c0: add x2, PP, #0xe, lsl #12
//  0x3a16c4: ldr x2, [x2, #0xae8]
//  0x3a16c8: stur w2, [x1, #0x17]
//  0x3a16cc: add x3, PP, #0xe, lsl #12
//  0x3a16d0: ldr x3, [x3, #0xb60]
//  0x3a16d4: stur w3, [x1, #0x1b]
//  0x3a16d8: add x4, PP, #0xe, lsl #12
//  0x3a16dc: ldr x4, [x4, #0xaf8]
//  0x3a16e0: stur w4, [x1, #0x23]
//  0x3a16e4: add x5, PP, #0xa, lsl #12
//  0x3a16e8: ldr x5, [x5, #0xa8]
//  0x3a16ec: stur w5, [x1, #0x2b]
//  0x3a16f0: stur xzr, [x1, #0x2f]
//  0x3a16f4: ldur x6, [FP, #-0x18]
//  0x3a16f8: stur w6, [x1, #0xb]
//  0x3a16fc: bl #0x3a1da8
//  0x3a1700: add x17, PP, #0x12, lsl #12
//  0x3a1704: ldr d0, [x17, #0x550]
//  0x3a1708: stur x0, [FP, #-0x18]
//  0x3a170c: stur d0, [x0, #0xb]
//  0x3a1710: add x17, PP, #0x12, lsl #12
//  0x3a1714: ldr d0, [x17, #0x558]
//  0x3a1718: stur d0, [x0, #0x13]
//  0x3a171c: ldur x1, [FP, #-0x20]
//  0x3a1720: stur w1, [x0, #0x1b]
//  0x3a1724: ldur x1, [FP, #-8]
//  0x3a1728: stur w1, [x0, #0x1f]
//  0x3a172c: bl #0x3949ec
//  0x3a1730: mov x1, x0
//  0x3a1734: add x0, PP, #0x12, lsl #12
//  0x3a1738: ldr x0, [x0, #0x560]
//  0x3a173c: stur x1, [FP, #-8]
//  0x3a1740: stur w0, [x1, #0x13]
//  0x3a1744: bl #0x3a142c
//  0x3a1748: mov x1, x0
//  0x3a174c: add x0, PP, #0x12, lsl #12
//  0x3a1750: ldr x0, [x0, #0x568]
//  0x3a1754: stur x1, [FP, #-0x20]
//  0x3a1758: stur w0, [x1, #0xb]
//  0x3a175c: add x0, PP, #0xf, lsl #12
//  0x3a1760: ldr x0, [x0, #0x170]
//  0x3a1764: stur w0, [x1, #0xf]
//  0x3a1768: add x0, PP, #0x12, lsl #12
//  0x3a176c: ldr x0, [x0, #0x560]
//  0x3a1770: stur w0, [x1, #0x13]
//  0x3a1774: stur w0, [x1, #0x17]
//  0x3a1778: bl #0x391a04
//  0x3a177c: stur x0, [FP, #-0x28]
//  0x3a1780: ldur BARRIER, [FP, #-0x20]
//  0x3a1784: str BARRIER, [SP]
//  0x3a1788: mov x1, x0
//  0x3a178c: add x4, PP, #0xc, lsl #12
//  0x3a1790: ldr x4, [x4, #0x1f8]
//  0x3a1794: bl #0x391490
//  0x3a1798: bl #0x3a1d94
//  0x3a179c: ldur x2, [FP, #-0x10]
//  0x3a17a0: add x1, PP, #0x12, lsl #12
//  0x3a17a4: ldr x1, [x1, #0x570]
//  0x3a17a8: stur x0, [FP, #-0x10]
//  0x3a17ac: bl #0x61ec54
//  0x3a17b0: ldur BARRIER, [FP, #-0x28]
//  0x3a17b4: stp x0, BARRIER, [SP]
//  0x3a17b8: ldur x1, [FP, #-0x10]
//  0x3a17bc: add x4, PP, #0xe, lsl #12
//  0x3a17c0: ldr x4, [x4, #0xec0]
//  0x3a17c4: bl #0x3a18c4
//  0x3a17c8: mov x1, NULL
//  0x3a17cc: mov x2, #6
//  0x3a17d0: bl #0x61f920
//  0x3a17d4: mov x2, x0
//  0x3a17d8: ldur x0, [FP, #-0x18]
//  0x3a17dc: stur x2, [FP, #-0x20]
//  0x3a17e0: stur w0, [x2, #0xf]
//  0x3a17e4: ldur x0, [FP, #-8]
//  0x3a17e8: stur w0, [x2, #0x13]
//  0x3a17ec: ldur x0, [FP, #-0x10]
//  0x3a17f0: stur w0, [x2, #0x17]
//  0x3a17f4: ldr x1, [PP, #0x5c58]
//  0x3a17f8: bl #0x61e854
//  0x3a17fc: mov x1, x0
//  0x3a1800: ldur x0, [FP, #-0x20]
//  0x3a1804: stur x1, [FP, #-8]
//  0x3a1808: stur w0, [x1, #0xf]
//  0x3a180c: mov x0, #6
//  0x3a1810: stur w0, [x1, #0xb]
//  0x3a1814: bl #0x39310c
//  0x3a1818: mov x1, x0
//  0x3a181c: add x0, PP, #0xa, lsl #12
//  0x3a1820: ldr x0, [x0, #0x858]
//  0x3a1824: stur x1, [FP, #-0x10]
//  0x3a1828: stur w0, [x1, #0xf]
//  0x3a182c: add x0, PP, #0xf, lsl #12
//  0x3a1830: ldr x0, [x0, #0x288]
//  0x3a1834: stur w0, [x1, #0x13]
//  0x3a1838: add x0, PP, #0xe, lsl #12
//  0x3a183c: ldr x0, [x0, #0xae8]
//  0x3a1840: stur w0, [x1, #0x17]
//  0x3a1844: add x0, PP, #0xe, lsl #12
//  0x3a1848: ldr x0, [x0, #0xb60]
//  0x3a184c: stur w0, [x1, #0x1b]
//  0x3a1850: add x0, PP, #0xe, lsl #12
//  0x3a1854: ldr x0, [x0, #0xaf8]
//  0x3a1858: stur w0, [x1, #0x23]
//  0x3a185c: add x0, PP, #0xa, lsl #12
//  0x3a1860: ldr x0, [x0, #0xa8]
//  0x3a1864: stur w0, [x1, #0x2b]
//  0x3a1868: stur xzr, [x1, #0x2f]
//  0x3a186c: ldur x2, [FP, #-8]
//  0x3a1870: stur w2, [x1, #0xb]
//  0x3a1874: bl #0x3949f8
//  0x3a1878: add x1, PP, #0x12, lsl #12
//  0x3a187c: ldr x1, [x1, #0x578]
//  0x3a1880: stur w1, [x0, #0xf]
//  0x3a1884: stur xzr, [x0, #0x13]
//  0x3a1888: add x1, NULL, #0x20
//  0x3a188c: stur w1, [x0, #0x2f]
//  0x3a1890: add x1, PP, #0xa, lsl #12
//  0x3a1894: ldr x1, [x1, #0xa8]
//  0x3a1898: stur w1, [x0, #0x33]
//  0x3a189c: add x1, PP, #0xc, lsl #12
//  0x3a18a0: ldr x1, [x1, #0x258]
//  0x3a18a4: stur w1, [x0, #0x37]
//  0x3a18a8: ldur x1, [FP, #-0x10]
//  0x3a18ac: stur w1, [x0, #0xb]
//  0x3a18b0: mov SP, FP
//  0x3a18b4: ldp FP, LR, [SP], #0x10
//  0x3a18b8: ret 
//  0x3a18bc: bl #0x61fa28
//  0x3a18c0: b #0x3a1454
//
dynamic GameFruitRuleWidget_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x7;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a1438
  // frame: FP = SP // 0x3a143c
  // frame: SP = SP - 0x48 // 0x3a1440
  local_m8 = x2; // 0x3a1444
  BARRIER = mem(THR, 0x38); // 0x3a1448
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a18bc
  }
  x1 = 1; // 0x3a1454
  sub_0x61e890(); // 0x3a1458
  x0 = local_m8; // 0x3a1460
  x1 = x0; // 0x3a145c
  local_m10 = x1; // 0x3a1464
  memSet(x1, 0xf, w0); // 0x3a1468
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x3a146c
  d0 = 18.00000000 /* bits */; // 0x3a1470
  local_m8 = x0; // 0x3a1474
  memSet(x0, 7, d0); // 0x3a1478
  d1 = 16.00000000 /* bits */; // 0x3a147c
  memSet(x0, 0xf, d1); // 0x3a1480
  memSet(x0, 0x17, d0); // 0x3a1484
  memSet(x0, 0x1f, d1); // 0x3a1488
  x1 = "virtual_party_fruitland_page_rules_popup_title" /* pp+0xc810 */; // 0x3a1490
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3a1494
  getString() /* 0x3a1dcc */; // 0x3a1498
  local_m18 = x0; // 0x3a149c
  AllocationStub_GameRuleTitleWidget() /* 0x3a1dc0 */; // 0x3a14a0
  x0 = local_m18; // 0x3a14a8
  x1 = x0; // 0x3a14a4
  local_m20 = x1; // 0x3a14ac
  memSet(x1, 0xb, w0); // 0x3a14b0
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x3a14b4
  x0 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x3a14c0
  x2 = x0; // 0x3a14b8
  local_m18 = x2; // 0x3a14c4
  memSet(x2, 0x13, w0); // 0x3a14c8
  x1 = "virtual_party_fruitland_page_rules_popup_content" /* pp+0xc800 */; // 0x3a14d0
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3a14d4
  getString() /* 0x3a1dcc */; // 0x3a14d8
  local_m28 = x0; // 0x3a14dc
  AllocationStub_TextStyle() /* 0x31abec */; // 0x3a14e0
  x0 = NULL + 0x20; // 0x3a14e8
  x1 = x0; // 0x3a14e4
  local_m30 = x1; // 0x3a14ec
  memSet(x1, 7, w0); // 0x3a14f0
  x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x3a14f4
  memSet(x1, 0xb, w2); // 0x3a14f8
  x2 = mem((PP + 0xf000), 0x208) /* Double */; // 0x3a1500
  memSet(x1, 0x1f, w2); // 0x3a1504
  x2 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x3a150c
  memSet(x1, 0x23, w2); // 0x3a1510
  AllocationStub_Text() /* 0x393bf8 */; // 0x3a1514
  x0 = local_m28; // 0x3a151c
  x3 = x0; // 0x3a1518
  local_m38 = x3; // 0x3a1520
  memSet(x3, 0xb, w0); // 0x3a1524
  x0 = local_m30; // 0x3a1528
  memSet(x3, 0x13, w0); // 0x3a152c
  x1 = NULL; // 0x3a1530
  x2 = 2; // 0x3a1534
  sub_0x61f920(); // 0x3a1538
  x0 = local_m38; // 0x3a1540
  x2 = x0; // 0x3a153c
  local_m28 = x2; // 0x3a1544
  memSet(x2, 0xf, w0); // 0x3a1548
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3a154c
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3a1550
  x0 = local_m28; // 0x3a1558
  x1 = x0; // 0x3a1554
  local_m30 = x1; // 0x3a155c
  memSet(x1, 0xf, w0); // 0x3a1560
  x0 = 2; // 0x3a1564
  memSet(x1, 0xb, w0); // 0x3a1568
  AllocationStub_Column() /* 0x39310c */; // 0x3a156c
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3a1578
  x1 = x0; // 0x3a1570
  local_m28 = x1; // 0x3a157c
  memSet(x1, 0xf, w0); // 0x3a1580
  x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3a1588
  memSet(x1, 0x13, w2); // 0x3a158c
  x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3a1594
  memSet(x1, 0x17, w3); // 0x3a1598
  x4 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3a15a0
  memSet(x1, 0x1b, w4); // 0x3a15a4
  x5 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3a15ac
  memSet(x1, 0x23, w5); // 0x3a15b0
  x6 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3a15b8
  memSet(x1, 0x2b, w6); // 0x3a15bc
  memSet(x1, 0x2f, xzr); // 0x3a15c0
  x7 = local_m30; // 0x3a15c4
  memSet(x1, 0xb, w7); // 0x3a15c8
  AllocationStub_SingleChildScrollView() /* 0x3a1db4 */; // 0x3a15cc
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3a15d8
  x2 = x0; // 0x3a15d0
  local_m30 = x2; // 0x3a15dc
  memSet(x2, 0xb, w0); // 0x3a15e0
  x1 = NULL + 0x30; // 0x3a15e4
  memSet(x2, 0xf, w1); // 0x3a15e8
  x1 = local_m28; // 0x3a15ec
  memSet(x2, 0x23, w1); // 0x3a15f0
  x1 = mem(PP, 0x77d8) /* Obj!DragStartBehavior@122d8  */; // 0x3a15f4
  memSet(x2, 0x27, w1); // 0x3a15f8
  x1 = mem((PP + 0xe000), 0xf10) /* Obj!Clip@12345  */; // 0x3a1600
  memSet(x2, 0x2b, w1); // 0x3a1604
  x1 = mem((PP + 0xf000), 0x140) /* Obj!HitTestBehavior@12262  */; // 0x3a160c
  memSet(x2, 0x2f, w1); // 0x3a1610
  x1 = mem((PP + 0xf000), 0x2f8); // 0x3a1618
  memSet(x2, 0x37, w1); // 0x3a161c
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x3a1624
  AllocationStub_Expanded() /* 0x39fb14 */; // 0x3a1628
  x0 = 1; // 0x3a1630
  x3 = x0; // 0x3a162c
  local_m28 = x3; // 0x3a1634
  memSet(x3, 0x13, x0); // 0x3a1638
  x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x3a1640
  memSet(x3, 0x1b, w0); // 0x3a1644
  x0 = local_m30; // 0x3a1648
  memSet(x3, 0xb, w0); // 0x3a164c
  x1 = NULL; // 0x3a1650
  x2 = 6; // 0x3a1654
  sub_0x61f920(); // 0x3a1658
  x0 = local_m20; // 0x3a1660
  x2 = x0; // 0x3a165c
  local_m30 = x2; // 0x3a1664
  memSet(x2, 0xf, w0); // 0x3a1668
  x0 = local_m18; // 0x3a166c
  memSet(x2, 0x13, w0); // 0x3a1670
  x0 = local_m28; // 0x3a1674
  memSet(x2, 0x17, w0); // 0x3a1678
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3a167c
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3a1680
  x0 = local_m30; // 0x3a1688
  x1 = x0; // 0x3a1684
  local_m18 = x1; // 0x3a168c
  memSet(x1, 0xf, w0); // 0x3a1690
  x2 = 6; // 0x3a1694
  memSet(x1, 0xb, w2); // 0x3a1698
  AllocationStub_Column() /* 0x39310c */; // 0x3a169c
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3a16a8
  x1 = x0; // 0x3a16a0
  local_m20 = x1; // 0x3a16ac
  memSet(x1, 0xf, w0); // 0x3a16b0
  x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x3a16b8
  memSet(x1, 0x13, w2); // 0x3a16bc
  x2 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3a16c4
  memSet(x1, 0x17, w2); // 0x3a16c8
  x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3a16d0
  memSet(x1, 0x1b, w3); // 0x3a16d4
  x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3a16dc
  memSet(x1, 0x23, w4); // 0x3a16e0
  x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3a16e8
  memSet(x1, 0x2b, w5); // 0x3a16ec
  memSet(x1, 0x2f, xzr); // 0x3a16f0
  x6 = local_m18; // 0x3a16f4
  memSet(x1, 0xb, w6); // 0x3a16f8
  AllocationStub_GameFruitBackgroundDialog() /* 0x3a1da8 */; // 0x3a16fc
  d0 = 4644671367260667904; // 0x3a1704
  x17 = PP + 0x12000; // 0x3a1700
  local_m18 = x0; // 0x3a1708
  memSet(x0, 0xb, d0); // 0x3a170c
  d0 = 4644548221958356992; // 0x3a1714
  x17 = PP + 0x12000; // 0x3a1710
  memSet(x0, 0x13, d0); // 0x3a1718
  x1 = local_m20; // 0x3a171c
  memSet(x0, 0x1b, w1); // 0x3a1720
  x1 = local_m8; // 0x3a1724
  memSet(x0, 0x1f, w1); // 0x3a1728
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x3a172c
  x0 = mem((PP + 0x12000), 0x560) /* Double */; // 0x3a1738
  x1 = x0; // 0x3a1730
  local_m8 = x1; // 0x3a173c
  memSet(x1, 0x13, w0); // 0x3a1740
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x3a1744
  x0 = "assets/images/3.0x/game_fruit_icon_close.webp" /* pp+0x12568 */; // 0x3a1750
  x1 = x0; // 0x3a1748
  local_m20 = x1; // 0x3a1754
  memSet(x1, 0xb, w0); // 0x3a1758
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x3a1760
  memSet(x1, 0xf, w0); // 0x3a1764
  x0 = mem((PP + 0x12000), 0x560) /* Double */; // 0x3a176c
  memSet(x1, 0x13, w0); // 0x3a1770
  memSet(x1, 0x17, w0); // 0x3a1774
  AllocationStub_Container() /* 0x391a04 */; // 0x3a1778
  local_m28 = x0; // 0x3a177c
  BARRIER = local_m20; // 0x3a1780
  local_0 = BARRIER; // 0x3a1784
  x1 = x0; // 0x3a1788
  x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x3a1790
  Container_ctor() /* 0x391490 */; // 0x3a1794
  sub_0x3a1d94(); // 0x3a1798
  x1 = mem((PP + 0x12000), 0x570) /* Function */; // 0x3a17a4
  x2 = local_m10; // 0x3a179c
  local_m10 = x0; // 0x3a17a8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x3a17ac
  BARRIER = local_m28; // 0x3a17b0
  // frame: x0, BARRIER, mem(SP) // 0x3a17b4
  x1 = local_m10; // 0x3a17b8
  x4 = mem((PP + 0xe000), 0xec0) /* ImmutableArray */; // 0x3a17c0
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x3a17c4
  x1 = NULL; // 0x3a17c8
  x2 = 6; // 0x3a17cc
  sub_0x61f920(); // 0x3a17d0
  x0 = local_m18; // 0x3a17d8
  x2 = x0; // 0x3a17d4
  local_m20 = x2; // 0x3a17dc
  memSet(x2, 0xf, w0); // 0x3a17e0
  x0 = local_m8; // 0x3a17e4
  memSet(x2, 0x13, w0); // 0x3a17e8
  x0 = local_m10; // 0x3a17ec
  memSet(x2, 0x17, w0); // 0x3a17f0
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x3a17f4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x3a17f8
  x0 = local_m20; // 0x3a1800
  x1 = x0; // 0x3a17fc
  local_m8 = x1; // 0x3a1804
  memSet(x1, 0xf, w0); // 0x3a1808
  x0 = 6; // 0x3a180c
  memSet(x1, 0xb, w0); // 0x3a1810
  AllocationStub_Column() /* 0x39310c */; // 0x3a1814
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x3a1820
  x1 = x0; // 0x3a1818
  local_m10 = x1; // 0x3a1824
  memSet(x1, 0xf, w0); // 0x3a1828
  x0 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x3a1830
  memSet(x1, 0x13, w0); // 0x3a1834
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x3a183c
  memSet(x1, 0x17, w0); // 0x3a1840
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x3a1848
  memSet(x1, 0x1b, w0); // 0x3a184c
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x3a1854
  memSet(x1, 0x23, w0); // 0x3a1858
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3a1860
  memSet(x1, 0x2b, w0); // 0x3a1864
  memSet(x1, 0x2f, xzr); // 0x3a1868
  x2 = local_m8; // 0x3a186c
  memSet(x1, 0xb, w2); // 0x3a1870
  AllocationStub_Material() /* 0x3949f8 */; // 0x3a1874
  x1 = mem((PP + 0x12000), 0x578) /* Obj!MaterialType@122b4  */; // 0x3a187c
  memSet(x0, 0xf, w1); // 0x3a1880
  memSet(x0, 0x13, xzr); // 0x3a1884
  x1 = NULL + 0x20; // 0x3a1888
  memSet(x0, 0x2f, w1); // 0x3a188c
  x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x3a1894
  memSet(x0, 0x33, w1); // 0x3a1898
  x1 = mem((PP + 0xc000), 0x258) /* Obj!Duration@12360  */; // 0x3a18a0
  memSet(x0, 0x37, w1); // 0x3a18a4
  x1 = local_m10; // 0x3a18a8
  memSet(x0, 0xb, w1); // 0x3a18ac
  SP = FP; // 0x3a18b0
  // frame: FP, LR, mem(SP), 0x10 // 0x3a18b4
  return;
}

// GameFruitRuleWidget_anon_closure
// raw disassembly:
//  0x3a256c: stp FP, LR, [SP, #-0x10]!
//  0x3a2570: mov FP, SP
//  0x3a2574: sub SP, SP, #0x28
//  0x3a2578: ldr x0, [FP, #0x10]
//  0x3a257c: ldur w1, [x0, #0x17]
//  0x3a2580: add x1, x1, HEAP, lsl #32
//  0x3a2584: ldr BARRIER, [THR, #0x38]
//  0x3a2588: cmp SP, BARRIER
//  0x3a258c: b.ls #0x3a2644
//  0x3a2590: ldur w0, [x1, #0xf]
//  0x3a2594: add x0, x0, HEAP, lsl #32
//  0x3a2598: mov x1, x0
//  0x3a259c: ldr x4, [PP, #0x4c0]
//  0x3a25a0: bl #0x3a4e94
//  0x3a25a4: stur x0, [FP, #-8]
//  0x3a25a8: ldur x1, [x0, #-1]
//  0x3a25ac: ubfx x1, x1, #0xc, #0x14
//  0x3a25b0: cmp x1, #0x8e7
//  0x3a25b4: b.ne #0x3a2610
//  0x3a25b8: mov x1, x0
//  0x3a25bc: bl #0x3a4d94
//  0x3a25c0: tbz w0, #4, #0x3a25f4
//  0x3a25c4: bl #0x3a4c98
//  0x3a25c8: stur x0, [FP, #-0x10]
//  0x3a25cc: ldr BARRIER, [THR, #0x90]
//  0x3a25d0: stp BARRIER, NULL, [SP]
//  0x3a25d4: bl #0x27c0c8
//  0x3a25d8: ldr BARRIER, [PP, #0x120]
//  0x3a25dc: ldur LR, [FP, #-0x10]
//  0x3a25e0: stp LR, BARRIER, [SP, #8]
//  0x3a25e4: str x0, [SP]
//  0x3a25e8: ldr x4, [PP, #0x58]
//  0x3a25ec: bl #0x3a264c
//  0x3a25f0: b #0x3a2634
//  0x3a25f4: ldr BARRIER, [PP, #0x1a8]
//  0x3a25f8: ldur LR, [FP, #-8]
//  0x3a25fc: stp LR, BARRIER, [SP, #8]
//  0x3a2600: str NULL, [SP]
//  0x3a2604: ldr x4, [PP, #0x58]
//  0x3a2608: bl #0x5e0d74
//  0x3a260c: b #0x3a2634
//  0x3a2610: ldur x1, [x0, #-1]
//  0x3a2614: ubfx x1, x1, #0xc, #0x14
//  0x3a2618: ldr BARRIER, [PP, #0x1a8]
//  0x3a261c: stp x0, BARRIER, [SP]
//  0x3a2620: mov x0, x1
//  0x3a2624: ldr x4, [PP, #0x910]
//  0x3a2628: sub LR, x0, #1, lsl #12
//  0x3a262c: ldr LR, [x21, LR, lsl #3]
//  0x3a2630: blr LR
//  0x3a2634: mov x0, NULL
//  0x3a2638: mov SP, FP
//  0x3a263c: ldp FP, LR, [SP], #0x10
//  0x3a2640: ret 
//  0x3a2644: bl #0x61fa28
//  0x3a2648: b #0x3a2590
//
dynamic GameFruitRuleWidget_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x3a256c
  BARRIER = mem(THR, 0x38); // 0x3a2584
  // frame: FP = SP // 0x3a2570
  // frame: SP = SP - 0x28 // 0x3a2574
  w1 = mem((local_10), 0x17); // 0x3a257c
  x0 = local_10; // 0x3a2578
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x3a2580
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x3a2644
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x3a2594
  x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x3a2598
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x3a259c
  Navigator_of() /* 0x3a4e94 */; // 0x3a25a0
  local_m8 = x0; // 0x3a25a4
  x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3a25ac
  if (x1 != 0x8e7) {
    BARRIER = mem(PP, 0x1a8) /* TypeArguments */; // 0x3a2618
    x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x3a2614
    // frame: x0, BARRIER, mem(SP) // 0x3a261c
    LR = mem(x21, ((x0 - 0x1000) << 3)); // 0x3a262c
    x0 = x1; // 0x3a2620
    x4 = mem(PP, 0x910) /* ImmutableArray */; // 0x3a2624
    callIndirect(LR); // 0x3a2630
  } else {
    x1 = x0; // 0x3a25b8
    NavigatorState_canPop() /* 0x3a4d94 */; // 0x3a25bc
    if (x0 & (1 << 4) == 0) {
      BARRIER = mem(PP, 0x1a8) /* TypeArguments */; // 0x3a25f4
      LR = local_m8; // 0x3a25f8
      // frame: LR, BARRIER, mem(SP, 8) // 0x3a25fc
      local_0 = NULL; // 0x3a2600
      x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x3a2604
      NavigatorState_pop() /* 0x5e0d74 */; // 0x3a2608
    } else {
      BoostNavigator_get_instance() /* 0x3a4c98 */; // 0x3a25c4
      local_m10 = x0; // 0x3a25c8
      BARRIER = mem(THR, 0x90); // 0x3a25cc
      // frame: BARRIER, NULL, mem(SP) // 0x3a25d0
      Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x3a25d4
      BARRIER = mem(PP, 0x120) /* TypeArguments */; // 0x3a25d8
      LR = local_m10; // 0x3a25dc
      // frame: LR, BARRIER, mem(SP, 8) // 0x3a25e0
      local_0 = x0; // 0x3a25e4
      x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x3a25e8
      BoostNavigator_pop() /* 0x3a264c */; // 0x3a25ec
    }
  }
  SP = FP; // 0x3a2638
  x0 = NULL; // 0x3a2634
  // frame: FP, LR, mem(SP), 0x10 // 0x3a263c
  return;
}

// GameFruitBetRecordDialog_showGameRuleDialog
// raw disassembly:
//  0x41bc48: stp FP, LR, [SP, #-0x10]!
//  0x41bc4c: mov FP, SP
//  0x41bc50: sub SP, SP, #0x20
//  0x41bc54: mov x0, x1
//  0x41bc58: stur x1, [FP, #-8]
//  0x41bc5c: ldr BARRIER, [THR, #0x38]
//  0x41bc60: cmp SP, BARRIER
//  0x41bc64: b.ls #0x41bc9c
//  0x41bc68: add x1, PP, #0x11, lsl #12
//  0x41bc6c: ldr x1, [x1, #0xbc8]
//  0x41bc70: mov x2, NULL
//  0x41bc74: bl #0x61ec54
//  0x41bc78: stp x0, NULL, [SP, #8]
//  0x41bc7c: ldur BARRIER, [FP, #-8]
//  0x41bc80: str BARRIER, [SP]
//  0x41bc84: ldr x4, [PP, #0x58]
//  0x41bc88: bl #0x41bcc4
//  0x41bc8c: mov x0, NULL
//  0x41bc90: mov SP, FP
//  0x41bc94: ldp FP, LR, [SP], #0x10
//  0x41bc98: ret 
//  0x41bc9c: bl #0x61fa28
//  0x41bca0: b #0x41bc68
//
dynamic GameFruitBetRecordDialog_showGameRuleDialog() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41bc48
  // frame: FP = SP // 0x41bc4c
  // frame: SP = SP - 0x20 // 0x41bc50
  x0 = x1; // 0x41bc54
  local_m8 = x1; // 0x41bc58
  BARRIER = mem(THR, 0x38); // 0x41bc5c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41bc9c
  }
  x1 = mem((PP + 0x11000), 0xbc8) /* Function */; // 0x41bc6c
  x2 = NULL; // 0x41bc70
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41bc74
  // frame: x0, NULL, mem(SP, 8) // 0x41bc78
  BARRIER = local_m8; // 0x41bc7c
  local_0 = BARRIER; // 0x41bc80
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x41bc84
  showDialog() /* 0x41bcc4 */; // 0x41bc88
  SP = FP; // 0x41bc90
  x0 = NULL; // 0x41bc8c
  // frame: FP, LR, mem(SP), 0x10 // 0x41bc94
  return;
}

// GameFruitBetRecordDialog_anon_closure
// raw disassembly:
//  0x41c2fc: stp FP, LR, [SP, #-0x10]!
//  0x41c300: mov FP, SP
//  0x41c304: bl #0x41c314
//  0x41c308: mov SP, FP
//  0x41c30c: ldp FP, LR, [SP], #0x10
//  0x41c310: ret 
//
dynamic GameFruitBetRecordDialog_anon_closure() {
  dynamic FP;
  dynamic SP;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41c2fc
  // frame: FP = SP // 0x41c300
  AllocationStub_GameFruitRuleWidget() /* 0x41c314 */; // 0x41c304
  SP = FP; // 0x41c308
  // frame: FP, LR, mem(SP), 0x10 // 0x41c30c
  return;
}

// GameFruitBetRecordDialog_showGameDialog
// raw disassembly:
//  0x41c4e8: stp FP, LR, [SP, #-0x10]!
//  0x41c4ec: mov FP, SP
//  0x41c4f0: sub SP, SP, #0x20
//  0x41c4f4: mov x0, x1
//  0x41c4f8: stur x1, [FP, #-8]
//  0x41c4fc: ldr BARRIER, [THR, #0x38]
//  0x41c500: cmp SP, BARRIER
//  0x41c504: b.ls #0x41c53c
//  0x41c508: add x1, PP, #0x11, lsl #12
//  0x41c50c: ldr x1, [x1, #0xbf8]
//  0x41c510: mov x2, NULL
//  0x41c514: bl #0x61ec54
//  0x41c518: stp x0, NULL, [SP, #8]
//  0x41c51c: ldur BARRIER, [FP, #-8]
//  0x41c520: str BARRIER, [SP]
//  0x41c524: ldr x4, [PP, #0x58]
//  0x41c528: bl #0x41bcc4
//  0x41c52c: mov x0, NULL
//  0x41c530: mov SP, FP
//  0x41c534: ldp FP, LR, [SP], #0x10
//  0x41c538: ret 
//  0x41c53c: bl #0x61fa28
//  0x41c540: b #0x41c508
//
dynamic GameFruitBetRecordDialog_showGameDialog() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41c4e8
  // frame: FP = SP // 0x41c4ec
  // frame: SP = SP - 0x20 // 0x41c4f0
  x0 = x1; // 0x41c4f4
  local_m8 = x1; // 0x41c4f8
  BARRIER = mem(THR, 0x38); // 0x41c4fc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41c53c
  }
  x1 = mem((PP + 0x11000), 0xbf8) /* Function */; // 0x41c50c
  x2 = NULL; // 0x41c510
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41c514
  // frame: x0, NULL, mem(SP, 8) // 0x41c518
  BARRIER = local_m8; // 0x41c51c
  local_0 = BARRIER; // 0x41c520
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x41c524
  showDialog() /* 0x41bcc4 */; // 0x41c528
  SP = FP; // 0x41c530
  x0 = NULL; // 0x41c52c
  // frame: FP, LR, mem(SP), 0x10 // 0x41c534
  return;
}

// GameFruitBetRecordDialog_anon_closure_2
// raw disassembly:
//  0x41c544: stp FP, LR, [SP, #-0x10]!
//  0x41c548: mov FP, SP
//  0x41c54c: bl #0x41c55c
//  0x41c550: mov SP, FP
//  0x41c554: ldp FP, LR, [SP], #0x10
//  0x41c558: ret 
//
dynamic GameFruitBetRecordDialog_anon_closure_2() {
  dynamic FP;
  dynamic SP;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41c544
  // frame: FP = SP // 0x41c548
  AllocationStub_GameFruitBetRecordDialog() /* 0x41c55c */; // 0x41c54c
  SP = FP; // 0x41c550
  // frame: FP, LR, mem(SP), 0x10 // 0x41c554
  return;
}

// GameFruitBetRecordDialog_createState
// raw disassembly:
//  0x4c393c: stp FP, LR, [SP, #-0x10]!
//  0x4c3940: mov FP, SP
//  0x4c3944: sub SP, SP, #0x10
//  0x4c3948: ldr BARRIER, [THR, #0x38]
//  0x4c394c: cmp SP, BARRIER
//  0x4c3950: b.ls #0x4c39b4
//  0x4c3954: add x1, PP, #0x12, lsl #12
//  0x4c3958: ldr x1, [x1, #0x588]
//  0x4c395c: bl #0x4c3a84
//  0x4c3960: mov x1, x0
//  0x4c3964: ldr x0, [PP, #0x40]
//  0x4c3968: stur x1, [FP, #-8]
//  0x4c396c: stur w0, [x1, #0x17]
//  0x4c3970: bl #0x4c3a78
//  0x4c3974: mov x1, x0
//  0x4c3978: stur x0, [FP, #-0x10]
//  0x4c397c: bl #0x4c39bc
//  0x4c3980: ldur x0, [FP, #-0x10]
//  0x4c3984: ldur x1, [FP, #-8]
//  0x4c3988: stur w0, [x1, #0x13]
//  0x4c398c: ldurb w16, [x1, #-1]
//  0x4c3990: ldurb w17, [x0, #-1]
//  0x4c3994: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3998: tst BARRIER, HEAP, lsr #32
//  0x4c399c: b.eq #0x4c39a4
//  0x4c39a0: bl #0x61e04c
//  0x4c39a4: mov x0, x1
//  0x4c39a8: mov SP, FP
//  0x4c39ac: ldp FP, LR, [SP], #0x10
//  0x4c39b0: ret 
//  0x4c39b4: bl #0x61fa28
//  0x4c39b8: b #0x4c3954
//
dynamic GameFruitBetRecordDialog_createState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c393c
  BARRIER = mem(THR, 0x38); // 0x4c3948
  // frame: FP = SP // 0x4c3940
  // frame: SP = SP - 0x10 // 0x4c3944
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c39b4
  }
  x1 = mem((PP + 0x12000), 0x588) /* TypeArguments */; // 0x4c3958
  AllocationStub__GameFruitBetRecordDialogState() /* 0x4c3a84 */; // 0x4c395c
  x0 = mem(PP, 0x40) /* Obj!? */; // 0x4c3964
  x1 = x0; // 0x4c3960
  local_m8 = x1; // 0x4c3968
  memSet(x1, 0x17, w0); // 0x4c396c
  AllocationStub_GameFruitBetRecordNotifier() /* 0x4c3a78 */; // 0x4c3970
  x1 = x0; // 0x4c3974
  local_m10 = x0; // 0x4c3978
  GameFruitBetRecordNotifier_ctor() /* 0x4c39bc */; // 0x4c397c
  x0 = local_m10; // 0x4c3980
  x1 = local_m8; // 0x4c3984
  memSet(x1, 0x13, w0); // 0x4c3988
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3994
  w16 = mem(x1, -1); // 0x4c398c
  w17 = mem(x0, -1); // 0x4c3990
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c398c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3990
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c39a0
  }
  SP = FP; // 0x4c39a8
  x0 = x1; // 0x4c39a4
  // frame: FP, LR, mem(SP), 0x10 // 0x4c39ac
  return;
}

// GameFruitBetRecordDialogState_build
// raw disassembly:
//  0x434774: stp FP, LR, [SP, #-0x10]!
//  0x434778: mov FP, SP
//  0x43477c: sub SP, SP, #0x18
//  0x434780: stur x1, [FP, #-8]
//  0x434784: ldr BARRIER, [THR, #0x38]
//  0x434788: cmp SP, BARRIER
//  0x43478c: b.ls #0x434824
//  0x434790: mov x1, #1
//  0x434794: bl #0x61e890
//  0x434798: mov x1, x0
//  0x43479c: ldur x0, [FP, #-8]
//  0x4347a0: stur w0, [x1, #0xf]
//  0x4347a4: ldur w3, [x0, #0x13]
//  0x4347a8: add x3, x3, HEAP, lsl #32
//  0x4347ac: mov x2, x1
//  0x4347b0: stur x3, [FP, #-0x10]
//  0x4347b4: add x1, PP, #0x15, lsl #12
//  0x4347b8: ldr x1, [x1, #0x390]
//  0x4347bc: bl #0x61ec54
//  0x4347c0: add x1, PP, #0x15, lsl #12
//  0x4347c4: ldr x1, [x1, #0x398]
//  0x4347c8: stur x0, [FP, #-8]
//  0x4347cc: bl #0x3b81c4
//  0x4347d0: mov x2, x0
//  0x4347d4: ldur x0, [FP, #-8]
//  0x4347d8: stur x2, [FP, #-0x18]
//  0x4347dc: stur w0, [x2, #0x1b]
//  0x4347e0: add x1, PP, #0x15, lsl #12
//  0x4347e4: ldr x1, [x1, #0x398]
//  0x4347e8: bl #0x41a408
//  0x4347ec: mov x1, x0
//  0x4347f0: ldur x0, [FP, #-0x10]
//  0x4347f4: stur w0, [x1, #0xb]
//  0x4347f8: add x0, PP, #0xc, lsl #12
//  0x4347fc: ldr x0, [x0, #0x2f0]
//  0x434800: stur w0, [x1, #0x13]
//  0x434804: ldur x0, [FP, #-0x18]
//  0x434808: stur w1, [x0, #0x13]
//  0x43480c: mov x1, x0
//  0x434810: bl #0x60bd34
//  0x434814: ldur x0, [FP, #-0x18]
//  0x434818: mov SP, FP
//  0x43481c: ldp FP, LR, [SP], #0x10
//  0x434820: ret 
//  0x434824: bl #0x61fa28
//  0x434828: b #0x434790
//
dynamic GameFruitBetRecordDialogState_build() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x434774
  // frame: FP = SP // 0x434778
  // frame: SP = SP - 0x18 // 0x43477c
  local_m8 = x1; // 0x434780
  BARRIER = mem(THR, 0x38); // 0x434784
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x434824
  }
  x1 = 1; // 0x434790
  sub_0x61e890(); // 0x434794
  x0 = local_m8; // 0x43479c
  x1 = x0; // 0x434798
  memSet(x1, 0xf, w0); // 0x4347a0
  w3 = mem(x0, 0x13); // 0x4347a4
  x2 = x1; // 0x4347ac
  x3 = ((mem(x0, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4347a8
  local_m10 = x3; // 0x4347b0
  x1 = mem((PP + 0x15000), 0x390) /* Function */; // 0x4347b8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4347bc
  x1 = mem((PP + 0x15000), 0x398) /* TypeArguments */; // 0x4347c4
  local_m8 = x0; // 0x4347c8
  AllocationStub_ChangeNotifierProvider() /* 0x3b81c4 */; // 0x4347cc
  x0 = local_m8; // 0x4347d4
  x2 = x0; // 0x4347d0
  local_m18 = x2; // 0x4347d8
  memSet(x2, 0x1b, w0); // 0x4347dc
  x1 = mem((PP + 0x15000), 0x398) /* TypeArguments */; // 0x4347e4
  AllocationStub__ValueInheritedProvider() /* 0x41a408 */; // 0x4347e8
  x0 = local_m10; // 0x4347f0
  x1 = x0; // 0x4347ec
  memSet(x1, 0xb, w0); // 0x4347f4
  x0 = mem((PP + 0xc000), 0x2f0) /* Closure */; // 0x4347fc
  memSet(x1, 0x13, w0); // 0x434800
  x0 = local_m18; // 0x434804
  memSet(x0, 0x13, w1); // 0x434808
  x1 = x0; // 0x43480c
  int_kNull() /* 0x60bd34 */; // 0x434810
  SP = FP; // 0x434818
  x0 = local_m18; // 0x434814
  // frame: FP, LR, mem(SP), 0x10 // 0x43481c
  return;
}

// GameFruitBetRecordDialogState_anon_closure
// raw disassembly:
//  0x43484c: stp FP, LR, [SP, #-0x10]!
//  0x434850: mov FP, SP
//  0x434854: sub SP, SP, #8
//  0x434858: ldr x0, [FP, #0x20]
//  0x43485c: ldur w2, [x0, #0x17]
//  0x434860: add x2, x2, HEAP, lsl #32
//  0x434864: add x1, PP, #0x15, lsl #12
//  0x434868: ldr x1, [x1, #0x3a0]
//  0x43486c: bl #0x61ec54
//  0x434870: add x1, PP, #0x15, lsl #12
//  0x434874: ldr x1, [x1, #0x398]
//  0x434878: stur x0, [FP, #-8]
//  0x43487c: bl #0x41a414
//  0x434880: ldur x1, [FP, #-8]
//  0x434884: stur w1, [x0, #0x13]
//  0x434888: mov SP, FP
//  0x43488c: ldp FP, LR, [SP], #0x10
//  0x434890: ret 
//
dynamic GameFruitBetRecordDialogState_anon_closure() {
  dynamic FP;
  dynamic SP;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x43484c
  // frame: FP = SP // 0x434850
  // frame: SP = SP - 8 // 0x434854
  w2 = mem((local_20), 0x17); /* _GameFruitBetRecordDialogState._refreshController (off 0x18) */  // 0x43485c
  x0 = local_20; // 0x434858
  x1 = mem((PP + 0x15000), 0x3a0) /* Function */; // 0x434868
  x2 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); /* _GameFruitBetRecordDialogState._refreshController (off 0x18) */  // 0x434860
  AllocationStub__Closure() /* 0x61ec54 */; // 0x43486c
  x1 = mem((PP + 0x15000), 0x398) /* TypeArguments */; // 0x434874
  local_m8 = x0; // 0x434878
  AllocationStub_Consumer() /* 0x41a414 */; // 0x43487c
  x1 = local_m8; // 0x434880
  memSet(x0, 0x13, w1); // 0x434884
  SP = FP; // 0x434888
  // frame: FP, LR, mem(SP), 0x10 // 0x43488c
  return;
}

// GameFruitBetRecordDialogState_anon_closure_2
// raw disassembly:
//  0x434894: stp FP, LR, [SP, #-0x10]!
//  0x434898: mov FP, SP
//  0x43489c: ldr x0, [FP, #0x28]
//  0x4348a0: ldur w1, [x0, #0x17]
//  0x4348a4: add x1, x1, HEAP, lsl #32
//  0x4348a8: ldr BARRIER, [THR, #0x38]
//  0x4348ac: cmp SP, BARRIER
//  0x4348b0: b.ls #0x4348f0
//  0x4348b4: ldr x3, [FP, #0x18]
//  0x4348b8: ldur w2, [x3, #0x2b]
//  0x4348bc: add x2, x2, HEAP, lsl #32
//  0x4348c0: ldur w0, [x1, #0xf]
//  0x4348c4: add x0, x0, HEAP, lsl #32
//  0x4348c8: ldur w5, [x0, #0x17]
//  0x4348cc: add x5, x5, HEAP, lsl #32
//  0x4348d0: ldr BARRIER, [PP, #0x40]
//  0x4348d4: cmp w5, w16
//  0x4348d8: b.eq #0x4348f8
//  0x4348dc: mov x1, x0
//  0x4348e0: bl #0x434904
//  0x4348e4: mov SP, FP
//  0x4348e8: ldp FP, LR, [SP], #0x10
//  0x4348ec: ret 
//  0x4348f0: bl #0x61fa28
//  0x4348f4: b #0x4348b4
//  0x4348f8: add x9, PP, #0x15, lsl #12
//  0x4348fc: ldr x9, [x9, #0x3a8]
//  0x434900: bl #0x620258
//
dynamic GameFruitBetRecordDialogState_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w5;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x5;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x434894
  BARRIER = mem(THR, 0x38); // 0x4348a8
  // frame: FP = SP // 0x434898
  w1 = mem((local_28), 0x17); /* _GameFruitBetRecordDialogState._refreshController (off 0x18) */  // 0x4348a0
  x0 = local_28; // 0x43489c
  x1 = ((mem((local_28), 0x17)) & 0xffffffff) + (HEAP << 32); /* _GameFruitBetRecordDialogState._refreshController (off 0x18) */  // 0x4348a4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4348f0
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4348d0
  w0 = mem(x1, 0xf); // 0x4348c0
  w2 = mem((local_18), 0x2b); // 0x4348b8
  w5 = mem((((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4348c8
  x0 = ((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4348c4
  x2 = ((mem((local_18), 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x4348bc
  x3 = local_18; // 0x4348b4
  x5 = ((mem((((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4348cc
  if (w5 == w16) {
    x9 = mem((PP + 0x15000), 0x3a8) /* Field */; // 0x4348fc
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x434900
  }
  x1 = x0; // 0x4348dc
  GameFruitBetRecordDialogState_betListWidget() /* 0x434904 */; // 0x4348e0
  SP = FP; // 0x4348e4
  // frame: FP, LR, mem(SP), 0x10 // 0x4348e8
  return;
}

// GameFruitBetRecordDialogState_betListWidget
// raw disassembly:
//  0x434904: stp FP, LR, [SP, #-0x10]!
//  0x434908: mov FP, SP
//  0x43490c: sub SP, SP, #0x80
//  0x434910: stur x1, [FP, #-8]
//  0x434914: stur x2, [FP, #-0x10]
//  0x434918: stur x3, [FP, #-0x18]
//  0x43491c: stur x5, [FP, #-0x20]
//  0x434920: ldr BARRIER, [THR, #0x38]
//  0x434924: cmp SP, BARRIER
//  0x434928: b.ls #0x434f90
//  0x43492c: mov x1, #6
//  0x434930: bl #0x61e890
//  0x434934: ldur x1, [FP, #-8]
//  0x434938: stur x0, [FP, #-0x28]
//  0x43493c: stur w1, [x0, #0xf]
//  0x434940: ldur x2, [FP, #-0x10]
//  0x434944: stur w2, [x0, #0x13]
//  0x434948: ldur x3, [FP, #-0x18]
//  0x43494c: stur w3, [x0, #0x17]
//  0x434950: ldur x3, [FP, #-0x20]
//  0x434954: stur w3, [x0, #0x1b]
//  0x434958: ldur w3, [x2, #0xb]
//  0x43495c: stur x3, [FP, #-0x18]
//  0x434960: stur w3, [x0, #0x1f]
//  0x434964: bl #0x31abec
//  0x434968: mov x1, x0
//  0x43496c: add x0, NULL, #0x20
//  0x434970: stur w0, [x1, #7]
//  0x434974: ldr x2, [PP, #0x6050]
//  0x434978: stur w2, [x1, #0xb]
//  0x43497c: add x2, PP, #0xf, lsl #12
//  0x434980: ldr x2, [x2, #0xb80]
//  0x434984: stur w2, [x1, #0x1f]
//  0x434988: add x3, PP, #0xe, lsl #12
//  0x43498c: ldr x3, [x3, #0xe40]
//  0x434990: stur w3, [x1, #0x23]
//  0x434994: ldur x3, [FP, #-0x28]
//  0x434998: stur w1, [x3, #0x23]
//  0x43499c: ldur x1, [FP, #-8]
//  0x4349a0: ldur w4, [x1, #0xf]
//  0x4349a4: add x4, x4, HEAP, lsl #32
//  0x4349a8: stur x4, [FP, #-0x10]
//  0x4349ac: cmp w4, w22
//  0x4349b0: b.eq #0x434f98
//  0x4349b4: bl #0x2e3578
//  0x4349b8: fmov d0, #18.00000000
//  0x4349bc: stur x0, [FP, #-0x20]
//  0x4349c0: stur d0, [x0, #7]
//  0x4349c4: fmov d1, #16.00000000
//  0x4349c8: stur d1, [x0, #0xf]
//  0x4349cc: stur d0, [x0, #0x17]
//  0x4349d0: stur d1, [x0, #0x1f]
//  0x4349d4: ldur x1, [FP, #-0x18]
//  0x4349d8: sbfx x3, x1, #1, #0x1f
//  0x4349dc: stur x3, [FP, #-0x30]
//  0x4349e0: cmp x3, #0
//  0x4349e4: b.le #0x434d48
//  0x4349e8: ldur x2, [FP, #-0x28]
//  0x4349ec: add x1, PP, #0xc, lsl #12
//  0x4349f0: ldr x1, [x1, #0x878]
//  0x4349f4: ldr x4, [PP, #0x4c0]
//  0x4349f8: bl #0x3a1dcc
//  0x4349fc: ldur x1, [FP, #-8]
//  0x434a00: mov x2, x0
//  0x434a04: bl #0x4358f8
//  0x434a08: stur x0, [FP, #-0x18]
//  0x434a0c: bl #0x3949ec
//  0x434a10: mov x1, x0
//  0x434a14: add x0, PP, #0xf, lsl #12
//  0x434a18: ldr x0, [x0, #0xb80]
//  0x434a1c: stur x1, [FP, #-0x38]
//  0x434a20: stur w0, [x1, #0x13]
//  0x434a24: bl #0x352b04
//  0x434a28: fmov d0, #16.00000000
//  0x434a2c: stur x0, [FP, #-0x40]
//  0x434a30: stur d0, [x0, #7]
//  0x434a34: stur d0, [x0, #0xf]
//  0x434a38: bl #0x352b04
//  0x434a3c: fmov d0, #16.00000000
//  0x434a40: stur x0, [FP, #-0x48]
//  0x434a44: stur d0, [x0, #7]
//  0x434a48: stur d0, [x0, #0xf]
//  0x434a4c: bl #0x392f28
//  0x434a50: mov x2, x0
//  0x434a54: ldur x0, [FP, #-0x40]
//  0x434a58: stur x2, [FP, #-0x50]
//  0x434a5c: stur w0, [x2, #7]
//  0x434a60: ldur x0, [FP, #-0x48]
//  0x434a64: stur w0, [x2, #0xb]
//  0x434a68: add x0, PP, #0xa, lsl #12
//  0x434a6c: ldr x0, [x0, #0x510]
//  0x434a70: stur w0, [x2, #0xf]
//  0x434a74: stur w0, [x2, #0x13]
//  0x434a78: ldur x1, [FP, #-8]
//  0x434a7c: bl #0x4354e4
//  0x434a80: stur x0, [FP, #-0x40]
//  0x434a84: bl #0x3b378c
//  0x434a88: mov x1, x0
//  0x434a8c: ldur x0, [FP, #-0x50]
//  0x434a90: stur x1, [FP, #-0x48]
//  0x434a94: stur w0, [x1, #0xf]
//  0x434a98: add x0, PP, #0xe, lsl #12
//  0x434a9c: ldr x0, [x0, #0xf40]
//  0x434aa0: stur w0, [x1, #0x17]
//  0x434aa4: ldur x2, [FP, #-0x40]
//  0x434aa8: stur w2, [x1, #0xb]
//  0x434aac: bl #0x352b04
//  0x434ab0: fmov d0, #16.00000000
//  0x434ab4: stur x0, [FP, #-0x40]
//  0x434ab8: stur d0, [x0, #7]
//  0x434abc: stur d0, [x0, #0xf]
//  0x434ac0: bl #0x352b04
//  0x434ac4: fmov d0, #16.00000000
//  0x434ac8: stur x0, [FP, #-0x50]
//  0x434acc: stur d0, [x0, #7]
//  0x434ad0: stur d0, [x0, #0xf]
//  0x434ad4: bl #0x392f28
//  0x434ad8: mov x3, x0
//  0x434adc: add x0, PP, #0xa, lsl #12
//  0x434ae0: ldr x0, [x0, #0x510]
//  0x434ae4: stur x3, [FP, #-0x58]
//  0x434ae8: stur w0, [x3, #7]
//  0x434aec: stur w0, [x3, #0xb]
//  0x434af0: ldur x0, [FP, #-0x40]
//  0x434af4: stur w0, [x3, #0xf]
//  0x434af8: ldur x0, [FP, #-0x50]
//  0x434afc: stur w0, [x3, #0x13]
//  0x434b00: ldur x0, [FP, #-0x28]
//  0x434b04: ldur w4, [x0, #0x1b]
//  0x434b08: add x4, x4, HEAP, lsl #32
//  0x434b0c: stur x4, [FP, #-0x40]
//  0x434b10: add x1, PP, #0x15, lsl #12
//  0x434b14: ldr x1, [x1, #0x3b0]
//  0x434b18: mov x2, NULL
//  0x434b1c: bl #0x61ec54
//  0x434b20: stur x0, [FP, #-0x50]
//  0x434b24: bl #0x3ab5b8
//  0x434b28: mov x1, x0
//  0x434b2c: ldur x0, [FP, #-0x50]
//  0x434b30: stur x1, [FP, #-0x60]
//  0x434b34: stur w0, [x1, #0x1b]
//  0x434b38: add x0, PP, #0xf, lsl #12
//  0x434b3c: ldr x0, [x0, #0x898]
//  0x434b40: stur w0, [x1, #0xb]
//  0x434b44: add x17, PP, #0xf, lsl #12
//  0x434b48: ldr d0, [x17, #0x8a0]
//  0x434b4c: stur d0, [x1, #0xf]
//  0x434b50: bl #0x41b0bc
//  0x434b54: ldur x2, [FP, #-0x28]
//  0x434b58: add x1, PP, #0x15, lsl #12
//  0x434b5c: ldr x1, [x1, #0x3b8]
//  0x434b60: stur x0, [FP, #-0x50]
//  0x434b64: bl #0x61ec54
//  0x434b68: stur x0, [FP, #-0x68]
//  0x434b6c: bl #0x3ab5ac
//  0x434b70: stur x0, [FP, #-0x70]
//  0x434b74: ldur BARRIER, [FP, #-0x50]
//  0x434b78: str BARRIER, [SP]
//  0x434b7c: mov x1, x0
//  0x434b80: ldur x2, [FP, #-0x68]
//  0x434b84: ldur x3, [FP, #-0x30]
//  0x434b88: add x4, PP, #0x14, lsl #12
//  0x434b8c: ldr x4, [x4, #0xf10]
//  0x434b90: bl #0x3ab2bc
//  0x434b94: bl #0x3ab290
//  0x434b98: mov x3, x0
//  0x434b9c: ldur x0, [FP, #-0x40]
//  0x434ba0: stur x3, [FP, #-0x50]
//  0x434ba4: stur w0, [x3, #0x2b]
//  0x434ba8: ldur x0, [FP, #-0x70]
//  0x434bac: stur w0, [x3, #0xb]
//  0x434bb0: ldur x0, [FP, #-0x60]
//  0x434bb4: stur w0, [x3, #0xf]
//  0x434bb8: add x0, NULL, #0x30
//  0x434bbc: stur w0, [x3, #0x1b]
//  0x434bc0: add x4, NULL, #0x20
//  0x434bc4: stur w4, [x3, #0x13]
//  0x434bc8: stur w0, [x3, #0x17]
//  0x434bcc: ldur x2, [FP, #-0x28]
//  0x434bd0: add x1, PP, #0x15, lsl #12
//  0x434bd4: ldr x1, [x1, #0x3c0]
//  0x434bd8: bl #0x61ec54
//  0x434bdc: mov x1, x0
//  0x434be0: ldur x0, [FP, #-0x50]
//  0x434be4: stur w1, [x0, #0x23]
//  0x434be8: bl #0x3b378c
//  0x434bec: mov x2, x0
//  0x434bf0: ldur x0, [FP, #-0x58]
//  0x434bf4: stur x2, [FP, #-0x40]
//  0x434bf8: stur w0, [x2, #0xf]
//  0x434bfc: add x0, PP, #0xe, lsl #12
//  0x434c00: ldr x0, [x0, #0xf40]
//  0x434c04: stur w0, [x2, #0x17]
//  0x434c08: ldur x0, [FP, #-0x50]
//  0x434c0c: stur w0, [x2, #0xb]
//  0x434c10: add x1, PP, #0xe, lsl #12
//  0x434c14: ldr x1, [x1, #0xad0]
//  0x434c18: bl #0x39fb14
//  0x434c1c: mov x2, x0
//  0x434c20: mov x0, #1
//  0x434c24: stur x2, [FP, #-0x50]
//  0x434c28: stur x0, [x2, #0x13]
//  0x434c2c: add x0, PP, #0xe, lsl #12
//  0x434c30: ldr x0, [x0, #0xad8]
//  0x434c34: stur w0, [x2, #0x1b]
//  0x434c38: ldur x0, [FP, #-0x40]
//  0x434c3c: stur w0, [x2, #0xb]
//  0x434c40: ldur x0, [FP, #-0x30]
//  0x434c44: cmp x0, #6
//  0x434c48: b.gt #0x434c5c
//  0x434c4c: ldur x1, [FP, #-8]
//  0x434c50: bl #0x435288
//  0x434c54: mov x7, x0
//  0x434c58: b #0x434c74
//  0x434c5c: bl #0x391a04
//  0x434c60: mov x1, x0
//  0x434c64: stur x0, [FP, #-0x40]
//  0x434c68: ldr x4, [PP, #0x4c0]
//  0x434c6c: bl #0x391490
//  0x434c70: ldur x7, [FP, #-0x40]
//  0x434c74: ldur x5, [FP, #-0x18]
//  0x434c78: ldur x4, [FP, #-0x38]
//  0x434c7c: ldur x3, [FP, #-0x48]
//  0x434c80: ldur x0, [FP, #-0x50]
//  0x434c84: mov x6, #0xa
//  0x434c88: mov x2, x6
//  0x434c8c: stur x7, [FP, #-0x40]
//  0x434c90: mov x1, NULL
//  0x434c94: bl #0x61f920
//  0x434c98: mov x2, x0
//  0x434c9c: ldur x0, [FP, #-0x18]
//  0x434ca0: stur x2, [FP, #-0x58]
//  0x434ca4: stur w0, [x2, #0xf]
//  0x434ca8: ldur x0, [FP, #-0x38]
//  0x434cac: stur w0, [x2, #0x13]
//  0x434cb0: ldur x0, [FP, #-0x48]
//  0x434cb4: stur w0, [x2, #0x17]
//  0x434cb8: ldur x0, [FP, #-0x50]
//  0x434cbc: stur w0, [x2, #0x1b]
//  0x434cc0: ldur x0, [FP, #-0x40]
//  0x434cc4: stur w0, [x2, #0x1f]
//  0x434cc8: ldr x1, [PP, #0x5c58]
//  0x434ccc: bl #0x61e854
//  0x434cd0: mov x1, x0
//  0x434cd4: ldur x0, [FP, #-0x58]
//  0x434cd8: stur x1, [FP, #-0x18]
//  0x434cdc: stur w0, [x1, #0xf]
//  0x434ce0: mov x0, #0xa
//  0x434ce4: stur w0, [x1, #0xb]
//  0x434ce8: bl #0x39310c
//  0x434cec: mov x1, x0
//  0x434cf0: add x0, PP, #0xa, lsl #12
//  0x434cf4: ldr x0, [x0, #0x858]
//  0x434cf8: stur w0, [x1, #0xf]
//  0x434cfc: add x2, PP, #0xe, lsl #12
//  0x434d00: ldr x2, [x2, #0xae0]
//  0x434d04: stur w2, [x1, #0x13]
//  0x434d08: add x3, PP, #0xe, lsl #12
//  0x434d0c: ldr x3, [x3, #0xae8]
//  0x434d10: stur w3, [x1, #0x17]
//  0x434d14: add x3, PP, #0xe, lsl #12
//  0x434d18: ldr x3, [x3, #0xb60]
//  0x434d1c: stur w3, [x1, #0x1b]
//  0x434d20: add x4, PP, #0xe, lsl #12
//  0x434d24: ldr x4, [x4, #0xaf8]
//  0x434d28: stur w4, [x1, #0x23]
//  0x434d2c: add x5, PP, #0xa, lsl #12
//  0x434d30: ldr x5, [x5, #0xa8]
//  0x434d34: stur w5, [x1, #0x2b]
//  0x434d38: stur xzr, [x1, #0x2f]
//  0x434d3c: ldur x6, [FP, #-0x18]
//  0x434d40: stur w6, [x1, #0xb]
//  0x434d44: b #0x434d7c
//  0x434d48: add x3, PP, #0xe, lsl #12
//  0x434d4c: ldr x3, [x3, #0xb60]
//  0x434d50: add x2, PP, #0xe, lsl #12
//  0x434d54: ldr x2, [x2, #0xae0]
//  0x434d58: add x0, PP, #0xa, lsl #12
//  0x434d5c: ldr x0, [x0, #0x858]
//  0x434d60: add x5, PP, #0xa, lsl #12
//  0x434d64: ldr x5, [x5, #0xa8]
//  0x434d68: add x4, PP, #0xe, lsl #12
//  0x434d6c: ldr x4, [x4, #0xaf8]
//  0x434d70: ldur x1, [FP, #-8]
//  0x434d74: bl #0x434f9c
//  0x434d78: mov x1, x0
//  0x434d7c: ldur x0, [FP, #-0x20]
//  0x434d80: stur x1, [FP, #-8]
//  0x434d84: bl #0x3a1da8
//  0x434d88: add x17, PP, #0x12, lsl #12
//  0x434d8c: ldr d0, [x17, #0x550]
//  0x434d90: stur x0, [FP, #-0x18]
//  0x434d94: stur d0, [x0, #0xb]
//  0x434d98: add x17, PP, #0x12, lsl #12
//  0x434d9c: ldr d0, [x17, #0x558]
//  0x434da0: stur d0, [x0, #0x13]
//  0x434da4: ldur x1, [FP, #-8]
//  0x434da8: stur w1, [x0, #0x1b]
//  0x434dac: ldur x1, [FP, #-0x20]
//  0x434db0: stur w1, [x0, #0x1f]
//  0x434db4: bl #0x3949ec
//  0x434db8: mov x1, x0
//  0x434dbc: add x0, PP, #0x12, lsl #12
//  0x434dc0: ldr x0, [x0, #0x560]
//  0x434dc4: stur x1, [FP, #-8]
//  0x434dc8: stur w0, [x1, #0x13]
//  0x434dcc: bl #0x3a142c
//  0x434dd0: mov x1, x0
//  0x434dd4: add x0, PP, #0x12, lsl #12
//  0x434dd8: ldr x0, [x0, #0x568]
//  0x434ddc: stur x1, [FP, #-0x20]
//  0x434de0: stur w0, [x1, #0xb]
//  0x434de4: add x0, PP, #0xf, lsl #12
//  0x434de8: ldr x0, [x0, #0x170]
//  0x434dec: stur w0, [x1, #0xf]
//  0x434df0: add x0, PP, #0x12, lsl #12
//  0x434df4: ldr x0, [x0, #0x560]
//  0x434df8: stur w0, [x1, #0x13]
//  0x434dfc: stur w0, [x1, #0x17]
//  0x434e00: bl #0x391a04
//  0x434e04: stur x0, [FP, #-0x38]
//  0x434e08: ldur BARRIER, [FP, #-0x20]
//  0x434e0c: str BARRIER, [SP]
//  0x434e10: mov x1, x0
//  0x434e14: add x4, PP, #0xc, lsl #12
//  0x434e18: ldr x4, [x4, #0x1f8]
//  0x434e1c: bl #0x391490
//  0x434e20: bl #0x3a1d94
//  0x434e24: ldur x2, [FP, #-0x28]
//  0x434e28: add x1, PP, #0x15, lsl #12
//  0x434e2c: ldr x1, [x1, #0x3c8]
//  0x434e30: stur x0, [FP, #-0x20]
//  0x434e34: bl #0x61ec54
//  0x434e38: ldur BARRIER, [FP, #-0x38]
//  0x434e3c: stp x0, BARRIER, [SP]
//  0x434e40: ldur x1, [FP, #-0x20]
//  0x434e44: add x4, PP, #0xe, lsl #12
//  0x434e48: ldr x4, [x4, #0xec0]
//  0x434e4c: bl #0x3a18c4
//  0x434e50: mov x1, NULL
//  0x434e54: mov x2, #6
//  0x434e58: bl #0x61f920
//  0x434e5c: mov x2, x0
//  0x434e60: ldur x0, [FP, #-0x18]
//  0x434e64: stur x2, [FP, #-0x28]
//  0x434e68: stur w0, [x2, #0xf]
//  0x434e6c: ldur x0, [FP, #-8]
//  0x434e70: stur w0, [x2, #0x13]
//  0x434e74: ldur x0, [FP, #-0x20]
//  0x434e78: stur w0, [x2, #0x17]
//  0x434e7c: ldr x1, [PP, #0x5c58]
//  0x434e80: bl #0x61e854
//  0x434e84: mov x1, x0
//  0x434e88: ldur x0, [FP, #-0x28]
//  0x434e8c: stur x1, [FP, #-8]
//  0x434e90: stur w0, [x1, #0xf]
//  0x434e94: mov x0, #6
//  0x434e98: stur w0, [x1, #0xb]
//  0x434e9c: bl #0x39310c
//  0x434ea0: mov x1, x0
//  0x434ea4: add x0, PP, #0xa, lsl #12
//  0x434ea8: ldr x0, [x0, #0x858]
//  0x434eac: stur x1, [FP, #-0x18]
//  0x434eb0: stur w0, [x1, #0xf]
//  0x434eb4: add x0, PP, #0xe, lsl #12
//  0x434eb8: ldr x0, [x0, #0xae0]
//  0x434ebc: stur w0, [x1, #0x13]
//  0x434ec0: add x0, PP, #0xe, lsl #12
//  0x434ec4: ldr x0, [x0, #0xb08]
//  0x434ec8: stur w0, [x1, #0x17]
//  0x434ecc: add x0, PP, #0xe, lsl #12
//  0x434ed0: ldr x0, [x0, #0xb60]
//  0x434ed4: stur w0, [x1, #0x1b]
//  0x434ed8: add x0, PP, #0xe, lsl #12
//  0x434edc: ldr x0, [x0, #0xaf8]
//  0x434ee0: stur w0, [x1, #0x23]
//  0x434ee4: add x0, PP, #0xa, lsl #12
//  0x434ee8: ldr x0, [x0, #0xa8]
//  0x434eec: stur w0, [x1, #0x2b]
//  0x434ef0: stur xzr, [x1, #0x2f]
//  0x434ef4: ldur x2, [FP, #-8]
//  0x434ef8: stur w2, [x1, #0xb]
//  0x434efc: bl #0x3949f8
//  0x434f00: mov x1, x0
//  0x434f04: add x0, PP, #0x12, lsl #12
//  0x434f08: ldr x0, [x0, #0x578]
//  0x434f0c: stur x1, [FP, #-8]
//  0x434f10: stur w0, [x1, #0xf]
//  0x434f14: stur xzr, [x1, #0x13]
//  0x434f18: add x0, NULL, #0x20
//  0x434f1c: stur w0, [x1, #0x2f]
//  0x434f20: add x0, PP, #0xa, lsl #12
//  0x434f24: ldr x0, [x0, #0xa8]
//  0x434f28: stur w0, [x1, #0x33]
//  0x434f2c: add x0, PP, #0xc, lsl #12
//  0x434f30: ldr x0, [x0, #0x258]
//  0x434f34: stur w0, [x1, #0x37]
//  0x434f38: ldur x0, [FP, #-0x18]
//  0x434f3c: stur w0, [x1, #0xb]
//  0x434f40: bl #0x396940
//  0x434f44: mov x2, x0
//  0x434f48: add x0, PP, #0xe, lsl #12
//  0x434f4c: ldr x0, [x0, #0xaa0]
//  0x434f50: stur x2, [FP, #-0x18]
//  0x434f54: stur w0, [x2, #0xf]
//  0x434f58: ldur x0, [FP, #-8]
//  0x434f5c: stur w0, [x2, #0xb]
//  0x434f60: add x1, PP, #0xf, lsl #12
//  0x434f64: ldr x1, [x1, #0x218]
//  0x434f68: bl #0x396454
//  0x434f6c: mov x1, x0
//  0x434f70: ldur x2, [FP, #-0x18]
//  0x434f74: ldur x3, [FP, #-0x10]
//  0x434f78: stur x0, [FP, #-8]
//  0x434f7c: bl #0x395ac8
//  0x434f80: ldur x0, [FP, #-8]
//  0x434f84: mov SP, FP
//  0x434f88: ldp FP, LR, [SP], #0x10
//  0x434f8c: ret 
//  0x434f90: bl #0x61fa28
//  0x434f94: b #0x43492c
//  0x434f98: bl #0x61ffd0
//
dynamic GameFruitBetRecordDialogState_betListWidget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic w3;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x7;
  // frame: FP, LR, mem(SP, -0x10)! // 0x434904
  // frame: FP = SP // 0x434908
  // frame: SP = SP - 0x80 // 0x43490c
  local_m8 = x1; // 0x434910
  local_m10 = x2; // 0x434914
  local_m18 = x3; // 0x434918
  local_m20 = x5; // 0x43491c
  BARRIER = mem(THR, 0x38); // 0x434920
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x434f90
  }
  x1 = 6; // 0x43492c
  sub_0x61e890(); // 0x434930
  x1 = local_m8; // 0x434934
  local_m28 = x0; // 0x434938
  memSet(x0, 0xf, w1); // 0x43493c
  x2 = local_m10; // 0x434940
  memSet(x0, 0x13, w2); // 0x434944
  x3 = local_m18; // 0x434948
  memSet(x0, 0x17, w3); // 0x43494c
  x3 = local_m20; // 0x434950
  memSet(x0, 0x1b, w3); // 0x434954
  w3 = mem(x2, 0xb); // 0x434958
  x3 = (mem(x2, 0xb)) & 0xffffffff; // 0x434958
  local_m18 = x3; // 0x43495c
  memSet(x0, 0x1f, w3); // 0x434960
  AllocationStub_TextStyle() /* 0x31abec */; // 0x434964
  x0 = NULL + 0x20; // 0x43496c
  x1 = x0; // 0x434968
  memSet(x1, 7, w0); // 0x434970
  x2 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x434974
  memSet(x1, 0xb, w2); // 0x434978
  x2 = mem((PP + 0xf000), 0xb80) /* Double */; // 0x434980
  memSet(x1, 0x1f, w2); // 0x434984
  x3 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x43498c
  memSet(x1, 0x23, w3); // 0x434990
  x3 = local_m28; // 0x434994
  memSet(x3, 0x23, w1); // 0x434998
  w4 = mem((local_m8), 0xf); // 0x4349a0
  x1 = local_m8; // 0x43499c
  x4 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4349a4
  local_m10 = x4; // 0x4349a8
  if (w4 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x434f98
  }
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x4349b4
  d0 = 18.00000000 /* bits */; // 0x4349b8
  local_m20 = x0; // 0x4349bc
  memSet(x0, 7, d0); // 0x4349c0
  d1 = 16.00000000 /* bits */; // 0x4349c4
  memSet(x0, 0xf, d1); // 0x4349c8
  memSet(x0, 0x17, d0); // 0x4349cc
  memSet(x0, 0x1f, d1); // 0x4349d0
  x1 = local_m18; // 0x4349d4
  x3 = ((local_m18) >> 1) & 0x7fffffff; // 0x4349d8
  local_m30 = x3; // 0x4349dc
  if (x3 <= 0) {
    x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x434d5c
    x1 = local_m8; // 0x434d70
    x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x434d54
    x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x434d4c
    x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x434d6c
    x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x434d64
    GameFruitBetRecordDialogState_NodataDialogLWidget() /* 0x434f9c */; // 0x434d74
    x1 = x0; // 0x434d78
  } else {
    x1 = "virtual_party_fruitland_page_bet_record_popup_title" /* pp+0xc878 */; // 0x4349f0
    x2 = local_m28; // 0x4349e8
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4349f4
    getString() /* 0x3a1dcc */; // 0x4349f8
    x1 = local_m8; // 0x4349fc
    x2 = x0; // 0x434a00
    GameFruitBetRecordDialogState_titleLabelWidget() /* 0x4358f8 */; // 0x434a04
    local_m18 = x0; // 0x434a08
    AllocationStub_SizedBox() /* 0x3949ec */; // 0x434a0c
    x0 = mem((PP + 0xf000), 0xb80) /* Double */; // 0x434a18
    x1 = x0; // 0x434a10
    local_m38 = x1; // 0x434a1c
    memSet(x1, 0x13, w0); // 0x434a20
    AllocationStub_Radius() /* 0x352b04 */; // 0x434a24
    d0 = 16.00000000 /* bits */; // 0x434a28
    local_m40 = x0; // 0x434a2c
    memSet(x0, 7, d0); // 0x434a30
    memSet(x0, 0xf, d0); // 0x434a34
    AllocationStub_Radius() /* 0x352b04 */; // 0x434a38
    d0 = 16.00000000 /* bits */; // 0x434a3c
    local_m48 = x0; // 0x434a40
    memSet(x0, 7, d0); // 0x434a44
    memSet(x0, 0xf, d0); // 0x434a48
    AllocationStub_BorderRadius() /* 0x392f28 */; // 0x434a4c
    x0 = local_m40; // 0x434a54
    x2 = x0; // 0x434a50
    local_m50 = x2; // 0x434a58
    memSet(x2, 7, w0); // 0x434a5c
    x0 = local_m48; // 0x434a60
    memSet(x2, 0xb, w0); // 0x434a64
    x0 = mem((PP + 0xa000), 0x510) /* Obj!Radius@120d9  */; // 0x434a6c
    memSet(x2, 0xf, w0); // 0x434a70
    memSet(x2, 0x13, w0); // 0x434a74
    x1 = local_m8; // 0x434a78
    GameFruitBetRecordDialogState_titleListWidget() /* 0x4354e4 */; // 0x434a7c
    local_m40 = x0; // 0x434a80
    AllocationStub_ClipRRect() /* 0x3b378c */; // 0x434a84
    x0 = local_m50; // 0x434a8c
    x1 = x0; // 0x434a88
    local_m48 = x1; // 0x434a90
    memSet(x1, 0xf, w0); // 0x434a94
    x0 = mem((PP + 0xe000), 0xf40) /* Obj!Clip@12344  */; // 0x434a9c
    memSet(x1, 0x17, w0); // 0x434aa0
    x2 = local_m40; // 0x434aa4
    memSet(x1, 0xb, w2); // 0x434aa8
    AllocationStub_Radius() /* 0x352b04 */; // 0x434aac
    d0 = 16.00000000 /* bits */; // 0x434ab0
    local_m40 = x0; // 0x434ab4
    memSet(x0, 7, d0); // 0x434ab8
    memSet(x0, 0xf, d0); // 0x434abc
    AllocationStub_Radius() /* 0x352b04 */; // 0x434ac0
    d0 = 16.00000000 /* bits */; // 0x434ac4
    local_m50 = x0; // 0x434ac8
    memSet(x0, 7, d0); // 0x434acc
    memSet(x0, 0xf, d0); // 0x434ad0
    AllocationStub_BorderRadius() /* 0x392f28 */; // 0x434ad4
    x0 = mem((PP + 0xa000), 0x510) /* Obj!Radius@120d9  */; // 0x434ae0
    x3 = x0; // 0x434ad8
    local_m58 = x3; // 0x434ae4
    memSet(x3, 7, w0); // 0x434ae8
    memSet(x3, 0xb, w0); // 0x434aec
    x0 = local_m40; // 0x434af0
    memSet(x3, 0xf, w0); // 0x434af4
    x0 = local_m50; // 0x434af8
    memSet(x3, 0x13, w0); // 0x434afc
    w4 = mem((local_m28), 0x1b); // 0x434b04
    x0 = local_m28; // 0x434b00
    x4 = ((mem((local_m28), 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x434b08
    local_m40 = x4; // 0x434b0c
    x1 = mem((PP + 0x15000), 0x3b0) /* Function */; // 0x434b14
    x2 = NULL; // 0x434b18
    AllocationStub__Closure() /* 0x61ec54 */; // 0x434b1c
    local_m50 = x0; // 0x434b20
    AllocationStub_CustomFooter() /* 0x3ab5b8 */; // 0x434b24
    x0 = local_m50; // 0x434b2c
    x1 = x0; // 0x434b28
    local_m60 = x1; // 0x434b30
    memSet(x1, 0x1b, w0); // 0x434b34
    x0 = mem((PP + 0xf000), 0x898) /* Obj!LoadStyle@12174  */; // 0x434b3c
    memSet(x1, 0xb, w0); // 0x434b40
    d0 = 4631248529308778496; // 0x434b48
    x17 = PP + 0xf000; // 0x434b44
    memSet(x1, 0xf, d0); // 0x434b4c
    AllocationStub_ClampingScrollPhysics() /* 0x41b0bc */; // 0x434b50
    x1 = mem((PP + 0x15000), 0x3b8) /* Function */; // 0x434b5c
    x2 = local_m28; // 0x434b54
    local_m50 = x0; // 0x434b60
    AllocationStub__Closure() /* 0x61ec54 */; // 0x434b64
    local_m68 = x0; // 0x434b68
    AllocationStub_ListView() /* 0x3ab5ac */; // 0x434b6c
    local_m70 = x0; // 0x434b70
    BARRIER = local_m50; // 0x434b74
    local_0 = BARRIER; // 0x434b78
    x1 = x0; // 0x434b7c
    x2 = local_m68; // 0x434b80
    x3 = local_m30; // 0x434b84
    x4 = mem((PP + 0x14000), 0xf10) /* ImmutableArray */; // 0x434b8c
    ListView_ctor_builder() /* 0x3ab2bc */; // 0x434b90
    AllocationStub_SmartRefresher() /* 0x3ab290 */; // 0x434b94
    x0 = local_m40; // 0x434b9c
    x3 = x0; // 0x434b98
    local_m50 = x3; // 0x434ba0
    memSet(x3, 0x2b, w0); // 0x434ba4
    x0 = local_m70; // 0x434ba8
    memSet(x3, 0xb, w0); // 0x434bac
    x0 = local_m60; // 0x434bb0
    memSet(x3, 0xf, w0); // 0x434bb4
    x0 = NULL + 0x30; // 0x434bb8
    memSet(x3, 0x1b, w0); // 0x434bbc
    x4 = NULL + 0x20; // 0x434bc0
    memSet(x3, 0x13, w4); // 0x434bc4
    memSet(x3, 0x17, w0); // 0x434bc8
    x1 = mem((PP + 0x15000), 0x3c0) /* Function */; // 0x434bd4
    x2 = local_m28; // 0x434bcc
    AllocationStub__Closure() /* 0x61ec54 */; // 0x434bd8
    x0 = local_m50; // 0x434be0
    x1 = x0; // 0x434bdc
    memSet(x0, 0x23, w1); // 0x434be4
    AllocationStub_ClipRRect() /* 0x3b378c */; // 0x434be8
    x0 = local_m58; // 0x434bf0
    x2 = x0; // 0x434bec
    local_m40 = x2; // 0x434bf4
    memSet(x2, 0xf, w0); // 0x434bf8
    x0 = mem((PP + 0xe000), 0xf40) /* Obj!Clip@12344  */; // 0x434c00
    memSet(x2, 0x17, w0); // 0x434c04
    x0 = local_m50; // 0x434c08
    memSet(x2, 0xb, w0); // 0x434c0c
    x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x434c14
    AllocationStub_Expanded() /* 0x39fb14 */; // 0x434c18
    x0 = 1; // 0x434c20
    x2 = x0; // 0x434c1c
    local_m50 = x2; // 0x434c24
    memSet(x2, 0x13, x0); // 0x434c28
    x0 = mem((PP + 0xe000), 0xad8) /* Obj!FlexFit@12272  */; // 0x434c30
    memSet(x2, 0x1b, w0); // 0x434c34
    x0 = local_m40; // 0x434c38
    memSet(x2, 0xb, w0); // 0x434c3c
    x0 = local_m30; // 0x434c40
    if (x0 > 6) {
      AllocationStub_Container() /* 0x391a04 */; // 0x434c5c
      x1 = x0; // 0x434c60
      local_m40 = x0; // 0x434c64
      x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x434c68
      Container_ctor() /* 0x391490 */; // 0x434c6c
      x7 = local_m40; // 0x434c70
    } else {
      x1 = local_m8; // 0x434c4c
      GameFruitBetRecordDialogState_bottomLabelWiget() /* 0x435288 */; // 0x434c50
      x7 = x0; // 0x434c54
    }
    x0 = local_m50; // 0x434c80
    x2 = 10; // 0x434c88
    x3 = local_m48; // 0x434c7c
    x4 = local_m38; // 0x434c78
    x5 = local_m18; // 0x434c74
    x6 = 10; // 0x434c84
    local_m40 = x7; // 0x434c8c
    x1 = NULL; // 0x434c90
    sub_0x61f920(); // 0x434c94
    x0 = local_m18; // 0x434c9c
    x2 = x0; // 0x434c98
    local_m58 = x2; // 0x434ca0
    memSet(x2, 0xf, w0); // 0x434ca4
    x0 = local_m38; // 0x434ca8
    memSet(x2, 0x13, w0); // 0x434cac
    x0 = local_m48; // 0x434cb0
    memSet(x2, 0x17, w0); // 0x434cb4
    x0 = local_m50; // 0x434cb8
    memSet(x2, 0x1b, w0); // 0x434cbc
    x0 = local_m40; // 0x434cc0
    memSet(x2, 0x1f, w0); // 0x434cc4
    x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x434cc8
    AllocationStub__GrowableList() /* 0x61e854 */; // 0x434ccc
    x0 = local_m58; // 0x434cd4
    x1 = x0; // 0x434cd0
    local_m18 = x1; // 0x434cd8
    memSet(x1, 0xf, w0); // 0x434cdc
    x0 = 10; // 0x434ce0
    memSet(x1, 0xb, w0); // 0x434ce4
    AllocationStub_Column() /* 0x39310c */; // 0x434ce8
    x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x434cf4
    x1 = x0; // 0x434cec
    memSet(x1, 0xf, w0); // 0x434cf8
    x2 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x434d00
    memSet(x1, 0x13, w2); // 0x434d04
    x3 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x434d0c
    memSet(x1, 0x17, w3); // 0x434d10
    x3 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x434d18
    memSet(x1, 0x1b, w3); // 0x434d1c
    x4 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x434d24
    memSet(x1, 0x23, w4); // 0x434d28
    x5 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x434d30
    memSet(x1, 0x2b, w5); // 0x434d34
    memSet(x1, 0x2f, xzr); // 0x434d38
    x6 = local_m18; // 0x434d3c
    memSet(x1, 0xb, w6); // 0x434d40
  }
  x0 = local_m20; // 0x434d7c
  local_m8 = x1; // 0x434d80
  AllocationStub_GameFruitBackgroundDialog() /* 0x3a1da8 */; // 0x434d84
  d0 = 4644671367260667904; // 0x434d8c
  x17 = PP + 0x12000; // 0x434d88
  local_m18 = x0; // 0x434d90
  memSet(x0, 0xb, d0); // 0x434d94
  d0 = 4644548221958356992; // 0x434d9c
  x17 = PP + 0x12000; // 0x434d98
  memSet(x0, 0x13, d0); // 0x434da0
  x1 = local_m8; // 0x434da4
  memSet(x0, 0x1b, w1); // 0x434da8
  x1 = local_m20; // 0x434dac
  memSet(x0, 0x1f, w1); // 0x434db0
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x434db4
  x0 = mem((PP + 0x12000), 0x560) /* Double */; // 0x434dc0
  x1 = x0; // 0x434db8
  local_m8 = x1; // 0x434dc4
  memSet(x1, 0x13, w0); // 0x434dc8
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x434dcc
  x0 = "assets/images/3.0x/game_fruit_icon_close.webp" /* pp+0x12568 */; // 0x434dd8
  x1 = x0; // 0x434dd0
  local_m20 = x1; // 0x434ddc
  memSet(x1, 0xb, w0); // 0x434de0
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x434de8
  memSet(x1, 0xf, w0); // 0x434dec
  x0 = mem((PP + 0x12000), 0x560) /* Double */; // 0x434df4
  memSet(x1, 0x13, w0); // 0x434df8
  memSet(x1, 0x17, w0); // 0x434dfc
  AllocationStub_Container() /* 0x391a04 */; // 0x434e00
  local_m38 = x0; // 0x434e04
  BARRIER = local_m20; // 0x434e08
  local_0 = BARRIER; // 0x434e0c
  x1 = x0; // 0x434e10
  x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x434e18
  Container_ctor() /* 0x391490 */; // 0x434e1c
  sub_0x3a1d94(); // 0x434e20
  x1 = mem((PP + 0x15000), 0x3c8) /* Function */; // 0x434e2c
  x2 = local_m28; // 0x434e24
  local_m20 = x0; // 0x434e30
  AllocationStub__Closure() /* 0x61ec54 */; // 0x434e34
  BARRIER = local_m38; // 0x434e38
  // frame: x0, BARRIER, mem(SP) // 0x434e3c
  x1 = local_m20; // 0x434e40
  x4 = mem((PP + 0xe000), 0xec0) /* ImmutableArray */; // 0x434e48
  GestureDetector_ctor() /* 0x3a18c4 */; // 0x434e4c
  x1 = NULL; // 0x434e50
  x2 = 6; // 0x434e54
  sub_0x61f920(); // 0x434e58
  x0 = local_m18; // 0x434e60
  x2 = x0; // 0x434e5c
  local_m28 = x2; // 0x434e64
  memSet(x2, 0xf, w0); // 0x434e68
  x0 = local_m8; // 0x434e6c
  memSet(x2, 0x13, w0); // 0x434e70
  x0 = local_m20; // 0x434e74
  memSet(x2, 0x17, w0); // 0x434e78
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x434e7c
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x434e80
  x0 = local_m28; // 0x434e88
  x1 = x0; // 0x434e84
  local_m8 = x1; // 0x434e8c
  memSet(x1, 0xf, w0); // 0x434e90
  x0 = 6; // 0x434e94
  memSet(x1, 0xb, w0); // 0x434e98
  AllocationStub_Column() /* 0x39310c */; // 0x434e9c
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x434ea8
  x1 = x0; // 0x434ea0
  local_m18 = x1; // 0x434eac
  memSet(x1, 0xf, w0); // 0x434eb0
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x434eb8
  memSet(x1, 0x13, w0); // 0x434ebc
  x0 = mem((PP + 0xe000), 0xb08) /* Obj!MainAxisSize@12270  */; // 0x434ec4
  memSet(x1, 0x17, w0); // 0x434ec8
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x434ed0
  memSet(x1, 0x1b, w0); // 0x434ed4
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x434edc
  memSet(x1, 0x23, w0); // 0x434ee0
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x434ee8
  memSet(x1, 0x2b, w0); // 0x434eec
  memSet(x1, 0x2f, xzr); // 0x434ef0
  x2 = local_m8; // 0x434ef4
  memSet(x1, 0xb, w2); // 0x434ef8
  AllocationStub_Material() /* 0x3949f8 */; // 0x434efc
  x0 = mem((PP + 0x12000), 0x578) /* Obj!MaterialType@122b4  */; // 0x434f08
  x1 = x0; // 0x434f00
  local_m8 = x1; // 0x434f0c
  memSet(x1, 0xf, w0); // 0x434f10
  memSet(x1, 0x13, xzr); // 0x434f14
  x0 = NULL + 0x20; // 0x434f18
  memSet(x1, 0x2f, w0); // 0x434f1c
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x434f24
  memSet(x1, 0x33, w0); // 0x434f28
  x0 = mem((PP + 0xc000), 0x258) /* Obj!Duration@12360  */; // 0x434f30
  memSet(x1, 0x37, w0); // 0x434f34
  x0 = local_m18; // 0x434f38
  memSet(x1, 0xb, w0); // 0x434f3c
  AllocationStub_Center() /* 0x396940 */; // 0x434f40
  x0 = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x434f4c
  x2 = x0; // 0x434f44
  local_m18 = x2; // 0x434f50
  memSet(x2, 0xf, w0); // 0x434f54
  x0 = local_m8; // 0x434f58
  memSet(x2, 0xb, w0); // 0x434f5c
  x1 = mem((PP + 0xf000), 0x218) /* TypeArguments */; // 0x434f64
  AllocationStub_MediaQuery() /* 0x396454 */; // 0x434f68
  x1 = x0; // 0x434f6c
  x2 = local_m18; // 0x434f70
  x3 = local_m10; // 0x434f74
  local_m8 = x0; // 0x434f78
  MediaQuery_ctor_removeViewInsets() /* 0x395ac8 */; // 0x434f7c
  SP = FP; // 0x434f84
  x0 = local_m8; // 0x434f80
  // frame: FP, LR, mem(SP), 0x10 // 0x434f88
  return;
}

// GameFruitBetRecordDialogState_NodataDialogLWidget
// raw disassembly:
//  0x434f9c: stp FP, LR, [SP, #-0x10]!
//  0x434fa0: mov FP, SP
//  0x434fa4: sub SP, SP, #0x20
//  0x434fa8: mov x0, x1
//  0x434fac: stur x1, [FP, #-8]
//  0x434fb0: ldr BARRIER, [THR, #0x38]
//  0x434fb4: cmp SP, BARRIER
//  0x434fb8: b.ls #0x4350b0
//  0x434fbc: add x1, PP, #0xc, lsl #12
//  0x434fc0: ldr x1, [x1, #0x878]
//  0x434fc4: ldr x4, [PP, #0x4c0]
//  0x434fc8: bl #0x3a1dcc
//  0x434fcc: ldur x1, [FP, #-8]
//  0x434fd0: mov x2, x0
//  0x434fd4: bl #0x4358f8
//  0x434fd8: stur x0, [FP, #-0x10]
//  0x434fdc: bl #0x3949ec
//  0x434fe0: mov x2, x0
//  0x434fe4: add x0, PP, #0xa, lsl #12
//  0x434fe8: ldr x0, [x0, #0x4e0]
//  0x434fec: stur x2, [FP, #-0x18]
//  0x434ff0: stur w0, [x2, #0x13]
//  0x434ff4: ldur x1, [FP, #-8]
//  0x434ff8: bl #0x4350b8
//  0x434ffc: mov x1, NULL
//  0x435000: mov x2, #6
//  0x435004: stur x0, [FP, #-8]
//  0x435008: bl #0x61f920
//  0x43500c: mov x2, x0
//  0x435010: ldur x0, [FP, #-0x10]
//  0x435014: stur x2, [FP, #-0x20]
//  0x435018: stur w0, [x2, #0xf]
//  0x43501c: ldur x0, [FP, #-0x18]
//  0x435020: stur w0, [x2, #0x13]
//  0x435024: ldur x0, [FP, #-8]
//  0x435028: stur w0, [x2, #0x17]
//  0x43502c: ldr x1, [PP, #0x5c58]
//  0x435030: bl #0x61e854
//  0x435034: mov x1, x0
//  0x435038: ldur x0, [FP, #-0x20]
//  0x43503c: stur x1, [FP, #-8]
//  0x435040: stur w0, [x1, #0xf]
//  0x435044: mov x0, #6
//  0x435048: stur w0, [x1, #0xb]
//  0x43504c: bl #0x39310c
//  0x435050: add x1, PP, #0xa, lsl #12
//  0x435054: ldr x1, [x1, #0x858]
//  0x435058: stur w1, [x0, #0xf]
//  0x43505c: add x1, PP, #0xe, lsl #12
//  0x435060: ldr x1, [x1, #0xae0]
//  0x435064: stur w1, [x0, #0x13]
//  0x435068: add x1, PP, #0xe, lsl #12
//  0x43506c: ldr x1, [x1, #0xae8]
//  0x435070: stur w1, [x0, #0x17]
//  0x435074: add x1, PP, #0xe, lsl #12
//  0x435078: ldr x1, [x1, #0xb60]
//  0x43507c: stur w1, [x0, #0x1b]
//  0x435080: add x1, PP, #0xe, lsl #12
//  0x435084: ldr x1, [x1, #0xaf8]
//  0x435088: stur w1, [x0, #0x23]
//  0x43508c: add x1, PP, #0xa, lsl #12
//  0x435090: ldr x1, [x1, #0xa8]
//  0x435094: stur w1, [x0, #0x2b]
//  0x435098: stur xzr, [x0, #0x2f]
//  0x43509c: ldur x1, [FP, #-8]
//  0x4350a0: stur w1, [x0, #0xb]
//  0x4350a4: mov SP, FP
//  0x4350a8: ldp FP, LR, [SP], #0x10
//  0x4350ac: ret 
//  0x4350b0: bl #0x61fa28
//  0x4350b4: b #0x434fbc
//
dynamic GameFruitBetRecordDialogState_NodataDialogLWidget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x434f9c
  // frame: FP = SP // 0x434fa0
  // frame: SP = SP - 0x20 // 0x434fa4
  x0 = x1; // 0x434fa8
  local_m8 = x1; // 0x434fac
  BARRIER = mem(THR, 0x38); // 0x434fb0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4350b0
  }
  x1 = "virtual_party_fruitland_page_bet_record_popup_title" /* pp+0xc878 */; // 0x434fc0
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x434fc4
  getString() /* 0x3a1dcc */; // 0x434fc8
  x1 = local_m8; // 0x434fcc
  x2 = x0; // 0x434fd0
  GameFruitBetRecordDialogState_titleLabelWidget() /* 0x4358f8 */; // 0x434fd4
  local_m10 = x0; // 0x434fd8
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x434fdc
  x0 = mem((PP + 0xa000), 0x4e0) /* Double */; // 0x434fe8
  x2 = x0; // 0x434fe0
  local_m18 = x2; // 0x434fec
  memSet(x2, 0x13, w0); // 0x434ff0
  x1 = local_m8; // 0x434ff4
  GameFruitBetRecordDialogState_dialogListEmptyWidget() /* 0x4350b8 */; // 0x434ff8
  x1 = NULL; // 0x434ffc
  x2 = 6; // 0x435000
  local_m8 = x0; // 0x435004
  sub_0x61f920(); // 0x435008
  x0 = local_m10; // 0x435010
  x2 = x0; // 0x43500c
  local_m20 = x2; // 0x435014
  memSet(x2, 0xf, w0); // 0x435018
  x0 = local_m18; // 0x43501c
  memSet(x2, 0x13, w0); // 0x435020
  x0 = local_m8; // 0x435024
  memSet(x2, 0x17, w0); // 0x435028
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x43502c
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x435030
  x0 = local_m20; // 0x435038
  x1 = x0; // 0x435034
  local_m8 = x1; // 0x43503c
  memSet(x1, 0xf, w0); // 0x435040
  x0 = 6; // 0x435044
  memSet(x1, 0xb, w0); // 0x435048
  AllocationStub_Column() /* 0x39310c */; // 0x43504c
  x1 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x435054
  memSet(x0, 0xf, w1); // 0x435058
  x1 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x435060
  memSet(x0, 0x13, w1); // 0x435064
  x1 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x43506c
  memSet(x0, 0x17, w1); // 0x435070
  x1 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x435078
  memSet(x0, 0x1b, w1); // 0x43507c
  x1 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x435084
  memSet(x0, 0x23, w1); // 0x435088
  x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x435090
  memSet(x0, 0x2b, w1); // 0x435094
  memSet(x0, 0x2f, xzr); // 0x435098
  x1 = local_m8; // 0x43509c
  memSet(x0, 0xb, w1); // 0x4350a0
  SP = FP; // 0x4350a4
  // frame: FP, LR, mem(SP), 0x10 // 0x4350a8
  return;
}

// GameFruitBetRecordDialogState_dialogListEmptyWidget
// raw disassembly:
//  0x4350b8: stp FP, LR, [SP, #-0x10]!
//  0x4350bc: mov FP, SP
//  0x4350c0: sub SP, SP, #0x38
//  0x4350c4: ldr BARRIER, [THR, #0x38]
//  0x4350c8: cmp SP, BARRIER
//  0x4350cc: b.ls #0x435280
//  0x4350d0: bl #0x3a142c
//  0x4350d4: mov x1, x0
//  0x4350d8: add x0, PP, #0xf, lsl #12
//  0x4350dc: ldr x0, [x0, #0x268]
//  0x4350e0: stur x1, [FP, #-8]
//  0x4350e4: stur w0, [x1, #0xb]
//  0x4350e8: add x0, PP, #0xf, lsl #12
//  0x4350ec: ldr x0, [x0, #0x170]
//  0x4350f0: stur w0, [x1, #0xf]
//  0x4350f4: add x0, PP, #0xf, lsl #12
//  0x4350f8: ldr x0, [x0, #0x270]
//  0x4350fc: stur w0, [x1, #0x13]
//  0x435100: add x0, PP, #0xf, lsl #12
//  0x435104: ldr x0, [x0, #0x278]
//  0x435108: stur w0, [x1, #0x17]
//  0x43510c: bl #0x391a04
//  0x435110: stur x0, [FP, #-0x10]
//  0x435114: ldur BARRIER, [FP, #-8]
//  0x435118: str BARRIER, [SP]
//  0x43511c: mov x1, x0
//  0x435120: add x4, PP, #0xc, lsl #12
//  0x435124: ldr x4, [x4, #0x1f8]
//  0x435128: bl #0x391490
//  0x43512c: bl #0x3949ec
//  0x435130: mov x2, x0
//  0x435134: add x0, PP, #0xe, lsl #12
//  0x435138: ldr x0, [x0, #0xb50]
//  0x43513c: stur x2, [FP, #-8]
//  0x435140: stur w0, [x2, #0x13]
//  0x435144: add x1, PP, #0xc, lsl #12
//  0x435148: ldr x1, [x1, #0x818]
//  0x43514c: ldr x4, [PP, #0x4c0]
//  0x435150: bl #0x3a1dcc
//  0x435154: stur x0, [FP, #-0x18]
//  0x435158: bl #0x31abec
//  0x43515c: mov x1, x0
//  0x435160: add x0, NULL, #0x20
//  0x435164: stur x1, [FP, #-0x20]
//  0x435168: stur w0, [x1, #7]
//  0x43516c: ldr x0, [PP, #0x6050]
//  0x435170: stur w0, [x1, #0xb]
//  0x435174: add x0, PP, #0xe, lsl #12
//  0x435178: ldr x0, [x0, #0xde8]
//  0x43517c: stur w0, [x1, #0x1f]
//  0x435180: bl #0x393bf8
//  0x435184: mov x3, x0
//  0x435188: ldur x0, [FP, #-0x18]
//  0x43518c: stur x3, [FP, #-0x28]
//  0x435190: stur w0, [x3, #0xb]
//  0x435194: ldur x0, [FP, #-0x20]
//  0x435198: stur w0, [x3, #0x13]
//  0x43519c: mov x1, NULL
//  0x4351a0: mov x2, #6
//  0x4351a4: bl #0x61f920
//  0x4351a8: mov x2, x0
//  0x4351ac: ldur x0, [FP, #-0x10]
//  0x4351b0: stur x2, [FP, #-0x18]
//  0x4351b4: stur w0, [x2, #0xf]
//  0x4351b8: ldur x0, [FP, #-8]
//  0x4351bc: stur w0, [x2, #0x13]
//  0x4351c0: ldur x0, [FP, #-0x28]
//  0x4351c4: stur w0, [x2, #0x17]
//  0x4351c8: ldr x1, [PP, #0x5c58]
//  0x4351cc: bl #0x61e854
//  0x4351d0: mov x1, x0
//  0x4351d4: ldur x0, [FP, #-0x18]
//  0x4351d8: stur x1, [FP, #-8]
//  0x4351dc: stur w0, [x1, #0xf]
//  0x4351e0: mov x0, #6
//  0x4351e4: stur w0, [x1, #0xb]
//  0x4351e8: bl #0x39310c
//  0x4351ec: mov x1, x0
//  0x4351f0: add x0, PP, #0xa, lsl #12
//  0x4351f4: ldr x0, [x0, #0x858]
//  0x4351f8: stur x1, [FP, #-0x10]
//  0x4351fc: stur w0, [x1, #0xf]
//  0x435200: add x0, PP, #0xf, lsl #12
//  0x435204: ldr x0, [x0, #0x288]
//  0x435208: stur w0, [x1, #0x13]
//  0x43520c: add x0, PP, #0xe, lsl #12
//  0x435210: ldr x0, [x0, #0xae8]
//  0x435214: stur w0, [x1, #0x17]
//  0x435218: add x0, PP, #0xe, lsl #12
//  0x43521c: ldr x0, [x0, #0xb60]
//  0x435220: stur w0, [x1, #0x1b]
//  0x435224: add x0, PP, #0xe, lsl #12
//  0x435228: ldr x0, [x0, #0xaf8]
//  0x43522c: stur w0, [x1, #0x23]
//  0x435230: add x0, PP, #0xa, lsl #12
//  0x435234: ldr x0, [x0, #0xa8]
//  0x435238: stur w0, [x1, #0x2b]
//  0x43523c: stur xzr, [x1, #0x2f]
//  0x435240: ldur x0, [FP, #-8]
//  0x435244: stur w0, [x1, #0xb]
//  0x435248: bl #0x391a04
//  0x43524c: stur x0, [FP, #-8]
//  0x435250: add BARRIER, PP, #0xa, lsl #12
//  0x435254: ldr BARRIER, [BARRIER, #0x3c0]
//  0x435258: ldur LR, [FP, #-0x10]
//  0x43525c: stp LR, BARRIER, [SP]
//  0x435260: mov x1, x0
//  0x435264: add x4, PP, #0xf, lsl #12
//  0x435268: ldr x4, [x4, #0x568]
//  0x43526c: bl #0x391490
//  0x435270: ldur x0, [FP, #-8]
//  0x435274: mov SP, FP
//  0x435278: ldp FP, LR, [SP], #0x10
//  0x43527c: ret 
//  0x435280: bl #0x61fa28
//  0x435284: b #0x4350d0
//
dynamic GameFruitBetRecordDialogState_dialogListEmptyWidget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4350b8
  BARRIER = mem(THR, 0x38); // 0x4350c4
  // frame: FP = SP // 0x4350bc
  // frame: SP = SP - 0x38 // 0x4350c0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x435280
  }
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x4350d0
  x0 = "assets/images/3.0x/game_fruit_empty.webp" /* pp+0xf268 */; // 0x4350dc
  x1 = x0; // 0x4350d4
  local_m8 = x1; // 0x4350e0
  memSet(x1, 0xb, w0); // 0x4350e4
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x4350ec
  memSet(x1, 0xf, w0); // 0x4350f0
  x0 = mem((PP + 0xf000), 0x270) /* Double */; // 0x4350f8
  memSet(x1, 0x13, w0); // 0x4350fc
  x0 = mem((PP + 0xf000), 0x278) /* Double */; // 0x435104
  memSet(x1, 0x17, w0); // 0x435108
  AllocationStub_Container() /* 0x391a04 */; // 0x43510c
  local_m10 = x0; // 0x435110
  BARRIER = local_m8; // 0x435114
  local_0 = BARRIER; // 0x435118
  x1 = x0; // 0x43511c
  x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x435124
  Container_ctor() /* 0x391490 */; // 0x435128
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x43512c
  x0 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x435138
  x2 = x0; // 0x435130
  local_m8 = x2; // 0x43513c
  memSet(x2, 0x13, w0); // 0x435140
  x1 = "virtual_party_fruitland_page_bet_record_popup_default_text" /* pp+0xc818 */; // 0x435148
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x43514c
  getString() /* 0x3a1dcc */; // 0x435150
  local_m18 = x0; // 0x435154
  AllocationStub_TextStyle() /* 0x31abec */; // 0x435158
  x0 = NULL + 0x20; // 0x435160
  x1 = x0; // 0x43515c
  local_m20 = x1; // 0x435164
  memSet(x1, 7, w0); // 0x435168
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x43516c
  memSet(x1, 0xb, w0); // 0x435170
  x0 = mem((PP + 0xe000), 0xde8) /* Double */; // 0x435178
  memSet(x1, 0x1f, w0); // 0x43517c
  AllocationStub_Text() /* 0x393bf8 */; // 0x435180
  x0 = local_m18; // 0x435188
  x3 = x0; // 0x435184
  local_m28 = x3; // 0x43518c
  memSet(x3, 0xb, w0); // 0x435190
  x0 = local_m20; // 0x435194
  memSet(x3, 0x13, w0); // 0x435198
  x1 = NULL; // 0x43519c
  x2 = 6; // 0x4351a0
  sub_0x61f920(); // 0x4351a4
  x0 = local_m10; // 0x4351ac
  x2 = x0; // 0x4351a8
  local_m18 = x2; // 0x4351b0
  memSet(x2, 0xf, w0); // 0x4351b4
  x0 = local_m8; // 0x4351b8
  memSet(x2, 0x13, w0); // 0x4351bc
  x0 = local_m28; // 0x4351c0
  memSet(x2, 0x17, w0); // 0x4351c4
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x4351c8
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x4351cc
  x0 = local_m18; // 0x4351d4
  x1 = x0; // 0x4351d0
  local_m8 = x1; // 0x4351d8
  memSet(x1, 0xf, w0); // 0x4351dc
  x0 = 6; // 0x4351e0
  memSet(x1, 0xb, w0); // 0x4351e4
  AllocationStub_Column() /* 0x39310c */; // 0x4351e8
  x0 = mem((PP + 0xa000), 0x858) /* Obj!Axis@12291  */; // 0x4351f4
  x1 = x0; // 0x4351ec
  local_m10 = x1; // 0x4351f8
  memSet(x1, 0xf, w0); // 0x4351fc
  x0 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x435204
  memSet(x1, 0x13, w0); // 0x435208
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x435210
  memSet(x1, 0x17, w0); // 0x435214
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x43521c
  memSet(x1, 0x1b, w0); // 0x435220
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x435228
  memSet(x1, 0x23, w0); // 0x43522c
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x435234
  memSet(x1, 0x2b, w0); // 0x435238
  memSet(x1, 0x2f, xzr); // 0x43523c
  x0 = local_m8; // 0x435240
  memSet(x1, 0xb, w0); // 0x435244
  AllocationStub_Container() /* 0x391a04 */; // 0x435248
  local_m8 = x0; // 0x43524c
  BARRIER = mem((PP + 0xa000), 0x3c0) /* Obj!Color@120b8  */; // 0x435254
  LR = local_m10; // 0x435258
  // frame: LR, BARRIER, mem(SP) // 0x43525c
  x1 = x0; // 0x435260
  x4 = mem((PP + 0xf000), 0x568) /* ImmutableArray */; // 0x435268
  Container_ctor() /* 0x391490 */; // 0x43526c
  SP = FP; // 0x435274
  x0 = local_m8; // 0x435270
  // frame: FP, LR, mem(SP), 0x10 // 0x435278
  return;
}

// GameFruitBetRecordDialogState_bottomLabelWiget
// raw disassembly:
//  0x435288: stp FP, LR, [SP, #-0x10]!
//  0x43528c: mov FP, SP
//  0x435290: sub SP, SP, #0x48
//  0x435294: ldr BARRIER, [THR, #0x38]
//  0x435298: cmp SP, BARRIER
//  0x43529c: b.ls #0x4354dc
//  0x4352a0: bl #0x31d844
//  0x4352a4: mov x1, x0
//  0x4352a8: ldr x0, [PP, #0x6310]
//  0x4352ac: stur x1, [FP, #-8]
//  0x4352b0: stur w0, [x1, #0x27]
//  0x4352b4: fmov d0, #0.50000000
//  0x4352b8: stur d0, [x1, #7]
//  0x4352bc: fmov d1, #1.00000000
//  0x4352c0: stur d1, [x1, #0xf]
//  0x4352c4: stur d1, [x1, #0x17]
//  0x4352c8: stur d1, [x1, #0x1f]
//  0x4352cc: bl #0x391a04
//  0x4352d0: stur x0, [FP, #-0x10]
//  0x4352d4: add BARRIER, PP, #0x12, lsl #12
//  0x4352d8: ldr BARRIER, [BARRIER, #0x560]
//  0x4352dc: ldr LR, [PP, #0x53a0]
//  0x4352e0: stp LR, BARRIER, [SP, #8]
//  0x4352e4: ldur BARRIER, [FP, #-8]
//  0x4352e8: str BARRIER, [SP]
//  0x4352ec: mov x1, x0
//  0x4352f0: add x4, PP, #0x15, lsl #12
//  0x4352f4: ldr x4, [x4, #0x110]
//  0x4352f8: bl #0x391490
//  0x4352fc: bl #0x3949ec
//  0x435300: mov x2, x0
//  0x435304: add x0, PP, #0xf, lsl #12
//  0x435308: ldr x0, [x0, #0xbb8]
//  0x43530c: stur x2, [FP, #-8]
//  0x435310: stur w0, [x2, #0xf]
//  0x435314: add x1, PP, #0xc, lsl #12
//  0x435318: ldr x1, [x1, #0x828]
//  0x43531c: ldr x4, [PP, #0x4c0]
//  0x435320: bl #0x3a1dcc
//  0x435324: stur x0, [FP, #-0x18]
//  0x435328: bl #0x31abec
//  0x43532c: mov x1, x0
//  0x435330: add x0, NULL, #0x20
//  0x435334: stur x1, [FP, #-0x20]
//  0x435338: stur w0, [x1, #7]
//  0x43533c: ldr x0, [PP, #0x6050]
//  0x435340: stur w0, [x1, #0xb]
//  0x435344: add x0, PP, #0xf, lsl #12
//  0x435348: ldr x0, [x0, #0xb80]
//  0x43534c: stur w0, [x1, #0x1f]
//  0x435350: add x0, PP, #0xe, lsl #12
//  0x435354: ldr x0, [x0, #0xe40]
//  0x435358: stur w0, [x1, #0x23]
//  0x43535c: bl #0x393bf8
//  0x435360: mov x1, x0
//  0x435364: ldur x0, [FP, #-0x18]
//  0x435368: stur x1, [FP, #-0x28]
//  0x43536c: stur w0, [x1, #0xb]
//  0x435370: ldur x0, [FP, #-0x20]
//  0x435374: stur w0, [x1, #0x13]
//  0x435378: bl #0x3949ec
//  0x43537c: mov x1, x0
//  0x435380: add x0, PP, #0xf, lsl #12
//  0x435384: ldr x0, [x0, #0xbb8]
//  0x435388: stur x1, [FP, #-0x18]
//  0x43538c: stur w0, [x1, #0xf]
//  0x435390: bl #0x31d844
//  0x435394: mov x1, x0
//  0x435398: ldr x0, [PP, #0x6310]
//  0x43539c: stur x1, [FP, #-0x20]
//  0x4353a0: stur w0, [x1, #0x27]
//  0x4353a4: fmov d0, #0.50000000
//  0x4353a8: stur d0, [x1, #7]
//  0x4353ac: fmov d0, #1.00000000
//  0x4353b0: stur d0, [x1, #0xf]
//  0x4353b4: stur d0, [x1, #0x17]
//  0x4353b8: stur d0, [x1, #0x1f]
//  0x4353bc: bl #0x391a04
//  0x4353c0: stur x0, [FP, #-0x30]
//  0x4353c4: add BARRIER, PP, #0x12, lsl #12
//  0x4353c8: ldr BARRIER, [BARRIER, #0x560]
//  0x4353cc: ldr LR, [PP, #0x53a0]
//  0x4353d0: stp LR, BARRIER, [SP, #8]
//  0x4353d4: ldur BARRIER, [FP, #-0x20]
//  0x4353d8: str BARRIER, [SP]
//  0x4353dc: mov x1, x0
//  0x4353e0: add x4, PP, #0x15, lsl #12
//  0x4353e4: ldr x4, [x4, #0x110]
//  0x4353e8: bl #0x391490
//  0x4353ec: mov x1, NULL
//  0x4353f0: mov x2, #0xa
//  0x4353f4: bl #0x61f920
//  0x4353f8: mov x2, x0
//  0x4353fc: ldur x0, [FP, #-0x10]
//  0x435400: stur x2, [FP, #-0x20]
//  0x435404: stur w0, [x2, #0xf]
//  0x435408: ldur x0, [FP, #-8]
//  0x43540c: stur w0, [x2, #0x13]
//  0x435410: ldur x0, [FP, #-0x28]
//  0x435414: stur w0, [x2, #0x17]
//  0x435418: ldur x0, [FP, #-0x18]
//  0x43541c: stur w0, [x2, #0x1b]
//  0x435420: ldur x0, [FP, #-0x30]
//  0x435424: stur w0, [x2, #0x1f]
//  0x435428: ldr x1, [PP, #0x5c58]
//  0x43542c: bl #0x61e854
//  0x435430: mov x1, x0
//  0x435434: ldur x0, [FP, #-0x20]
//  0x435438: stur x1, [FP, #-8]
//  0x43543c: stur w0, [x1, #0xf]
//  0x435440: mov x0, #0xa
//  0x435444: stur w0, [x1, #0xb]
//  0x435448: bl #0x3a1414
//  0x43544c: mov x1, x0
//  0x435450: ldr x0, [PP, #0x5140]
//  0x435454: stur x1, [FP, #-0x10]
//  0x435458: stur w0, [x1, #0xf]
//  0x43545c: add x0, PP, #0xf, lsl #12
//  0x435460: ldr x0, [x0, #0x288]
//  0x435464: stur w0, [x1, #0x13]
//  0x435468: add x0, PP, #0xe, lsl #12
//  0x43546c: ldr x0, [x0, #0xae8]
//  0x435470: stur w0, [x1, #0x17]
//  0x435474: add x0, PP, #0xe, lsl #12
//  0x435478: ldr x0, [x0, #0xb60]
//  0x43547c: stur w0, [x1, #0x1b]
//  0x435480: add x0, PP, #0xe, lsl #12
//  0x435484: ldr x0, [x0, #0xaf8]
//  0x435488: stur w0, [x1, #0x23]
//  0x43548c: add x0, PP, #0xa, lsl #12
//  0x435490: ldr x0, [x0, #0xa8]
//  0x435494: stur w0, [x1, #0x2b]
//  0x435498: stur xzr, [x1, #0x2f]
//  0x43549c: ldur x0, [FP, #-8]
//  0x4354a0: stur w0, [x1, #0xb]
//  0x4354a4: bl #0x391a04
//  0x4354a8: stur x0, [FP, #-8]
//  0x4354ac: add BARRIER, PP, #0x12, lsl #12
//  0x4354b0: ldr BARRIER, [BARRIER, #0x4d8]
//  0x4354b4: ldur LR, [FP, #-0x10]
//  0x4354b8: stp LR, BARRIER, [SP]
//  0x4354bc: mov x1, x0
//  0x4354c0: add x4, PP, #0xf, lsl #12
//  0x4354c4: ldr x4, [x4, #0x5f0]
//  0x4354c8: bl #0x391490
//  0x4354cc: ldur x0, [FP, #-8]
//  0x4354d0: mov SP, FP
//  0x4354d4: ldp FP, LR, [SP], #0x10
//  0x4354d8: ret 
//  0x4354dc: bl #0x61fa28
//  0x4354e0: b #0x4352a0
//
dynamic GameFruitBetRecordDialogState_bottomLabelWiget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x435288
  BARRIER = mem(THR, 0x38); // 0x435294
  // frame: FP = SP // 0x43528c
  // frame: SP = SP - 0x48 // 0x435290
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4354dc
  }
  AllocationStub_Color() /* 0x31d844 */; // 0x4352a0
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x4352a8
  x1 = x0; // 0x4352a4
  local_m8 = x1; // 0x4352ac
  memSet(x1, 0x27, w0); // 0x4352b0
  d0 = 0.50000000 /* bits */; // 0x4352b4
  memSet(x1, 7, d0); // 0x4352b8
  d1 = 1.00000000 /* bits */; // 0x4352bc
  memSet(x1, 0xf, d1); // 0x4352c0
  memSet(x1, 0x17, d1); // 0x4352c4
  memSet(x1, 0x1f, d1); // 0x4352c8
  AllocationStub_Container() /* 0x391a04 */; // 0x4352cc
  local_m10 = x0; // 0x4352d0
  BARRIER = mem((PP + 0x12000), 0x560) /* Double */; // 0x4352d8
  LR = mem(PP, 0x53a0) /* Double */; // 0x4352dc
  // frame: LR, BARRIER, mem(SP, 8) // 0x4352e0
  BARRIER = local_m8; // 0x4352e4
  local_0 = BARRIER; // 0x4352e8
  x1 = x0; // 0x4352ec
  x4 = mem((PP + 0x15000), 0x110) /* ImmutableArray */; // 0x4352f4
  Container_ctor() /* 0x391490 */; // 0x4352f8
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x4352fc
  x0 = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x435308
  x2 = x0; // 0x435300
  local_m8 = x2; // 0x43530c
  memSet(x2, 0xf, w0); // 0x435310
  x1 = "virtual_party_fruitland_page_bet_record_popup_no_content_tip" /* pp+0xc828 */; // 0x435318
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x43531c
  getString() /* 0x3a1dcc */; // 0x435320
  local_m18 = x0; // 0x435324
  AllocationStub_TextStyle() /* 0x31abec */; // 0x435328
  x0 = NULL + 0x20; // 0x435330
  x1 = x0; // 0x43532c
  local_m20 = x1; // 0x435334
  memSet(x1, 7, w0); // 0x435338
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x43533c
  memSet(x1, 0xb, w0); // 0x435340
  x0 = mem((PP + 0xf000), 0xb80) /* Double */; // 0x435348
  memSet(x1, 0x1f, w0); // 0x43534c
  x0 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x435354
  memSet(x1, 0x23, w0); // 0x435358
  AllocationStub_Text() /* 0x393bf8 */; // 0x43535c
  x0 = local_m18; // 0x435364
  x1 = x0; // 0x435360
  local_m28 = x1; // 0x435368
  memSet(x1, 0xb, w0); // 0x43536c
  x0 = local_m20; // 0x435370
  memSet(x1, 0x13, w0); // 0x435374
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x435378
  x0 = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x435384
  x1 = x0; // 0x43537c
  local_m18 = x1; // 0x435388
  memSet(x1, 0xf, w0); // 0x43538c
  AllocationStub_Color() /* 0x31d844 */; // 0x435390
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x435398
  x1 = x0; // 0x435394
  local_m20 = x1; // 0x43539c
  memSet(x1, 0x27, w0); // 0x4353a0
  d0 = 0.50000000 /* bits */; // 0x4353a4
  memSet(x1, 7, d0); // 0x4353a8
  d0 = 1.00000000 /* bits */; // 0x4353ac
  memSet(x1, 0xf, d0); // 0x4353b0
  memSet(x1, 0x17, d0); // 0x4353b4
  memSet(x1, 0x1f, d0); // 0x4353b8
  AllocationStub_Container() /* 0x391a04 */; // 0x4353bc
  local_m30 = x0; // 0x4353c0
  BARRIER = mem((PP + 0x12000), 0x560) /* Double */; // 0x4353c8
  LR = mem(PP, 0x53a0) /* Double */; // 0x4353cc
  // frame: LR, BARRIER, mem(SP, 8) // 0x4353d0
  BARRIER = local_m20; // 0x4353d4
  local_0 = BARRIER; // 0x4353d8
  x1 = x0; // 0x4353dc
  x4 = mem((PP + 0x15000), 0x110) /* ImmutableArray */; // 0x4353e4
  Container_ctor() /* 0x391490 */; // 0x4353e8
  x1 = NULL; // 0x4353ec
  x2 = 10; // 0x4353f0
  sub_0x61f920(); // 0x4353f4
  x0 = local_m10; // 0x4353fc
  x2 = x0; // 0x4353f8
  local_m20 = x2; // 0x435400
  memSet(x2, 0xf, w0); // 0x435404
  x0 = local_m8; // 0x435408
  memSet(x2, 0x13, w0); // 0x43540c
  x0 = local_m28; // 0x435410
  memSet(x2, 0x17, w0); // 0x435414
  x0 = local_m18; // 0x435418
  memSet(x2, 0x1b, w0); // 0x43541c
  x0 = local_m30; // 0x435420
  memSet(x2, 0x1f, w0); // 0x435424
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x435428
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x43542c
  x0 = local_m20; // 0x435434
  x1 = x0; // 0x435430
  local_m8 = x1; // 0x435438
  memSet(x1, 0xf, w0); // 0x43543c
  x0 = 10; // 0x435440
  memSet(x1, 0xb, w0); // 0x435444
  AllocationStub_Row() /* 0x3a1414 */; // 0x435448
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x435450
  x1 = x0; // 0x43544c
  local_m10 = x1; // 0x435454
  memSet(x1, 0xf, w0); // 0x435458
  x0 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x435460
  memSet(x1, 0x13, w0); // 0x435464
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x43546c
  memSet(x1, 0x17, w0); // 0x435470
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x435478
  memSet(x1, 0x1b, w0); // 0x43547c
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x435484
  memSet(x1, 0x23, w0); // 0x435488
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x435490
  memSet(x1, 0x2b, w0); // 0x435494
  memSet(x1, 0x2f, xzr); // 0x435498
  x0 = local_m8; // 0x43549c
  memSet(x1, 0xb, w0); // 0x4354a0
  AllocationStub_Container() /* 0x391a04 */; // 0x4354a4
  local_m8 = x0; // 0x4354a8
  BARRIER = mem((PP + 0x12000), 0x4d8) /* Double */; // 0x4354b0
  LR = local_m10; // 0x4354b4
  // frame: LR, BARRIER, mem(SP) // 0x4354b8
  x1 = x0; // 0x4354bc
  x4 = mem((PP + 0xf000), 0x5f0) /* ImmutableArray */; // 0x4354c4
  Container_ctor() /* 0x391490 */; // 0x4354c8
  SP = FP; // 0x4354d0
  x0 = local_m8; // 0x4354cc
  // frame: FP, LR, mem(SP), 0x10 // 0x4354d4
  return;
}

// GameFruitBetRecordDialogState_titleListWidget
// raw disassembly:
//  0x4354e4: stp FP, LR, [SP, #-0x10]!
//  0x4354e8: mov FP, SP
//  0x4354ec: sub SP, SP, #0x60
//  0x4354f0: ldr BARRIER, [THR, #0x38]
//  0x4354f4: cmp SP, BARRIER
//  0x4354f8: b.ls #0x4358f0
//  0x4354fc: bl #0x31abec
//  0x435500: mov x1, x0
//  0x435504: add x0, NULL, #0x20
//  0x435508: stur x1, [FP, #-8]
//  0x43550c: stur w0, [x1, #7]
//  0x435510: ldr x0, [PP, #0x6050]
//  0x435514: stur w0, [x1, #0xb]
//  0x435518: add x0, PP, #0xf, lsl #12
//  0x43551c: ldr x0, [x0, #0xb80]
//  0x435520: stur w0, [x1, #0x1f]
//  0x435524: add x0, PP, #0xe, lsl #12
//  0x435528: ldr x0, [x0, #0xe40]
//  0x43552c: stur w0, [x1, #0x23]
//  0x435530: bl #0x31d844
//  0x435534: mov x2, x0
//  0x435538: ldr x0, [PP, #0x6310]
//  0x43553c: stur x2, [FP, #-0x10]
//  0x435540: stur w0, [x2, #0x27]
//  0x435544: ldr d0, [PP, #0x66a0]
//  0x435548: stur d0, [x2, #7]
//  0x43554c: fmov d1, #1.00000000
//  0x435550: stur d1, [x2, #0xf]
//  0x435554: stur d1, [x2, #0x17]
//  0x435558: stur d1, [x2, #0x1f]
//  0x43555c: add x1, PP, #0xc, lsl #12
//  0x435560: ldr x1, [x1, #0x868]
//  0x435564: ldr x4, [PP, #0x4c0]
//  0x435568: bl #0x3a1dcc
//  0x43556c: stur x0, [FP, #-0x18]
//  0x435570: bl #0x393bf8
//  0x435574: mov x1, x0
//  0x435578: ldur x0, [FP, #-0x18]
//  0x43557c: stur x1, [FP, #-0x20]
//  0x435580: stur w0, [x1, #0xb]
//  0x435584: ldur x0, [FP, #-8]
//  0x435588: stur w0, [x1, #0x13]
//  0x43558c: add x2, PP, #0xf, lsl #12
//  0x435590: ldr x2, [x2, #0x230]
//  0x435594: stur w2, [x1, #0x2b]
//  0x435598: mov x3, #2
//  0x43559c: stur w3, [x1, #0x37]
//  0x4355a0: bl #0x391a04
//  0x4355a4: stur x0, [FP, #-0x18]
//  0x4355a8: ldur BARRIER, [FP, #-0x10]
//  0x4355ac: add LR, PP, #0x15, lsl #12
//  0x4355b0: ldr LR, [LR, #0x458]
//  0x4355b4: stp LR, BARRIER, [SP, #0x18]
//  0x4355b8: add BARRIER, PP, #0xf, lsl #12
//  0x4355bc: ldr BARRIER, [BARRIER, #0x310]
//  0x4355c0: add LR, PP, #0xe, lsl #12
//  0x4355c4: ldr LR, [LR, #0xaa0]
//  0x4355c8: stp LR, BARRIER, [SP, #8]
//  0x4355cc: ldur BARRIER, [FP, #-0x20]
//  0x4355d0: str BARRIER, [SP]
//  0x4355d4: mov x1, x0
//  0x4355d8: add x4, PP, #0x15, lsl #12
//  0x4355dc: ldr x4, [x4, #0x498]
//  0x4355e0: bl #0x391490
//  0x4355e4: bl #0x31d844
//  0x4355e8: mov x2, x0
//  0x4355ec: ldr x0, [PP, #0x6310]
//  0x4355f0: stur x2, [FP, #-0x10]
//  0x4355f4: stur w0, [x2, #0x27]
//  0x4355f8: add x17, PP, #0x12, lsl #12
//  0x4355fc: ldr d0, [x17, #0xf18]
//  0x435600: stur d0, [x2, #7]
//  0x435604: fmov d1, #1.00000000
//  0x435608: stur d1, [x2, #0xf]
//  0x43560c: stur d1, [x2, #0x17]
//  0x435610: stur d1, [x2, #0x1f]
//  0x435614: add x1, PP, #0xc, lsl #12
//  0x435618: ldr x1, [x1, #0x858]
//  0x43561c: ldr x4, [PP, #0x4c0]
//  0x435620: bl #0x3a1dcc
//  0x435624: stur x0, [FP, #-0x20]
//  0x435628: bl #0x393bf8
//  0x43562c: mov x1, x0
//  0x435630: ldur x0, [FP, #-0x20]
//  0x435634: stur x1, [FP, #-0x28]
//  0x435638: stur w0, [x1, #0xb]
//  0x43563c: ldur x0, [FP, #-8]
//  0x435640: stur w0, [x1, #0x13]
//  0x435644: add x2, PP, #0xf, lsl #12
//  0x435648: ldr x2, [x2, #0x230]
//  0x43564c: stur w2, [x1, #0x2b]
//  0x435650: mov x3, #2
//  0x435654: stur w3, [x1, #0x37]
//  0x435658: bl #0x391a04
//  0x43565c: stur x0, [FP, #-0x20]
//  0x435660: ldur BARRIER, [FP, #-0x10]
//  0x435664: add LR, PP, #0x15, lsl #12
//  0x435668: ldr LR, [LR, #0x468]
//  0x43566c: stp LR, BARRIER, [SP, #0x18]
//  0x435670: add BARRIER, PP, #0xf, lsl #12
//  0x435674: ldr BARRIER, [BARRIER, #0x310]
//  0x435678: add LR, PP, #0xe, lsl #12
//  0x43567c: ldr LR, [LR, #0xaa0]
//  0x435680: stp LR, BARRIER, [SP, #8]
//  0x435684: ldur BARRIER, [FP, #-0x28]
//  0x435688: str BARRIER, [SP]
//  0x43568c: mov x1, x0
//  0x435690: add x4, PP, #0x15, lsl #12
//  0x435694: ldr x4, [x4, #0x498]
//  0x435698: bl #0x391490
//  0x43569c: bl #0x31d844
//  0x4356a0: mov x2, x0
//  0x4356a4: ldr x0, [PP, #0x6310]
//  0x4356a8: stur x2, [FP, #-0x10]
//  0x4356ac: stur w0, [x2, #0x27]
//  0x4356b0: ldr d0, [PP, #0x66a0]
//  0x4356b4: stur d0, [x2, #7]
//  0x4356b8: fmov d0, #1.00000000
//  0x4356bc: stur d0, [x2, #0xf]
//  0x4356c0: stur d0, [x2, #0x17]
//  0x4356c4: stur d0, [x2, #0x1f]
//  0x4356c8: add x1, PP, #0xc, lsl #12
//  0x4356cc: ldr x1, [x1, #0x848]
//  0x4356d0: ldr x4, [PP, #0x4c0]
//  0x4356d4: bl #0x3a1dcc
//  0x4356d8: stur x0, [FP, #-0x28]
//  0x4356dc: bl #0x393bf8
//  0x4356e0: mov x1, x0
//  0x4356e4: ldur x0, [FP, #-0x28]
//  0x4356e8: stur x1, [FP, #-0x30]
//  0x4356ec: stur w0, [x1, #0xb]
//  0x4356f0: ldur x0, [FP, #-8]
//  0x4356f4: stur w0, [x1, #0x13]
//  0x4356f8: add x2, PP, #0xf, lsl #12
//  0x4356fc: ldr x2, [x2, #0x230]
//  0x435700: stur w2, [x1, #0x2b]
//  0x435704: mov x3, #2
//  0x435708: stur w3, [x1, #0x37]
//  0x43570c: bl #0x391a04
//  0x435710: stur x0, [FP, #-0x28]
//  0x435714: ldur BARRIER, [FP, #-0x10]
//  0x435718: add LR, PP, #0x15, lsl #12
//  0x43571c: ldr LR, [LR, #0x470]
//  0x435720: stp LR, BARRIER, [SP, #0x18]
//  0x435724: add BARRIER, PP, #0xf, lsl #12
//  0x435728: ldr BARRIER, [BARRIER, #0x310]
//  0x43572c: add LR, PP, #0xe, lsl #12
//  0x435730: ldr LR, [LR, #0xaa0]
//  0x435734: stp LR, BARRIER, [SP, #8]
//  0x435738: ldur BARRIER, [FP, #-0x30]
//  0x43573c: str BARRIER, [SP]
//  0x435740: mov x1, x0
//  0x435744: add x4, PP, #0x15, lsl #12
//  0x435748: ldr x4, [x4, #0x498]
//  0x43574c: bl #0x391490
//  0x435750: bl #0x31d844
//  0x435754: mov x2, x0
//  0x435758: ldr x0, [PP, #0x6310]
//  0x43575c: stur x2, [FP, #-0x10]
//  0x435760: stur w0, [x2, #0x27]
//  0x435764: add x17, PP, #0x12, lsl #12
//  0x435768: ldr d0, [x17, #0xf18]
//  0x43576c: stur d0, [x2, #7]
//  0x435770: fmov d0, #1.00000000
//  0x435774: stur d0, [x2, #0xf]
//  0x435778: stur d0, [x2, #0x17]
//  0x43577c: stur d0, [x2, #0x1f]
//  0x435780: add x1, PP, #0xc, lsl #12
//  0x435784: ldr x1, [x1, #0x838]
//  0x435788: ldr x4, [PP, #0x4c0]
//  0x43578c: bl #0x3a1dcc
//  0x435790: stur x0, [FP, #-0x30]
//  0x435794: bl #0x393bf8
//  0x435798: mov x1, x0
//  0x43579c: ldur x0, [FP, #-0x30]
//  0x4357a0: stur x1, [FP, #-0x38]
//  0x4357a4: stur w0, [x1, #0xb]
//  0x4357a8: ldur x0, [FP, #-8]
//  0x4357ac: stur w0, [x1, #0x13]
//  0x4357b0: add x0, PP, #0xf, lsl #12
//  0x4357b4: ldr x0, [x0, #0x230]
//  0x4357b8: stur w0, [x1, #0x2b]
//  0x4357bc: mov x0, #2
//  0x4357c0: stur w0, [x1, #0x37]
//  0x4357c4: bl #0x391a04
//  0x4357c8: stur x0, [FP, #-8]
//  0x4357cc: ldur BARRIER, [FP, #-0x10]
//  0x4357d0: add LR, PP, #0x15, lsl #12
//  0x4357d4: ldr LR, [LR, #0x478]
//  0x4357d8: stp LR, BARRIER, [SP, #0x18]
//  0x4357dc: add BARRIER, PP, #0xf, lsl #12
//  0x4357e0: ldr BARRIER, [BARRIER, #0x310]
//  0x4357e4: add LR, PP, #0xe, lsl #12
//  0x4357e8: ldr LR, [LR, #0xaa0]
//  0x4357ec: stp LR, BARRIER, [SP, #8]
//  0x4357f0: ldur BARRIER, [FP, #-0x38]
//  0x4357f4: str BARRIER, [SP]
//  0x4357f8: mov x1, x0
//  0x4357fc: add x4, PP, #0x15, lsl #12
//  0x435800: ldr x4, [x4, #0x498]
//  0x435804: bl #0x391490
//  0x435808: mov x1, NULL
//  0x43580c: mov x2, #8
//  0x435810: bl #0x61f920
//  0x435814: mov x2, x0
//  0x435818: ldur x0, [FP, #-0x18]
//  0x43581c: stur x2, [FP, #-0x10]
//  0x435820: stur w0, [x2, #0xf]
//  0x435824: ldur x0, [FP, #-0x20]
//  0x435828: stur w0, [x2, #0x13]
//  0x43582c: ldur x0, [FP, #-0x28]
//  0x435830: stur w0, [x2, #0x17]
//  0x435834: ldur x0, [FP, #-8]
//  0x435838: stur w0, [x2, #0x1b]
//  0x43583c: ldr x1, [PP, #0x5c58]
//  0x435840: bl #0x61e854
//  0x435844: mov x1, x0
//  0x435848: ldur x0, [FP, #-0x10]
//  0x43584c: stur x1, [FP, #-8]
//  0x435850: stur w0, [x1, #0xf]
//  0x435854: mov x0, #8
//  0x435858: stur w0, [x1, #0xb]
//  0x43585c: bl #0x3a1414
//  0x435860: mov x1, x0
//  0x435864: ldr x0, [PP, #0x5140]
//  0x435868: stur x1, [FP, #-0x10]
//  0x43586c: stur w0, [x1, #0xf]
//  0x435870: add x0, PP, #0xe, lsl #12
//  0x435874: ldr x0, [x0, #0xae0]
//  0x435878: stur w0, [x1, #0x13]
//  0x43587c: add x0, PP, #0xe, lsl #12
//  0x435880: ldr x0, [x0, #0xae8]
//  0x435884: stur w0, [x1, #0x17]
//  0x435888: add x0, PP, #0xe, lsl #12
//  0x43588c: ldr x0, [x0, #0xb60]
//  0x435890: stur w0, [x1, #0x1b]
//  0x435894: add x0, PP, #0xe, lsl #12
//  0x435898: ldr x0, [x0, #0xaf8]
//  0x43589c: stur w0, [x1, #0x23]
//  0x4358a0: add x0, PP, #0xa, lsl #12
//  0x4358a4: ldr x0, [x0, #0xa8]
//  0x4358a8: stur w0, [x1, #0x2b]
//  0x4358ac: stur xzr, [x1, #0x2f]
//  0x4358b0: ldur x0, [FP, #-8]
//  0x4358b4: stur w0, [x1, #0xb]
//  0x4358b8: bl #0x391a04
//  0x4358bc: stur x0, [FP, #-8]
//  0x4358c0: add BARRIER, PP, #0xf, lsl #12
//  0x4358c4: ldr BARRIER, [BARRIER, #0x310]
//  0x4358c8: ldur LR, [FP, #-0x10]
//  0x4358cc: stp LR, BARRIER, [SP]
//  0x4358d0: mov x1, x0
//  0x4358d4: add x4, PP, #0xf, lsl #12
//  0x4358d8: ldr x4, [x4, #0x5f0]
//  0x4358dc: bl #0x391490
//  0x4358e0: ldur x0, [FP, #-8]
//  0x4358e4: mov SP, FP
//  0x4358e8: ldp FP, LR, [SP], #0x10
//  0x4358ec: ret 
//  0x4358f0: bl #0x61fa28
//  0x4358f4: b #0x4354fc
//
dynamic GameFruitBetRecordDialogState_titleListWidget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4354e4
  BARRIER = mem(THR, 0x38); // 0x4354f0
  // frame: FP = SP // 0x4354e8
  // frame: SP = SP - 0x60 // 0x4354ec
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4358f0
  }
  AllocationStub_TextStyle() /* 0x31abec */; // 0x4354fc
  x0 = NULL + 0x20; // 0x435504
  x1 = x0; // 0x435500
  local_m8 = x1; // 0x435508
  memSet(x1, 7, w0); // 0x43550c
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x435510
  memSet(x1, 0xb, w0); // 0x435514
  x0 = mem((PP + 0xf000), 0xb80) /* Double */; // 0x43551c
  memSet(x1, 0x1f, w0); // 0x435520
  x0 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x435528
  memSet(x1, 0x23, w0); // 0x43552c
  AllocationStub_Color() /* 0x31d844 */; // 0x435530
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x435538
  x2 = x0; // 0x435534
  local_m10 = x2; // 0x43553c
  memSet(x2, 0x27, w0); // 0x435540
  d0 = 4596373779694328218; // 0x435544
  memSet(x2, 7, d0); // 0x435548
  d1 = 1.00000000 /* bits */; // 0x43554c
  memSet(x2, 0xf, d1); // 0x435550
  memSet(x2, 0x17, d1); // 0x435554
  memSet(x2, 0x1f, d1); // 0x435558
  x1 = "virtual_party_fruitland_page_bet_record_popup_time" /* pp+0xc868 */; // 0x435560
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x435564
  getString() /* 0x3a1dcc */; // 0x435568
  local_m18 = x0; // 0x43556c
  AllocationStub_Text() /* 0x393bf8 */; // 0x435570
  x0 = local_m18; // 0x435578
  x1 = x0; // 0x435574
  local_m20 = x1; // 0x43557c
  memSet(x1, 0xb, w0); // 0x435580
  x0 = local_m8; // 0x435584
  memSet(x1, 0x13, w0); // 0x435588
  x2 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x435590
  memSet(x1, 0x2b, w2); // 0x435594
  x3 = 2; // 0x435598
  memSet(x1, 0x37, w3); // 0x43559c
  AllocationStub_Container() /* 0x391a04 */; // 0x4355a0
  local_m18 = x0; // 0x4355a4
  BARRIER = local_m10; // 0x4355a8
  LR = mem((PP + 0x15000), 0x458) /* Double */; // 0x4355b0
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x4355b4
  BARRIER = mem((PP + 0xf000), 0x310) /* Double */; // 0x4355bc
  LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x4355c4
  // frame: LR, BARRIER, mem(SP, 8) // 0x4355c8
  BARRIER = local_m20; // 0x4355cc
  local_0 = BARRIER; // 0x4355d0
  x1 = x0; // 0x4355d4
  x4 = mem((PP + 0x15000), 0x498) /* ImmutableArray */; // 0x4355dc
  Container_ctor() /* 0x391490 */; // 0x4355e0
  AllocationStub_Color() /* 0x31d844 */; // 0x4355e4
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x4355ec
  x2 = x0; // 0x4355e8
  local_m10 = x2; // 0x4355f0
  memSet(x2, 0x27, w0); // 0x4355f4
  d0 = 4599075939470750515; // 0x4355fc
  x17 = PP + 0x12000; // 0x4355f8
  memSet(x2, 7, d0); // 0x435600
  d1 = 1.00000000 /* bits */; // 0x435604
  memSet(x2, 0xf, d1); // 0x435608
  memSet(x2, 0x17, d1); // 0x43560c
  memSet(x2, 0x1f, d1); // 0x435610
  x1 = "virtual_party_fruitland_page_bet_record_popup_fruit" /* pp+0xc858 */; // 0x435618
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x43561c
  getString() /* 0x3a1dcc */; // 0x435620
  local_m20 = x0; // 0x435624
  AllocationStub_Text() /* 0x393bf8 */; // 0x435628
  x0 = local_m20; // 0x435630
  x1 = x0; // 0x43562c
  local_m28 = x1; // 0x435634
  memSet(x1, 0xb, w0); // 0x435638
  x0 = local_m8; // 0x43563c
  memSet(x1, 0x13, w0); // 0x435640
  x2 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x435648
  memSet(x1, 0x2b, w2); // 0x43564c
  x3 = 2; // 0x435650
  memSet(x1, 0x37, w3); // 0x435654
  AllocationStub_Container() /* 0x391a04 */; // 0x435658
  local_m20 = x0; // 0x43565c
  BARRIER = local_m10; // 0x435660
  LR = mem((PP + 0x15000), 0x468) /* Double */; // 0x435668
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x43566c
  BARRIER = mem((PP + 0xf000), 0x310) /* Double */; // 0x435674
  LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x43567c
  // frame: LR, BARRIER, mem(SP, 8) // 0x435680
  BARRIER = local_m28; // 0x435684
  local_0 = BARRIER; // 0x435688
  x1 = x0; // 0x43568c
  x4 = mem((PP + 0x15000), 0x498) /* ImmutableArray */; // 0x435694
  Container_ctor() /* 0x391490 */; // 0x435698
  AllocationStub_Color() /* 0x31d844 */; // 0x43569c
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x4356a4
  x2 = x0; // 0x4356a0
  local_m10 = x2; // 0x4356a8
  memSet(x2, 0x27, w0); // 0x4356ac
  d0 = 4596373779694328218; // 0x4356b0
  memSet(x2, 7, d0); // 0x4356b4
  d0 = 1.00000000 /* bits */; // 0x4356b8
  memSet(x2, 0xf, d0); // 0x4356bc
  memSet(x2, 0x17, d0); // 0x4356c0
  memSet(x2, 0x1f, d0); // 0x4356c4
  x1 = "virtual_party_fruitland_page_bet_record_popup_bet_amount" /* pp+0xc848 */; // 0x4356cc
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4356d0
  getString() /* 0x3a1dcc */; // 0x4356d4
  local_m28 = x0; // 0x4356d8
  AllocationStub_Text() /* 0x393bf8 */; // 0x4356dc
  x0 = local_m28; // 0x4356e4
  x1 = x0; // 0x4356e0
  local_m30 = x1; // 0x4356e8
  memSet(x1, 0xb, w0); // 0x4356ec
  x0 = local_m8; // 0x4356f0
  memSet(x1, 0x13, w0); // 0x4356f4
  x2 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x4356fc
  memSet(x1, 0x2b, w2); // 0x435700
  x3 = 2; // 0x435704
  memSet(x1, 0x37, w3); // 0x435708
  AllocationStub_Container() /* 0x391a04 */; // 0x43570c
  local_m28 = x0; // 0x435710
  BARRIER = local_m10; // 0x435714
  LR = mem((PP + 0x15000), 0x470) /* Double */; // 0x43571c
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x435720
  BARRIER = mem((PP + 0xf000), 0x310) /* Double */; // 0x435728
  LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x435730
  // frame: LR, BARRIER, mem(SP, 8) // 0x435734
  BARRIER = local_m30; // 0x435738
  local_0 = BARRIER; // 0x43573c
  x1 = x0; // 0x435740
  x4 = mem((PP + 0x15000), 0x498) /* ImmutableArray */; // 0x435748
  Container_ctor() /* 0x391490 */; // 0x43574c
  AllocationStub_Color() /* 0x31d844 */; // 0x435750
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x435758
  x2 = x0; // 0x435754
  local_m10 = x2; // 0x43575c
  memSet(x2, 0x27, w0); // 0x435760
  d0 = 4599075939470750515; // 0x435768
  x17 = PP + 0x12000; // 0x435764
  memSet(x2, 7, d0); // 0x43576c
  d0 = 1.00000000 /* bits */; // 0x435770
  memSet(x2, 0xf, d0); // 0x435774
  memSet(x2, 0x17, d0); // 0x435778
  memSet(x2, 0x1f, d0); // 0x43577c
  x1 = "virtual_party_fruitland_page_bet_record_popup_win_amount" /* pp+0xc838 */; // 0x435784
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x435788
  getString() /* 0x3a1dcc */; // 0x43578c
  local_m30 = x0; // 0x435790
  AllocationStub_Text() /* 0x393bf8 */; // 0x435794
  x0 = local_m30; // 0x43579c
  x1 = x0; // 0x435798
  local_m38 = x1; // 0x4357a0
  memSet(x1, 0xb, w0); // 0x4357a4
  x0 = local_m8; // 0x4357a8
  memSet(x1, 0x13, w0); // 0x4357ac
  x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x4357b4
  memSet(x1, 0x2b, w0); // 0x4357b8
  x0 = 2; // 0x4357bc
  memSet(x1, 0x37, w0); // 0x4357c0
  AllocationStub_Container() /* 0x391a04 */; // 0x4357c4
  local_m8 = x0; // 0x4357c8
  BARRIER = local_m10; // 0x4357cc
  LR = mem((PP + 0x15000), 0x478) /* Double */; // 0x4357d4
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x4357d8
  BARRIER = mem((PP + 0xf000), 0x310) /* Double */; // 0x4357e0
  LR = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x4357e8
  // frame: LR, BARRIER, mem(SP, 8) // 0x4357ec
  BARRIER = local_m38; // 0x4357f0
  local_0 = BARRIER; // 0x4357f4
  x1 = x0; // 0x4357f8
  x4 = mem((PP + 0x15000), 0x498) /* ImmutableArray */; // 0x435800
  Container_ctor() /* 0x391490 */; // 0x435804
  x1 = NULL; // 0x435808
  x2 = 8; // 0x43580c
  sub_0x61f920(); // 0x435810
  x0 = local_m18; // 0x435818
  x2 = x0; // 0x435814
  local_m10 = x2; // 0x43581c
  memSet(x2, 0xf, w0); // 0x435820
  x0 = local_m20; // 0x435824
  memSet(x2, 0x13, w0); // 0x435828
  x0 = local_m28; // 0x43582c
  memSet(x2, 0x17, w0); // 0x435830
  x0 = local_m8; // 0x435834
  memSet(x2, 0x1b, w0); // 0x435838
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x43583c
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x435840
  x0 = local_m10; // 0x435848
  x1 = x0; // 0x435844
  local_m8 = x1; // 0x43584c
  memSet(x1, 0xf, w0); // 0x435850
  x0 = 8; // 0x435854
  memSet(x1, 0xb, w0); // 0x435858
  AllocationStub_Row() /* 0x3a1414 */; // 0x43585c
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x435864
  x1 = x0; // 0x435860
  local_m10 = x1; // 0x435868
  memSet(x1, 0xf, w0); // 0x43586c
  x0 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x435874
  memSet(x1, 0x13, w0); // 0x435878
  x0 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x435880
  memSet(x1, 0x17, w0); // 0x435884
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x43588c
  memSet(x1, 0x1b, w0); // 0x435890
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x435898
  memSet(x1, 0x23, w0); // 0x43589c
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x4358a4
  memSet(x1, 0x2b, w0); // 0x4358a8
  memSet(x1, 0x2f, xzr); // 0x4358ac
  x0 = local_m8; // 0x4358b0
  memSet(x1, 0xb, w0); // 0x4358b4
  AllocationStub_Container() /* 0x391a04 */; // 0x4358b8
  local_m8 = x0; // 0x4358bc
  BARRIER = mem((PP + 0xf000), 0x310) /* Double */; // 0x4358c4
  LR = local_m10; // 0x4358c8
  // frame: LR, BARRIER, mem(SP) // 0x4358cc
  x1 = x0; // 0x4358d0
  x4 = mem((PP + 0xf000), 0x5f0) /* ImmutableArray */; // 0x4358d8
  Container_ctor() /* 0x391490 */; // 0x4358dc
  SP = FP; // 0x4358e4
  x0 = local_m8; // 0x4358e0
  // frame: FP, LR, mem(SP), 0x10 // 0x4358e8
  return;
}

// GameFruitBetRecordDialogState_titleLabelWidget
// raw disassembly:
//  0x4358f8: stp FP, LR, [SP, #-0x10]!
//  0x4358fc: mov FP, SP
//  0x435900: sub SP, SP, #0x58
//  0x435904: stur x2, [FP, #-8]
//  0x435908: ldr BARRIER, [THR, #0x38]
//  0x43590c: cmp SP, BARRIER
//  0x435910: b.ls #0x435c5c
//  0x435914: bl #0x352b04
//  0x435918: fmov d0, #8.00000000
//  0x43591c: stur x0, [FP, #-0x10]
//  0x435920: stur d0, [x0, #7]
//  0x435924: stur d0, [x0, #0xf]
//  0x435928: bl #0x392f28
//  0x43592c: mov x1, x0
//  0x435930: ldur x0, [FP, #-0x10]
//  0x435934: stur x1, [FP, #-0x18]
//  0x435938: stur w0, [x1, #7]
//  0x43593c: stur w0, [x1, #0xb]
//  0x435940: stur w0, [x1, #0xf]
//  0x435944: stur w0, [x1, #0x13]
//  0x435948: bl #0x31d844
//  0x43594c: mov x1, x0
//  0x435950: ldr x0, [PP, #0x6310]
//  0x435954: stur x1, [FP, #-0x10]
//  0x435958: stur w0, [x1, #0x27]
//  0x43595c: fmov d0, #1.00000000
//  0x435960: stur d0, [x1, #7]
//  0x435964: add x17, PP, #0x15, lsl #12
//  0x435968: ldr d0, [x17, #0x4a0]
//  0x43596c: stur d0, [x1, #0xf]
//  0x435970: stur xzr, [x1, #0x17]
//  0x435974: add x17, PP, #0x15, lsl #12
//  0x435978: ldr d0, [x17, #0x4a8]
//  0x43597c: stur d0, [x1, #0x1f]
//  0x435980: bl #0x391dd8
//  0x435984: mov x1, x0
//  0x435988: ldur x0, [FP, #-0x10]
//  0x43598c: stur x1, [FP, #-0x20]
//  0x435990: stur w0, [x1, #7]
//  0x435994: ldur x0, [FP, #-0x18]
//  0x435998: stur w0, [x1, #0x13]
//  0x43599c: add x0, PP, #0xe, lsl #12
//  0x4359a0: ldr x0, [x0, #0xb78]
//  0x4359a4: stur w0, [x1, #0x23]
//  0x4359a8: bl #0x2e3578
//  0x4359ac: fmov d0, #10.00000000
//  0x4359b0: stur x0, [FP, #-0x10]
//  0x4359b4: stur d0, [x0, #7]
//  0x4359b8: stur xzr, [x0, #0xf]
//  0x4359bc: stur xzr, [x0, #0x17]
//  0x4359c0: stur xzr, [x0, #0x1f]
//  0x4359c4: bl #0x3a142c
//  0x4359c8: mov x1, x0
//  0x4359cc: add x0, PP, #0x15, lsl #12
//  0x4359d0: ldr x0, [x0, #0x4b0]
//  0x4359d4: stur x1, [FP, #-0x18]
//  0x4359d8: stur w0, [x1, #0xb]
//  0x4359dc: add x0, PP, #0xf, lsl #12
//  0x4359e0: ldr x0, [x0, #0x170]
//  0x4359e4: stur w0, [x1, #0xf]
//  0x4359e8: add x2, PP, #0xe, lsl #12
//  0x4359ec: ldr x2, [x2, #0xb50]
//  0x4359f0: stur w2, [x1, #0x13]
//  0x4359f4: add x3, PP, #0xf, lsl #12
//  0x4359f8: ldr x3, [x3, #0x228]
//  0x4359fc: stur w3, [x1, #0x17]
//  0x435a00: bl #0x391a04
//  0x435a04: stur x0, [FP, #-0x28]
//  0x435a08: ldur BARRIER, [FP, #-0x10]
//  0x435a0c: ldur LR, [FP, #-0x18]
//  0x435a10: stp LR, BARRIER, [SP]
//  0x435a14: mov x1, x0
//  0x435a18: add x4, PP, #0xf, lsl #12
//  0x435a1c: ldr x4, [x4, #0x200]
//  0x435a20: bl #0x391490
//  0x435a24: bl #0x3949ec
//  0x435a28: mov x1, x0
//  0x435a2c: add x0, PP, #0xf, lsl #12
//  0x435a30: ldr x0, [x0, #0xbb8]
//  0x435a34: stur x1, [FP, #-0x10]
//  0x435a38: stur w0, [x1, #0xf]
//  0x435a3c: bl #0x31abec
//  0x435a40: mov x1, x0
//  0x435a44: add x0, NULL, #0x20
//  0x435a48: stur x1, [FP, #-0x18]
//  0x435a4c: stur w0, [x1, #7]
//  0x435a50: ldr x0, [PP, #0x6050]
//  0x435a54: stur w0, [x1, #0xb]
//  0x435a58: add x0, PP, #0xf, lsl #12
//  0x435a5c: ldr x0, [x0, #0x208]
//  0x435a60: stur w0, [x1, #0x1f]
//  0x435a64: add x0, PP, #0xe, lsl #12
//  0x435a68: ldr x0, [x0, #0xe40]
//  0x435a6c: stur w0, [x1, #0x23]
//  0x435a70: bl #0x393bf8
//  0x435a74: mov x2, x0
//  0x435a78: ldur x0, [FP, #-8]
//  0x435a7c: stur x2, [FP, #-0x30]
//  0x435a80: stur w0, [x2, #0xb]
//  0x435a84: ldur x0, [FP, #-0x18]
//  0x435a88: stur w0, [x2, #0x13]
//  0x435a8c: add x0, PP, #0xf, lsl #12
//  0x435a90: ldr x0, [x0, #0x230]
//  0x435a94: stur w0, [x2, #0x2b]
//  0x435a98: mov x0, #2
//  0x435a9c: stur w0, [x2, #0x37]
//  0x435aa0: add x1, PP, #0xe, lsl #12
//  0x435aa4: ldr x1, [x1, #0xad0]
//  0x435aa8: bl #0x3a1420
//  0x435aac: mov x1, x0
//  0x435ab0: mov x0, #1
//  0x435ab4: stur x1, [FP, #-8]
//  0x435ab8: stur x0, [x1, #0x13]
//  0x435abc: add x0, PP, #0x10, lsl #12
//  0x435ac0: ldr x0, [x0, #0x950]
//  0x435ac4: stur w0, [x1, #0x1b]
//  0x435ac8: ldur x0, [FP, #-0x30]
//  0x435acc: stur w0, [x1, #0xb]
//  0x435ad0: bl #0x3949ec
//  0x435ad4: mov x1, x0
//  0x435ad8: add x0, PP, #0xf, lsl #12
//  0x435adc: ldr x0, [x0, #0xbb8]
//  0x435ae0: stur x1, [FP, #-0x18]
//  0x435ae4: stur w0, [x1, #0xf]
//  0x435ae8: bl #0x2e3578
//  0x435aec: stur x0, [FP, #-0x30]
//  0x435af0: stur xzr, [x0, #7]
//  0x435af4: stur xzr, [x0, #0xf]
//  0x435af8: fmov d0, #10.00000000
//  0x435afc: stur d0, [x0, #0x17]
//  0x435b00: stur xzr, [x0, #0x1f]
//  0x435b04: bl #0x3a142c
//  0x435b08: mov x1, x0
//  0x435b0c: add x0, PP, #0x15, lsl #12
//  0x435b10: ldr x0, [x0, #0x4b8]
//  0x435b14: stur x1, [FP, #-0x38]
//  0x435b18: stur w0, [x1, #0xb]
//  0x435b1c: add x0, PP, #0xf, lsl #12
//  0x435b20: ldr x0, [x0, #0x170]
//  0x435b24: stur w0, [x1, #0xf]
//  0x435b28: add x0, PP, #0xe, lsl #12
//  0x435b2c: ldr x0, [x0, #0xb50]
//  0x435b30: stur w0, [x1, #0x13]
//  0x435b34: add x0, PP, #0xf, lsl #12
//  0x435b38: ldr x0, [x0, #0x228]
//  0x435b3c: stur w0, [x1, #0x17]
//  0x435b40: bl #0x391a04
//  0x435b44: stur x0, [FP, #-0x40]
//  0x435b48: ldur BARRIER, [FP, #-0x30]
//  0x435b4c: ldur LR, [FP, #-0x38]
//  0x435b50: stp LR, BARRIER, [SP]
//  0x435b54: mov x1, x0
//  0x435b58: add x4, PP, #0xf, lsl #12
//  0x435b5c: ldr x4, [x4, #0x200]
//  0x435b60: bl #0x391490
//  0x435b64: mov x1, NULL
//  0x435b68: mov x2, #0xa
//  0x435b6c: bl #0x61f920
//  0x435b70: mov x2, x0
//  0x435b74: ldur x0, [FP, #-0x28]
//  0x435b78: stur x2, [FP, #-0x30]
//  0x435b7c: stur w0, [x2, #0xf]
//  0x435b80: ldur x0, [FP, #-0x10]
//  0x435b84: stur w0, [x2, #0x13]
//  0x435b88: ldur x0, [FP, #-8]
//  0x435b8c: stur w0, [x2, #0x17]
//  0x435b90: ldur x0, [FP, #-0x18]
//  0x435b94: stur w0, [x2, #0x1b]
//  0x435b98: ldur x0, [FP, #-0x40]
//  0x435b9c: stur w0, [x2, #0x1f]
//  0x435ba0: ldr x1, [PP, #0x5c58]
//  0x435ba4: bl #0x61e854
//  0x435ba8: mov x1, x0
//  0x435bac: ldur x0, [FP, #-0x30]
//  0x435bb0: stur x1, [FP, #-8]
//  0x435bb4: stur w0, [x1, #0xf]
//  0x435bb8: mov x0, #0xa
//  0x435bbc: stur w0, [x1, #0xb]
//  0x435bc0: bl #0x3a1414
//  0x435bc4: mov x1, x0
//  0x435bc8: ldr x0, [PP, #0x5140]
//  0x435bcc: stur x1, [FP, #-0x10]
//  0x435bd0: stur w0, [x1, #0xf]
//  0x435bd4: add x0, PP, #0xf, lsl #12
//  0x435bd8: ldr x0, [x0, #0x288]
//  0x435bdc: stur w0, [x1, #0x13]
//  0x435be0: add x0, PP, #0xe, lsl #12
//  0x435be4: ldr x0, [x0, #0xb08]
//  0x435be8: stur w0, [x1, #0x17]
//  0x435bec: add x0, PP, #0xe, lsl #12
//  0x435bf0: ldr x0, [x0, #0xb60]
//  0x435bf4: stur w0, [x1, #0x1b]
//  0x435bf8: add x0, PP, #0xe, lsl #12
//  0x435bfc: ldr x0, [x0, #0xaf8]
//  0x435c00: stur w0, [x1, #0x23]
//  0x435c04: add x0, PP, #0xa, lsl #12
//  0x435c08: ldr x0, [x0, #0xa8]
//  0x435c0c: stur w0, [x1, #0x2b]
//  0x435c10: stur xzr, [x1, #0x2f]
//  0x435c14: ldur x0, [FP, #-8]
//  0x435c18: stur w0, [x1, #0xb]
//  0x435c1c: bl #0x391a04
//  0x435c20: stur x0, [FP, #-8]
//  0x435c24: add BARRIER, PP, #0x12, lsl #12
//  0x435c28: ldr BARRIER, [BARRIER, #0x560]
//  0x435c2c: ldur LR, [FP, #-0x20]
//  0x435c30: stp LR, BARRIER, [SP, #8]
//  0x435c34: ldur BARRIER, [FP, #-0x10]
//  0x435c38: str BARRIER, [SP]
//  0x435c3c: mov x1, x0
//  0x435c40: add x4, PP, #0x15, lsl #12
//  0x435c44: ldr x4, [x4, #0x4c0]
//  0x435c48: bl #0x391490
//  0x435c4c: ldur x0, [FP, #-8]
//  0x435c50: mov SP, FP
//  0x435c54: ldp FP, LR, [SP], #0x10
//  0x435c58: ret 
//  0x435c5c: bl #0x61fa28
//  0x435c60: b #0x435914
//
dynamic GameFruitBetRecordDialogState_titleLabelWidget() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4358f8
  // frame: FP = SP // 0x4358fc
  // frame: SP = SP - 0x58 // 0x435900
  local_m8 = x2; // 0x435904
  BARRIER = mem(THR, 0x38); // 0x435908
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x435c5c
  }
  AllocationStub_Radius() /* 0x352b04 */; // 0x435914
  d0 = 8.00000000 /* bits */; // 0x435918
  local_m10 = x0; // 0x43591c
  memSet(x0, 7, d0); // 0x435920
  memSet(x0, 0xf, d0); // 0x435924
  AllocationStub_BorderRadius() /* 0x392f28 */; // 0x435928
  x0 = local_m10; // 0x435930
  x1 = x0; // 0x43592c
  local_m18 = x1; // 0x435934
  memSet(x1, 7, w0); // 0x435938
  memSet(x1, 0xb, w0); // 0x43593c
  memSet(x1, 0xf, w0); // 0x435940
  memSet(x1, 0x13, w0); // 0x435944
  AllocationStub_Color() /* 0x31d844 */; // 0x435948
  x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x435950
  x1 = x0; // 0x43594c
  local_m10 = x1; // 0x435954
  memSet(x1, 0x27, w0); // 0x435958
  d0 = 1.00000000 /* bits */; // 0x43595c
  memSet(x1, 7, d0); // 0x435960
  d0 = 4600029642921252503; // 0x435968
  x17 = PP + 0x15000; // 0x435964
  memSet(x1, 0xf, d0); // 0x43596c
  memSet(x1, 0x17, xzr); // 0x435970
  d0 = 4606016781249403868; // 0x435978
  x17 = PP + 0x15000; // 0x435974
  memSet(x1, 0x1f, d0); // 0x43597c
  AllocationStub_BoxDecoration() /* 0x391dd8 */; // 0x435980
  x0 = local_m10; // 0x435988
  x1 = x0; // 0x435984
  local_m20 = x1; // 0x43598c
  memSet(x1, 7, w0); // 0x435990
  x0 = local_m18; // 0x435994
  memSet(x1, 0x13, w0); // 0x435998
  x0 = mem((PP + 0xe000), 0xb78) /* Obj!BoxShape@12287  */; // 0x4359a0
  memSet(x1, 0x23, w0); // 0x4359a4
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x4359a8
  d0 = 10.00000000 /* bits */; // 0x4359ac
  local_m10 = x0; // 0x4359b0
  memSet(x0, 7, d0); // 0x4359b4
  memSet(x0, 0xf, xzr); // 0x4359b8
  memSet(x0, 0x17, xzr); // 0x4359bc
  memSet(x0, 0x1f, xzr); // 0x4359c0
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x4359c4
  x0 = "assets/images/3.0x/game_fruit_icon_left.webp" /* pp+0x154b0 */; // 0x4359d0
  x1 = x0; // 0x4359c8
  local_m18 = x1; // 0x4359d4
  memSet(x1, 0xb, w0); // 0x4359d8
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x4359e0
  memSet(x1, 0xf, w0); // 0x4359e4
  x2 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x4359ec
  memSet(x1, 0x13, w2); // 0x4359f0
  x3 = mem((PP + 0xf000), 0x228) /* Double */; // 0x4359f8
  memSet(x1, 0x17, w3); // 0x4359fc
  AllocationStub_Container() /* 0x391a04 */; // 0x435a00
  local_m28 = x0; // 0x435a04
  BARRIER = local_m10; // 0x435a08
  LR = local_m18; // 0x435a0c
  // frame: LR, BARRIER, mem(SP) // 0x435a10
  x1 = x0; // 0x435a14
  x4 = mem((PP + 0xf000), 0x200) /* ImmutableArray */; // 0x435a1c
  Container_ctor() /* 0x391490 */; // 0x435a20
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x435a24
  x0 = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x435a30
  x1 = x0; // 0x435a28
  local_m10 = x1; // 0x435a34
  memSet(x1, 0xf, w0); // 0x435a38
  AllocationStub_TextStyle() /* 0x31abec */; // 0x435a3c
  x0 = NULL + 0x20; // 0x435a44
  x1 = x0; // 0x435a40
  local_m18 = x1; // 0x435a48
  memSet(x1, 7, w0); // 0x435a4c
  x0 = mem(PP, 0x6050) /* Obj!Color@1206c  */; // 0x435a50
  memSet(x1, 0xb, w0); // 0x435a54
  x0 = mem((PP + 0xf000), 0x208) /* Double */; // 0x435a5c
  memSet(x1, 0x1f, w0); // 0x435a60
  x0 = mem((PP + 0xe000), 0xe40) /* Obj!FontWeight@1202a  */; // 0x435a68
  memSet(x1, 0x23, w0); // 0x435a6c
  AllocationStub_Text() /* 0x393bf8 */; // 0x435a70
  x0 = local_m8; // 0x435a78
  x2 = x0; // 0x435a74
  local_m30 = x2; // 0x435a7c
  memSet(x2, 0xb, w0); // 0x435a80
  x0 = local_m18; // 0x435a84
  memSet(x2, 0x13, w0); // 0x435a88
  x0 = mem((PP + 0xf000), 0x230) /* Obj!TextOverflow@1227d  */; // 0x435a90
  memSet(x2, 0x2b, w0); // 0x435a94
  x0 = 2; // 0x435a98
  memSet(x2, 0x37, w0); // 0x435a9c
  x1 = mem((PP + 0xe000), 0xad0) /* TypeArguments */; // 0x435aa4
  AllocationStub_Flexible() /* 0x3a1420 */; // 0x435aa8
  x0 = 1; // 0x435ab0
  x1 = x0; // 0x435aac
  local_m8 = x1; // 0x435ab4
  memSet(x1, 0x13, x0); // 0x435ab8
  x0 = mem((PP + 0x10000), 0x950) /* Obj!FlexFit@12273  */; // 0x435ac0
  memSet(x1, 0x1b, w0); // 0x435ac4
  x0 = local_m30; // 0x435ac8
  memSet(x1, 0xb, w0); // 0x435acc
  AllocationStub_SizedBox() /* 0x3949ec */; // 0x435ad0
  x0 = mem((PP + 0xf000), 0xbb8) /* Double */; // 0x435adc
  x1 = x0; // 0x435ad4
  local_m18 = x1; // 0x435ae0
  memSet(x1, 0xf, w0); // 0x435ae4
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x435ae8
  local_m30 = x0; // 0x435aec
  memSet(x0, 7, xzr); // 0x435af0
  memSet(x0, 0xf, xzr); // 0x435af4
  d0 = 10.00000000 /* bits */; // 0x435af8
  memSet(x0, 0x17, d0); // 0x435afc
  memSet(x0, 0x1f, xzr); // 0x435b00
  AllocationStub_SOAssetImage() /* 0x3a142c */; // 0x435b04
  x0 = "assets/images/3.0x/game_fruit_icon_right.webp" /* pp+0x154b8 */; // 0x435b10
  x1 = x0; // 0x435b08
  local_m38 = x1; // 0x435b14
  memSet(x1, 0xb, w0); // 0x435b18
  x0 = mem((PP + 0xf000), 0x170) /* Obj!ImageType@1215e  */; // 0x435b20
  memSet(x1, 0xf, w0); // 0x435b24
  x0 = mem((PP + 0xe000), 0xb50) /* Double */; // 0x435b2c
  memSet(x1, 0x13, w0); // 0x435b30
  x0 = mem((PP + 0xf000), 0x228) /* Double */; // 0x435b38
  memSet(x1, 0x17, w0); // 0x435b3c
  AllocationStub_Container() /* 0x391a04 */; // 0x435b40
  local_m40 = x0; // 0x435b44
  BARRIER = local_m30; // 0x435b48
  LR = local_m38; // 0x435b4c
  // frame: LR, BARRIER, mem(SP) // 0x435b50
  x1 = x0; // 0x435b54
  x4 = mem((PP + 0xf000), 0x200) /* ImmutableArray */; // 0x435b5c
  Container_ctor() /* 0x391490 */; // 0x435b60
  x1 = NULL; // 0x435b64
  x2 = 10; // 0x435b68
  sub_0x61f920(); // 0x435b6c
  x0 = local_m28; // 0x435b74
  x2 = x0; // 0x435b70
  local_m30 = x2; // 0x435b78
  memSet(x2, 0xf, w0); // 0x435b7c
  x0 = local_m10; // 0x435b80
  memSet(x2, 0x13, w0); // 0x435b84
  x0 = local_m8; // 0x435b88
  memSet(x2, 0x17, w0); // 0x435b8c
  x0 = local_m18; // 0x435b90
  memSet(x2, 0x1b, w0); // 0x435b94
  x0 = local_m40; // 0x435b98
  memSet(x2, 0x1f, w0); // 0x435b9c
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x435ba0
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x435ba4
  x0 = local_m30; // 0x435bac
  x1 = x0; // 0x435ba8
  local_m8 = x1; // 0x435bb0
  memSet(x1, 0xf, w0); // 0x435bb4
  x0 = 10; // 0x435bb8
  memSet(x1, 0xb, w0); // 0x435bbc
  AllocationStub_Row() /* 0x3a1414 */; // 0x435bc0
  x0 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x435bc8
  x1 = x0; // 0x435bc4
  local_m10 = x1; // 0x435bcc
  memSet(x1, 0xf, w0); // 0x435bd0
  x0 = mem((PP + 0xf000), 0x288) /* Obj!MainAxisAlignment@1226c  */; // 0x435bd8
  memSet(x1, 0x13, w0); // 0x435bdc
  x0 = mem((PP + 0xe000), 0xb08) /* Obj!MainAxisSize@12270  */; // 0x435be4
  memSet(x1, 0x17, w0); // 0x435be8
  x0 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x435bf0
  memSet(x1, 0x1b, w0); // 0x435bf4
  x0 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x435bfc
  memSet(x1, 0x23, w0); // 0x435c00
  x0 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x435c08
  memSet(x1, 0x2b, w0); // 0x435c0c
  memSet(x1, 0x2f, xzr); // 0x435c10
  x0 = local_m8; // 0x435c14
  memSet(x1, 0xb, w0); // 0x435c18
  AllocationStub_Container() /* 0x391a04 */; // 0x435c1c
  local_m8 = x0; // 0x435c20
  BARRIER = mem((PP + 0x12000), 0x560) /* Double */; // 0x435c28
  LR = local_m20; // 0x435c2c
  // frame: LR, BARRIER, mem(SP, 8) // 0x435c30
  BARRIER = local_m10; // 0x435c34
  local_0 = BARRIER; // 0x435c38
  x1 = x0; // 0x435c3c
  x4 = mem((PP + 0x15000), 0x4c0) /* ImmutableArray */; // 0x435c44
  Container_ctor() /* 0x391490 */; // 0x435c48
  SP = FP; // 0x435c50
  x0 = local_m8; // 0x435c4c
  // frame: FP, LR, mem(SP), 0x10 // 0x435c54
  return;
}

// GameFruitBetRecordDialogState_anon_closure_3
// raw disassembly:
//  0x435c64: stp FP, LR, [SP, #-0x10]!
//  0x435c68: mov FP, SP
//  0x435c6c: sub SP, SP, #0x28
//  0x435c70: ldr x0, [FP, #0x10]
//  0x435c74: ldur w1, [x0, #0x17]
//  0x435c78: add x1, x1, HEAP, lsl #32
//  0x435c7c: ldr BARRIER, [THR, #0x38]
//  0x435c80: cmp SP, BARRIER
//  0x435c84: b.ls #0x435d48
//  0x435c88: ldur w0, [x1, #0xf]
//  0x435c8c: add x0, x0, HEAP, lsl #32
//  0x435c90: ldur w1, [x0, #0xf]
//  0x435c94: add x1, x1, HEAP, lsl #32
//  0x435c98: cmp w1, w22
//  0x435c9c: b.eq #0x435d50
//  0x435ca0: ldr x4, [PP, #0x4c0]
//  0x435ca4: bl #0x3a4e94
//  0x435ca8: stur x0, [FP, #-8]
//  0x435cac: ldur x1, [x0, #-1]
//  0x435cb0: ubfx x1, x1, #0xc, #0x14
//  0x435cb4: cmp x1, #0x8e7
//  0x435cb8: b.ne #0x435d14
//  0x435cbc: mov x1, x0
//  0x435cc0: bl #0x3a4d94
//  0x435cc4: tbz w0, #4, #0x435cf8
//  0x435cc8: bl #0x3a4c98
//  0x435ccc: stur x0, [FP, #-0x10]
//  0x435cd0: ldr BARRIER, [THR, #0x90]
//  0x435cd4: stp BARRIER, NULL, [SP]
//  0x435cd8: bl #0x27c0c8
//  0x435cdc: ldr BARRIER, [PP, #0x120]
//  0x435ce0: ldur LR, [FP, #-0x10]
//  0x435ce4: stp LR, BARRIER, [SP, #8]
//  0x435ce8: str x0, [SP]
//  0x435cec: ldr x4, [PP, #0x58]
//  0x435cf0: bl #0x3a264c
//  0x435cf4: b #0x435d38
//  0x435cf8: ldr BARRIER, [PP, #0x1a8]
//  0x435cfc: ldur LR, [FP, #-8]
//  0x435d00: stp LR, BARRIER, [SP, #8]
//  0x435d04: str NULL, [SP]
//  0x435d08: ldr x4, [PP, #0x58]
//  0x435d0c: bl #0x5e0d74
//  0x435d10: b #0x435d38
//  0x435d14: ldur x1, [x0, #-1]
//  0x435d18: ubfx x1, x1, #0xc, #0x14
//  0x435d1c: ldr BARRIER, [PP, #0x1a8]
//  0x435d20: stp x0, BARRIER, [SP]
//  0x435d24: mov x0, x1
//  0x435d28: ldr x4, [PP, #0x910]
//  0x435d2c: sub LR, x0, #1, lsl #12
//  0x435d30: ldr LR, [x21, LR, lsl #3]
//  0x435d34: blr LR
//  0x435d38: mov x0, NULL
//  0x435d3c: mov SP, FP
//  0x435d40: ldp FP, LR, [SP], #0x10
//  0x435d44: ret 
//  0x435d48: bl #0x61fa28
//  0x435d4c: b #0x435c88
//  0x435d50: bl #0x61ffd0
//
dynamic GameFruitBetRecordDialogState_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x435c64
  BARRIER = mem(THR, 0x38); // 0x435c7c
  // frame: FP = SP // 0x435c68
  // frame: SP = SP - 0x28 // 0x435c6c
  w1 = mem((local_10), 0x17); /* _GameFruitBetRecordDialogState._refreshController (off 0x18) */  // 0x435c74
  x0 = local_10; // 0x435c70
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); /* _GameFruitBetRecordDialogState._refreshController (off 0x18) */  // 0x435c78
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x435d48
  }
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf); // 0x435c90
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x435c8c
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x435c94
  if (w1 == w22) {
    NullCastErrorSharedWithoutFpuRegsStub_0x61ffd0() /* 0x61ffd0 */; // 0x435d50
  }
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x435ca0
  Navigator_of() /* 0x3a4e94 */; // 0x435ca4
  local_m8 = x0; // 0x435ca8
  x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x435cb0
  if (x1 != 0x8e7) {
    BARRIER = mem(PP, 0x1a8) /* TypeArguments */; // 0x435d1c
    x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x435d18
    // frame: x0, BARRIER, mem(SP) // 0x435d20
    LR = mem(x21, ((x0 - 0x1000) << 3)); // 0x435d30
    x0 = x1; // 0x435d24
    x4 = mem(PP, 0x910) /* ImmutableArray */; // 0x435d28
    callIndirect(LR); // 0x435d34
  } else {
    x1 = x0; // 0x435cbc
    NavigatorState_canPop() /* 0x3a4d94 */; // 0x435cc0
    if (x0 & (1 << 4) == 0) {
      BARRIER = mem(PP, 0x1a8) /* TypeArguments */; // 0x435cf8
      LR = local_m8; // 0x435cfc
      // frame: LR, BARRIER, mem(SP, 8) // 0x435d00
      local_0 = NULL; // 0x435d04
      x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x435d08
      NavigatorState_pop() /* 0x5e0d74 */; // 0x435d0c
    } else {
      BoostNavigator_get_instance() /* 0x3a4c98 */; // 0x435cc8
      local_m10 = x0; // 0x435ccc
      BARRIER = mem(THR, 0x90); // 0x435cd0
      // frame: BARRIER, NULL, mem(SP) // 0x435cd4
      Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x435cd8
      BARRIER = mem(PP, 0x120) /* TypeArguments */; // 0x435cdc
      LR = local_m10; // 0x435ce0
      // frame: LR, BARRIER, mem(SP, 8) // 0x435ce4
      local_0 = x0; // 0x435ce8
      x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x435cec
      BoostNavigator_pop() /* 0x3a264c */; // 0x435cf0
    }
  }
  SP = FP; // 0x435d3c
  x0 = NULL; // 0x435d38
  // frame: FP, LR, mem(SP), 0x10 // 0x435d40
  return;
}

// GameFruitBetRecordDialogState_anon_closure_4
// raw disassembly:
//  0x435d54: stp FP, LR, [SP, #-0x10]!
//  0x435d58: mov FP, SP
//  0x435d5c: sub SP, SP, #8
//  0x435d60: ldr x0, [FP, #0x10]
//  0x435d64: ldur w2, [x0, #0x17]
//  0x435d68: add x2, x2, HEAP, lsl #32
//  0x435d6c: ldr BARRIER, [THR, #0x38]
//  0x435d70: cmp SP, BARRIER
//  0x435d74: b.ls #0x435dac
//  0x435d78: ldur w0, [x2, #0x17]
//  0x435d7c: add x0, x0, HEAP, lsl #32
//  0x435d80: stur x0, [FP, #-8]
//  0x435d84: add x1, PP, #0x15, lsl #12
//  0x435d88: ldr x1, [x1, #0x3d0]
//  0x435d8c: bl #0x61ec54
//  0x435d90: ldur x1, [FP, #-8]
//  0x435d94: mov x2, x0
//  0x435d98: bl #0x435db4
//  0x435d9c: mov x0, NULL
//  0x435da0: mov SP, FP
//  0x435da4: ldp FP, LR, [SP], #0x10
//  0x435da8: ret 
//  0x435dac: bl #0x61fa28
//  0x435db0: b #0x435d78
//
dynamic GameFruitBetRecordDialogState_anon_closure_4() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x435d54
  BARRIER = mem(THR, 0x38); // 0x435d6c
  // frame: FP = SP // 0x435d58
  // frame: SP = SP - 8 // 0x435d5c
  w2 = mem((local_10), 0x17); /* _GameFruitBetRecordDialogState._refreshController (off 0x18) */  // 0x435d64
  x0 = local_10; // 0x435d60
  x2 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); /* _GameFruitBetRecordDialogState._refreshController (off 0x18) */  // 0x435d68
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x435dac
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x435d7c
  local_m8 = x0; // 0x435d80
  x1 = mem((PP + 0x15000), 0x3d0) /* Function */; // 0x435d88
  AllocationStub__Closure() /* 0x61ec54 */; // 0x435d8c
  x1 = local_m8; // 0x435d90
  x2 = x0; // 0x435d94
  GameFruitBetRecordNotifier_requestGameFruitDialogList() /* 0x435db4 */; // 0x435d98
  SP = FP; // 0x435da0
  x0 = NULL; // 0x435d9c
  // frame: FP, LR, mem(SP), 0x10 // 0x435da4
  return;
}

// GameFruitBetRecordDialogState_anon_closure_5
// raw disassembly:
//  0x43650c: stp FP, LR, [SP, #-0x10]!
//  0x436510: mov FP, SP
//  0x436514: ldr x0, [FP, #0x20]
//  0x436518: ldur w1, [x0, #0x17]
//  0x43651c: add x1, x1, HEAP, lsl #32
//  0x436520: ldr BARRIER, [THR, #0x38]
//  0x436524: cmp SP, BARRIER
//  0x436528: b.ls #0x436584
//  0x43652c: ldr x0, [FP, #0x18]
//  0x436530: tbnz w0, #4, #0x436564
//  0x436534: ldr x0, [FP, #0x10]
//  0x436538: tbnz w0, #4, #0x436550
//  0x43653c: ldur w0, [x1, #0x1b]
//  0x436540: add x0, x0, HEAP, lsl #32
//  0x436544: mov x1, x0
//  0x436548: bl #0x3adfd4
//  0x43654c: b #0x436574
//  0x436550: ldur w0, [x1, #0x1b]
//  0x436554: add x0, x0, HEAP, lsl #32
//  0x436558: mov x1, x0
//  0x43655c: bl #0x3ade48
//  0x436560: b #0x436574
//  0x436564: ldur w0, [x1, #0x1b]
//  0x436568: add x0, x0, HEAP, lsl #32
//  0x43656c: mov x1, x0
//  0x436570: bl #0x3adbb4
//  0x436574: mov x0, NULL
//  0x436578: mov SP, FP
//  0x43657c: ldp FP, LR, [SP], #0x10
//  0x436580: ret 
//  0x436584: bl #0x61fa28
//  0x436588: b #0x43652c
//
dynamic GameFruitBetRecordDialogState_anon_closure_5() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x43650c
  BARRIER = mem(THR, 0x38); // 0x436520
  // frame: FP = SP // 0x436510
  w1 = mem((local_20), 0x17); /* _GameFruitBetRecordDialogState._refreshController (off 0x18) */  // 0x436518
  x0 = local_20; // 0x436514
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); /* _GameFruitBetRecordDialogState._refreshController (off 0x18) */  // 0x43651c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x436584
  }
  x0 = local_18; // 0x43652c
  if (x0 & (1 << 4) != 0) {
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x436568
    x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x43656c
    RefreshController_loadFailed() /* 0x3adbb4 */; // 0x436570
  } else {
    x0 = local_10; // 0x436534
    if (x0 & (1 << 4) != 0) {
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x436554
      x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x436558
      RefreshController_loadComplete() /* 0x3ade48 */; // 0x43655c
    } else {
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x436540
      x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x436544
      RefreshController_loadNoData() /* 0x3adfd4 */; // 0x436548
    }
  }
  SP = FP; // 0x436578
  x0 = NULL; // 0x436574
  // frame: FP, LR, mem(SP), 0x10 // 0x43657c
  return;
}

// GameFruitBetRecordDialogState_anon_closure_6
// raw disassembly:
//  0x438eb8: stp FP, LR, [SP, #-0x10]!
//  0x438ebc: mov FP, SP
//  0x438ec0: sub SP, SP, #0x30
//  0x438ec4: ldr x0, [FP, #0x20]
//  0x438ec8: ldur w2, [x0, #0x17]
//  0x438ecc: add x2, x2, HEAP, lsl #32
//  0x438ed0: stur x2, [FP, #-0x18]
//  0x438ed4: ldr BARRIER, [THR, #0x38]
//  0x438ed8: cmp SP, BARRIER
//  0x438edc: b.ls #0x4390d0
//  0x438ee0: ldur w3, [x2, #0x13]
//  0x438ee4: add x3, x3, HEAP, lsl #32
//  0x438ee8: ldur w0, [x3, #0xb]
//  0x438eec: ldr x1, [FP, #0x10]
//  0x438ef0: sbfx x4, x1, #1, #0x1f
//  0x438ef4: tbz w1, #0, #0x438efc
//  0x438ef8: ldur x4, [x1, #7]
//  0x438efc: stur x4, [FP, #-0x10]
//  0x438f00: sbfx x1, x0, #1, #0x1f
//  0x438f04: mov x0, x1
//  0x438f08: mov x1, x4
//  0x438f0c: cmp x1, x0
//  0x438f10: b.hs #0x4390d8
//  0x438f14: ldur w0, [x3, #0xf]
//  0x438f18: add x0, x0, HEAP, lsl #32
//  0x438f1c: add BARRIER, x0, x4, lsl #2
//  0x438f20: ldur w1, [BARRIER, #0xf]
//  0x438f24: add x1, x1, HEAP, lsl #32
//  0x438f28: stur x1, [FP, #-8]
//  0x438f2c: ldur w0, [x2, #0x1f]
//  0x438f30: add x3, x4, #1
//  0x438f34: sbfx x5, x0, #1, #0x1f
//  0x438f38: cmp x5, x3
//  0x438f3c: b.ne #0x438f98
//  0x438f40: bl #0x352b04
//  0x438f44: fmov d0, #16.00000000
//  0x438f48: stur x0, [FP, #-0x20]
//  0x438f4c: stur d0, [x0, #7]
//  0x438f50: stur d0, [x0, #0xf]
//  0x438f54: bl #0x352b04
//  0x438f58: fmov d0, #16.00000000
//  0x438f5c: stur x0, [FP, #-0x28]
//  0x438f60: stur d0, [x0, #7]
//  0x438f64: stur d0, [x0, #0xf]
//  0x438f68: bl #0x392f28
//  0x438f6c: mov x1, x0
//  0x438f70: add x0, PP, #0xa, lsl #12
//  0x438f74: ldr x0, [x0, #0x510]
//  0x438f78: stur w0, [x1, #7]
//  0x438f7c: stur w0, [x1, #0xb]
//  0x438f80: ldur x0, [FP, #-0x20]
//  0x438f84: stur w0, [x1, #0xf]
//  0x438f88: ldur x0, [FP, #-0x28]
//  0x438f8c: stur w0, [x1, #0x13]
//  0x438f90: mov x4, x1
//  0x438f94: b #0x438fec
//  0x438f98: add x0, PP, #0xa, lsl #12
//  0x438f9c: ldr x0, [x0, #0x510]
//  0x438fa0: bl #0x352b04
//  0x438fa4: stur x0, [FP, #-0x20]
//  0x438fa8: stur xzr, [x0, #7]
//  0x438fac: stur xzr, [x0, #0xf]
//  0x438fb0: bl #0x352b04
//  0x438fb4: stur x0, [FP, #-0x28]
//  0x438fb8: stur xzr, [x0, #7]
//  0x438fbc: stur xzr, [x0, #0xf]
//  0x438fc0: bl #0x392f28
//  0x438fc4: mov x1, x0
//  0x438fc8: ldur x0, [FP, #-0x20]
//  0x438fcc: stur w0, [x1, #7]
//  0x438fd0: ldur x0, [FP, #-0x28]
//  0x438fd4: stur w0, [x1, #0xb]
//  0x438fd8: add x0, PP, #0xa, lsl #12
//  0x438fdc: ldr x0, [x0, #0x510]
//  0x438fe0: stur w0, [x1, #0xf]
//  0x438fe4: stur w0, [x1, #0x13]
//  0x438fe8: mov x4, x1
//  0x438fec: ldur x0, [FP, #-8]
//  0x438ff0: stur x4, [FP, #-0x20]
//  0x438ff4: ldur w1, [x0, #0xf]
//  0x438ff8: add x1, x1, HEAP, lsl #32
//  0x438ffc: cmp w1, w22
//  0x439000: b.ne #0x43900c
//  0x439004: ldr x7, [PP, #0x148]
//  0x439008: b #0x439010
//  0x43900c: mov x7, x1
//  0x439010: ldur w1, [x0, #0x13]
//  0x439014: add x1, x1, HEAP, lsl #32
//  0x439018: cmp w1, w22
//  0x43901c: b.ne #0x439028
//  0x439020: ldr x3, [PP, #0x148]
//  0x439024: b #0x43902c
//  0x439028: mov x3, x1
//  0x43902c: ldur w1, [x0, #7]
//  0x439030: add x1, x1, HEAP, lsl #32
//  0x439034: cmp w1, w22
//  0x439038: b.ne #0x439044
//  0x43903c: ldr x2, [PP, #0x148]
//  0x439040: b #0x439048
//  0x439044: mov x2, x1
//  0x439048: ldur w1, [x0, #0xb]
//  0x43904c: add x1, x1, HEAP, lsl #32
//  0x439050: cmp w1, w22
//  0x439054: b.ne #0x43905c
//  0x439058: ldr x1, [PP, #0x148]
//  0x43905c: ldur x0, [FP, #-0x18]
//  0x439060: ldur w6, [x0, #0x23]
//  0x439064: add x6, x6, HEAP, lsl #32
//  0x439068: ldur w5, [x0, #0xf]
//  0x43906c: add x5, x5, HEAP, lsl #32
//  0x439070: str x1, [SP]
//  0x439074: mov x1, x5
//  0x439078: ldur x5, [FP, #-0x10]
//  0x43907c: bl #0x4390dc
//  0x439080: stur x0, [FP, #-8]
//  0x439084: bl #0x391a04
//  0x439088: stur x0, [FP, #-0x18]
//  0x43908c: ldur BARRIER, [FP, #-8]
//  0x439090: str BARRIER, [SP]
//  0x439094: mov x1, x0
//  0x439098: add x4, PP, #0xc, lsl #12
//  0x43909c: ldr x4, [x4, #0x1f8]
//  0x4390a0: bl #0x391490
//  0x4390a4: bl #0x3b378c
//  0x4390a8: ldur x1, [FP, #-0x20]
//  0x4390ac: stur w1, [x0, #0xf]
//  0x4390b0: add x1, PP, #0xe, lsl #12
//  0x4390b4: ldr x1, [x1, #0xf40]
//  0x4390b8: stur w1, [x0, #0x17]
//  0x4390bc: ldur x1, [FP, #-0x18]
//  0x4390c0: stur w1, [x0, #0xb]
//  0x4390c4: mov SP, FP
//  0x4390c8: ldp FP, LR, [SP], #0x10
//  0x4390cc: ret 
//  0x4390d0: bl #0x61fa28
//  0x4390d4: b #0x438ee0
//  0x4390d8: bl #0x61fe70
//
dynamic GameFruitBetRecordDialogState_anon_closure_6() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic w5;
  dynamic w6;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x7;
  // frame: FP, LR, mem(SP, -0x10)! // 0x438eb8
  // frame: FP = SP // 0x438ebc
  // frame: SP = SP - 0x30 // 0x438ec0
  w2 = mem((local_20), 0x17); /* _GameFruitBetRecordDialogState._refreshController (off 0x18) */  // 0x438ec8
  x0 = local_20; // 0x438ec4
  x2 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); /* _GameFruitBetRecordDialogState._refreshController (off 0x18) */  // 0x438ecc
  local_m18 = x2; // 0x438ed0
  BARRIER = mem(THR, 0x38); // 0x438ed4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4390d0
  }
  w0 = mem(((w3 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x438ee8
  x0 = (mem(((w3 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x438ee8
  x1 = local_10; // 0x438eec
  x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x438ee4
  x4 = ((local_10) >> 1) & 0x7fffffff; // 0x438ef0
  if (x1 & (1 << 0) == 0) {
  } else {
    x4 = mem(x1, 7); // 0x438ef8
  }
  local_m10 = x4; // 0x438efc
  x0 = (x0 >> 1) & 0x7fffffff; // 0x438f04
  x1 = x4; // 0x438f08
  if (x1 >= x0) {
    RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x4390d8
  }
  BARRIER = ((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2); // 0x438f1c
  w1 = mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2)), 0xf); // 0x438f20
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x438f18
  x1 = ((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x438f24
  local_m8 = x1; // 0x438f28
  w0 = mem(x2, 0x1f); // 0x438f2c
  x0 = (mem(x2, 0x1f)) & 0xffffffff; // 0x438f2c
  x3 = x4 + 1; // 0x438f30
  x5 = (((mem(x2, 0x1f)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x438f34
  if (x5 != x3) {
    x0 = mem((PP + 0xa000), 0x510) /* Obj!Radius@120d9  */; // 0x438f9c
    AllocationStub_Radius() /* 0x352b04 */; // 0x438fa0
    local_m20 = x0; // 0x438fa4
    memSet(x0, 7, xzr); // 0x438fa8
    memSet(x0, 0xf, xzr); // 0x438fac
    AllocationStub_Radius() /* 0x352b04 */; // 0x438fb0
    local_m28 = x0; // 0x438fb4
    memSet(x0, 7, xzr); // 0x438fb8
    memSet(x0, 0xf, xzr); // 0x438fbc
    AllocationStub_BorderRadius() /* 0x392f28 */; // 0x438fc0
    x0 = local_m20; // 0x438fc8
    x1 = x0; // 0x438fc4
    memSet(x1, 7, w0); // 0x438fcc
    x0 = local_m28; // 0x438fd0
    memSet(x1, 0xb, w0); // 0x438fd4
    x0 = mem((PP + 0xa000), 0x510) /* Obj!Radius@120d9  */; // 0x438fdc
    memSet(x1, 0xf, w0); // 0x438fe0
    memSet(x1, 0x13, w0); // 0x438fe4
    x4 = x1; // 0x438fe8
  } else {
    AllocationStub_Radius() /* 0x352b04 */; // 0x438f40
    d0 = 16.00000000 /* bits */; // 0x438f44
    local_m20 = x0; // 0x438f48
    memSet(x0, 7, d0); // 0x438f4c
    memSet(x0, 0xf, d0); // 0x438f50
    AllocationStub_Radius() /* 0x352b04 */; // 0x438f54
    d0 = 16.00000000 /* bits */; // 0x438f58
    local_m28 = x0; // 0x438f5c
    memSet(x0, 7, d0); // 0x438f60
    memSet(x0, 0xf, d0); // 0x438f64
    AllocationStub_BorderRadius() /* 0x392f28 */; // 0x438f68
    x0 = mem((PP + 0xa000), 0x510) /* Obj!Radius@120d9  */; // 0x438f74
    x1 = x0; // 0x438f6c
    memSet(x1, 7, w0); // 0x438f78
    memSet(x1, 0xb, w0); // 0x438f7c
    x0 = local_m20; // 0x438f80
    memSet(x1, 0xf, w0); // 0x438f84
    x0 = local_m28; // 0x438f88
    memSet(x1, 0x13, w0); // 0x438f8c
    x4 = x1; // 0x438f90
  }
  x0 = local_m8; // 0x438fec
  local_m20 = x4; // 0x438ff0
  w1 = mem(x0, 0xf); // 0x438ff4
  x1 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x438ff8
  if (w1 != w22) {
    x7 = x1; // 0x43900c
  } else {
    x7 = "" /* pp+0x148 */; // 0x439004
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x439014
  if (w1 != w22) {
    x3 = x1; // 0x439028
  } else {
    x3 = "" /* pp+0x148 */; // 0x439020
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x439030
  if (w1 != w22) {
    x2 = x1; // 0x439044
  } else {
    x2 = "" /* pp+0x148 */; // 0x43903c
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x43904c
  if (w1 != w22) {
  } else {
    x1 = "" /* pp+0x148 */; // 0x439058
  }
  w5 = mem((local_m18), 0xf); // 0x439068
  w6 = mem((local_m18), 0x23); // 0x439060
  x0 = local_m18; // 0x43905c
  x5 = ((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x43906c
  x6 = ((mem((local_m18), 0x23)) & 0xffffffff) + (HEAP << 32); // 0x439064
  local_0 = x1; // 0x439070
  x1 = x5; // 0x439074
  x5 = local_m10; // 0x439078
  GameFruitBetRecordDialogState_rowLabelWidge() /* 0x4390dc */; // 0x43907c
  local_m8 = x0; // 0x439080
  AllocationStub_Container() /* 0x391a04 */; // 0x439084
  local_m18 = x0; // 0x439088
  BARRIER = local_m8; // 0x43908c
  local_0 = BARRIER; // 0x439090
  x1 = x0; // 0x439094
  x4 = mem((PP + 0xc000), 0x1f8) /* ImmutableArray */; // 0x43909c
  Container_ctor() /* 0x391490 */; // 0x4390a0
  AllocationStub_ClipRRect() /* 0x3b378c */; // 0x4390a4
  x1 = local_m20; // 0x4390a8
  memSet(x0, 0xf, w1); // 0x4390ac
  x1 = mem((PP + 0xe000), 0xf40) /* Obj!Clip@12344  */; // 0x4390b4
  memSet(x0, 0x17, w1); // 0x4390b8
  x1 = local_m18; // 0x4390bc
  memSet(x0, 0xb, w1); // 0x4390c0
  SP = FP; // 0x4390c4
  // frame: FP, LR, mem(SP), 0x10 // 0x4390c8
  return;
}

// GameFruitBetRecordDialogState_rowLabelWidge
// raw disassembly:
//  0x4390dc: stp FP, LR, [SP, #-0x10]!
//  0x4390e0: mov FP, SP
//  0x4390e4: sub SP, SP, #0x60
//  0x4390e8: stur x2, [FP, #-8]
//  0x4390ec: stur x3, [FP, #-0x10]
//  0x4390f0: stur x5, [FP, #-0x18]
//  0x4390f4: stur x6, [FP, #-0x20]
//  0x4390f8: stur x7, [FP, #-0x28]
//  0x4390fc: ldr BARRIER, [THR, #0x38]
//  0x439100: cmp SP, BARRIER
//  0x439104: b.ls #0x439554
//  0x439108: tbnz w5, #0, #0x439140
//  0x43910c: bl #0x31d844
//  0x439110: mov x1, x0
//  0x439114: ldr x0, [PP, #0x6310]
//  0x439118: stur w0, [x1, #0x27]
//  0x43911c: ldr d0, [PP, #0x6658]
//  0x439120: stur d0, [x1, #7]
//  0x439124: fmov d1, #1.00000000
//  0x439128: stur d1, [x1, #0xf]
//  0x43912c: stur d1, [x1, #0x17]
//  0x439130: stur d1, [x1, #0x1f]
//  0x439134: mov x4, x1
//  0x439138: ldr d0, [PP, #0x66a0]
//  0x43913c: b #0x439178
//  0x439140: ldr x0, [PP, #0x6310]
//  0x439144: fmov d1, #1.00000000
//  0x439148: ldr d0, [PP, #0x6658]
//  0x43914c: bl #0x31d844
//  0x439150: mov x1, x0
//  0x439154: ldr x0, [PP, #0x6310]
//  0x439158: stur w0, [x1, #0x27]
//  0x43915c: ldr d0, [PP, #0x66a0]
//  0x439160: stur d0, [x1, #7]
//  0x439164: fmov d1, #1.00000000
//  0x439168: stur d1, [x1, #0xf]
//  0x43916c: stur d1, [x1, #0x17]
//  0x439170: stur d1, [x1, #0x1f]
//  0x439174: mov x4, x1
//  0x439178: ldur x3, [FP, #-0x18]
//  0x43917c: ldur x2, [FP, #-0x20]
//  0x439180: ldur x1, [FP, #-0x28]
//  0x439184: stur x4, [FP, #-0x30]
//  0x439188: bl #0x393bf8
//  0x43918c: mov x1, x0
//  0x439190: ldur x0, [FP, #-0x28]
//  0x439194: stur x1, [FP, #-0x38]
//  0x439198: stur w0, [x1, #0xb]
//  0x43919c: ldur x0, [FP, #-0x20]
//  0x4391a0: stur w0, [x1, #0x13]
//  0x4391a4: bl #0x391a04
//  0x4391a8: stur x0, [FP, #-0x28]
//  0x4391ac: add BARRIER, PP, #0xe, lsl #12
//  0x4391b0: ldr BARRIER, [BARRIER, #0xaa0]
//  0x4391b4: ldur LR, [FP, #-0x30]
//  0x4391b8: stp LR, BARRIER, [SP, #0x18]
//  0x4391bc: add BARRIER, PP, #0x15, lsl #12
//  0x4391c0: ldr BARRIER, [BARRIER, #0x458]
//  0x4391c4: add LR, PP, #0xf, lsl #12
//  0x4391c8: ldr LR, [LR, #0x310]
//  0x4391cc: stp LR, BARRIER, [SP, #8]
//  0x4391d0: ldur BARRIER, [FP, #-0x38]
//  0x4391d4: str BARRIER, [SP]
//  0x4391d8: mov x1, x0
//  0x4391dc: add x4, PP, #0x15, lsl #12
//  0x4391e0: ldr x4, [x4, #0x460]
//  0x4391e4: bl #0x391490
//  0x4391e8: ldur x0, [FP, #-0x18]
//  0x4391ec: tbnz w0, #0, #0x439228
//  0x4391f0: bl #0x31d844
//  0x4391f4: mov x1, x0
//  0x4391f8: ldr x0, [PP, #0x6310]
//  0x4391fc: stur w0, [x1, #0x27]
//  0x439200: ldr d0, [PP, #0x66a0]
//  0x439204: stur d0, [x1, #7]
//  0x439208: fmov d1, #1.00000000
//  0x43920c: stur d1, [x1, #0xf]
//  0x439210: stur d1, [x1, #0x17]
//  0x439214: stur d1, [x1, #0x1f]
//  0x439218: mov x4, x1
//  0x43921c: add x17, PP, #0x12, lsl #12
//  0x439220: ldr d0, [x17, #0xf18]
//  0x439224: b #0x439264
//  0x439228: ldr x0, [PP, #0x6310]
//  0x43922c: fmov d1, #1.00000000
//  0x439230: ldr d0, [PP, #0x66a0]
//  0x439234: bl #0x31d844
//  0x439238: mov x1, x0
//  0x43923c: ldr x0, [PP, #0x6310]
//  0x439240: stur w0, [x1, #0x27]
//  0x439244: add x17, PP, #0x12, lsl #12
//  0x439248: ldr d0, [x17, #0xf18]
//  0x43924c: stur d0, [x1, #7]
//  0x439250: fmov d1, #1.00000000
//  0x439254: stur d1, [x1, #0xf]
//  0x439258: stur d1, [x1, #0x17]
//  0x43925c: stur d1, [x1, #0x1f]
//  0x439260: mov x4, x1
//  0x439264: ldur x3, [FP, #-0x10]
//  0x439268: ldur x1, [FP, #-0x18]
//  0x43926c: ldur x2, [FP, #-0x20]
//  0x439270: stur x4, [FP, #-0x30]
//  0x439274: bl #0x393bf8
//  0x439278: mov x1, x0
//  0x43927c: ldur x0, [FP, #-0x10]
//  0x439280: stur x1, [FP, #-0x38]
//  0x439284: stur w0, [x1, #0xb]
//  0x439288: ldur x0, [FP, #-0x20]
//  0x43928c: stur w0, [x1, #0x13]
//  0x439290: bl #0x391a04
//  0x439294: stur x0, [FP, #-0x10]
//  0x439298: add BARRIER, PP, #0xe, lsl #12
//  0x43929c: ldr BARRIER, [BARRIER, #0xaa0]
//  0x4392a0: ldur LR, [FP, #-0x30]
//  0x4392a4: stp LR, BARRIER, [SP, #0x18]
//  0x4392a8: add BARRIER, PP, #0x15, lsl #12
//  0x4392ac: ldr BARRIER, [BARRIER, #0x468]
//  0x4392b0: add LR, PP, #0xf, lsl #12
//  0x4392b4: ldr LR, [LR, #0x310]
//  0x4392b8: stp LR, BARRIER, [SP, #8]
//  0x4392bc: ldur BARRIER, [FP, #-0x38]
//  0x4392c0: str BARRIER, [SP]
//  0x4392c4: mov x1, x0
//  0x4392c8: add x4, PP, #0x15, lsl #12
//  0x4392cc: ldr x4, [x4, #0x460]
//  0x4392d0: bl #0x391490
//  0x4392d4: ldur x0, [FP, #-0x18]
//  0x4392d8: tbnz w0, #0, #0x439314
//  0x4392dc: bl #0x31d844
//  0x4392e0: mov x1, x0
//  0x4392e4: ldr x0, [PP, #0x6310]
//  0x4392e8: stur w0, [x1, #0x27]
//  0x4392ec: ldr d0, [PP, #0x6658]
//  0x4392f0: stur d0, [x1, #7]
//  0x4392f4: fmov d0, #1.00000000
//  0x4392f8: stur d0, [x1, #0xf]
//  0x4392fc: stur d0, [x1, #0x17]
//  0x439300: stur d0, [x1, #0x1f]
//  0x439304: mov x4, x1
//  0x439308: mov v1.16b, v0.16b
//  0x43930c: ldr d0, [PP, #0x66a0]
//  0x439310: b #0x439348
//  0x439314: ldr x0, [PP, #0x6310]
//  0x439318: fmov d0, #1.00000000
//  0x43931c: bl #0x31d844
//  0x439320: mov x1, x0
//  0x439324: ldr x0, [PP, #0x6310]
//  0x439328: stur w0, [x1, #0x27]
//  0x43932c: ldr d0, [PP, #0x66a0]
//  0x439330: stur d0, [x1, #7]
//  0x439334: fmov d1, #1.00000000
//  0x439338: stur d1, [x1, #0xf]
//  0x43933c: stur d1, [x1, #0x17]
//  0x439340: stur d1, [x1, #0x1f]
//  0x439344: mov x4, x1
//  0x439348: ldur x3, [FP, #-8]
//  0x43934c: ldur x1, [FP, #-0x18]
//  0x439350: ldur x2, [FP, #-0x20]
//  0x439354: stur x4, [FP, #-0x30]
//  0x439358: bl #0x393bf8
//  0x43935c: mov x1, x0
//  0x439360: ldur x0, [FP, #-8]
//  0x439364: stur x1, [FP, #-0x38]
//  0x439368: stur w0, [x1, #0xb]
//  0x43936c: ldur x0, [FP, #-0x20]
//  0x439370: stur w0, [x1, #0x13]
//  0x439374: bl #0x391a04
//  0x439378: stur x0, [FP, #-8]
//  0x43937c: add BARRIER, PP, #0xe, lsl #12
//  0x439380: ldr BARRIER, [BARRIER, #0xaa0]
//  0x439384: ldur LR, [FP, #-0x30]
//  0x439388: stp LR, BARRIER, [SP, #0x18]
//  0x43938c: add BARRIER, PP, #0x15, lsl #12
//  0x439390: ldr BARRIER, [BARRIER, #0x470]
//  0x439394: add LR, PP, #0xf, lsl #12
//  0x439398: ldr LR, [LR, #0x310]
//  0x43939c: stp LR, BARRIER, [SP, #8]
//  0x4393a0: ldur BARRIER, [FP, #-0x38]
//  0x4393a4: str BARRIER, [SP]
//  0x4393a8: mov x1, x0
//  0x4393ac: add x4, PP, #0x15, lsl #12
//  0x4393b0: ldr x4, [x4, #0x460]
//  0x4393b4: bl #0x391490
//  0x4393b8: ldur x0, [FP, #-0x18]
//  0x4393bc: tbnz w0, #0, #0x4393f0
//  0x4393c0: bl #0x31d844
//  0x4393c4: mov x1, x0
//  0x4393c8: ldr x0, [PP, #0x6310]
//  0x4393cc: stur w0, [x1, #0x27]
//  0x4393d0: ldr d0, [PP, #0x66a0]
//  0x4393d4: stur d0, [x1, #7]
//  0x4393d8: fmov d0, #1.00000000
//  0x4393dc: stur d0, [x1, #0xf]
//  0x4393e0: stur d0, [x1, #0x17]
//  0x4393e4: stur d0, [x1, #0x1f]
//  0x4393e8: mov x5, x1
//  0x4393ec: b #0x439428
//  0x4393f0: ldr x0, [PP, #0x6310]
//  0x4393f4: fmov d0, #1.00000000
//  0x4393f8: bl #0x31d844
//  0x4393fc: mov x1, x0
//  0x439400: ldr x0, [PP, #0x6310]
//  0x439404: stur w0, [x1, #0x27]
//  0x439408: add x17, PP, #0x12, lsl #12
//  0x43940c: ldr d0, [x17, #0xf18]
//  0x439410: stur d0, [x1, #7]
//  0x439414: fmov d0, #1.00000000
//  0x439418: stur d0, [x1, #0xf]
//  0x43941c: stur d0, [x1, #0x17]
//  0x439420: stur d0, [x1, #0x1f]
//  0x439424: mov x5, x1
//  0x439428: ldur x1, [FP, #-0x20]
//  0x43942c: ldr x4, [FP, #0x10]
//  0x439430: ldur x3, [FP, #-0x28]
//  0x439434: ldur x2, [FP, #-0x10]
//  0x439438: ldur x0, [FP, #-8]
//  0x43943c: stur x5, [FP, #-0x30]
//  0x439440: bl #0x393bf8
//  0x439444: mov x1, x0
//  0x439448: ldr x0, [FP, #0x10]
//  0x43944c: stur x1, [FP, #-0x38]
//  0x439450: stur w0, [x1, #0xb]
//  0x439454: ldur x0, [FP, #-0x20]
//  0x439458: stur w0, [x1, #0x13]
//  0x43945c: bl #0x391a04
//  0x439460: stur x0, [FP, #-0x20]
//  0x439464: add BARRIER, PP, #0xe, lsl #12
//  0x439468: ldr BARRIER, [BARRIER, #0xaa0]
//  0x43946c: ldur LR, [FP, #-0x30]
//  0x439470: stp LR, BARRIER, [SP, #0x18]
//  0x439474: add BARRIER, PP, #0x15, lsl #12
//  0x439478: ldr BARRIER, [BARRIER, #0x478]
//  0x43947c: add LR, PP, #0xf, lsl #12
//  0x439480: ldr LR, [LR, #0x310]
//  0x439484: stp LR, BARRIER, [SP, #8]
//  0x439488: ldur BARRIER, [FP, #-0x38]
//  0x43948c: str BARRIER, [SP]
//  0x439490: mov x1, x0
//  0x439494: add x4, PP, #0x15, lsl #12
//  0x439498: ldr x4, [x4, #0x460]
//  0x43949c: bl #0x391490
//  0x4394a0: mov x1, NULL
//  0x4394a4: mov x2, #8
//  0x4394a8: bl #0x61f920
//  0x4394ac: mov x2, x0
//  0x4394b0: ldur x0, [FP, #-0x28]
//  0x4394b4: stur x2, [FP, #-0x30]
//  0x4394b8: stur w0, [x2, #0xf]
//  0x4394bc: ldur x0, [FP, #-0x10]
//  0x4394c0: stur w0, [x2, #0x13]
//  0x4394c4: ldur x0, [FP, #-8]
//  0x4394c8: stur w0, [x2, #0x17]
//  0x4394cc: ldur x0, [FP, #-0x20]
//  0x4394d0: stur w0, [x2, #0x1b]
//  0x4394d4: ldr x1, [PP, #0x5c58]
//  0x4394d8: bl #0x61e854
//  0x4394dc: mov x1, x0
//  0x4394e0: ldur x0, [FP, #-0x30]
//  0x4394e4: stur x1, [FP, #-8]
//  0x4394e8: stur w0, [x1, #0xf]
//  0x4394ec: mov x0, #8
//  0x4394f0: stur w0, [x1, #0xb]
//  0x4394f4: bl #0x3a1414
//  0x4394f8: ldr x1, [PP, #0x5140]
//  0x4394fc: stur w1, [x0, #0xf]
//  0x439500: add x1, PP, #0xe, lsl #12
//  0x439504: ldr x1, [x1, #0xae0]
//  0x439508: stur w1, [x0, #0x13]
//  0x43950c: add x1, PP, #0xe, lsl #12
//  0x439510: ldr x1, [x1, #0xae8]
//  0x439514: stur w1, [x0, #0x17]
//  0x439518: add x1, PP, #0xe, lsl #12
//  0x43951c: ldr x1, [x1, #0xb60]
//  0x439520: stur w1, [x0, #0x1b]
//  0x439524: add x1, PP, #0xe, lsl #12
//  0x439528: ldr x1, [x1, #0xaf8]
//  0x43952c: stur w1, [x0, #0x23]
//  0x439530: add x1, PP, #0xa, lsl #12
//  0x439534: ldr x1, [x1, #0xa8]
//  0x439538: stur w1, [x0, #0x2b]
//  0x43953c: stur xzr, [x0, #0x2f]
//  0x439540: ldur x1, [FP, #-8]
//  0x439544: stur w1, [x0, #0xb]
//  0x439548: mov SP, FP
//  0x43954c: ldp FP, LR, [SP], #0x10
//  0x439550: ret 
//  0x439554: bl #0x61fa28
//  0x439558: b #0x439108
//
dynamic GameFruitBetRecordDialogState_rowLabelWidge() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic v1_16b;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4390dc
  // frame: FP = SP // 0x4390e0
  // frame: SP = SP - 0x60 // 0x4390e4
  local_m8 = x2; // 0x4390e8
  local_m10 = x3; // 0x4390ec
  local_m18 = x5; // 0x4390f0
  local_m20 = x6; // 0x4390f4
  local_m28 = x7; // 0x4390f8
  BARRIER = mem(THR, 0x38); // 0x4390fc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x439554
  }
  if (x5 & (1 << 0) != 0) {
    d0 = 4591870180066957722; // 0x439148
    d1 = 1.00000000 /* bits */; // 0x439144
    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x439140
    AllocationStub_Color() /* 0x31d844 */; // 0x43914c
    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x439154
    x1 = x0; // 0x439150
    memSet(x1, 0x27, w0); // 0x439158
    d0 = 4596373779694328218; // 0x43915c
    memSet(x1, 7, d0); // 0x439160
    d1 = 1.00000000 /* bits */; // 0x439164
    memSet(x1, 0xf, d1); // 0x439168
    memSet(x1, 0x17, d1); // 0x43916c
    memSet(x1, 0x1f, d1); // 0x439170
    x4 = x1; // 0x439174
  } else {
    AllocationStub_Color() /* 0x31d844 */; // 0x43910c
    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x439114
    x1 = x0; // 0x439110
    memSet(x1, 0x27, w0); // 0x439118
    d0 = 4591870180066957722; // 0x43911c
    memSet(x1, 7, d0); // 0x439120
    d1 = 1.00000000 /* bits */; // 0x439124
    memSet(x1, 0xf, d1); // 0x439128
    memSet(x1, 0x17, d1); // 0x43912c
    memSet(x1, 0x1f, d1); // 0x439130
    d0 = 4596373779694328218; // 0x439138
    x4 = x1; // 0x439134
  }
  x1 = local_m28; // 0x439180
  x2 = local_m20; // 0x43917c
  x3 = local_m18; // 0x439178
  local_m30 = x4; // 0x439184
  AllocationStub_Text() /* 0x393bf8 */; // 0x439188
  x0 = local_m28; // 0x439190
  x1 = x0; // 0x43918c
  local_m38 = x1; // 0x439194
  memSet(x1, 0xb, w0); // 0x439198
  x0 = local_m20; // 0x43919c
  memSet(x1, 0x13, w0); // 0x4391a0
  AllocationStub_Container() /* 0x391a04 */; // 0x4391a4
  local_m28 = x0; // 0x4391a8
  BARRIER = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x4391b0
  LR = local_m30; // 0x4391b4
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x4391b8
  BARRIER = mem((PP + 0x15000), 0x458) /* Double */; // 0x4391c0
  LR = mem((PP + 0xf000), 0x310) /* Double */; // 0x4391c8
  // frame: LR, BARRIER, mem(SP, 8) // 0x4391cc
  BARRIER = local_m38; // 0x4391d0
  local_0 = BARRIER; // 0x4391d4
  x1 = x0; // 0x4391d8
  x4 = mem((PP + 0x15000), 0x460) /* ImmutableArray */; // 0x4391e0
  Container_ctor() /* 0x391490 */; // 0x4391e4
  x0 = local_m18; // 0x4391e8
  if (x0 & (1 << 0) != 0) {
    d0 = 4596373779694328218; // 0x439230
    d1 = 1.00000000 /* bits */; // 0x43922c
    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x439228
    AllocationStub_Color() /* 0x31d844 */; // 0x439234
    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x43923c
    x1 = x0; // 0x439238
    memSet(x1, 0x27, w0); // 0x439240
    d0 = 4599075939470750515; // 0x439248
    x17 = PP + 0x12000; // 0x439244
    memSet(x1, 7, d0); // 0x43924c
    d1 = 1.00000000 /* bits */; // 0x439250
    memSet(x1, 0xf, d1); // 0x439254
    memSet(x1, 0x17, d1); // 0x439258
    memSet(x1, 0x1f, d1); // 0x43925c
    x4 = x1; // 0x439260
  } else {
    AllocationStub_Color() /* 0x31d844 */; // 0x4391f0
    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x4391f8
    x1 = x0; // 0x4391f4
    memSet(x1, 0x27, w0); // 0x4391fc
    d0 = 4596373779694328218; // 0x439200
    memSet(x1, 7, d0); // 0x439204
    d1 = 1.00000000 /* bits */; // 0x439208
    memSet(x1, 0xf, d1); // 0x43920c
    memSet(x1, 0x17, d1); // 0x439210
    memSet(x1, 0x1f, d1); // 0x439214
    d0 = 4599075939470750515; // 0x439220
    x17 = PP + 0x12000; // 0x43921c
    x4 = x1; // 0x439218
  }
  x1 = local_m18; // 0x439268
  x2 = local_m20; // 0x43926c
  x3 = local_m10; // 0x439264
  local_m30 = x4; // 0x439270
  AllocationStub_Text() /* 0x393bf8 */; // 0x439274
  x0 = local_m10; // 0x43927c
  x1 = x0; // 0x439278
  local_m38 = x1; // 0x439280
  memSet(x1, 0xb, w0); // 0x439284
  x0 = local_m20; // 0x439288
  memSet(x1, 0x13, w0); // 0x43928c
  AllocationStub_Container() /* 0x391a04 */; // 0x439290
  local_m10 = x0; // 0x439294
  BARRIER = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x43929c
  LR = local_m30; // 0x4392a0
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x4392a4
  BARRIER = mem((PP + 0x15000), 0x468) /* Double */; // 0x4392ac
  LR = mem((PP + 0xf000), 0x310) /* Double */; // 0x4392b4
  // frame: LR, BARRIER, mem(SP, 8) // 0x4392b8
  BARRIER = local_m38; // 0x4392bc
  local_0 = BARRIER; // 0x4392c0
  x1 = x0; // 0x4392c4
  x4 = mem((PP + 0x15000), 0x460) /* ImmutableArray */; // 0x4392cc
  Container_ctor() /* 0x391490 */; // 0x4392d0
  x0 = local_m18; // 0x4392d4
  if (x0 & (1 << 0) != 0) {
    d0 = 1.00000000 /* bits */; // 0x439318
    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x439314
    AllocationStub_Color() /* 0x31d844 */; // 0x43931c
    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x439324
    x1 = x0; // 0x439320
    memSet(x1, 0x27, w0); // 0x439328
    d0 = 4596373779694328218; // 0x43932c
    memSet(x1, 7, d0); // 0x439330
    d1 = 1.00000000 /* bits */; // 0x439334
    memSet(x1, 0xf, d1); // 0x439338
    memSet(x1, 0x17, d1); // 0x43933c
    memSet(x1, 0x1f, d1); // 0x439340
    x4 = x1; // 0x439344
  } else {
    AllocationStub_Color() /* 0x31d844 */; // 0x4392dc
    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x4392e4
    x1 = x0; // 0x4392e0
    memSet(x1, 0x27, w0); // 0x4392e8
    d0 = 4591870180066957722; // 0x4392ec
    memSet(x1, 7, d0); // 0x4392f0
    d0 = 1.00000000 /* bits */; // 0x4392f4
    memSet(x1, 0xf, d0); // 0x4392f8
    memSet(x1, 0x17, d0); // 0x4392fc
    memSet(x1, 0x1f, d0); // 0x439300
    d0 = 4596373779694328218; // 0x43930c
    v1_16b = v0_16b; // 0x439308
    x4 = x1; // 0x439304
  }
  x1 = local_m18; // 0x43934c
  x2 = local_m20; // 0x439350
  x3 = local_m8; // 0x439348
  local_m30 = x4; // 0x439354
  AllocationStub_Text() /* 0x393bf8 */; // 0x439358
  x0 = local_m8; // 0x439360
  x1 = x0; // 0x43935c
  local_m38 = x1; // 0x439364
  memSet(x1, 0xb, w0); // 0x439368
  x0 = local_m20; // 0x43936c
  memSet(x1, 0x13, w0); // 0x439370
  AllocationStub_Container() /* 0x391a04 */; // 0x439374
  local_m8 = x0; // 0x439378
  BARRIER = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x439380
  LR = local_m30; // 0x439384
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x439388
  BARRIER = mem((PP + 0x15000), 0x470) /* Double */; // 0x439390
  LR = mem((PP + 0xf000), 0x310) /* Double */; // 0x439398
  // frame: LR, BARRIER, mem(SP, 8) // 0x43939c
  BARRIER = local_m38; // 0x4393a0
  local_0 = BARRIER; // 0x4393a4
  x1 = x0; // 0x4393a8
  x4 = mem((PP + 0x15000), 0x460) /* ImmutableArray */; // 0x4393b0
  Container_ctor() /* 0x391490 */; // 0x4393b4
  x0 = local_m18; // 0x4393b8
  if (x0 & (1 << 0) != 0) {
    d0 = 1.00000000 /* bits */; // 0x4393f4
    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x4393f0
    AllocationStub_Color() /* 0x31d844 */; // 0x4393f8
    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x439400
    x1 = x0; // 0x4393fc
    memSet(x1, 0x27, w0); // 0x439404
    d0 = 4599075939470750515; // 0x43940c
    x17 = PP + 0x12000; // 0x439408
    memSet(x1, 7, d0); // 0x439410
    d0 = 1.00000000 /* bits */; // 0x439414
    memSet(x1, 0xf, d0); // 0x439418
    memSet(x1, 0x17, d0); // 0x43941c
    memSet(x1, 0x1f, d0); // 0x439420
    x5 = x1; // 0x439424
  } else {
    AllocationStub_Color() /* 0x31d844 */; // 0x4393c0
    x0 = mem(PP, 0x6310) /* Obj!ColorSpace@12340  */; // 0x4393c8
    x1 = x0; // 0x4393c4
    memSet(x1, 0x27, w0); // 0x4393cc
    d0 = 4596373779694328218; // 0x4393d0
    memSet(x1, 7, d0); // 0x4393d4
    d0 = 1.00000000 /* bits */; // 0x4393d8
    memSet(x1, 0xf, d0); // 0x4393dc
    memSet(x1, 0x17, d0); // 0x4393e0
    memSet(x1, 0x1f, d0); // 0x4393e4
    x5 = x1; // 0x4393e8
  }
  x0 = local_m8; // 0x439438
  x1 = local_m20; // 0x439428
  x2 = local_m10; // 0x439434
  x3 = local_m28; // 0x439430
  x4 = local_10; // 0x43942c
  local_m30 = x5; // 0x43943c
  AllocationStub_Text() /* 0x393bf8 */; // 0x439440
  x0 = local_10; // 0x439448
  x1 = x0; // 0x439444
  local_m38 = x1; // 0x43944c
  memSet(x1, 0xb, w0); // 0x439450
  x0 = local_m20; // 0x439454
  memSet(x1, 0x13, w0); // 0x439458
  AllocationStub_Container() /* 0x391a04 */; // 0x43945c
  local_m20 = x0; // 0x439460
  BARRIER = mem((PP + 0xe000), 0xaa0) /* Obj!Alignment@11bd9  */; // 0x439468
  LR = local_m30; // 0x43946c
  // frame: LR, BARRIER, mem(SP, 0x18) // 0x439470
  BARRIER = mem((PP + 0x15000), 0x478) /* Double */; // 0x439478
  LR = mem((PP + 0xf000), 0x310) /* Double */; // 0x439480
  // frame: LR, BARRIER, mem(SP, 8) // 0x439484
  BARRIER = local_m38; // 0x439488
  local_0 = BARRIER; // 0x43948c
  x1 = x0; // 0x439490
  x4 = mem((PP + 0x15000), 0x460) /* ImmutableArray */; // 0x439498
  Container_ctor() /* 0x391490 */; // 0x43949c
  x1 = NULL; // 0x4394a0
  x2 = 8; // 0x4394a4
  sub_0x61f920(); // 0x4394a8
  x0 = local_m28; // 0x4394b0
  x2 = x0; // 0x4394ac
  local_m30 = x2; // 0x4394b4
  memSet(x2, 0xf, w0); // 0x4394b8
  x0 = local_m10; // 0x4394bc
  memSet(x2, 0x13, w0); // 0x4394c0
  x0 = local_m8; // 0x4394c4
  memSet(x2, 0x17, w0); // 0x4394c8
  x0 = local_m20; // 0x4394cc
  memSet(x2, 0x1b, w0); // 0x4394d0
  x1 = mem(PP, 0x5c58) /* TypeArguments */; // 0x4394d4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x4394d8
  x0 = local_m30; // 0x4394e0
  x1 = x0; // 0x4394dc
  local_m8 = x1; // 0x4394e4
  memSet(x1, 0xf, w0); // 0x4394e8
  x0 = 8; // 0x4394ec
  memSet(x1, 0xb, w0); // 0x4394f0
  AllocationStub_Row() /* 0x3a1414 */; // 0x4394f4
  x1 = mem(PP, 0x5140) /* Obj!Axis@12290  */; // 0x4394f8
  memSet(x0, 0xf, w1); // 0x4394fc
  x1 = mem((PP + 0xe000), 0xae0) /* Obj!MainAxisAlignment@1226f  */; // 0x439504
  memSet(x0, 0x13, w1); // 0x439508
  x1 = mem((PP + 0xe000), 0xae8) /* Obj!MainAxisSize@12271  */; // 0x439510
  memSet(x0, 0x17, w1); // 0x439514
  x1 = mem((PP + 0xe000), 0xb60) /* Obj!CrossAxisAlignment@12268  */; // 0x43951c
  memSet(x0, 0x1b, w1); // 0x439520
  x1 = mem((PP + 0xe000), 0xaf8) /* Obj!VerticalDirection@1228f  */; // 0x439528
  memSet(x0, 0x23, w1); // 0x43952c
  x1 = mem((PP + 0xa000), 0xa8) /* Obj!Clip@12343  */; // 0x439534
  memSet(x0, 0x2b, w1); // 0x439538
  memSet(x0, 0x2f, xzr); // 0x43953c
  x1 = local_m8; // 0x439540
  memSet(x0, 0xb, w1); // 0x439544
  SP = FP; // 0x439548
  // frame: FP, LR, mem(SP), 0x10 // 0x43954c
  return;
}

// GameFruitBetRecordDialogState_dispose
// raw disassembly:
//  0x452388: stp FP, LR, [SP, #-0x10]!
//  0x45238c: mov FP, SP
//  0x452390: ldr BARRIER, [THR, #0x38]
//  0x452394: cmp SP, BARRIER
//  0x452398: b.ls #0x4523c8
//  0x45239c: ldur w0, [x1, #0x17]
//  0x4523a0: add x0, x0, HEAP, lsl #32
//  0x4523a4: ldr BARRIER, [PP, #0x40]
//  0x4523a8: cmp w0, w16
//  0x4523ac: b.eq #0x4523d0
//  0x4523b0: mov x1, x0
//  0x4523b4: bl #0x45132c
//  0x4523b8: mov x0, NULL
//  0x4523bc: mov SP, FP
//  0x4523c0: ldp FP, LR, [SP], #0x10
//  0x4523c4: ret 
//  0x4523c8: bl #0x61fa28
//  0x4523cc: b #0x45239c
//  0x4523d0: add x9, PP, #0x15, lsl #12
//  0x4523d4: ldr x9, [x9, #0x3a8]
//  0x4523d8: bl #0x620258
//
dynamic GameFruitBetRecordDialogState_dispose() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x452388
  BARRIER = mem(THR, 0x38); // 0x452390
  // frame: FP = SP // 0x45238c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4523c8
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4523a4
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4523a0
  if (w0 == w16) {
    x9 = mem((PP + 0x15000), 0x3a8) /* Field */; // 0x4523d4
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4523d8
  }
  x1 = x0; // 0x4523b0
  RefreshController_dispose() /* 0x45132c */; // 0x4523b4
  SP = FP; // 0x4523bc
  x0 = NULL; // 0x4523b8
  // frame: FP, LR, mem(SP), 0x10 // 0x4523c0
  return;
}

// GameFruitBetRecordDialogState_initState
// raw disassembly:
//  0x4d8d44: stp FP, LR, [SP, #-0x10]!
//  0x4d8d48: mov FP, SP
//  0x4d8d4c: sub SP, SP, #0x18
//  0x4d8d50: stur x1, [FP, #-8]
//  0x4d8d54: ldr BARRIER, [THR, #0x38]
//  0x4d8d58: cmp SP, BARRIER
//  0x4d8d5c: b.ls #0x4d8de4
//  0x4d8d60: mov x1, #1
//  0x4d8d64: bl #0x61e890
//  0x4d8d68: mov x1, x0
//  0x4d8d6c: ldur x0, [FP, #-8]
//  0x4d8d70: stur x1, [FP, #-0x10]
//  0x4d8d74: stur w0, [x1, #0xf]
//  0x4d8d78: bl #0x4c47f0
//  0x4d8d7c: mov x1, x0
//  0x4d8d80: stur x0, [FP, #-0x18]
//  0x4d8d84: bl #0x4c46e0
//  0x4d8d88: ldur x0, [FP, #-0x18]
//  0x4d8d8c: ldur x1, [FP, #-8]
//  0x4d8d90: stur w0, [x1, #0x17]
//  0x4d8d94: ldurb w16, [x1, #-1]
//  0x4d8d98: ldurb w17, [x0, #-1]
//  0x4d8d9c: and BARRIER, x17, BARRIER, lsr #2
//  0x4d8da0: tst BARRIER, HEAP, lsr #32
//  0x4d8da4: b.eq #0x4d8dac
//  0x4d8da8: bl #0x61e04c
//  0x4d8dac: ldur w0, [x1, #0x13]
//  0x4d8db0: add x0, x0, HEAP, lsl #32
//  0x4d8db4: ldur x2, [FP, #-0x10]
//  0x4d8db8: stur x0, [FP, #-0x18]
//  0x4d8dbc: add x1, PP, #0x15, lsl #12
//  0x4d8dc0: ldr x1, [x1, #0x4c8]
//  0x4d8dc4: bl #0x61ec54
//  0x4d8dc8: ldur x1, [FP, #-0x18]
//  0x4d8dcc: mov x2, x0
//  0x4d8dd0: bl #0x4d8dec
//  0x4d8dd4: mov x0, NULL
//  0x4d8dd8: mov SP, FP
//  0x4d8ddc: ldp FP, LR, [SP], #0x10
//  0x4d8de0: ret 
//  0x4d8de4: bl #0x61fa28
//  0x4d8de8: b #0x4d8d60
//
dynamic GameFruitBetRecordDialogState_initState() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d8d44
  // frame: FP = SP // 0x4d8d48
  // frame: SP = SP - 0x18 // 0x4d8d4c
  local_m8 = x1; // 0x4d8d50
  BARRIER = mem(THR, 0x38); // 0x4d8d54
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d8de4
  }
  x1 = 1; // 0x4d8d60
  sub_0x61e890(); // 0x4d8d64
  x0 = local_m8; // 0x4d8d6c
  x1 = x0; // 0x4d8d68
  local_m10 = x1; // 0x4d8d70
  memSet(x1, 0xf, w0); // 0x4d8d74
  AllocationStub_RefreshController() /* 0x4c47f0 */; // 0x4d8d78
  x1 = x0; // 0x4d8d7c
  local_m18 = x0; // 0x4d8d80
  RefreshController_ctor() /* 0x4c46e0 */; // 0x4d8d84
  x0 = local_m18; // 0x4d8d88
  x1 = local_m8; // 0x4d8d8c
  memSet(x1, 0x17, w0); // 0x4d8d90
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d8d9c
  w16 = mem(x1, -1); // 0x4d8d94
  w17 = mem(x0, -1); // 0x4d8d98
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d8d94
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d8d98
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d8da8
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d8db0
  x2 = local_m10; // 0x4d8db4
  local_m18 = x0; // 0x4d8db8
  x1 = mem((PP + 0x15000), 0x4c8) /* Function */; // 0x4d8dc0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d8dc4
  x1 = local_m18; // 0x4d8dc8
  x2 = x0; // 0x4d8dcc
  GameFruitBetRecordNotifier_gainGameFruitDialog() /* 0x4d8dec */; // 0x4d8dd0
  SP = FP; // 0x4d8dd8
  x0 = NULL; // 0x4d8dd4
  // frame: FP, LR, mem(SP), 0x10 // 0x4d8ddc
  return;
}

// GameFruitBetRecordDialogState_anon_closure_7
// raw disassembly:
//  0x4d8e40: stp FP, LR, [SP, #-0x10]!
//  0x4d8e44: mov FP, SP
//  0x4d8e48: ldr x0, [FP, #0x20]
//  0x4d8e4c: ldur w1, [x0, #0x17]
//  0x4d8e50: add x1, x1, HEAP, lsl #32
//  0x4d8e54: ldr BARRIER, [THR, #0x38]
//  0x4d8e58: cmp SP, BARRIER
//  0x4d8e5c: b.ls #0x4d8ee8
//  0x4d8e60: ldr x0, [FP, #0x18]
//  0x4d8e64: tbnz w0, #4, #0x4d8eb8
//  0x4d8e68: ldr x0, [FP, #0x10]
//  0x4d8e6c: tbnz w0, #4, #0x4d8e94
//  0x4d8e70: ldur w0, [x1, #0xf]
//  0x4d8e74: add x0, x0, HEAP, lsl #32
//  0x4d8e78: ldur w1, [x0, #0x17]
//  0x4d8e7c: add x1, x1, HEAP, lsl #32
//  0x4d8e80: ldr BARRIER, [PP, #0x40]
//  0x4d8e84: cmp w1, w16
//  0x4d8e88: b.eq #0x4d8ef0
//  0x4d8e8c: bl #0x3adfd4
//  0x4d8e90: b #0x4d8ed8
//  0x4d8e94: ldur w0, [x1, #0xf]
//  0x4d8e98: add x0, x0, HEAP, lsl #32
//  0x4d8e9c: ldur w1, [x0, #0x17]
//  0x4d8ea0: add x1, x1, HEAP, lsl #32
//  0x4d8ea4: ldr BARRIER, [PP, #0x40]
//  0x4d8ea8: cmp w1, w16
//  0x4d8eac: b.eq #0x4d8efc
//  0x4d8eb0: bl #0x3ade48
//  0x4d8eb4: b #0x4d8ed8
//  0x4d8eb8: ldur w0, [x1, #0xf]
//  0x4d8ebc: add x0, x0, HEAP, lsl #32
//  0x4d8ec0: ldur w1, [x0, #0x17]
//  0x4d8ec4: add x1, x1, HEAP, lsl #32
//  0x4d8ec8: ldr BARRIER, [PP, #0x40]
//  0x4d8ecc: cmp w1, w16
//  0x4d8ed0: b.eq #0x4d8f08
//  0x4d8ed4: bl #0x3adbb4
//  0x4d8ed8: mov x0, NULL
//  0x4d8edc: mov SP, FP
//  0x4d8ee0: ldp FP, LR, [SP], #0x10
//  0x4d8ee4: ret 
//  0x4d8ee8: bl #0x61fa28
//  0x4d8eec: b #0x4d8e60
//  0x4d8ef0: add x9, PP, #0x15, lsl #12
//  0x4d8ef4: ldr x9, [x9, #0x3a8]
//  0x4d8ef8: bl #0x620258
//  0x4d8efc: add x9, PP, #0x15, lsl #12
//  0x4d8f00: ldr x9, [x9, #0x3a8]
//  0x4d8f04: bl #0x620258
//  0x4d8f08: add x9, PP, #0x15, lsl #12
//  0x4d8f0c: ldr x9, [x9, #0x3a8]
//  0x4d8f10: bl #0x620258
//
dynamic GameFruitBetRecordDialogState_anon_closure_7() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d8e40
  BARRIER = mem(THR, 0x38); // 0x4d8e54
  // frame: FP = SP // 0x4d8e44
  w1 = mem((local_20), 0x17); /* _GameFruitBetRecordDialogState._refreshController (off 0x18) */  // 0x4d8e4c
  x0 = local_20; // 0x4d8e48
  x1 = ((mem((local_20), 0x17)) & 0xffffffff) + (HEAP << 32); /* _GameFruitBetRecordDialogState._refreshController (off 0x18) */  // 0x4d8e50
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d8ee8
  }
  x0 = local_18; // 0x4d8e60
  if (x0 & (1 << 4) != 0) {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d8ec8
    w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4d8ec0
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d8ebc
    x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d8ec4
    if (w1 != w16) {
      RefreshController_loadFailed() /* 0x3adbb4 */; // 0x4d8ed4
      SP = FP; // 0x4d8edc
      x0 = NULL; // 0x4d8ed8
      // frame: FP, LR, mem(SP), 0x10 // 0x4d8ee0
      return;
    }
  } else {
    x0 = local_10; // 0x4d8e68
    if (x0 & (1 << 4) != 0) {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d8ea4
      w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4d8e9c
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d8e98
      x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d8ea0
      if (w1 != w16) {
        RefreshController_loadComplete() /* 0x3ade48 */; // 0x4d8eb0
        // duplicated tail (join at 0x4d8ed8; the same code was emitted above)
        SP = FP; // 0x4d8edc
        x0 = NULL; // 0x4d8ed8
        // frame: FP, LR, mem(SP), 0x10 // 0x4d8ee0
        return;
      }
    } else {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d8e80
      w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4d8e78
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d8e74
      x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d8e7c
      if (w1 == w16) {
        x9 = mem((PP + 0x15000), 0x3a8) /* Field */; // 0x4d8ef4
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d8ef8
      }
      RefreshController_loadNoData() /* 0x3adfd4 */; // 0x4d8e8c
      // duplicated tail (join at 0x4d8ed8; the same code was emitted above)
      SP = FP; // 0x4d8edc
      x0 = NULL; // 0x4d8ed8
      // frame: FP, LR, mem(SP), 0x10 // 0x4d8ee0
      return;
    }
    x9 = mem((PP + 0x15000), 0x3a8) /* Field */; // 0x4d8f00
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d8f04
  }
  x9 = mem((PP + 0x15000), 0x3a8) /* Field */; // 0x4d8f0c
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d8f10
}
