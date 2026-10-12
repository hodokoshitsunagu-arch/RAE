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

dynamic AllocationStub_GameFruitRankListInfo, AllocationStub__Closure, BARRIER, FP;
dynamic GameFruitRankListInfo_ctor_fromJson, GrowableList_addAll, GrowableList_clear;
dynamic GrowableList_factory_ctor, HEAP, LR, NULL, PP, SOApiService_getGameFruitRankList, SP;
dynamic SafeChangeNotifier_safeNotify, SlowTypeTestStub_0x61d6e4;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, THR, WriteBarrierStub_x1, local_0;
dynamic local_10, local_18, local_m10, local_m18, local_m20, local_m8, sub_0x2b15f0;
dynamic sub_0x61d99c, sub_0x61e890, sub_0x62aa34, w0, w1, w16, w17, w2, w22, w3, w4, x0, x1;
dynamic x16, x17, x2, x21, x3, x4, x5, x8, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$game$notifier$notifier_game_fruit_ranking
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// GameFruitRankingNotifier_requestGameFruitRankList
// raw disassembly:
//  0x4365ec: stp FP, LR, [SP, #-0x10]!
//  0x4365f0: mov FP, SP
//  0x4365f4: sub SP, SP, #0x20
//  0x4365f8: stur x1, [FP, #-8]
//  0x4365fc: stur x2, [FP, #-0x10]
//  0x436600: ldr BARRIER, [THR, #0x38]
//  0x436604: cmp SP, BARRIER
//  0x436608: b.ls #0x436684
//  0x43660c: mov x1, #2
//  0x436610: bl #0x61e890
//  0x436614: mov x2, x0
//  0x436618: ldur x0, [FP, #-8]
//  0x43661c: stur x2, [FP, #-0x18]
//  0x436620: stur w0, [x2, #0xf]
//  0x436624: ldur x1, [FP, #-0x10]
//  0x436628: stur w1, [x2, #0x13]
//  0x43662c: mov x1, x0
//  0x436630: bl #0x3ac980
//  0x436634: ldur x0, [FP, #-8]
//  0x436638: ldur x3, [x0, #0x2f]
//  0x43663c: ldur x2, [FP, #-0x18]
//  0x436640: stur x3, [FP, #-0x20]
//  0x436644: add x1, PP, #0x11, lsl #12
//  0x436648: ldr x1, [x1, #0x948]
//  0x43664c: bl #0x61ec54
//  0x436650: ldur x2, [FP, #-0x18]
//  0x436654: add x1, PP, #0x11, lsl #12
//  0x436658: ldr x1, [x1, #0x950]
//  0x43665c: stur x0, [FP, #-8]
//  0x436660: bl #0x61ec54
//  0x436664: ldur x1, [FP, #-0x20]
//  0x436668: ldur x2, [FP, #-8]
//  0x43666c: mov x3, x0
//  0x436670: bl #0x4366ac
//  0x436674: mov x0, NULL
//  0x436678: mov SP, FP
//  0x43667c: ldp FP, LR, [SP], #0x10
//  0x436680: ret 
//  0x436684: bl #0x61fa28
//  0x436688: b #0x43660c
//
dynamic GameFruitRankingNotifier_requestGameFruitRankList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4365ec
  // frame: FP = SP // 0x4365f0
  // frame: SP = SP - 0x20 // 0x4365f4
  local_m8 = x1; // 0x4365f8
  local_m10 = x2; // 0x4365fc
  BARRIER = mem(THR, 0x38); // 0x436600
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x436684
  }
  x1 = 2; // 0x43660c
  sub_0x61e890(); // 0x436610
  x0 = local_m8; // 0x436618
  x2 = x0; // 0x436614
  local_m18 = x2; // 0x43661c
  memSet(x2, 0xf, w0); // 0x436620
  x1 = local_m10; // 0x436624
  memSet(x2, 0x13, w1); // 0x436628
  x1 = x0; // 0x43662c
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x436630
  x0 = local_m8; // 0x436634
  x2 = local_m18; // 0x43663c
  x3 = mem((local_m8), 0x2f); // 0x436638
  local_m20 = x3; // 0x436640
  x1 = mem((PP + 0x11000), 0x948) /* Function */; // 0x436648
  AllocationStub__Closure() /* 0x61ec54 */; // 0x43664c
  x1 = mem((PP + 0x11000), 0x950) /* Function */; // 0x436658
  x2 = local_m18; // 0x436650
  local_m8 = x0; // 0x43665c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x436660
  x1 = local_m20; // 0x436664
  x2 = local_m8; // 0x436668
  x3 = x0; // 0x43666c
  SOApiService_getGameFruitRankList() /* 0x4366ac */; // 0x436670
  SP = FP; // 0x436678
  x0 = NULL; // 0x436674
  // frame: FP, LR, mem(SP), 0x10 // 0x43667c
  return;
}

