// lib: , url: soul_flutter_international$common$plugins$native_dialog


  toast() {
    // ** addr: 0x3ac64c, size: 0x104
    // 0x3ac64c: EnterFrame
    //     0x3ac64c: stp          fp, lr, [SP, #-0x10]!
    //     0x3ac650: mov          fp, SP
    // 0x3ac654: AllocStack(0x28)
    //     0x3ac654: sub          SP, SP, #0x28
    //     0x3ac658: stur         r1, [fp, #-0x10]
    // 0x3ac65c: LoadField: r0 = r4->field_13
    //     0x3ac65c: ldur         r0, [r4, #0x13]
    //     0x3ac660: sub          r2, r0, #2
    //     0x3ac664: cmp          r2, #2
    // 0x3ac668: b.lt 0x3ac678
    //     0x3ac668: b.lt         0x3ac678
    //     0x3ac66c: add          r0, fp, r2, sxtw #2
    // 0x3ac670: LoadField: r0 = r0->field_8
    //     0x3ac670: ldr          r0, [r0, #8]
    // 0x3ac674: b 0x3ac67c
    //     0x3ac674: b            0x3ac67c
    //     0x3ac678: add          r0, NULL, #0x30
    //     0x3ac67c: stur         r0, [fp, #-8]
    // 0x3ac680: CheckStackOverflow
    //     0x3ac680: ldr          BARRIER, [THR, #0x38]
    //     0x3ac684: cmp          SP, BARRIER
    //     0x3ac688: b.ls         0x3ac748
    //     0x3ac68c: cmp          r1, r22
    // 0x3ac690: b.eq 0x3ac69c
    //     0x3ac690: b.eq         0x3ac69c
    // 0x3ac694: LoadField: r2 = r1->field_7
    //     0x3ac694: ldur         r2, [r1, #7]
    //     0x3ac698: cbnz         r2, 0x3ac6ac
    // 0x3ac69c: r0 = NULL
    //     0x3ac69c: mov          r0, NULL
    // 0x3ac6a0: SP = fp
    //     0x3ac6a0: mov          SP, fp
    // 0x3ac6a4: LeaveFrame
    //     0x3ac6a4: ldp          fp, lr, [SP], #0x10
    // 0x3ac6a8: ret
    //     0x3ac6a8: ret          
    //     0x3ac6ac: ldr          r0, [THR, #0x68]
    // 0x3ac6b0: LoadField: r0 = r0->field_1788
    //     0x3ac6b0: ldr          r0, [r0, #0x1788]
    // 0x3ac6b4: BARRIER = pp[0x40]
    //     0x3ac6b4: ldr          BARRIER, [PP, #0x40]
    //     0x3ac6b8: cmp          r0, r16
    // 0x3ac6bc: b.ne 0x3ac6cc
    //     0x3ac6bc: b.ne         0x3ac6cc
    // 0x3ac6c0: r2 = pp[0x467]
    //     0x3ac6c0: add          r2, PP, #0xf, lsl #12
    //     0x3ac6c4: ldr          r2, [r2, #0x458]
    // 0x3ac6c8: r0 = call 0x61d99c
    //     0x3ac6c8: bl           0x61d99c
    // 0x3ac6cc: r1 = NULL
    //     0x3ac6cc: mov          r1, NULL
    //     0x3ac6d0: mov          r2, #8
    //     0x3ac6d4: stur         r0, [fp, #-0x18]
    // 0x3ac6d8: r0 = call 0x61f920
    //     0x3ac6d8: bl           0x61f920
    // 0x3ac6dc: BARRIER = pp[0x79f8]
    //     0x3ac6dc: ldr          BARRIER, [PP, #0x79f8]
    // 0x3ac6e0: StoreField: r0->field_f = r16
    //     0x3ac6e0: stur         r16, [r0, #0xf]
    //     0x3ac6e4: ldur         r1, [fp, #-0x10]
    // 0x3ac6e8: StoreField: r0->field_13 = r1
    //     0x3ac6e8: stur         r1, [r0, #0x13]
    // 0x3ac6ec: BARRIER = pp[0x2250]
    //     0x3ac6ec: ldr          BARRIER, [PP, #0x2250]
    // 0x3ac6f0: ArrayStore: r0[0] = r16  ; List_8
    //     0x3ac6f0: stur         r16, [r0, #0x17]
    //     0x3ac6f4: ldur         r1, [fp, #-8]
    //     0x3ac6f8: tbnz         r1, #4, 0x3ac708
    // 0x3ac6fc: r1 = pp[0x46f]
    //     0x3ac6fc: add          r1, PP, #0xf, lsl #12
    //     0x3ac700: ldr          r1, [r1, #0x460]
    // 0x3ac704: b 0x3ac710
    //     0x3ac704: b            0x3ac710
    // 0x3ac708: r1 = pp[0x477]
    //     0x3ac708: add          r1, PP, #0xf, lsl #12
    //     0x3ac70c: ldr          r1, [r1, #0x468]
    // 0x3ac710: StoreField: r0->field_1b = r1
    //     0x3ac710: stur         r1, [r0, #0x1b]
    // 0x3ac714: BARRIER = pp[0x2a60]
    //     0x3ac714: ldr          BARRIER, [PP, #0x2a60]
    //     0x3ac718: stp          r0, BARRIER, [SP]
    // 0x3ac71c: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x3ac71c: bl           0x27c0c8
    //     0x3ac720: str          r0, [SP]
    //     0x3ac724: ldur         r1, [fp, #-0x18]
    // 0x3ac728: r2 = pp[0x47f]
    //     0x3ac728: add          r2, PP, #0xf, lsl #12
    //     0x3ac72c: ldr          r2, [r2, #0x470]
    // 0x3ac730: r4 = pp[0x280]
    //     0x3ac730: ldr          r4, [PP, #0x280]
    // 0x3ac734: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x3ac734: bl           0x3a8288
    // 0x3ac738: r0 = NULL
    //     0x3ac738: mov          r0, NULL
    // 0x3ac73c: SP = fp
    //     0x3ac73c: mov          SP, fp
    // 0x3ac740: LeaveFrame
    //     0x3ac740: ldp          fp, lr, [SP], #0x10
    // 0x3ac744: ret
    //     0x3ac744: ret          
    // 0x3ac748: r0 = call 0x61fa28
    //     0x3ac748: bl           0x61fa28
    // 0x3ac74c: b 0x3ac68c
    //     0x3ac74c: b            0x3ac68c
  }

  _channel() {
    // ** addr: 0x3ac750, size: 0x48
    // 0x3ac750: EnterFrame
    //     0x3ac750: stp          fp, lr, [SP, #-0x10]!
    //     0x3ac754: mov          fp, SP
    // 0x3ac758: AllocStack(8)
    //     0x3ac758: sub          SP, SP, #8
    // 0x3ac75c: CheckStackOverflow
    //     0x3ac75c: ldr          BARRIER, [THR, #0x38]
    //     0x3ac760: cmp          SP, BARRIER
    //     0x3ac764: b.ls         0x3ac790
    // 0x3ac768: r0 = call 0x3a84b8
    //     0x3ac768: bl           0x3a84b8
    // 0x3ac76c: r1 = r0
    //     0x3ac76c: mov          r1, r0
    // 0x3ac770: r2 = pp[0x487]
    //     0x3ac770: add          r2, PP, #0xf, lsl #12
    //     0x3ac774: ldr          r2, [r2, #0x478]
    //     0x3ac778: stur         r0, [fp, #-8]
    // 0x3ac77c: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::ctor()
    //     0x3ac77c: bl           0x3a83ec
    //     0x3ac780: ldur         r0, [fp, #-8]
    // 0x3ac784: SP = fp
    //     0x3ac784: mov          SP, fp
    // 0x3ac788: LeaveFrame
    //     0x3ac788: ldp          fp, lr, [SP], #0x10
    // 0x3ac78c: ret
    //     0x3ac78c: ret          
    // 0x3ac790: r0 = call 0x61fa28
    //     0x3ac790: bl           0x61fa28
    // 0x3ac794: b 0x3ac768
    //     0x3ac794: b            0x3ac768
  }

  toCoinDialog() {
    // ** addr: 0x41c9dc, size: 0x60
    // 0x41c9dc: EnterFrame
    //     0x41c9dc: stp          fp, lr, [SP, #-0x10]!
    //     0x41c9e0: mov          fp, SP
    // 0x41c9e4: CheckStackOverflow
    //     0x41c9e4: ldr          BARRIER, [THR, #0x38]
    //     0x41c9e8: cmp          SP, BARRIER
    //     0x41c9ec: b.ls         0x41ca34
    //     0x41c9f0: ldr          r0, [THR, #0x68]
    // 0x41c9f4: LoadField: r0 = r0->field_1788
    //     0x41c9f4: ldr          r0, [r0, #0x1788]
    // 0x41c9f8: BARRIER = pp[0x40]
    //     0x41c9f8: ldr          BARRIER, [PP, #0x40]
    //     0x41c9fc: cmp          r0, r16
    // 0x41ca00: b.ne 0x41ca10
    //     0x41ca00: b.ne         0x41ca10
    // 0x41ca04: r2 = pp[0x467]
    //     0x41ca04: add          r2, PP, #0xf, lsl #12
    //     0x41ca08: ldr          r2, [r2, #0x458]
    // 0x41ca0c: r0 = call 0x61d99c
    //     0x41ca0c: bl           0x61d99c
    // 0x41ca10: r1 = r0
    //     0x41ca10: mov          r1, r0
    // 0x41ca14: r2 = pp[0xb90]
    //     0x41ca14: add          r2, PP, #0x10, lsl #12
    //     0x41ca18: ldr          r2, [r2, #0xb80]
    // 0x41ca1c: r4 = pp[0x278]
    //     0x41ca1c: ldr          r4, [PP, #0x278]
    // 0x41ca20: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x41ca20: bl           0x3a8288
    // 0x41ca24: r0 = NULL
    //     0x41ca24: mov          r0, NULL
    // 0x41ca28: SP = fp
    //     0x41ca28: mov          SP, fp
    // 0x41ca2c: LeaveFrame
    //     0x41ca2c: ldp          fp, lr, [SP], #0x10
    // 0x41ca30: ret
    //     0x41ca30: ret          
    // 0x41ca34: r0 = call 0x61fa28
    //     0x41ca34: bl           0x61fa28
    // 0x41ca38: b 0x41c9f0
    //     0x41ca38: b            0x41c9f0
  }
