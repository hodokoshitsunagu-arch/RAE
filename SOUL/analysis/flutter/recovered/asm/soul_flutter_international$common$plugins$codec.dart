// lib: , url: soul_flutter_international$common$plugins$codec


  urlEncode() {
    // ** addr: 0x3a80b0, size: 0x1d8
    // 0x3a80b0: EnterFrame
    //     0x3a80b0: stp          fp, lr, [SP, #-0x10]!
    //     0x3a80b4: mov          fp, SP
    // 0x3a80b8: AllocStack(0x20)
    //     0x3a80b8: sub          SP, SP, #0x20
    //     0x3a80bc: stur         NULL, [fp, #-8]
    //     0x3a80c0: stur         r1, [fp, #-0x10]
    // 0x3a80c4: CheckStackOverflow
    //     0x3a80c4: ldr          BARRIER, [THR, #0x38]
    //     0x3a80c8: cmp          SP, BARRIER
    //     0x3a80cc: b.ls         0x3a8280
    // 0x3a80d0: r0 = pp[0x868]
    //     0x3a80d0: ldr          r0, [PP, #0x868]
    // 0x3a80d4: r0 = call 0x2b16e4
    //     0x3a80d4: bl           0x2b16e4
    //     0x3a80d8: ldur         r0, [fp, #-0x10]
    // 0x3a80dc: LoadField: r1 = r0->field_7
    //     0x3a80dc: ldur         r1, [r0, #7]
    //     0x3a80e0: cbnz         r1, 0x3a8130
    // 0x3a80e4: r1 = pp[0x868]
    //     0x3a80e4: ldr          r1, [PP, #0x868]
    // 0x3a80e8: r0 = call 0x2abee8
    //     0x3a80e8: bl           0x2abee8
    //     0x3a80ec: stur         r0, [fp, #-0x18]
    // 0x3a80f0: StoreField: r0->field_b = xzr
    //     0x3a80f0: stur         xzr, [r0, #0xb]
    //     0x3a80f4: ldr          r0, [THR, #0x68]
    // 0x3a80f8: LoadField: r0 = r0->field_710
    //     0x3a80f8: ldr          r0, [r0, #0x710]
    // 0x3a80fc: BARRIER = pp[0x40]
    //     0x3a80fc: ldr          BARRIER, [PP, #0x40]
    //     0x3a8100: cmp          r0, r16
    // 0x3a8104: b.ne 0x3a8110
    //     0x3a8104: b.ne         0x3a8110
    // 0x3a8108: r2 = pp[0x128]
    //     0x3a8108: ldr          r2, [PP, #0x128]
    // 0x3a810c: r0 = call 0x61da04
    //     0x3a810c: bl           0x61da04
    // 0x3a8110: r1 = r0
    //     0x3a8110: mov          r1, r0
    //     0x3a8114: ldur         r0, [fp, #-0x18]
    // 0x3a8118: StoreField: r0->field_13 = r1
    //     0x3a8118: stur         r1, [r0, #0x13]
    // 0x3a811c: r1 = r0
    //     0x3a811c: mov          r1, r0
    // 0x3a8120: r2 = pp[0x148]
    //     0x3a8120: ldr          r2, [PP, #0x148]
    // 0x3a8124: r0 = dart_async__Future::_asyncComplete()
    //     0x3a8124: bl           0x27a970
    //     0x3a8128: ldur         r0, [fp, #-0x18]
    // 0x3a812c: b 0x2b19a0
    //     0x3a812c: b            0x2b19a0
    //     0x3a8130: ldr          r0, [THR, #0x68]
    // 0x3a8134: LoadField: r0 = r0->field_1840
    //     0x3a8134: ldr          r0, [r0, #0x1840]
    // 0x3a8138: BARRIER = pp[0x40]
    //     0x3a8138: ldr          BARRIER, [PP, #0x40]
    //     0x3a813c: cmp          r0, r16
    // 0x3a8140: b.ne 0x3a8150
    //     0x3a8140: b.ne         0x3a8150
    // 0x3a8144: r2 = pp[0xf4f]
    //     0x3a8144: add          r2, PP, #0xf, lsl #12
    //     0x3a8148: ldr          r2, [r2, #0xf40]
    // 0x3a814c: r0 = call 0x61d99c
    //     0x3a814c: bl           0x61d99c
    //     0x3a8150: ldur         BARRIER, [fp, #-0x10]
    //     0x3a8154: str          BARRIER, [SP]
    // 0x3a8158: r1 = r0
    //     0x3a8158: mov          r1, r0
    // 0x3a815c: r2 = pp[0xf57]
    //     0x3a815c: add          r2, PP, #0xf, lsl #12
    //     0x3a8160: ldr          r2, [r2, #0xf48]
    // 0x3a8164: r4 = pp[0x280]
    //     0x3a8164: ldr          r4, [PP, #0x280]
    // 0x3a8168: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x3a8168: bl           0x3a8288
    // 0x3a816c: r1 = r0
    //     0x3a816c: mov          r1, r0
    //     0x3a8170: stur         r1, [fp, #-0x10]
    // 0x3a8174: r0 = call 0x2b13a0
    //     0x3a8174: bl           0x2b13a0
    // 0x3a8178: r3 = r0
    //     0x3a8178: mov          r3, r0
    // 0x3a817c: r2 = NULL
    //     0x3a817c: mov          r2, NULL
    // 0x3a8180: r1 = NULL
    //     0x3a8180: mov          r1, NULL
    //     0x3a8184: stur         r3, [fp, #-0x10]
    //     0x3a8188: mov          r4, #0x3c
    // 0x3a818c: branchIfSmi(r0, 0x3a8198)
    //     0x3a818c: tbz          r0, #0, 0x3a8198
    // 0x3a8190: r4 = LoadClassIdInstr(r0)
    //     0x3a8190: ldur         r4, [r0, #-1]
    //     0x3a8194: ubfx         r4, r4, #0xc, #0x14
    //     0x3a8198: sub          r4, r4, #0x5e
    //     0x3a819c: cmp          r4, #1
    // 0x3a81a0: b.ls 0x3a81b4
    //     0x3a81a0: b.ls         0x3a81b4
    // 0x3a81a4: r8 = pp[0xae0]
    //     0x3a81a4: ldr          r8, [PP, #0xae0]
    // 0x3a81a8: r3 = pp[0xf5f]
    //     0x3a81a8: add          r3, PP, #0xf, lsl #12
    //     0x3a81ac: ldr          r3, [r3, #0xf50]
    // 0x3a81b0: r0 = call 0x278d08
    //     0x3a81b0: bl           0x278d08
    //     0x3a81b4: ldur         r0, [fp, #-0x10]
    //     0x3a81b8: cmp          r0, r22
    // 0x3a81bc: b.eq 0x3a8234
    //     0x3a81bc: b.eq         0x3a8234
    // 0x3a81c0: r1 = NULL
    //     0x3a81c0: mov          r1, NULL
    //     0x3a81c4: mov          r2, #4
    // 0x3a81c8: r0 = call 0x61f920
    //     0x3a81c8: bl           0x61f920
    // 0x3a81cc: BARRIER = pp[0xf6f]
    //     0x3a81cc: add          BARRIER, PP, #0xf, lsl #12
    //     0x3a81d0: ldr          BARRIER, [BARRIER, #0xf60]
    // 0x3a81d4: StoreField: r0->field_f = r16
    //     0x3a81d4: stur         r16, [r0, #0xf]
    //     0x3a81d8: ldur         r2, [fp, #-0x10]
    // 0x3a81dc: StoreField: r0->field_13 = r2
    //     0x3a81dc: stur         r2, [r0, #0x13]
    //     0x3a81e0: str          r0, [SP]
    // 0x3a81e4: r0 = dart_core__StringBase::_interpolate()
    //     0x3a81e4: bl           0x2ad854
    // 0x3a81e8: r1 = pp[0x868]
    //     0x3a81e8: ldr          r1, [PP, #0x868]
    // 0x3a81ec: r0 = call 0x2abee8
    //     0x3a81ec: bl           0x2abee8
    //     0x3a81f0: stur         r0, [fp, #-0x18]
    // 0x3a81f4: StoreField: r0->field_b = xzr
    //     0x3a81f4: stur         xzr, [r0, #0xb]
    //     0x3a81f8: ldr          r0, [THR, #0x68]
    // 0x3a81fc: LoadField: r0 = r0->field_710
    //     0x3a81fc: ldr          r0, [r0, #0x710]
    // 0x3a8200: BARRIER = pp[0x40]
    //     0x3a8200: ldr          BARRIER, [PP, #0x40]
    //     0x3a8204: cmp          r0, r16
    // 0x3a8208: b.ne 0x3a8214
    //     0x3a8208: b.ne         0x3a8214
    // 0x3a820c: r2 = pp[0x128]
    //     0x3a820c: ldr          r2, [PP, #0x128]
    // 0x3a8210: r0 = call 0x61da04
    //     0x3a8210: bl           0x61da04
    // 0x3a8214: r1 = r0
    //     0x3a8214: mov          r1, r0
    //     0x3a8218: ldur         r0, [fp, #-0x18]
    // 0x3a821c: StoreField: r0->field_13 = r1
    //     0x3a821c: stur         r1, [r0, #0x13]
    // 0x3a8220: r1 = r0
    //     0x3a8220: mov          r1, r0
    //     0x3a8224: ldur         r2, [fp, #-0x10]
    // 0x3a8228: r0 = dart_async__Future::_asyncComplete()
    //     0x3a8228: bl           0x27a970
    //     0x3a822c: ldur         r0, [fp, #-0x18]
    // 0x3a8230: b 0x2b19a0
    //     0x3a8230: b            0x2b19a0
    // 0x3a8234: r1 = pp[0x868]
    //     0x3a8234: ldr          r1, [PP, #0x868]
    // 0x3a8238: r0 = call 0x2abee8
    //     0x3a8238: bl           0x2abee8
    //     0x3a823c: stur         r0, [fp, #-0x10]
    // 0x3a8240: StoreField: r0->field_b = xzr
    //     0x3a8240: stur         xzr, [r0, #0xb]
    //     0x3a8244: ldr          r0, [THR, #0x68]
    // 0x3a8248: LoadField: r0 = r0->field_710
    //     0x3a8248: ldr          r0, [r0, #0x710]
    // 0x3a824c: BARRIER = pp[0x40]
    //     0x3a824c: ldr          BARRIER, [PP, #0x40]
    //     0x3a8250: cmp          r0, r16
    // 0x3a8254: b.ne 0x3a8260
    //     0x3a8254: b.ne         0x3a8260
    // 0x3a8258: r2 = pp[0x128]
    //     0x3a8258: ldr          r2, [PP, #0x128]
    // 0x3a825c: r0 = call 0x61da04
    //     0x3a825c: bl           0x61da04
    // 0x3a8260: r1 = r0
    //     0x3a8260: mov          r1, r0
    //     0x3a8264: ldur         r0, [fp, #-0x10]
    // 0x3a8268: StoreField: r0->field_13 = r1
    //     0x3a8268: stur         r1, [r0, #0x13]
    // 0x3a826c: r1 = r0
    //     0x3a826c: mov          r1, r0
    // 0x3a8270: r2 = pp[0x148]
    //     0x3a8270: ldr          r2, [PP, #0x148]
    // 0x3a8274: r0 = dart_async__Future::_asyncComplete()
    //     0x3a8274: bl           0x27a970
    //     0x3a8278: ldur         r0, [fp, #-0x10]
    // 0x3a827c: b 0x2b19a0
    //     0x3a827c: b            0x2b19a0
    // 0x3a8280: r0 = call 0x61fa28
    //     0x3a8280: bl           0x61fa28
    // 0x3a8284: b 0x3a80d0
    //     0x3a8284: b            0x3a80d0
  }

  _channel() {
    // ** addr: 0x3a83a4, size: 0x48
    // 0x3a83a4: EnterFrame
    //     0x3a83a4: stp          fp, lr, [SP, #-0x10]!
    //     0x3a83a8: mov          fp, SP
    // 0x3a83ac: AllocStack(8)
    //     0x3a83ac: sub          SP, SP, #8
    // 0x3a83b0: CheckStackOverflow
    //     0x3a83b0: ldr          BARRIER, [THR, #0x38]
    //     0x3a83b4: cmp          SP, BARRIER
    //     0x3a83b8: b.ls         0x3a83e4
    // 0x3a83bc: r0 = call 0x3a84b8
    //     0x3a83bc: bl           0x3a84b8
    // 0x3a83c0: r1 = r0
    //     0x3a83c0: mov          r1, r0
    // 0x3a83c4: r2 = pp[0xf77]
    //     0x3a83c4: add          r2, PP, #0xf, lsl #12
    //     0x3a83c8: ldr          r2, [r2, #0xf68]
    //     0x3a83cc: stur         r0, [fp, #-8]
    // 0x3a83d0: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::ctor()
    //     0x3a83d0: bl           0x3a83ec
    //     0x3a83d4: ldur         r0, [fp, #-8]
    // 0x3a83d8: SP = fp
    //     0x3a83d8: mov          SP, fp
    // 0x3a83dc: LeaveFrame
    //     0x3a83dc: ldp          fp, lr, [SP], #0x10
    // 0x3a83e0: ret
    //     0x3a83e0: ret          
    // 0x3a83e4: r0 = call 0x61fa28
    //     0x3a83e4: bl           0x61fa28
    // 0x3a83e8: b 0x3a83bc
    //     0x3a83e8: b            0x3a83bc
  }
