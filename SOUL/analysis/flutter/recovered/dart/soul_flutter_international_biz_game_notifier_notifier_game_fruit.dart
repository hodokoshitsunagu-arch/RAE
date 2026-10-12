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

dynamic AllocationStub_AlertAction, AllocationStub_AnimationController;
dynamic AllocationStub_BetCoinInfo, AllocationStub_ConcurrentModificationError;
dynamic AllocationStub_CountDownTimer, AllocationStub_CurvedAnimation, AllocationStub_Duration;
dynamic AllocationStub_GameFruitProcessResult, AllocationStub_LabeledGlobalKey;
dynamic AllocationStub_SOAlertDialog, AllocationStub_StepTween, AllocationStub__Closure;
dynamic AllocationStub__GrowableList, AllocationStub__Mint, Animatable_animate;
dynamic Animatable_evaluate;
dynamic AnimationController_Animation_AnimationEagerListenerMixin_AnimationLocalListenersMixin_addListener;
dynamic AnimationController_ctor, AnimationController_dispose, AnimationController_forward;
dynamic AnimationController_reset, BARRIER, CountDownTimer_cancel, CountDownTimer_start;
dynamic CurvedAnimation_ctor, FP, Future_factory_ctor_delayed, GameApiService_betFruit;
dynamic GameApiService_getFruitGameProcess, GameApiService_getFruitGameResource;
dynamic GameApiService_getGameFruitResultDialog, GameApiService_getRecentFruitResult;
dynamic GameFruitProcessResult_ctor_fromJson, GameFruitWinnerDialog_showWinnerDialog;
dynamic GlobalKey_get_currentElement, GrowableList_addAll, GrowableList_clear;
dynamic GrowableList_factory_ctor, HEAP, IterableExtension_firstWhereOrNull, LR;
dynamic LateInitializationErrorSharedWithFpuRegsStub_0x6202a8;
dynamic LateInitializationErrorSharedWithoutFpuRegsStub_0x620258, Map_factory_ctor_fromLiteral;
dynamic NULL, NativeDialog_toCoinDialog, NativeDialog_toast, PP;
dynamic RangeErrorSharedWithoutFpuRegsStub_0x61fe70, SOAlertDialog_ctor, SOAlertDialog_show;
dynamic SP, SafeChangeNotifier_requestTotalCoins, SafeChangeNotifier_safeNotify;
dynamic StackOverflowSharedWithFpuRegsStub_0x61faa8;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolateSingle, THR;
dynamic WriteBarrierStub_x1, WriteBarrierStub_x2, WriteBarrierStub_x3, d0, d1, d2, getString;
dynamic local_0, local_10, local_18, local_8, local_m10, local_m18, local_m20, local_m28;
dynamic local_m30, local_m38, local_m40, local_m48, local_m50, local_m8, q2, sub_0x61d99c;
dynamic sub_0x61dadc, sub_0x61e890, sub_0x61f920, w0, w1, w16, w17, w2, w22, w3, w4, wzr, x0;
dynamic x1, x16, x17, x2, x21, x3, x4, x5, x9, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$game$notifier$notifier_game_fruit
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// GameFruitNotifier_release
// raw disassembly:
//  0x41a46c: stp FP, LR, [SP, #-0x10]!
//  0x41a470: mov FP, SP
//  0x41a474: sub SP, SP, #8
//  0x41a478: add x0, NULL, #0x20
//  0x41a47c: mov x2, x1
//  0x41a480: stur x1, [FP, #-8]
//  0x41a484: ldr BARRIER, [THR, #0x38]
//  0x41a488: cmp SP, BARRIER
//  0x41a48c: b.ls #0x41a4d8
//  0x41a490: stur w0, [x2, #0x2f]
//  0x41a494: ldur w1, [x2, #0x5b]
//  0x41a498: add x1, x1, HEAP, lsl #32
//  0x41a49c: bl #0x41a500
//  0x41a4a0: ldur x0, [FP, #-8]
//  0x41a4a4: ldur w1, [x0, #0x63]
//  0x41a4a8: add x1, x1, HEAP, lsl #32
//  0x41a4ac: cmp w1, w22
//  0x41a4b0: b.ne #0x41a4bc
//  0x41a4b4: mov x1, x0
//  0x41a4b8: b #0x41a4c4
//  0x41a4bc: bl #0x341328
//  0x41a4c0: ldur x1, [FP, #-8]
//  0x41a4c4: stur w22, [x1, #0x63]
//  0x41a4c8: mov x0, NULL
//  0x41a4cc: mov SP, FP
//  0x41a4d0: ldp FP, LR, [SP], #0x10
//  0x41a4d4: ret 
//  0x41a4d8: bl #0x61fa28
//  0x41a4dc: b #0x41a490
//
dynamic GameFruitNotifier_release() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41a46c
  // frame: FP = SP // 0x41a470
  // frame: SP = SP - 8 // 0x41a474
  x0 = NULL + 0x20; // 0x41a478
  x2 = x1; // 0x41a47c
  local_m8 = x1; // 0x41a480
  BARRIER = mem(THR, 0x38); // 0x41a484
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41a4d8
  }
  memSet(x2, 0x2f, w0); // 0x41a490
  w1 = mem(x2, 0x5b); // 0x41a494
  x1 = ((mem(x2, 0x5b)) & 0xffffffff) + (HEAP << 32); // 0x41a498
  CountDownTimer_cancel() /* 0x41a500 */; // 0x41a49c
  w1 = mem((local_m8), 0x63); // 0x41a4a4
  x0 = local_m8; // 0x41a4a0
  x1 = ((mem((local_m8), 0x63)) & 0xffffffff) + (HEAP << 32); // 0x41a4a8
  if (w1 != w22) {
    AnimationController_dispose() /* 0x341328 */; // 0x41a4bc
    x1 = local_m8; // 0x41a4c0
  } else {
    x1 = x0; // 0x41a4b4
  }
  memSet(x1, 0x63, w22); // 0x41a4c4
  SP = FP; // 0x41a4cc
  x0 = NULL; // 0x41a4c8
  // frame: FP, LR, mem(SP), 0x10 // 0x41a4d0
  return;
}

// GameFruitNotifier_get_currentTips
// raw disassembly:
//  0x41b40c: stp FP, LR, [SP, #-0x10]!
//  0x41b410: mov FP, SP
//  0x41b414: ldr BARRIER, [THR, #0x38]
//  0x41b418: cmp SP, BARRIER
//  0x41b41c: b.ls #0x41b4c0
//  0x41b420: ldur w0, [x1, #0x53]
//  0x41b424: add x0, x0, HEAP, lsl #32
//  0x41b428: ldur x2, [x0, #7]
//  0x41b42c: cmp x2, #2
//  0x41b430: b.gt #0x41b480
//  0x41b434: cmp x2, #1
//  0x41b438: b.gt #0x41b46c
//  0x41b43c: sbfiz x0, x2, #1, #0x1f
//  0x41b440: cmp x2, x0, asr #1
//  0x41b444: b.eq #0x41b450
//  0x41b448: bl #0x61fba8
//  0x41b44c: stur x2, [x0, #7]
//  0x41b450: cmp w0, #2
//  0x41b454: b.ne #0x41b4b0
//  0x41b458: add x1, PP, #0xc, lsl #12
//  0x41b45c: ldr x1, [x1, #0x7d0]
//  0x41b460: ldr x4, [PP, #0x4c0]
//  0x41b464: bl #0x3a1dcc
//  0x41b468: b #0x41b4b4
//  0x41b46c: add x1, PP, #0xc, lsl #12
//  0x41b470: ldr x1, [x1, #0x7c0]
//  0x41b474: ldr x4, [PP, #0x4c0]
//  0x41b478: bl #0x3a1dcc
//  0x41b47c: b #0x41b4b4
//  0x41b480: sbfiz x0, x2, #1, #0x1f
//  0x41b484: cmp x2, x0, asr #1
//  0x41b488: b.eq #0x41b494
//  0x41b48c: bl #0x61fba8
//  0x41b490: stur x2, [x0, #7]
//  0x41b494: cmp w0, #6
//  0x41b498: b.ne #0x41b4b0
//  0x41b49c: add x1, PP, #0xc, lsl #12
//  0x41b4a0: ldr x1, [x1, #0x7b0]
//  0x41b4a4: ldr x4, [PP, #0x4c0]
//  0x41b4a8: bl #0x3a1dcc
//  0x41b4ac: b #0x41b4b4
//  0x41b4b0: ldr x0, [PP, #0x148]
//  0x41b4b4: mov SP, FP
//  0x41b4b8: ldp FP, LR, [SP], #0x10
//  0x41b4bc: ret 
//  0x41b4c0: bl #0x61fa28
//  0x41b4c4: b #0x41b420
//
dynamic GameFruitNotifier_get_currentTips() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41b40c
  BARRIER = mem(THR, 0x38); // 0x41b414
  // frame: FP = SP // 0x41b410
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41b4c0
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x41b424
  x2 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 7); // 0x41b428
  if (x2 > 2) {
    x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x41b480
    if (x2 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x41b48c
      memSet(x0, 7, x2); // 0x41b490
    }
    if (w0 != 6) {
      x0 = "" /* pp+0x148 */; // 0x41b4b0
    } else {
      x1 = "virtual_party_fruitland_page_status_tip_announce" /* pp+0xc7b0 */; // 0x41b4a0
      x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x41b4a4
      getString() /* 0x3a1dcc */; // 0x41b4a8
    }
  } else {
    if (x2 > 1) {
      x1 = "virtual_party_fruitland_page_status_tip_decide" /* pp+0xc7c0 */; // 0x41b470
      x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x41b474
      getString() /* 0x3a1dcc */; // 0x41b478
    } else {
      x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x41b43c
      if (x2 == x0) {
      } else {
        AllocationStub__Mint() /* 0x61fba8 */; // 0x41b448
        memSet(x0, 7, x2); // 0x41b44c
      }
      if (w0 != 2) {
        // duplicated branch body (shared block 0x41b4b0, joins at 0x41b4b4; the same code was emitted above)
        x0 = "" /* pp+0x148 */; // 0x41b4b0
      } else {
        x1 = "virtual_party_fruitland_page_status_tip_choose" /* pp+0xc7d0 */; // 0x41b45c
        x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x41b460
        getString() /* 0x3a1dcc */; // 0x41b464
      }
    }
  }
  SP = FP; // 0x41b4b4
  // frame: FP, LR, mem(SP), 0x10 // 0x41b4b8
  return;
}

