// lib: , url: soul_flutter_international$api$game_api_service


  betFruit() {
    // ** addr: 0x41e31c, size: 0x114
    // 0x41e31c: EnterFrame
    //     0x41e31c: stp          fp, lr, [SP, #-0x10]!
    //     0x41e320: mov          fp, SP
    // 0x41e324: AllocStack(0x38)
    //     0x41e324: sub          SP, SP, #0x38
    //     0x41e328: stur         r1, [fp, #-8]
    //     0x41e32c: stur         r2, [fp, #-0x10]
    //     0x41e330: stur         r3, [fp, #-0x18]
    //     0x41e334: stur         r5, [fp, #-0x20]
    // 0x41e338: CheckStackOverflow
    //     0x41e338: ldr          BARRIER, [THR, #0x38]
    //     0x41e33c: cmp          SP, BARRIER
    //     0x41e340: b.ls         0x41e428
    //     0x41e344: mov          r1, #2
    // 0x41e348: r0 = call 0x61e890
    //     0x41e348: bl           0x61e890
    // 0x41e34c: r3 = r0
    //     0x41e34c: mov          r3, r0
    //     0x41e350: ldur         r0, [fp, #-0x18]
    //     0x41e354: stur         r3, [fp, #-0x28]
    // 0x41e358: StoreField: r3->field_f = r0
    //     0x41e358: stur         r0, [r3, #0xf]
    //     0x41e35c: ldur         r0, [fp, #-0x20]
    // 0x41e360: StoreField: r3->field_13 = r0
    //     0x41e360: stur         r0, [r3, #0x13]
    // 0x41e364: r1 = NULL
    //     0x41e364: mov          r1, NULL
    //     0x41e368: mov          r2, #8
    // 0x41e36c: r0 = call 0x61f920
    //     0x41e36c: bl           0x61f920
    // 0x41e370: r2 = r0
    //     0x41e370: mov          r2, r0
    // 0x41e374: BARRIER = pp[0xba8]
    //     0x41e374: add          BARRIER, PP, #0x10, lsl #12
    //     0x41e378: ldr          BARRIER, [BARRIER, #0xb98]
    // 0x41e37c: StoreField: r2->field_f = r16
    //     0x41e37c: stur         r16, [r2, #0xf]
    //     0x41e380: ldur         r3, [fp, #-8]
    //     0x41e384: sbfiz        r0, r3, #1, #0x1f
    //     0x41e388: cmp          r3, r0, asr #1
    // 0x41e38c: b.eq 0x41e398
    //     0x41e38c: b.eq         0x41e398
    // 0x41e390: r0 = call 0x61fba8
    //     0x41e390: bl           0x61fba8
    // 0x41e394: StoreField: r0->field_7 = r3
    //     0x41e394: stur         r3, [r0, #7]
    // 0x41e398: StoreField: r2->field_13 = r0
    //     0x41e398: stur         r0, [r2, #0x13]
    // 0x41e39c: BARRIER = pp[0xba0]
    //     0x41e39c: add          BARRIER, PP, #0x10, lsl #12
    //     0x41e3a0: ldr          BARRIER, [BARRIER, #0xb90]
    // 0x41e3a4: ArrayStore: r2[0] = r16  ; List_8
    //     0x41e3a4: stur         r16, [r2, #0x17]
    //     0x41e3a8: ldur         r3, [fp, #-0x10]
    //     0x41e3ac: sbfiz        r0, r3, #1, #0x1f
    //     0x41e3b0: cmp          r3, r0, asr #1
    // 0x41e3b4: b.eq 0x41e3c0
    //     0x41e3b4: b.eq         0x41e3c0
    // 0x41e3b8: r0 = call 0x61fba8
    //     0x41e3b8: bl           0x61fba8
    // 0x41e3bc: StoreField: r0->field_7 = r3
    //     0x41e3bc: stur         r3, [r0, #7]
    // 0x41e3c0: StoreField: r2->field_1b = r0
    //     0x41e3c0: stur         r0, [r2, #0x1b]
    // 0x41e3c4: BARRIER = pp[0xbf0]
    //     0x41e3c4: ldr          BARRIER, [PP, #0xbf0]
    //     0x41e3c8: stp          r2, BARRIER, [SP]
    // 0x41e3cc: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x41e3cc: bl           0x27c0c8
    //     0x41e3d0: ldur         r2, [fp, #-0x28]
    // 0x41e3d4: r1 = pp[0x2ad]
    //     0x41e3d4: add          r1, PP, #0x15, lsl #12
    //     0x41e3d8: ldr          r1, [r1, #0x298]
    //     0x41e3dc: stur         r0, [fp, #-0x18]
    // 0x41e3e0: r0 = call 0x61ec54
    //     0x41e3e0: bl           0x61ec54
    //     0x41e3e4: ldur         r2, [fp, #-0x28]
    // 0x41e3e8: r1 = pp[0x2b5]
    //     0x41e3e8: add          r1, PP, #0x15, lsl #12
    //     0x41e3ec: ldr          r1, [r1, #0x2a0]
    //     0x41e3f0: stur         r0, [fp, #-0x20]
    // 0x41e3f4: r0 = call 0x61ec54
    //     0x41e3f4: bl           0x61ec54
    //     0x41e3f8: str          r0, [SP]
    //     0x41e3fc: ldur         r2, [fp, #-0x18]
    //     0x41e400: ldur         r3, [fp, #-0x20]
    // 0x41e404: r1 = pp[0x2bd]
    //     0x41e404: add          r1, PP, #0x15, lsl #12
    //     0x41e408: ldr          r1, [r1, #0x2a8]
    // 0x41e40c: r4 = pp[0xbd0]
    //     0x41e40c: add          r4, PP, #0x10, lsl #12
    //     0x41e410: ldr          r4, [r4, #0xbc0]
    // 0x41e414: r0 = soul_flutter_international$common$plugins$http_Http::postSimple()
    //     0x41e414: bl           0x41e430
    // 0x41e418: r0 = NULL
    //     0x41e418: mov          r0, NULL
    // 0x41e41c: SP = fp
    //     0x41e41c: mov          SP, fp
    // 0x41e420: LeaveFrame
    //     0x41e420: ldp          fp, lr, [SP], #0x10
    // 0x41e424: ret
    //     0x41e424: ret          
    // 0x41e428: r0 = call 0x61fa28
    //     0x41e428: bl           0x61fa28
    // 0x41e42c: b 0x41e344
    //     0x41e42c: b            0x41e344
  }

  getGameFruitResultDialog() {
    // ** addr: 0x4444d0, size: 0xe8
    // 0x4444d0: EnterFrame
    //     0x4444d0: stp          fp, lr, [SP, #-0x10]!
    //     0x4444d4: mov          fp, SP
    // 0x4444d8: AllocStack(0x30)
    //     0x4444d8: sub          SP, SP, #0x30
    //     0x4444dc: stur         r1, [fp, #-8]
    //     0x4444e0: stur         r2, [fp, #-0x10]
    //     0x4444e4: stur         r3, [fp, #-0x18]
    // 0x4444e8: CheckStackOverflow
    //     0x4444e8: ldr          BARRIER, [THR, #0x38]
    //     0x4444ec: cmp          SP, BARRIER
    //     0x4444f0: b.ls         0x4445b0
    //     0x4444f4: mov          r1, #2
    // 0x4444f8: r0 = call 0x61e890
    //     0x4444f8: bl           0x61e890
    // 0x4444fc: r3 = r0
    //     0x4444fc: mov          r3, r0
    //     0x444500: ldur         r0, [fp, #-0x10]
    //     0x444504: stur         r3, [fp, #-0x20]
    // 0x444508: StoreField: r3->field_f = r0
    //     0x444508: stur         r0, [r3, #0xf]
    //     0x44450c: ldur         r0, [fp, #-0x18]
    // 0x444510: StoreField: r3->field_13 = r0
    //     0x444510: stur         r0, [r3, #0x13]
    // 0x444514: r1 = NULL
    //     0x444514: mov          r1, NULL
    //     0x444518: mov          r2, #4
    // 0x44451c: r0 = call 0x61f920
    //     0x44451c: bl           0x61f920
    // 0x444520: r2 = r0
    //     0x444520: mov          r2, r0
    // 0x444524: BARRIER = pp[0x883]
    //     0x444524: add          BARRIER, PP, #0xb, lsl #12
    //     0x444528: ldr          BARRIER, [BARRIER, #0x878]
    // 0x44452c: StoreField: r2->field_f = r16
    //     0x44452c: stur         r16, [r2, #0xf]
    //     0x444530: ldur         r3, [fp, #-8]
    //     0x444534: sbfiz        r0, r3, #1, #0x1f
    //     0x444538: cmp          r3, r0, asr #1
    // 0x44453c: b.eq 0x444548
    //     0x44453c: b.eq         0x444548
    // 0x444540: r0 = call 0x61fba8
    //     0x444540: bl           0x61fba8
    // 0x444544: StoreField: r0->field_7 = r3
    //     0x444544: stur         r3, [r0, #7]
    // 0x444548: StoreField: r2->field_13 = r0
    //     0x444548: stur         r0, [r2, #0x13]
    // 0x44454c: BARRIER = pp[0xbf0]
    //     0x44454c: ldr          BARRIER, [PP, #0xbf0]
    //     0x444550: stp          r2, BARRIER, [SP]
    // 0x444554: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x444554: bl           0x27c0c8
    //     0x444558: ldur         r2, [fp, #-0x20]
    // 0x44455c: r1 = pp[0xca1]
    //     0x44455c: add          r1, PP, #0x11, lsl #12
    //     0x444560: ldr          r1, [r1, #0xc90]
    //     0x444564: stur         r0, [fp, #-0x10]
    // 0x444568: r0 = call 0x61ec54
    //     0x444568: bl           0x61ec54
    //     0x44456c: ldur         r2, [fp, #-0x20]
    // 0x444570: r1 = pp[0xca9]
    //     0x444570: add          r1, PP, #0x11, lsl #12
    //     0x444574: ldr          r1, [r1, #0xc98]
    //     0x444578: stur         r0, [fp, #-0x18]
    // 0x44457c: r0 = call 0x61ec54
    //     0x44457c: bl           0x61ec54
    //     0x444580: ldur         BARRIER, [fp, #-0x10]
    //     0x444584: stp          r0, BARRIER, [SP]
    //     0x444588: ldur         r2, [fp, #-0x18]
    // 0x44458c: r1 = pp[0xcb1]
    //     0x44458c: add          r1, PP, #0x11, lsl #12
    //     0x444590: ldr          r1, [r1, #0xca0]
    // 0x444594: r4 = pp[0x40f]
    //     0x444594: add          r4, PP, #0xf, lsl #12
    //     0x444598: ldr          r4, [r4, #0x400]
    // 0x44459c: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x44459c: bl           0x3ab958
    // 0x4445a0: r0 = NULL
    //     0x4445a0: mov          r0, NULL
    // 0x4445a4: SP = fp
    //     0x4445a4: mov          SP, fp
    // 0x4445a8: LeaveFrame
    //     0x4445a8: ldp          fp, lr, [SP], #0x10
    // 0x4445ac: ret
    //     0x4445ac: ret          
    // 0x4445b0: r0 = call 0x61fa28
    //     0x4445b0: bl           0x61fa28
    // 0x4445b4: b 0x4444f4
    //     0x4445b4: b            0x4444f4
  }

  _anon_closure() {
    // ** addr: 0x4445b8, size: 0x74
    // 0x4445b8: EnterFrame
    //     0x4445b8: stp          fp, lr, [SP, #-0x10]!
    //     0x4445bc: mov          fp, SP
    // 0x4445c0: AllocStack(0x20)
    //     0x4445c0: sub          SP, SP, #0x20
    //     0x4445c4: ldr          r0, [fp, #0x18]
    // 0x4445c8: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4445c8: ldur         r1, [r0, #0x17]
    //     0x4445cc: add          r1, r1, HEAP, lsl #32
    // 0x4445d0: CheckStackOverflow
    //     0x4445d0: ldr          BARRIER, [THR, #0x38]
    //     0x4445d4: cmp          SP, BARRIER
    //     0x4445d8: b.ls         0x444624
    // 0x4445dc: LoadField: r0 = r1->field_f
    //     0x4445dc: ldur         r0, [r1, #0xf]
    //     0x4445e0: add          r0, r0, HEAP, lsl #32
    //     0x4445e4: stur         r0, [fp, #-8]
    // 0x4445e8: r0 = call 0x444d7c
    //     0x4445e8: bl           0x444d7c
    // 0x4445ec: r1 = r0
    //     0x4445ec: mov          r1, r0
    //     0x4445f0: ldr          r2, [fp, #0x10]
    //     0x4445f4: stur         r0, [fp, #-0x10]
    // 0x4445f8: r0 = soul_flutter_international$model$game_fruit_model_GameFruitWinnerDialogInfo::ctor_fromJson()
    //     0x4445f8: bl           0x44462c
    //     0x4445fc: ldur         BARRIER, [fp, #-8]
    //     0x444600: ldur         lr, [fp, #-0x10]
    //     0x444604: stp          lr, BARRIER, [SP]
    //     0x444608: ldur         r0, [fp, #-8]
    // 0x44460c: r4 = pp[0x140]
    //     0x44460c: ldr          r4, [PP, #0x140]
    // 0x444610: LoadField: r2 = r0->field_1f
    //     0x444610: ldur         r2, [r0, #0x1f]
    // 0x444614: r0 = [R]()
    //     0x444614: blr          r2
    // 0x444618: SP = fp
    //     0x444618: mov          SP, fp
    // 0x44461c: LeaveFrame
    //     0x44461c: ldp          fp, lr, [SP], #0x10
    // 0x444620: ret
    //     0x444620: ret          
    // 0x444624: r0 = call 0x61fa28
    //     0x444624: bl           0x61fa28
    // 0x444628: b 0x4445dc
    //     0x444628: b            0x4445dc
  }

  getRecentFruitResult() {
    // ** addr: 0x4d1d18, size: 0x6c
    // 0x4d1d18: EnterFrame
    //     0x4d1d18: stp          fp, lr, [SP, #-0x10]!
    //     0x4d1d1c: mov          fp, SP
    // 0x4d1d20: AllocStack(8)
    //     0x4d1d20: sub          SP, SP, #8
    //     0x4d1d24: stur         r1, [fp, #-8]
    // 0x4d1d28: CheckStackOverflow
    //     0x4d1d28: ldr          BARRIER, [THR, #0x38]
    //     0x4d1d2c: cmp          SP, BARRIER
    //     0x4d1d30: b.ls         0x4d1d7c
    //     0x4d1d34: mov          r1, #1
    // 0x4d1d38: r0 = call 0x61e890
    //     0x4d1d38: bl           0x61e890
    // 0x4d1d3c: r1 = r0
    //     0x4d1d3c: mov          r1, r0
    //     0x4d1d40: ldur         r0, [fp, #-8]
    // 0x4d1d44: StoreField: r1->field_f = r0
    //     0x4d1d44: stur         r0, [r1, #0xf]
    // 0x4d1d48: r2 = r1
    //     0x4d1d48: mov          r2, r1
    // 0x4d1d4c: r1 = pp[0xd89]
    //     0x4d1d4c: add          r1, PP, #0x11, lsl #12
    //     0x4d1d50: ldr          r1, [r1, #0xd78]
    // 0x4d1d54: r0 = call 0x61ec54
    //     0x4d1d54: bl           0x61ec54
    // 0x4d1d58: r2 = r0
    //     0x4d1d58: mov          r2, r0
    // 0x4d1d5c: r1 = pp[0xd91]
    //     0x4d1d5c: add          r1, PP, #0x11, lsl #12
    //     0x4d1d60: ldr          r1, [r1, #0xd80]
    // 0x4d1d64: r4 = pp[0x278]
    //     0x4d1d64: ldr          r4, [PP, #0x278]
    // 0x4d1d68: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x4d1d68: bl           0x3ab958
    // 0x4d1d6c: r0 = NULL
    //     0x4d1d6c: mov          r0, NULL
    // 0x4d1d70: SP = fp
    //     0x4d1d70: mov          SP, fp
    // 0x4d1d74: LeaveFrame
    //     0x4d1d74: ldp          fp, lr, [SP], #0x10
    // 0x4d1d78: ret
    //     0x4d1d78: ret          
    // 0x4d1d7c: r0 = call 0x61fa28
    //     0x4d1d7c: bl           0x61fa28
    // 0x4d1d80: b 0x4d1d34
    //     0x4d1d80: b            0x4d1d34
  }

  _anon_closure() {
    // ** addr: 0x4d1d84, size: 0x174
    // 0x4d1d84: EnterFrame
    //     0x4d1d84: stp          fp, lr, [SP, #-0x10]!
    //     0x4d1d88: mov          fp, SP
    // 0x4d1d8c: AllocStack(0x30)
    //     0x4d1d8c: sub          SP, SP, #0x30
    //     0x4d1d90: ldr          r0, [fp, #0x18]
    // 0x4d1d94: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x4d1d94: ldur         r3, [r0, #0x17]
    //     0x4d1d98: add          r3, r3, HEAP, lsl #32
    //     0x4d1d9c: stur         r3, [fp, #-8]
    // 0x4d1da0: CheckStackOverflow
    //     0x4d1da0: ldr          BARRIER, [THR, #0x38]
    //     0x4d1da4: cmp          SP, BARRIER
    //     0x4d1da8: b.ls         0x4d1ef0
    //     0x4d1dac: ldr          r1, [fp, #0x10]
    // 0x4d1db0: r0 = LoadClassIdInstr(r1)
    //     0x4d1db0: ldur         r0, [r1, #-1]
    //     0x4d1db4: ubfx         r0, r0, #0xc, #0x14
    // 0x4d1db8: r2 = pp[0x38f]
    //     0x4d1db8: add          r2, PP, #0xf, lsl #12
    //     0x4d1dbc: ldr          r2, [r2, #0x380]
    //     0x4d1dc0: sub          lr, r0, #1, lsl #12
    //     0x4d1dc4: ldr          lr, [r21, lr, lsl #3]
    // 0x4d1dc8: r0 = [R]()
    //     0x4d1dc8: blr          lr
    //     0x4d1dcc: cmp          r0, r22
    // 0x4d1dd0: b.ne 0x4d1de8
    //     0x4d1dd0: b.ne         0x4d1de8
    // 0x4d1dd4: r1 = NULL
    //     0x4d1dd4: mov          r1, NULL
    //     0x4d1dd8: mov          r2, #0
    // 0x4d1ddc: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4d1ddc: bl           0x277268
    // 0x4d1de0: r4 = r0
    //     0x4d1de0: mov          r4, r0
    // 0x4d1de4: b 0x4d1dec
    //     0x4d1de4: b            0x4d1dec
    // 0x4d1de8: r4 = r0
    //     0x4d1de8: mov          r4, r0
    //     0x4d1dec: ldur         r3, [fp, #-8]
    // 0x4d1df0: r0 = r4
    //     0x4d1df0: mov          r0, r4
    //     0x4d1df4: stur         r4, [fp, #-0x10]
    // 0x4d1df8: r2 = NULL
    //     0x4d1df8: mov          r2, NULL
    // 0x4d1dfc: r1 = NULL
    //     0x4d1dfc: mov          r1, NULL
    //     0x4d1e00: mov          r4, #0x3c
    // 0x4d1e04: branchIfSmi(r0, 0x4d1e10)
    //     0x4d1e04: tbz          r0, #0, 0x4d1e10
    // 0x4d1e08: r4 = LoadClassIdInstr(r0)
    //     0x4d1e08: ldur         r4, [r0, #-1]
    //     0x4d1e0c: ubfx         r4, r4, #0xc, #0x14
    //     0x4d1e10: sub          r4, r4, #0x5a
    //     0x4d1e14: cmp          r4, #2
    // 0x4d1e18: b.ls 0x4d1e4c
    //     0x4d1e18: b.ls         0x4d1e4c
    //     0x4d1e1c: sub          r4, r4, #0x16
    //     0x4d1e20: cmp          r4, #0x37
    // 0x4d1e24: b.ls 0x4d1e4c
    //     0x4d1e24: b.ls         0x4d1e4c
    //     0x4d1e28: cmp          r4, #0xebc
    // 0x4d1e2c: b.eq 0x4d1e4c
    //     0x4d1e2c: b.eq         0x4d1e4c
    //     0x4d1e30: sub          r4, r4, #0xedd
    //     0x4d1e34: cmp          r4, #4
    // 0x4d1e38: b.ls 0x4d1e4c
    //     0x4d1e38: b.ls         0x4d1e4c
    // 0x4d1e3c: r8 = pp[0x3b80]
    //     0x4d1e3c: ldr          r8, [PP, #0x3b80]
    // 0x4d1e40: r3 = pp[0xd99]
    //     0x4d1e40: add          r3, PP, #0x11, lsl #12
    //     0x4d1e44: ldr          r3, [r3, #0xd88]
    // 0x4d1e48: r0 = call 0x61d6e4
    //     0x4d1e48: bl           0x61d6e4
    //     0x4d1e4c: ldur         r0, [fp, #-8]
    // 0x4d1e50: LoadField: r3 = r0->field_f
    //     0x4d1e50: ldur         r3, [r0, #0xf]
    //     0x4d1e54: add          r3, r3, HEAP, lsl #32
    //     0x4d1e58: stur         r3, [fp, #-0x18]
    // 0x4d1e5c: r1 = pp[0xda9]
    //     0x4d1e5c: add          r1, PP, #0x11, lsl #12
    //     0x4d1e60: ldr          r1, [r1, #0xd98]
    // 0x4d1e64: r2 = NULL
    //     0x4d1e64: mov          r2, NULL
    // 0x4d1e68: r0 = call 0x61ec54
    //     0x4d1e68: bl           0x61ec54
    // 0x4d1e6c: r1 = r0
    //     0x4d1e6c: mov          r1, r0
    //     0x4d1e70: ldur         r0, [fp, #-0x10]
    // 0x4d1e74: r2 = LoadClassIdInstr(r0)
    //     0x4d1e74: ldur         r2, [r0, #-1]
    //     0x4d1e78: ubfx         r2, r2, #0xc, #0x14
    // 0x4d1e7c: BARRIER = pp[0x85b]
    //     0x4d1e7c: add          BARRIER, PP, #0xb, lsl #12
    //     0x4d1e80: ldr          BARRIER, [BARRIER, #0x850]
    //     0x4d1e84: stp          r0, BARRIER, [SP, #8]
    //     0x4d1e88: str          r1, [SP]
    // 0x4d1e8c: r0 = r2
    //     0x4d1e8c: mov          r0, r2
    // 0x4d1e90: r4 = pp[0x58]
    //     0x4d1e90: ldr          r4, [PP, #0x58]
    //     0x4d1e94: mov          r17, #0x86d9
    //     0x4d1e98: add          lr, r0, r17
    //     0x4d1e9c: ldr          lr, [r21, lr, lsl #3]
    // 0x4d1ea0: r0 = [R]()
    //     0x4d1ea0: blr          lr
    // 0x4d1ea4: r1 = LoadClassIdInstr(r0)
    //     0x4d1ea4: ldur         r1, [r0, #-1]
    //     0x4d1ea8: ubfx         r1, r1, #0xc, #0x14
    // 0x4d1eac: BARRIER = r0
    //     0x4d1eac: mov          BARRIER, r0
    // 0x4d1eb0: r0 = r1
    //     0x4d1eb0: mov          r0, r1
    // 0x4d1eb4: r1 = BARRIER
    //     0x4d1eb4: mov          r1, BARRIER
    // 0x4d1eb8: r4 = pp[0x4c0]
    //     0x4d1eb8: ldr          r4, [PP, #0x4c0]
    //     0x4d1ebc: add          lr, r0, #0x35e
    //     0x4d1ec0: ldr          lr, [r21, lr, lsl #3]
    // 0x4d1ec4: r0 = [R]()
    //     0x4d1ec4: blr          lr
    //     0x4d1ec8: ldur         BARRIER, [fp, #-0x18]
    //     0x4d1ecc: stp          r0, BARRIER, [SP]
    //     0x4d1ed0: ldur         r0, [fp, #-0x18]
    // 0x4d1ed4: r4 = pp[0x140]
    //     0x4d1ed4: ldr          r4, [PP, #0x140]
    // 0x4d1ed8: LoadField: r2 = r0->field_1f
    //     0x4d1ed8: ldur         r2, [r0, #0x1f]
    // 0x4d1edc: r0 = [R]()
    //     0x4d1edc: blr          r2
    // 0x4d1ee0: r0 = NULL
    //     0x4d1ee0: mov          r0, NULL
    // 0x4d1ee4: SP = fp
    //     0x4d1ee4: mov          SP, fp
    // 0x4d1ee8: LeaveFrame
    //     0x4d1ee8: ldp          fp, lr, [SP], #0x10
    // 0x4d1eec: ret
    //     0x4d1eec: ret          
    // 0x4d1ef0: r0 = call 0x61fa28
    //     0x4d1ef0: bl           0x61fa28
    // 0x4d1ef4: b 0x4d1dac
    //     0x4d1ef4: b            0x4d1dac
  }

  _anon_closure() {
    // ** addr: 0x4d1ef8, size: 0x60
    // 0x4d1ef8: EnterFrame
    //     0x4d1ef8: stp          fp, lr, [SP, #-0x10]!
    //     0x4d1efc: mov          fp, SP
    // 0x4d1f00: AllocStack(8)
    //     0x4d1f00: sub          SP, SP, #8
    // 0x4d1f04: CheckStackOverflow
    //     0x4d1f04: ldr          BARRIER, [THR, #0x38]
    //     0x4d1f08: cmp          SP, BARRIER
    //     0x4d1f0c: b.ls         0x4d1f50
    //     0x4d1f10: ldr          r0, [fp, #0x10]
    // 0x4d1f14: r2 = NULL
    //     0x4d1f14: mov          r2, NULL
    // 0x4d1f18: r1 = NULL
    //     0x4d1f18: mov          r1, NULL
    // 0x4d1f1c: r8 = pp[0x3cd0]
    //     0x4d1f1c: ldr          r8, [PP, #0x3cd0]
    // 0x4d1f20: r3 = pp[0xdb1]
    //     0x4d1f20: add          r3, PP, #0x11, lsl #12
    //     0x4d1f24: ldr          r3, [r3, #0xda0]
    // 0x4d1f28: r0 = call 0x2b15f0
    //     0x4d1f28: bl           0x2b15f0
    // 0x4d1f2c: r0 = call 0x4d2178
    //     0x4d1f2c: bl           0x4d2178
    // 0x4d1f30: r1 = r0
    //     0x4d1f30: mov          r1, r0
    //     0x4d1f34: ldr          r2, [fp, #0x10]
    //     0x4d1f38: stur         r0, [fp, #-8]
    // 0x4d1f3c: r0 = soul_flutter_international$model$game_fruit_model_BetItemInfo::ctor_fromJson()
    //     0x4d1f3c: bl           0x4d1f58
    //     0x4d1f40: ldur         r0, [fp, #-8]
    // 0x4d1f44: SP = fp
    //     0x4d1f44: mov          SP, fp
    // 0x4d1f48: LeaveFrame
    //     0x4d1f48: ldp          fp, lr, [SP], #0x10
    // 0x4d1f4c: ret
    //     0x4d1f4c: ret          
    // 0x4d1f50: r0 = call 0x61fa28
    //     0x4d1f50: bl           0x61fa28
    // 0x4d1f54: b 0x4d1f10
    //     0x4d1f54: b            0x4d1f10
  }

  getFruitGameProcess() {
    // ** addr: 0x4d2184, size: 0x6c
    // 0x4d2184: EnterFrame
    //     0x4d2184: stp          fp, lr, [SP, #-0x10]!
    //     0x4d2188: mov          fp, SP
    // 0x4d218c: AllocStack(8)
    //     0x4d218c: sub          SP, SP, #8
    //     0x4d2190: stur         r1, [fp, #-8]
    // 0x4d2194: CheckStackOverflow
    //     0x4d2194: ldr          BARRIER, [THR, #0x38]
    //     0x4d2198: cmp          SP, BARRIER
    //     0x4d219c: b.ls         0x4d21e8
    //     0x4d21a0: mov          r1, #1
    // 0x4d21a4: r0 = call 0x61e890
    //     0x4d21a4: bl           0x61e890
    // 0x4d21a8: r1 = r0
    //     0x4d21a8: mov          r1, r0
    //     0x4d21ac: ldur         r0, [fp, #-8]
    // 0x4d21b0: StoreField: r1->field_f = r0
    //     0x4d21b0: stur         r0, [r1, #0xf]
    // 0x4d21b4: r2 = r1
    //     0x4d21b4: mov          r2, r1
    // 0x4d21b8: r1 = pp[0xdf9]
    //     0x4d21b8: add          r1, PP, #0x11, lsl #12
    //     0x4d21bc: ldr          r1, [r1, #0xde8]
    // 0x4d21c0: r0 = call 0x61ec54
    //     0x4d21c0: bl           0x61ec54
    // 0x4d21c4: r2 = r0
    //     0x4d21c4: mov          r2, r0
    // 0x4d21c8: r1 = pp[0xe01]
    //     0x4d21c8: add          r1, PP, #0x11, lsl #12
    //     0x4d21cc: ldr          r1, [r1, #0xdf0]
    // 0x4d21d0: r4 = pp[0x278]
    //     0x4d21d0: ldr          r4, [PP, #0x278]
    // 0x4d21d4: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x4d21d4: bl           0x3ab958
    // 0x4d21d8: r0 = NULL
    //     0x4d21d8: mov          r0, NULL
    // 0x4d21dc: SP = fp
    //     0x4d21dc: mov          SP, fp
    // 0x4d21e0: LeaveFrame
    //     0x4d21e0: ldp          fp, lr, [SP], #0x10
    // 0x4d21e4: ret
    //     0x4d21e4: ret          
    // 0x4d21e8: r0 = call 0x61fa28
    //     0x4d21e8: bl           0x61fa28
    // 0x4d21ec: b 0x4d21a0
    //     0x4d21ec: b            0x4d21a0
  }

  _anon_closure() {
    // ** addr: 0x4d21f0, size: 0x78
    // 0x4d21f0: EnterFrame
    //     0x4d21f0: stp          fp, lr, [SP, #-0x10]!
    //     0x4d21f4: mov          fp, SP
    // 0x4d21f8: AllocStack(0x20)
    //     0x4d21f8: sub          SP, SP, #0x20
    //     0x4d21fc: ldr          r0, [fp, #0x18]
    // 0x4d2200: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d2200: ldur         r1, [r0, #0x17]
    //     0x4d2204: add          r1, r1, HEAP, lsl #32
    // 0x4d2208: CheckStackOverflow
    //     0x4d2208: ldr          BARRIER, [THR, #0x38]
    //     0x4d220c: cmp          SP, BARRIER
    //     0x4d2210: b.ls         0x4d2260
    // 0x4d2214: LoadField: r0 = r1->field_f
    //     0x4d2214: ldur         r0, [r1, #0xf]
    //     0x4d2218: add          r0, r0, HEAP, lsl #32
    //     0x4d221c: stur         r0, [fp, #-8]
    // 0x4d2220: r0 = call 0x4c3918
    //     0x4d2220: bl           0x4c3918
    // 0x4d2224: r1 = r0
    //     0x4d2224: mov          r1, r0
    //     0x4d2228: ldr          r2, [fp, #0x10]
    //     0x4d222c: stur         r0, [fp, #-0x10]
    // 0x4d2230: r0 = soul_flutter_international$model$game_fruit_model_GameFruitProcessResult::ctor_fromJson()
    //     0x4d2230: bl           0x4c2fa0
    //     0x4d2234: ldur         BARRIER, [fp, #-8]
    //     0x4d2238: ldur         lr, [fp, #-0x10]
    //     0x4d223c: stp          lr, BARRIER, [SP]
    //     0x4d2240: ldur         r0, [fp, #-8]
    // 0x4d2244: r4 = pp[0x140]
    //     0x4d2244: ldr          r4, [PP, #0x140]
    // 0x4d2248: LoadField: r2 = r0->field_1f
    //     0x4d2248: ldur         r2, [r0, #0x1f]
    // 0x4d224c: r0 = [R]()
    //     0x4d224c: blr          r2
    // 0x4d2250: r0 = NULL
    //     0x4d2250: mov          r0, NULL
    // 0x4d2254: SP = fp
    //     0x4d2254: mov          SP, fp
    // 0x4d2258: LeaveFrame
    //     0x4d2258: ldp          fp, lr, [SP], #0x10
    // 0x4d225c: ret
    //     0x4d225c: ret          
    // 0x4d2260: r0 = call 0x61fa28
    //     0x4d2260: bl           0x61fa28
    // 0x4d2264: b 0x4d2214
    //     0x4d2264: b            0x4d2214
  }

  getFruitGameResource() {
    // ** addr: 0x4d3b98, size: 0x6c
    // 0x4d3b98: EnterFrame
    //     0x4d3b98: stp          fp, lr, [SP, #-0x10]!
    //     0x4d3b9c: mov          fp, SP
    // 0x4d3ba0: AllocStack(8)
    //     0x4d3ba0: sub          SP, SP, #8
    //     0x4d3ba4: stur         r1, [fp, #-8]
    // 0x4d3ba8: CheckStackOverflow
    //     0x4d3ba8: ldr          BARRIER, [THR, #0x38]
    //     0x4d3bac: cmp          SP, BARRIER
    //     0x4d3bb0: b.ls         0x4d3bfc
    //     0x4d3bb4: mov          r1, #1
    // 0x4d3bb8: r0 = call 0x61e890
    //     0x4d3bb8: bl           0x61e890
    // 0x4d3bbc: r1 = r0
    //     0x4d3bbc: mov          r1, r0
    //     0x4d3bc0: ldur         r0, [fp, #-8]
    // 0x4d3bc4: StoreField: r1->field_f = r0
    //     0x4d3bc4: stur         r0, [r1, #0xf]
    // 0x4d3bc8: r2 = r1
    //     0x4d3bc8: mov          r2, r1
    // 0x4d3bcc: r1 = pp[0x32d]
    //     0x4d3bcc: add          r1, PP, #0x15, lsl #12
    //     0x4d3bd0: ldr          r1, [r1, #0x318]
    // 0x4d3bd4: r0 = call 0x61ec54
    //     0x4d3bd4: bl           0x61ec54
    // 0x4d3bd8: r2 = r0
    //     0x4d3bd8: mov          r2, r0
    // 0x4d3bdc: r1 = pp[0x335]
    //     0x4d3bdc: add          r1, PP, #0x15, lsl #12
    //     0x4d3be0: ldr          r1, [r1, #0x320]
    // 0x4d3be4: r4 = pp[0x278]
    //     0x4d3be4: ldr          r4, [PP, #0x278]
    // 0x4d3be8: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x4d3be8: bl           0x3ab958
    // 0x4d3bec: r0 = NULL
    //     0x4d3bec: mov          r0, NULL
    // 0x4d3bf0: SP = fp
    //     0x4d3bf0: mov          SP, fp
    // 0x4d3bf4: LeaveFrame
    //     0x4d3bf4: ldp          fp, lr, [SP], #0x10
    // 0x4d3bf8: ret
    //     0x4d3bf8: ret          
    // 0x4d3bfc: r0 = call 0x61fa28
    //     0x4d3bfc: bl           0x61fa28
    // 0x4d3c00: b 0x4d3bb4
    //     0x4d3c00: b            0x4d3bb4
  }

  _anon_closure() {
    // ** addr: 0x4d3c04, size: 0x78
    // 0x4d3c04: EnterFrame
    //     0x4d3c04: stp          fp, lr, [SP, #-0x10]!
    //     0x4d3c08: mov          fp, SP
    // 0x4d3c0c: AllocStack(0x20)
    //     0x4d3c0c: sub          SP, SP, #0x20
    //     0x4d3c10: ldr          r0, [fp, #0x18]
    // 0x4d3c14: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d3c14: ldur         r1, [r0, #0x17]
    //     0x4d3c18: add          r1, r1, HEAP, lsl #32
    // 0x4d3c1c: CheckStackOverflow
    //     0x4d3c1c: ldr          BARRIER, [THR, #0x38]
    //     0x4d3c20: cmp          SP, BARRIER
    //     0x4d3c24: b.ls         0x4d3c74
    // 0x4d3c28: LoadField: r0 = r1->field_f
    //     0x4d3c28: ldur         r0, [r1, #0xf]
    //     0x4d3c2c: add          r0, r0, HEAP, lsl #32
    //     0x4d3c30: stur         r0, [fp, #-8]
    // 0x4d3c34: r0 = call 0x4d3ef0
    //     0x4d3c34: bl           0x4d3ef0
    // 0x4d3c38: r1 = r0
    //     0x4d3c38: mov          r1, r0
    //     0x4d3c3c: ldr          r2, [fp, #0x10]
    //     0x4d3c40: stur         r0, [fp, #-0x10]
    // 0x4d3c44: r0 = soul_flutter_international$model$game_fruit_model_FruitLandResource::ctor_fromJson()
    //     0x4d3c44: bl           0x4d3c7c
    //     0x4d3c48: ldur         BARRIER, [fp, #-8]
    //     0x4d3c4c: ldur         lr, [fp, #-0x10]
    //     0x4d3c50: stp          lr, BARRIER, [SP]
    //     0x4d3c54: ldur         r0, [fp, #-8]
    // 0x4d3c58: r4 = pp[0x140]
    //     0x4d3c58: ldr          r4, [PP, #0x140]
    // 0x4d3c5c: LoadField: r2 = r0->field_1f
    //     0x4d3c5c: ldur         r2, [r0, #0x1f]
    // 0x4d3c60: r0 = [R]()
    //     0x4d3c60: blr          r2
    // 0x4d3c64: r0 = NULL
    //     0x4d3c64: mov          r0, NULL
    // 0x4d3c68: SP = fp
    //     0x4d3c68: mov          SP, fp
    // 0x4d3c6c: LeaveFrame
    //     0x4d3c6c: ldp          fp, lr, [SP], #0x10
    // 0x4d3c70: ret
    //     0x4d3c70: ret          
    // 0x4d3c74: r0 = call 0x61fa28
    //     0x4d3c74: bl           0x61fa28
    // 0x4d3c78: b 0x4d3c28
    //     0x4d3c78: b            0x4d3c28
  }
