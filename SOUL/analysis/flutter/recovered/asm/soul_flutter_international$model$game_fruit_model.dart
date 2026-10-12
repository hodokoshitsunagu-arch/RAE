// lib: , url: soul_flutter_international$model$game_fruit_model


  ctor_fromJson() {
    // ** addr: 0x436214, size: 0x2cc
    // 0x436214: EnterFrame
    //     0x436214: stp          fp, lr, [SP, #-0x10]!
    //     0x436218: mov          fp, SP
    // 0x43621c: AllocStack(0x28)
    //     0x43621c: sub          SP, SP, #0x28
    // 0x436220: r4 = r1
    //     0x436220: mov          r4, r1
    // 0x436224: r3 = r2
    //     0x436224: mov          r3, r2
    //     0x436228: stur         r1, [fp, #-8]
    //     0x43622c: stur         r2, [fp, #-0x10]
    // 0x436230: CheckStackOverflow
    //     0x436230: ldr          BARRIER, [THR, #0x38]
    //     0x436234: cmp          SP, BARRIER
    //     0x436238: b.ls         0x4364d8
    // 0x43623c: r0 = LoadClassIdInstr(r3)
    //     0x43623c: ldur         r0, [r3, #-1]
    //     0x436240: ubfx         r0, r0, #0xc, #0x14
    // 0x436244: r1 = r3
    //     0x436244: mov          r1, r3
    // 0x436248: r2 = pp[0x99b]
    //     0x436248: add          r2, PP, #0xb, lsl #12
    //     0x43624c: ldr          r2, [r2, #0x990]
    //     0x436250: sub          lr, r0, #1, lsl #12
    //     0x436254: ldr          lr, [r21, lr, lsl #3]
    // 0x436258: r0 = [R]()
    //     0x436258: blr          lr
    //     0x43625c: cmp          r0, r22
    // 0x436260: b.ne 0x43626c
    //     0x436260: b.ne         0x43626c
    // 0x436264: r0 = NULL
    //     0x436264: mov          r0, NULL
    // 0x436268: b 0x436298
    //     0x436268: b            0x436298
    //     0x43626c: mov          r1, #0x3c
    // 0x436270: branchIfSmi(r0, 0x43627c)
    //     0x436270: tbz          r0, #0, 0x43627c
    // 0x436274: r1 = LoadClassIdInstr(r0)
    //     0x436274: ldur         r1, [r0, #-1]
    //     0x436278: ubfx         r1, r1, #0xc, #0x14
    //     0x43627c: str          r0, [SP]
    // 0x436280: r0 = r1
    //     0x436280: mov          r0, r1
    // 0x436284: r4 = pp[0x3a8]
    //     0x436284: ldr          r4, [PP, #0x3a8]
    //     0x436288: mov          r17, #0x3e07
    //     0x43628c: add          lr, r0, r17
    //     0x436290: ldr          lr, [r21, lr, lsl #3]
    // 0x436294: r0 = [R]()
    //     0x436294: blr          lr
    //     0x436298: cmp          r0, r22
    // 0x43629c: b.ne 0x4362a4
    //     0x43629c: b.ne         0x4362a4
    // 0x4362a0: r0 = pp[0x148]
    //     0x4362a0: ldr          r0, [PP, #0x148]
    //     0x4362a4: ldur         r4, [fp, #-8]
    //     0x4362a8: ldur         r3, [fp, #-0x10]
    // 0x4362ac: StoreField: r4->field_7 = r0
    //     0x4362ac: stur         r0, [r4, #7]
    //     0x4362b0: ldurb        r16, [r4, #-1]
    //     0x4362b4: ldurb        r17, [r0, #-1]
    //     0x4362b8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4362bc: tst          BARRIER, HEAP, lsr #32
    // 0x4362c0: b.eq 0x4362c8
    //     0x4362c0: b.eq         0x4362c8
    // 0x4362c4: r0 = call 0x61e0ac
    //     0x4362c4: bl           0x61e0ac
    // 0x4362c8: r0 = LoadClassIdInstr(r3)
    //     0x4362c8: ldur         r0, [r3, #-1]
    //     0x4362cc: ubfx         r0, r0, #0xc, #0x14
    // 0x4362d0: r1 = r3
    //     0x4362d0: mov          r1, r3
    // 0x4362d4: r2 = pp[0x9d1]
    //     0x4362d4: add          r2, PP, #0x11, lsl #12
    //     0x4362d8: ldr          r2, [r2, #0x9c0]
    //     0x4362dc: sub          lr, r0, #1, lsl #12
    //     0x4362e0: ldr          lr, [r21, lr, lsl #3]
    // 0x4362e4: r0 = [R]()
    //     0x4362e4: blr          lr
    //     0x4362e8: cmp          r0, r22
    // 0x4362ec: b.ne 0x4362f8
    //     0x4362ec: b.ne         0x4362f8
    // 0x4362f0: r0 = NULL
    //     0x4362f0: mov          r0, NULL
    // 0x4362f4: b 0x436324
    //     0x4362f4: b            0x436324
    //     0x4362f8: mov          r1, #0x3c
    // 0x4362fc: branchIfSmi(r0, 0x436308)
    //     0x4362fc: tbz          r0, #0, 0x436308
    // 0x436300: r1 = LoadClassIdInstr(r0)
    //     0x436300: ldur         r1, [r0, #-1]
    //     0x436304: ubfx         r1, r1, #0xc, #0x14
    //     0x436308: str          r0, [SP]
    // 0x43630c: r0 = r1
    //     0x43630c: mov          r0, r1
    // 0x436310: r4 = pp[0x3a8]
    //     0x436310: ldr          r4, [PP, #0x3a8]
    //     0x436314: mov          r17, #0x3e07
    //     0x436318: add          lr, r0, r17
    //     0x43631c: ldr          lr, [r21, lr, lsl #3]
    // 0x436320: r0 = [R]()
    //     0x436320: blr          lr
    //     0x436324: cmp          r0, r22
    // 0x436328: b.ne 0x436330
    //     0x436328: b.ne         0x436330
    // 0x43632c: r0 = pp[0x148]
    //     0x43632c: ldr          r0, [PP, #0x148]
    //     0x436330: ldur         r4, [fp, #-8]
    //     0x436334: ldur         r3, [fp, #-0x10]
    // 0x436338: StoreField: r4->field_b = r0
    //     0x436338: stur         r0, [r4, #0xb]
    //     0x43633c: ldurb        r16, [r4, #-1]
    //     0x436340: ldurb        r17, [r0, #-1]
    //     0x436344: and          BARRIER, r17, BARRIER, lsr #2
    //     0x436348: tst          BARRIER, HEAP, lsr #32
    // 0x43634c: b.eq 0x436354
    //     0x43634c: b.eq         0x436354
    // 0x436350: r0 = call 0x61e0ac
    //     0x436350: bl           0x61e0ac
    // 0x436354: r0 = LoadClassIdInstr(r3)
    //     0x436354: ldur         r0, [r3, #-1]
    //     0x436358: ubfx         r0, r0, #0xc, #0x14
    // 0x43635c: r1 = r3
    //     0x43635c: mov          r1, r3
    // 0x436360: r2 = pp[0xa77]
    //     0x436360: add          r2, PP, #0xf, lsl #12
    //     0x436364: ldr          r2, [r2, #0xa68]
    //     0x436368: sub          lr, r0, #1, lsl #12
    //     0x43636c: ldr          lr, [r21, lr, lsl #3]
    // 0x436370: r0 = [R]()
    //     0x436370: blr          lr
    //     0x436374: cmp          r0, r22
    // 0x436378: b.ne 0x436384
    //     0x436378: b.ne         0x436384
    // 0x43637c: r5 = pp[0x148]
    //     0x43637c: ldr          r5, [PP, #0x148]
    // 0x436380: b 0x436388
    //     0x436380: b            0x436388
    // 0x436384: r5 = r0
    //     0x436384: mov          r5, r0
    //     0x436388: ldur         r4, [fp, #-8]
    //     0x43638c: ldur         r3, [fp, #-0x10]
    // 0x436390: r0 = r5
    //     0x436390: mov          r0, r5
    //     0x436394: stur         r5, [fp, #-0x18]
    // 0x436398: r2 = NULL
    //     0x436398: mov          r2, NULL
    // 0x43639c: r1 = NULL
    //     0x43639c: mov          r1, NULL
    //     0x4363a0: mov          r4, #0x3c
    // 0x4363a4: branchIfSmi(r0, 0x4363b0)
    //     0x4363a4: tbz          r0, #0, 0x4363b0
    // 0x4363a8: r4 = LoadClassIdInstr(r0)
    //     0x4363a8: ldur         r4, [r0, #-1]
    //     0x4363ac: ubfx         r4, r4, #0xc, #0x14
    //     0x4363b0: sub          r4, r4, #0x5e
    //     0x4363b4: cmp          r4, #1
    // 0x4363b8: b.ls 0x4363cc
    //     0x4363b8: b.ls         0x4363cc
    // 0x4363bc: r8 = pp[0xae0]
    //     0x4363bc: ldr          r8, [PP, #0xae0]
    // 0x4363c0: r3 = pp[0x435]
    //     0x4363c0: add          r3, PP, #0x15, lsl #12
    //     0x4363c4: ldr          r3, [r3, #0x420]
    // 0x4363c8: r0 = call 0x278d08
    //     0x4363c8: bl           0x278d08
    //     0x4363cc: ldur         r0, [fp, #-0x18]
    //     0x4363d0: ldur         r3, [fp, #-8]
    // 0x4363d4: StoreField: r3->field_13 = r0
    //     0x4363d4: stur         r0, [r3, #0x13]
    //     0x4363d8: ldurb        r16, [r3, #-1]
    //     0x4363dc: ldurb        r17, [r0, #-1]
    //     0x4363e0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4363e4: tst          BARRIER, HEAP, lsr #32
    // 0x4363e8: b.eq 0x4363f0
    //     0x4363e8: b.eq         0x4363f0
    // 0x4363ec: r0 = call 0x61e08c
    //     0x4363ec: bl           0x61e08c
    //     0x4363f0: ldur         r1, [fp, #-0x10]
    // 0x4363f4: r0 = LoadClassIdInstr(r1)
    //     0x4363f4: ldur         r0, [r1, #-1]
    //     0x4363f8: ubfx         r0, r0, #0xc, #0x14
    // 0x4363fc: r2 = pp[0x4c9]
    //     0x4363fc: add          r2, PP, #0x11, lsl #12
    //     0x436400: ldr          r2, [r2, #0x4b8]
    //     0x436404: sub          lr, r0, #1, lsl #12
    //     0x436408: ldr          lr, [r21, lr, lsl #3]
    // 0x43640c: r0 = [R]()
    //     0x43640c: blr          lr
    // 0x436410: r3 = r0
    //     0x436410: mov          r3, r0
    // 0x436414: r2 = NULL
    //     0x436414: mov          r2, NULL
    // 0x436418: r1 = NULL
    //     0x436418: mov          r1, NULL
    //     0x43641c: stur         r3, [fp, #-0x10]
    // 0x436420: branchIfSmi(r0, 0x436448)
    //     0x436420: tbz          r0, #0, 0x436448
    // 0x436424: r4 = LoadClassIdInstr(r0)
    //     0x436424: ldur         r4, [r0, #-1]
    //     0x436428: ubfx         r4, r4, #0xc, #0x14
    //     0x43642c: sub          r4, r4, #0x3c
    //     0x436430: cmp          r4, #1
    // 0x436434: b.ls 0x436448
    //     0x436434: b.ls         0x436448
    // 0x436438: r8 = pp[0x1170]
    //     0x436438: ldr          r8, [PP, #0x1170]
    // 0x43643c: r3 = pp[0x445]
    //     0x43643c: add          r3, PP, #0x15, lsl #12
    //     0x436440: ldr          r3, [r3, #0x430]
    // 0x436444: r0 = call 0x62aa34
    //     0x436444: bl           0x62aa34
    //     0x436448: ldur         r0, [fp, #-0x10]
    //     0x43644c: sbfx         r1, r0, #1, #0x1f
    // 0x436450: branchIfSmi(r0, 0x436458)
    //     0x436450: tbz          r0, #0, 0x436458
    // 0x436454: LoadField: r1 = r0->field_7
    //     0x436454: ldur         r1, [r0, #7]
    // 0x436458: r0 = dart_core_DateTime::_validateMilliseconds()
    //     0x436458: bl           0x3adab8
    //     0x43645c: mov          BARRIER, #0x3e8
    //     0x436460: mul          r2, r0, BARRIER
    //     0x436464: stur         r2, [fp, #-0x20]
    // 0x436468: r0 = call 0x3adaac
    //     0x436468: bl           0x3adaac
    // 0x43646c: r1 = r0
    //     0x43646c: mov          r1, r0
    //     0x436470: ldur         r2, [fp, #-0x20]
    //     0x436474: add          r3, NULL, #0x30
    //     0x436478: stur         r0, [fp, #-0x10]
    // 0x43647c: r0 = dart_core_DateTime::ctor__withValue()
    //     0x43647c: bl           0x3acfd0
    //     0x436480: ldur         r1, [fp, #-0x10]
    // 0x436484: r0 = dart_core_DateTime::toLocal()
    //     0x436484: bl           0x3acf4c
    //     0x436488: str          r0, [SP]
    // 0x43648c: r0 = dart_core_DateTime::toString()
    //     0x43648c: bl           0x48f214
    //     0x436490: mov          BARRIER, #0x20
    //     0x436494: str          BARRIER, [SP]
    // 0x436498: r1 = r0
    //     0x436498: mov          r1, r0
    //     0x43649c: mov          r2, #0xa
    // 0x4364a0: r4 = pp[0x280]
    //     0x4364a0: ldr          r4, [PP, #0x280]
    // 0x4364a4: r0 = dart_core__StringBase::substring()
    //     0x4364a4: bl           0x281608
    //     0x4364a8: ldur         r1, [fp, #-8]
    // 0x4364ac: StoreField: r1->field_f = r0
    //     0x4364ac: stur         r0, [r1, #0xf]
    //     0x4364b0: ldurb        r16, [r1, #-1]
    //     0x4364b4: ldurb        r17, [r0, #-1]
    //     0x4364b8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4364bc: tst          BARRIER, HEAP, lsr #32
    // 0x4364c0: b.eq 0x4364c8
    //     0x4364c0: b.eq         0x4364c8
    // 0x4364c4: r0 = call 0x61e04c
    //     0x4364c4: bl           0x61e04c
    // 0x4364c8: r0 = NULL
    //     0x4364c8: mov          r0, NULL
    // 0x4364cc: SP = fp
    //     0x4364cc: mov          SP, fp
    // 0x4364d0: LeaveFrame
    //     0x4364d0: ldp          fp, lr, [SP], #0x10
    // 0x4364d4: ret
    //     0x4364d4: ret          
    // 0x4364d8: r0 = call 0x61fa28
    //     0x4364d8: bl           0x61fa28
    // 0x4364dc: b 0x43623c
    //     0x4364dc: b            0x43623c
  }

  ctor_fromJson() {
    // ** addr: 0x436a6c, size: 0x288
    // 0x436a6c: EnterFrame
    //     0x436a6c: stp          fp, lr, [SP, #-0x10]!
    //     0x436a70: mov          fp, SP
    // 0x436a74: AllocStack(0x20)
    //     0x436a74: sub          SP, SP, #0x20
    // 0x436a78: r0 = pp[0x40]
    //     0x436a78: ldr          r0, [PP, #0x40]
    // 0x436a7c: r4 = r1
    //     0x436a7c: mov          r4, r1
    // 0x436a80: r3 = r2
    //     0x436a80: mov          r3, r2
    //     0x436a84: stur         r1, [fp, #-8]
    //     0x436a88: stur         r2, [fp, #-0x10]
    // 0x436a8c: CheckStackOverflow
    //     0x436a8c: ldr          BARRIER, [THR, #0x38]
    //     0x436a90: cmp          SP, BARRIER
    //     0x436a94: b.ls         0x436cec
    // 0x436a98: StoreField: r4->field_7 = r0
    //     0x436a98: stur         r0, [r4, #7]
    // 0x436a9c: StoreField: r4->field_b = r0
    //     0x436a9c: stur         r0, [r4, #0xb]
    // 0x436aa0: StoreField: r4->field_f = r0
    //     0x436aa0: stur         r0, [r4, #0xf]
    // 0x436aa4: r0 = LoadClassIdInstr(r3)
    //     0x436aa4: ldur         r0, [r3, #-1]
    //     0x436aa8: ubfx         r0, r0, #0xc, #0x14
    // 0x436aac: r1 = r3
    //     0x436aac: mov          r1, r3
    // 0x436ab0: r2 = pp[0x73b]
    //     0x436ab0: add          r2, PP, #0xb, lsl #12
    //     0x436ab4: ldr          r2, [r2, #0x730]
    //     0x436ab8: sub          lr, r0, #1, lsl #12
    //     0x436abc: ldr          lr, [r21, lr, lsl #3]
    // 0x436ac0: r0 = [R]()
    //     0x436ac0: blr          lr
    //     0x436ac4: cmp          r0, r22
    // 0x436ac8: b.ne 0x436ad4
    //     0x436ac8: b.ne         0x436ad4
    // 0x436acc: r5 = pp[0x148]
    //     0x436acc: ldr          r5, [PP, #0x148]
    // 0x436ad0: b 0x436ad8
    //     0x436ad0: b            0x436ad8
    // 0x436ad4: r5 = r0
    //     0x436ad4: mov          r5, r0
    //     0x436ad8: ldur         r4, [fp, #-8]
    //     0x436adc: ldur         r3, [fp, #-0x10]
    // 0x436ae0: r0 = r5
    //     0x436ae0: mov          r0, r5
    //     0x436ae4: stur         r5, [fp, #-0x18]
    // 0x436ae8: r2 = NULL
    //     0x436ae8: mov          r2, NULL
    // 0x436aec: r1 = NULL
    //     0x436aec: mov          r1, NULL
    //     0x436af0: mov          r4, #0x3c
    // 0x436af4: branchIfSmi(r0, 0x436b00)
    //     0x436af4: tbz          r0, #0, 0x436b00
    // 0x436af8: r4 = LoadClassIdInstr(r0)
    //     0x436af8: ldur         r4, [r0, #-1]
    //     0x436afc: ubfx         r4, r4, #0xc, #0x14
    //     0x436b00: sub          r4, r4, #0x5e
    //     0x436b04: cmp          r4, #1
    // 0x436b08: b.ls 0x436b1c
    //     0x436b08: b.ls         0x436b1c
    // 0x436b0c: r8 = pp[0x2f8]
    //     0x436b0c: ldr          r8, [PP, #0x2f8]
    // 0x436b10: r3 = pp[0x9a1]
    //     0x436b10: add          r3, PP, #0x11, lsl #12
    //     0x436b14: ldr          r3, [r3, #0x990]
    // 0x436b18: r0 = call 0x62a0c0
    //     0x436b18: bl           0x62a0c0
    //     0x436b1c: ldur         r0, [fp, #-0x18]
    //     0x436b20: ldur         r3, [fp, #-8]
    // 0x436b24: StoreField: r3->field_b = r0
    //     0x436b24: stur         r0, [r3, #0xb]
    //     0x436b28: ldurb        r16, [r3, #-1]
    //     0x436b2c: ldurb        r17, [r0, #-1]
    //     0x436b30: and          BARRIER, r17, BARRIER, lsr #2
    //     0x436b34: tst          BARRIER, HEAP, lsr #32
    // 0x436b38: b.eq 0x436b40
    //     0x436b38: b.eq         0x436b40
    // 0x436b3c: r0 = call 0x61e08c
    //     0x436b3c: bl           0x61e08c
    //     0x436b40: ldur         r4, [fp, #-0x10]
    // 0x436b44: r0 = LoadClassIdInstr(r4)
    //     0x436b44: ldur         r0, [r4, #-1]
    //     0x436b48: ubfx         r0, r0, #0xc, #0x14
    // 0x436b4c: r1 = r4
    //     0x436b4c: mov          r1, r4
    // 0x436b50: r2 = pp[0x723]
    //     0x436b50: add          r2, PP, #0xb, lsl #12
    //     0x436b54: ldr          r2, [r2, #0x718]
    //     0x436b58: sub          lr, r0, #1, lsl #12
    //     0x436b5c: ldr          lr, [r21, lr, lsl #3]
    // 0x436b60: r0 = [R]()
    //     0x436b60: blr          lr
    //     0x436b64: cmp          r0, r22
    // 0x436b68: b.ne 0x436b74
    //     0x436b68: b.ne         0x436b74
    // 0x436b6c: r5 = pp[0x148]
    //     0x436b6c: ldr          r5, [PP, #0x148]
    // 0x436b70: b 0x436b78
    //     0x436b70: b            0x436b78
    // 0x436b74: r5 = r0
    //     0x436b74: mov          r5, r0
    //     0x436b78: ldur         r3, [fp, #-8]
    //     0x436b7c: ldur         r4, [fp, #-0x10]
    // 0x436b80: r0 = r5
    //     0x436b80: mov          r0, r5
    //     0x436b84: stur         r5, [fp, #-0x18]
    // 0x436b88: r2 = NULL
    //     0x436b88: mov          r2, NULL
    // 0x436b8c: r1 = NULL
    //     0x436b8c: mov          r1, NULL
    //     0x436b90: mov          r4, #0x3c
    // 0x436b94: branchIfSmi(r0, 0x436ba0)
    //     0x436b94: tbz          r0, #0, 0x436ba0
    // 0x436b98: r4 = LoadClassIdInstr(r0)
    //     0x436b98: ldur         r4, [r0, #-1]
    //     0x436b9c: ubfx         r4, r4, #0xc, #0x14
    //     0x436ba0: sub          r4, r4, #0x5e
    //     0x436ba4: cmp          r4, #1
    // 0x436ba8: b.ls 0x436bbc
    //     0x436ba8: b.ls         0x436bbc
    // 0x436bac: r8 = pp[0x2f8]
    //     0x436bac: ldr          r8, [PP, #0x2f8]
    // 0x436bb0: r3 = pp[0x9b1]
    //     0x436bb0: add          r3, PP, #0x11, lsl #12
    //     0x436bb4: ldr          r3, [r3, #0x9a0]
    // 0x436bb8: r0 = call 0x62a0c0
    //     0x436bb8: bl           0x62a0c0
    //     0x436bbc: ldur         r0, [fp, #-0x18]
    //     0x436bc0: ldur         r3, [fp, #-8]
    // 0x436bc4: StoreField: r3->field_7 = r0
    //     0x436bc4: stur         r0, [r3, #7]
    //     0x436bc8: ldurb        r16, [r3, #-1]
    //     0x436bcc: ldurb        r17, [r0, #-1]
    //     0x436bd0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x436bd4: tst          BARRIER, HEAP, lsr #32
    // 0x436bd8: b.eq 0x436be0
    //     0x436bd8: b.eq         0x436be0
    // 0x436bdc: r0 = call 0x61e08c
    //     0x436bdc: bl           0x61e08c
    //     0x436be0: ldur         r4, [fp, #-0x10]
    // 0x436be4: r0 = LoadClassIdInstr(r4)
    //     0x436be4: ldur         r0, [r4, #-1]
    //     0x436be8: ubfx         r0, r0, #0xc, #0x14
    // 0x436bec: r1 = r4
    //     0x436bec: mov          r1, r4
    // 0x436bf0: r2 = pp[0x753]
    //     0x436bf0: add          r2, PP, #0xb, lsl #12
    //     0x436bf4: ldr          r2, [r2, #0x748]
    //     0x436bf8: sub          lr, r0, #1, lsl #12
    //     0x436bfc: ldr          lr, [r21, lr, lsl #3]
    // 0x436c00: r0 = [R]()
    //     0x436c00: blr          lr
    //     0x436c04: cmp          r0, r22
    // 0x436c08: b.ne 0x436c10
    //     0x436c08: b.ne         0x436c10
    // 0x436c0c: r0 = pp[0x148]
    //     0x436c0c: ldr          r0, [PP, #0x148]
    //     0x436c10: ldur         r3, [fp, #-0x10]
    // 0x436c14: r2 = NULL
    //     0x436c14: mov          r2, NULL
    // 0x436c18: r1 = NULL
    //     0x436c18: mov          r1, NULL
    //     0x436c1c: mov          r4, #0x3c
    // 0x436c20: branchIfSmi(r0, 0x436c2c)
    //     0x436c20: tbz          r0, #0, 0x436c2c
    // 0x436c24: r4 = LoadClassIdInstr(r0)
    //     0x436c24: ldur         r4, [r0, #-1]
    //     0x436c28: ubfx         r4, r4, #0xc, #0x14
    //     0x436c2c: sub          r4, r4, #0x5e
    //     0x436c30: cmp          r4, #1
    // 0x436c34: b.ls 0x436c48
    //     0x436c34: b.ls         0x436c48
    // 0x436c38: r8 = pp[0x2f8]
    //     0x436c38: ldr          r8, [PP, #0x2f8]
    // 0x436c3c: r3 = pp[0x9c1]
    //     0x436c3c: add          r3, PP, #0x11, lsl #12
    //     0x436c40: ldr          r3, [r3, #0x9b0]
    // 0x436c44: r0 = call 0x62a0c0
    //     0x436c44: bl           0x62a0c0
    //     0x436c48: ldur         r1, [fp, #-0x10]
    // 0x436c4c: r0 = LoadClassIdInstr(r1)
    //     0x436c4c: ldur         r0, [r1, #-1]
    //     0x436c50: ubfx         r0, r0, #0xc, #0x14
    // 0x436c54: r2 = pp[0x9d1]
    //     0x436c54: add          r2, PP, #0x11, lsl #12
    //     0x436c58: ldr          r2, [r2, #0x9c0]
    //     0x436c5c: sub          lr, r0, #1, lsl #12
    //     0x436c60: ldr          lr, [r21, lr, lsl #3]
    // 0x436c64: r0 = [R]()
    //     0x436c64: blr          lr
    //     0x436c68: cmp          r0, r22
    // 0x436c6c: b.ne 0x436c78
    //     0x436c6c: b.ne         0x436c78
    // 0x436c70: r1 = NULL
    //     0x436c70: mov          r1, NULL
    // 0x436c74: b 0x436ca8
    //     0x436c74: b            0x436ca8
    //     0x436c78: mov          r1, #0x3c
    // 0x436c7c: branchIfSmi(r0, 0x436c88)
    //     0x436c7c: tbz          r0, #0, 0x436c88
    // 0x436c80: r1 = LoadClassIdInstr(r0)
    //     0x436c80: ldur         r1, [r0, #-1]
    //     0x436c84: ubfx         r1, r1, #0xc, #0x14
    //     0x436c88: str          r0, [SP]
    // 0x436c8c: r0 = r1
    //     0x436c8c: mov          r0, r1
    // 0x436c90: r4 = pp[0x3a8]
    //     0x436c90: ldr          r4, [PP, #0x3a8]
    //     0x436c94: mov          r17, #0x3e07
    //     0x436c98: add          lr, r0, r17
    //     0x436c9c: ldr          lr, [r21, lr, lsl #3]
    // 0x436ca0: r0 = [R]()
    //     0x436ca0: blr          lr
    // 0x436ca4: r1 = r0
    //     0x436ca4: mov          r1, r0
    //     0x436ca8: cmp          r1, r22
    // 0x436cac: b.ne 0x436cb8
    //     0x436cac: b.ne         0x436cb8
    // 0x436cb0: r0 = pp[0x148]
    //     0x436cb0: ldr          r0, [PP, #0x148]
    // 0x436cb4: b 0x436cbc
    //     0x436cb4: b            0x436cbc
    // 0x436cb8: r0 = r1
    //     0x436cb8: mov          r0, r1
    //     0x436cbc: ldur         r1, [fp, #-8]
    // 0x436cc0: StoreField: r1->field_f = r0
    //     0x436cc0: stur         r0, [r1, #0xf]
    //     0x436cc4: ldurb        r16, [r1, #-1]
    //     0x436cc8: ldurb        r17, [r0, #-1]
    //     0x436ccc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x436cd0: tst          BARRIER, HEAP, lsr #32
    // 0x436cd4: b.eq 0x436cdc
    //     0x436cd4: b.eq         0x436cdc
    // 0x436cd8: r0 = call 0x61e04c
    //     0x436cd8: bl           0x61e04c
    // 0x436cdc: r0 = NULL
    //     0x436cdc: mov          r0, NULL
    // 0x436ce0: SP = fp
    //     0x436ce0: mov          SP, fp
    // 0x436ce4: LeaveFrame
    //     0x436ce4: ldp          fp, lr, [SP], #0x10
    // 0x436ce8: ret
    //     0x436ce8: ret          
    // 0x436cec: r0 = call 0x61fa28
    //     0x436cec: bl           0x61fa28
    // 0x436cf0: b 0x436a98
    //     0x436cf0: b            0x436a98
  }

  ctor_fromJson() {
    // ** addr: 0x44462c, size: 0x2dc
    // 0x44462c: EnterFrame
    //     0x44462c: stp          fp, lr, [SP, #-0x10]!
    //     0x444630: mov          fp, SP
    // 0x444634: AllocStack(0x30)
    //     0x444634: sub          SP, SP, #0x30
    // 0x444638: r4 = r1
    //     0x444638: mov          r4, r1
    // 0x44463c: r3 = r2
    //     0x44463c: mov          r3, r2
    //     0x444640: stur         r1, [fp, #-8]
    //     0x444644: stur         r2, [fp, #-0x10]
    // 0x444648: CheckStackOverflow
    //     0x444648: ldr          BARRIER, [THR, #0x38]
    //     0x44464c: cmp          SP, BARRIER
    //     0x444650: b.ls         0x444900
    // 0x444654: r0 = LoadClassIdInstr(r3)
    //     0x444654: ldur         r0, [r3, #-1]
    //     0x444658: ubfx         r0, r0, #0xc, #0x14
    // 0x44465c: r1 = r3
    //     0x44465c: mov          r1, r3
    // 0x444660: r2 = pp[0x8cb]
    //     0x444660: add          r2, PP, #0xb, lsl #12
    //     0x444664: ldr          r2, [r2, #0x8c0]
    //     0x444668: sub          lr, r0, #1, lsl #12
    //     0x44466c: ldr          lr, [r21, lr, lsl #3]
    // 0x444670: r0 = [R]()
    //     0x444670: blr          lr
    // 0x444674: r3 = r0
    //     0x444674: mov          r3, r0
    // 0x444678: r2 = NULL
    //     0x444678: mov          r2, NULL
    // 0x44467c: r1 = NULL
    //     0x44467c: mov          r1, NULL
    //     0x444680: stur         r3, [fp, #-0x18]
    // 0x444684: branchIfSmi(r0, 0x4446ac)
    //     0x444684: tbz          r0, #0, 0x4446ac
    // 0x444688: r4 = LoadClassIdInstr(r0)
    //     0x444688: ldur         r4, [r0, #-1]
    //     0x44468c: ubfx         r4, r4, #0xc, #0x14
    //     0x444690: sub          r4, r4, #0x3c
    //     0x444694: cmp          r4, #1
    // 0x444698: b.ls 0x4446ac
    //     0x444698: b.ls         0x4446ac
    // 0x44469c: r8 = pp[0xaf8]
    //     0x44469c: ldr          r8, [PP, #0xaf8]
    // 0x4446a0: r3 = pp[0xcb9]
    //     0x4446a0: add          r3, PP, #0x11, lsl #12
    //     0x4446a4: ldr          r3, [r3, #0xca8]
    // 0x4446a8: r0 = call 0x62a9f8
    //     0x4446a8: bl           0x62a9f8
    //     0x4446ac: ldur         r0, [fp, #-0x18]
    //     0x4446b0: ldur         r3, [fp, #-8]
    // 0x4446b4: StoreField: r3->field_7 = r0
    //     0x4446b4: stur         r0, [r3, #7]
    // 0x4446b8: branchIfSmi(r0, 0x4446d4)
    //     0x4446b8: tbz          r0, #0, 0x4446d4
    //     0x4446bc: ldurb        r16, [r3, #-1]
    //     0x4446c0: ldurb        r17, [r0, #-1]
    //     0x4446c4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4446c8: tst          BARRIER, HEAP, lsr #32
    // 0x4446cc: b.eq 0x4446d4
    //     0x4446cc: b.eq         0x4446d4
    // 0x4446d0: r0 = call 0x61e08c
    //     0x4446d0: bl           0x61e08c
    //     0x4446d4: ldur         r4, [fp, #-0x10]
    // 0x4446d8: r0 = LoadClassIdInstr(r4)
    //     0x4446d8: ldur         r0, [r4, #-1]
    //     0x4446dc: ubfx         r0, r0, #0xc, #0x14
    // 0x4446e0: r1 = r4
    //     0x4446e0: mov          r1, r4
    // 0x4446e4: r2 = pp[0x92b]
    //     0x4446e4: add          r2, PP, #0xb, lsl #12
    //     0x4446e8: ldr          r2, [r2, #0x920]
    //     0x4446ec: sub          lr, r0, #1, lsl #12
    //     0x4446f0: ldr          lr, [r21, lr, lsl #3]
    // 0x4446f4: r0 = [R]()
    //     0x4446f4: blr          lr
    // 0x4446f8: r3 = r0
    //     0x4446f8: mov          r3, r0
    // 0x4446fc: r2 = NULL
    //     0x4446fc: mov          r2, NULL
    // 0x444700: r1 = NULL
    //     0x444700: mov          r1, NULL
    //     0x444704: stur         r3, [fp, #-0x18]
    // 0x444708: branchIfSmi(r0, 0x444730)
    //     0x444708: tbz          r0, #0, 0x444730
    // 0x44470c: r4 = LoadClassIdInstr(r0)
    //     0x44470c: ldur         r4, [r0, #-1]
    //     0x444710: ubfx         r4, r4, #0xc, #0x14
    //     0x444714: sub          r4, r4, #0x3c
    //     0x444718: cmp          r4, #1
    // 0x44471c: b.ls 0x444730
    //     0x44471c: b.ls         0x444730
    // 0x444720: r8 = pp[0xaf8]
    //     0x444720: ldr          r8, [PP, #0xaf8]
    // 0x444724: r3 = pp[0xcc9]
    //     0x444724: add          r3, PP, #0x11, lsl #12
    //     0x444728: ldr          r3, [r3, #0xcb8]
    // 0x44472c: r0 = call 0x62a9f8
    //     0x44472c: bl           0x62a9f8
    //     0x444730: ldur         r0, [fp, #-0x18]
    //     0x444734: ldur         r3, [fp, #-8]
    // 0x444738: StoreField: r3->field_b = r0
    //     0x444738: stur         r0, [r3, #0xb]
    // 0x44473c: branchIfSmi(r0, 0x444758)
    //     0x44473c: tbz          r0, #0, 0x444758
    //     0x444740: ldurb        r16, [r3, #-1]
    //     0x444744: ldurb        r17, [r0, #-1]
    //     0x444748: and          BARRIER, r17, BARRIER, lsr #2
    //     0x44474c: tst          BARRIER, HEAP, lsr #32
    // 0x444750: b.eq 0x444758
    //     0x444750: b.eq         0x444758
    // 0x444754: r0 = call 0x61e08c
    //     0x444754: bl           0x61e08c
    //     0x444758: ldur         r4, [fp, #-0x10]
    // 0x44475c: r0 = LoadClassIdInstr(r4)
    //     0x44475c: ldur         r0, [r4, #-1]
    //     0x444760: ubfx         r0, r0, #0xc, #0x14
    // 0x444764: r1 = r4
    //     0x444764: mov          r1, r4
    // 0x444768: r2 = pp[0xcd9]
    //     0x444768: add          r2, PP, #0x11, lsl #12
    //     0x44476c: ldr          r2, [r2, #0xcc8]
    //     0x444770: sub          lr, r0, #1, lsl #12
    //     0x444774: ldr          lr, [r21, lr, lsl #3]
    // 0x444778: r0 = [R]()
    //     0x444778: blr          lr
    //     0x44477c: cmp          r0, r22
    // 0x444780: b.ne 0x444798
    //     0x444780: b.ne         0x444798
    // 0x444784: r1 = NULL
    //     0x444784: mov          r1, NULL
    //     0x444788: mov          r2, #0
    // 0x44478c: r0 = dart_core__GrowableList::factory_ctor()
    //     0x44478c: bl           0x277268
    // 0x444790: r5 = r0
    //     0x444790: mov          r5, r0
    // 0x444794: b 0x44479c
    //     0x444794: b            0x44479c
    // 0x444798: r5 = r0
    //     0x444798: mov          r5, r0
    //     0x44479c: ldur         r3, [fp, #-8]
    //     0x4447a0: ldur         r4, [fp, #-0x10]
    // 0x4447a4: r0 = r5
    //     0x4447a4: mov          r0, r5
    //     0x4447a8: stur         r5, [fp, #-0x18]
    // 0x4447ac: r2 = NULL
    //     0x4447ac: mov          r2, NULL
    // 0x4447b0: r1 = NULL
    //     0x4447b0: mov          r1, NULL
    // 0x4447b4: r8 = pp[0xfa8]
    //     0x4447b4: ldr          r8, [PP, #0xfa8]
    // 0x4447b8: r3 = pp[0xce1]
    //     0x4447b8: add          r3, PP, #0x11, lsl #12
    //     0x4447bc: ldr          r3, [r3, #0xcd0]
    // 0x4447c0: r0 = call 0x285664
    //     0x4447c0: bl           0x285664
    // 0x4447c4: r1 = pp[0xcf1]
    //     0x4447c4: add          r1, PP, #0x11, lsl #12
    //     0x4447c8: ldr          r1, [r1, #0xce0]
    // 0x4447cc: r2 = NULL
    //     0x4447cc: mov          r2, NULL
    // 0x4447d0: r0 = call 0x61ec54
    //     0x4447d0: bl           0x61ec54
    // 0x4447d4: r1 = r0
    //     0x4447d4: mov          r1, r0
    //     0x4447d8: ldur         r0, [fp, #-0x18]
    // 0x4447dc: r2 = LoadClassIdInstr(r0)
    //     0x4447dc: ldur         r2, [r0, #-1]
    //     0x4447e0: ubfx         r2, r2, #0xc, #0x14
    // 0x4447e4: BARRIER = pp[0xcf9]
    //     0x4447e4: add          BARRIER, PP, #0x11, lsl #12
    //     0x4447e8: ldr          BARRIER, [BARRIER, #0xce8]
    //     0x4447ec: stp          r0, BARRIER, [SP, #8]
    //     0x4447f0: str          r1, [SP]
    // 0x4447f4: r0 = r2
    //     0x4447f4: mov          r0, r2
    // 0x4447f8: r4 = pp[0x58]
    //     0x4447f8: ldr          r4, [PP, #0x58]
    //     0x4447fc: mov          r17, #0x86d9
    //     0x444800: add          lr, r0, r17
    //     0x444804: ldr          lr, [r21, lr, lsl #3]
    // 0x444808: r0 = [R]()
    //     0x444808: blr          lr
    // 0x44480c: r1 = LoadClassIdInstr(r0)
    //     0x44480c: ldur         r1, [r0, #-1]
    //     0x444810: ubfx         r1, r1, #0xc, #0x14
    // 0x444814: BARRIER = r0
    //     0x444814: mov          BARRIER, r0
    // 0x444818: r0 = r1
    //     0x444818: mov          r0, r1
    // 0x44481c: r1 = BARRIER
    //     0x44481c: mov          r1, BARRIER
    // 0x444820: r4 = pp[0x4c0]
    //     0x444820: ldr          r4, [PP, #0x4c0]
    //     0x444824: add          lr, r0, #0x35e
    //     0x444828: ldr          lr, [r21, lr, lsl #3]
    // 0x44482c: r0 = [R]()
    //     0x44482c: blr          lr
    //     0x444830: ldur         r3, [fp, #-8]
    // 0x444834: StoreField: r3->field_f = r0
    //     0x444834: stur         r0, [r3, #0xf]
    //     0x444838: ldurb        r16, [r3, #-1]
    //     0x44483c: ldurb        r17, [r0, #-1]
    //     0x444840: and          BARRIER, r17, BARRIER, lsr #2
    //     0x444844: tst          BARRIER, HEAP, lsr #32
    // 0x444848: b.eq 0x444850
    //     0x444848: b.eq         0x444850
    // 0x44484c: r0 = call 0x61e08c
    //     0x44484c: bl           0x61e08c
    //     0x444850: ldur         r1, [fp, #-0x10]
    // 0x444854: r0 = LoadClassIdInstr(r1)
    //     0x444854: ldur         r0, [r1, #-1]
    //     0x444858: ubfx         r0, r0, #0xc, #0x14
    // 0x44485c: r2 = pp[0xd01]
    //     0x44485c: add          r2, PP, #0x11, lsl #12
    //     0x444860: ldr          r2, [r2, #0xcf0]
    //     0x444864: sub          lr, r0, #1, lsl #12
    //     0x444868: ldr          lr, [r21, lr, lsl #3]
    // 0x44486c: r0 = [R]()
    //     0x44486c: blr          lr
    //     0x444870: cmp          r0, r22
    // 0x444874: b.ne 0x444890
    //     0x444874: b.ne         0x444890
    // 0x444878: BARRIER = pp[0xbf0]
    //     0x444878: ldr          BARRIER, [PP, #0xbf0]
    //     0x44487c: ldr          lr, [THR, #0x90]
    //     0x444880: stp          lr, BARRIER, [SP]
    // 0x444884: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x444884: bl           0x27c0c8
    // 0x444888: r4 = r0
    //     0x444888: mov          r4, r0
    // 0x44488c: b 0x444894
    //     0x44488c: b            0x444894
    // 0x444890: r4 = r0
    //     0x444890: mov          r4, r0
    //     0x444894: ldur         r3, [fp, #-8]
    // 0x444898: r0 = r4
    //     0x444898: mov          r0, r4
    //     0x44489c: stur         r4, [fp, #-0x10]
    // 0x4448a0: r2 = NULL
    //     0x4448a0: mov          r2, NULL
    // 0x4448a4: r1 = NULL
    //     0x4448a4: mov          r1, NULL
    // 0x4448a8: r8 = pp[0x3cd0]
    //     0x4448a8: ldr          r8, [PP, #0x3cd0]
    // 0x4448ac: r3 = pp[0xd09]
    //     0x4448ac: add          r3, PP, #0x11, lsl #12
    //     0x4448b0: ldr          r3, [r3, #0xcf8]
    // 0x4448b4: r0 = call 0x2b15f0
    //     0x4448b4: bl           0x2b15f0
    // 0x4448b8: r0 = call 0x444af4
    //     0x4448b8: bl           0x444af4
    // 0x4448bc: r1 = r0
    //     0x4448bc: mov          r1, r0
    //     0x4448c0: ldur         r2, [fp, #-0x10]
    //     0x4448c4: stur         r0, [fp, #-0x10]
    // 0x4448c8: r0 = soul_flutter_international$model$game_fruit_model_GameFruitWinnerBetResultInfo::ctor_fromJson()
    //     0x4448c8: bl           0x444908
    //     0x4448cc: ldur         r0, [fp, #-0x10]
    //     0x4448d0: ldur         r1, [fp, #-8]
    // 0x4448d4: StoreField: r1->field_13 = r0
    //     0x4448d4: stur         r0, [r1, #0x13]
    //     0x4448d8: ldurb        r16, [r1, #-1]
    //     0x4448dc: ldurb        r17, [r0, #-1]
    //     0x4448e0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4448e4: tst          BARRIER, HEAP, lsr #32
    // 0x4448e8: b.eq 0x4448f0
    //     0x4448e8: b.eq         0x4448f0
    // 0x4448ec: r0 = call 0x61e04c
    //     0x4448ec: bl           0x61e04c
    // 0x4448f0: r0 = NULL
    //     0x4448f0: mov          r0, NULL
    // 0x4448f4: SP = fp
    //     0x4448f4: mov          SP, fp
    // 0x4448f8: LeaveFrame
    //     0x4448f8: ldp          fp, lr, [SP], #0x10
    // 0x4448fc: ret
    //     0x4448fc: ret          
    // 0x444900: r0 = call 0x61fa28
    //     0x444900: bl           0x61fa28
    // 0x444904: b 0x444654
    //     0x444904: b            0x444654
  }

  _anon_closure() {
    // ** addr: 0x444b00, size: 0x60
    // 0x444b00: EnterFrame
    //     0x444b00: stp          fp, lr, [SP, #-0x10]!
    //     0x444b04: mov          fp, SP
    // 0x444b08: AllocStack(8)
    //     0x444b08: sub          SP, SP, #8
    // 0x444b0c: CheckStackOverflow
    //     0x444b0c: ldr          BARRIER, [THR, #0x38]
    //     0x444b10: cmp          SP, BARRIER
    //     0x444b14: b.ls         0x444b58
    //     0x444b18: ldr          r0, [fp, #0x10]
    // 0x444b1c: r2 = NULL
    //     0x444b1c: mov          r2, NULL
    // 0x444b20: r1 = NULL
    //     0x444b20: mov          r1, NULL
    // 0x444b24: r8 = pp[0x3cd0]
    //     0x444b24: ldr          r8, [PP, #0x3cd0]
    // 0x444b28: r3 = pp[0xd19]
    //     0x444b28: add          r3, PP, #0x11, lsl #12
    //     0x444b2c: ldr          r3, [r3, #0xd08]
    // 0x444b30: r0 = call 0x2b15f0
    //     0x444b30: bl           0x2b15f0
    // 0x444b34: r0 = call 0x444d70
    //     0x444b34: bl           0x444d70
    // 0x444b38: r1 = r0
    //     0x444b38: mov          r1, r0
    //     0x444b3c: ldr          r2, [fp, #0x10]
    //     0x444b40: stur         r0, [fp, #-8]
    // 0x444b44: r0 = soul_flutter_international$model$game_fruit_model_GameFruitWinerListInfo::ctor_fromJson()
    //     0x444b44: bl           0x444b60
    //     0x444b48: ldur         r0, [fp, #-8]
    // 0x444b4c: SP = fp
    //     0x444b4c: mov          SP, fp
    // 0x444b50: LeaveFrame
    //     0x444b50: ldp          fp, lr, [SP], #0x10
    // 0x444b54: ret
    //     0x444b54: ret          
    // 0x444b58: r0 = call 0x61fa28
    //     0x444b58: bl           0x61fa28
    // 0x444b5c: b 0x444b18
    //     0x444b5c: b            0x444b18
  }

  ctor_fromJson() {
    // ** addr: 0x444908, size: 0x1ec
    // 0x444908: EnterFrame
    //     0x444908: stp          fp, lr, [SP, #-0x10]!
    //     0x44490c: mov          fp, SP
    // 0x444910: AllocStack(0x18)
    //     0x444910: sub          SP, SP, #0x18
    // 0x444914: r4 = r1
    //     0x444914: mov          r4, r1
    // 0x444918: r3 = r2
    //     0x444918: mov          r3, r2
    //     0x44491c: stur         r1, [fp, #-8]
    //     0x444920: stur         r2, [fp, #-0x10]
    // 0x444924: CheckStackOverflow
    //     0x444924: ldr          BARRIER, [THR, #0x38]
    //     0x444928: cmp          SP, BARRIER
    //     0x44492c: b.ls         0x444aec
    // 0x444930: r0 = LoadClassIdInstr(r3)
    //     0x444930: ldur         r0, [r3, #-1]
    //     0x444934: ubfx         r0, r0, #0xc, #0x14
    // 0x444938: r1 = r3
    //     0x444938: mov          r1, r3
    // 0x44493c: r2 = pp[0x9d1]
    //     0x44493c: add          r2, PP, #0x11, lsl #12
    //     0x444940: ldr          r2, [r2, #0x9c0]
    //     0x444944: sub          lr, r0, #1, lsl #12
    //     0x444948: ldr          lr, [r21, lr, lsl #3]
    // 0x44494c: r0 = [R]()
    //     0x44494c: blr          lr
    //     0x444950: cmp          r0, r22
    // 0x444954: b.ne 0x444960
    //     0x444954: b.ne         0x444960
    // 0x444958: r0 = NULL
    //     0x444958: mov          r0, NULL
    // 0x44495c: b 0x44498c
    //     0x44495c: b            0x44498c
    //     0x444960: mov          r1, #0x3c
    // 0x444964: branchIfSmi(r0, 0x444970)
    //     0x444964: tbz          r0, #0, 0x444970
    // 0x444968: r1 = LoadClassIdInstr(r0)
    //     0x444968: ldur         r1, [r0, #-1]
    //     0x44496c: ubfx         r1, r1, #0xc, #0x14
    //     0x444970: str          r0, [SP]
    // 0x444974: r0 = r1
    //     0x444974: mov          r0, r1
    // 0x444978: r4 = pp[0x3a8]
    //     0x444978: ldr          r4, [PP, #0x3a8]
    //     0x44497c: mov          r17, #0x3e07
    //     0x444980: add          lr, r0, r17
    //     0x444984: ldr          lr, [r21, lr, lsl #3]
    // 0x444988: r0 = [R]()
    //     0x444988: blr          lr
    //     0x44498c: cmp          r0, r22
    // 0x444990: b.ne 0x444998
    //     0x444990: b.ne         0x444998
    // 0x444994: r0 = pp[0x148]
    //     0x444994: ldr          r0, [PP, #0x148]
    //     0x444998: ldur         r4, [fp, #-8]
    //     0x44499c: ldur         r3, [fp, #-0x10]
    // 0x4449a0: StoreField: r4->field_7 = r0
    //     0x4449a0: stur         r0, [r4, #7]
    //     0x4449a4: ldurb        r16, [r4, #-1]
    //     0x4449a8: ldurb        r17, [r0, #-1]
    //     0x4449ac: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4449b0: tst          BARRIER, HEAP, lsr #32
    // 0x4449b4: b.eq 0x4449bc
    //     0x4449b4: b.eq         0x4449bc
    // 0x4449b8: r0 = call 0x61e0ac
    //     0x4449b8: bl           0x61e0ac
    // 0x4449bc: r0 = LoadClassIdInstr(r3)
    //     0x4449bc: ldur         r0, [r3, #-1]
    //     0x4449c0: ubfx         r0, r0, #0xc, #0x14
    // 0x4449c4: r1 = r3
    //     0x4449c4: mov          r1, r3
    // 0x4449c8: r2 = pp[0x99b]
    //     0x4449c8: add          r2, PP, #0xb, lsl #12
    //     0x4449cc: ldr          r2, [r2, #0x990]
    //     0x4449d0: sub          lr, r0, #1, lsl #12
    //     0x4449d4: ldr          lr, [r21, lr, lsl #3]
    // 0x4449d8: r0 = [R]()
    //     0x4449d8: blr          lr
    //     0x4449dc: cmp          r0, r22
    // 0x4449e0: b.ne 0x4449ec
    //     0x4449e0: b.ne         0x4449ec
    // 0x4449e4: r0 = NULL
    //     0x4449e4: mov          r0, NULL
    // 0x4449e8: b 0x444a18
    //     0x4449e8: b            0x444a18
    //     0x4449ec: mov          r1, #0x3c
    // 0x4449f0: branchIfSmi(r0, 0x4449fc)
    //     0x4449f0: tbz          r0, #0, 0x4449fc
    // 0x4449f4: r1 = LoadClassIdInstr(r0)
    //     0x4449f4: ldur         r1, [r0, #-1]
    //     0x4449f8: ubfx         r1, r1, #0xc, #0x14
    //     0x4449fc: str          r0, [SP]
    // 0x444a00: r0 = r1
    //     0x444a00: mov          r0, r1
    // 0x444a04: r4 = pp[0x3a8]
    //     0x444a04: ldr          r4, [PP, #0x3a8]
    //     0x444a08: mov          r17, #0x3e07
    //     0x444a0c: add          lr, r0, r17
    //     0x444a10: ldr          lr, [r21, lr, lsl #3]
    // 0x444a14: r0 = [R]()
    //     0x444a14: blr          lr
    //     0x444a18: cmp          r0, r22
    // 0x444a1c: b.ne 0x444a24
    //     0x444a1c: b.ne         0x444a24
    // 0x444a20: r0 = pp[0x148]
    //     0x444a20: ldr          r0, [PP, #0x148]
    //     0x444a24: ldur         r3, [fp, #-8]
    //     0x444a28: ldur         r1, [fp, #-0x10]
    // 0x444a2c: StoreField: r3->field_f = r0
    //     0x444a2c: stur         r0, [r3, #0xf]
    //     0x444a30: ldurb        r16, [r3, #-1]
    //     0x444a34: ldurb        r17, [r0, #-1]
    //     0x444a38: and          BARRIER, r17, BARRIER, lsr #2
    //     0x444a3c: tst          BARRIER, HEAP, lsr #32
    // 0x444a40: b.eq 0x444a48
    //     0x444a40: b.eq         0x444a48
    // 0x444a44: r0 = call 0x61e08c
    //     0x444a44: bl           0x61e08c
    // 0x444a48: r0 = LoadClassIdInstr(r1)
    //     0x444a48: ldur         r0, [r1, #-1]
    //     0x444a4c: ubfx         r0, r0, #0xc, #0x14
    // 0x444a50: r2 = pp[0xa5f]
    //     0x444a50: add          r2, PP, #0xf, lsl #12
    //     0x444a54: ldr          r2, [r2, #0xa50]
    //     0x444a58: sub          lr, r0, #1, lsl #12
    //     0x444a5c: ldr          lr, [r21, lr, lsl #3]
    // 0x444a60: r0 = [R]()
    //     0x444a60: blr          lr
    //     0x444a64: cmp          r0, r22
    // 0x444a68: b.ne 0x444a74
    //     0x444a68: b.ne         0x444a74
    // 0x444a6c: r4 = pp[0x148]
    //     0x444a6c: ldr          r4, [PP, #0x148]
    // 0x444a70: b 0x444a78
    //     0x444a70: b            0x444a78
    // 0x444a74: r4 = r0
    //     0x444a74: mov          r4, r0
    //     0x444a78: ldur         r3, [fp, #-8]
    // 0x444a7c: r0 = r4
    //     0x444a7c: mov          r0, r4
    //     0x444a80: stur         r4, [fp, #-0x10]
    // 0x444a84: r2 = NULL
    //     0x444a84: mov          r2, NULL
    // 0x444a88: r1 = NULL
    //     0x444a88: mov          r1, NULL
    //     0x444a8c: mov          r4, #0x3c
    // 0x444a90: branchIfSmi(r0, 0x444a9c)
    //     0x444a90: tbz          r0, #0, 0x444a9c
    // 0x444a94: r4 = LoadClassIdInstr(r0)
    //     0x444a94: ldur         r4, [r0, #-1]
    //     0x444a98: ubfx         r4, r4, #0xc, #0x14
    //     0x444a9c: sub          r4, r4, #0x5e
    //     0x444aa0: cmp          r4, #1
    // 0x444aa4: b.ls 0x444ab8
    //     0x444aa4: b.ls         0x444ab8
    // 0x444aa8: r8 = pp[0xae0]
    //     0x444aa8: ldr          r8, [PP, #0xae0]
    // 0x444aac: r3 = pp[0xd49]
    //     0x444aac: add          r3, PP, #0x11, lsl #12
    //     0x444ab0: ldr          r3, [r3, #0xd38]
    // 0x444ab4: r0 = call 0x278d08
    //     0x444ab4: bl           0x278d08
    //     0x444ab8: ldur         r0, [fp, #-0x10]
    //     0x444abc: ldur         r1, [fp, #-8]
    // 0x444ac0: StoreField: r1->field_b = r0
    //     0x444ac0: stur         r0, [r1, #0xb]
    //     0x444ac4: ldurb        r16, [r1, #-1]
    //     0x444ac8: ldurb        r17, [r0, #-1]
    //     0x444acc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x444ad0: tst          BARRIER, HEAP, lsr #32
    // 0x444ad4: b.eq 0x444adc
    //     0x444ad4: b.eq         0x444adc
    // 0x444ad8: r0 = call 0x61e04c
    //     0x444ad8: bl           0x61e04c
    // 0x444adc: r0 = NULL
    //     0x444adc: mov          r0, NULL
    // 0x444ae0: SP = fp
    //     0x444ae0: mov          SP, fp
    // 0x444ae4: LeaveFrame
    //     0x444ae4: ldp          fp, lr, [SP], #0x10
    // 0x444ae8: ret
    //     0x444ae8: ret          
    // 0x444aec: r0 = call 0x61fa28
    //     0x444aec: bl           0x61fa28
    // 0x444af0: b 0x444930
    //     0x444af0: b            0x444930
  }

  ctor_fromJson() {
    // ** addr: 0x444b60, size: 0x210
    // 0x444b60: EnterFrame
    //     0x444b60: stp          fp, lr, [SP, #-0x10]!
    //     0x444b64: mov          fp, SP
    // 0x444b68: AllocStack(0x20)
    //     0x444b68: sub          SP, SP, #0x20
    // 0x444b6c: r4 = r1
    //     0x444b6c: mov          r4, r1
    // 0x444b70: r3 = r2
    //     0x444b70: mov          r3, r2
    //     0x444b74: stur         r1, [fp, #-8]
    //     0x444b78: stur         r2, [fp, #-0x10]
    // 0x444b7c: CheckStackOverflow
    //     0x444b7c: ldr          BARRIER, [THR, #0x38]
    //     0x444b80: cmp          SP, BARRIER
    //     0x444b84: b.ls         0x444d68
    // 0x444b88: r0 = LoadClassIdInstr(r3)
    //     0x444b88: ldur         r0, [r3, #-1]
    //     0x444b8c: ubfx         r0, r0, #0xc, #0x14
    // 0x444b90: r1 = r3
    //     0x444b90: mov          r1, r3
    // 0x444b94: r2 = pp[0x73b]
    //     0x444b94: add          r2, PP, #0xb, lsl #12
    //     0x444b98: ldr          r2, [r2, #0x730]
    //     0x444b9c: sub          lr, r0, #1, lsl #12
    //     0x444ba0: ldr          lr, [r21, lr, lsl #3]
    // 0x444ba4: r0 = [R]()
    //     0x444ba4: blr          lr
    //     0x444ba8: cmp          r0, r22
    // 0x444bac: b.ne 0x444bb8
    //     0x444bac: b.ne         0x444bb8
    // 0x444bb0: r5 = pp[0x148]
    //     0x444bb0: ldr          r5, [PP, #0x148]
    // 0x444bb4: b 0x444bbc
    //     0x444bb4: b            0x444bbc
    // 0x444bb8: r5 = r0
    //     0x444bb8: mov          r5, r0
    //     0x444bbc: ldur         r4, [fp, #-8]
    //     0x444bc0: ldur         r3, [fp, #-0x10]
    // 0x444bc4: r0 = r5
    //     0x444bc4: mov          r0, r5
    //     0x444bc8: stur         r5, [fp, #-0x18]
    // 0x444bcc: r2 = NULL
    //     0x444bcc: mov          r2, NULL
    // 0x444bd0: r1 = NULL
    //     0x444bd0: mov          r1, NULL
    //     0x444bd4: mov          r4, #0x3c
    // 0x444bd8: branchIfSmi(r0, 0x444be4)
    //     0x444bd8: tbz          r0, #0, 0x444be4
    // 0x444bdc: r4 = LoadClassIdInstr(r0)
    //     0x444bdc: ldur         r4, [r0, #-1]
    //     0x444be0: ubfx         r4, r4, #0xc, #0x14
    //     0x444be4: sub          r4, r4, #0x5e
    //     0x444be8: cmp          r4, #1
    // 0x444bec: b.ls 0x444c00
    //     0x444bec: b.ls         0x444c00
    // 0x444bf0: r8 = pp[0xae0]
    //     0x444bf0: ldr          r8, [PP, #0xae0]
    // 0x444bf4: r3 = pp[0xd29]
    //     0x444bf4: add          r3, PP, #0x11, lsl #12
    //     0x444bf8: ldr          r3, [r3, #0xd18]
    // 0x444bfc: r0 = call 0x278d08
    //     0x444bfc: bl           0x278d08
    //     0x444c00: ldur         r0, [fp, #-0x18]
    //     0x444c04: ldur         r3, [fp, #-8]
    // 0x444c08: StoreField: r3->field_7 = r0
    //     0x444c08: stur         r0, [r3, #7]
    //     0x444c0c: ldurb        r16, [r3, #-1]
    //     0x444c10: ldurb        r17, [r0, #-1]
    //     0x444c14: and          BARRIER, r17, BARRIER, lsr #2
    //     0x444c18: tst          BARRIER, HEAP, lsr #32
    // 0x444c1c: b.eq 0x444c24
    //     0x444c1c: b.eq         0x444c24
    // 0x444c20: r0 = call 0x61e08c
    //     0x444c20: bl           0x61e08c
    //     0x444c24: ldur         r4, [fp, #-0x10]
    // 0x444c28: r0 = LoadClassIdInstr(r4)
    //     0x444c28: ldur         r0, [r4, #-1]
    //     0x444c2c: ubfx         r0, r0, #0xc, #0x14
    // 0x444c30: r1 = r4
    //     0x444c30: mov          r1, r4
    // 0x444c34: r2 = pp[0x723]
    //     0x444c34: add          r2, PP, #0xb, lsl #12
    //     0x444c38: ldr          r2, [r2, #0x718]
    //     0x444c3c: sub          lr, r0, #1, lsl #12
    //     0x444c40: ldr          lr, [r21, lr, lsl #3]
    // 0x444c44: r0 = [R]()
    //     0x444c44: blr          lr
    //     0x444c48: cmp          r0, r22
    // 0x444c4c: b.ne 0x444c58
    //     0x444c4c: b.ne         0x444c58
    // 0x444c50: r5 = pp[0x148]
    //     0x444c50: ldr          r5, [PP, #0x148]
    // 0x444c54: b 0x444c5c
    //     0x444c54: b            0x444c5c
    // 0x444c58: r5 = r0
    //     0x444c58: mov          r5, r0
    //     0x444c5c: ldur         r3, [fp, #-8]
    //     0x444c60: ldur         r4, [fp, #-0x10]
    // 0x444c64: r0 = r5
    //     0x444c64: mov          r0, r5
    //     0x444c68: stur         r5, [fp, #-0x18]
    // 0x444c6c: r2 = NULL
    //     0x444c6c: mov          r2, NULL
    // 0x444c70: r1 = NULL
    //     0x444c70: mov          r1, NULL
    //     0x444c74: mov          r4, #0x3c
    // 0x444c78: branchIfSmi(r0, 0x444c84)
    //     0x444c78: tbz          r0, #0, 0x444c84
    // 0x444c7c: r4 = LoadClassIdInstr(r0)
    //     0x444c7c: ldur         r4, [r0, #-1]
    //     0x444c80: ubfx         r4, r4, #0xc, #0x14
    //     0x444c84: sub          r4, r4, #0x5e
    //     0x444c88: cmp          r4, #1
    // 0x444c8c: b.ls 0x444ca0
    //     0x444c8c: b.ls         0x444ca0
    // 0x444c90: r8 = pp[0xae0]
    //     0x444c90: ldr          r8, [PP, #0xae0]
    // 0x444c94: r3 = pp[0xd39]
    //     0x444c94: add          r3, PP, #0x11, lsl #12
    //     0x444c98: ldr          r3, [r3, #0xd28]
    // 0x444c9c: r0 = call 0x278d08
    //     0x444c9c: bl           0x278d08
    //     0x444ca0: ldur         r0, [fp, #-0x18]
    //     0x444ca4: ldur         r3, [fp, #-8]
    // 0x444ca8: StoreField: r3->field_b = r0
    //     0x444ca8: stur         r0, [r3, #0xb]
    //     0x444cac: ldurb        r16, [r3, #-1]
    //     0x444cb0: ldurb        r17, [r0, #-1]
    //     0x444cb4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x444cb8: tst          BARRIER, HEAP, lsr #32
    // 0x444cbc: b.eq 0x444cc4
    //     0x444cbc: b.eq         0x444cc4
    // 0x444cc0: r0 = call 0x61e08c
    //     0x444cc0: bl           0x61e08c
    //     0x444cc4: ldur         r1, [fp, #-0x10]
    // 0x444cc8: r0 = LoadClassIdInstr(r1)
    //     0x444cc8: ldur         r0, [r1, #-1]
    //     0x444ccc: ubfx         r0, r0, #0xc, #0x14
    // 0x444cd0: r2 = pp[0x9d1]
    //     0x444cd0: add          r2, PP, #0x11, lsl #12
    //     0x444cd4: ldr          r2, [r2, #0x9c0]
    //     0x444cd8: sub          lr, r0, #1, lsl #12
    //     0x444cdc: ldr          lr, [r21, lr, lsl #3]
    // 0x444ce0: r0 = [R]()
    //     0x444ce0: blr          lr
    //     0x444ce4: cmp          r0, r22
    // 0x444ce8: b.ne 0x444cf4
    //     0x444ce8: b.ne         0x444cf4
    // 0x444cec: r1 = NULL
    //     0x444cec: mov          r1, NULL
    // 0x444cf0: b 0x444d24
    //     0x444cf0: b            0x444d24
    //     0x444cf4: mov          r1, #0x3c
    // 0x444cf8: branchIfSmi(r0, 0x444d04)
    //     0x444cf8: tbz          r0, #0, 0x444d04
    // 0x444cfc: r1 = LoadClassIdInstr(r0)
    //     0x444cfc: ldur         r1, [r0, #-1]
    //     0x444d00: ubfx         r1, r1, #0xc, #0x14
    //     0x444d04: str          r0, [SP]
    // 0x444d08: r0 = r1
    //     0x444d08: mov          r0, r1
    // 0x444d0c: r4 = pp[0x3a8]
    //     0x444d0c: ldr          r4, [PP, #0x3a8]
    //     0x444d10: mov          r17, #0x3e07
    //     0x444d14: add          lr, r0, r17
    //     0x444d18: ldr          lr, [r21, lr, lsl #3]
    // 0x444d1c: r0 = [R]()
    //     0x444d1c: blr          lr
    // 0x444d20: r1 = r0
    //     0x444d20: mov          r1, r0
    //     0x444d24: cmp          r1, r22
    // 0x444d28: b.ne 0x444d34
    //     0x444d28: b.ne         0x444d34
    // 0x444d2c: r0 = pp[0x148]
    //     0x444d2c: ldr          r0, [PP, #0x148]
    // 0x444d30: b 0x444d38
    //     0x444d30: b            0x444d38
    // 0x444d34: r0 = r1
    //     0x444d34: mov          r0, r1
    //     0x444d38: ldur         r1, [fp, #-8]
    // 0x444d3c: StoreField: r1->field_f = r0
    //     0x444d3c: stur         r0, [r1, #0xf]
    //     0x444d40: ldurb        r16, [r1, #-1]
    //     0x444d44: ldurb        r17, [r0, #-1]
    //     0x444d48: and          BARRIER, r17, BARRIER, lsr #2
    //     0x444d4c: tst          BARRIER, HEAP, lsr #32
    // 0x444d50: b.eq 0x444d58
    //     0x444d50: b.eq         0x444d58
    // 0x444d54: r0 = call 0x61e04c
    //     0x444d54: bl           0x61e04c
    // 0x444d58: r0 = NULL
    //     0x444d58: mov          r0, NULL
    // 0x444d5c: SP = fp
    //     0x444d5c: mov          SP, fp
    // 0x444d60: LeaveFrame
    //     0x444d60: ldp          fp, lr, [SP], #0x10
    // 0x444d64: ret
    //     0x444d64: ret          
    // 0x444d68: r0 = call 0x61fa28
    //     0x444d68: bl           0x61fa28
    // 0x444d6c: b 0x444b88
    //     0x444d6c: b            0x444b88
  }

  _enumToString() {
    // ** addr: 0x4aebfc, size: 0x64
    // 0x4aebfc: EnterFrame
    //     0x4aebfc: stp          fp, lr, [SP, #-0x10]!
    //     0x4aec00: mov          fp, SP
    // 0x4aec04: AllocStack(0x10)
    //     0x4aec04: sub          SP, SP, #0x10
    // 0x4aec08: r0 = r1
    //     0x4aec08: mov          r0, r1
    //     0x4aec0c: stur         r1, [fp, #-8]
    // 0x4aec10: CheckStackOverflow
    //     0x4aec10: ldr          BARRIER, [THR, #0x38]
    //     0x4aec14: cmp          SP, BARRIER
    //     0x4aec18: b.ls         0x4aec58
    // 0x4aec1c: r1 = NULL
    //     0x4aec1c: mov          r1, NULL
    //     0x4aec20: mov          r2, #4
    // 0x4aec24: r0 = call 0x61f920
    //     0x4aec24: bl           0x61f920
    // 0x4aec28: BARRIER = pp[0xe09]
    //     0x4aec28: add          BARRIER, PP, #0x11, lsl #12
    //     0x4aec2c: ldr          BARRIER, [BARRIER, #0xdf8]
    // 0x4aec30: StoreField: r0->field_f = r16
    //     0x4aec30: stur         r16, [r0, #0xf]
    //     0x4aec34: ldur         r1, [fp, #-8]
    // 0x4aec38: LoadField: r2 = r1->field_f
    //     0x4aec38: ldur         r2, [r1, #0xf]
    //     0x4aec3c: add          r2, r2, HEAP, lsl #32
    // 0x4aec40: StoreField: r0->field_13 = r2
    //     0x4aec40: stur         r2, [r0, #0x13]
    //     0x4aec44: str          r0, [SP]
    // 0x4aec48: r0 = dart_core__StringBase::_interpolate()
    //     0x4aec48: bl           0x2ad854
    // 0x4aec4c: SP = fp
    //     0x4aec4c: mov          SP, fp
    // 0x4aec50: LeaveFrame
    //     0x4aec50: ldp          fp, lr, [SP], #0x10
    // 0x4aec54: ret
    //     0x4aec54: ret          
    // 0x4aec58: r0 = call 0x61fa28
    //     0x4aec58: bl           0x61fa28
    // 0x4aec5c: b 0x4aec1c
    //     0x4aec5c: b            0x4aec1c
  }

  ctor_fromJson() {
    // ** addr: 0x4c2fa0, size: 0x79c
    // 0x4c2fa0: EnterFrame
    //     0x4c2fa0: stp          fp, lr, [SP, #-0x10]!
    //     0x4c2fa4: mov          fp, SP
    // 0x4c2fa8: AllocStack(0x30)
    //     0x4c2fa8: sub          SP, SP, #0x30
    // 0x4c2fac: r0 = pp[0x40]
    //     0x4c2fac: ldr          r0, [PP, #0x40]
    // 0x4c2fb0: r4 = r1
    //     0x4c2fb0: mov          r4, r1
    // 0x4c2fb4: r3 = r2
    //     0x4c2fb4: mov          r3, r2
    //     0x4c2fb8: stur         r1, [fp, #-8]
    //     0x4c2fbc: stur         r2, [fp, #-0x10]
    // 0x4c2fc0: CheckStackOverflow
    //     0x4c2fc0: ldr          BARRIER, [THR, #0x38]
    //     0x4c2fc4: cmp          SP, BARRIER
    //     0x4c2fc8: b.ls         0x4c3730
    // 0x4c2fcc: StoreField: r4->field_7 = r0
    //     0x4c2fcc: stur         r0, [r4, #7]
    // 0x4c2fd0: StoreField: r4->field_b = r0
    //     0x4c2fd0: stur         r0, [r4, #0xb]
    // 0x4c2fd4: StoreField: r4->field_f = r0
    //     0x4c2fd4: stur         r0, [r4, #0xf]
    // 0x4c2fd8: StoreField: r4->field_13 = r0
    //     0x4c2fd8: stur         r0, [r4, #0x13]
    // 0x4c2fdc: ArrayStore: r4[0] = r0  ; List_8
    //     0x4c2fdc: stur         r0, [r4, #0x17]
    // 0x4c2fe0: StoreField: r4->field_1b = r0
    //     0x4c2fe0: stur         r0, [r4, #0x1b]
    // 0x4c2fe4: StoreField: r4->field_1f = r0
    //     0x4c2fe4: stur         r0, [r4, #0x1f]
    // 0x4c2fe8: StoreField: r4->field_23 = r0
    //     0x4c2fe8: stur         r0, [r4, #0x23]
    // 0x4c2fec: StoreField: r4->field_27 = r0
    //     0x4c2fec: stur         r0, [r4, #0x27]
    // 0x4c2ff0: StoreField: r4->field_2b = r0
    //     0x4c2ff0: stur         r0, [r4, #0x2b]
    // 0x4c2ff4: r0 = LoadClassIdInstr(r3)
    //     0x4c2ff4: ldur         r0, [r3, #-1]
    //     0x4c2ff8: ubfx         r0, r0, #0xc, #0x14
    // 0x4c2ffc: r1 = r3
    //     0x4c2ffc: mov          r1, r3
    // 0x4c3000: r2 = pp[0x9e0]
    //     0x4c3000: add          r2, PP, #8, lsl #12
    //     0x4c3004: ldr          r2, [r2, #0x9d8]
    //     0x4c3008: sub          lr, r0, #1, lsl #12
    //     0x4c300c: ldr          lr, [r21, lr, lsl #3]
    // 0x4c3010: r0 = [R]()
    //     0x4c3010: blr          lr
    //     0x4c3014: cmp          r0, r22
    // 0x4c3018: b.ne 0x4c3024
    //     0x4c3018: b.ne         0x4c3024
    //     0x4c301c: mov          r3, #0
    // 0x4c3020: b 0x4c3028
    //     0x4c3020: b            0x4c3028
    // 0x4c3024: r3 = r0
    //     0x4c3024: mov          r3, r0
    // 0x4c3028: r0 = r3
    //     0x4c3028: mov          r0, r3
    //     0x4c302c: stur         r3, [fp, #-0x18]
    // 0x4c3030: r2 = NULL
    //     0x4c3030: mov          r2, NULL
    // 0x4c3034: r1 = NULL
    //     0x4c3034: mov          r1, NULL
    // 0x4c3038: branchIfSmi(r0, 0x4c3060)
    //     0x4c3038: tbz          r0, #0, 0x4c3060
    // 0x4c303c: r4 = LoadClassIdInstr(r0)
    //     0x4c303c: ldur         r4, [r0, #-1]
    //     0x4c3040: ubfx         r4, r4, #0xc, #0x14
    //     0x4c3044: sub          r4, r4, #0x3c
    //     0x4c3048: cmp          r4, #1
    // 0x4c304c: b.ls 0x4c3060
    //     0x4c304c: b.ls         0x4c3060
    // 0x4c3050: r8 = pp[0x1170]
    //     0x4c3050: ldr          r8, [PP, #0x1170]
    // 0x4c3054: r3 = pp[0x86b]
    //     0x4c3054: add          r3, PP, #0xb, lsl #12
    //     0x4c3058: ldr          r3, [r3, #0x860]
    // 0x4c305c: r0 = call 0x62aa34
    //     0x4c305c: bl           0x62aa34
    //     0x4c3060: ldur         r0, [fp, #-0x18]
    //     0x4c3064: sbfx         r1, r0, #1, #0x1f
    // 0x4c3068: branchIfSmi(r0, 0x4c3070)
    //     0x4c3068: tbz          r0, #0, 0x4c3070
    // 0x4c306c: LoadField: r1 = r0->field_7
    //     0x4c306c: ldur         r1, [r0, #7]
    //     0x4c3070: tbnz         r1, #0x3f, 0x4c307c
    //     0x4c3074: cmp          r1, #3
    // 0x4c3078: b.le 0x4c3084
    //     0x4c3078: b.le         0x4c3084
    //     0x4c307c: mov          r5, #0
    // 0x4c3080: b 0x4c3088
    //     0x4c3080: b            0x4c3088
    // 0x4c3084: r5 = r1
    //     0x4c3084: mov          r5, r1
    //     0x4c3088: ldur         r4, [fp, #-8]
    //     0x4c308c: ldur         r3, [fp, #-0x10]
    // 0x4c3090: r2 = pp[0x87b]
    //     0x4c3090: add          r2, PP, #0xb, lsl #12
    //     0x4c3094: ldr          r2, [r2, #0x870]
    // 0x4c3098: r1 = r5
    //     0x4c3098: mov          r1, r5
    //     0x4c309c: mov          r0, #4
    //     0x4c30a0: cmp          r1, r0
    // 0x4c30a4: b.hs 0x4c3738
    //     0x4c30a4: b.hs         0x4c3738
    //     0x4c30a8: add          BARRIER, r2, r5, lsl #2
    // 0x4c30ac: LoadField: r0 = BARRIER->field_f
    //     0x4c30ac: ldur         r0, [BARRIER, #0xf]
    //     0x4c30b0: add          r0, r0, HEAP, lsl #32
    // 0x4c30b4: StoreField: r4->field_7 = r0
    //     0x4c30b4: stur         r0, [r4, #7]
    //     0x4c30b8: ldurb        r16, [r4, #-1]
    //     0x4c30bc: ldurb        r17, [r0, #-1]
    //     0x4c30c0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c30c4: tst          BARRIER, HEAP, lsr #32
    // 0x4c30c8: b.eq 0x4c30d0
    //     0x4c30c8: b.eq         0x4c30d0
    // 0x4c30cc: r0 = call 0x61e0ac
    //     0x4c30cc: bl           0x61e0ac
    // 0x4c30d0: r0 = LoadClassIdInstr(r3)
    //     0x4c30d0: ldur         r0, [r3, #-1]
    //     0x4c30d4: ubfx         r0, r0, #0xc, #0x14
    // 0x4c30d8: r1 = r3
    //     0x4c30d8: mov          r1, r3
    // 0x4c30dc: r2 = pp[0x883]
    //     0x4c30dc: add          r2, PP, #0xb, lsl #12
    //     0x4c30e0: ldr          r2, [r2, #0x878]
    //     0x4c30e4: sub          lr, r0, #1, lsl #12
    //     0x4c30e8: ldr          lr, [r21, lr, lsl #3]
    // 0x4c30ec: r0 = [R]()
    //     0x4c30ec: blr          lr
    //     0x4c30f0: cmp          r0, r22
    // 0x4c30f4: b.ne 0x4c3100
    //     0x4c30f4: b.ne         0x4c3100
    //     0x4c30f8: mov          r5, #0
    // 0x4c30fc: b 0x4c3104
    //     0x4c30fc: b            0x4c3104
    // 0x4c3100: r5 = r0
    //     0x4c3100: mov          r5, r0
    //     0x4c3104: ldur         r4, [fp, #-8]
    //     0x4c3108: ldur         r3, [fp, #-0x10]
    // 0x4c310c: r0 = r5
    //     0x4c310c: mov          r0, r5
    //     0x4c3110: stur         r5, [fp, #-0x18]
    // 0x4c3114: r2 = NULL
    //     0x4c3114: mov          r2, NULL
    // 0x4c3118: r1 = NULL
    //     0x4c3118: mov          r1, NULL
    // 0x4c311c: branchIfSmi(r0, 0x4c3144)
    //     0x4c311c: tbz          r0, #0, 0x4c3144
    // 0x4c3120: r4 = LoadClassIdInstr(r0)
    //     0x4c3120: ldur         r4, [r0, #-1]
    //     0x4c3124: ubfx         r4, r4, #0xc, #0x14
    //     0x4c3128: sub          r4, r4, #0x3c
    //     0x4c312c: cmp          r4, #1
    // 0x4c3130: b.ls 0x4c3144
    //     0x4c3130: b.ls         0x4c3144
    // 0x4c3134: r8 = pp[0x1170]
    //     0x4c3134: ldr          r8, [PP, #0x1170]
    // 0x4c3138: r3 = pp[0x88b]
    //     0x4c3138: add          r3, PP, #0xb, lsl #12
    //     0x4c313c: ldr          r3, [r3, #0x880]
    // 0x4c3140: r0 = call 0x62aa34
    //     0x4c3140: bl           0x62aa34
    //     0x4c3144: ldur         r0, [fp, #-0x18]
    //     0x4c3148: ldur         r3, [fp, #-8]
    // 0x4c314c: StoreField: r3->field_b = r0
    //     0x4c314c: stur         r0, [r3, #0xb]
    // 0x4c3150: branchIfSmi(r0, 0x4c316c)
    //     0x4c3150: tbz          r0, #0, 0x4c316c
    //     0x4c3154: ldurb        r16, [r3, #-1]
    //     0x4c3158: ldurb        r17, [r0, #-1]
    //     0x4c315c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3160: tst          BARRIER, HEAP, lsr #32
    // 0x4c3164: b.eq 0x4c316c
    //     0x4c3164: b.eq         0x4c316c
    // 0x4c3168: r0 = call 0x61e08c
    //     0x4c3168: bl           0x61e08c
    //     0x4c316c: ldur         r4, [fp, #-0x10]
    // 0x4c3170: r0 = LoadClassIdInstr(r4)
    //     0x4c3170: ldur         r0, [r4, #-1]
    //     0x4c3174: ubfx         r0, r0, #0xc, #0x14
    // 0x4c3178: r1 = r4
    //     0x4c3178: mov          r1, r4
    // 0x4c317c: r2 = pp[0x89b]
    //     0x4c317c: add          r2, PP, #0xb, lsl #12
    //     0x4c3180: ldr          r2, [r2, #0x890]
    //     0x4c3184: sub          lr, r0, #1, lsl #12
    //     0x4c3188: ldr          lr, [r21, lr, lsl #3]
    // 0x4c318c: r0 = [R]()
    //     0x4c318c: blr          lr
    //     0x4c3190: cmp          r0, r22
    // 0x4c3194: b.ne 0x4c31a0
    //     0x4c3194: b.ne         0x4c31a0
    //     0x4c3198: orr          r5, xzr, #0xfffffffffffffffe
    // 0x4c319c: b 0x4c31a4
    //     0x4c319c: b            0x4c31a4
    // 0x4c31a0: r5 = r0
    //     0x4c31a0: mov          r5, r0
    //     0x4c31a4: ldur         r3, [fp, #-8]
    //     0x4c31a8: ldur         r4, [fp, #-0x10]
    // 0x4c31ac: r0 = r5
    //     0x4c31ac: mov          r0, r5
    //     0x4c31b0: stur         r5, [fp, #-0x18]
    // 0x4c31b4: r2 = NULL
    //     0x4c31b4: mov          r2, NULL
    // 0x4c31b8: r1 = NULL
    //     0x4c31b8: mov          r1, NULL
    // 0x4c31bc: branchIfSmi(r0, 0x4c31e4)
    //     0x4c31bc: tbz          r0, #0, 0x4c31e4
    // 0x4c31c0: r4 = LoadClassIdInstr(r0)
    //     0x4c31c0: ldur         r4, [r0, #-1]
    //     0x4c31c4: ubfx         r4, r4, #0xc, #0x14
    //     0x4c31c8: sub          r4, r4, #0x3c
    //     0x4c31cc: cmp          r4, #1
    // 0x4c31d0: b.ls 0x4c31e4
    //     0x4c31d0: b.ls         0x4c31e4
    // 0x4c31d4: r8 = pp[0x1170]
    //     0x4c31d4: ldr          r8, [PP, #0x1170]
    // 0x4c31d8: r3 = pp[0x8a3]
    //     0x4c31d8: add          r3, PP, #0xb, lsl #12
    //     0x4c31dc: ldr          r3, [r3, #0x898]
    // 0x4c31e0: r0 = call 0x62aa34
    //     0x4c31e0: bl           0x62aa34
    //     0x4c31e4: ldur         r0, [fp, #-0x18]
    //     0x4c31e8: ldur         r3, [fp, #-8]
    // 0x4c31ec: StoreField: r3->field_f = r0
    //     0x4c31ec: stur         r0, [r3, #0xf]
    // 0x4c31f0: branchIfSmi(r0, 0x4c320c)
    //     0x4c31f0: tbz          r0, #0, 0x4c320c
    //     0x4c31f4: ldurb        r16, [r3, #-1]
    //     0x4c31f8: ldurb        r17, [r0, #-1]
    //     0x4c31fc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3200: tst          BARRIER, HEAP, lsr #32
    // 0x4c3204: b.eq 0x4c320c
    //     0x4c3204: b.eq         0x4c320c
    // 0x4c3208: r0 = call 0x61e08c
    //     0x4c3208: bl           0x61e08c
    //     0x4c320c: ldur         r4, [fp, #-0x10]
    // 0x4c3210: r0 = LoadClassIdInstr(r4)
    //     0x4c3210: ldur         r0, [r4, #-1]
    //     0x4c3214: ubfx         r0, r0, #0xc, #0x14
    // 0x4c3218: r1 = r4
    //     0x4c3218: mov          r1, r4
    // 0x4c321c: r2 = pp[0x8b3]
    //     0x4c321c: add          r2, PP, #0xb, lsl #12
    //     0x4c3220: ldr          r2, [r2, #0x8a8]
    //     0x4c3224: sub          lr, r0, #1, lsl #12
    //     0x4c3228: ldr          lr, [r21, lr, lsl #3]
    // 0x4c322c: r0 = [R]()
    //     0x4c322c: blr          lr
    //     0x4c3230: cmp          r0, r22
    // 0x4c3234: b.ne 0x4c3240
    //     0x4c3234: b.ne         0x4c3240
    //     0x4c3238: mov          r5, #0
    // 0x4c323c: b 0x4c3244
    //     0x4c323c: b            0x4c3244
    // 0x4c3240: r5 = r0
    //     0x4c3240: mov          r5, r0
    //     0x4c3244: ldur         r3, [fp, #-8]
    //     0x4c3248: ldur         r4, [fp, #-0x10]
    // 0x4c324c: r0 = r5
    //     0x4c324c: mov          r0, r5
    //     0x4c3250: stur         r5, [fp, #-0x18]
    // 0x4c3254: r2 = NULL
    //     0x4c3254: mov          r2, NULL
    // 0x4c3258: r1 = NULL
    //     0x4c3258: mov          r1, NULL
    // 0x4c325c: branchIfSmi(r0, 0x4c3284)
    //     0x4c325c: tbz          r0, #0, 0x4c3284
    // 0x4c3260: r4 = LoadClassIdInstr(r0)
    //     0x4c3260: ldur         r4, [r0, #-1]
    //     0x4c3264: ubfx         r4, r4, #0xc, #0x14
    //     0x4c3268: sub          r4, r4, #0x3c
    //     0x4c326c: cmp          r4, #1
    // 0x4c3270: b.ls 0x4c3284
    //     0x4c3270: b.ls         0x4c3284
    // 0x4c3274: r8 = pp[0x1170]
    //     0x4c3274: ldr          r8, [PP, #0x1170]
    // 0x4c3278: r3 = pp[0x8bb]
    //     0x4c3278: add          r3, PP, #0xb, lsl #12
    //     0x4c327c: ldr          r3, [r3, #0x8b0]
    // 0x4c3280: r0 = call 0x62aa34
    //     0x4c3280: bl           0x62aa34
    //     0x4c3284: ldur         r0, [fp, #-0x18]
    //     0x4c3288: ldur         r3, [fp, #-8]
    // 0x4c328c: StoreField: r3->field_13 = r0
    //     0x4c328c: stur         r0, [r3, #0x13]
    // 0x4c3290: branchIfSmi(r0, 0x4c32ac)
    //     0x4c3290: tbz          r0, #0, 0x4c32ac
    //     0x4c3294: ldurb        r16, [r3, #-1]
    //     0x4c3298: ldurb        r17, [r0, #-1]
    //     0x4c329c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c32a0: tst          BARRIER, HEAP, lsr #32
    // 0x4c32a4: b.eq 0x4c32ac
    //     0x4c32a4: b.eq         0x4c32ac
    // 0x4c32a8: r0 = call 0x61e08c
    //     0x4c32a8: bl           0x61e08c
    //     0x4c32ac: ldur         r4, [fp, #-0x10]
    // 0x4c32b0: r0 = LoadClassIdInstr(r4)
    //     0x4c32b0: ldur         r0, [r4, #-1]
    //     0x4c32b4: ubfx         r0, r0, #0xc, #0x14
    // 0x4c32b8: r1 = r4
    //     0x4c32b8: mov          r1, r4
    // 0x4c32bc: r2 = pp[0x8cb]
    //     0x4c32bc: add          r2, PP, #0xb, lsl #12
    //     0x4c32c0: ldr          r2, [r2, #0x8c0]
    //     0x4c32c4: sub          lr, r0, #1, lsl #12
    //     0x4c32c8: ldr          lr, [r21, lr, lsl #3]
    // 0x4c32cc: r0 = [R]()
    //     0x4c32cc: blr          lr
    //     0x4c32d0: cmp          r0, r22
    // 0x4c32d4: b.ne 0x4c32e0
    //     0x4c32d4: b.ne         0x4c32e0
    //     0x4c32d8: mov          r5, #0
    // 0x4c32dc: b 0x4c32e4
    //     0x4c32dc: b            0x4c32e4
    // 0x4c32e0: r5 = r0
    //     0x4c32e0: mov          r5, r0
    //     0x4c32e4: ldur         r3, [fp, #-8]
    //     0x4c32e8: ldur         r4, [fp, #-0x10]
    // 0x4c32ec: r0 = r5
    //     0x4c32ec: mov          r0, r5
    //     0x4c32f0: stur         r5, [fp, #-0x18]
    // 0x4c32f4: r2 = NULL
    //     0x4c32f4: mov          r2, NULL
    // 0x4c32f8: r1 = NULL
    //     0x4c32f8: mov          r1, NULL
    // 0x4c32fc: branchIfSmi(r0, 0x4c3324)
    //     0x4c32fc: tbz          r0, #0, 0x4c3324
    // 0x4c3300: r4 = LoadClassIdInstr(r0)
    //     0x4c3300: ldur         r4, [r0, #-1]
    //     0x4c3304: ubfx         r4, r4, #0xc, #0x14
    //     0x4c3308: sub          r4, r4, #0x3c
    //     0x4c330c: cmp          r4, #1
    // 0x4c3310: b.ls 0x4c3324
    //     0x4c3310: b.ls         0x4c3324
    // 0x4c3314: r8 = pp[0x1170]
    //     0x4c3314: ldr          r8, [PP, #0x1170]
    // 0x4c3318: r3 = pp[0x8d3]
    //     0x4c3318: add          r3, PP, #0xb, lsl #12
    //     0x4c331c: ldr          r3, [r3, #0x8c8]
    // 0x4c3320: r0 = call 0x62aa34
    //     0x4c3320: bl           0x62aa34
    //     0x4c3324: ldur         r0, [fp, #-0x18]
    //     0x4c3328: ldur         r3, [fp, #-8]
    // 0x4c332c: ArrayStore: r3[0] = r0  ; List_8
    //     0x4c332c: stur         r0, [r3, #0x17]
    // 0x4c3330: branchIfSmi(r0, 0x4c334c)
    //     0x4c3330: tbz          r0, #0, 0x4c334c
    //     0x4c3334: ldurb        r16, [r3, #-1]
    //     0x4c3338: ldurb        r17, [r0, #-1]
    //     0x4c333c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3340: tst          BARRIER, HEAP, lsr #32
    // 0x4c3344: b.eq 0x4c334c
    //     0x4c3344: b.eq         0x4c334c
    // 0x4c3348: r0 = call 0x61e08c
    //     0x4c3348: bl           0x61e08c
    //     0x4c334c: ldur         r4, [fp, #-0x10]
    // 0x4c3350: r0 = LoadClassIdInstr(r4)
    //     0x4c3350: ldur         r0, [r4, #-1]
    //     0x4c3354: ubfx         r0, r0, #0xc, #0x14
    // 0x4c3358: r1 = r4
    //     0x4c3358: mov          r1, r4
    // 0x4c335c: r2 = pp[0x8e3]
    //     0x4c335c: add          r2, PP, #0xb, lsl #12
    //     0x4c3360: ldr          r2, [r2, #0x8d8]
    //     0x4c3364: sub          lr, r0, #1, lsl #12
    //     0x4c3368: ldr          lr, [r21, lr, lsl #3]
    // 0x4c336c: r0 = [R]()
    //     0x4c336c: blr          lr
    //     0x4c3370: cmp          r0, r22
    // 0x4c3374: b.ne 0x4c3380
    //     0x4c3374: b.ne         0x4c3380
    //     0x4c3378: mov          r5, #0
    // 0x4c337c: b 0x4c3384
    //     0x4c337c: b            0x4c3384
    // 0x4c3380: r5 = r0
    //     0x4c3380: mov          r5, r0
    //     0x4c3384: ldur         r3, [fp, #-8]
    //     0x4c3388: ldur         r4, [fp, #-0x10]
    // 0x4c338c: r0 = r5
    //     0x4c338c: mov          r0, r5
    //     0x4c3390: stur         r5, [fp, #-0x18]
    // 0x4c3394: r2 = NULL
    //     0x4c3394: mov          r2, NULL
    // 0x4c3398: r1 = NULL
    //     0x4c3398: mov          r1, NULL
    // 0x4c339c: branchIfSmi(r0, 0x4c33c4)
    //     0x4c339c: tbz          r0, #0, 0x4c33c4
    // 0x4c33a0: r4 = LoadClassIdInstr(r0)
    //     0x4c33a0: ldur         r4, [r0, #-1]
    //     0x4c33a4: ubfx         r4, r4, #0xc, #0x14
    //     0x4c33a8: sub          r4, r4, #0x3c
    //     0x4c33ac: cmp          r4, #1
    // 0x4c33b0: b.ls 0x4c33c4
    //     0x4c33b0: b.ls         0x4c33c4
    // 0x4c33b4: r8 = pp[0x1170]
    //     0x4c33b4: ldr          r8, [PP, #0x1170]
    // 0x4c33b8: r3 = pp[0x8eb]
    //     0x4c33b8: add          r3, PP, #0xb, lsl #12
    //     0x4c33bc: ldr          r3, [r3, #0x8e0]
    // 0x4c33c0: r0 = call 0x62aa34
    //     0x4c33c0: bl           0x62aa34
    //     0x4c33c4: ldur         r0, [fp, #-0x18]
    //     0x4c33c8: ldur         r3, [fp, #-8]
    // 0x4c33cc: StoreField: r3->field_1b = r0
    //     0x4c33cc: stur         r0, [r3, #0x1b]
    // 0x4c33d0: branchIfSmi(r0, 0x4c33ec)
    //     0x4c33d0: tbz          r0, #0, 0x4c33ec
    //     0x4c33d4: ldurb        r16, [r3, #-1]
    //     0x4c33d8: ldurb        r17, [r0, #-1]
    //     0x4c33dc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c33e0: tst          BARRIER, HEAP, lsr #32
    // 0x4c33e4: b.eq 0x4c33ec
    //     0x4c33e4: b.eq         0x4c33ec
    // 0x4c33e8: r0 = call 0x61e08c
    //     0x4c33e8: bl           0x61e08c
    //     0x4c33ec: ldur         r4, [fp, #-0x10]
    // 0x4c33f0: r0 = LoadClassIdInstr(r4)
    //     0x4c33f0: ldur         r0, [r4, #-1]
    //     0x4c33f4: ubfx         r0, r0, #0xc, #0x14
    // 0x4c33f8: r1 = r4
    //     0x4c33f8: mov          r1, r4
    // 0x4c33fc: r2 = pp[0x8fb]
    //     0x4c33fc: add          r2, PP, #0xb, lsl #12
    //     0x4c3400: ldr          r2, [r2, #0x8f0]
    //     0x4c3404: sub          lr, r0, #1, lsl #12
    //     0x4c3408: ldr          lr, [r21, lr, lsl #3]
    // 0x4c340c: r0 = [R]()
    //     0x4c340c: blr          lr
    //     0x4c3410: cmp          r0, r22
    // 0x4c3414: b.ne 0x4c3420
    //     0x4c3414: b.ne         0x4c3420
    //     0x4c3418: mov          r5, #0
    // 0x4c341c: b 0x4c3424
    //     0x4c341c: b            0x4c3424
    // 0x4c3420: r5 = r0
    //     0x4c3420: mov          r5, r0
    //     0x4c3424: ldur         r3, [fp, #-8]
    //     0x4c3428: ldur         r4, [fp, #-0x10]
    // 0x4c342c: r0 = r5
    //     0x4c342c: mov          r0, r5
    //     0x4c3430: stur         r5, [fp, #-0x18]
    // 0x4c3434: r2 = NULL
    //     0x4c3434: mov          r2, NULL
    // 0x4c3438: r1 = NULL
    //     0x4c3438: mov          r1, NULL
    // 0x4c343c: branchIfSmi(r0, 0x4c3464)
    //     0x4c343c: tbz          r0, #0, 0x4c3464
    // 0x4c3440: r4 = LoadClassIdInstr(r0)
    //     0x4c3440: ldur         r4, [r0, #-1]
    //     0x4c3444: ubfx         r4, r4, #0xc, #0x14
    //     0x4c3448: sub          r4, r4, #0x3c
    //     0x4c344c: cmp          r4, #1
    // 0x4c3450: b.ls 0x4c3464
    //     0x4c3450: b.ls         0x4c3464
    // 0x4c3454: r8 = pp[0x1170]
    //     0x4c3454: ldr          r8, [PP, #0x1170]
    // 0x4c3458: r3 = pp[0x903]
    //     0x4c3458: add          r3, PP, #0xb, lsl #12
    //     0x4c345c: ldr          r3, [r3, #0x8f8]
    // 0x4c3460: r0 = call 0x62aa34
    //     0x4c3460: bl           0x62aa34
    //     0x4c3464: ldur         r0, [fp, #-0x18]
    //     0x4c3468: ldur         r3, [fp, #-8]
    // 0x4c346c: StoreField: r3->field_1f = r0
    //     0x4c346c: stur         r0, [r3, #0x1f]
    // 0x4c3470: branchIfSmi(r0, 0x4c348c)
    //     0x4c3470: tbz          r0, #0, 0x4c348c
    //     0x4c3474: ldurb        r16, [r3, #-1]
    //     0x4c3478: ldurb        r17, [r0, #-1]
    //     0x4c347c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3480: tst          BARRIER, HEAP, lsr #32
    // 0x4c3484: b.eq 0x4c348c
    //     0x4c3484: b.eq         0x4c348c
    // 0x4c3488: r0 = call 0x61e08c
    //     0x4c3488: bl           0x61e08c
    //     0x4c348c: ldur         r4, [fp, #-0x10]
    // 0x4c3490: r0 = LoadClassIdInstr(r4)
    //     0x4c3490: ldur         r0, [r4, #-1]
    //     0x4c3494: ubfx         r0, r0, #0xc, #0x14
    // 0x4c3498: r1 = r4
    //     0x4c3498: mov          r1, r4
    // 0x4c349c: r2 = pp[0x913]
    //     0x4c349c: add          r2, PP, #0xb, lsl #12
    //     0x4c34a0: ldr          r2, [r2, #0x908]
    //     0x4c34a4: sub          lr, r0, #1, lsl #12
    //     0x4c34a8: ldr          lr, [r21, lr, lsl #3]
    // 0x4c34ac: r0 = [R]()
    //     0x4c34ac: blr          lr
    //     0x4c34b0: cmp          r0, r22
    // 0x4c34b4: b.ne 0x4c34bc
    //     0x4c34b4: b.ne         0x4c34bc
    //     0x4c34b8: mov          r0, #0
    //     0x4c34bc: ldur         r3, [fp, #-0x10]
    // 0x4c34c0: r2 = NULL
    //     0x4c34c0: mov          r2, NULL
    // 0x4c34c4: r1 = NULL
    //     0x4c34c4: mov          r1, NULL
    // 0x4c34c8: branchIfSmi(r0, 0x4c34f0)
    //     0x4c34c8: tbz          r0, #0, 0x4c34f0
    // 0x4c34cc: r4 = LoadClassIdInstr(r0)
    //     0x4c34cc: ldur         r4, [r0, #-1]
    //     0x4c34d0: ubfx         r4, r4, #0xc, #0x14
    //     0x4c34d4: sub          r4, r4, #0x3c
    //     0x4c34d8: cmp          r4, #1
    // 0x4c34dc: b.ls 0x4c34f0
    //     0x4c34dc: b.ls         0x4c34f0
    // 0x4c34e0: r8 = pp[0x1170]
    //     0x4c34e0: ldr          r8, [PP, #0x1170]
    // 0x4c34e4: r3 = pp[0x91b]
    //     0x4c34e4: add          r3, PP, #0xb, lsl #12
    //     0x4c34e8: ldr          r3, [r3, #0x910]
    // 0x4c34ec: r0 = call 0x62aa34
    //     0x4c34ec: bl           0x62aa34
    //     0x4c34f0: ldur         r3, [fp, #-0x10]
    // 0x4c34f4: r0 = LoadClassIdInstr(r3)
    //     0x4c34f4: ldur         r0, [r3, #-1]
    //     0x4c34f8: ubfx         r0, r0, #0xc, #0x14
    // 0x4c34fc: r1 = r3
    //     0x4c34fc: mov          r1, r3
    // 0x4c3500: r2 = pp[0x92b]
    //     0x4c3500: add          r2, PP, #0xb, lsl #12
    //     0x4c3504: ldr          r2, [r2, #0x920]
    //     0x4c3508: sub          lr, r0, #1, lsl #12
    //     0x4c350c: ldr          lr, [r21, lr, lsl #3]
    // 0x4c3510: r0 = [R]()
    //     0x4c3510: blr          lr
    //     0x4c3514: cmp          r0, r22
    // 0x4c3518: b.ne 0x4c3524
    //     0x4c3518: b.ne         0x4c3524
    //     0x4c351c: mov          r5, #0
    // 0x4c3520: b 0x4c3528
    //     0x4c3520: b            0x4c3528
    // 0x4c3524: r5 = r0
    //     0x4c3524: mov          r5, r0
    //     0x4c3528: ldur         r4, [fp, #-8]
    //     0x4c352c: ldur         r3, [fp, #-0x10]
    // 0x4c3530: r0 = r5
    //     0x4c3530: mov          r0, r5
    //     0x4c3534: stur         r5, [fp, #-0x18]
    // 0x4c3538: r2 = NULL
    //     0x4c3538: mov          r2, NULL
    // 0x4c353c: r1 = NULL
    //     0x4c353c: mov          r1, NULL
    // 0x4c3540: branchIfSmi(r0, 0x4c3568)
    //     0x4c3540: tbz          r0, #0, 0x4c3568
    // 0x4c3544: r4 = LoadClassIdInstr(r0)
    //     0x4c3544: ldur         r4, [r0, #-1]
    //     0x4c3548: ubfx         r4, r4, #0xc, #0x14
    //     0x4c354c: sub          r4, r4, #0x3c
    //     0x4c3550: cmp          r4, #1
    // 0x4c3554: b.ls 0x4c3568
    //     0x4c3554: b.ls         0x4c3568
    // 0x4c3558: r8 = pp[0x1170]
    //     0x4c3558: ldr          r8, [PP, #0x1170]
    // 0x4c355c: r3 = pp[0x933]
    //     0x4c355c: add          r3, PP, #0xb, lsl #12
    //     0x4c3560: ldr          r3, [r3, #0x928]
    // 0x4c3564: r0 = call 0x62aa34
    //     0x4c3564: bl           0x62aa34
    //     0x4c3568: ldur         r0, [fp, #-0x18]
    //     0x4c356c: ldur         r3, [fp, #-8]
    // 0x4c3570: StoreField: r3->field_23 = r0
    //     0x4c3570: stur         r0, [r3, #0x23]
    // 0x4c3574: branchIfSmi(r0, 0x4c3590)
    //     0x4c3574: tbz          r0, #0, 0x4c3590
    //     0x4c3578: ldurb        r16, [r3, #-1]
    //     0x4c357c: ldurb        r17, [r0, #-1]
    //     0x4c3580: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3584: tst          BARRIER, HEAP, lsr #32
    // 0x4c3588: b.eq 0x4c3590
    //     0x4c3588: b.eq         0x4c3590
    // 0x4c358c: r0 = call 0x61e08c
    //     0x4c358c: bl           0x61e08c
    //     0x4c3590: ldur         r4, [fp, #-0x10]
    // 0x4c3594: r0 = LoadClassIdInstr(r4)
    //     0x4c3594: ldur         r0, [r4, #-1]
    //     0x4c3598: ubfx         r0, r0, #0xc, #0x14
    // 0x4c359c: r1 = r4
    //     0x4c359c: mov          r1, r4
    // 0x4c35a0: r2 = pp[0x943]
    //     0x4c35a0: add          r2, PP, #0xb, lsl #12
    //     0x4c35a4: ldr          r2, [r2, #0x938]
    //     0x4c35a8: sub          lr, r0, #1, lsl #12
    //     0x4c35ac: ldr          lr, [r21, lr, lsl #3]
    // 0x4c35b0: r0 = [R]()
    //     0x4c35b0: blr          lr
    //     0x4c35b4: cmp          r0, r22
    // 0x4c35b8: b.ne 0x4c35c4
    //     0x4c35b8: b.ne         0x4c35c4
    //     0x4c35bc: mov          r5, #0
    // 0x4c35c0: b 0x4c35c8
    //     0x4c35c0: b            0x4c35c8
    // 0x4c35c4: r5 = r0
    //     0x4c35c4: mov          r5, r0
    //     0x4c35c8: ldur         r3, [fp, #-8]
    //     0x4c35cc: ldur         r4, [fp, #-0x10]
    // 0x4c35d0: r0 = r5
    //     0x4c35d0: mov          r0, r5
    //     0x4c35d4: stur         r5, [fp, #-0x18]
    // 0x4c35d8: r2 = NULL
    //     0x4c35d8: mov          r2, NULL
    // 0x4c35dc: r1 = NULL
    //     0x4c35dc: mov          r1, NULL
    // 0x4c35e0: branchIfSmi(r0, 0x4c3608)
    //     0x4c35e0: tbz          r0, #0, 0x4c3608
    // 0x4c35e4: r4 = LoadClassIdInstr(r0)
    //     0x4c35e4: ldur         r4, [r0, #-1]
    //     0x4c35e8: ubfx         r4, r4, #0xc, #0x14
    //     0x4c35ec: sub          r4, r4, #0x3c
    //     0x4c35f0: cmp          r4, #1
    // 0x4c35f4: b.ls 0x4c3608
    //     0x4c35f4: b.ls         0x4c3608
    // 0x4c35f8: r8 = pp[0x1170]
    //     0x4c35f8: ldr          r8, [PP, #0x1170]
    // 0x4c35fc: r3 = pp[0x94b]
    //     0x4c35fc: add          r3, PP, #0xb, lsl #12
    //     0x4c3600: ldr          r3, [r3, #0x940]
    // 0x4c3604: r0 = call 0x62aa34
    //     0x4c3604: bl           0x62aa34
    //     0x4c3608: ldur         r0, [fp, #-0x18]
    //     0x4c360c: ldur         r3, [fp, #-8]
    // 0x4c3610: StoreField: r3->field_27 = r0
    //     0x4c3610: stur         r0, [r3, #0x27]
    // 0x4c3614: branchIfSmi(r0, 0x4c3630)
    //     0x4c3614: tbz          r0, #0, 0x4c3630
    //     0x4c3618: ldurb        r16, [r3, #-1]
    //     0x4c361c: ldurb        r17, [r0, #-1]
    //     0x4c3620: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3624: tst          BARRIER, HEAP, lsr #32
    // 0x4c3628: b.eq 0x4c3630
    //     0x4c3628: b.eq         0x4c3630
    // 0x4c362c: r0 = call 0x61e08c
    //     0x4c362c: bl           0x61e08c
    //     0x4c3630: ldur         r1, [fp, #-0x10]
    // 0x4c3634: r0 = LoadClassIdInstr(r1)
    //     0x4c3634: ldur         r0, [r1, #-1]
    //     0x4c3638: ubfx         r0, r0, #0xc, #0x14
    // 0x4c363c: r2 = pp[0x95b]
    //     0x4c363c: add          r2, PP, #0xb, lsl #12
    //     0x4c3640: ldr          r2, [r2, #0x950]
    //     0x4c3644: sub          lr, r0, #1, lsl #12
    //     0x4c3648: ldr          lr, [r21, lr, lsl #3]
    // 0x4c364c: r0 = [R]()
    //     0x4c364c: blr          lr
    //     0x4c3650: cmp          r0, r22
    // 0x4c3654: b.ne 0x4c366c
    //     0x4c3654: b.ne         0x4c366c
    // 0x4c3658: r1 = NULL
    //     0x4c3658: mov          r1, NULL
    //     0x4c365c: mov          r2, #0
    // 0x4c3660: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c3660: bl           0x277268
    // 0x4c3664: r4 = r0
    //     0x4c3664: mov          r4, r0
    // 0x4c3668: b 0x4c3670
    //     0x4c3668: b            0x4c3670
    // 0x4c366c: r4 = r0
    //     0x4c366c: mov          r4, r0
    //     0x4c3670: ldur         r3, [fp, #-8]
    // 0x4c3674: r0 = r4
    //     0x4c3674: mov          r0, r4
    //     0x4c3678: stur         r4, [fp, #-0x10]
    // 0x4c367c: r2 = NULL
    //     0x4c367c: mov          r2, NULL
    // 0x4c3680: r1 = NULL
    //     0x4c3680: mov          r1, NULL
    // 0x4c3684: r8 = pp[0xfa8]
    //     0x4c3684: ldr          r8, [PP, #0xfa8]
    // 0x4c3688: r3 = pp[0x963]
    //     0x4c3688: add          r3, PP, #0xb, lsl #12
    //     0x4c368c: ldr          r3, [r3, #0x958]
    // 0x4c3690: r0 = call 0x285664
    //     0x4c3690: bl           0x285664
    // 0x4c3694: r1 = pp[0x973]
    //     0x4c3694: add          r1, PP, #0xb, lsl #12
    //     0x4c3698: ldr          r1, [r1, #0x968]
    // 0x4c369c: r2 = NULL
    //     0x4c369c: mov          r2, NULL
    // 0x4c36a0: r0 = call 0x61ec54
    //     0x4c36a0: bl           0x61ec54
    // 0x4c36a4: r1 = r0
    //     0x4c36a4: mov          r1, r0
    //     0x4c36a8: ldur         r0, [fp, #-0x10]
    // 0x4c36ac: r2 = LoadClassIdInstr(r0)
    //     0x4c36ac: ldur         r2, [r0, #-1]
    //     0x4c36b0: ubfx         r2, r2, #0xc, #0x14
    // 0x4c36b4: BARRIER = pp[0x863]
    //     0x4c36b4: add          BARRIER, PP, #0xb, lsl #12
    //     0x4c36b8: ldr          BARRIER, [BARRIER, #0x858]
    //     0x4c36bc: stp          r0, BARRIER, [SP, #8]
    //     0x4c36c0: str          r1, [SP]
    // 0x4c36c4: r0 = r2
    //     0x4c36c4: mov          r0, r2
    // 0x4c36c8: r4 = pp[0x58]
    //     0x4c36c8: ldr          r4, [PP, #0x58]
    //     0x4c36cc: mov          r17, #0x86d9
    //     0x4c36d0: add          lr, r0, r17
    //     0x4c36d4: ldr          lr, [r21, lr, lsl #3]
    // 0x4c36d8: r0 = [R]()
    //     0x4c36d8: blr          lr
    // 0x4c36dc: r1 = LoadClassIdInstr(r0)
    //     0x4c36dc: ldur         r1, [r0, #-1]
    //     0x4c36e0: ubfx         r1, r1, #0xc, #0x14
    // 0x4c36e4: BARRIER = r0
    //     0x4c36e4: mov          BARRIER, r0
    // 0x4c36e8: r0 = r1
    //     0x4c36e8: mov          r0, r1
    // 0x4c36ec: r1 = BARRIER
    //     0x4c36ec: mov          r1, BARRIER
    // 0x4c36f0: r4 = pp[0x4c0]
    //     0x4c36f0: ldr          r4, [PP, #0x4c0]
    //     0x4c36f4: add          lr, r0, #0x35e
    //     0x4c36f8: ldr          lr, [r21, lr, lsl #3]
    // 0x4c36fc: r0 = [R]()
    //     0x4c36fc: blr          lr
    //     0x4c3700: ldur         r1, [fp, #-8]
    // 0x4c3704: StoreField: r1->field_2b = r0
    //     0x4c3704: stur         r0, [r1, #0x2b]
    //     0x4c3708: ldurb        r16, [r1, #-1]
    //     0x4c370c: ldurb        r17, [r0, #-1]
    //     0x4c3710: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3714: tst          BARRIER, HEAP, lsr #32
    // 0x4c3718: b.eq 0x4c3720
    //     0x4c3718: b.eq         0x4c3720
    // 0x4c371c: r0 = call 0x61e04c
    //     0x4c371c: bl           0x61e04c
    // 0x4c3720: r0 = NULL
    //     0x4c3720: mov          r0, NULL
    // 0x4c3724: SP = fp
    //     0x4c3724: mov          SP, fp
    // 0x4c3728: LeaveFrame
    //     0x4c3728: ldp          fp, lr, [SP], #0x10
    // 0x4c372c: ret
    //     0x4c372c: ret          
    // 0x4c3730: r0 = call 0x61fa28
    //     0x4c3730: bl           0x61fa28
    // 0x4c3734: b 0x4c2fcc
    //     0x4c3734: b            0x4c2fcc
    // 0x4c3738: r0 = call 0x61fe70
    //     0x4c3738: bl           0x61fe70
  }

  _anon_closure() {
    // ** addr: 0x4c373c, size: 0x60
    // 0x4c373c: EnterFrame
    //     0x4c373c: stp          fp, lr, [SP, #-0x10]!
    //     0x4c3740: mov          fp, SP
    // 0x4c3744: AllocStack(8)
    //     0x4c3744: sub          SP, SP, #8
    // 0x4c3748: CheckStackOverflow
    //     0x4c3748: ldr          BARRIER, [THR, #0x38]
    //     0x4c374c: cmp          SP, BARRIER
    //     0x4c3750: b.ls         0x4c3794
    //     0x4c3754: ldr          r0, [fp, #0x10]
    // 0x4c3758: r2 = NULL
    //     0x4c3758: mov          r2, NULL
    // 0x4c375c: r1 = NULL
    //     0x4c375c: mov          r1, NULL
    // 0x4c3760: r8 = pp[0x3cd0]
    //     0x4c3760: ldr          r8, [PP, #0x3cd0]
    // 0x4c3764: r3 = pp[0x97b]
    //     0x4c3764: add          r3, PP, #0xb, lsl #12
    //     0x4c3768: ldr          r3, [r3, #0x970]
    // 0x4c376c: r0 = call 0x2b15f0
    //     0x4c376c: bl           0x2b15f0
    // 0x4c3770: r0 = call 0x4c390c
    //     0x4c3770: bl           0x4c390c
    // 0x4c3774: r1 = r0
    //     0x4c3774: mov          r1, r0
    //     0x4c3778: ldr          r2, [fp, #0x10]
    //     0x4c377c: stur         r0, [fp, #-8]
    // 0x4c3780: r0 = soul_flutter_international$model$game_fruit_model_BetCoinInfo::ctor_fromJson()
    //     0x4c3780: bl           0x4c379c
    //     0x4c3784: ldur         r0, [fp, #-8]
    // 0x4c3788: SP = fp
    //     0x4c3788: mov          SP, fp
    // 0x4c378c: LeaveFrame
    //     0x4c378c: ldp          fp, lr, [SP], #0x10
    // 0x4c3790: ret
    //     0x4c3790: ret          
    // 0x4c3794: r0 = call 0x61fa28
    //     0x4c3794: bl           0x61fa28
    // 0x4c3798: b 0x4c3754
    //     0x4c3798: b            0x4c3754
  }

  ctor_fromJson() {
    // ** addr: 0x4c379c, size: 0x170
    // 0x4c379c: EnterFrame
    //     0x4c379c: stp          fp, lr, [SP, #-0x10]!
    //     0x4c37a0: mov          fp, SP
    // 0x4c37a4: AllocStack(0x18)
    //     0x4c37a4: sub          SP, SP, #0x18
    // 0x4c37a8: r4 = r1
    //     0x4c37a8: mov          r4, r1
    // 0x4c37ac: r3 = r2
    //     0x4c37ac: mov          r3, r2
    //     0x4c37b0: stur         r1, [fp, #-8]
    //     0x4c37b4: stur         r2, [fp, #-0x10]
    // 0x4c37b8: CheckStackOverflow
    //     0x4c37b8: ldr          BARRIER, [THR, #0x38]
    //     0x4c37bc: cmp          SP, BARRIER
    //     0x4c37c0: b.ls         0x4c3904
    // 0x4c37c4: r0 = LoadClassIdInstr(r3)
    //     0x4c37c4: ldur         r0, [r3, #-1]
    //     0x4c37c8: ubfx         r0, r0, #0xc, #0x14
    // 0x4c37cc: r1 = r3
    //     0x4c37cc: mov          r1, r3
    // 0x4c37d0: r2 = pp[0x2e40]
    //     0x4c37d0: ldr          r2, [PP, #0x2e40]
    //     0x4c37d4: sub          lr, r0, #1, lsl #12
    //     0x4c37d8: ldr          lr, [r21, lr, lsl #3]
    // 0x4c37dc: r0 = [R]()
    //     0x4c37dc: blr          lr
    //     0x4c37e0: cmp          r0, r22
    // 0x4c37e4: b.ne 0x4c37f0
    //     0x4c37e4: b.ne         0x4c37f0
    //     0x4c37e8: mov          r5, #0
    // 0x4c37ec: b 0x4c37f4
    //     0x4c37ec: b            0x4c37f4
    // 0x4c37f0: r5 = r0
    //     0x4c37f0: mov          r5, r0
    //     0x4c37f4: ldur         r4, [fp, #-8]
    //     0x4c37f8: ldur         r3, [fp, #-0x10]
    // 0x4c37fc: r0 = r5
    //     0x4c37fc: mov          r0, r5
    //     0x4c3800: stur         r5, [fp, #-0x18]
    // 0x4c3804: r2 = NULL
    //     0x4c3804: mov          r2, NULL
    // 0x4c3808: r1 = NULL
    //     0x4c3808: mov          r1, NULL
    // 0x4c380c: branchIfSmi(r0, 0x4c3834)
    //     0x4c380c: tbz          r0, #0, 0x4c3834
    // 0x4c3810: r4 = LoadClassIdInstr(r0)
    //     0x4c3810: ldur         r4, [r0, #-1]
    //     0x4c3814: ubfx         r4, r4, #0xc, #0x14
    //     0x4c3818: sub          r4, r4, #0x3c
    //     0x4c381c: cmp          r4, #1
    // 0x4c3820: b.ls 0x4c3834
    //     0x4c3820: b.ls         0x4c3834
    // 0x4c3824: r8 = pp[0xaf8]
    //     0x4c3824: ldr          r8, [PP, #0xaf8]
    // 0x4c3828: r3 = pp[0x98b]
    //     0x4c3828: add          r3, PP, #0xb, lsl #12
    //     0x4c382c: ldr          r3, [r3, #0x980]
    // 0x4c3830: r0 = call 0x62a9f8
    //     0x4c3830: bl           0x62a9f8
    //     0x4c3834: ldur         r0, [fp, #-0x18]
    //     0x4c3838: ldur         r3, [fp, #-8]
    // 0x4c383c: StoreField: r3->field_7 = r0
    //     0x4c383c: stur         r0, [r3, #7]
    // 0x4c3840: branchIfSmi(r0, 0x4c385c)
    //     0x4c3840: tbz          r0, #0, 0x4c385c
    //     0x4c3844: ldurb        r16, [r3, #-1]
    //     0x4c3848: ldurb        r17, [r0, #-1]
    //     0x4c384c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3850: tst          BARRIER, HEAP, lsr #32
    // 0x4c3854: b.eq 0x4c385c
    //     0x4c3854: b.eq         0x4c385c
    // 0x4c3858: r0 = call 0x61e08c
    //     0x4c3858: bl           0x61e08c
    //     0x4c385c: ldur         r1, [fp, #-0x10]
    // 0x4c3860: r0 = LoadClassIdInstr(r1)
    //     0x4c3860: ldur         r0, [r1, #-1]
    //     0x4c3864: ubfx         r0, r0, #0xc, #0x14
    // 0x4c3868: r2 = pp[0x99b]
    //     0x4c3868: add          r2, PP, #0xb, lsl #12
    //     0x4c386c: ldr          r2, [r2, #0x990]
    //     0x4c3870: sub          lr, r0, #1, lsl #12
    //     0x4c3874: ldr          lr, [r21, lr, lsl #3]
    // 0x4c3878: r0 = [R]()
    //     0x4c3878: blr          lr
    //     0x4c387c: cmp          r0, r22
    // 0x4c3880: b.ne 0x4c388c
    //     0x4c3880: b.ne         0x4c388c
    //     0x4c3884: mov          r4, #0
    // 0x4c3888: b 0x4c3890
    //     0x4c3888: b            0x4c3890
    // 0x4c388c: r4 = r0
    //     0x4c388c: mov          r4, r0
    //     0x4c3890: ldur         r3, [fp, #-8]
    // 0x4c3894: r0 = r4
    //     0x4c3894: mov          r0, r4
    //     0x4c3898: stur         r4, [fp, #-0x10]
    // 0x4c389c: r2 = NULL
    //     0x4c389c: mov          r2, NULL
    // 0x4c38a0: r1 = NULL
    //     0x4c38a0: mov          r1, NULL
    // 0x4c38a4: branchIfSmi(r0, 0x4c38cc)
    //     0x4c38a4: tbz          r0, #0, 0x4c38cc
    // 0x4c38a8: r4 = LoadClassIdInstr(r0)
    //     0x4c38a8: ldur         r4, [r0, #-1]
    //     0x4c38ac: ubfx         r4, r4, #0xc, #0x14
    //     0x4c38b0: sub          r4, r4, #0x3c
    //     0x4c38b4: cmp          r4, #1
    // 0x4c38b8: b.ls 0x4c38cc
    //     0x4c38b8: b.ls         0x4c38cc
    // 0x4c38bc: r8 = pp[0xaf8]
    //     0x4c38bc: ldr          r8, [PP, #0xaf8]
    // 0x4c38c0: r3 = pp[0x9a3]
    //     0x4c38c0: add          r3, PP, #0xb, lsl #12
    //     0x4c38c4: ldr          r3, [r3, #0x998]
    // 0x4c38c8: r0 = call 0x62a9f8
    //     0x4c38c8: bl           0x62a9f8
    //     0x4c38cc: ldur         r0, [fp, #-0x10]
    //     0x4c38d0: ldur         r1, [fp, #-8]
    // 0x4c38d4: StoreField: r1->field_b = r0
    //     0x4c38d4: stur         r0, [r1, #0xb]
    // 0x4c38d8: branchIfSmi(r0, 0x4c38f4)
    //     0x4c38d8: tbz          r0, #0, 0x4c38f4
    //     0x4c38dc: ldurb        r16, [r1, #-1]
    //     0x4c38e0: ldurb        r17, [r0, #-1]
    //     0x4c38e4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c38e8: tst          BARRIER, HEAP, lsr #32
    // 0x4c38ec: b.eq 0x4c38f4
    //     0x4c38ec: b.eq         0x4c38f4
    // 0x4c38f0: r0 = call 0x61e04c
    //     0x4c38f0: bl           0x61e04c
    // 0x4c38f4: r0 = NULL
    //     0x4c38f4: mov          r0, NULL
    // 0x4c38f8: SP = fp
    //     0x4c38f8: mov          SP, fp
    // 0x4c38fc: LeaveFrame
    //     0x4c38fc: ldp          fp, lr, [SP], #0x10
    // 0x4c3900: ret
    //     0x4c3900: ret          
    // 0x4c3904: r0 = call 0x61fa28
    //     0x4c3904: bl           0x61fa28
    // 0x4c3908: b 0x4c37c4
    //     0x4c3908: b            0x4c37c4
  }

  ctor_fromJson() {
    // ** addr: 0x4d1f58, size: 0x220
    // 0x4d1f58: EnterFrame
    //     0x4d1f58: stp          fp, lr, [SP, #-0x10]!
    //     0x4d1f5c: mov          fp, SP
    // 0x4d1f60: AllocStack(0x18)
    //     0x4d1f60: sub          SP, SP, #0x18
    // 0x4d1f64: r0 = pp[0x40]
    //     0x4d1f64: ldr          r0, [PP, #0x40]
    // 0x4d1f68: r4 = r1
    //     0x4d1f68: mov          r4, r1
    // 0x4d1f6c: r3 = r2
    //     0x4d1f6c: mov          r3, r2
    //     0x4d1f70: stur         r1, [fp, #-8]
    //     0x4d1f74: stur         r2, [fp, #-0x10]
    // 0x4d1f78: CheckStackOverflow
    //     0x4d1f78: ldr          BARRIER, [THR, #0x38]
    //     0x4d1f7c: cmp          SP, BARRIER
    //     0x4d1f80: b.ls         0x4d2170
    // 0x4d1f84: StoreField: r4->field_7 = r0
    //     0x4d1f84: stur         r0, [r4, #7]
    // 0x4d1f88: StoreField: r4->field_b = r0
    //     0x4d1f88: stur         r0, [r4, #0xb]
    // 0x4d1f8c: StoreField: r4->field_f = r0
    //     0x4d1f8c: stur         r0, [r4, #0xf]
    // 0x4d1f90: r0 = LoadClassIdInstr(r3)
    //     0x4d1f90: ldur         r0, [r3, #-1]
    //     0x4d1f94: ubfx         r0, r0, #0xc, #0x14
    // 0x4d1f98: r1 = r3
    //     0x4d1f98: mov          r1, r3
    // 0x4d1f9c: r2 = pp[0xdc1]
    //     0x4d1f9c: add          r2, PP, #0x11, lsl #12
    //     0x4d1fa0: ldr          r2, [r2, #0xdb0]
    //     0x4d1fa4: sub          lr, r0, #1, lsl #12
    //     0x4d1fa8: ldr          lr, [r21, lr, lsl #3]
    // 0x4d1fac: r0 = [R]()
    //     0x4d1fac: blr          lr
    //     0x4d1fb0: cmp          r0, r22
    // 0x4d1fb4: b.ne 0x4d1fc0
    //     0x4d1fb4: b.ne         0x4d1fc0
    //     0x4d1fb8: mov          r5, #0
    // 0x4d1fbc: b 0x4d1fc4
    //     0x4d1fbc: b            0x4d1fc4
    // 0x4d1fc0: r5 = r0
    //     0x4d1fc0: mov          r5, r0
    //     0x4d1fc4: ldur         r4, [fp, #-8]
    //     0x4d1fc8: ldur         r3, [fp, #-0x10]
    // 0x4d1fcc: r0 = r5
    //     0x4d1fcc: mov          r0, r5
    //     0x4d1fd0: stur         r5, [fp, #-0x18]
    // 0x4d1fd4: r2 = NULL
    //     0x4d1fd4: mov          r2, NULL
    // 0x4d1fd8: r1 = NULL
    //     0x4d1fd8: mov          r1, NULL
    // 0x4d1fdc: branchIfSmi(r0, 0x4d2004)
    //     0x4d1fdc: tbz          r0, #0, 0x4d2004
    // 0x4d1fe0: r4 = LoadClassIdInstr(r0)
    //     0x4d1fe0: ldur         r4, [r0, #-1]
    //     0x4d1fe4: ubfx         r4, r4, #0xc, #0x14
    //     0x4d1fe8: sub          r4, r4, #0x3c
    //     0x4d1fec: cmp          r4, #1
    // 0x4d1ff0: b.ls 0x4d2004
    //     0x4d1ff0: b.ls         0x4d2004
    // 0x4d1ff4: r8 = pp[0x1170]
    //     0x4d1ff4: ldr          r8, [PP, #0x1170]
    // 0x4d1ff8: r3 = pp[0xdc9]
    //     0x4d1ff8: add          r3, PP, #0x11, lsl #12
    //     0x4d1ffc: ldr          r3, [r3, #0xdb8]
    // 0x4d2000: r0 = call 0x62aa34
    //     0x4d2000: bl           0x62aa34
    //     0x4d2004: ldur         r0, [fp, #-0x18]
    //     0x4d2008: ldur         r3, [fp, #-8]
    // 0x4d200c: StoreField: r3->field_7 = r0
    //     0x4d200c: stur         r0, [r3, #7]
    // 0x4d2010: branchIfSmi(r0, 0x4d202c)
    //     0x4d2010: tbz          r0, #0, 0x4d202c
    //     0x4d2014: ldurb        r16, [r3, #-1]
    //     0x4d2018: ldurb        r17, [r0, #-1]
    //     0x4d201c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d2020: tst          BARRIER, HEAP, lsr #32
    // 0x4d2024: b.eq 0x4d202c
    //     0x4d2024: b.eq         0x4d202c
    // 0x4d2028: r0 = call 0x61e08c
    //     0x4d2028: bl           0x61e08c
    //     0x4d202c: ldur         r4, [fp, #-0x10]
    // 0x4d2030: r0 = LoadClassIdInstr(r4)
    //     0x4d2030: ldur         r0, [r4, #-1]
    //     0x4d2034: ubfx         r0, r0, #0xc, #0x14
    // 0x4d2038: r1 = r4
    //     0x4d2038: mov          r1, r4
    // 0x4d203c: r2 = pp[0x2e40]
    //     0x4d203c: ldr          r2, [PP, #0x2e40]
    //     0x4d2040: sub          lr, r0, #1, lsl #12
    //     0x4d2044: ldr          lr, [r21, lr, lsl #3]
    // 0x4d2048: r0 = [R]()
    //     0x4d2048: blr          lr
    //     0x4d204c: cmp          r0, r22
    // 0x4d2050: b.ne 0x4d205c
    //     0x4d2050: b.ne         0x4d205c
    //     0x4d2054: mov          r5, #0
    // 0x4d2058: b 0x4d2060
    //     0x4d2058: b            0x4d2060
    // 0x4d205c: r5 = r0
    //     0x4d205c: mov          r5, r0
    //     0x4d2060: ldur         r3, [fp, #-8]
    //     0x4d2064: ldur         r4, [fp, #-0x10]
    // 0x4d2068: r0 = r5
    //     0x4d2068: mov          r0, r5
    //     0x4d206c: stur         r5, [fp, #-0x18]
    // 0x4d2070: r2 = NULL
    //     0x4d2070: mov          r2, NULL
    // 0x4d2074: r1 = NULL
    //     0x4d2074: mov          r1, NULL
    // 0x4d2078: branchIfSmi(r0, 0x4d20a0)
    //     0x4d2078: tbz          r0, #0, 0x4d20a0
    // 0x4d207c: r4 = LoadClassIdInstr(r0)
    //     0x4d207c: ldur         r4, [r0, #-1]
    //     0x4d2080: ubfx         r4, r4, #0xc, #0x14
    //     0x4d2084: sub          r4, r4, #0x3c
    //     0x4d2088: cmp          r4, #1
    // 0x4d208c: b.ls 0x4d20a0
    //     0x4d208c: b.ls         0x4d20a0
    // 0x4d2090: r8 = pp[0x1170]
    //     0x4d2090: ldr          r8, [PP, #0x1170]
    // 0x4d2094: r3 = pp[0xdd9]
    //     0x4d2094: add          r3, PP, #0x11, lsl #12
    //     0x4d2098: ldr          r3, [r3, #0xdc8]
    // 0x4d209c: r0 = call 0x62aa34
    //     0x4d209c: bl           0x62aa34
    //     0x4d20a0: ldur         r0, [fp, #-0x18]
    //     0x4d20a4: ldur         r3, [fp, #-8]
    // 0x4d20a8: StoreField: r3->field_b = r0
    //     0x4d20a8: stur         r0, [r3, #0xb]
    // 0x4d20ac: branchIfSmi(r0, 0x4d20c8)
    //     0x4d20ac: tbz          r0, #0, 0x4d20c8
    //     0x4d20b0: ldurb        r16, [r3, #-1]
    //     0x4d20b4: ldurb        r17, [r0, #-1]
    //     0x4d20b8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d20bc: tst          BARRIER, HEAP, lsr #32
    // 0x4d20c0: b.eq 0x4d20c8
    //     0x4d20c0: b.eq         0x4d20c8
    // 0x4d20c4: r0 = call 0x61e08c
    //     0x4d20c4: bl           0x61e08c
    //     0x4d20c8: ldur         r1, [fp, #-0x10]
    // 0x4d20cc: r0 = LoadClassIdInstr(r1)
    //     0x4d20cc: ldur         r0, [r1, #-1]
    //     0x4d20d0: ubfx         r0, r0, #0xc, #0x14
    // 0x4d20d4: r2 = pp[0xa5f]
    //     0x4d20d4: add          r2, PP, #0xf, lsl #12
    //     0x4d20d8: ldr          r2, [r2, #0xa50]
    //     0x4d20dc: sub          lr, r0, #1, lsl #12
    //     0x4d20e0: ldr          lr, [r21, lr, lsl #3]
    // 0x4d20e4: r0 = [R]()
    //     0x4d20e4: blr          lr
    //     0x4d20e8: cmp          r0, r22
    // 0x4d20ec: b.ne 0x4d20f8
    //     0x4d20ec: b.ne         0x4d20f8
    // 0x4d20f0: r4 = pp[0x148]
    //     0x4d20f0: ldr          r4, [PP, #0x148]
    // 0x4d20f4: b 0x4d20fc
    //     0x4d20f4: b            0x4d20fc
    // 0x4d20f8: r4 = r0
    //     0x4d20f8: mov          r4, r0
    //     0x4d20fc: ldur         r3, [fp, #-8]
    // 0x4d2100: r0 = r4
    //     0x4d2100: mov          r0, r4
    //     0x4d2104: stur         r4, [fp, #-0x10]
    // 0x4d2108: r2 = NULL
    //     0x4d2108: mov          r2, NULL
    // 0x4d210c: r1 = NULL
    //     0x4d210c: mov          r1, NULL
    //     0x4d2110: mov          r4, #0x3c
    // 0x4d2114: branchIfSmi(r0, 0x4d2120)
    //     0x4d2114: tbz          r0, #0, 0x4d2120
    // 0x4d2118: r4 = LoadClassIdInstr(r0)
    //     0x4d2118: ldur         r4, [r0, #-1]
    //     0x4d211c: ubfx         r4, r4, #0xc, #0x14
    //     0x4d2120: sub          r4, r4, #0x5e
    //     0x4d2124: cmp          r4, #1
    // 0x4d2128: b.ls 0x4d213c
    //     0x4d2128: b.ls         0x4d213c
    // 0x4d212c: r8 = pp[0x2f8]
    //     0x4d212c: ldr          r8, [PP, #0x2f8]
    // 0x4d2130: r3 = pp[0xde9]
    //     0x4d2130: add          r3, PP, #0x11, lsl #12
    //     0x4d2134: ldr          r3, [r3, #0xdd8]
    // 0x4d2138: r0 = call 0x62a0c0
    //     0x4d2138: bl           0x62a0c0
    //     0x4d213c: ldur         r0, [fp, #-0x10]
    //     0x4d2140: ldur         r1, [fp, #-8]
    // 0x4d2144: StoreField: r1->field_f = r0
    //     0x4d2144: stur         r0, [r1, #0xf]
    //     0x4d2148: ldurb        r16, [r1, #-1]
    //     0x4d214c: ldurb        r17, [r0, #-1]
    //     0x4d2150: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d2154: tst          BARRIER, HEAP, lsr #32
    // 0x4d2158: b.eq 0x4d2160
    //     0x4d2158: b.eq         0x4d2160
    // 0x4d215c: r0 = call 0x61e04c
    //     0x4d215c: bl           0x61e04c
    // 0x4d2160: r0 = NULL
    //     0x4d2160: mov          r0, NULL
    // 0x4d2164: SP = fp
    //     0x4d2164: mov          SP, fp
    // 0x4d2168: LeaveFrame
    //     0x4d2168: ldp          fp, lr, [SP], #0x10
    // 0x4d216c: ret
    //     0x4d216c: ret          
    // 0x4d2170: r0 = call 0x61fa28
    //     0x4d2170: bl           0x61fa28
    // 0x4d2174: b 0x4d1f84
    //     0x4d2174: b            0x4d1f84
  }

  ctor_fromJson() {
    // ** addr: 0x4d3c7c, size: 0x214
    // 0x4d3c7c: EnterFrame
    //     0x4d3c7c: stp          fp, lr, [SP, #-0x10]!
    //     0x4d3c80: mov          fp, SP
    // 0x4d3c84: AllocStack(0x30)
    //     0x4d3c84: sub          SP, SP, #0x30
    // 0x4d3c88: r0 = pp[0x40]
    //     0x4d3c88: ldr          r0, [PP, #0x40]
    // 0x4d3c8c: r4 = r1
    //     0x4d3c8c: mov          r4, r1
    // 0x4d3c90: r3 = r2
    //     0x4d3c90: mov          r3, r2
    //     0x4d3c94: stur         r1, [fp, #-8]
    //     0x4d3c98: stur         r2, [fp, #-0x10]
    // 0x4d3c9c: CheckStackOverflow
    //     0x4d3c9c: ldr          BARRIER, [THR, #0x38]
    //     0x4d3ca0: cmp          SP, BARRIER
    //     0x4d3ca4: b.ls         0x4d3e88
    // 0x4d3ca8: StoreField: r4->field_7 = r0
    //     0x4d3ca8: stur         r0, [r4, #7]
    // 0x4d3cac: StoreField: r4->field_b = r0
    //     0x4d3cac: stur         r0, [r4, #0xb]
    // 0x4d3cb0: r0 = LoadClassIdInstr(r3)
    //     0x4d3cb0: ldur         r0, [r3, #-1]
    //     0x4d3cb4: ubfx         r0, r0, #0xc, #0x14
    // 0x4d3cb8: r1 = r3
    //     0x4d3cb8: mov          r1, r3
    // 0x4d3cbc: r2 = pp[0x33d]
    //     0x4d3cbc: add          r2, PP, #0x15, lsl #12
    //     0x4d3cc0: ldr          r2, [r2, #0x328]
    //     0x4d3cc4: sub          lr, r0, #1, lsl #12
    //     0x4d3cc8: ldr          lr, [r21, lr, lsl #3]
    // 0x4d3ccc: r0 = [R]()
    //     0x4d3ccc: blr          lr
    //     0x4d3cd0: cmp          r0, r22
    // 0x4d3cd4: b.ne 0x4d3cec
    //     0x4d3cd4: b.ne         0x4d3cec
    // 0x4d3cd8: r1 = NULL
    //     0x4d3cd8: mov          r1, NULL
    //     0x4d3cdc: mov          r2, #0
    // 0x4d3ce0: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4d3ce0: bl           0x277268
    // 0x4d3ce4: r5 = r0
    //     0x4d3ce4: mov          r5, r0
    // 0x4d3ce8: b 0x4d3cf0
    //     0x4d3ce8: b            0x4d3cf0
    // 0x4d3cec: r5 = r0
    //     0x4d3cec: mov          r5, r0
    //     0x4d3cf0: ldur         r4, [fp, #-8]
    //     0x4d3cf4: ldur         r3, [fp, #-0x10]
    // 0x4d3cf8: r0 = r5
    //     0x4d3cf8: mov          r0, r5
    //     0x4d3cfc: stur         r5, [fp, #-0x18]
    // 0x4d3d00: r2 = NULL
    //     0x4d3d00: mov          r2, NULL
    // 0x4d3d04: r1 = NULL
    //     0x4d3d04: mov          r1, NULL
    // 0x4d3d08: r8 = pp[0xfa8]
    //     0x4d3d08: ldr          r8, [PP, #0xfa8]
    // 0x4d3d0c: r3 = pp[0x345]
    //     0x4d3d0c: add          r3, PP, #0x15, lsl #12
    //     0x4d3d10: ldr          r3, [r3, #0x330]
    // 0x4d3d14: r0 = call 0x285664
    //     0x4d3d14: bl           0x285664
    // 0x4d3d18: r1 = pp[0x355]
    //     0x4d3d18: add          r1, PP, #0x15, lsl #12
    //     0x4d3d1c: ldr          r1, [r1, #0x340]
    // 0x4d3d20: r2 = NULL
    //     0x4d3d20: mov          r2, NULL
    // 0x4d3d24: r0 = call 0x61ec54
    //     0x4d3d24: bl           0x61ec54
    // 0x4d3d28: r1 = r0
    //     0x4d3d28: mov          r1, r0
    //     0x4d3d2c: ldur         r0, [fp, #-0x18]
    // 0x4d3d30: r2 = LoadClassIdInstr(r0)
    //     0x4d3d30: ldur         r2, [r0, #-1]
    //     0x4d3d34: ubfx         r2, r2, #0xc, #0x14
    // 0x4d3d38: BARRIER = pp[0x85b]
    //     0x4d3d38: add          BARRIER, PP, #0xb, lsl #12
    //     0x4d3d3c: ldr          BARRIER, [BARRIER, #0x850]
    //     0x4d3d40: stp          r0, BARRIER, [SP, #8]
    //     0x4d3d44: str          r1, [SP]
    // 0x4d3d48: r0 = r2
    //     0x4d3d48: mov          r0, r2
    // 0x4d3d4c: r4 = pp[0x58]
    //     0x4d3d4c: ldr          r4, [PP, #0x58]
    //     0x4d3d50: mov          r17, #0x86d9
    //     0x4d3d54: add          lr, r0, r17
    //     0x4d3d58: ldr          lr, [r21, lr, lsl #3]
    // 0x4d3d5c: r0 = [R]()
    //     0x4d3d5c: blr          lr
    // 0x4d3d60: r1 = LoadClassIdInstr(r0)
    //     0x4d3d60: ldur         r1, [r0, #-1]
    //     0x4d3d64: ubfx         r1, r1, #0xc, #0x14
    // 0x4d3d68: BARRIER = r0
    //     0x4d3d68: mov          BARRIER, r0
    // 0x4d3d6c: r0 = r1
    //     0x4d3d6c: mov          r0, r1
    // 0x4d3d70: r1 = BARRIER
    //     0x4d3d70: mov          r1, BARRIER
    // 0x4d3d74: r4 = pp[0x4c0]
    //     0x4d3d74: ldr          r4, [PP, #0x4c0]
    //     0x4d3d78: add          lr, r0, #0x35e
    //     0x4d3d7c: ldr          lr, [r21, lr, lsl #3]
    // 0x4d3d80: r0 = [R]()
    //     0x4d3d80: blr          lr
    //     0x4d3d84: ldur         r3, [fp, #-8]
    // 0x4d3d88: StoreField: r3->field_7 = r0
    //     0x4d3d88: stur         r0, [r3, #7]
    //     0x4d3d8c: ldurb        r16, [r3, #-1]
    //     0x4d3d90: ldurb        r17, [r0, #-1]
    //     0x4d3d94: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d3d98: tst          BARRIER, HEAP, lsr #32
    // 0x4d3d9c: b.eq 0x4d3da4
    //     0x4d3d9c: b.eq         0x4d3da4
    // 0x4d3da0: r0 = call 0x61e08c
    //     0x4d3da0: bl           0x61e08c
    //     0x4d3da4: ldur         r1, [fp, #-0x10]
    // 0x4d3da8: r0 = LoadClassIdInstr(r1)
    //     0x4d3da8: ldur         r0, [r1, #-1]
    //     0x4d3dac: ubfx         r0, r0, #0xc, #0x14
    // 0x4d3db0: r2 = pp[0x35d]
    //     0x4d3db0: add          r2, PP, #0x15, lsl #12
    //     0x4d3db4: ldr          r2, [r2, #0x348]
    //     0x4d3db8: sub          lr, r0, #1, lsl #12
    //     0x4d3dbc: ldr          lr, [r21, lr, lsl #3]
    // 0x4d3dc0: r0 = [R]()
    //     0x4d3dc0: blr          lr
    //     0x4d3dc4: cmp          r0, r22
    // 0x4d3dc8: b.ne 0x4d3de0
    //     0x4d3dc8: b.ne         0x4d3de0
    // 0x4d3dcc: r1 = NULL
    //     0x4d3dcc: mov          r1, NULL
    //     0x4d3dd0: mov          r2, #0
    // 0x4d3dd4: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4d3dd4: bl           0x277268
    // 0x4d3dd8: r4 = r0
    //     0x4d3dd8: mov          r4, r0
    // 0x4d3ddc: b 0x4d3de4
    //     0x4d3ddc: b            0x4d3de4
    // 0x4d3de0: r4 = r0
    //     0x4d3de0: mov          r4, r0
    //     0x4d3de4: ldur         r3, [fp, #-8]
    // 0x4d3de8: r0 = r4
    //     0x4d3de8: mov          r0, r4
    //     0x4d3dec: stur         r4, [fp, #-0x10]
    // 0x4d3df0: r2 = NULL
    //     0x4d3df0: mov          r2, NULL
    // 0x4d3df4: r1 = NULL
    //     0x4d3df4: mov          r1, NULL
    // 0x4d3df8: r8 = pp[0xfa8]
    //     0x4d3df8: ldr          r8, [PP, #0xfa8]
    // 0x4d3dfc: r3 = pp[0x365]
    //     0x4d3dfc: add          r3, PP, #0x15, lsl #12
    //     0x4d3e00: ldr          r3, [r3, #0x350]
    // 0x4d3e04: r0 = call 0x285664
    //     0x4d3e04: bl           0x285664
    //     0x4d3e08: ldur         r0, [fp, #-0x10]
    // 0x4d3e0c: r1 = LoadClassIdInstr(r0)
    //     0x4d3e0c: ldur         r1, [r0, #-1]
    //     0x4d3e10: ubfx         r1, r1, #0xc, #0x14
    // 0x4d3e14: BARRIER = pp[0x908]
    //     0x4d3e14: ldr          BARRIER, [PP, #0x908]
    //     0x4d3e18: stp          r0, BARRIER, [SP]
    // 0x4d3e1c: r0 = r1
    //     0x4d3e1c: mov          r0, r1
    // 0x4d3e20: r4 = pp[0x910]
    //     0x4d3e20: ldr          r4, [PP, #0x910]
    //     0x4d3e24: mov          r17, #0x8729
    //     0x4d3e28: add          lr, r0, r17
    //     0x4d3e2c: ldr          lr, [r21, lr, lsl #3]
    // 0x4d3e30: r0 = [R]()
    //     0x4d3e30: blr          lr
    // 0x4d3e34: r1 = LoadClassIdInstr(r0)
    //     0x4d3e34: ldur         r1, [r0, #-1]
    //     0x4d3e38: ubfx         r1, r1, #0xc, #0x14
    // 0x4d3e3c: BARRIER = r0
    //     0x4d3e3c: mov          BARRIER, r0
    // 0x4d3e40: r0 = r1
    //     0x4d3e40: mov          r0, r1
    // 0x4d3e44: r1 = BARRIER
    //     0x4d3e44: mov          r1, BARRIER
    // 0x4d3e48: r4 = pp[0x4c0]
    //     0x4d3e48: ldr          r4, [PP, #0x4c0]
    //     0x4d3e4c: add          lr, r0, #0x35e
    //     0x4d3e50: ldr          lr, [r21, lr, lsl #3]
    // 0x4d3e54: r0 = [R]()
    //     0x4d3e54: blr          lr
    //     0x4d3e58: ldur         r1, [fp, #-8]
    // 0x4d3e5c: StoreField: r1->field_b = r0
    //     0x4d3e5c: stur         r0, [r1, #0xb]
    //     0x4d3e60: ldurb        r16, [r1, #-1]
    //     0x4d3e64: ldurb        r17, [r0, #-1]
    //     0x4d3e68: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d3e6c: tst          BARRIER, HEAP, lsr #32
    // 0x4d3e70: b.eq 0x4d3e78
    //     0x4d3e70: b.eq         0x4d3e78
    // 0x4d3e74: r0 = call 0x61e04c
    //     0x4d3e74: bl           0x61e04c
    // 0x4d3e78: r0 = NULL
    //     0x4d3e78: mov          r0, NULL
    // 0x4d3e7c: SP = fp
    //     0x4d3e7c: mov          SP, fp
    // 0x4d3e80: LeaveFrame
    //     0x4d3e80: ldp          fp, lr, [SP], #0x10
    // 0x4d3e84: ret
    //     0x4d3e84: ret          
    // 0x4d3e88: r0 = call 0x61fa28
    //     0x4d3e88: bl           0x61fa28
    // 0x4d3e8c: b 0x4d3ca8
    //     0x4d3e8c: b            0x4d3ca8
  }

  _anon_closure() {
    // ** addr: 0x4d3e90, size: 0x60
    // 0x4d3e90: EnterFrame
    //     0x4d3e90: stp          fp, lr, [SP, #-0x10]!
    //     0x4d3e94: mov          fp, SP
    // 0x4d3e98: AllocStack(8)
    //     0x4d3e98: sub          SP, SP, #8
    // 0x4d3e9c: CheckStackOverflow
    //     0x4d3e9c: ldr          BARRIER, [THR, #0x38]
    //     0x4d3ea0: cmp          SP, BARRIER
    //     0x4d3ea4: b.ls         0x4d3ee8
    //     0x4d3ea8: ldr          r0, [fp, #0x10]
    // 0x4d3eac: r2 = NULL
    //     0x4d3eac: mov          r2, NULL
    // 0x4d3eb0: r1 = NULL
    //     0x4d3eb0: mov          r1, NULL
    // 0x4d3eb4: r8 = pp[0x3cd0]
    //     0x4d3eb4: ldr          r8, [PP, #0x3cd0]
    // 0x4d3eb8: r3 = pp[0x375]
    //     0x4d3eb8: add          r3, PP, #0x15, lsl #12
    //     0x4d3ebc: ldr          r3, [r3, #0x360]
    // 0x4d3ec0: r0 = call 0x2b15f0
    //     0x4d3ec0: bl           0x2b15f0
    // 0x4d3ec4: r0 = call 0x4d2178
    //     0x4d3ec4: bl           0x4d2178
    // 0x4d3ec8: r1 = r0
    //     0x4d3ec8: mov          r1, r0
    //     0x4d3ecc: ldr          r2, [fp, #0x10]
    //     0x4d3ed0: stur         r0, [fp, #-8]
    // 0x4d3ed4: r0 = soul_flutter_international$model$game_fruit_model_BetItemInfo::ctor_fromJson()
    //     0x4d3ed4: bl           0x4d1f58
    //     0x4d3ed8: ldur         r0, [fp, #-8]
    // 0x4d3edc: SP = fp
    //     0x4d3edc: mov          SP, fp
    // 0x4d3ee0: LeaveFrame
    //     0x4d3ee0: ldp          fp, lr, [SP], #0x10
    // 0x4d3ee4: ret
    //     0x4d3ee4: ret          
    // 0x4d3ee8: r0 = call 0x61fa28
    //     0x4d3ee8: bl           0x61fa28
    // 0x4d3eec: b 0x4d3ea8
    //     0x4d3eec: b            0x4d3ea8
  }