// GameFruitNotifier_getBetCoinGear
// raw disassembly:
//  0x41d410: tbnz x2, #0x3f, #0x41d460
//  0x41d414: ldur w3, [x1, #0x3b]
//  0x41d418: add x3, x3, HEAP, lsl #32
//  0x41d41c: ldur w4, [x3, #0xb]
//  0x41d420: sbfx x0, x4, #1, #0x1f
//  0x41d424: cmp x2, x0
//  0x41d428: b.ge #0x41d460
//  0x41d42c: mov x1, x2
//  0x41d430: cmp x1, x0
//  0x41d434: b.hs #0x41d468
//  0x41d438: ldur w1, [x3, #0xf]
//  0x41d43c: add x1, x1, HEAP, lsl #32
//  0x41d440: add BARRIER, x1, x2, lsl #2
//  0x41d444: ldur w3, [BARRIER, #0xf]
//  0x41d448: add x3, x3, HEAP, lsl #32
//  0x41d44c: sbfx x1, x3, #1, #0x1f
//  0x41d450: tbz w3, #0, #0x41d458
//  0x41d454: ldur x1, [x3, #7]
//  0x41d458: mov x0, x1
//  0x41d45c: b #0x41d464
//  0x41d460: mov x0, #0
//  0x41d464: ret 
//  0x41d468: stp FP, LR, [SP, #-0x10]!
//  0x41d46c: mov FP, SP
//  0x41d470: bl #0x61fe70
//
dynamic GameFruitNotifier_getBetCoinGear() {
  dynamic BARRIER;
  dynamic w1;
  dynamic w3;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x3;
  dynamic x4;
  if (x2 & (1 << 0x3f) != 0) {
  } else {
    w4 = mem(((w3 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x41d41c
    x0 = (((mem(((w3 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x41d420
    x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x41d418
    x4 = (mem(((w3 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x41d41c
    if (x2 >= x0) {
      x0 = 0; // 0x41d460
    } else {
      x1 = x2; // 0x41d42c
      if (x1 >= x0) {
        // frame: FP, LR, mem(SP, -0x10)! // 0x41d468
        // frame: FP = SP // 0x41d46c
        RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x41d470
      }
      BARRIER = ((w1 & 0xffffffff) + (HEAP << 32)) + (x2 << 2); // 0x41d440
      w3 = mem((((w1 & 0xffffffff) + (HEAP << 32)) + (x2 << 2)), 0xf); // 0x41d444
      x1 = ((((mem((((w1 & 0xffffffff) + (HEAP << 32)) + (x2 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x41d44c
      x3 = ((mem((((w1 & 0xffffffff) + (HEAP << 32)) + (x2 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41d448
      if (x3 & (1 << 0) == 0) {
      } else {
        x1 = mem(x3, 7); // 0x41d454
      }
      x0 = x1; // 0x41d458
    }
    return;
  }
}

// GameFruitNotifier_betFruit
// raw disassembly:
//  0x41d59c: stp FP, LR, [SP, #-0x10]!
//  0x41d5a0: mov FP, SP
//  0x41d5a4: sub SP, SP, #0x40
//  0x41d5a8: stur x1, [FP, #-8]
//  0x41d5ac: stur x2, [FP, #-0x10]
//  0x41d5b0: stur x3, [FP, #-0x18]
//  0x41d5b4: ldr BARRIER, [THR, #0x38]
//  0x41d5b8: cmp SP, BARRIER
//  0x41d5bc: b.ls #0x41d724
//  0x41d5c0: mov x1, #2
//  0x41d5c4: bl #0x61e890
//  0x41d5c8: mov x3, x0
//  0x41d5cc: ldur x2, [FP, #-8]
//  0x41d5d0: stur x3, [FP, #-0x20]
//  0x41d5d4: stur w2, [x3, #0xf]
//  0x41d5d8: ldur x4, [FP, #-0x18]
//  0x41d5dc: sbfiz x0, x4, #1, #0x1f
//  0x41d5e0: cmp x4, x0, asr #1
//  0x41d5e4: b.eq #0x41d5f0
//  0x41d5e8: bl #0x61fba8
//  0x41d5ec: stur x4, [x0, #7]
//  0x41d5f0: stur w0, [x3, #0x13]
//  0x41d5f4: ldur w1, [x2, #0x53]
//  0x41d5f8: add x1, x1, HEAP, lsl #32
//  0x41d5fc: add BARRIER, PP, #0x15, lsl #12
//  0x41d600: ldr BARRIER, [BARRIER, #0x200]
//  0x41d604: cmp w1, w16
//  0x41d608: b.ne #0x41d614
//  0x41d60c: cmp x4, #0
//  0x41d610: b.gt #0x41d624
//  0x41d614: mov x0, NULL
//  0x41d618: mov SP, FP
//  0x41d61c: ldp FP, LR, [SP], #0x10
//  0x41d620: ret 
//  0x41d624: str x0, [SP]
//  0x41d628: bl #0x2ac0a0
//  0x41d62c: mov x1, NULL
//  0x41d630: mov x2, #2
//  0x41d634: stur x0, [FP, #-8]
//  0x41d638: bl #0x61f920
//  0x41d63c: mov x2, x0
//  0x41d640: ldur x0, [FP, #-8]
//  0x41d644: stur x2, [FP, #-0x28]
//  0x41d648: stur w0, [x2, #0xf]
//  0x41d64c: ldr x1, [PP, #0x868]
//  0x41d650: bl #0x61e854
//  0x41d654: mov x1, x0
//  0x41d658: ldur x0, [FP, #-0x28]
//  0x41d65c: stur w0, [x1, #0xf]
//  0x41d660: mov x0, #2
//  0x41d664: stur w0, [x1, #0xb]
//  0x41d668: str x1, [SP]
//  0x41d66c: add x1, PP, #0xc, lsl #12
//  0x41d670: ldr x1, [x1, #0x7a0]
//  0x41d674: add x4, PP, #0xf, lsl #12
//  0x41d678: ldr x4, [x4, #0xf20]
//  0x41d67c: bl #0x3a1dcc
//  0x41d680: add x1, PP, #0xc, lsl #12
//  0x41d684: ldr x1, [x1, #0xb20]
//  0x41d688: stur x0, [FP, #-8]
//  0x41d68c: ldr x4, [PP, #0x4c0]
//  0x41d690: bl #0x3a1dcc
//  0x41d694: stur x0, [FP, #-0x28]
//  0x41d698: bl #0x41e218
//  0x41d69c: mov x2, x0
//  0x41d6a0: ldur x0, [FP, #-0x28]
//  0x41d6a4: stur x2, [FP, #-0x30]
//  0x41d6a8: stur w0, [x2, #7]
//  0x41d6ac: add x1, PP, #0xc, lsl #12
//  0x41d6b0: ldr x1, [x1, #0xa68]
//  0x41d6b4: ldr x4, [PP, #0x4c0]
//  0x41d6b8: bl #0x3a1dcc
//  0x41d6bc: stur x0, [FP, #-0x28]
//  0x41d6c0: bl #0x41e218
//  0x41d6c4: mov x3, x0
//  0x41d6c8: ldur x0, [FP, #-0x28]
//  0x41d6cc: stur x3, [FP, #-0x38]
//  0x41d6d0: stur w0, [x3, #7]
//  0x41d6d4: ldur x2, [FP, #-0x20]
//  0x41d6d8: add x1, PP, #0x15, lsl #12
//  0x41d6dc: ldr x1, [x1, #0x278]
//  0x41d6e0: bl #0x61ec54
//  0x41d6e4: ldur x3, [FP, #-0x38]
//  0x41d6e8: stur w0, [x3, #0xb]
//  0x41d6ec: bl #0x41e20c
//  0x41d6f0: mov x1, x0
//  0x41d6f4: ldur x2, [FP, #-0x30]
//  0x41d6f8: ldur x3, [FP, #-0x38]
//  0x41d6fc: ldur x5, [FP, #-8]
//  0x41d700: stur x0, [FP, #-8]
//  0x41d704: bl #0x41d79c
//  0x41d708: ldur x1, [FP, #-8]
//  0x41d70c: ldur x2, [FP, #-0x10]
//  0x41d710: bl #0x41d72c
//  0x41d714: mov x0, NULL
//  0x41d718: mov SP, FP
//  0x41d71c: ldp FP, LR, [SP], #0x10
//  0x41d720: ret 
//  0x41d724: bl #0x61fa28
//  0x41d728: b #0x41d5c0
//
dynamic GameFruitNotifier_betFruit() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41d59c
  // frame: FP = SP // 0x41d5a0
  // frame: SP = SP - 0x40 // 0x41d5a4
  local_m8 = x1; // 0x41d5a8
  local_m10 = x2; // 0x41d5ac
  local_m18 = x3; // 0x41d5b0
  BARRIER = mem(THR, 0x38); // 0x41d5b4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41d724
  }
  x1 = 2; // 0x41d5c0
  sub_0x61e890(); // 0x41d5c4
  x2 = local_m8; // 0x41d5cc
  x3 = x0; // 0x41d5c8
  local_m20 = x3; // 0x41d5d0
  memSet(x3, 0xf, w2); // 0x41d5d4
  x0 = (((local_m18) & 0x7fffffff) << 1) /* signed */; // 0x41d5dc
  x4 = local_m18; // 0x41d5d8
  if (x4 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x41d5e8
    memSet(x0, 7, x4); // 0x41d5ec
  }
  memSet(x3, 0x13, w0); // 0x41d5f0
  BARRIER = mem((PP + 0x15000), 0x200) /* Obj!GameFruitProcessState@12161  */; // 0x41d600
  w1 = mem(x2, 0x53); // 0x41d5f4
  x1 = ((mem(x2, 0x53)) & 0xffffffff) + (HEAP << 32); // 0x41d5f8
  if (w1 != w16) {
  } else {
    if (x4 > 0) {
      local_0 = x0; // 0x41d624
      StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x41d628
      x1 = NULL; // 0x41d62c
      x2 = 2; // 0x41d630
      local_m8 = x0; // 0x41d634
      sub_0x61f920(); // 0x41d638
      x0 = local_m8; // 0x41d640
      x2 = x0; // 0x41d63c
      local_m28 = x2; // 0x41d644
      memSet(x2, 0xf, w0); // 0x41d648
      x1 = mem(PP, 0x868) /* TypeArguments */; // 0x41d64c
      AllocationStub__GrowableList() /* 0x61e854 */; // 0x41d650
      x0 = local_m28; // 0x41d658
      x1 = x0; // 0x41d654
      memSet(x1, 0xf, w0); // 0x41d65c
      x0 = 2; // 0x41d660
      memSet(x1, 0xb, w0); // 0x41d664
      local_0 = x1; // 0x41d668
      x1 = "virtual_party_fruitland_page_confirm_bet_popup_title" /* pp+0xc7a0 */; // 0x41d670
      x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x41d678
      getString() /* 0x3a1dcc */; // 0x41d67c
      x1 = "common_cancel_upper" /* pp+0xcb20 */; // 0x41d684
      local_m8 = x0; // 0x41d688
      x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x41d68c
      getString() /* 0x3a1dcc */; // 0x41d690
      local_m28 = x0; // 0x41d694
      AllocationStub_AlertAction() /* 0x41e218 */; // 0x41d698
      x0 = local_m28; // 0x41d6a0
      x2 = x0; // 0x41d69c
      local_m30 = x2; // 0x41d6a4
      memSet(x2, 7, w0); // 0x41d6a8
      x1 = "common_confirm" /* pp+0xca68 */; // 0x41d6b0
      x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x41d6b4
      getString() /* 0x3a1dcc */; // 0x41d6b8
      local_m28 = x0; // 0x41d6bc
      AllocationStub_AlertAction() /* 0x41e218 */; // 0x41d6c0
      x0 = local_m28; // 0x41d6c8
      x3 = x0; // 0x41d6c4
      local_m38 = x3; // 0x41d6cc
      memSet(x3, 7, w0); // 0x41d6d0
      x1 = mem((PP + 0x15000), 0x278) /* Function */; // 0x41d6dc
      x2 = local_m20; // 0x41d6d4
      AllocationStub__Closure() /* 0x61ec54 */; // 0x41d6e0
      x3 = local_m38; // 0x41d6e4
      memSet(x3, 0xb, w0); // 0x41d6e8
      AllocationStub_SOAlertDialog() /* 0x41e20c */; // 0x41d6ec
      x1 = x0; // 0x41d6f0
      x2 = local_m30; // 0x41d6f4
      x3 = local_m38; // 0x41d6f8
      x5 = local_m8; // 0x41d6fc
      local_m8 = x0; // 0x41d700
      SOAlertDialog_ctor() /* 0x41d79c */; // 0x41d704
      x1 = local_m8; // 0x41d708
      x2 = local_m10; // 0x41d70c
      SOAlertDialog_show() /* 0x41d72c */; // 0x41d710
      SP = FP; // 0x41d718
      x0 = NULL; // 0x41d714
      // frame: FP, LR, mem(SP), 0x10 // 0x41d71c
      return;
    }
  }
  SP = FP; // 0x41d618
  x0 = NULL; // 0x41d614
  // frame: FP, LR, mem(SP), 0x10 // 0x41d61c
  return;
}

// GameFruitNotifier_anon_closure
// raw disassembly:
//  0x41e224: stp FP, LR, [SP, #-0x10]!
//  0x41e228: mov FP, SP
//  0x41e22c: sub SP, SP, #0x20
//  0x41e230: ldr x0, [FP, #0x10]
//  0x41e234: ldur w1, [x0, #0x17]
//  0x41e238: add x1, x1, HEAP, lsl #32
//  0x41e23c: stur x1, [FP, #-8]
//  0x41e240: ldr BARRIER, [THR, #0x38]
//  0x41e244: cmp SP, BARRIER
//  0x41e248: b.ls #0x41e314
//  0x41e24c: mov x1, #1
//  0x41e250: bl #0x61e890
//  0x41e254: mov x3, x0
//  0x41e258: ldur x0, [FP, #-8]
//  0x41e25c: stur x3, [FP, #-0x10]
//  0x41e260: stur w0, [x3, #0xb]
//  0x41e264: ldur w1, [x0, #0xf]
//  0x41e268: add x1, x1, HEAP, lsl #32
//  0x41e26c: ldur x2, [x1, #0x43]
//  0x41e270: bl #0x41e6dc
//  0x41e274: mov x3, x0
//  0x41e278: stur x3, [FP, #-0x20]
//  0x41e27c: sbfiz x0, x3, #1, #0x1f
//  0x41e280: cmp x3, x0, asr #1
//  0x41e284: b.eq #0x41e290
//  0x41e288: bl #0x61fba8
//  0x41e28c: stur x3, [x0, #7]
//  0x41e290: ldur x2, [FP, #-0x10]
//  0x41e294: stur w0, [x2, #0xf]
//  0x41e298: tbz w0, #0, #0x41e2b4
//  0x41e29c: ldurb w16, [x2, #-1]
//  0x41e2a0: ldurb w17, [x0, #-1]
//  0x41e2a4: and BARRIER, x17, BARRIER, lsr #2
//  0x41e2a8: tst BARRIER, HEAP, lsr #32
//  0x41e2ac: b.eq #0x41e2b4
//  0x41e2b0: bl #0x61e06c
//  0x41e2b4: ldur x0, [FP, #-8]
//  0x41e2b8: ldur w1, [x0, #0x13]
//  0x41e2bc: add x1, x1, HEAP, lsl #32
//  0x41e2c0: sbfx x0, x1, #1, #0x1f
//  0x41e2c4: tbz w1, #0, #0x41e2cc
//  0x41e2c8: ldur x0, [x1, #7]
//  0x41e2cc: stur x0, [FP, #-0x18]
//  0x41e2d0: add x1, PP, #0x15, lsl #12
//  0x41e2d4: ldr x1, [x1, #0x280]
//  0x41e2d8: bl #0x61ec54
//  0x41e2dc: add x1, PP, #0x15, lsl #12
//  0x41e2e0: ldr x1, [x1, #0x288]
//  0x41e2e4: mov x2, NULL
//  0x41e2e8: stur x0, [FP, #-8]
//  0x41e2ec: bl #0x61ec54
//  0x41e2f0: ldur x1, [FP, #-0x20]
//  0x41e2f4: ldur x2, [FP, #-0x18]
//  0x41e2f8: ldur x3, [FP, #-8]
//  0x41e2fc: mov x5, x0
//  0x41e300: bl #0x41e31c
//  0x41e304: mov x0, NULL
//  0x41e308: mov SP, FP
//  0x41e30c: ldp FP, LR, [SP], #0x10
//  0x41e310: ret 
//  0x41e314: bl #0x61fa28
//  0x41e318: b #0x41e24c
//
dynamic GameFruitNotifier_anon_closure() {
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
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41e224
  // frame: FP = SP // 0x41e228
  // frame: SP = SP - 0x20 // 0x41e22c
  w1 = mem((local_10), 0x17); // 0x41e234
  x0 = local_10; // 0x41e230
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41e238
  local_m8 = x1; // 0x41e23c
  BARRIER = mem(THR, 0x38); // 0x41e240
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41e314
  }
  x1 = 1; // 0x41e24c
  sub_0x61e890(); // 0x41e250
  x0 = local_m8; // 0x41e258
  x3 = x0; // 0x41e254
  local_m10 = x3; // 0x41e25c
  memSet(x3, 0xb, w0); // 0x41e260
  w1 = mem(x0, 0xf); // 0x41e264
  x1 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41e268
  x2 = mem((((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x43); // 0x41e26c
  GameFruitNotifier_getLotteryIndex() /* 0x41e6dc */; // 0x41e270
  x3 = x0; // 0x41e274
  local_m20 = x3; // 0x41e278
  x0 = ((x3 & 0x7fffffff) << 1) /* signed */; // 0x41e27c
  if (x3 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x41e288
    memSet(x0, 7, x3); // 0x41e28c
  }
  x2 = local_m10; // 0x41e290
  memSet(x2, 0xf, w0); // 0x41e294
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x41e2a4
    w17 = mem(x0, -1); // 0x41e2a0
    x16 = w16 & 0xffffffff; // 0x41e29c
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x41e2a0
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x2() /* 0x61e06c */; // 0x41e2b0
    }
  }
  w1 = mem((local_m8), 0x13); // 0x41e2b8
  x0 = ((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x41e2c0
  x1 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x41e2bc
  if (x1 & (1 << 0) == 0) {
  } else {
    x0 = mem(x1, 7); // 0x41e2c8
  }
  local_m18 = x0; // 0x41e2cc
  x1 = mem((PP + 0x15000), 0x280) /* Function */; // 0x41e2d4
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41e2d8
  x1 = mem((PP + 0x15000), 0x288) /* Function */; // 0x41e2e0
  x2 = NULL; // 0x41e2e4
  local_m8 = x0; // 0x41e2e8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41e2ec
  x1 = local_m20; // 0x41e2f0
  x2 = local_m18; // 0x41e2f4
  x3 = local_m8; // 0x41e2f8
  x5 = x0; // 0x41e2fc
  GameApiService_betFruit() /* 0x41e31c */; // 0x41e300
  SP = FP; // 0x41e308
  x0 = NULL; // 0x41e304
  // frame: FP, LR, mem(SP), 0x10 // 0x41e30c
  return;
}

// GameFruitNotifier_getLotteryIndex
// raw disassembly:
//  0x41e6dc: tbnz x2, #0x3f, #0x41e6e8
//  0x41e6e0: cmp x2, #9
//  0x41e6e4: b.lt #0x41e6f0
//  0x41e6e8: mov x0, #-1
//  0x41e6ec: ret 
//  0x41e6f0: add x3, PP, #0x15, lsl #12
//  0x41e6f4: ldr x3, [x3, #0x210]
//  0x41e6f8: mov x1, x2
//  0x41e6fc: mov x0, #9
//  0x41e700: cmp x1, x0
//  0x41e704: b.hs #0x41e724
//  0x41e708: add BARRIER, x3, x2, lsl #2
//  0x41e70c: ldur w1, [BARRIER, #0xf]
//  0x41e710: add x1, x1, HEAP, lsl #32
//  0x41e714: sbfx x0, x1, #1, #0x1f
//  0x41e718: tbz w1, #0, #0x41e720
//  0x41e71c: ldur x0, [x1, #7]
//  0x41e720: ret 
//  0x41e724: stp FP, LR, [SP, #-0x10]!
//  0x41e728: mov FP, SP
//  0x41e72c: bl #0x61fe70
//
dynamic GameFruitNotifier_getLotteryIndex() {
  dynamic BARRIER;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x3;
  if (x2 & (1 << 0x3f) != 0) {
  } else {
    if (x2 >= 9) {
      // duplicated branch body (target 0x41e6e8 terminates; the same code is emitted below)
      x0 = -1; // 0x41e6e8
      return x0;
    }
    x0 = 9; // 0x41e6fc
    x1 = x2; // 0x41e6f8
    x3 = mem((PP + 0x15000), 0x210) /* ImmutableArray */; // 0x41e6f4
    if (x1 >= x0) {
      // frame: FP, LR, mem(SP, -0x10)! // 0x41e724
      // frame: FP = SP // 0x41e728
      RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x41e72c
    }
    BARRIER = x3 + (x2 << 2); // 0x41e708
    w1 = mem((x3 + (x2 << 2)), 0xf); // 0x41e70c
    x0 = ((((mem((x3 + (x2 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x41e714
    x1 = ((mem((x3 + (x2 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41e710
    if (x1 & (1 << 0) == 0) {
    } else {
      x0 = mem(x1, 7); // 0x41e71c
    }
    return;
  }
  x0 = -1; // 0x41e6e8
  return x0;
}

// GameFruitNotifier_anon_closure_2
// raw disassembly:
//  0x41e730: stp FP, LR, [SP, #-0x10]!
//  0x41e734: mov FP, SP
//  0x41e738: sub SP, SP, #0x10
//  0x41e73c: ldr BARRIER, [THR, #0x38]
//  0x41e740: cmp SP, BARRIER
//  0x41e744: b.ls #0x41e78c
//  0x41e748: ldr x0, [FP, #0x10]
//  0x41e74c: mov x1, #0x3c
//  0x41e750: tbz w0, #0, #0x41e75c
//  0x41e754: ldur x1, [x0, #-1]
//  0x41e758: ubfx x1, x1, #0xc, #0x14
//  0x41e75c: mov BARRIER, #0x55f2
//  0x41e760: stp BARRIER, x0, [SP]
//  0x41e764: mov x0, x1
//  0x41e768: mov LR, x0
//  0x41e76c: ldr LR, [x21, LR, lsl #3]
//  0x41e770: blr LR
//  0x41e774: tbnz w0, #4, #0x41e77c
//  0x41e778: bl #0x41c9dc
//  0x41e77c: mov x0, NULL
//  0x41e780: mov SP, FP
//  0x41e784: ldp FP, LR, [SP], #0x10
//  0x41e788: ret 
//  0x41e78c: bl #0x61fa28
//  0x41e790: b #0x41e748
//
dynamic GameFruitNotifier_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41e730
  BARRIER = mem(THR, 0x38); // 0x41e73c
  // frame: FP = SP // 0x41e734
  // frame: SP = SP - 0x10 // 0x41e738
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41e78c
  }
  x0 = local_10; // 0x41e748
  x1 = 60; // 0x41e74c
  if (x0 & (1 << 0) == 0) {
  } else {
    x1 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x41e758
  }
  BARRIER = 22002; // 0x41e75c
  // frame: BARRIER, x0, mem(SP) // 0x41e760
  LR = mem(x21, (LR << 3)); // 0x41e76c
  x0 = x1; // 0x41e764
  callIndirect(LR); // 0x41e770
  if (x0 & (1 << 4) != 0) {
  } else {
    NativeDialog_toCoinDialog() /* 0x41c9dc */; // 0x41e778
  }
  SP = FP; // 0x41e780
  x0 = NULL; // 0x41e77c
  // frame: FP, LR, mem(SP), 0x10 // 0x41e784
  return;
}

// GameFruitNotifier_anon_closure_3
// raw disassembly:
//  0x41e794: stp FP, LR, [SP, #-0x10]!
//  0x41e798: mov FP, SP
//  0x41e79c: sub SP, SP, #0x28
//  0x41e7a0: ldr x0, [FP, #0x10]
//  0x41e7a4: ldur w2, [x0, #0x17]
//  0x41e7a8: add x2, x2, HEAP, lsl #32
//  0x41e7ac: ldr BARRIER, [THR, #0x38]
//  0x41e7b0: cmp SP, BARRIER
//  0x41e7b4: b.ls #0x41e8ac
//  0x41e7b8: ldur w0, [x2, #0xb]
//  0x41e7bc: add x0, x0, HEAP, lsl #32
//  0x41e7c0: stur x0, [FP, #-0x10]
//  0x41e7c4: ldur w1, [x0, #0xf]
//  0x41e7c8: add x1, x1, HEAP, lsl #32
//  0x41e7cc: ldur w3, [x1, #0x2f]
//  0x41e7d0: add x3, x3, HEAP, lsl #32
//  0x41e7d4: tbnz w3, #4, #0x41e7e8
//  0x41e7d8: mov x0, NULL
//  0x41e7dc: mov SP, FP
//  0x41e7e0: ldp FP, LR, [SP], #0x10
//  0x41e7e4: ret 
//  0x41e7e8: ldur w3, [x1, #0x37]
//  0x41e7ec: add x3, x3, HEAP, lsl #32
//  0x41e7f0: stur x3, [FP, #-8]
//  0x41e7f4: add x1, PP, #0x15, lsl #12
//  0x41e7f8: ldr x1, [x1, #0x290]
//  0x41e7fc: bl #0x61ec54
//  0x41e800: add BARRIER, PP, #0xb, lsl #12
//  0x41e804: ldr BARRIER, [BARRIER, #0x858]
//  0x41e808: ldur LR, [FP, #-8]
//  0x41e80c: stp LR, BARRIER, [SP, #8]
//  0x41e810: str x0, [SP]
//  0x41e814: ldr x4, [PP, #0x58]
//  0x41e818: bl #0x41eaac
//  0x41e81c: mov x1, x0
//  0x41e820: cmp w1, w22
//  0x41e824: b.ne #0x41e830
//  0x41e828: ldur x2, [FP, #-0x10]
//  0x41e82c: b #0x41e85c
//  0x41e830: ldur x2, [FP, #-0x10]
//  0x41e834: ldur w0, [x2, #0x13]
//  0x41e838: add x0, x0, HEAP, lsl #32
//  0x41e83c: stur w0, [x1, #0xb]
//  0x41e840: tbz w0, #0, #0x41e85c
//  0x41e844: ldurb w16, [x1, #-1]
//  0x41e848: ldurb w17, [x0, #-1]
//  0x41e84c: and BARRIER, x17, BARRIER, lsr #2
//  0x41e850: tst BARRIER, HEAP, lsr #32
//  0x41e854: b.eq #0x41e85c
//  0x41e858: bl #0x61e04c
//  0x41e85c: ldur w1, [x2, #0xf]
//  0x41e860: add x1, x1, HEAP, lsl #32
//  0x41e864: bl #0x3ac980
//  0x41e868: ldur x0, [FP, #-0x10]
//  0x41e86c: ldur w1, [x0, #0xf]
//  0x41e870: add x1, x1, HEAP, lsl #32
//  0x41e874: bl #0x41e8b4
//  0x41e878: add x1, PP, #0xc, lsl #12
//  0x41e87c: ldr x1, [x1, #0x790]
//  0x41e880: ldr x4, [PP, #0x4c0]
//  0x41e884: bl #0x3a1dcc
//  0x41e888: add BARRIER, NULL, #0x20
//  0x41e88c: str BARRIER, [SP]
//  0x41e890: mov x1, x0
//  0x41e894: ldr x4, [PP, #0x4d0]
//  0x41e898: bl #0x3ac64c
//  0x41e89c: mov x0, NULL
//  0x41e8a0: mov SP, FP
//  0x41e8a4: ldp FP, LR, [SP], #0x10
//  0x41e8a8: ret 
//  0x41e8ac: bl #0x61fa28
//  0x41e8b0: b #0x41e7b8
//
dynamic GameFruitNotifier_anon_closure_3() {
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
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41e794
  BARRIER = mem(THR, 0x38); // 0x41e7ac
  // frame: FP = SP // 0x41e798
  // frame: SP = SP - 0x28 // 0x41e79c
  w2 = mem((local_10), 0x17); // 0x41e7a4
  x0 = local_10; // 0x41e7a0
  x2 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41e7a8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41e8ac
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x41e7bc
  local_m10 = x0; // 0x41e7c0
  w1 = mem(x0, 0xf); // 0x41e7c4
  w3 = mem((((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2f); // 0x41e7cc
  x1 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41e7c8
  x3 = ((mem((((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x2f)) & 0xffffffff) + (HEAP << 32); // 0x41e7d0
  if (x3 & (1 << 4) == 0) {
    SP = FP; // 0x41e7dc
    x0 = NULL; // 0x41e7d8
    // frame: FP, LR, mem(SP), 0x10 // 0x41e7e0
    return;
  }
  x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x41e7ec
  local_m8 = x3; // 0x41e7f0
  x1 = mem((PP + 0x15000), 0x290) /* Function */; // 0x41e7f8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41e7fc
  BARRIER = mem((PP + 0xb000), 0x858) /* TypeArguments */; // 0x41e804
  LR = local_m8; // 0x41e808
  // frame: LR, BARRIER, mem(SP, 8) // 0x41e80c
  local_0 = x0; // 0x41e810
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x41e814
  IterableExtension_firstWhereOrNull() /* 0x41eaac */; // 0x41e818
  x1 = x0; // 0x41e81c
  if (w1 != w22) {
    w0 = mem((local_m10), 0x13); // 0x41e834
    x0 = ((mem((local_m10), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x41e838
    x2 = local_m10; // 0x41e830
    memSet(x1, 0xb, w0); // 0x41e83c
    if (x0 & (1 << 0) == 0) {
    } else {
      BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x41e84c
      w17 = mem(x0, -1); // 0x41e848
      x16 = w16 & 0xffffffff; // 0x41e844
      x17 = (mem(x0, -1)) & 0xffffffff; // 0x41e848
      if ((BARRIER & (HEAP >> 32)) == 0) {
      } else {
        WriteBarrierStub_x1() /* 0x61e04c */; // 0x41e858
      }
    }
  } else {
    x2 = local_m10; // 0x41e828
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x41e860
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x41e864
  w1 = mem((local_m10), 0xf); // 0x41e86c
  x0 = local_m10; // 0x41e868
  x1 = ((mem((local_m10), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41e870
  SafeChangeNotifier_requestTotalCoins() /* 0x41e8b4 */; // 0x41e874
  x1 = "virtual_party_fruitland_page_bet_succceed_toast" /* pp+0xc790 */; // 0x41e87c
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x41e880
  getString() /* 0x3a1dcc */; // 0x41e884
  BARRIER = NULL + 0x20; // 0x41e888
  local_0 = BARRIER; // 0x41e88c
  x1 = x0; // 0x41e890
  x4 = mem(PP, 0x4d0) /* ImmutableArray */; // 0x41e894
  NativeDialog_toast() /* 0x3ac64c */; // 0x41e898
  SP = FP; // 0x41e8a0
  x0 = NULL; // 0x41e89c
  // frame: FP, LR, mem(SP), 0x10 // 0x41e8a4
  return;
}

// GameFruitNotifier_anon_closure_4
// raw disassembly:
//  0x41ebec: ldr x1, [SP, #8]
//  0x41ebf0: ldur w2, [x1, #0x17]
//  0x41ebf4: add x2, x2, HEAP, lsl #32
//  0x41ebf8: ldr x1, [SP]
//  0x41ebfc: ldur w3, [x1, #7]
//  0x41ec00: add x3, x3, HEAP, lsl #32
//  0x41ec04: ldur w1, [x2, #0xf]
//  0x41ec08: add x1, x1, HEAP, lsl #32
//  0x41ec0c: cmp w3, w1
//  0x41ec10: b.eq #0x41ec54
//  0x41ec14: and w16, w3, w1
//  0x41ec18: tbz w16, #0, #0x41ec4c
//  0x41ec1c: ldur BARRIER, [x3, #-1]
//  0x41ec20: ubfx BARRIER, BARRIER, #0xc, #0x14
//  0x41ec24: cmp BARRIER, #0x3d
//  0x41ec28: b.ne #0x41ec4c
//  0x41ec2c: ldur BARRIER, [x1, #-1]
//  0x41ec30: ubfx BARRIER, BARRIER, #0xc, #0x14
//  0x41ec34: cmp BARRIER, #0x3d
//  0x41ec38: b.ne #0x41ec4c
//  0x41ec3c: ldur BARRIER, [x3, #7]
//  0x41ec40: ldur x17, [x1, #7]
//  0x41ec44: cmp BARRIER, x17
//  0x41ec48: b.eq #0x41ec54
//  0x41ec4c: add x0, NULL, #0x30
//  0x41ec50: b #0x41ec58
//  0x41ec54: add x0, NULL, #0x20
//  0x41ec58: ret 
//
dynamic GameFruitNotifier_anon_closure_4() {
  dynamic BARRIER;
  dynamic w1;
  dynamic w16;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  w1 = mem((((mem((local_8), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf); // 0x41ec04
  w2 = mem((local_8), 0x17); // 0x41ebf0
  w3 = mem((local_0), 7); // 0x41ebfc
  x1 = (mem((((mem((local_8), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff; // 0x41ec04
  x2 = ((mem((local_8), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41ebf4
  x3 = ((mem((local_0), 7)) & 0xffffffff) + (HEAP << 32); // 0x41ec00
  x1 = x1 + (HEAP << 32); // 0x41ec08
  if (w3 == w1) {
    x0 = NULL + 0x20; // 0x41ec54
  } else {
    x16 = w16 & 0xffffffff; // 0x41ec14
    if (x16 & (1 << 0) == 0) {
    } else {
      BARRIER = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x41ec20
      if (BARRIER != 0x3d) {
      } else {
        BARRIER = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x41ec30
        if (BARRIER != 0x3d) {
        } else {
          BARRIER = mem(x3, 7); // 0x41ec3c
          x17 = mem(x1, 7); // 0x41ec40
          if (BARRIER == x17) {
            // duplicated branch body (shared block 0x41ec54, joins at 0x41ec58; the same code was emitted above)
            x0 = NULL + 0x20; // 0x41ec54
          } else {
            x0 = NULL + 0x30; // 0x41ec4c
          }
          return;
        }
      }
    }
  }
}

// GameFruitNotifier_getItemBetCoin
// raw disassembly:
//  0x41f974: stp FP, LR, [SP, #-0x10]!
//  0x41f978: mov FP, SP
//  0x41f97c: sub SP, SP, #0x30
//  0x41f980: stur x1, [FP, #-8]
//  0x41f984: stur x2, [FP, #-0x10]
//  0x41f988: ldr BARRIER, [THR, #0x38]
//  0x41f98c: cmp SP, BARRIER
//  0x41f990: b.ls #0x41fa08
//  0x41f994: mov x1, #2
//  0x41f998: bl #0x61e890
//  0x41f99c: mov x3, x0
//  0x41f9a0: ldur x2, [FP, #-8]
//  0x41f9a4: stur w2, [x3, #0xf]
//  0x41f9a8: ldur x4, [FP, #-0x10]
//  0x41f9ac: sbfiz x0, x4, #1, #0x1f
//  0x41f9b0: cmp x4, x0, asr #1
//  0x41f9b4: b.eq #0x41f9c0
//  0x41f9b8: bl #0x61fba8
//  0x41f9bc: stur x4, [x0, #7]
//  0x41f9c0: stur w0, [x3, #0x13]
//  0x41f9c4: ldur w0, [x2, #0x37]
//  0x41f9c8: add x0, x0, HEAP, lsl #32
//  0x41f9cc: mov x2, x3
//  0x41f9d0: stur x0, [FP, #-0x18]
//  0x41f9d4: add x1, PP, #0x15, lsl #12
//  0x41f9d8: ldr x1, [x1, #0x208]
//  0x41f9dc: bl #0x61ec54
//  0x41f9e0: add BARRIER, PP, #0xb, lsl #12
//  0x41f9e4: ldr BARRIER, [BARRIER, #0x858]
//  0x41f9e8: ldur LR, [FP, #-0x18]
//  0x41f9ec: stp LR, BARRIER, [SP, #8]
//  0x41f9f0: str x0, [SP]
//  0x41f9f4: ldr x4, [PP, #0x58]
//  0x41f9f8: bl #0x41eaac
//  0x41f9fc: mov SP, FP
//  0x41fa00: ldp FP, LR, [SP], #0x10
//  0x41fa04: ret 
//  0x41fa08: bl #0x61fa28
//  0x41fa0c: b #0x41f994
//
dynamic GameFruitNotifier_getItemBetCoin() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41f974
  // frame: FP = SP // 0x41f978
  // frame: SP = SP - 0x30 // 0x41f97c
  local_m8 = x1; // 0x41f980
  local_m10 = x2; // 0x41f984
  BARRIER = mem(THR, 0x38); // 0x41f988
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41fa08
  }
  x1 = 2; // 0x41f994
  sub_0x61e890(); // 0x41f998
  x2 = local_m8; // 0x41f9a0
  x3 = x0; // 0x41f99c
  memSet(x3, 0xf, w2); // 0x41f9a4
  x0 = (((local_m10) & 0x7fffffff) << 1) /* signed */; // 0x41f9ac
  x4 = local_m10; // 0x41f9a8
  if (x4 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x41f9b8
    memSet(x0, 7, x4); // 0x41f9bc
  }
  memSet(x3, 0x13, w0); // 0x41f9c0
  w0 = mem(x2, 0x37); // 0x41f9c4
  x0 = ((mem(x2, 0x37)) & 0xffffffff) + (HEAP << 32); // 0x41f9c8
  x2 = x3; // 0x41f9cc
  local_m18 = x0; // 0x41f9d0
  x1 = mem((PP + 0x15000), 0x208) /* Function */; // 0x41f9d8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41f9dc
  BARRIER = mem((PP + 0xb000), 0x858) /* TypeArguments */; // 0x41f9e4
  LR = local_m18; // 0x41f9e8
  // frame: LR, BARRIER, mem(SP, 8) // 0x41f9ec
  local_0 = x0; // 0x41f9f0
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x41f9f4
  IterableExtension_firstWhereOrNull() /* 0x41eaac */; // 0x41f9f8
  SP = FP; // 0x41f9fc
  // frame: FP, LR, mem(SP), 0x10 // 0x41fa00
  return;
}

// GameFruitNotifier_anon_closure_5
// raw disassembly:
//  0x41fa10: stp FP, LR, [SP, #-0x10]!
//  0x41fa14: mov FP, SP
//  0x41fa18: sub SP, SP, #8
//  0x41fa1c: ldr x0, [FP, #0x18]
//  0x41fa20: ldur w1, [x0, #0x17]
//  0x41fa24: add x1, x1, HEAP, lsl #32
//  0x41fa28: ldr BARRIER, [THR, #0x38]
//  0x41fa2c: cmp SP, BARRIER
//  0x41fa30: b.ls #0x41fae4
//  0x41fa34: ldr x0, [FP, #0x10]
//  0x41fa38: ldur w3, [x0, #7]
//  0x41fa3c: add x3, x3, HEAP, lsl #32
//  0x41fa40: stur x3, [FP, #-8]
//  0x41fa44: ldur w0, [x1, #0xf]
//  0x41fa48: add x0, x0, HEAP, lsl #32
//  0x41fa4c: ldur w2, [x1, #0x13]
//  0x41fa50: add x2, x2, HEAP, lsl #32
//  0x41fa54: sbfx x1, x2, #1, #0x1f
//  0x41fa58: tbz w2, #0, #0x41fa60
//  0x41fa5c: ldur x1, [x2, #7]
//  0x41fa60: mov x2, x1
//  0x41fa64: mov x1, x0
//  0x41fa68: bl #0x41e6dc
//  0x41fa6c: mov x2, x0
//  0x41fa70: sbfiz x0, x2, #1, #0x1f
//  0x41fa74: cmp x2, x0, asr #1
//  0x41fa78: b.eq #0x41fa84
//  0x41fa7c: bl #0x61fba8
//  0x41fa80: stur x2, [x0, #7]
//  0x41fa84: ldur x1, [FP, #-8]
//  0x41fa88: cmp w1, w0
//  0x41fa8c: b.eq #0x41fad0
//  0x41fa90: and w16, w1, w0
//  0x41fa94: tbz w16, #0, #0x41fac8
//  0x41fa98: ldur BARRIER, [x1, #-1]
//  0x41fa9c: ubfx BARRIER, BARRIER, #0xc, #0x14
//  0x41faa0: cmp BARRIER, #0x3d
//  0x41faa4: b.ne #0x41fac8
//  0x41faa8: ldur BARRIER, [x0, #-1]
//  0x41faac: ubfx BARRIER, BARRIER, #0xc, #0x14
//  0x41fab0: cmp BARRIER, #0x3d
//  0x41fab4: b.ne #0x41fac8
//  0x41fab8: ldur BARRIER, [x1, #7]
//  0x41fabc: ldur x17, [x0, #7]
//  0x41fac0: cmp BARRIER, x17
//  0x41fac4: b.eq #0x41fad0
//  0x41fac8: add x2, NULL, #0x30
//  0x41facc: b #0x41fad4
//  0x41fad0: add x2, NULL, #0x20
//  0x41fad4: mov x0, x2
//  0x41fad8: mov SP, FP
//  0x41fadc: ldp FP, LR, [SP], #0x10
//  0x41fae0: ret 
//  0x41fae4: bl #0x61fa28
//  0x41fae8: b #0x41fa34
//
dynamic GameFruitNotifier_anon_closure_5() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w16;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41fa10
  BARRIER = mem(THR, 0x38); // 0x41fa28
  // frame: FP = SP // 0x41fa14
  // frame: SP = SP - 8 // 0x41fa18
  w1 = mem((local_18), 0x17); // 0x41fa20
  x0 = local_18; // 0x41fa1c
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41fa24
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41fae4
  }
  w3 = mem((local_10), 7); // 0x41fa38
  x0 = local_10; // 0x41fa34
  x3 = ((mem((local_10), 7)) & 0xffffffff) + (HEAP << 32); // 0x41fa3c
  local_m8 = x3; // 0x41fa40
  w0 = mem(x1, 0xf); // 0x41fa44
  w2 = mem(x1, 0x13); // 0x41fa4c
  x0 = ((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41fa48
  x1 = ((((mem(x1, 0x13)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x41fa54
  x2 = ((mem(x1, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x41fa50
  if (x2 & (1 << 0) == 0) {
  } else {
    x1 = mem(x2, 7); // 0x41fa5c
  }
  x1 = x0; // 0x41fa64
  x2 = x1; // 0x41fa60
  GameFruitNotifier_getLotteryIndex() /* 0x41e6dc */; // 0x41fa68
  x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x41fa70
  x2 = x0; // 0x41fa6c
  if (x2 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x41fa7c
    memSet(x0, 7, x2); // 0x41fa80
  }
  x1 = local_m8; // 0x41fa84
  if (w1 == w0) {
    x2 = NULL + 0x20; // 0x41fad0
  } else {
    x16 = w16 & 0xffffffff; // 0x41fa90
    if (x16 & (1 << 0) == 0) {
    } else {
      BARRIER = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x41fa9c
      if (BARRIER != 0x3d) {
      } else {
        BARRIER = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x41faac
        if (BARRIER != 0x3d) {
        } else {
          BARRIER = mem(x1, 7); // 0x41fab8
          x17 = mem(x0, 7); // 0x41fabc
          if (BARRIER == x17) {
            // duplicated branch body (shared block 0x41fad0, joins at 0x41fad4; the same code was emitted above)
            x2 = NULL + 0x20; // 0x41fad0
          } else {
            x2 = NULL + 0x30; // 0x41fac8
          }
          SP = FP; // 0x41fad8
          x0 = x2; // 0x41fad4
          // frame: FP, LR, mem(SP), 0x10 // 0x41fadc
          return;
        }
      }
    }
  }
}

// GameFruitNotifier_getCurrentBetItem
// raw disassembly:
//  0x41faec: stp FP, LR, [SP, #-0x10]!
//  0x41faf0: mov FP, SP
//  0x41faf4: sub SP, SP, #0x30
//  0x41faf8: stur x1, [FP, #-8]
//  0x41fafc: stur x2, [FP, #-0x10]
//  0x41fb00: ldr BARRIER, [THR, #0x38]
//  0x41fb04: cmp SP, BARRIER
//  0x41fb08: b.ls #0x41fb80
//  0x41fb0c: mov x1, #2
//  0x41fb10: bl #0x61e890
//  0x41fb14: mov x3, x0
//  0x41fb18: ldur x2, [FP, #-8]
//  0x41fb1c: stur w2, [x3, #0xf]
//  0x41fb20: ldur x4, [FP, #-0x10]
//  0x41fb24: sbfiz x0, x4, #1, #0x1f
//  0x41fb28: cmp x4, x0, asr #1
//  0x41fb2c: b.eq #0x41fb38
//  0x41fb30: bl #0x61fba8
//  0x41fb34: stur x4, [x0, #7]
//  0x41fb38: stur w0, [x3, #0x13]
//  0x41fb3c: ldur w0, [x2, #0x33]
//  0x41fb40: add x0, x0, HEAP, lsl #32
//  0x41fb44: mov x2, x3
//  0x41fb48: stur x0, [FP, #-0x18]
//  0x41fb4c: add x1, PP, #0x15, lsl #12
//  0x41fb50: ldr x1, [x1, #0x218]
//  0x41fb54: bl #0x61ec54
//  0x41fb58: add BARRIER, PP, #0xb, lsl #12
//  0x41fb5c: ldr BARRIER, [BARRIER, #0x850]
//  0x41fb60: ldur LR, [FP, #-0x18]
//  0x41fb64: stp LR, BARRIER, [SP, #8]
//  0x41fb68: str x0, [SP]
//  0x41fb6c: ldr x4, [PP, #0x58]
//  0x41fb70: bl #0x41eaac
//  0x41fb74: mov SP, FP
//  0x41fb78: ldp FP, LR, [SP], #0x10
//  0x41fb7c: ret 
//  0x41fb80: bl #0x61fa28
//  0x41fb84: b #0x41fb0c
//
dynamic GameFruitNotifier_getCurrentBetItem() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41faec
  // frame: FP = SP // 0x41faf0
  // frame: SP = SP - 0x30 // 0x41faf4
  local_m8 = x1; // 0x41faf8
  local_m10 = x2; // 0x41fafc
  BARRIER = mem(THR, 0x38); // 0x41fb00
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41fb80
  }
  x1 = 2; // 0x41fb0c
  sub_0x61e890(); // 0x41fb10
  x2 = local_m8; // 0x41fb18
  x3 = x0; // 0x41fb14
  memSet(x3, 0xf, w2); // 0x41fb1c
  x0 = (((local_m10) & 0x7fffffff) << 1) /* signed */; // 0x41fb24
  x4 = local_m10; // 0x41fb20
  if (x4 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x41fb30
    memSet(x0, 7, x4); // 0x41fb34
  }
  memSet(x3, 0x13, w0); // 0x41fb38
  w0 = mem(x2, 0x33); // 0x41fb3c
  x0 = ((mem(x2, 0x33)) & 0xffffffff) + (HEAP << 32); // 0x41fb40
  x2 = x3; // 0x41fb44
  local_m18 = x0; // 0x41fb48
  x1 = mem((PP + 0x15000), 0x218) /* Function */; // 0x41fb50
  AllocationStub__Closure() /* 0x61ec54 */; // 0x41fb54
  BARRIER = mem((PP + 0xb000), 0x850) /* TypeArguments */; // 0x41fb5c
  LR = local_m18; // 0x41fb60
  // frame: LR, BARRIER, mem(SP, 8) // 0x41fb64
  local_0 = x0; // 0x41fb68
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x41fb6c
  IterableExtension_firstWhereOrNull() /* 0x41eaac */; // 0x41fb70
  SP = FP; // 0x41fb74
  // frame: FP, LR, mem(SP), 0x10 // 0x41fb78
  return;
}

// GameFruitNotifier_anon_closure_6
// raw disassembly:
//  0x41fb88: stp FP, LR, [SP, #-0x10]!
//  0x41fb8c: mov FP, SP
//  0x41fb90: sub SP, SP, #8
//  0x41fb94: ldr x0, [FP, #0x18]
//  0x41fb98: ldur w1, [x0, #0x17]
//  0x41fb9c: add x1, x1, HEAP, lsl #32
//  0x41fba0: ldr BARRIER, [THR, #0x38]
//  0x41fba4: cmp SP, BARRIER
//  0x41fba8: b.ls #0x41fc20
//  0x41fbac: ldr x0, [FP, #0x10]
//  0x41fbb0: ldur w3, [x0, #0xb]
//  0x41fbb4: add x3, x3, HEAP, lsl #32
//  0x41fbb8: ldr BARRIER, [PP, #0x40]
//  0x41fbbc: cmp w3, w16
//  0x41fbc0: b.eq #0x41fc28
//  0x41fbc4: stur x3, [FP, #-8]
//  0x41fbc8: ldur w0, [x1, #0xf]
//  0x41fbcc: add x0, x0, HEAP, lsl #32
//  0x41fbd0: ldur w2, [x1, #0x13]
//  0x41fbd4: add x2, x2, HEAP, lsl #32
//  0x41fbd8: sbfx x1, x2, #1, #0x1f
//  0x41fbdc: tbz w2, #0, #0x41fbe4
//  0x41fbe0: ldur x1, [x2, #7]
//  0x41fbe4: mov x2, x1
//  0x41fbe8: mov x1, x0
//  0x41fbec: bl #0x41e6dc
//  0x41fbf0: ldur x1, [FP, #-8]
//  0x41fbf4: sbfx x2, x1, #1, #0x1f
//  0x41fbf8: tbz w1, #0, #0x41fc00
//  0x41fbfc: ldur x2, [x1, #7]
//  0x41fc00: cmp x2, x0
//  0x41fc04: add BARRIER, NULL, #0x20
//  0x41fc08: add x17, NULL, #0x30
//  0x41fc0c: csel x1, BARRIER, x17, eq
//  0x41fc10: mov x0, x1
//  0x41fc14: mov SP, FP
//  0x41fc18: ldp FP, LR, [SP], #0x10
//  0x41fc1c: ret 
//  0x41fc20: bl #0x61fa28
//  0x41fc24: b #0x41fbac
//  0x41fc28: add x9, PP, #0x15, lsl #12
//  0x41fc2c: ldr x9, [x9, #0x220]
//  0x41fc30: bl #0x620258
//
dynamic GameFruitNotifier_anon_closure_6() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41fb88
  BARRIER = mem(THR, 0x38); // 0x41fba0
  // frame: FP = SP // 0x41fb8c
  // frame: SP = SP - 8 // 0x41fb90
  w1 = mem((local_18), 0x17); // 0x41fb98
  x0 = local_18; // 0x41fb94
  x1 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x41fb9c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41fc20
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x41fbb8
  w3 = mem((local_10), 0xb); // 0x41fbb0
  x0 = local_10; // 0x41fbac
  x3 = ((mem((local_10), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x41fbb4
  if (w3 == w16) {
    x9 = mem((PP + 0x15000), 0x220) /* Field */; // 0x41fc2c
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x41fc30
  }
  local_m8 = x3; // 0x41fbc4
  w0 = mem(x1, 0xf); // 0x41fbc8
  w2 = mem(x1, 0x13); // 0x41fbd0
  x0 = ((mem(x1, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x41fbcc
  x1 = ((((mem(x1, 0x13)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x41fbd8
  x2 = ((mem(x1, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x41fbd4
  if (x2 & (1 << 0) == 0) {
  } else {
    x1 = mem(x2, 7); // 0x41fbe0
  }
  x1 = x0; // 0x41fbe8
  x2 = x1; // 0x41fbe4
  GameFruitNotifier_getLotteryIndex() /* 0x41e6dc */; // 0x41fbec
  x1 = local_m8; // 0x41fbf0
  x2 = ((local_m8) >> 1) & 0x7fffffff; // 0x41fbf4
  if (x1 & (1 << 0) == 0) {
  } else {
    x2 = mem(x1, 7); // 0x41fbfc
  }
  BARRIER = NULL + 0x20; // 0x41fc04
  SP = FP; // 0x41fc14
  x0 = (x2 == x0) ? (NULL + 0x20) : (NULL + 0x30); // 0x41fc10
  x1 = (x2 == x0) ? (NULL + 0x20) : (NULL + 0x30); // 0x41fc0c
  x17 = NULL + 0x30; // 0x41fc08
  // frame: FP, LR, mem(SP), 0x10 // 0x41fc18
  return;
}

// GameFruitNotifier_updateSelectedIndex
// raw disassembly:
//  0x41fcb0: stp FP, LR, [SP, #-0x10]!
//  0x41fcb4: mov FP, SP
//  0x41fcb8: ldr BARRIER, [THR, #0x38]
//  0x41fcbc: cmp SP, BARRIER
//  0x41fcc0: b.ls #0x41fd04
//  0x41fcc4: ldur w0, [x1, #0x53]
//  0x41fcc8: add x0, x0, HEAP, lsl #32
//  0x41fccc: add BARRIER, PP, #0x15, lsl #12
//  0x41fcd0: ldr BARRIER, [BARRIER, #0x200]
//  0x41fcd4: cmp w0, w16
//  0x41fcd8: b.eq #0x41fcec
//  0x41fcdc: mov x0, NULL
//  0x41fce0: mov SP, FP
//  0x41fce4: ldp FP, LR, [SP], #0x10
//  0x41fce8: ret 
//  0x41fcec: stur x2, [x1, #0x43]
//  0x41fcf0: bl #0x3ac980
//  0x41fcf4: mov x0, NULL
//  0x41fcf8: mov SP, FP
//  0x41fcfc: ldp FP, LR, [SP], #0x10
//  0x41fd00: ret 
//  0x41fd04: bl #0x61fa28
//  0x41fd08: b #0x41fcc4
//
dynamic GameFruitNotifier_updateSelectedIndex() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  // frame: FP, LR, mem(SP, -0x10)! // 0x41fcb0
  BARRIER = mem(THR, 0x38); // 0x41fcb8
  // frame: FP = SP // 0x41fcb4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x41fd04
  }
  BARRIER = mem((PP + 0x15000), 0x200) /* Obj!GameFruitProcessState@12161  */; // 0x41fcd0
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x41fcc8
  if (w0 == w16) {
    memSet(x1, 0x43, x2); // 0x41fcec
    SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x41fcf0
    SP = FP; // 0x41fcf8
    x0 = NULL; // 0x41fcf4
    // frame: FP, LR, mem(SP), 0x10 // 0x41fcfc
    return;
  }
  SP = FP; // 0x41fce0
  x0 = NULL; // 0x41fcdc
  // frame: FP, LR, mem(SP), 0x10 // 0x41fce4
  return;
}

// GameFruitNotifier_ctor
// raw disassembly:
//  0x4c2d7c: stp FP, LR, [SP, #-0x10]!
//  0x4c2d80: mov FP, SP
//  0x4c2d84: sub SP, SP, #0x20
//  0x4c2d88: add x3, NULL, #0x30
//  0x4c2d8c: add x2, PP, #0xb, lsl #12
//  0x4c2d90: ldr x2, [x2, #0x840]
//  0x4c2d94: ldr x0, [PP, #0x148]
//  0x4c2d98: mov x4, x1
//  0x4c2d9c: stur x1, [FP, #-8]
//  0x4c2da0: ldr BARRIER, [THR, #0x38]
//  0x4c2da4: cmp SP, BARRIER
//  0x4c2da8: b.ls #0x4c2f8c
//  0x4c2dac: stur w3, [x4, #0x2f]
//  0x4c2db0: stur xzr, [x4, #0x43]
//  0x4c2db4: stur xzr, [x4, #0x4b]
//  0x4c2db8: stur w2, [x4, #0x53]
//  0x4c2dbc: stur w0, [x4, #0x5f]
//  0x4c2dc0: ldr x1, [PP, #0x5558]
//  0x4c2dc4: bl #0x303988
//  0x4c2dc8: mov x1, x0
//  0x4c2dcc: add x0, PP, #0xb, lsl #12
//  0x4c2dd0: ldr x0, [x0, #0x848]
//  0x4c2dd4: stur w0, [x1, #0xb]
//  0x4c2dd8: mov x0, x1
//  0x4c2ddc: ldur x3, [FP, #-8]
//  0x4c2de0: stur w0, [x3, #0x2b]
//  0x4c2de4: ldurb w16, [x3, #-1]
//  0x4c2de8: ldurb w17, [x0, #-1]
//  0x4c2dec: and BARRIER, x17, BARRIER, lsr #2
//  0x4c2df0: tst BARRIER, HEAP, lsr #32
//  0x4c2df4: b.eq #0x4c2dfc
//  0x4c2df8: bl #0x61e08c
//  0x4c2dfc: add x1, PP, #0xb, lsl #12
//  0x4c2e00: ldr x1, [x1, #0x850]
//  0x4c2e04: mov x2, #0
//  0x4c2e08: bl #0x277268
//  0x4c2e0c: ldur x3, [FP, #-8]
//  0x4c2e10: stur w0, [x3, #0x33]
//  0x4c2e14: ldurb w16, [x3, #-1]
//  0x4c2e18: ldurb w17, [x0, #-1]
//  0x4c2e1c: and BARRIER, x17, BARRIER, lsr #2
//  0x4c2e20: tst BARRIER, HEAP, lsr #32
//  0x4c2e24: b.eq #0x4c2e2c
//  0x4c2e28: bl #0x61e08c
//  0x4c2e2c: add x1, PP, #0xb, lsl #12
//  0x4c2e30: ldr x1, [x1, #0x858]
//  0x4c2e34: mov x2, #0
//  0x4c2e38: bl #0x277268
//  0x4c2e3c: ldur x3, [FP, #-8]
//  0x4c2e40: stur w0, [x3, #0x37]
//  0x4c2e44: ldurb w16, [x3, #-1]
//  0x4c2e48: ldurb w17, [x0, #-1]
//  0x4c2e4c: and BARRIER, x17, BARRIER, lsr #2
//  0x4c2e50: tst BARRIER, HEAP, lsr #32
//  0x4c2e54: b.eq #0x4c2e5c
//  0x4c2e58: bl #0x61e08c
//  0x4c2e5c: ldr x1, [PP, #0x908]
//  0x4c2e60: mov x2, #0
//  0x4c2e64: bl #0x277268
//  0x4c2e68: ldur x3, [FP, #-8]
//  0x4c2e6c: stur w0, [x3, #0x3b]
//  0x4c2e70: ldurb w16, [x3, #-1]
//  0x4c2e74: ldurb w17, [x0, #-1]
//  0x4c2e78: and BARRIER, x17, BARRIER, lsr #2
//  0x4c2e7c: tst BARRIER, HEAP, lsr #32
//  0x4c2e80: b.eq #0x4c2e88
//  0x4c2e84: bl #0x61e08c
//  0x4c2e88: add x1, PP, #0xb, lsl #12
//  0x4c2e8c: ldr x1, [x1, #0x850]
//  0x4c2e90: mov x2, #0
//  0x4c2e94: bl #0x277268
//  0x4c2e98: ldur x1, [FP, #-8]
//  0x4c2e9c: stur w0, [x1, #0x3f]
//  0x4c2ea0: ldurb w16, [x1, #-1]
//  0x4c2ea4: ldurb w17, [x0, #-1]
//  0x4c2ea8: and BARRIER, x17, BARRIER, lsr #2
//  0x4c2eac: tst BARRIER, HEAP, lsr #32
//  0x4c2eb0: b.eq #0x4c2eb8
//  0x4c2eb4: bl #0x61e04c
//  0x4c2eb8: ldr BARRIER, [PP, #0xbf0]
//  0x4c2ebc: ldr LR, [THR, #0x90]
//  0x4c2ec0: stp LR, BARRIER, [SP]
//  0x4c2ec4: bl #0x27c0c8
//  0x4c2ec8: stur x0, [FP, #-0x10]
//  0x4c2ecc: bl #0x4c3918
//  0x4c2ed0: mov x1, x0
//  0x4c2ed4: ldur x2, [FP, #-0x10]
//  0x4c2ed8: stur x0, [FP, #-0x10]
//  0x4c2edc: bl #0x4c2fa0
//  0x4c2ee0: ldur x0, [FP, #-0x10]
//  0x4c2ee4: ldur x1, [FP, #-8]
//  0x4c2ee8: stur w0, [x1, #0x57]
//  0x4c2eec: ldurb w16, [x1, #-1]
//  0x4c2ef0: ldurb w17, [x0, #-1]
//  0x4c2ef4: and BARRIER, x17, BARRIER, lsr #2
//  0x4c2ef8: tst BARRIER, HEAP, lsr #32
//  0x4c2efc: b.eq #0x4c2f04
//  0x4c2f00: bl #0x61e04c
//  0x4c2f04: bl #0x4c2f94
//  0x4c2f08: mov x1, #-1
//  0x4c2f0c: stur x1, [x0, #7]
//  0x4c2f10: ldur x2, [FP, #-8]
//  0x4c2f14: stur w0, [x2, #0x5b]
//  0x4c2f18: ldurb w16, [x2, #-1]
//  0x4c2f1c: ldurb w17, [x0, #-1]
//  0x4c2f20: and BARRIER, x17, BARRIER, lsr #2
//  0x4c2f24: tst BARRIER, HEAP, lsr #32
//  0x4c2f28: b.eq #0x4c2f30
//  0x4c2f2c: bl #0x61e06c
//  0x4c2f30: stur x1, [x2, #0x23]
//  0x4c2f34: stur xzr, [x2, #7]
//  0x4c2f38: stur xzr, [x2, #0x13]
//  0x4c2f3c: stur xzr, [x2, #0x1b]
//  0x4c2f40: ldr x0, [THR, #0x68]
//  0x4c2f44: ldr x0, [x0, #0xb90]
//  0x4c2f48: ldr BARRIER, [PP, #0x40]
//  0x4c2f4c: cmp w0, w16
//  0x4c2f50: b.ne #0x4c2f5c
//  0x4c2f54: ldr x2, [PP, #0x3608]
//  0x4c2f58: bl #0x61d99c
//  0x4c2f5c: ldur x1, [FP, #-8]
//  0x4c2f60: stur w0, [x1, #0xf]
//  0x4c2f64: ldurb w16, [x1, #-1]
//  0x4c2f68: ldurb w17, [x0, #-1]
//  0x4c2f6c: and BARRIER, x17, BARRIER, lsr #2
//  0x4c2f70: tst BARRIER, HEAP, lsr #32
//  0x4c2f74: b.eq #0x4c2f7c
//  0x4c2f78: bl #0x61e04c
//  0x4c2f7c: mov x0, NULL
//  0x4c2f80: mov SP, FP
//  0x4c2f84: ldp FP, LR, [SP], #0x10
//  0x4c2f88: ret 
//  0x4c2f8c: bl #0x61fa28
//  0x4c2f90: b #0x4c2dac
//
dynamic GameFruitNotifier_ctor() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c2d7c
  // frame: FP = SP // 0x4c2d80
  // frame: SP = SP - 0x20 // 0x4c2d84
  x0 = "" /* pp+0x148 */; // 0x4c2d94
  x2 = mem((PP + 0xb000), 0x840) /* Obj!GameFruitProcessState@12164  */; // 0x4c2d90
  x3 = NULL + 0x30; // 0x4c2d88
  x4 = x1; // 0x4c2d98
  local_m8 = x1; // 0x4c2d9c
  BARRIER = mem(THR, 0x38); // 0x4c2da0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c2f8c
  }
  memSet(x4, 0x2f, w3); // 0x4c2dac
  memSet(x4, 0x43, xzr); // 0x4c2db0
  memSet(x4, 0x4b, xzr); // 0x4c2db4
  memSet(x4, 0x53, w2); // 0x4c2db8
  memSet(x4, 0x5f, w0); // 0x4c2dbc
  x1 = mem(PP, 0x5558) /* TypeArguments */; // 0x4c2dc0
  AllocationStub_LabeledGlobalKey() /* 0x303988 */; // 0x4c2dc4
  x0 = "GameFruitLand" /* pp+0xb848 */; // 0x4c2dd0
  x1 = x0; // 0x4c2dc8
  memSet(x1, 0xb, w0); // 0x4c2dd4
  x0 = x1; // 0x4c2dd8
  x3 = local_m8; // 0x4c2ddc
  memSet(x3, 0x2b, w0); // 0x4c2de0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c2dec
  w16 = mem(x3, -1); // 0x4c2de4
  w17 = mem(x0, -1); // 0x4c2de8
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4c2de4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c2de8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c2df8
  }
  x1 = mem((PP + 0xb000), 0x850) /* TypeArguments */; // 0x4c2e00
  x2 = 0; // 0x4c2e04
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c2e08
  x3 = local_m8; // 0x4c2e0c
  memSet(x3, 0x33, w0); // 0x4c2e10
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c2e1c
  w16 = mem(x3, -1); // 0x4c2e14
  w17 = mem(x0, -1); // 0x4c2e18
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4c2e14
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c2e18
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c2e28
  }
  x1 = mem((PP + 0xb000), 0x858) /* TypeArguments */; // 0x4c2e30
  x2 = 0; // 0x4c2e34
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c2e38
  x3 = local_m8; // 0x4c2e3c
  memSet(x3, 0x37, w0); // 0x4c2e40
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c2e4c
  w16 = mem(x3, -1); // 0x4c2e44
  w17 = mem(x0, -1); // 0x4c2e48
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4c2e44
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c2e48
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c2e58
  }
  x1 = mem(PP, 0x908) /* TypeArguments */; // 0x4c2e5c
  x2 = 0; // 0x4c2e60
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c2e64
  x3 = local_m8; // 0x4c2e68
  memSet(x3, 0x3b, w0); // 0x4c2e6c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c2e78
  w16 = mem(x3, -1); // 0x4c2e70
  w17 = mem(x0, -1); // 0x4c2e74
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4c2e70
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c2e74
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c2e84
  }
  x1 = mem((PP + 0xb000), 0x850) /* TypeArguments */; // 0x4c2e8c
  x2 = 0; // 0x4c2e90
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c2e94
  x1 = local_m8; // 0x4c2e98
  memSet(x1, 0x3f, w0); // 0x4c2e9c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c2ea8
  w16 = mem(x1, -1); // 0x4c2ea0
  w17 = mem(x0, -1); // 0x4c2ea4
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c2ea0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c2ea4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c2eb4
  }
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x4c2eb8
  LR = mem(THR, 0x90); // 0x4c2ebc
  // frame: LR, BARRIER, mem(SP) // 0x4c2ec0
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x4c2ec4
  local_m10 = x0; // 0x4c2ec8
  AllocationStub_GameFruitProcessResult() /* 0x4c3918 */; // 0x4c2ecc
  x1 = x0; // 0x4c2ed0
  x2 = local_m10; // 0x4c2ed4
  local_m10 = x0; // 0x4c2ed8
  GameFruitProcessResult_ctor_fromJson() /* 0x4c2fa0 */; // 0x4c2edc
  x0 = local_m10; // 0x4c2ee0
  x1 = local_m8; // 0x4c2ee4
  memSet(x1, 0x57, w0); // 0x4c2ee8
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c2ef4
  w16 = mem(x1, -1); // 0x4c2eec
  w17 = mem(x0, -1); // 0x4c2ef0
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c2eec
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c2ef0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c2f00
  }
  AllocationStub_CountDownTimer() /* 0x4c2f94 */; // 0x4c2f04
  x1 = -1; // 0x4c2f08
  memSet(x0, 7, x1); // 0x4c2f0c
  x2 = local_m8; // 0x4c2f10
  memSet(x2, 0x5b, w0); // 0x4c2f14
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c2f20
  w16 = mem(x2, -1); // 0x4c2f18
  w17 = mem(x0, -1); // 0x4c2f1c
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x4c2f18
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c2f1c
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x4c2f2c
  }
  memSet(x2, 0x23, x1); // 0x4c2f30
  memSet(x2, 7, xzr); // 0x4c2f34
  memSet(x2, 0x13, xzr); // 0x4c2f38
  memSet(x2, 0x1b, xzr); // 0x4c2f3c
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4c2f48
  x0 = mem((mem(THR, 0x68)), 0xb90); // 0x4c2f44
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3608) /* Field */; // 0x4c2f54
    sub_0x61d99c(); // 0x4c2f58
  }
  x1 = local_m8; // 0x4c2f5c
  memSet(x1, 0xf, w0); // 0x4c2f60
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c2f6c
  w16 = mem(x1, -1); // 0x4c2f64
  w17 = mem(x0, -1); // 0x4c2f68
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c2f64
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c2f68
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c2f78
  }
  SP = FP; // 0x4c2f80
  x0 = NULL; // 0x4c2f7c
  // frame: FP, LR, mem(SP), 0x10 // 0x4c2f84
  return;
}

// GameFruitNotifier_getCurrentProcess
// raw disassembly:
//  0x4d1c04: stp FP, LR, [SP, #-0x10]!
//  0x4d1c08: mov FP, SP
//  0x4d1c0c: sub SP, SP, #0x28
//  0x4d1c10: stur x1, [FP, #-8]
//  0x4d1c14: ldr BARRIER, [THR, #0x38]
//  0x4d1c18: cmp SP, BARRIER
//  0x4d1c1c: b.ls #0x4d1d10
//  0x4d1c20: mov x1, #1
//  0x4d1c24: bl #0x61e890
//  0x4d1c28: ldur x1, [FP, #-8]
//  0x4d1c2c: stur x0, [FP, #-0x10]
//  0x4d1c30: stur w1, [x0, #0xf]
//  0x4d1c34: stur xzr, [x1, #0x43]
//  0x4d1c38: stur xzr, [x1, #0x4b]
//  0x4d1c3c: add x2, PP, #0xb, lsl #12
//  0x4d1c40: ldr x2, [x2, #0x840]
//  0x4d1c44: stur w2, [x1, #0x53]
//  0x4d1c48: ldr BARRIER, [PP, #0xbf0]
//  0x4d1c4c: ldr LR, [THR, #0x90]
//  0x4d1c50: stp LR, BARRIER, [SP]
//  0x4d1c54: bl #0x27c0c8
//  0x4d1c58: stur x0, [FP, #-0x18]
//  0x4d1c5c: bl #0x4c3918
//  0x4d1c60: mov x1, x0
//  0x4d1c64: ldur x2, [FP, #-0x18]
//  0x4d1c68: stur x0, [FP, #-0x18]
//  0x4d1c6c: bl #0x4c2fa0
//  0x4d1c70: ldur x0, [FP, #-0x18]
//  0x4d1c74: ldur x2, [FP, #-8]
//  0x4d1c78: stur w0, [x2, #0x57]
//  0x4d1c7c: ldurb w16, [x2, #-1]
//  0x4d1c80: ldurb w17, [x0, #-1]
//  0x4d1c84: and BARRIER, x17, BARRIER, lsr #2
//  0x4d1c88: tst BARRIER, HEAP, lsr #32
//  0x4d1c8c: b.eq #0x4d1c94
//  0x4d1c90: bl #0x61e06c
//  0x4d1c94: ldur w1, [x2, #0x63]
//  0x4d1c98: add x1, x1, HEAP, lsl #32
//  0x4d1c9c: cmp w1, w22
//  0x4d1ca0: b.ne #0x4d1cac
//  0x4d1ca4: mov x0, x2
//  0x4d1ca8: b #0x4d1cb4
//  0x4d1cac: bl #0x4d23e4
//  0x4d1cb0: ldur x0, [FP, #-8]
//  0x4d1cb4: stur w22, [x0, #0x67]
//  0x4d1cb8: mov x1, x0
//  0x4d1cbc: bl #0x4d2268
//  0x4d1cc0: ldur x2, [FP, #-0x10]
//  0x4d1cc4: add x1, PP, #0x11, lsl #12
//  0x4d1cc8: ldr x1, [x1, #0xc08]
//  0x4d1ccc: bl #0x61ec54
//  0x4d1cd0: mov x1, x0
//  0x4d1cd4: bl #0x4d2184
//  0x4d1cd8: ldur x0, [FP, #-8]
//  0x4d1cdc: ldur w1, [x0, #0x3f]
//  0x4d1ce0: add x1, x1, HEAP, lsl #32
//  0x4d1ce4: bl #0x2b3608
//  0x4d1ce8: ldur x2, [FP, #-0x10]
//  0x4d1cec: add x1, PP, #0x11, lsl #12
//  0x4d1cf0: ldr x1, [x1, #0xc10]
//  0x4d1cf4: bl #0x61ec54
//  0x4d1cf8: mov x1, x0
//  0x4d1cfc: bl #0x4d1d18
//  0x4d1d00: mov x0, NULL
//  0x4d1d04: mov SP, FP
//  0x4d1d08: ldp FP, LR, [SP], #0x10
//  0x4d1d0c: ret 
//  0x4d1d10: bl #0x61fa28
//  0x4d1d14: b #0x4d1c20
//
dynamic GameFruitNotifier_getCurrentProcess() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d1c04
  // frame: FP = SP // 0x4d1c08
  // frame: SP = SP - 0x28 // 0x4d1c0c
  local_m8 = x1; // 0x4d1c10
  BARRIER = mem(THR, 0x38); // 0x4d1c14
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d1d10
  }
  x1 = 1; // 0x4d1c20
  sub_0x61e890(); // 0x4d1c24
  x1 = local_m8; // 0x4d1c28
  local_m10 = x0; // 0x4d1c2c
  memSet(x0, 0xf, w1); // 0x4d1c30
  memSet(x1, 0x43, xzr); // 0x4d1c34
  memSet(x1, 0x4b, xzr); // 0x4d1c38
  x2 = mem((PP + 0xb000), 0x840) /* Obj!GameFruitProcessState@12164  */; // 0x4d1c40
  memSet(x1, 0x53, w2); // 0x4d1c44
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x4d1c48
  LR = mem(THR, 0x90); // 0x4d1c4c
  // frame: LR, BARRIER, mem(SP) // 0x4d1c50
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x4d1c54
  local_m18 = x0; // 0x4d1c58
  AllocationStub_GameFruitProcessResult() /* 0x4c3918 */; // 0x4d1c5c
  x1 = x0; // 0x4d1c60
  x2 = local_m18; // 0x4d1c64
  local_m18 = x0; // 0x4d1c68
  GameFruitProcessResult_ctor_fromJson() /* 0x4c2fa0 */; // 0x4d1c6c
  x0 = local_m18; // 0x4d1c70
  x2 = local_m8; // 0x4d1c74
  memSet(x2, 0x57, w0); // 0x4d1c78
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d1c84
  w16 = mem(x2, -1); // 0x4d1c7c
  w17 = mem(x0, -1); // 0x4d1c80
  x16 = (mem(x2, -1)) & 0xffffffff; // 0x4d1c7c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d1c80
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x2() /* 0x61e06c */; // 0x4d1c90
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d1c98
  if (w1 != w22) {
    AnimationController_reset() /* 0x4d23e4 */; // 0x4d1cac
    x0 = local_m8; // 0x4d1cb0
  } else {
    x0 = x2; // 0x4d1ca4
  }
  memSet(x0, 0x67, w22); // 0x4d1cb4
  x1 = x0; // 0x4d1cb8
  GameFruitNotifier_resetUserBetList() /* 0x4d2268 */; // 0x4d1cbc
  x1 = mem((PP + 0x11000), 0xc08) /* Function */; // 0x4d1cc8
  x2 = local_m10; // 0x4d1cc0
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d1ccc
  x1 = x0; // 0x4d1cd0
  GameApiService_getFruitGameProcess() /* 0x4d2184 */; // 0x4d1cd4
  w1 = mem((local_m8), 0x3f); // 0x4d1cdc
  x0 = local_m8; // 0x4d1cd8
  x1 = ((mem((local_m8), 0x3f)) & 0xffffffff) + (HEAP << 32); // 0x4d1ce0
  GrowableList_clear() /* 0x2b3608 */; // 0x4d1ce4
  x1 = mem((PP + 0x11000), 0xc10) /* Function */; // 0x4d1cf0
  x2 = local_m10; // 0x4d1ce8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d1cf4
  x1 = x0; // 0x4d1cf8
  GameApiService_getRecentFruitResult() /* 0x4d1d18 */; // 0x4d1cfc
  SP = FP; // 0x4d1d04
  x0 = NULL; // 0x4d1d00
  // frame: FP, LR, mem(SP), 0x10 // 0x4d1d08
  return;
}

// GameFruitNotifier_resetUserBetList
// raw disassembly:
//  0x4d2268: stp FP, LR, [SP, #-0x10]!
//  0x4d226c: mov FP, SP
//  0x4d2270: sub SP, SP, #0x50
//  0x4d2274: ldr BARRIER, [THR, #0x38]
//  0x4d2278: cmp SP, BARRIER
//  0x4d227c: b.ls #0x4d23dc
//  0x4d2280: ldur w0, [x1, #0x37]
//  0x4d2284: add x0, x0, HEAP, lsl #32
//  0x4d2288: mov x1, x0
//  0x4d228c: stur x0, [FP, #-8]
//  0x4d2290: bl #0x2b3608
//  0x4d2294: bl #0x4c390c
//  0x4d2298: stur x0, [FP, #-0x10]
//  0x4d229c: stur wzr, [x0, #7]
//  0x4d22a0: stur wzr, [x0, #0xb]
//  0x4d22a4: bl #0x4c390c
//  0x4d22a8: mov x1, x0
//  0x4d22ac: mov x0, #2
//  0x4d22b0: stur x1, [FP, #-0x18]
//  0x4d22b4: stur w0, [x1, #7]
//  0x4d22b8: stur wzr, [x1, #0xb]
//  0x4d22bc: bl #0x4c390c
//  0x4d22c0: mov x1, x0
//  0x4d22c4: mov x0, #4
//  0x4d22c8: stur x1, [FP, #-0x20]
//  0x4d22cc: stur w0, [x1, #7]
//  0x4d22d0: stur wzr, [x1, #0xb]
//  0x4d22d4: bl #0x4c390c
//  0x4d22d8: mov x1, x0
//  0x4d22dc: mov x0, #6
//  0x4d22e0: stur x1, [FP, #-0x28]
//  0x4d22e4: stur w0, [x1, #7]
//  0x4d22e8: stur wzr, [x1, #0xb]
//  0x4d22ec: bl #0x4c390c
//  0x4d22f0: mov x1, x0
//  0x4d22f4: mov x0, #8
//  0x4d22f8: stur x1, [FP, #-0x30]
//  0x4d22fc: stur w0, [x1, #7]
//  0x4d2300: stur wzr, [x1, #0xb]
//  0x4d2304: bl #0x4c390c
//  0x4d2308: mov x1, x0
//  0x4d230c: mov x0, #0xa
//  0x4d2310: stur x1, [FP, #-0x38]
//  0x4d2314: stur w0, [x1, #7]
//  0x4d2318: stur wzr, [x1, #0xb]
//  0x4d231c: bl #0x4c390c
//  0x4d2320: mov x1, x0
//  0x4d2324: mov x0, #0xc
//  0x4d2328: stur x1, [FP, #-0x40]
//  0x4d232c: stur w0, [x1, #7]
//  0x4d2330: stur wzr, [x1, #0xb]
//  0x4d2334: bl #0x4c390c
//  0x4d2338: mov x3, x0
//  0x4d233c: mov x0, #0xe
//  0x4d2340: stur x3, [FP, #-0x48]
//  0x4d2344: stur w0, [x3, #7]
//  0x4d2348: stur wzr, [x3, #0xb]
//  0x4d234c: mov x1, NULL
//  0x4d2350: mov x2, #0x10
//  0x4d2354: bl #0x61f920
//  0x4d2358: mov x2, x0
//  0x4d235c: ldur x0, [FP, #-0x10]
//  0x4d2360: stur x2, [FP, #-0x50]
//  0x4d2364: stur w0, [x2, #0xf]
//  0x4d2368: ldur x0, [FP, #-0x18]
//  0x4d236c: stur w0, [x2, #0x13]
//  0x4d2370: ldur x0, [FP, #-0x20]
//  0x4d2374: stur w0, [x2, #0x17]
//  0x4d2378: ldur x0, [FP, #-0x28]
//  0x4d237c: stur w0, [x2, #0x1b]
//  0x4d2380: ldur x0, [FP, #-0x30]
//  0x4d2384: stur w0, [x2, #0x1f]
//  0x4d2388: ldur x0, [FP, #-0x38]
//  0x4d238c: stur w0, [x2, #0x23]
//  0x4d2390: ldur x0, [FP, #-0x40]
//  0x4d2394: stur w0, [x2, #0x27]
//  0x4d2398: ldur x0, [FP, #-0x48]
//  0x4d239c: stur w0, [x2, #0x2b]
//  0x4d23a0: add x1, PP, #0xb, lsl #12
//  0x4d23a4: ldr x1, [x1, #0x858]
//  0x4d23a8: bl #0x61e854
//  0x4d23ac: mov x1, x0
//  0x4d23b0: ldur x0, [FP, #-0x50]
//  0x4d23b4: stur w0, [x1, #0xf]
//  0x4d23b8: mov x0, #0x10
//  0x4d23bc: stur w0, [x1, #0xb]
//  0x4d23c0: mov x2, x1
//  0x4d23c4: ldur x1, [FP, #-8]
//  0x4d23c8: bl #0x2ce4e8
//  0x4d23cc: mov x0, NULL
//  0x4d23d0: mov SP, FP
//  0x4d23d4: ldp FP, LR, [SP], #0x10
//  0x4d23d8: ret 
//  0x4d23dc: bl #0x61fa28
//  0x4d23e0: b #0x4d2280
//
dynamic GameFruitNotifier_resetUserBetList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d2268
  BARRIER = mem(THR, 0x38); // 0x4d2274
  // frame: FP = SP // 0x4d226c
  // frame: SP = SP - 0x50 // 0x4d2270
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d23dc
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d2284
  x1 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d2288
  local_m8 = x0; // 0x4d228c
  GrowableList_clear() /* 0x2b3608 */; // 0x4d2290
  AllocationStub_BetCoinInfo() /* 0x4c390c */; // 0x4d2294
  local_m10 = x0; // 0x4d2298
  memSet(x0, 7, wzr); // 0x4d229c
  memSet(x0, 0xb, wzr); // 0x4d22a0
  AllocationStub_BetCoinInfo() /* 0x4c390c */; // 0x4d22a4
  x0 = 2; // 0x4d22ac
  x1 = x0; // 0x4d22a8
  local_m18 = x1; // 0x4d22b0
  memSet(x1, 7, w0); // 0x4d22b4
  memSet(x1, 0xb, wzr); // 0x4d22b8
  AllocationStub_BetCoinInfo() /* 0x4c390c */; // 0x4d22bc
  x0 = 4; // 0x4d22c4
  x1 = x0; // 0x4d22c0
  local_m20 = x1; // 0x4d22c8
  memSet(x1, 7, w0); // 0x4d22cc
  memSet(x1, 0xb, wzr); // 0x4d22d0
  AllocationStub_BetCoinInfo() /* 0x4c390c */; // 0x4d22d4
  x0 = 6; // 0x4d22dc
  x1 = x0; // 0x4d22d8
  local_m28 = x1; // 0x4d22e0
  memSet(x1, 7, w0); // 0x4d22e4
  memSet(x1, 0xb, wzr); // 0x4d22e8
  AllocationStub_BetCoinInfo() /* 0x4c390c */; // 0x4d22ec
  x0 = 8; // 0x4d22f4
  x1 = x0; // 0x4d22f0
  local_m30 = x1; // 0x4d22f8
  memSet(x1, 7, w0); // 0x4d22fc
  memSet(x1, 0xb, wzr); // 0x4d2300
  AllocationStub_BetCoinInfo() /* 0x4c390c */; // 0x4d2304
  x0 = 10; // 0x4d230c
  x1 = x0; // 0x4d2308
  local_m38 = x1; // 0x4d2310
  memSet(x1, 7, w0); // 0x4d2314
  memSet(x1, 0xb, wzr); // 0x4d2318
  AllocationStub_BetCoinInfo() /* 0x4c390c */; // 0x4d231c
  x0 = 12; // 0x4d2324
  x1 = x0; // 0x4d2320
  local_m40 = x1; // 0x4d2328
  memSet(x1, 7, w0); // 0x4d232c
  memSet(x1, 0xb, wzr); // 0x4d2330
  AllocationStub_BetCoinInfo() /* 0x4c390c */; // 0x4d2334
  x0 = 14; // 0x4d233c
  x3 = x0; // 0x4d2338
  local_m48 = x3; // 0x4d2340
  memSet(x3, 7, w0); // 0x4d2344
  memSet(x3, 0xb, wzr); // 0x4d2348
  x1 = NULL; // 0x4d234c
  x2 = 16; // 0x4d2350
  sub_0x61f920(); // 0x4d2354
  x0 = local_m10; // 0x4d235c
  x2 = x0; // 0x4d2358
  local_m50 = x2; // 0x4d2360
  memSet(x2, 0xf, w0); // 0x4d2364
  x0 = local_m18; // 0x4d2368
  memSet(x2, 0x13, w0); // 0x4d236c
  x0 = local_m20; // 0x4d2370
  memSet(x2, 0x17, w0); // 0x4d2374
  x0 = local_m28; // 0x4d2378
  memSet(x2, 0x1b, w0); // 0x4d237c
  x0 = local_m30; // 0x4d2380
  memSet(x2, 0x1f, w0); // 0x4d2384
  x0 = local_m38; // 0x4d2388
  memSet(x2, 0x23, w0); // 0x4d238c
  x0 = local_m40; // 0x4d2390
  memSet(x2, 0x27, w0); // 0x4d2394
  x0 = local_m48; // 0x4d2398
  memSet(x2, 0x2b, w0); // 0x4d239c
  x1 = mem((PP + 0xb000), 0x858) /* TypeArguments */; // 0x4d23a4
  AllocationStub__GrowableList() /* 0x61e854 */; // 0x4d23a8
  x0 = local_m50; // 0x4d23b0
  x1 = x0; // 0x4d23ac
  memSet(x1, 0xf, w0); // 0x4d23b4
  x0 = 16; // 0x4d23b8
  memSet(x1, 0xb, w0); // 0x4d23bc
  x1 = local_m8; // 0x4d23c4
  x2 = x1; // 0x4d23c0
  GrowableList_addAll() /* 0x2ce4e8 */; // 0x4d23c8
  SP = FP; // 0x4d23d0
  x0 = NULL; // 0x4d23cc
  // frame: FP, LR, mem(SP), 0x10 // 0x4d23d4
  return;
}

// GameFruitNotifier_anon_closure_7
// raw disassembly:
//  0x4d2418: stp FP, LR, [SP, #-0x10]!
//  0x4d241c: mov FP, SP
//  0x4d2420: sub SP, SP, #8
//  0x4d2424: ldr x0, [FP, #0x18]
//  0x4d2428: ldur w3, [x0, #0x17]
//  0x4d242c: add x3, x3, HEAP, lsl #32
//  0x4d2430: stur x3, [FP, #-8]
//  0x4d2434: ldr BARRIER, [THR, #0x38]
//  0x4d2438: cmp SP, BARRIER
//  0x4d243c: b.ls #0x4d2494
//  0x4d2440: ldur w0, [x3, #0xf]
//  0x4d2444: add x0, x0, HEAP, lsl #32
//  0x4d2448: ldur w1, [x0, #0x2f]
//  0x4d244c: add x1, x1, HEAP, lsl #32
//  0x4d2450: tbnz w1, #4, #0x4d2464
//  0x4d2454: mov x0, NULL
//  0x4d2458: mov SP, FP
//  0x4d245c: ldp FP, LR, [SP], #0x10
//  0x4d2460: ret 
//  0x4d2464: ldur w1, [x0, #0x3f]
//  0x4d2468: add x1, x1, HEAP, lsl #32
//  0x4d246c: ldr x2, [FP, #0x10]
//  0x4d2470: bl #0x2ce4e8
//  0x4d2474: ldur x0, [FP, #-8]
//  0x4d2478: ldur w1, [x0, #0xf]
//  0x4d247c: add x1, x1, HEAP, lsl #32
//  0x4d2480: bl #0x3ac980
//  0x4d2484: mov x0, NULL
//  0x4d2488: mov SP, FP
//  0x4d248c: ldp FP, LR, [SP], #0x10
//  0x4d2490: ret 
//  0x4d2494: bl #0x61fa28
//  0x4d2498: b #0x4d2440
//
dynamic GameFruitNotifier_anon_closure_7() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d2418
  // frame: FP = SP // 0x4d241c
  // frame: SP = SP - 8 // 0x4d2420
  w3 = mem((local_18), 0x17); // 0x4d2428
  x0 = local_18; // 0x4d2424
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d242c
  local_m8 = x3; // 0x4d2430
  BARRIER = mem(THR, 0x38); // 0x4d2434
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d2494
  }
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x2f); // 0x4d2448
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d2444
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x2f)) & 0xffffffff) + (HEAP << 32); // 0x4d244c
  if (x1 & (1 << 4) != 0) {
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d2468
    x2 = local_10; // 0x4d246c
    GrowableList_addAll() /* 0x2ce4e8 */; // 0x4d2470
    w1 = mem((local_m8), 0xf); // 0x4d2478
    x0 = local_m8; // 0x4d2474
    x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d247c
    SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x4d2480
    SP = FP; // 0x4d2488
    x0 = NULL; // 0x4d2484
    // frame: FP, LR, mem(SP), 0x10 // 0x4d248c
    return;
  }
  SP = FP; // 0x4d2458
  x0 = NULL; // 0x4d2454
  // frame: FP, LR, mem(SP), 0x10 // 0x4d245c
  return;
}

// GameFruitNotifier_anon_closure_8
// raw disassembly:
//  0x4d249c: stp FP, LR, [SP, #-0x10]!
//  0x4d24a0: mov FP, SP
//  0x4d24a4: sub SP, SP, #0x48
//  0x4d24a8: ldr x0, [FP, #0x18]
//  0x4d24ac: ldur w2, [x0, #0x17]
//  0x4d24b0: add x2, x2, HEAP, lsl #32
//  0x4d24b4: stur x2, [FP, #-0x28]
//  0x4d24b8: ldr BARRIER, [THR, #0x38]
//  0x4d24bc: cmp SP, BARRIER
//  0x4d24c0: b.ls #0x4d26c0
//  0x4d24c4: ldur w1, [x2, #0xf]
//  0x4d24c8: add x1, x1, HEAP, lsl #32
//  0x4d24cc: ldur w0, [x1, #0x2f]
//  0x4d24d0: add x0, x0, HEAP, lsl #32
//  0x4d24d4: tbnz w0, #4, #0x4d24e8
//  0x4d24d8: mov x0, NULL
//  0x4d24dc: mov SP, FP
//  0x4d24e0: ldp FP, LR, [SP], #0x10
//  0x4d24e4: ret 
//  0x4d24e8: ldr x3, [FP, #0x10]
//  0x4d24ec: ldur w0, [x3, #7]
//  0x4d24f0: add x0, x0, HEAP, lsl #32
//  0x4d24f4: ldr BARRIER, [PP, #0x40]
//  0x4d24f8: cmp w0, w16
//  0x4d24fc: b.eq #0x4d26c8
//  0x4d2500: stur w0, [x1, #0x53]
//  0x4d2504: ldurb w16, [x1, #-1]
//  0x4d2508: ldurb w17, [x0, #-1]
//  0x4d250c: and BARRIER, x17, BARRIER, lsr #2
//  0x4d2510: tst BARRIER, HEAP, lsr #32
//  0x4d2514: b.eq #0x4d251c
//  0x4d2518: bl #0x61e04c
//  0x4d251c: mov x0, x3
//  0x4d2520: stur w0, [x1, #0x57]
//  0x4d2524: ldurb w16, [x1, #-1]
//  0x4d2528: ldurb w17, [x0, #-1]
//  0x4d252c: and BARRIER, x17, BARRIER, lsr #2
//  0x4d2530: tst BARRIER, HEAP, lsr #32
//  0x4d2534: b.eq #0x4d253c
//  0x4d2538: bl #0x61e04c
//  0x4d253c: ldur w4, [x3, #0x2b]
//  0x4d2540: add x4, x4, HEAP, lsl #32
//  0x4d2544: ldr BARRIER, [PP, #0x40]
//  0x4d2548: cmp w4, w16
//  0x4d254c: b.eq #0x4d26d4
//  0x4d2550: stur x4, [FP, #-0x20]
//  0x4d2554: ldur w3, [x4, #0xb]
//  0x4d2558: stur x3, [FP, #-0x18]
//  0x4d255c: sbfx x0, x3, #1, #0x1f
//  0x4d2560: mov x5, #0
//  0x4d2564: stur x5, [FP, #-0x10]
//  0x4d2568: ldr BARRIER, [THR, #0x38]
//  0x4d256c: cmp SP, BARRIER
//  0x4d2570: b.ls #0x4d26e0
//  0x4d2574: cmp x5, x0
//  0x4d2578: b.ge #0x4d2674
//  0x4d257c: mov x1, x5
//  0x4d2580: cmp x1, x0
//  0x4d2584: b.hs #0x4d26e8
//  0x4d2588: ldur w0, [x4, #0xf]
//  0x4d258c: add x0, x0, HEAP, lsl #32
//  0x4d2590: add BARRIER, x0, x5, lsl #2
//  0x4d2594: ldur w1, [BARRIER, #0xf]
//  0x4d2598: add x1, x1, HEAP, lsl #32
//  0x4d259c: stur x1, [FP, #-8]
//  0x4d25a0: mov x1, #1
//  0x4d25a4: bl #0x61e890
//  0x4d25a8: mov x3, x0
//  0x4d25ac: ldur x0, [FP, #-0x28]
//  0x4d25b0: stur x3, [FP, #-0x30]
//  0x4d25b4: stur w0, [x3, #0xb]
//  0x4d25b8: ldur x1, [FP, #-8]
//  0x4d25bc: stur w1, [x3, #0xf]
//  0x4d25c0: ldur w1, [x0, #0xf]
//  0x4d25c4: add x1, x1, HEAP, lsl #32
//  0x4d25c8: ldur w4, [x1, #0x37]
//  0x4d25cc: add x4, x4, HEAP, lsl #32
//  0x4d25d0: mov x2, x3
//  0x4d25d4: stur x4, [FP, #-8]
//  0x4d25d8: add x1, PP, #0x11, lsl #12
//  0x4d25dc: ldr x1, [x1, #0xc18]
//  0x4d25e0: bl #0x61ec54
//  0x4d25e4: add BARRIER, PP, #0xb, lsl #12
//  0x4d25e8: ldr BARRIER, [BARRIER, #0x858]
//  0x4d25ec: ldur LR, [FP, #-8]
//  0x4d25f0: stp LR, BARRIER, [SP, #8]
//  0x4d25f4: str x0, [SP]
//  0x4d25f8: ldr x4, [PP, #0x58]
//  0x4d25fc: bl #0x41eaac
//  0x4d2600: mov x1, x0
//  0x4d2604: cmp w1, w22
//  0x4d2608: b.eq #0x4d2640
//  0x4d260c: ldur x0, [FP, #-0x30]
//  0x4d2610: ldur w2, [x0, #0xf]
//  0x4d2614: add x2, x2, HEAP, lsl #32
//  0x4d2618: ldur w0, [x2, #0xb]
//  0x4d261c: add x0, x0, HEAP, lsl #32
//  0x4d2620: stur w0, [x1, #0xb]
//  0x4d2624: tbz w0, #0, #0x4d2640
//  0x4d2628: ldurb w16, [x1, #-1]
//  0x4d262c: ldurb w17, [x0, #-1]
//  0x4d2630: and BARRIER, x17, BARRIER, lsr #2
//  0x4d2634: tst BARRIER, HEAP, lsr #32
//  0x4d2638: b.eq #0x4d2640
//  0x4d263c: bl #0x61e04c
//  0x4d2640: ldur x1, [FP, #-0x20]
//  0x4d2644: ldur x2, [FP, #-0x18]
//  0x4d2648: ldur w0, [x1, #0xb]
//  0x4d264c: cmp w0, w2
//  0x4d2650: b.ne #0x4d26a4
//  0x4d2654: ldur x3, [FP, #-0x10]
//  0x4d2658: add x5, x3, #1
//  0x4d265c: sbfx x3, x0, #1, #0x1f
//  0x4d2660: mov x0, x3
//  0x4d2664: mov x3, x2
//  0x4d2668: ldur x2, [FP, #-0x28]
//  0x4d266c: mov x4, x1
//  0x4d2670: b #0x4d2564
//  0x4d2674: mov x0, x2
//  0x4d2678: ldur w1, [x0, #0xf]
//  0x4d267c: add x1, x1, HEAP, lsl #32
//  0x4d2680: bl #0x4d26ec
//  0x4d2684: ldur x0, [FP, #-0x28]
//  0x4d2688: ldur w1, [x0, #0xf]
//  0x4d268c: add x1, x1, HEAP, lsl #32
//  0x4d2690: bl #0x3ac980
//  0x4d2694: mov x0, NULL
//  0x4d2698: mov SP, FP
//  0x4d269c: ldp FP, LR, [SP], #0x10
//  0x4d26a0: ret 
//  0x4d26a4: bl #0x277514
//  0x4d26a8: mov x1, x0
//  0x4d26ac: ldur x0, [FP, #-0x20]
//  0x4d26b0: stur w0, [x1, #0xb]
//  0x4d26b4: mov x0, x1
//  0x4d26b8: bl #0x61dadc
//  0x4d26bc: brk #0
//  0x4d26c0: bl #0x61fa28
//  0x4d26c4: b #0x4d24c4
//  0x4d26c8: add x9, PP, #0x11, lsl #12
//  0x4d26cc: ldr x9, [x9, #0xc20]
//  0x4d26d0: bl #0x620258
//  0x4d26d4: add x9, PP, #0x11, lsl #12
//  0x4d26d8: ldr x9, [x9, #0xc28]
//  0x4d26dc: bl #0x620258
//  0x4d26e0: bl #0x61fa28
//  0x4d26e4: b #0x4d2574
//  0x4d26e8: bl #0x61fe70
//
// NOTE: control flow was not fully structured (goto kept) -- pseudocode only.
dynamic GameFruitNotifier_anon_closure_8() {
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
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d249c
  // frame: FP = SP // 0x4d24a0
  // frame: SP = SP - 0x48 // 0x4d24a4
  w2 = mem((local_18), 0x17); // 0x4d24ac
  x0 = local_18; // 0x4d24a8
  x2 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d24b0
  local_m28 = x2; // 0x4d24b4
  BARRIER = mem(THR, 0x38); // 0x4d24b8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d26c0
  }
  w0 = mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x2f); // 0x4d24cc
  x0 = ((mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x2f)) & 0xffffffff) + (HEAP << 32); // 0x4d24d0
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d24c8
  if (x0 & (1 << 4) == 0) {
    SP = FP; // 0x4d24dc
    x0 = NULL; // 0x4d24d8
    // frame: FP, LR, mem(SP), 0x10 // 0x4d24e0
    return;
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d24f4
  w0 = mem((local_10), 7); // 0x4d24ec
  x0 = ((mem((local_10), 7)) & 0xffffffff) + (HEAP << 32); // 0x4d24f0
  x3 = local_10; // 0x4d24e8
  if (w0 == w16) {
    x9 = mem((PP + 0x11000), 0xc20) /* Field */; // 0x4d26cc
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d26d0
  } else {
    memSet(x1, 0x53, w0); // 0x4d2500
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d250c
    w16 = mem(x1, -1); // 0x4d2504
    w17 = mem(x0, -1); // 0x4d2508
    x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d2504
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d2508
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d2518
    }
    x0 = x3; // 0x4d251c
    memSet(x1, 0x57, w0); // 0x4d2520
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d252c
    w16 = mem(x1, -1); // 0x4d2524
    w17 = mem(x0, -1); // 0x4d2528
    x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d2524
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d2528
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d2538
    }
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d2544
    x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x4d2540
    if (w4 == w16) {
      x9 = mem((PP + 0x11000), 0xc28) /* Field */; // 0x4d26d8
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d26dc
    } else {
      local_m20 = x4; // 0x4d2550
      w3 = mem(x4, 0xb); // 0x4d2554
      x3 = (mem(x4, 0xb)) & 0xffffffff; // 0x4d2554
      local_m18 = x3; // 0x4d2558
      x0 = (x3 >> 1) & 0x7fffffff; // 0x4d255c
      x5 = 0; // 0x4d2560
      local_m10 = x5; // 0x4d2564
      BARRIER = mem(THR, 0x38); // 0x4d2568
      if (SP <= BARRIER) {
        StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d26e0
      }
      if (x5 >= x0) {
      } else {
        x1 = x5; // 0x4d257c
        if (x1 >= x0) {
        } else {
          BARRIER = ((w0 & 0xffffffff) + (HEAP << 32)) + (x5 << 2); // 0x4d2590
          w1 = mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x5 << 2)), 0xf); // 0x4d2594
          x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d258c
          x1 = ((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x5 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d2598
          local_m8 = x1; // 0x4d259c
          x1 = 1; // 0x4d25a0
          sub_0x61e890(); // 0x4d25a4
          x0 = local_m28; // 0x4d25ac
          x3 = x0; // 0x4d25a8
          local_m30 = x3; // 0x4d25b0
          memSet(x3, 0xb, w0); // 0x4d25b4
          x1 = local_m8; // 0x4d25b8
          memSet(x3, 0xf, w1); // 0x4d25bc
          w1 = mem(x0, 0xf); // 0x4d25c0
          w4 = mem((((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x37); // 0x4d25c8
          x1 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d25c4
          x2 = x3; // 0x4d25d0
          x4 = ((mem((((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32)), 0x37)) & 0xffffffff) + (HEAP << 32); // 0x4d25cc
          local_m8 = x4; // 0x4d25d4
          x1 = mem((PP + 0x11000), 0xc18) /* Function */; // 0x4d25dc
          AllocationStub__Closure() /* 0x61ec54 */; // 0x4d25e0
          BARRIER = mem((PP + 0xb000), 0x858) /* TypeArguments */; // 0x4d25e8
          LR = local_m8; // 0x4d25ec
          // frame: LR, BARRIER, mem(SP, 8) // 0x4d25f0
          local_0 = x0; // 0x4d25f4
          x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x4d25f8
          IterableExtension_firstWhereOrNull() /* 0x41eaac */; // 0x4d25fc
          x1 = x0; // 0x4d2600
          if (w1 == w22) {
          } else {
            w0 = mem((((mem((local_m30), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x4d2618
            w2 = mem((local_m30), 0xf); // 0x4d2610
            x0 = ((mem((((mem((local_m30), 0xf)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x4d261c
            x2 = ((mem((local_m30), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d2614
            memSet(x1, 0xb, w0); // 0x4d2620
            if (x0 & (1 << 0) == 0) {
            } else {
              BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d2630
              w17 = mem(x0, -1); // 0x4d262c
              x16 = w16 & 0xffffffff; // 0x4d2628
              x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d262c
              if ((BARRIER & (HEAP >> 32)) == 0) {
              } else {
                WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d263c
              }
            }
          }
          w0 = mem((local_m20), 0xb); // 0x4d2648
          x0 = (mem((local_m20), 0xb)) & 0xffffffff; // 0x4d2648
          x1 = local_m20; // 0x4d2640
          x2 = local_m18; // 0x4d2644
          if (w0 != w2) {
          } else {
            x0 = (x0 >> 1) & 0x7fffffff; // 0x4d2660
            x3 = x2; // 0x4d2664
            x5 = (local_m10) + 1; // 0x4d2658
            x2 = local_m28; // 0x4d2668
            x4 = x1; // 0x4d266c
            gotoLabel(0x4d2564);
          }
          AllocationStub_ConcurrentModificationError() /* 0x277514 */; // 0x4d26a4
          x0 = local_m20; // 0x4d26ac
          x1 = x0; // 0x4d26a8
          memSet(x1, 0xb, w0); // 0x4d26b0
          x0 = x1; // 0x4d26b4
          sub_0x61dadc(); // 0x4d26b8
          abort(); // brk #0x0
        }
        RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x4d26e8
      }
      w1 = mem(x0, 0xf); // 0x4d2678
      x0 = x2; // 0x4d2674
      x1 = ((mem(x0, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d267c
      GameFruitNotifier_checkProcessState() /* 0x4d26ec */; // 0x4d2680
      w1 = mem((local_m28), 0xf); // 0x4d2688
      x0 = local_m28; // 0x4d2684
      x1 = ((mem((local_m28), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d268c
      SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x4d2690
      SP = FP; // 0x4d2698
      x0 = NULL; // 0x4d2694
      // frame: FP, LR, mem(SP), 0x10 // 0x4d269c
      return;
    }
  }
}

// GameFruitNotifier_checkProcessState
// raw disassembly:
//  0x4d26ec: stp FP, LR, [SP, #-0x10]!
//  0x4d26f0: mov FP, SP
//  0x4d26f4: mov x2, x1
//  0x4d26f8: ldr BARRIER, [THR, #0x38]
//  0x4d26fc: cmp SP, BARRIER
//  0x4d2700: b.ls #0x4d2788
//  0x4d2704: ldur w0, [x2, #0x53]
//  0x4d2708: add x0, x0, HEAP, lsl #32
//  0x4d270c: ldur x3, [x0, #7]
//  0x4d2710: cmp x3, #2
//  0x4d2714: b.gt #0x4d2754
//  0x4d2718: cmp x3, #1
//  0x4d271c: b.gt #0x4d2748
//  0x4d2720: sbfiz x0, x3, #1, #0x1f
//  0x4d2724: cmp x3, x0, asr #1
//  0x4d2728: b.eq #0x4d2734
//  0x4d272c: bl #0x61fba8
//  0x4d2730: stur x3, [x0, #7]
//  0x4d2734: cmp w0, #2
//  0x4d2738: b.ne #0x4d2778
//  0x4d273c: mov x1, x2
//  0x4d2740: bl #0x4d31cc
//  0x4d2744: b #0x4d2778
//  0x4d2748: mov x1, x2
//  0x4d274c: bl #0x4d2c2c
//  0x4d2750: b #0x4d2778
//  0x4d2754: sbfiz x0, x3, #1, #0x1f
//  0x4d2758: cmp x3, x0, asr #1
//  0x4d275c: b.eq #0x4d2768
//  0x4d2760: bl #0x61fba8
//  0x4d2764: stur x3, [x0, #7]
//  0x4d2768: cmp w0, #6
//  0x4d276c: b.ne #0x4d2778
//  0x4d2770: mov x1, x2
//  0x4d2774: bl #0x4d2790
//  0x4d2778: mov x0, NULL
//  0x4d277c: mov SP, FP
//  0x4d2780: ldp FP, LR, [SP], #0x10
//  0x4d2784: ret 
//  0x4d2788: bl #0x61fa28
//  0x4d278c: b #0x4d2704
//
dynamic GameFruitNotifier_checkProcessState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d26ec
  BARRIER = mem(THR, 0x38); // 0x4d26f8
  // frame: FP = SP // 0x4d26f0
  x2 = x1; // 0x4d26f4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d2788
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d2708
  x3 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 7); // 0x4d270c
  if (x3 > 2) {
    x0 = ((x3 & 0x7fffffff) << 1) /* signed */; // 0x4d2754
    if (x3 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x4d2760
      memSet(x0, 7, x3); // 0x4d2764
    }
    if (w0 != 6) {
    } else {
      x1 = x2; // 0x4d2770
      GameFruitNotifier_handleShowProcess() /* 0x4d2790 */; // 0x4d2774
    }
  } else {
    if (x3 > 1) {
      x1 = x2; // 0x4d2748
      GameFruitNotifier_handleDistributeProcess() /* 0x4d2c2c */; // 0x4d274c
    } else {
      x0 = ((x3 & 0x7fffffff) << 1) /* signed */; // 0x4d2720
      if (x3 == x0) {
      } else {
        AllocationStub__Mint() /* 0x61fba8 */; // 0x4d272c
        memSet(x0, 7, x3); // 0x4d2730
      }
      if (w0 != 2) {
      } else {
        x1 = x2; // 0x4d273c
        GameFruitNotifier_handleBetProcess() /* 0x4d31cc */; // 0x4d2740
      }
    }
  }
  SP = FP; // 0x4d277c
  x0 = NULL; // 0x4d2778
  // frame: FP, LR, mem(SP), 0x10 // 0x4d2780
  return;
}

// GameFruitNotifier_handleShowProcess
// raw disassembly:
//  0x4d2790: stp FP, LR, [SP, #-0x10]!
//  0x4d2794: mov FP, SP
//  0x4d2798: sub SP, SP, #8
//  0x4d279c: add x17, PP, #0x11, lsl #12
//  0x4d27a0: ldr d0, [x17, #0xc30]
//  0x4d27a4: mov x0, x1
//  0x4d27a8: stur x1, [FP, #-8]
//  0x4d27ac: ldr BARRIER, [THR, #0x38]
//  0x4d27b0: cmp SP, BARRIER
//  0x4d27b4: b.ls #0x4d2914
//  0x4d27b8: ldur w1, [x0, #0x57]
//  0x4d27bc: add x1, x1, HEAP, lsl #32
//  0x4d27c0: ldur w2, [x1, #0x17]
//  0x4d27c4: add x2, x2, HEAP, lsl #32
//  0x4d27c8: ldr BARRIER, [PP, #0x40]
//  0x4d27cc: cmp w2, w16
//  0x4d27d0: b.eq #0x4d291c
//  0x4d27d4: ldur w3, [x1, #0x23]
//  0x4d27d8: add x3, x3, HEAP, lsl #32
//  0x4d27dc: ldr BARRIER, [PP, #0x40]
//  0x4d27e0: cmp w3, w16
//  0x4d27e4: b.eq #0x4d2928
//  0x4d27e8: sbfx x1, x2, #1, #0x1f
//  0x4d27ec: tbz w2, #0, #0x4d27f4
//  0x4d27f0: ldur x1, [x2, #7]
//  0x4d27f4: sbfx x2, x3, #1, #0x1f
//  0x4d27f8: tbz w3, #0, #0x4d2800
//  0x4d27fc: ldur x2, [x3, #7]
//  0x4d2800: sub x3, x1, x2
//  0x4d2804: scvtf d1, x3
//  0x4d2808: fdiv d2, d1, d0
//  0x4d280c: fcmp d2, d2
//  0x4d2810: b.vs #0x4d2934
//  0x4d2814: fcvtps x1, d2
//  0x4d2818: asr BARRIER, x1, #0x1e
//  0x4d281c: cmp BARRIER, x1, asr #63
//  0x4d2820: b.ne #0x4d2934
//  0x4d2824: lsl x1, x1, #1
//  0x4d2828: sbfx x2, x1, #1, #0x1f
//  0x4d282c: tbz w1, #0, #0x4d2834
//  0x4d2830: ldur x2, [x1, #7]
//  0x4d2834: mov x1, x0
//  0x4d2838: bl #0x4d2a74
//  0x4d283c: ldur x2, [FP, #-8]
//  0x4d2840: ldur w1, [x2, #0x6b]
//  0x4d2844: add x1, x1, HEAP, lsl #32
//  0x4d2848: cmp w1, w22
//  0x4d284c: b.eq #0x4d2890
//  0x4d2850: ldur w0, [x2, #0x57]
//  0x4d2854: add x0, x0, HEAP, lsl #32
//  0x4d2858: ldur w3, [x0, #0x23]
//  0x4d285c: add x3, x3, HEAP, lsl #32
//  0x4d2860: ldr BARRIER, [PP, #0x40]
//  0x4d2864: cmp w3, w16
//  0x4d2868: b.eq #0x4d2960
//  0x4d286c: mov x0, x3
//  0x4d2870: stur w0, [x1, #0xb]
//  0x4d2874: tbz w0, #0, #0x4d2890
//  0x4d2878: ldurb w16, [x1, #-1]
//  0x4d287c: ldurb w17, [x0, #-1]
//  0x4d2880: and BARRIER, x17, BARRIER, lsr #2
//  0x4d2884: tst BARRIER, HEAP, lsr #32
//  0x4d2888: b.eq #0x4d2890
//  0x4d288c: bl #0x61e04c
//  0x4d2890: ldur w1, [x2, #0x2b]
//  0x4d2894: add x1, x1, HEAP, lsl #32
//  0x4d2898: bl #0x2c0440
//  0x4d289c: mov x1, x0
//  0x4d28a0: ldur x0, [FP, #-8]
//  0x4d28a4: ldur w2, [x0, #0x57]
//  0x4d28a8: add x2, x2, HEAP, lsl #32
//  0x4d28ac: ldur w3, [x2, #0xb]
//  0x4d28b0: add x3, x3, HEAP, lsl #32
//  0x4d28b4: ldr BARRIER, [PP, #0x40]
//  0x4d28b8: cmp w3, w16
//  0x4d28bc: b.eq #0x4d296c
//  0x4d28c0: cmp w1, w22
//  0x4d28c4: b.eq #0x4d28e8
//  0x4d28c8: sbfx x2, x3, #1, #0x1f
//  0x4d28cc: tbz w3, #0, #0x4d28d4
//  0x4d28d0: ldur x2, [x3, #7]
//  0x4d28d4: cmp x2, #0
//  0x4d28d8: b.le #0x4d28e8
//  0x4d28dc: ldur w3, [x0, #0x2f]
//  0x4d28e0: add x3, x3, HEAP, lsl #32
//  0x4d28e4: tbnz w3, #4, #0x4d28f8
//  0x4d28e8: mov x0, NULL
//  0x4d28ec: mov SP, FP
//  0x4d28f0: ldp FP, LR, [SP], #0x10
//  0x4d28f4: ret 
//  0x4d28f8: ldur w3, [x0, #0x6b]
//  0x4d28fc: add x3, x3, HEAP, lsl #32
//  0x4d2900: bl #0x4d2978
//  0x4d2904: mov x0, NULL
//  0x4d2908: mov SP, FP
//  0x4d290c: ldp FP, LR, [SP], #0x10
//  0x4d2910: ret 
//  0x4d2914: bl #0x61faa8
//  0x4d2918: b #0x4d27b8
//  0x4d291c: add x9, PP, #0x11, lsl #12
//  0x4d2920: ldr x9, [x9, #0xc38]
//  0x4d2924: bl #0x6202a8
//  0x4d2928: add x9, PP, #0x11, lsl #12
//  0x4d292c: ldr x9, [x9, #0xc40]
//  0x4d2930: bl #0x6202a8
//  0x4d2934: str q2, [SP, #-0x10]!
//  0x4d2938: str x0, [SP, #-8]!
//  0x4d293c: fmov d0, d2
//  0x4d2940: mov x0, #0x40
//  0x4d2944: ldr LR, [PP, #0x3110]
//  0x4d2948: ldur LR, [LR, #7]
//  0x4d294c: blr LR
//  0x4d2950: mov x1, x0
//  0x4d2954: ldr x0, [SP], #8
//  0x4d2958: ldr q2, [SP], #0x10
//  0x4d295c: b #0x4d2828
//  0x4d2960: add x9, PP, #0x11, lsl #12
//  0x4d2964: ldr x9, [x9, #0xc40]
//  0x4d2968: bl #0x620258
//  0x4d296c: add x9, PP, #0x11, lsl #12
//  0x4d2970: ldr x9, [x9, #0xbc0]
//  0x4d2974: bl #0x620258
//
dynamic GameFruitNotifier_handleShowProcess() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic q2;
  dynamic w0;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d2790
  // frame: FP = SP // 0x4d2794
  // frame: SP = SP - 8 // 0x4d2798
  d0 = 4652007308841189376; // 0x4d27a0
  x0 = x1; // 0x4d27a4
  x17 = PP + 0x11000; // 0x4d279c
  local_m8 = x1; // 0x4d27a8
  BARRIER = mem(THR, 0x38); // 0x4d27ac
  if (SP <= BARRIER) {
    StackOverflowSharedWithFpuRegsStub_0x61faa8() /* 0x61faa8 */; // 0x4d2914
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d27c8
  w2 = mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4d27c0
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d27bc
  x2 = ((mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d27c4
  if (w2 == w16) {
    x9 = mem((PP + 0x11000), 0xc38) /* Field */; // 0x4d2920
    LateInitializationErrorSharedWithFpuRegsStub_0x6202a8() /* 0x6202a8 */; // 0x4d2924
  } else {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d27dc
    x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x4d27d8
    if (w3 == w16) {
      x9 = mem((PP + 0x11000), 0xc40) /* Field */; // 0x4d292c
      LateInitializationErrorSharedWithFpuRegsStub_0x6202a8() /* 0x6202a8 */; // 0x4d2930
    } else {
      x1 = (x2 >> 1) & 0x7fffffff; // 0x4d27e8
      if (x2 & (1 << 0) == 0) {
      } else {
        x1 = mem(x2, 7); // 0x4d27f0
      }
      x2 = (x3 >> 1) & 0x7fffffff; // 0x4d27f4
      if (x3 & (1 << 0) == 0) {
      } else {
        x2 = mem(x3, 7); // 0x4d27fc
      }
      d1 = toFloat((x1 - x2)); // 0x4d2804
      d2 = ((toFloat((x1 - x2))) / d0) /* float */; // 0x4d2808
      x3 = x1 - x2; // 0x4d2800
      if (condFlag("vs")) {
      } else {
        BARRIER = (toIntCeil(d2)) >> 0x1e; // 0x4d2818
        x1 = toIntCeil(d2); // 0x4d2814
        if (BARRIER != x1) {
          local_m10 = q2; // 0x4d2934
          local_m8 = x0; // 0x4d2938
          LR = mem((mem(PP, 0x3110) /* Stub */), 7); // 0x4d2948
          d0 = d2 /* bits */; // 0x4d293c
          x0 = 64; // 0x4d2940
          callIndirect(LR); // 0x4d294c
          q2 = local_0; // 0x4d2958
          x0 = local_0; // 0x4d2954
          x1 = x0; // 0x4d2950
        } else {
          x1 = x1 << 1; // 0x4d2824
        }
        x2 = (x1 >> 1) & 0x7fffffff; // 0x4d2828
        if (x1 & (1 << 0) == 0) {
        } else {
          x2 = mem(x1, 7); // 0x4d2830
        }
        x1 = x0; // 0x4d2834
        GameFruitNotifier_startCountDown() /* 0x4d2a74 */; // 0x4d2838
        w1 = mem((local_m8), 0x6b); // 0x4d2840
        x1 = ((mem((local_m8), 0x6b)) & 0xffffffff) + (HEAP << 32); // 0x4d2844
        x2 = local_m8; // 0x4d283c
        if (w1 == w22) {
          x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d2894
          GlobalKey_get_currentElement() /* 0x2c0440 */; // 0x4d2898
          BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d28b4
          w2 = mem((local_m8), 0x57); // 0x4d28a4
          w3 = mem((((mem((local_m8), 0x57)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x4d28ac
          x0 = local_m8; // 0x4d28a0
          x1 = x0; // 0x4d289c
          x2 = ((mem((local_m8), 0x57)) & 0xffffffff) + (HEAP << 32); // 0x4d28a8
          x3 = ((mem((((mem((local_m8), 0x57)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x4d28b0
          if (w3 == w16) {
            // duplicated branch body (target 0x4d296c terminates; the same code is emitted below)
            x9 = mem((PP + 0x11000), 0xbc0) /* Field */; // 0x4d2970
            LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d2974
          }
          if (w1 == w22) {
          } else {
            x2 = (x3 >> 1) & 0x7fffffff; // 0x4d28c8
            if (x3 & (1 << 0) == 0) {
            } else {
              x2 = mem(x3, 7); // 0x4d28d0
            }
            if (x2 <= 0) {
            } else {
              x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x4d28e0
              if (x3 & (1 << 4) != 0) {
                x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x4d28fc
                GameFruitWinnerDialog_showWinnerDialog() /* 0x4d2978 */; // 0x4d2900
                SP = FP; // 0x4d2908
                x0 = NULL; // 0x4d2904
                // frame: FP, LR, mem(SP), 0x10 // 0x4d290c
                return;
              }
            }
          }
          SP = FP; // 0x4d28ec
          x0 = NULL; // 0x4d28e8
          // frame: FP, LR, mem(SP), 0x10 // 0x4d28f0
          return;
        } else {
          BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d2860
          w3 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x23); // 0x4d2858
          x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d2854
          x3 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x23)) & 0xffffffff) + (HEAP << 32); // 0x4d285c
          if (w3 == w16) {
            x9 = mem((PP + 0x11000), 0xc40) /* Field */; // 0x4d2964
            LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d2968
          } else {
            x0 = x3; // 0x4d286c
            memSet(x1, 0xb, w0); // 0x4d2870
            if (x0 & (1 << 0) == 0) {
            } else {
              BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d2880
              w17 = mem(x0, -1); // 0x4d287c
              x16 = w16 & 0xffffffff; // 0x4d2878
              x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d287c
              if ((BARRIER & (HEAP >> 32)) == 0) {
              } else {
                WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d288c
              }
            }
          }
        }
        x9 = mem((PP + 0x11000), 0xbc0) /* Field */; // 0x4d2970
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d2974
      }
    }
  }
}

// GameFruitNotifier_startCountDown
// raw disassembly:
//  0x4d2a74: stp FP, LR, [SP, #-0x10]!
//  0x4d2a78: mov FP, SP
//  0x4d2a7c: mov x3, x1
//  0x4d2a80: ldr BARRIER, [THR, #0x38]
//  0x4d2a84: cmp SP, BARRIER
//  0x4d2a88: b.ls #0x4d2aa8
//  0x4d2a8c: ldur w1, [x3, #0x5b]
//  0x4d2a90: add x1, x1, HEAP, lsl #32
//  0x4d2a94: bl #0x4d2ab0
//  0x4d2a98: mov x0, NULL
//  0x4d2a9c: mov SP, FP
//  0x4d2aa0: ldp FP, LR, [SP], #0x10
//  0x4d2aa4: ret 
//  0x4d2aa8: bl #0x61fa28
//  0x4d2aac: b #0x4d2a8c
//
dynamic GameFruitNotifier_startCountDown() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d2a74
  BARRIER = mem(THR, 0x38); // 0x4d2a80
  // frame: FP = SP // 0x4d2a78
  x3 = x1; // 0x4d2a7c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d2aa8
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d2a90
  CountDownTimer_start() /* 0x4d2ab0 */; // 0x4d2a94
  SP = FP; // 0x4d2a9c
  x0 = NULL; // 0x4d2a98
  // frame: FP, LR, mem(SP), 0x10 // 0x4d2aa0
  return;
}

// GameFruitNotifier_handleDistributeProcess
// raw disassembly:
//  0x4d2c2c: stp FP, LR, [SP, #-0x10]!
//  0x4d2c30: mov FP, SP
//  0x4d2c34: sub SP, SP, #0x10
//  0x4d2c38: add x17, PP, #0x11, lsl #12
//  0x4d2c3c: ldr d0, [x17, #0xc30]
//  0x4d2c40: mov x0, x1
//  0x4d2c44: stur x1, [FP, #-0x10]
//  0x4d2c48: ldr BARRIER, [THR, #0x38]
//  0x4d2c4c: cmp SP, BARRIER
//  0x4d2c50: b.ls #0x4d2d7c
//  0x4d2c54: ldur w1, [x0, #0x57]
//  0x4d2c58: add x1, x1, HEAP, lsl #32
//  0x4d2c5c: ldur w2, [x1, #0x1b]
//  0x4d2c60: add x2, x2, HEAP, lsl #32
//  0x4d2c64: ldr BARRIER, [PP, #0x40]
//  0x4d2c68: cmp w2, w16
//  0x4d2c6c: b.eq #0x4d2d84
//  0x4d2c70: ldur w3, [x1, #0x1f]
//  0x4d2c74: add x3, x3, HEAP, lsl #32
//  0x4d2c78: ldr BARRIER, [PP, #0x40]
//  0x4d2c7c: cmp w3, w16
//  0x4d2c80: b.eq #0x4d2d90
//  0x4d2c84: sbfx x4, x2, #1, #0x1f
//  0x4d2c88: tbz w2, #0, #0x4d2c90
//  0x4d2c8c: ldur x4, [x2, #7]
//  0x4d2c90: sbfx x2, x3, #1, #0x1f
//  0x4d2c94: tbz w3, #0, #0x4d2c9c
//  0x4d2c98: ldur x2, [x3, #7]
//  0x4d2c9c: add x3, x4, x2
//  0x4d2ca0: ldur w2, [x1, #0x23]
//  0x4d2ca4: add x2, x2, HEAP, lsl #32
//  0x4d2ca8: ldr BARRIER, [PP, #0x40]
//  0x4d2cac: cmp w2, w16
//  0x4d2cb0: b.eq #0x4d2d9c
//  0x4d2cb4: sbfx x1, x2, #1, #0x1f
//  0x4d2cb8: tbz w2, #0, #0x4d2cc0
//  0x4d2cbc: ldur x1, [x2, #7]
//  0x4d2cc0: sub x2, x3, x1
//  0x4d2cc4: scvtf d1, x2
//  0x4d2cc8: fdiv d2, d1, d0
//  0x4d2ccc: fcmp d2, d2
//  0x4d2cd0: b.vs #0x4d2da8
//  0x4d2cd4: fcvtps x1, d2
//  0x4d2cd8: asr BARRIER, x1, #0x1e
//  0x4d2cdc: cmp BARRIER, x1, asr #63
//  0x4d2ce0: b.ne #0x4d2da8
//  0x4d2ce4: lsl x1, x1, #1
//  0x4d2ce8: sbfx x3, x1, #1, #0x1f
//  0x4d2cec: tbz w1, #0, #0x4d2cf4
//  0x4d2cf0: ldur x3, [x1, #7]
//  0x4d2cf4: mov x1, x0
//  0x4d2cf8: mov x2, x3
//  0x4d2cfc: stur x3, [FP, #-8]
//  0x4d2d00: bl #0x4d2a74
//  0x4d2d04: ldur x0, [FP, #-0x10]
//  0x4d2d08: ldur w1, [x0, #0x57]
//  0x4d2d0c: add x1, x1, HEAP, lsl #32
//  0x4d2d10: ldur w2, [x1, #0xf]
//  0x4d2d14: add x2, x2, HEAP, lsl #32
//  0x4d2d18: ldr BARRIER, [PP, #0x40]
//  0x4d2d1c: cmp w2, w16
//  0x4d2d20: b.eq #0x4d2dd4
//  0x4d2d24: ldur x1, [FP, #-8]
//  0x4d2d28: cmp x1, #2
//  0x4d2d2c: b.ge #0x4d2d4c
//  0x4d2d30: sbfx x1, x2, #1, #0x1f
//  0x4d2d34: tbz w2, #0, #0x4d2d3c
//  0x4d2d38: ldur x1, [x2, #7]
//  0x4d2d3c: mov x2, x1
//  0x4d2d40: mov x1, x0
//  0x4d2d44: bl #0x4d3170
//  0x4d2d48: b #0x4d2d64
//  0x4d2d4c: sbfx x3, x2, #1, #0x1f
//  0x4d2d50: tbz w2, #0, #0x4d2d58
//  0x4d2d54: ldur x3, [x2, #7]
//  0x4d2d58: mov x2, x1
//  0x4d2d5c: ldur x1, [FP, #-0x10]
//  0x4d2d60: bl #0x4d300c
//  0x4d2d64: ldur x1, [FP, #-0x10]
//  0x4d2d68: bl #0x4d2de0
//  0x4d2d6c: mov x0, NULL
//  0x4d2d70: mov SP, FP
//  0x4d2d74: ldp FP, LR, [SP], #0x10
//  0x4d2d78: ret 
//  0x4d2d7c: bl #0x61faa8
//  0x4d2d80: b #0x4d2c54
//  0x4d2d84: add x9, PP, #0x11, lsl #12
//  0x4d2d88: ldr x9, [x9, #0xc58]
//  0x4d2d8c: bl #0x6202a8
//  0x4d2d90: add x9, PP, #0x11, lsl #12
//  0x4d2d94: ldr x9, [x9, #0xc60]
//  0x4d2d98: bl #0x6202a8
//  0x4d2d9c: add x9, PP, #0x11, lsl #12
//  0x4d2da0: ldr x9, [x9, #0xc40]
//  0x4d2da4: bl #0x6202a8
//  0x4d2da8: str q2, [SP, #-0x10]!
//  0x4d2dac: str x0, [SP, #-8]!
//  0x4d2db0: fmov d0, d2
//  0x4d2db4: mov x0, #0x40
//  0x4d2db8: ldr LR, [PP, #0x3110]
//  0x4d2dbc: ldur LR, [LR, #7]
//  0x4d2dc0: blr LR
//  0x4d2dc4: mov x1, x0
//  0x4d2dc8: ldr x0, [SP], #8
//  0x4d2dcc: ldr q2, [SP], #0x10
//  0x4d2dd0: b #0x4d2ce8
//  0x4d2dd4: add x9, PP, #0x11, lsl #12
//  0x4d2dd8: ldr x9, [x9, #0xc68]
//  0x4d2ddc: bl #0x620258
//
dynamic GameFruitNotifier_handleDistributeProcess() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic q2;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d2c2c
  // frame: FP = SP // 0x4d2c30
  // frame: SP = SP - 0x10 // 0x4d2c34
  d0 = 4652007308841189376; // 0x4d2c3c
  x0 = x1; // 0x4d2c40
  x17 = PP + 0x11000; // 0x4d2c38
  local_m10 = x1; // 0x4d2c44
  BARRIER = mem(THR, 0x38); // 0x4d2c48
  if (SP <= BARRIER) {
    StackOverflowSharedWithFpuRegsStub_0x61faa8() /* 0x61faa8 */; // 0x4d2d7c
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d2c64
  w2 = mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x1b); // 0x4d2c5c
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4d2c58
  x2 = ((mem(((w1 & 0xffffffff) + (HEAP << 32)), 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x4d2c60
  if (w2 == w16) {
    x9 = mem((PP + 0x11000), 0xc58) /* Field */; // 0x4d2d88
    LateInitializationErrorSharedWithFpuRegsStub_0x6202a8() /* 0x6202a8 */; // 0x4d2d8c
  } else {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d2c78
    x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x4d2c74
    if (w3 == w16) {
      x9 = mem((PP + 0x11000), 0xc60) /* Field */; // 0x4d2d94
      LateInitializationErrorSharedWithFpuRegsStub_0x6202a8() /* 0x6202a8 */; // 0x4d2d98
    } else {
      x4 = (x2 >> 1) & 0x7fffffff; // 0x4d2c84
      if (x2 & (1 << 0) == 0) {
      } else {
        x4 = mem(x2, 7); // 0x4d2c8c
      }
      x2 = (x3 >> 1) & 0x7fffffff; // 0x4d2c90
      if (x3 & (1 << 0) == 0) {
      } else {
        x2 = mem(x3, 7); // 0x4d2c98
      }
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d2ca8
      w2 = mem(x1, 0x23); // 0x4d2ca0
      x2 = ((mem(x1, 0x23)) & 0xffffffff) + (HEAP << 32); // 0x4d2ca4
      x3 = x4 + x2; // 0x4d2c9c
      if (w2 == w16) {
        x9 = mem((PP + 0x11000), 0xc40) /* Field */; // 0x4d2da0
        LateInitializationErrorSharedWithFpuRegsStub_0x6202a8() /* 0x6202a8 */; // 0x4d2da4
      } else {
        x1 = (x2 >> 1) & 0x7fffffff; // 0x4d2cb4
        if (x2 & (1 << 0) == 0) {
        } else {
          x1 = mem(x2, 7); // 0x4d2cbc
        }
        d1 = toFloat((x3 - x1)); // 0x4d2cc4
        d2 = ((toFloat((x3 - x1))) / d0) /* float */; // 0x4d2cc8
        x2 = x3 - x1; // 0x4d2cc0
        if (condFlag("vs")) {
        } else {
          BARRIER = (toIntCeil(d2)) >> 0x1e; // 0x4d2cd8
          x1 = toIntCeil(d2); // 0x4d2cd4
          if (BARRIER != x1) {
            local_m10 = q2; // 0x4d2da8
            local_m8 = x0; // 0x4d2dac
            LR = mem((mem(PP, 0x3110) /* Stub */), 7); // 0x4d2dbc
            d0 = d2 /* bits */; // 0x4d2db0
            x0 = 64; // 0x4d2db4
            callIndirect(LR); // 0x4d2dc0
            q2 = local_0; // 0x4d2dcc
            x0 = local_0; // 0x4d2dc8
            x1 = x0; // 0x4d2dc4
          } else {
            x1 = x1 << 1; // 0x4d2ce4
          }
          x3 = (x1 >> 1) & 0x7fffffff; // 0x4d2ce8
          if (x1 & (1 << 0) == 0) {
          } else {
            x3 = mem(x1, 7); // 0x4d2cf0
          }
          x1 = x0; // 0x4d2cf4
          x2 = x3; // 0x4d2cf8
          local_m8 = x3; // 0x4d2cfc
          GameFruitNotifier_startCountDown() /* 0x4d2a74 */; // 0x4d2d00
          BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d2d18
          w1 = mem((local_m10), 0x57); // 0x4d2d08
          w2 = mem((((mem((local_m10), 0x57)) & 0xffffffff) + (HEAP << 32)), 0xf); // 0x4d2d10
          x0 = local_m10; // 0x4d2d04
          x1 = ((mem((local_m10), 0x57)) & 0xffffffff) + (HEAP << 32); // 0x4d2d0c
          x2 = ((mem((((mem((local_m10), 0x57)) & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d2d14
          if (w2 == w16) {
            x9 = mem((PP + 0x11000), 0xc68) /* Field */; // 0x4d2dd8
            LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d2ddc
          }
          x1 = local_m8; // 0x4d2d24
          if (x1 >= 2) {
            x3 = (x2 >> 1) & 0x7fffffff; // 0x4d2d4c
            if (x2 & (1 << 0) == 0) {
            } else {
              x3 = mem(x2, 7); // 0x4d2d54
            }
            x1 = local_m10; // 0x4d2d5c
            x2 = x1; // 0x4d2d58
            GameFruitNotifier_startLotteryAnimation() /* 0x4d300c */; // 0x4d2d60
          } else {
            x1 = (x2 >> 1) & 0x7fffffff; // 0x4d2d30
            if (x2 & (1 << 0) == 0) {
            } else {
              x1 = mem(x2, 7); // 0x4d2d38
            }
            x1 = x0; // 0x4d2d40
            x2 = x1; // 0x4d2d3c
            GameFruitNotifier_updateLotteryIndex() /* 0x4d3170 */; // 0x4d2d44
          }
          x1 = local_m10; // 0x4d2d64
          GameFruitNotifier_randomRequestWinnerInfo() /* 0x4d2de0 */; // 0x4d2d68
          SP = FP; // 0x4d2d70
          x0 = NULL; // 0x4d2d6c
          // frame: FP, LR, mem(SP), 0x10 // 0x4d2d74
          return;
        }
      }
    }
  }
}

// GameFruitNotifier_randomRequestWinnerInfo
// raw disassembly:
//  0x4d2de0: stp FP, LR, [SP, #-0x10]!
//  0x4d2de4: mov FP, SP
//  0x4d2de8: sub SP, SP, #0x20
//  0x4d2dec: stur x1, [FP, #-8]
//  0x4d2df0: ldr BARRIER, [THR, #0x38]
//  0x4d2df4: cmp SP, BARRIER
//  0x4d2df8: b.ls #0x4d2ed8
//  0x4d2dfc: mov x1, #2
//  0x4d2e00: bl #0x61e890
//  0x4d2e04: mov x1, x0
//  0x4d2e08: ldur x0, [FP, #-8]
//  0x4d2e0c: stur x1, [FP, #-0x18]
//  0x4d2e10: stur w0, [x1, #0xf]
//  0x4d2e14: stur w22, [x0, #0x6b]
//  0x4d2e18: ldur w2, [x0, #0x57]
//  0x4d2e1c: add x2, x2, HEAP, lsl #32
//  0x4d2e20: ldur w0, [x2, #0xb]
//  0x4d2e24: add x0, x0, HEAP, lsl #32
//  0x4d2e28: ldr BARRIER, [PP, #0x40]
//  0x4d2e2c: cmp w0, w16
//  0x4d2e30: b.eq #0x4d2ee0
//  0x4d2e34: stur w0, [x1, #0x13]
//  0x4d2e38: ldur w3, [x2, #0x27]
//  0x4d2e3c: add x3, x3, HEAP, lsl #32
//  0x4d2e40: ldr BARRIER, [PP, #0x40]
//  0x4d2e44: cmp w3, w16
//  0x4d2e48: b.eq #0x4d2eec
//  0x4d2e4c: sbfx x2, x0, #1, #0x1f
//  0x4d2e50: tbz w0, #0, #0x4d2e58
//  0x4d2e54: ldur x2, [x0, #7]
//  0x4d2e58: cmp x2, #0
//  0x4d2e5c: b.le #0x4d2e74
//  0x4d2e60: sbfx x0, x3, #1, #0x1f
//  0x4d2e64: tbz w3, #0, #0x4d2e6c
//  0x4d2e68: ldur x0, [x3, #7]
//  0x4d2e6c: cmp x0, #0
//  0x4d2e70: b.gt #0x4d2e84
//  0x4d2e74: mov x0, NULL
//  0x4d2e78: mov SP, FP
//  0x4d2e7c: ldp FP, LR, [SP], #0x10
//  0x4d2e80: ret 
//  0x4d2e84: mov BARRIER, #0x3e8
//  0x4d2e88: mul x2, x0, BARRIER
//  0x4d2e8c: stur x2, [FP, #-0x10]
//  0x4d2e90: bl #0x28d374
//  0x4d2e94: mov x3, x0
//  0x4d2e98: ldur x0, [FP, #-0x10]
//  0x4d2e9c: stur x3, [FP, #-8]
//  0x4d2ea0: stur x0, [x3, #7]
//  0x4d2ea4: ldur x2, [FP, #-0x18]
//  0x4d2ea8: add x1, PP, #0x11, lsl #12
//  0x4d2eac: ldr x1, [x1, #0xc70]
//  0x4d2eb0: bl #0x61ec54
//  0x4d2eb4: str x0, [SP]
//  0x4d2eb8: ldur x2, [FP, #-8]
//  0x4d2ebc: ldr x1, [PP, #0xcf0]
//  0x4d2ec0: ldr x4, [PP, #0x280]
//  0x4d2ec4: bl #0x3b5668
//  0x4d2ec8: mov x0, NULL
//  0x4d2ecc: mov SP, FP
//  0x4d2ed0: ldp FP, LR, [SP], #0x10
//  0x4d2ed4: ret 
//  0x4d2ed8: bl #0x61fa28
//  0x4d2edc: b #0x4d2dfc
//  0x4d2ee0: add x9, PP, #0x11, lsl #12
//  0x4d2ee4: ldr x9, [x9, #0xbc0]
//  0x4d2ee8: bl #0x620258
//  0x4d2eec: add x9, PP, #0x11, lsl #12
//  0x4d2ef0: ldr x9, [x9, #0xc78]
//  0x4d2ef4: bl #0x620258
//
dynamic GameFruitNotifier_randomRequestWinnerInfo() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d2de0
  // frame: FP = SP // 0x4d2de4
  // frame: SP = SP - 0x20 // 0x4d2de8
  local_m8 = x1; // 0x4d2dec
  BARRIER = mem(THR, 0x38); // 0x4d2df0
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d2ed8
  }
  x1 = 2; // 0x4d2dfc
  sub_0x61e890(); // 0x4d2e00
  x0 = local_m8; // 0x4d2e08
  x1 = x0; // 0x4d2e04
  local_m18 = x1; // 0x4d2e0c
  memSet(x1, 0xf, w0); // 0x4d2e10
  memSet(x0, 0x6b, w22); // 0x4d2e14
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d2e28
  w0 = mem((((mem(x0, 0x57)) & 0xffffffff) + (HEAP << 32)), 0xb); // 0x4d2e20
  w2 = mem(x0, 0x57); // 0x4d2e18
  x0 = ((mem((((mem(x0, 0x57)) & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) + (HEAP << 32); // 0x4d2e24
  x2 = ((mem(x0, 0x57)) & 0xffffffff) + (HEAP << 32); // 0x4d2e1c
  if (w0 == w16) {
    x9 = mem((PP + 0x11000), 0xbc0) /* Field */; // 0x4d2ee4
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d2ee8
  } else {
    memSet(x1, 0x13, w0); // 0x4d2e34
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d2e40
    w3 = mem(x2, 0x27); // 0x4d2e38
    x3 = ((mem(x2, 0x27)) & 0xffffffff) + (HEAP << 32); // 0x4d2e3c
    if (w3 == w16) {
      // duplicated branch body (target 0x4d2eec terminates; the same code is emitted below)
      x9 = mem((PP + 0x11000), 0xc78) /* Field */; // 0x4d2ef0
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d2ef4
    }
    x2 = (x0 >> 1) & 0x7fffffff; // 0x4d2e4c
    if (x0 & (1 << 0) == 0) {
    } else {
      x2 = mem(x0, 7); // 0x4d2e54
    }
    if (x2 <= 0) {
    } else {
      x0 = (x3 >> 1) & 0x7fffffff; // 0x4d2e60
      if (x3 & (1 << 0) == 0) {
      } else {
        x0 = mem(x3, 7); // 0x4d2e68
      }
      if (x0 > 0) {
        BARRIER = 1000; // 0x4d2e84
        x2 = x0 * BARRIER; // 0x4d2e88
        local_m10 = x2; // 0x4d2e8c
        AllocationStub_Duration() /* 0x28d374 */; // 0x4d2e90
        x0 = local_m10; // 0x4d2e98
        x3 = x0; // 0x4d2e94
        local_m8 = x3; // 0x4d2e9c
        memSet(x3, 7, x0); // 0x4d2ea0
        x1 = mem((PP + 0x11000), 0xc70) /* Function */; // 0x4d2eac
        x2 = local_m18; // 0x4d2ea4
        AllocationStub__Closure() /* 0x61ec54 */; // 0x4d2eb0
        local_0 = x0; // 0x4d2eb4
        x1 = mem(PP, 0xcf0) /* TypeArguments */; // 0x4d2ebc
        x2 = local_m8; // 0x4d2eb8
        x4 = mem(PP, 0x280) /* ImmutableArray */; // 0x4d2ec0
        Future_factory_ctor_delayed() /* 0x3b5668 */; // 0x4d2ec4
        SP = FP; // 0x4d2ecc
        x0 = NULL; // 0x4d2ec8
        // frame: FP, LR, mem(SP), 0x10 // 0x4d2ed0
        return;
      }
    }
    SP = FP; // 0x4d2e78
    x0 = NULL; // 0x4d2e74
    // frame: FP, LR, mem(SP), 0x10 // 0x4d2e7c
    return;
  }
  x9 = mem((PP + 0x11000), 0xc78) /* Field */; // 0x4d2ef0
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d2ef4
}

// GameFruitNotifier_anon_closure_9
// raw disassembly:
//  0x4d2ef8: stp FP, LR, [SP, #-0x10]!
//  0x4d2efc: mov FP, SP
//  0x4d2f00: sub SP, SP, #0x10
//  0x4d2f04: ldr x0, [FP, #0x10]
//  0x4d2f08: ldur w3, [x0, #0x17]
//  0x4d2f0c: add x3, x3, HEAP, lsl #32
//  0x4d2f10: stur x3, [FP, #-0x10]
//  0x4d2f14: ldr BARRIER, [THR, #0x38]
//  0x4d2f18: cmp SP, BARRIER
//  0x4d2f1c: b.ls #0x4d2fa0
//  0x4d2f20: ldur w0, [x3, #0xf]
//  0x4d2f24: add x0, x0, HEAP, lsl #32
//  0x4d2f28: ldur w1, [x0, #0x2f]
//  0x4d2f2c: add x1, x1, HEAP, lsl #32
//  0x4d2f30: tbnz w1, #4, #0x4d2f44
//  0x4d2f34: mov x0, NULL
//  0x4d2f38: mov SP, FP
//  0x4d2f3c: ldp FP, LR, [SP], #0x10
//  0x4d2f40: ret 
//  0x4d2f44: ldur w0, [x3, #0x13]
//  0x4d2f48: add x0, x0, HEAP, lsl #32
//  0x4d2f4c: sbfx x4, x0, #1, #0x1f
//  0x4d2f50: tbz w0, #0, #0x4d2f58
//  0x4d2f54: ldur x4, [x0, #7]
//  0x4d2f58: mov x2, x3
//  0x4d2f5c: stur x4, [FP, #-8]
//  0x4d2f60: add x1, PP, #0x11, lsl #12
//  0x4d2f64: ldr x1, [x1, #0xc80]
//  0x4d2f68: bl #0x61ec54
//  0x4d2f6c: ldur x2, [FP, #-0x10]
//  0x4d2f70: add x1, PP, #0x11, lsl #12
//  0x4d2f74: ldr x1, [x1, #0xc88]
//  0x4d2f78: stur x0, [FP, #-0x10]
//  0x4d2f7c: bl #0x61ec54
//  0x4d2f80: ldur x1, [FP, #-8]
//  0x4d2f84: ldur x2, [FP, #-0x10]
//  0x4d2f88: mov x3, x0
//  0x4d2f8c: bl #0x4444d0
//  0x4d2f90: mov x0, NULL
//  0x4d2f94: mov SP, FP
//  0x4d2f98: ldp FP, LR, [SP], #0x10
//  0x4d2f9c: ret 
//  0x4d2fa0: bl #0x61fa28
//  0x4d2fa4: b #0x4d2f20
//
dynamic GameFruitNotifier_anon_closure_9() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d2ef8
  // frame: FP = SP // 0x4d2efc
  // frame: SP = SP - 0x10 // 0x4d2f00
  w3 = mem((local_10), 0x17); // 0x4d2f08
  x0 = local_10; // 0x4d2f04
  x3 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d2f0c
  local_m10 = x3; // 0x4d2f10
  BARRIER = mem(THR, 0x38); // 0x4d2f14
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d2fa0
  }
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x2f); // 0x4d2f28
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d2f24
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x2f)) & 0xffffffff) + (HEAP << 32); // 0x4d2f2c
  if (x1 & (1 << 4) == 0) {
    SP = FP; // 0x4d2f38
    x0 = NULL; // 0x4d2f34
    // frame: FP, LR, mem(SP), 0x10 // 0x4d2f3c
    return;
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d2f48
  x4 = (((w0 & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x4d2f4c
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = mem(x0, 7); // 0x4d2f54
  }
  x2 = x3; // 0x4d2f58
  local_m8 = x4; // 0x4d2f5c
  x1 = mem((PP + 0x11000), 0xc80) /* Function */; // 0x4d2f64
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d2f68
  x1 = mem((PP + 0x11000), 0xc88) /* Function */; // 0x4d2f74
  x2 = local_m10; // 0x4d2f6c
  local_m10 = x0; // 0x4d2f78
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d2f7c
  x1 = local_m8; // 0x4d2f80
  x2 = local_m10; // 0x4d2f84
  x3 = x0; // 0x4d2f88
  GameApiService_getGameFruitResultDialog() /* 0x4444d0 */; // 0x4d2f8c
  SP = FP; // 0x4d2f94
  x0 = NULL; // 0x4d2f90
  // frame: FP, LR, mem(SP), 0x10 // 0x4d2f98
  return;
}

// GameFruitNotifier_anon_closure_10
// raw disassembly:
//  0x4d2fa8: ldr x1, [SP]
//  0x4d2fac: ldur w2, [x1, #0x17]
//  0x4d2fb0: add x2, x2, HEAP, lsl #32
//  0x4d2fb4: ldur w1, [x2, #0xf]
//  0x4d2fb8: add x1, x1, HEAP, lsl #32
//  0x4d2fbc: stur w22, [x1, #0x6b]
//  0x4d2fc0: mov x0, NULL
//  0x4d2fc4: ret 
//
dynamic GameFruitNotifier_anon_closure_10() {
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  w1 = mem((((mem((local_0), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf); // 0x4d2fb4
  w2 = mem((local_0), 0x17); // 0x4d2fac
  x1 = ((mem((((mem((local_0), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d2fb8
  x2 = ((mem((local_0), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d2fb0
  memSet(x1, 0x6b, w22); // 0x4d2fbc
  x0 = NULL; // 0x4d2fc0
  return x0;
}

// GameFruitNotifier_anon_closure_11
// raw disassembly:
//  0x4d2fc8: ldr x1, [SP, #8]
//  0x4d2fcc: ldur w2, [x1, #0x17]
//  0x4d2fd0: add x2, x2, HEAP, lsl #32
//  0x4d2fd4: ldur w1, [x2, #0xf]
//  0x4d2fd8: add x1, x1, HEAP, lsl #32
//  0x4d2fdc: ldr x0, [SP]
//  0x4d2fe0: stur w0, [x1, #0x6b]
//  0x4d2fe4: ldurb w16, [x1, #-1]
//  0x4d2fe8: ldurb w17, [x0, #-1]
//  0x4d2fec: and BARRIER, x17, BARRIER, lsr #2
//  0x4d2ff0: tst BARRIER, HEAP, lsr #32
//  0x4d2ff4: b.eq #0x4d3004
//  0x4d2ff8: str LR, [SP, #-8]!
//  0x4d2ffc: bl #0x61e04c
//  0x4d3000: ldr LR, [SP], #8
//  0x4d3004: mov x0, NULL
//  0x4d3008: ret 
//
dynamic GameFruitNotifier_anon_closure_11() {
  dynamic BARRIER;
  dynamic LR;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  w1 = mem((((mem((local_8), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf); // 0x4d2fd4
  w2 = mem((local_8), 0x17); // 0x4d2fcc
  x1 = ((mem((((mem((local_8), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d2fd8
  x2 = ((mem((local_8), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d2fd0
  x0 = local_0; // 0x4d2fdc
  memSet(x1, 0x6b, w0); // 0x4d2fe0
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d2fec
  w16 = mem(x1, -1); // 0x4d2fe4
  w17 = mem(x0, -1); // 0x4d2fe8
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d2fe4
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d2fe8
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    local_m8 = LR; // 0x4d2ff8
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d2ffc
    LR = local_0; // 0x4d3000
  }
  x0 = NULL; // 0x4d3004
  return x0;
}

// GameFruitNotifier_startLotteryAnimation
// raw disassembly:
//  0x4d300c: stp FP, LR, [SP, #-0x10]!
//  0x4d3010: mov FP, SP
//  0x4d3014: sub SP, SP, #0x30
//  0x4d3018: mov x0, x1
//  0x4d301c: stur x1, [FP, #-0x18]
//  0x4d3020: stur x2, [FP, #-0x20]
//  0x4d3024: ldr BARRIER, [THR, #0x38]
//  0x4d3028: cmp SP, BARRIER
//  0x4d302c: b.ls #0x4d315c
//  0x4d3030: ldur w4, [x0, #0x63]
//  0x4d3034: add x4, x4, HEAP, lsl #32
//  0x4d3038: stur x4, [FP, #-0x10]
//  0x4d303c: cmp x2, #2
//  0x4d3040: b.lt #0x4d304c
//  0x4d3044: cmp w4, w22
//  0x4d3048: b.ne #0x4d305c
//  0x4d304c: mov x0, NULL
//  0x4d3050: mov SP, FP
//  0x4d3054: ldp FP, LR, [SP], #0x10
//  0x4d3058: ret 
//  0x4d305c: sub x1, x2, #2
//  0x4d3060: lsl x5, x1, #3
//  0x4d3064: lsl x1, x5, #1
//  0x4d3068: add x5, x1, x3
//  0x4d306c: stur x5, [FP, #-8]
//  0x4d3070: ldr x1, [PP, #0x908]
//  0x4d3074: bl #0x4d3164
//  0x4d3078: mov x2, x0
//  0x4d307c: stur x2, [FP, #-0x28]
//  0x4d3080: stur wzr, [x2, #0xb]
//  0x4d3084: ldur x3, [FP, #-8]
//  0x4d3088: sbfiz x0, x3, #1, #0x1f
//  0x4d308c: cmp x3, x0, asr #1
//  0x4d3090: b.eq #0x4d309c
//  0x4d3094: bl #0x61fba8
//  0x4d3098: stur x3, [x0, #7]
//  0x4d309c: stur w0, [x2, #0xf]
//  0x4d30a0: ldr x1, [PP, #0x4b60]
//  0x4d30a4: bl #0x3ed5a8
//  0x4d30a8: mov x1, x0
//  0x4d30ac: ldur x3, [FP, #-0x10]
//  0x4d30b0: add x2, PP, #0x11, lsl #12
//  0x4d30b4: ldr x2, [x2, #0xd48]
//  0x4d30b8: stur x0, [FP, #-0x30]
//  0x4d30bc: ldr x4, [PP, #0x2e0]
//  0x4d30c0: bl #0x3ed464
//  0x4d30c4: ldur x1, [FP, #-0x28]
//  0x4d30c8: ldur x2, [FP, #-0x30]
//  0x4d30cc: bl #0x3dfb24
//  0x4d30d0: ldur x1, [FP, #-0x18]
//  0x4d30d4: stur w0, [x1, #0x67]
//  0x4d30d8: ldurb w16, [x1, #-1]
//  0x4d30dc: ldurb w17, [x0, #-1]
//  0x4d30e0: and BARRIER, x17, BARRIER, lsr #2
//  0x4d30e4: tst BARRIER, HEAP, lsr #32
//  0x4d30e8: b.eq #0x4d30f0
//  0x4d30ec: bl #0x61e04c
//  0x4d30f0: ldur x1, [FP, #-0x10]
//  0x4d30f4: bl #0x4d23e4
//  0x4d30f8: ldur x0, [FP, #-0x20]
//  0x4d30fc: sub x1, x0, #1
//  0x4d3100: mov BARRIER, #0x4240
//  0x4d3104: movk BARRIER, #0xf, lsl #16
//  0x4d3108: mul x0, x1, BARRIER
//  0x4d310c: stur x0, [FP, #-8]
//  0x4d3110: bl #0x28d374
//  0x4d3114: mov x1, x0
//  0x4d3118: ldur x0, [FP, #-8]
//  0x4d311c: stur x0, [x1, #7]
//  0x4d3120: mov x0, x1
//  0x4d3124: ldur x1, [FP, #-0x10]
//  0x4d3128: stur w0, [x1, #0x27]
//  0x4d312c: ldurb w16, [x1, #-1]
//  0x4d3130: ldurb w17, [x0, #-1]
//  0x4d3134: and BARRIER, x17, BARRIER, lsr #2
//  0x4d3138: tst BARRIER, HEAP, lsr #32
//  0x4d313c: b.eq #0x4d3144
//  0x4d3140: bl #0x61e04c
//  0x4d3144: ldr x4, [PP, #0x4c0]
//  0x4d3148: bl #0x363c64
//  0x4d314c: mov x0, NULL
//  0x4d3150: mov SP, FP
//  0x4d3154: ldp FP, LR, [SP], #0x10
//  0x4d3158: ret 
//  0x4d315c: bl #0x61fa28
//  0x4d3160: b #0x4d3030
//
dynamic GameFruitNotifier_startLotteryAnimation() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d300c
  // frame: FP = SP // 0x4d3010
  // frame: SP = SP - 0x30 // 0x4d3014
  x0 = x1; // 0x4d3018
  local_m18 = x1; // 0x4d301c
  local_m20 = x2; // 0x4d3020
  BARRIER = mem(THR, 0x38); // 0x4d3024
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d315c
  }
  x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x4d3034
  local_m10 = x4; // 0x4d3038
  if (x2 < 2) {
  } else {
    if (w4 == w22) {
      // duplicated branch body (target 0x4d304c terminates; the same code is emitted below)
      SP = FP; // 0x4d3050
      x0 = NULL; // 0x4d304c
      // frame: FP, LR, mem(SP), 0x10 // 0x4d3054
      return;
    }
    x1 = ((x2 - 2) << 3) << 1; // 0x4d3064
    x5 = (((x2 - 2) << 3) << 1) + x3; // 0x4d3068
    local_m8 = x5; // 0x4d306c
    x1 = mem(PP, 0x908) /* TypeArguments */; // 0x4d3070
    AllocationStub_StepTween() /* 0x4d3164 */; // 0x4d3074
    x2 = x0; // 0x4d3078
    local_m28 = x2; // 0x4d307c
    memSet(x2, 0xb, wzr); // 0x4d3080
    x0 = (((local_m8) & 0x7fffffff) << 1) /* signed */; // 0x4d3088
    x3 = local_m8; // 0x4d3084
    if (x3 == x0) {
    } else {
      AllocationStub__Mint() /* 0x61fba8 */; // 0x4d3094
      memSet(x0, 7, x3); // 0x4d3098
    }
    memSet(x2, 0xf, w0); // 0x4d309c
    x1 = mem(PP, 0x4b60) /* TypeArguments */; // 0x4d30a0
    AllocationStub_CurvedAnimation() /* 0x3ed5a8 */; // 0x4d30a4
    x1 = x0; // 0x4d30a8
    x2 = mem((PP + 0x11000), 0xd48) /* Obj!Cubic@11c27  */; // 0x4d30b4
    x3 = local_m10; // 0x4d30ac
    local_m30 = x0; // 0x4d30b8
    x4 = mem(PP, 0x2e0) /* ImmutableArray */; // 0x4d30bc
    CurvedAnimation_ctor() /* 0x3ed464 */; // 0x4d30c0
    x1 = local_m28; // 0x4d30c4
    x2 = local_m30; // 0x4d30c8
    Animatable_animate() /* 0x3dfb24 */; // 0x4d30cc
    x1 = local_m18; // 0x4d30d0
    memSet(x1, 0x67, w0); // 0x4d30d4
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d30e0
    w16 = mem(x1, -1); // 0x4d30d8
    w17 = mem(x0, -1); // 0x4d30dc
    x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d30d8
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d30dc
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d30ec
    }
    x1 = local_m10; // 0x4d30f0
    AnimationController_reset() /* 0x4d23e4 */; // 0x4d30f4
    BARRIER = (BARRIER & 0xffff) | 0xf0000; // 0x4d3104
    x0 = ((local_m20) - 1) * ((BARRIER & 0xffff) | 0xf0000); // 0x4d3108
    x1 = (local_m20) - 1; // 0x4d30fc
    local_m8 = x0; // 0x4d310c
    AllocationStub_Duration() /* 0x28d374 */; // 0x4d3110
    x0 = local_m8; // 0x4d3118
    x1 = x0; // 0x4d3114
    memSet(x1, 7, x0); // 0x4d311c
    x0 = x1; // 0x4d3120
    x1 = local_m10; // 0x4d3124
    memSet(x1, 0x27, w0); // 0x4d3128
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d3134
    w16 = mem(x1, -1); // 0x4d312c
    w17 = mem(x0, -1); // 0x4d3130
    x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d312c
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d3130
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d3140
    }
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4d3144
    AnimationController_forward() /* 0x363c64 */; // 0x4d3148
    SP = FP; // 0x4d3150
    x0 = NULL; // 0x4d314c
    // frame: FP, LR, mem(SP), 0x10 // 0x4d3154
    return;
  }
  SP = FP; // 0x4d3050
  x0 = NULL; // 0x4d304c
  // frame: FP, LR, mem(SP), 0x10 // 0x4d3054
  return;
}

// GameFruitNotifier_updateLotteryIndex
// raw disassembly:
//  0x4d3170: stp FP, LR, [SP, #-0x10]!
//  0x4d3174: mov FP, SP
//  0x4d3178: ldr BARRIER, [THR, #0x38]
//  0x4d317c: cmp SP, BARRIER
//  0x4d3180: b.ls #0x4d31c4
//  0x4d3184: ldur w0, [x1, #0x53]
//  0x4d3188: add x0, x0, HEAP, lsl #32
//  0x4d318c: add BARRIER, PP, #0x11, lsl #12
//  0x4d3190: ldr BARRIER, [BARRIER, #0xd60]
//  0x4d3194: cmp w0, w16
//  0x4d3198: b.eq #0x4d31ac
//  0x4d319c: mov x0, NULL
//  0x4d31a0: mov SP, FP
//  0x4d31a4: ldp FP, LR, [SP], #0x10
//  0x4d31a8: ret 
//  0x4d31ac: stur x2, [x1, #0x4b]
//  0x4d31b0: bl #0x3ac980
//  0x4d31b4: mov x0, NULL
//  0x4d31b8: mov SP, FP
//  0x4d31bc: ldp FP, LR, [SP], #0x10
//  0x4d31c0: ret 
//  0x4d31c4: bl #0x61fa28
//  0x4d31c8: b #0x4d3184
//
dynamic GameFruitNotifier_updateLotteryIndex() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d3170
  BARRIER = mem(THR, 0x38); // 0x4d3178
  // frame: FP = SP // 0x4d3174
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d31c4
  }
  BARRIER = mem((PP + 0x11000), 0xd60) /* Obj!GameFruitProcessState@12163  */; // 0x4d3190
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d3188
  if (w0 == w16) {
    memSet(x1, 0x4b, x2); // 0x4d31ac
    SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x4d31b0
    SP = FP; // 0x4d31b8
    x0 = NULL; // 0x4d31b4
    // frame: FP, LR, mem(SP), 0x10 // 0x4d31bc
    return;
  }
  SP = FP; // 0x4d31a0
  x0 = NULL; // 0x4d319c
  // frame: FP, LR, mem(SP), 0x10 // 0x4d31a4
  return;
}

// GameFruitNotifier_handleBetProcess
// raw disassembly:
//  0x4d31cc: stp FP, LR, [SP, #-0x10]!
//  0x4d31d0: mov FP, SP
//  0x4d31d4: add x17, PP, #0x11, lsl #12
//  0x4d31d8: ldr d0, [x17, #0xc30]
//  0x4d31dc: ldr BARRIER, [THR, #0x38]
//  0x4d31e0: cmp SP, BARRIER
//  0x4d31e4: b.ls #0x4d3278
//  0x4d31e8: ldur w0, [x1, #0x57]
//  0x4d31ec: add x0, x0, HEAP, lsl #32
//  0x4d31f0: ldur w2, [x0, #0x1b]
//  0x4d31f4: add x2, x2, HEAP, lsl #32
//  0x4d31f8: ldr BARRIER, [PP, #0x40]
//  0x4d31fc: cmp w2, w16
//  0x4d3200: b.eq #0x4d3280
//  0x4d3204: ldur w3, [x0, #0x23]
//  0x4d3208: add x3, x3, HEAP, lsl #32
//  0x4d320c: ldr BARRIER, [PP, #0x40]
//  0x4d3210: cmp w3, w16
//  0x4d3214: b.eq #0x4d328c
//  0x4d3218: sbfx x0, x2, #1, #0x1f
//  0x4d321c: tbz w2, #0, #0x4d3224
//  0x4d3220: ldur x0, [x2, #7]
//  0x4d3224: sbfx x2, x3, #1, #0x1f
//  0x4d3228: tbz w3, #0, #0x4d3230
//  0x4d322c: ldur x2, [x3, #7]
//  0x4d3230: sub x3, x0, x2
//  0x4d3234: scvtf d1, x3
//  0x4d3238: fdiv d2, d1, d0
//  0x4d323c: fcmp d2, d2
//  0x4d3240: b.vs #0x4d3298
//  0x4d3244: fcvtps x0, d2
//  0x4d3248: asr BARRIER, x0, #0x1e
//  0x4d324c: cmp BARRIER, x0, asr #63
//  0x4d3250: b.ne #0x4d3298
//  0x4d3254: lsl x0, x0, #1
//  0x4d3258: sbfx x2, x0, #1, #0x1f
//  0x4d325c: tbz w0, #0, #0x4d3264
//  0x4d3260: ldur x2, [x0, #7]
//  0x4d3264: bl #0x4d2a74
//  0x4d3268: mov x0, NULL
//  0x4d326c: mov SP, FP
//  0x4d3270: ldp FP, LR, [SP], #0x10
//  0x4d3274: ret 
//  0x4d3278: bl #0x61faa8
//  0x4d327c: b #0x4d31e8
//  0x4d3280: add x9, PP, #0x11, lsl #12
//  0x4d3284: ldr x9, [x9, #0xc58]
//  0x4d3288: bl #0x6202a8
//  0x4d328c: add x9, PP, #0x11, lsl #12
//  0x4d3290: ldr x9, [x9, #0xc40]
//  0x4d3294: bl #0x6202a8
//  0x4d3298: str q2, [SP, #-0x10]!
//  0x4d329c: str x1, [SP, #-8]!
//  0x4d32a0: fmov d0, d2
//  0x4d32a4: mov x0, #0x40
//  0x4d32a8: ldr LR, [PP, #0x3110]
//  0x4d32ac: ldur LR, [LR, #7]
//  0x4d32b0: blr LR
//  0x4d32b4: ldr x1, [SP], #8
//  0x4d32b8: ldr q2, [SP], #0x10
//  0x4d32bc: b #0x4d3258
//
dynamic GameFruitNotifier_handleBetProcess() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic q2;
  dynamic w0;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d31cc
  BARRIER = mem(THR, 0x38); // 0x4d31dc
  // frame: FP = SP // 0x4d31d0
  d0 = 4652007308841189376; // 0x4d31d8
  x17 = PP + 0x11000; // 0x4d31d4
  if (SP <= BARRIER) {
    StackOverflowSharedWithFpuRegsStub_0x61faa8() /* 0x61faa8 */; // 0x4d3278
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d31f8
  w2 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x1b); // 0x4d31f0
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d31ec
  x2 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x1b)) & 0xffffffff) + (HEAP << 32); // 0x4d31f4
  if (w2 == w16) {
    x9 = mem((PP + 0x11000), 0xc58) /* Field */; // 0x4d3284
    LateInitializationErrorSharedWithFpuRegsStub_0x6202a8() /* 0x6202a8 */; // 0x4d3288
  } else {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d320c
    x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x4d3208
    if (w3 == w16) {
      x9 = mem((PP + 0x11000), 0xc40) /* Field */; // 0x4d3290
      LateInitializationErrorSharedWithFpuRegsStub_0x6202a8() /* 0x6202a8 */; // 0x4d3294
    } else {
      x0 = (x2 >> 1) & 0x7fffffff; // 0x4d3218
      if (x2 & (1 << 0) == 0) {
      } else {
        x0 = mem(x2, 7); // 0x4d3220
      }
      x2 = (x3 >> 1) & 0x7fffffff; // 0x4d3224
      if (x3 & (1 << 0) == 0) {
      } else {
        x2 = mem(x3, 7); // 0x4d322c
      }
      d1 = toFloat((x0 - x2)); // 0x4d3234
      d2 = ((toFloat((x0 - x2))) / d0) /* float */; // 0x4d3238
      x3 = x0 - x2; // 0x4d3230
      if (condFlag("vs")) {
      } else {
        BARRIER = (toIntCeil(d2)) >> 0x1e; // 0x4d3248
        x0 = toIntCeil(d2); // 0x4d3244
        if (BARRIER != x0) {
          local_m10 = q2; // 0x4d3298
          local_m8 = x1; // 0x4d329c
          LR = mem((mem(PP, 0x3110) /* Stub */), 7); // 0x4d32ac
          d0 = d2 /* bits */; // 0x4d32a0
          x0 = 64; // 0x4d32a4
          callIndirect(LR); // 0x4d32b0
          q2 = local_0; // 0x4d32b8
          x1 = local_0; // 0x4d32b4
        } else {
          x0 = x0 << 1; // 0x4d3254
        }
        x2 = (x0 >> 1) & 0x7fffffff; // 0x4d3258
        if (x0 & (1 << 0) == 0) {
        } else {
          x2 = mem(x0, 7); // 0x4d3260
        }
        GameFruitNotifier_startCountDown() /* 0x4d2a74 */; // 0x4d3264
        SP = FP; // 0x4d326c
        x0 = NULL; // 0x4d3268
        // frame: FP, LR, mem(SP), 0x10 // 0x4d3270
        return;
      }
    }
  }
}

// GameFruitNotifier_anon_closure_12
// raw disassembly:
//  0x4d32c0: ldr x1, [SP, #8]
//  0x4d32c4: ldur w2, [x1, #0x17]
//  0x4d32c8: add x2, x2, HEAP, lsl #32
//  0x4d32cc: ldr x1, [SP]
//  0x4d32d0: ldur w3, [x1, #7]
//  0x4d32d4: add x3, x3, HEAP, lsl #32
//  0x4d32d8: ldur w1, [x2, #0xf]
//  0x4d32dc: add x1, x1, HEAP, lsl #32
//  0x4d32e0: ldur w2, [x1, #7]
//  0x4d32e4: add x2, x2, HEAP, lsl #32
//  0x4d32e8: cmp w3, w2
//  0x4d32ec: b.eq #0x4d3330
//  0x4d32f0: and w16, w3, w2
//  0x4d32f4: tbz w16, #0, #0x4d3328
//  0x4d32f8: ldur BARRIER, [x3, #-1]
//  0x4d32fc: ubfx BARRIER, BARRIER, #0xc, #0x14
//  0x4d3300: cmp BARRIER, #0x3d
//  0x4d3304: b.ne #0x4d3328
//  0x4d3308: ldur BARRIER, [x2, #-1]
//  0x4d330c: ubfx BARRIER, BARRIER, #0xc, #0x14
//  0x4d3310: cmp BARRIER, #0x3d
//  0x4d3314: b.ne #0x4d3328
//  0x4d3318: ldur BARRIER, [x3, #7]
//  0x4d331c: ldur x17, [x2, #7]
//  0x4d3320: cmp BARRIER, x17
//  0x4d3324: b.eq #0x4d3330
//  0x4d3328: add x0, NULL, #0x30
//  0x4d332c: b #0x4d3334
//  0x4d3330: add x0, NULL, #0x20
//  0x4d3334: ret 
//
dynamic GameFruitNotifier_anon_closure_12() {
  dynamic BARRIER;
  dynamic w1;
  dynamic w16;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  w1 = mem((((mem((local_8), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf); // 0x4d32d8
  w2 = mem((local_8), 0x17); // 0x4d32c4
  w3 = mem((local_0), 7); // 0x4d32d0
  x1 = (mem((((mem((local_8), 0x17)) & 0xffffffff) + (HEAP << 32)), 0xf)) & 0xffffffff; // 0x4d32d8
  x2 = ((mem((local_8), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d32c8
  x3 = ((mem((local_0), 7)) & 0xffffffff) + (HEAP << 32); // 0x4d32d4
  w2 = mem((x1 + (HEAP << 32)), 7); // 0x4d32e0
  x1 = x1 + (HEAP << 32); // 0x4d32dc
  x2 = ((mem(((x1 + (HEAP << 32)) + (HEAP << 32)), 7)) & 0xffffffff) + (HEAP << 32); // 0x4d32e4
  if (w3 == w2) {
    x0 = NULL + 0x20; // 0x4d3330
  } else {
    x16 = w16 & 0xffffffff; // 0x4d32f0
    if (x16 & (1 << 0) == 0) {
    } else {
      BARRIER = ((mem(x3, -1)) >> 12) & 0xfffff; // 0x4d32fc
      if (BARRIER != 0x3d) {
      } else {
        BARRIER = ((mem(x2, -1)) >> 12) & 0xfffff; // 0x4d330c
        if (BARRIER != 0x3d) {
        } else {
          BARRIER = mem(x3, 7); // 0x4d3318
          x17 = mem(x2, 7); // 0x4d331c
          if (BARRIER == x17) {
            // duplicated branch body (shared block 0x4d3330, joins at 0x4d3334; the same code was emitted above)
            x0 = NULL + 0x20; // 0x4d3330
          } else {
            x0 = NULL + 0x30; // 0x4d3328
          }
          return;
        }
      }
    }
  }
}

// GameFruitNotifier_getFruitLandResource
// raw disassembly:
//  0x4d3b18: stp FP, LR, [SP, #-0x10]!
//  0x4d3b1c: mov FP, SP
//  0x4d3b20: sub SP, SP, #0x10
//  0x4d3b24: stur x1, [FP, #-8]
//  0x4d3b28: ldr BARRIER, [THR, #0x38]
//  0x4d3b2c: cmp SP, BARRIER
//  0x4d3b30: b.ls #0x4d3b90
//  0x4d3b34: mov x1, #1
//  0x4d3b38: bl #0x61e890
//  0x4d3b3c: mov x2, x0
//  0x4d3b40: ldur x0, [FP, #-8]
//  0x4d3b44: stur x2, [FP, #-0x10]
//  0x4d3b48: stur w0, [x2, #0xf]
//  0x4d3b4c: ldur w1, [x0, #0x33]
//  0x4d3b50: add x1, x1, HEAP, lsl #32
//  0x4d3b54: bl #0x2b3608
//  0x4d3b58: ldur x0, [FP, #-8]
//  0x4d3b5c: ldur w1, [x0, #0x3b]
//  0x4d3b60: add x1, x1, HEAP, lsl #32
//  0x4d3b64: bl #0x2b3608
//  0x4d3b68: ldur x2, [FP, #-0x10]
//  0x4d3b6c: add x1, PP, #0x15, lsl #12
//  0x4d3b70: ldr x1, [x1, #0x300]
//  0x4d3b74: bl #0x61ec54
//  0x4d3b78: mov x1, x0
//  0x4d3b7c: bl #0x4d3b98
//  0x4d3b80: mov x0, NULL
//  0x4d3b84: mov SP, FP
//  0x4d3b88: ldp FP, LR, [SP], #0x10
//  0x4d3b8c: ret 
//  0x4d3b90: bl #0x61fa28
//  0x4d3b94: b #0x4d3b34
//
dynamic GameFruitNotifier_getFruitLandResource() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d3b18
  // frame: FP = SP // 0x4d3b1c
  // frame: SP = SP - 0x10 // 0x4d3b20
  local_m8 = x1; // 0x4d3b24
  BARRIER = mem(THR, 0x38); // 0x4d3b28
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d3b90
  }
  x1 = 1; // 0x4d3b34
  sub_0x61e890(); // 0x4d3b38
  x0 = local_m8; // 0x4d3b40
  x2 = x0; // 0x4d3b3c
  local_m10 = x2; // 0x4d3b44
  memSet(x2, 0xf, w0); // 0x4d3b48
  w1 = mem(x0, 0x33); // 0x4d3b4c
  x1 = ((mem(x0, 0x33)) & 0xffffffff) + (HEAP << 32); // 0x4d3b50
  GrowableList_clear() /* 0x2b3608 */; // 0x4d3b54
  w1 = mem((local_m8), 0x3b); // 0x4d3b5c
  x0 = local_m8; // 0x4d3b58
  x1 = ((mem((local_m8), 0x3b)) & 0xffffffff) + (HEAP << 32); // 0x4d3b60
  GrowableList_clear() /* 0x2b3608 */; // 0x4d3b64
  x1 = mem((PP + 0x15000), 0x300) /* Function */; // 0x4d3b70
  x2 = local_m10; // 0x4d3b68
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d3b74
  x1 = x0; // 0x4d3b78
  GameApiService_getFruitGameResource() /* 0x4d3b98 */; // 0x4d3b7c
  SP = FP; // 0x4d3b84
  x0 = NULL; // 0x4d3b80
  // frame: FP, LR, mem(SP), 0x10 // 0x4d3b88
  return;
}

// GameFruitNotifier_anon_closure_13
// raw disassembly:
//  0x4d3efc: stp FP, LR, [SP, #-0x10]!
//  0x4d3f00: mov FP, SP
//  0x4d3f04: sub SP, SP, #8
//  0x4d3f08: ldr x0, [FP, #0x18]
//  0x4d3f0c: ldur w3, [x0, #0x17]
//  0x4d3f10: add x3, x3, HEAP, lsl #32
//  0x4d3f14: stur x3, [FP, #-8]
//  0x4d3f18: ldr BARRIER, [THR, #0x38]
//  0x4d3f1c: cmp SP, BARRIER
//  0x4d3f20: b.ls #0x4d3fc4
//  0x4d3f24: ldur w0, [x3, #0xf]
//  0x4d3f28: add x0, x0, HEAP, lsl #32
//  0x4d3f2c: ldur w1, [x0, #0x2f]
//  0x4d3f30: add x1, x1, HEAP, lsl #32
//  0x4d3f34: tbnz w1, #4, #0x4d3f48
//  0x4d3f38: mov x0, NULL
//  0x4d3f3c: mov SP, FP
//  0x4d3f40: ldp FP, LR, [SP], #0x10
//  0x4d3f44: ret 
//  0x4d3f48: ldr x4, [FP, #0x10]
//  0x4d3f4c: ldur w1, [x0, #0x33]
//  0x4d3f50: add x1, x1, HEAP, lsl #32
//  0x4d3f54: ldur w2, [x4, #7]
//  0x4d3f58: add x2, x2, HEAP, lsl #32
//  0x4d3f5c: ldr BARRIER, [PP, #0x40]
//  0x4d3f60: cmp w2, w16
//  0x4d3f64: b.eq #0x4d3fcc
//  0x4d3f68: bl #0x2ce4e8
//  0x4d3f6c: ldur x0, [FP, #-8]
//  0x4d3f70: ldur w1, [x0, #0xf]
//  0x4d3f74: add x1, x1, HEAP, lsl #32
//  0x4d3f78: ldur w2, [x1, #0x3b]
//  0x4d3f7c: add x2, x2, HEAP, lsl #32
//  0x4d3f80: ldr x1, [FP, #0x10]
//  0x4d3f84: ldur w3, [x1, #0xb]
//  0x4d3f88: add x3, x3, HEAP, lsl #32
//  0x4d3f8c: ldr BARRIER, [PP, #0x40]
//  0x4d3f90: cmp w3, w16
//  0x4d3f94: b.eq #0x4d3fd8
//  0x4d3f98: mov x1, x2
//  0x4d3f9c: mov x2, x3
//  0x4d3fa0: bl #0x2ce4e8
//  0x4d3fa4: ldur x0, [FP, #-8]
//  0x4d3fa8: ldur w1, [x0, #0xf]
//  0x4d3fac: add x1, x1, HEAP, lsl #32
//  0x4d3fb0: bl #0x3ac980
//  0x4d3fb4: mov x0, NULL
//  0x4d3fb8: mov SP, FP
//  0x4d3fbc: ldp FP, LR, [SP], #0x10
//  0x4d3fc0: ret 
//  0x4d3fc4: bl #0x61fa28
//  0x4d3fc8: b #0x4d3f24
//  0x4d3fcc: add x9, PP, #0x15, lsl #12
//  0x4d3fd0: ldr x9, [x9, #0x308]
//  0x4d3fd4: bl #0x620258
//  0x4d3fd8: add x9, PP, #0x15, lsl #12
//  0x4d3fdc: ldr x9, [x9, #0x310]
//  0x4d3fe0: bl #0x620258
//
dynamic GameFruitNotifier_anon_closure_13() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d3efc
  // frame: FP = SP // 0x4d3f00
  // frame: SP = SP - 8 // 0x4d3f04
  w3 = mem((local_18), 0x17); // 0x4d3f0c
  x0 = local_18; // 0x4d3f08
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d3f10
  local_m8 = x3; // 0x4d3f14
  BARRIER = mem(THR, 0x38); // 0x4d3f18
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d3fc4
  }
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x2f); // 0x4d3f2c
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d3f28
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x2f)) & 0xffffffff) + (HEAP << 32); // 0x4d3f30
  if (x1 & (1 << 4) == 0) {
    SP = FP; // 0x4d3f3c
    x0 = NULL; // 0x4d3f38
    // frame: FP, LR, mem(SP), 0x10 // 0x4d3f40
    return;
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d3f5c
  w1 = mem(x0, 0x33); // 0x4d3f4c
  w2 = mem((local_10), 7); // 0x4d3f54
  x1 = ((mem(x0, 0x33)) & 0xffffffff) + (HEAP << 32); // 0x4d3f50
  x2 = ((mem((local_10), 7)) & 0xffffffff) + (HEAP << 32); // 0x4d3f58
  x4 = local_10; // 0x4d3f48
  if (w2 == w16) {
    x9 = mem((PP + 0x15000), 0x308) /* Field */; // 0x4d3fd0
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d3fd4
  } else {
    GrowableList_addAll() /* 0x2ce4e8 */; // 0x4d3f68
    w1 = mem((local_m8), 0xf); // 0x4d3f70
    w2 = mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x3b); // 0x4d3f78
    x0 = local_m8; // 0x4d3f6c
    x1 = local_10; // 0x4d3f80
    x2 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x3b)) & 0xffffffff) + (HEAP << 32); // 0x4d3f7c
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d3f8c
    w3 = mem(x1, 0xb); // 0x4d3f84
    x3 = ((mem(x1, 0xb)) & 0xffffffff) + (HEAP << 32); // 0x4d3f88
    if (w3 != w16) {
      x1 = x2; // 0x4d3f98
      x2 = x3; // 0x4d3f9c
      GrowableList_addAll() /* 0x2ce4e8 */; // 0x4d3fa0
      w1 = mem((local_m8), 0xf); // 0x4d3fa8
      x0 = local_m8; // 0x4d3fa4
      x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d3fac
      SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x4d3fb0
      SP = FP; // 0x4d3fb8
      x0 = NULL; // 0x4d3fb4
      // frame: FP, LR, mem(SP), 0x10 // 0x4d3fbc
      return;
    }
  }
  x9 = mem((PP + 0x15000), 0x310) /* Field */; // 0x4d3fdc
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d3fe0
}

// GameFruitNotifier_initAnimation
// raw disassembly:
//  0x4d3fe4: stp FP, LR, [SP, #-0x10]!
//  0x4d3fe8: mov FP, SP
//  0x4d3fec: sub SP, SP, #0x18
//  0x4d3ff0: stur x1, [FP, #-8]
//  0x4d3ff4: stur x2, [FP, #-0x10]
//  0x4d3ff8: ldr BARRIER, [THR, #0x38]
//  0x4d3ffc: cmp SP, BARRIER
//  0x4d4000: b.ls #0x4d4088
//  0x4d4004: mov x1, #1
//  0x4d4008: bl #0x61e890
//  0x4d400c: mov x2, x0
//  0x4d4010: ldur x0, [FP, #-8]
//  0x4d4014: stur x2, [FP, #-0x18]
//  0x4d4018: stur w0, [x2, #0xf]
//  0x4d401c: ldr x1, [PP, #0x4b60]
//  0x4d4020: bl #0x30f9b4
//  0x4d4024: mov x1, x0
//  0x4d4028: ldur x2, [FP, #-0x10]
//  0x4d402c: stur x0, [FP, #-0x10]
//  0x4d4030: ldr x4, [PP, #0x278]
//  0x4d4034: bl #0x30f2bc
//  0x4d4038: ldur x2, [FP, #-0x18]
//  0x4d403c: add x1, PP, #0x15, lsl #12
//  0x4d4040: ldr x1, [x1, #0x370]
//  0x4d4044: bl #0x61ec54
//  0x4d4048: ldur x1, [FP, #-0x10]
//  0x4d404c: mov x2, x0
//  0x4d4050: bl #0x4f8f44
//  0x4d4054: ldur x0, [FP, #-0x10]
//  0x4d4058: ldur x1, [FP, #-8]
//  0x4d405c: stur w0, [x1, #0x63]
//  0x4d4060: ldurb w16, [x1, #-1]
//  0x4d4064: ldurb w17, [x0, #-1]
//  0x4d4068: and BARRIER, x17, BARRIER, lsr #2
//  0x4d406c: tst BARRIER, HEAP, lsr #32
//  0x4d4070: b.eq #0x4d4078
//  0x4d4074: bl #0x61e04c
//  0x4d4078: mov x0, NULL
//  0x4d407c: mov SP, FP
//  0x4d4080: ldp FP, LR, [SP], #0x10
//  0x4d4084: ret 
//  0x4d4088: bl #0x61fa28
//  0x4d408c: b #0x4d4004
//
dynamic GameFruitNotifier_initAnimation() {
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
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d3fe4
  // frame: FP = SP // 0x4d3fe8
  // frame: SP = SP - 0x18 // 0x4d3fec
  local_m8 = x1; // 0x4d3ff0
  local_m10 = x2; // 0x4d3ff4
  BARRIER = mem(THR, 0x38); // 0x4d3ff8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d4088
  }
  x1 = 1; // 0x4d4004
  sub_0x61e890(); // 0x4d4008
  x0 = local_m8; // 0x4d4010
  x2 = x0; // 0x4d400c
  local_m18 = x2; // 0x4d4014
  memSet(x2, 0xf, w0); // 0x4d4018
  x1 = mem(PP, 0x4b60) /* TypeArguments */; // 0x4d401c
  AllocationStub_AnimationController() /* 0x30f9b4 */; // 0x4d4020
  x1 = x0; // 0x4d4024
  x2 = local_m10; // 0x4d4028
  local_m10 = x0; // 0x4d402c
  x4 = mem(PP, 0x278) /* ImmutableArray */; // 0x4d4030
  AnimationController_ctor() /* 0x30f2bc */; // 0x4d4034
  x1 = mem((PP + 0x15000), 0x370) /* Function */; // 0x4d4040
  x2 = local_m18; // 0x4d4038
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d4044
  x1 = local_m10; // 0x4d4048
  x2 = x0; // 0x4d404c
  AnimationController_Animation_AnimationEagerListenerMixin_AnimationLocalListenersMixin_addListener() /* 0x4f8f44 */; // 0x4d4050
  x0 = local_m10; // 0x4d4054
  x1 = local_m8; // 0x4d4058
  memSet(x1, 0x63, w0); // 0x4d405c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4d4068
  w16 = mem(x1, -1); // 0x4d4060
  w17 = mem(x0, -1); // 0x4d4064
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4d4060
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4d4064
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4d4074
  }
  SP = FP; // 0x4d407c
  x0 = NULL; // 0x4d4078
  // frame: FP, LR, mem(SP), 0x10 // 0x4d4080
  return;
}

// GameFruitNotifier_anon_closure_14
// raw disassembly:
//  0x4d4090: stp FP, LR, [SP, #-0x10]!
//  0x4d4094: mov FP, SP
//  0x4d4098: sub SP, SP, #8
//  0x4d409c: ldr x0, [FP, #0x10]
//  0x4d40a0: ldur w1, [x0, #0x17]
//  0x4d40a4: add x1, x1, HEAP, lsl #32
//  0x4d40a8: ldr BARRIER, [THR, #0x38]
//  0x4d40ac: cmp SP, BARRIER
//  0x4d40b0: b.ls #0x4d4128
//  0x4d40b4: ldur w0, [x1, #0xf]
//  0x4d40b8: add x0, x0, HEAP, lsl #32
//  0x4d40bc: stur x0, [FP, #-8]
//  0x4d40c0: ldur w1, [x0, #0x67]
//  0x4d40c4: add x1, x1, HEAP, lsl #32
//  0x4d40c8: cmp w1, w22
//  0x4d40cc: b.eq #0x4d4118
//  0x4d40d0: ldur w2, [x1, #0xf]
//  0x4d40d4: add x2, x2, HEAP, lsl #32
//  0x4d40d8: ldur w3, [x1, #0xb]
//  0x4d40dc: add x3, x3, HEAP, lsl #32
//  0x4d40e0: mov x1, x2
//  0x4d40e4: mov x2, x3
//  0x4d40e8: bl #0x361080
//  0x4d40ec: sbfx x1, x0, #1, #0x1f
//  0x4d40f0: tbz w0, #0, #0x4d40f8
//  0x4d40f4: ldur x1, [x0, #7]
//  0x4d40f8: mov x0, #7
//  0x4d40fc: and x2, x1, x0
//  0x4d4100: ubfx x2, x2, #0, #0x20
//  0x4d4104: ldur x1, [FP, #-8]
//  0x4d4108: bl #0x4d4130
//  0x4d410c: ldur x1, [FP, #-8]
//  0x4d4110: mov x2, x0
//  0x4d4114: bl #0x4d3170
//  0x4d4118: mov x0, NULL
//  0x4d411c: mov SP, FP
//  0x4d4120: ldp FP, LR, [SP], #0x10
//  0x4d4124: ret 
//  0x4d4128: bl #0x61fa28
//  0x4d412c: b #0x4d40b4
//
dynamic GameFruitNotifier_anon_closure_14() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d4090
  BARRIER = mem(THR, 0x38); // 0x4d40a8
  // frame: FP = SP // 0x4d4094
  // frame: SP = SP - 8 // 0x4d4098
  w1 = mem((local_10), 0x17); // 0x4d40a0
  x0 = local_10; // 0x4d409c
  x1 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d40a4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d4128
  }
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d40b8
  local_m8 = x0; // 0x4d40bc
  w1 = mem(x0, 0x67); // 0x4d40c0
  x1 = ((mem(x0, 0x67)) & 0xffffffff) + (HEAP << 32); // 0x4d40c4
  if (w1 == w22) {
  } else {
    w3 = mem(x1, 0xb); // 0x4d40d8
    x1 = (w2 & 0xffffffff) + (HEAP << 32); // 0x4d40e0
    x2 = ((mem(x1, 0xb)) & 0xffffffff) + (HEAP << 32); // 0x4d40e4
    x3 = ((mem(x1, 0xb)) & 0xffffffff) + (HEAP << 32); // 0x4d40dc
    Animatable_evaluate() /* 0x361080 */; // 0x4d40e8
    x1 = (x0 >> 1) & 0x7fffffff; // 0x4d40ec
    if (x0 & (1 << 0) == 0) {
    } else {
      x1 = mem(x0, 7); // 0x4d40f4
    }
    x0 = 7; // 0x4d40f8
    x1 = local_m8; // 0x4d4104
    x2 = ((x1 & x0) >> 0) & 0xffffffff; // 0x4d4100
    GameFruitNotifier_getItemIndex() /* 0x4d4130 */; // 0x4d4108
    x1 = local_m8; // 0x4d410c
    x2 = x0; // 0x4d4110
    GameFruitNotifier_updateLotteryIndex() /* 0x4d3170 */; // 0x4d4114
  }
  SP = FP; // 0x4d411c
  x0 = NULL; // 0x4d4118
  // frame: FP, LR, mem(SP), 0x10 // 0x4d4120
  return;
}

// GameFruitNotifier_getItemIndex
// raw disassembly:
//  0x4d4130: tbnz x2, #0x3f, #0x4d413c
//  0x4d4134: cmp x2, #8
//  0x4d4138: b.lt #0x4d4144
//  0x4d413c: mov x0, #-1
//  0x4d4140: ret 
//  0x4d4144: mov x3, #0
//  0x4d4148: add x1, PP, #0x15, lsl #12
//  0x4d414c: ldr x1, [x1, #0x210]
//  0x4d4150: ldr BARRIER, [THR, #0x38]
//  0x4d4154: cmp SP, BARRIER
//  0x4d4158: b.ls #0x4d41a0
//  0x4d415c: cmp x3, #9
//  0x4d4160: b.ge #0x4d4198
//  0x4d4164: add BARRIER, x1, x3, lsl #2
//  0x4d4168: ldur w4, [BARRIER, #0xf]
//  0x4d416c: add x4, x4, HEAP, lsl #32
//  0x4d4170: sbfx x5, x4, #1, #0x1f
//  0x4d4174: tbz w4, #0, #0x4d417c
//  0x4d4178: ldur x5, [x4, #7]
//  0x4d417c: cmp x5, x2
//  0x4d4180: b.eq #0x4d4190
//  0x4d4184: add x0, x3, #1
//  0x4d4188: mov x3, x0
//  0x4d418c: b #0x4d4150
//  0x4d4190: mov x0, x3
//  0x4d4194: b #0x4d419c
//  0x4d4198: mov x0, #-1
//  0x4d419c: ret 
//  0x4d41a0: stp FP, LR, [SP, #-0x10]!
//  0x4d41a4: mov FP, SP
//  0x4d41a8: bl #0x61fa28
//  0x4d41ac: mov SP, FP
//  0x4d41b0: ldp FP, LR, [SP], #0x10
//  0x4d41b4: b #0x4d415c
//
dynamic GameFruitNotifier_getItemIndex() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  if (x2 & (1 << 0x3f) != 0) {
  } else {
    if (x2 >= 8) {
      // duplicated branch body (target 0x4d413c terminates; the same code is emitted below)
      x0 = -1; // 0x4d413c
      return x0;
    }
    x1 = mem((PP + 0x15000), 0x210) /* ImmutableArray */; // 0x4d414c
    x3 = 0; // 0x4d4144
    while (true) {
      BARRIER = mem(THR, 0x38); // 0x4d4150
      if (SP <= BARRIER) {
        // frame: FP, LR, mem(SP, -0x10)! // 0x4d41a0
        // frame: FP = SP // 0x4d41a4
        StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d41a8
        SP = FP; // 0x4d41ac
        // frame: FP, LR, mem(SP), 0x10 // 0x4d41b0
      }
      if (x3 >= 9) {
        break;
      }
      BARRIER = x1 + (x3 << 2); // 0x4d4164
      w4 = mem((x1 + (x3 << 2)), 0xf); // 0x4d4168
      x4 = ((mem((x1 + (x3 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d416c
      x5 = ((((mem((x1 + (x3 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x4d4170
      if (x4 & (1 << 0) == 0) {
      } else {
        x5 = mem(x4, 7); // 0x4d4178
      }
      if (x5 == x2) {
        break;
      }
      x0 = x3 + 1; // 0x4d4184
      x3 = x3 + 1; // 0x4d4188
    }
    x0 = x3; // 0x4d4190
    return;
  }
  x0 = -1; // 0x4d413c
  return x0;
}

// GameFruitNotifier_onFinished
// raw disassembly:
//  0x5e9b88: stp FP, LR, [SP, #-0x10]!
//  0x5e9b8c: mov FP, SP
//  0x5e9b90: ldr BARRIER, [THR, #0x38]
//  0x5e9b94: cmp SP, BARRIER
//  0x5e9b98: b.ls #0x5e9bb0
//  0x5e9b9c: bl #0x4d1c04
//  0x5e9ba0: mov x0, NULL
//  0x5e9ba4: mov SP, FP
//  0x5e9ba8: ldp FP, LR, [SP], #0x10
//  0x5e9bac: ret 
//  0x5e9bb0: bl #0x61fa28
//  0x5e9bb4: b #0x5e9b9c
//
dynamic GameFruitNotifier_onFinished() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  // frame: FP, LR, mem(SP, -0x10)! // 0x5e9b88
  BARRIER = mem(THR, 0x38); // 0x5e9b90
  // frame: FP = SP // 0x5e9b8c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x5e9bb0
  }
  GameFruitNotifier_getCurrentProcess() /* 0x4d1c04 */; // 0x5e9b9c
  SP = FP; // 0x5e9ba4
  x0 = NULL; // 0x5e9ba0
  // frame: FP, LR, mem(SP), 0x10 // 0x5e9ba8
  return;
}

// GameFruitNotifier_onTimed
// raw disassembly:
//  0x5e9bb8: stp FP, LR, [SP, #-0x10]!
//  0x5e9bbc: mov FP, SP
//  0x5e9bc0: ldr BARRIER, [THR, #0x38]
//  0x5e9bc4: cmp SP, BARRIER
//  0x5e9bc8: b.ls #0x5e9be0
//  0x5e9bcc: bl #0x5e9be8
//  0x5e9bd0: mov x0, NULL
//  0x5e9bd4: mov SP, FP
//  0x5e9bd8: ldp FP, LR, [SP], #0x10
//  0x5e9bdc: ret 
//  0x5e9be0: bl #0x61fa28
//  0x5e9be4: b #0x5e9bcc
//
dynamic GameFruitNotifier_onTimed() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  // frame: FP, LR, mem(SP, -0x10)! // 0x5e9bb8
  BARRIER = mem(THR, 0x38); // 0x5e9bc0
  // frame: FP = SP // 0x5e9bbc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x5e9be0
  }
  GameFruitNotifier_updateShowTime() /* 0x5e9be8 */; // 0x5e9bcc
  SP = FP; // 0x5e9bd4
  x0 = NULL; // 0x5e9bd0
  // frame: FP, LR, mem(SP), 0x10 // 0x5e9bd8
  return;
}

// GameFruitNotifier_updateShowTime
// raw disassembly:
//  0x5e9be8: stp FP, LR, [SP, #-0x10]!
//  0x5e9bec: mov FP, SP
//  0x5e9bf0: sub SP, SP, #0x10
//  0x5e9bf4: mov x3, x1
//  0x5e9bf8: stur x1, [FP, #-8]
//  0x5e9bfc: ldr BARRIER, [THR, #0x38]
//  0x5e9c00: cmp SP, BARRIER
//  0x5e9c04: b.ls #0x5e9c80
//  0x5e9c08: ldur w0, [x3, #0x53]
//  0x5e9c0c: add x0, x0, HEAP, lsl #32
//  0x5e9c10: add BARRIER, PP, #0xb, lsl #12
//  0x5e9c14: ldr BARRIER, [BARRIER, #0x840]
//  0x5e9c18: cmp w0, w16
//  0x5e9c1c: b.ne #0x5e9c30
//  0x5e9c20: mov x0, NULL
//  0x5e9c24: mov SP, FP
//  0x5e9c28: ldp FP, LR, [SP], #0x10
//  0x5e9c2c: ret 
//  0x5e9c30: sbfiz x0, x2, #1, #0x1f
//  0x5e9c34: cmp x2, x0, asr #1
//  0x5e9c38: b.eq #0x5e9c44
//  0x5e9c3c: bl #0x61fba8
//  0x5e9c40: stur x2, [x0, #7]
//  0x5e9c44: str x0, [SP]
//  0x5e9c48: bl #0x2ac0a0
//  0x5e9c4c: ldur x1, [FP, #-8]
//  0x5e9c50: stur w0, [x1, #0x5f]
//  0x5e9c54: ldurb w16, [x1, #-1]
//  0x5e9c58: ldurb w17, [x0, #-1]
//  0x5e9c5c: and BARRIER, x17, BARRIER, lsr #2
//  0x5e9c60: tst BARRIER, HEAP, lsr #32
//  0x5e9c64: b.eq #0x5e9c6c
//  0x5e9c68: bl #0x61e04c
//  0x5e9c6c: bl #0x3ac980
//  0x5e9c70: mov x0, NULL
//  0x5e9c74: mov SP, FP
//  0x5e9c78: ldp FP, LR, [SP], #0x10
//  0x5e9c7c: ret 
//  0x5e9c80: bl #0x61fa28
//  0x5e9c84: b #0x5e9c08
//
dynamic GameFruitNotifier_updateShowTime() {
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
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x5e9be8
  // frame: FP = SP // 0x5e9bec
  // frame: SP = SP - 0x10 // 0x5e9bf0
  x3 = x1; // 0x5e9bf4
  local_m8 = x1; // 0x5e9bf8
  BARRIER = mem(THR, 0x38); // 0x5e9bfc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x5e9c80
  }
  BARRIER = mem((PP + 0xb000), 0x840) /* Obj!GameFruitProcessState@12164  */; // 0x5e9c14
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x5e9c0c
  if (w0 == w16) {
    SP = FP; // 0x5e9c24
    x0 = NULL; // 0x5e9c20
    // frame: FP, LR, mem(SP), 0x10 // 0x5e9c28
    return;
  }
  x0 = ((x2 & 0x7fffffff) << 1) /* signed */; // 0x5e9c30
  if (x2 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x5e9c3c
    memSet(x0, 7, x2); // 0x5e9c40
  }
  local_0 = x0; // 0x5e9c44
  StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x5e9c48
  x1 = local_m8; // 0x5e9c4c
  memSet(x1, 0x5f, w0); // 0x5e9c50
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x5e9c5c
  w16 = mem(x1, -1); // 0x5e9c54
  w17 = mem(x0, -1); // 0x5e9c58
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x5e9c54
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x5e9c58
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x5e9c68
  }
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x5e9c6c
  SP = FP; // 0x5e9c74
  x0 = NULL; // 0x5e9c70
  // frame: FP, LR, mem(SP), 0x10 // 0x5e9c78
  return;
}
