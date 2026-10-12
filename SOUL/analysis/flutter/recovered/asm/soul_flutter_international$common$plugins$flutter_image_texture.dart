// lib: , url: soul_flutter_international$common$plugins$flutter_image_texture


  release() {
    // ** addr: 0x447534, size: 0x90
    // 0x447534: EnterFrame
    //     0x447534: stp          fp, lr, [SP, #-0x10]!
    //     0x447538: mov          fp, SP
    // 0x44753c: AllocStack(0x30)
    //     0x44753c: sub          SP, SP, #0x30
    //     0x447540: stur         NULL, [fp, #-8]
    //     0x447544: stur         r1, [fp, #-0x10]
    // 0x447548: CheckStackOverflow
    //     0x447548: ldr          BARRIER, [THR, #0x38]
    //     0x44754c: cmp          SP, BARRIER
    //     0x447550: b.ls         0x4475bc
    // 0x447554: r0 = pp[0x25a8]
    //     0x447554: ldr          r0, [PP, #0x25a8]
    // 0x447558: r0 = call 0x2b16e4
    //     0x447558: bl           0x2b16e4
    // 0x44755c: r1 = NULL
    //     0x44755c: mov          r1, NULL
    //     0x447560: mov          r2, #4
    // 0x447564: r0 = call 0x61f920
    //     0x447564: bl           0x61f920
    // 0x447568: BARRIER = pp[0x526]
    //     0x447568: add          BARRIER, PP, #0xe, lsl #12
    //     0x44756c: ldr          BARRIER, [BARRIER, #0x518]
    // 0x447570: StoreField: r0->field_f = r16
    //     0x447570: stur         r16, [r0, #0xf]
    //     0x447574: ldur         r1, [fp, #-0x10]
    // 0x447578: StoreField: r0->field_13 = r1
    //     0x447578: stur         r1, [r0, #0x13]
    // 0x44757c: BARRIER = pp[0xbf0]
    //     0x44757c: ldr          BARRIER, [PP, #0xbf0]
    //     0x447580: stp          r0, BARRIER, [SP]
    // 0x447584: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x447584: bl           0x27c0c8
    // 0x447588: BARRIER = pp[0x868]
    //     0x447588: ldr          BARRIER, [PP, #0x868]
    // 0x44758c: lr = pp[0x6d]
    //     0x44758c: add          lr, PP, #0x15, lsl #12
    //     0x447590: ldr          lr, [lr, #0x58]
    //     0x447594: stp          lr, BARRIER, [SP, #0x10]
    // 0x447598: BARRIER = pp[0x75]
    //     0x447598: add          BARRIER, PP, #0x15, lsl #12
    //     0x44759c: ldr          BARRIER, [BARRIER, #0x60]
    //     0x4475a0: stp          r0, BARRIER, [SP]
    // 0x4475a4: r4 = pp[0x408]
    //     0x4475a4: ldr          r4, [PP, #0x408]
    // 0x4475a8: r0 = flutter$src$services$platform_channel_MethodChannel::invokeMethod()
    //     0x4475a8: bl           0x604e3c
    // 0x4475ac: r1 = r0
    //     0x4475ac: mov          r1, r0
    //     0x4475b0: stur         r1, [fp, #-0x10]
    // 0x4475b4: r0 = call 0x2b13a0
    //     0x4475b4: bl           0x2b13a0
    // 0x4475b8: b 0x2b19a0
    //     0x4475b8: b            0x2b19a0
    // 0x4475bc: r0 = call 0x61fa28
    //     0x4475bc: bl           0x61fa28
    // 0x4475c0: b 0x447554
    //     0x4475c0: b            0x447554
  }

  loadImg() {
    // ** addr: 0x447dd0, size: 0x1d0
    // 0x447dd0: EnterFrame
    //     0x447dd0: stp          fp, lr, [SP, #-0x10]!
    //     0x447dd4: mov          fp, SP
    // 0x447dd8: AllocStack(0x40)
    //     0x447dd8: sub          SP, SP, #0x40
    //     0x447ddc: stur         NULL, [fp, #-8]
    //     0x447de0: stur         r1, [fp, #-0x10]
    //     0x447de4: stur         d0, [fp, #-0x18]
    //     0x447de8: stur         d1, [fp, #-0x20]
    // 0x447dec: CheckStackOverflow
    //     0x447dec: ldr          BARRIER, [THR, #0x38]
    //     0x447df0: cmp          SP, BARRIER
    //     0x447df4: b.ls         0x447f68
    // 0x447df8: r0 = pp[0x908]
    //     0x447df8: ldr          r0, [PP, #0x908]
    // 0x447dfc: r0 = call 0x2b16e4
    //     0x447dfc: bl           0x2b16e4
    // 0x447e00: r1 = NULL
    //     0x447e00: mov          r1, NULL
    //     0x447e04: mov          r2, #0x14
    // 0x447e08: r0 = call 0x61f920
    //     0x447e08: bl           0x61f920
    // 0x447e0c: r2 = r0
    //     0x447e0c: mov          r2, r0
    // 0x447e10: BARRIER = pp[0x2c48]
    //     0x447e10: ldr          BARRIER, [PP, #0x2c48]
    // 0x447e14: StoreField: r2->field_f = r16
    //     0x447e14: stur         r16, [r2, #0xf]
    //     0x447e18: ldur         r0, [fp, #-0x10]
    // 0x447e1c: StoreField: r2->field_13 = r0
    //     0x447e1c: stur         r0, [r2, #0x13]
    // 0x447e20: BARRIER = pp[0x5228]
    //     0x447e20: ldr          BARRIER, [PP, #0x5228]
    // 0x447e24: ArrayStore: r2[0] = r16  ; List_8
    //     0x447e24: stur         r16, [r2, #0x17]
    //     0x447e28: ldur         d0, [fp, #-0x20]
    //     0x447e2c: ldp          r0, r1, [THR, #0x50]
    //     0x447e30: add          r0, r0, #0x10
    //     0x447e34: cmp          r1, r0
    // 0x447e38: b.ls 0x447f70
    //     0x447e38: b.ls         0x447f70
    //     0x447e3c: str          r0, [THR, #0x50]
    //     0x447e40: sub          r0, r0, #0xf
    //     0x447e44: mov          r1, #0xe15c
    //     0x447e48: movk         r1, #3, lsl #16
    //     0x447e4c: stur         r1, [r0, #-1]
    // 0x447e50: StoreField: r0->field_7 = d0
    //     0x447e50: stur         d0, [r0, #7]
    // 0x447e54: r1 = r2
    //     0x447e54: mov          r1, r2
    //     0x447e58: add          r25, r1, #0x1b
    //     0x447e5c: str          r0, [r25]
    // 0x447e60: branchIfSmi(r0, 0x447e7c)
    //     0x447e60: tbz          r0, #0, 0x447e7c
    //     0x447e64: ldurb        r16, [r1, #-1]
    //     0x447e68: ldurb        r17, [r0, #-1]
    //     0x447e6c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x447e70: tst          BARRIER, HEAP, lsr #32
    // 0x447e74: b.eq 0x447e7c
    //     0x447e74: b.eq         0x447e7c
    // 0x447e78: r0 = call 0x61db00
    //     0x447e78: bl           0x61db00
    // 0x447e7c: BARRIER = pp[0x7d68]
    //     0x447e7c: ldr          BARRIER, [PP, #0x7d68]
    // 0x447e80: StoreField: r2->field_1f = r16
    //     0x447e80: stur         r16, [r2, #0x1f]
    //     0x447e84: ldur         d0, [fp, #-0x18]
    //     0x447e88: ldp          r0, r1, [THR, #0x50]
    //     0x447e8c: add          r0, r0, #0x10
    //     0x447e90: cmp          r1, r0
    // 0x447e94: b.ls 0x447f88
    //     0x447e94: b.ls         0x447f88
    //     0x447e98: str          r0, [THR, #0x50]
    //     0x447e9c: sub          r0, r0, #0xf
    //     0x447ea0: mov          r1, #0xe15c
    //     0x447ea4: movk         r1, #3, lsl #16
    //     0x447ea8: stur         r1, [r0, #-1]
    // 0x447eac: StoreField: r0->field_7 = d0
    //     0x447eac: stur         d0, [r0, #7]
    // 0x447eb0: r1 = r2
    //     0x447eb0: mov          r1, r2
    //     0x447eb4: add          r25, r1, #0x23
    //     0x447eb8: str          r0, [r25]
    // 0x447ebc: branchIfSmi(r0, 0x447ed8)
    //     0x447ebc: tbz          r0, #0, 0x447ed8
    //     0x447ec0: ldurb        r16, [r1, #-1]
    //     0x447ec4: ldurb        r17, [r0, #-1]
    //     0x447ec8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x447ecc: tst          BARRIER, HEAP, lsr #32
    // 0x447ed0: b.eq 0x447ed8
    //     0x447ed0: b.eq         0x447ed8
    // 0x447ed4: r0 = call 0x61db00
    //     0x447ed4: bl           0x61db00
    // 0x447ed8: BARRIER = pp[0xf5]
    //     0x447ed8: add          BARRIER, PP, #0x15, lsl #12
    //     0x447edc: ldr          BARRIER, [BARRIER, #0xe0]
    // 0x447ee0: StoreField: r2->field_27 = r16
    //     0x447ee0: stur         r16, [r2, #0x27]
    //     0x447ee4: add          BARRIER, NULL, #0x30
    // 0x447ee8: StoreField: r2->field_2b = r16
    //     0x447ee8: stur         r16, [r2, #0x2b]
    // 0x447eec: BARRIER = pp[0xfd]
    //     0x447eec: add          BARRIER, PP, #0x15, lsl #12
    //     0x447ef0: ldr          BARRIER, [BARRIER, #0xe8]
    // 0x447ef4: StoreField: r2->field_2f = r16
    //     0x447ef4: stur         r16, [r2, #0x2f]
    //     0x447ef8: add          BARRIER, NULL, #0x30
    // 0x447efc: StoreField: r2->field_33 = r16
    //     0x447efc: stur         r16, [r2, #0x33]
    // 0x447f00: BARRIER = pp[0xbf0]
    //     0x447f00: ldr          BARRIER, [PP, #0xbf0]
    //     0x447f04: stp          r2, BARRIER, [SP]
    // 0x447f08: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x447f08: bl           0x27c0c8
    // 0x447f0c: BARRIER = pp[0x6d]
    //     0x447f0c: add          BARRIER, PP, #0x15, lsl #12
    //     0x447f10: ldr          BARRIER, [BARRIER, #0x58]
    //     0x447f14: stp          BARRIER, NULL, [SP, #0x10]
    // 0x447f18: BARRIER = pp[0x105]
    //     0x447f18: add          BARRIER, PP, #0x15, lsl #12
    //     0x447f1c: ldr          BARRIER, [BARRIER, #0xf0]
    //     0x447f20: stp          r0, BARRIER, [SP]
    // 0x447f24: r4 = pp[0x408]
    //     0x447f24: ldr          r4, [PP, #0x408]
    // 0x447f28: r0 = flutter$src$services$platform_channel_MethodChannel::invokeMethod()
    //     0x447f28: bl           0x604e3c
    // 0x447f2c: r1 = r0
    //     0x447f2c: mov          r1, r0
    //     0x447f30: stur         r1, [fp, #-0x10]
    // 0x447f34: r0 = call 0x2b13a0
    //     0x447f34: bl           0x2b13a0
    // 0x447f38: r3 = r0
    //     0x447f38: mov          r3, r0
    // 0x447f3c: r2 = NULL
    //     0x447f3c: mov          r2, NULL
    // 0x447f40: r1 = NULL
    //     0x447f40: mov          r1, NULL
    //     0x447f44: stur         r3, [fp, #-0x10]
    // 0x447f48: branchIfSmi(r0, 0x447f60)
    //     0x447f48: tbz          r0, #0, 0x447f60
    // 0x447f4c: r8 = pp[0x10d]
    //     0x447f4c: add          r8, PP, #0x15, lsl #12
    //     0x447f50: ldr          r8, [r8, #0xf8]
    // 0x447f54: r3 = pp[0x115]
    //     0x447f54: add          r3, PP, #0x15, lsl #12
    //     0x447f58: ldr          r3, [r3, #0x100]
    // 0x447f5c: r0 = call 0x61d6e4
    //     0x447f5c: bl           0x61d6e4
    //     0x447f60: ldur         r0, [fp, #-0x10]
    // 0x447f64: b 0x2b19a0
    //     0x447f64: b            0x2b19a0
    // 0x447f68: r0 = call 0x61faa8
    //     0x447f68: bl           0x61faa8
    // 0x447f6c: b 0x447df8
    //     0x447f6c: b            0x447df8
    //     0x447f70: str          q0, [SP, #-0x10]!
    //     0x447f74: str          r2, [SP, #-8]!
    // 0x447f78: r0 = call 0x61f878
    //     0x447f78: bl           0x61f878
    //     0x447f7c: ldr          r2, [SP], #8
    //     0x447f80: ldr          q0, [SP], #0x10
    // 0x447f84: b 0x447e50
    //     0x447f84: b            0x447e50
    //     0x447f88: str          q0, [SP, #-0x10]!
    //     0x447f8c: str          r2, [SP, #-8]!
    // 0x447f90: r0 = call 0x61f878
    //     0x447f90: bl           0x61f878
    //     0x447f94: ldr          r2, [SP], #8
    //     0x447f98: ldr          q0, [SP], #0x10
    // 0x447f9c: b 0x447eac
    //     0x447f9c: b            0x447eac
  }
