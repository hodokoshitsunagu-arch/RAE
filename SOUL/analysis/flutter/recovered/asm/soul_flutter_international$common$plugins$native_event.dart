// lib: , url: soul_flutter_international$common$plugins$native_event


  removeEventListener() {
    // ** addr: 0x450ab8, size: 0xe0
    // 0x450ab8: EnterFrame
    //     0x450ab8: stp          fp, lr, [SP, #-0x10]!
    //     0x450abc: mov          fp, SP
    // 0x450ac0: AllocStack(0x28)
    //     0x450ac0: sub          SP, SP, #0x28
    //     0x450ac4: stur         r1, [fp, #-8]
    //     0x450ac8: stur         r2, [fp, #-0x10]
    // 0x450acc: CheckStackOverflow
    //     0x450acc: ldr          BARRIER, [THR, #0x38]
    //     0x450ad0: cmp          SP, BARRIER
    //     0x450ad4: b.ls         0x450b90
    // 0x450ad8: LoadField: r0 = r1->field_7
    //     0x450ad8: ldur         r0, [r1, #7]
    //     0x450adc: cbz          r0, 0x450ae8
    // 0x450ae0: LoadField: r0 = r2->field_7
    //     0x450ae0: ldur         r0, [r2, #7]
    //     0x450ae4: cbnz         r0, 0x450af8
    // 0x450ae8: r0 = NULL
    //     0x450ae8: mov          r0, NULL
    // 0x450aec: SP = fp
    //     0x450aec: mov          SP, fp
    // 0x450af0: LeaveFrame
    //     0x450af0: ldp          fp, lr, [SP], #0x10
    // 0x450af4: ret
    //     0x450af4: ret          
    //     0x450af8: ldr          r0, [THR, #0x68]
    // 0x450afc: LoadField: r0 = r0->field_17a0
    //     0x450afc: ldr          r0, [r0, #0x17a0]
    // 0x450b00: BARRIER = pp[0x40]
    //     0x450b00: ldr          BARRIER, [PP, #0x40]
    //     0x450b04: cmp          r0, r16
    // 0x450b08: b.ne 0x450b18
    //     0x450b08: b.ne         0x450b18
    // 0x450b0c: r2 = pp[0x60b]
    //     0x450b0c: add          r2, PP, #0xb, lsl #12
    //     0x450b10: ldr          r2, [r2, #0x600]
    // 0x450b14: r0 = call 0x61d99c
    //     0x450b14: bl           0x61d99c
    // 0x450b18: r1 = NULL
    //     0x450b18: mov          r1, NULL
    //     0x450b1c: mov          r2, #8
    //     0x450b20: stur         r0, [fp, #-0x18]
    // 0x450b24: r0 = call 0x61f920
    //     0x450b24: bl           0x61f920
    // 0x450b28: BARRIER = pp[0x613]
    //     0x450b28: add          BARRIER, PP, #0xb, lsl #12
    //     0x450b2c: ldr          BARRIER, [BARRIER, #0x608]
    // 0x450b30: StoreField: r0->field_f = r16
    //     0x450b30: stur         r16, [r0, #0xf]
    //     0x450b34: ldur         r1, [fp, #-8]
    // 0x450b38: StoreField: r0->field_13 = r1
    //     0x450b38: stur         r1, [r0, #0x13]
    // 0x450b3c: BARRIER = pp[0x61b]
    //     0x450b3c: add          BARRIER, PP, #0xb, lsl #12
    //     0x450b40: ldr          BARRIER, [BARRIER, #0x610]
    // 0x450b44: ArrayStore: r0[0] = r16  ; List_8
    //     0x450b44: stur         r16, [r0, #0x17]
    //     0x450b48: ldur         r2, [fp, #-0x10]
    // 0x450b4c: StoreField: r0->field_1b = r2
    //     0x450b4c: stur         r2, [r0, #0x1b]
    // 0x450b50: BARRIER = pp[0x2a60]
    //     0x450b50: ldr          BARRIER, [PP, #0x2a60]
    //     0x450b54: stp          r0, BARRIER, [SP]
    // 0x450b58: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x450b58: bl           0x27c0c8
    //     0x450b5c: str          r0, [SP]
    //     0x450b60: ldur         r1, [fp, #-0x18]
    // 0x450b64: r2 = pp[0x623]
    //     0x450b64: add          r2, PP, #0xb, lsl #12
    //     0x450b68: ldr          r2, [r2, #0x618]
    // 0x450b6c: r4 = pp[0x280]
    //     0x450b6c: ldr          r4, [PP, #0x280]
    // 0x450b70: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x450b70: bl           0x3a8288
    //     0x450b74: ldur         r1, [fp, #-0x18]
    //     0x450b78: ldur         r2, [fp, #-0x10]
    // 0x450b7c: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::removeHandler()
    //     0x450b7c: bl           0x450b98
    // 0x450b80: r0 = NULL
    //     0x450b80: mov          r0, NULL
    // 0x450b84: SP = fp
    //     0x450b84: mov          SP, fp
    // 0x450b88: LeaveFrame
    //     0x450b88: ldp          fp, lr, [SP], #0x10
    // 0x450b8c: ret
    //     0x450b8c: ret          
    // 0x450b90: r0 = call 0x61fa28
    //     0x450b90: bl           0x61fa28
    // 0x450b94: b 0x450ad8
    //     0x450b94: b            0x450ad8
  }

  _channel() {
    // ** addr: 0x450bd4, size: 0x48
    // 0x450bd4: EnterFrame
    //     0x450bd4: stp          fp, lr, [SP, #-0x10]!
    //     0x450bd8: mov          fp, SP
    // 0x450bdc: AllocStack(8)
    //     0x450bdc: sub          SP, SP, #8
    // 0x450be0: CheckStackOverflow
    //     0x450be0: ldr          BARRIER, [THR, #0x38]
    //     0x450be4: cmp          SP, BARRIER
    //     0x450be8: b.ls         0x450c14
    // 0x450bec: r0 = call 0x3a84b8
    //     0x450bec: bl           0x3a84b8
    // 0x450bf0: r1 = r0
    //     0x450bf0: mov          r1, r0
    // 0x450bf4: r2 = pp[0x62b]
    //     0x450bf4: add          r2, PP, #0xb, lsl #12
    //     0x450bf8: ldr          r2, [r2, #0x620]
    //     0x450bfc: stur         r0, [fp, #-8]
    // 0x450c00: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::ctor()
    //     0x450c00: bl           0x3a83ec
    //     0x450c04: ldur         r0, [fp, #-8]
    // 0x450c08: SP = fp
    //     0x450c08: mov          SP, fp
    // 0x450c0c: LeaveFrame
    //     0x450c0c: ldp          fp, lr, [SP], #0x10
    // 0x450c10: ret
    //     0x450c10: ret          
    // 0x450c14: r0 = call 0x61fa28
    //     0x450c14: bl           0x61fa28
    // 0x450c18: b 0x450bec
    //     0x450c18: b            0x450bec
  }

  addEventListener() {
    // ** addr: 0x4d3338, size: 0x188
    // 0x4d3338: EnterFrame
    //     0x4d3338: stp          fp, lr, [SP, #-0x10]!
    //     0x4d333c: mov          fp, SP
    // 0x4d3340: AllocStack(0x30)
    //     0x4d3340: sub          SP, SP, #0x30
    //     0x4d3344: stur         r1, [fp, #-8]
    //     0x4d3348: stur         r2, [fp, #-0x10]
    // 0x4d334c: CheckStackOverflow
    //     0x4d334c: ldr          BARRIER, [THR, #0x38]
    //     0x4d3350: cmp          SP, BARRIER
    //     0x4d3354: b.ls         0x4d34b8
    //     0x4d3358: mov          r1, #1
    // 0x4d335c: r0 = call 0x61e890
    //     0x4d335c: bl           0x61e890
    // 0x4d3360: r3 = r0
    //     0x4d3360: mov          r3, r0
    //     0x4d3364: ldur         r0, [fp, #-0x10]
    //     0x4d3368: stur         r3, [fp, #-0x18]
    // 0x4d336c: StoreField: r3->field_f = r0
    //     0x4d336c: stur         r0, [r3, #0xf]
    //     0x4d3370: ldur         r0, [fp, #-8]
    // 0x4d3374: LoadField: r1 = r0->field_7
    //     0x4d3374: ldur         r1, [r0, #7]
    //     0x4d3378: cbnz         r1, 0x4d338c
    // 0x4d337c: r0 = pp[0x148]
    //     0x4d337c: ldr          r0, [PP, #0x148]
    // 0x4d3380: SP = fp
    //     0x4d3380: mov          SP, fp
    // 0x4d3384: LeaveFrame
    //     0x4d3384: ldp          fp, lr, [SP], #0x10
    // 0x4d3388: ret
    //     0x4d3388: ret          
    // 0x4d338c: r1 = NULL
    //     0x4d338c: mov          r1, NULL
    //     0x4d3390: mov          r2, #8
    // 0x4d3394: r0 = call 0x61f920
    //     0x4d3394: bl           0x61f920
    //     0x4d3398: stur         r0, [fp, #-0x10]
    // 0x4d339c: BARRIER = pp[0x3a4]
    //     0x4d339c: add          BARRIER, PP, #0xc, lsl #12
    //     0x4d33a0: ldr          BARRIER, [BARRIER, #0x398]
    // 0x4d33a4: StoreField: r0->field_f = r16
    //     0x4d33a4: stur         r16, [r0, #0xf]
    //     0x4d33a8: ldur         r1, [fp, #-8]
    // 0x4d33ac: StoreField: r0->field_13 = r1
    //     0x4d33ac: stur         r1, [r0, #0x13]
    // 0x4d33b0: BARRIER = pp[0xd20]
    //     0x4d33b0: ldr          BARRIER, [PP, #0xd20]
    // 0x4d33b4: ArrayStore: r0[0] = r16  ; List_8
    //     0x4d33b4: stur         r16, [r0, #0x17]
    // 0x4d33b8: r0 = soul_flutter_international$common$utils$time_util_TimeUtil::currentTimeMillis()
    //     0x4d33b8: bl           0x4d36ac
    // 0x4d33bc: r2 = r0
    //     0x4d33bc: mov          r2, r0
    //     0x4d33c0: sbfiz        r0, r2, #1, #0x1f
    //     0x4d33c4: cmp          r2, r0, asr #1
    // 0x4d33c8: b.eq 0x4d33d4
    //     0x4d33c8: b.eq         0x4d33d4
    // 0x4d33cc: r0 = call 0x61fba8
    //     0x4d33cc: bl           0x61fba8
    // 0x4d33d0: StoreField: r0->field_7 = r2
    //     0x4d33d0: stur         r2, [r0, #7]
    //     0x4d33d4: ldur         r1, [fp, #-0x10]
    //     0x4d33d8: add          r25, r1, #0x1b
    //     0x4d33dc: str          r0, [r25]
    // 0x4d33e0: branchIfSmi(r0, 0x4d33fc)
    //     0x4d33e0: tbz          r0, #0, 0x4d33fc
    //     0x4d33e4: ldurb        r16, [r1, #-1]
    //     0x4d33e8: ldurb        r17, [r0, #-1]
    //     0x4d33ec: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d33f0: tst          BARRIER, HEAP, lsr #32
    // 0x4d33f4: b.eq 0x4d33fc
    //     0x4d33f4: b.eq         0x4d33fc
    // 0x4d33f8: r0 = call 0x61db00
    //     0x4d33f8: bl           0x61db00
    //     0x4d33fc: ldur         BARRIER, [fp, #-0x10]
    //     0x4d3400: str          BARRIER, [SP]
    // 0x4d3404: r0 = dart_core__StringBase::_interpolate()
    //     0x4d3404: bl           0x2ad854
    //     0x4d3408: stur         r0, [fp, #-0x10]
    //     0x4d340c: ldr          r0, [THR, #0x68]
    // 0x4d3410: LoadField: r0 = r0->field_17a0
    //     0x4d3410: ldr          r0, [r0, #0x17a0]
    // 0x4d3414: BARRIER = pp[0x40]
    //     0x4d3414: ldr          BARRIER, [PP, #0x40]
    //     0x4d3418: cmp          r0, r16
    // 0x4d341c: b.ne 0x4d342c
    //     0x4d341c: b.ne         0x4d342c
    // 0x4d3420: r2 = pp[0x60b]
    //     0x4d3420: add          r2, PP, #0xb, lsl #12
    //     0x4d3424: ldr          r2, [r2, #0x600]
    // 0x4d3428: r0 = call 0x61d99c
    //     0x4d3428: bl           0x61d99c
    // 0x4d342c: r1 = NULL
    //     0x4d342c: mov          r1, NULL
    //     0x4d3430: mov          r2, #8
    //     0x4d3434: stur         r0, [fp, #-0x20]
    // 0x4d3438: r0 = call 0x61f920
    //     0x4d3438: bl           0x61f920
    // 0x4d343c: BARRIER = pp[0x613]
    //     0x4d343c: add          BARRIER, PP, #0xb, lsl #12
    //     0x4d3440: ldr          BARRIER, [BARRIER, #0x608]
    // 0x4d3444: StoreField: r0->field_f = r16
    //     0x4d3444: stur         r16, [r0, #0xf]
    //     0x4d3448: ldur         r1, [fp, #-8]
    // 0x4d344c: StoreField: r0->field_13 = r1
    //     0x4d344c: stur         r1, [r0, #0x13]
    // 0x4d3450: BARRIER = pp[0x61b]
    //     0x4d3450: add          BARRIER, PP, #0xb, lsl #12
    //     0x4d3454: ldr          BARRIER, [BARRIER, #0x610]
    // 0x4d3458: ArrayStore: r0[0] = r16  ; List_8
    //     0x4d3458: stur         r16, [r0, #0x17]
    //     0x4d345c: ldur         r2, [fp, #-0x10]
    // 0x4d3460: StoreField: r0->field_1b = r2
    //     0x4d3460: stur         r2, [r0, #0x1b]
    // 0x4d3464: BARRIER = pp[0x2a60]
    //     0x4d3464: ldr          BARRIER, [PP, #0x2a60]
    //     0x4d3468: stp          r0, BARRIER, [SP]
    // 0x4d346c: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x4d346c: bl           0x27c0c8
    //     0x4d3470: str          r0, [SP]
    //     0x4d3474: ldur         r1, [fp, #-0x20]
    // 0x4d3478: r2 = pp[0x3ac]
    //     0x4d3478: add          r2, PP, #0xc, lsl #12
    //     0x4d347c: ldr          r2, [r2, #0x3a0]
    // 0x4d3480: r4 = pp[0x280]
    //     0x4d3480: ldr          r4, [PP, #0x280]
    // 0x4d3484: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x4d3484: bl           0x3a8288
    //     0x4d3488: ldur         r2, [fp, #-0x18]
    // 0x4d348c: r1 = pp[0x3b4]
    //     0x4d348c: add          r1, PP, #0xc, lsl #12
    //     0x4d3490: ldr          r1, [r1, #0x3a8]
    // 0x4d3494: r0 = call 0x61ec54
    //     0x4d3494: bl           0x61ec54
    //     0x4d3498: ldur         r1, [fp, #-0x20]
    //     0x4d349c: ldur         r2, [fp, #-0x10]
    // 0x4d34a0: r3 = r0
    //     0x4d34a0: mov          r3, r0
    // 0x4d34a4: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::registerHandler()
    //     0x4d34a4: bl           0x4d34c0
    //     0x4d34a8: ldur         r0, [fp, #-0x10]
    // 0x4d34ac: SP = fp
    //     0x4d34ac: mov          SP, fp
    // 0x4d34b0: LeaveFrame
    //     0x4d34b0: ldp          fp, lr, [SP], #0x10
    // 0x4d34b4: ret
    //     0x4d34b4: ret          
    // 0x4d34b8: r0 = call 0x61fa28
    //     0x4d34b8: bl           0x61fa28
    // 0x4d34bc: b 0x4d3358
    //     0x4d34bc: b            0x4d3358
  }

  _anon_closure() {
    // ** addr: 0x4d3700, size: 0x264
    // 0x4d3700: EnterFrame
    //     0x4d3700: stp          fp, lr, [SP, #-0x10]!
    //     0x4d3704: mov          fp, SP
    // 0x4d3708: AllocStack(0x30)
    //     0x4d3708: sub          SP, SP, #0x30
    //     0x4d370c: ldr          r0, [fp, #0x18]
    // 0x4d3710: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x4d3710: ldur         r3, [r0, #0x17]
    //     0x4d3714: add          r3, r3, HEAP, lsl #32
    //     0x4d3718: stur         r3, [fp, #-8]
    // 0x4d371c: CheckStackOverflow
    //     0x4d371c: ldr          BARRIER, [THR, #0x38]
    //     0x4d3720: cmp          SP, BARRIER
    //     0x4d3724: b.ls         0x4d395c
    //     0x4d3728: ldr          r4, [fp, #0x10]
    //     0x4d372c: cmp          r4, r22
    // 0x4d3730: b.ne 0x4d373c
    //     0x4d3730: b.ne         0x4d373c
    // 0x4d3734: r3 = NULL
    //     0x4d3734: mov          r3, NULL
    // 0x4d3738: b 0x4d3788
    //     0x4d3738: b            0x4d3788
    // 0x4d373c: r0 = r4
    //     0x4d373c: mov          r0, r4
    // 0x4d3740: r2 = NULL
    //     0x4d3740: mov          r2, NULL
    // 0x4d3744: r1 = NULL
    //     0x4d3744: mov          r1, NULL
    //     0x4d3748: mov          r4, #0x3c
    // 0x4d374c: branchIfSmi(r0, 0x4d3758)
    //     0x4d374c: tbz          r0, #0, 0x4d3758
    // 0x4d3750: r4 = LoadClassIdInstr(r0)
    //     0x4d3750: ldur         r4, [r0, #-1]
    //     0x4d3754: ubfx         r4, r4, #0xc, #0x14
    //     0x4d3758: sub          r4, r4, #0x5e
    //     0x4d375c: cmp          r4, #1
    // 0x4d3760: b.ls 0x4d3774
    //     0x4d3760: b.ls         0x4d3774
    // 0x4d3764: r8 = pp[0x2f8]
    //     0x4d3764: ldr          r8, [PP, #0x2f8]
    // 0x4d3768: r3 = pp[0x3bc]
    //     0x4d3768: add          r3, PP, #0xc, lsl #12
    //     0x4d376c: ldr          r3, [r3, #0x3b0]
    // 0x4d3770: r0 = call 0x62a0c0
    //     0x4d3770: bl           0x62a0c0
    //     0x4d3774: ldr          r2, [fp, #0x10]
    // 0x4d3778: r1 = pp[0xa28]
    //     0x4d3778: ldr          r1, [PP, #0xa28]
    // 0x4d377c: r4 = pp[0x278]
    //     0x4d377c: ldr          r4, [PP, #0x278]
    // 0x4d3780: r0 = dart_convert_JsonCodec::decode()
    //     0x4d3780: bl           0x29ba14
    // 0x4d3784: r3 = r0
    //     0x4d3784: mov          r3, r0
    // 0x4d3788: r0 = r3
    //     0x4d3788: mov          r0, r3
    //     0x4d378c: stur         r3, [fp, #-0x10]
    // 0x4d3790: r2 = NULL
    //     0x4d3790: mov          r2, NULL
    // 0x4d3794: r1 = NULL
    //     0x4d3794: mov          r1, NULL
    //     0x4d3798: mov          r4, #0x3c
    // 0x4d379c: branchIfSmi(r0, 0x4d37a8)
    //     0x4d379c: tbz          r0, #0, 0x4d37a8
    // 0x4d37a0: r4 = LoadClassIdInstr(r0)
    //     0x4d37a0: ldur         r4, [r0, #-1]
    //     0x4d37a4: ubfx         r4, r4, #0xc, #0x14
    //     0x4d37a8: sub          r4, r4, #0x56
    //     0x4d37ac: cmp          r4, #1
    // 0x4d37b0: b.ls 0x4d37e4
    //     0x4d37b0: b.ls         0x4d37e4
    //     0x4d37b4: cmp          r4, #0xd02
    // 0x4d37b8: b.eq 0x4d37e4
    //     0x4d37b8: b.eq         0x4d37e4
    //     0x4d37bc: cmp          r4, #0xd10
    // 0x4d37c0: b.eq 0x4d37e4
    //     0x4d37c0: b.eq         0x4d37e4
    //     0x4d37c4: sub          r4, r4, #0xd2f
    //     0x4d37c8: cmp          r4, #0x2a
    // 0x4d37cc: b.ls 0x4d37e4
    //     0x4d37cc: b.ls         0x4d37e4
    // 0x4d37d0: r8 = pp[0xf99]
    //     0x4d37d0: add          r8, PP, #9, lsl #12
    //     0x4d37d4: ldr          r8, [r8, #0xf90]
    // 0x4d37d8: r3 = pp[0x3cc]
    //     0x4d37d8: add          r3, PP, #0xc, lsl #12
    //     0x4d37dc: ldr          r3, [r3, #0x3c0]
    // 0x4d37e0: r0 = call 0x61d6cc
    //     0x4d37e0: bl           0x61d6cc
    //     0x4d37e4: ldur         r0, [fp, #-0x10]
    //     0x4d37e8: cmp          r0, r22
    // 0x4d37ec: b.ne 0x4d37fc
    //     0x4d37ec: b.ne         0x4d37fc
    // 0x4d37f0: r3 = r0
    //     0x4d37f0: mov          r3, r0
    // 0x4d37f4: r0 = NULL
    //     0x4d37f4: mov          r0, NULL
    // 0x4d37f8: b 0x4d3824
    //     0x4d37f8: b            0x4d3824
    // 0x4d37fc: r1 = r0
    //     0x4d37fc: mov          r1, r0
    // 0x4d3800: r2 = pp[0x613]
    //     0x4d3800: add          r2, PP, #0xb, lsl #12
    //     0x4d3804: ldr          r2, [r2, #0x608]
    // 0x4d3808: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData()
    //     0x4d3808: bl           0x61c9d0
    //     0x4d380c: ldur         r3, [fp, #-0x10]
    // 0x4d3810: LoadField: r1 = r3->field_f
    //     0x4d3810: ldur         r1, [r3, #0xf]
    //     0x4d3814: add          r1, r1, HEAP, lsl #32
    //     0x4d3818: cmp          r1, r0
    // 0x4d381c: b.ne 0x4d3824
    //     0x4d381c: b.ne         0x4d3824
    // 0x4d3820: r0 = NULL
    //     0x4d3820: mov          r0, NULL
    //     0x4d3824: cmp          r0, r22
    // 0x4d3828: b.ne 0x4d3834
    //     0x4d3828: b.ne         0x4d3834
    // 0x4d382c: r4 = pp[0x148]
    //     0x4d382c: ldr          r4, [PP, #0x148]
    // 0x4d3830: b 0x4d3838
    //     0x4d3830: b            0x4d3838
    // 0x4d3834: r4 = r0
    //     0x4d3834: mov          r4, r0
    // 0x4d3838: r0 = r4
    //     0x4d3838: mov          r0, r4
    //     0x4d383c: stur         r4, [fp, #-0x18]
    // 0x4d3840: r2 = NULL
    //     0x4d3840: mov          r2, NULL
    // 0x4d3844: r1 = NULL
    //     0x4d3844: mov          r1, NULL
    //     0x4d3848: mov          r4, #0x3c
    // 0x4d384c: branchIfSmi(r0, 0x4d3858)
    //     0x4d384c: tbz          r0, #0, 0x4d3858
    // 0x4d3850: r4 = LoadClassIdInstr(r0)
    //     0x4d3850: ldur         r4, [r0, #-1]
    //     0x4d3854: ubfx         r4, r4, #0xc, #0x14
    //     0x4d3858: sub          r4, r4, #0x5e
    //     0x4d385c: cmp          r4, #1
    // 0x4d3860: b.ls 0x4d3874
    //     0x4d3860: b.ls         0x4d3874
    // 0x4d3864: r8 = pp[0x2f8]
    //     0x4d3864: ldr          r8, [PP, #0x2f8]
    // 0x4d3868: r3 = pp[0x3dc]
    //     0x4d3868: add          r3, PP, #0xc, lsl #12
    //     0x4d386c: ldr          r3, [r3, #0x3d0]
    // 0x4d3870: r0 = call 0x62a0c0
    //     0x4d3870: bl           0x62a0c0
    //     0x4d3874: ldur         r0, [fp, #-0x10]
    //     0x4d3878: cmp          r0, r22
    // 0x4d387c: b.ne 0x4d3888
    //     0x4d387c: b.ne         0x4d3888
    // 0x4d3880: r4 = NULL
    //     0x4d3880: mov          r4, NULL
    // 0x4d3884: b 0x4d38c0
    //     0x4d3884: b            0x4d38c0
    // 0x4d3888: r1 = r0
    //     0x4d3888: mov          r1, r0
    // 0x4d388c: r2 = pp[0x653]
    //     0x4d388c: add          r2, PP, #0xb, lsl #12
    //     0x4d3890: ldr          r2, [r2, #0x648]
    // 0x4d3894: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData()
    //     0x4d3894: bl           0x61c9d0
    // 0x4d3898: r1 = r0
    //     0x4d3898: mov          r1, r0
    //     0x4d389c: ldur         r0, [fp, #-0x10]
    // 0x4d38a0: LoadField: r2 = r0->field_f
    //     0x4d38a0: ldur         r2, [r0, #0xf]
    //     0x4d38a4: add          r2, r2, HEAP, lsl #32
    //     0x4d38a8: cmp          r2, r1
    // 0x4d38ac: b.ne 0x4d38b8
    //     0x4d38ac: b.ne         0x4d38b8
    // 0x4d38b0: r0 = NULL
    //     0x4d38b0: mov          r0, NULL
    // 0x4d38b4: b 0x4d38bc
    //     0x4d38b4: b            0x4d38bc
    // 0x4d38b8: r0 = r1
    //     0x4d38b8: mov          r0, r1
    // 0x4d38bc: r4 = r0
    //     0x4d38bc: mov          r4, r0
    //     0x4d38c0: ldur         r3, [fp, #-8]
    // 0x4d38c4: r0 = r4
    //     0x4d38c4: mov          r0, r4
    //     0x4d38c8: stur         r4, [fp, #-0x10]
    // 0x4d38cc: r2 = NULL
    //     0x4d38cc: mov          r2, NULL
    // 0x4d38d0: r1 = NULL
    //     0x4d38d0: mov          r1, NULL
    //     0x4d38d4: mov          r4, #0x3c
    // 0x4d38d8: branchIfSmi(r0, 0x4d38e4)
    //     0x4d38d8: tbz          r0, #0, 0x4d38e4
    // 0x4d38dc: r4 = LoadClassIdInstr(r0)
    //     0x4d38dc: ldur         r4, [r0, #-1]
    //     0x4d38e0: ubfx         r4, r4, #0xc, #0x14
    //     0x4d38e4: sub          r4, r4, #0x56
    //     0x4d38e8: cmp          r4, #1
    // 0x4d38ec: b.ls 0x4d3920
    //     0x4d38ec: b.ls         0x4d3920
    //     0x4d38f0: cmp          r4, #0xd02
    // 0x4d38f4: b.eq 0x4d3920
    //     0x4d38f4: b.eq         0x4d3920
    //     0x4d38f8: cmp          r4, #0xd10
    // 0x4d38fc: b.eq 0x4d3920
    //     0x4d38fc: b.eq         0x4d3920
    //     0x4d3900: sub          r4, r4, #0xd2f
    //     0x4d3904: cmp          r4, #0x2a
    // 0x4d3908: b.ls 0x4d3920
    //     0x4d3908: b.ls         0x4d3920
    // 0x4d390c: r8 = pp[0xf99]
    //     0x4d390c: add          r8, PP, #9, lsl #12
    //     0x4d3910: ldr          r8, [r8, #0xf90]
    // 0x4d3914: r3 = pp[0x3ec]
    //     0x4d3914: add          r3, PP, #0xc, lsl #12
    //     0x4d3918: ldr          r3, [r3, #0x3e0]
    // 0x4d391c: r0 = call 0x61d6cc
    //     0x4d391c: bl           0x61d6cc
    //     0x4d3920: ldur         r0, [fp, #-8]
    // 0x4d3924: LoadField: r1 = r0->field_f
    //     0x4d3924: ldur         r1, [r0, #0xf]
    //     0x4d3928: add          r1, r1, HEAP, lsl #32
    //     0x4d392c: ldur         BARRIER, [fp, #-0x18]
    //     0x4d3930: stp          BARRIER, r1, [SP, #8]
    //     0x4d3934: ldur         BARRIER, [fp, #-0x10]
    //     0x4d3938: str          BARRIER, [SP]
    // 0x4d393c: r0 = r1
    //     0x4d393c: mov          r0, r1
    // 0x4d3940: r4 = pp[0x370]
    //     0x4d3940: ldr          r4, [PP, #0x370]
    // 0x4d3944: LoadField: r2 = r0->field_1f
    //     0x4d3944: ldur         r2, [r0, #0x1f]
    // 0x4d3948: r0 = [R]()
    //     0x4d3948: blr          r2
    // 0x4d394c: r0 = NULL
    //     0x4d394c: mov          r0, NULL
    // 0x4d3950: SP = fp
    //     0x4d3950: mov          SP, fp
    // 0x4d3954: LeaveFrame
    //     0x4d3954: ldp          fp, lr, [SP], #0x10
    // 0x4d3958: ret
    //     0x4d3958: ret          
    // 0x4d395c: r0 = call 0x61fa28
    //     0x4d395c: bl           0x61fa28
    // 0x4d3960: b 0x4d3728
    //     0x4d3960: b            0x4d3728
  }
