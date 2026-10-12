// lib: , url: soul_flutter_international$api$party_api_service


  sendRedPocket() {
    // ** addr: 0x429de0, size: 0x140
    // 0x429de0: EnterFrame
    //     0x429de0: stp          fp, lr, [SP, #-0x10]!
    //     0x429de4: mov          fp, SP
    // 0x429de8: AllocStack(0x40)
    //     0x429de8: sub          SP, SP, #0x40
    //     0x429dec: stur         r1, [fp, #-8]
    //     0x429df0: stur         r2, [fp, #-0x10]
    //     0x429df4: stur         r3, [fp, #-0x18]
    //     0x429df8: stur         r5, [fp, #-0x20]
    //     0x429dfc: stur         r6, [fp, #-0x28]
    // 0x429e00: CheckStackOverflow
    //     0x429e00: ldr          BARRIER, [THR, #0x38]
    //     0x429e04: cmp          SP, BARRIER
    //     0x429e08: b.ls         0x429f18
    //     0x429e0c: mov          r1, #2
    // 0x429e10: r0 = call 0x61e890
    //     0x429e10: bl           0x61e890
    // 0x429e14: r3 = r0
    //     0x429e14: mov          r3, r0
    //     0x429e18: ldur         r0, [fp, #-0x20]
    //     0x429e1c: stur         r3, [fp, #-0x30]
    // 0x429e20: StoreField: r3->field_f = r0
    //     0x429e20: stur         r0, [r3, #0xf]
    //     0x429e24: ldur         r0, [fp, #-0x28]
    // 0x429e28: StoreField: r3->field_13 = r0
    //     0x429e28: stur         r0, [r3, #0x13]
    // 0x429e2c: r1 = NULL
    //     0x429e2c: mov          r1, NULL
    //     0x429e30: mov          r2, #0x10
    // 0x429e34: r0 = call 0x61f920
    //     0x429e34: bl           0x61f920
    // 0x429e38: r2 = r0
    //     0x429e38: mov          r2, r0
    // 0x429e3c: BARRIER = pp[0xb98]
    //     0x429e3c: add          BARRIER, PP, #0x10, lsl #12
    //     0x429e40: ldr          BARRIER, [BARRIER, #0xb88]
    // 0x429e44: StoreField: r2->field_f = r16
    //     0x429e44: stur         r16, [r2, #0xf]
    //     0x429e48: ldur         r0, [fp, #-8]
    // 0x429e4c: StoreField: r2->field_13 = r0
    //     0x429e4c: stur         r0, [r2, #0x13]
    // 0x429e50: BARRIER = pp[0xba0]
    //     0x429e50: add          BARRIER, PP, #0x10, lsl #12
    //     0x429e54: ldr          BARRIER, [BARRIER, #0xb90]
    // 0x429e58: ArrayStore: r2[0] = r16  ; List_8
    //     0x429e58: stur         r16, [r2, #0x17]
    //     0x429e5c: ldur         r3, [fp, #-0x10]
    //     0x429e60: sbfiz        r0, r3, #1, #0x1f
    //     0x429e64: cmp          r3, r0, asr #1
    // 0x429e68: b.eq 0x429e74
    //     0x429e68: b.eq         0x429e74
    // 0x429e6c: r0 = call 0x61fba8
    //     0x429e6c: bl           0x61fba8
    // 0x429e70: StoreField: r0->field_7 = r3
    //     0x429e70: stur         r3, [r0, #7]
    // 0x429e74: StoreField: r2->field_1b = r0
    //     0x429e74: stur         r0, [r2, #0x1b]
    // 0x429e78: BARRIER = pp[0xba8]
    //     0x429e78: add          BARRIER, PP, #0x10, lsl #12
    //     0x429e7c: ldr          BARRIER, [BARRIER, #0xb98]
    // 0x429e80: StoreField: r2->field_1f = r16
    //     0x429e80: stur         r16, [r2, #0x1f]
    //     0x429e84: ldur         r3, [fp, #-0x18]
    //     0x429e88: sbfiz        r0, r3, #1, #0x1f
    //     0x429e8c: cmp          r3, r0, asr #1
    // 0x429e90: b.eq 0x429e9c
    //     0x429e90: b.eq         0x429e9c
    // 0x429e94: r0 = call 0x61fba8
    //     0x429e94: bl           0x61fba8
    // 0x429e98: StoreField: r0->field_7 = r3
    //     0x429e98: stur         r3, [r0, #7]
    // 0x429e9c: StoreField: r2->field_23 = r0
    //     0x429e9c: stur         r0, [r2, #0x23]
    // 0x429ea0: BARRIER = pp[0xbb0]
    //     0x429ea0: add          BARRIER, PP, #0x10, lsl #12
    //     0x429ea4: ldr          BARRIER, [BARRIER, #0xba0]
    // 0x429ea8: StoreField: r2->field_27 = r16
    //     0x429ea8: stur         r16, [r2, #0x27]
    //     0x429eac: mov          BARRIER, #4
    // 0x429eb0: StoreField: r2->field_2b = r16
    //     0x429eb0: stur         r16, [r2, #0x2b]
    // 0x429eb4: BARRIER = pp[0xbf0]
    //     0x429eb4: ldr          BARRIER, [PP, #0xbf0]
    //     0x429eb8: stp          r2, BARRIER, [SP]
    // 0x429ebc: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x429ebc: bl           0x27c0c8
    //     0x429ec0: ldur         r2, [fp, #-0x30]
    // 0x429ec4: r1 = pp[0xbb8]
    //     0x429ec4: add          r1, PP, #0x10, lsl #12
    //     0x429ec8: ldr          r1, [r1, #0xba8]
    //     0x429ecc: stur         r0, [fp, #-8]
    // 0x429ed0: r0 = call 0x61ec54
    //     0x429ed0: bl           0x61ec54
    //     0x429ed4: ldur         r2, [fp, #-0x30]
    // 0x429ed8: r1 = pp[0xbc0]
    //     0x429ed8: add          r1, PP, #0x10, lsl #12
    //     0x429edc: ldr          r1, [r1, #0xbb0]
    //     0x429ee0: stur         r0, [fp, #-0x20]
    // 0x429ee4: r0 = call 0x61ec54
    //     0x429ee4: bl           0x61ec54
    //     0x429ee8: str          r0, [SP]
    //     0x429eec: ldur         r2, [fp, #-8]
    //     0x429ef0: ldur         r3, [fp, #-0x20]
    // 0x429ef4: r1 = pp[0xbc8]
    //     0x429ef4: add          r1, PP, #0x10, lsl #12
    //     0x429ef8: ldr          r1, [r1, #0xbb8]
    // 0x429efc: r4 = pp[0xbd0]
    //     0x429efc: add          r4, PP, #0x10, lsl #12
    //     0x429f00: ldr          r4, [r4, #0xbc0]
    // 0x429f04: r0 = soul_flutter_international$common$plugins$http_Http::postSimple()
    //     0x429f04: bl           0x41e430
    // 0x429f08: r0 = NULL
    //     0x429f08: mov          r0, NULL
    // 0x429f0c: SP = fp
    //     0x429f0c: mov          SP, fp
    // 0x429f10: LeaveFrame
    //     0x429f10: ldp          fp, lr, [SP], #0x10
    // 0x429f14: ret
    //     0x429f14: ret          
    // 0x429f18: r0 = call 0x61fa28
    //     0x429f18: bl           0x61fa28
    // 0x429f1c: b 0x429e0c
    //     0x429f1c: b            0x429e0c
  }

  getPartyRedPocket() {
    // ** addr: 0x4d5b88, size: 0x6c
    // 0x4d5b88: EnterFrame
    //     0x4d5b88: stp          fp, lr, [SP, #-0x10]!
    //     0x4d5b8c: mov          fp, SP
    // 0x4d5b90: AllocStack(8)
    //     0x4d5b90: sub          SP, SP, #8
    //     0x4d5b94: stur         r1, [fp, #-8]
    // 0x4d5b98: CheckStackOverflow
    //     0x4d5b98: ldr          BARRIER, [THR, #0x38]
    //     0x4d5b9c: cmp          SP, BARRIER
    //     0x4d5ba0: b.ls         0x4d5bec
    //     0x4d5ba4: mov          r1, #1
    // 0x4d5ba8: r0 = call 0x61e890
    //     0x4d5ba8: bl           0x61e890
    // 0x4d5bac: r1 = r0
    //     0x4d5bac: mov          r1, r0
    //     0x4d5bb0: ldur         r0, [fp, #-8]
    // 0x4d5bb4: StoreField: r1->field_f = r0
    //     0x4d5bb4: stur         r0, [r1, #0xf]
    // 0x4d5bb8: r2 = r1
    //     0x4d5bb8: mov          r2, r1
    // 0x4d5bbc: r1 = pp[0xdb0]
    //     0x4d5bbc: add          r1, PP, #0x10, lsl #12
    //     0x4d5bc0: ldr          r1, [r1, #0xda0]
    // 0x4d5bc4: r0 = call 0x61ec54
    //     0x4d5bc4: bl           0x61ec54
    // 0x4d5bc8: r2 = r0
    //     0x4d5bc8: mov          r2, r0
    // 0x4d5bcc: r1 = pp[0xdb8]
    //     0x4d5bcc: add          r1, PP, #0x10, lsl #12
    //     0x4d5bd0: ldr          r1, [r1, #0xda8]
    // 0x4d5bd4: r4 = pp[0x278]
    //     0x4d5bd4: ldr          r4, [PP, #0x278]
    // 0x4d5bd8: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x4d5bd8: bl           0x3ab958
    // 0x4d5bdc: r0 = NULL
    //     0x4d5bdc: mov          r0, NULL
    // 0x4d5be0: SP = fp
    //     0x4d5be0: mov          SP, fp
    // 0x4d5be4: LeaveFrame
    //     0x4d5be4: ldp          fp, lr, [SP], #0x10
    // 0x4d5be8: ret
    //     0x4d5be8: ret          
    // 0x4d5bec: r0 = call 0x61fa28
    //     0x4d5bec: bl           0x61fa28
    // 0x4d5bf0: b 0x4d5ba4
    //     0x4d5bf0: b            0x4d5ba4
  }

  _anon_closure() {
    // ** addr: 0x4d5bf4, size: 0x78
    // 0x4d5bf4: EnterFrame
    //     0x4d5bf4: stp          fp, lr, [SP, #-0x10]!
    //     0x4d5bf8: mov          fp, SP
    // 0x4d5bfc: AllocStack(0x20)
    //     0x4d5bfc: sub          SP, SP, #0x20
    //     0x4d5c00: ldr          r0, [fp, #0x18]
    // 0x4d5c04: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d5c04: ldur         r1, [r0, #0x17]
    //     0x4d5c08: add          r1, r1, HEAP, lsl #32
    // 0x4d5c0c: CheckStackOverflow
    //     0x4d5c0c: ldr          BARRIER, [THR, #0x38]
    //     0x4d5c10: cmp          SP, BARRIER
    //     0x4d5c14: b.ls         0x4d5c64
    // 0x4d5c18: LoadField: r0 = r1->field_f
    //     0x4d5c18: ldur         r0, [r1, #0xf]
    //     0x4d5c1c: add          r0, r0, HEAP, lsl #32
    //     0x4d5c20: stur         r0, [fp, #-8]
    // 0x4d5c24: r0 = call 0x4d6274
    //     0x4d5c24: bl           0x4d6274
    // 0x4d5c28: r1 = r0
    //     0x4d5c28: mov          r1, r0
    //     0x4d5c2c: ldr          r2, [fp, #0x10]
    //     0x4d5c30: stur         r0, [fp, #-0x10]
    // 0x4d5c34: r0 = soul_flutter_international$model$party_model_PartyRedPocketInfo::ctor_fromJson()
    //     0x4d5c34: bl           0x4d5c6c
    //     0x4d5c38: ldur         BARRIER, [fp, #-8]
    //     0x4d5c3c: ldur         lr, [fp, #-0x10]
    //     0x4d5c40: stp          lr, BARRIER, [SP]
    //     0x4d5c44: ldur         r0, [fp, #-8]
    // 0x4d5c48: r4 = pp[0x140]
    //     0x4d5c48: ldr          r4, [PP, #0x140]
    // 0x4d5c4c: LoadField: r2 = r0->field_1f
    //     0x4d5c4c: ldur         r2, [r0, #0x1f]
    // 0x4d5c50: r0 = [R]()
    //     0x4d5c50: blr          r2
    // 0x4d5c54: r0 = NULL
    //     0x4d5c54: mov          r0, NULL
    // 0x4d5c58: SP = fp
    //     0x4d5c58: mov          SP, fp
    // 0x4d5c5c: LeaveFrame
    //     0x4d5c5c: ldp          fp, lr, [SP], #0x10
    // 0x4d5c60: ret
    //     0x4d5c60: ret          
    // 0x4d5c64: r0 = call 0x61fa28
    //     0x4d5c64: bl           0x61fa28
    // 0x4d5c68: b 0x4d5c18
    //     0x4d5c68: b            0x4d5c18
  }
