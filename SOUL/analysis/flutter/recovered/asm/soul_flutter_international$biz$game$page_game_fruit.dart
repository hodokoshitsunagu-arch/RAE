// lib: , url: soul_flutter_international$biz$game$page_game_fruit


  build() {
    // ** addr: 0x41a20c, size: 0x13c
    // 0x41a20c: EnterFrame
    //     0x41a20c: stp          fp, lr, [SP, #-0x10]!
    //     0x41a210: mov          fp, SP
    // 0x41a214: AllocStack(0x30)
    //     0x41a214: sub          SP, SP, #0x30
    //     0x41a218: stur         r1, [fp, #-8]
    // 0x41a21c: CheckStackOverflow
    //     0x41a21c: ldr          BARRIER, [THR, #0x38]
    //     0x41a220: cmp          SP, BARRIER
    //     0x41a224: b.ls         0x41a340
    //     0x41a228: mov          r1, #1
    // 0x41a22c: r0 = call 0x61e890
    //     0x41a22c: bl           0x61e890
    // 0x41a230: r2 = r0
    //     0x41a230: mov          r2, r0
    //     0x41a234: ldur         r0, [fp, #-8]
    //     0x41a238: stur         r2, [fp, #-0x10]
    // 0x41a23c: StoreField: r2->field_f = r0
    //     0x41a23c: stur         r0, [r2, #0xf]
    // 0x41a240: r1 = pp[0x8fc]
    //     0x41a240: add          r1, PP, #0xc, lsl #12
    //     0x41a244: ldr          r1, [r1, #0x8f0]
    // 0x41a248: r4 = pp[0x4c0]
    //     0x41a248: ldr          r4, [PP, #0x4c0]
    // 0x41a24c: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x41a24c: bl           0x3a1dcc
    //     0x41a250: stur         r0, [fp, #-0x18]
    // 0x41a254: r0 = soul_flutter_international$res$colors_SOColors::get_s_06()
    //     0x41a254: bl           0x3b82c4
    // 0x41a258: r3 = r0
    //     0x41a258: mov          r3, r0
    //     0x41a25c: ldur         r0, [fp, #-8]
    //     0x41a260: stur         r3, [fp, #-0x28]
    // 0x41a264: LoadField: r4 = r0->field_13
    //     0x41a264: ldur         r4, [r0, #0x13]
    //     0x41a268: add          r4, r4, HEAP, lsl #32
    //     0x41a26c: ldur         r2, [fp, #-0x10]
    //     0x41a270: stur         r4, [fp, #-0x20]
    // 0x41a274: r1 = pp[0xa31]
    //     0x41a274: add          r1, PP, #0x11, lsl #12
    //     0x41a278: ldr          r1, [r1, #0xa20]
    // 0x41a27c: r0 = call 0x61ec54
    //     0x41a27c: bl           0x61ec54
    // 0x41a280: r1 = pp[0xa39]
    //     0x41a280: add          r1, PP, #0x11, lsl #12
    //     0x41a284: ldr          r1, [r1, #0xa28]
    //     0x41a288: stur         r0, [fp, #-8]
    // 0x41a28c: r0 = call 0x41a414
    //     0x41a28c: bl           0x41a414
    // 0x41a290: r2 = r0
    //     0x41a290: mov          r2, r0
    //     0x41a294: ldur         r0, [fp, #-8]
    //     0x41a298: stur         r2, [fp, #-0x30]
    // 0x41a29c: StoreField: r2->field_13 = r0
    //     0x41a29c: stur         r0, [r2, #0x13]
    // 0x41a2a0: r1 = pp[0xa39]
    //     0x41a2a0: add          r1, PP, #0x11, lsl #12
    //     0x41a2a4: ldr          r1, [r1, #0xa28]
    // 0x41a2a8: r0 = call 0x41a408
    //     0x41a2a8: bl           0x41a408
    // 0x41a2ac: r2 = r0
    //     0x41a2ac: mov          r2, r0
    //     0x41a2b0: ldur         r0, [fp, #-0x20]
    //     0x41a2b4: stur         r2, [fp, #-8]
    // 0x41a2b8: StoreField: r2->field_b = r0
    //     0x41a2b8: stur         r0, [r2, #0xb]
    // 0x41a2bc: r0 = pp[0x2fc]
    //     0x41a2bc: add          r0, PP, #0xc, lsl #12
    //     0x41a2c0: ldr          r0, [r0, #0x2f0]
    // 0x41a2c4: StoreField: r2->field_13 = r0
    //     0x41a2c4: stur         r0, [r2, #0x13]
    // 0x41a2c8: r1 = pp[0xa39]
    //     0x41a2c8: add          r1, PP, #0x11, lsl #12
    //     0x41a2cc: ldr          r1, [r1, #0xa28]
    // 0x41a2d0: r0 = call 0x3b81c4
    //     0x41a2d0: bl           0x3b81c4
    // 0x41a2d4: r2 = r0
    //     0x41a2d4: mov          r2, r0
    //     0x41a2d8: ldur         r0, [fp, #-8]
    //     0x41a2dc: stur         r2, [fp, #-0x20]
    // 0x41a2e0: StoreField: r2->field_13 = r0
    //     0x41a2e0: stur         r0, [r2, #0x13]
    //     0x41a2e4: ldur         r0, [fp, #-0x30]
    // 0x41a2e8: StoreField: r2->field_b = r0
    //     0x41a2e8: stur         r0, [r2, #0xb]
    // 0x41a2ec: r1 = r2
    //     0x41a2ec: mov          r1, r2
    // 0x41a2f0: r0 = dart_async__RootZone::op_at()
    //     0x41a2f0: bl           0x60bd34
    // 0x41a2f4: r0 = call 0x3b7d48
    //     0x41a2f4: bl           0x3b7d48
    // 0x41a2f8: r3 = r0
    //     0x41a2f8: mov          r3, r0
    //     0x41a2fc: ldur         r0, [fp, #-0x18]
    //     0x41a300: stur         r3, [fp, #-8]
    // 0x41a304: StoreField: r3->field_b = r0
    //     0x41a304: stur         r0, [r3, #0xb]
    //     0x41a308: ldur         r0, [fp, #-0x28]
    // 0x41a30c: ArrayStore: r3[0] = r0  ; List_8
    //     0x41a30c: stur         r0, [r3, #0x17]
    //     0x41a310: ldur         r0, [fp, #-0x20]
    // 0x41a314: StoreField: r3->field_1b = r0
    //     0x41a314: stur         r0, [r3, #0x1b]
    //     0x41a318: ldur         r2, [fp, #-0x10]
    // 0x41a31c: r1 = pp[0xa41]
    //     0x41a31c: add          r1, PP, #0x11, lsl #12
    //     0x41a320: ldr          r1, [r1, #0xa30]
    // 0x41a324: r0 = call 0x61ec54
    //     0x41a324: bl           0x61ec54
    // 0x41a328: r1 = r0
    //     0x41a328: mov          r1, r0
    //     0x41a32c: ldur         r0, [fp, #-8]
    // 0x41a330: StoreField: r0->field_1f = r1
    //     0x41a330: stur         r1, [r0, #0x1f]
    // 0x41a334: SP = fp
    //     0x41a334: mov          SP, fp
    // 0x41a338: LeaveFrame
    //     0x41a338: ldp          fp, lr, [SP], #0x10
    // 0x41a33c: ret
    //     0x41a33c: ret          
    // 0x41a340: r0 = call 0x61fa28
    //     0x41a340: bl           0x61fa28
    // 0x41a344: b 0x41a228
    //     0x41a344: b            0x41a228
  }

  _anon_closure() {
    // ** addr: 0x41a420, size: 0x4c
    // 0x41a420: EnterFrame
    //     0x41a420: stp          fp, lr, [SP, #-0x10]!
    //     0x41a424: mov          fp, SP
    //     0x41a428: ldr          r0, [fp, #0x10]
    // 0x41a42c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x41a42c: ldur         r1, [r0, #0x17]
    //     0x41a430: add          r1, r1, HEAP, lsl #32
    // 0x41a434: CheckStackOverflow
    //     0x41a434: ldr          BARRIER, [THR, #0x38]
    //     0x41a438: cmp          SP, BARRIER
    //     0x41a43c: b.ls         0x41a464
    // 0x41a440: LoadField: r0 = r1->field_f
    //     0x41a440: ldur         r0, [r1, #0xf]
    //     0x41a444: add          r0, r0, HEAP, lsl #32
    // 0x41a448: LoadField: r1 = r0->field_13
    //     0x41a448: ldur         r1, [r0, #0x13]
    //     0x41a44c: add          r1, r1, HEAP, lsl #32
    // 0x41a450: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::release()
    //     0x41a450: bl           0x41a46c
    // 0x41a454: r0 = NULL
    //     0x41a454: mov          r0, NULL
    // 0x41a458: SP = fp
    //     0x41a458: mov          SP, fp
    // 0x41a45c: LeaveFrame
    //     0x41a45c: ldp          fp, lr, [SP], #0x10
    // 0x41a460: ret
    //     0x41a460: ret          
    // 0x41a464: r0 = call 0x61fa28
    //     0x41a464: bl           0x61fa28
    // 0x41a468: b 0x41a440
    //     0x41a468: b            0x41a440
  }

  _anon_closure() {
    // ** addr: 0x41a55c, size: 0xb08
    // 0x41a55c: EnterFrame
    //     0x41a55c: stp          fp, lr, [SP, #-0x10]!
    //     0x41a560: mov          fp, SP
    // 0x41a564: AllocStack(0x88)
    //     0x41a564: sub          SP, SP, #0x88
    //     0x41a568: ldr          r0, [fp, #0x28]
    // 0x41a56c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x41a56c: ldur         r1, [r0, #0x17]
    //     0x41a570: add          r1, r1, HEAP, lsl #32
    //     0x41a574: stur         r1, [fp, #-8]
    // 0x41a578: CheckStackOverflow
    //     0x41a578: ldr          BARRIER, [THR, #0x38]
    //     0x41a57c: cmp          SP, BARRIER
    //     0x41a580: b.ls         0x41b050
    // 0x41a584: r0 = call 0x2b8e80
    //     0x41a584: bl           0x2b8e80
    //     0x41a588: stur         r0, [fp, #-0x10]
    // 0x41a58c: StoreField: r0->field_7 = xzr
    //     0x41a58c: stur         xzr, [r0, #7]
    // 0x41a590: d0 = pp[0xb90]
    //     0x41a590: ldr          d0, [PP, #0xb90]
    // 0x41a594: StoreField: r0->field_f = d0
    //     0x41a594: stur         d0, [r0, #0xf]
    // 0x41a598: d1 = pp[0xa49]
    //     0x41a598: add          r17, PP, #0x11, lsl #12
    //     0x41a59c: ldr          d1, [r17, #0xa38]
    // 0x41a5a0: ArrayStore: r0[0] = d1  ; List_8
    //     0x41a5a0: stur         d1, [r0, #0x17]
    // 0x41a5a4: StoreField: r0->field_1f = d0
    //     0x41a5a4: stur         d0, [r0, #0x1f]
    // 0x41a5a8: r1 = pp[0xede]
    //     0x41a5a8: add          r1, PP, #0xe, lsl #12
    //     0x41a5ac: ldr          r1, [r1, #0xed0]
    // 0x41a5b0: r0 = call 0x3b5478
    //     0x41a5b0: bl           0x3b5478
    // 0x41a5b4: r1 = r0
    //     0x41a5b4: mov          r1, r0
    // 0x41a5b8: r0 = pp[0xa51]
    //     0x41a5b8: add          r0, PP, #0x11, lsl #12
    //     0x41a5bc: ldr          r0, [r0, #0xa40]
    //     0x41a5c0: stur         r1, [fp, #-0x18]
    // 0x41a5c4: StoreField: r1->field_b = r0
    //     0x41a5c4: stur         r0, [r1, #0xb]
    // 0x41a5c8: r0 = call 0x3b546c
    //     0x41a5c8: bl           0x3b546c
    // 0x41a5cc: r1 = r0
    //     0x41a5cc: mov          r1, r0
    //     0x41a5d0: ldur         r0, [fp, #-0x18]
    //     0x41a5d4: stur         r1, [fp, #-0x20]
    // 0x41a5d8: StoreField: r1->field_7 = r0
    //     0x41a5d8: stur         r0, [r1, #7]
    // 0x41a5dc: r0 = pp[0x1ef]
    //     0x41a5dc: add          r0, PP, #0xf, lsl #12
    //     0x41a5e0: ldr          r0, [r0, #0x1e0]
    // 0x41a5e4: StoreField: r1->field_13 = r0
    //     0x41a5e4: stur         r0, [r1, #0x13]
    // 0x41a5e8: r2 = pp[0xaae]
    //     0x41a5e8: add          r2, PP, #0xe, lsl #12
    //     0x41a5ec: ldr          r2, [r2, #0xaa0]
    // 0x41a5f0: ArrayStore: r1[0] = r2  ; List_8
    //     0x41a5f0: stur         r2, [r1, #0x17]
    // 0x41a5f4: r3 = pp[0xef6]
    //     0x41a5f4: add          r3, PP, #0xe, lsl #12
    //     0x41a5f8: ldr          r3, [r3, #0xee8]
    // 0x41a5fc: StoreField: r1->field_1f = r3
    //     0x41a5fc: stur         r3, [r1, #0x1f]
    //     0x41a600: add          r4, NULL, #0x30
    // 0x41a604: StoreField: r1->field_23 = r4
    //     0x41a604: stur         r4, [r1, #0x23]
    //     0x41a608: fmov         d0, #1.00000000
    // 0x41a60c: StoreField: r1->field_27 = d0
    //     0x41a60c: stur         d0, [r1, #0x27]
    // 0x41a610: StoreField: r1->field_2f = d0
    //     0x41a610: stur         d0, [r1, #0x2f]
    // 0x41a614: r5 = pp[0xefe]
    //     0x41a614: add          r5, PP, #0xe, lsl #12
    //     0x41a618: ldr          r5, [r5, #0xef0]
    // 0x41a61c: StoreField: r1->field_37 = r5
    //     0x41a61c: stur         r5, [r1, #0x37]
    // 0x41a620: StoreField: r1->field_3b = r4
    //     0x41a620: stur         r4, [r1, #0x3b]
    // 0x41a624: StoreField: r1->field_3f = r4
    //     0x41a624: stur         r4, [r1, #0x3f]
    // 0x41a628: r0 = call 0x391dd8
    //     0x41a628: bl           0x391dd8
    // 0x41a62c: r2 = r0
    //     0x41a62c: mov          r2, r0
    //     0x41a630: ldur         r0, [fp, #-0x20]
    //     0x41a634: stur         r2, [fp, #-0x18]
    // 0x41a638: StoreField: r2->field_b = r0
    //     0x41a638: stur         r0, [r2, #0xb]
    // 0x41a63c: r0 = pp[0xb86]
    //     0x41a63c: add          r0, PP, #0xe, lsl #12
    //     0x41a640: ldr          r0, [r0, #0xb78]
    // 0x41a644: StoreField: r2->field_23 = r0
    //     0x41a644: stur         r0, [r2, #0x23]
    //     0x41a648: ldur         r3, [fp, #-8]
    // 0x41a64c: LoadField: r1 = r3->field_f
    //     0x41a64c: ldur         r1, [r3, #0xf]
    //     0x41a650: add          r1, r1, HEAP, lsl #32
    // 0x41a654: r0 = soul_flutter_international$biz$game$page_game_fruit__GameFruitPageState::_buildTopWidget()
    //     0x41a654: bl           0x41b4c8
    // 0x41a658: r2 = r0
    //     0x41a658: mov          r2, r0
    //     0x41a65c: ldur         r0, [fp, #-8]
    //     0x41a660: stur         r2, [fp, #-0x20]
    // 0x41a664: LoadField: r1 = r0->field_f
    //     0x41a664: ldur         r1, [r0, #0xf]
    //     0x41a668: add          r1, r1, HEAP, lsl #32
    // 0x41a66c: LoadField: r3 = r1->field_13
    //     0x41a66c: ldur         r3, [r1, #0x13]
    //     0x41a670: add          r3, r3, HEAP, lsl #32
    // 0x41a674: r1 = r3
    //     0x41a674: mov          r1, r3
    // 0x41a678: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::get_currentTips()
    //     0x41a678: bl           0x41b40c
    //     0x41a67c: stur         r0, [fp, #-0x28]
    // 0x41a680: r0 = soul_flutter_international$res$colors_SOColors::get_color_3e00a5()
    //     0x41a680: bl           0x41b3c8
    //     0x41a684: stur         r0, [fp, #-0x30]
    // 0x41a688: r0 = call 0x31abec
    //     0x41a688: bl           0x31abec
    // 0x41a68c: r1 = r0
    //     0x41a68c: mov          r1, r0
    //     0x41a690: add          r0, NULL, #0x20
    //     0x41a694: stur         r1, [fp, #-0x38]
    // 0x41a698: StoreField: r1->field_7 = r0
    //     0x41a698: stur         r0, [r1, #7]
    //     0x41a69c: ldur         r2, [fp, #-0x30]
    // 0x41a6a0: StoreField: r1->field_b = r2
    //     0x41a6a0: stur         r2, [r1, #0xb]
    // 0x41a6a4: r2 = pp[0x217]
    //     0x41a6a4: add          r2, PP, #0xf, lsl #12
    //     0x41a6a8: ldr          r2, [r2, #0x208]
    // 0x41a6ac: StoreField: r1->field_1f = r2
    //     0x41a6ac: stur         r2, [r1, #0x1f]
    // 0x41a6b0: r2 = pp[0xa59]
    //     0x41a6b0: add          r2, PP, #0x11, lsl #12
    //     0x41a6b4: ldr          r2, [r2, #0xa48]
    // 0x41a6b8: StoreField: r1->field_23 = r2
    //     0x41a6b8: stur         r2, [r1, #0x23]
    // 0x41a6bc: r0 = call 0x393bf8
    //     0x41a6bc: bl           0x393bf8
    // 0x41a6c0: r1 = r0
    //     0x41a6c0: mov          r1, r0
    //     0x41a6c4: ldur         r0, [fp, #-0x28]
    //     0x41a6c8: stur         r1, [fp, #-0x30]
    // 0x41a6cc: StoreField: r1->field_b = r0
    //     0x41a6cc: stur         r0, [r1, #0xb]
    //     0x41a6d0: ldur         r0, [fp, #-0x38]
    // 0x41a6d4: StoreField: r1->field_13 = r0
    //     0x41a6d4: stur         r0, [r1, #0x13]
    // 0x41a6d8: r0 = pp[0x23f]
    //     0x41a6d8: add          r0, PP, #0xf, lsl #12
    //     0x41a6dc: ldr          r0, [r0, #0x230]
    // 0x41a6e0: StoreField: r1->field_2b = r0
    //     0x41a6e0: stur         r0, [r1, #0x2b]
    //     0x41a6e4: mov          r0, #2
    // 0x41a6e8: StoreField: r1->field_37 = r0
    //     0x41a6e8: stur         r0, [r1, #0x37]
    // 0x41a6ec: r0 = call 0x391c0c
    //     0x41a6ec: bl           0x391c0c
    // 0x41a6f0: r1 = r0
    //     0x41a6f0: mov          r1, r0
    // 0x41a6f4: r0 = pp[0xa61]
    //     0x41a6f4: add          r0, PP, #0x11, lsl #12
    //     0x41a6f8: ldr          r0, [r0, #0xa50]
    //     0x41a6fc: stur         r1, [fp, #-0x38]
    // 0x41a700: StoreField: r1->field_f = r0
    //     0x41a700: stur         r0, [r1, #0xf]
    //     0x41a704: ldur         r0, [fp, #-0x30]
    // 0x41a708: StoreField: r1->field_b = r0
    //     0x41a708: stur         r0, [r1, #0xb]
    //     0x41a70c: ldur         r0, [fp, #-8]
    // 0x41a710: LoadField: r2 = r0->field_f
    //     0x41a710: ldur         r2, [r0, #0xf]
    //     0x41a714: add          r2, r2, HEAP, lsl #32
    // 0x41a718: LoadField: r3 = r2->field_13
    //     0x41a718: ldur         r3, [r2, #0x13]
    //     0x41a71c: add          r3, r3, HEAP, lsl #32
    //     0x41a720: stur         r3, [fp, #-0x28]
    // 0x41a724: r0 = call 0x41b3bc
    //     0x41a724: bl           0x41b3bc
    // 0x41a728: r2 = r0
    //     0x41a728: mov          r2, r0
    //     0x41a72c: ldur         r0, [fp, #-0x28]
    //     0x41a730: stur         r2, [fp, #-0x30]
    // 0x41a734: StoreField: r2->field_b = r0
    //     0x41a734: stur         r0, [r2, #0xb]
    // 0x41a738: r1 = pp[0xede]
    //     0x41a738: add          r1, PP, #0xe, lsl #12
    //     0x41a73c: ldr          r1, [r1, #0xed0]
    // 0x41a740: r0 = call 0x3b5478
    //     0x41a740: bl           0x3b5478
    // 0x41a744: r1 = r0
    //     0x41a744: mov          r1, r0
    // 0x41a748: r0 = pp[0xa69]
    //     0x41a748: add          r0, PP, #0x11, lsl #12
    //     0x41a74c: ldr          r0, [r0, #0xa58]
    //     0x41a750: stur         r1, [fp, #-0x40]
    // 0x41a754: StoreField: r1->field_b = r0
    //     0x41a754: stur         r0, [r1, #0xb]
    // 0x41a758: r0 = call 0x3b546c
    //     0x41a758: bl           0x3b546c
    // 0x41a75c: r1 = r0
    //     0x41a75c: mov          r1, r0
    //     0x41a760: ldur         r0, [fp, #-0x40]
    //     0x41a764: stur         r1, [fp, #-0x48]
    // 0x41a768: StoreField: r1->field_7 = r0
    //     0x41a768: stur         r0, [r1, #7]
    // 0x41a76c: r0 = pp[0x1ef]
    //     0x41a76c: add          r0, PP, #0xf, lsl #12
    //     0x41a770: ldr          r0, [r0, #0x1e0]
    // 0x41a774: StoreField: r1->field_13 = r0
    //     0x41a774: stur         r0, [r1, #0x13]
    // 0x41a778: r2 = pp[0xaae]
    //     0x41a778: add          r2, PP, #0xe, lsl #12
    //     0x41a77c: ldr          r2, [r2, #0xaa0]
    // 0x41a780: ArrayStore: r1[0] = r2  ; List_8
    //     0x41a780: stur         r2, [r1, #0x17]
    // 0x41a784: r3 = pp[0xef6]
    //     0x41a784: add          r3, PP, #0xe, lsl #12
    //     0x41a788: ldr          r3, [r3, #0xee8]
    // 0x41a78c: StoreField: r1->field_1f = r3
    //     0x41a78c: stur         r3, [r1, #0x1f]
    //     0x41a790: add          r4, NULL, #0x30
    // 0x41a794: StoreField: r1->field_23 = r4
    //     0x41a794: stur         r4, [r1, #0x23]
    //     0x41a798: fmov         d0, #1.00000000
    // 0x41a79c: StoreField: r1->field_27 = d0
    //     0x41a79c: stur         d0, [r1, #0x27]
    // 0x41a7a0: StoreField: r1->field_2f = d0
    //     0x41a7a0: stur         d0, [r1, #0x2f]
    // 0x41a7a4: r5 = pp[0xefe]
    //     0x41a7a4: add          r5, PP, #0xe, lsl #12
    //     0x41a7a8: ldr          r5, [r5, #0xef0]
    // 0x41a7ac: StoreField: r1->field_37 = r5
    //     0x41a7ac: stur         r5, [r1, #0x37]
    // 0x41a7b0: StoreField: r1->field_3b = r4
    //     0x41a7b0: stur         r4, [r1, #0x3b]
    // 0x41a7b4: StoreField: r1->field_3f = r4
    //     0x41a7b4: stur         r4, [r1, #0x3f]
    // 0x41a7b8: r0 = call 0x391dd8
    //     0x41a7b8: bl           0x391dd8
    // 0x41a7bc: r1 = r0
    //     0x41a7bc: mov          r1, r0
    //     0x41a7c0: ldur         r0, [fp, #-0x48]
    //     0x41a7c4: stur         r1, [fp, #-0x40]
    // 0x41a7c8: StoreField: r1->field_b = r0
    //     0x41a7c8: stur         r0, [r1, #0xb]
    // 0x41a7cc: r0 = pp[0xb86]
    //     0x41a7cc: add          r0, PP, #0xe, lsl #12
    //     0x41a7d0: ldr          r0, [r0, #0xb78]
    // 0x41a7d4: StoreField: r1->field_23 = r0
    //     0x41a7d4: stur         r0, [r1, #0x23]
    //     0x41a7d8: ldur         r2, [fp, #-0x28]
    // 0x41a7dc: LoadField: r3 = r2->field_57
    //     0x41a7dc: ldur         r3, [r2, #0x57]
    //     0x41a7e0: add          r3, r3, HEAP, lsl #32
    // 0x41a7e4: LoadField: r2 = r3->field_13
    //     0x41a7e4: ldur         r2, [r3, #0x13]
    //     0x41a7e8: add          r2, r2, HEAP, lsl #32
    // 0x41a7ec: BARRIER = pp[0x40]
    //     0x41a7ec: ldr          BARRIER, [PP, #0x40]
    //     0x41a7f0: cmp          r2, r16
    // 0x41a7f4: b.eq 0x41b058
    //     0x41a7f4: b.eq         0x41b058
    //     0x41a7f8: str          r2, [SP]
    // 0x41a7fc: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x41a7fc: bl           0x2ac0a0
    //     0x41a800: stur         r0, [fp, #-0x28]
    // 0x41a804: r0 = call 0x31abec
    //     0x41a804: bl           0x31abec
    // 0x41a808: r1 = r0
    //     0x41a808: mov          r1, r0
    //     0x41a80c: add          r0, NULL, #0x20
    //     0x41a810: stur         r1, [fp, #-0x48]
    // 0x41a814: StoreField: r1->field_7 = r0
    //     0x41a814: stur         r0, [r1, #7]
    // 0x41a818: r2 = pp[0x6050]
    //     0x41a818: ldr          r2, [PP, #0x6050]
    // 0x41a81c: StoreField: r1->field_b = r2
    //     0x41a81c: stur         r2, [r1, #0xb]
    // 0x41a820: r3 = pp[0xb5e]
    //     0x41a820: add          r3, PP, #0xe, lsl #12
    //     0x41a824: ldr          r3, [r3, #0xb50]
    // 0x41a828: StoreField: r1->field_1f = r3
    //     0x41a828: stur         r3, [r1, #0x1f]
    // 0x41a82c: r4 = pp[0xa59]
    //     0x41a82c: add          r4, PP, #0x11, lsl #12
    //     0x41a830: ldr          r4, [r4, #0xa48]
    // 0x41a834: StoreField: r1->field_23 = r4
    //     0x41a834: stur         r4, [r1, #0x23]
    // 0x41a838: r0 = call 0x393bf8
    //     0x41a838: bl           0x393bf8
    // 0x41a83c: r2 = r0
    //     0x41a83c: mov          r2, r0
    //     0x41a840: ldur         r0, [fp, #-0x28]
    //     0x41a844: stur         r2, [fp, #-0x50]
    // 0x41a848: StoreField: r2->field_b = r0
    //     0x41a848: stur         r0, [r2, #0xb]
    //     0x41a84c: ldur         r0, [fp, #-0x48]
    // 0x41a850: StoreField: r2->field_13 = r0
    //     0x41a850: stur         r0, [r2, #0x13]
    // 0x41a854: r1 = pp[0x8d4]
    //     0x41a854: add          r1, PP, #0xc, lsl #12
    //     0x41a858: ldr          r1, [r1, #0x8c8]
    // 0x41a85c: r4 = pp[0x4c0]
    //     0x41a85c: ldr          r4, [PP, #0x4c0]
    // 0x41a860: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x41a860: bl           0x3a1dcc
    //     0x41a864: stur         r0, [fp, #-0x28]
    // 0x41a868: r0 = call 0x31abec
    //     0x41a868: bl           0x31abec
    // 0x41a86c: r1 = r0
    //     0x41a86c: mov          r1, r0
    //     0x41a870: add          r0, NULL, #0x20
    //     0x41a874: stur         r1, [fp, #-0x48]
    // 0x41a878: StoreField: r1->field_7 = r0
    //     0x41a878: stur         r0, [r1, #7]
    // 0x41a87c: r2 = pp[0x6050]
    //     0x41a87c: ldr          r2, [PP, #0x6050]
    // 0x41a880: StoreField: r1->field_b = r2
    //     0x41a880: stur         r2, [r1, #0xb]
    // 0x41a884: r3 = pp[0x7598]
    //     0x41a884: ldr          r3, [PP, #0x7598]
    // 0x41a888: StoreField: r1->field_1f = r3
    //     0x41a888: stur         r3, [r1, #0x1f]
    // 0x41a88c: r0 = call 0x393bf8
    //     0x41a88c: bl           0x393bf8
    // 0x41a890: r3 = r0
    //     0x41a890: mov          r3, r0
    //     0x41a894: ldur         r0, [fp, #-0x28]
    //     0x41a898: stur         r3, [fp, #-0x58]
    // 0x41a89c: StoreField: r3->field_b = r0
    //     0x41a89c: stur         r0, [r3, #0xb]
    //     0x41a8a0: ldur         r0, [fp, #-0x48]
    // 0x41a8a4: StoreField: r3->field_13 = r0
    //     0x41a8a4: stur         r0, [r3, #0x13]
    // 0x41a8a8: r1 = NULL
    //     0x41a8a8: mov          r1, NULL
    //     0x41a8ac: mov          r2, #4
    // 0x41a8b0: r0 = call 0x61f920
    //     0x41a8b0: bl           0x61f920
    // 0x41a8b4: r2 = r0
    //     0x41a8b4: mov          r2, r0
    //     0x41a8b8: ldur         r0, [fp, #-0x50]
    //     0x41a8bc: stur         r2, [fp, #-0x28]
    // 0x41a8c0: StoreField: r2->field_f = r0
    //     0x41a8c0: stur         r0, [r2, #0xf]
    //     0x41a8c4: ldur         r0, [fp, #-0x58]
    // 0x41a8c8: StoreField: r2->field_13 = r0
    //     0x41a8c8: stur         r0, [r2, #0x13]
    // 0x41a8cc: r1 = pp[0x5c58]
    //     0x41a8cc: ldr          r1, [PP, #0x5c58]
    // 0x41a8d0: r0 = call 0x61e854
    //     0x41a8d0: bl           0x61e854
    // 0x41a8d4: r1 = r0
    //     0x41a8d4: mov          r1, r0
    //     0x41a8d8: ldur         r0, [fp, #-0x28]
    //     0x41a8dc: stur         r1, [fp, #-0x48]
    // 0x41a8e0: StoreField: r1->field_f = r0
    //     0x41a8e0: stur         r0, [r1, #0xf]
    //     0x41a8e4: mov          r2, #4
    // 0x41a8e8: StoreField: r1->field_b = r2
    //     0x41a8e8: stur         r2, [r1, #0xb]
    // 0x41a8ec: r0 = call 0x39310c
    //     0x41a8ec: bl           0x39310c
    // 0x41a8f0: r1 = r0
    //     0x41a8f0: mov          r1, r0
    // 0x41a8f4: r0 = pp[0x862]
    //     0x41a8f4: add          r0, PP, #0xa, lsl #12
    //     0x41a8f8: ldr          r0, [r0, #0x858]
    //     0x41a8fc: stur         r1, [fp, #-0x28]
    // 0x41a900: StoreField: r1->field_f = r0
    //     0x41a900: stur         r0, [r1, #0xf]
    // 0x41a904: r2 = pp[0xaee]
    //     0x41a904: add          r2, PP, #0xe, lsl #12
    //     0x41a908: ldr          r2, [r2, #0xae0]
    // 0x41a90c: StoreField: r1->field_13 = r2
    //     0x41a90c: stur         r2, [r1, #0x13]
    // 0x41a910: r3 = pp[0xb16]
    //     0x41a910: add          r3, PP, #0xe, lsl #12
    //     0x41a914: ldr          r3, [r3, #0xb08]
    // 0x41a918: ArrayStore: r1[0] = r3  ; List_8
    //     0x41a918: stur         r3, [r1, #0x17]
    // 0x41a91c: r4 = pp[0xb6e]
    //     0x41a91c: add          r4, PP, #0xe, lsl #12
    //     0x41a920: ldr          r4, [r4, #0xb60]
    // 0x41a924: StoreField: r1->field_1b = r4
    //     0x41a924: stur         r4, [r1, #0x1b]
    // 0x41a928: r5 = pp[0xb06]
    //     0x41a928: add          r5, PP, #0xe, lsl #12
    //     0x41a92c: ldr          r5, [r5, #0xaf8]
    // 0x41a930: StoreField: r1->field_23 = r5
    //     0x41a930: stur         r5, [r1, #0x23]
    // 0x41a934: r6 = pp[0xb2]
    //     0x41a934: add          r6, PP, #0xa, lsl #12
    //     0x41a938: ldr          r6, [r6, #0xa8]
    // 0x41a93c: StoreField: r1->field_2b = r6
    //     0x41a93c: stur         r6, [r1, #0x2b]
    // 0x41a940: StoreField: r1->field_2f = xzr
    //     0x41a940: stur         xzr, [r1, #0x2f]
    //     0x41a944: ldur         r7, [fp, #-0x48]
    // 0x41a948: StoreField: r1->field_b = r7
    //     0x41a948: stur         r7, [r1, #0xb]
    // 0x41a94c: r0 = call 0x391a04
    //     0x41a94c: bl           0x391a04
    //     0x41a950: stur         r0, [fp, #-0x48]
    // 0x41a954: BARRIER = pp[0xa71]
    //     0x41a954: add          BARRIER, PP, #0x11, lsl #12
    //     0x41a958: ldr          BARRIER, [BARRIER, #0xa60]
    // 0x41a95c: lr = pp[0xa79]
    //     0x41a95c: add          lr, PP, #0x11, lsl #12
    //     0x41a960: ldr          lr, [lr, #0xa68]
    //     0x41a964: stp          lr, BARRIER, [SP, #0x18]
    // 0x41a968: BARRIER = pp[0xa81]
    //     0x41a968: add          BARRIER, PP, #0x11, lsl #12
    //     0x41a96c: ldr          BARRIER, [BARRIER, #0xa70]
    //     0x41a970: ldur         lr, [fp, #-0x40]
    //     0x41a974: stp          lr, BARRIER, [SP, #8]
    //     0x41a978: ldur         BARRIER, [fp, #-0x28]
    //     0x41a97c: str          BARRIER, [SP]
    // 0x41a980: r1 = r0
    //     0x41a980: mov          r1, r0
    // 0x41a984: r4 = pp[0xa89]
    //     0x41a984: add          r4, PP, #0x11, lsl #12
    //     0x41a988: ldr          r4, [r4, #0xa78]
    // 0x41a98c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x41a98c: bl           0x391490
    // 0x41a990: r1 = pp[0xade]
    //     0x41a990: add          r1, PP, #0xe, lsl #12
    //     0x41a994: ldr          r1, [r1, #0xad0]
    // 0x41a998: r0 = call 0x39fb14
    //     0x41a998: bl           0x39fb14
    // 0x41a99c: r2 = r0
    //     0x41a99c: mov          r2, r0
    //     0x41a9a0: mov          r0, #1
    //     0x41a9a4: stur         r2, [fp, #-0x28]
    // 0x41a9a8: StoreField: r2->field_13 = r0
    //     0x41a9a8: stur         r0, [r2, #0x13]
    // 0x41a9ac: r3 = pp[0xae6]
    //     0x41a9ac: add          r3, PP, #0xe, lsl #12
    //     0x41a9b0: ldr          r3, [r3, #0xad8]
    // 0x41a9b4: StoreField: r2->field_1b = r3
    //     0x41a9b4: stur         r3, [r2, #0x1b]
    //     0x41a9b8: ldur         r1, [fp, #-0x48]
    // 0x41a9bc: StoreField: r2->field_b = r1
    //     0x41a9bc: stur         r1, [r2, #0xb]
    // 0x41a9c0: r1 = pp[0xede]
    //     0x41a9c0: add          r1, PP, #0xe, lsl #12
    //     0x41a9c4: ldr          r1, [r1, #0xed0]
    // 0x41a9c8: r0 = call 0x3b5478
    //     0x41a9c8: bl           0x3b5478
    // 0x41a9cc: r1 = r0
    //     0x41a9cc: mov          r1, r0
    // 0x41a9d0: r0 = pp[0xa69]
    //     0x41a9d0: add          r0, PP, #0x11, lsl #12
    //     0x41a9d4: ldr          r0, [r0, #0xa58]
    //     0x41a9d8: stur         r1, [fp, #-0x40]
    // 0x41a9dc: StoreField: r1->field_b = r0
    //     0x41a9dc: stur         r0, [r1, #0xb]
    // 0x41a9e0: r0 = call 0x3b546c
    //     0x41a9e0: bl           0x3b546c
    // 0x41a9e4: r1 = r0
    //     0x41a9e4: mov          r1, r0
    //     0x41a9e8: ldur         r0, [fp, #-0x40]
    //     0x41a9ec: stur         r1, [fp, #-0x48]
    // 0x41a9f0: StoreField: r1->field_7 = r0
    //     0x41a9f0: stur         r0, [r1, #7]
    // 0x41a9f4: r0 = pp[0x1ef]
    //     0x41a9f4: add          r0, PP, #0xf, lsl #12
    //     0x41a9f8: ldr          r0, [r0, #0x1e0]
    // 0x41a9fc: StoreField: r1->field_13 = r0
    //     0x41a9fc: stur         r0, [r1, #0x13]
    // 0x41aa00: r0 = pp[0xaae]
    //     0x41aa00: add          r0, PP, #0xe, lsl #12
    //     0x41aa04: ldr          r0, [r0, #0xaa0]
    // 0x41aa08: ArrayStore: r1[0] = r0  ; List_8
    //     0x41aa08: stur         r0, [r1, #0x17]
    // 0x41aa0c: r0 = pp[0xef6]
    //     0x41aa0c: add          r0, PP, #0xe, lsl #12
    //     0x41aa10: ldr          r0, [r0, #0xee8]
    // 0x41aa14: StoreField: r1->field_1f = r0
    //     0x41aa14: stur         r0, [r1, #0x1f]
    //     0x41aa18: add          r0, NULL, #0x30
    // 0x41aa1c: StoreField: r1->field_23 = r0
    //     0x41aa1c: stur         r0, [r1, #0x23]
    //     0x41aa20: fmov         d0, #1.00000000
    // 0x41aa24: StoreField: r1->field_27 = d0
    //     0x41aa24: stur         d0, [r1, #0x27]
    // 0x41aa28: StoreField: r1->field_2f = d0
    //     0x41aa28: stur         d0, [r1, #0x2f]
    // 0x41aa2c: r2 = pp[0xefe]
    //     0x41aa2c: add          r2, PP, #0xe, lsl #12
    //     0x41aa30: ldr          r2, [r2, #0xef0]
    // 0x41aa34: StoreField: r1->field_37 = r2
    //     0x41aa34: stur         r2, [r1, #0x37]
    // 0x41aa38: StoreField: r1->field_3b = r0
    //     0x41aa38: stur         r0, [r1, #0x3b]
    // 0x41aa3c: StoreField: r1->field_3f = r0
    //     0x41aa3c: stur         r0, [r1, #0x3f]
    // 0x41aa40: r0 = call 0x391dd8
    //     0x41aa40: bl           0x391dd8
    // 0x41aa44: r2 = r0
    //     0x41aa44: mov          r2, r0
    //     0x41aa48: ldur         r0, [fp, #-0x48]
    //     0x41aa4c: stur         r2, [fp, #-0x40]
    // 0x41aa50: StoreField: r2->field_b = r0
    //     0x41aa50: stur         r0, [r2, #0xb]
    // 0x41aa54: r0 = pp[0xb86]
    //     0x41aa54: add          r0, PP, #0xe, lsl #12
    //     0x41aa58: ldr          r0, [r0, #0xb78]
    // 0x41aa5c: StoreField: r2->field_23 = r0
    //     0x41aa5c: stur         r0, [r2, #0x23]
    //     0x41aa60: ldur         r3, [fp, #-8]
    // 0x41aa64: LoadField: r0 = r3->field_f
    //     0x41aa64: ldur         r0, [r3, #0xf]
    //     0x41aa68: add          r0, r0, HEAP, lsl #32
    // 0x41aa6c: LoadField: r1 = r0->field_13
    //     0x41aa6c: ldur         r1, [r0, #0x13]
    //     0x41aa70: add          r1, r1, HEAP, lsl #32
    // 0x41aa74: LoadField: r4 = r1->field_23
    //     0x41aa74: ldur         r4, [r1, #0x23]
    //     0x41aa78: tbnz         r4, #0x3f, 0x41aaa0
    //     0x41aa7c: sbfiz        r0, r4, #1, #0x1f
    //     0x41aa80: cmp          r4, r0, asr #1
    // 0x41aa84: b.eq 0x41aa90
    //     0x41aa84: b.eq         0x41aa90
    // 0x41aa88: r0 = call 0x61fba8
    //     0x41aa88: bl           0x61fba8
    // 0x41aa8c: StoreField: r0->field_7 = r4
    //     0x41aa8c: stur         r4, [r0, #7]
    //     0x41aa90: str          r0, [SP]
    // 0x41aa94: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x41aa94: bl           0x2ac0a0
    // 0x41aa98: r5 = r0
    //     0x41aa98: mov          r5, r0
    // 0x41aa9c: b 0x41aaa4
    //     0x41aa9c: b            0x41aaa4
    // 0x41aaa0: r5 = pp[0x148]
    //     0x41aaa0: ldr          r5, [PP, #0x148]
    //     0x41aaa4: ldur         r0, [fp, #-8]
    //     0x41aaa8: ldur         r4, [fp, #-0x20]
    //     0x41aaac: ldur         r3, [fp, #-0x38]
    //     0x41aab0: ldur         r2, [fp, #-0x30]
    //     0x41aab4: ldur         r1, [fp, #-0x28]
    //     0x41aab8: stur         r5, [fp, #-0x48]
    // 0x41aabc: r0 = call 0x31abec
    //     0x41aabc: bl           0x31abec
    // 0x41aac0: r1 = r0
    //     0x41aac0: mov          r1, r0
    //     0x41aac4: add          r0, NULL, #0x20
    //     0x41aac8: stur         r1, [fp, #-0x50]
    // 0x41aacc: StoreField: r1->field_7 = r0
    //     0x41aacc: stur         r0, [r1, #7]
    // 0x41aad0: r2 = pp[0x6050]
    //     0x41aad0: ldr          r2, [PP, #0x6050]
    // 0x41aad4: StoreField: r1->field_b = r2
    //     0x41aad4: stur         r2, [r1, #0xb]
    // 0x41aad8: r3 = pp[0xb5e]
    //     0x41aad8: add          r3, PP, #0xe, lsl #12
    //     0x41aadc: ldr          r3, [r3, #0xb50]
    // 0x41aae0: StoreField: r1->field_1f = r3
    //     0x41aae0: stur         r3, [r1, #0x1f]
    // 0x41aae4: r3 = pp[0xa59]
    //     0x41aae4: add          r3, PP, #0x11, lsl #12
    //     0x41aae8: ldr          r3, [r3, #0xa48]
    // 0x41aaec: StoreField: r1->field_23 = r3
    //     0x41aaec: stur         r3, [r1, #0x23]
    // 0x41aaf0: r0 = call 0x393bf8
    //     0x41aaf0: bl           0x393bf8
    // 0x41aaf4: r2 = r0
    //     0x41aaf4: mov          r2, r0
    //     0x41aaf8: ldur         r0, [fp, #-0x48]
    //     0x41aafc: stur         r2, [fp, #-0x58]
    // 0x41ab00: StoreField: r2->field_b = r0
    //     0x41ab00: stur         r0, [r2, #0xb]
    //     0x41ab04: ldur         r0, [fp, #-0x50]
    // 0x41ab08: StoreField: r2->field_13 = r0
    //     0x41ab08: stur         r0, [r2, #0x13]
    // 0x41ab0c: r1 = pp[0x8c4]
    //     0x41ab0c: add          r1, PP, #0xc, lsl #12
    //     0x41ab10: ldr          r1, [r1, #0x8b8]
    // 0x41ab14: r4 = pp[0x4c0]
    //     0x41ab14: ldr          r4, [PP, #0x4c0]
    // 0x41ab18: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x41ab18: bl           0x3a1dcc
    //     0x41ab1c: stur         r0, [fp, #-0x48]
    // 0x41ab20: r0 = call 0x31abec
    //     0x41ab20: bl           0x31abec
    // 0x41ab24: r1 = r0
    //     0x41ab24: mov          r1, r0
    //     0x41ab28: add          r0, NULL, #0x20
    //     0x41ab2c: stur         r1, [fp, #-0x50]
    // 0x41ab30: StoreField: r1->field_7 = r0
    //     0x41ab30: stur         r0, [r1, #7]
    // 0x41ab34: r2 = pp[0x6050]
    //     0x41ab34: ldr          r2, [PP, #0x6050]
    // 0x41ab38: StoreField: r1->field_b = r2
    //     0x41ab38: stur         r2, [r1, #0xb]
    // 0x41ab3c: r2 = pp[0x7598]
    //     0x41ab3c: ldr          r2, [PP, #0x7598]
    // 0x41ab40: StoreField: r1->field_1f = r2
    //     0x41ab40: stur         r2, [r1, #0x1f]
    // 0x41ab44: r0 = call 0x393bf8
    //     0x41ab44: bl           0x393bf8
    // 0x41ab48: r3 = r0
    //     0x41ab48: mov          r3, r0
    //     0x41ab4c: ldur         r0, [fp, #-0x48]
    //     0x41ab50: stur         r3, [fp, #-0x60]
    // 0x41ab54: StoreField: r3->field_b = r0
    //     0x41ab54: stur         r0, [r3, #0xb]
    //     0x41ab58: ldur         r0, [fp, #-0x50]
    // 0x41ab5c: StoreField: r3->field_13 = r0
    //     0x41ab5c: stur         r0, [r3, #0x13]
    // 0x41ab60: r1 = NULL
    //     0x41ab60: mov          r1, NULL
    //     0x41ab64: mov          r2, #4
    // 0x41ab68: r0 = call 0x61f920
    //     0x41ab68: bl           0x61f920
    // 0x41ab6c: r2 = r0
    //     0x41ab6c: mov          r2, r0
    //     0x41ab70: ldur         r0, [fp, #-0x58]
    //     0x41ab74: stur         r2, [fp, #-0x48]
    // 0x41ab78: StoreField: r2->field_f = r0
    //     0x41ab78: stur         r0, [r2, #0xf]
    //     0x41ab7c: ldur         r0, [fp, #-0x60]
    // 0x41ab80: StoreField: r2->field_13 = r0
    //     0x41ab80: stur         r0, [r2, #0x13]
    // 0x41ab84: r1 = pp[0x5c58]
    //     0x41ab84: ldr          r1, [PP, #0x5c58]
    // 0x41ab88: r0 = call 0x61e854
    //     0x41ab88: bl           0x61e854
    // 0x41ab8c: r1 = r0
    //     0x41ab8c: mov          r1, r0
    //     0x41ab90: ldur         r0, [fp, #-0x48]
    //     0x41ab94: stur         r1, [fp, #-0x50]
    // 0x41ab98: StoreField: r1->field_f = r0
    //     0x41ab98: stur         r0, [r1, #0xf]
    //     0x41ab9c: mov          r2, #4
    // 0x41aba0: StoreField: r1->field_b = r2
    //     0x41aba0: stur         r2, [r1, #0xb]
    // 0x41aba4: r0 = call 0x39310c
    //     0x41aba4: bl           0x39310c
    // 0x41aba8: r1 = r0
    //     0x41aba8: mov          r1, r0
    // 0x41abac: r0 = pp[0x862]
    //     0x41abac: add          r0, PP, #0xa, lsl #12
    //     0x41abb0: ldr          r0, [r0, #0x858]
    //     0x41abb4: stur         r1, [fp, #-0x48]
    // 0x41abb8: StoreField: r1->field_f = r0
    //     0x41abb8: stur         r0, [r1, #0xf]
    // 0x41abbc: r2 = pp[0xaee]
    //     0x41abbc: add          r2, PP, #0xe, lsl #12
    //     0x41abc0: ldr          r2, [r2, #0xae0]
    // 0x41abc4: StoreField: r1->field_13 = r2
    //     0x41abc4: stur         r2, [r1, #0x13]
    // 0x41abc8: r3 = pp[0xb16]
    //     0x41abc8: add          r3, PP, #0xe, lsl #12
    //     0x41abcc: ldr          r3, [r3, #0xb08]
    // 0x41abd0: ArrayStore: r1[0] = r3  ; List_8
    //     0x41abd0: stur         r3, [r1, #0x17]
    // 0x41abd4: r3 = pp[0xb6e]
    //     0x41abd4: add          r3, PP, #0xe, lsl #12
    //     0x41abd8: ldr          r3, [r3, #0xb60]
    // 0x41abdc: StoreField: r1->field_1b = r3
    //     0x41abdc: stur         r3, [r1, #0x1b]
    // 0x41abe0: r4 = pp[0xb06]
    //     0x41abe0: add          r4, PP, #0xe, lsl #12
    //     0x41abe4: ldr          r4, [r4, #0xaf8]
    // 0x41abe8: StoreField: r1->field_23 = r4
    //     0x41abe8: stur         r4, [r1, #0x23]
    // 0x41abec: r5 = pp[0xb2]
    //     0x41abec: add          r5, PP, #0xa, lsl #12
    //     0x41abf0: ldr          r5, [r5, #0xa8]
    // 0x41abf4: StoreField: r1->field_2b = r5
    //     0x41abf4: stur         r5, [r1, #0x2b]
    // 0x41abf8: StoreField: r1->field_2f = xzr
    //     0x41abf8: stur         xzr, [r1, #0x2f]
    //     0x41abfc: ldur         r6, [fp, #-0x50]
    // 0x41ac00: StoreField: r1->field_b = r6
    //     0x41ac00: stur         r6, [r1, #0xb]
    // 0x41ac04: r0 = call 0x391a04
    //     0x41ac04: bl           0x391a04
    //     0x41ac08: stur         r0, [fp, #-0x50]
    // 0x41ac0c: BARRIER = pp[0xa71]
    //     0x41ac0c: add          BARRIER, PP, #0x11, lsl #12
    //     0x41ac10: ldr          BARRIER, [BARRIER, #0xa60]
    // 0x41ac14: lr = pp[0xa91]
    //     0x41ac14: add          lr, PP, #0x11, lsl #12
    //     0x41ac18: ldr          lr, [lr, #0xa80]
    //     0x41ac1c: stp          lr, BARRIER, [SP, #0x18]
    // 0x41ac20: BARRIER = pp[0xa81]
    //     0x41ac20: add          BARRIER, PP, #0x11, lsl #12
    //     0x41ac24: ldr          BARRIER, [BARRIER, #0xa70]
    //     0x41ac28: ldur         lr, [fp, #-0x40]
    //     0x41ac2c: stp          lr, BARRIER, [SP, #8]
    //     0x41ac30: ldur         BARRIER, [fp, #-0x48]
    //     0x41ac34: str          BARRIER, [SP]
    // 0x41ac38: r1 = r0
    //     0x41ac38: mov          r1, r0
    // 0x41ac3c: r4 = pp[0xa89]
    //     0x41ac3c: add          r4, PP, #0x11, lsl #12
    //     0x41ac40: ldr          r4, [r4, #0xa78]
    // 0x41ac44: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x41ac44: bl           0x391490
    // 0x41ac48: r0 = call 0x3a1d94
    //     0x41ac48: bl           0x3a1d94
    // 0x41ac4c: r1 = pp[0xa99]
    //     0x41ac4c: add          r1, PP, #0x11, lsl #12
    //     0x41ac50: ldr          r1, [r1, #0xa88]
    // 0x41ac54: r2 = NULL
    //     0x41ac54: mov          r2, NULL
    //     0x41ac58: stur         r0, [fp, #-0x40]
    // 0x41ac5c: r0 = call 0x61ec54
    //     0x41ac5c: bl           0x61ec54
    //     0x41ac60: ldur         BARRIER, [fp, #-0x50]
    //     0x41ac64: stp          BARRIER, r0, [SP]
    //     0x41ac68: ldur         r1, [fp, #-0x40]
    // 0x41ac6c: r4 = pp[0x214]
    //     0x41ac6c: add          r4, PP, #0xc, lsl #12
    //     0x41ac70: ldr          r4, [r4, #0x208]
    // 0x41ac74: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x41ac74: bl           0x3a18c4
    // 0x41ac78: r1 = pp[0xade]
    //     0x41ac78: add          r1, PP, #0xe, lsl #12
    //     0x41ac7c: ldr          r1, [r1, #0xad0]
    // 0x41ac80: r0 = call 0x39fb14
    //     0x41ac80: bl           0x39fb14
    // 0x41ac84: r3 = r0
    //     0x41ac84: mov          r3, r0
    //     0x41ac88: mov          r0, #1
    //     0x41ac8c: stur         r3, [fp, #-0x48]
    // 0x41ac90: StoreField: r3->field_13 = r0
    //     0x41ac90: stur         r0, [r3, #0x13]
    // 0x41ac94: r0 = pp[0xae6]
    //     0x41ac94: add          r0, PP, #0xe, lsl #12
    //     0x41ac98: ldr          r0, [r0, #0xad8]
    // 0x41ac9c: StoreField: r3->field_1b = r0
    //     0x41ac9c: stur         r0, [r3, #0x1b]
    //     0x41aca0: ldur         r0, [fp, #-0x40]
    // 0x41aca4: StoreField: r3->field_b = r0
    //     0x41aca4: stur         r0, [r3, #0xb]
    // 0x41aca8: r1 = NULL
    //     0x41aca8: mov          r1, NULL
    //     0x41acac: mov          r2, #4
    // 0x41acb0: r0 = call 0x61f920
    //     0x41acb0: bl           0x61f920
    // 0x41acb4: r2 = r0
    //     0x41acb4: mov          r2, r0
    //     0x41acb8: ldur         r0, [fp, #-0x28]
    //     0x41acbc: stur         r2, [fp, #-0x40]
    // 0x41acc0: StoreField: r2->field_f = r0
    //     0x41acc0: stur         r0, [r2, #0xf]
    //     0x41acc4: ldur         r0, [fp, #-0x48]
    // 0x41acc8: StoreField: r2->field_13 = r0
    //     0x41acc8: stur         r0, [r2, #0x13]
    // 0x41accc: r1 = pp[0x5c58]
    //     0x41accc: ldr          r1, [PP, #0x5c58]
    // 0x41acd0: r0 = call 0x61e854
    //     0x41acd0: bl           0x61e854
    // 0x41acd4: r1 = r0
    //     0x41acd4: mov          r1, r0
    //     0x41acd8: ldur         r0, [fp, #-0x40]
    //     0x41acdc: stur         r1, [fp, #-0x28]
    // 0x41ace0: StoreField: r1->field_f = r0
    //     0x41ace0: stur         r0, [r1, #0xf]
    //     0x41ace4: mov          r2, #4
    // 0x41ace8: StoreField: r1->field_b = r2
    //     0x41ace8: stur         r2, [r1, #0xb]
    // 0x41acec: r0 = call 0x3a1414
    //     0x41acec: bl           0x3a1414
    // 0x41acf0: r1 = r0
    //     0x41acf0: mov          r1, r0
    // 0x41acf4: r0 = pp[0x5140]
    //     0x41acf4: ldr          r0, [PP, #0x5140]
    //     0x41acf8: stur         r1, [fp, #-0x40]
    // 0x41acfc: StoreField: r1->field_f = r0
    //     0x41acfc: stur         r0, [r1, #0xf]
    // 0x41ad00: r2 = pp[0xaa1]
    //     0x41ad00: add          r2, PP, #0x11, lsl #12
    //     0x41ad04: ldr          r2, [r2, #0xa90]
    // 0x41ad08: StoreField: r1->field_13 = r2
    //     0x41ad08: stur         r2, [r1, #0x13]
    // 0x41ad0c: r2 = pp[0xaf6]
    //     0x41ad0c: add          r2, PP, #0xe, lsl #12
    //     0x41ad10: ldr          r2, [r2, #0xae8]
    // 0x41ad14: ArrayStore: r1[0] = r2  ; List_8
    //     0x41ad14: stur         r2, [r1, #0x17]
    // 0x41ad18: r3 = pp[0xb6e]
    //     0x41ad18: add          r3, PP, #0xe, lsl #12
    //     0x41ad1c: ldr          r3, [r3, #0xb60]
    // 0x41ad20: StoreField: r1->field_1b = r3
    //     0x41ad20: stur         r3, [r1, #0x1b]
    // 0x41ad24: r4 = pp[0xb06]
    //     0x41ad24: add          r4, PP, #0xe, lsl #12
    //     0x41ad28: ldr          r4, [r4, #0xaf8]
    // 0x41ad2c: StoreField: r1->field_23 = r4
    //     0x41ad2c: stur         r4, [r1, #0x23]
    // 0x41ad30: r5 = pp[0xb2]
    //     0x41ad30: add          r5, PP, #0xa, lsl #12
    //     0x41ad34: ldr          r5, [r5, #0xa8]
    // 0x41ad38: StoreField: r1->field_2b = r5
    //     0x41ad38: stur         r5, [r1, #0x2b]
    // 0x41ad3c: StoreField: r1->field_2f = xzr
    //     0x41ad3c: stur         xzr, [r1, #0x2f]
    //     0x41ad40: ldur         r6, [fp, #-0x28]
    // 0x41ad44: StoreField: r1->field_b = r6
    //     0x41ad44: stur         r6, [r1, #0xb]
    // 0x41ad48: r0 = call 0x391a04
    //     0x41ad48: bl           0x391a04
    //     0x41ad4c: stur         r0, [fp, #-0x28]
    // 0x41ad50: BARRIER = pp[0xaa9]
    //     0x41ad50: add          BARRIER, PP, #0x11, lsl #12
    //     0x41ad54: ldr          BARRIER, [BARRIER, #0xa98]
    // 0x41ad58: lr = pp[0xc80]
    //     0x41ad58: add          lr, PP, #0x10, lsl #12
    //     0x41ad5c: ldr          lr, [lr, #0xc70]
    //     0x41ad60: stp          lr, BARRIER, [SP, #8]
    //     0x41ad64: ldur         BARRIER, [fp, #-0x40]
    //     0x41ad68: str          BARRIER, [SP]
    // 0x41ad6c: r1 = r0
    //     0x41ad6c: mov          r1, r0
    // 0x41ad70: r4 = pp[0x411]
    //     0x41ad70: add          r4, PP, #0x11, lsl #12
    //     0x41ad74: ldr          r4, [r4, #0x400]
    // 0x41ad78: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x41ad78: bl           0x391490
    // 0x41ad7c: r1 = pp[0x8b4]
    //     0x41ad7c: add          r1, PP, #0xc, lsl #12
    //     0x41ad80: ldr          r1, [r1, #0x8a8]
    // 0x41ad84: r4 = pp[0x4c0]
    //     0x41ad84: ldr          r4, [PP, #0x4c0]
    // 0x41ad88: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x41ad88: bl           0x3a1dcc
    //     0x41ad8c: stur         r0, [fp, #-0x40]
    // 0x41ad90: r0 = soul_flutter_international$res$colors_SOColors::get_color_4900b4()
    //     0x41ad90: bl           0x41b378
    //     0x41ad94: stur         r0, [fp, #-0x48]
    // 0x41ad98: r0 = call 0x31abec
    //     0x41ad98: bl           0x31abec
    // 0x41ad9c: r1 = r0
    //     0x41ad9c: mov          r1, r0
    //     0x41ada0: add          r0, NULL, #0x20
    //     0x41ada4: stur         r1, [fp, #-0x50]
    // 0x41ada8: StoreField: r1->field_7 = r0
    //     0x41ada8: stur         r0, [r1, #7]
    //     0x41adac: ldur         r0, [fp, #-0x48]
    // 0x41adb0: StoreField: r1->field_b = r0
    //     0x41adb0: stur         r0, [r1, #0xb]
    // 0x41adb4: r0 = pp[0xb9f]
    //     0x41adb4: add          r0, PP, #0xf, lsl #12
    //     0x41adb8: ldr          r0, [r0, #0xb90]
    // 0x41adbc: StoreField: r1->field_1f = r0
    //     0x41adbc: stur         r0, [r1, #0x1f]
    // 0x41adc0: r0 = pp[0xa59]
    //     0x41adc0: add          r0, PP, #0x11, lsl #12
    //     0x41adc4: ldr          r0, [r0, #0xa48]
    // 0x41adc8: StoreField: r1->field_23 = r0
    //     0x41adc8: stur         r0, [r1, #0x23]
    // 0x41adcc: r0 = call 0x393bf8
    //     0x41adcc: bl           0x393bf8
    // 0x41add0: r1 = r0
    //     0x41add0: mov          r1, r0
    //     0x41add4: ldur         r0, [fp, #-0x40]
    //     0x41add8: stur         r1, [fp, #-0x48]
    // 0x41addc: StoreField: r1->field_b = r0
    //     0x41addc: stur         r0, [r1, #0xb]
    //     0x41ade0: ldur         r0, [fp, #-0x50]
    // 0x41ade4: StoreField: r1->field_13 = r0
    //     0x41ade4: stur         r0, [r1, #0x13]
    //     0x41ade8: mov          r0, #2
    // 0x41adec: StoreField: r1->field_37 = r0
    //     0x41adec: stur         r0, [r1, #0x37]
    // 0x41adf0: r0 = call 0x391c0c
    //     0x41adf0: bl           0x391c0c
    // 0x41adf4: r2 = r0
    //     0x41adf4: mov          r2, r0
    // 0x41adf8: r0 = pp[0xab1]
    //     0x41adf8: add          r0, PP, #0x11, lsl #12
    //     0x41adfc: ldr          r0, [r0, #0xaa0]
    //     0x41ae00: stur         r2, [fp, #-0x40]
    // 0x41ae04: StoreField: r2->field_f = r0
    //     0x41ae04: stur         r0, [r2, #0xf]
    //     0x41ae08: ldur         r0, [fp, #-0x48]
    // 0x41ae0c: StoreField: r2->field_b = r0
    //     0x41ae0c: stur         r0, [r2, #0xb]
    //     0x41ae10: ldur         r0, [fp, #-8]
    // 0x41ae14: LoadField: r1 = r0->field_f
    //     0x41ae14: ldur         r1, [r0, #0xf]
    //     0x41ae18: add          r1, r1, HEAP, lsl #32
    // 0x41ae1c: r0 = soul_flutter_international$biz$game$page_game_fruit__GameFruitPageState::_buildRecordWidget()
    //     0x41ae1c: bl           0x41b0c8
    // 0x41ae20: r1 = NULL
    //     0x41ae20: mov          r1, NULL
    //     0x41ae24: mov          r2, #4
    //     0x41ae28: stur         r0, [fp, #-8]
    // 0x41ae2c: r0 = call 0x61f920
    //     0x41ae2c: bl           0x61f920
    // 0x41ae30: r2 = r0
    //     0x41ae30: mov          r2, r0
    //     0x41ae34: ldur         r0, [fp, #-0x40]
    //     0x41ae38: stur         r2, [fp, #-0x48]
    // 0x41ae3c: StoreField: r2->field_f = r0
    //     0x41ae3c: stur         r0, [r2, #0xf]
    //     0x41ae40: ldur         r0, [fp, #-8]
    // 0x41ae44: StoreField: r2->field_13 = r0
    //     0x41ae44: stur         r0, [r2, #0x13]
    // 0x41ae48: r1 = pp[0x5c58]
    //     0x41ae48: ldr          r1, [PP, #0x5c58]
    // 0x41ae4c: r0 = call 0x61e854
    //     0x41ae4c: bl           0x61e854
    // 0x41ae50: r1 = r0
    //     0x41ae50: mov          r1, r0
    //     0x41ae54: ldur         r0, [fp, #-0x48]
    //     0x41ae58: stur         r1, [fp, #-8]
    // 0x41ae5c: StoreField: r1->field_f = r0
    //     0x41ae5c: stur         r0, [r1, #0xf]
    //     0x41ae60: mov          r0, #4
    // 0x41ae64: StoreField: r1->field_b = r0
    //     0x41ae64: stur         r0, [r1, #0xb]
    // 0x41ae68: r0 = call 0x3a1414
    //     0x41ae68: bl           0x3a1414
    // 0x41ae6c: r1 = r0
    //     0x41ae6c: mov          r1, r0
    // 0x41ae70: r0 = pp[0x5140]
    //     0x41ae70: ldr          r0, [PP, #0x5140]
    //     0x41ae74: stur         r1, [fp, #-0x40]
    // 0x41ae78: StoreField: r1->field_f = r0
    //     0x41ae78: stur         r0, [r1, #0xf]
    // 0x41ae7c: r0 = pp[0xaee]
    //     0x41ae7c: add          r0, PP, #0xe, lsl #12
    //     0x41ae80: ldr          r0, [r0, #0xae0]
    // 0x41ae84: StoreField: r1->field_13 = r0
    //     0x41ae84: stur         r0, [r1, #0x13]
    // 0x41ae88: r2 = pp[0xaf6]
    //     0x41ae88: add          r2, PP, #0xe, lsl #12
    //     0x41ae8c: ldr          r2, [r2, #0xae8]
    // 0x41ae90: ArrayStore: r1[0] = r2  ; List_8
    //     0x41ae90: stur         r2, [r1, #0x17]
    // 0x41ae94: r3 = pp[0xb6e]
    //     0x41ae94: add          r3, PP, #0xe, lsl #12
    //     0x41ae98: ldr          r3, [r3, #0xb60]
    // 0x41ae9c: StoreField: r1->field_1b = r3
    //     0x41ae9c: stur         r3, [r1, #0x1b]
    // 0x41aea0: r4 = pp[0xb06]
    //     0x41aea0: add          r4, PP, #0xe, lsl #12
    //     0x41aea4: ldr          r4, [r4, #0xaf8]
    // 0x41aea8: StoreField: r1->field_23 = r4
    //     0x41aea8: stur         r4, [r1, #0x23]
    // 0x41aeac: r5 = pp[0xb2]
    //     0x41aeac: add          r5, PP, #0xa, lsl #12
    //     0x41aeb0: ldr          r5, [r5, #0xa8]
    // 0x41aeb4: StoreField: r1->field_2b = r5
    //     0x41aeb4: stur         r5, [r1, #0x2b]
    // 0x41aeb8: StoreField: r1->field_2f = xzr
    //     0x41aeb8: stur         xzr, [r1, #0x2f]
    //     0x41aebc: ldur         r6, [fp, #-8]
    // 0x41aec0: StoreField: r1->field_b = r6
    //     0x41aec0: stur         r6, [r1, #0xb]
    // 0x41aec4: r0 = call 0x391a04
    //     0x41aec4: bl           0x391a04
    //     0x41aec8: stur         r0, [fp, #-8]
    // 0x41aecc: BARRIER = pp[0x360]
    //     0x41aecc: add          BARRIER, PP, #0x10, lsl #12
    //     0x41aed0: ldr          BARRIER, [BARRIER, #0x350]
    // 0x41aed4: lr = pp[0xab9]
    //     0x41aed4: add          lr, PP, #0x11, lsl #12
    //     0x41aed8: ldr          lr, [lr, #0xaa8]
    //     0x41aedc: stp          lr, BARRIER, [SP, #8]
    //     0x41aee0: ldur         BARRIER, [fp, #-0x40]
    //     0x41aee4: str          BARRIER, [SP]
    // 0x41aee8: r1 = r0
    //     0x41aee8: mov          r1, r0
    // 0x41aeec: r4 = pp[0xac1]
    //     0x41aeec: add          r4, PP, #0x11, lsl #12
    //     0x41aef0: ldr          r4, [r4, #0xab0]
    // 0x41aef4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x41aef4: bl           0x391490
    // 0x41aef8: r1 = NULL
    //     0x41aef8: mov          r1, NULL
    //     0x41aefc: mov          r2, #0xa
    // 0x41af00: r0 = call 0x61f920
    //     0x41af00: bl           0x61f920
    // 0x41af04: r2 = r0
    //     0x41af04: mov          r2, r0
    //     0x41af08: ldur         r0, [fp, #-0x20]
    //     0x41af0c: stur         r2, [fp, #-0x40]
    // 0x41af10: StoreField: r2->field_f = r0
    //     0x41af10: stur         r0, [r2, #0xf]
    //     0x41af14: ldur         r0, [fp, #-0x38]
    // 0x41af18: StoreField: r2->field_13 = r0
    //     0x41af18: stur         r0, [r2, #0x13]
    //     0x41af1c: ldur         r0, [fp, #-0x30]
    // 0x41af20: ArrayStore: r2[0] = r0  ; List_8
    //     0x41af20: stur         r0, [r2, #0x17]
    //     0x41af24: ldur         r0, [fp, #-0x28]
    // 0x41af28: StoreField: r2->field_1b = r0
    //     0x41af28: stur         r0, [r2, #0x1b]
    //     0x41af2c: ldur         r0, [fp, #-8]
    // 0x41af30: StoreField: r2->field_1f = r0
    //     0x41af30: stur         r0, [r2, #0x1f]
    // 0x41af34: r1 = pp[0x5c58]
    //     0x41af34: ldr          r1, [PP, #0x5c58]
    // 0x41af38: r0 = call 0x61e854
    //     0x41af38: bl           0x61e854
    // 0x41af3c: r1 = r0
    //     0x41af3c: mov          r1, r0
    //     0x41af40: ldur         r0, [fp, #-0x40]
    //     0x41af44: stur         r1, [fp, #-8]
    // 0x41af48: StoreField: r1->field_f = r0
    //     0x41af48: stur         r0, [r1, #0xf]
    //     0x41af4c: mov          r0, #0xa
    // 0x41af50: StoreField: r1->field_b = r0
    //     0x41af50: stur         r0, [r1, #0xb]
    // 0x41af54: r0 = call 0x39310c
    //     0x41af54: bl           0x39310c
    // 0x41af58: r1 = r0
    //     0x41af58: mov          r1, r0
    // 0x41af5c: r0 = pp[0x862]
    //     0x41af5c: add          r0, PP, #0xa, lsl #12
    //     0x41af60: ldr          r0, [r0, #0x858]
    //     0x41af64: stur         r1, [fp, #-0x20]
    // 0x41af68: StoreField: r1->field_f = r0
    //     0x41af68: stur         r0, [r1, #0xf]
    // 0x41af6c: r2 = pp[0xaee]
    //     0x41af6c: add          r2, PP, #0xe, lsl #12
    //     0x41af70: ldr          r2, [r2, #0xae0]
    // 0x41af74: StoreField: r1->field_13 = r2
    //     0x41af74: stur         r2, [r1, #0x13]
    // 0x41af78: r2 = pp[0xaf6]
    //     0x41af78: add          r2, PP, #0xe, lsl #12
    //     0x41af7c: ldr          r2, [r2, #0xae8]
    // 0x41af80: ArrayStore: r1[0] = r2  ; List_8
    //     0x41af80: stur         r2, [r1, #0x17]
    // 0x41af84: r2 = pp[0xb6e]
    //     0x41af84: add          r2, PP, #0xe, lsl #12
    //     0x41af88: ldr          r2, [r2, #0xb60]
    // 0x41af8c: StoreField: r1->field_1b = r2
    //     0x41af8c: stur         r2, [r1, #0x1b]
    // 0x41af90: r2 = pp[0xb06]
    //     0x41af90: add          r2, PP, #0xe, lsl #12
    //     0x41af94: ldr          r2, [r2, #0xaf8]
    // 0x41af98: StoreField: r1->field_23 = r2
    //     0x41af98: stur         r2, [r1, #0x23]
    // 0x41af9c: r2 = pp[0xb2]
    //     0x41af9c: add          r2, PP, #0xa, lsl #12
    //     0x41afa0: ldr          r2, [r2, #0xa8]
    // 0x41afa4: StoreField: r1->field_2b = r2
    //     0x41afa4: stur         r2, [r1, #0x2b]
    // 0x41afa8: StoreField: r1->field_2f = xzr
    //     0x41afa8: stur         xzr, [r1, #0x2f]
    //     0x41afac: ldur         r2, [fp, #-8]
    // 0x41afb0: StoreField: r1->field_b = r2
    //     0x41afb0: stur         r2, [r1, #0xb]
    // 0x41afb4: r0 = call 0x391a04
    //     0x41afb4: bl           0x391a04
    //     0x41afb8: stur         r0, [fp, #-8]
    //     0x41afbc: ldur         BARRIER, [fp, #-0x10]
    //     0x41afc0: ldur         lr, [fp, #-0x18]
    //     0x41afc4: stp          lr, BARRIER, [SP, #8]
    //     0x41afc8: ldur         BARRIER, [fp, #-0x20]
    //     0x41afcc: str          BARRIER, [SP]
    // 0x41afd0: r1 = r0
    //     0x41afd0: mov          r1, r0
    // 0x41afd4: r4 = pp[0xcc0]
    //     0x41afd4: add          r4, PP, #0x10, lsl #12
    //     0x41afd8: ldr          r4, [r4, #0xcb0]
    // 0x41afdc: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x41afdc: bl           0x391490
    // 0x41afe0: r0 = call 0x3a1db4
    //     0x41afe0: bl           0x3a1db4
    // 0x41afe4: r1 = r0
    //     0x41afe4: mov          r1, r0
    // 0x41afe8: r0 = pp[0x862]
    //     0x41afe8: add          r0, PP, #0xa, lsl #12
    //     0x41afec: ldr          r0, [r0, #0x858]
    //     0x41aff0: stur         r1, [fp, #-0x10]
    // 0x41aff4: StoreField: r1->field_b = r0
    //     0x41aff4: stur         r0, [r1, #0xb]
    //     0x41aff8: add          r0, NULL, #0x30
    // 0x41affc: StoreField: r1->field_f = r0
    //     0x41affc: stur         r0, [r1, #0xf]
    // 0x41b000: r0 = call 0x41b0bc
    //     0x41b000: bl           0x41b0bc
    // 0x41b004: r1 = r0
    //     0x41b004: mov          r1, r0
    //     0x41b008: ldur         r0, [fp, #-0x10]
    // 0x41b00c: StoreField: r0->field_1f = r1
    //     0x41b00c: stur         r1, [r0, #0x1f]
    //     0x41b010: ldur         r1, [fp, #-8]
    // 0x41b014: StoreField: r0->field_23 = r1
    //     0x41b014: stur         r1, [r0, #0x23]
    // 0x41b018: r1 = pp[0x77d8]
    //     0x41b018: ldr          r1, [PP, #0x77d8]
    // 0x41b01c: StoreField: r0->field_27 = r1
    //     0x41b01c: stur         r1, [r0, #0x27]
    // 0x41b020: r1 = pp[0xf1e]
    //     0x41b020: add          r1, PP, #0xe, lsl #12
    //     0x41b024: ldr          r1, [r1, #0xf10]
    // 0x41b028: StoreField: r0->field_2b = r1
    //     0x41b028: stur         r1, [r0, #0x2b]
    // 0x41b02c: r1 = pp[0x14f]
    //     0x41b02c: add          r1, PP, #0xf, lsl #12
    //     0x41b030: ldr          r1, [r1, #0x140]
    // 0x41b034: StoreField: r0->field_2f = r1
    //     0x41b034: stur         r1, [r0, #0x2f]
    // 0x41b038: r1 = pp[0x307]
    //     0x41b038: add          r1, PP, #0xf, lsl #12
    //     0x41b03c: ldr          r1, [r1, #0x2f8]
    // 0x41b040: StoreField: r0->field_37 = r1
    //     0x41b040: stur         r1, [r0, #0x37]
    // 0x41b044: SP = fp
    //     0x41b044: mov          SP, fp
    // 0x41b048: LeaveFrame
    //     0x41b048: ldp          fp, lr, [SP], #0x10
    // 0x41b04c: ret
    //     0x41b04c: ret          
    // 0x41b050: r0 = call 0x61fa28
    //     0x41b050: bl           0x61fa28
    // 0x41b054: b 0x41a584
    //     0x41b054: b            0x41a584
    // 0x41b058: r9 = pp[0xac9]
    //     0x41b058: add          r9, PP, #0x11, lsl #12
    //     0x41b05c: ldr          r9, [r9, #0xab8]
    // 0x41b060: r0 = call 0x620258
    //     0x41b060: bl           0x620258
  }

  _buildRecordWidget() {
    // ** addr: 0x41b0c8, size: 0xcc
    // 0x41b0c8: EnterFrame
    //     0x41b0c8: stp          fp, lr, [SP, #-0x10]!
    //     0x41b0cc: mov          fp, SP
    // 0x41b0d0: AllocStack(0x28)
    //     0x41b0d0: sub          SP, SP, #0x28
    // 0x41b0d4: CheckStackOverflow
    //     0x41b0d4: ldr          BARRIER, [THR, #0x38]
    //     0x41b0d8: cmp          SP, BARRIER
    //     0x41b0dc: b.ls         0x41b18c
    // 0x41b0e0: LoadField: r0 = r1->field_13
    //     0x41b0e0: ldur         r0, [r1, #0x13]
    //     0x41b0e4: add          r0, r0, HEAP, lsl #32
    // 0x41b0e8: LoadField: r1 = r0->field_3f
    //     0x41b0e8: ldur         r1, [r0, #0x3f]
    //     0x41b0ec: add          r1, r1, HEAP, lsl #32
    //     0x41b0f0: stur         r1, [fp, #-8]
    //     0x41b0f4: mov          r1, #1
    // 0x41b0f8: r0 = call 0x61e890
    //     0x41b0f8: bl           0x61e890
    // 0x41b0fc: r1 = r0
    //     0x41b0fc: mov          r1, r0
    //     0x41b100: ldur         r0, [fp, #-8]
    // 0x41b104: StoreField: r1->field_f = r0
    //     0x41b104: stur         r0, [r1, #0xf]
    // 0x41b108: LoadField: r2 = r0->field_b
    //     0x41b108: ldur         r2, [r0, #0xb]
    //     0x41b10c: sbfx         r3, r2, #1, #0x1f
    // 0x41b110: r2 = r1
    //     0x41b110: mov          r2, r1
    //     0x41b114: stur         r3, [fp, #-0x10]
    // 0x41b118: r1 = pp[0xad1]
    //     0x41b118: add          r1, PP, #0x11, lsl #12
    //     0x41b11c: ldr          r1, [r1, #0xac0]
    // 0x41b120: r0 = call 0x61ec54
    //     0x41b120: bl           0x61ec54
    //     0x41b124: stur         r0, [fp, #-8]
    // 0x41b128: r0 = call 0x3ab5ac
    //     0x41b128: bl           0x3ab5ac
    //     0x41b12c: stur         r0, [fp, #-0x18]
    // 0x41b130: BARRIER = pp[0x5140]
    //     0x41b130: ldr          BARRIER, [PP, #0x5140]
    // 0x41b134: lr = pp[0xad9]
    //     0x41b134: add          lr, PP, #0x11, lsl #12
    //     0x41b138: ldr          lr, [lr, #0xac8]
    //     0x41b13c: stp          lr, BARRIER, [SP]
    // 0x41b140: r1 = r0
    //     0x41b140: mov          r1, r0
    //     0x41b144: ldur         r2, [fp, #-8]
    //     0x41b148: ldur         r3, [fp, #-0x10]
    // 0x41b14c: r4 = pp[0xae1]
    //     0x41b14c: add          r4, PP, #0x11, lsl #12
    //     0x41b150: ldr          r4, [r4, #0xad0]
    // 0x41b154: r0 = flutter$src$widgets$scroll_view_ListView::ctor_builder()
    //     0x41b154: bl           0x3ab2bc
    // 0x41b158: r1 = pp[0xade]
    //     0x41b158: add          r1, PP, #0xe, lsl #12
    //     0x41b15c: ldr          r1, [r1, #0xad0]
    // 0x41b160: r0 = call 0x39fb14
    //     0x41b160: bl           0x39fb14
    //     0x41b164: mov          r1, #1
    // 0x41b168: StoreField: r0->field_13 = r1
    //     0x41b168: stur         r1, [r0, #0x13]
    // 0x41b16c: r1 = pp[0xae6]
    //     0x41b16c: add          r1, PP, #0xe, lsl #12
    //     0x41b170: ldr          r1, [r1, #0xad8]
    // 0x41b174: StoreField: r0->field_1b = r1
    //     0x41b174: stur         r1, [r0, #0x1b]
    //     0x41b178: ldur         r1, [fp, #-0x18]
    // 0x41b17c: StoreField: r0->field_b = r1
    //     0x41b17c: stur         r1, [r0, #0xb]
    // 0x41b180: SP = fp
    //     0x41b180: mov          SP, fp
    // 0x41b184: LeaveFrame
    //     0x41b184: ldp          fp, lr, [SP], #0x10
    // 0x41b188: ret
    //     0x41b188: ret          
    // 0x41b18c: r0 = call 0x61fa28
    //     0x41b18c: bl           0x61fa28
    // 0x41b190: b 0x41b0e0
    //     0x41b190: b            0x41b0e0
  }

  _anon_closure() {
    // ** addr: 0x41b194, size: 0x1c4
    // 0x41b194: EnterFrame
    //     0x41b194: stp          fp, lr, [SP, #-0x10]!
    //     0x41b198: mov          fp, SP
    // 0x41b19c: AllocStack(0x48)
    //     0x41b19c: sub          SP, SP, #0x48
    //     0x41b1a0: ldr          r0, [fp, #0x20]
    // 0x41b1a4: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x41b1a4: ldur         r1, [r0, #0x17]
    //     0x41b1a8: add          r1, r1, HEAP, lsl #32
    // 0x41b1ac: CheckStackOverflow
    //     0x41b1ac: ldr          BARRIER, [THR, #0x38]
    //     0x41b1b0: cmp          SP, BARRIER
    //     0x41b1b4: b.ls         0x41b340
    // 0x41b1b8: LoadField: r2 = r1->field_f
    //     0x41b1b8: ldur         r2, [r1, #0xf]
    //     0x41b1bc: add          r2, r2, HEAP, lsl #32
    // 0x41b1c0: LoadField: r0 = r2->field_b
    //     0x41b1c0: ldur         r0, [r2, #0xb]
    //     0x41b1c4: ldr          r1, [fp, #0x10]
    //     0x41b1c8: sbfx         r3, r1, #1, #0x1f
    // 0x41b1cc: branchIfSmi(r1, 0x41b1d4)
    //     0x41b1cc: tbz          r1, #0, 0x41b1d4
    // 0x41b1d0: LoadField: r3 = r1->field_7
    //     0x41b1d0: ldur         r3, [r1, #7]
    //     0x41b1d4: sbfx         r1, r0, #1, #0x1f
    // 0x41b1d8: r0 = r1
    //     0x41b1d8: mov          r0, r1
    // 0x41b1dc: r1 = r3
    //     0x41b1dc: mov          r1, r3
    //     0x41b1e0: cmp          r1, r0
    // 0x41b1e4: b.hs 0x41b348
    //     0x41b1e4: b.hs         0x41b348
    // 0x41b1e8: LoadField: r0 = r2->field_f
    //     0x41b1e8: ldur         r0, [r2, #0xf]
    //     0x41b1ec: add          r0, r0, HEAP, lsl #32
    //     0x41b1f0: add          BARRIER, r0, r3, lsl #2
    // 0x41b1f4: LoadField: r1 = BARRIER->field_f
    //     0x41b1f4: ldur         r1, [BARRIER, #0xf]
    //     0x41b1f8: add          r1, r1, HEAP, lsl #32
    //     0x41b1fc: stur         r1, [fp, #-8]
    // 0x41b200: r0 = call 0x31d844
    //     0x41b200: bl           0x31d844
    // 0x41b204: r1 = r0
    //     0x41b204: mov          r1, r0
    // 0x41b208: r0 = pp[0x6310]
    //     0x41b208: ldr          r0, [PP, #0x6310]
    //     0x41b20c: stur         r1, [fp, #-0x10]
    // 0x41b210: StoreField: r1->field_27 = r0
    //     0x41b210: stur         r0, [r1, #0x27]
    //     0x41b214: fmov         d0, #1.00000000
    // 0x41b218: StoreField: r1->field_7 = d0
    //     0x41b218: stur         d0, [r1, #7]
    // 0x41b21c: d0 = pp[0xae9]
    //     0x41b21c: add          r17, PP, #0x11, lsl #12
    //     0x41b220: ldr          d0, [r17, #0xad8]
    // 0x41b224: StoreField: r1->field_f = d0
    //     0x41b224: stur         d0, [r1, #0xf]
    // 0x41b228: d0 = pp[0xb20]
    //     0x41b228: add          r17, PP, #0x10, lsl #12
    //     0x41b22c: ldr          d0, [r17, #0xb10]
    // 0x41b230: ArrayStore: r1[0] = d0  ; List_8
    //     0x41b230: stur         d0, [r1, #0x17]
    // 0x41b234: d0 = pp[0x637]
    //     0x41b234: add          r17, PP, #0xf, lsl #12
    //     0x41b238: ldr          d0, [r17, #0x628]
    // 0x41b23c: StoreField: r1->field_1f = d0
    //     0x41b23c: stur         d0, [r1, #0x1f]
    // 0x41b240: r0 = call 0x352b04
    //     0x41b240: bl           0x352b04
    //     0x41b244: fmov         d0, #20.00000000
    //     0x41b248: stur         r0, [fp, #-0x18]
    // 0x41b24c: StoreField: r0->field_7 = d0
    //     0x41b24c: stur         d0, [r0, #7]
    // 0x41b250: StoreField: r0->field_f = d0
    //     0x41b250: stur         d0, [r0, #0xf]
    // 0x41b254: r0 = call 0x392f28
    //     0x41b254: bl           0x392f28
    // 0x41b258: r1 = r0
    //     0x41b258: mov          r1, r0
    //     0x41b25c: ldur         r0, [fp, #-0x18]
    //     0x41b260: stur         r1, [fp, #-0x20]
    // 0x41b264: StoreField: r1->field_7 = r0
    //     0x41b264: stur         r0, [r1, #7]
    // 0x41b268: StoreField: r1->field_b = r0
    //     0x41b268: stur         r0, [r1, #0xb]
    // 0x41b26c: StoreField: r1->field_f = r0
    //     0x41b26c: stur         r0, [r1, #0xf]
    // 0x41b270: StoreField: r1->field_13 = r0
    //     0x41b270: stur         r0, [r1, #0x13]
    // 0x41b274: r0 = call 0x391dd8
    //     0x41b274: bl           0x391dd8
    // 0x41b278: r1 = r0
    //     0x41b278: mov          r1, r0
    //     0x41b27c: ldur         r0, [fp, #-0x10]
    //     0x41b280: stur         r1, [fp, #-0x18]
    // 0x41b284: StoreField: r1->field_7 = r0
    //     0x41b284: stur         r0, [r1, #7]
    //     0x41b288: ldur         r0, [fp, #-0x20]
    // 0x41b28c: StoreField: r1->field_13 = r0
    //     0x41b28c: stur         r0, [r1, #0x13]
    // 0x41b290: r0 = pp[0xb86]
    //     0x41b290: add          r0, PP, #0xe, lsl #12
    //     0x41b294: ldr          r0, [r0, #0xb78]
    // 0x41b298: StoreField: r1->field_23 = r0
    //     0x41b298: stur         r0, [r1, #0x23]
    //     0x41b29c: ldur         r0, [fp, #-8]
    // 0x41b2a0: LoadField: r2 = r0->field_f
    //     0x41b2a0: ldur         r2, [r0, #0xf]
    //     0x41b2a4: add          r2, r2, HEAP, lsl #32
    // 0x41b2a8: BARRIER = pp[0x40]
    //     0x41b2a8: ldr          BARRIER, [PP, #0x40]
    //     0x41b2ac: cmp          r2, r16
    // 0x41b2b0: b.eq 0x41b34c
    //     0x41b2b0: b.eq         0x41b34c
    //     0x41b2b4: stur         r2, [fp, #-0x10]
    // 0x41b2b8: r0 = call 0x3b6694
    //     0x41b2b8: bl           0x3b6694
    // 0x41b2bc: r1 = r0
    //     0x41b2bc: mov          r1, r0
    //     0x41b2c0: ldur         r0, [fp, #-0x10]
    //     0x41b2c4: stur         r1, [fp, #-8]
    // 0x41b2c8: StoreField: r1->field_b = r0
    //     0x41b2c8: stur         r0, [r1, #0xb]
    //     0x41b2cc: add          r0, NULL, #0x30
    // 0x41b2d0: StoreField: r1->field_1b = r0
    //     0x41b2d0: stur         r0, [r1, #0x1b]
    // 0x41b2d4: StoreField: r1->field_1f = r0
    //     0x41b2d4: stur         r0, [r1, #0x1f]
    // 0x41b2d8: r0 = call 0x391a04
    //     0x41b2d8: bl           0x391a04
    //     0x41b2dc: stur         r0, [fp, #-0x10]
    // 0x41b2e0: BARRIER = pp[0x3e9]
    //     0x41b2e0: add          BARRIER, PP, #0x11, lsl #12
    //     0x41b2e4: ldr          BARRIER, [BARRIER, #0x3d8]
    // 0x41b2e8: lr = pp[0x3e9]
    //     0x41b2e8: add          lr, PP, #0x11, lsl #12
    //     0x41b2ec: ldr          lr, [lr, #0x3d8]
    //     0x41b2f0: stp          lr, BARRIER, [SP, #0x18]
    // 0x41b2f4: BARRIER = pp[0xaf1]
    //     0x41b2f4: add          BARRIER, PP, #0x11, lsl #12
    //     0x41b2f8: ldr          BARRIER, [BARRIER, #0xae0]
    //     0x41b2fc: ldur         lr, [fp, #-0x18]
    //     0x41b300: stp          lr, BARRIER, [SP, #8]
    //     0x41b304: ldur         BARRIER, [fp, #-8]
    //     0x41b308: str          BARRIER, [SP]
    // 0x41b30c: r1 = r0
    //     0x41b30c: mov          r1, r0
    // 0x41b310: r4 = pp[0x899]
    //     0x41b310: add          r4, PP, #0x11, lsl #12
    //     0x41b314: ldr          r4, [r4, #0x888]
    // 0x41b318: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x41b318: bl           0x391490
    // 0x41b31c: r0 = call 0x396460
    //     0x41b31c: bl           0x396460
    // 0x41b320: r1 = pp[0xaae]
    //     0x41b320: add          r1, PP, #0xe, lsl #12
    //     0x41b324: ldr          r1, [r1, #0xaa0]
    // 0x41b328: StoreField: r0->field_f = r1
    //     0x41b328: stur         r1, [r0, #0xf]
    //     0x41b32c: ldur         r1, [fp, #-0x10]
    // 0x41b330: StoreField: r0->field_b = r1
    //     0x41b330: stur         r1, [r0, #0xb]
    // 0x41b334: SP = fp
    //     0x41b334: mov          SP, fp
    // 0x41b338: LeaveFrame
    //     0x41b338: ldp          fp, lr, [SP], #0x10
    // 0x41b33c: ret
    //     0x41b33c: ret          
    // 0x41b340: r0 = call 0x61fa28
    //     0x41b340: bl           0x61fa28
    // 0x41b344: b 0x41b1b8
    //     0x41b344: b            0x41b1b8
    // 0x41b348: r0 = call 0x61fe70
    //     0x41b348: bl           0x61fe70
    // 0x41b34c: r9 = pp[0xaf9]
    //     0x41b34c: add          r9, PP, #0x11, lsl #12
    //     0x41b350: ldr          r9, [r9, #0xae8]
    // 0x41b354: r0 = call 0x620258
    //     0x41b354: bl           0x620258
  }

  _buildTopWidget() {
    // ** addr: 0x41b4c8, size: 0x728
    // 0x41b4c8: EnterFrame
    //     0x41b4c8: stp          fp, lr, [SP, #-0x10]!
    //     0x41b4cc: mov          fp, SP
    // 0x41b4d0: AllocStack(0x78)
    //     0x41b4d0: sub          SP, SP, #0x78
    //     0x41b4d4: stur         r1, [fp, #-8]
    // 0x41b4d8: CheckStackOverflow
    //     0x41b4d8: ldr          BARRIER, [THR, #0x38]
    //     0x41b4dc: cmp          SP, BARRIER
    //     0x41b4e0: b.ls         0x41bbdc
    //     0x41b4e4: mov          r1, #1
    // 0x41b4e8: r0 = call 0x61e890
    //     0x41b4e8: bl           0x61e890
    // 0x41b4ec: r1 = r0
    //     0x41b4ec: mov          r1, r0
    //     0x41b4f0: ldur         r0, [fp, #-8]
    //     0x41b4f4: stur         r1, [fp, #-0x10]
    // 0x41b4f8: StoreField: r1->field_f = r0
    //     0x41b4f8: stur         r0, [r1, #0xf]
    // 0x41b4fc: r0 = call 0x419950
    //     0x41b4fc: bl           0x419950
    // 0x41b500: r1 = pp[0xb19]
    //     0x41b500: add          r1, PP, #0x11, lsl #12
    //     0x41b504: ldr          r1, [r1, #0xb08]
    // 0x41b508: r2 = NULL
    //     0x41b508: mov          r2, NULL
    //     0x41b50c: stur         r0, [fp, #-0x18]
    // 0x41b510: r0 = call 0x61ec54
    //     0x41b510: bl           0x61ec54
    //     0x41b514: stur         r0, [fp, #-0x20]
    // 0x41b518: r0 = call 0x3ab5ac
    //     0x41b518: bl           0x3ab5ac
    //     0x41b51c: stur         r0, [fp, #-0x28]
    //     0x41b520: add          BARRIER, NULL, #0x20
    //     0x41b524: ldur         lr, [fp, #-0x18]
    //     0x41b528: stp          lr, BARRIER, [SP, #0x10]
    // 0x41b52c: BARRIER = pp[0x5140]
    //     0x41b52c: ldr          BARRIER, [PP, #0x5140]
    // 0x41b530: lr = pp[0x218]
    //     0x41b530: add          lr, PP, #0x10, lsl #12
    //     0x41b534: ldr          lr, [lr, #0x208]
    //     0x41b538: stp          lr, BARRIER, [SP]
    // 0x41b53c: r1 = r0
    //     0x41b53c: mov          r1, r0
    //     0x41b540: ldur         r2, [fp, #-0x20]
    //     0x41b544: mov          r3, #2
    // 0x41b548: r4 = pp[0xb21]
    //     0x41b548: add          r4, PP, #0x11, lsl #12
    //     0x41b54c: ldr          r4, [r4, #0xb10]
    // 0x41b550: r0 = flutter$src$widgets$scroll_view_ListView::ctor_builder()
    //     0x41b550: bl           0x3ab2bc
    // 0x41b554: r0 = call 0x391a04
    //     0x41b554: bl           0x391a04
    //     0x41b558: stur         r0, [fp, #-0x18]
    // 0x41b55c: BARRIER = pp[0x4ea]
    //     0x41b55c: add          BARRIER, PP, #0xa, lsl #12
    //     0x41b560: ldr          BARRIER, [BARRIER, #0x4e0]
    // 0x41b564: lr = pp[0xb29]
    //     0x41b564: add          lr, PP, #0x11, lsl #12
    //     0x41b568: ldr          lr, [lr, #0xb18]
    //     0x41b56c: stp          lr, BARRIER, [SP, #0x10]
    // 0x41b570: BARRIER = pp[0xb31]
    //     0x41b570: add          BARRIER, PP, #0x11, lsl #12
    //     0x41b574: ldr          BARRIER, [BARRIER, #0xb20]
    //     0x41b578: ldur         lr, [fp, #-0x28]
    //     0x41b57c: stp          lr, BARRIER, [SP]
    // 0x41b580: r1 = r0
    //     0x41b580: mov          r1, r0
    // 0x41b584: r4 = pp[0xb39]
    //     0x41b584: add          r4, PP, #0x11, lsl #12
    //     0x41b588: ldr          r4, [r4, #0xb28]
    // 0x41b58c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x41b58c: bl           0x391490
    // 0x41b590: r0 = call 0x352b04
    //     0x41b590: bl           0x352b04
    //     0x41b594: fmov         d0, #28.00000000
    //     0x41b598: stur         r0, [fp, #-0x20]
    // 0x41b59c: StoreField: r0->field_7 = d0
    //     0x41b59c: stur         d0, [r0, #7]
    // 0x41b5a0: StoreField: r0->field_f = d0
    //     0x41b5a0: stur         d0, [r0, #0xf]
    // 0x41b5a4: r0 = call 0x392f28
    //     0x41b5a4: bl           0x392f28
    // 0x41b5a8: r1 = r0
    //     0x41b5a8: mov          r1, r0
    //     0x41b5ac: ldur         r0, [fp, #-0x20]
    //     0x41b5b0: stur         r1, [fp, #-0x28]
    // 0x41b5b4: StoreField: r1->field_7 = r0
    //     0x41b5b4: stur         r0, [r1, #7]
    // 0x41b5b8: StoreField: r1->field_b = r0
    //     0x41b5b8: stur         r0, [r1, #0xb]
    // 0x41b5bc: StoreField: r1->field_f = r0
    //     0x41b5bc: stur         r0, [r1, #0xf]
    // 0x41b5c0: StoreField: r1->field_13 = r0
    //     0x41b5c0: stur         r0, [r1, #0x13]
    // 0x41b5c4: r0 = call 0x31d844
    //     0x41b5c4: bl           0x31d844
    // 0x41b5c8: r1 = r0
    //     0x41b5c8: mov          r1, r0
    // 0x41b5cc: r0 = pp[0x6310]
    //     0x41b5cc: ldr          r0, [PP, #0x6310]
    //     0x41b5d0: stur         r1, [fp, #-0x20]
    // 0x41b5d4: StoreField: r1->field_27 = r0
    //     0x41b5d4: stur         r0, [r1, #0x27]
    //     0x41b5d8: fmov         d0, #1.00000000
    // 0x41b5dc: StoreField: r1->field_7 = d0
    //     0x41b5dc: stur         d0, [r1, #7]
    // 0x41b5e0: d1 = pp[0xb41]
    //     0x41b5e0: add          r17, PP, #0x11, lsl #12
    //     0x41b5e4: ldr          d1, [r17, #0xb30]
    // 0x41b5e8: StoreField: r1->field_f = d1
    //     0x41b5e8: stur         d1, [r1, #0xf]
    // 0x41b5ec: d1 = pp[0xb49]
    //     0x41b5ec: add          r17, PP, #0x11, lsl #12
    //     0x41b5f0: ldr          d1, [r17, #0xb38]
    // 0x41b5f4: ArrayStore: r1[0] = d1  ; List_8
    //     0x41b5f4: stur         d1, [r1, #0x17]
    // 0x41b5f8: d1 = pp[0xb51]
    //     0x41b5f8: add          r17, PP, #0x11, lsl #12
    //     0x41b5fc: ldr          d1, [r17, #0xb40]
    // 0x41b600: StoreField: r1->field_1f = d1
    //     0x41b600: stur         d1, [r1, #0x1f]
    // 0x41b604: r0 = call 0x31d844
    //     0x41b604: bl           0x31d844
    // 0x41b608: r1 = r0
    //     0x41b608: mov          r1, r0
    // 0x41b60c: r0 = pp[0x6310]
    //     0x41b60c: ldr          r0, [PP, #0x6310]
    //     0x41b610: stur         r1, [fp, #-0x30]
    // 0x41b614: StoreField: r1->field_27 = r0
    //     0x41b614: stur         r0, [r1, #0x27]
    //     0x41b618: fmov         d0, #1.00000000
    // 0x41b61c: StoreField: r1->field_7 = d0
    //     0x41b61c: stur         d0, [r1, #7]
    // 0x41b620: d1 = pp[0xb59]
    //     0x41b620: add          r17, PP, #0x11, lsl #12
    //     0x41b624: ldr          d1, [r17, #0xb48]
    // 0x41b628: StoreField: r1->field_f = d1
    //     0x41b628: stur         d1, [r1, #0xf]
    // 0x41b62c: d1 = pp[0xb61]
    //     0x41b62c: add          r17, PP, #0x11, lsl #12
    //     0x41b630: ldr          d1, [r17, #0xb50]
    // 0x41b634: ArrayStore: r1[0] = d1  ; List_8
    //     0x41b634: stur         d1, [r1, #0x17]
    // 0x41b638: d1 = pp[0xe86]
    //     0x41b638: add          r17, PP, #0xe, lsl #12
    //     0x41b63c: ldr          d1, [r17, #0xe78]
    // 0x41b640: StoreField: r1->field_1f = d1
    //     0x41b640: stur         d1, [r1, #0x1f]
    // 0x41b644: r0 = call 0x31d844
    //     0x41b644: bl           0x31d844
    // 0x41b648: r1 = r0
    //     0x41b648: mov          r1, r0
    // 0x41b64c: r0 = pp[0x6310]
    //     0x41b64c: ldr          r0, [PP, #0x6310]
    //     0x41b650: stur         r1, [fp, #-0x38]
    // 0x41b654: StoreField: r1->field_27 = r0
    //     0x41b654: stur         r0, [r1, #0x27]
    //     0x41b658: fmov         d0, #1.00000000
    // 0x41b65c: StoreField: r1->field_7 = d0
    //     0x41b65c: stur         d0, [r1, #7]
    // 0x41b660: d1 = pp[0xb69]
    //     0x41b660: add          r17, PP, #0x11, lsl #12
    //     0x41b664: ldr          d1, [r17, #0xb58]
    // 0x41b668: StoreField: r1->field_f = d1
    //     0x41b668: stur         d1, [r1, #0xf]
    // 0x41b66c: d1 = pp[0xb71]
    //     0x41b66c: add          r17, PP, #0x11, lsl #12
    //     0x41b670: ldr          d1, [r17, #0xb60]
    // 0x41b674: ArrayStore: r1[0] = d1  ; List_8
    //     0x41b674: stur         d1, [r1, #0x17]
    // 0x41b678: d1 = pp[0xb79]
    //     0x41b678: add          r17, PP, #0x11, lsl #12
    //     0x41b67c: ldr          d1, [r17, #0xb68]
    // 0x41b680: StoreField: r1->field_1f = d1
    //     0x41b680: stur         d1, [r1, #0x1f]
    // 0x41b684: r0 = call 0x31d844
    //     0x41b684: bl           0x31d844
    // 0x41b688: r1 = r0
    //     0x41b688: mov          r1, r0
    // 0x41b68c: r0 = pp[0x6310]
    //     0x41b68c: ldr          r0, [PP, #0x6310]
    //     0x41b690: stur         r1, [fp, #-0x40]
    // 0x41b694: StoreField: r1->field_27 = r0
    //     0x41b694: stur         r0, [r1, #0x27]
    //     0x41b698: fmov         d0, #1.00000000
    // 0x41b69c: StoreField: r1->field_7 = d0
    //     0x41b69c: stur         d0, [r1, #7]
    // 0x41b6a0: d1 = pp[0xd6f]
    //     0x41b6a0: add          r17, PP, #0xf, lsl #12
    //     0x41b6a4: ldr          d1, [r17, #0xd60]
    // 0x41b6a8: StoreField: r1->field_f = d1
    //     0x41b6a8: stur         d1, [r1, #0xf]
    // 0x41b6ac: d1 = pp[0xb81]
    //     0x41b6ac: add          r17, PP, #0x11, lsl #12
    //     0x41b6b0: ldr          d1, [r17, #0xb70]
    // 0x41b6b4: ArrayStore: r1[0] = d1  ; List_8
    //     0x41b6b4: stur         d1, [r1, #0x17]
    // 0x41b6b8: StoreField: r1->field_1f = d0
    //     0x41b6b8: stur         d0, [r1, #0x1f]
    // 0x41b6bc: r0 = call 0x31d844
    //     0x41b6bc: bl           0x31d844
    // 0x41b6c0: r3 = r0
    //     0x41b6c0: mov          r3, r0
    // 0x41b6c4: r0 = pp[0x6310]
    //     0x41b6c4: ldr          r0, [PP, #0x6310]
    //     0x41b6c8: stur         r3, [fp, #-0x48]
    // 0x41b6cc: StoreField: r3->field_27 = r0
    //     0x41b6cc: stur         r0, [r3, #0x27]
    //     0x41b6d0: fmov         d0, #1.00000000
    // 0x41b6d4: StoreField: r3->field_7 = d0
    //     0x41b6d4: stur         d0, [r3, #7]
    // 0x41b6d8: StoreField: r3->field_f = xzr
    //     0x41b6d8: stur         xzr, [r3, #0xf]
    // 0x41b6dc: d1 = pp[0xb89]
    //     0x41b6dc: add          r17, PP, #0x11, lsl #12
    //     0x41b6e0: ldr          d1, [r17, #0xb78]
    // 0x41b6e4: ArrayStore: r3[0] = d1  ; List_8
    //     0x41b6e4: stur         d1, [r3, #0x17]
    // 0x41b6e8: d1 = pp[0x9b0]
    //     0x41b6e8: add          r17, PP, #0x10, lsl #12
    //     0x41b6ec: ldr          d1, [r17, #0x9a0]
    // 0x41b6f0: StoreField: r3->field_1f = d1
    //     0x41b6f0: stur         d1, [r3, #0x1f]
    // 0x41b6f4: r1 = NULL
    //     0x41b6f4: mov          r1, NULL
    //     0x41b6f8: mov          r2, #0xa
    // 0x41b6fc: r0 = call 0x61f920
    //     0x41b6fc: bl           0x61f920
    // 0x41b700: r2 = r0
    //     0x41b700: mov          r2, r0
    //     0x41b704: ldur         r0, [fp, #-0x20]
    //     0x41b708: stur         r2, [fp, #-0x50]
    // 0x41b70c: StoreField: r2->field_f = r0
    //     0x41b70c: stur         r0, [r2, #0xf]
    //     0x41b710: ldur         r0, [fp, #-0x30]
    // 0x41b714: StoreField: r2->field_13 = r0
    //     0x41b714: stur         r0, [r2, #0x13]
    //     0x41b718: ldur         r0, [fp, #-0x38]
    // 0x41b71c: ArrayStore: r2[0] = r0  ; List_8
    //     0x41b71c: stur         r0, [r2, #0x17]
    //     0x41b720: ldur         r0, [fp, #-0x40]
    // 0x41b724: StoreField: r2->field_1b = r0
    //     0x41b724: stur         r0, [r2, #0x1b]
    //     0x41b728: ldur         r0, [fp, #-0x48]
    // 0x41b72c: StoreField: r2->field_1f = r0
    //     0x41b72c: stur         r0, [r2, #0x1f]
    // 0x41b730: r1 = pp[0xc68]
    //     0x41b730: add          r1, PP, #0x10, lsl #12
    //     0x41b734: ldr          r1, [r1, #0xc58]
    // 0x41b738: r0 = call 0x61e854
    //     0x41b738: bl           0x61e854
    // 0x41b73c: r1 = r0
    //     0x41b73c: mov          r1, r0
    //     0x41b740: ldur         r0, [fp, #-0x50]
    //     0x41b744: stur         r1, [fp, #-0x20]
    // 0x41b748: StoreField: r1->field_f = r0
    //     0x41b748: stur         r0, [r1, #0xf]
    //     0x41b74c: mov          r0, #0xa
    // 0x41b750: StoreField: r1->field_b = r0
    //     0x41b750: stur         r0, [r1, #0xb]
    // 0x41b754: r0 = call 0x3a108c
    //     0x41b754: bl           0x3a108c
    // 0x41b758: r1 = r0
    //     0x41b758: mov          r1, r0
    // 0x41b75c: r0 = pp[0x19f]
    //     0x41b75c: add          r0, PP, #0xf, lsl #12
    //     0x41b760: ldr          r0, [r0, #0x190]
    //     0x41b764: stur         r1, [fp, #-0x30]
    // 0x41b768: StoreField: r1->field_13 = r0
    //     0x41b768: stur         r0, [r1, #0x13]
    // 0x41b76c: r0 = pp[0xad6]
    //     0x41b76c: add          r0, PP, #0xe, lsl #12
    //     0x41b770: ldr          r0, [r0, #0xac8]
    // 0x41b774: ArrayStore: r1[0] = r0  ; List_8
    //     0x41b774: stur         r0, [r1, #0x17]
    // 0x41b778: r0 = pp[0xc88]
    //     0x41b778: add          r0, PP, #0x10, lsl #12
    //     0x41b77c: ldr          r0, [r0, #0xc78]
    // 0x41b780: StoreField: r1->field_1b = r0
    //     0x41b780: stur         r0, [r1, #0x1b]
    //     0x41b784: ldur         r0, [fp, #-0x20]
    // 0x41b788: StoreField: r1->field_7 = r0
    //     0x41b788: stur         r0, [r1, #7]
    // 0x41b78c: r0 = call 0x391dd8
    //     0x41b78c: bl           0x391dd8
    // 0x41b790: r1 = r0
    //     0x41b790: mov          r1, r0
    //     0x41b794: ldur         r0, [fp, #-0x28]
    //     0x41b798: stur         r1, [fp, #-0x20]
    // 0x41b79c: StoreField: r1->field_13 = r0
    //     0x41b79c: stur         r0, [r1, #0x13]
    //     0x41b7a0: ldur         r0, [fp, #-0x30]
    // 0x41b7a4: StoreField: r1->field_1b = r0
    //     0x41b7a4: stur         r0, [r1, #0x1b]
    // 0x41b7a8: r0 = pp[0xb86]
    //     0x41b7a8: add          r0, PP, #0xe, lsl #12
    //     0x41b7ac: ldr          r0, [r0, #0xb78]
    // 0x41b7b0: StoreField: r1->field_23 = r0
    //     0x41b7b0: stur         r0, [r1, #0x23]
    // 0x41b7b4: r0 = call 0x352b04
    //     0x41b7b4: bl           0x352b04
    //     0x41b7b8: fmov         d0, #26.00000000
    //     0x41b7bc: stur         r0, [fp, #-0x28]
    // 0x41b7c0: StoreField: r0->field_7 = d0
    //     0x41b7c0: stur         d0, [r0, #7]
    // 0x41b7c4: StoreField: r0->field_f = d0
    //     0x41b7c4: stur         d0, [r0, #0xf]
    // 0x41b7c8: r0 = call 0x392f28
    //     0x41b7c8: bl           0x392f28
    // 0x41b7cc: r1 = r0
    //     0x41b7cc: mov          r1, r0
    //     0x41b7d0: ldur         r0, [fp, #-0x28]
    //     0x41b7d4: stur         r1, [fp, #-0x30]
    // 0x41b7d8: StoreField: r1->field_7 = r0
    //     0x41b7d8: stur         r0, [r1, #7]
    // 0x41b7dc: StoreField: r1->field_b = r0
    //     0x41b7dc: stur         r0, [r1, #0xb]
    // 0x41b7e0: StoreField: r1->field_f = r0
    //     0x41b7e0: stur         r0, [r1, #0xf]
    // 0x41b7e4: StoreField: r1->field_13 = r0
    //     0x41b7e4: stur         r0, [r1, #0x13]
    // 0x41b7e8: r0 = call 0x391dd8
    //     0x41b7e8: bl           0x391dd8
    // 0x41b7ec: r1 = r0
    //     0x41b7ec: mov          r1, r0
    // 0x41b7f0: r0 = pp[0x6050]
    //     0x41b7f0: ldr          r0, [PP, #0x6050]
    //     0x41b7f4: stur         r1, [fp, #-0x28]
    // 0x41b7f8: StoreField: r1->field_7 = r0
    //     0x41b7f8: stur         r0, [r1, #7]
    //     0x41b7fc: ldur         r0, [fp, #-0x30]
    // 0x41b800: StoreField: r1->field_13 = r0
    //     0x41b800: stur         r0, [r1, #0x13]
    // 0x41b804: r0 = pp[0xb86]
    //     0x41b804: add          r0, PP, #0xe, lsl #12
    //     0x41b808: ldr          r0, [r0, #0xb78]
    // 0x41b80c: StoreField: r1->field_23 = r0
    //     0x41b80c: stur         r0, [r1, #0x23]
    //     0x41b810: ldur         r0, [fp, #-8]
    // 0x41b814: LoadField: r2 = r0->field_13
    //     0x41b814: ldur         r2, [r0, #0x13]
    //     0x41b818: add          r2, r2, HEAP, lsl #32
    // 0x41b81c: LoadField: r0 = r2->field_57
    //     0x41b81c: ldur         r0, [r2, #0x57]
    //     0x41b820: add          r0, r0, HEAP, lsl #32
    // 0x41b824: LoadField: r2 = r0->field_b
    //     0x41b824: ldur         r2, [r0, #0xb]
    //     0x41b828: add          r2, r2, HEAP, lsl #32
    // 0x41b82c: BARRIER = pp[0x40]
    //     0x41b82c: ldr          BARRIER, [PP, #0x40]
    //     0x41b830: cmp          r2, r16
    // 0x41b834: b.eq 0x41bbe4
    //     0x41b834: b.eq         0x41bbe4
    //     0x41b838: str          r2, [SP]
    // 0x41b83c: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x41b83c: bl           0x2ac0a0
    // 0x41b840: r1 = NULL
    //     0x41b840: mov          r1, NULL
    //     0x41b844: mov          r2, #2
    //     0x41b848: stur         r0, [fp, #-8]
    // 0x41b84c: r0 = call 0x61f920
    //     0x41b84c: bl           0x61f920
    // 0x41b850: r2 = r0
    //     0x41b850: mov          r2, r0
    //     0x41b854: ldur         r0, [fp, #-8]
    //     0x41b858: stur         r2, [fp, #-0x30]
    // 0x41b85c: StoreField: r2->field_f = r0
    //     0x41b85c: stur         r0, [r2, #0xf]
    // 0x41b860: r1 = pp[0x868]
    //     0x41b860: ldr          r1, [PP, #0x868]
    // 0x41b864: r0 = call 0x61e854
    //     0x41b864: bl           0x61e854
    // 0x41b868: r1 = r0
    //     0x41b868: mov          r1, r0
    //     0x41b86c: ldur         r0, [fp, #-0x30]
    // 0x41b870: StoreField: r1->field_f = r0
    //     0x41b870: stur         r0, [r1, #0xf]
    //     0x41b874: mov          r0, #2
    // 0x41b878: StoreField: r1->field_b = r0
    //     0x41b878: stur         r0, [r1, #0xb]
    //     0x41b87c: str          r1, [SP]
    // 0x41b880: r1 = pp[0x8ec]
    //     0x41b880: add          r1, PP, #0xc, lsl #12
    //     0x41b884: ldr          r1, [r1, #0x8e0]
    // 0x41b888: r4 = pp[0xf2f]
    //     0x41b888: add          r4, PP, #0xf, lsl #12
    //     0x41b88c: ldr          r4, [r4, #0xf20]
    // 0x41b890: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x41b890: bl           0x3a1dcc
    //     0x41b894: stur         r0, [fp, #-8]
    // 0x41b898: r0 = call 0x31d844
    //     0x41b898: bl           0x31d844
    // 0x41b89c: r1 = r0
    //     0x41b89c: mov          r1, r0
    // 0x41b8a0: r0 = pp[0x6310]
    //     0x41b8a0: ldr          r0, [PP, #0x6310]
    //     0x41b8a4: stur         r1, [fp, #-0x30]
    // 0x41b8a8: StoreField: r1->field_27 = r0
    //     0x41b8a8: stur         r0, [r1, #0x27]
    //     0x41b8ac: fmov         d0, #1.00000000
    // 0x41b8b0: StoreField: r1->field_7 = d0
    //     0x41b8b0: stur         d0, [r1, #7]
    // 0x41b8b4: d0 = pp[0xb01]
    //     0x41b8b4: add          r17, PP, #0x11, lsl #12
    //     0x41b8b8: ldr          d0, [r17, #0xaf0]
    // 0x41b8bc: StoreField: r1->field_f = d0
    //     0x41b8bc: stur         d0, [r1, #0xf]
    // 0x41b8c0: ArrayStore: r1[0] = xzr  ; List_8
    //     0x41b8c0: stur         xzr, [r1, #0x17]
    // 0x41b8c4: d0 = pp[0x8d9]
    //     0x41b8c4: add          r17, PP, #0x11, lsl #12
    //     0x41b8c8: ldr          d0, [r17, #0x8c8]
    // 0x41b8cc: StoreField: r1->field_1f = d0
    //     0x41b8cc: stur         d0, [r1, #0x1f]
    // 0x41b8d0: r0 = call 0x31abec
    //     0x41b8d0: bl           0x31abec
    // 0x41b8d4: r1 = r0
    //     0x41b8d4: mov          r1, r0
    //     0x41b8d8: add          r0, NULL, #0x20
    //     0x41b8dc: stur         r1, [fp, #-0x38]
    // 0x41b8e0: StoreField: r1->field_7 = r0
    //     0x41b8e0: stur         r0, [r1, #7]
    //     0x41b8e4: ldur         r0, [fp, #-0x30]
    // 0x41b8e8: StoreField: r1->field_b = r0
    //     0x41b8e8: stur         r0, [r1, #0xb]
    // 0x41b8ec: r0 = pp[0x217]
    //     0x41b8ec: add          r0, PP, #0xf, lsl #12
    //     0x41b8f0: ldr          r0, [r0, #0x208]
    // 0x41b8f4: StoreField: r1->field_1f = r0
    //     0x41b8f4: stur         r0, [r1, #0x1f]
    // 0x41b8f8: r0 = pp[0xa59]
    //     0x41b8f8: add          r0, PP, #0x11, lsl #12
    //     0x41b8fc: ldr          r0, [r0, #0xa48]
    // 0x41b900: StoreField: r1->field_23 = r0
    //     0x41b900: stur         r0, [r1, #0x23]
    // 0x41b904: r0 = call 0x393bf8
    //     0x41b904: bl           0x393bf8
    // 0x41b908: r1 = r0
    //     0x41b908: mov          r1, r0
    //     0x41b90c: ldur         r0, [fp, #-8]
    //     0x41b910: stur         r1, [fp, #-0x30]
    // 0x41b914: StoreField: r1->field_b = r0
    //     0x41b914: stur         r0, [r1, #0xb]
    //     0x41b918: ldur         r0, [fp, #-0x38]
    // 0x41b91c: StoreField: r1->field_13 = r0
    //     0x41b91c: stur         r0, [r1, #0x13]
    // 0x41b920: r0 = pp[0x23f]
    //     0x41b920: add          r0, PP, #0xf, lsl #12
    //     0x41b924: ldr          r0, [r0, #0x230]
    // 0x41b928: StoreField: r1->field_2b = r0
    //     0x41b928: stur         r0, [r1, #0x2b]
    //     0x41b92c: mov          r0, #2
    // 0x41b930: StoreField: r1->field_37 = r0
    //     0x41b930: stur         r0, [r1, #0x37]
    // 0x41b934: r0 = call 0x391c0c
    //     0x41b934: bl           0x391c0c
    // 0x41b938: r2 = r0
    //     0x41b938: mov          r2, r0
    // 0x41b93c: r0 = pp[0xab1]
    //     0x41b93c: add          r0, PP, #0x11, lsl #12
    //     0x41b940: ldr          r0, [r0, #0xaa0]
    //     0x41b944: stur         r2, [fp, #-8]
    // 0x41b948: StoreField: r2->field_f = r0
    //     0x41b948: stur         r0, [r2, #0xf]
    //     0x41b94c: ldur         r0, [fp, #-0x30]
    // 0x41b950: StoreField: r2->field_b = r0
    //     0x41b950: stur         r0, [r2, #0xb]
    // 0x41b954: r1 = pp[0xade]
    //     0x41b954: add          r1, PP, #0xe, lsl #12
    //     0x41b958: ldr          r1, [r1, #0xad0]
    // 0x41b95c: r0 = call 0x3a1420
    //     0x41b95c: bl           0x3a1420
    // 0x41b960: r1 = r0
    //     0x41b960: mov          r1, r0
    //     0x41b964: mov          r0, #1
    //     0x41b968: stur         r1, [fp, #-0x30]
    // 0x41b96c: StoreField: r1->field_13 = r0
    //     0x41b96c: stur         r0, [r1, #0x13]
    // 0x41b970: r0 = pp[0x960]
    //     0x41b970: add          r0, PP, #0x10, lsl #12
    //     0x41b974: ldr          r0, [r0, #0x950]
    // 0x41b978: StoreField: r1->field_1b = r0
    //     0x41b978: stur         r0, [r1, #0x1b]
    //     0x41b97c: ldur         r0, [fp, #-8]
    // 0x41b980: StoreField: r1->field_b = r0
    //     0x41b980: stur         r0, [r1, #0xb]
    // 0x41b984: r0 = call 0x3a142c
    //     0x41b984: bl           0x3a142c
    // 0x41b988: r1 = r0
    //     0x41b988: mov          r1, r0
    // 0x41b98c: r0 = pp[0xb91]
    //     0x41b98c: add          r0, PP, #0x11, lsl #12
    //     0x41b990: ldr          r0, [r0, #0xb80]
    //     0x41b994: stur         r1, [fp, #-8]
    // 0x41b998: StoreField: r1->field_b = r0
    //     0x41b998: stur         r0, [r1, #0xb]
    // 0x41b99c: r0 = pp[0x17f]
    //     0x41b99c: add          r0, PP, #0xf, lsl #12
    //     0x41b9a0: ldr          r0, [r0, #0x170]
    // 0x41b9a4: StoreField: r1->field_f = r0
    //     0x41b9a4: stur         r0, [r1, #0xf]
    // 0x41b9a8: r0 = pp[0xb99]
    //     0x41b9a8: add          r0, PP, #0x11, lsl #12
    //     0x41b9ac: ldr          r0, [r0, #0xb88]
    // 0x41b9b0: StoreField: r1->field_13 = r0
    //     0x41b9b0: stur         r0, [r1, #0x13]
    // 0x41b9b4: ArrayStore: r1[0] = r0  ; List_8
    //     0x41b9b4: stur         r0, [r1, #0x17]
    // 0x41b9b8: r0 = call 0x3a1d94
    //     0x41b9b8: bl           0x3a1d94
    //     0x41b9bc: ldur         r2, [fp, #-0x10]
    // 0x41b9c0: r1 = pp[0xba1]
    //     0x41b9c0: add          r1, PP, #0x11, lsl #12
    //     0x41b9c4: ldr          r1, [r1, #0xb90]
    //     0x41b9c8: stur         r0, [fp, #-0x10]
    // 0x41b9cc: r0 = call 0x61ec54
    //     0x41b9cc: bl           0x61ec54
    //     0x41b9d0: ldur         BARRIER, [fp, #-8]
    //     0x41b9d4: stp          BARRIER, r0, [SP]
    //     0x41b9d8: ldur         r1, [fp, #-0x10]
    // 0x41b9dc: r4 = pp[0x214]
    //     0x41b9dc: add          r4, PP, #0xc, lsl #12
    //     0x41b9e0: ldr          r4, [r4, #0x208]
    // 0x41b9e4: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x41b9e4: bl           0x3a18c4
    // 0x41b9e8: r1 = NULL
    //     0x41b9e8: mov          r1, NULL
    //     0x41b9ec: mov          r2, #4
    // 0x41b9f0: r0 = call 0x61f920
    //     0x41b9f0: bl           0x61f920
    // 0x41b9f4: r2 = r0
    //     0x41b9f4: mov          r2, r0
    //     0x41b9f8: ldur         r0, [fp, #-0x30]
    //     0x41b9fc: stur         r2, [fp, #-8]
    // 0x41ba00: StoreField: r2->field_f = r0
    //     0x41ba00: stur         r0, [r2, #0xf]
    //     0x41ba04: ldur         r0, [fp, #-0x10]
    // 0x41ba08: StoreField: r2->field_13 = r0
    //     0x41ba08: stur         r0, [r2, #0x13]
    // 0x41ba0c: r1 = pp[0x5c58]
    //     0x41ba0c: ldr          r1, [PP, #0x5c58]
    // 0x41ba10: r0 = call 0x61e854
    //     0x41ba10: bl           0x61e854
    // 0x41ba14: r1 = r0
    //     0x41ba14: mov          r1, r0
    //     0x41ba18: ldur         r0, [fp, #-8]
    //     0x41ba1c: stur         r1, [fp, #-0x10]
    // 0x41ba20: StoreField: r1->field_f = r0
    //     0x41ba20: stur         r0, [r1, #0xf]
    //     0x41ba24: mov          r2, #4
    // 0x41ba28: StoreField: r1->field_b = r2
    //     0x41ba28: stur         r2, [r1, #0xb]
    // 0x41ba2c: r0 = call 0x3a1414
    //     0x41ba2c: bl           0x3a1414
    // 0x41ba30: r1 = r0
    //     0x41ba30: mov          r1, r0
    // 0x41ba34: r0 = pp[0x5140]
    //     0x41ba34: ldr          r0, [PP, #0x5140]
    //     0x41ba38: stur         r1, [fp, #-8]
    // 0x41ba3c: StoreField: r1->field_f = r0
    //     0x41ba3c: stur         r0, [r1, #0xf]
    // 0x41ba40: r0 = pp[0xaee]
    //     0x41ba40: add          r0, PP, #0xe, lsl #12
    //     0x41ba44: ldr          r0, [r0, #0xae0]
    // 0x41ba48: StoreField: r1->field_13 = r0
    //     0x41ba48: stur         r0, [r1, #0x13]
    // 0x41ba4c: r0 = pp[0xb16]
    //     0x41ba4c: add          r0, PP, #0xe, lsl #12
    //     0x41ba50: ldr          r0, [r0, #0xb08]
    // 0x41ba54: ArrayStore: r1[0] = r0  ; List_8
    //     0x41ba54: stur         r0, [r1, #0x17]
    // 0x41ba58: r0 = pp[0xb6e]
    //     0x41ba58: add          r0, PP, #0xe, lsl #12
    //     0x41ba5c: ldr          r0, [r0, #0xb60]
    // 0x41ba60: StoreField: r1->field_1b = r0
    //     0x41ba60: stur         r0, [r1, #0x1b]
    // 0x41ba64: r0 = pp[0xb06]
    //     0x41ba64: add          r0, PP, #0xe, lsl #12
    //     0x41ba68: ldr          r0, [r0, #0xaf8]
    // 0x41ba6c: StoreField: r1->field_23 = r0
    //     0x41ba6c: stur         r0, [r1, #0x23]
    // 0x41ba70: r0 = pp[0xb2]
    //     0x41ba70: add          r0, PP, #0xa, lsl #12
    //     0x41ba74: ldr          r0, [r0, #0xa8]
    // 0x41ba78: StoreField: r1->field_2b = r0
    //     0x41ba78: stur         r0, [r1, #0x2b]
    // 0x41ba7c: StoreField: r1->field_2f = xzr
    //     0x41ba7c: stur         xzr, [r1, #0x2f]
    //     0x41ba80: ldur         r0, [fp, #-0x10]
    // 0x41ba84: StoreField: r1->field_b = r0
    //     0x41ba84: stur         r0, [r1, #0xb]
    // 0x41ba88: r0 = call 0x391a04
    //     0x41ba88: bl           0x391a04
    //     0x41ba8c: stur         r0, [fp, #-0x10]
    // 0x41ba90: BARRIER = pp[0x5458]
    //     0x41ba90: ldr          BARRIER, [PP, #0x5458]
    // 0x41ba94: lr = pp[0xba9]
    //     0x41ba94: add          lr, PP, #0x11, lsl #12
    //     0x41ba98: ldr          lr, [lr, #0xb98]
    //     0x41ba9c: stp          lr, BARRIER, [SP, #0x18]
    // 0x41baa0: BARRIER = pp[0x791]
    //     0x41baa0: add          BARRIER, PP, #0x11, lsl #12
    //     0x41baa4: ldr          BARRIER, [BARRIER, #0x780]
    //     0x41baa8: ldur         lr, [fp, #-0x28]
    //     0x41baac: stp          lr, BARRIER, [SP, #8]
    //     0x41bab0: ldur         BARRIER, [fp, #-8]
    //     0x41bab4: str          BARRIER, [SP]
    // 0x41bab8: r1 = r0
    //     0x41bab8: mov          r1, r0
    // 0x41babc: r4 = pp[0xa89]
    //     0x41babc: add          r4, PP, #0x11, lsl #12
    //     0x41bac0: ldr          r4, [r4, #0xa78]
    // 0x41bac4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x41bac4: bl           0x391490
    // 0x41bac8: r0 = call 0x391a04
    //     0x41bac8: bl           0x391a04
    //     0x41bacc: stur         r0, [fp, #-8]
    // 0x41bad0: BARRIER = pp[0xbb1]
    //     0x41bad0: add          BARRIER, PP, #0x11, lsl #12
    //     0x41bad4: ldr          BARRIER, [BARRIER, #0xba0]
    // 0x41bad8: lr = pp[0xbb9]
    //     0x41bad8: add          lr, PP, #0x11, lsl #12
    //     0x41badc: ldr          lr, [lr, #0xba8]
    //     0x41bae0: stp          lr, BARRIER, [SP, #0x10]
    //     0x41bae4: ldur         BARRIER, [fp, #-0x20]
    //     0x41bae8: ldur         lr, [fp, #-0x10]
    //     0x41baec: stp          lr, BARRIER, [SP]
    // 0x41baf0: r1 = r0
    //     0x41baf0: mov          r1, r0
    // 0x41baf4: r4 = pp[0xbc1]
    //     0x41baf4: add          r4, PP, #0x11, lsl #12
    //     0x41baf8: ldr          r4, [r4, #0xbb0]
    // 0x41bafc: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x41bafc: bl           0x391490
    // 0x41bb00: r0 = call 0x396460
    //     0x41bb00: bl           0x396460
    // 0x41bb04: r3 = r0
    //     0x41bb04: mov          r3, r0
    // 0x41bb08: r0 = pp[0xc80]
    //     0x41bb08: add          r0, PP, #0x10, lsl #12
    //     0x41bb0c: ldr          r0, [r0, #0xc70]
    //     0x41bb10: stur         r3, [fp, #-0x10]
    // 0x41bb14: StoreField: r3->field_f = r0
    //     0x41bb14: stur         r0, [r3, #0xf]
    //     0x41bb18: ldur         r0, [fp, #-8]
    // 0x41bb1c: StoreField: r3->field_b = r0
    //     0x41bb1c: stur         r0, [r3, #0xb]
    // 0x41bb20: r1 = NULL
    //     0x41bb20: mov          r1, NULL
    //     0x41bb24: mov          r2, #4
    // 0x41bb28: r0 = call 0x61f920
    //     0x41bb28: bl           0x61f920
    // 0x41bb2c: r2 = r0
    //     0x41bb2c: mov          r2, r0
    //     0x41bb30: ldur         r0, [fp, #-0x18]
    //     0x41bb34: stur         r2, [fp, #-8]
    // 0x41bb38: StoreField: r2->field_f = r0
    //     0x41bb38: stur         r0, [r2, #0xf]
    //     0x41bb3c: ldur         r0, [fp, #-0x10]
    // 0x41bb40: StoreField: r2->field_13 = r0
    //     0x41bb40: stur         r0, [r2, #0x13]
    // 0x41bb44: r1 = pp[0x5c58]
    //     0x41bb44: ldr          r1, [PP, #0x5c58]
    // 0x41bb48: r0 = call 0x61e854
    //     0x41bb48: bl           0x61e854
    // 0x41bb4c: r1 = r0
    //     0x41bb4c: mov          r1, r0
    //     0x41bb50: ldur         r0, [fp, #-8]
    //     0x41bb54: stur         r1, [fp, #-0x10]
    // 0x41bb58: StoreField: r1->field_f = r0
    //     0x41bb58: stur         r0, [r1, #0xf]
    //     0x41bb5c: mov          r0, #4
    // 0x41bb60: StoreField: r1->field_b = r0
    //     0x41bb60: stur         r0, [r1, #0xb]
    // 0x41bb64: r0 = call 0x39e6f4
    //     0x41bb64: bl           0x39e6f4
    // 0x41bb68: r1 = r0
    //     0x41bb68: mov          r1, r0
    // 0x41bb6c: r0 = pp[0xf0e]
    //     0x41bb6c: add          r0, PP, #0xe, lsl #12
    //     0x41bb70: ldr          r0, [r0, #0xf00]
    //     0x41bb74: stur         r1, [fp, #-8]
    // 0x41bb78: StoreField: r1->field_f = r0
    //     0x41bb78: stur         r0, [r1, #0xf]
    // 0x41bb7c: r0 = pp[0xf16]
    //     0x41bb7c: add          r0, PP, #0xe, lsl #12
    //     0x41bb80: ldr          r0, [r0, #0xf08]
    // 0x41bb84: ArrayStore: r1[0] = r0  ; List_8
    //     0x41bb84: stur         r0, [r1, #0x17]
    // 0x41bb88: r0 = pp[0xf1e]
    //     0x41bb88: add          r0, PP, #0xe, lsl #12
    //     0x41bb8c: ldr          r0, [r0, #0xf10]
    // 0x41bb90: StoreField: r1->field_1b = r0
    //     0x41bb90: stur         r0, [r1, #0x1b]
    //     0x41bb94: ldur         r0, [fp, #-0x10]
    // 0x41bb98: StoreField: r1->field_b = r0
    //     0x41bb98: stur         r0, [r1, #0xb]
    // 0x41bb9c: r0 = call 0x391a04
    //     0x41bb9c: bl           0x391a04
    //     0x41bba0: stur         r0, [fp, #-0x10]
    // 0x41bba4: BARRIER = pp[0x5458]
    //     0x41bba4: ldr          BARRIER, [PP, #0x5458]
    // 0x41bba8: lr = pp[0xbc9]
    //     0x41bba8: add          lr, PP, #0x11, lsl #12
    //     0x41bbac: ldr          lr, [lr, #0xbb8]
    //     0x41bbb0: stp          lr, BARRIER, [SP, #8]
    //     0x41bbb4: ldur         BARRIER, [fp, #-8]
    //     0x41bbb8: str          BARRIER, [SP]
    // 0x41bbbc: r1 = r0
    //     0x41bbbc: mov          r1, r0
    // 0x41bbc0: r4 = pp[0x879]
    //     0x41bbc0: add          r4, PP, #0x11, lsl #12
    //     0x41bbc4: ldr          r4, [r4, #0x868]
    // 0x41bbc8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x41bbc8: bl           0x391490
    //     0x41bbcc: ldur         r0, [fp, #-0x10]
    // 0x41bbd0: SP = fp
    //     0x41bbd0: mov          SP, fp
    // 0x41bbd4: LeaveFrame
    //     0x41bbd4: ldp          fp, lr, [SP], #0x10
    // 0x41bbd8: ret
    //     0x41bbd8: ret          
    // 0x41bbdc: r0 = call 0x61fa28
    //     0x41bbdc: bl           0x61fa28
    // 0x41bbe0: b 0x41b4e4
    //     0x41bbe0: b            0x41b4e4
    // 0x41bbe4: r9 = pp[0xbd1]
    //     0x41bbe4: add          r9, PP, #0x11, lsl #12
    //     0x41bbe8: ldr          r9, [r9, #0xbc0]
    // 0x41bbec: r0 = call 0x620258
    //     0x41bbec: bl           0x620258
  }

  _anon_closure() {
    // ** addr: 0x41bbf0, size: 0x58
    // 0x41bbf0: EnterFrame
    //     0x41bbf0: stp          fp, lr, [SP, #-0x10]!
    //     0x41bbf4: mov          fp, SP
    //     0x41bbf8: ldr          r0, [fp, #0x10]
    // 0x41bbfc: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x41bbfc: ldur         r1, [r0, #0x17]
    //     0x41bc00: add          r1, r1, HEAP, lsl #32
    // 0x41bc04: CheckStackOverflow
    //     0x41bc04: ldr          BARRIER, [THR, #0x38]
    //     0x41bc08: cmp          SP, BARRIER
    //     0x41bc0c: b.ls         0x41bc3c
    // 0x41bc10: LoadField: r0 = r1->field_f
    //     0x41bc10: ldur         r0, [r1, #0xf]
    //     0x41bc14: add          r0, r0, HEAP, lsl #32
    // 0x41bc18: LoadField: r1 = r0->field_f
    //     0x41bc18: ldur         r1, [r0, #0xf]
    //     0x41bc1c: add          r1, r1, HEAP, lsl #32
    //     0x41bc20: cmp          r1, r22
    // 0x41bc24: b.eq 0x41bc44
    //     0x41bc24: b.eq         0x41bc44
    // 0x41bc28: r0 = soul_flutter_international$biz$game$page_game_fruit_bet_record_dialog_GameFruitBetRecordDialog::showGameRuleDialog()
    //     0x41bc28: bl           0x41bc48
    // 0x41bc2c: r0 = NULL
    //     0x41bc2c: mov          r0, NULL
    // 0x41bc30: SP = fp
    //     0x41bc30: mov          SP, fp
    // 0x41bc34: LeaveFrame
    //     0x41bc34: ldp          fp, lr, [SP], #0x10
    // 0x41bc38: ret
    //     0x41bc38: ret          
    // 0x41bc3c: r0 = call 0x61fa28
    //     0x41bc3c: bl           0x61fa28
    // 0x41bc40: b 0x41bc10
    //     0x41bc40: b            0x41bc10
    // 0x41bc44: r0 = call 0x61ffd0
    //     0x41bc44: bl           0x61ffd0
  }

  _anon_closure() {
    // ** addr: 0x41c320, size: 0x10c
    // 0x41c320: EnterFrame
    //     0x41c320: stp          fp, lr, [SP, #-0x10]!
    //     0x41c324: mov          fp, SP
    // 0x41c328: AllocStack(0x28)
    //     0x41c328: sub          SP, SP, #0x28
    //     0x41c32c: ldr          r0, [fp, #0x20]
    // 0x41c330: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x41c330: ldur         r1, [r0, #0x17]
    //     0x41c334: add          r1, r1, HEAP, lsl #32
    //     0x41c338: stur         r1, [fp, #-8]
    // 0x41c33c: CheckStackOverflow
    //     0x41c33c: ldr          BARRIER, [THR, #0x38]
    //     0x41c340: cmp          SP, BARRIER
    //     0x41c344: b.ls         0x41c424
    //     0x41c348: mov          r1, #2
    // 0x41c34c: r0 = call 0x61e890
    //     0x41c34c: bl           0x61e890
    // 0x41c350: r1 = r0
    //     0x41c350: mov          r1, r0
    //     0x41c354: ldur         r0, [fp, #-8]
    //     0x41c358: stur         r1, [fp, #-0x10]
    // 0x41c35c: StoreField: r1->field_b = r0
    //     0x41c35c: stur         r0, [r1, #0xb]
    //     0x41c360: ldr          r0, [fp, #0x18]
    // 0x41c364: StoreField: r1->field_f = r0
    //     0x41c364: stur         r0, [r1, #0xf]
    //     0x41c368: ldr          r0, [fp, #0x10]
    // 0x41c36c: StoreField: r1->field_13 = r0
    //     0x41c36c: stur         r0, [r1, #0x13]
    //     0x41c370: sbfx         r2, r0, #1, #0x1f
    // 0x41c374: branchIfSmi(r0, 0x41c37c)
    //     0x41c374: tbz          r0, #0, 0x41c37c
    // 0x41c378: LoadField: r2 = r0->field_7
    //     0x41c378: ldur         r2, [r0, #7]
    //     0x41c37c: cmp          r2, #0
    // 0x41c380: b.gt 0x41c394
    //     0x41c380: b.gt         0x41c394
    //     0x41c384: cbnz         r0, 0x41c3a8
    // 0x41c388: r0 = pp[0xbe1]
    //     0x41c388: add          r0, PP, #0x11, lsl #12
    //     0x41c38c: ldr          r0, [r0, #0xbd0]
    // 0x41c390: b 0x41c3ac
    //     0x41c390: b            0x41c3ac
    //     0x41c394: cmp          r0, #2
    // 0x41c398: b.ne 0x41c3a8
    //     0x41c398: b.ne         0x41c3a8
    // 0x41c39c: r0 = pp[0xbe9]
    //     0x41c39c: add          r0, PP, #0x11, lsl #12
    //     0x41c3a0: ldr          r0, [r0, #0xbd8]
    // 0x41c3a4: b 0x41c3ac
    //     0x41c3a4: b            0x41c3ac
    // 0x41c3a8: r0 = pp[0x148]
    //     0x41c3a8: ldr          r0, [PP, #0x148]
    //     0x41c3ac: stur         r0, [fp, #-8]
    // 0x41c3b0: r0 = call 0x3a142c
    //     0x41c3b0: bl           0x3a142c
    // 0x41c3b4: r1 = r0
    //     0x41c3b4: mov          r1, r0
    //     0x41c3b8: ldur         r0, [fp, #-8]
    //     0x41c3bc: stur         r1, [fp, #-0x18]
    // 0x41c3c0: StoreField: r1->field_b = r0
    //     0x41c3c0: stur         r0, [r1, #0xb]
    // 0x41c3c4: r0 = pp[0x17f]
    //     0x41c3c4: add          r0, PP, #0xf, lsl #12
    //     0x41c3c8: ldr          r0, [r0, #0x170]
    // 0x41c3cc: StoreField: r1->field_f = r0
    //     0x41c3cc: stur         r0, [r1, #0xf]
    // 0x41c3d0: r0 = call 0x3a1d94
    //     0x41c3d0: bl           0x3a1d94
    //     0x41c3d4: ldur         r2, [fp, #-0x10]
    // 0x41c3d8: r1 = pp[0xbf1]
    //     0x41c3d8: add          r1, PP, #0x11, lsl #12
    //     0x41c3dc: ldr          r1, [r1, #0xbe0]
    //     0x41c3e0: stur         r0, [fp, #-8]
    // 0x41c3e4: r0 = call 0x61ec54
    //     0x41c3e4: bl           0x61ec54
    //     0x41c3e8: ldur         BARRIER, [fp, #-0x18]
    //     0x41c3ec: stp          BARRIER, r0, [SP]
    //     0x41c3f0: ldur         r1, [fp, #-8]
    // 0x41c3f4: r4 = pp[0x214]
    //     0x41c3f4: add          r4, PP, #0xc, lsl #12
    //     0x41c3f8: ldr          r4, [r4, #0x208]
    // 0x41c3fc: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x41c3fc: bl           0x3a18c4
    // 0x41c400: r0 = call 0x391c0c
    //     0x41c400: bl           0x391c0c
    // 0x41c404: r1 = pp[0x129]
    //     0x41c404: add          r1, PP, #0x11, lsl #12
    //     0x41c408: ldr          r1, [r1, #0x118]
    // 0x41c40c: StoreField: r0->field_f = r1
    //     0x41c40c: stur         r1, [r0, #0xf]
    //     0x41c410: ldur         r1, [fp, #-8]
    // 0x41c414: StoreField: r0->field_b = r1
    //     0x41c414: stur         r1, [r0, #0xb]
    // 0x41c418: SP = fp
    //     0x41c418: mov          SP, fp
    // 0x41c41c: LeaveFrame
    //     0x41c41c: ldp          fp, lr, [SP], #0x10
    // 0x41c420: ret
    //     0x41c420: ret          
    // 0x41c424: r0 = call 0x61fa28
    //     0x41c424: bl           0x61fa28
    // 0x41c428: b 0x41c348
    //     0x41c428: b            0x41c348
  }

  _anon_closure() {
    // ** addr: 0x41c42c, size: 0xbc
    // 0x41c42c: EnterFrame
    //     0x41c42c: stp          fp, lr, [SP, #-0x10]!
    //     0x41c430: mov          fp, SP
    // 0x41c434: AllocStack(8)
    //     0x41c434: sub          SP, SP, #8
    //     0x41c438: ldr          r0, [fp, #0x10]
    // 0x41c43c: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x41c43c: ldur         r2, [r0, #0x17]
    //     0x41c440: add          r2, r2, HEAP, lsl #32
    //     0x41c444: stur         r2, [fp, #-8]
    // 0x41c448: CheckStackOverflow
    //     0x41c448: ldr          BARRIER, [THR, #0x38]
    //     0x41c44c: cmp          SP, BARRIER
    //     0x41c450: b.ls         0x41c4e0
    // 0x41c454: LoadField: r0 = r2->field_13
    //     0x41c454: ldur         r0, [r2, #0x13]
    //     0x41c458: add          r0, r0, HEAP, lsl #32
    //     0x41c45c: sbfx         r1, r0, #1, #0x1f
    // 0x41c460: branchIfSmi(r0, 0x41c468)
    //     0x41c460: tbz          r0, #0, 0x41c468
    // 0x41c464: LoadField: r1 = r0->field_7
    //     0x41c464: ldur         r1, [r0, #7]
    //     0x41c468: cmp          r1, #0
    // 0x41c46c: b.gt 0x41c4a8
    //     0x41c46c: b.gt         0x41c4a8
    //     0x41c470: cbnz         r0, 0x41c4d0
    // 0x41c474: r1 = pp[0xbf9]
    //     0x41c474: add          r1, PP, #0x11, lsl #12
    //     0x41c478: ldr          r1, [r1, #0xbe8]
    // 0x41c47c: r4 = pp[0x4c0]
    //     0x41c47c: ldr          r4, [PP, #0x4c0]
    // 0x41c480: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventClick()
    //     0x41c480: bl           0x3a8e60
    // 0x41c484: r0 = soul_flutter_international$common$plugins$router_RouterNative::_getInstance()
    //     0x41c484: bl           0x3a86c0
    // 0x41c488: r1 = r0
    //     0x41c488: mov          r1, r0
    // 0x41c48c: r2 = pp[0xeb9]
    //     0x41c48c: add          r2, PP, #9, lsl #12
    //     0x41c490: ldr          r2, [r2, #0xeb0]
    // 0x41c494: r4 = pp[0x278]
    //     0x41c494: ldr          r4, [PP, #0x278]
    // 0x41c498: r0 = soul_flutter_international$common$plugins$router_RouterNative::routeFlutter()
    //     0x41c498: bl           0x3a99b4
    // 0x41c49c: r1 = r0
    //     0x41c49c: mov          r1, r0
    // 0x41c4a0: r0 = soul_flutter_international$common$plugins$router_SoulNavigator::navigate()
    //     0x41c4a0: bl           0x3a6ae8
    // 0x41c4a4: b 0x41c4d0
    //     0x41c4a4: b            0x41c4d0
    //     0x41c4a8: cmp          r0, #2
    // 0x41c4ac: b.ne 0x41c4d0
    //     0x41c4ac: b.ne         0x41c4d0
    // 0x41c4b0: r1 = pp[0xc01]
    //     0x41c4b0: add          r1, PP, #0x11, lsl #12
    //     0x41c4b4: ldr          r1, [r1, #0xbf0]
    // 0x41c4b8: r4 = pp[0x4c0]
    //     0x41c4b8: ldr          r4, [PP, #0x4c0]
    // 0x41c4bc: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventClick()
    //     0x41c4bc: bl           0x3a8e60
    //     0x41c4c0: ldur         r0, [fp, #-8]
    // 0x41c4c4: LoadField: r1 = r0->field_f
    //     0x41c4c4: ldur         r1, [r0, #0xf]
    //     0x41c4c8: add          r1, r1, HEAP, lsl #32
    // 0x41c4cc: r0 = soul_flutter_international$biz$game$page_game_fruit_bet_record_dialog_GameFruitBetRecordDialog::showGameDialog()
    //     0x41c4cc: bl           0x41c4e8
    // 0x41c4d0: r0 = NULL
    //     0x41c4d0: mov          r0, NULL
    // 0x41c4d4: SP = fp
    //     0x41c4d4: mov          SP, fp
    // 0x41c4d8: LeaveFrame
    //     0x41c4d8: ldp          fp, lr, [SP], #0x10
    // 0x41c4dc: ret
    //     0x41c4dc: ret          
    // 0x41c4e0: r0 = call 0x61fa28
    //     0x41c4e0: bl           0x61fa28
    // 0x41c4e4: b 0x41c454
    //     0x41c4e4: b            0x41c454
  }

  _anon_closure() {
    // ** addr: 0x41c568, size: 0x30
    // 0x41c568: EnterFrame
    //     0x41c568: stp          fp, lr, [SP, #-0x10]!
    //     0x41c56c: mov          fp, SP
    // 0x41c570: CheckStackOverflow
    //     0x41c570: ldr          BARRIER, [THR, #0x38]
    //     0x41c574: cmp          SP, BARRIER
    //     0x41c578: b.ls         0x41c590
    // 0x41c57c: r0 = soul_flutter_international$common$plugins$native_dialog_NativeDialog::toCoinDialog()
    //     0x41c57c: bl           0x41c9dc
    // 0x41c580: r0 = NULL
    //     0x41c580: mov          r0, NULL
    // 0x41c584: SP = fp
    //     0x41c584: mov          SP, fp
    // 0x41c588: LeaveFrame
    //     0x41c588: ldp          fp, lr, [SP], #0x10
    // 0x41c58c: ret
    //     0x41c58c: ret          
    // 0x41c590: r0 = call 0x61fa28
    //     0x41c590: bl           0x61fa28
    // 0x41c594: b 0x41c57c
    //     0x41c594: b            0x41c57c
  }

  dispose() {
    // ** addr: 0x450a60, size: 0x58
    // 0x450a60: EnterFrame
    //     0x450a60: stp          fp, lr, [SP, #-0x10]!
    //     0x450a64: mov          fp, SP
    // 0x450a68: AllocStack(8)
    //     0x450a68: sub          SP, SP, #8
    // 0x450a6c: r0 = r1
    //     0x450a6c: mov          r0, r1
    //     0x450a70: stur         r1, [fp, #-8]
    // 0x450a74: CheckStackOverflow
    //     0x450a74: ldr          BARRIER, [THR, #0x38]
    //     0x450a78: cmp          SP, BARRIER
    //     0x450a7c: b.ls         0x450ab0
    // 0x450a80: r1 = r0
    //     0x450a80: mov          r1, r0
    // 0x450a84: r0 = soul_flutter_international$common$base$soul_state_SoulState::dispose()
    //     0x450a84: bl           0x451970
    //     0x450a88: ldur         r0, [fp, #-8]
    // 0x450a8c: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x450a8c: ldur         r2, [r0, #0x17]
    //     0x450a90: add          r2, r2, HEAP, lsl #32
    // 0x450a94: r1 = pp[0xaa8]
    //     0x450a94: add          r1, PP, #0x10, lsl #12
    //     0x450a98: ldr          r1, [r1, #0xa98]
    // 0x450a9c: r0 = soul_flutter_international$common$plugins$native_event_SOEventBus::removeEventListener()
    //     0x450a9c: bl           0x450ab8
    // 0x450aa0: r0 = NULL
    //     0x450aa0: mov          r0, NULL
    // 0x450aa4: SP = fp
    //     0x450aa4: mov          SP, fp
    // 0x450aa8: LeaveFrame
    //     0x450aa8: ldp          fp, lr, [SP], #0x10
    // 0x450aac: ret
    //     0x450aac: ret          
    // 0x450ab0: r0 = call 0x61fa28
    //     0x450ab0: bl           0x61fa28
    // 0x450ab4: b 0x450a80
    //     0x450ab4: b            0x450a80
  }

  onPageShow() {
    // ** addr: 0x4a9d2c, size: 0x10c
    // 0x4a9d2c: EnterFrame
    //     0x4a9d2c: stp          fp, lr, [SP, #-0x10]!
    //     0x4a9d30: mov          fp, SP
    // 0x4a9d34: AllocStack(0x20)
    //     0x4a9d34: sub          SP, SP, #0x20
    // 0x4a9d38: r0 = r1
    //     0x4a9d38: mov          r0, r1
    //     0x4a9d3c: stur         r1, [fp, #-8]
    // 0x4a9d40: CheckStackOverflow
    //     0x4a9d40: ldr          BARRIER, [THR, #0x38]
    //     0x4a9d44: cmp          SP, BARRIER
    //     0x4a9d48: b.ls         0x4a9e2c
    // 0x4a9d4c: r1 = r0
    //     0x4a9d4c: mov          r1, r0
    // 0x4a9d50: r0 = soul_flutter_international$common$base$soul_state_SoulState::onPageShow()
    //     0x4a9d50: bl           0x4aa6c4
    // 0x4a9d54: r1 = NULL
    //     0x4a9d54: mov          r1, NULL
    //     0x4a9d58: mov          r2, #4
    // 0x4a9d5c: r0 = call 0x61f920
    //     0x4a9d5c: bl           0x61f920
    //     0x4a9d60: stur         r0, [fp, #-0x10]
    // 0x4a9d64: BARRIER = pp[0xc9f]
    //     0x4a9d64: add          BARRIER, PP, #0x17, lsl #12
    //     0x4a9d68: ldr          BARRIER, [BARRIER, #0xc88]
    // 0x4a9d6c: StoreField: r0->field_f = r16
    //     0x4a9d6c: stur         r16, [r0, #0xf]
    //     0x4a9d70: ldur         r1, [fp, #-8]
    // 0x4a9d74: LoadField: r2 = r1->field_b
    //     0x4a9d74: ldur         r2, [r1, #0xb]
    //     0x4a9d78: add          r2, r2, HEAP, lsl #32
    //     0x4a9d7c: cmp          r2, r22
    // 0x4a9d80: b.eq 0x4a9e34
    //     0x4a9d80: b.eq         0x4a9e34
    // 0x4a9d84: LoadField: r1 = r2->field_b
    //     0x4a9d84: ldur         r1, [r2, #0xb]
    //     0x4a9d88: add          r1, r1, HEAP, lsl #32
    //     0x4a9d8c: cmp          r1, r22
    // 0x4a9d90: b.ne 0x4a9da4
    //     0x4a9d90: b.ne         0x4a9da4
    // 0x4a9d94: CheckStackOverflow
    //     0x4a9d94: ldr          BARRIER, [THR, #0x90]
    //     0x4a9d98: stp          BARRIER, NULL, [SP]
    // 0x4a9d9c: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x4a9d9c: bl           0x27c0c8
    // 0x4a9da0: r1 = r0
    //     0x4a9da0: mov          r1, r0
    // 0x4a9da4: r0 = LoadClassIdInstr(r1)
    //     0x4a9da4: ldur         r0, [r1, #-1]
    //     0x4a9da8: ubfx         r0, r0, #0xc, #0x14
    // 0x4a9dac: r2 = pp[0xc9f]
    //     0x4a9dac: add          r2, PP, #0x17, lsl #12
    //     0x4a9db0: ldr          r2, [r2, #0xc88]
    //     0x4a9db4: sub          lr, r0, #1, lsl #12
    //     0x4a9db8: ldr          lr, [r21, lr, lsl #3]
    // 0x4a9dbc: r0 = [R]()
    //     0x4a9dbc: blr          lr
    //     0x4a9dc0: cmp          r0, r22
    // 0x4a9dc4: b.ne 0x4a9dcc
    //     0x4a9dc4: b.ne         0x4a9dcc
    // 0x4a9dc8: r0 = pp[0x148]
    //     0x4a9dc8: ldr          r0, [PP, #0x148]
    //     0x4a9dcc: ldur         r1, [fp, #-0x10]
    //     0x4a9dd0: add          r25, r1, #0x13
    //     0x4a9dd4: str          r0, [r25]
    // 0x4a9dd8: branchIfSmi(r0, 0x4a9df4)
    //     0x4a9dd8: tbz          r0, #0, 0x4a9df4
    //     0x4a9ddc: ldurb        r16, [r1, #-1]
    //     0x4a9de0: ldurb        r17, [r0, #-1]
    //     0x4a9de4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4a9de8: tst          BARRIER, HEAP, lsr #32
    // 0x4a9dec: b.eq 0x4a9df4
    //     0x4a9dec: b.eq         0x4a9df4
    // 0x4a9df0: r0 = call 0x61db00
    //     0x4a9df0: bl           0x61db00
    // 0x4a9df4: BARRIER = pp[0xbf0]
    //     0x4a9df4: ldr          BARRIER, [PP, #0xbf0]
    //     0x4a9df8: ldur         lr, [fp, #-0x10]
    //     0x4a9dfc: stp          lr, BARRIER, [SP]
    // 0x4a9e00: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x4a9e00: bl           0x27c0c8
    //     0x4a9e04: str          r0, [SP]
    // 0x4a9e08: r1 = pp[0xca7]
    //     0x4a9e08: add          r1, PP, #0x17, lsl #12
    //     0x4a9e0c: ldr          r1, [r1, #0xc90]
    // 0x4a9e10: r4 = pp[0xf2f]
    //     0x4a9e10: add          r4, PP, #0xf, lsl #12
    //     0x4a9e14: ldr          r4, [r4, #0xf20]
    // 0x4a9e18: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventPv()
    //     0x4a9e18: bl           0x4a9e38
    // 0x4a9e1c: r0 = NULL
    //     0x4a9e1c: mov          r0, NULL
    // 0x4a9e20: SP = fp
    //     0x4a9e20: mov          SP, fp
    // 0x4a9e24: LeaveFrame
    //     0x4a9e24: ldp          fp, lr, [SP], #0x10
    // 0x4a9e28: ret
    //     0x4a9e28: ret          
    // 0x4a9e2c: r0 = call 0x61fa28
    //     0x4a9e2c: bl           0x61fa28
    // 0x4a9e30: b 0x4a9d4c
    //     0x4a9e30: b            0x4a9d4c
    // 0x4a9e34: r0 = call 0x61ffd0
    //     0x4a9e34: bl           0x61ffd0
  }

  initState() {
    // ** addr: 0x4d1b60, size: 0xa4
    // 0x4d1b60: EnterFrame
    //     0x4d1b60: stp          fp, lr, [SP, #-0x10]!
    //     0x4d1b64: mov          fp, SP
    // 0x4d1b68: AllocStack(0x10)
    //     0x4d1b68: sub          SP, SP, #0x10
    //     0x4d1b6c: stur         r1, [fp, #-8]
    // 0x4d1b70: CheckStackOverflow
    //     0x4d1b70: ldr          BARRIER, [THR, #0x38]
    //     0x4d1b74: cmp          SP, BARRIER
    //     0x4d1b78: b.ls         0x4d1bfc
    //     0x4d1b7c: mov          r1, #1
    // 0x4d1b80: r0 = call 0x61e890
    //     0x4d1b80: bl           0x61e890
    // 0x4d1b84: r1 = r0
    //     0x4d1b84: mov          r1, r0
    //     0x4d1b88: ldur         r0, [fp, #-8]
    // 0x4d1b8c: StoreField: r1->field_f = r0
    //     0x4d1b8c: stur         r0, [r1, #0xf]
    // 0x4d1b90: r2 = r1
    //     0x4d1b90: mov          r2, r1
    // 0x4d1b94: r1 = pp[0xc11]
    //     0x4d1b94: add          r1, PP, #0x11, lsl #12
    //     0x4d1b98: ldr          r1, [r1, #0xc00]
    // 0x4d1b9c: r0 = call 0x61ec54
    //     0x4d1b9c: bl           0x61ec54
    // 0x4d1ba0: r2 = r0
    //     0x4d1ba0: mov          r2, r0
    // 0x4d1ba4: r1 = pp[0xaa8]
    //     0x4d1ba4: add          r1, PP, #0x10, lsl #12
    //     0x4d1ba8: ldr          r1, [r1, #0xa98]
    // 0x4d1bac: r0 = soul_flutter_international$common$plugins$native_event_SOEventBus::addEventListener()
    //     0x4d1bac: bl           0x4d3338
    //     0x4d1bb0: ldur         r1, [fp, #-8]
    // 0x4d1bb4: ArrayStore: r1[0] = r0  ; List_8
    //     0x4d1bb4: stur         r0, [r1, #0x17]
    //     0x4d1bb8: ldurb        r16, [r1, #-1]
    //     0x4d1bbc: ldurb        r17, [r0, #-1]
    //     0x4d1bc0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d1bc4: tst          BARRIER, HEAP, lsr #32
    // 0x4d1bc8: b.eq 0x4d1bd0
    //     0x4d1bc8: b.eq         0x4d1bd0
    // 0x4d1bcc: r0 = call 0x61e04c
    //     0x4d1bcc: bl           0x61e04c
    // 0x4d1bd0: LoadField: r0 = r1->field_13
    //     0x4d1bd0: ldur         r0, [r1, #0x13]
    //     0x4d1bd4: add          r0, r0, HEAP, lsl #32
    // 0x4d1bd8: r1 = r0
    //     0x4d1bd8: mov          r1, r0
    //     0x4d1bdc: stur         r0, [fp, #-0x10]
    // 0x4d1be0: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::getCurrentProcess()
    //     0x4d1be0: bl           0x4d1c04
    //     0x4d1be4: ldur         r1, [fp, #-0x10]
    // 0x4d1be8: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::requestTotalCoins()
    //     0x4d1be8: bl           0x41e8b4
    // 0x4d1bec: r0 = NULL
    //     0x4d1bec: mov          r0, NULL
    // 0x4d1bf0: SP = fp
    //     0x4d1bf0: mov          SP, fp
    // 0x4d1bf4: LeaveFrame
    //     0x4d1bf4: ldp          fp, lr, [SP], #0x10
    // 0x4d1bf8: ret
    //     0x4d1bf8: ret          
    // 0x4d1bfc: r0 = call 0x61fa28
    //     0x4d1bfc: bl           0x61fa28
    // 0x4d1c00: b 0x4d1b7c
    //     0x4d1c00: b            0x4d1b7c
  }

  _anon_closure() {
    // ** addr: 0x4d3964, size: 0xd4
    // 0x4d3964: EnterFrame
    //     0x4d3964: stp          fp, lr, [SP, #-0x10]!
    //     0x4d3968: mov          fp, SP
    // 0x4d396c: AllocStack(0x18)
    //     0x4d396c: sub          SP, SP, #0x18
    //     0x4d3970: ldr          r0, [fp, #0x20]
    // 0x4d3974: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d3974: ldur         r1, [r0, #0x17]
    //     0x4d3978: add          r1, r1, HEAP, lsl #32
    //     0x4d397c: stur         r1, [fp, #-8]
    // 0x4d3980: CheckStackOverflow
    //     0x4d3980: ldr          BARRIER, [THR, #0x38]
    //     0x4d3984: cmp          SP, BARRIER
    //     0x4d3988: b.ls         0x4d3a30
    //     0x4d398c: ldr          r0, [fp, #0x10]
    //     0x4d3990: cmp          r0, r22
    // 0x4d3994: b.ne 0x4d39ac
    //     0x4d3994: b.ne         0x4d39ac
    // 0x4d3998: CheckStackOverflow
    //     0x4d3998: ldr          BARRIER, [THR, #0x90]
    //     0x4d399c: stp          BARRIER, NULL, [SP]
    // 0x4d39a0: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x4d39a0: bl           0x27c0c8
    // 0x4d39a4: r1 = r0
    //     0x4d39a4: mov          r1, r0
    // 0x4d39a8: b 0x4d39b0
    //     0x4d39a8: b            0x4d39b0
    // 0x4d39ac: r1 = r0
    //     0x4d39ac: mov          r1, r0
    //     0x4d39b0: ldur         r3, [fp, #-8]
    // 0x4d39b4: r0 = LoadClassIdInstr(r1)
    //     0x4d39b4: ldur         r0, [r1, #-1]
    //     0x4d39b8: ubfx         r0, r0, #0xc, #0x14
    // 0x4d39bc: r2 = pp[0xd78]
    //     0x4d39bc: add          r2, PP, #0x10, lsl #12
    //     0x4d39c0: ldr          r2, [r2, #0xd68]
    //     0x4d39c4: sub          lr, r0, #1, lsl #12
    //     0x4d39c8: ldr          lr, [r21, lr, lsl #3]
    // 0x4d39cc: r0 = [R]()
    //     0x4d39cc: blr          lr
    // 0x4d39d0: r1 = r0
    //     0x4d39d0: mov          r1, r0
    //     0x4d39d4: ldur         r0, [fp, #-8]
    // 0x4d39d8: LoadField: r2 = r0->field_f
    //     0x4d39d8: ldur         r2, [r0, #0xf]
    //     0x4d39dc: add          r2, r2, HEAP, lsl #32
    // 0x4d39e0: LoadField: r0 = r2->field_13
    //     0x4d39e0: ldur         r0, [r2, #0x13]
    //     0x4d39e4: add          r0, r0, HEAP, lsl #32
    //     0x4d39e8: cmp          r1, r22
    // 0x4d39ec: b.eq 0x4d3a14
    //     0x4d39ec: b.eq         0x4d3a14
    //     0x4d39f0: mov          r2, #0x3c
    // 0x4d39f4: branchIfSmi(r1, 0x4d3a00)
    //     0x4d39f4: tbz          r1, #0, 0x4d3a00
    // 0x4d39f8: r2 = LoadClassIdInstr(r1)
    //     0x4d39f8: ldur         r2, [r1, #-1]
    //     0x4d39fc: ubfx         r2, r2, #0xc, #0x14
    //     0x4d3a00: sub          BARRIER, r2, #0x3c
    //     0x4d3a04: cmp          BARRIER, #1
    // 0x4d3a08: b.hi 0x4d3a14
    //     0x4d3a08: b.hi         0x4d3a14
    // 0x4d3a0c: r2 = r1
    //     0x4d3a0c: mov          r2, r1
    // 0x4d3a10: b 0x4d3a18
    //     0x4d3a10: b            0x4d3a18
    // 0x4d3a14: r2 = NULL
    //     0x4d3a14: mov          r2, NULL
    // 0x4d3a18: r1 = r0
    //     0x4d3a18: mov          r1, r0
    // 0x4d3a1c: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::updateCoinSum()
    //     0x4d3a1c: bl           0x4d3a38
    // 0x4d3a20: r0 = NULL
    //     0x4d3a20: mov          r0, NULL
    // 0x4d3a24: SP = fp
    //     0x4d3a24: mov          SP, fp
    // 0x4d3a28: LeaveFrame
    //     0x4d3a28: ldp          fp, lr, [SP], #0x10
    // 0x4d3a2c: ret
    //     0x4d3a2c: ret          
    // 0x4d3a30: r0 = call 0x61fa28
    //     0x4d3a30: bl           0x61fa28
    // 0x4d3a34: b 0x4d398c
    //     0x4d3a34: b            0x4d398c
  }

  createState() {
    // ** addr: 0x4c2cfc, size: 0x80
    // 0x4c2cfc: EnterFrame
    //     0x4c2cfc: stp          fp, lr, [SP, #-0x10]!
    //     0x4c2d00: mov          fp, SP
    // 0x4c2d04: AllocStack(0x10)
    //     0x4c2d04: sub          SP, SP, #0x10
    // 0x4c2d08: CheckStackOverflow
    //     0x4c2d08: ldr          BARRIER, [THR, #0x38]
    //     0x4c2d0c: cmp          SP, BARRIER
    //     0x4c2d10: b.ls         0x4c2d74
    // 0x4c2d14: r1 = pp[0x843]
    //     0x4c2d14: add          r1, PP, #0xb, lsl #12
    //     0x4c2d18: ldr          r1, [r1, #0x838]
    // 0x4c2d1c: r0 = call 0x4c3930
    //     0x4c2d1c: bl           0x4c3930
    // 0x4c2d20: r1 = r0
    //     0x4c2d20: mov          r1, r0
    // 0x4c2d24: r0 = pp[0x148]
    //     0x4c2d24: ldr          r0, [PP, #0x148]
    //     0x4c2d28: stur         r1, [fp, #-8]
    // 0x4c2d2c: ArrayStore: r1[0] = r0  ; List_8
    //     0x4c2d2c: stur         r0, [r1, #0x17]
    // 0x4c2d30: r0 = call 0x4c3924
    //     0x4c2d30: bl           0x4c3924
    // 0x4c2d34: r1 = r0
    //     0x4c2d34: mov          r1, r0
    //     0x4c2d38: stur         r0, [fp, #-0x10]
    // 0x4c2d3c: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_GameFruitNotifier::ctor()
    //     0x4c2d3c: bl           0x4c2d7c
    //     0x4c2d40: ldur         r0, [fp, #-0x10]
    //     0x4c2d44: ldur         r1, [fp, #-8]
    // 0x4c2d48: StoreField: r1->field_13 = r0
    //     0x4c2d48: stur         r0, [r1, #0x13]
    //     0x4c2d4c: ldurb        r16, [r1, #-1]
    //     0x4c2d50: ldurb        r17, [r0, #-1]
    //     0x4c2d54: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c2d58: tst          BARRIER, HEAP, lsr #32
    // 0x4c2d5c: b.eq 0x4c2d64
    //     0x4c2d5c: b.eq         0x4c2d64
    // 0x4c2d60: r0 = call 0x61e04c
    //     0x4c2d60: bl           0x61e04c
    // 0x4c2d64: r0 = r1
    //     0x4c2d64: mov          r0, r1
    // 0x4c2d68: SP = fp
    //     0x4c2d68: mov          SP, fp
    // 0x4c2d6c: LeaveFrame
    //     0x4c2d6c: ldp          fp, lr, [SP], #0x10
    // 0x4c2d70: ret
    //     0x4c2d70: ret          
    // 0x4c2d74: r0 = call 0x61fa28
    //     0x4c2d74: bl           0x61fa28
    // 0x4c2d78: b 0x4c2d14
    //     0x4c2d78: b            0x4c2d14
  }
