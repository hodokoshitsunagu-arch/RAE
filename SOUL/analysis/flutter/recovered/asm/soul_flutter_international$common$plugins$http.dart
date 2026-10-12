// lib: , url: soul_flutter_international$common$plugins$http


  getSimple() {
    // ** addr: 0x3ab958, size: 0x120
    // 0x3ab958: EnterFrame
    //     0x3ab958: stp          fp, lr, [SP, #-0x10]!
    //     0x3ab95c: mov          fp, SP
    // 0x3ab960: AllocStack(0x40)
    //     0x3ab960: sub          SP, SP, #0x40
    //     0x3ab964: stur         r1, [fp, #-0x18]
    //     0x3ab968: stur         r2, [fp, #-0x20]
    // 0x3ab96c: LoadField: r0 = r4->field_13
    //     0x3ab96c: ldur         r0, [r4, #0x13]
    // 0x3ab970: LoadField: r3 = r4->field_1f
    //     0x3ab970: ldur         r3, [r4, #0x1f]
    //     0x3ab974: add          r3, r3, HEAP, lsl #32
    // 0x3ab978: BARRIER = pp[0x417]
    //     0x3ab978: add          BARRIER, PP, #0xf, lsl #12
    //     0x3ab97c: ldr          BARRIER, [BARRIER, #0x408]
    //     0x3ab980: cmp          r3, r16
    // 0x3ab984: b.ne 0x3ab9a4
    //     0x3ab984: b.ne         0x3ab9a4
    // 0x3ab988: LoadField: r3 = r4->field_23
    //     0x3ab988: ldur         r3, [r4, #0x23]
    //     0x3ab98c: add          r3, r3, HEAP, lsl #32
    //     0x3ab990: sub          r5, r0, r3
    //     0x3ab994: add          r3, fp, r5, sxtw #2
    // 0x3ab998: LoadField: r3 = r3->field_8
    //     0x3ab998: ldr          r3, [r3, #8]
    //     0x3ab99c: mov          r5, #1
    // 0x3ab9a0: b 0x3ab9ac
    //     0x3ab9a0: b            0x3ab9ac
    //     0x3ab9a4: mov          r5, #0
    // 0x3ab9a8: r3 = NULL
    //     0x3ab9a8: mov          r3, NULL
    //     0x3ab9ac: stur         r3, [fp, #-0x10]
    //     0x3ab9b0: lsl          r6, r5, #1
    //     0x3ab9b4: lsl          r5, r6, #1
    //     0x3ab9b8: add          r6, r5, #8
    //     0x3ab9bc: add          BARRIER, r4, r6, sxtw #1
    // 0x3ab9c0: LoadField: r7 = BARRIER->field_f
    //     0x3ab9c0: ldur         r7, [BARRIER, #0xf]
    //     0x3ab9c4: add          r7, r7, HEAP, lsl #32
    // 0x3ab9c8: BARRIER = pp[0xe70]
    //     0x3ab9c8: ldr          BARRIER, [PP, #0xe70]
    //     0x3ab9cc: cmp          r7, r16
    // 0x3ab9d0: b.ne 0x3ab9f4
    //     0x3ab9d0: b.ne         0x3ab9f4
    //     0x3ab9d4: add          r6, r5, #0xa
    //     0x3ab9d8: add          BARRIER, r4, r6, sxtw #1
    // 0x3ab9dc: LoadField: r5 = BARRIER->field_f
    //     0x3ab9dc: ldur         r5, [BARRIER, #0xf]
    //     0x3ab9e0: add          r5, r5, HEAP, lsl #32
    //     0x3ab9e4: sub          r4, r0, r5
    //     0x3ab9e8: add          r0, fp, r4, sxtw #2
    // 0x3ab9ec: LoadField: r0 = r0->field_8
    //     0x3ab9ec: ldr          r0, [r0, #8]
    // 0x3ab9f0: b 0x3ab9f8
    //     0x3ab9f0: b            0x3ab9f8
    // 0x3ab9f4: r0 = NULL
    //     0x3ab9f4: mov          r0, NULL
    //     0x3ab9f8: stur         r0, [fp, #-8]
    // 0x3ab9fc: CheckStackOverflow
    //     0x3ab9fc: ldr          BARRIER, [THR, #0x38]
    //     0x3aba00: cmp          SP, BARRIER
    //     0x3aba04: b.ls         0x3aba70
    //     0x3aba08: mov          r1, #2
    // 0x3aba0c: r0 = call 0x61e890
    //     0x3aba0c: bl           0x61e890
    // 0x3aba10: r3 = r0
    //     0x3aba10: mov          r3, r0
    //     0x3aba14: ldur         r0, [fp, #-0x20]
    //     0x3aba18: stur         r3, [fp, #-0x28]
    // 0x3aba1c: StoreField: r3->field_f = r0
    //     0x3aba1c: stur         r0, [r3, #0xf]
    //     0x3aba20: ldur         r0, [fp, #-0x10]
    // 0x3aba24: StoreField: r3->field_13 = r0
    //     0x3aba24: stur         r0, [r3, #0x13]
    //     0x3aba28: ldur         r1, [fp, #-0x18]
    //     0x3aba2c: ldur         r2, [fp, #-8]
    // 0x3aba30: r0 = soul_flutter_international$common$plugins$http_Http::get()
    //     0x3aba30: bl           0x3aba78
    //     0x3aba34: ldur         r2, [fp, #-0x28]
    // 0x3aba38: r1 = pp[0x41f]
    //     0x3aba38: add          r1, PP, #0xf, lsl #12
    //     0x3aba3c: ldr          r1, [r1, #0x410]
    //     0x3aba40: stur         r0, [fp, #-8]
    // 0x3aba44: r0 = call 0x61ec54
    //     0x3aba44: bl           0x61ec54
    // 0x3aba48: BARRIER = pp[0x1658]
    //     0x3aba48: ldr          BARRIER, [PP, #0x1658]
    //     0x3aba4c: ldur         lr, [fp, #-8]
    //     0x3aba50: stp          lr, BARRIER, [SP, #8]
    //     0x3aba54: str          r0, [SP]
    // 0x3aba58: r4 = pp[0x58]
    //     0x3aba58: ldr          r4, [PP, #0x58]
    // 0x3aba5c: r0 = dart_async__Future::then()
    //     0x3aba5c: bl           0x591880
    // 0x3aba60: r0 = NULL
    //     0x3aba60: mov          r0, NULL
    // 0x3aba64: SP = fp
    //     0x3aba64: mov          SP, fp
    // 0x3aba68: LeaveFrame
    //     0x3aba68: ldp          fp, lr, [SP], #0x10
    // 0x3aba6c: ret
    //     0x3aba6c: ret          
    // 0x3aba70: r0 = call 0x61fa28
    //     0x3aba70: bl           0x61fa28
    // 0x3aba74: b 0x3aba08
    //     0x3aba74: b            0x3aba08
  }

  get() {
    // ** addr: 0x3aba78, size: 0xcc
    // 0x3aba78: EnterFrame
    //     0x3aba78: stp          fp, lr, [SP, #-0x10]!
    //     0x3aba7c: mov          fp, SP
    // 0x3aba80: AllocStack(0x28)
    //     0x3aba80: sub          SP, SP, #0x28
    //     0x3aba84: stur         NULL, [fp, #-8]
    //     0x3aba88: stur         r1, [fp, #-0x10]
    //     0x3aba8c: stur         r2, [fp, #-0x18]
    // 0x3aba90: CheckStackOverflow
    //     0x3aba90: ldr          BARRIER, [THR, #0x38]
    //     0x3aba94: cmp          SP, BARRIER
    //     0x3aba98: b.ls         0x3abb3c
    // 0x3aba9c: r0 = pp[0x48f]
    //     0x3aba9c: add          r0, PP, #0xf, lsl #12
    //     0x3abaa0: ldr          r0, [r0, #0x480]
    // 0x3abaa4: r0 = call 0x2b16e4
    //     0x3abaa4: bl           0x2b16e4
    //     0x3abaa8: ldur         r0, [fp, #-0x18]
    //     0x3abaac: cmp          r0, r22
    // 0x3abab0: b.ne 0x3abacc
    //     0x3abab0: b.ne         0x3abacc
    // 0x3abab4: BARRIER = pp[0xbf0]
    //     0x3abab4: ldr          BARRIER, [PP, #0xbf0]
    //     0x3abab8: ldr          lr, [THR, #0x90]
    //     0x3ababc: stp          lr, BARRIER, [SP]
    // 0x3abac0: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x3abac0: bl           0x27c0c8
    // 0x3abac4: r3 = r0
    //     0x3abac4: mov          r3, r0
    // 0x3abac8: b 0x3abad0
    //     0x3abac8: b            0x3abad0
    // 0x3abacc: r3 = r0
    //     0x3abacc: mov          r3, r0
    //     0x3abad0: ldur         r0, [fp, #-0x10]
    //     0x3abad4: stur         r3, [fp, #-0x18]
    // 0x3abad8: r1 = NULL
    //     0x3abad8: mov          r1, NULL
    //     0x3abadc: mov          r2, #0xc
    // 0x3abae0: r0 = call 0x61f920
    //     0x3abae0: bl           0x61f920
    // 0x3abae4: BARRIER = pp[0x2a68]
    //     0x3abae4: ldr          BARRIER, [PP, #0x2a68]
    // 0x3abae8: StoreField: r0->field_f = r16
    //     0x3abae8: stur         r16, [r0, #0xf]
    // 0x3abaec: BARRIER = pp[0x497]
    //     0x3abaec: add          BARRIER, PP, #0xf, lsl #12
    //     0x3abaf0: ldr          BARRIER, [BARRIER, #0x488]
    // 0x3abaf4: StoreField: r0->field_13 = r16
    //     0x3abaf4: stur         r16, [r0, #0x13]
    // 0x3abaf8: BARRIER = pp[0xe58]
    //     0x3abaf8: ldr          BARRIER, [PP, #0xe58]
    // 0x3abafc: ArrayStore: r0[0] = r16  ; List_8
    //     0x3abafc: stur         r16, [r0, #0x17]
    //     0x3abb00: ldur         r1, [fp, #-0x10]
    // 0x3abb04: StoreField: r0->field_1b = r1
    //     0x3abb04: stur         r1, [r0, #0x1b]
    // 0x3abb08: BARRIER = pp[0x1348]
    //     0x3abb08: ldr          BARRIER, [PP, #0x1348]
    // 0x3abb0c: StoreField: r0->field_1f = r16
    //     0x3abb0c: stur         r16, [r0, #0x1f]
    //     0x3abb10: ldur         r1, [fp, #-0x18]
    // 0x3abb14: StoreField: r0->field_23 = r1
    //     0x3abb14: stur         r1, [r0, #0x23]
    // 0x3abb18: BARRIER = pp[0xbf0]
    //     0x3abb18: ldr          BARRIER, [PP, #0xbf0]
    //     0x3abb1c: stp          r0, BARRIER, [SP]
    // 0x3abb20: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x3abb20: bl           0x27c0c8
    // 0x3abb24: r1 = r0
    //     0x3abb24: mov          r1, r0
    // 0x3abb28: r0 = soul_flutter_international$common$plugins$http_Http::request()
    //     0x3abb28: bl           0x3abb44
    // 0x3abb2c: r1 = r0
    //     0x3abb2c: mov          r1, r0
    //     0x3abb30: stur         r1, [fp, #-0x10]
    // 0x3abb34: r0 = call 0x2b13a0
    //     0x3abb34: bl           0x2b13a0
    // 0x3abb38: b 0x2b19a0
    //     0x3abb38: b            0x2b19a0
    // 0x3abb3c: r0 = call 0x61fa28
    //     0x3abb3c: bl           0x61fa28
    // 0x3abb40: b 0x3aba9c
    //     0x3abb40: b            0x3aba9c
  }

  request() {
    // ** addr: 0x3abb44, size: 0x224
    // 0x3abb44: EnterFrame
    //     0x3abb44: stp          fp, lr, [SP, #-0x10]!
    //     0x3abb48: mov          fp, SP
    // 0x3abb4c: AllocStack(0x28)
    //     0x3abb4c: sub          SP, SP, #0x28
    //     0x3abb50: stur         NULL, [fp, #-8]
    //     0x3abb54: stur         r1, [fp, #-0x10]
    // 0x3abb58: CheckStackOverflow
    //     0x3abb58: ldr          BARRIER, [THR, #0x38]
    //     0x3abb5c: cmp          SP, BARRIER
    //     0x3abb60: b.ls         0x3abd60
    // 0x3abb64: r0 = pp[0x48f]
    //     0x3abb64: add          r0, PP, #0xf, lsl #12
    //     0x3abb68: ldr          r0, [r0, #0x480]
    // 0x3abb6c: r0 = call 0x2b16e4
    //     0x3abb6c: bl           0x2b16e4
    //     0x3abb70: ldr          r0, [THR, #0x68]
    // 0x3abb74: LoadField: r0 = r0->field_1768
    //     0x3abb74: ldr          r0, [r0, #0x1768]
    // 0x3abb78: BARRIER = pp[0x40]
    //     0x3abb78: ldr          BARRIER, [PP, #0x40]
    //     0x3abb7c: cmp          r0, r16
    // 0x3abb80: b.ne 0x3abb90
    //     0x3abb80: b.ne         0x3abb90
    // 0x3abb84: r2 = pp[0x49f]
    //     0x3abb84: add          r2, PP, #0xf, lsl #12
    //     0x3abb88: ldr          r2, [r2, #0x490]
    // 0x3abb8c: r0 = call 0x61d99c
    //     0x3abb8c: bl           0x61d99c
    //     0x3abb90: ldur         BARRIER, [fp, #-0x10]
    //     0x3abb94: str          BARRIER, [SP]
    // 0x3abb98: r1 = r0
    //     0x3abb98: mov          r1, r0
    // 0x3abb9c: r2 = pp[0x4a7]
    //     0x3abb9c: add          r2, PP, #0xf, lsl #12
    //     0x3abba0: ldr          r2, [r2, #0x498]
    // 0x3abba4: r4 = pp[0x280]
    //     0x3abba4: ldr          r4, [PP, #0x280]
    // 0x3abba8: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x3abba8: bl           0x3a8288
    // 0x3abbac: r1 = r0
    //     0x3abbac: mov          r1, r0
    //     0x3abbb0: stur         r1, [fp, #-0x18]
    // 0x3abbb4: r0 = call 0x2b13a0
    //     0x3abbb4: bl           0x2b13a0
    // 0x3abbb8: r3 = r0
    //     0x3abbb8: mov          r3, r0
    // 0x3abbbc: r2 = NULL
    //     0x3abbbc: mov          r2, NULL
    // 0x3abbc0: r1 = NULL
    //     0x3abbc0: mov          r1, NULL
    //     0x3abbc4: stur         r3, [fp, #-0x18]
    //     0x3abbc8: mov          r4, #0x3c
    // 0x3abbcc: branchIfSmi(r0, 0x3abbd8)
    //     0x3abbcc: tbz          r0, #0, 0x3abbd8
    // 0x3abbd0: r4 = LoadClassIdInstr(r0)
    //     0x3abbd0: ldur         r4, [r0, #-1]
    //     0x3abbd4: ubfx         r4, r4, #0xc, #0x14
    //     0x3abbd8: sub          r4, r4, #0x5e
    //     0x3abbdc: cmp          r4, #1
    // 0x3abbe0: b.ls 0x3abbf4
    //     0x3abbe0: b.ls         0x3abbf4
    // 0x3abbe4: r8 = pp[0xae0]
    //     0x3abbe4: ldr          r8, [PP, #0xae0]
    // 0x3abbe8: r3 = pp[0x4af]
    //     0x3abbe8: add          r3, PP, #0xf, lsl #12
    //     0x3abbec: ldr          r3, [r3, #0x4a0]
    // 0x3abbf0: r0 = call 0x278d08
    //     0x3abbf0: bl           0x278d08
    // 0x3abbf4: r1 = NULL
    //     0x3abbf4: mov          r1, NULL
    //     0x3abbf8: mov          r2, #4
    // 0x3abbfc: r0 = call 0x61f920
    //     0x3abbfc: bl           0x61f920
    // 0x3abc00: BARRIER = pp[0x4bf]
    //     0x3abc00: add          BARRIER, PP, #0xf, lsl #12
    //     0x3abc04: ldr          BARRIER, [BARRIER, #0x4b0]
    // 0x3abc08: StoreField: r0->field_f = r16
    //     0x3abc08: stur         r16, [r0, #0xf]
    //     0x3abc0c: ldur         r1, [fp, #-0x10]
    // 0x3abc10: StoreField: r0->field_13 = r1
    //     0x3abc10: stur         r1, [r0, #0x13]
    //     0x3abc14: str          r0, [SP]
    // 0x3abc18: r0 = dart_core__StringBase::_interpolate()
    //     0x3abc18: bl           0x2ad854
    // 0x3abc1c: r1 = NULL
    //     0x3abc1c: mov          r1, NULL
    //     0x3abc20: mov          r2, #4
    // 0x3abc24: r0 = call 0x61f920
    //     0x3abc24: bl           0x61f920
    // 0x3abc28: BARRIER = pp[0x4c7]
    //     0x3abc28: add          BARRIER, PP, #0xf, lsl #12
    //     0x3abc2c: ldr          BARRIER, [BARRIER, #0x4b8]
    // 0x3abc30: StoreField: r0->field_f = r16
    //     0x3abc30: stur         r16, [r0, #0xf]
    //     0x3abc34: ldur         r1, [fp, #-0x18]
    // 0x3abc38: StoreField: r0->field_13 = r1
    //     0x3abc38: stur         r1, [r0, #0x13]
    //     0x3abc3c: str          r0, [SP]
    // 0x3abc40: r0 = dart_core__StringBase::_interpolate()
    //     0x3abc40: bl           0x2ad854
    //     0x3abc44: ldur         r1, [fp, #-0x18]
    //     0x3abc48: cmp          r1, r22
    // 0x3abc4c: b.eq 0x3abcd8
    //     0x3abc4c: b.eq         0x3abcd8
    // 0x3abc50: r0 = dart_convert_::jsonDecode()
    //     0x3abc50: bl           0x3ac138
    // 0x3abc54: r3 = r0
    //     0x3abc54: mov          r3, r0
    // 0x3abc58: r2 = NULL
    //     0x3abc58: mov          r2, NULL
    // 0x3abc5c: r1 = NULL
    //     0x3abc5c: mov          r1, NULL
    //     0x3abc60: stur         r3, [fp, #-0x10]
    // 0x3abc64: r8 = pp[0x3cd0]
    //     0x3abc64: ldr          r8, [PP, #0x3cd0]
    // 0x3abc68: r3 = pp[0x4cf]
    //     0x3abc68: add          r3, PP, #0xf, lsl #12
    //     0x3abc6c: ldr          r3, [r3, #0x4c0]
    // 0x3abc70: r0 = call 0x2b15f0
    //     0x3abc70: bl           0x2b15f0
    // 0x3abc74: r0 = call 0x3ac12c
    //     0x3abc74: bl           0x3ac12c
    // 0x3abc78: r1 = r0
    //     0x3abc78: mov          r1, r0
    //     0x3abc7c: ldur         r2, [fp, #-0x10]
    //     0x3abc80: stur         r0, [fp, #-0x10]
    // 0x3abc84: r0 = soul_flutter_international$common$plugins$http_Response::ctor_fromJson()
    //     0x3abc84: bl           0x3abd68
    // 0x3abc88: r1 = pp[0x48f]
    //     0x3abc88: add          r1, PP, #0xf, lsl #12
    //     0x3abc8c: ldr          r1, [r1, #0x480]
    // 0x3abc90: r0 = call 0x2abee8
    //     0x3abc90: bl           0x2abee8
    //     0x3abc94: stur         r0, [fp, #-0x18]
    // 0x3abc98: StoreField: r0->field_b = xzr
    //     0x3abc98: stur         xzr, [r0, #0xb]
    //     0x3abc9c: ldr          r0, [THR, #0x68]
    // 0x3abca0: LoadField: r0 = r0->field_710
    //     0x3abca0: ldr          r0, [r0, #0x710]
    // 0x3abca4: BARRIER = pp[0x40]
    //     0x3abca4: ldr          BARRIER, [PP, #0x40]
    //     0x3abca8: cmp          r0, r16
    // 0x3abcac: b.ne 0x3abcb8
    //     0x3abcac: b.ne         0x3abcb8
    // 0x3abcb0: r2 = pp[0x128]
    //     0x3abcb0: ldr          r2, [PP, #0x128]
    // 0x3abcb4: r0 = call 0x61da04
    //     0x3abcb4: bl           0x61da04
    // 0x3abcb8: r1 = r0
    //     0x3abcb8: mov          r1, r0
    //     0x3abcbc: ldur         r0, [fp, #-0x18]
    // 0x3abcc0: StoreField: r0->field_13 = r1
    //     0x3abcc0: stur         r1, [r0, #0x13]
    // 0x3abcc4: r1 = r0
    //     0x3abcc4: mov          r1, r0
    //     0x3abcc8: ldur         r2, [fp, #-0x10]
    // 0x3abccc: r0 = dart_async__Future::_asyncComplete()
    //     0x3abccc: bl           0x27a970
    //     0x3abcd0: ldur         r0, [fp, #-0x18]
    // 0x3abcd4: b 0x2b19a0
    //     0x3abcd4: b            0x2b19a0
    // 0x3abcd8: BARRIER = pp[0xbf0]
    //     0x3abcd8: ldr          BARRIER, [PP, #0xbf0]
    //     0x3abcdc: ldr          lr, [THR, #0x90]
    //     0x3abce0: stp          lr, BARRIER, [SP]
    // 0x3abce4: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x3abce4: bl           0x27c0c8
    //     0x3abce8: stur         r0, [fp, #-0x10]
    // 0x3abcec: r0 = call 0x3ac12c
    //     0x3abcec: bl           0x3ac12c
    // 0x3abcf0: r2 = r0
    //     0x3abcf0: mov          r2, r0
    //     0x3abcf4: orr          r0, xzr, #0xfffffffffffffffe
    //     0x3abcf8: stur         r2, [fp, #-0x18]
    // 0x3abcfc: StoreField: r2->field_7 = r0
    //     0x3abcfc: stur         r0, [r2, #7]
    //     0x3abd00: ldur         r0, [fp, #-0x10]
    // 0x3abd04: StoreField: r2->field_b = r0
    //     0x3abd04: stur         r0, [r2, #0xb]
    // 0x3abd08: r0 = pp[0x148]
    //     0x3abd08: ldr          r0, [PP, #0x148]
    // 0x3abd0c: StoreField: r2->field_f = r0
    //     0x3abd0c: stur         r0, [r2, #0xf]
    // 0x3abd10: r1 = pp[0x48f]
    //     0x3abd10: add          r1, PP, #0xf, lsl #12
    //     0x3abd14: ldr          r1, [r1, #0x480]
    // 0x3abd18: r0 = call 0x2abee8
    //     0x3abd18: bl           0x2abee8
    //     0x3abd1c: stur         r0, [fp, #-0x10]
    // 0x3abd20: StoreField: r0->field_b = xzr
    //     0x3abd20: stur         xzr, [r0, #0xb]
    //     0x3abd24: ldr          r0, [THR, #0x68]
    // 0x3abd28: LoadField: r0 = r0->field_710
    //     0x3abd28: ldr          r0, [r0, #0x710]
    // 0x3abd2c: BARRIER = pp[0x40]
    //     0x3abd2c: ldr          BARRIER, [PP, #0x40]
    //     0x3abd30: cmp          r0, r16
    // 0x3abd34: b.ne 0x3abd40
    //     0x3abd34: b.ne         0x3abd40
    // 0x3abd38: r2 = pp[0x128]
    //     0x3abd38: ldr          r2, [PP, #0x128]
    // 0x3abd3c: r0 = call 0x61da04
    //     0x3abd3c: bl           0x61da04
    // 0x3abd40: r1 = r0
    //     0x3abd40: mov          r1, r0
    //     0x3abd44: ldur         r0, [fp, #-0x10]
    // 0x3abd48: StoreField: r0->field_13 = r1
    //     0x3abd48: stur         r1, [r0, #0x13]
    // 0x3abd4c: r1 = r0
    //     0x3abd4c: mov          r1, r0
    //     0x3abd50: ldur         r2, [fp, #-0x18]
    // 0x3abd54: r0 = dart_async__Future::_asyncComplete()
    //     0x3abd54: bl           0x27a970
    //     0x3abd58: ldur         r0, [fp, #-0x10]
    // 0x3abd5c: b 0x2b19a0
    //     0x3abd5c: b            0x2b19a0
    // 0x3abd60: r0 = call 0x61fa28
    //     0x3abd60: bl           0x61fa28
    // 0x3abd64: b 0x3abb64
    //     0x3abd64: b            0x3abb64
  }

  _channel() {
    // ** addr: 0x3ac17c, size: 0x48
    // 0x3ac17c: EnterFrame
    //     0x3ac17c: stp          fp, lr, [SP, #-0x10]!
    //     0x3ac180: mov          fp, SP
    // 0x3ac184: AllocStack(8)
    //     0x3ac184: sub          SP, SP, #8
    // 0x3ac188: CheckStackOverflow
    //     0x3ac188: ldr          BARRIER, [THR, #0x38]
    //     0x3ac18c: cmp          SP, BARRIER
    //     0x3ac190: b.ls         0x3ac1bc
    // 0x3ac194: r0 = call 0x3a84b8
    //     0x3ac194: bl           0x3a84b8
    // 0x3ac198: r1 = r0
    //     0x3ac198: mov          r1, r0
    // 0x3ac19c: r2 = pp[0x52f]
    //     0x3ac19c: add          r2, PP, #0xf, lsl #12
    //     0x3ac1a0: ldr          r2, [r2, #0x520]
    //     0x3ac1a4: stur         r0, [fp, #-8]
    // 0x3ac1a8: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::ctor()
    //     0x3ac1a8: bl           0x3a83ec
    //     0x3ac1ac: ldur         r0, [fp, #-8]
    // 0x3ac1b0: SP = fp
    //     0x3ac1b0: mov          SP, fp
    // 0x3ac1b4: LeaveFrame
    //     0x3ac1b4: ldp          fp, lr, [SP], #0x10
    // 0x3ac1b8: ret
    //     0x3ac1b8: ret          
    // 0x3ac1bc: r0 = call 0x61fa28
    //     0x3ac1bc: bl           0x61fa28
    // 0x3ac1c0: b 0x3ac194
    //     0x3ac1c0: b            0x3ac194
  }

  _anon_closure() {
    // ** addr: 0x3ac1c4, size: 0x50
    // 0x3ac1c4: EnterFrame
    //     0x3ac1c4: stp          fp, lr, [SP, #-0x10]!
    //     0x3ac1c8: mov          fp, SP
    //     0x3ac1cc: ldr          r0, [fp, #0x18]
    // 0x3ac1d0: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x3ac1d0: ldur         r1, [r0, #0x17]
    //     0x3ac1d4: add          r1, r1, HEAP, lsl #32
    // 0x3ac1d8: CheckStackOverflow
    //     0x3ac1d8: ldr          BARRIER, [THR, #0x38]
    //     0x3ac1dc: cmp          SP, BARRIER
    //     0x3ac1e0: b.ls         0x3ac20c
    // 0x3ac1e4: LoadField: r2 = r1->field_f
    //     0x3ac1e4: ldur         r2, [r1, #0xf]
    //     0x3ac1e8: add          r2, r2, HEAP, lsl #32
    // 0x3ac1ec: LoadField: r3 = r1->field_13
    //     0x3ac1ec: ldur         r3, [r1, #0x13]
    //     0x3ac1f0: add          r3, r3, HEAP, lsl #32
    //     0x3ac1f4: ldr          r1, [fp, #0x10]
    // 0x3ac1f8: r0 = soul_flutter_international$common$plugins$http_Http::_handleResponse()
    //     0x3ac1f8: bl           0x3ac214
    // 0x3ac1fc: r0 = NULL
    //     0x3ac1fc: mov          r0, NULL
    // 0x3ac200: SP = fp
    //     0x3ac200: mov          SP, fp
    // 0x3ac204: LeaveFrame
    //     0x3ac204: ldp          fp, lr, [SP], #0x10
    // 0x3ac208: ret
    //     0x3ac208: ret          
    // 0x3ac20c: r0 = call 0x61fa28
    //     0x3ac20c: bl           0x61fa28
    // 0x3ac210: b 0x3ac1e4
    //     0x3ac210: b            0x3ac1e4
  }

  _handleResponse() {
    // ** addr: 0x3ac214, size: 0x384
    // 0x3ac214: EnterFrame
    //     0x3ac214: stp          fp, lr, [SP, #-0x10]!
    //     0x3ac218: mov          fp, SP
    // 0x3ac21c: AllocStack(0x38)
    //     0x3ac21c: sub          SP, SP, #0x38
    // 0x3ac220: r4 = r1
    //     0x3ac220: mov          r4, r1
    // 0x3ac224: r0 = r3
    //     0x3ac224: mov          r0, r3
    //     0x3ac228: stur         r3, [fp, #-0x20]
    // 0x3ac22c: r3 = r2
    //     0x3ac22c: mov          r3, r2
    //     0x3ac230: stur         r1, [fp, #-0x10]
    //     0x3ac234: stur         r2, [fp, #-0x18]
    // 0x3ac238: CheckStackOverflow
    //     0x3ac238: ldr          BARRIER, [THR, #0x38]
    //     0x3ac23c: cmp          SP, BARRIER
    //     0x3ac240: b.ls         0x3ac590
    // 0x3ac244: LoadField: r1 = r4->field_7
    //     0x3ac244: ldur         r1, [r4, #7]
    //     0x3ac248: add          r1, r1, HEAP, lsl #32
    //     0x3ac24c: cbnz         r1, 0x3ac4fc
    // 0x3ac250: LoadField: r5 = r4->field_b
    //     0x3ac250: ldur         r5, [r4, #0xb]
    //     0x3ac254: add          r5, r5, HEAP, lsl #32
    //     0x3ac258: stur         r5, [fp, #-8]
    //     0x3ac25c: cmp          r5, r22
    // 0x3ac260: b.ne 0x3ac26c
    //     0x3ac260: b.ne         0x3ac26c
    // 0x3ac264: r0 = NULL
    //     0x3ac264: mov          r0, NULL
    // 0x3ac268: b 0x3ac29c
    //     0x3ac268: b            0x3ac29c
    // 0x3ac26c: r1 = r5
    //     0x3ac26c: mov          r1, r5
    // 0x3ac270: r2 = pp[0x4828]
    //     0x3ac270: ldr          r2, [PP, #0x4828]
    // 0x3ac274: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData()
    //     0x3ac274: bl           0x61c9d0
    // 0x3ac278: r1 = r0
    //     0x3ac278: mov          r1, r0
    //     0x3ac27c: ldur         r0, [fp, #-8]
    // 0x3ac280: LoadField: r2 = r0->field_f
    //     0x3ac280: ldur         r2, [r0, #0xf]
    //     0x3ac284: add          r2, r2, HEAP, lsl #32
    //     0x3ac288: cmp          r2, r1
    // 0x3ac28c: b.ne 0x3ac298
    //     0x3ac28c: b.ne         0x3ac298
    // 0x3ac290: r0 = NULL
    //     0x3ac290: mov          r0, NULL
    // 0x3ac294: b 0x3ac29c
    //     0x3ac294: b            0x3ac29c
    // 0x3ac298: r0 = r1
    //     0x3ac298: mov          r0, r1
    //     0x3ac29c: mov          BARRIER, #0x4e22
    //     0x3ac2a0: stp          r0, BARRIER, [SP]
    // 0x3ac2a4: r0 = dart_core__IntegerImplementation::op_eq()
    //     0x3ac2a4: bl           0x579cf4
    //     0x3ac2a8: tbnz         r0, #4, 0x3ac4f4
    //     0x3ac2ac: ldur         r0, [fp, #-0x10]
    // 0x3ac2b0: LoadField: r3 = r0->field_b
    //     0x3ac2b0: ldur         r3, [r0, #0xb]
    //     0x3ac2b4: add          r3, r3, HEAP, lsl #32
    //     0x3ac2b8: stur         r3, [fp, #-8]
    //     0x3ac2bc: cmp          r3, r22
    // 0x3ac2c0: b.ne 0x3ac2cc
    //     0x3ac2c0: b.ne         0x3ac2cc
    // 0x3ac2c4: r3 = NULL
    //     0x3ac2c4: mov          r3, NULL
    // 0x3ac2c8: b 0x3ac300
    //     0x3ac2c8: b            0x3ac300
    // 0x3ac2cc: r1 = r3
    //     0x3ac2cc: mov          r1, r3
    // 0x3ac2d0: r2 = pp[0x1348]
    //     0x3ac2d0: ldr          r2, [PP, #0x1348]
    // 0x3ac2d4: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData()
    //     0x3ac2d4: bl           0x61c9d0
    // 0x3ac2d8: r1 = r0
    //     0x3ac2d8: mov          r1, r0
    //     0x3ac2dc: ldur         r0, [fp, #-8]
    // 0x3ac2e0: LoadField: r2 = r0->field_f
    //     0x3ac2e0: ldur         r2, [r0, #0xf]
    //     0x3ac2e4: add          r2, r2, HEAP, lsl #32
    //     0x3ac2e8: cmp          r2, r1
    // 0x3ac2ec: b.ne 0x3ac2f8
    //     0x3ac2ec: b.ne         0x3ac2f8
    // 0x3ac2f0: r0 = NULL
    //     0x3ac2f0: mov          r0, NULL
    // 0x3ac2f4: b 0x3ac2fc
    //     0x3ac2f4: b            0x3ac2fc
    // 0x3ac2f8: r0 = r1
    //     0x3ac2f8: mov          r0, r1
    // 0x3ac2fc: r3 = r0
    //     0x3ac2fc: mov          r3, r0
    //     0x3ac300: stur         r3, [fp, #-8]
    //     0x3ac304: cmp          r3, r22
    // 0x3ac308: b.eq 0x3ac418
    //     0x3ac308: b.eq         0x3ac418
    // 0x3ac30c: r0 = r3
    //     0x3ac30c: mov          r0, r3
    // 0x3ac310: r2 = NULL
    //     0x3ac310: mov          r2, NULL
    // 0x3ac314: r1 = NULL
    //     0x3ac314: mov          r1, NULL
    //     0x3ac318: cmp          r0, r22
    // 0x3ac31c: b.eq 0x3ac3b8
    //     0x3ac31c: b.eq         0x3ac3b8
    // 0x3ac320: branchIfSmi(r0, 0x3ac3b8)
    //     0x3ac320: tbz          r0, #0, 0x3ac3b8
    // 0x3ac324: r3 = LoadClassIdInstr(r0)
    //     0x3ac324: ldur         r3, [r0, #-1]
    //     0x3ac328: ubfx         r3, r3, #0xc, #0x14
    //     0x3ac32c: cmp          r3, #0xe2c
    // 0x3ac330: b.eq 0x3ac3c0
    //     0x3ac330: b.eq         0x3ac3c0
    //     0x3ac334: sub          r3, r3, #0x5a
    //     0x3ac338: cmp          r3, #2
    // 0x3ac33c: b.ls 0x3ac3c0
    //     0x3ac33c: b.ls         0x3ac3c0
    // 0x3ac340: r4 = LoadClassIdInstr(r0)
    //     0x3ac340: ldur         r4, [r0, #-1]
    //     0x3ac344: ubfx         r4, r4, #0xc, #0x14
    //     0x3ac348: ldr          r3, [THR, #0x760]
    // 0x3ac34c: LoadField: r3 = r3->field_18
    //     0x3ac34c: ldr          r3, [r3, #0x18]
    //     0x3ac350: ldr          r3, [r3, r4, lsl #3]
    // 0x3ac354: LoadField: r3 = r3->field_2b
    //     0x3ac354: ldur         r3, [r3, #0x2b]
    //     0x3ac358: add          r3, r3, HEAP, lsl #32
    //     0x3ac35c: cmp          r3, r22
    // 0x3ac360: b.eq 0x3ac3b8
    //     0x3ac360: b.eq         0x3ac3b8
    // 0x3ac364: LoadField: r3 = r3->field_f
    //     0x3ac364: ldur         r3, [r3, #0xf]
    //     0x3ac368: lsr          r3, r3, #3
    //     0x3ac36c: cmp          r3, #0xe2c
    // 0x3ac370: b.eq 0x3ac3c0
    //     0x3ac370: b.eq         0x3ac3c0
    // 0x3ac374: r3 = pp[0x427]
    //     0x3ac374: add          r3, PP, #0xf, lsl #12
    //     0x3ac378: ldr          r3, [r3, #0x418]
    // 0x3ac37c: lr = pp[0x8f0]
    //     0x3ac37c: ldr          lr, [PP, #0x8f0]
    //     0x3ac380: ldur         lr, [lr, #7]
    // 0x3ac384: r0 = [R]()
    //     0x3ac384: blr          lr
    //     0x3ac388: cmp          r7, r22
    // 0x3ac38c: b.eq 0x3ac398
    //     0x3ac38c: b.eq         0x3ac398
    //     0x3ac390: tbnz         r7, #4, 0x3ac3b8
    // 0x3ac394: b 0x3ac3c0
    //     0x3ac394: b            0x3ac3c0
    // 0x3ac398: r8 = pp[0x42f]
    //     0x3ac398: add          r8, PP, #0xf, lsl #12
    //     0x3ac39c: ldr          r8, [r8, #0x420]
    // 0x3ac3a0: r3 = pp[0x437]
    //     0x3ac3a0: add          r3, PP, #0xf, lsl #12
    //     0x3ac3a4: ldr          r3, [r3, #0x428]
    // 0x3ac3a8: lr = pp[0x390]
    //     0x3ac3a8: ldr          lr, [PP, #0x390]
    //     0x3ac3ac: ldur         lr, [lr, #7]
    // 0x3ac3b0: r0 = [R]()
    //     0x3ac3b0: blr          lr
    // 0x3ac3b4: b 0x3ac3c4
    //     0x3ac3b4: b            0x3ac3c4
    //     0x3ac3b8: add          r0, NULL, #0x30
    // 0x3ac3bc: b 0x3ac3c4
    //     0x3ac3bc: b            0x3ac3c4
    //     0x3ac3c0: add          r0, NULL, #0x20
    //     0x3ac3c4: tbnz         r0, #4, 0x3ac414
    //     0x3ac3c8: ldur         r0, [fp, #-8]
    // 0x3ac3cc: r1 = NULL
    //     0x3ac3cc: mov          r1, NULL
    //     0x3ac3d0: mov          r2, #4
    // 0x3ac3d4: r0 = call 0x61f920
    //     0x3ac3d4: bl           0x61f920
    // 0x3ac3d8: BARRIER = pp[0x38f]
    //     0x3ac3d8: add          BARRIER, PP, #0xf, lsl #12
    //     0x3ac3dc: ldr          BARRIER, [BARRIER, #0x380]
    // 0x3ac3e0: StoreField: r0->field_f = r16
    //     0x3ac3e0: stur         r16, [r0, #0xf]
    //     0x3ac3e4: ldur         r3, [fp, #-8]
    // 0x3ac3e8: StoreField: r0->field_13 = r3
    //     0x3ac3e8: stur         r3, [r0, #0x13]
    // 0x3ac3ec: BARRIER = pp[0xbf0]
    //     0x3ac3ec: ldr          BARRIER, [PP, #0xbf0]
    //     0x3ac3f0: stp          r0, BARRIER, [SP]
    // 0x3ac3f4: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x3ac3f4: bl           0x27c0c8
    //     0x3ac3f8: ldur         BARRIER, [fp, #-0x18]
    //     0x3ac3fc: stp          r0, BARRIER, [SP]
    //     0x3ac400: ldur         r0, [fp, #-0x18]
    // 0x3ac404: r4 = pp[0x140]
    //     0x3ac404: ldr          r4, [PP, #0x140]
    // 0x3ac408: LoadField: r2 = r0->field_1f
    //     0x3ac408: ldur         r2, [r0, #0x1f]
    // 0x3ac40c: r0 = [R]()
    //     0x3ac40c: blr          r2
    // 0x3ac410: b 0x3ac580
    //     0x3ac410: b            0x3ac580
    //     0x3ac414: ldur         r3, [fp, #-8]
    //     0x3ac418: cmp          r3, r22
    // 0x3ac41c: b.eq 0x3ac4ac
    //     0x3ac41c: b.eq         0x3ac4ac
    // 0x3ac420: r0 = r3
    //     0x3ac420: mov          r0, r3
    // 0x3ac424: r2 = NULL
    //     0x3ac424: mov          r2, NULL
    // 0x3ac428: r1 = NULL
    //     0x3ac428: mov          r1, NULL
    //     0x3ac42c: cmp          r0, r22
    // 0x3ac430: b.eq 0x3ac47c
    //     0x3ac430: b.eq         0x3ac47c
    // 0x3ac434: branchIfSmi(r0, 0x3ac47c)
    //     0x3ac434: tbz          r0, #0, 0x3ac47c
    // 0x3ac438: r3 = pp[0x43f]
    //     0x3ac438: add          r3, PP, #0xf, lsl #12
    //     0x3ac43c: ldr          r3, [r3, #0x430]
    // 0x3ac440: lr = pp[0x30]
    //     0x3ac440: ldr          lr, [PP, #0x30]
    //     0x3ac444: ldur         lr, [lr, #7]
    // 0x3ac448: r0 = [R]()
    //     0x3ac448: blr          lr
    //     0x3ac44c: cmp          r7, r22
    // 0x3ac450: b.eq 0x3ac45c
    //     0x3ac450: b.eq         0x3ac45c
    //     0x3ac454: tbnz         r7, #4, 0x3ac47c
    // 0x3ac458: b 0x3ac484
    //     0x3ac458: b            0x3ac484
    // 0x3ac45c: r8 = pp[0x447]
    //     0x3ac45c: add          r8, PP, #0xf, lsl #12
    //     0x3ac460: ldr          r8, [r8, #0x438]
    // 0x3ac464: r3 = pp[0x44f]
    //     0x3ac464: add          r3, PP, #0xf, lsl #12
    //     0x3ac468: ldr          r3, [r3, #0x440]
    // 0x3ac46c: lr = pp[0x390]
    //     0x3ac46c: ldr          lr, [PP, #0x390]
    //     0x3ac470: ldur         lr, [lr, #7]
    // 0x3ac474: r0 = [R]()
    //     0x3ac474: blr          lr
    // 0x3ac478: b 0x3ac488
    //     0x3ac478: b            0x3ac488
    //     0x3ac47c: add          r0, NULL, #0x30
    // 0x3ac480: b 0x3ac488
    //     0x3ac480: b            0x3ac488
    //     0x3ac484: add          r0, NULL, #0x20
    //     0x3ac488: tbnz         r0, #4, 0x3ac4ac
    //     0x3ac48c: ldur         BARRIER, [fp, #-0x18]
    //     0x3ac490: ldur         lr, [fp, #-8]
    //     0x3ac494: stp          lr, BARRIER, [SP]
    //     0x3ac498: ldur         r0, [fp, #-0x18]
    // 0x3ac49c: r4 = pp[0x140]
    //     0x3ac49c: ldr          r4, [PP, #0x140]
    // 0x3ac4a0: LoadField: r2 = r0->field_1f
    //     0x3ac4a0: ldur         r2, [r0, #0x1f]
    // 0x3ac4a4: r0 = [R]()
    //     0x3ac4a4: blr          r2
    // 0x3ac4a8: b 0x3ac580
    //     0x3ac4a8: b            0x3ac580
    //     0x3ac4ac: ldur         r0, [fp, #-8]
    // 0x3ac4b0: r1 = NULL
    //     0x3ac4b0: mov          r1, NULL
    //     0x3ac4b4: mov          r2, #4
    // 0x3ac4b8: r0 = call 0x61f920
    //     0x3ac4b8: bl           0x61f920
    // 0x3ac4bc: BARRIER = pp[0x1348]
    //     0x3ac4bc: ldr          BARRIER, [PP, #0x1348]
    // 0x3ac4c0: StoreField: r0->field_f = r16
    //     0x3ac4c0: stur         r16, [r0, #0xf]
    //     0x3ac4c4: ldur         r1, [fp, #-8]
    // 0x3ac4c8: StoreField: r0->field_13 = r1
    //     0x3ac4c8: stur         r1, [r0, #0x13]
    // 0x3ac4cc: BARRIER = pp[0xbf0]
    //     0x3ac4cc: ldr          BARRIER, [PP, #0xbf0]
    //     0x3ac4d0: stp          r0, BARRIER, [SP]
    // 0x3ac4d4: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x3ac4d4: bl           0x27c0c8
    //     0x3ac4d8: ldur         BARRIER, [fp, #-0x18]
    //     0x3ac4dc: stp          r0, BARRIER, [SP]
    //     0x3ac4e0: ldur         r0, [fp, #-0x18]
    // 0x3ac4e4: r4 = pp[0x140]
    //     0x3ac4e4: ldr          r4, [PP, #0x140]
    // 0x3ac4e8: LoadField: r2 = r0->field_1f
    //     0x3ac4e8: ldur         r2, [r0, #0x1f]
    // 0x3ac4ec: r0 = [R]()
    //     0x3ac4ec: blr          r2
    // 0x3ac4f0: b 0x3ac580
    //     0x3ac4f0: b            0x3ac580
    //     0x3ac4f4: ldur         r0, [fp, #-0x10]
    // 0x3ac4f8: b 0x3ac500
    //     0x3ac4f8: b            0x3ac500
    // 0x3ac4fc: r0 = r4
    //     0x3ac4fc: mov          r0, r4
    //     0x3ac500: ldur         r1, [fp, #-0x20]
    //     0x3ac504: ldr          r0, [THR, #0x68]
    // 0x3ac508: LoadField: r0 = r0->field_1770
    //     0x3ac508: ldr          r0, [r0, #0x1770]
    // 0x3ac50c: BARRIER = pp[0x40]
    //     0x3ac50c: ldr          BARRIER, [PP, #0x40]
    //     0x3ac510: cmp          r0, r16
    // 0x3ac514: b.ne 0x3ac524
    //     0x3ac514: b.ne         0x3ac524
    // 0x3ac518: r2 = pp[0x457]
    //     0x3ac518: add          r2, PP, #0xf, lsl #12
    //     0x3ac51c: ldr          r2, [r2, #0x448]
    // 0x3ac520: r0 = call 0x61d99c
    //     0x3ac520: bl           0x61d99c
    //     0x3ac524: ldur         r1, [fp, #-0x10]
    // 0x3ac528: LoadField: r2 = r1->field_7
    //     0x3ac528: ldur         r2, [r1, #7]
    //     0x3ac52c: add          r2, r2, HEAP, lsl #32
    // 0x3ac530: LoadField: r3 = r1->field_f
    //     0x3ac530: ldur         r3, [r1, #0xf]
    //     0x3ac534: add          r3, r3, HEAP, lsl #32
    //     0x3ac538: stp          r2, r0, [SP, #8]
    //     0x3ac53c: str          r3, [SP]
    // 0x3ac540: r4 = pp[0x370]
    //     0x3ac540: ldr          r4, [PP, #0x370]
    // 0x3ac544: LoadField: r2 = r0->field_1f
    //     0x3ac544: ldur         r2, [r0, #0x1f]
    // 0x3ac548: r0 = [R]()
    //     0x3ac548: blr          r2
    //     0x3ac54c: ldur         r0, [fp, #-0x20]
    //     0x3ac550: cmp          r0, r22
    // 0x3ac554: b.eq 0x3ac580
    //     0x3ac554: b.eq         0x3ac580
    //     0x3ac558: ldur         r1, [fp, #-0x10]
    // 0x3ac55c: LoadField: r2 = r1->field_7
    //     0x3ac55c: ldur         r2, [r1, #7]
    //     0x3ac560: add          r2, r2, HEAP, lsl #32
    // 0x3ac564: LoadField: r3 = r1->field_f
    //     0x3ac564: ldur         r3, [r1, #0xf]
    //     0x3ac568: add          r3, r3, HEAP, lsl #32
    //     0x3ac56c: stp          r2, r0, [SP, #8]
    //     0x3ac570: str          r3, [SP]
    // 0x3ac574: r4 = pp[0x370]
    //     0x3ac574: ldr          r4, [PP, #0x370]
    // 0x3ac578: LoadField: r2 = r0->field_1f
    //     0x3ac578: ldur         r2, [r0, #0x1f]
    // 0x3ac57c: r0 = [R]()
    //     0x3ac57c: blr          r2
    // 0x3ac580: r0 = NULL
    //     0x3ac580: mov          r0, NULL
    // 0x3ac584: SP = fp
    //     0x3ac584: mov          SP, fp
    // 0x3ac588: LeaveFrame
    //     0x3ac588: ldp          fp, lr, [SP], #0x10
    // 0x3ac58c: ret
    //     0x3ac58c: ret          
    // 0x3ac590: r0 = call 0x61fa28
    //     0x3ac590: bl           0x61fa28
    // 0x3ac594: b 0x3ac244
    //     0x3ac594: b            0x3ac244
  }

  postSimple() {
    // ** addr: 0x41e430, size: 0xd0
    // 0x41e430: EnterFrame
    //     0x41e430: stp          fp, lr, [SP, #-0x10]!
    //     0x41e434: mov          fp, SP
    // 0x41e438: AllocStack(0x40)
    //     0x41e438: sub          SP, SP, #0x40
    //     0x41e43c: stur         r1, [fp, #-0x10]
    //     0x41e440: stur         r2, [fp, #-0x18]
    //     0x41e444: stur         r3, [fp, #-0x20]
    // 0x41e448: LoadField: r0 = r4->field_13
    //     0x41e448: ldur         r0, [r4, #0x13]
    // 0x41e44c: LoadField: r5 = r4->field_1f
    //     0x41e44c: ldur         r5, [r4, #0x1f]
    //     0x41e450: add          r5, r5, HEAP, lsl #32
    // 0x41e454: BARRIER = pp[0x417]
    //     0x41e454: add          BARRIER, PP, #0xf, lsl #12
    //     0x41e458: ldr          BARRIER, [BARRIER, #0x408]
    //     0x41e45c: cmp          r5, r16
    // 0x41e460: b.ne 0x41e47c
    //     0x41e460: b.ne         0x41e47c
    // 0x41e464: LoadField: r5 = r4->field_23
    //     0x41e464: ldur         r5, [r4, #0x23]
    //     0x41e468: add          r5, r5, HEAP, lsl #32
    //     0x41e46c: sub          r4, r0, r5
    //     0x41e470: add          r0, fp, r4, sxtw #2
    // 0x41e474: LoadField: r0 = r0->field_8
    //     0x41e474: ldr          r0, [r0, #8]
    // 0x41e478: b 0x41e480
    //     0x41e478: b            0x41e480
    // 0x41e47c: r0 = NULL
    //     0x41e47c: mov          r0, NULL
    //     0x41e480: stur         r0, [fp, #-8]
    // 0x41e484: CheckStackOverflow
    //     0x41e484: ldr          BARRIER, [THR, #0x38]
    //     0x41e488: cmp          SP, BARRIER
    //     0x41e48c: b.ls         0x41e4f8
    //     0x41e490: mov          r1, #2
    // 0x41e494: r0 = call 0x61e890
    //     0x41e494: bl           0x61e890
    // 0x41e498: r3 = r0
    //     0x41e498: mov          r3, r0
    //     0x41e49c: ldur         r0, [fp, #-0x20]
    //     0x41e4a0: stur         r3, [fp, #-0x28]
    // 0x41e4a4: StoreField: r3->field_f = r0
    //     0x41e4a4: stur         r0, [r3, #0xf]
    //     0x41e4a8: ldur         r0, [fp, #-8]
    // 0x41e4ac: StoreField: r3->field_13 = r0
    //     0x41e4ac: stur         r0, [r3, #0x13]
    //     0x41e4b0: ldur         r1, [fp, #-0x10]
    //     0x41e4b4: ldur         r2, [fp, #-0x18]
    // 0x41e4b8: r0 = soul_flutter_international$common$plugins$http_Http::post()
    //     0x41e4b8: bl           0x41e500
    //     0x41e4bc: ldur         r2, [fp, #-0x28]
    // 0x41e4c0: r1 = pp[0xbd8]
    //     0x41e4c0: add          r1, PP, #0x10, lsl #12
    //     0x41e4c4: ldr          r1, [r1, #0xbc8]
    //     0x41e4c8: stur         r0, [fp, #-8]
    // 0x41e4cc: r0 = call 0x61ec54
    //     0x41e4cc: bl           0x61ec54
    // 0x41e4d0: BARRIER = pp[0x1658]
    //     0x41e4d0: ldr          BARRIER, [PP, #0x1658]
    //     0x41e4d4: ldur         lr, [fp, #-8]
    //     0x41e4d8: stp          lr, BARRIER, [SP, #8]
    //     0x41e4dc: str          r0, [SP]
    // 0x41e4e0: r4 = pp[0x58]
    //     0x41e4e0: ldr          r4, [PP, #0x58]
    // 0x41e4e4: r0 = dart_async__Future::then()
    //     0x41e4e4: bl           0x591880
    // 0x41e4e8: r0 = NULL
    //     0x41e4e8: mov          r0, NULL
    // 0x41e4ec: SP = fp
    //     0x41e4ec: mov          SP, fp
    // 0x41e4f0: LeaveFrame
    //     0x41e4f0: ldp          fp, lr, [SP], #0x10
    // 0x41e4f4: ret
    //     0x41e4f4: ret          
    // 0x41e4f8: r0 = call 0x61fa28
    //     0x41e4f8: bl           0x61fa28
    // 0x41e4fc: b 0x41e490
    //     0x41e4fc: b            0x41e490
  }

  post() {
    // ** addr: 0x41e500, size: 0x9c
    // 0x41e500: EnterFrame
    //     0x41e500: stp          fp, lr, [SP, #-0x10]!
    //     0x41e504: mov          fp, SP
    // 0x41e508: AllocStack(0x28)
    //     0x41e508: sub          SP, SP, #0x28
    //     0x41e50c: stur         NULL, [fp, #-8]
    //     0x41e510: stur         r1, [fp, #-0x10]
    //     0x41e514: stur         r2, [fp, #-0x18]
    // 0x41e518: CheckStackOverflow
    //     0x41e518: ldr          BARRIER, [THR, #0x38]
    //     0x41e51c: cmp          SP, BARRIER
    //     0x41e520: b.ls         0x41e594
    // 0x41e524: r0 = pp[0x48f]
    //     0x41e524: add          r0, PP, #0xf, lsl #12
    //     0x41e528: ldr          r0, [r0, #0x480]
    // 0x41e52c: r0 = call 0x2b16e4
    //     0x41e52c: bl           0x2b16e4
    // 0x41e530: r1 = NULL
    //     0x41e530: mov          r1, NULL
    //     0x41e534: mov          r2, #0xc
    // 0x41e538: r0 = call 0x61f920
    //     0x41e538: bl           0x61f920
    // 0x41e53c: BARRIER = pp[0x2a68]
    //     0x41e53c: ldr          BARRIER, [PP, #0x2a68]
    // 0x41e540: StoreField: r0->field_f = r16
    //     0x41e540: stur         r16, [r0, #0xf]
    // 0x41e544: BARRIER = pp[0xbe0]
    //     0x41e544: add          BARRIER, PP, #0x10, lsl #12
    //     0x41e548: ldr          BARRIER, [BARRIER, #0xbd0]
    // 0x41e54c: StoreField: r0->field_13 = r16
    //     0x41e54c: stur         r16, [r0, #0x13]
    // 0x41e550: BARRIER = pp[0xe58]
    //     0x41e550: ldr          BARRIER, [PP, #0xe58]
    // 0x41e554: ArrayStore: r0[0] = r16  ; List_8
    //     0x41e554: stur         r16, [r0, #0x17]
    //     0x41e558: ldur         r1, [fp, #-0x10]
    // 0x41e55c: StoreField: r0->field_1b = r1
    //     0x41e55c: stur         r1, [r0, #0x1b]
    // 0x41e560: BARRIER = pp[0x1348]
    //     0x41e560: ldr          BARRIER, [PP, #0x1348]
    // 0x41e564: StoreField: r0->field_1f = r16
    //     0x41e564: stur         r16, [r0, #0x1f]
    //     0x41e568: ldur         r1, [fp, #-0x18]
    // 0x41e56c: StoreField: r0->field_23 = r1
    //     0x41e56c: stur         r1, [r0, #0x23]
    // 0x41e570: BARRIER = pp[0xbf0]
    //     0x41e570: ldr          BARRIER, [PP, #0xbf0]
    //     0x41e574: stp          r0, BARRIER, [SP]
    // 0x41e578: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x41e578: bl           0x27c0c8
    // 0x41e57c: r1 = r0
    //     0x41e57c: mov          r1, r0
    // 0x41e580: r0 = soul_flutter_international$common$plugins$http_Http::request()
    //     0x41e580: bl           0x3abb44
    // 0x41e584: r1 = r0
    //     0x41e584: mov          r1, r0
    //     0x41e588: stur         r1, [fp, #-0x10]
    // 0x41e58c: r0 = call 0x2b13a0
    //     0x41e58c: bl           0x2b13a0
    // 0x41e590: b 0x2b19a0
    //     0x41e590: b            0x2b19a0
    // 0x41e594: r0 = call 0x61fa28
    //     0x41e594: bl           0x61fa28
    // 0x41e598: b 0x41e524
    //     0x41e598: b            0x41e524
  }

  ctor_fromJson() {
    // ** addr: 0x3abd68, size: 0x254
    // 0x3abd68: EnterFrame
    //     0x3abd68: stp          fp, lr, [SP, #-0x10]!
    //     0x3abd6c: mov          fp, SP
    // 0x3abd70: AllocStack(0x18)
    //     0x3abd70: sub          SP, SP, #0x18
    // 0x3abd74: r3 = r1
    //     0x3abd74: mov          r3, r1
    // 0x3abd78: r0 = r2
    //     0x3abd78: mov          r0, r2
    //     0x3abd7c: stur         r1, [fp, #-8]
    //     0x3abd80: stur         r2, [fp, #-0x10]
    // 0x3abd84: CheckStackOverflow
    //     0x3abd84: ldr          BARRIER, [THR, #0x38]
    //     0x3abd88: cmp          SP, BARRIER
    //     0x3abd8c: b.ls         0x3abfb4
    // 0x3abd90: r1 = r0
    //     0x3abd90: mov          r1, r0
    // 0x3abd94: r2 = pp[0x4828]
    //     0x3abd94: ldr          r2, [PP, #0x4828]
    // 0x3abd98: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData()
    //     0x3abd98: bl           0x61c9d0
    //     0x3abd9c: ldur         r3, [fp, #-0x10]
    // 0x3abda0: LoadField: r1 = r3->field_f
    //     0x3abda0: ldur         r1, [r3, #0xf]
    //     0x3abda4: add          r1, r1, HEAP, lsl #32
    //     0x3abda8: cmp          r1, r0
    // 0x3abdac: b.ne 0x3abdb4
    //     0x3abdac: b.ne         0x3abdb4
    // 0x3abdb0: r0 = NULL
    //     0x3abdb0: mov          r0, NULL
    //     0x3abdb4: cmp          r0, r22
    // 0x3abdb8: b.ne 0x3abdc4
    //     0x3abdb8: b.ne         0x3abdc4
    //     0x3abdbc: orr          r5, xzr, #0xfffffffffffffffe
    // 0x3abdc0: b 0x3abdc8
    //     0x3abdc0: b            0x3abdc8
    // 0x3abdc4: r5 = r0
    //     0x3abdc4: mov          r5, r0
    //     0x3abdc8: ldur         r4, [fp, #-8]
    // 0x3abdcc: r0 = r5
    //     0x3abdcc: mov          r0, r5
    //     0x3abdd0: stur         r5, [fp, #-0x18]
    // 0x3abdd4: r2 = NULL
    //     0x3abdd4: mov          r2, NULL
    // 0x3abdd8: r1 = NULL
    //     0x3abdd8: mov          r1, NULL
    // 0x3abddc: branchIfSmi(r0, 0x3abe04)
    //     0x3abddc: tbz          r0, #0, 0x3abe04
    // 0x3abde0: r4 = LoadClassIdInstr(r0)
    //     0x3abde0: ldur         r4, [r0, #-1]
    //     0x3abde4: ubfx         r4, r4, #0xc, #0x14
    //     0x3abde8: sub          r4, r4, #0x3c
    //     0x3abdec: cmp          r4, #1
    // 0x3abdf0: b.ls 0x3abe04
    //     0x3abdf0: b.ls         0x3abe04
    // 0x3abdf4: r8 = pp[0xaf8]
    //     0x3abdf4: ldr          r8, [PP, #0xaf8]
    // 0x3abdf8: r3 = pp[0x4df]
    //     0x3abdf8: add          r3, PP, #0xf, lsl #12
    //     0x3abdfc: ldr          r3, [r3, #0x4d0]
    // 0x3abe00: r0 = call 0x62a9f8
    //     0x3abe00: bl           0x62a9f8
    //     0x3abe04: ldur         r0, [fp, #-0x18]
    //     0x3abe08: ldur         r3, [fp, #-8]
    // 0x3abe0c: StoreField: r3->field_7 = r0
    //     0x3abe0c: stur         r0, [r3, #7]
    // 0x3abe10: branchIfSmi(r0, 0x3abe2c)
    //     0x3abe10: tbz          r0, #0, 0x3abe2c
    //     0x3abe14: ldurb        r16, [r3, #-1]
    //     0x3abe18: ldurb        r17, [r0, #-1]
    //     0x3abe1c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3abe20: tst          BARRIER, HEAP, lsr #32
    // 0x3abe24: b.eq 0x3abe2c
    //     0x3abe24: b.eq         0x3abe2c
    // 0x3abe28: r0 = call 0x61e08c
    //     0x3abe28: bl           0x61e08c
    //     0x3abe2c: ldur         r1, [fp, #-0x10]
    // 0x3abe30: r2 = pp[0x4ef]
    //     0x3abe30: add          r2, PP, #0xf, lsl #12
    //     0x3abe34: ldr          r2, [r2, #0x4e0]
    // 0x3abe38: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData()
    //     0x3abe38: bl           0x61c9d0
    //     0x3abe3c: ldur         r3, [fp, #-0x10]
    // 0x3abe40: LoadField: r1 = r3->field_f
    //     0x3abe40: ldur         r1, [r3, #0xf]
    //     0x3abe44: add          r1, r1, HEAP, lsl #32
    //     0x3abe48: cmp          r1, r0
    // 0x3abe4c: b.ne 0x3abe54
    //     0x3abe4c: b.ne         0x3abe54
    // 0x3abe50: r0 = NULL
    //     0x3abe50: mov          r0, NULL
    //     0x3abe54: cmp          r0, r22
    // 0x3abe58: b.ne 0x3abe64
    //     0x3abe58: b.ne         0x3abe64
    // 0x3abe5c: r5 = pp[0x148]
    //     0x3abe5c: ldr          r5, [PP, #0x148]
    // 0x3abe60: b 0x3abe68
    //     0x3abe60: b            0x3abe68
    // 0x3abe64: r5 = r0
    //     0x3abe64: mov          r5, r0
    //     0x3abe68: ldur         r4, [fp, #-8]
    // 0x3abe6c: r0 = r5
    //     0x3abe6c: mov          r0, r5
    //     0x3abe70: stur         r5, [fp, #-0x18]
    // 0x3abe74: r2 = NULL
    //     0x3abe74: mov          r2, NULL
    // 0x3abe78: r1 = NULL
    //     0x3abe78: mov          r1, NULL
    //     0x3abe7c: mov          r4, #0x3c
    // 0x3abe80: branchIfSmi(r0, 0x3abe8c)
    //     0x3abe80: tbz          r0, #0, 0x3abe8c
    // 0x3abe84: r4 = LoadClassIdInstr(r0)
    //     0x3abe84: ldur         r4, [r0, #-1]
    //     0x3abe88: ubfx         r4, r4, #0xc, #0x14
    //     0x3abe8c: sub          r4, r4, #0x5e
    //     0x3abe90: cmp          r4, #1
    // 0x3abe94: b.ls 0x3abea8
    //     0x3abe94: b.ls         0x3abea8
    // 0x3abe98: r8 = pp[0xae0]
    //     0x3abe98: ldr          r8, [PP, #0xae0]
    // 0x3abe9c: r3 = pp[0x4f7]
    //     0x3abe9c: add          r3, PP, #0xf, lsl #12
    //     0x3abea0: ldr          r3, [r3, #0x4e8]
    // 0x3abea4: r0 = call 0x278d08
    //     0x3abea4: bl           0x278d08
    //     0x3abea8: ldur         r0, [fp, #-0x18]
    //     0x3abeac: ldur         r3, [fp, #-8]
    // 0x3abeb0: StoreField: r3->field_f = r0
    //     0x3abeb0: stur         r0, [r3, #0xf]
    //     0x3abeb4: ldurb        r16, [r3, #-1]
    //     0x3abeb8: ldurb        r17, [r0, #-1]
    //     0x3abebc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3abec0: tst          BARRIER, HEAP, lsr #32
    // 0x3abec4: b.eq 0x3abecc
    //     0x3abec4: b.eq         0x3abecc
    // 0x3abec8: r0 = call 0x61e08c
    //     0x3abec8: bl           0x61e08c
    //     0x3abecc: ldur         r1, [fp, #-0x10]
    // 0x3abed0: r2 = pp[0x1348]
    //     0x3abed0: ldr          r2, [PP, #0x1348]
    // 0x3abed4: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData()
    //     0x3abed4: bl           0x61c9d0
    // 0x3abed8: r1 = r0
    //     0x3abed8: mov          r1, r0
    //     0x3abedc: ldur         r0, [fp, #-0x10]
    // 0x3abee0: LoadField: r2 = r0->field_f
    //     0x3abee0: ldur         r2, [r0, #0xf]
    //     0x3abee4: add          r2, r2, HEAP, lsl #32
    //     0x3abee8: cmp          r2, r1
    // 0x3abeec: b.ne 0x3abef8
    //     0x3abeec: b.ne         0x3abef8
    // 0x3abef0: r0 = NULL
    //     0x3abef0: mov          r0, NULL
    // 0x3abef4: b 0x3abefc
    //     0x3abef4: b            0x3abefc
    // 0x3abef8: r0 = r1
    //     0x3abef8: mov          r0, r1
    //     0x3abefc: cmp          r0, r22
    // 0x3abf00: b.ne 0x3abf10
    //     0x3abf00: b.ne         0x3abf10
    // 0x3abf04: r4 = pp[0xe02]
    //     0x3abf04: add          r4, PP, #0xa, lsl #12
    //     0x3abf08: ldr          r4, [r4, #0xdf8]
    // 0x3abf0c: b 0x3abf14
    //     0x3abf0c: b            0x3abf14
    // 0x3abf10: r4 = r0
    //     0x3abf10: mov          r4, r0
    //     0x3abf14: ldur         r3, [fp, #-8]
    // 0x3abf18: r0 = r4
    //     0x3abf18: mov          r0, r4
    //     0x3abf1c: stur         r4, [fp, #-0x10]
    // 0x3abf20: r2 = NULL
    //     0x3abf20: mov          r2, NULL
    // 0x3abf24: r1 = NULL
    //     0x3abf24: mov          r1, NULL
    //     0x3abf28: mov          r4, #0x3c
    // 0x3abf2c: branchIfSmi(r0, 0x3abf38)
    //     0x3abf2c: tbz          r0, #0, 0x3abf38
    // 0x3abf30: r4 = LoadClassIdInstr(r0)
    //     0x3abf30: ldur         r4, [r0, #-1]
    //     0x3abf34: ubfx         r4, r4, #0xc, #0x14
    //     0x3abf38: sub          r4, r4, #0x5e
    //     0x3abf3c: cmp          r4, #1
    // 0x3abf40: b.ls 0x3abf54
    //     0x3abf40: b.ls         0x3abf54
    // 0x3abf44: r8 = pp[0x2f8]
    //     0x3abf44: ldr          r8, [PP, #0x2f8]
    // 0x3abf48: r3 = pp[0x507]
    //     0x3abf48: add          r3, PP, #0xf, lsl #12
    //     0x3abf4c: ldr          r3, [r3, #0x4f8]
    // 0x3abf50: r0 = call 0x62a0c0
    //     0x3abf50: bl           0x62a0c0
    //     0x3abf54: ldur         r1, [fp, #-0x10]
    // 0x3abf58: r0 = dart_convert_::jsonDecode()
    //     0x3abf58: bl           0x3ac138
    // 0x3abf5c: r3 = r0
    //     0x3abf5c: mov          r3, r0
    // 0x3abf60: r2 = NULL
    //     0x3abf60: mov          r2, NULL
    // 0x3abf64: r1 = NULL
    //     0x3abf64: mov          r1, NULL
    //     0x3abf68: stur         r3, [fp, #-0x10]
    // 0x3abf6c: r8 = pp[0x517]
    //     0x3abf6c: add          r8, PP, #0xf, lsl #12
    //     0x3abf70: ldr          r8, [r8, #0x508]
    // 0x3abf74: r3 = pp[0x51f]
    //     0x3abf74: add          r3, PP, #0xf, lsl #12
    //     0x3abf78: ldr          r3, [r3, #0x510]
    // 0x3abf7c: r0 = call 0x312aa0
    //     0x3abf7c: bl           0x312aa0
    //     0x3abf80: ldur         r0, [fp, #-0x10]
    //     0x3abf84: ldur         r1, [fp, #-8]
    // 0x3abf88: StoreField: r1->field_b = r0
    //     0x3abf88: stur         r0, [r1, #0xb]
    //     0x3abf8c: ldurb        r16, [r1, #-1]
    //     0x3abf90: ldurb        r17, [r0, #-1]
    //     0x3abf94: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3abf98: tst          BARRIER, HEAP, lsr #32
    // 0x3abf9c: b.eq 0x3abfa4
    //     0x3abf9c: b.eq         0x3abfa4
    // 0x3abfa0: r0 = call 0x61e04c
    //     0x3abfa0: bl           0x61e04c
    // 0x3abfa4: r0 = NULL
    //     0x3abfa4: mov          r0, NULL
    // 0x3abfa8: SP = fp
    //     0x3abfa8: mov          SP, fp
    // 0x3abfac: LeaveFrame
    //     0x3abfac: ldp          fp, lr, [SP], #0x10
    // 0x3abfb0: ret
    //     0x3abfb0: ret          
    // 0x3abfb4: r0 = call 0x61fa28
    //     0x3abfb4: bl           0x61fa28
    // 0x3abfb8: b 0x3abd90
    //     0x3abfb8: b            0x3abd90
  }

  toJson() {
    // ** addr: 0x3abfd4, size: 0x30
    // 0x3abfd4: EnterFrame
    //     0x3abfd4: stp          fp, lr, [SP, #-0x10]!
    //     0x3abfd8: mov          fp, SP
    // 0x3abfdc: CheckStackOverflow
    //     0x3abfdc: ldr          BARRIER, [THR, #0x38]
    //     0x3abfe0: cmp          SP, BARRIER
    //     0x3abfe4: b.ls         0x3abffc
    //     0x3abfe8: ldr          r1, [fp, #0x10]
    // 0x3abfec: r0 = soul_flutter_international$common$plugins$http_Response::toJson()
    //     0x3abfec: bl           0x3ac004
    // 0x3abff0: SP = fp
    //     0x3abff0: mov          SP, fp
    // 0x3abff4: LeaveFrame
    //     0x3abff4: ldp          fp, lr, [SP], #0x10
    // 0x3abff8: ret
    //     0x3abff8: ret          
    // 0x3abffc: r0 = call 0x61fa28
    //     0x3abffc: bl           0x61fa28
    // 0x3ac000: b 0x3abfe8
    //     0x3ac000: b            0x3abfe8
  }

  toJson() {
    // ** addr: 0x3ac004, size: 0x108
    // 0x3ac004: EnterFrame
    //     0x3ac004: stp          fp, lr, [SP, #-0x10]!
    //     0x3ac008: mov          fp, SP
    // 0x3ac00c: AllocStack(0x20)
    //     0x3ac00c: sub          SP, SP, #0x20
    // 0x3ac010: r0 = r1
    //     0x3ac010: mov          r0, r1
    //     0x3ac014: stur         r1, [fp, #-8]
    // 0x3ac018: CheckStackOverflow
    //     0x3ac018: ldr          BARRIER, [THR, #0x38]
    //     0x3ac01c: cmp          SP, BARRIER
    //     0x3ac020: b.ls         0x3ac104
    // 0x3ac024: r1 = pp[0xbf0]
    //     0x3ac024: ldr          r1, [PP, #0xbf0]
    // 0x3ac028: r0 = dart_core_Map::factory_ctor()
    //     0x3ac028: bl           0x28cd60
    // 0x3ac02c: r5 = r0
    //     0x3ac02c: mov          r5, r0
    //     0x3ac030: ldur         r4, [fp, #-8]
    //     0x3ac034: stur         r5, [fp, #-0x10]
    // 0x3ac038: LoadField: r0 = r4->field_7
    //     0x3ac038: ldur         r0, [r4, #7]
    //     0x3ac03c: add          r0, r0, HEAP, lsl #32
    //     0x3ac040: cmp          r0, r22
    // 0x3ac044: b.ne 0x3ac050
    //     0x3ac044: b.ne         0x3ac050
    //     0x3ac048: mov          r2, #-1
    // 0x3ac04c: b 0x3ac060
    //     0x3ac04c: b            0x3ac060
    //     0x3ac050: sbfx         r1, r0, #1, #0x1f
    // 0x3ac054: branchIfSmi(r0, 0x3ac05c)
    //     0x3ac054: tbz          r0, #0, 0x3ac05c
    // 0x3ac058: LoadField: r1 = r0->field_7
    //     0x3ac058: ldur         r1, [r0, #7]
    // 0x3ac05c: r2 = r1
    //     0x3ac05c: mov          r2, r1
    //     0x3ac060: sbfiz        r0, r2, #1, #0x1f
    //     0x3ac064: cmp          r2, r0, asr #1
    // 0x3ac068: b.eq 0x3ac074
    //     0x3ac068: b.eq         0x3ac074
    // 0x3ac06c: r0 = call 0x61fba8
    //     0x3ac06c: bl           0x61fba8
    // 0x3ac070: StoreField: r0->field_7 = r2
    //     0x3ac070: stur         r2, [r0, #7]
    // 0x3ac074: r1 = r5
    //     0x3ac074: mov          r1, r5
    // 0x3ac078: r3 = r0
    //     0x3ac078: mov          r3, r0
    // 0x3ac07c: r2 = pp[0x4828]
    //     0x3ac07c: ldr          r2, [PP, #0x4828]
    // 0x3ac080: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3ac080: bl           0x6164d4
    //     0x3ac084: ldur         r0, [fp, #-8]
    // 0x3ac088: LoadField: r1 = r0->field_b
    //     0x3ac088: ldur         r1, [r0, #0xb]
    //     0x3ac08c: add          r1, r1, HEAP, lsl #32
    //     0x3ac090: cmp          r1, r22
    // 0x3ac094: b.ne 0x3ac0b0
    //     0x3ac094: b.ne         0x3ac0b0
    // 0x3ac098: BARRIER = pp[0xbf0]
    //     0x3ac098: ldr          BARRIER, [PP, #0xbf0]
    //     0x3ac09c: ldr          lr, [THR, #0x90]
    //     0x3ac0a0: stp          lr, BARRIER, [SP]
    // 0x3ac0a4: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x3ac0a4: bl           0x27c0c8
    // 0x3ac0a8: r3 = r0
    //     0x3ac0a8: mov          r3, r0
    // 0x3ac0ac: b 0x3ac0b4
    //     0x3ac0ac: b            0x3ac0b4
    // 0x3ac0b0: r3 = r1
    //     0x3ac0b0: mov          r3, r1
    //     0x3ac0b4: ldur         r0, [fp, #-8]
    //     0x3ac0b8: ldur         r1, [fp, #-0x10]
    // 0x3ac0bc: r2 = pp[0x1348]
    //     0x3ac0bc: ldr          r2, [PP, #0x1348]
    // 0x3ac0c0: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3ac0c0: bl           0x6164d4
    //     0x3ac0c4: ldur         r0, [fp, #-8]
    // 0x3ac0c8: LoadField: r1 = r0->field_f
    //     0x3ac0c8: ldur         r1, [r0, #0xf]
    //     0x3ac0cc: add          r1, r1, HEAP, lsl #32
    //     0x3ac0d0: cmp          r1, r22
    // 0x3ac0d4: b.ne 0x3ac0e0
    //     0x3ac0d4: b.ne         0x3ac0e0
    // 0x3ac0d8: r3 = pp[0x148]
    //     0x3ac0d8: ldr          r3, [PP, #0x148]
    // 0x3ac0dc: b 0x3ac0e4
    //     0x3ac0dc: b            0x3ac0e4
    // 0x3ac0e0: r3 = r1
    //     0x3ac0e0: mov          r3, r1
    //     0x3ac0e4: ldur         r1, [fp, #-0x10]
    // 0x3ac0e8: r2 = pp[0x4ef]
    //     0x3ac0e8: add          r2, PP, #0xf, lsl #12
    //     0x3ac0ec: ldr          r2, [r2, #0x4e0]
    // 0x3ac0f0: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3ac0f0: bl           0x6164d4
    //     0x3ac0f4: ldur         r0, [fp, #-0x10]
    // 0x3ac0f8: SP = fp
    //     0x3ac0f8: mov          SP, fp
    // 0x3ac0fc: LeaveFrame
    //     0x3ac0fc: ldp          fp, lr, [SP], #0x10
    // 0x3ac100: ret
    //     0x3ac100: ret          
    // 0x3ac104: r0 = call 0x61fa28
    //     0x3ac104: bl           0x61fa28
    // 0x3ac108: b 0x3ac024
    //     0x3ac108: b            0x3ac024
  }

  _soulNetError() {
    // ** addr: 0x3ac598, size: 0x24
    // 0x3ac598: EnterFrame
    //     0x3ac598: stp          fp, lr, [SP, #-0x10]!
    //     0x3ac59c: mov          fp, SP
    // 0x3ac5a0: r1 = pp[0x45f]
    //     0x3ac5a0: add          r1, PP, #0xf, lsl #12
    //     0x3ac5a4: ldr          r1, [r1, #0x450]
    // 0x3ac5a8: r2 = NULL
    //     0x3ac5a8: mov          r2, NULL
    // 0x3ac5ac: r0 = call 0x61ec54
    //     0x3ac5ac: bl           0x61ec54
    // 0x3ac5b0: SP = fp
    //     0x3ac5b0: mov          SP, fp
    // 0x3ac5b4: LeaveFrame
    //     0x3ac5b4: ldp          fp, lr, [SP], #0x10
    // 0x3ac5b8: ret
    //     0x3ac5b8: ret          
  }

  _anon_closure() {
    // ** addr: 0x3ac5bc, size: 0x90
    // 0x3ac5bc: EnterFrame
    //     0x3ac5bc: stp          fp, lr, [SP, #-0x10]!
    //     0x3ac5c0: mov          fp, SP
    // 0x3ac5c4: CheckStackOverflow
    //     0x3ac5c4: ldr          BARRIER, [THR, #0x38]
    //     0x3ac5c8: cmp          SP, BARRIER
    //     0x3ac5cc: b.ls         0x3ac644
    //     0x3ac5d0: ldr          r0, [fp, #0x18]
    //     0x3ac5d4: cmp          r0, r22
    // 0x3ac5d8: b.eq 0x3ac5ec
    //     0x3ac5d8: b.eq         0x3ac5ec
    //     0x3ac5dc: sbfx         r1, r0, #1, #0x1f
    // 0x3ac5e0: branchIfSmi(r0, 0x3ac5e8)
    //     0x3ac5e0: tbz          r0, #0, 0x3ac5e8
    // 0x3ac5e4: LoadField: r1 = r0->field_7
    //     0x3ac5e4: ldur         r1, [r0, #7]
    //     0x3ac5e8: tbz          r1, #0x3f, 0x3ac604
    // 0x3ac5ec: r1 = pp[0xb5c]
    //     0x3ac5ec: add          r1, PP, #0xc, lsl #12
    //     0x3ac5f0: ldr          r1, [r1, #0xb50]
    // 0x3ac5f4: r4 = pp[0x4c0]
    //     0x3ac5f4: ldr          r4, [PP, #0x4c0]
    // 0x3ac5f8: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3ac5f8: bl           0x3a1dcc
    // 0x3ac5fc: r1 = r0
    //     0x3ac5fc: mov          r1, r0
    // 0x3ac600: b 0x3ac62c
    //     0x3ac600: b            0x3ac62c
    //     0x3ac604: ldr          r0, [fp, #0x10]
    //     0x3ac608: cmp          r0, r22
    // 0x3ac60c: b.eq 0x3ac618
    //     0x3ac60c: b.eq         0x3ac618
    // 0x3ac610: LoadField: r1 = r0->field_7
    //     0x3ac610: ldur         r1, [r0, #7]
    //     0x3ac614: cbnz         r1, 0x3ac628
    // 0x3ac618: r1 = pp[0xb5c]
    //     0x3ac618: add          r1, PP, #0xc, lsl #12
    //     0x3ac61c: ldr          r1, [r1, #0xb50]
    // 0x3ac620: r4 = pp[0x4c0]
    //     0x3ac620: ldr          r4, [PP, #0x4c0]
    // 0x3ac624: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3ac624: bl           0x3a1dcc
    // 0x3ac628: r1 = r0
    //     0x3ac628: mov          r1, r0
    // 0x3ac62c: r4 = pp[0x4c0]
    //     0x3ac62c: ldr          r4, [PP, #0x4c0]
    // 0x3ac630: r0 = soul_flutter_international$common$plugins$native_dialog_NativeDialog::toast()
    //     0x3ac630: bl           0x3ac64c
    // 0x3ac634: r0 = NULL
    //     0x3ac634: mov          r0, NULL
    // 0x3ac638: SP = fp
    //     0x3ac638: mov          SP, fp
    // 0x3ac63c: LeaveFrame
    //     0x3ac63c: ldp          fp, lr, [SP], #0x10
    // 0x3ac640: ret
    //     0x3ac640: ret          
    // 0x3ac644: r0 = call 0x61fa28
    //     0x3ac644: bl           0x61fa28
    // 0x3ac648: b 0x3ac5d0
    //     0x3ac648: b            0x3ac5d0
  }
