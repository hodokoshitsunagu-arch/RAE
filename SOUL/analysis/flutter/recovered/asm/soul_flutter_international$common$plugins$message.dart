// lib: , url: soul_flutter_international$common$plugins$message


  getH5Host() {
    // ** addr: 0x3a8570, size: 0x10c
    // 0x3a8570: EnterFrame
    //     0x3a8570: stp          fp, lr, [SP, #-0x10]!
    //     0x3a8574: mov          fp, SP
    // 0x3a8578: AllocStack(0x18)
    //     0x3a8578: sub          SP, SP, #0x18
    //     0x3a857c: stur         NULL, [fp, #-8]
    // 0x3a8580: CheckStackOverflow
    //     0x3a8580: ldr          BARRIER, [THR, #0x38]
    //     0x3a8584: cmp          SP, BARRIER
    //     0x3a8588: b.ls         0x3a8674
    // 0x3a858c: r0 = pp[0x868]
    //     0x3a858c: ldr          r0, [PP, #0x868]
    // 0x3a8590: r0 = call 0x2b16e4
    //     0x3a8590: bl           0x2b16e4
    //     0x3a8594: ldr          r0, [THR, #0x68]
    // 0x3a8598: LoadField: r0 = r0->field_17d8
    //     0x3a8598: ldr          r0, [r0, #0x17d8]
    // 0x3a859c: BARRIER = pp[0x40]
    //     0x3a859c: ldr          BARRIER, [PP, #0x40]
    //     0x3a85a0: cmp          r0, r16
    // 0x3a85a4: b.ne 0x3a85b0
    //     0x3a85a4: b.ne         0x3a85b0
    // 0x3a85a8: r2 = pp[0x3680]
    //     0x3a85a8: ldr          r2, [PP, #0x3680]
    // 0x3a85ac: r0 = call 0x61d99c
    //     0x3a85ac: bl           0x61d99c
    // 0x3a85b0: r1 = r0
    //     0x3a85b0: mov          r1, r0
    // 0x3a85b4: r2 = pp[0x330]
    //     0x3a85b4: add          r2, PP, #0x10, lsl #12
    //     0x3a85b8: ldr          r2, [r2, #0x320]
    // 0x3a85bc: r4 = pp[0x278]
    //     0x3a85bc: ldr          r4, [PP, #0x278]
    // 0x3a85c0: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x3a85c0: bl           0x3a8288
    // 0x3a85c4: r1 = r0
    //     0x3a85c4: mov          r1, r0
    //     0x3a85c8: stur         r1, [fp, #-0x10]
    // 0x3a85cc: r0 = call 0x2b13a0
    //     0x3a85cc: bl           0x2b13a0
    // 0x3a85d0: r3 = r0
    //     0x3a85d0: mov          r3, r0
    // 0x3a85d4: r2 = NULL
    //     0x3a85d4: mov          r2, NULL
    // 0x3a85d8: r1 = NULL
    //     0x3a85d8: mov          r1, NULL
    //     0x3a85dc: stur         r3, [fp, #-0x10]
    //     0x3a85e0: mov          r4, #0x3c
    // 0x3a85e4: branchIfSmi(r0, 0x3a85f0)
    //     0x3a85e4: tbz          r0, #0, 0x3a85f0
    // 0x3a85e8: r4 = LoadClassIdInstr(r0)
    //     0x3a85e8: ldur         r4, [r0, #-1]
    //     0x3a85ec: ubfx         r4, r4, #0xc, #0x14
    //     0x3a85f0: sub          r4, r4, #0x5e
    //     0x3a85f4: cmp          r4, #1
    // 0x3a85f8: b.ls 0x3a860c
    //     0x3a85f8: b.ls         0x3a860c
    // 0x3a85fc: r8 = pp[0xae0]
    //     0x3a85fc: ldr          r8, [PP, #0xae0]
    // 0x3a8600: r3 = pp[0x338]
    //     0x3a8600: add          r3, PP, #0x10, lsl #12
    //     0x3a8604: ldr          r3, [r3, #0x328]
    // 0x3a8608: r0 = call 0x278d08
    //     0x3a8608: bl           0x278d08
    //     0x3a860c: ldur         r0, [fp, #-0x10]
    //     0x3a8610: cmp          r0, r22
    // 0x3a8614: b.ne 0x3a8620
    //     0x3a8614: b.ne         0x3a8620
    // 0x3a8618: r2 = pp[0x148]
    //     0x3a8618: ldr          r2, [PP, #0x148]
    // 0x3a861c: b 0x3a8624
    //     0x3a861c: b            0x3a8624
    // 0x3a8620: r2 = r0
    //     0x3a8620: mov          r2, r0
    //     0x3a8624: stur         r2, [fp, #-0x10]
    // 0x3a8628: r1 = pp[0x868]
    //     0x3a8628: ldr          r1, [PP, #0x868]
    // 0x3a862c: r0 = call 0x2abee8
    //     0x3a862c: bl           0x2abee8
    //     0x3a8630: stur         r0, [fp, #-0x18]
    // 0x3a8634: StoreField: r0->field_b = xzr
    //     0x3a8634: stur         xzr, [r0, #0xb]
    //     0x3a8638: ldr          r0, [THR, #0x68]
    // 0x3a863c: LoadField: r0 = r0->field_710
    //     0x3a863c: ldr          r0, [r0, #0x710]
    // 0x3a8640: BARRIER = pp[0x40]
    //     0x3a8640: ldr          BARRIER, [PP, #0x40]
    //     0x3a8644: cmp          r0, r16
    // 0x3a8648: b.ne 0x3a8654
    //     0x3a8648: b.ne         0x3a8654
    // 0x3a864c: r2 = pp[0x128]
    //     0x3a864c: ldr          r2, [PP, #0x128]
    // 0x3a8650: r0 = call 0x61da04
    //     0x3a8650: bl           0x61da04
    // 0x3a8654: r1 = r0
    //     0x3a8654: mov          r1, r0
    //     0x3a8658: ldur         r0, [fp, #-0x18]
    // 0x3a865c: StoreField: r0->field_13 = r1
    //     0x3a865c: stur         r1, [r0, #0x13]
    // 0x3a8660: r1 = r0
    //     0x3a8660: mov          r1, r0
    //     0x3a8664: ldur         r2, [fp, #-0x10]
    // 0x3a8668: r0 = dart_async__Future::_asyncComplete()
    //     0x3a8668: bl           0x27a970
    //     0x3a866c: ldur         r0, [fp, #-0x18]
    // 0x3a8670: b 0x2b19a0
    //     0x3a8670: b            0x2b19a0
    // 0x3a8674: r0 = call 0x61fa28
    //     0x3a8674: bl           0x61fa28
    // 0x3a8678: b 0x3a858c
    //     0x3a8678: b            0x3a858c
  }

  _channel() {
    // ** addr: 0x3a867c, size: 0x44
    // 0x3a867c: EnterFrame
    //     0x3a867c: stp          fp, lr, [SP, #-0x10]!
    //     0x3a8680: mov          fp, SP
    // 0x3a8684: AllocStack(8)
    //     0x3a8684: sub          SP, SP, #8
    // 0x3a8688: CheckStackOverflow
    //     0x3a8688: ldr          BARRIER, [THR, #0x38]
    //     0x3a868c: cmp          SP, BARRIER
    //     0x3a8690: b.ls         0x3a86b8
    // 0x3a8694: r0 = call 0x3a84b8
    //     0x3a8694: bl           0x3a84b8
    // 0x3a8698: r1 = r0
    //     0x3a8698: mov          r1, r0
    // 0x3a869c: r2 = pp[0x36a0]
    //     0x3a869c: ldr          r2, [PP, #0x36a0]
    //     0x3a86a0: stur         r0, [fp, #-8]
    // 0x3a86a4: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::ctor()
    //     0x3a86a4: bl           0x3a83ec
    //     0x3a86a8: ldur         r0, [fp, #-8]
    // 0x3a86ac: SP = fp
    //     0x3a86ac: mov          SP, fp
    // 0x3a86b0: LeaveFrame
    //     0x3a86b0: ldp          fp, lr, [SP], #0x10
    // 0x3a86b4: ret
    //     0x3a86b4: ret          
    // 0x3a86b8: r0 = call 0x61fa28
    //     0x3a86b8: bl           0x61fa28
    // 0x3a86bc: b 0x3a8694
    //     0x3a86bc: b            0x3a8694
  }

  getUserInfo() {
    // ** addr: 0x3b89cc, size: 0x18c
    // 0x3b89cc: EnterFrame
    //     0x3b89cc: stp          fp, lr, [SP, #-0x10]!
    //     0x3b89d0: mov          fp, SP
    // 0x3b89d4: AllocStack(0x18)
    //     0x3b89d4: sub          SP, SP, #0x18
    //     0x3b89d8: stur         NULL, [fp, #-8]
    // 0x3b89dc: CheckStackOverflow
    //     0x3b89dc: ldr          BARRIER, [THR, #0x38]
    //     0x3b89e0: cmp          SP, BARRIER
    //     0x3b89e4: b.ls         0x3b8b50
    // 0x3b89e8: r0 = pp[0xda6]
    //     0x3b89e8: add          r0, PP, #0xe, lsl #12
    //     0x3b89ec: ldr          r0, [r0, #0xd98]
    // 0x3b89f0: r0 = call 0x2b16e4
    //     0x3b89f0: bl           0x2b16e4
    //     0x3b89f4: ldr          r0, [THR, #0x68]
    // 0x3b89f8: LoadField: r0 = r0->field_17d8
    //     0x3b89f8: ldr          r0, [r0, #0x17d8]
    // 0x3b89fc: BARRIER = pp[0x40]
    //     0x3b89fc: ldr          BARRIER, [PP, #0x40]
    //     0x3b8a00: cmp          r0, r16
    // 0x3b8a04: b.ne 0x3b8a10
    //     0x3b8a04: b.ne         0x3b8a10
    // 0x3b8a08: r2 = pp[0x3680]
    //     0x3b8a08: ldr          r2, [PP, #0x3680]
    // 0x3b8a0c: r0 = call 0x61d99c
    //     0x3b8a0c: bl           0x61d99c
    // 0x3b8a10: r1 = r0
    //     0x3b8a10: mov          r1, r0
    // 0x3b8a14: r2 = pp[0xdae]
    //     0x3b8a14: add          r2, PP, #0xe, lsl #12
    //     0x3b8a18: ldr          r2, [r2, #0xda0]
    // 0x3b8a1c: r4 = pp[0x278]
    //     0x3b8a1c: ldr          r4, [PP, #0x278]
    // 0x3b8a20: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x3b8a20: bl           0x3a8288
    // 0x3b8a24: r1 = r0
    //     0x3b8a24: mov          r1, r0
    //     0x3b8a28: stur         r1, [fp, #-0x10]
    // 0x3b8a2c: r0 = call 0x2b13a0
    //     0x3b8a2c: bl           0x2b13a0
    // 0x3b8a30: r3 = r0
    //     0x3b8a30: mov          r3, r0
    // 0x3b8a34: r2 = NULL
    //     0x3b8a34: mov          r2, NULL
    // 0x3b8a38: r1 = NULL
    //     0x3b8a38: mov          r1, NULL
    //     0x3b8a3c: stur         r3, [fp, #-0x10]
    //     0x3b8a40: mov          r4, #0x3c
    // 0x3b8a44: branchIfSmi(r0, 0x3b8a50)
    //     0x3b8a44: tbz          r0, #0, 0x3b8a50
    // 0x3b8a48: r4 = LoadClassIdInstr(r0)
    //     0x3b8a48: ldur         r4, [r0, #-1]
    //     0x3b8a4c: ubfx         r4, r4, #0xc, #0x14
    //     0x3b8a50: sub          r4, r4, #0x5e
    //     0x3b8a54: cmp          r4, #1
    // 0x3b8a58: b.ls 0x3b8a6c
    //     0x3b8a58: b.ls         0x3b8a6c
    // 0x3b8a5c: r8 = pp[0xae0]
    //     0x3b8a5c: ldr          r8, [PP, #0xae0]
    // 0x3b8a60: r3 = pp[0xdb6]
    //     0x3b8a60: add          r3, PP, #0xe, lsl #12
    //     0x3b8a64: ldr          r3, [r3, #0xda8]
    // 0x3b8a68: r0 = call 0x278d08
    //     0x3b8a68: bl           0x278d08
    //     0x3b8a6c: ldur         r1, [fp, #-0x10]
    //     0x3b8a70: cmp          r1, r22
    // 0x3b8a74: b.eq 0x3b8b00
    //     0x3b8a74: b.eq         0x3b8b00
    // 0x3b8a78: r0 = dart_convert_::jsonDecode()
    //     0x3b8a78: bl           0x3ac138
    // 0x3b8a7c: r3 = r0
    //     0x3b8a7c: mov          r3, r0
    // 0x3b8a80: r2 = NULL
    //     0x3b8a80: mov          r2, NULL
    // 0x3b8a84: r1 = NULL
    //     0x3b8a84: mov          r1, NULL
    //     0x3b8a88: stur         r3, [fp, #-0x10]
    // 0x3b8a8c: r8 = pp[0x3cd0]
    //     0x3b8a8c: ldr          r8, [PP, #0x3cd0]
    // 0x3b8a90: r3 = pp[0xdc6]
    //     0x3b8a90: add          r3, PP, #0xe, lsl #12
    //     0x3b8a94: ldr          r3, [r3, #0xdb8]
    // 0x3b8a98: r0 = call 0x2b15f0
    //     0x3b8a98: bl           0x2b15f0
    // 0x3b8a9c: r0 = call 0x3b9118
    //     0x3b8a9c: bl           0x3b9118
    // 0x3b8aa0: r1 = r0
    //     0x3b8aa0: mov          r1, r0
    //     0x3b8aa4: ldur         r2, [fp, #-0x10]
    //     0x3b8aa8: stur         r0, [fp, #-0x10]
    // 0x3b8aac: r0 = soul_flutter_international$common$plugins$message_UserInfo::ctor_fromJson()
    //     0x3b8aac: bl           0x3b8b58
    // 0x3b8ab0: r1 = pp[0xda6]
    //     0x3b8ab0: add          r1, PP, #0xe, lsl #12
    //     0x3b8ab4: ldr          r1, [r1, #0xd98]
    // 0x3b8ab8: r0 = call 0x2abee8
    //     0x3b8ab8: bl           0x2abee8
    //     0x3b8abc: stur         r0, [fp, #-0x18]
    // 0x3b8ac0: StoreField: r0->field_b = xzr
    //     0x3b8ac0: stur         xzr, [r0, #0xb]
    //     0x3b8ac4: ldr          r0, [THR, #0x68]
    // 0x3b8ac8: LoadField: r0 = r0->field_710
    //     0x3b8ac8: ldr          r0, [r0, #0x710]
    // 0x3b8acc: BARRIER = pp[0x40]
    //     0x3b8acc: ldr          BARRIER, [PP, #0x40]
    //     0x3b8ad0: cmp          r0, r16
    // 0x3b8ad4: b.ne 0x3b8ae0
    //     0x3b8ad4: b.ne         0x3b8ae0
    // 0x3b8ad8: r2 = pp[0x128]
    //     0x3b8ad8: ldr          r2, [PP, #0x128]
    // 0x3b8adc: r0 = call 0x61da04
    //     0x3b8adc: bl           0x61da04
    // 0x3b8ae0: r1 = r0
    //     0x3b8ae0: mov          r1, r0
    //     0x3b8ae4: ldur         r0, [fp, #-0x18]
    // 0x3b8ae8: StoreField: r0->field_13 = r1
    //     0x3b8ae8: stur         r1, [r0, #0x13]
    // 0x3b8aec: r1 = r0
    //     0x3b8aec: mov          r1, r0
    //     0x3b8af0: ldur         r2, [fp, #-0x10]
    // 0x3b8af4: r0 = dart_async__Future::_asyncComplete()
    //     0x3b8af4: bl           0x27a970
    //     0x3b8af8: ldur         r0, [fp, #-0x18]
    // 0x3b8afc: b 0x2b19a0
    //     0x3b8afc: b            0x2b19a0
    // 0x3b8b00: r1 = pp[0xda6]
    //     0x3b8b00: add          r1, PP, #0xe, lsl #12
    //     0x3b8b04: ldr          r1, [r1, #0xd98]
    // 0x3b8b08: r0 = call 0x2abee8
    //     0x3b8b08: bl           0x2abee8
    //     0x3b8b0c: stur         r0, [fp, #-0x10]
    // 0x3b8b10: StoreField: r0->field_b = xzr
    //     0x3b8b10: stur         xzr, [r0, #0xb]
    //     0x3b8b14: ldr          r0, [THR, #0x68]
    // 0x3b8b18: LoadField: r0 = r0->field_710
    //     0x3b8b18: ldr          r0, [r0, #0x710]
    // 0x3b8b1c: BARRIER = pp[0x40]
    //     0x3b8b1c: ldr          BARRIER, [PP, #0x40]
    //     0x3b8b20: cmp          r0, r16
    // 0x3b8b24: b.ne 0x3b8b30
    //     0x3b8b24: b.ne         0x3b8b30
    // 0x3b8b28: r2 = pp[0x128]
    //     0x3b8b28: ldr          r2, [PP, #0x128]
    // 0x3b8b2c: r0 = call 0x61da04
    //     0x3b8b2c: bl           0x61da04
    //     0x3b8b30: ldur         r1, [fp, #-0x10]
    // 0x3b8b34: StoreField: r1->field_13 = r0
    //     0x3b8b34: stur         r0, [r1, #0x13]
    // 0x3b8b38: r0 = call 0x3b9118
    //     0x3b8b38: bl           0x3b9118
    //     0x3b8b3c: ldur         r1, [fp, #-0x10]
    // 0x3b8b40: r2 = r0
    //     0x3b8b40: mov          r2, r0
    // 0x3b8b44: r0 = dart_async__Future::_asyncComplete()
    //     0x3b8b44: bl           0x27a970
    //     0x3b8b48: ldur         r0, [fp, #-0x10]
    // 0x3b8b4c: b 0x2b19a0
    //     0x3b8b4c: b            0x2b19a0
    // 0x3b8b50: r0 = call 0x61fa28
    //     0x3b8b50: bl           0x61fa28
    // 0x3b8b54: b 0x3b89e8
    //     0x3b8b54: b            0x3b89e8
  }

  resetSpecialFaceDot() {
    // ** addr: 0x43ddf8, size: 0x10c
    // 0x43ddf8: EnterFrame
    //     0x43ddf8: stp          fp, lr, [SP, #-0x10]!
    //     0x43ddfc: mov          fp, SP
    // 0x43de00: AllocStack(0x18)
    //     0x43de00: sub          SP, SP, #0x18
    //     0x43de04: stur         NULL, [fp, #-8]
    // 0x43de08: CheckStackOverflow
    //     0x43de08: ldr          BARRIER, [THR, #0x38]
    //     0x43de0c: cmp          SP, BARRIER
    //     0x43de10: b.ls         0x43defc
    // 0x43de14: r0 = pp[0x868]
    //     0x43de14: ldr          r0, [PP, #0x868]
    // 0x43de18: r0 = call 0x2b16e4
    //     0x43de18: bl           0x2b16e4
    //     0x43de1c: ldr          r0, [THR, #0x68]
    // 0x43de20: LoadField: r0 = r0->field_17d8
    //     0x43de20: ldr          r0, [r0, #0x17d8]
    // 0x43de24: BARRIER = pp[0x40]
    //     0x43de24: ldr          BARRIER, [PP, #0x40]
    //     0x43de28: cmp          r0, r16
    // 0x43de2c: b.ne 0x43de38
    //     0x43de2c: b.ne         0x43de38
    // 0x43de30: r2 = pp[0x3680]
    //     0x43de30: ldr          r2, [PP, #0x3680]
    // 0x43de34: r0 = call 0x61d99c
    //     0x43de34: bl           0x61d99c
    // 0x43de38: r1 = r0
    //     0x43de38: mov          r1, r0
    // 0x43de3c: r2 = pp[0x597]
    //     0x43de3c: add          r2, PP, #0xf, lsl #12
    //     0x43de40: ldr          r2, [r2, #0x588]
    // 0x43de44: r4 = pp[0x278]
    //     0x43de44: ldr          r4, [PP, #0x278]
    // 0x43de48: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x43de48: bl           0x3a8288
    // 0x43de4c: r1 = r0
    //     0x43de4c: mov          r1, r0
    //     0x43de50: stur         r1, [fp, #-0x10]
    // 0x43de54: r0 = call 0x2b13a0
    //     0x43de54: bl           0x2b13a0
    // 0x43de58: r3 = r0
    //     0x43de58: mov          r3, r0
    // 0x43de5c: r2 = NULL
    //     0x43de5c: mov          r2, NULL
    // 0x43de60: r1 = NULL
    //     0x43de60: mov          r1, NULL
    //     0x43de64: stur         r3, [fp, #-0x10]
    //     0x43de68: mov          r4, #0x3c
    // 0x43de6c: branchIfSmi(r0, 0x43de78)
    //     0x43de6c: tbz          r0, #0, 0x43de78
    // 0x43de70: r4 = LoadClassIdInstr(r0)
    //     0x43de70: ldur         r4, [r0, #-1]
    //     0x43de74: ubfx         r4, r4, #0xc, #0x14
    //     0x43de78: sub          r4, r4, #0x5e
    //     0x43de7c: cmp          r4, #1
    // 0x43de80: b.ls 0x43de94
    //     0x43de80: b.ls         0x43de94
    // 0x43de84: r8 = pp[0xae0]
    //     0x43de84: ldr          r8, [PP, #0xae0]
    // 0x43de88: r3 = pp[0x59f]
    //     0x43de88: add          r3, PP, #0xf, lsl #12
    //     0x43de8c: ldr          r3, [r3, #0x590]
    // 0x43de90: r0 = call 0x278d08
    //     0x43de90: bl           0x278d08
    //     0x43de94: ldur         r0, [fp, #-0x10]
    //     0x43de98: cmp          r0, r22
    // 0x43de9c: b.ne 0x43dea8
    //     0x43de9c: b.ne         0x43dea8
    // 0x43dea0: r2 = pp[0x148]
    //     0x43dea0: ldr          r2, [PP, #0x148]
    // 0x43dea4: b 0x43deac
    //     0x43dea4: b            0x43deac
    // 0x43dea8: r2 = r0
    //     0x43dea8: mov          r2, r0
    //     0x43deac: stur         r2, [fp, #-0x10]
    // 0x43deb0: r1 = pp[0x868]
    //     0x43deb0: ldr          r1, [PP, #0x868]
    // 0x43deb4: r0 = call 0x2abee8
    //     0x43deb4: bl           0x2abee8
    //     0x43deb8: stur         r0, [fp, #-0x18]
    // 0x43debc: StoreField: r0->field_b = xzr
    //     0x43debc: stur         xzr, [r0, #0xb]
    //     0x43dec0: ldr          r0, [THR, #0x68]
    // 0x43dec4: LoadField: r0 = r0->field_710
    //     0x43dec4: ldr          r0, [r0, #0x710]
    // 0x43dec8: BARRIER = pp[0x40]
    //     0x43dec8: ldr          BARRIER, [PP, #0x40]
    //     0x43decc: cmp          r0, r16
    // 0x43ded0: b.ne 0x43dedc
    //     0x43ded0: b.ne         0x43dedc
    // 0x43ded4: r2 = pp[0x128]
    //     0x43ded4: ldr          r2, [PP, #0x128]
    // 0x43ded8: r0 = call 0x61da04
    //     0x43ded8: bl           0x61da04
    // 0x43dedc: r1 = r0
    //     0x43dedc: mov          r1, r0
    //     0x43dee0: ldur         r0, [fp, #-0x18]
    // 0x43dee4: StoreField: r0->field_13 = r1
    //     0x43dee4: stur         r1, [r0, #0x13]
    // 0x43dee8: r1 = r0
    //     0x43dee8: mov          r1, r0
    //     0x43deec: ldur         r2, [fp, #-0x10]
    // 0x43def0: r0 = dart_async__Future::_asyncComplete()
    //     0x43def0: bl           0x27a970
    //     0x43def4: ldur         r0, [fp, #-0x18]
    // 0x43def8: b 0x2b19a0
    //     0x43def8: b            0x2b19a0
    // 0x43defc: r0 = call 0x61fa28
    //     0x43defc: bl           0x61fa28
    // 0x43df00: b 0x43de14
    //     0x43df00: b            0x43de14
  }

  getSpecialFaceDot() {
    // ** addr: 0x4aa1c4, size: 0x10c
    // 0x4aa1c4: EnterFrame
    //     0x4aa1c4: stp          fp, lr, [SP, #-0x10]!
    //     0x4aa1c8: mov          fp, SP
    // 0x4aa1cc: AllocStack(0x18)
    //     0x4aa1cc: sub          SP, SP, #0x18
    //     0x4aa1d0: stur         NULL, [fp, #-8]
    // 0x4aa1d4: CheckStackOverflow
    //     0x4aa1d4: ldr          BARRIER, [THR, #0x38]
    //     0x4aa1d8: cmp          SP, BARRIER
    //     0x4aa1dc: b.ls         0x4aa2c8
    // 0x4aa1e0: r0 = pp[0x868]
    //     0x4aa1e0: ldr          r0, [PP, #0x868]
    // 0x4aa1e4: r0 = call 0x2b16e4
    //     0x4aa1e4: bl           0x2b16e4
    //     0x4aa1e8: ldr          r0, [THR, #0x68]
    // 0x4aa1ec: LoadField: r0 = r0->field_17d8
    //     0x4aa1ec: ldr          r0, [r0, #0x17d8]
    // 0x4aa1f0: BARRIER = pp[0x40]
    //     0x4aa1f0: ldr          BARRIER, [PP, #0x40]
    //     0x4aa1f4: cmp          r0, r16
    // 0x4aa1f8: b.ne 0x4aa204
    //     0x4aa1f8: b.ne         0x4aa204
    // 0x4aa1fc: r2 = pp[0x3680]
    //     0x4aa1fc: ldr          r2, [PP, #0x3680]
    // 0x4aa200: r0 = call 0x61d99c
    //     0x4aa200: bl           0x61d99c
    // 0x4aa204: r1 = r0
    //     0x4aa204: mov          r1, r0
    // 0x4aa208: r2 = pp[0x767]
    //     0x4aa208: add          r2, PP, #0xf, lsl #12
    //     0x4aa20c: ldr          r2, [r2, #0x758]
    // 0x4aa210: r4 = pp[0x278]
    //     0x4aa210: ldr          r4, [PP, #0x278]
    // 0x4aa214: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x4aa214: bl           0x3a8288
    // 0x4aa218: r1 = r0
    //     0x4aa218: mov          r1, r0
    //     0x4aa21c: stur         r1, [fp, #-0x10]
    // 0x4aa220: r0 = call 0x2b13a0
    //     0x4aa220: bl           0x2b13a0
    // 0x4aa224: r3 = r0
    //     0x4aa224: mov          r3, r0
    // 0x4aa228: r2 = NULL
    //     0x4aa228: mov          r2, NULL
    // 0x4aa22c: r1 = NULL
    //     0x4aa22c: mov          r1, NULL
    //     0x4aa230: stur         r3, [fp, #-0x10]
    //     0x4aa234: mov          r4, #0x3c
    // 0x4aa238: branchIfSmi(r0, 0x4aa244)
    //     0x4aa238: tbz          r0, #0, 0x4aa244
    // 0x4aa23c: r4 = LoadClassIdInstr(r0)
    //     0x4aa23c: ldur         r4, [r0, #-1]
    //     0x4aa240: ubfx         r4, r4, #0xc, #0x14
    //     0x4aa244: sub          r4, r4, #0x5e
    //     0x4aa248: cmp          r4, #1
    // 0x4aa24c: b.ls 0x4aa260
    //     0x4aa24c: b.ls         0x4aa260
    // 0x4aa250: r8 = pp[0xae0]
    //     0x4aa250: ldr          r8, [PP, #0xae0]
    // 0x4aa254: r3 = pp[0x76f]
    //     0x4aa254: add          r3, PP, #0xf, lsl #12
    //     0x4aa258: ldr          r3, [r3, #0x760]
    // 0x4aa25c: r0 = call 0x278d08
    //     0x4aa25c: bl           0x278d08
    //     0x4aa260: ldur         r0, [fp, #-0x10]
    //     0x4aa264: cmp          r0, r22
    // 0x4aa268: b.ne 0x4aa274
    //     0x4aa268: b.ne         0x4aa274
    // 0x4aa26c: r2 = pp[0x2a50]
    //     0x4aa26c: ldr          r2, [PP, #0x2a50]
    // 0x4aa270: b 0x4aa278
    //     0x4aa270: b            0x4aa278
    // 0x4aa274: r2 = r0
    //     0x4aa274: mov          r2, r0
    //     0x4aa278: stur         r2, [fp, #-0x10]
    // 0x4aa27c: r1 = pp[0x868]
    //     0x4aa27c: ldr          r1, [PP, #0x868]
    // 0x4aa280: r0 = call 0x2abee8
    //     0x4aa280: bl           0x2abee8
    //     0x4aa284: stur         r0, [fp, #-0x18]
    // 0x4aa288: StoreField: r0->field_b = xzr
    //     0x4aa288: stur         xzr, [r0, #0xb]
    //     0x4aa28c: ldr          r0, [THR, #0x68]
    // 0x4aa290: LoadField: r0 = r0->field_710
    //     0x4aa290: ldr          r0, [r0, #0x710]
    // 0x4aa294: BARRIER = pp[0x40]
    //     0x4aa294: ldr          BARRIER, [PP, #0x40]
    //     0x4aa298: cmp          r0, r16
    // 0x4aa29c: b.ne 0x4aa2a8
    //     0x4aa29c: b.ne         0x4aa2a8
    // 0x4aa2a0: r2 = pp[0x128]
    //     0x4aa2a0: ldr          r2, [PP, #0x128]
    // 0x4aa2a4: r0 = call 0x61da04
    //     0x4aa2a4: bl           0x61da04
    // 0x4aa2a8: r1 = r0
    //     0x4aa2a8: mov          r1, r0
    //     0x4aa2ac: ldur         r0, [fp, #-0x18]
    // 0x4aa2b0: StoreField: r0->field_13 = r1
    //     0x4aa2b0: stur         r1, [r0, #0x13]
    // 0x4aa2b4: r1 = r0
    //     0x4aa2b4: mov          r1, r0
    //     0x4aa2b8: ldur         r2, [fp, #-0x10]
    // 0x4aa2bc: r0 = dart_async__Future::_asyncComplete()
    //     0x4aa2bc: bl           0x27a970
    //     0x4aa2c0: ldur         r0, [fp, #-0x18]
    // 0x4aa2c4: b 0x2b19a0
    //     0x4aa2c4: b            0x2b19a0
    // 0x4aa2c8: r0 = call 0x61fa28
    //     0x4aa2c8: bl           0x61fa28
    // 0x4aa2cc: b 0x4aa1e0
    //     0x4aa2cc: b            0x4aa1e0
  }

  init() {
    // ** addr: 0x627bb8, size: 0x144
    // 0x627bb8: EnterFrame
    //     0x627bb8: stp          fp, lr, [SP, #-0x10]!
    //     0x627bbc: mov          fp, SP
    // 0x627bc0: AllocStack(0x30)
    //     0x627bc0: sub          SP, SP, #0x30
    //     0x627bc4: stur         NULL, [fp, #-8]
    // 0x627bc8: CheckStackOverflow
    //     0x627bc8: ldr          BARRIER, [THR, #0x38]
    //     0x627bcc: cmp          SP, BARRIER
    //     0x627bd0: b.ls         0x627cf4
    // 0x627bd4: r0 = pp[0x35f8]
    //     0x627bd4: ldr          r0, [PP, #0x35f8]
    // 0x627bd8: r0 = call 0x2b16e4
    //     0x627bd8: bl           0x2b16e4
    // 0x627bdc: r0 = soul_flutter_international$common$plugins$message_SOMessages::getLanguage()
    //     0x627bdc: bl           0x627e0c
    //     0x627be0: stur         r0, [fp, #-0x10]
    // 0x627be4: r0 = soul_flutter_international$common$plugins$message_SOMessages::getAppTheme()
    //     0x627be4: bl           0x627d08
    // 0x627be8: r1 = NULL
    //     0x627be8: mov          r1, NULL
    //     0x627bec: mov          r2, #4
    //     0x627bf0: stur         r0, [fp, #-0x18]
    // 0x627bf4: r0 = call 0x61f920
    //     0x627bf4: bl           0x61f920
    // 0x627bf8: r2 = r0
    //     0x627bf8: mov          r2, r0
    //     0x627bfc: ldur         r0, [fp, #-0x10]
    //     0x627c00: stur         r2, [fp, #-0x20]
    // 0x627c04: StoreField: r2->field_f = r0
    //     0x627c04: stur         r0, [r2, #0xf]
    //     0x627c08: ldur         r0, [fp, #-0x18]
    // 0x627c0c: StoreField: r2->field_13 = r0
    //     0x627c0c: stur         r0, [r2, #0x13]
    // 0x627c10: r1 = pp[0x3600]
    //     0x627c10: ldr          r1, [PP, #0x3600]
    // 0x627c14: r0 = call 0x61e854
    //     0x627c14: bl           0x61e854
    // 0x627c18: r1 = r0
    //     0x627c18: mov          r1, r0
    //     0x627c1c: ldur         r0, [fp, #-0x20]
    // 0x627c20: StoreField: r1->field_f = r0
    //     0x627c20: stur         r0, [r1, #0xf]
    //     0x627c24: mov          r0, #4
    // 0x627c28: StoreField: r1->field_b = r0
    //     0x627c28: stur         r0, [r1, #0xb]
    // 0x627c2c: BARRIER = pp[0x868]
    //     0x627c2c: ldr          BARRIER, [PP, #0x868]
    //     0x627c30: stp          r1, BARRIER, [SP]
    // 0x627c34: r4 = pp[0x910]
    //     0x627c34: ldr          r4, [PP, #0x910]
    // 0x627c38: r0 = dart_async_Future::wait()
    //     0x627c38: bl           0x337318
    // 0x627c3c: r1 = r0
    //     0x627c3c: mov          r1, r0
    //     0x627c40: stur         r1, [fp, #-0x10]
    // 0x627c44: r0 = call 0x2b13a0
    //     0x627c44: bl           0x2b13a0
    // 0x627c48: r1 = r0
    //     0x627c48: mov          r1, r0
    //     0x627c4c: stur         r1, [fp, #-0x10]
    // 0x627c50: r0 = LoadClassIdInstr(r1)
    //     0x627c50: ldur         r0, [r1, #-1]
    //     0x627c54: ubfx         r0, r0, #0xc, #0x14
    //     0x627c58: stp          xzr, r1, [SP]
    //     0x627c5c: sub          lr, r0, #1, lsl #12
    //     0x627c60: ldr          lr, [r21, lr, lsl #3]
    // 0x627c64: r0 = [R]()
    //     0x627c64: blr          lr
    // 0x627c68: r1 = r0
    //     0x627c68: mov          r1, r0
    //     0x627c6c: ldur         r0, [fp, #-0x10]
    //     0x627c70: stur         r1, [fp, #-0x18]
    // 0x627c74: r2 = LoadClassIdInstr(r0)
    //     0x627c74: ldur         r2, [r0, #-1]
    //     0x627c78: ubfx         r2, r2, #0xc, #0x14
    //     0x627c7c: mov          BARRIER, #2
    //     0x627c80: stp          BARRIER, r0, [SP]
    // 0x627c84: r0 = r2
    //     0x627c84: mov          r0, r2
    //     0x627c88: sub          lr, r0, #1, lsl #12
    //     0x627c8c: ldr          lr, [r21, lr, lsl #3]
    // 0x627c90: r0 = [R]()
    //     0x627c90: blr          lr
    //     0x627c94: stur         r0, [fp, #-0x10]
    // 0x627c98: r0 = call 0x627cfc
    //     0x627c98: bl           0x627cfc
    // 0x627c9c: r1 = r0
    //     0x627c9c: mov          r1, r0
    //     0x627ca0: ldur         r0, [fp, #-0x18]
    //     0x627ca4: stur         r1, [fp, #-0x20]
    // 0x627ca8: StoreField: r1->field_2b = r0
    //     0x627ca8: stur         r0, [r1, #0x2b]
    //     0x627cac: ldur         r0, [fp, #-0x10]
    // 0x627cb0: StoreField: r1->field_2f = r0
    //     0x627cb0: stur         r0, [r1, #0x2f]
    //     0x627cb4: mov          r0, #-1
    // 0x627cb8: StoreField: r1->field_23 = r0
    //     0x627cb8: stur         r0, [r1, #0x23]
    // 0x627cbc: StoreField: r1->field_7 = xzr
    //     0x627cbc: stur         xzr, [r1, #7]
    // 0x627cc0: StoreField: r1->field_13 = xzr
    //     0x627cc0: stur         xzr, [r1, #0x13]
    // 0x627cc4: StoreField: r1->field_1b = xzr
    //     0x627cc4: stur         xzr, [r1, #0x1b]
    //     0x627cc8: ldr          r0, [THR, #0x68]
    // 0x627ccc: LoadField: r0 = r0->field_b90
    //     0x627ccc: ldr          r0, [r0, #0xb90]
    // 0x627cd0: BARRIER = pp[0x40]
    //     0x627cd0: ldr          BARRIER, [PP, #0x40]
    //     0x627cd4: cmp          r0, r16
    // 0x627cd8: b.ne 0x627ce4
    //     0x627cd8: b.ne         0x627ce4
    // 0x627cdc: r2 = pp[0x3608]
    //     0x627cdc: ldr          r2, [PP, #0x3608]
    // 0x627ce0: r0 = call 0x61d99c
    //     0x627ce0: bl           0x61d99c
    // 0x627ce4: r1 = r0
    //     0x627ce4: mov          r1, r0
    //     0x627ce8: ldur         r0, [fp, #-0x20]
    // 0x627cec: StoreField: r0->field_f = r1
    //     0x627cec: stur         r1, [r0, #0xf]
    // 0x627cf0: b 0x2b16b8
    //     0x627cf0: b            0x2b16b8
    // 0x627cf4: r0 = call 0x61fa28
    //     0x627cf4: bl           0x61fa28
    // 0x627cf8: b 0x627bd4
    //     0x627cf8: b            0x627bd4
  }

  getAppTheme() {
    // ** addr: 0x627d08, size: 0x104
    // 0x627d08: EnterFrame
    //     0x627d08: stp          fp, lr, [SP, #-0x10]!
    //     0x627d0c: mov          fp, SP
    // 0x627d10: AllocStack(0x18)
    //     0x627d10: sub          SP, SP, #0x18
    //     0x627d14: stur         NULL, [fp, #-8]
    // 0x627d18: CheckStackOverflow
    //     0x627d18: ldr          BARRIER, [THR, #0x38]
    //     0x627d1c: cmp          SP, BARRIER
    //     0x627d20: b.ls         0x627e04
    // 0x627d24: r0 = pp[0x868]
    //     0x627d24: ldr          r0, [PP, #0x868]
    // 0x627d28: r0 = call 0x2b16e4
    //     0x627d28: bl           0x2b16e4
    //     0x627d2c: ldr          r0, [THR, #0x68]
    // 0x627d30: LoadField: r0 = r0->field_17d8
    //     0x627d30: ldr          r0, [r0, #0x17d8]
    // 0x627d34: BARRIER = pp[0x40]
    //     0x627d34: ldr          BARRIER, [PP, #0x40]
    //     0x627d38: cmp          r0, r16
    // 0x627d3c: b.ne 0x627d48
    //     0x627d3c: b.ne         0x627d48
    // 0x627d40: r2 = pp[0x3680]
    //     0x627d40: ldr          r2, [PP, #0x3680]
    // 0x627d44: r0 = call 0x61d99c
    //     0x627d44: bl           0x61d99c
    // 0x627d48: r1 = r0
    //     0x627d48: mov          r1, r0
    // 0x627d4c: r2 = pp[0x3688]
    //     0x627d4c: ldr          r2, [PP, #0x3688]
    // 0x627d50: r4 = pp[0x278]
    //     0x627d50: ldr          r4, [PP, #0x278]
    // 0x627d54: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x627d54: bl           0x3a8288
    // 0x627d58: r1 = r0
    //     0x627d58: mov          r1, r0
    //     0x627d5c: stur         r1, [fp, #-0x10]
    // 0x627d60: r0 = call 0x2b13a0
    //     0x627d60: bl           0x2b13a0
    // 0x627d64: r3 = r0
    //     0x627d64: mov          r3, r0
    // 0x627d68: r2 = NULL
    //     0x627d68: mov          r2, NULL
    // 0x627d6c: r1 = NULL
    //     0x627d6c: mov          r1, NULL
    //     0x627d70: stur         r3, [fp, #-0x10]
    //     0x627d74: mov          r4, #0x3c
    // 0x627d78: branchIfSmi(r0, 0x627d84)
    //     0x627d78: tbz          r0, #0, 0x627d84
    // 0x627d7c: r4 = LoadClassIdInstr(r0)
    //     0x627d7c: ldur         r4, [r0, #-1]
    //     0x627d80: ubfx         r4, r4, #0xc, #0x14
    //     0x627d84: sub          r4, r4, #0x5e
    //     0x627d88: cmp          r4, #1
    // 0x627d8c: b.ls 0x627d9c
    //     0x627d8c: b.ls         0x627d9c
    // 0x627d90: r8 = pp[0xae0]
    //     0x627d90: ldr          r8, [PP, #0xae0]
    // 0x627d94: r3 = pp[0x3690]
    //     0x627d94: ldr          r3, [PP, #0x3690]
    // 0x627d98: r0 = call 0x278d08
    //     0x627d98: bl           0x278d08
    //     0x627d9c: ldur         r0, [fp, #-0x10]
    //     0x627da0: cmp          r0, r22
    // 0x627da4: b.ne 0x627db0
    //     0x627da4: b.ne         0x627db0
    // 0x627da8: r2 = pp[0x148]
    //     0x627da8: ldr          r2, [PP, #0x148]
    // 0x627dac: b 0x627db4
    //     0x627dac: b            0x627db4
    // 0x627db0: r2 = r0
    //     0x627db0: mov          r2, r0
    //     0x627db4: stur         r2, [fp, #-0x10]
    // 0x627db8: r1 = pp[0x868]
    //     0x627db8: ldr          r1, [PP, #0x868]
    // 0x627dbc: r0 = call 0x2abee8
    //     0x627dbc: bl           0x2abee8
    //     0x627dc0: stur         r0, [fp, #-0x18]
    // 0x627dc4: StoreField: r0->field_b = xzr
    //     0x627dc4: stur         xzr, [r0, #0xb]
    //     0x627dc8: ldr          r0, [THR, #0x68]
    // 0x627dcc: LoadField: r0 = r0->field_710
    //     0x627dcc: ldr          r0, [r0, #0x710]
    // 0x627dd0: BARRIER = pp[0x40]
    //     0x627dd0: ldr          BARRIER, [PP, #0x40]
    //     0x627dd4: cmp          r0, r16
    // 0x627dd8: b.ne 0x627de4
    //     0x627dd8: b.ne         0x627de4
    // 0x627ddc: r2 = pp[0x128]
    //     0x627ddc: ldr          r2, [PP, #0x128]
    // 0x627de0: r0 = call 0x61da04
    //     0x627de0: bl           0x61da04
    // 0x627de4: r1 = r0
    //     0x627de4: mov          r1, r0
    //     0x627de8: ldur         r0, [fp, #-0x18]
    // 0x627dec: StoreField: r0->field_13 = r1
    //     0x627dec: stur         r1, [r0, #0x13]
    // 0x627df0: r1 = r0
    //     0x627df0: mov          r1, r0
    //     0x627df4: ldur         r2, [fp, #-0x10]
    // 0x627df8: r0 = dart_async__Future::_asyncComplete()
    //     0x627df8: bl           0x27a970
    //     0x627dfc: ldur         r0, [fp, #-0x18]
    // 0x627e00: b 0x2b19a0
    //     0x627e00: b            0x2b19a0
    // 0x627e04: r0 = call 0x61fa28
    //     0x627e04: bl           0x61fa28
    // 0x627e08: b 0x627d24
    //     0x627e08: b            0x627d24
  }

  getLanguage() {
    // ** addr: 0x627e0c, size: 0x104
    // 0x627e0c: EnterFrame
    //     0x627e0c: stp          fp, lr, [SP, #-0x10]!
    //     0x627e10: mov          fp, SP
    // 0x627e14: AllocStack(0x18)
    //     0x627e14: sub          SP, SP, #0x18
    //     0x627e18: stur         NULL, [fp, #-8]
    // 0x627e1c: CheckStackOverflow
    //     0x627e1c: ldr          BARRIER, [THR, #0x38]
    //     0x627e20: cmp          SP, BARRIER
    //     0x627e24: b.ls         0x627f08
    // 0x627e28: r0 = pp[0x868]
    //     0x627e28: ldr          r0, [PP, #0x868]
    // 0x627e2c: r0 = call 0x2b16e4
    //     0x627e2c: bl           0x2b16e4
    //     0x627e30: ldr          r0, [THR, #0x68]
    // 0x627e34: LoadField: r0 = r0->field_17d8
    //     0x627e34: ldr          r0, [r0, #0x17d8]
    // 0x627e38: BARRIER = pp[0x40]
    //     0x627e38: ldr          BARRIER, [PP, #0x40]
    //     0x627e3c: cmp          r0, r16
    // 0x627e40: b.ne 0x627e4c
    //     0x627e40: b.ne         0x627e4c
    // 0x627e44: r2 = pp[0x3680]
    //     0x627e44: ldr          r2, [PP, #0x3680]
    // 0x627e48: r0 = call 0x61d99c
    //     0x627e48: bl           0x61d99c
    // 0x627e4c: r1 = r0
    //     0x627e4c: mov          r1, r0
    // 0x627e50: r2 = pp[0x36a8]
    //     0x627e50: ldr          r2, [PP, #0x36a8]
    // 0x627e54: r4 = pp[0x278]
    //     0x627e54: ldr          r4, [PP, #0x278]
    // 0x627e58: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x627e58: bl           0x3a8288
    // 0x627e5c: r1 = r0
    //     0x627e5c: mov          r1, r0
    //     0x627e60: stur         r1, [fp, #-0x10]
    // 0x627e64: r0 = call 0x2b13a0
    //     0x627e64: bl           0x2b13a0
    // 0x627e68: r3 = r0
    //     0x627e68: mov          r3, r0
    // 0x627e6c: r2 = NULL
    //     0x627e6c: mov          r2, NULL
    // 0x627e70: r1 = NULL
    //     0x627e70: mov          r1, NULL
    //     0x627e74: stur         r3, [fp, #-0x10]
    //     0x627e78: mov          r4, #0x3c
    // 0x627e7c: branchIfSmi(r0, 0x627e88)
    //     0x627e7c: tbz          r0, #0, 0x627e88
    // 0x627e80: r4 = LoadClassIdInstr(r0)
    //     0x627e80: ldur         r4, [r0, #-1]
    //     0x627e84: ubfx         r4, r4, #0xc, #0x14
    //     0x627e88: sub          r4, r4, #0x5e
    //     0x627e8c: cmp          r4, #1
    // 0x627e90: b.ls 0x627ea0
    //     0x627e90: b.ls         0x627ea0
    // 0x627e94: r8 = pp[0xae0]
    //     0x627e94: ldr          r8, [PP, #0xae0]
    // 0x627e98: r3 = pp[0x36b0]
    //     0x627e98: ldr          r3, [PP, #0x36b0]
    // 0x627e9c: r0 = call 0x278d08
    //     0x627e9c: bl           0x278d08
    //     0x627ea0: ldur         r0, [fp, #-0x10]
    //     0x627ea4: cmp          r0, r22
    // 0x627ea8: b.ne 0x627eb4
    //     0x627ea8: b.ne         0x627eb4
    // 0x627eac: r2 = pp[0x148]
    //     0x627eac: ldr          r2, [PP, #0x148]
    // 0x627eb0: b 0x627eb8
    //     0x627eb0: b            0x627eb8
    // 0x627eb4: r2 = r0
    //     0x627eb4: mov          r2, r0
    //     0x627eb8: stur         r2, [fp, #-0x10]
    // 0x627ebc: r1 = pp[0x868]
    //     0x627ebc: ldr          r1, [PP, #0x868]
    // 0x627ec0: r0 = call 0x2abee8
    //     0x627ec0: bl           0x2abee8
    //     0x627ec4: stur         r0, [fp, #-0x18]
    // 0x627ec8: StoreField: r0->field_b = xzr
    //     0x627ec8: stur         xzr, [r0, #0xb]
    //     0x627ecc: ldr          r0, [THR, #0x68]
    // 0x627ed0: LoadField: r0 = r0->field_710
    //     0x627ed0: ldr          r0, [r0, #0x710]
    // 0x627ed4: BARRIER = pp[0x40]
    //     0x627ed4: ldr          BARRIER, [PP, #0x40]
    //     0x627ed8: cmp          r0, r16
    // 0x627edc: b.ne 0x627ee8
    //     0x627edc: b.ne         0x627ee8
    // 0x627ee0: r2 = pp[0x128]
    //     0x627ee0: ldr          r2, [PP, #0x128]
    // 0x627ee4: r0 = call 0x61da04
    //     0x627ee4: bl           0x61da04
    // 0x627ee8: r1 = r0
    //     0x627ee8: mov          r1, r0
    //     0x627eec: ldur         r0, [fp, #-0x18]
    // 0x627ef0: StoreField: r0->field_13 = r1
    //     0x627ef0: stur         r1, [r0, #0x13]
    // 0x627ef4: r1 = r0
    //     0x627ef4: mov          r1, r0
    //     0x627ef8: ldur         r2, [fp, #-0x10]
    // 0x627efc: r0 = dart_async__Future::_asyncComplete()
    //     0x627efc: bl           0x27a970
    //     0x627f00: ldur         r0, [fp, #-0x18]
    // 0x627f04: b 0x2b19a0
    //     0x627f04: b            0x2b19a0
    // 0x627f08: r0 = call 0x61fa28
    //     0x627f08: bl           0x61fa28
    // 0x627f0c: b 0x627e28
    //     0x627f0c: b            0x627e28
  }

  ctor_fromJson() {
    // ** addr: 0x3b8b58, size: 0x3f0
    // 0x3b8b58: EnterFrame
    //     0x3b8b58: stp          fp, lr, [SP, #-0x10]!
    //     0x3b8b5c: mov          fp, SP
    // 0x3b8b60: AllocStack(0x18)
    //     0x3b8b60: sub          SP, SP, #0x18
    // 0x3b8b64: r3 = r1
    //     0x3b8b64: mov          r3, r1
    // 0x3b8b68: r0 = r2
    //     0x3b8b68: mov          r0, r2
    //     0x3b8b6c: stur         r1, [fp, #-8]
    //     0x3b8b70: stur         r2, [fp, #-0x10]
    // 0x3b8b74: CheckStackOverflow
    //     0x3b8b74: ldr          BARRIER, [THR, #0x38]
    //     0x3b8b78: cmp          SP, BARRIER
    //     0x3b8b7c: b.ls         0x3b8f40
    // 0x3b8b80: r1 = r0
    //     0x3b8b80: mov          r1, r0
    // 0x3b8b84: r2 = pp[0x6f3]
    //     0x3b8b84: add          r2, PP, #0xb, lsl #12
    //     0x3b8b88: ldr          r2, [r2, #0x6e8]
    // 0x3b8b8c: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData()
    //     0x3b8b8c: bl           0x61c9d0
    //     0x3b8b90: ldur         r3, [fp, #-0x10]
    // 0x3b8b94: LoadField: r1 = r3->field_f
    //     0x3b8b94: ldur         r1, [r3, #0xf]
    //     0x3b8b98: add          r1, r1, HEAP, lsl #32
    //     0x3b8b9c: cmp          r1, r0
    // 0x3b8ba0: b.ne 0x3b8ba8
    //     0x3b8ba0: b.ne         0x3b8ba8
    // 0x3b8ba4: r0 = NULL
    //     0x3b8ba4: mov          r0, NULL
    //     0x3b8ba8: cmp          r0, r22
    // 0x3b8bac: b.ne 0x3b8bb8
    //     0x3b8bac: b.ne         0x3b8bb8
    // 0x3b8bb0: r5 = pp[0x148]
    //     0x3b8bb0: ldr          r5, [PP, #0x148]
    // 0x3b8bb4: b 0x3b8bbc
    //     0x3b8bb4: b            0x3b8bbc
    // 0x3b8bb8: r5 = r0
    //     0x3b8bb8: mov          r5, r0
    //     0x3b8bbc: ldur         r4, [fp, #-8]
    // 0x3b8bc0: r0 = r5
    //     0x3b8bc0: mov          r0, r5
    //     0x3b8bc4: stur         r5, [fp, #-0x18]
    // 0x3b8bc8: r2 = NULL
    //     0x3b8bc8: mov          r2, NULL
    // 0x3b8bcc: r1 = NULL
    //     0x3b8bcc: mov          r1, NULL
    //     0x3b8bd0: mov          r4, #0x3c
    // 0x3b8bd4: branchIfSmi(r0, 0x3b8be0)
    //     0x3b8bd4: tbz          r0, #0, 0x3b8be0
    // 0x3b8bd8: r4 = LoadClassIdInstr(r0)
    //     0x3b8bd8: ldur         r4, [r0, #-1]
    //     0x3b8bdc: ubfx         r4, r4, #0xc, #0x14
    //     0x3b8be0: sub          r4, r4, #0x5e
    //     0x3b8be4: cmp          r4, #1
    // 0x3b8be8: b.ls 0x3b8bfc
    //     0x3b8be8: b.ls         0x3b8bfc
    // 0x3b8bec: r8 = pp[0xae0]
    //     0x3b8bec: ldr          r8, [PP, #0xae0]
    // 0x3b8bf0: r3 = pp[0x6fb]
    //     0x3b8bf0: add          r3, PP, #0xb, lsl #12
    //     0x3b8bf4: ldr          r3, [r3, #0x6f0]
    // 0x3b8bf8: r0 = call 0x278d08
    //     0x3b8bf8: bl           0x278d08
    //     0x3b8bfc: ldur         r0, [fp, #-0x18]
    //     0x3b8c00: ldur         r3, [fp, #-8]
    // 0x3b8c04: StoreField: r3->field_7 = r0
    //     0x3b8c04: stur         r0, [r3, #7]
    //     0x3b8c08: ldurb        r16, [r3, #-1]
    //     0x3b8c0c: ldurb        r17, [r0, #-1]
    //     0x3b8c10: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3b8c14: tst          BARRIER, HEAP, lsr #32
    // 0x3b8c18: b.eq 0x3b8c20
    //     0x3b8c18: b.eq         0x3b8c20
    // 0x3b8c1c: r0 = call 0x61e08c
    //     0x3b8c1c: bl           0x61e08c
    //     0x3b8c20: ldur         r1, [fp, #-0x10]
    // 0x3b8c24: r2 = pp[0x70b]
    //     0x3b8c24: add          r2, PP, #0xb, lsl #12
    //     0x3b8c28: ldr          r2, [r2, #0x700]
    // 0x3b8c2c: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData()
    //     0x3b8c2c: bl           0x61c9d0
    //     0x3b8c30: ldur         r3, [fp, #-0x10]
    // 0x3b8c34: LoadField: r1 = r3->field_f
    //     0x3b8c34: ldur         r1, [r3, #0xf]
    //     0x3b8c38: add          r1, r1, HEAP, lsl #32
    //     0x3b8c3c: cmp          r1, r0
    // 0x3b8c40: b.ne 0x3b8c48
    //     0x3b8c40: b.ne         0x3b8c48
    // 0x3b8c44: r0 = NULL
    //     0x3b8c44: mov          r0, NULL
    //     0x3b8c48: cmp          r0, r22
    // 0x3b8c4c: b.ne 0x3b8c58
    //     0x3b8c4c: b.ne         0x3b8c58
    // 0x3b8c50: r5 = pp[0x148]
    //     0x3b8c50: ldr          r5, [PP, #0x148]
    // 0x3b8c54: b 0x3b8c5c
    //     0x3b8c54: b            0x3b8c5c
    // 0x3b8c58: r5 = r0
    //     0x3b8c58: mov          r5, r0
    //     0x3b8c5c: ldur         r4, [fp, #-8]
    // 0x3b8c60: r0 = r5
    //     0x3b8c60: mov          r0, r5
    //     0x3b8c64: stur         r5, [fp, #-0x18]
    // 0x3b8c68: r2 = NULL
    //     0x3b8c68: mov          r2, NULL
    // 0x3b8c6c: r1 = NULL
    //     0x3b8c6c: mov          r1, NULL
    //     0x3b8c70: mov          r4, #0x3c
    // 0x3b8c74: branchIfSmi(r0, 0x3b8c80)
    //     0x3b8c74: tbz          r0, #0, 0x3b8c80
    // 0x3b8c78: r4 = LoadClassIdInstr(r0)
    //     0x3b8c78: ldur         r4, [r0, #-1]
    //     0x3b8c7c: ubfx         r4, r4, #0xc, #0x14
    //     0x3b8c80: sub          r4, r4, #0x5e
    //     0x3b8c84: cmp          r4, #1
    // 0x3b8c88: b.ls 0x3b8c9c
    //     0x3b8c88: b.ls         0x3b8c9c
    // 0x3b8c8c: r8 = pp[0xae0]
    //     0x3b8c8c: ldr          r8, [PP, #0xae0]
    // 0x3b8c90: r3 = pp[0x713]
    //     0x3b8c90: add          r3, PP, #0xb, lsl #12
    //     0x3b8c94: ldr          r3, [r3, #0x708]
    // 0x3b8c98: r0 = call 0x278d08
    //     0x3b8c98: bl           0x278d08
    //     0x3b8c9c: ldur         r0, [fp, #-0x18]
    //     0x3b8ca0: ldur         r3, [fp, #-8]
    // 0x3b8ca4: StoreField: r3->field_b = r0
    //     0x3b8ca4: stur         r0, [r3, #0xb]
    //     0x3b8ca8: ldurb        r16, [r3, #-1]
    //     0x3b8cac: ldurb        r17, [r0, #-1]
    //     0x3b8cb0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3b8cb4: tst          BARRIER, HEAP, lsr #32
    // 0x3b8cb8: b.eq 0x3b8cc0
    //     0x3b8cb8: b.eq         0x3b8cc0
    // 0x3b8cbc: r0 = call 0x61e08c
    //     0x3b8cbc: bl           0x61e08c
    //     0x3b8cc0: ldur         r1, [fp, #-0x10]
    // 0x3b8cc4: r2 = pp[0x723]
    //     0x3b8cc4: add          r2, PP, #0xb, lsl #12
    //     0x3b8cc8: ldr          r2, [r2, #0x718]
    // 0x3b8ccc: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData()
    //     0x3b8ccc: bl           0x61c9d0
    //     0x3b8cd0: ldur         r3, [fp, #-0x10]
    // 0x3b8cd4: LoadField: r1 = r3->field_f
    //     0x3b8cd4: ldur         r1, [r3, #0xf]
    //     0x3b8cd8: add          r1, r1, HEAP, lsl #32
    //     0x3b8cdc: cmp          r1, r0
    // 0x3b8ce0: b.ne 0x3b8ce8
    //     0x3b8ce0: b.ne         0x3b8ce8
    // 0x3b8ce4: r0 = NULL
    //     0x3b8ce4: mov          r0, NULL
    //     0x3b8ce8: cmp          r0, r22
    // 0x3b8cec: b.ne 0x3b8cf8
    //     0x3b8cec: b.ne         0x3b8cf8
    // 0x3b8cf0: r5 = pp[0x148]
    //     0x3b8cf0: ldr          r5, [PP, #0x148]
    // 0x3b8cf4: b 0x3b8cfc
    //     0x3b8cf4: b            0x3b8cfc
    // 0x3b8cf8: r5 = r0
    //     0x3b8cf8: mov          r5, r0
    //     0x3b8cfc: ldur         r4, [fp, #-8]
    // 0x3b8d00: r0 = r5
    //     0x3b8d00: mov          r0, r5
    //     0x3b8d04: stur         r5, [fp, #-0x18]
    // 0x3b8d08: r2 = NULL
    //     0x3b8d08: mov          r2, NULL
    // 0x3b8d0c: r1 = NULL
    //     0x3b8d0c: mov          r1, NULL
    //     0x3b8d10: mov          r4, #0x3c
    // 0x3b8d14: branchIfSmi(r0, 0x3b8d20)
    //     0x3b8d14: tbz          r0, #0, 0x3b8d20
    // 0x3b8d18: r4 = LoadClassIdInstr(r0)
    //     0x3b8d18: ldur         r4, [r0, #-1]
    //     0x3b8d1c: ubfx         r4, r4, #0xc, #0x14
    //     0x3b8d20: sub          r4, r4, #0x5e
    //     0x3b8d24: cmp          r4, #1
    // 0x3b8d28: b.ls 0x3b8d3c
    //     0x3b8d28: b.ls         0x3b8d3c
    // 0x3b8d2c: r8 = pp[0xae0]
    //     0x3b8d2c: ldr          r8, [PP, #0xae0]
    // 0x3b8d30: r3 = pp[0x72b]
    //     0x3b8d30: add          r3, PP, #0xb, lsl #12
    //     0x3b8d34: ldr          r3, [r3, #0x720]
    // 0x3b8d38: r0 = call 0x278d08
    //     0x3b8d38: bl           0x278d08
    //     0x3b8d3c: ldur         r0, [fp, #-0x18]
    //     0x3b8d40: ldur         r3, [fp, #-8]
    // 0x3b8d44: StoreField: r3->field_f = r0
    //     0x3b8d44: stur         r0, [r3, #0xf]
    //     0x3b8d48: ldurb        r16, [r3, #-1]
    //     0x3b8d4c: ldurb        r17, [r0, #-1]
    //     0x3b8d50: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3b8d54: tst          BARRIER, HEAP, lsr #32
    // 0x3b8d58: b.eq 0x3b8d60
    //     0x3b8d58: b.eq         0x3b8d60
    // 0x3b8d5c: r0 = call 0x61e08c
    //     0x3b8d5c: bl           0x61e08c
    //     0x3b8d60: ldur         r1, [fp, #-0x10]
    // 0x3b8d64: r2 = pp[0x73b]
    //     0x3b8d64: add          r2, PP, #0xb, lsl #12
    //     0x3b8d68: ldr          r2, [r2, #0x730]
    // 0x3b8d6c: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData()
    //     0x3b8d6c: bl           0x61c9d0
    //     0x3b8d70: ldur         r3, [fp, #-0x10]
    // 0x3b8d74: LoadField: r1 = r3->field_f
    //     0x3b8d74: ldur         r1, [r3, #0xf]
    //     0x3b8d78: add          r1, r1, HEAP, lsl #32
    //     0x3b8d7c: cmp          r1, r0
    // 0x3b8d80: b.ne 0x3b8d88
    //     0x3b8d80: b.ne         0x3b8d88
    // 0x3b8d84: r0 = NULL
    //     0x3b8d84: mov          r0, NULL
    //     0x3b8d88: cmp          r0, r22
    // 0x3b8d8c: b.ne 0x3b8d98
    //     0x3b8d8c: b.ne         0x3b8d98
    // 0x3b8d90: r5 = pp[0x148]
    //     0x3b8d90: ldr          r5, [PP, #0x148]
    // 0x3b8d94: b 0x3b8d9c
    //     0x3b8d94: b            0x3b8d9c
    // 0x3b8d98: r5 = r0
    //     0x3b8d98: mov          r5, r0
    //     0x3b8d9c: ldur         r4, [fp, #-8]
    // 0x3b8da0: r0 = r5
    //     0x3b8da0: mov          r0, r5
    //     0x3b8da4: stur         r5, [fp, #-0x18]
    // 0x3b8da8: r2 = NULL
    //     0x3b8da8: mov          r2, NULL
    // 0x3b8dac: r1 = NULL
    //     0x3b8dac: mov          r1, NULL
    //     0x3b8db0: mov          r4, #0x3c
    // 0x3b8db4: branchIfSmi(r0, 0x3b8dc0)
    //     0x3b8db4: tbz          r0, #0, 0x3b8dc0
    // 0x3b8db8: r4 = LoadClassIdInstr(r0)
    //     0x3b8db8: ldur         r4, [r0, #-1]
    //     0x3b8dbc: ubfx         r4, r4, #0xc, #0x14
    //     0x3b8dc0: sub          r4, r4, #0x5e
    //     0x3b8dc4: cmp          r4, #1
    // 0x3b8dc8: b.ls 0x3b8ddc
    //     0x3b8dc8: b.ls         0x3b8ddc
    // 0x3b8dcc: r8 = pp[0xae0]
    //     0x3b8dcc: ldr          r8, [PP, #0xae0]
    // 0x3b8dd0: r3 = pp[0x743]
    //     0x3b8dd0: add          r3, PP, #0xb, lsl #12
    //     0x3b8dd4: ldr          r3, [r3, #0x738]
    // 0x3b8dd8: r0 = call 0x278d08
    //     0x3b8dd8: bl           0x278d08
    //     0x3b8ddc: ldur         r0, [fp, #-0x18]
    //     0x3b8de0: ldur         r3, [fp, #-8]
    // 0x3b8de4: StoreField: r3->field_13 = r0
    //     0x3b8de4: stur         r0, [r3, #0x13]
    //     0x3b8de8: ldurb        r16, [r3, #-1]
    //     0x3b8dec: ldurb        r17, [r0, #-1]
    //     0x3b8df0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3b8df4: tst          BARRIER, HEAP, lsr #32
    // 0x3b8df8: b.eq 0x3b8e00
    //     0x3b8df8: b.eq         0x3b8e00
    // 0x3b8dfc: r0 = call 0x61e08c
    //     0x3b8dfc: bl           0x61e08c
    //     0x3b8e00: ldur         r1, [fp, #-0x10]
    // 0x3b8e04: r2 = pp[0x753]
    //     0x3b8e04: add          r2, PP, #0xb, lsl #12
    //     0x3b8e08: ldr          r2, [r2, #0x748]
    // 0x3b8e0c: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData()
    //     0x3b8e0c: bl           0x61c9d0
    //     0x3b8e10: ldur         r3, [fp, #-0x10]
    // 0x3b8e14: LoadField: r1 = r3->field_f
    //     0x3b8e14: ldur         r1, [r3, #0xf]
    //     0x3b8e18: add          r1, r1, HEAP, lsl #32
    //     0x3b8e1c: cmp          r1, r0
    // 0x3b8e20: b.ne 0x3b8e28
    //     0x3b8e20: b.ne         0x3b8e28
    // 0x3b8e24: r0 = NULL
    //     0x3b8e24: mov          r0, NULL
    //     0x3b8e28: cmp          r0, r22
    // 0x3b8e2c: b.ne 0x3b8e38
    //     0x3b8e2c: b.ne         0x3b8e38
    // 0x3b8e30: r5 = pp[0x148]
    //     0x3b8e30: ldr          r5, [PP, #0x148]
    // 0x3b8e34: b 0x3b8e3c
    //     0x3b8e34: b            0x3b8e3c
    // 0x3b8e38: r5 = r0
    //     0x3b8e38: mov          r5, r0
    //     0x3b8e3c: ldur         r4, [fp, #-8]
    // 0x3b8e40: r0 = r5
    //     0x3b8e40: mov          r0, r5
    //     0x3b8e44: stur         r5, [fp, #-0x18]
    // 0x3b8e48: r2 = NULL
    //     0x3b8e48: mov          r2, NULL
    // 0x3b8e4c: r1 = NULL
    //     0x3b8e4c: mov          r1, NULL
    //     0x3b8e50: mov          r4, #0x3c
    // 0x3b8e54: branchIfSmi(r0, 0x3b8e60)
    //     0x3b8e54: tbz          r0, #0, 0x3b8e60
    // 0x3b8e58: r4 = LoadClassIdInstr(r0)
    //     0x3b8e58: ldur         r4, [r0, #-1]
    //     0x3b8e5c: ubfx         r4, r4, #0xc, #0x14
    //     0x3b8e60: sub          r4, r4, #0x5e
    //     0x3b8e64: cmp          r4, #1
    // 0x3b8e68: b.ls 0x3b8e7c
    //     0x3b8e68: b.ls         0x3b8e7c
    // 0x3b8e6c: r8 = pp[0xae0]
    //     0x3b8e6c: ldr          r8, [PP, #0xae0]
    // 0x3b8e70: r3 = pp[0x75b]
    //     0x3b8e70: add          r3, PP, #0xb, lsl #12
    //     0x3b8e74: ldr          r3, [r3, #0x750]
    // 0x3b8e78: r0 = call 0x278d08
    //     0x3b8e78: bl           0x278d08
    //     0x3b8e7c: ldur         r0, [fp, #-0x18]
    //     0x3b8e80: ldur         r3, [fp, #-8]
    // 0x3b8e84: ArrayStore: r3[0] = r0  ; List_8
    //     0x3b8e84: stur         r0, [r3, #0x17]
    //     0x3b8e88: ldurb        r16, [r3, #-1]
    //     0x3b8e8c: ldurb        r17, [r0, #-1]
    //     0x3b8e90: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3b8e94: tst          BARRIER, HEAP, lsr #32
    // 0x3b8e98: b.eq 0x3b8ea0
    //     0x3b8e98: b.eq         0x3b8ea0
    // 0x3b8e9c: r0 = call 0x61e08c
    //     0x3b8e9c: bl           0x61e08c
    //     0x3b8ea0: ldur         r1, [fp, #-0x10]
    // 0x3b8ea4: r2 = pp[0x76b]
    //     0x3b8ea4: add          r2, PP, #0xb, lsl #12
    //     0x3b8ea8: ldr          r2, [r2, #0x760]
    // 0x3b8eac: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData()
    //     0x3b8eac: bl           0x61c9d0
    // 0x3b8eb0: r1 = r0
    //     0x3b8eb0: mov          r1, r0
    //     0x3b8eb4: ldur         r0, [fp, #-0x10]
    // 0x3b8eb8: LoadField: r2 = r0->field_f
    //     0x3b8eb8: ldur         r2, [r0, #0xf]
    //     0x3b8ebc: add          r2, r2, HEAP, lsl #32
    //     0x3b8ec0: cmp          r2, r1
    // 0x3b8ec4: b.ne 0x3b8ed0
    //     0x3b8ec4: b.ne         0x3b8ed0
    // 0x3b8ec8: r0 = NULL
    //     0x3b8ec8: mov          r0, NULL
    // 0x3b8ecc: b 0x3b8ed4
    //     0x3b8ecc: b            0x3b8ed4
    // 0x3b8ed0: r0 = r1
    //     0x3b8ed0: mov          r0, r1
    //     0x3b8ed4: cmp          r0, r22
    // 0x3b8ed8: b.ne 0x3b8ee4
    //     0x3b8ed8: b.ne         0x3b8ee4
    //     0x3b8edc: add          r4, NULL, #0x20
    // 0x3b8ee0: b 0x3b8ee8
    //     0x3b8ee0: b            0x3b8ee8
    // 0x3b8ee4: r4 = r0
    //     0x3b8ee4: mov          r4, r0
    //     0x3b8ee8: ldur         r3, [fp, #-8]
    // 0x3b8eec: r0 = r4
    //     0x3b8eec: mov          r0, r4
    //     0x3b8ef0: stur         r4, [fp, #-0x10]
    // 0x3b8ef4: r2 = NULL
    //     0x3b8ef4: mov          r2, NULL
    // 0x3b8ef8: r1 = NULL
    //     0x3b8ef8: mov          r1, NULL
    //     0x3b8efc: mov          r4, #0x3c
    // 0x3b8f00: branchIfSmi(r0, 0x3b8f0c)
    //     0x3b8f00: tbz          r0, #0, 0x3b8f0c
    // 0x3b8f04: r4 = LoadClassIdInstr(r0)
    //     0x3b8f04: ldur         r4, [r0, #-1]
    //     0x3b8f08: ubfx         r4, r4, #0xc, #0x14
    //     0x3b8f0c: cmp          r4, #0x3f
    // 0x3b8f10: b.eq 0x3b8f24
    //     0x3b8f10: b.eq         0x3b8f24
    // 0x3b8f14: r8 = pp[0xa78]
    //     0x3b8f14: ldr          r8, [PP, #0xa78]
    // 0x3b8f18: r3 = pp[0x773]
    //     0x3b8f18: add          r3, PP, #0xb, lsl #12
    //     0x3b8f1c: ldr          r3, [r3, #0x768]
    // 0x3b8f20: r0 = call 0x61d6cc
    //     0x3b8f20: bl           0x61d6cc
    //     0x3b8f24: ldur         r1, [fp, #-8]
    //     0x3b8f28: ldur         r2, [fp, #-0x10]
    // 0x3b8f2c: StoreField: r1->field_1b = r2
    //     0x3b8f2c: stur         r2, [r1, #0x1b]
    // 0x3b8f30: r0 = NULL
    //     0x3b8f30: mov          r0, NULL
    // 0x3b8f34: SP = fp
    //     0x3b8f34: mov          SP, fp
    // 0x3b8f38: LeaveFrame
    //     0x3b8f38: ldp          fp, lr, [SP], #0x10
    // 0x3b8f3c: ret
    //     0x3b8f3c: ret          
    // 0x3b8f40: r0 = call 0x61fa28
    //     0x3b8f40: bl           0x61fa28
    // 0x3b8f44: b 0x3b8b80
    //     0x3b8f44: b            0x3b8b80
  }

  toJson() {
    // ** addr: 0x3b8f60, size: 0x30
    // 0x3b8f60: EnterFrame
    //     0x3b8f60: stp          fp, lr, [SP, #-0x10]!
    //     0x3b8f64: mov          fp, SP
    // 0x3b8f68: CheckStackOverflow
    //     0x3b8f68: ldr          BARRIER, [THR, #0x38]
    //     0x3b8f6c: cmp          SP, BARRIER
    //     0x3b8f70: b.ls         0x3b8f88
    //     0x3b8f74: ldr          r1, [fp, #0x10]
    // 0x3b8f78: r0 = soul_flutter_international$common$plugins$message_UserInfo::toJson()
    //     0x3b8f78: bl           0x3b8f90
    // 0x3b8f7c: SP = fp
    //     0x3b8f7c: mov          SP, fp
    // 0x3b8f80: LeaveFrame
    //     0x3b8f80: ldp          fp, lr, [SP], #0x10
    // 0x3b8f84: ret
    //     0x3b8f84: ret          
    // 0x3b8f88: r0 = call 0x61fa28
    //     0x3b8f88: bl           0x61fa28
    // 0x3b8f8c: b 0x3b8f74
    //     0x3b8f8c: b            0x3b8f74
  }

  toJson() {
    // ** addr: 0x3b8f90, size: 0x168
    // 0x3b8f90: EnterFrame
    //     0x3b8f90: stp          fp, lr, [SP, #-0x10]!
    //     0x3b8f94: mov          fp, SP
    // 0x3b8f98: AllocStack(0x10)
    //     0x3b8f98: sub          SP, SP, #0x10
    // 0x3b8f9c: r0 = r1
    //     0x3b8f9c: mov          r0, r1
    //     0x3b8fa0: stur         r1, [fp, #-8]
    // 0x3b8fa4: CheckStackOverflow
    //     0x3b8fa4: ldr          BARRIER, [THR, #0x38]
    //     0x3b8fa8: cmp          SP, BARRIER
    //     0x3b8fac: b.ls         0x3b90f0
    // 0x3b8fb0: r1 = pp[0xbf0]
    //     0x3b8fb0: ldr          r1, [PP, #0xbf0]
    // 0x3b8fb4: r0 = dart_core_Map::factory_ctor()
    //     0x3b8fb4: bl           0x28cd60
    // 0x3b8fb8: r4 = r0
    //     0x3b8fb8: mov          r4, r0
    //     0x3b8fbc: ldur         r0, [fp, #-8]
    //     0x3b8fc0: stur         r4, [fp, #-0x10]
    // 0x3b8fc4: LoadField: r1 = r0->field_7
    //     0x3b8fc4: ldur         r1, [r0, #7]
    //     0x3b8fc8: add          r1, r1, HEAP, lsl #32
    //     0x3b8fcc: cmp          r1, r22
    // 0x3b8fd0: b.ne 0x3b8fdc
    //     0x3b8fd0: b.ne         0x3b8fdc
    // 0x3b8fd4: r3 = pp[0x148]
    //     0x3b8fd4: ldr          r3, [PP, #0x148]
    // 0x3b8fd8: b 0x3b8fe0
    //     0x3b8fd8: b            0x3b8fe0
    // 0x3b8fdc: r3 = r1
    //     0x3b8fdc: mov          r3, r1
    // 0x3b8fe0: r1 = r4
    //     0x3b8fe0: mov          r1, r4
    // 0x3b8fe4: r2 = pp[0x6f3]
    //     0x3b8fe4: add          r2, PP, #0xb, lsl #12
    //     0x3b8fe8: ldr          r2, [r2, #0x6e8]
    // 0x3b8fec: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3b8fec: bl           0x6164d4
    //     0x3b8ff0: ldur         r0, [fp, #-8]
    // 0x3b8ff4: LoadField: r1 = r0->field_b
    //     0x3b8ff4: ldur         r1, [r0, #0xb]
    //     0x3b8ff8: add          r1, r1, HEAP, lsl #32
    //     0x3b8ffc: cmp          r1, r22
    // 0x3b9000: b.ne 0x3b900c
    //     0x3b9000: b.ne         0x3b900c
    // 0x3b9004: r3 = pp[0x148]
    //     0x3b9004: ldr          r3, [PP, #0x148]
    // 0x3b9008: b 0x3b9010
    //     0x3b9008: b            0x3b9010
    // 0x3b900c: r3 = r1
    //     0x3b900c: mov          r3, r1
    //     0x3b9010: ldur         r1, [fp, #-0x10]
    // 0x3b9014: r2 = pp[0x70b]
    //     0x3b9014: add          r2, PP, #0xb, lsl #12
    //     0x3b9018: ldr          r2, [r2, #0x700]
    // 0x3b901c: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3b901c: bl           0x6164d4
    //     0x3b9020: ldur         r0, [fp, #-8]
    // 0x3b9024: LoadField: r1 = r0->field_f
    //     0x3b9024: ldur         r1, [r0, #0xf]
    //     0x3b9028: add          r1, r1, HEAP, lsl #32
    //     0x3b902c: cmp          r1, r22
    // 0x3b9030: b.ne 0x3b903c
    //     0x3b9030: b.ne         0x3b903c
    // 0x3b9034: r3 = pp[0x148]
    //     0x3b9034: ldr          r3, [PP, #0x148]
    // 0x3b9038: b 0x3b9040
    //     0x3b9038: b            0x3b9040
    // 0x3b903c: r3 = r1
    //     0x3b903c: mov          r3, r1
    //     0x3b9040: ldur         r1, [fp, #-0x10]
    // 0x3b9044: r2 = pp[0x723]
    //     0x3b9044: add          r2, PP, #0xb, lsl #12
    //     0x3b9048: ldr          r2, [r2, #0x718]
    // 0x3b904c: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3b904c: bl           0x6164d4
    //     0x3b9050: ldur         r0, [fp, #-8]
    // 0x3b9054: LoadField: r1 = r0->field_13
    //     0x3b9054: ldur         r1, [r0, #0x13]
    //     0x3b9058: add          r1, r1, HEAP, lsl #32
    //     0x3b905c: cmp          r1, r22
    // 0x3b9060: b.ne 0x3b906c
    //     0x3b9060: b.ne         0x3b906c
    // 0x3b9064: r3 = pp[0x148]
    //     0x3b9064: ldr          r3, [PP, #0x148]
    // 0x3b9068: b 0x3b9070
    //     0x3b9068: b            0x3b9070
    // 0x3b906c: r3 = r1
    //     0x3b906c: mov          r3, r1
    //     0x3b9070: ldur         r1, [fp, #-0x10]
    // 0x3b9074: r2 = pp[0x73b]
    //     0x3b9074: add          r2, PP, #0xb, lsl #12
    //     0x3b9078: ldr          r2, [r2, #0x730]
    // 0x3b907c: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3b907c: bl           0x6164d4
    //     0x3b9080: ldur         r0, [fp, #-8]
    // 0x3b9084: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x3b9084: ldur         r1, [r0, #0x17]
    //     0x3b9088: add          r1, r1, HEAP, lsl #32
    //     0x3b908c: cmp          r1, r22
    // 0x3b9090: b.ne 0x3b909c
    //     0x3b9090: b.ne         0x3b909c
    // 0x3b9094: r3 = pp[0x148]
    //     0x3b9094: ldr          r3, [PP, #0x148]
    // 0x3b9098: b 0x3b90a0
    //     0x3b9098: b            0x3b90a0
    // 0x3b909c: r3 = r1
    //     0x3b909c: mov          r3, r1
    //     0x3b90a0: ldur         r1, [fp, #-0x10]
    // 0x3b90a4: r2 = pp[0x753]
    //     0x3b90a4: add          r2, PP, #0xb, lsl #12
    //     0x3b90a8: ldr          r2, [r2, #0x748]
    // 0x3b90ac: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3b90ac: bl           0x6164d4
    //     0x3b90b0: ldur         r0, [fp, #-8]
    // 0x3b90b4: LoadField: r1 = r0->field_1b
    //     0x3b90b4: ldur         r1, [r0, #0x1b]
    //     0x3b90b8: add          r1, r1, HEAP, lsl #32
    //     0x3b90bc: cmp          r1, r22
    // 0x3b90c0: b.ne 0x3b90cc
    //     0x3b90c0: b.ne         0x3b90cc
    //     0x3b90c4: add          r3, NULL, #0x20
    // 0x3b90c8: b 0x3b90d0
    //     0x3b90c8: b            0x3b90d0
    // 0x3b90cc: r3 = r1
    //     0x3b90cc: mov          r3, r1
    //     0x3b90d0: ldur         r1, [fp, #-0x10]
    // 0x3b90d4: r2 = pp[0x76b]
    //     0x3b90d4: add          r2, PP, #0xb, lsl #12
    //     0x3b90d8: ldr          r2, [r2, #0x760]
    // 0x3b90dc: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3b90dc: bl           0x6164d4
    //     0x3b90e0: ldur         r0, [fp, #-0x10]
    // 0x3b90e4: SP = fp
    //     0x3b90e4: mov          SP, fp
    // 0x3b90e8: LeaveFrame
    //     0x3b90e8: ldp          fp, lr, [SP], #0x10
    // 0x3b90ec: ret
    //     0x3b90ec: ret          
    // 0x3b90f0: r0 = call 0x61fa28
    //     0x3b90f0: bl           0x61fa28
    // 0x3b90f4: b 0x3b8fb0
    //     0x3b90f4: b            0x3b8fb0
  }
