// lib: , url: soul_flutter_international$biz$game$page_game_fruit_ranking


  _anon_closure() {
    // ** addr: 0x43658c, size: 0x60
    // 0x43658c: EnterFrame
    //     0x43658c: stp          fp, lr, [SP, #-0x10]!
    //     0x436590: mov          fp, SP
    // 0x436594: AllocStack(8)
    //     0x436594: sub          SP, SP, #8
    //     0x436598: ldr          r0, [fp, #0x10]
    // 0x43659c: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x43659c: ldur         r2, [r0, #0x17]
    //     0x4365a0: add          r2, r2, HEAP, lsl #32
    // 0x4365a4: CheckStackOverflow
    //     0x4365a4: ldr          BARRIER, [THR, #0x38]
    //     0x4365a8: cmp          SP, BARRIER
    //     0x4365ac: b.ls         0x4365e4
    // 0x4365b0: ArrayLoad: r0 = r2[0]  ; List_8
    //     0x4365b0: ldur         r0, [r2, #0x17]
    //     0x4365b4: add          r0, r0, HEAP, lsl #32
    //     0x4365b8: stur         r0, [fp, #-8]
    // 0x4365bc: r1 = pp[0x951]
    //     0x4365bc: add          r1, PP, #0x11, lsl #12
    //     0x4365c0: ldr          r1, [r1, #0x940]
    // 0x4365c4: r0 = call 0x61ec54
    //     0x4365c4: bl           0x61ec54
    //     0x4365c8: ldur         r1, [fp, #-8]
    // 0x4365cc: r2 = r0
    //     0x4365cc: mov          r2, r0
    // 0x4365d0: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_ranking_GameFruitRankingNotifier::requestGameFruitRankList()
    //     0x4365d0: bl           0x4365ec
    // 0x4365d4: r0 = NULL
    //     0x4365d4: mov          r0, NULL
    // 0x4365d8: SP = fp
    //     0x4365d8: mov          SP, fp
    // 0x4365dc: LeaveFrame
    //     0x4365dc: ldp          fp, lr, [SP], #0x10
    // 0x4365e0: ret
    //     0x4365e0: ret          
    // 0x4365e4: r0 = call 0x61fa28
    //     0x4365e4: bl           0x61fa28
    // 0x4365e8: b 0x4365b0
    //     0x4365e8: b            0x4365b0
  }

  _userRankListWidget() {
    // ** addr: 0x436d20, size: 0x1808
    // 0x436d20: EnterFrame
    //     0x436d20: stp          fp, lr, [SP, #-0x10]!
    //     0x436d24: mov          fp, SP
    // 0x436d28: AllocStack(0xc8)
    //     0x436d28: sub          SP, SP, #0xc8
    //     0x436d2c: stur         r1, [fp, #-8]
    //     0x436d30: stur         r2, [fp, #-0x10]
    //     0x436d34: stur         r3, [fp, #-0x18]
    //     0x436d38: stur         r5, [fp, #-0x20]
    //     0x436d3c: stur         d0, [fp, #-0x90]
    //     0x436d40: stur         d1, [fp, #-0x98]
    // 0x436d44: CheckStackOverflow
    //     0x436d44: ldr          BARRIER, [THR, #0x38]
    //     0x436d48: cmp          SP, BARRIER
    //     0x436d4c: b.ls         0x438430
    //     0x436d50: mov          r1, #6
    // 0x436d54: r0 = call 0x61e890
    //     0x436d54: bl           0x61e890
    // 0x436d58: r3 = r0
    //     0x436d58: mov          r3, r0
    //     0x436d5c: ldur         r2, [fp, #-8]
    //     0x436d60: stur         r3, [fp, #-0x28]
    // 0x436d64: StoreField: r3->field_f = r2
    //     0x436d64: stur         r2, [r3, #0xf]
    //     0x436d68: ldur         r4, [fp, #-0x10]
    // 0x436d6c: StoreField: r3->field_13 = r4
    //     0x436d6c: stur         r4, [r3, #0x13]
    //     0x436d70: ldur         r0, [fp, #-0x18]
    // 0x436d74: ArrayStore: r3[0] = r0  ; List_8
    //     0x436d74: stur         r0, [r3, #0x17]
    //     0x436d78: ldur         r0, [fp, #-0x20]
    // 0x436d7c: StoreField: r3->field_1b = r0
    //     0x436d7c: stur         r0, [r3, #0x1b]
    // 0x436d80: r0 = pp[0xb8f]
    //     0x436d80: add          r0, PP, #0xf, lsl #12
    //     0x436d84: ldr          r0, [r0, #0xb80]
    // 0x436d88: StoreField: r3->field_1f = r0
    //     0x436d88: stur         r0, [r3, #0x1f]
    // 0x436d8c: r0 = pp[0x849]
    //     0x436d8c: add          r0, PP, #0x11, lsl #12
    //     0x436d90: ldr          r0, [r0, #0x838]
    // 0x436d94: StoreField: r3->field_23 = r0
    //     0x436d94: stur         r0, [r3, #0x23]
    // 0x436d98: LoadField: r0 = r4->field_b
    //     0x436d98: ldur         r0, [r4, #0xb]
    //     0x436d9c: sbfx         r5, r0, #1, #0x1f
    //     0x436da0: cmp          r5, #3
    // 0x436da4: b.lt 0x436e00
    //     0x436da4: b.lt         0x436e00
    // 0x436da8: r0 = r5
    //     0x436da8: mov          r0, r5
    //     0x436dac: mov          r1, #0
    //     0x436db0: cmp          r1, r0
    // 0x436db4: b.hs 0x438438
    //     0x436db4: b.hs         0x438438
    // 0x436db8: LoadField: r6 = r4->field_f
    //     0x436db8: ldur         r6, [r4, #0xf]
    //     0x436dbc: add          r6, r6, HEAP, lsl #32
    // 0x436dc0: LoadField: r4 = r6->field_f
    //     0x436dc0: ldur         r4, [r6, #0xf]
    //     0x436dc4: add          r4, r4, HEAP, lsl #32
    // 0x436dc8: r0 = r5
    //     0x436dc8: mov          r0, r5
    //     0x436dcc: mov          r1, #1
    //     0x436dd0: cmp          r1, r0
    // 0x436dd4: b.hs 0x43843c
    //     0x436dd4: b.hs         0x43843c
    // 0x436dd8: LoadField: r7 = r6->field_13
    //     0x436dd8: ldur         r7, [r6, #0x13]
    //     0x436ddc: add          r7, r7, HEAP, lsl #32
    // 0x436de0: r0 = r5
    //     0x436de0: mov          r0, r5
    //     0x436de4: mov          r1, #2
    //     0x436de8: cmp          r1, r0
    // 0x436dec: b.hs 0x438440
    //     0x436dec: b.hs         0x438440
    // 0x436df0: ArrayLoad: r0 = r6[0]  ; List_8
    //     0x436df0: ldur         r0, [r6, #0x17]
    //     0x436df4: add          r0, r0, HEAP, lsl #32
    // 0x436df8: r1 = r7
    //     0x436df8: mov          r1, r7
    // 0x436dfc: b 0x436e80
    //     0x436dfc: b            0x436e80
    //     0x436e00: cmp          r5, #3
    // 0x436e04: b.ge 0x436e50
    //     0x436e04: b.ge         0x436e50
    //     0x436e08: cmp          r5, #2
    // 0x436e0c: b.lt 0x436e50
    //     0x436e0c: b.lt         0x436e50
    // 0x436e10: r0 = r5
    //     0x436e10: mov          r0, r5
    //     0x436e14: mov          r1, #0
    //     0x436e18: cmp          r1, r0
    // 0x436e1c: b.hs 0x438444
    //     0x436e1c: b.hs         0x438444
    // 0x436e20: LoadField: r6 = r4->field_f
    //     0x436e20: ldur         r6, [r4, #0xf]
    //     0x436e24: add          r6, r6, HEAP, lsl #32
    // 0x436e28: LoadField: r4 = r6->field_f
    //     0x436e28: ldur         r4, [r6, #0xf]
    //     0x436e2c: add          r4, r4, HEAP, lsl #32
    // 0x436e30: r0 = r5
    //     0x436e30: mov          r0, r5
    //     0x436e34: mov          r1, #1
    //     0x436e38: cmp          r1, r0
    // 0x436e3c: b.hs 0x438448
    //     0x436e3c: b.hs         0x438448
    // 0x436e40: LoadField: r0 = r6->field_13
    //     0x436e40: ldur         r0, [r6, #0x13]
    //     0x436e44: add          r0, r0, HEAP, lsl #32
    // 0x436e48: r1 = r4
    //     0x436e48: mov          r1, r4
    // 0x436e4c: b 0x436e74
    //     0x436e4c: b            0x436e74
    // 0x436e50: r0 = r5
    //     0x436e50: mov          r0, r5
    //     0x436e54: mov          r1, #0
    //     0x436e58: cmp          r1, r0
    // 0x436e5c: b.hs 0x43844c
    //     0x436e5c: b.hs         0x43844c
    // 0x436e60: LoadField: r0 = r4->field_f
    //     0x436e60: ldur         r0, [r4, #0xf]
    //     0x436e64: add          r0, r0, HEAP, lsl #32
    // 0x436e68: LoadField: r1 = r0->field_f
    //     0x436e68: ldur         r1, [r0, #0xf]
    //     0x436e6c: add          r1, r1, HEAP, lsl #32
    // 0x436e70: r0 = NULL
    //     0x436e70: mov          r0, NULL
    // 0x436e74: r4 = r1
    //     0x436e74: mov          r4, r1
    // 0x436e78: r1 = r0
    //     0x436e78: mov          r1, r0
    // 0x436e7c: r0 = NULL
    //     0x436e7c: mov          r0, NULL
    //     0x436e80: ldur         d0, [fp, #-0x98]
    //     0x436e84: stur         r4, [fp, #-0x10]
    //     0x436e88: stur         r1, [fp, #-0x18]
    //     0x436e8c: stur         r0, [fp, #-0x20]
    // 0x436e90: r0 = call 0x2e3578
    //     0x436e90: bl           0x2e3578
    //     0x436e94: fmov         d0, #20.00000000
    //     0x436e98: stur         r0, [fp, #-0x30]
    // 0x436e9c: StoreField: r0->field_7 = d0
    //     0x436e9c: stur         d0, [r0, #7]
    // 0x436ea0: StoreField: r0->field_f = d0
    //     0x436ea0: stur         d0, [r0, #0xf]
    // 0x436ea4: ArrayStore: r0[0] = d0  ; List_8
    //     0x436ea4: stur         d0, [r0, #0x17]
    //     0x436ea8: fmov         d1, #12.00000000
    // 0x436eac: StoreField: r0->field_1f = d1
    //     0x436eac: stur         d1, [r0, #0x1f]
    // 0x436eb0: r0 = call 0x2e3578
    //     0x436eb0: bl           0x2e3578
    //     0x436eb4: stur         r0, [fp, #-0x38]
    // 0x436eb8: StoreField: r0->field_7 = xzr
    //     0x436eb8: stur         xzr, [r0, #7]
    //     0x436ebc: fmov         d0, #25.00000000
    // 0x436ec0: StoreField: r0->field_f = d0
    //     0x436ec0: stur         d0, [r0, #0xf]
    // 0x436ec4: ArrayStore: r0[0] = xzr  ; List_8
    //     0x436ec4: stur         xzr, [r0, #0x17]
    // 0x436ec8: StoreField: r0->field_1f = xzr
    //     0x436ec8: stur         xzr, [r0, #0x1f]
    // 0x436ecc: r0 = call 0x31d844
    //     0x436ecc: bl           0x31d844
    // 0x436ed0: r1 = r0
    //     0x436ed0: mov          r1, r0
    // 0x436ed4: r0 = pp[0x6310]
    //     0x436ed4: ldr          r0, [PP, #0x6310]
    //     0x436ed8: stur         r1, [fp, #-0x40]
    // 0x436edc: StoreField: r1->field_27 = r0
    //     0x436edc: stur         r0, [r1, #0x27]
    // 0x436ee0: d0 = pp[0x851]
    //     0x436ee0: add          r17, PP, #0x11, lsl #12
    //     0x436ee4: ldr          d0, [r17, #0x840]
    // 0x436ee8: StoreField: r1->field_7 = d0
    //     0x436ee8: stur         d0, [r1, #7]
    // 0x436eec: d1 = pp[0x859]
    //     0x436eec: add          r17, PP, #0x11, lsl #12
    //     0x436ef0: ldr          d1, [r17, #0x848]
    // 0x436ef4: StoreField: r1->field_f = d1
    //     0x436ef4: stur         d1, [r1, #0xf]
    // 0x436ef8: d2 = pp[0x861]
    //     0x436ef8: add          r17, PP, #0x11, lsl #12
    //     0x436efc: ldr          d2, [r17, #0x850]
    // 0x436f00: ArrayStore: r1[0] = d2  ; List_8
    //     0x436f00: stur         d2, [r1, #0x17]
    //     0x436f04: fmov         d3, #1.00000000
    // 0x436f08: StoreField: r1->field_1f = d3
    //     0x436f08: stur         d3, [r1, #0x1f]
    // 0x436f0c: r0 = call 0x31d844
    //     0x436f0c: bl           0x31d844
    // 0x436f10: r3 = r0
    //     0x436f10: mov          r3, r0
    // 0x436f14: r0 = pp[0x6310]
    //     0x436f14: ldr          r0, [PP, #0x6310]
    //     0x436f18: stur         r3, [fp, #-0x48]
    // 0x436f1c: StoreField: r3->field_27 = r0
    //     0x436f1c: stur         r0, [r3, #0x27]
    // 0x436f20: StoreField: r3->field_7 = xzr
    //     0x436f20: stur         xzr, [r3, #7]
    // 0x436f24: d0 = pp[0x859]
    //     0x436f24: add          r17, PP, #0x11, lsl #12
    //     0x436f28: ldr          d0, [r17, #0x848]
    // 0x436f2c: StoreField: r3->field_f = d0
    //     0x436f2c: stur         d0, [r3, #0xf]
    // 0x436f30: d1 = pp[0x861]
    //     0x436f30: add          r17, PP, #0x11, lsl #12
    //     0x436f34: ldr          d1, [r17, #0x850]
    // 0x436f38: ArrayStore: r3[0] = d1  ; List_8
    //     0x436f38: stur         d1, [r3, #0x17]
    //     0x436f3c: fmov         d1, #1.00000000
    // 0x436f40: StoreField: r3->field_1f = d1
    //     0x436f40: stur         d1, [r3, #0x1f]
    // 0x436f44: r1 = NULL
    //     0x436f44: mov          r1, NULL
    //     0x436f48: mov          r2, #4
    // 0x436f4c: r0 = call 0x61f920
    //     0x436f4c: bl           0x61f920
    // 0x436f50: r2 = r0
    //     0x436f50: mov          r2, r0
    //     0x436f54: ldur         r0, [fp, #-0x40]
    //     0x436f58: stur         r2, [fp, #-0x50]
    // 0x436f5c: StoreField: r2->field_f = r0
    //     0x436f5c: stur         r0, [r2, #0xf]
    //     0x436f60: ldur         r0, [fp, #-0x48]
    // 0x436f64: StoreField: r2->field_13 = r0
    //     0x436f64: stur         r0, [r2, #0x13]
    // 0x436f68: r1 = pp[0xc68]
    //     0x436f68: add          r1, PP, #0x10, lsl #12
    //     0x436f6c: ldr          r1, [r1, #0xc58]
    // 0x436f70: r0 = call 0x61e854
    //     0x436f70: bl           0x61e854
    // 0x436f74: r1 = r0
    //     0x436f74: mov          r1, r0
    //     0x436f78: ldur         r0, [fp, #-0x50]
    //     0x436f7c: stur         r1, [fp, #-0x40]
    // 0x436f80: StoreField: r1->field_f = r0
    //     0x436f80: stur         r0, [r1, #0xf]
    //     0x436f84: mov          r2, #4
    // 0x436f88: StoreField: r1->field_b = r2
    //     0x436f88: stur         r2, [r1, #0xb]
    // 0x436f8c: r0 = call 0x3a108c
    //     0x436f8c: bl           0x3a108c
    // 0x436f90: r1 = r0
    //     0x436f90: mov          r1, r0
    // 0x436f94: r0 = pp[0xc78]
    //     0x436f94: add          r0, PP, #0x10, lsl #12
    //     0x436f98: ldr          r0, [r0, #0xc68]
    //     0x436f9c: stur         r1, [fp, #-0x48]
    // 0x436fa0: StoreField: r1->field_13 = r0
    //     0x436fa0: stur         r0, [r1, #0x13]
    // 0x436fa4: r2 = pp[0xc80]
    //     0x436fa4: add          r2, PP, #0x10, lsl #12
    //     0x436fa8: ldr          r2, [r2, #0xc70]
    // 0x436fac: ArrayStore: r1[0] = r2  ; List_8
    //     0x436fac: stur         r2, [r1, #0x17]
    // 0x436fb0: r3 = pp[0xc88]
    //     0x436fb0: add          r3, PP, #0x10, lsl #12
    //     0x436fb4: ldr          r3, [r3, #0xc78]
    // 0x436fb8: StoreField: r1->field_1b = r3
    //     0x436fb8: stur         r3, [r1, #0x1b]
    //     0x436fbc: ldur         r4, [fp, #-0x40]
    // 0x436fc0: StoreField: r1->field_7 = r4
    //     0x436fc0: stur         r4, [r1, #7]
    //     0x436fc4: ldur         d0, [fp, #-0x98]
    //     0x436fc8: fmov         d1, #0.50000000
    //     0x436fcc: fmul         d2, d0, d1
    //     0x436fd0: stur         d2, [fp, #-0xa0]
    // 0x436fd4: r0 = call 0x352b04
    //     0x436fd4: bl           0x352b04
    //     0x436fd8: ldur         d0, [fp, #-0xa0]
    //     0x436fdc: stur         r0, [fp, #-0x40]
    // 0x436fe0: StoreField: r0->field_7 = d0
    //     0x436fe0: stur         d0, [r0, #7]
    // 0x436fe4: StoreField: r0->field_f = d0
    //     0x436fe4: stur         d0, [r0, #0xf]
    // 0x436fe8: r0 = call 0x352b04
    //     0x436fe8: bl           0x352b04
    //     0x436fec: ldur         d0, [fp, #-0xa0]
    //     0x436ff0: stur         r0, [fp, #-0x50]
    // 0x436ff4: StoreField: r0->field_7 = d0
    //     0x436ff4: stur         d0, [r0, #7]
    // 0x436ff8: StoreField: r0->field_f = d0
    //     0x436ff8: stur         d0, [r0, #0xf]
    // 0x436ffc: r0 = call 0x392f28
    //     0x436ffc: bl           0x392f28
    // 0x437000: r1 = r0
    //     0x437000: mov          r1, r0
    //     0x437004: ldur         r0, [fp, #-0x40]
    //     0x437008: stur         r1, [fp, #-0x58]
    // 0x43700c: StoreField: r1->field_7 = r0
    //     0x43700c: stur         r0, [r1, #7]
    //     0x437010: ldur         r0, [fp, #-0x50]
    // 0x437014: StoreField: r1->field_b = r0
    //     0x437014: stur         r0, [r1, #0xb]
    // 0x437018: r0 = pp[0x51a]
    //     0x437018: add          r0, PP, #0xa, lsl #12
    //     0x43701c: ldr          r0, [r0, #0x510]
    // 0x437020: StoreField: r1->field_f = r0
    //     0x437020: stur         r0, [r1, #0xf]
    // 0x437024: StoreField: r1->field_13 = r0
    //     0x437024: stur         r0, [r1, #0x13]
    // 0x437028: r0 = call 0x391dd8
    //     0x437028: bl           0x391dd8
    // 0x43702c: r1 = r0
    //     0x43702c: mov          r1, r0
    //     0x437030: ldur         r0, [fp, #-0x58]
    //     0x437034: stur         r1, [fp, #-0x40]
    // 0x437038: StoreField: r1->field_13 = r0
    //     0x437038: stur         r0, [r1, #0x13]
    //     0x43703c: ldur         r0, [fp, #-0x48]
    // 0x437040: StoreField: r1->field_1b = r0
    //     0x437040: stur         r0, [r1, #0x1b]
    // 0x437044: r0 = pp[0xb86]
    //     0x437044: add          r0, PP, #0xe, lsl #12
    //     0x437048: ldr          r0, [r0, #0xb78]
    // 0x43704c: StoreField: r1->field_23 = r0
    //     0x43704c: stur         r0, [r1, #0x23]
    // 0x437050: r0 = call 0x3a142c
    //     0x437050: bl           0x3a142c
    // 0x437054: r1 = r0
    //     0x437054: mov          r1, r0
    // 0x437058: r0 = pp[0x869]
    //     0x437058: add          r0, PP, #0x11, lsl #12
    //     0x43705c: ldr          r0, [r0, #0x858]
    //     0x437060: stur         r1, [fp, #-0x48]
    // 0x437064: StoreField: r1->field_b = r0
    //     0x437064: stur         r0, [r1, #0xb]
    // 0x437068: r0 = pp[0x17f]
    //     0x437068: add          r0, PP, #0xf, lsl #12
    //     0x43706c: ldr          r0, [r0, #0x170]
    // 0x437070: StoreField: r1->field_f = r0
    //     0x437070: stur         r0, [r1, #0xf]
    // 0x437074: r2 = pp[0x871]
    //     0x437074: add          r2, PP, #0x11, lsl #12
    //     0x437078: ldr          r2, [r2, #0x860]
    // 0x43707c: StoreField: r1->field_13 = r2
    //     0x43707c: stur         r2, [r1, #0x13]
    // 0x437080: r3 = pp[0x421]
    //     0x437080: add          r3, PP, #0x11, lsl #12
    //     0x437084: ldr          r3, [r3, #0x410]
    // 0x437088: ArrayStore: r1[0] = r3  ; List_8
    //     0x437088: stur         r3, [r1, #0x17]
    // 0x43708c: r0 = call 0x391a04
    //     0x43708c: bl           0x391a04
    //     0x437090: stur         r0, [fp, #-0x50]
    // 0x437094: BARRIER = pp[0x871]
    //     0x437094: add          BARRIER, PP, #0x11, lsl #12
    //     0x437098: ldr          BARRIER, [BARRIER, #0x860]
    // 0x43709c: lr = pp[0x421]
    //     0x43709c: add          lr, PP, #0x11, lsl #12
    //     0x4370a0: ldr          lr, [lr, #0x410]
    //     0x4370a4: stp          lr, BARRIER, [SP, #8]
    //     0x4370a8: ldur         BARRIER, [fp, #-0x48]
    //     0x4370ac: str          BARRIER, [SP]
    // 0x4370b0: r1 = r0
    //     0x4370b0: mov          r1, r0
    // 0x4370b4: r4 = pp[0x879]
    //     0x4370b4: add          r4, PP, #0x11, lsl #12
    //     0x4370b8: ldr          r4, [r4, #0x868]
    // 0x4370bc: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4370bc: bl           0x391490
    // 0x4370c0: r1 = pp[0x5e7]
    //     0x4370c0: add          r1, PP, #0xf, lsl #12
    //     0x4370c4: ldr          r1, [r1, #0x5d8]
    // 0x4370c8: r0 = call 0x399e40
    //     0x4370c8: bl           0x399e40
    // 0x4370cc: r1 = r0
    //     0x4370cc: mov          r1, r0
    // 0x4370d0: r0 = pp[0x881]
    //     0x4370d0: add          r0, PP, #0x11, lsl #12
    //     0x4370d4: ldr          r0, [r0, #0x870]
    //     0x4370d8: stur         r1, [fp, #-0x48]
    // 0x4370dc: ArrayStore: r1[0] = r0  ; List_8
    //     0x4370dc: stur         r0, [r1, #0x17]
    //     0x4370e0: ldur         r2, [fp, #-0x50]
    // 0x4370e4: StoreField: r1->field_b = r2
    //     0x4370e4: stur         r2, [r1, #0xb]
    // 0x4370e8: r0 = call 0x2e3578
    //     0x4370e8: bl           0x2e3578
    //     0x4370ec: stur         r0, [fp, #-0x50]
    // 0x4370f0: StoreField: r0->field_7 = xzr
    //     0x4370f0: stur         xzr, [r0, #7]
    //     0x4370f4: fmov         d0, #20.00000000
    // 0x4370f8: StoreField: r0->field_f = d0
    //     0x4370f8: stur         d0, [r0, #0xf]
    // 0x4370fc: ArrayStore: r0[0] = xzr  ; List_8
    //     0x4370fc: stur         xzr, [r0, #0x17]
    // 0x437100: StoreField: r0->field_1f = xzr
    //     0x437100: stur         xzr, [r0, #0x1f]
    // 0x437104: r0 = call 0x31d844
    //     0x437104: bl           0x31d844
    // 0x437108: r1 = r0
    //     0x437108: mov          r1, r0
    // 0x43710c: r0 = pp[0x6310]
    //     0x43710c: ldr          r0, [PP, #0x6310]
    // 0x437110: StoreField: r1->field_27 = r0
    //     0x437110: stur         r0, [r1, #0x27]
    //     0x437114: fmov         d0, #1.00000000
    // 0x437118: StoreField: r1->field_7 = d0
    //     0x437118: stur         d0, [r1, #7]
    // 0x43711c: d1 = pp[0x6330]
    //     0x43711c: ldr          d1, [PP, #0x6330]
    // 0x437120: StoreField: r1->field_f = d1
    //     0x437120: stur         d1, [r1, #0xf]
    // 0x437124: d1 = pp[0x889]
    //     0x437124: add          r17, PP, #0x11, lsl #12
    //     0x437128: ldr          d1, [r17, #0x878]
    // 0x43712c: ArrayStore: r1[0] = d1  ; List_8
    //     0x43712c: stur         d1, [r1, #0x17]
    // 0x437130: d1 = pp[0xad0]
    //     0x437130: add          r17, PP, #0x10, lsl #12
    //     0x437134: ldr          d1, [r17, #0xac0]
    // 0x437138: StoreField: r1->field_1f = d1
    //     0x437138: stur         d1, [r1, #0x1f]
    // 0x43713c: BARRIER = pp[0xbc7]
    //     0x43713c: add          BARRIER, PP, #0xf, lsl #12
    //     0x437140: ldr          BARRIER, [BARRIER, #0xbb8]
    //     0x437144: str          BARRIER, [SP]
    // 0x437148: r2 = r1
    //     0x437148: mov          r2, r1
    // 0x43714c: r1 = NULL
    //     0x43714c: mov          r1, NULL
    // 0x437150: r4 = pp[0x827]
    //     0x437150: add          r4, PP, #0xf, lsl #12
    //     0x437154: ldr          r4, [r4, #0x818]
    // 0x437158: r0 = flutter$src$painting$box_border_Border::factory_ctor_all()
    //     0x437158: bl           0x391e08
    //     0x43715c: stur         r0, [fp, #-0x58]
    // 0x437160: r0 = call 0x352b04
    //     0x437160: bl           0x352b04
    //     0x437164: fmov         d0, #30.00000000
    //     0x437168: stur         r0, [fp, #-0x60]
    // 0x43716c: StoreField: r0->field_7 = d0
    //     0x43716c: stur         d0, [r0, #7]
    // 0x437170: StoreField: r0->field_f = d0
    //     0x437170: stur         d0, [r0, #0xf]
    // 0x437174: r0 = call 0x392f28
    //     0x437174: bl           0x392f28
    // 0x437178: r1 = r0
    //     0x437178: mov          r1, r0
    //     0x43717c: ldur         r0, [fp, #-0x60]
    //     0x437180: stur         r1, [fp, #-0x68]
    // 0x437184: StoreField: r1->field_7 = r0
    //     0x437184: stur         r0, [r1, #7]
    // 0x437188: StoreField: r1->field_b = r0
    //     0x437188: stur         r0, [r1, #0xb]
    // 0x43718c: StoreField: r1->field_f = r0
    //     0x43718c: stur         r0, [r1, #0xf]
    // 0x437190: StoreField: r1->field_13 = r0
    //     0x437190: stur         r0, [r1, #0x13]
    // 0x437194: r0 = call 0x391dd8
    //     0x437194: bl           0x391dd8
    // 0x437198: r1 = r0
    //     0x437198: mov          r1, r0
    //     0x43719c: ldur         r0, [fp, #-0x58]
    //     0x4371a0: stur         r1, [fp, #-0x60]
    // 0x4371a4: StoreField: r1->field_f = r0
    //     0x4371a4: stur         r0, [r1, #0xf]
    //     0x4371a8: ldur         r0, [fp, #-0x68]
    // 0x4371ac: StoreField: r1->field_13 = r0
    //     0x4371ac: stur         r0, [r1, #0x13]
    // 0x4371b0: r0 = pp[0xb86]
    //     0x4371b0: add          r0, PP, #0xe, lsl #12
    //     0x4371b4: ldr          r0, [r0, #0xb78]
    // 0x4371b8: StoreField: r1->field_23 = r0
    //     0x4371b8: stur         r0, [r1, #0x23]
    //     0x4371bc: ldur         r2, [fp, #-0x18]
    //     0x4371c0: cmp          r2, r22
    // 0x4371c4: b.eq 0x4371e4
    //     0x4371c4: b.eq         0x4371e4
    // 0x4371c8: LoadField: r3 = r2->field_7
    //     0x4371c8: ldur         r3, [r2, #7]
    //     0x4371cc: add          r3, r3, HEAP, lsl #32
    // 0x4371d0: BARRIER = pp[0x40]
    //     0x4371d0: ldr          BARRIER, [PP, #0x40]
    //     0x4371d4: cmp          r3, r16
    // 0x4371d8: b.eq 0x438450
    //     0x4371d8: b.eq         0x438450
    // 0x4371dc: r4 = r3
    //     0x4371dc: mov          r4, r3
    // 0x4371e0: b 0x4371e8
    //     0x4371e0: b            0x4371e8
    // 0x4371e4: r4 = pp[0x148]
    //     0x4371e4: ldr          r4, [PP, #0x148]
    //     0x4371e8: ldur         r3, [fp, #-0x48]
    //     0x4371ec: stur         r4, [fp, #-0x58]
    // 0x4371f0: r0 = call 0x3a67fc
    //     0x4371f0: bl           0x3a67fc
    // 0x4371f4: r1 = r0
    //     0x4371f4: mov          r1, r0
    //     0x4371f8: ldur         r0, [fp, #-0x58]
    //     0x4371fc: stur         r1, [fp, #-0x68]
    // 0x437200: StoreField: r1->field_b = r0
    //     0x437200: stur         r0, [r1, #0xb]
    // 0x437204: d0 = pp[0x891]
    //     0x437204: add          r17, PP, #0x11, lsl #12
    //     0x437208: ldr          d0, [r17, #0x880]
    // 0x43720c: StoreField: r1->field_13 = d0
    //     0x43720c: stur         d0, [r1, #0x13]
    //     0x437210: add          r0, NULL, #0x30
    // 0x437214: StoreField: r1->field_1b = r0
    //     0x437214: stur         r0, [r1, #0x1b]
    // 0x437218: r0 = call 0x391a04
    //     0x437218: bl           0x391a04
    //     0x43721c: stur         r0, [fp, #-0x58]
    // 0x437220: BARRIER = pp[0x360]
    //     0x437220: add          BARRIER, PP, #0x10, lsl #12
    //     0x437224: ldr          BARRIER, [BARRIER, #0x350]
    // 0x437228: lr = pp[0x360]
    //     0x437228: add          lr, PP, #0x10, lsl #12
    //     0x43722c: ldr          lr, [lr, #0x350]
    //     0x437230: stp          lr, BARRIER, [SP, #0x18]
    //     0x437234: ldur         BARRIER, [fp, #-0x50]
    //     0x437238: ldur         lr, [fp, #-0x60]
    //     0x43723c: stp          lr, BARRIER, [SP, #8]
    //     0x437240: ldur         BARRIER, [fp, #-0x68]
    //     0x437244: str          BARRIER, [SP]
    // 0x437248: r1 = r0
    //     0x437248: mov          r1, r0
    // 0x43724c: r4 = pp[0x899]
    //     0x43724c: add          r4, PP, #0x11, lsl #12
    //     0x437250: ldr          r4, [r4, #0x888]
    // 0x437254: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x437254: bl           0x391490
    // 0x437258: r1 = NULL
    //     0x437258: mov          r1, NULL
    //     0x43725c: mov          r2, #4
    // 0x437260: r0 = call 0x61f920
    //     0x437260: bl           0x61f920
    // 0x437264: r2 = r0
    //     0x437264: mov          r2, r0
    //     0x437268: ldur         r0, [fp, #-0x48]
    //     0x43726c: stur         r2, [fp, #-0x50]
    // 0x437270: StoreField: r2->field_f = r0
    //     0x437270: stur         r0, [r2, #0xf]
    //     0x437274: ldur         r0, [fp, #-0x58]
    // 0x437278: StoreField: r2->field_13 = r0
    //     0x437278: stur         r0, [r2, #0x13]
    // 0x43727c: r1 = pp[0x5c58]
    //     0x43727c: ldr          r1, [PP, #0x5c58]
    // 0x437280: r0 = call 0x61e854
    //     0x437280: bl           0x61e854
    // 0x437284: r1 = r0
    //     0x437284: mov          r1, r0
    //     0x437288: ldur         r0, [fp, #-0x50]
    //     0x43728c: stur         r1, [fp, #-0x48]
    // 0x437290: StoreField: r1->field_f = r0
    //     0x437290: stur         r0, [r1, #0xf]
    //     0x437294: mov          r2, #4
    // 0x437298: StoreField: r1->field_b = r2
    //     0x437298: stur         r2, [r1, #0xb]
    // 0x43729c: r0 = call 0x39e6f4
    //     0x43729c: bl           0x39e6f4
    // 0x4372a0: r1 = r0
    //     0x4372a0: mov          r1, r0
    // 0x4372a4: r0 = pp[0xaae]
    //     0x4372a4: add          r0, PP, #0xe, lsl #12
    //     0x4372a8: ldr          r0, [r0, #0xaa0]
    //     0x4372ac: stur         r1, [fp, #-0x50]
    // 0x4372b0: StoreField: r1->field_f = r0
    //     0x4372b0: stur         r0, [r1, #0xf]
    // 0x4372b4: r2 = pp[0xf16]
    //     0x4372b4: add          r2, PP, #0xe, lsl #12
    //     0x4372b8: ldr          r2, [r2, #0xf08]
    // 0x4372bc: ArrayStore: r1[0] = r2  ; List_8
    //     0x4372bc: stur         r2, [r1, #0x17]
    // 0x4372c0: r3 = pp[0xf1e]
    //     0x4372c0: add          r3, PP, #0xe, lsl #12
    //     0x4372c4: ldr          r3, [r3, #0xf10]
    // 0x4372c8: StoreField: r1->field_1b = r3
    //     0x4372c8: stur         r3, [r1, #0x1b]
    //     0x4372cc: ldur         r4, [fp, #-0x48]
    // 0x4372d0: StoreField: r1->field_b = r4
    //     0x4372d0: stur         r4, [r1, #0xb]
    // 0x4372d4: r0 = call 0x3949ec
    //     0x4372d4: bl           0x3949ec
    // 0x4372d8: r2 = r0
    //     0x4372d8: mov          r2, r0
    // 0x4372dc: r0 = pp[0xbc7]
    //     0x4372dc: add          r0, PP, #0xf, lsl #12
    //     0x4372e0: ldr          r0, [r0, #0xbb8]
    //     0x4372e4: stur         r2, [fp, #-0x48]
    // 0x4372e8: StoreField: r2->field_13 = r0
    //     0x4372e8: stur         r0, [r2, #0x13]
    //     0x4372ec: ldur         r3, [fp, #-0x18]
    //     0x4372f0: cmp          r3, r22
    // 0x4372f4: b.eq 0x437318
    //     0x4372f4: b.eq         0x437318
    // 0x4372f8: LoadField: r1 = r3->field_b
    //     0x4372f8: ldur         r1, [r3, #0xb]
    //     0x4372fc: add          r1, r1, HEAP, lsl #32
    // 0x437300: BARRIER = pp[0x40]
    //     0x437300: ldr          BARRIER, [PP, #0x40]
    //     0x437304: cmp          r1, r16
    // 0x437308: b.eq 0x43845c
    //     0x437308: b.eq         0x43845c
    // 0x43730c: r2 = r1
    //     0x43730c: mov          r2, r1
    // 0x437310: r0 = r3
    //     0x437310: mov          r0, r3
    // 0x437314: b 0x437330
    //     0x437314: b            0x437330
    // 0x437318: r1 = pp[0x894]
    //     0x437318: add          r1, PP, #0xc, lsl #12
    //     0x43731c: ldr          r1, [r1, #0x888]
    // 0x437320: r4 = pp[0x4c0]
    //     0x437320: ldr          r4, [PP, #0x4c0]
    // 0x437324: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x437324: bl           0x3a1dcc
    // 0x437328: r2 = r0
    //     0x437328: mov          r2, r0
    //     0x43732c: ldur         r0, [fp, #-0x18]
    //     0x437330: ldur         r1, [fp, #-8]
    // 0x437334: r0 = soul_flutter_international$biz$game$page_game_fruit_ranking__PageGameFruitRankingState::_userFlexibleWidget()
    //     0x437334: bl           0x438880
    //     0x437338: stur         r0, [fp, #-0x58]
    // 0x43733c: r0 = call 0x3949ec
    //     0x43733c: bl           0x3949ec
    // 0x437340: r4 = r0
    //     0x437340: mov          r4, r0
    // 0x437344: r0 = pp[0x950]
    //     0x437344: add          r0, PP, #0x10, lsl #12
    //     0x437348: ldr          r0, [r0, #0x940]
    //     0x43734c: stur         r4, [fp, #-0x60]
    // 0x437350: StoreField: r4->field_13 = r0
    //     0x437350: stur         r0, [r4, #0x13]
    //     0x437354: ldur         r1, [fp, #-0x18]
    //     0x437358: cmp          r1, r22
    // 0x43735c: b.eq 0x43738c
    //     0x43735c: b.eq         0x43738c
    // 0x437360: LoadField: r3 = r1->field_f
    //     0x437360: ldur         r3, [r1, #0xf]
    //     0x437364: add          r3, r3, HEAP, lsl #32
    // 0x437368: BARRIER = pp[0x40]
    //     0x437368: ldr          BARRIER, [PP, #0x40]
    //     0x43736c: cmp          r3, r16
    // 0x437370: b.eq 0x438468
    //     0x437370: b.eq         0x438468
    //     0x437374: ldur         r1, [fp, #-8]
    // 0x437378: r2 = pp[0x297]
    //     0x437378: add          r2, PP, #0xf, lsl #12
    //     0x43737c: ldr          r2, [r2, #0x288]
    // 0x437380: r0 = soul_flutter_international$biz$game$page_game_fruit_ranking__PageGameFruitRankingState::_coinLabelWidget()
    //     0x437380: bl           0x4386e8
    // 0x437384: r9 = r0
    //     0x437384: mov          r9, r0
    // 0x437388: b 0x4373a4
    //     0x437388: b            0x4373a4
    // 0x43738c: r0 = call 0x391a04
    //     0x43738c: bl           0x391a04
    // 0x437390: r1 = r0
    //     0x437390: mov          r1, r0
    //     0x437394: stur         r0, [fp, #-0x18]
    // 0x437398: r4 = pp[0x4c0]
    //     0x437398: ldr          r4, [PP, #0x4c0]
    // 0x43739c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43739c: bl           0x391490
    //     0x4373a0: ldur         r9, [fp, #-0x18]
    //     0x4373a4: ldur         d2, [fp, #-0x90]
    //     0x4373a8: ldur         d1, [fp, #-0x98]
    //     0x4373ac: ldur         r7, [fp, #-0x10]
    //     0x4373b0: ldur         r6, [fp, #-0x20]
    //     0x4373b4: ldur         d0, [fp, #-0xa0]
    //     0x4373b8: ldur         r5, [fp, #-0x50]
    //     0x4373bc: ldur         r4, [fp, #-0x48]
    //     0x4373c0: ldur         r3, [fp, #-0x58]
    //     0x4373c4: ldur         r0, [fp, #-0x60]
    //     0x4373c8: mov          r8, #0xa
    // 0x4373cc: r2 = r8
    //     0x4373cc: mov          r2, r8
    //     0x4373d0: stur         r9, [fp, #-0x18]
    // 0x4373d4: r1 = NULL
    //     0x4373d4: mov          r1, NULL
    // 0x4373d8: r0 = call 0x61f920
    //     0x4373d8: bl           0x61f920
    // 0x4373dc: r2 = r0
    //     0x4373dc: mov          r2, r0
    //     0x4373e0: ldur         r0, [fp, #-0x50]
    //     0x4373e4: stur         r2, [fp, #-0x68]
    // 0x4373e8: StoreField: r2->field_f = r0
    //     0x4373e8: stur         r0, [r2, #0xf]
    //     0x4373ec: ldur         r0, [fp, #-0x48]
    // 0x4373f0: StoreField: r2->field_13 = r0
    //     0x4373f0: stur         r0, [r2, #0x13]
    //     0x4373f4: ldur         r0, [fp, #-0x58]
    // 0x4373f8: ArrayStore: r2[0] = r0  ; List_8
    //     0x4373f8: stur         r0, [r2, #0x17]
    //     0x4373fc: ldur         r0, [fp, #-0x60]
    // 0x437400: StoreField: r2->field_1b = r0
    //     0x437400: stur         r0, [r2, #0x1b]
    //     0x437404: ldur         r0, [fp, #-0x18]
    // 0x437408: StoreField: r2->field_1f = r0
    //     0x437408: stur         r0, [r2, #0x1f]
    // 0x43740c: r1 = pp[0x5c58]
    //     0x43740c: ldr          r1, [PP, #0x5c58]
    // 0x437410: r0 = call 0x61e854
    //     0x437410: bl           0x61e854
    // 0x437414: r1 = r0
    //     0x437414: mov          r1, r0
    //     0x437418: ldur         r0, [fp, #-0x68]
    //     0x43741c: stur         r1, [fp, #-0x18]
    // 0x437420: StoreField: r1->field_f = r0
    //     0x437420: stur         r0, [r1, #0xf]
    //     0x437424: mov          r2, #0xa
    // 0x437428: StoreField: r1->field_b = r2
    //     0x437428: stur         r2, [r1, #0xb]
    // 0x43742c: r0 = call 0x39310c
    //     0x43742c: bl           0x39310c
    // 0x437430: r1 = r0
    //     0x437430: mov          r1, r0
    // 0x437434: r0 = pp[0x862]
    //     0x437434: add          r0, PP, #0xa, lsl #12
    //     0x437438: ldr          r0, [r0, #0x858]
    //     0x43743c: stur         r1, [fp, #-0x48]
    // 0x437440: StoreField: r1->field_f = r0
    //     0x437440: stur         r0, [r1, #0xf]
    // 0x437444: r2 = pp[0xaee]
    //     0x437444: add          r2, PP, #0xe, lsl #12
    //     0x437448: ldr          r2, [r2, #0xae0]
    // 0x43744c: StoreField: r1->field_13 = r2
    //     0x43744c: stur         r2, [r1, #0x13]
    // 0x437450: r3 = pp[0xaf6]
    //     0x437450: add          r3, PP, #0xe, lsl #12
    //     0x437454: ldr          r3, [r3, #0xae8]
    // 0x437458: ArrayStore: r1[0] = r3  ; List_8
    //     0x437458: stur         r3, [r1, #0x17]
    // 0x43745c: r4 = pp[0xb6e]
    //     0x43745c: add          r4, PP, #0xe, lsl #12
    //     0x437460: ldr          r4, [r4, #0xb60]
    // 0x437464: StoreField: r1->field_1b = r4
    //     0x437464: stur         r4, [r1, #0x1b]
    // 0x437468: r5 = pp[0xb06]
    //     0x437468: add          r5, PP, #0xe, lsl #12
    //     0x43746c: ldr          r5, [r5, #0xaf8]
    // 0x437470: StoreField: r1->field_23 = r5
    //     0x437470: stur         r5, [r1, #0x23]
    // 0x437474: r6 = pp[0xb2]
    //     0x437474: add          r6, PP, #0xa, lsl #12
    //     0x437478: ldr          r6, [r6, #0xa8]
    // 0x43747c: StoreField: r1->field_2b = r6
    //     0x43747c: stur         r6, [r1, #0x2b]
    // 0x437480: StoreField: r1->field_2f = xzr
    //     0x437480: stur         xzr, [r1, #0x2f]
    //     0x437484: ldur         r7, [fp, #-0x18]
    // 0x437488: StoreField: r1->field_b = r7
    //     0x437488: stur         r7, [r1, #0xb]
    //     0x43748c: ldur         d0, [fp, #-0x98]
    //     0x437490: ldp          r7, r8, [THR, #0x50]
    //     0x437494: add          r7, r7, #0x10
    //     0x437498: cmp          r8, r7
    // 0x43749c: b.ls 0x438474
    //     0x43749c: b.ls         0x438474
    //     0x4374a0: str          r7, [THR, #0x50]
    //     0x4374a4: sub          r7, r7, #0xf
    //     0x4374a8: mov          r8, #0xe15c
    //     0x4374ac: movk         r8, #3, lsl #16
    //     0x4374b0: stur         r8, [r7, #-1]
    // 0x4374b4: StoreField: r7->field_7 = d0
    //     0x4374b4: stur         d0, [r7, #7]
    //     0x4374b8: stur         r7, [fp, #-0x18]
    // 0x4374bc: r0 = call 0x391a04
    //     0x4374bc: bl           0x391a04
    //     0x4374c0: stur         r0, [fp, #-0x50]
    //     0x4374c4: ldur         BARRIER, [fp, #-0x38]
    //     0x4374c8: ldur         lr, [fp, #-0x40]
    //     0x4374cc: stp          lr, BARRIER, [SP, #0x10]
    //     0x4374d0: ldur         BARRIER, [fp, #-0x18]
    //     0x4374d4: ldur         lr, [fp, #-0x48]
    //     0x4374d8: stp          lr, BARRIER, [SP]
    // 0x4374dc: r1 = r0
    //     0x4374dc: mov          r1, r0
    // 0x4374e0: r4 = pp[0x8a1]
    //     0x4374e0: add          r4, PP, #0x11, lsl #12
    //     0x4374e4: ldr          r4, [r4, #0x890]
    // 0x4374e8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4374e8: bl           0x391490
    // 0x4374ec: r0 = call 0x3949ec
    //     0x4374ec: bl           0x3949ec
    // 0x4374f0: r1 = r0
    //     0x4374f0: mov          r1, r0
    // 0x4374f4: r0 = pp[0x8a9]
    //     0x4374f4: add          r0, PP, #0x11, lsl #12
    //     0x4374f8: ldr          r0, [r0, #0x898]
    //     0x4374fc: stur         r1, [fp, #-0x38]
    // 0x437500: StoreField: r1->field_f = r0
    //     0x437500: stur         r0, [r1, #0xf]
    // 0x437504: r0 = call 0x31d844
    //     0x437504: bl           0x31d844
    // 0x437508: r1 = r0
    //     0x437508: mov          r1, r0
    // 0x43750c: r0 = pp[0x6310]
    //     0x43750c: ldr          r0, [PP, #0x6310]
    //     0x437510: stur         r1, [fp, #-0x40]
    // 0x437514: StoreField: r1->field_27 = r0
    //     0x437514: stur         r0, [r1, #0x27]
    // 0x437518: d0 = pp[0x851]
    //     0x437518: add          r17, PP, #0x11, lsl #12
    //     0x43751c: ldr          d0, [r17, #0x840]
    // 0x437520: StoreField: r1->field_7 = d0
    //     0x437520: stur         d0, [r1, #7]
    //     0x437524: fmov         d1, #1.00000000
    // 0x437528: StoreField: r1->field_f = d1
    //     0x437528: stur         d1, [r1, #0xf]
    // 0x43752c: d2 = pp[0x2ec]
    //     0x43752c: add          r17, PP, #0xc, lsl #12
    //     0x437530: ldr          d2, [r17, #0x2e0]
    // 0x437534: ArrayStore: r1[0] = d2  ; List_8
    //     0x437534: stur         d2, [r1, #0x17]
    // 0x437538: d3 = pp[0x859]
    //     0x437538: add          r17, PP, #0x11, lsl #12
    //     0x43753c: ldr          d3, [r17, #0x848]
    // 0x437540: StoreField: r1->field_1f = d3
    //     0x437540: stur         d3, [r1, #0x1f]
    // 0x437544: r0 = call 0x31d844
    //     0x437544: bl           0x31d844
    // 0x437548: r3 = r0
    //     0x437548: mov          r3, r0
    // 0x43754c: r0 = pp[0x6310]
    //     0x43754c: ldr          r0, [PP, #0x6310]
    //     0x437550: stur         r3, [fp, #-0x48]
    // 0x437554: StoreField: r3->field_27 = r0
    //     0x437554: stur         r0, [r3, #0x27]
    // 0x437558: StoreField: r3->field_7 = xzr
    //     0x437558: stur         xzr, [r3, #7]
    //     0x43755c: fmov         d0, #1.00000000
    // 0x437560: StoreField: r3->field_f = d0
    //     0x437560: stur         d0, [r3, #0xf]
    // 0x437564: d1 = pp[0x2ec]
    //     0x437564: add          r17, PP, #0xc, lsl #12
    //     0x437568: ldr          d1, [r17, #0x2e0]
    // 0x43756c: ArrayStore: r3[0] = d1  ; List_8
    //     0x43756c: stur         d1, [r3, #0x17]
    // 0x437570: d1 = pp[0x859]
    //     0x437570: add          r17, PP, #0x11, lsl #12
    //     0x437574: ldr          d1, [r17, #0x848]
    // 0x437578: StoreField: r3->field_1f = d1
    //     0x437578: stur         d1, [r3, #0x1f]
    // 0x43757c: r1 = NULL
    //     0x43757c: mov          r1, NULL
    //     0x437580: mov          r2, #4
    // 0x437584: r0 = call 0x61f920
    //     0x437584: bl           0x61f920
    // 0x437588: r2 = r0
    //     0x437588: mov          r2, r0
    //     0x43758c: ldur         r0, [fp, #-0x40]
    //     0x437590: stur         r2, [fp, #-0x58]
    // 0x437594: StoreField: r2->field_f = r0
    //     0x437594: stur         r0, [r2, #0xf]
    //     0x437598: ldur         r0, [fp, #-0x48]
    // 0x43759c: StoreField: r2->field_13 = r0
    //     0x43759c: stur         r0, [r2, #0x13]
    // 0x4375a0: r1 = pp[0xc68]
    //     0x4375a0: add          r1, PP, #0x10, lsl #12
    //     0x4375a4: ldr          r1, [r1, #0xc58]
    // 0x4375a8: r0 = call 0x61e854
    //     0x4375a8: bl           0x61e854
    // 0x4375ac: r1 = r0
    //     0x4375ac: mov          r1, r0
    //     0x4375b0: ldur         r0, [fp, #-0x58]
    //     0x4375b4: stur         r1, [fp, #-0x40]
    // 0x4375b8: StoreField: r1->field_f = r0
    //     0x4375b8: stur         r0, [r1, #0xf]
    //     0x4375bc: mov          r2, #4
    // 0x4375c0: StoreField: r1->field_b = r2
    //     0x4375c0: stur         r2, [r1, #0xb]
    // 0x4375c4: r0 = call 0x3a108c
    //     0x4375c4: bl           0x3a108c
    // 0x4375c8: r1 = r0
    //     0x4375c8: mov          r1, r0
    // 0x4375cc: r0 = pp[0xc78]
    //     0x4375cc: add          r0, PP, #0x10, lsl #12
    //     0x4375d0: ldr          r0, [r0, #0xc68]
    //     0x4375d4: stur         r1, [fp, #-0x48]
    // 0x4375d8: StoreField: r1->field_13 = r0
    //     0x4375d8: stur         r0, [r1, #0x13]
    // 0x4375dc: r2 = pp[0xc80]
    //     0x4375dc: add          r2, PP, #0x10, lsl #12
    //     0x4375e0: ldr          r2, [r2, #0xc70]
    // 0x4375e4: ArrayStore: r1[0] = r2  ; List_8
    //     0x4375e4: stur         r2, [r1, #0x17]
    // 0x4375e8: r3 = pp[0xc88]
    //     0x4375e8: add          r3, PP, #0x10, lsl #12
    //     0x4375ec: ldr          r3, [r3, #0xc78]
    // 0x4375f0: StoreField: r1->field_1b = r3
    //     0x4375f0: stur         r3, [r1, #0x1b]
    //     0x4375f4: ldur         r4, [fp, #-0x40]
    // 0x4375f8: StoreField: r1->field_7 = r4
    //     0x4375f8: stur         r4, [r1, #7]
    //     0x4375fc: ldur         d1, [fp, #-0x90]
    //     0x437600: fmov         d0, #0.50000000
    //     0x437604: fmul         d2, d1, d0
    //     0x437608: stur         d2, [fp, #-0x98]
    // 0x43760c: r0 = call 0x352b04
    //     0x43760c: bl           0x352b04
    //     0x437610: ldur         d0, [fp, #-0x98]
    //     0x437614: stur         r0, [fp, #-0x40]
    // 0x437618: StoreField: r0->field_7 = d0
    //     0x437618: stur         d0, [r0, #7]
    // 0x43761c: StoreField: r0->field_f = d0
    //     0x43761c: stur         d0, [r0, #0xf]
    // 0x437620: r0 = call 0x352b04
    //     0x437620: bl           0x352b04
    //     0x437624: ldur         d0, [fp, #-0x98]
    //     0x437628: stur         r0, [fp, #-0x58]
    // 0x43762c: StoreField: r0->field_7 = d0
    //     0x43762c: stur         d0, [r0, #7]
    // 0x437630: StoreField: r0->field_f = d0
    //     0x437630: stur         d0, [r0, #0xf]
    // 0x437634: r0 = call 0x392f28
    //     0x437634: bl           0x392f28
    // 0x437638: r1 = r0
    //     0x437638: mov          r1, r0
    //     0x43763c: ldur         r0, [fp, #-0x40]
    //     0x437640: stur         r1, [fp, #-0x60]
    // 0x437644: StoreField: r1->field_7 = r0
    //     0x437644: stur         r0, [r1, #7]
    //     0x437648: ldur         r0, [fp, #-0x58]
    // 0x43764c: StoreField: r1->field_b = r0
    //     0x43764c: stur         r0, [r1, #0xb]
    // 0x437650: r0 = pp[0x51a]
    //     0x437650: add          r0, PP, #0xa, lsl #12
    //     0x437654: ldr          r0, [r0, #0x510]
    // 0x437658: StoreField: r1->field_f = r0
    //     0x437658: stur         r0, [r1, #0xf]
    // 0x43765c: StoreField: r1->field_13 = r0
    //     0x43765c: stur         r0, [r1, #0x13]
    // 0x437660: r0 = call 0x391dd8
    //     0x437660: bl           0x391dd8
    // 0x437664: r1 = r0
    //     0x437664: mov          r1, r0
    //     0x437668: ldur         r0, [fp, #-0x60]
    //     0x43766c: stur         r1, [fp, #-0x40]
    // 0x437670: StoreField: r1->field_13 = r0
    //     0x437670: stur         r0, [r1, #0x13]
    //     0x437674: ldur         r0, [fp, #-0x48]
    // 0x437678: StoreField: r1->field_1b = r0
    //     0x437678: stur         r0, [r1, #0x1b]
    // 0x43767c: r0 = pp[0xb86]
    //     0x43767c: add          r0, PP, #0xe, lsl #12
    //     0x437680: ldr          r0, [r0, #0xb78]
    // 0x437684: StoreField: r1->field_23 = r0
    //     0x437684: stur         r0, [r1, #0x23]
    // 0x437688: r0 = call 0x3a142c
    //     0x437688: bl           0x3a142c
    // 0x43768c: r1 = r0
    //     0x43768c: mov          r1, r0
    // 0x437690: r0 = pp[0x8b1]
    //     0x437690: add          r0, PP, #0x11, lsl #12
    //     0x437694: ldr          r0, [r0, #0x8a0]
    //     0x437698: stur         r1, [fp, #-0x48]
    // 0x43769c: StoreField: r1->field_b = r0
    //     0x43769c: stur         r0, [r1, #0xb]
    // 0x4376a0: r0 = pp[0x17f]
    //     0x4376a0: add          r0, PP, #0xf, lsl #12
    //     0x4376a4: ldr          r0, [r0, #0x170]
    // 0x4376a8: StoreField: r1->field_f = r0
    //     0x4376a8: stur         r0, [r1, #0xf]
    // 0x4376ac: r2 = pp[0xb76]
    //     0x4376ac: add          r2, PP, #0xe, lsl #12
    //     0x4376b0: ldr          r2, [r2, #0xb68]
    // 0x4376b4: StoreField: r1->field_13 = r2
    //     0x4376b4: stur         r2, [r1, #0x13]
    // 0x4376b8: r2 = pp[0x31f]
    //     0x4376b8: add          r2, PP, #0xf, lsl #12
    //     0x4376bc: ldr          r2, [r2, #0x310]
    // 0x4376c0: ArrayStore: r1[0] = r2  ; List_8
    //     0x4376c0: stur         r2, [r1, #0x17]
    // 0x4376c4: r0 = call 0x391a04
    //     0x4376c4: bl           0x391a04
    //     0x4376c8: stur         r0, [fp, #-0x58]
    // 0x4376cc: BARRIER = pp[0xb76]
    //     0x4376cc: add          BARRIER, PP, #0xe, lsl #12
    //     0x4376d0: ldr          BARRIER, [BARRIER, #0xb68]
    // 0x4376d4: lr = pp[0x31f]
    //     0x4376d4: add          lr, PP, #0xf, lsl #12
    //     0x4376d8: ldr          lr, [lr, #0x310]
    //     0x4376dc: stp          lr, BARRIER, [SP, #8]
    //     0x4376e0: ldur         BARRIER, [fp, #-0x48]
    //     0x4376e4: str          BARRIER, [SP]
    // 0x4376e8: r1 = r0
    //     0x4376e8: mov          r1, r0
    // 0x4376ec: r4 = pp[0x879]
    //     0x4376ec: add          r4, PP, #0x11, lsl #12
    //     0x4376f0: ldr          r4, [r4, #0x868]
    // 0x4376f4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4376f4: bl           0x391490
    // 0x4376f8: r1 = pp[0x5e7]
    //     0x4376f8: add          r1, PP, #0xf, lsl #12
    //     0x4376fc: ldr          r1, [r1, #0x5d8]
    // 0x437700: r0 = call 0x399e40
    //     0x437700: bl           0x399e40
    // 0x437704: r1 = r0
    //     0x437704: mov          r1, r0
    // 0x437708: r0 = pp[0x8a9]
    //     0x437708: add          r0, PP, #0x11, lsl #12
    //     0x43770c: ldr          r0, [r0, #0x898]
    //     0x437710: stur         r1, [fp, #-0x48]
    // 0x437714: ArrayStore: r1[0] = r0  ; List_8
    //     0x437714: stur         r0, [r1, #0x17]
    //     0x437718: ldur         r2, [fp, #-0x58]
    // 0x43771c: StoreField: r1->field_b = r2
    //     0x43771c: stur         r2, [r1, #0xb]
    // 0x437720: r0 = call 0x2e3578
    //     0x437720: bl           0x2e3578
    //     0x437724: stur         r0, [fp, #-0x58]
    // 0x437728: StoreField: r0->field_7 = xzr
    //     0x437728: stur         xzr, [r0, #7]
    // 0x43772c: d0 = pp[0x8b9]
    //     0x43772c: add          r17, PP, #0x11, lsl #12
    //     0x437730: ldr          d0, [r17, #0x8a8]
    // 0x437734: StoreField: r0->field_f = d0
    //     0x437734: stur         d0, [r0, #0xf]
    // 0x437738: ArrayStore: r0[0] = xzr  ; List_8
    //     0x437738: stur         xzr, [r0, #0x17]
    // 0x43773c: StoreField: r0->field_1f = xzr
    //     0x43773c: stur         xzr, [r0, #0x1f]
    // 0x437740: r0 = call 0x31d844
    //     0x437740: bl           0x31d844
    // 0x437744: r1 = r0
    //     0x437744: mov          r1, r0
    // 0x437748: r0 = pp[0x6310]
    //     0x437748: ldr          r0, [PP, #0x6310]
    // 0x43774c: StoreField: r1->field_27 = r0
    //     0x43774c: stur         r0, [r1, #0x27]
    //     0x437750: fmov         d0, #1.00000000
    // 0x437754: StoreField: r1->field_7 = d0
    //     0x437754: stur         d0, [r1, #7]
    // 0x437758: StoreField: r1->field_f = d0
    //     0x437758: stur         d0, [r1, #0xf]
    // 0x43775c: d1 = pp[0x2e4]
    //     0x43775c: add          r17, PP, #0xc, lsl #12
    //     0x437760: ldr          d1, [r17, #0x2d8]
    // 0x437764: ArrayStore: r1[0] = d1  ; List_8
    //     0x437764: stur         d1, [r1, #0x17]
    // 0x437768: d1 = pp[0xdde]
    //     0x437768: add          r17, PP, #0xe, lsl #12
    //     0x43776c: ldr          d1, [r17, #0xdd0]
    // 0x437770: StoreField: r1->field_1f = d1
    //     0x437770: stur         d1, [r1, #0x1f]
    // 0x437774: BARRIER = pp[0xbc7]
    //     0x437774: add          BARRIER, PP, #0xf, lsl #12
    //     0x437778: ldr          BARRIER, [BARRIER, #0xbb8]
    //     0x43777c: str          BARRIER, [SP]
    // 0x437780: r2 = r1
    //     0x437780: mov          r2, r1
    // 0x437784: r1 = NULL
    //     0x437784: mov          r1, NULL
    // 0x437788: r4 = pp[0x827]
    //     0x437788: add          r4, PP, #0xf, lsl #12
    //     0x43778c: ldr          r4, [r4, #0x818]
    // 0x437790: r0 = flutter$src$painting$box_border_Border::factory_ctor_all()
    //     0x437790: bl           0x391e08
    //     0x437794: stur         r0, [fp, #-0x60]
    // 0x437798: r0 = call 0x352b04
    //     0x437798: bl           0x352b04
    // 0x43779c: d0 = pp[0x6098]
    //     0x43779c: ldr          d0, [PP, #0x6098]
    //     0x4377a0: stur         r0, [fp, #-0x68]
    // 0x4377a4: StoreField: r0->field_7 = d0
    //     0x4377a4: stur         d0, [r0, #7]
    // 0x4377a8: StoreField: r0->field_f = d0
    //     0x4377a8: stur         d0, [r0, #0xf]
    // 0x4377ac: r0 = call 0x392f28
    //     0x4377ac: bl           0x392f28
    // 0x4377b0: r1 = r0
    //     0x4377b0: mov          r1, r0
    //     0x4377b4: ldur         r0, [fp, #-0x68]
    //     0x4377b8: stur         r1, [fp, #-0x70]
    // 0x4377bc: StoreField: r1->field_7 = r0
    //     0x4377bc: stur         r0, [r1, #7]
    // 0x4377c0: StoreField: r1->field_b = r0
    //     0x4377c0: stur         r0, [r1, #0xb]
    // 0x4377c4: StoreField: r1->field_f = r0
    //     0x4377c4: stur         r0, [r1, #0xf]
    // 0x4377c8: StoreField: r1->field_13 = r0
    //     0x4377c8: stur         r0, [r1, #0x13]
    // 0x4377cc: r0 = call 0x391dd8
    //     0x4377cc: bl           0x391dd8
    // 0x4377d0: r1 = r0
    //     0x4377d0: mov          r1, r0
    //     0x4377d4: ldur         r0, [fp, #-0x60]
    //     0x4377d8: stur         r1, [fp, #-0x68]
    // 0x4377dc: StoreField: r1->field_f = r0
    //     0x4377dc: stur         r0, [r1, #0xf]
    //     0x4377e0: ldur         r0, [fp, #-0x70]
    // 0x4377e4: StoreField: r1->field_13 = r0
    //     0x4377e4: stur         r0, [r1, #0x13]
    // 0x4377e8: r0 = pp[0xb86]
    //     0x4377e8: add          r0, PP, #0xe, lsl #12
    //     0x4377ec: ldr          r0, [r0, #0xb78]
    // 0x4377f0: StoreField: r1->field_23 = r0
    //     0x4377f0: stur         r0, [r1, #0x23]
    //     0x4377f4: ldur         r2, [fp, #-0x10]
    // 0x4377f8: LoadField: r3 = r2->field_7
    //     0x4377f8: ldur         r3, [r2, #7]
    //     0x4377fc: add          r3, r3, HEAP, lsl #32
    // 0x437800: BARRIER = pp[0x40]
    //     0x437800: ldr          BARRIER, [PP, #0x40]
    //     0x437804: cmp          r3, r16
    // 0x437808: b.eq 0x4384a8
    //     0x437808: b.eq         0x4384a8
    //     0x43780c: stur         r3, [fp, #-0x60]
    // 0x437810: r0 = call 0x3a67fc
    //     0x437810: bl           0x3a67fc
    // 0x437814: r1 = r0
    //     0x437814: mov          r1, r0
    //     0x437818: ldur         r0, [fp, #-0x60]
    //     0x43781c: stur         r1, [fp, #-0x70]
    // 0x437820: StoreField: r1->field_b = r0
    //     0x437820: stur         r0, [r1, #0xb]
    // 0x437824: d0 = pp[0x8c1]
    //     0x437824: add          r17, PP, #0x11, lsl #12
    //     0x437828: ldr          d0, [r17, #0x8b0]
    // 0x43782c: StoreField: r1->field_13 = d0
    //     0x43782c: stur         d0, [r1, #0x13]
    //     0x437830: add          r0, NULL, #0x30
    // 0x437834: StoreField: r1->field_1b = r0
    //     0x437834: stur         r0, [r1, #0x1b]
    // 0x437838: r0 = call 0x391a04
    //     0x437838: bl           0x391a04
    //     0x43783c: stur         r0, [fp, #-0x60]
    // 0x437840: BARRIER = pp[0x8c9]
    //     0x437840: add          BARRIER, PP, #0x11, lsl #12
    //     0x437844: ldr          BARRIER, [BARRIER, #0x8b8]
    // 0x437848: lr = pp[0x8c9]
    //     0x437848: add          lr, PP, #0x11, lsl #12
    //     0x43784c: ldr          lr, [lr, #0x8b8]
    //     0x437850: stp          lr, BARRIER, [SP, #0x18]
    //     0x437854: ldur         BARRIER, [fp, #-0x58]
    //     0x437858: ldur         lr, [fp, #-0x68]
    //     0x43785c: stp          lr, BARRIER, [SP, #8]
    //     0x437860: ldur         BARRIER, [fp, #-0x70]
    //     0x437864: str          BARRIER, [SP]
    // 0x437868: r1 = r0
    //     0x437868: mov          r1, r0
    // 0x43786c: r4 = pp[0x899]
    //     0x43786c: add          r4, PP, #0x11, lsl #12
    //     0x437870: ldr          r4, [r4, #0x888]
    // 0x437874: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x437874: bl           0x391490
    // 0x437878: r1 = NULL
    //     0x437878: mov          r1, NULL
    //     0x43787c: mov          r2, #4
    // 0x437880: r0 = call 0x61f920
    //     0x437880: bl           0x61f920
    // 0x437884: r2 = r0
    //     0x437884: mov          r2, r0
    //     0x437888: ldur         r0, [fp, #-0x48]
    //     0x43788c: stur         r2, [fp, #-0x58]
    // 0x437890: StoreField: r2->field_f = r0
    //     0x437890: stur         r0, [r2, #0xf]
    //     0x437894: ldur         r0, [fp, #-0x60]
    // 0x437898: StoreField: r2->field_13 = r0
    //     0x437898: stur         r0, [r2, #0x13]
    // 0x43789c: r1 = pp[0x5c58]
    //     0x43789c: ldr          r1, [PP, #0x5c58]
    // 0x4378a0: r0 = call 0x61e854
    //     0x4378a0: bl           0x61e854
    // 0x4378a4: r1 = r0
    //     0x4378a4: mov          r1, r0
    //     0x4378a8: ldur         r0, [fp, #-0x58]
    //     0x4378ac: stur         r1, [fp, #-0x48]
    // 0x4378b0: StoreField: r1->field_f = r0
    //     0x4378b0: stur         r0, [r1, #0xf]
    //     0x4378b4: mov          r2, #4
    // 0x4378b8: StoreField: r1->field_b = r2
    //     0x4378b8: stur         r2, [r1, #0xb]
    // 0x4378bc: r0 = call 0x39e6f4
    //     0x4378bc: bl           0x39e6f4
    // 0x4378c0: r1 = r0
    //     0x4378c0: mov          r1, r0
    // 0x4378c4: r0 = pp[0xaae]
    //     0x4378c4: add          r0, PP, #0xe, lsl #12
    //     0x4378c8: ldr          r0, [r0, #0xaa0]
    //     0x4378cc: stur         r1, [fp, #-0x58]
    // 0x4378d0: StoreField: r1->field_f = r0
    //     0x4378d0: stur         r0, [r1, #0xf]
    // 0x4378d4: r2 = pp[0xf16]
    //     0x4378d4: add          r2, PP, #0xe, lsl #12
    //     0x4378d8: ldr          r2, [r2, #0xf08]
    // 0x4378dc: ArrayStore: r1[0] = r2  ; List_8
    //     0x4378dc: stur         r2, [r1, #0x17]
    // 0x4378e0: r3 = pp[0xf1e]
    //     0x4378e0: add          r3, PP, #0xe, lsl #12
    //     0x4378e4: ldr          r3, [r3, #0xf10]
    // 0x4378e8: StoreField: r1->field_1b = r3
    //     0x4378e8: stur         r3, [r1, #0x1b]
    //     0x4378ec: ldur         r4, [fp, #-0x48]
    // 0x4378f0: StoreField: r1->field_b = r4
    //     0x4378f0: stur         r4, [r1, #0xb]
    // 0x4378f4: r0 = call 0x3949ec
    //     0x4378f4: bl           0x3949ec
    // 0x4378f8: r3 = r0
    //     0x4378f8: mov          r3, r0
    // 0x4378fc: r0 = pp[0xbc7]
    //     0x4378fc: add          r0, PP, #0xf, lsl #12
    //     0x437900: ldr          r0, [r0, #0xbb8]
    //     0x437904: stur         r3, [fp, #-0x48]
    // 0x437908: StoreField: r3->field_13 = r0
    //     0x437908: stur         r0, [r3, #0x13]
    //     0x43790c: ldur         r4, [fp, #-0x10]
    // 0x437910: LoadField: r2 = r4->field_b
    //     0x437910: ldur         r2, [r4, #0xb]
    //     0x437914: add          r2, r2, HEAP, lsl #32
    // 0x437918: BARRIER = pp[0x40]
    //     0x437918: ldr          BARRIER, [PP, #0x40]
    //     0x43791c: cmp          r2, r16
    // 0x437920: b.eq 0x4384b4
    //     0x437920: b.eq         0x4384b4
    //     0x437924: ldur         r1, [fp, #-8]
    // 0x437928: r0 = soul_flutter_international$biz$game$page_game_fruit_ranking__PageGameFruitRankingState::_userFlexibleWidget()
    //     0x437928: bl           0x438880
    //     0x43792c: stur         r0, [fp, #-0x60]
    // 0x437930: r0 = call 0x3949ec
    //     0x437930: bl           0x3949ec
    // 0x437934: r4 = r0
    //     0x437934: mov          r4, r0
    // 0x437938: r0 = pp[0x950]
    //     0x437938: add          r0, PP, #0x10, lsl #12
    //     0x43793c: ldr          r0, [r0, #0x940]
    //     0x437940: stur         r4, [fp, #-0x68]
    // 0x437944: StoreField: r4->field_13 = r0
    //     0x437944: stur         r0, [r4, #0x13]
    //     0x437948: ldur         r1, [fp, #-0x10]
    // 0x43794c: LoadField: r3 = r1->field_f
    //     0x43794c: ldur         r3, [r1, #0xf]
    //     0x437950: add          r3, r3, HEAP, lsl #32
    // 0x437954: BARRIER = pp[0x40]
    //     0x437954: ldr          BARRIER, [PP, #0x40]
    //     0x437958: cmp          r3, r16
    // 0x43795c: b.eq 0x4384c0
    //     0x43795c: b.eq         0x4384c0
    //     0x437960: ldur         r1, [fp, #-8]
    // 0x437964: r2 = pp[0x297]
    //     0x437964: add          r2, PP, #0xf, lsl #12
    //     0x437968: ldr          r2, [r2, #0x288]
    // 0x43796c: r0 = soul_flutter_international$biz$game$page_game_fruit_ranking__PageGameFruitRankingState::_coinLabelWidget()
    //     0x43796c: bl           0x4386e8
    // 0x437970: r1 = NULL
    //     0x437970: mov          r1, NULL
    //     0x437974: mov          r2, #0xa
    //     0x437978: stur         r0, [fp, #-0x10]
    // 0x43797c: r0 = call 0x61f920
    //     0x43797c: bl           0x61f920
    // 0x437980: r2 = r0
    //     0x437980: mov          r2, r0
    //     0x437984: ldur         r0, [fp, #-0x58]
    //     0x437988: stur         r2, [fp, #-0x70]
    // 0x43798c: StoreField: r2->field_f = r0
    //     0x43798c: stur         r0, [r2, #0xf]
    //     0x437990: ldur         r0, [fp, #-0x48]
    // 0x437994: StoreField: r2->field_13 = r0
    //     0x437994: stur         r0, [r2, #0x13]
    //     0x437998: ldur         r0, [fp, #-0x60]
    // 0x43799c: ArrayStore: r2[0] = r0  ; List_8
    //     0x43799c: stur         r0, [r2, #0x17]
    //     0x4379a0: ldur         r0, [fp, #-0x68]
    // 0x4379a4: StoreField: r2->field_1b = r0
    //     0x4379a4: stur         r0, [r2, #0x1b]
    //     0x4379a8: ldur         r0, [fp, #-0x10]
    // 0x4379ac: StoreField: r2->field_1f = r0
    //     0x4379ac: stur         r0, [r2, #0x1f]
    // 0x4379b0: r1 = pp[0x5c58]
    //     0x4379b0: ldr          r1, [PP, #0x5c58]
    // 0x4379b4: r0 = call 0x61e854
    //     0x4379b4: bl           0x61e854
    // 0x4379b8: r1 = r0
    //     0x4379b8: mov          r1, r0
    //     0x4379bc: ldur         r0, [fp, #-0x70]
    //     0x4379c0: stur         r1, [fp, #-0x10]
    // 0x4379c4: StoreField: r1->field_f = r0
    //     0x4379c4: stur         r0, [r1, #0xf]
    //     0x4379c8: mov          r2, #0xa
    // 0x4379cc: StoreField: r1->field_b = r2
    //     0x4379cc: stur         r2, [r1, #0xb]
    // 0x4379d0: r0 = call 0x39310c
    //     0x4379d0: bl           0x39310c
    // 0x4379d4: r1 = r0
    //     0x4379d4: mov          r1, r0
    // 0x4379d8: r0 = pp[0x862]
    //     0x4379d8: add          r0, PP, #0xa, lsl #12
    //     0x4379dc: ldr          r0, [r0, #0x858]
    //     0x4379e0: stur         r1, [fp, #-0x48]
    // 0x4379e4: StoreField: r1->field_f = r0
    //     0x4379e4: stur         r0, [r1, #0xf]
    // 0x4379e8: r2 = pp[0xaee]
    //     0x4379e8: add          r2, PP, #0xe, lsl #12
    //     0x4379ec: ldr          r2, [r2, #0xae0]
    // 0x4379f0: StoreField: r1->field_13 = r2
    //     0x4379f0: stur         r2, [r1, #0x13]
    // 0x4379f4: r3 = pp[0xaf6]
    //     0x4379f4: add          r3, PP, #0xe, lsl #12
    //     0x4379f8: ldr          r3, [r3, #0xae8]
    // 0x4379fc: ArrayStore: r1[0] = r3  ; List_8
    //     0x4379fc: stur         r3, [r1, #0x17]
    // 0x437a00: r4 = pp[0xb6e]
    //     0x437a00: add          r4, PP, #0xe, lsl #12
    //     0x437a04: ldr          r4, [r4, #0xb60]
    // 0x437a08: StoreField: r1->field_1b = r4
    //     0x437a08: stur         r4, [r1, #0x1b]
    // 0x437a0c: r5 = pp[0xb06]
    //     0x437a0c: add          r5, PP, #0xe, lsl #12
    //     0x437a10: ldr          r5, [r5, #0xaf8]
    // 0x437a14: StoreField: r1->field_23 = r5
    //     0x437a14: stur         r5, [r1, #0x23]
    // 0x437a18: r6 = pp[0xb2]
    //     0x437a18: add          r6, PP, #0xa, lsl #12
    //     0x437a1c: ldr          r6, [r6, #0xa8]
    // 0x437a20: StoreField: r1->field_2b = r6
    //     0x437a20: stur         r6, [r1, #0x2b]
    // 0x437a24: StoreField: r1->field_2f = xzr
    //     0x437a24: stur         xzr, [r1, #0x2f]
    //     0x437a28: ldur         r7, [fp, #-0x10]
    // 0x437a2c: StoreField: r1->field_b = r7
    //     0x437a2c: stur         r7, [r1, #0xb]
    //     0x437a30: ldur         d0, [fp, #-0x90]
    //     0x437a34: ldp          r7, r8, [THR, #0x50]
    //     0x437a38: add          r7, r7, #0x10
    //     0x437a3c: cmp          r8, r7
    // 0x437a40: b.ls 0x4384cc
    //     0x437a40: b.ls         0x4384cc
    //     0x437a44: str          r7, [THR, #0x50]
    //     0x437a48: sub          r7, r7, #0xf
    //     0x437a4c: mov          r8, #0xe15c
    //     0x437a50: movk         r8, #3, lsl #16
    //     0x437a54: stur         r8, [r7, #-1]
    // 0x437a58: StoreField: r7->field_7 = d0
    //     0x437a58: stur         d0, [r7, #7]
    //     0x437a5c: stur         r7, [fp, #-0x10]
    // 0x437a60: r0 = call 0x391a04
    //     0x437a60: bl           0x391a04
    //     0x437a64: stur         r0, [fp, #-0x58]
    //     0x437a68: ldur         BARRIER, [fp, #-0x40]
    //     0x437a6c: ldur         lr, [fp, #-0x10]
    //     0x437a70: stp          lr, BARRIER, [SP, #8]
    //     0x437a74: ldur         BARRIER, [fp, #-0x48]
    //     0x437a78: str          BARRIER, [SP]
    // 0x437a7c: r1 = r0
    //     0x437a7c: mov          r1, r0
    // 0x437a80: r4 = pp[0x8d1]
    //     0x437a80: add          r4, PP, #0x11, lsl #12
    //     0x437a84: ldr          r4, [r4, #0x8c0]
    // 0x437a88: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x437a88: bl           0x391490
    // 0x437a8c: r0 = call 0x3949ec
    //     0x437a8c: bl           0x3949ec
    // 0x437a90: r1 = r0
    //     0x437a90: mov          r1, r0
    // 0x437a94: r0 = pp[0x8a9]
    //     0x437a94: add          r0, PP, #0x11, lsl #12
    //     0x437a98: ldr          r0, [r0, #0x898]
    //     0x437a9c: stur         r1, [fp, #-0x10]
    // 0x437aa0: StoreField: r1->field_f = r0
    //     0x437aa0: stur         r0, [r1, #0xf]
    // 0x437aa4: r0 = call 0x2e3578
    //     0x437aa4: bl           0x2e3578
    //     0x437aa8: stur         r0, [fp, #-0x40]
    // 0x437aac: StoreField: r0->field_7 = xzr
    //     0x437aac: stur         xzr, [r0, #7]
    //     0x437ab0: fmov         d0, #25.00000000
    // 0x437ab4: StoreField: r0->field_f = d0
    //     0x437ab4: stur         d0, [r0, #0xf]
    // 0x437ab8: ArrayStore: r0[0] = xzr  ; List_8
    //     0x437ab8: stur         xzr, [r0, #0x17]
    // 0x437abc: StoreField: r0->field_1f = xzr
    //     0x437abc: stur         xzr, [r0, #0x1f]
    // 0x437ac0: r0 = call 0x31d844
    //     0x437ac0: bl           0x31d844
    // 0x437ac4: r1 = r0
    //     0x437ac4: mov          r1, r0
    // 0x437ac8: r0 = pp[0x6310]
    //     0x437ac8: ldr          r0, [PP, #0x6310]
    //     0x437acc: stur         r1, [fp, #-0x48]
    // 0x437ad0: StoreField: r1->field_27 = r0
    //     0x437ad0: stur         r0, [r1, #0x27]
    // 0x437ad4: d0 = pp[0x851]
    //     0x437ad4: add          r17, PP, #0x11, lsl #12
    //     0x437ad8: ldr          d0, [r17, #0x840]
    // 0x437adc: StoreField: r1->field_7 = d0
    //     0x437adc: stur         d0, [r1, #7]
    // 0x437ae0: d0 = pp[0x8d9]
    //     0x437ae0: add          r17, PP, #0x11, lsl #12
    //     0x437ae4: ldr          d0, [r17, #0x8c8]
    // 0x437ae8: StoreField: r1->field_f = d0
    //     0x437ae8: stur         d0, [r1, #0xf]
    // 0x437aec: d0 = pp[0x8e1]
    //     0x437aec: add          r17, PP, #0x11, lsl #12
    //     0x437af0: ldr          d0, [r17, #0x8d0]
    // 0x437af4: ArrayStore: r1[0] = d0  ; List_8
    //     0x437af4: stur         d0, [r1, #0x17]
    // 0x437af8: d0 = pp[0xae0]
    //     0x437af8: add          r17, PP, #0x10, lsl #12
    //     0x437afc: ldr          d0, [r17, #0xad0]
    // 0x437b00: StoreField: r1->field_1f = d0
    //     0x437b00: stur         d0, [r1, #0x1f]
    // 0x437b04: r0 = call 0x31d844
    //     0x437b04: bl           0x31d844
    // 0x437b08: r3 = r0
    //     0x437b08: mov          r3, r0
    // 0x437b0c: r0 = pp[0x6310]
    //     0x437b0c: ldr          r0, [PP, #0x6310]
    //     0x437b10: stur         r3, [fp, #-0x60]
    // 0x437b14: StoreField: r3->field_27 = r0
    //     0x437b14: stur         r0, [r3, #0x27]
    // 0x437b18: StoreField: r3->field_7 = xzr
    //     0x437b18: stur         xzr, [r3, #7]
    // 0x437b1c: d0 = pp[0x8e9]
    //     0x437b1c: add          r17, PP, #0x11, lsl #12
    //     0x437b20: ldr          d0, [r17, #0x8d8]
    // 0x437b24: StoreField: r3->field_f = d0
    //     0x437b24: stur         d0, [r3, #0xf]
    // 0x437b28: d0 = pp[0xe0e]
    //     0x437b28: add          r17, PP, #0xe, lsl #12
    //     0x437b2c: ldr          d0, [r17, #0xe00]
    // 0x437b30: ArrayStore: r3[0] = d0  ; List_8
    //     0x437b30: stur         d0, [r3, #0x17]
    // 0x437b34: d0 = pp[0x8f1]
    //     0x437b34: add          r17, PP, #0x11, lsl #12
    //     0x437b38: ldr          d0, [r17, #0x8e0]
    // 0x437b3c: StoreField: r3->field_1f = d0
    //     0x437b3c: stur         d0, [r3, #0x1f]
    // 0x437b40: r1 = NULL
    //     0x437b40: mov          r1, NULL
    //     0x437b44: mov          r2, #4
    // 0x437b48: r0 = call 0x61f920
    //     0x437b48: bl           0x61f920
    // 0x437b4c: r2 = r0
    //     0x437b4c: mov          r2, r0
    //     0x437b50: ldur         r0, [fp, #-0x48]
    //     0x437b54: stur         r2, [fp, #-0x68]
    // 0x437b58: StoreField: r2->field_f = r0
    //     0x437b58: stur         r0, [r2, #0xf]
    //     0x437b5c: ldur         r0, [fp, #-0x60]
    // 0x437b60: StoreField: r2->field_13 = r0
    //     0x437b60: stur         r0, [r2, #0x13]
    // 0x437b64: r1 = pp[0xc68]
    //     0x437b64: add          r1, PP, #0x10, lsl #12
    //     0x437b68: ldr          r1, [r1, #0xc58]
    // 0x437b6c: r0 = call 0x61e854
    //     0x437b6c: bl           0x61e854
    // 0x437b70: r1 = r0
    //     0x437b70: mov          r1, r0
    //     0x437b74: ldur         r0, [fp, #-0x68]
    //     0x437b78: stur         r1, [fp, #-0x48]
    // 0x437b7c: StoreField: r1->field_f = r0
    //     0x437b7c: stur         r0, [r1, #0xf]
    //     0x437b80: mov          r2, #4
    // 0x437b84: StoreField: r1->field_b = r2
    //     0x437b84: stur         r2, [r1, #0xb]
    // 0x437b88: r0 = call 0x3a108c
    //     0x437b88: bl           0x3a108c
    // 0x437b8c: r1 = r0
    //     0x437b8c: mov          r1, r0
    // 0x437b90: r0 = pp[0xc78]
    //     0x437b90: add          r0, PP, #0x10, lsl #12
    //     0x437b94: ldr          r0, [r0, #0xc68]
    //     0x437b98: stur         r1, [fp, #-0x60]
    // 0x437b9c: StoreField: r1->field_13 = r0
    //     0x437b9c: stur         r0, [r1, #0x13]
    // 0x437ba0: r0 = pp[0xc80]
    //     0x437ba0: add          r0, PP, #0x10, lsl #12
    //     0x437ba4: ldr          r0, [r0, #0xc70]
    // 0x437ba8: ArrayStore: r1[0] = r0  ; List_8
    //     0x437ba8: stur         r0, [r1, #0x17]
    // 0x437bac: r0 = pp[0xc88]
    //     0x437bac: add          r0, PP, #0x10, lsl #12
    //     0x437bb0: ldr          r0, [r0, #0xc78]
    // 0x437bb4: StoreField: r1->field_1b = r0
    //     0x437bb4: stur         r0, [r1, #0x1b]
    //     0x437bb8: ldur         r0, [fp, #-0x48]
    // 0x437bbc: StoreField: r1->field_7 = r0
    //     0x437bbc: stur         r0, [r1, #7]
    // 0x437bc0: r0 = call 0x352b04
    //     0x437bc0: bl           0x352b04
    //     0x437bc4: ldur         d0, [fp, #-0xa0]
    //     0x437bc8: stur         r0, [fp, #-0x48]
    // 0x437bcc: StoreField: r0->field_7 = d0
    //     0x437bcc: stur         d0, [r0, #7]
    // 0x437bd0: StoreField: r0->field_f = d0
    //     0x437bd0: stur         d0, [r0, #0xf]
    // 0x437bd4: r0 = call 0x352b04
    //     0x437bd4: bl           0x352b04
    //     0x437bd8: ldur         d0, [fp, #-0xa0]
    //     0x437bdc: stur         r0, [fp, #-0x68]
    // 0x437be0: StoreField: r0->field_7 = d0
    //     0x437be0: stur         d0, [r0, #7]
    // 0x437be4: StoreField: r0->field_f = d0
    //     0x437be4: stur         d0, [r0, #0xf]
    // 0x437be8: r0 = call 0x392f28
    //     0x437be8: bl           0x392f28
    // 0x437bec: r1 = r0
    //     0x437bec: mov          r1, r0
    //     0x437bf0: ldur         r0, [fp, #-0x48]
    //     0x437bf4: stur         r1, [fp, #-0x70]
    // 0x437bf8: StoreField: r1->field_7 = r0
    //     0x437bf8: stur         r0, [r1, #7]
    //     0x437bfc: ldur         r0, [fp, #-0x68]
    // 0x437c00: StoreField: r1->field_b = r0
    //     0x437c00: stur         r0, [r1, #0xb]
    // 0x437c04: r0 = pp[0x51a]
    //     0x437c04: add          r0, PP, #0xa, lsl #12
    //     0x437c08: ldr          r0, [r0, #0x510]
    // 0x437c0c: StoreField: r1->field_f = r0
    //     0x437c0c: stur         r0, [r1, #0xf]
    // 0x437c10: StoreField: r1->field_13 = r0
    //     0x437c10: stur         r0, [r1, #0x13]
    // 0x437c14: r0 = call 0x391dd8
    //     0x437c14: bl           0x391dd8
    // 0x437c18: r1 = r0
    //     0x437c18: mov          r1, r0
    //     0x437c1c: ldur         r0, [fp, #-0x70]
    //     0x437c20: stur         r1, [fp, #-0x48]
    // 0x437c24: StoreField: r1->field_13 = r0
    //     0x437c24: stur         r0, [r1, #0x13]
    //     0x437c28: ldur         r0, [fp, #-0x60]
    // 0x437c2c: StoreField: r1->field_1b = r0
    //     0x437c2c: stur         r0, [r1, #0x1b]
    // 0x437c30: r0 = pp[0xb86]
    //     0x437c30: add          r0, PP, #0xe, lsl #12
    //     0x437c34: ldr          r0, [r0, #0xb78]
    // 0x437c38: StoreField: r1->field_23 = r0
    //     0x437c38: stur         r0, [r1, #0x23]
    // 0x437c3c: r0 = call 0x3a142c
    //     0x437c3c: bl           0x3a142c
    // 0x437c40: r1 = r0
    //     0x437c40: mov          r1, r0
    // 0x437c44: r0 = pp[0x8f9]
    //     0x437c44: add          r0, PP, #0x11, lsl #12
    //     0x437c48: ldr          r0, [r0, #0x8e8]
    //     0x437c4c: stur         r1, [fp, #-0x60]
    // 0x437c50: StoreField: r1->field_b = r0
    //     0x437c50: stur         r0, [r1, #0xb]
    // 0x437c54: r0 = pp[0x17f]
    //     0x437c54: add          r0, PP, #0xf, lsl #12
    //     0x437c58: ldr          r0, [r0, #0x170]
    // 0x437c5c: StoreField: r1->field_f = r0
    //     0x437c5c: stur         r0, [r1, #0xf]
    // 0x437c60: r0 = pp[0x871]
    //     0x437c60: add          r0, PP, #0x11, lsl #12
    //     0x437c64: ldr          r0, [r0, #0x860]
    // 0x437c68: StoreField: r1->field_13 = r0
    //     0x437c68: stur         r0, [r1, #0x13]
    // 0x437c6c: r0 = pp[0x421]
    //     0x437c6c: add          r0, PP, #0x11, lsl #12
    //     0x437c70: ldr          r0, [r0, #0x410]
    // 0x437c74: ArrayStore: r1[0] = r0  ; List_8
    //     0x437c74: stur         r0, [r1, #0x17]
    // 0x437c78: r0 = call 0x391a04
    //     0x437c78: bl           0x391a04
    //     0x437c7c: stur         r0, [fp, #-0x68]
    // 0x437c80: BARRIER = pp[0x871]
    //     0x437c80: add          BARRIER, PP, #0x11, lsl #12
    //     0x437c84: ldr          BARRIER, [BARRIER, #0x860]
    // 0x437c88: lr = pp[0x421]
    //     0x437c88: add          lr, PP, #0x11, lsl #12
    //     0x437c8c: ldr          lr, [lr, #0x410]
    //     0x437c90: stp          lr, BARRIER, [SP, #8]
    //     0x437c94: ldur         BARRIER, [fp, #-0x60]
    //     0x437c98: str          BARRIER, [SP]
    // 0x437c9c: r1 = r0
    //     0x437c9c: mov          r1, r0
    // 0x437ca0: r4 = pp[0x879]
    //     0x437ca0: add          r4, PP, #0x11, lsl #12
    //     0x437ca4: ldr          r4, [r4, #0x868]
    // 0x437ca8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x437ca8: bl           0x391490
    // 0x437cac: r1 = pp[0x5e7]
    //     0x437cac: add          r1, PP, #0xf, lsl #12
    //     0x437cb0: ldr          r1, [r1, #0x5d8]
    // 0x437cb4: r0 = call 0x399e40
    //     0x437cb4: bl           0x399e40
    // 0x437cb8: r1 = r0
    //     0x437cb8: mov          r1, r0
    // 0x437cbc: r0 = pp[0x881]
    //     0x437cbc: add          r0, PP, #0x11, lsl #12
    //     0x437cc0: ldr          r0, [r0, #0x870]
    //     0x437cc4: stur         r1, [fp, #-0x60]
    // 0x437cc8: ArrayStore: r1[0] = r0  ; List_8
    //     0x437cc8: stur         r0, [r1, #0x17]
    //     0x437ccc: ldur         r0, [fp, #-0x68]
    // 0x437cd0: StoreField: r1->field_b = r0
    //     0x437cd0: stur         r0, [r1, #0xb]
    // 0x437cd4: r0 = call 0x2e3578
    //     0x437cd4: bl           0x2e3578
    //     0x437cd8: stur         r0, [fp, #-0x68]
    // 0x437cdc: StoreField: r0->field_7 = xzr
    //     0x437cdc: stur         xzr, [r0, #7]
    //     0x437ce0: fmov         d0, #20.00000000
    // 0x437ce4: StoreField: r0->field_f = d0
    //     0x437ce4: stur         d0, [r0, #0xf]
    // 0x437ce8: ArrayStore: r0[0] = xzr  ; List_8
    //     0x437ce8: stur         xzr, [r0, #0x17]
    // 0x437cec: StoreField: r0->field_1f = xzr
    //     0x437cec: stur         xzr, [r0, #0x1f]
    // 0x437cf0: r0 = call 0x31d844
    //     0x437cf0: bl           0x31d844
    // 0x437cf4: r1 = r0
    //     0x437cf4: mov          r1, r0
    // 0x437cf8: r0 = pp[0x6310]
    //     0x437cf8: ldr          r0, [PP, #0x6310]
    // 0x437cfc: StoreField: r1->field_27 = r0
    //     0x437cfc: stur         r0, [r1, #0x27]
    //     0x437d00: fmov         d0, #1.00000000
    // 0x437d04: StoreField: r1->field_7 = d0
    //     0x437d04: stur         d0, [r1, #7]
    // 0x437d08: d0 = pp[0x9b0]
    //     0x437d08: add          r17, PP, #0x10, lsl #12
    //     0x437d0c: ldr          d0, [r17, #0x9a0]
    // 0x437d10: StoreField: r1->field_f = d0
    //     0x437d10: stur         d0, [r1, #0xf]
    // 0x437d14: d0 = pp[0xc70]
    //     0x437d14: add          r17, PP, #0x10, lsl #12
    //     0x437d18: ldr          d0, [r17, #0xc60]
    // 0x437d1c: ArrayStore: r1[0] = d0  ; List_8
    //     0x437d1c: stur         d0, [r1, #0x17]
    // 0x437d20: d0 = pp[0x901]
    //     0x437d20: add          r17, PP, #0x11, lsl #12
    //     0x437d24: ldr          d0, [r17, #0x8f0]
    // 0x437d28: StoreField: r1->field_1f = d0
    //     0x437d28: stur         d0, [r1, #0x1f]
    // 0x437d2c: BARRIER = pp[0xbc7]
    //     0x437d2c: add          BARRIER, PP, #0xf, lsl #12
    //     0x437d30: ldr          BARRIER, [BARRIER, #0xbb8]
    //     0x437d34: str          BARRIER, [SP]
    // 0x437d38: r2 = r1
    //     0x437d38: mov          r2, r1
    // 0x437d3c: r1 = NULL
    //     0x437d3c: mov          r1, NULL
    // 0x437d40: r4 = pp[0x827]
    //     0x437d40: add          r4, PP, #0xf, lsl #12
    //     0x437d44: ldr          r4, [r4, #0x818]
    // 0x437d48: r0 = flutter$src$painting$box_border_Border::factory_ctor_all()
    //     0x437d48: bl           0x391e08
    //     0x437d4c: stur         r0, [fp, #-0x70]
    // 0x437d50: r0 = call 0x352b04
    //     0x437d50: bl           0x352b04
    //     0x437d54: fmov         d0, #30.00000000
    //     0x437d58: stur         r0, [fp, #-0x78]
    // 0x437d5c: StoreField: r0->field_7 = d0
    //     0x437d5c: stur         d0, [r0, #7]
    // 0x437d60: StoreField: r0->field_f = d0
    //     0x437d60: stur         d0, [r0, #0xf]
    // 0x437d64: r0 = call 0x392f28
    //     0x437d64: bl           0x392f28
    // 0x437d68: r1 = r0
    //     0x437d68: mov          r1, r0
    //     0x437d6c: ldur         r0, [fp, #-0x78]
    //     0x437d70: stur         r1, [fp, #-0x80]
    // 0x437d74: StoreField: r1->field_7 = r0
    //     0x437d74: stur         r0, [r1, #7]
    // 0x437d78: StoreField: r1->field_b = r0
    //     0x437d78: stur         r0, [r1, #0xb]
    // 0x437d7c: StoreField: r1->field_f = r0
    //     0x437d7c: stur         r0, [r1, #0xf]
    // 0x437d80: StoreField: r1->field_13 = r0
    //     0x437d80: stur         r0, [r1, #0x13]
    // 0x437d84: r0 = call 0x391dd8
    //     0x437d84: bl           0x391dd8
    // 0x437d88: r1 = r0
    //     0x437d88: mov          r1, r0
    //     0x437d8c: ldur         r0, [fp, #-0x70]
    //     0x437d90: stur         r1, [fp, #-0x78]
    // 0x437d94: StoreField: r1->field_f = r0
    //     0x437d94: stur         r0, [r1, #0xf]
    //     0x437d98: ldur         r0, [fp, #-0x80]
    // 0x437d9c: StoreField: r1->field_13 = r0
    //     0x437d9c: stur         r0, [r1, #0x13]
    // 0x437da0: r0 = pp[0xb86]
    //     0x437da0: add          r0, PP, #0xe, lsl #12
    //     0x437da4: ldr          r0, [r0, #0xb78]
    // 0x437da8: StoreField: r1->field_23 = r0
    //     0x437da8: stur         r0, [r1, #0x23]
    //     0x437dac: ldur         r0, [fp, #-0x20]
    //     0x437db0: cmp          r0, r22
    // 0x437db4: b.eq 0x437dd4
    //     0x437db4: b.eq         0x437dd4
    // 0x437db8: LoadField: r2 = r0->field_7
    //     0x437db8: ldur         r2, [r0, #7]
    //     0x437dbc: add          r2, r2, HEAP, lsl #32
    // 0x437dc0: BARRIER = pp[0x40]
    //     0x437dc0: ldr          BARRIER, [PP, #0x40]
    //     0x437dc4: cmp          r2, r16
    // 0x437dc8: b.eq 0x438500
    //     0x437dc8: b.eq         0x438500
    // 0x437dcc: r3 = r2
    //     0x437dcc: mov          r3, r2
    // 0x437dd0: b 0x437dd8
    //     0x437dd0: b            0x437dd8
    // 0x437dd4: r3 = pp[0x148]
    //     0x437dd4: ldr          r3, [PP, #0x148]
    //     0x437dd8: ldur         r2, [fp, #-0x60]
    //     0x437ddc: stur         r3, [fp, #-0x70]
    // 0x437de0: r0 = call 0x3a67fc
    //     0x437de0: bl           0x3a67fc
    // 0x437de4: r1 = r0
    //     0x437de4: mov          r1, r0
    //     0x437de8: ldur         r0, [fp, #-0x70]
    //     0x437dec: stur         r1, [fp, #-0x80]
    // 0x437df0: StoreField: r1->field_b = r0
    //     0x437df0: stur         r0, [r1, #0xb]
    // 0x437df4: d0 = pp[0x891]
    //     0x437df4: add          r17, PP, #0x11, lsl #12
    //     0x437df8: ldr          d0, [r17, #0x880]
    // 0x437dfc: StoreField: r1->field_13 = d0
    //     0x437dfc: stur         d0, [r1, #0x13]
    //     0x437e00: add          r0, NULL, #0x30
    // 0x437e04: StoreField: r1->field_1b = r0
    //     0x437e04: stur         r0, [r1, #0x1b]
    // 0x437e08: r0 = call 0x391a04
    //     0x437e08: bl           0x391a04
    //     0x437e0c: stur         r0, [fp, #-0x70]
    // 0x437e10: BARRIER = pp[0x360]
    //     0x437e10: add          BARRIER, PP, #0x10, lsl #12
    //     0x437e14: ldr          BARRIER, [BARRIER, #0x350]
    // 0x437e18: lr = pp[0x360]
    //     0x437e18: add          lr, PP, #0x10, lsl #12
    //     0x437e1c: ldr          lr, [lr, #0x350]
    //     0x437e20: stp          lr, BARRIER, [SP, #0x18]
    //     0x437e24: ldur         BARRIER, [fp, #-0x68]
    //     0x437e28: ldur         lr, [fp, #-0x78]
    //     0x437e2c: stp          lr, BARRIER, [SP, #8]
    //     0x437e30: ldur         BARRIER, [fp, #-0x80]
    //     0x437e34: str          BARRIER, [SP]
    // 0x437e38: r1 = r0
    //     0x437e38: mov          r1, r0
    // 0x437e3c: r4 = pp[0x899]
    //     0x437e3c: add          r4, PP, #0x11, lsl #12
    //     0x437e40: ldr          r4, [r4, #0x888]
    // 0x437e44: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x437e44: bl           0x391490
    // 0x437e48: r1 = NULL
    //     0x437e48: mov          r1, NULL
    //     0x437e4c: mov          r2, #4
    // 0x437e50: r0 = call 0x61f920
    //     0x437e50: bl           0x61f920
    // 0x437e54: r2 = r0
    //     0x437e54: mov          r2, r0
    //     0x437e58: ldur         r0, [fp, #-0x60]
    //     0x437e5c: stur         r2, [fp, #-0x68]
    // 0x437e60: StoreField: r2->field_f = r0
    //     0x437e60: stur         r0, [r2, #0xf]
    //     0x437e64: ldur         r0, [fp, #-0x70]
    // 0x437e68: StoreField: r2->field_13 = r0
    //     0x437e68: stur         r0, [r2, #0x13]
    // 0x437e6c: r1 = pp[0x5c58]
    //     0x437e6c: ldr          r1, [PP, #0x5c58]
    // 0x437e70: r0 = call 0x61e854
    //     0x437e70: bl           0x61e854
    // 0x437e74: r1 = r0
    //     0x437e74: mov          r1, r0
    //     0x437e78: ldur         r0, [fp, #-0x68]
    //     0x437e7c: stur         r1, [fp, #-0x60]
    // 0x437e80: StoreField: r1->field_f = r0
    //     0x437e80: stur         r0, [r1, #0xf]
    //     0x437e84: mov          r2, #4
    // 0x437e88: StoreField: r1->field_b = r2
    //     0x437e88: stur         r2, [r1, #0xb]
    // 0x437e8c: r0 = call 0x39e6f4
    //     0x437e8c: bl           0x39e6f4
    // 0x437e90: r1 = r0
    //     0x437e90: mov          r1, r0
    // 0x437e94: r0 = pp[0xaae]
    //     0x437e94: add          r0, PP, #0xe, lsl #12
    //     0x437e98: ldr          r0, [r0, #0xaa0]
    //     0x437e9c: stur         r1, [fp, #-0x68]
    // 0x437ea0: StoreField: r1->field_f = r0
    //     0x437ea0: stur         r0, [r1, #0xf]
    // 0x437ea4: r0 = pp[0xf16]
    //     0x437ea4: add          r0, PP, #0xe, lsl #12
    //     0x437ea8: ldr          r0, [r0, #0xf08]
    // 0x437eac: ArrayStore: r1[0] = r0  ; List_8
    //     0x437eac: stur         r0, [r1, #0x17]
    // 0x437eb0: r0 = pp[0xf1e]
    //     0x437eb0: add          r0, PP, #0xe, lsl #12
    //     0x437eb4: ldr          r0, [r0, #0xf10]
    // 0x437eb8: StoreField: r1->field_1b = r0
    //     0x437eb8: stur         r0, [r1, #0x1b]
    //     0x437ebc: ldur         r0, [fp, #-0x60]
    // 0x437ec0: StoreField: r1->field_b = r0
    //     0x437ec0: stur         r0, [r1, #0xb]
    // 0x437ec4: r0 = call 0x3949ec
    //     0x437ec4: bl           0x3949ec
    // 0x437ec8: r2 = r0
    //     0x437ec8: mov          r2, r0
    // 0x437ecc: r0 = pp[0xbc7]
    //     0x437ecc: add          r0, PP, #0xf, lsl #12
    //     0x437ed0: ldr          r0, [r0, #0xbb8]
    //     0x437ed4: stur         r2, [fp, #-0x60]
    // 0x437ed8: StoreField: r2->field_13 = r0
    //     0x437ed8: stur         r0, [r2, #0x13]
    //     0x437edc: ldur         r0, [fp, #-0x20]
    //     0x437ee0: cmp          r0, r22
    // 0x437ee4: b.eq 0x437f04
    //     0x437ee4: b.eq         0x437f04
    // 0x437ee8: LoadField: r1 = r0->field_b
    //     0x437ee8: ldur         r1, [r0, #0xb]
    //     0x437eec: add          r1, r1, HEAP, lsl #32
    // 0x437ef0: BARRIER = pp[0x40]
    //     0x437ef0: ldr          BARRIER, [PP, #0x40]
    //     0x437ef4: cmp          r1, r16
    // 0x437ef8: b.eq 0x43850c
    //     0x437ef8: b.eq         0x43850c
    // 0x437efc: r2 = r1
    //     0x437efc: mov          r2, r1
    // 0x437f00: b 0x437f1c
    //     0x437f00: b            0x437f1c
    // 0x437f04: r1 = pp[0x894]
    //     0x437f04: add          r1, PP, #0xc, lsl #12
    //     0x437f08: ldr          r1, [r1, #0x888]
    // 0x437f0c: r4 = pp[0x4c0]
    //     0x437f0c: ldr          r4, [PP, #0x4c0]
    // 0x437f10: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x437f10: bl           0x3a1dcc
    // 0x437f14: r2 = r0
    //     0x437f14: mov          r2, r0
    //     0x437f18: ldur         r0, [fp, #-0x20]
    //     0x437f1c: ldur         r1, [fp, #-8]
    // 0x437f20: r0 = soul_flutter_international$biz$game$page_game_fruit_ranking__PageGameFruitRankingState::_userFlexibleWidget()
    //     0x437f20: bl           0x438880
    //     0x437f24: stur         r0, [fp, #-0x70]
    // 0x437f28: r0 = call 0x3949ec
    //     0x437f28: bl           0x3949ec
    // 0x437f2c: r4 = r0
    //     0x437f2c: mov          r4, r0
    // 0x437f30: r0 = pp[0x950]
    //     0x437f30: add          r0, PP, #0x10, lsl #12
    //     0x437f34: ldr          r0, [r0, #0x940]
    //     0x437f38: stur         r4, [fp, #-0x78]
    // 0x437f3c: StoreField: r4->field_13 = r0
    //     0x437f3c: stur         r0, [r4, #0x13]
    //     0x437f40: ldur         r0, [fp, #-0x20]
    //     0x437f44: cmp          r0, r22
    // 0x437f48: b.eq 0x437f78
    //     0x437f48: b.eq         0x437f78
    // 0x437f4c: LoadField: r3 = r0->field_f
    //     0x437f4c: ldur         r3, [r0, #0xf]
    //     0x437f50: add          r3, r3, HEAP, lsl #32
    // 0x437f54: BARRIER = pp[0x40]
    //     0x437f54: ldr          BARRIER, [PP, #0x40]
    //     0x437f58: cmp          r3, r16
    // 0x437f5c: b.eq 0x438518
    //     0x437f5c: b.eq         0x438518
    //     0x437f60: ldur         r1, [fp, #-8]
    // 0x437f64: r2 = pp[0x297]
    //     0x437f64: add          r2, PP, #0xf, lsl #12
    //     0x437f68: ldr          r2, [r2, #0x288]
    // 0x437f6c: r0 = soul_flutter_international$biz$game$page_game_fruit_ranking__PageGameFruitRankingState::_coinLabelWidget()
    //     0x437f6c: bl           0x4386e8
    // 0x437f70: r12 = r0
    //     0x437f70: mov          r12, r0
    // 0x437f74: b 0x437f90
    //     0x437f74: b            0x437f90
    // 0x437f78: r0 = call 0x391a04
    //     0x437f78: bl           0x391a04
    // 0x437f7c: r1 = r0
    //     0x437f7c: mov          r1, r0
    //     0x437f80: stur         r0, [fp, #-0x20]
    // 0x437f84: r4 = pp[0x4c0]
    //     0x437f84: ldr          r4, [PP, #0x4c0]
    // 0x437f88: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x437f88: bl           0x391490
    //     0x437f8c: ldur         r12, [fp, #-0x20]
    //     0x437f90: ldur         r11, [fp, #-0x28]
    //     0x437f94: ldur         r10, [fp, #-0x50]
    //     0x437f98: ldur         r9, [fp, #-0x38]
    //     0x437f9c: ldur         r7, [fp, #-0x58]
    //     0x437fa0: ldur         r6, [fp, #-0x10]
    //     0x437fa4: ldur         r5, [fp, #-0x68]
    //     0x437fa8: ldur         r4, [fp, #-0x60]
    //     0x437fac: ldur         r3, [fp, #-0x70]
    //     0x437fb0: ldur         r0, [fp, #-0x78]
    //     0x437fb4: mov          r8, #0xa
    // 0x437fb8: r2 = r8
    //     0x437fb8: mov          r2, r8
    //     0x437fbc: stur         r12, [fp, #-0x20]
    // 0x437fc0: r1 = NULL
    //     0x437fc0: mov          r1, NULL
    // 0x437fc4: r0 = call 0x61f920
    //     0x437fc4: bl           0x61f920
    // 0x437fc8: r2 = r0
    //     0x437fc8: mov          r2, r0
    //     0x437fcc: ldur         r0, [fp, #-0x68]
    //     0x437fd0: stur         r2, [fp, #-0x80]
    // 0x437fd4: StoreField: r2->field_f = r0
    //     0x437fd4: stur         r0, [r2, #0xf]
    //     0x437fd8: ldur         r0, [fp, #-0x60]
    // 0x437fdc: StoreField: r2->field_13 = r0
    //     0x437fdc: stur         r0, [r2, #0x13]
    //     0x437fe0: ldur         r0, [fp, #-0x70]
    // 0x437fe4: ArrayStore: r2[0] = r0  ; List_8
    //     0x437fe4: stur         r0, [r2, #0x17]
    //     0x437fe8: ldur         r0, [fp, #-0x78]
    // 0x437fec: StoreField: r2->field_1b = r0
    //     0x437fec: stur         r0, [r2, #0x1b]
    //     0x437ff0: ldur         r0, [fp, #-0x20]
    // 0x437ff4: StoreField: r2->field_1f = r0
    //     0x437ff4: stur         r0, [r2, #0x1f]
    // 0x437ff8: r1 = pp[0x5c58]
    //     0x437ff8: ldr          r1, [PP, #0x5c58]
    // 0x437ffc: r0 = call 0x61e854
    //     0x437ffc: bl           0x61e854
    // 0x438000: r1 = r0
    //     0x438000: mov          r1, r0
    //     0x438004: ldur         r0, [fp, #-0x80]
    //     0x438008: stur         r1, [fp, #-0x20]
    // 0x43800c: StoreField: r1->field_f = r0
    //     0x43800c: stur         r0, [r1, #0xf]
    //     0x438010: mov          r2, #0xa
    // 0x438014: StoreField: r1->field_b = r2
    //     0x438014: stur         r2, [r1, #0xb]
    // 0x438018: r0 = call 0x39310c
    //     0x438018: bl           0x39310c
    // 0x43801c: r1 = r0
    //     0x43801c: mov          r1, r0
    // 0x438020: r0 = pp[0x862]
    //     0x438020: add          r0, PP, #0xa, lsl #12
    //     0x438024: ldr          r0, [r0, #0x858]
    //     0x438028: stur         r1, [fp, #-0x60]
    // 0x43802c: StoreField: r1->field_f = r0
    //     0x43802c: stur         r0, [r1, #0xf]
    // 0x438030: r2 = pp[0xaee]
    //     0x438030: add          r2, PP, #0xe, lsl #12
    //     0x438034: ldr          r2, [r2, #0xae0]
    // 0x438038: StoreField: r1->field_13 = r2
    //     0x438038: stur         r2, [r1, #0x13]
    // 0x43803c: r3 = pp[0xaf6]
    //     0x43803c: add          r3, PP, #0xe, lsl #12
    //     0x438040: ldr          r3, [r3, #0xae8]
    // 0x438044: ArrayStore: r1[0] = r3  ; List_8
    //     0x438044: stur         r3, [r1, #0x17]
    // 0x438048: r4 = pp[0xb6e]
    //     0x438048: add          r4, PP, #0xe, lsl #12
    //     0x43804c: ldr          r4, [r4, #0xb60]
    // 0x438050: StoreField: r1->field_1b = r4
    //     0x438050: stur         r4, [r1, #0x1b]
    // 0x438054: r5 = pp[0xb06]
    //     0x438054: add          r5, PP, #0xe, lsl #12
    //     0x438058: ldr          r5, [r5, #0xaf8]
    // 0x43805c: StoreField: r1->field_23 = r5
    //     0x43805c: stur         r5, [r1, #0x23]
    // 0x438060: r6 = pp[0xb2]
    //     0x438060: add          r6, PP, #0xa, lsl #12
    //     0x438064: ldr          r6, [r6, #0xa8]
    // 0x438068: StoreField: r1->field_2b = r6
    //     0x438068: stur         r6, [r1, #0x2b]
    // 0x43806c: StoreField: r1->field_2f = xzr
    //     0x43806c: stur         xzr, [r1, #0x2f]
    //     0x438070: ldur         r7, [fp, #-0x20]
    // 0x438074: StoreField: r1->field_b = r7
    //     0x438074: stur         r7, [r1, #0xb]
    // 0x438078: r0 = call 0x391a04
    //     0x438078: bl           0x391a04
    //     0x43807c: stur         r0, [fp, #-0x20]
    //     0x438080: ldur         BARRIER, [fp, #-0x40]
    //     0x438084: ldur         lr, [fp, #-0x48]
    //     0x438088: stp          lr, BARRIER, [SP, #0x10]
    //     0x43808c: ldur         BARRIER, [fp, #-0x18]
    //     0x438090: ldur         lr, [fp, #-0x60]
    //     0x438094: stp          lr, BARRIER, [SP]
    // 0x438098: r1 = r0
    //     0x438098: mov          r1, r0
    // 0x43809c: r4 = pp[0x8a1]
    //     0x43809c: add          r4, PP, #0x11, lsl #12
    //     0x4380a0: ldr          r4, [r4, #0x890]
    // 0x4380a4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4380a4: bl           0x391490
    // 0x4380a8: r1 = NULL
    //     0x4380a8: mov          r1, NULL
    //     0x4380ac: mov          r2, #0xa
    // 0x4380b0: r0 = call 0x61f920
    //     0x4380b0: bl           0x61f920
    // 0x4380b4: r2 = r0
    //     0x4380b4: mov          r2, r0
    //     0x4380b8: ldur         r0, [fp, #-0x50]
    //     0x4380bc: stur         r2, [fp, #-0x18]
    // 0x4380c0: StoreField: r2->field_f = r0
    //     0x4380c0: stur         r0, [r2, #0xf]
    //     0x4380c4: ldur         r0, [fp, #-0x38]
    // 0x4380c8: StoreField: r2->field_13 = r0
    //     0x4380c8: stur         r0, [r2, #0x13]
    //     0x4380cc: ldur         r0, [fp, #-0x58]
    // 0x4380d0: ArrayStore: r2[0] = r0  ; List_8
    //     0x4380d0: stur         r0, [r2, #0x17]
    //     0x4380d4: ldur         r0, [fp, #-0x10]
    // 0x4380d8: StoreField: r2->field_1b = r0
    //     0x4380d8: stur         r0, [r2, #0x1b]
    //     0x4380dc: ldur         r0, [fp, #-0x20]
    // 0x4380e0: StoreField: r2->field_1f = r0
    //     0x4380e0: stur         r0, [r2, #0x1f]
    // 0x4380e4: r1 = pp[0x5c58]
    //     0x4380e4: ldr          r1, [PP, #0x5c58]
    // 0x4380e8: r0 = call 0x61e854
    //     0x4380e8: bl           0x61e854
    // 0x4380ec: r1 = r0
    //     0x4380ec: mov          r1, r0
    //     0x4380f0: ldur         r0, [fp, #-0x18]
    //     0x4380f4: stur         r1, [fp, #-0x10]
    // 0x4380f8: StoreField: r1->field_f = r0
    //     0x4380f8: stur         r0, [r1, #0xf]
    //     0x4380fc: mov          r0, #0xa
    // 0x438100: StoreField: r1->field_b = r0
    //     0x438100: stur         r0, [r1, #0xb]
    // 0x438104: r0 = call 0x3a1414
    //     0x438104: bl           0x3a1414
    // 0x438108: r1 = r0
    //     0x438108: mov          r1, r0
    // 0x43810c: r0 = pp[0x5140]
    //     0x43810c: ldr          r0, [PP, #0x5140]
    //     0x438110: stur         r1, [fp, #-0x18]
    // 0x438114: StoreField: r1->field_f = r0
    //     0x438114: stur         r0, [r1, #0xf]
    // 0x438118: r0 = pp[0xaee]
    //     0x438118: add          r0, PP, #0xe, lsl #12
    //     0x43811c: ldr          r0, [r0, #0xae0]
    // 0x438120: StoreField: r1->field_13 = r0
    //     0x438120: stur         r0, [r1, #0x13]
    // 0x438124: r2 = pp[0xaf6]
    //     0x438124: add          r2, PP, #0xe, lsl #12
    //     0x438128: ldr          r2, [r2, #0xae8]
    // 0x43812c: ArrayStore: r1[0] = r2  ; List_8
    //     0x43812c: stur         r2, [r1, #0x17]
    // 0x438130: r3 = pp[0xb6e]
    //     0x438130: add          r3, PP, #0xe, lsl #12
    //     0x438134: ldr          r3, [r3, #0xb60]
    // 0x438138: StoreField: r1->field_1b = r3
    //     0x438138: stur         r3, [r1, #0x1b]
    // 0x43813c: r4 = pp[0xb06]
    //     0x43813c: add          r4, PP, #0xe, lsl #12
    //     0x438140: ldr          r4, [r4, #0xaf8]
    // 0x438144: StoreField: r1->field_23 = r4
    //     0x438144: stur         r4, [r1, #0x23]
    // 0x438148: r5 = pp[0xb2]
    //     0x438148: add          r5, PP, #0xa, lsl #12
    //     0x43814c: ldr          r5, [r5, #0xa8]
    // 0x438150: StoreField: r1->field_2b = r5
    //     0x438150: stur         r5, [r1, #0x2b]
    // 0x438154: StoreField: r1->field_2f = xzr
    //     0x438154: stur         xzr, [r1, #0x2f]
    //     0x438158: ldur         r6, [fp, #-0x10]
    // 0x43815c: StoreField: r1->field_b = r6
    //     0x43815c: stur         r6, [r1, #0xb]
    // 0x438160: r0 = call 0x391a04
    //     0x438160: bl           0x391a04
    //     0x438164: stur         r0, [fp, #-0x10]
    //     0x438168: ldur         BARRIER, [fp, #-0x30]
    // 0x43816c: lr = pp[0x909]
    //     0x43816c: add          lr, PP, #0x11, lsl #12
    //     0x438170: ldr          lr, [lr, #0x8f8]
    //     0x438174: stp          lr, BARRIER, [SP, #0x10]
    // 0x438178: BARRIER = pp[0x5458]
    //     0x438178: ldr          BARRIER, [PP, #0x5458]
    //     0x43817c: ldur         lr, [fp, #-0x18]
    //     0x438180: stp          lr, BARRIER, [SP]
    // 0x438184: r1 = r0
    //     0x438184: mov          r1, r0
    // 0x438188: r4 = pp[0x911]
    //     0x438188: add          r4, PP, #0x11, lsl #12
    //     0x43818c: ldr          r4, [r4, #0x900]
    // 0x438190: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x438190: bl           0x391490
    //     0x438194: ldur         r0, [fp, #-0x28]
    // 0x438198: LoadField: r1 = r0->field_13
    //     0x438198: ldur         r1, [r0, #0x13]
    //     0x43819c: add          r1, r1, HEAP, lsl #32
    // 0x4381a0: LoadField: r2 = r1->field_b
    //     0x4381a0: ldur         r2, [r1, #0xb]
    //     0x4381a4: sbfx         r3, r2, #1, #0x1f
    //     0x4381a8: stur         r3, [fp, #-0x88]
    //     0x4381ac: cmp          r3, #3
    // 0x4381b0: b.le 0x4382f0
    //     0x4381b0: b.le         0x4382f0
    //     0x4381b4: ldur         r1, [fp, #-8]
    // 0x4381b8: LoadField: r4 = r1->field_f
    //     0x4381b8: ldur         r4, [r1, #0xf]
    //     0x4381bc: add          r4, r4, HEAP, lsl #32
    //     0x4381c0: stur         r4, [fp, #-0x20]
    //     0x4381c4: cmp          r4, r22
    // 0x4381c8: b.eq 0x438524
    //     0x4381c8: b.eq         0x438524
    // 0x4381cc: LoadField: r5 = r0->field_1b
    //     0x4381cc: ldur         r5, [r0, #0x1b]
    //     0x4381d0: add          r5, r5, HEAP, lsl #32
    //     0x4381d4: stur         r5, [fp, #-0x18]
    // 0x4381d8: r1 = pp[0x919]
    //     0x4381d8: add          r1, PP, #0x11, lsl #12
    //     0x4381dc: ldr          r1, [r1, #0x908]
    // 0x4381e0: r2 = NULL
    //     0x4381e0: mov          r2, NULL
    // 0x4381e4: r0 = call 0x61ec54
    //     0x4381e4: bl           0x61ec54
    //     0x4381e8: stur         r0, [fp, #-0x30]
    // 0x4381ec: r0 = call 0x3ab5b8
    //     0x4381ec: bl           0x3ab5b8
    // 0x4381f0: r3 = r0
    //     0x4381f0: mov          r3, r0
    //     0x4381f4: ldur         r0, [fp, #-0x30]
    //     0x4381f8: stur         r3, [fp, #-0x38]
    // 0x4381fc: StoreField: r3->field_1b = r0
    //     0x4381fc: stur         r0, [r3, #0x1b]
    // 0x438200: r0 = pp[0x8a7]
    //     0x438200: add          r0, PP, #0xf, lsl #12
    //     0x438204: ldr          r0, [r0, #0x898]
    // 0x438208: StoreField: r3->field_b = r0
    //     0x438208: stur         r0, [r3, #0xb]
    // 0x43820c: d0 = pp[0x8af]
    //     0x43820c: add          r17, PP, #0xf, lsl #12
    //     0x438210: ldr          d0, [r17, #0x8a0]
    // 0x438214: StoreField: r3->field_f = d0
    //     0x438214: stur         d0, [r3, #0xf]
    //     0x438218: ldur         r2, [fp, #-0x28]
    // 0x43821c: r1 = pp[0x921]
    //     0x43821c: add          r1, PP, #0x11, lsl #12
    //     0x438220: ldr          r1, [r1, #0x910]
    // 0x438224: r0 = call 0x61ec54
    //     0x438224: bl           0x61ec54
    //     0x438228: stur         r0, [fp, #-0x30]
    // 0x43822c: r0 = call 0x3ab5ac
    //     0x43822c: bl           0x3ab5ac
    // 0x438230: r1 = r0
    //     0x438230: mov          r1, r0
    //     0x438234: ldur         r2, [fp, #-0x30]
    //     0x438238: ldur         r3, [fp, #-0x88]
    //     0x43823c: stur         r0, [fp, #-0x30]
    // 0x438240: r4 = pp[0x2e0]
    //     0x438240: ldr          r4, [PP, #0x2e0]
    // 0x438244: r0 = flutter$src$widgets$scroll_view_ListView::ctor_builder()
    //     0x438244: bl           0x3ab2bc
    // 0x438248: r0 = call 0x3ab290
    //     0x438248: bl           0x3ab290
    // 0x43824c: r3 = r0
    //     0x43824c: mov          r3, r0
    //     0x438250: ldur         r0, [fp, #-0x18]
    //     0x438254: stur         r3, [fp, #-0x40]
    // 0x438258: StoreField: r3->field_2b = r0
    //     0x438258: stur         r0, [r3, #0x2b]
    //     0x43825c: ldur         r0, [fp, #-0x30]
    // 0x438260: StoreField: r3->field_b = r0
    //     0x438260: stur         r0, [r3, #0xb]
    //     0x438264: ldur         r0, [fp, #-0x38]
    // 0x438268: StoreField: r3->field_f = r0
    //     0x438268: stur         r0, [r3, #0xf]
    //     0x43826c: add          r0, NULL, #0x30
    // 0x438270: StoreField: r3->field_1b = r0
    //     0x438270: stur         r0, [r3, #0x1b]
    //     0x438274: add          r1, NULL, #0x20
    // 0x438278: StoreField: r3->field_13 = r1
    //     0x438278: stur         r1, [r3, #0x13]
    // 0x43827c: ArrayStore: r3[0] = r0  ; List_8
    //     0x43827c: stur         r0, [r3, #0x17]
    //     0x438280: ldur         r2, [fp, #-0x28]
    // 0x438284: r1 = pp[0x929]
    //     0x438284: add          r1, PP, #0x11, lsl #12
    //     0x438288: ldr          r1, [r1, #0x918]
    // 0x43828c: r0 = call 0x61ec54
    //     0x43828c: bl           0x61ec54
    //     0x438290: ldur         r2, [fp, #-0x40]
    // 0x438294: StoreField: r2->field_23 = r0
    //     0x438294: stur         r0, [r2, #0x23]
    // 0x438298: r1 = pp[0x227]
    //     0x438298: add          r1, PP, #0xf, lsl #12
    //     0x43829c: ldr          r1, [r1, #0x218]
    // 0x4382a0: r0 = call 0x396454
    //     0x4382a0: bl           0x396454
    // 0x4382a4: r1 = r0
    //     0x4382a4: mov          r1, r0
    //     0x4382a8: ldur         r2, [fp, #-0x40]
    //     0x4382ac: ldur         r3, [fp, #-0x20]
    //     0x4382b0: stur         r0, [fp, #-0x18]
    // 0x4382b4: r4 = pp[0x2e0]
    //     0x4382b4: ldr          r4, [PP, #0x2e0]
    // 0x4382b8: r0 = flutter$src$widgets$media_query_MediaQuery::ctor_removePadding()
    //     0x4382b8: bl           0x39ecf8
    // 0x4382bc: r1 = pp[0xade]
    //     0x4382bc: add          r1, PP, #0xe, lsl #12
    //     0x4382c0: ldr          r1, [r1, #0xad0]
    // 0x4382c4: r0 = call 0x39fb14
    //     0x4382c4: bl           0x39fb14
    // 0x4382c8: r1 = r0
    //     0x4382c8: mov          r1, r0
    //     0x4382cc: mov          r0, #1
    // 0x4382d0: StoreField: r1->field_13 = r0
    //     0x4382d0: stur         r0, [r1, #0x13]
    // 0x4382d4: r0 = pp[0xae6]
    //     0x4382d4: add          r0, PP, #0xe, lsl #12
    //     0x4382d8: ldr          r0, [r0, #0xad8]
    // 0x4382dc: StoreField: r1->field_1b = r0
    //     0x4382dc: stur         r0, [r1, #0x1b]
    //     0x4382e0: ldur         r0, [fp, #-0x18]
    // 0x4382e4: StoreField: r1->field_b = r0
    //     0x4382e4: stur         r0, [r1, #0xb]
    // 0x4382e8: r4 = r1
    //     0x4382e8: mov          r4, r1
    // 0x4382ec: b 0x438350
    //     0x4382ec: b            0x438350
    //     0x4382f0: ldur         r1, [fp, #-8]
    // 0x4382f4: r0 = call 0x2e3578
    //     0x4382f4: bl           0x2e3578
    //     0x4382f8: stur         r0, [fp, #-0x18]
    // 0x4382fc: StoreField: r0->field_7 = xzr
    //     0x4382fc: stur         xzr, [r0, #7]
    // 0x438300: d0 = pp[0x931]
    //     0x438300: add          r17, PP, #0x11, lsl #12
    //     0x438304: ldr          d0, [r17, #0x920]
    // 0x438308: StoreField: r0->field_f = d0
    //     0x438308: stur         d0, [r0, #0xf]
    // 0x43830c: ArrayStore: r0[0] = xzr  ; List_8
    //     0x43830c: stur         xzr, [r0, #0x17]
    // 0x438310: StoreField: r0->field_1f = xzr
    //     0x438310: stur         xzr, [r0, #0x1f]
    // 0x438314: r1 = pp[0x894]
    //     0x438314: add          r1, PP, #0xc, lsl #12
    //     0x438318: ldr          r1, [r1, #0x888]
    // 0x43831c: r4 = pp[0x4c0]
    //     0x43831c: ldr          r4, [PP, #0x4c0]
    // 0x438320: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x438320: bl           0x3a1dcc
    //     0x438324: ldur         r1, [fp, #-8]
    // 0x438328: r2 = r0
    //     0x438328: mov          r2, r0
    // 0x43832c: r0 = soul_flutter_international$biz$game$page_game_fruit_ranking__PageGameFruitRankingState::_rankListEmptyWidget()
    //     0x43832c: bl           0x438528
    //     0x438330: stur         r0, [fp, #-8]
    // 0x438334: r0 = call 0x391c0c
    //     0x438334: bl           0x391c0c
    // 0x438338: r1 = r0
    //     0x438338: mov          r1, r0
    //     0x43833c: ldur         r0, [fp, #-0x18]
    // 0x438340: StoreField: r1->field_f = r0
    //     0x438340: stur         r0, [r1, #0xf]
    //     0x438344: ldur         r0, [fp, #-8]
    // 0x438348: StoreField: r1->field_b = r0
    //     0x438348: stur         r0, [r1, #0xb]
    // 0x43834c: r4 = r1
    //     0x43834c: mov          r4, r1
    //     0x438350: ldur         r0, [fp, #-0x10]
    //     0x438354: mov          r3, #4
    // 0x438358: r2 = r3
    //     0x438358: mov          r2, r3
    //     0x43835c: stur         r4, [fp, #-8]
    // 0x438360: r1 = NULL
    //     0x438360: mov          r1, NULL
    // 0x438364: r0 = call 0x61f920
    //     0x438364: bl           0x61f920
    // 0x438368: r2 = r0
    //     0x438368: mov          r2, r0
    //     0x43836c: ldur         r0, [fp, #-0x10]
    //     0x438370: stur         r2, [fp, #-0x18]
    // 0x438374: StoreField: r2->field_f = r0
    //     0x438374: stur         r0, [r2, #0xf]
    //     0x438378: ldur         r0, [fp, #-8]
    // 0x43837c: StoreField: r2->field_13 = r0
    //     0x43837c: stur         r0, [r2, #0x13]
    // 0x438380: r1 = pp[0x5c58]
    //     0x438380: ldr          r1, [PP, #0x5c58]
    // 0x438384: r0 = call 0x61e854
    //     0x438384: bl           0x61e854
    // 0x438388: r1 = r0
    //     0x438388: mov          r1, r0
    //     0x43838c: ldur         r0, [fp, #-0x18]
    //     0x438390: stur         r1, [fp, #-8]
    // 0x438394: StoreField: r1->field_f = r0
    //     0x438394: stur         r0, [r1, #0xf]
    //     0x438398: mov          r0, #4
    // 0x43839c: StoreField: r1->field_b = r0
    //     0x43839c: stur         r0, [r1, #0xb]
    // 0x4383a0: r0 = call 0x39310c
    //     0x4383a0: bl           0x39310c
    // 0x4383a4: r1 = r0
    //     0x4383a4: mov          r1, r0
    // 0x4383a8: r0 = pp[0x862]
    //     0x4383a8: add          r0, PP, #0xa, lsl #12
    //     0x4383ac: ldr          r0, [r0, #0x858]
    //     0x4383b0: stur         r1, [fp, #-0x10]
    // 0x4383b4: StoreField: r1->field_f = r0
    //     0x4383b4: stur         r0, [r1, #0xf]
    // 0x4383b8: r0 = pp[0xaee]
    //     0x4383b8: add          r0, PP, #0xe, lsl #12
    //     0x4383bc: ldr          r0, [r0, #0xae0]
    // 0x4383c0: StoreField: r1->field_13 = r0
    //     0x4383c0: stur         r0, [r1, #0x13]
    // 0x4383c4: r0 = pp[0xaf6]
    //     0x4383c4: add          r0, PP, #0xe, lsl #12
    //     0x4383c8: ldr          r0, [r0, #0xae8]
    // 0x4383cc: ArrayStore: r1[0] = r0  ; List_8
    //     0x4383cc: stur         r0, [r1, #0x17]
    // 0x4383d0: r0 = pp[0xb6e]
    //     0x4383d0: add          r0, PP, #0xe, lsl #12
    //     0x4383d4: ldr          r0, [r0, #0xb60]
    // 0x4383d8: StoreField: r1->field_1b = r0
    //     0x4383d8: stur         r0, [r1, #0x1b]
    // 0x4383dc: r0 = pp[0xb06]
    //     0x4383dc: add          r0, PP, #0xe, lsl #12
    //     0x4383e0: ldr          r0, [r0, #0xaf8]
    // 0x4383e4: StoreField: r1->field_23 = r0
    //     0x4383e4: stur         r0, [r1, #0x23]
    // 0x4383e8: r0 = pp[0xb2]
    //     0x4383e8: add          r0, PP, #0xa, lsl #12
    //     0x4383ec: ldr          r0, [r0, #0xa8]
    // 0x4383f0: StoreField: r1->field_2b = r0
    //     0x4383f0: stur         r0, [r1, #0x2b]
    // 0x4383f4: StoreField: r1->field_2f = xzr
    //     0x4383f4: stur         xzr, [r1, #0x2f]
    //     0x4383f8: ldur         r0, [fp, #-8]
    // 0x4383fc: StoreField: r1->field_b = r0
    //     0x4383fc: stur         r0, [r1, #0xb]
    // 0x438400: r0 = call 0x391a04
    //     0x438400: bl           0x391a04
    //     0x438404: stur         r0, [fp, #-8]
    //     0x438408: ldur         BARRIER, [fp, #-0x10]
    //     0x43840c: str          BARRIER, [SP]
    // 0x438410: r1 = r0
    //     0x438410: mov          r1, r0
    // 0x438414: r4 = pp[0x204]
    //     0x438414: add          r4, PP, #0xc, lsl #12
    //     0x438418: ldr          r4, [r4, #0x1f8]
    // 0x43841c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43841c: bl           0x391490
    //     0x438420: ldur         r0, [fp, #-8]
    // 0x438424: SP = fp
    //     0x438424: mov          SP, fp
    // 0x438428: LeaveFrame
    //     0x438428: ldp          fp, lr, [SP], #0x10
    // 0x43842c: ret
    //     0x43842c: ret          
    // 0x438430: r0 = call 0x61faa8
    //     0x438430: bl           0x61faa8
    // 0x438434: b 0x436d50
    //     0x438434: b            0x436d50
    // 0x438438: r0 = call 0x61fe70
    //     0x438438: bl           0x61fe70
    // 0x43843c: r0 = call 0x61fe70
    //     0x43843c: bl           0x61fe70
    // 0x438440: r0 = call 0x61fe70
    //     0x438440: bl           0x61fe70
    // 0x438444: r0 = call 0x61fe70
    //     0x438444: bl           0x61fe70
    // 0x438448: r0 = call 0x61fe70
    //     0x438448: bl           0x61fe70
    // 0x43844c: r0 = call 0x61fe70
    //     0x43844c: bl           0x61fe70
    // 0x438450: r9 = pp[0x939]
    //     0x438450: add          r9, PP, #0x11, lsl #12
    //     0x438454: ldr          r9, [r9, #0x928]
    // 0x438458: r0 = call 0x620258
    //     0x438458: bl           0x620258
    // 0x43845c: r9 = pp[0x941]
    //     0x43845c: add          r9, PP, #0x11, lsl #12
    //     0x438460: ldr          r9, [r9, #0x930]
    // 0x438464: r0 = call 0x620258
    //     0x438464: bl           0x620258
    // 0x438468: r9 = pp[0x949]
    //     0x438468: add          r9, PP, #0x11, lsl #12
    //     0x43846c: ldr          r9, [r9, #0x938]
    // 0x438470: r0 = call 0x620258
    //     0x438470: bl           0x620258
    //     0x438474: str          q0, [SP, #-0x10]!
    //     0x438478: stp          r5, r6, [SP, #-0x10]!
    //     0x43847c: stp          r3, r4, [SP, #-0x10]!
    //     0x438480: stp          r1, r2, [SP, #-0x10]!
    //     0x438484: str          r0, [SP, #-8]!
    // 0x438488: r0 = call 0x61f878
    //     0x438488: bl           0x61f878
    // 0x43848c: r7 = r0
    //     0x43848c: mov          r7, r0
    //     0x438490: ldr          r0, [SP], #8
    //     0x438494: ldp          r1, r2, [SP], #0x10
    //     0x438498: ldp          r3, r4, [SP], #0x10
    //     0x43849c: ldp          r5, r6, [SP], #0x10
    //     0x4384a0: ldr          q0, [SP], #0x10
    // 0x4384a4: b 0x4374b4
    //     0x4384a4: b            0x4374b4
    // 0x4384a8: r9 = pp[0x939]
    //     0x4384a8: add          r9, PP, #0x11, lsl #12
    //     0x4384ac: ldr          r9, [r9, #0x928]
    // 0x4384b0: r0 = call 0x620258
    //     0x4384b0: bl           0x620258
    // 0x4384b4: r9 = pp[0x941]
    //     0x4384b4: add          r9, PP, #0x11, lsl #12
    //     0x4384b8: ldr          r9, [r9, #0x930]
    // 0x4384bc: r0 = call 0x620258
    //     0x4384bc: bl           0x620258
    // 0x4384c0: r9 = pp[0x949]
    //     0x4384c0: add          r9, PP, #0x11, lsl #12
    //     0x4384c4: ldr          r9, [r9, #0x938]
    // 0x4384c8: r0 = call 0x620258
    //     0x4384c8: bl           0x620258
    //     0x4384cc: str          q0, [SP, #-0x10]!
    //     0x4384d0: stp          r5, r6, [SP, #-0x10]!
    //     0x4384d4: stp          r3, r4, [SP, #-0x10]!
    //     0x4384d8: stp          r1, r2, [SP, #-0x10]!
    //     0x4384dc: str          r0, [SP, #-8]!
    // 0x4384e0: r0 = call 0x61f878
    //     0x4384e0: bl           0x61f878
    // 0x4384e4: r7 = r0
    //     0x4384e4: mov          r7, r0
    //     0x4384e8: ldr          r0, [SP], #8
    //     0x4384ec: ldp          r1, r2, [SP], #0x10
    //     0x4384f0: ldp          r3, r4, [SP], #0x10
    //     0x4384f4: ldp          r5, r6, [SP], #0x10
    //     0x4384f8: ldr          q0, [SP], #0x10
    // 0x4384fc: b 0x437a58
    //     0x4384fc: b            0x437a58
    // 0x438500: r9 = pp[0x939]
    //     0x438500: add          r9, PP, #0x11, lsl #12
    //     0x438504: ldr          r9, [r9, #0x928]
    // 0x438508: r0 = call 0x620258
    //     0x438508: bl           0x620258
    // 0x43850c: r9 = pp[0x941]
    //     0x43850c: add          r9, PP, #0x11, lsl #12
    //     0x438510: ldr          r9, [r9, #0x930]
    // 0x438514: r0 = call 0x620258
    //     0x438514: bl           0x620258
    // 0x438518: r9 = pp[0x949]
    //     0x438518: add          r9, PP, #0x11, lsl #12
    //     0x43851c: ldr          r9, [r9, #0x938]
    // 0x438520: r0 = call 0x620258
    //     0x438520: bl           0x620258
    // 0x438524: r0 = call 0x61ffd0
    //     0x438524: bl           0x61ffd0
  }

  _rankListEmptyWidget() {
    // ** addr: 0x438528, size: 0x1c0
    // 0x438528: EnterFrame
    //     0x438528: stp          fp, lr, [SP, #-0x10]!
    //     0x43852c: mov          fp, SP
    // 0x438530: AllocStack(0x38)
    //     0x438530: sub          SP, SP, #0x38
    //     0x438534: stur         r2, [fp, #-8]
    // 0x438538: CheckStackOverflow
    //     0x438538: ldr          BARRIER, [THR, #0x38]
    //     0x43853c: cmp          SP, BARRIER
    //     0x438540: b.ls         0x4386e0
    // 0x438544: r0 = call 0x3a142c
    //     0x438544: bl           0x3a142c
    // 0x438548: r1 = r0
    //     0x438548: mov          r1, r0
    // 0x43854c: r0 = pp[0x277]
    //     0x43854c: add          r0, PP, #0xf, lsl #12
    //     0x438550: ldr          r0, [r0, #0x268]
    //     0x438554: stur         r1, [fp, #-0x10]
    // 0x438558: StoreField: r1->field_b = r0
    //     0x438558: stur         r0, [r1, #0xb]
    // 0x43855c: r0 = pp[0x17f]
    //     0x43855c: add          r0, PP, #0xf, lsl #12
    //     0x438560: ldr          r0, [r0, #0x170]
    // 0x438564: StoreField: r1->field_f = r0
    //     0x438564: stur         r0, [r1, #0xf]
    // 0x438568: r0 = pp[0x27f]
    //     0x438568: add          r0, PP, #0xf, lsl #12
    //     0x43856c: ldr          r0, [r0, #0x270]
    // 0x438570: StoreField: r1->field_13 = r0
    //     0x438570: stur         r0, [r1, #0x13]
    // 0x438574: r0 = pp[0x287]
    //     0x438574: add          r0, PP, #0xf, lsl #12
    //     0x438578: ldr          r0, [r0, #0x278]
    // 0x43857c: ArrayStore: r1[0] = r0  ; List_8
    //     0x43857c: stur         r0, [r1, #0x17]
    // 0x438580: r0 = call 0x391a04
    //     0x438580: bl           0x391a04
    //     0x438584: stur         r0, [fp, #-0x18]
    //     0x438588: ldur         BARRIER, [fp, #-0x10]
    //     0x43858c: str          BARRIER, [SP]
    // 0x438590: r1 = r0
    //     0x438590: mov          r1, r0
    // 0x438594: r4 = pp[0x204]
    //     0x438594: add          r4, PP, #0xc, lsl #12
    //     0x438598: ldr          r4, [r4, #0x1f8]
    // 0x43859c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43859c: bl           0x391490
    // 0x4385a0: r0 = call 0x3949ec
    //     0x4385a0: bl           0x3949ec
    // 0x4385a4: r1 = r0
    //     0x4385a4: mov          r1, r0
    // 0x4385a8: r0 = pp[0xb5e]
    //     0x4385a8: add          r0, PP, #0xe, lsl #12
    //     0x4385ac: ldr          r0, [r0, #0xb50]
    //     0x4385b0: stur         r1, [fp, #-0x10]
    // 0x4385b4: StoreField: r1->field_13 = r0
    //     0x4385b4: stur         r0, [r1, #0x13]
    // 0x4385b8: r0 = call 0x31abec
    //     0x4385b8: bl           0x31abec
    // 0x4385bc: r1 = r0
    //     0x4385bc: mov          r1, r0
    //     0x4385c0: add          r0, NULL, #0x20
    //     0x4385c4: stur         r1, [fp, #-0x20]
    // 0x4385c8: StoreField: r1->field_7 = r0
    //     0x4385c8: stur         r0, [r1, #7]
    // 0x4385cc: r0 = pp[0x6050]
    //     0x4385cc: ldr          r0, [PP, #0x6050]
    // 0x4385d0: StoreField: r1->field_b = r0
    //     0x4385d0: stur         r0, [r1, #0xb]
    // 0x4385d4: r0 = pp[0xdf6]
    //     0x4385d4: add          r0, PP, #0xe, lsl #12
    //     0x4385d8: ldr          r0, [r0, #0xde8]
    // 0x4385dc: StoreField: r1->field_1f = r0
    //     0x4385dc: stur         r0, [r1, #0x1f]
    // 0x4385e0: r0 = call 0x393bf8
    //     0x4385e0: bl           0x393bf8
    // 0x4385e4: r3 = r0
    //     0x4385e4: mov          r3, r0
    //     0x4385e8: ldur         r0, [fp, #-8]
    //     0x4385ec: stur         r3, [fp, #-0x28]
    // 0x4385f0: StoreField: r3->field_b = r0
    //     0x4385f0: stur         r0, [r3, #0xb]
    //     0x4385f4: ldur         r0, [fp, #-0x20]
    // 0x4385f8: StoreField: r3->field_13 = r0
    //     0x4385f8: stur         r0, [r3, #0x13]
    // 0x4385fc: r1 = NULL
    //     0x4385fc: mov          r1, NULL
    //     0x438600: mov          r2, #6
    // 0x438604: r0 = call 0x61f920
    //     0x438604: bl           0x61f920
    // 0x438608: r2 = r0
    //     0x438608: mov          r2, r0
    //     0x43860c: ldur         r0, [fp, #-0x18]
    //     0x438610: stur         r2, [fp, #-8]
    // 0x438614: StoreField: r2->field_f = r0
    //     0x438614: stur         r0, [r2, #0xf]
    //     0x438618: ldur         r0, [fp, #-0x10]
    // 0x43861c: StoreField: r2->field_13 = r0
    //     0x43861c: stur         r0, [r2, #0x13]
    //     0x438620: ldur         r0, [fp, #-0x28]
    // 0x438624: ArrayStore: r2[0] = r0  ; List_8
    //     0x438624: stur         r0, [r2, #0x17]
    // 0x438628: r1 = pp[0x5c58]
    //     0x438628: ldr          r1, [PP, #0x5c58]
    // 0x43862c: r0 = call 0x61e854
    //     0x43862c: bl           0x61e854
    // 0x438630: r1 = r0
    //     0x438630: mov          r1, r0
    //     0x438634: ldur         r0, [fp, #-8]
    //     0x438638: stur         r1, [fp, #-0x10]
    // 0x43863c: StoreField: r1->field_f = r0
    //     0x43863c: stur         r0, [r1, #0xf]
    //     0x438640: mov          r0, #6
    // 0x438644: StoreField: r1->field_b = r0
    //     0x438644: stur         r0, [r1, #0xb]
    // 0x438648: r0 = call 0x39310c
    //     0x438648: bl           0x39310c
    // 0x43864c: r1 = r0
    //     0x43864c: mov          r1, r0
    // 0x438650: r0 = pp[0x862]
    //     0x438650: add          r0, PP, #0xa, lsl #12
    //     0x438654: ldr          r0, [r0, #0x858]
    //     0x438658: stur         r1, [fp, #-8]
    // 0x43865c: StoreField: r1->field_f = r0
    //     0x43865c: stur         r0, [r1, #0xf]
    // 0x438660: r0 = pp[0x297]
    //     0x438660: add          r0, PP, #0xf, lsl #12
    //     0x438664: ldr          r0, [r0, #0x288]
    // 0x438668: StoreField: r1->field_13 = r0
    //     0x438668: stur         r0, [r1, #0x13]
    // 0x43866c: r0 = pp[0xaf6]
    //     0x43866c: add          r0, PP, #0xe, lsl #12
    //     0x438670: ldr          r0, [r0, #0xae8]
    // 0x438674: ArrayStore: r1[0] = r0  ; List_8
    //     0x438674: stur         r0, [r1, #0x17]
    // 0x438678: r0 = pp[0xb6e]
    //     0x438678: add          r0, PP, #0xe, lsl #12
    //     0x43867c: ldr          r0, [r0, #0xb60]
    // 0x438680: StoreField: r1->field_1b = r0
    //     0x438680: stur         r0, [r1, #0x1b]
    // 0x438684: r0 = pp[0xb06]
    //     0x438684: add          r0, PP, #0xe, lsl #12
    //     0x438688: ldr          r0, [r0, #0xaf8]
    // 0x43868c: StoreField: r1->field_23 = r0
    //     0x43868c: stur         r0, [r1, #0x23]
    // 0x438690: r0 = pp[0xb2]
    //     0x438690: add          r0, PP, #0xa, lsl #12
    //     0x438694: ldr          r0, [r0, #0xa8]
    // 0x438698: StoreField: r1->field_2b = r0
    //     0x438698: stur         r0, [r1, #0x2b]
    // 0x43869c: StoreField: r1->field_2f = xzr
    //     0x43869c: stur         xzr, [r1, #0x2f]
    //     0x4386a0: ldur         r0, [fp, #-0x10]
    // 0x4386a4: StoreField: r1->field_b = r0
    //     0x4386a4: stur         r0, [r1, #0xb]
    // 0x4386a8: r0 = call 0x391a04
    //     0x4386a8: bl           0x391a04
    //     0x4386ac: stur         r0, [fp, #-0x10]
    // 0x4386b0: BARRIER = pp[0x3ca]
    //     0x4386b0: add          BARRIER, PP, #0xa, lsl #12
    //     0x4386b4: ldr          BARRIER, [BARRIER, #0x3c0]
    //     0x4386b8: ldur         lr, [fp, #-8]
    //     0x4386bc: stp          lr, BARRIER, [SP]
    // 0x4386c0: r1 = r0
    //     0x4386c0: mov          r1, r0
    // 0x4386c4: r4 = pp[0x577]
    //     0x4386c4: add          r4, PP, #0xf, lsl #12
    //     0x4386c8: ldr          r4, [r4, #0x568]
    // 0x4386cc: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4386cc: bl           0x391490
    //     0x4386d0: ldur         r0, [fp, #-0x10]
    // 0x4386d4: SP = fp
    //     0x4386d4: mov          SP, fp
    // 0x4386d8: LeaveFrame
    //     0x4386d8: ldp          fp, lr, [SP], #0x10
    // 0x4386dc: ret
    //     0x4386dc: ret          
    // 0x4386e0: r0 = call 0x61fa28
    //     0x4386e0: bl           0x61fa28
    // 0x4386e4: b 0x438544
    //     0x4386e4: b            0x438544
  }

  _coinLabelWidget() {
    // ** addr: 0x4386e8, size: 0x198
    // 0x4386e8: EnterFrame
    //     0x4386e8: stp          fp, lr, [SP, #-0x10]!
    //     0x4386ec: mov          fp, SP
    // 0x4386f0: AllocStack(0x30)
    //     0x4386f0: sub          SP, SP, #0x30
    //     0x4386f4: stur         r2, [fp, #-8]
    //     0x4386f8: stur         r3, [fp, #-0x10]
    // 0x4386fc: r0 = call 0x3a142c
    //     0x4386fc: bl           0x3a142c
    // 0x438700: r1 = r0
    //     0x438700: mov          r1, r0
    // 0x438704: r0 = pp[0x257]
    //     0x438704: add          r0, PP, #0xf, lsl #12
    //     0x438708: ldr          r0, [r0, #0x248]
    //     0x43870c: stur         r1, [fp, #-0x18]
    // 0x438710: StoreField: r1->field_b = r0
    //     0x438710: stur         r0, [r1, #0xb]
    // 0x438714: r0 = pp[0x17f]
    //     0x438714: add          r0, PP, #0xf, lsl #12
    //     0x438718: ldr          r0, [r0, #0x170]
    // 0x43871c: StoreField: r1->field_f = r0
    //     0x43871c: stur         r0, [r1, #0xf]
    // 0x438720: r0 = pp[0xdf6]
    //     0x438720: add          r0, PP, #0xe, lsl #12
    //     0x438724: ldr          r0, [r0, #0xde8]
    // 0x438728: StoreField: r1->field_13 = r0
    //     0x438728: stur         r0, [r1, #0x13]
    // 0x43872c: ArrayStore: r1[0] = r0  ; List_8
    //     0x43872c: stur         r0, [r1, #0x17]
    // 0x438730: r0 = call 0x3949ec
    //     0x438730: bl           0x3949ec
    // 0x438734: r1 = r0
    //     0x438734: mov          r1, r0
    // 0x438738: r0 = pp[0x950]
    //     0x438738: add          r0, PP, #0x10, lsl #12
    //     0x43873c: ldr          r0, [r0, #0x940]
    //     0x438740: stur         r1, [fp, #-0x20]
    // 0x438744: StoreField: r1->field_f = r0
    //     0x438744: stur         r0, [r1, #0xf]
    // 0x438748: r0 = call 0x31abec
    //     0x438748: bl           0x31abec
    // 0x43874c: r1 = r0
    //     0x43874c: mov          r1, r0
    //     0x438750: add          r0, NULL, #0x20
    //     0x438754: stur         r1, [fp, #-0x28]
    // 0x438758: StoreField: r1->field_7 = r0
    //     0x438758: stur         r0, [r1, #7]
    // 0x43875c: r0 = pp[0x6050]
    //     0x43875c: ldr          r0, [PP, #0x6050]
    // 0x438760: StoreField: r1->field_b = r0
    //     0x438760: stur         r0, [r1, #0xb]
    // 0x438764: r0 = pp[0x7598]
    //     0x438764: ldr          r0, [PP, #0x7598]
    // 0x438768: StoreField: r1->field_1f = r0
    //     0x438768: stur         r0, [r1, #0x1f]
    // 0x43876c: r0 = pp[0xe4e]
    //     0x43876c: add          r0, PP, #0xe, lsl #12
    //     0x438770: ldr          r0, [r0, #0xe40]
    // 0x438774: StoreField: r1->field_23 = r0
    //     0x438774: stur         r0, [r1, #0x23]
    // 0x438778: r0 = call 0x393bf8
    //     0x438778: bl           0x393bf8
    // 0x43877c: r2 = r0
    //     0x43877c: mov          r2, r0
    //     0x438780: ldur         r0, [fp, #-0x10]
    //     0x438784: stur         r2, [fp, #-0x30]
    // 0x438788: StoreField: r2->field_b = r0
    //     0x438788: stur         r0, [r2, #0xb]
    //     0x43878c: ldur         r0, [fp, #-0x28]
    // 0x438790: StoreField: r2->field_13 = r0
    //     0x438790: stur         r0, [r2, #0x13]
    // 0x438794: r0 = pp[0x23f]
    //     0x438794: add          r0, PP, #0xf, lsl #12
    //     0x438798: ldr          r0, [r0, #0x230]
    // 0x43879c: StoreField: r2->field_2b = r0
    //     0x43879c: stur         r0, [r2, #0x2b]
    //     0x4387a0: mov          r0, #2
    // 0x4387a4: StoreField: r2->field_37 = r0
    //     0x4387a4: stur         r0, [r2, #0x37]
    // 0x4387a8: r1 = pp[0xade]
    //     0x4387a8: add          r1, PP, #0xe, lsl #12
    //     0x4387ac: ldr          r1, [r1, #0xad0]
    // 0x4387b0: r0 = call 0x3a1420
    //     0x4387b0: bl           0x3a1420
    // 0x4387b4: r3 = r0
    //     0x4387b4: mov          r3, r0
    //     0x4387b8: mov          r0, #1
    //     0x4387bc: stur         r3, [fp, #-0x10]
    // 0x4387c0: StoreField: r3->field_13 = r0
    //     0x4387c0: stur         r0, [r3, #0x13]
    // 0x4387c4: r0 = pp[0x960]
    //     0x4387c4: add          r0, PP, #0x10, lsl #12
    //     0x4387c8: ldr          r0, [r0, #0x950]
    // 0x4387cc: StoreField: r3->field_1b = r0
    //     0x4387cc: stur         r0, [r3, #0x1b]
    //     0x4387d0: ldur         r0, [fp, #-0x30]
    // 0x4387d4: StoreField: r3->field_b = r0
    //     0x4387d4: stur         r0, [r3, #0xb]
    // 0x4387d8: r1 = NULL
    //     0x4387d8: mov          r1, NULL
    //     0x4387dc: mov          r2, #6
    // 0x4387e0: r0 = call 0x61f920
    //     0x4387e0: bl           0x61f920
    // 0x4387e4: r2 = r0
    //     0x4387e4: mov          r2, r0
    //     0x4387e8: ldur         r0, [fp, #-0x18]
    //     0x4387ec: stur         r2, [fp, #-0x28]
    // 0x4387f0: StoreField: r2->field_f = r0
    //     0x4387f0: stur         r0, [r2, #0xf]
    //     0x4387f4: ldur         r0, [fp, #-0x20]
    // 0x4387f8: StoreField: r2->field_13 = r0
    //     0x4387f8: stur         r0, [r2, #0x13]
    //     0x4387fc: ldur         r0, [fp, #-0x10]
    // 0x438800: ArrayStore: r2[0] = r0  ; List_8
    //     0x438800: stur         r0, [r2, #0x17]
    // 0x438804: r1 = pp[0x5c58]
    //     0x438804: ldr          r1, [PP, #0x5c58]
    // 0x438808: r0 = call 0x61e854
    //     0x438808: bl           0x61e854
    // 0x43880c: r1 = r0
    //     0x43880c: mov          r1, r0
    //     0x438810: ldur         r0, [fp, #-0x28]
    //     0x438814: stur         r1, [fp, #-0x10]
    // 0x438818: StoreField: r1->field_f = r0
    //     0x438818: stur         r0, [r1, #0xf]
    //     0x43881c: mov          r0, #6
    // 0x438820: StoreField: r1->field_b = r0
    //     0x438820: stur         r0, [r1, #0xb]
    // 0x438824: r0 = call 0x3a1414
    //     0x438824: bl           0x3a1414
    // 0x438828: r1 = pp[0x5140]
    //     0x438828: ldr          r1, [PP, #0x5140]
    // 0x43882c: StoreField: r0->field_f = r1
    //     0x43882c: stur         r1, [r0, #0xf]
    //     0x438830: ldur         r1, [fp, #-8]
    // 0x438834: StoreField: r0->field_13 = r1
    //     0x438834: stur         r1, [r0, #0x13]
    // 0x438838: r1 = pp[0xaf6]
    //     0x438838: add          r1, PP, #0xe, lsl #12
    //     0x43883c: ldr          r1, [r1, #0xae8]
    // 0x438840: ArrayStore: r0[0] = r1  ; List_8
    //     0x438840: stur         r1, [r0, #0x17]
    // 0x438844: r1 = pp[0xb6e]
    //     0x438844: add          r1, PP, #0xe, lsl #12
    //     0x438848: ldr          r1, [r1, #0xb60]
    // 0x43884c: StoreField: r0->field_1b = r1
    //     0x43884c: stur         r1, [r0, #0x1b]
    // 0x438850: r1 = pp[0xb06]
    //     0x438850: add          r1, PP, #0xe, lsl #12
    //     0x438854: ldr          r1, [r1, #0xaf8]
    // 0x438858: StoreField: r0->field_23 = r1
    //     0x438858: stur         r1, [r0, #0x23]
    // 0x43885c: r1 = pp[0xb2]
    //     0x43885c: add          r1, PP, #0xa, lsl #12
    //     0x438860: ldr          r1, [r1, #0xa8]
    // 0x438864: StoreField: r0->field_2b = r1
    //     0x438864: stur         r1, [r0, #0x2b]
    // 0x438868: StoreField: r0->field_2f = xzr
    //     0x438868: stur         xzr, [r0, #0x2f]
    //     0x43886c: ldur         r1, [fp, #-0x10]
    // 0x438870: StoreField: r0->field_b = r1
    //     0x438870: stur         r1, [r0, #0xb]
    // 0x438874: SP = fp
    //     0x438874: mov          SP, fp
    // 0x438878: LeaveFrame
    //     0x438878: ldp          fp, lr, [SP], #0x10
    // 0x43887c: ret
    //     0x43887c: ret          
  }

  _userFlexibleWidget() {
    // ** addr: 0x438880, size: 0xa8
    // 0x438880: EnterFrame
    //     0x438880: stp          fp, lr, [SP, #-0x10]!
    //     0x438884: mov          fp, SP
    // 0x438888: AllocStack(0x18)
    //     0x438888: sub          SP, SP, #0x18
    //     0x43888c: stur         r2, [fp, #-8]
    // 0x438890: r0 = call 0x31abec
    //     0x438890: bl           0x31abec
    // 0x438894: r1 = r0
    //     0x438894: mov          r1, r0
    //     0x438898: add          r0, NULL, #0x20
    //     0x43889c: stur         r1, [fp, #-0x10]
    // 0x4388a0: StoreField: r1->field_7 = r0
    //     0x4388a0: stur         r0, [r1, #7]
    // 0x4388a4: r0 = pp[0x6050]
    //     0x4388a4: ldr          r0, [PP, #0x6050]
    // 0x4388a8: StoreField: r1->field_b = r0
    //     0x4388a8: stur         r0, [r1, #0xb]
    // 0x4388ac: r0 = pp[0xb8f]
    //     0x4388ac: add          r0, PP, #0xf, lsl #12
    //     0x4388b0: ldr          r0, [r0, #0xb80]
    // 0x4388b4: StoreField: r1->field_1f = r0
    //     0x4388b4: stur         r0, [r1, #0x1f]
    // 0x4388b8: r0 = pp[0xe4e]
    //     0x4388b8: add          r0, PP, #0xe, lsl #12
    //     0x4388bc: ldr          r0, [r0, #0xe40]
    // 0x4388c0: StoreField: r1->field_23 = r0
    //     0x4388c0: stur         r0, [r1, #0x23]
    // 0x4388c4: r0 = call 0x393bf8
    //     0x4388c4: bl           0x393bf8
    // 0x4388c8: r2 = r0
    //     0x4388c8: mov          r2, r0
    //     0x4388cc: ldur         r0, [fp, #-8]
    //     0x4388d0: stur         r2, [fp, #-0x18]
    // 0x4388d4: StoreField: r2->field_b = r0
    //     0x4388d4: stur         r0, [r2, #0xb]
    //     0x4388d8: ldur         r0, [fp, #-0x10]
    // 0x4388dc: StoreField: r2->field_13 = r0
    //     0x4388dc: stur         r0, [r2, #0x13]
    // 0x4388e0: r0 = pp[0x23f]
    //     0x4388e0: add          r0, PP, #0xf, lsl #12
    //     0x4388e4: ldr          r0, [r0, #0x230]
    // 0x4388e8: StoreField: r2->field_2b = r0
    //     0x4388e8: stur         r0, [r2, #0x2b]
    //     0x4388ec: mov          r0, #2
    // 0x4388f0: StoreField: r2->field_37 = r0
    //     0x4388f0: stur         r0, [r2, #0x37]
    // 0x4388f4: r1 = pp[0xade]
    //     0x4388f4: add          r1, PP, #0xe, lsl #12
    //     0x4388f8: ldr          r1, [r1, #0xad0]
    // 0x4388fc: r0 = call 0x3a1420
    //     0x4388fc: bl           0x3a1420
    //     0x438900: mov          r1, #1
    // 0x438904: StoreField: r0->field_13 = r1
    //     0x438904: stur         r1, [r0, #0x13]
    // 0x438908: r1 = pp[0x960]
    //     0x438908: add          r1, PP, #0x10, lsl #12
    //     0x43890c: ldr          r1, [r1, #0x950]
    // 0x438910: StoreField: r0->field_1b = r1
    //     0x438910: stur         r1, [r0, #0x1b]
    //     0x438914: ldur         r1, [fp, #-0x18]
    // 0x438918: StoreField: r0->field_b = r1
    //     0x438918: stur         r1, [r0, #0xb]
    // 0x43891c: SP = fp
    //     0x43891c: mov          SP, fp
    // 0x438920: LeaveFrame
    //     0x438920: ldp          fp, lr, [SP], #0x10
    // 0x438924: ret
    //     0x438924: ret          
  }

  _anon_closure() {
    // ** addr: 0x438928, size: 0x590
    // 0x438928: EnterFrame
    //     0x438928: stp          fp, lr, [SP, #-0x10]!
    //     0x43892c: mov          fp, SP
    // 0x438930: AllocStack(0xa0)
    //     0x438930: sub          SP, SP, #0xa0
    //     0x438934: ldr          r0, [fp, #0x20]
    // 0x438938: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x438938: ldur         r2, [r0, #0x17]
    //     0x43893c: add          r2, r2, HEAP, lsl #32
    //     0x438940: stur         r2, [fp, #-0x20]
    // 0x438944: CheckStackOverflow
    //     0x438944: ldr          BARRIER, [THR, #0x38]
    //     0x438948: cmp          SP, BARRIER
    //     0x43894c: b.ls         0x438e88
    // 0x438950: LoadField: r3 = r2->field_13
    //     0x438950: ldur         r3, [r2, #0x13]
    //     0x438954: add          r3, r3, HEAP, lsl #32
    // 0x438958: LoadField: r0 = r3->field_b
    //     0x438958: ldur         r0, [r3, #0xb]
    //     0x43895c: ldr          r1, [fp, #0x10]
    //     0x438960: sbfx         r4, r1, #1, #0x1f
    // 0x438964: branchIfSmi(r1, 0x43896c)
    //     0x438964: tbz          r1, #0, 0x43896c
    // 0x438968: LoadField: r4 = r1->field_7
    //     0x438968: ldur         r4, [r1, #7]
    //     0x43896c: stur         r4, [fp, #-0x18]
    //     0x438970: sbfx         r1, r0, #1, #0x1f
    // 0x438974: r0 = r1
    //     0x438974: mov          r0, r1
    // 0x438978: r1 = r4
    //     0x438978: mov          r1, r4
    //     0x43897c: cmp          r1, r0
    // 0x438980: b.hs 0x438e90
    //     0x438980: b.hs         0x438e90
    // 0x438984: LoadField: r0 = r3->field_f
    //     0x438984: ldur         r0, [r3, #0xf]
    //     0x438988: add          r0, r0, HEAP, lsl #32
    //     0x43898c: add          BARRIER, r0, r4, lsl #2
    // 0x438990: LoadField: r1 = BARRIER->field_f
    //     0x438990: ldur         r1, [BARRIER, #0xf]
    //     0x438994: add          r1, r1, HEAP, lsl #32
    //     0x438998: stur         r1, [fp, #-0x10]
    //     0x43899c: cbz          r4, 0x4389b0
    //     0x4389a0: cmp          r4, #1
    // 0x4389a4: b.eq 0x4389b0
    //     0x4389a4: b.eq         0x4389b0
    //     0x4389a8: cmp          r4, #2
    // 0x4389ac: b.ne 0x4389cc
    //     0x4389ac: b.ne         0x4389cc
    // 0x4389b0: r0 = call 0x391a04
    //     0x4389b0: bl           0x391a04
    // 0x4389b4: r1 = r0
    //     0x4389b4: mov          r1, r0
    //     0x4389b8: stur         r0, [fp, #-8]
    // 0x4389bc: r4 = pp[0x4c0]
    //     0x4389bc: ldr          r4, [PP, #0x4c0]
    // 0x4389c0: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4389c0: bl           0x391490
    //     0x4389c4: ldur         r0, [fp, #-8]
    // 0x4389c8: b 0x438e7c
    //     0x4389c8: b            0x438e7c
    // 0x4389cc: LoadField: r0 = r2->field_1f
    //     0x4389cc: ldur         r0, [r2, #0x1f]
    //     0x4389d0: add          r0, r0, HEAP, lsl #32
    //     0x4389d4: stur         r0, [fp, #-8]
    // 0x4389d8: r0 = call 0x2e3578
    //     0x4389d8: bl           0x2e3578
    //     0x4389dc: fmov         d0, #20.00000000
    //     0x4389e0: stur         r0, [fp, #-0x28]
    // 0x4389e4: StoreField: r0->field_7 = d0
    //     0x4389e4: stur         d0, [r0, #7]
    // 0x4389e8: StoreField: r0->field_f = xzr
    //     0x4389e8: stur         xzr, [r0, #0xf]
    // 0x4389ec: ArrayStore: r0[0] = d0  ; List_8
    //     0x4389ec: stur         d0, [r0, #0x17]
    //     0x4389f0: ldur         r1, [fp, #-8]
    // 0x4389f4: LoadField: d0 = r1->field_7
    //     0x4389f4: ldur         d0, [r1, #7]
    // 0x4389f8: StoreField: r0->field_1f = d0
    //     0x4389f8: stur         d0, [r0, #0x1f]
    // 0x4389fc: r0 = call 0x31d844
    //     0x4389fc: bl           0x31d844
    // 0x438a00: r1 = r0
    //     0x438a00: mov          r1, r0
    // 0x438a04: r0 = pp[0x6310]
    //     0x438a04: ldr          r0, [PP, #0x6310]
    //     0x438a08: stur         r1, [fp, #-8]
    // 0x438a0c: StoreField: r1->field_27 = r0
    //     0x438a0c: stur         r0, [r1, #0x27]
    // 0x438a10: d0 = pp[0x6658]
    //     0x438a10: ldr          d0, [PP, #0x6658]
    // 0x438a14: StoreField: r1->field_7 = d0
    //     0x438a14: stur         d0, [r1, #7]
    //     0x438a18: fmov         d0, #1.00000000
    // 0x438a1c: StoreField: r1->field_f = d0
    //     0x438a1c: stur         d0, [r1, #0xf]
    // 0x438a20: ArrayStore: r1[0] = d0  ; List_8
    //     0x438a20: stur         d0, [r1, #0x17]
    // 0x438a24: StoreField: r1->field_1f = d0
    //     0x438a24: stur         d0, [r1, #0x1f]
    // 0x438a28: r0 = call 0x352b04
    //     0x438a28: bl           0x352b04
    //     0x438a2c: fmov         d0, #12.00000000
    //     0x438a30: stur         r0, [fp, #-0x30]
    // 0x438a34: StoreField: r0->field_7 = d0
    //     0x438a34: stur         d0, [r0, #7]
    // 0x438a38: StoreField: r0->field_f = d0
    //     0x438a38: stur         d0, [r0, #0xf]
    // 0x438a3c: r0 = call 0x392f28
    //     0x438a3c: bl           0x392f28
    // 0x438a40: r1 = r0
    //     0x438a40: mov          r1, r0
    //     0x438a44: ldur         r0, [fp, #-0x30]
    //     0x438a48: stur         r1, [fp, #-0x38]
    // 0x438a4c: StoreField: r1->field_7 = r0
    //     0x438a4c: stur         r0, [r1, #7]
    // 0x438a50: StoreField: r1->field_b = r0
    //     0x438a50: stur         r0, [r1, #0xb]
    // 0x438a54: StoreField: r1->field_f = r0
    //     0x438a54: stur         r0, [r1, #0xf]
    // 0x438a58: StoreField: r1->field_13 = r0
    //     0x438a58: stur         r0, [r1, #0x13]
    // 0x438a5c: r0 = call 0x391dd8
    //     0x438a5c: bl           0x391dd8
    // 0x438a60: r1 = r0
    //     0x438a60: mov          r1, r0
    //     0x438a64: ldur         r0, [fp, #-8]
    //     0x438a68: stur         r1, [fp, #-0x30]
    // 0x438a6c: StoreField: r1->field_7 = r0
    //     0x438a6c: stur         r0, [r1, #7]
    //     0x438a70: ldur         r0, [fp, #-0x38]
    // 0x438a74: StoreField: r1->field_13 = r0
    //     0x438a74: stur         r0, [r1, #0x13]
    // 0x438a78: r0 = pp[0xb86]
    //     0x438a78: add          r0, PP, #0xe, lsl #12
    //     0x438a7c: ldr          r0, [r0, #0xb78]
    // 0x438a80: StoreField: r1->field_23 = r0
    //     0x438a80: stur         r0, [r1, #0x23]
    //     0x438a84: ldur         r0, [fp, #-0x20]
    // 0x438a88: LoadField: r2 = r0->field_23
    //     0x438a88: ldur         r2, [r0, #0x23]
    //     0x438a8c: add          r2, r2, HEAP, lsl #32
    //     0x438a90: stur         r2, [fp, #-8]
    // 0x438a94: r0 = call 0x3949ec
    //     0x438a94: bl           0x3949ec
    // 0x438a98: r1 = r0
    //     0x438a98: mov          r1, r0
    // 0x438a9c: r0 = pp[0xb8f]
    //     0x438a9c: add          r0, PP, #0xf, lsl #12
    //     0x438aa0: ldr          r0, [r0, #0xb80]
    //     0x438aa4: stur         r1, [fp, #-0x38]
    // 0x438aa8: StoreField: r1->field_f = r0
    //     0x438aa8: stur         r0, [r1, #0xf]
    //     0x438aac: ldur         r0, [fp, #-0x18]
    //     0x438ab0: add          r2, r0, #1
    //     0x438ab4: lsl          r0, r2, #1
    //     0x438ab8: str          r0, [SP]
    // 0x438abc: r0 = dart_core__Smi::toString()
    //     0x438abc: bl           0x4a6624
    //     0x438ac0: stur         r0, [fp, #-0x40]
    // 0x438ac4: r0 = call 0x31abec
    //     0x438ac4: bl           0x31abec
    // 0x438ac8: r1 = r0
    //     0x438ac8: mov          r1, r0
    //     0x438acc: add          r0, NULL, #0x20
    //     0x438ad0: stur         r1, [fp, #-0x48]
    // 0x438ad4: StoreField: r1->field_7 = r0
    //     0x438ad4: stur         r0, [r1, #7]
    // 0x438ad8: r2 = pp[0x6050]
    //     0x438ad8: ldr          r2, [PP, #0x6050]
    // 0x438adc: StoreField: r1->field_b = r2
    //     0x438adc: stur         r2, [r1, #0xb]
    // 0x438ae0: r3 = pp[0xb5e]
    //     0x438ae0: add          r3, PP, #0xe, lsl #12
    //     0x438ae4: ldr          r3, [r3, #0xb50]
    // 0x438ae8: StoreField: r1->field_1f = r3
    //     0x438ae8: stur         r3, [r1, #0x1f]
    // 0x438aec: r3 = pp[0xe4e]
    //     0x438aec: add          r3, PP, #0xe, lsl #12
    //     0x438af0: ldr          r3, [r3, #0xe40]
    // 0x438af4: StoreField: r1->field_23 = r3
    //     0x438af4: stur         r3, [r1, #0x23]
    // 0x438af8: r0 = call 0x393bf8
    //     0x438af8: bl           0x393bf8
    // 0x438afc: r1 = r0
    //     0x438afc: mov          r1, r0
    //     0x438b00: ldur         r0, [fp, #-0x40]
    //     0x438b04: stur         r1, [fp, #-0x50]
    // 0x438b08: StoreField: r1->field_b = r0
    //     0x438b08: stur         r0, [r1, #0xb]
    //     0x438b0c: ldur         r0, [fp, #-0x48]
    // 0x438b10: StoreField: r1->field_13 = r0
    //     0x438b10: stur         r0, [r1, #0x13]
    // 0x438b14: r0 = call 0x3949ec
    //     0x438b14: bl           0x3949ec
    // 0x438b18: r1 = r0
    //     0x438b18: mov          r1, r0
    // 0x438b1c: r0 = pp[0xdf6]
    //     0x438b1c: add          r0, PP, #0xe, lsl #12
    //     0x438b20: ldr          r0, [r0, #0xde8]
    //     0x438b24: stur         r1, [fp, #-0x48]
    // 0x438b28: StoreField: r1->field_f = r0
    //     0x438b28: stur         r0, [r1, #0xf]
    //     0x438b2c: ldur         r2, [fp, #-0x10]
    // 0x438b30: LoadField: r3 = r2->field_7
    //     0x438b30: ldur         r3, [r2, #7]
    //     0x438b34: add          r3, r3, HEAP, lsl #32
    // 0x438b38: BARRIER = pp[0x40]
    //     0x438b38: ldr          BARRIER, [PP, #0x40]
    //     0x438b3c: cmp          r3, r16
    // 0x438b40: b.eq 0x438e94
    //     0x438b40: b.eq         0x438e94
    //     0x438b44: stur         r3, [fp, #-0x40]
    // 0x438b48: r0 = call 0x3a67fc
    //     0x438b48: bl           0x3a67fc
    // 0x438b4c: r1 = r0
    //     0x438b4c: mov          r1, r0
    //     0x438b50: ldur         r0, [fp, #-0x40]
    //     0x438b54: stur         r1, [fp, #-0x58]
    // 0x438b58: StoreField: r1->field_b = r0
    //     0x438b58: stur         r0, [r1, #0xb]
    // 0x438b5c: d0 = pp[0x7960]
    //     0x438b5c: ldr          d0, [PP, #0x7960]
    // 0x438b60: StoreField: r1->field_13 = d0
    //     0x438b60: stur         d0, [r1, #0x13]
    //     0x438b64: add          r0, NULL, #0x30
    // 0x438b68: StoreField: r1->field_1b = r0
    //     0x438b68: stur         r0, [r1, #0x1b]
    // 0x438b6c: r0 = call 0x391a04
    //     0x438b6c: bl           0x391a04
    //     0x438b70: stur         r0, [fp, #-0x40]
    //     0x438b74: ldur         BARRIER, [fp, #-0x58]
    //     0x438b78: str          BARRIER, [SP]
    // 0x438b7c: r1 = r0
    //     0x438b7c: mov          r1, r0
    // 0x438b80: r4 = pp[0x204]
    //     0x438b80: add          r4, PP, #0xc, lsl #12
    //     0x438b84: ldr          r4, [r4, #0x1f8]
    // 0x438b88: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x438b88: bl           0x391490
    // 0x438b8c: r0 = call 0x3949ec
    //     0x438b8c: bl           0x3949ec
    // 0x438b90: r1 = r0
    //     0x438b90: mov          r1, r0
    // 0x438b94: r0 = pp[0x5d7]
    //     0x438b94: add          r0, PP, #0xf, lsl #12
    //     0x438b98: ldr          r0, [r0, #0x5c8]
    //     0x438b9c: stur         r1, [fp, #-0x58]
    // 0x438ba0: StoreField: r1->field_f = r0
    //     0x438ba0: stur         r0, [r1, #0xf]
    // 0x438ba4: r0 = call 0x2e3578
    //     0x438ba4: bl           0x2e3578
    //     0x438ba8: stur         r0, [fp, #-0x68]
    // 0x438bac: StoreField: r0->field_7 = xzr
    //     0x438bac: stur         xzr, [r0, #7]
    // 0x438bb0: StoreField: r0->field_f = xzr
    //     0x438bb0: stur         xzr, [r0, #0xf]
    //     0x438bb4: fmov         d0, #12.00000000
    // 0x438bb8: ArrayStore: r0[0] = d0  ; List_8
    //     0x438bb8: stur         d0, [r0, #0x17]
    // 0x438bbc: StoreField: r0->field_1f = xzr
    //     0x438bbc: stur         xzr, [r0, #0x1f]
    //     0x438bc0: ldur         r1, [fp, #-0x10]
    // 0x438bc4: LoadField: r2 = r1->field_b
    //     0x438bc4: ldur         r2, [r1, #0xb]
    //     0x438bc8: add          r2, r2, HEAP, lsl #32
    // 0x438bcc: BARRIER = pp[0x40]
    //     0x438bcc: ldr          BARRIER, [PP, #0x40]
    //     0x438bd0: cmp          r2, r16
    // 0x438bd4: b.eq 0x438ea0
    //     0x438bd4: b.eq         0x438ea0
    //     0x438bd8: stur         r2, [fp, #-0x60]
    // 0x438bdc: r0 = call 0x31abec
    //     0x438bdc: bl           0x31abec
    // 0x438be0: r1 = r0
    //     0x438be0: mov          r1, r0
    //     0x438be4: add          r0, NULL, #0x20
    //     0x438be8: stur         r1, [fp, #-0x70]
    // 0x438bec: StoreField: r1->field_7 = r0
    //     0x438bec: stur         r0, [r1, #7]
    // 0x438bf0: r0 = pp[0x6050]
    //     0x438bf0: ldr          r0, [PP, #0x6050]
    // 0x438bf4: StoreField: r1->field_b = r0
    //     0x438bf4: stur         r0, [r1, #0xb]
    // 0x438bf8: r0 = pp[0xdf6]
    //     0x438bf8: add          r0, PP, #0xe, lsl #12
    //     0x438bfc: ldr          r0, [r0, #0xde8]
    // 0x438c00: StoreField: r1->field_1f = r0
    //     0x438c00: stur         r0, [r1, #0x1f]
    // 0x438c04: r0 = call 0x393bf8
    //     0x438c04: bl           0x393bf8
    // 0x438c08: r1 = r0
    //     0x438c08: mov          r1, r0
    //     0x438c0c: ldur         r0, [fp, #-0x60]
    //     0x438c10: stur         r1, [fp, #-0x78]
    // 0x438c14: StoreField: r1->field_b = r0
    //     0x438c14: stur         r0, [r1, #0xb]
    //     0x438c18: ldur         r0, [fp, #-0x70]
    // 0x438c1c: StoreField: r1->field_13 = r0
    //     0x438c1c: stur         r0, [r1, #0x13]
    // 0x438c20: r0 = pp[0x23f]
    //     0x438c20: add          r0, PP, #0xf, lsl #12
    //     0x438c24: ldr          r0, [r0, #0x230]
    // 0x438c28: StoreField: r1->field_2b = r0
    //     0x438c28: stur         r0, [r1, #0x2b]
    //     0x438c2c: mov          r0, #2
    // 0x438c30: StoreField: r1->field_37 = r0
    //     0x438c30: stur         r0, [r1, #0x37]
    // 0x438c34: r0 = call 0x391a04
    //     0x438c34: bl           0x391a04
    //     0x438c38: stur         r0, [fp, #-0x60]
    //     0x438c3c: ldur         BARRIER, [fp, #-0x68]
    //     0x438c40: ldur         lr, [fp, #-0x78]
    //     0x438c44: stp          lr, BARRIER, [SP]
    // 0x438c48: r1 = r0
    //     0x438c48: mov          r1, r0
    // 0x438c4c: r4 = pp[0x20f]
    //     0x438c4c: add          r4, PP, #0xf, lsl #12
    //     0x438c50: ldr          r4, [r4, #0x200]
    // 0x438c54: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x438c54: bl           0x391490
    // 0x438c58: r0 = call 0x3949ec
    //     0x438c58: bl           0x3949ec
    // 0x438c5c: r4 = r0
    //     0x438c5c: mov          r4, r0
    // 0x438c60: r0 = pp[0x5d7]
    //     0x438c60: add          r0, PP, #0xf, lsl #12
    //     0x438c64: ldr          r0, [r0, #0x5c8]
    //     0x438c68: stur         r4, [fp, #-0x68]
    // 0x438c6c: StoreField: r4->field_13 = r0
    //     0x438c6c: stur         r0, [r4, #0x13]
    //     0x438c70: ldur         r0, [fp, #-0x10]
    // 0x438c74: LoadField: r3 = r0->field_f
    //     0x438c74: ldur         r3, [r0, #0xf]
    //     0x438c78: add          r3, r3, HEAP, lsl #32
    // 0x438c7c: BARRIER = pp[0x40]
    //     0x438c7c: ldr          BARRIER, [PP, #0x40]
    //     0x438c80: cmp          r3, r16
    // 0x438c84: b.eq 0x438eac
    //     0x438c84: b.eq         0x438eac
    //     0x438c88: ldur         r0, [fp, #-0x20]
    // 0x438c8c: LoadField: r1 = r0->field_f
    //     0x438c8c: ldur         r1, [r0, #0xf]
    //     0x438c90: add          r1, r1, HEAP, lsl #32
    // 0x438c94: r2 = pp[0xaee]
    //     0x438c94: add          r2, PP, #0xe, lsl #12
    //     0x438c98: ldr          r2, [r2, #0xae0]
    // 0x438c9c: r0 = soul_flutter_international$biz$game$page_game_fruit_ranking__PageGameFruitRankingState::_coinLabelWidget()
    //     0x438c9c: bl           0x4386e8
    // 0x438ca0: r1 = NULL
    //     0x438ca0: mov          r1, NULL
    //     0x438ca4: mov          r2, #6
    //     0x438ca8: stur         r0, [fp, #-0x10]
    // 0x438cac: r0 = call 0x61f920
    //     0x438cac: bl           0x61f920
    // 0x438cb0: r2 = r0
    //     0x438cb0: mov          r2, r0
    //     0x438cb4: ldur         r0, [fp, #-0x60]
    //     0x438cb8: stur         r2, [fp, #-0x20]
    // 0x438cbc: StoreField: r2->field_f = r0
    //     0x438cbc: stur         r0, [r2, #0xf]
    //     0x438cc0: ldur         r0, [fp, #-0x68]
    // 0x438cc4: StoreField: r2->field_13 = r0
    //     0x438cc4: stur         r0, [r2, #0x13]
    //     0x438cc8: ldur         r0, [fp, #-0x10]
    // 0x438ccc: ArrayStore: r2[0] = r0  ; List_8
    //     0x438ccc: stur         r0, [r2, #0x17]
    // 0x438cd0: r1 = pp[0x5c58]
    //     0x438cd0: ldr          r1, [PP, #0x5c58]
    // 0x438cd4: r0 = call 0x61e854
    //     0x438cd4: bl           0x61e854
    // 0x438cd8: r1 = r0
    //     0x438cd8: mov          r1, r0
    //     0x438cdc: ldur         r0, [fp, #-0x20]
    //     0x438ce0: stur         r1, [fp, #-0x10]
    // 0x438ce4: StoreField: r1->field_f = r0
    //     0x438ce4: stur         r0, [r1, #0xf]
    //     0x438ce8: mov          r0, #6
    // 0x438cec: StoreField: r1->field_b = r0
    //     0x438cec: stur         r0, [r1, #0xb]
    // 0x438cf0: r0 = call 0x39310c
    //     0x438cf0: bl           0x39310c
    // 0x438cf4: r2 = r0
    //     0x438cf4: mov          r2, r0
    // 0x438cf8: r0 = pp[0x862]
    //     0x438cf8: add          r0, PP, #0xa, lsl #12
    //     0x438cfc: ldr          r0, [r0, #0x858]
    //     0x438d00: stur         r2, [fp, #-0x20]
    // 0x438d04: StoreField: r2->field_f = r0
    //     0x438d04: stur         r0, [r2, #0xf]
    // 0x438d08: r0 = pp[0x297]
    //     0x438d08: add          r0, PP, #0xf, lsl #12
    //     0x438d0c: ldr          r0, [r0, #0x288]
    // 0x438d10: StoreField: r2->field_13 = r0
    //     0x438d10: stur         r0, [r2, #0x13]
    // 0x438d14: r0 = pp[0xaf6]
    //     0x438d14: add          r0, PP, #0xe, lsl #12
    //     0x438d18: ldr          r0, [r0, #0xae8]
    // 0x438d1c: ArrayStore: r2[0] = r0  ; List_8
    //     0x438d1c: stur         r0, [r2, #0x17]
    // 0x438d20: r1 = pp[0xafe]
    //     0x438d20: add          r1, PP, #0xe, lsl #12
    //     0x438d24: ldr          r1, [r1, #0xaf0]
    // 0x438d28: StoreField: r2->field_1b = r1
    //     0x438d28: stur         r1, [r2, #0x1b]
    // 0x438d2c: r3 = pp[0xb06]
    //     0x438d2c: add          r3, PP, #0xe, lsl #12
    //     0x438d30: ldr          r3, [r3, #0xaf8]
    // 0x438d34: StoreField: r2->field_23 = r3
    //     0x438d34: stur         r3, [r2, #0x23]
    // 0x438d38: r4 = pp[0xb2]
    //     0x438d38: add          r4, PP, #0xa, lsl #12
    //     0x438d3c: ldr          r4, [r4, #0xa8]
    // 0x438d40: StoreField: r2->field_2b = r4
    //     0x438d40: stur         r4, [r2, #0x2b]
    // 0x438d44: StoreField: r2->field_2f = xzr
    //     0x438d44: stur         xzr, [r2, #0x2f]
    //     0x438d48: ldur         r1, [fp, #-0x10]
    // 0x438d4c: StoreField: r2->field_b = r1
    //     0x438d4c: stur         r1, [r2, #0xb]
    // 0x438d50: r1 = pp[0xade]
    //     0x438d50: add          r1, PP, #0xe, lsl #12
    //     0x438d54: ldr          r1, [r1, #0xad0]
    // 0x438d58: r0 = call 0x39fb14
    //     0x438d58: bl           0x39fb14
    // 0x438d5c: r3 = r0
    //     0x438d5c: mov          r3, r0
    //     0x438d60: mov          r0, #1
    //     0x438d64: stur         r3, [fp, #-0x10]
    // 0x438d68: StoreField: r3->field_13 = r0
    //     0x438d68: stur         r0, [r3, #0x13]
    // 0x438d6c: r0 = pp[0xae6]
    //     0x438d6c: add          r0, PP, #0xe, lsl #12
    //     0x438d70: ldr          r0, [r0, #0xad8]
    // 0x438d74: StoreField: r3->field_1b = r0
    //     0x438d74: stur         r0, [r3, #0x1b]
    //     0x438d78: ldur         r0, [fp, #-0x20]
    // 0x438d7c: StoreField: r3->field_b = r0
    //     0x438d7c: stur         r0, [r3, #0xb]
    // 0x438d80: r1 = NULL
    //     0x438d80: mov          r1, NULL
    //     0x438d84: mov          r2, #0xc
    // 0x438d88: r0 = call 0x61f920
    //     0x438d88: bl           0x61f920
    // 0x438d8c: r2 = r0
    //     0x438d8c: mov          r2, r0
    //     0x438d90: ldur         r0, [fp, #-0x38]
    //     0x438d94: stur         r2, [fp, #-0x20]
    // 0x438d98: StoreField: r2->field_f = r0
    //     0x438d98: stur         r0, [r2, #0xf]
    //     0x438d9c: ldur         r0, [fp, #-0x50]
    // 0x438da0: StoreField: r2->field_13 = r0
    //     0x438da0: stur         r0, [r2, #0x13]
    //     0x438da4: ldur         r0, [fp, #-0x48]
    // 0x438da8: ArrayStore: r2[0] = r0  ; List_8
    //     0x438da8: stur         r0, [r2, #0x17]
    //     0x438dac: ldur         r0, [fp, #-0x40]
    // 0x438db0: StoreField: r2->field_1b = r0
    //     0x438db0: stur         r0, [r2, #0x1b]
    //     0x438db4: ldur         r0, [fp, #-0x58]
    // 0x438db8: StoreField: r2->field_1f = r0
    //     0x438db8: stur         r0, [r2, #0x1f]
    //     0x438dbc: ldur         r0, [fp, #-0x10]
    // 0x438dc0: StoreField: r2->field_23 = r0
    //     0x438dc0: stur         r0, [r2, #0x23]
    // 0x438dc4: r1 = pp[0x5c58]
    //     0x438dc4: ldr          r1, [PP, #0x5c58]
    // 0x438dc8: r0 = call 0x61e854
    //     0x438dc8: bl           0x61e854
    // 0x438dcc: r1 = r0
    //     0x438dcc: mov          r1, r0
    //     0x438dd0: ldur         r0, [fp, #-0x20]
    //     0x438dd4: stur         r1, [fp, #-0x10]
    // 0x438dd8: StoreField: r1->field_f = r0
    //     0x438dd8: stur         r0, [r1, #0xf]
    //     0x438ddc: mov          r0, #0xc
    // 0x438de0: StoreField: r1->field_b = r0
    //     0x438de0: stur         r0, [r1, #0xb]
    // 0x438de4: r0 = call 0x3a1414
    //     0x438de4: bl           0x3a1414
    // 0x438de8: r1 = r0
    //     0x438de8: mov          r1, r0
    // 0x438dec: r0 = pp[0x5140]
    //     0x438dec: ldr          r0, [PP, #0x5140]
    //     0x438df0: stur         r1, [fp, #-0x20]
    // 0x438df4: StoreField: r1->field_f = r0
    //     0x438df4: stur         r0, [r1, #0xf]
    // 0x438df8: r0 = pp[0xaee]
    //     0x438df8: add          r0, PP, #0xe, lsl #12
    //     0x438dfc: ldr          r0, [r0, #0xae0]
    // 0x438e00: StoreField: r1->field_13 = r0
    //     0x438e00: stur         r0, [r1, #0x13]
    // 0x438e04: r0 = pp[0xaf6]
    //     0x438e04: add          r0, PP, #0xe, lsl #12
    //     0x438e08: ldr          r0, [r0, #0xae8]
    // 0x438e0c: ArrayStore: r1[0] = r0  ; List_8
    //     0x438e0c: stur         r0, [r1, #0x17]
    // 0x438e10: r0 = pp[0xb6e]
    //     0x438e10: add          r0, PP, #0xe, lsl #12
    //     0x438e14: ldr          r0, [r0, #0xb60]
    // 0x438e18: StoreField: r1->field_1b = r0
    //     0x438e18: stur         r0, [r1, #0x1b]
    // 0x438e1c: r0 = pp[0xb06]
    //     0x438e1c: add          r0, PP, #0xe, lsl #12
    //     0x438e20: ldr          r0, [r0, #0xaf8]
    // 0x438e24: StoreField: r1->field_23 = r0
    //     0x438e24: stur         r0, [r1, #0x23]
    // 0x438e28: r0 = pp[0xb2]
    //     0x438e28: add          r0, PP, #0xa, lsl #12
    //     0x438e2c: ldr          r0, [r0, #0xa8]
    // 0x438e30: StoreField: r1->field_2b = r0
    //     0x438e30: stur         r0, [r1, #0x2b]
    // 0x438e34: StoreField: r1->field_2f = xzr
    //     0x438e34: stur         xzr, [r1, #0x2f]
    //     0x438e38: ldur         r0, [fp, #-0x10]
    // 0x438e3c: StoreField: r1->field_b = r0
    //     0x438e3c: stur         r0, [r1, #0xb]
    // 0x438e40: r0 = call 0x391a04
    //     0x438e40: bl           0x391a04
    //     0x438e44: stur         r0, [fp, #-0x10]
    //     0x438e48: ldur         BARRIER, [fp, #-0x28]
    //     0x438e4c: ldur         lr, [fp, #-0x30]
    //     0x438e50: stp          lr, BARRIER, [SP, #0x18]
    // 0x438e54: BARRIER = pp[0x5458]
    //     0x438e54: ldr          BARRIER, [PP, #0x5458]
    //     0x438e58: ldur         lr, [fp, #-8]
    //     0x438e5c: stp          lr, BARRIER, [SP, #8]
    //     0x438e60: ldur         BARRIER, [fp, #-0x20]
    //     0x438e64: str          BARRIER, [SP]
    // 0x438e68: r1 = r0
    //     0x438e68: mov          r1, r0
    // 0x438e6c: r4 = pp[0x9f1]
    //     0x438e6c: add          r4, PP, #0x11, lsl #12
    //     0x438e70: ldr          r4, [r4, #0x9e0]
    // 0x438e74: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x438e74: bl           0x391490
    //     0x438e78: ldur         r0, [fp, #-0x10]
    // 0x438e7c: SP = fp
    //     0x438e7c: mov          SP, fp
    // 0x438e80: LeaveFrame
    //     0x438e80: ldp          fp, lr, [SP], #0x10
    // 0x438e84: ret
    //     0x438e84: ret          
    // 0x438e88: r0 = call 0x61fa28
    //     0x438e88: bl           0x61fa28
    // 0x438e8c: b 0x438950
    //     0x438e8c: b            0x438950
    // 0x438e90: r0 = call 0x61fe70
    //     0x438e90: bl           0x61fe70
    // 0x438e94: r9 = pp[0x939]
    //     0x438e94: add          r9, PP, #0x11, lsl #12
    //     0x438e98: ldr          r9, [r9, #0x928]
    // 0x438e9c: r0 = call 0x620258
    //     0x438e9c: bl           0x620258
    // 0x438ea0: r9 = pp[0x941]
    //     0x438ea0: add          r9, PP, #0x11, lsl #12
    //     0x438ea4: ldr          r9, [r9, #0x930]
    // 0x438ea8: r0 = call 0x620258
    //     0x438ea8: bl           0x620258
    // 0x438eac: r9 = pp[0x949]
    //     0x438eac: add          r9, PP, #0x11, lsl #12
    //     0x438eb0: ldr          r9, [r9, #0x938]
    // 0x438eb4: r0 = call 0x620258
    //     0x438eb4: bl           0x620258
  }

  build() {
    // ** addr: 0x43955c, size: 0x35c
    // 0x43955c: EnterFrame
    //     0x43955c: stp          fp, lr, [SP, #-0x10]!
    //     0x439560: mov          fp, SP
    // 0x439564: AllocStack(0x50)
    //     0x439564: sub          SP, SP, #0x50
    // 0x439568: r0 = r1
    //     0x439568: mov          r0, r1
    //     0x43956c: stur         r1, [fp, #-8]
    // 0x439570: r1 = r2
    //     0x439570: mov          r1, r2
    //     0x439574: stur         r2, [fp, #-0x10]
    // 0x439578: CheckStackOverflow
    //     0x439578: ldr          BARRIER, [THR, #0x38]
    //     0x43957c: cmp          SP, BARRIER
    //     0x439580: b.ls         0x439888
    //     0x439584: mov          r1, #3
    // 0x439588: r0 = call 0x61e890
    //     0x439588: bl           0x61e890
    // 0x43958c: r2 = r0
    //     0x43958c: mov          r2, r0
    //     0x439590: ldur         r0, [fp, #-8]
    //     0x439594: stur         r2, [fp, #-0x18]
    // 0x439598: StoreField: r2->field_f = r0
    //     0x439598: stur         r0, [r2, #0xf]
    //     0x43959c: ldur         r1, [fp, #-0x10]
    // 0x4395a0: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenWidth()
    //     0x4395a0: bl           0x3a877c
    //     0x4395a4: mov          v1.16b, v0.16b
    // 0x4395a8: d0 = pp[0x801]
    //     0x4395a8: add          r17, PP, #0x11, lsl #12
    //     0x4395ac: ldr          d0, [r17, #0x7f0]
    //     0x4395b0: fmul         d2, d1, d0
    //     0x4395b4: ldp          r0, r1, [THR, #0x50]
    //     0x4395b8: add          r0, r0, #0x10
    //     0x4395bc: cmp          r1, r0
    // 0x4395c0: b.ls 0x439890
    //     0x4395c0: b.ls         0x439890
    //     0x4395c4: str          r0, [THR, #0x50]
    //     0x4395c8: sub          r0, r0, #0xf
    //     0x4395cc: mov          r1, #0xe15c
    //     0x4395d0: movk         r1, #3, lsl #16
    //     0x4395d4: stur         r1, [r0, #-1]
    // 0x4395d8: StoreField: r0->field_7 = d2
    //     0x4395d8: stur         d2, [r0, #7]
    //     0x4395dc: ldur         r2, [fp, #-0x18]
    // 0x4395e0: StoreField: r2->field_13 = r0
    //     0x4395e0: stur         r0, [r2, #0x13]
    //     0x4395e4: ldurb        r16, [r2, #-1]
    //     0x4395e8: ldurb        r17, [r0, #-1]
    //     0x4395ec: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4395f0: tst          BARRIER, HEAP, lsr #32
    // 0x4395f4: b.eq 0x4395fc
    //     0x4395f4: b.eq         0x4395fc
    // 0x4395f8: r0 = call 0x61e06c
    //     0x4395f8: bl           0x61e06c
    //     0x4395fc: fsub         d0, d1, d2
    //     0x439600: fmov         d1, #14.00000000
    //     0x439604: fsub         d2, d0, d1
    // 0x439608: d0 = pp[0x65d0]
    //     0x439608: ldr          d0, [PP, #0x65d0]
    //     0x43960c: fsub         d1, d2, d0
    //     0x439610: fmov         d0, #2.00000000
    //     0x439614: fdiv         d2, d1, d0
    //     0x439618: ldp          r0, r1, [THR, #0x50]
    //     0x43961c: add          r0, r0, #0x10
    //     0x439620: cmp          r1, r0
    // 0x439624: b.ls 0x4398a0
    //     0x439624: b.ls         0x4398a0
    //     0x439628: str          r0, [THR, #0x50]
    //     0x43962c: sub          r0, r0, #0xf
    //     0x439630: mov          r1, #0xe15c
    //     0x439634: movk         r1, #3, lsl #16
    //     0x439638: stur         r1, [r0, #-1]
    // 0x43963c: StoreField: r0->field_7 = d2
    //     0x43963c: stur         d2, [r0, #7]
    // 0x439640: ArrayStore: r2[0] = r0  ; List_8
    //     0x439640: stur         r0, [r2, #0x17]
    //     0x439644: ldurb        r16, [r2, #-1]
    //     0x439648: ldurb        r17, [r0, #-1]
    //     0x43964c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x439650: tst          BARRIER, HEAP, lsr #32
    // 0x439654: b.eq 0x43965c
    //     0x439654: b.eq         0x43965c
    // 0x439658: r0 = call 0x61e06c
    //     0x439658: bl           0x61e06c
    // 0x43965c: r1 = pp[0x8a4]
    //     0x43965c: add          r1, PP, #0xc, lsl #12
    //     0x439660: ldr          r1, [r1, #0x898]
    // 0x439664: r4 = pp[0x4c0]
    //     0x439664: ldr          r4, [PP, #0x4c0]
    // 0x439668: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x439668: bl           0x3a1dcc
    //     0x43966c: stur         r0, [fp, #-8]
    // 0x439670: r0 = soul_flutter_international$res$colors_SOColors::get_s_06()
    //     0x439670: bl           0x3b82c4
    //     0x439674: stur         r0, [fp, #-0x10]
    // 0x439678: r0 = call 0x31d844
    //     0x439678: bl           0x31d844
    // 0x43967c: r1 = r0
    //     0x43967c: mov          r1, r0
    // 0x439680: r0 = pp[0x6310]
    //     0x439680: ldr          r0, [PP, #0x6310]
    //     0x439684: stur         r1, [fp, #-0x20]
    // 0x439688: StoreField: r1->field_27 = r0
    //     0x439688: stur         r0, [r1, #0x27]
    //     0x43968c: fmov         d0, #1.00000000
    // 0x439690: StoreField: r1->field_7 = d0
    //     0x439690: stur         d0, [r1, #7]
    // 0x439694: d1 = pp[0x809]
    //     0x439694: add          r17, PP, #0x11, lsl #12
    //     0x439698: ldr          d1, [r17, #0x7f8]
    // 0x43969c: StoreField: r1->field_f = d1
    //     0x43969c: stur         d1, [r1, #0xf]
    // 0x4396a0: d1 = pp[0xd5f]
    //     0x4396a0: add          r17, PP, #0xf, lsl #12
    //     0x4396a4: ldr          d1, [r17, #0xd50]
    // 0x4396a8: ArrayStore: r1[0] = d1  ; List_8
    //     0x4396a8: stur         d1, [r1, #0x17]
    // 0x4396ac: StoreField: r1->field_1f = d0
    //     0x4396ac: stur         d0, [r1, #0x1f]
    // 0x4396b0: r0 = call 0x31d844
    //     0x4396b0: bl           0x31d844
    // 0x4396b4: r1 = r0
    //     0x4396b4: mov          r1, r0
    // 0x4396b8: r0 = pp[0x6310]
    //     0x4396b8: ldr          r0, [PP, #0x6310]
    //     0x4396bc: stur         r1, [fp, #-0x28]
    // 0x4396c0: StoreField: r1->field_27 = r0
    //     0x4396c0: stur         r0, [r1, #0x27]
    //     0x4396c4: fmov         d0, #1.00000000
    // 0x4396c8: StoreField: r1->field_7 = d0
    //     0x4396c8: stur         d0, [r1, #7]
    // 0x4396cc: d1 = pp[0x64d0]
    //     0x4396cc: ldr          d1, [PP, #0x64d0]
    // 0x4396d0: StoreField: r1->field_f = d1
    //     0x4396d0: stur         d1, [r1, #0xf]
    // 0x4396d4: d1 = pp[0xae8]
    //     0x4396d4: add          r17, PP, #0x10, lsl #12
    //     0x4396d8: ldr          d1, [r17, #0xad8]
    // 0x4396dc: ArrayStore: r1[0] = d1  ; List_8
    //     0x4396dc: stur         d1, [r1, #0x17]
    // 0x4396e0: StoreField: r1->field_1f = d0
    //     0x4396e0: stur         d0, [r1, #0x1f]
    // 0x4396e4: r0 = call 0x31d844
    //     0x4396e4: bl           0x31d844
    // 0x4396e8: r3 = r0
    //     0x4396e8: mov          r3, r0
    // 0x4396ec: r0 = pp[0x6310]
    //     0x4396ec: ldr          r0, [PP, #0x6310]
    //     0x4396f0: stur         r3, [fp, #-0x30]
    // 0x4396f4: StoreField: r3->field_27 = r0
    //     0x4396f4: stur         r0, [r3, #0x27]
    //     0x4396f8: fmov         d0, #1.00000000
    // 0x4396fc: StoreField: r3->field_7 = d0
    //     0x4396fc: stur         d0, [r3, #7]
    // 0x439700: d0 = pp[0x811]
    //     0x439700: add          r17, PP, #0x11, lsl #12
    //     0x439704: ldr          d0, [r17, #0x800]
    // 0x439708: StoreField: r3->field_f = d0
    //     0x439708: stur         d0, [r3, #0xf]
    // 0x43970c: d0 = pp[0xe56]
    //     0x43970c: add          r17, PP, #0xe, lsl #12
    //     0x439710: ldr          d0, [r17, #0xe48]
    // 0x439714: ArrayStore: r3[0] = d0  ; List_8
    //     0x439714: stur         d0, [r3, #0x17]
    // 0x439718: d0 = pp[0x637]
    //     0x439718: add          r17, PP, #0xf, lsl #12
    //     0x43971c: ldr          d0, [r17, #0x628]
    // 0x439720: StoreField: r3->field_1f = d0
    //     0x439720: stur         d0, [r3, #0x1f]
    // 0x439724: r1 = NULL
    //     0x439724: mov          r1, NULL
    //     0x439728: mov          r2, #6
    // 0x43972c: r0 = call 0x61f920
    //     0x43972c: bl           0x61f920
    // 0x439730: r2 = r0
    //     0x439730: mov          r2, r0
    //     0x439734: ldur         r0, [fp, #-0x20]
    //     0x439738: stur         r2, [fp, #-0x38]
    // 0x43973c: StoreField: r2->field_f = r0
    //     0x43973c: stur         r0, [r2, #0xf]
    //     0x439740: ldur         r0, [fp, #-0x28]
    // 0x439744: StoreField: r2->field_13 = r0
    //     0x439744: stur         r0, [r2, #0x13]
    //     0x439748: ldur         r0, [fp, #-0x30]
    // 0x43974c: ArrayStore: r2[0] = r0  ; List_8
    //     0x43974c: stur         r0, [r2, #0x17]
    // 0x439750: r1 = pp[0xc68]
    //     0x439750: add          r1, PP, #0x10, lsl #12
    //     0x439754: ldr          r1, [r1, #0xc58]
    // 0x439758: r0 = call 0x61e854
    //     0x439758: bl           0x61e854
    // 0x43975c: r1 = r0
    //     0x43975c: mov          r1, r0
    //     0x439760: ldur         r0, [fp, #-0x38]
    //     0x439764: stur         r1, [fp, #-0x20]
    // 0x439768: StoreField: r1->field_f = r0
    //     0x439768: stur         r0, [r1, #0xf]
    //     0x43976c: mov          r0, #6
    // 0x439770: StoreField: r1->field_b = r0
    //     0x439770: stur         r0, [r1, #0xb]
    // 0x439774: r0 = call 0x3a108c
    //     0x439774: bl           0x3a108c
    // 0x439778: r1 = r0
    //     0x439778: mov          r1, r0
    // 0x43977c: r0 = pp[0xb96]
    //     0x43977c: add          r0, PP, #0xe, lsl #12
    //     0x439780: ldr          r0, [r0, #0xb88]
    //     0x439784: stur         r1, [fp, #-0x28]
    // 0x439788: StoreField: r1->field_13 = r0
    //     0x439788: stur         r0, [r1, #0x13]
    // 0x43978c: r0 = pp[0x819]
    //     0x43978c: add          r0, PP, #0x11, lsl #12
    //     0x439790: ldr          r0, [r0, #0x808]
    // 0x439794: ArrayStore: r1[0] = r0  ; List_8
    //     0x439794: stur         r0, [r1, #0x17]
    // 0x439798: r0 = pp[0xc88]
    //     0x439798: add          r0, PP, #0x10, lsl #12
    //     0x43979c: ldr          r0, [r0, #0xc78]
    // 0x4397a0: StoreField: r1->field_1b = r0
    //     0x4397a0: stur         r0, [r1, #0x1b]
    //     0x4397a4: ldur         r0, [fp, #-0x20]
    // 0x4397a8: StoreField: r1->field_7 = r0
    //     0x4397a8: stur         r0, [r1, #7]
    // 0x4397ac: r0 = call 0x391dd8
    //     0x4397ac: bl           0x391dd8
    // 0x4397b0: r3 = r0
    //     0x4397b0: mov          r3, r0
    //     0x4397b4: ldur         r0, [fp, #-0x28]
    //     0x4397b8: stur         r3, [fp, #-0x20]
    // 0x4397bc: StoreField: r3->field_1b = r0
    //     0x4397bc: stur         r0, [r3, #0x1b]
    // 0x4397c0: r0 = pp[0xb86]
    //     0x4397c0: add          r0, PP, #0xe, lsl #12
    //     0x4397c4: ldr          r0, [r0, #0xb78]
    // 0x4397c8: StoreField: r3->field_23 = r0
    //     0x4397c8: stur         r0, [r3, #0x23]
    //     0x4397cc: ldur         r2, [fp, #-0x18]
    // 0x4397d0: r1 = pp[0x821]
    //     0x4397d0: add          r1, PP, #0x11, lsl #12
    //     0x4397d4: ldr          r1, [r1, #0x810]
    // 0x4397d8: r0 = call 0x61ec54
    //     0x4397d8: bl           0x61ec54
    // 0x4397dc: r1 = pp[0x829]
    //     0x4397dc: add          r1, PP, #0x11, lsl #12
    //     0x4397e0: ldr          r1, [r1, #0x818]
    //     0x4397e4: stur         r0, [fp, #-0x28]
    // 0x4397e8: r0 = call 0x41a414
    //     0x4397e8: bl           0x41a414
    // 0x4397ec: r1 = r0
    //     0x4397ec: mov          r1, r0
    //     0x4397f0: ldur         r0, [fp, #-0x28]
    //     0x4397f4: stur         r1, [fp, #-0x30]
    // 0x4397f8: StoreField: r1->field_13 = r0
    //     0x4397f8: stur         r0, [r1, #0x13]
    // 0x4397fc: r0 = call 0x391a04
    //     0x4397fc: bl           0x391a04
    //     0x439800: stur         r0, [fp, #-0x28]
    // 0x439804: BARRIER = pp[0x5458]
    //     0x439804: ldr          BARRIER, [PP, #0x5458]
    //     0x439808: ldur         lr, [fp, #-0x20]
    //     0x43980c: stp          lr, BARRIER, [SP, #8]
    //     0x439810: ldur         BARRIER, [fp, #-0x30]
    //     0x439814: str          BARRIER, [SP]
    // 0x439818: r1 = r0
    //     0x439818: mov          r1, r0
    // 0x43981c: r4 = pp[0x831]
    //     0x43981c: add          r4, PP, #0x11, lsl #12
    //     0x439820: ldr          r4, [r4, #0x820]
    // 0x439824: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x439824: bl           0x391490
    //     0x439828: ldur         r2, [fp, #-0x18]
    // 0x43982c: r1 = pp[0x839]
    //     0x43982c: add          r1, PP, #0x11, lsl #12
    //     0x439830: ldr          r1, [r1, #0x828]
    // 0x439834: r0 = call 0x61ec54
    //     0x439834: bl           0x61ec54
    // 0x439838: r1 = pp[0x829]
    //     0x439838: add          r1, PP, #0x11, lsl #12
    //     0x43983c: ldr          r1, [r1, #0x818]
    //     0x439840: stur         r0, [fp, #-0x18]
    // 0x439844: r0 = call 0x3b81c4
    //     0x439844: bl           0x3b81c4
    // 0x439848: r1 = r0
    //     0x439848: mov          r1, r0
    //     0x43984c: ldur         r2, [fp, #-0x28]
    //     0x439850: ldur         r3, [fp, #-0x18]
    // 0x439854: r5 = NULL
    //     0x439854: mov          r5, NULL
    //     0x439858: stur         r0, [fp, #-0x18]
    // 0x43985c: r0 = provider$src$provider_InheritedProvider::ctor()
    //     0x43985c: bl           0x3b7e8c
    // 0x439860: r0 = call 0x3b7d48
    //     0x439860: bl           0x3b7d48
    //     0x439864: ldur         r1, [fp, #-8]
    // 0x439868: StoreField: r0->field_b = r1
    //     0x439868: stur         r1, [r0, #0xb]
    //     0x43986c: ldur         r1, [fp, #-0x10]
    // 0x439870: ArrayStore: r0[0] = r1  ; List_8
    //     0x439870: stur         r1, [r0, #0x17]
    //     0x439874: ldur         r1, [fp, #-0x18]
    // 0x439878: StoreField: r0->field_1b = r1
    //     0x439878: stur         r1, [r0, #0x1b]
    // 0x43987c: SP = fp
    //     0x43987c: mov          SP, fp
    // 0x439880: LeaveFrame
    //     0x439880: ldp          fp, lr, [SP], #0x10
    // 0x439884: ret
    //     0x439884: ret          
    // 0x439888: r0 = call 0x61fa28
    //     0x439888: bl           0x61fa28
    // 0x43988c: b 0x439584
    //     0x43988c: b            0x439584
    //     0x439890: stp          q1, q2, [SP, #-0x20]!
    // 0x439894: r0 = call 0x61f878
    //     0x439894: bl           0x61f878
    //     0x439898: ldp          q1, q2, [SP], #0x20
    // 0x43989c: b 0x4395d8
    //     0x43989c: b            0x4395d8
    //     0x4398a0: str          q2, [SP, #-0x10]!
    //     0x4398a4: str          r2, [SP, #-8]!
    // 0x4398a8: r0 = call 0x61f878
    //     0x4398a8: bl           0x61f878
    //     0x4398ac: ldr          r2, [SP], #8
    //     0x4398b0: ldr          q2, [SP], #0x10
    // 0x4398b4: b 0x43963c
    //     0x4398b4: b            0x43963c
  }

  _anon_closure() {
    // ** addr: 0x4398b8, size: 0xd8
    // 0x4398b8: EnterFrame
    //     0x4398b8: stp          fp, lr, [SP, #-0x10]!
    //     0x4398bc: mov          fp, SP
    // 0x4398c0: AllocStack(8)
    //     0x4398c0: sub          SP, SP, #8
    //     0x4398c4: ldr          r0, [fp, #0x28]
    // 0x4398c8: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x4398c8: ldur         r2, [r0, #0x17]
    //     0x4398cc: add          r2, r2, HEAP, lsl #32
    //     0x4398d0: stur         r2, [fp, #-8]
    // 0x4398d4: CheckStackOverflow
    //     0x4398d4: ldr          BARRIER, [THR, #0x38]
    //     0x4398d8: cmp          SP, BARRIER
    //     0x4398dc: b.ls         0x43997c
    // 0x4398e0: LoadField: r1 = r2->field_f
    //     0x4398e0: ldur         r1, [r2, #0xf]
    //     0x4398e4: add          r1, r1, HEAP, lsl #32
    // 0x4398e8: LoadField: r3 = r1->field_13
    //     0x4398e8: ldur         r3, [r1, #0x13]
    //     0x4398ec: add          r3, r3, HEAP, lsl #32
    // 0x4398f0: LoadField: r0 = r3->field_2b
    //     0x4398f0: ldur         r0, [r3, #0x2b]
    //     0x4398f4: add          r0, r0, HEAP, lsl #32
    // 0x4398f8: LoadField: r4 = r0->field_b
    //     0x4398f8: ldur         r4, [r0, #0xb]
    //     0x4398fc: sbfx         r5, r4, #1, #0x1f
    //     0x439900: cmp          r5, #0
    // 0x439904: b.le 0x439940
    //     0x439904: b.le         0x439940
    // 0x439908: ArrayLoad: r5 = r1[0]  ; List_8
    //     0x439908: ldur         r5, [r1, #0x17]
    //     0x43990c: add          r5, r5, HEAP, lsl #32
    // 0x439910: BARRIER = pp[0x40]
    //     0x439910: ldr          BARRIER, [PP, #0x40]
    //     0x439914: cmp          r5, r16
    // 0x439918: b.eq 0x439984
    //     0x439918: b.eq         0x439984
    // 0x43991c: LoadField: r4 = r2->field_13
    //     0x43991c: ldur         r4, [r2, #0x13]
    //     0x439920: add          r4, r4, HEAP, lsl #32
    // 0x439924: ArrayLoad: r6 = r2[0]  ; List_8
    //     0x439924: ldur         r6, [r2, #0x17]
    //     0x439928: add          r6, r6, HEAP, lsl #32
    // 0x43992c: LoadField: d0 = r4->field_7
    //     0x43992c: ldur         d0, [r4, #7]
    // 0x439930: LoadField: d1 = r6->field_7
    //     0x439930: ldur         d1, [r6, #7]
    // 0x439934: r2 = r0
    //     0x439934: mov          r2, r0
    // 0x439938: r0 = soul_flutter_international$biz$game$page_game_fruit_ranking__PageGameFruitRankingState::_userRankListWidget()
    //     0x439938: bl           0x436d20
    // 0x43993c: b 0x439970
    //     0x43993c: b            0x439970
    // 0x439940: r1 = pp[0x894]
    //     0x439940: add          r1, PP, #0xc, lsl #12
    //     0x439944: ldr          r1, [r1, #0x888]
    // 0x439948: r4 = pp[0x4c0]
    //     0x439948: ldr          r4, [PP, #0x4c0]
    // 0x43994c: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x43994c: bl           0x3a1dcc
    // 0x439950: r1 = r0
    //     0x439950: mov          r1, r0
    //     0x439954: ldur         r0, [fp, #-8]
    // 0x439958: LoadField: r2 = r0->field_f
    //     0x439958: ldur         r2, [r0, #0xf]
    //     0x43995c: add          r2, r2, HEAP, lsl #32
    // 0x439960: BARRIER = r1
    //     0x439960: mov          BARRIER, r1
    // 0x439964: r1 = r2
    //     0x439964: mov          r1, r2
    // 0x439968: r2 = BARRIER
    //     0x439968: mov          r2, BARRIER
    // 0x43996c: r0 = soul_flutter_international$biz$game$page_game_fruit_ranking__PageGameFruitRankingState::_rankListEmptyWidget()
    //     0x43996c: bl           0x438528
    // 0x439970: SP = fp
    //     0x439970: mov          SP, fp
    // 0x439974: LeaveFrame
    //     0x439974: ldp          fp, lr, [SP], #0x10
    // 0x439978: ret
    //     0x439978: ret          
    // 0x43997c: r0 = call 0x61fa28
    //     0x43997c: bl           0x61fa28
    // 0x439980: b 0x4398e0
    //     0x439980: b            0x4398e0
    // 0x439984: r9 = pp[0x841]
    //     0x439984: add          r9, PP, #0x11, lsl #12
    //     0x439988: ldr          r9, [r9, #0x830]
    // 0x43998c: r0 = call 0x620258
    //     0x43998c: bl           0x620258
  }

  dispose() {
    // ** addr: 0x4523dc, size: 0x54
    // 0x4523dc: EnterFrame
    //     0x4523dc: stp          fp, lr, [SP, #-0x10]!
    //     0x4523e0: mov          fp, SP
    // 0x4523e4: CheckStackOverflow
    //     0x4523e4: ldr          BARRIER, [THR, #0x38]
    //     0x4523e8: cmp          SP, BARRIER
    //     0x4523ec: b.ls         0x45241c
    // 0x4523f0: ArrayLoad: r0 = r1[0]  ; List_8
    //     0x4523f0: ldur         r0, [r1, #0x17]
    //     0x4523f4: add          r0, r0, HEAP, lsl #32
    // 0x4523f8: BARRIER = pp[0x40]
    //     0x4523f8: ldr          BARRIER, [PP, #0x40]
    //     0x4523fc: cmp          r0, r16
    // 0x452400: b.eq 0x452424
    //     0x452400: b.eq         0x452424
    // 0x452404: r1 = r0
    //     0x452404: mov          r1, r0
    // 0x452408: r0 = pull_to_refresh$src$smart_refresher_RefreshController::dispose()
    //     0x452408: bl           0x45132c
    // 0x45240c: r0 = NULL
    //     0x45240c: mov          r0, NULL
    // 0x452410: SP = fp
    //     0x452410: mov          SP, fp
    // 0x452414: LeaveFrame
    //     0x452414: ldp          fp, lr, [SP], #0x10
    // 0x452418: ret
    //     0x452418: ret          
    // 0x45241c: r0 = call 0x61fa28
    //     0x45241c: bl           0x61fa28
    // 0x452420: b 0x4523f0
    //     0x452420: b            0x4523f0
    // 0x452424: r9 = pp[0x841]
    //     0x452424: add          r9, PP, #0x11, lsl #12
    //     0x452428: ldr          r9, [r9, #0x830]
    // 0x45242c: r0 = call 0x620258
    //     0x45242c: bl           0x620258
  }

  initState() {
    // ** addr: 0x4d8f14, size: 0xa8
    // 0x4d8f14: EnterFrame
    //     0x4d8f14: stp          fp, lr, [SP, #-0x10]!
    //     0x4d8f18: mov          fp, SP
    // 0x4d8f1c: AllocStack(0x18)
    //     0x4d8f1c: sub          SP, SP, #0x18
    //     0x4d8f20: stur         r1, [fp, #-8]
    // 0x4d8f24: CheckStackOverflow
    //     0x4d8f24: ldr          BARRIER, [THR, #0x38]
    //     0x4d8f28: cmp          SP, BARRIER
    //     0x4d8f2c: b.ls         0x4d8fb4
    //     0x4d8f30: mov          r1, #1
    // 0x4d8f34: r0 = call 0x61e890
    //     0x4d8f34: bl           0x61e890
    // 0x4d8f38: r1 = r0
    //     0x4d8f38: mov          r1, r0
    //     0x4d8f3c: ldur         r0, [fp, #-8]
    //     0x4d8f40: stur         r1, [fp, #-0x10]
    // 0x4d8f44: StoreField: r1->field_f = r0
    //     0x4d8f44: stur         r0, [r1, #0xf]
    // 0x4d8f48: r0 = call 0x4c47f0
    //     0x4d8f48: bl           0x4c47f0
    // 0x4d8f4c: r1 = r0
    //     0x4d8f4c: mov          r1, r0
    //     0x4d8f50: stur         r0, [fp, #-0x18]
    // 0x4d8f54: r0 = pull_to_refresh$src$smart_refresher_RefreshController::ctor()
    //     0x4d8f54: bl           0x4c46e0
    //     0x4d8f58: ldur         r0, [fp, #-0x18]
    //     0x4d8f5c: ldur         r1, [fp, #-8]
    // 0x4d8f60: ArrayStore: r1[0] = r0  ; List_8
    //     0x4d8f60: stur         r0, [r1, #0x17]
    //     0x4d8f64: ldurb        r16, [r1, #-1]
    //     0x4d8f68: ldurb        r17, [r0, #-1]
    //     0x4d8f6c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d8f70: tst          BARRIER, HEAP, lsr #32
    // 0x4d8f74: b.eq 0x4d8f7c
    //     0x4d8f74: b.eq         0x4d8f7c
    // 0x4d8f78: r0 = call 0x61e04c
    //     0x4d8f78: bl           0x61e04c
    // 0x4d8f7c: LoadField: r0 = r1->field_13
    //     0x4d8f7c: ldur         r0, [r1, #0x13]
    //     0x4d8f80: add          r0, r0, HEAP, lsl #32
    //     0x4d8f84: ldur         r2, [fp, #-0x10]
    //     0x4d8f88: stur         r0, [fp, #-0x18]
    // 0x4d8f8c: r1 = pp[0x9f9]
    //     0x4d8f8c: add          r1, PP, #0x11, lsl #12
    //     0x4d8f90: ldr          r1, [r1, #0x9e8]
    // 0x4d8f94: r0 = call 0x61ec54
    //     0x4d8f94: bl           0x61ec54
    //     0x4d8f98: ldur         r1, [fp, #-0x18]
    // 0x4d8f9c: r2 = r0
    //     0x4d8f9c: mov          r2, r0
    // 0x4d8fa0: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_ranking_GameFruitRankingNotifier::gainGameFruitRank()
    //     0x4d8fa0: bl           0x4d8fbc
    // 0x4d8fa4: r0 = NULL
    //     0x4d8fa4: mov          r0, NULL
    // 0x4d8fa8: SP = fp
    //     0x4d8fa8: mov          SP, fp
    // 0x4d8fac: LeaveFrame
    //     0x4d8fac: ldp          fp, lr, [SP], #0x10
    // 0x4d8fb0: ret
    //     0x4d8fb0: ret          
    // 0x4d8fb4: r0 = call 0x61fa28
    //     0x4d8fb4: bl           0x61fa28
    // 0x4d8fb8: b 0x4d8f30
    //     0x4d8fb8: b            0x4d8f30
  }

  _anon_closure() {
    // ** addr: 0x4d9010, size: 0xd4
    // 0x4d9010: EnterFrame
    //     0x4d9010: stp          fp, lr, [SP, #-0x10]!
    //     0x4d9014: mov          fp, SP
    //     0x4d9018: ldr          r0, [fp, #0x20]
    // 0x4d901c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d901c: ldur         r1, [r0, #0x17]
    //     0x4d9020: add          r1, r1, HEAP, lsl #32
    // 0x4d9024: CheckStackOverflow
    //     0x4d9024: ldr          BARRIER, [THR, #0x38]
    //     0x4d9028: cmp          SP, BARRIER
    //     0x4d902c: b.ls         0x4d90b8
    //     0x4d9030: ldr          r0, [fp, #0x18]
    //     0x4d9034: tbnz         r0, #4, 0x4d9088
    //     0x4d9038: ldr          r0, [fp, #0x10]
    //     0x4d903c: tbnz         r0, #4, 0x4d9064
    // 0x4d9040: LoadField: r0 = r1->field_f
    //     0x4d9040: ldur         r0, [r1, #0xf]
    //     0x4d9044: add          r0, r0, HEAP, lsl #32
    // 0x4d9048: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d9048: ldur         r1, [r0, #0x17]
    //     0x4d904c: add          r1, r1, HEAP, lsl #32
    // 0x4d9050: BARRIER = pp[0x40]
    //     0x4d9050: ldr          BARRIER, [PP, #0x40]
    //     0x4d9054: cmp          r1, r16
    // 0x4d9058: b.eq 0x4d90c0
    //     0x4d9058: b.eq         0x4d90c0
    // 0x4d905c: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadNoData()
    //     0x4d905c: bl           0x3adfd4
    // 0x4d9060: b 0x4d90a8
    //     0x4d9060: b            0x4d90a8
    // 0x4d9064: LoadField: r0 = r1->field_f
    //     0x4d9064: ldur         r0, [r1, #0xf]
    //     0x4d9068: add          r0, r0, HEAP, lsl #32
    // 0x4d906c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d906c: ldur         r1, [r0, #0x17]
    //     0x4d9070: add          r1, r1, HEAP, lsl #32
    // 0x4d9074: BARRIER = pp[0x40]
    //     0x4d9074: ldr          BARRIER, [PP, #0x40]
    //     0x4d9078: cmp          r1, r16
    // 0x4d907c: b.eq 0x4d90cc
    //     0x4d907c: b.eq         0x4d90cc
    // 0x4d9080: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadComplete()
    //     0x4d9080: bl           0x3ade48
    // 0x4d9084: b 0x4d90a8
    //     0x4d9084: b            0x4d90a8
    // 0x4d9088: LoadField: r0 = r1->field_f
    //     0x4d9088: ldur         r0, [r1, #0xf]
    //     0x4d908c: add          r0, r0, HEAP, lsl #32
    // 0x4d9090: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d9090: ldur         r1, [r0, #0x17]
    //     0x4d9094: add          r1, r1, HEAP, lsl #32
    // 0x4d9098: BARRIER = pp[0x40]
    //     0x4d9098: ldr          BARRIER, [PP, #0x40]
    //     0x4d909c: cmp          r1, r16
    // 0x4d90a0: b.eq 0x4d90d8
    //     0x4d90a0: b.eq         0x4d90d8
    // 0x4d90a4: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadFailed()
    //     0x4d90a4: bl           0x3adbb4
    // 0x4d90a8: r0 = NULL
    //     0x4d90a8: mov          r0, NULL
    // 0x4d90ac: SP = fp
    //     0x4d90ac: mov          SP, fp
    // 0x4d90b0: LeaveFrame
    //     0x4d90b0: ldp          fp, lr, [SP], #0x10
    // 0x4d90b4: ret
    //     0x4d90b4: ret          
    // 0x4d90b8: r0 = call 0x61fa28
    //     0x4d90b8: bl           0x61fa28
    // 0x4d90bc: b 0x4d9030
    //     0x4d90bc: b            0x4d9030
    // 0x4d90c0: r9 = pp[0x841]
    //     0x4d90c0: add          r9, PP, #0x11, lsl #12
    //     0x4d90c4: ldr          r9, [r9, #0x830]
    // 0x4d90c8: r0 = call 0x620258
    //     0x4d90c8: bl           0x620258
    // 0x4d90cc: r9 = pp[0x841]
    //     0x4d90cc: add          r9, PP, #0x11, lsl #12
    //     0x4d90d0: ldr          r9, [r9, #0x830]
    // 0x4d90d4: r0 = call 0x620258
    //     0x4d90d4: bl           0x620258
    // 0x4d90d8: r9 = pp[0x841]
    //     0x4d90d8: add          r9, PP, #0x11, lsl #12
    //     0x4d90dc: ldr          r9, [r9, #0x830]
    // 0x4d90e0: r0 = call 0x620258
    //     0x4d90e0: bl           0x620258
  }

  createState() {
    // ** addr: 0x4c3a90, size: 0x80
    // 0x4c3a90: EnterFrame
    //     0x4c3a90: stp          fp, lr, [SP, #-0x10]!
    //     0x4c3a94: mov          fp, SP
    // 0x4c3a98: AllocStack(0x10)
    //     0x4c3a98: sub          SP, SP, #0x10
    // 0x4c3a9c: CheckStackOverflow
    //     0x4c3a9c: ldr          BARRIER, [THR, #0x38]
    //     0x4c3aa0: cmp          SP, BARRIER
    //     0x4c3aa4: b.ls         0x4c3b08
    // 0x4c3aa8: r1 = pp[0x833]
    //     0x4c3aa8: add          r1, PP, #0xb, lsl #12
    //     0x4c3aac: ldr          r1, [r1, #0x828]
    // 0x4c3ab0: r0 = call 0x4c3bd8
    //     0x4c3ab0: bl           0x4c3bd8
    // 0x4c3ab4: r1 = r0
    //     0x4c3ab4: mov          r1, r0
    // 0x4c3ab8: r0 = pp[0x40]
    //     0x4c3ab8: ldr          r0, [PP, #0x40]
    //     0x4c3abc: stur         r1, [fp, #-8]
    // 0x4c3ac0: ArrayStore: r1[0] = r0  ; List_8
    //     0x4c3ac0: stur         r0, [r1, #0x17]
    // 0x4c3ac4: r0 = call 0x4c3bcc
    //     0x4c3ac4: bl           0x4c3bcc
    // 0x4c3ac8: r1 = r0
    //     0x4c3ac8: mov          r1, r0
    //     0x4c3acc: stur         r0, [fp, #-0x10]
    // 0x4c3ad0: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_ranking_GameFruitRankingNotifier::ctor()
    //     0x4c3ad0: bl           0x4c3b10
    //     0x4c3ad4: ldur         r0, [fp, #-0x10]
    //     0x4c3ad8: ldur         r1, [fp, #-8]
    // 0x4c3adc: StoreField: r1->field_13 = r0
    //     0x4c3adc: stur         r0, [r1, #0x13]
    //     0x4c3ae0: ldurb        r16, [r1, #-1]
    //     0x4c3ae4: ldurb        r17, [r0, #-1]
    //     0x4c3ae8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3aec: tst          BARRIER, HEAP, lsr #32
    // 0x4c3af0: b.eq 0x4c3af8
    //     0x4c3af0: b.eq         0x4c3af8
    // 0x4c3af4: r0 = call 0x61e04c
    //     0x4c3af4: bl           0x61e04c
    // 0x4c3af8: r0 = r1
    //     0x4c3af8: mov          r0, r1
    // 0x4c3afc: SP = fp
    //     0x4c3afc: mov          SP, fp
    // 0x4c3b00: LeaveFrame
    //     0x4c3b00: ldp          fp, lr, [SP], #0x10
    // 0x4c3b04: ret
    //     0x4c3b04: ret          
    // 0x4c3b08: r0 = call 0x61fa28
    //     0x4c3b08: bl           0x61fa28
    // 0x4c3b0c: b 0x4c3aa8
    //     0x4c3b0c: b            0x4c3aa8
  }
