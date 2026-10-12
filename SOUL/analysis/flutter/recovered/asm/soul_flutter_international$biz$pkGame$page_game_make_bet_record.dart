// lib: , url: soul_flutter_international$biz$pkGame$page_game_make_bet_record


  build() {
    // ** addr: 0x440e40, size: 0x1ac
    // 0x440e40: EnterFrame
    //     0x440e40: stp          fp, lr, [SP, #-0x10]!
    //     0x440e44: mov          fp, SP
    // 0x440e48: AllocStack(0x20)
    //     0x440e48: sub          SP, SP, #0x20
    // 0x440e4c: r0 = r1
    //     0x440e4c: mov          r0, r1
    //     0x440e50: stur         r1, [fp, #-8]
    // 0x440e54: r1 = r2
    //     0x440e54: mov          r1, r2
    //     0x440e58: stur         r2, [fp, #-0x10]
    // 0x440e5c: CheckStackOverflow
    //     0x440e5c: ldr          BARRIER, [THR, #0x38]
    //     0x440e60: cmp          SP, BARRIER
    //     0x440e64: b.ls         0x440fbc
    //     0x440e68: mov          r1, #3
    // 0x440e6c: r0 = call 0x61e890
    //     0x440e6c: bl           0x61e890
    // 0x440e70: r2 = r0
    //     0x440e70: mov          r2, r0
    //     0x440e74: ldur         r0, [fp, #-8]
    //     0x440e78: stur         r2, [fp, #-0x18]
    // 0x440e7c: StoreField: r2->field_f = r0
    //     0x440e7c: stur         r0, [r2, #0xf]
    //     0x440e80: ldur         r1, [fp, #-0x10]
    // 0x440e84: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenHeight()
    //     0x440e84: bl           0x3b5484
    //     0x440e88: ldur         r1, [fp, #-0x10]
    //     0x440e8c: stur         d0, [fp, #-0x20]
    // 0x440e90: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenWidth()
    //     0x440e90: bl           0x3a877c
    //     0x440e94: mov          v1.16b, v0.16b
    // 0x440e98: d0 = pp[0xeae]
    //     0x440e98: add          r17, PP, #0xe, lsl #12
    //     0x440e9c: ldr          d0, [r17, #0xea0]
    //     0x440ea0: fmul         d2, d1, d0
    // 0x440ea4: d0 = pp[0xeb6]
    //     0x440ea4: add          r17, PP, #0xe, lsl #12
    //     0x440ea8: ldr          d0, [r17, #0xea8]
    //     0x440eac: fdiv         d1, d2, d0
    //     0x440eb0: ldp          r0, r1, [THR, #0x50]
    //     0x440eb4: add          r0, r0, #0x10
    //     0x440eb8: cmp          r1, r0
    // 0x440ebc: b.ls 0x440fc4
    //     0x440ebc: b.ls         0x440fc4
    //     0x440ec0: str          r0, [THR, #0x50]
    //     0x440ec4: sub          r0, r0, #0xf
    //     0x440ec8: mov          r1, #0xe15c
    //     0x440ecc: movk         r1, #3, lsl #16
    //     0x440ed0: stur         r1, [r0, #-1]
    // 0x440ed4: StoreField: r0->field_7 = d1
    //     0x440ed4: stur         d1, [r0, #7]
    //     0x440ed8: ldur         r3, [fp, #-0x18]
    // 0x440edc: StoreField: r3->field_13 = r0
    //     0x440edc: stur         r0, [r3, #0x13]
    //     0x440ee0: ldurb        r16, [r3, #-1]
    //     0x440ee4: ldurb        r17, [r0, #-1]
    //     0x440ee8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x440eec: tst          BARRIER, HEAP, lsr #32
    // 0x440ef0: b.eq 0x440ef8
    //     0x440ef0: b.eq         0x440ef8
    // 0x440ef4: r0 = call 0x61e08c
    //     0x440ef4: bl           0x61e08c
    //     0x440ef8: ldur         d0, [fp, #-0x20]
    //     0x440efc: fsub         d2, d0, d1
    //     0x440f00: ldp          r0, r1, [THR, #0x50]
    //     0x440f04: add          r0, r0, #0x10
    //     0x440f08: cmp          r1, r0
    // 0x440f0c: b.ls 0x440fd4
    //     0x440f0c: b.ls         0x440fd4
    //     0x440f10: str          r0, [THR, #0x50]
    //     0x440f14: sub          r0, r0, #0xf
    //     0x440f18: mov          r1, #0xe15c
    //     0x440f1c: movk         r1, #3, lsl #16
    //     0x440f20: stur         r1, [r0, #-1]
    // 0x440f24: StoreField: r0->field_7 = d2
    //     0x440f24: stur         d2, [r0, #7]
    // 0x440f28: ArrayStore: r3[0] = r0  ; List_8
    //     0x440f28: stur         r0, [r3, #0x17]
    //     0x440f2c: ldurb        r16, [r3, #-1]
    //     0x440f30: ldurb        r17, [r0, #-1]
    //     0x440f34: and          BARRIER, r17, BARRIER, lsr #2
    //     0x440f38: tst          BARRIER, HEAP, lsr #32
    // 0x440f3c: b.eq 0x440f44
    //     0x440f3c: b.eq         0x440f44
    // 0x440f40: r0 = call 0x61e08c
    //     0x440f40: bl           0x61e08c
    // 0x440f44: r2 = r3
    //     0x440f44: mov          r2, r3
    // 0x440f48: r1 = pp[0x1b7]
    //     0x440f48: add          r1, PP, #0xf, lsl #12
    //     0x440f4c: ldr          r1, [r1, #0x1a8]
    // 0x440f50: r0 = call 0x61ec54
    //     0x440f50: bl           0x61ec54
    // 0x440f54: r1 = pp[0x1bf]
    //     0x440f54: add          r1, PP, #0xf, lsl #12
    //     0x440f58: ldr          r1, [r1, #0x1b0]
    //     0x440f5c: stur         r0, [fp, #-8]
    // 0x440f60: r0 = call 0x41a414
    //     0x440f60: bl           0x41a414
    // 0x440f64: r3 = r0
    //     0x440f64: mov          r3, r0
    //     0x440f68: ldur         r0, [fp, #-8]
    //     0x440f6c: stur         r3, [fp, #-0x10]
    // 0x440f70: StoreField: r3->field_13 = r0
    //     0x440f70: stur         r0, [r3, #0x13]
    //     0x440f74: ldur         r2, [fp, #-0x18]
    // 0x440f78: r1 = pp[0x1c7]
    //     0x440f78: add          r1, PP, #0xf, lsl #12
    //     0x440f7c: ldr          r1, [r1, #0x1b8]
    // 0x440f80: r0 = call 0x61ec54
    //     0x440f80: bl           0x61ec54
    // 0x440f84: r1 = pp[0x1bf]
    //     0x440f84: add          r1, PP, #0xf, lsl #12
    //     0x440f88: ldr          r1, [r1, #0x1b0]
    //     0x440f8c: stur         r0, [fp, #-8]
    // 0x440f90: r0 = call 0x3b81c4
    //     0x440f90: bl           0x3b81c4
    // 0x440f94: r1 = r0
    //     0x440f94: mov          r1, r0
    //     0x440f98: ldur         r2, [fp, #-0x10]
    //     0x440f9c: ldur         r3, [fp, #-8]
    // 0x440fa0: r5 = NULL
    //     0x440fa0: mov          r5, NULL
    //     0x440fa4: stur         r0, [fp, #-8]
    // 0x440fa8: r0 = provider$src$provider_InheritedProvider::ctor()
    //     0x440fa8: bl           0x3b7e8c
    //     0x440fac: ldur         r0, [fp, #-8]
    // 0x440fb0: SP = fp
    //     0x440fb0: mov          SP, fp
    // 0x440fb4: LeaveFrame
    //     0x440fb4: ldp          fp, lr, [SP], #0x10
    // 0x440fb8: ret
    //     0x440fb8: ret          
    // 0x440fbc: r0 = call 0x61fa28
    //     0x440fbc: bl           0x61fa28
    // 0x440fc0: b 0x440e68
    //     0x440fc0: b            0x440e68
    //     0x440fc4: str          q1, [SP, #-0x10]!
    // 0x440fc8: r0 = call 0x61f878
    //     0x440fc8: bl           0x61f878
    //     0x440fcc: ldr          q1, [SP], #0x10
    // 0x440fd0: b 0x440ed4
    //     0x440fd0: b            0x440ed4
    //     0x440fd4: str          q2, [SP, #-0x10]!
    //     0x440fd8: str          r3, [SP, #-8]!
    // 0x440fdc: r0 = call 0x61f878
    //     0x440fdc: bl           0x61f878
    //     0x440fe0: ldr          r3, [SP], #8
    //     0x440fe4: ldr          q2, [SP], #0x10
    // 0x440fe8: b 0x440f24
    //     0x440fe8: b            0x440f24
  }

  _anon_closure() {
    // ** addr: 0x440fec, size: 0x6c
    // 0x440fec: EnterFrame
    //     0x440fec: stp          fp, lr, [SP, #-0x10]!
    //     0x440ff0: mov          fp, SP
    //     0x440ff4: ldr          r0, [fp, #0x28]
    // 0x440ff8: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x440ff8: ldur         r1, [r0, #0x17]
    //     0x440ffc: add          r1, r1, HEAP, lsl #32
    // 0x441000: CheckStackOverflow
    //     0x441000: ldr          BARRIER, [THR, #0x38]
    //     0x441004: cmp          SP, BARRIER
    //     0x441008: b.ls         0x441050
    // 0x44100c: LoadField: r0 = r1->field_f
    //     0x44100c: ldur         r0, [r1, #0xf]
    //     0x441010: add          r0, r0, HEAP, lsl #32
    // 0x441014: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x441014: ldur         r2, [r0, #0x17]
    //     0x441018: add          r2, r2, HEAP, lsl #32
    // 0x44101c: LoadField: r3 = r0->field_13
    //     0x44101c: ldur         r3, [r0, #0x13]
    //     0x441020: add          r3, r3, HEAP, lsl #32
    // 0x441024: LoadField: r0 = r1->field_13
    //     0x441024: ldur         r0, [r1, #0x13]
    //     0x441028: add          r0, r0, HEAP, lsl #32
    // 0x44102c: ArrayLoad: r4 = r1[0]  ; List_8
    //     0x44102c: ldur         r4, [r1, #0x17]
    //     0x441030: add          r4, r4, HEAP, lsl #32
    // 0x441034: LoadField: d0 = r0->field_7
    //     0x441034: ldur         d0, [r0, #7]
    // 0x441038: LoadField: d1 = r4->field_7
    //     0x441038: ldur         d1, [r4, #7]
    //     0x44103c: ldr          r1, [fp, #0x20]
    // 0x441040: r0 = soul_flutter_international$biz$pkGame$page_game_make_bet_record_::_betRankListWidget()
    //     0x441040: bl           0x441058
    // 0x441044: SP = fp
    //     0x441044: mov          SP, fp
    // 0x441048: LeaveFrame
    //     0x441048: ldp          fp, lr, [SP], #0x10
    // 0x44104c: ret
    //     0x44104c: ret          
    // 0x441050: r0 = call 0x61fa28
    //     0x441050: bl           0x61fa28
    // 0x441054: b 0x44100c
    //     0x441054: b            0x44100c
  }

  initState() {
    // ** addr: 0x4da338, size: 0x1dc
    // 0x4da338: EnterFrame
    //     0x4da338: stp          fp, lr, [SP, #-0x10]!
    //     0x4da33c: mov          fp, SP
    // 0x4da340: AllocStack(0x20)
    //     0x4da340: sub          SP, SP, #0x20
    // 0x4da344: r3 = r1
    //     0x4da344: mov          r3, r1
    //     0x4da348: stur         r1, [fp, #-8]
    // 0x4da34c: CheckStackOverflow
    //     0x4da34c: ldr          BARRIER, [THR, #0x38]
    //     0x4da350: cmp          SP, BARRIER
    //     0x4da354: b.ls         0x4da504
    // 0x4da358: LoadField: r0 = r3->field_b
    //     0x4da358: ldur         r0, [r3, #0xb]
    //     0x4da35c: add          r0, r0, HEAP, lsl #32
    //     0x4da360: cmp          r0, r22
    // 0x4da364: b.eq 0x4da50c
    //     0x4da364: b.eq         0x4da50c
    // 0x4da368: LoadField: r1 = r0->field_b
    //     0x4da368: ldur         r1, [r0, #0xb]
    //     0x4da36c: add          r1, r1, HEAP, lsl #32
    //     0x4da370: cmp          r1, r22
    // 0x4da374: b.ne 0x4da380
    //     0x4da374: b.ne         0x4da380
    // 0x4da378: r0 = NULL
    //     0x4da378: mov          r0, NULL
    // 0x4da37c: b 0x4da39c
    //     0x4da37c: b            0x4da39c
    // 0x4da380: r0 = LoadClassIdInstr(r1)
    //     0x4da380: ldur         r0, [r1, #-1]
    //     0x4da384: ubfx         r0, r0, #0xc, #0x14
    // 0x4da388: r2 = pp[0x32f]
    //     0x4da388: add          r2, PP, #0xf, lsl #12
    //     0x4da38c: ldr          r2, [r2, #0x320]
    //     0x4da390: sub          lr, r0, #1, lsl #12
    //     0x4da394: ldr          lr, [r21, lr, lsl #3]
    // 0x4da398: r0 = [R]()
    //     0x4da398: blr          lr
    //     0x4da39c: cmp          r0, r22
    // 0x4da3a0: b.ne 0x4da3ac
    //     0x4da3a0: b.ne         0x4da3ac
    // 0x4da3a4: r4 = pp[0x2a50]
    //     0x4da3a4: ldr          r4, [PP, #0x2a50]
    // 0x4da3a8: b 0x4da3b0
    //     0x4da3a8: b            0x4da3b0
    // 0x4da3ac: r4 = r0
    //     0x4da3ac: mov          r4, r0
    //     0x4da3b0: ldur         r3, [fp, #-8]
    // 0x4da3b4: r0 = r4
    //     0x4da3b4: mov          r0, r4
    //     0x4da3b8: stur         r4, [fp, #-0x10]
    // 0x4da3bc: r2 = NULL
    //     0x4da3bc: mov          r2, NULL
    // 0x4da3c0: r1 = NULL
    //     0x4da3c0: mov          r1, NULL
    //     0x4da3c4: mov          r4, #0x3c
    // 0x4da3c8: branchIfSmi(r0, 0x4da3d4)
    //     0x4da3c8: tbz          r0, #0, 0x4da3d4
    // 0x4da3cc: r4 = LoadClassIdInstr(r0)
    //     0x4da3cc: ldur         r4, [r0, #-1]
    //     0x4da3d0: ubfx         r4, r4, #0xc, #0x14
    //     0x4da3d4: sub          r4, r4, #0x5e
    //     0x4da3d8: cmp          r4, #1
    // 0x4da3dc: b.ls 0x4da3f0
    //     0x4da3dc: b.ls         0x4da3f0
    // 0x4da3e0: r8 = pp[0x2f8]
    //     0x4da3e0: ldr          r8, [PP, #0x2f8]
    // 0x4da3e4: r3 = pp[0x337]
    //     0x4da3e4: add          r3, PP, #0xf, lsl #12
    //     0x4da3e8: ldr          r3, [r3, #0x328]
    // 0x4da3ec: r0 = call 0x62a0c0
    //     0x4da3ec: bl           0x62a0c0
    //     0x4da3f0: ldur         r3, [fp, #-8]
    // 0x4da3f4: LoadField: r0 = r3->field_b
    //     0x4da3f4: ldur         r0, [r3, #0xb]
    //     0x4da3f8: add          r0, r0, HEAP, lsl #32
    //     0x4da3fc: cmp          r0, r22
    // 0x4da400: b.eq 0x4da510
    //     0x4da400: b.eq         0x4da510
    // 0x4da404: LoadField: r1 = r0->field_b
    //     0x4da404: ldur         r1, [r0, #0xb]
    //     0x4da408: add          r1, r1, HEAP, lsl #32
    //     0x4da40c: cmp          r1, r22
    // 0x4da410: b.ne 0x4da41c
    //     0x4da410: b.ne         0x4da41c
    // 0x4da414: r0 = NULL
    //     0x4da414: mov          r0, NULL
    // 0x4da418: b 0x4da438
    //     0x4da418: b            0x4da438
    // 0x4da41c: r0 = LoadClassIdInstr(r1)
    //     0x4da41c: ldur         r0, [r1, #-1]
    //     0x4da420: ubfx         r0, r0, #0xc, #0x14
    // 0x4da424: r2 = pp[0x347]
    //     0x4da424: add          r2, PP, #0xf, lsl #12
    //     0x4da428: ldr          r2, [r2, #0x338]
    //     0x4da42c: sub          lr, r0, #1, lsl #12
    //     0x4da430: ldr          lr, [r21, lr, lsl #3]
    // 0x4da434: r0 = [R]()
    //     0x4da434: blr          lr
    //     0x4da438: cmp          r0, r22
    // 0x4da43c: b.ne 0x4da448
    //     0x4da43c: b.ne         0x4da448
    // 0x4da440: r3 = pp[0x2a50]
    //     0x4da440: ldr          r3, [PP, #0x2a50]
    // 0x4da444: b 0x4da44c
    //     0x4da444: b            0x4da44c
    // 0x4da448: r3 = r0
    //     0x4da448: mov          r3, r0
    // 0x4da44c: r0 = r3
    //     0x4da44c: mov          r0, r3
    //     0x4da450: stur         r3, [fp, #-0x18]
    // 0x4da454: r2 = NULL
    //     0x4da454: mov          r2, NULL
    // 0x4da458: r1 = NULL
    //     0x4da458: mov          r1, NULL
    //     0x4da45c: mov          r4, #0x3c
    // 0x4da460: branchIfSmi(r0, 0x4da46c)
    //     0x4da460: tbz          r0, #0, 0x4da46c
    // 0x4da464: r4 = LoadClassIdInstr(r0)
    //     0x4da464: ldur         r4, [r0, #-1]
    //     0x4da468: ubfx         r4, r4, #0xc, #0x14
    //     0x4da46c: sub          r4, r4, #0x5e
    //     0x4da470: cmp          r4, #1
    // 0x4da474: b.ls 0x4da488
    //     0x4da474: b.ls         0x4da488
    // 0x4da478: r8 = pp[0x2f8]
    //     0x4da478: ldr          r8, [PP, #0x2f8]
    // 0x4da47c: r3 = pp[0x34f]
    //     0x4da47c: add          r3, PP, #0xf, lsl #12
    //     0x4da480: ldr          r3, [r3, #0x340]
    // 0x4da484: r0 = call 0x62a0c0
    //     0x4da484: bl           0x62a0c0
    //     0x4da488: ldur         r1, [fp, #-0x10]
    // 0x4da48c: r4 = pp[0x4c0]
    //     0x4da48c: ldr          r4, [PP, #0x4c0]
    // 0x4da490: r0 = dart_core_int::parse()
    //     0x4da490: bl           0x28703c
    //     0x4da494: ldur         r1, [fp, #-0x18]
    //     0x4da498: stur         r0, [fp, #-0x20]
    // 0x4da49c: r4 = pp[0x4c0]
    //     0x4da49c: ldr          r4, [PP, #0x4c0]
    // 0x4da4a0: r0 = dart_core_int::parse()
    //     0x4da4a0: bl           0x28703c
    //     0x4da4a4: cmp          r0, #1
    // 0x4da4a8: b.ne 0x4da4b4
    //     0x4da4a8: b.ne         0x4da4b4
    //     0x4da4ac: add          r3, NULL, #0x20
    // 0x4da4b0: b 0x4da4b8
    //     0x4da4b0: b            0x4da4b8
    //     0x4da4b4: add          r3, NULL, #0x30
    //     0x4da4b8: ldur         r0, [fp, #-8]
    //     0x4da4bc: stur         r3, [fp, #-0x18]
    // 0x4da4c0: ArrayStore: r0[0] = r3  ; List_8
    //     0x4da4c0: stur         r3, [r0, #0x17]
    // 0x4da4c4: LoadField: r4 = r0->field_13
    //     0x4da4c4: ldur         r4, [r0, #0x13]
    //     0x4da4c8: add          r4, r4, HEAP, lsl #32
    //     0x4da4cc: stur         r4, [fp, #-0x10]
    // 0x4da4d0: r1 = pp[0x35f]
    //     0x4da4d0: add          r1, PP, #0xf, lsl #12
    //     0x4da4d4: ldr          r1, [r1, #0x350]
    // 0x4da4d8: r2 = NULL
    //     0x4da4d8: mov          r2, NULL
    // 0x4da4dc: r0 = call 0x61ec54
    //     0x4da4dc: bl           0x61ec54
    //     0x4da4e0: ldur         r1, [fp, #-0x10]
    //     0x4da4e4: ldur         r2, [fp, #-0x18]
    //     0x4da4e8: ldur         r3, [fp, #-0x20]
    // 0x4da4ec: r5 = r0
    //     0x4da4ec: mov          r5, r0
    // 0x4da4f0: r0 = soul_flutter_international$biz$pkGame$notifier$notifier_game_make_bet_record_dialog_GamePKBetRankingNotifier::gainPKBetGameRank()
    //     0x4da4f0: bl           0x4da514
    // 0x4da4f4: r0 = NULL
    //     0x4da4f4: mov          r0, NULL
    // 0x4da4f8: SP = fp
    //     0x4da4f8: mov          SP, fp
    // 0x4da4fc: LeaveFrame
    //     0x4da4fc: ldp          fp, lr, [SP], #0x10
    // 0x4da500: ret
    //     0x4da500: ret          
    // 0x4da504: r0 = call 0x61fa28
    //     0x4da504: bl           0x61fa28
    // 0x4da508: b 0x4da358
    //     0x4da508: b            0x4da358
    // 0x4da50c: r0 = call 0x61ffd0
    //     0x4da50c: bl           0x61ffd0
    // 0x4da510: r0 = call 0x61ffd0
    //     0x4da510: bl           0x61ffd0
  }

  _betRankListWidget() {
    // ** addr: 0x441058, size: 0x89c
    // 0x441058: EnterFrame
    //     0x441058: stp          fp, lr, [SP, #-0x10]!
    //     0x44105c: mov          fp, SP
    // 0x441060: AllocStack(0xb8)
    //     0x441060: sub          SP, SP, #0xb8
    // 0x441064: r0 = r1
    //     0x441064: mov          r0, r1
    //     0x441068: stur         r1, [fp, #-8]
    //     0x44106c: stur         r2, [fp, #-0x10]
    //     0x441070: stur         r3, [fp, #-0x18]
    //     0x441074: stur         d0, [fp, #-0x88]
    //     0x441078: stur         d1, [fp, #-0x90]
    // 0x44107c: CheckStackOverflow
    //     0x44107c: ldr          BARRIER, [THR, #0x38]
    //     0x441080: cmp          SP, BARRIER
    //     0x441084: b.ls         0x4418a0
    //     0x441088: tbnz         r2, #4, 0x4410a4
    // 0x44108c: r1 = pp[0x74c]
    //     0x44108c: add          r1, PP, #0xc, lsl #12
    //     0x441090: ldr          r1, [r1, #0x740]
    // 0x441094: r4 = pp[0x4c0]
    //     0x441094: ldr          r4, [PP, #0x4c0]
    // 0x441098: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x441098: bl           0x3a1dcc
    // 0x44109c: r2 = r0
    //     0x44109c: mov          r2, r0
    // 0x4410a0: b 0x4410b8
    //     0x4410a0: b            0x4410b8
    // 0x4410a4: r1 = pp[0x75c]
    //     0x4410a4: add          r1, PP, #0xc, lsl #12
    //     0x4410a8: ldr          r1, [r1, #0x750]
    // 0x4410ac: r4 = pp[0x4c0]
    //     0x4410ac: ldr          r4, [PP, #0x4c0]
    // 0x4410b0: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4410b0: bl           0x3a1dcc
    // 0x4410b4: r2 = r0
    //     0x4410b4: mov          r2, r0
    //     0x4410b8: ldur         r1, [fp, #-0x10]
    //     0x4410bc: ldur         r0, [fp, #-0x18]
    //     0x4410c0: ldur         d0, [fp, #-0x90]
    //     0x4410c4: stur         r2, [fp, #-0x28]
    // 0x4410c8: LoadField: r3 = r0->field_2b
    //     0x4410c8: ldur         r3, [r0, #0x2b]
    //     0x4410cc: add          r3, r3, HEAP, lsl #32
    //     0x4410d0: stur         r3, [fp, #-0x20]
    //     0x4410d4: mov          r1, #1
    // 0x4410d8: r0 = call 0x61e890
    //     0x4410d8: bl           0x61e890
    // 0x4410dc: r1 = r0
    //     0x4410dc: mov          r1, r0
    //     0x4410e0: ldur         r0, [fp, #-0x20]
    //     0x4410e4: stur         r1, [fp, #-0x18]
    // 0x4410e8: StoreField: r1->field_f = r0
    //     0x4410e8: stur         r0, [r1, #0xf]
    // 0x4410ec: r0 = call 0x31d844
    //     0x4410ec: bl           0x31d844
    // 0x4410f0: r1 = r0
    //     0x4410f0: mov          r1, r0
    // 0x4410f4: r0 = pp[0x6310]
    //     0x4410f4: ldr          r0, [PP, #0x6310]
    //     0x4410f8: stur         r1, [fp, #-0x38]
    // 0x4410fc: StoreField: r1->field_27 = r0
    //     0x4410fc: stur         r0, [r1, #0x27]
    // 0x441100: d0 = pp[0x6080]
    //     0x441100: ldr          d0, [PP, #0x6080]
    // 0x441104: StoreField: r1->field_7 = d0
    //     0x441104: stur         d0, [r1, #7]
    // 0x441108: StoreField: r1->field_f = xzr
    //     0x441108: stur         xzr, [r1, #0xf]
    // 0x44110c: ArrayStore: r1[0] = xzr  ; List_8
    //     0x44110c: stur         xzr, [r1, #0x17]
    // 0x441110: StoreField: r1->field_1f = xzr
    //     0x441110: stur         xzr, [r1, #0x1f]
    //     0x441114: ldur         d0, [fp, #-0x90]
    //     0x441118: ldp          r0, r2, [THR, #0x50]
    //     0x44111c: add          r0, r0, #0x10
    //     0x441120: cmp          r2, r0
    // 0x441124: b.ls 0x4418a8
    //     0x441124: b.ls         0x4418a8
    //     0x441128: str          r0, [THR, #0x50]
    //     0x44112c: sub          r0, r0, #0xf
    //     0x441130: mov          r2, #0xe15c
    //     0x441134: movk         r2, #3, lsl #16
    //     0x441138: stur         r2, [r0, #-1]
    // 0x44113c: StoreField: r0->field_7 = d0
    //     0x44113c: stur         d0, [r0, #7]
    //     0x441140: stur         r0, [fp, #-0x30]
    // 0x441144: r0 = call 0x391a04
    //     0x441144: bl           0x391a04
    //     0x441148: stur         r0, [fp, #-0x40]
    //     0x44114c: ldur         BARRIER, [fp, #-0x30]
    // 0x441150: lr = pp[0x3ca]
    //     0x441150: add          lr, PP, #0xa, lsl #12
    //     0x441154: ldr          lr, [lr, #0x3c0]
    //     0x441158: stp          lr, BARRIER, [SP]
    // 0x44115c: r1 = r0
    //     0x44115c: mov          r1, r0
    // 0x441160: r4 = pp[0xebe]
    //     0x441160: add          r4, PP, #0xe, lsl #12
    //     0x441164: ldr          r4, [r4, #0xeb0]
    // 0x441168: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x441168: bl           0x391490
    // 0x44116c: r0 = call 0x3a1d94
    //     0x44116c: bl           0x3a1d94
    // 0x441170: r1 = pp[0x1cf]
    //     0x441170: add          r1, PP, #0xf, lsl #12
    //     0x441174: ldr          r1, [r1, #0x1c0]
    // 0x441178: r2 = NULL
    //     0x441178: mov          r2, NULL
    //     0x44117c: stur         r0, [fp, #-0x48]
    // 0x441180: r0 = call 0x61ec54
    //     0x441180: bl           0x61ec54
    //     0x441184: ldur         BARRIER, [fp, #-0x40]
    //     0x441188: stp          r0, BARRIER, [SP]
    //     0x44118c: ldur         r1, [fp, #-0x48]
    // 0x441190: r4 = pp[0xece]
    //     0x441190: add          r4, PP, #0xe, lsl #12
    //     0x441194: ldr          r4, [r4, #0xec0]
    // 0x441198: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x441198: bl           0x3a18c4
    // 0x44119c: r0 = call 0x352b04
    //     0x44119c: bl           0x352b04
    // 0x4411a0: d0 = pp[0xed6]
    //     0x4411a0: add          r17, PP, #0xe, lsl #12
    //     0x4411a4: ldr          d0, [r17, #0xec8]
    //     0x4411a8: stur         r0, [fp, #-0x40]
    // 0x4411ac: StoreField: r0->field_7 = d0
    //     0x4411ac: stur         d0, [r0, #7]
    // 0x4411b0: StoreField: r0->field_f = d0
    //     0x4411b0: stur         d0, [r0, #0xf]
    // 0x4411b4: r0 = call 0x352b04
    //     0x4411b4: bl           0x352b04
    // 0x4411b8: d0 = pp[0xed6]
    //     0x4411b8: add          r17, PP, #0xe, lsl #12
    //     0x4411bc: ldr          d0, [r17, #0xec8]
    //     0x4411c0: stur         r0, [fp, #-0x50]
    // 0x4411c4: StoreField: r0->field_7 = d0
    //     0x4411c4: stur         d0, [r0, #7]
    // 0x4411c8: StoreField: r0->field_f = d0
    //     0x4411c8: stur         d0, [r0, #0xf]
    // 0x4411cc: r0 = call 0x392f28
    //     0x4411cc: bl           0x392f28
    // 0x4411d0: r2 = r0
    //     0x4411d0: mov          r2, r0
    //     0x4411d4: ldur         r0, [fp, #-0x40]
    //     0x4411d8: stur         r2, [fp, #-0x58]
    // 0x4411dc: StoreField: r2->field_7 = r0
    //     0x4411dc: stur         r0, [r2, #7]
    //     0x4411e0: ldur         r0, [fp, #-0x50]
    // 0x4411e4: StoreField: r2->field_b = r0
    //     0x4411e4: stur         r0, [r2, #0xb]
    // 0x4411e8: r0 = pp[0x51a]
    //     0x4411e8: add          r0, PP, #0xa, lsl #12
    //     0x4411ec: ldr          r0, [r0, #0x510]
    // 0x4411f0: StoreField: r2->field_f = r0
    //     0x4411f0: stur         r0, [r2, #0xf]
    // 0x4411f4: StoreField: r2->field_13 = r0
    //     0x4411f4: stur         r0, [r2, #0x13]
    // 0x4411f8: r1 = pp[0xede]
    //     0x4411f8: add          r1, PP, #0xe, lsl #12
    //     0x4411fc: ldr          r1, [r1, #0xed0]
    // 0x441200: r0 = call 0x3b5478
    //     0x441200: bl           0x3b5478
    // 0x441204: r1 = r0
    //     0x441204: mov          r1, r0
    // 0x441208: r0 = pp[0xee6]
    //     0x441208: add          r0, PP, #0xe, lsl #12
    //     0x44120c: ldr          r0, [r0, #0xed8]
    //     0x441210: stur         r1, [fp, #-0x40]
    // 0x441214: StoreField: r1->field_b = r0
    //     0x441214: stur         r0, [r1, #0xb]
    // 0x441218: r0 = call 0x3b546c
    //     0x441218: bl           0x3b546c
    // 0x44121c: r1 = r0
    //     0x44121c: mov          r1, r0
    //     0x441220: ldur         r0, [fp, #-0x40]
    //     0x441224: stur         r1, [fp, #-0x50]
    // 0x441228: StoreField: r1->field_7 = r0
    //     0x441228: stur         r0, [r1, #7]
    // 0x44122c: r0 = pp[0xeee]
    //     0x44122c: add          r0, PP, #0xe, lsl #12
    //     0x441230: ldr          r0, [r0, #0xee0]
    // 0x441234: StoreField: r1->field_13 = r0
    //     0x441234: stur         r0, [r1, #0x13]
    // 0x441238: r0 = pp[0xaae]
    //     0x441238: add          r0, PP, #0xe, lsl #12
    //     0x44123c: ldr          r0, [r0, #0xaa0]
    // 0x441240: ArrayStore: r1[0] = r0  ; List_8
    //     0x441240: stur         r0, [r1, #0x17]
    // 0x441244: r2 = pp[0xef6]
    //     0x441244: add          r2, PP, #0xe, lsl #12
    //     0x441248: ldr          r2, [r2, #0xee8]
    // 0x44124c: StoreField: r1->field_1f = r2
    //     0x44124c: stur         r2, [r1, #0x1f]
    //     0x441250: add          r3, NULL, #0x30
    // 0x441254: StoreField: r1->field_23 = r3
    //     0x441254: stur         r3, [r1, #0x23]
    //     0x441258: fmov         d0, #1.00000000
    // 0x44125c: StoreField: r1->field_27 = d0
    //     0x44125c: stur         d0, [r1, #0x27]
    // 0x441260: StoreField: r1->field_2f = d0
    //     0x441260: stur         d0, [r1, #0x2f]
    // 0x441264: r4 = pp[0xefe]
    //     0x441264: add          r4, PP, #0xe, lsl #12
    //     0x441268: ldr          r4, [r4, #0xef0]
    // 0x44126c: StoreField: r1->field_37 = r4
    //     0x44126c: stur         r4, [r1, #0x37]
    // 0x441270: StoreField: r1->field_3b = r3
    //     0x441270: stur         r3, [r1, #0x3b]
    // 0x441274: StoreField: r1->field_3f = r3
    //     0x441274: stur         r3, [r1, #0x3f]
    // 0x441278: r0 = call 0x391dd8
    //     0x441278: bl           0x391dd8
    // 0x44127c: r1 = r0
    //     0x44127c: mov          r1, r0
    //     0x441280: ldur         r0, [fp, #-0x50]
    //     0x441284: stur         r1, [fp, #-0x40]
    // 0x441288: StoreField: r1->field_b = r0
    //     0x441288: stur         r0, [r1, #0xb]
    // 0x44128c: r0 = pp[0xb86]
    //     0x44128c: add          r0, PP, #0xe, lsl #12
    //     0x441290: ldr          r0, [r0, #0xb78]
    // 0x441294: StoreField: r1->field_23 = r0
    //     0x441294: stur         r0, [r1, #0x23]
    // 0x441298: r0 = call 0x2e3578
    //     0x441298: bl           0x2e3578
    //     0x44129c: stur         r0, [fp, #-0x50]
    // 0x4412a0: StoreField: r0->field_7 = xzr
    //     0x4412a0: stur         xzr, [r0, #7]
    //     0x4412a4: fmov         d0, #17.00000000
    // 0x4412a8: StoreField: r0->field_f = d0
    //     0x4412a8: stur         d0, [r0, #0xf]
    // 0x4412ac: ArrayStore: r0[0] = xzr  ; List_8
    //     0x4412ac: stur         xzr, [r0, #0x17]
    // 0x4412b0: StoreField: r0->field_1f = xzr
    //     0x4412b0: stur         xzr, [r0, #0x1f]
    // 0x4412b4: r0 = call 0x2b8e80
    //     0x4412b4: bl           0x2b8e80
    // 0x4412b8: d0 = pp[0x1d7]
    //     0x4412b8: add          r17, PP, #0xf, lsl #12
    //     0x4412bc: ldr          d0, [r17, #0x1c8]
    //     0x4412c0: stur         r0, [fp, #-0x60]
    // 0x4412c4: StoreField: r0->field_7 = d0
    //     0x4412c4: stur         d0, [r0, #7]
    // 0x4412c8: d0 = pp[0xb90]
    //     0x4412c8: ldr          d0, [PP, #0xb90]
    // 0x4412cc: StoreField: r0->field_f = d0
    //     0x4412cc: stur         d0, [r0, #0xf]
    // 0x4412d0: ArrayStore: r0[0] = xzr  ; List_8
    //     0x4412d0: stur         xzr, [r0, #0x17]
    // 0x4412d4: StoreField: r0->field_1f = d0
    //     0x4412d4: stur         d0, [r0, #0x1f]
    //     0x4412d8: ldur         r1, [fp, #-0x10]
    //     0x4412dc: tbnz         r1, #4, 0x441304
    // 0x4412e0: r1 = pp[0xede]
    //     0x4412e0: add          r1, PP, #0xe, lsl #12
    //     0x4412e4: ldr          r1, [r1, #0xed0]
    // 0x4412e8: r0 = call 0x3b5478
    //     0x4412e8: bl           0x3b5478
    // 0x4412ec: r1 = r0
    //     0x4412ec: mov          r1, r0
    // 0x4412f0: r0 = pp[0x1df]
    //     0x4412f0: add          r0, PP, #0xf, lsl #12
    //     0x4412f4: ldr          r0, [r0, #0x1d0]
    // 0x4412f8: StoreField: r1->field_b = r0
    //     0x4412f8: stur         r0, [r1, #0xb]
    // 0x4412fc: r2 = r1
    //     0x4412fc: mov          r2, r1
    // 0x441300: b 0x441324
    //     0x441300: b            0x441324
    // 0x441304: r1 = pp[0xede]
    //     0x441304: add          r1, PP, #0xe, lsl #12
    //     0x441308: ldr          r1, [r1, #0xed0]
    // 0x44130c: r0 = call 0x3b5478
    //     0x44130c: bl           0x3b5478
    // 0x441310: r1 = r0
    //     0x441310: mov          r1, r0
    // 0x441314: r0 = pp[0x1e7]
    //     0x441314: add          r0, PP, #0xf, lsl #12
    //     0x441318: ldr          r0, [r0, #0x1d8]
    // 0x44131c: StoreField: r1->field_b = r0
    //     0x44131c: stur         r0, [r1, #0xb]
    // 0x441320: r2 = r1
    //     0x441320: mov          r2, r1
    //     0x441324: ldur         r1, [fp, #-0x28]
    //     0x441328: ldur         r0, [fp, #-0x20]
    //     0x44132c: stur         r2, [fp, #-0x10]
    // 0x441330: r0 = call 0x3b546c
    //     0x441330: bl           0x3b546c
    // 0x441334: r1 = r0
    //     0x441334: mov          r1, r0
    //     0x441338: ldur         r0, [fp, #-0x10]
    //     0x44133c: stur         r1, [fp, #-0x68]
    // 0x441340: StoreField: r1->field_7 = r0
    //     0x441340: stur         r0, [r1, #7]
    // 0x441344: r0 = pp[0x1ef]
    //     0x441344: add          r0, PP, #0xf, lsl #12
    //     0x441348: ldr          r0, [r0, #0x1e0]
    // 0x44134c: StoreField: r1->field_13 = r0
    //     0x44134c: stur         r0, [r1, #0x13]
    // 0x441350: r0 = pp[0xaae]
    //     0x441350: add          r0, PP, #0xe, lsl #12
    //     0x441354: ldr          r0, [r0, #0xaa0]
    // 0x441358: ArrayStore: r1[0] = r0  ; List_8
    //     0x441358: stur         r0, [r1, #0x17]
    // 0x44135c: r2 = pp[0xef6]
    //     0x44135c: add          r2, PP, #0xe, lsl #12
    //     0x441360: ldr          r2, [r2, #0xee8]
    // 0x441364: StoreField: r1->field_1f = r2
    //     0x441364: stur         r2, [r1, #0x1f]
    //     0x441368: add          r2, NULL, #0x30
    // 0x44136c: StoreField: r1->field_23 = r2
    //     0x44136c: stur         r2, [r1, #0x23]
    //     0x441370: fmov         d0, #1.00000000
    // 0x441374: StoreField: r1->field_27 = d0
    //     0x441374: stur         d0, [r1, #0x27]
    // 0x441378: StoreField: r1->field_2f = d0
    //     0x441378: stur         d0, [r1, #0x2f]
    // 0x44137c: r3 = pp[0xefe]
    //     0x44137c: add          r3, PP, #0xe, lsl #12
    //     0x441380: ldr          r3, [r3, #0xef0]
    // 0x441384: StoreField: r1->field_37 = r3
    //     0x441384: stur         r3, [r1, #0x37]
    // 0x441388: StoreField: r1->field_3b = r2
    //     0x441388: stur         r2, [r1, #0x3b]
    // 0x44138c: StoreField: r1->field_3f = r2
    //     0x44138c: stur         r2, [r1, #0x3f]
    // 0x441390: r0 = call 0x391dd8
    //     0x441390: bl           0x391dd8
    // 0x441394: r1 = r0
    //     0x441394: mov          r1, r0
    //     0x441398: ldur         r0, [fp, #-0x68]
    //     0x44139c: stur         r1, [fp, #-0x10]
    // 0x4413a0: StoreField: r1->field_b = r0
    //     0x4413a0: stur         r0, [r1, #0xb]
    // 0x4413a4: r0 = pp[0xb86]
    //     0x4413a4: add          r0, PP, #0xe, lsl #12
    //     0x4413a8: ldr          r0, [r0, #0xb78]
    // 0x4413ac: StoreField: r1->field_23 = r0
    //     0x4413ac: stur         r0, [r1, #0x23]
    // 0x4413b0: r0 = call 0x31abec
    //     0x4413b0: bl           0x31abec
    // 0x4413b4: r1 = r0
    //     0x4413b4: mov          r1, r0
    //     0x4413b8: add          r0, NULL, #0x20
    //     0x4413bc: stur         r1, [fp, #-0x68]
    // 0x4413c0: StoreField: r1->field_7 = r0
    //     0x4413c0: stur         r0, [r1, #7]
    // 0x4413c4: r2 = pp[0x6050]
    //     0x4413c4: ldr          r2, [PP, #0x6050]
    // 0x4413c8: StoreField: r1->field_b = r2
    //     0x4413c8: stur         r2, [r1, #0xb]
    // 0x4413cc: r2 = pp[0x1f7]
    //     0x4413cc: add          r2, PP, #0xf, lsl #12
    //     0x4413d0: ldr          r2, [r2, #0x1e8]
    // 0x4413d4: StoreField: r1->field_1f = r2
    //     0x4413d4: stur         r2, [r1, #0x1f]
    // 0x4413d8: r3 = pp[0xe4e]
    //     0x4413d8: add          r3, PP, #0xe, lsl #12
    //     0x4413dc: ldr          r3, [r3, #0xe40]
    // 0x4413e0: StoreField: r1->field_23 = r3
    //     0x4413e0: stur         r3, [r1, #0x23]
    // 0x4413e4: r0 = call 0x3b3480
    //     0x4413e4: bl           0x3b3480
    // 0x4413e8: r1 = r0
    //     0x4413e8: mov          r1, r0
    // 0x4413ec: r0 = pp[0x1f7]
    //     0x4413ec: add          r0, PP, #0xf, lsl #12
    //     0x4413f0: ldr          r0, [r0, #0x1e8]
    //     0x4413f4: stur         r1, [fp, #-0x70]
    // 0x4413f8: StoreField: r1->field_13 = r0
    //     0x4413f8: stur         r0, [r1, #0x13]
    // 0x4413fc: r0 = pp[0x52c8]
    //     0x4413fc: ldr          r0, [PP, #0x52c8]
    // 0x441400: StoreField: r1->field_27 = r0
    //     0x441400: stur         r0, [r1, #0x27]
    // 0x441404: r0 = pp[0xe4e]
    //     0x441404: add          r0, PP, #0xe, lsl #12
    //     0x441408: ldr          r0, [r0, #0xe40]
    // 0x44140c: StoreField: r1->field_1f = r0
    //     0x44140c: stur         r0, [r1, #0x1f]
    //     0x441410: add          r0, NULL, #0x20
    // 0x441414: StoreField: r1->field_2b = r0
    //     0x441414: stur         r0, [r1, #0x2b]
    // 0x441418: r0 = call 0x393bf8
    //     0x441418: bl           0x393bf8
    // 0x44141c: r1 = r0
    //     0x44141c: mov          r1, r0
    //     0x441420: ldur         r0, [fp, #-0x28]
    //     0x441424: stur         r1, [fp, #-0x78]
    // 0x441428: StoreField: r1->field_b = r0
    //     0x441428: stur         r0, [r1, #0xb]
    //     0x44142c: ldur         r0, [fp, #-0x68]
    // 0x441430: StoreField: r1->field_13 = r0
    //     0x441430: stur         r0, [r1, #0x13]
    //     0x441434: ldur         r0, [fp, #-0x70]
    // 0x441438: ArrayStore: r1[0] = r0  ; List_8
    //     0x441438: stur         r0, [r1, #0x17]
    // 0x44143c: r0 = pp[0x53a8]
    //     0x44143c: ldr          r0, [PP, #0x53a8]
    // 0x441440: StoreField: r1->field_1b = r0
    //     0x441440: stur         r0, [r1, #0x1b]
    //     0x441444: mov          r0, #2
    // 0x441448: StoreField: r1->field_37 = r0
    //     0x441448: stur         r0, [r1, #0x37]
    // 0x44144c: r0 = call 0x391a04
    //     0x44144c: bl           0x391a04
    //     0x441450: stur         r0, [fp, #-0x28]
    //     0x441454: ldur         BARRIER, [fp, #-0x50]
    //     0x441458: ldur         lr, [fp, #-0x60]
    //     0x44145c: stp          lr, BARRIER, [SP, #0x18]
    // 0x441460: BARRIER = pp[0x1ff]
    //     0x441460: add          BARRIER, PP, #0xf, lsl #12
    //     0x441464: ldr          BARRIER, [BARRIER, #0x1f0]
    //     0x441468: ldur         lr, [fp, #-0x10]
    //     0x44146c: stp          lr, BARRIER, [SP, #8]
    //     0x441470: ldur         BARRIER, [fp, #-0x78]
    //     0x441474: str          BARRIER, [SP]
    // 0x441478: r1 = r0
    //     0x441478: mov          r1, r0
    // 0x44147c: r4 = pp[0x207]
    //     0x44147c: add          r4, PP, #0xf, lsl #12
    //     0x441480: ldr          r4, [r4, #0x1f8]
    // 0x441484: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x441484: bl           0x391490
    // 0x441488: r0 = call 0x2e3578
    //     0x441488: bl           0x2e3578
    //     0x44148c: stur         r0, [fp, #-0x10]
    // 0x441490: StoreField: r0->field_7 = xzr
    //     0x441490: stur         xzr, [r0, #7]
    //     0x441494: fmov         d0, #17.00000000
    // 0x441498: StoreField: r0->field_f = d0
    //     0x441498: stur         d0, [r0, #0xf]
    // 0x44149c: ArrayStore: r0[0] = xzr  ; List_8
    //     0x44149c: stur         xzr, [r0, #0x17]
    // 0x4414a0: StoreField: r0->field_1f = xzr
    //     0x4414a0: stur         xzr, [r0, #0x1f]
    // 0x4414a4: r0 = soul_flutter_international$biz$pkGame$page_game_make_bet_record_::backButton()
    //     0x4414a4: bl           0x441b0c
    //     0x4414a8: stur         r0, [fp, #-0x50]
    // 0x4414ac: r0 = call 0x391a04
    //     0x4414ac: bl           0x391a04
    //     0x4414b0: stur         r0, [fp, #-0x60]
    //     0x4414b4: ldur         BARRIER, [fp, #-0x10]
    //     0x4414b8: ldur         lr, [fp, #-0x50]
    //     0x4414bc: stp          lr, BARRIER, [SP]
    // 0x4414c0: r1 = r0
    //     0x4414c0: mov          r1, r0
    // 0x4414c4: r4 = pp[0x20f]
    //     0x4414c4: add          r4, PP, #0xf, lsl #12
    //     0x4414c8: ldr          r4, [r4, #0x200]
    // 0x4414cc: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4414cc: bl           0x391490
    // 0x4414d0: r1 = NULL
    //     0x4414d0: mov          r1, NULL
    //     0x4414d4: mov          r2, #4
    // 0x4414d8: r0 = call 0x61f920
    //     0x4414d8: bl           0x61f920
    // 0x4414dc: r2 = r0
    //     0x4414dc: mov          r2, r0
    //     0x4414e0: ldur         r0, [fp, #-0x28]
    //     0x4414e4: stur         r2, [fp, #-0x10]
    // 0x4414e8: StoreField: r2->field_f = r0
    //     0x4414e8: stur         r0, [r2, #0xf]
    //     0x4414ec: ldur         r0, [fp, #-0x60]
    // 0x4414f0: StoreField: r2->field_13 = r0
    //     0x4414f0: stur         r0, [r2, #0x13]
    // 0x4414f4: r1 = pp[0x5c58]
    //     0x4414f4: ldr          r1, [PP, #0x5c58]
    // 0x4414f8: r0 = call 0x61e854
    //     0x4414f8: bl           0x61e854
    // 0x4414fc: r1 = r0
    //     0x4414fc: mov          r1, r0
    //     0x441500: ldur         r0, [fp, #-0x10]
    //     0x441504: stur         r1, [fp, #-0x28]
    // 0x441508: StoreField: r1->field_f = r0
    //     0x441508: stur         r0, [r1, #0xf]
    //     0x44150c: mov          r2, #4
    // 0x441510: StoreField: r1->field_b = r2
    //     0x441510: stur         r2, [r1, #0xb]
    // 0x441514: r0 = call 0x39e6f4
    //     0x441514: bl           0x39e6f4
    // 0x441518: r1 = r0
    //     0x441518: mov          r1, r0
    // 0x44151c: r0 = pp[0xaae]
    //     0x44151c: add          r0, PP, #0xe, lsl #12
    //     0x441520: ldr          r0, [r0, #0xaa0]
    //     0x441524: stur         r1, [fp, #-0x10]
    // 0x441528: StoreField: r1->field_f = r0
    //     0x441528: stur         r0, [r1, #0xf]
    // 0x44152c: r0 = pp[0xf16]
    //     0x44152c: add          r0, PP, #0xe, lsl #12
    //     0x441530: ldr          r0, [r0, #0xf08]
    // 0x441534: ArrayStore: r1[0] = r0  ; List_8
    //     0x441534: stur         r0, [r1, #0x17]
    // 0x441538: r0 = pp[0xf1e]
    //     0x441538: add          r0, PP, #0xe, lsl #12
    //     0x44153c: ldr          r0, [r0, #0xf10]
    // 0x441540: StoreField: r1->field_1b = r0
    //     0x441540: stur         r0, [r1, #0x1b]
    //     0x441544: ldur         r0, [fp, #-0x28]
    // 0x441548: StoreField: r1->field_b = r0
    //     0x441548: stur         r0, [r1, #0xb]
    // 0x44154c: r0 = call 0x3949ec
    //     0x44154c: bl           0x3949ec
    // 0x441550: r3 = r0
    //     0x441550: mov          r3, r0
    // 0x441554: r0 = pp[0x217]
    //     0x441554: add          r0, PP, #0xf, lsl #12
    //     0x441558: ldr          r0, [r0, #0x208]
    //     0x44155c: stur         r3, [fp, #-0x28]
    // 0x441560: StoreField: r3->field_13 = r0
    //     0x441560: stur         r0, [r3, #0x13]
    //     0x441564: ldur         r0, [fp, #-0x20]
    // 0x441568: LoadField: r1 = r0->field_b
    //     0x441568: ldur         r1, [r0, #0xb]
    //     0x44156c: sbfx         r0, r1, #1, #0x1f
    //     0x441570: cmp          r0, #0
    // 0x441574: b.le 0x441638
    //     0x441574: b.le         0x441638
    //     0x441578: ldur         r2, [fp, #-0x18]
    // 0x44157c: LoadField: r0 = r2->field_f
    //     0x44157c: ldur         r0, [r2, #0xf]
    //     0x441580: add          r0, r0, HEAP, lsl #32
    // 0x441584: LoadField: r1 = r0->field_b
    //     0x441584: ldur         r1, [r0, #0xb]
    //     0x441588: sbfx         r0, r1, #1, #0x1f
    //     0x44158c: stur         r0, [fp, #-0x80]
    // 0x441590: r1 = pp[0x21f]
    //     0x441590: add          r1, PP, #0xf, lsl #12
    //     0x441594: ldr          r1, [r1, #0x210]
    // 0x441598: r0 = call 0x61ec54
    //     0x441598: bl           0x61ec54
    //     0x44159c: stur         r0, [fp, #-0x18]
    // 0x4415a0: r0 = call 0x3ab5ac
    //     0x4415a0: bl           0x3ab5ac
    // 0x4415a4: r1 = r0
    //     0x4415a4: mov          r1, r0
    //     0x4415a8: ldur         r2, [fp, #-0x18]
    //     0x4415ac: ldur         r3, [fp, #-0x80]
    //     0x4415b0: stur         r0, [fp, #-0x18]
    // 0x4415b4: r4 = pp[0x2e0]
    //     0x4415b4: ldr          r4, [PP, #0x2e0]
    // 0x4415b8: r0 = flutter$src$widgets$scroll_view_ListView::ctor_builder()
    //     0x4415b8: bl           0x3ab2bc
    // 0x4415bc: r0 = call 0x391a04
    //     0x4415bc: bl           0x391a04
    //     0x4415c0: stur         r0, [fp, #-0x20]
    //     0x4415c4: ldur         BARRIER, [fp, #-0x18]
    //     0x4415c8: str          BARRIER, [SP]
    // 0x4415cc: r1 = r0
    //     0x4415cc: mov          r1, r0
    // 0x4415d0: r4 = pp[0x204]
    //     0x4415d0: add          r4, PP, #0xc, lsl #12
    //     0x4415d4: ldr          r4, [r4, #0x1f8]
    // 0x4415d8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4415d8: bl           0x391490
    // 0x4415dc: r1 = pp[0xade]
    //     0x4415dc: add          r1, PP, #0xe, lsl #12
    //     0x4415e0: ldr          r1, [r1, #0xad0]
    // 0x4415e4: r0 = call 0x39fb14
    //     0x4415e4: bl           0x39fb14
    // 0x4415e8: r2 = r0
    //     0x4415e8: mov          r2, r0
    //     0x4415ec: mov          r0, #1
    //     0x4415f0: stur         r2, [fp, #-0x18]
    // 0x4415f4: StoreField: r2->field_13 = r0
    //     0x4415f4: stur         r0, [r2, #0x13]
    // 0x4415f8: r3 = pp[0xae6]
    //     0x4415f8: add          r3, PP, #0xe, lsl #12
    //     0x4415fc: ldr          r3, [r3, #0xad8]
    // 0x441600: StoreField: r2->field_1b = r3
    //     0x441600: stur         r3, [r2, #0x1b]
    //     0x441604: ldur         r1, [fp, #-0x20]
    // 0x441608: StoreField: r2->field_b = r1
    //     0x441608: stur         r1, [r2, #0xb]
    // 0x44160c: r1 = pp[0x227]
    //     0x44160c: add          r1, PP, #0xf, lsl #12
    //     0x441610: ldr          r1, [r1, #0x218]
    // 0x441614: r0 = call 0x396454
    //     0x441614: bl           0x396454
    // 0x441618: r1 = r0
    //     0x441618: mov          r1, r0
    //     0x44161c: ldur         r2, [fp, #-0x18]
    //     0x441620: ldur         r3, [fp, #-8]
    //     0x441624: stur         r0, [fp, #-8]
    // 0x441628: r4 = pp[0x2e0]
    //     0x441628: ldr          r4, [PP, #0x2e0]
    // 0x44162c: r0 = flutter$src$widgets$media_query_MediaQuery::ctor_removePadding()
    //     0x44162c: bl           0x39ecf8
    //     0x441630: ldur         r7, [fp, #-8]
    // 0x441634: b 0x441640
    //     0x441634: b            0x441640
    // 0x441638: r0 = soul_flutter_international$biz$pkGame$page_game_make_bet_record_::emptyWidge()
    //     0x441638: bl           0x4418f4
    // 0x44163c: r7 = r0
    //     0x44163c: mov          r7, r0
    //     0x441640: ldur         d0, [fp, #-0x88]
    //     0x441644: ldur         r5, [fp, #-0x48]
    //     0x441648: ldur         r4, [fp, #-0x58]
    //     0x44164c: ldur         r3, [fp, #-0x10]
    //     0x441650: ldur         r0, [fp, #-0x28]
    //     0x441654: mov          r6, #6
    // 0x441658: r2 = r6
    //     0x441658: mov          r2, r6
    //     0x44165c: stur         r7, [fp, #-8]
    // 0x441660: r1 = NULL
    //     0x441660: mov          r1, NULL
    // 0x441664: r0 = call 0x61f920
    //     0x441664: bl           0x61f920
    // 0x441668: r2 = r0
    //     0x441668: mov          r2, r0
    //     0x44166c: ldur         r0, [fp, #-0x10]
    //     0x441670: stur         r2, [fp, #-0x18]
    // 0x441674: StoreField: r2->field_f = r0
    //     0x441674: stur         r0, [r2, #0xf]
    //     0x441678: ldur         r0, [fp, #-0x28]
    // 0x44167c: StoreField: r2->field_13 = r0
    //     0x44167c: stur         r0, [r2, #0x13]
    //     0x441680: ldur         r0, [fp, #-8]
    // 0x441684: ArrayStore: r2[0] = r0  ; List_8
    //     0x441684: stur         r0, [r2, #0x17]
    // 0x441688: r1 = pp[0x5c58]
    //     0x441688: ldr          r1, [PP, #0x5c58]
    // 0x44168c: r0 = call 0x61e854
    //     0x44168c: bl           0x61e854
    // 0x441690: r1 = r0
    //     0x441690: mov          r1, r0
    //     0x441694: ldur         r0, [fp, #-0x18]
    //     0x441698: stur         r1, [fp, #-8]
    // 0x44169c: StoreField: r1->field_f = r0
    //     0x44169c: stur         r0, [r1, #0xf]
    //     0x4416a0: mov          r0, #6
    // 0x4416a4: StoreField: r1->field_b = r0
    //     0x4416a4: stur         r0, [r1, #0xb]
    // 0x4416a8: r0 = call 0x39310c
    //     0x4416a8: bl           0x39310c
    // 0x4416ac: r1 = r0
    //     0x4416ac: mov          r1, r0
    // 0x4416b0: r0 = pp[0x862]
    //     0x4416b0: add          r0, PP, #0xa, lsl #12
    //     0x4416b4: ldr          r0, [r0, #0x858]
    //     0x4416b8: stur         r1, [fp, #-0x10]
    // 0x4416bc: StoreField: r1->field_f = r0
    //     0x4416bc: stur         r0, [r1, #0xf]
    // 0x4416c0: r2 = pp[0xaee]
    //     0x4416c0: add          r2, PP, #0xe, lsl #12
    //     0x4416c4: ldr          r2, [r2, #0xae0]
    // 0x4416c8: StoreField: r1->field_13 = r2
    //     0x4416c8: stur         r2, [r1, #0x13]
    // 0x4416cc: r3 = pp[0xaf6]
    //     0x4416cc: add          r3, PP, #0xe, lsl #12
    //     0x4416d0: ldr          r3, [r3, #0xae8]
    // 0x4416d4: ArrayStore: r1[0] = r3  ; List_8
    //     0x4416d4: stur         r3, [r1, #0x17]
    // 0x4416d8: r4 = pp[0xb6e]
    //     0x4416d8: add          r4, PP, #0xe, lsl #12
    //     0x4416dc: ldr          r4, [r4, #0xb60]
    // 0x4416e0: StoreField: r1->field_1b = r4
    //     0x4416e0: stur         r4, [r1, #0x1b]
    // 0x4416e4: r5 = pp[0xb06]
    //     0x4416e4: add          r5, PP, #0xe, lsl #12
    //     0x4416e8: ldr          r5, [r5, #0xaf8]
    // 0x4416ec: StoreField: r1->field_23 = r5
    //     0x4416ec: stur         r5, [r1, #0x23]
    // 0x4416f0: r6 = pp[0xb2]
    //     0x4416f0: add          r6, PP, #0xa, lsl #12
    //     0x4416f4: ldr          r6, [r6, #0xa8]
    // 0x4416f8: StoreField: r1->field_2b = r6
    //     0x4416f8: stur         r6, [r1, #0x2b]
    // 0x4416fc: StoreField: r1->field_2f = xzr
    //     0x4416fc: stur         xzr, [r1, #0x2f]
    //     0x441700: ldur         r7, [fp, #-8]
    // 0x441704: StoreField: r1->field_b = r7
    //     0x441704: stur         r7, [r1, #0xb]
    //     0x441708: ldur         d0, [fp, #-0x88]
    //     0x44170c: ldp          r7, r8, [THR, #0x50]
    //     0x441710: add          r7, r7, #0x10
    //     0x441714: cmp          r8, r7
    // 0x441718: b.ls 0x4418c0
    //     0x441718: b.ls         0x4418c0
    //     0x44171c: str          r7, [THR, #0x50]
    //     0x441720: sub          r7, r7, #0xf
    //     0x441724: mov          r8, #0xe15c
    //     0x441728: movk         r8, #3, lsl #16
    //     0x44172c: stur         r8, [r7, #-1]
    // 0x441730: StoreField: r7->field_7 = d0
    //     0x441730: stur         d0, [r7, #7]
    //     0x441734: stur         r7, [fp, #-8]
    // 0x441738: r0 = call 0x391a04
    //     0x441738: bl           0x391a04
    //     0x44173c: stur         r0, [fp, #-0x18]
    //     0x441740: ldur         BARRIER, [fp, #-8]
    // 0x441744: lr = pp[0x5458]
    //     0x441744: ldr          lr, [PP, #0x5458]
    //     0x441748: stp          lr, BARRIER, [SP, #0x10]
    //     0x44174c: ldur         BARRIER, [fp, #-0x40]
    //     0x441750: ldur         lr, [fp, #-0x10]
    //     0x441754: stp          lr, BARRIER, [SP]
    // 0x441758: r1 = r0
    //     0x441758: mov          r1, r0
    // 0x44175c: r4 = pp[0xf46]
    //     0x44175c: add          r4, PP, #0xe, lsl #12
    //     0x441760: ldr          r4, [r4, #0xf38]
    // 0x441764: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x441764: bl           0x391490
    // 0x441768: r0 = call 0x3b378c
    //     0x441768: bl           0x3b378c
    // 0x44176c: r2 = r0
    //     0x44176c: mov          r2, r0
    //     0x441770: ldur         r0, [fp, #-0x58]
    //     0x441774: stur         r2, [fp, #-8]
    // 0x441778: StoreField: r2->field_f = r0
    //     0x441778: stur         r0, [r2, #0xf]
    // 0x44177c: r0 = pp[0xf4e]
    //     0x44177c: add          r0, PP, #0xe, lsl #12
    //     0x441780: ldr          r0, [r0, #0xf40]
    // 0x441784: ArrayStore: r2[0] = r0  ; List_8
    //     0x441784: stur         r0, [r2, #0x17]
    //     0x441788: ldur         r0, [fp, #-0x18]
    // 0x44178c: StoreField: r2->field_b = r0
    //     0x44178c: stur         r0, [r2, #0xb]
    // 0x441790: r1 = pp[0xade]
    //     0x441790: add          r1, PP, #0xe, lsl #12
    //     0x441794: ldr          r1, [r1, #0xad0]
    // 0x441798: r0 = call 0x39fb14
    //     0x441798: bl           0x39fb14
    // 0x44179c: r3 = r0
    //     0x44179c: mov          r3, r0
    //     0x4417a0: mov          r0, #1
    //     0x4417a4: stur         r3, [fp, #-0x10]
    // 0x4417a8: StoreField: r3->field_13 = r0
    //     0x4417a8: stur         r0, [r3, #0x13]
    // 0x4417ac: r0 = pp[0xae6]
    //     0x4417ac: add          r0, PP, #0xe, lsl #12
    //     0x4417b0: ldr          r0, [r0, #0xad8]
    // 0x4417b4: StoreField: r3->field_1b = r0
    //     0x4417b4: stur         r0, [r3, #0x1b]
    //     0x4417b8: ldur         r0, [fp, #-8]
    // 0x4417bc: StoreField: r3->field_b = r0
    //     0x4417bc: stur         r0, [r3, #0xb]
    // 0x4417c0: r1 = NULL
    //     0x4417c0: mov          r1, NULL
    //     0x4417c4: mov          r2, #4
    // 0x4417c8: r0 = call 0x61f920
    //     0x4417c8: bl           0x61f920
    // 0x4417cc: r2 = r0
    //     0x4417cc: mov          r2, r0
    //     0x4417d0: ldur         r0, [fp, #-0x48]
    //     0x4417d4: stur         r2, [fp, #-8]
    // 0x4417d8: StoreField: r2->field_f = r0
    //     0x4417d8: stur         r0, [r2, #0xf]
    //     0x4417dc: ldur         r0, [fp, #-0x10]
    // 0x4417e0: StoreField: r2->field_13 = r0
    //     0x4417e0: stur         r0, [r2, #0x13]
    // 0x4417e4: r1 = pp[0x5c58]
    //     0x4417e4: ldr          r1, [PP, #0x5c58]
    // 0x4417e8: r0 = call 0x61e854
    //     0x4417e8: bl           0x61e854
    // 0x4417ec: r1 = r0
    //     0x4417ec: mov          r1, r0
    //     0x4417f0: ldur         r0, [fp, #-8]
    //     0x4417f4: stur         r1, [fp, #-0x10]
    // 0x4417f8: StoreField: r1->field_f = r0
    //     0x4417f8: stur         r0, [r1, #0xf]
    //     0x4417fc: mov          r0, #4
    // 0x441800: StoreField: r1->field_b = r0
    //     0x441800: stur         r0, [r1, #0xb]
    // 0x441804: r0 = call 0x39310c
    //     0x441804: bl           0x39310c
    // 0x441808: r1 = r0
    //     0x441808: mov          r1, r0
    // 0x44180c: r0 = pp[0x862]
    //     0x44180c: add          r0, PP, #0xa, lsl #12
    //     0x441810: ldr          r0, [r0, #0x858]
    //     0x441814: stur         r1, [fp, #-8]
    // 0x441818: StoreField: r1->field_f = r0
    //     0x441818: stur         r0, [r1, #0xf]
    // 0x44181c: r0 = pp[0xaee]
    //     0x44181c: add          r0, PP, #0xe, lsl #12
    //     0x441820: ldr          r0, [r0, #0xae0]
    // 0x441824: StoreField: r1->field_13 = r0
    //     0x441824: stur         r0, [r1, #0x13]
    // 0x441828: r0 = pp[0xaf6]
    //     0x441828: add          r0, PP, #0xe, lsl #12
    //     0x44182c: ldr          r0, [r0, #0xae8]
    // 0x441830: ArrayStore: r1[0] = r0  ; List_8
    //     0x441830: stur         r0, [r1, #0x17]
    // 0x441834: r0 = pp[0xb6e]
    //     0x441834: add          r0, PP, #0xe, lsl #12
    //     0x441838: ldr          r0, [r0, #0xb60]
    // 0x44183c: StoreField: r1->field_1b = r0
    //     0x44183c: stur         r0, [r1, #0x1b]
    // 0x441840: r0 = pp[0xb06]
    //     0x441840: add          r0, PP, #0xe, lsl #12
    //     0x441844: ldr          r0, [r0, #0xaf8]
    // 0x441848: StoreField: r1->field_23 = r0
    //     0x441848: stur         r0, [r1, #0x23]
    // 0x44184c: r0 = pp[0xb2]
    //     0x44184c: add          r0, PP, #0xa, lsl #12
    //     0x441850: ldr          r0, [r0, #0xa8]
    // 0x441854: StoreField: r1->field_2b = r0
    //     0x441854: stur         r0, [r1, #0x2b]
    // 0x441858: StoreField: r1->field_2f = xzr
    //     0x441858: stur         xzr, [r1, #0x2f]
    //     0x44185c: ldur         r0, [fp, #-0x10]
    // 0x441860: StoreField: r1->field_b = r0
    //     0x441860: stur         r0, [r1, #0xb]
    // 0x441864: r0 = call 0x391a04
    //     0x441864: bl           0x391a04
    //     0x441868: stur         r0, [fp, #-0x10]
    //     0x44186c: ldur         BARRIER, [fp, #-0x38]
    //     0x441870: ldur         lr, [fp, #-0x30]
    //     0x441874: stp          lr, BARRIER, [SP, #8]
    //     0x441878: ldur         BARRIER, [fp, #-8]
    //     0x44187c: str          BARRIER, [SP]
    // 0x441880: r1 = r0
    //     0x441880: mov          r1, r0
    // 0x441884: r4 = pp[0xf56]
    //     0x441884: add          r4, PP, #0xe, lsl #12
    //     0x441888: ldr          r4, [r4, #0xf48]
    // 0x44188c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x44188c: bl           0x391490
    //     0x441890: ldur         r0, [fp, #-0x10]
    // 0x441894: SP = fp
    //     0x441894: mov          SP, fp
    // 0x441898: LeaveFrame
    //     0x441898: ldp          fp, lr, [SP], #0x10
    // 0x44189c: ret
    //     0x44189c: ret          
    // 0x4418a0: r0 = call 0x61faa8
    //     0x4418a0: bl           0x61faa8
    // 0x4418a4: b 0x441088
    //     0x4418a4: b            0x441088
    //     0x4418a8: str          q0, [SP, #-0x10]!
    //     0x4418ac: str          r1, [SP, #-8]!
    // 0x4418b0: r0 = call 0x61f878
    //     0x4418b0: bl           0x61f878
    //     0x4418b4: ldr          r1, [SP], #8
    //     0x4418b8: ldr          q0, [SP], #0x10
    // 0x4418bc: b 0x44113c
    //     0x4418bc: b            0x44113c
    //     0x4418c0: str          q0, [SP, #-0x10]!
    //     0x4418c4: stp          r5, r6, [SP, #-0x10]!
    //     0x4418c8: stp          r3, r4, [SP, #-0x10]!
    //     0x4418cc: stp          r1, r2, [SP, #-0x10]!
    //     0x4418d0: str          r0, [SP, #-8]!
    // 0x4418d4: r0 = call 0x61f878
    //     0x4418d4: bl           0x61f878
    // 0x4418d8: r7 = r0
    //     0x4418d8: mov          r7, r0
    //     0x4418dc: ldr          r0, [SP], #8
    //     0x4418e0: ldp          r1, r2, [SP], #0x10
    //     0x4418e4: ldp          r3, r4, [SP], #0x10
    //     0x4418e8: ldp          r5, r6, [SP], #0x10
    //     0x4418ec: ldr          q0, [SP], #0x10
    // 0x4418f0: b 0x441730
    //     0x4418f0: b            0x441730
  }

  emptyWidge() {
    // ** addr: 0x4418f4, size: 0x218
    // 0x4418f4: EnterFrame
    //     0x4418f4: stp          fp, lr, [SP, #-0x10]!
    //     0x4418f8: mov          fp, SP
    // 0x4418fc: AllocStack(0x30)
    //     0x4418fc: sub          SP, SP, #0x30
    // 0x441900: CheckStackOverflow
    //     0x441900: ldr          BARRIER, [THR, #0x38]
    //     0x441904: cmp          SP, BARRIER
    //     0x441908: b.ls         0x441b04
    // 0x44190c: r0 = call 0x3a142c
    //     0x44190c: bl           0x3a142c
    // 0x441910: r1 = r0
    //     0x441910: mov          r1, r0
    // 0x441914: r0 = pp[0x277]
    //     0x441914: add          r0, PP, #0xf, lsl #12
    //     0x441918: ldr          r0, [r0, #0x268]
    //     0x44191c: stur         r1, [fp, #-8]
    // 0x441920: StoreField: r1->field_b = r0
    //     0x441920: stur         r0, [r1, #0xb]
    // 0x441924: r0 = pp[0x17f]
    //     0x441924: add          r0, PP, #0xf, lsl #12
    //     0x441928: ldr          r0, [r0, #0x170]
    // 0x44192c: StoreField: r1->field_f = r0
    //     0x44192c: stur         r0, [r1, #0xf]
    // 0x441930: r0 = pp[0x27f]
    //     0x441930: add          r0, PP, #0xf, lsl #12
    //     0x441934: ldr          r0, [r0, #0x270]
    // 0x441938: StoreField: r1->field_13 = r0
    //     0x441938: stur         r0, [r1, #0x13]
    // 0x44193c: r0 = pp[0x287]
    //     0x44193c: add          r0, PP, #0xf, lsl #12
    //     0x441940: ldr          r0, [r0, #0x278]
    // 0x441944: ArrayStore: r1[0] = r0  ; List_8
    //     0x441944: stur         r0, [r1, #0x17]
    // 0x441948: r0 = call 0x3949ec
    //     0x441948: bl           0x3949ec
    // 0x44194c: r2 = r0
    //     0x44194c: mov          r2, r0
    // 0x441950: r0 = pp[0x28f]
    //     0x441950: add          r0, PP, #0xf, lsl #12
    //     0x441954: ldr          r0, [r0, #0x280]
    //     0x441958: stur         r2, [fp, #-0x10]
    // 0x44195c: StoreField: r2->field_13 = r0
    //     0x44195c: stur         r0, [r2, #0x13]
    // 0x441960: r1 = pp[0x894]
    //     0x441960: add          r1, PP, #0xc, lsl #12
    //     0x441964: ldr          r1, [r1, #0x888]
    // 0x441968: r4 = pp[0x4c0]
    //     0x441968: ldr          r4, [PP, #0x4c0]
    // 0x44196c: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x44196c: bl           0x3a1dcc
    //     0x441970: stur         r0, [fp, #-0x18]
    // 0x441974: r0 = call 0x31d844
    //     0x441974: bl           0x31d844
    // 0x441978: r1 = r0
    //     0x441978: mov          r1, r0
    // 0x44197c: r0 = pp[0x6310]
    //     0x44197c: ldr          r0, [PP, #0x6310]
    //     0x441980: stur         r1, [fp, #-0x20]
    // 0x441984: StoreField: r1->field_27 = r0
    //     0x441984: stur         r0, [r1, #0x27]
    //     0x441988: fmov         d0, #1.00000000
    // 0x44198c: StoreField: r1->field_7 = d0
    //     0x44198c: stur         d0, [r1, #7]
    // 0x441990: d0 = pp[0xe16]
    //     0x441990: add          r17, PP, #0xe, lsl #12
    //     0x441994: ldr          d0, [r17, #0xe08]
    // 0x441998: StoreField: r1->field_f = d0
    //     0x441998: stur         d0, [r1, #0xf]
    // 0x44199c: ArrayStore: r1[0] = d0  ; List_8
    //     0x44199c: stur         d0, [r1, #0x17]
    // 0x4419a0: StoreField: r1->field_1f = d0
    //     0x4419a0: stur         d0, [r1, #0x1f]
    // 0x4419a4: r0 = call 0x31abec
    //     0x4419a4: bl           0x31abec
    // 0x4419a8: r1 = r0
    //     0x4419a8: mov          r1, r0
    //     0x4419ac: add          r0, NULL, #0x20
    //     0x4419b0: stur         r1, [fp, #-0x28]
    // 0x4419b4: StoreField: r1->field_7 = r0
    //     0x4419b4: stur         r0, [r1, #7]
    //     0x4419b8: ldur         r0, [fp, #-0x20]
    // 0x4419bc: StoreField: r1->field_b = r0
    //     0x4419bc: stur         r0, [r1, #0xb]
    // 0x4419c0: r0 = pp[0xdf6]
    //     0x4419c0: add          r0, PP, #0xe, lsl #12
    //     0x4419c4: ldr          r0, [r0, #0xde8]
    // 0x4419c8: StoreField: r1->field_1f = r0
    //     0x4419c8: stur         r0, [r1, #0x1f]
    // 0x4419cc: r0 = call 0x393bf8
    //     0x4419cc: bl           0x393bf8
    // 0x4419d0: r1 = r0
    //     0x4419d0: mov          r1, r0
    //     0x4419d4: ldur         r0, [fp, #-0x18]
    //     0x4419d8: stur         r1, [fp, #-0x20]
    // 0x4419dc: StoreField: r1->field_b = r0
    //     0x4419dc: stur         r0, [r1, #0xb]
    //     0x4419e0: ldur         r0, [fp, #-0x28]
    // 0x4419e4: StoreField: r1->field_13 = r0
    //     0x4419e4: stur         r0, [r1, #0x13]
    // 0x4419e8: r0 = call 0x3949ec
    //     0x4419e8: bl           0x3949ec
    // 0x4419ec: r3 = r0
    //     0x4419ec: mov          r3, r0
    // 0x4419f0: r0 = pp[0x66c8]
    //     0x4419f0: ldr          r0, [PP, #0x66c8]
    //     0x4419f4: stur         r3, [fp, #-0x18]
    // 0x4419f8: StoreField: r3->field_13 = r0
    //     0x4419f8: stur         r0, [r3, #0x13]
    // 0x4419fc: r1 = NULL
    //     0x4419fc: mov          r1, NULL
    //     0x441a00: mov          r2, #8
    // 0x441a04: r0 = call 0x61f920
    //     0x441a04: bl           0x61f920
    // 0x441a08: r2 = r0
    //     0x441a08: mov          r2, r0
    //     0x441a0c: ldur         r0, [fp, #-8]
    //     0x441a10: stur         r2, [fp, #-0x28]
    // 0x441a14: StoreField: r2->field_f = r0
    //     0x441a14: stur         r0, [r2, #0xf]
    //     0x441a18: ldur         r0, [fp, #-0x10]
    // 0x441a1c: StoreField: r2->field_13 = r0
    //     0x441a1c: stur         r0, [r2, #0x13]
    //     0x441a20: ldur         r0, [fp, #-0x20]
    // 0x441a24: ArrayStore: r2[0] = r0  ; List_8
    //     0x441a24: stur         r0, [r2, #0x17]
    //     0x441a28: ldur         r0, [fp, #-0x18]
    // 0x441a2c: StoreField: r2->field_1b = r0
    //     0x441a2c: stur         r0, [r2, #0x1b]
    // 0x441a30: r1 = pp[0x5c58]
    //     0x441a30: ldr          r1, [PP, #0x5c58]
    // 0x441a34: r0 = call 0x61e854
    //     0x441a34: bl           0x61e854
    // 0x441a38: r1 = r0
    //     0x441a38: mov          r1, r0
    //     0x441a3c: ldur         r0, [fp, #-0x28]
    //     0x441a40: stur         r1, [fp, #-8]
    // 0x441a44: StoreField: r1->field_f = r0
    //     0x441a44: stur         r0, [r1, #0xf]
    //     0x441a48: mov          r0, #8
    // 0x441a4c: StoreField: r1->field_b = r0
    //     0x441a4c: stur         r0, [r1, #0xb]
    // 0x441a50: r0 = call 0x39310c
    //     0x441a50: bl           0x39310c
    // 0x441a54: r1 = r0
    //     0x441a54: mov          r1, r0
    // 0x441a58: r0 = pp[0x862]
    //     0x441a58: add          r0, PP, #0xa, lsl #12
    //     0x441a5c: ldr          r0, [r0, #0x858]
    //     0x441a60: stur         r1, [fp, #-0x10]
    // 0x441a64: StoreField: r1->field_f = r0
    //     0x441a64: stur         r0, [r1, #0xf]
    // 0x441a68: r0 = pp[0x297]
    //     0x441a68: add          r0, PP, #0xf, lsl #12
    //     0x441a6c: ldr          r0, [r0, #0x288]
    // 0x441a70: StoreField: r1->field_13 = r0
    //     0x441a70: stur         r0, [r1, #0x13]
    // 0x441a74: r0 = pp[0xaf6]
    //     0x441a74: add          r0, PP, #0xe, lsl #12
    //     0x441a78: ldr          r0, [r0, #0xae8]
    // 0x441a7c: ArrayStore: r1[0] = r0  ; List_8
    //     0x441a7c: stur         r0, [r1, #0x17]
    // 0x441a80: r0 = pp[0xb6e]
    //     0x441a80: add          r0, PP, #0xe, lsl #12
    //     0x441a84: ldr          r0, [r0, #0xb60]
    // 0x441a88: StoreField: r1->field_1b = r0
    //     0x441a88: stur         r0, [r1, #0x1b]
    // 0x441a8c: r0 = pp[0xb06]
    //     0x441a8c: add          r0, PP, #0xe, lsl #12
    //     0x441a90: ldr          r0, [r0, #0xaf8]
    // 0x441a94: StoreField: r1->field_23 = r0
    //     0x441a94: stur         r0, [r1, #0x23]
    // 0x441a98: r0 = pp[0xb2]
    //     0x441a98: add          r0, PP, #0xa, lsl #12
    //     0x441a9c: ldr          r0, [r0, #0xa8]
    // 0x441aa0: StoreField: r1->field_2b = r0
    //     0x441aa0: stur         r0, [r1, #0x2b]
    // 0x441aa4: StoreField: r1->field_2f = xzr
    //     0x441aa4: stur         xzr, [r1, #0x2f]
    //     0x441aa8: ldur         r0, [fp, #-8]
    // 0x441aac: StoreField: r1->field_b = r0
    //     0x441aac: stur         r0, [r1, #0xb]
    // 0x441ab0: r0 = call 0x391a04
    //     0x441ab0: bl           0x391a04
    //     0x441ab4: stur         r0, [fp, #-8]
    //     0x441ab8: ldur         BARRIER, [fp, #-0x10]
    //     0x441abc: str          BARRIER, [SP]
    // 0x441ac0: r1 = r0
    //     0x441ac0: mov          r1, r0
    // 0x441ac4: r4 = pp[0x204]
    //     0x441ac4: add          r4, PP, #0xc, lsl #12
    //     0x441ac8: ldr          r4, [r4, #0x1f8]
    // 0x441acc: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x441acc: bl           0x391490
    // 0x441ad0: r1 = pp[0xade]
    //     0x441ad0: add          r1, PP, #0xe, lsl #12
    //     0x441ad4: ldr          r1, [r1, #0xad0]
    // 0x441ad8: r0 = call 0x39fb14
    //     0x441ad8: bl           0x39fb14
    //     0x441adc: mov          r1, #1
    // 0x441ae0: StoreField: r0->field_13 = r1
    //     0x441ae0: stur         r1, [r0, #0x13]
    // 0x441ae4: r1 = pp[0xae6]
    //     0x441ae4: add          r1, PP, #0xe, lsl #12
    //     0x441ae8: ldr          r1, [r1, #0xad8]
    // 0x441aec: StoreField: r0->field_1b = r1
    //     0x441aec: stur         r1, [r0, #0x1b]
    //     0x441af0: ldur         r1, [fp, #-8]
    // 0x441af4: StoreField: r0->field_b = r1
    //     0x441af4: stur         r1, [r0, #0xb]
    // 0x441af8: SP = fp
    //     0x441af8: mov          SP, fp
    // 0x441afc: LeaveFrame
    //     0x441afc: ldp          fp, lr, [SP], #0x10
    // 0x441b00: ret
    //     0x441b00: ret          
    // 0x441b04: r0 = call 0x61fa28
    //     0x441b04: bl           0x61fa28
    // 0x441b08: b 0x44190c
    //     0x441b08: b            0x44190c
  }

  backButton() {
    // ** addr: 0x441b0c, size: 0xf0
    // 0x441b0c: EnterFrame
    //     0x441b0c: stp          fp, lr, [SP, #-0x10]!
    //     0x441b10: mov          fp, SP
    // 0x441b14: AllocStack(0x38)
    //     0x441b14: sub          SP, SP, #0x38
    // 0x441b18: CheckStackOverflow
    //     0x441b18: ldr          BARRIER, [THR, #0x38]
    //     0x441b1c: cmp          SP, BARRIER
    //     0x441b20: b.ls         0x441bf4
    // 0x441b24: r0 = call 0x2e3578
    //     0x441b24: bl           0x2e3578
    //     0x441b28: fmov         d0, #10.00000000
    //     0x441b2c: stur         r0, [fp, #-8]
    // 0x441b30: StoreField: r0->field_7 = d0
    //     0x441b30: stur         d0, [r0, #7]
    // 0x441b34: StoreField: r0->field_f = xzr
    //     0x441b34: stur         xzr, [r0, #0xf]
    // 0x441b38: ArrayStore: r0[0] = xzr  ; List_8
    //     0x441b38: stur         xzr, [r0, #0x17]
    // 0x441b3c: StoreField: r0->field_1f = xzr
    //     0x441b3c: stur         xzr, [r0, #0x1f]
    // 0x441b40: r0 = call 0x3a142c
    //     0x441b40: bl           0x3a142c
    // 0x441b44: r1 = r0
    //     0x441b44: mov          r1, r0
    // 0x441b48: r0 = pp[0x317]
    //     0x441b48: add          r0, PP, #0xf, lsl #12
    //     0x441b4c: ldr          r0, [r0, #0x308]
    //     0x441b50: stur         r1, [fp, #-0x10]
    // 0x441b54: StoreField: r1->field_b = r0
    //     0x441b54: stur         r0, [r1, #0xb]
    // 0x441b58: r0 = pp[0x17f]
    //     0x441b58: add          r0, PP, #0xf, lsl #12
    //     0x441b5c: ldr          r0, [r0, #0x170]
    // 0x441b60: StoreField: r1->field_f = r0
    //     0x441b60: stur         r0, [r1, #0xf]
    // 0x441b64: r0 = pp[0x187]
    //     0x441b64: add          r0, PP, #0xf, lsl #12
    //     0x441b68: ldr          r0, [r0, #0x178]
    // 0x441b6c: StoreField: r1->field_1b = r0
    //     0x441b6c: stur         r0, [r1, #0x1b]
    // 0x441b70: r0 = call 0x391a04
    //     0x441b70: bl           0x391a04
    //     0x441b74: stur         r0, [fp, #-0x18]
    //     0x441b78: ldur         BARRIER, [fp, #-8]
    // 0x441b7c: lr = pp[0x31f]
    //     0x441b7c: add          lr, PP, #0xf, lsl #12
    //     0x441b80: ldr          lr, [lr, #0x310]
    //     0x441b84: stp          lr, BARRIER, [SP, #0x10]
    // 0x441b88: BARRIER = pp[0x31f]
    //     0x441b88: add          BARRIER, PP, #0xf, lsl #12
    //     0x441b8c: ldr          BARRIER, [BARRIER, #0x310]
    //     0x441b90: ldur         lr, [fp, #-0x10]
    //     0x441b94: stp          lr, BARRIER, [SP]
    // 0x441b98: r1 = r0
    //     0x441b98: mov          r1, r0
    // 0x441b9c: r4 = pp[0x18f]
    //     0x441b9c: add          r4, PP, #0xf, lsl #12
    //     0x441ba0: ldr          r4, [r4, #0x180]
    // 0x441ba4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x441ba4: bl           0x391490
    // 0x441ba8: r0 = call 0x3a1d94
    //     0x441ba8: bl           0x3a1d94
    //     0x441bac: stur         r0, [fp, #-8]
    //     0x441bb0: ldur         BARRIER, [fp, #-0x18]
    // 0x441bb4: lr = pp[0x327]
    //     0x441bb4: add          lr, PP, #0xf, lsl #12
    //     0x441bb8: ldr          lr, [lr, #0x318]
    //     0x441bbc: stp          lr, BARRIER, [SP]
    // 0x441bc0: r1 = r0
    //     0x441bc0: mov          r1, r0
    // 0x441bc4: r4 = pp[0xece]
    //     0x441bc4: add          r4, PP, #0xe, lsl #12
    //     0x441bc8: ldr          r4, [r4, #0xec0]
    // 0x441bcc: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x441bcc: bl           0x3a18c4
    // 0x441bd0: r0 = call 0x396460
    //     0x441bd0: bl           0x396460
    // 0x441bd4: r1 = pp[0x19f]
    //     0x441bd4: add          r1, PP, #0xf, lsl #12
    //     0x441bd8: ldr          r1, [r1, #0x190]
    // 0x441bdc: StoreField: r0->field_f = r1
    //     0x441bdc: stur         r1, [r0, #0xf]
    //     0x441be0: ldur         r1, [fp, #-8]
    // 0x441be4: StoreField: r0->field_b = r1
    //     0x441be4: stur         r1, [r0, #0xb]
    // 0x441be8: SP = fp
    //     0x441be8: mov          SP, fp
    // 0x441bec: LeaveFrame
    //     0x441bec: ldp          fp, lr, [SP], #0x10
    // 0x441bf0: ret
    //     0x441bf0: ret          
    // 0x441bf4: r0 = call 0x61fa28
    //     0x441bf4: bl           0x61fa28
    // 0x441bf8: b 0x441b24
    //     0x441bf8: b            0x441b24
  }

  _anon_closure() {
    // ** addr: 0x441bfc, size: 0x474
    // 0x441bfc: EnterFrame
    //     0x441bfc: stp          fp, lr, [SP, #-0x10]!
    //     0x441c00: mov          fp, SP
    // 0x441c04: AllocStack(0x58)
    //     0x441c04: sub          SP, SP, #0x58
    //     0x441c08: ldr          r0, [fp, #0x20]
    // 0x441c0c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x441c0c: ldur         r1, [r0, #0x17]
    //     0x441c10: add          r1, r1, HEAP, lsl #32
    // 0x441c14: CheckStackOverflow
    //     0x441c14: ldr          BARRIER, [THR, #0x38]
    //     0x441c18: cmp          SP, BARRIER
    //     0x441c1c: b.ls         0x442064
    // 0x441c20: LoadField: r2 = r1->field_f
    //     0x441c20: ldur         r2, [r1, #0xf]
    //     0x441c24: add          r2, r2, HEAP, lsl #32
    // 0x441c28: LoadField: r0 = r2->field_b
    //     0x441c28: ldur         r0, [r2, #0xb]
    //     0x441c2c: ldr          r1, [fp, #0x10]
    //     0x441c30: sbfx         r3, r1, #1, #0x1f
    // 0x441c34: branchIfSmi(r1, 0x441c3c)
    //     0x441c34: tbz          r1, #0, 0x441c3c
    // 0x441c38: LoadField: r3 = r1->field_7
    //     0x441c38: ldur         r3, [r1, #7]
    //     0x441c3c: sbfx         r1, r0, #1, #0x1f
    // 0x441c40: r0 = r1
    //     0x441c40: mov          r0, r1
    // 0x441c44: r1 = r3
    //     0x441c44: mov          r1, r3
    //     0x441c48: cmp          r1, r0
    // 0x441c4c: b.hs 0x44206c
    //     0x441c4c: b.hs         0x44206c
    // 0x441c50: LoadField: r0 = r2->field_f
    //     0x441c50: ldur         r0, [r2, #0xf]
    //     0x441c54: add          r0, r0, HEAP, lsl #32
    //     0x441c58: add          BARRIER, r0, r3, lsl #2
    // 0x441c5c: LoadField: r1 = BARRIER->field_f
    //     0x441c5c: ldur         r1, [BARRIER, #0xf]
    //     0x441c60: add          r1, r1, HEAP, lsl #32
    //     0x441c64: stur         r1, [fp, #-8]
    // 0x441c68: r0 = call 0x2e3578
    //     0x441c68: bl           0x2e3578
    //     0x441c6c: fmov         d0, #16.00000000
    //     0x441c70: stur         r0, [fp, #-0x20]
    // 0x441c74: StoreField: r0->field_7 = d0
    //     0x441c74: stur         d0, [r0, #7]
    // 0x441c78: StoreField: r0->field_f = xzr
    //     0x441c78: stur         xzr, [r0, #0xf]
    // 0x441c7c: ArrayStore: r0[0] = d0  ; List_8
    //     0x441c7c: stur         d0, [r0, #0x17]
    // 0x441c80: StoreField: r0->field_1f = d0
    //     0x441c80: stur         d0, [r0, #0x1f]
    //     0x441c84: ldur         r1, [fp, #-8]
    // 0x441c88: LoadField: r2 = r1->field_b
    //     0x441c88: ldur         r2, [r1, #0xb]
    //     0x441c8c: add          r2, r2, HEAP, lsl #32
    //     0x441c90: cmp          r2, r22
    // 0x441c94: b.ne 0x441c9c
    //     0x441c94: b.ne         0x441c9c
    // 0x441c98: r2 = pp[0x148]
    //     0x441c98: ldr          r2, [PP, #0x148]
    //     0x441c9c: stur         r2, [fp, #-0x18]
    // 0x441ca0: LoadField: r3 = r1->field_f
    //     0x441ca0: ldur         r3, [r1, #0xf]
    //     0x441ca4: add          r3, r3, HEAP, lsl #32
    //     0x441ca8: cmp          r3, r22
    // 0x441cac: b.ne 0x441cb4
    //     0x441cac: b.ne         0x441cb4
    // 0x441cb0: r3 = pp[0x148]
    //     0x441cb0: ldr          r3, [PP, #0x148]
    //     0x441cb4: stur         r3, [fp, #-0x10]
    // 0x441cb8: r0 = call 0x3a67fc
    //     0x441cb8: bl           0x3a67fc
    // 0x441cbc: r1 = r0
    //     0x441cbc: mov          r1, r0
    //     0x441cc0: ldur         r0, [fp, #-0x18]
    //     0x441cc4: stur         r1, [fp, #-0x28]
    // 0x441cc8: StoreField: r1->field_b = r0
    //     0x441cc8: stur         r0, [r1, #0xb]
    //     0x441ccc: ldur         r0, [fp, #-0x10]
    // 0x441cd0: StoreField: r1->field_f = r0
    //     0x441cd0: stur         r0, [r1, #0xf]
    // 0x441cd4: d0 = pp[0x22f]
    //     0x441cd4: add          r17, PP, #0xf, lsl #12
    //     0x441cd8: ldr          d0, [r17, #0x220]
    // 0x441cdc: StoreField: r1->field_13 = d0
    //     0x441cdc: stur         d0, [r1, #0x13]
    //     0x441ce0: add          r0, NULL, #0x20
    // 0x441ce4: StoreField: r1->field_1b = r0
    //     0x441ce4: stur         r0, [r1, #0x1b]
    // 0x441ce8: r0 = call 0x391a04
    //     0x441ce8: bl           0x391a04
    //     0x441cec: stur         r0, [fp, #-0x10]
    //     0x441cf0: ldur         BARRIER, [fp, #-0x28]
    //     0x441cf4: str          BARRIER, [SP]
    // 0x441cf8: r1 = r0
    //     0x441cf8: mov          r1, r0
    // 0x441cfc: r4 = pp[0x204]
    //     0x441cfc: add          r4, PP, #0xc, lsl #12
    //     0x441d00: ldr          r4, [r4, #0x1f8]
    // 0x441d04: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x441d04: bl           0x391490
    // 0x441d08: r0 = call 0x3949ec
    //     0x441d08: bl           0x3949ec
    // 0x441d0c: r1 = r0
    //     0x441d0c: mov          r1, r0
    // 0x441d10: r0 = pp[0x237]
    //     0x441d10: add          r0, PP, #0xf, lsl #12
    //     0x441d14: ldr          r0, [r0, #0x228]
    //     0x441d18: stur         r1, [fp, #-0x28]
    // 0x441d1c: StoreField: r1->field_f = r0
    //     0x441d1c: stur         r0, [r1, #0xf]
    //     0x441d20: ldur         r0, [fp, #-8]
    // 0x441d24: LoadField: r2 = r0->field_7
    //     0x441d24: ldur         r2, [r0, #7]
    //     0x441d28: add          r2, r2, HEAP, lsl #32
    //     0x441d2c: cmp          r2, r22
    // 0x441d30: b.ne 0x441d38
    //     0x441d30: b.ne         0x441d38
    // 0x441d34: r2 = pp[0x148]
    //     0x441d34: ldr          r2, [PP, #0x148]
    //     0x441d38: stur         r2, [fp, #-0x18]
    // 0x441d3c: r0 = call 0x31abec
    //     0x441d3c: bl           0x31abec
    // 0x441d40: r1 = r0
    //     0x441d40: mov          r1, r0
    //     0x441d44: add          r0, NULL, #0x20
    //     0x441d48: stur         r1, [fp, #-0x30]
    // 0x441d4c: StoreField: r1->field_7 = r0
    //     0x441d4c: stur         r0, [r1, #7]
    // 0x441d50: r0 = pp[0x6050]
    //     0x441d50: ldr          r0, [PP, #0x6050]
    // 0x441d54: StoreField: r1->field_b = r0
    //     0x441d54: stur         r0, [r1, #0xb]
    // 0x441d58: r2 = pp[0xb5e]
    //     0x441d58: add          r2, PP, #0xe, lsl #12
    //     0x441d5c: ldr          r2, [r2, #0xb50]
    // 0x441d60: StoreField: r1->field_1f = r2
    //     0x441d60: stur         r2, [r1, #0x1f]
    // 0x441d64: r0 = call 0x393bf8
    //     0x441d64: bl           0x393bf8
    // 0x441d68: r1 = r0
    //     0x441d68: mov          r1, r0
    //     0x441d6c: ldur         r0, [fp, #-0x18]
    //     0x441d70: stur         r1, [fp, #-0x38]
    // 0x441d74: StoreField: r1->field_b = r0
    //     0x441d74: stur         r0, [r1, #0xb]
    //     0x441d78: ldur         r0, [fp, #-0x30]
    // 0x441d7c: StoreField: r1->field_13 = r0
    //     0x441d7c: stur         r0, [r1, #0x13]
    // 0x441d80: r0 = pp[0x23f]
    //     0x441d80: add          r0, PP, #0xf, lsl #12
    //     0x441d84: ldr          r0, [r0, #0x230]
    // 0x441d88: StoreField: r1->field_2b = r0
    //     0x441d88: stur         r0, [r1, #0x2b]
    //     0x441d8c: mov          r0, #2
    // 0x441d90: StoreField: r1->field_37 = r0
    //     0x441d90: stur         r0, [r1, #0x37]
    // 0x441d94: r0 = call 0x391a04
    //     0x441d94: bl           0x391a04
    //     0x441d98: stur         r0, [fp, #-0x18]
    // 0x441d9c: BARRIER = pp[0x247]
    //     0x441d9c: add          BARRIER, PP, #0xf, lsl #12
    //     0x441da0: ldr          BARRIER, [BARRIER, #0x238]
    //     0x441da4: ldur         lr, [fp, #-0x38]
    //     0x441da8: stp          lr, BARRIER, [SP]
    // 0x441dac: r1 = r0
    //     0x441dac: mov          r1, r0
    // 0x441db0: r4 = pp[0x24f]
    //     0x441db0: add          r4, PP, #0xf, lsl #12
    //     0x441db4: ldr          r4, [r4, #0x240]
    // 0x441db8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x441db8: bl           0x391490
    // 0x441dbc: r0 = call 0x3a142c
    //     0x441dbc: bl           0x3a142c
    // 0x441dc0: r1 = r0
    //     0x441dc0: mov          r1, r0
    // 0x441dc4: r0 = pp[0x257]
    //     0x441dc4: add          r0, PP, #0xf, lsl #12
    //     0x441dc8: ldr          r0, [r0, #0x248]
    //     0x441dcc: stur         r1, [fp, #-0x30]
    // 0x441dd0: StoreField: r1->field_b = r0
    //     0x441dd0: stur         r0, [r1, #0xb]
    // 0x441dd4: r0 = pp[0x17f]
    //     0x441dd4: add          r0, PP, #0xf, lsl #12
    //     0x441dd8: ldr          r0, [r0, #0x170]
    // 0x441ddc: StoreField: r1->field_f = r0
    //     0x441ddc: stur         r0, [r1, #0xf]
    // 0x441de0: r0 = pp[0x25f]
    //     0x441de0: add          r0, PP, #0xf, lsl #12
    //     0x441de4: ldr          r0, [r0, #0x250]
    // 0x441de8: StoreField: r1->field_13 = r0
    //     0x441de8: stur         r0, [r1, #0x13]
    // 0x441dec: ArrayStore: r1[0] = r0  ; List_8
    //     0x441dec: stur         r0, [r1, #0x17]
    // 0x441df0: r0 = call 0x2e3578
    //     0x441df0: bl           0x2e3578
    //     0x441df4: fmov         d0, #3.00000000
    //     0x441df8: stur         r0, [fp, #-0x38]
    // 0x441dfc: StoreField: r0->field_7 = d0
    //     0x441dfc: stur         d0, [r0, #7]
    // 0x441e00: StoreField: r0->field_f = xzr
    //     0x441e00: stur         xzr, [r0, #0xf]
    // 0x441e04: ArrayStore: r0[0] = xzr  ; List_8
    //     0x441e04: stur         xzr, [r0, #0x17]
    // 0x441e08: StoreField: r0->field_1f = xzr
    //     0x441e08: stur         xzr, [r0, #0x1f]
    //     0x441e0c: ldur         r1, [fp, #-8]
    // 0x441e10: LoadField: r2 = r1->field_13
    //     0x441e10: ldur         r2, [r1, #0x13]
    //     0x441e14: add          r2, r2, HEAP, lsl #32
    //     0x441e18: cmp          r2, r22
    // 0x441e1c: b.ne 0x441e28
    //     0x441e1c: b.ne         0x441e28
    // 0x441e20: r6 = pp[0x148]
    //     0x441e20: ldr          r6, [PP, #0x148]
    // 0x441e24: b 0x441e2c
    //     0x441e24: b            0x441e2c
    // 0x441e28: r6 = r2
    //     0x441e28: mov          r6, r2
    //     0x441e2c: ldur         r5, [fp, #-0x10]
    //     0x441e30: ldur         r4, [fp, #-0x28]
    //     0x441e34: ldur         r3, [fp, #-0x18]
    //     0x441e38: ldur         r2, [fp, #-0x30]
    //     0x441e3c: stur         r6, [fp, #-8]
    // 0x441e40: r1 = pp[0x6050]
    //     0x441e40: ldr          r1, [PP, #0x6050]
    //     0x441e44: fmov         d0, #16.00000000
    // 0x441e48: r0 = soul_flutter_international$res$styles_TextStyles::fontDINCondensedBold()
    //     0x441e48: bl           0x3a86fc
    //     0x441e4c: stur         r0, [fp, #-0x40]
    // 0x441e50: r0 = call 0x393bf8
    //     0x441e50: bl           0x393bf8
    // 0x441e54: r1 = r0
    //     0x441e54: mov          r1, r0
    //     0x441e58: ldur         r0, [fp, #-8]
    //     0x441e5c: stur         r1, [fp, #-0x48]
    // 0x441e60: StoreField: r1->field_b = r0
    //     0x441e60: stur         r0, [r1, #0xb]
    //     0x441e64: ldur         r0, [fp, #-0x40]
    // 0x441e68: StoreField: r1->field_13 = r0
    //     0x441e68: stur         r0, [r1, #0x13]
    // 0x441e6c: r0 = call 0x391a04
    //     0x441e6c: bl           0x391a04
    //     0x441e70: stur         r0, [fp, #-8]
    //     0x441e74: ldur         BARRIER, [fp, #-0x38]
    //     0x441e78: ldur         lr, [fp, #-0x48]
    //     0x441e7c: stp          lr, BARRIER, [SP]
    // 0x441e80: r1 = r0
    //     0x441e80: mov          r1, r0
    // 0x441e84: r4 = pp[0x267]
    //     0x441e84: add          r4, PP, #0xf, lsl #12
    //     0x441e88: ldr          r4, [r4, #0x258]
    // 0x441e8c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x441e8c: bl           0x391490
    // 0x441e90: r1 = NULL
    //     0x441e90: mov          r1, NULL
    //     0x441e94: mov          r2, #4
    // 0x441e98: r0 = call 0x61f920
    //     0x441e98: bl           0x61f920
    // 0x441e9c: r2 = r0
    //     0x441e9c: mov          r2, r0
    //     0x441ea0: ldur         r0, [fp, #-0x30]
    //     0x441ea4: stur         r2, [fp, #-0x38]
    // 0x441ea8: StoreField: r2->field_f = r0
    //     0x441ea8: stur         r0, [r2, #0xf]
    //     0x441eac: ldur         r0, [fp, #-8]
    // 0x441eb0: StoreField: r2->field_13 = r0
    //     0x441eb0: stur         r0, [r2, #0x13]
    // 0x441eb4: r1 = pp[0x5c58]
    //     0x441eb4: ldr          r1, [PP, #0x5c58]
    // 0x441eb8: r0 = call 0x61e854
    //     0x441eb8: bl           0x61e854
    // 0x441ebc: r1 = r0
    //     0x441ebc: mov          r1, r0
    //     0x441ec0: ldur         r0, [fp, #-0x38]
    //     0x441ec4: stur         r1, [fp, #-8]
    // 0x441ec8: StoreField: r1->field_f = r0
    //     0x441ec8: stur         r0, [r1, #0xf]
    //     0x441ecc: mov          r0, #4
    // 0x441ed0: StoreField: r1->field_b = r0
    //     0x441ed0: stur         r0, [r1, #0xb]
    // 0x441ed4: r0 = call 0x3a1414
    //     0x441ed4: bl           0x3a1414
    // 0x441ed8: r1 = r0
    //     0x441ed8: mov          r1, r0
    // 0x441edc: r0 = pp[0x5140]
    //     0x441edc: ldr          r0, [PP, #0x5140]
    //     0x441ee0: stur         r1, [fp, #-0x30]
    // 0x441ee4: StoreField: r1->field_f = r0
    //     0x441ee4: stur         r0, [r1, #0xf]
    // 0x441ee8: r2 = pp[0x26f]
    //     0x441ee8: add          r2, PP, #0xf, lsl #12
    //     0x441eec: ldr          r2, [r2, #0x260]
    // 0x441ef0: StoreField: r1->field_13 = r2
    //     0x441ef0: stur         r2, [r1, #0x13]
    // 0x441ef4: r2 = pp[0xaf6]
    //     0x441ef4: add          r2, PP, #0xe, lsl #12
    //     0x441ef8: ldr          r2, [r2, #0xae8]
    // 0x441efc: ArrayStore: r1[0] = r2  ; List_8
    //     0x441efc: stur         r2, [r1, #0x17]
    // 0x441f00: r3 = pp[0xb6e]
    //     0x441f00: add          r3, PP, #0xe, lsl #12
    //     0x441f04: ldr          r3, [r3, #0xb60]
    // 0x441f08: StoreField: r1->field_1b = r3
    //     0x441f08: stur         r3, [r1, #0x1b]
    // 0x441f0c: r4 = pp[0xb06]
    //     0x441f0c: add          r4, PP, #0xe, lsl #12
    //     0x441f10: ldr          r4, [r4, #0xaf8]
    // 0x441f14: StoreField: r1->field_23 = r4
    //     0x441f14: stur         r4, [r1, #0x23]
    // 0x441f18: r5 = pp[0xb2]
    //     0x441f18: add          r5, PP, #0xa, lsl #12
    //     0x441f1c: ldr          r5, [r5, #0xa8]
    // 0x441f20: StoreField: r1->field_2b = r5
    //     0x441f20: stur         r5, [r1, #0x2b]
    // 0x441f24: StoreField: r1->field_2f = xzr
    //     0x441f24: stur         xzr, [r1, #0x2f]
    //     0x441f28: ldur         r6, [fp, #-8]
    // 0x441f2c: StoreField: r1->field_b = r6
    //     0x441f2c: stur         r6, [r1, #0xb]
    // 0x441f30: r0 = call 0x391a04
    //     0x441f30: bl           0x391a04
    //     0x441f34: stur         r0, [fp, #-8]
    //     0x441f38: ldur         BARRIER, [fp, #-0x30]
    //     0x441f3c: str          BARRIER, [SP]
    // 0x441f40: r1 = r0
    //     0x441f40: mov          r1, r0
    // 0x441f44: r4 = pp[0x204]
    //     0x441f44: add          r4, PP, #0xc, lsl #12
    //     0x441f48: ldr          r4, [r4, #0x1f8]
    // 0x441f4c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x441f4c: bl           0x391490
    // 0x441f50: r1 = pp[0xade]
    //     0x441f50: add          r1, PP, #0xe, lsl #12
    //     0x441f54: ldr          r1, [r1, #0xad0]
    // 0x441f58: r0 = call 0x39fb14
    //     0x441f58: bl           0x39fb14
    // 0x441f5c: r3 = r0
    //     0x441f5c: mov          r3, r0
    //     0x441f60: mov          r0, #1
    //     0x441f64: stur         r3, [fp, #-0x30]
    // 0x441f68: StoreField: r3->field_13 = r0
    //     0x441f68: stur         r0, [r3, #0x13]
    // 0x441f6c: r0 = pp[0xae6]
    //     0x441f6c: add          r0, PP, #0xe, lsl #12
    //     0x441f70: ldr          r0, [r0, #0xad8]
    // 0x441f74: StoreField: r3->field_1b = r0
    //     0x441f74: stur         r0, [r3, #0x1b]
    //     0x441f78: ldur         r0, [fp, #-8]
    // 0x441f7c: StoreField: r3->field_b = r0
    //     0x441f7c: stur         r0, [r3, #0xb]
    // 0x441f80: r1 = NULL
    //     0x441f80: mov          r1, NULL
    //     0x441f84: mov          r2, #8
    // 0x441f88: r0 = call 0x61f920
    //     0x441f88: bl           0x61f920
    // 0x441f8c: r2 = r0
    //     0x441f8c: mov          r2, r0
    //     0x441f90: ldur         r0, [fp, #-0x10]
    //     0x441f94: stur         r2, [fp, #-8]
    // 0x441f98: StoreField: r2->field_f = r0
    //     0x441f98: stur         r0, [r2, #0xf]
    //     0x441f9c: ldur         r0, [fp, #-0x28]
    // 0x441fa0: StoreField: r2->field_13 = r0
    //     0x441fa0: stur         r0, [r2, #0x13]
    //     0x441fa4: ldur         r0, [fp, #-0x18]
    // 0x441fa8: ArrayStore: r2[0] = r0  ; List_8
    //     0x441fa8: stur         r0, [r2, #0x17]
    //     0x441fac: ldur         r0, [fp, #-0x30]
    // 0x441fb0: StoreField: r2->field_1b = r0
    //     0x441fb0: stur         r0, [r2, #0x1b]
    // 0x441fb4: r1 = pp[0x5c58]
    //     0x441fb4: ldr          r1, [PP, #0x5c58]
    // 0x441fb8: r0 = call 0x61e854
    //     0x441fb8: bl           0x61e854
    // 0x441fbc: r1 = r0
    //     0x441fbc: mov          r1, r0
    //     0x441fc0: ldur         r0, [fp, #-8]
    //     0x441fc4: stur         r1, [fp, #-0x10]
    // 0x441fc8: StoreField: r1->field_f = r0
    //     0x441fc8: stur         r0, [r1, #0xf]
    //     0x441fcc: mov          r0, #8
    // 0x441fd0: StoreField: r1->field_b = r0
    //     0x441fd0: stur         r0, [r1, #0xb]
    // 0x441fd4: r0 = call 0x3a1414
    //     0x441fd4: bl           0x3a1414
    // 0x441fd8: r1 = r0
    //     0x441fd8: mov          r1, r0
    // 0x441fdc: r0 = pp[0x5140]
    //     0x441fdc: ldr          r0, [PP, #0x5140]
    //     0x441fe0: stur         r1, [fp, #-8]
    // 0x441fe4: StoreField: r1->field_f = r0
    //     0x441fe4: stur         r0, [r1, #0xf]
    // 0x441fe8: r0 = pp[0xaee]
    //     0x441fe8: add          r0, PP, #0xe, lsl #12
    //     0x441fec: ldr          r0, [r0, #0xae0]
    // 0x441ff0: StoreField: r1->field_13 = r0
    //     0x441ff0: stur         r0, [r1, #0x13]
    // 0x441ff4: r0 = pp[0xaf6]
    //     0x441ff4: add          r0, PP, #0xe, lsl #12
    //     0x441ff8: ldr          r0, [r0, #0xae8]
    // 0x441ffc: ArrayStore: r1[0] = r0  ; List_8
    //     0x441ffc: stur         r0, [r1, #0x17]
    // 0x442000: r0 = pp[0xb6e]
    //     0x442000: add          r0, PP, #0xe, lsl #12
    //     0x442004: ldr          r0, [r0, #0xb60]
    // 0x442008: StoreField: r1->field_1b = r0
    //     0x442008: stur         r0, [r1, #0x1b]
    // 0x44200c: r0 = pp[0xb06]
    //     0x44200c: add          r0, PP, #0xe, lsl #12
    //     0x442010: ldr          r0, [r0, #0xaf8]
    // 0x442014: StoreField: r1->field_23 = r0
    //     0x442014: stur         r0, [r1, #0x23]
    // 0x442018: r0 = pp[0xb2]
    //     0x442018: add          r0, PP, #0xa, lsl #12
    //     0x44201c: ldr          r0, [r0, #0xa8]
    // 0x442020: StoreField: r1->field_2b = r0
    //     0x442020: stur         r0, [r1, #0x2b]
    // 0x442024: StoreField: r1->field_2f = xzr
    //     0x442024: stur         xzr, [r1, #0x2f]
    //     0x442028: ldur         r0, [fp, #-0x10]
    // 0x44202c: StoreField: r1->field_b = r0
    //     0x44202c: stur         r0, [r1, #0xb]
    // 0x442030: r0 = call 0x391a04
    //     0x442030: bl           0x391a04
    //     0x442034: stur         r0, [fp, #-0x10]
    //     0x442038: ldur         BARRIER, [fp, #-0x20]
    //     0x44203c: ldur         lr, [fp, #-8]
    //     0x442040: stp          lr, BARRIER, [SP]
    // 0x442044: r1 = r0
    //     0x442044: mov          r1, r0
    // 0x442048: r4 = pp[0x267]
    //     0x442048: add          r4, PP, #0xf, lsl #12
    //     0x44204c: ldr          r4, [r4, #0x258]
    // 0x442050: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x442050: bl           0x391490
    //     0x442054: ldur         r0, [fp, #-0x10]
    // 0x442058: SP = fp
    //     0x442058: mov          SP, fp
    // 0x44205c: LeaveFrame
    //     0x44205c: ldp          fp, lr, [SP], #0x10
    // 0x442060: ret
    //     0x442060: ret          
    // 0x442064: r0 = call 0x61fa28
    //     0x442064: bl           0x61fa28
    // 0x442068: b 0x441c20
    //     0x442068: b            0x441c20
    // 0x44206c: r0 = call 0x61fe70
    //     0x44206c: bl           0x61fe70
  }

  createState() {
    // ** addr: 0x4c54b0, size: 0x80
    // 0x4c54b0: EnterFrame
    //     0x4c54b0: stp          fp, lr, [SP, #-0x10]!
    //     0x4c54b4: mov          fp, SP
    // 0x4c54b8: AllocStack(0x10)
    //     0x4c54b8: sub          SP, SP, #0x10
    // 0x4c54bc: CheckStackOverflow
    //     0x4c54bc: ldr          BARRIER, [THR, #0x38]
    //     0x4c54c0: cmp          SP, BARRIER
    //     0x4c54c4: b.ls         0x4c5528
    // 0x4c54c8: r1 = pp[0x69b]
    //     0x4c54c8: add          r1, PP, #0xb, lsl #12
    //     0x4c54cc: ldr          r1, [r1, #0x690]
    // 0x4c54d0: r0 = call 0x4c55f8
    //     0x4c54d0: bl           0x4c55f8
    // 0x4c54d4: r1 = r0
    //     0x4c54d4: mov          r1, r0
    //     0x4c54d8: add          r0, NULL, #0x20
    //     0x4c54dc: stur         r1, [fp, #-8]
    // 0x4c54e0: ArrayStore: r1[0] = r0  ; List_8
    //     0x4c54e0: stur         r0, [r1, #0x17]
    // 0x4c54e4: r0 = call 0x4c55ec
    //     0x4c54e4: bl           0x4c55ec
    // 0x4c54e8: r1 = r0
    //     0x4c54e8: mov          r1, r0
    //     0x4c54ec: stur         r0, [fp, #-0x10]
    // 0x4c54f0: r0 = soul_flutter_international$biz$pkGame$notifier$notifier_game_make_bet_record_dialog_GamePKBetRankingNotifier::ctor()
    //     0x4c54f0: bl           0x4c5530
    //     0x4c54f4: ldur         r0, [fp, #-0x10]
    //     0x4c54f8: ldur         r1, [fp, #-8]
    // 0x4c54fc: StoreField: r1->field_13 = r0
    //     0x4c54fc: stur         r0, [r1, #0x13]
    //     0x4c5500: ldurb        r16, [r1, #-1]
    //     0x4c5504: ldurb        r17, [r0, #-1]
    //     0x4c5508: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c550c: tst          BARRIER, HEAP, lsr #32
    // 0x4c5510: b.eq 0x4c5518
    //     0x4c5510: b.eq         0x4c5518
    // 0x4c5514: r0 = call 0x61e04c
    //     0x4c5514: bl           0x61e04c
    // 0x4c5518: r0 = r1
    //     0x4c5518: mov          r0, r1
    // 0x4c551c: SP = fp
    //     0x4c551c: mov          SP, fp
    // 0x4c5520: LeaveFrame
    //     0x4c5520: ldp          fp, lr, [SP], #0x10
    // 0x4c5524: ret
    //     0x4c5524: ret          
    // 0x4c5528: r0 = call 0x61fa28
    //     0x4c5528: bl           0x61fa28
    // 0x4c552c: b 0x4c54c8
    //     0x4c552c: b            0x4c54c8
  }
