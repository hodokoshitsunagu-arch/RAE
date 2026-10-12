// lib: , url: soul_flutter_international$biz$game$notifier$notifier_game_fruit


  release() {
    // ** addr: 0x41a46c, size: 0x74
    // 0x41a46c: EnterFrame
    //     0x41a46c: stp          fp, lr, [SP, #-0x10]!
    //     0x41a470: mov          fp, SP
    // 0x41a474: AllocStack(8)
    //     0x41a474: sub          SP, SP, #8
    //     0x41a478: add          r0, NULL, #0x20
    // 0x41a47c: r2 = r1
    //     0x41a47c: mov          r2, r1
    //     0x41a480: stur         r1, [fp, #-8]
    // 0x41a484: CheckStackOverflow
    //     0x41a484: ldr          BARRIER, [THR, #0x38]
    //     0x41a488: cmp          SP, BARRIER
    //     0x41a48c: b.ls         0x41a4d8
    // 0x41a490: StoreField: r2->field_2f = r0
    //     0x41a490: stur         r0, [r2, #0x2f]
    // 0x41a494: LoadField: r1 = r2->field_5b
    //     0x41a494: ldur         r1, [r2, #0x5b]
    //     0x41a498: add          r1, r1, HEAP, lsl #32
    // 0x41a49c: r0 = soul_flutter_international$common$utils$count_down_timer_CountDownTimer::cancel()
    //     0x41a49c: bl           0x41a500
    //     0x41a4a0: ldur         r0, [fp, #-8]
    // 0x41a4a4: LoadField: r1 = r0->field_63
    //     0x41a4a4: ldur         r1, [r0, #0x63]
    //     0x41a4a8: add          r1, r1, HEAP, lsl #32
    //     0x41a4ac: cmp          r1, r22
    // 0x41a4b0: b.ne 0x41a4bc
    //     0x41a4b0: b.ne         0x41a4bc
    // 0x41a4b4: r1 = r0
    //     0x41a4b4: mov          r1, r0
    // 0x41a4b8: b 0x41a4c4
    //     0x41a4b8: b            0x41a4c4
    // 0x41a4bc: r0 = flutter$src$animation$animation_controller_AnimationController::dispose()
    //     0x41a4bc: bl           0x341328
    //     0x41a4c0: ldur         r1, [fp, #-8]
    // 0x41a4c4: StoreField: r1->field_63 = r22
    //     0x41a4c4: stur         r22, [r1, #0x63]
    // 0x41a4c8: r0 = NULL
    //     0x41a4c8: mov          r0, NULL
    // 0x41a4cc: SP = fp
    //     0x41a4cc: mov          SP, fp
    // 0x41a4d0: LeaveFrame
    //     0x41a4d0: ldp          fp, lr, [SP], #0x10
    // 0x41a4d4: ret
    //     0x41a4d4: ret          
    // 0x41a4d8: r0 = call 0x61fa28
    //     0x41a4d8: bl           0x61fa28
    // 0x41a4dc: b 0x41a490
    //     0x41a4dc: b            0x41a490
  }

  get_currentTips() {
    // ** addr: 0x41b40c, size: 0xbc
    // 0x41b40c: EnterFrame
    //     0x41b40c: stp          fp, lr, [SP, #-0x10]!
    //     0x41b410: mov          fp, SP
    // 0x41b414: CheckStackOverflow
    //     0x41b414: ldr          BARRIER, [THR, #0x38]
    //     0x41b418: cmp          SP, BARRIER
    //     0x41b41c: b.ls         0x41b4c0
    // 0x41b420: LoadField: r0 = r1->field_53
    //     0x41b420: ldur         r0, [r1, #0x53]
    //     0x41b424: add          r0, r0, HEAP, lsl #32
    // 0x41b428: LoadField: r2 = r0->field_7
    //     0x41b428: ldur         r2, [r0, #7]
    //     0x41b42c: cmp          r2, #2
    // 0x41b430: b.gt 0x41b480
    //     0x41b430: b.gt         0x41b480
    //     0x41b434: cmp          r2, #1
    // 0x41b438: b.gt 0x41b46c
    //     0x41b438: b.gt         0x41b46c
    //     0x41b43c: sbfiz        r0, r2, #1, #0x1f
    //     0x41b440: cmp          r2, r0, asr #1
    // 0x41b444: b.eq 0x41b450
    //     0x41b444: b.eq         0x41b450
    // 0x41b448: r0 = call 0x61fba8
    //     0x41b448: bl           0x61fba8
    // 0x41b44c: StoreField: r0->field_7 = r2
    //     0x41b44c: stur         r2, [r0, #7]
    //     0x41b450: cmp          r0, #2
    // 0x41b454: b.ne 0x41b4b0
    //     0x41b454: b.ne         0x41b4b0
    // 0x41b458: r1 = pp[0x7dc]
    //     0x41b458: add          r1, PP, #0xc, lsl #12
    //     0x41b45c: ldr          r1, [r1, #0x7d0]
    // 0x41b460: r4 = pp[0x4c0]
    //     0x41b460: ldr          r4, [PP, #0x4c0]
    // 0x41b464: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x41b464: bl           0x3a1dcc
    // 0x41b468: b 0x41b4b4
    //     0x41b468: b            0x41b4b4
    // 0x41b46c: r1 = pp[0x7cc]
    //     0x41b46c: add          r1, PP, #0xc, lsl #12
    //     0x41b470: ldr          r1, [r1, #0x7c0]
    // 0x41b474: r4 = pp[0x4c0]
    //     0x41b474: ldr          r4, [PP, #0x4c0]
    // 0x41b478: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x41b478: bl           0x3a1dcc
    // 0x41b47c: b 0x41b4b4
    //     0x41b47c: b            0x41b4b4
    //     0x41b480: sbfiz        r0, r2, #1, #0x1f
    //     0x41b484: cmp          r2, r0, asr #1
    // 0x41b488: b.eq 0x41b494
    //     0x41b488: b.eq         0x41b494
    // 0x41b48c: r0 = call 0x61fba8
    //     0x41b48c: bl           0x61fba8
    // 0x41b490: StoreField: r0->field_7 = r2
    //     0x41b490: stur         r2, [r0, #7]
    //     0x41b494: cmp          r0, #6
    // 0x41b498: b.ne 0x41b4b0
    //     0x41b498: b.ne         0x41b4b0
    // 0x41b49c: r1 = pp[0x7bc]
    //     0x41b49c: add          r1, PP, #0xc, lsl #12
    //     0x41b4a0: ldr          r1, [r1, #0x7b0]
    // 0x41b4a4: r4 = pp[0x4c0]
    //     0x41b4a4: ldr          r4, [PP, #0x4c0]
    // 0x41b4a8: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x41b4a8: bl           0x3a1dcc
    // 0x41b4ac: b 0x41b4b4
    //     0x41b4ac: b            0x41b4b4
    // 0x41b4b0: r0 = pp[0x148]
    //     0x41b4b0: ldr          r0, [PP, #0x148]
    // 0x41b4b4: SP = fp
    //     0x41b4b4: mov          SP, fp
    // 0x41b4b8: LeaveFrame
    //     0x41b4b8: ldp          fp, lr, [SP], #0x10
    // 0x41b4bc: ret
    //     0x41b4bc: ret          
    // 0x41b4c0: r0 = call 0x61fa28
    //     0x41b4c0: bl           0x61fa28
    // 0x41b4c4: b 0x41b420
    //     0x41b4c4: b            0x41b420
  }

  getBetCoinGear() {
    // ** addr: 0x41d410, size: 0x64
    //     0x41d410: tbnz         r2, #0x3f, 0x41d460
    // 0x41d414: LoadField: r3 = r1->field_3b
    //     0x41d414: ldur         r3, [r1, #0x3b]
    //     0x41d418: add          r3, r3, HEAP, lsl #32
    // 0x41d41c: LoadField: r4 = r3->field_b
    //     0x41d41c: ldur         r4, [r3, #0xb]
    //     0x41d420: sbfx         r0, r4, #1, #0x1f
    //     0x41d424: cmp          r2, r0
    // 0x41d428: b.ge 0x41d460
    //     0x41d428: b.ge         0x41d460
    // 0x41d42c: r1 = r2
    //     0x41d42c: mov          r1, r2
    //     0x41d430: cmp          r1, r0
    // 0x41d434: b.hs 0x41d468
    //     0x41d434: b.hs         0x41d468
    // 0x41d438: LoadField: r1 = r3->field_f
    //     0x41d438: ldur         r1, [r3, #0xf]
    //     0x41d43c: add          r1, r1, HEAP, lsl #32
    //     0x41d440: add          BARRIER, r1, r2, lsl #2
    // 0x41d444: LoadField: r3 = BARRIER->field_f
    //     0x41d444: ldur         r3, [BARRIER, #0xf]
    //     0x41d448: add          r3, r3, HEAP, lsl #32
    //     0x41d44c: sbfx         r1, r3, #1, #0x1f
    // 0x41d450: branchIfSmi(r3, 0x41d458)
    //     0x41d450: tbz          r3, #0, 0x41d458
    // 0x41d454: LoadField: r1 = r3->field_7
    //     0x41d454: ldur         r1, [r3, #7]
    // 0x41d458: r0 = r1
    //     0x41d458: mov          r0, r1
    // 0x41d45c: b 0x41d464
    //     0x41d45c: b            0x41d464
    //     0x41d460: mov          r0, #0
    // 0x41d464: ret
    //     0x41d464: ret          
    // 0x41d468: EnterFrame
    //     0x41d468: stp          fp, lr, [SP, #-0x10]!
    //     0x41d46c: mov          fp, SP
    // 0x41d470: r0 = call 0x61fe70
    //     0x41d470: bl           0x61fe70
  }

  betFruit() {
    // ** addr: 0x41d59c, size: 0x190
    // 0x41d59c: EnterFrame
    //     0x41d59c: stp          fp, lr, [SP, #-0x10]!
    //     0x41d5a0: mov          fp, SP
    // 0x41d5a4: AllocStack(0x40)
    //     0x41d5a4: sub          SP, SP, #0x40
    //     0x41d5a8: stur         r1, [fp, #-8]
    //     0x41d5ac: stur         r2, [fp, #-0x10]
    //     0x41d5b0: stur         r3, [fp, #-0x18]
    // 0x41d5b4: CheckStackOverflow
    //     0x41d5b4: ldr          BARRIER, [THR, #0x38]
    //     0x41d5b8: cmp          SP, BARRIER
    //     0x41d5bc: b.ls         0x41d724
    //     0x41d5c0: mov          r1, #2
    // 0x41d5c4: r0 = call 0x61e890
    //     0x41d5c4: bl           0x61e890
    // 0x41d5c8: r3 = r0
    //     0x41d5c8: mov          r3, r0
    //     0x41d5cc: ldur         r2, [fp, #-8]
    //     0x41d5d0: stur         r3, [fp, #-0x20]
    // 0x41d5d4: StoreField: r3->field_f = r2
    //     0x41d5d4: stur         r2, [r3, #0xf]
    //     0x41d5d8: ldur         r4, [fp, #-0x18]
    //     0x41d5dc: sbfiz        r0, r4, #1, #0x1f
    //     0x41d5e0: cmp          r4, r0, asr #1
    // 0x41d5e4: b.eq 0x41d5f0
    //     0x41d5e4: b.eq         0x41d5f0
    // 0x41d5e8: r0 = call 0x61fba8
    //     0x41d5e8: bl           0x61fba8
    // 0x41d5ec: StoreField: r0->field_7 = r4
    //     0x41d5ec: stur         r4, [r0, #7]
    // 0x41d5f0: StoreField: r3->field_13 = r0
    //     0x41d5f0: stur         r0, [r3, #0x13]
    // 0x41d5f4: LoadField: r1 = r2->field_53
    //     0x41d5f4: ldur         r1, [r2, #0x53]
    //     0x41d5f8: add          r1, r1, HEAP, lsl #32
    // 0x41d5fc: BARRIER = pp[0x215]
    //     0x41d5fc: add          BARRIER, PP, #0x15, lsl #12
    //     0x41d600: ldr          BARRIER, [BARRIER, #0x200]
    //     0x41d604: cmp          r1, r16
    // 0x41d608: b.ne 0x41d614
    //     0x41d608: b.ne         0x41d614
    //     0x41d60c: cmp          r4, #0
    // 0x41d610: b.gt 0x41d624
    //     0x41d610: b.gt         0x41d624
    // 0x41d614: r0 = NULL
    //     0x41d614: mov          r0, NULL
    // 0x41d618: SP = fp
    //     0x41d618: mov          SP, fp
    // 0x41d61c: LeaveFrame
    //     0x41d61c: ldp          fp, lr, [SP], #0x10
    // 0x41d620: ret
    //     0x41d620: ret          
    //     0x41d624: str          r0, [SP]
    // 0x41d628: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x41d628: bl           0x2ac0a0
    // 0x41d62c: r1 = NULL
    //     0x41d62c: mov          r1, NULL
    //     0x41d630: mov          r2, #2
    //     0x41d634: stur         r0, [fp, #-8]
    // 0x41d638: r0 = call 0x61f920
    //     0x41d638: bl           0x61f920
    // 0x41d63c: r2 = r0
    //     0x41d63c: mov          r2, r0
    //     0x41d640: ldur         r0, [fp, #-8]
    //     0x41d644: stur         r2, [fp, #-0x28]
    // 0x41d648: StoreField: r2->field_f = r0
    //     0x41d648: stur         r0, [r2, #0xf]
    // 0x41d64c: r1 = pp[0x868]
    //     0x41d64c: ldr          r1, [PP, #0x868]
    // 0x41d650: r0 = call 0x61e854
    //     0x41d650: bl           0x61e854
    // 0x41d654: r1 = r0
    //     0x41d654: mov          r1, r0
    //     0x41d658: ldur         r0, [fp, #-0x28]
    // 0x41d65c: StoreField: r1->field_f = r0
    //     0x41d65c: stur         r0, [r1, #0xf]
    //     0x41d660: mov          r0, #2
    // 0x41d664: StoreField: r1->field_b = r0
    //     0x41d664: stur         r0, [r1, #0xb]
    //     0x41d668: str          r1, [SP]
    // 0x41d66c: r1 = pp[0x7ac]
    //     0x41d66c: add          r1, PP, #0xc, lsl #12
    //     0x41d670: ldr          r1, [r1, #0x7a0]
    // 0x41d674: r4 = pp[0xf2f]
    //     0x41d674: add          r4, PP, #0xf, lsl #12
    //     0x41d678: ldr          r4, [r4, #0xf20]
    // 0x41d67c: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x41d67c: bl           0x3a1dcc
    // 0x41d680: r1 = pp[0xb2c]
    //     0x41d680: add          r1, PP, #0xc, lsl #12
    //     0x41d684: ldr          r1, [r1, #0xb20]
    //     0x41d688: stur         r0, [fp, #-8]
    // 0x41d68c: r4 = pp[0x4c0]
    //     0x41d68c: ldr          r4, [PP, #0x4c0]
    // 0x41d690: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x41d690: bl           0x3a1dcc
    //     0x41d694: stur         r0, [fp, #-0x28]
    // 0x41d698: r0 = call 0x41e218
    //     0x41d698: bl           0x41e218
    // 0x41d69c: r2 = r0
    //     0x41d69c: mov          r2, r0
    //     0x41d6a0: ldur         r0, [fp, #-0x28]
    //     0x41d6a4: stur         r2, [fp, #-0x30]
    // 0x41d6a8: StoreField: r2->field_7 = r0
    //     0x41d6a8: stur         r0, [r2, #7]
    // 0x41d6ac: r1 = pp[0xa74]
    //     0x41d6ac: add          r1, PP, #0xc, lsl #12
    //     0x41d6b0: ldr          r1, [r1, #0xa68]
    // 0x41d6b4: r4 = pp[0x4c0]
    //     0x41d6b4: ldr          r4, [PP, #0x4c0]
    // 0x41d6b8: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x41d6b8: bl           0x3a1dcc
    //     0x41d6bc: stur         r0, [fp, #-0x28]
    // 0x41d6c0: r0 = call 0x41e218
    //     0x41d6c0: bl           0x41e218
    // 0x41d6c4: r3 = r0
    //     0x41d6c4: mov          r3, r0
    //     0x41d6c8: ldur         r0, [fp, #-0x28]
    //     0x41d6cc: stur         r3, [fp, #-0x38]
    // 0x41d6d0: StoreField: r3->field_7 = r0
    //     0x41d6d0: stur         r0, [r3, #7]
    //     0x41d6d4: ldur         r2, [fp, #-0x20]
    // 0x41d6d8: r1 = pp[0x28d]
    //     0x41d6d8: add          r1, PP, #0x15, lsl #12
    //     0x41d6dc: ldr          r1, [r1, #0x278]
    // 0x41d6e0: r0 = call 0x61ec54
    //     0x41d6e0: bl           0x61ec54
    //     0x41d6e4: ldur         r3, [fp, #-0x38]
    // 0x41d6e8: StoreField: r3->field_b = r0
    //     0x41d6e8: stur         r0, [r3, #0xb]
    // 0x41d6ec: r0 = call 0x41e20c
    //     0x41d6ec: bl           0x41e20c
    // 0x41d6f0: r1 = r0
    //     0x41d6f0: mov          r1, r0
    //     0x41d6f4: ldur         r2, [fp, #-0x30]
    //     0x41d6f8: ldur         r3, [fp, #-0x38]
    //     0x41d6fc: ldur         r5, [fp, #-8]
    //     0x41d700: stur         r0, [fp, #-8]
    // 0x41d704: r0 = soul_flutter_international$widget$dialogs$soul_alert_dialog_SOAlertDialog::ctor()
    //     0x41d704: bl           0x41d79c
    //     0x41d708: ldur         r1, [fp, #-8]
    //     0x41d70c: ldur         r2, [fp, #-0x10]
    // 0x41d710: r0 = soul_flutter_international$widget$dialogs$soul_alert_dialog_SOAlertDialog::show()
    //     0x41d710: bl           0x41d72c
    // 0x41d714: r0 = NULL
    //     0x41d714: mov          r0, NULL
    // 0x41d718: SP = fp
    //     0x41d718: mov          SP, fp
    // 0x41d71c: LeaveFrame
    //     0x41d71c: ldp          fp, lr, [SP], #0x10
    // 0x41d720: ret
    //     0x41d720: ret          
    // 0x41d724: r0 = call 0x61fa28
    //     0x41d724: bl           0x61fa28
    // 0x41d728: b 0x41d5c0
    //     0x41d728: b            0x41d5c0
  }

  _anon_closure() {
    // ** addr: 0x41e224, size: 0xf8
    // 0x41e224: EnterFrame
    //     0x41e224: stp          fp, lr, [SP, #-0x10]!
    //     0x41e228: mov          fp, SP
    // 0x41e22c: AllocStack(0x20)
    //     0x41e22c: sub          SP, SP, #0x20
    //     0x41e230: ldr          r0, [fp, #0x10]
    // 0x41e234: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x41e234: ldur         r1, [r0, #0x17]
    //     0x41e238: add          r1, r1, HEAP, lsl #32
    //     0x41e23c: stur         r1, [fp, #-8]
    // 0x41e240: CheckStackOverflow
    //     0x41e240: ldr          BARRIER, [THR, #0x38]
    //     0x41e244: cmp          SP, BARRIER
    //     0x41e248: b.ls         0x41e314
    //     0x41e24c: mov          r1, #1
    // 0x41e250: r0 = call 0x61e890
    //     0x41e250: bl           0x61e890
    // 0x41e254: r3 = r0
    //     0x41e254: mov          r3, r0
    //     0x41e258: ldur         r0, [fp, #-8]
    //     0x41e25c: stur         r3, [fp, #-0x10]
    // 0x41e260: StoreField: r3->field_b = r0
    //     0x41e260: stur         r0, [r3, #0xb]
    // 0x41e264: LoadField: r1 = r0->field_f
    //     0x41e264: ldur         r1, [r0, #0xf]
    //     0x41e268: add          r1, r1, HEAP, lsl #32
    // 0x41e26c: LoadField: r2 = r1->field_43
    //     0x41e26c: ldur         r2, [r1, #0x43]
    // 0x41e270: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_getLotteryIndex()
    //     0x41e270: bl           0x41e6dc
    // 0x41e274: r3 = r0
    //     0x41e274: mov          r3, r0
    //     0x41e278: stur         r3, [fp, #-0x20]
    //     0x41e27c: sbfiz        r0, r3, #1, #0x1f
    //     0x41e280: cmp          r3, r0, asr #1
    // 0x41e284: b.eq 0x41e290
    //     0x41e284: b.eq         0x41e290
    // 0x41e288: r0 = call 0x61fba8
    //     0x41e288: bl           0x61fba8
    // 0x41e28c: StoreField: r0->field_7 = r3
    //     0x41e28c: stur         r3, [r0, #7]
    //     0x41e290: ldur         r2, [fp, #-0x10]
    // 0x41e294: StoreField: r2->field_f = r0
    //     0x41e294: stur         r0, [r2, #0xf]
    // 0x41e298: branchIfSmi(r0, 0x41e2b4)
    //     0x41e298: tbz          r0, #0, 0x41e2b4
    //     0x41e29c: ldurb        r16, [r2, #-1]
    //     0x41e2a0: ldurb        r17, [r0, #-1]
    //     0x41e2a4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x41e2a8: tst          BARRIER, HEAP, lsr #32
    // 0x41e2ac: b.eq 0x41e2b4
    //     0x41e2ac: b.eq         0x41e2b4
    // 0x41e2b0: r0 = call 0x61e06c
    //     0x41e2b0: bl           0x61e06c
    //     0x41e2b4: ldur         r0, [fp, #-8]
    // 0x41e2b8: LoadField: r1 = r0->field_13
    //     0x41e2b8: ldur         r1, [r0, #0x13]
    //     0x41e2bc: add          r1, r1, HEAP, lsl #32
    //     0x41e2c0: sbfx         r0, r1, #1, #0x1f
    // 0x41e2c4: branchIfSmi(r1, 0x41e2cc)
    //     0x41e2c4: tbz          r1, #0, 0x41e2cc
    // 0x41e2c8: LoadField: r0 = r1->field_7
    //     0x41e2c8: ldur         r0, [r1, #7]
    //     0x41e2cc: stur         r0, [fp, #-0x18]
    // 0x41e2d0: r1 = pp[0x295]
    //     0x41e2d0: add          r1, PP, #0x15, lsl #12
    //     0x41e2d4: ldr          r1, [r1, #0x280]
    // 0x41e2d8: r0 = call 0x61ec54
    //     0x41e2d8: bl           0x61ec54
    // 0x41e2dc: r1 = pp[0x29d]
    //     0x41e2dc: add          r1, PP, #0x15, lsl #12
    //     0x41e2e0: ldr          r1, [r1, #0x288]
    // 0x41e2e4: r2 = NULL
    //     0x41e2e4: mov          r2, NULL
    //     0x41e2e8: stur         r0, [fp, #-8]
    // 0x41e2ec: r0 = call 0x61ec54
    //     0x41e2ec: bl           0x61ec54
    //     0x41e2f0: ldur         r1, [fp, #-0x20]
    //     0x41e2f4: ldur         r2, [fp, #-0x18]
    //     0x41e2f8: ldur         r3, [fp, #-8]
    // 0x41e2fc: r5 = r0
    //     0x41e2fc: mov          r5, r0
    // 0x41e300: r0 = soul_flutter_international$api$game_api_service_GameApiService::betFruit()
    //     0x41e300: bl           0x41e31c
    // 0x41e304: r0 = NULL
    //     0x41e304: mov          r0, NULL
    // 0x41e308: SP = fp
    //     0x41e308: mov          SP, fp
    // 0x41e30c: LeaveFrame
    //     0x41e30c: ldp          fp, lr, [SP], #0x10
    // 0x41e310: ret
    //     0x41e310: ret          
    // 0x41e314: r0 = call 0x61fa28
    //     0x41e314: bl           0x61fa28
    // 0x41e318: b 0x41e24c
    //     0x41e318: b            0x41e24c
  }

  _getLotteryIndex() {
    // ** addr: 0x41e6dc, size: 0x54
    //     0x41e6dc: tbnz         r2, #0x3f, 0x41e6e8
    //     0x41e6e0: cmp          r2, #9
    // 0x41e6e4: b.lt 0x41e6f0
    //     0x41e6e4: b.lt         0x41e6f0
    //     0x41e6e8: mov          r0, #-1
    // 0x41e6ec: ret
    //     0x41e6ec: ret          
    // 0x41e6f0: r3 = pp[0x225]
    //     0x41e6f0: add          r3, PP, #0x15, lsl #12
    //     0x41e6f4: ldr          r3, [r3, #0x210]
    // 0x41e6f8: r1 = r2
    //     0x41e6f8: mov          r1, r2
    //     0x41e6fc: mov          r0, #9
    //     0x41e700: cmp          r1, r0
    // 0x41e704: b.hs 0x41e724
    //     0x41e704: b.hs         0x41e724
    //     0x41e708: add          BARRIER, r3, r2, lsl #2
    // 0x41e70c: LoadField: r1 = BARRIER->field_f
    //     0x41e70c: ldur         r1, [BARRIER, #0xf]
    //     0x41e710: add          r1, r1, HEAP, lsl #32
    //     0x41e714: sbfx         r0, r1, #1, #0x1f
    // 0x41e718: branchIfSmi(r1, 0x41e720)
    //     0x41e718: tbz          r1, #0, 0x41e720
    // 0x41e71c: LoadField: r0 = r1->field_7
    //     0x41e71c: ldur         r0, [r1, #7]
    // 0x41e720: ret
    //     0x41e720: ret          
    // 0x41e724: EnterFrame
    //     0x41e724: stp          fp, lr, [SP, #-0x10]!
    //     0x41e728: mov          fp, SP
    // 0x41e72c: r0 = call 0x61fe70
    //     0x41e72c: bl           0x61fe70
  }

  _anon_closure() {
    // ** addr: 0x41e730, size: 0x64
    // 0x41e730: EnterFrame
    //     0x41e730: stp          fp, lr, [SP, #-0x10]!
    //     0x41e734: mov          fp, SP
    // 0x41e738: AllocStack(0x10)
    //     0x41e738: sub          SP, SP, #0x10
    // 0x41e73c: CheckStackOverflow
    //     0x41e73c: ldr          BARRIER, [THR, #0x38]
    //     0x41e740: cmp          SP, BARRIER
    //     0x41e744: b.ls         0x41e78c
    //     0x41e748: ldr          r0, [fp, #0x10]
    //     0x41e74c: mov          r1, #0x3c
    // 0x41e750: branchIfSmi(r0, 0x41e75c)
    //     0x41e750: tbz          r0, #0, 0x41e75c
    // 0x41e754: r1 = LoadClassIdInstr(r0)
    //     0x41e754: ldur         r1, [r0, #-1]
    //     0x41e758: ubfx         r1, r1, #0xc, #0x14
    //     0x41e75c: mov          BARRIER, #0x55f2
    //     0x41e760: stp          BARRIER, r0, [SP]
    // 0x41e764: r0 = r1
    //     0x41e764: mov          r0, r1
    // 0x41e768: lr = r0
    //     0x41e768: mov          lr, r0
    //     0x41e76c: ldr          lr, [r21, lr, lsl #3]
    // 0x41e770: r0 = [R]()
    //     0x41e770: blr          lr
    //     0x41e774: tbnz         r0, #4, 0x41e77c
    // 0x41e778: r0 = soul_flutter_international$common$plugins$native_dialog_NativeDialog::toCoinDialog()
    //     0x41e778: bl           0x41c9dc
    // 0x41e77c: r0 = NULL
    //     0x41e77c: mov          r0, NULL
    // 0x41e780: SP = fp
    //     0x41e780: mov          SP, fp
    // 0x41e784: LeaveFrame
    //     0x41e784: ldp          fp, lr, [SP], #0x10
    // 0x41e788: ret
    //     0x41e788: ret          
    // 0x41e78c: r0 = call 0x61fa28
    //     0x41e78c: bl           0x61fa28
    // 0x41e790: b 0x41e748
    //     0x41e790: b            0x41e748
  }

  _anon_closure() {
    // ** addr: 0x41e794, size: 0x120
    // 0x41e794: EnterFrame
    //     0x41e794: stp          fp, lr, [SP, #-0x10]!
    //     0x41e798: mov          fp, SP
    // 0x41e79c: AllocStack(0x28)
    //     0x41e79c: sub          SP, SP, #0x28
    //     0x41e7a0: ldr          r0, [fp, #0x10]
    // 0x41e7a4: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x41e7a4: ldur         r2, [r0, #0x17]
    //     0x41e7a8: add          r2, r2, HEAP, lsl #32
    // 0x41e7ac: CheckStackOverflow
    //     0x41e7ac: ldr          BARRIER, [THR, #0x38]
    //     0x41e7b0: cmp          SP, BARRIER
    //     0x41e7b4: b.ls         0x41e8ac
    // 0x41e7b8: LoadField: r0 = r2->field_b
    //     0x41e7b8: ldur         r0, [r2, #0xb]
    //     0x41e7bc: add          r0, r0, HEAP, lsl #32
    //     0x41e7c0: stur         r0, [fp, #-0x10]
    // 0x41e7c4: LoadField: r1 = r0->field_f
    //     0x41e7c4: ldur         r1, [r0, #0xf]
    //     0x41e7c8: add          r1, r1, HEAP, lsl #32
    // 0x41e7cc: LoadField: r3 = r1->field_2f
    //     0x41e7cc: ldur         r3, [r1, #0x2f]
    //     0x41e7d0: add          r3, r3, HEAP, lsl #32
    //     0x41e7d4: tbnz         r3, #4, 0x41e7e8
    // 0x41e7d8: r0 = NULL
    //     0x41e7d8: mov          r0, NULL
    // 0x41e7dc: SP = fp
    //     0x41e7dc: mov          SP, fp
    // 0x41e7e0: LeaveFrame
    //     0x41e7e0: ldp          fp, lr, [SP], #0x10
    // 0x41e7e4: ret
    //     0x41e7e4: ret          
    // 0x41e7e8: LoadField: r3 = r1->field_37
    //     0x41e7e8: ldur         r3, [r1, #0x37]
    //     0x41e7ec: add          r3, r3, HEAP, lsl #32
    //     0x41e7f0: stur         r3, [fp, #-8]
    // 0x41e7f4: r1 = pp[0x2a5]
    //     0x41e7f4: add          r1, PP, #0x15, lsl #12
    //     0x41e7f8: ldr          r1, [r1, #0x290]
    // 0x41e7fc: r0 = call 0x61ec54
    //     0x41e7fc: bl           0x61ec54
    // 0x41e800: BARRIER = pp[0x863]
    //     0x41e800: add          BARRIER, PP, #0xb, lsl #12
    //     0x41e804: ldr          BARRIER, [BARRIER, #0x858]
    //     0x41e808: ldur         lr, [fp, #-8]
    //     0x41e80c: stp          lr, BARRIER, [SP, #8]
    //     0x41e810: str          r0, [SP]
    // 0x41e814: r4 = pp[0x58]
    //     0x41e814: ldr          r4, [PP, #0x58]
    // 0x41e818: r0 = collection$src$iterable_extensions_::IterableExtension|firstWhereOrNull()
    //     0x41e818: bl           0x41eaac
    // 0x41e81c: r1 = r0
    //     0x41e81c: mov          r1, r0
    //     0x41e820: cmp          r1, r22
    // 0x41e824: b.ne 0x41e830
    //     0x41e824: b.ne         0x41e830
    //     0x41e828: ldur         r2, [fp, #-0x10]
    // 0x41e82c: b 0x41e85c
    //     0x41e82c: b            0x41e85c
    //     0x41e830: ldur         r2, [fp, #-0x10]
    // 0x41e834: LoadField: r0 = r2->field_13
    //     0x41e834: ldur         r0, [r2, #0x13]
    //     0x41e838: add          r0, r0, HEAP, lsl #32
    // 0x41e83c: StoreField: r1->field_b = r0
    //     0x41e83c: stur         r0, [r1, #0xb]
    // 0x41e840: branchIfSmi(r0, 0x41e85c)
    //     0x41e840: tbz          r0, #0, 0x41e85c
    //     0x41e844: ldurb        r16, [r1, #-1]
    //     0x41e848: ldurb        r17, [r0, #-1]
    //     0x41e84c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x41e850: tst          BARRIER, HEAP, lsr #32
    // 0x41e854: b.eq 0x41e85c
    //     0x41e854: b.eq         0x41e85c
    // 0x41e858: r0 = call 0x61e04c
    //     0x41e858: bl           0x61e04c
    // 0x41e85c: LoadField: r1 = r2->field_f
    //     0x41e85c: ldur         r1, [r2, #0xf]
    //     0x41e860: add          r1, r1, HEAP, lsl #32
    // 0x41e864: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x41e864: bl           0x3ac980
    //     0x41e868: ldur         r0, [fp, #-0x10]
    // 0x41e86c: LoadField: r1 = r0->field_f
    //     0x41e86c: ldur         r1, [r0, #0xf]
    //     0x41e870: add          r1, r1, HEAP, lsl #32
    // 0x41e874: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::requestTotalCoins()
    //     0x41e874: bl           0x41e8b4
    // 0x41e878: r1 = pp[0x79c]
    //     0x41e878: add          r1, PP, #0xc, lsl #12
    //     0x41e87c: ldr          r1, [r1, #0x790]
    // 0x41e880: r4 = pp[0x4c0]
    //     0x41e880: ldr          r4, [PP, #0x4c0]
    // 0x41e884: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x41e884: bl           0x3a1dcc
    //     0x41e888: add          BARRIER, NULL, #0x20
    //     0x41e88c: str          BARRIER, [SP]
    // 0x41e890: r1 = r0
    //     0x41e890: mov          r1, r0
    // 0x41e894: r4 = pp[0x4d0]
    //     0x41e894: ldr          r4, [PP, #0x4d0]
    // 0x41e898: r0 = soul_flutter_international$common$plugins$native_dialog_NativeDialog::toast()
    //     0x41e898: bl           0x3ac64c
    // 0x41e89c: r0 = NULL
    //     0x41e89c: mov          r0, NULL
    // 0x41e8a0: SP = fp
    //     0x41e8a0: mov          SP, fp
    // 0x41e8a4: LeaveFrame
    //     0x41e8a4: ldp          fp, lr, [SP], #0x10
    // 0x41e8a8: ret
    //     0x41e8a8: ret          
    // 0x41e8ac: r0 = call 0x61fa28
    //     0x41e8ac: bl           0x61fa28
    // 0x41e8b0: b 0x41e7b8
    //     0x41e8b0: b            0x41e7b8
  }

  _anon_closure() {
    // ** addr: 0x41ebec, size: 0x70
    //     0x41ebec: ldr          r1, [SP, #8]
    // 0x41ebf0: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x41ebf0: ldur         r2, [r1, #0x17]
    //     0x41ebf4: add          r2, r2, HEAP, lsl #32
    //     0x41ebf8: ldr          r1, [SP]
    // 0x41ebfc: LoadField: r3 = r1->field_7
    //     0x41ebfc: ldur         r3, [r1, #7]
    //     0x41ec00: add          r3, r3, HEAP, lsl #32
    // 0x41ec04: LoadField: r1 = r2->field_f
    //     0x41ec04: ldur         r1, [r2, #0xf]
    //     0x41ec08: add          r1, r1, HEAP, lsl #32
    //     0x41ec0c: cmp          r3, r1
    // 0x41ec10: b.eq 0x41ec54
    //     0x41ec10: b.eq         0x41ec54
    //     0x41ec14: and          r16, r3, r1
    // 0x41ec18: branchIfSmi(r16, 0x41ec4c)
    //     0x41ec18: tbz          r16, #0, 0x41ec4c
    // 0x41ec1c: BARRIER = LoadClassIdInstr(r3)
    //     0x41ec1c: ldur         BARRIER, [r3, #-1]
    //     0x41ec20: ubfx         BARRIER, BARRIER, #0xc, #0x14
    //     0x41ec24: cmp          BARRIER, #0x3d
    // 0x41ec28: b.ne 0x41ec4c
    //     0x41ec28: b.ne         0x41ec4c
    // 0x41ec2c: BARRIER = LoadClassIdInstr(r1)
    //     0x41ec2c: ldur         BARRIER, [r1, #-1]
    //     0x41ec30: ubfx         BARRIER, BARRIER, #0xc, #0x14
    //     0x41ec34: cmp          BARRIER, #0x3d
    // 0x41ec38: b.ne 0x41ec4c
    //     0x41ec38: b.ne         0x41ec4c
    // 0x41ec3c: LoadField: BARRIER = r3->field_7
    //     0x41ec3c: ldur         BARRIER, [r3, #7]
    // 0x41ec40: LoadField: r17 = r1->field_7
    //     0x41ec40: ldur         r17, [r1, #7]
    //     0x41ec44: cmp          BARRIER, r17
    // 0x41ec48: b.eq 0x41ec54
    //     0x41ec48: b.eq         0x41ec54
    //     0x41ec4c: add          r0, NULL, #0x30
    // 0x41ec50: b 0x41ec58
    //     0x41ec50: b            0x41ec58
    //     0x41ec54: add          r0, NULL, #0x20
    // 0x41ec58: ret
    //     0x41ec58: ret          
  }

  getItemBetCoin() {
    // ** addr: 0x41f974, size: 0x9c
    // 0x41f974: EnterFrame
    //     0x41f974: stp          fp, lr, [SP, #-0x10]!
    //     0x41f978: mov          fp, SP
    // 0x41f97c: AllocStack(0x30)
    //     0x41f97c: sub          SP, SP, #0x30
    //     0x41f980: stur         r1, [fp, #-8]
    //     0x41f984: stur         r2, [fp, #-0x10]
    // 0x41f988: CheckStackOverflow
    //     0x41f988: ldr          BARRIER, [THR, #0x38]
    //     0x41f98c: cmp          SP, BARRIER
    //     0x41f990: b.ls         0x41fa08
    //     0x41f994: mov          r1, #2
    // 0x41f998: r0 = call 0x61e890
    //     0x41f998: bl           0x61e890
    // 0x41f99c: r3 = r0
    //     0x41f99c: mov          r3, r0
    //     0x41f9a0: ldur         r2, [fp, #-8]
    // 0x41f9a4: StoreField: r3->field_f = r2
    //     0x41f9a4: stur         r2, [r3, #0xf]
    //     0x41f9a8: ldur         r4, [fp, #-0x10]
    //     0x41f9ac: sbfiz        r0, r4, #1, #0x1f
    //     0x41f9b0: cmp          r4, r0, asr #1
    // 0x41f9b4: b.eq 0x41f9c0
    //     0x41f9b4: b.eq         0x41f9c0
    // 0x41f9b8: r0 = call 0x61fba8
    //     0x41f9b8: bl           0x61fba8
    // 0x41f9bc: StoreField: r0->field_7 = r4
    //     0x41f9bc: stur         r4, [r0, #7]
    // 0x41f9c0: StoreField: r3->field_13 = r0
    //     0x41f9c0: stur         r0, [r3, #0x13]
    // 0x41f9c4: LoadField: r0 = r2->field_37
    //     0x41f9c4: ldur         r0, [r2, #0x37]
    //     0x41f9c8: add          r0, r0, HEAP, lsl #32
    // 0x41f9cc: r2 = r3
    //     0x41f9cc: mov          r2, r3
    //     0x41f9d0: stur         r0, [fp, #-0x18]
    // 0x41f9d4: r1 = pp[0x21d]
    //     0x41f9d4: add          r1, PP, #0x15, lsl #12
    //     0x41f9d8: ldr          r1, [r1, #0x208]
    // 0x41f9dc: r0 = call 0x61ec54
    //     0x41f9dc: bl           0x61ec54
    // 0x41f9e0: BARRIER = pp[0x863]
    //     0x41f9e0: add          BARRIER, PP, #0xb, lsl #12
    //     0x41f9e4: ldr          BARRIER, [BARRIER, #0x858]
    //     0x41f9e8: ldur         lr, [fp, #-0x18]
    //     0x41f9ec: stp          lr, BARRIER, [SP, #8]
    //     0x41f9f0: str          r0, [SP]
    // 0x41f9f4: r4 = pp[0x58]
    //     0x41f9f4: ldr          r4, [PP, #0x58]
    // 0x41f9f8: r0 = collection$src$iterable_extensions_::IterableExtension|firstWhereOrNull()
    //     0x41f9f8: bl           0x41eaac
    // 0x41f9fc: SP = fp
    //     0x41f9fc: mov          SP, fp
    // 0x41fa00: LeaveFrame
    //     0x41fa00: ldp          fp, lr, [SP], #0x10
    // 0x41fa04: ret
    //     0x41fa04: ret          
    // 0x41fa08: r0 = call 0x61fa28
    //     0x41fa08: bl           0x61fa28
    // 0x41fa0c: b 0x41f994
    //     0x41fa0c: b            0x41f994
  }

  _anon_closure() {
    // ** addr: 0x41fa10, size: 0xdc
    // 0x41fa10: EnterFrame
    //     0x41fa10: stp          fp, lr, [SP, #-0x10]!
    //     0x41fa14: mov          fp, SP
    // 0x41fa18: AllocStack(8)
    //     0x41fa18: sub          SP, SP, #8
    //     0x41fa1c: ldr          r0, [fp, #0x18]
    // 0x41fa20: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x41fa20: ldur         r1, [r0, #0x17]
    //     0x41fa24: add          r1, r1, HEAP, lsl #32
    // 0x41fa28: CheckStackOverflow
    //     0x41fa28: ldr          BARRIER, [THR, #0x38]
    //     0x41fa2c: cmp          SP, BARRIER
    //     0x41fa30: b.ls         0x41fae4
    //     0x41fa34: ldr          r0, [fp, #0x10]
    // 0x41fa38: LoadField: r3 = r0->field_7
    //     0x41fa38: ldur         r3, [r0, #7]
    //     0x41fa3c: add          r3, r3, HEAP, lsl #32
    //     0x41fa40: stur         r3, [fp, #-8]
    // 0x41fa44: LoadField: r0 = r1->field_f
    //     0x41fa44: ldur         r0, [r1, #0xf]
    //     0x41fa48: add          r0, r0, HEAP, lsl #32
    // 0x41fa4c: LoadField: r2 = r1->field_13
    //     0x41fa4c: ldur         r2, [r1, #0x13]
    //     0x41fa50: add          r2, r2, HEAP, lsl #32
    //     0x41fa54: sbfx         r1, r2, #1, #0x1f
    // 0x41fa58: branchIfSmi(r2, 0x41fa60)
    //     0x41fa58: tbz          r2, #0, 0x41fa60
    // 0x41fa5c: LoadField: r1 = r2->field_7
    //     0x41fa5c: ldur         r1, [r2, #7]
    // 0x41fa60: r2 = r1
    //     0x41fa60: mov          r2, r1
    // 0x41fa64: r1 = r0
    //     0x41fa64: mov          r1, r0
    // 0x41fa68: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_getLotteryIndex()
    //     0x41fa68: bl           0x41e6dc
    // 0x41fa6c: r2 = r0
    //     0x41fa6c: mov          r2, r0
    //     0x41fa70: sbfiz        r0, r2, #1, #0x1f
    //     0x41fa74: cmp          r2, r0, asr #1
    // 0x41fa78: b.eq 0x41fa84
    //     0x41fa78: b.eq         0x41fa84
    // 0x41fa7c: r0 = call 0x61fba8
    //     0x41fa7c: bl           0x61fba8
    // 0x41fa80: StoreField: r0->field_7 = r2
    //     0x41fa80: stur         r2, [r0, #7]
    //     0x41fa84: ldur         r1, [fp, #-8]
    //     0x41fa88: cmp          r1, r0
    // 0x41fa8c: b.eq 0x41fad0
    //     0x41fa8c: b.eq         0x41fad0
    //     0x41fa90: and          r16, r1, r0
    // 0x41fa94: branchIfSmi(r16, 0x41fac8)
    //     0x41fa94: tbz          r16, #0, 0x41fac8
    // 0x41fa98: BARRIER = LoadClassIdInstr(r1)
    //     0x41fa98: ldur         BARRIER, [r1, #-1]
    //     0x41fa9c: ubfx         BARRIER, BARRIER, #0xc, #0x14
    //     0x41faa0: cmp          BARRIER, #0x3d
    // 0x41faa4: b.ne 0x41fac8
    //     0x41faa4: b.ne         0x41fac8
    // 0x41faa8: BARRIER = LoadClassIdInstr(r0)
    //     0x41faa8: ldur         BARRIER, [r0, #-1]
    //     0x41faac: ubfx         BARRIER, BARRIER, #0xc, #0x14
    //     0x41fab0: cmp          BARRIER, #0x3d
    // 0x41fab4: b.ne 0x41fac8
    //     0x41fab4: b.ne         0x41fac8
    // 0x41fab8: LoadField: BARRIER = r1->field_7
    //     0x41fab8: ldur         BARRIER, [r1, #7]
    // 0x41fabc: LoadField: r17 = r0->field_7
    //     0x41fabc: ldur         r17, [r0, #7]
    //     0x41fac0: cmp          BARRIER, r17
    // 0x41fac4: b.eq 0x41fad0
    //     0x41fac4: b.eq         0x41fad0
    //     0x41fac8: add          r2, NULL, #0x30
    // 0x41facc: b 0x41fad4
    //     0x41facc: b            0x41fad4
    //     0x41fad0: add          r2, NULL, #0x20
    // 0x41fad4: r0 = r2
    //     0x41fad4: mov          r0, r2
    // 0x41fad8: SP = fp
    //     0x41fad8: mov          SP, fp
    // 0x41fadc: LeaveFrame
    //     0x41fadc: ldp          fp, lr, [SP], #0x10
    // 0x41fae0: ret
    //     0x41fae0: ret          
    // 0x41fae4: r0 = call 0x61fa28
    //     0x41fae4: bl           0x61fa28
    // 0x41fae8: b 0x41fa34
    //     0x41fae8: b            0x41fa34
  }

  getCurrentBetItem() {
    // ** addr: 0x41faec, size: 0x9c
    // 0x41faec: EnterFrame
    //     0x41faec: stp          fp, lr, [SP, #-0x10]!
    //     0x41faf0: mov          fp, SP
    // 0x41faf4: AllocStack(0x30)
    //     0x41faf4: sub          SP, SP, #0x30
    //     0x41faf8: stur         r1, [fp, #-8]
    //     0x41fafc: stur         r2, [fp, #-0x10]
    // 0x41fb00: CheckStackOverflow
    //     0x41fb00: ldr          BARRIER, [THR, #0x38]
    //     0x41fb04: cmp          SP, BARRIER
    //     0x41fb08: b.ls         0x41fb80
    //     0x41fb0c: mov          r1, #2
    // 0x41fb10: r0 = call 0x61e890
    //     0x41fb10: bl           0x61e890
    // 0x41fb14: r3 = r0
    //     0x41fb14: mov          r3, r0
    //     0x41fb18: ldur         r2, [fp, #-8]
    // 0x41fb1c: StoreField: r3->field_f = r2
    //     0x41fb1c: stur         r2, [r3, #0xf]
    //     0x41fb20: ldur         r4, [fp, #-0x10]
    //     0x41fb24: sbfiz        r0, r4, #1, #0x1f
    //     0x41fb28: cmp          r4, r0, asr #1
    // 0x41fb2c: b.eq 0x41fb38
    //     0x41fb2c: b.eq         0x41fb38
    // 0x41fb30: r0 = call 0x61fba8
    //     0x41fb30: bl           0x61fba8
    // 0x41fb34: StoreField: r0->field_7 = r4
    //     0x41fb34: stur         r4, [r0, #7]
    // 0x41fb38: StoreField: r3->field_13 = r0
    //     0x41fb38: stur         r0, [r3, #0x13]
    // 0x41fb3c: LoadField: r0 = r2->field_33
    //     0x41fb3c: ldur         r0, [r2, #0x33]
    //     0x41fb40: add          r0, r0, HEAP, lsl #32
    // 0x41fb44: r2 = r3
    //     0x41fb44: mov          r2, r3
    //     0x41fb48: stur         r0, [fp, #-0x18]
    // 0x41fb4c: r1 = pp[0x22d]
    //     0x41fb4c: add          r1, PP, #0x15, lsl #12
    //     0x41fb50: ldr          r1, [r1, #0x218]
    // 0x41fb54: r0 = call 0x61ec54
    //     0x41fb54: bl           0x61ec54
    // 0x41fb58: BARRIER = pp[0x85b]
    //     0x41fb58: add          BARRIER, PP, #0xb, lsl #12
    //     0x41fb5c: ldr          BARRIER, [BARRIER, #0x850]
    //     0x41fb60: ldur         lr, [fp, #-0x18]
    //     0x41fb64: stp          lr, BARRIER, [SP, #8]
    //     0x41fb68: str          r0, [SP]
    // 0x41fb6c: r4 = pp[0x58]
    //     0x41fb6c: ldr          r4, [PP, #0x58]
    // 0x41fb70: r0 = collection$src$iterable_extensions_::IterableExtension|firstWhereOrNull()
    //     0x41fb70: bl           0x41eaac
    // 0x41fb74: SP = fp
    //     0x41fb74: mov          SP, fp
    // 0x41fb78: LeaveFrame
    //     0x41fb78: ldp          fp, lr, [SP], #0x10
    // 0x41fb7c: ret
    //     0x41fb7c: ret          
    // 0x41fb80: r0 = call 0x61fa28
    //     0x41fb80: bl           0x61fa28
    // 0x41fb84: b 0x41fb0c
    //     0x41fb84: b            0x41fb0c
  }

  _anon_closure() {
    // ** addr: 0x41fb88, size: 0xac
    // 0x41fb88: EnterFrame
    //     0x41fb88: stp          fp, lr, [SP, #-0x10]!
    //     0x41fb8c: mov          fp, SP
    // 0x41fb90: AllocStack(8)
    //     0x41fb90: sub          SP, SP, #8
    //     0x41fb94: ldr          r0, [fp, #0x18]
    // 0x41fb98: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x41fb98: ldur         r1, [r0, #0x17]
    //     0x41fb9c: add          r1, r1, HEAP, lsl #32
    // 0x41fba0: CheckStackOverflow
    //     0x41fba0: ldr          BARRIER, [THR, #0x38]
    //     0x41fba4: cmp          SP, BARRIER
    //     0x41fba8: b.ls         0x41fc20
    //     0x41fbac: ldr          r0, [fp, #0x10]
    // 0x41fbb0: LoadField: r3 = r0->field_b
    //     0x41fbb0: ldur         r3, [r0, #0xb]
    //     0x41fbb4: add          r3, r3, HEAP, lsl #32
    // 0x41fbb8: BARRIER = pp[0x40]
    //     0x41fbb8: ldr          BARRIER, [PP, #0x40]
    //     0x41fbbc: cmp          r3, r16
    // 0x41fbc0: b.eq 0x41fc28
    //     0x41fbc0: b.eq         0x41fc28
    //     0x41fbc4: stur         r3, [fp, #-8]
    // 0x41fbc8: LoadField: r0 = r1->field_f
    //     0x41fbc8: ldur         r0, [r1, #0xf]
    //     0x41fbcc: add          r0, r0, HEAP, lsl #32
    // 0x41fbd0: LoadField: r2 = r1->field_13
    //     0x41fbd0: ldur         r2, [r1, #0x13]
    //     0x41fbd4: add          r2, r2, HEAP, lsl #32
    //     0x41fbd8: sbfx         r1, r2, #1, #0x1f
    // 0x41fbdc: branchIfSmi(r2, 0x41fbe4)
    //     0x41fbdc: tbz          r2, #0, 0x41fbe4
    // 0x41fbe0: LoadField: r1 = r2->field_7
    //     0x41fbe0: ldur         r1, [r2, #7]
    // 0x41fbe4: r2 = r1
    //     0x41fbe4: mov          r2, r1
    // 0x41fbe8: r1 = r0
    //     0x41fbe8: mov          r1, r0
    // 0x41fbec: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_getLotteryIndex()
    //     0x41fbec: bl           0x41e6dc
    //     0x41fbf0: ldur         r1, [fp, #-8]
    //     0x41fbf4: sbfx         r2, r1, #1, #0x1f
    // 0x41fbf8: branchIfSmi(r1, 0x41fc00)
    //     0x41fbf8: tbz          r1, #0, 0x41fc00
    // 0x41fbfc: LoadField: r2 = r1->field_7
    //     0x41fbfc: ldur         r2, [r1, #7]
    //     0x41fc00: cmp          r2, r0
    //     0x41fc04: add          BARRIER, NULL, #0x20
    //     0x41fc08: add          r17, NULL, #0x30
    //     0x41fc0c: csel         r1, BARRIER, r17, eq
    // 0x41fc10: r0 = r1
    //     0x41fc10: mov          r0, r1
    // 0x41fc14: SP = fp
    //     0x41fc14: mov          SP, fp
    // 0x41fc18: LeaveFrame
    //     0x41fc18: ldp          fp, lr, [SP], #0x10
    // 0x41fc1c: ret
    //     0x41fc1c: ret          
    // 0x41fc20: r0 = call 0x61fa28
    //     0x41fc20: bl           0x61fa28
    // 0x41fc24: b 0x41fbac
    //     0x41fc24: b            0x41fbac
    // 0x41fc28: r9 = pp[0x235]
    //     0x41fc28: add          r9, PP, #0x15, lsl #12
    //     0x41fc2c: ldr          r9, [r9, #0x220]
    // 0x41fc30: r0 = call 0x620258
    //     0x41fc30: bl           0x620258
  }

  updateSelectedIndex() {
    // ** addr: 0x41fcb0, size: 0x5c
    // 0x41fcb0: EnterFrame
    //     0x41fcb0: stp          fp, lr, [SP, #-0x10]!
    //     0x41fcb4: mov          fp, SP
    // 0x41fcb8: CheckStackOverflow
    //     0x41fcb8: ldr          BARRIER, [THR, #0x38]
    //     0x41fcbc: cmp          SP, BARRIER
    //     0x41fcc0: b.ls         0x41fd04
    // 0x41fcc4: LoadField: r0 = r1->field_53
    //     0x41fcc4: ldur         r0, [r1, #0x53]
    //     0x41fcc8: add          r0, r0, HEAP, lsl #32
    // 0x41fccc: BARRIER = pp[0x215]
    //     0x41fccc: add          BARRIER, PP, #0x15, lsl #12
    //     0x41fcd0: ldr          BARRIER, [BARRIER, #0x200]
    //     0x41fcd4: cmp          r0, r16
    // 0x41fcd8: b.eq 0x41fcec
    //     0x41fcd8: b.eq         0x41fcec
    // 0x41fcdc: r0 = NULL
    //     0x41fcdc: mov          r0, NULL
    // 0x41fce0: SP = fp
    //     0x41fce0: mov          SP, fp
    // 0x41fce4: LeaveFrame
    //     0x41fce4: ldp          fp, lr, [SP], #0x10
    // 0x41fce8: ret
    //     0x41fce8: ret          
    // 0x41fcec: StoreField: r1->field_43 = r2
    //     0x41fcec: stur         r2, [r1, #0x43]
    // 0x41fcf0: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x41fcf0: bl           0x3ac980
    // 0x41fcf4: r0 = NULL
    //     0x41fcf4: mov          r0, NULL
    // 0x41fcf8: SP = fp
    //     0x41fcf8: mov          SP, fp
    // 0x41fcfc: LeaveFrame
    //     0x41fcfc: ldp          fp, lr, [SP], #0x10
    // 0x41fd00: ret
    //     0x41fd00: ret          
    // 0x41fd04: r0 = call 0x61fa28
    //     0x41fd04: bl           0x61fa28
    // 0x41fd08: b 0x41fcc4
    //     0x41fd08: b            0x41fcc4
  }

  ctor() {
    // ** addr: 0x4c2d7c, size: 0x218
    // 0x4c2d7c: EnterFrame
    //     0x4c2d7c: stp          fp, lr, [SP, #-0x10]!
    //     0x4c2d80: mov          fp, SP
    // 0x4c2d84: AllocStack(0x20)
    //     0x4c2d84: sub          SP, SP, #0x20
    //     0x4c2d88: add          r3, NULL, #0x30
    // 0x4c2d8c: r2 = pp[0x84b]
    //     0x4c2d8c: add          r2, PP, #0xb, lsl #12
    //     0x4c2d90: ldr          r2, [r2, #0x840]
    // 0x4c2d94: r0 = pp[0x148]
    //     0x4c2d94: ldr          r0, [PP, #0x148]
    // 0x4c2d98: r4 = r1
    //     0x4c2d98: mov          r4, r1
    //     0x4c2d9c: stur         r1, [fp, #-8]
    // 0x4c2da0: CheckStackOverflow
    //     0x4c2da0: ldr          BARRIER, [THR, #0x38]
    //     0x4c2da4: cmp          SP, BARRIER
    //     0x4c2da8: b.ls         0x4c2f8c
    // 0x4c2dac: StoreField: r4->field_2f = r3
    //     0x4c2dac: stur         r3, [r4, #0x2f]
    // 0x4c2db0: StoreField: r4->field_43 = xzr
    //     0x4c2db0: stur         xzr, [r4, #0x43]
    // 0x4c2db4: StoreField: r4->field_4b = xzr
    //     0x4c2db4: stur         xzr, [r4, #0x4b]
    // 0x4c2db8: StoreField: r4->field_53 = r2
    //     0x4c2db8: stur         r2, [r4, #0x53]
    // 0x4c2dbc: StoreField: r4->field_5f = r0
    //     0x4c2dbc: stur         r0, [r4, #0x5f]
    // 0x4c2dc0: r1 = pp[0x5558]
    //     0x4c2dc0: ldr          r1, [PP, #0x5558]
    // 0x4c2dc4: r0 = call 0x303988
    //     0x4c2dc4: bl           0x303988
    // 0x4c2dc8: r1 = r0
    //     0x4c2dc8: mov          r1, r0
    // 0x4c2dcc: r0 = pp[0x853]
    //     0x4c2dcc: add          r0, PP, #0xb, lsl #12
    //     0x4c2dd0: ldr          r0, [r0, #0x848]
    // 0x4c2dd4: StoreField: r1->field_b = r0
    //     0x4c2dd4: stur         r0, [r1, #0xb]
    // 0x4c2dd8: r0 = r1
    //     0x4c2dd8: mov          r0, r1
    //     0x4c2ddc: ldur         r3, [fp, #-8]
    // 0x4c2de0: StoreField: r3->field_2b = r0
    //     0x4c2de0: stur         r0, [r3, #0x2b]
    //     0x4c2de4: ldurb        r16, [r3, #-1]
    //     0x4c2de8: ldurb        r17, [r0, #-1]
    //     0x4c2dec: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c2df0: tst          BARRIER, HEAP, lsr #32
    // 0x4c2df4: b.eq 0x4c2dfc
    //     0x4c2df4: b.eq         0x4c2dfc
    // 0x4c2df8: r0 = call 0x61e08c
    //     0x4c2df8: bl           0x61e08c
    // 0x4c2dfc: r1 = pp[0x85b]
    //     0x4c2dfc: add          r1, PP, #0xb, lsl #12
    //     0x4c2e00: ldr          r1, [r1, #0x850]
    //     0x4c2e04: mov          r2, #0
    // 0x4c2e08: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c2e08: bl           0x277268
    //     0x4c2e0c: ldur         r3, [fp, #-8]
    // 0x4c2e10: StoreField: r3->field_33 = r0
    //     0x4c2e10: stur         r0, [r3, #0x33]
    //     0x4c2e14: ldurb        r16, [r3, #-1]
    //     0x4c2e18: ldurb        r17, [r0, #-1]
    //     0x4c2e1c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c2e20: tst          BARRIER, HEAP, lsr #32
    // 0x4c2e24: b.eq 0x4c2e2c
    //     0x4c2e24: b.eq         0x4c2e2c
    // 0x4c2e28: r0 = call 0x61e08c
    //     0x4c2e28: bl           0x61e08c
    // 0x4c2e2c: r1 = pp[0x863]
    //     0x4c2e2c: add          r1, PP, #0xb, lsl #12
    //     0x4c2e30: ldr          r1, [r1, #0x858]
    //     0x4c2e34: mov          r2, #0
    // 0x4c2e38: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c2e38: bl           0x277268
    //     0x4c2e3c: ldur         r3, [fp, #-8]
    // 0x4c2e40: StoreField: r3->field_37 = r0
    //     0x4c2e40: stur         r0, [r3, #0x37]
    //     0x4c2e44: ldurb        r16, [r3, #-1]
    //     0x4c2e48: ldurb        r17, [r0, #-1]
    //     0x4c2e4c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c2e50: tst          BARRIER, HEAP, lsr #32
    // 0x4c2e54: b.eq 0x4c2e5c
    //     0x4c2e54: b.eq         0x4c2e5c
    // 0x4c2e58: r0 = call 0x61e08c
    //     0x4c2e58: bl           0x61e08c
    // 0x4c2e5c: r1 = pp[0x908]
    //     0x4c2e5c: ldr          r1, [PP, #0x908]
    //     0x4c2e60: mov          r2, #0
    // 0x4c2e64: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c2e64: bl           0x277268
    //     0x4c2e68: ldur         r3, [fp, #-8]
    // 0x4c2e6c: StoreField: r3->field_3b = r0
    //     0x4c2e6c: stur         r0, [r3, #0x3b]
    //     0x4c2e70: ldurb        r16, [r3, #-1]
    //     0x4c2e74: ldurb        r17, [r0, #-1]
    //     0x4c2e78: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c2e7c: tst          BARRIER, HEAP, lsr #32
    // 0x4c2e80: b.eq 0x4c2e88
    //     0x4c2e80: b.eq         0x4c2e88
    // 0x4c2e84: r0 = call 0x61e08c
    //     0x4c2e84: bl           0x61e08c
    // 0x4c2e88: r1 = pp[0x85b]
    //     0x4c2e88: add          r1, PP, #0xb, lsl #12
    //     0x4c2e8c: ldr          r1, [r1, #0x850]
    //     0x4c2e90: mov          r2, #0
    // 0x4c2e94: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c2e94: bl           0x277268
    //     0x4c2e98: ldur         r1, [fp, #-8]
    // 0x4c2e9c: StoreField: r1->field_3f = r0
    //     0x4c2e9c: stur         r0, [r1, #0x3f]
    //     0x4c2ea0: ldurb        r16, [r1, #-1]
    //     0x4c2ea4: ldurb        r17, [r0, #-1]
    //     0x4c2ea8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c2eac: tst          BARRIER, HEAP, lsr #32
    // 0x4c2eb0: b.eq 0x4c2eb8
    //     0x4c2eb0: b.eq         0x4c2eb8
    // 0x4c2eb4: r0 = call 0x61e04c
    //     0x4c2eb4: bl           0x61e04c
    // 0x4c2eb8: BARRIER = pp[0xbf0]
    //     0x4c2eb8: ldr          BARRIER, [PP, #0xbf0]
    //     0x4c2ebc: ldr          lr, [THR, #0x90]
    //     0x4c2ec0: stp          lr, BARRIER, [SP]
    // 0x4c2ec4: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x4c2ec4: bl           0x27c0c8
    //     0x4c2ec8: stur         r0, [fp, #-0x10]
    // 0x4c2ecc: r0 = call 0x4c3918
    //     0x4c2ecc: bl           0x4c3918
    // 0x4c2ed0: r1 = r0
    //     0x4c2ed0: mov          r1, r0
    //     0x4c2ed4: ldur         r2, [fp, #-0x10]
    //     0x4c2ed8: stur         r0, [fp, #-0x10]
    // 0x4c2edc: r0 = soul_flutter_international$model$game_fruit_model_GameFruitProcessResult::ctor_fromJson()
    //     0x4c2edc: bl           0x4c2fa0
    //     0x4c2ee0: ldur         r0, [fp, #-0x10]
    //     0x4c2ee4: ldur         r1, [fp, #-8]
    // 0x4c2ee8: StoreField: r1->field_57 = r0
    //     0x4c2ee8: stur         r0, [r1, #0x57]
    //     0x4c2eec: ldurb        r16, [r1, #-1]
    //     0x4c2ef0: ldurb        r17, [r0, #-1]
    //     0x4c2ef4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c2ef8: tst          BARRIER, HEAP, lsr #32
    // 0x4c2efc: b.eq 0x4c2f04
    //     0x4c2efc: b.eq         0x4c2f04
    // 0x4c2f00: r0 = call 0x61e04c
    //     0x4c2f00: bl           0x61e04c
    // 0x4c2f04: r0 = call 0x4c2f94
    //     0x4c2f04: bl           0x4c2f94
    //     0x4c2f08: mov          r1, #-1
    // 0x4c2f0c: StoreField: r0->field_7 = r1
    //     0x4c2f0c: stur         r1, [r0, #7]
    //     0x4c2f10: ldur         r2, [fp, #-8]
    // 0x4c2f14: StoreField: r2->field_5b = r0
    //     0x4c2f14: stur         r0, [r2, #0x5b]
    //     0x4c2f18: ldurb        r16, [r2, #-1]
    //     0x4c2f1c: ldurb        r17, [r0, #-1]
    //     0x4c2f20: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c2f24: tst          BARRIER, HEAP, lsr #32
    // 0x4c2f28: b.eq 0x4c2f30
    //     0x4c2f28: b.eq         0x4c2f30
    // 0x4c2f2c: r0 = call 0x61e06c
    //     0x4c2f2c: bl           0x61e06c
    // 0x4c2f30: StoreField: r2->field_23 = r1
    //     0x4c2f30: stur         r1, [r2, #0x23]
    // 0x4c2f34: StoreField: r2->field_7 = xzr
    //     0x4c2f34: stur         xzr, [r2, #7]
    // 0x4c2f38: StoreField: r2->field_13 = xzr
    //     0x4c2f38: stur         xzr, [r2, #0x13]
    // 0x4c2f3c: StoreField: r2->field_1b = xzr
    //     0x4c2f3c: stur         xzr, [r2, #0x1b]
    //     0x4c2f40: ldr          r0, [THR, #0x68]
    // 0x4c2f44: LoadField: r0 = r0->field_b90
    //     0x4c2f44: ldr          r0, [r0, #0xb90]
    // 0x4c2f48: BARRIER = pp[0x40]
    //     0x4c2f48: ldr          BARRIER, [PP, #0x40]
    //     0x4c2f4c: cmp          r0, r16
    // 0x4c2f50: b.ne 0x4c2f5c
    //     0x4c2f50: b.ne         0x4c2f5c
    // 0x4c2f54: r2 = pp[0x3608]
    //     0x4c2f54: ldr          r2, [PP, #0x3608]
    // 0x4c2f58: r0 = call 0x61d99c
    //     0x4c2f58: bl           0x61d99c
    //     0x4c2f5c: ldur         r1, [fp, #-8]
    // 0x4c2f60: StoreField: r1->field_f = r0
    //     0x4c2f60: stur         r0, [r1, #0xf]
    //     0x4c2f64: ldurb        r16, [r1, #-1]
    //     0x4c2f68: ldurb        r17, [r0, #-1]
    //     0x4c2f6c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c2f70: tst          BARRIER, HEAP, lsr #32
    // 0x4c2f74: b.eq 0x4c2f7c
    //     0x4c2f74: b.eq         0x4c2f7c
    // 0x4c2f78: r0 = call 0x61e04c
    //     0x4c2f78: bl           0x61e04c
    // 0x4c2f7c: r0 = NULL
    //     0x4c2f7c: mov          r0, NULL
    // 0x4c2f80: SP = fp
    //     0x4c2f80: mov          SP, fp
    // 0x4c2f84: LeaveFrame
    //     0x4c2f84: ldp          fp, lr, [SP], #0x10
    // 0x4c2f88: ret
    //     0x4c2f88: ret          
    // 0x4c2f8c: r0 = call 0x61fa28
    //     0x4c2f8c: bl           0x61fa28
    // 0x4c2f90: b 0x4c2dac
    //     0x4c2f90: b            0x4c2dac
  }

  getCurrentProcess() {
    // ** addr: 0x4d1c04, size: 0x114
    // 0x4d1c04: EnterFrame
    //     0x4d1c04: stp          fp, lr, [SP, #-0x10]!
    //     0x4d1c08: mov          fp, SP
    // 0x4d1c0c: AllocStack(0x28)
    //     0x4d1c0c: sub          SP, SP, #0x28
    //     0x4d1c10: stur         r1, [fp, #-8]
    // 0x4d1c14: CheckStackOverflow
    //     0x4d1c14: ldr          BARRIER, [THR, #0x38]
    //     0x4d1c18: cmp          SP, BARRIER
    //     0x4d1c1c: b.ls         0x4d1d10
    //     0x4d1c20: mov          r1, #1
    // 0x4d1c24: r0 = call 0x61e890
    //     0x4d1c24: bl           0x61e890
    //     0x4d1c28: ldur         r1, [fp, #-8]
    //     0x4d1c2c: stur         r0, [fp, #-0x10]
    // 0x4d1c30: StoreField: r0->field_f = r1
    //     0x4d1c30: stur         r1, [r0, #0xf]
    // 0x4d1c34: StoreField: r1->field_43 = xzr
    //     0x4d1c34: stur         xzr, [r1, #0x43]
    // 0x4d1c38: StoreField: r1->field_4b = xzr
    //     0x4d1c38: stur         xzr, [r1, #0x4b]
    // 0x4d1c3c: r2 = pp[0x84b]
    //     0x4d1c3c: add          r2, PP, #0xb, lsl #12
    //     0x4d1c40: ldr          r2, [r2, #0x840]
    // 0x4d1c44: StoreField: r1->field_53 = r2
    //     0x4d1c44: stur         r2, [r1, #0x53]
    // 0x4d1c48: BARRIER = pp[0xbf0]
    //     0x4d1c48: ldr          BARRIER, [PP, #0xbf0]
    //     0x4d1c4c: ldr          lr, [THR, #0x90]
    //     0x4d1c50: stp          lr, BARRIER, [SP]
    // 0x4d1c54: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x4d1c54: bl           0x27c0c8
    //     0x4d1c58: stur         r0, [fp, #-0x18]
    // 0x4d1c5c: r0 = call 0x4c3918
    //     0x4d1c5c: bl           0x4c3918
    // 0x4d1c60: r1 = r0
    //     0x4d1c60: mov          r1, r0
    //     0x4d1c64: ldur         r2, [fp, #-0x18]
    //     0x4d1c68: stur         r0, [fp, #-0x18]
    // 0x4d1c6c: r0 = soul_flutter_international$model$game_fruit_model_GameFruitProcessResult::ctor_fromJson()
    //     0x4d1c6c: bl           0x4c2fa0
    //     0x4d1c70: ldur         r0, [fp, #-0x18]
    //     0x4d1c74: ldur         r2, [fp, #-8]
    // 0x4d1c78: StoreField: r2->field_57 = r0
    //     0x4d1c78: stur         r0, [r2, #0x57]
    //     0x4d1c7c: ldurb        r16, [r2, #-1]
    //     0x4d1c80: ldurb        r17, [r0, #-1]
    //     0x4d1c84: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d1c88: tst          BARRIER, HEAP, lsr #32
    // 0x4d1c8c: b.eq 0x4d1c94
    //     0x4d1c8c: b.eq         0x4d1c94
    // 0x4d1c90: r0 = call 0x61e06c
    //     0x4d1c90: bl           0x61e06c
    // 0x4d1c94: LoadField: r1 = r2->field_63
    //     0x4d1c94: ldur         r1, [r2, #0x63]
    //     0x4d1c98: add          r1, r1, HEAP, lsl #32
    //     0x4d1c9c: cmp          r1, r22
    // 0x4d1ca0: b.ne 0x4d1cac
    //     0x4d1ca0: b.ne         0x4d1cac
    // 0x4d1ca4: r0 = r2
    //     0x4d1ca4: mov          r0, r2
    // 0x4d1ca8: b 0x4d1cb4
    //     0x4d1ca8: b            0x4d1cb4
    // 0x4d1cac: r0 = flutter$src$animation$animation_controller_AnimationController::reset()
    //     0x4d1cac: bl           0x4d23e4
    //     0x4d1cb0: ldur         r0, [fp, #-8]
    // 0x4d1cb4: StoreField: r0->field_67 = r22
    //     0x4d1cb4: stur         r22, [r0, #0x67]
    // 0x4d1cb8: r1 = r0
    //     0x4d1cb8: mov          r1, r0
    // 0x4d1cbc: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_resetUserBetList()
    //     0x4d1cbc: bl           0x4d2268
    //     0x4d1cc0: ldur         r2, [fp, #-0x10]
    // 0x4d1cc4: r1 = pp[0xc19]
    //     0x4d1cc4: add          r1, PP, #0x11, lsl #12
    //     0x4d1cc8: ldr          r1, [r1, #0xc08]
    // 0x4d1ccc: r0 = call 0x61ec54
    //     0x4d1ccc: bl           0x61ec54
    // 0x4d1cd0: r1 = r0
    //     0x4d1cd0: mov          r1, r0
    // 0x4d1cd4: r0 = soul_flutter_international$api$game_api_service_GameApiService::getFruitGameProcess()
    //     0x4d1cd4: bl           0x4d2184
    //     0x4d1cd8: ldur         r0, [fp, #-8]
    // 0x4d1cdc: LoadField: r1 = r0->field_3f
    //     0x4d1cdc: ldur         r1, [r0, #0x3f]
    //     0x4d1ce0: add          r1, r1, HEAP, lsl #32
    // 0x4d1ce4: r0 = dart_core__GrowableList::clear()
    //     0x4d1ce4: bl           0x2b3608
    //     0x4d1ce8: ldur         r2, [fp, #-0x10]
    // 0x4d1cec: r1 = pp[0xc21]
    //     0x4d1cec: add          r1, PP, #0x11, lsl #12
    //     0x4d1cf0: ldr          r1, [r1, #0xc10]
    // 0x4d1cf4: r0 = call 0x61ec54
    //     0x4d1cf4: bl           0x61ec54
    // 0x4d1cf8: r1 = r0
    //     0x4d1cf8: mov          r1, r0
    // 0x4d1cfc: r0 = soul_flutter_international$api$game_api_service_GameApiService::getRecentFruitResult()
    //     0x4d1cfc: bl           0x4d1d18
    // 0x4d1d00: r0 = NULL
    //     0x4d1d00: mov          r0, NULL
    // 0x4d1d04: SP = fp
    //     0x4d1d04: mov          SP, fp
    // 0x4d1d08: LeaveFrame
    //     0x4d1d08: ldp          fp, lr, [SP], #0x10
    // 0x4d1d0c: ret
    //     0x4d1d0c: ret          
    // 0x4d1d10: r0 = call 0x61fa28
    //     0x4d1d10: bl           0x61fa28
    // 0x4d1d14: b 0x4d1c20
    //     0x4d1d14: b            0x4d1c20
  }

  _resetUserBetList() {
    // ** addr: 0x4d2268, size: 0x17c
    // 0x4d2268: EnterFrame
    //     0x4d2268: stp          fp, lr, [SP, #-0x10]!
    //     0x4d226c: mov          fp, SP
    // 0x4d2270: AllocStack(0x50)
    //     0x4d2270: sub          SP, SP, #0x50
    // 0x4d2274: CheckStackOverflow
    //     0x4d2274: ldr          BARRIER, [THR, #0x38]
    //     0x4d2278: cmp          SP, BARRIER
    //     0x4d227c: b.ls         0x4d23dc
    // 0x4d2280: LoadField: r0 = r1->field_37
    //     0x4d2280: ldur         r0, [r1, #0x37]
    //     0x4d2284: add          r0, r0, HEAP, lsl #32
    // 0x4d2288: r1 = r0
    //     0x4d2288: mov          r1, r0
    //     0x4d228c: stur         r0, [fp, #-8]
    // 0x4d2290: r0 = dart_core__GrowableList::clear()
    //     0x4d2290: bl           0x2b3608
    // 0x4d2294: r0 = call 0x4c390c
    //     0x4d2294: bl           0x4c390c
    //     0x4d2298: stur         r0, [fp, #-0x10]
    // 0x4d229c: StoreField: r0->field_7 = wzr
    //     0x4d229c: stur         wzr, [r0, #7]
    // 0x4d22a0: StoreField: r0->field_b = wzr
    //     0x4d22a0: stur         wzr, [r0, #0xb]
    // 0x4d22a4: r0 = call 0x4c390c
    //     0x4d22a4: bl           0x4c390c
    // 0x4d22a8: r1 = r0
    //     0x4d22a8: mov          r1, r0
    //     0x4d22ac: mov          r0, #2
    //     0x4d22b0: stur         r1, [fp, #-0x18]
    // 0x4d22b4: StoreField: r1->field_7 = r0
    //     0x4d22b4: stur         r0, [r1, #7]
    // 0x4d22b8: StoreField: r1->field_b = wzr
    //     0x4d22b8: stur         wzr, [r1, #0xb]
    // 0x4d22bc: r0 = call 0x4c390c
    //     0x4d22bc: bl           0x4c390c
    // 0x4d22c0: r1 = r0
    //     0x4d22c0: mov          r1, r0
    //     0x4d22c4: mov          r0, #4
    //     0x4d22c8: stur         r1, [fp, #-0x20]
    // 0x4d22cc: StoreField: r1->field_7 = r0
    //     0x4d22cc: stur         r0, [r1, #7]
    // 0x4d22d0: StoreField: r1->field_b = wzr
    //     0x4d22d0: stur         wzr, [r1, #0xb]
    // 0x4d22d4: r0 = call 0x4c390c
    //     0x4d22d4: bl           0x4c390c
    // 0x4d22d8: r1 = r0
    //     0x4d22d8: mov          r1, r0
    //     0x4d22dc: mov          r0, #6
    //     0x4d22e0: stur         r1, [fp, #-0x28]
    // 0x4d22e4: StoreField: r1->field_7 = r0
    //     0x4d22e4: stur         r0, [r1, #7]
    // 0x4d22e8: StoreField: r1->field_b = wzr
    //     0x4d22e8: stur         wzr, [r1, #0xb]
    // 0x4d22ec: r0 = call 0x4c390c
    //     0x4d22ec: bl           0x4c390c
    // 0x4d22f0: r1 = r0
    //     0x4d22f0: mov          r1, r0
    //     0x4d22f4: mov          r0, #8
    //     0x4d22f8: stur         r1, [fp, #-0x30]
    // 0x4d22fc: StoreField: r1->field_7 = r0
    //     0x4d22fc: stur         r0, [r1, #7]
    // 0x4d2300: StoreField: r1->field_b = wzr
    //     0x4d2300: stur         wzr, [r1, #0xb]
    // 0x4d2304: r0 = call 0x4c390c
    //     0x4d2304: bl           0x4c390c
    // 0x4d2308: r1 = r0
    //     0x4d2308: mov          r1, r0
    //     0x4d230c: mov          r0, #0xa
    //     0x4d2310: stur         r1, [fp, #-0x38]
    // 0x4d2314: StoreField: r1->field_7 = r0
    //     0x4d2314: stur         r0, [r1, #7]
    // 0x4d2318: StoreField: r1->field_b = wzr
    //     0x4d2318: stur         wzr, [r1, #0xb]
    // 0x4d231c: r0 = call 0x4c390c
    //     0x4d231c: bl           0x4c390c
    // 0x4d2320: r1 = r0
    //     0x4d2320: mov          r1, r0
    //     0x4d2324: mov          r0, #0xc
    //     0x4d2328: stur         r1, [fp, #-0x40]
    // 0x4d232c: StoreField: r1->field_7 = r0
    //     0x4d232c: stur         r0, [r1, #7]
    // 0x4d2330: StoreField: r1->field_b = wzr
    //     0x4d2330: stur         wzr, [r1, #0xb]
    // 0x4d2334: r0 = call 0x4c390c
    //     0x4d2334: bl           0x4c390c
    // 0x4d2338: r3 = r0
    //     0x4d2338: mov          r3, r0
    //     0x4d233c: mov          r0, #0xe
    //     0x4d2340: stur         r3, [fp, #-0x48]
    // 0x4d2344: StoreField: r3->field_7 = r0
    //     0x4d2344: stur         r0, [r3, #7]
    // 0x4d2348: StoreField: r3->field_b = wzr
    //     0x4d2348: stur         wzr, [r3, #0xb]
    // 0x4d234c: r1 = NULL
    //     0x4d234c: mov          r1, NULL
    //     0x4d2350: mov          r2, #0x10
    // 0x4d2354: r0 = call 0x61f920
    //     0x4d2354: bl           0x61f920
    // 0x4d2358: r2 = r0
    //     0x4d2358: mov          r2, r0
    //     0x4d235c: ldur         r0, [fp, #-0x10]
    //     0x4d2360: stur         r2, [fp, #-0x50]
    // 0x4d2364: StoreField: r2->field_f = r0
    //     0x4d2364: stur         r0, [r2, #0xf]
    //     0x4d2368: ldur         r0, [fp, #-0x18]
    // 0x4d236c: StoreField: r2->field_13 = r0
    //     0x4d236c: stur         r0, [r2, #0x13]
    //     0x4d2370: ldur         r0, [fp, #-0x20]
    // 0x4d2374: ArrayStore: r2[0] = r0  ; List_8
    //     0x4d2374: stur         r0, [r2, #0x17]
    //     0x4d2378: ldur         r0, [fp, #-0x28]
    // 0x4d237c: StoreField: r2->field_1b = r0
    //     0x4d237c: stur         r0, [r2, #0x1b]
    //     0x4d2380: ldur         r0, [fp, #-0x30]
    // 0x4d2384: StoreField: r2->field_1f = r0
    //     0x4d2384: stur         r0, [r2, #0x1f]
    //     0x4d2388: ldur         r0, [fp, #-0x38]
    // 0x4d238c: StoreField: r2->field_23 = r0
    //     0x4d238c: stur         r0, [r2, #0x23]
    //     0x4d2390: ldur         r0, [fp, #-0x40]
    // 0x4d2394: StoreField: r2->field_27 = r0
    //     0x4d2394: stur         r0, [r2, #0x27]
    //     0x4d2398: ldur         r0, [fp, #-0x48]
    // 0x4d239c: StoreField: r2->field_2b = r0
    //     0x4d239c: stur         r0, [r2, #0x2b]
    // 0x4d23a0: r1 = pp[0x863]
    //     0x4d23a0: add          r1, PP, #0xb, lsl #12
    //     0x4d23a4: ldr          r1, [r1, #0x858]
    // 0x4d23a8: r0 = call 0x61e854
    //     0x4d23a8: bl           0x61e854
    // 0x4d23ac: r1 = r0
    //     0x4d23ac: mov          r1, r0
    //     0x4d23b0: ldur         r0, [fp, #-0x50]
    // 0x4d23b4: StoreField: r1->field_f = r0
    //     0x4d23b4: stur         r0, [r1, #0xf]
    //     0x4d23b8: mov          r0, #0x10
    // 0x4d23bc: StoreField: r1->field_b = r0
    //     0x4d23bc: stur         r0, [r1, #0xb]
    // 0x4d23c0: r2 = r1
    //     0x4d23c0: mov          r2, r1
    //     0x4d23c4: ldur         r1, [fp, #-8]
    // 0x4d23c8: r0 = dart_core__GrowableList::addAll()
    //     0x4d23c8: bl           0x2ce4e8
    // 0x4d23cc: r0 = NULL
    //     0x4d23cc: mov          r0, NULL
    // 0x4d23d0: SP = fp
    //     0x4d23d0: mov          SP, fp
    // 0x4d23d4: LeaveFrame
    //     0x4d23d4: ldp          fp, lr, [SP], #0x10
    // 0x4d23d8: ret
    //     0x4d23d8: ret          
    // 0x4d23dc: r0 = call 0x61fa28
    //     0x4d23dc: bl           0x61fa28
    // 0x4d23e0: b 0x4d2280
    //     0x4d23e0: b            0x4d2280
  }

  _anon_closure() {
    // ** addr: 0x4d2418, size: 0x84
    // 0x4d2418: EnterFrame
    //     0x4d2418: stp          fp, lr, [SP, #-0x10]!
    //     0x4d241c: mov          fp, SP
    // 0x4d2420: AllocStack(8)
    //     0x4d2420: sub          SP, SP, #8
    //     0x4d2424: ldr          r0, [fp, #0x18]
    // 0x4d2428: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x4d2428: ldur         r3, [r0, #0x17]
    //     0x4d242c: add          r3, r3, HEAP, lsl #32
    //     0x4d2430: stur         r3, [fp, #-8]
    // 0x4d2434: CheckStackOverflow
    //     0x4d2434: ldr          BARRIER, [THR, #0x38]
    //     0x4d2438: cmp          SP, BARRIER
    //     0x4d243c: b.ls         0x4d2494
    // 0x4d2440: LoadField: r0 = r3->field_f
    //     0x4d2440: ldur         r0, [r3, #0xf]
    //     0x4d2444: add          r0, r0, HEAP, lsl #32
    // 0x4d2448: LoadField: r1 = r0->field_2f
    //     0x4d2448: ldur         r1, [r0, #0x2f]
    //     0x4d244c: add          r1, r1, HEAP, lsl #32
    //     0x4d2450: tbnz         r1, #4, 0x4d2464
    // 0x4d2454: r0 = NULL
    //     0x4d2454: mov          r0, NULL
    // 0x4d2458: SP = fp
    //     0x4d2458: mov          SP, fp
    // 0x4d245c: LeaveFrame
    //     0x4d245c: ldp          fp, lr, [SP], #0x10
    // 0x4d2460: ret
    //     0x4d2460: ret          
    // 0x4d2464: LoadField: r1 = r0->field_3f
    //     0x4d2464: ldur         r1, [r0, #0x3f]
    //     0x4d2468: add          r1, r1, HEAP, lsl #32
    //     0x4d246c: ldr          r2, [fp, #0x10]
    // 0x4d2470: r0 = dart_core__GrowableList::addAll()
    //     0x4d2470: bl           0x2ce4e8
    //     0x4d2474: ldur         r0, [fp, #-8]
    // 0x4d2478: LoadField: r1 = r0->field_f
    //     0x4d2478: ldur         r1, [r0, #0xf]
    //     0x4d247c: add          r1, r1, HEAP, lsl #32
    // 0x4d2480: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x4d2480: bl           0x3ac980
    // 0x4d2484: r0 = NULL
    //     0x4d2484: mov          r0, NULL
    // 0x4d2488: SP = fp
    //     0x4d2488: mov          SP, fp
    // 0x4d248c: LeaveFrame
    //     0x4d248c: ldp          fp, lr, [SP], #0x10
    // 0x4d2490: ret
    //     0x4d2490: ret          
    // 0x4d2494: r0 = call 0x61fa28
    //     0x4d2494: bl           0x61fa28
    // 0x4d2498: b 0x4d2440
    //     0x4d2498: b            0x4d2440
  }

  _anon_closure() {
    // ** addr: 0x4d249c, size: 0x250
    // 0x4d249c: EnterFrame
    //     0x4d249c: stp          fp, lr, [SP, #-0x10]!
    //     0x4d24a0: mov          fp, SP
    // 0x4d24a4: AllocStack(0x48)
    //     0x4d24a4: sub          SP, SP, #0x48
    //     0x4d24a8: ldr          r0, [fp, #0x18]
    // 0x4d24ac: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x4d24ac: ldur         r2, [r0, #0x17]
    //     0x4d24b0: add          r2, r2, HEAP, lsl #32
    //     0x4d24b4: stur         r2, [fp, #-0x28]
    // 0x4d24b8: CheckStackOverflow
    //     0x4d24b8: ldr          BARRIER, [THR, #0x38]
    //     0x4d24bc: cmp          SP, BARRIER
    //     0x4d24c0: b.ls         0x4d26c0
    // 0x4d24c4: LoadField: r1 = r2->field_f
    //     0x4d24c4: ldur         r1, [r2, #0xf]
    //     0x4d24c8: add          r1, r1, HEAP, lsl #32
    // 0x4d24cc: LoadField: r0 = r1->field_2f
    //     0x4d24cc: ldur         r0, [r1, #0x2f]
    //     0x4d24d0: add          r0, r0, HEAP, lsl #32
    //     0x4d24d4: tbnz         r0, #4, 0x4d24e8
    // 0x4d24d8: r0 = NULL
    //     0x4d24d8: mov          r0, NULL
    // 0x4d24dc: SP = fp
    //     0x4d24dc: mov          SP, fp
    // 0x4d24e0: LeaveFrame
    //     0x4d24e0: ldp          fp, lr, [SP], #0x10
    // 0x4d24e4: ret
    //     0x4d24e4: ret          
    //     0x4d24e8: ldr          r3, [fp, #0x10]
    // 0x4d24ec: LoadField: r0 = r3->field_7
    //     0x4d24ec: ldur         r0, [r3, #7]
    //     0x4d24f0: add          r0, r0, HEAP, lsl #32
    // 0x4d24f4: BARRIER = pp[0x40]
    //     0x4d24f4: ldr          BARRIER, [PP, #0x40]
    //     0x4d24f8: cmp          r0, r16
    // 0x4d24fc: b.eq 0x4d26c8
    //     0x4d24fc: b.eq         0x4d26c8
    // 0x4d2500: StoreField: r1->field_53 = r0
    //     0x4d2500: stur         r0, [r1, #0x53]
    //     0x4d2504: ldurb        r16, [r1, #-1]
    //     0x4d2508: ldurb        r17, [r0, #-1]
    //     0x4d250c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d2510: tst          BARRIER, HEAP, lsr #32
    // 0x4d2514: b.eq 0x4d251c
    //     0x4d2514: b.eq         0x4d251c
    // 0x4d2518: r0 = call 0x61e04c
    //     0x4d2518: bl           0x61e04c
    // 0x4d251c: r0 = r3
    //     0x4d251c: mov          r0, r3
    // 0x4d2520: StoreField: r1->field_57 = r0
    //     0x4d2520: stur         r0, [r1, #0x57]
    //     0x4d2524: ldurb        r16, [r1, #-1]
    //     0x4d2528: ldurb        r17, [r0, #-1]
    //     0x4d252c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d2530: tst          BARRIER, HEAP, lsr #32
    // 0x4d2534: b.eq 0x4d253c
    //     0x4d2534: b.eq         0x4d253c
    // 0x4d2538: r0 = call 0x61e04c
    //     0x4d2538: bl           0x61e04c
    // 0x4d253c: LoadField: r4 = r3->field_2b
    //     0x4d253c: ldur         r4, [r3, #0x2b]
    //     0x4d2540: add          r4, r4, HEAP, lsl #32
    // 0x4d2544: BARRIER = pp[0x40]
    //     0x4d2544: ldr          BARRIER, [PP, #0x40]
    //     0x4d2548: cmp          r4, r16
    // 0x4d254c: b.eq 0x4d26d4
    //     0x4d254c: b.eq         0x4d26d4
    //     0x4d2550: stur         r4, [fp, #-0x20]
    // 0x4d2554: LoadField: r3 = r4->field_b
    //     0x4d2554: ldur         r3, [r4, #0xb]
    //     0x4d2558: stur         r3, [fp, #-0x18]
    //     0x4d255c: sbfx         r0, r3, #1, #0x1f
    //     0x4d2560: mov          r5, #0
    //     0x4d2564: stur         r5, [fp, #-0x10]
    // 0x4d2568: CheckStackOverflow
    //     0x4d2568: ldr          BARRIER, [THR, #0x38]
    //     0x4d256c: cmp          SP, BARRIER
    //     0x4d2570: b.ls         0x4d26e0
    //     0x4d2574: cmp          r5, r0
    // 0x4d2578: b.ge 0x4d2674
    //     0x4d2578: b.ge         0x4d2674
    // 0x4d257c: r1 = r5
    //     0x4d257c: mov          r1, r5
    //     0x4d2580: cmp          r1, r0
    // 0x4d2584: b.hs 0x4d26e8
    //     0x4d2584: b.hs         0x4d26e8
    // 0x4d2588: LoadField: r0 = r4->field_f
    //     0x4d2588: ldur         r0, [r4, #0xf]
    //     0x4d258c: add          r0, r0, HEAP, lsl #32
    //     0x4d2590: add          BARRIER, r0, r5, lsl #2
    // 0x4d2594: LoadField: r1 = BARRIER->field_f
    //     0x4d2594: ldur         r1, [BARRIER, #0xf]
    //     0x4d2598: add          r1, r1, HEAP, lsl #32
    //     0x4d259c: stur         r1, [fp, #-8]
    //     0x4d25a0: mov          r1, #1
    // 0x4d25a4: r0 = call 0x61e890
    //     0x4d25a4: bl           0x61e890
    // 0x4d25a8: r3 = r0
    //     0x4d25a8: mov          r3, r0
    //     0x4d25ac: ldur         r0, [fp, #-0x28]
    //     0x4d25b0: stur         r3, [fp, #-0x30]
    // 0x4d25b4: StoreField: r3->field_b = r0
    //     0x4d25b4: stur         r0, [r3, #0xb]
    //     0x4d25b8: ldur         r1, [fp, #-8]
    // 0x4d25bc: StoreField: r3->field_f = r1
    //     0x4d25bc: stur         r1, [r3, #0xf]
    // 0x4d25c0: LoadField: r1 = r0->field_f
    //     0x4d25c0: ldur         r1, [r0, #0xf]
    //     0x4d25c4: add          r1, r1, HEAP, lsl #32
    // 0x4d25c8: LoadField: r4 = r1->field_37
    //     0x4d25c8: ldur         r4, [r1, #0x37]
    //     0x4d25cc: add          r4, r4, HEAP, lsl #32
    // 0x4d25d0: r2 = r3
    //     0x4d25d0: mov          r2, r3
    //     0x4d25d4: stur         r4, [fp, #-8]
    // 0x4d25d8: r1 = pp[0xc29]
    //     0x4d25d8: add          r1, PP, #0x11, lsl #12
    //     0x4d25dc: ldr          r1, [r1, #0xc18]
    // 0x4d25e0: r0 = call 0x61ec54
    //     0x4d25e0: bl           0x61ec54
    // 0x4d25e4: BARRIER = pp[0x863]
    //     0x4d25e4: add          BARRIER, PP, #0xb, lsl #12
    //     0x4d25e8: ldr          BARRIER, [BARRIER, #0x858]
    //     0x4d25ec: ldur         lr, [fp, #-8]
    //     0x4d25f0: stp          lr, BARRIER, [SP, #8]
    //     0x4d25f4: str          r0, [SP]
    // 0x4d25f8: r4 = pp[0x58]
    //     0x4d25f8: ldr          r4, [PP, #0x58]
    // 0x4d25fc: r0 = collection$src$iterable_extensions_::IterableExtension|firstWhereOrNull()
    //     0x4d25fc: bl           0x41eaac
    // 0x4d2600: r1 = r0
    //     0x4d2600: mov          r1, r0
    //     0x4d2604: cmp          r1, r22
    // 0x4d2608: b.eq 0x4d2640
    //     0x4d2608: b.eq         0x4d2640
    //     0x4d260c: ldur         r0, [fp, #-0x30]
    // 0x4d2610: LoadField: r2 = r0->field_f
    //     0x4d2610: ldur         r2, [r0, #0xf]
    //     0x4d2614: add          r2, r2, HEAP, lsl #32
    // 0x4d2618: LoadField: r0 = r2->field_b
    //     0x4d2618: ldur         r0, [r2, #0xb]
    //     0x4d261c: add          r0, r0, HEAP, lsl #32
    // 0x4d2620: StoreField: r1->field_b = r0
    //     0x4d2620: stur         r0, [r1, #0xb]
    // 0x4d2624: branchIfSmi(r0, 0x4d2640)
    //     0x4d2624: tbz          r0, #0, 0x4d2640
    //     0x4d2628: ldurb        r16, [r1, #-1]
    //     0x4d262c: ldurb        r17, [r0, #-1]
    //     0x4d2630: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d2634: tst          BARRIER, HEAP, lsr #32
    // 0x4d2638: b.eq 0x4d2640
    //     0x4d2638: b.eq         0x4d2640
    // 0x4d263c: r0 = call 0x61e04c
    //     0x4d263c: bl           0x61e04c
    //     0x4d2640: ldur         r1, [fp, #-0x20]
    //     0x4d2644: ldur         r2, [fp, #-0x18]
    // 0x4d2648: LoadField: r0 = r1->field_b
    //     0x4d2648: ldur         r0, [r1, #0xb]
    //     0x4d264c: cmp          r0, r2
    // 0x4d2650: b.ne 0x4d26a4
    //     0x4d2650: b.ne         0x4d26a4
    //     0x4d2654: ldur         r3, [fp, #-0x10]
    //     0x4d2658: add          r5, r3, #1
    //     0x4d265c: sbfx         r3, r0, #1, #0x1f
    // 0x4d2660: r0 = r3
    //     0x4d2660: mov          r0, r3
    // 0x4d2664: r3 = r2
    //     0x4d2664: mov          r3, r2
    //     0x4d2668: ldur         r2, [fp, #-0x28]
    // 0x4d266c: r4 = r1
    //     0x4d266c: mov          r4, r1
    // 0x4d2670: b 0x4d2564
    //     0x4d2670: b            0x4d2564
    // 0x4d2674: r0 = r2
    //     0x4d2674: mov          r0, r2
    // 0x4d2678: LoadField: r1 = r0->field_f
    //     0x4d2678: ldur         r1, [r0, #0xf]
    //     0x4d267c: add          r1, r1, HEAP, lsl #32
    // 0x4d2680: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_checkProcessState()
    //     0x4d2680: bl           0x4d26ec
    //     0x4d2684: ldur         r0, [fp, #-0x28]
    // 0x4d2688: LoadField: r1 = r0->field_f
    //     0x4d2688: ldur         r1, [r0, #0xf]
    //     0x4d268c: add          r1, r1, HEAP, lsl #32
    // 0x4d2690: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x4d2690: bl           0x3ac980
    // 0x4d2694: r0 = NULL
    //     0x4d2694: mov          r0, NULL
    // 0x4d2698: SP = fp
    //     0x4d2698: mov          SP, fp
    // 0x4d269c: LeaveFrame
    //     0x4d269c: ldp          fp, lr, [SP], #0x10
    // 0x4d26a0: ret
    //     0x4d26a0: ret          
    // 0x4d26a4: r0 = call 0x277514
    //     0x4d26a4: bl           0x277514
    // 0x4d26a8: r1 = r0
    //     0x4d26a8: mov          r1, r0
    //     0x4d26ac: ldur         r0, [fp, #-0x20]
    // 0x4d26b0: StoreField: r1->field_b = r0
    //     0x4d26b0: stur         r0, [r1, #0xb]
    // 0x4d26b4: r0 = r1
    //     0x4d26b4: mov          r0, r1
    // 0x4d26b8: r0 = call 0x61dadc
    //     0x4d26b8: bl           0x61dadc
    // 0x4d26bc: brk #0
    //     0x4d26bc: brk          #0
    // 0x4d26c0: r0 = call 0x61fa28
    //     0x4d26c0: bl           0x61fa28
    // 0x4d26c4: b 0x4d24c4
    //     0x4d26c4: b            0x4d24c4
    // 0x4d26c8: r9 = pp[0xc31]
    //     0x4d26c8: add          r9, PP, #0x11, lsl #12
    //     0x4d26cc: ldr          r9, [r9, #0xc20]
    // 0x4d26d0: r0 = call 0x620258
    //     0x4d26d0: bl           0x620258
    // 0x4d26d4: r9 = pp[0xc39]
    //     0x4d26d4: add          r9, PP, #0x11, lsl #12
    //     0x4d26d8: ldr          r9, [r9, #0xc28]
    // 0x4d26dc: r0 = call 0x620258
    //     0x4d26dc: bl           0x620258
    // 0x4d26e0: r0 = call 0x61fa28
    //     0x4d26e0: bl           0x61fa28
    // 0x4d26e4: b 0x4d2574
    //     0x4d26e4: b            0x4d2574
    // 0x4d26e8: r0 = call 0x61fe70
    //     0x4d26e8: bl           0x61fe70
  }

  _checkProcessState() {
    // ** addr: 0x4d26ec, size: 0xa4
    // 0x4d26ec: EnterFrame
    //     0x4d26ec: stp          fp, lr, [SP, #-0x10]!
    //     0x4d26f0: mov          fp, SP
    // 0x4d26f4: r2 = r1
    //     0x4d26f4: mov          r2, r1
    // 0x4d26f8: CheckStackOverflow
    //     0x4d26f8: ldr          BARRIER, [THR, #0x38]
    //     0x4d26fc: cmp          SP, BARRIER
    //     0x4d2700: b.ls         0x4d2788
    // 0x4d2704: LoadField: r0 = r2->field_53
    //     0x4d2704: ldur         r0, [r2, #0x53]
    //     0x4d2708: add          r0, r0, HEAP, lsl #32
    // 0x4d270c: LoadField: r3 = r0->field_7
    //     0x4d270c: ldur         r3, [r0, #7]
    //     0x4d2710: cmp          r3, #2
    // 0x4d2714: b.gt 0x4d2754
    //     0x4d2714: b.gt         0x4d2754
    //     0x4d2718: cmp          r3, #1
    // 0x4d271c: b.gt 0x4d2748
    //     0x4d271c: b.gt         0x4d2748
    //     0x4d2720: sbfiz        r0, r3, #1, #0x1f
    //     0x4d2724: cmp          r3, r0, asr #1
    // 0x4d2728: b.eq 0x4d2734
    //     0x4d2728: b.eq         0x4d2734
    // 0x4d272c: r0 = call 0x61fba8
    //     0x4d272c: bl           0x61fba8
    // 0x4d2730: StoreField: r0->field_7 = r3
    //     0x4d2730: stur         r3, [r0, #7]
    //     0x4d2734: cmp          r0, #2
    // 0x4d2738: b.ne 0x4d2778
    //     0x4d2738: b.ne         0x4d2778
    // 0x4d273c: r1 = r2
    //     0x4d273c: mov          r1, r2
    // 0x4d2740: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_handleBetProcess()
    //     0x4d2740: bl           0x4d31cc
    // 0x4d2744: b 0x4d2778
    //     0x4d2744: b            0x4d2778
    // 0x4d2748: r1 = r2
    //     0x4d2748: mov          r1, r2
    // 0x4d274c: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_handleDistributeProcess()
    //     0x4d274c: bl           0x4d2c2c
    // 0x4d2750: b 0x4d2778
    //     0x4d2750: b            0x4d2778
    //     0x4d2754: sbfiz        r0, r3, #1, #0x1f
    //     0x4d2758: cmp          r3, r0, asr #1
    // 0x4d275c: b.eq 0x4d2768
    //     0x4d275c: b.eq         0x4d2768
    // 0x4d2760: r0 = call 0x61fba8
    //     0x4d2760: bl           0x61fba8
    // 0x4d2764: StoreField: r0->field_7 = r3
    //     0x4d2764: stur         r3, [r0, #7]
    //     0x4d2768: cmp          r0, #6
    // 0x4d276c: b.ne 0x4d2778
    //     0x4d276c: b.ne         0x4d2778
    // 0x4d2770: r1 = r2
    //     0x4d2770: mov          r1, r2
    // 0x4d2774: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_handleShowProcess()
    //     0x4d2774: bl           0x4d2790
    // 0x4d2778: r0 = NULL
    //     0x4d2778: mov          r0, NULL
    // 0x4d277c: SP = fp
    //     0x4d277c: mov          SP, fp
    // 0x4d2780: LeaveFrame
    //     0x4d2780: ldp          fp, lr, [SP], #0x10
    // 0x4d2784: ret
    //     0x4d2784: ret          
    // 0x4d2788: r0 = call 0x61fa28
    //     0x4d2788: bl           0x61fa28
    // 0x4d278c: b 0x4d2704
    //     0x4d278c: b            0x4d2704
  }

  _handleShowProcess() {
    // ** addr: 0x4d2790, size: 0x1e8
    // 0x4d2790: EnterFrame
    //     0x4d2790: stp          fp, lr, [SP, #-0x10]!
    //     0x4d2794: mov          fp, SP
    // 0x4d2798: AllocStack(8)
    //     0x4d2798: sub          SP, SP, #8
    // 0x4d279c: d0 = pp[0xc41]
    //     0x4d279c: add          r17, PP, #0x11, lsl #12
    //     0x4d27a0: ldr          d0, [r17, #0xc30]
    // 0x4d27a4: r0 = r1
    //     0x4d27a4: mov          r0, r1
    //     0x4d27a8: stur         r1, [fp, #-8]
    // 0x4d27ac: CheckStackOverflow
    //     0x4d27ac: ldr          BARRIER, [THR, #0x38]
    //     0x4d27b0: cmp          SP, BARRIER
    //     0x4d27b4: b.ls         0x4d2914
    // 0x4d27b8: LoadField: r1 = r0->field_57
    //     0x4d27b8: ldur         r1, [r0, #0x57]
    //     0x4d27bc: add          r1, r1, HEAP, lsl #32
    // 0x4d27c0: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x4d27c0: ldur         r2, [r1, #0x17]
    //     0x4d27c4: add          r2, r2, HEAP, lsl #32
    // 0x4d27c8: BARRIER = pp[0x40]
    //     0x4d27c8: ldr          BARRIER, [PP, #0x40]
    //     0x4d27cc: cmp          r2, r16
    // 0x4d27d0: b.eq 0x4d291c
    //     0x4d27d0: b.eq         0x4d291c
    // 0x4d27d4: LoadField: r3 = r1->field_23
    //     0x4d27d4: ldur         r3, [r1, #0x23]
    //     0x4d27d8: add          r3, r3, HEAP, lsl #32
    // 0x4d27dc: BARRIER = pp[0x40]
    //     0x4d27dc: ldr          BARRIER, [PP, #0x40]
    //     0x4d27e0: cmp          r3, r16
    // 0x4d27e4: b.eq 0x4d2928
    //     0x4d27e4: b.eq         0x4d2928
    //     0x4d27e8: sbfx         r1, r2, #1, #0x1f
    // 0x4d27ec: branchIfSmi(r2, 0x4d27f4)
    //     0x4d27ec: tbz          r2, #0, 0x4d27f4
    // 0x4d27f0: LoadField: r1 = r2->field_7
    //     0x4d27f0: ldur         r1, [r2, #7]
    //     0x4d27f4: sbfx         r2, r3, #1, #0x1f
    // 0x4d27f8: branchIfSmi(r3, 0x4d2800)
    //     0x4d27f8: tbz          r3, #0, 0x4d2800
    // 0x4d27fc: LoadField: r2 = r3->field_7
    //     0x4d27fc: ldur         r2, [r3, #7]
    //     0x4d2800: sub          r3, r1, r2
    //     0x4d2804: scvtf        d1, r3
    //     0x4d2808: fdiv         d2, d1, d0
    //     0x4d280c: fcmp         d2, d2
    // 0x4d2810: b.vs 0x4d2934
    //     0x4d2810: b.vs         0x4d2934
    //     0x4d2814: fcvtps       r1, d2
    //     0x4d2818: asr          BARRIER, r1, #0x1e
    //     0x4d281c: cmp          BARRIER, r1, asr #63
    // 0x4d2820: b.ne 0x4d2934
    //     0x4d2820: b.ne         0x4d2934
    //     0x4d2824: lsl          r1, r1, #1
    //     0x4d2828: sbfx         r2, r1, #1, #0x1f
    // 0x4d282c: branchIfSmi(r1, 0x4d2834)
    //     0x4d282c: tbz          r1, #0, 0x4d2834
    // 0x4d2830: LoadField: r2 = r1->field_7
    //     0x4d2830: ldur         r2, [r1, #7]
    // 0x4d2834: r1 = r0
    //     0x4d2834: mov          r1, r0
    // 0x4d2838: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_startCountDown()
    //     0x4d2838: bl           0x4d2a74
    //     0x4d283c: ldur         r2, [fp, #-8]
    // 0x4d2840: LoadField: r1 = r2->field_6b
    //     0x4d2840: ldur         r1, [r2, #0x6b]
    //     0x4d2844: add          r1, r1, HEAP, lsl #32
    //     0x4d2848: cmp          r1, r22
    // 0x4d284c: b.eq 0x4d2890
    //     0x4d284c: b.eq         0x4d2890
    // 0x4d2850: LoadField: r0 = r2->field_57
    //     0x4d2850: ldur         r0, [r2, #0x57]
    //     0x4d2854: add          r0, r0, HEAP, lsl #32
    // 0x4d2858: LoadField: r3 = r0->field_23
    //     0x4d2858: ldur         r3, [r0, #0x23]
    //     0x4d285c: add          r3, r3, HEAP, lsl #32
    // 0x4d2860: BARRIER = pp[0x40]
    //     0x4d2860: ldr          BARRIER, [PP, #0x40]
    //     0x4d2864: cmp          r3, r16
    // 0x4d2868: b.eq 0x4d2960
    //     0x4d2868: b.eq         0x4d2960
    // 0x4d286c: r0 = r3
    //     0x4d286c: mov          r0, r3
    // 0x4d2870: StoreField: r1->field_b = r0
    //     0x4d2870: stur         r0, [r1, #0xb]
    // 0x4d2874: branchIfSmi(r0, 0x4d2890)
    //     0x4d2874: tbz          r0, #0, 0x4d2890
    //     0x4d2878: ldurb        r16, [r1, #-1]
    //     0x4d287c: ldurb        r17, [r0, #-1]
    //     0x4d2880: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d2884: tst          BARRIER, HEAP, lsr #32
    // 0x4d2888: b.eq 0x4d2890
    //     0x4d2888: b.eq         0x4d2890
    // 0x4d288c: r0 = call 0x61e04c
    //     0x4d288c: bl           0x61e04c
    // 0x4d2890: LoadField: r1 = r2->field_2b
    //     0x4d2890: ldur         r1, [r2, #0x2b]
    //     0x4d2894: add          r1, r1, HEAP, lsl #32
    // 0x4d2898: r0 = flutter$src$widgets$framework_GlobalKey::get__currentElement()
    //     0x4d2898: bl           0x2c0440
    // 0x4d289c: r1 = r0
    //     0x4d289c: mov          r1, r0
    //     0x4d28a0: ldur         r0, [fp, #-8]
    // 0x4d28a4: LoadField: r2 = r0->field_57
    //     0x4d28a4: ldur         r2, [r0, #0x57]
    //     0x4d28a8: add          r2, r2, HEAP, lsl #32
    // 0x4d28ac: LoadField: r3 = r2->field_b
    //     0x4d28ac: ldur         r3, [r2, #0xb]
    //     0x4d28b0: add          r3, r3, HEAP, lsl #32
    // 0x4d28b4: BARRIER = pp[0x40]
    //     0x4d28b4: ldr          BARRIER, [PP, #0x40]
    //     0x4d28b8: cmp          r3, r16
    // 0x4d28bc: b.eq 0x4d296c
    //     0x4d28bc: b.eq         0x4d296c
    //     0x4d28c0: cmp          r1, r22
    // 0x4d28c4: b.eq 0x4d28e8
    //     0x4d28c4: b.eq         0x4d28e8
    //     0x4d28c8: sbfx         r2, r3, #1, #0x1f
    // 0x4d28cc: branchIfSmi(r3, 0x4d28d4)
    //     0x4d28cc: tbz          r3, #0, 0x4d28d4
    // 0x4d28d0: LoadField: r2 = r3->field_7
    //     0x4d28d0: ldur         r2, [r3, #7]
    //     0x4d28d4: cmp          r2, #0
    // 0x4d28d8: b.le 0x4d28e8
    //     0x4d28d8: b.le         0x4d28e8
    // 0x4d28dc: LoadField: r3 = r0->field_2f
    //     0x4d28dc: ldur         r3, [r0, #0x2f]
    //     0x4d28e0: add          r3, r3, HEAP, lsl #32
    //     0x4d28e4: tbnz         r3, #4, 0x4d28f8
    // 0x4d28e8: r0 = NULL
    //     0x4d28e8: mov          r0, NULL
    // 0x4d28ec: SP = fp
    //     0x4d28ec: mov          SP, fp
    // 0x4d28f0: LeaveFrame
    //     0x4d28f0: ldp          fp, lr, [SP], #0x10
    // 0x4d28f4: ret
    //     0x4d28f4: ret          
    // 0x4d28f8: LoadField: r3 = r0->field_6b
    //     0x4d28f8: ldur         r3, [r0, #0x6b]
    //     0x4d28fc: add          r3, r3, HEAP, lsl #32
    // 0x4d2900: r0 = soul_flutter_international$biz$game$page_game_fruit_winner_dialog_GameFruitWinnerDialog::showWinnerDialog()
    //     0x4d2900: bl           0x4d2978
    // 0x4d2904: r0 = NULL
    //     0x4d2904: mov          r0, NULL
    // 0x4d2908: SP = fp
    //     0x4d2908: mov          SP, fp
    // 0x4d290c: LeaveFrame
    //     0x4d290c: ldp          fp, lr, [SP], #0x10
    // 0x4d2910: ret
    //     0x4d2910: ret          
    // 0x4d2914: r0 = call 0x61faa8
    //     0x4d2914: bl           0x61faa8
    // 0x4d2918: b 0x4d27b8
    //     0x4d2918: b            0x4d27b8
    // 0x4d291c: r9 = pp[0xc49]
    //     0x4d291c: add          r9, PP, #0x11, lsl #12
    //     0x4d2920: ldr          r9, [r9, #0xc38]
    // 0x4d2924: r0 = call 0x6202a8
    //     0x4d2924: bl           0x6202a8
    // 0x4d2928: r9 = pp[0xc51]
    //     0x4d2928: add          r9, PP, #0x11, lsl #12
    //     0x4d292c: ldr          r9, [r9, #0xc40]
    // 0x4d2930: r0 = call 0x6202a8
    //     0x4d2930: bl           0x6202a8
    //     0x4d2934: str          q2, [SP, #-0x10]!
    //     0x4d2938: str          r0, [SP, #-8]!
    //     0x4d293c: fmov         d0, d2
    //     0x4d2940: mov          r0, #0x40
    // 0x4d2944: lr = pp[0x3110]
    //     0x4d2944: ldr          lr, [PP, #0x3110]
    //     0x4d2948: ldur         lr, [lr, #7]
    // 0x4d294c: r0 = [R]()
    //     0x4d294c: blr          lr
    // 0x4d2950: r1 = r0
    //     0x4d2950: mov          r1, r0
    //     0x4d2954: ldr          r0, [SP], #8
    //     0x4d2958: ldr          q2, [SP], #0x10
    // 0x4d295c: b 0x4d2828
    //     0x4d295c: b            0x4d2828
    // 0x4d2960: r9 = pp[0xc51]
    //     0x4d2960: add          r9, PP, #0x11, lsl #12
    //     0x4d2964: ldr          r9, [r9, #0xc40]
    // 0x4d2968: r0 = call 0x620258
    //     0x4d2968: bl           0x620258
    // 0x4d296c: r9 = pp[0xbd1]
    //     0x4d296c: add          r9, PP, #0x11, lsl #12
    //     0x4d2970: ldr          r9, [r9, #0xbc0]
    // 0x4d2974: r0 = call 0x620258
    //     0x4d2974: bl           0x620258
  }

  _startCountDown() {
    // ** addr: 0x4d2a74, size: 0x3c
    // 0x4d2a74: EnterFrame
    //     0x4d2a74: stp          fp, lr, [SP, #-0x10]!
    //     0x4d2a78: mov          fp, SP
    // 0x4d2a7c: r3 = r1
    //     0x4d2a7c: mov          r3, r1
    // 0x4d2a80: CheckStackOverflow
    //     0x4d2a80: ldr          BARRIER, [THR, #0x38]
    //     0x4d2a84: cmp          SP, BARRIER
    //     0x4d2a88: b.ls         0x4d2aa8
    // 0x4d2a8c: LoadField: r1 = r3->field_5b
    //     0x4d2a8c: ldur         r1, [r3, #0x5b]
    //     0x4d2a90: add          r1, r1, HEAP, lsl #32
    // 0x4d2a94: r0 = soul_flutter_international$common$utils$count_down_timer_CountDownTimer::start()
    //     0x4d2a94: bl           0x4d2ab0
    // 0x4d2a98: r0 = NULL
    //     0x4d2a98: mov          r0, NULL
    // 0x4d2a9c: SP = fp
    //     0x4d2a9c: mov          SP, fp
    // 0x4d2aa0: LeaveFrame
    //     0x4d2aa0: ldp          fp, lr, [SP], #0x10
    // 0x4d2aa4: ret
    //     0x4d2aa4: ret          
    // 0x4d2aa8: r0 = call 0x61fa28
    //     0x4d2aa8: bl           0x61fa28
    // 0x4d2aac: b 0x4d2a8c
    //     0x4d2aac: b            0x4d2a8c
  }

  _handleDistributeProcess() {
    // ** addr: 0x4d2c2c, size: 0x1b4
    // 0x4d2c2c: EnterFrame
    //     0x4d2c2c: stp          fp, lr, [SP, #-0x10]!
    //     0x4d2c30: mov          fp, SP
    // 0x4d2c34: AllocStack(0x10)
    //     0x4d2c34: sub          SP, SP, #0x10
    // 0x4d2c38: d0 = pp[0xc41]
    //     0x4d2c38: add          r17, PP, #0x11, lsl #12
    //     0x4d2c3c: ldr          d0, [r17, #0xc30]
    // 0x4d2c40: r0 = r1
    //     0x4d2c40: mov          r0, r1
    //     0x4d2c44: stur         r1, [fp, #-0x10]
    // 0x4d2c48: CheckStackOverflow
    //     0x4d2c48: ldr          BARRIER, [THR, #0x38]
    //     0x4d2c4c: cmp          SP, BARRIER
    //     0x4d2c50: b.ls         0x4d2d7c
    // 0x4d2c54: LoadField: r1 = r0->field_57
    //     0x4d2c54: ldur         r1, [r0, #0x57]
    //     0x4d2c58: add          r1, r1, HEAP, lsl #32
    // 0x4d2c5c: LoadField: r2 = r1->field_1b
    //     0x4d2c5c: ldur         r2, [r1, #0x1b]
    //     0x4d2c60: add          r2, r2, HEAP, lsl #32
    // 0x4d2c64: BARRIER = pp[0x40]
    //     0x4d2c64: ldr          BARRIER, [PP, #0x40]
    //     0x4d2c68: cmp          r2, r16
    // 0x4d2c6c: b.eq 0x4d2d84
    //     0x4d2c6c: b.eq         0x4d2d84
    // 0x4d2c70: LoadField: r3 = r1->field_1f
    //     0x4d2c70: ldur         r3, [r1, #0x1f]
    //     0x4d2c74: add          r3, r3, HEAP, lsl #32
    // 0x4d2c78: BARRIER = pp[0x40]
    //     0x4d2c78: ldr          BARRIER, [PP, #0x40]
    //     0x4d2c7c: cmp          r3, r16
    // 0x4d2c80: b.eq 0x4d2d90
    //     0x4d2c80: b.eq         0x4d2d90
    //     0x4d2c84: sbfx         r4, r2, #1, #0x1f
    // 0x4d2c88: branchIfSmi(r2, 0x4d2c90)
    //     0x4d2c88: tbz          r2, #0, 0x4d2c90
    // 0x4d2c8c: LoadField: r4 = r2->field_7
    //     0x4d2c8c: ldur         r4, [r2, #7]
    //     0x4d2c90: sbfx         r2, r3, #1, #0x1f
    // 0x4d2c94: branchIfSmi(r3, 0x4d2c9c)
    //     0x4d2c94: tbz          r3, #0, 0x4d2c9c
    // 0x4d2c98: LoadField: r2 = r3->field_7
    //     0x4d2c98: ldur         r2, [r3, #7]
    //     0x4d2c9c: add          r3, r4, r2
    // 0x4d2ca0: LoadField: r2 = r1->field_23
    //     0x4d2ca0: ldur         r2, [r1, #0x23]
    //     0x4d2ca4: add          r2, r2, HEAP, lsl #32
    // 0x4d2ca8: BARRIER = pp[0x40]
    //     0x4d2ca8: ldr          BARRIER, [PP, #0x40]
    //     0x4d2cac: cmp          r2, r16
    // 0x4d2cb0: b.eq 0x4d2d9c
    //     0x4d2cb0: b.eq         0x4d2d9c
    //     0x4d2cb4: sbfx         r1, r2, #1, #0x1f
    // 0x4d2cb8: branchIfSmi(r2, 0x4d2cc0)
    //     0x4d2cb8: tbz          r2, #0, 0x4d2cc0
    // 0x4d2cbc: LoadField: r1 = r2->field_7
    //     0x4d2cbc: ldur         r1, [r2, #7]
    //     0x4d2cc0: sub          r2, r3, r1
    //     0x4d2cc4: scvtf        d1, r2
    //     0x4d2cc8: fdiv         d2, d1, d0
    //     0x4d2ccc: fcmp         d2, d2
    // 0x4d2cd0: b.vs 0x4d2da8
    //     0x4d2cd0: b.vs         0x4d2da8
    //     0x4d2cd4: fcvtps       r1, d2
    //     0x4d2cd8: asr          BARRIER, r1, #0x1e
    //     0x4d2cdc: cmp          BARRIER, r1, asr #63
    // 0x4d2ce0: b.ne 0x4d2da8
    //     0x4d2ce0: b.ne         0x4d2da8
    //     0x4d2ce4: lsl          r1, r1, #1
    //     0x4d2ce8: sbfx         r3, r1, #1, #0x1f
    // 0x4d2cec: branchIfSmi(r1, 0x4d2cf4)
    //     0x4d2cec: tbz          r1, #0, 0x4d2cf4
    // 0x4d2cf0: LoadField: r3 = r1->field_7
    //     0x4d2cf0: ldur         r3, [r1, #7]
    // 0x4d2cf4: r1 = r0
    //     0x4d2cf4: mov          r1, r0
    // 0x4d2cf8: r2 = r3
    //     0x4d2cf8: mov          r2, r3
    //     0x4d2cfc: stur         r3, [fp, #-8]
    // 0x4d2d00: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_startCountDown()
    //     0x4d2d00: bl           0x4d2a74
    //     0x4d2d04: ldur         r0, [fp, #-0x10]
    // 0x4d2d08: LoadField: r1 = r0->field_57
    //     0x4d2d08: ldur         r1, [r0, #0x57]
    //     0x4d2d0c: add          r1, r1, HEAP, lsl #32
    // 0x4d2d10: LoadField: r2 = r1->field_f
    //     0x4d2d10: ldur         r2, [r1, #0xf]
    //     0x4d2d14: add          r2, r2, HEAP, lsl #32
    // 0x4d2d18: BARRIER = pp[0x40]
    //     0x4d2d18: ldr          BARRIER, [PP, #0x40]
    //     0x4d2d1c: cmp          r2, r16
    // 0x4d2d20: b.eq 0x4d2dd4
    //     0x4d2d20: b.eq         0x4d2dd4
    //     0x4d2d24: ldur         r1, [fp, #-8]
    //     0x4d2d28: cmp          r1, #2
    // 0x4d2d2c: b.ge 0x4d2d4c
    //     0x4d2d2c: b.ge         0x4d2d4c
    //     0x4d2d30: sbfx         r1, r2, #1, #0x1f
    // 0x4d2d34: branchIfSmi(r2, 0x4d2d3c)
    //     0x4d2d34: tbz          r2, #0, 0x4d2d3c
    // 0x4d2d38: LoadField: r1 = r2->field_7
    //     0x4d2d38: ldur         r1, [r2, #7]
    // 0x4d2d3c: r2 = r1
    //     0x4d2d3c: mov          r2, r1
    // 0x4d2d40: r1 = r0
    //     0x4d2d40: mov          r1, r0
    // 0x4d2d44: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_updateLotteryIndex()
    //     0x4d2d44: bl           0x4d3170
    // 0x4d2d48: b 0x4d2d64
    //     0x4d2d48: b            0x4d2d64
    //     0x4d2d4c: sbfx         r3, r2, #1, #0x1f
    // 0x4d2d50: branchIfSmi(r2, 0x4d2d58)
    //     0x4d2d50: tbz          r2, #0, 0x4d2d58
    // 0x4d2d54: LoadField: r3 = r2->field_7
    //     0x4d2d54: ldur         r3, [r2, #7]
    // 0x4d2d58: r2 = r1
    //     0x4d2d58: mov          r2, r1
    //     0x4d2d5c: ldur         r1, [fp, #-0x10]
    // 0x4d2d60: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_startLotteryAnimation()
    //     0x4d2d60: bl           0x4d300c
    //     0x4d2d64: ldur         r1, [fp, #-0x10]
    // 0x4d2d68: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_randomRequestWinnerInfo()
    //     0x4d2d68: bl           0x4d2de0
    // 0x4d2d6c: r0 = NULL
    //     0x4d2d6c: mov          r0, NULL
    // 0x4d2d70: SP = fp
    //     0x4d2d70: mov          SP, fp
    // 0x4d2d74: LeaveFrame
    //     0x4d2d74: ldp          fp, lr, [SP], #0x10
    // 0x4d2d78: ret
    //     0x4d2d78: ret          
    // 0x4d2d7c: r0 = call 0x61faa8
    //     0x4d2d7c: bl           0x61faa8
    // 0x4d2d80: b 0x4d2c54
    //     0x4d2d80: b            0x4d2c54
    // 0x4d2d84: r9 = pp[0xc69]
    //     0x4d2d84: add          r9, PP, #0x11, lsl #12
    //     0x4d2d88: ldr          r9, [r9, #0xc58]
    // 0x4d2d8c: r0 = call 0x6202a8
    //     0x4d2d8c: bl           0x6202a8
    // 0x4d2d90: r9 = pp[0xc71]
    //     0x4d2d90: add          r9, PP, #0x11, lsl #12
    //     0x4d2d94: ldr          r9, [r9, #0xc60]
    // 0x4d2d98: r0 = call 0x6202a8
    //     0x4d2d98: bl           0x6202a8
    // 0x4d2d9c: r9 = pp[0xc51]
    //     0x4d2d9c: add          r9, PP, #0x11, lsl #12
    //     0x4d2da0: ldr          r9, [r9, #0xc40]
    // 0x4d2da4: r0 = call 0x6202a8
    //     0x4d2da4: bl           0x6202a8
    //     0x4d2da8: str          q2, [SP, #-0x10]!
    //     0x4d2dac: str          r0, [SP, #-8]!
    //     0x4d2db0: fmov         d0, d2
    //     0x4d2db4: mov          r0, #0x40
    // 0x4d2db8: lr = pp[0x3110]
    //     0x4d2db8: ldr          lr, [PP, #0x3110]
    //     0x4d2dbc: ldur         lr, [lr, #7]
    // 0x4d2dc0: r0 = [R]()
    //     0x4d2dc0: blr          lr
    // 0x4d2dc4: r1 = r0
    //     0x4d2dc4: mov          r1, r0
    //     0x4d2dc8: ldr          r0, [SP], #8
    //     0x4d2dcc: ldr          q2, [SP], #0x10
    // 0x4d2dd0: b 0x4d2ce8
    //     0x4d2dd0: b            0x4d2ce8
    // 0x4d2dd4: r9 = pp[0xc79]
    //     0x4d2dd4: add          r9, PP, #0x11, lsl #12
    //     0x4d2dd8: ldr          r9, [r9, #0xc68]
    // 0x4d2ddc: r0 = call 0x620258
    //     0x4d2ddc: bl           0x620258
  }

  _randomRequestWinnerInfo() {
    // ** addr: 0x4d2de0, size: 0x118
    // 0x4d2de0: EnterFrame
    //     0x4d2de0: stp          fp, lr, [SP, #-0x10]!
    //     0x4d2de4: mov          fp, SP
    // 0x4d2de8: AllocStack(0x20)
    //     0x4d2de8: sub          SP, SP, #0x20
    //     0x4d2dec: stur         r1, [fp, #-8]
    // 0x4d2df0: CheckStackOverflow
    //     0x4d2df0: ldr          BARRIER, [THR, #0x38]
    //     0x4d2df4: cmp          SP, BARRIER
    //     0x4d2df8: b.ls         0x4d2ed8
    //     0x4d2dfc: mov          r1, #2
    // 0x4d2e00: r0 = call 0x61e890
    //     0x4d2e00: bl           0x61e890
    // 0x4d2e04: r1 = r0
    //     0x4d2e04: mov          r1, r0
    //     0x4d2e08: ldur         r0, [fp, #-8]
    //     0x4d2e0c: stur         r1, [fp, #-0x18]
    // 0x4d2e10: StoreField: r1->field_f = r0
    //     0x4d2e10: stur         r0, [r1, #0xf]
    // 0x4d2e14: StoreField: r0->field_6b = r22
    //     0x4d2e14: stur         r22, [r0, #0x6b]
    // 0x4d2e18: LoadField: r2 = r0->field_57
    //     0x4d2e18: ldur         r2, [r0, #0x57]
    //     0x4d2e1c: add          r2, r2, HEAP, lsl #32
    // 0x4d2e20: LoadField: r0 = r2->field_b
    //     0x4d2e20: ldur         r0, [r2, #0xb]
    //     0x4d2e24: add          r0, r0, HEAP, lsl #32
    // 0x4d2e28: BARRIER = pp[0x40]
    //     0x4d2e28: ldr          BARRIER, [PP, #0x40]
    //     0x4d2e2c: cmp          r0, r16
    // 0x4d2e30: b.eq 0x4d2ee0
    //     0x4d2e30: b.eq         0x4d2ee0
    // 0x4d2e34: StoreField: r1->field_13 = r0
    //     0x4d2e34: stur         r0, [r1, #0x13]
    // 0x4d2e38: LoadField: r3 = r2->field_27
    //     0x4d2e38: ldur         r3, [r2, #0x27]
    //     0x4d2e3c: add          r3, r3, HEAP, lsl #32
    // 0x4d2e40: BARRIER = pp[0x40]
    //     0x4d2e40: ldr          BARRIER, [PP, #0x40]
    //     0x4d2e44: cmp          r3, r16
    // 0x4d2e48: b.eq 0x4d2eec
    //     0x4d2e48: b.eq         0x4d2eec
    //     0x4d2e4c: sbfx         r2, r0, #1, #0x1f
    // 0x4d2e50: branchIfSmi(r0, 0x4d2e58)
    //     0x4d2e50: tbz          r0, #0, 0x4d2e58
    // 0x4d2e54: LoadField: r2 = r0->field_7
    //     0x4d2e54: ldur         r2, [r0, #7]
    //     0x4d2e58: cmp          r2, #0
    // 0x4d2e5c: b.le 0x4d2e74
    //     0x4d2e5c: b.le         0x4d2e74
    //     0x4d2e60: sbfx         r0, r3, #1, #0x1f
    // 0x4d2e64: branchIfSmi(r3, 0x4d2e6c)
    //     0x4d2e64: tbz          r3, #0, 0x4d2e6c
    // 0x4d2e68: LoadField: r0 = r3->field_7
    //     0x4d2e68: ldur         r0, [r3, #7]
    //     0x4d2e6c: cmp          r0, #0
    // 0x4d2e70: b.gt 0x4d2e84
    //     0x4d2e70: b.gt         0x4d2e84
    // 0x4d2e74: r0 = NULL
    //     0x4d2e74: mov          r0, NULL
    // 0x4d2e78: SP = fp
    //     0x4d2e78: mov          SP, fp
    // 0x4d2e7c: LeaveFrame
    //     0x4d2e7c: ldp          fp, lr, [SP], #0x10
    // 0x4d2e80: ret
    //     0x4d2e80: ret          
    //     0x4d2e84: mov          BARRIER, #0x3e8
    //     0x4d2e88: mul          r2, r0, BARRIER
    //     0x4d2e8c: stur         r2, [fp, #-0x10]
    // 0x4d2e90: r0 = call 0x28d374
    //     0x4d2e90: bl           0x28d374
    // 0x4d2e94: r3 = r0
    //     0x4d2e94: mov          r3, r0
    //     0x4d2e98: ldur         r0, [fp, #-0x10]
    //     0x4d2e9c: stur         r3, [fp, #-8]
    // 0x4d2ea0: StoreField: r3->field_7 = r0
    //     0x4d2ea0: stur         r0, [r3, #7]
    //     0x4d2ea4: ldur         r2, [fp, #-0x18]
    // 0x4d2ea8: r1 = pp[0xc81]
    //     0x4d2ea8: add          r1, PP, #0x11, lsl #12
    //     0x4d2eac: ldr          r1, [r1, #0xc70]
    // 0x4d2eb0: r0 = call 0x61ec54
    //     0x4d2eb0: bl           0x61ec54
    //     0x4d2eb4: str          r0, [SP]
    //     0x4d2eb8: ldur         r2, [fp, #-8]
    // 0x4d2ebc: r1 = pp[0xcf0]
    //     0x4d2ebc: ldr          r1, [PP, #0xcf0]
    // 0x4d2ec0: r4 = pp[0x280]
    //     0x4d2ec0: ldr          r4, [PP, #0x280]
    // 0x4d2ec4: r0 = dart_async_Future::factory_ctor_delayed()
    //     0x4d2ec4: bl           0x3b5668
    // 0x4d2ec8: r0 = NULL
    //     0x4d2ec8: mov          r0, NULL
    // 0x4d2ecc: SP = fp
    //     0x4d2ecc: mov          SP, fp
    // 0x4d2ed0: LeaveFrame
    //     0x4d2ed0: ldp          fp, lr, [SP], #0x10
    // 0x4d2ed4: ret
    //     0x4d2ed4: ret          
    // 0x4d2ed8: r0 = call 0x61fa28
    //     0x4d2ed8: bl           0x61fa28
    // 0x4d2edc: b 0x4d2dfc
    //     0x4d2edc: b            0x4d2dfc
    // 0x4d2ee0: r9 = pp[0xbd1]
    //     0x4d2ee0: add          r9, PP, #0x11, lsl #12
    //     0x4d2ee4: ldr          r9, [r9, #0xbc0]
    // 0x4d2ee8: r0 = call 0x620258
    //     0x4d2ee8: bl           0x620258
    // 0x4d2eec: r9 = pp[0xc89]
    //     0x4d2eec: add          r9, PP, #0x11, lsl #12
    //     0x4d2ef0: ldr          r9, [r9, #0xc78]
    // 0x4d2ef4: r0 = call 0x620258
    //     0x4d2ef4: bl           0x620258
  }

  _anon_closure() {
    // ** addr: 0x4d2ef8, size: 0xb0
    // 0x4d2ef8: EnterFrame
    //     0x4d2ef8: stp          fp, lr, [SP, #-0x10]!
    //     0x4d2efc: mov          fp, SP
    // 0x4d2f00: AllocStack(0x10)
    //     0x4d2f00: sub          SP, SP, #0x10
    //     0x4d2f04: ldr          r0, [fp, #0x10]
    // 0x4d2f08: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x4d2f08: ldur         r3, [r0, #0x17]
    //     0x4d2f0c: add          r3, r3, HEAP, lsl #32
    //     0x4d2f10: stur         r3, [fp, #-0x10]
    // 0x4d2f14: CheckStackOverflow
    //     0x4d2f14: ldr          BARRIER, [THR, #0x38]
    //     0x4d2f18: cmp          SP, BARRIER
    //     0x4d2f1c: b.ls         0x4d2fa0
    // 0x4d2f20: LoadField: r0 = r3->field_f
    //     0x4d2f20: ldur         r0, [r3, #0xf]
    //     0x4d2f24: add          r0, r0, HEAP, lsl #32
    // 0x4d2f28: LoadField: r1 = r0->field_2f
    //     0x4d2f28: ldur         r1, [r0, #0x2f]
    //     0x4d2f2c: add          r1, r1, HEAP, lsl #32
    //     0x4d2f30: tbnz         r1, #4, 0x4d2f44
    // 0x4d2f34: r0 = NULL
    //     0x4d2f34: mov          r0, NULL
    // 0x4d2f38: SP = fp
    //     0x4d2f38: mov          SP, fp
    // 0x4d2f3c: LeaveFrame
    //     0x4d2f3c: ldp          fp, lr, [SP], #0x10
    // 0x4d2f40: ret
    //     0x4d2f40: ret          
    // 0x4d2f44: LoadField: r0 = r3->field_13
    //     0x4d2f44: ldur         r0, [r3, #0x13]
    //     0x4d2f48: add          r0, r0, HEAP, lsl #32
    //     0x4d2f4c: sbfx         r4, r0, #1, #0x1f
    // 0x4d2f50: branchIfSmi(r0, 0x4d2f58)
    //     0x4d2f50: tbz          r0, #0, 0x4d2f58
    // 0x4d2f54: LoadField: r4 = r0->field_7
    //     0x4d2f54: ldur         r4, [r0, #7]
    // 0x4d2f58: r2 = r3
    //     0x4d2f58: mov          r2, r3
    //     0x4d2f5c: stur         r4, [fp, #-8]
    // 0x4d2f60: r1 = pp[0xc91]
    //     0x4d2f60: add          r1, PP, #0x11, lsl #12
    //     0x4d2f64: ldr          r1, [r1, #0xc80]
    // 0x4d2f68: r0 = call 0x61ec54
    //     0x4d2f68: bl           0x61ec54
    //     0x4d2f6c: ldur         r2, [fp, #-0x10]
    // 0x4d2f70: r1 = pp[0xc99]
    //     0x4d2f70: add          r1, PP, #0x11, lsl #12
    //     0x4d2f74: ldr          r1, [r1, #0xc88]
    //     0x4d2f78: stur         r0, [fp, #-0x10]
    // 0x4d2f7c: r0 = call 0x61ec54
    //     0x4d2f7c: bl           0x61ec54
    //     0x4d2f80: ldur         r1, [fp, #-8]
    //     0x4d2f84: ldur         r2, [fp, #-0x10]
    // 0x4d2f88: r3 = r0
    //     0x4d2f88: mov          r3, r0
    // 0x4d2f8c: r0 = soul_flutter_international$api$game_api_service_GameApiService::getGameFruitResultDialog()
    //     0x4d2f8c: bl           0x4444d0
    // 0x4d2f90: r0 = NULL
    //     0x4d2f90: mov          r0, NULL
    // 0x4d2f94: SP = fp
    //     0x4d2f94: mov          SP, fp
    // 0x4d2f98: LeaveFrame
    //     0x4d2f98: ldp          fp, lr, [SP], #0x10
    // 0x4d2f9c: ret
    //     0x4d2f9c: ret          
    // 0x4d2fa0: r0 = call 0x61fa28
    //     0x4d2fa0: bl           0x61fa28
    // 0x4d2fa4: b 0x4d2f20
    //     0x4d2fa4: b            0x4d2f20
  }

  _anon_closure() {
    // ** addr: 0x4d2fa8, size: 0x20
    //     0x4d2fa8: ldr          r1, [SP]
    // 0x4d2fac: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x4d2fac: ldur         r2, [r1, #0x17]
    //     0x4d2fb0: add          r2, r2, HEAP, lsl #32
    // 0x4d2fb4: LoadField: r1 = r2->field_f
    //     0x4d2fb4: ldur         r1, [r2, #0xf]
    //     0x4d2fb8: add          r1, r1, HEAP, lsl #32
    // 0x4d2fbc: StoreField: r1->field_6b = r22
    //     0x4d2fbc: stur         r22, [r1, #0x6b]
    // 0x4d2fc0: r0 = NULL
    //     0x4d2fc0: mov          r0, NULL
    // 0x4d2fc4: ret
    //     0x4d2fc4: ret          
  }

  _anon_closure() {
    // ** addr: 0x4d2fc8, size: 0x44
    //     0x4d2fc8: ldr          r1, [SP, #8]
    // 0x4d2fcc: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x4d2fcc: ldur         r2, [r1, #0x17]
    //     0x4d2fd0: add          r2, r2, HEAP, lsl #32
    // 0x4d2fd4: LoadField: r1 = r2->field_f
    //     0x4d2fd4: ldur         r1, [r2, #0xf]
    //     0x4d2fd8: add          r1, r1, HEAP, lsl #32
    //     0x4d2fdc: ldr          r0, [SP]
    // 0x4d2fe0: StoreField: r1->field_6b = r0
    //     0x4d2fe0: stur         r0, [r1, #0x6b]
    //     0x4d2fe4: ldurb        r16, [r1, #-1]
    //     0x4d2fe8: ldurb        r17, [r0, #-1]
    //     0x4d2fec: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d2ff0: tst          BARRIER, HEAP, lsr #32
    // 0x4d2ff4: b.eq 0x4d3004
    //     0x4d2ff4: b.eq         0x4d3004
    //     0x4d2ff8: str          lr, [SP, #-8]!
    // 0x4d2ffc: r0 = call 0x61e04c
    //     0x4d2ffc: bl           0x61e04c
    //     0x4d3000: ldr          lr, [SP], #8
    // 0x4d3004: r0 = NULL
    //     0x4d3004: mov          r0, NULL
    // 0x4d3008: ret
    //     0x4d3008: ret          
  }

  _startLotteryAnimation() {
    // ** addr: 0x4d300c, size: 0x158
    // 0x4d300c: EnterFrame
    //     0x4d300c: stp          fp, lr, [SP, #-0x10]!
    //     0x4d3010: mov          fp, SP
    // 0x4d3014: AllocStack(0x30)
    //     0x4d3014: sub          SP, SP, #0x30
    // 0x4d3018: r0 = r1
    //     0x4d3018: mov          r0, r1
    //     0x4d301c: stur         r1, [fp, #-0x18]
    //     0x4d3020: stur         r2, [fp, #-0x20]
    // 0x4d3024: CheckStackOverflow
    //     0x4d3024: ldr          BARRIER, [THR, #0x38]
    //     0x4d3028: cmp          SP, BARRIER
    //     0x4d302c: b.ls         0x4d315c
    // 0x4d3030: LoadField: r4 = r0->field_63
    //     0x4d3030: ldur         r4, [r0, #0x63]
    //     0x4d3034: add          r4, r4, HEAP, lsl #32
    //     0x4d3038: stur         r4, [fp, #-0x10]
    //     0x4d303c: cmp          r2, #2
    // 0x4d3040: b.lt 0x4d304c
    //     0x4d3040: b.lt         0x4d304c
    //     0x4d3044: cmp          r4, r22
    // 0x4d3048: b.ne 0x4d305c
    //     0x4d3048: b.ne         0x4d305c
    // 0x4d304c: r0 = NULL
    //     0x4d304c: mov          r0, NULL
    // 0x4d3050: SP = fp
    //     0x4d3050: mov          SP, fp
    // 0x4d3054: LeaveFrame
    //     0x4d3054: ldp          fp, lr, [SP], #0x10
    // 0x4d3058: ret
    //     0x4d3058: ret          
    //     0x4d305c: sub          r1, r2, #2
    //     0x4d3060: lsl          r5, r1, #3
    //     0x4d3064: lsl          r1, r5, #1
    //     0x4d3068: add          r5, r1, r3
    //     0x4d306c: stur         r5, [fp, #-8]
    // 0x4d3070: r1 = pp[0x908]
    //     0x4d3070: ldr          r1, [PP, #0x908]
    // 0x4d3074: r0 = call 0x4d3164
    //     0x4d3074: bl           0x4d3164
    // 0x4d3078: r2 = r0
    //     0x4d3078: mov          r2, r0
    //     0x4d307c: stur         r2, [fp, #-0x28]
    // 0x4d3080: StoreField: r2->field_b = wzr
    //     0x4d3080: stur         wzr, [r2, #0xb]
    //     0x4d3084: ldur         r3, [fp, #-8]
    //     0x4d3088: sbfiz        r0, r3, #1, #0x1f
    //     0x4d308c: cmp          r3, r0, asr #1
    // 0x4d3090: b.eq 0x4d309c
    //     0x4d3090: b.eq         0x4d309c
    // 0x4d3094: r0 = call 0x61fba8
    //     0x4d3094: bl           0x61fba8
    // 0x4d3098: StoreField: r0->field_7 = r3
    //     0x4d3098: stur         r3, [r0, #7]
    // 0x4d309c: StoreField: r2->field_f = r0
    //     0x4d309c: stur         r0, [r2, #0xf]
    // 0x4d30a0: r1 = pp[0x4b60]
    //     0x4d30a0: ldr          r1, [PP, #0x4b60]
    // 0x4d30a4: r0 = call 0x3ed5a8
    //     0x4d30a4: bl           0x3ed5a8
    // 0x4d30a8: r1 = r0
    //     0x4d30a8: mov          r1, r0
    //     0x4d30ac: ldur         r3, [fp, #-0x10]
    // 0x4d30b0: r2 = pp[0xd59]
    //     0x4d30b0: add          r2, PP, #0x11, lsl #12
    //     0x4d30b4: ldr          r2, [r2, #0xd48]
    //     0x4d30b8: stur         r0, [fp, #-0x30]
    // 0x4d30bc: r4 = pp[0x2e0]
    //     0x4d30bc: ldr          r4, [PP, #0x2e0]
    // 0x4d30c0: r0 = flutter$src$animation$animations_CurvedAnimation::ctor()
    //     0x4d30c0: bl           0x3ed464
    //     0x4d30c4: ldur         r1, [fp, #-0x28]
    //     0x4d30c8: ldur         r2, [fp, #-0x30]
    // 0x4d30cc: r0 = flutter$src$animation$tween_Animatable::animate()
    //     0x4d30cc: bl           0x3dfb24
    //     0x4d30d0: ldur         r1, [fp, #-0x18]
    // 0x4d30d4: StoreField: r1->field_67 = r0
    //     0x4d30d4: stur         r0, [r1, #0x67]
    //     0x4d30d8: ldurb        r16, [r1, #-1]
    //     0x4d30dc: ldurb        r17, [r0, #-1]
    //     0x4d30e0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d30e4: tst          BARRIER, HEAP, lsr #32
    // 0x4d30e8: b.eq 0x4d30f0
    //     0x4d30e8: b.eq         0x4d30f0
    // 0x4d30ec: r0 = call 0x61e04c
    //     0x4d30ec: bl           0x61e04c
    //     0x4d30f0: ldur         r1, [fp, #-0x10]
    // 0x4d30f4: r0 = flutter$src$animation$animation_controller_AnimationController::reset()
    //     0x4d30f4: bl           0x4d23e4
    //     0x4d30f8: ldur         r0, [fp, #-0x20]
    //     0x4d30fc: sub          r1, r0, #1
    //     0x4d3100: mov          BARRIER, #0x4240
    //     0x4d3104: movk         BARRIER, #0xf, lsl #16
    //     0x4d3108: mul          r0, r1, BARRIER
    //     0x4d310c: stur         r0, [fp, #-8]
    // 0x4d3110: r0 = call 0x28d374
    //     0x4d3110: bl           0x28d374
    // 0x4d3114: r1 = r0
    //     0x4d3114: mov          r1, r0
    //     0x4d3118: ldur         r0, [fp, #-8]
    // 0x4d311c: StoreField: r1->field_7 = r0
    //     0x4d311c: stur         r0, [r1, #7]
    // 0x4d3120: r0 = r1
    //     0x4d3120: mov          r0, r1
    //     0x4d3124: ldur         r1, [fp, #-0x10]
    // 0x4d3128: StoreField: r1->field_27 = r0
    //     0x4d3128: stur         r0, [r1, #0x27]
    //     0x4d312c: ldurb        r16, [r1, #-1]
    //     0x4d3130: ldurb        r17, [r0, #-1]
    //     0x4d3134: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d3138: tst          BARRIER, HEAP, lsr #32
    // 0x4d313c: b.eq 0x4d3144
    //     0x4d313c: b.eq         0x4d3144
    // 0x4d3140: r0 = call 0x61e04c
    //     0x4d3140: bl           0x61e04c
    // 0x4d3144: r4 = pp[0x4c0]
    //     0x4d3144: ldr          r4, [PP, #0x4c0]
    // 0x4d3148: r0 = flutter$src$animation$animation_controller_AnimationController::forward()
    //     0x4d3148: bl           0x363c64
    // 0x4d314c: r0 = NULL
    //     0x4d314c: mov          r0, NULL
    // 0x4d3150: SP = fp
    //     0x4d3150: mov          SP, fp
    // 0x4d3154: LeaveFrame
    //     0x4d3154: ldp          fp, lr, [SP], #0x10
    // 0x4d3158: ret
    //     0x4d3158: ret          
    // 0x4d315c: r0 = call 0x61fa28
    //     0x4d315c: bl           0x61fa28
    // 0x4d3160: b 0x4d3030
    //     0x4d3160: b            0x4d3030
  }

  _updateLotteryIndex() {
    // ** addr: 0x4d3170, size: 0x5c
    // 0x4d3170: EnterFrame
    //     0x4d3170: stp          fp, lr, [SP, #-0x10]!
    //     0x4d3174: mov          fp, SP
    // 0x4d3178: CheckStackOverflow
    //     0x4d3178: ldr          BARRIER, [THR, #0x38]
    //     0x4d317c: cmp          SP, BARRIER
    //     0x4d3180: b.ls         0x4d31c4
    // 0x4d3184: LoadField: r0 = r1->field_53
    //     0x4d3184: ldur         r0, [r1, #0x53]
    //     0x4d3188: add          r0, r0, HEAP, lsl #32
    // 0x4d318c: BARRIER = pp[0xd71]
    //     0x4d318c: add          BARRIER, PP, #0x11, lsl #12
    //     0x4d3190: ldr          BARRIER, [BARRIER, #0xd60]
    //     0x4d3194: cmp          r0, r16
    // 0x4d3198: b.eq 0x4d31ac
    //     0x4d3198: b.eq         0x4d31ac
    // 0x4d319c: r0 = NULL
    //     0x4d319c: mov          r0, NULL
    // 0x4d31a0: SP = fp
    //     0x4d31a0: mov          SP, fp
    // 0x4d31a4: LeaveFrame
    //     0x4d31a4: ldp          fp, lr, [SP], #0x10
    // 0x4d31a8: ret
    //     0x4d31a8: ret          
    // 0x4d31ac: StoreField: r1->field_4b = r2
    //     0x4d31ac: stur         r2, [r1, #0x4b]
    // 0x4d31b0: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x4d31b0: bl           0x3ac980
    // 0x4d31b4: r0 = NULL
    //     0x4d31b4: mov          r0, NULL
    // 0x4d31b8: SP = fp
    //     0x4d31b8: mov          SP, fp
    // 0x4d31bc: LeaveFrame
    //     0x4d31bc: ldp          fp, lr, [SP], #0x10
    // 0x4d31c0: ret
    //     0x4d31c0: ret          
    // 0x4d31c4: r0 = call 0x61fa28
    //     0x4d31c4: bl           0x61fa28
    // 0x4d31c8: b 0x4d3184
    //     0x4d31c8: b            0x4d3184
  }

  _handleBetProcess() {
    // ** addr: 0x4d31cc, size: 0xf4
    // 0x4d31cc: EnterFrame
    //     0x4d31cc: stp          fp, lr, [SP, #-0x10]!
    //     0x4d31d0: mov          fp, SP
    // 0x4d31d4: d0 = pp[0xc41]
    //     0x4d31d4: add          r17, PP, #0x11, lsl #12
    //     0x4d31d8: ldr          d0, [r17, #0xc30]
    // 0x4d31dc: CheckStackOverflow
    //     0x4d31dc: ldr          BARRIER, [THR, #0x38]
    //     0x4d31e0: cmp          SP, BARRIER
    //     0x4d31e4: b.ls         0x4d3278
    // 0x4d31e8: LoadField: r0 = r1->field_57
    //     0x4d31e8: ldur         r0, [r1, #0x57]
    //     0x4d31ec: add          r0, r0, HEAP, lsl #32
    // 0x4d31f0: LoadField: r2 = r0->field_1b
    //     0x4d31f0: ldur         r2, [r0, #0x1b]
    //     0x4d31f4: add          r2, r2, HEAP, lsl #32
    // 0x4d31f8: BARRIER = pp[0x40]
    //     0x4d31f8: ldr          BARRIER, [PP, #0x40]
    //     0x4d31fc: cmp          r2, r16
    // 0x4d3200: b.eq 0x4d3280
    //     0x4d3200: b.eq         0x4d3280
    // 0x4d3204: LoadField: r3 = r0->field_23
    //     0x4d3204: ldur         r3, [r0, #0x23]
    //     0x4d3208: add          r3, r3, HEAP, lsl #32
    // 0x4d320c: BARRIER = pp[0x40]
    //     0x4d320c: ldr          BARRIER, [PP, #0x40]
    //     0x4d3210: cmp          r3, r16
    // 0x4d3214: b.eq 0x4d328c
    //     0x4d3214: b.eq         0x4d328c
    //     0x4d3218: sbfx         r0, r2, #1, #0x1f
    // 0x4d321c: branchIfSmi(r2, 0x4d3224)
    //     0x4d321c: tbz          r2, #0, 0x4d3224
    // 0x4d3220: LoadField: r0 = r2->field_7
    //     0x4d3220: ldur         r0, [r2, #7]
    //     0x4d3224: sbfx         r2, r3, #1, #0x1f
    // 0x4d3228: branchIfSmi(r3, 0x4d3230)
    //     0x4d3228: tbz          r3, #0, 0x4d3230
    // 0x4d322c: LoadField: r2 = r3->field_7
    //     0x4d322c: ldur         r2, [r3, #7]
    //     0x4d3230: sub          r3, r0, r2
    //     0x4d3234: scvtf        d1, r3
    //     0x4d3238: fdiv         d2, d1, d0
    //     0x4d323c: fcmp         d2, d2
    // 0x4d3240: b.vs 0x4d3298
    //     0x4d3240: b.vs         0x4d3298
    //     0x4d3244: fcvtps       r0, d2
    //     0x4d3248: asr          BARRIER, r0, #0x1e
    //     0x4d324c: cmp          BARRIER, r0, asr #63
    // 0x4d3250: b.ne 0x4d3298
    //     0x4d3250: b.ne         0x4d3298
    //     0x4d3254: lsl          r0, r0, #1
    //     0x4d3258: sbfx         r2, r0, #1, #0x1f
    // 0x4d325c: branchIfSmi(r0, 0x4d3264)
    //     0x4d325c: tbz          r0, #0, 0x4d3264
    // 0x4d3260: LoadField: r2 = r0->field_7
    //     0x4d3260: ldur         r2, [r0, #7]
    // 0x4d3264: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_startCountDown()
    //     0x4d3264: bl           0x4d2a74
    // 0x4d3268: r0 = NULL
    //     0x4d3268: mov          r0, NULL
    // 0x4d326c: SP = fp
    //     0x4d326c: mov          SP, fp
    // 0x4d3270: LeaveFrame
    //     0x4d3270: ldp          fp, lr, [SP], #0x10
    // 0x4d3274: ret
    //     0x4d3274: ret          
    // 0x4d3278: r0 = call 0x61faa8
    //     0x4d3278: bl           0x61faa8
    // 0x4d327c: b 0x4d31e8
    //     0x4d327c: b            0x4d31e8
    // 0x4d3280: r9 = pp[0xc69]
    //     0x4d3280: add          r9, PP, #0x11, lsl #12
    //     0x4d3284: ldr          r9, [r9, #0xc58]
    // 0x4d3288: r0 = call 0x6202a8
    //     0x4d3288: bl           0x6202a8
    // 0x4d328c: r9 = pp[0xc51]
    //     0x4d328c: add          r9, PP, #0x11, lsl #12
    //     0x4d3290: ldr          r9, [r9, #0xc40]
    // 0x4d3294: r0 = call 0x6202a8
    //     0x4d3294: bl           0x6202a8
    //     0x4d3298: str          q2, [SP, #-0x10]!
    //     0x4d329c: str          r1, [SP, #-8]!
    //     0x4d32a0: fmov         d0, d2
    //     0x4d32a4: mov          r0, #0x40
    // 0x4d32a8: lr = pp[0x3110]
    //     0x4d32a8: ldr          lr, [PP, #0x3110]
    //     0x4d32ac: ldur         lr, [lr, #7]
    // 0x4d32b0: r0 = [R]()
    //     0x4d32b0: blr          lr
    //     0x4d32b4: ldr          r1, [SP], #8
    //     0x4d32b8: ldr          q2, [SP], #0x10
    // 0x4d32bc: b 0x4d3258
    //     0x4d32bc: b            0x4d3258
  }

  _anon_closure() {
    // ** addr: 0x4d32c0, size: 0x78
    //     0x4d32c0: ldr          r1, [SP, #8]
    // 0x4d32c4: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x4d32c4: ldur         r2, [r1, #0x17]
    //     0x4d32c8: add          r2, r2, HEAP, lsl #32
    //     0x4d32cc: ldr          r1, [SP]
    // 0x4d32d0: LoadField: r3 = r1->field_7
    //     0x4d32d0: ldur         r3, [r1, #7]
    //     0x4d32d4: add          r3, r3, HEAP, lsl #32
    // 0x4d32d8: LoadField: r1 = r2->field_f
    //     0x4d32d8: ldur         r1, [r2, #0xf]
    //     0x4d32dc: add          r1, r1, HEAP, lsl #32
    // 0x4d32e0: LoadField: r2 = r1->field_7
    //     0x4d32e0: ldur         r2, [r1, #7]
    //     0x4d32e4: add          r2, r2, HEAP, lsl #32
    //     0x4d32e8: cmp          r3, r2
    // 0x4d32ec: b.eq 0x4d3330
    //     0x4d32ec: b.eq         0x4d3330
    //     0x4d32f0: and          r16, r3, r2
    // 0x4d32f4: branchIfSmi(r16, 0x4d3328)
    //     0x4d32f4: tbz          r16, #0, 0x4d3328
    // 0x4d32f8: BARRIER = LoadClassIdInstr(r3)
    //     0x4d32f8: ldur         BARRIER, [r3, #-1]
    //     0x4d32fc: ubfx         BARRIER, BARRIER, #0xc, #0x14
    //     0x4d3300: cmp          BARRIER, #0x3d
    // 0x4d3304: b.ne 0x4d3328
    //     0x4d3304: b.ne         0x4d3328
    // 0x4d3308: BARRIER = LoadClassIdInstr(r2)
    //     0x4d3308: ldur         BARRIER, [r2, #-1]
    //     0x4d330c: ubfx         BARRIER, BARRIER, #0xc, #0x14
    //     0x4d3310: cmp          BARRIER, #0x3d
    // 0x4d3314: b.ne 0x4d3328
    //     0x4d3314: b.ne         0x4d3328
    // 0x4d3318: LoadField: BARRIER = r3->field_7
    //     0x4d3318: ldur         BARRIER, [r3, #7]
    // 0x4d331c: LoadField: r17 = r2->field_7
    //     0x4d331c: ldur         r17, [r2, #7]
    //     0x4d3320: cmp          BARRIER, r17
    // 0x4d3324: b.eq 0x4d3330
    //     0x4d3324: b.eq         0x4d3330
    //     0x4d3328: add          r0, NULL, #0x30
    // 0x4d332c: b 0x4d3334
    //     0x4d332c: b            0x4d3334
    //     0x4d3330: add          r0, NULL, #0x20
    // 0x4d3334: ret
    //     0x4d3334: ret          
  }

  getFruitLandResource() {
    // ** addr: 0x4d3b18, size: 0x80
    // 0x4d3b18: EnterFrame
    //     0x4d3b18: stp          fp, lr, [SP, #-0x10]!
    //     0x4d3b1c: mov          fp, SP
    // 0x4d3b20: AllocStack(0x10)
    //     0x4d3b20: sub          SP, SP, #0x10
    //     0x4d3b24: stur         r1, [fp, #-8]
    // 0x4d3b28: CheckStackOverflow
    //     0x4d3b28: ldr          BARRIER, [THR, #0x38]
    //     0x4d3b2c: cmp          SP, BARRIER
    //     0x4d3b30: b.ls         0x4d3b90
    //     0x4d3b34: mov          r1, #1
    // 0x4d3b38: r0 = call 0x61e890
    //     0x4d3b38: bl           0x61e890
    // 0x4d3b3c: r2 = r0
    //     0x4d3b3c: mov          r2, r0
    //     0x4d3b40: ldur         r0, [fp, #-8]
    //     0x4d3b44: stur         r2, [fp, #-0x10]
    // 0x4d3b48: StoreField: r2->field_f = r0
    //     0x4d3b48: stur         r0, [r2, #0xf]
    // 0x4d3b4c: LoadField: r1 = r0->field_33
    //     0x4d3b4c: ldur         r1, [r0, #0x33]
    //     0x4d3b50: add          r1, r1, HEAP, lsl #32
    // 0x4d3b54: r0 = dart_core__GrowableList::clear()
    //     0x4d3b54: bl           0x2b3608
    //     0x4d3b58: ldur         r0, [fp, #-8]
    // 0x4d3b5c: LoadField: r1 = r0->field_3b
    //     0x4d3b5c: ldur         r1, [r0, #0x3b]
    //     0x4d3b60: add          r1, r1, HEAP, lsl #32
    // 0x4d3b64: r0 = dart_core__GrowableList::clear()
    //     0x4d3b64: bl           0x2b3608
    //     0x4d3b68: ldur         r2, [fp, #-0x10]
    // 0x4d3b6c: r1 = pp[0x315]
    //     0x4d3b6c: add          r1, PP, #0x15, lsl #12
    //     0x4d3b70: ldr          r1, [r1, #0x300]
    // 0x4d3b74: r0 = call 0x61ec54
    //     0x4d3b74: bl           0x61ec54
    // 0x4d3b78: r1 = r0
    //     0x4d3b78: mov          r1, r0
    // 0x4d3b7c: r0 = soul_flutter_international$api$game_api_service_GameApiService::getFruitGameResource()
    //     0x4d3b7c: bl           0x4d3b98
    // 0x4d3b80: r0 = NULL
    //     0x4d3b80: mov          r0, NULL
    // 0x4d3b84: SP = fp
    //     0x4d3b84: mov          SP, fp
    // 0x4d3b88: LeaveFrame
    //     0x4d3b88: ldp          fp, lr, [SP], #0x10
    // 0x4d3b8c: ret
    //     0x4d3b8c: ret          
    // 0x4d3b90: r0 = call 0x61fa28
    //     0x4d3b90: bl           0x61fa28
    // 0x4d3b94: b 0x4d3b34
    //     0x4d3b94: b            0x4d3b34
  }

  _anon_closure() {
    // ** addr: 0x4d3efc, size: 0xe8
    // 0x4d3efc: EnterFrame
    //     0x4d3efc: stp          fp, lr, [SP, #-0x10]!
    //     0x4d3f00: mov          fp, SP
    // 0x4d3f04: AllocStack(8)
    //     0x4d3f04: sub          SP, SP, #8
    //     0x4d3f08: ldr          r0, [fp, #0x18]
    // 0x4d3f0c: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x4d3f0c: ldur         r3, [r0, #0x17]
    //     0x4d3f10: add          r3, r3, HEAP, lsl #32
    //     0x4d3f14: stur         r3, [fp, #-8]
    // 0x4d3f18: CheckStackOverflow
    //     0x4d3f18: ldr          BARRIER, [THR, #0x38]
    //     0x4d3f1c: cmp          SP, BARRIER
    //     0x4d3f20: b.ls         0x4d3fc4
    // 0x4d3f24: LoadField: r0 = r3->field_f
    //     0x4d3f24: ldur         r0, [r3, #0xf]
    //     0x4d3f28: add          r0, r0, HEAP, lsl #32
    // 0x4d3f2c: LoadField: r1 = r0->field_2f
    //     0x4d3f2c: ldur         r1, [r0, #0x2f]
    //     0x4d3f30: add          r1, r1, HEAP, lsl #32
    //     0x4d3f34: tbnz         r1, #4, 0x4d3f48
    // 0x4d3f38: r0 = NULL
    //     0x4d3f38: mov          r0, NULL
    // 0x4d3f3c: SP = fp
    //     0x4d3f3c: mov          SP, fp
    // 0x4d3f40: LeaveFrame
    //     0x4d3f40: ldp          fp, lr, [SP], #0x10
    // 0x4d3f44: ret
    //     0x4d3f44: ret          
    //     0x4d3f48: ldr          r4, [fp, #0x10]
    // 0x4d3f4c: LoadField: r1 = r0->field_33
    //     0x4d3f4c: ldur         r1, [r0, #0x33]
    //     0x4d3f50: add          r1, r1, HEAP, lsl #32
    // 0x4d3f54: LoadField: r2 = r4->field_7
    //     0x4d3f54: ldur         r2, [r4, #7]
    //     0x4d3f58: add          r2, r2, HEAP, lsl #32
    // 0x4d3f5c: BARRIER = pp[0x40]
    //     0x4d3f5c: ldr          BARRIER, [PP, #0x40]
    //     0x4d3f60: cmp          r2, r16
    // 0x4d3f64: b.eq 0x4d3fcc
    //     0x4d3f64: b.eq         0x4d3fcc
    // 0x4d3f68: r0 = dart_core__GrowableList::addAll()
    //     0x4d3f68: bl           0x2ce4e8
    //     0x4d3f6c: ldur         r0, [fp, #-8]
    // 0x4d3f70: LoadField: r1 = r0->field_f
    //     0x4d3f70: ldur         r1, [r0, #0xf]
    //     0x4d3f74: add          r1, r1, HEAP, lsl #32
    // 0x4d3f78: LoadField: r2 = r1->field_3b
    //     0x4d3f78: ldur         r2, [r1, #0x3b]
    //     0x4d3f7c: add          r2, r2, HEAP, lsl #32
    //     0x4d3f80: ldr          r1, [fp, #0x10]
    // 0x4d3f84: LoadField: r3 = r1->field_b
    //     0x4d3f84: ldur         r3, [r1, #0xb]
    //     0x4d3f88: add          r3, r3, HEAP, lsl #32
    // 0x4d3f8c: BARRIER = pp[0x40]
    //     0x4d3f8c: ldr          BARRIER, [PP, #0x40]
    //     0x4d3f90: cmp          r3, r16
    // 0x4d3f94: b.eq 0x4d3fd8
    //     0x4d3f94: b.eq         0x4d3fd8
    // 0x4d3f98: r1 = r2
    //     0x4d3f98: mov          r1, r2
    // 0x4d3f9c: r2 = r3
    //     0x4d3f9c: mov          r2, r3
    // 0x4d3fa0: r0 = dart_core__GrowableList::addAll()
    //     0x4d3fa0: bl           0x2ce4e8
    //     0x4d3fa4: ldur         r0, [fp, #-8]
    // 0x4d3fa8: LoadField: r1 = r0->field_f
    //     0x4d3fa8: ldur         r1, [r0, #0xf]
    //     0x4d3fac: add          r1, r1, HEAP, lsl #32
    // 0x4d3fb0: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x4d3fb0: bl           0x3ac980
    // 0x4d3fb4: r0 = NULL
    //     0x4d3fb4: mov          r0, NULL
    // 0x4d3fb8: SP = fp
    //     0x4d3fb8: mov          SP, fp
    // 0x4d3fbc: LeaveFrame
    //     0x4d3fbc: ldp          fp, lr, [SP], #0x10
    // 0x4d3fc0: ret
    //     0x4d3fc0: ret          
    // 0x4d3fc4: r0 = call 0x61fa28
    //     0x4d3fc4: bl           0x61fa28
    // 0x4d3fc8: b 0x4d3f24
    //     0x4d3fc8: b            0x4d3f24
    // 0x4d3fcc: r9 = pp[0x31d]
    //     0x4d3fcc: add          r9, PP, #0x15, lsl #12
    //     0x4d3fd0: ldr          r9, [r9, #0x308]
    // 0x4d3fd4: r0 = call 0x620258
    //     0x4d3fd4: bl           0x620258
    // 0x4d3fd8: r9 = pp[0x325]
    //     0x4d3fd8: add          r9, PP, #0x15, lsl #12
    //     0x4d3fdc: ldr          r9, [r9, #0x310]
    // 0x4d3fe0: r0 = call 0x620258
    //     0x4d3fe0: bl           0x620258
  }

  initAnimation() {
    // ** addr: 0x4d3fe4, size: 0xac
    // 0x4d3fe4: EnterFrame
    //     0x4d3fe4: stp          fp, lr, [SP, #-0x10]!
    //     0x4d3fe8: mov          fp, SP
    // 0x4d3fec: AllocStack(0x18)
    //     0x4d3fec: sub          SP, SP, #0x18
    //     0x4d3ff0: stur         r1, [fp, #-8]
    //     0x4d3ff4: stur         r2, [fp, #-0x10]
    // 0x4d3ff8: CheckStackOverflow
    //     0x4d3ff8: ldr          BARRIER, [THR, #0x38]
    //     0x4d3ffc: cmp          SP, BARRIER
    //     0x4d4000: b.ls         0x4d4088
    //     0x4d4004: mov          r1, #1
    // 0x4d4008: r0 = call 0x61e890
    //     0x4d4008: bl           0x61e890
    // 0x4d400c: r2 = r0
    //     0x4d400c: mov          r2, r0
    //     0x4d4010: ldur         r0, [fp, #-8]
    //     0x4d4014: stur         r2, [fp, #-0x18]
    // 0x4d4018: StoreField: r2->field_f = r0
    //     0x4d4018: stur         r0, [r2, #0xf]
    // 0x4d401c: r1 = pp[0x4b60]
    //     0x4d401c: ldr          r1, [PP, #0x4b60]
    // 0x4d4020: r0 = call 0x30f9b4
    //     0x4d4020: bl           0x30f9b4
    // 0x4d4024: r1 = r0
    //     0x4d4024: mov          r1, r0
    //     0x4d4028: ldur         r2, [fp, #-0x10]
    //     0x4d402c: stur         r0, [fp, #-0x10]
    // 0x4d4030: r4 = pp[0x278]
    //     0x4d4030: ldr          r4, [PP, #0x278]
    // 0x4d4034: r0 = flutter$src$animation$animation_controller_AnimationController::ctor()
    //     0x4d4034: bl           0x30f2bc
    //     0x4d4038: ldur         r2, [fp, #-0x18]
    // 0x4d403c: r1 = pp[0x385]
    //     0x4d403c: add          r1, PP, #0x15, lsl #12
    //     0x4d4040: ldr          r1, [r1, #0x370]
    // 0x4d4044: r0 = call 0x61ec54
    //     0x4d4044: bl           0x61ec54
    //     0x4d4048: ldur         r1, [fp, #-0x10]
    // 0x4d404c: r2 = r0
    //     0x4d404c: mov          r2, r0
    // 0x4d4050: r0 = flutter$src$animation$animation_controller__AnimationController&Animation&AnimationEagerListenerMixin&AnimationLocalListenersMixin::addListener()
    //     0x4d4050: bl           0x4f8f44
    //     0x4d4054: ldur         r0, [fp, #-0x10]
    //     0x4d4058: ldur         r1, [fp, #-8]
    // 0x4d405c: StoreField: r1->field_63 = r0
    //     0x4d405c: stur         r0, [r1, #0x63]
    //     0x4d4060: ldurb        r16, [r1, #-1]
    //     0x4d4064: ldurb        r17, [r0, #-1]
    //     0x4d4068: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d406c: tst          BARRIER, HEAP, lsr #32
    // 0x4d4070: b.eq 0x4d4078
    //     0x4d4070: b.eq         0x4d4078
    // 0x4d4074: r0 = call 0x61e04c
    //     0x4d4074: bl           0x61e04c
    // 0x4d4078: r0 = NULL
    //     0x4d4078: mov          r0, NULL
    // 0x4d407c: SP = fp
    //     0x4d407c: mov          SP, fp
    // 0x4d4080: LeaveFrame
    //     0x4d4080: ldp          fp, lr, [SP], #0x10
    // 0x4d4084: ret
    //     0x4d4084: ret          
    // 0x4d4088: r0 = call 0x61fa28
    //     0x4d4088: bl           0x61fa28
    // 0x4d408c: b 0x4d4004
    //     0x4d408c: b            0x4d4004
  }

  _anon_closure() {
    // ** addr: 0x4d4090, size: 0xa0
    // 0x4d4090: EnterFrame
    //     0x4d4090: stp          fp, lr, [SP, #-0x10]!
    //     0x4d4094: mov          fp, SP
    // 0x4d4098: AllocStack(8)
    //     0x4d4098: sub          SP, SP, #8
    //     0x4d409c: ldr          r0, [fp, #0x10]
    // 0x4d40a0: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d40a0: ldur         r1, [r0, #0x17]
    //     0x4d40a4: add          r1, r1, HEAP, lsl #32
    // 0x4d40a8: CheckStackOverflow
    //     0x4d40a8: ldr          BARRIER, [THR, #0x38]
    //     0x4d40ac: cmp          SP, BARRIER
    //     0x4d40b0: b.ls         0x4d4128
    // 0x4d40b4: LoadField: r0 = r1->field_f
    //     0x4d40b4: ldur         r0, [r1, #0xf]
    //     0x4d40b8: add          r0, r0, HEAP, lsl #32
    //     0x4d40bc: stur         r0, [fp, #-8]
    // 0x4d40c0: LoadField: r1 = r0->field_67
    //     0x4d40c0: ldur         r1, [r0, #0x67]
    //     0x4d40c4: add          r1, r1, HEAP, lsl #32
    //     0x4d40c8: cmp          r1, r22
    // 0x4d40cc: b.eq 0x4d4118
    //     0x4d40cc: b.eq         0x4d4118
    // 0x4d40d0: LoadField: r2 = r1->field_f
    //     0x4d40d0: ldur         r2, [r1, #0xf]
    //     0x4d40d4: add          r2, r2, HEAP, lsl #32
    // 0x4d40d8: LoadField: r3 = r1->field_b
    //     0x4d40d8: ldur         r3, [r1, #0xb]
    //     0x4d40dc: add          r3, r3, HEAP, lsl #32
    // 0x4d40e0: r1 = r2
    //     0x4d40e0: mov          r1, r2
    // 0x4d40e4: r2 = r3
    //     0x4d40e4: mov          r2, r3
    // 0x4d40e8: r0 = flutter$src$animation$tween_Animatable::evaluate()
    //     0x4d40e8: bl           0x361080
    //     0x4d40ec: sbfx         r1, r0, #1, #0x1f
    // 0x4d40f0: branchIfSmi(r0, 0x4d40f8)
    //     0x4d40f0: tbz          r0, #0, 0x4d40f8
    // 0x4d40f4: LoadField: r1 = r0->field_7
    //     0x4d40f4: ldur         r1, [r0, #7]
    //     0x4d40f8: mov          r0, #7
    //     0x4d40fc: and          r2, r1, r0
    //     0x4d4100: ubfx         r2, r2, #0, #0x20
    //     0x4d4104: ldur         r1, [fp, #-8]
    // 0x4d4108: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_getItemIndex()
    //     0x4d4108: bl           0x4d4130
    //     0x4d410c: ldur         r1, [fp, #-8]
    // 0x4d4110: r2 = r0
    //     0x4d4110: mov          r2, r0
    // 0x4d4114: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_updateLotteryIndex()
    //     0x4d4114: bl           0x4d3170
    // 0x4d4118: r0 = NULL
    //     0x4d4118: mov          r0, NULL
    // 0x4d411c: SP = fp
    //     0x4d411c: mov          SP, fp
    // 0x4d4120: LeaveFrame
    //     0x4d4120: ldp          fp, lr, [SP], #0x10
    // 0x4d4124: ret
    //     0x4d4124: ret          
    // 0x4d4128: r0 = call 0x61fa28
    //     0x4d4128: bl           0x61fa28
    // 0x4d412c: b 0x4d40b4
    //     0x4d412c: b            0x4d40b4
  }

  _getItemIndex() {
    // ** addr: 0x4d4130, size: 0x88
    //     0x4d4130: tbnz         r2, #0x3f, 0x4d413c
    //     0x4d4134: cmp          r2, #8
    // 0x4d4138: b.lt 0x4d4144
    //     0x4d4138: b.lt         0x4d4144
    //     0x4d413c: mov          r0, #-1
    // 0x4d4140: ret
    //     0x4d4140: ret          
    //     0x4d4144: mov          r3, #0
    // 0x4d4148: r1 = pp[0x225]
    //     0x4d4148: add          r1, PP, #0x15, lsl #12
    //     0x4d414c: ldr          r1, [r1, #0x210]
    // 0x4d4150: CheckStackOverflow
    //     0x4d4150: ldr          BARRIER, [THR, #0x38]
    //     0x4d4154: cmp          SP, BARRIER
    //     0x4d4158: b.ls         0x4d41a0
    //     0x4d415c: cmp          r3, #9
    // 0x4d4160: b.ge 0x4d4198
    //     0x4d4160: b.ge         0x4d4198
    //     0x4d4164: add          BARRIER, r1, r3, lsl #2
    // 0x4d4168: LoadField: r4 = BARRIER->field_f
    //     0x4d4168: ldur         r4, [BARRIER, #0xf]
    //     0x4d416c: add          r4, r4, HEAP, lsl #32
    //     0x4d4170: sbfx         r5, r4, #1, #0x1f
    // 0x4d4174: branchIfSmi(r4, 0x4d417c)
    //     0x4d4174: tbz          r4, #0, 0x4d417c
    // 0x4d4178: LoadField: r5 = r4->field_7
    //     0x4d4178: ldur         r5, [r4, #7]
    //     0x4d417c: cmp          r5, r2
    // 0x4d4180: b.eq 0x4d4190
    //     0x4d4180: b.eq         0x4d4190
    //     0x4d4184: add          r0, r3, #1
    // 0x4d4188: r3 = r0
    //     0x4d4188: mov          r3, r0
    // 0x4d418c: b 0x4d4150
    //     0x4d418c: b            0x4d4150
    // 0x4d4190: r0 = r3
    //     0x4d4190: mov          r0, r3
    // 0x4d4194: b 0x4d419c
    //     0x4d4194: b            0x4d419c
    //     0x4d4198: mov          r0, #-1
    // 0x4d419c: ret
    //     0x4d419c: ret          
    // 0x4d41a0: EnterFrame
    //     0x4d41a0: stp          fp, lr, [SP, #-0x10]!
    //     0x4d41a4: mov          fp, SP
    // 0x4d41a8: r0 = call 0x61fa28
    //     0x4d41a8: bl           0x61fa28
    // 0x4d41ac: SP = fp
    //     0x4d41ac: mov          SP, fp
    // 0x4d41b0: LeaveFrame
    //     0x4d41b0: ldp          fp, lr, [SP], #0x10
    // 0x4d41b4: b 0x4d415c
    //     0x4d41b4: b            0x4d415c
  }

  onFinished() {
    // ** addr: 0x5e9b88, size: 0x30
    // 0x5e9b88: EnterFrame
    //     0x5e9b88: stp          fp, lr, [SP, #-0x10]!
    //     0x5e9b8c: mov          fp, SP
    // 0x5e9b90: CheckStackOverflow
    //     0x5e9b90: ldr          BARRIER, [THR, #0x38]
    //     0x5e9b94: cmp          SP, BARRIER
    //     0x5e9b98: b.ls         0x5e9bb0
    // 0x5e9b9c: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::getCurrentProcess()
    //     0x5e9b9c: bl           0x4d1c04
    // 0x5e9ba0: r0 = NULL
    //     0x5e9ba0: mov          r0, NULL
    // 0x5e9ba4: SP = fp
    //     0x5e9ba4: mov          SP, fp
    // 0x5e9ba8: LeaveFrame
    //     0x5e9ba8: ldp          fp, lr, [SP], #0x10
    // 0x5e9bac: ret
    //     0x5e9bac: ret          
    // 0x5e9bb0: r0 = call 0x61fa28
    //     0x5e9bb0: bl           0x61fa28
    // 0x5e9bb4: b 0x5e9b9c
    //     0x5e9bb4: b            0x5e9b9c
  }

  onTimed() {
    // ** addr: 0x5e9bb8, size: 0x30
    // 0x5e9bb8: EnterFrame
    //     0x5e9bb8: stp          fp, lr, [SP, #-0x10]!
    //     0x5e9bbc: mov          fp, SP
    // 0x5e9bc0: CheckStackOverflow
    //     0x5e9bc0: ldr          BARRIER, [THR, #0x38]
    //     0x5e9bc4: cmp          SP, BARRIER
    //     0x5e9bc8: b.ls         0x5e9be0
    // 0x5e9bcc: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::_updateShowTime()
    //     0x5e9bcc: bl           0x5e9be8
    // 0x5e9bd0: r0 = NULL
    //     0x5e9bd0: mov          r0, NULL
    // 0x5e9bd4: SP = fp
    //     0x5e9bd4: mov          SP, fp
    // 0x5e9bd8: LeaveFrame
    //     0x5e9bd8: ldp          fp, lr, [SP], #0x10
    // 0x5e9bdc: ret
    //     0x5e9bdc: ret          
    // 0x5e9be0: r0 = call 0x61fa28
    //     0x5e9be0: bl           0x61fa28
    // 0x5e9be4: b 0x5e9bcc
    //     0x5e9be4: b            0x5e9bcc
  }

  _updateShowTime() {
    // ** addr: 0x5e9be8, size: 0xa0
    // 0x5e9be8: EnterFrame
    //     0x5e9be8: stp          fp, lr, [SP, #-0x10]!
    //     0x5e9bec: mov          fp, SP
    // 0x5e9bf0: AllocStack(0x10)
    //     0x5e9bf0: sub          SP, SP, #0x10
    // 0x5e9bf4: r3 = r1
    //     0x5e9bf4: mov          r3, r1
    //     0x5e9bf8: stur         r1, [fp, #-8]
    // 0x5e9bfc: CheckStackOverflow
    //     0x5e9bfc: ldr          BARRIER, [THR, #0x38]
    //     0x5e9c00: cmp          SP, BARRIER
    //     0x5e9c04: b.ls         0x5e9c80
    // 0x5e9c08: LoadField: r0 = r3->field_53
    //     0x5e9c08: ldur         r0, [r3, #0x53]
    //     0x5e9c0c: add          r0, r0, HEAP, lsl #32
    // 0x5e9c10: BARRIER = pp[0x84b]
    //     0x5e9c10: add          BARRIER, PP, #0xb, lsl #12
    //     0x5e9c14: ldr          BARRIER, [BARRIER, #0x840]
    //     0x5e9c18: cmp          r0, r16
    // 0x5e9c1c: b.ne 0x5e9c30
    //     0x5e9c1c: b.ne         0x5e9c30
    // 0x5e9c20: r0 = NULL
    //     0x5e9c20: mov          r0, NULL
    // 0x5e9c24: SP = fp
    //     0x5e9c24: mov          SP, fp
    // 0x5e9c28: LeaveFrame
    //     0x5e9c28: ldp          fp, lr, [SP], #0x10
    // 0x5e9c2c: ret
    //     0x5e9c2c: ret          
    //     0x5e9c30: sbfiz        r0, r2, #1, #0x1f
    //     0x5e9c34: cmp          r2, r0, asr #1
    // 0x5e9c38: b.eq 0x5e9c44
    //     0x5e9c38: b.eq         0x5e9c44
    // 0x5e9c3c: r0 = call 0x61fba8
    //     0x5e9c3c: bl           0x61fba8
    // 0x5e9c40: StoreField: r0->field_7 = r2
    //     0x5e9c40: stur         r2, [r0, #7]
    //     0x5e9c44: str          r0, [SP]
    // 0x5e9c48: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x5e9c48: bl           0x2ac0a0
    //     0x5e9c4c: ldur         r1, [fp, #-8]
    // 0x5e9c50: StoreField: r1->field_5f = r0
    //     0x5e9c50: stur         r0, [r1, #0x5f]
    //     0x5e9c54: ldurb        r16, [r1, #-1]
    //     0x5e9c58: ldurb        r17, [r0, #-1]
    //     0x5e9c5c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x5e9c60: tst          BARRIER, HEAP, lsr #32
    // 0x5e9c64: b.eq 0x5e9c6c
    //     0x5e9c64: b.eq         0x5e9c6c
    // 0x5e9c68: r0 = call 0x61e04c
    //     0x5e9c68: bl           0x61e04c
    // 0x5e9c6c: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x5e9c6c: bl           0x3ac980
    // 0x5e9c70: r0 = NULL
    //     0x5e9c70: mov          r0, NULL
    // 0x5e9c74: SP = fp
    //     0x5e9c74: mov          SP, fp
    // 0x5e9c78: LeaveFrame
    //     0x5e9c78: ldp          fp, lr, [SP], #0x10
    // 0x5e9c7c: ret
    //     0x5e9c7c: ret          
    // 0x5e9c80: r0 = call 0x61fa28
    //     0x5e9c80: bl           0x61fa28
    // 0x5e9c84: b 0x5e9c08
    //     0x5e9c84: b            0x5e9c08
  }
