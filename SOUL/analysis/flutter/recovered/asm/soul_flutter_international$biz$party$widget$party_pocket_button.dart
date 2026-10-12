// lib: , url: soul_flutter_international$biz$party$widget$party_pocket_button


  build() {
    // ** addr: 0x3b49c4, size: 0x5b0
    // 0x3b49c4: EnterFrame
    //     0x3b49c4: stp          fp, lr, [SP, #-0x10]!
    //     0x3b49c8: mov          fp, SP
    // 0x3b49cc: AllocStack(0x70)
    //     0x3b49cc: sub          SP, SP, #0x70
    // 0x3b49d0: r0 = r1
    //     0x3b49d0: mov          r0, r1
    //     0x3b49d4: stur         r1, [fp, #-8]
    // 0x3b49d8: r1 = r2
    //     0x3b49d8: mov          r1, r2
    //     0x3b49dc: stur         r2, [fp, #-0x10]
    // 0x3b49e0: CheckStackOverflow
    //     0x3b49e0: ldr          BARRIER, [THR, #0x38]
    //     0x3b49e4: cmp          SP, BARRIER
    //     0x3b49e8: b.ls         0x3b4f6c
    //     0x3b49ec: mov          r1, #1
    // 0x3b49f0: r0 = call 0x61e890
    //     0x3b49f0: bl           0x61e890
    // 0x3b49f4: r2 = r0
    //     0x3b49f4: mov          r2, r0
    //     0x3b49f8: ldur         r0, [fp, #-8]
    //     0x3b49fc: stur         r2, [fp, #-0x18]
    // 0x3b4a00: StoreField: r2->field_f = r0
    //     0x3b4a00: stur         r0, [r2, #0xf]
    //     0x3b4a04: ldur         r1, [fp, #-0x10]
    // 0x3b4a08: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenWidth()
    //     0x3b4a08: bl           0x3a877c
    //     0x3b4a0c: ldur         r1, [fp, #-0x10]
    //     0x3b4a10: stur         d0, [fp, #-0x40]
    // 0x3b4a14: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenHeight()
    //     0x3b4a14: bl           0x3b5484
    //     0x3b4a18: ldur         r2, [fp, #-0x18]
    // 0x3b4a1c: r1 = pp[0x1fa]
    //     0x3b4a1c: add          r1, PP, #0x12, lsl #12
    //     0x3b4a20: ldr          r1, [r1, #0x1e8]
    //     0x3b4a24: stur         d0, [fp, #-0x48]
    // 0x3b4a28: r0 = call 0x61ec54
    //     0x3b4a28: bl           0x61ec54
    //     0x3b4a2c: stur         r0, [fp, #-8]
    //     0x3b4a30: mov          r1, #3
    // 0x3b4a34: r0 = call 0x61e890
    //     0x3b4a34: bl           0x61e890
    // 0x3b4a38: r2 = r0
    //     0x3b4a38: mov          r2, r0
    //     0x3b4a3c: ldur         r0, [fp, #-8]
    //     0x3b4a40: stur         r2, [fp, #-0x10]
    // 0x3b4a44: StoreField: r2->field_f = r0
    //     0x3b4a44: stur         r0, [r2, #0xf]
    // 0x3b4a48: r0 = pp[0x5a60]
    //     0x3b4a48: ldr          r0, [PP, #0x5a60]
    // 0x3b4a4c: StoreField: r2->field_13 = r0
    //     0x3b4a4c: stur         r0, [r2, #0x13]
    //     0x3b4a50: add          r0, NULL, #0x20
    // 0x3b4a54: ArrayStore: r2[0] = r0  ; List_8
    //     0x3b4a54: stur         r0, [r2, #0x17]
    // 0x3b4a58: r1 = pp[0xede]
    //     0x3b4a58: add          r1, PP, #0xe, lsl #12
    //     0x3b4a5c: ldr          r1, [r1, #0xed0]
    // 0x3b4a60: r0 = call 0x3b5478
    //     0x3b4a60: bl           0x3b5478
    // 0x3b4a64: r1 = r0
    //     0x3b4a64: mov          r1, r0
    // 0x3b4a68: r0 = pp[0x202]
    //     0x3b4a68: add          r0, PP, #0x12, lsl #12
    //     0x3b4a6c: ldr          r0, [r0, #0x1f0]
    //     0x3b4a70: stur         r1, [fp, #-8]
    // 0x3b4a74: StoreField: r1->field_b = r0
    //     0x3b4a74: stur         r0, [r1, #0xb]
    // 0x3b4a78: r0 = call 0x3b546c
    //     0x3b4a78: bl           0x3b546c
    // 0x3b4a7c: r1 = r0
    //     0x3b4a7c: mov          r1, r0
    //     0x3b4a80: ldur         r0, [fp, #-8]
    //     0x3b4a84: stur         r1, [fp, #-0x18]
    // 0x3b4a88: StoreField: r1->field_7 = r0
    //     0x3b4a88: stur         r0, [r1, #7]
    // 0x3b4a8c: r0 = pp[0x1ef]
    //     0x3b4a8c: add          r0, PP, #0xf, lsl #12
    //     0x3b4a90: ldr          r0, [r0, #0x1e0]
    // 0x3b4a94: StoreField: r1->field_13 = r0
    //     0x3b4a94: stur         r0, [r1, #0x13]
    // 0x3b4a98: r0 = pp[0xaae]
    //     0x3b4a98: add          r0, PP, #0xe, lsl #12
    //     0x3b4a9c: ldr          r0, [r0, #0xaa0]
    // 0x3b4aa0: ArrayStore: r1[0] = r0  ; List_8
    //     0x3b4aa0: stur         r0, [r1, #0x17]
    // 0x3b4aa4: r2 = pp[0xef6]
    //     0x3b4aa4: add          r2, PP, #0xe, lsl #12
    //     0x3b4aa8: ldr          r2, [r2, #0xee8]
    // 0x3b4aac: StoreField: r1->field_1f = r2
    //     0x3b4aac: stur         r2, [r1, #0x1f]
    //     0x3b4ab0: add          r2, NULL, #0x30
    // 0x3b4ab4: StoreField: r1->field_23 = r2
    //     0x3b4ab4: stur         r2, [r1, #0x23]
    //     0x3b4ab8: fmov         d0, #1.00000000
    // 0x3b4abc: StoreField: r1->field_27 = d0
    //     0x3b4abc: stur         d0, [r1, #0x27]
    // 0x3b4ac0: StoreField: r1->field_2f = d0
    //     0x3b4ac0: stur         d0, [r1, #0x2f]
    // 0x3b4ac4: r3 = pp[0xefe]
    //     0x3b4ac4: add          r3, PP, #0xe, lsl #12
    //     0x3b4ac8: ldr          r3, [r3, #0xef0]
    // 0x3b4acc: StoreField: r1->field_37 = r3
    //     0x3b4acc: stur         r3, [r1, #0x37]
    // 0x3b4ad0: StoreField: r1->field_3b = r2
    //     0x3b4ad0: stur         r2, [r1, #0x3b]
    // 0x3b4ad4: StoreField: r1->field_3f = r2
    //     0x3b4ad4: stur         r2, [r1, #0x3f]
    // 0x3b4ad8: r0 = call 0x391dd8
    //     0x3b4ad8: bl           0x391dd8
    // 0x3b4adc: r2 = r0
    //     0x3b4adc: mov          r2, r0
    //     0x3b4ae0: ldur         r0, [fp, #-0x18]
    //     0x3b4ae4: stur         r2, [fp, #-8]
    // 0x3b4ae8: StoreField: r2->field_b = r0
    //     0x3b4ae8: stur         r0, [r2, #0xb]
    // 0x3b4aec: r0 = pp[0xb86]
    //     0x3b4aec: add          r0, PP, #0xe, lsl #12
    //     0x3b4af0: ldr          r0, [r0, #0xb78]
    // 0x3b4af4: StoreField: r2->field_23 = r0
    //     0x3b4af4: stur         r0, [r2, #0x23]
    // 0x3b4af8: r1 = pp[0x9f4]
    //     0x3b4af8: add          r1, PP, #0xc, lsl #12
    //     0x3b4afc: ldr          r1, [r1, #0x9e8]
    // 0x3b4b00: r4 = pp[0x4c0]
    //     0x3b4b00: ldr          r4, [PP, #0x4c0]
    // 0x3b4b04: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3b4b04: bl           0x3a1dcc
    //     0x3b4b08: stur         r0, [fp, #-0x18]
    //     0x3b4b0c: mov          BARRIER, #0x88
    //     0x3b4b10: stp          BARRIER, NULL, [SP]
    // 0x3b4b14: r0 = dart_typed_data_ByteData::factory_ctor()
    //     0x3b4b14: bl           0x297550
    //     0x3b4b18: stur         r0, [fp, #-0x20]
    // 0x3b4b1c: r0 = call 0x2eeee8
    //     0x3b4b1c: bl           0x2eeee8
    // 0x3b4b20: r1 = r0
    //     0x3b4b20: mov          r1, r0
    //     0x3b4b24: ldur         r0, [fp, #-0x20]
    //     0x3b4b28: stur         r1, [fp, #-0x28]
    // 0x3b4b2c: StoreField: r1->field_7 = r0
    //     0x3b4b2c: stur         r0, [r1, #7]
    // 0x3b4b30: r0 = call 0x31d844
    //     0x3b4b30: bl           0x31d844
    // 0x3b4b34: r1 = r0
    //     0x3b4b34: mov          r1, r0
    // 0x3b4b38: r0 = pp[0x6310]
    //     0x3b4b38: ldr          r0, [PP, #0x6310]
    //     0x3b4b3c: stur         r1, [fp, #-0x20]
    // 0x3b4b40: StoreField: r1->field_27 = r0
    //     0x3b4b40: stur         r0, [r1, #0x27]
    //     0x3b4b44: fmov         d0, #1.00000000
    // 0x3b4b48: StoreField: r1->field_7 = d0
    //     0x3b4b48: stur         d0, [r1, #7]
    // 0x3b4b4c: StoreField: r1->field_f = d0
    //     0x3b4b4c: stur         d0, [r1, #0xf]
    // 0x3b4b50: d1 = pp[0x20a]
    //     0x3b4b50: add          r17, PP, #0x12, lsl #12
    //     0x3b4b54: ldr          d1, [r17, #0x1f8]
    // 0x3b4b58: ArrayStore: r1[0] = d1  ; List_8
    //     0x3b4b58: stur         d1, [r1, #0x17]
    // 0x3b4b5c: StoreField: r1->field_1f = xzr
    //     0x3b4b5c: stur         xzr, [r1, #0x1f]
    // 0x3b4b60: r0 = call 0x31d844
    //     0x3b4b60: bl           0x31d844
    // 0x3b4b64: r3 = r0
    //     0x3b4b64: mov          r3, r0
    // 0x3b4b68: r0 = pp[0x6310]
    //     0x3b4b68: ldr          r0, [PP, #0x6310]
    //     0x3b4b6c: stur         r3, [fp, #-0x30]
    // 0x3b4b70: StoreField: r3->field_27 = r0
    //     0x3b4b70: stur         r0, [r3, #0x27]
    //     0x3b4b74: fmov         d0, #1.00000000
    // 0x3b4b78: StoreField: r3->field_7 = d0
    //     0x3b4b78: stur         d0, [r3, #7]
    // 0x3b4b7c: StoreField: r3->field_f = d0
    //     0x3b4b7c: stur         d0, [r3, #0xf]
    // 0x3b4b80: d1 = pp[0xc58]
    //     0x3b4b80: add          r17, PP, #0x10, lsl #12
    //     0x3b4b84: ldr          d1, [r17, #0xc48]
    // 0x3b4b88: ArrayStore: r3[0] = d1  ; List_8
    //     0x3b4b88: stur         d1, [r3, #0x17]
    // 0x3b4b8c: StoreField: r3->field_1f = xzr
    //     0x3b4b8c: stur         xzr, [r3, #0x1f]
    // 0x3b4b90: r1 = NULL
    //     0x3b4b90: mov          r1, NULL
    //     0x3b4b94: mov          r2, #4
    // 0x3b4b98: r0 = call 0x61f920
    //     0x3b4b98: bl           0x61f920
    // 0x3b4b9c: r2 = r0
    //     0x3b4b9c: mov          r2, r0
    //     0x3b4ba0: ldur         r0, [fp, #-0x20]
    //     0x3b4ba4: stur         r2, [fp, #-0x38]
    // 0x3b4ba8: StoreField: r2->field_f = r0
    //     0x3b4ba8: stur         r0, [r2, #0xf]
    //     0x3b4bac: ldur         r0, [fp, #-0x30]
    // 0x3b4bb0: StoreField: r2->field_13 = r0
    //     0x3b4bb0: stur         r0, [r2, #0x13]
    // 0x3b4bb4: r1 = pp[0xc68]
    //     0x3b4bb4: add          r1, PP, #0x10, lsl #12
    //     0x3b4bb8: ldr          r1, [r1, #0xc58]
    // 0x3b4bbc: r0 = call 0x61e854
    //     0x3b4bbc: bl           0x61e854
    // 0x3b4bc0: r1 = r0
    //     0x3b4bc0: mov          r1, r0
    //     0x3b4bc4: ldur         r0, [fp, #-0x38]
    //     0x3b4bc8: stur         r1, [fp, #-0x20]
    // 0x3b4bcc: StoreField: r1->field_f = r0
    //     0x3b4bcc: stur         r0, [r1, #0xf]
    //     0x3b4bd0: mov          r2, #4
    // 0x3b4bd4: StoreField: r1->field_b = r2
    //     0x3b4bd4: stur         r2, [r1, #0xb]
    // 0x3b4bd8: r0 = call 0x3a108c
    //     0x3b4bd8: bl           0x3a108c
    // 0x3b4bdc: r1 = r0
    //     0x3b4bdc: mov          r1, r0
    // 0x3b4be0: r0 = pp[0xc78]
    //     0x3b4be0: add          r0, PP, #0x10, lsl #12
    //     0x3b4be4: ldr          r0, [r0, #0xc68]
    //     0x3b4be8: stur         r1, [fp, #-0x30]
    // 0x3b4bec: StoreField: r1->field_13 = r0
    //     0x3b4bec: stur         r0, [r1, #0x13]
    // 0x3b4bf0: r0 = pp[0xc80]
    //     0x3b4bf0: add          r0, PP, #0x10, lsl #12
    //     0x3b4bf4: ldr          r0, [r0, #0xc70]
    // 0x3b4bf8: ArrayStore: r1[0] = r0  ; List_8
    //     0x3b4bf8: stur         r0, [r1, #0x17]
    // 0x3b4bfc: r0 = pp[0xc88]
    //     0x3b4bfc: add          r0, PP, #0x10, lsl #12
    //     0x3b4c00: ldr          r0, [r0, #0xc78]
    // 0x3b4c04: StoreField: r1->field_1b = r0
    //     0x3b4c04: stur         r0, [r1, #0x1b]
    //     0x3b4c08: ldur         r0, [fp, #-0x20]
    // 0x3b4c0c: StoreField: r1->field_7 = r0
    //     0x3b4c0c: stur         r0, [r1, #7]
    //     0x3b4c10: ldur         d0, [fp, #-0x40]
    //     0x3b4c14: eor          v1.16b, v1.16b, v1.16b
    //     0x3b4c18: fadd         d2, d0, d1
    //     0x3b4c1c: ldur         d0, [fp, #-0x48]
    //     0x3b4c20: stur         d2, [fp, #-0x50]
    //     0x3b4c24: fadd         d3, d0, d1
    //     0x3b4c28: stur         d3, [fp, #-0x40]
    // 0x3b4c2c: r0 = call 0x2984c0
    //     0x3b4c2c: bl           0x2984c0
    // 0x3b4c30: StoreField: r0->field_7 = xzr
    //     0x3b4c30: stur         xzr, [r0, #7]
    // 0x3b4c34: StoreField: r0->field_f = xzr
    //     0x3b4c34: stur         xzr, [r0, #0xf]
    //     0x3b4c38: ldur         d0, [fp, #-0x50]
    // 0x3b4c3c: ArrayStore: r0[0] = d0  ; List_8
    //     0x3b4c3c: stur         d0, [r0, #0x17]
    //     0x3b4c40: ldur         d0, [fp, #-0x40]
    // 0x3b4c44: StoreField: r0->field_1f = d0
    //     0x3b4c44: stur         d0, [r0, #0x1f]
    //     0x3b4c48: ldur         r1, [fp, #-0x30]
    // 0x3b4c4c: r2 = r0
    //     0x3b4c4c: mov          r2, r0
    // 0x3b4c50: r4 = pp[0x278]
    //     0x3b4c50: ldr          r4, [PP, #0x278]
    // 0x3b4c54: r0 = flutter$src$painting$gradient_LinearGradient::createShader()
    //     0x3b4c54: bl           0x3b4f80
    //     0x3b4c58: ldur         r1, [fp, #-0x28]
    // 0x3b4c5c: r2 = r0
    //     0x3b4c5c: mov          r2, r0
    // 0x3b4c60: r0 = dart_ui_Paint::shader_assign()
    //     0x3b4c60: bl           0x35f18c
    // 0x3b4c64: r0 = call 0x31d844
    //     0x3b4c64: bl           0x31d844
    // 0x3b4c68: r1 = r0
    //     0x3b4c68: mov          r1, r0
    // 0x3b4c6c: r0 = pp[0x6310]
    //     0x3b4c6c: ldr          r0, [PP, #0x6310]
    //     0x3b4c70: stur         r1, [fp, #-0x20]
    // 0x3b4c74: StoreField: r1->field_27 = r0
    //     0x3b4c74: stur         r0, [r1, #0x27]
    //     0x3b4c78: fmov         d0, #1.00000000
    // 0x3b4c7c: StoreField: r1->field_7 = d0
    //     0x3b4c7c: stur         d0, [r1, #7]
    // 0x3b4c80: d1 = pp[0x60f]
    //     0x3b4c80: add          r17, PP, #0xf, lsl #12
    //     0x3b4c84: ldr          d1, [r17, #0x600]
    // 0x3b4c88: StoreField: r1->field_f = d1
    //     0x3b4c88: stur         d1, [r1, #0xf]
    // 0x3b4c8c: d1 = pp[0x212]
    //     0x3b4c8c: add          r17, PP, #0x12, lsl #12
    //     0x3b4c90: ldr          d1, [r17, #0x200]
    // 0x3b4c94: ArrayStore: r1[0] = d1  ; List_8
    //     0x3b4c94: stur         d1, [r1, #0x17]
    // 0x3b4c98: d1 = pp[0xb71]
    //     0x3b4c98: add          r17, PP, #0x11, lsl #12
    //     0x3b4c9c: ldr          d1, [r17, #0xb60]
    // 0x3b4ca0: StoreField: r1->field_1f = d1
    //     0x3b4ca0: stur         d1, [r1, #0x1f]
    // 0x3b4ca4: r0 = call 0x2a7704
    //     0x3b4ca4: bl           0x2a7704
    //     0x3b4ca8: stur         r0, [fp, #-0x30]
    // 0x3b4cac: StoreField: r0->field_7 = xzr
    //     0x3b4cac: stur         xzr, [r0, #7]
    //     0x3b4cb0: fmov         d0, #1.00000000
    // 0x3b4cb4: StoreField: r0->field_f = d0
    //     0x3b4cb4: stur         d0, [r0, #0xf]
    // 0x3b4cb8: r0 = call 0x3b4f74
    //     0x3b4cb8: bl           0x3b4f74
    // 0x3b4cbc: r3 = r0
    //     0x3b4cbc: mov          r3, r0
    //     0x3b4cc0: ldur         r0, [fp, #-0x20]
    //     0x3b4cc4: stur         r3, [fp, #-0x38]
    // 0x3b4cc8: StoreField: r3->field_7 = r0
    //     0x3b4cc8: stur         r0, [r3, #7]
    //     0x3b4ccc: ldur         r0, [fp, #-0x30]
    // 0x3b4cd0: StoreField: r3->field_b = r0
    //     0x3b4cd0: stur         r0, [r3, #0xb]
    //     0x3b4cd4: fmov         d0, #4.00000000
    // 0x3b4cd8: StoreField: r3->field_f = d0
    //     0x3b4cd8: stur         d0, [r3, #0xf]
    // 0x3b4cdc: r1 = NULL
    //     0x3b4cdc: mov          r1, NULL
    //     0x3b4ce0: mov          r2, #2
    // 0x3b4ce4: r0 = call 0x61f920
    //     0x3b4ce4: bl           0x61f920
    // 0x3b4ce8: r2 = r0
    //     0x3b4ce8: mov          r2, r0
    //     0x3b4cec: ldur         r0, [fp, #-0x38]
    //     0x3b4cf0: stur         r2, [fp, #-0x20]
    // 0x3b4cf4: StoreField: r2->field_f = r0
    //     0x3b4cf4: stur         r0, [r2, #0xf]
    // 0x3b4cf8: r1 = pp[0x57a]
    //     0x3b4cf8: add          r1, PP, #0xa, lsl #12
    //     0x3b4cfc: ldr          r1, [r1, #0x570]
    // 0x3b4d00: r0 = call 0x61e854
    //     0x3b4d00: bl           0x61e854
    // 0x3b4d04: r1 = r0
    //     0x3b4d04: mov          r1, r0
    //     0x3b4d08: ldur         r0, [fp, #-0x20]
    //     0x3b4d0c: stur         r1, [fp, #-0x30]
    // 0x3b4d10: StoreField: r1->field_f = r0
    //     0x3b4d10: stur         r0, [r1, #0xf]
    //     0x3b4d14: mov          r0, #2
    // 0x3b4d18: StoreField: r1->field_b = r0
    //     0x3b4d18: stur         r0, [r1, #0xb]
    // 0x3b4d1c: r0 = call 0x31abec
    //     0x3b4d1c: bl           0x31abec
    // 0x3b4d20: r1 = r0
    //     0x3b4d20: mov          r1, r0
    //     0x3b4d24: add          r0, NULL, #0x20
    //     0x3b4d28: stur         r1, [fp, #-0x20]
    // 0x3b4d2c: StoreField: r1->field_7 = r0
    //     0x3b4d2c: stur         r0, [r1, #7]
    // 0x3b4d30: r2 = pp[0x248]
    //     0x3b4d30: add          r2, PP, #0x10, lsl #12
    //     0x3b4d34: ldr          r2, [r2, #0x238]
    // 0x3b4d38: StoreField: r1->field_1f = r2
    //     0x3b4d38: stur         r2, [r1, #0x1f]
    // 0x3b4d3c: r3 = pp[0x958]
    //     0x3b4d3c: add          r3, PP, #0x10, lsl #12
    //     0x3b4d40: ldr          r3, [r3, #0x948]
    // 0x3b4d44: StoreField: r1->field_23 = r3
    //     0x3b4d44: stur         r3, [r1, #0x23]
    // 0x3b4d48: r4 = pp[0x21a]
    //     0x3b4d48: add          r4, PP, #0x12, lsl #12
    //     0x3b4d4c: ldr          r4, [r4, #0x208]
    // 0x3b4d50: StoreField: r1->field_27 = r4
    //     0x3b4d50: stur         r4, [r1, #0x27]
    //     0x3b4d54: ldur         r5, [fp, #-0x28]
    // 0x3b4d58: StoreField: r1->field_43 = r5
    //     0x3b4d58: stur         r5, [r1, #0x43]
    //     0x3b4d5c: ldur         r5, [fp, #-0x30]
    // 0x3b4d60: StoreField: r1->field_5f = r5
    //     0x3b4d60: stur         r5, [r1, #0x5f]
    // 0x3b4d64: r0 = call 0x393bf8
    //     0x3b4d64: bl           0x393bf8
    // 0x3b4d68: r2 = r0
    //     0x3b4d68: mov          r2, r0
    //     0x3b4d6c: ldur         r0, [fp, #-0x18]
    //     0x3b4d70: stur         r2, [fp, #-0x28]
    // 0x3b4d74: StoreField: r2->field_b = r0
    //     0x3b4d74: stur         r0, [r2, #0xb]
    //     0x3b4d78: ldur         r0, [fp, #-0x20]
    // 0x3b4d7c: StoreField: r2->field_13 = r0
    //     0x3b4d7c: stur         r0, [r2, #0x13]
    // 0x3b4d80: r1 = pp[0x9f4]
    //     0x3b4d80: add          r1, PP, #0xc, lsl #12
    //     0x3b4d84: ldr          r1, [r1, #0x9e8]
    // 0x3b4d88: r4 = pp[0x4c0]
    //     0x3b4d88: ldr          r4, [PP, #0x4c0]
    // 0x3b4d8c: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3b4d8c: bl           0x3a1dcc
    //     0x3b4d90: stur         r0, [fp, #-0x18]
    //     0x3b4d94: mov          BARRIER, #0x88
    //     0x3b4d98: stp          BARRIER, NULL, [SP]
    // 0x3b4d9c: r0 = dart_typed_data_ByteData::factory_ctor()
    //     0x3b4d9c: bl           0x297550
    //     0x3b4da0: stur         r0, [fp, #-0x20]
    // 0x3b4da4: r0 = call 0x2eeee8
    //     0x3b4da4: bl           0x2eeee8
    // 0x3b4da8: r1 = r0
    //     0x3b4da8: mov          r1, r0
    //     0x3b4dac: ldur         r0, [fp, #-0x20]
    //     0x3b4db0: stur         r1, [fp, #-0x30]
    // 0x3b4db4: StoreField: r1->field_7 = r0
    //     0x3b4db4: stur         r0, [r1, #7]
    // 0x3b4db8: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x3b4db8: ldur         r2, [r0, #0x17]
    //     0x3b4dbc: add          r2, r2, HEAP, lsl #32
    // 0x3b4dc0: LoadField: r0 = r2->field_7
    //     0x3b4dc0: ldur         r0, [r2, #7]
    //     0x3b4dc4: mov          r3, #1
    // 0x3b4dc8: StoreField: r0->field_1c = r3
    //     0x3b4dc8: str          r3, [r0, #0x1c]
    // 0x3b4dcc: LoadField: r0 = r2->field_7
    //     0x3b4dcc: ldur         r0, [r2, #7]
    // 0x3b4dd0: s0 = pp[0x222]
    //     0x3b4dd0: add          r17, PP, #0x12, lsl #12
    //     0x3b4dd4: ldr          s0, [r17, #0x210]
    // 0x3b4dd8: StoreField: r0->field_20 = s0
    //     0x3b4dd8: str          s0, [r0, #0x20]
    // 0x3b4ddc: r0 = call 0x31d844
    //     0x3b4ddc: bl           0x31d844
    // 0x3b4de0: r1 = r0
    //     0x3b4de0: mov          r1, r0
    // 0x3b4de4: r0 = pp[0x6310]
    //     0x3b4de4: ldr          r0, [PP, #0x6310]
    // 0x3b4de8: StoreField: r1->field_27 = r0
    //     0x3b4de8: stur         r0, [r1, #0x27]
    //     0x3b4dec: fmov         d0, #1.00000000
    // 0x3b4df0: StoreField: r1->field_7 = d0
    //     0x3b4df0: stur         d0, [r1, #7]
    // 0x3b4df4: StoreField: r1->field_f = d0
    //     0x3b4df4: stur         d0, [r1, #0xf]
    // 0x3b4df8: d0 = pp[0x9b0]
    //     0x3b4df8: add          r17, PP, #0x10, lsl #12
    //     0x3b4dfc: ldr          d0, [r17, #0x9a0]
    // 0x3b4e00: ArrayStore: r1[0] = d0  ; List_8
    //     0x3b4e00: stur         d0, [r1, #0x17]
    // 0x3b4e04: d0 = pp[0x22a]
    //     0x3b4e04: add          r17, PP, #0x12, lsl #12
    //     0x3b4e08: ldr          d0, [r17, #0x218]
    // 0x3b4e0c: StoreField: r1->field_1f = d0
    //     0x3b4e0c: stur         d0, [r1, #0x1f]
    // 0x3b4e10: r2 = r1
    //     0x3b4e10: mov          r2, r1
    //     0x3b4e14: ldur         r1, [fp, #-0x30]
    // 0x3b4e18: r0 = dart_ui_Paint::color_assign()
    //     0x3b4e18: bl           0x2eecf0
    // 0x3b4e1c: r0 = call 0x31abec
    //     0x3b4e1c: bl           0x31abec
    // 0x3b4e20: r1 = r0
    //     0x3b4e20: mov          r1, r0
    //     0x3b4e24: add          r0, NULL, #0x20
    //     0x3b4e28: stur         r1, [fp, #-0x20]
    // 0x3b4e2c: StoreField: r1->field_7 = r0
    //     0x3b4e2c: stur         r0, [r1, #7]
    // 0x3b4e30: r0 = pp[0x248]
    //     0x3b4e30: add          r0, PP, #0x10, lsl #12
    //     0x3b4e34: ldr          r0, [r0, #0x238]
    // 0x3b4e38: StoreField: r1->field_1f = r0
    //     0x3b4e38: stur         r0, [r1, #0x1f]
    // 0x3b4e3c: r0 = pp[0x958]
    //     0x3b4e3c: add          r0, PP, #0x10, lsl #12
    //     0x3b4e40: ldr          r0, [r0, #0x948]
    // 0x3b4e44: StoreField: r1->field_23 = r0
    //     0x3b4e44: stur         r0, [r1, #0x23]
    // 0x3b4e48: r0 = pp[0x21a]
    //     0x3b4e48: add          r0, PP, #0x12, lsl #12
    //     0x3b4e4c: ldr          r0, [r0, #0x208]
    // 0x3b4e50: StoreField: r1->field_27 = r0
    //     0x3b4e50: stur         r0, [r1, #0x27]
    //     0x3b4e54: ldur         r0, [fp, #-0x30]
    // 0x3b4e58: StoreField: r1->field_43 = r0
    //     0x3b4e58: stur         r0, [r1, #0x43]
    // 0x3b4e5c: r0 = call 0x393bf8
    //     0x3b4e5c: bl           0x393bf8
    // 0x3b4e60: r3 = r0
    //     0x3b4e60: mov          r3, r0
    //     0x3b4e64: ldur         r0, [fp, #-0x18]
    //     0x3b4e68: stur         r3, [fp, #-0x30]
    // 0x3b4e6c: StoreField: r3->field_b = r0
    //     0x3b4e6c: stur         r0, [r3, #0xb]
    //     0x3b4e70: ldur         r0, [fp, #-0x20]
    // 0x3b4e74: StoreField: r3->field_13 = r0
    //     0x3b4e74: stur         r0, [r3, #0x13]
    // 0x3b4e78: r1 = NULL
    //     0x3b4e78: mov          r1, NULL
    //     0x3b4e7c: mov          r2, #4
    // 0x3b4e80: r0 = call 0x61f920
    //     0x3b4e80: bl           0x61f920
    // 0x3b4e84: r2 = r0
    //     0x3b4e84: mov          r2, r0
    //     0x3b4e88: ldur         r0, [fp, #-0x28]
    //     0x3b4e8c: stur         r2, [fp, #-0x18]
    // 0x3b4e90: StoreField: r2->field_f = r0
    //     0x3b4e90: stur         r0, [r2, #0xf]
    //     0x3b4e94: ldur         r0, [fp, #-0x30]
    // 0x3b4e98: StoreField: r2->field_13 = r0
    //     0x3b4e98: stur         r0, [r2, #0x13]
    // 0x3b4e9c: r1 = pp[0x5c58]
    //     0x3b4e9c: ldr          r1, [PP, #0x5c58]
    // 0x3b4ea0: r0 = call 0x61e854
    //     0x3b4ea0: bl           0x61e854
    // 0x3b4ea4: r1 = r0
    //     0x3b4ea4: mov          r1, r0
    //     0x3b4ea8: ldur         r0, [fp, #-0x18]
    //     0x3b4eac: stur         r1, [fp, #-0x20]
    // 0x3b4eb0: StoreField: r1->field_f = r0
    //     0x3b4eb0: stur         r0, [r1, #0xf]
    //     0x3b4eb4: mov          r0, #4
    // 0x3b4eb8: StoreField: r1->field_b = r0
    //     0x3b4eb8: stur         r0, [r1, #0xb]
    // 0x3b4ebc: r0 = call 0x39e6f4
    //     0x3b4ebc: bl           0x39e6f4
    // 0x3b4ec0: r1 = r0
    //     0x3b4ec0: mov          r1, r0
    // 0x3b4ec4: r0 = pp[0xaae]
    //     0x3b4ec4: add          r0, PP, #0xe, lsl #12
    //     0x3b4ec8: ldr          r0, [r0, #0xaa0]
    //     0x3b4ecc: stur         r1, [fp, #-0x18]
    // 0x3b4ed0: StoreField: r1->field_f = r0
    //     0x3b4ed0: stur         r0, [r1, #0xf]
    // 0x3b4ed4: r0 = pp[0xf16]
    //     0x3b4ed4: add          r0, PP, #0xe, lsl #12
    //     0x3b4ed8: ldr          r0, [r0, #0xf08]
    // 0x3b4edc: ArrayStore: r1[0] = r0  ; List_8
    //     0x3b4edc: stur         r0, [r1, #0x17]
    // 0x3b4ee0: r0 = pp[0xf1e]
    //     0x3b4ee0: add          r0, PP, #0xe, lsl #12
    //     0x3b4ee4: ldr          r0, [r0, #0xf10]
    // 0x3b4ee8: StoreField: r1->field_1b = r0
    //     0x3b4ee8: stur         r0, [r1, #0x1b]
    //     0x3b4eec: ldur         r0, [fp, #-0x20]
    // 0x3b4ef0: StoreField: r1->field_b = r0
    //     0x3b4ef0: stur         r0, [r1, #0xb]
    // 0x3b4ef4: r0 = call 0x391a04
    //     0x3b4ef4: bl           0x391a04
    //     0x3b4ef8: stur         r0, [fp, #-0x20]
    // 0x3b4efc: BARRIER = pp[0xa71]
    //     0x3b4efc: add          BARRIER, PP, #0x11, lsl #12
    //     0x3b4f00: ldr          BARRIER, [BARRIER, #0xa60]
    //     0x3b4f04: ldur         lr, [fp, #-8]
    //     0x3b4f08: stp          lr, BARRIER, [SP, #0x10]
    // 0x3b4f0c: BARRIER = pp[0xa61]
    //     0x3b4f0c: add          BARRIER, PP, #0x11, lsl #12
    //     0x3b4f10: ldr          BARRIER, [BARRIER, #0xa50]
    //     0x3b4f14: ldur         lr, [fp, #-0x18]
    //     0x3b4f18: stp          lr, BARRIER, [SP]
    // 0x3b4f1c: r1 = r0
    //     0x3b4f1c: mov          r1, r0
    // 0x3b4f20: r4 = pp[0x232]
    //     0x3b4f20: add          r4, PP, #0x12, lsl #12
    //     0x3b4f24: ldr          r4, [r4, #0x220]
    // 0x3b4f28: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3b4f28: bl           0x391490
    // 0x3b4f2c: r0 = call 0x3a1d94
    //     0x3b4f2c: bl           0x3a1d94
    //     0x3b4f30: ldur         r2, [fp, #-0x10]
    // 0x3b4f34: r1 = pp[0x121]
    //     0x3b4f34: add          r1, PP, #0x11, lsl #12
    //     0x3b4f38: ldr          r1, [r1, #0x110]
    //     0x3b4f3c: stur         r0, [fp, #-8]
    // 0x3b4f40: r0 = call 0x61ec54
    //     0x3b4f40: bl           0x61ec54
    //     0x3b4f44: ldur         BARRIER, [fp, #-0x20]
    //     0x3b4f48: stp          BARRIER, r0, [SP]
    //     0x3b4f4c: ldur         r1, [fp, #-8]
    // 0x3b4f50: r4 = pp[0x214]
    //     0x3b4f50: add          r4, PP, #0xc, lsl #12
    //     0x3b4f54: ldr          r4, [r4, #0x208]
    // 0x3b4f58: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x3b4f58: bl           0x3a18c4
    //     0x3b4f5c: ldur         r0, [fp, #-8]
    // 0x3b4f60: SP = fp
    //     0x3b4f60: mov          SP, fp
    // 0x3b4f64: LeaveFrame
    //     0x3b4f64: ldp          fp, lr, [SP], #0x10
    // 0x3b4f68: ret
    //     0x3b4f68: ret          
    // 0x3b4f6c: r0 = call 0x61fa28
    //     0x3b4f6c: bl           0x61fa28
    // 0x3b4f70: b 0x3b49ec
    //     0x3b4f70: b            0x3b49ec
  }

  _anon_closure() {
    // ** addr: 0x3b54c0, size: 0x7c
    // 0x3b54c0: EnterFrame
    //     0x3b54c0: stp          fp, lr, [SP, #-0x10]!
    //     0x3b54c4: mov          fp, SP
    // 0x3b54c8: AllocStack(0x18)
    //     0x3b54c8: sub          SP, SP, #0x18
    //     0x3b54cc: stur         NULL, [fp, #-8]
    //     0x3b54d0: mov          r0, #0
    //     0x3b54d4: add          r1, fp, r0, sxtw #2
    // 0x3b54d8: LoadField: r1 = r1->field_10
    //     0x3b54d8: ldr          r1, [r1, #0x10]
    // 0x3b54dc: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x3b54dc: ldur         r2, [r1, #0x17]
    //     0x3b54e0: add          r2, r2, HEAP, lsl #32
    //     0x3b54e4: stur         r2, [fp, #-0x10]
    // 0x3b54e8: CheckStackOverflow
    //     0x3b54e8: ldr          BARRIER, [THR, #0x38]
    //     0x3b54ec: cmp          SP, BARRIER
    //     0x3b54f0: b.ls         0x3b5534
    // 0x3b54f4: r0 = pp[0xcf0]
    //     0x3b54f4: ldr          r0, [PP, #0xcf0]
    // 0x3b54f8: r0 = call 0x2b16e4
    //     0x3b54f8: bl           0x2b16e4
    //     0x3b54fc: ldur         r0, [fp, #-0x10]
    // 0x3b5500: LoadField: r1 = r0->field_f
    //     0x3b5500: ldur         r1, [r0, #0xf]
    //     0x3b5504: add          r1, r1, HEAP, lsl #32
    // 0x3b5508: LoadField: r0 = r1->field_b
    //     0x3b5508: ldur         r0, [r1, #0xb]
    //     0x3b550c: add          r0, r0, HEAP, lsl #32
    //     0x3b5510: str          r0, [SP]
    //     0x3b5514: mov          r4, #0
    //     0x3b5518: ldr          r0, [SP]
    //     0x3b551c: add          BARRIER, PP, #0x12, lsl #12
    //     0x3b5520: add          BARRIER, BARRIER, #0x228
    //     0x3b5524: ldp          r5, lr, [BARRIER]
    // 0x3b5528: r0 = [R]()
    //     0x3b5528: blr          lr
    // 0x3b552c: r0 = NULL
    //     0x3b552c: mov          r0, NULL
    // 0x3b5530: b 0x2b16b8
    //     0x3b5530: b            0x2b16b8
    // 0x3b5534: r0 = call 0x61fa28
    //     0x3b5534: bl           0x61fa28
    // 0x3b5538: b 0x3b54f4
    //     0x3b5538: b            0x3b54f4
  }
