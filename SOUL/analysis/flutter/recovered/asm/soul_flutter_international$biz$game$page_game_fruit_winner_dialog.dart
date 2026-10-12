// lib: , url: soul_flutter_international$biz$game$page_game_fruit_winner_dialog


  build() {
    // ** addr: 0x439990, size: 0xb8
    // 0x439990: EnterFrame
    //     0x439990: stp          fp, lr, [SP, #-0x10]!
    //     0x439994: mov          fp, SP
    // 0x439998: AllocStack(0x18)
    //     0x439998: sub          SP, SP, #0x18
    //     0x43999c: stur         r1, [fp, #-8]
    // 0x4399a0: CheckStackOverflow
    //     0x4399a0: ldr          BARRIER, [THR, #0x38]
    //     0x4399a4: cmp          SP, BARRIER
    //     0x4399a8: b.ls         0x439a40
    //     0x4399ac: mov          r1, #1
    // 0x4399b0: r0 = call 0x61e890
    //     0x4399b0: bl           0x61e890
    // 0x4399b4: r1 = r0
    //     0x4399b4: mov          r1, r0
    //     0x4399b8: ldur         r0, [fp, #-8]
    // 0x4399bc: StoreField: r1->field_f = r0
    //     0x4399bc: stur         r0, [r1, #0xf]
    // 0x4399c0: LoadField: r3 = r0->field_13
    //     0x4399c0: ldur         r3, [r0, #0x13]
    //     0x4399c4: add          r3, r3, HEAP, lsl #32
    // 0x4399c8: r2 = r1
    //     0x4399c8: mov          r2, r1
    //     0x4399cc: stur         r3, [fp, #-0x10]
    // 0x4399d0: r1 = pp[0x4ed]
    //     0x4399d0: add          r1, PP, #0x15, lsl #12
    //     0x4399d4: ldr          r1, [r1, #0x4d8]
    // 0x4399d8: r0 = call 0x61ec54
    //     0x4399d8: bl           0x61ec54
    // 0x4399dc: r1 = pp[0x4f5]
    //     0x4399dc: add          r1, PP, #0x15, lsl #12
    //     0x4399e0: ldr          r1, [r1, #0x4e0]
    //     0x4399e4: stur         r0, [fp, #-8]
    // 0x4399e8: r0 = call 0x3b81c4
    //     0x4399e8: bl           0x3b81c4
    // 0x4399ec: r2 = r0
    //     0x4399ec: mov          r2, r0
    //     0x4399f0: ldur         r0, [fp, #-8]
    //     0x4399f4: stur         r2, [fp, #-0x18]
    // 0x4399f8: StoreField: r2->field_1b = r0
    //     0x4399f8: stur         r0, [r2, #0x1b]
    // 0x4399fc: r1 = pp[0x4f5]
    //     0x4399fc: add          r1, PP, #0x15, lsl #12
    //     0x439a00: ldr          r1, [r1, #0x4e0]
    // 0x439a04: r0 = call 0x41a408
    //     0x439a04: bl           0x41a408
    // 0x439a08: r1 = r0
    //     0x439a08: mov          r1, r0
    //     0x439a0c: ldur         r0, [fp, #-0x10]
    // 0x439a10: StoreField: r1->field_b = r0
    //     0x439a10: stur         r0, [r1, #0xb]
    // 0x439a14: r0 = pp[0x2fc]
    //     0x439a14: add          r0, PP, #0xc, lsl #12
    //     0x439a18: ldr          r0, [r0, #0x2f0]
    // 0x439a1c: StoreField: r1->field_13 = r0
    //     0x439a1c: stur         r0, [r1, #0x13]
    //     0x439a20: ldur         r0, [fp, #-0x18]
    // 0x439a24: StoreField: r0->field_13 = r1
    //     0x439a24: stur         r1, [r0, #0x13]
    // 0x439a28: r1 = r0
    //     0x439a28: mov          r1, r0
    // 0x439a2c: r0 = dart_async__RootZone::op_at()
    //     0x439a2c: bl           0x60bd34
    //     0x439a30: ldur         r0, [fp, #-0x18]
    // 0x439a34: SP = fp
    //     0x439a34: mov          SP, fp
    // 0x439a38: LeaveFrame
    //     0x439a38: ldp          fp, lr, [SP], #0x10
    // 0x439a3c: ret
    //     0x439a3c: ret          
    // 0x439a40: r0 = call 0x61fa28
    //     0x439a40: bl           0x61fa28
    // 0x439a44: b 0x4399ac
    //     0x439a44: b            0x4399ac
  }

  _anon_closure() {
    // ** addr: 0x439a88, size: 0x48
    // 0x439a88: EnterFrame
    //     0x439a88: stp          fp, lr, [SP, #-0x10]!
    //     0x439a8c: mov          fp, SP
    // 0x439a90: AllocStack(8)
    //     0x439a90: sub          SP, SP, #8
    //     0x439a94: ldr          r0, [fp, #0x20]
    // 0x439a98: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x439a98: ldur         r2, [r0, #0x17]
    //     0x439a9c: add          r2, r2, HEAP, lsl #32
    // 0x439aa0: r1 = pp[0x4fd]
    //     0x439aa0: add          r1, PP, #0x15, lsl #12
    //     0x439aa4: ldr          r1, [r1, #0x4e8]
    // 0x439aa8: r0 = call 0x61ec54
    //     0x439aa8: bl           0x61ec54
    // 0x439aac: r1 = pp[0x4f5]
    //     0x439aac: add          r1, PP, #0x15, lsl #12
    //     0x439ab0: ldr          r1, [r1, #0x4e0]
    //     0x439ab4: stur         r0, [fp, #-8]
    // 0x439ab8: r0 = call 0x41a414
    //     0x439ab8: bl           0x41a414
    //     0x439abc: ldur         r1, [fp, #-8]
    // 0x439ac0: StoreField: r0->field_13 = r1
    //     0x439ac0: stur         r1, [r0, #0x13]
    // 0x439ac4: SP = fp
    //     0x439ac4: mov          SP, fp
    // 0x439ac8: LeaveFrame
    //     0x439ac8: ldp          fp, lr, [SP], #0x10
    // 0x439acc: ret
    //     0x439acc: ret          
  }

  _anon_closure() {
    // ** addr: 0x439ad0, size: 0x68
    // 0x439ad0: EnterFrame
    //     0x439ad0: stp          fp, lr, [SP, #-0x10]!
    //     0x439ad4: mov          fp, SP
    //     0x439ad8: ldr          r0, [fp, #0x28]
    // 0x439adc: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x439adc: ldur         r1, [r0, #0x17]
    //     0x439ae0: add          r1, r1, HEAP, lsl #32
    // 0x439ae4: CheckStackOverflow
    //     0x439ae4: ldr          BARRIER, [THR, #0x38]
    //     0x439ae8: cmp          SP, BARRIER
    //     0x439aec: b.ls         0x439b2c
    // 0x439af0: LoadField: r0 = r1->field_f
    //     0x439af0: ldur         r0, [r1, #0xf]
    //     0x439af4: add          r0, r0, HEAP, lsl #32
    // 0x439af8: LoadField: r1 = r0->field_b
    //     0x439af8: ldur         r1, [r0, #0xb]
    //     0x439afc: add          r1, r1, HEAP, lsl #32
    //     0x439b00: cmp          r1, r22
    // 0x439b04: b.eq 0x439b34
    //     0x439b04: b.eq         0x439b34
    // 0x439b08: LoadField: r5 = r1->field_13
    //     0x439b08: ldur         r5, [r1, #0x13]
    //     0x439b0c: add          r5, r5, HEAP, lsl #32
    // 0x439b10: LoadField: r2 = r1->field_b
    //     0x439b10: ldur         r2, [r1, #0xb]
    // 0x439b14: r1 = r0
    //     0x439b14: mov          r1, r0
    //     0x439b18: ldr          r3, [fp, #0x18]
    // 0x439b1c: r0 = soul_flutter_international$biz$game$page_game_fruit_winner_dialog__GameFruitWinnerDialogState::_winnerDialogWidget()
    //     0x439b1c: bl           0x439b38
    // 0x439b20: SP = fp
    //     0x439b20: mov          SP, fp
    // 0x439b24: LeaveFrame
    //     0x439b24: ldp          fp, lr, [SP], #0x10
    // 0x439b28: ret
    //     0x439b28: ret          
    // 0x439b2c: r0 = call 0x61fa28
    //     0x439b2c: bl           0x61fa28
    // 0x439b30: b 0x439af0
    //     0x439b30: b            0x439af0
    // 0x439b34: r0 = call 0x61ffd0
    //     0x439b34: bl           0x61ffd0
  }

  _winnerDialogWidget() {
    // ** addr: 0x439b38, size: 0x150c
    // 0x439b38: EnterFrame
    //     0x439b38: stp          fp, lr, [SP, #-0x10]!
    //     0x439b3c: mov          fp, SP
    // 0x439b40: AllocStack(0x98)
    //     0x439b40: sub          SP, SP, #0x98
    //     0x439b44: stur         r1, [fp, #-8]
    //     0x439b48: stur         r2, [fp, #-0x10]
    //     0x439b4c: stur         r3, [fp, #-0x18]
    //     0x439b50: stur         r5, [fp, #-0x20]
    // 0x439b54: CheckStackOverflow
    //     0x439b54: ldr          BARRIER, [THR, #0x38]
    //     0x439b58: cmp          SP, BARRIER
    //     0x439b5c: b.ls         0x43b024
    //     0x439b60: mov          r1, #1
    // 0x439b64: r0 = call 0x61e890
    //     0x439b64: bl           0x61e890
    // 0x439b68: r3 = r0
    //     0x439b68: mov          r3, r0
    //     0x439b6c: ldur         r0, [fp, #-8]
    //     0x439b70: stur         r3, [fp, #-0x28]
    // 0x439b74: StoreField: r3->field_f = r0
    //     0x439b74: stur         r0, [r3, #0xf]
    //     0x439b78: ldur         r1, [fp, #-0x20]
    //     0x439b7c: cmp          r1, r22
    // 0x439b80: b.ne 0x439b98
    //     0x439b80: b.ne         0x439b98
    //     0x439b84: ldur         r1, [fp, #-0x18]
    // 0x439b88: LoadField: r2 = r1->field_2f
    //     0x439b88: ldur         r2, [r1, #0x2f]
    //     0x439b8c: add          r2, r2, HEAP, lsl #32
    // 0x439b90: r4 = r2
    //     0x439b90: mov          r4, r2
    // 0x439b94: b 0x439b9c
    //     0x439b94: b            0x439b9c
    // 0x439b98: r4 = r1
    //     0x439b98: mov          r4, r1
    //     0x439b9c: stur         r4, [fp, #-0x18]
    // 0x439ba0: LoadField: r1 = r4->field_f
    //     0x439ba0: ldur         r1, [r4, #0xf]
    //     0x439ba4: add          r1, r1, HEAP, lsl #32
    //     0x439ba8: cmp          r1, r22
    // 0x439bac: b.ne 0x439bc8
    //     0x439bac: b.ne         0x439bc8
    // 0x439bb0: r1 = pp[0xcf9]
    //     0x439bb0: add          r1, PP, #0x11, lsl #12
    //     0x439bb4: ldr          r1, [r1, #0xce8]
    //     0x439bb8: mov          r2, #0
    // 0x439bbc: r0 = dart_core__GrowableList::factory_ctor()
    //     0x439bbc: bl           0x277268
    // 0x439bc0: r2 = r0
    //     0x439bc0: mov          r2, r0
    // 0x439bc4: b 0x439bcc
    //     0x439bc4: b            0x439bcc
    // 0x439bc8: r2 = r1
    //     0x439bc8: mov          r2, r1
    // 0x439bcc: LoadField: r0 = r2->field_b
    //     0x439bcc: ldur         r0, [r2, #0xb]
    //     0x439bd0: sbfx         r3, r0, #1, #0x1f
    //     0x439bd4: stur         r3, [fp, #-0x40]
    //     0x439bd8: cmp          r3, #1
    // 0x439bdc: b.ne 0x439c10
    //     0x439bdc: b.ne         0x439c10
    // 0x439be0: r0 = r3
    //     0x439be0: mov          r0, r3
    //     0x439be4: mov          r1, #0
    //     0x439be8: cmp          r1, r0
    // 0x439bec: b.hs 0x43b02c
    //     0x439bec: b.hs         0x43b02c
    // 0x439bf0: LoadField: r0 = r2->field_f
    //     0x439bf0: ldur         r0, [r2, #0xf]
    //     0x439bf4: add          r0, r0, HEAP, lsl #32
    // 0x439bf8: LoadField: r1 = r0->field_f
    //     0x439bf8: ldur         r1, [r0, #0xf]
    //     0x439bfc: add          r1, r1, HEAP, lsl #32
    // 0x439c00: r7 = r1
    //     0x439c00: mov          r7, r1
    // 0x439c04: r6 = NULL
    //     0x439c04: mov          r6, NULL
    // 0x439c08: r5 = NULL
    //     0x439c08: mov          r5, NULL
    // 0x439c0c: b 0x439cd4
    //     0x439c0c: b            0x439cd4
    //     0x439c10: cmp          r3, #2
    // 0x439c14: b.ne 0x439c5c
    //     0x439c14: b.ne         0x439c5c
    // 0x439c18: r0 = r3
    //     0x439c18: mov          r0, r3
    //     0x439c1c: mov          r1, #0
    //     0x439c20: cmp          r1, r0
    // 0x439c24: b.hs 0x43b030
    //     0x439c24: b.hs         0x43b030
    // 0x439c28: LoadField: r4 = r2->field_f
    //     0x439c28: ldur         r4, [r2, #0xf]
    //     0x439c2c: add          r4, r4, HEAP, lsl #32
    // 0x439c30: LoadField: r2 = r4->field_f
    //     0x439c30: ldur         r2, [r4, #0xf]
    //     0x439c34: add          r2, r2, HEAP, lsl #32
    // 0x439c38: r0 = r3
    //     0x439c38: mov          r0, r3
    //     0x439c3c: mov          r1, #1
    //     0x439c40: cmp          r1, r0
    // 0x439c44: b.hs 0x43b034
    //     0x439c44: b.hs         0x43b034
    // 0x439c48: LoadField: r0 = r4->field_13
    //     0x439c48: ldur         r0, [r4, #0x13]
    //     0x439c4c: add          r0, r0, HEAP, lsl #32
    // 0x439c50: r1 = r0
    //     0x439c50: mov          r1, r0
    // 0x439c54: r0 = NULL
    //     0x439c54: mov          r0, NULL
    // 0x439c58: b 0x439cc8
    //     0x439c58: b            0x439cc8
    //     0x439c5c: cmp          r3, #3
    // 0x439c60: b.ne 0x439cbc
    //     0x439c60: b.ne         0x439cbc
    // 0x439c64: r0 = r3
    //     0x439c64: mov          r0, r3
    //     0x439c68: mov          r1, #0
    //     0x439c6c: cmp          r1, r0
    // 0x439c70: b.hs 0x43b038
    //     0x439c70: b.hs         0x43b038
    // 0x439c74: LoadField: r4 = r2->field_f
    //     0x439c74: ldur         r4, [r2, #0xf]
    //     0x439c78: add          r4, r4, HEAP, lsl #32
    // 0x439c7c: LoadField: r2 = r4->field_f
    //     0x439c7c: ldur         r2, [r4, #0xf]
    //     0x439c80: add          r2, r2, HEAP, lsl #32
    // 0x439c84: r0 = r3
    //     0x439c84: mov          r0, r3
    //     0x439c88: mov          r1, #1
    //     0x439c8c: cmp          r1, r0
    // 0x439c90: b.hs 0x43b03c
    //     0x439c90: b.hs         0x43b03c
    // 0x439c94: LoadField: r5 = r4->field_13
    //     0x439c94: ldur         r5, [r4, #0x13]
    //     0x439c98: add          r5, r5, HEAP, lsl #32
    // 0x439c9c: r0 = r3
    //     0x439c9c: mov          r0, r3
    //     0x439ca0: mov          r1, #2
    //     0x439ca4: cmp          r1, r0
    // 0x439ca8: b.hs 0x43b040
    //     0x439ca8: b.hs         0x43b040
    // 0x439cac: ArrayLoad: r0 = r4[0]  ; List_8
    //     0x439cac: ldur         r0, [r4, #0x17]
    //     0x439cb0: add          r0, r0, HEAP, lsl #32
    // 0x439cb4: r1 = r5
    //     0x439cb4: mov          r1, r5
    // 0x439cb8: b 0x439cc8
    //     0x439cb8: b            0x439cc8
    // 0x439cbc: r2 = NULL
    //     0x439cbc: mov          r2, NULL
    // 0x439cc0: r1 = NULL
    //     0x439cc0: mov          r1, NULL
    // 0x439cc4: r0 = NULL
    //     0x439cc4: mov          r0, NULL
    // 0x439cc8: r7 = r2
    //     0x439cc8: mov          r7, r2
    // 0x439ccc: r6 = r1
    //     0x439ccc: mov          r6, r1
    // 0x439cd0: r5 = r0
    //     0x439cd0: mov          r5, r0
    //     0x439cd4: ldur         r4, [fp, #-0x10]
    //     0x439cd8: ldur         r2, [fp, #-0x18]
    //     0x439cdc: stur         r7, [fp, #-0x20]
    //     0x439ce0: stur         r6, [fp, #-0x30]
    //     0x439ce4: stur         r5, [fp, #-0x38]
    //     0x439ce8: sbfiz        r0, r4, #1, #0x1f
    //     0x439cec: cmp          r4, r0, asr #1
    // 0x439cf0: b.eq 0x439cfc
    //     0x439cf0: b.eq         0x439cfc
    // 0x439cf4: r0 = call 0x61fba8
    //     0x439cf4: bl           0x61fba8
    // 0x439cf8: StoreField: r0->field_7 = r4
    //     0x439cf8: stur         r4, [r0, #7]
    //     0x439cfc: mov          r1, #0x3c
    // 0x439d00: branchIfSmi(r0, 0x439d0c)
    //     0x439d00: tbz          r0, #0, 0x439d0c
    // 0x439d04: r1 = LoadClassIdInstr(r0)
    //     0x439d04: ldur         r1, [r0, #-1]
    //     0x439d08: ubfx         r1, r1, #0xc, #0x14
    //     0x439d0c: str          r0, [SP]
    // 0x439d10: r0 = r1
    //     0x439d10: mov          r0, r1
    // 0x439d14: r4 = pp[0x3a8]
    //     0x439d14: ldr          r4, [PP, #0x3a8]
    //     0x439d18: mov          r17, #0x3e07
    //     0x439d1c: add          lr, r0, r17
    //     0x439d20: ldr          lr, [r21, lr, lsl #3]
    // 0x439d24: r0 = [R]()
    //     0x439d24: blr          lr
    // 0x439d28: r1 = r0
    //     0x439d28: mov          r1, r0
    //     0x439d2c: ldur         r0, [fp, #-0x18]
    //     0x439d30: stur         r1, [fp, #-0x58]
    // 0x439d34: LoadField: r2 = r0->field_13
    //     0x439d34: ldur         r2, [r0, #0x13]
    //     0x439d38: add          r2, r2, HEAP, lsl #32
    //     0x439d3c: cmp          r2, r22
    // 0x439d40: b.ne 0x439d4c
    //     0x439d40: b.ne         0x439d4c
    // 0x439d44: r3 = NULL
    //     0x439d44: mov          r3, NULL
    // 0x439d48: b 0x439d54
    //     0x439d48: b            0x439d54
    // 0x439d4c: LoadField: r3 = r2->field_7
    //     0x439d4c: ldur         r3, [r2, #7]
    //     0x439d50: add          r3, r3, HEAP, lsl #32
    //     0x439d54: cmp          r3, r22
    // 0x439d58: b.ne 0x439d60
    //     0x439d58: b.ne         0x439d60
    // 0x439d5c: r3 = pp[0x148]
    //     0x439d5c: ldr          r3, [PP, #0x148]
    //     0x439d60: stur         r3, [fp, #-0x50]
    //     0x439d64: cmp          r2, r22
    // 0x439d68: b.ne 0x439d74
    //     0x439d68: b.ne         0x439d74
    // 0x439d6c: r2 = NULL
    //     0x439d6c: mov          r2, NULL
    // 0x439d70: b 0x439d80
    //     0x439d70: b            0x439d80
    // 0x439d74: LoadField: r4 = r2->field_f
    //     0x439d74: ldur         r4, [r2, #0xf]
    //     0x439d78: add          r4, r4, HEAP, lsl #32
    // 0x439d7c: r2 = r4
    //     0x439d7c: mov          r2, r4
    //     0x439d80: cmp          r2, r22
    // 0x439d84: b.ne 0x439d8c
    //     0x439d84: b.ne         0x439d8c
    // 0x439d88: r2 = pp[0x148]
    //     0x439d88: ldr          r2, [PP, #0x148]
    //     0x439d8c: stur         r2, [fp, #-0x48]
    // 0x439d90: r0 = call 0x2e3578
    //     0x439d90: bl           0x2e3578
    //     0x439d94: fmov         d0, #12.00000000
    //     0x439d98: stur         r0, [fp, #-0x60]
    // 0x439d9c: StoreField: r0->field_7 = d0
    //     0x439d9c: stur         d0, [r0, #7]
    //     0x439da0: fmov         d1, #6.00000000
    // 0x439da4: StoreField: r0->field_f = d1
    //     0x439da4: stur         d1, [r0, #0xf]
    // 0x439da8: ArrayStore: r0[0] = d0  ; List_8
    //     0x439da8: stur         d0, [r0, #0x17]
    // 0x439dac: StoreField: r0->field_1f = xzr
    //     0x439dac: stur         xzr, [r0, #0x1f]
    // 0x439db0: r0 = call 0x352b04
    //     0x439db0: bl           0x352b04
    //     0x439db4: fmov         d0, #8.00000000
    //     0x439db8: stur         r0, [fp, #-0x68]
    // 0x439dbc: StoreField: r0->field_7 = d0
    //     0x439dbc: stur         d0, [r0, #7]
    // 0x439dc0: StoreField: r0->field_f = d0
    //     0x439dc0: stur         d0, [r0, #0xf]
    // 0x439dc4: r0 = call 0x392f28
    //     0x439dc4: bl           0x392f28
    // 0x439dc8: r1 = r0
    //     0x439dc8: mov          r1, r0
    //     0x439dcc: ldur         r0, [fp, #-0x68]
    //     0x439dd0: stur         r1, [fp, #-0x70]
    // 0x439dd4: StoreField: r1->field_7 = r0
    //     0x439dd4: stur         r0, [r1, #7]
    // 0x439dd8: StoreField: r1->field_b = r0
    //     0x439dd8: stur         r0, [r1, #0xb]
    // 0x439ddc: StoreField: r1->field_f = r0
    //     0x439ddc: stur         r0, [r1, #0xf]
    // 0x439de0: StoreField: r1->field_13 = r0
    //     0x439de0: stur         r0, [r1, #0x13]
    // 0x439de4: r0 = call 0x31d844
    //     0x439de4: bl           0x31d844
    // 0x439de8: r1 = r0
    //     0x439de8: mov          r1, r0
    // 0x439dec: r0 = pp[0x6310]
    //     0x439dec: ldr          r0, [PP, #0x6310]
    //     0x439df0: stur         r1, [fp, #-0x68]
    // 0x439df4: StoreField: r1->field_27 = r0
    //     0x439df4: stur         r0, [r1, #0x27]
    //     0x439df8: fmov         d0, #1.00000000
    // 0x439dfc: StoreField: r1->field_7 = d0
    //     0x439dfc: stur         d0, [r1, #7]
    // 0x439e00: d1 = pp[0x4b5]
    //     0x439e00: add          r17, PP, #0x15, lsl #12
    //     0x439e04: ldr          d1, [r17, #0x4a0]
    // 0x439e08: StoreField: r1->field_f = d1
    //     0x439e08: stur         d1, [r1, #0xf]
    // 0x439e0c: ArrayStore: r1[0] = xzr  ; List_8
    //     0x439e0c: stur         xzr, [r1, #0x17]
    // 0x439e10: d1 = pp[0x4bd]
    //     0x439e10: add          r17, PP, #0x15, lsl #12
    //     0x439e14: ldr          d1, [r17, #0x4a8]
    // 0x439e18: StoreField: r1->field_1f = d1
    //     0x439e18: stur         d1, [r1, #0x1f]
    // 0x439e1c: r0 = call 0x391dd8
    //     0x439e1c: bl           0x391dd8
    // 0x439e20: r3 = r0
    //     0x439e20: mov          r3, r0
    //     0x439e24: ldur         r0, [fp, #-0x68]
    //     0x439e28: stur         r3, [fp, #-0x78]
    // 0x439e2c: StoreField: r3->field_7 = r0
    //     0x439e2c: stur         r0, [r3, #7]
    //     0x439e30: ldur         r0, [fp, #-0x70]
    // 0x439e34: StoreField: r3->field_13 = r0
    //     0x439e34: stur         r0, [r3, #0x13]
    // 0x439e38: r0 = pp[0xb86]
    //     0x439e38: add          r0, PP, #0xe, lsl #12
    //     0x439e3c: ldr          r0, [r0, #0xb78]
    // 0x439e40: StoreField: r3->field_23 = r0
    //     0x439e40: stur         r0, [r3, #0x23]
    // 0x439e44: r1 = NULL
    //     0x439e44: mov          r1, NULL
    //     0x439e48: mov          r2, #2
    // 0x439e4c: r0 = call 0x61f920
    //     0x439e4c: bl           0x61f920
    // 0x439e50: r2 = r0
    //     0x439e50: mov          r2, r0
    //     0x439e54: ldur         r0, [fp, #-0x58]
    //     0x439e58: stur         r2, [fp, #-0x68]
    // 0x439e5c: StoreField: r2->field_f = r0
    //     0x439e5c: stur         r0, [r2, #0xf]
    // 0x439e60: r1 = pp[0x868]
    //     0x439e60: ldr          r1, [PP, #0x868]
    // 0x439e64: r0 = call 0x61e854
    //     0x439e64: bl           0x61e854
    // 0x439e68: r1 = r0
    //     0x439e68: mov          r1, r0
    //     0x439e6c: ldur         r0, [fp, #-0x68]
    // 0x439e70: StoreField: r1->field_f = r0
    //     0x439e70: stur         r0, [r1, #0xf]
    //     0x439e74: mov          r2, #2
    // 0x439e78: StoreField: r1->field_b = r2
    //     0x439e78: stur         r2, [r1, #0xb]
    //     0x439e7c: str          r1, [SP]
    // 0x439e80: r1 = pp[0x8ec]
    //     0x439e80: add          r1, PP, #0xc, lsl #12
    //     0x439e84: ldr          r1, [r1, #0x8e0]
    // 0x439e88: r4 = pp[0xf2f]
    //     0x439e88: add          r4, PP, #0xf, lsl #12
    //     0x439e8c: ldr          r4, [r4, #0xf20]
    // 0x439e90: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x439e90: bl           0x3a1dcc
    //     0x439e94: stur         r0, [fp, #-0x58]
    // 0x439e98: r0 = call 0x31abec
    //     0x439e98: bl           0x31abec
    // 0x439e9c: r1 = r0
    //     0x439e9c: mov          r1, r0
    //     0x439ea0: add          r0, NULL, #0x20
    //     0x439ea4: stur         r1, [fp, #-0x68]
    // 0x439ea8: StoreField: r1->field_7 = r0
    //     0x439ea8: stur         r0, [r1, #7]
    // 0x439eac: r2 = pp[0x6050]
    //     0x439eac: ldr          r2, [PP, #0x6050]
    // 0x439eb0: StoreField: r1->field_b = r2
    //     0x439eb0: stur         r2, [r1, #0xb]
    // 0x439eb4: r3 = pp[0x217]
    //     0x439eb4: add          r3, PP, #0xf, lsl #12
    //     0x439eb8: ldr          r3, [r3, #0x208]
    // 0x439ebc: StoreField: r1->field_1f = r3
    //     0x439ebc: stur         r3, [r1, #0x1f]
    // 0x439ec0: r0 = call 0x393bf8
    //     0x439ec0: bl           0x393bf8
    // 0x439ec4: r1 = r0
    //     0x439ec4: mov          r1, r0
    //     0x439ec8: ldur         r0, [fp, #-0x58]
    //     0x439ecc: stur         r1, [fp, #-0x70]
    // 0x439ed0: StoreField: r1->field_b = r0
    //     0x439ed0: stur         r0, [r1, #0xb]
    //     0x439ed4: ldur         r0, [fp, #-0x68]
    // 0x439ed8: StoreField: r1->field_13 = r0
    //     0x439ed8: stur         r0, [r1, #0x13]
    // 0x439edc: r0 = call 0x391a04
    //     0x439edc: bl           0x391a04
    //     0x439ee0: stur         r0, [fp, #-0x58]
    // 0x439ee4: BARRIER = pp[0x572]
    //     0x439ee4: add          BARRIER, PP, #0x12, lsl #12
    //     0x439ee8: ldr          BARRIER, [BARRIER, #0x560]
    //     0x439eec: ldur         lr, [fp, #-0x60]
    //     0x439ef0: stp          lr, BARRIER, [SP, #0x10]
    //     0x439ef4: ldur         BARRIER, [fp, #-0x78]
    //     0x439ef8: ldur         lr, [fp, #-0x70]
    //     0x439efc: stp          lr, BARRIER, [SP]
    // 0x439f00: r1 = r0
    //     0x439f00: mov          r1, r0
    // 0x439f04: r4 = pp[0x172]
    //     0x439f04: add          r4, PP, #0x12, lsl #12
    //     0x439f08: ldr          r4, [r4, #0x160]
    // 0x439f0c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x439f0c: bl           0x391490
    // 0x439f10: r1 = pp[0x5c58]
    //     0x439f10: ldr          r1, [PP, #0x5c58]
    //     0x439f14: mov          r2, #0x18
    // 0x439f18: r0 = call 0x61f920
    //     0x439f18: bl           0x61f920
    // 0x439f1c: r1 = r0
    //     0x439f1c: mov          r1, r0
    //     0x439f20: ldur         r0, [fp, #-0x58]
    //     0x439f24: stur         r1, [fp, #-0x60]
    // 0x439f28: StoreField: r1->field_f = r0
    //     0x439f28: stur         r0, [r1, #0xf]
    // 0x439f2c: r0 = call 0x3949ec
    //     0x439f2c: bl           0x3949ec
    // 0x439f30: r2 = pp[0xb5e]
    //     0x439f30: add          r2, PP, #0xe, lsl #12
    //     0x439f34: ldr          r2, [r2, #0xb50]
    // 0x439f38: StoreField: r0->field_13 = r2
    //     0x439f38: stur         r2, [r0, #0x13]
    //     0x439f3c: ldur         r1, [fp, #-0x60]
    //     0x439f40: add          r25, r1, #0x13
    //     0x439f44: str          r0, [r25]
    // 0x439f48: branchIfSmi(r0, 0x439f64)
    //     0x439f48: tbz          r0, #0, 0x439f64
    //     0x439f4c: ldurb        r16, [r1, #-1]
    //     0x439f50: ldurb        r17, [r0, #-1]
    //     0x439f54: and          BARRIER, r17, BARRIER, lsr #2
    //     0x439f58: tst          BARRIER, HEAP, lsr #32
    // 0x439f5c: b.eq 0x439f64
    //     0x439f5c: b.eq         0x439f64
    // 0x439f60: r0 = call 0x61db00
    //     0x439f60: bl           0x61db00
    //     0x439f64: ldur         r0, [fp, #-0x18]
    // 0x439f68: LoadField: r1 = r0->field_13
    //     0x439f68: ldur         r1, [r0, #0x13]
    //     0x439f6c: add          r1, r1, HEAP, lsl #32
    //     0x439f70: cmp          r1, r22
    // 0x439f74: b.ne 0x439f80
    //     0x439f74: b.ne         0x439f80
    // 0x439f78: r0 = NULL
    //     0x439f78: mov          r0, NULL
    // 0x439f7c: b 0x439f88
    //     0x439f7c: b            0x439f88
    // 0x439f80: LoadField: r0 = r1->field_b
    //     0x439f80: ldur         r0, [r1, #0xb]
    //     0x439f84: add          r0, r0, HEAP, lsl #32
    //     0x439f88: cmp          r0, r22
    // 0x439f8c: b.ne 0x439f98
    //     0x439f8c: b.ne         0x439f98
    // 0x439f90: r4 = pp[0x148]
    //     0x439f90: ldr          r4, [PP, #0x148]
    // 0x439f94: b 0x439f9c
    //     0x439f94: b            0x439f9c
    // 0x439f98: r4 = r0
    //     0x439f98: mov          r4, r0
    //     0x439f9c: ldur         r0, [fp, #-0x50]
    //     0x439fa0: ldur         r1, [fp, #-0x48]
    //     0x439fa4: ldur         r3, [fp, #-0x40]
    //     0x439fa8: stur         r4, [fp, #-0x18]
    // 0x439fac: r0 = call 0x3b6694
    //     0x439fac: bl           0x3b6694
    // 0x439fb0: r1 = r0
    //     0x439fb0: mov          r1, r0
    //     0x439fb4: ldur         r0, [fp, #-0x18]
    // 0x439fb8: StoreField: r1->field_b = r0
    //     0x439fb8: stur         r0, [r1, #0xb]
    // 0x439fbc: r0 = pp[0x505]
    //     0x439fbc: add          r0, PP, #0x15, lsl #12
    //     0x439fc0: ldr          r0, [r0, #0x4f0]
    // 0x439fc4: StoreField: r1->field_f = r0
    //     0x439fc4: stur         r0, [r1, #0xf]
    // 0x439fc8: StoreField: r1->field_13 = r0
    //     0x439fc8: stur         r0, [r1, #0x13]
    //     0x439fcc: add          r0, NULL, #0x30
    // 0x439fd0: StoreField: r1->field_1b = r0
    //     0x439fd0: stur         r0, [r1, #0x1b]
    // 0x439fd4: StoreField: r1->field_1f = r0
    //     0x439fd4: stur         r0, [r1, #0x1f]
    // 0x439fd8: r0 = r1
    //     0x439fd8: mov          r0, r1
    //     0x439fdc: ldur         r1, [fp, #-0x60]
    //     0x439fe0: add          r25, r1, #0x17
    //     0x439fe4: str          r0, [r25]
    // 0x439fe8: branchIfSmi(r0, 0x43a004)
    //     0x439fe8: tbz          r0, #0, 0x43a004
    //     0x439fec: ldurb        r16, [r1, #-1]
    //     0x439ff0: ldurb        r17, [r0, #-1]
    //     0x439ff4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x439ff8: tst          BARRIER, HEAP, lsr #32
    // 0x439ffc: b.eq 0x43a004
    //     0x439ffc: b.eq         0x43a004
    // 0x43a000: r0 = call 0x61db00
    //     0x43a000: bl           0x61db00
    // 0x43a004: r0 = call 0x3949ec
    //     0x43a004: bl           0x3949ec
    // 0x43a008: r1 = r0
    //     0x43a008: mov          r1, r0
    // 0x43a00c: r0 = pp[0x3b2]
    //     0x43a00c: add          r0, PP, #0x12, lsl #12
    //     0x43a010: ldr          r0, [r0, #0x3a0]
    // 0x43a014: StoreField: r1->field_13 = r0
    //     0x43a014: stur         r0, [r1, #0x13]
    // 0x43a018: r0 = r1
    //     0x43a018: mov          r0, r1
    //     0x43a01c: ldur         r1, [fp, #-0x60]
    //     0x43a020: add          r25, r1, #0x1b
    //     0x43a024: str          r0, [r25]
    // 0x43a028: branchIfSmi(r0, 0x43a044)
    //     0x43a028: tbz          r0, #0, 0x43a044
    //     0x43a02c: ldurb        r16, [r1, #-1]
    //     0x43a030: ldurb        r17, [r0, #-1]
    //     0x43a034: and          BARRIER, r17, BARRIER, lsr #2
    //     0x43a038: tst          BARRIER, HEAP, lsr #32
    // 0x43a03c: b.eq 0x43a044
    //     0x43a03c: b.eq         0x43a044
    // 0x43a040: r0 = call 0x61db00
    //     0x43a040: bl           0x61db00
    // 0x43a044: r1 = NULL
    //     0x43a044: mov          r1, NULL
    //     0x43a048: mov          r2, #2
    // 0x43a04c: r0 = call 0x61f920
    //     0x43a04c: bl           0x61f920
    // 0x43a050: r2 = r0
    //     0x43a050: mov          r2, r0
    //     0x43a054: ldur         r0, [fp, #-0x48]
    //     0x43a058: stur         r2, [fp, #-0x18]
    // 0x43a05c: StoreField: r2->field_f = r0
    //     0x43a05c: stur         r0, [r2, #0xf]
    // 0x43a060: r1 = pp[0x868]
    //     0x43a060: ldr          r1, [PP, #0x868]
    // 0x43a064: r0 = call 0x61e854
    //     0x43a064: bl           0x61e854
    // 0x43a068: r1 = r0
    //     0x43a068: mov          r1, r0
    //     0x43a06c: ldur         r0, [fp, #-0x18]
    // 0x43a070: StoreField: r1->field_f = r0
    //     0x43a070: stur         r0, [r1, #0xf]
    //     0x43a074: mov          r2, #2
    // 0x43a078: StoreField: r1->field_b = r2
    //     0x43a078: stur         r2, [r1, #0xb]
    //     0x43a07c: str          r1, [SP]
    // 0x43a080: r1 = pp[0x76c]
    //     0x43a080: add          r1, PP, #0xc, lsl #12
    //     0x43a084: ldr          r1, [r1, #0x760]
    // 0x43a088: r4 = pp[0xf2f]
    //     0x43a088: add          r4, PP, #0xf, lsl #12
    //     0x43a08c: ldr          r4, [r4, #0xf20]
    // 0x43a090: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x43a090: bl           0x3a1dcc
    //     0x43a094: stur         r0, [fp, #-0x18]
    // 0x43a098: r0 = call 0x3a67f0
    //     0x43a098: bl           0x3a67f0
    // 0x43a09c: r3 = r0
    //     0x43a09c: mov          r3, r0
    // 0x43a0a0: r0 = pp[0x40]
    //     0x43a0a0: ldr          r0, [PP, #0x40]
    //     0x43a0a4: stur         r3, [fp, #-0x58]
    // 0x43a0a8: StoreField: r3->field_f = r0
    //     0x43a0a8: stur         r0, [r3, #0xf]
    // 0x43a0ac: r1 = pp[0xb87]
    //     0x43a0ac: add          r1, PP, #0xf, lsl #12
    //     0x43a0b0: ldr          r1, [r1, #0xb78]
    //     0x43a0b4: mov          r2, #0
    // 0x43a0b8: r0 = dart_core__GrowableList::factory_ctor()
    //     0x43a0b8: bl           0x277268
    //     0x43a0bc: ldur         r1, [fp, #-0x58]
    // 0x43a0c0: StoreField: r1->field_13 = r0
    //     0x43a0c0: stur         r0, [r1, #0x13]
    //     0x43a0c4: ldurb        r16, [r1, #-1]
    //     0x43a0c8: ldurb        r17, [r0, #-1]
    //     0x43a0cc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x43a0d0: tst          BARRIER, HEAP, lsr #32
    // 0x43a0d4: b.eq 0x43a0dc
    //     0x43a0d4: b.eq         0x43a0dc
    // 0x43a0d8: r0 = call 0x61e04c
    //     0x43a0d8: bl           0x61e04c
    //     0x43a0dc: ldur         r0, [fp, #-0x18]
    // 0x43a0e0: StoreField: r1->field_7 = r0
    //     0x43a0e0: stur         r0, [r1, #7]
    //     0x43a0e4: ldurb        r16, [r1, #-1]
    //     0x43a0e8: ldurb        r17, [r0, #-1]
    //     0x43a0ec: and          BARRIER, r17, BARRIER, lsr #2
    //     0x43a0f0: tst          BARRIER, HEAP, lsr #32
    // 0x43a0f4: b.eq 0x43a0fc
    //     0x43a0f4: b.eq         0x43a0fc
    // 0x43a0f8: r0 = call 0x61e04c
    //     0x43a0f8: bl           0x61e04c
    //     0x43a0fc: ldur         r0, [fp, #-0x48]
    // 0x43a100: StoreField: r1->field_b = r0
    //     0x43a100: stur         r0, [r1, #0xb]
    //     0x43a104: ldurb        r16, [r1, #-1]
    //     0x43a108: ldurb        r17, [r0, #-1]
    //     0x43a10c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x43a110: tst          BARRIER, HEAP, lsr #32
    // 0x43a114: b.eq 0x43a11c
    //     0x43a114: b.eq         0x43a11c
    // 0x43a118: r0 = call 0x61e04c
    //     0x43a118: bl           0x61e04c
    // 0x43a11c: r0 = call 0x31abec
    //     0x43a11c: bl           0x31abec
    // 0x43a120: r1 = r0
    //     0x43a120: mov          r1, r0
    //     0x43a124: add          r0, NULL, #0x20
    //     0x43a128: stur         r1, [fp, #-0x18]
    // 0x43a12c: StoreField: r1->field_7 = r0
    //     0x43a12c: stur         r0, [r1, #7]
    // 0x43a130: r2 = pp[0x6050]
    //     0x43a130: ldr          r2, [PP, #0x6050]
    // 0x43a134: StoreField: r1->field_b = r2
    //     0x43a134: stur         r2, [r1, #0xb]
    // 0x43a138: r3 = pp[0x217]
    //     0x43a138: add          r3, PP, #0xf, lsl #12
    //     0x43a13c: ldr          r3, [r3, #0x208]
    // 0x43a140: StoreField: r1->field_1f = r3
    //     0x43a140: stur         r3, [r1, #0x1f]
    // 0x43a144: r0 = call 0x31abec
    //     0x43a144: bl           0x31abec
    // 0x43a148: r1 = r0
    //     0x43a148: mov          r1, r0
    //     0x43a14c: add          r0, NULL, #0x20
    // 0x43a150: StoreField: r1->field_7 = r0
    //     0x43a150: stur         r0, [r1, #7]
    // 0x43a154: r2 = pp[0x6050]
    //     0x43a154: ldr          r2, [PP, #0x6050]
    // 0x43a158: StoreField: r1->field_b = r2
    //     0x43a158: stur         r2, [r1, #0xb]
    // 0x43a15c: r3 = pp[0x1f7]
    //     0x43a15c: add          r3, PP, #0xf, lsl #12
    //     0x43a160: ldr          r3, [r3, #0x1e8]
    // 0x43a164: StoreField: r1->field_1f = r3
    //     0x43a164: stur         r3, [r1, #0x1f]
    //     0x43a168: ldur         BARRIER, [fp, #-0x18]
    //     0x43a16c: stp          r1, BARRIER, [SP]
    //     0x43a170: ldur         r1, [fp, #-0x58]
    // 0x43a174: r4 = pp[0xb97]
    //     0x43a174: add          r4, PP, #0xf, lsl #12
    //     0x43a178: ldr          r4, [r4, #0xb88]
    // 0x43a17c: r0 = soul_flutter_international$common$utils$highlight_text_util_HighlightTextParser::parser()
    //     0x43a17c: bl           0x3a5b48
    //     0x43a180: stur         r0, [fp, #-0x18]
    // 0x43a184: r0 = call 0x393bf8
    //     0x43a184: bl           0x393bf8
    // 0x43a188: r1 = r0
    //     0x43a188: mov          r1, r0
    //     0x43a18c: ldur         r0, [fp, #-0x18]
    // 0x43a190: StoreField: r1->field_f = r0
    //     0x43a190: stur         r0, [r1, #0xf]
    // 0x43a194: r3 = pp[0x53a8]
    //     0x43a194: ldr          r3, [PP, #0x53a8]
    // 0x43a198: StoreField: r1->field_1b = r3
    //     0x43a198: stur         r3, [r1, #0x1b]
    // 0x43a19c: r0 = r1
    //     0x43a19c: mov          r0, r1
    //     0x43a1a0: ldur         r1, [fp, #-0x60]
    //     0x43a1a4: add          r25, r1, #0x1f
    //     0x43a1a8: str          r0, [r25]
    // 0x43a1ac: branchIfSmi(r0, 0x43a1c8)
    //     0x43a1ac: tbz          r0, #0, 0x43a1c8
    //     0x43a1b0: ldurb        r16, [r1, #-1]
    //     0x43a1b4: ldurb        r17, [r0, #-1]
    //     0x43a1b8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x43a1bc: tst          BARRIER, HEAP, lsr #32
    // 0x43a1c0: b.eq 0x43a1c8
    //     0x43a1c0: b.eq         0x43a1c8
    // 0x43a1c4: r0 = call 0x61db00
    //     0x43a1c4: bl           0x61db00
    // 0x43a1c8: r1 = NULL
    //     0x43a1c8: mov          r1, NULL
    //     0x43a1cc: mov          r2, #2
    // 0x43a1d0: r0 = call 0x61f920
    //     0x43a1d0: bl           0x61f920
    // 0x43a1d4: r2 = r0
    //     0x43a1d4: mov          r2, r0
    //     0x43a1d8: ldur         r0, [fp, #-0x50]
    //     0x43a1dc: stur         r2, [fp, #-0x18]
    // 0x43a1e0: StoreField: r2->field_f = r0
    //     0x43a1e0: stur         r0, [r2, #0xf]
    // 0x43a1e4: r1 = pp[0x868]
    //     0x43a1e4: ldr          r1, [PP, #0x868]
    // 0x43a1e8: r0 = call 0x61e854
    //     0x43a1e8: bl           0x61e854
    // 0x43a1ec: r1 = r0
    //     0x43a1ec: mov          r1, r0
    //     0x43a1f0: ldur         r0, [fp, #-0x18]
    // 0x43a1f4: StoreField: r1->field_f = r0
    //     0x43a1f4: stur         r0, [r1, #0xf]
    //     0x43a1f8: mov          r0, #2
    // 0x43a1fc: StoreField: r1->field_b = r0
    //     0x43a1fc: stur         r0, [r1, #0xb]
    //     0x43a200: str          r1, [SP]
    // 0x43a204: r1 = pp[0x7fc]
    //     0x43a204: add          r1, PP, #0xc, lsl #12
    //     0x43a208: ldr          r1, [r1, #0x7f0]
    // 0x43a20c: r4 = pp[0xf2f]
    //     0x43a20c: add          r4, PP, #0xf, lsl #12
    //     0x43a210: ldr          r4, [r4, #0xf20]
    // 0x43a214: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x43a214: bl           0x3a1dcc
    //     0x43a218: stur         r0, [fp, #-0x18]
    // 0x43a21c: r0 = call 0x3a67f0
    //     0x43a21c: bl           0x3a67f0
    // 0x43a220: r3 = r0
    //     0x43a220: mov          r3, r0
    // 0x43a224: r0 = pp[0x40]
    //     0x43a224: ldr          r0, [PP, #0x40]
    //     0x43a228: stur         r3, [fp, #-0x48]
    // 0x43a22c: StoreField: r3->field_f = r0
    //     0x43a22c: stur         r0, [r3, #0xf]
    // 0x43a230: r1 = pp[0xb87]
    //     0x43a230: add          r1, PP, #0xf, lsl #12
    //     0x43a234: ldr          r1, [r1, #0xb78]
    //     0x43a238: mov          r2, #0
    // 0x43a23c: r0 = dart_core__GrowableList::factory_ctor()
    //     0x43a23c: bl           0x277268
    //     0x43a240: ldur         r1, [fp, #-0x48]
    // 0x43a244: StoreField: r1->field_13 = r0
    //     0x43a244: stur         r0, [r1, #0x13]
    //     0x43a248: ldurb        r16, [r1, #-1]
    //     0x43a24c: ldurb        r17, [r0, #-1]
    //     0x43a250: and          BARRIER, r17, BARRIER, lsr #2
    //     0x43a254: tst          BARRIER, HEAP, lsr #32
    // 0x43a258: b.eq 0x43a260
    //     0x43a258: b.eq         0x43a260
    // 0x43a25c: r0 = call 0x61e04c
    //     0x43a25c: bl           0x61e04c
    //     0x43a260: ldur         r0, [fp, #-0x18]
    // 0x43a264: StoreField: r1->field_7 = r0
    //     0x43a264: stur         r0, [r1, #7]
    //     0x43a268: ldurb        r16, [r1, #-1]
    //     0x43a26c: ldurb        r17, [r0, #-1]
    //     0x43a270: and          BARRIER, r17, BARRIER, lsr #2
    //     0x43a274: tst          BARRIER, HEAP, lsr #32
    // 0x43a278: b.eq 0x43a280
    //     0x43a278: b.eq         0x43a280
    // 0x43a27c: r0 = call 0x61e04c
    //     0x43a27c: bl           0x61e04c
    //     0x43a280: ldur         r0, [fp, #-0x50]
    // 0x43a284: StoreField: r1->field_b = r0
    //     0x43a284: stur         r0, [r1, #0xb]
    //     0x43a288: ldurb        r16, [r1, #-1]
    //     0x43a28c: ldurb        r17, [r0, #-1]
    //     0x43a290: and          BARRIER, r17, BARRIER, lsr #2
    //     0x43a294: tst          BARRIER, HEAP, lsr #32
    // 0x43a298: b.eq 0x43a2a0
    //     0x43a298: b.eq         0x43a2a0
    // 0x43a29c: r0 = call 0x61e04c
    //     0x43a29c: bl           0x61e04c
    // 0x43a2a0: r0 = call 0x31abec
    //     0x43a2a0: bl           0x31abec
    // 0x43a2a4: r1 = r0
    //     0x43a2a4: mov          r1, r0
    //     0x43a2a8: add          r0, NULL, #0x20
    //     0x43a2ac: stur         r1, [fp, #-0x18]
    // 0x43a2b0: StoreField: r1->field_7 = r0
    //     0x43a2b0: stur         r0, [r1, #7]
    // 0x43a2b4: r2 = pp[0x6050]
    //     0x43a2b4: ldr          r2, [PP, #0x6050]
    // 0x43a2b8: StoreField: r1->field_b = r2
    //     0x43a2b8: stur         r2, [r1, #0xb]
    // 0x43a2bc: r3 = pp[0x217]
    //     0x43a2bc: add          r3, PP, #0xf, lsl #12
    //     0x43a2c0: ldr          r3, [r3, #0x208]
    // 0x43a2c4: StoreField: r1->field_1f = r3
    //     0x43a2c4: stur         r3, [r1, #0x1f]
    // 0x43a2c8: r0 = call 0x31abec
    //     0x43a2c8: bl           0x31abec
    // 0x43a2cc: r1 = r0
    //     0x43a2cc: mov          r1, r0
    //     0x43a2d0: add          r0, NULL, #0x20
    // 0x43a2d4: StoreField: r1->field_7 = r0
    //     0x43a2d4: stur         r0, [r1, #7]
    // 0x43a2d8: r2 = pp[0x6050]
    //     0x43a2d8: ldr          r2, [PP, #0x6050]
    // 0x43a2dc: StoreField: r1->field_b = r2
    //     0x43a2dc: stur         r2, [r1, #0xb]
    // 0x43a2e0: r3 = pp[0x1f7]
    //     0x43a2e0: add          r3, PP, #0xf, lsl #12
    //     0x43a2e4: ldr          r3, [r3, #0x1e8]
    // 0x43a2e8: StoreField: r1->field_1f = r3
    //     0x43a2e8: stur         r3, [r1, #0x1f]
    //     0x43a2ec: ldur         BARRIER, [fp, #-0x18]
    //     0x43a2f0: stp          r1, BARRIER, [SP]
    //     0x43a2f4: ldur         r1, [fp, #-0x48]
    // 0x43a2f8: r4 = pp[0xb97]
    //     0x43a2f8: add          r4, PP, #0xf, lsl #12
    //     0x43a2fc: ldr          r4, [r4, #0xb88]
    // 0x43a300: r0 = soul_flutter_international$common$utils$highlight_text_util_HighlightTextParser::parser()
    //     0x43a300: bl           0x3a5b48
    //     0x43a304: stur         r0, [fp, #-0x18]
    // 0x43a308: r0 = call 0x393bf8
    //     0x43a308: bl           0x393bf8
    // 0x43a30c: r1 = r0
    //     0x43a30c: mov          r1, r0
    //     0x43a310: ldur         r0, [fp, #-0x18]
    // 0x43a314: StoreField: r1->field_f = r0
    //     0x43a314: stur         r0, [r1, #0xf]
    // 0x43a318: r0 = pp[0x53a8]
    //     0x43a318: ldr          r0, [PP, #0x53a8]
    // 0x43a31c: StoreField: r1->field_1b = r0
    //     0x43a31c: stur         r0, [r1, #0x1b]
    // 0x43a320: r0 = r1
    //     0x43a320: mov          r0, r1
    //     0x43a324: ldur         r1, [fp, #-0x60]
    //     0x43a328: add          r25, r1, #0x23
    //     0x43a32c: str          r0, [r25]
    // 0x43a330: branchIfSmi(r0, 0x43a34c)
    //     0x43a330: tbz          r0, #0, 0x43a34c
    //     0x43a334: ldurb        r16, [r1, #-1]
    //     0x43a338: ldurb        r17, [r0, #-1]
    //     0x43a33c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x43a340: tst          BARRIER, HEAP, lsr #32
    // 0x43a344: b.eq 0x43a34c
    //     0x43a344: b.eq         0x43a34c
    // 0x43a348: r0 = call 0x61db00
    //     0x43a348: bl           0x61db00
    // 0x43a34c: r0 = call 0x3949ec
    //     0x43a34c: bl           0x3949ec
    // 0x43a350: r2 = pp[0xb5e]
    //     0x43a350: add          r2, PP, #0xe, lsl #12
    //     0x43a354: ldr          r2, [r2, #0xb50]
    // 0x43a358: StoreField: r0->field_13 = r2
    //     0x43a358: stur         r2, [r0, #0x13]
    //     0x43a35c: ldur         r1, [fp, #-0x60]
    //     0x43a360: add          r25, r1, #0x27
    //     0x43a364: str          r0, [r25]
    // 0x43a368: branchIfSmi(r0, 0x43a384)
    //     0x43a368: tbz          r0, #0, 0x43a384
    //     0x43a36c: ldurb        r16, [r1, #-1]
    //     0x43a370: ldurb        r17, [r0, #-1]
    //     0x43a374: and          BARRIER, r17, BARRIER, lsr #2
    //     0x43a378: tst          BARRIER, HEAP, lsr #32
    // 0x43a37c: b.eq 0x43a384
    //     0x43a37c: b.eq         0x43a384
    // 0x43a380: r0 = call 0x61db00
    //     0x43a380: bl           0x61db00
    // 0x43a384: r0 = call 0x31d844
    //     0x43a384: bl           0x31d844
    // 0x43a388: r1 = r0
    //     0x43a388: mov          r1, r0
    // 0x43a38c: r0 = pp[0x6310]
    //     0x43a38c: ldr          r0, [PP, #0x6310]
    //     0x43a390: stur         r1, [fp, #-0x18]
    // 0x43a394: StoreField: r1->field_27 = r0
    //     0x43a394: stur         r0, [r1, #0x27]
    // 0x43a398: d0 = pp[0x6658]
    //     0x43a398: ldr          d0, [PP, #0x6658]
    // 0x43a39c: StoreField: r1->field_7 = d0
    //     0x43a39c: stur         d0, [r1, #7]
    //     0x43a3a0: fmov         d0, #1.00000000
    // 0x43a3a4: StoreField: r1->field_f = d0
    //     0x43a3a4: stur         d0, [r1, #0xf]
    // 0x43a3a8: ArrayStore: r1[0] = d0  ; List_8
    //     0x43a3a8: stur         d0, [r1, #0x17]
    // 0x43a3ac: StoreField: r1->field_1f = d0
    //     0x43a3ac: stur         d0, [r1, #0x1f]
    // 0x43a3b0: r0 = call 0x391a04
    //     0x43a3b0: bl           0x391a04
    //     0x43a3b4: stur         r0, [fp, #-0x48]
    // 0x43a3b8: BARRIER = pp[0x53a0]
    //     0x43a3b8: ldr          BARRIER, [PP, #0x53a0]
    //     0x43a3bc: ldur         lr, [fp, #-0x18]
    //     0x43a3c0: stp          lr, BARRIER, [SP]
    // 0x43a3c4: r1 = r0
    //     0x43a3c4: mov          r1, r0
    // 0x43a3c8: r4 = pp[0xebe]
    //     0x43a3c8: add          r4, PP, #0xe, lsl #12
    //     0x43a3cc: ldr          r4, [r4, #0xeb0]
    // 0x43a3d0: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43a3d0: bl           0x391490
    //     0x43a3d4: ldur         r1, [fp, #-0x60]
    //     0x43a3d8: ldur         r0, [fp, #-0x48]
    //     0x43a3dc: add          r25, r1, #0x2b
    //     0x43a3e0: str          r0, [r25]
    // 0x43a3e4: branchIfSmi(r0, 0x43a400)
    //     0x43a3e4: tbz          r0, #0, 0x43a400
    //     0x43a3e8: ldurb        r16, [r1, #-1]
    //     0x43a3ec: ldurb        r17, [r0, #-1]
    //     0x43a3f0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x43a3f4: tst          BARRIER, HEAP, lsr #32
    // 0x43a3f8: b.eq 0x43a400
    //     0x43a3f8: b.eq         0x43a400
    // 0x43a3fc: r0 = call 0x61db00
    //     0x43a3fc: bl           0x61db00
    // 0x43a400: r0 = call 0x3949ec
    //     0x43a400: bl           0x3949ec
    // 0x43a404: r1 = r0
    //     0x43a404: mov          r1, r0
    // 0x43a408: r0 = pp[0xb5e]
    //     0x43a408: add          r0, PP, #0xe, lsl #12
    //     0x43a40c: ldr          r0, [r0, #0xb50]
    // 0x43a410: StoreField: r1->field_13 = r0
    //     0x43a410: stur         r0, [r1, #0x13]
    // 0x43a414: r0 = r1
    //     0x43a414: mov          r0, r1
    //     0x43a418: ldur         r1, [fp, #-0x60]
    //     0x43a41c: add          r25, r1, #0x2f
    //     0x43a420: str          r0, [r25]
    // 0x43a424: branchIfSmi(r0, 0x43a440)
    //     0x43a424: tbz          r0, #0, 0x43a440
    //     0x43a428: ldurb        r16, [r1, #-1]
    //     0x43a42c: ldurb        r17, [r0, #-1]
    //     0x43a430: and          BARRIER, r17, BARRIER, lsr #2
    //     0x43a434: tst          BARRIER, HEAP, lsr #32
    // 0x43a438: b.eq 0x43a440
    //     0x43a438: b.eq         0x43a440
    // 0x43a43c: r0 = call 0x61db00
    //     0x43a43c: bl           0x61db00
    //     0x43a440: ldur         r0, [fp, #-0x40]
    //     0x43a444: cmp          r0, #0
    // 0x43a448: b.le 0x43a4a8
    //     0x43a448: b.le         0x43a4a8
    // 0x43a44c: r1 = pp[0x7ec]
    //     0x43a44c: add          r1, PP, #0xc, lsl #12
    //     0x43a450: ldr          r1, [r1, #0x7e0]
    // 0x43a454: r4 = pp[0x4c0]
    //     0x43a454: ldr          r4, [PP, #0x4c0]
    // 0x43a458: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x43a458: bl           0x3a1dcc
    //     0x43a45c: stur         r0, [fp, #-0x18]
    // 0x43a460: r0 = call 0x31abec
    //     0x43a460: bl           0x31abec
    // 0x43a464: r1 = r0
    //     0x43a464: mov          r1, r0
    //     0x43a468: add          r0, NULL, #0x20
    //     0x43a46c: stur         r1, [fp, #-0x48]
    // 0x43a470: StoreField: r1->field_7 = r0
    //     0x43a470: stur         r0, [r1, #7]
    // 0x43a474: r2 = pp[0x6050]
    //     0x43a474: ldr          r2, [PP, #0x6050]
    // 0x43a478: StoreField: r1->field_b = r2
    //     0x43a478: stur         r2, [r1, #0xb]
    // 0x43a47c: r3 = pp[0xb8f]
    //     0x43a47c: add          r3, PP, #0xf, lsl #12
    //     0x43a480: ldr          r3, [r3, #0xb80]
    // 0x43a484: StoreField: r1->field_1f = r3
    //     0x43a484: stur         r3, [r1, #0x1f]
    // 0x43a488: r0 = call 0x393bf8
    //     0x43a488: bl           0x393bf8
    // 0x43a48c: r1 = r0
    //     0x43a48c: mov          r1, r0
    //     0x43a490: ldur         r0, [fp, #-0x18]
    // 0x43a494: StoreField: r1->field_b = r0
    //     0x43a494: stur         r0, [r1, #0xb]
    //     0x43a498: ldur         r0, [fp, #-0x48]
    // 0x43a49c: StoreField: r1->field_13 = r0
    //     0x43a49c: stur         r0, [r1, #0x13]
    // 0x43a4a0: r0 = r1
    //     0x43a4a0: mov          r0, r1
    // 0x43a4a4: b 0x43a4c0
    //     0x43a4a4: b            0x43a4c0
    // 0x43a4a8: r0 = call 0x391a04
    //     0x43a4a8: bl           0x391a04
    // 0x43a4ac: r1 = r0
    //     0x43a4ac: mov          r1, r0
    //     0x43a4b0: stur         r0, [fp, #-0x18]
    // 0x43a4b4: r4 = pp[0x4c0]
    //     0x43a4b4: ldr          r4, [PP, #0x4c0]
    // 0x43a4b8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43a4b8: bl           0x391490
    //     0x43a4bc: ldur         r0, [fp, #-0x18]
    //     0x43a4c0: ldur         r2, [fp, #-0x40]
    //     0x43a4c4: ldur         r1, [fp, #-0x60]
    //     0x43a4c8: add          r25, r1, #0x33
    //     0x43a4cc: str          r0, [r25]
    // 0x43a4d0: branchIfSmi(r0, 0x43a4ec)
    //     0x43a4d0: tbz          r0, #0, 0x43a4ec
    //     0x43a4d4: ldurb        r16, [r1, #-1]
    //     0x43a4d8: ldurb        r17, [r0, #-1]
    //     0x43a4dc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x43a4e0: tst          BARRIER, HEAP, lsr #32
    // 0x43a4e4: b.eq 0x43a4ec
    //     0x43a4e4: b.eq         0x43a4ec
    // 0x43a4e8: r0 = call 0x61db00
    //     0x43a4e8: bl           0x61db00
    // 0x43a4ec: r0 = call 0x3949ec
    //     0x43a4ec: bl           0x3949ec
    // 0x43a4f0: r1 = r0
    //     0x43a4f0: mov          r1, r0
    // 0x43a4f4: r0 = pp[0x7598]
    //     0x43a4f4: ldr          r0, [PP, #0x7598]
    // 0x43a4f8: StoreField: r1->field_13 = r0
    //     0x43a4f8: stur         r0, [r1, #0x13]
    // 0x43a4fc: r0 = r1
    //     0x43a4fc: mov          r0, r1
    //     0x43a500: ldur         r1, [fp, #-0x60]
    //     0x43a504: add          r25, r1, #0x37
    //     0x43a508: str          r0, [r25]
    // 0x43a50c: branchIfSmi(r0, 0x43a528)
    //     0x43a50c: tbz          r0, #0, 0x43a528
    //     0x43a510: ldurb        r16, [r1, #-1]
    //     0x43a514: ldurb        r17, [r0, #-1]
    //     0x43a518: and          BARRIER, r17, BARRIER, lsr #2
    //     0x43a51c: tst          BARRIER, HEAP, lsr #32
    // 0x43a520: b.eq 0x43a528
    //     0x43a520: b.eq         0x43a528
    // 0x43a524: r0 = call 0x61db00
    //     0x43a524: bl           0x61db00
    //     0x43a528: ldur         r0, [fp, #-0x40]
    //     0x43a52c: cmp          r0, #0
    // 0x43a530: b.le 0x43ac0c
    //     0x43a530: b.le         0x43ac0c
    //     0x43a534: ldur         r0, [fp, #-0x20]
    // 0x43a538: r0 = call 0x2e3578
    //     0x43a538: bl           0x2e3578
    //     0x43a53c: fmov         d0, #13.00000000
    //     0x43a540: stur         r0, [fp, #-0x18]
    // 0x43a544: StoreField: r0->field_7 = d0
    //     0x43a544: stur         d0, [r0, #7]
    // 0x43a548: StoreField: r0->field_f = xzr
    //     0x43a548: stur         xzr, [r0, #0xf]
    // 0x43a54c: ArrayStore: r0[0] = d0  ; List_8
    //     0x43a54c: stur         d0, [r0, #0x17]
    // 0x43a550: StoreField: r0->field_1f = xzr
    //     0x43a550: stur         xzr, [r0, #0x1f]
    //     0x43a554: ldur         r1, [fp, #-0x20]
    //     0x43a558: cmp          r1, r22
    // 0x43a55c: b.eq 0x43a718
    //     0x43a55c: b.eq         0x43a718
    // 0x43a560: r0 = call 0x31d844
    //     0x43a560: bl           0x31d844
    // 0x43a564: r1 = r0
    //     0x43a564: mov          r1, r0
    // 0x43a568: r0 = pp[0x6310]
    //     0x43a568: ldr          r0, [PP, #0x6310]
    // 0x43a56c: StoreField: r1->field_27 = r0
    //     0x43a56c: stur         r0, [r1, #0x27]
    //     0x43a570: fmov         d0, #1.00000000
    // 0x43a574: StoreField: r1->field_7 = d0
    //     0x43a574: stur         d0, [r1, #7]
    // 0x43a578: StoreField: r1->field_f = d0
    //     0x43a578: stur         d0, [r1, #0xf]
    // 0x43a57c: d1 = pp[0x2e4]
    //     0x43a57c: add          r17, PP, #0xc, lsl #12
    //     0x43a580: ldr          d1, [r17, #0x2d8]
    // 0x43a584: ArrayStore: r1[0] = d1  ; List_8
    //     0x43a584: stur         d1, [r1, #0x17]
    // 0x43a588: d1 = pp[0xdde]
    //     0x43a588: add          r17, PP, #0xe, lsl #12
    //     0x43a58c: ldr          d1, [r17, #0xdd0]
    // 0x43a590: StoreField: r1->field_1f = d1
    //     0x43a590: stur         d1, [r1, #0x1f]
    //     0x43a594: ldur         r4, [fp, #-0x20]
    // 0x43a598: LoadField: r2 = r4->field_b
    //     0x43a598: ldur         r2, [r4, #0xb]
    //     0x43a59c: add          r2, r2, HEAP, lsl #32
    //     0x43a5a0: cmp          r2, r22
    // 0x43a5a4: b.ne 0x43a5b0
    //     0x43a5a4: b.ne         0x43a5b0
    // 0x43a5a8: r5 = pp[0x148]
    //     0x43a5a8: ldr          r5, [PP, #0x148]
    // 0x43a5ac: b 0x43a5b4
    //     0x43a5ac: b            0x43a5b4
    // 0x43a5b0: r5 = r2
    //     0x43a5b0: mov          r5, r2
    // 0x43a5b4: r2 = r1
    //     0x43a5b4: mov          r2, r1
    //     0x43a5b8: ldur         r1, [fp, #-8]
    // 0x43a5bc: r3 = pp[0x8b1]
    //     0x43a5bc: add          r3, PP, #0x11, lsl #12
    //     0x43a5c0: ldr          r3, [r3, #0x8a0]
    // 0x43a5c4: r0 = soul_flutter_international$biz$game$page_game_fruit_winner_dialog__GameFruitWinnerDialogState::_userCrownHeadWidget()
    //     0x43a5c4: bl           0x43b338
    //     0x43a5c8: stur         r0, [fp, #-0x48]
    // 0x43a5cc: r0 = call 0x3949ec
    //     0x43a5cc: bl           0x3949ec
    // 0x43a5d0: r3 = r0
    //     0x43a5d0: mov          r3, r0
    // 0x43a5d4: r0 = pp[0xbc7]
    //     0x43a5d4: add          r0, PP, #0xf, lsl #12
    //     0x43a5d8: ldr          r0, [r0, #0xbb8]
    //     0x43a5dc: stur         r3, [fp, #-0x50]
    // 0x43a5e0: StoreField: r3->field_13 = r0
    //     0x43a5e0: stur         r0, [r3, #0x13]
    //     0x43a5e4: ldur         r4, [fp, #-0x20]
    // 0x43a5e8: LoadField: r2 = r4->field_7
    //     0x43a5e8: ldur         r2, [r4, #7]
    //     0x43a5ec: add          r2, r2, HEAP, lsl #32
    //     0x43a5f0: ldur         r1, [fp, #-8]
    // 0x43a5f4: r0 = soul_flutter_international$biz$game$page_game_fruit_winner_dialog__GameFruitWinnerDialogState::_userFlexibleWidget()
    //     0x43a5f4: bl           0x43b27c
    //     0x43a5f8: stur         r0, [fp, #-0x58]
    // 0x43a5fc: r0 = call 0x3949ec
    //     0x43a5fc: bl           0x3949ec
    // 0x43a600: r3 = r0
    //     0x43a600: mov          r3, r0
    // 0x43a604: r0 = pp[0x950]
    //     0x43a604: add          r0, PP, #0x10, lsl #12
    //     0x43a608: ldr          r0, [r0, #0x940]
    //     0x43a60c: stur         r3, [fp, #-0x68]
    // 0x43a610: StoreField: r3->field_13 = r0
    //     0x43a610: stur         r0, [r3, #0x13]
    //     0x43a614: ldur         r1, [fp, #-0x20]
    // 0x43a618: LoadField: r2 = r1->field_f
    //     0x43a618: ldur         r2, [r1, #0xf]
    //     0x43a61c: add          r2, r2, HEAP, lsl #32
    //     0x43a620: ldur         r1, [fp, #-8]
    // 0x43a624: r0 = soul_flutter_international$biz$game$page_game_fruit_winner_dialog__GameFruitWinnerDialogState::_coinLabelWidget()
    //     0x43a624: bl           0x43b0c4
    // 0x43a628: r1 = NULL
    //     0x43a628: mov          r1, NULL
    //     0x43a62c: mov          r2, #0xa
    //     0x43a630: stur         r0, [fp, #-0x20]
    // 0x43a634: r0 = call 0x61f920
    //     0x43a634: bl           0x61f920
    // 0x43a638: r2 = r0
    //     0x43a638: mov          r2, r0
    //     0x43a63c: ldur         r0, [fp, #-0x48]
    //     0x43a640: stur         r2, [fp, #-0x70]
    // 0x43a644: StoreField: r2->field_f = r0
    //     0x43a644: stur         r0, [r2, #0xf]
    //     0x43a648: ldur         r0, [fp, #-0x50]
    // 0x43a64c: StoreField: r2->field_13 = r0
    //     0x43a64c: stur         r0, [r2, #0x13]
    //     0x43a650: ldur         r0, [fp, #-0x58]
    // 0x43a654: ArrayStore: r2[0] = r0  ; List_8
    //     0x43a654: stur         r0, [r2, #0x17]
    //     0x43a658: ldur         r0, [fp, #-0x68]
    // 0x43a65c: StoreField: r2->field_1b = r0
    //     0x43a65c: stur         r0, [r2, #0x1b]
    //     0x43a660: ldur         r0, [fp, #-0x20]
    // 0x43a664: StoreField: r2->field_1f = r0
    //     0x43a664: stur         r0, [r2, #0x1f]
    // 0x43a668: r1 = pp[0x5c58]
    //     0x43a668: ldr          r1, [PP, #0x5c58]
    // 0x43a66c: r0 = call 0x61e854
    //     0x43a66c: bl           0x61e854
    // 0x43a670: r1 = r0
    //     0x43a670: mov          r1, r0
    //     0x43a674: ldur         r0, [fp, #-0x70]
    //     0x43a678: stur         r1, [fp, #-0x20]
    // 0x43a67c: StoreField: r1->field_f = r0
    //     0x43a67c: stur         r0, [r1, #0xf]
    //     0x43a680: mov          r2, #0xa
    // 0x43a684: StoreField: r1->field_b = r2
    //     0x43a684: stur         r2, [r1, #0xb]
    // 0x43a688: r0 = call 0x39310c
    //     0x43a688: bl           0x39310c
    // 0x43a68c: r1 = r0
    //     0x43a68c: mov          r1, r0
    // 0x43a690: r0 = pp[0x862]
    //     0x43a690: add          r0, PP, #0xa, lsl #12
    //     0x43a694: ldr          r0, [r0, #0x858]
    //     0x43a698: stur         r1, [fp, #-0x48]
    // 0x43a69c: StoreField: r1->field_f = r0
    //     0x43a69c: stur         r0, [r1, #0xf]
    // 0x43a6a0: r2 = pp[0xaee]
    //     0x43a6a0: add          r2, PP, #0xe, lsl #12
    //     0x43a6a4: ldr          r2, [r2, #0xae0]
    // 0x43a6a8: StoreField: r1->field_13 = r2
    //     0x43a6a8: stur         r2, [r1, #0x13]
    // 0x43a6ac: r3 = pp[0xaf6]
    //     0x43a6ac: add          r3, PP, #0xe, lsl #12
    //     0x43a6b0: ldr          r3, [r3, #0xae8]
    // 0x43a6b4: ArrayStore: r1[0] = r3  ; List_8
    //     0x43a6b4: stur         r3, [r1, #0x17]
    // 0x43a6b8: r4 = pp[0xb6e]
    //     0x43a6b8: add          r4, PP, #0xe, lsl #12
    //     0x43a6bc: ldr          r4, [r4, #0xb60]
    // 0x43a6c0: StoreField: r1->field_1b = r4
    //     0x43a6c0: stur         r4, [r1, #0x1b]
    // 0x43a6c4: r5 = pp[0xb06]
    //     0x43a6c4: add          r5, PP, #0xe, lsl #12
    //     0x43a6c8: ldr          r5, [r5, #0xaf8]
    // 0x43a6cc: StoreField: r1->field_23 = r5
    //     0x43a6cc: stur         r5, [r1, #0x23]
    // 0x43a6d0: r6 = pp[0xb2]
    //     0x43a6d0: add          r6, PP, #0xa, lsl #12
    //     0x43a6d4: ldr          r6, [r6, #0xa8]
    // 0x43a6d8: StoreField: r1->field_2b = r6
    //     0x43a6d8: stur         r6, [r1, #0x2b]
    // 0x43a6dc: StoreField: r1->field_2f = xzr
    //     0x43a6dc: stur         xzr, [r1, #0x2f]
    //     0x43a6e0: ldur         r7, [fp, #-0x20]
    // 0x43a6e4: StoreField: r1->field_b = r7
    //     0x43a6e4: stur         r7, [r1, #0xb]
    // 0x43a6e8: r0 = call 0x391a04
    //     0x43a6e8: bl           0x391a04
    //     0x43a6ec: stur         r0, [fp, #-0x20]
    // 0x43a6f0: BARRIER = pp[0x50d]
    //     0x43a6f0: add          BARRIER, PP, #0x15, lsl #12
    //     0x43a6f4: ldr          BARRIER, [BARRIER, #0x4f8]
    //     0x43a6f8: ldur         lr, [fp, #-0x48]
    //     0x43a6fc: stp          lr, BARRIER, [SP]
    // 0x43a700: r1 = r0
    //     0x43a700: mov          r1, r0
    // 0x43a704: r4 = pp[0x24f]
    //     0x43a704: add          r4, PP, #0xf, lsl #12
    //     0x43a708: ldr          r4, [r4, #0x240]
    // 0x43a70c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43a70c: bl           0x391490
    //     0x43a710: ldur         r1, [fp, #-0x20]
    // 0x43a714: b 0x43a730
    //     0x43a714: b            0x43a730
    // 0x43a718: r0 = call 0x391a04
    //     0x43a718: bl           0x391a04
    // 0x43a71c: r1 = r0
    //     0x43a71c: mov          r1, r0
    //     0x43a720: stur         r0, [fp, #-0x20]
    // 0x43a724: r4 = pp[0x4c0]
    //     0x43a724: ldr          r4, [PP, #0x4c0]
    // 0x43a728: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43a728: bl           0x391490
    //     0x43a72c: ldur         r1, [fp, #-0x20]
    //     0x43a730: ldur         r0, [fp, #-0x30]
    //     0x43a734: stur         r1, [fp, #-0x20]
    //     0x43a738: cmp          r0, r22
    // 0x43a73c: b.eq 0x43a8fc
    //     0x43a73c: b.eq         0x43a8fc
    // 0x43a740: r0 = call 0x31d844
    //     0x43a740: bl           0x31d844
    // 0x43a744: r1 = r0
    //     0x43a744: mov          r1, r0
    // 0x43a748: r0 = pp[0x6310]
    //     0x43a748: ldr          r0, [PP, #0x6310]
    // 0x43a74c: StoreField: r1->field_27 = r0
    //     0x43a74c: stur         r0, [r1, #0x27]
    //     0x43a750: fmov         d0, #1.00000000
    // 0x43a754: StoreField: r1->field_7 = d0
    //     0x43a754: stur         d0, [r1, #7]
    // 0x43a758: d1 = pp[0x6330]
    //     0x43a758: ldr          d1, [PP, #0x6330]
    // 0x43a75c: StoreField: r1->field_f = d1
    //     0x43a75c: stur         d1, [r1, #0xf]
    // 0x43a760: d1 = pp[0x889]
    //     0x43a760: add          r17, PP, #0x11, lsl #12
    //     0x43a764: ldr          d1, [r17, #0x878]
    // 0x43a768: ArrayStore: r1[0] = d1  ; List_8
    //     0x43a768: stur         d1, [r1, #0x17]
    // 0x43a76c: d1 = pp[0xad0]
    //     0x43a76c: add          r17, PP, #0x10, lsl #12
    //     0x43a770: ldr          d1, [r17, #0xac0]
    // 0x43a774: StoreField: r1->field_1f = d1
    //     0x43a774: stur         d1, [r1, #0x1f]
    //     0x43a778: ldur         r4, [fp, #-0x30]
    // 0x43a77c: LoadField: r2 = r4->field_b
    //     0x43a77c: ldur         r2, [r4, #0xb]
    //     0x43a780: add          r2, r2, HEAP, lsl #32
    //     0x43a784: cmp          r2, r22
    // 0x43a788: b.ne 0x43a794
    //     0x43a788: b.ne         0x43a794
    // 0x43a78c: r5 = pp[0x148]
    //     0x43a78c: ldr          r5, [PP, #0x148]
    // 0x43a790: b 0x43a798
    //     0x43a790: b            0x43a798
    // 0x43a794: r5 = r2
    //     0x43a794: mov          r5, r2
    // 0x43a798: r2 = r1
    //     0x43a798: mov          r2, r1
    //     0x43a79c: ldur         r1, [fp, #-8]
    // 0x43a7a0: r3 = pp[0x869]
    //     0x43a7a0: add          r3, PP, #0x11, lsl #12
    //     0x43a7a4: ldr          r3, [r3, #0x858]
    // 0x43a7a8: r0 = soul_flutter_international$biz$game$page_game_fruit_winner_dialog__GameFruitWinnerDialogState::_userCrownHeadWidget()
    //     0x43a7a8: bl           0x43b338
    //     0x43a7ac: stur         r0, [fp, #-0x48]
    // 0x43a7b0: r0 = call 0x3949ec
    //     0x43a7b0: bl           0x3949ec
    // 0x43a7b4: r3 = r0
    //     0x43a7b4: mov          r3, r0
    // 0x43a7b8: r0 = pp[0xbc7]
    //     0x43a7b8: add          r0, PP, #0xf, lsl #12
    //     0x43a7bc: ldr          r0, [r0, #0xbb8]
    //     0x43a7c0: stur         r3, [fp, #-0x50]
    // 0x43a7c4: StoreField: r3->field_13 = r0
    //     0x43a7c4: stur         r0, [r3, #0x13]
    //     0x43a7c8: ldur         r4, [fp, #-0x30]
    // 0x43a7cc: LoadField: r2 = r4->field_7
    //     0x43a7cc: ldur         r2, [r4, #7]
    //     0x43a7d0: add          r2, r2, HEAP, lsl #32
    //     0x43a7d4: ldur         r1, [fp, #-8]
    // 0x43a7d8: r0 = soul_flutter_international$biz$game$page_game_fruit_winner_dialog__GameFruitWinnerDialogState::_userFlexibleWidget()
    //     0x43a7d8: bl           0x43b27c
    //     0x43a7dc: stur         r0, [fp, #-0x58]
    // 0x43a7e0: r0 = call 0x3949ec
    //     0x43a7e0: bl           0x3949ec
    // 0x43a7e4: r3 = r0
    //     0x43a7e4: mov          r3, r0
    // 0x43a7e8: r0 = pp[0x950]
    //     0x43a7e8: add          r0, PP, #0x10, lsl #12
    //     0x43a7ec: ldr          r0, [r0, #0x940]
    //     0x43a7f0: stur         r3, [fp, #-0x68]
    // 0x43a7f4: StoreField: r3->field_13 = r0
    //     0x43a7f4: stur         r0, [r3, #0x13]
    //     0x43a7f8: ldur         r1, [fp, #-0x30]
    // 0x43a7fc: LoadField: r2 = r1->field_f
    //     0x43a7fc: ldur         r2, [r1, #0xf]
    //     0x43a800: add          r2, r2, HEAP, lsl #32
    //     0x43a804: ldur         r1, [fp, #-8]
    // 0x43a808: r0 = soul_flutter_international$biz$game$page_game_fruit_winner_dialog__GameFruitWinnerDialogState::_coinLabelWidget()
    //     0x43a808: bl           0x43b0c4
    // 0x43a80c: r1 = NULL
    //     0x43a80c: mov          r1, NULL
    //     0x43a810: mov          r2, #0xa
    //     0x43a814: stur         r0, [fp, #-0x30]
    // 0x43a818: r0 = call 0x61f920
    //     0x43a818: bl           0x61f920
    // 0x43a81c: r2 = r0
    //     0x43a81c: mov          r2, r0
    //     0x43a820: ldur         r0, [fp, #-0x48]
    //     0x43a824: stur         r2, [fp, #-0x70]
    // 0x43a828: StoreField: r2->field_f = r0
    //     0x43a828: stur         r0, [r2, #0xf]
    //     0x43a82c: ldur         r0, [fp, #-0x50]
    // 0x43a830: StoreField: r2->field_13 = r0
    //     0x43a830: stur         r0, [r2, #0x13]
    //     0x43a834: ldur         r0, [fp, #-0x58]
    // 0x43a838: ArrayStore: r2[0] = r0  ; List_8
    //     0x43a838: stur         r0, [r2, #0x17]
    //     0x43a83c: ldur         r0, [fp, #-0x68]
    // 0x43a840: StoreField: r2->field_1b = r0
    //     0x43a840: stur         r0, [r2, #0x1b]
    //     0x43a844: ldur         r0, [fp, #-0x30]
    // 0x43a848: StoreField: r2->field_1f = r0
    //     0x43a848: stur         r0, [r2, #0x1f]
    // 0x43a84c: r1 = pp[0x5c58]
    //     0x43a84c: ldr          r1, [PP, #0x5c58]
    // 0x43a850: r0 = call 0x61e854
    //     0x43a850: bl           0x61e854
    // 0x43a854: r1 = r0
    //     0x43a854: mov          r1, r0
    //     0x43a858: ldur         r0, [fp, #-0x70]
    //     0x43a85c: stur         r1, [fp, #-0x30]
    // 0x43a860: StoreField: r1->field_f = r0
    //     0x43a860: stur         r0, [r1, #0xf]
    //     0x43a864: mov          r2, #0xa
    // 0x43a868: StoreField: r1->field_b = r2
    //     0x43a868: stur         r2, [r1, #0xb]
    // 0x43a86c: r0 = call 0x39310c
    //     0x43a86c: bl           0x39310c
    // 0x43a870: r1 = r0
    //     0x43a870: mov          r1, r0
    // 0x43a874: r0 = pp[0x862]
    //     0x43a874: add          r0, PP, #0xa, lsl #12
    //     0x43a878: ldr          r0, [r0, #0x858]
    //     0x43a87c: stur         r1, [fp, #-0x48]
    // 0x43a880: StoreField: r1->field_f = r0
    //     0x43a880: stur         r0, [r1, #0xf]
    // 0x43a884: r2 = pp[0xaee]
    //     0x43a884: add          r2, PP, #0xe, lsl #12
    //     0x43a888: ldr          r2, [r2, #0xae0]
    // 0x43a88c: StoreField: r1->field_13 = r2
    //     0x43a88c: stur         r2, [r1, #0x13]
    // 0x43a890: r3 = pp[0xaf6]
    //     0x43a890: add          r3, PP, #0xe, lsl #12
    //     0x43a894: ldr          r3, [r3, #0xae8]
    // 0x43a898: ArrayStore: r1[0] = r3  ; List_8
    //     0x43a898: stur         r3, [r1, #0x17]
    // 0x43a89c: r4 = pp[0xb6e]
    //     0x43a89c: add          r4, PP, #0xe, lsl #12
    //     0x43a8a0: ldr          r4, [r4, #0xb60]
    // 0x43a8a4: StoreField: r1->field_1b = r4
    //     0x43a8a4: stur         r4, [r1, #0x1b]
    // 0x43a8a8: r5 = pp[0xb06]
    //     0x43a8a8: add          r5, PP, #0xe, lsl #12
    //     0x43a8ac: ldr          r5, [r5, #0xaf8]
    // 0x43a8b0: StoreField: r1->field_23 = r5
    //     0x43a8b0: stur         r5, [r1, #0x23]
    // 0x43a8b4: r6 = pp[0xb2]
    //     0x43a8b4: add          r6, PP, #0xa, lsl #12
    //     0x43a8b8: ldr          r6, [r6, #0xa8]
    // 0x43a8bc: StoreField: r1->field_2b = r6
    //     0x43a8bc: stur         r6, [r1, #0x2b]
    // 0x43a8c0: StoreField: r1->field_2f = xzr
    //     0x43a8c0: stur         xzr, [r1, #0x2f]
    //     0x43a8c4: ldur         r7, [fp, #-0x30]
    // 0x43a8c8: StoreField: r1->field_b = r7
    //     0x43a8c8: stur         r7, [r1, #0xb]
    // 0x43a8cc: r0 = call 0x391a04
    //     0x43a8cc: bl           0x391a04
    //     0x43a8d0: stur         r0, [fp, #-0x30]
    // 0x43a8d4: BARRIER = pp[0x50d]
    //     0x43a8d4: add          BARRIER, PP, #0x15, lsl #12
    //     0x43a8d8: ldr          BARRIER, [BARRIER, #0x4f8]
    //     0x43a8dc: ldur         lr, [fp, #-0x48]
    //     0x43a8e0: stp          lr, BARRIER, [SP]
    // 0x43a8e4: r1 = r0
    //     0x43a8e4: mov          r1, r0
    // 0x43a8e8: r4 = pp[0x24f]
    //     0x43a8e8: add          r4, PP, #0xf, lsl #12
    //     0x43a8ec: ldr          r4, [r4, #0x240]
    // 0x43a8f0: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43a8f0: bl           0x391490
    //     0x43a8f4: ldur         r1, [fp, #-0x30]
    // 0x43a8f8: b 0x43a914
    //     0x43a8f8: b            0x43a914
    // 0x43a8fc: r0 = call 0x391a04
    //     0x43a8fc: bl           0x391a04
    // 0x43a900: r1 = r0
    //     0x43a900: mov          r1, r0
    //     0x43a904: stur         r0, [fp, #-0x30]
    // 0x43a908: r4 = pp[0x4c0]
    //     0x43a908: ldr          r4, [PP, #0x4c0]
    // 0x43a90c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43a90c: bl           0x391490
    //     0x43a910: ldur         r1, [fp, #-0x30]
    //     0x43a914: ldur         r0, [fp, #-0x38]
    //     0x43a918: stur         r1, [fp, #-0x30]
    //     0x43a91c: cmp          r0, r22
    // 0x43a920: b.eq 0x43aae4
    //     0x43a920: b.eq         0x43aae4
    // 0x43a924: r0 = call 0x31d844
    //     0x43a924: bl           0x31d844
    // 0x43a928: r1 = r0
    //     0x43a928: mov          r1, r0
    // 0x43a92c: r0 = pp[0x6310]
    //     0x43a92c: ldr          r0, [PP, #0x6310]
    // 0x43a930: StoreField: r1->field_27 = r0
    //     0x43a930: stur         r0, [r1, #0x27]
    //     0x43a934: fmov         d0, #1.00000000
    // 0x43a938: StoreField: r1->field_7 = d0
    //     0x43a938: stur         d0, [r1, #7]
    // 0x43a93c: d0 = pp[0x9b0]
    //     0x43a93c: add          r17, PP, #0x10, lsl #12
    //     0x43a940: ldr          d0, [r17, #0x9a0]
    // 0x43a944: StoreField: r1->field_f = d0
    //     0x43a944: stur         d0, [r1, #0xf]
    // 0x43a948: d0 = pp[0xc70]
    //     0x43a948: add          r17, PP, #0x10, lsl #12
    //     0x43a94c: ldr          d0, [r17, #0xc60]
    // 0x43a950: ArrayStore: r1[0] = d0  ; List_8
    //     0x43a950: stur         d0, [r1, #0x17]
    // 0x43a954: d0 = pp[0x901]
    //     0x43a954: add          r17, PP, #0x11, lsl #12
    //     0x43a958: ldr          d0, [r17, #0x8f0]
    // 0x43a95c: StoreField: r1->field_1f = d0
    //     0x43a95c: stur         d0, [r1, #0x1f]
    //     0x43a960: ldur         r0, [fp, #-0x38]
    // 0x43a964: LoadField: r2 = r0->field_b
    //     0x43a964: ldur         r2, [r0, #0xb]
    //     0x43a968: add          r2, r2, HEAP, lsl #32
    //     0x43a96c: cmp          r2, r22
    // 0x43a970: b.ne 0x43a97c
    //     0x43a970: b.ne         0x43a97c
    // 0x43a974: r5 = pp[0x148]
    //     0x43a974: ldr          r5, [PP, #0x148]
    // 0x43a978: b 0x43a980
    //     0x43a978: b            0x43a980
    // 0x43a97c: r5 = r2
    //     0x43a97c: mov          r5, r2
    // 0x43a980: r2 = r1
    //     0x43a980: mov          r2, r1
    //     0x43a984: ldur         r1, [fp, #-8]
    // 0x43a988: r3 = pp[0x8f9]
    //     0x43a988: add          r3, PP, #0x11, lsl #12
    //     0x43a98c: ldr          r3, [r3, #0x8e8]
    // 0x43a990: r0 = soul_flutter_international$biz$game$page_game_fruit_winner_dialog__GameFruitWinnerDialogState::_userCrownHeadWidget()
    //     0x43a990: bl           0x43b338
    //     0x43a994: stur         r0, [fp, #-0x48]
    // 0x43a998: r0 = call 0x3949ec
    //     0x43a998: bl           0x3949ec
    // 0x43a99c: r3 = r0
    //     0x43a99c: mov          r3, r0
    // 0x43a9a0: r0 = pp[0xbc7]
    //     0x43a9a0: add          r0, PP, #0xf, lsl #12
    //     0x43a9a4: ldr          r0, [r0, #0xbb8]
    //     0x43a9a8: stur         r3, [fp, #-0x50]
    // 0x43a9ac: StoreField: r3->field_13 = r0
    //     0x43a9ac: stur         r0, [r3, #0x13]
    //     0x43a9b0: ldur         r0, [fp, #-0x38]
    // 0x43a9b4: LoadField: r2 = r0->field_7
    //     0x43a9b4: ldur         r2, [r0, #7]
    //     0x43a9b8: add          r2, r2, HEAP, lsl #32
    //     0x43a9bc: ldur         r1, [fp, #-8]
    // 0x43a9c0: r0 = soul_flutter_international$biz$game$page_game_fruit_winner_dialog__GameFruitWinnerDialogState::_userFlexibleWidget()
    //     0x43a9c0: bl           0x43b27c
    //     0x43a9c4: stur         r0, [fp, #-0x58]
    // 0x43a9c8: r0 = call 0x3949ec
    //     0x43a9c8: bl           0x3949ec
    // 0x43a9cc: r3 = r0
    //     0x43a9cc: mov          r3, r0
    // 0x43a9d0: r0 = pp[0x950]
    //     0x43a9d0: add          r0, PP, #0x10, lsl #12
    //     0x43a9d4: ldr          r0, [r0, #0x940]
    //     0x43a9d8: stur         r3, [fp, #-0x68]
    // 0x43a9dc: StoreField: r3->field_13 = r0
    //     0x43a9dc: stur         r0, [r3, #0x13]
    //     0x43a9e0: ldur         r0, [fp, #-0x38]
    // 0x43a9e4: LoadField: r2 = r0->field_f
    //     0x43a9e4: ldur         r2, [r0, #0xf]
    //     0x43a9e8: add          r2, r2, HEAP, lsl #32
    //     0x43a9ec: ldur         r1, [fp, #-8]
    // 0x43a9f0: r0 = soul_flutter_international$biz$game$page_game_fruit_winner_dialog__GameFruitWinnerDialogState::_coinLabelWidget()
    //     0x43a9f0: bl           0x43b0c4
    // 0x43a9f4: r1 = NULL
    //     0x43a9f4: mov          r1, NULL
    //     0x43a9f8: mov          r2, #0xa
    //     0x43a9fc: stur         r0, [fp, #-0x38]
    // 0x43aa00: r0 = call 0x61f920
    //     0x43aa00: bl           0x61f920
    // 0x43aa04: r2 = r0
    //     0x43aa04: mov          r2, r0
    //     0x43aa08: ldur         r0, [fp, #-0x48]
    //     0x43aa0c: stur         r2, [fp, #-0x70]
    // 0x43aa10: StoreField: r2->field_f = r0
    //     0x43aa10: stur         r0, [r2, #0xf]
    //     0x43aa14: ldur         r0, [fp, #-0x50]
    // 0x43aa18: StoreField: r2->field_13 = r0
    //     0x43aa18: stur         r0, [r2, #0x13]
    //     0x43aa1c: ldur         r0, [fp, #-0x58]
    // 0x43aa20: ArrayStore: r2[0] = r0  ; List_8
    //     0x43aa20: stur         r0, [r2, #0x17]
    //     0x43aa24: ldur         r0, [fp, #-0x68]
    // 0x43aa28: StoreField: r2->field_1b = r0
    //     0x43aa28: stur         r0, [r2, #0x1b]
    //     0x43aa2c: ldur         r0, [fp, #-0x38]
    // 0x43aa30: StoreField: r2->field_1f = r0
    //     0x43aa30: stur         r0, [r2, #0x1f]
    // 0x43aa34: r1 = pp[0x5c58]
    //     0x43aa34: ldr          r1, [PP, #0x5c58]
    // 0x43aa38: r0 = call 0x61e854
    //     0x43aa38: bl           0x61e854
    // 0x43aa3c: r1 = r0
    //     0x43aa3c: mov          r1, r0
    //     0x43aa40: ldur         r0, [fp, #-0x70]
    //     0x43aa44: stur         r1, [fp, #-0x38]
    // 0x43aa48: StoreField: r1->field_f = r0
    //     0x43aa48: stur         r0, [r1, #0xf]
    //     0x43aa4c: mov          r0, #0xa
    // 0x43aa50: StoreField: r1->field_b = r0
    //     0x43aa50: stur         r0, [r1, #0xb]
    // 0x43aa54: r0 = call 0x39310c
    //     0x43aa54: bl           0x39310c
    // 0x43aa58: r1 = r0
    //     0x43aa58: mov          r1, r0
    // 0x43aa5c: r0 = pp[0x862]
    //     0x43aa5c: add          r0, PP, #0xa, lsl #12
    //     0x43aa60: ldr          r0, [r0, #0x858]
    //     0x43aa64: stur         r1, [fp, #-0x48]
    // 0x43aa68: StoreField: r1->field_f = r0
    //     0x43aa68: stur         r0, [r1, #0xf]
    // 0x43aa6c: r2 = pp[0xaee]
    //     0x43aa6c: add          r2, PP, #0xe, lsl #12
    //     0x43aa70: ldr          r2, [r2, #0xae0]
    // 0x43aa74: StoreField: r1->field_13 = r2
    //     0x43aa74: stur         r2, [r1, #0x13]
    // 0x43aa78: r3 = pp[0xaf6]
    //     0x43aa78: add          r3, PP, #0xe, lsl #12
    //     0x43aa7c: ldr          r3, [r3, #0xae8]
    // 0x43aa80: ArrayStore: r1[0] = r3  ; List_8
    //     0x43aa80: stur         r3, [r1, #0x17]
    // 0x43aa84: r4 = pp[0xb6e]
    //     0x43aa84: add          r4, PP, #0xe, lsl #12
    //     0x43aa88: ldr          r4, [r4, #0xb60]
    // 0x43aa8c: StoreField: r1->field_1b = r4
    //     0x43aa8c: stur         r4, [r1, #0x1b]
    // 0x43aa90: r5 = pp[0xb06]
    //     0x43aa90: add          r5, PP, #0xe, lsl #12
    //     0x43aa94: ldr          r5, [r5, #0xaf8]
    // 0x43aa98: StoreField: r1->field_23 = r5
    //     0x43aa98: stur         r5, [r1, #0x23]
    // 0x43aa9c: r6 = pp[0xb2]
    //     0x43aa9c: add          r6, PP, #0xa, lsl #12
    //     0x43aaa0: ldr          r6, [r6, #0xa8]
    // 0x43aaa4: StoreField: r1->field_2b = r6
    //     0x43aaa4: stur         r6, [r1, #0x2b]
    // 0x43aaa8: StoreField: r1->field_2f = xzr
    //     0x43aaa8: stur         xzr, [r1, #0x2f]
    //     0x43aaac: ldur         r7, [fp, #-0x38]
    // 0x43aab0: StoreField: r1->field_b = r7
    //     0x43aab0: stur         r7, [r1, #0xb]
    // 0x43aab4: r0 = call 0x391a04
    //     0x43aab4: bl           0x391a04
    //     0x43aab8: stur         r0, [fp, #-0x38]
    // 0x43aabc: BARRIER = pp[0x50d]
    //     0x43aabc: add          BARRIER, PP, #0x15, lsl #12
    //     0x43aac0: ldr          BARRIER, [BARRIER, #0x4f8]
    //     0x43aac4: ldur         lr, [fp, #-0x48]
    //     0x43aac8: stp          lr, BARRIER, [SP]
    // 0x43aacc: r1 = r0
    //     0x43aacc: mov          r1, r0
    // 0x43aad0: r4 = pp[0x24f]
    //     0x43aad0: add          r4, PP, #0xf, lsl #12
    //     0x43aad4: ldr          r4, [r4, #0x240]
    // 0x43aad8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43aad8: bl           0x391490
    //     0x43aadc: ldur         r5, [fp, #-0x38]
    // 0x43aae0: b 0x43aafc
    //     0x43aae0: b            0x43aafc
    // 0x43aae4: r0 = call 0x391a04
    //     0x43aae4: bl           0x391a04
    // 0x43aae8: r1 = r0
    //     0x43aae8: mov          r1, r0
    //     0x43aaec: stur         r0, [fp, #-0x38]
    // 0x43aaf0: r4 = pp[0x4c0]
    //     0x43aaf0: ldr          r4, [PP, #0x4c0]
    // 0x43aaf4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43aaf4: bl           0x391490
    //     0x43aaf8: ldur         r5, [fp, #-0x38]
    //     0x43aafc: ldur         r3, [fp, #-0x20]
    //     0x43ab00: ldur         r0, [fp, #-0x30]
    //     0x43ab04: mov          r4, #6
    // 0x43ab08: r2 = r4
    //     0x43ab08: mov          r2, r4
    //     0x43ab0c: stur         r5, [fp, #-0x38]
    // 0x43ab10: r1 = NULL
    //     0x43ab10: mov          r1, NULL
    // 0x43ab14: r0 = call 0x61f920
    //     0x43ab14: bl           0x61f920
    // 0x43ab18: r2 = r0
    //     0x43ab18: mov          r2, r0
    //     0x43ab1c: ldur         r0, [fp, #-0x20]
    //     0x43ab20: stur         r2, [fp, #-0x48]
    // 0x43ab24: StoreField: r2->field_f = r0
    //     0x43ab24: stur         r0, [r2, #0xf]
    //     0x43ab28: ldur         r0, [fp, #-0x30]
    // 0x43ab2c: StoreField: r2->field_13 = r0
    //     0x43ab2c: stur         r0, [r2, #0x13]
    //     0x43ab30: ldur         r0, [fp, #-0x38]
    // 0x43ab34: ArrayStore: r2[0] = r0  ; List_8
    //     0x43ab34: stur         r0, [r2, #0x17]
    // 0x43ab38: r1 = pp[0x5c58]
    //     0x43ab38: ldr          r1, [PP, #0x5c58]
    // 0x43ab3c: r0 = call 0x61e854
    //     0x43ab3c: bl           0x61e854
    // 0x43ab40: r1 = r0
    //     0x43ab40: mov          r1, r0
    //     0x43ab44: ldur         r0, [fp, #-0x48]
    //     0x43ab48: stur         r1, [fp, #-0x20]
    // 0x43ab4c: StoreField: r1->field_f = r0
    //     0x43ab4c: stur         r0, [r1, #0xf]
    //     0x43ab50: mov          r2, #6
    // 0x43ab54: StoreField: r1->field_b = r2
    //     0x43ab54: stur         r2, [r1, #0xb]
    // 0x43ab58: r0 = call 0x3a1414
    //     0x43ab58: bl           0x3a1414
    // 0x43ab5c: r1 = r0
    //     0x43ab5c: mov          r1, r0
    // 0x43ab60: r0 = pp[0x5140]
    //     0x43ab60: ldr          r0, [PP, #0x5140]
    //     0x43ab64: stur         r1, [fp, #-0x30]
    // 0x43ab68: StoreField: r1->field_f = r0
    //     0x43ab68: stur         r0, [r1, #0xf]
    // 0x43ab6c: r0 = pp[0xaee]
    //     0x43ab6c: add          r0, PP, #0xe, lsl #12
    //     0x43ab70: ldr          r0, [r0, #0xae0]
    // 0x43ab74: StoreField: r1->field_13 = r0
    //     0x43ab74: stur         r0, [r1, #0x13]
    // 0x43ab78: r2 = pp[0xaf6]
    //     0x43ab78: add          r2, PP, #0xe, lsl #12
    //     0x43ab7c: ldr          r2, [r2, #0xae8]
    // 0x43ab80: ArrayStore: r1[0] = r2  ; List_8
    //     0x43ab80: stur         r2, [r1, #0x17]
    // 0x43ab84: r3 = pp[0xb6e]
    //     0x43ab84: add          r3, PP, #0xe, lsl #12
    //     0x43ab88: ldr          r3, [r3, #0xb60]
    // 0x43ab8c: StoreField: r1->field_1b = r3
    //     0x43ab8c: stur         r3, [r1, #0x1b]
    // 0x43ab90: r4 = pp[0xb06]
    //     0x43ab90: add          r4, PP, #0xe, lsl #12
    //     0x43ab94: ldr          r4, [r4, #0xaf8]
    // 0x43ab98: StoreField: r1->field_23 = r4
    //     0x43ab98: stur         r4, [r1, #0x23]
    // 0x43ab9c: r5 = pp[0xb2]
    //     0x43ab9c: add          r5, PP, #0xa, lsl #12
    //     0x43aba0: ldr          r5, [r5, #0xa8]
    // 0x43aba4: StoreField: r1->field_2b = r5
    //     0x43aba4: stur         r5, [r1, #0x2b]
    // 0x43aba8: StoreField: r1->field_2f = xzr
    //     0x43aba8: stur         xzr, [r1, #0x2f]
    //     0x43abac: ldur         r6, [fp, #-0x20]
    // 0x43abb0: StoreField: r1->field_b = r6
    //     0x43abb0: stur         r6, [r1, #0xb]
    // 0x43abb4: r0 = call 0x391a04
    //     0x43abb4: bl           0x391a04
    //     0x43abb8: stur         r0, [fp, #-0x20]
    //     0x43abbc: ldur         BARRIER, [fp, #-0x18]
    //     0x43abc0: ldur         lr, [fp, #-0x30]
    //     0x43abc4: stp          lr, BARRIER, [SP]
    // 0x43abc8: r1 = r0
    //     0x43abc8: mov          r1, r0
    // 0x43abcc: r4 = pp[0x20f]
    //     0x43abcc: add          r4, PP, #0xf, lsl #12
    //     0x43abd0: ldr          r4, [r4, #0x200]
    // 0x43abd4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43abd4: bl           0x391490
    // 0x43abd8: r1 = pp[0xade]
    //     0x43abd8: add          r1, PP, #0xe, lsl #12
    //     0x43abdc: ldr          r1, [r1, #0xad0]
    // 0x43abe0: r0 = call 0x39fb14
    //     0x43abe0: bl           0x39fb14
    // 0x43abe4: r1 = r0
    //     0x43abe4: mov          r1, r0
    //     0x43abe8: mov          r0, #1
    // 0x43abec: StoreField: r1->field_13 = r0
    //     0x43abec: stur         r0, [r1, #0x13]
    // 0x43abf0: r0 = pp[0xae6]
    //     0x43abf0: add          r0, PP, #0xe, lsl #12
    //     0x43abf4: ldr          r0, [r0, #0xad8]
    // 0x43abf8: StoreField: r1->field_1b = r0
    //     0x43abf8: stur         r0, [r1, #0x1b]
    //     0x43abfc: ldur         r0, [fp, #-0x20]
    // 0x43ac00: StoreField: r1->field_b = r0
    //     0x43ac00: stur         r0, [r1, #0xb]
    // 0x43ac04: r0 = r1
    //     0x43ac04: mov          r0, r1
    // 0x43ac08: b 0x43acbc
    //     0x43ac08: b            0x43acbc
    //     0x43ac0c: fmov         d0, #13.00000000
    // 0x43ac10: r0 = call 0x2e3578
    //     0x43ac10: bl           0x2e3578
    //     0x43ac14: fmov         d0, #13.00000000
    //     0x43ac18: stur         r0, [fp, #-0x18]
    // 0x43ac1c: StoreField: r0->field_7 = d0
    //     0x43ac1c: stur         d0, [r0, #7]
    // 0x43ac20: d1 = pp[0x74e8]
    //     0x43ac20: ldr          d1, [PP, #0x74e8]
    // 0x43ac24: StoreField: r0->field_f = d1
    //     0x43ac24: stur         d1, [r0, #0xf]
    // 0x43ac28: ArrayStore: r0[0] = d0  ; List_8
    //     0x43ac28: stur         d0, [r0, #0x17]
    // 0x43ac2c: StoreField: r0->field_1f = xzr
    //     0x43ac2c: stur         xzr, [r0, #0x1f]
    // 0x43ac30: r1 = pp[0x77c]
    //     0x43ac30: add          r1, PP, #0xc, lsl #12
    //     0x43ac34: ldr          r1, [r1, #0x770]
    // 0x43ac38: r4 = pp[0x4c0]
    //     0x43ac38: ldr          r4, [PP, #0x4c0]
    // 0x43ac3c: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x43ac3c: bl           0x3a1dcc
    //     0x43ac40: stur         r0, [fp, #-0x20]
    // 0x43ac44: r0 = call 0x31abec
    //     0x43ac44: bl           0x31abec
    // 0x43ac48: r1 = r0
    //     0x43ac48: mov          r1, r0
    //     0x43ac4c: add          r0, NULL, #0x20
    //     0x43ac50: stur         r1, [fp, #-0x30]
    // 0x43ac54: StoreField: r1->field_7 = r0
    //     0x43ac54: stur         r0, [r1, #7]
    // 0x43ac58: r2 = pp[0x6050]
    //     0x43ac58: ldr          r2, [PP, #0x6050]
    // 0x43ac5c: StoreField: r1->field_b = r2
    //     0x43ac5c: stur         r2, [r1, #0xb]
    // 0x43ac60: r2 = pp[0xb8f]
    //     0x43ac60: add          r2, PP, #0xf, lsl #12
    //     0x43ac64: ldr          r2, [r2, #0xb80]
    // 0x43ac68: StoreField: r1->field_1f = r2
    //     0x43ac68: stur         r2, [r1, #0x1f]
    // 0x43ac6c: r0 = call 0x393bf8
    //     0x43ac6c: bl           0x393bf8
    // 0x43ac70: r1 = r0
    //     0x43ac70: mov          r1, r0
    //     0x43ac74: ldur         r0, [fp, #-0x20]
    //     0x43ac78: stur         r1, [fp, #-0x38]
    // 0x43ac7c: StoreField: r1->field_b = r0
    //     0x43ac7c: stur         r0, [r1, #0xb]
    //     0x43ac80: ldur         r0, [fp, #-0x30]
    // 0x43ac84: StoreField: r1->field_13 = r0
    //     0x43ac84: stur         r0, [r1, #0x13]
    // 0x43ac88: r0 = call 0x391a04
    //     0x43ac88: bl           0x391a04
    //     0x43ac8c: stur         r0, [fp, #-0x20]
    //     0x43ac90: ldur         BARRIER, [fp, #-0x18]
    // 0x43ac94: lr = pp[0xaae]
    //     0x43ac94: add          lr, PP, #0xe, lsl #12
    //     0x43ac98: ldr          lr, [lr, #0xaa0]
    //     0x43ac9c: stp          lr, BARRIER, [SP, #8]
    //     0x43aca0: ldur         BARRIER, [fp, #-0x38]
    //     0x43aca4: str          BARRIER, [SP]
    // 0x43aca8: r1 = r0
    //     0x43aca8: mov          r1, r0
    // 0x43acac: r4 = pp[0xcb8]
    //     0x43acac: add          r4, PP, #0x10, lsl #12
    //     0x43acb0: ldr          r4, [r4, #0xca8]
    // 0x43acb4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43acb4: bl           0x391490
    //     0x43acb8: ldur         r0, [fp, #-0x20]
    //     0x43acbc: ldur         r3, [fp, #-8]
    //     0x43acc0: ldur         r2, [fp, #-0x60]
    // 0x43acc4: r1 = r2
    //     0x43acc4: mov          r1, r2
    //     0x43acc8: add          r25, r1, #0x3b
    //     0x43accc: str          r0, [r25]
    // 0x43acd0: branchIfSmi(r0, 0x43acec)
    //     0x43acd0: tbz          r0, #0, 0x43acec
    //     0x43acd4: ldurb        r16, [r1, #-1]
    //     0x43acd8: ldurb        r17, [r0, #-1]
    //     0x43acdc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x43ace0: tst          BARRIER, HEAP, lsr #32
    // 0x43ace4: b.eq 0x43acec
    //     0x43ace4: b.eq         0x43acec
    // 0x43ace8: r0 = call 0x61db00
    //     0x43ace8: bl           0x61db00
    // 0x43acec: r1 = pp[0x5c58]
    //     0x43acec: ldr          r1, [PP, #0x5c58]
    // 0x43acf0: r0 = call 0x61e854
    //     0x43acf0: bl           0x61e854
    // 0x43acf4: r1 = r0
    //     0x43acf4: mov          r1, r0
    //     0x43acf8: ldur         r0, [fp, #-0x60]
    //     0x43acfc: stur         r1, [fp, #-0x18]
    // 0x43ad00: StoreField: r1->field_f = r0
    //     0x43ad00: stur         r0, [r1, #0xf]
    //     0x43ad04: mov          r0, #0x18
    // 0x43ad08: StoreField: r1->field_b = r0
    //     0x43ad08: stur         r0, [r1, #0xb]
    // 0x43ad0c: r0 = call 0x39310c
    //     0x43ad0c: bl           0x39310c
    // 0x43ad10: r2 = r0
    //     0x43ad10: mov          r2, r0
    // 0x43ad14: r0 = pp[0x862]
    //     0x43ad14: add          r0, PP, #0xa, lsl #12
    //     0x43ad18: ldr          r0, [r0, #0x858]
    //     0x43ad1c: stur         r2, [fp, #-0x20]
    // 0x43ad20: StoreField: r2->field_f = r0
    //     0x43ad20: stur         r0, [r2, #0xf]
    // 0x43ad24: r1 = pp[0xaee]
    //     0x43ad24: add          r1, PP, #0xe, lsl #12
    //     0x43ad28: ldr          r1, [r1, #0xae0]
    // 0x43ad2c: StoreField: r2->field_13 = r1
    //     0x43ad2c: stur         r1, [r2, #0x13]
    // 0x43ad30: r3 = pp[0xaf6]
    //     0x43ad30: add          r3, PP, #0xe, lsl #12
    //     0x43ad34: ldr          r3, [r3, #0xae8]
    // 0x43ad38: ArrayStore: r2[0] = r3  ; List_8
    //     0x43ad38: stur         r3, [r2, #0x17]
    // 0x43ad3c: r4 = pp[0xb6e]
    //     0x43ad3c: add          r4, PP, #0xe, lsl #12
    //     0x43ad40: ldr          r4, [r4, #0xb60]
    // 0x43ad44: StoreField: r2->field_1b = r4
    //     0x43ad44: stur         r4, [r2, #0x1b]
    // 0x43ad48: r5 = pp[0xb06]
    //     0x43ad48: add          r5, PP, #0xe, lsl #12
    //     0x43ad4c: ldr          r5, [r5, #0xaf8]
    // 0x43ad50: StoreField: r2->field_23 = r5
    //     0x43ad50: stur         r5, [r2, #0x23]
    // 0x43ad54: r6 = pp[0xb2]
    //     0x43ad54: add          r6, PP, #0xa, lsl #12
    //     0x43ad58: ldr          r6, [r6, #0xa8]
    // 0x43ad5c: StoreField: r2->field_2b = r6
    //     0x43ad5c: stur         r6, [r2, #0x2b]
    // 0x43ad60: StoreField: r2->field_2f = xzr
    //     0x43ad60: stur         xzr, [r2, #0x2f]
    //     0x43ad64: ldur         r1, [fp, #-0x18]
    // 0x43ad68: StoreField: r2->field_b = r1
    //     0x43ad68: stur         r1, [r2, #0xb]
    //     0x43ad6c: ldur         r1, [fp, #-8]
    // 0x43ad70: LoadField: r7 = r1->field_13
    //     0x43ad70: ldur         r7, [r1, #0x13]
    //     0x43ad74: add          r7, r7, HEAP, lsl #32
    // 0x43ad78: LoadField: r8 = r7->field_2b
    //     0x43ad78: ldur         r8, [r7, #0x2b]
    //     0x43ad7c: add          r8, r8, HEAP, lsl #32
    // 0x43ad80: r1 = r7
    //     0x43ad80: mov          r1, r7
    //     0x43ad84: stur         r8, [fp, #-8]
    // 0x43ad88: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_winner_dialog_GameFruitWinnerDialogNotifier::get_currentTime()
    //     0x43ad88: bl           0x43b044
    //     0x43ad8c: stur         r0, [fp, #-0x18]
    // 0x43ad90: r0 = soul_flutter_international$res$styles_TextStyles::smallerContent()
    //     0x43ad90: bl           0x3b47fc
    //     0x43ad94: stur         r0, [fp, #-0x30]
    // 0x43ad98: r0 = call 0x393bf8
    //     0x43ad98: bl           0x393bf8
    // 0x43ad9c: r1 = r0
    //     0x43ad9c: mov          r1, r0
    //     0x43ada0: ldur         r0, [fp, #-0x18]
    // 0x43ada4: StoreField: r1->field_b = r0
    //     0x43ada4: stur         r0, [r1, #0xb]
    //     0x43ada8: ldur         r0, [fp, #-0x30]
    // 0x43adac: StoreField: r1->field_13 = r0
    //     0x43adac: stur         r0, [r1, #0x13]
    //     0x43adb0: ldur         BARRIER, [fp, #-8]
    //     0x43adb4: str          BARRIER, [SP]
    // 0x43adb8: r2 = r1
    //     0x43adb8: mov          r2, r1
    // 0x43adbc: r1 = pp[0x5e7]
    //     0x43adbc: add          r1, PP, #0xf, lsl #12
    //     0x43adc0: ldr          r1, [r1, #0x5d8]
    // 0x43adc4: r3 = pp[0x1f2]
    //     0x43adc4: add          r3, PP, #0x12, lsl #12
    //     0x43adc8: ldr          r3, [r3, #0x1e0]
    // 0x43adcc: r5 = pp[0x5330]
    //     0x43adcc: ldr          r5, [PP, #0x5330]
    //     0x43add0: fmov         d0, #9.00000000
    // 0x43add4: r4 = pp[0x515]
    //     0x43add4: add          r4, PP, #0x15, lsl #12
    //     0x43add8: ldr          r4, [r4, #0x500]
    // 0x43addc: r0 = flutter$src$widgets$basic_Positioned::factory_ctor_directional()
    //     0x43addc: bl           0x399fcc
    // 0x43ade0: r1 = NULL
    //     0x43ade0: mov          r1, NULL
    //     0x43ade4: mov          r2, #4
    //     0x43ade8: stur         r0, [fp, #-8]
    // 0x43adec: r0 = call 0x61f920
    //     0x43adec: bl           0x61f920
    // 0x43adf0: r2 = r0
    //     0x43adf0: mov          r2, r0
    //     0x43adf4: ldur         r0, [fp, #-0x20]
    //     0x43adf8: stur         r2, [fp, #-0x18]
    // 0x43adfc: StoreField: r2->field_f = r0
    //     0x43adfc: stur         r0, [r2, #0xf]
    //     0x43ae00: ldur         r0, [fp, #-8]
    // 0x43ae04: StoreField: r2->field_13 = r0
    //     0x43ae04: stur         r0, [r2, #0x13]
    // 0x43ae08: r1 = pp[0x5c58]
    //     0x43ae08: ldr          r1, [PP, #0x5c58]
    // 0x43ae0c: r0 = call 0x61e854
    //     0x43ae0c: bl           0x61e854
    // 0x43ae10: r1 = r0
    //     0x43ae10: mov          r1, r0
    //     0x43ae14: ldur         r0, [fp, #-0x18]
    //     0x43ae18: stur         r1, [fp, #-8]
    // 0x43ae1c: StoreField: r1->field_f = r0
    //     0x43ae1c: stur         r0, [r1, #0xf]
    //     0x43ae20: mov          r0, #4
    // 0x43ae24: StoreField: r1->field_b = r0
    //     0x43ae24: stur         r0, [r1, #0xb]
    // 0x43ae28: r0 = call 0x39e6f4
    //     0x43ae28: bl           0x39e6f4
    // 0x43ae2c: r1 = r0
    //     0x43ae2c: mov          r1, r0
    // 0x43ae30: r0 = pp[0xf0e]
    //     0x43ae30: add          r0, PP, #0xe, lsl #12
    //     0x43ae34: ldr          r0, [r0, #0xf00]
    //     0x43ae38: stur         r1, [fp, #-0x18]
    // 0x43ae3c: StoreField: r1->field_f = r0
    //     0x43ae3c: stur         r0, [r1, #0xf]
    // 0x43ae40: r0 = pp[0xf16]
    //     0x43ae40: add          r0, PP, #0xe, lsl #12
    //     0x43ae44: ldr          r0, [r0, #0xf08]
    // 0x43ae48: ArrayStore: r1[0] = r0  ; List_8
    //     0x43ae48: stur         r0, [r1, #0x17]
    // 0x43ae4c: r0 = pp[0xf1e]
    //     0x43ae4c: add          r0, PP, #0xe, lsl #12
    //     0x43ae50: ldr          r0, [r0, #0xf10]
    // 0x43ae54: StoreField: r1->field_1b = r0
    //     0x43ae54: stur         r0, [r1, #0x1b]
    //     0x43ae58: ldur         r0, [fp, #-8]
    // 0x43ae5c: StoreField: r1->field_b = r0
    //     0x43ae5c: stur         r0, [r1, #0xb]
    // 0x43ae60: r0 = call 0x3a1da8
    //     0x43ae60: bl           0x3a1da8
    // 0x43ae64: d0 = pp[0x562]
    //     0x43ae64: add          r17, PP, #0x12, lsl #12
    //     0x43ae68: ldr          d0, [r17, #0x550]
    //     0x43ae6c: stur         r0, [fp, #-8]
    // 0x43ae70: StoreField: r0->field_b = d0
    //     0x43ae70: stur         d0, [r0, #0xb]
    // 0x43ae74: d0 = pp[0x51d]
    //     0x43ae74: add          r17, PP, #0x15, lsl #12
    //     0x43ae78: ldr          d0, [r17, #0x508]
    // 0x43ae7c: StoreField: r0->field_13 = d0
    //     0x43ae7c: stur         d0, [r0, #0x13]
    //     0x43ae80: ldur         r1, [fp, #-0x18]
    // 0x43ae84: StoreField: r0->field_1b = r1
    //     0x43ae84: stur         r1, [r0, #0x1b]
    // 0x43ae88: r1 = pp[0x525]
    //     0x43ae88: add          r1, PP, #0x15, lsl #12
    //     0x43ae8c: ldr          r1, [r1, #0x510]
    // 0x43ae90: StoreField: r0->field_1f = r1
    //     0x43ae90: stur         r1, [r0, #0x1f]
    // 0x43ae94: r0 = call 0x3949ec
    //     0x43ae94: bl           0x3949ec
    // 0x43ae98: r1 = r0
    //     0x43ae98: mov          r1, r0
    // 0x43ae9c: r0 = pp[0x572]
    //     0x43ae9c: add          r0, PP, #0x12, lsl #12
    //     0x43aea0: ldr          r0, [r0, #0x560]
    //     0x43aea4: stur         r1, [fp, #-0x18]
    // 0x43aea8: StoreField: r1->field_13 = r0
    //     0x43aea8: stur         r0, [r1, #0x13]
    // 0x43aeac: r0 = call 0x3a142c
    //     0x43aeac: bl           0x3a142c
    // 0x43aeb0: r1 = r0
    //     0x43aeb0: mov          r1, r0
    // 0x43aeb4: r0 = pp[0x57a]
    //     0x43aeb4: add          r0, PP, #0x12, lsl #12
    //     0x43aeb8: ldr          r0, [r0, #0x568]
    //     0x43aebc: stur         r1, [fp, #-0x20]
    // 0x43aec0: StoreField: r1->field_b = r0
    //     0x43aec0: stur         r0, [r1, #0xb]
    // 0x43aec4: r0 = pp[0x17f]
    //     0x43aec4: add          r0, PP, #0xf, lsl #12
    //     0x43aec8: ldr          r0, [r0, #0x170]
    // 0x43aecc: StoreField: r1->field_f = r0
    //     0x43aecc: stur         r0, [r1, #0xf]
    // 0x43aed0: r0 = pp[0x572]
    //     0x43aed0: add          r0, PP, #0x12, lsl #12
    //     0x43aed4: ldr          r0, [r0, #0x560]
    // 0x43aed8: StoreField: r1->field_13 = r0
    //     0x43aed8: stur         r0, [r1, #0x13]
    // 0x43aedc: ArrayStore: r1[0] = r0  ; List_8
    //     0x43aedc: stur         r0, [r1, #0x17]
    // 0x43aee0: r0 = call 0x391a04
    //     0x43aee0: bl           0x391a04
    //     0x43aee4: stur         r0, [fp, #-0x30]
    //     0x43aee8: ldur         BARRIER, [fp, #-0x20]
    //     0x43aeec: str          BARRIER, [SP]
    // 0x43aef0: r1 = r0
    //     0x43aef0: mov          r1, r0
    // 0x43aef4: r4 = pp[0x204]
    //     0x43aef4: add          r4, PP, #0xc, lsl #12
    //     0x43aef8: ldr          r4, [r4, #0x1f8]
    // 0x43aefc: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43aefc: bl           0x391490
    // 0x43af00: r0 = call 0x3a1d94
    //     0x43af00: bl           0x3a1d94
    //     0x43af04: ldur         r2, [fp, #-0x28]
    // 0x43af08: r1 = pp[0x52d]
    //     0x43af08: add          r1, PP, #0x15, lsl #12
    //     0x43af0c: ldr          r1, [r1, #0x518]
    //     0x43af10: stur         r0, [fp, #-0x20]
    // 0x43af14: r0 = call 0x61ec54
    //     0x43af14: bl           0x61ec54
    //     0x43af18: ldur         BARRIER, [fp, #-0x30]
    //     0x43af1c: stp          r0, BARRIER, [SP]
    //     0x43af20: ldur         r1, [fp, #-0x20]
    // 0x43af24: r4 = pp[0xece]
    //     0x43af24: add          r4, PP, #0xe, lsl #12
    //     0x43af28: ldr          r4, [r4, #0xec0]
    // 0x43af2c: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x43af2c: bl           0x3a18c4
    // 0x43af30: r1 = NULL
    //     0x43af30: mov          r1, NULL
    //     0x43af34: mov          r2, #6
    // 0x43af38: r0 = call 0x61f920
    //     0x43af38: bl           0x61f920
    // 0x43af3c: r2 = r0
    //     0x43af3c: mov          r2, r0
    //     0x43af40: ldur         r0, [fp, #-8]
    //     0x43af44: stur         r2, [fp, #-0x28]
    // 0x43af48: StoreField: r2->field_f = r0
    //     0x43af48: stur         r0, [r2, #0xf]
    //     0x43af4c: ldur         r0, [fp, #-0x18]
    // 0x43af50: StoreField: r2->field_13 = r0
    //     0x43af50: stur         r0, [r2, #0x13]
    //     0x43af54: ldur         r0, [fp, #-0x20]
    // 0x43af58: ArrayStore: r2[0] = r0  ; List_8
    //     0x43af58: stur         r0, [r2, #0x17]
    // 0x43af5c: r1 = pp[0x5c58]
    //     0x43af5c: ldr          r1, [PP, #0x5c58]
    // 0x43af60: r0 = call 0x61e854
    //     0x43af60: bl           0x61e854
    // 0x43af64: r1 = r0
    //     0x43af64: mov          r1, r0
    //     0x43af68: ldur         r0, [fp, #-0x28]
    //     0x43af6c: stur         r1, [fp, #-8]
    // 0x43af70: StoreField: r1->field_f = r0
    //     0x43af70: stur         r0, [r1, #0xf]
    //     0x43af74: mov          r0, #6
    // 0x43af78: StoreField: r1->field_b = r0
    //     0x43af78: stur         r0, [r1, #0xb]
    // 0x43af7c: r0 = call 0x39310c
    //     0x43af7c: bl           0x39310c
    // 0x43af80: r1 = r0
    //     0x43af80: mov          r1, r0
    // 0x43af84: r0 = pp[0x862]
    //     0x43af84: add          r0, PP, #0xa, lsl #12
    //     0x43af88: ldr          r0, [r0, #0x858]
    //     0x43af8c: stur         r1, [fp, #-0x18]
    // 0x43af90: StoreField: r1->field_f = r0
    //     0x43af90: stur         r0, [r1, #0xf]
    // 0x43af94: r0 = pp[0x297]
    //     0x43af94: add          r0, PP, #0xf, lsl #12
    //     0x43af98: ldr          r0, [r0, #0x288]
    // 0x43af9c: StoreField: r1->field_13 = r0
    //     0x43af9c: stur         r0, [r1, #0x13]
    // 0x43afa0: r0 = pp[0xaf6]
    //     0x43afa0: add          r0, PP, #0xe, lsl #12
    //     0x43afa4: ldr          r0, [r0, #0xae8]
    // 0x43afa8: ArrayStore: r1[0] = r0  ; List_8
    //     0x43afa8: stur         r0, [r1, #0x17]
    // 0x43afac: r0 = pp[0xb6e]
    //     0x43afac: add          r0, PP, #0xe, lsl #12
    //     0x43afb0: ldr          r0, [r0, #0xb60]
    // 0x43afb4: StoreField: r1->field_1b = r0
    //     0x43afb4: stur         r0, [r1, #0x1b]
    // 0x43afb8: r0 = pp[0xb06]
    //     0x43afb8: add          r0, PP, #0xe, lsl #12
    //     0x43afbc: ldr          r0, [r0, #0xaf8]
    // 0x43afc0: StoreField: r1->field_23 = r0
    //     0x43afc0: stur         r0, [r1, #0x23]
    // 0x43afc4: r0 = pp[0xb2]
    //     0x43afc4: add          r0, PP, #0xa, lsl #12
    //     0x43afc8: ldr          r0, [r0, #0xa8]
    // 0x43afcc: StoreField: r1->field_2b = r0
    //     0x43afcc: stur         r0, [r1, #0x2b]
    // 0x43afd0: StoreField: r1->field_2f = xzr
    //     0x43afd0: stur         xzr, [r1, #0x2f]
    //     0x43afd4: ldur         r2, [fp, #-8]
    // 0x43afd8: StoreField: r1->field_b = r2
    //     0x43afd8: stur         r2, [r1, #0xb]
    // 0x43afdc: r0 = call 0x3949f8
    //     0x43afdc: bl           0x3949f8
    // 0x43afe0: r1 = pp[0x58a]
    //     0x43afe0: add          r1, PP, #0x12, lsl #12
    //     0x43afe4: ldr          r1, [r1, #0x578]
    // 0x43afe8: StoreField: r0->field_f = r1
    //     0x43afe8: stur         r1, [r0, #0xf]
    // 0x43afec: StoreField: r0->field_13 = xzr
    //     0x43afec: stur         xzr, [r0, #0x13]
    //     0x43aff0: add          r1, NULL, #0x20
    // 0x43aff4: StoreField: r0->field_2f = r1
    //     0x43aff4: stur         r1, [r0, #0x2f]
    // 0x43aff8: r1 = pp[0xb2]
    //     0x43aff8: add          r1, PP, #0xa, lsl #12
    //     0x43affc: ldr          r1, [r1, #0xa8]
    // 0x43b000: StoreField: r0->field_33 = r1
    //     0x43b000: stur         r1, [r0, #0x33]
    // 0x43b004: r1 = pp[0x264]
    //     0x43b004: add          r1, PP, #0xc, lsl #12
    //     0x43b008: ldr          r1, [r1, #0x258]
    // 0x43b00c: StoreField: r0->field_37 = r1
    //     0x43b00c: stur         r1, [r0, #0x37]
    //     0x43b010: ldur         r1, [fp, #-0x18]
    // 0x43b014: StoreField: r0->field_b = r1
    //     0x43b014: stur         r1, [r0, #0xb]
    // 0x43b018: SP = fp
    //     0x43b018: mov          SP, fp
    // 0x43b01c: LeaveFrame
    //     0x43b01c: ldp          fp, lr, [SP], #0x10
    // 0x43b020: ret
    //     0x43b020: ret          
    // 0x43b024: r0 = call 0x61fa28
    //     0x43b024: bl           0x61fa28
    // 0x43b028: b 0x439b60
    //     0x43b028: b            0x439b60
    // 0x43b02c: r0 = call 0x61fe70
    //     0x43b02c: bl           0x61fe70
    // 0x43b030: r0 = call 0x61fe70
    //     0x43b030: bl           0x61fe70
    // 0x43b034: r0 = call 0x61fe70
    //     0x43b034: bl           0x61fe70
    // 0x43b038: r0 = call 0x61fe70
    //     0x43b038: bl           0x61fe70
    // 0x43b03c: r0 = call 0x61fe70
    //     0x43b03c: bl           0x61fe70
    // 0x43b040: r0 = call 0x61fe70
    //     0x43b040: bl           0x61fe70
  }

  _coinLabelWidget() {
    // ** addr: 0x43b0c4, size: 0x1b8
    // 0x43b0c4: EnterFrame
    //     0x43b0c4: stp          fp, lr, [SP, #-0x10]!
    //     0x43b0c8: mov          fp, SP
    // 0x43b0cc: AllocStack(0x28)
    //     0x43b0cc: sub          SP, SP, #0x28
    //     0x43b0d0: stur         r2, [fp, #-8]
    // 0x43b0d4: r0 = call 0x3a142c
    //     0x43b0d4: bl           0x3a142c
    // 0x43b0d8: r1 = r0
    //     0x43b0d8: mov          r1, r0
    // 0x43b0dc: r0 = pp[0x257]
    //     0x43b0dc: add          r0, PP, #0xf, lsl #12
    //     0x43b0e0: ldr          r0, [r0, #0x248]
    //     0x43b0e4: stur         r1, [fp, #-0x10]
    // 0x43b0e8: StoreField: r1->field_b = r0
    //     0x43b0e8: stur         r0, [r1, #0xb]
    // 0x43b0ec: r0 = pp[0x17f]
    //     0x43b0ec: add          r0, PP, #0xf, lsl #12
    //     0x43b0f0: ldr          r0, [r0, #0x170]
    // 0x43b0f4: StoreField: r1->field_f = r0
    //     0x43b0f4: stur         r0, [r1, #0xf]
    // 0x43b0f8: r0 = pp[0xdf6]
    //     0x43b0f8: add          r0, PP, #0xe, lsl #12
    //     0x43b0fc: ldr          r0, [r0, #0xde8]
    // 0x43b100: StoreField: r1->field_13 = r0
    //     0x43b100: stur         r0, [r1, #0x13]
    // 0x43b104: ArrayStore: r1[0] = r0  ; List_8
    //     0x43b104: stur         r0, [r1, #0x17]
    // 0x43b108: r0 = call 0x3949ec
    //     0x43b108: bl           0x3949ec
    // 0x43b10c: r1 = r0
    //     0x43b10c: mov          r1, r0
    // 0x43b110: r0 = pp[0x950]
    //     0x43b110: add          r0, PP, #0x10, lsl #12
    //     0x43b114: ldr          r0, [r0, #0x940]
    //     0x43b118: stur         r1, [fp, #-0x18]
    // 0x43b11c: StoreField: r1->field_f = r0
    //     0x43b11c: stur         r0, [r1, #0xf]
    //     0x43b120: ldur         r0, [fp, #-8]
    //     0x43b124: cmp          r0, r22
    // 0x43b128: b.ne 0x43b134
    //     0x43b128: b.ne         0x43b134
    // 0x43b12c: r2 = pp[0x148]
    //     0x43b12c: ldr          r2, [PP, #0x148]
    // 0x43b130: b 0x43b138
    //     0x43b130: b            0x43b138
    // 0x43b134: r2 = r0
    //     0x43b134: mov          r2, r0
    //     0x43b138: ldur         r0, [fp, #-0x10]
    //     0x43b13c: stur         r2, [fp, #-8]
    // 0x43b140: r0 = call 0x31abec
    //     0x43b140: bl           0x31abec
    // 0x43b144: r1 = r0
    //     0x43b144: mov          r1, r0
    //     0x43b148: add          r0, NULL, #0x20
    //     0x43b14c: stur         r1, [fp, #-0x20]
    // 0x43b150: StoreField: r1->field_7 = r0
    //     0x43b150: stur         r0, [r1, #7]
    // 0x43b154: r0 = pp[0x6050]
    //     0x43b154: ldr          r0, [PP, #0x6050]
    // 0x43b158: StoreField: r1->field_b = r0
    //     0x43b158: stur         r0, [r1, #0xb]
    // 0x43b15c: r0 = pp[0x7598]
    //     0x43b15c: ldr          r0, [PP, #0x7598]
    // 0x43b160: StoreField: r1->field_1f = r0
    //     0x43b160: stur         r0, [r1, #0x1f]
    // 0x43b164: r0 = pp[0xe4e]
    //     0x43b164: add          r0, PP, #0xe, lsl #12
    //     0x43b168: ldr          r0, [r0, #0xe40]
    // 0x43b16c: StoreField: r1->field_23 = r0
    //     0x43b16c: stur         r0, [r1, #0x23]
    // 0x43b170: r0 = call 0x393bf8
    //     0x43b170: bl           0x393bf8
    // 0x43b174: r2 = r0
    //     0x43b174: mov          r2, r0
    //     0x43b178: ldur         r0, [fp, #-8]
    //     0x43b17c: stur         r2, [fp, #-0x28]
    // 0x43b180: StoreField: r2->field_b = r0
    //     0x43b180: stur         r0, [r2, #0xb]
    //     0x43b184: ldur         r0, [fp, #-0x20]
    // 0x43b188: StoreField: r2->field_13 = r0
    //     0x43b188: stur         r0, [r2, #0x13]
    // 0x43b18c: r0 = pp[0x23f]
    //     0x43b18c: add          r0, PP, #0xf, lsl #12
    //     0x43b190: ldr          r0, [r0, #0x230]
    // 0x43b194: StoreField: r2->field_2b = r0
    //     0x43b194: stur         r0, [r2, #0x2b]
    //     0x43b198: mov          r0, #2
    // 0x43b19c: StoreField: r2->field_37 = r0
    //     0x43b19c: stur         r0, [r2, #0x37]
    // 0x43b1a0: r1 = pp[0xade]
    //     0x43b1a0: add          r1, PP, #0xe, lsl #12
    //     0x43b1a4: ldr          r1, [r1, #0xad0]
    // 0x43b1a8: r0 = call 0x3a1420
    //     0x43b1a8: bl           0x3a1420
    // 0x43b1ac: r3 = r0
    //     0x43b1ac: mov          r3, r0
    //     0x43b1b0: mov          r0, #1
    //     0x43b1b4: stur         r3, [fp, #-8]
    // 0x43b1b8: StoreField: r3->field_13 = r0
    //     0x43b1b8: stur         r0, [r3, #0x13]
    // 0x43b1bc: r0 = pp[0x960]
    //     0x43b1bc: add          r0, PP, #0x10, lsl #12
    //     0x43b1c0: ldr          r0, [r0, #0x950]
    // 0x43b1c4: StoreField: r3->field_1b = r0
    //     0x43b1c4: stur         r0, [r3, #0x1b]
    //     0x43b1c8: ldur         r0, [fp, #-0x28]
    // 0x43b1cc: StoreField: r3->field_b = r0
    //     0x43b1cc: stur         r0, [r3, #0xb]
    // 0x43b1d0: r1 = NULL
    //     0x43b1d0: mov          r1, NULL
    //     0x43b1d4: mov          r2, #6
    // 0x43b1d8: r0 = call 0x61f920
    //     0x43b1d8: bl           0x61f920
    // 0x43b1dc: r2 = r0
    //     0x43b1dc: mov          r2, r0
    //     0x43b1e0: ldur         r0, [fp, #-0x10]
    //     0x43b1e4: stur         r2, [fp, #-0x20]
    // 0x43b1e8: StoreField: r2->field_f = r0
    //     0x43b1e8: stur         r0, [r2, #0xf]
    //     0x43b1ec: ldur         r0, [fp, #-0x18]
    // 0x43b1f0: StoreField: r2->field_13 = r0
    //     0x43b1f0: stur         r0, [r2, #0x13]
    //     0x43b1f4: ldur         r0, [fp, #-8]
    // 0x43b1f8: ArrayStore: r2[0] = r0  ; List_8
    //     0x43b1f8: stur         r0, [r2, #0x17]
    // 0x43b1fc: r1 = pp[0x5c58]
    //     0x43b1fc: ldr          r1, [PP, #0x5c58]
    // 0x43b200: r0 = call 0x61e854
    //     0x43b200: bl           0x61e854
    // 0x43b204: r1 = r0
    //     0x43b204: mov          r1, r0
    //     0x43b208: ldur         r0, [fp, #-0x20]
    //     0x43b20c: stur         r1, [fp, #-8]
    // 0x43b210: StoreField: r1->field_f = r0
    //     0x43b210: stur         r0, [r1, #0xf]
    //     0x43b214: mov          r0, #6
    // 0x43b218: StoreField: r1->field_b = r0
    //     0x43b218: stur         r0, [r1, #0xb]
    // 0x43b21c: r0 = call 0x3a1414
    //     0x43b21c: bl           0x3a1414
    // 0x43b220: r1 = pp[0x5140]
    //     0x43b220: ldr          r1, [PP, #0x5140]
    // 0x43b224: StoreField: r0->field_f = r1
    //     0x43b224: stur         r1, [r0, #0xf]
    // 0x43b228: r1 = pp[0x297]
    //     0x43b228: add          r1, PP, #0xf, lsl #12
    //     0x43b22c: ldr          r1, [r1, #0x288]
    // 0x43b230: StoreField: r0->field_13 = r1
    //     0x43b230: stur         r1, [r0, #0x13]
    // 0x43b234: r1 = pp[0xaf6]
    //     0x43b234: add          r1, PP, #0xe, lsl #12
    //     0x43b238: ldr          r1, [r1, #0xae8]
    // 0x43b23c: ArrayStore: r0[0] = r1  ; List_8
    //     0x43b23c: stur         r1, [r0, #0x17]
    // 0x43b240: r1 = pp[0xb6e]
    //     0x43b240: add          r1, PP, #0xe, lsl #12
    //     0x43b244: ldr          r1, [r1, #0xb60]
    // 0x43b248: StoreField: r0->field_1b = r1
    //     0x43b248: stur         r1, [r0, #0x1b]
    // 0x43b24c: r1 = pp[0xb06]
    //     0x43b24c: add          r1, PP, #0xe, lsl #12
    //     0x43b250: ldr          r1, [r1, #0xaf8]
    // 0x43b254: StoreField: r0->field_23 = r1
    //     0x43b254: stur         r1, [r0, #0x23]
    // 0x43b258: r1 = pp[0xb2]
    //     0x43b258: add          r1, PP, #0xa, lsl #12
    //     0x43b25c: ldr          r1, [r1, #0xa8]
    // 0x43b260: StoreField: r0->field_2b = r1
    //     0x43b260: stur         r1, [r0, #0x2b]
    // 0x43b264: StoreField: r0->field_2f = xzr
    //     0x43b264: stur         xzr, [r0, #0x2f]
    //     0x43b268: ldur         r1, [fp, #-8]
    // 0x43b26c: StoreField: r0->field_b = r1
    //     0x43b26c: stur         r1, [r0, #0xb]
    // 0x43b270: SP = fp
    //     0x43b270: mov          SP, fp
    // 0x43b274: LeaveFrame
    //     0x43b274: ldp          fp, lr, [SP], #0x10
    // 0x43b278: ret
    //     0x43b278: ret          
  }

  _userFlexibleWidget() {
    // ** addr: 0x43b27c, size: 0xbc
    // 0x43b27c: EnterFrame
    //     0x43b27c: stp          fp, lr, [SP, #-0x10]!
    //     0x43b280: mov          fp, SP
    // 0x43b284: AllocStack(0x18)
    //     0x43b284: sub          SP, SP, #0x18
    //     0x43b288: cmp          r2, r22
    // 0x43b28c: b.ne 0x43b298
    //     0x43b28c: b.ne         0x43b298
    // 0x43b290: r0 = pp[0x148]
    //     0x43b290: ldr          r0, [PP, #0x148]
    // 0x43b294: b 0x43b29c
    //     0x43b294: b            0x43b29c
    // 0x43b298: r0 = r2
    //     0x43b298: mov          r0, r2
    //     0x43b29c: stur         r0, [fp, #-8]
    // 0x43b2a0: r0 = call 0x31abec
    //     0x43b2a0: bl           0x31abec
    // 0x43b2a4: r1 = r0
    //     0x43b2a4: mov          r1, r0
    //     0x43b2a8: add          r0, NULL, #0x20
    //     0x43b2ac: stur         r1, [fp, #-0x10]
    // 0x43b2b0: StoreField: r1->field_7 = r0
    //     0x43b2b0: stur         r0, [r1, #7]
    // 0x43b2b4: r0 = pp[0x6050]
    //     0x43b2b4: ldr          r0, [PP, #0x6050]
    // 0x43b2b8: StoreField: r1->field_b = r0
    //     0x43b2b8: stur         r0, [r1, #0xb]
    // 0x43b2bc: r0 = pp[0xb8f]
    //     0x43b2bc: add          r0, PP, #0xf, lsl #12
    //     0x43b2c0: ldr          r0, [r0, #0xb80]
    // 0x43b2c4: StoreField: r1->field_1f = r0
    //     0x43b2c4: stur         r0, [r1, #0x1f]
    // 0x43b2c8: r0 = pp[0xe4e]
    //     0x43b2c8: add          r0, PP, #0xe, lsl #12
    //     0x43b2cc: ldr          r0, [r0, #0xe40]
    // 0x43b2d0: StoreField: r1->field_23 = r0
    //     0x43b2d0: stur         r0, [r1, #0x23]
    // 0x43b2d4: r0 = call 0x393bf8
    //     0x43b2d4: bl           0x393bf8
    // 0x43b2d8: r2 = r0
    //     0x43b2d8: mov          r2, r0
    //     0x43b2dc: ldur         r0, [fp, #-8]
    //     0x43b2e0: stur         r2, [fp, #-0x18]
    // 0x43b2e4: StoreField: r2->field_b = r0
    //     0x43b2e4: stur         r0, [r2, #0xb]
    //     0x43b2e8: ldur         r0, [fp, #-0x10]
    // 0x43b2ec: StoreField: r2->field_13 = r0
    //     0x43b2ec: stur         r0, [r2, #0x13]
    // 0x43b2f0: r0 = pp[0x23f]
    //     0x43b2f0: add          r0, PP, #0xf, lsl #12
    //     0x43b2f4: ldr          r0, [r0, #0x230]
    // 0x43b2f8: StoreField: r2->field_2b = r0
    //     0x43b2f8: stur         r0, [r2, #0x2b]
    //     0x43b2fc: mov          r0, #2
    // 0x43b300: StoreField: r2->field_37 = r0
    //     0x43b300: stur         r0, [r2, #0x37]
    // 0x43b304: r1 = pp[0xade]
    //     0x43b304: add          r1, PP, #0xe, lsl #12
    //     0x43b308: ldr          r1, [r1, #0xad0]
    // 0x43b30c: r0 = call 0x3a1420
    //     0x43b30c: bl           0x3a1420
    //     0x43b310: mov          r1, #1
    // 0x43b314: StoreField: r0->field_13 = r1
    //     0x43b314: stur         r1, [r0, #0x13]
    // 0x43b318: r1 = pp[0x960]
    //     0x43b318: add          r1, PP, #0x10, lsl #12
    //     0x43b31c: ldr          r1, [r1, #0x950]
    // 0x43b320: StoreField: r0->field_1b = r1
    //     0x43b320: stur         r1, [r0, #0x1b]
    //     0x43b324: ldur         r1, [fp, #-0x18]
    // 0x43b328: StoreField: r0->field_b = r1
    //     0x43b328: stur         r1, [r0, #0xb]
    // 0x43b32c: SP = fp
    //     0x43b32c: mov          SP, fp
    // 0x43b330: LeaveFrame
    //     0x43b330: ldp          fp, lr, [SP], #0x10
    // 0x43b334: ret
    //     0x43b334: ret          
  }

  _userCrownHeadWidget() {
    // ** addr: 0x43b338, size: 0x244
    // 0x43b338: EnterFrame
    //     0x43b338: stp          fp, lr, [SP, #-0x10]!
    //     0x43b33c: mov          fp, SP
    // 0x43b340: AllocStack(0x58)
    //     0x43b340: sub          SP, SP, #0x58
    //     0x43b344: stur         r2, [fp, #-8]
    //     0x43b348: stur         r3, [fp, #-0x10]
    //     0x43b34c: stur         r5, [fp, #-0x18]
    // 0x43b350: CheckStackOverflow
    //     0x43b350: ldr          BARRIER, [THR, #0x38]
    //     0x43b354: cmp          SP, BARRIER
    //     0x43b358: b.ls         0x43b574
    // 0x43b35c: r0 = call 0x3a142c
    //     0x43b35c: bl           0x3a142c
    // 0x43b360: r1 = r0
    //     0x43b360: mov          r1, r0
    //     0x43b364: ldur         r0, [fp, #-0x10]
    //     0x43b368: stur         r1, [fp, #-0x20]
    // 0x43b36c: StoreField: r1->field_b = r0
    //     0x43b36c: stur         r0, [r1, #0xb]
    // 0x43b370: r0 = pp[0x17f]
    //     0x43b370: add          r0, PP, #0xf, lsl #12
    //     0x43b374: ldr          r0, [r0, #0x170]
    // 0x43b378: StoreField: r1->field_f = r0
    //     0x43b378: stur         r0, [r1, #0xf]
    // 0x43b37c: r0 = pp[0x871]
    //     0x43b37c: add          r0, PP, #0x11, lsl #12
    //     0x43b380: ldr          r0, [r0, #0x860]
    // 0x43b384: StoreField: r1->field_13 = r0
    //     0x43b384: stur         r0, [r1, #0x13]
    // 0x43b388: r0 = pp[0x421]
    //     0x43b388: add          r0, PP, #0x11, lsl #12
    //     0x43b38c: ldr          r0, [r0, #0x410]
    // 0x43b390: ArrayStore: r1[0] = r0  ; List_8
    //     0x43b390: stur         r0, [r1, #0x17]
    // 0x43b394: r0 = call 0x391a04
    //     0x43b394: bl           0x391a04
    //     0x43b398: stur         r0, [fp, #-0x10]
    // 0x43b39c: BARRIER = pp[0x871]
    //     0x43b39c: add          BARRIER, PP, #0x11, lsl #12
    //     0x43b3a0: ldr          BARRIER, [BARRIER, #0x860]
    // 0x43b3a4: lr = pp[0x421]
    //     0x43b3a4: add          lr, PP, #0x11, lsl #12
    //     0x43b3a8: ldr          lr, [lr, #0x410]
    //     0x43b3ac: stp          lr, BARRIER, [SP, #8]
    //     0x43b3b0: ldur         BARRIER, [fp, #-0x20]
    //     0x43b3b4: str          BARRIER, [SP]
    // 0x43b3b8: r1 = r0
    //     0x43b3b8: mov          r1, r0
    // 0x43b3bc: r4 = pp[0x879]
    //     0x43b3bc: add          r4, PP, #0x11, lsl #12
    //     0x43b3c0: ldr          r4, [r4, #0x868]
    // 0x43b3c4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43b3c4: bl           0x391490
    // 0x43b3c8: r1 = pp[0x5e7]
    //     0x43b3c8: add          r1, PP, #0xf, lsl #12
    //     0x43b3cc: ldr          r1, [r1, #0x5d8]
    // 0x43b3d0: r0 = call 0x399e40
    //     0x43b3d0: bl           0x399e40
    // 0x43b3d4: r1 = r0
    //     0x43b3d4: mov          r1, r0
    // 0x43b3d8: r0 = pp[0x237]
    //     0x43b3d8: add          r0, PP, #0xf, lsl #12
    //     0x43b3dc: ldr          r0, [r0, #0x228]
    //     0x43b3e0: stur         r1, [fp, #-0x20]
    // 0x43b3e4: ArrayStore: r1[0] = r0  ; List_8
    //     0x43b3e4: stur         r0, [r1, #0x17]
    //     0x43b3e8: ldur         r0, [fp, #-0x10]
    // 0x43b3ec: StoreField: r1->field_b = r0
    //     0x43b3ec: stur         r0, [r1, #0xb]
    // 0x43b3f0: r0 = call 0x2e3578
    //     0x43b3f0: bl           0x2e3578
    //     0x43b3f4: stur         r0, [fp, #-0x10]
    // 0x43b3f8: StoreField: r0->field_7 = xzr
    //     0x43b3f8: stur         xzr, [r0, #7]
    //     0x43b3fc: fmov         d0, #30.00000000
    // 0x43b400: StoreField: r0->field_f = d0
    //     0x43b400: stur         d0, [r0, #0xf]
    // 0x43b404: ArrayStore: r0[0] = xzr  ; List_8
    //     0x43b404: stur         xzr, [r0, #0x17]
    // 0x43b408: StoreField: r0->field_1f = xzr
    //     0x43b408: stur         xzr, [r0, #0x1f]
    // 0x43b40c: BARRIER = pp[0xbc7]
    //     0x43b40c: add          BARRIER, PP, #0xf, lsl #12
    //     0x43b410: ldr          BARRIER, [BARRIER, #0xbb8]
    //     0x43b414: str          BARRIER, [SP]
    //     0x43b418: ldur         r2, [fp, #-8]
    // 0x43b41c: r1 = NULL
    //     0x43b41c: mov          r1, NULL
    // 0x43b420: r4 = pp[0x827]
    //     0x43b420: add          r4, PP, #0xf, lsl #12
    //     0x43b424: ldr          r4, [r4, #0x818]
    // 0x43b428: r0 = flutter$src$painting$box_border_Border::factory_ctor_all()
    //     0x43b428: bl           0x391e08
    //     0x43b42c: stur         r0, [fp, #-8]
    // 0x43b430: r0 = call 0x352b04
    //     0x43b430: bl           0x352b04
    //     0x43b434: fmov         d0, #30.00000000
    //     0x43b438: stur         r0, [fp, #-0x28]
    // 0x43b43c: StoreField: r0->field_7 = d0
    //     0x43b43c: stur         d0, [r0, #7]
    // 0x43b440: StoreField: r0->field_f = d0
    //     0x43b440: stur         d0, [r0, #0xf]
    // 0x43b444: r0 = call 0x392f28
    //     0x43b444: bl           0x392f28
    // 0x43b448: r1 = r0
    //     0x43b448: mov          r1, r0
    //     0x43b44c: ldur         r0, [fp, #-0x28]
    //     0x43b450: stur         r1, [fp, #-0x30]
    // 0x43b454: StoreField: r1->field_7 = r0
    //     0x43b454: stur         r0, [r1, #7]
    // 0x43b458: StoreField: r1->field_b = r0
    //     0x43b458: stur         r0, [r1, #0xb]
    // 0x43b45c: StoreField: r1->field_f = r0
    //     0x43b45c: stur         r0, [r1, #0xf]
    // 0x43b460: StoreField: r1->field_13 = r0
    //     0x43b460: stur         r0, [r1, #0x13]
    // 0x43b464: r0 = call 0x391dd8
    //     0x43b464: bl           0x391dd8
    // 0x43b468: r1 = r0
    //     0x43b468: mov          r1, r0
    //     0x43b46c: ldur         r0, [fp, #-8]
    //     0x43b470: stur         r1, [fp, #-0x28]
    // 0x43b474: StoreField: r1->field_f = r0
    //     0x43b474: stur         r0, [r1, #0xf]
    //     0x43b478: ldur         r0, [fp, #-0x30]
    // 0x43b47c: StoreField: r1->field_13 = r0
    //     0x43b47c: stur         r0, [r1, #0x13]
    // 0x43b480: r0 = pp[0xb86]
    //     0x43b480: add          r0, PP, #0xe, lsl #12
    //     0x43b484: ldr          r0, [r0, #0xb78]
    // 0x43b488: StoreField: r1->field_23 = r0
    //     0x43b488: stur         r0, [r1, #0x23]
    // 0x43b48c: r0 = call 0x3a67fc
    //     0x43b48c: bl           0x3a67fc
    // 0x43b490: r1 = r0
    //     0x43b490: mov          r1, r0
    //     0x43b494: ldur         r0, [fp, #-0x18]
    //     0x43b498: stur         r1, [fp, #-8]
    // 0x43b49c: StoreField: r1->field_b = r0
    //     0x43b49c: stur         r0, [r1, #0xb]
    // 0x43b4a0: d0 = pp[0x891]
    //     0x43b4a0: add          r17, PP, #0x11, lsl #12
    //     0x43b4a4: ldr          d0, [r17, #0x880]
    // 0x43b4a8: StoreField: r1->field_13 = d0
    //     0x43b4a8: stur         d0, [r1, #0x13]
    //     0x43b4ac: add          r0, NULL, #0x30
    // 0x43b4b0: StoreField: r1->field_1b = r0
    //     0x43b4b0: stur         r0, [r1, #0x1b]
    // 0x43b4b4: r0 = call 0x391a04
    //     0x43b4b4: bl           0x391a04
    //     0x43b4b8: stur         r0, [fp, #-0x18]
    // 0x43b4bc: BARRIER = pp[0x360]
    //     0x43b4bc: add          BARRIER, PP, #0x10, lsl #12
    //     0x43b4c0: ldr          BARRIER, [BARRIER, #0x350]
    // 0x43b4c4: lr = pp[0x360]
    //     0x43b4c4: add          lr, PP, #0x10, lsl #12
    //     0x43b4c8: ldr          lr, [lr, #0x350]
    //     0x43b4cc: stp          lr, BARRIER, [SP, #0x18]
    //     0x43b4d0: ldur         BARRIER, [fp, #-0x10]
    //     0x43b4d4: ldur         lr, [fp, #-0x28]
    //     0x43b4d8: stp          lr, BARRIER, [SP, #8]
    //     0x43b4dc: ldur         BARRIER, [fp, #-8]
    //     0x43b4e0: str          BARRIER, [SP]
    // 0x43b4e4: r1 = r0
    //     0x43b4e4: mov          r1, r0
    // 0x43b4e8: r4 = pp[0x899]
    //     0x43b4e8: add          r4, PP, #0x11, lsl #12
    //     0x43b4ec: ldr          r4, [r4, #0x888]
    // 0x43b4f0: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43b4f0: bl           0x391490
    // 0x43b4f4: r1 = NULL
    //     0x43b4f4: mov          r1, NULL
    //     0x43b4f8: mov          r2, #4
    // 0x43b4fc: r0 = call 0x61f920
    //     0x43b4fc: bl           0x61f920
    // 0x43b500: r2 = r0
    //     0x43b500: mov          r2, r0
    //     0x43b504: ldur         r0, [fp, #-0x20]
    //     0x43b508: stur         r2, [fp, #-8]
    // 0x43b50c: StoreField: r2->field_f = r0
    //     0x43b50c: stur         r0, [r2, #0xf]
    //     0x43b510: ldur         r0, [fp, #-0x18]
    // 0x43b514: StoreField: r2->field_13 = r0
    //     0x43b514: stur         r0, [r2, #0x13]
    // 0x43b518: r1 = pp[0x5c58]
    //     0x43b518: ldr          r1, [PP, #0x5c58]
    // 0x43b51c: r0 = call 0x61e854
    //     0x43b51c: bl           0x61e854
    // 0x43b520: r1 = r0
    //     0x43b520: mov          r1, r0
    //     0x43b524: ldur         r0, [fp, #-8]
    //     0x43b528: stur         r1, [fp, #-0x10]
    // 0x43b52c: StoreField: r1->field_f = r0
    //     0x43b52c: stur         r0, [r1, #0xf]
    //     0x43b530: mov          r0, #4
    // 0x43b534: StoreField: r1->field_b = r0
    //     0x43b534: stur         r0, [r1, #0xb]
    // 0x43b538: r0 = call 0x39e6f4
    //     0x43b538: bl           0x39e6f4
    // 0x43b53c: r1 = pp[0xaae]
    //     0x43b53c: add          r1, PP, #0xe, lsl #12
    //     0x43b540: ldr          r1, [r1, #0xaa0]
    // 0x43b544: StoreField: r0->field_f = r1
    //     0x43b544: stur         r1, [r0, #0xf]
    // 0x43b548: r1 = pp[0xf16]
    //     0x43b548: add          r1, PP, #0xe, lsl #12
    //     0x43b54c: ldr          r1, [r1, #0xf08]
    // 0x43b550: ArrayStore: r0[0] = r1  ; List_8
    //     0x43b550: stur         r1, [r0, #0x17]
    // 0x43b554: r1 = pp[0xf1e]
    //     0x43b554: add          r1, PP, #0xe, lsl #12
    //     0x43b558: ldr          r1, [r1, #0xf10]
    // 0x43b55c: StoreField: r0->field_1b = r1
    //     0x43b55c: stur         r1, [r0, #0x1b]
    //     0x43b560: ldur         r1, [fp, #-0x10]
    // 0x43b564: StoreField: r0->field_b = r1
    //     0x43b564: stur         r1, [r0, #0xb]
    // 0x43b568: SP = fp
    //     0x43b568: mov          SP, fp
    // 0x43b56c: LeaveFrame
    //     0x43b56c: ldp          fp, lr, [SP], #0x10
    // 0x43b570: ret
    //     0x43b570: ret          
    // 0x43b574: r0 = call 0x61fa28
    //     0x43b574: bl           0x61fa28
    // 0x43b578: b 0x43b35c
    //     0x43b578: b            0x43b35c
  }

  _anon_closure() {
    // ** addr: 0x43b57c, size: 0x58
    // 0x43b57c: EnterFrame
    //     0x43b57c: stp          fp, lr, [SP, #-0x10]!
    //     0x43b580: mov          fp, SP
    //     0x43b584: ldr          r0, [fp, #0x10]
    // 0x43b588: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x43b588: ldur         r1, [r0, #0x17]
    //     0x43b58c: add          r1, r1, HEAP, lsl #32
    // 0x43b590: CheckStackOverflow
    //     0x43b590: ldr          BARRIER, [THR, #0x38]
    //     0x43b594: cmp          SP, BARRIER
    //     0x43b598: b.ls         0x43b5c8
    // 0x43b59c: LoadField: r0 = r1->field_f
    //     0x43b59c: ldur         r0, [r1, #0xf]
    //     0x43b5a0: add          r0, r0, HEAP, lsl #32
    // 0x43b5a4: LoadField: r1 = r0->field_f
    //     0x43b5a4: ldur         r1, [r0, #0xf]
    //     0x43b5a8: add          r1, r1, HEAP, lsl #32
    //     0x43b5ac: cmp          r1, r22
    // 0x43b5b0: b.eq 0x43b5d0
    //     0x43b5b0: b.eq         0x43b5d0
    // 0x43b5b4: r0 = soul_flutter_international$biz$game$page_game_fruit_winner_dialog_GameFruitWinnerDialog::dismissWinnerDialog()
    //     0x43b5b4: bl           0x43b5d4
    // 0x43b5b8: r0 = NULL
    //     0x43b5b8: mov          r0, NULL
    // 0x43b5bc: SP = fp
    //     0x43b5bc: mov          SP, fp
    // 0x43b5c0: LeaveFrame
    //     0x43b5c0: ldp          fp, lr, [SP], #0x10
    // 0x43b5c4: ret
    //     0x43b5c4: ret          
    // 0x43b5c8: r0 = call 0x61fa28
    //     0x43b5c8: bl           0x61fa28
    // 0x43b5cc: b 0x43b59c
    //     0x43b5cc: b            0x43b59c
    // 0x43b5d0: r0 = call 0x61ffd0
    //     0x43b5d0: bl           0x61ffd0
  }

  dispose() {
    // ** addr: 0x452430, size: 0x3c
    // 0x452430: EnterFrame
    //     0x452430: stp          fp, lr, [SP, #-0x10]!
    //     0x452434: mov          fp, SP
    // 0x452438: CheckStackOverflow
    //     0x452438: ldr          BARRIER, [THR, #0x38]
    //     0x45243c: cmp          SP, BARRIER
    //     0x452440: b.ls         0x452464
    // 0x452444: LoadField: r0 = r1->field_13
    //     0x452444: ldur         r0, [r1, #0x13]
    //     0x452448: add          r0, r0, HEAP, lsl #32
    // 0x45244c: r1 = r0
    //     0x45244c: mov          r1, r0
    // 0x452450: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_winner_dialog_GameFruitWinnerDialogNotifier::release()
    //     0x452450: bl           0x45246c
    // 0x452454: r0 = NULL
    //     0x452454: mov          r0, NULL
    // 0x452458: SP = fp
    //     0x452458: mov          SP, fp
    // 0x45245c: LeaveFrame
    //     0x45245c: ldp          fp, lr, [SP], #0x10
    // 0x452460: ret
    //     0x452460: ret          
    // 0x452464: r0 = call 0x61fa28
    //     0x452464: bl           0x61fa28
    // 0x452468: b 0x452444
    //     0x452468: b            0x452444
  }

  initState() {
    // ** addr: 0x4d90e4, size: 0x60
    // 0x4d90e4: EnterFrame
    //     0x4d90e4: stp          fp, lr, [SP, #-0x10]!
    //     0x4d90e8: mov          fp, SP
    // 0x4d90ec: CheckStackOverflow
    //     0x4d90ec: ldr          BARRIER, [THR, #0x38]
    //     0x4d90f0: cmp          SP, BARRIER
    //     0x4d90f4: b.ls         0x4d9138
    // 0x4d90f8: LoadField: r0 = r1->field_13
    //     0x4d90f8: ldur         r0, [r1, #0x13]
    //     0x4d90fc: add          r0, r0, HEAP, lsl #32
    // 0x4d9100: LoadField: r2 = r1->field_b
    //     0x4d9100: ldur         r2, [r1, #0xb]
    //     0x4d9104: add          r2, r2, HEAP, lsl #32
    //     0x4d9108: cmp          r2, r22
    // 0x4d910c: b.eq 0x4d9140
    //     0x4d910c: b.eq         0x4d9140
    // 0x4d9110: LoadField: r1 = r2->field_b
    //     0x4d9110: ldur         r1, [r2, #0xb]
    // 0x4d9114: LoadField: r3 = r2->field_13
    //     0x4d9114: ldur         r3, [r2, #0x13]
    //     0x4d9118: add          r3, r3, HEAP, lsl #32
    // 0x4d911c: r2 = r1
    //     0x4d911c: mov          r2, r1
    // 0x4d9120: r1 = r0
    //     0x4d9120: mov          r1, r0
    // 0x4d9124: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_winner_dialog_GameFruitWinnerDialogNotifier::startCountDown()
    //     0x4d9124: bl           0x4d9144
    // 0x4d9128: r0 = NULL
    //     0x4d9128: mov          r0, NULL
    // 0x4d912c: SP = fp
    //     0x4d912c: mov          SP, fp
    // 0x4d9130: LeaveFrame
    //     0x4d9130: ldp          fp, lr, [SP], #0x10
    // 0x4d9134: ret
    //     0x4d9134: ret          
    // 0x4d9138: r0 = call 0x61fa28
    //     0x4d9138: bl           0x61fa28
    // 0x4d913c: b 0x4d90f8
    //     0x4d913c: b            0x4d90f8
    // 0x4d9140: r0 = call 0x61ffd0
    //     0x4d9140: bl           0x61ffd0
  }

  dismissWinnerDialog() {
    // ** addr: 0x43b5d4, size: 0xd4
    // 0x43b5d4: EnterFrame
    //     0x43b5d4: stp          fp, lr, [SP, #-0x10]!
    //     0x43b5d8: mov          fp, SP
    // 0x43b5dc: AllocStack(0x28)
    //     0x43b5dc: sub          SP, SP, #0x28
    // 0x43b5e0: CheckStackOverflow
    //     0x43b5e0: ldr          BARRIER, [THR, #0x38]
    //     0x43b5e4: cmp          SP, BARRIER
    //     0x43b5e8: b.ls         0x43b6a0
    //     0x43b5ec: add          BARRIER, NULL, #0x20
    //     0x43b5f0: str          BARRIER, [SP]
    // 0x43b5f4: r4 = pp[0x380]
    //     0x43b5f4: add          r4, PP, #0x10, lsl #12
    //     0x43b5f8: ldr          r4, [r4, #0x370]
    // 0x43b5fc: r0 = flutter$src$widgets$navigator_Navigator::of()
    //     0x43b5fc: bl           0x3a4e94
    //     0x43b600: stur         r0, [fp, #-8]
    // 0x43b604: r1 = LoadClassIdInstr(r0)
    //     0x43b604: ldur         r1, [r0, #-1]
    //     0x43b608: ubfx         r1, r1, #0xc, #0x14
    //     0x43b60c: cmp          r1, #0x8e7
    // 0x43b610: b.ne 0x43b66c
    //     0x43b610: b.ne         0x43b66c
    // 0x43b614: r1 = r0
    //     0x43b614: mov          r1, r0
    // 0x43b618: r0 = flutter$src$widgets$navigator_NavigatorState::canPop()
    //     0x43b618: bl           0x3a4d94
    //     0x43b61c: tbz          r0, #4, 0x43b650
    // 0x43b620: r0 = flutter_boost$src$boost_navigator_BoostNavigator::get_instance()
    //     0x43b620: bl           0x3a4c98
    //     0x43b624: stur         r0, [fp, #-0x10]
    // 0x43b628: CheckStackOverflow
    //     0x43b628: ldr          BARRIER, [THR, #0x90]
    //     0x43b62c: stp          BARRIER, NULL, [SP]
    // 0x43b630: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x43b630: bl           0x27c0c8
    // 0x43b634: BARRIER = pp[0x120]
    //     0x43b634: ldr          BARRIER, [PP, #0x120]
    //     0x43b638: ldur         lr, [fp, #-0x10]
    //     0x43b63c: stp          lr, BARRIER, [SP, #8]
    //     0x43b640: str          r0, [SP]
    // 0x43b644: r4 = pp[0x58]
    //     0x43b644: ldr          r4, [PP, #0x58]
    // 0x43b648: r0 = flutter_boost$src$boost_navigator_BoostNavigator::pop()
    //     0x43b648: bl           0x3a264c
    // 0x43b64c: b 0x43b690
    //     0x43b64c: b            0x43b690
    // 0x43b650: BARRIER = pp[0x1a8]
    //     0x43b650: ldr          BARRIER, [PP, #0x1a8]
    //     0x43b654: ldur         lr, [fp, #-8]
    //     0x43b658: stp          lr, BARRIER, [SP, #8]
    //     0x43b65c: str          NULL, [SP]
    // 0x43b660: r4 = pp[0x58]
    //     0x43b660: ldr          r4, [PP, #0x58]
    // 0x43b664: r0 = flutter$src$widgets$navigator_NavigatorState::pop()
    //     0x43b664: bl           0x5e0d74
    // 0x43b668: b 0x43b690
    //     0x43b668: b            0x43b690
    // 0x43b66c: r1 = LoadClassIdInstr(r0)
    //     0x43b66c: ldur         r1, [r0, #-1]
    //     0x43b670: ubfx         r1, r1, #0xc, #0x14
    // 0x43b674: BARRIER = pp[0x1a8]
    //     0x43b674: ldr          BARRIER, [PP, #0x1a8]
    //     0x43b678: stp          r0, BARRIER, [SP]
    // 0x43b67c: r0 = r1
    //     0x43b67c: mov          r0, r1
    // 0x43b680: r4 = pp[0x910]
    //     0x43b680: ldr          r4, [PP, #0x910]
    //     0x43b684: sub          lr, r0, #1, lsl #12
    //     0x43b688: ldr          lr, [r21, lr, lsl #3]
    // 0x43b68c: r0 = [R]()
    //     0x43b68c: blr          lr
    // 0x43b690: r0 = NULL
    //     0x43b690: mov          r0, NULL
    // 0x43b694: SP = fp
    //     0x43b694: mov          SP, fp
    // 0x43b698: LeaveFrame
    //     0x43b698: ldp          fp, lr, [SP], #0x10
    // 0x43b69c: ret
    //     0x43b69c: ret          
    // 0x43b6a0: r0 = call 0x61fa28
    //     0x43b6a0: bl           0x61fa28
    // 0x43b6a4: b 0x43b5ec
    //     0x43b6a4: b            0x43b5ec
  }

  createState() {
    // ** addr: 0x4c3be4, size: 0x50
    // 0x4c3be4: EnterFrame
    //     0x4c3be4: stp          fp, lr, [SP, #-0x10]!
    //     0x4c3be8: mov          fp, SP
    // 0x4c3bec: AllocStack(8)
    //     0x4c3bec: sub          SP, SP, #8
    // 0x4c3bf0: CheckStackOverflow
    //     0x4c3bf0: ldr          BARRIER, [THR, #0x38]
    //     0x4c3bf4: cmp          SP, BARRIER
    //     0x4c3bf8: b.ls         0x4c3c2c
    // 0x4c3bfc: r0 = call 0x4c3d7c
    //     0x4c3bfc: bl           0x4c3d7c
    // 0x4c3c00: r1 = r0
    //     0x4c3c00: mov          r1, r0
    //     0x4c3c04: stur         r0, [fp, #-8]
    // 0x4c3c08: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_winner_dialog_GameFruitWinnerDialogNotifier::ctor()
    //     0x4c3c08: bl           0x4c3c40
    // 0x4c3c0c: r1 = pp[0x5aa]
    //     0x4c3c0c: add          r1, PP, #0x12, lsl #12
    //     0x4c3c10: ldr          r1, [r1, #0x598]
    // 0x4c3c14: r0 = call 0x4c3c34
    //     0x4c3c14: bl           0x4c3c34
    //     0x4c3c18: ldur         r1, [fp, #-8]
    // 0x4c3c1c: StoreField: r0->field_13 = r1
    //     0x4c3c1c: stur         r1, [r0, #0x13]
    // 0x4c3c20: SP = fp
    //     0x4c3c20: mov          SP, fp
    // 0x4c3c24: LeaveFrame
    //     0x4c3c24: ldp          fp, lr, [SP], #0x10
    // 0x4c3c28: ret
    //     0x4c3c28: ret          
    // 0x4c3c2c: r0 = call 0x61fa28
    //     0x4c3c2c: bl           0x61fa28
    // 0x4c3c30: b 0x4c3bfc
    //     0x4c3c30: b            0x4c3bfc
  }

  showWinnerDialog() {
    // ** addr: 0x4d2978, size: 0x94
    // 0x4d2978: EnterFrame
    //     0x4d2978: stp          fp, lr, [SP, #-0x10]!
    //     0x4d297c: mov          fp, SP
    // 0x4d2980: AllocStack(0x30)
    //     0x4d2980: sub          SP, SP, #0x30
    // 0x4d2984: r4 = r1
    //     0x4d2984: mov          r4, r1
    //     0x4d2988: stur         r1, [fp, #-0x10]
    //     0x4d298c: stur         r3, [fp, #-0x18]
    // 0x4d2990: CheckStackOverflow
    //     0x4d2990: ldr          BARRIER, [THR, #0x38]
    //     0x4d2994: cmp          SP, BARRIER
    //     0x4d2998: b.ls         0x4d2a04
    //     0x4d299c: sbfiz        r0, r2, #1, #0x1f
    //     0x4d29a0: cmp          r2, r0, asr #1
    // 0x4d29a4: b.eq 0x4d29b0
    //     0x4d29a4: b.eq         0x4d29b0
    // 0x4d29a8: r0 = call 0x61fba8
    //     0x4d29a8: bl           0x61fba8
    // 0x4d29ac: StoreField: r0->field_7 = r2
    //     0x4d29ac: stur         r2, [r0, #7]
    //     0x4d29b0: stur         r0, [fp, #-8]
    //     0x4d29b4: mov          r1, #2
    // 0x4d29b8: r0 = call 0x61e890
    //     0x4d29b8: bl           0x61e890
    // 0x4d29bc: r1 = r0
    //     0x4d29bc: mov          r1, r0
    //     0x4d29c0: ldur         r0, [fp, #-8]
    // 0x4d29c4: StoreField: r1->field_f = r0
    //     0x4d29c4: stur         r0, [r1, #0xf]
    //     0x4d29c8: ldur         r0, [fp, #-0x18]
    // 0x4d29cc: StoreField: r1->field_13 = r0
    //     0x4d29cc: stur         r0, [r1, #0x13]
    // 0x4d29d0: r2 = r1
    //     0x4d29d0: mov          r2, r1
    // 0x4d29d4: r1 = pp[0xc59]
    //     0x4d29d4: add          r1, PP, #0x11, lsl #12
    //     0x4d29d8: ldr          r1, [r1, #0xc48]
    // 0x4d29dc: r0 = call 0x61ec54
    //     0x4d29dc: bl           0x61ec54
    //     0x4d29e0: stp          r0, NULL, [SP, #8]
    //     0x4d29e4: ldur         BARRIER, [fp, #-0x10]
    //     0x4d29e8: str          BARRIER, [SP]
    // 0x4d29ec: r4 = pp[0x58]
    //     0x4d29ec: ldr          r4, [PP, #0x58]
    // 0x4d29f0: r0 = flutter$src$material$dialog_::showDialog()
    //     0x4d29f0: bl           0x41bcc4
    // 0x4d29f4: r0 = NULL
    //     0x4d29f4: mov          r0, NULL
    // 0x4d29f8: SP = fp
    //     0x4d29f8: mov          SP, fp
    // 0x4d29fc: LeaveFrame
    //     0x4d29fc: ldp          fp, lr, [SP], #0x10
    // 0x4d2a00: ret
    //     0x4d2a00: ret          
    // 0x4d2a04: r0 = call 0x61fa28
    //     0x4d2a04: bl           0x61fa28
    // 0x4d2a08: b 0x4d299c
    //     0x4d2a08: b            0x4d299c
  }

  _anon_closure() {
    // ** addr: 0x4d2a0c, size: 0x5c
    // 0x4d2a0c: EnterFrame
    //     0x4d2a0c: stp          fp, lr, [SP, #-0x10]!
    //     0x4d2a10: mov          fp, SP
    // 0x4d2a14: AllocStack(0x10)
    //     0x4d2a14: sub          SP, SP, #0x10
    //     0x4d2a18: ldr          r0, [fp, #0x18]
    // 0x4d2a1c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d2a1c: ldur         r1, [r0, #0x17]
    //     0x4d2a20: add          r1, r1, HEAP, lsl #32
    // 0x4d2a24: LoadField: r0 = r1->field_f
    //     0x4d2a24: ldur         r0, [r1, #0xf]
    //     0x4d2a28: add          r0, r0, HEAP, lsl #32
    // 0x4d2a2c: LoadField: r2 = r1->field_13
    //     0x4d2a2c: ldur         r2, [r1, #0x13]
    //     0x4d2a30: add          r2, r2, HEAP, lsl #32
    //     0x4d2a34: stur         r2, [fp, #-0x10]
    //     0x4d2a38: sbfx         r1, r0, #1, #0x1f
    // 0x4d2a3c: branchIfSmi(r0, 0x4d2a44)
    //     0x4d2a3c: tbz          r0, #0, 0x4d2a44
    // 0x4d2a40: LoadField: r1 = r0->field_7
    //     0x4d2a40: ldur         r1, [r0, #7]
    //     0x4d2a44: stur         r1, [fp, #-8]
    // 0x4d2a48: r0 = call 0x4d2a68
    //     0x4d2a48: bl           0x4d2a68
    //     0x4d2a4c: ldur         r1, [fp, #-8]
    // 0x4d2a50: StoreField: r0->field_b = r1
    //     0x4d2a50: stur         r1, [r0, #0xb]
    //     0x4d2a54: ldur         r1, [fp, #-0x10]
    // 0x4d2a58: StoreField: r0->field_13 = r1
    //     0x4d2a58: stur         r1, [r0, #0x13]
    // 0x4d2a5c: SP = fp
    //     0x4d2a5c: mov          SP, fp
    // 0x4d2a60: LeaveFrame
    //     0x4d2a60: ldp          fp, lr, [SP], #0x10
    // 0x4d2a64: ret
    //     0x4d2a64: ret          
  }
