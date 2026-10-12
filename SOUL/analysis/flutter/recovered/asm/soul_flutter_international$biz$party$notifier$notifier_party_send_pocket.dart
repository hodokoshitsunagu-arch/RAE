// lib: , url: soul_flutter_international$biz$party$notifier$notifier_party_send_pocket


  sendRedPocket() {
    // ** addr: 0x429c0c, size: 0x1d4
    // 0x429c0c: EnterFrame
    //     0x429c0c: stp          fp, lr, [SP, #-0x10]!
    //     0x429c10: mov          fp, SP
    // 0x429c14: AllocStack(0x20)
    //     0x429c14: sub          SP, SP, #0x20
    // 0x429c18: r3 = r2
    //     0x429c18: mov          r3, r2
    //     0x429c1c: stur         r2, [fp, #-0x18]
    // 0x429c20: CheckStackOverflow
    //     0x429c20: ldr          BARRIER, [THR, #0x38]
    //     0x429c24: cmp          SP, BARRIER
    //     0x429c28: b.ls         0x429db8
    // 0x429c2c: LoadField: r0 = r3->field_7
    //     0x429c2c: ldur         r0, [r3, #7]
    //     0x429c30: cbz          r0, 0x429c3c
    // 0x429c34: LoadField: r2 = r1->field_23
    //     0x429c34: ldur         r2, [r1, #0x23]
    //     0x429c38: tbz          r2, #0x3f, 0x429c4c
    // 0x429c3c: r0 = NULL
    //     0x429c3c: mov          r0, NULL
    // 0x429c40: SP = fp
    //     0x429c40: mov          SP, fp
    // 0x429c44: LeaveFrame
    //     0x429c44: ldp          fp, lr, [SP], #0x10
    // 0x429c48: ret
    //     0x429c48: ret          
    // 0x429c4c: LoadField: r4 = r1->field_2b
    //     0x429c4c: ldur         r4, [r1, #0x2b]
    //     0x429c50: tbnz         r4, #0x3f, 0x429c6c
    // 0x429c54: LoadField: r5 = r1->field_3b
    //     0x429c54: ldur         r5, [r1, #0x3b]
    //     0x429c58: add          r5, r5, HEAP, lsl #32
    // 0x429c5c: LoadField: r0 = r5->field_b
    //     0x429c5c: ldur         r0, [r5, #0xb]
    //     0x429c60: sbfx         r6, r0, #1, #0x1f
    //     0x429c64: cmp          r4, r6
    // 0x429c68: b.lt 0x429c7c
    //     0x429c68: b.lt         0x429c7c
    // 0x429c6c: r0 = NULL
    //     0x429c6c: mov          r0, NULL
    // 0x429c70: SP = fp
    //     0x429c70: mov          SP, fp
    // 0x429c74: LeaveFrame
    //     0x429c74: ldp          fp, lr, [SP], #0x10
    // 0x429c78: ret
    //     0x429c78: ret          
    // 0x429c7c: LoadField: r7 = r1->field_33
    //     0x429c7c: ldur         r7, [r1, #0x33]
    //     0x429c80: tbnz         r7, #0x3f, 0x429c9c
    // 0x429c84: LoadField: r8 = r1->field_3f
    //     0x429c84: ldur         r8, [r1, #0x3f]
    //     0x429c88: add          r8, r8, HEAP, lsl #32
    // 0x429c8c: LoadField: r0 = r8->field_b
    //     0x429c8c: ldur         r0, [r8, #0xb]
    //     0x429c90: sbfx         r10, r0, #1, #0x1f
    //     0x429c94: cmp          r7, r10
    // 0x429c98: b.lt 0x429cac
    //     0x429c98: b.lt         0x429cac
    // 0x429c9c: r0 = NULL
    //     0x429c9c: mov          r0, NULL
    // 0x429ca0: SP = fp
    //     0x429ca0: mov          SP, fp
    // 0x429ca4: LeaveFrame
    //     0x429ca4: ldp          fp, lr, [SP], #0x10
    // 0x429ca8: ret
    //     0x429ca8: ret          
    // 0x429cac: r0 = r6
    //     0x429cac: mov          r0, r6
    // 0x429cb0: r1 = r4
    //     0x429cb0: mov          r1, r4
    //     0x429cb4: cmp          r1, r0
    // 0x429cb8: b.hs 0x429dc0
    //     0x429cb8: b.hs         0x429dc0
    // 0x429cbc: LoadField: r0 = r5->field_f
    //     0x429cbc: ldur         r0, [r5, #0xf]
    //     0x429cc0: add          r0, r0, HEAP, lsl #32
    //     0x429cc4: add          BARRIER, r0, r4, lsl #2
    // 0x429cc8: LoadField: r1 = BARRIER->field_f
    //     0x429cc8: ldur         r1, [BARRIER, #0xf]
    //     0x429ccc: add          r1, r1, HEAP, lsl #32
    // 0x429cd0: LoadField: r4 = r1->field_7
    //     0x429cd0: ldur         r4, [r1, #7]
    //     0x429cd4: add          r4, r4, HEAP, lsl #32
    // 0x429cd8: BARRIER = pp[0x40]
    //     0x429cd8: ldr          BARRIER, [PP, #0x40]
    //     0x429cdc: cmp          r4, r16
    // 0x429ce0: b.eq 0x429dc4
    //     0x429ce0: b.eq         0x429dc4
    // 0x429ce4: r0 = r10
    //     0x429ce4: mov          r0, r10
    // 0x429ce8: r1 = r7
    //     0x429ce8: mov          r1, r7
    //     0x429cec: cmp          r1, r0
    // 0x429cf0: b.hs 0x429dd0
    //     0x429cf0: b.hs         0x429dd0
    // 0x429cf4: LoadField: r0 = r8->field_f
    //     0x429cf4: ldur         r0, [r8, #0xf]
    //     0x429cf8: add          r0, r0, HEAP, lsl #32
    //     0x429cfc: add          BARRIER, r0, r7, lsl #2
    // 0x429d00: LoadField: r1 = BARRIER->field_f
    //     0x429d00: ldur         r1, [BARRIER, #0xf]
    //     0x429d04: add          r1, r1, HEAP, lsl #32
    // 0x429d08: LoadField: r0 = r1->field_7
    //     0x429d08: ldur         r0, [r1, #7]
    //     0x429d0c: add          r0, r0, HEAP, lsl #32
    // 0x429d10: BARRIER = pp[0x40]
    //     0x429d10: ldr          BARRIER, [PP, #0x40]
    //     0x429d14: cmp          r0, r16
    // 0x429d18: b.eq 0x429dd4
    //     0x429d18: b.eq         0x429dd4
    //     0x429d1c: sbfx         r5, r4, #1, #0x1f
    // 0x429d20: branchIfSmi(r4, 0x429d28)
    //     0x429d20: tbz          r4, #0, 0x429d28
    // 0x429d24: LoadField: r5 = r4->field_7
    //     0x429d24: ldur         r5, [r4, #7]
    //     0x429d28: stur         r5, [fp, #-0x10]
    //     0x429d2c: cmp          r2, r5
    // 0x429d30: b.lt 0x429d88
    //     0x429d30: b.lt         0x429d88
    //     0x429d34: sbfx         r4, r0, #1, #0x1f
    // 0x429d38: branchIfSmi(r0, 0x429d40)
    //     0x429d38: tbz          r0, #0, 0x429d40
    // 0x429d3c: LoadField: r4 = r0->field_7
    //     0x429d3c: ldur         r4, [r0, #7]
    //     0x429d40: stur         r4, [fp, #-8]
    // 0x429d44: r1 = pp[0xb60]
    //     0x429d44: add          r1, PP, #0x10, lsl #12
    //     0x429d48: ldr          r1, [r1, #0xb50]
    // 0x429d4c: r2 = NULL
    //     0x429d4c: mov          r2, NULL
    // 0x429d50: r0 = call 0x61ec54
    //     0x429d50: bl           0x61ec54
    // 0x429d54: r1 = pp[0xb68]
    //     0x429d54: add          r1, PP, #0x10, lsl #12
    //     0x429d58: ldr          r1, [r1, #0xb58]
    // 0x429d5c: r2 = NULL
    //     0x429d5c: mov          r2, NULL
    //     0x429d60: stur         r0, [fp, #-0x20]
    // 0x429d64: r0 = call 0x61ec54
    //     0x429d64: bl           0x61ec54
    //     0x429d68: ldur         r1, [fp, #-0x18]
    //     0x429d6c: ldur         r2, [fp, #-0x10]
    //     0x429d70: ldur         r3, [fp, #-8]
    //     0x429d74: ldur         r5, [fp, #-0x20]
    // 0x429d78: r6 = r0
    //     0x429d78: mov          r6, r0
    // 0x429d7c: r0 = soul_flutter_international$api$party_api_service_PartyApiService::sendRedPocket()
    //     0x429d7c: bl           0x429de0
    // 0x429d80: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record__PagePKGameBetTabRecordState::_anon_closure()
    //     0x429d80: bl           0x3a8d00
    // 0x429d84: b 0x429da8
    //     0x429d84: b            0x429da8
    // 0x429d88: r1 = pp[0x914]
    //     0x429d88: add          r1, PP, #0xc, lsl #12
    //     0x429d8c: ldr          r1, [r1, #0x908]
    // 0x429d90: r4 = pp[0x4c0]
    //     0x429d90: ldr          r4, [PP, #0x4c0]
    // 0x429d94: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x429d94: bl           0x3a1dcc
    // 0x429d98: r1 = r0
    //     0x429d98: mov          r1, r0
    // 0x429d9c: r4 = pp[0x4c0]
    //     0x429d9c: ldr          r4, [PP, #0x4c0]
    // 0x429da0: r0 = soul_flutter_international$common$plugins$native_dialog_NativeDialog::toast()
    //     0x429da0: bl           0x3ac64c
    // 0x429da4: r0 = soul_flutter_international$common$plugins$native_dialog_NativeDialog::toCoinDialog()
    //     0x429da4: bl           0x41c9dc
    // 0x429da8: r0 = NULL
    //     0x429da8: mov          r0, NULL
    // 0x429dac: SP = fp
    //     0x429dac: mov          SP, fp
    // 0x429db0: LeaveFrame
    //     0x429db0: ldp          fp, lr, [SP], #0x10
    // 0x429db4: ret
    //     0x429db4: ret          
    // 0x429db8: r0 = call 0x61fa28
    //     0x429db8: bl           0x61fa28
    // 0x429dbc: b 0x429c2c
    //     0x429dbc: b            0x429c2c
    // 0x429dc0: r0 = call 0x61fe70
    //     0x429dc0: bl           0x61fe70
    // 0x429dc4: r9 = pp[0xb70]
    //     0x429dc4: add          r9, PP, #0x10, lsl #12
    //     0x429dc8: ldr          r9, [r9, #0xb60]
    // 0x429dcc: r0 = call 0x620258
    //     0x429dcc: bl           0x620258
    // 0x429dd0: r0 = call 0x61fe70
    //     0x429dd0: bl           0x61fe70
    // 0x429dd4: r9 = pp[0xb78]
    //     0x429dd4: add          r9, PP, #0x10, lsl #12
    //     0x429dd8: ldr          r9, [r9, #0xb68]
    // 0x429ddc: r0 = call 0x620258
    //     0x429ddc: bl           0x620258
  }

  _anon_closure() {
    // ** addr: 0x429f60, size: 0x74
    // 0x429f60: EnterFrame
    //     0x429f60: stp          fp, lr, [SP, #-0x10]!
    //     0x429f64: mov          fp, SP
    // 0x429f68: AllocStack(0x10)
    //     0x429f68: sub          SP, SP, #0x10
    // 0x429f6c: CheckStackOverflow
    //     0x429f6c: ldr          BARRIER, [THR, #0x38]
    //     0x429f70: cmp          SP, BARRIER
    //     0x429f74: b.ls         0x429fcc
    // 0x429f78: r1 = NULL
    //     0x429f78: mov          r1, NULL
    //     0x429f7c: mov          r2, #4
    // 0x429f80: r0 = call 0x61f920
    //     0x429f80: bl           0x61f920
    // 0x429f84: BARRIER = pp[0xb80]
    //     0x429f84: add          BARRIER, PP, #0x10, lsl #12
    //     0x429f88: ldr          BARRIER, [BARRIER, #0xb70]
    // 0x429f8c: StoreField: r0->field_f = r16
    //     0x429f8c: stur         r16, [r0, #0xf]
    // 0x429f90: BARRIER = pp[0x2a50]
    //     0x429f90: ldr          BARRIER, [PP, #0x2a50]
    // 0x429f94: StoreField: r0->field_13 = r16
    //     0x429f94: stur         r16, [r0, #0x13]
    // 0x429f98: BARRIER = pp[0xbf0]
    //     0x429f98: ldr          BARRIER, [PP, #0xbf0]
    //     0x429f9c: stp          r0, BARRIER, [SP]
    // 0x429fa0: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x429fa0: bl           0x27c0c8
    //     0x429fa4: str          r0, [SP]
    // 0x429fa8: r1 = pp[0xb88]
    //     0x429fa8: add          r1, PP, #0x10, lsl #12
    //     0x429fac: ldr          r1, [r1, #0xb78]
    // 0x429fb0: r4 = pp[0xf2f]
    //     0x429fb0: add          r4, PP, #0xf, lsl #12
    //     0x429fb4: ldr          r4, [r4, #0xf20]
    // 0x429fb8: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventClick()
    //     0x429fb8: bl           0x3a8e60
    // 0x429fbc: r0 = NULL
    //     0x429fbc: mov          r0, NULL
    // 0x429fc0: SP = fp
    //     0x429fc0: mov          SP, fp
    // 0x429fc4: LeaveFrame
    //     0x429fc4: ldp          fp, lr, [SP], #0x10
    // 0x429fc8: ret
    //     0x429fc8: ret          
    // 0x429fcc: r0 = call 0x61fa28
    //     0x429fcc: bl           0x61fa28
    // 0x429fd0: b 0x429f78
    //     0x429fd0: b            0x429f78
  }

  _anon_closure() {
    // ** addr: 0x429fd4, size: 0x78
    // 0x429fd4: EnterFrame
    //     0x429fd4: stp          fp, lr, [SP, #-0x10]!
    //     0x429fd8: mov          fp, SP
    // 0x429fdc: AllocStack(0x10)
    //     0x429fdc: sub          SP, SP, #0x10
    // 0x429fe0: CheckStackOverflow
    //     0x429fe0: ldr          BARRIER, [THR, #0x38]
    //     0x429fe4: cmp          SP, BARRIER
    //     0x429fe8: b.ls         0x42a044
    // 0x429fec: r1 = NULL
    //     0x429fec: mov          r1, NULL
    //     0x429ff0: mov          r2, #4
    // 0x429ff4: r0 = call 0x61f920
    //     0x429ff4: bl           0x61f920
    // 0x429ff8: BARRIER = pp[0xb80]
    //     0x429ff8: add          BARRIER, PP, #0x10, lsl #12
    //     0x429ffc: ldr          BARRIER, [BARRIER, #0xb70]
    // 0x42a000: StoreField: r0->field_f = r16
    //     0x42a000: stur         r16, [r0, #0xf]
    // 0x42a004: BARRIER = pp[0x75f]
    //     0x42a004: add          BARRIER, PP, #0xf, lsl #12
    //     0x42a008: ldr          BARRIER, [BARRIER, #0x750]
    // 0x42a00c: StoreField: r0->field_13 = r16
    //     0x42a00c: stur         r16, [r0, #0x13]
    // 0x42a010: BARRIER = pp[0xbf0]
    //     0x42a010: ldr          BARRIER, [PP, #0xbf0]
    //     0x42a014: stp          r0, BARRIER, [SP]
    // 0x42a018: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x42a018: bl           0x27c0c8
    //     0x42a01c: str          r0, [SP]
    // 0x42a020: r1 = pp[0xb88]
    //     0x42a020: add          r1, PP, #0x10, lsl #12
    //     0x42a024: ldr          r1, [r1, #0xb78]
    // 0x42a028: r4 = pp[0xf2f]
    //     0x42a028: add          r4, PP, #0xf, lsl #12
    //     0x42a02c: ldr          r4, [r4, #0xf20]
    // 0x42a030: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventClick()
    //     0x42a030: bl           0x3a8e60
    // 0x42a034: r0 = NULL
    //     0x42a034: mov          r0, NULL
    // 0x42a038: SP = fp
    //     0x42a038: mov          SP, fp
    // 0x42a03c: LeaveFrame
    //     0x42a03c: ldp          fp, lr, [SP], #0x10
    // 0x42a040: ret
    //     0x42a040: ret          
    // 0x42a044: r0 = call 0x61fa28
    //     0x42a044: bl           0x61fa28
    // 0x42a048: b 0x429fec
    //     0x42a048: b            0x429fec
  }

  updatePocketNum() {
    // ** addr: 0x42a374, size: 0x13c
    // 0x42a374: EnterFrame
    //     0x42a374: stp          fp, lr, [SP, #-0x10]!
    //     0x42a378: mov          fp, SP
    // 0x42a37c: AllocStack(0x30)
    //     0x42a37c: sub          SP, SP, #0x30
    // 0x42a380: r0 = r1
    //     0x42a380: mov          r0, r1
    //     0x42a384: stur         r1, [fp, #-8]
    // 0x42a388: CheckStackOverflow
    //     0x42a388: ldr          BARRIER, [THR, #0x38]
    //     0x42a38c: cmp          SP, BARRIER
    //     0x42a390: b.ls         0x42a498
    // 0x42a394: StoreField: r0->field_33 = r2
    //     0x42a394: stur         r2, [r0, #0x33]
    // 0x42a398: r1 = r0
    //     0x42a398: mov          r1, r0
    // 0x42a39c: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x42a39c: bl           0x3ac980
    //     0x42a3a0: ldur         r0, [fp, #-8]
    // 0x42a3a4: LoadField: r3 = r0->field_33
    //     0x42a3a4: ldur         r3, [r0, #0x33]
    //     0x42a3a8: stur         r3, [fp, #-0x20]
    //     0x42a3ac: tbnz         r3, #0x3f, 0x42a488
    // 0x42a3b0: LoadField: r4 = r0->field_3f
    //     0x42a3b0: ldur         r4, [r0, #0x3f]
    //     0x42a3b4: add          r4, r4, HEAP, lsl #32
    //     0x42a3b8: stur         r4, [fp, #-0x18]
    // 0x42a3bc: LoadField: r0 = r4->field_b
    //     0x42a3bc: ldur         r0, [r4, #0xb]
    //     0x42a3c0: sbfx         r5, r0, #1, #0x1f
    //     0x42a3c4: stur         r5, [fp, #-0x10]
    //     0x42a3c8: cmp          r3, r5
    // 0x42a3cc: b.ge 0x42a488
    //     0x42a3cc: b.ge         0x42a488
    // 0x42a3d0: r1 = NULL
    //     0x42a3d0: mov          r1, NULL
    //     0x42a3d4: mov          r2, #4
    // 0x42a3d8: r0 = call 0x61f920
    //     0x42a3d8: bl           0x61f920
    // 0x42a3dc: r2 = r0
    //     0x42a3dc: mov          r2, r0
    //     0x42a3e0: stur         r2, [fp, #-8]
    // 0x42a3e4: BARRIER = pp[0xc20]
    //     0x42a3e4: add          BARRIER, PP, #0x10, lsl #12
    //     0x42a3e8: ldr          BARRIER, [BARRIER, #0xc10]
    // 0x42a3ec: StoreField: r2->field_f = r16
    //     0x42a3ec: stur         r16, [r2, #0xf]
    //     0x42a3f0: ldur         r0, [fp, #-0x10]
    //     0x42a3f4: ldur         r1, [fp, #-0x20]
    //     0x42a3f8: cmp          r1, r0
    // 0x42a3fc: b.hs 0x42a4a0
    //     0x42a3fc: b.hs         0x42a4a0
    //     0x42a400: ldur         r0, [fp, #-0x18]
    // 0x42a404: LoadField: r1 = r0->field_f
    //     0x42a404: ldur         r1, [r0, #0xf]
    //     0x42a408: add          r1, r1, HEAP, lsl #32
    //     0x42a40c: ldur         r0, [fp, #-0x20]
    //     0x42a410: add          BARRIER, r1, r0, lsl #2
    // 0x42a414: LoadField: r3 = BARRIER->field_f
    //     0x42a414: ldur         r3, [BARRIER, #0xf]
    //     0x42a418: add          r3, r3, HEAP, lsl #32
    // 0x42a41c: LoadField: r0 = r3->field_7
    //     0x42a41c: ldur         r0, [r3, #7]
    //     0x42a420: add          r0, r0, HEAP, lsl #32
    // 0x42a424: BARRIER = pp[0x40]
    //     0x42a424: ldr          BARRIER, [PP, #0x40]
    //     0x42a428: cmp          r0, r16
    // 0x42a42c: b.eq 0x42a4a4
    //     0x42a42c: b.eq         0x42a4a4
    //     0x42a430: str          r0, [SP]
    // 0x42a434: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x42a434: bl           0x2ac0a0
    //     0x42a438: ldur         r1, [fp, #-8]
    //     0x42a43c: add          r25, r1, #0x13
    //     0x42a440: str          r0, [r25]
    // 0x42a444: branchIfSmi(r0, 0x42a460)
    //     0x42a444: tbz          r0, #0, 0x42a460
    //     0x42a448: ldurb        r16, [r1, #-1]
    //     0x42a44c: ldurb        r17, [r0, #-1]
    //     0x42a450: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42a454: tst          BARRIER, HEAP, lsr #32
    // 0x42a458: b.eq 0x42a460
    //     0x42a458: b.eq         0x42a460
    // 0x42a45c: r0 = call 0x61db00
    //     0x42a45c: bl           0x61db00
    // 0x42a460: BARRIER = pp[0xbf0]
    //     0x42a460: ldr          BARRIER, [PP, #0xbf0]
    //     0x42a464: ldur         lr, [fp, #-8]
    //     0x42a468: stp          lr, BARRIER, [SP]
    // 0x42a46c: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x42a46c: bl           0x27c0c8
    //     0x42a470: str          r0, [SP]
    // 0x42a474: r1 = pp[0xc28]
    //     0x42a474: add          r1, PP, #0x10, lsl #12
    //     0x42a478: ldr          r1, [r1, #0xc18]
    // 0x42a47c: r4 = pp[0xf2f]
    //     0x42a47c: add          r4, PP, #0xf, lsl #12
    //     0x42a480: ldr          r4, [r4, #0xf20]
    // 0x42a484: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventClick()
    //     0x42a484: bl           0x3a8e60
    // 0x42a488: r0 = NULL
    //     0x42a488: mov          r0, NULL
    // 0x42a48c: SP = fp
    //     0x42a48c: mov          SP, fp
    // 0x42a490: LeaveFrame
    //     0x42a490: ldp          fp, lr, [SP], #0x10
    // 0x42a494: ret
    //     0x42a494: ret          
    // 0x42a498: r0 = call 0x61fa28
    //     0x42a498: bl           0x61fa28
    // 0x42a49c: b 0x42a394
    //     0x42a49c: b            0x42a394
    // 0x42a4a0: r0 = call 0x61fe70
    //     0x42a4a0: bl           0x61fe70
    // 0x42a4a4: r9 = pp[0xb78]
    //     0x42a4a4: add          r9, PP, #0x10, lsl #12
    //     0x42a4a8: ldr          r9, [r9, #0xb68]
    // 0x42a4ac: r0 = call 0x620258
    //     0x42a4ac: bl           0x620258
  }

  updateCoinIndex() {
    // ** addr: 0x42b0d4, size: 0x13c
    // 0x42b0d4: EnterFrame
    //     0x42b0d4: stp          fp, lr, [SP, #-0x10]!
    //     0x42b0d8: mov          fp, SP
    // 0x42b0dc: AllocStack(0x30)
    //     0x42b0dc: sub          SP, SP, #0x30
    // 0x42b0e0: r0 = r1
    //     0x42b0e0: mov          r0, r1
    //     0x42b0e4: stur         r1, [fp, #-8]
    // 0x42b0e8: CheckStackOverflow
    //     0x42b0e8: ldr          BARRIER, [THR, #0x38]
    //     0x42b0ec: cmp          SP, BARRIER
    //     0x42b0f0: b.ls         0x42b1f8
    // 0x42b0f4: StoreField: r0->field_2b = r2
    //     0x42b0f4: stur         r2, [r0, #0x2b]
    // 0x42b0f8: r1 = r0
    //     0x42b0f8: mov          r1, r0
    // 0x42b0fc: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x42b0fc: bl           0x3ac980
    //     0x42b100: ldur         r0, [fp, #-8]
    // 0x42b104: LoadField: r3 = r0->field_2b
    //     0x42b104: ldur         r3, [r0, #0x2b]
    //     0x42b108: stur         r3, [fp, #-0x20]
    //     0x42b10c: tbnz         r3, #0x3f, 0x42b1e8
    // 0x42b110: LoadField: r4 = r0->field_3b
    //     0x42b110: ldur         r4, [r0, #0x3b]
    //     0x42b114: add          r4, r4, HEAP, lsl #32
    //     0x42b118: stur         r4, [fp, #-0x18]
    // 0x42b11c: LoadField: r0 = r4->field_b
    //     0x42b11c: ldur         r0, [r4, #0xb]
    //     0x42b120: sbfx         r5, r0, #1, #0x1f
    //     0x42b124: stur         r5, [fp, #-0x10]
    //     0x42b128: cmp          r3, r5
    // 0x42b12c: b.ge 0x42b1e8
    //     0x42b12c: b.ge         0x42b1e8
    // 0x42b130: r1 = NULL
    //     0x42b130: mov          r1, NULL
    //     0x42b134: mov          r2, #4
    // 0x42b138: r0 = call 0x61f920
    //     0x42b138: bl           0x61f920
    // 0x42b13c: r2 = r0
    //     0x42b13c: mov          r2, r0
    //     0x42b140: stur         r2, [fp, #-8]
    // 0x42b144: BARRIER = pp[0xd10]
    //     0x42b144: add          BARRIER, PP, #0x10, lsl #12
    //     0x42b148: ldr          BARRIER, [BARRIER, #0xd00]
    // 0x42b14c: StoreField: r2->field_f = r16
    //     0x42b14c: stur         r16, [r2, #0xf]
    //     0x42b150: ldur         r0, [fp, #-0x10]
    //     0x42b154: ldur         r1, [fp, #-0x20]
    //     0x42b158: cmp          r1, r0
    // 0x42b15c: b.hs 0x42b200
    //     0x42b15c: b.hs         0x42b200
    //     0x42b160: ldur         r0, [fp, #-0x18]
    // 0x42b164: LoadField: r1 = r0->field_f
    //     0x42b164: ldur         r1, [r0, #0xf]
    //     0x42b168: add          r1, r1, HEAP, lsl #32
    //     0x42b16c: ldur         r0, [fp, #-0x20]
    //     0x42b170: add          BARRIER, r1, r0, lsl #2
    // 0x42b174: LoadField: r3 = BARRIER->field_f
    //     0x42b174: ldur         r3, [BARRIER, #0xf]
    //     0x42b178: add          r3, r3, HEAP, lsl #32
    // 0x42b17c: LoadField: r0 = r3->field_7
    //     0x42b17c: ldur         r0, [r3, #7]
    //     0x42b180: add          r0, r0, HEAP, lsl #32
    // 0x42b184: BARRIER = pp[0x40]
    //     0x42b184: ldr          BARRIER, [PP, #0x40]
    //     0x42b188: cmp          r0, r16
    // 0x42b18c: b.eq 0x42b204
    //     0x42b18c: b.eq         0x42b204
    //     0x42b190: str          r0, [SP]
    // 0x42b194: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x42b194: bl           0x2ac0a0
    //     0x42b198: ldur         r1, [fp, #-8]
    //     0x42b19c: add          r25, r1, #0x13
    //     0x42b1a0: str          r0, [r25]
    // 0x42b1a4: branchIfSmi(r0, 0x42b1c0)
    //     0x42b1a4: tbz          r0, #0, 0x42b1c0
    //     0x42b1a8: ldurb        r16, [r1, #-1]
    //     0x42b1ac: ldurb        r17, [r0, #-1]
    //     0x42b1b0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42b1b4: tst          BARRIER, HEAP, lsr #32
    // 0x42b1b8: b.eq 0x42b1c0
    //     0x42b1b8: b.eq         0x42b1c0
    // 0x42b1bc: r0 = call 0x61db00
    //     0x42b1bc: bl           0x61db00
    // 0x42b1c0: BARRIER = pp[0xbf0]
    //     0x42b1c0: ldr          BARRIER, [PP, #0xbf0]
    //     0x42b1c4: ldur         lr, [fp, #-8]
    //     0x42b1c8: stp          lr, BARRIER, [SP]
    // 0x42b1cc: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x42b1cc: bl           0x27c0c8
    //     0x42b1d0: str          r0, [SP]
    // 0x42b1d4: r1 = pp[0xd18]
    //     0x42b1d4: add          r1, PP, #0x10, lsl #12
    //     0x42b1d8: ldr          r1, [r1, #0xd08]
    // 0x42b1dc: r4 = pp[0xf2f]
    //     0x42b1dc: add          r4, PP, #0xf, lsl #12
    //     0x42b1e0: ldr          r4, [r4, #0xf20]
    // 0x42b1e4: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventClick()
    //     0x42b1e4: bl           0x3a8e60
    // 0x42b1e8: r0 = NULL
    //     0x42b1e8: mov          r0, NULL
    // 0x42b1ec: SP = fp
    //     0x42b1ec: mov          SP, fp
    // 0x42b1f0: LeaveFrame
    //     0x42b1f0: ldp          fp, lr, [SP], #0x10
    // 0x42b1f4: ret
    //     0x42b1f4: ret          
    // 0x42b1f8: r0 = call 0x61fa28
    //     0x42b1f8: bl           0x61fa28
    // 0x42b1fc: b 0x42b0f4
    //     0x42b1fc: b            0x42b0f4
    // 0x42b200: r0 = call 0x61fe70
    //     0x42b200: bl           0x61fe70
    // 0x42b204: r9 = pp[0xb70]
    //     0x42b204: add          r9, PP, #0x10, lsl #12
    //     0x42b208: ldr          r9, [r9, #0xb60]
    // 0x42b20c: r0 = call 0x620258
    //     0x42b20c: bl           0x620258
  }

  ctor() {
    // ** addr: 0x4c496c, size: 0xf0
    // 0x4c496c: EnterFrame
    //     0x4c496c: stp          fp, lr, [SP, #-0x10]!
    //     0x4c4970: mov          fp, SP
    // 0x4c4974: AllocStack(8)
    //     0x4c4974: sub          SP, SP, #8
    // 0x4c4978: r0 = r1
    //     0x4c4978: mov          r0, r1
    //     0x4c497c: stur         r1, [fp, #-8]
    // 0x4c4980: CheckStackOverflow
    //     0x4c4980: ldr          BARRIER, [THR, #0x38]
    //     0x4c4984: cmp          SP, BARRIER
    //     0x4c4988: b.ls         0x4c4a54
    // 0x4c498c: StoreField: r0->field_2b = xzr
    //     0x4c498c: stur         xzr, [r0, #0x2b]
    // 0x4c4990: StoreField: r0->field_33 = xzr
    //     0x4c4990: stur         xzr, [r0, #0x33]
    // 0x4c4994: r1 = pp[0x78b]
    //     0x4c4994: add          r1, PP, #0xb, lsl #12
    //     0x4c4998: ldr          r1, [r1, #0x780]
    //     0x4c499c: mov          r2, #0
    // 0x4c49a0: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c49a0: bl           0x277268
    //     0x4c49a4: ldur         r3, [fp, #-8]
    // 0x4c49a8: StoreField: r3->field_3b = r0
    //     0x4c49a8: stur         r0, [r3, #0x3b]
    //     0x4c49ac: ldurb        r16, [r3, #-1]
    //     0x4c49b0: ldurb        r17, [r0, #-1]
    //     0x4c49b4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c49b8: tst          BARRIER, HEAP, lsr #32
    // 0x4c49bc: b.eq 0x4c49c4
    //     0x4c49bc: b.eq         0x4c49c4
    // 0x4c49c0: r0 = call 0x61e08c
    //     0x4c49c0: bl           0x61e08c
    // 0x4c49c4: r1 = pp[0x793]
    //     0x4c49c4: add          r1, PP, #0xb, lsl #12
    //     0x4c49c8: ldr          r1, [r1, #0x788]
    //     0x4c49cc: mov          r2, #0
    // 0x4c49d0: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c49d0: bl           0x277268
    //     0x4c49d4: ldur         r1, [fp, #-8]
    // 0x4c49d8: StoreField: r1->field_3f = r0
    //     0x4c49d8: stur         r0, [r1, #0x3f]
    //     0x4c49dc: ldurb        r16, [r1, #-1]
    //     0x4c49e0: ldurb        r17, [r0, #-1]
    //     0x4c49e4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c49e8: tst          BARRIER, HEAP, lsr #32
    // 0x4c49ec: b.eq 0x4c49f4
    //     0x4c49ec: b.eq         0x4c49f4
    // 0x4c49f0: r0 = call 0x61e04c
    //     0x4c49f0: bl           0x61e04c
    //     0x4c49f4: mov          r0, #-1
    // 0x4c49f8: StoreField: r1->field_23 = r0
    //     0x4c49f8: stur         r0, [r1, #0x23]
    // 0x4c49fc: StoreField: r1->field_7 = xzr
    //     0x4c49fc: stur         xzr, [r1, #7]
    // 0x4c4a00: StoreField: r1->field_13 = xzr
    //     0x4c4a00: stur         xzr, [r1, #0x13]
    // 0x4c4a04: StoreField: r1->field_1b = xzr
    //     0x4c4a04: stur         xzr, [r1, #0x1b]
    //     0x4c4a08: ldr          r0, [THR, #0x68]
    // 0x4c4a0c: LoadField: r0 = r0->field_b90
    //     0x4c4a0c: ldr          r0, [r0, #0xb90]
    // 0x4c4a10: BARRIER = pp[0x40]
    //     0x4c4a10: ldr          BARRIER, [PP, #0x40]
    //     0x4c4a14: cmp          r0, r16
    // 0x4c4a18: b.ne 0x4c4a24
    //     0x4c4a18: b.ne         0x4c4a24
    // 0x4c4a1c: r2 = pp[0x3608]
    //     0x4c4a1c: ldr          r2, [PP, #0x3608]
    // 0x4c4a20: r0 = call 0x61d99c
    //     0x4c4a20: bl           0x61d99c
    //     0x4c4a24: ldur         r1, [fp, #-8]
    // 0x4c4a28: StoreField: r1->field_f = r0
    //     0x4c4a28: stur         r0, [r1, #0xf]
    //     0x4c4a2c: ldurb        r16, [r1, #-1]
    //     0x4c4a30: ldurb        r17, [r0, #-1]
    //     0x4c4a34: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c4a38: tst          BARRIER, HEAP, lsr #32
    // 0x4c4a3c: b.eq 0x4c4a44
    //     0x4c4a3c: b.eq         0x4c4a44
    // 0x4c4a40: r0 = call 0x61e04c
    //     0x4c4a40: bl           0x61e04c
    // 0x4c4a44: r0 = NULL
    //     0x4c4a44: mov          r0, NULL
    // 0x4c4a48: SP = fp
    //     0x4c4a48: mov          SP, fp
    // 0x4c4a4c: LeaveFrame
    //     0x4c4a4c: ldp          fp, lr, [SP], #0x10
    // 0x4c4a50: ret
    //     0x4c4a50: ret          
    // 0x4c4a54: r0 = call 0x61fa28
    //     0x4c4a54: bl           0x61fa28
    // 0x4c4a58: b 0x4c498c
    //     0x4c4a58: b            0x4c498c
  }

  requestData() {
    // ** addr: 0x4d5ae0, size: 0x48
    // 0x4d5ae0: EnterFrame
    //     0x4d5ae0: stp          fp, lr, [SP, #-0x10]!
    //     0x4d5ae4: mov          fp, SP
    // 0x4d5ae8: AllocStack(8)
    //     0x4d5ae8: sub          SP, SP, #8
    // 0x4d5aec: r0 = r1
    //     0x4d5aec: mov          r0, r1
    //     0x4d5af0: stur         r1, [fp, #-8]
    // 0x4d5af4: CheckStackOverflow
    //     0x4d5af4: ldr          BARRIER, [THR, #0x38]
    //     0x4d5af8: cmp          SP, BARRIER
    //     0x4d5afc: b.ls         0x4d5b20
    // 0x4d5b00: r1 = r0
    //     0x4d5b00: mov          r1, r0
    // 0x4d5b04: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::requestTotalCoins()
    //     0x4d5b04: bl           0x41e8b4
    //     0x4d5b08: ldur         r1, [fp, #-8]
    // 0x4d5b0c: r0 = soul_flutter_international$biz$party$notifier$notifier_party_send_pocket_PartySendPocketNotifier::_requestPocketResource()
    //     0x4d5b0c: bl           0x4d5b28
    // 0x4d5b10: r0 = NULL
    //     0x4d5b10: mov          r0, NULL
    // 0x4d5b14: SP = fp
    //     0x4d5b14: mov          SP, fp
    // 0x4d5b18: LeaveFrame
    //     0x4d5b18: ldp          fp, lr, [SP], #0x10
    // 0x4d5b1c: ret
    //     0x4d5b1c: ret          
    // 0x4d5b20: r0 = call 0x61fa28
    //     0x4d5b20: bl           0x61fa28
    // 0x4d5b24: b 0x4d5b00
    //     0x4d5b24: b            0x4d5b00
  }

  _requestPocketResource() {
    // ** addr: 0x4d5b28, size: 0x60
    // 0x4d5b28: EnterFrame
    //     0x4d5b28: stp          fp, lr, [SP, #-0x10]!
    //     0x4d5b2c: mov          fp, SP
    // 0x4d5b30: AllocStack(8)
    //     0x4d5b30: sub          SP, SP, #8
    //     0x4d5b34: stur         r1, [fp, #-8]
    // 0x4d5b38: CheckStackOverflow
    //     0x4d5b38: ldr          BARRIER, [THR, #0x38]
    //     0x4d5b3c: cmp          SP, BARRIER
    //     0x4d5b40: b.ls         0x4d5b80
    //     0x4d5b44: mov          r1, #1
    // 0x4d5b48: r0 = call 0x61e890
    //     0x4d5b48: bl           0x61e890
    // 0x4d5b4c: r1 = r0
    //     0x4d5b4c: mov          r1, r0
    //     0x4d5b50: ldur         r0, [fp, #-8]
    // 0x4d5b54: StoreField: r1->field_f = r0
    //     0x4d5b54: stur         r0, [r1, #0xf]
    // 0x4d5b58: r2 = r1
    //     0x4d5b58: mov          r2, r1
    // 0x4d5b5c: r1 = pp[0xd98]
    //     0x4d5b5c: add          r1, PP, #0x10, lsl #12
    //     0x4d5b60: ldr          r1, [r1, #0xd88]
    // 0x4d5b64: r0 = call 0x61ec54
    //     0x4d5b64: bl           0x61ec54
    // 0x4d5b68: r1 = r0
    //     0x4d5b68: mov          r1, r0
    // 0x4d5b6c: r0 = soul_flutter_international$api$party_api_service_PartyApiService::getPartyRedPocket()
    //     0x4d5b6c: bl           0x4d5b88
    // 0x4d5b70: r0 = NULL
    //     0x4d5b70: mov          r0, NULL
    // 0x4d5b74: SP = fp
    //     0x4d5b74: mov          SP, fp
    // 0x4d5b78: LeaveFrame
    //     0x4d5b78: ldp          fp, lr, [SP], #0x10
    // 0x4d5b7c: ret
    //     0x4d5b7c: ret          
    // 0x4d5b80: r0 = call 0x61fa28
    //     0x4d5b80: bl           0x61fa28
    // 0x4d5b84: b 0x4d5b44
    //     0x4d5b84: b            0x4d5b44
  }

  _anon_closure() {
    // ** addr: 0x4d6280, size: 0x10c
    // 0x4d6280: EnterFrame
    //     0x4d6280: stp          fp, lr, [SP, #-0x10]!
    //     0x4d6284: mov          fp, SP
    // 0x4d6288: AllocStack(8)
    //     0x4d6288: sub          SP, SP, #8
    //     0x4d628c: ldr          r0, [fp, #0x18]
    // 0x4d6290: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x4d6290: ldur         r2, [r0, #0x17]
    //     0x4d6294: add          r2, r2, HEAP, lsl #32
    //     0x4d6298: stur         r2, [fp, #-8]
    // 0x4d629c: CheckStackOverflow
    //     0x4d629c: ldr          BARRIER, [THR, #0x38]
    //     0x4d62a0: cmp          SP, BARRIER
    //     0x4d62a4: b.ls         0x4d636c
    // 0x4d62a8: LoadField: r0 = r2->field_f
    //     0x4d62a8: ldur         r0, [r2, #0xf]
    //     0x4d62ac: add          r0, r0, HEAP, lsl #32
    // 0x4d62b0: LoadField: r1 = r0->field_3b
    //     0x4d62b0: ldur         r1, [r0, #0x3b]
    //     0x4d62b4: add          r1, r1, HEAP, lsl #32
    // 0x4d62b8: r0 = dart_core__GrowableList::clear()
    //     0x4d62b8: bl           0x2b3608
    //     0x4d62bc: ldur         r0, [fp, #-8]
    // 0x4d62c0: LoadField: r1 = r0->field_f
    //     0x4d62c0: ldur         r1, [r0, #0xf]
    //     0x4d62c4: add          r1, r1, HEAP, lsl #32
    // 0x4d62c8: LoadField: r2 = r1->field_3b
    //     0x4d62c8: ldur         r2, [r1, #0x3b]
    //     0x4d62cc: add          r2, r2, HEAP, lsl #32
    //     0x4d62d0: ldr          r3, [fp, #0x10]
    // 0x4d62d4: LoadField: r1 = r3->field_7
    //     0x4d62d4: ldur         r1, [r3, #7]
    //     0x4d62d8: add          r1, r1, HEAP, lsl #32
    // 0x4d62dc: BARRIER = pp[0x40]
    //     0x4d62dc: ldr          BARRIER, [PP, #0x40]
    //     0x4d62e0: cmp          r1, r16
    // 0x4d62e4: b.eq 0x4d6374
    //     0x4d62e4: b.eq         0x4d6374
    // 0x4d62e8: BARRIER = r1
    //     0x4d62e8: mov          BARRIER, r1
    // 0x4d62ec: r1 = r2
    //     0x4d62ec: mov          r1, r2
    // 0x4d62f0: r2 = BARRIER
    //     0x4d62f0: mov          r2, BARRIER
    // 0x4d62f4: r0 = dart_core__GrowableList::addAll()
    //     0x4d62f4: bl           0x2ce4e8
    //     0x4d62f8: ldur         r0, [fp, #-8]
    // 0x4d62fc: LoadField: r1 = r0->field_f
    //     0x4d62fc: ldur         r1, [r0, #0xf]
    //     0x4d6300: add          r1, r1, HEAP, lsl #32
    // 0x4d6304: LoadField: r2 = r1->field_3f
    //     0x4d6304: ldur         r2, [r1, #0x3f]
    //     0x4d6308: add          r2, r2, HEAP, lsl #32
    // 0x4d630c: r1 = r2
    //     0x4d630c: mov          r1, r2
    // 0x4d6310: r0 = dart_core__GrowableList::clear()
    //     0x4d6310: bl           0x2b3608
    //     0x4d6314: ldur         r0, [fp, #-8]
    // 0x4d6318: LoadField: r1 = r0->field_f
    //     0x4d6318: ldur         r1, [r0, #0xf]
    //     0x4d631c: add          r1, r1, HEAP, lsl #32
    // 0x4d6320: LoadField: r2 = r1->field_3f
    //     0x4d6320: ldur         r2, [r1, #0x3f]
    //     0x4d6324: add          r2, r2, HEAP, lsl #32
    //     0x4d6328: ldr          r1, [fp, #0x10]
    // 0x4d632c: LoadField: r3 = r1->field_b
    //     0x4d632c: ldur         r3, [r1, #0xb]
    //     0x4d6330: add          r3, r3, HEAP, lsl #32
    // 0x4d6334: BARRIER = pp[0x40]
    //     0x4d6334: ldr          BARRIER, [PP, #0x40]
    //     0x4d6338: cmp          r3, r16
    // 0x4d633c: b.eq 0x4d6380
    //     0x4d633c: b.eq         0x4d6380
    // 0x4d6340: r1 = r2
    //     0x4d6340: mov          r1, r2
    // 0x4d6344: r2 = r3
    //     0x4d6344: mov          r2, r3
    // 0x4d6348: r0 = dart_core__GrowableList::addAll()
    //     0x4d6348: bl           0x2ce4e8
    //     0x4d634c: ldur         r0, [fp, #-8]
    // 0x4d6350: LoadField: r1 = r0->field_f
    //     0x4d6350: ldur         r1, [r0, #0xf]
    //     0x4d6354: add          r1, r1, HEAP, lsl #32
    // 0x4d6358: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x4d6358: bl           0x3ac980
    // 0x4d635c: r0 = NULL
    //     0x4d635c: mov          r0, NULL
    // 0x4d6360: SP = fp
    //     0x4d6360: mov          SP, fp
    // 0x4d6364: LeaveFrame
    //     0x4d6364: ldp          fp, lr, [SP], #0x10
    // 0x4d6368: ret
    //     0x4d6368: ret          
    // 0x4d636c: r0 = call 0x61fa28
    //     0x4d636c: bl           0x61fa28
    // 0x4d6370: b 0x4d62a8
    //     0x4d6370: b            0x4d62a8
    // 0x4d6374: r9 = pp[0xda0]
    //     0x4d6374: add          r9, PP, #0x10, lsl #12
    //     0x4d6378: ldr          r9, [r9, #0xd90]
    // 0x4d637c: r0 = call 0x620258
    //     0x4d637c: bl           0x620258
    // 0x4d6380: r9 = pp[0xda8]
    //     0x4d6380: add          r9, PP, #0x10, lsl #12
    //     0x4d6384: ldr          r9, [r9, #0xd98]
    // 0x4d6388: r0 = call 0x620258
    //     0x4d6388: bl           0x620258
  }
