// lib: , url: soul_flutter_international$biz$party$page_party_lucky_bag_history


  build() {
    // ** addr: 0x3aa824, size: 0xa6c
    // 0x3aa824: EnterFrame
    //     0x3aa824: stp          fp, lr, [SP, #-0x10]!
    //     0x3aa828: mov          fp, SP
    // 0x3aa82c: AllocStack(0x88)
    //     0x3aa82c: sub          SP, SP, #0x88
    // 0x3aa830: r0 = r1
    //     0x3aa830: mov          r0, r1
    //     0x3aa834: stur         r1, [fp, #-8]
    // 0x3aa838: r1 = r2
    //     0x3aa838: mov          r1, r2
    //     0x3aa83c: stur         r2, [fp, #-0x10]
    // 0x3aa840: CheckStackOverflow
    //     0x3aa840: ldr          BARRIER, [THR, #0x38]
    //     0x3aa844: cmp          SP, BARRIER
    //     0x3aa848: b.ls         0x3ab244
    //     0x3aa84c: mov          r1, #8
    // 0x3aa850: r0 = call 0x61e890
    //     0x3aa850: bl           0x61e890
    // 0x3aa854: r2 = r0
    //     0x3aa854: mov          r2, r0
    //     0x3aa858: ldur         r0, [fp, #-8]
    //     0x3aa85c: stur         r2, [fp, #-0x18]
    // 0x3aa860: StoreField: r2->field_f = r0
    //     0x3aa860: stur         r0, [r2, #0xf]
    //     0x3aa864: ldur         r1, [fp, #-0x10]
    // 0x3aa868: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenWidth()
    //     0x3aa868: bl           0x3a877c
    //     0x3aa86c: mov          v1.16b, v0.16b
    //     0x3aa870: fmov         d0, #28.00000000
    //     0x3aa874: fsub         d2, d1, d0
    //     0x3aa878: fmov         d0, #3.00000000
    //     0x3aa87c: fdiv         d1, d2, d0
    //     0x3aa880: ldp          r1, r0, [THR, #0x50]
    //     0x3aa884: add          r1, r1, #0x10
    //     0x3aa888: cmp          r0, r1
    // 0x3aa88c: b.ls 0x3ab24c
    //     0x3aa88c: b.ls         0x3ab24c
    //     0x3aa890: str          r1, [THR, #0x50]
    //     0x3aa894: sub          r1, r1, #0xf
    //     0x3aa898: mov          r0, #0xe15c
    //     0x3aa89c: movk         r0, #3, lsl #16
    //     0x3aa8a0: stur         r0, [r1, #-1]
    // 0x3aa8a4: StoreField: r1->field_7 = d1
    //     0x3aa8a4: stur         d1, [r1, #7]
    // 0x3aa8a8: r0 = r1
    //     0x3aa8a8: mov          r0, r1
    //     0x3aa8ac: ldur         r2, [fp, #-0x18]
    //     0x3aa8b0: stur         r1, [fp, #-0x10]
    // 0x3aa8b4: StoreField: r2->field_13 = r0
    //     0x3aa8b4: stur         r0, [r2, #0x13]
    //     0x3aa8b8: ldurb        r16, [r2, #-1]
    //     0x3aa8bc: ldurb        r17, [r0, #-1]
    //     0x3aa8c0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3aa8c4: tst          BARRIER, HEAP, lsr #32
    // 0x3aa8c8: b.eq 0x3aa8d0
    //     0x3aa8c8: b.eq         0x3aa8d0
    // 0x3aa8cc: r0 = call 0x61e06c
    //     0x3aa8cc: bl           0x61e06c
    // 0x3aa8d0: r0 = pp[0x312]
    //     0x3aa8d0: add          r0, PP, #0x12, lsl #12
    //     0x3aa8d4: ldr          r0, [r0, #0x300]
    // 0x3aa8d8: ArrayStore: r2[0] = r0  ; List_8
    //     0x3aa8d8: stur         r0, [r2, #0x17]
    // 0x3aa8dc: r0 = pp[0x43a]
    //     0x3aa8dc: add          r0, PP, #0xa, lsl #12
    //     0x3aa8e0: ldr          r0, [r0, #0x430]
    // 0x3aa8e4: StoreField: r2->field_1b = r0
    //     0x3aa8e4: stur         r0, [r2, #0x1b]
    // 0x3aa8e8: r0 = pp[0xbb1]
    //     0x3aa8e8: add          r0, PP, #0x11, lsl #12
    //     0x3aa8ec: ldr          r0, [r0, #0xba0]
    // 0x3aa8f0: StoreField: r2->field_1f = r0
    //     0x3aa8f0: stur         r0, [r2, #0x1f]
    //     0x3aa8f4: fmov         d2, #0.50000000
    //     0x3aa8f8: fmul         d3, d1, d2
    //     0x3aa8fc: fmov         d1, #24.00000000
    //     0x3aa900: fsub         d2, d3, d1
    //     0x3aa904: fsub         d1, d2, d0
    //     0x3aa908: ldp          r0, r3, [THR, #0x50]
    //     0x3aa90c: add          r0, r0, #0x10
    //     0x3aa910: cmp          r3, r0
    // 0x3aa914: b.ls 0x3ab260
    //     0x3aa914: b.ls         0x3ab260
    //     0x3aa918: str          r0, [THR, #0x50]
    //     0x3aa91c: sub          r0, r0, #0xf
    //     0x3aa920: mov          r3, #0xe15c
    //     0x3aa924: movk         r3, #3, lsl #16
    //     0x3aa928: stur         r3, [r0, #-1]
    // 0x3aa92c: StoreField: r0->field_7 = d1
    //     0x3aa92c: stur         d1, [r0, #7]
    // 0x3aa930: StoreField: r2->field_23 = r0
    //     0x3aa930: stur         r0, [r2, #0x23]
    //     0x3aa934: ldurb        r16, [r2, #-1]
    //     0x3aa938: ldurb        r17, [r0, #-1]
    //     0x3aa93c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3aa940: tst          BARRIER, HEAP, lsr #32
    // 0x3aa944: b.eq 0x3aa94c
    //     0x3aa944: b.eq         0x3aa94c
    // 0x3aa948: r0 = call 0x61e06c
    //     0x3aa948: bl           0x61e06c
    //     0x3aa94c: fmov         d0, #27.00000000
    //     0x3aa950: fsub         d1, d3, d0
    //     0x3aa954: ldp          r0, r3, [THR, #0x50]
    //     0x3aa958: add          r0, r0, #0x10
    //     0x3aa95c: cmp          r3, r0
    // 0x3aa960: b.ls 0x3ab278
    //     0x3aa960: b.ls         0x3ab278
    //     0x3aa964: str          r0, [THR, #0x50]
    //     0x3aa968: sub          r0, r0, #0xf
    //     0x3aa96c: mov          r3, #0xe15c
    //     0x3aa970: movk         r3, #3, lsl #16
    //     0x3aa974: stur         r3, [r0, #-1]
    // 0x3aa978: StoreField: r0->field_7 = d1
    //     0x3aa978: stur         d1, [r0, #7]
    // 0x3aa97c: StoreField: r2->field_27 = r0
    //     0x3aa97c: stur         r0, [r2, #0x27]
    //     0x3aa980: ldurb        r16, [r2, #-1]
    //     0x3aa984: ldurb        r17, [r0, #-1]
    //     0x3aa988: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3aa98c: tst          BARRIER, HEAP, lsr #32
    // 0x3aa990: b.eq 0x3aa998
    //     0x3aa990: b.eq         0x3aa998
    // 0x3aa994: r0 = call 0x61e06c
    //     0x3aa994: bl           0x61e06c
    // 0x3aa998: r0 = call 0x31d844
    //     0x3aa998: bl           0x31d844
    // 0x3aa99c: r1 = r0
    //     0x3aa99c: mov          r1, r0
    // 0x3aa9a0: r0 = pp[0x6310]
    //     0x3aa9a0: ldr          r0, [PP, #0x6310]
    //     0x3aa9a4: stur         r1, [fp, #-0x20]
    // 0x3aa9a8: StoreField: r1->field_27 = r0
    //     0x3aa9a8: stur         r0, [r1, #0x27]
    //     0x3aa9ac: fmov         d0, #1.00000000
    // 0x3aa9b0: StoreField: r1->field_7 = d0
    //     0x3aa9b0: stur         d0, [r1, #7]
    // 0x3aa9b4: d1 = pp[0xae0]
    //     0x3aa9b4: add          r17, PP, #0x10, lsl #12
    //     0x3aa9b8: ldr          d1, [r17, #0xad0]
    // 0x3aa9bc: StoreField: r1->field_f = d1
    //     0x3aa9bc: stur         d1, [r1, #0xf]
    // 0x3aa9c0: d2 = pp[0xae8]
    //     0x3aa9c0: add          r17, PP, #0x10, lsl #12
    //     0x3aa9c4: ldr          d2, [r17, #0xad8]
    // 0x3aa9c8: ArrayStore: r1[0] = d2  ; List_8
    //     0x3aa9c8: stur         d2, [r1, #0x17]
    // 0x3aa9cc: d3 = pp[0xaf0]
    //     0x3aa9cc: add          r17, PP, #0x10, lsl #12
    //     0x3aa9d0: ldr          d3, [r17, #0xae0]
    // 0x3aa9d4: StoreField: r1->field_1f = d3
    //     0x3aa9d4: stur         d3, [r1, #0x1f]
    // 0x3aa9d8: r0 = call 0x31abec
    //     0x3aa9d8: bl           0x31abec
    // 0x3aa9dc: r2 = r0
    //     0x3aa9dc: mov          r2, r0
    //     0x3aa9e0: add          r0, NULL, #0x20
    //     0x3aa9e4: stur         r2, [fp, #-0x28]
    // 0x3aa9e8: StoreField: r2->field_7 = r0
    //     0x3aa9e8: stur         r0, [r2, #7]
    //     0x3aa9ec: ldur         r1, [fp, #-0x20]
    // 0x3aa9f0: StoreField: r2->field_b = r1
    //     0x3aa9f0: stur         r1, [r2, #0xb]
    // 0x3aa9f4: r1 = pp[0xb9f]
    //     0x3aa9f4: add          r1, PP, #0xf, lsl #12
    //     0x3aa9f8: ldr          r1, [r1, #0xb90]
    // 0x3aa9fc: StoreField: r2->field_1f = r1
    //     0x3aa9fc: stur         r1, [r2, #0x1f]
    // 0x3aaa00: r1 = pp[0xe4e]
    //     0x3aaa00: add          r1, PP, #0xe, lsl #12
    //     0x3aaa04: ldr          r1, [r1, #0xe40]
    // 0x3aaa08: StoreField: r2->field_23 = r1
    //     0x3aaa08: stur         r1, [r2, #0x23]
    // 0x3aaa0c: r1 = pp[0x9d4]
    //     0x3aaa0c: add          r1, PP, #0xc, lsl #12
    //     0x3aaa10: ldr          r1, [r1, #0x9c8]
    // 0x3aaa14: r4 = pp[0x4c0]
    //     0x3aaa14: ldr          r4, [PP, #0x4c0]
    // 0x3aaa18: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3aaa18: bl           0x3a1dcc
    // 0x3aaa1c: r1 = pp[0x90c]
    //     0x3aaa1c: add          r1, PP, #0xc, lsl #12
    //     0x3aaa20: ldr          r1, [r1, #0x900]
    //     0x3aaa24: stur         r0, [fp, #-0x20]
    // 0x3aaa28: r4 = pp[0x4c0]
    //     0x3aaa28: ldr          r4, [PP, #0x4c0]
    // 0x3aaa2c: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3aaa2c: bl           0x3a1dcc
    // 0x3aaa30: r1 = pp[0x9c4]
    //     0x3aaa30: add          r1, PP, #0xc, lsl #12
    //     0x3aaa34: ldr          r1, [r1, #0x9b8]
    //     0x3aaa38: stur         r0, [fp, #-0x30]
    // 0x3aaa3c: r4 = pp[0x4c0]
    //     0x3aaa3c: ldr          r4, [PP, #0x4c0]
    // 0x3aaa40: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3aaa40: bl           0x3a1dcc
    //     0x3aaa44: stur         r0, [fp, #-0x38]
    // 0x3aaa48: r0 = call 0x31d844
    //     0x3aaa48: bl           0x31d844
    // 0x3aaa4c: r1 = r0
    //     0x3aaa4c: mov          r1, r0
    // 0x3aaa50: r0 = pp[0x6310]
    //     0x3aaa50: ldr          r0, [PP, #0x6310]
    //     0x3aaa54: stur         r1, [fp, #-0x40]
    // 0x3aaa58: StoreField: r1->field_27 = r0
    //     0x3aaa58: stur         r0, [r1, #0x27]
    //     0x3aaa5c: fmov         d0, #1.00000000
    // 0x3aaa60: StoreField: r1->field_7 = d0
    //     0x3aaa60: stur         d0, [r1, #7]
    // 0x3aaa64: d1 = pp[0xae0]
    //     0x3aaa64: add          r17, PP, #0x10, lsl #12
    //     0x3aaa68: ldr          d1, [r17, #0xad0]
    // 0x3aaa6c: StoreField: r1->field_f = d1
    //     0x3aaa6c: stur         d1, [r1, #0xf]
    // 0x3aaa70: d2 = pp[0xae8]
    //     0x3aaa70: add          r17, PP, #0x10, lsl #12
    //     0x3aaa74: ldr          d2, [r17, #0xad8]
    // 0x3aaa78: ArrayStore: r1[0] = d2  ; List_8
    //     0x3aaa78: stur         d2, [r1, #0x17]
    // 0x3aaa7c: d3 = pp[0xaf0]
    //     0x3aaa7c: add          r17, PP, #0x10, lsl #12
    //     0x3aaa80: ldr          d3, [r17, #0xae0]
    // 0x3aaa84: StoreField: r1->field_1f = d3
    //     0x3aaa84: stur         d3, [r1, #0x1f]
    // 0x3aaa88: r0 = call 0x31abec
    //     0x3aaa88: bl           0x31abec
    // 0x3aaa8c: r1 = r0
    //     0x3aaa8c: mov          r1, r0
    //     0x3aaa90: add          r0, NULL, #0x20
    //     0x3aaa94: stur         r1, [fp, #-0x48]
    // 0x3aaa98: StoreField: r1->field_7 = r0
    //     0x3aaa98: stur         r0, [r1, #7]
    //     0x3aaa9c: ldur         r2, [fp, #-0x40]
    // 0x3aaaa0: StoreField: r1->field_b = r2
    //     0x3aaaa0: stur         r2, [r1, #0xb]
    // 0x3aaaa4: r2 = pp[0x217]
    //     0x3aaaa4: add          r2, PP, #0xf, lsl #12
    //     0x3aaaa8: ldr          r2, [r2, #0x208]
    // 0x3aaaac: StoreField: r1->field_1f = r2
    //     0x3aaaac: stur         r2, [r1, #0x1f]
    // 0x3aaab0: r3 = pp[0xe97]
    //     0x3aaab0: add          r3, PP, #0xf, lsl #12
    //     0x3aaab4: ldr          r3, [r3, #0xe88]
    // 0x3aaab8: StoreField: r1->field_23 = r3
    //     0x3aaab8: stur         r3, [r1, #0x23]
    // 0x3aaabc: r0 = call 0x31d844
    //     0x3aaabc: bl           0x31d844
    // 0x3aaac0: r1 = r0
    //     0x3aaac0: mov          r1, r0
    // 0x3aaac4: r0 = pp[0x6310]
    //     0x3aaac4: ldr          r0, [PP, #0x6310]
    //     0x3aaac8: stur         r1, [fp, #-0x40]
    // 0x3aaacc: StoreField: r1->field_27 = r0
    //     0x3aaacc: stur         r0, [r1, #0x27]
    //     0x3aaad0: fmov         d0, #1.00000000
    // 0x3aaad4: StoreField: r1->field_7 = d0
    //     0x3aaad4: stur         d0, [r1, #7]
    // 0x3aaad8: d1 = pp[0xae0]
    //     0x3aaad8: add          r17, PP, #0x10, lsl #12
    //     0x3aaadc: ldr          d1, [r17, #0xad0]
    // 0x3aaae0: StoreField: r1->field_f = d1
    //     0x3aaae0: stur         d1, [r1, #0xf]
    // 0x3aaae4: d1 = pp[0xae8]
    //     0x3aaae4: add          r17, PP, #0x10, lsl #12
    //     0x3aaae8: ldr          d1, [r17, #0xad8]
    // 0x3aaaec: ArrayStore: r1[0] = d1  ; List_8
    //     0x3aaaec: stur         d1, [r1, #0x17]
    // 0x3aaaf0: d1 = pp[0xaf0]
    //     0x3aaaf0: add          r17, PP, #0x10, lsl #12
    //     0x3aaaf4: ldr          d1, [r17, #0xae0]
    // 0x3aaaf8: StoreField: r1->field_1f = d1
    //     0x3aaaf8: stur         d1, [r1, #0x1f]
    // 0x3aaafc: r0 = call 0x31abec
    //     0x3aaafc: bl           0x31abec
    //     0x3aab00: add          r1, NULL, #0x20
    // 0x3aab04: StoreField: r0->field_7 = r1
    //     0x3aab04: stur         r1, [r0, #7]
    //     0x3aab08: ldur         r2, [fp, #-0x40]
    // 0x3aab0c: StoreField: r0->field_b = r2
    //     0x3aab0c: stur         r2, [r0, #0xb]
    // 0x3aab10: r2 = pp[0x217]
    //     0x3aab10: add          r2, PP, #0xf, lsl #12
    //     0x3aab14: ldr          r2, [r2, #0x208]
    // 0x3aab18: StoreField: r0->field_1f = r2
    //     0x3aab18: stur         r2, [r0, #0x1f]
    // 0x3aab1c: r2 = pp[0xe97]
    //     0x3aab1c: add          r2, PP, #0xf, lsl #12
    //     0x3aab20: ldr          r2, [r2, #0xe88]
    // 0x3aab24: StoreField: r0->field_23 = r2
    //     0x3aab24: stur         r2, [r0, #0x23]
    //     0x3aab28: ldur         r2, [fp, #-0x18]
    // 0x3aab2c: StoreField: r2->field_2b = r0
    //     0x3aab2c: stur         r0, [r2, #0x2b]
    //     0x3aab30: ldurb        r16, [r2, #-1]
    //     0x3aab34: ldurb        r17, [r0, #-1]
    //     0x3aab38: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3aab3c: tst          BARRIER, HEAP, lsr #32
    // 0x3aab40: b.eq 0x3aab48
    //     0x3aab40: b.eq         0x3aab48
    // 0x3aab44: r0 = call 0x61e06c
    //     0x3aab44: bl           0x61e06c
    // 0x3aab48: r0 = call 0x2e3578
    //     0x3aab48: bl           0x2e3578
    //     0x3aab4c: stur         r0, [fp, #-0x40]
    // 0x3aab50: StoreField: r0->field_7 = xzr
    //     0x3aab50: stur         xzr, [r0, #7]
    // 0x3aab54: d0 = pp[0x72d0]
    //     0x3aab54: ldr          d0, [PP, #0x72d0]
    // 0x3aab58: StoreField: r0->field_f = d0
    //     0x3aab58: stur         d0, [r0, #0xf]
    // 0x3aab5c: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3aab5c: stur         xzr, [r0, #0x17]
    // 0x3aab60: StoreField: r0->field_1f = xzr
    //     0x3aab60: stur         xzr, [r0, #0x1f]
    // 0x3aab64: r1 = pp[0x9e4]
    //     0x3aab64: add          r1, PP, #0xc, lsl #12
    //     0x3aab68: ldr          r1, [r1, #0x9d8]
    // 0x3aab6c: r4 = pp[0x4c0]
    //     0x3aab6c: ldr          r4, [PP, #0x4c0]
    // 0x3aab70: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3aab70: bl           0x3a1dcc
    //     0x3aab74: stur         r0, [fp, #-0x50]
    // 0x3aab78: r0 = call 0x393bf8
    //     0x3aab78: bl           0x393bf8
    // 0x3aab7c: r2 = r0
    //     0x3aab7c: mov          r2, r0
    //     0x3aab80: ldur         r0, [fp, #-0x50]
    //     0x3aab84: stur         r2, [fp, #-0x58]
    // 0x3aab88: StoreField: r2->field_b = r0
    //     0x3aab88: stur         r0, [r2, #0xb]
    //     0x3aab8c: ldur         r0, [fp, #-0x28]
    // 0x3aab90: StoreField: r2->field_13 = r0
    //     0x3aab90: stur         r0, [r2, #0x13]
    //     0x3aab94: add          r1, NULL, #0x30
    // 0x3aab98: r0 = soul_flutter_international$biz$party$page_party_lucky_bag_history_::backButton()
    //     0x3aab98: bl           0x3ab5e4
    // 0x3aab9c: r1 = NULL
    //     0x3aab9c: mov          r1, NULL
    //     0x3aaba0: mov          r2, #4
    //     0x3aaba4: stur         r0, [fp, #-0x28]
    // 0x3aaba8: r0 = call 0x61f920
    //     0x3aaba8: bl           0x61f920
    // 0x3aabac: r2 = r0
    //     0x3aabac: mov          r2, r0
    //     0x3aabb0: ldur         r0, [fp, #-0x58]
    //     0x3aabb4: stur         r2, [fp, #-0x50]
    // 0x3aabb8: StoreField: r2->field_f = r0
    //     0x3aabb8: stur         r0, [r2, #0xf]
    //     0x3aabbc: ldur         r0, [fp, #-0x28]
    // 0x3aabc0: StoreField: r2->field_13 = r0
    //     0x3aabc0: stur         r0, [r2, #0x13]
    // 0x3aabc4: r1 = pp[0x5c58]
    //     0x3aabc4: ldr          r1, [PP, #0x5c58]
    // 0x3aabc8: r0 = call 0x61e854
    //     0x3aabc8: bl           0x61e854
    // 0x3aabcc: r1 = r0
    //     0x3aabcc: mov          r1, r0
    //     0x3aabd0: ldur         r0, [fp, #-0x50]
    //     0x3aabd4: stur         r1, [fp, #-0x28]
    // 0x3aabd8: StoreField: r1->field_f = r0
    //     0x3aabd8: stur         r0, [r1, #0xf]
    //     0x3aabdc: mov          r2, #4
    // 0x3aabe0: StoreField: r1->field_b = r2
    //     0x3aabe0: stur         r2, [r1, #0xb]
    // 0x3aabe4: r0 = call 0x39e6f4
    //     0x3aabe4: bl           0x39e6f4
    // 0x3aabe8: r1 = r0
    //     0x3aabe8: mov          r1, r0
    // 0x3aabec: r0 = pp[0xaae]
    //     0x3aabec: add          r0, PP, #0xe, lsl #12
    //     0x3aabf0: ldr          r0, [r0, #0xaa0]
    //     0x3aabf4: stur         r1, [fp, #-0x50]
    // 0x3aabf8: StoreField: r1->field_f = r0
    //     0x3aabf8: stur         r0, [r1, #0xf]
    // 0x3aabfc: r0 = pp[0xf16]
    //     0x3aabfc: add          r0, PP, #0xe, lsl #12
    //     0x3aac00: ldr          r0, [r0, #0xf08]
    // 0x3aac04: ArrayStore: r1[0] = r0  ; List_8
    //     0x3aac04: stur         r0, [r1, #0x17]
    // 0x3aac08: r0 = pp[0xf1e]
    //     0x3aac08: add          r0, PP, #0xe, lsl #12
    //     0x3aac0c: ldr          r0, [r0, #0xf10]
    // 0x3aac10: StoreField: r1->field_1b = r0
    //     0x3aac10: stur         r0, [r1, #0x1b]
    //     0x3aac14: ldur         r0, [fp, #-0x28]
    // 0x3aac18: StoreField: r1->field_b = r0
    //     0x3aac18: stur         r0, [r1, #0xb]
    // 0x3aac1c: r0 = call 0x391a04
    //     0x3aac1c: bl           0x391a04
    //     0x3aac20: stur         r0, [fp, #-0x28]
    //     0x3aac24: ldur         BARRIER, [fp, #-0x50]
    //     0x3aac28: str          BARRIER, [SP]
    // 0x3aac2c: r1 = r0
    //     0x3aac2c: mov          r1, r0
    // 0x3aac30: r4 = pp[0x204]
    //     0x3aac30: add          r4, PP, #0xc, lsl #12
    //     0x3aac34: ldr          r4, [r4, #0x1f8]
    // 0x3aac38: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3aac38: bl           0x391490
    // 0x3aac3c: r0 = call 0x2e3578
    //     0x3aac3c: bl           0x2e3578
    //     0x3aac40: fmov         d0, #14.00000000
    //     0x3aac44: stur         r0, [fp, #-0x50]
    // 0x3aac48: StoreField: r0->field_7 = d0
    //     0x3aac48: stur         d0, [r0, #7]
    //     0x3aac4c: fmov         d1, #21.00000000
    // 0x3aac50: StoreField: r0->field_f = d1
    //     0x3aac50: stur         d1, [r0, #0xf]
    // 0x3aac54: ArrayStore: r0[0] = d0  ; List_8
    //     0x3aac54: stur         d0, [r0, #0x17]
    // 0x3aac58: StoreField: r0->field_1f = xzr
    //     0x3aac58: stur         xzr, [r0, #0x1f]
    // 0x3aac5c: r0 = call 0x2e3578
    //     0x3aac5c: bl           0x2e3578
    //     0x3aac60: stur         r0, [fp, #-0x58]
    // 0x3aac64: StoreField: r0->field_7 = xzr
    //     0x3aac64: stur         xzr, [r0, #7]
    // 0x3aac68: StoreField: r0->field_f = xzr
    //     0x3aac68: stur         xzr, [r0, #0xf]
    // 0x3aac6c: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3aac6c: stur         xzr, [r0, #0x17]
    // 0x3aac70: StoreField: r0->field_1f = xzr
    //     0x3aac70: stur         xzr, [r0, #0x1f]
    // 0x3aac74: r0 = call 0x31d844
    //     0x3aac74: bl           0x31d844
    // 0x3aac78: r1 = r0
    //     0x3aac78: mov          r1, r0
    // 0x3aac7c: r0 = pp[0x6310]
    //     0x3aac7c: ldr          r0, [PP, #0x6310]
    //     0x3aac80: stur         r1, [fp, #-0x60]
    // 0x3aac84: StoreField: r1->field_27 = r0
    //     0x3aac84: stur         r0, [r1, #0x27]
    //     0x3aac88: fmov         d0, #1.00000000
    // 0x3aac8c: StoreField: r1->field_7 = d0
    //     0x3aac8c: stur         d0, [r1, #7]
    // 0x3aac90: StoreField: r1->field_f = d0
    //     0x3aac90: stur         d0, [r1, #0xf]
    // 0x3aac94: d1 = pp[0xad0]
    //     0x3aac94: add          r17, PP, #0x10, lsl #12
    //     0x3aac98: ldr          d1, [r17, #0xac0]
    // 0x3aac9c: ArrayStore: r1[0] = d1  ; List_8
    //     0x3aac9c: stur         d1, [r1, #0x17]
    // 0x3aaca0: d2 = pp[0xad8]
    //     0x3aaca0: add          r17, PP, #0x10, lsl #12
    //     0x3aaca4: ldr          d2, [r17, #0xac8]
    // 0x3aaca8: StoreField: r1->field_1f = d2
    //     0x3aaca8: stur         d2, [r1, #0x1f]
    // 0x3aacac: r0 = call 0x391a04
    //     0x3aacac: bl           0x391a04
    //     0x3aacb0: stur         r0, [fp, #-0x68]
    //     0x3aacb4: ldur         BARRIER, [fp, #-0x58]
    // 0x3aacb8: lr = pp[0x53b0]
    //     0x3aacb8: ldr          lr, [PP, #0x53b0]
    //     0x3aacbc: stp          lr, BARRIER, [SP, #8]
    //     0x3aacc0: ldur         BARRIER, [fp, #-0x60]
    //     0x3aacc4: str          BARRIER, [SP]
    // 0x3aacc8: r1 = r0
    //     0x3aacc8: mov          r1, r0
    // 0x3aaccc: r4 = pp[0x268]
    //     0x3aaccc: add          r4, PP, #0x10, lsl #12
    //     0x3aacd0: ldr          r4, [r4, #0x258]
    // 0x3aacd4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3aacd4: bl           0x391490
    // 0x3aacd8: r0 = call 0x2e3578
    //     0x3aacd8: bl           0x2e3578
    //     0x3aacdc: stur         r0, [fp, #-0x58]
    // 0x3aace0: StoreField: r0->field_7 = xzr
    //     0x3aace0: stur         xzr, [r0, #7]
    // 0x3aace4: StoreField: r0->field_f = xzr
    //     0x3aace4: stur         xzr, [r0, #0xf]
    // 0x3aace8: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3aace8: stur         xzr, [r0, #0x17]
    // 0x3aacec: StoreField: r0->field_1f = xzr
    //     0x3aacec: stur         xzr, [r0, #0x1f]
    // 0x3aacf0: r0 = call 0x393bf8
    //     0x3aacf0: bl           0x393bf8
    // 0x3aacf4: r1 = r0
    //     0x3aacf4: mov          r1, r0
    //     0x3aacf8: ldur         r0, [fp, #-0x20]
    //     0x3aacfc: stur         r1, [fp, #-0x60]
    // 0x3aad00: StoreField: r1->field_b = r0
    //     0x3aad00: stur         r0, [r1, #0xb]
    //     0x3aad04: ldur         r0, [fp, #-0x48]
    // 0x3aad08: StoreField: r1->field_13 = r0
    //     0x3aad08: stur         r0, [r1, #0x13]
    // 0x3aad0c: r2 = pp[0x53a8]
    //     0x3aad0c: ldr          r2, [PP, #0x53a8]
    // 0x3aad10: StoreField: r1->field_1b = r2
    //     0x3aad10: stur         r2, [r1, #0x1b]
    // 0x3aad14: r0 = call 0x391a04
    //     0x3aad14: bl           0x391a04
    //     0x3aad18: stur         r0, [fp, #-0x20]
    // 0x3aad1c: BARRIER = pp[0xaae]
    //     0x3aad1c: add          BARRIER, PP, #0xe, lsl #12
    //     0x3aad20: ldr          BARRIER, [BARRIER, #0xaa0]
    //     0x3aad24: ldur         lr, [fp, #-0x10]
    //     0x3aad28: stp          lr, BARRIER, [SP, #8]
    //     0x3aad2c: ldur         BARRIER, [fp, #-0x60]
    //     0x3aad30: str          BARRIER, [SP]
    // 0x3aad34: r1 = r0
    //     0x3aad34: mov          r1, r0
    // 0x3aad38: r4 = pp[0x31a]
    //     0x3aad38: add          r4, PP, #0x12, lsl #12
    //     0x3aad3c: ldr          r4, [r4, #0x308]
    // 0x3aad40: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3aad40: bl           0x391490
    // 0x3aad44: r0 = call 0x393bf8
    //     0x3aad44: bl           0x393bf8
    // 0x3aad48: r1 = r0
    //     0x3aad48: mov          r1, r0
    //     0x3aad4c: ldur         r0, [fp, #-0x30]
    //     0x3aad50: stur         r1, [fp, #-0x60]
    // 0x3aad54: StoreField: r1->field_b = r0
    //     0x3aad54: stur         r0, [r1, #0xb]
    //     0x3aad58: ldur         r0, [fp, #-0x48]
    // 0x3aad5c: StoreField: r1->field_13 = r0
    //     0x3aad5c: stur         r0, [r1, #0x13]
    // 0x3aad60: r2 = pp[0x53a8]
    //     0x3aad60: ldr          r2, [PP, #0x53a8]
    // 0x3aad64: StoreField: r1->field_1b = r2
    //     0x3aad64: stur         r2, [r1, #0x1b]
    // 0x3aad68: r0 = call 0x391a04
    //     0x3aad68: bl           0x391a04
    //     0x3aad6c: stur         r0, [fp, #-0x30]
    // 0x3aad70: BARRIER = pp[0xaae]
    //     0x3aad70: add          BARRIER, PP, #0xe, lsl #12
    //     0x3aad74: ldr          BARRIER, [BARRIER, #0xaa0]
    //     0x3aad78: ldur         lr, [fp, #-0x10]
    //     0x3aad7c: stp          lr, BARRIER, [SP, #8]
    //     0x3aad80: ldur         BARRIER, [fp, #-0x60]
    //     0x3aad84: str          BARRIER, [SP]
    // 0x3aad88: r1 = r0
    //     0x3aad88: mov          r1, r0
    // 0x3aad8c: r4 = pp[0x31a]
    //     0x3aad8c: add          r4, PP, #0x12, lsl #12
    //     0x3aad90: ldr          r4, [r4, #0x308]
    // 0x3aad94: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3aad94: bl           0x391490
    // 0x3aad98: r0 = call 0x393bf8
    //     0x3aad98: bl           0x393bf8
    // 0x3aad9c: r1 = r0
    //     0x3aad9c: mov          r1, r0
    //     0x3aada0: ldur         r0, [fp, #-0x38]
    //     0x3aada4: stur         r1, [fp, #-0x60]
    // 0x3aada8: StoreField: r1->field_b = r0
    //     0x3aada8: stur         r0, [r1, #0xb]
    //     0x3aadac: ldur         r0, [fp, #-0x48]
    // 0x3aadb0: StoreField: r1->field_13 = r0
    //     0x3aadb0: stur         r0, [r1, #0x13]
    // 0x3aadb4: r0 = pp[0x53a8]
    //     0x3aadb4: ldr          r0, [PP, #0x53a8]
    // 0x3aadb8: StoreField: r1->field_1b = r0
    //     0x3aadb8: stur         r0, [r1, #0x1b]
    // 0x3aadbc: r0 = call 0x391a04
    //     0x3aadbc: bl           0x391a04
    //     0x3aadc0: stur         r0, [fp, #-0x38]
    // 0x3aadc4: BARRIER = pp[0xaae]
    //     0x3aadc4: add          BARRIER, PP, #0xe, lsl #12
    //     0x3aadc8: ldr          BARRIER, [BARRIER, #0xaa0]
    //     0x3aadcc: ldur         lr, [fp, #-0x10]
    //     0x3aadd0: stp          lr, BARRIER, [SP, #8]
    //     0x3aadd4: ldur         BARRIER, [fp, #-0x60]
    //     0x3aadd8: str          BARRIER, [SP]
    // 0x3aaddc: r1 = r0
    //     0x3aaddc: mov          r1, r0
    // 0x3aade0: r4 = pp[0x31a]
    //     0x3aade0: add          r4, PP, #0x12, lsl #12
    //     0x3aade4: ldr          r4, [r4, #0x308]
    // 0x3aade8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3aade8: bl           0x391490
    // 0x3aadec: r1 = NULL
    //     0x3aadec: mov          r1, NULL
    //     0x3aadf0: mov          r2, #6
    // 0x3aadf4: r0 = call 0x61f920
    //     0x3aadf4: bl           0x61f920
    // 0x3aadf8: r2 = r0
    //     0x3aadf8: mov          r2, r0
    //     0x3aadfc: ldur         r0, [fp, #-0x20]
    //     0x3aae00: stur         r2, [fp, #-0x10]
    // 0x3aae04: StoreField: r2->field_f = r0
    //     0x3aae04: stur         r0, [r2, #0xf]
    //     0x3aae08: ldur         r0, [fp, #-0x30]
    // 0x3aae0c: StoreField: r2->field_13 = r0
    //     0x3aae0c: stur         r0, [r2, #0x13]
    //     0x3aae10: ldur         r0, [fp, #-0x38]
    // 0x3aae14: ArrayStore: r2[0] = r0  ; List_8
    //     0x3aae14: stur         r0, [r2, #0x17]
    // 0x3aae18: r1 = pp[0x5c58]
    //     0x3aae18: ldr          r1, [PP, #0x5c58]
    // 0x3aae1c: r0 = call 0x61e854
    //     0x3aae1c: bl           0x61e854
    // 0x3aae20: r1 = r0
    //     0x3aae20: mov          r1, r0
    //     0x3aae24: ldur         r0, [fp, #-0x10]
    //     0x3aae28: stur         r1, [fp, #-0x20]
    // 0x3aae2c: StoreField: r1->field_f = r0
    //     0x3aae2c: stur         r0, [r1, #0xf]
    //     0x3aae30: mov          r0, #6
    // 0x3aae34: StoreField: r1->field_b = r0
    //     0x3aae34: stur         r0, [r1, #0xb]
    // 0x3aae38: r0 = call 0x3a1414
    //     0x3aae38: bl           0x3a1414
    // 0x3aae3c: r1 = r0
    //     0x3aae3c: mov          r1, r0
    // 0x3aae40: r0 = pp[0x5140]
    //     0x3aae40: ldr          r0, [PP, #0x5140]
    //     0x3aae44: stur         r1, [fp, #-0x10]
    // 0x3aae48: StoreField: r1->field_f = r0
    //     0x3aae48: stur         r0, [r1, #0xf]
    // 0x3aae4c: r0 = pp[0xaa1]
    //     0x3aae4c: add          r0, PP, #0x11, lsl #12
    //     0x3aae50: ldr          r0, [r0, #0xa90]
    // 0x3aae54: StoreField: r1->field_13 = r0
    //     0x3aae54: stur         r0, [r1, #0x13]
    // 0x3aae58: r0 = pp[0xaf6]
    //     0x3aae58: add          r0, PP, #0xe, lsl #12
    //     0x3aae5c: ldr          r0, [r0, #0xae8]
    // 0x3aae60: ArrayStore: r1[0] = r0  ; List_8
    //     0x3aae60: stur         r0, [r1, #0x17]
    // 0x3aae64: r2 = pp[0xb6e]
    //     0x3aae64: add          r2, PP, #0xe, lsl #12
    //     0x3aae68: ldr          r2, [r2, #0xb60]
    // 0x3aae6c: StoreField: r1->field_1b = r2
    //     0x3aae6c: stur         r2, [r1, #0x1b]
    // 0x3aae70: r3 = pp[0xb06]
    //     0x3aae70: add          r3, PP, #0xe, lsl #12
    //     0x3aae74: ldr          r3, [r3, #0xaf8]
    // 0x3aae78: StoreField: r1->field_23 = r3
    //     0x3aae78: stur         r3, [r1, #0x23]
    // 0x3aae7c: r4 = pp[0xb2]
    //     0x3aae7c: add          r4, PP, #0xa, lsl #12
    //     0x3aae80: ldr          r4, [r4, #0xa8]
    // 0x3aae84: StoreField: r1->field_2b = r4
    //     0x3aae84: stur         r4, [r1, #0x2b]
    // 0x3aae88: StoreField: r1->field_2f = xzr
    //     0x3aae88: stur         xzr, [r1, #0x2f]
    //     0x3aae8c: ldur         r5, [fp, #-0x20]
    // 0x3aae90: StoreField: r1->field_b = r5
    //     0x3aae90: stur         r5, [r1, #0xb]
    // 0x3aae94: r0 = call 0x391a04
    //     0x3aae94: bl           0x391a04
    //     0x3aae98: stur         r0, [fp, #-0x20]
    // 0x3aae9c: BARRIER = pp[0x31f]
    //     0x3aae9c: add          BARRIER, PP, #0xf, lsl #12
    //     0x3aaea0: ldr          BARRIER, [BARRIER, #0x310]
    //     0x3aaea4: ldur         lr, [fp, #-0x58]
    //     0x3aaea8: stp          lr, BARRIER, [SP, #8]
    //     0x3aaeac: ldur         BARRIER, [fp, #-0x10]
    //     0x3aaeb0: str          BARRIER, [SP]
    // 0x3aaeb4: r1 = r0
    //     0x3aaeb4: mov          r1, r0
    // 0x3aaeb8: r4 = pp[0xac1]
    //     0x3aaeb8: add          r4, PP, #0x11, lsl #12
    //     0x3aaebc: ldr          r4, [r4, #0xab0]
    // 0x3aaec0: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3aaec0: bl           0x391490
    // 0x3aaec4: r0 = call 0x2e3578
    //     0x3aaec4: bl           0x2e3578
    //     0x3aaec8: stur         r0, [fp, #-0x10]
    // 0x3aaecc: StoreField: r0->field_7 = xzr
    //     0x3aaecc: stur         xzr, [r0, #7]
    // 0x3aaed0: StoreField: r0->field_f = xzr
    //     0x3aaed0: stur         xzr, [r0, #0xf]
    // 0x3aaed4: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3aaed4: stur         xzr, [r0, #0x17]
    // 0x3aaed8: StoreField: r0->field_1f = xzr
    //     0x3aaed8: stur         xzr, [r0, #0x1f]
    // 0x3aaedc: r0 = call 0x31d844
    //     0x3aaedc: bl           0x31d844
    // 0x3aaee0: r1 = r0
    //     0x3aaee0: mov          r1, r0
    // 0x3aaee4: r0 = pp[0x6310]
    //     0x3aaee4: ldr          r0, [PP, #0x6310]
    //     0x3aaee8: stur         r1, [fp, #-0x30]
    // 0x3aaeec: StoreField: r1->field_27 = r0
    //     0x3aaeec: stur         r0, [r1, #0x27]
    //     0x3aaef0: fmov         d0, #1.00000000
    // 0x3aaef4: StoreField: r1->field_7 = d0
    //     0x3aaef4: stur         d0, [r1, #7]
    // 0x3aaef8: StoreField: r1->field_f = d0
    //     0x3aaef8: stur         d0, [r1, #0xf]
    // 0x3aaefc: d0 = pp[0xad0]
    //     0x3aaefc: add          r17, PP, #0x10, lsl #12
    //     0x3aaf00: ldr          d0, [r17, #0xac0]
    // 0x3aaf04: ArrayStore: r1[0] = d0  ; List_8
    //     0x3aaf04: stur         d0, [r1, #0x17]
    // 0x3aaf08: d0 = pp[0xad8]
    //     0x3aaf08: add          r17, PP, #0x10, lsl #12
    //     0x3aaf0c: ldr          d0, [r17, #0xac8]
    // 0x3aaf10: StoreField: r1->field_1f = d0
    //     0x3aaf10: stur         d0, [r1, #0x1f]
    // 0x3aaf14: r0 = call 0x391a04
    //     0x3aaf14: bl           0x391a04
    //     0x3aaf18: stur         r0, [fp, #-0x38]
    //     0x3aaf1c: ldur         BARRIER, [fp, #-0x10]
    // 0x3aaf20: lr = pp[0x53b0]
    //     0x3aaf20: ldr          lr, [PP, #0x53b0]
    //     0x3aaf24: stp          lr, BARRIER, [SP, #8]
    //     0x3aaf28: ldur         BARRIER, [fp, #-0x30]
    //     0x3aaf2c: str          BARRIER, [SP]
    // 0x3aaf30: r1 = r0
    //     0x3aaf30: mov          r1, r0
    // 0x3aaf34: r4 = pp[0x268]
    //     0x3aaf34: add          r4, PP, #0x10, lsl #12
    //     0x3aaf38: ldr          r4, [r4, #0x258]
    // 0x3aaf3c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3aaf3c: bl           0x391490
    //     0x3aaf40: ldur         r0, [fp, #-8]
    // 0x3aaf44: LoadField: r3 = r0->field_f
    //     0x3aaf44: ldur         r3, [r0, #0xf]
    //     0x3aaf48: add          r3, r3, HEAP, lsl #32
    //     0x3aaf4c: stur         r3, [fp, #-0x10]
    // 0x3aaf50: r1 = pp[0x322]
    //     0x3aaf50: add          r1, PP, #0x12, lsl #12
    //     0x3aaf54: ldr          r1, [r1, #0x310]
    // 0x3aaf58: r2 = NULL
    //     0x3aaf58: mov          r2, NULL
    // 0x3aaf5c: r0 = call 0x61ec54
    //     0x3aaf5c: bl           0x61ec54
    //     0x3aaf60: stur         r0, [fp, #-0x30]
    // 0x3aaf64: r0 = call 0x3ab5b8
    //     0x3aaf64: bl           0x3ab5b8
    // 0x3aaf68: r3 = r0
    //     0x3aaf68: mov          r3, r0
    //     0x3aaf6c: ldur         r0, [fp, #-0x30]
    //     0x3aaf70: stur         r3, [fp, #-0x48]
    // 0x3aaf74: StoreField: r3->field_1b = r0
    //     0x3aaf74: stur         r0, [r3, #0x1b]
    // 0x3aaf78: r0 = pp[0x8a7]
    //     0x3aaf78: add          r0, PP, #0xf, lsl #12
    //     0x3aaf7c: ldr          r0, [r0, #0x898]
    // 0x3aaf80: StoreField: r3->field_b = r0
    //     0x3aaf80: stur         r0, [r3, #0xb]
    // 0x3aaf84: d0 = pp[0x8af]
    //     0x3aaf84: add          r17, PP, #0xf, lsl #12
    //     0x3aaf88: ldr          d0, [r17, #0x8a0]
    // 0x3aaf8c: StoreField: r3->field_f = d0
    //     0x3aaf8c: stur         d0, [r3, #0xf]
    //     0x3aaf90: ldur         r0, [fp, #-8]
    // 0x3aaf94: LoadField: r1 = r0->field_b
    //     0x3aaf94: ldur         r1, [r0, #0xb]
    //     0x3aaf98: add          r1, r1, HEAP, lsl #32
    // 0x3aaf9c: LoadField: r0 = r1->field_2b
    //     0x3aaf9c: ldur         r0, [r1, #0x2b]
    //     0x3aafa0: add          r0, r0, HEAP, lsl #32
    // 0x3aafa4: LoadField: r1 = r0->field_b
    //     0x3aafa4: ldur         r1, [r0, #0xb]
    //     0x3aafa8: sbfx         r0, r1, #1, #0x1f
    //     0x3aafac: ldur         r2, [fp, #-0x18]
    //     0x3aafb0: stur         r0, [fp, #-0x70]
    // 0x3aafb4: r1 = pp[0x32a]
    //     0x3aafb4: add          r1, PP, #0x12, lsl #12
    //     0x3aafb8: ldr          r1, [r1, #0x318]
    // 0x3aafbc: r0 = call 0x61ec54
    //     0x3aafbc: bl           0x61ec54
    //     0x3aafc0: stur         r0, [fp, #-8]
    // 0x3aafc4: r0 = call 0x3ab5ac
    //     0x3aafc4: bl           0x3ab5ac
    // 0x3aafc8: r1 = r0
    //     0x3aafc8: mov          r1, r0
    //     0x3aafcc: ldur         r2, [fp, #-8]
    //     0x3aafd0: ldur         r3, [fp, #-0x70]
    //     0x3aafd4: stur         r0, [fp, #-8]
    // 0x3aafd8: r4 = pp[0x2e0]
    //     0x3aafd8: ldr          r4, [PP, #0x2e0]
    // 0x3aafdc: r0 = flutter$src$widgets$scroll_view_ListView::ctor_builder()
    //     0x3aafdc: bl           0x3ab2bc
    // 0x3aafe0: r0 = call 0x3ab290
    //     0x3aafe0: bl           0x3ab290
    // 0x3aafe4: r3 = r0
    //     0x3aafe4: mov          r3, r0
    //     0x3aafe8: ldur         r0, [fp, #-0x10]
    //     0x3aafec: stur         r3, [fp, #-0x30]
    // 0x3aaff0: StoreField: r3->field_2b = r0
    //     0x3aaff0: stur         r0, [r3, #0x2b]
    //     0x3aaff4: ldur         r0, [fp, #-8]
    // 0x3aaff8: StoreField: r3->field_b = r0
    //     0x3aaff8: stur         r0, [r3, #0xb]
    //     0x3aaffc: ldur         r0, [fp, #-0x48]
    // 0x3ab000: StoreField: r3->field_f = r0
    //     0x3ab000: stur         r0, [r3, #0xf]
    //     0x3ab004: add          r0, NULL, #0x30
    // 0x3ab008: StoreField: r3->field_1b = r0
    //     0x3ab008: stur         r0, [r3, #0x1b]
    //     0x3ab00c: add          r1, NULL, #0x20
    // 0x3ab010: StoreField: r3->field_13 = r1
    //     0x3ab010: stur         r1, [r3, #0x13]
    // 0x3ab014: ArrayStore: r3[0] = r0  ; List_8
    //     0x3ab014: stur         r0, [r3, #0x17]
    //     0x3ab018: ldur         r2, [fp, #-0x18]
    // 0x3ab01c: r1 = pp[0x332]
    //     0x3ab01c: add          r1, PP, #0x12, lsl #12
    //     0x3ab020: ldr          r1, [r1, #0x320]
    // 0x3ab024: r0 = call 0x61ec54
    //     0x3ab024: bl           0x61ec54
    // 0x3ab028: r1 = r0
    //     0x3ab028: mov          r1, r0
    //     0x3ab02c: ldur         r0, [fp, #-0x30]
    // 0x3ab030: StoreField: r0->field_23 = r1
    //     0x3ab030: stur         r1, [r0, #0x23]
    // 0x3ab034: r1 = pp[0xade]
    //     0x3ab034: add          r1, PP, #0xe, lsl #12
    //     0x3ab038: ldr          r1, [r1, #0xad0]
    // 0x3ab03c: r0 = call 0x39fb14
    //     0x3ab03c: bl           0x39fb14
    // 0x3ab040: r3 = r0
    //     0x3ab040: mov          r3, r0
    //     0x3ab044: mov          r0, #1
    //     0x3ab048: stur         r3, [fp, #-8]
    // 0x3ab04c: StoreField: r3->field_13 = r0
    //     0x3ab04c: stur         r0, [r3, #0x13]
    // 0x3ab050: r4 = pp[0xae6]
    //     0x3ab050: add          r4, PP, #0xe, lsl #12
    //     0x3ab054: ldr          r4, [r4, #0xad8]
    // 0x3ab058: StoreField: r3->field_1b = r4
    //     0x3ab058: stur         r4, [r3, #0x1b]
    //     0x3ab05c: ldur         r1, [fp, #-0x30]
    // 0x3ab060: StoreField: r3->field_b = r1
    //     0x3ab060: stur         r1, [r3, #0xb]
    // 0x3ab064: r1 = NULL
    //     0x3ab064: mov          r1, NULL
    //     0x3ab068: mov          r2, #8
    // 0x3ab06c: r0 = call 0x61f920
    //     0x3ab06c: bl           0x61f920
    // 0x3ab070: r2 = r0
    //     0x3ab070: mov          r2, r0
    //     0x3ab074: ldur         r0, [fp, #-0x68]
    //     0x3ab078: stur         r2, [fp, #-0x10]
    // 0x3ab07c: StoreField: r2->field_f = r0
    //     0x3ab07c: stur         r0, [r2, #0xf]
    //     0x3ab080: ldur         r0, [fp, #-0x20]
    // 0x3ab084: StoreField: r2->field_13 = r0
    //     0x3ab084: stur         r0, [r2, #0x13]
    //     0x3ab088: ldur         r0, [fp, #-0x38]
    // 0x3ab08c: ArrayStore: r2[0] = r0  ; List_8
    //     0x3ab08c: stur         r0, [r2, #0x17]
    //     0x3ab090: ldur         r0, [fp, #-8]
    // 0x3ab094: StoreField: r2->field_1b = r0
    //     0x3ab094: stur         r0, [r2, #0x1b]
    // 0x3ab098: r1 = pp[0x5c58]
    //     0x3ab098: ldr          r1, [PP, #0x5c58]
    // 0x3ab09c: r0 = call 0x61e854
    //     0x3ab09c: bl           0x61e854
    // 0x3ab0a0: r1 = r0
    //     0x3ab0a0: mov          r1, r0
    //     0x3ab0a4: ldur         r0, [fp, #-0x10]
    //     0x3ab0a8: stur         r1, [fp, #-8]
    // 0x3ab0ac: StoreField: r1->field_f = r0
    //     0x3ab0ac: stur         r0, [r1, #0xf]
    //     0x3ab0b0: mov          r0, #8
    // 0x3ab0b4: StoreField: r1->field_b = r0
    //     0x3ab0b4: stur         r0, [r1, #0xb]
    // 0x3ab0b8: r0 = call 0x39310c
    //     0x3ab0b8: bl           0x39310c
    // 0x3ab0bc: r1 = r0
    //     0x3ab0bc: mov          r1, r0
    // 0x3ab0c0: r0 = pp[0x862]
    //     0x3ab0c0: add          r0, PP, #0xa, lsl #12
    //     0x3ab0c4: ldr          r0, [r0, #0x858]
    //     0x3ab0c8: stur         r1, [fp, #-0x10]
    // 0x3ab0cc: StoreField: r1->field_f = r0
    //     0x3ab0cc: stur         r0, [r1, #0xf]
    // 0x3ab0d0: r2 = pp[0xaee]
    //     0x3ab0d0: add          r2, PP, #0xe, lsl #12
    //     0x3ab0d4: ldr          r2, [r2, #0xae0]
    // 0x3ab0d8: StoreField: r1->field_13 = r2
    //     0x3ab0d8: stur         r2, [r1, #0x13]
    // 0x3ab0dc: r3 = pp[0xaf6]
    //     0x3ab0dc: add          r3, PP, #0xe, lsl #12
    //     0x3ab0e0: ldr          r3, [r3, #0xae8]
    // 0x3ab0e4: ArrayStore: r1[0] = r3  ; List_8
    //     0x3ab0e4: stur         r3, [r1, #0x17]
    // 0x3ab0e8: r4 = pp[0xb6e]
    //     0x3ab0e8: add          r4, PP, #0xe, lsl #12
    //     0x3ab0ec: ldr          r4, [r4, #0xb60]
    // 0x3ab0f0: StoreField: r1->field_1b = r4
    //     0x3ab0f0: stur         r4, [r1, #0x1b]
    // 0x3ab0f4: r5 = pp[0xb06]
    //     0x3ab0f4: add          r5, PP, #0xe, lsl #12
    //     0x3ab0f8: ldr          r5, [r5, #0xaf8]
    // 0x3ab0fc: StoreField: r1->field_23 = r5
    //     0x3ab0fc: stur         r5, [r1, #0x23]
    // 0x3ab100: r6 = pp[0xb2]
    //     0x3ab100: add          r6, PP, #0xa, lsl #12
    //     0x3ab104: ldr          r6, [r6, #0xa8]
    // 0x3ab108: StoreField: r1->field_2b = r6
    //     0x3ab108: stur         r6, [r1, #0x2b]
    // 0x3ab10c: StoreField: r1->field_2f = xzr
    //     0x3ab10c: stur         xzr, [r1, #0x2f]
    //     0x3ab110: ldur         r7, [fp, #-8]
    // 0x3ab114: StoreField: r1->field_b = r7
    //     0x3ab114: stur         r7, [r1, #0xb]
    // 0x3ab118: r0 = call 0x391a04
    //     0x3ab118: bl           0x391a04
    //     0x3ab11c: stur         r0, [fp, #-8]
    //     0x3ab120: ldur         BARRIER, [fp, #-0x50]
    //     0x3ab124: ldur         lr, [fp, #-0x10]
    //     0x3ab128: stp          lr, BARRIER, [SP]
    // 0x3ab12c: r1 = r0
    //     0x3ab12c: mov          r1, r0
    // 0x3ab130: r4 = pp[0x20f]
    //     0x3ab130: add          r4, PP, #0xf, lsl #12
    //     0x3ab134: ldr          r4, [r4, #0x200]
    // 0x3ab138: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3ab138: bl           0x391490
    // 0x3ab13c: r1 = pp[0xade]
    //     0x3ab13c: add          r1, PP, #0xe, lsl #12
    //     0x3ab140: ldr          r1, [r1, #0xad0]
    // 0x3ab144: r0 = call 0x39fb14
    //     0x3ab144: bl           0x39fb14
    // 0x3ab148: r3 = r0
    //     0x3ab148: mov          r3, r0
    //     0x3ab14c: mov          r0, #1
    //     0x3ab150: stur         r3, [fp, #-0x10]
    // 0x3ab154: StoreField: r3->field_13 = r0
    //     0x3ab154: stur         r0, [r3, #0x13]
    // 0x3ab158: r0 = pp[0xae6]
    //     0x3ab158: add          r0, PP, #0xe, lsl #12
    //     0x3ab15c: ldr          r0, [r0, #0xad8]
    // 0x3ab160: StoreField: r3->field_1b = r0
    //     0x3ab160: stur         r0, [r3, #0x1b]
    //     0x3ab164: ldur         r0, [fp, #-8]
    // 0x3ab168: StoreField: r3->field_b = r0
    //     0x3ab168: stur         r0, [r3, #0xb]
    // 0x3ab16c: r1 = NULL
    //     0x3ab16c: mov          r1, NULL
    //     0x3ab170: mov          r2, #4
    // 0x3ab174: r0 = call 0x61f920
    //     0x3ab174: bl           0x61f920
    // 0x3ab178: r2 = r0
    //     0x3ab178: mov          r2, r0
    //     0x3ab17c: ldur         r0, [fp, #-0x28]
    //     0x3ab180: stur         r2, [fp, #-8]
    // 0x3ab184: StoreField: r2->field_f = r0
    //     0x3ab184: stur         r0, [r2, #0xf]
    //     0x3ab188: ldur         r0, [fp, #-0x10]
    // 0x3ab18c: StoreField: r2->field_13 = r0
    //     0x3ab18c: stur         r0, [r2, #0x13]
    // 0x3ab190: r1 = pp[0x5c58]
    //     0x3ab190: ldr          r1, [PP, #0x5c58]
    // 0x3ab194: r0 = call 0x61e854
    //     0x3ab194: bl           0x61e854
    // 0x3ab198: r1 = r0
    //     0x3ab198: mov          r1, r0
    //     0x3ab19c: ldur         r0, [fp, #-8]
    //     0x3ab1a0: stur         r1, [fp, #-0x10]
    // 0x3ab1a4: StoreField: r1->field_f = r0
    //     0x3ab1a4: stur         r0, [r1, #0xf]
    //     0x3ab1a8: mov          r0, #4
    // 0x3ab1ac: StoreField: r1->field_b = r0
    //     0x3ab1ac: stur         r0, [r1, #0xb]
    // 0x3ab1b0: r0 = call 0x39310c
    //     0x3ab1b0: bl           0x39310c
    // 0x3ab1b4: r1 = r0
    //     0x3ab1b4: mov          r1, r0
    // 0x3ab1b8: r0 = pp[0x862]
    //     0x3ab1b8: add          r0, PP, #0xa, lsl #12
    //     0x3ab1bc: ldr          r0, [r0, #0x858]
    //     0x3ab1c0: stur         r1, [fp, #-8]
    // 0x3ab1c4: StoreField: r1->field_f = r0
    //     0x3ab1c4: stur         r0, [r1, #0xf]
    // 0x3ab1c8: r0 = pp[0xaee]
    //     0x3ab1c8: add          r0, PP, #0xe, lsl #12
    //     0x3ab1cc: ldr          r0, [r0, #0xae0]
    // 0x3ab1d0: StoreField: r1->field_13 = r0
    //     0x3ab1d0: stur         r0, [r1, #0x13]
    // 0x3ab1d4: r0 = pp[0xaf6]
    //     0x3ab1d4: add          r0, PP, #0xe, lsl #12
    //     0x3ab1d8: ldr          r0, [r0, #0xae8]
    // 0x3ab1dc: ArrayStore: r1[0] = r0  ; List_8
    //     0x3ab1dc: stur         r0, [r1, #0x17]
    // 0x3ab1e0: r0 = pp[0xb6e]
    //     0x3ab1e0: add          r0, PP, #0xe, lsl #12
    //     0x3ab1e4: ldr          r0, [r0, #0xb60]
    // 0x3ab1e8: StoreField: r1->field_1b = r0
    //     0x3ab1e8: stur         r0, [r1, #0x1b]
    // 0x3ab1ec: r0 = pp[0xb06]
    //     0x3ab1ec: add          r0, PP, #0xe, lsl #12
    //     0x3ab1f0: ldr          r0, [r0, #0xaf8]
    // 0x3ab1f4: StoreField: r1->field_23 = r0
    //     0x3ab1f4: stur         r0, [r1, #0x23]
    // 0x3ab1f8: r0 = pp[0xb2]
    //     0x3ab1f8: add          r0, PP, #0xa, lsl #12
    //     0x3ab1fc: ldr          r0, [r0, #0xa8]
    // 0x3ab200: StoreField: r1->field_2b = r0
    //     0x3ab200: stur         r0, [r1, #0x2b]
    // 0x3ab204: StoreField: r1->field_2f = xzr
    //     0x3ab204: stur         xzr, [r1, #0x2f]
    //     0x3ab208: ldur         r0, [fp, #-0x10]
    // 0x3ab20c: StoreField: r1->field_b = r0
    //     0x3ab20c: stur         r0, [r1, #0xb]
    // 0x3ab210: r0 = call 0x391a04
    //     0x3ab210: bl           0x391a04
    //     0x3ab214: stur         r0, [fp, #-0x10]
    //     0x3ab218: ldur         BARRIER, [fp, #-0x40]
    //     0x3ab21c: ldur         lr, [fp, #-8]
    //     0x3ab220: stp          lr, BARRIER, [SP]
    // 0x3ab224: r1 = r0
    //     0x3ab224: mov          r1, r0
    // 0x3ab228: r4 = pp[0x20f]
    //     0x3ab228: add          r4, PP, #0xf, lsl #12
    //     0x3ab22c: ldr          r4, [r4, #0x200]
    // 0x3ab230: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3ab230: bl           0x391490
    //     0x3ab234: ldur         r0, [fp, #-0x10]
    // 0x3ab238: SP = fp
    //     0x3ab238: mov          SP, fp
    // 0x3ab23c: LeaveFrame
    //     0x3ab23c: ldp          fp, lr, [SP], #0x10
    // 0x3ab240: ret
    //     0x3ab240: ret          
    // 0x3ab244: r0 = call 0x61fa28
    //     0x3ab244: bl           0x61fa28
    // 0x3ab248: b 0x3aa84c
    //     0x3ab248: b            0x3aa84c
    //     0x3ab24c: stp          q0, q1, [SP, #-0x20]!
    // 0x3ab250: r0 = call 0x61f878
    //     0x3ab250: bl           0x61f878
    // 0x3ab254: r1 = r0
    //     0x3ab254: mov          r1, r0
    //     0x3ab258: ldp          q0, q1, [SP], #0x20
    // 0x3ab25c: b 0x3aa8a4
    //     0x3ab25c: b            0x3aa8a4
    //     0x3ab260: stp          q1, q3, [SP, #-0x20]!
    //     0x3ab264: stp          r1, r2, [SP, #-0x10]!
    // 0x3ab268: r0 = call 0x61f878
    //     0x3ab268: bl           0x61f878
    //     0x3ab26c: ldp          r1, r2, [SP], #0x10
    //     0x3ab270: ldp          q1, q3, [SP], #0x20
    // 0x3ab274: b 0x3aa92c
    //     0x3ab274: b            0x3aa92c
    //     0x3ab278: str          q1, [SP, #-0x10]!
    //     0x3ab27c: stp          r1, r2, [SP, #-0x10]!
    // 0x3ab280: r0 = call 0x61f878
    //     0x3ab280: bl           0x61f878
    //     0x3ab284: ldp          r1, r2, [SP], #0x10
    //     0x3ab288: ldr          q1, [SP], #0x10
    // 0x3ab28c: b 0x3aa978
    //     0x3ab28c: b            0x3aa978
  }

  _anon_closure() {
    // ** addr: 0x3ab72c, size: 0x68
    // 0x3ab72c: EnterFrame
    //     0x3ab72c: stp          fp, lr, [SP, #-0x10]!
    //     0x3ab730: mov          fp, SP
    // 0x3ab734: AllocStack(8)
    //     0x3ab734: sub          SP, SP, #8
    //     0x3ab738: ldr          r0, [fp, #0x10]
    // 0x3ab73c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x3ab73c: ldur         r1, [r0, #0x17]
    //     0x3ab740: add          r1, r1, HEAP, lsl #32
    // 0x3ab744: CheckStackOverflow
    //     0x3ab744: ldr          BARRIER, [THR, #0x38]
    //     0x3ab748: cmp          SP, BARRIER
    //     0x3ab74c: b.ls         0x3ab78c
    // 0x3ab750: LoadField: r2 = r1->field_f
    //     0x3ab750: ldur         r2, [r1, #0xf]
    //     0x3ab754: add          r2, r2, HEAP, lsl #32
    // 0x3ab758: LoadField: r0 = r2->field_b
    //     0x3ab758: ldur         r0, [r2, #0xb]
    //     0x3ab75c: add          r0, r0, HEAP, lsl #32
    //     0x3ab760: stur         r0, [fp, #-8]
    // 0x3ab764: r1 = pp[0x33a]
    //     0x3ab764: add          r1, PP, #0x12, lsl #12
    //     0x3ab768: ldr          r1, [r1, #0x328]
    // 0x3ab76c: r0 = call 0x61ec54
    //     0x3ab76c: bl           0x61ec54
    //     0x3ab770: ldur         r1, [fp, #-8]
    // 0x3ab774: r2 = r0
    //     0x3ab774: mov          r2, r0
    // 0x3ab778: r0 = soul_flutter_international$biz$party$notifier$notifier_party_package_history_LuckyBagHistoryListItemNotifier::requestLuckyBagHistoryList()
    //     0x3ab778: bl           0x3ab794
    // 0x3ab77c: r0 = NULL
    //     0x3ab77c: mov          r0, NULL
    // 0x3ab780: SP = fp
    //     0x3ab780: mov          SP, fp
    // 0x3ab784: LeaveFrame
    //     0x3ab784: ldp          fp, lr, [SP], #0x10
    // 0x3ab788: ret
    //     0x3ab788: ret          
    // 0x3ab78c: r0 = call 0x61fa28
    //     0x3ab78c: bl           0x61fa28
    // 0x3ab790: b 0x3ab750
    //     0x3ab790: b            0x3ab750
  }

  _onLoaded() {
    // ** addr: 0x3adb08, size: 0x40
    // 0x3adb08: EnterFrame
    //     0x3adb08: stp          fp, lr, [SP, #-0x10]!
    //     0x3adb0c: mov          fp, SP
    //     0x3adb10: ldr          r0, [fp, #0x20]
    // 0x3adb14: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x3adb14: ldur         r1, [r0, #0x17]
    //     0x3adb18: add          r1, r1, HEAP, lsl #32
    // 0x3adb1c: CheckStackOverflow
    //     0x3adb1c: ldr          BARRIER, [THR, #0x38]
    //     0x3adb20: cmp          SP, BARRIER
    //     0x3adb24: b.ls         0x3adb40
    //     0x3adb28: ldr          r2, [fp, #0x18]
    //     0x3adb2c: ldr          r3, [fp, #0x10]
    // 0x3adb30: r0 = soul_flutter_international$biz$party$page_party_lucky_bag_history__PagePartyLuckyBagHistoryList::_onLoaded()
    //     0x3adb30: bl           0x3adb48
    // 0x3adb34: SP = fp
    //     0x3adb34: mov          SP, fp
    // 0x3adb38: LeaveFrame
    //     0x3adb38: ldp          fp, lr, [SP], #0x10
    // 0x3adb3c: ret
    //     0x3adb3c: ret          
    // 0x3adb40: r0 = call 0x61fa28
    //     0x3adb40: bl           0x61fa28
    // 0x3adb44: b 0x3adb28
    //     0x3adb44: b            0x3adb28
  }

  _onLoaded() {
    // ** addr: 0x3adb48, size: 0x6c
    // 0x3adb48: EnterFrame
    //     0x3adb48: stp          fp, lr, [SP, #-0x10]!
    //     0x3adb4c: mov          fp, SP
    // 0x3adb50: CheckStackOverflow
    //     0x3adb50: ldr          BARRIER, [THR, #0x38]
    //     0x3adb54: cmp          SP, BARRIER
    //     0x3adb58: b.ls         0x3adbac
    //     0x3adb5c: tbnz         r2, #4, 0x3adb8c
    //     0x3adb60: tbnz         r3, #4, 0x3adb78
    // 0x3adb64: LoadField: r0 = r1->field_f
    //     0x3adb64: ldur         r0, [r1, #0xf]
    //     0x3adb68: add          r0, r0, HEAP, lsl #32
    // 0x3adb6c: r1 = r0
    //     0x3adb6c: mov          r1, r0
    // 0x3adb70: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadNoData()
    //     0x3adb70: bl           0x3adfd4
    // 0x3adb74: b 0x3adb9c
    //     0x3adb74: b            0x3adb9c
    // 0x3adb78: LoadField: r0 = r1->field_f
    //     0x3adb78: ldur         r0, [r1, #0xf]
    //     0x3adb7c: add          r0, r0, HEAP, lsl #32
    // 0x3adb80: r1 = r0
    //     0x3adb80: mov          r1, r0
    // 0x3adb84: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadComplete()
    //     0x3adb84: bl           0x3ade48
    // 0x3adb88: b 0x3adb9c
    //     0x3adb88: b            0x3adb9c
    // 0x3adb8c: LoadField: r0 = r1->field_f
    //     0x3adb8c: ldur         r0, [r1, #0xf]
    //     0x3adb90: add          r0, r0, HEAP, lsl #32
    // 0x3adb94: r1 = r0
    //     0x3adb94: mov          r1, r0
    // 0x3adb98: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadFailed()
    //     0x3adb98: bl           0x3adbb4
    // 0x3adb9c: r0 = NULL
    //     0x3adb9c: mov          r0, NULL
    // 0x3adba0: SP = fp
    //     0x3adba0: mov          SP, fp
    // 0x3adba4: LeaveFrame
    //     0x3adba4: ldp          fp, lr, [SP], #0x10
    // 0x3adba8: ret
    //     0x3adba8: ret          
    // 0x3adbac: r0 = call 0x61fa28
    //     0x3adbac: bl           0x61fa28
    // 0x3adbb0: b 0x3adb5c
    //     0x3adbb0: b            0x3adb5c
  }

  _anon_closure() {
    // ** addr: 0x3ae160, size: 0x734
    // 0x3ae160: EnterFrame
    //     0x3ae160: stp          fp, lr, [SP, #-0x10]!
    //     0x3ae164: mov          fp, SP
    // 0x3ae168: AllocStack(0x88)
    //     0x3ae168: sub          SP, SP, #0x88
    //     0x3ae16c: ldr          r0, [fp, #0x20]
    // 0x3ae170: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x3ae170: ldur         r2, [r0, #0x17]
    //     0x3ae174: add          r2, r2, HEAP, lsl #32
    //     0x3ae178: stur         r2, [fp, #-0x10]
    // 0x3ae17c: CheckStackOverflow
    //     0x3ae17c: ldr          BARRIER, [THR, #0x38]
    //     0x3ae180: cmp          SP, BARRIER
    //     0x3ae184: b.ls         0x3ae864
    // 0x3ae188: LoadField: r0 = r2->field_f
    //     0x3ae188: ldur         r0, [r2, #0xf]
    //     0x3ae18c: add          r0, r0, HEAP, lsl #32
    // 0x3ae190: LoadField: r1 = r0->field_b
    //     0x3ae190: ldur         r1, [r0, #0xb]
    //     0x3ae194: add          r1, r1, HEAP, lsl #32
    // 0x3ae198: LoadField: r3 = r1->field_2b
    //     0x3ae198: ldur         r3, [r1, #0x2b]
    //     0x3ae19c: add          r3, r3, HEAP, lsl #32
    // 0x3ae1a0: LoadField: r0 = r3->field_b
    //     0x3ae1a0: ldur         r0, [r3, #0xb]
    //     0x3ae1a4: ldr          r1, [fp, #0x10]
    //     0x3ae1a8: sbfx         r4, r1, #1, #0x1f
    // 0x3ae1ac: branchIfSmi(r1, 0x3ae1b4)
    //     0x3ae1ac: tbz          r1, #0, 0x3ae1b4
    // 0x3ae1b0: LoadField: r4 = r1->field_7
    //     0x3ae1b0: ldur         r4, [r1, #7]
    //     0x3ae1b4: sbfx         r1, r0, #1, #0x1f
    // 0x3ae1b8: r0 = r1
    //     0x3ae1b8: mov          r0, r1
    // 0x3ae1bc: r1 = r4
    //     0x3ae1bc: mov          r1, r4
    //     0x3ae1c0: cmp          r1, r0
    // 0x3ae1c4: b.hs 0x3ae86c
    //     0x3ae1c4: b.hs         0x3ae86c
    // 0x3ae1c8: LoadField: r0 = r3->field_f
    //     0x3ae1c8: ldur         r0, [r3, #0xf]
    //     0x3ae1cc: add          r0, r0, HEAP, lsl #32
    //     0x3ae1d0: add          BARRIER, r0, r4, lsl #2
    // 0x3ae1d4: LoadField: r1 = BARRIER->field_f
    //     0x3ae1d4: ldur         r1, [BARRIER, #0xf]
    //     0x3ae1d8: add          r1, r1, HEAP, lsl #32
    //     0x3ae1dc: stur         r1, [fp, #-8]
    // 0x3ae1e0: r0 = call 0x2e3578
    //     0x3ae1e0: bl           0x2e3578
    //     0x3ae1e4: stur         r0, [fp, #-0x38]
    // 0x3ae1e8: StoreField: r0->field_7 = xzr
    //     0x3ae1e8: stur         xzr, [r0, #7]
    // 0x3ae1ec: StoreField: r0->field_f = xzr
    //     0x3ae1ec: stur         xzr, [r0, #0xf]
    // 0x3ae1f0: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3ae1f0: stur         xzr, [r0, #0x17]
    //     0x3ae1f4: fmov         d0, #8.00000000
    // 0x3ae1f8: StoreField: r0->field_1f = d0
    //     0x3ae1f8: stur         d0, [r0, #0x1f]
    //     0x3ae1fc: ldur         r1, [fp, #-0x10]
    // 0x3ae200: LoadField: r2 = r1->field_13
    //     0x3ae200: ldur         r2, [r1, #0x13]
    //     0x3ae204: add          r2, r2, HEAP, lsl #32
    //     0x3ae208: stur         r2, [fp, #-0x30]
    // 0x3ae20c: ArrayLoad: r3 = r1[0]  ; List_8
    //     0x3ae20c: ldur         r3, [r1, #0x17]
    //     0x3ae210: add          r3, r3, HEAP, lsl #32
    //     0x3ae214: ldur         r4, [fp, #-8]
    //     0x3ae218: stur         r3, [fp, #-0x28]
    // 0x3ae21c: LoadField: r5 = r4->field_7
    //     0x3ae21c: ldur         r5, [r4, #7]
    //     0x3ae220: add          r5, r5, HEAP, lsl #32
    // 0x3ae224: BARRIER = pp[0x40]
    //     0x3ae224: ldr          BARRIER, [PP, #0x40]
    //     0x3ae228: cmp          r5, r16
    // 0x3ae22c: b.eq 0x3ae870
    //     0x3ae22c: b.eq         0x3ae870
    //     0x3ae230: stur         r5, [fp, #-0x20]
    // 0x3ae234: LoadField: r6 = r1->field_2b
    //     0x3ae234: ldur         r6, [r1, #0x2b]
    //     0x3ae238: add          r6, r6, HEAP, lsl #32
    //     0x3ae23c: stur         r6, [fp, #-0x18]
    // 0x3ae240: r0 = call 0x393bf8
    //     0x3ae240: bl           0x393bf8
    // 0x3ae244: r1 = r0
    //     0x3ae244: mov          r1, r0
    //     0x3ae248: ldur         r0, [fp, #-0x20]
    //     0x3ae24c: stur         r1, [fp, #-0x40]
    // 0x3ae250: StoreField: r1->field_b = r0
    //     0x3ae250: stur         r0, [r1, #0xb]
    //     0x3ae254: ldur         r0, [fp, #-0x18]
    // 0x3ae258: StoreField: r1->field_13 = r0
    //     0x3ae258: stur         r0, [r1, #0x13]
    // 0x3ae25c: r0 = pp[0x53a8]
    //     0x3ae25c: ldr          r0, [PP, #0x53a8]
    // 0x3ae260: StoreField: r1->field_1b = r0
    //     0x3ae260: stur         r0, [r1, #0x1b]
    // 0x3ae264: r2 = pp[0x23f]
    //     0x3ae264: add          r2, PP, #0xf, lsl #12
    //     0x3ae268: ldr          r2, [r2, #0x230]
    // 0x3ae26c: StoreField: r1->field_2b = r2
    //     0x3ae26c: stur         r2, [r1, #0x2b]
    //     0x3ae270: mov          r3, #2
    // 0x3ae274: StoreField: r1->field_37 = r3
    //     0x3ae274: stur         r3, [r1, #0x37]
    // 0x3ae278: r0 = call 0x391a04
    //     0x3ae278: bl           0x391a04
    //     0x3ae27c: stur         r0, [fp, #-0x18]
    // 0x3ae280: BARRIER = pp[0xc80]
    //     0x3ae280: add          BARRIER, PP, #0x10, lsl #12
    //     0x3ae284: ldr          BARRIER, [BARRIER, #0xc70]
    //     0x3ae288: ldur         lr, [fp, #-0x38]
    //     0x3ae28c: stp          lr, BARRIER, [SP, #0x18]
    //     0x3ae290: ldur         BARRIER, [fp, #-0x30]
    //     0x3ae294: ldur         lr, [fp, #-0x28]
    //     0x3ae298: stp          lr, BARRIER, [SP, #8]
    //     0x3ae29c: ldur         BARRIER, [fp, #-0x40]
    //     0x3ae2a0: str          BARRIER, [SP]
    // 0x3ae2a4: r1 = r0
    //     0x3ae2a4: mov          r1, r0
    // 0x3ae2a8: r4 = pp[0x342]
    //     0x3ae2a8: add          r4, PP, #0x12, lsl #12
    //     0x3ae2ac: ldr          r4, [r4, #0x330]
    // 0x3ae2b0: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3ae2b0: bl           0x391490
    // 0x3ae2b4: r0 = call 0x2e3578
    //     0x3ae2b4: bl           0x2e3578
    //     0x3ae2b8: stur         r0, [fp, #-0x38]
    // 0x3ae2bc: StoreField: r0->field_7 = xzr
    //     0x3ae2bc: stur         xzr, [r0, #7]
    // 0x3ae2c0: StoreField: r0->field_f = xzr
    //     0x3ae2c0: stur         xzr, [r0, #0xf]
    // 0x3ae2c4: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3ae2c4: stur         xzr, [r0, #0x17]
    //     0x3ae2c8: fmov         d0, #8.00000000
    // 0x3ae2cc: StoreField: r0->field_1f = d0
    //     0x3ae2cc: stur         d0, [r0, #0x1f]
    //     0x3ae2d0: ldur         r1, [fp, #-0x10]
    // 0x3ae2d4: LoadField: r2 = r1->field_23
    //     0x3ae2d4: ldur         r2, [r1, #0x23]
    //     0x3ae2d8: add          r2, r2, HEAP, lsl #32
    //     0x3ae2dc: stur         r2, [fp, #-0x20]
    // 0x3ae2e0: r0 = call 0x3949ec
    //     0x3ae2e0: bl           0x3949ec
    // 0x3ae2e4: r1 = r0
    //     0x3ae2e4: mov          r1, r0
    //     0x3ae2e8: ldur         r0, [fp, #-0x20]
    //     0x3ae2ec: stur         r1, [fp, #-0x40]
    // 0x3ae2f0: StoreField: r1->field_f = r0
    //     0x3ae2f0: stur         r0, [r1, #0xf]
    //     0x3ae2f4: ldur         r0, [fp, #-0x10]
    // 0x3ae2f8: LoadField: r2 = r0->field_1b
    //     0x3ae2f8: ldur         r2, [r0, #0x1b]
    //     0x3ae2fc: add          r2, r2, HEAP, lsl #32
    //     0x3ae300: stur         r2, [fp, #-0x20]
    // 0x3ae304: r0 = call 0x3a142c
    //     0x3ae304: bl           0x3a142c
    // 0x3ae308: r1 = r0
    //     0x3ae308: mov          r1, r0
    // 0x3ae30c: r0 = pp[0x257]
    //     0x3ae30c: add          r0, PP, #0xf, lsl #12
    //     0x3ae310: ldr          r0, [r0, #0x248]
    //     0x3ae314: stur         r1, [fp, #-0x48]
    // 0x3ae318: StoreField: r1->field_b = r0
    //     0x3ae318: stur         r0, [r1, #0xb]
    // 0x3ae31c: r0 = pp[0x17f]
    //     0x3ae31c: add          r0, PP, #0xf, lsl #12
    //     0x3ae320: ldr          r0, [r0, #0x170]
    // 0x3ae324: StoreField: r1->field_f = r0
    //     0x3ae324: stur         r0, [r1, #0xf]
    //     0x3ae328: ldur         r2, [fp, #-0x20]
    // 0x3ae32c: StoreField: r1->field_13 = r2
    //     0x3ae32c: stur         r2, [r1, #0x13]
    // 0x3ae330: ArrayStore: r1[0] = r2  ; List_8
    //     0x3ae330: stur         r2, [r1, #0x17]
    // 0x3ae334: r0 = call 0x3949ec
    //     0x3ae334: bl           0x3949ec
    // 0x3ae338: r1 = r0
    //     0x3ae338: mov          r1, r0
    // 0x3ae33c: r0 = pp[0x34a]
    //     0x3ae33c: add          r0, PP, #0x12, lsl #12
    //     0x3ae340: ldr          r0, [r0, #0x338]
    //     0x3ae344: stur         r1, [fp, #-0x58]
    // 0x3ae348: StoreField: r1->field_f = r0
    //     0x3ae348: stur         r0, [r1, #0xf]
    //     0x3ae34c: ldur         r0, [fp, #-8]
    // 0x3ae350: LoadField: r2 = r0->field_b
    //     0x3ae350: ldur         r2, [r0, #0xb]
    //     0x3ae354: add          r2, r2, HEAP, lsl #32
    // 0x3ae358: BARRIER = pp[0x40]
    //     0x3ae358: ldr          BARRIER, [PP, #0x40]
    //     0x3ae35c: cmp          r2, r16
    // 0x3ae360: b.eq 0x3ae87c
    //     0x3ae360: b.eq         0x3ae87c
    //     0x3ae364: ldur         r3, [fp, #-0x10]
    //     0x3ae368: stur         r2, [fp, #-0x50]
    // 0x3ae36c: LoadField: r4 = r3->field_2b
    //     0x3ae36c: ldur         r4, [r3, #0x2b]
    //     0x3ae370: add          r4, r4, HEAP, lsl #32
    //     0x3ae374: stur         r4, [fp, #-0x20]
    // 0x3ae378: r0 = call 0x393bf8
    //     0x3ae378: bl           0x393bf8
    // 0x3ae37c: r2 = r0
    //     0x3ae37c: mov          r2, r0
    //     0x3ae380: ldur         r0, [fp, #-0x50]
    //     0x3ae384: stur         r2, [fp, #-0x60]
    // 0x3ae388: StoreField: r2->field_b = r0
    //     0x3ae388: stur         r0, [r2, #0xb]
    //     0x3ae38c: ldur         r0, [fp, #-0x20]
    // 0x3ae390: StoreField: r2->field_13 = r0
    //     0x3ae390: stur         r0, [r2, #0x13]
    // 0x3ae394: r0 = pp[0x53a8]
    //     0x3ae394: ldr          r0, [PP, #0x53a8]
    // 0x3ae398: StoreField: r2->field_1b = r0
    //     0x3ae398: stur         r0, [r2, #0x1b]
    // 0x3ae39c: r3 = pp[0x23f]
    //     0x3ae39c: add          r3, PP, #0xf, lsl #12
    //     0x3ae3a0: ldr          r3, [r3, #0x230]
    // 0x3ae3a4: StoreField: r2->field_2b = r3
    //     0x3ae3a4: stur         r3, [r2, #0x2b]
    //     0x3ae3a8: mov          r4, #2
    // 0x3ae3ac: StoreField: r2->field_37 = r4
    //     0x3ae3ac: stur         r4, [r2, #0x37]
    // 0x3ae3b0: r1 = pp[0xade]
    //     0x3ae3b0: add          r1, PP, #0xe, lsl #12
    //     0x3ae3b4: ldr          r1, [r1, #0xad0]
    // 0x3ae3b8: r0 = call 0x3a1420
    //     0x3ae3b8: bl           0x3a1420
    // 0x3ae3bc: r3 = r0
    //     0x3ae3bc: mov          r3, r0
    //     0x3ae3c0: mov          r0, #1
    //     0x3ae3c4: stur         r3, [fp, #-0x20]
    // 0x3ae3c8: StoreField: r3->field_13 = r0
    //     0x3ae3c8: stur         r0, [r3, #0x13]
    // 0x3ae3cc: r4 = pp[0x960]
    //     0x3ae3cc: add          r4, PP, #0x10, lsl #12
    //     0x3ae3d0: ldr          r4, [r4, #0x950]
    // 0x3ae3d4: StoreField: r3->field_1b = r4
    //     0x3ae3d4: stur         r4, [r3, #0x1b]
    //     0x3ae3d8: ldur         r1, [fp, #-0x60]
    // 0x3ae3dc: StoreField: r3->field_b = r1
    //     0x3ae3dc: stur         r1, [r3, #0xb]
    // 0x3ae3e0: r1 = NULL
    //     0x3ae3e0: mov          r1, NULL
    //     0x3ae3e4: mov          r2, #8
    // 0x3ae3e8: r0 = call 0x61f920
    //     0x3ae3e8: bl           0x61f920
    // 0x3ae3ec: r2 = r0
    //     0x3ae3ec: mov          r2, r0
    //     0x3ae3f0: ldur         r0, [fp, #-0x40]
    //     0x3ae3f4: stur         r2, [fp, #-0x50]
    // 0x3ae3f8: StoreField: r2->field_f = r0
    //     0x3ae3f8: stur         r0, [r2, #0xf]
    //     0x3ae3fc: ldur         r0, [fp, #-0x48]
    // 0x3ae400: StoreField: r2->field_13 = r0
    //     0x3ae400: stur         r0, [r2, #0x13]
    //     0x3ae404: ldur         r0, [fp, #-0x58]
    // 0x3ae408: ArrayStore: r2[0] = r0  ; List_8
    //     0x3ae408: stur         r0, [r2, #0x17]
    //     0x3ae40c: ldur         r0, [fp, #-0x20]
    // 0x3ae410: StoreField: r2->field_1b = r0
    //     0x3ae410: stur         r0, [r2, #0x1b]
    // 0x3ae414: r1 = pp[0x5c58]
    //     0x3ae414: ldr          r1, [PP, #0x5c58]
    // 0x3ae418: r0 = call 0x61e854
    //     0x3ae418: bl           0x61e854
    // 0x3ae41c: r1 = r0
    //     0x3ae41c: mov          r1, r0
    //     0x3ae420: ldur         r0, [fp, #-0x50]
    //     0x3ae424: stur         r1, [fp, #-0x20]
    // 0x3ae428: StoreField: r1->field_f = r0
    //     0x3ae428: stur         r0, [r1, #0xf]
    //     0x3ae42c: mov          r0, #8
    // 0x3ae430: StoreField: r1->field_b = r0
    //     0x3ae430: stur         r0, [r1, #0xb]
    // 0x3ae434: r0 = call 0x3a1414
    //     0x3ae434: bl           0x3a1414
    // 0x3ae438: r1 = r0
    //     0x3ae438: mov          r1, r0
    // 0x3ae43c: r0 = pp[0x5140]
    //     0x3ae43c: ldr          r0, [PP, #0x5140]
    //     0x3ae440: stur         r1, [fp, #-0x40]
    // 0x3ae444: StoreField: r1->field_f = r0
    //     0x3ae444: stur         r0, [r1, #0xf]
    // 0x3ae448: r2 = pp[0xaee]
    //     0x3ae448: add          r2, PP, #0xe, lsl #12
    //     0x3ae44c: ldr          r2, [r2, #0xae0]
    // 0x3ae450: StoreField: r1->field_13 = r2
    //     0x3ae450: stur         r2, [r1, #0x13]
    // 0x3ae454: r3 = pp[0xaf6]
    //     0x3ae454: add          r3, PP, #0xe, lsl #12
    //     0x3ae458: ldr          r3, [r3, #0xae8]
    // 0x3ae45c: ArrayStore: r1[0] = r3  ; List_8
    //     0x3ae45c: stur         r3, [r1, #0x17]
    // 0x3ae460: r4 = pp[0xb6e]
    //     0x3ae460: add          r4, PP, #0xe, lsl #12
    //     0x3ae464: ldr          r4, [r4, #0xb60]
    // 0x3ae468: StoreField: r1->field_1b = r4
    //     0x3ae468: stur         r4, [r1, #0x1b]
    // 0x3ae46c: r5 = pp[0xb06]
    //     0x3ae46c: add          r5, PP, #0xe, lsl #12
    //     0x3ae470: ldr          r5, [r5, #0xaf8]
    // 0x3ae474: StoreField: r1->field_23 = r5
    //     0x3ae474: stur         r5, [r1, #0x23]
    // 0x3ae478: r6 = pp[0xb2]
    //     0x3ae478: add          r6, PP, #0xa, lsl #12
    //     0x3ae47c: ldr          r6, [r6, #0xa8]
    // 0x3ae480: StoreField: r1->field_2b = r6
    //     0x3ae480: stur         r6, [r1, #0x2b]
    // 0x3ae484: StoreField: r1->field_2f = xzr
    //     0x3ae484: stur         xzr, [r1, #0x2f]
    //     0x3ae488: ldur         r7, [fp, #-0x20]
    // 0x3ae48c: StoreField: r1->field_b = r7
    //     0x3ae48c: stur         r7, [r1, #0xb]
    // 0x3ae490: r0 = call 0x391a04
    //     0x3ae490: bl           0x391a04
    //     0x3ae494: stur         r0, [fp, #-0x20]
    // 0x3ae498: BARRIER = pp[0xc80]
    //     0x3ae498: add          BARRIER, PP, #0x10, lsl #12
    //     0x3ae49c: ldr          BARRIER, [BARRIER, #0xc70]
    //     0x3ae4a0: ldur         lr, [fp, #-0x38]
    //     0x3ae4a4: stp          lr, BARRIER, [SP, #0x18]
    //     0x3ae4a8: ldur         BARRIER, [fp, #-0x30]
    //     0x3ae4ac: ldur         lr, [fp, #-0x28]
    //     0x3ae4b0: stp          lr, BARRIER, [SP, #8]
    //     0x3ae4b4: ldur         BARRIER, [fp, #-0x40]
    //     0x3ae4b8: str          BARRIER, [SP]
    // 0x3ae4bc: r1 = r0
    //     0x3ae4bc: mov          r1, r0
    // 0x3ae4c0: r4 = pp[0x342]
    //     0x3ae4c0: add          r4, PP, #0x12, lsl #12
    //     0x3ae4c4: ldr          r4, [r4, #0x330]
    // 0x3ae4c8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3ae4c8: bl           0x391490
    // 0x3ae4cc: r0 = call 0x2e3578
    //     0x3ae4cc: bl           0x2e3578
    //     0x3ae4d0: stur         r0, [fp, #-0x40]
    // 0x3ae4d4: StoreField: r0->field_7 = xzr
    //     0x3ae4d4: stur         xzr, [r0, #7]
    // 0x3ae4d8: StoreField: r0->field_f = xzr
    //     0x3ae4d8: stur         xzr, [r0, #0xf]
    // 0x3ae4dc: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3ae4dc: stur         xzr, [r0, #0x17]
    //     0x3ae4e0: fmov         d0, #4.00000000
    // 0x3ae4e4: StoreField: r0->field_1f = d0
    //     0x3ae4e4: stur         d0, [r0, #0x1f]
    //     0x3ae4e8: ldur         r1, [fp, #-0x10]
    // 0x3ae4ec: LoadField: r2 = r1->field_27
    //     0x3ae4ec: ldur         r2, [r1, #0x27]
    //     0x3ae4f0: add          r2, r2, HEAP, lsl #32
    //     0x3ae4f4: stur         r2, [fp, #-0x38]
    // 0x3ae4f8: r0 = call 0x3949ec
    //     0x3ae4f8: bl           0x3949ec
    // 0x3ae4fc: r1 = r0
    //     0x3ae4fc: mov          r1, r0
    //     0x3ae500: ldur         r0, [fp, #-0x38]
    //     0x3ae504: stur         r1, [fp, #-0x48]
    // 0x3ae508: StoreField: r1->field_f = r0
    //     0x3ae508: stur         r0, [r1, #0xf]
    //     0x3ae50c: ldur         r0, [fp, #-0x10]
    // 0x3ae510: LoadField: r2 = r0->field_1f
    //     0x3ae510: ldur         r2, [r0, #0x1f]
    //     0x3ae514: add          r2, r2, HEAP, lsl #32
    //     0x3ae518: stur         r2, [fp, #-0x38]
    // 0x3ae51c: r0 = call 0x3a142c
    //     0x3ae51c: bl           0x3a142c
    // 0x3ae520: r1 = r0
    //     0x3ae520: mov          r1, r0
    // 0x3ae524: r0 = pp[0x352]
    //     0x3ae524: add          r0, PP, #0x12, lsl #12
    //     0x3ae528: ldr          r0, [r0, #0x340]
    //     0x3ae52c: stur         r1, [fp, #-0x50]
    // 0x3ae530: StoreField: r1->field_b = r0
    //     0x3ae530: stur         r0, [r1, #0xb]
    // 0x3ae534: r0 = pp[0x17f]
    //     0x3ae534: add          r0, PP, #0xf, lsl #12
    //     0x3ae538: ldr          r0, [r0, #0x170]
    // 0x3ae53c: StoreField: r1->field_f = r0
    //     0x3ae53c: stur         r0, [r1, #0xf]
    //     0x3ae540: ldur         r0, [fp, #-0x38]
    // 0x3ae544: StoreField: r1->field_13 = r0
    //     0x3ae544: stur         r0, [r1, #0x13]
    // 0x3ae548: ArrayStore: r1[0] = r0  ; List_8
    //     0x3ae548: stur         r0, [r1, #0x17]
    //     0x3ae54c: ldur         r0, [fp, #-8]
    // 0x3ae550: LoadField: r2 = r0->field_f
    //     0x3ae550: ldur         r2, [r0, #0xf]
    //     0x3ae554: add          r2, r2, HEAP, lsl #32
    // 0x3ae558: BARRIER = pp[0x40]
    //     0x3ae558: ldr          BARRIER, [PP, #0x40]
    //     0x3ae55c: cmp          r2, r16
    // 0x3ae560: b.eq 0x3ae888
    //     0x3ae560: b.eq         0x3ae888
    //     0x3ae564: ldur         r0, [fp, #-0x10]
    //     0x3ae568: stur         r2, [fp, #-0x38]
    // 0x3ae56c: LoadField: r3 = r0->field_2b
    //     0x3ae56c: ldur         r3, [r0, #0x2b]
    //     0x3ae570: add          r3, r3, HEAP, lsl #32
    //     0x3ae574: stur         r3, [fp, #-8]
    // 0x3ae578: r0 = call 0x393bf8
    //     0x3ae578: bl           0x393bf8
    // 0x3ae57c: r2 = r0
    //     0x3ae57c: mov          r2, r0
    //     0x3ae580: ldur         r0, [fp, #-0x38]
    //     0x3ae584: stur         r2, [fp, #-0x10]
    // 0x3ae588: StoreField: r2->field_b = r0
    //     0x3ae588: stur         r0, [r2, #0xb]
    //     0x3ae58c: ldur         r0, [fp, #-8]
    // 0x3ae590: StoreField: r2->field_13 = r0
    //     0x3ae590: stur         r0, [r2, #0x13]
    // 0x3ae594: r0 = pp[0x53a8]
    //     0x3ae594: ldr          r0, [PP, #0x53a8]
    // 0x3ae598: StoreField: r2->field_1b = r0
    //     0x3ae598: stur         r0, [r2, #0x1b]
    // 0x3ae59c: r0 = pp[0x23f]
    //     0x3ae59c: add          r0, PP, #0xf, lsl #12
    //     0x3ae5a0: ldr          r0, [r0, #0x230]
    // 0x3ae5a4: StoreField: r2->field_2b = r0
    //     0x3ae5a4: stur         r0, [r2, #0x2b]
    //     0x3ae5a8: mov          r0, #2
    // 0x3ae5ac: StoreField: r2->field_37 = r0
    //     0x3ae5ac: stur         r0, [r2, #0x37]
    // 0x3ae5b0: r1 = pp[0xade]
    //     0x3ae5b0: add          r1, PP, #0xe, lsl #12
    //     0x3ae5b4: ldr          r1, [r1, #0xad0]
    // 0x3ae5b8: r0 = call 0x3a1420
    //     0x3ae5b8: bl           0x3a1420
    // 0x3ae5bc: r3 = r0
    //     0x3ae5bc: mov          r3, r0
    //     0x3ae5c0: mov          r0, #1
    //     0x3ae5c4: stur         r3, [fp, #-8]
    // 0x3ae5c8: StoreField: r3->field_13 = r0
    //     0x3ae5c8: stur         r0, [r3, #0x13]
    // 0x3ae5cc: r0 = pp[0x960]
    //     0x3ae5cc: add          r0, PP, #0x10, lsl #12
    //     0x3ae5d0: ldr          r0, [r0, #0x950]
    // 0x3ae5d4: StoreField: r3->field_1b = r0
    //     0x3ae5d4: stur         r0, [r3, #0x1b]
    //     0x3ae5d8: ldur         r0, [fp, #-0x10]
    // 0x3ae5dc: StoreField: r3->field_b = r0
    //     0x3ae5dc: stur         r0, [r3, #0xb]
    // 0x3ae5e0: r1 = NULL
    //     0x3ae5e0: mov          r1, NULL
    //     0x3ae5e4: mov          r2, #6
    // 0x3ae5e8: r0 = call 0x61f920
    //     0x3ae5e8: bl           0x61f920
    // 0x3ae5ec: r2 = r0
    //     0x3ae5ec: mov          r2, r0
    //     0x3ae5f0: ldur         r0, [fp, #-0x48]
    //     0x3ae5f4: stur         r2, [fp, #-0x10]
    // 0x3ae5f8: StoreField: r2->field_f = r0
    //     0x3ae5f8: stur         r0, [r2, #0xf]
    //     0x3ae5fc: ldur         r0, [fp, #-0x50]
    // 0x3ae600: StoreField: r2->field_13 = r0
    //     0x3ae600: stur         r0, [r2, #0x13]
    //     0x3ae604: ldur         r0, [fp, #-8]
    // 0x3ae608: ArrayStore: r2[0] = r0  ; List_8
    //     0x3ae608: stur         r0, [r2, #0x17]
    // 0x3ae60c: r1 = pp[0x5c58]
    //     0x3ae60c: ldr          r1, [PP, #0x5c58]
    // 0x3ae610: r0 = call 0x61e854
    //     0x3ae610: bl           0x61e854
    // 0x3ae614: r1 = r0
    //     0x3ae614: mov          r1, r0
    //     0x3ae618: ldur         r0, [fp, #-0x10]
    //     0x3ae61c: stur         r1, [fp, #-8]
    // 0x3ae620: StoreField: r1->field_f = r0
    //     0x3ae620: stur         r0, [r1, #0xf]
    //     0x3ae624: mov          r2, #6
    // 0x3ae628: StoreField: r1->field_b = r2
    //     0x3ae628: stur         r2, [r1, #0xb]
    // 0x3ae62c: r0 = call 0x3a1414
    //     0x3ae62c: bl           0x3a1414
    // 0x3ae630: r1 = r0
    //     0x3ae630: mov          r1, r0
    // 0x3ae634: r0 = pp[0x5140]
    //     0x3ae634: ldr          r0, [PP, #0x5140]
    //     0x3ae638: stur         r1, [fp, #-0x10]
    // 0x3ae63c: StoreField: r1->field_f = r0
    //     0x3ae63c: stur         r0, [r1, #0xf]
    // 0x3ae640: r2 = pp[0xaee]
    //     0x3ae640: add          r2, PP, #0xe, lsl #12
    //     0x3ae644: ldr          r2, [r2, #0xae0]
    // 0x3ae648: StoreField: r1->field_13 = r2
    //     0x3ae648: stur         r2, [r1, #0x13]
    // 0x3ae64c: r3 = pp[0xaf6]
    //     0x3ae64c: add          r3, PP, #0xe, lsl #12
    //     0x3ae650: ldr          r3, [r3, #0xae8]
    // 0x3ae654: ArrayStore: r1[0] = r3  ; List_8
    //     0x3ae654: stur         r3, [r1, #0x17]
    // 0x3ae658: r4 = pp[0xb6e]
    //     0x3ae658: add          r4, PP, #0xe, lsl #12
    //     0x3ae65c: ldr          r4, [r4, #0xb60]
    // 0x3ae660: StoreField: r1->field_1b = r4
    //     0x3ae660: stur         r4, [r1, #0x1b]
    // 0x3ae664: r5 = pp[0xb06]
    //     0x3ae664: add          r5, PP, #0xe, lsl #12
    //     0x3ae668: ldr          r5, [r5, #0xaf8]
    // 0x3ae66c: StoreField: r1->field_23 = r5
    //     0x3ae66c: stur         r5, [r1, #0x23]
    // 0x3ae670: r6 = pp[0xb2]
    //     0x3ae670: add          r6, PP, #0xa, lsl #12
    //     0x3ae674: ldr          r6, [r6, #0xa8]
    // 0x3ae678: StoreField: r1->field_2b = r6
    //     0x3ae678: stur         r6, [r1, #0x2b]
    // 0x3ae67c: StoreField: r1->field_2f = xzr
    //     0x3ae67c: stur         xzr, [r1, #0x2f]
    //     0x3ae680: ldur         r7, [fp, #-8]
    // 0x3ae684: StoreField: r1->field_b = r7
    //     0x3ae684: stur         r7, [r1, #0xb]
    // 0x3ae688: r0 = call 0x391a04
    //     0x3ae688: bl           0x391a04
    //     0x3ae68c: stur         r0, [fp, #-8]
    // 0x3ae690: BARRIER = pp[0xc80]
    //     0x3ae690: add          BARRIER, PP, #0x10, lsl #12
    //     0x3ae694: ldr          BARRIER, [BARRIER, #0xc70]
    //     0x3ae698: ldur         lr, [fp, #-0x40]
    //     0x3ae69c: stp          lr, BARRIER, [SP, #0x18]
    //     0x3ae6a0: ldur         BARRIER, [fp, #-0x30]
    //     0x3ae6a4: ldur         lr, [fp, #-0x28]
    //     0x3ae6a8: stp          lr, BARRIER, [SP, #8]
    //     0x3ae6ac: ldur         BARRIER, [fp, #-0x10]
    //     0x3ae6b0: str          BARRIER, [SP]
    // 0x3ae6b4: r1 = r0
    //     0x3ae6b4: mov          r1, r0
    // 0x3ae6b8: r4 = pp[0x342]
    //     0x3ae6b8: add          r4, PP, #0x12, lsl #12
    //     0x3ae6bc: ldr          r4, [r4, #0x330]
    // 0x3ae6c0: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3ae6c0: bl           0x391490
    // 0x3ae6c4: r1 = NULL
    //     0x3ae6c4: mov          r1, NULL
    //     0x3ae6c8: mov          r2, #6
    // 0x3ae6cc: r0 = call 0x61f920
    //     0x3ae6cc: bl           0x61f920
    // 0x3ae6d0: r2 = r0
    //     0x3ae6d0: mov          r2, r0
    //     0x3ae6d4: ldur         r0, [fp, #-0x18]
    //     0x3ae6d8: stur         r2, [fp, #-0x10]
    // 0x3ae6dc: StoreField: r2->field_f = r0
    //     0x3ae6dc: stur         r0, [r2, #0xf]
    //     0x3ae6e0: ldur         r0, [fp, #-0x20]
    // 0x3ae6e4: StoreField: r2->field_13 = r0
    //     0x3ae6e4: stur         r0, [r2, #0x13]
    //     0x3ae6e8: ldur         r0, [fp, #-8]
    // 0x3ae6ec: ArrayStore: r2[0] = r0  ; List_8
    //     0x3ae6ec: stur         r0, [r2, #0x17]
    // 0x3ae6f0: r1 = pp[0x5c58]
    //     0x3ae6f0: ldr          r1, [PP, #0x5c58]
    // 0x3ae6f4: r0 = call 0x61e854
    //     0x3ae6f4: bl           0x61e854
    // 0x3ae6f8: r1 = r0
    //     0x3ae6f8: mov          r1, r0
    //     0x3ae6fc: ldur         r0, [fp, #-0x10]
    //     0x3ae700: stur         r1, [fp, #-8]
    // 0x3ae704: StoreField: r1->field_f = r0
    //     0x3ae704: stur         r0, [r1, #0xf]
    //     0x3ae708: mov          r0, #6
    // 0x3ae70c: StoreField: r1->field_b = r0
    //     0x3ae70c: stur         r0, [r1, #0xb]
    // 0x3ae710: r0 = call 0x3a1414
    //     0x3ae710: bl           0x3a1414
    // 0x3ae714: r1 = r0
    //     0x3ae714: mov          r1, r0
    // 0x3ae718: r0 = pp[0x5140]
    //     0x3ae718: ldr          r0, [PP, #0x5140]
    //     0x3ae71c: stur         r1, [fp, #-0x10]
    // 0x3ae720: StoreField: r1->field_f = r0
    //     0x3ae720: stur         r0, [r1, #0xf]
    // 0x3ae724: r0 = pp[0xaee]
    //     0x3ae724: add          r0, PP, #0xe, lsl #12
    //     0x3ae728: ldr          r0, [r0, #0xae0]
    // 0x3ae72c: StoreField: r1->field_13 = r0
    //     0x3ae72c: stur         r0, [r1, #0x13]
    // 0x3ae730: r2 = pp[0xaf6]
    //     0x3ae730: add          r2, PP, #0xe, lsl #12
    //     0x3ae734: ldr          r2, [r2, #0xae8]
    // 0x3ae738: ArrayStore: r1[0] = r2  ; List_8
    //     0x3ae738: stur         r2, [r1, #0x17]
    // 0x3ae73c: r3 = pp[0xb6e]
    //     0x3ae73c: add          r3, PP, #0xe, lsl #12
    //     0x3ae740: ldr          r3, [r3, #0xb60]
    // 0x3ae744: StoreField: r1->field_1b = r3
    //     0x3ae744: stur         r3, [r1, #0x1b]
    // 0x3ae748: r4 = pp[0xb06]
    //     0x3ae748: add          r4, PP, #0xe, lsl #12
    //     0x3ae74c: ldr          r4, [r4, #0xaf8]
    // 0x3ae750: StoreField: r1->field_23 = r4
    //     0x3ae750: stur         r4, [r1, #0x23]
    // 0x3ae754: r5 = pp[0xb2]
    //     0x3ae754: add          r5, PP, #0xa, lsl #12
    //     0x3ae758: ldr          r5, [r5, #0xa8]
    // 0x3ae75c: StoreField: r1->field_2b = r5
    //     0x3ae75c: stur         r5, [r1, #0x2b]
    // 0x3ae760: StoreField: r1->field_2f = xzr
    //     0x3ae760: stur         xzr, [r1, #0x2f]
    //     0x3ae764: ldur         r6, [fp, #-8]
    // 0x3ae768: StoreField: r1->field_b = r6
    //     0x3ae768: stur         r6, [r1, #0xb]
    // 0x3ae76c: r0 = call 0x31d844
    //     0x3ae76c: bl           0x31d844
    // 0x3ae770: r1 = r0
    //     0x3ae770: mov          r1, r0
    // 0x3ae774: r0 = pp[0x6310]
    //     0x3ae774: ldr          r0, [PP, #0x6310]
    //     0x3ae778: stur         r1, [fp, #-8]
    // 0x3ae77c: StoreField: r1->field_27 = r0
    //     0x3ae77c: stur         r0, [r1, #0x27]
    //     0x3ae780: fmov         d0, #1.00000000
    // 0x3ae784: StoreField: r1->field_7 = d0
    //     0x3ae784: stur         d0, [r1, #7]
    // 0x3ae788: StoreField: r1->field_f = d0
    //     0x3ae788: stur         d0, [r1, #0xf]
    // 0x3ae78c: d0 = pp[0xad0]
    //     0x3ae78c: add          r17, PP, #0x10, lsl #12
    //     0x3ae790: ldr          d0, [r17, #0xac0]
    // 0x3ae794: ArrayStore: r1[0] = d0  ; List_8
    //     0x3ae794: stur         d0, [r1, #0x17]
    // 0x3ae798: d0 = pp[0xad8]
    //     0x3ae798: add          r17, PP, #0x10, lsl #12
    //     0x3ae79c: ldr          d0, [r17, #0xac8]
    // 0x3ae7a0: StoreField: r1->field_1f = d0
    //     0x3ae7a0: stur         d0, [r1, #0x1f]
    // 0x3ae7a4: r0 = call 0x3ae894
    //     0x3ae7a4: bl           0x3ae894
    //     0x3ae7a8: fmov         d0, #0.50000000
    //     0x3ae7ac: stur         r0, [fp, #-0x18]
    // 0x3ae7b0: StoreField: r0->field_b = d0
    //     0x3ae7b0: stur         d0, [r0, #0xb]
    //     0x3ae7b4: ldur         r1, [fp, #-8]
    // 0x3ae7b8: StoreField: r0->field_1f = r1
    //     0x3ae7b8: stur         r1, [r0, #0x1f]
    // 0x3ae7bc: r1 = NULL
    //     0x3ae7bc: mov          r1, NULL
    //     0x3ae7c0: mov          r2, #4
    // 0x3ae7c4: r0 = call 0x61f920
    //     0x3ae7c4: bl           0x61f920
    // 0x3ae7c8: r2 = r0
    //     0x3ae7c8: mov          r2, r0
    //     0x3ae7cc: ldur         r0, [fp, #-0x10]
    //     0x3ae7d0: stur         r2, [fp, #-8]
    // 0x3ae7d4: StoreField: r2->field_f = r0
    //     0x3ae7d4: stur         r0, [r2, #0xf]
    //     0x3ae7d8: ldur         r0, [fp, #-0x18]
    // 0x3ae7dc: StoreField: r2->field_13 = r0
    //     0x3ae7dc: stur         r0, [r2, #0x13]
    // 0x3ae7e0: r1 = pp[0x5c58]
    //     0x3ae7e0: ldr          r1, [PP, #0x5c58]
    // 0x3ae7e4: r0 = call 0x61e854
    //     0x3ae7e4: bl           0x61e854
    // 0x3ae7e8: r1 = r0
    //     0x3ae7e8: mov          r1, r0
    //     0x3ae7ec: ldur         r0, [fp, #-8]
    //     0x3ae7f0: stur         r1, [fp, #-0x10]
    // 0x3ae7f4: StoreField: r1->field_f = r0
    //     0x3ae7f4: stur         r0, [r1, #0xf]
    //     0x3ae7f8: mov          r0, #4
    // 0x3ae7fc: StoreField: r1->field_b = r0
    //     0x3ae7fc: stur         r0, [r1, #0xb]
    // 0x3ae800: r0 = call 0x39310c
    //     0x3ae800: bl           0x39310c
    // 0x3ae804: r1 = pp[0x862]
    //     0x3ae804: add          r1, PP, #0xa, lsl #12
    //     0x3ae808: ldr          r1, [r1, #0x858]
    // 0x3ae80c: StoreField: r0->field_f = r1
    //     0x3ae80c: stur         r1, [r0, #0xf]
    // 0x3ae810: r1 = pp[0xaee]
    //     0x3ae810: add          r1, PP, #0xe, lsl #12
    //     0x3ae814: ldr          r1, [r1, #0xae0]
    // 0x3ae818: StoreField: r0->field_13 = r1
    //     0x3ae818: stur         r1, [r0, #0x13]
    // 0x3ae81c: r1 = pp[0xaf6]
    //     0x3ae81c: add          r1, PP, #0xe, lsl #12
    //     0x3ae820: ldr          r1, [r1, #0xae8]
    // 0x3ae824: ArrayStore: r0[0] = r1  ; List_8
    //     0x3ae824: stur         r1, [r0, #0x17]
    // 0x3ae828: r1 = pp[0xb6e]
    //     0x3ae828: add          r1, PP, #0xe, lsl #12
    //     0x3ae82c: ldr          r1, [r1, #0xb60]
    // 0x3ae830: StoreField: r0->field_1b = r1
    //     0x3ae830: stur         r1, [r0, #0x1b]
    // 0x3ae834: r1 = pp[0xb06]
    //     0x3ae834: add          r1, PP, #0xe, lsl #12
    //     0x3ae838: ldr          r1, [r1, #0xaf8]
    // 0x3ae83c: StoreField: r0->field_23 = r1
    //     0x3ae83c: stur         r1, [r0, #0x23]
    // 0x3ae840: r1 = pp[0xb2]
    //     0x3ae840: add          r1, PP, #0xa, lsl #12
    //     0x3ae844: ldr          r1, [r1, #0xa8]
    // 0x3ae848: StoreField: r0->field_2b = r1
    //     0x3ae848: stur         r1, [r0, #0x2b]
    // 0x3ae84c: StoreField: r0->field_2f = xzr
    //     0x3ae84c: stur         xzr, [r0, #0x2f]
    //     0x3ae850: ldur         r1, [fp, #-0x10]
    // 0x3ae854: StoreField: r0->field_b = r1
    //     0x3ae854: stur         r1, [r0, #0xb]
    // 0x3ae858: SP = fp
    //     0x3ae858: mov          SP, fp
    // 0x3ae85c: LeaveFrame
    //     0x3ae85c: ldp          fp, lr, [SP], #0x10
    // 0x3ae860: ret
    //     0x3ae860: ret          
    // 0x3ae864: r0 = call 0x61fa28
    //     0x3ae864: bl           0x61fa28
    // 0x3ae868: b 0x3ae188
    //     0x3ae868: b            0x3ae188
    // 0x3ae86c: r0 = call 0x61fe70
    //     0x3ae86c: bl           0x61fe70
    // 0x3ae870: r9 = pp[0x35a]
    //     0x3ae870: add          r9, PP, #0x12, lsl #12
    //     0x3ae874: ldr          r9, [r9, #0x348]
    // 0x3ae878: r0 = call 0x6202a8
    //     0x3ae878: bl           0x6202a8
    // 0x3ae87c: r9 = pp[0x362]
    //     0x3ae87c: add          r9, PP, #0x12, lsl #12
    //     0x3ae880: ldr          r9, [r9, #0x350]
    // 0x3ae884: r0 = call 0x620258
    //     0x3ae884: bl           0x620258
    // 0x3ae888: r9 = pp[0x36a]
    //     0x3ae888: add          r9, PP, #0x12, lsl #12
    //     0x3ae88c: ldr          r9, [r9, #0x358]
    // 0x3ae890: r0 = call 0x620258
    //     0x3ae890: bl           0x620258
  }

  backButton() {
    // ** addr: 0x3ab5e4, size: 0x11c
    // 0x3ab5e4: EnterFrame
    //     0x3ab5e4: stp          fp, lr, [SP, #-0x10]!
    //     0x3ab5e8: mov          fp, SP
    // 0x3ab5ec: AllocStack(0x40)
    //     0x3ab5ec: sub          SP, SP, #0x40
    // 0x3ab5f0: CheckStackOverflow
    //     0x3ab5f0: ldr          BARRIER, [THR, #0x38]
    //     0x3ab5f4: cmp          SP, BARRIER
    //     0x3ab5f8: b.ls         0x3ab6f8
    //     0x3ab5fc: tbnz         r1, #4, 0x3ab60c
    // 0x3ab600: d0 = pp[0x302]
    //     0x3ab600: add          r17, PP, #0x12, lsl #12
    //     0x3ab604: ldr          d0, [r17, #0x2f0]
    // 0x3ab608: b 0x3ab610
    //     0x3ab608: b            0x3ab610
    //     0x3ab60c: eor          v0.16b, v0.16b, v0.16b
    //     0x3ab610: stur         d0, [fp, #-0x20]
    // 0x3ab614: r0 = call 0x2e3578
    //     0x3ab614: bl           0x2e3578
    //     0x3ab618: fmov         d0, #14.00000000
    //     0x3ab61c: stur         r0, [fp, #-8]
    // 0x3ab620: StoreField: r0->field_7 = d0
    //     0x3ab620: stur         d0, [r0, #7]
    //     0x3ab624: ldur         d0, [fp, #-0x20]
    // 0x3ab628: StoreField: r0->field_f = d0
    //     0x3ab628: stur         d0, [r0, #0xf]
    // 0x3ab62c: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3ab62c: stur         xzr, [r0, #0x17]
    // 0x3ab630: StoreField: r0->field_1f = xzr
    //     0x3ab630: stur         xzr, [r0, #0x1f]
    // 0x3ab634: r0 = call 0x3a142c
    //     0x3ab634: bl           0x3a142c
    // 0x3ab638: r1 = r0
    //     0x3ab638: mov          r1, r0
    // 0x3ab63c: r0 = pp[0x30a]
    //     0x3ab63c: add          r0, PP, #0x12, lsl #12
    //     0x3ab640: ldr          r0, [r0, #0x2f8]
    //     0x3ab644: stur         r1, [fp, #-0x10]
    // 0x3ab648: StoreField: r1->field_b = r0
    //     0x3ab648: stur         r0, [r1, #0xb]
    // 0x3ab64c: r0 = pp[0x17f]
    //     0x3ab64c: add          r0, PP, #0xf, lsl #12
    //     0x3ab650: ldr          r0, [r0, #0x170]
    // 0x3ab654: StoreField: r1->field_f = r0
    //     0x3ab654: stur         r0, [r1, #0xf]
    // 0x3ab658: r0 = pp[0x1f7]
    //     0x3ab658: add          r0, PP, #0xf, lsl #12
    //     0x3ab65c: ldr          r0, [r0, #0x1e8]
    // 0x3ab660: StoreField: r1->field_13 = r0
    //     0x3ab660: stur         r0, [r1, #0x13]
    // 0x3ab664: ArrayStore: r1[0] = r0  ; List_8
    //     0x3ab664: stur         r0, [r1, #0x17]
    // 0x3ab668: r0 = pp[0x187]
    //     0x3ab668: add          r0, PP, #0xf, lsl #12
    //     0x3ab66c: ldr          r0, [r0, #0x178]
    // 0x3ab670: StoreField: r1->field_1b = r0
    //     0x3ab670: stur         r0, [r1, #0x1b]
    // 0x3ab674: r0 = call 0x391a04
    //     0x3ab674: bl           0x391a04
    //     0x3ab678: stur         r0, [fp, #-0x18]
    //     0x3ab67c: ldur         BARRIER, [fp, #-8]
    // 0x3ab680: lr = pp[0xbb7]
    //     0x3ab680: add          lr, PP, #0xf, lsl #12
    //     0x3ab684: ldr          lr, [lr, #0xba8]
    //     0x3ab688: stp          lr, BARRIER, [SP, #0x10]
    // 0x3ab68c: BARRIER = pp[0xbb7]
    //     0x3ab68c: add          BARRIER, PP, #0xf, lsl #12
    //     0x3ab690: ldr          BARRIER, [BARRIER, #0xba8]
    //     0x3ab694: ldur         lr, [fp, #-0x10]
    //     0x3ab698: stp          lr, BARRIER, [SP]
    // 0x3ab69c: r1 = r0
    //     0x3ab69c: mov          r1, r0
    // 0x3ab6a0: r4 = pp[0x18f]
    //     0x3ab6a0: add          r4, PP, #0xf, lsl #12
    //     0x3ab6a4: ldr          r4, [r4, #0x180]
    // 0x3ab6a8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3ab6a8: bl           0x391490
    // 0x3ab6ac: r0 = call 0x3a1d94
    //     0x3ab6ac: bl           0x3a1d94
    //     0x3ab6b0: stur         r0, [fp, #-8]
    //     0x3ab6b4: ldur         BARRIER, [fp, #-0x18]
    // 0x3ab6b8: lr = pp[0x327]
    //     0x3ab6b8: add          lr, PP, #0xf, lsl #12
    //     0x3ab6bc: ldr          lr, [lr, #0x318]
    //     0x3ab6c0: stp          lr, BARRIER, [SP]
    // 0x3ab6c4: r1 = r0
    //     0x3ab6c4: mov          r1, r0
    // 0x3ab6c8: r4 = pp[0xece]
    //     0x3ab6c8: add          r4, PP, #0xe, lsl #12
    //     0x3ab6cc: ldr          r4, [r4, #0xec0]
    // 0x3ab6d0: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x3ab6d0: bl           0x3a18c4
    // 0x3ab6d4: r0 = call 0x396460
    //     0x3ab6d4: bl           0x396460
    // 0x3ab6d8: r1 = pp[0x19f]
    //     0x3ab6d8: add          r1, PP, #0xf, lsl #12
    //     0x3ab6dc: ldr          r1, [r1, #0x190]
    // 0x3ab6e0: StoreField: r0->field_f = r1
    //     0x3ab6e0: stur         r1, [r0, #0xf]
    //     0x3ab6e4: ldur         r1, [fp, #-8]
    // 0x3ab6e8: StoreField: r0->field_b = r1
    //     0x3ab6e8: stur         r1, [r0, #0xb]
    // 0x3ab6ec: SP = fp
    //     0x3ab6ec: mov          SP, fp
    // 0x3ab6f0: LeaveFrame
    //     0x3ab6f0: ldp          fp, lr, [SP], #0x10
    // 0x3ab6f4: ret
    //     0x3ab6f4: ret          
    // 0x3ab6f8: r0 = call 0x61fa28
    //     0x3ab6f8: bl           0x61fa28
    // 0x3ab6fc: b 0x3ab5fc
    //     0x3ab6fc: b            0x3ab5fc
  }

  build() {
    // ** addr: 0x3b3c24, size: 0x2cc
    // 0x3b3c24: EnterFrame
    //     0x3b3c24: stp          fp, lr, [SP, #-0x10]!
    //     0x3b3c28: mov          fp, SP
    // 0x3b3c2c: AllocStack(0x40)
    //     0x3b3c2c: sub          SP, SP, #0x40
    //     0x3b3c30: stur         r1, [fp, #-8]
    // 0x3b3c34: CheckStackOverflow
    //     0x3b3c34: ldr          BARRIER, [THR, #0x38]
    //     0x3b3c38: cmp          SP, BARRIER
    //     0x3b3c3c: b.ls         0x3b3ee8
    // 0x3b3c40: r0 = call 0x31d844
    //     0x3b3c40: bl           0x31d844
    // 0x3b3c44: r1 = r0
    //     0x3b3c44: mov          r1, r0
    // 0x3b3c48: r0 = pp[0x6310]
    //     0x3b3c48: ldr          r0, [PP, #0x6310]
    //     0x3b3c4c: stur         r1, [fp, #-0x10]
    // 0x3b3c50: StoreField: r1->field_27 = r0
    //     0x3b3c50: stur         r0, [r1, #0x27]
    //     0x3b3c54: fmov         d0, #1.00000000
    // 0x3b3c58: StoreField: r1->field_7 = d0
    //     0x3b3c58: stur         d0, [r1, #7]
    // 0x3b3c5c: d0 = pp[0xae0]
    //     0x3b3c5c: add          r17, PP, #0x10, lsl #12
    //     0x3b3c60: ldr          d0, [r17, #0xad0]
    // 0x3b3c64: StoreField: r1->field_f = d0
    //     0x3b3c64: stur         d0, [r1, #0xf]
    // 0x3b3c68: d0 = pp[0xae8]
    //     0x3b3c68: add          r17, PP, #0x10, lsl #12
    //     0x3b3c6c: ldr          d0, [r17, #0xad8]
    // 0x3b3c70: ArrayStore: r1[0] = d0  ; List_8
    //     0x3b3c70: stur         d0, [r1, #0x17]
    // 0x3b3c74: d0 = pp[0xaf0]
    //     0x3b3c74: add          r17, PP, #0x10, lsl #12
    //     0x3b3c78: ldr          d0, [r17, #0xae0]
    // 0x3b3c7c: StoreField: r1->field_1f = d0
    //     0x3b3c7c: stur         d0, [r1, #0x1f]
    // 0x3b3c80: r0 = call 0x31abec
    //     0x3b3c80: bl           0x31abec
    // 0x3b3c84: r2 = r0
    //     0x3b3c84: mov          r2, r0
    //     0x3b3c88: add          r0, NULL, #0x20
    //     0x3b3c8c: stur         r2, [fp, #-0x18]
    // 0x3b3c90: StoreField: r2->field_7 = r0
    //     0x3b3c90: stur         r0, [r2, #7]
    //     0x3b3c94: ldur         r1, [fp, #-0x10]
    // 0x3b3c98: StoreField: r2->field_b = r1
    //     0x3b3c98: stur         r1, [r2, #0xb]
    // 0x3b3c9c: r1 = pp[0xb9f]
    //     0x3b3c9c: add          r1, PP, #0xf, lsl #12
    //     0x3b3ca0: ldr          r1, [r1, #0xb90]
    // 0x3b3ca4: StoreField: r2->field_1f = r1
    //     0x3b3ca4: stur         r1, [r2, #0x1f]
    // 0x3b3ca8: r1 = pp[0xe4e]
    //     0x3b3ca8: add          r1, PP, #0xe, lsl #12
    //     0x3b3cac: ldr          r1, [r1, #0xe40]
    // 0x3b3cb0: StoreField: r2->field_23 = r1
    //     0x3b3cb0: stur         r1, [r2, #0x23]
    // 0x3b3cb4: r1 = pp[0x9b4]
    //     0x3b3cb4: add          r1, PP, #0xc, lsl #12
    //     0x3b3cb8: ldr          r1, [r1, #0x9a8]
    // 0x3b3cbc: r4 = pp[0x4c0]
    //     0x3b3cbc: ldr          r4, [PP, #0x4c0]
    // 0x3b3cc0: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3b3cc0: bl           0x3a1dcc
    // 0x3b3cc4: r1 = r0
    //     0x3b3cc4: mov          r1, r0
    //     0x3b3cc8: ldur         r0, [fp, #-8]
    // 0x3b3ccc: LoadField: r2 = r0->field_b
    //     0x3b3ccc: ldur         r2, [r0, #0xb]
    //     0x3b3cd0: add          r2, r2, HEAP, lsl #32
    //     0x3b3cd4: tbz          r2, #4, 0x3b3cf0
    // 0x3b3cd8: r1 = pp[0xb5c]
    //     0x3b3cd8: add          r1, PP, #0xc, lsl #12
    //     0x3b3cdc: ldr          r1, [r1, #0xb50]
    // 0x3b3ce0: r4 = pp[0x4c0]
    //     0x3b3ce0: ldr          r4, [PP, #0x4c0]
    // 0x3b3ce4: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3b3ce4: bl           0x3a1dcc
    // 0x3b3ce8: r2 = r0
    //     0x3b3ce8: mov          r2, r0
    // 0x3b3cec: b 0x3b3cf4
    //     0x3b3cec: b            0x3b3cf4
    // 0x3b3cf0: r2 = r1
    //     0x3b3cf0: mov          r2, r1
    //     0x3b3cf4: ldur         r0, [fp, #-0x18]
    //     0x3b3cf8: stur         r2, [fp, #-8]
    //     0x3b3cfc: add          r1, NULL, #0x20
    // 0x3b3d00: r0 = soul_flutter_international$biz$party$page_party_lucky_bag_history_::backButton()
    //     0x3b3d00: bl           0x3ab5e4
    //     0x3b3d04: stur         r0, [fp, #-0x10]
    // 0x3b3d08: r0 = call 0x2e3578
    //     0x3b3d08: bl           0x2e3578
    //     0x3b3d0c: stur         r0, [fp, #-0x20]
    // 0x3b3d10: StoreField: r0->field_7 = xzr
    //     0x3b3d10: stur         xzr, [r0, #7]
    // 0x3b3d14: d0 = pp[0x7040]
    //     0x3b3d14: ldr          d0, [PP, #0x7040]
    // 0x3b3d18: StoreField: r0->field_f = d0
    //     0x3b3d18: stur         d0, [r0, #0xf]
    // 0x3b3d1c: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3b3d1c: stur         xzr, [r0, #0x17]
    // 0x3b3d20: StoreField: r0->field_1f = xzr
    //     0x3b3d20: stur         xzr, [r0, #0x1f]
    // 0x3b3d24: r0 = call 0x393bf8
    //     0x3b3d24: bl           0x393bf8
    // 0x3b3d28: r1 = r0
    //     0x3b3d28: mov          r1, r0
    //     0x3b3d2c: ldur         r0, [fp, #-8]
    //     0x3b3d30: stur         r1, [fp, #-0x28]
    // 0x3b3d34: StoreField: r1->field_b = r0
    //     0x3b3d34: stur         r0, [r1, #0xb]
    //     0x3b3d38: ldur         r0, [fp, #-0x18]
    // 0x3b3d3c: StoreField: r1->field_13 = r0
    //     0x3b3d3c: stur         r0, [r1, #0x13]
    // 0x3b3d40: r0 = pp[0x53a8]
    //     0x3b3d40: ldr          r0, [PP, #0x53a8]
    // 0x3b3d44: StoreField: r1->field_1b = r0
    //     0x3b3d44: stur         r0, [r1, #0x1b]
    // 0x3b3d48: r0 = call 0x391a04
    //     0x3b3d48: bl           0x391a04
    //     0x3b3d4c: stur         r0, [fp, #-8]
    //     0x3b3d50: ldur         BARRIER, [fp, #-0x20]
    //     0x3b3d54: ldur         lr, [fp, #-0x28]
    //     0x3b3d58: stp          lr, BARRIER, [SP]
    // 0x3b3d5c: r1 = r0
    //     0x3b3d5c: mov          r1, r0
    // 0x3b3d60: r4 = pp[0x20f]
    //     0x3b3d60: add          r4, PP, #0xf, lsl #12
    //     0x3b3d64: ldr          r4, [r4, #0x200]
    // 0x3b3d68: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3b3d68: bl           0x391490
    // 0x3b3d6c: r0 = call 0x2e3578
    //     0x3b3d6c: bl           0x2e3578
    //     0x3b3d70: stur         r0, [fp, #-0x18]
    // 0x3b3d74: StoreField: r0->field_7 = xzr
    //     0x3b3d74: stur         xzr, [r0, #7]
    //     0x3b3d78: fmov         d0, #30.00000000
    // 0x3b3d7c: StoreField: r0->field_f = d0
    //     0x3b3d7c: stur         d0, [r0, #0xf]
    // 0x3b3d80: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3b3d80: stur         xzr, [r0, #0x17]
    // 0x3b3d84: StoreField: r0->field_1f = xzr
    //     0x3b3d84: stur         xzr, [r0, #0x1f]
    // 0x3b3d88: r0 = call 0x3a142c
    //     0x3b3d88: bl           0x3a142c
    // 0x3b3d8c: r1 = r0
    //     0x3b3d8c: mov          r1, r0
    // 0x3b3d90: r0 = pp[0x2da]
    //     0x3b3d90: add          r0, PP, #0x12, lsl #12
    //     0x3b3d94: ldr          r0, [r0, #0x2c8]
    //     0x3b3d98: stur         r1, [fp, #-0x20]
    // 0x3b3d9c: StoreField: r1->field_b = r0
    //     0x3b3d9c: stur         r0, [r1, #0xb]
    // 0x3b3da0: r0 = pp[0x17f]
    //     0x3b3da0: add          r0, PP, #0xf, lsl #12
    //     0x3b3da4: ldr          r0, [r0, #0x170]
    // 0x3b3da8: StoreField: r1->field_f = r0
    //     0x3b3da8: stur         r0, [r1, #0xf]
    // 0x3b3dac: r0 = pp[0x2e2]
    //     0x3b3dac: add          r0, PP, #0x12, lsl #12
    //     0x3b3db0: ldr          r0, [r0, #0x2d0]
    // 0x3b3db4: StoreField: r1->field_13 = r0
    //     0x3b3db4: stur         r0, [r1, #0x13]
    // 0x3b3db8: r0 = pp[0x2ea]
    //     0x3b3db8: add          r0, PP, #0x12, lsl #12
    //     0x3b3dbc: ldr          r0, [r0, #0x2d8]
    // 0x3b3dc0: ArrayStore: r1[0] = r0  ; List_8
    //     0x3b3dc0: stur         r0, [r1, #0x17]
    // 0x3b3dc4: r0 = call 0x391a04
    //     0x3b3dc4: bl           0x391a04
    //     0x3b3dc8: stur         r0, [fp, #-0x28]
    //     0x3b3dcc: ldur         BARRIER, [fp, #-0x18]
    //     0x3b3dd0: ldur         lr, [fp, #-0x20]
    //     0x3b3dd4: stp          lr, BARRIER, [SP]
    // 0x3b3dd8: r1 = r0
    //     0x3b3dd8: mov          r1, r0
    // 0x3b3ddc: r4 = pp[0x20f]
    //     0x3b3ddc: add          r4, PP, #0xf, lsl #12
    //     0x3b3de0: ldr          r4, [r4, #0x200]
    // 0x3b3de4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3b3de4: bl           0x391490
    // 0x3b3de8: r0 = call 0x3949ec
    //     0x3b3de8: bl           0x3949ec
    // 0x3b3dec: r3 = r0
    //     0x3b3dec: mov          r3, r0
    // 0x3b3df0: r0 = pp[0xb99]
    //     0x3b3df0: add          r0, PP, #0x11, lsl #12
    //     0x3b3df4: ldr          r0, [r0, #0xb88]
    //     0x3b3df8: stur         r3, [fp, #-0x18]
    // 0x3b3dfc: StoreField: r3->field_13 = r0
    //     0x3b3dfc: stur         r0, [r3, #0x13]
    // 0x3b3e00: r1 = pp[0x2f2]
    //     0x3b3e00: add          r1, PP, #0x12, lsl #12
    //     0x3b3e04: ldr          r1, [r1, #0x2e0]
    // 0x3b3e08: r2 = NULL
    //     0x3b3e08: mov          r2, NULL
    // 0x3b3e0c: r0 = call 0x61ec54
    //     0x3b3e0c: bl           0x61ec54
    //     0x3b3e10: stur         r0, [fp, #-0x20]
    // 0x3b3e14: r0 = call 0x3b3ef0
    //     0x3b3e14: bl           0x3b3ef0
    // 0x3b3e18: r3 = r0
    //     0x3b3e18: mov          r3, r0
    //     0x3b3e1c: ldur         r0, [fp, #-0x20]
    //     0x3b3e20: stur         r3, [fp, #-0x30]
    // 0x3b3e24: StoreField: r3->field_b = r0
    //     0x3b3e24: stur         r0, [r3, #0xb]
    // 0x3b3e28: r1 = NULL
    //     0x3b3e28: mov          r1, NULL
    //     0x3b3e2c: mov          r2, #0xa
    // 0x3b3e30: r0 = call 0x61f920
    //     0x3b3e30: bl           0x61f920
    // 0x3b3e34: r2 = r0
    //     0x3b3e34: mov          r2, r0
    //     0x3b3e38: ldur         r0, [fp, #-0x10]
    //     0x3b3e3c: stur         r2, [fp, #-0x20]
    // 0x3b3e40: StoreField: r2->field_f = r0
    //     0x3b3e40: stur         r0, [r2, #0xf]
    //     0x3b3e44: ldur         r0, [fp, #-8]
    // 0x3b3e48: StoreField: r2->field_13 = r0
    //     0x3b3e48: stur         r0, [r2, #0x13]
    //     0x3b3e4c: ldur         r0, [fp, #-0x28]
    // 0x3b3e50: ArrayStore: r2[0] = r0  ; List_8
    //     0x3b3e50: stur         r0, [r2, #0x17]
    //     0x3b3e54: ldur         r0, [fp, #-0x18]
    // 0x3b3e58: StoreField: r2->field_1b = r0
    //     0x3b3e58: stur         r0, [r2, #0x1b]
    //     0x3b3e5c: ldur         r0, [fp, #-0x30]
    // 0x3b3e60: StoreField: r2->field_1f = r0
    //     0x3b3e60: stur         r0, [r2, #0x1f]
    // 0x3b3e64: r1 = pp[0x5c58]
    //     0x3b3e64: ldr          r1, [PP, #0x5c58]
    // 0x3b3e68: r0 = call 0x61e854
    //     0x3b3e68: bl           0x61e854
    // 0x3b3e6c: r1 = r0
    //     0x3b3e6c: mov          r1, r0
    //     0x3b3e70: ldur         r0, [fp, #-0x20]
    //     0x3b3e74: stur         r1, [fp, #-8]
    // 0x3b3e78: StoreField: r1->field_f = r0
    //     0x3b3e78: stur         r0, [r1, #0xf]
    //     0x3b3e7c: mov          r0, #0xa
    // 0x3b3e80: StoreField: r1->field_b = r0
    //     0x3b3e80: stur         r0, [r1, #0xb]
    // 0x3b3e84: r0 = call 0x39310c
    //     0x3b3e84: bl           0x39310c
    // 0x3b3e88: r1 = pp[0x862]
    //     0x3b3e88: add          r1, PP, #0xa, lsl #12
    //     0x3b3e8c: ldr          r1, [r1, #0x858]
    // 0x3b3e90: StoreField: r0->field_f = r1
    //     0x3b3e90: stur         r1, [r0, #0xf]
    // 0x3b3e94: r1 = pp[0xaee]
    //     0x3b3e94: add          r1, PP, #0xe, lsl #12
    //     0x3b3e98: ldr          r1, [r1, #0xae0]
    // 0x3b3e9c: StoreField: r0->field_13 = r1
    //     0x3b3e9c: stur         r1, [r0, #0x13]
    // 0x3b3ea0: r1 = pp[0xaf6]
    //     0x3b3ea0: add          r1, PP, #0xe, lsl #12
    //     0x3b3ea4: ldr          r1, [r1, #0xae8]
    // 0x3b3ea8: ArrayStore: r0[0] = r1  ; List_8
    //     0x3b3ea8: stur         r1, [r0, #0x17]
    // 0x3b3eac: r1 = pp[0xb6e]
    //     0x3b3eac: add          r1, PP, #0xe, lsl #12
    //     0x3b3eb0: ldr          r1, [r1, #0xb60]
    // 0x3b3eb4: StoreField: r0->field_1b = r1
    //     0x3b3eb4: stur         r1, [r0, #0x1b]
    // 0x3b3eb8: r1 = pp[0xb06]
    //     0x3b3eb8: add          r1, PP, #0xe, lsl #12
    //     0x3b3ebc: ldr          r1, [r1, #0xaf8]
    // 0x3b3ec0: StoreField: r0->field_23 = r1
    //     0x3b3ec0: stur         r1, [r0, #0x23]
    // 0x3b3ec4: r1 = pp[0xb2]
    //     0x3b3ec4: add          r1, PP, #0xa, lsl #12
    //     0x3b3ec8: ldr          r1, [r1, #0xa8]
    // 0x3b3ecc: StoreField: r0->field_2b = r1
    //     0x3b3ecc: stur         r1, [r0, #0x2b]
    // 0x3b3ed0: StoreField: r0->field_2f = xzr
    //     0x3b3ed0: stur         xzr, [r0, #0x2f]
    //     0x3b3ed4: ldur         r1, [fp, #-8]
    // 0x3b3ed8: StoreField: r0->field_b = r1
    //     0x3b3ed8: stur         r1, [r0, #0xb]
    // 0x3b3edc: SP = fp
    //     0x3b3edc: mov          SP, fp
    // 0x3b3ee0: LeaveFrame
    //     0x3b3ee0: ldp          fp, lr, [SP], #0x10
    // 0x3b3ee4: ret
    //     0x3b3ee4: ret          
    // 0x3b3ee8: r0 = call 0x61fa28
    //     0x3b3ee8: bl           0x61fa28
    // 0x3b3eec: b 0x3b3c40
    //     0x3b3eec: b            0x3b3c40
  }

  _anon_closure() {
    // ** addr: 0x3b3efc, size: 0x40
    // 0x3b3efc: EnterFrame
    //     0x3b3efc: stp          fp, lr, [SP, #-0x10]!
    //     0x3b3f00: mov          fp, SP
    // 0x3b3f04: CheckStackOverflow
    //     0x3b3f04: ldr          BARRIER, [THR, #0x38]
    //     0x3b3f08: cmp          SP, BARRIER
    //     0x3b3f0c: b.ls         0x3b3f34
    // 0x3b3f10: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record__PagePKGameBetTabRecordState::_anon_closure()
    //     0x3b3f10: bl           0x3a8d00
    // 0x3b3f14: r1 = pp[0x2fa]
    //     0x3b3f14: add          r1, PP, #0x12, lsl #12
    //     0x3b3f18: ldr          r1, [r1, #0x2e8]
    // 0x3b3f1c: r4 = pp[0x4c0]
    //     0x3b3f1c: ldr          r4, [PP, #0x4c0]
    // 0x3b3f20: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventClick()
    //     0x3b3f20: bl           0x3a8e60
    // 0x3b3f24: r0 = NULL
    //     0x3b3f24: mov          r0, NULL
    // 0x3b3f28: SP = fp
    //     0x3b3f28: mov          SP, fp
    // 0x3b3f2c: LeaveFrame
    //     0x3b3f2c: ldp          fp, lr, [SP], #0x10
    // 0x3b3f30: ret
    //     0x3b3f30: ret          
    // 0x3b3f34: r0 = call 0x61fa28
    //     0x3b3f34: bl           0x61fa28
    // 0x3b3f38: b 0x3b3f10
    //     0x3b3f38: b            0x3b3f10
  }

  build() {
    // ** addr: 0x424530, size: 0xc0
    // 0x424530: EnterFrame
    //     0x424530: stp          fp, lr, [SP, #-0x10]!
    //     0x424534: mov          fp, SP
    // 0x424538: AllocStack(0x18)
    //     0x424538: sub          SP, SP, #0x18
    //     0x42453c: stur         r1, [fp, #-8]
    // 0x424540: CheckStackOverflow
    //     0x424540: ldr          BARRIER, [THR, #0x38]
    //     0x424544: cmp          SP, BARRIER
    //     0x424548: b.ls         0x4245e8
    //     0x42454c: mov          r1, #1
    // 0x424550: r0 = call 0x61e890
    //     0x424550: bl           0x61e890
    // 0x424554: r1 = r0
    //     0x424554: mov          r1, r0
    //     0x424558: ldur         r0, [fp, #-8]
    // 0x42455c: StoreField: r1->field_f = r0
    //     0x42455c: stur         r0, [r1, #0xf]
    // 0x424560: LoadField: r3 = r0->field_13
    //     0x424560: ldur         r3, [r0, #0x13]
    //     0x424564: add          r3, r3, HEAP, lsl #32
    // 0x424568: r2 = r1
    //     0x424568: mov          r2, r1
    //     0x42456c: stur         r3, [fp, #-0x10]
    // 0x424570: r1 = pp[0x459]
    //     0x424570: add          r1, PP, #0x11, lsl #12
    //     0x424574: ldr          r1, [r1, #0x448]
    // 0x424578: r0 = call 0x61ec54
    //     0x424578: bl           0x61ec54
    // 0x42457c: r1 = pp[0x461]
    //     0x42457c: add          r1, PP, #0x11, lsl #12
    //     0x424580: ldr          r1, [r1, #0x450]
    //     0x424584: stur         r0, [fp, #-8]
    // 0x424588: r0 = call 0x3b81c4
    //     0x424588: bl           0x3b81c4
    // 0x42458c: r2 = r0
    //     0x42458c: mov          r2, r0
    //     0x424590: ldur         r0, [fp, #-8]
    //     0x424594: stur         r2, [fp, #-0x18]
    // 0x424598: StoreField: r2->field_1b = r0
    //     0x424598: stur         r0, [r2, #0x1b]
    // 0x42459c: r1 = pp[0x461]
    //     0x42459c: add          r1, PP, #0x11, lsl #12
    //     0x4245a0: ldr          r1, [r1, #0x450]
    // 0x4245a4: r0 = call 0x41a408
    //     0x4245a4: bl           0x41a408
    // 0x4245a8: r1 = r0
    //     0x4245a8: mov          r1, r0
    //     0x4245ac: ldur         r0, [fp, #-0x10]
    // 0x4245b0: StoreField: r1->field_b = r0
    //     0x4245b0: stur         r0, [r1, #0xb]
    // 0x4245b4: r0 = pp[0x2fc]
    //     0x4245b4: add          r0, PP, #0xc, lsl #12
    //     0x4245b8: ldr          r0, [r0, #0x2f0]
    // 0x4245bc: StoreField: r1->field_13 = r0
    //     0x4245bc: stur         r0, [r1, #0x13]
    //     0x4245c0: ldur         r0, [fp, #-0x18]
    // 0x4245c4: StoreField: r0->field_13 = r1
    //     0x4245c4: stur         r1, [r0, #0x13]
    // 0x4245c8: r1 = r0
    //     0x4245c8: mov          r1, r0
    // 0x4245cc: r0 = dart_async__RootZone::op_at()
    //     0x4245cc: bl           0x60bd34
    // 0x4245d0: r0 = call 0x3b91cc
    //     0x4245d0: bl           0x3b91cc
    //     0x4245d4: ldur         r1, [fp, #-0x18]
    // 0x4245d8: StoreField: r0->field_b = r1
    //     0x4245d8: stur         r1, [r0, #0xb]
    // 0x4245dc: SP = fp
    //     0x4245dc: mov          SP, fp
    // 0x4245e0: LeaveFrame
    //     0x4245e0: ldp          fp, lr, [SP], #0x10
    // 0x4245e4: ret
    //     0x4245e4: ret          
    // 0x4245e8: r0 = call 0x61fa28
    //     0x4245e8: bl           0x61fa28
    // 0x4245ec: b 0x42454c
    //     0x4245ec: b            0x42454c
  }

  _anon_closure() {
    // ** addr: 0x4245f0, size: 0x48
    // 0x4245f0: EnterFrame
    //     0x4245f0: stp          fp, lr, [SP, #-0x10]!
    //     0x4245f4: mov          fp, SP
    // 0x4245f8: AllocStack(8)
    //     0x4245f8: sub          SP, SP, #8
    //     0x4245fc: ldr          r0, [fp, #0x20]
    // 0x424600: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x424600: ldur         r2, [r0, #0x17]
    //     0x424604: add          r2, r2, HEAP, lsl #32
    // 0x424608: r1 = pp[0x469]
    //     0x424608: add          r1, PP, #0x11, lsl #12
    //     0x42460c: ldr          r1, [r1, #0x458]
    // 0x424610: r0 = call 0x61ec54
    //     0x424610: bl           0x61ec54
    // 0x424614: r1 = pp[0x461]
    //     0x424614: add          r1, PP, #0x11, lsl #12
    //     0x424618: ldr          r1, [r1, #0x450]
    //     0x42461c: stur         r0, [fp, #-8]
    // 0x424620: r0 = call 0x41a414
    //     0x424620: bl           0x41a414
    //     0x424624: ldur         r1, [fp, #-8]
    // 0x424628: StoreField: r0->field_13 = r1
    //     0x424628: stur         r1, [r0, #0x13]
    // 0x42462c: SP = fp
    //     0x42462c: mov          SP, fp
    // 0x424630: LeaveFrame
    //     0x424630: ldp          fp, lr, [SP], #0x10
    // 0x424634: ret
    //     0x424634: ret          
  }

  _anon_closure() {
    // ** addr: 0x424638, size: 0xf0
    // 0x424638: EnterFrame
    //     0x424638: stp          fp, lr, [SP, #-0x10]!
    //     0x42463c: mov          fp, SP
    // 0x424640: AllocStack(8)
    //     0x424640: sub          SP, SP, #8
    //     0x424644: ldr          r0, [fp, #0x28]
    // 0x424648: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x424648: ldur         r1, [r0, #0x17]
    //     0x42464c: add          r1, r1, HEAP, lsl #32
    // 0x424650: CheckStackOverflow
    //     0x424650: ldr          BARRIER, [THR, #0x38]
    //     0x424654: cmp          SP, BARRIER
    //     0x424658: b.ls         0x424714
    //     0x42465c: ldr          r0, [fp, #0x18]
    // 0x424660: LoadField: r2 = r0->field_37
    //     0x424660: ldur         r2, [r0, #0x37]
    //     0x424664: add          r2, r2, HEAP, lsl #32
    //     0x424668: tbnz         r2, #4, 0x4246f0
    // 0x42466c: LoadField: r2 = r0->field_2b
    //     0x42466c: ldur         r2, [r0, #0x2b]
    //     0x424670: add          r2, r2, HEAP, lsl #32
    // 0x424674: LoadField: r3 = r2->field_b
    //     0x424674: ldur         r3, [r2, #0xb]
    //     0x424678: sbfx         r2, r3, #1, #0x1f
    //     0x42467c: cmp          r2, #0
    // 0x424680: b.le 0x4246c4
    //     0x424680: b.le         0x4246c4
    // 0x424684: LoadField: r2 = r1->field_f
    //     0x424684: ldur         r2, [r1, #0xf]
    //     0x424688: add          r2, r2, HEAP, lsl #32
    // 0x42468c: ArrayLoad: r1 = r2[0]  ; List_8
    //     0x42468c: ldur         r1, [r2, #0x17]
    //     0x424690: add          r1, r1, HEAP, lsl #32
    // 0x424694: BARRIER = pp[0x40]
    //     0x424694: ldr          BARRIER, [PP, #0x40]
    //     0x424698: cmp          r1, r16
    // 0x42469c: b.eq 0x42471c
    //     0x42469c: b.eq         0x42471c
    //     0x4246a0: stur         r1, [fp, #-8]
    // 0x4246a4: r0 = call 0x424734
    //     0x4246a4: bl           0x424734
    // 0x4246a8: r1 = r0
    //     0x4246a8: mov          r1, r0
    //     0x4246ac: ldr          r0, [fp, #0x18]
    // 0x4246b0: StoreField: r1->field_b = r0
    //     0x4246b0: stur         r0, [r1, #0xb]
    //     0x4246b4: ldur         r0, [fp, #-8]
    // 0x4246b8: StoreField: r1->field_f = r0
    //     0x4246b8: stur         r0, [r1, #0xf]
    // 0x4246bc: r0 = r1
    //     0x4246bc: mov          r0, r1
    // 0x4246c0: b 0x4246e4
    //     0x4246c0: b            0x4246e4
    // 0x4246c4: LoadField: r1 = r0->field_3b
    //     0x4246c4: ldur         r1, [r0, #0x3b]
    //     0x4246c8: add          r1, r1, HEAP, lsl #32
    //     0x4246cc: stur         r1, [fp, #-8]
    // 0x4246d0: r0 = call 0x424728
    //     0x4246d0: bl           0x424728
    // 0x4246d4: r1 = r0
    //     0x4246d4: mov          r1, r0
    //     0x4246d8: ldur         r0, [fp, #-8]
    // 0x4246dc: StoreField: r1->field_b = r0
    //     0x4246dc: stur         r0, [r1, #0xb]
    // 0x4246e0: r0 = r1
    //     0x4246e0: mov          r0, r1
    // 0x4246e4: SP = fp
    //     0x4246e4: mov          SP, fp
    // 0x4246e8: LeaveFrame
    //     0x4246e8: ldp          fp, lr, [SP], #0x10
    // 0x4246ec: ret
    //     0x4246ec: ret          
    // 0x4246f0: r0 = call 0x391a04
    //     0x4246f0: bl           0x391a04
    // 0x4246f4: r1 = r0
    //     0x4246f4: mov          r1, r0
    //     0x4246f8: stur         r0, [fp, #-8]
    // 0x4246fc: r4 = pp[0x4c0]
    //     0x4246fc: ldr          r4, [PP, #0x4c0]
    // 0x424700: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x424700: bl           0x391490
    //     0x424704: ldur         r0, [fp, #-8]
    // 0x424708: SP = fp
    //     0x424708: mov          SP, fp
    // 0x42470c: LeaveFrame
    //     0x42470c: ldp          fp, lr, [SP], #0x10
    // 0x424710: ret
    //     0x424710: ret          
    // 0x424714: r0 = call 0x61fa28
    //     0x424714: bl           0x61fa28
    // 0x424718: b 0x42465c
    //     0x424718: b            0x42465c
    // 0x42471c: r9 = pp[0x471]
    //     0x42471c: add          r9, PP, #0x11, lsl #12
    //     0x424720: ldr          r9, [r9, #0x460]
    // 0x424724: r0 = call 0x620258
    //     0x424724: bl           0x620258
  }

  dispose() {
    // ** addr: 0x4513a4, size: 0x68
    // 0x4513a4: EnterFrame
    //     0x4513a4: stp          fp, lr, [SP, #-0x10]!
    //     0x4513a8: mov          fp, SP
    // 0x4513ac: AllocStack(8)
    //     0x4513ac: sub          SP, SP, #8
    // 0x4513b0: r0 = r1
    //     0x4513b0: mov          r0, r1
    //     0x4513b4: stur         r1, [fp, #-8]
    // 0x4513b8: CheckStackOverflow
    //     0x4513b8: ldr          BARRIER, [THR, #0x38]
    //     0x4513bc: cmp          SP, BARRIER
    //     0x4513c0: b.ls         0x4513f8
    // 0x4513c4: r1 = r0
    //     0x4513c4: mov          r1, r0
    // 0x4513c8: r0 = soul_flutter_international$common$base$soul_state_SoulState::dispose()
    //     0x4513c8: bl           0x451970
    //     0x4513cc: ldur         r0, [fp, #-8]
    // 0x4513d0: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4513d0: ldur         r1, [r0, #0x17]
    //     0x4513d4: add          r1, r1, HEAP, lsl #32
    // 0x4513d8: BARRIER = pp[0x40]
    //     0x4513d8: ldr          BARRIER, [PP, #0x40]
    //     0x4513dc: cmp          r1, r16
    // 0x4513e0: b.eq 0x451400
    //     0x4513e0: b.eq         0x451400
    // 0x4513e4: r0 = pull_to_refresh$src$smart_refresher_RefreshController::dispose()
    //     0x4513e4: bl           0x45132c
    // 0x4513e8: r0 = NULL
    //     0x4513e8: mov          r0, NULL
    // 0x4513ec: SP = fp
    //     0x4513ec: mov          SP, fp
    // 0x4513f0: LeaveFrame
    //     0x4513f0: ldp          fp, lr, [SP], #0x10
    // 0x4513f4: ret
    //     0x4513f4: ret          
    // 0x4513f8: r0 = call 0x61fa28
    //     0x4513f8: bl           0x61fa28
    // 0x4513fc: b 0x4513c4
    //     0x4513fc: b            0x4513c4
    // 0x451400: r9 = pp[0x471]
    //     0x451400: add          r9, PP, #0x11, lsl #12
    //     0x451404: ldr          r9, [r9, #0x460]
    // 0x451408: r0 = call 0x620258
    //     0x451408: bl           0x620258
  }

  initState() {
    // ** addr: 0x4d55a8, size: 0xa8
    // 0x4d55a8: EnterFrame
    //     0x4d55a8: stp          fp, lr, [SP, #-0x10]!
    //     0x4d55ac: mov          fp, SP
    // 0x4d55b0: AllocStack(0x18)
    //     0x4d55b0: sub          SP, SP, #0x18
    //     0x4d55b4: stur         r1, [fp, #-8]
    // 0x4d55b8: CheckStackOverflow
    //     0x4d55b8: ldr          BARRIER, [THR, #0x38]
    //     0x4d55bc: cmp          SP, BARRIER
    //     0x4d55c0: b.ls         0x4d5648
    //     0x4d55c4: mov          r1, #1
    // 0x4d55c8: r0 = call 0x61e890
    //     0x4d55c8: bl           0x61e890
    // 0x4d55cc: r1 = r0
    //     0x4d55cc: mov          r1, r0
    //     0x4d55d0: ldur         r0, [fp, #-8]
    //     0x4d55d4: stur         r1, [fp, #-0x10]
    // 0x4d55d8: StoreField: r1->field_f = r0
    //     0x4d55d8: stur         r0, [r1, #0xf]
    // 0x4d55dc: r0 = call 0x4c47f0
    //     0x4d55dc: bl           0x4c47f0
    // 0x4d55e0: r1 = r0
    //     0x4d55e0: mov          r1, r0
    //     0x4d55e4: stur         r0, [fp, #-0x18]
    // 0x4d55e8: r0 = pull_to_refresh$src$smart_refresher_RefreshController::ctor()
    //     0x4d55e8: bl           0x4c46e0
    //     0x4d55ec: ldur         r0, [fp, #-0x18]
    //     0x4d55f0: ldur         r1, [fp, #-8]
    // 0x4d55f4: ArrayStore: r1[0] = r0  ; List_8
    //     0x4d55f4: stur         r0, [r1, #0x17]
    //     0x4d55f8: ldurb        r16, [r1, #-1]
    //     0x4d55fc: ldurb        r17, [r0, #-1]
    //     0x4d5600: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d5604: tst          BARRIER, HEAP, lsr #32
    // 0x4d5608: b.eq 0x4d5610
    //     0x4d5608: b.eq         0x4d5610
    // 0x4d560c: r0 = call 0x61e04c
    //     0x4d560c: bl           0x61e04c
    // 0x4d5610: LoadField: r0 = r1->field_13
    //     0x4d5610: ldur         r0, [r1, #0x13]
    //     0x4d5614: add          r0, r0, HEAP, lsl #32
    //     0x4d5618: ldur         r2, [fp, #-0x10]
    //     0x4d561c: stur         r0, [fp, #-0x18]
    // 0x4d5620: r1 = pp[0x479]
    //     0x4d5620: add          r1, PP, #0x11, lsl #12
    //     0x4d5624: ldr          r1, [r1, #0x468]
    // 0x4d5628: r0 = call 0x61ec54
    //     0x4d5628: bl           0x61ec54
    //     0x4d562c: ldur         r1, [fp, #-0x18]
    // 0x4d5630: r2 = r0
    //     0x4d5630: mov          r2, r0
    // 0x4d5634: r0 = soul_flutter_international$biz$party$notifier$notifier_party_package_history_LuckyBagHistoryListItemNotifier::gainLuckyBagHistory()
    //     0x4d5634: bl           0x4d5650
    // 0x4d5638: r0 = NULL
    //     0x4d5638: mov          r0, NULL
    // 0x4d563c: SP = fp
    //     0x4d563c: mov          SP, fp
    // 0x4d5640: LeaveFrame
    //     0x4d5640: ldp          fp, lr, [SP], #0x10
    // 0x4d5644: ret
    //     0x4d5644: ret          
    // 0x4d5648: r0 = call 0x61fa28
    //     0x4d5648: bl           0x61fa28
    // 0x4d564c: b 0x4d55c4
    //     0x4d564c: b            0x4d55c4
  }

  _anon_closure() {
    // ** addr: 0x4d56a4, size: 0xd4
    // 0x4d56a4: EnterFrame
    //     0x4d56a4: stp          fp, lr, [SP, #-0x10]!
    //     0x4d56a8: mov          fp, SP
    //     0x4d56ac: ldr          r0, [fp, #0x20]
    // 0x4d56b0: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d56b0: ldur         r1, [r0, #0x17]
    //     0x4d56b4: add          r1, r1, HEAP, lsl #32
    // 0x4d56b8: CheckStackOverflow
    //     0x4d56b8: ldr          BARRIER, [THR, #0x38]
    //     0x4d56bc: cmp          SP, BARRIER
    //     0x4d56c0: b.ls         0x4d574c
    //     0x4d56c4: ldr          r0, [fp, #0x18]
    //     0x4d56c8: tbnz         r0, #4, 0x4d571c
    //     0x4d56cc: ldr          r0, [fp, #0x10]
    //     0x4d56d0: tbnz         r0, #4, 0x4d56f8
    // 0x4d56d4: LoadField: r0 = r1->field_f
    //     0x4d56d4: ldur         r0, [r1, #0xf]
    //     0x4d56d8: add          r0, r0, HEAP, lsl #32
    // 0x4d56dc: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d56dc: ldur         r1, [r0, #0x17]
    //     0x4d56e0: add          r1, r1, HEAP, lsl #32
    // 0x4d56e4: BARRIER = pp[0x40]
    //     0x4d56e4: ldr          BARRIER, [PP, #0x40]
    //     0x4d56e8: cmp          r1, r16
    // 0x4d56ec: b.eq 0x4d5754
    //     0x4d56ec: b.eq         0x4d5754
    // 0x4d56f0: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadNoData()
    //     0x4d56f0: bl           0x3adfd4
    // 0x4d56f4: b 0x4d573c
    //     0x4d56f4: b            0x4d573c
    // 0x4d56f8: LoadField: r0 = r1->field_f
    //     0x4d56f8: ldur         r0, [r1, #0xf]
    //     0x4d56fc: add          r0, r0, HEAP, lsl #32
    // 0x4d5700: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d5700: ldur         r1, [r0, #0x17]
    //     0x4d5704: add          r1, r1, HEAP, lsl #32
    // 0x4d5708: BARRIER = pp[0x40]
    //     0x4d5708: ldr          BARRIER, [PP, #0x40]
    //     0x4d570c: cmp          r1, r16
    // 0x4d5710: b.eq 0x4d5760
    //     0x4d5710: b.eq         0x4d5760
    // 0x4d5714: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadComplete()
    //     0x4d5714: bl           0x3ade48
    // 0x4d5718: b 0x4d573c
    //     0x4d5718: b            0x4d573c
    // 0x4d571c: LoadField: r0 = r1->field_f
    //     0x4d571c: ldur         r0, [r1, #0xf]
    //     0x4d5720: add          r0, r0, HEAP, lsl #32
    // 0x4d5724: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d5724: ldur         r1, [r0, #0x17]
    //     0x4d5728: add          r1, r1, HEAP, lsl #32
    // 0x4d572c: BARRIER = pp[0x40]
    //     0x4d572c: ldr          BARRIER, [PP, #0x40]
    //     0x4d5730: cmp          r1, r16
    // 0x4d5734: b.eq 0x4d576c
    //     0x4d5734: b.eq         0x4d576c
    // 0x4d5738: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadFailed()
    //     0x4d5738: bl           0x3adbb4
    // 0x4d573c: r0 = NULL
    //     0x4d573c: mov          r0, NULL
    // 0x4d5740: SP = fp
    //     0x4d5740: mov          SP, fp
    // 0x4d5744: LeaveFrame
    //     0x4d5744: ldp          fp, lr, [SP], #0x10
    // 0x4d5748: ret
    //     0x4d5748: ret          
    // 0x4d574c: r0 = call 0x61fa28
    //     0x4d574c: bl           0x61fa28
    // 0x4d5750: b 0x4d56c4
    //     0x4d5750: b            0x4d56c4
    // 0x4d5754: r9 = pp[0x471]
    //     0x4d5754: add          r9, PP, #0x11, lsl #12
    //     0x4d5758: ldr          r9, [r9, #0x460]
    // 0x4d575c: r0 = call 0x620258
    //     0x4d575c: bl           0x620258
    // 0x4d5760: r9 = pp[0x471]
    //     0x4d5760: add          r9, PP, #0x11, lsl #12
    //     0x4d5764: ldr          r9, [r9, #0x460]
    // 0x4d5768: r0 = call 0x620258
    //     0x4d5768: bl           0x620258
    // 0x4d576c: r9 = pp[0x471]
    //     0x4d576c: add          r9, PP, #0x11, lsl #12
    //     0x4d5770: ldr          r9, [r9, #0x460]
    // 0x4d5774: r0 = call 0x620258
    //     0x4d5774: bl           0x620258
  }

  createState() {
    // ** addr: 0x4c4334, size: 0x80
    // 0x4c4334: EnterFrame
    //     0x4c4334: stp          fp, lr, [SP, #-0x10]!
    //     0x4c4338: mov          fp, SP
    // 0x4c433c: AllocStack(0x10)
    //     0x4c433c: sub          SP, SP, #0x10
    // 0x4c4340: CheckStackOverflow
    //     0x4c4340: ldr          BARRIER, [THR, #0x38]
    //     0x4c4344: cmp          SP, BARRIER
    //     0x4c4348: b.ls         0x4c43ac
    // 0x4c434c: r1 = pp[0x7db]
    //     0x4c434c: add          r1, PP, #0xb, lsl #12
    //     0x4c4350: ldr          r1, [r1, #0x7d0]
    // 0x4c4354: r0 = call 0x4c4488
    //     0x4c4354: bl           0x4c4488
    // 0x4c4358: r1 = r0
    //     0x4c4358: mov          r1, r0
    // 0x4c435c: r0 = pp[0x40]
    //     0x4c435c: ldr          r0, [PP, #0x40]
    //     0x4c4360: stur         r1, [fp, #-8]
    // 0x4c4364: ArrayStore: r1[0] = r0  ; List_8
    //     0x4c4364: stur         r0, [r1, #0x17]
    // 0x4c4368: r0 = call 0x4c447c
    //     0x4c4368: bl           0x4c447c
    // 0x4c436c: r1 = r0
    //     0x4c436c: mov          r1, r0
    //     0x4c4370: stur         r0, [fp, #-0x10]
    // 0x4c4374: r0 = soul_flutter_international$biz$party$notifier$notifier_party_package_history_LuckyBagHistoryListItemNotifier::ctor()
    //     0x4c4374: bl           0x4c43b4
    //     0x4c4378: ldur         r0, [fp, #-0x10]
    //     0x4c437c: ldur         r1, [fp, #-8]
    // 0x4c4380: StoreField: r1->field_13 = r0
    //     0x4c4380: stur         r0, [r1, #0x13]
    //     0x4c4384: ldurb        r16, [r1, #-1]
    //     0x4c4388: ldurb        r17, [r0, #-1]
    //     0x4c438c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c4390: tst          BARRIER, HEAP, lsr #32
    // 0x4c4394: b.eq 0x4c439c
    //     0x4c4394: b.eq         0x4c439c
    // 0x4c4398: r0 = call 0x61e04c
    //     0x4c4398: bl           0x61e04c
    // 0x4c439c: r0 = r1
    //     0x4c439c: mov          r0, r1
    // 0x4c43a0: SP = fp
    //     0x4c43a0: mov          SP, fp
    // 0x4c43a4: LeaveFrame
    //     0x4c43a4: ldp          fp, lr, [SP], #0x10
    // 0x4c43a8: ret
    //     0x4c43a8: ret          
    // 0x4c43ac: r0 = call 0x61fa28
    //     0x4c43ac: bl           0x61fa28
    // 0x4c43b0: b 0x4c434c
    //     0x4c43b0: b            0x4c434c
  }