// GameFruitRankingNotifier_anon_closure
// raw disassembly:
//  0x4367b0: stp FP, LR, [SP, #-0x10]!
//  0x4367b4: mov FP, SP
//  0x4367b8: sub SP, SP, #0x30
//  0x4367bc: ldr x0, [FP, #0x18]
//  0x4367c0: ldur w3, [x0, #0x17]
//  0x4367c4: add x3, x3, HEAP, lsl #32
//  0x4367c8: stur x3, [FP, #-0x10]
//  0x4367cc: ldr BARRIER, [THR, #0x38]
//  0x4367d0: cmp SP, BARRIER
//  0x4367d4: b.ls #0x436a04
//  0x4367d8: ldur w4, [x3, #0xf]
//  0x4367dc: add x4, x4, HEAP, lsl #32
//  0x4367e0: ldr x5, [FP, #0x10]
//  0x4367e4: stur x4, [FP, #-8]
//  0x4367e8: ldur x0, [x5, #-1]
//  0x4367ec: ubfx x0, x0, #0xc, #0x14
//  0x4367f0: mov x1, x5
//  0x4367f4: add x2, PP, #0xf, lsl #12
//  0x4367f8: ldr x2, [x2, #0x368]
//  0x4367fc: sub LR, x0, #1, lsl #12
//  0x436800: ldr LR, [x21, LR, lsl #3]
//  0x436804: blr LR
//  0x436808: cmp w0, w22
//  0x43680c: b.ne #0x436818
//  0x436810: orr x5, xzr, #0xfffffffffffffffe
//  0x436814: b #0x43681c
//  0x436818: mov x5, x0
//  0x43681c: ldr x4, [FP, #0x10]
//  0x436820: ldur x3, [FP, #-8]
//  0x436824: mov x0, x5
//  0x436828: stur x5, [FP, #-0x18]
//  0x43682c: mov x2, NULL
//  0x436830: mov x1, NULL
//  0x436834: tbz w0, #0, #0x43685c
//  0x436838: ldur x4, [x0, #-1]
//  0x43683c: ubfx x4, x4, #0xc, #0x14
//  0x436840: sub x4, x4, #0x3c
//  0x436844: cmp x4, #1
//  0x436848: b.ls #0x43685c
//  0x43684c: ldr x8, [PP, #0x1170]
//  0x436850: add x3, PP, #0x11, lsl #12
//  0x436854: ldr x3, [x3, #0x958]
//  0x436858: bl #0x62aa34
//  0x43685c: ldur x0, [FP, #-0x18]
//  0x436860: sbfx x1, x0, #1, #0x1f
//  0x436864: tbz w0, #0, #0x43686c
//  0x436868: ldur x1, [x0, #7]
//  0x43686c: ldur x0, [FP, #-8]
//  0x436870: stur x1, [x0, #0x2f]
//  0x436874: ldr x1, [FP, #0x10]
//  0x436878: ldur x0, [x1, #-1]
//  0x43687c: ubfx x0, x0, #0xc, #0x14
//  0x436880: add x2, PP, #0xf, lsl #12
//  0x436884: ldr x2, [x2, #0x380]
//  0x436888: sub LR, x0, #1, lsl #12
//  0x43688c: ldr LR, [x21, LR, lsl #3]
//  0x436890: blr LR
//  0x436894: cmp w0, w22
//  0x436898: b.ne #0x4368b0
//  0x43689c: mov x1, NULL
//  0x4368a0: mov x2, #0
//  0x4368a4: bl #0x277268
//  0x4368a8: mov x3, x0
//  0x4368ac: b #0x4368b4
//  0x4368b0: mov x3, x0
//  0x4368b4: mov x0, x3
//  0x4368b8: stur x3, [FP, #-8]
//  0x4368bc: mov x2, NULL
//  0x4368c0: mov x1, NULL
//  0x4368c4: mov x4, #0x3c
//  0x4368c8: tbz w0, #0, #0x4368d4
//  0x4368cc: ldur x4, [x0, #-1]
//  0x4368d0: ubfx x4, x4, #0xc, #0x14
//  0x4368d4: sub x4, x4, #0x5a
//  0x4368d8: cmp x4, #2
//  0x4368dc: b.ls #0x436910
//  0x4368e0: sub x4, x4, #0x16
//  0x4368e4: cmp x4, #0x37
//  0x4368e8: b.ls #0x436910
//  0x4368ec: cmp x4, #0xebc
//  0x4368f0: b.eq #0x436910
//  0x4368f4: sub x4, x4, #0xedd
//  0x4368f8: cmp x4, #4
//  0x4368fc: b.ls #0x436910
//  0x436900: ldr x8, [PP, #0x3b80]
//  0x436904: add x3, PP, #0x11, lsl #12
//  0x436908: ldr x3, [x3, #0x968]
//  0x43690c: bl #0x61d6e4
//  0x436910: ldur x2, [FP, #-8]
//  0x436914: ldur x0, [x2, #-1]
//  0x436918: ubfx x0, x0, #0xc, #0x14
//  0x43691c: mov x1, x2
//  0x436920: mov x17, #0x89aa
//  0x436924: add LR, x0, x17
//  0x436928: ldr LR, [x21, LR, lsl #3]
//  0x43692c: blr LR
//  0x436930: tbnz w0, #4, #0x4369a4
//  0x436934: ldur x3, [FP, #-0x10]
//  0x436938: ldur x0, [FP, #-8]
//  0x43693c: ldur w1, [x3, #0xf]
//  0x436940: add x1, x1, HEAP, lsl #32
//  0x436944: ldur w4, [x1, #0x2b]
//  0x436948: add x4, x4, HEAP, lsl #32
//  0x43694c: stur x4, [FP, #-0x18]
//  0x436950: add x1, PP, #0x11, lsl #12
//  0x436954: ldr x1, [x1, #0x978]
//  0x436958: mov x2, NULL
//  0x43695c: bl #0x61ec54
//  0x436960: mov x1, x0
//  0x436964: ldur x0, [FP, #-8]
//  0x436968: ldur x2, [x0, #-1]
//  0x43696c: ubfx x2, x2, #0xc, #0x14
//  0x436970: add BARRIER, PP, #0xb, lsl #12
//  0x436974: ldr BARRIER, [BARRIER, #0x830]
//  0x436978: stp x0, BARRIER, [SP, #8]
//  0x43697c: str x1, [SP]
//  0x436980: mov x0, x2
//  0x436984: ldr x4, [PP, #0x58]
//  0x436988: mov x17, #0x86d9
//  0x43698c: add LR, x0, x17
//  0x436990: ldr LR, [x21, LR, lsl #3]
//  0x436994: blr LR
//  0x436998: ldur x1, [FP, #-0x18]
//  0x43699c: mov x2, x0
//  0x4369a0: bl #0x2ce4e8
//  0x4369a4: ldur x1, [FP, #-0x10]
//  0x4369a8: ldur w0, [x1, #0x13]
//  0x4369ac: add x0, x0, HEAP, lsl #32
//  0x4369b0: ldur w2, [x1, #0xf]
//  0x4369b4: add x2, x2, HEAP, lsl #32
//  0x4369b8: ldur x3, [x2, #0x2f]
//  0x4369bc: tbnz x3, #0x3f, #0x4369c8
//  0x4369c0: add x2, NULL, #0x30
//  0x4369c4: b #0x4369cc
//  0x4369c8: add x2, NULL, #0x20
//  0x4369cc: add BARRIER, NULL, #0x20
//  0x4369d0: stp BARRIER, x0, [SP, #8]
//  0x4369d4: str x2, [SP]
//  0x4369d8: ldr x4, [PP, #0x370]
//  0x4369dc: ldur x2, [x0, #0x1f]
//  0x4369e0: blr x2
//  0x4369e4: ldur x0, [FP, #-0x10]
//  0x4369e8: ldur w1, [x0, #0xf]
//  0x4369ec: add x1, x1, HEAP, lsl #32
//  0x4369f0: bl #0x3ac980
//  0x4369f4: mov x0, NULL
//  0x4369f8: mov SP, FP
//  0x4369fc: ldp FP, LR, [SP], #0x10
//  0x436a00: ret 
//  0x436a04: bl #0x61fa28
//  0x436a08: b #0x4367d8
//
dynamic GameFruitRankingNotifier_anon_closure() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4367b0
  // frame: FP = SP // 0x4367b4
  // frame: SP = SP - 0x30 // 0x4367b8
  w3 = mem((local_18), 0x17); // 0x4367c0
  x0 = local_18; // 0x4367bc
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4367c4
  local_m10 = x3; // 0x4367c8
  BARRIER = mem(THR, 0x38); // 0x4367cc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x436a04
  }
  x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x4367dc
  x5 = local_10; // 0x4367e0
  local_m8 = x4; // 0x4367e4
  LR = mem(x21, ((((mem(x5, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x436800
  x0 = ((mem(x5, -1)) >> 12) & 0xfffff; // 0x4367ec
  x1 = x5; // 0x4367f0
  x2 = "cursor" /* pp+0xf368 */; // 0x4367f8
  callIndirect(LR); // 0x436804
  if (w0 != w22) {
    x5 = x0; // 0x436818
  } else {
    x5 = xzr | 0xfffffffffffffffe; // 0x436810
  }
  x0 = x5; // 0x436824
  x3 = local_m8; // 0x436820
  x4 = local_10; // 0x43681c
  local_m18 = x5; // 0x436828
  x1 = NULL; // 0x436830
  x2 = NULL; // 0x43682c
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x436840
    if (x4 <= 1) {
    } else {
      x3 = mem((PP + 0x11000), 0x958) /* Obj!? */; // 0x436854
      x8 = mem(PP, 0x1170) /* Type */; // 0x43684c
      sub_0x62aa34(); // 0x436858
    }
  }
  x0 = local_m18; // 0x43685c
  x1 = ((local_m18) >> 1) & 0x7fffffff; // 0x436860
  if (x0 & (1 << 0) == 0) {
  } else {
    x1 = mem(x0, 7); // 0x436868
  }
  x0 = local_m8; // 0x43686c
  memSet(x0, 0x2f, x1); // 0x436870
  LR = mem(x21, ((((mem((local_10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x43688c
  x0 = ((mem((local_10), -1)) >> 12) & 0xfffff; // 0x43687c
  x1 = local_10; // 0x436874
  x2 = "list" /* pp+0xf380 */; // 0x436884
  callIndirect(LR); // 0x436890
  if (w0 != w22) {
    x3 = x0; // 0x4368b0
  } else {
    x1 = NULL; // 0x43689c
    x2 = 0; // 0x4368a0
    GrowableList_factory_ctor() /* 0x277268 */; // 0x4368a4
    x3 = x0; // 0x4368a8
  }
  x0 = x3; // 0x4368b4
  local_m8 = x3; // 0x4368b8
  x1 = NULL; // 0x4368c0
  x2 = NULL; // 0x4368bc
  x4 = 60; // 0x4368c4
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4368d0
  }
  x4 = x4 - 0x5a; // 0x4368d4
  if (x4 <= 2) {
  } else {
    x4 = x4 - 0x16; // 0x4368e0
    if (x4 <= 0x37) {
    } else {
      if (x4 == 0xebc) {
      } else {
        x4 = x4 - 0xedd; // 0x4368f4
        if (x4 <= 4) {
        } else {
          x3 = mem((PP + 0x11000), 0x968) /* Obj!? */; // 0x436908
          x8 = mem(PP, 0x3b80) /* Type */; // 0x436900
          SlowTypeTestStub_0x61d6e4() /* 0x61d6e4 */; // 0x43690c
        }
      }
    }
  }
  LR = mem(x21, ((((mem((local_m8), (-1)) >> 12) & 0xfffff) + x17) << 3)); // 0x436928
  x0 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x436918
  x1 = local_m8; // 0x43691c
  x17 = 35242; // 0x436920
  x2 = local_m8; // 0x436910
  callIndirect(LR); // 0x43692c
  if (x0 & (1 << 4) != 0) {
  } else {
    w1 = mem((local_m10), 0xf); // 0x43693c
    w4 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2b); // 0x436944
    x0 = local_m8; // 0x436938
    x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x436940
    x3 = local_m10; // 0x436934
    x4 = ((mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2b)) & 0xffffffff) + (HEAP << 32); // 0x436948
    local_m18 = x4; // 0x43694c
    x1 = mem((PP + 0x11000), 0x978) /* Function */; // 0x436954
    x2 = NULL; // 0x436958
    AllocationStub__Closure() /* 0x61ec54 */; // 0x43695c
    BARRIER = mem((PP + 0xb000), 0x830) /* TypeArguments */; // 0x436974
    x0 = local_m8; // 0x436964
    x1 = x0; // 0x436960
    x2 = ((mem((local_m8), -1)) >> 12) & 0xfffff; // 0x43696c
    // frame: x0, BARRIER, mem(SP, 8) // 0x436978
    local_0 = x1; // 0x43697c
    LR = mem(x21, ((x0 + x17) << 3)); // 0x436990
    x0 = x2; // 0x436980
    x17 = 34521; // 0x436988
    x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x436984
    callIndirect(LR); // 0x436994
    x1 = local_m18; // 0x436998
    x2 = x0; // 0x43699c
    GrowableList_addAll() /* 0x2ce4e8 */; // 0x4369a0
  }
  w0 = mem((local_m10), 0x13); // 0x4369a8
  w2 = mem((local_m10), 0xf); // 0x4369b0
  x0 = ((mem((local_m10), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4369ac
  x1 = local_m10; // 0x4369a4
  x2 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4369b4
  x3 = mem((((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2f); // 0x4369b8
  if (x3 & (1 << 0x3f) != 0) {
    x2 = NULL + 0x20; // 0x4369c8
  } else {
    x2 = NULL + 0x30; // 0x4369c0
  }
  BARRIER = NULL + 0x20; // 0x4369cc
  // frame: BARRIER, x0, mem(SP, 8) // 0x4369d0
  local_0 = x2; // 0x4369d4
  x2 = mem(x0, 0x1f); // 0x4369dc
  x4 = mem(PP, 0x370) /* Obj!? */; // 0x4369d8
  callIndirect(x2); // 0x4369e0
  w1 = mem((local_m10), 0xf); // 0x4369e8
  x0 = local_m10; // 0x4369e4
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4369ec
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x4369f0
  SP = FP; // 0x4369f8
  x0 = NULL; // 0x4369f4
  // frame: FP, LR, mem(SP), 0x10 // 0x4369fc
  return;
}

// GameFruitRankingNotifier_anon_closure_2
// raw disassembly:
//  0x436a0c: stp FP, LR, [SP, #-0x10]!
//  0x436a10: mov FP, SP
//  0x436a14: sub SP, SP, #8
//  0x436a18: ldr BARRIER, [THR, #0x38]
//  0x436a1c: cmp SP, BARRIER
//  0x436a20: b.ls #0x436a64
//  0x436a24: ldr x0, [FP, #0x10]
//  0x436a28: mov x2, NULL
//  0x436a2c: mov x1, NULL
//  0x436a30: ldr x8, [PP, #0x3cd0]
//  0x436a34: add x3, PP, #0x11, lsl #12
//  0x436a38: ldr x3, [x3, #0x980]
//  0x436a3c: bl #0x2b15f0
//  0x436a40: bl #0x436d14
//  0x436a44: mov x1, x0
//  0x436a48: ldr x2, [FP, #0x10]
//  0x436a4c: stur x0, [FP, #-8]
//  0x436a50: bl #0x436a6c
//  0x436a54: ldur x0, [FP, #-8]
//  0x436a58: mov SP, FP
//  0x436a5c: ldp FP, LR, [SP], #0x10
//  0x436a60: ret 
//  0x436a64: bl #0x61fa28
//  0x436a68: b #0x436a24
//
dynamic GameFruitRankingNotifier_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x436a0c
  BARRIER = mem(THR, 0x38); // 0x436a18
  // frame: FP = SP // 0x436a10
  // frame: SP = SP - 8 // 0x436a14
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x436a64
  }
  x0 = local_10; // 0x436a24
  x1 = NULL; // 0x436a2c
  x2 = NULL; // 0x436a28
  x3 = mem((PP + 0x11000), 0x980) /* Obj!? */; // 0x436a38
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x436a30
  sub_0x2b15f0(); // 0x436a3c
  AllocationStub_GameFruitRankListInfo() /* 0x436d14 */; // 0x436a40
  x1 = x0; // 0x436a44
  x2 = local_10; // 0x436a48
  local_m8 = x0; // 0x436a4c
  GameFruitRankListInfo_ctor_fromJson() /* 0x436a6c */; // 0x436a50
  SP = FP; // 0x436a58
  x0 = local_m8; // 0x436a54
  // frame: FP, LR, mem(SP), 0x10 // 0x436a5c
  return;
}

// GameFruitRankingNotifier_ctor
// raw disassembly:
//  0x4c3b10: stp FP, LR, [SP, #-0x10]!
//  0x4c3b14: mov FP, SP
//  0x4c3b18: sub SP, SP, #8
//  0x4c3b1c: mov x0, x1
//  0x4c3b20: stur x1, [FP, #-8]
//  0x4c3b24: ldr BARRIER, [THR, #0x38]
//  0x4c3b28: cmp SP, BARRIER
//  0x4c3b2c: b.ls #0x4c3bc4
//  0x4c3b30: add x1, PP, #0xb, lsl #12
//  0x4c3b34: ldr x1, [x1, #0x830]
//  0x4c3b38: mov x2, #0
//  0x4c3b3c: bl #0x277268
//  0x4c3b40: ldur x1, [FP, #-8]
//  0x4c3b44: stur w0, [x1, #0x2b]
//  0x4c3b48: ldurb w16, [x1, #-1]
//  0x4c3b4c: ldurb w17, [x0, #-1]
//  0x4c3b50: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3b54: tst BARRIER, HEAP, lsr #32
//  0x4c3b58: b.eq #0x4c3b60
//  0x4c3b5c: bl #0x61e04c
//  0x4c3b60: mov x0, #-1
//  0x4c3b64: stur x0, [x1, #0x2f]
//  0x4c3b68: stur x0, [x1, #0x23]
//  0x4c3b6c: stur xzr, [x1, #7]
//  0x4c3b70: stur xzr, [x1, #0x13]
//  0x4c3b74: stur xzr, [x1, #0x1b]
//  0x4c3b78: ldr x0, [THR, #0x68]
//  0x4c3b7c: ldr x0, [x0, #0xb90]
//  0x4c3b80: ldr BARRIER, [PP, #0x40]
//  0x4c3b84: cmp w0, w16
//  0x4c3b88: b.ne #0x4c3b94
//  0x4c3b8c: ldr x2, [PP, #0x3608]
//  0x4c3b90: bl #0x61d99c
//  0x4c3b94: ldur x1, [FP, #-8]
//  0x4c3b98: stur w0, [x1, #0xf]
//  0x4c3b9c: ldurb w16, [x1, #-1]
//  0x4c3ba0: ldurb w17, [x0, #-1]
//  0x4c3ba4: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3ba8: tst BARRIER, HEAP, lsr #32
//  0x4c3bac: b.eq #0x4c3bb4
//  0x4c3bb0: bl #0x61e04c
//  0x4c3bb4: mov x0, NULL
//  0x4c3bb8: mov SP, FP
//  0x4c3bbc: ldp FP, LR, [SP], #0x10
//  0x4c3bc0: ret 
//  0x4c3bc4: bl #0x61fa28
//  0x4c3bc8: b #0x4c3b30
//
dynamic GameFruitRankingNotifier_ctor() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c3b10
  // frame: FP = SP // 0x4c3b14
  // frame: SP = SP - 8 // 0x4c3b18
  x0 = x1; // 0x4c3b1c
  local_m8 = x1; // 0x4c3b20
  BARRIER = mem(THR, 0x38); // 0x4c3b24
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c3bc4
  }
  x1 = mem((PP + 0xb000), 0x830) /* TypeArguments */; // 0x4c3b34
  x2 = 0; // 0x4c3b38
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c3b3c
  x1 = local_m8; // 0x4c3b40
  memSet(x1, 0x2b, w0); // 0x4c3b44
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3b50
  w16 = mem(x1, -1); // 0x4c3b48
  w17 = mem(x0, -1); // 0x4c3b4c
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c3b48
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3b4c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c3b5c
  }
  x0 = -1; // 0x4c3b60
  memSet(x1, 0x2f, x0); // 0x4c3b64
  memSet(x1, 0x23, x0); // 0x4c3b68
  memSet(x1, 7, xzr); // 0x4c3b6c
  memSet(x1, 0x13, xzr); // 0x4c3b70
  memSet(x1, 0x1b, xzr); // 0x4c3b74
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4c3b80
  x0 = mem((mem(THR, 0x68)), 0xb90); // 0x4c3b7c
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3608) /* Field */; // 0x4c3b8c
    sub_0x61d99c(); // 0x4c3b90
  }
  x1 = local_m8; // 0x4c3b94
  memSet(x1, 0xf, w0); // 0x4c3b98
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3ba4
  w16 = mem(x1, -1); // 0x4c3b9c
  w17 = mem(x0, -1); // 0x4c3ba0
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c3b9c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3ba0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c3bb0
  }
  SP = FP; // 0x4c3bb8
  x0 = NULL; // 0x4c3bb4
  // frame: FP, LR, mem(SP), 0x10 // 0x4c3bbc
  return;
}

// GameFruitRankingNotifier_gainGameFruitRank
// raw disassembly:
//  0x4d8fbc: stp FP, LR, [SP, #-0x10]!
//  0x4d8fc0: mov FP, SP
//  0x4d8fc4: sub SP, SP, #0x10
//  0x4d8fc8: mov x0, x1
//  0x4d8fcc: stur x1, [FP, #-8]
//  0x4d8fd0: stur x2, [FP, #-0x10]
//  0x4d8fd4: ldr BARRIER, [THR, #0x38]
//  0x4d8fd8: cmp SP, BARRIER
//  0x4d8fdc: b.ls #0x4d9008
//  0x4d8fe0: ldur w1, [x0, #0x2b]
//  0x4d8fe4: add x1, x1, HEAP, lsl #32
//  0x4d8fe8: bl #0x2b3608
//  0x4d8fec: ldur x1, [FP, #-8]
//  0x4d8ff0: ldur x2, [FP, #-0x10]
//  0x4d8ff4: bl #0x4365ec
//  0x4d8ff8: mov x0, NULL
//  0x4d8ffc: mov SP, FP
//  0x4d9000: ldp FP, LR, [SP], #0x10
//  0x4d9004: ret 
//  0x4d9008: bl #0x61fa28
//  0x4d900c: b #0x4d8fe0
//
dynamic GameFruitRankingNotifier_gainGameFruitRank() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d8fbc
  // frame: FP = SP // 0x4d8fc0
  // frame: SP = SP - 0x10 // 0x4d8fc4
  x0 = x1; // 0x4d8fc8
  local_m8 = x1; // 0x4d8fcc
  local_m10 = x2; // 0x4d8fd0
  BARRIER = mem(THR, 0x38); // 0x4d8fd4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d9008
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d8fe4
  GrowableList_clear() /* 0x2b3608 */; // 0x4d8fe8
  x1 = local_m8; // 0x4d8fec
  x2 = local_m10; // 0x4d8ff0
  GameFruitRankingNotifier_requestGameFruitRankList() /* 0x4365ec */; // 0x4d8ff4
  SP = FP; // 0x4d8ffc
  x0 = NULL; // 0x4d8ff8
  // frame: FP, LR, mem(SP), 0x10 // 0x4d9000
  return;
}
