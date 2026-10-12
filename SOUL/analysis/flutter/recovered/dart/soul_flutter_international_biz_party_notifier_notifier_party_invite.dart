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

dynamic AllocationStub_ConcurrentModificationError, AllocationStub_PartyInviteItem;
dynamic AllocationStub__Closure, AllocationStub__Mint, AllocationStub__Set, BARRIER;
dynamic EventTrack_eventClick, FP, GrowableList_addAll, GrowableList_factory_ctor;
dynamic GrowableList_factory_ctor_of, HEAP, InviteUserPageState_onLoaded, LR;
dynamic LateInitializationErrorSharedWithoutFpuRegsStub_0x620258, Map_factory_ctor_fromLiteral;
dynamic NULL, PP, PartyInviteItem_ctor_fromJson, RangeErrorSharedWithoutFpuRegsStub_0x61fe70;
dynamic SOApiService_getRecentChat, SOApiService_searchFollow, SP;
dynamic SafeChangeNotifier_safeNotify;
dynamic Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_add;
dynamic Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_remove;
dynamic Set_HashVMBase_SetMixin_map, SlowTypeTestStub_0x61d6e4;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolate;
dynamic StringBase_interpolateSingle, THR, VirtualParty_inviteUserToParty, WriteBarrierStub_x1;
dynamic WriteBarrierStub_x3, getString, local_0, local_10, local_18, local_8, local_m10;
dynamic local_m18, local_m20, local_m28, local_m30, local_m38, local_m8, sub_0x2b15f0;
dynamic sub_0x61d99c, sub_0x61dadc, sub_0x61db00, sub_0x61e890, sub_0x61f920, sub_0x62aa34, w0;
dynamic w1, w16, w17, w2, w22, w3, w4, w5, w6, wzr, x0, x1, x16, x17, x2, x21, x25, x3, x4, x5;
dynamic x6, x8, x9, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$party$notifier$notifier_party_invite
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PartyInviteNotifier_get_selectedCount
// raw disassembly:
//  0x420424: ldur w2, [x1, #0x63]
//  0x420428: add x2, x2, HEAP, lsl #32
//  0x42042c: ldur w1, [x2, #0x13]
//  0x420430: ldur w3, [x2, #0x17]
//  0x420434: sbfx x2, x1, #1, #0x1f
//  0x420438: sbfx x1, x3, #1, #0x1f
//  0x42043c: sub x0, x2, x1
//  0x420440: ret 
//
dynamic PartyInviteNotifier_get_selectedCount() {
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  w2 = mem(x1, 0x63); // 0x420424
  w1 = mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x13); // 0x42042c
  w3 = mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x420430
  x1 = (mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff; // 0x42042c
  x2 = (((mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x420434
  x3 = (mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff; // 0x420430
  x0 = x2 - ((x3 >> 1) & 0x7fffffff); // 0x42043c
  x1 = (x3 >> 1) & 0x7fffffff; // 0x420438
  return x0;
}

// PartyInviteNotifier_get_isUserSelected
// raw disassembly:
//  0x420450: ldur w2, [x1, #0x63]
//  0x420454: add x2, x2, HEAP, lsl #32
//  0x420458: ldur w1, [x2, #0x13]
//  0x42045c: ldur w3, [x2, #0x17]
//  0x420460: sbfx x2, x1, #1, #0x1f
//  0x420464: sbfx x1, x3, #1, #0x1f
//  0x420468: sub x3, x2, x1
//  0x42046c: cmp x3, #0
//  0x420470: b.le #0x42048c
//  0x420474: cmp x3, #0x14
//  0x420478: add BARRIER, NULL, #0x20
//  0x42047c: add x17, NULL, #0x30
//  0x420480: csel x1, BARRIER, x17, le
//  0x420484: mov x0, x1
//  0x420488: b #0x420490
//  0x42048c: add x0, NULL, #0x30
//  0x420490: ret 
//
dynamic PartyInviteNotifier_get_isUserSelected() {
  dynamic BARRIER;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  w2 = mem(x1, 0x63); // 0x420450
  w1 = mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x13); // 0x420458
  w3 = mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x42045c
  x1 = (mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff; // 0x420458
  x2 = (((mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x420460
  x3 = (mem(((w2 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff; // 0x42045c
  x1 = (x3 >> 1) & 0x7fffffff; // 0x420464
  x3 = x2 - ((x3 >> 1) & 0x7fffffff); // 0x420468
  if (x3 <= 0) {
    x0 = NULL + 0x30; // 0x42048c
  } else {
    BARRIER = NULL + 0x20; // 0x420478
    x0 = (x3 <= 0x14) ? (NULL + 0x20) : (NULL + 0x30); // 0x420484
    x1 = (x3 <= 0x14) ? (NULL + 0x20) : (NULL + 0x30); // 0x420480
    x17 = NULL + 0x30; // 0x42047c
  }
  return;
}

// PartyInviteNotifier_confirmInvite
// raw disassembly:
//  0x42054c: stp FP, LR, [SP, #-0x10]!
//  0x420550: mov FP, SP
//  0x420554: sub SP, SP, #0x38
//  0x420558: mov x3, x1
//  0x42055c: mov x0, x2
//  0x420560: stur x1, [FP, #-8]
//  0x420564: stur x2, [FP, #-0x10]
//  0x420568: ldr BARRIER, [THR, #0x38]
//  0x42056c: cmp SP, BARRIER
//  0x420570: b.ls #0x420664
//  0x420574: mov x1, NULL
//  0x420578: mov x2, #4
//  0x42057c: bl #0x61f920
//  0x420580: stur x0, [FP, #-0x20]
//  0x420584: add BARRIER, PP, #0x11, lsl #12
//  0x420588: ldr BARRIER, [BARRIER, #0x720]
//  0x42058c: stur w16, [x0, #0xf]
//  0x420590: ldur x1, [FP, #-8]
//  0x420594: ldur w2, [x1, #0x63]
//  0x420598: add x2, x2, HEAP, lsl #32
//  0x42059c: stur x2, [FP, #-0x18]
//  0x4205a0: ldur w1, [x2, #0x13]
//  0x4205a4: ldur w3, [x2, #0x17]
//  0x4205a8: sbfx x4, x1, #1, #0x1f
//  0x4205ac: sbfx x1, x3, #1, #0x1f
//  0x4205b0: sub x3, x4, x1
//  0x4205b4: lsl x1, x3, #1
//  0x4205b8: str x1, [SP]
//  0x4205bc: bl #0x2ac0a0
//  0x4205c0: ldur x1, [FP, #-0x20]
//  0x4205c4: add x25, x1, #0x13
//  0x4205c8: str w0, [x25]
//  0x4205cc: tbz w0, #0, #0x4205e8
//  0x4205d0: ldurb w16, [x1, #-1]
//  0x4205d4: ldurb w17, [x0, #-1]
//  0x4205d8: and BARRIER, x17, BARRIER, lsr #2
//  0x4205dc: tst BARRIER, HEAP, lsr #32
//  0x4205e0: b.eq #0x4205e8
//  0x4205e4: bl #0x61db00
//  0x4205e8: ldr BARRIER, [PP, #0xbf0]
//  0x4205ec: ldur LR, [FP, #-0x20]
//  0x4205f0: stp LR, BARRIER, [SP]
//  0x4205f4: bl #0x27c0c8
//  0x4205f8: str x0, [SP]
//  0x4205fc: add x1, PP, #0x11, lsl #12
//  0x420600: ldr x1, [x1, #0x728]
//  0x420604: add x4, PP, #0xf, lsl #12
//  0x420608: ldr x4, [x4, #0xf20]
//  0x42060c: bl #0x3a8e60
//  0x420610: add x1, PP, #0x11, lsl #12
//  0x420614: ldr x1, [x1, #0x730]
//  0x420618: mov x2, NULL
//  0x42061c: bl #0x61ec54
//  0x420620: ldr BARRIER, [PP, #0x868]
//  0x420624: ldur LR, [FP, #-0x18]
//  0x420628: stp LR, BARRIER, [SP, #8]
//  0x42062c: str x0, [SP]
//  0x420630: ldr x4, [PP, #0x58]
//  0x420634: bl #0x3bd5fc
//  0x420638: ldur w1, [x0, #7]
//  0x42063c: add x1, x1, HEAP, lsl #32
//  0x420640: mov x2, x0
//  0x420644: bl #0x276db0
//  0x420648: ldur x1, [FP, #-0x10]
//  0x42064c: mov x2, x0
//  0x420650: bl #0x42066c
//  0x420654: mov x0, NULL
//  0x420658: mov SP, FP
//  0x42065c: ldp FP, LR, [SP], #0x10
//  0x420660: ret 
//  0x420664: bl #0x61fa28
//  0x420668: b #0x420574
//
dynamic PartyInviteNotifier_confirmInvite() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
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
  dynamic x25;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42054c
  // frame: FP = SP // 0x420550
  // frame: SP = SP - 0x38 // 0x420554
  x0 = x2; // 0x42055c
  x3 = x1; // 0x420558
  local_m8 = x1; // 0x420560
  local_m10 = x2; // 0x420564
  BARRIER = mem(THR, 0x38); // 0x420568
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x420664
  }
  x1 = NULL; // 0x420574
  x2 = 4; // 0x420578
  sub_0x61f920(); // 0x42057c
  local_m20 = x0; // 0x420580
  BARRIER = "invitation_count" /* pp+0x11720 */; // 0x420588
  memSet(x0, 0xf, w16); // 0x42058c
  w2 = mem((local_m8), 0x63); // 0x420594
  x1 = local_m8; // 0x420590
  x2 = ((mem((local_m8), 0x63)) & 0xffffffff) + (HEAP << 32); // 0x420598
  local_m18 = x2; // 0x42059c
  w1 = mem(x2, 0x13); // 0x4205a0
  w3 = mem(x2, 0x17); // 0x4205a4
  x1 = (((((mem(x2, 0x13)) & 0xffffffff) >> 1) & 0x7fffffff) - ((((mem(x2, 0x17)) & 0xffffffff) >> 1) & 0x7fffffff)) << 1; // 0x4205b4
  x3 = ((((mem(x2, 0x13)) & 0xffffffff) >> 1) & 0x7fffffff) - ((((mem(x2, 0x17)) & 0xffffffff) >> 1) & 0x7fffffff); // 0x4205b0
  x4 = (((mem(x2, 0x13)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x4205a8
  local_0 = x1; // 0x4205b8
  StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x4205bc
  x1 = local_m20; // 0x4205c0
  x25 = (local_m20) + 0x13; // 0x4205c4
  memSet(x25, w0); // 0x4205c8
  if (x0 & (1 << 0) == 0) {
  } else {
    BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4205d8
    w17 = mem(x0, -1); // 0x4205d4
    x16 = w16 & 0xffffffff; // 0x4205d0
    x17 = (mem(x0, -1)) & 0xffffffff; // 0x4205d4
    if ((BARRIER & (HEAP >> 32)) == 0) {
    } else {
      sub_0x61db00(); // 0x4205e4
    }
  }
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x4205e8
  LR = local_m20; // 0x4205ec
  // frame: LR, BARRIER, mem(SP) // 0x4205f0
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x4205f4
  local_0 = x0; // 0x4205f8
  x1 = "InvitePremiumFriendList_ClickInvite" /* pp+0x11728 */; // 0x420600
  x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x420608
  EventTrack_eventClick() /* 0x3a8e60 */; // 0x42060c
  x1 = mem((PP + 0x11000), 0x730) /* Function */; // 0x420614
  x2 = NULL; // 0x420618
  AllocationStub__Closure() /* 0x61ec54 */; // 0x42061c
  BARRIER = mem(PP, 0x868) /* TypeArguments */; // 0x420620
  LR = local_m18; // 0x420624
  // frame: LR, BARRIER, mem(SP, 8) // 0x420628
  local_0 = x0; // 0x42062c
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x420630
  Set_HashVMBase_SetMixin_map() /* 0x3bd5fc */; // 0x420634
  w1 = mem(x0, 7); // 0x420638
  x1 = ((mem(x0, 7)) & 0xffffffff) + (HEAP << 32); // 0x42063c
  x2 = x0; // 0x420640
  GrowableList_factory_ctor_of() /* 0x276db0 */; // 0x420644
  x1 = local_m10; // 0x420648
  x2 = x0; // 0x42064c
  VirtualParty_inviteUserToParty() /* 0x42066c */; // 0x420650
  SP = FP; // 0x420658
  x0 = NULL; // 0x420654
  // frame: FP, LR, mem(SP), 0x10 // 0x42065c
  return;
}

// PartyInviteNotifier_anon_closure
// raw disassembly:
//  0x420740: stp FP, LR, [SP, #-0x10]!
//  0x420744: mov FP, SP
//  0x420748: ldr x1, [FP, #0x10]
//  0x42074c: ldur w2, [x1, #7]
//  0x420750: add x2, x2, HEAP, lsl #32
//  0x420754: ldr BARRIER, [PP, #0x40]
//  0x420758: cmp w2, w16
//  0x42075c: b.eq #0x420794
//  0x420760: ldur w1, [x2, #7]
//  0x420764: add x1, x1, HEAP, lsl #32
//  0x420768: ldr BARRIER, [PP, #0x40]
//  0x42076c: cmp w1, w16
//  0x420770: b.eq #0x4207a0
//  0x420774: ldur w0, [x1, #7]
//  0x420778: add x0, x0, HEAP, lsl #32
//  0x42077c: ldr BARRIER, [PP, #0x40]
//  0x420780: cmp w0, w16
//  0x420784: b.eq #0x4207ac
//  0x420788: mov SP, FP
//  0x42078c: ldp FP, LR, [SP], #0x10
//  0x420790: ret 
//  0x420794: add x9, PP, #0x11, lsl #12
//  0x420798: ldr x9, [x9, #0x738]
//  0x42079c: bl #0x620258
//  0x4207a0: add x9, PP, #0x11, lsl #12
//  0x4207a4: ldr x9, [x9, #0x740]
//  0x4207a8: bl #0x620258
//  0x4207ac: add x9, PP, #0x11, lsl #12
//  0x4207b0: ldr x9, [x9, #0x748]
//  0x4207b4: bl #0x620258
//
dynamic PartyInviteNotifier_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x420740
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x420754
  // frame: FP = SP // 0x420744
  w2 = mem((local_10), 7); // 0x42074c
  x1 = local_10; // 0x420748
  x2 = ((mem((local_10), 7)) & 0xffffffff) + (HEAP << 32); // 0x420750
  if (w2 == w16) {
    x9 = mem((PP + 0x11000), 0x738) /* Field */; // 0x420798
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42079c
  } else {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x420768
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x420764
    if (w1 == w16) {
      x9 = mem((PP + 0x11000), 0x740) /* Field */; // 0x4207a4
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4207a8
    } else {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x42077c
      x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x420778
      if (w0 != w16) {
        SP = FP; // 0x420788
        // frame: FP, LR, mem(SP), 0x10 // 0x42078c
        return;
      }
    }
    x9 = mem((PP + 0x11000), 0x748) /* Field */; // 0x4207b0
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4207b4
  }
}

// PartyInviteNotifier_needFlagHighlight
// raw disassembly:
//  0x421f74: stp FP, LR, [SP, #-0x10]!
//  0x421f78: mov FP, SP
//  0x421f7c: cmp x2, #3
//  0x421f80: b.eq #0x421f94
//  0x421f84: add x0, NULL, #0x30
//  0x421f88: mov SP, FP
//  0x421f8c: ldp FP, LR, [SP], #0x10
//  0x421f90: ret 
//  0x421f94: ldur w1, [x3, #7]
//  0x421f98: add x1, x1, HEAP, lsl #32
//  0x421f9c: ldr BARRIER, [PP, #0x40]
//  0x421fa0: cmp w1, w16
//  0x421fa4: b.eq #0x421fec
//  0x421fa8: ldur w2, [x1, #0xf]
//  0x421fac: add x2, x2, HEAP, lsl #32
//  0x421fb0: ldr BARRIER, [PP, #0x40]
//  0x421fb4: cmp w2, w16
//  0x421fb8: b.eq #0x421ff8
//  0x421fbc: ldur w3, [x1, #0x13]
//  0x421fc0: add x3, x3, HEAP, lsl #32
//  0x421fc4: ldr BARRIER, [PP, #0x40]
//  0x421fc8: cmp w3, w16
//  0x421fcc: b.eq #0x422004
//  0x421fd0: tbnz w3, #4, #0x421fdc
//  0x421fd4: mov x0, x2
//  0x421fd8: b #0x421fe0
//  0x421fdc: add x0, NULL, #0x30
//  0x421fe0: mov SP, FP
//  0x421fe4: ldp FP, LR, [SP], #0x10
//  0x421fe8: ret 
//  0x421fec: add x9, PP, #0x11, lsl #12
//  0x421ff0: ldr x9, [x9, #0x738]
//  0x421ff4: bl #0x620258
//  0x421ff8: add x9, PP, #0x14, lsl #12
//  0x421ffc: ldr x9, [x9, #0xf78]
//  0x422000: bl #0x620258
//  0x422004: add x9, PP, #0x14, lsl #12
//  0x422008: ldr x9, [x9, #0xf80]
//  0x42200c: bl #0x620258
//
dynamic PartyInviteNotifier_needFlagHighlight() {
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
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x421f74
  // frame: FP = SP // 0x421f78
  if (x2 != 3) {
    SP = FP; // 0x421f88
    x0 = NULL + 0x30; // 0x421f84
    // frame: FP, LR, mem(SP), 0x10 // 0x421f8c
    return;
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x421f9c
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x421f98
  if (w1 == w16) {
    x9 = mem((PP + 0x11000), 0x738) /* Field */; // 0x421ff0
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x421ff4
  } else {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x421fb0
    x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x421fac
    if (w2 == w16) {
      x9 = mem((PP + 0x14000), 0xf78) /* Field */; // 0x421ffc
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x422000
    } else {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x421fc4
      x3 = (w3 & 0xffffffff) + (HEAP << 32); // 0x421fc0
      if (w3 == w16) {
        // duplicated branch body (target 0x422004 terminates; the same code is emitted below)
        x9 = mem((PP + 0x14000), 0xf80) /* Field */; // 0x422008
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42200c
      }
      if (x3 & (1 << 4) != 0) {
        x0 = NULL + 0x30; // 0x421fdc
      } else {
        x0 = x2; // 0x421fd4
      }
      SP = FP; // 0x421fe0
      // frame: FP, LR, mem(SP), 0x10 // 0x421fe4
      return;
    }
    x9 = mem((PP + 0x14000), 0xf80) /* Field */; // 0x422008
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42200c
  }
}

// PartyInviteNotifier_getItemFlag
// raw disassembly:
//  0x422010: stp FP, LR, [SP, #-0x10]!
//  0x422014: mov FP, SP
//  0x422018: ldr BARRIER, [THR, #0x38]
//  0x42201c: cmp SP, BARRIER
//  0x422020: b.ls #0x422144
//  0x422024: cmp x2, #3
//  0x422028: b.eq #0x42203c
//  0x42202c: ldr x0, [PP, #0x148]
//  0x422030: mov SP, FP
//  0x422034: ldp FP, LR, [SP], #0x10
//  0x422038: ret 
//  0x42203c: ldur w0, [x3, #7]
//  0x422040: add x0, x0, HEAP, lsl #32
//  0x422044: ldr BARRIER, [PP, #0x40]
//  0x422048: cmp w0, w16
//  0x42204c: b.eq #0x42214c
//  0x422050: ldur w1, [x0, #0xf]
//  0x422054: add x1, x1, HEAP, lsl #32
//  0x422058: ldr BARRIER, [PP, #0x40]
//  0x42205c: cmp w1, w16
//  0x422060: b.eq #0x422158
//  0x422064: ldur w2, [x0, #0x13]
//  0x422068: add x2, x2, HEAP, lsl #32
//  0x42206c: ldr BARRIER, [PP, #0x40]
//  0x422070: cmp w2, w16
//  0x422074: b.eq #0x422164
//  0x422078: tbnz w2, #4, #0x42209c
//  0x42207c: tbnz w1, #4, #0x42209c
//  0x422080: add x1, PP, #0xc, lsl #12
//  0x422084: ldr x1, [x1, #0xa98]
//  0x422088: ldr x4, [PP, #0x4c0]
//  0x42208c: bl #0x3a1dcc
//  0x422090: mov SP, FP
//  0x422094: ldp FP, LR, [SP], #0x10
//  0x422098: ret 
//  0x42209c: ldur w1, [x0, #0xb]
//  0x4220a0: add x1, x1, HEAP, lsl #32
//  0x4220a4: ldr BARRIER, [PP, #0x40]
//  0x4220a8: cmp w1, w16
//  0x4220ac: b.eq #0x422170
//  0x4220b0: add BARRIER, PP, #0x14, lsl #12
//  0x4220b4: ldr BARRIER, [BARRIER, #0xf88]
//  0x4220b8: cmp w1, w16
//  0x4220bc: b.ne #0x4220dc
//  0x4220c0: add x1, PP, #0xc, lsl #12
//  0x4220c4: ldr x1, [x1, #0xaa0]
//  0x4220c8: ldr x4, [PP, #0x4c0]
//  0x4220cc: bl #0x3a1dcc
//  0x4220d0: mov SP, FP
//  0x4220d4: ldp FP, LR, [SP], #0x10
//  0x4220d8: ret 
//  0x4220dc: add BARRIER, PP, #0x14, lsl #12
//  0x4220e0: ldr BARRIER, [BARRIER, #0xf90]
//  0x4220e4: cmp w1, w16
//  0x4220e8: b.ne #0x422108
//  0x4220ec: add x1, PP, #0xc, lsl #12
//  0x4220f0: ldr x1, [x1, #0xab0]
//  0x4220f4: ldr x4, [PP, #0x4c0]
//  0x4220f8: bl #0x3a1dcc
//  0x4220fc: mov SP, FP
//  0x422100: ldp FP, LR, [SP], #0x10
//  0x422104: ret 
//  0x422108: add BARRIER, PP, #0x14, lsl #12
//  0x42210c: ldr BARRIER, [BARRIER, #0xf98]
//  0x422110: cmp w1, w16
//  0x422114: b.ne #0x422134
//  0x422118: add x1, PP, #0xc, lsl #12
//  0x42211c: ldr x1, [x1, #0xac0]
//  0x422120: ldr x4, [PP, #0x4c0]
//  0x422124: bl #0x3a1dcc
//  0x422128: mov SP, FP
//  0x42212c: ldp FP, LR, [SP], #0x10
//  0x422130: ret 
//  0x422134: ldr x0, [PP, #0x148]
//  0x422138: mov SP, FP
//  0x42213c: ldp FP, LR, [SP], #0x10
//  0x422140: ret 
//  0x422144: bl #0x61fa28
//  0x422148: b #0x422024
//  0x42214c: add x9, PP, #0x11, lsl #12
//  0x422150: ldr x9, [x9, #0x738]
//  0x422154: bl #0x620258
//  0x422158: add x9, PP, #0x14, lsl #12
//  0x42215c: ldr x9, [x9, #0xf78]
//  0x422160: bl #0x620258
//  0x422164: add x9, PP, #0x14, lsl #12
//  0x422168: ldr x9, [x9, #0xf80]
//  0x42216c: bl #0x620258
//  0x422170: add x9, PP, #0x14, lsl #12
//  0x422174: ldr x9, [x9, #0xfa0]
//  0x422178: bl #0x620258
//
dynamic PartyInviteNotifier_getItemFlag() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x422010
  BARRIER = mem(THR, 0x38); // 0x422018
  // frame: FP = SP // 0x422014
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x422144
  }
  if (x2 != 3) {
    SP = FP; // 0x422030
    x0 = "" /* pp+0x148 */; // 0x42202c
    // frame: FP, LR, mem(SP), 0x10 // 0x422034
    return;
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x422044
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x422040
  if (w0 == w16) {
    x9 = mem((PP + 0x11000), 0x738) /* Field */; // 0x422150
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x422154
  } else {
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x422058
    x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x422054
    if (w1 == w16) {
      x9 = mem((PP + 0x14000), 0xf78) /* Field */; // 0x42215c
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x422160
    } else {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x42206c
      x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x422068
      if (w2 == w16) {
        x9 = mem((PP + 0x14000), 0xf80) /* Field */; // 0x422168
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42216c
      } else {
        if (x2 & (1 << 4) != 0) {
        } else {
          if (x1 & (1 << 4) == 0) {
            x1 = "chat_origin_friend" /* pp+0xca98 */; // 0x422084
            x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x422088
            getString() /* 0x3a1dcc */; // 0x42208c
            SP = FP; // 0x422090
            // frame: FP, LR, mem(SP), 0x10 // 0x422094
            return;
          }
        }
        BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4220a4
        x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4220a0
        if (w1 == w16) {
          // duplicated branch body (target 0x422170 terminates; the same code is emitted below)
          x9 = mem((PP + 0x14000), 0xfa0) /* Field */; // 0x422174
          LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x422178
        }
        BARRIER = mem((PP + 0x14000), 0xf88) /* Obj!ChatFrom@1216b  */; // 0x4220b4
        if (w1 == w16) {
          x1 = "chat_origin_planet" /* pp+0xcaa0 */; // 0x4220c4
          x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4220c8
          getString() /* 0x3a1dcc */; // 0x4220cc
          SP = FP; // 0x4220d0
          // frame: FP, LR, mem(SP), 0x10 // 0x4220d4
          return;
        }
        BARRIER = mem((PP + 0x14000), 0xf90) /* Obj!ChatFrom@1216a  */; // 0x4220e0
        if (w1 == w16) {
          x1 = "chat_origin_match" /* pp+0xcab0 */; // 0x4220f0
          x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x4220f4
          getString() /* 0x3a1dcc */; // 0x4220f8
          SP = FP; // 0x4220fc
          // frame: FP, LR, mem(SP), 0x10 // 0x422100
          return;
        }
        BARRIER = mem((PP + 0x14000), 0xf98) /* Obj!ChatFrom@12169  */; // 0x42210c
        if (w1 != w16) {
          SP = FP; // 0x422138
          x0 = "" /* pp+0x148 */; // 0x422134
          // frame: FP, LR, mem(SP), 0x10 // 0x42213c
          return;
        }
        x1 = "chat_origin_square" /* pp+0xcac0 */; // 0x42211c
        x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x422120
        getString() /* 0x3a1dcc */; // 0x422124
        SP = FP; // 0x422128
        // frame: FP, LR, mem(SP), 0x10 // 0x42212c
        return;
      }
      x9 = mem((PP + 0x14000), 0xfa0) /* Field */; // 0x422174
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x422178
    }
  }
}

// PartyInviteNotifier_selectCurrentItem
// raw disassembly:
//  0x4221d8: stp FP, LR, [SP, #-0x10]!
//  0x4221dc: mov FP, SP
//  0x4221e0: sub SP, SP, #0x48
//  0x4221e4: mov x3, x1
//  0x4221e8: mov x0, x2
//  0x4221ec: stur x1, [FP, #-0x18]
//  0x4221f0: stur x2, [FP, #-0x20]
//  0x4221f4: ldr BARRIER, [THR, #0x38]
//  0x4221f8: cmp SP, BARRIER
//  0x4221fc: b.ls #0x422560
//  0x422200: ldur w4, [x0, #0xb]
//  0x422204: add x4, x4, HEAP, lsl #32
//  0x422208: ldr BARRIER, [PP, #0x40]
//  0x42220c: cmp w4, w16
//  0x422210: b.eq #0x422568
//  0x422214: stur x4, [FP, #-0x10]
//  0x422218: ldur w1, [x0, #7]
//  0x42221c: add x1, x1, HEAP, lsl #32
//  0x422220: ldr BARRIER, [PP, #0x40]
//  0x422224: cmp w1, w16
//  0x422228: b.eq #0x422574
//  0x42222c: ldur w2, [x1, #7]
//  0x422230: add x2, x2, HEAP, lsl #32
//  0x422234: ldr BARRIER, [PP, #0x40]
//  0x422238: cmp w2, w16
//  0x42223c: b.eq #0x422580
//  0x422240: ldur w5, [x2, #7]
//  0x422244: add x5, x5, HEAP, lsl #32
//  0x422248: ldr BARRIER, [PP, #0x40]
//  0x42224c: cmp w5, w16
//  0x422250: b.eq #0x42258c
//  0x422254: stur x5, [FP, #-8]
//  0x422258: add x1, PP, #0xb, lsl #12
//  0x42225c: ldr x1, [x1, #0x820]
//  0x422260: mov x2, #0
//  0x422264: bl #0x277268
//  0x422268: mov x3, x0
//  0x42226c: ldur x0, [FP, #-0x18]
//  0x422270: stur x3, [FP, #-0x28]
//  0x422274: ldur w2, [x0, #0x53]
//  0x422278: add x2, x2, HEAP, lsl #32
//  0x42227c: mov x1, x3
//  0x422280: bl #0x2ce4e8
//  0x422284: ldur x0, [FP, #-0x18]
//  0x422288: ldur w2, [x0, #0x57]
//  0x42228c: add x2, x2, HEAP, lsl #32
//  0x422290: ldur x1, [FP, #-0x28]
//  0x422294: bl #0x2ce4e8
//  0x422298: ldur x0, [FP, #-0x18]
//  0x42229c: ldur w2, [x0, #0x5b]
//  0x4222a0: add x2, x2, HEAP, lsl #32
//  0x4222a4: ldur x1, [FP, #-0x28]
//  0x4222a8: bl #0x2ce4e8
//  0x4222ac: ldur x0, [FP, #-0x18]
//  0x4222b0: ldur w2, [x0, #0x5f]
//  0x4222b4: add x2, x2, HEAP, lsl #32
//  0x4222b8: ldur x1, [FP, #-0x28]
//  0x4222bc: bl #0x2ce4e8
//  0x4222c0: ldur x0, [FP, #-0x10]
//  0x4222c4: tbnz w0, #4, #0x4223d8
//  0x4222c8: ldur x0, [FP, #-0x18]
//  0x4222cc: ldur x3, [FP, #-0x28]
//  0x4222d0: ldur w1, [x0, #0x63]
//  0x4222d4: add x1, x1, HEAP, lsl #32
//  0x4222d8: ldur x2, [FP, #-0x20]
//  0x4222dc: bl #0x614948
//  0x4222e0: ldur x2, [FP, #-0x28]
//  0x4222e4: ldur w3, [x2, #0xb]
//  0x4222e8: stur x3, [FP, #-0x38]
//  0x4222ec: sbfx x0, x3, #1, #0x1f
//  0x4222f0: mov x5, #0
//  0x4222f4: ldur x4, [FP, #-8]
//  0x4222f8: stur x5, [FP, #-0x30]
//  0x4222fc: ldr BARRIER, [THR, #0x38]
//  0x422300: cmp SP, BARRIER
//  0x422304: b.ls #0x422598
//  0x422308: cmp x5, x0
//  0x42230c: b.ge #0x422508
//  0x422310: mov x1, x5
//  0x422314: cmp x1, x0
//  0x422318: b.hs #0x4225a0
//  0x42231c: ldur w0, [x2, #0xf]
//  0x422320: add x0, x0, HEAP, lsl #32
//  0x422324: add BARRIER, x0, x5, lsl #2
//  0x422328: ldur w1, [BARRIER, #0xf]
//  0x42232c: add x1, x1, HEAP, lsl #32
//  0x422330: stur x1, [FP, #-0x10]
//  0x422334: ldur w0, [x1, #7]
//  0x422338: add x0, x0, HEAP, lsl #32
//  0x42233c: ldr BARRIER, [PP, #0x40]
//  0x422340: cmp w0, w16
//  0x422344: b.eq #0x4225a4
//  0x422348: ldur w6, [x0, #7]
//  0x42234c: add x6, x6, HEAP, lsl #32
//  0x422350: ldr BARRIER, [PP, #0x40]
//  0x422354: cmp w6, w16
//  0x422358: b.eq #0x4225b0
//  0x42235c: ldur w0, [x6, #7]
//  0x422360: add x0, x0, HEAP, lsl #32
//  0x422364: ldr BARRIER, [PP, #0x40]
//  0x422368: cmp w0, w16
//  0x42236c: b.eq #0x4225bc
//  0x422370: ldur x6, [x4, #-1]
//  0x422374: ubfx x6, x6, #0xc, #0x14
//  0x422378: stp x0, x4, [SP]
//  0x42237c: mov x0, x6
//  0x422380: mov LR, x0
//  0x422384: ldr LR, [x21, LR, lsl #3]
//  0x422388: blr LR
//  0x42238c: tbnz w0, #4, #0x4223a0
//  0x422390: ldur x0, [FP, #-0x10]
//  0x422394: add x1, NULL, #0x30
//  0x422398: stur w1, [x0, #0xb]
//  0x42239c: b #0x4223a4
//  0x4223a0: add x1, NULL, #0x30
//  0x4223a4: ldur x3, [FP, #-0x28]
//  0x4223a8: ldur x2, [FP, #-0x38]
//  0x4223ac: ldur w0, [x3, #0xb]
//  0x4223b0: cmp w0, w2
//  0x4223b4: b.ne #0x422520
//  0x4223b8: ldur x4, [FP, #-0x30]
//  0x4223bc: add x5, x4, #1
//  0x4223c0: sbfx x4, x0, #1, #0x1f
//  0x4223c4: mov x0, x4
//  0x4223c8: mov BARRIER, x2
//  0x4223cc: mov x2, x3
//  0x4223d0: mov x3, BARRIER
//  0x4223d4: b #0x4222f4
//  0x4223d8: ldur x0, [FP, #-0x18]
//  0x4223dc: ldur x3, [FP, #-0x28]
//  0x4223e0: ldur w1, [x0, #0x63]
//  0x4223e4: add x1, x1, HEAP, lsl #32
//  0x4223e8: ldur w2, [x1, #0x13]
//  0x4223ec: ldur w4, [x1, #0x17]
//  0x4223f0: sbfx x5, x2, #1, #0x1f
//  0x4223f4: sbfx x2, x4, #1, #0x1f
//  0x4223f8: sub x4, x5, x2
//  0x4223fc: cmp x4, #0x14
//  0x422400: b.ne #0x422414
//  0x422404: mov x0, NULL
//  0x422408: mov SP, FP
//  0x42240c: ldp FP, LR, [SP], #0x10
//  0x422410: ret 
//  0x422414: ldur x2, [FP, #-0x20]
//  0x422418: bl #0x611d50
//  0x42241c: ldur x2, [FP, #-0x28]
//  0x422420: ldur w3, [x2, #0xb]
//  0x422424: stur x3, [FP, #-0x20]
//  0x422428: sbfx x0, x3, #1, #0x1f
//  0x42242c: mov x5, #0
//  0x422430: ldur x4, [FP, #-8]
//  0x422434: stur x5, [FP, #-0x30]
//  0x422438: ldr BARRIER, [THR, #0x38]
//  0x42243c: cmp SP, BARRIER
//  0x422440: b.ls #0x4225c8
//  0x422444: cmp x5, x0
//  0x422448: b.ge #0x422508
//  0x42244c: mov x1, x5
//  0x422450: cmp x1, x0
//  0x422454: b.hs #0x4225d0
//  0x422458: ldur w0, [x2, #0xf]
//  0x42245c: add x0, x0, HEAP, lsl #32
//  0x422460: add BARRIER, x0, x5, lsl #2
//  0x422464: ldur w1, [BARRIER, #0xf]
//  0x422468: add x1, x1, HEAP, lsl #32
//  0x42246c: stur x1, [FP, #-0x10]
//  0x422470: ldur w0, [x1, #7]
//  0x422474: add x0, x0, HEAP, lsl #32
//  0x422478: ldr BARRIER, [PP, #0x40]
//  0x42247c: cmp w0, w16
//  0x422480: b.eq #0x4225d4
//  0x422484: ldur w6, [x0, #7]
//  0x422488: add x6, x6, HEAP, lsl #32
//  0x42248c: ldr BARRIER, [PP, #0x40]
//  0x422490: cmp w6, w16
//  0x422494: b.eq #0x4225e0
//  0x422498: ldur w0, [x6, #7]
//  0x42249c: add x0, x0, HEAP, lsl #32
//  0x4224a0: ldr BARRIER, [PP, #0x40]
//  0x4224a4: cmp w0, w16
//  0x4224a8: b.eq #0x4225ec
//  0x4224ac: ldur x6, [x4, #-1]
//  0x4224b0: ubfx x6, x6, #0xc, #0x14
//  0x4224b4: stp x0, x4, [SP]
//  0x4224b8: mov x0, x6
//  0x4224bc: mov LR, x0
//  0x4224c0: ldr LR, [x21, LR, lsl #3]
//  0x4224c4: blr LR
//  0x4224c8: tbnz w0, #4, #0x4224dc
//  0x4224cc: ldur x0, [FP, #-0x10]
//  0x4224d0: add x1, NULL, #0x20
//  0x4224d4: stur w1, [x0, #0xb]
//  0x4224d8: b #0x4224e0
//  0x4224dc: add x1, NULL, #0x20
//  0x4224e0: ldur x2, [FP, #-0x28]
//  0x4224e4: ldur x3, [FP, #-0x20]
//  0x4224e8: ldur w0, [x2, #0xb]
//  0x4224ec: cmp w0, w3
//  0x4224f0: b.ne #0x422540
//  0x4224f4: ldur x4, [FP, #-0x30]
//  0x4224f8: add x5, x4, #1
//  0x4224fc: sbfx x4, x0, #1, #0x1f
//  0x422500: mov x0, x4
//  0x422504: b #0x422430
//  0x422508: ldur x1, [FP, #-0x18]
//  0x42250c: bl #0x3ac980
//  0x422510: mov x0, NULL
//  0x422514: mov SP, FP
//  0x422518: ldp FP, LR, [SP], #0x10
//  0x42251c: ret 
//  0x422520: mov x2, x3
//  0x422524: bl #0x277514
//  0x422528: mov x1, x0
//  0x42252c: ldur x0, [FP, #-0x28]
//  0x422530: stur w0, [x1, #0xb]
//  0x422534: mov x0, x1
//  0x422538: bl #0x61dadc
//  0x42253c: brk #0
//  0x422540: mov x0, x2
//  0x422544: bl #0x277514
//  0x422548: mov x1, x0
//  0x42254c: ldur x0, [FP, #-0x28]
//  0x422550: stur w0, [x1, #0xb]
//  0x422554: mov x0, x1
//  0x422558: bl #0x61dadc
//  0x42255c: brk #0
//  0x422560: bl #0x61fa28
//  0x422564: b #0x422200
//  0x422568: add x9, PP, #0x14, lsl #12
//  0x42256c: ldr x9, [x9, #0xf70]
//  0x422570: bl #0x620258
//  0x422574: add x9, PP, #0x11, lsl #12
//  0x422578: ldr x9, [x9, #0x738]
//  0x42257c: bl #0x620258
//  0x422580: add x9, PP, #0x11, lsl #12
//  0x422584: ldr x9, [x9, #0x740]
//  0x422588: bl #0x620258
//  0x42258c: add x9, PP, #0x11, lsl #12
//  0x422590: ldr x9, [x9, #0x748]
//  0x422594: bl #0x620258
//  0x422598: bl #0x61fa28
//  0x42259c: b #0x422308
//  0x4225a0: bl #0x61fe70
//  0x4225a4: add x9, PP, #0x11, lsl #12
//  0x4225a8: ldr x9, [x9, #0x738]
//  0x4225ac: bl #0x620258
//  0x4225b0: add x9, PP, #0x11, lsl #12
//  0x4225b4: ldr x9, [x9, #0x740]
//  0x4225b8: bl #0x620258
//  0x4225bc: add x9, PP, #0x11, lsl #12
//  0x4225c0: ldr x9, [x9, #0x748]
//  0x4225c4: bl #0x620258
//  0x4225c8: bl #0x61fa28
//  0x4225cc: b #0x422444
//  0x4225d0: bl #0x61fe70
//  0x4225d4: add x9, PP, #0x11, lsl #12
//  0x4225d8: ldr x9, [x9, #0x738]
//  0x4225dc: bl #0x620258
//  0x4225e0: add x9, PP, #0x11, lsl #12
//  0x4225e4: ldr x9, [x9, #0x740]
//  0x4225e8: bl #0x620258
//  0x4225ec: add x9, PP, #0x11, lsl #12
//  0x4225f0: ldr x9, [x9, #0x748]
//  0x4225f4: bl #0x620258
//
// NOTE: control flow was not fully structured (goto kept) -- pseudocode only.
dynamic PartyInviteNotifier_selectCurrentItem() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic w4;
  dynamic w5;
  dynamic w6;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4221d8
  // frame: FP = SP // 0x4221dc
  // frame: SP = SP - 0x48 // 0x4221e0
  x0 = x2; // 0x4221e8
  x3 = x1; // 0x4221e4
  local_m18 = x1; // 0x4221ec
  local_m20 = x2; // 0x4221f0
  BARRIER = mem(THR, 0x38); // 0x4221f4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x422560
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x422208
  x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x422204
  if (w4 == w16) {
    x9 = mem((PP + 0x14000), 0xf70) /* Field */; // 0x42256c
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x422570
  } else {
    local_m10 = x4; // 0x422214
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x422220
    w1 = mem(x0, 7); // 0x422218
    x1 = ((mem(x0, 7)) & 0xffffffff) + (HEAP << 32); // 0x42221c
    if (w1 == w16) {
      x9 = mem((PP + 0x11000), 0x738) /* Field */; // 0x422578
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42257c
    } else {
      BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x422234
      x2 = (w2 & 0xffffffff) + (HEAP << 32); // 0x422230
      if (w2 == w16) {
        x9 = mem((PP + 0x11000), 0x740) /* Field */; // 0x422584
        LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x422588
      } else {
        BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x422248
        x5 = (w5 & 0xffffffff) + (HEAP << 32); // 0x422244
        if (w5 == w16) {
          x9 = mem((PP + 0x11000), 0x748) /* Field */; // 0x422590
          LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x422594
        } else {
          local_m8 = x5; // 0x422254
          x1 = mem((PP + 0xb000), 0x820) /* TypeArguments */; // 0x42225c
          x2 = 0; // 0x422260
          GrowableList_factory_ctor() /* 0x277268 */; // 0x422264
          x0 = local_m18; // 0x42226c
          x3 = x0; // 0x422268
          local_m28 = x3; // 0x422270
          w2 = mem(x0, 0x53); // 0x422274
          x1 = x3; // 0x42227c
          x2 = ((mem(x0, 0x53)) & 0xffffffff) + (HEAP << 32); // 0x422278
          GrowableList_addAll() /* 0x2ce4e8 */; // 0x422280
          w2 = mem((local_m18), 0x57); // 0x422288
          x0 = local_m18; // 0x422284
          x1 = local_m28; // 0x422290
          x2 = ((mem((local_m18), 0x57)) & 0xffffffff) + (HEAP << 32); // 0x42228c
          GrowableList_addAll() /* 0x2ce4e8 */; // 0x422294
          w2 = mem((local_m18), 0x5b); // 0x42229c
          x0 = local_m18; // 0x422298
          x1 = local_m28; // 0x4222a4
          x2 = ((mem((local_m18), 0x5b)) & 0xffffffff) + (HEAP << 32); // 0x4222a0
          GrowableList_addAll() /* 0x2ce4e8 */; // 0x4222a8
          w2 = mem((local_m18), 0x5f); // 0x4222b0
          x0 = local_m18; // 0x4222ac
          x1 = local_m28; // 0x4222b8
          x2 = ((mem((local_m18), 0x5f)) & 0xffffffff) + (HEAP << 32); // 0x4222b4
          GrowableList_addAll() /* 0x2ce4e8 */; // 0x4222bc
          x0 = local_m10; // 0x4222c0
          if (x0 & (1 << 4) != 0) {
            w1 = mem((local_m18), 0x63); // 0x4223e0
            w2 = mem((((mem((local_m18), 0x63)) & 0xffffffff) + (HEAP << 32)), 0x13); // 0x4223e8
            w4 = mem((((mem((local_m18), 0x63)) & 0xffffffff) + (HEAP << 32)), 0x17); // 0x4223ec
            x0 = local_m18; // 0x4223d8
            x1 = ((mem((local_m18), 0x63)) & 0xffffffff) + (HEAP << 32); // 0x4223e4
            x2 = (((mem((((mem((local_m18), 0x63)) & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x4223f4
            x3 = local_m28; // 0x4223dc
            x4 = ((((mem((((mem((local_m18), 0x63)) & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) >> 1) & 0x7fffffff) - ((((mem((((mem((local_m18), 0x63)) & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) >> 1) & 0x7fffffff); // 0x4223f8
            x5 = (((mem((((mem((local_m18), 0x63)) & 0xffffffff) + (HEAP << 32)), 0x13)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x4223f0
            if (x4 == 0x14) {
              SP = FP; // 0x422408
              x0 = NULL; // 0x422404
              // frame: FP, LR, mem(SP), 0x10 // 0x42240c
              return;
            }
            x2 = local_m20; // 0x422414
            Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_add() /* 0x611d50 */; // 0x422418
            w3 = mem((local_m28), 0xb); // 0x422420
            x2 = local_m28; // 0x42241c
            x3 = (mem((local_m28), 0xb)) & 0xffffffff; // 0x422420
            local_m20 = x3; // 0x422424
            x0 = (x3 >> 1) & 0x7fffffff; // 0x422428
            x5 = 0; // 0x42242c
            x4 = local_m8; // 0x422430
            local_m30 = x5; // 0x422434
            BARRIER = mem(THR, 0x38); // 0x422438
            if (SP <= BARRIER) {
              StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4225c8
            }
            if (x5 >= x0) {
            } else {
              x1 = x5; // 0x42244c
              if (x1 >= x0) {
                RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x4225d0
              } else {
                BARRIER = ((w0 & 0xffffffff) + (HEAP << 32)) + (x5 << 2); // 0x422460
                w1 = mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x5 << 2)), 0xf); // 0x422464
                x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x42245c
                x1 = ((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x5 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x422468
                local_m10 = x1; // 0x42246c
                BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x422478
                w0 = mem(x1, 7); // 0x422470
                x0 = ((mem(x1, 7)) & 0xffffffff) + (HEAP << 32); // 0x422474
                if (w0 == w16) {
                  x9 = mem((PP + 0x11000), 0x738) /* Field */; // 0x4225d8
                  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4225dc
                } else {
                  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x42248c
                  x6 = (w6 & 0xffffffff) + (HEAP << 32); // 0x422488
                  if (w6 == w16) {
                    x9 = mem((PP + 0x11000), 0x740) /* Field */; // 0x4225e4
                    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4225e8
                  } else {
                    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4224a0
                    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x42249c
                    if (w0 == w16) {
                    } else {
                      x6 = ((mem(x4, -1)) >> 12) & 0xfffff; // 0x4224b0
                      // frame: x0, x4, mem(SP) // 0x4224b4
                      LR = mem(x21, (LR << 3)); // 0x4224c0
                      x0 = x6; // 0x4224b8
                      callIndirect(LR); // 0x4224c4
                      if (x0 & (1 << 4) != 0) {
                        gotoLabel(0x4224dc);
                      } else {
                        gotoLabel(0x4224cc);
                      }
                      w0 = mem((local_m28), 0xb); // 0x4224e8
                      x0 = (mem((local_m28), 0xb)) & 0xffffffff; // 0x4224e8
                      x2 = local_m28; // 0x4224e0
                      x3 = local_m20; // 0x4224e4
                      if (w0 != w3) {
                        gotoLabel(0x422540);
                      } else {
                        gotoLabel(0x4224f4);
                      }
                      x0 = x2; // 0x422540
                      AllocationStub_ConcurrentModificationError() /* 0x277514 */; // 0x422544
                      x0 = local_m28; // 0x42254c
                      x1 = x0; // 0x422548
                      memSet(x1, 0xb, w0); // 0x422550
                      x0 = x1; // 0x422554
                      sub_0x61dadc(); // 0x422558
                      abort(); // brk #0x0
                    }
                  }
                  x9 = mem((PP + 0x11000), 0x748) /* Field */; // 0x4225f0
                  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4225f4
                }
              }
            }
          } else {
            w1 = mem((local_m18), 0x63); // 0x4222d0
            x0 = local_m18; // 0x4222c8
            x1 = ((mem((local_m18), 0x63)) & 0xffffffff) + (HEAP << 32); // 0x4222d4
            x2 = local_m20; // 0x4222d8
            x3 = local_m28; // 0x4222cc
            Set_HashVMBase_SetMixin_HashBase_OperatorEqualsAndHashCode_LinkedHashSetMixin_remove() /* 0x614948 */; // 0x4222dc
            w3 = mem((local_m28), 0xb); // 0x4222e4
            x2 = local_m28; // 0x4222e0
            x3 = (mem((local_m28), 0xb)) & 0xffffffff; // 0x4222e4
            local_m38 = x3; // 0x4222e8
            x0 = (x3 >> 1) & 0x7fffffff; // 0x4222ec
            x5 = 0; // 0x4222f0
            x4 = local_m8; // 0x4222f4
            local_m30 = x5; // 0x4222f8
            BARRIER = mem(THR, 0x38); // 0x4222fc
            if (SP <= BARRIER) {
              StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x422598
            }
            if (x5 >= x0) {
            } else {
              x1 = x5; // 0x422310
              if (x1 >= x0) {
                RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x4225a0
              } else {
                BARRIER = ((w0 & 0xffffffff) + (HEAP << 32)) + (x5 << 2); // 0x422324
                w1 = mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x5 << 2)), 0xf); // 0x422328
                x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x422320
                x1 = ((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x5 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42232c
                local_m10 = x1; // 0x422330
                BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x42233c
                w0 = mem(x1, 7); // 0x422334
                x0 = ((mem(x1, 7)) & 0xffffffff) + (HEAP << 32); // 0x422338
                if (w0 == w16) {
                  x9 = mem((PP + 0x11000), 0x738) /* Field */; // 0x4225a8
                  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4225ac
                } else {
                  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x422350
                  x6 = (w6 & 0xffffffff) + (HEAP << 32); // 0x42234c
                  if (w6 == w16) {
                    x9 = mem((PP + 0x11000), 0x740) /* Field */; // 0x4225b4
                    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4225b8
                  } else {
                    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x422364
                    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x422360
                    if (w0 == w16) {
                      x9 = mem((PP + 0x11000), 0x748) /* Field */; // 0x4225c0
                      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4225c4
                    } else {
                      x6 = ((mem(x4, -1)) >> 12) & 0xfffff; // 0x422374
                      // frame: x0, x4, mem(SP) // 0x422378
                      LR = mem(x21, (LR << 3)); // 0x422384
                      x0 = x6; // 0x42237c
                      callIndirect(LR); // 0x422388
                      if (x0 & (1 << 4) != 0) {
                        gotoLabel(0x4223a0);
                      } else {
                        gotoLabel(0x422390);
                      }
                      w0 = mem((local_m28), 0xb); // 0x4223ac
                      x0 = (mem((local_m28), 0xb)) & 0xffffffff; // 0x4223ac
                      x2 = local_m38; // 0x4223a8
                      x3 = local_m28; // 0x4223a4
                      if (w0 != w2) {
                        gotoLabel(0x422520);
                      } else {
                        gotoLabel(0x4223b8);
                      }
                      x2 = x3; // 0x422520
                      AllocationStub_ConcurrentModificationError() /* 0x277514 */; // 0x422524
                      x0 = local_m28; // 0x42252c
                      x1 = x0; // 0x422528
                      memSet(x1, 0xb, w0); // 0x422530
                      x0 = x1; // 0x422534
                      sub_0x61dadc(); // 0x422538
                      abort(); // brk #0x0
                    }
                    x1 = local_m18; // 0x422508
                    SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x42250c
                    SP = FP; // 0x422514
                    x0 = NULL; // 0x422510
                    // frame: FP, LR, mem(SP), 0x10 // 0x422518
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

// PartyInviteNotifier_getEmptyTipsWithIndex
// raw disassembly:
//  0x4225f8: stp FP, LR, [SP, #-0x10]!
//  0x4225fc: mov FP, SP
//  0x422600: ldr BARRIER, [THR, #0x38]
//  0x422604: cmp SP, BARRIER
//  0x422608: b.ls #0x4226a8
//  0x42260c: cbnz x2, #0x42262c
//  0x422610: add x1, PP, #0xc, lsl #12
//  0x422614: ldr x1, [x1, #0xa18]
//  0x422618: ldr x4, [PP, #0x4c0]
//  0x42261c: bl #0x3a1dcc
//  0x422620: mov SP, FP
//  0x422624: ldp FP, LR, [SP], #0x10
//  0x422628: ret 
//  0x42262c: cmp x2, #1
//  0x422630: b.ne #0x422650
//  0x422634: add x1, PP, #0xc, lsl #12
//  0x422638: ldr x1, [x1, #0xa28]
//  0x42263c: ldr x4, [PP, #0x4c0]
//  0x422640: bl #0x3a1dcc
//  0x422644: mov SP, FP
//  0x422648: ldp FP, LR, [SP], #0x10
//  0x42264c: ret 
//  0x422650: cmp x2, #2
//  0x422654: b.ne #0x422674
//  0x422658: add x1, PP, #0xc, lsl #12
//  0x42265c: ldr x1, [x1, #0xa38]
//  0x422660: ldr x4, [PP, #0x4c0]
//  0x422664: bl #0x3a1dcc
//  0x422668: mov SP, FP
//  0x42266c: ldp FP, LR, [SP], #0x10
//  0x422670: ret 
//  0x422674: cmp x2, #3
//  0x422678: b.ne #0x422698
//  0x42267c: add x1, PP, #0xc, lsl #12
//  0x422680: ldr x1, [x1, #0xa48]
//  0x422684: ldr x4, [PP, #0x4c0]
//  0x422688: bl #0x3a1dcc
//  0x42268c: mov SP, FP
//  0x422690: ldp FP, LR, [SP], #0x10
//  0x422694: ret 
//  0x422698: ldr x0, [PP, #0x148]
//  0x42269c: mov SP, FP
//  0x4226a0: ldp FP, LR, [SP], #0x10
//  0x4226a4: ret 
//  0x4226a8: bl #0x61fa28
//  0x4226ac: b #0x42260c
//
dynamic PartyInviteNotifier_getEmptyTipsWithIndex() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4225f8
  BARRIER = mem(THR, 0x38); // 0x422600
  // frame: FP = SP // 0x4225fc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4226a8
  }
  if (x2 == 0) {
    x1 = "virtual_party_private_room_invite_popup_friends_empty_tip" /* pp+0xca18 */; // 0x422614
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x422618
    getString() /* 0x3a1dcc */; // 0x42261c
    SP = FP; // 0x422620
    // frame: FP, LR, mem(SP), 0x10 // 0x422624
    return;
  }
  if (x2 == 1) {
    x1 = "virtual_party_private_room_invite_popup_following_empty_tip" /* pp+0xca28 */; // 0x422638
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x42263c
    getString() /* 0x3a1dcc */; // 0x422640
    SP = FP; // 0x422644
    // frame: FP, LR, mem(SP), 0x10 // 0x422648
    return;
  }
  if (x2 == 2) {
    x1 = "virtual_party_private_room_invite_popup_follower_empty_tip" /* pp+0xca38 */; // 0x42265c
    x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x422660
    getString() /* 0x3a1dcc */; // 0x422664
    SP = FP; // 0x422668
    // frame: FP, LR, mem(SP), 0x10 // 0x42266c
    return;
  }
  if (x2 != 3) {
    SP = FP; // 0x42269c
    x0 = "" /* pp+0x148 */; // 0x422698
    // frame: FP, LR, mem(SP), 0x10 // 0x4226a0
    return;
  }
  x1 = "virtual_party_private_room_invite_popup_recent_chat_empty_ti..." /* pp+0xca48 */; // 0x422680
  x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x422684
  getString() /* 0x3a1dcc */; // 0x422688
  SP = FP; // 0x42268c
  // frame: FP, LR, mem(SP), 0x10 // 0x422690
  return;
}

// PartyInviteNotifier_getItemsWithIndex
// raw disassembly:
//  0x4226b0: stp FP, LR, [SP, #-0x10]!
//  0x4226b4: mov FP, SP
//  0x4226b8: ldr BARRIER, [THR, #0x38]
//  0x4226bc: cmp SP, BARRIER
//  0x4226c0: b.ls #0x42274c
//  0x4226c4: cbnz x2, #0x4226dc
//  0x4226c8: ldur w0, [x1, #0x53]
//  0x4226cc: add x0, x0, HEAP, lsl #32
//  0x4226d0: mov SP, FP
//  0x4226d4: ldp FP, LR, [SP], #0x10
//  0x4226d8: ret 
//  0x4226dc: cmp x2, #1
//  0x4226e0: b.ne #0x4226f8
//  0x4226e4: ldur w0, [x1, #0x57]
//  0x4226e8: add x0, x0, HEAP, lsl #32
//  0x4226ec: mov SP, FP
//  0x4226f0: ldp FP, LR, [SP], #0x10
//  0x4226f4: ret 
//  0x4226f8: cmp x2, #2
//  0x4226fc: b.ne #0x422714
//  0x422700: ldur w0, [x1, #0x5b]
//  0x422704: add x0, x0, HEAP, lsl #32
//  0x422708: mov SP, FP
//  0x42270c: ldp FP, LR, [SP], #0x10
//  0x422710: ret 
//  0x422714: cmp x2, #3
//  0x422718: b.ne #0x422730
//  0x42271c: ldur w0, [x1, #0x5f]
//  0x422720: add x0, x0, HEAP, lsl #32
//  0x422724: mov SP, FP
//  0x422728: ldp FP, LR, [SP], #0x10
//  0x42272c: ret 
//  0x422730: add x1, PP, #0xb, lsl #12
//  0x422734: ldr x1, [x1, #0x820]
//  0x422738: mov x2, #0
//  0x42273c: bl #0x277268
//  0x422740: mov SP, FP
//  0x422744: ldp FP, LR, [SP], #0x10
//  0x422748: ret 
//  0x42274c: bl #0x61fa28
//  0x422750: b #0x4226c4
//
dynamic PartyInviteNotifier_getItemsWithIndex() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4226b0
  BARRIER = mem(THR, 0x38); // 0x4226b8
  // frame: FP = SP // 0x4226b4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42274c
  }
  if (x2 == 0) {
    SP = FP; // 0x4226d0
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4226cc
    // frame: FP, LR, mem(SP), 0x10 // 0x4226d4
    return;
  }
  if (x2 == 1) {
    SP = FP; // 0x4226ec
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4226e8
    // frame: FP, LR, mem(SP), 0x10 // 0x4226f0
    return;
  }
  if (x2 == 2) {
    SP = FP; // 0x422708
    x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x422704
    // frame: FP, LR, mem(SP), 0x10 // 0x42270c
    return;
  }
  if (x2 != 3) {
    x1 = mem((PP + 0xb000), 0x820) /* TypeArguments */; // 0x422734
    x2 = 0; // 0x422738
    GrowableList_factory_ctor() /* 0x277268 */; // 0x42273c
    SP = FP; // 0x422740
    // frame: FP, LR, mem(SP), 0x10 // 0x422744
    return;
  }
  SP = FP; // 0x422724
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x422720
  // frame: FP, LR, mem(SP), 0x10 // 0x422728
  return;
}

// PartyInviteNotifier_requestItemList
// raw disassembly:
//  0x422820: stp FP, LR, [SP, #-0x10]!
//  0x422824: mov FP, SP
//  0x422828: sub SP, SP, #0x28
//  0x42282c: mov x6, x3
//  0x422830: stur x3, [FP, #-0x18]
//  0x422834: mov x3, x1
//  0x422838: mov x0, x2
//  0x42283c: stur x1, [FP, #-8]
//  0x422840: stur x2, [FP, #-0x10]
//  0x422844: ldr BARRIER, [THR, #0x38]
//  0x422848: cmp SP, BARRIER
//  0x42284c: b.ls #0x422930
//  0x422850: mov x1, NULL
//  0x422854: mov x2, #4
//  0x422858: bl #0x61f920
//  0x42285c: mov x2, x0
//  0x422860: add BARRIER, PP, #0x14, lsl #12
//  0x422864: ldr BARRIER, [BARRIER, #0xd50]
//  0x422868: stur w16, [x2, #0xf]
//  0x42286c: ldur x3, [FP, #-0x10]
//  0x422870: sbfiz x0, x3, #1, #0x1f
//  0x422874: cmp x3, x0, asr #1
//  0x422878: b.eq #0x422884
//  0x42287c: bl #0x61fba8
//  0x422880: stur x3, [x0, #7]
//  0x422884: stur x0, [FP, #-0x20]
//  0x422888: stur w0, [x2, #0x13]
//  0x42288c: str x2, [SP]
//  0x422890: bl #0x2ad854
//  0x422894: ldur x2, [FP, #-0x10]
//  0x422898: cmp x2, #1
//  0x42289c: b.gt #0x4228e8
//  0x4228a0: cmp x2, #0
//  0x4228a4: b.gt #0x4228cc
//  0x4228a8: ldur x0, [FP, #-0x20]
//  0x4228ac: cbnz w0, #0x422920
//  0x4228b0: ldur x1, [FP, #-8]
//  0x4228b4: ldur x5, [x1, #0x2b]
//  0x4228b8: ldur x6, [FP, #-0x18]
//  0x4228bc: add x3, PP, #0x14, lsl #12
//  0x4228c0: ldr x3, [x3, #0xd58]
//  0x4228c4: bl #0x423510
//  0x4228c8: b #0x422920
//  0x4228cc: ldur x1, [FP, #-8]
//  0x4228d0: ldur x5, [x1, #0x33]
//  0x4228d4: ldur x6, [FP, #-0x18]
//  0x4228d8: add x3, PP, #0x14, lsl #12
//  0x4228dc: ldr x3, [x3, #0xd60]
//  0x4228e0: bl #0x423510
//  0x4228e4: b #0x422920
//  0x4228e8: ldur x1, [FP, #-8]
//  0x4228ec: ldur x0, [FP, #-0x20]
//  0x4228f0: cmp x2, #2
//  0x4228f4: b.gt #0x422910
//  0x4228f8: ldur x5, [x1, #0x3b]
//  0x4228fc: ldur x6, [FP, #-0x18]
//  0x422900: add x3, PP, #0x14, lsl #12
//  0x422904: ldr x3, [x3, #0xd68]
//  0x422908: bl #0x423510
//  0x42290c: b #0x422920
//  0x422910: cmp w0, #6
//  0x422914: b.ne #0x422920
//  0x422918: ldur x2, [FP, #-0x18]
//  0x42291c: bl #0x422938
//  0x422920: mov x0, NULL
//  0x422924: mov SP, FP
//  0x422928: ldp FP, LR, [SP], #0x10
//  0x42292c: ret 
//  0x422930: bl #0x61fa28
//  0x422934: b #0x422850
//
dynamic PartyInviteNotifier_requestItemList() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x5;
  dynamic x6;
  // frame: FP, LR, mem(SP, -0x10)! // 0x422820
  // frame: FP = SP // 0x422824
  // frame: SP = SP - 0x28 // 0x422828
  x6 = x3; // 0x42282c
  local_m18 = x3; // 0x422830
  x0 = x2; // 0x422838
  x3 = x1; // 0x422834
  local_m8 = x1; // 0x42283c
  local_m10 = x2; // 0x422840
  BARRIER = mem(THR, 0x38); // 0x422844
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x422930
  }
  x1 = NULL; // 0x422850
  x2 = 4; // 0x422854
  sub_0x61f920(); // 0x422858
  BARRIER = "request invite item list: " /* pp+0x14d50 */; // 0x422864
  x2 = x0; // 0x42285c
  memSet(x2, 0xf, w16); // 0x422868
  x0 = (((local_m10) & 0x7fffffff) << 1) /* signed */; // 0x422870
  x3 = local_m10; // 0x42286c
  if (x3 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x42287c
    memSet(x0, 7, x3); // 0x422880
  }
  local_m20 = x0; // 0x422884
  memSet(x2, 0x13, w0); // 0x422888
  local_0 = x2; // 0x42288c
  StringBase_interpolate() /* 0x2ad854 */; // 0x422890
  x2 = local_m10; // 0x422894
  if (x2 > 1) {
    x0 = local_m20; // 0x4228ec
    x1 = local_m8; // 0x4228e8
    if (x2 > 2) {
      if (w0 != 6) {
      } else {
        x2 = local_m18; // 0x422918
        PartyInviteNotifier_getRecentChat() /* 0x422938 */; // 0x42291c
      }
    } else {
      x3 = mem((PP + 0x14000), 0xd68) /* Obj!FollowType@12166  */; // 0x422904
      x5 = mem(x1, 0x3b); // 0x4228f8
      x6 = local_m18; // 0x4228fc
      PartyInviteNotifier_searchFollow() /* 0x423510 */; // 0x422908
    }
  } else {
    if (x2 > 0) {
      x1 = local_m8; // 0x4228cc
      x3 = mem((PP + 0x14000), 0xd60) /* Obj!FollowType@12167  */; // 0x4228dc
      x5 = mem((local_m8), 0x33); // 0x4228d0
      x6 = local_m18; // 0x4228d4
      PartyInviteNotifier_searchFollow() /* 0x423510 */; // 0x4228e0
    } else {
      x0 = local_m20; // 0x4228a8
      if (w0 != 0) {
      } else {
        x1 = local_m8; // 0x4228b0
        x3 = mem((PP + 0x14000), 0xd58) /* Obj!FollowType@12168  */; // 0x4228c0
        x5 = mem((local_m8), 0x2b); // 0x4228b4
        x6 = local_m18; // 0x4228b8
        PartyInviteNotifier_searchFollow() /* 0x423510 */; // 0x4228c4
      }
    }
  }
  SP = FP; // 0x422924
  x0 = NULL; // 0x422920
  // frame: FP, LR, mem(SP), 0x10 // 0x422928
  return;
}

// PartyInviteNotifier_getRecentChat
// raw disassembly:
//  0x422938: stp FP, LR, [SP, #-0x10]!
//  0x42293c: mov FP, SP
//  0x422940: sub SP, SP, #0x18
//  0x422944: stur x1, [FP, #-8]
//  0x422948: stur x2, [FP, #-0x10]
//  0x42294c: ldr BARRIER, [THR, #0x38]
//  0x422950: cmp SP, BARRIER
//  0x422954: b.ls #0x4229b8
//  0x422958: mov x1, #2
//  0x42295c: bl #0x61e890
//  0x422960: mov x3, x0
//  0x422964: ldur x0, [FP, #-8]
//  0x422968: stur x3, [FP, #-0x18]
//  0x42296c: stur w0, [x3, #0xf]
//  0x422970: ldur x0, [FP, #-0x10]
//  0x422974: stur w0, [x3, #0x13]
//  0x422978: mov x2, x3
//  0x42297c: add x1, PP, #0x14, lsl #12
//  0x422980: ldr x1, [x1, #0xd70]
//  0x422984: bl #0x61ec54
//  0x422988: ldur x2, [FP, #-0x18]
//  0x42298c: add x1, PP, #0x14, lsl #12
//  0x422990: ldr x1, [x1, #0xd78]
//  0x422994: stur x0, [FP, #-8]
//  0x422998: bl #0x61ec54
//  0x42299c: ldur x1, [FP, #-8]
//  0x4229a0: mov x2, x0
//  0x4229a4: bl #0x4229c0
//  0x4229a8: mov x0, NULL
//  0x4229ac: mov SP, FP
//  0x4229b0: ldp FP, LR, [SP], #0x10
//  0x4229b4: ret 
//  0x4229b8: bl #0x61fa28
//  0x4229bc: b #0x422958
//
dynamic PartyInviteNotifier_getRecentChat() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x422938
  // frame: FP = SP // 0x42293c
  // frame: SP = SP - 0x18 // 0x422940
  local_m8 = x1; // 0x422944
  local_m10 = x2; // 0x422948
  BARRIER = mem(THR, 0x38); // 0x42294c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4229b8
  }
  x1 = 2; // 0x422958
  sub_0x61e890(); // 0x42295c
  x0 = local_m8; // 0x422964
  x3 = x0; // 0x422960
  local_m18 = x3; // 0x422968
  memSet(x3, 0xf, w0); // 0x42296c
  x0 = local_m10; // 0x422970
  memSet(x3, 0x13, w0); // 0x422974
  x1 = mem((PP + 0x14000), 0xd70) /* Function */; // 0x422980
  x2 = x3; // 0x422978
  AllocationStub__Closure() /* 0x61ec54 */; // 0x422984
  x1 = mem((PP + 0x14000), 0xd78) /* Function */; // 0x422990
  x2 = local_m18; // 0x422988
  local_m8 = x0; // 0x422994
  AllocationStub__Closure() /* 0x61ec54 */; // 0x422998
  x1 = local_m8; // 0x42299c
  x2 = x0; // 0x4229a0
  SOApiService_getRecentChat() /* 0x4229c0 */; // 0x4229a4
  SP = FP; // 0x4229ac
  x0 = NULL; // 0x4229a8
  // frame: FP, LR, mem(SP), 0x10 // 0x4229b0
  return;
}

// PartyInviteNotifier_anon_closure_2
// raw disassembly:
//  0x422a58: stp FP, LR, [SP, #-0x10]!
//  0x422a5c: mov FP, SP
//  0x422a60: sub SP, SP, #8
//  0x422a64: ldr x0, [FP, #0x10]
//  0x422a68: ldur w4, [x0, #0x17]
//  0x422a6c: add x4, x4, HEAP, lsl #32
//  0x422a70: stur x4, [FP, #-8]
//  0x422a74: ldr BARRIER, [THR, #0x38]
//  0x422a78: cmp SP, BARRIER
//  0x422a7c: b.ls #0x422ad4
//  0x422a80: ldur w0, [x4, #0x13]
//  0x422a84: add x0, x0, HEAP, lsl #32
//  0x422a88: ldur w1, [x0, #0x17]
//  0x422a8c: add x1, x1, HEAP, lsl #32
//  0x422a90: add x2, NULL, #0x30
//  0x422a94: add x3, NULL, #0x20
//  0x422a98: bl #0x422c60
//  0x422a9c: ldur x0, [FP, #-8]
//  0x422aa0: ldur w1, [x0, #0xf]
//  0x422aa4: add x1, x1, HEAP, lsl #32
//  0x422aa8: mov x2, #3
//  0x422aac: add x3, NULL, #0x30
//  0x422ab0: bl #0x422adc
//  0x422ab4: ldur x0, [FP, #-8]
//  0x422ab8: ldur w1, [x0, #0xf]
//  0x422abc: add x1, x1, HEAP, lsl #32
//  0x422ac0: bl #0x3ac980
//  0x422ac4: mov x0, NULL
//  0x422ac8: mov SP, FP
//  0x422acc: ldp FP, LR, [SP], #0x10
//  0x422ad0: ret 
//  0x422ad4: bl #0x61fa28
//  0x422ad8: b #0x422a80
//
dynamic PartyInviteNotifier_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x422a58
  // frame: FP = SP // 0x422a5c
  // frame: SP = SP - 8 // 0x422a60
  w4 = mem((local_10), 0x17); // 0x422a68
  x0 = local_10; // 0x422a64
  x4 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x422a6c
  local_m8 = x4; // 0x422a70
  BARRIER = mem(THR, 0x38); // 0x422a74
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x422ad4
  }
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17); // 0x422a88
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x422a84
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x422a8c
  x2 = NULL + 0x30; // 0x422a90
  x3 = NULL + 0x20; // 0x422a94
  InviteUserPageState_onLoaded() /* 0x422c60 */; // 0x422a98
  w1 = mem((local_m8), 0xf); // 0x422aa0
  x0 = local_m8; // 0x422a9c
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x422aa4
  x2 = 3; // 0x422aa8
  x3 = NULL + 0x30; // 0x422aac
  PartyInviteNotifier_updateRefreshState() /* 0x422adc */; // 0x422ab0
  w1 = mem((local_m8), 0xf); // 0x422ab8
  x0 = local_m8; // 0x422ab4
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x422abc
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x422ac0
  SP = FP; // 0x422ac8
  x0 = NULL; // 0x422ac4
  // frame: FP, LR, mem(SP), 0x10 // 0x422acc
  return;
}

// PartyInviteNotifier_updateRefreshState
// raw disassembly:
//  0x422adc: stp FP, LR, [SP, #-0x10]!
//  0x422ae0: mov FP, SP
//  0x422ae4: cbnz x2, #0x422b04
//  0x422ae8: ldur w4, [x1, #0x43]
//  0x422aec: add x4, x4, HEAP, lsl #32
//  0x422af0: add BARRIER, PP, #0xb, lsl #12
//  0x422af4: ldr BARRIER, [BARRIER, #0x818]
//  0x422af8: cmp w4, w16
//  0x422afc: b.ne #0x422c50
//  0x422b00: b #0x422b6c
//  0x422b04: cmp x2, #1
//  0x422b08: b.ne #0x422b28
//  0x422b0c: ldur w4, [x1, #0x47]
//  0x422b10: add x4, x4, HEAP, lsl #32
//  0x422b14: add BARRIER, PP, #0xb, lsl #12
//  0x422b18: ldr BARRIER, [BARRIER, #0x818]
//  0x422b1c: cmp w4, w16
//  0x422b20: b.ne #0x422c50
//  0x422b24: b #0x422b6c
//  0x422b28: cmp x2, #2
//  0x422b2c: b.ne #0x422b4c
//  0x422b30: ldur w4, [x1, #0x4b]
//  0x422b34: add x4, x4, HEAP, lsl #32
//  0x422b38: add BARRIER, PP, #0xb, lsl #12
//  0x422b3c: ldr BARRIER, [BARRIER, #0x818]
//  0x422b40: cmp w4, w16
//  0x422b44: b.ne #0x422c50
//  0x422b48: b #0x422b6c
//  0x422b4c: cmp x2, #3
//  0x422b50: b.ne #0x422c50
//  0x422b54: ldur w4, [x1, #0x4f]
//  0x422b58: add x4, x4, HEAP, lsl #32
//  0x422b5c: add BARRIER, PP, #0xb, lsl #12
//  0x422b60: ldr BARRIER, [BARRIER, #0x818]
//  0x422b64: cmp w4, w16
//  0x422b68: b.ne #0x422c50
//  0x422b6c: tbnz w3, #4, #0x422b7c
//  0x422b70: add x0, PP, #0x14, lsl #12
//  0x422b74: ldr x0, [x0, #0xd80]
//  0x422b78: b #0x422b84
//  0x422b7c: add x0, PP, #0x14, lsl #12
//  0x422b80: ldr x0, [x0, #0xd08]
//  0x422b84: cbnz x2, #0x422bb4
//  0x422b88: stur w0, [x1, #0x43]
//  0x422b8c: ldurb w16, [x1, #-1]
//  0x422b90: ldurb w17, [x0, #-1]
//  0x422b94: and BARRIER, x17, BARRIER, lsr #2
//  0x422b98: tst BARRIER, HEAP, lsr #32
//  0x422b9c: b.eq #0x422ba4
//  0x422ba0: bl #0x61e04c
//  0x422ba4: mov x0, NULL
//  0x422ba8: mov SP, FP
//  0x422bac: ldp FP, LR, [SP], #0x10
//  0x422bb0: ret 
//  0x422bb4: cmp x2, #1
//  0x422bb8: b.ne #0x422be8
//  0x422bbc: stur w0, [x1, #0x47]
//  0x422bc0: ldurb w16, [x1, #-1]
//  0x422bc4: ldurb w17, [x0, #-1]
//  0x422bc8: and BARRIER, x17, BARRIER, lsr #2
//  0x422bcc: tst BARRIER, HEAP, lsr #32
//  0x422bd0: b.eq #0x422bd8
//  0x422bd4: bl #0x61e04c
//  0x422bd8: mov x0, NULL
//  0x422bdc: mov SP, FP
//  0x422be0: ldp FP, LR, [SP], #0x10
//  0x422be4: ret 
//  0x422be8: cmp x2, #2
//  0x422bec: b.ne #0x422c1c
//  0x422bf0: stur w0, [x1, #0x4b]
//  0x422bf4: ldurb w16, [x1, #-1]
//  0x422bf8: ldurb w17, [x0, #-1]
//  0x422bfc: and BARRIER, x17, BARRIER, lsr #2
//  0x422c00: tst BARRIER, HEAP, lsr #32
//  0x422c04: b.eq #0x422c0c
//  0x422c08: bl #0x61e04c
//  0x422c0c: mov x0, NULL
//  0x422c10: mov SP, FP
//  0x422c14: ldp FP, LR, [SP], #0x10
//  0x422c18: ret 
//  0x422c1c: cmp x2, #3
//  0x422c20: b.ne #0x422c50
//  0x422c24: stur w0, [x1, #0x4f]
//  0x422c28: ldurb w16, [x1, #-1]
//  0x422c2c: ldurb w17, [x0, #-1]
//  0x422c30: and BARRIER, x17, BARRIER, lsr #2
//  0x422c34: tst BARRIER, HEAP, lsr #32
//  0x422c38: b.eq #0x422c40
//  0x422c3c: bl #0x61e04c
//  0x422c40: mov x0, NULL
//  0x422c44: mov SP, FP
//  0x422c48: ldp FP, LR, [SP], #0x10
//  0x422c4c: ret 
//  0x422c50: mov x0, NULL
//  0x422c54: mov SP, FP
//  0x422c58: ldp FP, LR, [SP], #0x10
//  0x422c5c: ret 
//
// NOTE: control flow was not fully structured (goto kept) -- pseudocode only.
dynamic PartyInviteNotifier_updateRefreshState() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic w4;
  dynamic x0;
  dynamic x16;
  dynamic x17;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x422adc
  // frame: FP = SP // 0x422ae0
  if (x2 != 0) {
    if (x2 != 1) {
      if (x2 != 2) {
        if (x2 != 3) {
        } else {
          BARRIER = mem((PP + 0xb000), 0x818) /* Obj!RefreshInviteUserState@12172  */; // 0x422b60
          x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x422b58
          if (w4 != w16) {
          } else {
            if (x3 & (1 << 4) != 0) {
              x0 = mem((PP + 0x14000), 0xd08) /* Obj!RefreshInviteUserState@12173  */; // 0x422b80
            } else {
              x0 = mem((PP + 0x14000), 0xd80) /* Obj!RefreshInviteUserState@12171  */; // 0x422b74
            }
            if (x2 != 0) {
              if (x2 != 1) {
                if (x2 != 2) {
                  if (x2 != 3) {
                    // duplicated branch body (target 0x422c50 terminates; the same code is emitted below)
                    SP = FP; // 0x422c54
                    x0 = NULL; // 0x422c50
                    // frame: FP, LR, mem(SP), 0x10 // 0x422c58
                    return;
                  }
                  memSet(x1, 0x4f, w0); // 0x422c24
                  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x422c30
                  w16 = mem(x1, -1); // 0x422c28
                  w17 = mem(x0, -1); // 0x422c2c
                  x16 = (mem(x1, -1)) & 0xffffffff; // 0x422c28
                  x17 = (mem(x0, -1)) & 0xffffffff; // 0x422c2c
                  if ((BARRIER & (HEAP >> 32)) == 0) {
                  } else {
                    WriteBarrierStub_x1() /* 0x61e04c */; // 0x422c3c
                  }
                  SP = FP; // 0x422c44
                  x0 = NULL; // 0x422c40
                  // frame: FP, LR, mem(SP), 0x10 // 0x422c48
                  return;
                }
                gotoLabel(0x422bf0);
              }
              gotoLabel(0x422bbc);
            }
            gotoLabel(0x422b88);
          }
        }
      } else {
        BARRIER = mem((PP + 0xb000), 0x818) /* Obj!RefreshInviteUserState@12172  */; // 0x422b3c
        x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x422b34
        if (w4 != w16) {
        } else {
          gotoLabel(0x422b6c);
        }
      }
    } else {
      BARRIER = mem((PP + 0xb000), 0x818) /* Obj!RefreshInviteUserState@12172  */; // 0x422b18
      x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x422b10
      if (w4 != w16) {
      } else {
        gotoLabel(0x422b6c);
      }
    }
  } else {
    BARRIER = mem((PP + 0xb000), 0x818) /* Obj!RefreshInviteUserState@12172  */; // 0x422af4
    x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x422aec
    if (w4 != w16) {
    } else {
      gotoLabel(0x422b6c);
    }
  }
  SP = FP; // 0x422c54
  x0 = NULL; // 0x422c50
  // frame: FP, LR, mem(SP), 0x10 // 0x422c58
  return;
}

// PartyInviteNotifier_anon_closure_3
// raw disassembly:
//  0x422d14: stp FP, LR, [SP, #-0x10]!
//  0x422d18: mov FP, SP
//  0x422d1c: sub SP, SP, #0x28
//  0x422d20: ldr x0, [FP, #0x18]
//  0x422d24: ldur w3, [x0, #0x17]
//  0x422d28: add x3, x3, HEAP, lsl #32
//  0x422d2c: stur x3, [FP, #-8]
//  0x422d30: ldr BARRIER, [THR, #0x38]
//  0x422d34: cmp SP, BARRIER
//  0x422d38: b.ls #0x422ea4
//  0x422d3c: ldr x1, [FP, #0x10]
//  0x422d40: ldur x0, [x1, #-1]
//  0x422d44: ubfx x0, x0, #0xc, #0x14
//  0x422d48: add x2, PP, #0xf, lsl #12
//  0x422d4c: ldr x2, [x2, #0x380]
//  0x422d50: sub LR, x0, #1, lsl #12
//  0x422d54: ldr LR, [x21, LR, lsl #3]
//  0x422d58: blr LR
//  0x422d5c: cmp w0, w22
//  0x422d60: b.ne #0x422d78
//  0x422d64: mov x1, NULL
//  0x422d68: mov x2, #0
//  0x422d6c: bl #0x277268
//  0x422d70: mov x4, x0
//  0x422d74: b #0x422d7c
//  0x422d78: mov x4, x0
//  0x422d7c: ldur x3, [FP, #-8]
//  0x422d80: mov x0, x4
//  0x422d84: stur x4, [FP, #-0x10]
//  0x422d88: mov x2, NULL
//  0x422d8c: mov x1, NULL
//  0x422d90: mov x4, #0x3c
//  0x422d94: tbz w0, #0, #0x422da0
//  0x422d98: ldur x4, [x0, #-1]
//  0x422d9c: ubfx x4, x4, #0xc, #0x14
//  0x422da0: sub x4, x4, #0x5a
//  0x422da4: cmp x4, #2
//  0x422da8: b.ls #0x422ddc
//  0x422dac: sub x4, x4, #0x16
//  0x422db0: cmp x4, #0x37
//  0x422db4: b.ls #0x422ddc
//  0x422db8: cmp x4, #0xebc
//  0x422dbc: b.eq #0x422ddc
//  0x422dc0: sub x4, x4, #0xedd
//  0x422dc4: cmp x4, #4
//  0x422dc8: b.ls #0x422ddc
//  0x422dcc: ldr x8, [PP, #0x3b80]
//  0x422dd0: add x3, PP, #0x14, lsl #12
//  0x422dd4: ldr x3, [x3, #0xd88]
//  0x422dd8: bl #0x61d6e4
//  0x422ddc: add x1, PP, #0x14, lsl #12
//  0x422de0: ldr x1, [x1, #0xd98]
//  0x422de4: mov x2, NULL
//  0x422de8: bl #0x61ec54
//  0x422dec: mov x1, x0
//  0x422df0: ldur x0, [FP, #-0x10]
//  0x422df4: ldur x2, [x0, #-1]
//  0x422df8: ubfx x2, x2, #0xc, #0x14
//  0x422dfc: add BARRIER, PP, #0xb, lsl #12
//  0x422e00: ldr BARRIER, [BARRIER, #0x820]
//  0x422e04: stp x0, BARRIER, [SP, #8]
//  0x422e08: str x1, [SP]
//  0x422e0c: mov x0, x2
//  0x422e10: ldr x4, [PP, #0x58]
//  0x422e14: mov x17, #0x86d9
//  0x422e18: add LR, x0, x17
//  0x422e1c: ldr LR, [x21, LR, lsl #3]
//  0x422e20: blr LR
//  0x422e24: mov x1, x0
//  0x422e28: ldur x0, [FP, #-8]
//  0x422e2c: ldur w2, [x0, #0xf]
//  0x422e30: add x2, x2, HEAP, lsl #32
//  0x422e34: ldur w3, [x2, #0x5f]
//  0x422e38: add x3, x3, HEAP, lsl #32
//  0x422e3c: mov x2, x1
//  0x422e40: mov x1, x3
//  0x422e44: bl #0x2ce4e8
//  0x422e48: ldur x0, [FP, #-8]
//  0x422e4c: ldur w1, [x0, #0x13]
//  0x422e50: add x1, x1, HEAP, lsl #32
//  0x422e54: ldur w2, [x1, #0x17]
//  0x422e58: add x2, x2, HEAP, lsl #32
//  0x422e5c: mov x1, x2
//  0x422e60: add x2, NULL, #0x20
//  0x422e64: add x3, NULL, #0x20
//  0x422e68: bl #0x422c60
//  0x422e6c: ldur x0, [FP, #-8]
//  0x422e70: ldur w1, [x0, #0xf]
//  0x422e74: add x1, x1, HEAP, lsl #32
//  0x422e78: mov x2, #3
//  0x422e7c: add x3, NULL, #0x20
//  0x422e80: bl #0x422adc
//  0x422e84: ldur x0, [FP, #-8]
//  0x422e88: ldur w1, [x0, #0xf]
//  0x422e8c: add x1, x1, HEAP, lsl #32
//  0x422e90: bl #0x3ac980
//  0x422e94: mov x0, NULL
//  0x422e98: mov SP, FP
//  0x422e9c: ldp FP, LR, [SP], #0x10
//  0x422ea0: ret 
//  0x422ea4: bl #0x61fa28
//  0x422ea8: b #0x422d3c
//
dynamic PartyInviteNotifier_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x422d14
  // frame: FP = SP // 0x422d18
  // frame: SP = SP - 0x28 // 0x422d1c
  w3 = mem((local_18), 0x17); // 0x422d24
  x0 = local_18; // 0x422d20
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x422d28
  local_m8 = x3; // 0x422d2c
  BARRIER = mem(THR, 0x38); // 0x422d30
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x422ea4
  }
  LR = mem(x21, ((((mem((local_10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x422d54
  x0 = ((mem((local_10), -1)) >> 12) & 0xfffff; // 0x422d44
  x1 = local_10; // 0x422d3c
  x2 = "list" /* pp+0xf380 */; // 0x422d4c
  callIndirect(LR); // 0x422d58
  if (w0 != w22) {
    x4 = x0; // 0x422d78
  } else {
    x1 = NULL; // 0x422d64
    x2 = 0; // 0x422d68
    GrowableList_factory_ctor() /* 0x277268 */; // 0x422d6c
    x4 = x0; // 0x422d70
  }
  x0 = x4; // 0x422d80
  x3 = local_m8; // 0x422d7c
  local_m10 = x4; // 0x422d84
  x1 = NULL; // 0x422d8c
  x2 = NULL; // 0x422d88
  x4 = 60; // 0x422d90
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x422d9c
  }
  x4 = x4 - 0x5a; // 0x422da0
  if (x4 <= 2) {
  } else {
    x4 = x4 - 0x16; // 0x422dac
    if (x4 <= 0x37) {
    } else {
      if (x4 == 0xebc) {
      } else {
        x4 = x4 - 0xedd; // 0x422dc0
        if (x4 <= 4) {
        } else {
          x3 = mem((PP + 0x14000), 0xd88) /* Obj!? */; // 0x422dd4
          x8 = mem(PP, 0x3b80) /* Type */; // 0x422dcc
          SlowTypeTestStub_0x61d6e4() /* 0x61d6e4 */; // 0x422dd8
        }
      }
    }
  }
  x1 = mem((PP + 0x14000), 0xd98) /* Function */; // 0x422de0
  x2 = NULL; // 0x422de4
  AllocationStub__Closure() /* 0x61ec54 */; // 0x422de8
  BARRIER = mem((PP + 0xb000), 0x820) /* TypeArguments */; // 0x422e00
  x0 = local_m10; // 0x422df0
  x1 = x0; // 0x422dec
  x2 = ((mem((local_m10), -1)) >> 12) & 0xfffff; // 0x422df8
  // frame: x0, BARRIER, mem(SP, 8) // 0x422e04
  local_0 = x1; // 0x422e08
  LR = mem(x21, ((x0 + x17) << 3)); // 0x422e1c
  x0 = x2; // 0x422e0c
  x17 = 34521; // 0x422e14
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x422e10
  callIndirect(LR); // 0x422e20
  w2 = mem((local_m8), 0xf); // 0x422e2c
  w3 = mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x5f); // 0x422e34
  x0 = local_m8; // 0x422e28
  x1 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x5f)) & 0xffffffff) + (HEAP << 32); // 0x422e40
  x2 = x0; // 0x422e3c
  x3 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x5f)) & 0xffffffff) + (HEAP << 32); // 0x422e38
  GrowableList_addAll() /* 0x2ce4e8 */; // 0x422e44
  w1 = mem((local_m8), 0x13); // 0x422e4c
  w2 = mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x17); // 0x422e54
  x0 = local_m8; // 0x422e48
  x1 = ((mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x422e5c
  x2 = ((mem((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x422e58
  x2 = NULL + 0x20; // 0x422e60
  x3 = NULL + 0x20; // 0x422e64
  InviteUserPageState_onLoaded() /* 0x422c60 */; // 0x422e68
  w1 = mem((local_m8), 0xf); // 0x422e70
  x0 = local_m8; // 0x422e6c
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x422e74
  x2 = 3; // 0x422e78
  x3 = NULL + 0x20; // 0x422e7c
  PartyInviteNotifier_updateRefreshState() /* 0x422adc */; // 0x422e80
  w1 = mem((local_m8), 0xf); // 0x422e88
  x0 = local_m8; // 0x422e84
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x422e8c
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x422e90
  SP = FP; // 0x422e98
  x0 = NULL; // 0x422e94
  // frame: FP, LR, mem(SP), 0x10 // 0x422e9c
  return;
}

// PartyInviteNotifier_anon_closure_4
// raw disassembly:
//  0x422eac: stp FP, LR, [SP, #-0x10]!
//  0x422eb0: mov FP, SP
//  0x422eb4: sub SP, SP, #8
//  0x422eb8: ldr BARRIER, [THR, #0x38]
//  0x422ebc: cmp SP, BARRIER
//  0x422ec0: b.ls #0x422f04
//  0x422ec4: ldr x0, [FP, #0x10]
//  0x422ec8: mov x2, NULL
//  0x422ecc: mov x1, NULL
//  0x422ed0: ldr x8, [PP, #0x3cd0]
//  0x422ed4: add x3, PP, #0x14, lsl #12
//  0x422ed8: ldr x3, [x3, #0xda0]
//  0x422edc: bl #0x2b15f0
//  0x422ee0: bl #0x423504
//  0x422ee4: mov x1, x0
//  0x422ee8: ldr x2, [FP, #0x10]
//  0x422eec: stur x0, [FP, #-8]
//  0x422ef0: bl #0x422f0c
//  0x422ef4: ldur x0, [FP, #-8]
//  0x422ef8: mov SP, FP
//  0x422efc: ldp FP, LR, [SP], #0x10
//  0x422f00: ret 
//  0x422f04: bl #0x61fa28
//  0x422f08: b #0x422ec4
//
dynamic PartyInviteNotifier_anon_closure_4() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x422eac
  BARRIER = mem(THR, 0x38); // 0x422eb8
  // frame: FP = SP // 0x422eb0
  // frame: SP = SP - 8 // 0x422eb4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x422f04
  }
  x0 = local_10; // 0x422ec4
  x1 = NULL; // 0x422ecc
  x2 = NULL; // 0x422ec8
  x3 = mem((PP + 0x14000), 0xda0) /* Obj!? */; // 0x422ed8
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x422ed0
  sub_0x2b15f0(); // 0x422edc
  AllocationStub_PartyInviteItem() /* 0x423504 */; // 0x422ee0
  x1 = x0; // 0x422ee4
  x2 = local_10; // 0x422ee8
  local_m8 = x0; // 0x422eec
  PartyInviteItem_ctor_fromJson() /* 0x422f0c */; // 0x422ef0
  SP = FP; // 0x422ef8
  x0 = local_m8; // 0x422ef4
  // frame: FP, LR, mem(SP), 0x10 // 0x422efc
  return;
}

// PartyInviteNotifier_searchFollow
// raw disassembly:
//  0x423510: stp FP, LR, [SP, #-0x10]!
//  0x423514: mov FP, SP
//  0x423518: sub SP, SP, #0x30
//  0x42351c: stur x1, [FP, #-8]
//  0x423520: mov BARRIER, x3
//  0x423524: mov x3, x1
//  0x423528: mov x1, BARRIER
//  0x42352c: mov x0, x2
//  0x423530: stur x2, [FP, #-0x10]
//  0x423534: mov x2, x5
//  0x423538: stur x1, [FP, #-0x18]
//  0x42353c: stur x5, [FP, #-0x20]
//  0x423540: stur x6, [FP, #-0x28]
//  0x423544: ldr BARRIER, [THR, #0x38]
//  0x423548: cmp SP, BARRIER
//  0x42354c: b.ls #0x4235d4
//  0x423550: mov x1, #3
//  0x423554: bl #0x61e890
//  0x423558: mov x3, x0
//  0x42355c: ldur x0, [FP, #-8]
//  0x423560: stur x3, [FP, #-0x30]
//  0x423564: stur w0, [x3, #0xf]
//  0x423568: ldur x2, [FP, #-0x10]
//  0x42356c: sbfiz x0, x2, #1, #0x1f
//  0x423570: cmp x2, x0, asr #1
//  0x423574: b.eq #0x423580
//  0x423578: bl #0x61fba8
//  0x42357c: stur x2, [x0, #7]
//  0x423580: stur w0, [x3, #0x13]
//  0x423584: ldur x0, [FP, #-0x28]
//  0x423588: stur w0, [x3, #0x17]
//  0x42358c: mov x2, x3
//  0x423590: add x1, PP, #0x14, lsl #12
//  0x423594: ldr x1, [x1, #0xe70]
//  0x423598: bl #0x61ec54
//  0x42359c: ldur x2, [FP, #-0x30]
//  0x4235a0: add x1, PP, #0x14, lsl #12
//  0x4235a4: ldr x1, [x1, #0xe78]
//  0x4235a8: stur x0, [FP, #-8]
//  0x4235ac: bl #0x61ec54
//  0x4235b0: ldur x1, [FP, #-0x18]
//  0x4235b4: ldur x2, [FP, #-0x20]
//  0x4235b8: ldur x3, [FP, #-8]
//  0x4235bc: mov x5, x0
//  0x4235c0: bl #0x4235dc
//  0x4235c4: mov x0, NULL
//  0x4235c8: mov SP, FP
//  0x4235cc: ldp FP, LR, [SP], #0x10
//  0x4235d0: ret 
//  0x4235d4: bl #0x61fa28
//  0x4235d8: b #0x423550
//
dynamic PartyInviteNotifier_searchFollow() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x5;
  // frame: FP, LR, mem(SP, -0x10)! // 0x423510
  // frame: FP = SP // 0x423514
  // frame: SP = SP - 0x30 // 0x423518
  local_m8 = x1; // 0x42351c
  BARRIER = x3; // 0x423520
  x0 = x2; // 0x42352c
  x1 = x3; // 0x423528
  x3 = x1; // 0x423524
  local_m10 = x2; // 0x423530
  x2 = x5; // 0x423534
  local_m18 = x1; // 0x423538
  local_m20 = x5; // 0x42353c
  local_m28 = x6; // 0x423540
  BARRIER = mem(THR, 0x38); // 0x423544
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4235d4
  }
  x1 = 3; // 0x423550
  sub_0x61e890(); // 0x423554
  x0 = local_m8; // 0x42355c
  x3 = x0; // 0x423558
  local_m30 = x3; // 0x423560
  memSet(x3, 0xf, w0); // 0x423564
  x0 = (((local_m10) & 0x7fffffff) << 1) /* signed */; // 0x42356c
  x2 = local_m10; // 0x423568
  if (x2 == x0) {
  } else {
    AllocationStub__Mint() /* 0x61fba8 */; // 0x423578
    memSet(x0, 7, x2); // 0x42357c
  }
  memSet(x3, 0x13, w0); // 0x423580
  x0 = local_m28; // 0x423584
  memSet(x3, 0x17, w0); // 0x423588
  x1 = mem((PP + 0x14000), 0xe70) /* Function */; // 0x423594
  x2 = x3; // 0x42358c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x423598
  x1 = mem((PP + 0x14000), 0xe78) /* Function */; // 0x4235a4
  x2 = local_m30; // 0x42359c
  local_m8 = x0; // 0x4235a8
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4235ac
  x1 = local_m18; // 0x4235b0
  x2 = local_m20; // 0x4235b4
  x3 = local_m8; // 0x4235b8
  x5 = x0; // 0x4235bc
  SOApiService_searchFollow() /* 0x4235dc */; // 0x4235c0
  SP = FP; // 0x4235c8
  x0 = NULL; // 0x4235c4
  // frame: FP, LR, mem(SP), 0x10 // 0x4235cc
  return;
}

// PartyInviteNotifier_anon_closure_5
// raw disassembly:
//  0x423724: stp FP, LR, [SP, #-0x10]!
//  0x423728: mov FP, SP
//  0x42372c: sub SP, SP, #8
//  0x423730: ldr x0, [FP, #0x10]
//  0x423734: ldur w4, [x0, #0x17]
//  0x423738: add x4, x4, HEAP, lsl #32
//  0x42373c: stur x4, [FP, #-8]
//  0x423740: ldr BARRIER, [THR, #0x38]
//  0x423744: cmp SP, BARRIER
//  0x423748: b.ls #0x423818
//  0x42374c: ldur w0, [x4, #0x17]
//  0x423750: add x0, x0, HEAP, lsl #32
//  0x423754: ldur w1, [x4, #0xf]
//  0x423758: add x1, x1, HEAP, lsl #32
//  0x42375c: ldur w2, [x4, #0x13]
//  0x423760: add x2, x2, HEAP, lsl #32
//  0x423764: sbfx x3, x2, #1, #0x1f
//  0x423768: tbz w2, #0, #0x423770
//  0x42376c: ldur x3, [x2, #7]
//  0x423770: cbnz x3, #0x423780
//  0x423774: ldur x2, [x1, #0x2b]
//  0x423778: mov x1, x2
//  0x42377c: b #0x4237ac
//  0x423780: cmp x3, #1
//  0x423784: b.ne #0x423794
//  0x423788: ldur x2, [x1, #0x33]
//  0x42378c: mov x1, x2
//  0x423790: b #0x4237ac
//  0x423794: cmp x3, #2
//  0x423798: b.ne #0x4237a8
//  0x42379c: ldur x2, [x1, #0x3b]
//  0x4237a0: mov x1, x2
//  0x4237a4: b #0x4237ac
//  0x4237a8: mov x1, #-1
//  0x4237ac: tbnz x1, #0x3f, #0x4237b8
//  0x4237b0: add x3, NULL, #0x30
//  0x4237b4: b #0x4237bc
//  0x4237b8: add x3, NULL, #0x20
//  0x4237bc: ldur w1, [x0, #0x17]
//  0x4237c0: add x1, x1, HEAP, lsl #32
//  0x4237c4: add x2, NULL, #0x30
//  0x4237c8: bl #0x422c60
//  0x4237cc: ldur x0, [FP, #-8]
//  0x4237d0: ldur w1, [x0, #0xf]
//  0x4237d4: add x1, x1, HEAP, lsl #32
//  0x4237d8: ldur w2, [x0, #0x13]
//  0x4237dc: add x2, x2, HEAP, lsl #32
//  0x4237e0: sbfx x3, x2, #1, #0x1f
//  0x4237e4: tbz w2, #0, #0x4237ec
//  0x4237e8: ldur x3, [x2, #7]
//  0x4237ec: mov x2, x3
//  0x4237f0: add x3, NULL, #0x30
//  0x4237f4: bl #0x422adc
//  0x4237f8: ldur x0, [FP, #-8]
//  0x4237fc: ldur w1, [x0, #0xf]
//  0x423800: add x1, x1, HEAP, lsl #32
//  0x423804: bl #0x3ac980
//  0x423808: mov x0, NULL
//  0x42380c: mov SP, FP
//  0x423810: ldp FP, LR, [SP], #0x10
//  0x423814: ret 
//  0x423818: bl #0x61fa28
//  0x42381c: b #0x42374c
//
dynamic PartyInviteNotifier_anon_closure_5() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x423724
  // frame: FP = SP // 0x423728
  // frame: SP = SP - 8 // 0x42372c
  w4 = mem((local_10), 0x17); // 0x423734
  x0 = local_10; // 0x423730
  x4 = ((mem((local_10), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x423738
  local_m8 = x4; // 0x42373c
  BARRIER = mem(THR, 0x38); // 0x423740
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x423818
  }
  w1 = mem(x4, 0xf); // 0x423754
  w2 = mem(x4, 0x13); // 0x42375c
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x423750
  x1 = ((mem(x4, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x423758
  x2 = ((mem(x4, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x423760
  x3 = ((((mem(x4, 0x13)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x423764
  if (x2 & (1 << 0) == 0) {
  } else {
    x3 = mem(x2, 7); // 0x42376c
  }
  if (x3 != 0) {
    if (x3 != 1) {
      if (x3 != 2) {
        x1 = -1; // 0x4237a8
      } else {
        x1 = mem(x1, 0x3b); // 0x4237a0
        x2 = mem(x1, 0x3b); // 0x42379c
      }
    } else {
      x1 = mem(x1, 0x33); // 0x42378c
      x2 = mem(x1, 0x33); // 0x423788
    }
  } else {
    x1 = mem(x1, 0x2b); // 0x423778
    x2 = mem(x1, 0x2b); // 0x423774
  }
  if (x1 & (1 << 0x3f) != 0) {
    x3 = NULL + 0x20; // 0x4237b8
  } else {
    x3 = NULL + 0x30; // 0x4237b0
  }
  x1 = (w1 & 0xffffffff) + (HEAP << 32); // 0x4237c0
  x2 = NULL + 0x30; // 0x4237c4
  InviteUserPageState_onLoaded() /* 0x422c60 */; // 0x4237c8
  w1 = mem((local_m8), 0xf); // 0x4237d0
  w2 = mem((local_m8), 0x13); // 0x4237d8
  x0 = local_m8; // 0x4237cc
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4237d4
  x2 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x4237dc
  x3 = ((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x4237e0
  if (x2 & (1 << 0) == 0) {
  } else {
    x3 = mem(x2, 7); // 0x4237e8
  }
  x2 = x3; // 0x4237ec
  x3 = NULL + 0x30; // 0x4237f0
  PartyInviteNotifier_updateRefreshState() /* 0x422adc */; // 0x4237f4
  w1 = mem((local_m8), 0xf); // 0x4237fc
  x0 = local_m8; // 0x4237f8
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x423800
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x423804
  SP = FP; // 0x42380c
  x0 = NULL; // 0x423808
  // frame: FP, LR, mem(SP), 0x10 // 0x423810
  return;
}

// PartyInviteNotifier_anon_closure_6
// raw disassembly:
//  0x423820: stp FP, LR, [SP, #-0x10]!
//  0x423824: mov FP, SP
//  0x423828: sub SP, SP, #0x38
//  0x42382c: ldr x0, [FP, #0x18]
//  0x423830: ldur w3, [x0, #0x17]
//  0x423834: add x3, x3, HEAP, lsl #32
//  0x423838: stur x3, [FP, #-8]
//  0x42383c: ldr BARRIER, [THR, #0x38]
//  0x423840: cmp SP, BARRIER
//  0x423844: b.ls #0x423b98
//  0x423848: ldr x4, [FP, #0x10]
//  0x42384c: ldur x0, [x4, #-1]
//  0x423850: ubfx x0, x0, #0xc, #0x14
//  0x423854: mov x1, x4
//  0x423858: add x2, PP, #0xf, lsl #12
//  0x42385c: ldr x2, [x2, #0x368]
//  0x423860: sub LR, x0, #1, lsl #12
//  0x423864: ldr LR, [x21, LR, lsl #3]
//  0x423868: blr LR
//  0x42386c: cmp w0, w22
//  0x423870: b.ne #0x42387c
//  0x423874: orr x3, xzr, #0xfffffffffffffffe
//  0x423878: b #0x423880
//  0x42387c: mov x3, x0
//  0x423880: ldr x1, [FP, #0x10]
//  0x423884: stur x3, [FP, #-0x10]
//  0x423888: ldur x0, [x1, #-1]
//  0x42388c: ubfx x0, x0, #0xc, #0x14
//  0x423890: add x2, PP, #0xf, lsl #12
//  0x423894: ldr x2, [x2, #0x380]
//  0x423898: sub LR, x0, #1, lsl #12
//  0x42389c: ldr LR, [x21, LR, lsl #3]
//  0x4238a0: blr LR
//  0x4238a4: cmp w0, w22
//  0x4238a8: b.ne #0x4238c0
//  0x4238ac: mov x1, NULL
//  0x4238b0: mov x2, #0
//  0x4238b4: bl #0x277268
//  0x4238b8: mov x4, x0
//  0x4238bc: b #0x4238c4
//  0x4238c0: mov x4, x0
//  0x4238c4: ldur x3, [FP, #-8]
//  0x4238c8: mov x0, x4
//  0x4238cc: stur x4, [FP, #-0x18]
//  0x4238d0: mov x2, NULL
//  0x4238d4: mov x1, NULL
//  0x4238d8: mov x4, #0x3c
//  0x4238dc: tbz w0, #0, #0x4238e8
//  0x4238e0: ldur x4, [x0, #-1]
//  0x4238e4: ubfx x4, x4, #0xc, #0x14
//  0x4238e8: sub x4, x4, #0x5a
//  0x4238ec: cmp x4, #2
//  0x4238f0: b.ls #0x423924
//  0x4238f4: sub x4, x4, #0x16
//  0x4238f8: cmp x4, #0x37
//  0x4238fc: b.ls #0x423924
//  0x423900: cmp x4, #0xebc
//  0x423904: b.eq #0x423924
//  0x423908: sub x4, x4, #0xedd
//  0x42390c: cmp x4, #4
//  0x423910: b.ls #0x423924
//  0x423914: ldr x8, [PP, #0x3b80]
//  0x423918: add x3, PP, #0x14, lsl #12
//  0x42391c: ldr x3, [x3, #0xe80]
//  0x423920: bl #0x61d6e4
//  0x423924: add x1, PP, #0x14, lsl #12
//  0x423928: ldr x1, [x1, #0xe90]
//  0x42392c: mov x2, NULL
//  0x423930: bl #0x61ec54
//  0x423934: mov x1, x0
//  0x423938: ldur x0, [FP, #-0x18]
//  0x42393c: ldur x2, [x0, #-1]
//  0x423940: ubfx x2, x2, #0xc, #0x14
//  0x423944: add BARRIER, PP, #0xb, lsl #12
//  0x423948: ldr BARRIER, [BARRIER, #0x820]
//  0x42394c: stp x0, BARRIER, [SP, #8]
//  0x423950: str x1, [SP]
//  0x423954: mov x0, x2
//  0x423958: ldr x4, [PP, #0x58]
//  0x42395c: mov x17, #0x86d9
//  0x423960: add LR, x0, x17
//  0x423964: ldr LR, [x21, LR, lsl #3]
//  0x423968: blr LR
//  0x42396c: mov x4, x0
//  0x423970: ldur x3, [FP, #-8]
//  0x423974: stur x4, [FP, #-0x20]
//  0x423978: ldur w0, [x3, #0x13]
//  0x42397c: add x0, x0, HEAP, lsl #32
//  0x423980: sbfx x1, x0, #1, #0x1f
//  0x423984: tbz w0, #0, #0x42398c
//  0x423988: ldur x1, [x0, #7]
//  0x42398c: cmp x1, #1
//  0x423990: b.gt #0x423a84
//  0x423994: cmp x1, #0
//  0x423998: b.gt #0x423a10
//  0x42399c: cbnz w0, #0x423afc
//  0x4239a0: ldur x5, [FP, #-0x10]
//  0x4239a4: ldur w6, [x3, #0xf]
//  0x4239a8: add x6, x6, HEAP, lsl #32
//  0x4239ac: mov x0, x5
//  0x4239b0: stur x6, [FP, #-0x18]
//  0x4239b4: mov x2, NULL
//  0x4239b8: mov x1, NULL
//  0x4239bc: tbz w0, #0, #0x4239e4
//  0x4239c0: ldur x4, [x0, #-1]
//  0x4239c4: ubfx x4, x4, #0xc, #0x14
//  0x4239c8: sub x4, x4, #0x3c
//  0x4239cc: cmp x4, #1
//  0x4239d0: b.ls #0x4239e4
//  0x4239d4: ldr x8, [PP, #0x1170]
//  0x4239d8: add x3, PP, #0x14, lsl #12
//  0x4239dc: ldr x3, [x3, #0xe98]
//  0x4239e0: bl #0x62aa34
//  0x4239e4: ldur x0, [FP, #-0x10]
//  0x4239e8: sbfx x1, x0, #1, #0x1f
//  0x4239ec: tbz w0, #0, #0x4239f4
//  0x4239f0: ldur x1, [x0, #7]
//  0x4239f4: ldur x2, [FP, #-0x18]
//  0x4239f8: stur x1, [x2, #0x2b]
//  0x4239fc: ldur w1, [x2, #0x53]
//  0x423a00: add x1, x1, HEAP, lsl #32
//  0x423a04: ldur x2, [FP, #-0x20]
//  0x423a08: bl #0x2ce4e8
//  0x423a0c: b #0x423afc
//  0x423a10: mov x4, x3
//  0x423a14: ldur x3, [FP, #-0x10]
//  0x423a18: ldur w5, [x4, #0xf]
//  0x423a1c: add x5, x5, HEAP, lsl #32
//  0x423a20: mov x0, x3
//  0x423a24: stur x5, [FP, #-0x18]
//  0x423a28: mov x2, NULL
//  0x423a2c: mov x1, NULL
//  0x423a30: tbz w0, #0, #0x423a58
//  0x423a34: ldur x4, [x0, #-1]
//  0x423a38: ubfx x4, x4, #0xc, #0x14
//  0x423a3c: sub x4, x4, #0x3c
//  0x423a40: cmp x4, #1
//  0x423a44: b.ls #0x423a58
//  0x423a48: ldr x8, [PP, #0x1170]
//  0x423a4c: add x3, PP, #0x14, lsl #12
//  0x423a50: ldr x3, [x3, #0xea8]
//  0x423a54: bl #0x62aa34
//  0x423a58: ldur x0, [FP, #-0x10]
//  0x423a5c: sbfx x1, x0, #1, #0x1f
//  0x423a60: tbz w0, #0, #0x423a68
//  0x423a64: ldur x1, [x0, #7]
//  0x423a68: ldur x2, [FP, #-0x18]
//  0x423a6c: stur x1, [x2, #0x33]
//  0x423a70: ldur w1, [x2, #0x57]
//  0x423a74: add x1, x1, HEAP, lsl #32
//  0x423a78: ldur x2, [FP, #-0x20]
//  0x423a7c: bl #0x2ce4e8
//  0x423a80: b #0x423afc
//  0x423a84: cmp w0, #4
//  0x423a88: b.ne #0x423afc
//  0x423a8c: ldur x4, [FP, #-8]
//  0x423a90: ldur x3, [FP, #-0x10]
//  0x423a94: ldur w5, [x4, #0xf]
//  0x423a98: add x5, x5, HEAP, lsl #32
//  0x423a9c: mov x0, x3
//  0x423aa0: stur x5, [FP, #-0x18]
//  0x423aa4: mov x2, NULL
//  0x423aa8: mov x1, NULL
//  0x423aac: tbz w0, #0, #0x423ad4
//  0x423ab0: ldur x4, [x0, #-1]
//  0x423ab4: ubfx x4, x4, #0xc, #0x14
//  0x423ab8: sub x4, x4, #0x3c
//  0x423abc: cmp x4, #1
//  0x423ac0: b.ls #0x423ad4
//  0x423ac4: ldr x8, [PP, #0x1170]
//  0x423ac8: add x3, PP, #0x14, lsl #12
//  0x423acc: ldr x3, [x3, #0xeb8]
//  0x423ad0: bl #0x62aa34
//  0x423ad4: ldur x0, [FP, #-0x10]
//  0x423ad8: sbfx x1, x0, #1, #0x1f
//  0x423adc: tbz w0, #0, #0x423ae4
//  0x423ae0: ldur x1, [x0, #7]
//  0x423ae4: ldur x2, [FP, #-0x18]
//  0x423ae8: stur x1, [x2, #0x3b]
//  0x423aec: ldur w1, [x2, #0x5b]
//  0x423af0: add x1, x1, HEAP, lsl #32
//  0x423af4: ldur x2, [FP, #-0x20]
//  0x423af8: bl #0x2ce4e8
//  0x423afc: ldur x0, [FP, #-8]
//  0x423b00: ldur w1, [x0, #0x17]
//  0x423b04: add x1, x1, HEAP, lsl #32
//  0x423b08: stur x1, [FP, #-0x18]
//  0x423b0c: ldur BARRIER, [FP, #-0x10]
//  0x423b10: stp xzr, BARRIER, [SP]
//  0x423b14: mov x4, #0
//  0x423b18: ldr x0, [SP, #8]
//  0x423b1c: add BARRIER, PP, #0x14, lsl #12
//  0x423b20: add BARRIER, BARRIER, #0xec8
//  0x423b24: ldp x5, LR, [BARRIER]
//  0x423b28: blr LR
//  0x423b2c: mov x1, x0
//  0x423b30: ldur x0, [FP, #-0x18]
//  0x423b34: ldur w2, [x0, #0x17]
//  0x423b38: add x2, x2, HEAP, lsl #32
//  0x423b3c: mov x3, x1
//  0x423b40: mov x1, x2
//  0x423b44: add x2, NULL, #0x20
//  0x423b48: bl #0x422c60
//  0x423b4c: ldur x0, [FP, #-8]
//  0x423b50: ldur w1, [x0, #0xf]
//  0x423b54: add x1, x1, HEAP, lsl #32
//  0x423b58: ldur w2, [x0, #0x13]
//  0x423b5c: add x2, x2, HEAP, lsl #32
//  0x423b60: sbfx x3, x2, #1, #0x1f
//  0x423b64: tbz w2, #0, #0x423b6c
//  0x423b68: ldur x3, [x2, #7]
//  0x423b6c: mov x2, x3
//  0x423b70: add x3, NULL, #0x20
//  0x423b74: bl #0x422adc
//  0x423b78: ldur x0, [FP, #-8]
//  0x423b7c: ldur w1, [x0, #0xf]
//  0x423b80: add x1, x1, HEAP, lsl #32
//  0x423b84: bl #0x3ac980
//  0x423b88: mov x0, NULL
//  0x423b8c: mov SP, FP
//  0x423b90: ldp FP, LR, [SP], #0x10
//  0x423b94: ret 
//  0x423b98: bl #0x61fa28
//  0x423b9c: b #0x423848
//
dynamic PartyInviteNotifier_anon_closure_6() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic w5;
  dynamic w6;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x423820
  // frame: FP = SP // 0x423824
  // frame: SP = SP - 0x38 // 0x423828
  w3 = mem((local_18), 0x17); // 0x423830
  x0 = local_18; // 0x42382c
  x3 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x423834
  local_m8 = x3; // 0x423838
  BARRIER = mem(THR, 0x38); // 0x42383c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x423b98
  }
  LR = mem(x21, ((((mem((local_10), (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x423864
  x0 = ((mem((local_10), -1)) >> 12) & 0xfffff; // 0x423850
  x1 = local_10; // 0x423854
  x2 = "cursor" /* pp+0xf368 */; // 0x42385c
  x4 = local_10; // 0x423848
  callIndirect(LR); // 0x423868
  if (w0 != w22) {
    x3 = x0; // 0x42387c
  } else {
    x3 = xzr | 0xfffffffffffffffe; // 0x423874
  }
  x1 = local_10; // 0x423880
  local_m10 = x3; // 0x423884
  LR = mem(x21, ((((mem(x1, (-1)) >> 12) & 0xfffff) - 0x1000) << 3)); // 0x42389c
  x0 = ((mem(x1, -1)) >> 12) & 0xfffff; // 0x42388c
  x2 = "list" /* pp+0xf380 */; // 0x423894
  callIndirect(LR); // 0x4238a0
  if (w0 != w22) {
    x4 = x0; // 0x4238c0
  } else {
    x1 = NULL; // 0x4238ac
    x2 = 0; // 0x4238b0
    GrowableList_factory_ctor() /* 0x277268 */; // 0x4238b4
    x4 = x0; // 0x4238b8
  }
  x0 = x4; // 0x4238c8
  x3 = local_m8; // 0x4238c4
  local_m18 = x4; // 0x4238cc
  x1 = NULL; // 0x4238d4
  x2 = NULL; // 0x4238d0
  x4 = 60; // 0x4238d8
  if (x0 & (1 << 0) == 0) {
  } else {
    x4 = ((mem(x0, -1)) >> 12) & 0xfffff; // 0x4238e4
  }
  x4 = x4 - 0x5a; // 0x4238e8
  if (x4 <= 2) {
  } else {
    x4 = x4 - 0x16; // 0x4238f4
    if (x4 <= 0x37) {
    } else {
      if (x4 == 0xebc) {
      } else {
        x4 = x4 - 0xedd; // 0x423908
        if (x4 <= 4) {
        } else {
          x3 = mem((PP + 0x14000), 0xe80) /* Obj!? */; // 0x42391c
          x8 = mem(PP, 0x3b80) /* Type */; // 0x423914
          SlowTypeTestStub_0x61d6e4() /* 0x61d6e4 */; // 0x423920
        }
      }
    }
  }
  x1 = mem((PP + 0x14000), 0xe90) /* Function */; // 0x423928
  x2 = NULL; // 0x42392c
  AllocationStub__Closure() /* 0x61ec54 */; // 0x423930
  BARRIER = mem((PP + 0xb000), 0x820) /* TypeArguments */; // 0x423948
  x0 = local_m18; // 0x423938
  x1 = x0; // 0x423934
  x2 = ((mem((local_m18), -1)) >> 12) & 0xfffff; // 0x423940
  // frame: x0, BARRIER, mem(SP, 8) // 0x42394c
  local_0 = x1; // 0x423950
  LR = mem(x21, ((x0 + x17) << 3)); // 0x423964
  x0 = x2; // 0x423954
  x17 = 34521; // 0x42395c
  x4 = mem(PP, 0x58) /* ImmutableArray */; // 0x423958
  callIndirect(LR); // 0x423968
  x3 = local_m8; // 0x423970
  x4 = x0; // 0x42396c
  local_m20 = x4; // 0x423974
  w0 = mem(x3, 0x13); // 0x423978
  x0 = ((mem(x3, 0x13)) & 0xffffffff) + (HEAP << 32); // 0x42397c
  x1 = ((((mem(x3, 0x13)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x423980
  if (x0 & (1 << 0) == 0) {
  } else {
    x1 = mem(x0, 7); // 0x423988
  }
  if (x1 > 1) {
    if (w0 != 4) {
    } else {
      w5 = mem((local_m8), 0xf); // 0x423a94
      x0 = local_m10; // 0x423a9c
      x3 = local_m10; // 0x423a90
      x4 = local_m8; // 0x423a8c
      x5 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x423a98
      local_m18 = x5; // 0x423aa0
      x1 = NULL; // 0x423aa8
      x2 = NULL; // 0x423aa4
      if (x0 & (1 << 0) == 0) {
      } else {
        x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x423ab8
        if (x4 <= 1) {
        } else {
          x3 = mem((PP + 0x14000), 0xeb8) /* Obj!? */; // 0x423acc
          x8 = mem(PP, 0x1170) /* Type */; // 0x423ac4
          sub_0x62aa34(); // 0x423ad0
        }
      }
      x0 = local_m10; // 0x423ad4
      x1 = ((local_m10) >> 1) & 0x7fffffff; // 0x423ad8
      if (x0 & (1 << 0) == 0) {
      } else {
        x1 = mem(x0, 7); // 0x423ae0
      }
      x2 = local_m18; // 0x423ae4
      memSet(x2, 0x3b, x1); // 0x423ae8
      w1 = mem(x2, 0x5b); // 0x423aec
      x1 = ((mem(x2, 0x5b)) & 0xffffffff) + (HEAP << 32); // 0x423af0
      x2 = local_m20; // 0x423af4
      GrowableList_addAll() /* 0x2ce4e8 */; // 0x423af8
    }
  } else {
    if (x1 > 0) {
      w5 = mem(x4, 0xf); // 0x423a18
      x0 = local_m10; // 0x423a20
      x3 = local_m10; // 0x423a14
      x4 = x3; // 0x423a10
      x5 = ((mem(x4, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x423a1c
      local_m18 = x5; // 0x423a24
      x1 = NULL; // 0x423a2c
      x2 = NULL; // 0x423a28
      if (x0 & (1 << 0) == 0) {
      } else {
        x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x423a3c
        if (x4 <= 1) {
        } else {
          x3 = mem((PP + 0x14000), 0xea8) /* Obj!? */; // 0x423a50
          x8 = mem(PP, 0x1170) /* Type */; // 0x423a48
          sub_0x62aa34(); // 0x423a54
        }
      }
      x0 = local_m10; // 0x423a58
      x1 = ((local_m10) >> 1) & 0x7fffffff; // 0x423a5c
      if (x0 & (1 << 0) == 0) {
      } else {
        x1 = mem(x0, 7); // 0x423a64
      }
      x2 = local_m18; // 0x423a68
      memSet(x2, 0x33, x1); // 0x423a6c
      w1 = mem(x2, 0x57); // 0x423a70
      x1 = ((mem(x2, 0x57)) & 0xffffffff) + (HEAP << 32); // 0x423a74
      x2 = local_m20; // 0x423a78
      GrowableList_addAll() /* 0x2ce4e8 */; // 0x423a7c
    } else {
      if (w0 != 0) {
      } else {
        w6 = mem(x3, 0xf); // 0x4239a4
        x0 = local_m10; // 0x4239ac
        x5 = local_m10; // 0x4239a0
        x6 = ((mem(x3, 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4239a8
        local_m18 = x6; // 0x4239b0
        x1 = NULL; // 0x4239b8
        x2 = NULL; // 0x4239b4
        if (x0 & (1 << 0) == 0) {
        } else {
          x4 = (((mem(x0, -1)) >> 12) & 0xfffff) - 0x3c; // 0x4239c8
          if (x4 <= 1) {
          } else {
            x3 = mem((PP + 0x14000), 0xe98) /* Obj!? */; // 0x4239dc
            x8 = mem(PP, 0x1170) /* Type */; // 0x4239d4
            sub_0x62aa34(); // 0x4239e0
          }
        }
        x0 = local_m10; // 0x4239e4
        x1 = ((local_m10) >> 1) & 0x7fffffff; // 0x4239e8
        if (x0 & (1 << 0) == 0) {
        } else {
          x1 = mem(x0, 7); // 0x4239f0
        }
        x2 = local_m18; // 0x4239f4
        memSet(x2, 0x2b, x1); // 0x4239f8
        w1 = mem(x2, 0x53); // 0x4239fc
        x1 = ((mem(x2, 0x53)) & 0xffffffff) + (HEAP << 32); // 0x423a00
        x2 = local_m20; // 0x423a04
        GrowableList_addAll() /* 0x2ce4e8 */; // 0x423a08
      }
    }
  }
  w1 = mem((local_m8), 0x17); // 0x423b00
  x0 = local_m8; // 0x423afc
  x1 = ((mem((local_m8), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x423b04
  local_m18 = x1; // 0x423b08
  BARRIER = local_m10; // 0x423b0c
  // frame: xzr, BARRIER, mem(SP) // 0x423b10
  BARRIER = (PP + 0x14000) + 0xec8; // 0x423b20
  x0 = local_8; // 0x423b18
  x4 = 0; // 0x423b14
  memRead2(BARRIER, 0, x5, LR); // 0x423b24
  callIndirect(LR); // 0x423b28
  w2 = mem((local_m18), 0x17); // 0x423b34
  x0 = local_m18; // 0x423b30
  x1 = ((mem((local_m18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x423b40
  x2 = NULL + 0x20; // 0x423b44
  x3 = x0; // 0x423b3c
  InviteUserPageState_onLoaded() /* 0x422c60 */; // 0x423b48
  w1 = mem((local_m8), 0xf); // 0x423b50
  w2 = mem((local_m8), 0x13); // 0x423b58
  x0 = local_m8; // 0x423b4c
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x423b54
  x2 = ((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32); // 0x423b5c
  x3 = ((((mem((local_m8), 0x13)) & 0xffffffff) + (HEAP << 32)) >> 1) & 0x7fffffff; // 0x423b60
  if (x2 & (1 << 0) == 0) {
  } else {
    x3 = mem(x2, 7); // 0x423b68
  }
  x2 = x3; // 0x423b6c
  x3 = NULL + 0x20; // 0x423b70
  PartyInviteNotifier_updateRefreshState() /* 0x422adc */; // 0x423b74
  w1 = mem((local_m8), 0xf); // 0x423b7c
  x0 = local_m8; // 0x423b78
  x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x423b80
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x423b84
  SP = FP; // 0x423b8c
  x0 = NULL; // 0x423b88
  // frame: FP, LR, mem(SP), 0x10 // 0x423b90
  return;
}

// PartyInviteNotifier_anon_closure_7
// raw disassembly:
//  0x423ba0: stp FP, LR, [SP, #-0x10]!
//  0x423ba4: mov FP, SP
//  0x423ba8: sub SP, SP, #8
//  0x423bac: ldr BARRIER, [THR, #0x38]
//  0x423bb0: cmp SP, BARRIER
//  0x423bb4: b.ls #0x423bf8
//  0x423bb8: ldr x0, [FP, #0x10]
//  0x423bbc: mov x2, NULL
//  0x423bc0: mov x1, NULL
//  0x423bc4: ldr x8, [PP, #0x3cd0]
//  0x423bc8: add x3, PP, #0x14, lsl #12
//  0x423bcc: ldr x3, [x3, #0xed8]
//  0x423bd0: bl #0x2b15f0
//  0x423bd4: bl #0x423504
//  0x423bd8: mov x1, x0
//  0x423bdc: ldr x2, [FP, #0x10]
//  0x423be0: stur x0, [FP, #-8]
//  0x423be4: bl #0x422f0c
//  0x423be8: ldur x0, [FP, #-8]
//  0x423bec: mov SP, FP
//  0x423bf0: ldp FP, LR, [SP], #0x10
//  0x423bf4: ret 
//  0x423bf8: bl #0x61fa28
//  0x423bfc: b #0x423bb8
//
dynamic PartyInviteNotifier_anon_closure_7() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x8;
  // frame: FP, LR, mem(SP, -0x10)! // 0x423ba0
  BARRIER = mem(THR, 0x38); // 0x423bac
  // frame: FP = SP // 0x423ba4
  // frame: SP = SP - 8 // 0x423ba8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x423bf8
  }
  x0 = local_10; // 0x423bb8
  x1 = NULL; // 0x423bc0
  x2 = NULL; // 0x423bbc
  x3 = mem((PP + 0x14000), 0xed8) /* Obj!? */; // 0x423bcc
  x8 = mem(PP, 0x3cd0) /* Type */; // 0x423bc4
  sub_0x2b15f0(); // 0x423bd0
  AllocationStub_PartyInviteItem() /* 0x423504 */; // 0x423bd4
  x1 = x0; // 0x423bd8
  x2 = local_10; // 0x423bdc
  local_m8 = x0; // 0x423be0
  PartyInviteItem_ctor_fromJson() /* 0x422f0c */; // 0x423be4
  SP = FP; // 0x423bec
  x0 = local_m8; // 0x423be8
  // frame: FP, LR, mem(SP), 0x10 // 0x423bf0
  return;
}

// PartyInviteNotifier_ctor
// raw disassembly:
//  0x4c3f40: stp FP, LR, [SP, #-0x10]!
//  0x4c3f44: mov FP, SP
//  0x4c3f48: sub SP, SP, #0x18
//  0x4c3f4c: add x2, PP, #0xb, lsl #12
//  0x4c3f50: ldr x2, [x2, #0x818]
//  0x4c3f54: mov x0, #-1
//  0x4c3f58: mov x3, x1
//  0x4c3f5c: stur x1, [FP, #-8]
//  0x4c3f60: ldr BARRIER, [THR, #0x38]
//  0x4c3f64: cmp SP, BARRIER
//  0x4c3f68: b.ls #0x4c4138
//  0x4c3f6c: stur w2, [x3, #0x43]
//  0x4c3f70: stur w2, [x3, #0x47]
//  0x4c3f74: stur w2, [x3, #0x4b]
//  0x4c3f78: stur w2, [x3, #0x4f]
//  0x4c3f7c: stur x0, [x3, #0x2b]
//  0x4c3f80: stur x0, [x3, #0x33]
//  0x4c3f84: stur x0, [x3, #0x3b]
//  0x4c3f88: add x1, PP, #0xb, lsl #12
//  0x4c3f8c: ldr x1, [x1, #0x820]
//  0x4c3f90: mov x2, #0
//  0x4c3f94: bl #0x277268
//  0x4c3f98: ldur x3, [FP, #-8]
//  0x4c3f9c: stur w0, [x3, #0x53]
//  0x4c3fa0: ldurb w16, [x3, #-1]
//  0x4c3fa4: ldurb w17, [x0, #-1]
//  0x4c3fa8: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3fac: tst BARRIER, HEAP, lsr #32
//  0x4c3fb0: b.eq #0x4c3fb8
//  0x4c3fb4: bl #0x61e08c
//  0x4c3fb8: add x1, PP, #0xb, lsl #12
//  0x4c3fbc: ldr x1, [x1, #0x820]
//  0x4c3fc0: mov x2, #0
//  0x4c3fc4: bl #0x277268
//  0x4c3fc8: ldur x3, [FP, #-8]
//  0x4c3fcc: stur w0, [x3, #0x57]
//  0x4c3fd0: ldurb w16, [x3, #-1]
//  0x4c3fd4: ldurb w17, [x0, #-1]
//  0x4c3fd8: and BARRIER, x17, BARRIER, lsr #2
//  0x4c3fdc: tst BARRIER, HEAP, lsr #32
//  0x4c3fe0: b.eq #0x4c3fe8
//  0x4c3fe4: bl #0x61e08c
//  0x4c3fe8: add x1, PP, #0xb, lsl #12
//  0x4c3fec: ldr x1, [x1, #0x820]
//  0x4c3ff0: mov x2, #0
//  0x4c3ff4: bl #0x277268
//  0x4c3ff8: ldur x3, [FP, #-8]
//  0x4c3ffc: stur w0, [x3, #0x5b]
//  0x4c4000: ldurb w16, [x3, #-1]
//  0x4c4004: ldurb w17, [x0, #-1]
//  0x4c4008: and BARRIER, x17, BARRIER, lsr #2
//  0x4c400c: tst BARRIER, HEAP, lsr #32
//  0x4c4010: b.eq #0x4c4018
//  0x4c4014: bl #0x61e08c
//  0x4c4018: add x1, PP, #0xb, lsl #12
//  0x4c401c: ldr x1, [x1, #0x820]
//  0x4c4020: mov x2, #0
//  0x4c4024: bl #0x277268
//  0x4c4028: ldur x1, [FP, #-8]
//  0x4c402c: stur w0, [x1, #0x5f]
//  0x4c4030: ldurb w16, [x1, #-1]
//  0x4c4034: ldurb w17, [x0, #-1]
//  0x4c4038: and BARRIER, x17, BARRIER, lsr #2
//  0x4c403c: tst BARRIER, HEAP, lsr #32
//  0x4c4040: b.eq #0x4c4048
//  0x4c4044: bl #0x61e04c
//  0x4c4048: ldr x0, [THR, #0x68]
//  0x4c404c: ldr x0, [x0, #0x6e8]
//  0x4c4050: ldr BARRIER, [PP, #0x40]
//  0x4c4054: cmp w0, w16
//  0x4c4058: b.ne #0x4c4064
//  0x4c405c: ldr x2, [PP, #0xbf8]
//  0x4c4060: bl #0x61d99c
//  0x4c4064: add x1, PP, #0xb, lsl #12
//  0x4c4068: ldr x1, [x1, #0x820]
//  0x4c406c: stur x0, [FP, #-0x10]
//  0x4c4070: bl #0x2a5de4
//  0x4c4074: mov x1, x0
//  0x4c4078: ldur x0, [FP, #-0x10]
//  0x4c407c: stur x1, [FP, #-0x18]
//  0x4c4080: stur w0, [x1, #0x1b]
//  0x4c4084: stur wzr, [x1, #0xb]
//  0x4c4088: ldr x0, [THR, #0x68]
//  0x4c408c: ldr x0, [x0, #0x6f0]
//  0x4c4090: ldr BARRIER, [PP, #0x40]
//  0x4c4094: cmp w0, w16
//  0x4c4098: b.ne #0x4c40a4
//  0x4c409c: ldr x2, [PP, #0xc00]
//  0x4c40a0: bl #0x61d99c
//  0x4c40a4: mov x1, x0
//  0x4c40a8: ldur x0, [FP, #-0x18]
//  0x4c40ac: stur w1, [x0, #0xf]
//  0x4c40b0: stur wzr, [x0, #0x13]
//  0x4c40b4: stur wzr, [x0, #0x17]
//  0x4c40b8: ldur x1, [FP, #-8]
//  0x4c40bc: stur w0, [x1, #0x63]
//  0x4c40c0: ldurb w16, [x1, #-1]
//  0x4c40c4: ldurb w17, [x0, #-1]
//  0x4c40c8: and BARRIER, x17, BARRIER, lsr #2
//  0x4c40cc: tst BARRIER, HEAP, lsr #32
//  0x4c40d0: b.eq #0x4c40d8
//  0x4c40d4: bl #0x61e04c
//  0x4c40d8: mov x0, #-1
//  0x4c40dc: stur x0, [x1, #0x23]
//  0x4c40e0: stur xzr, [x1, #7]
//  0x4c40e4: stur xzr, [x1, #0x13]
//  0x4c40e8: stur xzr, [x1, #0x1b]
//  0x4c40ec: ldr x0, [THR, #0x68]
//  0x4c40f0: ldr x0, [x0, #0xb90]
//  0x4c40f4: ldr BARRIER, [PP, #0x40]
//  0x4c40f8: cmp w0, w16
//  0x4c40fc: b.ne #0x4c4108
//  0x4c4100: ldr x2, [PP, #0x3608]
//  0x4c4104: bl #0x61d99c
//  0x4c4108: ldur x1, [FP, #-8]
//  0x4c410c: stur w0, [x1, #0xf]
//  0x4c4110: ldurb w16, [x1, #-1]
//  0x4c4114: ldurb w17, [x0, #-1]
//  0x4c4118: and BARRIER, x17, BARRIER, lsr #2
//  0x4c411c: tst BARRIER, HEAP, lsr #32
//  0x4c4120: b.eq #0x4c4128
//  0x4c4124: bl #0x61e04c
//  0x4c4128: mov x0, NULL
//  0x4c412c: mov SP, FP
//  0x4c4130: ldp FP, LR, [SP], #0x10
//  0x4c4134: ret 
//  0x4c4138: bl #0x61fa28
//  0x4c413c: b #0x4c3f6c
//
dynamic PartyInviteNotifier_ctor() {
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
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c3f40
  // frame: FP = SP // 0x4c3f44
  // frame: SP = SP - 0x18 // 0x4c3f48
  x0 = -1; // 0x4c3f54
  x2 = mem((PP + 0xb000), 0x818) /* Obj!RefreshInviteUserState@12172  */; // 0x4c3f50
  x3 = x1; // 0x4c3f58
  local_m8 = x1; // 0x4c3f5c
  BARRIER = mem(THR, 0x38); // 0x4c3f60
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c4138
  }
  memSet(x3, 0x43, w2); // 0x4c3f6c
  memSet(x3, 0x47, w2); // 0x4c3f70
  memSet(x3, 0x4b, w2); // 0x4c3f74
  memSet(x3, 0x4f, w2); // 0x4c3f78
  memSet(x3, 0x2b, x0); // 0x4c3f7c
  memSet(x3, 0x33, x0); // 0x4c3f80
  memSet(x3, 0x3b, x0); // 0x4c3f84
  x1 = mem((PP + 0xb000), 0x820) /* TypeArguments */; // 0x4c3f8c
  x2 = 0; // 0x4c3f90
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c3f94
  x3 = local_m8; // 0x4c3f98
  memSet(x3, 0x53, w0); // 0x4c3f9c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3fa8
  w16 = mem(x3, -1); // 0x4c3fa0
  w17 = mem(x0, -1); // 0x4c3fa4
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4c3fa0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3fa4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c3fb4
  }
  x1 = mem((PP + 0xb000), 0x820) /* TypeArguments */; // 0x4c3fbc
  x2 = 0; // 0x4c3fc0
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c3fc4
  x3 = local_m8; // 0x4c3fc8
  memSet(x3, 0x57, w0); // 0x4c3fcc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c3fd8
  w16 = mem(x3, -1); // 0x4c3fd0
  w17 = mem(x0, -1); // 0x4c3fd4
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4c3fd0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c3fd4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c3fe4
  }
  x1 = mem((PP + 0xb000), 0x820) /* TypeArguments */; // 0x4c3fec
  x2 = 0; // 0x4c3ff0
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c3ff4
  x3 = local_m8; // 0x4c3ff8
  memSet(x3, 0x5b, w0); // 0x4c3ffc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c4008
  w16 = mem(x3, -1); // 0x4c4000
  w17 = mem(x0, -1); // 0x4c4004
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4c4000
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c4004
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c4014
  }
  x1 = mem((PP + 0xb000), 0x820) /* TypeArguments */; // 0x4c401c
  x2 = 0; // 0x4c4020
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c4024
  x1 = local_m8; // 0x4c4028
  memSet(x1, 0x5f, w0); // 0x4c402c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c4038
  w16 = mem(x1, -1); // 0x4c4030
  w17 = mem(x0, -1); // 0x4c4034
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c4030
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c4034
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c4044
  }
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4c4050
  x0 = mem((mem(THR, 0x68)), 0x6e8); // 0x4c404c
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0xbf8) /* Field */; // 0x4c405c
    sub_0x61d99c(); // 0x4c4060
  }
  x1 = mem((PP + 0xb000), 0x820) /* TypeArguments */; // 0x4c4068
  local_m10 = x0; // 0x4c406c
  AllocationStub__Set() /* 0x2a5de4 */; // 0x4c4070
  x0 = local_m10; // 0x4c4078
  x1 = x0; // 0x4c4074
  local_m18 = x1; // 0x4c407c
  memSet(x1, 0x1b, w0); // 0x4c4080
  memSet(x1, 0xb, wzr); // 0x4c4084
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4c4090
  x0 = mem((mem(THR, 0x68)), 0x6f0); // 0x4c408c
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0xc00) /* Field */; // 0x4c409c
    sub_0x61d99c(); // 0x4c40a0
  }
  x0 = local_m18; // 0x4c40a8
  x1 = x0; // 0x4c40a4
  memSet(x0, 0xf, w1); // 0x4c40ac
  memSet(x0, 0x13, wzr); // 0x4c40b0
  memSet(x0, 0x17, wzr); // 0x4c40b4
  x1 = local_m8; // 0x4c40b8
  memSet(x1, 0x63, w0); // 0x4c40bc
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c40c8
  w16 = mem(x1, -1); // 0x4c40c0
  w17 = mem(x0, -1); // 0x4c40c4
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c40c0
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c40c4
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c40d4
  }
  x0 = -1; // 0x4c40d8
  memSet(x1, 0x23, x0); // 0x4c40dc
  memSet(x1, 7, xzr); // 0x4c40e0
  memSet(x1, 0x13, xzr); // 0x4c40e4
  memSet(x1, 0x1b, xzr); // 0x4c40e8
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4c40f4
  x0 = mem((mem(THR, 0x68)), 0xb90); // 0x4c40f0
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3608) /* Field */; // 0x4c4100
    sub_0x61d99c(); // 0x4c4104
  }
  x1 = local_m8; // 0x4c4108
  memSet(x1, 0xf, w0); // 0x4c410c
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c4118
  w16 = mem(x1, -1); // 0x4c4110
  w17 = mem(x0, -1); // 0x4c4114
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c4110
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c4114
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c4124
  }
  SP = FP; // 0x4c412c
  x0 = NULL; // 0x4c4128
  // frame: FP, LR, mem(SP), 0x10 // 0x4c4130
  return;
}

// RefreshInviteUserState_enumToString
// raw disassembly:
//  0x4aea08: stp FP, LR, [SP, #-0x10]!
//  0x4aea0c: mov FP, SP
//  0x4aea10: sub SP, SP, #0x10
//  0x4aea14: mov x0, x1
//  0x4aea18: stur x1, [FP, #-8]
//  0x4aea1c: ldr BARRIER, [THR, #0x38]
//  0x4aea20: cmp SP, BARRIER
//  0x4aea24: b.ls #0x4aea64
//  0x4aea28: mov x1, NULL
//  0x4aea2c: mov x2, #4
//  0x4aea30: bl #0x61f920
//  0x4aea34: add BARRIER, PP, #0x11, lsl #12
//  0x4aea38: ldr BARRIER, [BARRIER, #0x7e8]
//  0x4aea3c: stur w16, [x0, #0xf]
//  0x4aea40: ldur x1, [FP, #-8]
//  0x4aea44: ldur w2, [x1, #0xf]
//  0x4aea48: add x2, x2, HEAP, lsl #32
//  0x4aea4c: stur w2, [x0, #0x13]
//  0x4aea50: str x0, [SP]
//  0x4aea54: bl #0x2ad854
//  0x4aea58: mov SP, FP
//  0x4aea5c: ldp FP, LR, [SP], #0x10
//  0x4aea60: ret 
//  0x4aea64: bl #0x61fa28
//  0x4aea68: b #0x4aea28
//
dynamic RefreshInviteUserState_enumToString() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w2;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4aea08
  // frame: FP = SP // 0x4aea0c
  // frame: SP = SP - 0x10 // 0x4aea10
  x0 = x1; // 0x4aea14
  local_m8 = x1; // 0x4aea18
  BARRIER = mem(THR, 0x38); // 0x4aea1c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4aea64
  }
  x1 = NULL; // 0x4aea28
  x2 = 4; // 0x4aea2c
  sub_0x61f920(); // 0x4aea30
  BARRIER = "RefreshInviteUserState." /* pp+0x117e8 */; // 0x4aea38
  memSet(x0, 0xf, w16); // 0x4aea3c
  w2 = mem((local_m8), 0xf); // 0x4aea44
  x1 = local_m8; // 0x4aea40
  x2 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4aea48
  memSet(x0, 0x13, w2); // 0x4aea4c
  local_0 = x0; // 0x4aea50
  StringBase_interpolate() /* 0x2ad854 */; // 0x4aea54
  SP = FP; // 0x4aea58
  // frame: FP, LR, mem(SP), 0x10 // 0x4aea5c
  return;
}
