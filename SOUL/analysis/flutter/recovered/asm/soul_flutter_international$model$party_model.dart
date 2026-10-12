// lib: , url: soul_flutter_international$model$party_model


  ctor_fromJson() {
    // ** addr: 0x3acd20, size: 0x20c
    // 0x3acd20: EnterFrame
    //     0x3acd20: stp          fp, lr, [SP, #-0x10]!
    //     0x3acd24: mov          fp, SP
    // 0x3acd28: AllocStack(0x28)
    //     0x3acd28: sub          SP, SP, #0x28
    // 0x3acd2c: r0 = pp[0x40]
    //     0x3acd2c: ldr          r0, [PP, #0x40]
    // 0x3acd30: r4 = r1
    //     0x3acd30: mov          r4, r1
    // 0x3acd34: r3 = r2
    //     0x3acd34: mov          r3, r2
    //     0x3acd38: stur         r1, [fp, #-8]
    //     0x3acd3c: stur         r2, [fp, #-0x10]
    // 0x3acd40: CheckStackOverflow
    //     0x3acd40: ldr          BARRIER, [THR, #0x38]
    //     0x3acd44: cmp          SP, BARRIER
    //     0x3acd48: b.ls         0x3acf24
    // 0x3acd4c: StoreField: r4->field_7 = r0
    //     0x3acd4c: stur         r0, [r4, #7]
    // 0x3acd50: StoreField: r4->field_b = r0
    //     0x3acd50: stur         r0, [r4, #0xb]
    // 0x3acd54: StoreField: r4->field_f = r0
    //     0x3acd54: stur         r0, [r4, #0xf]
    // 0x3acd58: r0 = LoadClassIdInstr(r3)
    //     0x3acd58: ldur         r0, [r3, #-1]
    //     0x3acd5c: ubfx         r0, r0, #0xc, #0x14
    // 0x3acd60: r1 = r3
    //     0x3acd60: mov          r1, r3
    // 0x3acd64: r2 = pp[0x4c9]
    //     0x3acd64: add          r2, PP, #0x11, lsl #12
    //     0x3acd68: ldr          r2, [r2, #0x4b8]
    //     0x3acd6c: sub          lr, r0, #1, lsl #12
    //     0x3acd70: ldr          lr, [r21, lr, lsl #3]
    // 0x3acd74: r0 = [R]()
    //     0x3acd74: blr          lr
    //     0x3acd78: cmp          r0, r22
    // 0x3acd7c: b.ne 0x3acd88
    //     0x3acd7c: b.ne         0x3acd88
    //     0x3acd80: mov          r5, #0
    // 0x3acd84: b 0x3acd8c
    //     0x3acd84: b            0x3acd8c
    // 0x3acd88: r5 = r0
    //     0x3acd88: mov          r5, r0
    //     0x3acd8c: ldur         r4, [fp, #-8]
    //     0x3acd90: ldur         r3, [fp, #-0x10]
    // 0x3acd94: r0 = r5
    //     0x3acd94: mov          r0, r5
    //     0x3acd98: stur         r5, [fp, #-0x18]
    // 0x3acd9c: r2 = NULL
    //     0x3acd9c: mov          r2, NULL
    // 0x3acda0: r1 = NULL
    //     0x3acda0: mov          r1, NULL
    // 0x3acda4: branchIfSmi(r0, 0x3acdcc)
    //     0x3acda4: tbz          r0, #0, 0x3acdcc
    // 0x3acda8: r4 = LoadClassIdInstr(r0)
    //     0x3acda8: ldur         r4, [r0, #-1]
    //     0x3acdac: ubfx         r4, r4, #0xc, #0x14
    //     0x3acdb0: sub          r4, r4, #0x3c
    //     0x3acdb4: cmp          r4, #1
    // 0x3acdb8: b.ls 0x3acdcc
    //     0x3acdb8: b.ls         0x3acdcc
    // 0x3acdbc: r8 = pp[0x1170]
    //     0x3acdbc: ldr          r8, [PP, #0x1170]
    // 0x3acdc0: r3 = pp[0x4d1]
    //     0x3acdc0: add          r3, PP, #0x11, lsl #12
    //     0x3acdc4: ldr          r3, [r3, #0x4c0]
    // 0x3acdc8: r0 = call 0x62aa34
    //     0x3acdc8: bl           0x62aa34
    //     0x3acdcc: ldur         r0, [fp, #-0x18]
    //     0x3acdd0: sbfx         r1, r0, #1, #0x1f
    // 0x3acdd4: branchIfSmi(r0, 0x3acddc)
    //     0x3acdd4: tbz          r0, #0, 0x3acddc
    // 0x3acdd8: LoadField: r1 = r0->field_7
    //     0x3acdd8: ldur         r1, [r0, #7]
    // 0x3acddc: r0 = dart_core_DateTime::_validateMilliseconds()
    //     0x3acddc: bl           0x3adab8
    //     0x3acde0: mov          BARRIER, #0x3e8
    //     0x3acde4: mul          r2, r0, BARRIER
    //     0x3acde8: stur         r2, [fp, #-0x20]
    // 0x3acdec: r0 = call 0x3adaac
    //     0x3acdec: bl           0x3adaac
    // 0x3acdf0: r1 = r0
    //     0x3acdf0: mov          r1, r0
    //     0x3acdf4: ldur         r2, [fp, #-0x20]
    //     0x3acdf8: add          r3, NULL, #0x30
    //     0x3acdfc: stur         r0, [fp, #-0x18]
    // 0x3ace00: r0 = dart_core_DateTime::ctor__withValue()
    //     0x3ace00: bl           0x3acfd0
    //     0x3ace04: ldur         r1, [fp, #-0x18]
    // 0x3ace08: r0 = dart_core_DateTime::toLocal()
    //     0x3ace08: bl           0x3acf4c
    //     0x3ace0c: str          r0, [SP]
    // 0x3ace10: r0 = dart_core_DateTime::toString()
    //     0x3ace10: bl           0x48f214
    //     0x3ace14: mov          BARRIER, #0x14
    //     0x3ace18: str          BARRIER, [SP]
    // 0x3ace1c: r1 = r0
    //     0x3ace1c: mov          r1, r0
    //     0x3ace20: mov          r2, #0
    // 0x3ace24: r4 = pp[0x280]
    //     0x3ace24: ldr          r4, [PP, #0x280]
    // 0x3ace28: r0 = dart_core__StringBase::substring()
    //     0x3ace28: bl           0x281608
    //     0x3ace2c: ldur         r3, [fp, #-8]
    // 0x3ace30: StoreField: r3->field_7 = r0
    //     0x3ace30: stur         r0, [r3, #7]
    //     0x3ace34: ldurb        r16, [r3, #-1]
    //     0x3ace38: ldurb        r17, [r0, #-1]
    //     0x3ace3c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3ace40: tst          BARRIER, HEAP, lsr #32
    // 0x3ace44: b.eq 0x3ace4c
    //     0x3ace44: b.eq         0x3ace4c
    // 0x3ace48: r0 = call 0x61e08c
    //     0x3ace48: bl           0x61e08c
    //     0x3ace4c: ldur         r4, [fp, #-0x10]
    // 0x3ace50: r0 = LoadClassIdInstr(r4)
    //     0x3ace50: ldur         r0, [r4, #-1]
    //     0x3ace54: ubfx         r0, r0, #0xc, #0x14
    // 0x3ace58: r1 = r4
    //     0x3ace58: mov          r1, r4
    // 0x3ace5c: r2 = pp[0xba0]
    //     0x3ace5c: add          r2, PP, #0x10, lsl #12
    //     0x3ace60: ldr          r2, [r2, #0xb90]
    //     0x3ace64: sub          lr, r0, #1, lsl #12
    //     0x3ace68: ldr          lr, [r21, lr, lsl #3]
    // 0x3ace6c: r0 = [R]()
    //     0x3ace6c: blr          lr
    //     0x3ace70: cmp          r0, r22
    // 0x3ace74: b.ne 0x3ace80
    //     0x3ace74: b.ne         0x3ace80
    //     0x3ace78: mov          r2, #0
    // 0x3ace7c: b 0x3ace84
    //     0x3ace7c: b            0x3ace84
    // 0x3ace80: r2 = r0
    //     0x3ace80: mov          r2, r0
    //     0x3ace84: ldur         r0, [fp, #-8]
    //     0x3ace88: ldur         r1, [fp, #-0x10]
    //     0x3ace8c: str          r2, [SP]
    // 0x3ace90: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x3ace90: bl           0x2ac0a0
    //     0x3ace94: ldur         r3, [fp, #-8]
    // 0x3ace98: StoreField: r3->field_b = r0
    //     0x3ace98: stur         r0, [r3, #0xb]
    //     0x3ace9c: ldurb        r16, [r3, #-1]
    //     0x3acea0: ldurb        r17, [r0, #-1]
    //     0x3acea4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3acea8: tst          BARRIER, HEAP, lsr #32
    // 0x3aceac: b.eq 0x3aceb4
    //     0x3aceac: b.eq         0x3aceb4
    // 0x3aceb0: r0 = call 0x61e08c
    //     0x3aceb0: bl           0x61e08c
    //     0x3aceb4: ldur         r1, [fp, #-0x10]
    // 0x3aceb8: r0 = LoadClassIdInstr(r1)
    //     0x3aceb8: ldur         r0, [r1, #-1]
    //     0x3acebc: ubfx         r0, r0, #0xc, #0x14
    // 0x3acec0: r2 = pp[0xba8]
    //     0x3acec0: add          r2, PP, #0x10, lsl #12
    //     0x3acec4: ldr          r2, [r2, #0xb98]
    //     0x3acec8: sub          lr, r0, #1, lsl #12
    //     0x3acecc: ldr          lr, [r21, lr, lsl #3]
    // 0x3aced0: r0 = [R]()
    //     0x3aced0: blr          lr
    //     0x3aced4: cmp          r0, r22
    // 0x3aced8: b.ne 0x3acee4
    //     0x3aced8: b.ne         0x3acee4
    //     0x3acedc: mov          r1, #0
    // 0x3acee0: b 0x3acee8
    //     0x3acee0: b            0x3acee8
    // 0x3acee4: r1 = r0
    //     0x3acee4: mov          r1, r0
    //     0x3acee8: ldur         r0, [fp, #-8]
    //     0x3aceec: str          r1, [SP]
    // 0x3acef0: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x3acef0: bl           0x2ac0a0
    //     0x3acef4: ldur         r1, [fp, #-8]
    // 0x3acef8: StoreField: r1->field_f = r0
    //     0x3acef8: stur         r0, [r1, #0xf]
    //     0x3acefc: ldurb        r16, [r1, #-1]
    //     0x3acf00: ldurb        r17, [r0, #-1]
    //     0x3acf04: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3acf08: tst          BARRIER, HEAP, lsr #32
    // 0x3acf0c: b.eq 0x3acf14
    //     0x3acf0c: b.eq         0x3acf14
    // 0x3acf10: r0 = call 0x61e04c
    //     0x3acf10: bl           0x61e04c
    // 0x3acf14: r0 = NULL
    //     0x3acf14: mov          r0, NULL
    // 0x3acf18: SP = fp
    //     0x3acf18: mov          SP, fp
    // 0x3acf1c: LeaveFrame
    //     0x3acf1c: ldp          fp, lr, [SP], #0x10
    // 0x3acf20: ret
    //     0x3acf20: ret          
    // 0x3acf24: r0 = call 0x61fa28
    //     0x3acf24: bl           0x61fa28
    // 0x3acf28: b 0x3acd4c
    //     0x3acf28: b            0x3acd4c
  }

  ctor_fromJson() {
    // ** addr: 0x422f0c, size: 0x84
    // 0x422f0c: EnterFrame
    //     0x422f0c: stp          fp, lr, [SP, #-0x10]!
    //     0x422f10: mov          fp, SP
    // 0x422f14: AllocStack(0x10)
    //     0x422f14: sub          SP, SP, #0x10
    // 0x422f18: r0 = pp[0x40]
    //     0x422f18: ldr          r0, [PP, #0x40]
    //     0x422f1c: stur         r1, [fp, #-8]
    //     0x422f20: stur         r2, [fp, #-0x10]
    // 0x422f24: CheckStackOverflow
    //     0x422f24: ldr          BARRIER, [THR, #0x38]
    //     0x422f28: cmp          SP, BARRIER
    //     0x422f2c: b.ls         0x422f88
    // 0x422f30: StoreField: r1->field_7 = r0
    //     0x422f30: stur         r0, [r1, #7]
    // 0x422f34: StoreField: r1->field_b = r0
    //     0x422f34: stur         r0, [r1, #0xb]
    // 0x422f38: r0 = call 0x4234f8
    //     0x422f38: bl           0x4234f8
    // 0x422f3c: r1 = r0
    //     0x422f3c: mov          r1, r0
    //     0x422f40: ldur         r2, [fp, #-0x10]
    //     0x422f44: stur         r0, [fp, #-0x10]
    // 0x422f48: r0 = soul_flutter_international$model$chat_model_ChatItemInfo::ctor_fromJson()
    //     0x422f48: bl           0x422f90
    //     0x422f4c: ldur         r0, [fp, #-0x10]
    //     0x422f50: ldur         r1, [fp, #-8]
    // 0x422f54: StoreField: r1->field_7 = r0
    //     0x422f54: stur         r0, [r1, #7]
    //     0x422f58: ldurb        r16, [r1, #-1]
    //     0x422f5c: ldurb        r17, [r0, #-1]
    //     0x422f60: and          BARRIER, r17, BARRIER, lsr #2
    //     0x422f64: tst          BARRIER, HEAP, lsr #32
    // 0x422f68: b.eq 0x422f70
    //     0x422f68: b.eq         0x422f70
    // 0x422f6c: r0 = call 0x61e04c
    //     0x422f6c: bl           0x61e04c
    //     0x422f70: add          r2, NULL, #0x30
    // 0x422f74: StoreField: r1->field_b = r2
    //     0x422f74: stur         r2, [r1, #0xb]
    // 0x422f78: r0 = NULL
    //     0x422f78: mov          r0, NULL
    // 0x422f7c: SP = fp
    //     0x422f7c: mov          SP, fp
    // 0x422f80: LeaveFrame
    //     0x422f80: ldp          fp, lr, [SP], #0x10
    // 0x422f84: ret
    //     0x422f84: ret          
    // 0x422f88: r0 = call 0x61fa28
    //     0x422f88: bl           0x61fa28
    // 0x422f8c: b 0x422f30
    //     0x422f8c: b            0x422f30
  }

  get_hashCode() {
    // ** addr: 0x489b50, size: 0xac
    // 0x489b50: EnterFrame
    //     0x489b50: stp          fp, lr, [SP, #-0x10]!
    //     0x489b54: mov          fp, SP
    // 0x489b58: AllocStack(8)
    //     0x489b58: sub          SP, SP, #8
    // 0x489b5c: CheckStackOverflow
    //     0x489b5c: ldr          BARRIER, [THR, #0x38]
    //     0x489b60: cmp          SP, BARRIER
    //     0x489b64: b.ls         0x489bd0
    //     0x489b68: ldr          r0, [fp, #0x10]
    // 0x489b6c: LoadField: r1 = r0->field_7
    //     0x489b6c: ldur         r1, [r0, #7]
    //     0x489b70: add          r1, r1, HEAP, lsl #32
    // 0x489b74: BARRIER = pp[0x40]
    //     0x489b74: ldr          BARRIER, [PP, #0x40]
    //     0x489b78: cmp          r1, r16
    // 0x489b7c: b.eq 0x489bd8
    //     0x489b7c: b.eq         0x489bd8
    // 0x489b80: LoadField: r0 = r1->field_7
    //     0x489b80: ldur         r0, [r1, #7]
    //     0x489b84: add          r0, r0, HEAP, lsl #32
    // 0x489b88: BARRIER = pp[0x40]
    //     0x489b88: ldr          BARRIER, [PP, #0x40]
    //     0x489b8c: cmp          r0, r16
    // 0x489b90: b.eq 0x489be4
    //     0x489b90: b.eq         0x489be4
    // 0x489b94: LoadField: r1 = r0->field_7
    //     0x489b94: ldur         r1, [r0, #7]
    //     0x489b98: add          r1, r1, HEAP, lsl #32
    // 0x489b9c: BARRIER = pp[0x40]
    //     0x489b9c: ldr          BARRIER, [PP, #0x40]
    //     0x489ba0: cmp          r1, r16
    // 0x489ba4: b.eq 0x489bf0
    //     0x489ba4: b.eq         0x489bf0
    // 0x489ba8: r0 = LoadClassIdInstr(r1)
    //     0x489ba8: ldur         r0, [r1, #-1]
    //     0x489bac: ubfx         r0, r0, #0xc, #0x14
    //     0x489bb0: str          r1, [SP]
    //     0x489bb4: mov          r17, #0x4d80
    //     0x489bb8: add          lr, r0, r17
    //     0x489bbc: ldr          lr, [r21, lr, lsl #3]
    // 0x489bc0: r0 = [R]()
    //     0x489bc0: blr          lr
    // 0x489bc4: SP = fp
    //     0x489bc4: mov          SP, fp
    // 0x489bc8: LeaveFrame
    //     0x489bc8: ldp          fp, lr, [SP], #0x10
    // 0x489bcc: ret
    //     0x489bcc: ret          
    // 0x489bd0: r0 = call 0x61fa28
    //     0x489bd0: bl           0x61fa28
    // 0x489bd4: b 0x489b68
    //     0x489bd4: b            0x489b68
    // 0x489bd8: r9 = pp[0x749]
    //     0x489bd8: add          r9, PP, #0x11, lsl #12
    //     0x489bdc: ldr          r9, [r9, #0x738]
    // 0x489be0: r0 = call 0x620258
    //     0x489be0: bl           0x620258
    // 0x489be4: r9 = pp[0x751]
    //     0x489be4: add          r9, PP, #0x11, lsl #12
    //     0x489be8: ldr          r9, [r9, #0x740]
    // 0x489bec: r0 = call 0x620258
    //     0x489bec: bl           0x620258
    // 0x489bf0: r9 = pp[0x759]
    //     0x489bf0: add          r9, PP, #0x11, lsl #12
    //     0x489bf4: ldr          r9, [r9, #0x748]
    // 0x489bf8: r0 = call 0x620258
    //     0x489bf8: bl           0x620258
  }

  op_eq() {
    // ** addr: 0x5780a8, size: 0x148
    // 0x5780a8: EnterFrame
    //     0x5780a8: stp          fp, lr, [SP, #-0x10]!
    //     0x5780ac: mov          fp, SP
    // 0x5780b0: AllocStack(0x10)
    //     0x5780b0: sub          SP, SP, #0x10
    // 0x5780b4: CheckStackOverflow
    //     0x5780b4: ldr          BARRIER, [THR, #0x38]
    //     0x5780b8: cmp          SP, BARRIER
    //     0x5780bc: b.ls         0x5781a0
    //     0x5780c0: ldr          r0, [fp, #0x10]
    //     0x5780c4: cmp          r0, r22
    // 0x5780c8: b.ne 0x5780dc
    //     0x5780c8: b.ne         0x5780dc
    //     0x5780cc: add          r0, NULL, #0x30
    // 0x5780d0: SP = fp
    //     0x5780d0: mov          SP, fp
    // 0x5780d4: LeaveFrame
    //     0x5780d4: ldp          fp, lr, [SP], #0x10
    // 0x5780d8: ret
    //     0x5780d8: ret          
    //     0x5780dc: mov          r1, #0x3c
    // 0x5780e0: branchIfSmi(r0, 0x5780ec)
    //     0x5780e0: tbz          r0, #0, 0x5780ec
    // 0x5780e4: r1 = LoadClassIdInstr(r0)
    //     0x5780e4: ldur         r1, [r0, #-1]
    //     0x5780e8: ubfx         r1, r1, #0xc, #0x14
    //     0x5780ec: cmp          r1, #0xee
    // 0x5780f0: b.ne 0x578190
    //     0x5780f0: b.ne         0x578190
    //     0x5780f4: ldr          r1, [fp, #0x18]
    // 0x5780f8: LoadField: r2 = r0->field_7
    //     0x5780f8: ldur         r2, [r0, #7]
    //     0x5780fc: add          r2, r2, HEAP, lsl #32
    // 0x578100: BARRIER = pp[0x40]
    //     0x578100: ldr          BARRIER, [PP, #0x40]
    //     0x578104: cmp          r2, r16
    // 0x578108: b.eq 0x5781a8
    //     0x578108: b.eq         0x5781a8
    // 0x57810c: LoadField: r0 = r2->field_7
    //     0x57810c: ldur         r0, [r2, #7]
    //     0x578110: add          r0, r0, HEAP, lsl #32
    // 0x578114: BARRIER = pp[0x40]
    //     0x578114: ldr          BARRIER, [PP, #0x40]
    //     0x578118: cmp          r0, r16
    // 0x57811c: b.eq 0x5781b4
    //     0x57811c: b.eq         0x5781b4
    // 0x578120: LoadField: r2 = r0->field_7
    //     0x578120: ldur         r2, [r0, #7]
    //     0x578124: add          r2, r2, HEAP, lsl #32
    // 0x578128: BARRIER = pp[0x40]
    //     0x578128: ldr          BARRIER, [PP, #0x40]
    //     0x57812c: cmp          r2, r16
    // 0x578130: b.eq 0x5781c0
    //     0x578130: b.eq         0x5781c0
    // 0x578134: LoadField: r0 = r1->field_7
    //     0x578134: ldur         r0, [r1, #7]
    //     0x578138: add          r0, r0, HEAP, lsl #32
    // 0x57813c: BARRIER = pp[0x40]
    //     0x57813c: ldr          BARRIER, [PP, #0x40]
    //     0x578140: cmp          r0, r16
    // 0x578144: b.eq 0x5781cc
    //     0x578144: b.eq         0x5781cc
    // 0x578148: LoadField: r1 = r0->field_7
    //     0x578148: ldur         r1, [r0, #7]
    //     0x57814c: add          r1, r1, HEAP, lsl #32
    // 0x578150: BARRIER = pp[0x40]
    //     0x578150: ldr          BARRIER, [PP, #0x40]
    //     0x578154: cmp          r1, r16
    // 0x578158: b.eq 0x5781d8
    //     0x578158: b.eq         0x5781d8
    // 0x57815c: LoadField: r0 = r1->field_7
    //     0x57815c: ldur         r0, [r1, #7]
    //     0x578160: add          r0, r0, HEAP, lsl #32
    // 0x578164: BARRIER = pp[0x40]
    //     0x578164: ldr          BARRIER, [PP, #0x40]
    //     0x578168: cmp          r0, r16
    // 0x57816c: b.eq 0x5781e4
    //     0x57816c: b.eq         0x5781e4
    // 0x578170: r1 = LoadClassIdInstr(r2)
    //     0x578170: ldur         r1, [r2, #-1]
    //     0x578174: ubfx         r1, r1, #0xc, #0x14
    //     0x578178: stp          r0, r2, [SP]
    // 0x57817c: r0 = r1
    //     0x57817c: mov          r0, r1
    // 0x578180: lr = r0
    //     0x578180: mov          lr, r0
    //     0x578184: ldr          lr, [r21, lr, lsl #3]
    // 0x578188: r0 = [R]()
    //     0x578188: blr          lr
    // 0x57818c: b 0x578194
    //     0x57818c: b            0x578194
    //     0x578190: add          r0, NULL, #0x30
    // 0x578194: SP = fp
    //     0x578194: mov          SP, fp
    // 0x578198: LeaveFrame
    //     0x578198: ldp          fp, lr, [SP], #0x10
    // 0x57819c: ret
    //     0x57819c: ret          
    // 0x5781a0: r0 = call 0x61fa28
    //     0x5781a0: bl           0x61fa28
    // 0x5781a4: b 0x5780c0
    //     0x5781a4: b            0x5780c0
    // 0x5781a8: r9 = pp[0x749]
    //     0x5781a8: add          r9, PP, #0x11, lsl #12
    //     0x5781ac: ldr          r9, [r9, #0x738]
    // 0x5781b0: r0 = call 0x620258
    //     0x5781b0: bl           0x620258
    // 0x5781b4: r9 = pp[0x751]
    //     0x5781b4: add          r9, PP, #0x11, lsl #12
    //     0x5781b8: ldr          r9, [r9, #0x740]
    // 0x5781bc: r0 = call 0x620258
    //     0x5781bc: bl           0x620258
    // 0x5781c0: r9 = pp[0x759]
    //     0x5781c0: add          r9, PP, #0x11, lsl #12
    //     0x5781c4: ldr          r9, [r9, #0x748]
    // 0x5781c8: r0 = call 0x620258
    //     0x5781c8: bl           0x620258
    // 0x5781cc: r9 = pp[0x749]
    //     0x5781cc: add          r9, PP, #0x11, lsl #12
    //     0x5781d0: ldr          r9, [r9, #0x738]
    // 0x5781d4: r0 = call 0x620258
    //     0x5781d4: bl           0x620258
    // 0x5781d8: r9 = pp[0x751]
    //     0x5781d8: add          r9, PP, #0x11, lsl #12
    //     0x5781dc: ldr          r9, [r9, #0x740]
    // 0x5781e0: r0 = call 0x620258
    //     0x5781e0: bl           0x620258
    // 0x5781e4: r9 = pp[0x759]
    //     0x5781e4: add          r9, PP, #0x11, lsl #12
    //     0x5781e8: ldr          r9, [r9, #0x748]
    // 0x5781ec: r0 = call 0x620258
    //     0x5781ec: bl           0x620258
  }

  ctor_fromJson() {
    // ** addr: 0x428474, size: 0x4e8
    // 0x428474: EnterFrame
    //     0x428474: stp          fp, lr, [SP, #-0x10]!
    //     0x428478: mov          fp, SP
    // 0x42847c: AllocStack(0x28)
    //     0x42847c: sub          SP, SP, #0x28
    // 0x428480: r0 = pp[0x40]
    //     0x428480: ldr          r0, [PP, #0x40]
    // 0x428484: r4 = r1
    //     0x428484: mov          r4, r1
    // 0x428488: r3 = r2
    //     0x428488: mov          r3, r2
    //     0x42848c: stur         r1, [fp, #-8]
    //     0x428490: stur         r2, [fp, #-0x10]
    // 0x428494: CheckStackOverflow
    //     0x428494: ldr          BARRIER, [THR, #0x38]
    //     0x428498: cmp          SP, BARRIER
    //     0x42849c: b.ls         0x428954
    // 0x4284a0: StoreField: r4->field_7 = r0
    //     0x4284a0: stur         r0, [r4, #7]
    // 0x4284a4: StoreField: r4->field_b = r0
    //     0x4284a4: stur         r0, [r4, #0xb]
    // 0x4284a8: StoreField: r4->field_f = r0
    //     0x4284a8: stur         r0, [r4, #0xf]
    // 0x4284ac: StoreField: r4->field_13 = r0
    //     0x4284ac: stur         r0, [r4, #0x13]
    // 0x4284b0: ArrayStore: r4[0] = r0  ; List_8
    //     0x4284b0: stur         r0, [r4, #0x17]
    // 0x4284b4: StoreField: r4->field_1b = r0
    //     0x4284b4: stur         r0, [r4, #0x1b]
    // 0x4284b8: r0 = LoadClassIdInstr(r3)
    //     0x4284b8: ldur         r0, [r3, #-1]
    //     0x4284bc: ubfx         r0, r0, #0xc, #0x14
    // 0x4284c0: r1 = r3
    //     0x4284c0: mov          r1, r3
    // 0x4284c4: r2 = pp[0x526]
    //     0x4284c4: add          r2, PP, #0xe, lsl #12
    //     0x4284c8: ldr          r2, [r2, #0x518]
    //     0x4284cc: sub          lr, r0, #1, lsl #12
    //     0x4284d0: ldr          lr, [r21, lr, lsl #3]
    // 0x4284d4: r0 = [R]()
    //     0x4284d4: blr          lr
    //     0x4284d8: cmp          r0, r22
    // 0x4284dc: b.ne 0x4284e8
    //     0x4284dc: b.ne         0x4284e8
    // 0x4284e0: r0 = NULL
    //     0x4284e0: mov          r0, NULL
    // 0x4284e4: b 0x428514
    //     0x4284e4: b            0x428514
    //     0x4284e8: mov          r1, #0x3c
    // 0x4284ec: branchIfSmi(r0, 0x4284f8)
    //     0x4284ec: tbz          r0, #0, 0x4284f8
    // 0x4284f0: r1 = LoadClassIdInstr(r0)
    //     0x4284f0: ldur         r1, [r0, #-1]
    //     0x4284f4: ubfx         r1, r1, #0xc, #0x14
    //     0x4284f8: str          r0, [SP]
    // 0x4284fc: r0 = r1
    //     0x4284fc: mov          r0, r1
    // 0x428500: r4 = pp[0x3a8]
    //     0x428500: ldr          r4, [PP, #0x3a8]
    //     0x428504: mov          r17, #0x3e07
    //     0x428508: add          lr, r0, r17
    //     0x42850c: ldr          lr, [r21, lr, lsl #3]
    // 0x428510: r0 = [R]()
    //     0x428510: blr          lr
    //     0x428514: cmp          r0, r22
    // 0x428518: b.ne 0x428520
    //     0x428518: b.ne         0x428520
    // 0x42851c: r0 = pp[0x148]
    //     0x42851c: ldr          r0, [PP, #0x148]
    //     0x428520: ldur         r4, [fp, #-8]
    //     0x428524: ldur         r3, [fp, #-0x10]
    // 0x428528: StoreField: r4->field_7 = r0
    //     0x428528: stur         r0, [r4, #7]
    //     0x42852c: ldurb        r16, [r4, #-1]
    //     0x428530: ldurb        r17, [r0, #-1]
    //     0x428534: and          BARRIER, r17, BARRIER, lsr #2
    //     0x428538: tst          BARRIER, HEAP, lsr #32
    // 0x42853c: b.eq 0x428544
    //     0x42853c: b.eq         0x428544
    // 0x428540: r0 = call 0x61e0ac
    //     0x428540: bl           0x61e0ac
    // 0x428544: r0 = LoadClassIdInstr(r3)
    //     0x428544: ldur         r0, [r3, #-1]
    //     0x428548: ubfx         r0, r0, #0xc, #0x14
    // 0x42854c: r1 = r3
    //     0x42854c: mov          r1, r3
    // 0x428550: r2 = pp[0xf20]
    //     0x428550: add          r2, PP, #0x10, lsl #12
    //     0x428554: ldr          r2, [r2, #0xf10]
    //     0x428558: sub          lr, r0, #1, lsl #12
    //     0x42855c: ldr          lr, [r21, lr, lsl #3]
    // 0x428560: r0 = [R]()
    //     0x428560: blr          lr
    //     0x428564: cmp          r0, r22
    // 0x428568: b.eq 0x428598
    //     0x428568: b.eq         0x428598
    //     0x42856c: mov          r1, #0x3c
    // 0x428570: branchIfSmi(r0, 0x42857c)
    //     0x428570: tbz          r0, #0, 0x42857c
    // 0x428574: r1 = LoadClassIdInstr(r0)
    //     0x428574: ldur         r1, [r0, #-1]
    //     0x428578: ubfx         r1, r1, #0xc, #0x14
    //     0x42857c: str          r0, [SP]
    // 0x428580: r0 = r1
    //     0x428580: mov          r0, r1
    // 0x428584: r4 = pp[0x3a8]
    //     0x428584: ldr          r4, [PP, #0x3a8]
    //     0x428588: mov          r17, #0x3e07
    //     0x42858c: add          lr, r0, r17
    //     0x428590: ldr          lr, [r21, lr, lsl #3]
    // 0x428594: r0 = [R]()
    //     0x428594: blr          lr
    //     0x428598: ldur         r3, [fp, #-0x10]
    // 0x42859c: r0 = LoadClassIdInstr(r3)
    //     0x42859c: ldur         r0, [r3, #-1]
    //     0x4285a0: ubfx         r0, r0, #0xc, #0x14
    // 0x4285a4: r1 = r3
    //     0x4285a4: mov          r1, r3
    // 0x4285a8: r2 = pp[0xf28]
    //     0x4285a8: add          r2, PP, #0x10, lsl #12
    //     0x4285ac: ldr          r2, [r2, #0xf18]
    //     0x4285b0: sub          lr, r0, #1, lsl #12
    //     0x4285b4: ldr          lr, [r21, lr, lsl #3]
    // 0x4285b8: r0 = [R]()
    //     0x4285b8: blr          lr
    //     0x4285bc: cmp          r0, r22
    // 0x4285c0: b.ne 0x4285cc
    //     0x4285c0: b.ne         0x4285cc
    // 0x4285c4: r5 = pp[0x148]
    //     0x4285c4: ldr          r5, [PP, #0x148]
    // 0x4285c8: b 0x4285d0
    //     0x4285c8: b            0x4285d0
    // 0x4285cc: r5 = r0
    //     0x4285cc: mov          r5, r0
    //     0x4285d0: ldur         r4, [fp, #-8]
    //     0x4285d4: ldur         r3, [fp, #-0x10]
    // 0x4285d8: r0 = r5
    //     0x4285d8: mov          r0, r5
    //     0x4285dc: stur         r5, [fp, #-0x18]
    // 0x4285e0: r2 = NULL
    //     0x4285e0: mov          r2, NULL
    // 0x4285e4: r1 = NULL
    //     0x4285e4: mov          r1, NULL
    //     0x4285e8: mov          r4, #0x3c
    // 0x4285ec: branchIfSmi(r0, 0x4285f8)
    //     0x4285ec: tbz          r0, #0, 0x4285f8
    // 0x4285f0: r4 = LoadClassIdInstr(r0)
    //     0x4285f0: ldur         r4, [r0, #-1]
    //     0x4285f4: ubfx         r4, r4, #0xc, #0x14
    //     0x4285f8: sub          r4, r4, #0x5e
    //     0x4285fc: cmp          r4, #1
    // 0x428600: b.ls 0x428614
    //     0x428600: b.ls         0x428614
    // 0x428604: r8 = pp[0x2f8]
    //     0x428604: ldr          r8, [PP, #0x2f8]
    // 0x428608: r3 = pp[0xf30]
    //     0x428608: add          r3, PP, #0x10, lsl #12
    //     0x42860c: ldr          r3, [r3, #0xf20]
    // 0x428610: r0 = call 0x62a0c0
    //     0x428610: bl           0x62a0c0
    //     0x428614: ldur         r0, [fp, #-0x18]
    //     0x428618: ldur         r3, [fp, #-8]
    // 0x42861c: StoreField: r3->field_b = r0
    //     0x42861c: stur         r0, [r3, #0xb]
    //     0x428620: ldurb        r16, [r3, #-1]
    //     0x428624: ldurb        r17, [r0, #-1]
    //     0x428628: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42862c: tst          BARRIER, HEAP, lsr #32
    // 0x428630: b.eq 0x428638
    //     0x428630: b.eq         0x428638
    // 0x428634: r0 = call 0x61e08c
    //     0x428634: bl           0x61e08c
    //     0x428638: ldur         r4, [fp, #-0x10]
    // 0x42863c: r0 = LoadClassIdInstr(r4)
    //     0x42863c: ldur         r0, [r4, #-1]
    //     0x428640: ubfx         r0, r0, #0xc, #0x14
    // 0x428644: r1 = r4
    //     0x428644: mov          r1, r4
    // 0x428648: r2 = pp[0xf40]
    //     0x428648: add          r2, PP, #0x10, lsl #12
    //     0x42864c: ldr          r2, [r2, #0xf30]
    //     0x428650: sub          lr, r0, #1, lsl #12
    //     0x428654: ldr          lr, [r21, lr, lsl #3]
    // 0x428658: r0 = [R]()
    //     0x428658: blr          lr
    //     0x42865c: cmp          r0, r22
    // 0x428660: b.ne 0x42866c
    //     0x428660: b.ne         0x42866c
    //     0x428664: mov          r5, #0
    // 0x428668: b 0x428670
    //     0x428668: b            0x428670
    // 0x42866c: r5 = r0
    //     0x42866c: mov          r5, r0
    //     0x428670: ldur         r3, [fp, #-8]
    //     0x428674: ldur         r4, [fp, #-0x10]
    // 0x428678: r0 = r5
    //     0x428678: mov          r0, r5
    //     0x42867c: stur         r5, [fp, #-0x18]
    // 0x428680: r2 = NULL
    //     0x428680: mov          r2, NULL
    // 0x428684: r1 = NULL
    //     0x428684: mov          r1, NULL
    // 0x428688: branchIfSmi(r0, 0x4286b0)
    //     0x428688: tbz          r0, #0, 0x4286b0
    // 0x42868c: r4 = LoadClassIdInstr(r0)
    //     0x42868c: ldur         r4, [r0, #-1]
    //     0x428690: ubfx         r4, r4, #0xc, #0x14
    //     0x428694: sub          r4, r4, #0x3c
    //     0x428698: cmp          r4, #1
    // 0x42869c: b.ls 0x4286b0
    //     0x42869c: b.ls         0x4286b0
    // 0x4286a0: r8 = pp[0x1170]
    //     0x4286a0: ldr          r8, [PP, #0x1170]
    // 0x4286a4: r3 = pp[0xf48]
    //     0x4286a4: add          r3, PP, #0x10, lsl #12
    //     0x4286a8: ldr          r3, [r3, #0xf38]
    // 0x4286ac: r0 = call 0x62aa34
    //     0x4286ac: bl           0x62aa34
    //     0x4286b0: ldur         r0, [fp, #-0x18]
    //     0x4286b4: ldur         r3, [fp, #-8]
    // 0x4286b8: StoreField: r3->field_f = r0
    //     0x4286b8: stur         r0, [r3, #0xf]
    // 0x4286bc: branchIfSmi(r0, 0x4286d8)
    //     0x4286bc: tbz          r0, #0, 0x4286d8
    //     0x4286c0: ldurb        r16, [r3, #-1]
    //     0x4286c4: ldurb        r17, [r0, #-1]
    //     0x4286c8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4286cc: tst          BARRIER, HEAP, lsr #32
    // 0x4286d0: b.eq 0x4286d8
    //     0x4286d0: b.eq         0x4286d8
    // 0x4286d4: r0 = call 0x61e08c
    //     0x4286d4: bl           0x61e08c
    //     0x4286d8: ldur         r4, [fp, #-0x10]
    // 0x4286dc: r0 = LoadClassIdInstr(r4)
    //     0x4286dc: ldur         r0, [r4, #-1]
    //     0x4286e0: ubfx         r0, r0, #0xc, #0x14
    // 0x4286e4: r1 = r4
    //     0x4286e4: mov          r1, r4
    // 0x4286e8: r2 = pp[0xf58]
    //     0x4286e8: add          r2, PP, #0x10, lsl #12
    //     0x4286ec: ldr          r2, [r2, #0xf48]
    //     0x4286f0: sub          lr, r0, #1, lsl #12
    //     0x4286f4: ldr          lr, [r21, lr, lsl #3]
    // 0x4286f8: r0 = [R]()
    //     0x4286f8: blr          lr
    //     0x4286fc: cmp          r0, r22
    // 0x428700: b.ne 0x42871c
    //     0x428700: b.ne         0x42871c
    // 0x428704: BARRIER = pp[0xbf0]
    //     0x428704: ldr          BARRIER, [PP, #0xbf0]
    //     0x428708: ldr          lr, [THR, #0x90]
    //     0x42870c: stp          lr, BARRIER, [SP]
    // 0x428710: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x428710: bl           0x27c0c8
    // 0x428714: r5 = r0
    //     0x428714: mov          r5, r0
    // 0x428718: b 0x428720
    //     0x428718: b            0x428720
    // 0x42871c: r5 = r0
    //     0x42871c: mov          r5, r0
    //     0x428720: ldur         r3, [fp, #-8]
    //     0x428724: ldur         r4, [fp, #-0x10]
    // 0x428728: r0 = r5
    //     0x428728: mov          r0, r5
    //     0x42872c: stur         r5, [fp, #-0x18]
    // 0x428730: r2 = NULL
    //     0x428730: mov          r2, NULL
    // 0x428734: r1 = NULL
    //     0x428734: mov          r1, NULL
    // 0x428738: r8 = pp[0x3cd0]
    //     0x428738: ldr          r8, [PP, #0x3cd0]
    // 0x42873c: r3 = pp[0xf60]
    //     0x42873c: add          r3, PP, #0x10, lsl #12
    //     0x428740: ldr          r3, [r3, #0xf50]
    // 0x428744: r0 = call 0x2b15f0
    //     0x428744: bl           0x2b15f0
    // 0x428748: r0 = call 0x42906c
    //     0x428748: bl           0x42906c
    // 0x42874c: r1 = r0
    //     0x42874c: mov          r1, r0
    //     0x428750: ldur         r2, [fp, #-0x18]
    //     0x428754: stur         r0, [fp, #-0x18]
    // 0x428758: r0 = soul_flutter_international$model$party_model_PartyRoomOwner::ctor_fromJson()
    //     0x428758: bl           0x428dd4
    //     0x42875c: ldur         r0, [fp, #-0x18]
    //     0x428760: ldur         r3, [fp, #-8]
    // 0x428764: StoreField: r3->field_13 = r0
    //     0x428764: stur         r0, [r3, #0x13]
    //     0x428768: ldurb        r16, [r3, #-1]
    //     0x42876c: ldurb        r17, [r0, #-1]
    //     0x428770: and          BARRIER, r17, BARRIER, lsr #2
    //     0x428774: tst          BARRIER, HEAP, lsr #32
    // 0x428778: b.eq 0x428780
    //     0x428778: b.eq         0x428780
    // 0x42877c: r0 = call 0x61e08c
    //     0x42877c: bl           0x61e08c
    //     0x428780: ldur         r4, [fp, #-0x10]
    // 0x428784: r0 = LoadClassIdInstr(r4)
    //     0x428784: ldur         r0, [r4, #-1]
    //     0x428788: ubfx         r0, r0, #0xc, #0x14
    // 0x42878c: r1 = r4
    //     0x42878c: mov          r1, r4
    // 0x428790: r2 = pp[0xf70]
    //     0x428790: add          r2, PP, #0x10, lsl #12
    //     0x428794: ldr          r2, [r2, #0xf60]
    //     0x428798: sub          lr, r0, #1, lsl #12
    //     0x42879c: ldr          lr, [r21, lr, lsl #3]
    // 0x4287a0: r0 = [R]()
    //     0x4287a0: blr          lr
    //     0x4287a4: cmp          r0, r22
    // 0x4287a8: b.ne 0x4287c4
    //     0x4287a8: b.ne         0x4287c4
    // 0x4287ac: BARRIER = pp[0xbf0]
    //     0x4287ac: ldr          BARRIER, [PP, #0xbf0]
    //     0x4287b0: ldr          lr, [THR, #0x90]
    //     0x4287b4: stp          lr, BARRIER, [SP]
    // 0x4287b8: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x4287b8: bl           0x27c0c8
    // 0x4287bc: r5 = r0
    //     0x4287bc: mov          r5, r0
    // 0x4287c0: b 0x4287c8
    //     0x4287c0: b            0x4287c8
    // 0x4287c4: r5 = r0
    //     0x4287c4: mov          r5, r0
    //     0x4287c8: ldur         r3, [fp, #-8]
    //     0x4287cc: ldur         r4, [fp, #-0x10]
    // 0x4287d0: r0 = r5
    //     0x4287d0: mov          r0, r5
    //     0x4287d4: stur         r5, [fp, #-0x18]
    // 0x4287d8: r2 = NULL
    //     0x4287d8: mov          r2, NULL
    // 0x4287dc: r1 = NULL
    //     0x4287dc: mov          r1, NULL
    // 0x4287e0: r8 = pp[0x3cd0]
    //     0x4287e0: ldr          r8, [PP, #0x3cd0]
    // 0x4287e4: r3 = pp[0xf78]
    //     0x4287e4: add          r3, PP, #0x10, lsl #12
    //     0x4287e8: ldr          r3, [r3, #0xf68]
    // 0x4287ec: r0 = call 0x2b15f0
    //     0x4287ec: bl           0x2b15f0
    // 0x4287f0: r0 = call 0x428dc8
    //     0x4287f0: bl           0x428dc8
    // 0x4287f4: r1 = r0
    //     0x4287f4: mov          r1, r0
    //     0x4287f8: ldur         r2, [fp, #-0x18]
    //     0x4287fc: stur         r0, [fp, #-0x18]
    // 0x428800: r0 = soul_flutter_international$model$party_model_PartyRoomTag::ctor_fromJson()
    //     0x428800: bl           0x428c84
    //     0x428804: ldur         r0, [fp, #-0x18]
    //     0x428808: ldur         r3, [fp, #-8]
    // 0x42880c: ArrayStore: r3[0] = r0  ; List_8
    //     0x42880c: stur         r0, [r3, #0x17]
    //     0x428810: ldurb        r16, [r3, #-1]
    //     0x428814: ldurb        r17, [r0, #-1]
    //     0x428818: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42881c: tst          BARRIER, HEAP, lsr #32
    // 0x428820: b.eq 0x428828
    //     0x428820: b.eq         0x428828
    // 0x428824: r0 = call 0x61e08c
    //     0x428824: bl           0x61e08c
    //     0x428828: ldur         r4, [fp, #-0x10]
    // 0x42882c: r0 = LoadClassIdInstr(r4)
    //     0x42882c: ldur         r0, [r4, #-1]
    //     0x428830: ubfx         r0, r0, #0xc, #0x14
    // 0x428834: r1 = r4
    //     0x428834: mov          r1, r4
    // 0x428838: r2 = pp[0xf88]
    //     0x428838: add          r2, PP, #0x10, lsl #12
    //     0x42883c: ldr          r2, [r2, #0xf78]
    //     0x428840: sub          lr, r0, #1, lsl #12
    //     0x428844: ldr          lr, [r21, lr, lsl #3]
    // 0x428848: r0 = [R]()
    //     0x428848: blr          lr
    //     0x42884c: cmp          r0, r22
    // 0x428850: b.ne 0x42886c
    //     0x428850: b.ne         0x42886c
    // 0x428854: BARRIER = pp[0xbf0]
    //     0x428854: ldr          BARRIER, [PP, #0xbf0]
    //     0x428858: ldr          lr, [THR, #0x90]
    //     0x42885c: stp          lr, BARRIER, [SP]
    // 0x428860: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x428860: bl           0x27c0c8
    // 0x428864: r5 = r0
    //     0x428864: mov          r5, r0
    // 0x428868: b 0x428870
    //     0x428868: b            0x428870
    // 0x42886c: r5 = r0
    //     0x42886c: mov          r5, r0
    //     0x428870: ldur         r3, [fp, #-8]
    //     0x428874: ldur         r4, [fp, #-0x10]
    // 0x428878: r0 = r5
    //     0x428878: mov          r0, r5
    //     0x42887c: stur         r5, [fp, #-0x18]
    // 0x428880: r2 = NULL
    //     0x428880: mov          r2, NULL
    // 0x428884: r1 = NULL
    //     0x428884: mov          r1, NULL
    // 0x428888: r8 = pp[0x3cd0]
    //     0x428888: ldr          r8, [PP, #0x3cd0]
    // 0x42888c: r3 = pp[0xf90]
    //     0x42888c: add          r3, PP, #0x10, lsl #12
    //     0x428890: ldr          r3, [r3, #0xf80]
    // 0x428894: r0 = call 0x2b15f0
    //     0x428894: bl           0x2b15f0
    // 0x428898: r0 = call 0x428c78
    //     0x428898: bl           0x428c78
    // 0x42889c: r1 = r0
    //     0x42889c: mov          r1, r0
    //     0x4288a0: ldur         r2, [fp, #-0x18]
    //     0x4288a4: stur         r0, [fp, #-0x18]
    // 0x4288a8: r0 = soul_flutter_international$model$party_model_PartyRoomBackground::ctor_fromJson()
    //     0x4288a8: bl           0x428acc
    //     0x4288ac: ldur         r0, [fp, #-0x18]
    //     0x4288b0: ldur         r1, [fp, #-8]
    // 0x4288b4: StoreField: r1->field_1b = r0
    //     0x4288b4: stur         r0, [r1, #0x1b]
    //     0x4288b8: ldurb        r16, [r1, #-1]
    //     0x4288bc: ldurb        r17, [r0, #-1]
    //     0x4288c0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4288c4: tst          BARRIER, HEAP, lsr #32
    // 0x4288c8: b.eq 0x4288d0
    //     0x4288c8: b.eq         0x4288d0
    // 0x4288cc: r0 = call 0x61e04c
    //     0x4288cc: bl           0x61e04c
    //     0x4288d0: ldur         r1, [fp, #-0x10]
    // 0x4288d4: r0 = LoadClassIdInstr(r1)
    //     0x4288d4: ldur         r0, [r1, #-1]
    //     0x4288d8: ubfx         r0, r0, #0xc, #0x14
    // 0x4288dc: r2 = pp[0xfa0]
    //     0x4288dc: add          r2, PP, #0x10, lsl #12
    //     0x4288e0: ldr          r2, [r2, #0xf90]
    //     0x4288e4: sub          lr, r0, #1, lsl #12
    //     0x4288e8: ldr          lr, [r21, lr, lsl #3]
    // 0x4288ec: r0 = [R]()
    //     0x4288ec: blr          lr
    //     0x4288f0: cmp          r0, r22
    // 0x4288f4: b.ne 0x428910
    //     0x4288f4: b.ne         0x428910
    // 0x4288f8: BARRIER = pp[0xbf0]
    //     0x4288f8: ldr          BARRIER, [PP, #0xbf0]
    //     0x4288fc: ldr          lr, [THR, #0x90]
    //     0x428900: stp          lr, BARRIER, [SP]
    // 0x428904: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x428904: bl           0x27c0c8
    // 0x428908: r3 = r0
    //     0x428908: mov          r3, r0
    // 0x42890c: b 0x428914
    //     0x42890c: b            0x428914
    // 0x428910: r3 = r0
    //     0x428910: mov          r3, r0
    // 0x428914: r0 = r3
    //     0x428914: mov          r0, r3
    //     0x428918: stur         r3, [fp, #-8]
    // 0x42891c: r2 = NULL
    //     0x42891c: mov          r2, NULL
    // 0x428920: r1 = NULL
    //     0x428920: mov          r1, NULL
    // 0x428924: r8 = pp[0x3cd0]
    //     0x428924: ldr          r8, [PP, #0x3cd0]
    // 0x428928: r3 = pp[0xfa8]
    //     0x428928: add          r3, PP, #0x10, lsl #12
    //     0x42892c: ldr          r3, [r3, #0xf98]
    // 0x428930: r0 = call 0x2b15f0
    //     0x428930: bl           0x2b15f0
    // 0x428934: r0 = call 0x428ac0
    //     0x428934: bl           0x428ac0
    // 0x428938: r1 = r0
    //     0x428938: mov          r1, r0
    //     0x42893c: ldur         r2, [fp, #-8]
    // 0x428940: r0 = soul_flutter_international$model$party_model_PartyRoomMusic::ctor_fromJson()
    //     0x428940: bl           0x42895c
    // 0x428944: r0 = NULL
    //     0x428944: mov          r0, NULL
    // 0x428948: SP = fp
    //     0x428948: mov          SP, fp
    // 0x42894c: LeaveFrame
    //     0x42894c: ldp          fp, lr, [SP], #0x10
    // 0x428950: ret
    //     0x428950: ret          
    // 0x428954: r0 = call 0x61fa28
    //     0x428954: bl           0x61fa28
    // 0x428958: b 0x4284a0
    //     0x428958: b            0x4284a0
  }

  ctor_fromJson() {
    // ** addr: 0x42895c, size: 0x164
    // 0x42895c: EnterFrame
    //     0x42895c: stp          fp, lr, [SP, #-0x10]!
    //     0x428960: mov          fp, SP
    // 0x428964: AllocStack(8)
    //     0x428964: sub          SP, SP, #8
    // 0x428968: r3 = r2
    //     0x428968: mov          r3, r2
    //     0x42896c: stur         r2, [fp, #-8]
    // 0x428970: CheckStackOverflow
    //     0x428970: ldr          BARRIER, [THR, #0x38]
    //     0x428974: cmp          SP, BARRIER
    //     0x428978: b.ls         0x428ab8
    // 0x42897c: r0 = LoadClassIdInstr(r3)
    //     0x42897c: ldur         r0, [r3, #-1]
    //     0x428980: ubfx         r0, r0, #0xc, #0x14
    // 0x428984: r1 = r3
    //     0x428984: mov          r1, r3
    // 0x428988: r2 = pp[0x1a0]
    //     0x428988: add          r2, PP, #8, lsl #12
    //     0x42898c: ldr          r2, [r2, #0x198]
    //     0x428990: sub          lr, r0, #1, lsl #12
    //     0x428994: ldr          lr, [r21, lr, lsl #3]
    // 0x428998: r0 = [R]()
    //     0x428998: blr          lr
    //     0x42899c: cmp          r0, r22
    // 0x4289a0: b.ne 0x4289a8
    //     0x4289a0: b.ne         0x4289a8
    // 0x4289a4: r0 = pp[0x148]
    //     0x4289a4: ldr          r0, [PP, #0x148]
    //     0x4289a8: ldur         r3, [fp, #-8]
    // 0x4289ac: r2 = NULL
    //     0x4289ac: mov          r2, NULL
    // 0x4289b0: r1 = NULL
    //     0x4289b0: mov          r1, NULL
    //     0x4289b4: mov          r4, #0x3c
    // 0x4289b8: branchIfSmi(r0, 0x4289c4)
    //     0x4289b8: tbz          r0, #0, 0x4289c4
    // 0x4289bc: r4 = LoadClassIdInstr(r0)
    //     0x4289bc: ldur         r4, [r0, #-1]
    //     0x4289c0: ubfx         r4, r4, #0xc, #0x14
    //     0x4289c4: sub          r4, r4, #0x5e
    //     0x4289c8: cmp          r4, #1
    // 0x4289cc: b.ls 0x4289e0
    //     0x4289cc: b.ls         0x4289e0
    // 0x4289d0: r8 = pp[0x2f8]
    //     0x4289d0: ldr          r8, [PP, #0x2f8]
    // 0x4289d4: r3 = pp[0xfb8]
    //     0x4289d4: add          r3, PP, #0x10, lsl #12
    //     0x4289d8: ldr          r3, [r3, #0xfa8]
    // 0x4289dc: r0 = call 0x62a0c0
    //     0x4289dc: bl           0x62a0c0
    //     0x4289e0: ldur         r3, [fp, #-8]
    // 0x4289e4: r0 = LoadClassIdInstr(r3)
    //     0x4289e4: ldur         r0, [r3, #-1]
    //     0x4289e8: ubfx         r0, r0, #0xc, #0x14
    // 0x4289ec: r1 = r3
    //     0x4289ec: mov          r1, r3
    // 0x4289f0: r2 = pp[0xa5f]
    //     0x4289f0: add          r2, PP, #0xf, lsl #12
    //     0x4289f4: ldr          r2, [r2, #0xa50]
    //     0x4289f8: sub          lr, r0, #1, lsl #12
    //     0x4289fc: ldr          lr, [r21, lr, lsl #3]
    // 0x428a00: r0 = [R]()
    //     0x428a00: blr          lr
    //     0x428a04: cmp          r0, r22
    // 0x428a08: b.ne 0x428a10
    //     0x428a08: b.ne         0x428a10
    // 0x428a0c: r0 = pp[0x148]
    //     0x428a0c: ldr          r0, [PP, #0x148]
    //     0x428a10: ldur         r3, [fp, #-8]
    // 0x428a14: r2 = NULL
    //     0x428a14: mov          r2, NULL
    // 0x428a18: r1 = NULL
    //     0x428a18: mov          r1, NULL
    //     0x428a1c: mov          r4, #0x3c
    // 0x428a20: branchIfSmi(r0, 0x428a2c)
    //     0x428a20: tbz          r0, #0, 0x428a2c
    // 0x428a24: r4 = LoadClassIdInstr(r0)
    //     0x428a24: ldur         r4, [r0, #-1]
    //     0x428a28: ubfx         r4, r4, #0xc, #0x14
    //     0x428a2c: sub          r4, r4, #0x5e
    //     0x428a30: cmp          r4, #1
    // 0x428a34: b.ls 0x428a48
    //     0x428a34: b.ls         0x428a48
    // 0x428a38: r8 = pp[0x2f8]
    //     0x428a38: ldr          r8, [PP, #0x2f8]
    // 0x428a3c: r3 = pp[0xfc8]
    //     0x428a3c: add          r3, PP, #0x10, lsl #12
    //     0x428a40: ldr          r3, [r3, #0xfb8]
    // 0x428a44: r0 = call 0x62a0c0
    //     0x428a44: bl           0x62a0c0
    //     0x428a48: ldur         r1, [fp, #-8]
    // 0x428a4c: r0 = LoadClassIdInstr(r1)
    //     0x428a4c: ldur         r0, [r1, #-1]
    //     0x428a50: ubfx         r0, r0, #0xc, #0x14
    // 0x428a54: r2 = pp[0xfd8]
    //     0x428a54: add          r2, PP, #0x10, lsl #12
    //     0x428a58: ldr          r2, [r2, #0xfc8]
    //     0x428a5c: sub          lr, r0, #1, lsl #12
    //     0x428a60: ldr          lr, [r21, lr, lsl #3]
    // 0x428a64: r0 = [R]()
    //     0x428a64: blr          lr
    //     0x428a68: cmp          r0, r22
    // 0x428a6c: b.ne 0x428a74
    //     0x428a6c: b.ne         0x428a74
    // 0x428a70: r0 = pp[0x148]
    //     0x428a70: ldr          r0, [PP, #0x148]
    // 0x428a74: r2 = NULL
    //     0x428a74: mov          r2, NULL
    // 0x428a78: r1 = NULL
    //     0x428a78: mov          r1, NULL
    //     0x428a7c: mov          r4, #0x3c
    // 0x428a80: branchIfSmi(r0, 0x428a8c)
    //     0x428a80: tbz          r0, #0, 0x428a8c
    // 0x428a84: r4 = LoadClassIdInstr(r0)
    //     0x428a84: ldur         r4, [r0, #-1]
    //     0x428a88: ubfx         r4, r4, #0xc, #0x14
    //     0x428a8c: sub          r4, r4, #0x5e
    //     0x428a90: cmp          r4, #1
    // 0x428a94: b.ls 0x428aa8
    //     0x428a94: b.ls         0x428aa8
    // 0x428a98: r8 = pp[0x2f8]
    //     0x428a98: ldr          r8, [PP, #0x2f8]
    // 0x428a9c: r3 = pp[0xfe0]
    //     0x428a9c: add          r3, PP, #0x10, lsl #12
    //     0x428aa0: ldr          r3, [r3, #0xfd0]
    // 0x428aa4: r0 = call 0x62a0c0
    //     0x428aa4: bl           0x62a0c0
    // 0x428aa8: r0 = NULL
    //     0x428aa8: mov          r0, NULL
    // 0x428aac: SP = fp
    //     0x428aac: mov          SP, fp
    // 0x428ab0: LeaveFrame
    //     0x428ab0: ldp          fp, lr, [SP], #0x10
    // 0x428ab4: ret
    //     0x428ab4: ret          
    // 0x428ab8: r0 = call 0x61fa28
    //     0x428ab8: bl           0x61fa28
    // 0x428abc: b 0x42897c
    //     0x428abc: b            0x42897c
  }

  ctor_fromJson() {
    // ** addr: 0x428acc, size: 0x1ac
    // 0x428acc: EnterFrame
    //     0x428acc: stp          fp, lr, [SP, #-0x10]!
    //     0x428ad0: mov          fp, SP
    // 0x428ad4: AllocStack(0x18)
    //     0x428ad4: sub          SP, SP, #0x18
    // 0x428ad8: r0 = pp[0x40]
    //     0x428ad8: ldr          r0, [PP, #0x40]
    // 0x428adc: r4 = r1
    //     0x428adc: mov          r4, r1
    // 0x428ae0: r3 = r2
    //     0x428ae0: mov          r3, r2
    //     0x428ae4: stur         r1, [fp, #-8]
    //     0x428ae8: stur         r2, [fp, #-0x10]
    // 0x428aec: CheckStackOverflow
    //     0x428aec: ldr          BARRIER, [THR, #0x38]
    //     0x428af0: cmp          SP, BARRIER
    //     0x428af4: b.ls         0x428c70
    // 0x428af8: StoreField: r4->field_7 = r0
    //     0x428af8: stur         r0, [r4, #7]
    // 0x428afc: r0 = LoadClassIdInstr(r3)
    //     0x428afc: ldur         r0, [r3, #-1]
    //     0x428b00: ubfx         r0, r0, #0xc, #0x14
    // 0x428b04: r1 = r3
    //     0x428b04: mov          r1, r3
    // 0x428b08: r2 = pp[0xff0]
    //     0x428b08: add          r2, PP, #0x10, lsl #12
    //     0x428b0c: ldr          r2, [r2, #0xfe0]
    //     0x428b10: sub          lr, r0, #1, lsl #12
    //     0x428b14: ldr          lr, [r21, lr, lsl #3]
    // 0x428b18: r0 = [R]()
    //     0x428b18: blr          lr
    //     0x428b1c: cmp          r0, r22
    // 0x428b20: b.ne 0x428b28
    //     0x428b20: b.ne         0x428b28
    // 0x428b24: r0 = pp[0x148]
    //     0x428b24: ldr          r0, [PP, #0x148]
    //     0x428b28: ldur         r3, [fp, #-0x10]
    // 0x428b2c: r2 = NULL
    //     0x428b2c: mov          r2, NULL
    // 0x428b30: r1 = NULL
    //     0x428b30: mov          r1, NULL
    //     0x428b34: mov          r4, #0x3c
    // 0x428b38: branchIfSmi(r0, 0x428b44)
    //     0x428b38: tbz          r0, #0, 0x428b44
    // 0x428b3c: r4 = LoadClassIdInstr(r0)
    //     0x428b3c: ldur         r4, [r0, #-1]
    //     0x428b40: ubfx         r4, r4, #0xc, #0x14
    //     0x428b44: sub          r4, r4, #0x5e
    //     0x428b48: cmp          r4, #1
    // 0x428b4c: b.ls 0x428b60
    //     0x428b4c: b.ls         0x428b60
    // 0x428b50: r8 = pp[0x2f8]
    //     0x428b50: ldr          r8, [PP, #0x2f8]
    // 0x428b54: r3 = pp[0xff8]
    //     0x428b54: add          r3, PP, #0x10, lsl #12
    //     0x428b58: ldr          r3, [r3, #0xfe8]
    // 0x428b5c: r0 = call 0x62a0c0
    //     0x428b5c: bl           0x62a0c0
    //     0x428b60: ldur         r3, [fp, #-0x10]
    // 0x428b64: r0 = LoadClassIdInstr(r3)
    //     0x428b64: ldur         r0, [r3, #-1]
    //     0x428b68: ubfx         r0, r0, #0xc, #0x14
    // 0x428b6c: r1 = r3
    //     0x428b6c: mov          r1, r3
    // 0x428b70: r2 = pp[0x1008]
    //     0x428b70: add          r2, PP, #0x10, lsl #12
    //     0x428b74: ldr          r2, [r2, #0xff8]
    //     0x428b78: sub          lr, r0, #1, lsl #12
    //     0x428b7c: ldr          lr, [r21, lr, lsl #3]
    // 0x428b80: r0 = [R]()
    //     0x428b80: blr          lr
    //     0x428b84: cmp          r0, r22
    // 0x428b88: b.ne 0x428b94
    //     0x428b88: b.ne         0x428b94
    // 0x428b8c: r5 = pp[0x148]
    //     0x428b8c: ldr          r5, [PP, #0x148]
    // 0x428b90: b 0x428b98
    //     0x428b90: b            0x428b98
    // 0x428b94: r5 = r0
    //     0x428b94: mov          r5, r0
    //     0x428b98: ldur         r4, [fp, #-8]
    //     0x428b9c: ldur         r3, [fp, #-0x10]
    // 0x428ba0: r0 = r5
    //     0x428ba0: mov          r0, r5
    //     0x428ba4: stur         r5, [fp, #-0x18]
    // 0x428ba8: r2 = NULL
    //     0x428ba8: mov          r2, NULL
    // 0x428bac: r1 = NULL
    //     0x428bac: mov          r1, NULL
    //     0x428bb0: mov          r4, #0x3c
    // 0x428bb4: branchIfSmi(r0, 0x428bc0)
    //     0x428bb4: tbz          r0, #0, 0x428bc0
    // 0x428bb8: r4 = LoadClassIdInstr(r0)
    //     0x428bb8: ldur         r4, [r0, #-1]
    //     0x428bbc: ubfx         r4, r4, #0xc, #0x14
    //     0x428bc0: sub          r4, r4, #0x5e
    //     0x428bc4: cmp          r4, #1
    // 0x428bc8: b.ls 0x428bdc
    //     0x428bc8: b.ls         0x428bdc
    // 0x428bcc: r8 = pp[0x2f8]
    //     0x428bcc: ldr          r8, [PP, #0x2f8]
    //     0x428bd0: add          r3, PP, #0x11, lsl #12
    //     0x428bd4: ldr          r3, [r3]
    // 0x428bd8: r0 = call 0x62a0c0
    //     0x428bd8: bl           0x62a0c0
    //     0x428bdc: ldur         r0, [fp, #-0x18]
    //     0x428be0: ldur         r1, [fp, #-8]
    // 0x428be4: StoreField: r1->field_7 = r0
    //     0x428be4: stur         r0, [r1, #7]
    //     0x428be8: ldurb        r16, [r1, #-1]
    //     0x428bec: ldurb        r17, [r0, #-1]
    //     0x428bf0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x428bf4: tst          BARRIER, HEAP, lsr #32
    // 0x428bf8: b.eq 0x428c00
    //     0x428bf8: b.eq         0x428c00
    // 0x428bfc: r0 = call 0x61e04c
    //     0x428bfc: bl           0x61e04c
    //     0x428c00: ldur         r1, [fp, #-0x10]
    // 0x428c04: r0 = LoadClassIdInstr(r1)
    //     0x428c04: ldur         r0, [r1, #-1]
    //     0x428c08: ubfx         r0, r0, #0xc, #0x14
    // 0x428c0c: r2 = pp[0x21]
    //     0x428c0c: add          r2, PP, #0x11, lsl #12
    //     0x428c10: ldr          r2, [r2, #0x10]
    //     0x428c14: sub          lr, r0, #1, lsl #12
    //     0x428c18: ldr          lr, [r21, lr, lsl #3]
    // 0x428c1c: r0 = [R]()
    //     0x428c1c: blr          lr
    //     0x428c20: cmp          r0, r22
    // 0x428c24: b.ne 0x428c2c
    //     0x428c24: b.ne         0x428c2c
    // 0x428c28: r0 = pp[0x148]
    //     0x428c28: ldr          r0, [PP, #0x148]
    // 0x428c2c: r2 = NULL
    //     0x428c2c: mov          r2, NULL
    // 0x428c30: r1 = NULL
    //     0x428c30: mov          r1, NULL
    //     0x428c34: mov          r4, #0x3c
    // 0x428c38: branchIfSmi(r0, 0x428c44)
    //     0x428c38: tbz          r0, #0, 0x428c44
    // 0x428c3c: r4 = LoadClassIdInstr(r0)
    //     0x428c3c: ldur         r4, [r0, #-1]
    //     0x428c40: ubfx         r4, r4, #0xc, #0x14
    //     0x428c44: sub          r4, r4, #0x5e
    //     0x428c48: cmp          r4, #1
    // 0x428c4c: b.ls 0x428c60
    //     0x428c4c: b.ls         0x428c60
    // 0x428c50: r8 = pp[0x2f8]
    //     0x428c50: ldr          r8, [PP, #0x2f8]
    // 0x428c54: r3 = pp[0x29]
    //     0x428c54: add          r3, PP, #0x11, lsl #12
    //     0x428c58: ldr          r3, [r3, #0x18]
    // 0x428c5c: r0 = call 0x62a0c0
    //     0x428c5c: bl           0x62a0c0
    // 0x428c60: r0 = NULL
    //     0x428c60: mov          r0, NULL
    // 0x428c64: SP = fp
    //     0x428c64: mov          SP, fp
    // 0x428c68: LeaveFrame
    //     0x428c68: ldp          fp, lr, [SP], #0x10
    // 0x428c6c: ret
    //     0x428c6c: ret          
    // 0x428c70: r0 = call 0x61fa28
    //     0x428c70: bl           0x61fa28
    // 0x428c74: b 0x428af8
    //     0x428c74: b            0x428af8
  }

  ctor_fromJson() {
    // ** addr: 0x428c84, size: 0x144
    // 0x428c84: EnterFrame
    //     0x428c84: stp          fp, lr, [SP, #-0x10]!
    //     0x428c88: mov          fp, SP
    // 0x428c8c: AllocStack(0x18)
    //     0x428c8c: sub          SP, SP, #0x18
    // 0x428c90: r0 = pp[0x40]
    //     0x428c90: ldr          r0, [PP, #0x40]
    // 0x428c94: r4 = r1
    //     0x428c94: mov          r4, r1
    // 0x428c98: r3 = r2
    //     0x428c98: mov          r3, r2
    //     0x428c9c: stur         r1, [fp, #-8]
    //     0x428ca0: stur         r2, [fp, #-0x10]
    // 0x428ca4: CheckStackOverflow
    //     0x428ca4: ldr          BARRIER, [THR, #0x38]
    //     0x428ca8: cmp          SP, BARRIER
    //     0x428cac: b.ls         0x428dc0
    // 0x428cb0: StoreField: r4->field_7 = r0
    //     0x428cb0: stur         r0, [r4, #7]
    // 0x428cb4: r0 = LoadClassIdInstr(r3)
    //     0x428cb4: ldur         r0, [r3, #-1]
    //     0x428cb8: ubfx         r0, r0, #0xc, #0x14
    // 0x428cbc: r1 = r3
    //     0x428cbc: mov          r1, r3
    // 0x428cc0: r2 = pp[0x1a0]
    //     0x428cc0: add          r2, PP, #8, lsl #12
    //     0x428cc4: ldr          r2, [r2, #0x198]
    //     0x428cc8: sub          lr, r0, #1, lsl #12
    //     0x428ccc: ldr          lr, [r21, lr, lsl #3]
    // 0x428cd0: r0 = [R]()
    //     0x428cd0: blr          lr
    //     0x428cd4: cmp          r0, r22
    // 0x428cd8: b.ne 0x428ce4
    //     0x428cd8: b.ne         0x428ce4
    // 0x428cdc: r5 = pp[0x148]
    //     0x428cdc: ldr          r5, [PP, #0x148]
    // 0x428ce0: b 0x428ce8
    //     0x428ce0: b            0x428ce8
    // 0x428ce4: r5 = r0
    //     0x428ce4: mov          r5, r0
    //     0x428ce8: ldur         r4, [fp, #-8]
    //     0x428cec: ldur         r3, [fp, #-0x10]
    // 0x428cf0: r0 = r5
    //     0x428cf0: mov          r0, r5
    //     0x428cf4: stur         r5, [fp, #-0x18]
    // 0x428cf8: r2 = NULL
    //     0x428cf8: mov          r2, NULL
    // 0x428cfc: r1 = NULL
    //     0x428cfc: mov          r1, NULL
    //     0x428d00: mov          r4, #0x3c
    // 0x428d04: branchIfSmi(r0, 0x428d10)
    //     0x428d04: tbz          r0, #0, 0x428d10
    // 0x428d08: r4 = LoadClassIdInstr(r0)
    //     0x428d08: ldur         r4, [r0, #-1]
    //     0x428d0c: ubfx         r4, r4, #0xc, #0x14
    //     0x428d10: sub          r4, r4, #0x5e
    //     0x428d14: cmp          r4, #1
    // 0x428d18: b.ls 0x428d2c
    //     0x428d18: b.ls         0x428d2c
    // 0x428d1c: r8 = pp[0x2f8]
    //     0x428d1c: ldr          r8, [PP, #0x2f8]
    // 0x428d20: r3 = pp[0x39]
    //     0x428d20: add          r3, PP, #0x11, lsl #12
    //     0x428d24: ldr          r3, [r3, #0x28]
    // 0x428d28: r0 = call 0x62a0c0
    //     0x428d28: bl           0x62a0c0
    //     0x428d2c: ldur         r0, [fp, #-0x18]
    //     0x428d30: ldur         r1, [fp, #-8]
    // 0x428d34: StoreField: r1->field_7 = r0
    //     0x428d34: stur         r0, [r1, #7]
    //     0x428d38: ldurb        r16, [r1, #-1]
    //     0x428d3c: ldurb        r17, [r0, #-1]
    //     0x428d40: and          BARRIER, r17, BARRIER, lsr #2
    //     0x428d44: tst          BARRIER, HEAP, lsr #32
    // 0x428d48: b.eq 0x428d50
    //     0x428d48: b.eq         0x428d50
    // 0x428d4c: r0 = call 0x61e04c
    //     0x428d4c: bl           0x61e04c
    //     0x428d50: ldur         r1, [fp, #-0x10]
    // 0x428d54: r0 = LoadClassIdInstr(r1)
    //     0x428d54: ldur         r0, [r1, #-1]
    //     0x428d58: ubfx         r0, r0, #0xc, #0x14
    // 0x428d5c: r2 = pp[0x49]
    //     0x428d5c: add          r2, PP, #0x11, lsl #12
    //     0x428d60: ldr          r2, [r2, #0x38]
    //     0x428d64: sub          lr, r0, #1, lsl #12
    //     0x428d68: ldr          lr, [r21, lr, lsl #3]
    // 0x428d6c: r0 = [R]()
    //     0x428d6c: blr          lr
    //     0x428d70: cmp          r0, r22
    // 0x428d74: b.ne 0x428d7c
    //     0x428d74: b.ne         0x428d7c
    // 0x428d78: r0 = pp[0x148]
    //     0x428d78: ldr          r0, [PP, #0x148]
    // 0x428d7c: r2 = NULL
    //     0x428d7c: mov          r2, NULL
    // 0x428d80: r1 = NULL
    //     0x428d80: mov          r1, NULL
    //     0x428d84: mov          r4, #0x3c
    // 0x428d88: branchIfSmi(r0, 0x428d94)
    //     0x428d88: tbz          r0, #0, 0x428d94
    // 0x428d8c: r4 = LoadClassIdInstr(r0)
    //     0x428d8c: ldur         r4, [r0, #-1]
    //     0x428d90: ubfx         r4, r4, #0xc, #0x14
    //     0x428d94: sub          r4, r4, #0x5e
    //     0x428d98: cmp          r4, #1
    // 0x428d9c: b.ls 0x428db0
    //     0x428d9c: b.ls         0x428db0
    // 0x428da0: r8 = pp[0x2f8]
    //     0x428da0: ldr          r8, [PP, #0x2f8]
    // 0x428da4: r3 = pp[0x51]
    //     0x428da4: add          r3, PP, #0x11, lsl #12
    //     0x428da8: ldr          r3, [r3, #0x40]
    // 0x428dac: r0 = call 0x62a0c0
    //     0x428dac: bl           0x62a0c0
    // 0x428db0: r0 = NULL
    //     0x428db0: mov          r0, NULL
    // 0x428db4: SP = fp
    //     0x428db4: mov          SP, fp
    // 0x428db8: LeaveFrame
    //     0x428db8: ldp          fp, lr, [SP], #0x10
    // 0x428dbc: ret
    //     0x428dbc: ret          
    // 0x428dc0: r0 = call 0x61fa28
    //     0x428dc0: bl           0x61fa28
    // 0x428dc4: b 0x428cb0
    //     0x428dc4: b            0x428cb0
  }

  ctor_fromJson() {
    // ** addr: 0x428dd4, size: 0x298
    // 0x428dd4: EnterFrame
    //     0x428dd4: stp          fp, lr, [SP, #-0x10]!
    //     0x428dd8: mov          fp, SP
    // 0x428ddc: AllocStack(0x20)
    //     0x428ddc: sub          SP, SP, #0x20
    // 0x428de0: r0 = pp[0x40]
    //     0x428de0: ldr          r0, [PP, #0x40]
    // 0x428de4: r4 = r1
    //     0x428de4: mov          r4, r1
    // 0x428de8: r3 = r2
    //     0x428de8: mov          r3, r2
    //     0x428dec: stur         r1, [fp, #-8]
    //     0x428df0: stur         r2, [fp, #-0x10]
    // 0x428df4: CheckStackOverflow
    //     0x428df4: ldr          BARRIER, [THR, #0x38]
    //     0x428df8: cmp          SP, BARRIER
    //     0x428dfc: b.ls         0x429064
    // 0x428e00: StoreField: r4->field_7 = r0
    //     0x428e00: stur         r0, [r4, #7]
    // 0x428e04: StoreField: r4->field_b = r0
    //     0x428e04: stur         r0, [r4, #0xb]
    // 0x428e08: r0 = LoadClassIdInstr(r3)
    //     0x428e08: ldur         r0, [r3, #-1]
    //     0x428e0c: ubfx         r0, r0, #0xc, #0x14
    // 0x428e10: r1 = r3
    //     0x428e10: mov          r1, r3
    // 0x428e14: r2 = pp[0x6f3]
    //     0x428e14: add          r2, PP, #0xb, lsl #12
    //     0x428e18: ldr          r2, [r2, #0x6e8]
    //     0x428e1c: sub          lr, r0, #1, lsl #12
    //     0x428e20: ldr          lr, [r21, lr, lsl #3]
    // 0x428e24: r0 = [R]()
    //     0x428e24: blr          lr
    //     0x428e28: cmp          r0, r22
    // 0x428e2c: b.eq 0x428e5c
    //     0x428e2c: b.eq         0x428e5c
    //     0x428e30: mov          r1, #0x3c
    // 0x428e34: branchIfSmi(r0, 0x428e40)
    //     0x428e34: tbz          r0, #0, 0x428e40
    // 0x428e38: r1 = LoadClassIdInstr(r0)
    //     0x428e38: ldur         r1, [r0, #-1]
    //     0x428e3c: ubfx         r1, r1, #0xc, #0x14
    //     0x428e40: str          r0, [SP]
    // 0x428e44: r0 = r1
    //     0x428e44: mov          r0, r1
    // 0x428e48: r4 = pp[0x3a8]
    //     0x428e48: ldr          r4, [PP, #0x3a8]
    //     0x428e4c: mov          r17, #0x3e07
    //     0x428e50: add          lr, r0, r17
    //     0x428e54: ldr          lr, [r21, lr, lsl #3]
    // 0x428e58: r0 = [R]()
    //     0x428e58: blr          lr
    //     0x428e5c: ldur         r3, [fp, #-0x10]
    // 0x428e60: r0 = LoadClassIdInstr(r3)
    //     0x428e60: ldur         r0, [r3, #-1]
    //     0x428e64: ubfx         r0, r0, #0xc, #0x14
    // 0x428e68: r1 = r3
    //     0x428e68: mov          r1, r3
    // 0x428e6c: r2 = pp[0x61]
    //     0x428e6c: add          r2, PP, #0x11, lsl #12
    //     0x428e70: ldr          r2, [r2, #0x50]
    //     0x428e74: sub          lr, r0, #1, lsl #12
    //     0x428e78: ldr          lr, [r21, lr, lsl #3]
    // 0x428e7c: r0 = [R]()
    //     0x428e7c: blr          lr
    //     0x428e80: cmp          r0, r22
    // 0x428e84: b.eq 0x428eb4
    //     0x428e84: b.eq         0x428eb4
    //     0x428e88: mov          r1, #0x3c
    // 0x428e8c: branchIfSmi(r0, 0x428e98)
    //     0x428e8c: tbz          r0, #0, 0x428e98
    // 0x428e90: r1 = LoadClassIdInstr(r0)
    //     0x428e90: ldur         r1, [r0, #-1]
    //     0x428e94: ubfx         r1, r1, #0xc, #0x14
    //     0x428e98: str          r0, [SP]
    // 0x428e9c: r0 = r1
    //     0x428e9c: mov          r0, r1
    // 0x428ea0: r4 = pp[0x3a8]
    //     0x428ea0: ldr          r4, [PP, #0x3a8]
    //     0x428ea4: mov          r17, #0x3e07
    //     0x428ea8: add          lr, r0, r17
    //     0x428eac: ldr          lr, [r21, lr, lsl #3]
    // 0x428eb0: r0 = [R]()
    //     0x428eb0: blr          lr
    //     0x428eb4: ldur         r3, [fp, #-0x10]
    // 0x428eb8: r0 = LoadClassIdInstr(r3)
    //     0x428eb8: ldur         r0, [r3, #-1]
    //     0x428ebc: ubfx         r0, r0, #0xc, #0x14
    // 0x428ec0: r1 = r3
    //     0x428ec0: mov          r1, r3
    // 0x428ec4: r2 = pp[0x723]
    //     0x428ec4: add          r2, PP, #0xb, lsl #12
    //     0x428ec8: ldr          r2, [r2, #0x718]
    //     0x428ecc: sub          lr, r0, #1, lsl #12
    //     0x428ed0: ldr          lr, [r21, lr, lsl #3]
    // 0x428ed4: r0 = [R]()
    //     0x428ed4: blr          lr
    //     0x428ed8: cmp          r0, r22
    // 0x428edc: b.ne 0x428ee8
    //     0x428edc: b.ne         0x428ee8
    // 0x428ee0: r5 = pp[0x148]
    //     0x428ee0: ldr          r5, [PP, #0x148]
    // 0x428ee4: b 0x428eec
    //     0x428ee4: b            0x428eec
    // 0x428ee8: r5 = r0
    //     0x428ee8: mov          r5, r0
    //     0x428eec: ldur         r4, [fp, #-8]
    //     0x428ef0: ldur         r3, [fp, #-0x10]
    // 0x428ef4: r0 = r5
    //     0x428ef4: mov          r0, r5
    //     0x428ef8: stur         r5, [fp, #-0x18]
    // 0x428efc: r2 = NULL
    //     0x428efc: mov          r2, NULL
    // 0x428f00: r1 = NULL
    //     0x428f00: mov          r1, NULL
    //     0x428f04: mov          r4, #0x3c
    // 0x428f08: branchIfSmi(r0, 0x428f14)
    //     0x428f08: tbz          r0, #0, 0x428f14
    // 0x428f0c: r4 = LoadClassIdInstr(r0)
    //     0x428f0c: ldur         r4, [r0, #-1]
    //     0x428f10: ubfx         r4, r4, #0xc, #0x14
    //     0x428f14: sub          r4, r4, #0x5e
    //     0x428f18: cmp          r4, #1
    // 0x428f1c: b.ls 0x428f30
    //     0x428f1c: b.ls         0x428f30
    // 0x428f20: r8 = pp[0x2f8]
    //     0x428f20: ldr          r8, [PP, #0x2f8]
    // 0x428f24: r3 = pp[0x69]
    //     0x428f24: add          r3, PP, #0x11, lsl #12
    //     0x428f28: ldr          r3, [r3, #0x58]
    // 0x428f2c: r0 = call 0x62a0c0
    //     0x428f2c: bl           0x62a0c0
    //     0x428f30: ldur         r0, [fp, #-0x18]
    //     0x428f34: ldur         r3, [fp, #-8]
    // 0x428f38: StoreField: r3->field_7 = r0
    //     0x428f38: stur         r0, [r3, #7]
    //     0x428f3c: ldurb        r16, [r3, #-1]
    //     0x428f40: ldurb        r17, [r0, #-1]
    //     0x428f44: and          BARRIER, r17, BARRIER, lsr #2
    //     0x428f48: tst          BARRIER, HEAP, lsr #32
    // 0x428f4c: b.eq 0x428f54
    //     0x428f4c: b.eq         0x428f54
    // 0x428f50: r0 = call 0x61e08c
    //     0x428f50: bl           0x61e08c
    //     0x428f54: ldur         r4, [fp, #-0x10]
    // 0x428f58: r0 = LoadClassIdInstr(r4)
    //     0x428f58: ldur         r0, [r4, #-1]
    //     0x428f5c: ubfx         r0, r0, #0xc, #0x14
    // 0x428f60: r1 = r4
    //     0x428f60: mov          r1, r4
    // 0x428f64: r2 = pp[0x73b]
    //     0x428f64: add          r2, PP, #0xb, lsl #12
    //     0x428f68: ldr          r2, [r2, #0x730]
    //     0x428f6c: sub          lr, r0, #1, lsl #12
    //     0x428f70: ldr          lr, [r21, lr, lsl #3]
    // 0x428f74: r0 = [R]()
    //     0x428f74: blr          lr
    //     0x428f78: cmp          r0, r22
    // 0x428f7c: b.ne 0x428f88
    //     0x428f7c: b.ne         0x428f88
    // 0x428f80: r5 = pp[0x148]
    //     0x428f80: ldr          r5, [PP, #0x148]
    // 0x428f84: b 0x428f8c
    //     0x428f84: b            0x428f8c
    // 0x428f88: r5 = r0
    //     0x428f88: mov          r5, r0
    //     0x428f8c: ldur         r3, [fp, #-8]
    //     0x428f90: ldur         r4, [fp, #-0x10]
    // 0x428f94: r0 = r5
    //     0x428f94: mov          r0, r5
    //     0x428f98: stur         r5, [fp, #-0x18]
    // 0x428f9c: r2 = NULL
    //     0x428f9c: mov          r2, NULL
    // 0x428fa0: r1 = NULL
    //     0x428fa0: mov          r1, NULL
    //     0x428fa4: mov          r4, #0x3c
    // 0x428fa8: branchIfSmi(r0, 0x428fb4)
    //     0x428fa8: tbz          r0, #0, 0x428fb4
    // 0x428fac: r4 = LoadClassIdInstr(r0)
    //     0x428fac: ldur         r4, [r0, #-1]
    //     0x428fb0: ubfx         r4, r4, #0xc, #0x14
    //     0x428fb4: sub          r4, r4, #0x5e
    //     0x428fb8: cmp          r4, #1
    // 0x428fbc: b.ls 0x428fd0
    //     0x428fbc: b.ls         0x428fd0
    // 0x428fc0: r8 = pp[0x2f8]
    //     0x428fc0: ldr          r8, [PP, #0x2f8]
    // 0x428fc4: r3 = pp[0x79]
    //     0x428fc4: add          r3, PP, #0x11, lsl #12
    //     0x428fc8: ldr          r3, [r3, #0x68]
    // 0x428fcc: r0 = call 0x62a0c0
    //     0x428fcc: bl           0x62a0c0
    //     0x428fd0: ldur         r0, [fp, #-0x18]
    //     0x428fd4: ldur         r1, [fp, #-8]
    // 0x428fd8: StoreField: r1->field_b = r0
    //     0x428fd8: stur         r0, [r1, #0xb]
    //     0x428fdc: ldurb        r16, [r1, #-1]
    //     0x428fe0: ldurb        r17, [r0, #-1]
    //     0x428fe4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x428fe8: tst          BARRIER, HEAP, lsr #32
    // 0x428fec: b.eq 0x428ff4
    //     0x428fec: b.eq         0x428ff4
    // 0x428ff0: r0 = call 0x61e04c
    //     0x428ff0: bl           0x61e04c
    //     0x428ff4: ldur         r1, [fp, #-0x10]
    // 0x428ff8: r0 = LoadClassIdInstr(r1)
    //     0x428ff8: ldur         r0, [r1, #-1]
    //     0x428ffc: ubfx         r0, r0, #0xc, #0x14
    // 0x429000: r2 = pp[0x753]
    //     0x429000: add          r2, PP, #0xb, lsl #12
    //     0x429004: ldr          r2, [r2, #0x748]
    //     0x429008: sub          lr, r0, #1, lsl #12
    //     0x42900c: ldr          lr, [r21, lr, lsl #3]
    // 0x429010: r0 = [R]()
    //     0x429010: blr          lr
    //     0x429014: cmp          r0, r22
    // 0x429018: b.ne 0x429020
    //     0x429018: b.ne         0x429020
    // 0x42901c: r0 = pp[0x148]
    //     0x42901c: ldr          r0, [PP, #0x148]
    // 0x429020: r2 = NULL
    //     0x429020: mov          r2, NULL
    // 0x429024: r1 = NULL
    //     0x429024: mov          r1, NULL
    //     0x429028: mov          r4, #0x3c
    // 0x42902c: branchIfSmi(r0, 0x429038)
    //     0x42902c: tbz          r0, #0, 0x429038
    // 0x429030: r4 = LoadClassIdInstr(r0)
    //     0x429030: ldur         r4, [r0, #-1]
    //     0x429034: ubfx         r4, r4, #0xc, #0x14
    //     0x429038: sub          r4, r4, #0x5e
    //     0x42903c: cmp          r4, #1
    // 0x429040: b.ls 0x429054
    //     0x429040: b.ls         0x429054
    // 0x429044: r8 = pp[0x2f8]
    //     0x429044: ldr          r8, [PP, #0x2f8]
    // 0x429048: r3 = pp[0x89]
    //     0x429048: add          r3, PP, #0x11, lsl #12
    //     0x42904c: ldr          r3, [r3, #0x78]
    // 0x429050: r0 = call 0x62a0c0
    //     0x429050: bl           0x62a0c0
    // 0x429054: r0 = NULL
    //     0x429054: mov          r0, NULL
    // 0x429058: SP = fp
    //     0x429058: mov          SP, fp
    // 0x42905c: LeaveFrame
    //     0x42905c: ldp          fp, lr, [SP], #0x10
    // 0x429060: ret
    //     0x429060: ret          
    // 0x429064: r0 = call 0x61fa28
    //     0x429064: bl           0x61fa28
    // 0x429068: b 0x428e00
    //     0x429068: b            0x428e00
  }

  ctor_createNum() {
    // ** addr: 0x42ac74, size: 0xe8
    // 0x42ac74: EnterFrame
    //     0x42ac74: stp          fp, lr, [SP, #-0x10]!
    //     0x42ac78: mov          fp, SP
    // 0x42ac7c: AllocStack(0x18)
    //     0x42ac7c: sub          SP, SP, #0x18
    // 0x42ac80: r0 = pp[0x40]
    //     0x42ac80: ldr          r0, [PP, #0x40]
    //     0x42ac84: stur         r1, [fp, #-8]
    //     0x42ac88: stur         r2, [fp, #-0x10]
    // 0x42ac8c: CheckStackOverflow
    //     0x42ac8c: ldr          BARRIER, [THR, #0x38]
    //     0x42ac90: cmp          SP, BARRIER
    //     0x42ac94: b.ls         0x42ad3c
    // 0x42ac98: StoreField: r1->field_7 = r0
    //     0x42ac98: stur         r0, [r1, #7]
    // 0x42ac9c: StoreField: r1->field_b = r0
    //     0x42ac9c: stur         r0, [r1, #0xb]
    // 0x42aca0: LoadField: r0 = r2->field_7
    //     0x42aca0: ldur         r0, [r2, #7]
    //     0x42aca4: add          r0, r0, HEAP, lsl #32
    // 0x42aca8: BARRIER = pp[0x40]
    //     0x42aca8: ldr          BARRIER, [PP, #0x40]
    //     0x42acac: cmp          r0, r16
    // 0x42acb0: b.eq 0x42ad44
    //     0x42acb0: b.eq         0x42ad44
    //     0x42acb4: sbfx         r3, r0, #1, #0x1f
    // 0x42acb8: branchIfSmi(r0, 0x42acc0)
    //     0x42acb8: tbz          r0, #0, 0x42acc0
    // 0x42acbc: LoadField: r3 = r0->field_7
    //     0x42acbc: ldur         r3, [r0, #7]
    //     0x42acc0: cmp          r3, #0
    // 0x42acc4: b.le 0x42acd4
    //     0x42acc4: b.le         0x42acd4
    //     0x42acc8: str          r0, [SP]
    // 0x42accc: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x42accc: bl           0x2ac0a0
    // 0x42acd0: b 0x42acd8
    //     0x42acd0: b            0x42acd8
    // 0x42acd4: r0 = pp[0x148]
    //     0x42acd4: ldr          r0, [PP, #0x148]
    //     0x42acd8: ldur         r2, [fp, #-8]
    //     0x42acdc: ldur         r1, [fp, #-0x10]
    // 0x42ace0: StoreField: r2->field_7 = r0
    //     0x42ace0: stur         r0, [r2, #7]
    //     0x42ace4: ldurb        r16, [r2, #-1]
    //     0x42ace8: ldurb        r17, [r0, #-1]
    //     0x42acec: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42acf0: tst          BARRIER, HEAP, lsr #32
    // 0x42acf4: b.eq 0x42acfc
    //     0x42acf4: b.eq         0x42acfc
    // 0x42acf8: r0 = call 0x61e06c
    //     0x42acf8: bl           0x61e06c
    // 0x42acfc: LoadField: r0 = r1->field_b
    //     0x42acfc: ldur         r0, [r1, #0xb]
    //     0x42ad00: add          r0, r0, HEAP, lsl #32
    // 0x42ad04: BARRIER = pp[0x40]
    //     0x42ad04: ldr          BARRIER, [PP, #0x40]
    //     0x42ad08: cmp          r0, r16
    // 0x42ad0c: b.eq 0x42ad50
    //     0x42ad0c: b.eq         0x42ad50
    // 0x42ad10: StoreField: r2->field_b = r0
    //     0x42ad10: stur         r0, [r2, #0xb]
    //     0x42ad14: ldurb        r16, [r2, #-1]
    //     0x42ad18: ldurb        r17, [r0, #-1]
    //     0x42ad1c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42ad20: tst          BARRIER, HEAP, lsr #32
    // 0x42ad24: b.eq 0x42ad2c
    //     0x42ad24: b.eq         0x42ad2c
    // 0x42ad28: r0 = call 0x61e06c
    //     0x42ad28: bl           0x61e06c
    // 0x42ad2c: r0 = NULL
    //     0x42ad2c: mov          r0, NULL
    // 0x42ad30: SP = fp
    //     0x42ad30: mov          SP, fp
    // 0x42ad34: LeaveFrame
    //     0x42ad34: ldp          fp, lr, [SP], #0x10
    // 0x42ad38: ret
    //     0x42ad38: ret          
    // 0x42ad3c: r0 = call 0x61fa28
    //     0x42ad3c: bl           0x61fa28
    // 0x42ad40: b 0x42ac98
    //     0x42ad40: b            0x42ac98
    // 0x42ad44: r9 = pp[0xb78]
    //     0x42ad44: add          r9, PP, #0x10, lsl #12
    //     0x42ad48: ldr          r9, [r9, #0xb68]
    // 0x42ad4c: r0 = call 0x620258
    //     0x42ad4c: bl           0x620258
    // 0x42ad50: r9 = pp[0xcd8]
    //     0x42ad50: add          r9, PP, #0x10, lsl #12
    //     0x42ad54: ldr          r9, [r9, #0xcc8]
    // 0x42ad58: r0 = call 0x620258
    //     0x42ad58: bl           0x620258
  }

  ctor_createCoin() {
    // ** addr: 0x42b32c, size: 0xe8
    // 0x42b32c: EnterFrame
    //     0x42b32c: stp          fp, lr, [SP, #-0x10]!
    //     0x42b330: mov          fp, SP
    // 0x42b334: AllocStack(0x18)
    //     0x42b334: sub          SP, SP, #0x18
    // 0x42b338: r0 = pp[0x40]
    //     0x42b338: ldr          r0, [PP, #0x40]
    //     0x42b33c: stur         r1, [fp, #-8]
    //     0x42b340: stur         r2, [fp, #-0x10]
    // 0x42b344: CheckStackOverflow
    //     0x42b344: ldr          BARRIER, [THR, #0x38]
    //     0x42b348: cmp          SP, BARRIER
    //     0x42b34c: b.ls         0x42b3f4
    // 0x42b350: StoreField: r1->field_7 = r0
    //     0x42b350: stur         r0, [r1, #7]
    // 0x42b354: StoreField: r1->field_b = r0
    //     0x42b354: stur         r0, [r1, #0xb]
    // 0x42b358: LoadField: r0 = r2->field_7
    //     0x42b358: ldur         r0, [r2, #7]
    //     0x42b35c: add          r0, r0, HEAP, lsl #32
    // 0x42b360: BARRIER = pp[0x40]
    //     0x42b360: ldr          BARRIER, [PP, #0x40]
    //     0x42b364: cmp          r0, r16
    // 0x42b368: b.eq 0x42b3fc
    //     0x42b368: b.eq         0x42b3fc
    //     0x42b36c: sbfx         r3, r0, #1, #0x1f
    // 0x42b370: branchIfSmi(r0, 0x42b378)
    //     0x42b370: tbz          r0, #0, 0x42b378
    // 0x42b374: LoadField: r3 = r0->field_7
    //     0x42b374: ldur         r3, [r0, #7]
    //     0x42b378: cmp          r3, #0
    // 0x42b37c: b.le 0x42b38c
    //     0x42b37c: b.le         0x42b38c
    //     0x42b380: str          r0, [SP]
    // 0x42b384: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x42b384: bl           0x2ac0a0
    // 0x42b388: b 0x42b390
    //     0x42b388: b            0x42b390
    // 0x42b38c: r0 = pp[0x148]
    //     0x42b38c: ldr          r0, [PP, #0x148]
    //     0x42b390: ldur         r2, [fp, #-8]
    //     0x42b394: ldur         r1, [fp, #-0x10]
    // 0x42b398: StoreField: r2->field_7 = r0
    //     0x42b398: stur         r0, [r2, #7]
    //     0x42b39c: ldurb        r16, [r2, #-1]
    //     0x42b3a0: ldurb        r17, [r0, #-1]
    //     0x42b3a4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42b3a8: tst          BARRIER, HEAP, lsr #32
    // 0x42b3ac: b.eq 0x42b3b4
    //     0x42b3ac: b.eq         0x42b3b4
    // 0x42b3b0: r0 = call 0x61e06c
    //     0x42b3b0: bl           0x61e06c
    // 0x42b3b4: LoadField: r0 = r1->field_b
    //     0x42b3b4: ldur         r0, [r1, #0xb]
    //     0x42b3b8: add          r0, r0, HEAP, lsl #32
    // 0x42b3bc: BARRIER = pp[0x40]
    //     0x42b3bc: ldr          BARRIER, [PP, #0x40]
    //     0x42b3c0: cmp          r0, r16
    // 0x42b3c4: b.eq 0x42b408
    //     0x42b3c4: b.eq         0x42b408
    // 0x42b3c8: StoreField: r2->field_b = r0
    //     0x42b3c8: stur         r0, [r2, #0xb]
    //     0x42b3cc: ldurb        r16, [r2, #-1]
    //     0x42b3d0: ldurb        r17, [r0, #-1]
    //     0x42b3d4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42b3d8: tst          BARRIER, HEAP, lsr #32
    // 0x42b3dc: b.eq 0x42b3e4
    //     0x42b3dc: b.eq         0x42b3e4
    // 0x42b3e0: r0 = call 0x61e06c
    //     0x42b3e0: bl           0x61e06c
    // 0x42b3e4: r0 = NULL
    //     0x42b3e4: mov          r0, NULL
    // 0x42b3e8: SP = fp
    //     0x42b3e8: mov          SP, fp
    // 0x42b3ec: LeaveFrame
    //     0x42b3ec: ldp          fp, lr, [SP], #0x10
    // 0x42b3f0: ret
    //     0x42b3f0: ret          
    // 0x42b3f4: r0 = call 0x61fa28
    //     0x42b3f4: bl           0x61fa28
    // 0x42b3f8: b 0x42b350
    //     0x42b3f8: b            0x42b350
    // 0x42b3fc: r9 = pp[0xb70]
    //     0x42b3fc: add          r9, PP, #0x10, lsl #12
    //     0x42b400: ldr          r9, [r9, #0xb60]
    // 0x42b404: r0 = call 0x620258
    //     0x42b404: bl           0x620258
    // 0x42b408: r9 = pp[0xd20]
    //     0x42b408: add          r9, PP, #0x10, lsl #12
    //     0x42b40c: ldr          r9, [r9, #0xd10]
    // 0x42b410: r0 = call 0x620258
    //     0x42b410: bl           0x620258
  }

  ctor_fromJson() {
    // ** addr: 0x4d51fc, size: 0x3a0
    // 0x4d51fc: EnterFrame
    //     0x4d51fc: stp          fp, lr, [SP, #-0x10]!
    //     0x4d5200: mov          fp, SP
    // 0x4d5204: AllocStack(0x20)
    //     0x4d5204: sub          SP, SP, #0x20
    // 0x4d5208: r0 = pp[0x40]
    //     0x4d5208: ldr          r0, [PP, #0x40]
    // 0x4d520c: r4 = r1
    //     0x4d520c: mov          r4, r1
    // 0x4d5210: r3 = r2
    //     0x4d5210: mov          r3, r2
    //     0x4d5214: stur         r1, [fp, #-8]
    //     0x4d5218: stur         r2, [fp, #-0x10]
    // 0x4d521c: CheckStackOverflow
    //     0x4d521c: ldr          BARRIER, [THR, #0x38]
    //     0x4d5220: cmp          SP, BARRIER
    //     0x4d5224: b.ls         0x4d5594
    // 0x4d5228: StoreField: r4->field_7 = r0
    //     0x4d5228: stur         r0, [r4, #7]
    // 0x4d522c: StoreField: r4->field_b = r0
    //     0x4d522c: stur         r0, [r4, #0xb]
    // 0x4d5230: StoreField: r4->field_f = r0
    //     0x4d5230: stur         r0, [r4, #0xf]
    // 0x4d5234: StoreField: r4->field_13 = r0
    //     0x4d5234: stur         r0, [r4, #0x13]
    // 0x4d5238: ArrayStore: r4[0] = r0  ; List_8
    //     0x4d5238: stur         r0, [r4, #0x17]
    // 0x4d523c: r0 = LoadClassIdInstr(r3)
    //     0x4d523c: ldur         r0, [r3, #-1]
    //     0x4d5240: ubfx         r0, r0, #0xc, #0x14
    // 0x4d5244: r1 = r3
    //     0x4d5244: mov          r1, r3
    // 0x4d5248: r2 = pp[0x73b]
    //     0x4d5248: add          r2, PP, #0xb, lsl #12
    //     0x4d524c: ldr          r2, [r2, #0x730]
    //     0x4d5250: sub          lr, r0, #1, lsl #12
    //     0x4d5254: ldr          lr, [r21, lr, lsl #3]
    // 0x4d5258: r0 = [R]()
    //     0x4d5258: blr          lr
    //     0x4d525c: cmp          r0, r22
    // 0x4d5260: b.ne 0x4d526c
    //     0x4d5260: b.ne         0x4d526c
    // 0x4d5264: r5 = pp[0x148]
    //     0x4d5264: ldr          r5, [PP, #0x148]
    // 0x4d5268: b 0x4d5270
    //     0x4d5268: b            0x4d5270
    // 0x4d526c: r5 = r0
    //     0x4d526c: mov          r5, r0
    //     0x4d5270: ldur         r4, [fp, #-8]
    //     0x4d5274: ldur         r3, [fp, #-0x10]
    // 0x4d5278: r0 = r5
    //     0x4d5278: mov          r0, r5
    //     0x4d527c: stur         r5, [fp, #-0x18]
    // 0x4d5280: r2 = NULL
    //     0x4d5280: mov          r2, NULL
    // 0x4d5284: r1 = NULL
    //     0x4d5284: mov          r1, NULL
    //     0x4d5288: mov          r4, #0x3c
    // 0x4d528c: branchIfSmi(r0, 0x4d5298)
    //     0x4d528c: tbz          r0, #0, 0x4d5298
    // 0x4d5290: r4 = LoadClassIdInstr(r0)
    //     0x4d5290: ldur         r4, [r0, #-1]
    //     0x4d5294: ubfx         r4, r4, #0xc, #0x14
    //     0x4d5298: sub          r4, r4, #0x5e
    //     0x4d529c: cmp          r4, #1
    // 0x4d52a0: b.ls 0x4d52b4
    //     0x4d52a0: b.ls         0x4d52b4
    // 0x4d52a4: r8 = pp[0x2f8]
    //     0x4d52a4: ldr          r8, [PP, #0x2f8]
    // 0x4d52a8: r3 = pp[0x689]
    //     0x4d52a8: add          r3, PP, #0x11, lsl #12
    //     0x4d52ac: ldr          r3, [r3, #0x678]
    // 0x4d52b0: r0 = call 0x62a0c0
    //     0x4d52b0: bl           0x62a0c0
    //     0x4d52b4: ldur         r0, [fp, #-0x18]
    //     0x4d52b8: ldur         r3, [fp, #-8]
    // 0x4d52bc: StoreField: r3->field_7 = r0
    //     0x4d52bc: stur         r0, [r3, #7]
    //     0x4d52c0: ldurb        r16, [r3, #-1]
    //     0x4d52c4: ldurb        r17, [r0, #-1]
    //     0x4d52c8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d52cc: tst          BARRIER, HEAP, lsr #32
    // 0x4d52d0: b.eq 0x4d52d8
    //     0x4d52d0: b.eq         0x4d52d8
    // 0x4d52d4: r0 = call 0x61e08c
    //     0x4d52d4: bl           0x61e08c
    //     0x4d52d8: ldur         r4, [fp, #-0x10]
    // 0x4d52dc: r0 = LoadClassIdInstr(r4)
    //     0x4d52dc: ldur         r0, [r4, #-1]
    //     0x4d52e0: ubfx         r0, r0, #0xc, #0x14
    // 0x4d52e4: r1 = r4
    //     0x4d52e4: mov          r1, r4
    // 0x4d52e8: r2 = pp[0x723]
    //     0x4d52e8: add          r2, PP, #0xb, lsl #12
    //     0x4d52ec: ldr          r2, [r2, #0x718]
    //     0x4d52f0: sub          lr, r0, #1, lsl #12
    //     0x4d52f4: ldr          lr, [r21, lr, lsl #3]
    // 0x4d52f8: r0 = [R]()
    //     0x4d52f8: blr          lr
    //     0x4d52fc: cmp          r0, r22
    // 0x4d5300: b.ne 0x4d530c
    //     0x4d5300: b.ne         0x4d530c
    // 0x4d5304: r5 = pp[0x148]
    //     0x4d5304: ldr          r5, [PP, #0x148]
    // 0x4d5308: b 0x4d5310
    //     0x4d5308: b            0x4d5310
    // 0x4d530c: r5 = r0
    //     0x4d530c: mov          r5, r0
    //     0x4d5310: ldur         r3, [fp, #-8]
    //     0x4d5314: ldur         r4, [fp, #-0x10]
    // 0x4d5318: r0 = r5
    //     0x4d5318: mov          r0, r5
    //     0x4d531c: stur         r5, [fp, #-0x18]
    // 0x4d5320: r2 = NULL
    //     0x4d5320: mov          r2, NULL
    // 0x4d5324: r1 = NULL
    //     0x4d5324: mov          r1, NULL
    //     0x4d5328: mov          r4, #0x3c
    // 0x4d532c: branchIfSmi(r0, 0x4d5338)
    //     0x4d532c: tbz          r0, #0, 0x4d5338
    // 0x4d5330: r4 = LoadClassIdInstr(r0)
    //     0x4d5330: ldur         r4, [r0, #-1]
    //     0x4d5334: ubfx         r4, r4, #0xc, #0x14
    //     0x4d5338: sub          r4, r4, #0x5e
    //     0x4d533c: cmp          r4, #1
    // 0x4d5340: b.ls 0x4d5354
    //     0x4d5340: b.ls         0x4d5354
    // 0x4d5344: r8 = pp[0x2f8]
    //     0x4d5344: ldr          r8, [PP, #0x2f8]
    // 0x4d5348: r3 = pp[0x699]
    //     0x4d5348: add          r3, PP, #0x11, lsl #12
    //     0x4d534c: ldr          r3, [r3, #0x688]
    // 0x4d5350: r0 = call 0x62a0c0
    //     0x4d5350: bl           0x62a0c0
    //     0x4d5354: ldur         r0, [fp, #-0x18]
    //     0x4d5358: ldur         r3, [fp, #-8]
    // 0x4d535c: StoreField: r3->field_b = r0
    //     0x4d535c: stur         r0, [r3, #0xb]
    //     0x4d5360: ldurb        r16, [r3, #-1]
    //     0x4d5364: ldurb        r17, [r0, #-1]
    //     0x4d5368: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d536c: tst          BARRIER, HEAP, lsr #32
    // 0x4d5370: b.eq 0x4d5378
    //     0x4d5370: b.eq         0x4d5378
    // 0x4d5374: r0 = call 0x61e08c
    //     0x4d5374: bl           0x61e08c
    //     0x4d5378: ldur         r4, [fp, #-0x10]
    // 0x4d537c: r0 = LoadClassIdInstr(r4)
    //     0x4d537c: ldur         r0, [r4, #-1]
    //     0x4d5380: ubfx         r0, r0, #0xc, #0x14
    // 0x4d5384: r1 = r4
    //     0x4d5384: mov          r1, r4
    // 0x4d5388: r2 = pp[0x753]
    //     0x4d5388: add          r2, PP, #0xb, lsl #12
    //     0x4d538c: ldr          r2, [r2, #0x748]
    //     0x4d5390: sub          lr, r0, #1, lsl #12
    //     0x4d5394: ldr          lr, [r21, lr, lsl #3]
    // 0x4d5398: r0 = [R]()
    //     0x4d5398: blr          lr
    //     0x4d539c: cmp          r0, r22
    // 0x4d53a0: b.ne 0x4d53ac
    //     0x4d53a0: b.ne         0x4d53ac
    // 0x4d53a4: r5 = pp[0x148]
    //     0x4d53a4: ldr          r5, [PP, #0x148]
    // 0x4d53a8: b 0x4d53b0
    //     0x4d53a8: b            0x4d53b0
    // 0x4d53ac: r5 = r0
    //     0x4d53ac: mov          r5, r0
    //     0x4d53b0: ldur         r3, [fp, #-8]
    //     0x4d53b4: ldur         r4, [fp, #-0x10]
    // 0x4d53b8: r0 = r5
    //     0x4d53b8: mov          r0, r5
    //     0x4d53bc: stur         r5, [fp, #-0x18]
    // 0x4d53c0: r2 = NULL
    //     0x4d53c0: mov          r2, NULL
    // 0x4d53c4: r1 = NULL
    //     0x4d53c4: mov          r1, NULL
    //     0x4d53c8: mov          r4, #0x3c
    // 0x4d53cc: branchIfSmi(r0, 0x4d53d8)
    //     0x4d53cc: tbz          r0, #0, 0x4d53d8
    // 0x4d53d0: r4 = LoadClassIdInstr(r0)
    //     0x4d53d0: ldur         r4, [r0, #-1]
    //     0x4d53d4: ubfx         r4, r4, #0xc, #0x14
    //     0x4d53d8: sub          r4, r4, #0x5e
    //     0x4d53dc: cmp          r4, #1
    // 0x4d53e0: b.ls 0x4d53f4
    //     0x4d53e0: b.ls         0x4d53f4
    // 0x4d53e4: r8 = pp[0x2f8]
    //     0x4d53e4: ldr          r8, [PP, #0x2f8]
    // 0x4d53e8: r3 = pp[0x6a9]
    //     0x4d53e8: add          r3, PP, #0x11, lsl #12
    //     0x4d53ec: ldr          r3, [r3, #0x698]
    // 0x4d53f0: r0 = call 0x62a0c0
    //     0x4d53f0: bl           0x62a0c0
    //     0x4d53f4: ldur         r0, [fp, #-0x18]
    //     0x4d53f8: ldur         r3, [fp, #-8]
    // 0x4d53fc: StoreField: r3->field_f = r0
    //     0x4d53fc: stur         r0, [r3, #0xf]
    //     0x4d5400: ldurb        r16, [r3, #-1]
    //     0x4d5404: ldurb        r17, [r0, #-1]
    //     0x4d5408: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d540c: tst          BARRIER, HEAP, lsr #32
    // 0x4d5410: b.eq 0x4d5418
    //     0x4d5410: b.eq         0x4d5418
    // 0x4d5414: r0 = call 0x61e08c
    //     0x4d5414: bl           0x61e08c
    //     0x4d5418: ldur         r4, [fp, #-0x10]
    // 0x4d541c: r0 = LoadClassIdInstr(r4)
    //     0x4d541c: ldur         r0, [r4, #-1]
    //     0x4d5420: ubfx         r0, r0, #0xc, #0x14
    // 0x4d5424: r1 = r4
    //     0x4d5424: mov          r1, r4
    // 0x4d5428: r2 = pp[0xba0]
    //     0x4d5428: add          r2, PP, #0x10, lsl #12
    //     0x4d542c: ldr          r2, [r2, #0xb90]
    //     0x4d5430: sub          lr, r0, #1, lsl #12
    //     0x4d5434: ldr          lr, [r21, lr, lsl #3]
    // 0x4d5438: r0 = [R]()
    //     0x4d5438: blr          lr
    //     0x4d543c: cmp          r0, r22
    // 0x4d5440: b.ne 0x4d544c
    //     0x4d5440: b.ne         0x4d544c
    // 0x4d5444: r0 = NULL
    //     0x4d5444: mov          r0, NULL
    // 0x4d5448: b 0x4d5478
    //     0x4d5448: b            0x4d5478
    //     0x4d544c: mov          r1, #0x3c
    // 0x4d5450: branchIfSmi(r0, 0x4d545c)
    //     0x4d5450: tbz          r0, #0, 0x4d545c
    // 0x4d5454: r1 = LoadClassIdInstr(r0)
    //     0x4d5454: ldur         r1, [r0, #-1]
    //     0x4d5458: ubfx         r1, r1, #0xc, #0x14
    //     0x4d545c: str          r0, [SP]
    // 0x4d5460: r0 = r1
    //     0x4d5460: mov          r0, r1
    // 0x4d5464: r4 = pp[0x3a8]
    //     0x4d5464: ldr          r4, [PP, #0x3a8]
    //     0x4d5468: mov          r17, #0x3e07
    //     0x4d546c: add          lr, r0, r17
    //     0x4d5470: ldr          lr, [r21, lr, lsl #3]
    // 0x4d5474: r0 = [R]()
    //     0x4d5474: blr          lr
    //     0x4d5478: cmp          r0, r22
    // 0x4d547c: b.ne 0x4d5484
    //     0x4d547c: b.ne         0x4d5484
    // 0x4d5480: r0 = pp[0x148]
    //     0x4d5480: ldr          r0, [PP, #0x148]
    //     0x4d5484: ldur         r3, [fp, #-8]
    //     0x4d5488: ldur         r4, [fp, #-0x10]
    // 0x4d548c: StoreField: r3->field_13 = r0
    //     0x4d548c: stur         r0, [r3, #0x13]
    //     0x4d5490: ldurb        r16, [r3, #-1]
    //     0x4d5494: ldurb        r17, [r0, #-1]
    //     0x4d5498: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d549c: tst          BARRIER, HEAP, lsr #32
    // 0x4d54a0: b.eq 0x4d54a8
    //     0x4d54a0: b.eq         0x4d54a8
    // 0x4d54a4: r0 = call 0x61e08c
    //     0x4d54a4: bl           0x61e08c
    // 0x4d54a8: r0 = LoadClassIdInstr(r4)
    //     0x4d54a8: ldur         r0, [r4, #-1]
    //     0x4d54ac: ubfx         r0, r0, #0xc, #0x14
    // 0x4d54b0: r1 = r4
    //     0x4d54b0: mov          r1, r4
    // 0x4d54b4: r2 = pp[0x6b9]
    //     0x4d54b4: add          r2, PP, #0x11, lsl #12
    //     0x4d54b8: ldr          r2, [r2, #0x6a8]
    //     0x4d54bc: sub          lr, r0, #1, lsl #12
    //     0x4d54c0: ldr          lr, [r21, lr, lsl #3]
    // 0x4d54c4: r0 = [R]()
    //     0x4d54c4: blr          lr
    //     0x4d54c8: cmp          r0, r22
    // 0x4d54cc: b.ne 0x4d54d4
    //     0x4d54cc: b.ne         0x4d54d4
    //     0x4d54d0: add          r0, NULL, #0x30
    //     0x4d54d4: ldur         r3, [fp, #-0x10]
    // 0x4d54d8: r2 = NULL
    //     0x4d54d8: mov          r2, NULL
    // 0x4d54dc: r1 = NULL
    //     0x4d54dc: mov          r1, NULL
    //     0x4d54e0: mov          r4, #0x3c
    // 0x4d54e4: branchIfSmi(r0, 0x4d54f0)
    //     0x4d54e4: tbz          r0, #0, 0x4d54f0
    // 0x4d54e8: r4 = LoadClassIdInstr(r0)
    //     0x4d54e8: ldur         r4, [r0, #-1]
    //     0x4d54ec: ubfx         r4, r4, #0xc, #0x14
    //     0x4d54f0: cmp          r4, #0x3f
    // 0x4d54f4: b.eq 0x4d5508
    //     0x4d54f4: b.eq         0x4d5508
    // 0x4d54f8: r8 = pp[0xa08]
    //     0x4d54f8: ldr          r8, [PP, #0xa08]
    // 0x4d54fc: r3 = pp[0x6c1]
    //     0x4d54fc: add          r3, PP, #0x11, lsl #12
    //     0x4d5500: ldr          r3, [r3, #0x6b0]
    // 0x4d5504: r0 = call 0x62a0a0
    //     0x4d5504: bl           0x62a0a0
    //     0x4d5508: ldur         r1, [fp, #-0x10]
    // 0x4d550c: r0 = LoadClassIdInstr(r1)
    //     0x4d550c: ldur         r0, [r1, #-1]
    //     0x4d5510: ubfx         r0, r0, #0xc, #0x14
    // 0x4d5514: r2 = pp[0x6d1]
    //     0x4d5514: add          r2, PP, #0x11, lsl #12
    //     0x4d5518: ldr          r2, [r2, #0x6c0]
    //     0x4d551c: sub          lr, r0, #1, lsl #12
    //     0x4d5520: ldr          lr, [r21, lr, lsl #3]
    // 0x4d5524: r0 = [R]()
    //     0x4d5524: blr          lr
    //     0x4d5528: cmp          r0, r22
    // 0x4d552c: b.ne 0x4d5538
    //     0x4d552c: b.ne         0x4d5538
    //     0x4d5530: add          r4, NULL, #0x30
    // 0x4d5534: b 0x4d553c
    //     0x4d5534: b            0x4d553c
    // 0x4d5538: r4 = r0
    //     0x4d5538: mov          r4, r0
    //     0x4d553c: ldur         r3, [fp, #-8]
    // 0x4d5540: r0 = r4
    //     0x4d5540: mov          r0, r4
    //     0x4d5544: stur         r4, [fp, #-0x10]
    // 0x4d5548: r2 = NULL
    //     0x4d5548: mov          r2, NULL
    // 0x4d554c: r1 = NULL
    //     0x4d554c: mov          r1, NULL
    //     0x4d5550: mov          r4, #0x3c
    // 0x4d5554: branchIfSmi(r0, 0x4d5560)
    //     0x4d5554: tbz          r0, #0, 0x4d5560
    // 0x4d5558: r4 = LoadClassIdInstr(r0)
    //     0x4d5558: ldur         r4, [r0, #-1]
    //     0x4d555c: ubfx         r4, r4, #0xc, #0x14
    //     0x4d5560: cmp          r4, #0x3f
    // 0x4d5564: b.eq 0x4d5578
    //     0x4d5564: b.eq         0x4d5578
    // 0x4d5568: r8 = pp[0xa08]
    //     0x4d5568: ldr          r8, [PP, #0xa08]
    // 0x4d556c: r3 = pp[0x6d9]
    //     0x4d556c: add          r3, PP, #0x11, lsl #12
    //     0x4d5570: ldr          r3, [r3, #0x6c8]
    // 0x4d5574: r0 = call 0x62a0a0
    //     0x4d5574: bl           0x62a0a0
    //     0x4d5578: ldur         r1, [fp, #-8]
    //     0x4d557c: ldur         r2, [fp, #-0x10]
    // 0x4d5580: ArrayStore: r1[0] = r2  ; List_8
    //     0x4d5580: stur         r2, [r1, #0x17]
    // 0x4d5584: r0 = NULL
    //     0x4d5584: mov          r0, NULL
    // 0x4d5588: SP = fp
    //     0x4d5588: mov          SP, fp
    // 0x4d558c: LeaveFrame
    //     0x4d558c: ldp          fp, lr, [SP], #0x10
    // 0x4d5590: ret
    //     0x4d5590: ret          
    // 0x4d5594: r0 = call 0x61fa28
    //     0x4d5594: bl           0x61fa28
    // 0x4d5598: b 0x4d5228
    //     0x4d5598: b            0x4d5228
  }

  ctor_fromJson() {
    // ** addr: 0x4d5c6c, size: 0x230
    // 0x4d5c6c: EnterFrame
    //     0x4d5c6c: stp          fp, lr, [SP, #-0x10]!
    //     0x4d5c70: mov          fp, SP
    // 0x4d5c74: AllocStack(0x30)
    //     0x4d5c74: sub          SP, SP, #0x30
    // 0x4d5c78: r0 = pp[0x40]
    //     0x4d5c78: ldr          r0, [PP, #0x40]
    // 0x4d5c7c: r4 = r1
    //     0x4d5c7c: mov          r4, r1
    // 0x4d5c80: r3 = r2
    //     0x4d5c80: mov          r3, r2
    //     0x4d5c84: stur         r1, [fp, #-8]
    //     0x4d5c88: stur         r2, [fp, #-0x10]
    // 0x4d5c8c: CheckStackOverflow
    //     0x4d5c8c: ldr          BARRIER, [THR, #0x38]
    //     0x4d5c90: cmp          SP, BARRIER
    //     0x4d5c94: b.ls         0x4d5e94
    // 0x4d5c98: StoreField: r4->field_7 = r0
    //     0x4d5c98: stur         r0, [r4, #7]
    // 0x4d5c9c: StoreField: r4->field_b = r0
    //     0x4d5c9c: stur         r0, [r4, #0xb]
    // 0x4d5ca0: r0 = LoadClassIdInstr(r3)
    //     0x4d5ca0: ldur         r0, [r3, #-1]
    //     0x4d5ca4: ubfx         r0, r0, #0xc, #0x14
    // 0x4d5ca8: r1 = r3
    //     0x4d5ca8: mov          r1, r3
    // 0x4d5cac: r2 = pp[0xdc0]
    //     0x4d5cac: add          r2, PP, #0x10, lsl #12
    //     0x4d5cb0: ldr          r2, [r2, #0xdb0]
    //     0x4d5cb4: sub          lr, r0, #1, lsl #12
    //     0x4d5cb8: ldr          lr, [r21, lr, lsl #3]
    // 0x4d5cbc: r0 = [R]()
    //     0x4d5cbc: blr          lr
    //     0x4d5cc0: cmp          r0, r22
    // 0x4d5cc4: b.ne 0x4d5cdc
    //     0x4d5cc4: b.ne         0x4d5cdc
    // 0x4d5cc8: r1 = NULL
    //     0x4d5cc8: mov          r1, NULL
    //     0x4d5ccc: mov          r2, #0
    // 0x4d5cd0: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4d5cd0: bl           0x277268
    // 0x4d5cd4: r5 = r0
    //     0x4d5cd4: mov          r5, r0
    // 0x4d5cd8: b 0x4d5ce0
    //     0x4d5cd8: b            0x4d5ce0
    // 0x4d5cdc: r5 = r0
    //     0x4d5cdc: mov          r5, r0
    //     0x4d5ce0: ldur         r4, [fp, #-8]
    //     0x4d5ce4: ldur         r3, [fp, #-0x10]
    // 0x4d5ce8: r0 = r5
    //     0x4d5ce8: mov          r0, r5
    //     0x4d5cec: stur         r5, [fp, #-0x18]
    // 0x4d5cf0: r2 = NULL
    //     0x4d5cf0: mov          r2, NULL
    // 0x4d5cf4: r1 = NULL
    //     0x4d5cf4: mov          r1, NULL
    // 0x4d5cf8: r8 = pp[0xfa8]
    //     0x4d5cf8: ldr          r8, [PP, #0xfa8]
    // 0x4d5cfc: r3 = pp[0xdc8]
    //     0x4d5cfc: add          r3, PP, #0x10, lsl #12
    //     0x4d5d00: ldr          r3, [r3, #0xdb8]
    // 0x4d5d04: r0 = call 0x285664
    //     0x4d5d04: bl           0x285664
    // 0x4d5d08: r1 = pp[0xdd8]
    //     0x4d5d08: add          r1, PP, #0x10, lsl #12
    //     0x4d5d0c: ldr          r1, [r1, #0xdc8]
    // 0x4d5d10: r2 = NULL
    //     0x4d5d10: mov          r2, NULL
    // 0x4d5d14: r0 = call 0x61ec54
    //     0x4d5d14: bl           0x61ec54
    // 0x4d5d18: r1 = r0
    //     0x4d5d18: mov          r1, r0
    //     0x4d5d1c: ldur         r0, [fp, #-0x18]
    // 0x4d5d20: r2 = LoadClassIdInstr(r0)
    //     0x4d5d20: ldur         r2, [r0, #-1]
    //     0x4d5d24: ubfx         r2, r2, #0xc, #0x14
    // 0x4d5d28: BARRIER = pp[0x78b]
    //     0x4d5d28: add          BARRIER, PP, #0xb, lsl #12
    //     0x4d5d2c: ldr          BARRIER, [BARRIER, #0x780]
    //     0x4d5d30: stp          r0, BARRIER, [SP, #8]
    //     0x4d5d34: str          r1, [SP]
    // 0x4d5d38: r0 = r2
    //     0x4d5d38: mov          r0, r2
    // 0x4d5d3c: r4 = pp[0x58]
    //     0x4d5d3c: ldr          r4, [PP, #0x58]
    //     0x4d5d40: mov          r17, #0x86d9
    //     0x4d5d44: add          lr, r0, r17
    //     0x4d5d48: ldr          lr, [r21, lr, lsl #3]
    // 0x4d5d4c: r0 = [R]()
    //     0x4d5d4c: blr          lr
    // 0x4d5d50: r1 = LoadClassIdInstr(r0)
    //     0x4d5d50: ldur         r1, [r0, #-1]
    //     0x4d5d54: ubfx         r1, r1, #0xc, #0x14
    // 0x4d5d58: BARRIER = r0
    //     0x4d5d58: mov          BARRIER, r0
    // 0x4d5d5c: r0 = r1
    //     0x4d5d5c: mov          r0, r1
    // 0x4d5d60: r1 = BARRIER
    //     0x4d5d60: mov          r1, BARRIER
    // 0x4d5d64: r4 = pp[0x4c0]
    //     0x4d5d64: ldr          r4, [PP, #0x4c0]
    //     0x4d5d68: add          lr, r0, #0x35e
    //     0x4d5d6c: ldr          lr, [r21, lr, lsl #3]
    // 0x4d5d70: r0 = [R]()
    //     0x4d5d70: blr          lr
    //     0x4d5d74: ldur         r3, [fp, #-8]
    // 0x4d5d78: StoreField: r3->field_7 = r0
    //     0x4d5d78: stur         r0, [r3, #7]
    //     0x4d5d7c: ldurb        r16, [r3, #-1]
    //     0x4d5d80: ldurb        r17, [r0, #-1]
    //     0x4d5d84: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d5d88: tst          BARRIER, HEAP, lsr #32
    // 0x4d5d8c: b.eq 0x4d5d94
    //     0x4d5d8c: b.eq         0x4d5d94
    // 0x4d5d90: r0 = call 0x61e08c
    //     0x4d5d90: bl           0x61e08c
    //     0x4d5d94: ldur         r1, [fp, #-0x10]
    // 0x4d5d98: r0 = LoadClassIdInstr(r1)
    //     0x4d5d98: ldur         r0, [r1, #-1]
    //     0x4d5d9c: ubfx         r0, r0, #0xc, #0x14
    // 0x4d5da0: r2 = pp[0xde0]
    //     0x4d5da0: add          r2, PP, #0x10, lsl #12
    //     0x4d5da4: ldr          r2, [r2, #0xdd0]
    //     0x4d5da8: sub          lr, r0, #1, lsl #12
    //     0x4d5dac: ldr          lr, [r21, lr, lsl #3]
    // 0x4d5db0: r0 = [R]()
    //     0x4d5db0: blr          lr
    //     0x4d5db4: cmp          r0, r22
    // 0x4d5db8: b.ne 0x4d5dd0
    //     0x4d5db8: b.ne         0x4d5dd0
    // 0x4d5dbc: r1 = NULL
    //     0x4d5dbc: mov          r1, NULL
    //     0x4d5dc0: mov          r2, #0
    // 0x4d5dc4: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4d5dc4: bl           0x277268
    // 0x4d5dc8: r4 = r0
    //     0x4d5dc8: mov          r4, r0
    // 0x4d5dcc: b 0x4d5dd4
    //     0x4d5dcc: b            0x4d5dd4
    // 0x4d5dd0: r4 = r0
    //     0x4d5dd0: mov          r4, r0
    //     0x4d5dd4: ldur         r3, [fp, #-8]
    // 0x4d5dd8: r0 = r4
    //     0x4d5dd8: mov          r0, r4
    //     0x4d5ddc: stur         r4, [fp, #-0x10]
    // 0x4d5de0: r2 = NULL
    //     0x4d5de0: mov          r2, NULL
    // 0x4d5de4: r1 = NULL
    //     0x4d5de4: mov          r1, NULL
    // 0x4d5de8: r8 = pp[0xfa8]
    //     0x4d5de8: ldr          r8, [PP, #0xfa8]
    // 0x4d5dec: r3 = pp[0xde8]
    //     0x4d5dec: add          r3, PP, #0x10, lsl #12
    //     0x4d5df0: ldr          r3, [r3, #0xdd8]
    // 0x4d5df4: r0 = call 0x285664
    //     0x4d5df4: bl           0x285664
    // 0x4d5df8: r1 = pp[0xdf8]
    //     0x4d5df8: add          r1, PP, #0x10, lsl #12
    //     0x4d5dfc: ldr          r1, [r1, #0xde8]
    // 0x4d5e00: r2 = NULL
    //     0x4d5e00: mov          r2, NULL
    // 0x4d5e04: r0 = call 0x61ec54
    //     0x4d5e04: bl           0x61ec54
    // 0x4d5e08: r1 = r0
    //     0x4d5e08: mov          r1, r0
    //     0x4d5e0c: ldur         r0, [fp, #-0x10]
    // 0x4d5e10: r2 = LoadClassIdInstr(r0)
    //     0x4d5e10: ldur         r2, [r0, #-1]
    //     0x4d5e14: ubfx         r2, r2, #0xc, #0x14
    // 0x4d5e18: BARRIER = pp[0x793]
    //     0x4d5e18: add          BARRIER, PP, #0xb, lsl #12
    //     0x4d5e1c: ldr          BARRIER, [BARRIER, #0x788]
    //     0x4d5e20: stp          r0, BARRIER, [SP, #8]
    //     0x4d5e24: str          r1, [SP]
    // 0x4d5e28: r0 = r2
    //     0x4d5e28: mov          r0, r2
    // 0x4d5e2c: r4 = pp[0x58]
    //     0x4d5e2c: ldr          r4, [PP, #0x58]
    //     0x4d5e30: mov          r17, #0x86d9
    //     0x4d5e34: add          lr, r0, r17
    //     0x4d5e38: ldr          lr, [r21, lr, lsl #3]
    // 0x4d5e3c: r0 = [R]()
    //     0x4d5e3c: blr          lr
    // 0x4d5e40: r1 = LoadClassIdInstr(r0)
    //     0x4d5e40: ldur         r1, [r0, #-1]
    //     0x4d5e44: ubfx         r1, r1, #0xc, #0x14
    // 0x4d5e48: BARRIER = r0
    //     0x4d5e48: mov          BARRIER, r0
    // 0x4d5e4c: r0 = r1
    //     0x4d5e4c: mov          r0, r1
    // 0x4d5e50: r1 = BARRIER
    //     0x4d5e50: mov          r1, BARRIER
    // 0x4d5e54: r4 = pp[0x4c0]
    //     0x4d5e54: ldr          r4, [PP, #0x4c0]
    //     0x4d5e58: add          lr, r0, #0x35e
    //     0x4d5e5c: ldr          lr, [r21, lr, lsl #3]
    // 0x4d5e60: r0 = [R]()
    //     0x4d5e60: blr          lr
    //     0x4d5e64: ldur         r1, [fp, #-8]
    // 0x4d5e68: StoreField: r1->field_b = r0
    //     0x4d5e68: stur         r0, [r1, #0xb]
    //     0x4d5e6c: ldurb        r16, [r1, #-1]
    //     0x4d5e70: ldurb        r17, [r0, #-1]
    //     0x4d5e74: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d5e78: tst          BARRIER, HEAP, lsr #32
    // 0x4d5e7c: b.eq 0x4d5e84
    //     0x4d5e7c: b.eq         0x4d5e84
    // 0x4d5e80: r0 = call 0x61e04c
    //     0x4d5e80: bl           0x61e04c
    // 0x4d5e84: r0 = NULL
    //     0x4d5e84: mov          r0, NULL
    // 0x4d5e88: SP = fp
    //     0x4d5e88: mov          SP, fp
    // 0x4d5e8c: LeaveFrame
    //     0x4d5e8c: ldp          fp, lr, [SP], #0x10
    // 0x4d5e90: ret
    //     0x4d5e90: ret          
    // 0x4d5e94: r0 = call 0x61fa28
    //     0x4d5e94: bl           0x61fa28
    // 0x4d5e98: b 0x4d5c98
    //     0x4d5e98: b            0x4d5c98
  }

  _anon_closure() {
    // ** addr: 0x4d5e9c, size: 0x60
    // 0x4d5e9c: EnterFrame
    //     0x4d5e9c: stp          fp, lr, [SP, #-0x10]!
    //     0x4d5ea0: mov          fp, SP
    // 0x4d5ea4: AllocStack(8)
    //     0x4d5ea4: sub          SP, SP, #8
    // 0x4d5ea8: CheckStackOverflow
    //     0x4d5ea8: ldr          BARRIER, [THR, #0x38]
    //     0x4d5eac: cmp          SP, BARRIER
    //     0x4d5eb0: b.ls         0x4d5ef4
    //     0x4d5eb4: ldr          r0, [fp, #0x10]
    // 0x4d5eb8: r2 = NULL
    //     0x4d5eb8: mov          r2, NULL
    // 0x4d5ebc: r1 = NULL
    //     0x4d5ebc: mov          r1, NULL
    // 0x4d5ec0: r8 = pp[0x3cd0]
    //     0x4d5ec0: ldr          r8, [PP, #0x3cd0]
    // 0x4d5ec4: r3 = pp[0xe00]
    //     0x4d5ec4: add          r3, PP, #0x10, lsl #12
    //     0x4d5ec8: ldr          r3, [r3, #0xdf0]
    // 0x4d5ecc: r0 = call 0x2b15f0
    //     0x4d5ecc: bl           0x2b15f0
    // 0x4d5ed0: r0 = call 0x4d607c
    //     0x4d5ed0: bl           0x4d607c
    // 0x4d5ed4: r1 = r0
    //     0x4d5ed4: mov          r1, r0
    //     0x4d5ed8: ldr          r2, [fp, #0x10]
    //     0x4d5edc: stur         r0, [fp, #-8]
    // 0x4d5ee0: r0 = soul_flutter_international$model$party_model_PartyRedPocketNum::ctor_fromJson()
    //     0x4d5ee0: bl           0x4d5efc
    //     0x4d5ee4: ldur         r0, [fp, #-8]
    // 0x4d5ee8: SP = fp
    //     0x4d5ee8: mov          SP, fp
    // 0x4d5eec: LeaveFrame
    //     0x4d5eec: ldp          fp, lr, [SP], #0x10
    // 0x4d5ef0: ret
    //     0x4d5ef0: ret          
    // 0x4d5ef4: r0 = call 0x61fa28
    //     0x4d5ef4: bl           0x61fa28
    // 0x4d5ef8: b 0x4d5eb4
    //     0x4d5ef8: b            0x4d5eb4
  }

  _anon_closure() {
    // ** addr: 0x4d6088, size: 0x60
    // 0x4d6088: EnterFrame
    //     0x4d6088: stp          fp, lr, [SP, #-0x10]!
    //     0x4d608c: mov          fp, SP
    // 0x4d6090: AllocStack(8)
    //     0x4d6090: sub          SP, SP, #8
    // 0x4d6094: CheckStackOverflow
    //     0x4d6094: ldr          BARRIER, [THR, #0x38]
    //     0x4d6098: cmp          SP, BARRIER
    //     0x4d609c: b.ls         0x4d60e0
    //     0x4d60a0: ldr          r0, [fp, #0x10]
    // 0x4d60a4: r2 = NULL
    //     0x4d60a4: mov          r2, NULL
    // 0x4d60a8: r1 = NULL
    //     0x4d60a8: mov          r1, NULL
    // 0x4d60ac: r8 = pp[0x3cd0]
    //     0x4d60ac: ldr          r8, [PP, #0x3cd0]
    // 0x4d60b0: r3 = pp[0xe30]
    //     0x4d60b0: add          r3, PP, #0x10, lsl #12
    //     0x4d60b4: ldr          r3, [r3, #0xe20]
    // 0x4d60b8: r0 = call 0x2b15f0
    //     0x4d60b8: bl           0x2b15f0
    // 0x4d60bc: r0 = call 0x4d6268
    //     0x4d60bc: bl           0x4d6268
    // 0x4d60c0: r1 = r0
    //     0x4d60c0: mov          r1, r0
    //     0x4d60c4: ldr          r2, [fp, #0x10]
    //     0x4d60c8: stur         r0, [fp, #-8]
    // 0x4d60cc: r0 = soul_flutter_international$model$party_model_PartyRedPocketCoin::ctor_fromJson()
    //     0x4d60cc: bl           0x4d60e8
    //     0x4d60d0: ldur         r0, [fp, #-8]
    // 0x4d60d4: SP = fp
    //     0x4d60d4: mov          SP, fp
    // 0x4d60d8: LeaveFrame
    //     0x4d60d8: ldp          fp, lr, [SP], #0x10
    // 0x4d60dc: ret
    //     0x4d60dc: ret          
    // 0x4d60e0: r0 = call 0x61fa28
    //     0x4d60e0: bl           0x61fa28
    // 0x4d60e4: b 0x4d60a0
    //     0x4d60e4: b            0x4d60a0
  }

  ctor_fromJson() {
    // ** addr: 0x4d5efc, size: 0x180
    // 0x4d5efc: EnterFrame
    //     0x4d5efc: stp          fp, lr, [SP, #-0x10]!
    //     0x4d5f00: mov          fp, SP
    // 0x4d5f04: AllocStack(0x18)
    //     0x4d5f04: sub          SP, SP, #0x18
    // 0x4d5f08: r0 = pp[0x40]
    //     0x4d5f08: ldr          r0, [PP, #0x40]
    // 0x4d5f0c: r4 = r1
    //     0x4d5f0c: mov          r4, r1
    // 0x4d5f10: r3 = r2
    //     0x4d5f10: mov          r3, r2
    //     0x4d5f14: stur         r1, [fp, #-8]
    //     0x4d5f18: stur         r2, [fp, #-0x10]
    // 0x4d5f1c: CheckStackOverflow
    //     0x4d5f1c: ldr          BARRIER, [THR, #0x38]
    //     0x4d5f20: cmp          SP, BARRIER
    //     0x4d5f24: b.ls         0x4d6074
    // 0x4d5f28: StoreField: r4->field_7 = r0
    //     0x4d5f28: stur         r0, [r4, #7]
    // 0x4d5f2c: StoreField: r4->field_b = r0
    //     0x4d5f2c: stur         r0, [r4, #0xb]
    // 0x4d5f30: r0 = LoadClassIdInstr(r3)
    //     0x4d5f30: ldur         r0, [r3, #-1]
    //     0x4d5f34: ubfx         r0, r0, #0xc, #0x14
    // 0x4d5f38: r1 = r3
    //     0x4d5f38: mov          r1, r3
    // 0x4d5f3c: r2 = pp[0xba8]
    //     0x4d5f3c: add          r2, PP, #0x10, lsl #12
    //     0x4d5f40: ldr          r2, [r2, #0xb98]
    //     0x4d5f44: sub          lr, r0, #1, lsl #12
    //     0x4d5f48: ldr          lr, [r21, lr, lsl #3]
    // 0x4d5f4c: r0 = [R]()
    //     0x4d5f4c: blr          lr
    //     0x4d5f50: cmp          r0, r22
    // 0x4d5f54: b.ne 0x4d5f60
    //     0x4d5f54: b.ne         0x4d5f60
    //     0x4d5f58: mov          r5, #0
    // 0x4d5f5c: b 0x4d5f64
    //     0x4d5f5c: b            0x4d5f64
    // 0x4d5f60: r5 = r0
    //     0x4d5f60: mov          r5, r0
    //     0x4d5f64: ldur         r4, [fp, #-8]
    //     0x4d5f68: ldur         r3, [fp, #-0x10]
    // 0x4d5f6c: r0 = r5
    //     0x4d5f6c: mov          r0, r5
    //     0x4d5f70: stur         r5, [fp, #-0x18]
    // 0x4d5f74: r2 = NULL
    //     0x4d5f74: mov          r2, NULL
    // 0x4d5f78: r1 = NULL
    //     0x4d5f78: mov          r1, NULL
    // 0x4d5f7c: branchIfSmi(r0, 0x4d5fa4)
    //     0x4d5f7c: tbz          r0, #0, 0x4d5fa4
    // 0x4d5f80: r4 = LoadClassIdInstr(r0)
    //     0x4d5f80: ldur         r4, [r0, #-1]
    //     0x4d5f84: ubfx         r4, r4, #0xc, #0x14
    //     0x4d5f88: sub          r4, r4, #0x3c
    //     0x4d5f8c: cmp          r4, #1
    // 0x4d5f90: b.ls 0x4d5fa4
    //     0x4d5f90: b.ls         0x4d5fa4
    // 0x4d5f94: r8 = pp[0x1170]
    //     0x4d5f94: ldr          r8, [PP, #0x1170]
    // 0x4d5f98: r3 = pp[0xe10]
    //     0x4d5f98: add          r3, PP, #0x10, lsl #12
    //     0x4d5f9c: ldr          r3, [r3, #0xe00]
    // 0x4d5fa0: r0 = call 0x62aa34
    //     0x4d5fa0: bl           0x62aa34
    //     0x4d5fa4: ldur         r0, [fp, #-0x18]
    //     0x4d5fa8: ldur         r3, [fp, #-8]
    // 0x4d5fac: StoreField: r3->field_7 = r0
    //     0x4d5fac: stur         r0, [r3, #7]
    // 0x4d5fb0: branchIfSmi(r0, 0x4d5fcc)
    //     0x4d5fb0: tbz          r0, #0, 0x4d5fcc
    //     0x4d5fb4: ldurb        r16, [r3, #-1]
    //     0x4d5fb8: ldurb        r17, [r0, #-1]
    //     0x4d5fbc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d5fc0: tst          BARRIER, HEAP, lsr #32
    // 0x4d5fc4: b.eq 0x4d5fcc
    //     0x4d5fc4: b.eq         0x4d5fcc
    // 0x4d5fc8: r0 = call 0x61e08c
    //     0x4d5fc8: bl           0x61e08c
    //     0x4d5fcc: ldur         r1, [fp, #-0x10]
    // 0x4d5fd0: r0 = LoadClassIdInstr(r1)
    //     0x4d5fd0: ldur         r0, [r1, #-1]
    //     0x4d5fd4: ubfx         r0, r0, #0xc, #0x14
    // 0x4d5fd8: r2 = pp[0xa5f]
    //     0x4d5fd8: add          r2, PP, #0xf, lsl #12
    //     0x4d5fdc: ldr          r2, [r2, #0xa50]
    //     0x4d5fe0: sub          lr, r0, #1, lsl #12
    //     0x4d5fe4: ldr          lr, [r21, lr, lsl #3]
    // 0x4d5fe8: r0 = [R]()
    //     0x4d5fe8: blr          lr
    //     0x4d5fec: cmp          r0, r22
    // 0x4d5ff0: b.ne 0x4d5ffc
    //     0x4d5ff0: b.ne         0x4d5ffc
    // 0x4d5ff4: r4 = pp[0x148]
    //     0x4d5ff4: ldr          r4, [PP, #0x148]
    // 0x4d5ff8: b 0x4d6000
    //     0x4d5ff8: b            0x4d6000
    // 0x4d5ffc: r4 = r0
    //     0x4d5ffc: mov          r4, r0
    //     0x4d6000: ldur         r3, [fp, #-8]
    // 0x4d6004: r0 = r4
    //     0x4d6004: mov          r0, r4
    //     0x4d6008: stur         r4, [fp, #-0x10]
    // 0x4d600c: r2 = NULL
    //     0x4d600c: mov          r2, NULL
    // 0x4d6010: r1 = NULL
    //     0x4d6010: mov          r1, NULL
    //     0x4d6014: mov          r4, #0x3c
    // 0x4d6018: branchIfSmi(r0, 0x4d6024)
    //     0x4d6018: tbz          r0, #0, 0x4d6024
    // 0x4d601c: r4 = LoadClassIdInstr(r0)
    //     0x4d601c: ldur         r4, [r0, #-1]
    //     0x4d6020: ubfx         r4, r4, #0xc, #0x14
    //     0x4d6024: sub          r4, r4, #0x5e
    //     0x4d6028: cmp          r4, #1
    // 0x4d602c: b.ls 0x4d6040
    //     0x4d602c: b.ls         0x4d6040
    // 0x4d6030: r8 = pp[0x2f8]
    //     0x4d6030: ldr          r8, [PP, #0x2f8]
    // 0x4d6034: r3 = pp[0xe20]
    //     0x4d6034: add          r3, PP, #0x10, lsl #12
    //     0x4d6038: ldr          r3, [r3, #0xe10]
    // 0x4d603c: r0 = call 0x62a0c0
    //     0x4d603c: bl           0x62a0c0
    //     0x4d6040: ldur         r0, [fp, #-0x10]
    //     0x4d6044: ldur         r1, [fp, #-8]
    // 0x4d6048: StoreField: r1->field_b = r0
    //     0x4d6048: stur         r0, [r1, #0xb]
    //     0x4d604c: ldurb        r16, [r1, #-1]
    //     0x4d6050: ldurb        r17, [r0, #-1]
    //     0x4d6054: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d6058: tst          BARRIER, HEAP, lsr #32
    // 0x4d605c: b.eq 0x4d6064
    //     0x4d605c: b.eq         0x4d6064
    // 0x4d6060: r0 = call 0x61e04c
    //     0x4d6060: bl           0x61e04c
    // 0x4d6064: r0 = NULL
    //     0x4d6064: mov          r0, NULL
    // 0x4d6068: SP = fp
    //     0x4d6068: mov          SP, fp
    // 0x4d606c: LeaveFrame
    //     0x4d606c: ldp          fp, lr, [SP], #0x10
    // 0x4d6070: ret
    //     0x4d6070: ret          
    // 0x4d6074: r0 = call 0x61fa28
    //     0x4d6074: bl           0x61fa28
    // 0x4d6078: b 0x4d5f28
    //     0x4d6078: b            0x4d5f28
  }

  ctor_fromJson() {
    // ** addr: 0x4d60e8, size: 0x180
    // 0x4d60e8: EnterFrame
    //     0x4d60e8: stp          fp, lr, [SP, #-0x10]!
    //     0x4d60ec: mov          fp, SP
    // 0x4d60f0: AllocStack(0x18)
    //     0x4d60f0: sub          SP, SP, #0x18
    // 0x4d60f4: r0 = pp[0x40]
    //     0x4d60f4: ldr          r0, [PP, #0x40]
    // 0x4d60f8: r4 = r1
    //     0x4d60f8: mov          r4, r1
    // 0x4d60fc: r3 = r2
    //     0x4d60fc: mov          r3, r2
    //     0x4d6100: stur         r1, [fp, #-8]
    //     0x4d6104: stur         r2, [fp, #-0x10]
    // 0x4d6108: CheckStackOverflow
    //     0x4d6108: ldr          BARRIER, [THR, #0x38]
    //     0x4d610c: cmp          SP, BARRIER
    //     0x4d6110: b.ls         0x4d6260
    // 0x4d6114: StoreField: r4->field_7 = r0
    //     0x4d6114: stur         r0, [r4, #7]
    // 0x4d6118: StoreField: r4->field_b = r0
    //     0x4d6118: stur         r0, [r4, #0xb]
    // 0x4d611c: r0 = LoadClassIdInstr(r3)
    //     0x4d611c: ldur         r0, [r3, #-1]
    //     0x4d6120: ubfx         r0, r0, #0xc, #0x14
    // 0x4d6124: r1 = r3
    //     0x4d6124: mov          r1, r3
    // 0x4d6128: r2 = pp[0xba0]
    //     0x4d6128: add          r2, PP, #0x10, lsl #12
    //     0x4d612c: ldr          r2, [r2, #0xb90]
    //     0x4d6130: sub          lr, r0, #1, lsl #12
    //     0x4d6134: ldr          lr, [r21, lr, lsl #3]
    // 0x4d6138: r0 = [R]()
    //     0x4d6138: blr          lr
    //     0x4d613c: cmp          r0, r22
    // 0x4d6140: b.ne 0x4d614c
    //     0x4d6140: b.ne         0x4d614c
    //     0x4d6144: mov          r5, #0
    // 0x4d6148: b 0x4d6150
    //     0x4d6148: b            0x4d6150
    // 0x4d614c: r5 = r0
    //     0x4d614c: mov          r5, r0
    //     0x4d6150: ldur         r4, [fp, #-8]
    //     0x4d6154: ldur         r3, [fp, #-0x10]
    // 0x4d6158: r0 = r5
    //     0x4d6158: mov          r0, r5
    //     0x4d615c: stur         r5, [fp, #-0x18]
    // 0x4d6160: r2 = NULL
    //     0x4d6160: mov          r2, NULL
    // 0x4d6164: r1 = NULL
    //     0x4d6164: mov          r1, NULL
    // 0x4d6168: branchIfSmi(r0, 0x4d6190)
    //     0x4d6168: tbz          r0, #0, 0x4d6190
    // 0x4d616c: r4 = LoadClassIdInstr(r0)
    //     0x4d616c: ldur         r4, [r0, #-1]
    //     0x4d6170: ubfx         r4, r4, #0xc, #0x14
    //     0x4d6174: sub          r4, r4, #0x3c
    //     0x4d6178: cmp          r4, #1
    // 0x4d617c: b.ls 0x4d6190
    //     0x4d617c: b.ls         0x4d6190
    // 0x4d6180: r8 = pp[0x1170]
    //     0x4d6180: ldr          r8, [PP, #0x1170]
    // 0x4d6184: r3 = pp[0xe40]
    //     0x4d6184: add          r3, PP, #0x10, lsl #12
    //     0x4d6188: ldr          r3, [r3, #0xe30]
    // 0x4d618c: r0 = call 0x62aa34
    //     0x4d618c: bl           0x62aa34
    //     0x4d6190: ldur         r0, [fp, #-0x18]
    //     0x4d6194: ldur         r3, [fp, #-8]
    // 0x4d6198: StoreField: r3->field_7 = r0
    //     0x4d6198: stur         r0, [r3, #7]
    // 0x4d619c: branchIfSmi(r0, 0x4d61b8)
    //     0x4d619c: tbz          r0, #0, 0x4d61b8
    //     0x4d61a0: ldurb        r16, [r3, #-1]
    //     0x4d61a4: ldurb        r17, [r0, #-1]
    //     0x4d61a8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d61ac: tst          BARRIER, HEAP, lsr #32
    // 0x4d61b0: b.eq 0x4d61b8
    //     0x4d61b0: b.eq         0x4d61b8
    // 0x4d61b4: r0 = call 0x61e08c
    //     0x4d61b4: bl           0x61e08c
    //     0x4d61b8: ldur         r1, [fp, #-0x10]
    // 0x4d61bc: r0 = LoadClassIdInstr(r1)
    //     0x4d61bc: ldur         r0, [r1, #-1]
    //     0x4d61c0: ubfx         r0, r0, #0xc, #0x14
    // 0x4d61c4: r2 = pp[0xa5f]
    //     0x4d61c4: add          r2, PP, #0xf, lsl #12
    //     0x4d61c8: ldr          r2, [r2, #0xa50]
    //     0x4d61cc: sub          lr, r0, #1, lsl #12
    //     0x4d61d0: ldr          lr, [r21, lr, lsl #3]
    // 0x4d61d4: r0 = [R]()
    //     0x4d61d4: blr          lr
    //     0x4d61d8: cmp          r0, r22
    // 0x4d61dc: b.ne 0x4d61e8
    //     0x4d61dc: b.ne         0x4d61e8
    // 0x4d61e0: r4 = pp[0x148]
    //     0x4d61e0: ldr          r4, [PP, #0x148]
    // 0x4d61e4: b 0x4d61ec
    //     0x4d61e4: b            0x4d61ec
    // 0x4d61e8: r4 = r0
    //     0x4d61e8: mov          r4, r0
    //     0x4d61ec: ldur         r3, [fp, #-8]
    // 0x4d61f0: r0 = r4
    //     0x4d61f0: mov          r0, r4
    //     0x4d61f4: stur         r4, [fp, #-0x10]
    // 0x4d61f8: r2 = NULL
    //     0x4d61f8: mov          r2, NULL
    // 0x4d61fc: r1 = NULL
    //     0x4d61fc: mov          r1, NULL
    //     0x4d6200: mov          r4, #0x3c
    // 0x4d6204: branchIfSmi(r0, 0x4d6210)
    //     0x4d6204: tbz          r0, #0, 0x4d6210
    // 0x4d6208: r4 = LoadClassIdInstr(r0)
    //     0x4d6208: ldur         r4, [r0, #-1]
    //     0x4d620c: ubfx         r4, r4, #0xc, #0x14
    //     0x4d6210: sub          r4, r4, #0x5e
    //     0x4d6214: cmp          r4, #1
    // 0x4d6218: b.ls 0x4d622c
    //     0x4d6218: b.ls         0x4d622c
    // 0x4d621c: r8 = pp[0x2f8]
    //     0x4d621c: ldr          r8, [PP, #0x2f8]
    // 0x4d6220: r3 = pp[0xe50]
    //     0x4d6220: add          r3, PP, #0x10, lsl #12
    //     0x4d6224: ldr          r3, [r3, #0xe40]
    // 0x4d6228: r0 = call 0x62a0c0
    //     0x4d6228: bl           0x62a0c0
    //     0x4d622c: ldur         r0, [fp, #-0x10]
    //     0x4d6230: ldur         r1, [fp, #-8]
    // 0x4d6234: StoreField: r1->field_b = r0
    //     0x4d6234: stur         r0, [r1, #0xb]
    //     0x4d6238: ldurb        r16, [r1, #-1]
    //     0x4d623c: ldurb        r17, [r0, #-1]
    //     0x4d6240: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d6244: tst          BARRIER, HEAP, lsr #32
    // 0x4d6248: b.eq 0x4d6250
    //     0x4d6248: b.eq         0x4d6250
    // 0x4d624c: r0 = call 0x61e04c
    //     0x4d624c: bl           0x61e04c
    // 0x4d6250: r0 = NULL
    //     0x4d6250: mov          r0, NULL
    // 0x4d6254: SP = fp
    //     0x4d6254: mov          SP, fp
    // 0x4d6258: LeaveFrame
    //     0x4d6258: ldp          fp, lr, [SP], #0x10
    // 0x4d625c: ret
    //     0x4d625c: ret          
    // 0x4d6260: r0 = call 0x61fa28
    //     0x4d6260: bl           0x61fa28
    // 0x4d6264: b 0x4d6114
    //     0x4d6264: b            0x4d6114
  }
