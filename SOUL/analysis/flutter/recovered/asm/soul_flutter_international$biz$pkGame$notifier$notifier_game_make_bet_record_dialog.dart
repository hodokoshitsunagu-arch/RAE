// lib: , url: soul_flutter_international$biz$pkGame$notifier$notifier_game_make_bet_record_dialog


  requestPKBetGameRankList() {
    // ** addr: 0x42ea84, size: 0xc8
    // 0x42ea84: EnterFrame
    //     0x42ea84: stp          fp, lr, [SP, #-0x10]!
    //     0x42ea88: mov          fp, SP
    // 0x42ea8c: AllocStack(0x38)
    //     0x42ea8c: sub          SP, SP, #0x38
    //     0x42ea90: stur         r1, [fp, #-8]
    //     0x42ea94: stur         r2, [fp, #-0x10]
    //     0x42ea98: stur         r3, [fp, #-0x18]
    //     0x42ea9c: stur         r5, [fp, #-0x20]
    // 0x42eaa0: CheckStackOverflow
    //     0x42eaa0: ldr          BARRIER, [THR, #0x38]
    //     0x42eaa4: cmp          SP, BARRIER
    //     0x42eaa8: b.ls         0x42eb44
    //     0x42eaac: mov          r1, #2
    // 0x42eab0: r0 = call 0x61e890
    //     0x42eab0: bl           0x61e890
    // 0x42eab4: r2 = r0
    //     0x42eab4: mov          r2, r0
    //     0x42eab8: ldur         r0, [fp, #-8]
    //     0x42eabc: stur         r2, [fp, #-0x28]
    // 0x42eac0: StoreField: r2->field_f = r0
    //     0x42eac0: stur         r0, [r2, #0xf]
    //     0x42eac4: ldur         r1, [fp, #-0x20]
    // 0x42eac8: StoreField: r2->field_13 = r1
    //     0x42eac8: stur         r1, [r2, #0x13]
    // 0x42eacc: r1 = r0
    //     0x42eacc: mov          r1, r0
    // 0x42ead0: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x42ead0: bl           0x3ac980
    //     0x42ead4: ldur         r0, [fp, #-0x10]
    //     0x42ead8: tst          r0, #0x10
    //     0x42eadc: cset         r1, eq
    //     0x42eae0: lsl          r1, r1, #1
    //     0x42eae4: ldur         r0, [fp, #-8]
    // 0x42eae8: LoadField: r3 = r0->field_2f
    //     0x42eae8: ldur         r3, [r0, #0x2f]
    //     0x42eaec: stur         r3, [fp, #-0x38]
    //     0x42eaf0: sbfx         r0, r1, #1, #0x1f
    //     0x42eaf4: ldur         r2, [fp, #-0x28]
    //     0x42eaf8: stur         r0, [fp, #-0x30]
    // 0x42eafc: r1 = pp[0x367]
    //     0x42eafc: add          r1, PP, #0xf, lsl #12
    //     0x42eb00: ldr          r1, [r1, #0x358]
    // 0x42eb04: r0 = call 0x61ec54
    //     0x42eb04: bl           0x61ec54
    //     0x42eb08: ldur         r2, [fp, #-0x28]
    // 0x42eb0c: r1 = pp[0x36f]
    //     0x42eb0c: add          r1, PP, #0xf, lsl #12
    //     0x42eb10: ldr          r1, [r1, #0x360]
    //     0x42eb14: stur         r0, [fp, #-8]
    // 0x42eb18: r0 = call 0x61ec54
    //     0x42eb18: bl           0x61ec54
    //     0x42eb1c: ldur         r1, [fp, #-0x38]
    //     0x42eb20: ldur         r2, [fp, #-0x30]
    //     0x42eb24: ldur         r3, [fp, #-0x18]
    //     0x42eb28: ldur         r5, [fp, #-8]
    // 0x42eb2c: r6 = r0
    //     0x42eb2c: mov          r6, r0
    // 0x42eb30: r0 = soul_flutter_international$api$api_service_SOApiService::getPKBetGameRankList()
    //     0x42eb30: bl           0x3ac7ec
    // 0x42eb34: r0 = NULL
    //     0x42eb34: mov          r0, NULL
    // 0x42eb38: SP = fp
    //     0x42eb38: mov          SP, fp
    // 0x42eb3c: LeaveFrame
    //     0x42eb3c: ldp          fp, lr, [SP], #0x10
    // 0x42eb40: ret
    //     0x42eb40: ret          
    // 0x42eb44: r0 = call 0x61fa28
    //     0x42eb44: bl           0x61fa28
    // 0x42eb48: b 0x42eaac
    //     0x42eb48: b            0x42eaac
  }

  _anon_closure() {
    // ** addr: 0x42eb4c, size: 0x25c
    // 0x42eb4c: EnterFrame
    //     0x42eb4c: stp          fp, lr, [SP, #-0x10]!
    //     0x42eb50: mov          fp, SP
    // 0x42eb54: AllocStack(0x30)
    //     0x42eb54: sub          SP, SP, #0x30
    //     0x42eb58: ldr          r0, [fp, #0x18]
    // 0x42eb5c: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x42eb5c: ldur         r3, [r0, #0x17]
    //     0x42eb60: add          r3, r3, HEAP, lsl #32
    //     0x42eb64: stur         r3, [fp, #-0x10]
    // 0x42eb68: CheckStackOverflow
    //     0x42eb68: ldr          BARRIER, [THR, #0x38]
    //     0x42eb6c: cmp          SP, BARRIER
    //     0x42eb70: b.ls         0x42eda0
    // 0x42eb74: LoadField: r4 = r3->field_f
    //     0x42eb74: ldur         r4, [r3, #0xf]
    //     0x42eb78: add          r4, r4, HEAP, lsl #32
    //     0x42eb7c: ldr          r5, [fp, #0x10]
    //     0x42eb80: stur         r4, [fp, #-8]
    // 0x42eb84: r0 = LoadClassIdInstr(r5)
    //     0x42eb84: ldur         r0, [r5, #-1]
    //     0x42eb88: ubfx         r0, r0, #0xc, #0x14
    // 0x42eb8c: r1 = r5
    //     0x42eb8c: mov          r1, r5
    // 0x42eb90: r2 = pp[0x377]
    //     0x42eb90: add          r2, PP, #0xf, lsl #12
    //     0x42eb94: ldr          r2, [r2, #0x368]
    //     0x42eb98: sub          lr, r0, #1, lsl #12
    //     0x42eb9c: ldr          lr, [r21, lr, lsl #3]
    // 0x42eba0: r0 = [R]()
    //     0x42eba0: blr          lr
    //     0x42eba4: cmp          r0, r22
    // 0x42eba8: b.ne 0x42ebb4
    //     0x42eba8: b.ne         0x42ebb4
    //     0x42ebac: orr          r5, xzr, #0xfffffffffffffffe
    // 0x42ebb0: b 0x42ebb8
    //     0x42ebb0: b            0x42ebb8
    // 0x42ebb4: r5 = r0
    //     0x42ebb4: mov          r5, r0
    //     0x42ebb8: ldr          r4, [fp, #0x10]
    //     0x42ebbc: ldur         r3, [fp, #-8]
    // 0x42ebc0: r0 = r5
    //     0x42ebc0: mov          r0, r5
    //     0x42ebc4: stur         r5, [fp, #-0x18]
    // 0x42ebc8: r2 = NULL
    //     0x42ebc8: mov          r2, NULL
    // 0x42ebcc: r1 = NULL
    //     0x42ebcc: mov          r1, NULL
    // 0x42ebd0: branchIfSmi(r0, 0x42ebf8)
    //     0x42ebd0: tbz          r0, #0, 0x42ebf8
    // 0x42ebd4: r4 = LoadClassIdInstr(r0)
    //     0x42ebd4: ldur         r4, [r0, #-1]
    //     0x42ebd8: ubfx         r4, r4, #0xc, #0x14
    //     0x42ebdc: sub          r4, r4, #0x3c
    //     0x42ebe0: cmp          r4, #1
    // 0x42ebe4: b.ls 0x42ebf8
    //     0x42ebe4: b.ls         0x42ebf8
    // 0x42ebe8: r8 = pp[0x1170]
    //     0x42ebe8: ldr          r8, [PP, #0x1170]
    // 0x42ebec: r3 = pp[0x37f]
    //     0x42ebec: add          r3, PP, #0xf, lsl #12
    //     0x42ebf0: ldr          r3, [r3, #0x370]
    // 0x42ebf4: r0 = call 0x62aa34
    //     0x42ebf4: bl           0x62aa34
    //     0x42ebf8: ldur         r0, [fp, #-0x18]
    //     0x42ebfc: sbfx         r1, r0, #1, #0x1f
    // 0x42ec00: branchIfSmi(r0, 0x42ec08)
    //     0x42ec00: tbz          r0, #0, 0x42ec08
    // 0x42ec04: LoadField: r1 = r0->field_7
    //     0x42ec04: ldur         r1, [r0, #7]
    //     0x42ec08: ldur         r0, [fp, #-8]
    // 0x42ec0c: StoreField: r0->field_2f = r1
    //     0x42ec0c: stur         r1, [r0, #0x2f]
    //     0x42ec10: ldr          r1, [fp, #0x10]
    // 0x42ec14: r0 = LoadClassIdInstr(r1)
    //     0x42ec14: ldur         r0, [r1, #-1]
    //     0x42ec18: ubfx         r0, r0, #0xc, #0x14
    // 0x42ec1c: r2 = pp[0x38f]
    //     0x42ec1c: add          r2, PP, #0xf, lsl #12
    //     0x42ec20: ldr          r2, [r2, #0x380]
    //     0x42ec24: sub          lr, r0, #1, lsl #12
    //     0x42ec28: ldr          lr, [r21, lr, lsl #3]
    // 0x42ec2c: r0 = [R]()
    //     0x42ec2c: blr          lr
    //     0x42ec30: cmp          r0, r22
    // 0x42ec34: b.ne 0x42ec4c
    //     0x42ec34: b.ne         0x42ec4c
    // 0x42ec38: r1 = NULL
    //     0x42ec38: mov          r1, NULL
    //     0x42ec3c: mov          r2, #0
    // 0x42ec40: r0 = dart_core__GrowableList::factory_ctor()
    //     0x42ec40: bl           0x277268
    // 0x42ec44: r3 = r0
    //     0x42ec44: mov          r3, r0
    // 0x42ec48: b 0x42ec50
    //     0x42ec48: b            0x42ec50
    // 0x42ec4c: r3 = r0
    //     0x42ec4c: mov          r3, r0
    // 0x42ec50: r0 = r3
    //     0x42ec50: mov          r0, r3
    //     0x42ec54: stur         r3, [fp, #-8]
    // 0x42ec58: r2 = NULL
    //     0x42ec58: mov          r2, NULL
    // 0x42ec5c: r1 = NULL
    //     0x42ec5c: mov          r1, NULL
    //     0x42ec60: mov          r4, #0x3c
    // 0x42ec64: branchIfSmi(r0, 0x42ec70)
    //     0x42ec64: tbz          r0, #0, 0x42ec70
    // 0x42ec68: r4 = LoadClassIdInstr(r0)
    //     0x42ec68: ldur         r4, [r0, #-1]
    //     0x42ec6c: ubfx         r4, r4, #0xc, #0x14
    //     0x42ec70: sub          r4, r4, #0x5a
    //     0x42ec74: cmp          r4, #2
    // 0x42ec78: b.ls 0x42ecac
    //     0x42ec78: b.ls         0x42ecac
    //     0x42ec7c: sub          r4, r4, #0x16
    //     0x42ec80: cmp          r4, #0x37
    // 0x42ec84: b.ls 0x42ecac
    //     0x42ec84: b.ls         0x42ecac
    //     0x42ec88: cmp          r4, #0xebc
    // 0x42ec8c: b.eq 0x42ecac
    //     0x42ec8c: b.eq         0x42ecac
    //     0x42ec90: sub          r4, r4, #0xedd
    //     0x42ec94: cmp          r4, #4
    // 0x42ec98: b.ls 0x42ecac
    //     0x42ec98: b.ls         0x42ecac
    // 0x42ec9c: r8 = pp[0x3b80]
    //     0x42ec9c: ldr          r8, [PP, #0x3b80]
    // 0x42eca0: r3 = pp[0x397]
    //     0x42eca0: add          r3, PP, #0xf, lsl #12
    //     0x42eca4: ldr          r3, [r3, #0x388]
    // 0x42eca8: r0 = call 0x61d6e4
    //     0x42eca8: bl           0x61d6e4
    //     0x42ecac: ldur         r2, [fp, #-8]
    // 0x42ecb0: r0 = LoadClassIdInstr(r2)
    //     0x42ecb0: ldur         r0, [r2, #-1]
    //     0x42ecb4: ubfx         r0, r0, #0xc, #0x14
    // 0x42ecb8: r1 = r2
    //     0x42ecb8: mov          r1, r2
    //     0x42ecbc: mov          r17, #0x89aa
    //     0x42ecc0: add          lr, r0, r17
    //     0x42ecc4: ldr          lr, [r21, lr, lsl #3]
    // 0x42ecc8: r0 = [R]()
    //     0x42ecc8: blr          lr
    //     0x42eccc: tbnz         r0, #4, 0x42ed40
    //     0x42ecd0: ldur         r3, [fp, #-0x10]
    //     0x42ecd4: ldur         r0, [fp, #-8]
    // 0x42ecd8: LoadField: r1 = r3->field_f
    //     0x42ecd8: ldur         r1, [r3, #0xf]
    //     0x42ecdc: add          r1, r1, HEAP, lsl #32
    // 0x42ece0: LoadField: r4 = r1->field_2b
    //     0x42ece0: ldur         r4, [r1, #0x2b]
    //     0x42ece4: add          r4, r4, HEAP, lsl #32
    //     0x42ece8: stur         r4, [fp, #-0x18]
    // 0x42ecec: r1 = pp[0x3a7]
    //     0x42ecec: add          r1, PP, #0xf, lsl #12
    //     0x42ecf0: ldr          r1, [r1, #0x398]
    // 0x42ecf4: r2 = NULL
    //     0x42ecf4: mov          r2, NULL
    // 0x42ecf8: r0 = call 0x61ec54
    //     0x42ecf8: bl           0x61ec54
    // 0x42ecfc: r1 = r0
    //     0x42ecfc: mov          r1, r0
    //     0x42ed00: ldur         r0, [fp, #-8]
    // 0x42ed04: r2 = LoadClassIdInstr(r0)
    //     0x42ed04: ldur         r2, [r0, #-1]
    //     0x42ed08: ubfx         r2, r2, #0xc, #0x14
    // 0x42ed0c: BARRIER = pp[0x6a3]
    //     0x42ed0c: add          BARRIER, PP, #0xb, lsl #12
    //     0x42ed10: ldr          BARRIER, [BARRIER, #0x698]
    //     0x42ed14: stp          r0, BARRIER, [SP, #8]
    //     0x42ed18: str          r1, [SP]
    // 0x42ed1c: r0 = r2
    //     0x42ed1c: mov          r0, r2
    // 0x42ed20: r4 = pp[0x58]
    //     0x42ed20: ldr          r4, [PP, #0x58]
    //     0x42ed24: mov          r17, #0x86d9
    //     0x42ed28: add          lr, r0, r17
    //     0x42ed2c: ldr          lr, [r21, lr, lsl #3]
    // 0x42ed30: r0 = [R]()
    //     0x42ed30: blr          lr
    //     0x42ed34: ldur         r1, [fp, #-0x18]
    // 0x42ed38: r2 = r0
    //     0x42ed38: mov          r2, r0
    // 0x42ed3c: r0 = dart_core__GrowableList::addAll()
    //     0x42ed3c: bl           0x2ce4e8
    //     0x42ed40: ldur         r1, [fp, #-0x10]
    // 0x42ed44: LoadField: r0 = r1->field_13
    //     0x42ed44: ldur         r0, [r1, #0x13]
    //     0x42ed48: add          r0, r0, HEAP, lsl #32
    // 0x42ed4c: LoadField: r2 = r1->field_f
    //     0x42ed4c: ldur         r2, [r1, #0xf]
    //     0x42ed50: add          r2, r2, HEAP, lsl #32
    // 0x42ed54: LoadField: r3 = r2->field_2f
    //     0x42ed54: ldur         r3, [r2, #0x2f]
    //     0x42ed58: tbnz         r3, #0x3f, 0x42ed64
    //     0x42ed5c: add          r2, NULL, #0x30
    // 0x42ed60: b 0x42ed68
    //     0x42ed60: b            0x42ed68
    //     0x42ed64: add          r2, NULL, #0x20
    //     0x42ed68: add          BARRIER, NULL, #0x20
    //     0x42ed6c: stp          BARRIER, r0, [SP, #8]
    //     0x42ed70: str          r2, [SP]
    // 0x42ed74: r4 = pp[0x370]
    //     0x42ed74: ldr          r4, [PP, #0x370]
    // 0x42ed78: LoadField: r2 = r0->field_1f
    //     0x42ed78: ldur         r2, [r0, #0x1f]
    // 0x42ed7c: r0 = [R]()
    //     0x42ed7c: blr          r2
    //     0x42ed80: ldur         r0, [fp, #-0x10]
    // 0x42ed84: LoadField: r1 = r0->field_f
    //     0x42ed84: ldur         r1, [r0, #0xf]
    //     0x42ed88: add          r1, r1, HEAP, lsl #32
    // 0x42ed8c: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x42ed8c: bl           0x3ac980
    // 0x42ed90: r0 = NULL
    //     0x42ed90: mov          r0, NULL
    // 0x42ed94: SP = fp
    //     0x42ed94: mov          SP, fp
    // 0x42ed98: LeaveFrame
    //     0x42ed98: ldp          fp, lr, [SP], #0x10
    // 0x42ed9c: ret
    //     0x42ed9c: ret          
    // 0x42eda0: r0 = call 0x61fa28
    //     0x42eda0: bl           0x61fa28
    // 0x42eda4: b 0x42eb74
    //     0x42eda4: b            0x42eb74
  }

  _anon_closure() {
    // ** addr: 0x42eda8, size: 0x60
    // 0x42eda8: EnterFrame
    //     0x42eda8: stp          fp, lr, [SP, #-0x10]!
    //     0x42edac: mov          fp, SP
    // 0x42edb0: AllocStack(8)
    //     0x42edb0: sub          SP, SP, #8
    // 0x42edb4: CheckStackOverflow
    //     0x42edb4: ldr          BARRIER, [THR, #0x38]
    //     0x42edb8: cmp          SP, BARRIER
    //     0x42edbc: b.ls         0x42ee00
    //     0x42edc0: ldr          r0, [fp, #0x10]
    // 0x42edc4: r2 = NULL
    //     0x42edc4: mov          r2, NULL
    // 0x42edc8: r1 = NULL
    //     0x42edc8: mov          r1, NULL
    // 0x42edcc: r8 = pp[0x3cd0]
    //     0x42edcc: ldr          r8, [PP, #0x3cd0]
    // 0x42edd0: r3 = pp[0x3af]
    //     0x42edd0: add          r3, PP, #0xf, lsl #12
    //     0x42edd4: ldr          r3, [r3, #0x3a0]
    // 0x42edd8: r0 = call 0x2b15f0
    //     0x42edd8: bl           0x2b15f0
    // 0x42eddc: r0 = call 0x42f0d8
    //     0x42eddc: bl           0x42f0d8
    // 0x42ede0: r1 = r0
    //     0x42ede0: mov          r1, r0
    //     0x42ede4: ldr          r2, [fp, #0x10]
    //     0x42ede8: stur         r0, [fp, #-8]
    // 0x42edec: r0 = soul_flutter_international$model$game_pk_model_GamePkMakeBetListModel::ctor_fromJson()
    //     0x42edec: bl           0x42ee08
    //     0x42edf0: ldur         r0, [fp, #-8]
    // 0x42edf4: SP = fp
    //     0x42edf4: mov          SP, fp
    // 0x42edf8: LeaveFrame
    //     0x42edf8: ldp          fp, lr, [SP], #0x10
    // 0x42edfc: ret
    //     0x42edfc: ret          
    // 0x42ee00: r0 = call 0x61fa28
    //     0x42ee00: bl           0x61fa28
    // 0x42ee04: b 0x42edc0
    //     0x42ee04: b            0x42edc0
  }

  ctor() {
    // ** addr: 0x4c5530, size: 0xbc
    // 0x4c5530: EnterFrame
    //     0x4c5530: stp          fp, lr, [SP, #-0x10]!
    //     0x4c5534: mov          fp, SP
    // 0x4c5538: AllocStack(8)
    //     0x4c5538: sub          SP, SP, #8
    // 0x4c553c: r0 = r1
    //     0x4c553c: mov          r0, r1
    //     0x4c5540: stur         r1, [fp, #-8]
    // 0x4c5544: CheckStackOverflow
    //     0x4c5544: ldr          BARRIER, [THR, #0x38]
    //     0x4c5548: cmp          SP, BARRIER
    //     0x4c554c: b.ls         0x4c55e4
    // 0x4c5550: r1 = pp[0x6a3]
    //     0x4c5550: add          r1, PP, #0xb, lsl #12
    //     0x4c5554: ldr          r1, [r1, #0x698]
    //     0x4c5558: mov          r2, #0
    // 0x4c555c: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c555c: bl           0x277268
    //     0x4c5560: ldur         r1, [fp, #-8]
    // 0x4c5564: StoreField: r1->field_2b = r0
    //     0x4c5564: stur         r0, [r1, #0x2b]
    //     0x4c5568: ldurb        r16, [r1, #-1]
    //     0x4c556c: ldurb        r17, [r0, #-1]
    //     0x4c5570: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c5574: tst          BARRIER, HEAP, lsr #32
    // 0x4c5578: b.eq 0x4c5580
    //     0x4c5578: b.eq         0x4c5580
    // 0x4c557c: r0 = call 0x61e04c
    //     0x4c557c: bl           0x61e04c
    //     0x4c5580: mov          r0, #-1
    // 0x4c5584: StoreField: r1->field_2f = r0
    //     0x4c5584: stur         r0, [r1, #0x2f]
    // 0x4c5588: StoreField: r1->field_23 = r0
    //     0x4c5588: stur         r0, [r1, #0x23]
    // 0x4c558c: StoreField: r1->field_7 = xzr
    //     0x4c558c: stur         xzr, [r1, #7]
    // 0x4c5590: StoreField: r1->field_13 = xzr
    //     0x4c5590: stur         xzr, [r1, #0x13]
    // 0x4c5594: StoreField: r1->field_1b = xzr
    //     0x4c5594: stur         xzr, [r1, #0x1b]
    //     0x4c5598: ldr          r0, [THR, #0x68]
    // 0x4c559c: LoadField: r0 = r0->field_b90
    //     0x4c559c: ldr          r0, [r0, #0xb90]
    // 0x4c55a0: BARRIER = pp[0x40]
    //     0x4c55a0: ldr          BARRIER, [PP, #0x40]
    //     0x4c55a4: cmp          r0, r16
    // 0x4c55a8: b.ne 0x4c55b4
    //     0x4c55a8: b.ne         0x4c55b4
    // 0x4c55ac: r2 = pp[0x3608]
    //     0x4c55ac: ldr          r2, [PP, #0x3608]
    // 0x4c55b0: r0 = call 0x61d99c
    //     0x4c55b0: bl           0x61d99c
    //     0x4c55b4: ldur         r1, [fp, #-8]
    // 0x4c55b8: StoreField: r1->field_f = r0
    //     0x4c55b8: stur         r0, [r1, #0xf]
    //     0x4c55bc: ldurb        r16, [r1, #-1]
    //     0x4c55c0: ldurb        r17, [r0, #-1]
    //     0x4c55c4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c55c8: tst          BARRIER, HEAP, lsr #32
    // 0x4c55cc: b.eq 0x4c55d4
    //     0x4c55cc: b.eq         0x4c55d4
    // 0x4c55d0: r0 = call 0x61e04c
    //     0x4c55d0: bl           0x61e04c
    // 0x4c55d4: r0 = NULL
    //     0x4c55d4: mov          r0, NULL
    // 0x4c55d8: SP = fp
    //     0x4c55d8: mov          SP, fp
    // 0x4c55dc: LeaveFrame
    //     0x4c55dc: ldp          fp, lr, [SP], #0x10
    // 0x4c55e0: ret
    //     0x4c55e0: ret          
    // 0x4c55e4: r0 = call 0x61fa28
    //     0x4c55e4: bl           0x61fa28
    // 0x4c55e8: b 0x4c5550
    //     0x4c55e8: b            0x4c5550
  }

  gainPKBetGameRank() {
    // ** addr: 0x4da514, size: 0x64
    // 0x4da514: EnterFrame
    //     0x4da514: stp          fp, lr, [SP, #-0x10]!
    //     0x4da518: mov          fp, SP
    // 0x4da51c: AllocStack(0x20)
    //     0x4da51c: sub          SP, SP, #0x20
    // 0x4da520: r0 = r1
    //     0x4da520: mov          r0, r1
    //     0x4da524: stur         r1, [fp, #-8]
    //     0x4da528: stur         r2, [fp, #-0x10]
    //     0x4da52c: stur         r3, [fp, #-0x18]
    //     0x4da530: stur         r5, [fp, #-0x20]
    // 0x4da534: CheckStackOverflow
    //     0x4da534: ldr          BARRIER, [THR, #0x38]
    //     0x4da538: cmp          SP, BARRIER
    //     0x4da53c: b.ls         0x4da570
    // 0x4da540: LoadField: r1 = r0->field_2b
    //     0x4da540: ldur         r1, [r0, #0x2b]
    //     0x4da544: add          r1, r1, HEAP, lsl #32
    // 0x4da548: r0 = dart_core__GrowableList::clear()
    //     0x4da548: bl           0x2b3608
    //     0x4da54c: ldur         r1, [fp, #-8]
    //     0x4da550: ldur         r2, [fp, #-0x10]
    //     0x4da554: ldur         r3, [fp, #-0x18]
    //     0x4da558: ldur         r5, [fp, #-0x20]
    // 0x4da55c: r0 = soul_flutter_international$biz$pkGame$notifier$notifier_game_make_bet_record_dialog_GamePKBetRankingNotifier::requestPKBetGameRankList()
    //     0x4da55c: bl           0x42ea84
    // 0x4da560: r0 = NULL
    //     0x4da560: mov          r0, NULL
    // 0x4da564: SP = fp
    //     0x4da564: mov          SP, fp
    // 0x4da568: LeaveFrame
    //     0x4da568: ldp          fp, lr, [SP], #0x10
    // 0x4da56c: ret
    //     0x4da56c: ret          
    // 0x4da570: r0 = call 0x61fa28
    //     0x4da570: bl           0x61fa28
    // 0x4da574: b 0x4da540
    //     0x4da574: b            0x4da540
  }
