// lib: , url: soul_flutter_international$biz$party$widget$party_pocket_dialog


  build() {
    // ** addr: 0x42b758, size: 0x8ec
    // 0x42b758: EnterFrame
    //     0x42b758: stp          fp, lr, [SP, #-0x10]!
    //     0x42b75c: mov          fp, SP
    // 0x42b760: AllocStack(0x90)
    //     0x42b760: sub          SP, SP, #0x90
    // 0x42b764: r0 = r2
    //     0x42b764: mov          r0, r2
    //     0x42b768: stur         r2, [fp, #-0x10]
    // 0x42b76c: r2 = r1
    //     0x42b76c: mov          r2, r1
    //     0x42b770: stur         r1, [fp, #-8]
    // 0x42b774: CheckStackOverflow
    //     0x42b774: ldr          BARRIER, [THR, #0x38]
    //     0x42b778: cmp          SP, BARRIER
    //     0x42b77c: b.ls         0x42c038
    // 0x42b780: r1 = r0
    //     0x42b780: mov          r1, r0
    // 0x42b784: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenWidth()
    //     0x42b784: bl           0x3a877c
    //     0x42b788: ldur         r1, [fp, #-0x10]
    //     0x42b78c: stur         d0, [fp, #-0x58]
    // 0x42b790: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenHeight()
    //     0x42b790: bl           0x3b5484
    //     0x42b794: mov          v1.16b, v0.16b
    // 0x42b798: d0 = pp[0x66a0]
    //     0x42b798: ldr          d0, [PP, #0x66a0]
    //     0x42b79c: stur         d1, [fp, #-0x68]
    //     0x42b7a0: fmul         d2, d1, d0
    //     0x42b7a4: stur         d2, [fp, #-0x60]
    // 0x42b7a8: r0 = call 0x2b8e80
    //     0x42b7a8: bl           0x2b8e80
    // 0x42b7ac: d0 = pp[0xb90]
    //     0x42b7ac: ldr          d0, [PP, #0xb90]
    //     0x42b7b0: stur         r0, [fp, #-0x10]
    // 0x42b7b4: StoreField: r0->field_7 = d0
    //     0x42b7b4: stur         d0, [r0, #7]
    // 0x42b7b8: StoreField: r0->field_f = d0
    //     0x42b7b8: stur         d0, [r0, #0xf]
    //     0x42b7bc: ldur         d1, [fp, #-0x60]
    // 0x42b7c0: ArrayStore: r0[0] = d1  ; List_8
    //     0x42b7c0: stur         d1, [r0, #0x17]
    // 0x42b7c4: StoreField: r0->field_1f = d1
    //     0x42b7c4: stur         d1, [r0, #0x1f]
    // 0x42b7c8: r0 = call 0x391a04
    //     0x42b7c8: bl           0x391a04
    //     0x42b7cc: stur         r0, [fp, #-0x18]
    //     0x42b7d0: ldur         BARRIER, [fp, #-0x10]
    // 0x42b7d4: lr = pp[0x3ca]
    //     0x42b7d4: add          lr, PP, #0xa, lsl #12
    //     0x42b7d8: ldr          lr, [lr, #0x3c0]
    //     0x42b7dc: stp          lr, BARRIER, [SP]
    // 0x42b7e0: r1 = r0
    //     0x42b7e0: mov          r1, r0
    // 0x42b7e4: r4 = pp[0xca8]
    //     0x42b7e4: add          r4, PP, #0x10, lsl #12
    //     0x42b7e8: ldr          r4, [r4, #0xc98]
    // 0x42b7ec: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x42b7ec: bl           0x391490
    // 0x42b7f0: r0 = call 0x3a1d94
    //     0x42b7f0: bl           0x3a1d94
    //     0x42b7f4: stur         r0, [fp, #-0x10]
    // 0x42b7f8: BARRIER = pp[0x327]
    //     0x42b7f8: add          BARRIER, PP, #0xf, lsl #12
    //     0x42b7fc: ldr          BARRIER, [BARRIER, #0x318]
    //     0x42b800: ldur         lr, [fp, #-0x18]
    //     0x42b804: stp          lr, BARRIER, [SP]
    // 0x42b808: r1 = r0
    //     0x42b808: mov          r1, r0
    // 0x42b80c: r4 = pp[0x214]
    //     0x42b80c: add          r4, PP, #0xc, lsl #12
    //     0x42b810: ldr          r4, [r4, #0x208]
    // 0x42b814: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x42b814: bl           0x3a18c4
    // 0x42b818: r0 = call 0x2b8e80
    //     0x42b818: bl           0x2b8e80
    // 0x42b81c: d0 = pp[0xb90]
    //     0x42b81c: ldr          d0, [PP, #0xb90]
    //     0x42b820: stur         r0, [fp, #-0x18]
    // 0x42b824: StoreField: r0->field_7 = d0
    //     0x42b824: stur         d0, [r0, #7]
    // 0x42b828: StoreField: r0->field_f = d0
    //     0x42b828: stur         d0, [r0, #0xf]
    // 0x42b82c: d1 = pp[0x6688]
    //     0x42b82c: ldr          d1, [PP, #0x6688]
    // 0x42b830: ArrayStore: r0[0] = d1  ; List_8
    //     0x42b830: stur         d1, [r0, #0x17]
    // 0x42b834: StoreField: r0->field_1f = d1
    //     0x42b834: stur         d1, [r0, #0x1f]
    // 0x42b838: r0 = soul_flutter_international$res$colors_SOColors::get_color_fff59c()
    //     0x42b838: bl           0x42c0a0
    //     0x42b83c: stur         r0, [fp, #-0x20]
    // 0x42b840: r0 = soul_flutter_international$res$colors_SOColors::get_color_ff6b17()
    //     0x42b840: bl           0x42c05c
    // 0x42b844: r1 = NULL
    //     0x42b844: mov          r1, NULL
    //     0x42b848: mov          r2, #4
    //     0x42b84c: stur         r0, [fp, #-0x28]
    // 0x42b850: r0 = call 0x61f920
    //     0x42b850: bl           0x61f920
    // 0x42b854: r2 = r0
    //     0x42b854: mov          r2, r0
    //     0x42b858: ldur         r0, [fp, #-0x20]
    //     0x42b85c: stur         r2, [fp, #-0x30]
    // 0x42b860: StoreField: r2->field_f = r0
    //     0x42b860: stur         r0, [r2, #0xf]
    //     0x42b864: ldur         r0, [fp, #-0x28]
    // 0x42b868: StoreField: r2->field_13 = r0
    //     0x42b868: stur         r0, [r2, #0x13]
    // 0x42b86c: r1 = pp[0xc68]
    //     0x42b86c: add          r1, PP, #0x10, lsl #12
    //     0x42b870: ldr          r1, [r1, #0xc58]
    // 0x42b874: r0 = call 0x61e854
    //     0x42b874: bl           0x61e854
    // 0x42b878: r1 = r0
    //     0x42b878: mov          r1, r0
    //     0x42b87c: ldur         r0, [fp, #-0x30]
    //     0x42b880: stur         r1, [fp, #-0x20]
    // 0x42b884: StoreField: r1->field_f = r0
    //     0x42b884: stur         r0, [r1, #0xf]
    //     0x42b888: mov          r2, #4
    // 0x42b88c: StoreField: r1->field_b = r2
    //     0x42b88c: stur         r2, [r1, #0xb]
    // 0x42b890: r0 = call 0x3a108c
    //     0x42b890: bl           0x3a108c
    // 0x42b894: r1 = r0
    //     0x42b894: mov          r1, r0
    // 0x42b898: r0 = pp[0xc78]
    //     0x42b898: add          r0, PP, #0x10, lsl #12
    //     0x42b89c: ldr          r0, [r0, #0xc68]
    //     0x42b8a0: stur         r1, [fp, #-0x28]
    // 0x42b8a4: StoreField: r1->field_13 = r0
    //     0x42b8a4: stur         r0, [r1, #0x13]
    // 0x42b8a8: r2 = pp[0xc80]
    //     0x42b8a8: add          r2, PP, #0x10, lsl #12
    //     0x42b8ac: ldr          r2, [r2, #0xc70]
    // 0x42b8b0: ArrayStore: r1[0] = r2  ; List_8
    //     0x42b8b0: stur         r2, [r1, #0x17]
    // 0x42b8b4: r3 = pp[0xc88]
    //     0x42b8b4: add          r3, PP, #0x10, lsl #12
    //     0x42b8b8: ldr          r3, [r3, #0xc78]
    // 0x42b8bc: StoreField: r1->field_1b = r3
    //     0x42b8bc: stur         r3, [r1, #0x1b]
    //     0x42b8c0: ldur         r4, [fp, #-0x20]
    // 0x42b8c4: StoreField: r1->field_7 = r4
    //     0x42b8c4: stur         r4, [r1, #7]
    // 0x42b8c8: r0 = call 0x352b04
    //     0x42b8c8: bl           0x352b04
    // 0x42b8cc: d0 = pp[0xcb4]
    //     0x42b8cc: add          r17, PP, #0x14, lsl #12
    //     0x42b8d0: ldr          d0, [r17, #0xca0]
    //     0x42b8d4: stur         r0, [fp, #-0x20]
    // 0x42b8d8: StoreField: r0->field_7 = d0
    //     0x42b8d8: stur         d0, [r0, #7]
    // 0x42b8dc: StoreField: r0->field_f = d0
    //     0x42b8dc: stur         d0, [r0, #0xf]
    // 0x42b8e0: r0 = call 0x352b04
    //     0x42b8e0: bl           0x352b04
    // 0x42b8e4: d0 = pp[0xcb4]
    //     0x42b8e4: add          r17, PP, #0x14, lsl #12
    //     0x42b8e8: ldr          d0, [r17, #0xca0]
    //     0x42b8ec: stur         r0, [fp, #-0x30]
    // 0x42b8f0: StoreField: r0->field_7 = d0
    //     0x42b8f0: stur         d0, [r0, #7]
    // 0x42b8f4: StoreField: r0->field_f = d0
    //     0x42b8f4: stur         d0, [r0, #0xf]
    // 0x42b8f8: r0 = call 0x392f28
    //     0x42b8f8: bl           0x392f28
    // 0x42b8fc: r1 = r0
    //     0x42b8fc: mov          r1, r0
    //     0x42b900: ldur         r0, [fp, #-0x20]
    //     0x42b904: stur         r1, [fp, #-0x38]
    // 0x42b908: StoreField: r1->field_7 = r0
    //     0x42b908: stur         r0, [r1, #7]
    //     0x42b90c: ldur         r0, [fp, #-0x30]
    // 0x42b910: StoreField: r1->field_b = r0
    //     0x42b910: stur         r0, [r1, #0xb]
    // 0x42b914: r0 = pp[0x51a]
    //     0x42b914: add          r0, PP, #0xa, lsl #12
    //     0x42b918: ldr          r0, [r0, #0x510]
    // 0x42b91c: StoreField: r1->field_f = r0
    //     0x42b91c: stur         r0, [r1, #0xf]
    // 0x42b920: StoreField: r1->field_13 = r0
    //     0x42b920: stur         r0, [r1, #0x13]
    // 0x42b924: r0 = call 0x391dd8
    //     0x42b924: bl           0x391dd8
    // 0x42b928: r1 = r0
    //     0x42b928: mov          r1, r0
    //     0x42b92c: ldur         r0, [fp, #-0x38]
    //     0x42b930: stur         r1, [fp, #-0x20]
    // 0x42b934: StoreField: r1->field_13 = r0
    //     0x42b934: stur         r0, [r1, #0x13]
    //     0x42b938: ldur         r0, [fp, #-0x28]
    // 0x42b93c: StoreField: r1->field_1b = r0
    //     0x42b93c: stur         r0, [r1, #0x1b]
    // 0x42b940: r0 = pp[0xb86]
    //     0x42b940: add          r0, PP, #0xe, lsl #12
    //     0x42b944: ldr          r0, [r0, #0xb78]
    // 0x42b948: StoreField: r1->field_23 = r0
    //     0x42b948: stur         r0, [r1, #0x23]
    //     0x42b94c: mov          BARRIER, #0x88
    //     0x42b950: stp          BARRIER, NULL, [SP]
    // 0x42b954: r0 = dart_typed_data_ByteData::factory_ctor()
    //     0x42b954: bl           0x297550
    //     0x42b958: stur         r0, [fp, #-0x28]
    // 0x42b95c: r0 = call 0x2eeee8
    //     0x42b95c: bl           0x2eeee8
    // 0x42b960: r1 = r0
    //     0x42b960: mov          r1, r0
    //     0x42b964: ldur         r0, [fp, #-0x28]
    //     0x42b968: stur         r1, [fp, #-0x30]
    // 0x42b96c: StoreField: r1->field_7 = r0
    //     0x42b96c: stur         r0, [r1, #7]
    // 0x42b970: r0 = call 0x31d844
    //     0x42b970: bl           0x31d844
    // 0x42b974: r1 = r0
    //     0x42b974: mov          r1, r0
    // 0x42b978: r0 = pp[0x6310]
    //     0x42b978: ldr          r0, [PP, #0x6310]
    //     0x42b97c: stur         r1, [fp, #-0x28]
    // 0x42b980: StoreField: r1->field_27 = r0
    //     0x42b980: stur         r0, [r1, #0x27]
    //     0x42b984: fmov         d0, #1.00000000
    // 0x42b988: StoreField: r1->field_7 = d0
    //     0x42b988: stur         d0, [r1, #7]
    // 0x42b98c: StoreField: r1->field_f = d0
    //     0x42b98c: stur         d0, [r1, #0xf]
    // 0x42b990: d1 = pp[0xd6f]
    //     0x42b990: add          r17, PP, #0xf, lsl #12
    //     0x42b994: ldr          d1, [r17, #0xd60]
    // 0x42b998: ArrayStore: r1[0] = d1  ; List_8
    //     0x42b998: stur         d1, [r1, #0x17]
    // 0x42b99c: d1 = pp[0xae0]
    //     0x42b99c: add          r17, PP, #0x10, lsl #12
    //     0x42b9a0: ldr          d1, [r17, #0xad0]
    // 0x42b9a4: StoreField: r1->field_1f = d1
    //     0x42b9a4: stur         d1, [r1, #0x1f]
    // 0x42b9a8: r0 = call 0x31d844
    //     0x42b9a8: bl           0x31d844
    // 0x42b9ac: r3 = r0
    //     0x42b9ac: mov          r3, r0
    // 0x42b9b0: r0 = pp[0x6310]
    //     0x42b9b0: ldr          r0, [PP, #0x6310]
    //     0x42b9b4: stur         r3, [fp, #-0x38]
    // 0x42b9b8: StoreField: r3->field_27 = r0
    //     0x42b9b8: stur         r0, [r3, #0x27]
    // 0x42b9bc: d0 = pp[0x7060]
    //     0x42b9bc: ldr          d0, [PP, #0x7060]
    // 0x42b9c0: StoreField: r3->field_7 = d0
    //     0x42b9c0: stur         d0, [r3, #7]
    //     0x42b9c4: fmov         d0, #1.00000000
    // 0x42b9c8: StoreField: r3->field_f = d0
    //     0x42b9c8: stur         d0, [r3, #0xf]
    // 0x42b9cc: d1 = pp[0xcbc]
    //     0x42b9cc: add          r17, PP, #0x14, lsl #12
    //     0x42b9d0: ldr          d1, [r17, #0xca8]
    // 0x42b9d4: ArrayStore: r3[0] = d1  ; List_8
    //     0x42b9d4: stur         d1, [r3, #0x17]
    // 0x42b9d8: StoreField: r3->field_1f = xzr
    //     0x42b9d8: stur         xzr, [r3, #0x1f]
    // 0x42b9dc: r1 = NULL
    //     0x42b9dc: mov          r1, NULL
    //     0x42b9e0: mov          r2, #4
    // 0x42b9e4: r0 = call 0x61f920
    //     0x42b9e4: bl           0x61f920
    // 0x42b9e8: r2 = r0
    //     0x42b9e8: mov          r2, r0
    //     0x42b9ec: ldur         r0, [fp, #-0x28]
    //     0x42b9f0: stur         r2, [fp, #-0x40]
    // 0x42b9f4: StoreField: r2->field_f = r0
    //     0x42b9f4: stur         r0, [r2, #0xf]
    //     0x42b9f8: ldur         r0, [fp, #-0x38]
    // 0x42b9fc: StoreField: r2->field_13 = r0
    //     0x42b9fc: stur         r0, [r2, #0x13]
    // 0x42ba00: r1 = pp[0xc68]
    //     0x42ba00: add          r1, PP, #0x10, lsl #12
    //     0x42ba04: ldr          r1, [r1, #0xc58]
    // 0x42ba08: r0 = call 0x61e854
    //     0x42ba08: bl           0x61e854
    // 0x42ba0c: r1 = r0
    //     0x42ba0c: mov          r1, r0
    //     0x42ba10: ldur         r0, [fp, #-0x40]
    //     0x42ba14: stur         r1, [fp, #-0x28]
    // 0x42ba18: StoreField: r1->field_f = r0
    //     0x42ba18: stur         r0, [r1, #0xf]
    //     0x42ba1c: mov          r2, #4
    // 0x42ba20: StoreField: r1->field_b = r2
    //     0x42ba20: stur         r2, [r1, #0xb]
    // 0x42ba24: r0 = call 0x3a108c
    //     0x42ba24: bl           0x3a108c
    // 0x42ba28: r1 = r0
    //     0x42ba28: mov          r1, r0
    // 0x42ba2c: r0 = pp[0xc78]
    //     0x42ba2c: add          r0, PP, #0x10, lsl #12
    //     0x42ba30: ldr          r0, [r0, #0xc68]
    //     0x42ba34: stur         r1, [fp, #-0x38]
    // 0x42ba38: StoreField: r1->field_13 = r0
    //     0x42ba38: stur         r0, [r1, #0x13]
    // 0x42ba3c: r2 = pp[0xc80]
    //     0x42ba3c: add          r2, PP, #0x10, lsl #12
    //     0x42ba40: ldr          r2, [r2, #0xc70]
    // 0x42ba44: ArrayStore: r1[0] = r2  ; List_8
    //     0x42ba44: stur         r2, [r1, #0x17]
    // 0x42ba48: r3 = pp[0xc88]
    //     0x42ba48: add          r3, PP, #0x10, lsl #12
    //     0x42ba4c: ldr          r3, [r3, #0xc78]
    // 0x42ba50: StoreField: r1->field_1b = r3
    //     0x42ba50: stur         r3, [r1, #0x1b]
    //     0x42ba54: ldur         r4, [fp, #-0x28]
    // 0x42ba58: StoreField: r1->field_7 = r4
    //     0x42ba58: stur         r4, [r1, #7]
    //     0x42ba5c: ldur         d0, [fp, #-0x58]
    //     0x42ba60: eor          v1.16b, v1.16b, v1.16b
    //     0x42ba64: fadd         d2, d0, d1
    //     0x42ba68: ldur         d0, [fp, #-0x68]
    //     0x42ba6c: stur         d2, [fp, #-0x60]
    //     0x42ba70: fadd         d3, d0, d1
    //     0x42ba74: stur         d3, [fp, #-0x58]
    // 0x42ba78: r0 = call 0x2984c0
    //     0x42ba78: bl           0x2984c0
    // 0x42ba7c: StoreField: r0->field_7 = xzr
    //     0x42ba7c: stur         xzr, [r0, #7]
    // 0x42ba80: StoreField: r0->field_f = xzr
    //     0x42ba80: stur         xzr, [r0, #0xf]
    //     0x42ba84: ldur         d0, [fp, #-0x60]
    // 0x42ba88: ArrayStore: r0[0] = d0  ; List_8
    //     0x42ba88: stur         d0, [r0, #0x17]
    //     0x42ba8c: ldur         d0, [fp, #-0x58]
    // 0x42ba90: StoreField: r0->field_1f = d0
    //     0x42ba90: stur         d0, [r0, #0x1f]
    //     0x42ba94: ldur         r1, [fp, #-0x38]
    // 0x42ba98: r2 = r0
    //     0x42ba98: mov          r2, r0
    // 0x42ba9c: r4 = pp[0x278]
    //     0x42ba9c: ldr          r4, [PP, #0x278]
    // 0x42baa0: r0 = flutter$src$painting$gradient_LinearGradient::createShader()
    //     0x42baa0: bl           0x3b4f80
    //     0x42baa4: ldur         r1, [fp, #-0x30]
    //     0x42baa8: stur         r0, [fp, #-0x28]
    // 0x42baac: r0 = dart_ui_Paint::_ensureObjectsInitialized()
    //     0x42baac: bl           0x35f1e8
    // 0x42bab0: r1 = LoadClassIdInstr(r0)
    //     0x42bab0: ldur         r1, [r0, #-1]
    //     0x42bab4: ubfx         r1, r1, #0xc, #0x14
    //     0x42bab8: stp          xzr, r0, [SP, #8]
    //     0x42babc: ldur         BARRIER, [fp, #-0x28]
    //     0x42bac0: str          BARRIER, [SP]
    // 0x42bac4: r0 = r1
    //     0x42bac4: mov          r0, r1
    //     0x42bac8: sub          lr, r0, #0xfa2
    //     0x42bacc: ldr          lr, [r21, lr, lsl #3]
    // 0x42bad0: r0 = [R]()
    //     0x42bad0: blr          lr
    // 0x42bad4: r0 = call 0x31abec
    //     0x42bad4: bl           0x31abec
    // 0x42bad8: r1 = r0
    //     0x42bad8: mov          r1, r0
    //     0x42badc: add          r0, NULL, #0x20
    //     0x42bae0: stur         r1, [fp, #-0x28]
    // 0x42bae4: StoreField: r1->field_7 = r0
    //     0x42bae4: stur         r0, [r1, #7]
    // 0x42bae8: r2 = pp[0x4ea]
    //     0x42bae8: add          r2, PP, #0xa, lsl #12
    //     0x42baec: ldr          r2, [r2, #0x4e0]
    // 0x42baf0: StoreField: r1->field_1f = r2
    //     0x42baf0: stur         r2, [r1, #0x1f]
    // 0x42baf4: r2 = pp[0x958]
    //     0x42baf4: add          r2, PP, #0x10, lsl #12
    //     0x42baf8: ldr          r2, [r2, #0x948]
    // 0x42bafc: StoreField: r1->field_23 = r2
    //     0x42bafc: stur         r2, [r1, #0x23]
    // 0x42bb00: r2 = pp[0x21a]
    //     0x42bb00: add          r2, PP, #0x12, lsl #12
    //     0x42bb04: ldr          r2, [r2, #0x208]
    // 0x42bb08: StoreField: r1->field_27 = r2
    //     0x42bb08: stur         r2, [r1, #0x27]
    //     0x42bb0c: ldur         r2, [fp, #-0x30]
    // 0x42bb10: StoreField: r1->field_43 = r2
    //     0x42bb10: stur         r2, [r1, #0x43]
    // 0x42bb14: r0 = call 0x42c050
    //     0x42bb14: bl           0x42c050
    // 0x42bb18: r1 = r0
    //     0x42bb18: mov          r1, r0
    // 0x42bb1c: r0 = pp[0xcc4]
    //     0x42bb1c: add          r0, PP, #0x14, lsl #12
    //     0x42bb20: ldr          r0, [r0, #0xcb0]
    //     0x42bb24: stur         r1, [fp, #-0x30]
    // 0x42bb28: StoreField: r1->field_f = r0
    //     0x42bb28: stur         r0, [r1, #0xf]
    //     0x42bb2c: ldur         r0, [fp, #-0x28]
    // 0x42bb30: ArrayStore: r1[0] = r0  ; List_8
    //     0x42bb30: stur         r0, [r1, #0x17]
    //     0x42bb34: fmov         d0, #12.00000000
    // 0x42bb38: StoreField: r1->field_1f = d0
    //     0x42bb38: stur         d0, [r1, #0x1f]
    // 0x42bb3c: d1 = pp[0xb90]
    //     0x42bb3c: ldr          d1, [PP, #0xb90]
    // 0x42bb40: StoreField: r1->field_27 = d1
    //     0x42bb40: stur         d1, [r1, #0x27]
    //     0x42bb44: fmov         d2, #1.00000000
    // 0x42bb48: StoreField: r1->field_2f = d2
    //     0x42bb48: stur         d2, [r1, #0x2f]
    //     0x42bb4c: add          r0, NULL, #0x20
    // 0x42bb50: StoreField: r1->field_4f = r0
    //     0x42bb50: stur         r0, [r1, #0x4f]
    //     0x42bb54: mov          r0, #1
    // 0x42bb58: StoreField: r1->field_5f = r0
    //     0x42bb58: stur         r0, [r1, #0x5f]
    // 0x42bb5c: r0 = call 0x391a04
    //     0x42bb5c: bl           0x391a04
    //     0x42bb60: stur         r0, [fp, #-0x28]
    //     0x42bb64: ldur         BARRIER, [fp, #-0x18]
    // 0x42bb68: lr = pp[0xc78]
    //     0x42bb68: add          lr, PP, #0x10, lsl #12
    //     0x42bb6c: ldr          lr, [lr, #0xc68]
    //     0x42bb70: stp          lr, BARRIER, [SP, #0x18]
    // 0x42bb74: BARRIER = pp[0xccc]
    //     0x42bb74: add          BARRIER, PP, #0x14, lsl #12
    //     0x42bb78: ldr          BARRIER, [BARRIER, #0xcb8]
    //     0x42bb7c: ldur         lr, [fp, #-0x20]
    //     0x42bb80: stp          lr, BARRIER, [SP, #8]
    //     0x42bb84: ldur         BARRIER, [fp, #-0x30]
    //     0x42bb88: str          BARRIER, [SP]
    // 0x42bb8c: r1 = r0
    //     0x42bb8c: mov          r1, r0
    // 0x42bb90: r4 = pp[0xcd4]
    //     0x42bb90: add          r4, PP, #0x14, lsl #12
    //     0x42bb94: ldr          r4, [r4, #0xcc0]
    // 0x42bb98: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x42bb98: bl           0x391490
    // 0x42bb9c: r0 = call 0x2b8e80
    //     0x42bb9c: bl           0x2b8e80
    // 0x42bba0: d0 = pp[0xb90]
    //     0x42bba0: ldr          d0, [PP, #0xb90]
    //     0x42bba4: stur         r0, [fp, #-0x18]
    // 0x42bba8: StoreField: r0->field_7 = d0
    //     0x42bba8: stur         d0, [r0, #7]
    // 0x42bbac: StoreField: r0->field_f = d0
    //     0x42bbac: stur         d0, [r0, #0xf]
    // 0x42bbb0: ArrayStore: r0[0] = d0  ; List_8
    //     0x42bbb0: stur         d0, [r0, #0x17]
    // 0x42bbb4: StoreField: r0->field_1f = d0
    //     0x42bbb4: stur         d0, [r0, #0x1f]
    // 0x42bbb8: r0 = call 0x42c044
    //     0x42bbb8: bl           0x42c044
    // 0x42bbbc: r1 = pp[0xff1]
    //     0x42bbbc: add          r1, PP, #0x11, lsl #12
    //     0x42bbc0: ldr          r1, [r1, #0xfe0]
    //     0x42bbc4: stur         r0, [fp, #-0x20]
    // 0x42bbc8: r0 = call 0x39e828
    //     0x42bbc8: bl           0x39e828
    // 0x42bbcc: r1 = r0
    //     0x42bbcc: mov          r1, r0
    //     0x42bbd0: ldur         r0, [fp, #-0x20]
    //     0x42bbd4: stur         r1, [fp, #-0x30]
    // 0x42bbd8: StoreField: r1->field_f = r0
    //     0x42bbd8: stur         r0, [r1, #0xf]
    // 0x42bbdc: r0 = call 0x2b8e80
    //     0x42bbdc: bl           0x2b8e80
    // 0x42bbe0: d0 = pp[0xb90]
    //     0x42bbe0: ldr          d0, [PP, #0xb90]
    //     0x42bbe4: stur         r0, [fp, #-0x20]
    // 0x42bbe8: StoreField: r0->field_7 = d0
    //     0x42bbe8: stur         d0, [r0, #7]
    // 0x42bbec: StoreField: r0->field_f = d0
    //     0x42bbec: stur         d0, [r0, #0xf]
    // 0x42bbf0: ArrayStore: r0[0] = d0  ; List_8
    //     0x42bbf0: stur         d0, [r0, #0x17]
    // 0x42bbf4: StoreField: r0->field_1f = d0
    //     0x42bbf4: stur         d0, [r0, #0x1f]
    // 0x42bbf8: r0 = call 0x31d844
    //     0x42bbf8: bl           0x31d844
    // 0x42bbfc: r1 = r0
    //     0x42bbfc: mov          r1, r0
    // 0x42bc00: r0 = pp[0x6310]
    //     0x42bc00: ldr          r0, [PP, #0x6310]
    //     0x42bc04: stur         r1, [fp, #-0x38]
    // 0x42bc08: StoreField: r1->field_27 = r0
    //     0x42bc08: stur         r0, [r1, #0x27]
    //     0x42bc0c: fmov         d0, #1.00000000
    // 0x42bc10: StoreField: r1->field_7 = d0
    //     0x42bc10: stur         d0, [r1, #7]
    // 0x42bc14: StoreField: r1->field_f = d0
    //     0x42bc14: stur         d0, [r1, #0xf]
    // 0x42bc18: d1 = pp[0xb59]
    //     0x42bc18: add          r17, PP, #0x11, lsl #12
    //     0x42bc1c: ldr          d1, [r17, #0xb48]
    // 0x42bc20: ArrayStore: r1[0] = d1  ; List_8
    //     0x42bc20: stur         d1, [r1, #0x17]
    // 0x42bc24: d1 = pp[0xb41]
    //     0x42bc24: add          r17, PP, #0x11, lsl #12
    //     0x42bc28: ldr          d1, [r17, #0xb30]
    // 0x42bc2c: StoreField: r1->field_1f = d1
    //     0x42bc2c: stur         d1, [r1, #0x1f]
    // 0x42bc30: r0 = call 0x31d844
    //     0x42bc30: bl           0x31d844
    // 0x42bc34: r3 = r0
    //     0x42bc34: mov          r3, r0
    // 0x42bc38: r0 = pp[0x6310]
    //     0x42bc38: ldr          r0, [PP, #0x6310]
    //     0x42bc3c: stur         r3, [fp, #-0x40]
    // 0x42bc40: StoreField: r3->field_27 = r0
    //     0x42bc40: stur         r0, [r3, #0x27]
    //     0x42bc44: fmov         d0, #1.00000000
    // 0x42bc48: StoreField: r3->field_7 = d0
    //     0x42bc48: stur         d0, [r3, #7]
    // 0x42bc4c: StoreField: r3->field_f = d0
    //     0x42bc4c: stur         d0, [r3, #0xf]
    // 0x42bc50: d0 = pp[0xcdc]
    //     0x42bc50: add          r17, PP, #0x14, lsl #12
    //     0x42bc54: ldr          d0, [r17, #0xcc8]
    // 0x42bc58: ArrayStore: r3[0] = d0  ; List_8
    //     0x42bc58: stur         d0, [r3, #0x17]
    // 0x42bc5c: d0 = pp[0xce4]
    //     0x42bc5c: add          r17, PP, #0x14, lsl #12
    //     0x42bc60: ldr          d0, [r17, #0xcd0]
    // 0x42bc64: StoreField: r3->field_1f = d0
    //     0x42bc64: stur         d0, [r3, #0x1f]
    // 0x42bc68: r1 = NULL
    //     0x42bc68: mov          r1, NULL
    //     0x42bc6c: mov          r2, #4
    // 0x42bc70: r0 = call 0x61f920
    //     0x42bc70: bl           0x61f920
    // 0x42bc74: r2 = r0
    //     0x42bc74: mov          r2, r0
    //     0x42bc78: ldur         r0, [fp, #-0x38]
    //     0x42bc7c: stur         r2, [fp, #-0x48]
    // 0x42bc80: StoreField: r2->field_f = r0
    //     0x42bc80: stur         r0, [r2, #0xf]
    //     0x42bc84: ldur         r0, [fp, #-0x40]
    // 0x42bc88: StoreField: r2->field_13 = r0
    //     0x42bc88: stur         r0, [r2, #0x13]
    // 0x42bc8c: r1 = pp[0xc68]
    //     0x42bc8c: add          r1, PP, #0x10, lsl #12
    //     0x42bc90: ldr          r1, [r1, #0xc58]
    // 0x42bc94: r0 = call 0x61e854
    //     0x42bc94: bl           0x61e854
    // 0x42bc98: r1 = r0
    //     0x42bc98: mov          r1, r0
    //     0x42bc9c: ldur         r0, [fp, #-0x48]
    //     0x42bca0: stur         r1, [fp, #-0x38]
    // 0x42bca4: StoreField: r1->field_f = r0
    //     0x42bca4: stur         r0, [r1, #0xf]
    //     0x42bca8: mov          r2, #4
    // 0x42bcac: StoreField: r1->field_b = r2
    //     0x42bcac: stur         r2, [r1, #0xb]
    // 0x42bcb0: r0 = call 0x3a108c
    //     0x42bcb0: bl           0x3a108c
    // 0x42bcb4: r1 = r0
    //     0x42bcb4: mov          r1, r0
    // 0x42bcb8: r0 = pp[0xc78]
    //     0x42bcb8: add          r0, PP, #0x10, lsl #12
    //     0x42bcbc: ldr          r0, [r0, #0xc68]
    //     0x42bcc0: stur         r1, [fp, #-0x40]
    // 0x42bcc4: StoreField: r1->field_13 = r0
    //     0x42bcc4: stur         r0, [r1, #0x13]
    // 0x42bcc8: r0 = pp[0xc80]
    //     0x42bcc8: add          r0, PP, #0x10, lsl #12
    //     0x42bccc: ldr          r0, [r0, #0xc70]
    // 0x42bcd0: ArrayStore: r1[0] = r0  ; List_8
    //     0x42bcd0: stur         r0, [r1, #0x17]
    // 0x42bcd4: r0 = pp[0xc88]
    //     0x42bcd4: add          r0, PP, #0x10, lsl #12
    //     0x42bcd8: ldr          r0, [r0, #0xc78]
    // 0x42bcdc: StoreField: r1->field_1b = r0
    //     0x42bcdc: stur         r0, [r1, #0x1b]
    //     0x42bce0: ldur         r0, [fp, #-0x38]
    // 0x42bce4: StoreField: r1->field_7 = r0
    //     0x42bce4: stur         r0, [r1, #7]
    // 0x42bce8: r0 = call 0x352b04
    //     0x42bce8: bl           0x352b04
    //     0x42bcec: fmov         d0, #12.00000000
    //     0x42bcf0: stur         r0, [fp, #-0x38]
    // 0x42bcf4: StoreField: r0->field_7 = d0
    //     0x42bcf4: stur         d0, [r0, #7]
    // 0x42bcf8: StoreField: r0->field_f = d0
    //     0x42bcf8: stur         d0, [r0, #0xf]
    // 0x42bcfc: r0 = call 0x352b04
    //     0x42bcfc: bl           0x352b04
    //     0x42bd00: fmov         d0, #12.00000000
    //     0x42bd04: stur         r0, [fp, #-0x48]
    // 0x42bd08: StoreField: r0->field_7 = d0
    //     0x42bd08: stur         d0, [r0, #7]
    // 0x42bd0c: StoreField: r0->field_f = d0
    //     0x42bd0c: stur         d0, [r0, #0xf]
    // 0x42bd10: r0 = call 0x392f28
    //     0x42bd10: bl           0x392f28
    // 0x42bd14: r1 = r0
    //     0x42bd14: mov          r1, r0
    //     0x42bd18: ldur         r0, [fp, #-0x38]
    //     0x42bd1c: stur         r1, [fp, #-0x50]
    // 0x42bd20: StoreField: r1->field_7 = r0
    //     0x42bd20: stur         r0, [r1, #7]
    //     0x42bd24: ldur         r0, [fp, #-0x48]
    // 0x42bd28: StoreField: r1->field_b = r0
    //     0x42bd28: stur         r0, [r1, #0xb]
    // 0x42bd2c: r0 = pp[0x51a]
    //     0x42bd2c: add          r0, PP, #0xa, lsl #12
    //     0x42bd30: ldr          r0, [r0, #0x510]
    // 0x42bd34: StoreField: r1->field_f = r0
    //     0x42bd34: stur         r0, [r1, #0xf]
    // 0x42bd38: StoreField: r1->field_13 = r0
    //     0x42bd38: stur         r0, [r1, #0x13]
    // 0x42bd3c: r0 = call 0x391dd8
    //     0x42bd3c: bl           0x391dd8
    // 0x42bd40: r1 = r0
    //     0x42bd40: mov          r1, r0
    //     0x42bd44: ldur         r0, [fp, #-0x50]
    //     0x42bd48: stur         r1, [fp, #-0x38]
    // 0x42bd4c: StoreField: r1->field_13 = r0
    //     0x42bd4c: stur         r0, [r1, #0x13]
    //     0x42bd50: ldur         r0, [fp, #-0x40]
    // 0x42bd54: StoreField: r1->field_1b = r0
    //     0x42bd54: stur         r0, [r1, #0x1b]
    // 0x42bd58: r0 = pp[0xb86]
    //     0x42bd58: add          r0, PP, #0xe, lsl #12
    //     0x42bd5c: ldr          r0, [r0, #0xb78]
    // 0x42bd60: StoreField: r1->field_23 = r0
    //     0x42bd60: stur         r0, [r1, #0x23]
    // 0x42bd64: r0 = call 0x3a142c
    //     0x42bd64: bl           0x3a142c
    // 0x42bd68: r1 = r0
    //     0x42bd68: mov          r1, r0
    // 0x42bd6c: r0 = pp[0xcec]
    //     0x42bd6c: add          r0, PP, #0x14, lsl #12
    //     0x42bd70: ldr          r0, [r0, #0xcd8]
    //     0x42bd74: stur         r1, [fp, #-0x40]
    // 0x42bd78: StoreField: r1->field_b = r0
    //     0x42bd78: stur         r0, [r1, #0xb]
    // 0x42bd7c: r0 = pp[0x17f]
    //     0x42bd7c: add          r0, PP, #0xf, lsl #12
    //     0x42bd80: ldr          r0, [r0, #0x170]
    // 0x42bd84: StoreField: r1->field_f = r0
    //     0x42bd84: stur         r0, [r1, #0xf]
    // 0x42bd88: r0 = pp[0x5458]
    //     0x42bd88: ldr          r0, [PP, #0x5458]
    // 0x42bd8c: ArrayStore: r1[0] = r0  ; List_8
    //     0x42bd8c: stur         r0, [r1, #0x17]
    // 0x42bd90: r2 = pp[0x187]
    //     0x42bd90: add          r2, PP, #0xf, lsl #12
    //     0x42bd94: ldr          r2, [r2, #0x178]
    // 0x42bd98: StoreField: r1->field_1b = r2
    //     0x42bd98: stur         r2, [r1, #0x1b]
    // 0x42bd9c: r0 = call 0x391a04
    //     0x42bd9c: bl           0x391a04
    //     0x42bda0: stur         r0, [fp, #-0x48]
    //     0x42bda4: ldur         BARRIER, [fp, #-0x20]
    // 0x42bda8: lr = pp[0xb29]
    //     0x42bda8: add          lr, PP, #0x11, lsl #12
    //     0x42bdac: ldr          lr, [lr, #0xb18]
    //     0x42bdb0: stp          lr, BARRIER, [SP, #0x10]
    //     0x42bdb4: ldur         BARRIER, [fp, #-0x38]
    //     0x42bdb8: ldur         lr, [fp, #-0x40]
    //     0x42bdbc: stp          lr, BARRIER, [SP]
    // 0x42bdc0: r1 = r0
    //     0x42bdc0: mov          r1, r0
    // 0x42bdc4: r4 = pp[0xcf4]
    //     0x42bdc4: add          r4, PP, #0x14, lsl #12
    //     0x42bdc8: ldr          r4, [r4, #0xce0]
    // 0x42bdcc: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x42bdcc: bl           0x391490
    // 0x42bdd0: r0 = call 0x39a528
    //     0x42bdd0: bl           0x39a528
    // 0x42bdd4: r1 = r0
    //     0x42bdd4: mov          r1, r0
    //     0x42bdd8: ldur         r0, [fp, #-0x30]
    //     0x42bddc: stur         r1, [fp, #-0x20]
    // 0x42bde0: StoreField: r1->field_f = r0
    //     0x42bde0: stur         r0, [r1, #0xf]
    // 0x42bde4: r0 = pp[0xf4e]
    //     0x42bde4: add          r0, PP, #0xe, lsl #12
    //     0x42bde8: ldr          r0, [r0, #0xf40]
    // 0x42bdec: StoreField: r1->field_13 = r0
    //     0x42bdec: stur         r0, [r1, #0x13]
    //     0x42bdf0: ldur         r0, [fp, #-0x48]
    // 0x42bdf4: StoreField: r1->field_b = r0
    //     0x42bdf4: stur         r0, [r1, #0xb]
    //     0x42bdf8: ldur         r0, [fp, #-8]
    // 0x42bdfc: LoadField: r2 = r0->field_b
    //     0x42bdfc: ldur         r2, [r0, #0xb]
    //     0x42be00: add          r2, r2, HEAP, lsl #32
    //     0x42be04: cmp          r2, r22
    // 0x42be08: b.eq 0x42c040
    //     0x42be08: b.eq         0x42c040
    // 0x42be0c: LoadField: r0 = r2->field_b
    //     0x42be0c: ldur         r0, [r2, #0xb]
    //     0x42be10: add          r0, r0, HEAP, lsl #32
    //     0x42be14: stur         r0, [fp, #-8]
    // 0x42be18: r0 = call 0x3949ec
    //     0x42be18: bl           0x3949ec
    // 0x42be1c: r3 = r0
    //     0x42be1c: mov          r3, r0
    // 0x42be20: r0 = pp[0x5458]
    //     0x42be20: ldr          r0, [PP, #0x5458]
    //     0x42be24: stur         r3, [fp, #-0x30]
    // 0x42be28: StoreField: r3->field_f = r0
    //     0x42be28: stur         r0, [r3, #0xf]
    // 0x42be2c: StoreField: r3->field_13 = r0
    //     0x42be2c: stur         r0, [r3, #0x13]
    //     0x42be30: ldur         r0, [fp, #-8]
    // 0x42be34: StoreField: r3->field_b = r0
    //     0x42be34: stur         r0, [r3, #0xb]
    // 0x42be38: r1 = NULL
    //     0x42be38: mov          r1, NULL
    //     0x42be3c: mov          r2, #4
    // 0x42be40: r0 = call 0x61f920
    //     0x42be40: bl           0x61f920
    // 0x42be44: r2 = r0
    //     0x42be44: mov          r2, r0
    //     0x42be48: ldur         r0, [fp, #-0x20]
    //     0x42be4c: stur         r2, [fp, #-8]
    // 0x42be50: StoreField: r2->field_f = r0
    //     0x42be50: stur         r0, [r2, #0xf]
    //     0x42be54: ldur         r0, [fp, #-0x30]
    // 0x42be58: StoreField: r2->field_13 = r0
    //     0x42be58: stur         r0, [r2, #0x13]
    // 0x42be5c: r1 = pp[0x5c58]
    //     0x42be5c: ldr          r1, [PP, #0x5c58]
    // 0x42be60: r0 = call 0x61e854
    //     0x42be60: bl           0x61e854
    // 0x42be64: r1 = r0
    //     0x42be64: mov          r1, r0
    //     0x42be68: ldur         r0, [fp, #-8]
    //     0x42be6c: stur         r1, [fp, #-0x20]
    // 0x42be70: StoreField: r1->field_f = r0
    //     0x42be70: stur         r0, [r1, #0xf]
    //     0x42be74: mov          r2, #4
    // 0x42be78: StoreField: r1->field_b = r2
    //     0x42be78: stur         r2, [r1, #0xb]
    // 0x42be7c: r0 = call 0x39e6f4
    //     0x42be7c: bl           0x39e6f4
    // 0x42be80: r1 = r0
    //     0x42be80: mov          r1, r0
    // 0x42be84: r0 = pp[0xf0e]
    //     0x42be84: add          r0, PP, #0xe, lsl #12
    //     0x42be88: ldr          r0, [r0, #0xf00]
    //     0x42be8c: stur         r1, [fp, #-8]
    // 0x42be90: StoreField: r1->field_f = r0
    //     0x42be90: stur         r0, [r1, #0xf]
    // 0x42be94: r2 = pp[0xf16]
    //     0x42be94: add          r2, PP, #0xe, lsl #12
    //     0x42be98: ldr          r2, [r2, #0xf08]
    // 0x42be9c: ArrayStore: r1[0] = r2  ; List_8
    //     0x42be9c: stur         r2, [r1, #0x17]
    // 0x42bea0: r3 = pp[0xf1e]
    //     0x42bea0: add          r3, PP, #0xe, lsl #12
    //     0x42bea4: ldr          r3, [r3, #0xf10]
    // 0x42bea8: StoreField: r1->field_1b = r3
    //     0x42bea8: stur         r3, [r1, #0x1b]
    //     0x42beac: ldur         r4, [fp, #-0x20]
    // 0x42beb0: StoreField: r1->field_b = r4
    //     0x42beb0: stur         r4, [r1, #0xb]
    // 0x42beb4: r0 = call 0x391a04
    //     0x42beb4: bl           0x391a04
    //     0x42beb8: stur         r0, [fp, #-0x20]
    //     0x42bebc: ldur         BARRIER, [fp, #-0x18]
    // 0x42bec0: lr = pp[0xcfc]
    //     0x42bec0: add          lr, PP, #0x14, lsl #12
    //     0x42bec4: ldr          lr, [lr, #0xce8]
    //     0x42bec8: stp          lr, BARRIER, [SP, #8]
    //     0x42becc: ldur         BARRIER, [fp, #-8]
    //     0x42bed0: str          BARRIER, [SP]
    // 0x42bed4: r1 = r0
    //     0x42bed4: mov          r1, r0
    // 0x42bed8: r4 = pp[0xd04]
    //     0x42bed8: add          r4, PP, #0x14, lsl #12
    //     0x42bedc: ldr          r4, [r4, #0xcf0]
    // 0x42bee0: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x42bee0: bl           0x391490
    // 0x42bee4: r1 = NULL
    //     0x42bee4: mov          r1, NULL
    //     0x42bee8: mov          r2, #4
    // 0x42beec: r0 = call 0x61f920
    //     0x42beec: bl           0x61f920
    // 0x42bef0: r2 = r0
    //     0x42bef0: mov          r2, r0
    //     0x42bef4: ldur         r0, [fp, #-0x28]
    //     0x42bef8: stur         r2, [fp, #-8]
    // 0x42befc: StoreField: r2->field_f = r0
    //     0x42befc: stur         r0, [r2, #0xf]
    //     0x42bf00: ldur         r0, [fp, #-0x20]
    // 0x42bf04: StoreField: r2->field_13 = r0
    //     0x42bf04: stur         r0, [r2, #0x13]
    // 0x42bf08: r1 = pp[0x5c58]
    //     0x42bf08: ldr          r1, [PP, #0x5c58]
    // 0x42bf0c: r0 = call 0x61e854
    //     0x42bf0c: bl           0x61e854
    // 0x42bf10: r1 = r0
    //     0x42bf10: mov          r1, r0
    //     0x42bf14: ldur         r0, [fp, #-8]
    //     0x42bf18: stur         r1, [fp, #-0x18]
    // 0x42bf1c: StoreField: r1->field_f = r0
    //     0x42bf1c: stur         r0, [r1, #0xf]
    //     0x42bf20: mov          r2, #4
    // 0x42bf24: StoreField: r1->field_b = r2
    //     0x42bf24: stur         r2, [r1, #0xb]
    // 0x42bf28: r0 = call 0x39e6f4
    //     0x42bf28: bl           0x39e6f4
    // 0x42bf2c: r2 = r0
    //     0x42bf2c: mov          r2, r0
    // 0x42bf30: r0 = pp[0xf0e]
    //     0x42bf30: add          r0, PP, #0xe, lsl #12
    //     0x42bf34: ldr          r0, [r0, #0xf00]
    //     0x42bf38: stur         r2, [fp, #-8]
    // 0x42bf3c: StoreField: r2->field_f = r0
    //     0x42bf3c: stur         r0, [r2, #0xf]
    // 0x42bf40: r0 = pp[0xf16]
    //     0x42bf40: add          r0, PP, #0xe, lsl #12
    //     0x42bf44: ldr          r0, [r0, #0xf08]
    // 0x42bf48: ArrayStore: r2[0] = r0  ; List_8
    //     0x42bf48: stur         r0, [r2, #0x17]
    // 0x42bf4c: r0 = pp[0xf1e]
    //     0x42bf4c: add          r0, PP, #0xe, lsl #12
    //     0x42bf50: ldr          r0, [r0, #0xf10]
    // 0x42bf54: StoreField: r2->field_1b = r0
    //     0x42bf54: stur         r0, [r2, #0x1b]
    //     0x42bf58: ldur         r0, [fp, #-0x18]
    // 0x42bf5c: StoreField: r2->field_b = r0
    //     0x42bf5c: stur         r0, [r2, #0xb]
    // 0x42bf60: r1 = pp[0xade]
    //     0x42bf60: add          r1, PP, #0xe, lsl #12
    //     0x42bf64: ldr          r1, [r1, #0xad0]
    // 0x42bf68: r0 = call 0x39fb14
    //     0x42bf68: bl           0x39fb14
    // 0x42bf6c: r3 = r0
    //     0x42bf6c: mov          r3, r0
    //     0x42bf70: mov          r0, #1
    //     0x42bf74: stur         r3, [fp, #-0x18]
    // 0x42bf78: StoreField: r3->field_13 = r0
    //     0x42bf78: stur         r0, [r3, #0x13]
    // 0x42bf7c: r0 = pp[0xae6]
    //     0x42bf7c: add          r0, PP, #0xe, lsl #12
    //     0x42bf80: ldr          r0, [r0, #0xad8]
    // 0x42bf84: StoreField: r3->field_1b = r0
    //     0x42bf84: stur         r0, [r3, #0x1b]
    //     0x42bf88: ldur         r0, [fp, #-8]
    // 0x42bf8c: StoreField: r3->field_b = r0
    //     0x42bf8c: stur         r0, [r3, #0xb]
    // 0x42bf90: r1 = NULL
    //     0x42bf90: mov          r1, NULL
    //     0x42bf94: mov          r2, #4
    // 0x42bf98: r0 = call 0x61f920
    //     0x42bf98: bl           0x61f920
    // 0x42bf9c: r2 = r0
    //     0x42bf9c: mov          r2, r0
    //     0x42bfa0: ldur         r0, [fp, #-0x10]
    //     0x42bfa4: stur         r2, [fp, #-8]
    // 0x42bfa8: StoreField: r2->field_f = r0
    //     0x42bfa8: stur         r0, [r2, #0xf]
    //     0x42bfac: ldur         r0, [fp, #-0x18]
    // 0x42bfb0: StoreField: r2->field_13 = r0
    //     0x42bfb0: stur         r0, [r2, #0x13]
    // 0x42bfb4: r1 = pp[0x5c58]
    //     0x42bfb4: ldr          r1, [PP, #0x5c58]
    // 0x42bfb8: r0 = call 0x61e854
    //     0x42bfb8: bl           0x61e854
    // 0x42bfbc: r1 = r0
    //     0x42bfbc: mov          r1, r0
    //     0x42bfc0: ldur         r0, [fp, #-8]
    //     0x42bfc4: stur         r1, [fp, #-0x10]
    // 0x42bfc8: StoreField: r1->field_f = r0
    //     0x42bfc8: stur         r0, [r1, #0xf]
    //     0x42bfcc: mov          r0, #4
    // 0x42bfd0: StoreField: r1->field_b = r0
    //     0x42bfd0: stur         r0, [r1, #0xb]
    // 0x42bfd4: r0 = call 0x39310c
    //     0x42bfd4: bl           0x39310c
    // 0x42bfd8: r1 = pp[0x862]
    //     0x42bfd8: add          r1, PP, #0xa, lsl #12
    //     0x42bfdc: ldr          r1, [r1, #0x858]
    // 0x42bfe0: StoreField: r0->field_f = r1
    //     0x42bfe0: stur         r1, [r0, #0xf]
    // 0x42bfe4: r1 = pp[0xaee]
    //     0x42bfe4: add          r1, PP, #0xe, lsl #12
    //     0x42bfe8: ldr          r1, [r1, #0xae0]
    // 0x42bfec: StoreField: r0->field_13 = r1
    //     0x42bfec: stur         r1, [r0, #0x13]
    // 0x42bff0: r1 = pp[0xaf6]
    //     0x42bff0: add          r1, PP, #0xe, lsl #12
    //     0x42bff4: ldr          r1, [r1, #0xae8]
    // 0x42bff8: ArrayStore: r0[0] = r1  ; List_8
    //     0x42bff8: stur         r1, [r0, #0x17]
    // 0x42bffc: r1 = pp[0xb6e]
    //     0x42bffc: add          r1, PP, #0xe, lsl #12
    //     0x42c000: ldr          r1, [r1, #0xb60]
    // 0x42c004: StoreField: r0->field_1b = r1
    //     0x42c004: stur         r1, [r0, #0x1b]
    // 0x42c008: r1 = pp[0xb06]
    //     0x42c008: add          r1, PP, #0xe, lsl #12
    //     0x42c00c: ldr          r1, [r1, #0xaf8]
    // 0x42c010: StoreField: r0->field_23 = r1
    //     0x42c010: stur         r1, [r0, #0x23]
    // 0x42c014: r1 = pp[0xb2]
    //     0x42c014: add          r1, PP, #0xa, lsl #12
    //     0x42c018: ldr          r1, [r1, #0xa8]
    // 0x42c01c: StoreField: r0->field_2b = r1
    //     0x42c01c: stur         r1, [r0, #0x2b]
    // 0x42c020: StoreField: r0->field_2f = xzr
    //     0x42c020: stur         xzr, [r0, #0x2f]
    //     0x42c024: ldur         r1, [fp, #-0x10]
    // 0x42c028: StoreField: r0->field_b = r1
    //     0x42c028: stur         r1, [r0, #0xb]
    // 0x42c02c: SP = fp
    //     0x42c02c: mov          SP, fp
    // 0x42c030: LeaveFrame
    //     0x42c030: ldp          fp, lr, [SP], #0x10
    // 0x42c034: ret
    //     0x42c034: ret          
    // 0x42c038: r0 = call 0x61fa28
    //     0x42c038: bl           0x61fa28
    // 0x42c03c: b 0x42b780
    //     0x42c03c: b            0x42b780
    // 0x42c040: r0 = call 0x61ffd0
    //     0x42c040: bl           0x61ffd0
  }

  dispose() {
    // ** addr: 0x4514cc, size: 0x58
    // 0x4514cc: EnterFrame
    //     0x4514cc: stp          fp, lr, [SP, #-0x10]!
    //     0x4514d0: mov          fp, SP
    // 0x4514d4: AllocStack(8)
    //     0x4514d4: sub          SP, SP, #8
    // 0x4514d8: r0 = r1
    //     0x4514d8: mov          r0, r1
    //     0x4514dc: stur         r1, [fp, #-8]
    // 0x4514e0: CheckStackOverflow
    //     0x4514e0: ldr          BARRIER, [THR, #0x38]
    //     0x4514e4: cmp          SP, BARRIER
    //     0x4514e8: b.ls         0x45151c
    // 0x4514ec: r1 = r0
    //     0x4514ec: mov          r1, r0
    // 0x4514f0: r0 = soul_flutter_international$common$base$soul_state_SoulState::dispose()
    //     0x4514f0: bl           0x451970
    //     0x4514f4: ldur         r0, [fp, #-8]
    // 0x4514f8: LoadField: r2 = r0->field_13
    //     0x4514f8: ldur         r2, [r0, #0x13]
    //     0x4514fc: add          r2, r2, HEAP, lsl #32
    // 0x451500: r1 = pp[0xd0c]
    //     0x451500: add          r1, PP, #0x14, lsl #12
    //     0x451504: ldr          r1, [r1, #0xcf8]
    // 0x451508: r0 = soul_flutter_international$common$plugins$native_event_SOEventBus::removeEventListener()
    //     0x451508: bl           0x450ab8
    // 0x45150c: r0 = NULL
    //     0x45150c: mov          r0, NULL
    // 0x451510: SP = fp
    //     0x451510: mov          SP, fp
    // 0x451514: LeaveFrame
    //     0x451514: ldp          fp, lr, [SP], #0x10
    // 0x451518: ret
    //     0x451518: ret          
    // 0x45151c: r0 = call 0x61fa28
    //     0x45151c: bl           0x61fa28
    // 0x451520: b 0x4514ec
    //     0x451520: b            0x4514ec
  }

  initState() {
    // ** addr: 0x4d638c, size: 0x78
    // 0x4d638c: EnterFrame
    //     0x4d638c: stp          fp, lr, [SP, #-0x10]!
    //     0x4d6390: mov          fp, SP
    // 0x4d6394: AllocStack(8)
    //     0x4d6394: sub          SP, SP, #8
    // 0x4d6398: r0 = r1
    //     0x4d6398: mov          r0, r1
    //     0x4d639c: stur         r1, [fp, #-8]
    // 0x4d63a0: CheckStackOverflow
    //     0x4d63a0: ldr          BARRIER, [THR, #0x38]
    //     0x4d63a4: cmp          SP, BARRIER
    //     0x4d63a8: b.ls         0x4d63fc
    // 0x4d63ac: r1 = pp[0xd14]
    //     0x4d63ac: add          r1, PP, #0x14, lsl #12
    //     0x4d63b0: ldr          r1, [r1, #0xd00]
    // 0x4d63b4: r2 = NULL
    //     0x4d63b4: mov          r2, NULL
    // 0x4d63b8: r0 = call 0x61ec54
    //     0x4d63b8: bl           0x61ec54
    // 0x4d63bc: r2 = r0
    //     0x4d63bc: mov          r2, r0
    // 0x4d63c0: r1 = pp[0xd0c]
    //     0x4d63c0: add          r1, PP, #0x14, lsl #12
    //     0x4d63c4: ldr          r1, [r1, #0xcf8]
    // 0x4d63c8: r0 = soul_flutter_international$common$plugins$native_event_SOEventBus::addEventListener()
    //     0x4d63c8: bl           0x4d3338
    //     0x4d63cc: ldur         r1, [fp, #-8]
    // 0x4d63d0: StoreField: r1->field_13 = r0
    //     0x4d63d0: stur         r0, [r1, #0x13]
    //     0x4d63d4: ldurb        r16, [r1, #-1]
    //     0x4d63d8: ldurb        r17, [r0, #-1]
    //     0x4d63dc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d63e0: tst          BARRIER, HEAP, lsr #32
    // 0x4d63e4: b.eq 0x4d63ec
    //     0x4d63e4: b.eq         0x4d63ec
    // 0x4d63e8: r0 = call 0x61e04c
    //     0x4d63e8: bl           0x61e04c
    // 0x4d63ec: r0 = NULL
    //     0x4d63ec: mov          r0, NULL
    // 0x4d63f0: SP = fp
    //     0x4d63f0: mov          SP, fp
    // 0x4d63f4: LeaveFrame
    //     0x4d63f4: ldp          fp, lr, [SP], #0x10
    // 0x4d63f8: ret
    //     0x4d63f8: ret          
    // 0x4d63fc: r0 = call 0x61fa28
    //     0x4d63fc: bl           0x61fa28
    // 0x4d6400: b 0x4d63ac
    //     0x4d6400: b            0x4d63ac
  }

  _anon_closure() {
    // ** addr: 0x4d6404, size: 0x30
    // 0x4d6404: EnterFrame
    //     0x4d6404: stp          fp, lr, [SP, #-0x10]!
    //     0x4d6408: mov          fp, SP
    // 0x4d640c: CheckStackOverflow
    //     0x4d640c: ldr          BARRIER, [THR, #0x38]
    //     0x4d6410: cmp          SP, BARRIER
    //     0x4d6414: b.ls         0x4d642c
    // 0x4d6418: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record__PagePKGameBetTabRecordState::_anon_closure()
    //     0x4d6418: bl           0x3a8d00
    // 0x4d641c: r0 = NULL
    //     0x4d641c: mov          r0, NULL
    // 0x4d6420: SP = fp
    //     0x4d6420: mov          SP, fp
    // 0x4d6424: LeaveFrame
    //     0x4d6424: ldp          fp, lr, [SP], #0x10
    // 0x4d6428: ret
    //     0x4d6428: ret          
    // 0x4d642c: r0 = call 0x61fa28
    //     0x4d642c: bl           0x61fa28
    // 0x4d6430: b 0x4d6418
    //     0x4d6430: b            0x4d6418
  }

  createState() {
    // ** addr: 0x4c4a74, size: 0x2c
    // 0x4c4a74: EnterFrame
    //     0x4c4a74: stp          fp, lr, [SP, #-0x10]!
    //     0x4c4a78: mov          fp, SP
    // 0x4c4a7c: r0 = r1
    //     0x4c4a7c: mov          r0, r1
    // 0x4c4a80: r1 = pp[0x372]
    //     0x4c4a80: add          r1, PP, #0x12, lsl #12
    //     0x4c4a84: ldr          r1, [r1, #0x360]
    // 0x4c4a88: r0 = call 0x4c4aa0
    //     0x4c4a88: bl           0x4c4aa0
    // 0x4c4a8c: r1 = pp[0x148]
    //     0x4c4a8c: ldr          r1, [PP, #0x148]
    // 0x4c4a90: StoreField: r0->field_13 = r1
    //     0x4c4a90: stur         r1, [r0, #0x13]
    // 0x4c4a94: SP = fp
    //     0x4c4a94: mov          SP, fp
    // 0x4c4a98: LeaveFrame
    //     0x4c4a98: ldp          fp, lr, [SP], #0x10
    // 0x4c4a9c: ret
    //     0x4c4a9c: ret          
  }
