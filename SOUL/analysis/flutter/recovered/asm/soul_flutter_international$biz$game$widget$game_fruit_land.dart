// lib: , url: soul_flutter_international$biz$game$widget$game_fruit_land


  createTicker() {
    // ** addr: 0x2d3d90, size: 0x17c
    // 0x2d3d90: EnterFrame
    //     0x2d3d90: stp          fp, lr, [SP, #-0x10]!
    //     0x2d3d94: mov          fp, SP
    // 0x2d3d98: AllocStack(0x20)
    //     0x2d3d98: sub          SP, SP, #0x20
    // 0x2d3d9c: r0 = r1
    //     0x2d3d9c: mov          r0, r1
    //     0x2d3da0: stur         r1, [fp, #-8]
    //     0x2d3da4: stur         r2, [fp, #-0x10]
    // 0x2d3da8: CheckStackOverflow
    //     0x2d3da8: ldr          BARRIER, [THR, #0x38]
    //     0x2d3dac: cmp          SP, BARRIER
    //     0x2d3db0: b.ls         0x2d3efc
    // 0x2d3db4: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x2d3db4: ldur         r1, [r0, #0x17]
    //     0x2d3db8: add          r1, r1, HEAP, lsl #32
    //     0x2d3dbc: cmp          r1, r22
    // 0x2d3dc0: b.ne 0x2d3dcc
    //     0x2d3dc0: b.ne         0x2d3dcc
    // 0x2d3dc4: r1 = r0
    //     0x2d3dc4: mov          r1, r0
    // 0x2d3dc8: r0 = soul_flutter_international$biz$game$widget$game_fruit_land___GameFruitLandState&SoulState&TickerProviderStateMixin::_updateTickerModeNotifier()
    //     0x2d3dc8: bl           0x2d3f50
    //     0x2d3dcc: ldur         r0, [fp, #-8]
    // 0x2d3dd0: LoadField: r1 = r0->field_13
    //     0x2d3dd0: ldur         r1, [r0, #0x13]
    //     0x2d3dd4: add          r1, r1, HEAP, lsl #32
    //     0x2d3dd8: cmp          r1, r22
    // 0x2d3ddc: b.ne 0x2d3e74
    //     0x2d3ddc: b.ne         0x2d3e74
    //     0x2d3de0: ldr          r0, [THR, #0x68]
    // 0x2d3de4: LoadField: r0 = r0->field_6e8
    //     0x2d3de4: ldr          r0, [r0, #0x6e8]
    // 0x2d3de8: BARRIER = pp[0x40]
    //     0x2d3de8: ldr          BARRIER, [PP, #0x40]
    //     0x2d3dec: cmp          r0, r16
    // 0x2d3df0: b.ne 0x2d3dfc
    //     0x2d3df0: b.ne         0x2d3dfc
    // 0x2d3df4: r2 = pp[0xbf8]
    //     0x2d3df4: ldr          r2, [PP, #0xbf8]
    // 0x2d3df8: r0 = call 0x61d99c
    //     0x2d3df8: bl           0x61d99c
    // 0x2d3dfc: r1 = pp[0xea6]
    //     0x2d3dfc: add          r1, PP, #0xe, lsl #12
    //     0x2d3e00: ldr          r1, [r1, #0xe98]
    //     0x2d3e04: stur         r0, [fp, #-0x18]
    // 0x2d3e08: r0 = call 0x2a5de4
    //     0x2d3e08: bl           0x2a5de4
    // 0x2d3e0c: r1 = r0
    //     0x2d3e0c: mov          r1, r0
    //     0x2d3e10: ldur         r0, [fp, #-0x18]
    //     0x2d3e14: stur         r1, [fp, #-0x20]
    // 0x2d3e18: StoreField: r1->field_1b = r0
    //     0x2d3e18: stur         r0, [r1, #0x1b]
    // 0x2d3e1c: StoreField: r1->field_b = wzr
    //     0x2d3e1c: stur         wzr, [r1, #0xb]
    //     0x2d3e20: ldr          r0, [THR, #0x68]
    // 0x2d3e24: LoadField: r0 = r0->field_6f0
    //     0x2d3e24: ldr          r0, [r0, #0x6f0]
    // 0x2d3e28: BARRIER = pp[0x40]
    //     0x2d3e28: ldr          BARRIER, [PP, #0x40]
    //     0x2d3e2c: cmp          r0, r16
    // 0x2d3e30: b.ne 0x2d3e3c
    //     0x2d3e30: b.ne         0x2d3e3c
    // 0x2d3e34: r2 = pp[0xc00]
    //     0x2d3e34: ldr          r2, [PP, #0xc00]
    // 0x2d3e38: r0 = call 0x61d99c
    //     0x2d3e38: bl           0x61d99c
    // 0x2d3e3c: r1 = r0
    //     0x2d3e3c: mov          r1, r0
    //     0x2d3e40: ldur         r0, [fp, #-0x20]
    // 0x2d3e44: StoreField: r0->field_f = r1
    //     0x2d3e44: stur         r1, [r0, #0xf]
    // 0x2d3e48: StoreField: r0->field_13 = wzr
    //     0x2d3e48: stur         wzr, [r0, #0x13]
    // 0x2d3e4c: ArrayStore: r0[0] = wzr  ; List_8
    //     0x2d3e4c: stur         wzr, [r0, #0x17]
    //     0x2d3e50: ldur         r1, [fp, #-8]
    // 0x2d3e54: StoreField: r1->field_13 = r0
    //     0x2d3e54: stur         r0, [r1, #0x13]
    //     0x2d3e58: ldurb        r16, [r1, #-1]
    //     0x2d3e5c: ldurb        r17, [r0, #-1]
    //     0x2d3e60: and          BARRIER, r17, BARRIER, lsr #2
    //     0x2d3e64: tst          BARRIER, HEAP, lsr #32
    // 0x2d3e68: b.eq 0x2d3e70
    //     0x2d3e68: b.eq         0x2d3e70
    // 0x2d3e6c: r0 = call 0x61e04c
    //     0x2d3e6c: bl           0x61e04c
    // 0x2d3e70: b 0x2d3e78
    //     0x2d3e70: b            0x2d3e78
    // 0x2d3e74: r1 = r0
    //     0x2d3e74: mov          r1, r0
    //     0x2d3e78: ldur         r0, [fp, #-0x10]
    // 0x2d3e7c: r0 = call 0x2cf960
    //     0x2d3e7c: bl           0x2cf960
    // 0x2d3e80: r3 = r0
    //     0x2d3e80: mov          r3, r0
    //     0x2d3e84: ldur         r2, [fp, #-8]
    //     0x2d3e88: stur         r3, [fp, #-0x18]
    // 0x2d3e8c: StoreField: r3->field_1b = r2
    //     0x2d3e8c: stur         r2, [r3, #0x1b]
    //     0x2d3e90: add          r0, NULL, #0x30
    // 0x2d3e94: StoreField: r3->field_b = r0
    //     0x2d3e94: stur         r0, [r3, #0xb]
    //     0x2d3e98: ldur         r0, [fp, #-0x10]
    // 0x2d3e9c: StoreField: r3->field_13 = r0
    //     0x2d3e9c: stur         r0, [r3, #0x13]
    // 0x2d3ea0: ArrayLoad: r1 = r2[0]  ; List_8
    //     0x2d3ea0: ldur         r1, [r2, #0x17]
    //     0x2d3ea4: add          r1, r1, HEAP, lsl #32
    //     0x2d3ea8: cmp          r1, r22
    // 0x2d3eac: b.eq 0x2d3f04
    //     0x2d3eac: b.eq         0x2d3f04
    // 0x2d3eb0: r0 = LoadClassIdInstr(r1)
    //     0x2d3eb0: ldur         r0, [r1, #-1]
    //     0x2d3eb4: ubfx         r0, r0, #0xc, #0x14
    //     0x2d3eb8: sub          lr, r0, #0xfff
    //     0x2d3ebc: ldr          lr, [r21, lr, lsl #3]
    // 0x2d3ec0: r0 = [R]()
    //     0x2d3ec0: blr          lr
    //     0x2d3ec4: eor          r2, r0, #0x10
    //     0x2d3ec8: ldur         r1, [fp, #-0x18]
    // 0x2d3ecc: r0 = flutter$src$scheduler$ticker_Ticker::muted_assign()
    //     0x2d3ecc: bl           0x2cf190
    //     0x2d3ed0: ldur         r0, [fp, #-8]
    // 0x2d3ed4: LoadField: r1 = r0->field_13
    //     0x2d3ed4: ldur         r1, [r0, #0x13]
    //     0x2d3ed8: add          r1, r1, HEAP, lsl #32
    //     0x2d3edc: cmp          r1, r22
    // 0x2d3ee0: b.eq 0x2d3f08
    //     0x2d3ee0: b.eq         0x2d3f08
    //     0x2d3ee4: ldur         r2, [fp, #-0x18]
    // 0x2d3ee8: r0 = dart__compact_hash___Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::add()
    //     0x2d3ee8: bl           0x611d50
    //     0x2d3eec: ldur         r0, [fp, #-0x18]
    // 0x2d3ef0: SP = fp
    //     0x2d3ef0: mov          SP, fp
    // 0x2d3ef4: LeaveFrame
    //     0x2d3ef4: ldp          fp, lr, [SP], #0x10
    // 0x2d3ef8: ret
    //     0x2d3ef8: ret          
    // 0x2d3efc: r0 = call 0x61fa28
    //     0x2d3efc: bl           0x61fa28
    // 0x2d3f00: b 0x2d3db4
    //     0x2d3f00: b            0x2d3db4
    // 0x2d3f04: r0 = call 0x61ffd0
    //     0x2d3f04: bl           0x61ffd0
    // 0x2d3f08: r0 = call 0x61ffd0
    //     0x2d3f08: bl           0x61ffd0
  }

  _updateTickerModeNotifier() {
    // ** addr: 0x2d3f50, size: 0x11c
    // 0x2d3f50: EnterFrame
    //     0x2d3f50: stp          fp, lr, [SP, #-0x10]!
    //     0x2d3f54: mov          fp, SP
    // 0x2d3f58: AllocStack(0x18)
    //     0x2d3f58: sub          SP, SP, #0x18
    // 0x2d3f5c: r2 = r1
    //     0x2d3f5c: mov          r2, r1
    //     0x2d3f60: stur         r1, [fp, #-8]
    // 0x2d3f64: CheckStackOverflow
    //     0x2d3f64: ldr          BARRIER, [THR, #0x38]
    //     0x2d3f68: cmp          SP, BARRIER
    //     0x2d3f6c: b.ls         0x2d4060
    // 0x2d3f70: LoadField: r1 = r2->field_f
    //     0x2d3f70: ldur         r1, [r2, #0xf]
    //     0x2d3f74: add          r1, r1, HEAP, lsl #32
    //     0x2d3f78: cmp          r1, r22
    // 0x2d3f7c: b.eq 0x2d4068
    //     0x2d3f7c: b.eq         0x2d4068
    // 0x2d3f80: r0 = flutter$src$widgets$ticker_provider_TickerMode::getNotifier()
    //     0x2d3f80: bl           0x2cf6f0
    // 0x2d3f84: r3 = r0
    //     0x2d3f84: mov          r3, r0
    //     0x2d3f88: ldur         r0, [fp, #-8]
    //     0x2d3f8c: stur         r3, [fp, #-0x18]
    // 0x2d3f90: ArrayLoad: r4 = r0[0]  ; List_8
    //     0x2d3f90: ldur         r4, [r0, #0x17]
    //     0x2d3f94: add          r4, r4, HEAP, lsl #32
    //     0x2d3f98: stur         r4, [fp, #-0x10]
    //     0x2d3f9c: cmp          r3, r4
    // 0x2d3fa0: b.ne 0x2d3fb4
    //     0x2d3fa0: b.ne         0x2d3fb4
    // 0x2d3fa4: r0 = NULL
    //     0x2d3fa4: mov          r0, NULL
    // 0x2d3fa8: SP = fp
    //     0x2d3fa8: mov          SP, fp
    // 0x2d3fac: LeaveFrame
    //     0x2d3fac: ldp          fp, lr, [SP], #0x10
    // 0x2d3fb0: ret
    //     0x2d3fb0: ret          
    //     0x2d3fb4: cmp          r4, r22
    // 0x2d3fb8: b.eq 0x2d3ff8
    //     0x2d3fb8: b.eq         0x2d3ff8
    // 0x2d3fbc: r2 = r0
    //     0x2d3fbc: mov          r2, r0
    // 0x2d3fc0: r1 = pp[0x39d]
    //     0x2d3fc0: add          r1, PP, #0x15, lsl #12
    //     0x2d3fc4: ldr          r1, [r1, #0x388]
    // 0x2d3fc8: r0 = call 0x61ec54
    //     0x2d3fc8: bl           0x61ec54
    //     0x2d3fcc: ldur         r1, [fp, #-0x10]
    // 0x2d3fd0: r2 = LoadClassIdInstr(r1)
    //     0x2d3fd0: ldur         r2, [r1, #-1]
    //     0x2d3fd4: ubfx         r2, r2, #0xc, #0x14
    // 0x2d3fd8: BARRIER = r0
    //     0x2d3fd8: mov          BARRIER, r0
    // 0x2d3fdc: r0 = r2
    //     0x2d3fdc: mov          r0, r2
    // 0x2d3fe0: r2 = BARRIER
    //     0x2d3fe0: mov          r2, BARRIER
    //     0x2d3fe4: add          lr, r0, #0xd6f
    //     0x2d3fe8: ldr          lr, [r21, lr, lsl #3]
    // 0x2d3fec: r0 = [R]()
    //     0x2d3fec: blr          lr
    //     0x2d3ff0: ldur         r0, [fp, #-8]
    //     0x2d3ff4: ldur         r3, [fp, #-0x18]
    // 0x2d3ff8: r2 = r0
    //     0x2d3ff8: mov          r2, r0
    // 0x2d3ffc: r1 = pp[0x39d]
    //     0x2d3ffc: add          r1, PP, #0x15, lsl #12
    //     0x2d4000: ldr          r1, [r1, #0x388]
    // 0x2d4004: r0 = call 0x61ec54
    //     0x2d4004: bl           0x61ec54
    //     0x2d4008: ldur         r3, [fp, #-0x18]
    // 0x2d400c: r1 = LoadClassIdInstr(r3)
    //     0x2d400c: ldur         r1, [r3, #-1]
    //     0x2d4010: ubfx         r1, r1, #0xc, #0x14
    // 0x2d4014: r2 = r0
    //     0x2d4014: mov          r2, r0
    // 0x2d4018: r0 = r1
    //     0x2d4018: mov          r0, r1
    // 0x2d401c: r1 = r3
    //     0x2d401c: mov          r1, r3
    //     0x2d4020: add          lr, r0, #0xdbb
    //     0x2d4024: ldr          lr, [r21, lr, lsl #3]
    // 0x2d4028: r0 = [R]()
    //     0x2d4028: blr          lr
    //     0x2d402c: ldur         r0, [fp, #-0x18]
    //     0x2d4030: ldur         r1, [fp, #-8]
    // 0x2d4034: ArrayStore: r1[0] = r0  ; List_8
    //     0x2d4034: stur         r0, [r1, #0x17]
    //     0x2d4038: ldurb        r16, [r1, #-1]
    //     0x2d403c: ldurb        r17, [r0, #-1]
    //     0x2d4040: and          BARRIER, r17, BARRIER, lsr #2
    //     0x2d4044: tst          BARRIER, HEAP, lsr #32
    // 0x2d4048: b.eq 0x2d4050
    //     0x2d4048: b.eq         0x2d4050
    // 0x2d404c: r0 = call 0x61e04c
    //     0x2d404c: bl           0x61e04c
    // 0x2d4050: r0 = NULL
    //     0x2d4050: mov          r0, NULL
    // 0x2d4054: SP = fp
    //     0x2d4054: mov          SP, fp
    // 0x2d4058: LeaveFrame
    //     0x2d4058: ldp          fp, lr, [SP], #0x10
    // 0x2d405c: ret
    //     0x2d405c: ret          
    // 0x2d4060: r0 = call 0x61fa28
    //     0x2d4060: bl           0x61fa28
    // 0x2d4064: b 0x2d3f70
    //     0x2d4064: b            0x2d3f70
    // 0x2d4068: r0 = call 0x61ffd0
    //     0x2d4068: bl           0x61ffd0
  }

  _updateTickers() {
    // ** addr: 0x2d406c, size: 0x38
    // 0x2d406c: EnterFrame
    //     0x2d406c: stp          fp, lr, [SP, #-0x10]!
    //     0x2d4070: mov          fp, SP
    //     0x2d4074: ldr          r0, [fp, #0x10]
    // 0x2d4078: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x2d4078: ldur         r1, [r0, #0x17]
    //     0x2d407c: add          r1, r1, HEAP, lsl #32
    // 0x2d4080: CheckStackOverflow
    //     0x2d4080: ldr          BARRIER, [THR, #0x38]
    //     0x2d4084: cmp          SP, BARRIER
    //     0x2d4088: b.ls         0x2d409c
    // 0x2d408c: r0 = soul_flutter_international$biz$game$widget$game_fruit_land___GameFruitLandState&SoulState&TickerProviderStateMixin::_updateTickers()
    //     0x2d408c: bl           0x2d40a4
    // 0x2d4090: SP = fp
    //     0x2d4090: mov          SP, fp
    // 0x2d4094: LeaveFrame
    //     0x2d4094: ldp          fp, lr, [SP], #0x10
    // 0x2d4098: ret
    //     0x2d4098: ret          
    // 0x2d409c: r0 = call 0x61fa28
    //     0x2d409c: bl           0x61fa28
    // 0x2d40a0: b 0x2d408c
    //     0x2d40a0: b            0x2d408c
  }

  _updateTickers() {
    // ** addr: 0x2d40a4, size: 0x15c
    // 0x2d40a4: EnterFrame
    //     0x2d40a4: stp          fp, lr, [SP, #-0x10]!
    //     0x2d40a8: mov          fp, SP
    // 0x2d40ac: AllocStack(0x20)
    //     0x2d40ac: sub          SP, SP, #0x20
    // 0x2d40b0: r2 = r1
    //     0x2d40b0: mov          r2, r1
    //     0x2d40b4: stur         r1, [fp, #-8]
    // 0x2d40b8: CheckStackOverflow
    //     0x2d40b8: ldr          BARRIER, [THR, #0x38]
    //     0x2d40bc: cmp          SP, BARRIER
    //     0x2d40c0: b.ls         0x2d41e8
    // 0x2d40c4: LoadField: r0 = r2->field_13
    //     0x2d40c4: ldur         r0, [r2, #0x13]
    //     0x2d40c8: add          r0, r0, HEAP, lsl #32
    //     0x2d40cc: cmp          r0, r22
    // 0x2d40d0: b.eq 0x2d41d8
    //     0x2d40d0: b.eq         0x2d41d8
    // 0x2d40d4: ArrayLoad: r1 = r2[0]  ; List_8
    //     0x2d40d4: ldur         r1, [r2, #0x17]
    //     0x2d40d8: add          r1, r1, HEAP, lsl #32
    //     0x2d40dc: cmp          r1, r22
    // 0x2d40e0: b.eq 0x2d41f0
    //     0x2d40e0: b.eq         0x2d41f0
    // 0x2d40e4: r0 = LoadClassIdInstr(r1)
    //     0x2d40e4: ldur         r0, [r1, #-1]
    //     0x2d40e8: ubfx         r0, r0, #0xc, #0x14
    //     0x2d40ec: sub          lr, r0, #0xfff
    //     0x2d40f0: ldr          lr, [r21, lr, lsl #3]
    // 0x2d40f4: r0 = [R]()
    //     0x2d40f4: blr          lr
    //     0x2d40f8: eor          r2, r0, #0x10
    //     0x2d40fc: ldur         r0, [fp, #-8]
    //     0x2d4100: stur         r2, [fp, #-0x10]
    // 0x2d4104: LoadField: r1 = r0->field_13
    //     0x2d4104: ldur         r1, [r0, #0x13]
    //     0x2d4108: add          r1, r1, HEAP, lsl #32
    //     0x2d410c: cmp          r1, r22
    // 0x2d4110: b.eq 0x2d41f4
    //     0x2d4110: b.eq         0x2d41f4
    // 0x2d4114: r0 = dart__compact_hash___Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::get_iterator()
    //     0x2d4114: bl           0x54bba4
    //     0x2d4118: stur         r0, [fp, #-0x18]
    // 0x2d411c: LoadField: r2 = r0->field_7
    //     0x2d411c: ldur         r2, [r0, #7]
    //     0x2d4120: add          r2, r2, HEAP, lsl #32
    //     0x2d4124: stur         r2, [fp, #-8]
    //     0x2d4128: ldur         r3, [fp, #-0x10]
    // 0x2d412c: CheckStackOverflow
    //     0x2d412c: ldr          BARRIER, [THR, #0x38]
    //     0x2d4130: cmp          SP, BARRIER
    //     0x2d4134: b.ls         0x2d41f8
    // 0x2d4138: r1 = r0
    //     0x2d4138: mov          r1, r0
    // 0x2d413c: r0 = dart__compact_hash__CompactIterator::moveNext()
    //     0x2d413c: bl           0x594d70
    //     0x2d4140: tbnz         r0, #4, 0x2d41d8
    //     0x2d4144: ldur         r3, [fp, #-0x18]
    // 0x2d4148: LoadField: r4 = r3->field_33
    //     0x2d4148: ldur         r4, [r3, #0x33]
    //     0x2d414c: add          r4, r4, HEAP, lsl #32
    //     0x2d4150: stur         r4, [fp, #-0x20]
    //     0x2d4154: cmp          r4, r22
    // 0x2d4158: b.ne 0x2d418c
    //     0x2d4158: b.ne         0x2d418c
    // 0x2d415c: r0 = r4
    //     0x2d415c: mov          r0, r4
    //     0x2d4160: ldur         r2, [fp, #-8]
    // 0x2d4164: r1 = NULL
    //     0x2d4164: mov          r1, NULL
    //     0x2d4168: cmp          r2, r22
    // 0x2d416c: b.eq 0x2d418c
    //     0x2d416c: b.eq         0x2d418c
    // 0x2d4170: ArrayLoad: r4 = r2[0]  ; List_8
    //     0x2d4170: ldur         r4, [r2, #0x17]
    //     0x2d4174: add          r4, r4, HEAP, lsl #32
    // 0x2d4178: r8 = pp[0x180]
    //     0x2d4178: ldr          r8, [PP, #0x180]
    // 0x2d417c: LoadField: r9 = r4->field_7
    //     0x2d417c: ldur         r9, [r4, #7]
    // 0x2d4180: r3 = pp[0x38d]
    //     0x2d4180: add          r3, PP, #0x15, lsl #12
    //     0x2d4184: ldr          r3, [r3, #0x378]
    // 0x2d4188: r0 = [R]()
    //     0x2d4188: blr          r9
    //     0x2d418c: ldur         r2, [fp, #-0x10]
    //     0x2d4190: ldur         r0, [fp, #-0x20]
    // 0x2d4194: LoadField: r1 = r0->field_b
    //     0x2d4194: ldur         r1, [r0, #0xb]
    //     0x2d4198: add          r1, r1, HEAP, lsl #32
    //     0x2d419c: cmp          r2, r1
    // 0x2d41a0: b.eq 0x2d41cc
    //     0x2d41a0: b.eq         0x2d41cc
    // 0x2d41a4: StoreField: r0->field_b = r2
    //     0x2d41a4: stur         r2, [r0, #0xb]
    //     0x2d41a8: tbnz         r2, #4, 0x2d41b8
    // 0x2d41ac: r1 = r0
    //     0x2d41ac: mov          r1, r0
    // 0x2d41b0: r0 = flutter$src$scheduler$ticker_Ticker::unscheduleTick()
    //     0x2d41b0: bl           0x2cf4e0
    // 0x2d41b4: b 0x2d41cc
    //     0x2d41b4: b            0x2d41cc
    // 0x2d41b8: r1 = r0
    //     0x2d41b8: mov          r1, r0
    // 0x2d41bc: r0 = flutter$src$scheduler$ticker_Ticker::get_shouldScheduleTick()
    //     0x2d41bc: bl           0x2cf49c
    //     0x2d41c0: tbnz         r0, #4, 0x2d41cc
    //     0x2d41c4: ldur         r1, [fp, #-0x20]
    // 0x2d41c8: r0 = flutter$src$scheduler$ticker_Ticker::scheduleTick()
    //     0x2d41c8: bl           0x2cf210
    //     0x2d41cc: ldur         r0, [fp, #-0x18]
    //     0x2d41d0: ldur         r2, [fp, #-8]
    // 0x2d41d4: b 0x2d4128
    //     0x2d41d4: b            0x2d4128
    // 0x2d41d8: r0 = NULL
    //     0x2d41d8: mov          r0, NULL
    // 0x2d41dc: SP = fp
    //     0x2d41dc: mov          SP, fp
    // 0x2d41e0: LeaveFrame
    //     0x2d41e0: ldp          fp, lr, [SP], #0x10
    // 0x2d41e4: ret
    //     0x2d41e4: ret          
    // 0x2d41e8: r0 = call 0x61fa28
    //     0x2d41e8: bl           0x61fa28
    // 0x2d41ec: b 0x2d40c4
    //     0x2d41ec: b            0x2d40c4
    // 0x2d41f0: r0 = call 0x61ffd0
    //     0x2d41f0: bl           0x61ffd0
    // 0x2d41f4: r0 = call 0x61ffd0
    //     0x2d41f4: bl           0x61ffd0
    // 0x2d41f8: r0 = call 0x61fa28
    //     0x2d41f8: bl           0x61fa28
    // 0x2d41fc: b 0x2d4138
    //     0x2d41fc: b            0x2d4138
  }

  activate() {
    // ** addr: 0x3e80f8, size: 0x48
    // 0x3e80f8: EnterFrame
    //     0x3e80f8: stp          fp, lr, [SP, #-0x10]!
    //     0x3e80fc: mov          fp, SP
    // 0x3e8100: AllocStack(8)
    //     0x3e8100: sub          SP, SP, #8
    // 0x3e8104: r0 = r1
    //     0x3e8104: mov          r0, r1
    //     0x3e8108: stur         r1, [fp, #-8]
    // 0x3e810c: CheckStackOverflow
    //     0x3e810c: ldr          BARRIER, [THR, #0x38]
    //     0x3e8110: cmp          SP, BARRIER
    //     0x3e8114: b.ls         0x3e8138
    // 0x3e8118: r1 = r0
    //     0x3e8118: mov          r1, r0
    // 0x3e811c: r0 = soul_flutter_international$biz$game$widget$game_fruit_land___GameFruitLandState&SoulState&TickerProviderStateMixin::_updateTickerModeNotifier()
    //     0x3e811c: bl           0x2d3f50
    //     0x3e8120: ldur         r1, [fp, #-8]
    // 0x3e8124: r0 = soul_flutter_international$biz$game$widget$game_fruit_land___GameFruitLandState&SoulState&TickerProviderStateMixin::_updateTickers()
    //     0x3e8124: bl           0x2d40a4
    // 0x3e8128: r0 = NULL
    //     0x3e8128: mov          r0, NULL
    // 0x3e812c: SP = fp
    //     0x3e812c: mov          SP, fp
    // 0x3e8130: LeaveFrame
    //     0x3e8130: ldp          fp, lr, [SP], #0x10
    // 0x3e8134: ret
    //     0x3e8134: ret          
    // 0x3e8138: r0 = call 0x61fa28
    //     0x3e8138: bl           0x61fa28
    // 0x3e813c: b 0x3e8118
    //     0x3e813c: b            0x3e8118
  }

  dispose() {
    // ** addr: 0x450c70, size: 0x94
    // 0x450c70: EnterFrame
    //     0x450c70: stp          fp, lr, [SP, #-0x10]!
    //     0x450c74: mov          fp, SP
    // 0x450c78: AllocStack(0x10)
    //     0x450c78: sub          SP, SP, #0x10
    // 0x450c7c: r0 = r1
    //     0x450c7c: mov          r0, r1
    //     0x450c80: stur         r1, [fp, #-0x10]
    // 0x450c84: CheckStackOverflow
    //     0x450c84: ldr          BARRIER, [THR, #0x38]
    //     0x450c88: cmp          SP, BARRIER
    //     0x450c8c: b.ls         0x450cfc
    // 0x450c90: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x450c90: ldur         r3, [r0, #0x17]
    //     0x450c94: add          r3, r3, HEAP, lsl #32
    //     0x450c98: stur         r3, [fp, #-8]
    //     0x450c9c: cmp          r3, r22
    // 0x450ca0: b.ne 0x450cac
    //     0x450ca0: b.ne         0x450cac
    // 0x450ca4: r1 = r0
    //     0x450ca4: mov          r1, r0
    // 0x450ca8: b 0x450ce4
    //     0x450ca8: b            0x450ce4
    // 0x450cac: r2 = r0
    //     0x450cac: mov          r2, r0
    // 0x450cb0: r1 = pp[0x39d]
    //     0x450cb0: add          r1, PP, #0x15, lsl #12
    //     0x450cb4: ldr          r1, [r1, #0x388]
    // 0x450cb8: r0 = call 0x61ec54
    //     0x450cb8: bl           0x61ec54
    //     0x450cbc: ldur         r1, [fp, #-8]
    // 0x450cc0: r2 = LoadClassIdInstr(r1)
    //     0x450cc0: ldur         r2, [r1, #-1]
    //     0x450cc4: ubfx         r2, r2, #0xc, #0x14
    // 0x450cc8: BARRIER = r0
    //     0x450cc8: mov          BARRIER, r0
    // 0x450ccc: r0 = r2
    //     0x450ccc: mov          r0, r2
    // 0x450cd0: r2 = BARRIER
    //     0x450cd0: mov          r2, BARRIER
    //     0x450cd4: add          lr, r0, #0xd6f
    //     0x450cd8: ldr          lr, [r21, lr, lsl #3]
    // 0x450cdc: r0 = [R]()
    //     0x450cdc: blr          lr
    //     0x450ce0: ldur         r1, [fp, #-0x10]
    // 0x450ce4: ArrayStore: r1[0] = r22  ; List_8
    //     0x450ce4: stur         r22, [r1, #0x17]
    // 0x450ce8: r0 = soul_flutter_international$common$base$soul_state_SoulState::dispose()
    //     0x450ce8: bl           0x451970
    // 0x450cec: r0 = NULL
    //     0x450cec: mov          r0, NULL
    // 0x450cf0: SP = fp
    //     0x450cf0: mov          SP, fp
    // 0x450cf4: LeaveFrame
    //     0x450cf4: ldp          fp, lr, [SP], #0x10
    // 0x450cf8: ret
    //     0x450cf8: ret          
    // 0x450cfc: r0 = call 0x61fa28
    //     0x450cfc: bl           0x61fa28
    // 0x450d00: b 0x450c90
    //     0x450d00: b            0x450c90
  }

  get__notifier() {
    // ** addr: 0x417f08, size: 0x28
    // 0x417f08: LoadField: r2 = r1->field_b
    //     0x417f08: ldur         r2, [r1, #0xb]
    //     0x417f0c: add          r2, r2, HEAP, lsl #32
    //     0x417f10: cmp          r2, r22
    // 0x417f14: b.eq 0x417f24
    //     0x417f14: b.eq         0x417f24
    // 0x417f18: LoadField: r0 = r2->field_b
    //     0x417f18: ldur         r0, [r2, #0xb]
    //     0x417f1c: add          r0, r0, HEAP, lsl #32
    // 0x417f20: ret
    //     0x417f20: ret          
    // 0x417f24: EnterFrame
    //     0x417f24: stp          fp, lr, [SP, #-0x10]!
    //     0x417f28: mov          fp, SP
    // 0x417f2c: r0 = call 0x61ffd0
    //     0x417f2c: bl           0x61ffd0
  }

  build() {
    // ** addr: 0x41ca3c, size: 0x300
    // 0x41ca3c: EnterFrame
    //     0x41ca3c: stp          fp, lr, [SP, #-0x10]!
    //     0x41ca40: mov          fp, SP
    // 0x41ca44: AllocStack(0x48)
    //     0x41ca44: sub          SP, SP, #0x48
    // 0x41ca48: r3 = r2
    //     0x41ca48: mov          r3, r2
    //     0x41ca4c: stur         r1, [fp, #-8]
    //     0x41ca50: stur         r2, [fp, #-0x10]
    // 0x41ca54: CheckStackOverflow
    //     0x41ca54: ldr          BARRIER, [THR, #0x38]
    //     0x41ca58: cmp          SP, BARRIER
    //     0x41ca5c: b.ls         0x41cd30
    //     0x41ca60: mov          r1, #1
    // 0x41ca64: r0 = call 0x61e890
    //     0x41ca64: bl           0x61e890
    //     0x41ca68: ldur         r1, [fp, #-8]
    //     0x41ca6c: stur         r0, [fp, #-0x20]
    // 0x41ca70: StoreField: r0->field_f = r1
    //     0x41ca70: stur         r1, [r0, #0xf]
    // 0x41ca74: LoadField: r2 = r1->field_b
    //     0x41ca74: ldur         r2, [r1, #0xb]
    //     0x41ca78: add          r2, r2, HEAP, lsl #32
    //     0x41ca7c: cmp          r2, r22
    // 0x41ca80: b.eq 0x41cd38
    //     0x41ca80: b.eq         0x41cd38
    // 0x41ca84: LoadField: r3 = r2->field_b
    //     0x41ca84: ldur         r3, [r2, #0xb]
    //     0x41ca88: add          r3, r3, HEAP, lsl #32
    // 0x41ca8c: LoadField: r2 = r3->field_2b
    //     0x41ca8c: ldur         r2, [r3, #0x2b]
    //     0x41ca90: add          r2, r2, HEAP, lsl #32
    //     0x41ca94: stur         r2, [fp, #-0x18]
    // 0x41ca98: r0 = call 0x41ee8c
    //     0x41ca98: bl           0x41ee8c
    // 0x41ca9c: r1 = r0
    //     0x41ca9c: mov          r1, r0
    //     0x41caa0: mov          r0, #3
    //     0x41caa4: stur         r1, [fp, #-0x28]
    // 0x41caa8: StoreField: r1->field_7 = r0
    //     0x41caa8: stur         r0, [r1, #7]
    //     0x41caac: fmov         d0, #8.00000000
    // 0x41cab0: StoreField: r1->field_f = d0
    //     0x41cab0: stur         d0, [r1, #0xf]
    // 0x41cab4: ArrayStore: r1[0] = xzr  ; List_8
    //     0x41cab4: stur         xzr, [r1, #0x17]
    //     0x41cab8: fmov         d0, #1.00000000
    // 0x41cabc: StoreField: r1->field_1f = d0
    //     0x41cabc: stur         d0, [r1, #0x1f]
    // 0x41cac0: r0 = pp[0x18d]
    //     0x41cac0: add          r0, PP, #0x15, lsl #12
    //     0x41cac4: ldr          r0, [r0, #0x178]
    // 0x41cac8: StoreField: r1->field_27 = r0
    //     0x41cac8: stur         r0, [r1, #0x27]
    // 0x41cacc: r0 = call 0x419950
    //     0x41cacc: bl           0x419950
    //     0x41cad0: ldur         r2, [fp, #-0x20]
    // 0x41cad4: r1 = pp[0x195]
    //     0x41cad4: add          r1, PP, #0x15, lsl #12
    //     0x41cad8: ldr          r1, [r1, #0x180]
    //     0x41cadc: stur         r0, [fp, #-0x30]
    // 0x41cae0: r0 = call 0x61ec54
    //     0x41cae0: bl           0x61ec54
    //     0x41cae4: stur         r0, [fp, #-0x38]
    // 0x41cae8: r0 = call 0x41ee80
    //     0x41cae8: bl           0x41ee80
    //     0x41caec: stur         r0, [fp, #-0x40]
    //     0x41caf0: add          BARRIER, NULL, #0x20
    //     0x41caf4: str          BARRIER, [SP]
    // 0x41caf8: r1 = r0
    //     0x41caf8: mov          r1, r0
    //     0x41cafc: ldur         r2, [fp, #-0x28]
    //     0x41cb00: ldur         r3, [fp, #-0x38]
    //     0x41cb04: ldur         r6, [fp, #-0x30]
    //     0x41cb08: mov          r5, #9
    // 0x41cb0c: r4 = pp[0x938]
    //     0x41cb0c: add          r4, PP, #0x10, lsl #12
    //     0x41cb10: ldr          r4, [r4, #0x928]
    // 0x41cb14: r0 = flutter$src$widgets$scroll_view_GridView::ctor_builder()
    //     0x41cb14: bl           0x41ec7c
    // 0x41cb18: r1 = pp[0x227]
    //     0x41cb18: add          r1, PP, #0xf, lsl #12
    //     0x41cb1c: ldr          r1, [r1, #0x218]
    // 0x41cb20: r0 = call 0x396454
    //     0x41cb20: bl           0x396454
    //     0x41cb24: stur         r0, [fp, #-0x28]
    //     0x41cb28: add          BARRIER, NULL, #0x20
    //     0x41cb2c: str          BARRIER, [SP]
    // 0x41cb30: r1 = r0
    //     0x41cb30: mov          r1, r0
    //     0x41cb34: ldur         r2, [fp, #-0x40]
    //     0x41cb38: ldur         r3, [fp, #-0x10]
    // 0x41cb3c: r4 = pp[0x948]
    //     0x41cb3c: add          r4, PP, #0x10, lsl #12
    //     0x41cb40: ldr          r4, [r4, #0x938]
    // 0x41cb44: r0 = flutter$src$widgets$media_query_MediaQuery::ctor_removePadding()
    //     0x41cb44: bl           0x39ecf8
    // 0x41cb48: r0 = call 0x391c0c
    //     0x41cb48: bl           0x391c0c
    // 0x41cb4c: r2 = r0
    //     0x41cb4c: mov          r2, r0
    // 0x41cb50: r0 = pp[0x19d]
    //     0x41cb50: add          r0, PP, #0x15, lsl #12
    //     0x41cb54: ldr          r0, [r0, #0x188]
    //     0x41cb58: stur         r2, [fp, #-0x10]
    // 0x41cb5c: StoreField: r2->field_f = r0
    //     0x41cb5c: stur         r0, [r2, #0xf]
    //     0x41cb60: ldur         r0, [fp, #-0x28]
    // 0x41cb64: StoreField: r2->field_b = r0
    //     0x41cb64: stur         r0, [r2, #0xb]
    //     0x41cb68: ldur         r1, [fp, #-8]
    // 0x41cb6c: r0 = soul_flutter_international$biz$game$widget$game_fruit_land__GameFruitLandState::_buildBetCoinWidgetList()
    //     0x41cb6c: bl           0x41cd3c
    //     0x41cb70: stur         r0, [fp, #-8]
    // 0x41cb74: r0 = call 0x3a1414
    //     0x41cb74: bl           0x3a1414
    // 0x41cb78: r1 = r0
    //     0x41cb78: mov          r1, r0
    // 0x41cb7c: r0 = pp[0x5140]
    //     0x41cb7c: ldr          r0, [PP, #0x5140]
    //     0x41cb80: stur         r1, [fp, #-0x28]
    // 0x41cb84: StoreField: r1->field_f = r0
    //     0x41cb84: stur         r0, [r1, #0xf]
    // 0x41cb88: r0 = pp[0xaa1]
    //     0x41cb88: add          r0, PP, #0x11, lsl #12
    //     0x41cb8c: ldr          r0, [r0, #0xa90]
    // 0x41cb90: StoreField: r1->field_13 = r0
    //     0x41cb90: stur         r0, [r1, #0x13]
    // 0x41cb94: r0 = pp[0xaf6]
    //     0x41cb94: add          r0, PP, #0xe, lsl #12
    //     0x41cb98: ldr          r0, [r0, #0xae8]
    // 0x41cb9c: ArrayStore: r1[0] = r0  ; List_8
    //     0x41cb9c: stur         r0, [r1, #0x17]
    // 0x41cba0: r2 = pp[0xb6e]
    //     0x41cba0: add          r2, PP, #0xe, lsl #12
    //     0x41cba4: ldr          r2, [r2, #0xb60]
    // 0x41cba8: StoreField: r1->field_1b = r2
    //     0x41cba8: stur         r2, [r1, #0x1b]
    // 0x41cbac: r3 = pp[0xb06]
    //     0x41cbac: add          r3, PP, #0xe, lsl #12
    //     0x41cbb0: ldr          r3, [r3, #0xaf8]
    // 0x41cbb4: StoreField: r1->field_23 = r3
    //     0x41cbb4: stur         r3, [r1, #0x23]
    // 0x41cbb8: r4 = pp[0xb2]
    //     0x41cbb8: add          r4, PP, #0xa, lsl #12
    //     0x41cbbc: ldr          r4, [r4, #0xa8]
    // 0x41cbc0: StoreField: r1->field_2b = r4
    //     0x41cbc0: stur         r4, [r1, #0x2b]
    // 0x41cbc4: StoreField: r1->field_2f = xzr
    //     0x41cbc4: stur         xzr, [r1, #0x2f]
    //     0x41cbc8: ldur         r5, [fp, #-8]
    // 0x41cbcc: StoreField: r1->field_b = r5
    //     0x41cbcc: stur         r5, [r1, #0xb]
    // 0x41cbd0: r0 = call 0x396460
    //     0x41cbd0: bl           0x396460
    // 0x41cbd4: r2 = r0
    //     0x41cbd4: mov          r2, r0
    // 0x41cbd8: r0 = pp[0xc80]
    //     0x41cbd8: add          r0, PP, #0x10, lsl #12
    //     0x41cbdc: ldr          r0, [r0, #0xc70]
    //     0x41cbe0: stur         r2, [fp, #-8]
    // 0x41cbe4: StoreField: r2->field_f = r0
    //     0x41cbe4: stur         r0, [r2, #0xf]
    //     0x41cbe8: ldur         r0, [fp, #-0x28]
    // 0x41cbec: StoreField: r2->field_b = r0
    //     0x41cbec: stur         r0, [r2, #0xb]
    // 0x41cbf0: r1 = pp[0xade]
    //     0x41cbf0: add          r1, PP, #0xe, lsl #12
    //     0x41cbf4: ldr          r1, [r1, #0xad0]
    // 0x41cbf8: r0 = call 0x39fb14
    //     0x41cbf8: bl           0x39fb14
    // 0x41cbfc: r3 = r0
    //     0x41cbfc: mov          r3, r0
    //     0x41cc00: mov          r0, #1
    //     0x41cc04: stur         r3, [fp, #-0x28]
    // 0x41cc08: StoreField: r3->field_13 = r0
    //     0x41cc08: stur         r0, [r3, #0x13]
    // 0x41cc0c: r0 = pp[0xae6]
    //     0x41cc0c: add          r0, PP, #0xe, lsl #12
    //     0x41cc10: ldr          r0, [r0, #0xad8]
    // 0x41cc14: StoreField: r3->field_1b = r0
    //     0x41cc14: stur         r0, [r3, #0x1b]
    //     0x41cc18: ldur         r0, [fp, #-8]
    // 0x41cc1c: StoreField: r3->field_b = r0
    //     0x41cc1c: stur         r0, [r3, #0xb]
    // 0x41cc20: r1 = NULL
    //     0x41cc20: mov          r1, NULL
    //     0x41cc24: mov          r2, #4
    // 0x41cc28: r0 = call 0x61f920
    //     0x41cc28: bl           0x61f920
    // 0x41cc2c: r2 = r0
    //     0x41cc2c: mov          r2, r0
    //     0x41cc30: ldur         r0, [fp, #-0x10]
    //     0x41cc34: stur         r2, [fp, #-8]
    // 0x41cc38: StoreField: r2->field_f = r0
    //     0x41cc38: stur         r0, [r2, #0xf]
    //     0x41cc3c: ldur         r0, [fp, #-0x28]
    // 0x41cc40: StoreField: r2->field_13 = r0
    //     0x41cc40: stur         r0, [r2, #0x13]
    // 0x41cc44: r1 = pp[0x5c58]
    //     0x41cc44: ldr          r1, [PP, #0x5c58]
    // 0x41cc48: r0 = call 0x61e854
    //     0x41cc48: bl           0x61e854
    // 0x41cc4c: r1 = r0
    //     0x41cc4c: mov          r1, r0
    //     0x41cc50: ldur         r0, [fp, #-8]
    //     0x41cc54: stur         r1, [fp, #-0x10]
    // 0x41cc58: StoreField: r1->field_f = r0
    //     0x41cc58: stur         r0, [r1, #0xf]
    //     0x41cc5c: mov          r0, #4
    // 0x41cc60: StoreField: r1->field_b = r0
    //     0x41cc60: stur         r0, [r1, #0xb]
    // 0x41cc64: r0 = call 0x39310c
    //     0x41cc64: bl           0x39310c
    // 0x41cc68: r1 = r0
    //     0x41cc68: mov          r1, r0
    // 0x41cc6c: r0 = pp[0x862]
    //     0x41cc6c: add          r0, PP, #0xa, lsl #12
    //     0x41cc70: ldr          r0, [r0, #0x858]
    //     0x41cc74: stur         r1, [fp, #-8]
    // 0x41cc78: StoreField: r1->field_f = r0
    //     0x41cc78: stur         r0, [r1, #0xf]
    // 0x41cc7c: r0 = pp[0xaee]
    //     0x41cc7c: add          r0, PP, #0xe, lsl #12
    //     0x41cc80: ldr          r0, [r0, #0xae0]
    // 0x41cc84: StoreField: r1->field_13 = r0
    //     0x41cc84: stur         r0, [r1, #0x13]
    // 0x41cc88: r0 = pp[0xaf6]
    //     0x41cc88: add          r0, PP, #0xe, lsl #12
    //     0x41cc8c: ldr          r0, [r0, #0xae8]
    // 0x41cc90: ArrayStore: r1[0] = r0  ; List_8
    //     0x41cc90: stur         r0, [r1, #0x17]
    // 0x41cc94: r0 = pp[0xb6e]
    //     0x41cc94: add          r0, PP, #0xe, lsl #12
    //     0x41cc98: ldr          r0, [r0, #0xb60]
    // 0x41cc9c: StoreField: r1->field_1b = r0
    //     0x41cc9c: stur         r0, [r1, #0x1b]
    // 0x41cca0: r0 = pp[0xb06]
    //     0x41cca0: add          r0, PP, #0xe, lsl #12
    //     0x41cca4: ldr          r0, [r0, #0xaf8]
    // 0x41cca8: StoreField: r1->field_23 = r0
    //     0x41cca8: stur         r0, [r1, #0x23]
    // 0x41ccac: r0 = pp[0xb2]
    //     0x41ccac: add          r0, PP, #0xa, lsl #12
    //     0x41ccb0: ldr          r0, [r0, #0xa8]
    // 0x41ccb4: StoreField: r1->field_2b = r0
    //     0x41ccb4: stur         r0, [r1, #0x2b]
    // 0x41ccb8: StoreField: r1->field_2f = xzr
    //     0x41ccb8: stur         xzr, [r1, #0x2f]
    //     0x41ccbc: ldur         r0, [fp, #-0x10]
    // 0x41ccc0: StoreField: r1->field_b = r0
    //     0x41ccc0: stur         r0, [r1, #0xb]
    // 0x41ccc4: r0 = call 0x3949ec
    //     0x41ccc4: bl           0x3949ec
    // 0x41ccc8: r1 = r0
    //     0x41ccc8: mov          r1, r0
    // 0x41cccc: r0 = pp[0x5458]
    //     0x41cccc: ldr          r0, [PP, #0x5458]
    //     0x41ccd0: stur         r1, [fp, #-0x10]
    // 0x41ccd4: StoreField: r1->field_f = r0
    //     0x41ccd4: stur         r0, [r1, #0xf]
    // 0x41ccd8: r0 = pp[0x1a5]
    //     0x41ccd8: add          r0, PP, #0x15, lsl #12
    //     0x41ccdc: ldr          r0, [r0, #0x190]
    // 0x41cce0: StoreField: r1->field_13 = r0
    //     0x41cce0: stur         r0, [r1, #0x13]
    //     0x41cce4: ldur         r0, [fp, #-8]
    // 0x41cce8: StoreField: r1->field_b = r0
    //     0x41cce8: stur         r0, [r1, #0xb]
    //     0x41ccec: ldur         r0, [fp, #-0x18]
    // 0x41ccf0: StoreField: r1->field_7 = r0
    //     0x41ccf0: stur         r0, [r1, #7]
    // 0x41ccf4: r0 = call 0x41839c
    //     0x41ccf4: bl           0x41839c
    // 0x41ccf8: r3 = r0
    //     0x41ccf8: mov          r3, r0
    //     0x41ccfc: ldur         r0, [fp, #-0x10]
    //     0x41cd00: stur         r3, [fp, #-8]
    // 0x41cd04: StoreField: r3->field_b = r0
    //     0x41cd04: stur         r0, [r3, #0xb]
    //     0x41cd08: ldur         r2, [fp, #-0x20]
    // 0x41cd0c: r1 = pp[0x1ad]
    //     0x41cd0c: add          r1, PP, #0x15, lsl #12
    //     0x41cd10: ldr          r1, [r1, #0x198]
    // 0x41cd14: r0 = call 0x61ec54
    //     0x41cd14: bl           0x61ec54
    // 0x41cd18: r1 = r0
    //     0x41cd18: mov          r1, r0
    //     0x41cd1c: ldur         r0, [fp, #-8]
    // 0x41cd20: StoreField: r0->field_f = r1
    //     0x41cd20: stur         r1, [r0, #0xf]
    // 0x41cd24: SP = fp
    //     0x41cd24: mov          SP, fp
    // 0x41cd28: LeaveFrame
    //     0x41cd28: ldp          fp, lr, [SP], #0x10
    // 0x41cd2c: ret
    //     0x41cd2c: ret          
    // 0x41cd30: r0 = call 0x61fa28
    //     0x41cd30: bl           0x61fa28
    // 0x41cd34: b 0x41ca60
    //     0x41cd34: b            0x41ca60
    // 0x41cd38: r0 = call 0x61ffd0
    //     0x41cd38: bl           0x61ffd0
  }

  _buildBetCoinWidgetList() {
    // ** addr: 0x41cd3c, size: 0xe0
    // 0x41cd3c: EnterFrame
    //     0x41cd3c: stp          fp, lr, [SP, #-0x10]!
    //     0x41cd40: mov          fp, SP
    // 0x41cd44: AllocStack(0x28)
    //     0x41cd44: sub          SP, SP, #0x28
    //     0x41cd48: stur         r1, [fp, #-8]
    // 0x41cd4c: CheckStackOverflow
    //     0x41cd4c: ldr          BARRIER, [THR, #0x38]
    //     0x41cd50: cmp          SP, BARRIER
    //     0x41cd54: b.ls         0x41ce0c
    //     0x41cd58: mov          r1, #1
    // 0x41cd5c: r0 = call 0x61e890
    //     0x41cd5c: bl           0x61e890
    // 0x41cd60: r3 = r0
    //     0x41cd60: mov          r3, r0
    //     0x41cd64: ldur         r0, [fp, #-8]
    //     0x41cd68: stur         r3, [fp, #-0x10]
    // 0x41cd6c: StoreField: r3->field_f = r0
    //     0x41cd6c: stur         r0, [r3, #0xf]
    // 0x41cd70: r1 = pp[0x868]
    //     0x41cd70: ldr          r1, [PP, #0x868]
    //     0x41cd74: mov          r2, #6
    // 0x41cd78: r0 = call 0x61f920
    //     0x41cd78: bl           0x61f920
    //     0x41cd7c: mov          r1, #0
    // 0x41cd80: CheckStackOverflow
    //     0x41cd80: ldr          BARRIER, [THR, #0x38]
    //     0x41cd84: cmp          SP, BARRIER
    //     0x41cd88: b.ls         0x41ce14
    //     0x41cd8c: cmp          r1, #3
    // 0x41cd90: b.ge 0x41cdb0
    //     0x41cd90: b.ge         0x41cdb0
    //     0x41cd94: add          r2, r0, r1, lsl #2
    // 0x41cd98: BARRIER = pp[0x99b]
    //     0x41cd98: add          BARRIER, PP, #0xb, lsl #12
    //     0x41cd9c: ldr          BARRIER, [BARRIER, #0x990]
    // 0x41cda0: StoreField: r2->field_f = r16
    //     0x41cda0: stur         r16, [r2, #0xf]
    //     0x41cda4: add          r2, r1, #1
    // 0x41cda8: r1 = r2
    //     0x41cda8: mov          r1, r2
    // 0x41cdac: b 0x41cd80
    //     0x41cdac: b            0x41cd80
    // 0x41cdb0: r1 = r0
    //     0x41cdb0: mov          r1, r0
    // 0x41cdb4: r0 = dart_collection_ListBase::asMap()
    //     0x41cdb4: bl           0x41ce1c
    // 0x41cdb8: r1 = r0
    //     0x41cdb8: mov          r1, r0
    // 0x41cdbc: r0 = dart__internal_ListMapView::get_keys()
    //     0x41cdbc: bl           0x58e6e8
    //     0x41cdc0: ldur         r2, [fp, #-0x10]
    // 0x41cdc4: r1 = pp[0x23d]
    //     0x41cdc4: add          r1, PP, #0x15, lsl #12
    //     0x41cdc8: ldr          r1, [r1, #0x228]
    //     0x41cdcc: stur         r0, [fp, #-8]
    // 0x41cdd0: r0 = call 0x61ec54
    //     0x41cdd0: bl           0x61ec54
    // 0x41cdd4: BARRIER = pp[0x245]
    //     0x41cdd4: add          BARRIER, PP, #0x15, lsl #12
    //     0x41cdd8: ldr          BARRIER, [BARRIER, #0x230]
    //     0x41cddc: ldur         lr, [fp, #-8]
    //     0x41cde0: stp          lr, BARRIER, [SP, #8]
    //     0x41cde4: str          r0, [SP]
    // 0x41cde8: r4 = pp[0x58]
    //     0x41cde8: ldr          r4, [PP, #0x58]
    // 0x41cdec: r0 = dart__internal_ListIterable::map()
    //     0x41cdec: bl           0x34c5b8
    // 0x41cdf0: LoadField: r1 = r0->field_7
    //     0x41cdf0: ldur         r1, [r0, #7]
    //     0x41cdf4: add          r1, r1, HEAP, lsl #32
    // 0x41cdf8: r2 = r0
    //     0x41cdf8: mov          r2, r0
    // 0x41cdfc: r0 = dart_core__GrowableList::factory_ctor_of()
    //     0x41cdfc: bl           0x276db0
    // 0x41ce00: SP = fp
    //     0x41ce00: mov          SP, fp
    // 0x41ce04: LeaveFrame
    //     0x41ce04: ldp          fp, lr, [SP], #0x10
    // 0x41ce08: ret
    //     0x41ce08: ret          
    // 0x41ce0c: r0 = call 0x61fa28
    //     0x41ce0c: bl           0x61fa28
    // 0x41ce10: b 0x41cd58
    //     0x41ce10: b            0x41cd58
    // 0x41ce14: r0 = call 0x61fa28
    //     0x41ce14: bl           0x61fa28
    // 0x41ce18: b 0x41cd8c
    //     0x41ce18: b            0x41cd8c
  }

  _anon_closure() {
    // ** addr: 0x41cfac, size: 0x464
    // 0x41cfac: EnterFrame
    //     0x41cfac: stp          fp, lr, [SP, #-0x10]!
    //     0x41cfb0: mov          fp, SP
    // 0x41cfb4: AllocStack(0x58)
    //     0x41cfb4: sub          SP, SP, #0x58
    //     0x41cfb8: ldr          r0, [fp, #0x18]
    // 0x41cfbc: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x41cfbc: ldur         r1, [r0, #0x17]
    //     0x41cfc0: add          r1, r1, HEAP, lsl #32
    //     0x41cfc4: stur         r1, [fp, #-8]
    // 0x41cfc8: CheckStackOverflow
    //     0x41cfc8: ldr          BARRIER, [THR, #0x38]
    //     0x41cfcc: cmp          SP, BARRIER
    //     0x41cfd0: b.ls         0x41d404
    //     0x41cfd4: mov          r1, #1
    // 0x41cfd8: r0 = call 0x61e890
    //     0x41cfd8: bl           0x61e890
    // 0x41cfdc: r3 = r0
    //     0x41cfdc: mov          r3, r0
    //     0x41cfe0: ldur         r0, [fp, #-8]
    //     0x41cfe4: stur         r3, [fp, #-0x18]
    // 0x41cfe8: StoreField: r3->field_b = r0
    //     0x41cfe8: stur         r0, [r3, #0xb]
    // 0x41cfec: LoadField: r1 = r0->field_f
    //     0x41cfec: ldur         r1, [r0, #0xf]
    //     0x41cff0: add          r1, r1, HEAP, lsl #32
    // 0x41cff4: LoadField: r0 = r1->field_b
    //     0x41cff4: ldur         r0, [r1, #0xb]
    //     0x41cff8: add          r0, r0, HEAP, lsl #32
    //     0x41cffc: cmp          r0, r22
    // 0x41d000: b.eq 0x41d40c
    //     0x41d000: b.eq         0x41d40c
    // 0x41d004: LoadField: r1 = r0->field_b
    //     0x41d004: ldur         r1, [r0, #0xb]
    //     0x41d008: add          r1, r1, HEAP, lsl #32
    //     0x41d00c: ldr          r0, [fp, #0x10]
    //     0x41d010: sbfx         r4, r0, #1, #0x1f
    // 0x41d014: branchIfSmi(r0, 0x41d01c)
    //     0x41d014: tbz          r0, #0, 0x41d01c
    // 0x41d018: LoadField: r4 = r0->field_7
    //     0x41d018: ldur         r4, [r0, #7]
    // 0x41d01c: r2 = r4
    //     0x41d01c: mov          r2, r4
    //     0x41d020: stur         r4, [fp, #-0x10]
    // 0x41d024: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::getBetCoinGear()
    //     0x41d024: bl           0x41d410
    // 0x41d028: r2 = r0
    //     0x41d028: mov          r2, r0
    //     0x41d02c: sbfiz        r0, r2, #1, #0x1f
    //     0x41d030: cmp          r2, r0, asr #1
    // 0x41d034: b.eq 0x41d040
    //     0x41d034: b.eq         0x41d040
    // 0x41d038: r0 = call 0x61fba8
    //     0x41d038: bl           0x61fba8
    // 0x41d03c: StoreField: r0->field_7 = r2
    //     0x41d03c: stur         r2, [r0, #7]
    // 0x41d040: r3 = r0
    //     0x41d040: mov          r3, r0
    //     0x41d044: ldur         r2, [fp, #-0x18]
    //     0x41d048: stur         r3, [fp, #-0x20]
    // 0x41d04c: StoreField: r2->field_f = r0
    //     0x41d04c: stur         r0, [r2, #0xf]
    // 0x41d050: branchIfSmi(r0, 0x41d06c)
    //     0x41d050: tbz          r0, #0, 0x41d06c
    //     0x41d054: ldurb        r16, [r2, #-1]
    //     0x41d058: ldurb        r17, [r0, #-1]
    //     0x41d05c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x41d060: tst          BARRIER, HEAP, lsr #32
    // 0x41d064: b.eq 0x41d06c
    //     0x41d064: b.eq         0x41d06c
    // 0x41d068: r0 = call 0x61e06c
    //     0x41d068: bl           0x61e06c
    //     0x41d06c: ldur         r0, [fp, #-0x10]
    //     0x41d070: cmp          r0, #1
    // 0x41d074: b.gt 0x41d0a0
    //     0x41d074: b.gt         0x41d0a0
    //     0x41d078: cmp          r0, #0
    // 0x41d07c: b.gt 0x41d094
    //     0x41d07c: b.gt         0x41d094
    //     0x41d080: ldr          r0, [fp, #0x10]
    //     0x41d084: cbnz         r0, 0x41d0b8
    // 0x41d088: r0 = pp[0x24d]
    //     0x41d088: add          r0, PP, #0x15, lsl #12
    //     0x41d08c: ldr          r0, [r0, #0x238]
    // 0x41d090: b 0x41d0c0
    //     0x41d090: b            0x41d0c0
    // 0x41d094: r0 = pp[0x255]
    //     0x41d094: add          r0, PP, #0x15, lsl #12
    //     0x41d098: ldr          r0, [r0, #0x240]
    // 0x41d09c: b 0x41d0c0
    //     0x41d09c: b            0x41d0c0
    //     0x41d0a0: ldr          r0, [fp, #0x10]
    //     0x41d0a4: cmp          r0, #4
    // 0x41d0a8: b.ne 0x41d0b8
    //     0x41d0a8: b.ne         0x41d0b8
    // 0x41d0ac: r0 = pp[0x25d]
    //     0x41d0ac: add          r0, PP, #0x15, lsl #12
    //     0x41d0b0: ldr          r0, [r0, #0x248]
    // 0x41d0b4: b 0x41d0c0
    //     0x41d0b4: b            0x41d0c0
    // 0x41d0b8: r0 = pp[0x24d]
    //     0x41d0b8: add          r0, PP, #0x15, lsl #12
    //     0x41d0bc: ldr          r0, [r0, #0x238]
    //     0x41d0c0: stur         r0, [fp, #-8]
    // 0x41d0c4: r1 = pp[0xede]
    //     0x41d0c4: add          r1, PP, #0xe, lsl #12
    //     0x41d0c8: ldr          r1, [r1, #0xed0]
    // 0x41d0cc: r0 = call 0x3b5478
    //     0x41d0cc: bl           0x3b5478
    // 0x41d0d0: r1 = r0
    //     0x41d0d0: mov          r1, r0
    //     0x41d0d4: ldur         r0, [fp, #-8]
    //     0x41d0d8: stur         r1, [fp, #-0x28]
    // 0x41d0dc: StoreField: r1->field_b = r0
    //     0x41d0dc: stur         r0, [r1, #0xb]
    // 0x41d0e0: r0 = call 0x3b546c
    //     0x41d0e0: bl           0x3b546c
    // 0x41d0e4: r1 = r0
    //     0x41d0e4: mov          r1, r0
    //     0x41d0e8: ldur         r0, [fp, #-0x28]
    //     0x41d0ec: stur         r1, [fp, #-8]
    // 0x41d0f0: StoreField: r1->field_7 = r0
    //     0x41d0f0: stur         r0, [r1, #7]
    // 0x41d0f4: r0 = pp[0x1ef]
    //     0x41d0f4: add          r0, PP, #0xf, lsl #12
    //     0x41d0f8: ldr          r0, [r0, #0x1e0]
    // 0x41d0fc: StoreField: r1->field_13 = r0
    //     0x41d0fc: stur         r0, [r1, #0x13]
    // 0x41d100: r0 = pp[0xaae]
    //     0x41d100: add          r0, PP, #0xe, lsl #12
    //     0x41d104: ldr          r0, [r0, #0xaa0]
    // 0x41d108: ArrayStore: r1[0] = r0  ; List_8
    //     0x41d108: stur         r0, [r1, #0x17]
    // 0x41d10c: r0 = pp[0xef6]
    //     0x41d10c: add          r0, PP, #0xe, lsl #12
    //     0x41d110: ldr          r0, [r0, #0xee8]
    // 0x41d114: StoreField: r1->field_1f = r0
    //     0x41d114: stur         r0, [r1, #0x1f]
    //     0x41d118: add          r0, NULL, #0x30
    // 0x41d11c: StoreField: r1->field_23 = r0
    //     0x41d11c: stur         r0, [r1, #0x23]
    //     0x41d120: fmov         d0, #1.00000000
    // 0x41d124: StoreField: r1->field_27 = d0
    //     0x41d124: stur         d0, [r1, #0x27]
    // 0x41d128: StoreField: r1->field_2f = d0
    //     0x41d128: stur         d0, [r1, #0x2f]
    // 0x41d12c: r2 = pp[0xefe]
    //     0x41d12c: add          r2, PP, #0xe, lsl #12
    //     0x41d130: ldr          r2, [r2, #0xef0]
    // 0x41d134: StoreField: r1->field_37 = r2
    //     0x41d134: stur         r2, [r1, #0x37]
    // 0x41d138: StoreField: r1->field_3b = r0
    //     0x41d138: stur         r0, [r1, #0x3b]
    // 0x41d13c: StoreField: r1->field_3f = r0
    //     0x41d13c: stur         r0, [r1, #0x3f]
    // 0x41d140: r0 = call 0x391dd8
    //     0x41d140: bl           0x391dd8
    // 0x41d144: r1 = r0
    //     0x41d144: mov          r1, r0
    //     0x41d148: ldur         r0, [fp, #-8]
    //     0x41d14c: stur         r1, [fp, #-0x28]
    // 0x41d150: StoreField: r1->field_b = r0
    //     0x41d150: stur         r0, [r1, #0xb]
    // 0x41d154: r0 = pp[0xb86]
    //     0x41d154: add          r0, PP, #0xe, lsl #12
    //     0x41d158: ldr          r0, [r0, #0xb78]
    // 0x41d15c: StoreField: r1->field_23 = r0
    //     0x41d15c: stur         r0, [r1, #0x23]
    //     0x41d160: ldur         BARRIER, [fp, #-0x20]
    //     0x41d164: str          BARRIER, [SP]
    // 0x41d168: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x41d168: bl           0x2ac0a0
    //     0x41d16c: stur         r0, [fp, #-8]
    // 0x41d170: r0 = call 0x31d844
    //     0x41d170: bl           0x31d844
    // 0x41d174: r1 = r0
    //     0x41d174: mov          r1, r0
    // 0x41d178: r0 = pp[0x6310]
    //     0x41d178: ldr          r0, [PP, #0x6310]
    //     0x41d17c: stur         r1, [fp, #-0x20]
    // 0x41d180: StoreField: r1->field_27 = r0
    //     0x41d180: stur         r0, [r1, #0x27]
    //     0x41d184: fmov         d0, #1.00000000
    // 0x41d188: StoreField: r1->field_7 = d0
    //     0x41d188: stur         d0, [r1, #7]
    // 0x41d18c: d1 = pp[0xb09]
    //     0x41d18c: add          r17, PP, #0x11, lsl #12
    //     0x41d190: ldr          d1, [r17, #0xaf8]
    // 0x41d194: StoreField: r1->field_f = d1
    //     0x41d194: stur         d1, [r1, #0xf]
    // 0x41d198: ArrayStore: r1[0] = xzr  ; List_8
    //     0x41d198: stur         xzr, [r1, #0x17]
    // 0x41d19c: d2 = pp[0xb11]
    //     0x41d19c: add          r17, PP, #0x11, lsl #12
    //     0x41d1a0: ldr          d2, [r17, #0xb00]
    // 0x41d1a4: StoreField: r1->field_1f = d2
    //     0x41d1a4: stur         d2, [r1, #0x1f]
    // 0x41d1a8: r0 = call 0x31abec
    //     0x41d1a8: bl           0x31abec
    // 0x41d1ac: r1 = r0
    //     0x41d1ac: mov          r1, r0
    //     0x41d1b0: add          r0, NULL, #0x20
    //     0x41d1b4: stur         r1, [fp, #-0x30]
    // 0x41d1b8: StoreField: r1->field_7 = r0
    //     0x41d1b8: stur         r0, [r1, #7]
    //     0x41d1bc: ldur         r2, [fp, #-0x20]
    // 0x41d1c0: StoreField: r1->field_b = r2
    //     0x41d1c0: stur         r2, [r1, #0xb]
    // 0x41d1c4: r2 = pp[0xb5e]
    //     0x41d1c4: add          r2, PP, #0xe, lsl #12
    //     0x41d1c8: ldr          r2, [r2, #0xb50]
    // 0x41d1cc: StoreField: r1->field_1f = r2
    //     0x41d1cc: stur         r2, [r1, #0x1f]
    // 0x41d1d0: r2 = pp[0xa59]
    //     0x41d1d0: add          r2, PP, #0x11, lsl #12
    //     0x41d1d4: ldr          r2, [r2, #0xa48]
    // 0x41d1d8: StoreField: r1->field_23 = r2
    //     0x41d1d8: stur         r2, [r1, #0x23]
    // 0x41d1dc: r0 = call 0x393bf8
    //     0x41d1dc: bl           0x393bf8
    // 0x41d1e0: r2 = r0
    //     0x41d1e0: mov          r2, r0
    //     0x41d1e4: ldur         r0, [fp, #-8]
    //     0x41d1e8: stur         r2, [fp, #-0x20]
    // 0x41d1ec: StoreField: r2->field_b = r0
    //     0x41d1ec: stur         r0, [r2, #0xb]
    //     0x41d1f0: ldur         r0, [fp, #-0x30]
    // 0x41d1f4: StoreField: r2->field_13 = r0
    //     0x41d1f4: stur         r0, [r2, #0x13]
    // 0x41d1f8: r1 = pp[0x90c]
    //     0x41d1f8: add          r1, PP, #0xc, lsl #12
    //     0x41d1fc: ldr          r1, [r1, #0x900]
    // 0x41d200: r4 = pp[0x4c0]
    //     0x41d200: ldr          r4, [PP, #0x4c0]
    // 0x41d204: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x41d204: bl           0x3a1dcc
    //     0x41d208: stur         r0, [fp, #-8]
    // 0x41d20c: r0 = call 0x31d844
    //     0x41d20c: bl           0x31d844
    // 0x41d210: r1 = r0
    //     0x41d210: mov          r1, r0
    // 0x41d214: r0 = pp[0x6310]
    //     0x41d214: ldr          r0, [PP, #0x6310]
    //     0x41d218: stur         r1, [fp, #-0x30]
    // 0x41d21c: StoreField: r1->field_27 = r0
    //     0x41d21c: stur         r0, [r1, #0x27]
    //     0x41d220: fmov         d0, #1.00000000
    // 0x41d224: StoreField: r1->field_7 = d0
    //     0x41d224: stur         d0, [r1, #7]
    // 0x41d228: d0 = pp[0xb09]
    //     0x41d228: add          r17, PP, #0x11, lsl #12
    //     0x41d22c: ldr          d0, [r17, #0xaf8]
    // 0x41d230: StoreField: r1->field_f = d0
    //     0x41d230: stur         d0, [r1, #0xf]
    // 0x41d234: ArrayStore: r1[0] = xzr  ; List_8
    //     0x41d234: stur         xzr, [r1, #0x17]
    // 0x41d238: d0 = pp[0xb11]
    //     0x41d238: add          r17, PP, #0x11, lsl #12
    //     0x41d23c: ldr          d0, [r17, #0xb00]
    // 0x41d240: StoreField: r1->field_1f = d0
    //     0x41d240: stur         d0, [r1, #0x1f]
    // 0x41d244: r0 = call 0x31abec
    //     0x41d244: bl           0x31abec
    // 0x41d248: r1 = r0
    //     0x41d248: mov          r1, r0
    //     0x41d24c: add          r0, NULL, #0x20
    //     0x41d250: stur         r1, [fp, #-0x38]
    // 0x41d254: StoreField: r1->field_7 = r0
    //     0x41d254: stur         r0, [r1, #7]
    //     0x41d258: ldur         r0, [fp, #-0x30]
    // 0x41d25c: StoreField: r1->field_b = r0
    //     0x41d25c: stur         r0, [r1, #0xb]
    // 0x41d260: r0 = pp[0x7598]
    //     0x41d260: ldr          r0, [PP, #0x7598]
    // 0x41d264: StoreField: r1->field_1f = r0
    //     0x41d264: stur         r0, [r1, #0x1f]
    // 0x41d268: r0 = pp[0xa59]
    //     0x41d268: add          r0, PP, #0x11, lsl #12
    //     0x41d26c: ldr          r0, [r0, #0xa48]
    // 0x41d270: StoreField: r1->field_23 = r0
    //     0x41d270: stur         r0, [r1, #0x23]
    // 0x41d274: r0 = call 0x393bf8
    //     0x41d274: bl           0x393bf8
    // 0x41d278: r1 = r0
    //     0x41d278: mov          r1, r0
    //     0x41d27c: ldur         r0, [fp, #-8]
    //     0x41d280: stur         r1, [fp, #-0x30]
    // 0x41d284: StoreField: r1->field_b = r0
    //     0x41d284: stur         r0, [r1, #0xb]
    //     0x41d288: ldur         r0, [fp, #-0x38]
    // 0x41d28c: StoreField: r1->field_13 = r0
    //     0x41d28c: stur         r0, [r1, #0x13]
    // 0x41d290: r0 = pp[0x23f]
    //     0x41d290: add          r0, PP, #0xf, lsl #12
    //     0x41d294: ldr          r0, [r0, #0x230]
    // 0x41d298: StoreField: r1->field_2b = r0
    //     0x41d298: stur         r0, [r1, #0x2b]
    //     0x41d29c: mov          r0, #2
    // 0x41d2a0: StoreField: r1->field_37 = r0
    //     0x41d2a0: stur         r0, [r1, #0x37]
    // 0x41d2a4: r0 = call 0x391c0c
    //     0x41d2a4: bl           0x391c0c
    // 0x41d2a8: r3 = r0
    //     0x41d2a8: mov          r3, r0
    // 0x41d2ac: r0 = pp[0x265]
    //     0x41d2ac: add          r0, PP, #0x15, lsl #12
    //     0x41d2b0: ldr          r0, [r0, #0x250]
    //     0x41d2b4: stur         r3, [fp, #-8]
    // 0x41d2b8: StoreField: r3->field_f = r0
    //     0x41d2b8: stur         r0, [r3, #0xf]
    //     0x41d2bc: ldur         r0, [fp, #-0x30]
    // 0x41d2c0: StoreField: r3->field_b = r0
    //     0x41d2c0: stur         r0, [r3, #0xb]
    // 0x41d2c4: r1 = NULL
    //     0x41d2c4: mov          r1, NULL
    //     0x41d2c8: mov          r2, #4
    // 0x41d2cc: r0 = call 0x61f920
    //     0x41d2cc: bl           0x61f920
    // 0x41d2d0: r2 = r0
    //     0x41d2d0: mov          r2, r0
    //     0x41d2d4: ldur         r0, [fp, #-0x20]
    //     0x41d2d8: stur         r2, [fp, #-0x30]
    // 0x41d2dc: StoreField: r2->field_f = r0
    //     0x41d2dc: stur         r0, [r2, #0xf]
    //     0x41d2e0: ldur         r0, [fp, #-8]
    // 0x41d2e4: StoreField: r2->field_13 = r0
    //     0x41d2e4: stur         r0, [r2, #0x13]
    // 0x41d2e8: r1 = pp[0x5c58]
    //     0x41d2e8: ldr          r1, [PP, #0x5c58]
    // 0x41d2ec: r0 = call 0x61e854
    //     0x41d2ec: bl           0x61e854
    // 0x41d2f0: r1 = r0
    //     0x41d2f0: mov          r1, r0
    //     0x41d2f4: ldur         r0, [fp, #-0x30]
    //     0x41d2f8: stur         r1, [fp, #-8]
    // 0x41d2fc: StoreField: r1->field_f = r0
    //     0x41d2fc: stur         r0, [r1, #0xf]
    //     0x41d300: mov          r0, #4
    // 0x41d304: StoreField: r1->field_b = r0
    //     0x41d304: stur         r0, [r1, #0xb]
    // 0x41d308: r0 = call 0x39310c
    //     0x41d308: bl           0x39310c
    // 0x41d30c: r1 = r0
    //     0x41d30c: mov          r1, r0
    // 0x41d310: r0 = pp[0x862]
    //     0x41d310: add          r0, PP, #0xa, lsl #12
    //     0x41d314: ldr          r0, [r0, #0x858]
    //     0x41d318: stur         r1, [fp, #-0x20]
    // 0x41d31c: StoreField: r1->field_f = r0
    //     0x41d31c: stur         r0, [r1, #0xf]
    // 0x41d320: r0 = pp[0xaee]
    //     0x41d320: add          r0, PP, #0xe, lsl #12
    //     0x41d324: ldr          r0, [r0, #0xae0]
    // 0x41d328: StoreField: r1->field_13 = r0
    //     0x41d328: stur         r0, [r1, #0x13]
    // 0x41d32c: r0 = pp[0xaf6]
    //     0x41d32c: add          r0, PP, #0xe, lsl #12
    //     0x41d330: ldr          r0, [r0, #0xae8]
    // 0x41d334: ArrayStore: r1[0] = r0  ; List_8
    //     0x41d334: stur         r0, [r1, #0x17]
    // 0x41d338: r0 = pp[0xb6e]
    //     0x41d338: add          r0, PP, #0xe, lsl #12
    //     0x41d33c: ldr          r0, [r0, #0xb60]
    // 0x41d340: StoreField: r1->field_1b = r0
    //     0x41d340: stur         r0, [r1, #0x1b]
    // 0x41d344: r0 = pp[0xb06]
    //     0x41d344: add          r0, PP, #0xe, lsl #12
    //     0x41d348: ldr          r0, [r0, #0xaf8]
    // 0x41d34c: StoreField: r1->field_23 = r0
    //     0x41d34c: stur         r0, [r1, #0x23]
    // 0x41d350: r0 = pp[0xb2]
    //     0x41d350: add          r0, PP, #0xa, lsl #12
    //     0x41d354: ldr          r0, [r0, #0xa8]
    // 0x41d358: StoreField: r1->field_2b = r0
    //     0x41d358: stur         r0, [r1, #0x2b]
    // 0x41d35c: StoreField: r1->field_2f = xzr
    //     0x41d35c: stur         xzr, [r1, #0x2f]
    //     0x41d360: ldur         r0, [fp, #-8]
    // 0x41d364: StoreField: r1->field_b = r0
    //     0x41d364: stur         r0, [r1, #0xb]
    // 0x41d368: r0 = call 0x391a04
    //     0x41d368: bl           0x391a04
    //     0x41d36c: stur         r0, [fp, #-8]
    // 0x41d370: BARRIER = pp[0x8c9]
    //     0x41d370: add          BARRIER, PP, #0x11, lsl #12
    //     0x41d374: ldr          BARRIER, [BARRIER, #0x8b8]
    // 0x41d378: lr = pp[0x26d]
    //     0x41d378: add          lr, PP, #0x15, lsl #12
    //     0x41d37c: ldr          lr, [lr, #0x258]
    //     0x41d380: stp          lr, BARRIER, [SP, #0x10]
    //     0x41d384: ldur         BARRIER, [fp, #-0x28]
    //     0x41d388: ldur         lr, [fp, #-0x20]
    //     0x41d38c: stp          lr, BARRIER, [SP]
    // 0x41d390: r1 = r0
    //     0x41d390: mov          r1, r0
    // 0x41d394: r4 = pp[0x172]
    //     0x41d394: add          r4, PP, #0x12, lsl #12
    //     0x41d398: ldr          r4, [r4, #0x160]
    // 0x41d39c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x41d39c: bl           0x391490
    // 0x41d3a0: r0 = call 0x3a1d94
    //     0x41d3a0: bl           0x3a1d94
    //     0x41d3a4: ldur         r2, [fp, #-0x18]
    // 0x41d3a8: r1 = pp[0x275]
    //     0x41d3a8: add          r1, PP, #0x15, lsl #12
    //     0x41d3ac: ldr          r1, [r1, #0x260]
    //     0x41d3b0: stur         r0, [fp, #-0x18]
    // 0x41d3b4: r0 = call 0x61ec54
    //     0x41d3b4: bl           0x61ec54
    //     0x41d3b8: ldur         BARRIER, [fp, #-8]
    //     0x41d3bc: stp          BARRIER, r0, [SP]
    //     0x41d3c0: ldur         r1, [fp, #-0x18]
    // 0x41d3c4: r4 = pp[0x214]
    //     0x41d3c4: add          r4, PP, #0xc, lsl #12
    //     0x41d3c8: ldr          r4, [r4, #0x208]
    // 0x41d3cc: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x41d3cc: bl           0x3a18c4
    // 0x41d3d0: r1 = pp[0xade]
    //     0x41d3d0: add          r1, PP, #0xe, lsl #12
    //     0x41d3d4: ldr          r1, [r1, #0xad0]
    // 0x41d3d8: r0 = call 0x39fb14
    //     0x41d3d8: bl           0x39fb14
    //     0x41d3dc: mov          r1, #1
    // 0x41d3e0: StoreField: r0->field_13 = r1
    //     0x41d3e0: stur         r1, [r0, #0x13]
    // 0x41d3e4: r1 = pp[0xae6]
    //     0x41d3e4: add          r1, PP, #0xe, lsl #12
    //     0x41d3e8: ldr          r1, [r1, #0xad8]
    // 0x41d3ec: StoreField: r0->field_1b = r1
    //     0x41d3ec: stur         r1, [r0, #0x1b]
    //     0x41d3f0: ldur         r1, [fp, #-0x18]
    // 0x41d3f4: StoreField: r0->field_b = r1
    //     0x41d3f4: stur         r1, [r0, #0xb]
    // 0x41d3f8: SP = fp
    //     0x41d3f8: mov          SP, fp
    // 0x41d3fc: LeaveFrame
    //     0x41d3fc: ldp          fp, lr, [SP], #0x10
    // 0x41d400: ret
    //     0x41d400: ret          
    // 0x41d404: r0 = call 0x61fa28
    //     0x41d404: bl           0x61fa28
    // 0x41d408: b 0x41cfd4
    //     0x41d408: b            0x41cfd4
    // 0x41d40c: r0 = call 0x61ffd0
    //     0x41d40c: bl           0x61ffd0
  }

  _anon_closure() {
    // ** addr: 0x41d474, size: 0x128
    // 0x41d474: EnterFrame
    //     0x41d474: stp          fp, lr, [SP, #-0x10]!
    //     0x41d478: mov          fp, SP
    // 0x41d47c: AllocStack(0x28)
    //     0x41d47c: sub          SP, SP, #0x28
    //     0x41d480: ldr          r0, [fp, #0x10]
    // 0x41d484: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x41d484: ldur         r3, [r0, #0x17]
    //     0x41d488: add          r3, r3, HEAP, lsl #32
    //     0x41d48c: stur         r3, [fp, #-8]
    // 0x41d490: CheckStackOverflow
    //     0x41d490: ldr          BARRIER, [THR, #0x38]
    //     0x41d494: cmp          SP, BARRIER
    //     0x41d498: b.ls         0x41d58c
    // 0x41d49c: r1 = NULL
    //     0x41d49c: mov          r1, NULL
    //     0x41d4a0: mov          r2, #4
    // 0x41d4a4: r0 = call 0x61f920
    //     0x41d4a4: bl           0x61f920
    //     0x41d4a8: stur         r0, [fp, #-0x18]
    // 0x41d4ac: BARRIER = pp[0x27d]
    //     0x41d4ac: add          BARRIER, PP, #0x15, lsl #12
    //     0x41d4b0: ldr          BARRIER, [BARRIER, #0x268]
    // 0x41d4b4: StoreField: r0->field_f = r16
    //     0x41d4b4: stur         r16, [r0, #0xf]
    //     0x41d4b8: ldur         r1, [fp, #-8]
    // 0x41d4bc: LoadField: r2 = r1->field_f
    //     0x41d4bc: ldur         r2, [r1, #0xf]
    //     0x41d4c0: add          r2, r2, HEAP, lsl #32
    //     0x41d4c4: stur         r2, [fp, #-0x10]
    //     0x41d4c8: str          r2, [SP]
    // 0x41d4cc: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x41d4cc: bl           0x2ac0a0
    //     0x41d4d0: ldur         r1, [fp, #-0x18]
    //     0x41d4d4: add          r25, r1, #0x13
    //     0x41d4d8: str          r0, [r25]
    // 0x41d4dc: branchIfSmi(r0, 0x41d4f8)
    //     0x41d4dc: tbz          r0, #0, 0x41d4f8
    //     0x41d4e0: ldurb        r16, [r1, #-1]
    //     0x41d4e4: ldurb        r17, [r0, #-1]
    //     0x41d4e8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x41d4ec: tst          BARRIER, HEAP, lsr #32
    // 0x41d4f0: b.eq 0x41d4f8
    //     0x41d4f0: b.eq         0x41d4f8
    // 0x41d4f4: r0 = call 0x61db00
    //     0x41d4f4: bl           0x61db00
    // 0x41d4f8: BARRIER = pp[0xbf0]
    //     0x41d4f8: ldr          BARRIER, [PP, #0xbf0]
    //     0x41d4fc: ldur         lr, [fp, #-0x18]
    //     0x41d500: stp          lr, BARRIER, [SP]
    // 0x41d504: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x41d504: bl           0x27c0c8
    //     0x41d508: str          r0, [SP]
    // 0x41d50c: r1 = pp[0x285]
    //     0x41d50c: add          r1, PP, #0x15, lsl #12
    //     0x41d510: ldr          r1, [r1, #0x270]
    // 0x41d514: r4 = pp[0xf2f]
    //     0x41d514: add          r4, PP, #0xf, lsl #12
    //     0x41d518: ldr          r4, [r4, #0xf20]
    // 0x41d51c: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventClick()
    //     0x41d51c: bl           0x3a8e60
    //     0x41d520: ldur         r0, [fp, #-8]
    // 0x41d524: LoadField: r1 = r0->field_b
    //     0x41d524: ldur         r1, [r0, #0xb]
    //     0x41d528: add          r1, r1, HEAP, lsl #32
    // 0x41d52c: LoadField: r0 = r1->field_f
    //     0x41d52c: ldur         r0, [r1, #0xf]
    //     0x41d530: add          r0, r0, HEAP, lsl #32
    // 0x41d534: LoadField: r1 = r0->field_b
    //     0x41d534: ldur         r1, [r0, #0xb]
    //     0x41d538: add          r1, r1, HEAP, lsl #32
    //     0x41d53c: cmp          r1, r22
    // 0x41d540: b.eq 0x41d594
    //     0x41d540: b.eq         0x41d594
    // 0x41d544: LoadField: r2 = r1->field_b
    //     0x41d544: ldur         r2, [r1, #0xb]
    //     0x41d548: add          r2, r2, HEAP, lsl #32
    // 0x41d54c: LoadField: r1 = r0->field_f
    //     0x41d54c: ldur         r1, [r0, #0xf]
    //     0x41d550: add          r1, r1, HEAP, lsl #32
    //     0x41d554: cmp          r1, r22
    // 0x41d558: b.eq 0x41d598
    //     0x41d558: b.eq         0x41d598
    //     0x41d55c: ldur         r0, [fp, #-0x10]
    //     0x41d560: sbfx         r3, r0, #1, #0x1f
    // 0x41d564: branchIfSmi(r0, 0x41d56c)
    //     0x41d564: tbz          r0, #0, 0x41d56c
    // 0x41d568: LoadField: r3 = r0->field_7
    //     0x41d568: ldur         r3, [r0, #7]
    // 0x41d56c: BARRIER = r1
    //     0x41d56c: mov          BARRIER, r1
    // 0x41d570: r1 = r2
    //     0x41d570: mov          r1, r2
    // 0x41d574: r2 = BARRIER
    //     0x41d574: mov          r2, BARRIER
    // 0x41d578: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::betFruit()
    //     0x41d578: bl           0x41d59c
    // 0x41d57c: r0 = NULL
    //     0x41d57c: mov          r0, NULL
    // 0x41d580: SP = fp
    //     0x41d580: mov          SP, fp
    // 0x41d584: LeaveFrame
    //     0x41d584: ldp          fp, lr, [SP], #0x10
    // 0x41d588: ret
    //     0x41d588: ret          
    // 0x41d58c: r0 = call 0x61fa28
    //     0x41d58c: bl           0x61fa28
    // 0x41d590: b 0x41d49c
    //     0x41d590: b            0x41d49c
    // 0x41d594: r0 = call 0x61ffd0
    //     0x41d594: bl           0x61ffd0
    // 0x41d598: r0 = call 0x61ffd0
    //     0x41d598: bl           0x61ffd0
  }

  _anon_closure() {
    // ** addr: 0x41ee98, size: 0x78
    // 0x41ee98: EnterFrame
    //     0x41ee98: stp          fp, lr, [SP, #-0x10]!
    //     0x41ee9c: mov          fp, SP
    // 0x41eea0: AllocStack(0x10)
    //     0x41eea0: sub          SP, SP, #0x10
    //     0x41eea4: stur         NULL, [fp, #-8]
    //     0x41eea8: mov          r0, #0
    //     0x41eeac: add          r1, fp, r0, sxtw #2
    // 0x41eeb0: LoadField: r1 = r1->field_10
    //     0x41eeb0: ldr          r1, [r1, #0x10]
    // 0x41eeb4: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x41eeb4: ldur         r2, [r1, #0x17]
    //     0x41eeb8: add          r2, r2, HEAP, lsl #32
    //     0x41eebc: stur         r2, [fp, #-0x10]
    // 0x41eec0: CheckStackOverflow
    //     0x41eec0: ldr          BARRIER, [THR, #0x38]
    //     0x41eec4: cmp          SP, BARRIER
    //     0x41eec8: b.ls         0x41ef04
    // 0x41eecc: r0 = pp[0x5838]
    //     0x41eecc: ldr          r0, [PP, #0x5838]
    // 0x41eed0: r0 = call 0x2b16e4
    //     0x41eed0: bl           0x2b16e4
    //     0x41eed4: ldur         r0, [fp, #-0x10]
    // 0x41eed8: LoadField: r1 = r0->field_f
    //     0x41eed8: ldur         r1, [r0, #0xf]
    //     0x41eedc: add          r1, r1, HEAP, lsl #32
    // 0x41eee0: LoadField: r0 = r1->field_b
    //     0x41eee0: ldur         r0, [r1, #0xb]
    //     0x41eee4: add          r0, r0, HEAP, lsl #32
    //     0x41eee8: cmp          r0, r22
    // 0x41eeec: b.eq 0x41ef0c
    //     0x41eeec: b.eq         0x41ef0c
    // 0x41eef0: LoadField: r1 = r0->field_b
    //     0x41eef0: ldur         r1, [r0, #0xb]
    //     0x41eef4: add          r1, r1, HEAP, lsl #32
    // 0x41eef8: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::release()
    //     0x41eef8: bl           0x41a46c
    //     0x41eefc: add          r0, NULL, #0x20
    // 0x41ef00: b 0x2b16b8
    //     0x41ef00: b            0x2b16b8
    // 0x41ef04: r0 = call 0x61fa28
    //     0x41ef04: bl           0x61fa28
    // 0x41ef08: b 0x41eecc
    //     0x41ef08: b            0x41eecc
    // 0x41ef0c: r0 = call 0x61ffd0
    //     0x41ef0c: bl           0x61ffd0
  }

  _anon_closure() {
    // ** addr: 0x41ef10, size: 0x1bc
    // 0x41ef10: EnterFrame
    //     0x41ef10: stp          fp, lr, [SP, #-0x10]!
    //     0x41ef14: mov          fp, SP
    // 0x41ef18: AllocStack(0x28)
    //     0x41ef18: sub          SP, SP, #0x28
    //     0x41ef1c: ldr          r0, [fp, #0x20]
    // 0x41ef20: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x41ef20: ldur         r1, [r0, #0x17]
    //     0x41ef24: add          r1, r1, HEAP, lsl #32
    //     0x41ef28: stur         r1, [fp, #-8]
    // 0x41ef2c: CheckStackOverflow
    //     0x41ef2c: ldr          BARRIER, [THR, #0x38]
    //     0x41ef30: cmp          SP, BARRIER
    //     0x41ef34: b.ls         0x41f0c0
    //     0x41ef38: ldr          r0, [fp, #0x10]
    //     0x41ef3c: sbfx         r2, r0, #1, #0x1f
    // 0x41ef40: branchIfSmi(r0, 0x41ef48)
    //     0x41ef40: tbz          r0, #0, 0x41ef48
    // 0x41ef44: LoadField: r2 = r0->field_7
    //     0x41ef44: ldur         r2, [r0, #7]
    //     0x41ef48: cmp          r2, #4
    // 0x41ef4c: b.ne 0x41f0a4
    //     0x41ef4c: b.ne         0x41f0a4
    // 0x41ef50: r0 = call 0x3a142c
    //     0x41ef50: bl           0x3a142c
    // 0x41ef54: r1 = r0
    //     0x41ef54: mov          r1, r0
    // 0x41ef58: r0 = pp[0x1b5]
    //     0x41ef58: add          r0, PP, #0x15, lsl #12
    //     0x41ef5c: ldr          r0, [r0, #0x1a0]
    //     0x41ef60: stur         r1, [fp, #-0x10]
    // 0x41ef64: StoreField: r1->field_b = r0
    //     0x41ef64: stur         r0, [r1, #0xb]
    // 0x41ef68: r0 = pp[0x17f]
    //     0x41ef68: add          r0, PP, #0xf, lsl #12
    //     0x41ef6c: ldr          r0, [r0, #0x170]
    // 0x41ef70: StoreField: r1->field_f = r0
    //     0x41ef70: stur         r0, [r1, #0xf]
    // 0x41ef74: r0 = pp[0x1bd]
    //     0x41ef74: add          r0, PP, #0x15, lsl #12
    //     0x41ef78: ldr          r0, [r0, #0x1a8]
    // 0x41ef7c: ArrayStore: r1[0] = r0  ; List_8
    //     0x41ef7c: stur         r0, [r1, #0x17]
    // 0x41ef80: r0 = call 0x396460
    //     0x41ef80: bl           0x396460
    // 0x41ef84: r2 = r0
    //     0x41ef84: mov          r2, r0
    // 0x41ef88: r0 = pp[0xaae]
    //     0x41ef88: add          r0, PP, #0xe, lsl #12
    //     0x41ef8c: ldr          r0, [r0, #0xaa0]
    //     0x41ef90: stur         r2, [fp, #-0x18]
    // 0x41ef94: StoreField: r2->field_f = r0
    //     0x41ef94: stur         r0, [r2, #0xf]
    //     0x41ef98: ldur         r1, [fp, #-0x10]
    // 0x41ef9c: StoreField: r2->field_b = r1
    //     0x41ef9c: stur         r1, [r2, #0xb]
    //     0x41efa0: ldur         r1, [fp, #-8]
    // 0x41efa4: LoadField: r3 = r1->field_f
    //     0x41efa4: ldur         r3, [r1, #0xf]
    //     0x41efa8: add          r3, r3, HEAP, lsl #32
    // 0x41efac: LoadField: r1 = r3->field_b
    //     0x41efac: ldur         r1, [r3, #0xb]
    //     0x41efb0: add          r1, r1, HEAP, lsl #32
    //     0x41efb4: cmp          r1, r22
    // 0x41efb8: b.eq 0x41f0c8
    //     0x41efb8: b.eq         0x41f0c8
    // 0x41efbc: LoadField: r3 = r1->field_b
    //     0x41efbc: ldur         r3, [r1, #0xb]
    //     0x41efc0: add          r3, r3, HEAP, lsl #32
    // 0x41efc4: LoadField: r4 = r3->field_5f
    //     0x41efc4: ldur         r4, [r3, #0x5f]
    //     0x41efc8: add          r4, r4, HEAP, lsl #32
    //     0x41efcc: stur         r4, [fp, #-0x10]
    // 0x41efd0: r1 = pp[0x6050]
    //     0x41efd0: ldr          r1, [PP, #0x6050]
    // 0x41efd4: d0 = pp[0x6098]
    //     0x41efd4: ldr          d0, [PP, #0x6098]
    // 0x41efd8: r0 = soul_flutter_international$res$styles_TextStyles::fontDINCondensedBold()
    //     0x41efd8: bl           0x3a86fc
    //     0x41efdc: stur         r0, [fp, #-0x20]
    // 0x41efe0: r0 = call 0x393bf8
    //     0x41efe0: bl           0x393bf8
    // 0x41efe4: r1 = r0
    //     0x41efe4: mov          r1, r0
    //     0x41efe8: ldur         r0, [fp, #-0x10]
    //     0x41efec: stur         r1, [fp, #-0x28]
    // 0x41eff0: StoreField: r1->field_b = r0
    //     0x41eff0: stur         r0, [r1, #0xb]
    //     0x41eff4: ldur         r0, [fp, #-0x20]
    // 0x41eff8: StoreField: r1->field_13 = r0
    //     0x41eff8: stur         r0, [r1, #0x13]
    // 0x41effc: r0 = call 0x396460
    //     0x41effc: bl           0x396460
    // 0x41f000: r3 = r0
    //     0x41f000: mov          r3, r0
    // 0x41f004: r0 = pp[0xaae]
    //     0x41f004: add          r0, PP, #0xe, lsl #12
    //     0x41f008: ldr          r0, [r0, #0xaa0]
    //     0x41f00c: stur         r3, [fp, #-0x10]
    // 0x41f010: StoreField: r3->field_f = r0
    //     0x41f010: stur         r0, [r3, #0xf]
    //     0x41f014: ldur         r0, [fp, #-0x28]
    // 0x41f018: StoreField: r3->field_b = r0
    //     0x41f018: stur         r0, [r3, #0xb]
    // 0x41f01c: r1 = NULL
    //     0x41f01c: mov          r1, NULL
    //     0x41f020: mov          r2, #4
    // 0x41f024: r0 = call 0x61f920
    //     0x41f024: bl           0x61f920
    // 0x41f028: r2 = r0
    //     0x41f028: mov          r2, r0
    //     0x41f02c: ldur         r0, [fp, #-0x18]
    //     0x41f030: stur         r2, [fp, #-0x20]
    // 0x41f034: StoreField: r2->field_f = r0
    //     0x41f034: stur         r0, [r2, #0xf]
    //     0x41f038: ldur         r0, [fp, #-0x10]
    // 0x41f03c: StoreField: r2->field_13 = r0
    //     0x41f03c: stur         r0, [r2, #0x13]
    // 0x41f040: r1 = pp[0x5c58]
    //     0x41f040: ldr          r1, [PP, #0x5c58]
    // 0x41f044: r0 = call 0x61e854
    //     0x41f044: bl           0x61e854
    // 0x41f048: r1 = r0
    //     0x41f048: mov          r1, r0
    //     0x41f04c: ldur         r0, [fp, #-0x20]
    //     0x41f050: stur         r1, [fp, #-0x10]
    // 0x41f054: StoreField: r1->field_f = r0
    //     0x41f054: stur         r0, [r1, #0xf]
    //     0x41f058: mov          r0, #4
    // 0x41f05c: StoreField: r1->field_b = r0
    //     0x41f05c: stur         r0, [r1, #0xb]
    // 0x41f060: r0 = call 0x39e6f4
    //     0x41f060: bl           0x39e6f4
    // 0x41f064: r1 = r0
    //     0x41f064: mov          r1, r0
    // 0x41f068: r0 = pp[0xf0e]
    //     0x41f068: add          r0, PP, #0xe, lsl #12
    //     0x41f06c: ldr          r0, [r0, #0xf00]
    // 0x41f070: StoreField: r1->field_f = r0
    //     0x41f070: stur         r0, [r1, #0xf]
    // 0x41f074: r0 = pp[0xf16]
    //     0x41f074: add          r0, PP, #0xe, lsl #12
    //     0x41f078: ldr          r0, [r0, #0xf08]
    // 0x41f07c: ArrayStore: r1[0] = r0  ; List_8
    //     0x41f07c: stur         r0, [r1, #0x17]
    // 0x41f080: r0 = pp[0xf1e]
    //     0x41f080: add          r0, PP, #0xe, lsl #12
    //     0x41f084: ldr          r0, [r0, #0xf10]
    // 0x41f088: StoreField: r1->field_1b = r0
    //     0x41f088: stur         r0, [r1, #0x1b]
    //     0x41f08c: ldur         r0, [fp, #-0x10]
    // 0x41f090: StoreField: r1->field_b = r0
    //     0x41f090: stur         r0, [r1, #0xb]
    // 0x41f094: r0 = r1
    //     0x41f094: mov          r0, r1
    // 0x41f098: SP = fp
    //     0x41f098: mov          SP, fp
    // 0x41f09c: LeaveFrame
    //     0x41f09c: ldp          fp, lr, [SP], #0x10
    // 0x41f0a0: ret
    //     0x41f0a0: ret          
    // 0x41f0a4: LoadField: r0 = r1->field_f
    //     0x41f0a4: ldur         r0, [r1, #0xf]
    //     0x41f0a8: add          r0, r0, HEAP, lsl #32
    // 0x41f0ac: r1 = r0
    //     0x41f0ac: mov          r1, r0
    // 0x41f0b0: r0 = soul_flutter_international$biz$game$widget$game_fruit_land__GameFruitLandState::_buildFruitItem()
    //     0x41f0b0: bl           0x41f0cc
    // 0x41f0b4: SP = fp
    //     0x41f0b4: mov          SP, fp
    // 0x41f0b8: LeaveFrame
    //     0x41f0b8: ldp          fp, lr, [SP], #0x10
    // 0x41f0bc: ret
    //     0x41f0bc: ret          
    // 0x41f0c0: r0 = call 0x61fa28
    //     0x41f0c0: bl           0x61fa28
    // 0x41f0c4: b 0x41ef38
    //     0x41f0c4: b            0x41ef38
    // 0x41f0c8: r0 = call 0x61ffd0
    //     0x41f0c8: bl           0x61ffd0
  }

  _buildFruitItem() {
    // ** addr: 0x41f0cc, size: 0x8a8
    // 0x41f0cc: EnterFrame
    //     0x41f0cc: stp          fp, lr, [SP, #-0x10]!
    //     0x41f0d0: mov          fp, SP
    // 0x41f0d4: AllocStack(0x68)
    //     0x41f0d4: sub          SP, SP, #0x68
    //     0x41f0d8: stur         r1, [fp, #-8]
    //     0x41f0dc: stur         r2, [fp, #-0x10]
    // 0x41f0e0: CheckStackOverflow
    //     0x41f0e0: ldr          BARRIER, [THR, #0x38]
    //     0x41f0e4: cmp          SP, BARRIER
    //     0x41f0e8: b.ls         0x41f94c
    //     0x41f0ec: mov          r1, #2
    // 0x41f0f0: r0 = call 0x61e890
    //     0x41f0f0: bl           0x61e890
    // 0x41f0f4: r4 = r0
    //     0x41f0f4: mov          r4, r0
    //     0x41f0f8: ldur         r3, [fp, #-8]
    //     0x41f0fc: stur         r4, [fp, #-0x20]
    // 0x41f100: StoreField: r4->field_f = r3
    //     0x41f100: stur         r3, [r4, #0xf]
    //     0x41f104: ldur         r2, [fp, #-0x10]
    //     0x41f108: sbfiz        r0, r2, #1, #0x1f
    //     0x41f10c: cmp          r2, r0, asr #1
    // 0x41f110: b.eq 0x41f11c
    //     0x41f110: b.eq         0x41f11c
    // 0x41f114: r0 = call 0x61fba8
    //     0x41f114: bl           0x61fba8
    // 0x41f118: StoreField: r0->field_7 = r2
    //     0x41f118: stur         r2, [r0, #7]
    // 0x41f11c: StoreField: r4->field_13 = r0
    //     0x41f11c: stur         r0, [r4, #0x13]
    // 0x41f120: LoadField: r0 = r3->field_b
    //     0x41f120: ldur         r0, [r3, #0xb]
    //     0x41f124: add          r0, r0, HEAP, lsl #32
    //     0x41f128: cmp          r0, r22
    // 0x41f12c: b.eq 0x41f954
    //     0x41f12c: b.eq         0x41f954
    // 0x41f130: LoadField: r5 = r0->field_b
    //     0x41f130: ldur         r5, [r0, #0xb]
    //     0x41f134: add          r5, r5, HEAP, lsl #32
    // 0x41f138: LoadField: r0 = r5->field_53
    //     0x41f138: ldur         r0, [r5, #0x53]
    //     0x41f13c: add          r0, r0, HEAP, lsl #32
    // 0x41f140: LoadField: r6 = r0->field_7
    //     0x41f140: ldur         r6, [r0, #7]
    //     0x41f144: cmp          r6, #1
    // 0x41f148: b.gt 0x41f170
    //     0x41f148: b.gt         0x41f170
    //     0x41f14c: sbfiz        r0, r6, #1, #0x1f
    //     0x41f150: cmp          r6, r0, asr #1
    // 0x41f154: b.eq 0x41f160
    //     0x41f154: b.eq         0x41f160
    // 0x41f158: r0 = call 0x61fba8
    //     0x41f158: bl           0x61fba8
    // 0x41f15c: StoreField: r0->field_7 = r6
    //     0x41f15c: stur         r6, [r0, #7]
    //     0x41f160: cmp          r0, #2
    // 0x41f164: b.ne 0x41f194
    //     0x41f164: b.ne         0x41f194
    // 0x41f168: LoadField: r0 = r5->field_43
    //     0x41f168: ldur         r0, [r5, #0x43]
    // 0x41f16c: b 0x41f198
    //     0x41f16c: b            0x41f198
    //     0x41f170: sbfiz        r0, r6, #1, #0x1f
    //     0x41f174: cmp          r6, r0, asr #1
    // 0x41f178: b.eq 0x41f184
    //     0x41f178: b.eq         0x41f184
    // 0x41f17c: r0 = call 0x61fba8
    //     0x41f17c: bl           0x61fba8
    // 0x41f180: StoreField: r0->field_7 = r6
    //     0x41f180: stur         r6, [r0, #7]
    //     0x41f184: cmp          r0, #4
    // 0x41f188: b.ne 0x41f194
    //     0x41f188: b.ne         0x41f194
    // 0x41f18c: LoadField: r0 = r5->field_4b
    //     0x41f18c: ldur         r0, [r5, #0x4b]
    // 0x41f190: b 0x41f198
    //     0x41f190: b            0x41f198
    //     0x41f194: mov          r0, #-1
    //     0x41f198: cmp          r0, r2
    //     0x41f19c: add          BARRIER, NULL, #0x20
    //     0x41f1a0: add          r17, NULL, #0x30
    //     0x41f1a4: csel         r6, BARRIER, r17, eq
    // 0x41f1a8: r1 = r5
    //     0x41f1a8: mov          r1, r5
    //     0x41f1ac: stur         r6, [fp, #-0x18]
    // 0x41f1b0: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::getCurrentBetItem()
    //     0x41f1b0: bl           0x41faec
    // 0x41f1b4: r3 = r0
    //     0x41f1b4: mov          r3, r0
    //     0x41f1b8: ldur         r0, [fp, #-8]
    //     0x41f1bc: stur         r3, [fp, #-0x28]
    // 0x41f1c0: LoadField: r1 = r0->field_b
    //     0x41f1c0: ldur         r1, [r0, #0xb]
    //     0x41f1c4: add          r1, r1, HEAP, lsl #32
    //     0x41f1c8: cmp          r1, r22
    // 0x41f1cc: b.eq 0x41f958
    //     0x41f1cc: b.eq         0x41f958
    // 0x41f1d0: LoadField: r0 = r1->field_b
    //     0x41f1d0: ldur         r0, [r1, #0xb]
    //     0x41f1d4: add          r0, r0, HEAP, lsl #32
    //     0x41f1d8: ldur         r4, [fp, #-0x20]
    // 0x41f1dc: LoadField: r1 = r4->field_13
    //     0x41f1dc: ldur         r1, [r4, #0x13]
    //     0x41f1e0: add          r1, r1, HEAP, lsl #32
    //     0x41f1e4: sbfx         r2, r1, #1, #0x1f
    // 0x41f1e8: branchIfSmi(r1, 0x41f1f0)
    //     0x41f1e8: tbz          r1, #0, 0x41f1f0
    // 0x41f1ec: LoadField: r2 = r1->field_7
    //     0x41f1ec: ldur         r2, [r1, #7]
    // 0x41f1f0: r1 = r0
    //     0x41f1f0: mov          r1, r0
    // 0x41f1f4: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::getItemBetCoin()
    //     0x41f1f4: bl           0x41f974
    //     0x41f1f8: stur         r0, [fp, #-8]
    // 0x41f1fc: r0 = call 0x2b8e80
    //     0x41f1fc: bl           0x2b8e80
    // 0x41f200: d0 = pp[0xb90]
    //     0x41f200: ldr          d0, [PP, #0xb90]
    //     0x41f204: stur         r0, [fp, #-0x30]
    // 0x41f208: StoreField: r0->field_7 = d0
    //     0x41f208: stur         d0, [r0, #7]
    // 0x41f20c: StoreField: r0->field_f = d0
    //     0x41f20c: stur         d0, [r0, #0xf]
    // 0x41f210: ArrayStore: r0[0] = d0  ; List_8
    //     0x41f210: stur         d0, [r0, #0x17]
    // 0x41f214: StoreField: r0->field_1f = d0
    //     0x41f214: stur         d0, [r0, #0x1f]
    //     0x41f218: ldur         r1, [fp, #-0x18]
    //     0x41f21c: tbnz         r1, #4, 0x41f27c
    // 0x41f220: r0 = call 0x31d844
    //     0x41f220: bl           0x31d844
    // 0x41f224: r1 = r0
    //     0x41f224: mov          r1, r0
    // 0x41f228: r0 = pp[0x6310]
    //     0x41f228: ldr          r0, [PP, #0x6310]
    // 0x41f22c: StoreField: r1->field_27 = r0
    //     0x41f22c: stur         r0, [r1, #0x27]
    //     0x41f230: fmov         d0, #1.00000000
    // 0x41f234: StoreField: r1->field_7 = d0
    //     0x41f234: stur         d0, [r1, #7]
    // 0x41f238: StoreField: r1->field_f = d0
    //     0x41f238: stur         d0, [r1, #0xf]
    // 0x41f23c: d1 = pp[0x1c5]
    //     0x41f23c: add          r17, PP, #0x15, lsl #12
    //     0x41f240: ldr          d1, [r17, #0x1b0]
    // 0x41f244: ArrayStore: r1[0] = d1  ; List_8
    //     0x41f244: stur         d1, [r1, #0x17]
    // 0x41f248: d1 = pp[0x2c4]
    //     0x41f248: add          r17, PP, #0xc, lsl #12
    //     0x41f24c: ldr          d1, [r17, #0x2b8]
    // 0x41f250: StoreField: r1->field_1f = d1
    //     0x41f250: stur         d1, [r1, #0x1f]
    // 0x41f254: BARRIER = pp[0x3b2]
    //     0x41f254: add          BARRIER, PP, #0x12, lsl #12
    //     0x41f258: ldr          BARRIER, [BARRIER, #0x3a0]
    //     0x41f25c: str          BARRIER, [SP]
    // 0x41f260: r2 = r1
    //     0x41f260: mov          r2, r1
    // 0x41f264: r1 = NULL
    //     0x41f264: mov          r1, NULL
    // 0x41f268: r4 = pp[0x827]
    //     0x41f268: add          r4, PP, #0xf, lsl #12
    //     0x41f26c: ldr          r4, [r4, #0x818]
    // 0x41f270: r0 = flutter$src$painting$box_border_Border::factory_ctor_all()
    //     0x41f270: bl           0x391e08
    // 0x41f274: r1 = r0
    //     0x41f274: mov          r1, r0
    // 0x41f278: b 0x41f280
    //     0x41f278: b            0x41f280
    // 0x41f27c: r1 = NULL
    //     0x41f27c: mov          r1, NULL
    //     0x41f280: ldur         r0, [fp, #-0x18]
    //     0x41f284: stur         r1, [fp, #-0x38]
    //     0x41f288: tbnz         r0, #4, 0x41f2c4
    // 0x41f28c: r0 = call 0x352b04
    //     0x41f28c: bl           0x352b04
    //     0x41f290: fmov         d0, #10.00000000
    //     0x41f294: stur         r0, [fp, #-0x18]
    // 0x41f298: StoreField: r0->field_7 = d0
    //     0x41f298: stur         d0, [r0, #7]
    // 0x41f29c: StoreField: r0->field_f = d0
    //     0x41f29c: stur         d0, [r0, #0xf]
    // 0x41f2a0: r0 = call 0x392f28
    //     0x41f2a0: bl           0x392f28
    // 0x41f2a4: r1 = r0
    //     0x41f2a4: mov          r1, r0
    //     0x41f2a8: ldur         r0, [fp, #-0x18]
    // 0x41f2ac: StoreField: r1->field_7 = r0
    //     0x41f2ac: stur         r0, [r1, #7]
    // 0x41f2b0: StoreField: r1->field_b = r0
    //     0x41f2b0: stur         r0, [r1, #0xb]
    // 0x41f2b4: StoreField: r1->field_f = r0
    //     0x41f2b4: stur         r0, [r1, #0xf]
    // 0x41f2b8: StoreField: r1->field_13 = r0
    //     0x41f2b8: stur         r0, [r1, #0x13]
    // 0x41f2bc: r3 = r1
    //     0x41f2bc: mov          r3, r1
    // 0x41f2c0: b 0x41f2c8
    //     0x41f2c0: b            0x41f2c8
    // 0x41f2c4: r3 = NULL
    //     0x41f2c4: mov          r3, NULL
    //     0x41f2c8: ldur         r2, [fp, #-0x28]
    //     0x41f2cc: ldur         r0, [fp, #-0x38]
    //     0x41f2d0: stur         r3, [fp, #-0x18]
    // 0x41f2d4: r1 = pp[0xede]
    //     0x41f2d4: add          r1, PP, #0xe, lsl #12
    //     0x41f2d8: ldr          r1, [r1, #0xed0]
    // 0x41f2dc: r0 = call 0x3b5478
    //     0x41f2dc: bl           0x3b5478
    // 0x41f2e0: r1 = r0
    //     0x41f2e0: mov          r1, r0
    // 0x41f2e4: r0 = pp[0x1cd]
    //     0x41f2e4: add          r0, PP, #0x15, lsl #12
    //     0x41f2e8: ldr          r0, [r0, #0x1b8]
    //     0x41f2ec: stur         r1, [fp, #-0x40]
    // 0x41f2f0: StoreField: r1->field_b = r0
    //     0x41f2f0: stur         r0, [r1, #0xb]
    // 0x41f2f4: r0 = call 0x3b546c
    //     0x41f2f4: bl           0x3b546c
    // 0x41f2f8: r1 = r0
    //     0x41f2f8: mov          r1, r0
    //     0x41f2fc: ldur         r0, [fp, #-0x40]
    //     0x41f300: stur         r1, [fp, #-0x48]
    // 0x41f304: StoreField: r1->field_7 = r0
    //     0x41f304: stur         r0, [r1, #7]
    // 0x41f308: r0 = pp[0x1ef]
    //     0x41f308: add          r0, PP, #0xf, lsl #12
    //     0x41f30c: ldr          r0, [r0, #0x1e0]
    // 0x41f310: StoreField: r1->field_13 = r0
    //     0x41f310: stur         r0, [r1, #0x13]
    // 0x41f314: r0 = pp[0xaae]
    //     0x41f314: add          r0, PP, #0xe, lsl #12
    //     0x41f318: ldr          r0, [r0, #0xaa0]
    // 0x41f31c: ArrayStore: r1[0] = r0  ; List_8
    //     0x41f31c: stur         r0, [r1, #0x17]
    // 0x41f320: r0 = pp[0xef6]
    //     0x41f320: add          r0, PP, #0xe, lsl #12
    //     0x41f324: ldr          r0, [r0, #0xee8]
    // 0x41f328: StoreField: r1->field_1f = r0
    //     0x41f328: stur         r0, [r1, #0x1f]
    //     0x41f32c: add          r0, NULL, #0x30
    // 0x41f330: StoreField: r1->field_23 = r0
    //     0x41f330: stur         r0, [r1, #0x23]
    //     0x41f334: fmov         d0, #1.00000000
    // 0x41f338: StoreField: r1->field_27 = d0
    //     0x41f338: stur         d0, [r1, #0x27]
    // 0x41f33c: StoreField: r1->field_2f = d0
    //     0x41f33c: stur         d0, [r1, #0x2f]
    // 0x41f340: r2 = pp[0xefe]
    //     0x41f340: add          r2, PP, #0xe, lsl #12
    //     0x41f344: ldr          r2, [r2, #0xef0]
    // 0x41f348: StoreField: r1->field_37 = r2
    //     0x41f348: stur         r2, [r1, #0x37]
    // 0x41f34c: StoreField: r1->field_3b = r0
    //     0x41f34c: stur         r0, [r1, #0x3b]
    // 0x41f350: StoreField: r1->field_3f = r0
    //     0x41f350: stur         r0, [r1, #0x3f]
    // 0x41f354: r0 = call 0x391dd8
    //     0x41f354: bl           0x391dd8
    // 0x41f358: r1 = r0
    //     0x41f358: mov          r1, r0
    //     0x41f35c: ldur         r0, [fp, #-0x48]
    //     0x41f360: stur         r1, [fp, #-0x40]
    // 0x41f364: StoreField: r1->field_b = r0
    //     0x41f364: stur         r0, [r1, #0xb]
    //     0x41f368: ldur         r0, [fp, #-0x38]
    // 0x41f36c: StoreField: r1->field_f = r0
    //     0x41f36c: stur         r0, [r1, #0xf]
    //     0x41f370: ldur         r0, [fp, #-0x18]
    // 0x41f374: StoreField: r1->field_13 = r0
    //     0x41f374: stur         r0, [r1, #0x13]
    // 0x41f378: r0 = pp[0xb86]
    //     0x41f378: add          r0, PP, #0xe, lsl #12
    //     0x41f37c: ldr          r0, [r0, #0xb78]
    // 0x41f380: StoreField: r1->field_23 = r0
    //     0x41f380: stur         r0, [r1, #0x23]
    // 0x41f384: r0 = call 0x391a04
    //     0x41f384: bl           0x391a04
    //     0x41f388: stur         r0, [fp, #-0x18]
    //     0x41f38c: ldur         BARRIER, [fp, #-0x30]
    //     0x41f390: ldur         lr, [fp, #-0x40]
    //     0x41f394: stp          lr, BARRIER, [SP]
    // 0x41f398: r1 = r0
    //     0x41f398: mov          r1, r0
    // 0x41f39c: r4 = pp[0x1d5]
    //     0x41f39c: add          r4, PP, #0x15, lsl #12
    //     0x41f3a0: ldr          r4, [r4, #0x1c0]
    // 0x41f3a4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x41f3a4: bl           0x391490
    // 0x41f3a8: r0 = call 0x2b8e80
    //     0x41f3a8: bl           0x2b8e80
    // 0x41f3ac: d0 = pp[0xb90]
    //     0x41f3ac: ldr          d0, [PP, #0xb90]
    //     0x41f3b0: stur         r0, [fp, #-0x38]
    // 0x41f3b4: StoreField: r0->field_7 = d0
    //     0x41f3b4: stur         d0, [r0, #7]
    // 0x41f3b8: StoreField: r0->field_f = d0
    //     0x41f3b8: stur         d0, [r0, #0xf]
    // 0x41f3bc: ArrayStore: r0[0] = d0  ; List_8
    //     0x41f3bc: stur         d0, [r0, #0x17]
    // 0x41f3c0: StoreField: r0->field_1f = d0
    //     0x41f3c0: stur         d0, [r0, #0x1f]
    //     0x41f3c4: ldur         r1, [fp, #-0x28]
    //     0x41f3c8: cmp          r1, r22
    // 0x41f3cc: b.ne 0x41f3d8
    //     0x41f3cc: b.ne         0x41f3d8
    // 0x41f3d0: r2 = NULL
    //     0x41f3d0: mov          r2, NULL
    // 0x41f3d4: b 0x41f3ec
    //     0x41f3d4: b            0x41f3ec
    // 0x41f3d8: LoadField: r2 = r1->field_f
    //     0x41f3d8: ldur         r2, [r1, #0xf]
    //     0x41f3dc: add          r2, r2, HEAP, lsl #32
    // 0x41f3e0: BARRIER = pp[0x40]
    //     0x41f3e0: ldr          BARRIER, [PP, #0x40]
    //     0x41f3e4: cmp          r2, r16
    // 0x41f3e8: b.eq 0x41f95c
    //     0x41f3e8: b.eq         0x41f95c
    //     0x41f3ec: cmp          r2, r22
    // 0x41f3f0: b.ne 0x41f3f8
    //     0x41f3f0: b.ne         0x41f3f8
    // 0x41f3f4: r2 = pp[0x148]
    //     0x41f3f4: ldr          r2, [PP, #0x148]
    //     0x41f3f8: stur         r2, [fp, #-0x30]
    // 0x41f3fc: r0 = call 0x3b6694
    //     0x41f3fc: bl           0x3b6694
    // 0x41f400: r1 = r0
    //     0x41f400: mov          r1, r0
    //     0x41f404: ldur         r0, [fp, #-0x30]
    //     0x41f408: stur         r1, [fp, #-0x40]
    // 0x41f40c: StoreField: r1->field_b = r0
    //     0x41f40c: stur         r0, [r1, #0xb]
    // 0x41f410: r0 = pp[0x360]
    //     0x41f410: add          r0, PP, #0x10, lsl #12
    //     0x41f414: ldr          r0, [r0, #0x350]
    // 0x41f418: StoreField: r1->field_f = r0
    //     0x41f418: stur         r0, [r1, #0xf]
    // 0x41f41c: StoreField: r1->field_13 = r0
    //     0x41f41c: stur         r0, [r1, #0x13]
    //     0x41f420: add          r0, NULL, #0x30
    // 0x41f424: StoreField: r1->field_1b = r0
    //     0x41f424: stur         r0, [r1, #0x1b]
    // 0x41f428: StoreField: r1->field_1f = r0
    //     0x41f428: stur         r0, [r1, #0x1f]
    // 0x41f42c: r0 = call 0x391c0c
    //     0x41f42c: bl           0x391c0c
    // 0x41f430: r1 = r0
    //     0x41f430: mov          r1, r0
    // 0x41f434: r0 = pp[0x1dd]
    //     0x41f434: add          r0, PP, #0x15, lsl #12
    //     0x41f438: ldr          r0, [r0, #0x1c8]
    //     0x41f43c: stur         r1, [fp, #-0x30]
    // 0x41f440: StoreField: r1->field_f = r0
    //     0x41f440: stur         r0, [r1, #0xf]
    //     0x41f444: ldur         r0, [fp, #-0x40]
    // 0x41f448: StoreField: r1->field_b = r0
    //     0x41f448: stur         r0, [r1, #0xb]
    //     0x41f44c: ldur         r0, [fp, #-0x28]
    //     0x41f450: cmp          r0, r22
    // 0x41f454: b.ne 0x41f460
    //     0x41f454: b.ne         0x41f460
    // 0x41f458: r2 = pp[0x148]
    //     0x41f458: ldr          r2, [PP, #0x148]
    // 0x41f45c: b 0x41f4d4
    //     0x41f45c: b            0x41f4d4
    // 0x41f460: LoadField: r2 = r0->field_7
    //     0x41f460: ldur         r2, [r0, #7]
    //     0x41f464: add          r2, r2, HEAP, lsl #32
    // 0x41f468: BARRIER = pp[0x40]
    //     0x41f468: ldr          BARRIER, [PP, #0x40]
    //     0x41f46c: cmp          r2, r16
    // 0x41f470: b.eq 0x41f968
    //     0x41f470: b.eq         0x41f968
    //     0x41f474: str          r2, [SP]
    // 0x41f478: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x41f478: bl           0x2ac0a0
    // 0x41f47c: r1 = NULL
    //     0x41f47c: mov          r1, NULL
    //     0x41f480: mov          r2, #2
    //     0x41f484: stur         r0, [fp, #-0x28]
    // 0x41f488: r0 = call 0x61f920
    //     0x41f488: bl           0x61f920
    // 0x41f48c: r2 = r0
    //     0x41f48c: mov          r2, r0
    //     0x41f490: ldur         r0, [fp, #-0x28]
    //     0x41f494: stur         r2, [fp, #-0x40]
    // 0x41f498: StoreField: r2->field_f = r0
    //     0x41f498: stur         r0, [r2, #0xf]
    // 0x41f49c: r1 = pp[0x868]
    //     0x41f49c: ldr          r1, [PP, #0x868]
    // 0x41f4a0: r0 = call 0x61e854
    //     0x41f4a0: bl           0x61e854
    // 0x41f4a4: r1 = r0
    //     0x41f4a4: mov          r1, r0
    //     0x41f4a8: ldur         r0, [fp, #-0x40]
    // 0x41f4ac: StoreField: r1->field_f = r0
    //     0x41f4ac: stur         r0, [r1, #0xf]
    //     0x41f4b0: mov          r0, #2
    // 0x41f4b4: StoreField: r1->field_b = r0
    //     0x41f4b4: stur         r0, [r1, #0xb]
    //     0x41f4b8: str          r1, [SP]
    // 0x41f4bc: r1 = pp[0x8dc]
    //     0x41f4bc: add          r1, PP, #0xc, lsl #12
    //     0x41f4c0: ldr          r1, [r1, #0x8d0]
    // 0x41f4c4: r4 = pp[0xf2f]
    //     0x41f4c4: add          r4, PP, #0xf, lsl #12
    //     0x41f4c8: ldr          r4, [r4, #0xf20]
    // 0x41f4cc: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x41f4cc: bl           0x3a1dcc
    // 0x41f4d0: r2 = r0
    //     0x41f4d0: mov          r2, r0
    //     0x41f4d4: ldur         r0, [fp, #-8]
    //     0x41f4d8: stur         r2, [fp, #-0x28]
    // 0x41f4dc: r1 = pp[0x6050]
    //     0x41f4dc: ldr          r1, [PP, #0x6050]
    // 0x41f4e0: r0 = soul_flutter_international$res$styles_TextStyles::commonContent()
    //     0x41f4e0: bl           0x3b7e50
    //     0x41f4e4: stur         r0, [fp, #-0x40]
    // 0x41f4e8: r0 = call 0x393bf8
    //     0x41f4e8: bl           0x393bf8
    // 0x41f4ec: r1 = r0
    //     0x41f4ec: mov          r1, r0
    //     0x41f4f0: ldur         r0, [fp, #-0x28]
    //     0x41f4f4: stur         r1, [fp, #-0x48]
    // 0x41f4f8: StoreField: r1->field_b = r0
    //     0x41f4f8: stur         r0, [r1, #0xb]
    //     0x41f4fc: ldur         r0, [fp, #-0x40]
    // 0x41f500: StoreField: r1->field_13 = r0
    //     0x41f500: stur         r0, [r1, #0x13]
    // 0x41f504: r0 = pp[0x23f]
    //     0x41f504: add          r0, PP, #0xf, lsl #12
    //     0x41f508: ldr          r0, [r0, #0x230]
    // 0x41f50c: StoreField: r1->field_2b = r0
    //     0x41f50c: stur         r0, [r1, #0x2b]
    //     0x41f510: mov          r2, #2
    // 0x41f514: StoreField: r1->field_37 = r2
    //     0x41f514: stur         r2, [r1, #0x37]
    // 0x41f518: r0 = call 0x391c0c
    //     0x41f518: bl           0x391c0c
    // 0x41f51c: r1 = r0
    //     0x41f51c: mov          r1, r0
    // 0x41f520: r0 = pp[0x1e5]
    //     0x41f520: add          r0, PP, #0x15, lsl #12
    //     0x41f524: ldr          r0, [r0, #0x1d0]
    //     0x41f528: stur         r1, [fp, #-0x40]
    // 0x41f52c: StoreField: r1->field_f = r0
    //     0x41f52c: stur         r0, [r1, #0xf]
    //     0x41f530: ldur         r0, [fp, #-0x48]
    // 0x41f534: StoreField: r1->field_b = r0
    //     0x41f534: stur         r0, [r1, #0xb]
    //     0x41f538: ldur         r0, [fp, #-8]
    //     0x41f53c: cmp          r0, r22
    // 0x41f540: b.ne 0x41f54c
    //     0x41f540: b.ne         0x41f54c
    // 0x41f544: r2 = NULL
    //     0x41f544: mov          r2, NULL
    // 0x41f548: b 0x41f580
    //     0x41f548: b            0x41f580
    // 0x41f54c: LoadField: r2 = r0->field_b
    //     0x41f54c: ldur         r2, [r0, #0xb]
    //     0x41f550: add          r2, r2, HEAP, lsl #32
    //     0x41f554: cmp          r2, r22
    // 0x41f558: b.eq 0x41f57c
    //     0x41f558: b.eq         0x41f57c
    //     0x41f55c: sbfx         r3, r2, #1, #0x1f
    // 0x41f560: branchIfSmi(r2, 0x41f568)
    //     0x41f560: tbz          r2, #0, 0x41f568
    // 0x41f564: LoadField: r3 = r2->field_7
    //     0x41f564: ldur         r3, [r2, #7]
    //     0x41f568: cmp          r3, #0
    //     0x41f56c: add          BARRIER, NULL, #0x20
    //     0x41f570: add          r17, NULL, #0x30
    //     0x41f574: csel         r2, BARRIER, r17, gt
    // 0x41f578: b 0x41f580
    //     0x41f578: b            0x41f580
    //     0x41f57c: add          r2, NULL, #0x30
    //     0x41f580: cmp          r2, r22
    // 0x41f584: b.ne 0x41f58c
    //     0x41f584: b.ne         0x41f58c
    //     0x41f588: add          r2, NULL, #0x30
    //     0x41f58c: stur         r2, [fp, #-0x28]
    // 0x41f590: r0 = call 0x3a142c
    //     0x41f590: bl           0x3a142c
    // 0x41f594: r1 = r0
    //     0x41f594: mov          r1, r0
    // 0x41f598: r0 = pp[0x257]
    //     0x41f598: add          r0, PP, #0xf, lsl #12
    //     0x41f59c: ldr          r0, [r0, #0x248]
    //     0x41f5a0: stur         r1, [fp, #-0x48]
    // 0x41f5a4: StoreField: r1->field_b = r0
    //     0x41f5a4: stur         r0, [r1, #0xb]
    // 0x41f5a8: r0 = pp[0x17f]
    //     0x41f5a8: add          r0, PP, #0xf, lsl #12
    //     0x41f5ac: ldr          r0, [r0, #0x170]
    // 0x41f5b0: StoreField: r1->field_f = r0
    //     0x41f5b0: stur         r0, [r1, #0xf]
    // 0x41f5b4: r0 = pp[0x1ed]
    //     0x41f5b4: add          r0, PP, #0x15, lsl #12
    //     0x41f5b8: ldr          r0, [r0, #0x1d8]
    // 0x41f5bc: StoreField: r1->field_13 = r0
    //     0x41f5bc: stur         r0, [r1, #0x13]
    // 0x41f5c0: ArrayStore: r1[0] = r0  ; List_8
    //     0x41f5c0: stur         r0, [r1, #0x17]
    // 0x41f5c4: r0 = call 0x391c0c
    //     0x41f5c4: bl           0x391c0c
    // 0x41f5c8: r1 = r0
    //     0x41f5c8: mov          r1, r0
    // 0x41f5cc: r0 = pp[0x1f5]
    //     0x41f5cc: add          r0, PP, #0x15, lsl #12
    //     0x41f5d0: ldr          r0, [r0, #0x1e0]
    //     0x41f5d4: stur         r1, [fp, #-0x50]
    // 0x41f5d8: StoreField: r1->field_f = r0
    //     0x41f5d8: stur         r0, [r1, #0xf]
    //     0x41f5dc: ldur         r0, [fp, #-0x48]
    // 0x41f5e0: StoreField: r1->field_b = r0
    //     0x41f5e0: stur         r0, [r1, #0xb]
    //     0x41f5e4: ldur         r0, [fp, #-8]
    //     0x41f5e8: cmp          r0, r22
    // 0x41f5ec: b.ne 0x41f5f8
    //     0x41f5ec: b.ne         0x41f5f8
    // 0x41f5f0: r5 = NULL
    //     0x41f5f0: mov          r5, NULL
    // 0x41f5f4: b 0x41f604
    //     0x41f5f4: b            0x41f604
    // 0x41f5f8: LoadField: r2 = r0->field_b
    //     0x41f5f8: ldur         r2, [r0, #0xb]
    //     0x41f5fc: add          r2, r2, HEAP, lsl #32
    // 0x41f600: r5 = r2
    //     0x41f600: mov          r5, r2
    //     0x41f604: ldur         r4, [fp, #-0x18]
    //     0x41f608: ldur         r3, [fp, #-0x30]
    //     0x41f60c: ldur         r0, [fp, #-0x40]
    //     0x41f610: ldur         r2, [fp, #-0x28]
    //     0x41f614: str          r5, [SP]
    // 0x41f618: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x41f618: bl           0x2ac0a0
    //     0x41f61c: stur         r0, [fp, #-8]
    // 0x41f620: r0 = call 0x31abec
    //     0x41f620: bl           0x31abec
    // 0x41f624: r1 = r0
    //     0x41f624: mov          r1, r0
    //     0x41f628: add          r0, NULL, #0x20
    //     0x41f62c: stur         r1, [fp, #-0x48]
    // 0x41f630: StoreField: r1->field_7 = r0
    //     0x41f630: stur         r0, [r1, #7]
    // 0x41f634: r0 = pp[0x6050]
    //     0x41f634: ldr          r0, [PP, #0x6050]
    // 0x41f638: StoreField: r1->field_b = r0
    //     0x41f638: stur         r0, [r1, #0xb]
    // 0x41f63c: r0 = pp[0x7598]
    //     0x41f63c: ldr          r0, [PP, #0x7598]
    // 0x41f640: StoreField: r1->field_1f = r0
    //     0x41f640: stur         r0, [r1, #0x1f]
    // 0x41f644: r0 = pp[0xe4e]
    //     0x41f644: add          r0, PP, #0xe, lsl #12
    //     0x41f648: ldr          r0, [r0, #0xe40]
    // 0x41f64c: StoreField: r1->field_23 = r0
    //     0x41f64c: stur         r0, [r1, #0x23]
    // 0x41f650: r0 = call 0x393bf8
    //     0x41f650: bl           0x393bf8
    // 0x41f654: r2 = r0
    //     0x41f654: mov          r2, r0
    //     0x41f658: ldur         r0, [fp, #-8]
    //     0x41f65c: stur         r2, [fp, #-0x58]
    // 0x41f660: StoreField: r2->field_b = r0
    //     0x41f660: stur         r0, [r2, #0xb]
    //     0x41f664: ldur         r0, [fp, #-0x48]
    // 0x41f668: StoreField: r2->field_13 = r0
    //     0x41f668: stur         r0, [r2, #0x13]
    // 0x41f66c: r0 = pp[0x23f]
    //     0x41f66c: add          r0, PP, #0xf, lsl #12
    //     0x41f670: ldr          r0, [r0, #0x230]
    // 0x41f674: StoreField: r2->field_2b = r0
    //     0x41f674: stur         r0, [r2, #0x2b]
    //     0x41f678: mov          r0, #2
    // 0x41f67c: StoreField: r2->field_37 = r0
    //     0x41f67c: stur         r0, [r2, #0x37]
    // 0x41f680: r1 = pp[0xade]
    //     0x41f680: add          r1, PP, #0xe, lsl #12
    //     0x41f684: ldr          r1, [r1, #0xad0]
    // 0x41f688: r0 = call 0x3a1420
    //     0x41f688: bl           0x3a1420
    // 0x41f68c: r3 = r0
    //     0x41f68c: mov          r3, r0
    //     0x41f690: mov          r0, #1
    //     0x41f694: stur         r3, [fp, #-8]
    // 0x41f698: StoreField: r3->field_13 = r0
    //     0x41f698: stur         r0, [r3, #0x13]
    // 0x41f69c: r0 = pp[0x960]
    //     0x41f69c: add          r0, PP, #0x10, lsl #12
    //     0x41f6a0: ldr          r0, [r0, #0x950]
    // 0x41f6a4: StoreField: r3->field_1b = r0
    //     0x41f6a4: stur         r0, [r3, #0x1b]
    //     0x41f6a8: ldur         r0, [fp, #-0x58]
    // 0x41f6ac: StoreField: r3->field_b = r0
    //     0x41f6ac: stur         r0, [r3, #0xb]
    // 0x41f6b0: r1 = NULL
    //     0x41f6b0: mov          r1, NULL
    //     0x41f6b4: mov          r2, #4
    // 0x41f6b8: r0 = call 0x61f920
    //     0x41f6b8: bl           0x61f920
    // 0x41f6bc: r2 = r0
    //     0x41f6bc: mov          r2, r0
    //     0x41f6c0: ldur         r0, [fp, #-0x50]
    //     0x41f6c4: stur         r2, [fp, #-0x48]
    // 0x41f6c8: StoreField: r2->field_f = r0
    //     0x41f6c8: stur         r0, [r2, #0xf]
    //     0x41f6cc: ldur         r0, [fp, #-8]
    // 0x41f6d0: StoreField: r2->field_13 = r0
    //     0x41f6d0: stur         r0, [r2, #0x13]
    // 0x41f6d4: r1 = pp[0x5c58]
    //     0x41f6d4: ldr          r1, [PP, #0x5c58]
    // 0x41f6d8: r0 = call 0x61e854
    //     0x41f6d8: bl           0x61e854
    // 0x41f6dc: r1 = r0
    //     0x41f6dc: mov          r1, r0
    //     0x41f6e0: ldur         r0, [fp, #-0x48]
    //     0x41f6e4: stur         r1, [fp, #-8]
    // 0x41f6e8: StoreField: r1->field_f = r0
    //     0x41f6e8: stur         r0, [r1, #0xf]
    //     0x41f6ec: mov          r2, #4
    // 0x41f6f0: StoreField: r1->field_b = r2
    //     0x41f6f0: stur         r2, [r1, #0xb]
    // 0x41f6f4: r0 = call 0x3a1414
    //     0x41f6f4: bl           0x3a1414
    // 0x41f6f8: r1 = r0
    //     0x41f6f8: mov          r1, r0
    // 0x41f6fc: r0 = pp[0x5140]
    //     0x41f6fc: ldr          r0, [PP, #0x5140]
    //     0x41f700: stur         r1, [fp, #-0x48]
    // 0x41f704: StoreField: r1->field_f = r0
    //     0x41f704: stur         r0, [r1, #0xf]
    // 0x41f708: r0 = pp[0xaee]
    //     0x41f708: add          r0, PP, #0xe, lsl #12
    //     0x41f70c: ldr          r0, [r0, #0xae0]
    // 0x41f710: StoreField: r1->field_13 = r0
    //     0x41f710: stur         r0, [r1, #0x13]
    // 0x41f714: r2 = pp[0xb16]
    //     0x41f714: add          r2, PP, #0xe, lsl #12
    //     0x41f718: ldr          r2, [r2, #0xb08]
    // 0x41f71c: ArrayStore: r1[0] = r2  ; List_8
    //     0x41f71c: stur         r2, [r1, #0x17]
    // 0x41f720: r2 = pp[0xb6e]
    //     0x41f720: add          r2, PP, #0xe, lsl #12
    //     0x41f724: ldr          r2, [r2, #0xb60]
    // 0x41f728: StoreField: r1->field_1b = r2
    //     0x41f728: stur         r2, [r1, #0x1b]
    // 0x41f72c: r3 = pp[0xb06]
    //     0x41f72c: add          r3, PP, #0xe, lsl #12
    //     0x41f730: ldr          r3, [r3, #0xaf8]
    // 0x41f734: StoreField: r1->field_23 = r3
    //     0x41f734: stur         r3, [r1, #0x23]
    // 0x41f738: r4 = pp[0xb2]
    //     0x41f738: add          r4, PP, #0xa, lsl #12
    //     0x41f73c: ldr          r4, [r4, #0xa8]
    // 0x41f740: StoreField: r1->field_2b = r4
    //     0x41f740: stur         r4, [r1, #0x2b]
    // 0x41f744: StoreField: r1->field_2f = xzr
    //     0x41f744: stur         xzr, [r1, #0x2f]
    //     0x41f748: ldur         r5, [fp, #-8]
    // 0x41f74c: StoreField: r1->field_b = r5
    //     0x41f74c: stur         r5, [r1, #0xb]
    // 0x41f750: r0 = call 0x391c0c
    //     0x41f750: bl           0x391c0c
    // 0x41f754: r1 = r0
    //     0x41f754: mov          r1, r0
    // 0x41f758: r0 = pp[0x97c]
    //     0x41f758: add          r0, PP, #0x14, lsl #12
    //     0x41f75c: ldr          r0, [r0, #0x968]
    //     0x41f760: stur         r1, [fp, #-8]
    // 0x41f764: StoreField: r1->field_f = r0
    //     0x41f764: stur         r0, [r1, #0xf]
    //     0x41f768: ldur         r0, [fp, #-0x48]
    // 0x41f76c: StoreField: r1->field_b = r0
    //     0x41f76c: stur         r0, [r1, #0xb]
    // 0x41f770: r0 = call 0x41dfa8
    //     0x41f770: bl           0x41dfa8
    // 0x41f774: r3 = r0
    //     0x41f774: mov          r3, r0
    //     0x41f778: ldur         r0, [fp, #-8]
    //     0x41f77c: stur         r3, [fp, #-0x48]
    // 0x41f780: StoreField: r3->field_b = r0
    //     0x41f780: stur         r0, [r3, #0xb]
    // 0x41f784: r0 = pp[0x56b8]
    //     0x41f784: ldr          r0, [PP, #0x56b8]
    // 0x41f788: StoreField: r3->field_f = r0
    //     0x41f788: stur         r0, [r3, #0xf]
    //     0x41f78c: ldur         r0, [fp, #-0x28]
    // 0x41f790: StoreField: r3->field_13 = r0
    //     0x41f790: stur         r0, [r3, #0x13]
    //     0x41f794: add          r0, NULL, #0x30
    // 0x41f798: ArrayStore: r3[0] = r0  ; List_8
    //     0x41f798: stur         r0, [r3, #0x17]
    // 0x41f79c: StoreField: r3->field_1b = r0
    //     0x41f79c: stur         r0, [r3, #0x1b]
    // 0x41f7a0: StoreField: r3->field_1f = r0
    //     0x41f7a0: stur         r0, [r3, #0x1f]
    // 0x41f7a4: StoreField: r3->field_23 = r0
    //     0x41f7a4: stur         r0, [r3, #0x23]
    // 0x41f7a8: StoreField: r3->field_27 = r0
    //     0x41f7a8: stur         r0, [r3, #0x27]
    // 0x41f7ac: r1 = NULL
    //     0x41f7ac: mov          r1, NULL
    //     0x41f7b0: mov          r2, #6
    // 0x41f7b4: r0 = call 0x61f920
    //     0x41f7b4: bl           0x61f920
    // 0x41f7b8: r2 = r0
    //     0x41f7b8: mov          r2, r0
    //     0x41f7bc: ldur         r0, [fp, #-0x30]
    //     0x41f7c0: stur         r2, [fp, #-8]
    // 0x41f7c4: StoreField: r2->field_f = r0
    //     0x41f7c4: stur         r0, [r2, #0xf]
    //     0x41f7c8: ldur         r0, [fp, #-0x40]
    // 0x41f7cc: StoreField: r2->field_13 = r0
    //     0x41f7cc: stur         r0, [r2, #0x13]
    //     0x41f7d0: ldur         r0, [fp, #-0x48]
    // 0x41f7d4: ArrayStore: r2[0] = r0  ; List_8
    //     0x41f7d4: stur         r0, [r2, #0x17]
    // 0x41f7d8: r1 = pp[0x5c58]
    //     0x41f7d8: ldr          r1, [PP, #0x5c58]
    // 0x41f7dc: r0 = call 0x61e854
    //     0x41f7dc: bl           0x61e854
    // 0x41f7e0: r1 = r0
    //     0x41f7e0: mov          r1, r0
    //     0x41f7e4: ldur         r0, [fp, #-8]
    //     0x41f7e8: stur         r1, [fp, #-0x28]
    // 0x41f7ec: StoreField: r1->field_f = r0
    //     0x41f7ec: stur         r0, [r1, #0xf]
    //     0x41f7f0: mov          r0, #6
    // 0x41f7f4: StoreField: r1->field_b = r0
    //     0x41f7f4: stur         r0, [r1, #0xb]
    // 0x41f7f8: r0 = call 0x39310c
    //     0x41f7f8: bl           0x39310c
    // 0x41f7fc: r1 = r0
    //     0x41f7fc: mov          r1, r0
    // 0x41f800: r0 = pp[0x862]
    //     0x41f800: add          r0, PP, #0xa, lsl #12
    //     0x41f804: ldr          r0, [r0, #0x858]
    //     0x41f808: stur         r1, [fp, #-8]
    // 0x41f80c: StoreField: r1->field_f = r0
    //     0x41f80c: stur         r0, [r1, #0xf]
    // 0x41f810: r0 = pp[0xaee]
    //     0x41f810: add          r0, PP, #0xe, lsl #12
    //     0x41f814: ldr          r0, [r0, #0xae0]
    // 0x41f818: StoreField: r1->field_13 = r0
    //     0x41f818: stur         r0, [r1, #0x13]
    // 0x41f81c: r0 = pp[0xaf6]
    //     0x41f81c: add          r0, PP, #0xe, lsl #12
    //     0x41f820: ldr          r0, [r0, #0xae8]
    // 0x41f824: ArrayStore: r1[0] = r0  ; List_8
    //     0x41f824: stur         r0, [r1, #0x17]
    // 0x41f828: r0 = pp[0xb6e]
    //     0x41f828: add          r0, PP, #0xe, lsl #12
    //     0x41f82c: ldr          r0, [r0, #0xb60]
    // 0x41f830: StoreField: r1->field_1b = r0
    //     0x41f830: stur         r0, [r1, #0x1b]
    // 0x41f834: r0 = pp[0xb06]
    //     0x41f834: add          r0, PP, #0xe, lsl #12
    //     0x41f838: ldr          r0, [r0, #0xaf8]
    // 0x41f83c: StoreField: r1->field_23 = r0
    //     0x41f83c: stur         r0, [r1, #0x23]
    // 0x41f840: r0 = pp[0xb2]
    //     0x41f840: add          r0, PP, #0xa, lsl #12
    //     0x41f844: ldr          r0, [r0, #0xa8]
    // 0x41f848: StoreField: r1->field_2b = r0
    //     0x41f848: stur         r0, [r1, #0x2b]
    // 0x41f84c: StoreField: r1->field_2f = xzr
    //     0x41f84c: stur         xzr, [r1, #0x2f]
    //     0x41f850: ldur         r0, [fp, #-0x28]
    // 0x41f854: StoreField: r1->field_b = r0
    //     0x41f854: stur         r0, [r1, #0xb]
    // 0x41f858: r0 = call 0x391a04
    //     0x41f858: bl           0x391a04
    //     0x41f85c: stur         r0, [fp, #-0x28]
    //     0x41f860: ldur         BARRIER, [fp, #-0x38]
    //     0x41f864: ldur         lr, [fp, #-8]
    //     0x41f868: stp          lr, BARRIER, [SP]
    // 0x41f86c: r1 = r0
    //     0x41f86c: mov          r1, r0
    // 0x41f870: r4 = pp[0x8dc]
    //     0x41f870: add          r4, PP, #0x14, lsl #12
    //     0x41f874: ldr          r4, [r4, #0x8c8]
    // 0x41f878: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x41f878: bl           0x391490
    // 0x41f87c: r1 = NULL
    //     0x41f87c: mov          r1, NULL
    //     0x41f880: mov          r2, #4
    // 0x41f884: r0 = call 0x61f920
    //     0x41f884: bl           0x61f920
    // 0x41f888: r2 = r0
    //     0x41f888: mov          r2, r0
    //     0x41f88c: ldur         r0, [fp, #-0x18]
    //     0x41f890: stur         r2, [fp, #-8]
    // 0x41f894: StoreField: r2->field_f = r0
    //     0x41f894: stur         r0, [r2, #0xf]
    //     0x41f898: ldur         r0, [fp, #-0x28]
    // 0x41f89c: StoreField: r2->field_13 = r0
    //     0x41f89c: stur         r0, [r2, #0x13]
    // 0x41f8a0: r1 = pp[0x5c58]
    //     0x41f8a0: ldr          r1, [PP, #0x5c58]
    // 0x41f8a4: r0 = call 0x61e854
    //     0x41f8a4: bl           0x61e854
    // 0x41f8a8: r1 = r0
    //     0x41f8a8: mov          r1, r0
    //     0x41f8ac: ldur         r0, [fp, #-8]
    //     0x41f8b0: stur         r1, [fp, #-0x18]
    // 0x41f8b4: StoreField: r1->field_f = r0
    //     0x41f8b4: stur         r0, [r1, #0xf]
    //     0x41f8b8: mov          r0, #4
    // 0x41f8bc: StoreField: r1->field_b = r0
    //     0x41f8bc: stur         r0, [r1, #0xb]
    // 0x41f8c0: r0 = call 0x39e6f4
    //     0x41f8c0: bl           0x39e6f4
    // 0x41f8c4: r1 = r0
    //     0x41f8c4: mov          r1, r0
    // 0x41f8c8: r0 = pp[0xf0e]
    //     0x41f8c8: add          r0, PP, #0xe, lsl #12
    //     0x41f8cc: ldr          r0, [r0, #0xf00]
    //     0x41f8d0: stur         r1, [fp, #-8]
    // 0x41f8d4: StoreField: r1->field_f = r0
    //     0x41f8d4: stur         r0, [r1, #0xf]
    // 0x41f8d8: r0 = pp[0xf16]
    //     0x41f8d8: add          r0, PP, #0xe, lsl #12
    //     0x41f8dc: ldr          r0, [r0, #0xf08]
    // 0x41f8e0: ArrayStore: r1[0] = r0  ; List_8
    //     0x41f8e0: stur         r0, [r1, #0x17]
    // 0x41f8e4: r0 = pp[0xf1e]
    //     0x41f8e4: add          r0, PP, #0xe, lsl #12
    //     0x41f8e8: ldr          r0, [r0, #0xf10]
    // 0x41f8ec: StoreField: r1->field_1b = r0
    //     0x41f8ec: stur         r0, [r1, #0x1b]
    //     0x41f8f0: ldur         r0, [fp, #-0x18]
    // 0x41f8f4: StoreField: r1->field_b = r0
    //     0x41f8f4: stur         r0, [r1, #0xb]
    // 0x41f8f8: r0 = call 0x3a1d94
    //     0x41f8f8: bl           0x3a1d94
    //     0x41f8fc: ldur         r2, [fp, #-0x20]
    // 0x41f900: r1 = pp[0x1fd]
    //     0x41f900: add          r1, PP, #0x15, lsl #12
    //     0x41f904: ldr          r1, [r1, #0x1e8]
    //     0x41f908: stur         r0, [fp, #-0x18]
    // 0x41f90c: r0 = call 0x61ec54
    //     0x41f90c: bl           0x61ec54
    //     0x41f910: ldur         BARRIER, [fp, #-8]
    //     0x41f914: stp          BARRIER, r0, [SP]
    //     0x41f918: ldur         r1, [fp, #-0x18]
    // 0x41f91c: r4 = pp[0x214]
    //     0x41f91c: add          r4, PP, #0xc, lsl #12
    //     0x41f920: ldr          r4, [r4, #0x208]
    // 0x41f924: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x41f924: bl           0x3a18c4
    // 0x41f928: r0 = call 0x391c0c
    //     0x41f928: bl           0x391c0c
    // 0x41f92c: r1 = pp[0x205]
    //     0x41f92c: add          r1, PP, #0x15, lsl #12
    //     0x41f930: ldr          r1, [r1, #0x1f0]
    // 0x41f934: StoreField: r0->field_f = r1
    //     0x41f934: stur         r1, [r0, #0xf]
    //     0x41f938: ldur         r1, [fp, #-0x18]
    // 0x41f93c: StoreField: r0->field_b = r1
    //     0x41f93c: stur         r1, [r0, #0xb]
    // 0x41f940: SP = fp
    //     0x41f940: mov          SP, fp
    // 0x41f944: LeaveFrame
    //     0x41f944: ldp          fp, lr, [SP], #0x10
    // 0x41f948: ret
    //     0x41f948: ret          
    // 0x41f94c: r0 = call 0x61fa28
    //     0x41f94c: bl           0x61fa28
    // 0x41f950: b 0x41f0ec
    //     0x41f950: b            0x41f0ec
    // 0x41f954: r0 = call 0x61ffd0
    //     0x41f954: bl           0x61ffd0
    // 0x41f958: r0 = call 0x61ffd0
    //     0x41f958: bl           0x61ffd0
    // 0x41f95c: r9 = pp[0xaf9]
    //     0x41f95c: add          r9, PP, #0x11, lsl #12
    //     0x41f960: ldr          r9, [r9, #0xae8]
    // 0x41f964: r0 = call 0x620258
    //     0x41f964: bl           0x620258
    // 0x41f968: r9 = pp[0x20d]
    //     0x41f968: add          r9, PP, #0x15, lsl #12
    //     0x41f96c: ldr          r9, [r9, #0x1f8]
    // 0x41f970: r0 = call 0x620258
    //     0x41f970: bl           0x620258
  }

  _anon_closure() {
    // ** addr: 0x41fc34, size: 0x7c
    // 0x41fc34: EnterFrame
    //     0x41fc34: stp          fp, lr, [SP, #-0x10]!
    //     0x41fc38: mov          fp, SP
    //     0x41fc3c: ldr          r0, [fp, #0x10]
    // 0x41fc40: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x41fc40: ldur         r1, [r0, #0x17]
    //     0x41fc44: add          r1, r1, HEAP, lsl #32
    // 0x41fc48: CheckStackOverflow
    //     0x41fc48: ldr          BARRIER, [THR, #0x38]
    //     0x41fc4c: cmp          SP, BARRIER
    //     0x41fc50: b.ls         0x41fca4
    // 0x41fc54: LoadField: r0 = r1->field_f
    //     0x41fc54: ldur         r0, [r1, #0xf]
    //     0x41fc58: add          r0, r0, HEAP, lsl #32
    // 0x41fc5c: LoadField: r2 = r0->field_b
    //     0x41fc5c: ldur         r2, [r0, #0xb]
    //     0x41fc60: add          r2, r2, HEAP, lsl #32
    //     0x41fc64: cmp          r2, r22
    // 0x41fc68: b.eq 0x41fcac
    //     0x41fc68: b.eq         0x41fcac
    // 0x41fc6c: LoadField: r0 = r2->field_b
    //     0x41fc6c: ldur         r0, [r2, #0xb]
    //     0x41fc70: add          r0, r0, HEAP, lsl #32
    // 0x41fc74: LoadField: r2 = r1->field_13
    //     0x41fc74: ldur         r2, [r1, #0x13]
    //     0x41fc78: add          r2, r2, HEAP, lsl #32
    //     0x41fc7c: sbfx         r1, r2, #1, #0x1f
    // 0x41fc80: branchIfSmi(r2, 0x41fc88)
    //     0x41fc80: tbz          r2, #0, 0x41fc88
    // 0x41fc84: LoadField: r1 = r2->field_7
    //     0x41fc84: ldur         r1, [r2, #7]
    // 0x41fc88: r2 = r1
    //     0x41fc88: mov          r2, r1
    // 0x41fc8c: r1 = r0
    //     0x41fc8c: mov          r1, r0
    // 0x41fc90: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::updateSelectedIndex()
    //     0x41fc90: bl           0x41fcb0
    // 0x41fc94: r0 = NULL
    //     0x41fc94: mov          r0, NULL
    // 0x41fc98: SP = fp
    //     0x41fc98: mov          SP, fp
    // 0x41fc9c: LeaveFrame
    //     0x41fc9c: ldp          fp, lr, [SP], #0x10
    // 0x41fca0: ret
    //     0x41fca0: ret          
    // 0x41fca4: r0 = call 0x61fa28
    //     0x41fca4: bl           0x61fa28
    // 0x41fca8: b 0x41fc54
    //     0x41fca8: b            0x41fc54
    // 0x41fcac: r0 = call 0x61ffd0
    //     0x41fcac: bl           0x61ffd0
  }

  dispose() {
    // ** addr: 0x450c1c, size: 0x54
    // 0x450c1c: EnterFrame
    //     0x450c1c: stp          fp, lr, [SP, #-0x10]!
    //     0x450c20: mov          fp, SP
    // 0x450c24: AllocStack(8)
    //     0x450c24: sub          SP, SP, #8
    // 0x450c28: r0 = r1
    //     0x450c28: mov          r0, r1
    //     0x450c2c: stur         r1, [fp, #-8]
    // 0x450c30: CheckStackOverflow
    //     0x450c30: ldr          BARRIER, [THR, #0x38]
    //     0x450c34: cmp          SP, BARRIER
    //     0x450c38: b.ls         0x450c68
    // 0x450c3c: r1 = r0
    //     0x450c3c: mov          r1, r0
    // 0x450c40: r0 = flutter$src$widgets$scrollable_ScrollableState::get_axisDirection()
    //     0x450c40: bl           0x417f08
    // 0x450c44: r1 = r0
    //     0x450c44: mov          r1, r0
    // 0x450c48: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::release()
    //     0x450c48: bl           0x41a46c
    // 0x450c4c: r0 = wakelock$wakelock_Wakelock::disable()
    //     0x450c4c: bl           0x450d04
    //     0x450c50: ldur         r1, [fp, #-8]
    // 0x450c54: r0 = soul_flutter_international$biz$game$widget$game_fruit_land___GameFruitLandState&SoulState&TickerProviderStateMixin::dispose()
    //     0x450c54: bl           0x450c70
    // 0x450c58: r0 = NULL
    //     0x450c58: mov          r0, NULL
    // 0x450c5c: SP = fp
    //     0x450c5c: mov          SP, fp
    // 0x450c60: LeaveFrame
    //     0x450c60: ldp          fp, lr, [SP], #0x10
    // 0x450c64: ret
    //     0x450c64: ret          
    // 0x450c68: r0 = call 0x61fa28
    //     0x450c68: bl           0x61fa28
    // 0x450c6c: b 0x450c3c
    //     0x450c6c: b            0x450c3c
  }

  initState() {
    // ** addr: 0x4d3a88, size: 0x90
    // 0x4d3a88: EnterFrame
    //     0x4d3a88: stp          fp, lr, [SP, #-0x10]!
    //     0x4d3a8c: mov          fp, SP
    // 0x4d3a90: AllocStack(8)
    //     0x4d3a90: sub          SP, SP, #8
    // 0x4d3a94: r2 = r1
    //     0x4d3a94: mov          r2, r1
    //     0x4d3a98: stur         r1, [fp, #-8]
    // 0x4d3a9c: CheckStackOverflow
    //     0x4d3a9c: ldr          BARRIER, [THR, #0x38]
    //     0x4d3aa0: cmp          SP, BARRIER
    //     0x4d3aa4: b.ls         0x4d3b08
    // 0x4d3aa8: r0 = wakelock$wakelock_Wakelock::enable()
    //     0x4d3aa8: bl           0x4d41b8
    //     0x4d3aac: ldur         r0, [fp, #-8]
    // 0x4d3ab0: LoadField: r1 = r0->field_b
    //     0x4d3ab0: ldur         r1, [r0, #0xb]
    //     0x4d3ab4: add          r1, r1, HEAP, lsl #32
    //     0x4d3ab8: cmp          r1, r22
    // 0x4d3abc: b.eq 0x4d3b10
    //     0x4d3abc: b.eq         0x4d3b10
    // 0x4d3ac0: LoadField: r2 = r1->field_b
    //     0x4d3ac0: ldur         r2, [r1, #0xb]
    //     0x4d3ac4: add          r2, r2, HEAP, lsl #32
    // 0x4d3ac8: r1 = r2
    //     0x4d3ac8: mov          r1, r2
    // 0x4d3acc: r2 = r0
    //     0x4d3acc: mov          r2, r0
    // 0x4d3ad0: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::initAnimation()
    //     0x4d3ad0: bl           0x4d3fe4
    //     0x4d3ad4: ldur         r0, [fp, #-8]
    // 0x4d3ad8: LoadField: r1 = r0->field_b
    //     0x4d3ad8: ldur         r1, [r0, #0xb]
    //     0x4d3adc: add          r1, r1, HEAP, lsl #32
    //     0x4d3ae0: cmp          r1, r22
    // 0x4d3ae4: b.eq 0x4d3b14
    //     0x4d3ae4: b.eq         0x4d3b14
    // 0x4d3ae8: LoadField: r0 = r1->field_b
    //     0x4d3ae8: ldur         r0, [r1, #0xb]
    //     0x4d3aec: add          r0, r0, HEAP, lsl #32
    // 0x4d3af0: r1 = r0
    //     0x4d3af0: mov          r1, r0
    // 0x4d3af4: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::getFruitLandResource()
    //     0x4d3af4: bl           0x4d3b18
    // 0x4d3af8: r0 = NULL
    //     0x4d3af8: mov          r0, NULL
    // 0x4d3afc: SP = fp
    //     0x4d3afc: mov          SP, fp
    // 0x4d3b00: LeaveFrame
    //     0x4d3b00: ldp          fp, lr, [SP], #0x10
    // 0x4d3b04: ret
    //     0x4d3b04: ret          
    // 0x4d3b08: r0 = call 0x61fa28
    //     0x4d3b08: bl           0x61fa28
    // 0x4d3b0c: b 0x4d3aa8
    //     0x4d3b0c: b            0x4d3aa8
    // 0x4d3b10: r0 = call 0x61ffd0
    //     0x4d3b10: bl           0x61ffd0
    // 0x4d3b14: r0 = call 0x61ffd0
    //     0x4d3b14: bl           0x61ffd0
  }

  createState() {
    // ** addr: 0x4c3d88, size: 0x24
    // 0x4c3d88: EnterFrame
    //     0x4c3d88: stp          fp, lr, [SP, #-0x10]!
    //     0x4c3d8c: mov          fp, SP
    // 0x4c3d90: r0 = r1
    //     0x4c3d90: mov          r0, r1
    // 0x4c3d94: r1 = pp[0x55a]
    //     0x4c3d94: add          r1, PP, #0x12, lsl #12
    //     0x4c3d98: ldr          r1, [r1, #0x548]
    // 0x4c3d9c: r0 = call 0x4c3dac
    //     0x4c3d9c: bl           0x4c3dac
    // 0x4c3da0: SP = fp
    //     0x4c3da0: mov          SP, fp
    // 0x4c3da4: LeaveFrame
    //     0x4c3da4: ldp          fp, lr, [SP], #0x10
    // 0x4c3da8: ret
    //     0x4c3da8: ret          
  }
