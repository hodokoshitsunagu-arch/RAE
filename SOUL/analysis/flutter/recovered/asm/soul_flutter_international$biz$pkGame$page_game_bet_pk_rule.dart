// lib: , url: soul_flutter_international$biz$pkGame$page_game_bet_pk_rule


  build() {
    // ** addr: 0x3b6b9c, size: 0x868
    // 0x3b6b9c: EnterFrame
    //     0x3b6b9c: stp          fp, lr, [SP, #-0x10]!
    //     0x3b6ba0: mov          fp, SP
    // 0x3b6ba4: AllocStack(0xa0)
    //     0x3b6ba4: sub          SP, SP, #0xa0
    // 0x3b6ba8: r0 = r2
    //     0x3b6ba8: mov          r0, r2
    //     0x3b6bac: stur         r2, [fp, #-8]
    // 0x3b6bb0: CheckStackOverflow
    //     0x3b6bb0: ldr          BARRIER, [THR, #0x38]
    //     0x3b6bb4: cmp          SP, BARRIER
    //     0x3b6bb8: b.ls         0x3b73b0
    // 0x3b6bbc: r1 = r0
    //     0x3b6bbc: mov          r1, r0
    // 0x3b6bc0: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenHeight()
    //     0x3b6bc0: bl           0x3b5484
    //     0x3b6bc4: ldur         r1, [fp, #-8]
    //     0x3b6bc8: stur         d0, [fp, #-0x68]
    // 0x3b6bcc: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenWidth()
    //     0x3b6bcc: bl           0x3a877c
    //     0x3b6bd0: mov          v1.16b, v0.16b
    // 0x3b6bd4: d0 = pp[0xeae]
    //     0x3b6bd4: add          r17, PP, #0xe, lsl #12
    //     0x3b6bd8: ldr          d0, [r17, #0xea0]
    //     0x3b6bdc: fmul         d2, d1, d0
    // 0x3b6be0: d0 = pp[0xeb6]
    //     0x3b6be0: add          r17, PP, #0xe, lsl #12
    //     0x3b6be4: ldr          d0, [r17, #0xea8]
    //     0x3b6be8: fdiv         d1, d2, d0
    //     0x3b6bec: ldur         d0, [fp, #-0x68]
    //     0x3b6bf0: stur         d1, [fp, #-0x78]
    //     0x3b6bf4: fsub         d2, d0, d1
    //     0x3b6bf8: stur         d2, [fp, #-0x70]
    // 0x3b6bfc: r0 = call 0x31d844
    //     0x3b6bfc: bl           0x31d844
    // 0x3b6c00: r1 = r0
    //     0x3b6c00: mov          r1, r0
    // 0x3b6c04: r0 = pp[0x6310]
    //     0x3b6c04: ldr          r0, [PP, #0x6310]
    //     0x3b6c08: stur         r1, [fp, #-0x10]
    // 0x3b6c0c: StoreField: r1->field_27 = r0
    //     0x3b6c0c: stur         r0, [r1, #0x27]
    // 0x3b6c10: d0 = pp[0x6080]
    //     0x3b6c10: ldr          d0, [PP, #0x6080]
    // 0x3b6c14: StoreField: r1->field_7 = d0
    //     0x3b6c14: stur         d0, [r1, #7]
    // 0x3b6c18: StoreField: r1->field_f = xzr
    //     0x3b6c18: stur         xzr, [r1, #0xf]
    // 0x3b6c1c: ArrayStore: r1[0] = xzr  ; List_8
    //     0x3b6c1c: stur         xzr, [r1, #0x17]
    // 0x3b6c20: StoreField: r1->field_1f = xzr
    //     0x3b6c20: stur         xzr, [r1, #0x1f]
    //     0x3b6c24: ldur         d0, [fp, #-0x70]
    //     0x3b6c28: ldp          r0, r2, [THR, #0x50]
    //     0x3b6c2c: add          r0, r0, #0x10
    //     0x3b6c30: cmp          r2, r0
    // 0x3b6c34: b.ls 0x3b73b8
    //     0x3b6c34: b.ls         0x3b73b8
    //     0x3b6c38: str          r0, [THR, #0x50]
    //     0x3b6c3c: sub          r0, r0, #0xf
    //     0x3b6c40: mov          r2, #0xe15c
    //     0x3b6c44: movk         r2, #3, lsl #16
    //     0x3b6c48: stur         r2, [r0, #-1]
    // 0x3b6c4c: StoreField: r0->field_7 = d0
    //     0x3b6c4c: stur         d0, [r0, #7]
    //     0x3b6c50: stur         r0, [fp, #-8]
    // 0x3b6c54: r0 = call 0x391a04
    //     0x3b6c54: bl           0x391a04
    //     0x3b6c58: stur         r0, [fp, #-0x18]
    //     0x3b6c5c: ldur         BARRIER, [fp, #-8]
    // 0x3b6c60: lr = pp[0x3ca]
    //     0x3b6c60: add          lr, PP, #0xa, lsl #12
    //     0x3b6c64: ldr          lr, [lr, #0x3c0]
    //     0x3b6c68: stp          lr, BARRIER, [SP]
    // 0x3b6c6c: r1 = r0
    //     0x3b6c6c: mov          r1, r0
    // 0x3b6c70: r4 = pp[0xebe]
    //     0x3b6c70: add          r4, PP, #0xe, lsl #12
    //     0x3b6c74: ldr          r4, [r4, #0xeb0]
    // 0x3b6c78: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3b6c78: bl           0x391490
    // 0x3b6c7c: r0 = call 0x3a1d94
    //     0x3b6c7c: bl           0x3a1d94
    // 0x3b6c80: r1 = pp[0x537]
    //     0x3b6c80: add          r1, PP, #0xf, lsl #12
    //     0x3b6c84: ldr          r1, [r1, #0x528]
    // 0x3b6c88: r2 = NULL
    //     0x3b6c88: mov          r2, NULL
    //     0x3b6c8c: stur         r0, [fp, #-0x20]
    // 0x3b6c90: r0 = call 0x61ec54
    //     0x3b6c90: bl           0x61ec54
    //     0x3b6c94: ldur         BARRIER, [fp, #-0x18]
    //     0x3b6c98: stp          r0, BARRIER, [SP]
    //     0x3b6c9c: ldur         r1, [fp, #-0x20]
    // 0x3b6ca0: r4 = pp[0xece]
    //     0x3b6ca0: add          r4, PP, #0xe, lsl #12
    //     0x3b6ca4: ldr          r4, [r4, #0xec0]
    // 0x3b6ca8: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x3b6ca8: bl           0x3a18c4
    // 0x3b6cac: r0 = call 0x352b04
    //     0x3b6cac: bl           0x352b04
    // 0x3b6cb0: d0 = pp[0xed6]
    //     0x3b6cb0: add          r17, PP, #0xe, lsl #12
    //     0x3b6cb4: ldr          d0, [r17, #0xec8]
    //     0x3b6cb8: stur         r0, [fp, #-0x18]
    // 0x3b6cbc: StoreField: r0->field_7 = d0
    //     0x3b6cbc: stur         d0, [r0, #7]
    // 0x3b6cc0: StoreField: r0->field_f = d0
    //     0x3b6cc0: stur         d0, [r0, #0xf]
    // 0x3b6cc4: r0 = call 0x352b04
    //     0x3b6cc4: bl           0x352b04
    // 0x3b6cc8: d0 = pp[0xed6]
    //     0x3b6cc8: add          r17, PP, #0xe, lsl #12
    //     0x3b6ccc: ldr          d0, [r17, #0xec8]
    //     0x3b6cd0: stur         r0, [fp, #-0x28]
    // 0x3b6cd4: StoreField: r0->field_7 = d0
    //     0x3b6cd4: stur         d0, [r0, #7]
    // 0x3b6cd8: StoreField: r0->field_f = d0
    //     0x3b6cd8: stur         d0, [r0, #0xf]
    // 0x3b6cdc: r0 = call 0x392f28
    //     0x3b6cdc: bl           0x392f28
    // 0x3b6ce0: r2 = r0
    //     0x3b6ce0: mov          r2, r0
    //     0x3b6ce4: ldur         r0, [fp, #-0x18]
    //     0x3b6ce8: stur         r2, [fp, #-0x30]
    // 0x3b6cec: StoreField: r2->field_7 = r0
    //     0x3b6cec: stur         r0, [r2, #7]
    //     0x3b6cf0: ldur         r0, [fp, #-0x28]
    // 0x3b6cf4: StoreField: r2->field_b = r0
    //     0x3b6cf4: stur         r0, [r2, #0xb]
    // 0x3b6cf8: r0 = pp[0x51a]
    //     0x3b6cf8: add          r0, PP, #0xa, lsl #12
    //     0x3b6cfc: ldr          r0, [r0, #0x510]
    // 0x3b6d00: StoreField: r2->field_f = r0
    //     0x3b6d00: stur         r0, [r2, #0xf]
    // 0x3b6d04: StoreField: r2->field_13 = r0
    //     0x3b6d04: stur         r0, [r2, #0x13]
    // 0x3b6d08: r1 = pp[0xede]
    //     0x3b6d08: add          r1, PP, #0xe, lsl #12
    //     0x3b6d0c: ldr          r1, [r1, #0xed0]
    // 0x3b6d10: r0 = call 0x3b5478
    //     0x3b6d10: bl           0x3b5478
    // 0x3b6d14: r1 = r0
    //     0x3b6d14: mov          r1, r0
    // 0x3b6d18: r0 = pp[0xee6]
    //     0x3b6d18: add          r0, PP, #0xe, lsl #12
    //     0x3b6d1c: ldr          r0, [r0, #0xed8]
    //     0x3b6d20: stur         r1, [fp, #-0x18]
    // 0x3b6d24: StoreField: r1->field_b = r0
    //     0x3b6d24: stur         r0, [r1, #0xb]
    // 0x3b6d28: r0 = call 0x3b546c
    //     0x3b6d28: bl           0x3b546c
    // 0x3b6d2c: r1 = r0
    //     0x3b6d2c: mov          r1, r0
    //     0x3b6d30: ldur         r0, [fp, #-0x18]
    //     0x3b6d34: stur         r1, [fp, #-0x28]
    // 0x3b6d38: StoreField: r1->field_7 = r0
    //     0x3b6d38: stur         r0, [r1, #7]
    // 0x3b6d3c: r0 = pp[0xeee]
    //     0x3b6d3c: add          r0, PP, #0xe, lsl #12
    //     0x3b6d40: ldr          r0, [r0, #0xee0]
    // 0x3b6d44: StoreField: r1->field_13 = r0
    //     0x3b6d44: stur         r0, [r1, #0x13]
    // 0x3b6d48: r0 = pp[0xaae]
    //     0x3b6d48: add          r0, PP, #0xe, lsl #12
    //     0x3b6d4c: ldr          r0, [r0, #0xaa0]
    // 0x3b6d50: ArrayStore: r1[0] = r0  ; List_8
    //     0x3b6d50: stur         r0, [r1, #0x17]
    // 0x3b6d54: r2 = pp[0xef6]
    //     0x3b6d54: add          r2, PP, #0xe, lsl #12
    //     0x3b6d58: ldr          r2, [r2, #0xee8]
    // 0x3b6d5c: StoreField: r1->field_1f = r2
    //     0x3b6d5c: stur         r2, [r1, #0x1f]
    //     0x3b6d60: add          r3, NULL, #0x30
    // 0x3b6d64: StoreField: r1->field_23 = r3
    //     0x3b6d64: stur         r3, [r1, #0x23]
    //     0x3b6d68: fmov         d0, #1.00000000
    // 0x3b6d6c: StoreField: r1->field_27 = d0
    //     0x3b6d6c: stur         d0, [r1, #0x27]
    // 0x3b6d70: StoreField: r1->field_2f = d0
    //     0x3b6d70: stur         d0, [r1, #0x2f]
    // 0x3b6d74: r4 = pp[0xefe]
    //     0x3b6d74: add          r4, PP, #0xe, lsl #12
    //     0x3b6d78: ldr          r4, [r4, #0xef0]
    // 0x3b6d7c: StoreField: r1->field_37 = r4
    //     0x3b6d7c: stur         r4, [r1, #0x37]
    // 0x3b6d80: StoreField: r1->field_3b = r3
    //     0x3b6d80: stur         r3, [r1, #0x3b]
    // 0x3b6d84: StoreField: r1->field_3f = r3
    //     0x3b6d84: stur         r3, [r1, #0x3f]
    // 0x3b6d88: r0 = call 0x391dd8
    //     0x3b6d88: bl           0x391dd8
    // 0x3b6d8c: r1 = r0
    //     0x3b6d8c: mov          r1, r0
    //     0x3b6d90: ldur         r0, [fp, #-0x28]
    //     0x3b6d94: stur         r1, [fp, #-0x18]
    // 0x3b6d98: StoreField: r1->field_b = r0
    //     0x3b6d98: stur         r0, [r1, #0xb]
    // 0x3b6d9c: r0 = pp[0xb86]
    //     0x3b6d9c: add          r0, PP, #0xe, lsl #12
    //     0x3b6da0: ldr          r0, [r0, #0xb78]
    // 0x3b6da4: StoreField: r1->field_23 = r0
    //     0x3b6da4: stur         r0, [r1, #0x23]
    // 0x3b6da8: r0 = call 0x2e3578
    //     0x3b6da8: bl           0x2e3578
    //     0x3b6dac: stur         r0, [fp, #-0x28]
    // 0x3b6db0: StoreField: r0->field_7 = xzr
    //     0x3b6db0: stur         xzr, [r0, #7]
    //     0x3b6db4: fmov         d0, #17.00000000
    // 0x3b6db8: StoreField: r0->field_f = d0
    //     0x3b6db8: stur         d0, [r0, #0xf]
    // 0x3b6dbc: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3b6dbc: stur         xzr, [r0, #0x17]
    // 0x3b6dc0: StoreField: r0->field_1f = xzr
    //     0x3b6dc0: stur         xzr, [r0, #0x1f]
    // 0x3b6dc4: r0 = call 0x2b8e80
    //     0x3b6dc4: bl           0x2b8e80
    // 0x3b6dc8: d0 = pp[0x1d7]
    //     0x3b6dc8: add          r17, PP, #0xf, lsl #12
    //     0x3b6dcc: ldr          d0, [r17, #0x1c8]
    //     0x3b6dd0: stur         r0, [fp, #-0x38]
    // 0x3b6dd4: StoreField: r0->field_7 = d0
    //     0x3b6dd4: stur         d0, [r0, #7]
    // 0x3b6dd8: d0 = pp[0xb90]
    //     0x3b6dd8: ldr          d0, [PP, #0xb90]
    // 0x3b6ddc: StoreField: r0->field_f = d0
    //     0x3b6ddc: stur         d0, [r0, #0xf]
    // 0x3b6de0: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3b6de0: stur         xzr, [r0, #0x17]
    // 0x3b6de4: StoreField: r0->field_1f = d0
    //     0x3b6de4: stur         d0, [r0, #0x1f]
    // 0x3b6de8: r1 = pp[0xede]
    //     0x3b6de8: add          r1, PP, #0xe, lsl #12
    //     0x3b6dec: ldr          r1, [r1, #0xed0]
    // 0x3b6df0: r0 = call 0x3b5478
    //     0x3b6df0: bl           0x3b5478
    // 0x3b6df4: r1 = r0
    //     0x3b6df4: mov          r1, r0
    // 0x3b6df8: r0 = pp[0x53f]
    //     0x3b6df8: add          r0, PP, #0xf, lsl #12
    //     0x3b6dfc: ldr          r0, [r0, #0x530]
    //     0x3b6e00: stur         r1, [fp, #-0x40]
    // 0x3b6e04: StoreField: r1->field_b = r0
    //     0x3b6e04: stur         r0, [r1, #0xb]
    // 0x3b6e08: r0 = call 0x3b546c
    //     0x3b6e08: bl           0x3b546c
    // 0x3b6e0c: r1 = r0
    //     0x3b6e0c: mov          r1, r0
    //     0x3b6e10: ldur         r0, [fp, #-0x40]
    //     0x3b6e14: stur         r1, [fp, #-0x48]
    // 0x3b6e18: StoreField: r1->field_7 = r0
    //     0x3b6e18: stur         r0, [r1, #7]
    // 0x3b6e1c: r0 = pp[0x1ef]
    //     0x3b6e1c: add          r0, PP, #0xf, lsl #12
    //     0x3b6e20: ldr          r0, [r0, #0x1e0]
    // 0x3b6e24: StoreField: r1->field_13 = r0
    //     0x3b6e24: stur         r0, [r1, #0x13]
    // 0x3b6e28: r0 = pp[0xaae]
    //     0x3b6e28: add          r0, PP, #0xe, lsl #12
    //     0x3b6e2c: ldr          r0, [r0, #0xaa0]
    // 0x3b6e30: ArrayStore: r1[0] = r0  ; List_8
    //     0x3b6e30: stur         r0, [r1, #0x17]
    // 0x3b6e34: r2 = pp[0xef6]
    //     0x3b6e34: add          r2, PP, #0xe, lsl #12
    //     0x3b6e38: ldr          r2, [r2, #0xee8]
    // 0x3b6e3c: StoreField: r1->field_1f = r2
    //     0x3b6e3c: stur         r2, [r1, #0x1f]
    //     0x3b6e40: add          r2, NULL, #0x30
    // 0x3b6e44: StoreField: r1->field_23 = r2
    //     0x3b6e44: stur         r2, [r1, #0x23]
    //     0x3b6e48: fmov         d0, #1.00000000
    // 0x3b6e4c: StoreField: r1->field_27 = d0
    //     0x3b6e4c: stur         d0, [r1, #0x27]
    // 0x3b6e50: StoreField: r1->field_2f = d0
    //     0x3b6e50: stur         d0, [r1, #0x2f]
    // 0x3b6e54: r3 = pp[0xefe]
    //     0x3b6e54: add          r3, PP, #0xe, lsl #12
    //     0x3b6e58: ldr          r3, [r3, #0xef0]
    // 0x3b6e5c: StoreField: r1->field_37 = r3
    //     0x3b6e5c: stur         r3, [r1, #0x37]
    // 0x3b6e60: StoreField: r1->field_3b = r2
    //     0x3b6e60: stur         r2, [r1, #0x3b]
    // 0x3b6e64: StoreField: r1->field_3f = r2
    //     0x3b6e64: stur         r2, [r1, #0x3f]
    // 0x3b6e68: r0 = call 0x391dd8
    //     0x3b6e68: bl           0x391dd8
    // 0x3b6e6c: r2 = r0
    //     0x3b6e6c: mov          r2, r0
    //     0x3b6e70: ldur         r0, [fp, #-0x48]
    //     0x3b6e74: stur         r2, [fp, #-0x40]
    // 0x3b6e78: StoreField: r2->field_b = r0
    //     0x3b6e78: stur         r0, [r2, #0xb]
    // 0x3b6e7c: r0 = pp[0xb86]
    //     0x3b6e7c: add          r0, PP, #0xe, lsl #12
    //     0x3b6e80: ldr          r0, [r0, #0xb78]
    // 0x3b6e84: StoreField: r2->field_23 = r0
    //     0x3b6e84: stur         r0, [r2, #0x23]
    // 0x3b6e88: r1 = pp[0x6ec]
    //     0x3b6e88: add          r1, PP, #0xc, lsl #12
    //     0x3b6e8c: ldr          r1, [r1, #0x6e0]
    // 0x3b6e90: r4 = pp[0x4c0]
    //     0x3b6e90: ldr          r4, [PP, #0x4c0]
    // 0x3b6e94: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3b6e94: bl           0x3a1dcc
    //     0x3b6e98: stur         r0, [fp, #-0x48]
    // 0x3b6e9c: r0 = call 0x31abec
    //     0x3b6e9c: bl           0x31abec
    // 0x3b6ea0: r1 = r0
    //     0x3b6ea0: mov          r1, r0
    //     0x3b6ea4: add          r0, NULL, #0x20
    //     0x3b6ea8: stur         r1, [fp, #-0x50]
    // 0x3b6eac: StoreField: r1->field_7 = r0
    //     0x3b6eac: stur         r0, [r1, #7]
    // 0x3b6eb0: r2 = pp[0x6050]
    //     0x3b6eb0: ldr          r2, [PP, #0x6050]
    // 0x3b6eb4: StoreField: r1->field_b = r2
    //     0x3b6eb4: stur         r2, [r1, #0xb]
    // 0x3b6eb8: r3 = pp[0x1f7]
    //     0x3b6eb8: add          r3, PP, #0xf, lsl #12
    //     0x3b6ebc: ldr          r3, [r3, #0x1e8]
    // 0x3b6ec0: StoreField: r1->field_1f = r3
    //     0x3b6ec0: stur         r3, [r1, #0x1f]
    // 0x3b6ec4: r4 = pp[0xe4e]
    //     0x3b6ec4: add          r4, PP, #0xe, lsl #12
    //     0x3b6ec8: ldr          r4, [r4, #0xe40]
    // 0x3b6ecc: StoreField: r1->field_23 = r4
    //     0x3b6ecc: stur         r4, [r1, #0x23]
    // 0x3b6ed0: r0 = call 0x3b3480
    //     0x3b6ed0: bl           0x3b3480
    // 0x3b6ed4: r1 = r0
    //     0x3b6ed4: mov          r1, r0
    // 0x3b6ed8: r0 = pp[0x1f7]
    //     0x3b6ed8: add          r0, PP, #0xf, lsl #12
    //     0x3b6edc: ldr          r0, [r0, #0x1e8]
    //     0x3b6ee0: stur         r1, [fp, #-0x58]
    // 0x3b6ee4: StoreField: r1->field_13 = r0
    //     0x3b6ee4: stur         r0, [r1, #0x13]
    // 0x3b6ee8: r0 = pp[0x52c8]
    //     0x3b6ee8: ldr          r0, [PP, #0x52c8]
    // 0x3b6eec: StoreField: r1->field_27 = r0
    //     0x3b6eec: stur         r0, [r1, #0x27]
    // 0x3b6ef0: r0 = pp[0xe4e]
    //     0x3b6ef0: add          r0, PP, #0xe, lsl #12
    //     0x3b6ef4: ldr          r0, [r0, #0xe40]
    // 0x3b6ef8: StoreField: r1->field_1f = r0
    //     0x3b6ef8: stur         r0, [r1, #0x1f]
    //     0x3b6efc: add          r0, NULL, #0x20
    // 0x3b6f00: StoreField: r1->field_2b = r0
    //     0x3b6f00: stur         r0, [r1, #0x2b]
    // 0x3b6f04: r0 = call 0x393bf8
    //     0x3b6f04: bl           0x393bf8
    // 0x3b6f08: r1 = r0
    //     0x3b6f08: mov          r1, r0
    //     0x3b6f0c: ldur         r0, [fp, #-0x48]
    //     0x3b6f10: stur         r1, [fp, #-0x60]
    // 0x3b6f14: StoreField: r1->field_b = r0
    //     0x3b6f14: stur         r0, [r1, #0xb]
    //     0x3b6f18: ldur         r0, [fp, #-0x50]
    // 0x3b6f1c: StoreField: r1->field_13 = r0
    //     0x3b6f1c: stur         r0, [r1, #0x13]
    //     0x3b6f20: ldur         r0, [fp, #-0x58]
    // 0x3b6f24: ArrayStore: r1[0] = r0  ; List_8
    //     0x3b6f24: stur         r0, [r1, #0x17]
    // 0x3b6f28: r0 = pp[0x53a8]
    //     0x3b6f28: ldr          r0, [PP, #0x53a8]
    // 0x3b6f2c: StoreField: r1->field_1b = r0
    //     0x3b6f2c: stur         r0, [r1, #0x1b]
    //     0x3b6f30: mov          r0, #2
    // 0x3b6f34: StoreField: r1->field_37 = r0
    //     0x3b6f34: stur         r0, [r1, #0x37]
    // 0x3b6f38: r0 = call 0x391a04
    //     0x3b6f38: bl           0x391a04
    //     0x3b6f3c: stur         r0, [fp, #-0x48]
    //     0x3b6f40: ldur         BARRIER, [fp, #-0x28]
    //     0x3b6f44: ldur         lr, [fp, #-0x38]
    //     0x3b6f48: stp          lr, BARRIER, [SP, #0x18]
    // 0x3b6f4c: BARRIER = pp[0x1ff]
    //     0x3b6f4c: add          BARRIER, PP, #0xf, lsl #12
    //     0x3b6f50: ldr          BARRIER, [BARRIER, #0x1f0]
    //     0x3b6f54: ldur         lr, [fp, #-0x40]
    //     0x3b6f58: stp          lr, BARRIER, [SP, #8]
    //     0x3b6f5c: ldur         BARRIER, [fp, #-0x60]
    //     0x3b6f60: str          BARRIER, [SP]
    // 0x3b6f64: r1 = r0
    //     0x3b6f64: mov          r1, r0
    // 0x3b6f68: r4 = pp[0x207]
    //     0x3b6f68: add          r4, PP, #0xf, lsl #12
    //     0x3b6f6c: ldr          r4, [r4, #0x1f8]
    // 0x3b6f70: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3b6f70: bl           0x391490
    // 0x3b6f74: r0 = call 0x2e3578
    //     0x3b6f74: bl           0x2e3578
    //     0x3b6f78: stur         r0, [fp, #-0x28]
    // 0x3b6f7c: StoreField: r0->field_7 = xzr
    //     0x3b6f7c: stur         xzr, [r0, #7]
    //     0x3b6f80: fmov         d0, #17.00000000
    // 0x3b6f84: StoreField: r0->field_f = d0
    //     0x3b6f84: stur         d0, [r0, #0xf]
    // 0x3b6f88: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3b6f88: stur         xzr, [r0, #0x17]
    // 0x3b6f8c: StoreField: r0->field_1f = xzr
    //     0x3b6f8c: stur         xzr, [r0, #0x1f]
    // 0x3b6f90: r0 = soul_flutter_international$biz$pkGame$page_game_bet_pk_rule_::backButton()
    //     0x3b6f90: bl           0x3b7404
    //     0x3b6f94: stur         r0, [fp, #-0x38]
    // 0x3b6f98: r0 = call 0x391a04
    //     0x3b6f98: bl           0x391a04
    //     0x3b6f9c: stur         r0, [fp, #-0x40]
    //     0x3b6fa0: ldur         BARRIER, [fp, #-0x28]
    //     0x3b6fa4: ldur         lr, [fp, #-0x38]
    //     0x3b6fa8: stp          lr, BARRIER, [SP]
    // 0x3b6fac: r1 = r0
    //     0x3b6fac: mov          r1, r0
    // 0x3b6fb0: r4 = pp[0x20f]
    //     0x3b6fb0: add          r4, PP, #0xf, lsl #12
    //     0x3b6fb4: ldr          r4, [r4, #0x200]
    // 0x3b6fb8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3b6fb8: bl           0x391490
    // 0x3b6fbc: r1 = NULL
    //     0x3b6fbc: mov          r1, NULL
    //     0x3b6fc0: mov          r2, #4
    // 0x3b6fc4: r0 = call 0x61f920
    //     0x3b6fc4: bl           0x61f920
    // 0x3b6fc8: r2 = r0
    //     0x3b6fc8: mov          r2, r0
    //     0x3b6fcc: ldur         r0, [fp, #-0x48]
    //     0x3b6fd0: stur         r2, [fp, #-0x28]
    // 0x3b6fd4: StoreField: r2->field_f = r0
    //     0x3b6fd4: stur         r0, [r2, #0xf]
    //     0x3b6fd8: ldur         r0, [fp, #-0x40]
    // 0x3b6fdc: StoreField: r2->field_13 = r0
    //     0x3b6fdc: stur         r0, [r2, #0x13]
    // 0x3b6fe0: r1 = pp[0x5c58]
    //     0x3b6fe0: ldr          r1, [PP, #0x5c58]
    // 0x3b6fe4: r0 = call 0x61e854
    //     0x3b6fe4: bl           0x61e854
    // 0x3b6fe8: r1 = r0
    //     0x3b6fe8: mov          r1, r0
    //     0x3b6fec: ldur         r0, [fp, #-0x28]
    //     0x3b6ff0: stur         r1, [fp, #-0x38]
    // 0x3b6ff4: StoreField: r1->field_f = r0
    //     0x3b6ff4: stur         r0, [r1, #0xf]
    //     0x3b6ff8: mov          r2, #4
    // 0x3b6ffc: StoreField: r1->field_b = r2
    //     0x3b6ffc: stur         r2, [r1, #0xb]
    // 0x3b7000: r0 = call 0x39e6f4
    //     0x3b7000: bl           0x39e6f4
    // 0x3b7004: r1 = r0
    //     0x3b7004: mov          r1, r0
    // 0x3b7008: r0 = pp[0xaae]
    //     0x3b7008: add          r0, PP, #0xe, lsl #12
    //     0x3b700c: ldr          r0, [r0, #0xaa0]
    //     0x3b7010: stur         r1, [fp, #-0x28]
    // 0x3b7014: StoreField: r1->field_f = r0
    //     0x3b7014: stur         r0, [r1, #0xf]
    // 0x3b7018: r0 = pp[0xf16]
    //     0x3b7018: add          r0, PP, #0xe, lsl #12
    //     0x3b701c: ldr          r0, [r0, #0xf08]
    // 0x3b7020: ArrayStore: r1[0] = r0  ; List_8
    //     0x3b7020: stur         r0, [r1, #0x17]
    // 0x3b7024: r0 = pp[0xf1e]
    //     0x3b7024: add          r0, PP, #0xe, lsl #12
    //     0x3b7028: ldr          r0, [r0, #0xf10]
    // 0x3b702c: StoreField: r1->field_1b = r0
    //     0x3b702c: stur         r0, [r1, #0x1b]
    //     0x3b7030: ldur         r2, [fp, #-0x38]
    // 0x3b7034: StoreField: r1->field_b = r2
    //     0x3b7034: stur         r2, [r1, #0xb]
    // 0x3b7038: r0 = call 0x3949ec
    //     0x3b7038: bl           0x3949ec
    // 0x3b703c: r1 = r0
    //     0x3b703c: mov          r1, r0
    // 0x3b7040: r0 = pp[0x28f]
    //     0x3b7040: add          r0, PP, #0xf, lsl #12
    //     0x3b7044: ldr          r0, [r0, #0x280]
    //     0x3b7048: stur         r1, [fp, #-0x38]
    // 0x3b704c: StoreField: r1->field_13 = r0
    //     0x3b704c: stur         r0, [r1, #0x13]
    // 0x3b7050: r0 = call 0x2e3578
    //     0x3b7050: bl           0x2e3578
    //     0x3b7054: fmov         d0, #20.00000000
    //     0x3b7058: stur         r0, [fp, #-0x40]
    // 0x3b705c: StoreField: r0->field_7 = d0
    //     0x3b705c: stur         d0, [r0, #7]
    // 0x3b7060: StoreField: r0->field_f = xzr
    //     0x3b7060: stur         xzr, [r0, #0xf]
    // 0x3b7064: ArrayStore: r0[0] = d0  ; List_8
    //     0x3b7064: stur         d0, [r0, #0x17]
    // 0x3b7068: StoreField: r0->field_1f = xzr
    //     0x3b7068: stur         xzr, [r0, #0x1f]
    // 0x3b706c: r1 = pp[0x6dc]
    //     0x3b706c: add          r1, PP, #0xc, lsl #12
    //     0x3b7070: ldr          r1, [r1, #0x6d0]
    // 0x3b7074: r4 = pp[0x4c0]
    //     0x3b7074: ldr          r4, [PP, #0x4c0]
    // 0x3b7078: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3b7078: bl           0x3a1dcc
    //     0x3b707c: stur         r0, [fp, #-0x48]
    // 0x3b7080: r0 = call 0x31abec
    //     0x3b7080: bl           0x31abec
    // 0x3b7084: r1 = r0
    //     0x3b7084: mov          r1, r0
    //     0x3b7088: add          r0, NULL, #0x20
    //     0x3b708c: stur         r1, [fp, #-0x50]
    // 0x3b7090: StoreField: r1->field_7 = r0
    //     0x3b7090: stur         r0, [r1, #7]
    // 0x3b7094: r0 = pp[0x6050]
    //     0x3b7094: ldr          r0, [PP, #0x6050]
    // 0x3b7098: StoreField: r1->field_b = r0
    //     0x3b7098: stur         r0, [r1, #0xb]
    // 0x3b709c: r0 = pp[0xdf6]
    //     0x3b709c: add          r0, PP, #0xe, lsl #12
    //     0x3b70a0: ldr          r0, [r0, #0xde8]
    // 0x3b70a4: StoreField: r1->field_1f = r0
    //     0x3b70a4: stur         r0, [r1, #0x1f]
    // 0x3b70a8: r0 = call 0x393bf8
    //     0x3b70a8: bl           0x393bf8
    // 0x3b70ac: r1 = r0
    //     0x3b70ac: mov          r1, r0
    //     0x3b70b0: ldur         r0, [fp, #-0x48]
    //     0x3b70b4: stur         r1, [fp, #-0x58]
    // 0x3b70b8: StoreField: r1->field_b = r0
    //     0x3b70b8: stur         r0, [r1, #0xb]
    //     0x3b70bc: ldur         r0, [fp, #-0x50]
    // 0x3b70c0: StoreField: r1->field_13 = r0
    //     0x3b70c0: stur         r0, [r1, #0x13]
    // 0x3b70c4: r0 = call 0x391a04
    //     0x3b70c4: bl           0x391a04
    //     0x3b70c8: stur         r0, [fp, #-0x48]
    //     0x3b70cc: ldur         BARRIER, [fp, #-0x40]
    //     0x3b70d0: ldur         lr, [fp, #-0x58]
    //     0x3b70d4: stp          lr, BARRIER, [SP]
    // 0x3b70d8: r1 = r0
    //     0x3b70d8: mov          r1, r0
    // 0x3b70dc: r4 = pp[0x267]
    //     0x3b70dc: add          r4, PP, #0xf, lsl #12
    //     0x3b70e0: ldr          r4, [r4, #0x258]
    // 0x3b70e4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3b70e4: bl           0x391490
    // 0x3b70e8: r0 = call 0x3a1db4
    //     0x3b70e8: bl           0x3a1db4
    // 0x3b70ec: r2 = r0
    //     0x3b70ec: mov          r2, r0
    // 0x3b70f0: r0 = pp[0x862]
    //     0x3b70f0: add          r0, PP, #0xa, lsl #12
    //     0x3b70f4: ldr          r0, [r0, #0x858]
    //     0x3b70f8: stur         r2, [fp, #-0x40]
    // 0x3b70fc: StoreField: r2->field_b = r0
    //     0x3b70fc: stur         r0, [r2, #0xb]
    //     0x3b7100: add          r1, NULL, #0x30
    // 0x3b7104: StoreField: r2->field_f = r1
    //     0x3b7104: stur         r1, [r2, #0xf]
    //     0x3b7108: ldur         r1, [fp, #-0x48]
    // 0x3b710c: StoreField: r2->field_23 = r1
    //     0x3b710c: stur         r1, [r2, #0x23]
    // 0x3b7110: r1 = pp[0x77d8]
    //     0x3b7110: ldr          r1, [PP, #0x77d8]
    // 0x3b7114: StoreField: r2->field_27 = r1
    //     0x3b7114: stur         r1, [r2, #0x27]
    // 0x3b7118: r1 = pp[0xf1e]
    //     0x3b7118: add          r1, PP, #0xe, lsl #12
    //     0x3b711c: ldr          r1, [r1, #0xf10]
    // 0x3b7120: StoreField: r2->field_2b = r1
    //     0x3b7120: stur         r1, [r2, #0x2b]
    // 0x3b7124: r1 = pp[0x14f]
    //     0x3b7124: add          r1, PP, #0xf, lsl #12
    //     0x3b7128: ldr          r1, [r1, #0x140]
    // 0x3b712c: StoreField: r2->field_2f = r1
    //     0x3b712c: stur         r1, [r2, #0x2f]
    // 0x3b7130: r1 = pp[0x307]
    //     0x3b7130: add          r1, PP, #0xf, lsl #12
    //     0x3b7134: ldr          r1, [r1, #0x2f8]
    // 0x3b7138: StoreField: r2->field_37 = r1
    //     0x3b7138: stur         r1, [r2, #0x37]
    // 0x3b713c: r1 = pp[0xade]
    //     0x3b713c: add          r1, PP, #0xe, lsl #12
    //     0x3b7140: ldr          r1, [r1, #0xad0]
    // 0x3b7144: r0 = call 0x39fb14
    //     0x3b7144: bl           0x39fb14
    // 0x3b7148: r3 = r0
    //     0x3b7148: mov          r3, r0
    //     0x3b714c: mov          r0, #1
    //     0x3b7150: stur         r3, [fp, #-0x48]
    // 0x3b7154: StoreField: r3->field_13 = r0
    //     0x3b7154: stur         r0, [r3, #0x13]
    // 0x3b7158: r4 = pp[0xae6]
    //     0x3b7158: add          r4, PP, #0xe, lsl #12
    //     0x3b715c: ldr          r4, [r4, #0xad8]
    // 0x3b7160: StoreField: r3->field_1b = r4
    //     0x3b7160: stur         r4, [r3, #0x1b]
    //     0x3b7164: ldur         r1, [fp, #-0x40]
    // 0x3b7168: StoreField: r3->field_b = r1
    //     0x3b7168: stur         r1, [r3, #0xb]
    // 0x3b716c: r1 = NULL
    //     0x3b716c: mov          r1, NULL
    //     0x3b7170: mov          r2, #6
    // 0x3b7174: r0 = call 0x61f920
    //     0x3b7174: bl           0x61f920
    // 0x3b7178: r2 = r0
    //     0x3b7178: mov          r2, r0
    //     0x3b717c: ldur         r0, [fp, #-0x28]
    //     0x3b7180: stur         r2, [fp, #-0x40]
    // 0x3b7184: StoreField: r2->field_f = r0
    //     0x3b7184: stur         r0, [r2, #0xf]
    //     0x3b7188: ldur         r0, [fp, #-0x38]
    // 0x3b718c: StoreField: r2->field_13 = r0
    //     0x3b718c: stur         r0, [r2, #0x13]
    //     0x3b7190: ldur         r0, [fp, #-0x48]
    // 0x3b7194: ArrayStore: r2[0] = r0  ; List_8
    //     0x3b7194: stur         r0, [r2, #0x17]
    // 0x3b7198: r1 = pp[0x5c58]
    //     0x3b7198: ldr          r1, [PP, #0x5c58]
    // 0x3b719c: r0 = call 0x61e854
    //     0x3b719c: bl           0x61e854
    // 0x3b71a0: r1 = r0
    //     0x3b71a0: mov          r1, r0
    //     0x3b71a4: ldur         r0, [fp, #-0x40]
    //     0x3b71a8: stur         r1, [fp, #-0x28]
    // 0x3b71ac: StoreField: r1->field_f = r0
    //     0x3b71ac: stur         r0, [r1, #0xf]
    //     0x3b71b0: mov          r0, #6
    // 0x3b71b4: StoreField: r1->field_b = r0
    //     0x3b71b4: stur         r0, [r1, #0xb]
    // 0x3b71b8: r0 = call 0x39310c
    //     0x3b71b8: bl           0x39310c
    // 0x3b71bc: r1 = r0
    //     0x3b71bc: mov          r1, r0
    // 0x3b71c0: r0 = pp[0x862]
    //     0x3b71c0: add          r0, PP, #0xa, lsl #12
    //     0x3b71c4: ldr          r0, [r0, #0x858]
    //     0x3b71c8: stur         r1, [fp, #-0x38]
    // 0x3b71cc: StoreField: r1->field_f = r0
    //     0x3b71cc: stur         r0, [r1, #0xf]
    // 0x3b71d0: r2 = pp[0xaee]
    //     0x3b71d0: add          r2, PP, #0xe, lsl #12
    //     0x3b71d4: ldr          r2, [r2, #0xae0]
    // 0x3b71d8: StoreField: r1->field_13 = r2
    //     0x3b71d8: stur         r2, [r1, #0x13]
    // 0x3b71dc: r3 = pp[0xaf6]
    //     0x3b71dc: add          r3, PP, #0xe, lsl #12
    //     0x3b71e0: ldr          r3, [r3, #0xae8]
    // 0x3b71e4: ArrayStore: r1[0] = r3  ; List_8
    //     0x3b71e4: stur         r3, [r1, #0x17]
    // 0x3b71e8: r4 = pp[0xb6e]
    //     0x3b71e8: add          r4, PP, #0xe, lsl #12
    //     0x3b71ec: ldr          r4, [r4, #0xb60]
    // 0x3b71f0: StoreField: r1->field_1b = r4
    //     0x3b71f0: stur         r4, [r1, #0x1b]
    // 0x3b71f4: r5 = pp[0xb06]
    //     0x3b71f4: add          r5, PP, #0xe, lsl #12
    //     0x3b71f8: ldr          r5, [r5, #0xaf8]
    // 0x3b71fc: StoreField: r1->field_23 = r5
    //     0x3b71fc: stur         r5, [r1, #0x23]
    // 0x3b7200: r6 = pp[0xb2]
    //     0x3b7200: add          r6, PP, #0xa, lsl #12
    //     0x3b7204: ldr          r6, [r6, #0xa8]
    // 0x3b7208: StoreField: r1->field_2b = r6
    //     0x3b7208: stur         r6, [r1, #0x2b]
    // 0x3b720c: StoreField: r1->field_2f = xzr
    //     0x3b720c: stur         xzr, [r1, #0x2f]
    //     0x3b7210: ldur         r7, [fp, #-0x28]
    // 0x3b7214: StoreField: r1->field_b = r7
    //     0x3b7214: stur         r7, [r1, #0xb]
    //     0x3b7218: ldur         d0, [fp, #-0x78]
    //     0x3b721c: ldp          r7, r8, [THR, #0x50]
    //     0x3b7220: add          r7, r7, #0x10
    //     0x3b7224: cmp          r8, r7
    // 0x3b7228: b.ls 0x3b73d0
    //     0x3b7228: b.ls         0x3b73d0
    //     0x3b722c: str          r7, [THR, #0x50]
    //     0x3b7230: sub          r7, r7, #0xf
    //     0x3b7234: mov          r8, #0xe15c
    //     0x3b7238: movk         r8, #3, lsl #16
    //     0x3b723c: stur         r8, [r7, #-1]
    // 0x3b7240: StoreField: r7->field_7 = d0
    //     0x3b7240: stur         d0, [r7, #7]
    //     0x3b7244: stur         r7, [fp, #-0x28]
    // 0x3b7248: r0 = call 0x391a04
    //     0x3b7248: bl           0x391a04
    //     0x3b724c: stur         r0, [fp, #-0x40]
    //     0x3b7250: ldur         BARRIER, [fp, #-0x28]
    // 0x3b7254: lr = pp[0x5458]
    //     0x3b7254: ldr          lr, [PP, #0x5458]
    //     0x3b7258: stp          lr, BARRIER, [SP, #0x10]
    //     0x3b725c: ldur         BARRIER, [fp, #-0x18]
    //     0x3b7260: ldur         lr, [fp, #-0x38]
    //     0x3b7264: stp          lr, BARRIER, [SP]
    // 0x3b7268: r1 = r0
    //     0x3b7268: mov          r1, r0
    // 0x3b726c: r4 = pp[0xf46]
    //     0x3b726c: add          r4, PP, #0xe, lsl #12
    //     0x3b7270: ldr          r4, [r4, #0xf38]
    // 0x3b7274: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3b7274: bl           0x391490
    // 0x3b7278: r0 = call 0x3b378c
    //     0x3b7278: bl           0x3b378c
    // 0x3b727c: r2 = r0
    //     0x3b727c: mov          r2, r0
    //     0x3b7280: ldur         r0, [fp, #-0x30]
    //     0x3b7284: stur         r2, [fp, #-0x18]
    // 0x3b7288: StoreField: r2->field_f = r0
    //     0x3b7288: stur         r0, [r2, #0xf]
    // 0x3b728c: r0 = pp[0xf4e]
    //     0x3b728c: add          r0, PP, #0xe, lsl #12
    //     0x3b7290: ldr          r0, [r0, #0xf40]
    // 0x3b7294: ArrayStore: r2[0] = r0  ; List_8
    //     0x3b7294: stur         r0, [r2, #0x17]
    //     0x3b7298: ldur         r0, [fp, #-0x40]
    // 0x3b729c: StoreField: r2->field_b = r0
    //     0x3b729c: stur         r0, [r2, #0xb]
    // 0x3b72a0: r1 = pp[0xade]
    //     0x3b72a0: add          r1, PP, #0xe, lsl #12
    //     0x3b72a4: ldr          r1, [r1, #0xad0]
    // 0x3b72a8: r0 = call 0x39fb14
    //     0x3b72a8: bl           0x39fb14
    // 0x3b72ac: r3 = r0
    //     0x3b72ac: mov          r3, r0
    //     0x3b72b0: mov          r0, #1
    //     0x3b72b4: stur         r3, [fp, #-0x28]
    // 0x3b72b8: StoreField: r3->field_13 = r0
    //     0x3b72b8: stur         r0, [r3, #0x13]
    // 0x3b72bc: r0 = pp[0xae6]
    //     0x3b72bc: add          r0, PP, #0xe, lsl #12
    //     0x3b72c0: ldr          r0, [r0, #0xad8]
    // 0x3b72c4: StoreField: r3->field_1b = r0
    //     0x3b72c4: stur         r0, [r3, #0x1b]
    //     0x3b72c8: ldur         r0, [fp, #-0x18]
    // 0x3b72cc: StoreField: r3->field_b = r0
    //     0x3b72cc: stur         r0, [r3, #0xb]
    // 0x3b72d0: r1 = NULL
    //     0x3b72d0: mov          r1, NULL
    //     0x3b72d4: mov          r2, #4
    // 0x3b72d8: r0 = call 0x61f920
    //     0x3b72d8: bl           0x61f920
    // 0x3b72dc: r2 = r0
    //     0x3b72dc: mov          r2, r0
    //     0x3b72e0: ldur         r0, [fp, #-0x20]
    //     0x3b72e4: stur         r2, [fp, #-0x18]
    // 0x3b72e8: StoreField: r2->field_f = r0
    //     0x3b72e8: stur         r0, [r2, #0xf]
    //     0x3b72ec: ldur         r0, [fp, #-0x28]
    // 0x3b72f0: StoreField: r2->field_13 = r0
    //     0x3b72f0: stur         r0, [r2, #0x13]
    // 0x3b72f4: r1 = pp[0x5c58]
    //     0x3b72f4: ldr          r1, [PP, #0x5c58]
    // 0x3b72f8: r0 = call 0x61e854
    //     0x3b72f8: bl           0x61e854
    // 0x3b72fc: r1 = r0
    //     0x3b72fc: mov          r1, r0
    //     0x3b7300: ldur         r0, [fp, #-0x18]
    //     0x3b7304: stur         r1, [fp, #-0x20]
    // 0x3b7308: StoreField: r1->field_f = r0
    //     0x3b7308: stur         r0, [r1, #0xf]
    //     0x3b730c: mov          r0, #4
    // 0x3b7310: StoreField: r1->field_b = r0
    //     0x3b7310: stur         r0, [r1, #0xb]
    // 0x3b7314: r0 = call 0x39310c
    //     0x3b7314: bl           0x39310c
    // 0x3b7318: r1 = r0
    //     0x3b7318: mov          r1, r0
    // 0x3b731c: r0 = pp[0x862]
    //     0x3b731c: add          r0, PP, #0xa, lsl #12
    //     0x3b7320: ldr          r0, [r0, #0x858]
    //     0x3b7324: stur         r1, [fp, #-0x18]
    // 0x3b7328: StoreField: r1->field_f = r0
    //     0x3b7328: stur         r0, [r1, #0xf]
    // 0x3b732c: r0 = pp[0xaee]
    //     0x3b732c: add          r0, PP, #0xe, lsl #12
    //     0x3b7330: ldr          r0, [r0, #0xae0]
    // 0x3b7334: StoreField: r1->field_13 = r0
    //     0x3b7334: stur         r0, [r1, #0x13]
    // 0x3b7338: r0 = pp[0xaf6]
    //     0x3b7338: add          r0, PP, #0xe, lsl #12
    //     0x3b733c: ldr          r0, [r0, #0xae8]
    // 0x3b7340: ArrayStore: r1[0] = r0  ; List_8
    //     0x3b7340: stur         r0, [r1, #0x17]
    // 0x3b7344: r0 = pp[0xb6e]
    //     0x3b7344: add          r0, PP, #0xe, lsl #12
    //     0x3b7348: ldr          r0, [r0, #0xb60]
    // 0x3b734c: StoreField: r1->field_1b = r0
    //     0x3b734c: stur         r0, [r1, #0x1b]
    // 0x3b7350: r0 = pp[0xb06]
    //     0x3b7350: add          r0, PP, #0xe, lsl #12
    //     0x3b7354: ldr          r0, [r0, #0xaf8]
    // 0x3b7358: StoreField: r1->field_23 = r0
    //     0x3b7358: stur         r0, [r1, #0x23]
    // 0x3b735c: r0 = pp[0xb2]
    //     0x3b735c: add          r0, PP, #0xa, lsl #12
    //     0x3b7360: ldr          r0, [r0, #0xa8]
    // 0x3b7364: StoreField: r1->field_2b = r0
    //     0x3b7364: stur         r0, [r1, #0x2b]
    // 0x3b7368: StoreField: r1->field_2f = xzr
    //     0x3b7368: stur         xzr, [r1, #0x2f]
    //     0x3b736c: ldur         r0, [fp, #-0x20]
    // 0x3b7370: StoreField: r1->field_b = r0
    //     0x3b7370: stur         r0, [r1, #0xb]
    // 0x3b7374: r0 = call 0x391a04
    //     0x3b7374: bl           0x391a04
    //     0x3b7378: stur         r0, [fp, #-0x20]
    //     0x3b737c: ldur         BARRIER, [fp, #-0x10]
    //     0x3b7380: ldur         lr, [fp, #-8]
    //     0x3b7384: stp          lr, BARRIER, [SP, #8]
    //     0x3b7388: ldur         BARRIER, [fp, #-0x18]
    //     0x3b738c: str          BARRIER, [SP]
    // 0x3b7390: r1 = r0
    //     0x3b7390: mov          r1, r0
    // 0x3b7394: r4 = pp[0xf56]
    //     0x3b7394: add          r4, PP, #0xe, lsl #12
    //     0x3b7398: ldr          r4, [r4, #0xf48]
    // 0x3b739c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3b739c: bl           0x391490
    //     0x3b73a0: ldur         r0, [fp, #-0x20]
    // 0x3b73a4: SP = fp
    //     0x3b73a4: mov          SP, fp
    // 0x3b73a8: LeaveFrame
    //     0x3b73a8: ldp          fp, lr, [SP], #0x10
    // 0x3b73ac: ret
    //     0x3b73ac: ret          
    // 0x3b73b0: r0 = call 0x61fa28
    //     0x3b73b0: bl           0x61fa28
    // 0x3b73b4: b 0x3b6bbc
    //     0x3b73b4: b            0x3b6bbc
    //     0x3b73b8: str          q0, [SP, #-0x10]!
    //     0x3b73bc: str          r1, [SP, #-8]!
    // 0x3b73c0: r0 = call 0x61f878
    //     0x3b73c0: bl           0x61f878
    //     0x3b73c4: ldr          r1, [SP], #8
    //     0x3b73c8: ldr          q0, [SP], #0x10
    // 0x3b73cc: b 0x3b6c4c
    //     0x3b73cc: b            0x3b6c4c
    //     0x3b73d0: str          q0, [SP, #-0x10]!
    //     0x3b73d4: stp          r5, r6, [SP, #-0x10]!
    //     0x3b73d8: stp          r3, r4, [SP, #-0x10]!
    //     0x3b73dc: stp          r1, r2, [SP, #-0x10]!
    //     0x3b73e0: str          r0, [SP, #-8]!
    // 0x3b73e4: r0 = call 0x61f878
    //     0x3b73e4: bl           0x61f878
    // 0x3b73e8: r7 = r0
    //     0x3b73e8: mov          r7, r0
    //     0x3b73ec: ldr          r0, [SP], #8
    //     0x3b73f0: ldp          r1, r2, [SP], #0x10
    //     0x3b73f4: ldp          r3, r4, [SP], #0x10
    //     0x3b73f8: ldp          r5, r6, [SP], #0x10
    //     0x3b73fc: ldr          q0, [SP], #0x10
    // 0x3b7400: b 0x3b7240
    //     0x3b7400: b            0x3b7240
  }

  backButton() {
    // ** addr: 0x3b7404, size: 0xf8
    // 0x3b7404: EnterFrame
    //     0x3b7404: stp          fp, lr, [SP, #-0x10]!
    //     0x3b7408: mov          fp, SP
    // 0x3b740c: AllocStack(0x38)
    //     0x3b740c: sub          SP, SP, #0x38
    // 0x3b7410: CheckStackOverflow
    //     0x3b7410: ldr          BARRIER, [THR, #0x38]
    //     0x3b7414: cmp          SP, BARRIER
    //     0x3b7418: b.ls         0x3b74f4
    // 0x3b741c: r0 = call 0x2e3578
    //     0x3b741c: bl           0x2e3578
    //     0x3b7420: fmov         d0, #10.00000000
    //     0x3b7424: stur         r0, [fp, #-8]
    // 0x3b7428: StoreField: r0->field_7 = d0
    //     0x3b7428: stur         d0, [r0, #7]
    // 0x3b742c: StoreField: r0->field_f = xzr
    //     0x3b742c: stur         xzr, [r0, #0xf]
    // 0x3b7430: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3b7430: stur         xzr, [r0, #0x17]
    // 0x3b7434: StoreField: r0->field_1f = xzr
    //     0x3b7434: stur         xzr, [r0, #0x1f]
    // 0x3b7438: r0 = call 0x3a142c
    //     0x3b7438: bl           0x3a142c
    // 0x3b743c: r1 = r0
    //     0x3b743c: mov          r1, r0
    // 0x3b7440: r0 = pp[0x317]
    //     0x3b7440: add          r0, PP, #0xf, lsl #12
    //     0x3b7444: ldr          r0, [r0, #0x308]
    //     0x3b7448: stur         r1, [fp, #-0x10]
    // 0x3b744c: StoreField: r1->field_b = r0
    //     0x3b744c: stur         r0, [r1, #0xb]
    // 0x3b7450: r0 = pp[0x17f]
    //     0x3b7450: add          r0, PP, #0xf, lsl #12
    //     0x3b7454: ldr          r0, [r0, #0x170]
    // 0x3b7458: StoreField: r1->field_f = r0
    //     0x3b7458: stur         r0, [r1, #0xf]
    // 0x3b745c: r0 = pp[0x187]
    //     0x3b745c: add          r0, PP, #0xf, lsl #12
    //     0x3b7460: ldr          r0, [r0, #0x178]
    // 0x3b7464: StoreField: r1->field_1b = r0
    //     0x3b7464: stur         r0, [r1, #0x1b]
    // 0x3b7468: r0 = call 0x391a04
    //     0x3b7468: bl           0x391a04
    //     0x3b746c: stur         r0, [fp, #-0x18]
    //     0x3b7470: ldur         BARRIER, [fp, #-8]
    // 0x3b7474: lr = pp[0x31f]
    //     0x3b7474: add          lr, PP, #0xf, lsl #12
    //     0x3b7478: ldr          lr, [lr, #0x310]
    //     0x3b747c: stp          lr, BARRIER, [SP, #0x10]
    // 0x3b7480: BARRIER = pp[0x31f]
    //     0x3b7480: add          BARRIER, PP, #0xf, lsl #12
    //     0x3b7484: ldr          BARRIER, [BARRIER, #0x310]
    //     0x3b7488: ldur         lr, [fp, #-0x10]
    //     0x3b748c: stp          lr, BARRIER, [SP]
    // 0x3b7490: r1 = r0
    //     0x3b7490: mov          r1, r0
    // 0x3b7494: r4 = pp[0x18f]
    //     0x3b7494: add          r4, PP, #0xf, lsl #12
    //     0x3b7498: ldr          r4, [r4, #0x180]
    // 0x3b749c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3b749c: bl           0x391490
    // 0x3b74a0: r0 = call 0x3a1d94
    //     0x3b74a0: bl           0x3a1d94
    // 0x3b74a4: r1 = pp[0x547]
    //     0x3b74a4: add          r1, PP, #0xf, lsl #12
    //     0x3b74a8: ldr          r1, [r1, #0x538]
    // 0x3b74ac: r2 = NULL
    //     0x3b74ac: mov          r2, NULL
    //     0x3b74b0: stur         r0, [fp, #-8]
    // 0x3b74b4: r0 = call 0x61ec54
    //     0x3b74b4: bl           0x61ec54
    //     0x3b74b8: ldur         BARRIER, [fp, #-0x18]
    //     0x3b74bc: stp          r0, BARRIER, [SP]
    //     0x3b74c0: ldur         r1, [fp, #-8]
    // 0x3b74c4: r4 = pp[0xece]
    //     0x3b74c4: add          r4, PP, #0xe, lsl #12
    //     0x3b74c8: ldr          r4, [r4, #0xec0]
    // 0x3b74cc: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x3b74cc: bl           0x3a18c4
    // 0x3b74d0: r0 = call 0x396460
    //     0x3b74d0: bl           0x396460
    // 0x3b74d4: r1 = pp[0x19f]
    //     0x3b74d4: add          r1, PP, #0xf, lsl #12
    //     0x3b74d8: ldr          r1, [r1, #0x190]
    // 0x3b74dc: StoreField: r0->field_f = r1
    //     0x3b74dc: stur         r1, [r0, #0xf]
    //     0x3b74e0: ldur         r1, [fp, #-8]
    // 0x3b74e4: StoreField: r0->field_b = r1
    //     0x3b74e4: stur         r1, [r0, #0xb]
    // 0x3b74e8: SP = fp
    //     0x3b74e8: mov          SP, fp
    // 0x3b74ec: LeaveFrame
    //     0x3b74ec: ldp          fp, lr, [SP], #0x10
    // 0x3b74f0: ret
    //     0x3b74f0: ret          
    // 0x3b74f4: r0 = call 0x61fa28
    //     0x3b74f4: bl           0x61fa28
    // 0x3b74f8: b 0x3b741c
    //     0x3b74f8: b            0x3b741c
  }
