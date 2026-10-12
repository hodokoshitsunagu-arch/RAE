// lib: , url: soul_flutter_international$model$game_pk_model


  ctor_fromJson() {
    // ** addr: 0x42ee08, size: 0x2b0
    // 0x42ee08: EnterFrame
    //     0x42ee08: stp          fp, lr, [SP, #-0x10]!
    //     0x42ee0c: mov          fp, SP
    // 0x42ee10: AllocStack(0x20)
    //     0x42ee10: sub          SP, SP, #0x20
    // 0x42ee14: r4 = r1
    //     0x42ee14: mov          r4, r1
    // 0x42ee18: r3 = r2
    //     0x42ee18: mov          r3, r2
    //     0x42ee1c: stur         r1, [fp, #-8]
    //     0x42ee20: stur         r2, [fp, #-0x10]
    // 0x42ee24: CheckStackOverflow
    //     0x42ee24: ldr          BARRIER, [THR, #0x38]
    //     0x42ee28: cmp          SP, BARRIER
    //     0x42ee2c: b.ls         0x42f0b0
    // 0x42ee30: r0 = LoadClassIdInstr(r3)
    //     0x42ee30: ldur         r0, [r3, #-1]
    //     0x42ee34: ubfx         r0, r0, #0xc, #0x14
    // 0x42ee38: r1 = r3
    //     0x42ee38: mov          r1, r3
    // 0x42ee3c: r2 = pp[0x73b]
    //     0x42ee3c: add          r2, PP, #0xb, lsl #12
    //     0x42ee40: ldr          r2, [r2, #0x730]
    //     0x42ee44: sub          lr, r0, #1, lsl #12
    //     0x42ee48: ldr          lr, [r21, lr, lsl #3]
    // 0x42ee4c: r0 = [R]()
    //     0x42ee4c: blr          lr
    //     0x42ee50: cmp          r0, r22
    // 0x42ee54: b.ne 0x42ee60
    //     0x42ee54: b.ne         0x42ee60
    // 0x42ee58: r5 = pp[0x148]
    //     0x42ee58: ldr          r5, [PP, #0x148]
    // 0x42ee5c: b 0x42ee64
    //     0x42ee5c: b            0x42ee64
    // 0x42ee60: r5 = r0
    //     0x42ee60: mov          r5, r0
    //     0x42ee64: ldur         r4, [fp, #-8]
    //     0x42ee68: ldur         r3, [fp, #-0x10]
    // 0x42ee6c: r0 = r5
    //     0x42ee6c: mov          r0, r5
    //     0x42ee70: stur         r5, [fp, #-0x18]
    // 0x42ee74: r2 = NULL
    //     0x42ee74: mov          r2, NULL
    // 0x42ee78: r1 = NULL
    //     0x42ee78: mov          r1, NULL
    //     0x42ee7c: mov          r4, #0x3c
    // 0x42ee80: branchIfSmi(r0, 0x42ee8c)
    //     0x42ee80: tbz          r0, #0, 0x42ee8c
    // 0x42ee84: r4 = LoadClassIdInstr(r0)
    //     0x42ee84: ldur         r4, [r0, #-1]
    //     0x42ee88: ubfx         r4, r4, #0xc, #0x14
    //     0x42ee8c: sub          r4, r4, #0x5e
    //     0x42ee90: cmp          r4, #1
    // 0x42ee94: b.ls 0x42eea8
    //     0x42ee94: b.ls         0x42eea8
    // 0x42ee98: r8 = pp[0xae0]
    //     0x42ee98: ldr          r8, [PP, #0xae0]
    // 0x42ee9c: r3 = pp[0x3bf]
    //     0x42ee9c: add          r3, PP, #0xf, lsl #12
    //     0x42eea0: ldr          r3, [r3, #0x3b0]
    // 0x42eea4: r0 = call 0x278d08
    //     0x42eea4: bl           0x278d08
    //     0x42eea8: ldur         r0, [fp, #-0x18]
    //     0x42eeac: ldur         r3, [fp, #-8]
    // 0x42eeb0: StoreField: r3->field_7 = r0
    //     0x42eeb0: stur         r0, [r3, #7]
    //     0x42eeb4: ldurb        r16, [r3, #-1]
    //     0x42eeb8: ldurb        r17, [r0, #-1]
    //     0x42eebc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42eec0: tst          BARRIER, HEAP, lsr #32
    // 0x42eec4: b.eq 0x42eecc
    //     0x42eec4: b.eq         0x42eecc
    // 0x42eec8: r0 = call 0x61e08c
    //     0x42eec8: bl           0x61e08c
    //     0x42eecc: ldur         r4, [fp, #-0x10]
    // 0x42eed0: r0 = LoadClassIdInstr(r4)
    //     0x42eed0: ldur         r0, [r4, #-1]
    //     0x42eed4: ubfx         r0, r0, #0xc, #0x14
    // 0x42eed8: r1 = r4
    //     0x42eed8: mov          r1, r4
    // 0x42eedc: r2 = pp[0x723]
    //     0x42eedc: add          r2, PP, #0xb, lsl #12
    //     0x42eee0: ldr          r2, [r2, #0x718]
    //     0x42eee4: sub          lr, r0, #1, lsl #12
    //     0x42eee8: ldr          lr, [r21, lr, lsl #3]
    // 0x42eeec: r0 = [R]()
    //     0x42eeec: blr          lr
    //     0x42eef0: cmp          r0, r22
    // 0x42eef4: b.ne 0x42ef00
    //     0x42eef4: b.ne         0x42ef00
    // 0x42eef8: r5 = pp[0x148]
    //     0x42eef8: ldr          r5, [PP, #0x148]
    // 0x42eefc: b 0x42ef04
    //     0x42eefc: b            0x42ef04
    // 0x42ef00: r5 = r0
    //     0x42ef00: mov          r5, r0
    //     0x42ef04: ldur         r3, [fp, #-8]
    //     0x42ef08: ldur         r4, [fp, #-0x10]
    // 0x42ef0c: r0 = r5
    //     0x42ef0c: mov          r0, r5
    //     0x42ef10: stur         r5, [fp, #-0x18]
    // 0x42ef14: r2 = NULL
    //     0x42ef14: mov          r2, NULL
    // 0x42ef18: r1 = NULL
    //     0x42ef18: mov          r1, NULL
    //     0x42ef1c: mov          r4, #0x3c
    // 0x42ef20: branchIfSmi(r0, 0x42ef2c)
    //     0x42ef20: tbz          r0, #0, 0x42ef2c
    // 0x42ef24: r4 = LoadClassIdInstr(r0)
    //     0x42ef24: ldur         r4, [r0, #-1]
    //     0x42ef28: ubfx         r4, r4, #0xc, #0x14
    //     0x42ef2c: sub          r4, r4, #0x5e
    //     0x42ef30: cmp          r4, #1
    // 0x42ef34: b.ls 0x42ef48
    //     0x42ef34: b.ls         0x42ef48
    // 0x42ef38: r8 = pp[0xae0]
    //     0x42ef38: ldr          r8, [PP, #0xae0]
    // 0x42ef3c: r3 = pp[0x3cf]
    //     0x42ef3c: add          r3, PP, #0xf, lsl #12
    //     0x42ef40: ldr          r3, [r3, #0x3c0]
    // 0x42ef44: r0 = call 0x278d08
    //     0x42ef44: bl           0x278d08
    //     0x42ef48: ldur         r0, [fp, #-0x18]
    //     0x42ef4c: ldur         r3, [fp, #-8]
    // 0x42ef50: StoreField: r3->field_b = r0
    //     0x42ef50: stur         r0, [r3, #0xb]
    //     0x42ef54: ldurb        r16, [r3, #-1]
    //     0x42ef58: ldurb        r17, [r0, #-1]
    //     0x42ef5c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42ef60: tst          BARRIER, HEAP, lsr #32
    // 0x42ef64: b.eq 0x42ef6c
    //     0x42ef64: b.eq         0x42ef6c
    // 0x42ef68: r0 = call 0x61e08c
    //     0x42ef68: bl           0x61e08c
    //     0x42ef6c: ldur         r4, [fp, #-0x10]
    // 0x42ef70: r0 = LoadClassIdInstr(r4)
    //     0x42ef70: ldur         r0, [r4, #-1]
    //     0x42ef74: ubfx         r0, r0, #0xc, #0x14
    // 0x42ef78: r1 = r4
    //     0x42ef78: mov          r1, r4
    // 0x42ef7c: r2 = pp[0x753]
    //     0x42ef7c: add          r2, PP, #0xb, lsl #12
    //     0x42ef80: ldr          r2, [r2, #0x748]
    //     0x42ef84: sub          lr, r0, #1, lsl #12
    //     0x42ef88: ldr          lr, [r21, lr, lsl #3]
    // 0x42ef8c: r0 = [R]()
    //     0x42ef8c: blr          lr
    //     0x42ef90: cmp          r0, r22
    // 0x42ef94: b.ne 0x42efa0
    //     0x42ef94: b.ne         0x42efa0
    // 0x42ef98: r5 = pp[0x148]
    //     0x42ef98: ldr          r5, [PP, #0x148]
    // 0x42ef9c: b 0x42efa4
    //     0x42ef9c: b            0x42efa4
    // 0x42efa0: r5 = r0
    //     0x42efa0: mov          r5, r0
    //     0x42efa4: ldur         r3, [fp, #-8]
    //     0x42efa8: ldur         r4, [fp, #-0x10]
    // 0x42efac: r0 = r5
    //     0x42efac: mov          r0, r5
    //     0x42efb0: stur         r5, [fp, #-0x18]
    // 0x42efb4: r2 = NULL
    //     0x42efb4: mov          r2, NULL
    // 0x42efb8: r1 = NULL
    //     0x42efb8: mov          r1, NULL
    //     0x42efbc: mov          r4, #0x3c
    // 0x42efc0: branchIfSmi(r0, 0x42efcc)
    //     0x42efc0: tbz          r0, #0, 0x42efcc
    // 0x42efc4: r4 = LoadClassIdInstr(r0)
    //     0x42efc4: ldur         r4, [r0, #-1]
    //     0x42efc8: ubfx         r4, r4, #0xc, #0x14
    //     0x42efcc: sub          r4, r4, #0x5e
    //     0x42efd0: cmp          r4, #1
    // 0x42efd4: b.ls 0x42efe8
    //     0x42efd4: b.ls         0x42efe8
    // 0x42efd8: r8 = pp[0xae0]
    //     0x42efd8: ldr          r8, [PP, #0xae0]
    // 0x42efdc: r3 = pp[0x3df]
    //     0x42efdc: add          r3, PP, #0xf, lsl #12
    //     0x42efe0: ldr          r3, [r3, #0x3d0]
    // 0x42efe4: r0 = call 0x278d08
    //     0x42efe4: bl           0x278d08
    //     0x42efe8: ldur         r0, [fp, #-0x18]
    //     0x42efec: ldur         r3, [fp, #-8]
    // 0x42eff0: StoreField: r3->field_f = r0
    //     0x42eff0: stur         r0, [r3, #0xf]
    //     0x42eff4: ldurb        r16, [r3, #-1]
    //     0x42eff8: ldurb        r17, [r0, #-1]
    //     0x42effc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42f000: tst          BARRIER, HEAP, lsr #32
    // 0x42f004: b.eq 0x42f00c
    //     0x42f004: b.eq         0x42f00c
    // 0x42f008: r0 = call 0x61e08c
    //     0x42f008: bl           0x61e08c
    //     0x42f00c: ldur         r1, [fp, #-0x10]
    // 0x42f010: r0 = LoadClassIdInstr(r1)
    //     0x42f010: ldur         r0, [r1, #-1]
    //     0x42f014: ubfx         r0, r0, #0xc, #0x14
    // 0x42f018: r2 = pp[0x3ef]
    //     0x42f018: add          r2, PP, #0xf, lsl #12
    //     0x42f01c: ldr          r2, [r2, #0x3e0]
    //     0x42f020: sub          lr, r0, #1, lsl #12
    //     0x42f024: ldr          lr, [r21, lr, lsl #3]
    // 0x42f028: r0 = [R]()
    //     0x42f028: blr          lr
    //     0x42f02c: cmp          r0, r22
    // 0x42f030: b.ne 0x42f03c
    //     0x42f030: b.ne         0x42f03c
    // 0x42f034: r1 = NULL
    //     0x42f034: mov          r1, NULL
    // 0x42f038: b 0x42f06c
    //     0x42f038: b            0x42f06c
    //     0x42f03c: mov          r1, #0x3c
    // 0x42f040: branchIfSmi(r0, 0x42f04c)
    //     0x42f040: tbz          r0, #0, 0x42f04c
    // 0x42f044: r1 = LoadClassIdInstr(r0)
    //     0x42f044: ldur         r1, [r0, #-1]
    //     0x42f048: ubfx         r1, r1, #0xc, #0x14
    //     0x42f04c: str          r0, [SP]
    // 0x42f050: r0 = r1
    //     0x42f050: mov          r0, r1
    // 0x42f054: r4 = pp[0x3a8]
    //     0x42f054: ldr          r4, [PP, #0x3a8]
    //     0x42f058: mov          r17, #0x3e07
    //     0x42f05c: add          lr, r0, r17
    //     0x42f060: ldr          lr, [r21, lr, lsl #3]
    // 0x42f064: r0 = [R]()
    //     0x42f064: blr          lr
    // 0x42f068: r1 = r0
    //     0x42f068: mov          r1, r0
    //     0x42f06c: cmp          r1, r22
    // 0x42f070: b.ne 0x42f07c
    //     0x42f070: b.ne         0x42f07c
    // 0x42f074: r0 = pp[0x148]
    //     0x42f074: ldr          r0, [PP, #0x148]
    // 0x42f078: b 0x42f080
    //     0x42f078: b            0x42f080
    // 0x42f07c: r0 = r1
    //     0x42f07c: mov          r0, r1
    //     0x42f080: ldur         r1, [fp, #-8]
    // 0x42f084: StoreField: r1->field_13 = r0
    //     0x42f084: stur         r0, [r1, #0x13]
    //     0x42f088: ldurb        r16, [r1, #-1]
    //     0x42f08c: ldurb        r17, [r0, #-1]
    //     0x42f090: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42f094: tst          BARRIER, HEAP, lsr #32
    // 0x42f098: b.eq 0x42f0a0
    //     0x42f098: b.eq         0x42f0a0
    // 0x42f09c: r0 = call 0x61e04c
    //     0x42f09c: bl           0x61e04c
    // 0x42f0a0: r0 = NULL
    //     0x42f0a0: mov          r0, NULL
    // 0x42f0a4: SP = fp
    //     0x42f0a4: mov          SP, fp
    // 0x42f0a8: LeaveFrame
    //     0x42f0a8: ldp          fp, lr, [SP], #0x10
    // 0x42f0ac: ret
    //     0x42f0ac: ret          
    // 0x42f0b0: r0 = call 0x61fa28
    //     0x42f0b0: bl           0x61fa28
    // 0x42f0b4: b 0x42ee30
    //     0x42f0b4: b            0x42ee30
  }

  ctor_fromJson() {
    // ** addr: 0x445098, size: 0x474
    // 0x445098: EnterFrame
    //     0x445098: stp          fp, lr, [SP, #-0x10]!
    //     0x44509c: mov          fp, SP
    // 0x4450a0: AllocStack(0x30)
    //     0x4450a0: sub          SP, SP, #0x30
    // 0x4450a4: r4 = r1
    //     0x4450a4: mov          r4, r1
    // 0x4450a8: r3 = r2
    //     0x4450a8: mov          r3, r2
    //     0x4450ac: stur         r1, [fp, #-8]
    //     0x4450b0: stur         r2, [fp, #-0x10]
    // 0x4450b4: CheckStackOverflow
    //     0x4450b4: ldr          BARRIER, [THR, #0x38]
    //     0x4450b8: cmp          SP, BARRIER
    //     0x4450bc: b.ls         0x445504
    // 0x4450c0: r0 = LoadClassIdInstr(r3)
    //     0x4450c0: ldur         r0, [r3, #-1]
    //     0x4450c4: ubfx         r0, r0, #0xc, #0x14
    // 0x4450c8: r1 = r3
    //     0x4450c8: mov          r1, r3
    // 0x4450cc: r2 = pp[0x3ec]
    //     0x4450cc: add          r2, PP, #0x14, lsl #12
    //     0x4450d0: ldr          r2, [r2, #0x3d8]
    //     0x4450d4: sub          lr, r0, #1, lsl #12
    //     0x4450d8: ldr          lr, [r21, lr, lsl #3]
    // 0x4450dc: r0 = [R]()
    //     0x4450dc: blr          lr
    //     0x4450e0: cmp          r0, r22
    // 0x4450e4: b.ne 0x4450f0
    //     0x4450e4: b.ne         0x4450f0
    // 0x4450e8: r0 = NULL
    //     0x4450e8: mov          r0, NULL
    // 0x4450ec: b 0x44511c
    //     0x4450ec: b            0x44511c
    //     0x4450f0: mov          r1, #0x3c
    // 0x4450f4: branchIfSmi(r0, 0x445100)
    //     0x4450f4: tbz          r0, #0, 0x445100
    // 0x4450f8: r1 = LoadClassIdInstr(r0)
    //     0x4450f8: ldur         r1, [r0, #-1]
    //     0x4450fc: ubfx         r1, r1, #0xc, #0x14
    //     0x445100: str          r0, [SP]
    // 0x445104: r0 = r1
    //     0x445104: mov          r0, r1
    // 0x445108: r4 = pp[0x3a8]
    //     0x445108: ldr          r4, [PP, #0x3a8]
    //     0x44510c: mov          r17, #0x3e07
    //     0x445110: add          lr, r0, r17
    //     0x445114: ldr          lr, [r21, lr, lsl #3]
    // 0x445118: r0 = [R]()
    //     0x445118: blr          lr
    //     0x44511c: cmp          r0, r22
    // 0x445120: b.ne 0x445128
    //     0x445120: b.ne         0x445128
    // 0x445124: r0 = pp[0x148]
    //     0x445124: ldr          r0, [PP, #0x148]
    //     0x445128: ldur         r4, [fp, #-8]
    //     0x44512c: ldur         r3, [fp, #-0x10]
    // 0x445130: StoreField: r4->field_7 = r0
    //     0x445130: stur         r0, [r4, #7]
    //     0x445134: ldurb        r16, [r4, #-1]
    //     0x445138: ldurb        r17, [r0, #-1]
    //     0x44513c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x445140: tst          BARRIER, HEAP, lsr #32
    // 0x445144: b.eq 0x44514c
    //     0x445144: b.eq         0x44514c
    // 0x445148: r0 = call 0x61e0ac
    //     0x445148: bl           0x61e0ac
    // 0x44514c: r0 = LoadClassIdInstr(r3)
    //     0x44514c: ldur         r0, [r3, #-1]
    //     0x445150: ubfx         r0, r0, #0xc, #0x14
    // 0x445154: r1 = r3
    //     0x445154: mov          r1, r3
    // 0x445158: r2 = pp[0x3f4]
    //     0x445158: add          r2, PP, #0x14, lsl #12
    //     0x44515c: ldr          r2, [r2, #0x3e0]
    //     0x445160: sub          lr, r0, #1, lsl #12
    //     0x445164: ldr          lr, [r21, lr, lsl #3]
    // 0x445168: r0 = [R]()
    //     0x445168: blr          lr
    //     0x44516c: cmp          r0, r22
    // 0x445170: b.ne 0x44517c
    //     0x445170: b.ne         0x44517c
    // 0x445174: r0 = NULL
    //     0x445174: mov          r0, NULL
    // 0x445178: b 0x4451a8
    //     0x445178: b            0x4451a8
    //     0x44517c: mov          r1, #0x3c
    // 0x445180: branchIfSmi(r0, 0x44518c)
    //     0x445180: tbz          r0, #0, 0x44518c
    // 0x445184: r1 = LoadClassIdInstr(r0)
    //     0x445184: ldur         r1, [r0, #-1]
    //     0x445188: ubfx         r1, r1, #0xc, #0x14
    //     0x44518c: str          r0, [SP]
    // 0x445190: r0 = r1
    //     0x445190: mov          r0, r1
    // 0x445194: r4 = pp[0x3a8]
    //     0x445194: ldr          r4, [PP, #0x3a8]
    //     0x445198: mov          r17, #0x3e07
    //     0x44519c: add          lr, r0, r17
    //     0x4451a0: ldr          lr, [r21, lr, lsl #3]
    // 0x4451a4: r0 = [R]()
    //     0x4451a4: blr          lr
    //     0x4451a8: cmp          r0, r22
    // 0x4451ac: b.ne 0x4451b4
    //     0x4451ac: b.ne         0x4451b4
    // 0x4451b0: r0 = pp[0x148]
    //     0x4451b0: ldr          r0, [PP, #0x148]
    //     0x4451b4: ldur         r4, [fp, #-8]
    //     0x4451b8: ldur         r3, [fp, #-0x10]
    // 0x4451bc: StoreField: r4->field_b = r0
    //     0x4451bc: stur         r0, [r4, #0xb]
    //     0x4451c0: ldurb        r16, [r4, #-1]
    //     0x4451c4: ldurb        r17, [r0, #-1]
    //     0x4451c8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4451cc: tst          BARRIER, HEAP, lsr #32
    // 0x4451d0: b.eq 0x4451d8
    //     0x4451d0: b.eq         0x4451d8
    // 0x4451d4: r0 = call 0x61e0ac
    //     0x4451d4: bl           0x61e0ac
    // 0x4451d8: r0 = LoadClassIdInstr(r3)
    //     0x4451d8: ldur         r0, [r3, #-1]
    //     0x4451dc: ubfx         r0, r0, #0xc, #0x14
    // 0x4451e0: r1 = r3
    //     0x4451e0: mov          r1, r3
    // 0x4451e4: r2 = pp[0x3ef]
    //     0x4451e4: add          r2, PP, #0xf, lsl #12
    //     0x4451e8: ldr          r2, [r2, #0x3e0]
    //     0x4451ec: sub          lr, r0, #1, lsl #12
    //     0x4451f0: ldr          lr, [r21, lr, lsl #3]
    // 0x4451f4: r0 = [R]()
    //     0x4451f4: blr          lr
    //     0x4451f8: cmp          r0, r22
    // 0x4451fc: b.ne 0x445208
    //     0x4451fc: b.ne         0x445208
    // 0x445200: r0 = NULL
    //     0x445200: mov          r0, NULL
    // 0x445204: b 0x445234
    //     0x445204: b            0x445234
    //     0x445208: mov          r1, #0x3c
    // 0x44520c: branchIfSmi(r0, 0x445218)
    //     0x44520c: tbz          r0, #0, 0x445218
    // 0x445210: r1 = LoadClassIdInstr(r0)
    //     0x445210: ldur         r1, [r0, #-1]
    //     0x445214: ubfx         r1, r1, #0xc, #0x14
    //     0x445218: str          r0, [SP]
    // 0x44521c: r0 = r1
    //     0x44521c: mov          r0, r1
    // 0x445220: r4 = pp[0x3a8]
    //     0x445220: ldr          r4, [PP, #0x3a8]
    //     0x445224: mov          r17, #0x3e07
    //     0x445228: add          lr, r0, r17
    //     0x44522c: ldr          lr, [r21, lr, lsl #3]
    // 0x445230: r0 = [R]()
    //     0x445230: blr          lr
    //     0x445234: cmp          r0, r22
    // 0x445238: b.ne 0x445240
    //     0x445238: b.ne         0x445240
    // 0x44523c: r0 = pp[0x148]
    //     0x44523c: ldr          r0, [PP, #0x148]
    //     0x445240: ldur         r4, [fp, #-8]
    //     0x445244: ldur         r3, [fp, #-0x10]
    // 0x445248: StoreField: r4->field_f = r0
    //     0x445248: stur         r0, [r4, #0xf]
    //     0x44524c: ldurb        r16, [r4, #-1]
    //     0x445250: ldurb        r17, [r0, #-1]
    //     0x445254: and          BARRIER, r17, BARRIER, lsr #2
    //     0x445258: tst          BARRIER, HEAP, lsr #32
    // 0x44525c: b.eq 0x445264
    //     0x44525c: b.eq         0x445264
    // 0x445260: r0 = call 0x61e0ac
    //     0x445260: bl           0x61e0ac
    // 0x445264: r0 = LoadClassIdInstr(r3)
    //     0x445264: ldur         r0, [r3, #-1]
    //     0x445268: ubfx         r0, r0, #0xc, #0x14
    // 0x44526c: r1 = r3
    //     0x44526c: mov          r1, r3
    // 0x445270: r2 = pp[0x3fc]
    //     0x445270: add          r2, PP, #0x14, lsl #12
    //     0x445274: ldr          r2, [r2, #0x3e8]
    //     0x445278: sub          lr, r0, #1, lsl #12
    //     0x44527c: ldr          lr, [r21, lr, lsl #3]
    // 0x445280: r0 = [R]()
    //     0x445280: blr          lr
    //     0x445284: cmp          r0, r22
    // 0x445288: b.ne 0x445294
    //     0x445288: b.ne         0x445294
    //     0x44528c: mov          r5, #0
    // 0x445290: b 0x445298
    //     0x445290: b            0x445298
    // 0x445294: r5 = r0
    //     0x445294: mov          r5, r0
    //     0x445298: ldur         r4, [fp, #-8]
    //     0x44529c: ldur         r3, [fp, #-0x10]
    // 0x4452a0: r0 = r5
    //     0x4452a0: mov          r0, r5
    //     0x4452a4: stur         r5, [fp, #-0x18]
    // 0x4452a8: r2 = NULL
    //     0x4452a8: mov          r2, NULL
    // 0x4452ac: r1 = NULL
    //     0x4452ac: mov          r1, NULL
    // 0x4452b0: branchIfSmi(r0, 0x4452d8)
    //     0x4452b0: tbz          r0, #0, 0x4452d8
    // 0x4452b4: r4 = LoadClassIdInstr(r0)
    //     0x4452b4: ldur         r4, [r0, #-1]
    //     0x4452b8: ubfx         r4, r4, #0xc, #0x14
    //     0x4452bc: sub          r4, r4, #0x3c
    //     0x4452c0: cmp          r4, #1
    // 0x4452c4: b.ls 0x4452d8
    //     0x4452c4: b.ls         0x4452d8
    // 0x4452c8: r8 = pp[0xaf8]
    //     0x4452c8: ldr          r8, [PP, #0xaf8]
    // 0x4452cc: r3 = pp[0x404]
    //     0x4452cc: add          r3, PP, #0x14, lsl #12
    //     0x4452d0: ldr          r3, [r3, #0x3f0]
    // 0x4452d4: r0 = call 0x62a9f8
    //     0x4452d4: bl           0x62a9f8
    //     0x4452d8: ldur         r0, [fp, #-0x18]
    //     0x4452dc: ldur         r3, [fp, #-8]
    // 0x4452e0: StoreField: r3->field_1b = r0
    //     0x4452e0: stur         r0, [r3, #0x1b]
    // 0x4452e4: branchIfSmi(r0, 0x445300)
    //     0x4452e4: tbz          r0, #0, 0x445300
    //     0x4452e8: ldurb        r16, [r3, #-1]
    //     0x4452ec: ldurb        r17, [r0, #-1]
    //     0x4452f0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4452f4: tst          BARRIER, HEAP, lsr #32
    // 0x4452f8: b.eq 0x445300
    //     0x4452f8: b.eq         0x445300
    // 0x4452fc: r0 = call 0x61e08c
    //     0x4452fc: bl           0x61e08c
    //     0x445300: ldur         r4, [fp, #-0x10]
    // 0x445304: r0 = LoadClassIdInstr(r4)
    //     0x445304: ldur         r0, [r4, #-1]
    //     0x445308: ubfx         r0, r0, #0xc, #0x14
    // 0x44530c: r1 = r4
    //     0x44530c: mov          r1, r4
    // 0x445310: r2 = pp[0x347]
    //     0x445310: add          r2, PP, #0xf, lsl #12
    //     0x445314: ldr          r2, [r2, #0x338]
    //     0x445318: sub          lr, r0, #1, lsl #12
    //     0x44531c: ldr          lr, [r21, lr, lsl #3]
    // 0x445320: r0 = [R]()
    //     0x445320: blr          lr
    //     0x445324: cmp          r0, r22
    // 0x445328: b.ne 0x445334
    //     0x445328: b.ne         0x445334
    //     0x44532c: mov          r5, #0
    // 0x445330: b 0x445338
    //     0x445330: b            0x445338
    // 0x445334: r5 = r0
    //     0x445334: mov          r5, r0
    //     0x445338: ldur         r3, [fp, #-8]
    //     0x44533c: ldur         r4, [fp, #-0x10]
    // 0x445340: r0 = r5
    //     0x445340: mov          r0, r5
    //     0x445344: stur         r5, [fp, #-0x18]
    // 0x445348: r2 = NULL
    //     0x445348: mov          r2, NULL
    // 0x44534c: r1 = NULL
    //     0x44534c: mov          r1, NULL
    // 0x445350: branchIfSmi(r0, 0x445378)
    //     0x445350: tbz          r0, #0, 0x445378
    // 0x445354: r4 = LoadClassIdInstr(r0)
    //     0x445354: ldur         r4, [r0, #-1]
    //     0x445358: ubfx         r4, r4, #0xc, #0x14
    //     0x44535c: sub          r4, r4, #0x3c
    //     0x445360: cmp          r4, #1
    // 0x445364: b.ls 0x445378
    //     0x445364: b.ls         0x445378
    // 0x445368: r8 = pp[0xaf8]
    //     0x445368: ldr          r8, [PP, #0xaf8]
    // 0x44536c: r3 = pp[0x414]
    //     0x44536c: add          r3, PP, #0x14, lsl #12
    //     0x445370: ldr          r3, [r3, #0x400]
    // 0x445374: r0 = call 0x62a9f8
    //     0x445374: bl           0x62a9f8
    //     0x445378: ldur         r0, [fp, #-0x18]
    //     0x44537c: ldur         r3, [fp, #-8]
    // 0x445380: StoreField: r3->field_1f = r0
    //     0x445380: stur         r0, [r3, #0x1f]
    // 0x445384: branchIfSmi(r0, 0x4453a0)
    //     0x445384: tbz          r0, #0, 0x4453a0
    //     0x445388: ldurb        r16, [r3, #-1]
    //     0x44538c: ldurb        r17, [r0, #-1]
    //     0x445390: and          BARRIER, r17, BARRIER, lsr #2
    //     0x445394: tst          BARRIER, HEAP, lsr #32
    // 0x445398: b.eq 0x4453a0
    //     0x445398: b.eq         0x4453a0
    // 0x44539c: r0 = call 0x61e08c
    //     0x44539c: bl           0x61e08c
    //     0x4453a0: ldur         r1, [fp, #-0x10]
    // 0x4453a4: r0 = LoadClassIdInstr(r1)
    //     0x4453a4: ldur         r0, [r1, #-1]
    //     0x4453a8: ubfx         r0, r0, #0xc, #0x14
    // 0x4453ac: r2 = pp[0x4c9]
    //     0x4453ac: add          r2, PP, #0x11, lsl #12
    //     0x4453b0: ldr          r2, [r2, #0x4b8]
    //     0x4453b4: sub          lr, r0, #1, lsl #12
    //     0x4453b8: ldr          lr, [r21, lr, lsl #3]
    // 0x4453bc: r0 = [R]()
    //     0x4453bc: blr          lr
    // 0x4453c0: r3 = r0
    //     0x4453c0: mov          r3, r0
    // 0x4453c4: r2 = NULL
    //     0x4453c4: mov          r2, NULL
    // 0x4453c8: r1 = NULL
    //     0x4453c8: mov          r1, NULL
    //     0x4453cc: stur         r3, [fp, #-0x10]
    // 0x4453d0: branchIfSmi(r0, 0x4453f8)
    //     0x4453d0: tbz          r0, #0, 0x4453f8
    // 0x4453d4: r4 = LoadClassIdInstr(r0)
    //     0x4453d4: ldur         r4, [r0, #-1]
    //     0x4453d8: ubfx         r4, r4, #0xc, #0x14
    //     0x4453dc: sub          r4, r4, #0x3c
    //     0x4453e0: cmp          r4, #1
    // 0x4453e4: b.ls 0x4453f8
    //     0x4453e4: b.ls         0x4453f8
    // 0x4453e8: r8 = pp[0x1170]
    //     0x4453e8: ldr          r8, [PP, #0x1170]
    // 0x4453ec: r3 = pp[0x424]
    //     0x4453ec: add          r3, PP, #0x14, lsl #12
    //     0x4453f0: ldr          r3, [r3, #0x410]
    // 0x4453f4: r0 = call 0x62aa34
    //     0x4453f4: bl           0x62aa34
    //     0x4453f8: ldur         r0, [fp, #-0x10]
    //     0x4453fc: sbfx         r2, r0, #1, #0x1f
    // 0x445400: branchIfSmi(r0, 0x445408)
    //     0x445400: tbz          r0, #0, 0x445408
    // 0x445404: LoadField: r2 = r0->field_7
    //     0x445404: ldur         r2, [r0, #7]
    // 0x445408: r1 = r2
    //     0x445408: mov          r1, r2
    //     0x44540c: stur         r2, [fp, #-0x20]
    // 0x445410: r0 = dart_core_DateTime::_validateMilliseconds()
    //     0x445410: bl           0x3adab8
    //     0x445414: mov          BARRIER, #0x3e8
    //     0x445418: mul          r2, r0, BARRIER
    //     0x44541c: stur         r2, [fp, #-0x28]
    // 0x445420: r0 = call 0x3adaac
    //     0x445420: bl           0x3adaac
    // 0x445424: r1 = r0
    //     0x445424: mov          r1, r0
    //     0x445428: ldur         r2, [fp, #-0x28]
    //     0x44542c: add          r3, NULL, #0x30
    //     0x445430: stur         r0, [fp, #-0x10]
    // 0x445434: r0 = dart_core_DateTime::ctor__withValue()
    //     0x445434: bl           0x3acfd0
    //     0x445438: ldur         r1, [fp, #-0x10]
    // 0x44543c: r0 = dart_core_DateTime::toLocal()
    //     0x44543c: bl           0x3acf4c
    //     0x445440: str          r0, [SP]
    // 0x445444: r0 = dart_core_DateTime::toString()
    //     0x445444: bl           0x48f214
    //     0x445448: mov          BARRIER, #0x14
    //     0x44544c: str          BARRIER, [SP]
    // 0x445450: r1 = r0
    //     0x445450: mov          r1, r0
    //     0x445454: mov          r2, #0
    // 0x445458: r4 = pp[0x280]
    //     0x445458: ldr          r4, [PP, #0x280]
    // 0x44545c: r0 = dart_core__StringBase::substring()
    //     0x44545c: bl           0x281608
    //     0x445460: ldur         r2, [fp, #-8]
    // 0x445464: StoreField: r2->field_13 = r0
    //     0x445464: stur         r0, [r2, #0x13]
    //     0x445468: ldurb        r16, [r2, #-1]
    //     0x44546c: ldurb        r17, [r0, #-1]
    //     0x445470: and          BARRIER, r17, BARRIER, lsr #2
    //     0x445474: tst          BARRIER, HEAP, lsr #32
    // 0x445478: b.eq 0x445480
    //     0x445478: b.eq         0x445480
    // 0x44547c: r0 = call 0x61e06c
    //     0x44547c: bl           0x61e06c
    //     0x445480: ldur         r1, [fp, #-0x20]
    // 0x445484: r0 = dart_core_DateTime::_validateMilliseconds()
    //     0x445484: bl           0x3adab8
    //     0x445488: mov          BARRIER, #0x3e8
    //     0x44548c: mul          r2, r0, BARRIER
    //     0x445490: stur         r2, [fp, #-0x20]
    // 0x445494: r0 = call 0x3adaac
    //     0x445494: bl           0x3adaac
    // 0x445498: r1 = r0
    //     0x445498: mov          r1, r0
    //     0x44549c: ldur         r2, [fp, #-0x20]
    //     0x4454a0: add          r3, NULL, #0x30
    //     0x4454a4: stur         r0, [fp, #-0x10]
    // 0x4454a8: r0 = dart_core_DateTime::ctor__withValue()
    //     0x4454a8: bl           0x3acfd0
    //     0x4454ac: ldur         r1, [fp, #-0x10]
    // 0x4454b0: r0 = dart_core_DateTime::toLocal()
    //     0x4454b0: bl           0x3acf4c
    //     0x4454b4: str          r0, [SP]
    // 0x4454b8: r0 = dart_core_DateTime::toString()
    //     0x4454b8: bl           0x48f214
    //     0x4454bc: mov          BARRIER, #0x20
    //     0x4454c0: str          BARRIER, [SP]
    // 0x4454c4: r1 = r0
    //     0x4454c4: mov          r1, r0
    //     0x4454c8: mov          r2, #0xa
    // 0x4454cc: r4 = pp[0x280]
    //     0x4454cc: ldr          r4, [PP, #0x280]
    // 0x4454d0: r0 = dart_core__StringBase::substring()
    //     0x4454d0: bl           0x281608
    //     0x4454d4: ldur         r1, [fp, #-8]
    // 0x4454d8: ArrayStore: r1[0] = r0  ; List_8
    //     0x4454d8: stur         r0, [r1, #0x17]
    //     0x4454dc: ldurb        r16, [r1, #-1]
    //     0x4454e0: ldurb        r17, [r0, #-1]
    //     0x4454e4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4454e8: tst          BARRIER, HEAP, lsr #32
    // 0x4454ec: b.eq 0x4454f4
    //     0x4454ec: b.eq         0x4454f4
    // 0x4454f0: r0 = call 0x61e04c
    //     0x4454f0: bl           0x61e04c
    // 0x4454f4: r0 = NULL
    //     0x4454f4: mov          r0, NULL
    // 0x4454f8: SP = fp
    //     0x4454f8: mov          SP, fp
    // 0x4454fc: LeaveFrame
    //     0x4454fc: ldp          fp, lr, [SP], #0x10
    // 0x445500: ret
    //     0x445500: ret          
    // 0x445504: r0 = call 0x61fa28
    //     0x445504: bl           0x61fa28
    // 0x445508: b 0x4450c0
    //     0x445508: b            0x4450c0
  }
