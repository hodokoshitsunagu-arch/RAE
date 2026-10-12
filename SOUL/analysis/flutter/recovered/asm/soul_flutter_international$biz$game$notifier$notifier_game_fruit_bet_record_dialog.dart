// lib: , url: soul_flutter_international$biz$game$notifier$notifier_game_fruit_bet_record_dialog


  requestGameFruitDialogList() {
    // ** addr: 0x435db4, size: 0xa0
    // 0x435db4: EnterFrame
    //     0x435db4: stp          fp, lr, [SP, #-0x10]!
    //     0x435db8: mov          fp, SP
    // 0x435dbc: AllocStack(0x20)
    //     0x435dbc: sub          SP, SP, #0x20
    //     0x435dc0: stur         r1, [fp, #-8]
    //     0x435dc4: stur         r2, [fp, #-0x10]
    // 0x435dc8: CheckStackOverflow
    //     0x435dc8: ldr          BARRIER, [THR, #0x38]
    //     0x435dcc: cmp          SP, BARRIER
    //     0x435dd0: b.ls         0x435e4c
    //     0x435dd4: mov          r1, #2
    // 0x435dd8: r0 = call 0x61e890
    //     0x435dd8: bl           0x61e890
    // 0x435ddc: r2 = r0
    //     0x435ddc: mov          r2, r0
    //     0x435de0: ldur         r0, [fp, #-8]
    //     0x435de4: stur         r2, [fp, #-0x18]
    // 0x435de8: StoreField: r2->field_f = r0
    //     0x435de8: stur         r0, [r2, #0xf]
    //     0x435dec: ldur         r1, [fp, #-0x10]
    // 0x435df0: StoreField: r2->field_13 = r1
    //     0x435df0: stur         r1, [r2, #0x13]
    // 0x435df4: r1 = r0
    //     0x435df4: mov          r1, r0
    // 0x435df8: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x435df8: bl           0x3ac980
    //     0x435dfc: ldur         r0, [fp, #-8]
    // 0x435e00: LoadField: r3 = r0->field_2f
    //     0x435e00: ldur         r3, [r0, #0x2f]
    //     0x435e04: ldur         r2, [fp, #-0x18]
    //     0x435e08: stur         r3, [fp, #-0x20]
    // 0x435e0c: r1 = pp[0x3ed]
    //     0x435e0c: add          r1, PP, #0x15, lsl #12
    //     0x435e10: ldr          r1, [r1, #0x3d8]
    // 0x435e14: r0 = call 0x61ec54
    //     0x435e14: bl           0x61ec54
    //     0x435e18: ldur         r2, [fp, #-0x18]
    // 0x435e1c: r1 = pp[0x3f5]
    //     0x435e1c: add          r1, PP, #0x15, lsl #12
    //     0x435e20: ldr          r1, [r1, #0x3e0]
    //     0x435e24: stur         r0, [fp, #-8]
    // 0x435e28: r0 = call 0x61ec54
    //     0x435e28: bl           0x61ec54
    //     0x435e2c: ldur         r1, [fp, #-0x20]
    //     0x435e30: ldur         r2, [fp, #-8]
    // 0x435e34: r3 = r0
    //     0x435e34: mov          r3, r0
    // 0x435e38: r0 = soul_flutter_international$api$api_service_SOApiService::getGameFruitDialogList()
    //     0x435e38: bl           0x435e54
    // 0x435e3c: r0 = NULL
    //     0x435e3c: mov          r0, NULL
    // 0x435e40: SP = fp
    //     0x435e40: mov          SP, fp
    // 0x435e44: LeaveFrame
    //     0x435e44: ldp          fp, lr, [SP], #0x10
    // 0x435e48: ret
    //     0x435e48: ret          
    // 0x435e4c: r0 = call 0x61fa28
    //     0x435e4c: bl           0x61fa28
    // 0x435e50: b 0x435dd4
    //     0x435e50: b            0x435dd4
  }

  _anon_closure() {
    // ** addr: 0x435f58, size: 0x25c
    // 0x435f58: EnterFrame
    //     0x435f58: stp          fp, lr, [SP, #-0x10]!
    //     0x435f5c: mov          fp, SP
    // 0x435f60: AllocStack(0x30)
    //     0x435f60: sub          SP, SP, #0x30
    //     0x435f64: ldr          r0, [fp, #0x18]
    // 0x435f68: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x435f68: ldur         r3, [r0, #0x17]
    //     0x435f6c: add          r3, r3, HEAP, lsl #32
    //     0x435f70: stur         r3, [fp, #-0x10]
    // 0x435f74: CheckStackOverflow
    //     0x435f74: ldr          BARRIER, [THR, #0x38]
    //     0x435f78: cmp          SP, BARRIER
    //     0x435f7c: b.ls         0x4361ac
    // 0x435f80: LoadField: r4 = r3->field_f
    //     0x435f80: ldur         r4, [r3, #0xf]
    //     0x435f84: add          r4, r4, HEAP, lsl #32
    //     0x435f88: ldr          r5, [fp, #0x10]
    //     0x435f8c: stur         r4, [fp, #-8]
    // 0x435f90: r0 = LoadClassIdInstr(r5)
    //     0x435f90: ldur         r0, [r5, #-1]
    //     0x435f94: ubfx         r0, r0, #0xc, #0x14
    // 0x435f98: r1 = r5
    //     0x435f98: mov          r1, r5
    // 0x435f9c: r2 = pp[0x377]
    //     0x435f9c: add          r2, PP, #0xf, lsl #12
    //     0x435fa0: ldr          r2, [r2, #0x368]
    //     0x435fa4: sub          lr, r0, #1, lsl #12
    //     0x435fa8: ldr          lr, [r21, lr, lsl #3]
    // 0x435fac: r0 = [R]()
    //     0x435fac: blr          lr
    //     0x435fb0: cmp          r0, r22
    // 0x435fb4: b.ne 0x435fc0
    //     0x435fb4: b.ne         0x435fc0
    //     0x435fb8: orr          r5, xzr, #0xfffffffffffffffe
    // 0x435fbc: b 0x435fc4
    //     0x435fbc: b            0x435fc4
    // 0x435fc0: r5 = r0
    //     0x435fc0: mov          r5, r0
    //     0x435fc4: ldr          r4, [fp, #0x10]
    //     0x435fc8: ldur         r3, [fp, #-8]
    // 0x435fcc: r0 = r5
    //     0x435fcc: mov          r0, r5
    //     0x435fd0: stur         r5, [fp, #-0x18]
    // 0x435fd4: r2 = NULL
    //     0x435fd4: mov          r2, NULL
    // 0x435fd8: r1 = NULL
    //     0x435fd8: mov          r1, NULL
    // 0x435fdc: branchIfSmi(r0, 0x436004)
    //     0x435fdc: tbz          r0, #0, 0x436004
    // 0x435fe0: r4 = LoadClassIdInstr(r0)
    //     0x435fe0: ldur         r4, [r0, #-1]
    //     0x435fe4: ubfx         r4, r4, #0xc, #0x14
    //     0x435fe8: sub          r4, r4, #0x3c
    //     0x435fec: cmp          r4, #1
    // 0x435ff0: b.ls 0x436004
    //     0x435ff0: b.ls         0x436004
    // 0x435ff4: r8 = pp[0x1170]
    //     0x435ff4: ldr          r8, [PP, #0x1170]
    // 0x435ff8: r3 = pp[0x3fd]
    //     0x435ff8: add          r3, PP, #0x15, lsl #12
    //     0x435ffc: ldr          r3, [r3, #0x3e8]
    // 0x436000: r0 = call 0x62aa34
    //     0x436000: bl           0x62aa34
    //     0x436004: ldur         r0, [fp, #-0x18]
    //     0x436008: sbfx         r1, r0, #1, #0x1f
    // 0x43600c: branchIfSmi(r0, 0x436014)
    //     0x43600c: tbz          r0, #0, 0x436014
    // 0x436010: LoadField: r1 = r0->field_7
    //     0x436010: ldur         r1, [r0, #7]
    //     0x436014: ldur         r0, [fp, #-8]
    // 0x436018: StoreField: r0->field_2f = r1
    //     0x436018: stur         r1, [r0, #0x2f]
    //     0x43601c: ldr          r1, [fp, #0x10]
    // 0x436020: r0 = LoadClassIdInstr(r1)
    //     0x436020: ldur         r0, [r1, #-1]
    //     0x436024: ubfx         r0, r0, #0xc, #0x14
    // 0x436028: r2 = pp[0x38f]
    //     0x436028: add          r2, PP, #0xf, lsl #12
    //     0x43602c: ldr          r2, [r2, #0x380]
    //     0x436030: sub          lr, r0, #1, lsl #12
    //     0x436034: ldr          lr, [r21, lr, lsl #3]
    // 0x436038: r0 = [R]()
    //     0x436038: blr          lr
    //     0x43603c: cmp          r0, r22
    // 0x436040: b.ne 0x436058
    //     0x436040: b.ne         0x436058
    // 0x436044: r1 = NULL
    //     0x436044: mov          r1, NULL
    //     0x436048: mov          r2, #0
    // 0x43604c: r0 = dart_core__GrowableList::factory_ctor()
    //     0x43604c: bl           0x277268
    // 0x436050: r3 = r0
    //     0x436050: mov          r3, r0
    // 0x436054: b 0x43605c
    //     0x436054: b            0x43605c
    // 0x436058: r3 = r0
    //     0x436058: mov          r3, r0
    // 0x43605c: r0 = r3
    //     0x43605c: mov          r0, r3
    //     0x436060: stur         r3, [fp, #-8]
    // 0x436064: r2 = NULL
    //     0x436064: mov          r2, NULL
    // 0x436068: r1 = NULL
    //     0x436068: mov          r1, NULL
    //     0x43606c: mov          r4, #0x3c
    // 0x436070: branchIfSmi(r0, 0x43607c)
    //     0x436070: tbz          r0, #0, 0x43607c
    // 0x436074: r4 = LoadClassIdInstr(r0)
    //     0x436074: ldur         r4, [r0, #-1]
    //     0x436078: ubfx         r4, r4, #0xc, #0x14
    //     0x43607c: sub          r4, r4, #0x5a
    //     0x436080: cmp          r4, #2
    // 0x436084: b.ls 0x4360b8
    //     0x436084: b.ls         0x4360b8
    //     0x436088: sub          r4, r4, #0x16
    //     0x43608c: cmp          r4, #0x37
    // 0x436090: b.ls 0x4360b8
    //     0x436090: b.ls         0x4360b8
    //     0x436094: cmp          r4, #0xebc
    // 0x436098: b.eq 0x4360b8
    //     0x436098: b.eq         0x4360b8
    //     0x43609c: sub          r4, r4, #0xedd
    //     0x4360a0: cmp          r4, #4
    // 0x4360a4: b.ls 0x4360b8
    //     0x4360a4: b.ls         0x4360b8
    // 0x4360a8: r8 = pp[0x3b80]
    //     0x4360a8: ldr          r8, [PP, #0x3b80]
    // 0x4360ac: r3 = pp[0x40d]
    //     0x4360ac: add          r3, PP, #0x15, lsl #12
    //     0x4360b0: ldr          r3, [r3, #0x3f8]
    // 0x4360b4: r0 = call 0x61d6e4
    //     0x4360b4: bl           0x61d6e4
    //     0x4360b8: ldur         r2, [fp, #-8]
    // 0x4360bc: r0 = LoadClassIdInstr(r2)
    //     0x4360bc: ldur         r0, [r2, #-1]
    //     0x4360c0: ubfx         r0, r0, #0xc, #0x14
    // 0x4360c4: r1 = r2
    //     0x4360c4: mov          r1, r2
    //     0x4360c8: mov          r17, #0x89aa
    //     0x4360cc: add          lr, r0, r17
    //     0x4360d0: ldr          lr, [r21, lr, lsl #3]
    // 0x4360d4: r0 = [R]()
    //     0x4360d4: blr          lr
    //     0x4360d8: tbnz         r0, #4, 0x43614c
    //     0x4360dc: ldur         r3, [fp, #-0x10]
    //     0x4360e0: ldur         r0, [fp, #-8]
    // 0x4360e4: LoadField: r1 = r3->field_f
    //     0x4360e4: ldur         r1, [r3, #0xf]
    //     0x4360e8: add          r1, r1, HEAP, lsl #32
    // 0x4360ec: LoadField: r4 = r1->field_2b
    //     0x4360ec: ldur         r4, [r1, #0x2b]
    //     0x4360f0: add          r4, r4, HEAP, lsl #32
    //     0x4360f4: stur         r4, [fp, #-0x18]
    // 0x4360f8: r1 = pp[0x41d]
    //     0x4360f8: add          r1, PP, #0x15, lsl #12
    //     0x4360fc: ldr          r1, [r1, #0x408]
    // 0x436100: r2 = NULL
    //     0x436100: mov          r2, NULL
    // 0x436104: r0 = call 0x61ec54
    //     0x436104: bl           0x61ec54
    // 0x436108: r1 = r0
    //     0x436108: mov          r1, r0
    //     0x43610c: ldur         r0, [fp, #-8]
    // 0x436110: r2 = LoadClassIdInstr(r0)
    //     0x436110: ldur         r2, [r0, #-1]
    //     0x436114: ubfx         r2, r2, #0xc, #0x14
    // 0x436118: BARRIER = pp[0x5a2]
    //     0x436118: add          BARRIER, PP, #0x12, lsl #12
    //     0x43611c: ldr          BARRIER, [BARRIER, #0x590]
    //     0x436120: stp          r0, BARRIER, [SP, #8]
    //     0x436124: str          r1, [SP]
    // 0x436128: r0 = r2
    //     0x436128: mov          r0, r2
    // 0x43612c: r4 = pp[0x58]
    //     0x43612c: ldr          r4, [PP, #0x58]
    //     0x436130: mov          r17, #0x86d9
    //     0x436134: add          lr, r0, r17
    //     0x436138: ldr          lr, [r21, lr, lsl #3]
    // 0x43613c: r0 = [R]()
    //     0x43613c: blr          lr
    //     0x436140: ldur         r1, [fp, #-0x18]
    // 0x436144: r2 = r0
    //     0x436144: mov          r2, r0
    // 0x436148: r0 = dart_core__GrowableList::addAll()
    //     0x436148: bl           0x2ce4e8
    //     0x43614c: ldur         r1, [fp, #-0x10]
    // 0x436150: LoadField: r0 = r1->field_13
    //     0x436150: ldur         r0, [r1, #0x13]
    //     0x436154: add          r0, r0, HEAP, lsl #32
    // 0x436158: LoadField: r2 = r1->field_f
    //     0x436158: ldur         r2, [r1, #0xf]
    //     0x43615c: add          r2, r2, HEAP, lsl #32
    // 0x436160: LoadField: r3 = r2->field_2f
    //     0x436160: ldur         r3, [r2, #0x2f]
    //     0x436164: tbnz         r3, #0x3f, 0x436170
    //     0x436168: add          r2, NULL, #0x30
    // 0x43616c: b 0x436174
    //     0x43616c: b            0x436174
    //     0x436170: add          r2, NULL, #0x20
    //     0x436174: add          BARRIER, NULL, #0x20
    //     0x436178: stp          BARRIER, r0, [SP, #8]
    //     0x43617c: str          r2, [SP]
    // 0x436180: r4 = pp[0x370]
    //     0x436180: ldr          r4, [PP, #0x370]
    // 0x436184: LoadField: r2 = r0->field_1f
    //     0x436184: ldur         r2, [r0, #0x1f]
    // 0x436188: r0 = [R]()
    //     0x436188: blr          r2
    //     0x43618c: ldur         r0, [fp, #-0x10]
    // 0x436190: LoadField: r1 = r0->field_f
    //     0x436190: ldur         r1, [r0, #0xf]
    //     0x436194: add          r1, r1, HEAP, lsl #32
    // 0x436198: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x436198: bl           0x3ac980
    // 0x43619c: r0 = NULL
    //     0x43619c: mov          r0, NULL
    // 0x4361a0: SP = fp
    //     0x4361a0: mov          SP, fp
    // 0x4361a4: LeaveFrame
    //     0x4361a4: ldp          fp, lr, [SP], #0x10
    // 0x4361a8: ret
    //     0x4361a8: ret          
    // 0x4361ac: r0 = call 0x61fa28
    //     0x4361ac: bl           0x61fa28
    // 0x4361b0: b 0x435f80
    //     0x4361b0: b            0x435f80
  }

  _anon_closure() {
    // ** addr: 0x4361b4, size: 0x60
    // 0x4361b4: EnterFrame
    //     0x4361b4: stp          fp, lr, [SP, #-0x10]!
    //     0x4361b8: mov          fp, SP
    // 0x4361bc: AllocStack(8)
    //     0x4361bc: sub          SP, SP, #8
    // 0x4361c0: CheckStackOverflow
    //     0x4361c0: ldr          BARRIER, [THR, #0x38]
    //     0x4361c4: cmp          SP, BARRIER
    //     0x4361c8: b.ls         0x43620c
    //     0x4361cc: ldr          r0, [fp, #0x10]
    // 0x4361d0: r2 = NULL
    //     0x4361d0: mov          r2, NULL
    // 0x4361d4: r1 = NULL
    //     0x4361d4: mov          r1, NULL
    // 0x4361d8: r8 = pp[0x3cd0]
    //     0x4361d8: ldr          r8, [PP, #0x3cd0]
    // 0x4361dc: r3 = pp[0x425]
    //     0x4361dc: add          r3, PP, #0x15, lsl #12
    //     0x4361e0: ldr          r3, [r3, #0x410]
    // 0x4361e4: r0 = call 0x2b15f0
    //     0x4361e4: bl           0x2b15f0
    // 0x4361e8: r0 = call 0x436500
    //     0x4361e8: bl           0x436500
    // 0x4361ec: r1 = r0
    //     0x4361ec: mov          r1, r0
    //     0x4361f0: ldr          r2, [fp, #0x10]
    //     0x4361f4: stur         r0, [fp, #-8]
    // 0x4361f8: r0 = soul_flutter_international$model$game_fruit_model_GameFruitDialogListInfo::ctor_fromJson()
    //     0x4361f8: bl           0x436214
    //     0x4361fc: ldur         r0, [fp, #-8]
    // 0x436200: SP = fp
    //     0x436200: mov          SP, fp
    // 0x436204: LeaveFrame
    //     0x436204: ldp          fp, lr, [SP], #0x10
    // 0x436208: ret
    //     0x436208: ret          
    // 0x43620c: r0 = call 0x61fa28
    //     0x43620c: bl           0x61fa28
    // 0x436210: b 0x4361cc
    //     0x436210: b            0x4361cc
  }

  ctor() {
    // ** addr: 0x4c39bc, size: 0xbc
    // 0x4c39bc: EnterFrame
    //     0x4c39bc: stp          fp, lr, [SP, #-0x10]!
    //     0x4c39c0: mov          fp, SP
    // 0x4c39c4: AllocStack(8)
    //     0x4c39c4: sub          SP, SP, #8
    // 0x4c39c8: r0 = r1
    //     0x4c39c8: mov          r0, r1
    //     0x4c39cc: stur         r1, [fp, #-8]
    // 0x4c39d0: CheckStackOverflow
    //     0x4c39d0: ldr          BARRIER, [THR, #0x38]
    //     0x4c39d4: cmp          SP, BARRIER
    //     0x4c39d8: b.ls         0x4c3a70
    // 0x4c39dc: r1 = pp[0x5a2]
    //     0x4c39dc: add          r1, PP, #0x12, lsl #12
    //     0x4c39e0: ldr          r1, [r1, #0x590]
    //     0x4c39e4: mov          r2, #0
    // 0x4c39e8: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c39e8: bl           0x277268
    //     0x4c39ec: ldur         r1, [fp, #-8]
    // 0x4c39f0: StoreField: r1->field_2b = r0
    //     0x4c39f0: stur         r0, [r1, #0x2b]
    //     0x4c39f4: ldurb        r16, [r1, #-1]
    //     0x4c39f8: ldurb        r17, [r0, #-1]
    //     0x4c39fc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3a00: tst          BARRIER, HEAP, lsr #32
    // 0x4c3a04: b.eq 0x4c3a0c
    //     0x4c3a04: b.eq         0x4c3a0c
    // 0x4c3a08: r0 = call 0x61e04c
    //     0x4c3a08: bl           0x61e04c
    //     0x4c3a0c: mov          r0, #-1
    // 0x4c3a10: StoreField: r1->field_2f = r0
    //     0x4c3a10: stur         r0, [r1, #0x2f]
    // 0x4c3a14: StoreField: r1->field_23 = r0
    //     0x4c3a14: stur         r0, [r1, #0x23]
    // 0x4c3a18: StoreField: r1->field_7 = xzr
    //     0x4c3a18: stur         xzr, [r1, #7]
    // 0x4c3a1c: StoreField: r1->field_13 = xzr
    //     0x4c3a1c: stur         xzr, [r1, #0x13]
    // 0x4c3a20: StoreField: r1->field_1b = xzr
    //     0x4c3a20: stur         xzr, [r1, #0x1b]
    //     0x4c3a24: ldr          r0, [THR, #0x68]
    // 0x4c3a28: LoadField: r0 = r0->field_b90
    //     0x4c3a28: ldr          r0, [r0, #0xb90]
    // 0x4c3a2c: BARRIER = pp[0x40]
    //     0x4c3a2c: ldr          BARRIER, [PP, #0x40]
    //     0x4c3a30: cmp          r0, r16
    // 0x4c3a34: b.ne 0x4c3a40
    //     0x4c3a34: b.ne         0x4c3a40
    // 0x4c3a38: r2 = pp[0x3608]
    //     0x4c3a38: ldr          r2, [PP, #0x3608]
    // 0x4c3a3c: r0 = call 0x61d99c
    //     0x4c3a3c: bl           0x61d99c
    //     0x4c3a40: ldur         r1, [fp, #-8]
    // 0x4c3a44: StoreField: r1->field_f = r0
    //     0x4c3a44: stur         r0, [r1, #0xf]
    //     0x4c3a48: ldurb        r16, [r1, #-1]
    //     0x4c3a4c: ldurb        r17, [r0, #-1]
    //     0x4c3a50: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3a54: tst          BARRIER, HEAP, lsr #32
    // 0x4c3a58: b.eq 0x4c3a60
    //     0x4c3a58: b.eq         0x4c3a60
    // 0x4c3a5c: r0 = call 0x61e04c
    //     0x4c3a5c: bl           0x61e04c
    // 0x4c3a60: r0 = NULL
    //     0x4c3a60: mov          r0, NULL
    // 0x4c3a64: SP = fp
    //     0x4c3a64: mov          SP, fp
    // 0x4c3a68: LeaveFrame
    //     0x4c3a68: ldp          fp, lr, [SP], #0x10
    // 0x4c3a6c: ret
    //     0x4c3a6c: ret          
    // 0x4c3a70: r0 = call 0x61fa28
    //     0x4c3a70: bl           0x61fa28
    // 0x4c3a74: b 0x4c39dc
    //     0x4c3a74: b            0x4c39dc
  }

  gainGameFruitDialog() {
    // ** addr: 0x4d8dec, size: 0x54
    // 0x4d8dec: EnterFrame
    //     0x4d8dec: stp          fp, lr, [SP, #-0x10]!
    //     0x4d8df0: mov          fp, SP
    // 0x4d8df4: AllocStack(0x10)
    //     0x4d8df4: sub          SP, SP, #0x10
    // 0x4d8df8: r0 = r1
    //     0x4d8df8: mov          r0, r1
    //     0x4d8dfc: stur         r1, [fp, #-8]
    //     0x4d8e00: stur         r2, [fp, #-0x10]
    // 0x4d8e04: CheckStackOverflow
    //     0x4d8e04: ldr          BARRIER, [THR, #0x38]
    //     0x4d8e08: cmp          SP, BARRIER
    //     0x4d8e0c: b.ls         0x4d8e38
    // 0x4d8e10: LoadField: r1 = r0->field_2b
    //     0x4d8e10: ldur         r1, [r0, #0x2b]
    //     0x4d8e14: add          r1, r1, HEAP, lsl #32
    // 0x4d8e18: r0 = dart_core__GrowableList::clear()
    //     0x4d8e18: bl           0x2b3608
    //     0x4d8e1c: ldur         r1, [fp, #-8]
    //     0x4d8e20: ldur         r2, [fp, #-0x10]
    // 0x4d8e24: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_bet_record_dialog_GameFruitBetRecordNotifier::requestGameFruitDialogList()
    //     0x4d8e24: bl           0x435db4
    // 0x4d8e28: r0 = NULL
    //     0x4d8e28: mov          r0, NULL
    // 0x4d8e2c: SP = fp
    //     0x4d8e2c: mov          SP, fp
    // 0x4d8e30: LeaveFrame
    //     0x4d8e30: ldp          fp, lr, [SP], #0x10
    // 0x4d8e34: ret
    //     0x4d8e34: ret          
    // 0x4d8e38: r0 = call 0x61fa28
    //     0x4d8e38: bl           0x61fa28
    // 0x4d8e3c: b 0x4d8e10
    //     0x4d8e3c: b            0x4d8e10
  }
