// lib: , url: soul_flutter_international$biz$party$page_party_lucky_bag


  build() {
    // ** addr: 0x3a52a8, size: 0x8a0
    // 0x3a52a8: EnterFrame
    //     0x3a52a8: stp          fp, lr, [SP, #-0x10]!
    //     0x3a52ac: mov          fp, SP
    // 0x3a52b0: AllocStack(0x80)
    //     0x3a52b0: sub          SP, SP, #0x80
    // 0x3a52b4: r0 = r1
    //     0x3a52b4: mov          r0, r1
    //     0x3a52b8: stur         r1, [fp, #-8]
    // 0x3a52bc: r1 = r2
    //     0x3a52bc: mov          r1, r2
    //     0x3a52c0: stur         r2, [fp, #-0x10]
    // 0x3a52c4: CheckStackOverflow
    //     0x3a52c4: ldr          BARRIER, [THR, #0x38]
    //     0x3a52c8: cmp          SP, BARRIER
    //     0x3a52cc: b.ls         0x3a5b28
    //     0x3a52d0: mov          r1, #2
    // 0x3a52d4: r0 = call 0x61e890
    //     0x3a52d4: bl           0x61e890
    // 0x3a52d8: r2 = r0
    //     0x3a52d8: mov          r2, r0
    //     0x3a52dc: ldur         r0, [fp, #-8]
    //     0x3a52e0: stur         r2, [fp, #-0x18]
    // 0x3a52e4: StoreField: r2->field_f = r0
    //     0x3a52e4: stur         r0, [r2, #0xf]
    // 0x3a52e8: r1 = pp[0x9a4]
    //     0x3a52e8: add          r1, PP, #0xc, lsl #12
    //     0x3a52ec: ldr          r1, [r1, #0x998]
    // 0x3a52f0: r4 = pp[0x4c0]
    //     0x3a52f0: ldr          r4, [PP, #0x4c0]
    // 0x3a52f4: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3a52f4: bl           0x3a1dcc
    // 0x3a52f8: BARRIER = pp[0x1af8]
    //     0x3a52f8: ldr          BARRIER, [PP, #0x1af8]
    //     0x3a52fc: stp          BARRIER, r0, [SP]
    // 0x3a5300: r0 = dart_core__StringBase::op_add()
    //     0x3a5300: bl           0x281718
    // 0x3a5304: BARRIER = pp[0x25e0]
    //     0x3a5304: ldr          BARRIER, [PP, #0x25e0]
    //     0x3a5308: stp          BARRIER, r0, [SP]
    // 0x3a530c: r0 = dart_core__StringBase::op_add()
    //     0x3a530c: bl           0x281718
    //     0x3a5310: ldur         r1, [fp, #-0x10]
    //     0x3a5314: stur         r0, [fp, #-0x10]
    // 0x3a5318: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenWidth()
    //     0x3a5318: bl           0x3a877c
    //     0x3a531c: mov          v1.16b, v0.16b
    // 0x3a5320: d0 = pp[0x37a]
    //     0x3a5320: add          r17, PP, #0x12, lsl #12
    //     0x3a5324: ldr          d0, [r17, #0x368]
    //     0x3a5328: fsub         d2, d1, d0
    //     0x3a532c: fmov         d1, #0.50000000
    //     0x3a5330: fmul         d3, d2, d1
    //     0x3a5334: stur         d3, [fp, #-0x68]
    // 0x3a5338: r0 = call 0x31d844
    //     0x3a5338: bl           0x31d844
    // 0x3a533c: r1 = r0
    //     0x3a533c: mov          r1, r0
    // 0x3a5340: r0 = pp[0x6310]
    //     0x3a5340: ldr          r0, [PP, #0x6310]
    //     0x3a5344: stur         r1, [fp, #-0x20]
    // 0x3a5348: StoreField: r1->field_27 = r0
    //     0x3a5348: stur         r0, [r1, #0x27]
    //     0x3a534c: fmov         d0, #1.00000000
    // 0x3a5350: StoreField: r1->field_7 = d0
    //     0x3a5350: stur         d0, [r1, #7]
    // 0x3a5354: d1 = pp[0xb51]
    //     0x3a5354: add          r17, PP, #0x11, lsl #12
    //     0x3a5358: ldr          d1, [r17, #0xb40]
    // 0x3a535c: StoreField: r1->field_f = d1
    //     0x3a535c: stur         d1, [r1, #0xf]
    // 0x3a5360: ArrayStore: r1[0] = d0  ; List_8
    //     0x3a5360: stur         d0, [r1, #0x17]
    // 0x3a5364: d1 = pp[0x382]
    //     0x3a5364: add          r17, PP, #0x12, lsl #12
    //     0x3a5368: ldr          d1, [r17, #0x370]
    // 0x3a536c: StoreField: r1->field_1f = d1
    //     0x3a536c: stur         d1, [r1, #0x1f]
    // 0x3a5370: r0 = call 0x31abec
    //     0x3a5370: bl           0x31abec
    // 0x3a5374: r1 = r0
    //     0x3a5374: mov          r1, r0
    //     0x3a5378: add          r0, NULL, #0x20
    //     0x3a537c: stur         r1, [fp, #-0x28]
    // 0x3a5380: StoreField: r1->field_7 = r0
    //     0x3a5380: stur         r0, [r1, #7]
    //     0x3a5384: ldur         r2, [fp, #-0x20]
    // 0x3a5388: StoreField: r1->field_b = r2
    //     0x3a5388: stur         r2, [r1, #0xb]
    // 0x3a538c: r2 = pp[0xdf6]
    //     0x3a538c: add          r2, PP, #0xe, lsl #12
    //     0x3a5390: ldr          r2, [r2, #0xde8]
    // 0x3a5394: StoreField: r1->field_1f = r2
    //     0x3a5394: stur         r2, [r1, #0x1f]
    // 0x3a5398: r0 = call 0x31d844
    //     0x3a5398: bl           0x31d844
    // 0x3a539c: r1 = r0
    //     0x3a539c: mov          r1, r0
    // 0x3a53a0: r0 = pp[0x6310]
    //     0x3a53a0: ldr          r0, [PP, #0x6310]
    //     0x3a53a4: stur         r1, [fp, #-0x20]
    // 0x3a53a8: StoreField: r1->field_27 = r0
    //     0x3a53a8: stur         r0, [r1, #0x27]
    //     0x3a53ac: fmov         d0, #1.00000000
    // 0x3a53b0: StoreField: r1->field_7 = d0
    //     0x3a53b0: stur         d0, [r1, #7]
    // 0x3a53b4: d1 = pp[0xae0]
    //     0x3a53b4: add          r17, PP, #0x10, lsl #12
    //     0x3a53b8: ldr          d1, [r17, #0xad0]
    // 0x3a53bc: StoreField: r1->field_f = d1
    //     0x3a53bc: stur         d1, [r1, #0xf]
    // 0x3a53c0: d2 = pp[0xae8]
    //     0x3a53c0: add          r17, PP, #0x10, lsl #12
    //     0x3a53c4: ldr          d2, [r17, #0xad8]
    // 0x3a53c8: ArrayStore: r1[0] = d2  ; List_8
    //     0x3a53c8: stur         d2, [r1, #0x17]
    // 0x3a53cc: d3 = pp[0xaf0]
    //     0x3a53cc: add          r17, PP, #0x10, lsl #12
    //     0x3a53d0: ldr          d3, [r17, #0xae0]
    // 0x3a53d4: StoreField: r1->field_1f = d3
    //     0x3a53d4: stur         d3, [r1, #0x1f]
    // 0x3a53d8: r0 = call 0x31abec
    //     0x3a53d8: bl           0x31abec
    // 0x3a53dc: r1 = r0
    //     0x3a53dc: mov          r1, r0
    //     0x3a53e0: add          r0, NULL, #0x20
    //     0x3a53e4: stur         r1, [fp, #-0x30]
    // 0x3a53e8: StoreField: r1->field_7 = r0
    //     0x3a53e8: stur         r0, [r1, #7]
    //     0x3a53ec: ldur         r2, [fp, #-0x20]
    // 0x3a53f0: StoreField: r1->field_b = r2
    //     0x3a53f0: stur         r2, [r1, #0xb]
    // 0x3a53f4: r2 = pp[0xdf6]
    //     0x3a53f4: add          r2, PP, #0xe, lsl #12
    //     0x3a53f8: ldr          r2, [r2, #0xde8]
    // 0x3a53fc: StoreField: r1->field_1f = r2
    //     0x3a53fc: stur         r2, [r1, #0x1f]
    // 0x3a5400: r0 = call 0x31d844
    //     0x3a5400: bl           0x31d844
    // 0x3a5404: r1 = r0
    //     0x3a5404: mov          r1, r0
    // 0x3a5408: r0 = pp[0x6310]
    //     0x3a5408: ldr          r0, [PP, #0x6310]
    // 0x3a540c: StoreField: r1->field_27 = r0
    //     0x3a540c: stur         r0, [r1, #0x27]
    //     0x3a5410: fmov         d1, #1.00000000
    // 0x3a5414: StoreField: r1->field_7 = d1
    //     0x3a5414: stur         d1, [r1, #7]
    // 0x3a5418: d0 = pp[0x38a]
    //     0x3a5418: add          r17, PP, #0x12, lsl #12
    //     0x3a541c: ldr          d0, [r17, #0x378]
    // 0x3a5420: StoreField: r1->field_f = d0
    //     0x3a5420: stur         d0, [r1, #0xf]
    // 0x3a5424: d2 = pp[0xaf0]
    //     0x3a5424: add          r17, PP, #0x10, lsl #12
    //     0x3a5428: ldr          d2, [r17, #0xae0]
    // 0x3a542c: ArrayStore: r1[0] = d2  ; List_8
    //     0x3a542c: stur         d2, [r1, #0x17]
    // 0x3a5430: StoreField: r1->field_1f = xzr
    //     0x3a5430: stur         xzr, [r1, #0x1f]
    // 0x3a5434: d0 = pp[0x65d0]
    //     0x3a5434: ldr          d0, [PP, #0x65d0]
    // 0x3a5438: r0 = soul_flutter_international$res$styles_TextStyles::fontDINCondensedBold()
    //     0x3a5438: bl           0x3a86fc
    //     0x3a543c: stur         r0, [fp, #-0x20]
    // 0x3a5440: r0 = call 0x31d844
    //     0x3a5440: bl           0x31d844
    // 0x3a5444: r1 = r0
    //     0x3a5444: mov          r1, r0
    // 0x3a5448: r0 = pp[0x6310]
    //     0x3a5448: ldr          r0, [PP, #0x6310]
    //     0x3a544c: stur         r1, [fp, #-0x38]
    // 0x3a5450: StoreField: r1->field_27 = r0
    //     0x3a5450: stur         r0, [r1, #0x27]
    //     0x3a5454: fmov         d0, #1.00000000
    // 0x3a5458: StoreField: r1->field_7 = d0
    //     0x3a5458: stur         d0, [r1, #7]
    // 0x3a545c: d1 = pp[0xae0]
    //     0x3a545c: add          r17, PP, #0x10, lsl #12
    //     0x3a5460: ldr          d1, [r17, #0xad0]
    // 0x3a5464: StoreField: r1->field_f = d1
    //     0x3a5464: stur         d1, [r1, #0xf]
    // 0x3a5468: d1 = pp[0xae8]
    //     0x3a5468: add          r17, PP, #0x10, lsl #12
    //     0x3a546c: ldr          d1, [r17, #0xad8]
    // 0x3a5470: ArrayStore: r1[0] = d1  ; List_8
    //     0x3a5470: stur         d1, [r1, #0x17]
    // 0x3a5474: d1 = pp[0xaf0]
    //     0x3a5474: add          r17, PP, #0x10, lsl #12
    //     0x3a5478: ldr          d1, [r17, #0xae0]
    // 0x3a547c: StoreField: r1->field_1f = d1
    //     0x3a547c: stur         d1, [r1, #0x1f]
    // 0x3a5480: r0 = call 0x31abec
    //     0x3a5480: bl           0x31abec
    //     0x3a5484: add          r1, NULL, #0x20
    // 0x3a5488: StoreField: r0->field_7 = r1
    //     0x3a5488: stur         r1, [r0, #7]
    //     0x3a548c: ldur         r2, [fp, #-0x38]
    // 0x3a5490: StoreField: r0->field_b = r2
    //     0x3a5490: stur         r2, [r0, #0xb]
    // 0x3a5494: r2 = pp[0xdf6]
    //     0x3a5494: add          r2, PP, #0xe, lsl #12
    //     0x3a5498: ldr          r2, [r2, #0xde8]
    // 0x3a549c: StoreField: r0->field_1f = r2
    //     0x3a549c: stur         r2, [r0, #0x1f]
    //     0x3a54a0: ldur         r3, [fp, #-0x18]
    // 0x3a54a4: StoreField: r3->field_13 = r0
    //     0x3a54a4: stur         r0, [r3, #0x13]
    //     0x3a54a8: ldurb        r16, [r3, #-1]
    //     0x3a54ac: ldurb        r17, [r0, #-1]
    //     0x3a54b0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3a54b4: tst          BARRIER, HEAP, lsr #32
    // 0x3a54b8: b.eq 0x3a54c0
    //     0x3a54b8: b.eq         0x3a54c0
    // 0x3a54bc: r0 = call 0x61e08c
    //     0x3a54bc: bl           0x61e08c
    // 0x3a54c0: r0 = call 0x31d844
    //     0x3a54c0: bl           0x31d844
    // 0x3a54c4: r1 = r0
    //     0x3a54c4: mov          r1, r0
    // 0x3a54c8: r0 = pp[0x6310]
    //     0x3a54c8: ldr          r0, [PP, #0x6310]
    //     0x3a54cc: stur         r1, [fp, #-0x38]
    // 0x3a54d0: StoreField: r1->field_27 = r0
    //     0x3a54d0: stur         r0, [r1, #0x27]
    //     0x3a54d4: fmov         d0, #1.00000000
    // 0x3a54d8: StoreField: r1->field_7 = d0
    //     0x3a54d8: stur         d0, [r1, #7]
    // 0x3a54dc: d0 = pp[0x392]
    //     0x3a54dc: add          r17, PP, #0x12, lsl #12
    //     0x3a54e0: ldr          d0, [r17, #0x380]
    // 0x3a54e4: StoreField: r1->field_f = d0
    //     0x3a54e4: stur         d0, [r1, #0xf]
    // 0x3a54e8: d0 = pp[0x39a]
    //     0x3a54e8: add          r17, PP, #0x12, lsl #12
    //     0x3a54ec: ldr          d0, [r17, #0x388]
    // 0x3a54f0: ArrayStore: r1[0] = d0  ; List_8
    //     0x3a54f0: stur         d0, [r1, #0x17]
    // 0x3a54f4: d0 = pp[0x3a2]
    //     0x3a54f4: add          r17, PP, #0x12, lsl #12
    //     0x3a54f8: ldr          d0, [r17, #0x390]
    // 0x3a54fc: StoreField: r1->field_1f = d0
    //     0x3a54fc: stur         d0, [r1, #0x1f]
    // 0x3a5500: r0 = call 0x31abec
    //     0x3a5500: bl           0x31abec
    // 0x3a5504: r1 = r0
    //     0x3a5504: mov          r1, r0
    //     0x3a5508: add          r0, NULL, #0x20
    //     0x3a550c: stur         r1, [fp, #-0x50]
    // 0x3a5510: StoreField: r1->field_7 = r0
    //     0x3a5510: stur         r0, [r1, #7]
    //     0x3a5514: ldur         r2, [fp, #-0x38]
    // 0x3a5518: StoreField: r1->field_b = r2
    //     0x3a5518: stur         r2, [r1, #0xb]
    // 0x3a551c: r2 = pp[0xdf6]
    //     0x3a551c: add          r2, PP, #0xe, lsl #12
    //     0x3a5520: ldr          r2, [r2, #0xde8]
    // 0x3a5524: StoreField: r1->field_1f = r2
    //     0x3a5524: stur         r2, [r1, #0x1f]
    // 0x3a5528: r2 = pp[0x5a1]
    //     0x3a5528: add          r2, PP, #0x11, lsl #12
    //     0x3a552c: ldr          r2, [r2, #0x590]
    // 0x3a5530: StoreField: r1->field_13 = r2
    //     0x3a5530: stur         r2, [r1, #0x13]
    //     0x3a5534: ldur         r2, [fp, #-8]
    // 0x3a5538: ArrayLoad: r3 = r2[0]  ; List_8
    //     0x3a5538: ldur         r3, [r2, #0x17]
    //     0x3a553c: add          r3, r3, HEAP, lsl #32
    //     0x3a5540: stur         r3, [fp, #-0x48]
    // 0x3a5544: LoadField: r4 = r2->field_1b
    //     0x3a5544: ldur         r4, [r2, #0x1b]
    //     0x3a5548: add          r4, r4, HEAP, lsl #32
    //     0x3a554c: stur         r4, [fp, #-0x40]
    // 0x3a5550: LoadField: r5 = r2->field_13
    //     0x3a5550: ldur         r5, [r2, #0x13]
    //     0x3a5554: add          r5, r5, HEAP, lsl #32
    //     0x3a5558: stur         r5, [fp, #-0x38]
    // 0x3a555c: r0 = call 0x391a04
    //     0x3a555c: bl           0x391a04
    //     0x3a5560: stur         r0, [fp, #-0x58]
    // 0x3a5564: BARRIER = pp[0x5458]
    //     0x3a5564: ldr          BARRIER, [PP, #0x5458]
    // 0x3a5568: lr = pp[0x3aa]
    //     0x3a5568: add          lr, PP, #0x12, lsl #12
    //     0x3a556c: ldr          lr, [lr, #0x398]
    //     0x3a5570: stp          lr, BARRIER, [SP]
    // 0x3a5574: r1 = r0
    //     0x3a5574: mov          r1, r0
    // 0x3a5578: r4 = pp[0xd2]
    //     0x3a5578: add          r4, PP, #0xa, lsl #12
    //     0x3a557c: ldr          r4, [r4, #0xc8]
    // 0x3a5580: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a5580: bl           0x391490
    //     0x3a5584: ldur         r1, [fp, #-0x10]
    //     0x3a5588: ldur         r2, [fp, #-0x50]
    // 0x3a558c: r0 = soul_flutter_international$biz$party$page_party_lucky_bag_::_myWallet()
    //     0x3a558c: bl           0x3a6828
    // 0x3a5590: r1 = pp[0x5e7]
    //     0x3a5590: add          r1, PP, #0xf, lsl #12
    //     0x3a5594: ldr          r1, [r1, #0x5d8]
    //     0x3a5598: stur         r0, [fp, #-0x10]
    // 0x3a559c: r0 = call 0x399e40
    //     0x3a559c: bl           0x399e40
    // 0x3a55a0: r1 = r0
    //     0x3a55a0: mov          r1, r0
    // 0x3a55a4: r0 = pp[0x52c8]
    //     0x3a55a4: ldr          r0, [PP, #0x52c8]
    //     0x3a55a8: stur         r1, [fp, #-0x50]
    // 0x3a55ac: ArrayStore: r1[0] = r0  ; List_8
    //     0x3a55ac: stur         r0, [r1, #0x17]
    // 0x3a55b0: StoreField: r1->field_1b = r0
    //     0x3a55b0: stur         r0, [r1, #0x1b]
    //     0x3a55b4: ldur         r0, [fp, #-0x10]
    // 0x3a55b8: StoreField: r1->field_b = r0
    //     0x3a55b8: stur         r0, [r1, #0xb]
    // 0x3a55bc: r0 = call 0x3a67fc
    //     0x3a55bc: bl           0x3a67fc
    // 0x3a55c0: r2 = r0
    //     0x3a55c0: mov          r2, r0
    //     0x3a55c4: ldur         r0, [fp, #-0x48]
    //     0x3a55c8: stur         r2, [fp, #-0x60]
    // 0x3a55cc: StoreField: r2->field_b = r0
    //     0x3a55cc: stur         r0, [r2, #0xb]
    //     0x3a55d0: ldur         r0, [fp, #-0x40]
    // 0x3a55d4: StoreField: r2->field_f = r0
    //     0x3a55d4: stur         r0, [r2, #0xf]
    // 0x3a55d8: d0 = pp[0x37a]
    //     0x3a55d8: add          r17, PP, #0x12, lsl #12
    //     0x3a55dc: ldr          d0, [r17, #0x368]
    // 0x3a55e0: StoreField: r2->field_13 = d0
    //     0x3a55e0: stur         d0, [r2, #0x13]
    //     0x3a55e4: add          r0, NULL, #0x20
    // 0x3a55e8: StoreField: r2->field_1b = r0
    //     0x3a55e8: stur         r0, [r2, #0x1b]
    //     0x3a55ec: ldur         d0, [fp, #-0x68]
    //     0x3a55f0: ldp          r0, r1, [THR, #0x50]
    //     0x3a55f4: add          r0, r0, #0x10
    //     0x3a55f8: cmp          r1, r0
    // 0x3a55fc: b.ls 0x3a5b30
    //     0x3a55fc: b.ls         0x3a5b30
    //     0x3a5600: str          r0, [THR, #0x50]
    //     0x3a5604: sub          r0, r0, #0xf
    //     0x3a5608: mov          r1, #0xe15c
    //     0x3a560c: movk         r1, #3, lsl #16
    //     0x3a5610: stur         r1, [r0, #-1]
    // 0x3a5614: StoreField: r0->field_7 = d0
    //     0x3a5614: stur         d0, [r0, #7]
    //     0x3a5618: stur         r0, [fp, #-0x10]
    // 0x3a561c: r1 = pp[0x5e7]
    //     0x3a561c: add          r1, PP, #0xf, lsl #12
    //     0x3a5620: ldr          r1, [r1, #0x5d8]
    // 0x3a5624: r0 = call 0x399e40
    //     0x3a5624: bl           0x399e40
    // 0x3a5628: r3 = r0
    //     0x3a5628: mov          r3, r0
    //     0x3a562c: ldur         r0, [fp, #-0x10]
    //     0x3a5630: stur         r3, [fp, #-0x40]
    // 0x3a5634: StoreField: r3->field_13 = r0
    //     0x3a5634: stur         r0, [r3, #0x13]
    // 0x3a5638: r0 = pp[0x3b2]
    //     0x3a5638: add          r0, PP, #0x12, lsl #12
    //     0x3a563c: ldr          r0, [r0, #0x3a0]
    // 0x3a5640: ArrayStore: r3[0] = r0  ; List_8
    //     0x3a5640: stur         r0, [r3, #0x17]
    //     0x3a5644: ldur         r0, [fp, #-0x60]
    // 0x3a5648: StoreField: r3->field_b = r0
    //     0x3a5648: stur         r0, [r3, #0xb]
    // 0x3a564c: r1 = NULL
    //     0x3a564c: mov          r1, NULL
    //     0x3a5650: mov          r2, #6
    // 0x3a5654: r0 = call 0x61f920
    //     0x3a5654: bl           0x61f920
    // 0x3a5658: r2 = r0
    //     0x3a5658: mov          r2, r0
    //     0x3a565c: ldur         r0, [fp, #-0x58]
    //     0x3a5660: stur         r2, [fp, #-0x10]
    // 0x3a5664: StoreField: r2->field_f = r0
    //     0x3a5664: stur         r0, [r2, #0xf]
    //     0x3a5668: ldur         r0, [fp, #-0x50]
    // 0x3a566c: StoreField: r2->field_13 = r0
    //     0x3a566c: stur         r0, [r2, #0x13]
    //     0x3a5670: ldur         r0, [fp, #-0x40]
    // 0x3a5674: ArrayStore: r2[0] = r0  ; List_8
    //     0x3a5674: stur         r0, [r2, #0x17]
    // 0x3a5678: r1 = pp[0x5c58]
    //     0x3a5678: ldr          r1, [PP, #0x5c58]
    // 0x3a567c: r0 = call 0x61e854
    //     0x3a567c: bl           0x61e854
    // 0x3a5680: r1 = r0
    //     0x3a5680: mov          r1, r0
    //     0x3a5684: ldur         r0, [fp, #-0x10]
    //     0x3a5688: stur         r1, [fp, #-0x40]
    // 0x3a568c: StoreField: r1->field_f = r0
    //     0x3a568c: stur         r0, [r1, #0xf]
    //     0x3a5690: mov          r2, #6
    // 0x3a5694: StoreField: r1->field_b = r2
    //     0x3a5694: stur         r2, [r1, #0xb]
    // 0x3a5698: r0 = call 0x39e6f4
    //     0x3a5698: bl           0x39e6f4
    // 0x3a569c: r1 = r0
    //     0x3a569c: mov          r1, r0
    // 0x3a56a0: r0 = pp[0xf0e]
    //     0x3a56a0: add          r0, PP, #0xe, lsl #12
    //     0x3a56a4: ldr          r0, [r0, #0xf00]
    //     0x3a56a8: stur         r1, [fp, #-0x10]
    // 0x3a56ac: StoreField: r1->field_f = r0
    //     0x3a56ac: stur         r0, [r1, #0xf]
    // 0x3a56b0: r0 = pp[0xf16]
    //     0x3a56b0: add          r0, PP, #0xe, lsl #12
    //     0x3a56b4: ldr          r0, [r0, #0xf08]
    // 0x3a56b8: ArrayStore: r1[0] = r0  ; List_8
    //     0x3a56b8: stur         r0, [r1, #0x17]
    // 0x3a56bc: r0 = pp[0xf1e]
    //     0x3a56bc: add          r0, PP, #0xe, lsl #12
    //     0x3a56c0: ldr          r0, [r0, #0xf10]
    // 0x3a56c4: StoreField: r1->field_1b = r0
    //     0x3a56c4: stur         r0, [r1, #0x1b]
    //     0x3a56c8: ldur         r0, [fp, #-0x40]
    // 0x3a56cc: StoreField: r1->field_b = r0
    //     0x3a56cc: stur         r0, [r1, #0xb]
    // 0x3a56d0: r0 = call 0x3949ec
    //     0x3a56d0: bl           0x3949ec
    // 0x3a56d4: r3 = r0
    //     0x3a56d4: mov          r3, r0
    // 0x3a56d8: r0 = pp[0xbc7]
    //     0x3a56d8: add          r0, PP, #0xf, lsl #12
    //     0x3a56dc: ldr          r0, [r0, #0xbb8]
    //     0x3a56e0: stur         r3, [fp, #-0x40]
    // 0x3a56e4: StoreField: r3->field_13 = r0
    //     0x3a56e4: stur         r0, [r3, #0x13]
    // 0x3a56e8: r1 = NULL
    //     0x3a56e8: mov          r1, NULL
    //     0x3a56ec: mov          r2, #2
    // 0x3a56f0: r0 = call 0x61f920
    //     0x3a56f0: bl           0x61f920
    // 0x3a56f4: r2 = r0
    //     0x3a56f4: mov          r2, r0
    //     0x3a56f8: ldur         r0, [fp, #-0x38]
    //     0x3a56fc: stur         r2, [fp, #-0x48]
    // 0x3a5700: StoreField: r2->field_f = r0
    //     0x3a5700: stur         r0, [r2, #0xf]
    // 0x3a5704: r1 = pp[0x868]
    //     0x3a5704: ldr          r1, [PP, #0x868]
    // 0x3a5708: r0 = call 0x61e854
    //     0x3a5708: bl           0x61e854
    // 0x3a570c: r1 = r0
    //     0x3a570c: mov          r1, r0
    //     0x3a5710: ldur         r0, [fp, #-0x48]
    // 0x3a5714: StoreField: r1->field_f = r0
    //     0x3a5714: stur         r0, [r1, #0xf]
    //     0x3a5718: mov          r0, #2
    // 0x3a571c: StoreField: r1->field_b = r0
    //     0x3a571c: stur         r0, [r1, #0xb]
    //     0x3a5720: str          r1, [SP]
    // 0x3a5724: r1 = pp[0x954]
    //     0x3a5724: add          r1, PP, #0xc, lsl #12
    //     0x3a5728: ldr          r1, [r1, #0x948]
    // 0x3a572c: r4 = pp[0xf2f]
    //     0x3a572c: add          r4, PP, #0xf, lsl #12
    //     0x3a5730: ldr          r4, [r4, #0xf20]
    // 0x3a5734: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3a5734: bl           0x3a1dcc
    //     0x3a5738: stur         r0, [fp, #-0x48]
    // 0x3a573c: r0 = call 0x3a67f0
    //     0x3a573c: bl           0x3a67f0
    // 0x3a5740: r3 = r0
    //     0x3a5740: mov          r3, r0
    // 0x3a5744: r0 = pp[0x40]
    //     0x3a5744: ldr          r0, [PP, #0x40]
    //     0x3a5748: stur         r3, [fp, #-0x50]
    // 0x3a574c: StoreField: r3->field_f = r0
    //     0x3a574c: stur         r0, [r3, #0xf]
    // 0x3a5750: r1 = pp[0xb87]
    //     0x3a5750: add          r1, PP, #0xf, lsl #12
    //     0x3a5754: ldr          r1, [r1, #0xb78]
    //     0x3a5758: mov          r2, #0
    // 0x3a575c: r0 = dart_core__GrowableList::factory_ctor()
    //     0x3a575c: bl           0x277268
    //     0x3a5760: ldur         r1, [fp, #-0x50]
    // 0x3a5764: StoreField: r1->field_13 = r0
    //     0x3a5764: stur         r0, [r1, #0x13]
    //     0x3a5768: ldurb        r16, [r1, #-1]
    //     0x3a576c: ldurb        r17, [r0, #-1]
    //     0x3a5770: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3a5774: tst          BARRIER, HEAP, lsr #32
    // 0x3a5778: b.eq 0x3a5780
    //     0x3a5778: b.eq         0x3a5780
    // 0x3a577c: r0 = call 0x61e04c
    //     0x3a577c: bl           0x61e04c
    //     0x3a5780: ldur         r0, [fp, #-0x48]
    // 0x3a5784: StoreField: r1->field_7 = r0
    //     0x3a5784: stur         r0, [r1, #7]
    //     0x3a5788: ldurb        r16, [r1, #-1]
    //     0x3a578c: ldurb        r17, [r0, #-1]
    //     0x3a5790: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3a5794: tst          BARRIER, HEAP, lsr #32
    // 0x3a5798: b.eq 0x3a57a0
    //     0x3a5798: b.eq         0x3a57a0
    // 0x3a579c: r0 = call 0x61e04c
    //     0x3a579c: bl           0x61e04c
    //     0x3a57a0: ldur         r0, [fp, #-0x38]
    // 0x3a57a4: StoreField: r1->field_b = r0
    //     0x3a57a4: stur         r0, [r1, #0xb]
    //     0x3a57a8: ldurb        r16, [r1, #-1]
    //     0x3a57ac: ldurb        r17, [r0, #-1]
    //     0x3a57b0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3a57b4: tst          BARRIER, HEAP, lsr #32
    // 0x3a57b8: b.eq 0x3a57c0
    //     0x3a57b8: b.eq         0x3a57c0
    // 0x3a57bc: r0 = call 0x61e04c
    //     0x3a57bc: bl           0x61e04c
    //     0x3a57c0: ldur         BARRIER, [fp, #-0x30]
    //     0x3a57c4: ldur         lr, [fp, #-0x28]
    //     0x3a57c8: stp          lr, BARRIER, [SP]
    // 0x3a57cc: r4 = pp[0xb97]
    //     0x3a57cc: add          r4, PP, #0xf, lsl #12
    //     0x3a57d0: ldr          r4, [r4, #0xb88]
    // 0x3a57d4: r0 = soul_flutter_international$common$utils$highlight_text_util_HighlightTextParser::parser()
    //     0x3a57d4: bl           0x3a5b48
    //     0x3a57d8: stur         r0, [fp, #-0x28]
    // 0x3a57dc: r0 = call 0x393bf8
    //     0x3a57dc: bl           0x393bf8
    // 0x3a57e0: r1 = r0
    //     0x3a57e0: mov          r1, r0
    //     0x3a57e4: ldur         r0, [fp, #-0x28]
    //     0x3a57e8: stur         r1, [fp, #-0x30]
    // 0x3a57ec: StoreField: r1->field_f = r0
    //     0x3a57ec: stur         r0, [r1, #0xf]
    // 0x3a57f0: r0 = pp[0x53a8]
    //     0x3a57f0: ldr          r0, [PP, #0x53a8]
    // 0x3a57f4: StoreField: r1->field_1b = r0
    //     0x3a57f4: stur         r0, [r1, #0x1b]
    // 0x3a57f8: r0 = call 0x391c0c
    //     0x3a57f8: bl           0x391c0c
    // 0x3a57fc: r1 = r0
    //     0x3a57fc: mov          r1, r0
    // 0x3a5800: r0 = pp[0x3ba]
    //     0x3a5800: add          r0, PP, #0x12, lsl #12
    //     0x3a5804: ldr          r0, [r0, #0x3a8]
    //     0x3a5808: stur         r1, [fp, #-0x28]
    // 0x3a580c: StoreField: r1->field_f = r0
    //     0x3a580c: stur         r0, [r1, #0xf]
    //     0x3a5810: ldur         r0, [fp, #-0x30]
    // 0x3a5814: StoreField: r1->field_b = r0
    //     0x3a5814: stur         r0, [r1, #0xb]
    // 0x3a5818: r0 = call 0x3949ec
    //     0x3a5818: bl           0x3949ec
    // 0x3a581c: r1 = r0
    //     0x3a581c: mov          r1, r0
    // 0x3a5820: r0 = pp[0xb9f]
    //     0x3a5820: add          r0, PP, #0xf, lsl #12
    //     0x3a5824: ldr          r0, [r0, #0xb90]
    //     0x3a5828: stur         r1, [fp, #-0x30]
    // 0x3a582c: StoreField: r1->field_13 = r0
    //     0x3a582c: stur         r0, [r1, #0x13]
    // 0x3a5830: r0 = call 0x3a142c
    //     0x3a5830: bl           0x3a142c
    // 0x3a5834: r1 = r0
    //     0x3a5834: mov          r1, r0
    // 0x3a5838: r0 = pp[0x257]
    //     0x3a5838: add          r0, PP, #0xf, lsl #12
    //     0x3a583c: ldr          r0, [r0, #0x248]
    //     0x3a5840: stur         r1, [fp, #-0x38]
    // 0x3a5844: StoreField: r1->field_b = r0
    //     0x3a5844: stur         r0, [r1, #0xb]
    // 0x3a5848: r0 = pp[0x17f]
    //     0x3a5848: add          r0, PP, #0xf, lsl #12
    //     0x3a584c: ldr          r0, [r0, #0x170]
    // 0x3a5850: StoreField: r1->field_f = r0
    //     0x3a5850: stur         r0, [r1, #0xf]
    // 0x3a5854: r0 = pp[0x3c2]
    //     0x3a5854: add          r0, PP, #0x12, lsl #12
    //     0x3a5858: ldr          r0, [r0, #0x3b0]
    // 0x3a585c: StoreField: r1->field_13 = r0
    //     0x3a585c: stur         r0, [r1, #0x13]
    // 0x3a5860: ArrayStore: r1[0] = r0  ; List_8
    //     0x3a5860: stur         r0, [r1, #0x17]
    // 0x3a5864: r0 = call 0x3949ec
    //     0x3a5864: bl           0x3949ec
    // 0x3a5868: r1 = r0
    //     0x3a5868: mov          r1, r0
    // 0x3a586c: r0 = pp[0x34a]
    //     0x3a586c: add          r0, PP, #0x12, lsl #12
    //     0x3a5870: ldr          r0, [r0, #0x338]
    //     0x3a5874: stur         r1, [fp, #-0x50]
    // 0x3a5878: StoreField: r1->field_f = r0
    //     0x3a5878: stur         r0, [r1, #0xf]
    //     0x3a587c: ldur         r0, [fp, #-8]
    // 0x3a5880: LoadField: r2 = r0->field_b
    //     0x3a5880: ldur         r2, [r0, #0xb]
    //     0x3a5884: add          r2, r2, HEAP, lsl #32
    //     0x3a5888: stur         r2, [fp, #-0x48]
    // 0x3a588c: r0 = call 0x393bf8
    //     0x3a588c: bl           0x393bf8
    // 0x3a5890: r1 = r0
    //     0x3a5890: mov          r1, r0
    //     0x3a5894: ldur         r0, [fp, #-0x48]
    //     0x3a5898: stur         r1, [fp, #-0x58]
    // 0x3a589c: StoreField: r1->field_b = r0
    //     0x3a589c: stur         r0, [r1, #0xb]
    //     0x3a58a0: ldur         r0, [fp, #-0x20]
    // 0x3a58a4: StoreField: r1->field_13 = r0
    //     0x3a58a4: stur         r0, [r1, #0x13]
    // 0x3a58a8: r0 = call 0x391a04
    //     0x3a58a8: bl           0x391a04
    //     0x3a58ac: stur         r0, [fp, #-0x20]
    //     0x3a58b0: ldur         BARRIER, [fp, #-0x58]
    //     0x3a58b4: str          BARRIER, [SP]
    // 0x3a58b8: r1 = r0
    //     0x3a58b8: mov          r1, r0
    // 0x3a58bc: r4 = pp[0x204]
    //     0x3a58bc: add          r4, PP, #0xc, lsl #12
    //     0x3a58c0: ldr          r4, [r4, #0x1f8]
    // 0x3a58c4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a58c4: bl           0x391490
    // 0x3a58c8: r1 = NULL
    //     0x3a58c8: mov          r1, NULL
    //     0x3a58cc: mov          r2, #6
    // 0x3a58d0: r0 = call 0x61f920
    //     0x3a58d0: bl           0x61f920
    // 0x3a58d4: r2 = r0
    //     0x3a58d4: mov          r2, r0
    //     0x3a58d8: ldur         r0, [fp, #-0x38]
    //     0x3a58dc: stur         r2, [fp, #-0x48]
    // 0x3a58e0: StoreField: r2->field_f = r0
    //     0x3a58e0: stur         r0, [r2, #0xf]
    //     0x3a58e4: ldur         r0, [fp, #-0x50]
    // 0x3a58e8: StoreField: r2->field_13 = r0
    //     0x3a58e8: stur         r0, [r2, #0x13]
    //     0x3a58ec: ldur         r0, [fp, #-0x20]
    // 0x3a58f0: ArrayStore: r2[0] = r0  ; List_8
    //     0x3a58f0: stur         r0, [r2, #0x17]
    // 0x3a58f4: r1 = pp[0x5c58]
    //     0x3a58f4: ldr          r1, [PP, #0x5c58]
    // 0x3a58f8: r0 = call 0x61e854
    //     0x3a58f8: bl           0x61e854
    // 0x3a58fc: r1 = r0
    //     0x3a58fc: mov          r1, r0
    //     0x3a5900: ldur         r0, [fp, #-0x48]
    //     0x3a5904: stur         r1, [fp, #-0x20]
    // 0x3a5908: StoreField: r1->field_f = r0
    //     0x3a5908: stur         r0, [r1, #0xf]
    //     0x3a590c: mov          r0, #6
    // 0x3a5910: StoreField: r1->field_b = r0
    //     0x3a5910: stur         r0, [r1, #0xb]
    // 0x3a5914: r0 = call 0x3a1414
    //     0x3a5914: bl           0x3a1414
    // 0x3a5918: r1 = r0
    //     0x3a5918: mov          r1, r0
    // 0x3a591c: r0 = pp[0x5140]
    //     0x3a591c: ldr          r0, [PP, #0x5140]
    //     0x3a5920: stur         r1, [fp, #-0x38]
    // 0x3a5924: StoreField: r1->field_f = r0
    //     0x3a5924: stur         r0, [r1, #0xf]
    // 0x3a5928: r0 = pp[0x297]
    //     0x3a5928: add          r0, PP, #0xf, lsl #12
    //     0x3a592c: ldr          r0, [r0, #0x288]
    // 0x3a5930: StoreField: r1->field_13 = r0
    //     0x3a5930: stur         r0, [r1, #0x13]
    // 0x3a5934: r0 = pp[0xaf6]
    //     0x3a5934: add          r0, PP, #0xe, lsl #12
    //     0x3a5938: ldr          r0, [r0, #0xae8]
    // 0x3a593c: ArrayStore: r1[0] = r0  ; List_8
    //     0x3a593c: stur         r0, [r1, #0x17]
    // 0x3a5940: r2 = pp[0xb6e]
    //     0x3a5940: add          r2, PP, #0xe, lsl #12
    //     0x3a5944: ldr          r2, [r2, #0xb60]
    // 0x3a5948: StoreField: r1->field_1b = r2
    //     0x3a5948: stur         r2, [r1, #0x1b]
    // 0x3a594c: r3 = pp[0xb06]
    //     0x3a594c: add          r3, PP, #0xe, lsl #12
    //     0x3a5950: ldr          r3, [r3, #0xaf8]
    // 0x3a5954: StoreField: r1->field_23 = r3
    //     0x3a5954: stur         r3, [r1, #0x23]
    // 0x3a5958: r4 = pp[0xb2]
    //     0x3a5958: add          r4, PP, #0xa, lsl #12
    //     0x3a595c: ldr          r4, [r4, #0xa8]
    // 0x3a5960: StoreField: r1->field_2b = r4
    //     0x3a5960: stur         r4, [r1, #0x2b]
    // 0x3a5964: StoreField: r1->field_2f = xzr
    //     0x3a5964: stur         xzr, [r1, #0x2f]
    //     0x3a5968: ldur         r5, [fp, #-0x20]
    // 0x3a596c: StoreField: r1->field_b = r5
    //     0x3a596c: stur         r5, [r1, #0xb]
    // 0x3a5970: r0 = call 0x391a04
    //     0x3a5970: bl           0x391a04
    //     0x3a5974: stur         r0, [fp, #-0x20]
    //     0x3a5978: ldur         BARRIER, [fp, #-0x38]
    //     0x3a597c: str          BARRIER, [SP]
    // 0x3a5980: r1 = r0
    //     0x3a5980: mov          r1, r0
    // 0x3a5984: r4 = pp[0x204]
    //     0x3a5984: add          r4, PP, #0xc, lsl #12
    //     0x3a5988: ldr          r4, [r4, #0x1f8]
    // 0x3a598c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a598c: bl           0x391490
    // 0x3a5990: r0 = call 0x3949ec
    //     0x3a5990: bl           0x3949ec
    // 0x3a5994: r3 = r0
    //     0x3a5994: mov          r3, r0
    // 0x3a5998: r0 = pp[0xb5e]
    //     0x3a5998: add          r0, PP, #0xe, lsl #12
    //     0x3a599c: ldr          r0, [r0, #0xb50]
    //     0x3a59a0: stur         r3, [fp, #-0x48]
    // 0x3a59a4: StoreField: r3->field_13 = r0
    //     0x3a59a4: stur         r0, [r3, #0x13]
    //     0x3a59a8: ldur         r0, [fp, #-8]
    // 0x3a59ac: LoadField: r4 = r0->field_27
    //     0x3a59ac: ldur         r4, [r0, #0x27]
    //     0x3a59b0: add          r4, r4, HEAP, lsl #32
    //     0x3a59b4: ldur         r2, [fp, #-0x18]
    //     0x3a59b8: stur         r4, [fp, #-0x38]
    // 0x3a59bc: r1 = pp[0x3ca]
    //     0x3a59bc: add          r1, PP, #0x12, lsl #12
    //     0x3a59c0: ldr          r1, [r1, #0x3b8]
    // 0x3a59c4: r0 = call 0x61ec54
    //     0x3a59c4: bl           0x61ec54
    // 0x3a59c8: BARRIER = pp[0x3d2]
    //     0x3a59c8: add          BARRIER, PP, #0x12, lsl #12
    //     0x3a59cc: ldr          BARRIER, [BARRIER, #0x3c0]
    //     0x3a59d0: ldur         lr, [fp, #-0x38]
    //     0x3a59d4: stp          lr, BARRIER, [SP, #8]
    //     0x3a59d8: str          r0, [SP]
    // 0x3a59dc: r4 = pp[0x58]
    //     0x3a59dc: ldr          r4, [PP, #0x58]
    // 0x3a59e0: r0 = dart_collection_ListBase::map()
    //     0x3a59e0: bl           0x3bd500
    // 0x3a59e4: LoadField: r1 = r0->field_7
    //     0x3a59e4: ldur         r1, [r0, #7]
    //     0x3a59e8: add          r1, r1, HEAP, lsl #32
    // 0x3a59ec: r2 = r0
    //     0x3a59ec: mov          r2, r0
    // 0x3a59f0: r0 = dart_core__GrowableList::factory_ctor_of()
    //     0x3a59f0: bl           0x276db0
    //     0x3a59f4: stur         r0, [fp, #-8]
    // 0x3a59f8: r0 = call 0x39310c
    //     0x3a59f8: bl           0x39310c
    // 0x3a59fc: r3 = r0
    //     0x3a59fc: mov          r3, r0
    // 0x3a5a00: r0 = pp[0x862]
    //     0x3a5a00: add          r0, PP, #0xa, lsl #12
    //     0x3a5a04: ldr          r0, [r0, #0x858]
    //     0x3a5a08: stur         r3, [fp, #-0x18]
    // 0x3a5a0c: StoreField: r3->field_f = r0
    //     0x3a5a0c: stur         r0, [r3, #0xf]
    // 0x3a5a10: r4 = pp[0xaee]
    //     0x3a5a10: add          r4, PP, #0xe, lsl #12
    //     0x3a5a14: ldr          r4, [r4, #0xae0]
    // 0x3a5a18: StoreField: r3->field_13 = r4
    //     0x3a5a18: stur         r4, [r3, #0x13]
    // 0x3a5a1c: r5 = pp[0xaf6]
    //     0x3a5a1c: add          r5, PP, #0xe, lsl #12
    //     0x3a5a20: ldr          r5, [r5, #0xae8]
    // 0x3a5a24: ArrayStore: r3[0] = r5  ; List_8
    //     0x3a5a24: stur         r5, [r3, #0x17]
    // 0x3a5a28: r6 = pp[0xb6e]
    //     0x3a5a28: add          r6, PP, #0xe, lsl #12
    //     0x3a5a2c: ldr          r6, [r6, #0xb60]
    // 0x3a5a30: StoreField: r3->field_1b = r6
    //     0x3a5a30: stur         r6, [r3, #0x1b]
    // 0x3a5a34: r7 = pp[0xb06]
    //     0x3a5a34: add          r7, PP, #0xe, lsl #12
    //     0x3a5a38: ldr          r7, [r7, #0xaf8]
    // 0x3a5a3c: StoreField: r3->field_23 = r7
    //     0x3a5a3c: stur         r7, [r3, #0x23]
    // 0x3a5a40: r8 = pp[0xb2]
    //     0x3a5a40: add          r8, PP, #0xa, lsl #12
    //     0x3a5a44: ldr          r8, [r8, #0xa8]
    // 0x3a5a48: StoreField: r3->field_2b = r8
    //     0x3a5a48: stur         r8, [r3, #0x2b]
    // 0x3a5a4c: StoreField: r3->field_2f = xzr
    //     0x3a5a4c: stur         xzr, [r3, #0x2f]
    //     0x3a5a50: ldur         r1, [fp, #-8]
    // 0x3a5a54: StoreField: r3->field_b = r1
    //     0x3a5a54: stur         r1, [r3, #0xb]
    // 0x3a5a58: r1 = NULL
    //     0x3a5a58: mov          r1, NULL
    //     0x3a5a5c: mov          r2, #0xe
    // 0x3a5a60: r0 = call 0x61f920
    //     0x3a5a60: bl           0x61f920
    // 0x3a5a64: r2 = r0
    //     0x3a5a64: mov          r2, r0
    //     0x3a5a68: ldur         r0, [fp, #-0x10]
    //     0x3a5a6c: stur         r2, [fp, #-8]
    // 0x3a5a70: StoreField: r2->field_f = r0
    //     0x3a5a70: stur         r0, [r2, #0xf]
    //     0x3a5a74: ldur         r0, [fp, #-0x40]
    // 0x3a5a78: StoreField: r2->field_13 = r0
    //     0x3a5a78: stur         r0, [r2, #0x13]
    //     0x3a5a7c: ldur         r0, [fp, #-0x28]
    // 0x3a5a80: ArrayStore: r2[0] = r0  ; List_8
    //     0x3a5a80: stur         r0, [r2, #0x17]
    //     0x3a5a84: ldur         r0, [fp, #-0x30]
    // 0x3a5a88: StoreField: r2->field_1b = r0
    //     0x3a5a88: stur         r0, [r2, #0x1b]
    //     0x3a5a8c: ldur         r0, [fp, #-0x20]
    // 0x3a5a90: StoreField: r2->field_1f = r0
    //     0x3a5a90: stur         r0, [r2, #0x1f]
    //     0x3a5a94: ldur         r0, [fp, #-0x48]
    // 0x3a5a98: StoreField: r2->field_23 = r0
    //     0x3a5a98: stur         r0, [r2, #0x23]
    //     0x3a5a9c: ldur         r0, [fp, #-0x18]
    // 0x3a5aa0: StoreField: r2->field_27 = r0
    //     0x3a5aa0: stur         r0, [r2, #0x27]
    // 0x3a5aa4: r1 = pp[0x5c58]
    //     0x3a5aa4: ldr          r1, [PP, #0x5c58]
    // 0x3a5aa8: r0 = call 0x61e854
    //     0x3a5aa8: bl           0x61e854
    // 0x3a5aac: r1 = r0
    //     0x3a5aac: mov          r1, r0
    //     0x3a5ab0: ldur         r0, [fp, #-8]
    //     0x3a5ab4: stur         r1, [fp, #-0x10]
    // 0x3a5ab8: StoreField: r1->field_f = r0
    //     0x3a5ab8: stur         r0, [r1, #0xf]
    //     0x3a5abc: mov          r0, #0xe
    // 0x3a5ac0: StoreField: r1->field_b = r0
    //     0x3a5ac0: stur         r0, [r1, #0xb]
    // 0x3a5ac4: r0 = call 0x39310c
    //     0x3a5ac4: bl           0x39310c
    // 0x3a5ac8: r1 = pp[0x862]
    //     0x3a5ac8: add          r1, PP, #0xa, lsl #12
    //     0x3a5acc: ldr          r1, [r1, #0x858]
    // 0x3a5ad0: StoreField: r0->field_f = r1
    //     0x3a5ad0: stur         r1, [r0, #0xf]
    // 0x3a5ad4: r1 = pp[0xaee]
    //     0x3a5ad4: add          r1, PP, #0xe, lsl #12
    //     0x3a5ad8: ldr          r1, [r1, #0xae0]
    // 0x3a5adc: StoreField: r0->field_13 = r1
    //     0x3a5adc: stur         r1, [r0, #0x13]
    // 0x3a5ae0: r1 = pp[0xaf6]
    //     0x3a5ae0: add          r1, PP, #0xe, lsl #12
    //     0x3a5ae4: ldr          r1, [r1, #0xae8]
    // 0x3a5ae8: ArrayStore: r0[0] = r1  ; List_8
    //     0x3a5ae8: stur         r1, [r0, #0x17]
    // 0x3a5aec: r1 = pp[0xb6e]
    //     0x3a5aec: add          r1, PP, #0xe, lsl #12
    //     0x3a5af0: ldr          r1, [r1, #0xb60]
    // 0x3a5af4: StoreField: r0->field_1b = r1
    //     0x3a5af4: stur         r1, [r0, #0x1b]
    // 0x3a5af8: r1 = pp[0xb06]
    //     0x3a5af8: add          r1, PP, #0xe, lsl #12
    //     0x3a5afc: ldr          r1, [r1, #0xaf8]
    // 0x3a5b00: StoreField: r0->field_23 = r1
    //     0x3a5b00: stur         r1, [r0, #0x23]
    // 0x3a5b04: r1 = pp[0xb2]
    //     0x3a5b04: add          r1, PP, #0xa, lsl #12
    //     0x3a5b08: ldr          r1, [r1, #0xa8]
    // 0x3a5b0c: StoreField: r0->field_2b = r1
    //     0x3a5b0c: stur         r1, [r0, #0x2b]
    // 0x3a5b10: StoreField: r0->field_2f = xzr
    //     0x3a5b10: stur         xzr, [r0, #0x2f]
    //     0x3a5b14: ldur         r1, [fp, #-0x10]
    // 0x3a5b18: StoreField: r0->field_b = r1
    //     0x3a5b18: stur         r1, [r0, #0xb]
    // 0x3a5b1c: SP = fp
    //     0x3a5b1c: mov          SP, fp
    // 0x3a5b20: LeaveFrame
    //     0x3a5b20: ldp          fp, lr, [SP], #0x10
    // 0x3a5b24: ret
    //     0x3a5b24: ret          
    // 0x3a5b28: r0 = call 0x61fa28
    //     0x3a5b28: bl           0x61fa28
    // 0x3a5b2c: b 0x3a52d0
    //     0x3a5b2c: b            0x3a52d0
    //     0x3a5b30: str          q0, [SP, #-0x10]!
    //     0x3a5b34: str          r2, [SP, #-8]!
    // 0x3a5b38: r0 = call 0x61f878
    //     0x3a5b38: bl           0x61f878
    //     0x3a5b3c: ldr          r2, [SP], #8
    //     0x3a5b40: ldr          q0, [SP], #0x10
    // 0x3a5b44: b 0x3a5614
    //     0x3a5b44: b            0x3a5614
  }

  _anon_closure() {
    // ** addr: 0x3a87b8, size: 0x3d0
    // 0x3a87b8: EnterFrame
    //     0x3a87b8: stp          fp, lr, [SP, #-0x10]!
    //     0x3a87bc: mov          fp, SP
    // 0x3a87c0: AllocStack(0x58)
    //     0x3a87c0: sub          SP, SP, #0x58
    //     0x3a87c4: ldr          r0, [fp, #0x18]
    // 0x3a87c8: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x3a87c8: ldur         r1, [r0, #0x17]
    //     0x3a87cc: add          r1, r1, HEAP, lsl #32
    //     0x3a87d0: stur         r1, [fp, #-8]
    // 0x3a87d4: CheckStackOverflow
    //     0x3a87d4: ldr          BARRIER, [THR, #0x38]
    //     0x3a87d8: cmp          SP, BARRIER
    //     0x3a87dc: b.ls         0x3a8b80
    //     0x3a87e0: mov          r1, #1
    // 0x3a87e4: r0 = call 0x61e890
    //     0x3a87e4: bl           0x61e890
    // 0x3a87e8: r1 = r0
    //     0x3a87e8: mov          r1, r0
    //     0x3a87ec: ldur         r0, [fp, #-8]
    //     0x3a87f0: stur         r1, [fp, #-0x10]
    // 0x3a87f4: StoreField: r1->field_b = r0
    //     0x3a87f4: stur         r0, [r1, #0xb]
    //     0x3a87f8: ldr          r2, [fp, #0x10]
    // 0x3a87fc: StoreField: r1->field_f = r2
    //     0x3a87fc: stur         r2, [r1, #0xf]
    // 0x3a8800: r0 = call 0x2e3578
    //     0x3a8800: bl           0x2e3578
    // 0x3a8804: d0 = pp[0x3da]
    //     0x3a8804: add          r17, PP, #0x12, lsl #12
    //     0x3a8808: ldr          d0, [r17, #0x3c8]
    //     0x3a880c: stur         r0, [fp, #-0x18]
    // 0x3a8810: StoreField: r0->field_7 = d0
    //     0x3a8810: stur         d0, [r0, #7]
    // 0x3a8814: StoreField: r0->field_f = xzr
    //     0x3a8814: stur         xzr, [r0, #0xf]
    // 0x3a8818: ArrayStore: r0[0] = d0  ; List_8
    //     0x3a8818: stur         d0, [r0, #0x17]
    //     0x3a881c: fmov         d0, #10.00000000
    // 0x3a8820: StoreField: r0->field_1f = d0
    //     0x3a8820: stur         d0, [r0, #0x1f]
    // 0x3a8824: r0 = call 0x352b04
    //     0x3a8824: bl           0x352b04
    //     0x3a8828: fmov         d0, #13.50000000
    //     0x3a882c: stur         r0, [fp, #-0x20]
    // 0x3a8830: StoreField: r0->field_7 = d0
    //     0x3a8830: stur         d0, [r0, #7]
    // 0x3a8834: StoreField: r0->field_f = d0
    //     0x3a8834: stur         d0, [r0, #0xf]
    // 0x3a8838: r0 = call 0x392f28
    //     0x3a8838: bl           0x392f28
    // 0x3a883c: r1 = r0
    //     0x3a883c: mov          r1, r0
    //     0x3a8840: ldur         r0, [fp, #-0x20]
    //     0x3a8844: stur         r1, [fp, #-0x28]
    // 0x3a8848: StoreField: r1->field_7 = r0
    //     0x3a8848: stur         r0, [r1, #7]
    // 0x3a884c: StoreField: r1->field_b = r0
    //     0x3a884c: stur         r0, [r1, #0xb]
    // 0x3a8850: StoreField: r1->field_f = r0
    //     0x3a8850: stur         r0, [r1, #0xf]
    // 0x3a8854: StoreField: r1->field_13 = r0
    //     0x3a8854: stur         r0, [r1, #0x13]
    // 0x3a8858: r0 = call 0x31d844
    //     0x3a8858: bl           0x31d844
    // 0x3a885c: r1 = r0
    //     0x3a885c: mov          r1, r0
    // 0x3a8860: r0 = pp[0x6310]
    //     0x3a8860: ldr          r0, [PP, #0x6310]
    // 0x3a8864: StoreField: r1->field_27 = r0
    //     0x3a8864: stur         r0, [r1, #0x27]
    //     0x3a8868: fmov         d0, #1.00000000
    // 0x3a886c: StoreField: r1->field_7 = d0
    //     0x3a886c: stur         d0, [r1, #7]
    // 0x3a8870: d0 = pp[0xae0]
    //     0x3a8870: add          r17, PP, #0x10, lsl #12
    //     0x3a8874: ldr          d0, [r17, #0xad0]
    // 0x3a8878: StoreField: r1->field_f = d0
    //     0x3a8878: stur         d0, [r1, #0xf]
    // 0x3a887c: d0 = pp[0xae8]
    //     0x3a887c: add          r17, PP, #0x10, lsl #12
    //     0x3a8880: ldr          d0, [r17, #0xad8]
    // 0x3a8884: ArrayStore: r1[0] = d0  ; List_8
    //     0x3a8884: stur         d0, [r1, #0x17]
    // 0x3a8888: d0 = pp[0xaf0]
    //     0x3a8888: add          r17, PP, #0x10, lsl #12
    //     0x3a888c: ldr          d0, [r17, #0xae0]
    // 0x3a8890: StoreField: r1->field_1f = d0
    //     0x3a8890: stur         d0, [r1, #0x1f]
    // 0x3a8894: BARRIER = pp[0x53a0]
    //     0x3a8894: ldr          BARRIER, [PP, #0x53a0]
    //     0x3a8898: str          BARRIER, [SP]
    // 0x3a889c: r2 = r1
    //     0x3a889c: mov          r2, r1
    // 0x3a88a0: r1 = NULL
    //     0x3a88a0: mov          r1, NULL
    // 0x3a88a4: r4 = pp[0x827]
    //     0x3a88a4: add          r4, PP, #0xf, lsl #12
    //     0x3a88a8: ldr          r4, [r4, #0x818]
    // 0x3a88ac: r0 = flutter$src$painting$box_border_Border::factory_ctor_all()
    //     0x3a88ac: bl           0x391e08
    //     0x3a88b0: stur         r0, [fp, #-0x20]
    // 0x3a88b4: r0 = call 0x391dd8
    //     0x3a88b4: bl           0x391dd8
    // 0x3a88b8: r1 = r0
    //     0x3a88b8: mov          r1, r0
    //     0x3a88bc: ldur         r0, [fp, #-0x20]
    //     0x3a88c0: stur         r1, [fp, #-0x30]
    // 0x3a88c4: StoreField: r1->field_f = r0
    //     0x3a88c4: stur         r0, [r1, #0xf]
    //     0x3a88c8: ldur         r0, [fp, #-0x28]
    // 0x3a88cc: StoreField: r1->field_13 = r0
    //     0x3a88cc: stur         r0, [r1, #0x13]
    // 0x3a88d0: r0 = pp[0xb86]
    //     0x3a88d0: add          r0, PP, #0xe, lsl #12
    //     0x3a88d4: ldr          r0, [r0, #0xb78]
    // 0x3a88d8: StoreField: r1->field_23 = r0
    //     0x3a88d8: stur         r0, [r1, #0x23]
    // 0x3a88dc: r0 = call 0x2e3578
    //     0x3a88dc: bl           0x2e3578
    // 0x3a88e0: r3 = r0
    //     0x3a88e0: mov          r3, r0
    //     0x3a88e4: fmov         d0, #16.00000000
    //     0x3a88e8: stur         r3, [fp, #-0x28]
    // 0x3a88ec: StoreField: r3->field_7 = d0
    //     0x3a88ec: stur         d0, [r3, #7]
    // 0x3a88f0: StoreField: r3->field_f = xzr
    //     0x3a88f0: stur         xzr, [r3, #0xf]
    // 0x3a88f4: ArrayStore: r3[0] = xzr  ; List_8
    //     0x3a88f4: stur         xzr, [r3, #0x17]
    // 0x3a88f8: StoreField: r3->field_1f = xzr
    //     0x3a88f8: stur         xzr, [r3, #0x1f]
    //     0x3a88fc: ldur         r4, [fp, #-0x10]
    // 0x3a8900: LoadField: r5 = r4->field_f
    //     0x3a8900: ldur         r5, [r4, #0xf]
    //     0x3a8904: add          r5, r5, HEAP, lsl #32
    // 0x3a8908: r0 = r5
    //     0x3a8908: mov          r0, r5
    //     0x3a890c: stur         r5, [fp, #-0x20]
    // 0x3a8910: r2 = NULL
    //     0x3a8910: mov          r2, NULL
    // 0x3a8914: r1 = NULL
    //     0x3a8914: mov          r1, NULL
    //     0x3a8918: mov          r4, #0x3c
    // 0x3a891c: branchIfSmi(r0, 0x3a8928)
    //     0x3a891c: tbz          r0, #0, 0x3a8928
    // 0x3a8920: r4 = LoadClassIdInstr(r0)
    //     0x3a8920: ldur         r4, [r0, #-1]
    //     0x3a8924: ubfx         r4, r4, #0xc, #0x14
    //     0x3a8928: sub          r4, r4, #0x5e
    //     0x3a892c: cmp          r4, #1
    // 0x3a8930: b.ls 0x3a8944
    //     0x3a8930: b.ls         0x3a8944
    // 0x3a8934: r8 = pp[0x2f8]
    //     0x3a8934: ldr          r8, [PP, #0x2f8]
    // 0x3a8938: r3 = pp[0x3e2]
    //     0x3a8938: add          r3, PP, #0x12, lsl #12
    //     0x3a893c: ldr          r3, [r3, #0x3d0]
    // 0x3a8940: r0 = call 0x62a0c0
    //     0x3a8940: bl           0x62a0c0
    //     0x3a8944: ldur         r0, [fp, #-8]
    // 0x3a8948: LoadField: r1 = r0->field_13
    //     0x3a8948: ldur         r1, [r0, #0x13]
    //     0x3a894c: add          r1, r1, HEAP, lsl #32
    //     0x3a8950: stur         r1, [fp, #-0x38]
    // 0x3a8954: r0 = call 0x393bf8
    //     0x3a8954: bl           0x393bf8
    // 0x3a8958: r1 = r0
    //     0x3a8958: mov          r1, r0
    //     0x3a895c: ldur         r0, [fp, #-0x20]
    //     0x3a8960: stur         r1, [fp, #-8]
    // 0x3a8964: StoreField: r1->field_b = r0
    //     0x3a8964: stur         r0, [r1, #0xb]
    //     0x3a8968: ldur         r0, [fp, #-0x38]
    // 0x3a896c: StoreField: r1->field_13 = r0
    //     0x3a896c: stur         r0, [r1, #0x13]
    // 0x3a8970: r0 = pp[0x3f2]
    //     0x3a8970: add          r0, PP, #0x12, lsl #12
    //     0x3a8974: ldr          r0, [r0, #0x3e0]
    // 0x3a8978: StoreField: r1->field_2b = r0
    //     0x3a8978: stur         r0, [r1, #0x2b]
    //     0x3a897c: mov          r0, #2
    // 0x3a8980: StoreField: r1->field_37 = r0
    //     0x3a8980: stur         r0, [r1, #0x37]
    // 0x3a8984: r0 = call 0x391a04
    //     0x3a8984: bl           0x391a04
    //     0x3a8988: stur         r0, [fp, #-0x20]
    //     0x3a898c: ldur         BARRIER, [fp, #-0x28]
    //     0x3a8990: ldur         lr, [fp, #-8]
    //     0x3a8994: stp          lr, BARRIER, [SP]
    // 0x3a8998: r1 = r0
    //     0x3a8998: mov          r1, r0
    // 0x3a899c: r4 = pp[0x267]
    //     0x3a899c: add          r4, PP, #0xf, lsl #12
    //     0x3a89a0: ldr          r4, [r4, #0x258]
    // 0x3a89a4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a89a4: bl           0x391490
    // 0x3a89a8: r1 = pp[0xade]
    //     0x3a89a8: add          r1, PP, #0xe, lsl #12
    //     0x3a89ac: ldr          r1, [r1, #0xad0]
    // 0x3a89b0: r0 = call 0x39fb14
    //     0x3a89b0: bl           0x39fb14
    // 0x3a89b4: r1 = r0
    //     0x3a89b4: mov          r1, r0
    //     0x3a89b8: mov          r0, #1
    //     0x3a89bc: stur         r1, [fp, #-8]
    // 0x3a89c0: StoreField: r1->field_13 = r0
    //     0x3a89c0: stur         r0, [r1, #0x13]
    // 0x3a89c4: r0 = pp[0xae6]
    //     0x3a89c4: add          r0, PP, #0xe, lsl #12
    //     0x3a89c8: ldr          r0, [r0, #0xad8]
    // 0x3a89cc: StoreField: r1->field_1b = r0
    //     0x3a89cc: stur         r0, [r1, #0x1b]
    //     0x3a89d0: ldur         r0, [fp, #-0x20]
    // 0x3a89d4: StoreField: r1->field_b = r0
    //     0x3a89d4: stur         r0, [r1, #0xb]
    // 0x3a89d8: r0 = call 0x2e3578
    //     0x3a89d8: bl           0x2e3578
    //     0x3a89dc: stur         r0, [fp, #-0x20]
    // 0x3a89e0: StoreField: r0->field_7 = xzr
    //     0x3a89e0: stur         xzr, [r0, #7]
    // 0x3a89e4: StoreField: r0->field_f = xzr
    //     0x3a89e4: stur         xzr, [r0, #0xf]
    //     0x3a89e8: fmov         d0, #13.00000000
    // 0x3a89ec: ArrayStore: r0[0] = d0  ; List_8
    //     0x3a89ec: stur         d0, [r0, #0x17]
    // 0x3a89f0: StoreField: r0->field_1f = xzr
    //     0x3a89f0: stur         xzr, [r0, #0x1f]
    // 0x3a89f4: r0 = call 0x3a142c
    //     0x3a89f4: bl           0x3a142c
    // 0x3a89f8: r1 = r0
    //     0x3a89f8: mov          r1, r0
    // 0x3a89fc: r0 = pp[0x3fa]
    //     0x3a89fc: add          r0, PP, #0x12, lsl #12
    //     0x3a8a00: ldr          r0, [r0, #0x3e8]
    //     0x3a8a04: stur         r1, [fp, #-0x28]
    // 0x3a8a08: StoreField: r1->field_b = r0
    //     0x3a8a08: stur         r0, [r1, #0xb]
    // 0x3a8a0c: r0 = pp[0x17f]
    //     0x3a8a0c: add          r0, PP, #0xf, lsl #12
    //     0x3a8a10: ldr          r0, [r0, #0x170]
    // 0x3a8a14: StoreField: r1->field_f = r0
    //     0x3a8a14: stur         r0, [r1, #0xf]
    // 0x3a8a18: r0 = pp[0x402]
    //     0x3a8a18: add          r0, PP, #0x12, lsl #12
    //     0x3a8a1c: ldr          r0, [r0, #0x3f0]
    // 0x3a8a20: StoreField: r1->field_13 = r0
    //     0x3a8a20: stur         r0, [r1, #0x13]
    // 0x3a8a24: ArrayStore: r1[0] = r0  ; List_8
    //     0x3a8a24: stur         r0, [r1, #0x17]
    // 0x3a8a28: r0 = pp[0x3a9]
    //     0x3a8a28: add          r0, PP, #0x11, lsl #12
    //     0x3a8a2c: ldr          r0, [r0, #0x398]
    // 0x3a8a30: StoreField: r1->field_1b = r0
    //     0x3a8a30: stur         r0, [r1, #0x1b]
    // 0x3a8a34: r0 = call 0x391a04
    //     0x3a8a34: bl           0x391a04
    //     0x3a8a38: stur         r0, [fp, #-0x38]
    //     0x3a8a3c: ldur         BARRIER, [fp, #-0x20]
    // 0x3a8a40: lr = pp[0xdf6]
    //     0x3a8a40: add          lr, PP, #0xe, lsl #12
    //     0x3a8a44: ldr          lr, [lr, #0xde8]
    //     0x3a8a48: stp          lr, BARRIER, [SP, #0x10]
    // 0x3a8a4c: BARRIER = pp[0xdf6]
    //     0x3a8a4c: add          BARRIER, PP, #0xe, lsl #12
    //     0x3a8a50: ldr          BARRIER, [BARRIER, #0xde8]
    //     0x3a8a54: ldur         lr, [fp, #-0x28]
    //     0x3a8a58: stp          lr, BARRIER, [SP]
    // 0x3a8a5c: r1 = r0
    //     0x3a8a5c: mov          r1, r0
    // 0x3a8a60: r4 = pp[0x18f]
    //     0x3a8a60: add          r4, PP, #0xf, lsl #12
    //     0x3a8a64: ldr          r4, [r4, #0x180]
    // 0x3a8a68: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a8a68: bl           0x391490
    // 0x3a8a6c: r1 = NULL
    //     0x3a8a6c: mov          r1, NULL
    //     0x3a8a70: mov          r2, #4
    // 0x3a8a74: r0 = call 0x61f920
    //     0x3a8a74: bl           0x61f920
    // 0x3a8a78: r2 = r0
    //     0x3a8a78: mov          r2, r0
    //     0x3a8a7c: ldur         r0, [fp, #-8]
    //     0x3a8a80: stur         r2, [fp, #-0x20]
    // 0x3a8a84: StoreField: r2->field_f = r0
    //     0x3a8a84: stur         r0, [r2, #0xf]
    //     0x3a8a88: ldur         r0, [fp, #-0x38]
    // 0x3a8a8c: StoreField: r2->field_13 = r0
    //     0x3a8a8c: stur         r0, [r2, #0x13]
    // 0x3a8a90: r1 = pp[0x5c58]
    //     0x3a8a90: ldr          r1, [PP, #0x5c58]
    // 0x3a8a94: r0 = call 0x61e854
    //     0x3a8a94: bl           0x61e854
    // 0x3a8a98: r1 = r0
    //     0x3a8a98: mov          r1, r0
    //     0x3a8a9c: ldur         r0, [fp, #-0x20]
    //     0x3a8aa0: stur         r1, [fp, #-8]
    // 0x3a8aa4: StoreField: r1->field_f = r0
    //     0x3a8aa4: stur         r0, [r1, #0xf]
    //     0x3a8aa8: mov          r0, #4
    // 0x3a8aac: StoreField: r1->field_b = r0
    //     0x3a8aac: stur         r0, [r1, #0xb]
    // 0x3a8ab0: r0 = call 0x3a1414
    //     0x3a8ab0: bl           0x3a1414
    // 0x3a8ab4: r1 = r0
    //     0x3a8ab4: mov          r1, r0
    // 0x3a8ab8: r0 = pp[0x5140]
    //     0x3a8ab8: ldr          r0, [PP, #0x5140]
    //     0x3a8abc: stur         r1, [fp, #-0x20]
    // 0x3a8ac0: StoreField: r1->field_f = r0
    //     0x3a8ac0: stur         r0, [r1, #0xf]
    // 0x3a8ac4: r0 = pp[0xaee]
    //     0x3a8ac4: add          r0, PP, #0xe, lsl #12
    //     0x3a8ac8: ldr          r0, [r0, #0xae0]
    // 0x3a8acc: StoreField: r1->field_13 = r0
    //     0x3a8acc: stur         r0, [r1, #0x13]
    // 0x3a8ad0: r0 = pp[0xaf6]
    //     0x3a8ad0: add          r0, PP, #0xe, lsl #12
    //     0x3a8ad4: ldr          r0, [r0, #0xae8]
    // 0x3a8ad8: ArrayStore: r1[0] = r0  ; List_8
    //     0x3a8ad8: stur         r0, [r1, #0x17]
    // 0x3a8adc: r0 = pp[0xb6e]
    //     0x3a8adc: add          r0, PP, #0xe, lsl #12
    //     0x3a8ae0: ldr          r0, [r0, #0xb60]
    // 0x3a8ae4: StoreField: r1->field_1b = r0
    //     0x3a8ae4: stur         r0, [r1, #0x1b]
    // 0x3a8ae8: r0 = pp[0xb06]
    //     0x3a8ae8: add          r0, PP, #0xe, lsl #12
    //     0x3a8aec: ldr          r0, [r0, #0xaf8]
    // 0x3a8af0: StoreField: r1->field_23 = r0
    //     0x3a8af0: stur         r0, [r1, #0x23]
    // 0x3a8af4: r0 = pp[0xb2]
    //     0x3a8af4: add          r0, PP, #0xa, lsl #12
    //     0x3a8af8: ldr          r0, [r0, #0xa8]
    // 0x3a8afc: StoreField: r1->field_2b = r0
    //     0x3a8afc: stur         r0, [r1, #0x2b]
    // 0x3a8b00: StoreField: r1->field_2f = xzr
    //     0x3a8b00: stur         xzr, [r1, #0x2f]
    //     0x3a8b04: ldur         r0, [fp, #-8]
    // 0x3a8b08: StoreField: r1->field_b = r0
    //     0x3a8b08: stur         r0, [r1, #0xb]
    // 0x3a8b0c: r0 = call 0x391a04
    //     0x3a8b0c: bl           0x391a04
    //     0x3a8b10: stur         r0, [fp, #-8]
    //     0x3a8b14: ldur         BARRIER, [fp, #-0x18]
    // 0x3a8b18: lr = pp[0xbb1]
    //     0x3a8b18: add          lr, PP, #0x11, lsl #12
    //     0x3a8b1c: ldr          lr, [lr, #0xba0]
    //     0x3a8b20: stp          lr, BARRIER, [SP, #0x10]
    //     0x3a8b24: ldur         BARRIER, [fp, #-0x30]
    //     0x3a8b28: ldur         lr, [fp, #-0x20]
    //     0x3a8b2c: stp          lr, BARRIER, [SP]
    // 0x3a8b30: r1 = r0
    //     0x3a8b30: mov          r1, r0
    // 0x3a8b34: r4 = pp[0x40a]
    //     0x3a8b34: add          r4, PP, #0x12, lsl #12
    //     0x3a8b38: ldr          r4, [r4, #0x3f8]
    // 0x3a8b3c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a8b3c: bl           0x391490
    // 0x3a8b40: r0 = call 0x3a1d94
    //     0x3a8b40: bl           0x3a1d94
    //     0x3a8b44: ldur         r2, [fp, #-0x10]
    // 0x3a8b48: r1 = pp[0x412]
    //     0x3a8b48: add          r1, PP, #0x12, lsl #12
    //     0x3a8b4c: ldr          r1, [r1, #0x400]
    //     0x3a8b50: stur         r0, [fp, #-0x10]
    // 0x3a8b54: r0 = call 0x61ec54
    //     0x3a8b54: bl           0x61ec54
    //     0x3a8b58: ldur         BARRIER, [fp, #-8]
    //     0x3a8b5c: stp          r0, BARRIER, [SP]
    //     0x3a8b60: ldur         r1, [fp, #-0x10]
    // 0x3a8b64: r4 = pp[0xece]
    //     0x3a8b64: add          r4, PP, #0xe, lsl #12
    //     0x3a8b68: ldr          r4, [r4, #0xec0]
    // 0x3a8b6c: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x3a8b6c: bl           0x3a18c4
    //     0x3a8b70: ldur         r0, [fp, #-0x10]
    // 0x3a8b74: SP = fp
    //     0x3a8b74: mov          SP, fp
    // 0x3a8b78: LeaveFrame
    //     0x3a8b78: ldp          fp, lr, [SP], #0x10
    // 0x3a8b7c: ret
    //     0x3a8b7c: ret          
    // 0x3a8b80: r0 = call 0x61fa28
    //     0x3a8b80: bl           0x61fa28
    // 0x3a8b84: b 0x3a87e0
    //     0x3a8b84: b            0x3a87e0
  }

  _anon_closure() {
    // ** addr: 0x3a8b88, size: 0x178
    // 0x3a8b88: EnterFrame
    //     0x3a8b88: stp          fp, lr, [SP, #-0x10]!
    //     0x3a8b8c: mov          fp, SP
    // 0x3a8b90: AllocStack(0x28)
    //     0x3a8b90: sub          SP, SP, #0x28
    //     0x3a8b94: ldr          r0, [fp, #0x10]
    // 0x3a8b98: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x3a8b98: ldur         r3, [r0, #0x17]
    //     0x3a8b9c: add          r3, r3, HEAP, lsl #32
    //     0x3a8ba0: stur         r3, [fp, #-8]
    // 0x3a8ba4: CheckStackOverflow
    //     0x3a8ba4: ldr          BARRIER, [THR, #0x38]
    //     0x3a8ba8: cmp          SP, BARRIER
    //     0x3a8bac: b.ls         0x3a8cf8
    // 0x3a8bb0: r1 = NULL
    //     0x3a8bb0: mov          r1, NULL
    //     0x3a8bb4: mov          r2, #4
    // 0x3a8bb8: r0 = call 0x61f920
    //     0x3a8bb8: bl           0x61f920
    //     0x3a8bbc: stur         r0, [fp, #-0x18]
    // 0x3a8bc0: BARRIER = pp[0x41a]
    //     0x3a8bc0: add          BARRIER, PP, #0x12, lsl #12
    //     0x3a8bc4: ldr          BARRIER, [BARRIER, #0x408]
    // 0x3a8bc8: StoreField: r0->field_f = r16
    //     0x3a8bc8: stur         r16, [r0, #0xf]
    //     0x3a8bcc: ldur         r3, [fp, #-8]
    // 0x3a8bd0: LoadField: r4 = r3->field_b
    //     0x3a8bd0: ldur         r4, [r3, #0xb]
    //     0x3a8bd4: add          r4, r4, HEAP, lsl #32
    //     0x3a8bd8: stur         r4, [fp, #-0x10]
    // 0x3a8bdc: LoadField: r1 = r4->field_f
    //     0x3a8bdc: ldur         r1, [r4, #0xf]
    //     0x3a8be0: add          r1, r1, HEAP, lsl #32
    // 0x3a8be4: LoadField: r2 = r1->field_27
    //     0x3a8be4: ldur         r2, [r1, #0x27]
    //     0x3a8be8: add          r2, r2, HEAP, lsl #32
    // 0x3a8bec: LoadField: r1 = r3->field_f
    //     0x3a8bec: ldur         r1, [r3, #0xf]
    //     0x3a8bf0: add          r1, r1, HEAP, lsl #32
    // 0x3a8bf4: BARRIER = r1
    //     0x3a8bf4: mov          BARRIER, r1
    // 0x3a8bf8: r1 = r2
    //     0x3a8bf8: mov          r1, r2
    // 0x3a8bfc: r2 = BARRIER
    //     0x3a8bfc: mov          r2, BARRIER
    // 0x3a8c00: r4 = pp[0x278]
    //     0x3a8c00: ldr          r4, [PP, #0x278]
    // 0x3a8c04: r0 = dart_collection_ListBase::indexOf()
    //     0x3a8c04: bl           0x302eec
    //     0x3a8c08: add          r2, r0, #1
    //     0x3a8c0c: sbfiz        r0, r2, #1, #0x1f
    //     0x3a8c10: cmp          r2, r0, asr #1
    // 0x3a8c14: b.eq 0x3a8c20
    //     0x3a8c14: b.eq         0x3a8c20
    // 0x3a8c18: r0 = call 0x61fba8
    //     0x3a8c18: bl           0x61fba8
    // 0x3a8c1c: StoreField: r0->field_7 = r2
    //     0x3a8c1c: stur         r2, [r0, #7]
    //     0x3a8c20: str          r0, [SP]
    // 0x3a8c24: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x3a8c24: bl           0x2ac0a0
    //     0x3a8c28: ldur         r1, [fp, #-0x18]
    //     0x3a8c2c: add          r25, r1, #0x13
    //     0x3a8c30: str          r0, [r25]
    // 0x3a8c34: branchIfSmi(r0, 0x3a8c50)
    //     0x3a8c34: tbz          r0, #0, 0x3a8c50
    //     0x3a8c38: ldurb        r16, [r1, #-1]
    //     0x3a8c3c: ldurb        r17, [r0, #-1]
    //     0x3a8c40: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3a8c44: tst          BARRIER, HEAP, lsr #32
    // 0x3a8c48: b.eq 0x3a8c50
    //     0x3a8c48: b.eq         0x3a8c50
    // 0x3a8c4c: r0 = call 0x61db00
    //     0x3a8c4c: bl           0x61db00
    // 0x3a8c50: BARRIER = pp[0xbf0]
    //     0x3a8c50: ldr          BARRIER, [PP, #0xbf0]
    //     0x3a8c54: ldur         lr, [fp, #-0x18]
    //     0x3a8c58: stp          lr, BARRIER, [SP]
    // 0x3a8c5c: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x3a8c5c: bl           0x27c0c8
    //     0x3a8c60: str          r0, [SP]
    // 0x3a8c64: r1 = pp[0x422]
    //     0x3a8c64: add          r1, PP, #0x12, lsl #12
    //     0x3a8c68: ldr          r1, [r1, #0x410]
    // 0x3a8c6c: r4 = pp[0xf2f]
    //     0x3a8c6c: add          r4, PP, #0xf, lsl #12
    //     0x3a8c70: ldr          r4, [r4, #0xf20]
    // 0x3a8c74: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventClick()
    //     0x3a8c74: bl           0x3a8e60
    //     0x3a8c78: ldur         r0, [fp, #-0x10]
    // 0x3a8c7c: LoadField: r1 = r0->field_f
    //     0x3a8c7c: ldur         r1, [r0, #0xf]
    //     0x3a8c80: add          r1, r1, HEAP, lsl #32
    // 0x3a8c84: LoadField: r3 = r1->field_f
    //     0x3a8c84: ldur         r3, [r1, #0xf]
    //     0x3a8c88: add          r3, r3, HEAP, lsl #32
    //     0x3a8c8c: ldur         r0, [fp, #-8]
    //     0x3a8c90: stur         r3, [fp, #-0x18]
    // 0x3a8c94: LoadField: r4 = r0->field_f
    //     0x3a8c94: ldur         r4, [r0, #0xf]
    //     0x3a8c98: add          r4, r4, HEAP, lsl #32
    // 0x3a8c9c: r0 = r4
    //     0x3a8c9c: mov          r0, r4
    //     0x3a8ca0: stur         r4, [fp, #-0x10]
    // 0x3a8ca4: r2 = NULL
    //     0x3a8ca4: mov          r2, NULL
    // 0x3a8ca8: r1 = NULL
    //     0x3a8ca8: mov          r1, NULL
    //     0x3a8cac: mov          r4, #0x3c
    // 0x3a8cb0: branchIfSmi(r0, 0x3a8cbc)
    //     0x3a8cb0: tbz          r0, #0, 0x3a8cbc
    // 0x3a8cb4: r4 = LoadClassIdInstr(r0)
    //     0x3a8cb4: ldur         r4, [r0, #-1]
    //     0x3a8cb8: ubfx         r4, r4, #0xc, #0x14
    //     0x3a8cbc: sub          r4, r4, #0x5e
    //     0x3a8cc0: cmp          r4, #1
    // 0x3a8cc4: b.ls 0x3a8cd8
    //     0x3a8cc4: b.ls         0x3a8cd8
    // 0x3a8cc8: r8 = pp[0xae0]
    //     0x3a8cc8: ldr          r8, [PP, #0xae0]
    // 0x3a8ccc: r3 = pp[0x42a]
    //     0x3a8ccc: add          r3, PP, #0x12, lsl #12
    //     0x3a8cd0: ldr          r3, [r3, #0x418]
    // 0x3a8cd4: r0 = call 0x278d08
    //     0x3a8cd4: bl           0x278d08
    //     0x3a8cd8: ldur         r1, [fp, #-0x18]
    //     0x3a8cdc: ldur         r2, [fp, #-0x10]
    // 0x3a8ce0: r0 = soul_flutter_international$common$plugins$virtual_party_VirtualParty::sendTextToParty()
    //     0x3a8ce0: bl           0x3a8d40
    // 0x3a8ce4: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record__PagePKGameBetTabRecordState::_anon_closure()
    //     0x3a8ce4: bl           0x3a8d00
    // 0x3a8ce8: r0 = NULL
    //     0x3a8ce8: mov          r0, NULL
    // 0x3a8cec: SP = fp
    //     0x3a8cec: mov          SP, fp
    // 0x3a8cf0: LeaveFrame
    //     0x3a8cf0: ldp          fp, lr, [SP], #0x10
    // 0x3a8cf4: ret
    //     0x3a8cf4: ret          
    // 0x3a8cf8: r0 = call 0x61fa28
    //     0x3a8cf8: bl           0x61fa28
    // 0x3a8cfc: b 0x3a8bb0
    //     0x3a8cfc: b            0x3a8bb0
  }

  ctor() {
    // ** addr: 0x424370, size: 0x1a8
    // 0x424370: EnterFrame
    //     0x424370: stp          fp, lr, [SP, #-0x10]!
    //     0x424374: mov          fp, SP
    // 0x424378: AllocStack(0x50)
    //     0x424378: sub          SP, SP, #0x50
    // 0x42437c: r4 = r3
    //     0x42437c: mov          r4, r3
    //     0x424380: stur         r3, [fp, #-0x18]
    // 0x424384: r3 = r5
    //     0x424384: mov          r3, r5
    //     0x424388: stur         r5, [fp, #-0x20]
    // 0x42438c: r5 = r2
    //     0x42438c: mov          r5, r2
    //     0x424390: stur         r2, [fp, #-0x10]
    // 0x424394: r2 = r6
    //     0x424394: mov          r2, r6
    //     0x424398: stur         r6, [fp, #-0x28]
    // 0x42439c: r6 = r1
    //     0x42439c: mov          r6, r1
    // 0x4243a0: r0 = r7
    //     0x4243a0: mov          r0, r7
    //     0x4243a4: stur         r1, [fp, #-8]
    //     0x4243a8: stur         r7, [fp, #-0x30]
    // 0x4243ac: CheckStackOverflow
    //     0x4243ac: ldr          BARRIER, [THR, #0x38]
    //     0x4243b0: cmp          SP, BARRIER
    //     0x4243b4: b.ls         0x424510
    // 0x4243b8: r1 = pp[0x944]
    //     0x4243b8: add          r1, PP, #0xc, lsl #12
    //     0x4243bc: ldr          r1, [r1, #0x938]
    // 0x4243c0: r4 = pp[0x4c0]
    //     0x4243c0: ldr          r4, [PP, #0x4c0]
    // 0x4243c4: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4243c4: bl           0x3a1dcc
    // 0x4243c8: r1 = pp[0x934]
    //     0x4243c8: add          r1, PP, #0xc, lsl #12
    //     0x4243cc: ldr          r1, [r1, #0x928]
    //     0x4243d0: stur         r0, [fp, #-0x38]
    // 0x4243d4: r4 = pp[0x4c0]
    //     0x4243d4: ldr          r4, [PP, #0x4c0]
    // 0x4243d8: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4243d8: bl           0x3a1dcc
    // 0x4243dc: r1 = pp[0x924]
    //     0x4243dc: add          r1, PP, #0xc, lsl #12
    //     0x4243e0: ldr          r1, [r1, #0x918]
    //     0x4243e4: stur         r0, [fp, #-0x40]
    // 0x4243e8: r4 = pp[0x4c0]
    //     0x4243e8: ldr          r4, [PP, #0x4c0]
    // 0x4243ec: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4243ec: bl           0x3a1dcc
    // 0x4243f0: r1 = NULL
    //     0x4243f0: mov          r1, NULL
    //     0x4243f4: mov          r2, #6
    //     0x4243f8: stur         r0, [fp, #-0x48]
    // 0x4243fc: r0 = call 0x61f920
    //     0x4243fc: bl           0x61f920
    // 0x424400: r2 = r0
    //     0x424400: mov          r2, r0
    //     0x424404: ldur         r0, [fp, #-0x38]
    //     0x424408: stur         r2, [fp, #-0x50]
    // 0x42440c: StoreField: r2->field_f = r0
    //     0x42440c: stur         r0, [r2, #0xf]
    //     0x424410: ldur         r0, [fp, #-0x40]
    // 0x424414: StoreField: r2->field_13 = r0
    //     0x424414: stur         r0, [r2, #0x13]
    //     0x424418: ldur         r0, [fp, #-0x48]
    // 0x42441c: ArrayStore: r2[0] = r0  ; List_8
    //     0x42441c: stur         r0, [r2, #0x17]
    // 0x424420: r1 = NULL
    //     0x424420: mov          r1, NULL
    // 0x424424: r0 = call 0x61e854
    //     0x424424: bl           0x61e854
    //     0x424428: ldur         r1, [fp, #-0x50]
    // 0x42442c: StoreField: r0->field_f = r1
    //     0x42442c: stur         r1, [r0, #0xf]
    //     0x424430: mov          r1, #6
    // 0x424434: StoreField: r0->field_b = r1
    //     0x424434: stur         r1, [r0, #0xb]
    //     0x424438: ldur         r1, [fp, #-8]
    // 0x42443c: StoreField: r1->field_27 = r0
    //     0x42443c: stur         r0, [r1, #0x27]
    //     0x424440: ldurb        r16, [r1, #-1]
    //     0x424444: ldurb        r17, [r0, #-1]
    //     0x424448: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42444c: tst          BARRIER, HEAP, lsr #32
    // 0x424450: b.eq 0x424458
    //     0x424450: b.eq         0x424458
    // 0x424454: r0 = call 0x61e04c
    //     0x424454: bl           0x61e04c
    //     0x424458: ldur         r0, [fp, #-0x10]
    // 0x42445c: StoreField: r1->field_b = r0
    //     0x42445c: stur         r0, [r1, #0xb]
    //     0x424460: ldurb        r16, [r1, #-1]
    //     0x424464: ldurb        r17, [r0, #-1]
    //     0x424468: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42446c: tst          BARRIER, HEAP, lsr #32
    // 0x424470: b.eq 0x424478
    //     0x424470: b.eq         0x424478
    // 0x424474: r0 = call 0x61e04c
    //     0x424474: bl           0x61e04c
    //     0x424478: ldur         r0, [fp, #-0x18]
    // 0x42447c: StoreField: r1->field_f = r0
    //     0x42447c: stur         r0, [r1, #0xf]
    //     0x424480: ldurb        r16, [r1, #-1]
    //     0x424484: ldurb        r17, [r0, #-1]
    //     0x424488: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42448c: tst          BARRIER, HEAP, lsr #32
    // 0x424490: b.eq 0x424498
    //     0x424490: b.eq         0x424498
    // 0x424494: r0 = call 0x61e04c
    //     0x424494: bl           0x61e04c
    //     0x424498: ldur         r0, [fp, #-0x30]
    // 0x42449c: StoreField: r1->field_13 = r0
    //     0x42449c: stur         r0, [r1, #0x13]
    //     0x4244a0: ldurb        r16, [r1, #-1]
    //     0x4244a4: ldurb        r17, [r0, #-1]
    //     0x4244a8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4244ac: tst          BARRIER, HEAP, lsr #32
    // 0x4244b0: b.eq 0x4244b8
    //     0x4244b0: b.eq         0x4244b8
    // 0x4244b4: r0 = call 0x61e04c
    //     0x4244b4: bl           0x61e04c
    //     0x4244b8: ldur         r0, [fp, #-0x20]
    // 0x4244bc: ArrayStore: r1[0] = r0  ; List_8
    //     0x4244bc: stur         r0, [r1, #0x17]
    //     0x4244c0: ldurb        r16, [r1, #-1]
    //     0x4244c4: ldurb        r17, [r0, #-1]
    //     0x4244c8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4244cc: tst          BARRIER, HEAP, lsr #32
    // 0x4244d0: b.eq 0x4244d8
    //     0x4244d0: b.eq         0x4244d8
    // 0x4244d4: r0 = call 0x61e04c
    //     0x4244d4: bl           0x61e04c
    //     0x4244d8: ldur         r0, [fp, #-0x28]
    // 0x4244dc: StoreField: r1->field_1b = r0
    //     0x4244dc: stur         r0, [r1, #0x1b]
    //     0x4244e0: ldurb        r16, [r1, #-1]
    //     0x4244e4: ldurb        r17, [r0, #-1]
    //     0x4244e8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4244ec: tst          BARRIER, HEAP, lsr #32
    // 0x4244f0: b.eq 0x4244f8
    //     0x4244f0: b.eq         0x4244f8
    // 0x4244f4: r0 = call 0x61e04c
    //     0x4244f4: bl           0x61e04c
    //     0x4244f8: fmov         d0, #13.00000000
    // 0x4244fc: StoreField: r1->field_1f = d0
    //     0x4244fc: stur         d0, [r1, #0x1f]
    // 0x424500: r0 = NULL
    //     0x424500: mov          r0, NULL
    // 0x424504: SP = fp
    //     0x424504: mov          SP, fp
    // 0x424508: LeaveFrame
    //     0x424508: ldp          fp, lr, [SP], #0x10
    // 0x42450c: ret
    //     0x42450c: ret          
    // 0x424510: r0 = call 0x61fa28
    //     0x424510: bl           0x61fa28
    // 0x424514: b 0x4243b8
    //     0x424514: b            0x4243b8
  }

  _myWallet() {
    // ** addr: 0x3a6828, size: 0x1c0
    // 0x3a6828: EnterFrame
    //     0x3a6828: stp          fp, lr, [SP, #-0x10]!
    //     0x3a682c: mov          fp, SP
    // 0x3a6830: AllocStack(0x68)
    //     0x3a6830: sub          SP, SP, #0x68
    //     0x3a6834: stur         r1, [fp, #-8]
    //     0x3a6838: stur         r2, [fp, #-0x10]
    // 0x3a683c: CheckStackOverflow
    //     0x3a683c: ldr          BARRIER, [THR, #0x38]
    //     0x3a6840: cmp          SP, BARRIER
    //     0x3a6844: b.ls         0x3a69e0
    // 0x3a6848: r0 = call 0x2e3578
    //     0x3a6848: bl           0x2e3578
    //     0x3a684c: stur         r0, [fp, #-0x18]
    // 0x3a6850: StoreField: r0->field_7 = xzr
    //     0x3a6850: stur         xzr, [r0, #7]
    //     0x3a6854: fmov         d0, #24.00000000
    // 0x3a6858: StoreField: r0->field_f = d0
    //     0x3a6858: stur         d0, [r0, #0xf]
    //     0x3a685c: fmov         d0, #10.00000000
    // 0x3a6860: ArrayStore: r0[0] = d0  ; List_8
    //     0x3a6860: stur         d0, [r0, #0x17]
    // 0x3a6864: StoreField: r0->field_1f = xzr
    //     0x3a6864: stur         xzr, [r0, #0x1f]
    // 0x3a6868: r0 = call 0x2e3578
    //     0x3a6868: bl           0x2e3578
    //     0x3a686c: fmov         d0, #8.00000000
    //     0x3a6870: stur         r0, [fp, #-0x20]
    // 0x3a6874: StoreField: r0->field_7 = d0
    //     0x3a6874: stur         d0, [r0, #7]
    // 0x3a6878: StoreField: r0->field_f = xzr
    //     0x3a6878: stur         xzr, [r0, #0xf]
    // 0x3a687c: ArrayStore: r0[0] = d0  ; List_8
    //     0x3a687c: stur         d0, [r0, #0x17]
    // 0x3a6880: StoreField: r0->field_1f = xzr
    //     0x3a6880: stur         xzr, [r0, #0x1f]
    // 0x3a6884: r0 = call 0x352b04
    //     0x3a6884: bl           0x352b04
    //     0x3a6888: fmov         d0, #12.50000000
    //     0x3a688c: stur         r0, [fp, #-0x28]
    // 0x3a6890: StoreField: r0->field_7 = d0
    //     0x3a6890: stur         d0, [r0, #7]
    // 0x3a6894: StoreField: r0->field_f = d0
    //     0x3a6894: stur         d0, [r0, #0xf]
    // 0x3a6898: r0 = call 0x392f28
    //     0x3a6898: bl           0x392f28
    // 0x3a689c: r1 = r0
    //     0x3a689c: mov          r1, r0
    //     0x3a68a0: ldur         r0, [fp, #-0x28]
    //     0x3a68a4: stur         r1, [fp, #-0x30]
    // 0x3a68a8: StoreField: r1->field_7 = r0
    //     0x3a68a8: stur         r0, [r1, #7]
    // 0x3a68ac: StoreField: r1->field_b = r0
    //     0x3a68ac: stur         r0, [r1, #0xb]
    // 0x3a68b0: StoreField: r1->field_f = r0
    //     0x3a68b0: stur         r0, [r1, #0xf]
    // 0x3a68b4: StoreField: r1->field_13 = r0
    //     0x3a68b4: stur         r0, [r1, #0x13]
    // 0x3a68b8: r0 = call 0x31d844
    //     0x3a68b8: bl           0x31d844
    // 0x3a68bc: r1 = r0
    //     0x3a68bc: mov          r1, r0
    // 0x3a68c0: r0 = pp[0x6310]
    //     0x3a68c0: ldr          r0, [PP, #0x6310]
    // 0x3a68c4: StoreField: r1->field_27 = r0
    //     0x3a68c4: stur         r0, [r1, #0x27]
    //     0x3a68c8: fmov         d0, #1.00000000
    // 0x3a68cc: StoreField: r1->field_7 = d0
    //     0x3a68cc: stur         d0, [r1, #7]
    // 0x3a68d0: d0 = pp[0x392]
    //     0x3a68d0: add          r17, PP, #0x12, lsl #12
    //     0x3a68d4: ldr          d0, [r17, #0x380]
    // 0x3a68d8: StoreField: r1->field_f = d0
    //     0x3a68d8: stur         d0, [r1, #0xf]
    // 0x3a68dc: d0 = pp[0x39a]
    //     0x3a68dc: add          r17, PP, #0x12, lsl #12
    //     0x3a68e0: ldr          d0, [r17, #0x388]
    // 0x3a68e4: ArrayStore: r1[0] = d0  ; List_8
    //     0x3a68e4: stur         d0, [r1, #0x17]
    // 0x3a68e8: d0 = pp[0x3a2]
    //     0x3a68e8: add          r17, PP, #0x12, lsl #12
    //     0x3a68ec: ldr          d0, [r17, #0x390]
    // 0x3a68f0: StoreField: r1->field_1f = d0
    //     0x3a68f0: stur         d0, [r1, #0x1f]
    // 0x3a68f4: BARRIER = pp[0x442]
    //     0x3a68f4: add          BARRIER, PP, #0x12, lsl #12
    //     0x3a68f8: ldr          BARRIER, [BARRIER, #0x430]
    //     0x3a68fc: str          BARRIER, [SP]
    // 0x3a6900: r2 = r1
    //     0x3a6900: mov          r2, r1
    // 0x3a6904: r1 = NULL
    //     0x3a6904: mov          r1, NULL
    // 0x3a6908: r4 = pp[0x827]
    //     0x3a6908: add          r4, PP, #0xf, lsl #12
    //     0x3a690c: ldr          r4, [r4, #0x818]
    // 0x3a6910: r0 = flutter$src$painting$box_border_Border::factory_ctor_all()
    //     0x3a6910: bl           0x391e08
    //     0x3a6914: stur         r0, [fp, #-0x28]
    // 0x3a6918: r0 = call 0x391dd8
    //     0x3a6918: bl           0x391dd8
    // 0x3a691c: r1 = r0
    //     0x3a691c: mov          r1, r0
    //     0x3a6920: ldur         r0, [fp, #-0x28]
    //     0x3a6924: stur         r1, [fp, #-0x38]
    // 0x3a6928: StoreField: r1->field_f = r0
    //     0x3a6928: stur         r0, [r1, #0xf]
    //     0x3a692c: ldur         r0, [fp, #-0x30]
    // 0x3a6930: StoreField: r1->field_13 = r0
    //     0x3a6930: stur         r0, [r1, #0x13]
    // 0x3a6934: r0 = pp[0xb86]
    //     0x3a6934: add          r0, PP, #0xe, lsl #12
    //     0x3a6938: ldr          r0, [r0, #0xb78]
    // 0x3a693c: StoreField: r1->field_23 = r0
    //     0x3a693c: stur         r0, [r1, #0x23]
    // 0x3a6940: r0 = call 0x393bf8
    //     0x3a6940: bl           0x393bf8
    // 0x3a6944: r1 = r0
    //     0x3a6944: mov          r1, r0
    //     0x3a6948: ldur         r0, [fp, #-8]
    //     0x3a694c: stur         r1, [fp, #-0x28]
    // 0x3a6950: StoreField: r1->field_b = r0
    //     0x3a6950: stur         r0, [r1, #0xb]
    //     0x3a6954: ldur         r0, [fp, #-0x10]
    // 0x3a6958: StoreField: r1->field_13 = r0
    //     0x3a6958: stur         r0, [r1, #0x13]
    // 0x3a695c: r0 = call 0x391a04
    //     0x3a695c: bl           0x391a04
    //     0x3a6960: stur         r0, [fp, #-8]
    //     0x3a6964: ldur         BARRIER, [fp, #-0x18]
    //     0x3a6968: ldur         lr, [fp, #-0x20]
    //     0x3a696c: stp          lr, BARRIER, [SP, #0x20]
    // 0x3a6970: BARRIER = pp[0xaae]
    //     0x3a6970: add          BARRIER, PP, #0xe, lsl #12
    //     0x3a6974: ldr          BARRIER, [BARRIER, #0xaa0]
    // 0x3a6978: lr = pp[0x28f]
    //     0x3a6978: add          lr, PP, #0xf, lsl #12
    //     0x3a697c: ldr          lr, [lr, #0x280]
    //     0x3a6980: stp          lr, BARRIER, [SP, #0x10]
    //     0x3a6984: ldur         BARRIER, [fp, #-0x38]
    //     0x3a6988: ldur         lr, [fp, #-0x28]
    //     0x3a698c: stp          lr, BARRIER, [SP]
    // 0x3a6990: r1 = r0
    //     0x3a6990: mov          r1, r0
    // 0x3a6994: r4 = pp[0x44a]
    //     0x3a6994: add          r4, PP, #0x12, lsl #12
    //     0x3a6998: ldr          r4, [r4, #0x438]
    // 0x3a699c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a699c: bl           0x391490
    // 0x3a69a0: r0 = call 0x3a1d94
    //     0x3a69a0: bl           0x3a1d94
    // 0x3a69a4: r1 = pp[0x452]
    //     0x3a69a4: add          r1, PP, #0x12, lsl #12
    //     0x3a69a8: ldr          r1, [r1, #0x440]
    // 0x3a69ac: r2 = NULL
    //     0x3a69ac: mov          r2, NULL
    //     0x3a69b0: stur         r0, [fp, #-0x10]
    // 0x3a69b4: r0 = call 0x61ec54
    //     0x3a69b4: bl           0x61ec54
    //     0x3a69b8: ldur         BARRIER, [fp, #-8]
    //     0x3a69bc: stp          r0, BARRIER, [SP]
    //     0x3a69c0: ldur         r1, [fp, #-0x10]
    // 0x3a69c4: r4 = pp[0xece]
    //     0x3a69c4: add          r4, PP, #0xe, lsl #12
    //     0x3a69c8: ldr          r4, [r4, #0xec0]
    // 0x3a69cc: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x3a69cc: bl           0x3a18c4
    //     0x3a69d0: ldur         r0, [fp, #-0x10]
    // 0x3a69d4: SP = fp
    //     0x3a69d4: mov          SP, fp
    // 0x3a69d8: LeaveFrame
    //     0x3a69d8: ldp          fp, lr, [SP], #0x10
    // 0x3a69dc: ret
    //     0x3a69dc: ret          
    // 0x3a69e0: r0 = call 0x61fa28
    //     0x3a69e0: bl           0x61fa28
    // 0x3a69e4: b 0x3a6848
    //     0x3a69e4: b            0x3a6848
  }

  _anon_closure() {
    // ** addr: 0x3a69e8, size: 0x78
    // 0x3a69e8: EnterFrame
    //     0x3a69e8: stp          fp, lr, [SP, #-0x10]!
    //     0x3a69ec: mov          fp, SP
    // 0x3a69f0: AllocStack(0x20)
    //     0x3a69f0: sub          SP, SP, #0x20
    //     0x3a69f4: stur         NULL, [fp, #-8]
    //     0x3a69f8: mov          r0, #0
    //     0x3a69fc: add          r1, fp, r0, sxtw #2
    // 0x3a6a00: LoadField: r1 = r1->field_10
    //     0x3a6a00: ldr          r1, [r1, #0x10]
    // 0x3a6a04: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x3a6a04: ldur         r2, [r1, #0x17]
    //     0x3a6a08: add          r2, r2, HEAP, lsl #32
    //     0x3a6a0c: stur         r2, [fp, #-0x10]
    // 0x3a6a10: CheckStackOverflow
    //     0x3a6a10: ldr          BARRIER, [THR, #0x38]
    //     0x3a6a14: cmp          SP, BARRIER
    //     0x3a6a18: b.ls         0x3a6a58
    // 0x3a6a1c: r0 = pp[0x1658]
    //     0x3a6a1c: ldr          r0, [PP, #0x1658]
    // 0x3a6a20: r0 = call 0x2b16e4
    //     0x3a6a20: bl           0x2b16e4
    // 0x3a6a24: r0 = soul_flutter_international$common$plugins$router_RouterNative::_getInstance()
    //     0x3a6a24: bl           0x3a86c0
    // 0x3a6a28: r1 = pp[0x45a]
    //     0x3a6a28: add          r1, PP, #0x12, lsl #12
    //     0x3a6a2c: ldr          r1, [r1, #0x448]
    //     0x3a6a30: stur         r0, [fp, #-0x18]
    // 0x3a6a34: r0 = soul_flutter_international$constant$h5_path_::getUrlWithHost()
    //     0x3a6a34: bl           0x3a8520
    // 0x3a6a38: r1 = r0
    //     0x3a6a38: mov          r1, r0
    //     0x3a6a3c: stur         r1, [fp, #-0x20]
    // 0x3a6a40: r0 = call 0x2b13a0
    //     0x3a6a40: bl           0x2b13a0
    //     0x3a6a44: ldur         r1, [fp, #-0x18]
    // 0x3a6a48: r2 = r0
    //     0x3a6a48: mov          r2, r0
    // 0x3a6a4c: r0 = soul_flutter_international$common$plugins$router_RouterNative::routeH5()
    //     0x3a6a4c: bl           0x3a6a60
    // 0x3a6a50: r0 = NULL
    //     0x3a6a50: mov          r0, NULL
    // 0x3a6a54: b 0x2b16b8
    //     0x3a6a54: b            0x2b16b8
    // 0x3a6a58: r0 = call 0x61fa28
    //     0x3a6a58: bl           0x61fa28
    // 0x3a6a5c: b 0x3a6a1c
    //     0x3a6a5c: b            0x3a6a1c
  }

  build() {
    // ** addr: 0x3a901c, size: 0x7d4
    // 0x3a901c: EnterFrame
    //     0x3a901c: stp          fp, lr, [SP, #-0x10]!
    //     0x3a9020: mov          fp, SP
    // 0x3a9024: AllocStack(0x88)
    //     0x3a9024: sub          SP, SP, #0x88
    // 0x3a9028: r0 = r1
    //     0x3a9028: mov          r0, r1
    //     0x3a902c: stur         r1, [fp, #-8]
    // 0x3a9030: r1 = r2
    //     0x3a9030: mov          r1, r2
    //     0x3a9034: stur         r2, [fp, #-0x10]
    // 0x3a9038: CheckStackOverflow
    //     0x3a9038: ldr          BARRIER, [THR, #0x38]
    //     0x3a903c: cmp          SP, BARRIER
    //     0x3a9040: b.ls         0x3a97d0
    //     0x3a9044: mov          r1, #2
    // 0x3a9048: r0 = call 0x61e890
    //     0x3a9048: bl           0x61e890
    // 0x3a904c: r2 = r0
    //     0x3a904c: mov          r2, r0
    //     0x3a9050: ldur         r0, [fp, #-8]
    //     0x3a9054: stur         r2, [fp, #-0x18]
    // 0x3a9058: StoreField: r2->field_f = r0
    //     0x3a9058: stur         r0, [r2, #0xf]
    //     0x3a905c: ldur         r1, [fp, #-0x10]
    // 0x3a9060: StoreField: r2->field_13 = r1
    //     0x3a9060: stur         r1, [r2, #0x13]
    // 0x3a9064: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenWidth()
    //     0x3a9064: bl           0x3a877c
    //     0x3a9068: ldur         r0, [fp, #-8]
    // 0x3a906c: LoadField: r2 = r0->field_13
    //     0x3a906c: ldur         r2, [r0, #0x13]
    //     0x3a9070: add          r2, r2, HEAP, lsl #32
    //     0x3a9074: stur         r2, [fp, #-0x20]
    // 0x3a9078: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x3a9078: ldur         r3, [r0, #0x17]
    //     0x3a907c: add          r3, r3, HEAP, lsl #32
    //     0x3a9080: stur         r3, [fp, #-0x10]
    // 0x3a9084: d1 = pp[0x4c2]
    //     0x3a9084: add          r17, PP, #0x12, lsl #12
    //     0x3a9088: ldr          d1, [r17, #0x4b0]
    //     0x3a908c: fsub         d2, d0, d1
    //     0x3a9090: fmov         d0, #0.50000000
    //     0x3a9094: fmul         d3, d2, d0
    //     0x3a9098: stur         d3, [fp, #-0x70]
    // 0x3a909c: r1 = pp[0x9a4]
    //     0x3a909c: add          r1, PP, #0xc, lsl #12
    //     0x3a90a0: ldr          r1, [r1, #0x998]
    // 0x3a90a4: r4 = pp[0x4c0]
    //     0x3a90a4: ldr          r4, [PP, #0x4c0]
    // 0x3a90a8: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3a90a8: bl           0x3a1dcc
    // 0x3a90ac: BARRIER = pp[0x1af8]
    //     0x3a90ac: ldr          BARRIER, [PP, #0x1af8]
    //     0x3a90b0: stp          BARRIER, r0, [SP]
    // 0x3a90b4: r0 = dart_core__StringBase::op_add()
    //     0x3a90b4: bl           0x281718
    // 0x3a90b8: BARRIER = pp[0x25e0]
    //     0x3a90b8: ldr          BARRIER, [PP, #0x25e0]
    //     0x3a90bc: stp          BARRIER, r0, [SP]
    // 0x3a90c0: r0 = dart_core__StringBase::op_add()
    //     0x3a90c0: bl           0x281718
    //     0x3a90c4: stur         r0, [fp, #-0x28]
    // 0x3a90c8: r0 = call 0x31d844
    //     0x3a90c8: bl           0x31d844
    // 0x3a90cc: r1 = r0
    //     0x3a90cc: mov          r1, r0
    // 0x3a90d0: r0 = pp[0x6310]
    //     0x3a90d0: ldr          r0, [PP, #0x6310]
    //     0x3a90d4: stur         r1, [fp, #-0x30]
    // 0x3a90d8: StoreField: r1->field_27 = r0
    //     0x3a90d8: stur         r0, [r1, #0x27]
    //     0x3a90dc: fmov         d0, #1.00000000
    // 0x3a90e0: StoreField: r1->field_7 = d0
    //     0x3a90e0: stur         d0, [r1, #7]
    // 0x3a90e4: d1 = pp[0x392]
    //     0x3a90e4: add          r17, PP, #0x12, lsl #12
    //     0x3a90e8: ldr          d1, [r17, #0x380]
    // 0x3a90ec: StoreField: r1->field_f = d1
    //     0x3a90ec: stur         d1, [r1, #0xf]
    // 0x3a90f0: d1 = pp[0x39a]
    //     0x3a90f0: add          r17, PP, #0x12, lsl #12
    //     0x3a90f4: ldr          d1, [r17, #0x388]
    // 0x3a90f8: ArrayStore: r1[0] = d1  ; List_8
    //     0x3a90f8: stur         d1, [r1, #0x17]
    // 0x3a90fc: d1 = pp[0x3a2]
    //     0x3a90fc: add          r17, PP, #0x12, lsl #12
    //     0x3a9100: ldr          d1, [r17, #0x390]
    // 0x3a9104: StoreField: r1->field_1f = d1
    //     0x3a9104: stur         d1, [r1, #0x1f]
    // 0x3a9108: r0 = call 0x31abec
    //     0x3a9108: bl           0x31abec
    // 0x3a910c: r1 = r0
    //     0x3a910c: mov          r1, r0
    //     0x3a9110: add          r0, NULL, #0x20
    //     0x3a9114: stur         r1, [fp, #-0x38]
    // 0x3a9118: StoreField: r1->field_7 = r0
    //     0x3a9118: stur         r0, [r1, #7]
    //     0x3a911c: ldur         r2, [fp, #-0x30]
    // 0x3a9120: StoreField: r1->field_b = r2
    //     0x3a9120: stur         r2, [r1, #0xb]
    // 0x3a9124: r2 = pp[0xdf6]
    //     0x3a9124: add          r2, PP, #0xe, lsl #12
    //     0x3a9128: ldr          r2, [r2, #0xde8]
    // 0x3a912c: StoreField: r1->field_1f = r2
    //     0x3a912c: stur         r2, [r1, #0x1f]
    // 0x3a9130: r2 = pp[0x5a1]
    //     0x3a9130: add          r2, PP, #0x11, lsl #12
    //     0x3a9134: ldr          r2, [r2, #0x590]
    // 0x3a9138: StoreField: r1->field_13 = r2
    //     0x3a9138: stur         r2, [r1, #0x13]
    // 0x3a913c: r0 = call 0x31d844
    //     0x3a913c: bl           0x31d844
    // 0x3a9140: r1 = r0
    //     0x3a9140: mov          r1, r0
    // 0x3a9144: r0 = pp[0x6310]
    //     0x3a9144: ldr          r0, [PP, #0x6310]
    //     0x3a9148: stur         r1, [fp, #-0x30]
    // 0x3a914c: StoreField: r1->field_27 = r0
    //     0x3a914c: stur         r0, [r1, #0x27]
    //     0x3a9150: fmov         d0, #1.00000000
    // 0x3a9154: StoreField: r1->field_7 = d0
    //     0x3a9154: stur         d0, [r1, #7]
    // 0x3a9158: d1 = pp[0xb89]
    //     0x3a9158: add          r17, PP, #0x11, lsl #12
    //     0x3a915c: ldr          d1, [r17, #0xb78]
    // 0x3a9160: StoreField: r1->field_f = d1
    //     0x3a9160: stur         d1, [r1, #0xf]
    // 0x3a9164: d2 = pp[0x4ca]
    //     0x3a9164: add          r17, PP, #0x12, lsl #12
    //     0x3a9168: ldr          d2, [r17, #0x4b8]
    // 0x3a916c: ArrayStore: r1[0] = d2  ; List_8
    //     0x3a916c: stur         d2, [r1, #0x17]
    // 0x3a9170: d3 = pp[0xaf0]
    //     0x3a9170: add          r17, PP, #0x10, lsl #12
    //     0x3a9174: ldr          d3, [r17, #0xae0]
    // 0x3a9178: StoreField: r1->field_1f = d3
    //     0x3a9178: stur         d3, [r1, #0x1f]
    // 0x3a917c: r0 = call 0x31abec
    //     0x3a917c: bl           0x31abec
    // 0x3a9180: r1 = r0
    //     0x3a9180: mov          r1, r0
    //     0x3a9184: add          r0, NULL, #0x20
    //     0x3a9188: stur         r1, [fp, #-0x40]
    // 0x3a918c: StoreField: r1->field_7 = r0
    //     0x3a918c: stur         r0, [r1, #7]
    //     0x3a9190: ldur         r2, [fp, #-0x30]
    // 0x3a9194: StoreField: r1->field_b = r2
    //     0x3a9194: stur         r2, [r1, #0xb]
    // 0x3a9198: r2 = pp[0xb5e]
    //     0x3a9198: add          r2, PP, #0xe, lsl #12
    //     0x3a919c: ldr          r2, [r2, #0xb50]
    // 0x3a91a0: StoreField: r1->field_1f = r2
    //     0x3a91a0: stur         r2, [r1, #0x1f]
    // 0x3a91a4: r3 = pp[0xe4e]
    //     0x3a91a4: add          r3, PP, #0xe, lsl #12
    //     0x3a91a8: ldr          r3, [r3, #0xe40]
    // 0x3a91ac: StoreField: r1->field_23 = r3
    //     0x3a91ac: stur         r3, [r1, #0x23]
    // 0x3a91b0: r0 = call 0x31d844
    //     0x3a91b0: bl           0x31d844
    // 0x3a91b4: r1 = r0
    //     0x3a91b4: mov          r1, r0
    // 0x3a91b8: r0 = pp[0x6310]
    //     0x3a91b8: ldr          r0, [PP, #0x6310]
    //     0x3a91bc: stur         r1, [fp, #-0x30]
    // 0x3a91c0: StoreField: r1->field_27 = r0
    //     0x3a91c0: stur         r0, [r1, #0x27]
    //     0x3a91c4: fmov         d0, #1.00000000
    // 0x3a91c8: StoreField: r1->field_7 = d0
    //     0x3a91c8: stur         d0, [r1, #7]
    // 0x3a91cc: d1 = pp[0xb89]
    //     0x3a91cc: add          r17, PP, #0x11, lsl #12
    //     0x3a91d0: ldr          d1, [r17, #0xb78]
    // 0x3a91d4: StoreField: r1->field_f = d1
    //     0x3a91d4: stur         d1, [r1, #0xf]
    // 0x3a91d8: d1 = pp[0x4ca]
    //     0x3a91d8: add          r17, PP, #0x12, lsl #12
    //     0x3a91dc: ldr          d1, [r17, #0x4b8]
    // 0x3a91e0: ArrayStore: r1[0] = d1  ; List_8
    //     0x3a91e0: stur         d1, [r1, #0x17]
    // 0x3a91e4: d1 = pp[0xaf0]
    //     0x3a91e4: add          r17, PP, #0x10, lsl #12
    //     0x3a91e8: ldr          d1, [r17, #0xae0]
    // 0x3a91ec: StoreField: r1->field_1f = d1
    //     0x3a91ec: stur         d1, [r1, #0x1f]
    // 0x3a91f0: r0 = call 0x31abec
    //     0x3a91f0: bl           0x31abec
    // 0x3a91f4: r1 = r0
    //     0x3a91f4: mov          r1, r0
    //     0x3a91f8: add          r0, NULL, #0x20
    //     0x3a91fc: stur         r1, [fp, #-0x48]
    // 0x3a9200: StoreField: r1->field_7 = r0
    //     0x3a9200: stur         r0, [r1, #7]
    //     0x3a9204: ldur         r2, [fp, #-0x30]
    // 0x3a9208: StoreField: r1->field_b = r2
    //     0x3a9208: stur         r2, [r1, #0xb]
    // 0x3a920c: r2 = pp[0xb5e]
    //     0x3a920c: add          r2, PP, #0xe, lsl #12
    //     0x3a9210: ldr          r2, [r2, #0xb50]
    // 0x3a9214: StoreField: r1->field_1f = r2
    //     0x3a9214: stur         r2, [r1, #0x1f]
    // 0x3a9218: r3 = pp[0xe97]
    //     0x3a9218: add          r3, PP, #0xf, lsl #12
    //     0x3a921c: ldr          r3, [r3, #0xe88]
    // 0x3a9220: StoreField: r1->field_23 = r3
    //     0x3a9220: stur         r3, [r1, #0x23]
    // 0x3a9224: r0 = call 0x31d844
    //     0x3a9224: bl           0x31d844
    // 0x3a9228: r1 = r0
    //     0x3a9228: mov          r1, r0
    // 0x3a922c: r0 = pp[0x6310]
    //     0x3a922c: ldr          r0, [PP, #0x6310]
    //     0x3a9230: stur         r1, [fp, #-0x30]
    // 0x3a9234: StoreField: r1->field_27 = r0
    //     0x3a9234: stur         r0, [r1, #0x27]
    //     0x3a9238: fmov         d0, #1.00000000
    // 0x3a923c: StoreField: r1->field_7 = d0
    //     0x3a923c: stur         d0, [r1, #7]
    // 0x3a9240: d0 = pp[0xae0]
    //     0x3a9240: add          r17, PP, #0x10, lsl #12
    //     0x3a9244: ldr          d0, [r17, #0xad0]
    // 0x3a9248: StoreField: r1->field_f = d0
    //     0x3a9248: stur         d0, [r1, #0xf]
    // 0x3a924c: d0 = pp[0xae8]
    //     0x3a924c: add          r17, PP, #0x10, lsl #12
    //     0x3a9250: ldr          d0, [r17, #0xad8]
    // 0x3a9254: ArrayStore: r1[0] = d0  ; List_8
    //     0x3a9254: stur         d0, [r1, #0x17]
    // 0x3a9258: d0 = pp[0xaf0]
    //     0x3a9258: add          r17, PP, #0x10, lsl #12
    //     0x3a925c: ldr          d0, [r17, #0xae0]
    // 0x3a9260: StoreField: r1->field_1f = d0
    //     0x3a9260: stur         d0, [r1, #0x1f]
    // 0x3a9264: r0 = call 0x31abec
    //     0x3a9264: bl           0x31abec
    // 0x3a9268: r2 = r0
    //     0x3a9268: mov          r2, r0
    //     0x3a926c: add          r0, NULL, #0x20
    //     0x3a9270: stur         r2, [fp, #-0x50]
    // 0x3a9274: StoreField: r2->field_7 = r0
    //     0x3a9274: stur         r0, [r2, #7]
    //     0x3a9278: ldur         r1, [fp, #-0x30]
    // 0x3a927c: StoreField: r2->field_b = r1
    //     0x3a927c: stur         r1, [r2, #0xb]
    // 0x3a9280: r1 = pp[0xb5e]
    //     0x3a9280: add          r1, PP, #0xe, lsl #12
    //     0x3a9284: ldr          r1, [r1, #0xb50]
    // 0x3a9288: StoreField: r2->field_1f = r1
    //     0x3a9288: stur         r1, [r2, #0x1f]
    // 0x3a928c: r1 = pp[0xe4e]
    //     0x3a928c: add          r1, PP, #0xe, lsl #12
    //     0x3a9290: ldr          r1, [r1, #0xe40]
    // 0x3a9294: StoreField: r2->field_23 = r1
    //     0x3a9294: stur         r1, [r2, #0x23]
    // 0x3a9298: r1 = pp[0x984]
    //     0x3a9298: add          r1, PP, #0xc, lsl #12
    //     0x3a929c: ldr          r1, [r1, #0x978]
    // 0x3a92a0: r4 = pp[0x4c0]
    //     0x3a92a0: ldr          r4, [PP, #0x4c0]
    // 0x3a92a4: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3a92a4: bl           0x3a1dcc
    // 0x3a92a8: r1 = pp[0x984]
    //     0x3a92a8: add          r1, PP, #0xc, lsl #12
    //     0x3a92ac: ldr          r1, [r1, #0x978]
    //     0x3a92b0: stur         r0, [fp, #-0x30]
    // 0x3a92b4: r4 = pp[0x4c0]
    //     0x3a92b4: ldr          r4, [PP, #0x4c0]
    // 0x3a92b8: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3a92b8: bl           0x3a1dcc
    // 0x3a92bc: r1 = pp[0x994]
    //     0x3a92bc: add          r1, PP, #0xc, lsl #12
    //     0x3a92c0: ldr          r1, [r1, #0x988]
    //     0x3a92c4: stur         r0, [fp, #-0x58]
    // 0x3a92c8: r4 = pp[0x4c0]
    //     0x3a92c8: ldr          r4, [PP, #0x4c0]
    // 0x3a92cc: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3a92cc: bl           0x3a1dcc
    //     0x3a92d0: stur         r0, [fp, #-0x60]
    //     0x3a92d4: ldur         BARRIER, [fp, #-0x30]
    // 0x3a92d8: lr = pp[0x1af8]
    //     0x3a92d8: ldr          lr, [PP, #0x1af8]
    //     0x3a92dc: stp          lr, BARRIER, [SP]
    // 0x3a92e0: r0 = dart_core__StringBase::op_add()
    //     0x3a92e0: bl           0x281718
    // 0x3a92e4: BARRIER = pp[0x25e0]
    //     0x3a92e4: ldr          BARRIER, [PP, #0x25e0]
    //     0x3a92e8: stp          BARRIER, r0, [SP]
    // 0x3a92ec: r0 = dart_core__StringBase::op_add()
    //     0x3a92ec: bl           0x281718
    //     0x3a92f0: stur         r0, [fp, #-0x30]
    //     0x3a92f4: ldur         BARRIER, [fp, #-0x58]
    // 0x3a92f8: lr = pp[0x1af8]
    //     0x3a92f8: ldr          lr, [PP, #0x1af8]
    //     0x3a92fc: stp          lr, BARRIER, [SP]
    // 0x3a9300: r0 = dart_core__StringBase::op_add()
    //     0x3a9300: bl           0x281718
    // 0x3a9304: BARRIER = pp[0x25e0]
    //     0x3a9304: ldr          BARRIER, [PP, #0x25e0]
    //     0x3a9308: stp          BARRIER, r0, [SP]
    // 0x3a930c: r0 = dart_core__StringBase::op_add()
    //     0x3a930c: bl           0x281718
    //     0x3a9310: stur         r0, [fp, #-0x58]
    // 0x3a9314: r0 = call 0x391a04
    //     0x3a9314: bl           0x391a04
    //     0x3a9318: stur         r0, [fp, #-0x68]
    // 0x3a931c: BARRIER = pp[0x5458]
    //     0x3a931c: ldr          BARRIER, [PP, #0x5458]
    // 0x3a9320: lr = pp[0x4d2]
    //     0x3a9320: add          lr, PP, #0x12, lsl #12
    //     0x3a9324: ldr          lr, [lr, #0x4c0]
    //     0x3a9328: stp          lr, BARRIER, [SP]
    // 0x3a932c: r1 = r0
    //     0x3a932c: mov          r1, r0
    // 0x3a9330: r4 = pp[0xd2]
    //     0x3a9330: add          r4, PP, #0xa, lsl #12
    //     0x3a9334: ldr          r4, [r4, #0xc8]
    // 0x3a9338: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a9338: bl           0x391490
    //     0x3a933c: ldur         r1, [fp, #-0x28]
    //     0x3a9340: ldur         r2, [fp, #-0x38]
    // 0x3a9344: r0 = soul_flutter_international$biz$party$page_party_lucky_bag_::_myWallet()
    //     0x3a9344: bl           0x3a6828
    // 0x3a9348: r1 = pp[0x5e7]
    //     0x3a9348: add          r1, PP, #0xf, lsl #12
    //     0x3a934c: ldr          r1, [r1, #0x5d8]
    //     0x3a9350: stur         r0, [fp, #-0x28]
    // 0x3a9354: r0 = call 0x399e40
    //     0x3a9354: bl           0x399e40
    // 0x3a9358: r1 = r0
    //     0x3a9358: mov          r1, r0
    // 0x3a935c: r0 = pp[0x52c8]
    //     0x3a935c: ldr          r0, [PP, #0x52c8]
    //     0x3a9360: stur         r1, [fp, #-0x38]
    // 0x3a9364: ArrayStore: r1[0] = r0  ; List_8
    //     0x3a9364: stur         r0, [r1, #0x17]
    // 0x3a9368: StoreField: r1->field_1b = r0
    //     0x3a9368: stur         r0, [r1, #0x1b]
    //     0x3a936c: ldur         r0, [fp, #-0x28]
    // 0x3a9370: StoreField: r1->field_b = r0
    //     0x3a9370: stur         r0, [r1, #0xb]
    // 0x3a9374: r0 = call 0x3a67fc
    //     0x3a9374: bl           0x3a67fc
    // 0x3a9378: r2 = r0
    //     0x3a9378: mov          r2, r0
    //     0x3a937c: ldur         r0, [fp, #-0x20]
    //     0x3a9380: stur         r2, [fp, #-0x28]
    // 0x3a9384: StoreField: r2->field_b = r0
    //     0x3a9384: stur         r0, [r2, #0xb]
    //     0x3a9388: ldur         r0, [fp, #-0x10]
    // 0x3a938c: StoreField: r2->field_f = r0
    //     0x3a938c: stur         r0, [r2, #0xf]
    // 0x3a9390: d0 = pp[0x4c2]
    //     0x3a9390: add          r17, PP, #0x12, lsl #12
    //     0x3a9394: ldr          d0, [r17, #0x4b0]
    // 0x3a9398: StoreField: r2->field_13 = d0
    //     0x3a9398: stur         d0, [r2, #0x13]
    //     0x3a939c: add          r0, NULL, #0x20
    // 0x3a93a0: StoreField: r2->field_1b = r0
    //     0x3a93a0: stur         r0, [r2, #0x1b]
    //     0x3a93a4: ldur         d0, [fp, #-0x70]
    //     0x3a93a8: ldp          r0, r1, [THR, #0x50]
    //     0x3a93ac: add          r0, r0, #0x10
    //     0x3a93b0: cmp          r1, r0
    // 0x3a93b4: b.ls 0x3a97d8
    //     0x3a93b4: b.ls         0x3a97d8
    //     0x3a93b8: str          r0, [THR, #0x50]
    //     0x3a93bc: sub          r0, r0, #0xf
    //     0x3a93c0: mov          r1, #0xe15c
    //     0x3a93c4: movk         r1, #3, lsl #16
    //     0x3a93c8: stur         r1, [r0, #-1]
    // 0x3a93cc: StoreField: r0->field_7 = d0
    //     0x3a93cc: stur         d0, [r0, #7]
    //     0x3a93d0: stur         r0, [fp, #-0x10]
    // 0x3a93d4: r1 = pp[0x5e7]
    //     0x3a93d4: add          r1, PP, #0xf, lsl #12
    //     0x3a93d8: ldr          r1, [r1, #0x5d8]
    // 0x3a93dc: r0 = call 0x399e40
    //     0x3a93dc: bl           0x399e40
    // 0x3a93e0: r3 = r0
    //     0x3a93e0: mov          r3, r0
    //     0x3a93e4: ldur         r0, [fp, #-0x10]
    //     0x3a93e8: stur         r3, [fp, #-0x20]
    // 0x3a93ec: StoreField: r3->field_13 = r0
    //     0x3a93ec: stur         r0, [r3, #0x13]
    // 0x3a93f0: r0 = pp[0xbb1]
    //     0x3a93f0: add          r0, PP, #0x11, lsl #12
    //     0x3a93f4: ldr          r0, [r0, #0xba0]
    // 0x3a93f8: ArrayStore: r3[0] = r0  ; List_8
    //     0x3a93f8: stur         r0, [r3, #0x17]
    //     0x3a93fc: ldur         r0, [fp, #-0x28]
    // 0x3a9400: StoreField: r3->field_b = r0
    //     0x3a9400: stur         r0, [r3, #0xb]
    // 0x3a9404: r1 = NULL
    //     0x3a9404: mov          r1, NULL
    //     0x3a9408: mov          r2, #6
    // 0x3a940c: r0 = call 0x61f920
    //     0x3a940c: bl           0x61f920
    // 0x3a9410: r2 = r0
    //     0x3a9410: mov          r2, r0
    //     0x3a9414: ldur         r0, [fp, #-0x68]
    //     0x3a9418: stur         r2, [fp, #-0x10]
    // 0x3a941c: StoreField: r2->field_f = r0
    //     0x3a941c: stur         r0, [r2, #0xf]
    //     0x3a9420: ldur         r0, [fp, #-0x38]
    // 0x3a9424: StoreField: r2->field_13 = r0
    //     0x3a9424: stur         r0, [r2, #0x13]
    //     0x3a9428: ldur         r0, [fp, #-0x20]
    // 0x3a942c: ArrayStore: r2[0] = r0  ; List_8
    //     0x3a942c: stur         r0, [r2, #0x17]
    // 0x3a9430: r1 = pp[0x5c58]
    //     0x3a9430: ldr          r1, [PP, #0x5c58]
    // 0x3a9434: r0 = call 0x61e854
    //     0x3a9434: bl           0x61e854
    // 0x3a9438: r1 = r0
    //     0x3a9438: mov          r1, r0
    //     0x3a943c: ldur         r0, [fp, #-0x10]
    //     0x3a9440: stur         r1, [fp, #-0x20]
    // 0x3a9444: StoreField: r1->field_f = r0
    //     0x3a9444: stur         r0, [r1, #0xf]
    //     0x3a9448: mov          r2, #6
    // 0x3a944c: StoreField: r1->field_b = r2
    //     0x3a944c: stur         r2, [r1, #0xb]
    // 0x3a9450: r0 = call 0x39e6f4
    //     0x3a9450: bl           0x39e6f4
    // 0x3a9454: r1 = r0
    //     0x3a9454: mov          r1, r0
    // 0x3a9458: r0 = pp[0xf0e]
    //     0x3a9458: add          r0, PP, #0xe, lsl #12
    //     0x3a945c: ldr          r0, [r0, #0xf00]
    //     0x3a9460: stur         r1, [fp, #-0x28]
    // 0x3a9464: StoreField: r1->field_f = r0
    //     0x3a9464: stur         r0, [r1, #0xf]
    // 0x3a9468: r0 = pp[0xf16]
    //     0x3a9468: add          r0, PP, #0xe, lsl #12
    //     0x3a946c: ldr          r0, [r0, #0xf08]
    // 0x3a9470: ArrayStore: r1[0] = r0  ; List_8
    //     0x3a9470: stur         r0, [r1, #0x17]
    // 0x3a9474: r0 = pp[0xf1e]
    //     0x3a9474: add          r0, PP, #0xe, lsl #12
    //     0x3a9478: ldr          r0, [r0, #0xf10]
    // 0x3a947c: StoreField: r1->field_1b = r0
    //     0x3a947c: stur         r0, [r1, #0x1b]
    //     0x3a9480: ldur         r0, [fp, #-0x20]
    // 0x3a9484: StoreField: r1->field_b = r0
    //     0x3a9484: stur         r0, [r1, #0xb]
    //     0x3a9488: ldur         r0, [fp, #-8]
    // 0x3a948c: LoadField: r2 = r0->field_f
    //     0x3a948c: ldur         r2, [r0, #0xf]
    //     0x3a9490: add          r2, r2, HEAP, lsl #32
    //     0x3a9494: stur         r2, [fp, #-0x10]
    //     0x3a9498: tbnz         r2, #4, 0x3a9544
    //     0x3a949c: ldur         r3, [fp, #-0x40]
    //     0x3a94a0: ldur         r0, [fp, #-0x30]
    // 0x3a94a4: r0 = call 0x2e3578
    //     0x3a94a4: bl           0x2e3578
    //     0x3a94a8: stur         r0, [fp, #-8]
    // 0x3a94ac: StoreField: r0->field_7 = xzr
    //     0x3a94ac: stur         xzr, [r0, #7]
    //     0x3a94b0: fmov         d0, #29.00000000
    // 0x3a94b4: StoreField: r0->field_f = d0
    //     0x3a94b4: stur         d0, [r0, #0xf]
    // 0x3a94b8: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3a94b8: stur         xzr, [r0, #0x17]
    // 0x3a94bc: StoreField: r0->field_1f = xzr
    //     0x3a94bc: stur         xzr, [r0, #0x1f]
    // 0x3a94c0: r0 = call 0x393bf8
    //     0x3a94c0: bl           0x393bf8
    // 0x3a94c4: r1 = r0
    //     0x3a94c4: mov          r1, r0
    //     0x3a94c8: ldur         r0, [fp, #-0x30]
    //     0x3a94cc: stur         r1, [fp, #-0x20]
    // 0x3a94d0: StoreField: r1->field_b = r0
    //     0x3a94d0: stur         r0, [r1, #0xb]
    //     0x3a94d4: ldur         r0, [fp, #-0x40]
    // 0x3a94d8: StoreField: r1->field_13 = r0
    //     0x3a94d8: stur         r0, [r1, #0x13]
    // 0x3a94dc: r0 = call 0x391a04
    //     0x3a94dc: bl           0x391a04
    //     0x3a94e0: stur         r0, [fp, #-0x30]
    //     0x3a94e4: ldur         BARRIER, [fp, #-8]
    // 0x3a94e8: lr = pp[0xaae]
    //     0x3a94e8: add          lr, PP, #0xe, lsl #12
    //     0x3a94ec: ldr          lr, [lr, #0xaa0]
    //     0x3a94f0: stp          lr, BARRIER, [SP, #8]
    //     0x3a94f4: ldur         BARRIER, [fp, #-0x20]
    //     0x3a94f8: str          BARRIER, [SP]
    // 0x3a94fc: r1 = r0
    //     0x3a94fc: mov          r1, r0
    // 0x3a9500: r4 = pp[0xcb8]
    //     0x3a9500: add          r4, PP, #0x10, lsl #12
    //     0x3a9504: ldr          r4, [r4, #0xca8]
    // 0x3a9508: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a9508: bl           0x391490
    // 0x3a950c: r0 = call 0x3a1d94
    //     0x3a950c: bl           0x3a1d94
    //     0x3a9510: ldur         r2, [fp, #-0x18]
    // 0x3a9514: r1 = pp[0x4da]
    //     0x3a9514: add          r1, PP, #0x12, lsl #12
    //     0x3a9518: ldr          r1, [r1, #0x4c8]
    //     0x3a951c: stur         r0, [fp, #-8]
    // 0x3a9520: r0 = call 0x61ec54
    //     0x3a9520: bl           0x61ec54
    //     0x3a9524: ldur         BARRIER, [fp, #-0x30]
    //     0x3a9528: stp          r0, BARRIER, [SP]
    //     0x3a952c: ldur         r1, [fp, #-8]
    // 0x3a9530: r4 = pp[0xece]
    //     0x3a9530: add          r4, PP, #0xe, lsl #12
    //     0x3a9534: ldr          r4, [r4, #0xec0]
    // 0x3a9538: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x3a9538: bl           0x3a18c4
    //     0x3a953c: ldur         r1, [fp, #-8]
    // 0x3a9540: b 0x3a96d0
    //     0x3a9540: b            0x3a96d0
    //     0x3a9544: ldur         r3, [fp, #-0x48]
    //     0x3a9548: ldur         r2, [fp, #-0x50]
    //     0x3a954c: ldur         r1, [fp, #-0x60]
    //     0x3a9550: ldur         r0, [fp, #-0x58]
    // 0x3a9554: r0 = call 0x2e3578
    //     0x3a9554: bl           0x2e3578
    //     0x3a9558: stur         r0, [fp, #-8]
    // 0x3a955c: StoreField: r0->field_7 = xzr
    //     0x3a955c: stur         xzr, [r0, #7]
    //     0x3a9560: fmov         d0, #18.00000000
    // 0x3a9564: StoreField: r0->field_f = d0
    //     0x3a9564: stur         d0, [r0, #0xf]
    // 0x3a9568: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3a9568: stur         xzr, [r0, #0x17]
    // 0x3a956c: StoreField: r0->field_1f = xzr
    //     0x3a956c: stur         xzr, [r0, #0x1f]
    // 0x3a9570: r0 = call 0x393bf8
    //     0x3a9570: bl           0x393bf8
    // 0x3a9574: r1 = r0
    //     0x3a9574: mov          r1, r0
    //     0x3a9578: ldur         r0, [fp, #-0x60]
    //     0x3a957c: stur         r1, [fp, #-0x20]
    // 0x3a9580: StoreField: r1->field_b = r0
    //     0x3a9580: stur         r0, [r1, #0xb]
    //     0x3a9584: ldur         r0, [fp, #-0x50]
    // 0x3a9588: StoreField: r1->field_13 = r0
    //     0x3a9588: stur         r0, [r1, #0x13]
    // 0x3a958c: r0 = call 0x3949ec
    //     0x3a958c: bl           0x3949ec
    // 0x3a9590: r1 = r0
    //     0x3a9590: mov          r1, r0
    // 0x3a9594: r0 = pp[0x34a]
    //     0x3a9594: add          r0, PP, #0x12, lsl #12
    //     0x3a9598: ldr          r0, [r0, #0x338]
    //     0x3a959c: stur         r1, [fp, #-0x30]
    // 0x3a95a0: StoreField: r1->field_13 = r0
    //     0x3a95a0: stur         r0, [r1, #0x13]
    // 0x3a95a4: r0 = call 0x393bf8
    //     0x3a95a4: bl           0x393bf8
    // 0x3a95a8: r1 = r0
    //     0x3a95a8: mov          r1, r0
    //     0x3a95ac: ldur         r0, [fp, #-0x58]
    //     0x3a95b0: stur         r1, [fp, #-0x38]
    // 0x3a95b4: StoreField: r1->field_b = r0
    //     0x3a95b4: stur         r0, [r1, #0xb]
    //     0x3a95b8: ldur         r0, [fp, #-0x48]
    // 0x3a95bc: StoreField: r1->field_13 = r0
    //     0x3a95bc: stur         r0, [r1, #0x13]
    // 0x3a95c0: r0 = call 0x3a1d94
    //     0x3a95c0: bl           0x3a1d94
    //     0x3a95c4: ldur         r2, [fp, #-0x18]
    // 0x3a95c8: r1 = pp[0x4e2]
    //     0x3a95c8: add          r1, PP, #0x12, lsl #12
    //     0x3a95cc: ldr          r1, [r1, #0x4d0]
    //     0x3a95d0: stur         r0, [fp, #-0x18]
    // 0x3a95d4: r0 = call 0x61ec54
    //     0x3a95d4: bl           0x61ec54
    //     0x3a95d8: ldur         BARRIER, [fp, #-0x38]
    //     0x3a95dc: stp          r0, BARRIER, [SP]
    //     0x3a95e0: ldur         r1, [fp, #-0x18]
    // 0x3a95e4: r4 = pp[0xece]
    //     0x3a95e4: add          r4, PP, #0xe, lsl #12
    //     0x3a95e8: ldr          r4, [r4, #0xec0]
    // 0x3a95ec: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x3a95ec: bl           0x3a18c4
    // 0x3a95f0: r1 = NULL
    //     0x3a95f0: mov          r1, NULL
    //     0x3a95f4: mov          r2, #6
    // 0x3a95f8: r0 = call 0x61f920
    //     0x3a95f8: bl           0x61f920
    // 0x3a95fc: r2 = r0
    //     0x3a95fc: mov          r2, r0
    //     0x3a9600: ldur         r0, [fp, #-0x20]
    //     0x3a9604: stur         r2, [fp, #-0x38]
    // 0x3a9608: StoreField: r2->field_f = r0
    //     0x3a9608: stur         r0, [r2, #0xf]
    //     0x3a960c: ldur         r0, [fp, #-0x30]
    // 0x3a9610: StoreField: r2->field_13 = r0
    //     0x3a9610: stur         r0, [r2, #0x13]
    //     0x3a9614: ldur         r0, [fp, #-0x18]
    // 0x3a9618: ArrayStore: r2[0] = r0  ; List_8
    //     0x3a9618: stur         r0, [r2, #0x17]
    // 0x3a961c: r1 = pp[0x5c58]
    //     0x3a961c: ldr          r1, [PP, #0x5c58]
    // 0x3a9620: r0 = call 0x61e854
    //     0x3a9620: bl           0x61e854
    // 0x3a9624: r1 = r0
    //     0x3a9624: mov          r1, r0
    //     0x3a9628: ldur         r0, [fp, #-0x38]
    //     0x3a962c: stur         r1, [fp, #-0x18]
    // 0x3a9630: StoreField: r1->field_f = r0
    //     0x3a9630: stur         r0, [r1, #0xf]
    //     0x3a9634: mov          r2, #6
    // 0x3a9638: StoreField: r1->field_b = r2
    //     0x3a9638: stur         r2, [r1, #0xb]
    // 0x3a963c: r0 = call 0x39310c
    //     0x3a963c: bl           0x39310c
    // 0x3a9640: r1 = r0
    //     0x3a9640: mov          r1, r0
    // 0x3a9644: r0 = pp[0x862]
    //     0x3a9644: add          r0, PP, #0xa, lsl #12
    //     0x3a9648: ldr          r0, [r0, #0x858]
    //     0x3a964c: stur         r1, [fp, #-0x20]
    // 0x3a9650: StoreField: r1->field_f = r0
    //     0x3a9650: stur         r0, [r1, #0xf]
    // 0x3a9654: r2 = pp[0xaee]
    //     0x3a9654: add          r2, PP, #0xe, lsl #12
    //     0x3a9658: ldr          r2, [r2, #0xae0]
    // 0x3a965c: StoreField: r1->field_13 = r2
    //     0x3a965c: stur         r2, [r1, #0x13]
    // 0x3a9660: r3 = pp[0xaf6]
    //     0x3a9660: add          r3, PP, #0xe, lsl #12
    //     0x3a9664: ldr          r3, [r3, #0xae8]
    // 0x3a9668: ArrayStore: r1[0] = r3  ; List_8
    //     0x3a9668: stur         r3, [r1, #0x17]
    // 0x3a966c: r4 = pp[0xb6e]
    //     0x3a966c: add          r4, PP, #0xe, lsl #12
    //     0x3a9670: ldr          r4, [r4, #0xb60]
    // 0x3a9674: StoreField: r1->field_1b = r4
    //     0x3a9674: stur         r4, [r1, #0x1b]
    // 0x3a9678: r5 = pp[0xb06]
    //     0x3a9678: add          r5, PP, #0xe, lsl #12
    //     0x3a967c: ldr          r5, [r5, #0xaf8]
    // 0x3a9680: StoreField: r1->field_23 = r5
    //     0x3a9680: stur         r5, [r1, #0x23]
    // 0x3a9684: r6 = pp[0xb2]
    //     0x3a9684: add          r6, PP, #0xa, lsl #12
    //     0x3a9688: ldr          r6, [r6, #0xa8]
    // 0x3a968c: StoreField: r1->field_2b = r6
    //     0x3a968c: stur         r6, [r1, #0x2b]
    // 0x3a9690: StoreField: r1->field_2f = xzr
    //     0x3a9690: stur         xzr, [r1, #0x2f]
    //     0x3a9694: ldur         r7, [fp, #-0x18]
    // 0x3a9698: StoreField: r1->field_b = r7
    //     0x3a9698: stur         r7, [r1, #0xb]
    // 0x3a969c: r0 = call 0x391a04
    //     0x3a969c: bl           0x391a04
    //     0x3a96a0: stur         r0, [fp, #-0x18]
    //     0x3a96a4: ldur         BARRIER, [fp, #-8]
    // 0x3a96a8: lr = pp[0xaae]
    //     0x3a96a8: add          lr, PP, #0xe, lsl #12
    //     0x3a96ac: ldr          lr, [lr, #0xaa0]
    //     0x3a96b0: stp          lr, BARRIER, [SP, #8]
    //     0x3a96b4: ldur         BARRIER, [fp, #-0x20]
    //     0x3a96b8: str          BARRIER, [SP]
    // 0x3a96bc: r1 = r0
    //     0x3a96bc: mov          r1, r0
    // 0x3a96c0: r4 = pp[0xcb8]
    //     0x3a96c0: add          r4, PP, #0x10, lsl #12
    //     0x3a96c4: ldr          r4, [r4, #0xca8]
    // 0x3a96c8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a96c8: bl           0x391490
    //     0x3a96cc: ldur         r1, [fp, #-0x18]
    //     0x3a96d0: ldur         r0, [fp, #-0x10]
    //     0x3a96d4: stur         r1, [fp, #-8]
    //     0x3a96d8: tbnz         r0, #4, 0x3a96f8
    // 0x3a96dc: r0 = call 0x3949ec
    //     0x3a96dc: bl           0x3949ec
    // 0x3a96e0: r1 = r0
    //     0x3a96e0: mov          r1, r0
    // 0x3a96e4: r0 = pp[0xbb7]
    //     0x3a96e4: add          r0, PP, #0xf, lsl #12
    //     0x3a96e8: ldr          r0, [r0, #0xba8]
    // 0x3a96ec: StoreField: r1->field_13 = r0
    //     0x3a96ec: stur         r0, [r1, #0x13]
    // 0x3a96f0: r5 = r1
    //     0x3a96f0: mov          r5, r1
    // 0x3a96f4: b 0x3a9710
    //     0x3a96f4: b            0x3a9710
    // 0x3a96f8: r0 = call 0x3949ec
    //     0x3a96f8: bl           0x3949ec
    // 0x3a96fc: r1 = r0
    //     0x3a96fc: mov          r1, r0
    // 0x3a9700: r0 = pp[0x4ea]
    //     0x3a9700: add          r0, PP, #0x12, lsl #12
    //     0x3a9704: ldr          r0, [r0, #0x4d8]
    // 0x3a9708: StoreField: r1->field_13 = r0
    //     0x3a9708: stur         r0, [r1, #0x13]
    // 0x3a970c: r5 = r1
    //     0x3a970c: mov          r5, r1
    //     0x3a9710: ldur         r4, [fp, #-0x28]
    //     0x3a9714: ldur         r0, [fp, #-8]
    //     0x3a9718: mov          r3, #6
    // 0x3a971c: r2 = r3
    //     0x3a971c: mov          r2, r3
    //     0x3a9720: stur         r5, [fp, #-0x10]
    // 0x3a9724: r1 = NULL
    //     0x3a9724: mov          r1, NULL
    // 0x3a9728: r0 = call 0x61f920
    //     0x3a9728: bl           0x61f920
    // 0x3a972c: r2 = r0
    //     0x3a972c: mov          r2, r0
    //     0x3a9730: ldur         r0, [fp, #-0x28]
    //     0x3a9734: stur         r2, [fp, #-0x18]
    // 0x3a9738: StoreField: r2->field_f = r0
    //     0x3a9738: stur         r0, [r2, #0xf]
    //     0x3a973c: ldur         r0, [fp, #-8]
    // 0x3a9740: StoreField: r2->field_13 = r0
    //     0x3a9740: stur         r0, [r2, #0x13]
    //     0x3a9744: ldur         r0, [fp, #-0x10]
    // 0x3a9748: ArrayStore: r2[0] = r0  ; List_8
    //     0x3a9748: stur         r0, [r2, #0x17]
    // 0x3a974c: r1 = pp[0x5c58]
    //     0x3a974c: ldr          r1, [PP, #0x5c58]
    // 0x3a9750: r0 = call 0x61e854
    //     0x3a9750: bl           0x61e854
    // 0x3a9754: r1 = r0
    //     0x3a9754: mov          r1, r0
    //     0x3a9758: ldur         r0, [fp, #-0x18]
    //     0x3a975c: stur         r1, [fp, #-8]
    // 0x3a9760: StoreField: r1->field_f = r0
    //     0x3a9760: stur         r0, [r1, #0xf]
    //     0x3a9764: mov          r0, #6
    // 0x3a9768: StoreField: r1->field_b = r0
    //     0x3a9768: stur         r0, [r1, #0xb]
    // 0x3a976c: r0 = call 0x39310c
    //     0x3a976c: bl           0x39310c
    // 0x3a9770: r1 = pp[0x862]
    //     0x3a9770: add          r1, PP, #0xa, lsl #12
    //     0x3a9774: ldr          r1, [r1, #0x858]
    // 0x3a9778: StoreField: r0->field_f = r1
    //     0x3a9778: stur         r1, [r0, #0xf]
    // 0x3a977c: r1 = pp[0xaee]
    //     0x3a977c: add          r1, PP, #0xe, lsl #12
    //     0x3a9780: ldr          r1, [r1, #0xae0]
    // 0x3a9784: StoreField: r0->field_13 = r1
    //     0x3a9784: stur         r1, [r0, #0x13]
    // 0x3a9788: r1 = pp[0xaf6]
    //     0x3a9788: add          r1, PP, #0xe, lsl #12
    //     0x3a978c: ldr          r1, [r1, #0xae8]
    // 0x3a9790: ArrayStore: r0[0] = r1  ; List_8
    //     0x3a9790: stur         r1, [r0, #0x17]
    // 0x3a9794: r1 = pp[0xb6e]
    //     0x3a9794: add          r1, PP, #0xe, lsl #12
    //     0x3a9798: ldr          r1, [r1, #0xb60]
    // 0x3a979c: StoreField: r0->field_1b = r1
    //     0x3a979c: stur         r1, [r0, #0x1b]
    // 0x3a97a0: r1 = pp[0xb06]
    //     0x3a97a0: add          r1, PP, #0xe, lsl #12
    //     0x3a97a4: ldr          r1, [r1, #0xaf8]
    // 0x3a97a8: StoreField: r0->field_23 = r1
    //     0x3a97a8: stur         r1, [r0, #0x23]
    // 0x3a97ac: r1 = pp[0xb2]
    //     0x3a97ac: add          r1, PP, #0xa, lsl #12
    //     0x3a97b0: ldr          r1, [r1, #0xa8]
    // 0x3a97b4: StoreField: r0->field_2b = r1
    //     0x3a97b4: stur         r1, [r0, #0x2b]
    // 0x3a97b8: StoreField: r0->field_2f = xzr
    //     0x3a97b8: stur         xzr, [r0, #0x2f]
    //     0x3a97bc: ldur         r1, [fp, #-8]
    // 0x3a97c0: StoreField: r0->field_b = r1
    //     0x3a97c0: stur         r1, [r0, #0xb]
    // 0x3a97c4: SP = fp
    //     0x3a97c4: mov          SP, fp
    // 0x3a97c8: LeaveFrame
    //     0x3a97c8: ldp          fp, lr, [SP], #0x10
    // 0x3a97cc: ret
    //     0x3a97cc: ret          
    // 0x3a97d0: r0 = call 0x61fa28
    //     0x3a97d0: bl           0x61fa28
    // 0x3a97d4: b 0x3a9044
    //     0x3a97d4: b            0x3a9044
    //     0x3a97d8: str          q0, [SP, #-0x10]!
    //     0x3a97dc: str          r2, [SP, #-8]!
    // 0x3a97e0: r0 = call 0x61f878
    //     0x3a97e0: bl           0x61f878
    //     0x3a97e4: ldr          r2, [SP], #8
    //     0x3a97e8: ldr          q0, [SP], #0x10
    // 0x3a97ec: b 0x3a93cc
    //     0x3a97ec: b            0x3a93cc
  }

  _anon_closure() {
    // ** addr: 0x3a97f0, size: 0x9c
    // 0x3a97f0: EnterFrame
    //     0x3a97f0: stp          fp, lr, [SP, #-0x10]!
    //     0x3a97f4: mov          fp, SP
    // 0x3a97f8: AllocStack(0x20)
    //     0x3a97f8: sub          SP, SP, #0x20
    //     0x3a97fc: ldr          r0, [fp, #0x10]
    // 0x3a9800: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x3a9800: ldur         r2, [r0, #0x17]
    //     0x3a9804: add          r2, r2, HEAP, lsl #32
    //     0x3a9808: stur         r2, [fp, #-8]
    // 0x3a980c: CheckStackOverflow
    //     0x3a980c: ldr          BARRIER, [THR, #0x38]
    //     0x3a9810: cmp          SP, BARRIER
    //     0x3a9814: b.ls         0x3a9884
    // 0x3a9818: r1 = pp[0x4f2]
    //     0x3a9818: add          r1, PP, #0x12, lsl #12
    //     0x3a981c: ldr          r1, [r1, #0x4e0]
    // 0x3a9820: r4 = pp[0x4c0]
    //     0x3a9820: ldr          r4, [PP, #0x4c0]
    // 0x3a9824: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventClick()
    //     0x3a9824: bl           0x3a8e60
    //     0x3a9828: ldur         r0, [fp, #-8]
    // 0x3a982c: LoadField: r1 = r0->field_13
    //     0x3a982c: ldur         r1, [r0, #0x13]
    //     0x3a9830: add          r1, r1, HEAP, lsl #32
    // 0x3a9834: BARRIER = pp[0x589]
    //     0x3a9834: add          BARRIER, PP, #0x11, lsl #12
    //     0x3a9838: ldr          BARRIER, [BARRIER, #0x578]
    //     0x3a983c: stp          r1, BARRIER, [SP, #8]
    //     0x3a9840: add          BARRIER, NULL, #0x30
    //     0x3a9844: str          BARRIER, [SP]
    // 0x3a9848: r4 = pp[0x4fa]
    //     0x3a9848: add          r4, PP, #0x12, lsl #12
    //     0x3a984c: ldr          r4, [r4, #0x4e8]
    // 0x3a9850: r0 = provider$src$provider_Provider::of()
    //     0x3a9850: bl           0x3a076c
    // 0x3a9854: r1 = r0
    //     0x3a9854: mov          r1, r0
    //     0x3a9858: ldur         r0, [fp, #-8]
    // 0x3a985c: LoadField: r2 = r0->field_f
    //     0x3a985c: ldur         r2, [r0, #0xf]
    //     0x3a9860: add          r2, r2, HEAP, lsl #32
    // 0x3a9864: LoadField: r0 = r2->field_b
    //     0x3a9864: ldur         r0, [r2, #0xb]
    //     0x3a9868: add          r0, r0, HEAP, lsl #32
    // 0x3a986c: r2 = r0
    //     0x3a986c: mov          r2, r0
    // 0x3a9870: r0 = soul_flutter_international$biz$party$notifier$notifier_party_packag_list_LuckyBagListItemNotifier::sendBlessBag()
    //     0x3a9870: bl           0x3a988c
    // 0x3a9874: r0 = NULL
    //     0x3a9874: mov          r0, NULL
    // 0x3a9878: SP = fp
    //     0x3a9878: mov          SP, fp
    // 0x3a987c: LeaveFrame
    //     0x3a987c: ldp          fp, lr, [SP], #0x10
    // 0x3a9880: ret
    //     0x3a9880: ret          
    // 0x3a9884: r0 = call 0x61fa28
    //     0x3a9884: bl           0x61fa28
    // 0x3a9888: b 0x3a9818
    //     0x3a9888: b            0x3a9818
  }

  _anon_closure() {
    // ** addr: 0x3a9ba8, size: 0x9c
    // 0x3a9ba8: EnterFrame
    //     0x3a9ba8: stp          fp, lr, [SP, #-0x10]!
    //     0x3a9bac: mov          fp, SP
    // 0x3a9bb0: AllocStack(0x20)
    //     0x3a9bb0: sub          SP, SP, #0x20
    //     0x3a9bb4: ldr          r0, [fp, #0x10]
    // 0x3a9bb8: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x3a9bb8: ldur         r2, [r0, #0x17]
    //     0x3a9bbc: add          r2, r2, HEAP, lsl #32
    //     0x3a9bc0: stur         r2, [fp, #-8]
    // 0x3a9bc4: CheckStackOverflow
    //     0x3a9bc4: ldr          BARRIER, [THR, #0x38]
    //     0x3a9bc8: cmp          SP, BARRIER
    //     0x3a9bcc: b.ls         0x3a9c3c
    // 0x3a9bd0: r1 = pp[0x512]
    //     0x3a9bd0: add          r1, PP, #0x12, lsl #12
    //     0x3a9bd4: ldr          r1, [r1, #0x500]
    // 0x3a9bd8: r4 = pp[0x4c0]
    //     0x3a9bd8: ldr          r4, [PP, #0x4c0]
    // 0x3a9bdc: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventClick()
    //     0x3a9bdc: bl           0x3a8e60
    //     0x3a9be0: ldur         r0, [fp, #-8]
    // 0x3a9be4: LoadField: r1 = r0->field_13
    //     0x3a9be4: ldur         r1, [r0, #0x13]
    //     0x3a9be8: add          r1, r1, HEAP, lsl #32
    // 0x3a9bec: BARRIER = pp[0x589]
    //     0x3a9bec: add          BARRIER, PP, #0x11, lsl #12
    //     0x3a9bf0: ldr          BARRIER, [BARRIER, #0x578]
    //     0x3a9bf4: stp          r1, BARRIER, [SP, #8]
    //     0x3a9bf8: add          BARRIER, NULL, #0x30
    //     0x3a9bfc: str          BARRIER, [SP]
    // 0x3a9c00: r4 = pp[0x4fa]
    //     0x3a9c00: add          r4, PP, #0x12, lsl #12
    //     0x3a9c04: ldr          r4, [r4, #0x4e8]
    // 0x3a9c08: r0 = provider$src$provider_Provider::of()
    //     0x3a9c08: bl           0x3a076c
    // 0x3a9c0c: r1 = r0
    //     0x3a9c0c: mov          r1, r0
    //     0x3a9c10: ldur         r0, [fp, #-8]
    // 0x3a9c14: LoadField: r2 = r0->field_f
    //     0x3a9c14: ldur         r2, [r0, #0xf]
    //     0x3a9c18: add          r2, r2, HEAP, lsl #32
    // 0x3a9c1c: LoadField: r0 = r2->field_b
    //     0x3a9c1c: ldur         r0, [r2, #0xb]
    //     0x3a9c20: add          r0, r0, HEAP, lsl #32
    // 0x3a9c24: r2 = r0
    //     0x3a9c24: mov          r2, r0
    // 0x3a9c28: r0 = soul_flutter_international$biz$party$notifier$notifier_party_packag_list_LuckyBagListItemNotifier::sendBlessBag()
    //     0x3a9c28: bl           0x3a988c
    // 0x3a9c2c: r0 = NULL
    //     0x3a9c2c: mov          r0, NULL
    // 0x3a9c30: SP = fp
    //     0x3a9c30: mov          SP, fp
    // 0x3a9c34: LeaveFrame
    //     0x3a9c34: ldp          fp, lr, [SP], #0x10
    // 0x3a9c38: ret
    //     0x3a9c38: ret          
    // 0x3a9c3c: r0 = call 0x61fa28
    //     0x3a9c3c: bl           0x61fa28
    // 0x3a9c40: b 0x3a9bd0
    //     0x3a9c40: b            0x3a9bd0
  }

  build() {
    // ** addr: 0x3a9c44, size: 0x2bc
    // 0x3a9c44: EnterFrame
    //     0x3a9c44: stp          fp, lr, [SP, #-0x10]!
    //     0x3a9c48: mov          fp, SP
    // 0x3a9c4c: AllocStack(0x58)
    //     0x3a9c4c: sub          SP, SP, #0x58
    //     0x3a9c50: stur         r1, [fp, #-8]
    // 0x3a9c54: CheckStackOverflow
    //     0x3a9c54: ldr          BARRIER, [THR, #0x38]
    //     0x3a9c58: cmp          SP, BARRIER
    //     0x3a9c5c: b.ls         0x3a9ef8
    //     0x3a9c60: mov          r1, #1
    // 0x3a9c64: r0 = call 0x61e890
    //     0x3a9c64: bl           0x61e890
    // 0x3a9c68: r1 = r0
    //     0x3a9c68: mov          r1, r0
    //     0x3a9c6c: ldur         r0, [fp, #-8]
    //     0x3a9c70: stur         r1, [fp, #-0x10]
    // 0x3a9c74: StoreField: r1->field_f = r0
    //     0x3a9c74: stur         r0, [r1, #0xf]
    // 0x3a9c78: r0 = call 0x2e3578
    //     0x3a9c78: bl           0x2e3578
    //     0x3a9c7c: fmov         d0, #14.00000000
    //     0x3a9c80: stur         r0, [fp, #-0x28]
    // 0x3a9c84: StoreField: r0->field_7 = d0
    //     0x3a9c84: stur         d0, [r0, #7]
    // 0x3a9c88: StoreField: r0->field_f = xzr
    //     0x3a9c88: stur         xzr, [r0, #0xf]
    // 0x3a9c8c: ArrayStore: r0[0] = d0  ; List_8
    //     0x3a9c8c: stur         d0, [r0, #0x17]
    // 0x3a9c90: StoreField: r0->field_1f = xzr
    //     0x3a9c90: stur         xzr, [r0, #0x1f]
    //     0x3a9c94: ldur         r1, [fp, #-8]
    // 0x3a9c98: LoadField: r2 = r1->field_b
    //     0x3a9c98: ldur         r2, [r1, #0xb]
    //     0x3a9c9c: add          r2, r2, HEAP, lsl #32
    //     0x3a9ca0: stur         r2, [fp, #-0x20]
    // 0x3a9ca4: LoadField: r3 = r1->field_13
    //     0x3a9ca4: ldur         r3, [r1, #0x13]
    //     0x3a9ca8: add          r3, r3, HEAP, lsl #32
    //     0x3a9cac: stur         r3, [fp, #-0x18]
    // 0x3a9cb0: r0 = call 0x393bf8
    //     0x3a9cb0: bl           0x393bf8
    // 0x3a9cb4: r1 = r0
    //     0x3a9cb4: mov          r1, r0
    //     0x3a9cb8: ldur         r0, [fp, #-0x20]
    //     0x3a9cbc: stur         r1, [fp, #-0x30]
    // 0x3a9cc0: StoreField: r1->field_b = r0
    //     0x3a9cc0: stur         r0, [r1, #0xb]
    //     0x3a9cc4: ldur         r0, [fp, #-0x18]
    // 0x3a9cc8: StoreField: r1->field_13 = r0
    //     0x3a9cc8: stur         r0, [r1, #0x13]
    // 0x3a9ccc: r0 = call 0x3949ec
    //     0x3a9ccc: bl           0x3949ec
    // 0x3a9cd0: r1 = r0
    //     0x3a9cd0: mov          r1, r0
    // 0x3a9cd4: r0 = pp[0x402]
    //     0x3a9cd4: add          r0, PP, #0x12, lsl #12
    //     0x3a9cd8: ldr          r0, [r0, #0x3f0]
    //     0x3a9cdc: stur         r1, [fp, #-0x18]
    // 0x3a9ce0: StoreField: r1->field_13 = r0
    //     0x3a9ce0: stur         r0, [r1, #0x13]
    // 0x3a9ce4: r0 = call 0x2e3578
    //     0x3a9ce4: bl           0x2e3578
    //     0x3a9ce8: stur         r0, [fp, #-0x20]
    // 0x3a9cec: StoreField: r0->field_7 = xzr
    //     0x3a9cec: stur         xzr, [r0, #7]
    // 0x3a9cf0: StoreField: r0->field_f = xzr
    //     0x3a9cf0: stur         xzr, [r0, #0xf]
    // 0x3a9cf4: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3a9cf4: stur         xzr, [r0, #0x17]
    // 0x3a9cf8: StoreField: r0->field_1f = xzr
    //     0x3a9cf8: stur         xzr, [r0, #0x1f]
    // 0x3a9cfc: r0 = call 0x31d844
    //     0x3a9cfc: bl           0x31d844
    // 0x3a9d00: r1 = r0
    //     0x3a9d00: mov          r1, r0
    // 0x3a9d04: r0 = pp[0x6310]
    //     0x3a9d04: ldr          r0, [PP, #0x6310]
    //     0x3a9d08: stur         r1, [fp, #-0x38]
    // 0x3a9d0c: StoreField: r1->field_27 = r0
    //     0x3a9d0c: stur         r0, [r1, #0x27]
    //     0x3a9d10: fmov         d0, #1.00000000
    // 0x3a9d14: StoreField: r1->field_7 = d0
    //     0x3a9d14: stur         d0, [r1, #7]
    // 0x3a9d18: StoreField: r1->field_f = d0
    //     0x3a9d18: stur         d0, [r1, #0xf]
    // 0x3a9d1c: d0 = pp[0xad0]
    //     0x3a9d1c: add          r17, PP, #0x10, lsl #12
    //     0x3a9d20: ldr          d0, [r17, #0xac0]
    // 0x3a9d24: ArrayStore: r1[0] = d0  ; List_8
    //     0x3a9d24: stur         d0, [r1, #0x17]
    // 0x3a9d28: d0 = pp[0xad8]
    //     0x3a9d28: add          r17, PP, #0x10, lsl #12
    //     0x3a9d2c: ldr          d0, [r17, #0xac8]
    // 0x3a9d30: StoreField: r1->field_1f = d0
    //     0x3a9d30: stur         d0, [r1, #0x1f]
    // 0x3a9d34: r0 = call 0x391a04
    //     0x3a9d34: bl           0x391a04
    //     0x3a9d38: stur         r0, [fp, #-0x40]
    //     0x3a9d3c: ldur         BARRIER, [fp, #-0x20]
    // 0x3a9d40: lr = pp[0x53b0]
    //     0x3a9d40: ldr          lr, [PP, #0x53b0]
    //     0x3a9d44: stp          lr, BARRIER, [SP, #8]
    //     0x3a9d48: ldur         BARRIER, [fp, #-0x38]
    //     0x3a9d4c: str          BARRIER, [SP]
    // 0x3a9d50: r1 = r0
    //     0x3a9d50: mov          r1, r0
    // 0x3a9d54: r4 = pp[0x268]
    //     0x3a9d54: add          r4, PP, #0x10, lsl #12
    //     0x3a9d58: ldr          r4, [r4, #0x258]
    // 0x3a9d5c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a9d5c: bl           0x391490
    //     0x3a9d60: ldur         r0, [fp, #-8]
    // 0x3a9d64: LoadField: r3 = r0->field_f
    //     0x3a9d64: ldur         r3, [r0, #0xf]
    //     0x3a9d68: add          r3, r3, HEAP, lsl #32
    //     0x3a9d6c: ldur         r2, [fp, #-0x10]
    //     0x3a9d70: stur         r3, [fp, #-0x20]
    // 0x3a9d74: r1 = pp[0x462]
    //     0x3a9d74: add          r1, PP, #0x12, lsl #12
    //     0x3a9d78: ldr          r1, [r1, #0x450]
    // 0x3a9d7c: r0 = call 0x61ec54
    //     0x3a9d7c: bl           0x61ec54
    // 0x3a9d80: BARRIER = pp[0x46a]
    //     0x3a9d80: add          BARRIER, PP, #0x12, lsl #12
    //     0x3a9d84: ldr          BARRIER, [BARRIER, #0x458]
    //     0x3a9d88: ldur         lr, [fp, #-0x20]
    //     0x3a9d8c: stp          lr, BARRIER, [SP, #8]
    //     0x3a9d90: str          r0, [SP]
    // 0x3a9d94: r4 = pp[0x58]
    //     0x3a9d94: ldr          r4, [PP, #0x58]
    // 0x3a9d98: r0 = dart_collection_ListBase::map()
    //     0x3a9d98: bl           0x3bd500
    // 0x3a9d9c: LoadField: r1 = r0->field_7
    //     0x3a9d9c: ldur         r1, [r0, #7]
    //     0x3a9da0: add          r1, r1, HEAP, lsl #32
    // 0x3a9da4: r2 = r0
    //     0x3a9da4: mov          r2, r0
    // 0x3a9da8: r0 = dart_core__GrowableList::factory_ctor_of()
    //     0x3a9da8: bl           0x276db0
    //     0x3a9dac: stur         r0, [fp, #-8]
    // 0x3a9db0: r0 = call 0x39310c
    //     0x3a9db0: bl           0x39310c
    // 0x3a9db4: r3 = r0
    //     0x3a9db4: mov          r3, r0
    // 0x3a9db8: r0 = pp[0x862]
    //     0x3a9db8: add          r0, PP, #0xa, lsl #12
    //     0x3a9dbc: ldr          r0, [r0, #0x858]
    //     0x3a9dc0: stur         r3, [fp, #-0x10]
    // 0x3a9dc4: StoreField: r3->field_f = r0
    //     0x3a9dc4: stur         r0, [r3, #0xf]
    // 0x3a9dc8: r4 = pp[0xaee]
    //     0x3a9dc8: add          r4, PP, #0xe, lsl #12
    //     0x3a9dcc: ldr          r4, [r4, #0xae0]
    // 0x3a9dd0: StoreField: r3->field_13 = r4
    //     0x3a9dd0: stur         r4, [r3, #0x13]
    // 0x3a9dd4: r5 = pp[0xaf6]
    //     0x3a9dd4: add          r5, PP, #0xe, lsl #12
    //     0x3a9dd8: ldr          r5, [r5, #0xae8]
    // 0x3a9ddc: ArrayStore: r3[0] = r5  ; List_8
    //     0x3a9ddc: stur         r5, [r3, #0x17]
    // 0x3a9de0: r6 = pp[0xb6e]
    //     0x3a9de0: add          r6, PP, #0xe, lsl #12
    //     0x3a9de4: ldr          r6, [r6, #0xb60]
    // 0x3a9de8: StoreField: r3->field_1b = r6
    //     0x3a9de8: stur         r6, [r3, #0x1b]
    // 0x3a9dec: r7 = pp[0xb06]
    //     0x3a9dec: add          r7, PP, #0xe, lsl #12
    //     0x3a9df0: ldr          r7, [r7, #0xaf8]
    // 0x3a9df4: StoreField: r3->field_23 = r7
    //     0x3a9df4: stur         r7, [r3, #0x23]
    // 0x3a9df8: r8 = pp[0xb2]
    //     0x3a9df8: add          r8, PP, #0xa, lsl #12
    //     0x3a9dfc: ldr          r8, [r8, #0xa8]
    // 0x3a9e00: StoreField: r3->field_2b = r8
    //     0x3a9e00: stur         r8, [r3, #0x2b]
    // 0x3a9e04: StoreField: r3->field_2f = xzr
    //     0x3a9e04: stur         xzr, [r3, #0x2f]
    //     0x3a9e08: ldur         r1, [fp, #-8]
    // 0x3a9e0c: StoreField: r3->field_b = r1
    //     0x3a9e0c: stur         r1, [r3, #0xb]
    // 0x3a9e10: r1 = NULL
    //     0x3a9e10: mov          r1, NULL
    //     0x3a9e14: mov          r2, #8
    // 0x3a9e18: r0 = call 0x61f920
    //     0x3a9e18: bl           0x61f920
    // 0x3a9e1c: r2 = r0
    //     0x3a9e1c: mov          r2, r0
    //     0x3a9e20: ldur         r0, [fp, #-0x30]
    //     0x3a9e24: stur         r2, [fp, #-8]
    // 0x3a9e28: StoreField: r2->field_f = r0
    //     0x3a9e28: stur         r0, [r2, #0xf]
    //     0x3a9e2c: ldur         r0, [fp, #-0x18]
    // 0x3a9e30: StoreField: r2->field_13 = r0
    //     0x3a9e30: stur         r0, [r2, #0x13]
    //     0x3a9e34: ldur         r0, [fp, #-0x40]
    // 0x3a9e38: ArrayStore: r2[0] = r0  ; List_8
    //     0x3a9e38: stur         r0, [r2, #0x17]
    //     0x3a9e3c: ldur         r0, [fp, #-0x10]
    // 0x3a9e40: StoreField: r2->field_1b = r0
    //     0x3a9e40: stur         r0, [r2, #0x1b]
    // 0x3a9e44: r1 = pp[0x5c58]
    //     0x3a9e44: ldr          r1, [PP, #0x5c58]
    // 0x3a9e48: r0 = call 0x61e854
    //     0x3a9e48: bl           0x61e854
    // 0x3a9e4c: r1 = r0
    //     0x3a9e4c: mov          r1, r0
    //     0x3a9e50: ldur         r0, [fp, #-8]
    //     0x3a9e54: stur         r1, [fp, #-0x10]
    // 0x3a9e58: StoreField: r1->field_f = r0
    //     0x3a9e58: stur         r0, [r1, #0xf]
    //     0x3a9e5c: mov          r0, #8
    // 0x3a9e60: StoreField: r1->field_b = r0
    //     0x3a9e60: stur         r0, [r1, #0xb]
    // 0x3a9e64: r0 = call 0x39310c
    //     0x3a9e64: bl           0x39310c
    // 0x3a9e68: r1 = r0
    //     0x3a9e68: mov          r1, r0
    // 0x3a9e6c: r0 = pp[0x862]
    //     0x3a9e6c: add          r0, PP, #0xa, lsl #12
    //     0x3a9e70: ldr          r0, [r0, #0x858]
    //     0x3a9e74: stur         r1, [fp, #-8]
    // 0x3a9e78: StoreField: r1->field_f = r0
    //     0x3a9e78: stur         r0, [r1, #0xf]
    // 0x3a9e7c: r0 = pp[0xaee]
    //     0x3a9e7c: add          r0, PP, #0xe, lsl #12
    //     0x3a9e80: ldr          r0, [r0, #0xae0]
    // 0x3a9e84: StoreField: r1->field_13 = r0
    //     0x3a9e84: stur         r0, [r1, #0x13]
    // 0x3a9e88: r0 = pp[0xaf6]
    //     0x3a9e88: add          r0, PP, #0xe, lsl #12
    //     0x3a9e8c: ldr          r0, [r0, #0xae8]
    // 0x3a9e90: ArrayStore: r1[0] = r0  ; List_8
    //     0x3a9e90: stur         r0, [r1, #0x17]
    // 0x3a9e94: r0 = pp[0xb6e]
    //     0x3a9e94: add          r0, PP, #0xe, lsl #12
    //     0x3a9e98: ldr          r0, [r0, #0xb60]
    // 0x3a9e9c: StoreField: r1->field_1b = r0
    //     0x3a9e9c: stur         r0, [r1, #0x1b]
    // 0x3a9ea0: r0 = pp[0xb06]
    //     0x3a9ea0: add          r0, PP, #0xe, lsl #12
    //     0x3a9ea4: ldr          r0, [r0, #0xaf8]
    // 0x3a9ea8: StoreField: r1->field_23 = r0
    //     0x3a9ea8: stur         r0, [r1, #0x23]
    // 0x3a9eac: r0 = pp[0xb2]
    //     0x3a9eac: add          r0, PP, #0xa, lsl #12
    //     0x3a9eb0: ldr          r0, [r0, #0xa8]
    // 0x3a9eb4: StoreField: r1->field_2b = r0
    //     0x3a9eb4: stur         r0, [r1, #0x2b]
    // 0x3a9eb8: StoreField: r1->field_2f = xzr
    //     0x3a9eb8: stur         xzr, [r1, #0x2f]
    //     0x3a9ebc: ldur         r0, [fp, #-0x10]
    // 0x3a9ec0: StoreField: r1->field_b = r0
    //     0x3a9ec0: stur         r0, [r1, #0xb]
    // 0x3a9ec4: r0 = call 0x391a04
    //     0x3a9ec4: bl           0x391a04
    //     0x3a9ec8: stur         r0, [fp, #-0x10]
    //     0x3a9ecc: ldur         BARRIER, [fp, #-0x28]
    //     0x3a9ed0: ldur         lr, [fp, #-8]
    //     0x3a9ed4: stp          lr, BARRIER, [SP]
    // 0x3a9ed8: r1 = r0
    //     0x3a9ed8: mov          r1, r0
    // 0x3a9edc: r4 = pp[0x267]
    //     0x3a9edc: add          r4, PP, #0xf, lsl #12
    //     0x3a9ee0: ldr          r4, [r4, #0x258]
    // 0x3a9ee4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a9ee4: bl           0x391490
    //     0x3a9ee8: ldur         r0, [fp, #-0x10]
    // 0x3a9eec: SP = fp
    //     0x3a9eec: mov          SP, fp
    // 0x3a9ef0: LeaveFrame
    //     0x3a9ef0: ldp          fp, lr, [SP], #0x10
    // 0x3a9ef4: ret
    //     0x3a9ef4: ret          
    // 0x3a9ef8: r0 = call 0x61fa28
    //     0x3a9ef8: bl           0x61fa28
    // 0x3a9efc: b 0x3a9c60
    //     0x3a9efc: b            0x3a9c60
  }

  _anon_closure() {
    // ** addr: 0x3a9f00, size: 0x668
    // 0x3a9f00: EnterFrame
    //     0x3a9f00: stp          fp, lr, [SP, #-0x10]!
    //     0x3a9f04: mov          fp, SP
    // 0x3a9f08: AllocStack(0x58)
    //     0x3a9f08: sub          SP, SP, #0x58
    //     0x3a9f0c: ldr          r0, [fp, #0x18]
    // 0x3a9f10: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x3a9f10: ldur         r1, [r0, #0x17]
    //     0x3a9f14: add          r1, r1, HEAP, lsl #32
    //     0x3a9f18: stur         r1, [fp, #-8]
    // 0x3a9f1c: CheckStackOverflow
    //     0x3a9f1c: ldr          BARRIER, [THR, #0x38]
    //     0x3a9f20: cmp          SP, BARRIER
    //     0x3a9f24: b.ls         0x3aa524
    // 0x3a9f28: r0 = call 0x2e3578
    //     0x3a9f28: bl           0x2e3578
    //     0x3a9f2c: fmov         d0, #22.00000000
    //     0x3a9f30: stur         r0, [fp, #-0x20]
    // 0x3a9f34: StoreField: r0->field_7 = d0
    //     0x3a9f34: stur         d0, [r0, #7]
    //     0x3a9f38: fmov         d0, #10.00000000
    // 0x3a9f3c: StoreField: r0->field_f = d0
    //     0x3a9f3c: stur         d0, [r0, #0xf]
    // 0x3a9f40: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3a9f40: stur         xzr, [r0, #0x17]
    // 0x3a9f44: StoreField: r0->field_1f = d0
    //     0x3a9f44: stur         d0, [r0, #0x1f]
    //     0x3a9f48: ldr          r1, [fp, #0x10]
    // 0x3a9f4c: LoadField: r2 = r1->field_b
    //     0x3a9f4c: ldur         r2, [r1, #0xb]
    //     0x3a9f50: add          r2, r2, HEAP, lsl #32
    // 0x3a9f54: BARRIER = pp[0x40]
    //     0x3a9f54: ldr          BARRIER, [PP, #0x40]
    //     0x3a9f58: cmp          r2, r16
    // 0x3a9f5c: b.eq 0x3aa52c
    //     0x3a9f5c: b.eq         0x3aa52c
    //     0x3a9f60: stur         r2, [fp, #-0x18]
    // 0x3a9f64: LoadField: r3 = r1->field_f
    //     0x3a9f64: ldur         r3, [r1, #0xf]
    //     0x3a9f68: add          r3, r3, HEAP, lsl #32
    // 0x3a9f6c: BARRIER = pp[0x40]
    //     0x3a9f6c: ldr          BARRIER, [PP, #0x40]
    //     0x3a9f70: cmp          r3, r16
    // 0x3a9f74: b.eq 0x3aa538
    //     0x3a9f74: b.eq         0x3aa538
    //     0x3a9f78: stur         r3, [fp, #-0x10]
    // 0x3a9f7c: r0 = call 0x3a67fc
    //     0x3a9f7c: bl           0x3a67fc
    // 0x3a9f80: r1 = r0
    //     0x3a9f80: mov          r1, r0
    //     0x3a9f84: ldur         r0, [fp, #-0x18]
    //     0x3a9f88: stur         r1, [fp, #-0x28]
    // 0x3a9f8c: StoreField: r1->field_b = r0
    //     0x3a9f8c: stur         r0, [r1, #0xb]
    //     0x3a9f90: ldur         r0, [fp, #-0x10]
    // 0x3a9f94: StoreField: r1->field_f = r0
    //     0x3a9f94: stur         r0, [r1, #0xf]
    // 0x3a9f98: d0 = pp[0x472]
    //     0x3a9f98: add          r17, PP, #0x12, lsl #12
    //     0x3a9f9c: ldr          d0, [r17, #0x460]
    // 0x3a9fa0: StoreField: r1->field_13 = d0
    //     0x3a9fa0: stur         d0, [r1, #0x13]
    //     0x3a9fa4: add          r0, NULL, #0x20
    // 0x3a9fa8: StoreField: r1->field_1b = r0
    //     0x3a9fa8: stur         r0, [r1, #0x1b]
    // 0x3a9fac: r0 = call 0x391a04
    //     0x3a9fac: bl           0x391a04
    //     0x3a9fb0: stur         r0, [fp, #-0x10]
    //     0x3a9fb4: ldur         BARRIER, [fp, #-0x28]
    //     0x3a9fb8: str          BARRIER, [SP]
    // 0x3a9fbc: r1 = r0
    //     0x3a9fbc: mov          r1, r0
    // 0x3a9fc0: r4 = pp[0x204]
    //     0x3a9fc0: add          r4, PP, #0xc, lsl #12
    //     0x3a9fc4: ldr          r4, [r4, #0x1f8]
    // 0x3a9fc8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a9fc8: bl           0x391490
    //     0x3a9fcc: ldr          r0, [fp, #0x10]
    // 0x3a9fd0: LoadField: r3 = r0->field_7
    //     0x3a9fd0: ldur         r3, [r0, #7]
    //     0x3a9fd4: add          r3, r3, HEAP, lsl #32
    // 0x3a9fd8: BARRIER = pp[0x40]
    //     0x3a9fd8: ldr          BARRIER, [PP, #0x40]
    //     0x3a9fdc: cmp          r3, r16
    // 0x3a9fe0: b.eq 0x3aa544
    //     0x3a9fe0: b.eq         0x3aa544
    //     0x3a9fe4: ldur         r4, [fp, #-8]
    // 0x3a9fe8: LoadField: r1 = r4->field_f
    //     0x3a9fe8: ldur         r1, [r4, #0xf]
    //     0x3a9fec: add          r1, r1, HEAP, lsl #32
    // 0x3a9ff0: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x3a9ff0: ldur         r2, [r1, #0x17]
    //     0x3a9ff4: add          r2, r2, HEAP, lsl #32
    // 0x3a9ff8: r0 = soul_flutter_international$biz$party$page_party_lucky_bag_PagePartyLotteryNameList::_maxWidthText()
    //     0x3a9ff8: bl           0x3aa73c
    //     0x3a9ffc: stur         r0, [fp, #-0x18]
    // 0x3aa000: r0 = call 0x3949ec
    //     0x3aa000: bl           0x3949ec
    // 0x3aa004: r2 = r0
    //     0x3aa004: mov          r2, r0
    // 0x3aa008: r0 = pp[0x3b2]
    //     0x3aa008: add          r0, PP, #0x12, lsl #12
    //     0x3aa00c: ldr          r0, [r0, #0x3a0]
    //     0x3aa010: stur         r2, [fp, #-0x28]
    // 0x3aa014: StoreField: r2->field_f = r0
    //     0x3aa014: stur         r0, [r2, #0xf]
    //     0x3aa018: ldr          r0, [fp, #0x10]
    // 0x3aa01c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x3aa01c: ldur         r1, [r0, #0x17]
    //     0x3aa020: add          r1, r1, HEAP, lsl #32
    // 0x3aa024: BARRIER = pp[0x40]
    //     0x3aa024: ldr          BARRIER, [PP, #0x40]
    //     0x3aa028: cmp          r1, r16
    // 0x3aa02c: b.eq 0x3aa550
    //     0x3aa02c: b.eq         0x3aa550
    //     0x3aa030: tbnz         r1, #4, 0x3aa04c
    //     0x3aa034: ldur         r3, [fp, #-8]
    // 0x3aa038: LoadField: r1 = r3->field_f
    //     0x3aa038: ldur         r1, [r3, #0xf]
    //     0x3aa03c: add          r1, r1, HEAP, lsl #32
    // 0x3aa040: r0 = soul_flutter_international$biz$party$page_party_lucky_bag_PagePartyLotteryNameList::bestLuckyLogo()
    //     0x3aa040: bl           0x3aa568
    // 0x3aa044: r8 = r0
    //     0x3aa044: mov          r8, r0
    // 0x3aa048: b 0x3aa064
    //     0x3aa048: b            0x3aa064
    // 0x3aa04c: r0 = call 0x391a04
    //     0x3aa04c: bl           0x391a04
    // 0x3aa050: r1 = r0
    //     0x3aa050: mov          r1, r0
    //     0x3aa054: stur         r0, [fp, #-0x30]
    // 0x3aa058: r4 = pp[0x4c0]
    //     0x3aa058: ldr          r4, [PP, #0x4c0]
    // 0x3aa05c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3aa05c: bl           0x391490
    //     0x3aa060: ldur         r8, [fp, #-0x30]
    //     0x3aa064: ldr          r3, [fp, #0x10]
    //     0x3aa068: ldur         r4, [fp, #-8]
    //     0x3aa06c: ldur         r6, [fp, #-0x10]
    //     0x3aa070: ldur         r5, [fp, #-0x18]
    //     0x3aa074: ldur         r0, [fp, #-0x28]
    //     0x3aa078: mov          r7, #6
    // 0x3aa07c: r2 = r7
    //     0x3aa07c: mov          r2, r7
    //     0x3aa080: stur         r8, [fp, #-0x30]
    // 0x3aa084: r1 = NULL
    //     0x3aa084: mov          r1, NULL
    // 0x3aa088: r0 = call 0x61f920
    //     0x3aa088: bl           0x61f920
    // 0x3aa08c: r2 = r0
    //     0x3aa08c: mov          r2, r0
    //     0x3aa090: ldur         r0, [fp, #-0x18]
    //     0x3aa094: stur         r2, [fp, #-0x38]
    // 0x3aa098: StoreField: r2->field_f = r0
    //     0x3aa098: stur         r0, [r2, #0xf]
    //     0x3aa09c: ldur         r0, [fp, #-0x28]
    // 0x3aa0a0: StoreField: r2->field_13 = r0
    //     0x3aa0a0: stur         r0, [r2, #0x13]
    //     0x3aa0a4: ldur         r0, [fp, #-0x30]
    // 0x3aa0a8: ArrayStore: r2[0] = r0  ; List_8
    //     0x3aa0a8: stur         r0, [r2, #0x17]
    // 0x3aa0ac: r1 = pp[0x5c58]
    //     0x3aa0ac: ldr          r1, [PP, #0x5c58]
    // 0x3aa0b0: r0 = call 0x61e854
    //     0x3aa0b0: bl           0x61e854
    // 0x3aa0b4: r1 = r0
    //     0x3aa0b4: mov          r1, r0
    //     0x3aa0b8: ldur         r0, [fp, #-0x38]
    //     0x3aa0bc: stur         r1, [fp, #-0x18]
    // 0x3aa0c0: StoreField: r1->field_f = r0
    //     0x3aa0c0: stur         r0, [r1, #0xf]
    //     0x3aa0c4: mov          r2, #6
    // 0x3aa0c8: StoreField: r1->field_b = r2
    //     0x3aa0c8: stur         r2, [r1, #0xb]
    // 0x3aa0cc: r0 = call 0x3a1414
    //     0x3aa0cc: bl           0x3a1414
    // 0x3aa0d0: r1 = r0
    //     0x3aa0d0: mov          r1, r0
    // 0x3aa0d4: r0 = pp[0x5140]
    //     0x3aa0d4: ldr          r0, [PP, #0x5140]
    //     0x3aa0d8: stur         r1, [fp, #-0x28]
    // 0x3aa0dc: StoreField: r1->field_f = r0
    //     0x3aa0dc: stur         r0, [r1, #0xf]
    // 0x3aa0e0: r2 = pp[0xaee]
    //     0x3aa0e0: add          r2, PP, #0xe, lsl #12
    //     0x3aa0e4: ldr          r2, [r2, #0xae0]
    // 0x3aa0e8: StoreField: r1->field_13 = r2
    //     0x3aa0e8: stur         r2, [r1, #0x13]
    // 0x3aa0ec: r3 = pp[0xaf6]
    //     0x3aa0ec: add          r3, PP, #0xe, lsl #12
    //     0x3aa0f0: ldr          r3, [r3, #0xae8]
    // 0x3aa0f4: ArrayStore: r1[0] = r3  ; List_8
    //     0x3aa0f4: stur         r3, [r1, #0x17]
    // 0x3aa0f8: r4 = pp[0xb6e]
    //     0x3aa0f8: add          r4, PP, #0xe, lsl #12
    //     0x3aa0fc: ldr          r4, [r4, #0xb60]
    // 0x3aa100: StoreField: r1->field_1b = r4
    //     0x3aa100: stur         r4, [r1, #0x1b]
    // 0x3aa104: r5 = pp[0xb06]
    //     0x3aa104: add          r5, PP, #0xe, lsl #12
    //     0x3aa108: ldr          r5, [r5, #0xaf8]
    // 0x3aa10c: StoreField: r1->field_23 = r5
    //     0x3aa10c: stur         r5, [r1, #0x23]
    // 0x3aa110: r6 = pp[0xb2]
    //     0x3aa110: add          r6, PP, #0xa, lsl #12
    //     0x3aa114: ldr          r6, [r6, #0xa8]
    // 0x3aa118: StoreField: r1->field_2b = r6
    //     0x3aa118: stur         r6, [r1, #0x2b]
    // 0x3aa11c: StoreField: r1->field_2f = xzr
    //     0x3aa11c: stur         xzr, [r1, #0x2f]
    //     0x3aa120: ldur         r7, [fp, #-0x18]
    // 0x3aa124: StoreField: r1->field_b = r7
    //     0x3aa124: stur         r7, [r1, #0xb]
    // 0x3aa128: r0 = call 0x391c0c
    //     0x3aa128: bl           0x391c0c
    // 0x3aa12c: r2 = r0
    //     0x3aa12c: mov          r2, r0
    // 0x3aa130: r0 = pp[0x47a]
    //     0x3aa130: add          r0, PP, #0x12, lsl #12
    //     0x3aa134: ldr          r0, [r0, #0x468]
    //     0x3aa138: stur         r2, [fp, #-0x18]
    // 0x3aa13c: StoreField: r2->field_f = r0
    //     0x3aa13c: stur         r0, [r2, #0xf]
    //     0x3aa140: ldur         r0, [fp, #-0x28]
    // 0x3aa144: StoreField: r2->field_b = r0
    //     0x3aa144: stur         r0, [r2, #0xb]
    // 0x3aa148: r1 = pp[0xade]
    //     0x3aa148: add          r1, PP, #0xe, lsl #12
    //     0x3aa14c: ldr          r1, [r1, #0xad0]
    // 0x3aa150: r0 = call 0x39fb14
    //     0x3aa150: bl           0x39fb14
    // 0x3aa154: r1 = r0
    //     0x3aa154: mov          r1, r0
    //     0x3aa158: mov          r0, #1
    //     0x3aa15c: stur         r1, [fp, #-0x28]
    // 0x3aa160: StoreField: r1->field_13 = r0
    //     0x3aa160: stur         r0, [r1, #0x13]
    // 0x3aa164: r0 = pp[0xae6]
    //     0x3aa164: add          r0, PP, #0xe, lsl #12
    //     0x3aa168: ldr          r0, [r0, #0xad8]
    // 0x3aa16c: StoreField: r1->field_1b = r0
    //     0x3aa16c: stur         r0, [r1, #0x1b]
    //     0x3aa170: ldur         r0, [fp, #-0x18]
    // 0x3aa174: StoreField: r1->field_b = r0
    //     0x3aa174: stur         r0, [r1, #0xb]
    // 0x3aa178: r0 = call 0x3a142c
    //     0x3aa178: bl           0x3a142c
    // 0x3aa17c: r1 = r0
    //     0x3aa17c: mov          r1, r0
    // 0x3aa180: r0 = pp[0x257]
    //     0x3aa180: add          r0, PP, #0xf, lsl #12
    //     0x3aa184: ldr          r0, [r0, #0x248]
    //     0x3aa188: stur         r1, [fp, #-0x18]
    // 0x3aa18c: StoreField: r1->field_b = r0
    //     0x3aa18c: stur         r0, [r1, #0xb]
    // 0x3aa190: r0 = pp[0x17f]
    //     0x3aa190: add          r0, PP, #0xf, lsl #12
    //     0x3aa194: ldr          r0, [r0, #0x170]
    // 0x3aa198: StoreField: r1->field_f = r0
    //     0x3aa198: stur         r0, [r1, #0xf]
    // 0x3aa19c: r0 = pp[0x25f]
    //     0x3aa19c: add          r0, PP, #0xf, lsl #12
    //     0x3aa1a0: ldr          r0, [r0, #0x250]
    // 0x3aa1a4: StoreField: r1->field_13 = r0
    //     0x3aa1a4: stur         r0, [r1, #0x13]
    // 0x3aa1a8: ArrayStore: r1[0] = r0  ; List_8
    //     0x3aa1a8: stur         r0, [r1, #0x17]
    // 0x3aa1ac: r0 = call 0x2e3578
    //     0x3aa1ac: bl           0x2e3578
    //     0x3aa1b0: fmov         d0, #3.00000000
    //     0x3aa1b4: stur         r0, [fp, #-0x38]
    // 0x3aa1b8: StoreField: r0->field_7 = d0
    //     0x3aa1b8: stur         d0, [r0, #7]
    // 0x3aa1bc: StoreField: r0->field_f = xzr
    //     0x3aa1bc: stur         xzr, [r0, #0xf]
    // 0x3aa1c0: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3aa1c0: stur         xzr, [r0, #0x17]
    // 0x3aa1c4: StoreField: r0->field_1f = xzr
    //     0x3aa1c4: stur         xzr, [r0, #0x1f]
    //     0x3aa1c8: ldr          r1, [fp, #0x10]
    // 0x3aa1cc: LoadField: r2 = r1->field_13
    //     0x3aa1cc: ldur         r2, [r1, #0x13]
    //     0x3aa1d0: add          r2, r2, HEAP, lsl #32
    // 0x3aa1d4: BARRIER = pp[0x40]
    //     0x3aa1d4: ldr          BARRIER, [PP, #0x40]
    //     0x3aa1d8: cmp          r2, r16
    // 0x3aa1dc: b.eq 0x3aa55c
    //     0x3aa1dc: b.eq         0x3aa55c
    //     0x3aa1e0: ldur         r1, [fp, #-8]
    //     0x3aa1e4: stur         r2, [fp, #-0x30]
    // 0x3aa1e8: LoadField: r3 = r1->field_f
    //     0x3aa1e8: ldur         r3, [r1, #0xf]
    //     0x3aa1ec: add          r3, r3, HEAP, lsl #32
    // 0x3aa1f0: LoadField: r1 = r3->field_1b
    //     0x3aa1f0: ldur         r1, [r3, #0x1b]
    //     0x3aa1f4: add          r1, r1, HEAP, lsl #32
    //     0x3aa1f8: stur         r1, [fp, #-8]
    // 0x3aa1fc: r0 = call 0x393bf8
    //     0x3aa1fc: bl           0x393bf8
    // 0x3aa200: r1 = r0
    //     0x3aa200: mov          r1, r0
    //     0x3aa204: ldur         r0, [fp, #-0x30]
    //     0x3aa208: stur         r1, [fp, #-0x40]
    // 0x3aa20c: StoreField: r1->field_b = r0
    //     0x3aa20c: stur         r0, [r1, #0xb]
    //     0x3aa210: ldur         r0, [fp, #-8]
    // 0x3aa214: StoreField: r1->field_13 = r0
    //     0x3aa214: stur         r0, [r1, #0x13]
    // 0x3aa218: r0 = call 0x391a04
    //     0x3aa218: bl           0x391a04
    //     0x3aa21c: stur         r0, [fp, #-8]
    //     0x3aa220: ldur         BARRIER, [fp, #-0x38]
    // 0x3aa224: lr = pp[0x871]
    //     0x3aa224: add          lr, PP, #0x11, lsl #12
    //     0x3aa228: ldr          lr, [lr, #0x860]
    //     0x3aa22c: stp          lr, BARRIER, [SP, #8]
    //     0x3aa230: ldur         BARRIER, [fp, #-0x40]
    //     0x3aa234: str          BARRIER, [SP]
    // 0x3aa238: r1 = r0
    //     0x3aa238: mov          r1, r0
    // 0x3aa23c: r4 = pp[0x3c1]
    //     0x3aa23c: add          r4, PP, #0x11, lsl #12
    //     0x3aa240: ldr          r4, [r4, #0x3b0]
    // 0x3aa244: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3aa244: bl           0x391490
    // 0x3aa248: r1 = NULL
    //     0x3aa248: mov          r1, NULL
    //     0x3aa24c: mov          r2, #4
    // 0x3aa250: r0 = call 0x61f920
    //     0x3aa250: bl           0x61f920
    // 0x3aa254: r2 = r0
    //     0x3aa254: mov          r2, r0
    //     0x3aa258: ldur         r0, [fp, #-0x18]
    //     0x3aa25c: stur         r2, [fp, #-0x30]
    // 0x3aa260: StoreField: r2->field_f = r0
    //     0x3aa260: stur         r0, [r2, #0xf]
    //     0x3aa264: ldur         r0, [fp, #-8]
    // 0x3aa268: StoreField: r2->field_13 = r0
    //     0x3aa268: stur         r0, [r2, #0x13]
    // 0x3aa26c: r1 = pp[0x5c58]
    //     0x3aa26c: ldr          r1, [PP, #0x5c58]
    // 0x3aa270: r0 = call 0x61e854
    //     0x3aa270: bl           0x61e854
    // 0x3aa274: r1 = r0
    //     0x3aa274: mov          r1, r0
    //     0x3aa278: ldur         r0, [fp, #-0x30]
    //     0x3aa27c: stur         r1, [fp, #-8]
    // 0x3aa280: StoreField: r1->field_f = r0
    //     0x3aa280: stur         r0, [r1, #0xf]
    //     0x3aa284: mov          r2, #4
    // 0x3aa288: StoreField: r1->field_b = r2
    //     0x3aa288: stur         r2, [r1, #0xb]
    // 0x3aa28c: r0 = call 0x3a1414
    //     0x3aa28c: bl           0x3a1414
    // 0x3aa290: r1 = r0
    //     0x3aa290: mov          r1, r0
    // 0x3aa294: r0 = pp[0x5140]
    //     0x3aa294: ldr          r0, [PP, #0x5140]
    //     0x3aa298: stur         r1, [fp, #-0x18]
    // 0x3aa29c: StoreField: r1->field_f = r0
    //     0x3aa29c: stur         r0, [r1, #0xf]
    // 0x3aa2a0: r2 = pp[0x26f]
    //     0x3aa2a0: add          r2, PP, #0xf, lsl #12
    //     0x3aa2a4: ldr          r2, [r2, #0x260]
    // 0x3aa2a8: StoreField: r1->field_13 = r2
    //     0x3aa2a8: stur         r2, [r1, #0x13]
    // 0x3aa2ac: r2 = pp[0xaf6]
    //     0x3aa2ac: add          r2, PP, #0xe, lsl #12
    //     0x3aa2b0: ldr          r2, [r2, #0xae8]
    // 0x3aa2b4: ArrayStore: r1[0] = r2  ; List_8
    //     0x3aa2b4: stur         r2, [r1, #0x17]
    // 0x3aa2b8: r3 = pp[0xb6e]
    //     0x3aa2b8: add          r3, PP, #0xe, lsl #12
    //     0x3aa2bc: ldr          r3, [r3, #0xb60]
    // 0x3aa2c0: StoreField: r1->field_1b = r3
    //     0x3aa2c0: stur         r3, [r1, #0x1b]
    // 0x3aa2c4: r4 = pp[0xb06]
    //     0x3aa2c4: add          r4, PP, #0xe, lsl #12
    //     0x3aa2c8: ldr          r4, [r4, #0xaf8]
    // 0x3aa2cc: StoreField: r1->field_23 = r4
    //     0x3aa2cc: stur         r4, [r1, #0x23]
    // 0x3aa2d0: r5 = pp[0xb2]
    //     0x3aa2d0: add          r5, PP, #0xa, lsl #12
    //     0x3aa2d4: ldr          r5, [r5, #0xa8]
    // 0x3aa2d8: StoreField: r1->field_2b = r5
    //     0x3aa2d8: stur         r5, [r1, #0x2b]
    // 0x3aa2dc: StoreField: r1->field_2f = xzr
    //     0x3aa2dc: stur         xzr, [r1, #0x2f]
    //     0x3aa2e0: ldur         r6, [fp, #-8]
    // 0x3aa2e4: StoreField: r1->field_b = r6
    //     0x3aa2e4: stur         r6, [r1, #0xb]
    // 0x3aa2e8: r0 = call 0x391a04
    //     0x3aa2e8: bl           0x391a04
    //     0x3aa2ec: stur         r0, [fp, #-8]
    //     0x3aa2f0: ldur         BARRIER, [fp, #-0x18]
    //     0x3aa2f4: str          BARRIER, [SP]
    // 0x3aa2f8: r1 = r0
    //     0x3aa2f8: mov          r1, r0
    // 0x3aa2fc: r4 = pp[0x204]
    //     0x3aa2fc: add          r4, PP, #0xc, lsl #12
    //     0x3aa300: ldr          r4, [r4, #0x1f8]
    // 0x3aa304: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3aa304: bl           0x391490
    // 0x3aa308: r1 = NULL
    //     0x3aa308: mov          r1, NULL
    //     0x3aa30c: mov          r2, #6
    // 0x3aa310: r0 = call 0x61f920
    //     0x3aa310: bl           0x61f920
    // 0x3aa314: r2 = r0
    //     0x3aa314: mov          r2, r0
    //     0x3aa318: ldur         r0, [fp, #-0x10]
    //     0x3aa31c: stur         r2, [fp, #-0x18]
    // 0x3aa320: StoreField: r2->field_f = r0
    //     0x3aa320: stur         r0, [r2, #0xf]
    //     0x3aa324: ldur         r0, [fp, #-0x28]
    // 0x3aa328: StoreField: r2->field_13 = r0
    //     0x3aa328: stur         r0, [r2, #0x13]
    //     0x3aa32c: ldur         r0, [fp, #-8]
    // 0x3aa330: ArrayStore: r2[0] = r0  ; List_8
    //     0x3aa330: stur         r0, [r2, #0x17]
    // 0x3aa334: r1 = pp[0x5c58]
    //     0x3aa334: ldr          r1, [PP, #0x5c58]
    // 0x3aa338: r0 = call 0x61e854
    //     0x3aa338: bl           0x61e854
    // 0x3aa33c: r1 = r0
    //     0x3aa33c: mov          r1, r0
    //     0x3aa340: ldur         r0, [fp, #-0x18]
    //     0x3aa344: stur         r1, [fp, #-8]
    // 0x3aa348: StoreField: r1->field_f = r0
    //     0x3aa348: stur         r0, [r1, #0xf]
    //     0x3aa34c: mov          r0, #6
    // 0x3aa350: StoreField: r1->field_b = r0
    //     0x3aa350: stur         r0, [r1, #0xb]
    // 0x3aa354: r0 = call 0x3a1414
    //     0x3aa354: bl           0x3a1414
    // 0x3aa358: r1 = r0
    //     0x3aa358: mov          r1, r0
    // 0x3aa35c: r0 = pp[0x5140]
    //     0x3aa35c: ldr          r0, [PP, #0x5140]
    //     0x3aa360: stur         r1, [fp, #-0x10]
    // 0x3aa364: StoreField: r1->field_f = r0
    //     0x3aa364: stur         r0, [r1, #0xf]
    // 0x3aa368: r0 = pp[0xaee]
    //     0x3aa368: add          r0, PP, #0xe, lsl #12
    //     0x3aa36c: ldr          r0, [r0, #0xae0]
    // 0x3aa370: StoreField: r1->field_13 = r0
    //     0x3aa370: stur         r0, [r1, #0x13]
    // 0x3aa374: r2 = pp[0xaf6]
    //     0x3aa374: add          r2, PP, #0xe, lsl #12
    //     0x3aa378: ldr          r2, [r2, #0xae8]
    // 0x3aa37c: ArrayStore: r1[0] = r2  ; List_8
    //     0x3aa37c: stur         r2, [r1, #0x17]
    // 0x3aa380: r3 = pp[0xb6e]
    //     0x3aa380: add          r3, PP, #0xe, lsl #12
    //     0x3aa384: ldr          r3, [r3, #0xb60]
    // 0x3aa388: StoreField: r1->field_1b = r3
    //     0x3aa388: stur         r3, [r1, #0x1b]
    // 0x3aa38c: r4 = pp[0xb06]
    //     0x3aa38c: add          r4, PP, #0xe, lsl #12
    //     0x3aa390: ldr          r4, [r4, #0xaf8]
    // 0x3aa394: StoreField: r1->field_23 = r4
    //     0x3aa394: stur         r4, [r1, #0x23]
    // 0x3aa398: r5 = pp[0xb2]
    //     0x3aa398: add          r5, PP, #0xa, lsl #12
    //     0x3aa39c: ldr          r5, [r5, #0xa8]
    // 0x3aa3a0: StoreField: r1->field_2b = r5
    //     0x3aa3a0: stur         r5, [r1, #0x2b]
    // 0x3aa3a4: StoreField: r1->field_2f = xzr
    //     0x3aa3a4: stur         xzr, [r1, #0x2f]
    //     0x3aa3a8: ldur         r6, [fp, #-8]
    // 0x3aa3ac: StoreField: r1->field_b = r6
    //     0x3aa3ac: stur         r6, [r1, #0xb]
    // 0x3aa3b0: r0 = call 0x391a04
    //     0x3aa3b0: bl           0x391a04
    //     0x3aa3b4: stur         r0, [fp, #-8]
    //     0x3aa3b8: ldur         BARRIER, [fp, #-0x20]
    //     0x3aa3bc: ldur         lr, [fp, #-0x10]
    //     0x3aa3c0: stp          lr, BARRIER, [SP]
    // 0x3aa3c4: r1 = r0
    //     0x3aa3c4: mov          r1, r0
    // 0x3aa3c8: r4 = pp[0x267]
    //     0x3aa3c8: add          r4, PP, #0xf, lsl #12
    //     0x3aa3cc: ldr          r4, [r4, #0x258]
    // 0x3aa3d0: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3aa3d0: bl           0x391490
    // 0x3aa3d4: r0 = call 0x2e3578
    //     0x3aa3d4: bl           0x2e3578
    //     0x3aa3d8: stur         r0, [fp, #-0x10]
    // 0x3aa3dc: StoreField: r0->field_7 = xzr
    //     0x3aa3dc: stur         xzr, [r0, #7]
    // 0x3aa3e0: StoreField: r0->field_f = xzr
    //     0x3aa3e0: stur         xzr, [r0, #0xf]
    // 0x3aa3e4: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3aa3e4: stur         xzr, [r0, #0x17]
    // 0x3aa3e8: StoreField: r0->field_1f = xzr
    //     0x3aa3e8: stur         xzr, [r0, #0x1f]
    // 0x3aa3ec: r0 = call 0x31d844
    //     0x3aa3ec: bl           0x31d844
    // 0x3aa3f0: r1 = r0
    //     0x3aa3f0: mov          r1, r0
    // 0x3aa3f4: r0 = pp[0x6310]
    //     0x3aa3f4: ldr          r0, [PP, #0x6310]
    //     0x3aa3f8: stur         r1, [fp, #-0x18]
    // 0x3aa3fc: StoreField: r1->field_27 = r0
    //     0x3aa3fc: stur         r0, [r1, #0x27]
    //     0x3aa400: fmov         d0, #1.00000000
    // 0x3aa404: StoreField: r1->field_7 = d0
    //     0x3aa404: stur         d0, [r1, #7]
    // 0x3aa408: StoreField: r1->field_f = d0
    //     0x3aa408: stur         d0, [r1, #0xf]
    // 0x3aa40c: d0 = pp[0xad0]
    //     0x3aa40c: add          r17, PP, #0x10, lsl #12
    //     0x3aa410: ldr          d0, [r17, #0xac0]
    // 0x3aa414: ArrayStore: r1[0] = d0  ; List_8
    //     0x3aa414: stur         d0, [r1, #0x17]
    // 0x3aa418: d0 = pp[0xad8]
    //     0x3aa418: add          r17, PP, #0x10, lsl #12
    //     0x3aa41c: ldr          d0, [r17, #0xac8]
    // 0x3aa420: StoreField: r1->field_1f = d0
    //     0x3aa420: stur         d0, [r1, #0x1f]
    // 0x3aa424: r0 = call 0x391a04
    //     0x3aa424: bl           0x391a04
    //     0x3aa428: stur         r0, [fp, #-0x20]
    //     0x3aa42c: ldur         BARRIER, [fp, #-0x10]
    // 0x3aa430: lr = pp[0x53b0]
    //     0x3aa430: ldr          lr, [PP, #0x53b0]
    //     0x3aa434: stp          lr, BARRIER, [SP, #8]
    //     0x3aa438: ldur         BARRIER, [fp, #-0x18]
    //     0x3aa43c: str          BARRIER, [SP]
    // 0x3aa440: r1 = r0
    //     0x3aa440: mov          r1, r0
    // 0x3aa444: r4 = pp[0x268]
    //     0x3aa444: add          r4, PP, #0x10, lsl #12
    //     0x3aa448: ldr          r4, [r4, #0x258]
    // 0x3aa44c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3aa44c: bl           0x391490
    // 0x3aa450: r1 = NULL
    //     0x3aa450: mov          r1, NULL
    //     0x3aa454: mov          r2, #4
    // 0x3aa458: r0 = call 0x61f920
    //     0x3aa458: bl           0x61f920
    // 0x3aa45c: r2 = r0
    //     0x3aa45c: mov          r2, r0
    //     0x3aa460: ldur         r0, [fp, #-8]
    //     0x3aa464: stur         r2, [fp, #-0x10]
    // 0x3aa468: StoreField: r2->field_f = r0
    //     0x3aa468: stur         r0, [r2, #0xf]
    //     0x3aa46c: ldur         r0, [fp, #-0x20]
    // 0x3aa470: StoreField: r2->field_13 = r0
    //     0x3aa470: stur         r0, [r2, #0x13]
    // 0x3aa474: r1 = pp[0x5c58]
    //     0x3aa474: ldr          r1, [PP, #0x5c58]
    // 0x3aa478: r0 = call 0x61e854
    //     0x3aa478: bl           0x61e854
    // 0x3aa47c: r1 = r0
    //     0x3aa47c: mov          r1, r0
    //     0x3aa480: ldur         r0, [fp, #-0x10]
    //     0x3aa484: stur         r1, [fp, #-8]
    // 0x3aa488: StoreField: r1->field_f = r0
    //     0x3aa488: stur         r0, [r1, #0xf]
    //     0x3aa48c: mov          r0, #4
    // 0x3aa490: StoreField: r1->field_b = r0
    //     0x3aa490: stur         r0, [r1, #0xb]
    // 0x3aa494: r0 = call 0x39310c
    //     0x3aa494: bl           0x39310c
    // 0x3aa498: r1 = r0
    //     0x3aa498: mov          r1, r0
    // 0x3aa49c: r0 = pp[0x862]
    //     0x3aa49c: add          r0, PP, #0xa, lsl #12
    //     0x3aa4a0: ldr          r0, [r0, #0x858]
    //     0x3aa4a4: stur         r1, [fp, #-0x10]
    // 0x3aa4a8: StoreField: r1->field_f = r0
    //     0x3aa4a8: stur         r0, [r1, #0xf]
    // 0x3aa4ac: r0 = pp[0xaee]
    //     0x3aa4ac: add          r0, PP, #0xe, lsl #12
    //     0x3aa4b0: ldr          r0, [r0, #0xae0]
    // 0x3aa4b4: StoreField: r1->field_13 = r0
    //     0x3aa4b4: stur         r0, [r1, #0x13]
    // 0x3aa4b8: r0 = pp[0xaf6]
    //     0x3aa4b8: add          r0, PP, #0xe, lsl #12
    //     0x3aa4bc: ldr          r0, [r0, #0xae8]
    // 0x3aa4c0: ArrayStore: r1[0] = r0  ; List_8
    //     0x3aa4c0: stur         r0, [r1, #0x17]
    // 0x3aa4c4: r0 = pp[0xb6e]
    //     0x3aa4c4: add          r0, PP, #0xe, lsl #12
    //     0x3aa4c8: ldr          r0, [r0, #0xb60]
    // 0x3aa4cc: StoreField: r1->field_1b = r0
    //     0x3aa4cc: stur         r0, [r1, #0x1b]
    // 0x3aa4d0: r0 = pp[0xb06]
    //     0x3aa4d0: add          r0, PP, #0xe, lsl #12
    //     0x3aa4d4: ldr          r0, [r0, #0xaf8]
    // 0x3aa4d8: StoreField: r1->field_23 = r0
    //     0x3aa4d8: stur         r0, [r1, #0x23]
    // 0x3aa4dc: r0 = pp[0xb2]
    //     0x3aa4dc: add          r0, PP, #0xa, lsl #12
    //     0x3aa4e0: ldr          r0, [r0, #0xa8]
    // 0x3aa4e4: StoreField: r1->field_2b = r0
    //     0x3aa4e4: stur         r0, [r1, #0x2b]
    // 0x3aa4e8: StoreField: r1->field_2f = xzr
    //     0x3aa4e8: stur         xzr, [r1, #0x2f]
    //     0x3aa4ec: ldur         r0, [fp, #-8]
    // 0x3aa4f0: StoreField: r1->field_b = r0
    //     0x3aa4f0: stur         r0, [r1, #0xb]
    // 0x3aa4f4: r0 = call 0x391a04
    //     0x3aa4f4: bl           0x391a04
    //     0x3aa4f8: stur         r0, [fp, #-8]
    //     0x3aa4fc: ldur         BARRIER, [fp, #-0x10]
    //     0x3aa500: str          BARRIER, [SP]
    // 0x3aa504: r1 = r0
    //     0x3aa504: mov          r1, r0
    // 0x3aa508: r4 = pp[0x204]
    //     0x3aa508: add          r4, PP, #0xc, lsl #12
    //     0x3aa50c: ldr          r4, [r4, #0x1f8]
    // 0x3aa510: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3aa510: bl           0x391490
    //     0x3aa514: ldur         r0, [fp, #-8]
    // 0x3aa518: SP = fp
    //     0x3aa518: mov          SP, fp
    // 0x3aa51c: LeaveFrame
    //     0x3aa51c: ldp          fp, lr, [SP], #0x10
    // 0x3aa520: ret
    //     0x3aa520: ret          
    // 0x3aa524: r0 = call 0x61fa28
    //     0x3aa524: bl           0x61fa28
    // 0x3aa528: b 0x3a9f28
    //     0x3aa528: b            0x3a9f28
    // 0x3aa52c: r9 = pp[0x482]
    //     0x3aa52c: add          r9, PP, #0x12, lsl #12
    //     0x3aa530: ldr          r9, [r9, #0x470]
    // 0x3aa534: r0 = call 0x620258
    //     0x3aa534: bl           0x620258
    // 0x3aa538: r9 = pp[0x48a]
    //     0x3aa538: add          r9, PP, #0x12, lsl #12
    //     0x3aa53c: ldr          r9, [r9, #0x478]
    // 0x3aa540: r0 = call 0x620258
    //     0x3aa540: bl           0x620258
    // 0x3aa544: r9 = pp[0x492]
    //     0x3aa544: add          r9, PP, #0x12, lsl #12
    //     0x3aa548: ldr          r9, [r9, #0x480]
    // 0x3aa54c: r0 = call 0x620258
    //     0x3aa54c: bl           0x620258
    // 0x3aa550: r9 = pp[0x49a]
    //     0x3aa550: add          r9, PP, #0x12, lsl #12
    //     0x3aa554: ldr          r9, [r9, #0x488]
    // 0x3aa558: r0 = call 0x620258
    //     0x3aa558: bl           0x620258
    // 0x3aa55c: r9 = pp[0x4a2]
    //     0x3aa55c: add          r9, PP, #0x12, lsl #12
    //     0x3aa560: ldr          r9, [r9, #0x490]
    // 0x3aa564: r0 = call 0x620258
    //     0x3aa564: bl           0x620258
  }

  bestLuckyLogo() {
    // ** addr: 0x3aa568, size: 0x1d4
    // 0x3aa568: EnterFrame
    //     0x3aa568: stp          fp, lr, [SP, #-0x10]!
    //     0x3aa56c: mov          fp, SP
    // 0x3aa570: AllocStack(0x30)
    //     0x3aa570: sub          SP, SP, #0x30
    // 0x3aa574: r0 = call 0x3a142c
    //     0x3aa574: bl           0x3a142c
    // 0x3aa578: r1 = r0
    //     0x3aa578: mov          r1, r0
    // 0x3aa57c: r0 = pp[0x4aa]
    //     0x3aa57c: add          r0, PP, #0x12, lsl #12
    //     0x3aa580: ldr          r0, [r0, #0x498]
    //     0x3aa584: stur         r1, [fp, #-8]
    // 0x3aa588: StoreField: r1->field_b = r0
    //     0x3aa588: stur         r0, [r1, #0xb]
    // 0x3aa58c: r2 = pp[0x17f]
    //     0x3aa58c: add          r2, PP, #0xf, lsl #12
    //     0x3aa590: ldr          r2, [r2, #0x170]
    // 0x3aa594: StoreField: r1->field_f = r2
    //     0x3aa594: stur         r2, [r1, #0xf]
    // 0x3aa598: r3 = pp[0x7598]
    //     0x3aa598: ldr          r3, [PP, #0x7598]
    // 0x3aa59c: StoreField: r1->field_13 = r3
    //     0x3aa59c: stur         r3, [r1, #0x13]
    // 0x3aa5a0: ArrayStore: r1[0] = r3  ; List_8
    //     0x3aa5a0: stur         r3, [r1, #0x17]
    // 0x3aa5a4: r0 = call 0x3949ec
    //     0x3aa5a4: bl           0x3949ec
    // 0x3aa5a8: r1 = r0
    //     0x3aa5a8: mov          r1, r0
    // 0x3aa5ac: r0 = pp[0x34a]
    //     0x3aa5ac: add          r0, PP, #0x12, lsl #12
    //     0x3aa5b0: ldr          r0, [r0, #0x338]
    //     0x3aa5b4: stur         r1, [fp, #-0x10]
    // 0x3aa5b8: StoreField: r1->field_f = r0
    //     0x3aa5b8: stur         r0, [r1, #0xf]
    // 0x3aa5bc: r0 = call 0x31d844
    //     0x3aa5bc: bl           0x31d844
    // 0x3aa5c0: r1 = r0
    //     0x3aa5c0: mov          r1, r0
    // 0x3aa5c4: r0 = pp[0x6310]
    //     0x3aa5c4: ldr          r0, [PP, #0x6310]
    //     0x3aa5c8: stur         r1, [fp, #-0x18]
    // 0x3aa5cc: StoreField: r1->field_27 = r0
    //     0x3aa5cc: stur         r0, [r1, #0x27]
    //     0x3aa5d0: fmov         d0, #1.00000000
    // 0x3aa5d4: StoreField: r1->field_7 = d0
    //     0x3aa5d4: stur         d0, [r1, #7]
    // 0x3aa5d8: StoreField: r1->field_f = d0
    //     0x3aa5d8: stur         d0, [r1, #0xf]
    // 0x3aa5dc: d0 = pp[0xad0]
    //     0x3aa5dc: add          r17, PP, #0x10, lsl #12
    //     0x3aa5e0: ldr          d0, [r17, #0xac0]
    // 0x3aa5e4: ArrayStore: r1[0] = d0  ; List_8
    //     0x3aa5e4: stur         d0, [r1, #0x17]
    // 0x3aa5e8: d0 = pp[0x4b2]
    //     0x3aa5e8: add          r17, PP, #0x12, lsl #12
    //     0x3aa5ec: ldr          d0, [r17, #0x4a0]
    // 0x3aa5f0: StoreField: r1->field_1f = d0
    //     0x3aa5f0: stur         d0, [r1, #0x1f]
    // 0x3aa5f4: r0 = call 0x31abec
    //     0x3aa5f4: bl           0x31abec
    // 0x3aa5f8: r1 = r0
    //     0x3aa5f8: mov          r1, r0
    //     0x3aa5fc: add          r0, NULL, #0x20
    //     0x3aa600: stur         r1, [fp, #-0x20]
    // 0x3aa604: StoreField: r1->field_7 = r0
    //     0x3aa604: stur         r0, [r1, #7]
    //     0x3aa608: ldur         r0, [fp, #-0x18]
    // 0x3aa60c: StoreField: r1->field_b = r0
    //     0x3aa60c: stur         r0, [r1, #0xb]
    // 0x3aa610: r0 = pp[0x7598]
    //     0x3aa610: ldr          r0, [PP, #0x7598]
    // 0x3aa614: StoreField: r1->field_1f = r0
    //     0x3aa614: stur         r0, [r1, #0x1f]
    // 0x3aa618: r0 = call 0x393bf8
    //     0x3aa618: bl           0x393bf8
    // 0x3aa61c: r1 = r0
    //     0x3aa61c: mov          r1, r0
    // 0x3aa620: r0 = pp[0x4ba]
    //     0x3aa620: add          r0, PP, #0x12, lsl #12
    //     0x3aa624: ldr          r0, [r0, #0x4a8]
    //     0x3aa628: stur         r1, [fp, #-0x18]
    // 0x3aa62c: StoreField: r1->field_b = r0
    //     0x3aa62c: stur         r0, [r1, #0xb]
    //     0x3aa630: ldur         r0, [fp, #-0x20]
    // 0x3aa634: StoreField: r1->field_13 = r0
    //     0x3aa634: stur         r0, [r1, #0x13]
    // 0x3aa638: r0 = call 0x3949ec
    //     0x3aa638: bl           0x3949ec
    // 0x3aa63c: r1 = r0
    //     0x3aa63c: mov          r1, r0
    // 0x3aa640: r0 = pp[0x34a]
    //     0x3aa640: add          r0, PP, #0x12, lsl #12
    //     0x3aa644: ldr          r0, [r0, #0x338]
    //     0x3aa648: stur         r1, [fp, #-0x20]
    // 0x3aa64c: StoreField: r1->field_f = r0
    //     0x3aa64c: stur         r0, [r1, #0xf]
    // 0x3aa650: r0 = call 0x3a142c
    //     0x3aa650: bl           0x3a142c
    // 0x3aa654: r3 = r0
    //     0x3aa654: mov          r3, r0
    // 0x3aa658: r0 = pp[0x4aa]
    //     0x3aa658: add          r0, PP, #0x12, lsl #12
    //     0x3aa65c: ldr          r0, [r0, #0x498]
    //     0x3aa660: stur         r3, [fp, #-0x28]
    // 0x3aa664: StoreField: r3->field_b = r0
    //     0x3aa664: stur         r0, [r3, #0xb]
    // 0x3aa668: r0 = pp[0x17f]
    //     0x3aa668: add          r0, PP, #0xf, lsl #12
    //     0x3aa66c: ldr          r0, [r0, #0x170]
    // 0x3aa670: StoreField: r3->field_f = r0
    //     0x3aa670: stur         r0, [r3, #0xf]
    // 0x3aa674: r0 = pp[0x7598]
    //     0x3aa674: ldr          r0, [PP, #0x7598]
    // 0x3aa678: StoreField: r3->field_13 = r0
    //     0x3aa678: stur         r0, [r3, #0x13]
    // 0x3aa67c: ArrayStore: r3[0] = r0  ; List_8
    //     0x3aa67c: stur         r0, [r3, #0x17]
    // 0x3aa680: r1 = NULL
    //     0x3aa680: mov          r1, NULL
    //     0x3aa684: mov          r2, #0xa
    // 0x3aa688: r0 = call 0x61f920
    //     0x3aa688: bl           0x61f920
    // 0x3aa68c: r2 = r0
    //     0x3aa68c: mov          r2, r0
    //     0x3aa690: ldur         r0, [fp, #-8]
    //     0x3aa694: stur         r2, [fp, #-0x30]
    // 0x3aa698: StoreField: r2->field_f = r0
    //     0x3aa698: stur         r0, [r2, #0xf]
    //     0x3aa69c: ldur         r0, [fp, #-0x10]
    // 0x3aa6a0: StoreField: r2->field_13 = r0
    //     0x3aa6a0: stur         r0, [r2, #0x13]
    //     0x3aa6a4: ldur         r0, [fp, #-0x18]
    // 0x3aa6a8: ArrayStore: r2[0] = r0  ; List_8
    //     0x3aa6a8: stur         r0, [r2, #0x17]
    //     0x3aa6ac: ldur         r0, [fp, #-0x20]
    // 0x3aa6b0: StoreField: r2->field_1b = r0
    //     0x3aa6b0: stur         r0, [r2, #0x1b]
    //     0x3aa6b4: ldur         r0, [fp, #-0x28]
    // 0x3aa6b8: StoreField: r2->field_1f = r0
    //     0x3aa6b8: stur         r0, [r2, #0x1f]
    // 0x3aa6bc: r1 = pp[0x5c58]
    //     0x3aa6bc: ldr          r1, [PP, #0x5c58]
    // 0x3aa6c0: r0 = call 0x61e854
    //     0x3aa6c0: bl           0x61e854
    // 0x3aa6c4: r1 = r0
    //     0x3aa6c4: mov          r1, r0
    //     0x3aa6c8: ldur         r0, [fp, #-0x30]
    //     0x3aa6cc: stur         r1, [fp, #-8]
    // 0x3aa6d0: StoreField: r1->field_f = r0
    //     0x3aa6d0: stur         r0, [r1, #0xf]
    //     0x3aa6d4: mov          r0, #0xa
    // 0x3aa6d8: StoreField: r1->field_b = r0
    //     0x3aa6d8: stur         r0, [r1, #0xb]
    // 0x3aa6dc: r0 = call 0x3a1414
    //     0x3aa6dc: bl           0x3a1414
    // 0x3aa6e0: r1 = pp[0x5140]
    //     0x3aa6e0: ldr          r1, [PP, #0x5140]
    // 0x3aa6e4: StoreField: r0->field_f = r1
    //     0x3aa6e4: stur         r1, [r0, #0xf]
    // 0x3aa6e8: r1 = pp[0xaee]
    //     0x3aa6e8: add          r1, PP, #0xe, lsl #12
    //     0x3aa6ec: ldr          r1, [r1, #0xae0]
    // 0x3aa6f0: StoreField: r0->field_13 = r1
    //     0x3aa6f0: stur         r1, [r0, #0x13]
    // 0x3aa6f4: r1 = pp[0xaf6]
    //     0x3aa6f4: add          r1, PP, #0xe, lsl #12
    //     0x3aa6f8: ldr          r1, [r1, #0xae8]
    // 0x3aa6fc: ArrayStore: r0[0] = r1  ; List_8
    //     0x3aa6fc: stur         r1, [r0, #0x17]
    // 0x3aa700: r1 = pp[0xb6e]
    //     0x3aa700: add          r1, PP, #0xe, lsl #12
    //     0x3aa704: ldr          r1, [r1, #0xb60]
    // 0x3aa708: StoreField: r0->field_1b = r1
    //     0x3aa708: stur         r1, [r0, #0x1b]
    // 0x3aa70c: r1 = pp[0xb06]
    //     0x3aa70c: add          r1, PP, #0xe, lsl #12
    //     0x3aa710: ldr          r1, [r1, #0xaf8]
    // 0x3aa714: StoreField: r0->field_23 = r1
    //     0x3aa714: stur         r1, [r0, #0x23]
    // 0x3aa718: r1 = pp[0xb2]
    //     0x3aa718: add          r1, PP, #0xa, lsl #12
    //     0x3aa71c: ldr          r1, [r1, #0xa8]
    // 0x3aa720: StoreField: r0->field_2b = r1
    //     0x3aa720: stur         r1, [r0, #0x2b]
    // 0x3aa724: StoreField: r0->field_2f = xzr
    //     0x3aa724: stur         xzr, [r0, #0x2f]
    //     0x3aa728: ldur         r1, [fp, #-8]
    // 0x3aa72c: StoreField: r0->field_b = r1
    //     0x3aa72c: stur         r1, [r0, #0xb]
    // 0x3aa730: SP = fp
    //     0x3aa730: mov          SP, fp
    // 0x3aa734: LeaveFrame
    //     0x3aa734: ldp          fp, lr, [SP], #0x10
    // 0x3aa738: ret
    //     0x3aa738: ret          
  }

  _maxWidthText() {
    // ** addr: 0x3aa73c, size: 0x80
    // 0x3aa73c: EnterFrame
    //     0x3aa73c: stp          fp, lr, [SP, #-0x10]!
    //     0x3aa740: mov          fp, SP
    // 0x3aa744: AllocStack(0x20)
    //     0x3aa744: sub          SP, SP, #0x20
    //     0x3aa748: stur         r1, [fp, #-8]
    //     0x3aa74c: stur         r2, [fp, #-0x10]
    //     0x3aa750: stur         r3, [fp, #-0x18]
    // 0x3aa754: CheckStackOverflow
    //     0x3aa754: ldr          BARRIER, [THR, #0x38]
    //     0x3aa758: cmp          SP, BARRIER
    //     0x3aa75c: b.ls         0x3aa7b4
    // 0x3aa760: r0 = call 0x2b8e80
    //     0x3aa760: bl           0x2b8e80
    //     0x3aa764: stur         r0, [fp, #-0x20]
    // 0x3aa768: StoreField: r0->field_7 = xzr
    //     0x3aa768: stur         xzr, [r0, #7]
    // 0x3aa76c: d0 = pp[0x6688]
    //     0x3aa76c: ldr          d0, [PP, #0x6688]
    // 0x3aa770: StoreField: r0->field_f = d0
    //     0x3aa770: stur         d0, [r0, #0xf]
    // 0x3aa774: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3aa774: stur         xzr, [r0, #0x17]
    // 0x3aa778: d0 = pp[0xb90]
    //     0x3aa778: ldr          d0, [PP, #0xb90]
    // 0x3aa77c: StoreField: r0->field_1f = d0
    //     0x3aa77c: stur         d0, [r0, #0x1f]
    //     0x3aa780: ldur         r1, [fp, #-8]
    //     0x3aa784: ldur         r2, [fp, #-0x10]
    //     0x3aa788: ldur         r3, [fp, #-0x18]
    // 0x3aa78c: r0 = soul_flutter_international$biz$party$page_party_lucky_bag_PagePartyLotteryNameList::_userName()
    //     0x3aa78c: bl           0x3aa7bc
    //     0x3aa790: stur         r0, [fp, #-8]
    // 0x3aa794: r0 = call 0x39646c
    //     0x3aa794: bl           0x39646c
    //     0x3aa798: ldur         r1, [fp, #-0x20]
    // 0x3aa79c: StoreField: r0->field_f = r1
    //     0x3aa79c: stur         r1, [r0, #0xf]
    //     0x3aa7a0: ldur         r1, [fp, #-8]
    // 0x3aa7a4: StoreField: r0->field_b = r1
    //     0x3aa7a4: stur         r1, [r0, #0xb]
    // 0x3aa7a8: SP = fp
    //     0x3aa7a8: mov          SP, fp
    // 0x3aa7ac: LeaveFrame
    //     0x3aa7ac: ldp          fp, lr, [SP], #0x10
    // 0x3aa7b0: ret
    //     0x3aa7b0: ret          
    // 0x3aa7b4: r0 = call 0x61fa28
    //     0x3aa7b4: bl           0x61fa28
    // 0x3aa7b8: b 0x3aa760
    //     0x3aa7b8: b            0x3aa760
  }

  _userName() {
    // ** addr: 0x3aa7bc, size: 0x48
    // 0x3aa7bc: EnterFrame
    //     0x3aa7bc: stp          fp, lr, [SP, #-0x10]!
    //     0x3aa7c0: mov          fp, SP
    // 0x3aa7c4: AllocStack(0x10)
    //     0x3aa7c4: sub          SP, SP, #0x10
    //     0x3aa7c8: stur         r2, [fp, #-8]
    //     0x3aa7cc: stur         r3, [fp, #-0x10]
    // 0x3aa7d0: r0 = call 0x393bf8
    //     0x3aa7d0: bl           0x393bf8
    //     0x3aa7d4: ldur         r1, [fp, #-0x10]
    // 0x3aa7d8: StoreField: r0->field_b = r1
    //     0x3aa7d8: stur         r1, [r0, #0xb]
    //     0x3aa7dc: ldur         r1, [fp, #-8]
    // 0x3aa7e0: StoreField: r0->field_13 = r1
    //     0x3aa7e0: stur         r1, [r0, #0x13]
    // 0x3aa7e4: r1 = pp[0x23f]
    //     0x3aa7e4: add          r1, PP, #0xf, lsl #12
    //     0x3aa7e8: ldr          r1, [r1, #0x230]
    // 0x3aa7ec: StoreField: r0->field_2b = r1
    //     0x3aa7ec: stur         r1, [r0, #0x2b]
    //     0x3aa7f0: mov          r1, #2
    // 0x3aa7f4: StoreField: r0->field_37 = r1
    //     0x3aa7f4: stur         r1, [r0, #0x37]
    // 0x3aa7f8: SP = fp
    //     0x3aa7f8: mov          SP, fp
    // 0x3aa7fc: LeaveFrame
    //     0x3aa7fc: ldp          fp, lr, [SP], #0x10
    // 0x3aa800: ret
    //     0x3aa800: ret          
  }

  ctor() {
    // ** addr: 0x424130, size: 0x234
    // 0x424130: EnterFrame
    //     0x424130: stp          fp, lr, [SP, #-0x10]!
    //     0x424134: mov          fp, SP
    // 0x424138: AllocStack(0x18)
    //     0x424138: sub          SP, SP, #0x18
    // 0x42413c: r0 = r2
    //     0x42413c: mov          r0, r2
    //     0x424140: stur         r2, [fp, #-0x10]
    // 0x424144: r2 = r1
    //     0x424144: mov          r2, r1
    //     0x424148: stur         r1, [fp, #-8]
    // 0x42414c: CheckStackOverflow
    //     0x42414c: ldr          BARRIER, [THR, #0x38]
    //     0x424150: cmp          SP, BARRIER
    //     0x424154: b.ls         0x42435c
    // 0x424158: r1 = pp[0x974]
    //     0x424158: add          r1, PP, #0xc, lsl #12
    //     0x42415c: ldr          r1, [r1, #0x968]
    // 0x424160: r4 = pp[0x4c0]
    //     0x424160: ldr          r4, [PP, #0x4c0]
    // 0x424164: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x424164: bl           0x3a1dcc
    //     0x424168: ldur         r1, [fp, #-8]
    // 0x42416c: StoreField: r1->field_b = r0
    //     0x42416c: stur         r0, [r1, #0xb]
    //     0x424170: ldurb        r16, [r1, #-1]
    //     0x424174: ldurb        r17, [r0, #-1]
    //     0x424178: and          BARRIER, r17, BARRIER, lsr #2
    //     0x42417c: tst          BARRIER, HEAP, lsr #32
    // 0x424180: b.eq 0x424188
    //     0x424180: b.eq         0x424188
    // 0x424184: r0 = call 0x61e04c
    //     0x424184: bl           0x61e04c
    // 0x424188: r0 = call 0x31d844
    //     0x424188: bl           0x31d844
    // 0x42418c: r1 = r0
    //     0x42418c: mov          r1, r0
    // 0x424190: r0 = pp[0x6310]
    //     0x424190: ldr          r0, [PP, #0x6310]
    //     0x424194: stur         r1, [fp, #-0x18]
    // 0x424198: StoreField: r1->field_27 = r0
    //     0x424198: stur         r0, [r1, #0x27]
    //     0x42419c: fmov         d0, #1.00000000
    // 0x4241a0: StoreField: r1->field_7 = d0
    //     0x4241a0: stur         d0, [r1, #7]
    // 0x4241a4: d1 = pp[0xae0]
    //     0x4241a4: add          r17, PP, #0x10, lsl #12
    //     0x4241a8: ldr          d1, [r17, #0xad0]
    // 0x4241ac: StoreField: r1->field_f = d1
    //     0x4241ac: stur         d1, [r1, #0xf]
    // 0x4241b0: d2 = pp[0xae8]
    //     0x4241b0: add          r17, PP, #0x10, lsl #12
    //     0x4241b4: ldr          d2, [r17, #0xad8]
    // 0x4241b8: ArrayStore: r1[0] = d2  ; List_8
    //     0x4241b8: stur         d2, [r1, #0x17]
    // 0x4241bc: d3 = pp[0xaf0]
    //     0x4241bc: add          r17, PP, #0x10, lsl #12
    //     0x4241c0: ldr          d3, [r17, #0xae0]
    // 0x4241c4: StoreField: r1->field_1f = d3
    //     0x4241c4: stur         d3, [r1, #0x1f]
    // 0x4241c8: r0 = call 0x31abec
    //     0x4241c8: bl           0x31abec
    //     0x4241cc: add          r1, NULL, #0x20
    // 0x4241d0: StoreField: r0->field_7 = r1
    //     0x4241d0: stur         r1, [r0, #7]
    //     0x4241d4: ldur         r2, [fp, #-0x18]
    // 0x4241d8: StoreField: r0->field_b = r2
    //     0x4241d8: stur         r2, [r0, #0xb]
    // 0x4241dc: r2 = pp[0xb5e]
    //     0x4241dc: add          r2, PP, #0xe, lsl #12
    //     0x4241e0: ldr          r2, [r2, #0xb50]
    // 0x4241e4: StoreField: r0->field_1f = r2
    //     0x4241e4: stur         r2, [r0, #0x1f]
    // 0x4241e8: r2 = pp[0x5a1]
    //     0x4241e8: add          r2, PP, #0x11, lsl #12
    //     0x4241ec: ldr          r2, [r2, #0x590]
    // 0x4241f0: StoreField: r0->field_13 = r2
    //     0x4241f0: stur         r2, [r0, #0x13]
    //     0x4241f4: ldur         r3, [fp, #-8]
    // 0x4241f8: StoreField: r3->field_13 = r0
    //     0x4241f8: stur         r0, [r3, #0x13]
    //     0x4241fc: ldurb        r16, [r3, #-1]
    //     0x424200: ldurb        r17, [r0, #-1]
    //     0x424204: and          BARRIER, r17, BARRIER, lsr #2
    //     0x424208: tst          BARRIER, HEAP, lsr #32
    // 0x42420c: b.eq 0x424214
    //     0x42420c: b.eq         0x424214
    // 0x424210: r0 = call 0x61e08c
    //     0x424210: bl           0x61e08c
    // 0x424214: r0 = call 0x31d844
    //     0x424214: bl           0x31d844
    // 0x424218: r1 = r0
    //     0x424218: mov          r1, r0
    // 0x42421c: r0 = pp[0x6310]
    //     0x42421c: ldr          r0, [PP, #0x6310]
    //     0x424220: stur         r1, [fp, #-0x18]
    // 0x424224: StoreField: r1->field_27 = r0
    //     0x424224: stur         r0, [r1, #0x27]
    //     0x424228: fmov         d0, #1.00000000
    // 0x42422c: StoreField: r1->field_7 = d0
    //     0x42422c: stur         d0, [r1, #7]
    // 0x424230: d1 = pp[0xae0]
    //     0x424230: add          r17, PP, #0x10, lsl #12
    //     0x424234: ldr          d1, [r17, #0xad0]
    // 0x424238: StoreField: r1->field_f = d1
    //     0x424238: stur         d1, [r1, #0xf]
    // 0x42423c: d2 = pp[0xae8]
    //     0x42423c: add          r17, PP, #0x10, lsl #12
    //     0x424240: ldr          d2, [r17, #0xad8]
    // 0x424244: ArrayStore: r1[0] = d2  ; List_8
    //     0x424244: stur         d2, [r1, #0x17]
    // 0x424248: d3 = pp[0xaf0]
    //     0x424248: add          r17, PP, #0x10, lsl #12
    //     0x42424c: ldr          d3, [r17, #0xae0]
    // 0x424250: StoreField: r1->field_1f = d3
    //     0x424250: stur         d3, [r1, #0x1f]
    // 0x424254: r0 = call 0x31abec
    //     0x424254: bl           0x31abec
    //     0x424258: add          r1, NULL, #0x20
    // 0x42425c: StoreField: r0->field_7 = r1
    //     0x42425c: stur         r1, [r0, #7]
    //     0x424260: ldur         r2, [fp, #-0x18]
    // 0x424264: StoreField: r0->field_b = r2
    //     0x424264: stur         r2, [r0, #0xb]
    // 0x424268: r2 = pp[0x217]
    //     0x424268: add          r2, PP, #0xf, lsl #12
    //     0x42426c: ldr          r2, [r2, #0x208]
    // 0x424270: StoreField: r0->field_1f = r2
    //     0x424270: stur         r2, [r0, #0x1f]
    // 0x424274: r3 = pp[0x5a1]
    //     0x424274: add          r3, PP, #0x11, lsl #12
    //     0x424278: ldr          r3, [r3, #0x590]
    // 0x42427c: StoreField: r0->field_13 = r3
    //     0x42427c: stur         r3, [r0, #0x13]
    //     0x424280: ldur         r3, [fp, #-8]
    // 0x424284: ArrayStore: r3[0] = r0  ; List_8
    //     0x424284: stur         r0, [r3, #0x17]
    //     0x424288: ldurb        r16, [r3, #-1]
    //     0x42428c: ldurb        r17, [r0, #-1]
    //     0x424290: and          BARRIER, r17, BARRIER, lsr #2
    //     0x424294: tst          BARRIER, HEAP, lsr #32
    // 0x424298: b.eq 0x4242a0
    //     0x424298: b.eq         0x4242a0
    // 0x42429c: r0 = call 0x61e08c
    //     0x42429c: bl           0x61e08c
    // 0x4242a0: r0 = call 0x31d844
    //     0x4242a0: bl           0x31d844
    // 0x4242a4: r1 = r0
    //     0x4242a4: mov          r1, r0
    // 0x4242a8: r0 = pp[0x6310]
    //     0x4242a8: ldr          r0, [PP, #0x6310]
    //     0x4242ac: stur         r1, [fp, #-0x18]
    // 0x4242b0: StoreField: r1->field_27 = r0
    //     0x4242b0: stur         r0, [r1, #0x27]
    //     0x4242b4: fmov         d0, #1.00000000
    // 0x4242b8: StoreField: r1->field_7 = d0
    //     0x4242b8: stur         d0, [r1, #7]
    // 0x4242bc: d0 = pp[0xae0]
    //     0x4242bc: add          r17, PP, #0x10, lsl #12
    //     0x4242c0: ldr          d0, [r17, #0xad0]
    // 0x4242c4: StoreField: r1->field_f = d0
    //     0x4242c4: stur         d0, [r1, #0xf]
    // 0x4242c8: d0 = pp[0xae8]
    //     0x4242c8: add          r17, PP, #0x10, lsl #12
    //     0x4242cc: ldr          d0, [r17, #0xad8]
    // 0x4242d0: ArrayStore: r1[0] = d0  ; List_8
    //     0x4242d0: stur         d0, [r1, #0x17]
    // 0x4242d4: d0 = pp[0xaf0]
    //     0x4242d4: add          r17, PP, #0x10, lsl #12
    //     0x4242d8: ldr          d0, [r17, #0xae0]
    // 0x4242dc: StoreField: r1->field_1f = d0
    //     0x4242dc: stur         d0, [r1, #0x1f]
    // 0x4242e0: r0 = call 0x31abec
    //     0x4242e0: bl           0x31abec
    //     0x4242e4: add          r1, NULL, #0x20
    // 0x4242e8: StoreField: r0->field_7 = r1
    //     0x4242e8: stur         r1, [r0, #7]
    //     0x4242ec: ldur         r1, [fp, #-0x18]
    // 0x4242f0: StoreField: r0->field_b = r1
    //     0x4242f0: stur         r1, [r0, #0xb]
    // 0x4242f4: r1 = pp[0x217]
    //     0x4242f4: add          r1, PP, #0xf, lsl #12
    //     0x4242f8: ldr          r1, [r1, #0x208]
    // 0x4242fc: StoreField: r0->field_1f = r1
    //     0x4242fc: stur         r1, [r0, #0x1f]
    // 0x424300: r1 = pp[0x958]
    //     0x424300: add          r1, PP, #0x10, lsl #12
    //     0x424304: ldr          r1, [r1, #0x948]
    // 0x424308: StoreField: r0->field_23 = r1
    //     0x424308: stur         r1, [r0, #0x23]
    //     0x42430c: ldur         r1, [fp, #-8]
    // 0x424310: StoreField: r1->field_1b = r0
    //     0x424310: stur         r0, [r1, #0x1b]
    //     0x424314: ldurb        r16, [r1, #-1]
    //     0x424318: ldurb        r17, [r0, #-1]
    //     0x42431c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x424320: tst          BARRIER, HEAP, lsr #32
    // 0x424324: b.eq 0x42432c
    //     0x424324: b.eq         0x42432c
    // 0x424328: r0 = call 0x61e04c
    //     0x424328: bl           0x61e04c
    //     0x42432c: ldur         r0, [fp, #-0x10]
    // 0x424330: StoreField: r1->field_f = r0
    //     0x424330: stur         r0, [r1, #0xf]
    //     0x424334: ldurb        r16, [r1, #-1]
    //     0x424338: ldurb        r17, [r0, #-1]
    //     0x42433c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x424340: tst          BARRIER, HEAP, lsr #32
    // 0x424344: b.eq 0x42434c
    //     0x424344: b.eq         0x42434c
    // 0x424348: r0 = call 0x61e04c
    //     0x424348: bl           0x61e04c
    // 0x42434c: r0 = NULL
    //     0x42434c: mov          r0, NULL
    // 0x424350: SP = fp
    //     0x424350: mov          SP, fp
    // 0x424354: LeaveFrame
    //     0x424354: ldp          fp, lr, [SP], #0x10
    // 0x424358: ret
    //     0x424358: ret          
    // 0x42435c: r0 = call 0x61fa28
    //     0x42435c: bl           0x61fa28
    // 0x424360: b 0x424158
    //     0x424360: b            0x424158
  }

  build() {
    // ** addr: 0x423c40, size: 0x1e0
    // 0x423c40: EnterFrame
    //     0x423c40: stp          fp, lr, [SP, #-0x10]!
    //     0x423c44: mov          fp, SP
    // 0x423c48: AllocStack(0x18)
    //     0x423c48: sub          SP, SP, #0x18
    //     0x423c4c: stur         r1, [fp, #-8]
    // 0x423c50: CheckStackOverflow
    //     0x423c50: ldr          BARRIER, [THR, #0x38]
    //     0x423c54: cmp          SP, BARRIER
    //     0x423c58: b.ls         0x423e18
    //     0x423c5c: mov          r1, #1
    // 0x423c60: r0 = call 0x61e890
    //     0x423c60: bl           0x61e890
    // 0x423c64: r1 = r0
    //     0x423c64: mov          r1, r0
    //     0x423c68: ldur         r0, [fp, #-8]
    // 0x423c6c: StoreField: r1->field_f = r0
    //     0x423c6c: stur         r0, [r1, #0xf]
    // 0x423c70: LoadField: r3 = r0->field_37
    //     0x423c70: ldur         r3, [r0, #0x37]
    //     0x423c74: add          r3, r3, HEAP, lsl #32
    // 0x423c78: r2 = r1
    //     0x423c78: mov          r2, r1
    //     0x423c7c: stur         r3, [fp, #-0x10]
    // 0x423c80: r1 = pp[0x581]
    //     0x423c80: add          r1, PP, #0x11, lsl #12
    //     0x423c84: ldr          r1, [r1, #0x570]
    // 0x423c88: r0 = call 0x61ec54
    //     0x423c88: bl           0x61ec54
    // 0x423c8c: r1 = pp[0x589]
    //     0x423c8c: add          r1, PP, #0x11, lsl #12
    //     0x423c90: ldr          r1, [r1, #0x578]
    //     0x423c94: stur         r0, [fp, #-8]
    // 0x423c98: r0 = call 0x3b81c4
    //     0x423c98: bl           0x3b81c4
    // 0x423c9c: r2 = r0
    //     0x423c9c: mov          r2, r0
    //     0x423ca0: ldur         r0, [fp, #-8]
    //     0x423ca4: stur         r2, [fp, #-0x18]
    // 0x423ca8: StoreField: r2->field_1b = r0
    //     0x423ca8: stur         r0, [r2, #0x1b]
    // 0x423cac: r1 = pp[0x589]
    //     0x423cac: add          r1, PP, #0x11, lsl #12
    //     0x423cb0: ldr          r1, [r1, #0x578]
    // 0x423cb4: r0 = call 0x41a408
    //     0x423cb4: bl           0x41a408
    // 0x423cb8: r1 = r0
    //     0x423cb8: mov          r1, r0
    //     0x423cbc: ldur         r0, [fp, #-0x10]
    // 0x423cc0: StoreField: r1->field_b = r0
    //     0x423cc0: stur         r0, [r1, #0xb]
    // 0x423cc4: r0 = pp[0x2fc]
    //     0x423cc4: add          r0, PP, #0xc, lsl #12
    //     0x423cc8: ldr          r0, [r0, #0x2f0]
    // 0x423ccc: StoreField: r1->field_13 = r0
    //     0x423ccc: stur         r0, [r1, #0x13]
    //     0x423cd0: ldur         r0, [fp, #-0x18]
    // 0x423cd4: StoreField: r0->field_13 = r1
    //     0x423cd4: stur         r1, [r0, #0x13]
    // 0x423cd8: r1 = r0
    //     0x423cd8: mov          r1, r0
    // 0x423cdc: r0 = dart_async__RootZone::op_at()
    //     0x423cdc: bl           0x60bd34
    // 0x423ce0: r1 = NULL
    //     0x423ce0: mov          r1, NULL
    //     0x423ce4: mov          r2, #2
    // 0x423ce8: r0 = call 0x61f920
    //     0x423ce8: bl           0x61f920
    // 0x423cec: r2 = r0
    //     0x423cec: mov          r2, r0
    //     0x423cf0: ldur         r0, [fp, #-0x18]
    //     0x423cf4: stur         r2, [fp, #-8]
    // 0x423cf8: StoreField: r2->field_f = r0
    //     0x423cf8: stur         r0, [r2, #0xf]
    // 0x423cfc: r1 = pp[0x5c58]
    //     0x423cfc: ldr          r1, [PP, #0x5c58]
    // 0x423d00: r0 = call 0x61e854
    //     0x423d00: bl           0x61e854
    // 0x423d04: r1 = r0
    //     0x423d04: mov          r1, r0
    //     0x423d08: ldur         r0, [fp, #-8]
    //     0x423d0c: stur         r1, [fp, #-0x10]
    // 0x423d10: StoreField: r1->field_f = r0
    //     0x423d10: stur         r0, [r1, #0xf]
    //     0x423d14: mov          r0, #2
    // 0x423d18: StoreField: r1->field_b = r0
    //     0x423d18: stur         r0, [r1, #0xb]
    // 0x423d1c: r0 = call 0x39310c
    //     0x423d1c: bl           0x39310c
    // 0x423d20: r1 = r0
    //     0x423d20: mov          r1, r0
    // 0x423d24: r0 = pp[0x862]
    //     0x423d24: add          r0, PP, #0xa, lsl #12
    //     0x423d28: ldr          r0, [r0, #0x858]
    //     0x423d2c: stur         r1, [fp, #-8]
    // 0x423d30: StoreField: r1->field_f = r0
    //     0x423d30: stur         r0, [r1, #0xf]
    // 0x423d34: r2 = pp[0xaee]
    //     0x423d34: add          r2, PP, #0xe, lsl #12
    //     0x423d38: ldr          r2, [r2, #0xae0]
    // 0x423d3c: StoreField: r1->field_13 = r2
    //     0x423d3c: stur         r2, [r1, #0x13]
    // 0x423d40: r2 = pp[0xaf6]
    //     0x423d40: add          r2, PP, #0xe, lsl #12
    //     0x423d44: ldr          r2, [r2, #0xae8]
    // 0x423d48: ArrayStore: r1[0] = r2  ; List_8
    //     0x423d48: stur         r2, [r1, #0x17]
    // 0x423d4c: r2 = pp[0xb6e]
    //     0x423d4c: add          r2, PP, #0xe, lsl #12
    //     0x423d50: ldr          r2, [r2, #0xb60]
    // 0x423d54: StoreField: r1->field_1b = r2
    //     0x423d54: stur         r2, [r1, #0x1b]
    // 0x423d58: r2 = pp[0xb06]
    //     0x423d58: add          r2, PP, #0xe, lsl #12
    //     0x423d5c: ldr          r2, [r2, #0xaf8]
    // 0x423d60: StoreField: r1->field_23 = r2
    //     0x423d60: stur         r2, [r1, #0x23]
    // 0x423d64: r2 = pp[0xb2]
    //     0x423d64: add          r2, PP, #0xa, lsl #12
    //     0x423d68: ldr          r2, [r2, #0xa8]
    // 0x423d6c: StoreField: r1->field_2b = r2
    //     0x423d6c: stur         r2, [r1, #0x2b]
    // 0x423d70: StoreField: r1->field_2f = xzr
    //     0x423d70: stur         xzr, [r1, #0x2f]
    //     0x423d74: ldur         r2, [fp, #-0x10]
    // 0x423d78: StoreField: r1->field_b = r2
    //     0x423d78: stur         r2, [r1, #0xb]
    // 0x423d7c: r0 = call 0x3a1db4
    //     0x423d7c: bl           0x3a1db4
    // 0x423d80: r1 = r0
    //     0x423d80: mov          r1, r0
    // 0x423d84: r0 = pp[0x862]
    //     0x423d84: add          r0, PP, #0xa, lsl #12
    //     0x423d88: ldr          r0, [r0, #0x858]
    //     0x423d8c: stur         r1, [fp, #-0x10]
    // 0x423d90: StoreField: r1->field_b = r0
    //     0x423d90: stur         r0, [r1, #0xb]
    //     0x423d94: add          r0, NULL, #0x30
    // 0x423d98: StoreField: r1->field_f = r0
    //     0x423d98: stur         r0, [r1, #0xf]
    // 0x423d9c: r0 = call 0x41b0bc
    //     0x423d9c: bl           0x41b0bc
    // 0x423da0: r1 = r0
    //     0x423da0: mov          r1, r0
    //     0x423da4: ldur         r0, [fp, #-0x10]
    // 0x423da8: StoreField: r0->field_1f = r1
    //     0x423da8: stur         r1, [r0, #0x1f]
    //     0x423dac: ldur         r1, [fp, #-8]
    // 0x423db0: StoreField: r0->field_23 = r1
    //     0x423db0: stur         r1, [r0, #0x23]
    // 0x423db4: r1 = pp[0x77d8]
    //     0x423db4: ldr          r1, [PP, #0x77d8]
    // 0x423db8: StoreField: r0->field_27 = r1
    //     0x423db8: stur         r1, [r0, #0x27]
    // 0x423dbc: r1 = pp[0xf1e]
    //     0x423dbc: add          r1, PP, #0xe, lsl #12
    //     0x423dc0: ldr          r1, [r1, #0xf10]
    // 0x423dc4: StoreField: r0->field_2b = r1
    //     0x423dc4: stur         r1, [r0, #0x2b]
    // 0x423dc8: r1 = pp[0x14f]
    //     0x423dc8: add          r1, PP, #0xf, lsl #12
    //     0x423dcc: ldr          r1, [r1, #0x140]
    // 0x423dd0: StoreField: r0->field_2f = r1
    //     0x423dd0: stur         r1, [r0, #0x2f]
    // 0x423dd4: r1 = pp[0x307]
    //     0x423dd4: add          r1, PP, #0xf, lsl #12
    //     0x423dd8: ldr          r1, [r1, #0x2f8]
    // 0x423ddc: StoreField: r0->field_37 = r1
    //     0x423ddc: stur         r1, [r0, #0x37]
    // 0x423de0: r0 = call 0x391c0c
    //     0x423de0: bl           0x391c0c
    // 0x423de4: r1 = r0
    //     0x423de4: mov          r1, r0
    // 0x423de8: r0 = pp[0x591]
    //     0x423de8: add          r0, PP, #0x11, lsl #12
    //     0x423dec: ldr          r0, [r0, #0x580]
    //     0x423df0: stur         r1, [fp, #-8]
    // 0x423df4: StoreField: r1->field_f = r0
    //     0x423df4: stur         r0, [r1, #0xf]
    //     0x423df8: ldur         r0, [fp, #-0x10]
    // 0x423dfc: StoreField: r1->field_b = r0
    //     0x423dfc: stur         r0, [r1, #0xb]
    // 0x423e00: r0 = call 0x3b91cc
    //     0x423e00: bl           0x3b91cc
    //     0x423e04: ldur         r1, [fp, #-8]
    // 0x423e08: StoreField: r0->field_b = r1
    //     0x423e08: stur         r1, [r0, #0xb]
    // 0x423e0c: SP = fp
    //     0x423e0c: mov          SP, fp
    // 0x423e10: LeaveFrame
    //     0x423e10: ldp          fp, lr, [SP], #0x10
    // 0x423e14: ret
    //     0x423e14: ret          
    // 0x423e18: r0 = call 0x61fa28
    //     0x423e18: bl           0x61fa28
    // 0x423e1c: b 0x423c5c
    //     0x423e1c: b            0x423c5c
  }

  _anon_closure() {
    // ** addr: 0x423e20, size: 0x48
    // 0x423e20: EnterFrame
    //     0x423e20: stp          fp, lr, [SP, #-0x10]!
    //     0x423e24: mov          fp, SP
    // 0x423e28: AllocStack(8)
    //     0x423e28: sub          SP, SP, #8
    //     0x423e2c: ldr          r0, [fp, #0x20]
    // 0x423e30: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x423e30: ldur         r2, [r0, #0x17]
    //     0x423e34: add          r2, r2, HEAP, lsl #32
    // 0x423e38: r1 = pp[0x599]
    //     0x423e38: add          r1, PP, #0x11, lsl #12
    //     0x423e3c: ldr          r1, [r1, #0x588]
    // 0x423e40: r0 = call 0x61ec54
    //     0x423e40: bl           0x61ec54
    // 0x423e44: r1 = pp[0x589]
    //     0x423e44: add          r1, PP, #0x11, lsl #12
    //     0x423e48: ldr          r1, [r1, #0x578]
    //     0x423e4c: stur         r0, [fp, #-8]
    // 0x423e50: r0 = call 0x41a414
    //     0x423e50: bl           0x41a414
    //     0x423e54: ldur         r1, [fp, #-8]
    // 0x423e58: StoreField: r0->field_13 = r1
    //     0x423e58: stur         r1, [r0, #0x13]
    // 0x423e5c: SP = fp
    //     0x423e5c: mov          SP, fp
    // 0x423e60: LeaveFrame
    //     0x423e60: ldp          fp, lr, [SP], #0x10
    // 0x423e64: ret
    //     0x423e64: ret          
  }

  _anon_closure() {
    // ** addr: 0x423e68, size: 0x2c8
    // 0x423e68: EnterFrame
    //     0x423e68: stp          fp, lr, [SP, #-0x10]!
    //     0x423e6c: mov          fp, SP
    // 0x423e70: AllocStack(0x38)
    //     0x423e70: sub          SP, SP, #0x38
    //     0x423e74: ldr          r0, [fp, #0x28]
    // 0x423e78: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x423e78: ldur         r1, [r0, #0x17]
    //     0x423e7c: add          r1, r1, HEAP, lsl #32
    //     0x423e80: stur         r1, [fp, #-0x28]
    // 0x423e84: CheckStackOverflow
    //     0x423e84: ldr          BARRIER, [THR, #0x38]
    //     0x423e88: cmp          SP, BARRIER
    //     0x423e8c: b.ls         0x424128
    // 0x423e90: LoadField: r0 = r1->field_f
    //     0x423e90: ldur         r0, [r1, #0xf]
    //     0x423e94: add          r0, r0, HEAP, lsl #32
    // 0x423e98: LoadField: r2 = r0->field_2f
    //     0x423e98: ldur         r2, [r0, #0x2f]
    //     0x423e9c: add          r2, r2, HEAP, lsl #32
    //     0x423ea0: stur         r2, [fp, #-0x20]
    //     0x423ea4: tbz          r2, #4, 0x423eb4
    // 0x423ea8: LoadField: r3 = r0->field_33
    //     0x423ea8: ldur         r3, [r0, #0x33]
    //     0x423eac: add          r3, r3, HEAP, lsl #32
    //     0x423eb0: tbz          r3, #4, 0x423f38
    // 0x423eb4: LoadField: r1 = r0->field_1f
    //     0x423eb4: ldur         r1, [r0, #0x1f]
    //     0x423eb8: add          r1, r1, HEAP, lsl #32
    //     0x423ebc: cmp          r1, r22
    // 0x423ec0: b.ne 0x423ec8
    //     0x423ec0: b.ne         0x423ec8
    // 0x423ec4: r1 = pp[0x148]
    //     0x423ec4: ldr          r1, [PP, #0x148]
    //     0x423ec8: stur         r1, [fp, #-0x18]
    // 0x423ecc: LoadField: r3 = r0->field_2b
    //     0x423ecc: ldur         r3, [r0, #0x2b]
    //     0x423ed0: add          r3, r3, HEAP, lsl #32
    //     0x423ed4: cmp          r3, r22
    // 0x423ed8: b.ne 0x423ee0
    //     0x423ed8: b.ne         0x423ee0
    // 0x423edc: r3 = pp[0x148]
    //     0x423edc: ldr          r3, [PP, #0x148]
    //     0x423ee0: stur         r3, [fp, #-0x10]
    // 0x423ee4: LoadField: r4 = r0->field_27
    //     0x423ee4: ldur         r4, [r0, #0x27]
    //     0x423ee8: add          r4, r4, HEAP, lsl #32
    //     0x423eec: cmp          r4, r22
    // 0x423ef0: b.ne 0x423efc
    //     0x423ef0: b.ne         0x423efc
    // 0x423ef4: r0 = pp[0x148]
    //     0x423ef4: ldr          r0, [PP, #0x148]
    // 0x423ef8: b 0x423f00
    //     0x423ef8: b            0x423f00
    // 0x423efc: r0 = r4
    //     0x423efc: mov          r0, r4
    //     0x423f00: stur         r0, [fp, #-8]
    // 0x423f04: r0 = call 0x424524
    //     0x423f04: bl           0x424524
    // 0x423f08: r1 = r0
    //     0x423f08: mov          r1, r0
    //     0x423f0c: ldur         r0, [fp, #-0x20]
    // 0x423f10: StoreField: r1->field_f = r0
    //     0x423f10: stur         r0, [r1, #0xf]
    //     0x423f14: ldur         r0, [fp, #-0x18]
    // 0x423f18: StoreField: r1->field_b = r0
    //     0x423f18: stur         r0, [r1, #0xb]
    //     0x423f1c: ldur         r0, [fp, #-0x10]
    // 0x423f20: StoreField: r1->field_13 = r0
    //     0x423f20: stur         r0, [r1, #0x13]
    //     0x423f24: ldur         r0, [fp, #-8]
    // 0x423f28: ArrayStore: r1[0] = r0  ; List_8
    //     0x423f28: stur         r0, [r1, #0x17]
    //     0x423f2c: fmov         d0, #13.00000000
    // 0x423f30: StoreField: r1->field_1b = d0
    //     0x423f30: stur         d0, [r1, #0x1b]
    // 0x423f34: b 0x42401c
    //     0x423f34: b            0x42401c
    // 0x423f38: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x423f38: ldur         r2, [r0, #0x17]
    //     0x423f3c: add          r2, r2, HEAP, lsl #32
    // 0x423f40: r0 = LoadClassIdInstr(r2)
    //     0x423f40: ldur         r0, [r2, #-1]
    //     0x423f44: ubfx         r0, r0, #0xc, #0x14
    //     0x423f48: str          r2, [SP]
    // 0x423f4c: r4 = pp[0x3a8]
    //     0x423f4c: ldr          r4, [PP, #0x3a8]
    //     0x423f50: mov          r17, #0x3e07
    //     0x423f54: add          lr, r0, r17
    //     0x423f58: ldr          lr, [r21, lr, lsl #3]
    // 0x423f5c: r0 = [R]()
    //     0x423f5c: blr          lr
    // 0x423f60: r1 = r0
    //     0x423f60: mov          r1, r0
    //     0x423f64: ldur         r0, [fp, #-0x28]
    //     0x423f68: stur         r1, [fp, #-0x30]
    // 0x423f6c: LoadField: r2 = r0->field_f
    //     0x423f6c: ldur         r2, [r0, #0xf]
    //     0x423f70: add          r2, r2, HEAP, lsl #32
    // 0x423f74: LoadField: r0 = r2->field_1f
    //     0x423f74: ldur         r0, [r2, #0x1f]
    //     0x423f78: add          r0, r0, HEAP, lsl #32
    //     0x423f7c: cmp          r0, r22
    // 0x423f80: b.ne 0x423f8c
    //     0x423f80: b.ne         0x423f8c
    // 0x423f84: r3 = pp[0x148]
    //     0x423f84: ldr          r3, [PP, #0x148]
    // 0x423f88: b 0x423f90
    //     0x423f88: b            0x423f90
    // 0x423f8c: r3 = r0
    //     0x423f8c: mov          r3, r0
    //     0x423f90: stur         r3, [fp, #-0x20]
    // 0x423f94: LoadField: r0 = r2->field_23
    //     0x423f94: ldur         r0, [r2, #0x23]
    //     0x423f98: add          r0, r0, HEAP, lsl #32
    //     0x423f9c: cmp          r0, r22
    // 0x423fa0: b.ne 0x423fac
    //     0x423fa0: b.ne         0x423fac
    // 0x423fa4: r7 = pp[0x148]
    //     0x423fa4: ldr          r7, [PP, #0x148]
    // 0x423fa8: b 0x423fb0
    //     0x423fa8: b            0x423fb0
    // 0x423fac: r7 = r0
    //     0x423fac: mov          r7, r0
    //     0x423fb0: stur         r7, [fp, #-0x18]
    // 0x423fb4: LoadField: r0 = r2->field_2b
    //     0x423fb4: ldur         r0, [r2, #0x2b]
    //     0x423fb8: add          r0, r0, HEAP, lsl #32
    //     0x423fbc: cmp          r0, r22
    // 0x423fc0: b.ne 0x423fcc
    //     0x423fc0: b.ne         0x423fcc
    // 0x423fc4: r5 = pp[0x148]
    //     0x423fc4: ldr          r5, [PP, #0x148]
    // 0x423fc8: b 0x423fd0
    //     0x423fc8: b            0x423fd0
    // 0x423fcc: r5 = r0
    //     0x423fcc: mov          r5, r0
    //     0x423fd0: stur         r5, [fp, #-0x10]
    // 0x423fd4: LoadField: r0 = r2->field_27
    //     0x423fd4: ldur         r0, [r2, #0x27]
    //     0x423fd8: add          r0, r0, HEAP, lsl #32
    //     0x423fdc: cmp          r0, r22
    // 0x423fe0: b.ne 0x423fec
    //     0x423fe0: b.ne         0x423fec
    // 0x423fe4: r6 = pp[0x148]
    //     0x423fe4: ldr          r6, [PP, #0x148]
    // 0x423fe8: b 0x423ff0
    //     0x423fe8: b            0x423ff0
    // 0x423fec: r6 = r0
    //     0x423fec: mov          r6, r0
    //     0x423ff0: stur         r6, [fp, #-8]
    // 0x423ff4: r0 = call 0x424518
    //     0x423ff4: bl           0x424518
    // 0x423ff8: r1 = r0
    //     0x423ff8: mov          r1, r0
    //     0x423ffc: ldur         r2, [fp, #-0x30]
    //     0x424000: ldur         r3, [fp, #-0x20]
    //     0x424004: ldur         r5, [fp, #-0x10]
    //     0x424008: ldur         r6, [fp, #-8]
    //     0x42400c: ldur         r7, [fp, #-0x18]
    //     0x424010: stur         r0, [fp, #-8]
    // 0x424014: r0 = soul_flutter_international$biz$party$page_party_lucky_bag_PagePartyLotteryWinnerInfo::ctor()
    //     0x424014: bl           0x424370
    //     0x424018: ldur         r1, [fp, #-8]
    //     0x42401c: ldr          r0, [fp, #0x18]
    //     0x424020: stur         r1, [fp, #-0x10]
    // 0x424024: LoadField: r2 = r0->field_33
    //     0x424024: ldur         r2, [r0, #0x33]
    //     0x424028: add          r2, r2, HEAP, lsl #32
    //     0x42402c: stur         r2, [fp, #-8]
    // 0x424030: LoadField: r0 = r2->field_b
    //     0x424030: ldur         r0, [r2, #0xb]
    //     0x424034: sbfx         r3, r0, #1, #0x1f
    //     0x424038: cmp          r3, #0
    // 0x42403c: b.le 0x42405c
    //     0x42403c: b.le         0x42405c
    // 0x424040: r0 = call 0x424364
    //     0x424040: bl           0x424364
    // 0x424044: r1 = r0
    //     0x424044: mov          r1, r0
    //     0x424048: ldur         r2, [fp, #-8]
    //     0x42404c: stur         r0, [fp, #-8]
    // 0x424050: r0 = soul_flutter_international$biz$party$page_party_lucky_bag_PagePartyLotteryNameList::ctor()
    //     0x424050: bl           0x424130
    //     0x424054: ldur         r4, [fp, #-8]
    // 0x424058: b 0x424074
    //     0x424058: b            0x424074
    // 0x42405c: r0 = call 0x391a04
    //     0x42405c: bl           0x391a04
    // 0x424060: r1 = r0
    //     0x424060: mov          r1, r0
    //     0x424064: stur         r0, [fp, #-8]
    // 0x424068: r4 = pp[0x4c0]
    //     0x424068: ldr          r4, [PP, #0x4c0]
    // 0x42406c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x42406c: bl           0x391490
    //     0x424070: ldur         r4, [fp, #-8]
    //     0x424074: ldur         r0, [fp, #-0x10]
    //     0x424078: mov          r3, #4
    // 0x42407c: r2 = r3
    //     0x42407c: mov          r2, r3
    //     0x424080: stur         r4, [fp, #-8]
    // 0x424084: r1 = NULL
    //     0x424084: mov          r1, NULL
    // 0x424088: r0 = call 0x61f920
    //     0x424088: bl           0x61f920
    // 0x42408c: r2 = r0
    //     0x42408c: mov          r2, r0
    //     0x424090: ldur         r0, [fp, #-0x10]
    //     0x424094: stur         r2, [fp, #-0x18]
    // 0x424098: StoreField: r2->field_f = r0
    //     0x424098: stur         r0, [r2, #0xf]
    //     0x42409c: ldur         r0, [fp, #-8]
    // 0x4240a0: StoreField: r2->field_13 = r0
    //     0x4240a0: stur         r0, [r2, #0x13]
    // 0x4240a4: r1 = pp[0x5c58]
    //     0x4240a4: ldr          r1, [PP, #0x5c58]
    // 0x4240a8: r0 = call 0x61e854
    //     0x4240a8: bl           0x61e854
    // 0x4240ac: r1 = r0
    //     0x4240ac: mov          r1, r0
    //     0x4240b0: ldur         r0, [fp, #-0x18]
    //     0x4240b4: stur         r1, [fp, #-8]
    // 0x4240b8: StoreField: r1->field_f = r0
    //     0x4240b8: stur         r0, [r1, #0xf]
    //     0x4240bc: mov          r0, #4
    // 0x4240c0: StoreField: r1->field_b = r0
    //     0x4240c0: stur         r0, [r1, #0xb]
    // 0x4240c4: r0 = call 0x39310c
    //     0x4240c4: bl           0x39310c
    // 0x4240c8: r1 = pp[0x862]
    //     0x4240c8: add          r1, PP, #0xa, lsl #12
    //     0x4240cc: ldr          r1, [r1, #0x858]
    // 0x4240d0: StoreField: r0->field_f = r1
    //     0x4240d0: stur         r1, [r0, #0xf]
    // 0x4240d4: r1 = pp[0xaee]
    //     0x4240d4: add          r1, PP, #0xe, lsl #12
    //     0x4240d8: ldr          r1, [r1, #0xae0]
    // 0x4240dc: StoreField: r0->field_13 = r1
    //     0x4240dc: stur         r1, [r0, #0x13]
    // 0x4240e0: r1 = pp[0xaf6]
    //     0x4240e0: add          r1, PP, #0xe, lsl #12
    //     0x4240e4: ldr          r1, [r1, #0xae8]
    // 0x4240e8: ArrayStore: r0[0] = r1  ; List_8
    //     0x4240e8: stur         r1, [r0, #0x17]
    // 0x4240ec: r1 = pp[0xb6e]
    //     0x4240ec: add          r1, PP, #0xe, lsl #12
    //     0x4240f0: ldr          r1, [r1, #0xb60]
    // 0x4240f4: StoreField: r0->field_1b = r1
    //     0x4240f4: stur         r1, [r0, #0x1b]
    // 0x4240f8: r1 = pp[0xb06]
    //     0x4240f8: add          r1, PP, #0xe, lsl #12
    //     0x4240fc: ldr          r1, [r1, #0xaf8]
    // 0x424100: StoreField: r0->field_23 = r1
    //     0x424100: stur         r1, [r0, #0x23]
    // 0x424104: r1 = pp[0xb2]
    //     0x424104: add          r1, PP, #0xa, lsl #12
    //     0x424108: ldr          r1, [r1, #0xa8]
    // 0x42410c: StoreField: r0->field_2b = r1
    //     0x42410c: stur         r1, [r0, #0x2b]
    // 0x424110: StoreField: r0->field_2f = xzr
    //     0x424110: stur         xzr, [r0, #0x2f]
    //     0x424114: ldur         r1, [fp, #-8]
    // 0x424118: StoreField: r0->field_b = r1
    //     0x424118: stur         r1, [r0, #0xb]
    // 0x42411c: SP = fp
    //     0x42411c: mov          SP, fp
    // 0x424120: LeaveFrame
    //     0x424120: ldp          fp, lr, [SP], #0x10
    // 0x424124: ret
    //     0x424124: ret          
    // 0x424128: r0 = call 0x61fa28
    //     0x424128: bl           0x61fa28
    // 0x42412c: b 0x423e90
    //     0x42412c: b            0x423e90
  }

  onPageShow() {
    // ** addr: 0x4a9ef4, size: 0x98
    // 0x4a9ef4: EnterFrame
    //     0x4a9ef4: stp          fp, lr, [SP, #-0x10]!
    //     0x4a9ef8: mov          fp, SP
    // 0x4a9efc: AllocStack(8)
    //     0x4a9efc: sub          SP, SP, #8
    // 0x4a9f00: r0 = r1
    //     0x4a9f00: mov          r0, r1
    //     0x4a9f04: stur         r1, [fp, #-8]
    // 0x4a9f08: CheckStackOverflow
    //     0x4a9f08: ldr          BARRIER, [THR, #0x38]
    //     0x4a9f0c: cmp          SP, BARRIER
    //     0x4a9f10: b.ls         0x4a9f84
    // 0x4a9f14: r1 = r0
    //     0x4a9f14: mov          r1, r0
    // 0x4a9f18: r0 = soul_flutter_international$common$base$soul_state_SoulState::onPageShow()
    //     0x4a9f18: bl           0x4aa6c4
    //     0x4a9f1c: ldur         r0, [fp, #-8]
    // 0x4a9f20: LoadField: r1 = r0->field_33
    //     0x4a9f20: ldur         r1, [r0, #0x33]
    //     0x4a9f24: add          r1, r1, HEAP, lsl #32
    //     0x4a9f28: tbnz         r1, #4, 0x4a9f40
    // 0x4a9f2c: r1 = pp[0xc37]
    //     0x4a9f2c: add          r1, PP, #0x17, lsl #12
    //     0x4a9f30: ldr          r1, [r1, #0xc20]
    // 0x4a9f34: r4 = pp[0x4c0]
    //     0x4a9f34: ldr          r4, [PP, #0x4c0]
    // 0x4a9f38: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventPv()
    //     0x4a9f38: bl           0x4a9e38
    // 0x4a9f3c: b 0x4a9f74
    //     0x4a9f3c: b            0x4a9f74
    // 0x4a9f40: LoadField: r1 = r0->field_2f
    //     0x4a9f40: ldur         r1, [r0, #0x2f]
    //     0x4a9f44: add          r1, r1, HEAP, lsl #32
    //     0x4a9f48: tbz          r1, #4, 0x4a9f60
    // 0x4a9f4c: r1 = pp[0xc3f]
    //     0x4a9f4c: add          r1, PP, #0x17, lsl #12
    //     0x4a9f50: ldr          r1, [r1, #0xc28]
    // 0x4a9f54: r4 = pp[0x4c0]
    //     0x4a9f54: ldr          r4, [PP, #0x4c0]
    // 0x4a9f58: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventPv()
    //     0x4a9f58: bl           0x4a9e38
    // 0x4a9f5c: b 0x4a9f74
    //     0x4a9f5c: b            0x4a9f74
    //     0x4a9f60: tbnz         r1, #4, 0x4a9f74
    // 0x4a9f64: r1 = pp[0xc47]
    //     0x4a9f64: add          r1, PP, #0x17, lsl #12
    //     0x4a9f68: ldr          r1, [r1, #0xc30]
    // 0x4a9f6c: r4 = pp[0x4c0]
    //     0x4a9f6c: ldr          r4, [PP, #0x4c0]
    // 0x4a9f70: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventPv()
    //     0x4a9f70: bl           0x4a9e38
    // 0x4a9f74: r0 = NULL
    //     0x4a9f74: mov          r0, NULL
    // 0x4a9f78: SP = fp
    //     0x4a9f78: mov          SP, fp
    // 0x4a9f7c: LeaveFrame
    //     0x4a9f7c: ldp          fp, lr, [SP], #0x10
    // 0x4a9f80: ret
    //     0x4a9f80: ret          
    // 0x4a9f84: r0 = call 0x61fa28
    //     0x4a9f84: bl           0x61fa28
    // 0x4a9f88: b 0x4a9f14
    //     0x4a9f88: b            0x4a9f14
  }

  initState() {
    // ** addr: 0x4d45c8, size: 0x734
    // 0x4d45c8: EnterFrame
    //     0x4d45c8: stp          fp, lr, [SP, #-0x10]!
    //     0x4d45cc: mov          fp, SP
    // 0x4d45d0: AllocStack(0x28)
    //     0x4d45d0: sub          SP, SP, #0x28
    // 0x4d45d4: r3 = r1
    //     0x4d45d4: mov          r3, r1
    //     0x4d45d8: stur         r1, [fp, #-8]
    // 0x4d45dc: CheckStackOverflow
    //     0x4d45dc: ldr          BARRIER, [THR, #0x38]
    //     0x4d45e0: cmp          SP, BARRIER
    //     0x4d45e4: b.ls         0x4d4cd4
    // 0x4d45e8: LoadField: r0 = r3->field_b
    //     0x4d45e8: ldur         r0, [r3, #0xb]
    //     0x4d45ec: add          r0, r0, HEAP, lsl #32
    //     0x4d45f0: cmp          r0, r22
    // 0x4d45f4: b.eq 0x4d4cdc
    //     0x4d45f4: b.eq         0x4d4cdc
    // 0x4d45f8: LoadField: r1 = r0->field_b
    //     0x4d45f8: ldur         r1, [r0, #0xb]
    //     0x4d45fc: add          r1, r1, HEAP, lsl #32
    //     0x4d4600: cmp          r1, r22
    // 0x4d4604: b.ne 0x4d4610
    //     0x4d4604: b.ne         0x4d4610
    // 0x4d4608: r0 = NULL
    //     0x4d4608: mov          r0, NULL
    // 0x4d460c: b 0x4d462c
    //     0x4d460c: b            0x4d462c
    // 0x4d4610: r0 = LoadClassIdInstr(r1)
    //     0x4d4610: ldur         r0, [r1, #-1]
    //     0x4d4614: ubfx         r0, r0, #0xc, #0x14
    // 0x4d4618: r2 = pp[0x5a9]
    //     0x4d4618: add          r2, PP, #0x11, lsl #12
    //     0x4d461c: ldr          r2, [r2, #0x598]
    //     0x4d4620: sub          lr, r0, #1, lsl #12
    //     0x4d4624: ldr          lr, [r21, lr, lsl #3]
    // 0x4d4628: r0 = [R]()
    //     0x4d4628: blr          lr
    //     0x4d462c: cmp          r0, r22
    // 0x4d4630: b.ne 0x4d463c
    //     0x4d4630: b.ne         0x4d463c
    // 0x4d4634: r4 = pp[0x148]
    //     0x4d4634: ldr          r4, [PP, #0x148]
    // 0x4d4638: b 0x4d4640
    //     0x4d4638: b            0x4d4640
    // 0x4d463c: r4 = r0
    //     0x4d463c: mov          r4, r0
    //     0x4d4640: ldur         r3, [fp, #-8]
    // 0x4d4644: r0 = r4
    //     0x4d4644: mov          r0, r4
    //     0x4d4648: stur         r4, [fp, #-0x10]
    // 0x4d464c: r2 = NULL
    //     0x4d464c: mov          r2, NULL
    // 0x4d4650: r1 = NULL
    //     0x4d4650: mov          r1, NULL
    //     0x4d4654: mov          r4, #0x3c
    // 0x4d4658: branchIfSmi(r0, 0x4d4664)
    //     0x4d4658: tbz          r0, #0, 0x4d4664
    // 0x4d465c: r4 = LoadClassIdInstr(r0)
    //     0x4d465c: ldur         r4, [r0, #-1]
    //     0x4d4660: ubfx         r4, r4, #0xc, #0x14
    //     0x4d4664: sub          r4, r4, #0x5e
    //     0x4d4668: cmp          r4, #1
    // 0x4d466c: b.ls 0x4d4680
    //     0x4d466c: b.ls         0x4d4680
    // 0x4d4670: r8 = pp[0xae0]
    //     0x4d4670: ldr          r8, [PP, #0xae0]
    // 0x4d4674: r3 = pp[0x5b1]
    //     0x4d4674: add          r3, PP, #0x11, lsl #12
    //     0x4d4678: ldr          r3, [r3, #0x5a0]
    // 0x4d467c: r0 = call 0x278d08
    //     0x4d467c: bl           0x278d08
    //     0x4d4680: ldur         r0, [fp, #-0x10]
    //     0x4d4684: ldur         r3, [fp, #-8]
    // 0x4d4688: StoreField: r3->field_13 = r0
    //     0x4d4688: stur         r0, [r3, #0x13]
    //     0x4d468c: ldurb        r16, [r3, #-1]
    //     0x4d4690: ldurb        r17, [r0, #-1]
    //     0x4d4694: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d4698: tst          BARRIER, HEAP, lsr #32
    // 0x4d469c: b.eq 0x4d46a4
    //     0x4d469c: b.eq         0x4d46a4
    // 0x4d46a0: r0 = call 0x61e08c
    //     0x4d46a0: bl           0x61e08c
    // 0x4d46a4: LoadField: r0 = r3->field_b
    //     0x4d46a4: ldur         r0, [r3, #0xb]
    //     0x4d46a8: add          r0, r0, HEAP, lsl #32
    //     0x4d46ac: cmp          r0, r22
    // 0x4d46b0: b.eq 0x4d4ce0
    //     0x4d46b0: b.eq         0x4d4ce0
    // 0x4d46b4: LoadField: r1 = r0->field_b
    //     0x4d46b4: ldur         r1, [r0, #0xb]
    //     0x4d46b8: add          r1, r1, HEAP, lsl #32
    //     0x4d46bc: cmp          r1, r22
    // 0x4d46c0: b.ne 0x4d46cc
    //     0x4d46c0: b.ne         0x4d46cc
    // 0x4d46c4: r0 = NULL
    //     0x4d46c4: mov          r0, NULL
    // 0x4d46c8: b 0x4d46e8
    //     0x4d46c8: b            0x4d46e8
    // 0x4d46cc: r0 = LoadClassIdInstr(r1)
    //     0x4d46cc: ldur         r0, [r1, #-1]
    //     0x4d46d0: ubfx         r0, r0, #0xc, #0x14
    // 0x4d46d4: r2 = pp[0xba0]
    //     0x4d46d4: add          r2, PP, #0x10, lsl #12
    //     0x4d46d8: ldr          r2, [r2, #0xb90]
    //     0x4d46dc: sub          lr, r0, #1, lsl #12
    //     0x4d46e0: ldr          lr, [r21, lr, lsl #3]
    // 0x4d46e4: r0 = [R]()
    //     0x4d46e4: blr          lr
    //     0x4d46e8: cmp          r0, r22
    // 0x4d46ec: b.ne 0x4d46f8
    //     0x4d46ec: b.ne         0x4d46f8
    // 0x4d46f0: r4 = pp[0x148]
    //     0x4d46f0: ldr          r4, [PP, #0x148]
    // 0x4d46f4: b 0x4d46fc
    //     0x4d46f4: b            0x4d46fc
    // 0x4d46f8: r4 = r0
    //     0x4d46f8: mov          r4, r0
    //     0x4d46fc: ldur         r3, [fp, #-8]
    // 0x4d4700: r0 = r4
    //     0x4d4700: mov          r0, r4
    //     0x4d4704: stur         r4, [fp, #-0x10]
    // 0x4d4708: r2 = NULL
    //     0x4d4708: mov          r2, NULL
    // 0x4d470c: r1 = NULL
    //     0x4d470c: mov          r1, NULL
    //     0x4d4710: mov          r4, #0x3c
    // 0x4d4714: branchIfSmi(r0, 0x4d4720)
    //     0x4d4714: tbz          r0, #0, 0x4d4720
    // 0x4d4718: r4 = LoadClassIdInstr(r0)
    //     0x4d4718: ldur         r4, [r0, #-1]
    //     0x4d471c: ubfx         r4, r4, #0xc, #0x14
    //     0x4d4720: sub          r4, r4, #0x5e
    //     0x4d4724: cmp          r4, #1
    // 0x4d4728: b.ls 0x4d473c
    //     0x4d4728: b.ls         0x4d473c
    // 0x4d472c: r8 = pp[0xae0]
    //     0x4d472c: ldr          r8, [PP, #0xae0]
    // 0x4d4730: r3 = pp[0x5c1]
    //     0x4d4730: add          r3, PP, #0x11, lsl #12
    //     0x4d4734: ldr          r3, [r3, #0x5b0]
    // 0x4d4738: r0 = call 0x278d08
    //     0x4d4738: bl           0x278d08
    //     0x4d473c: ldur         r0, [fp, #-0x10]
    //     0x4d4740: ldur         r3, [fp, #-8]
    // 0x4d4744: ArrayStore: r3[0] = r0  ; List_8
    //     0x4d4744: stur         r0, [r3, #0x17]
    //     0x4d4748: ldurb        r16, [r3, #-1]
    //     0x4d474c: ldurb        r17, [r0, #-1]
    //     0x4d4750: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d4754: tst          BARRIER, HEAP, lsr #32
    // 0x4d4758: b.eq 0x4d4760
    //     0x4d4758: b.eq         0x4d4760
    // 0x4d475c: r0 = call 0x61e08c
    //     0x4d475c: bl           0x61e08c
    // 0x4d4760: LoadField: r0 = r3->field_b
    //     0x4d4760: ldur         r0, [r3, #0xb]
    //     0x4d4764: add          r0, r0, HEAP, lsl #32
    //     0x4d4768: cmp          r0, r22
    // 0x4d476c: b.eq 0x4d4ce4
    //     0x4d476c: b.eq         0x4d4ce4
    // 0x4d4770: LoadField: r1 = r0->field_b
    //     0x4d4770: ldur         r1, [r0, #0xb]
    //     0x4d4774: add          r1, r1, HEAP, lsl #32
    //     0x4d4778: cmp          r1, r22
    // 0x4d477c: b.ne 0x4d4788
    //     0x4d477c: b.ne         0x4d4788
    // 0x4d4780: r0 = NULL
    //     0x4d4780: mov          r0, NULL
    // 0x4d4784: b 0x4d47a4
    //     0x4d4784: b            0x4d47a4
    // 0x4d4788: r0 = LoadClassIdInstr(r1)
    //     0x4d4788: ldur         r0, [r1, #-1]
    //     0x4d478c: ubfx         r0, r0, #0xc, #0x14
    // 0x4d4790: r2 = pp[0x73b]
    //     0x4d4790: add          r2, PP, #0xb, lsl #12
    //     0x4d4794: ldr          r2, [r2, #0x730]
    //     0x4d4798: sub          lr, r0, #1, lsl #12
    //     0x4d479c: ldr          lr, [r21, lr, lsl #3]
    // 0x4d47a0: r0 = [R]()
    //     0x4d47a0: blr          lr
    //     0x4d47a4: cmp          r0, r22
    // 0x4d47a8: b.ne 0x4d47b4
    //     0x4d47a8: b.ne         0x4d47b4
    // 0x4d47ac: r4 = pp[0x148]
    //     0x4d47ac: ldr          r4, [PP, #0x148]
    // 0x4d47b0: b 0x4d47b8
    //     0x4d47b0: b            0x4d47b8
    // 0x4d47b4: r4 = r0
    //     0x4d47b4: mov          r4, r0
    //     0x4d47b8: ldur         r3, [fp, #-8]
    // 0x4d47bc: r0 = r4
    //     0x4d47bc: mov          r0, r4
    //     0x4d47c0: stur         r4, [fp, #-0x10]
    // 0x4d47c4: r2 = NULL
    //     0x4d47c4: mov          r2, NULL
    // 0x4d47c8: r1 = NULL
    //     0x4d47c8: mov          r1, NULL
    //     0x4d47cc: mov          r4, #0x3c
    // 0x4d47d0: branchIfSmi(r0, 0x4d47dc)
    //     0x4d47d0: tbz          r0, #0, 0x4d47dc
    // 0x4d47d4: r4 = LoadClassIdInstr(r0)
    //     0x4d47d4: ldur         r4, [r0, #-1]
    //     0x4d47d8: ubfx         r4, r4, #0xc, #0x14
    //     0x4d47dc: sub          r4, r4, #0x5e
    //     0x4d47e0: cmp          r4, #1
    // 0x4d47e4: b.ls 0x4d47f8
    //     0x4d47e4: b.ls         0x4d47f8
    // 0x4d47e8: r8 = pp[0xae0]
    //     0x4d47e8: ldr          r8, [PP, #0xae0]
    // 0x4d47ec: r3 = pp[0x5d1]
    //     0x4d47ec: add          r3, PP, #0x11, lsl #12
    //     0x4d47f0: ldr          r3, [r3, #0x5c0]
    // 0x4d47f4: r0 = call 0x278d08
    //     0x4d47f4: bl           0x278d08
    //     0x4d47f8: ldur         r0, [fp, #-0x10]
    //     0x4d47fc: ldur         r3, [fp, #-8]
    // 0x4d4800: StoreField: r3->field_23 = r0
    //     0x4d4800: stur         r0, [r3, #0x23]
    //     0x4d4804: ldurb        r16, [r3, #-1]
    //     0x4d4808: ldurb        r17, [r0, #-1]
    //     0x4d480c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d4810: tst          BARRIER, HEAP, lsr #32
    // 0x4d4814: b.eq 0x4d481c
    //     0x4d4814: b.eq         0x4d481c
    // 0x4d4818: r0 = call 0x61e08c
    //     0x4d4818: bl           0x61e08c
    // 0x4d481c: LoadField: r0 = r3->field_b
    //     0x4d481c: ldur         r0, [r3, #0xb]
    //     0x4d4820: add          r0, r0, HEAP, lsl #32
    //     0x4d4824: cmp          r0, r22
    // 0x4d4828: b.eq 0x4d4ce8
    //     0x4d4828: b.eq         0x4d4ce8
    // 0x4d482c: LoadField: r1 = r0->field_b
    //     0x4d482c: ldur         r1, [r0, #0xb]
    //     0x4d4830: add          r1, r1, HEAP, lsl #32
    //     0x4d4834: cmp          r1, r22
    // 0x4d4838: b.ne 0x4d4844
    //     0x4d4838: b.ne         0x4d4844
    // 0x4d483c: r0 = NULL
    //     0x4d483c: mov          r0, NULL
    // 0x4d4840: b 0x4d4860
    //     0x4d4840: b            0x4d4860
    // 0x4d4844: r0 = LoadClassIdInstr(r1)
    //     0x4d4844: ldur         r0, [r1, #-1]
    //     0x4d4848: ubfx         r0, r0, #0xc, #0x14
    // 0x4d484c: r2 = pp[0x723]
    //     0x4d484c: add          r2, PP, #0xb, lsl #12
    //     0x4d4850: ldr          r2, [r2, #0x718]
    //     0x4d4854: sub          lr, r0, #1, lsl #12
    //     0x4d4858: ldr          lr, [r21, lr, lsl #3]
    // 0x4d485c: r0 = [R]()
    //     0x4d485c: blr          lr
    //     0x4d4860: cmp          r0, r22
    // 0x4d4864: b.ne 0x4d4870
    //     0x4d4864: b.ne         0x4d4870
    // 0x4d4868: r4 = pp[0x148]
    //     0x4d4868: ldr          r4, [PP, #0x148]
    // 0x4d486c: b 0x4d4874
    //     0x4d486c: b            0x4d4874
    // 0x4d4870: r4 = r0
    //     0x4d4870: mov          r4, r0
    //     0x4d4874: ldur         r3, [fp, #-8]
    // 0x4d4878: r0 = r4
    //     0x4d4878: mov          r0, r4
    //     0x4d487c: stur         r4, [fp, #-0x10]
    // 0x4d4880: r2 = NULL
    //     0x4d4880: mov          r2, NULL
    // 0x4d4884: r1 = NULL
    //     0x4d4884: mov          r1, NULL
    //     0x4d4888: mov          r4, #0x3c
    // 0x4d488c: branchIfSmi(r0, 0x4d4898)
    //     0x4d488c: tbz          r0, #0, 0x4d4898
    // 0x4d4890: r4 = LoadClassIdInstr(r0)
    //     0x4d4890: ldur         r4, [r0, #-1]
    //     0x4d4894: ubfx         r4, r4, #0xc, #0x14
    //     0x4d4898: sub          r4, r4, #0x5e
    //     0x4d489c: cmp          r4, #1
    // 0x4d48a0: b.ls 0x4d48b4
    //     0x4d48a0: b.ls         0x4d48b4
    // 0x4d48a4: r8 = pp[0xae0]
    //     0x4d48a4: ldr          r8, [PP, #0xae0]
    // 0x4d48a8: r3 = pp[0x5e1]
    //     0x4d48a8: add          r3, PP, #0x11, lsl #12
    //     0x4d48ac: ldr          r3, [r3, #0x5d0]
    // 0x4d48b0: r0 = call 0x278d08
    //     0x4d48b0: bl           0x278d08
    //     0x4d48b4: ldur         r0, [fp, #-0x10]
    //     0x4d48b8: ldur         r3, [fp, #-8]
    // 0x4d48bc: StoreField: r3->field_2b = r0
    //     0x4d48bc: stur         r0, [r3, #0x2b]
    //     0x4d48c0: ldurb        r16, [r3, #-1]
    //     0x4d48c4: ldurb        r17, [r0, #-1]
    //     0x4d48c8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d48cc: tst          BARRIER, HEAP, lsr #32
    // 0x4d48d0: b.eq 0x4d48d8
    //     0x4d48d0: b.eq         0x4d48d8
    // 0x4d48d4: r0 = call 0x61e08c
    //     0x4d48d4: bl           0x61e08c
    // 0x4d48d8: LoadField: r0 = r3->field_b
    //     0x4d48d8: ldur         r0, [r3, #0xb]
    //     0x4d48dc: add          r0, r0, HEAP, lsl #32
    //     0x4d48e0: cmp          r0, r22
    // 0x4d48e4: b.eq 0x4d4cec
    //     0x4d48e4: b.eq         0x4d4cec
    // 0x4d48e8: LoadField: r1 = r0->field_b
    //     0x4d48e8: ldur         r1, [r0, #0xb]
    //     0x4d48ec: add          r1, r1, HEAP, lsl #32
    //     0x4d48f0: cmp          r1, r22
    // 0x4d48f4: b.ne 0x4d4900
    //     0x4d48f4: b.ne         0x4d4900
    // 0x4d48f8: r0 = NULL
    //     0x4d48f8: mov          r0, NULL
    // 0x4d48fc: b 0x4d491c
    //     0x4d48fc: b            0x4d491c
    // 0x4d4900: r0 = LoadClassIdInstr(r1)
    //     0x4d4900: ldur         r0, [r1, #-1]
    //     0x4d4904: ubfx         r0, r0, #0xc, #0x14
    // 0x4d4908: r2 = pp[0x753]
    //     0x4d4908: add          r2, PP, #0xb, lsl #12
    //     0x4d490c: ldr          r2, [r2, #0x748]
    //     0x4d4910: sub          lr, r0, #1, lsl #12
    //     0x4d4914: ldr          lr, [r21, lr, lsl #3]
    // 0x4d4918: r0 = [R]()
    //     0x4d4918: blr          lr
    //     0x4d491c: cmp          r0, r22
    // 0x4d4920: b.ne 0x4d492c
    //     0x4d4920: b.ne         0x4d492c
    // 0x4d4924: r4 = pp[0x148]
    //     0x4d4924: ldr          r4, [PP, #0x148]
    // 0x4d4928: b 0x4d4930
    //     0x4d4928: b            0x4d4930
    // 0x4d492c: r4 = r0
    //     0x4d492c: mov          r4, r0
    //     0x4d4930: ldur         r3, [fp, #-8]
    // 0x4d4934: r0 = r4
    //     0x4d4934: mov          r0, r4
    //     0x4d4938: stur         r4, [fp, #-0x10]
    // 0x4d493c: r2 = NULL
    //     0x4d493c: mov          r2, NULL
    // 0x4d4940: r1 = NULL
    //     0x4d4940: mov          r1, NULL
    //     0x4d4944: mov          r4, #0x3c
    // 0x4d4948: branchIfSmi(r0, 0x4d4954)
    //     0x4d4948: tbz          r0, #0, 0x4d4954
    // 0x4d494c: r4 = LoadClassIdInstr(r0)
    //     0x4d494c: ldur         r4, [r0, #-1]
    //     0x4d4950: ubfx         r4, r4, #0xc, #0x14
    //     0x4d4954: sub          r4, r4, #0x5e
    //     0x4d4958: cmp          r4, #1
    // 0x4d495c: b.ls 0x4d4970
    //     0x4d495c: b.ls         0x4d4970
    // 0x4d4960: r8 = pp[0xae0]
    //     0x4d4960: ldr          r8, [PP, #0xae0]
    // 0x4d4964: r3 = pp[0x5f1]
    //     0x4d4964: add          r3, PP, #0x11, lsl #12
    //     0x4d4968: ldr          r3, [r3, #0x5e0]
    // 0x4d496c: r0 = call 0x278d08
    //     0x4d496c: bl           0x278d08
    //     0x4d4970: ldur         r0, [fp, #-0x10]
    //     0x4d4974: ldur         r3, [fp, #-8]
    // 0x4d4978: StoreField: r3->field_27 = r0
    //     0x4d4978: stur         r0, [r3, #0x27]
    //     0x4d497c: ldurb        r16, [r3, #-1]
    //     0x4d4980: ldurb        r17, [r0, #-1]
    //     0x4d4984: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d4988: tst          BARRIER, HEAP, lsr #32
    // 0x4d498c: b.eq 0x4d4994
    //     0x4d498c: b.eq         0x4d4994
    // 0x4d4990: r0 = call 0x61e08c
    //     0x4d4990: bl           0x61e08c
    // 0x4d4994: LoadField: r0 = r3->field_b
    //     0x4d4994: ldur         r0, [r3, #0xb]
    //     0x4d4998: add          r0, r0, HEAP, lsl #32
    //     0x4d499c: cmp          r0, r22
    // 0x4d49a0: b.eq 0x4d4cf0
    //     0x4d49a0: b.eq         0x4d4cf0
    // 0x4d49a4: LoadField: r1 = r0->field_b
    //     0x4d49a4: ldur         r1, [r0, #0xb]
    //     0x4d49a8: add          r1, r1, HEAP, lsl #32
    //     0x4d49ac: cmp          r1, r22
    // 0x4d49b0: b.ne 0x4d49bc
    //     0x4d49b0: b.ne         0x4d49bc
    // 0x4d49b4: r0 = NULL
    //     0x4d49b4: mov          r0, NULL
    // 0x4d49b8: b 0x4d49d8
    //     0x4d49b8: b            0x4d49d8
    // 0x4d49bc: r0 = LoadClassIdInstr(r1)
    //     0x4d49bc: ldur         r0, [r1, #-1]
    //     0x4d49c0: ubfx         r0, r0, #0xc, #0x14
    // 0x4d49c4: r2 = pp[0x6f3]
    //     0x4d49c4: add          r2, PP, #0xb, lsl #12
    //     0x4d49c8: ldr          r2, [r2, #0x6e8]
    //     0x4d49cc: sub          lr, r0, #1, lsl #12
    //     0x4d49d0: ldr          lr, [r21, lr, lsl #3]
    // 0x4d49d4: r0 = [R]()
    //     0x4d49d4: blr          lr
    //     0x4d49d8: cmp          r0, r22
    // 0x4d49dc: b.ne 0x4d49e4
    //     0x4d49dc: b.ne         0x4d49e4
    // 0x4d49e0: r0 = pp[0x148]
    //     0x4d49e0: ldr          r0, [PP, #0x148]
    //     0x4d49e4: ldur         r3, [fp, #-8]
    // 0x4d49e8: r2 = NULL
    //     0x4d49e8: mov          r2, NULL
    // 0x4d49ec: r1 = NULL
    //     0x4d49ec: mov          r1, NULL
    //     0x4d49f0: mov          r4, #0x3c
    // 0x4d49f4: branchIfSmi(r0, 0x4d4a00)
    //     0x4d49f4: tbz          r0, #0, 0x4d4a00
    // 0x4d49f8: r4 = LoadClassIdInstr(r0)
    //     0x4d49f8: ldur         r4, [r0, #-1]
    //     0x4d49fc: ubfx         r4, r4, #0xc, #0x14
    //     0x4d4a00: sub          r4, r4, #0x5e
    //     0x4d4a04: cmp          r4, #1
    // 0x4d4a08: b.ls 0x4d4a1c
    //     0x4d4a08: b.ls         0x4d4a1c
    // 0x4d4a0c: r8 = pp[0xae0]
    //     0x4d4a0c: ldr          r8, [PP, #0xae0]
    // 0x4d4a10: r3 = pp[0x601]
    //     0x4d4a10: add          r3, PP, #0x11, lsl #12
    //     0x4d4a14: ldr          r3, [r3, #0x5f0]
    // 0x4d4a18: r0 = call 0x278d08
    //     0x4d4a18: bl           0x278d08
    //     0x4d4a1c: ldur         r3, [fp, #-8]
    // 0x4d4a20: LoadField: r0 = r3->field_b
    //     0x4d4a20: ldur         r0, [r3, #0xb]
    //     0x4d4a24: add          r0, r0, HEAP, lsl #32
    //     0x4d4a28: cmp          r0, r22
    // 0x4d4a2c: b.eq 0x4d4cf4
    //     0x4d4a2c: b.eq         0x4d4cf4
    // 0x4d4a30: LoadField: r1 = r0->field_b
    //     0x4d4a30: ldur         r1, [r0, #0xb]
    //     0x4d4a34: add          r1, r1, HEAP, lsl #32
    //     0x4d4a38: cmp          r1, r22
    // 0x4d4a3c: b.ne 0x4d4a48
    //     0x4d4a3c: b.ne         0x4d4a48
    // 0x4d4a40: r0 = NULL
    //     0x4d4a40: mov          r0, NULL
    // 0x4d4a44: b 0x4d4a64
    //     0x4d4a44: b            0x4d4a64
    // 0x4d4a48: r0 = LoadClassIdInstr(r1)
    //     0x4d4a48: ldur         r0, [r1, #-1]
    //     0x4d4a4c: ubfx         r0, r0, #0xc, #0x14
    // 0x4d4a50: r2 = pp[0x9e0]
    //     0x4d4a50: add          r2, PP, #8, lsl #12
    //     0x4d4a54: ldr          r2, [r2, #0x9d8]
    //     0x4d4a58: sub          lr, r0, #1, lsl #12
    //     0x4d4a5c: ldr          lr, [r21, lr, lsl #3]
    // 0x4d4a60: r0 = [R]()
    //     0x4d4a60: blr          lr
    //     0x4d4a64: cmp          r0, r22
    // 0x4d4a68: b.ne 0x4d4a74
    //     0x4d4a68: b.ne         0x4d4a74
    // 0x4d4a6c: r4 = pp[0x148]
    //     0x4d4a6c: ldr          r4, [PP, #0x148]
    // 0x4d4a70: b 0x4d4a78
    //     0x4d4a70: b            0x4d4a78
    // 0x4d4a74: r4 = r0
    //     0x4d4a74: mov          r4, r0
    //     0x4d4a78: ldur         r3, [fp, #-8]
    // 0x4d4a7c: r0 = r4
    //     0x4d4a7c: mov          r0, r4
    //     0x4d4a80: stur         r4, [fp, #-0x10]
    // 0x4d4a84: r2 = NULL
    //     0x4d4a84: mov          r2, NULL
    // 0x4d4a88: r1 = NULL
    //     0x4d4a88: mov          r1, NULL
    //     0x4d4a8c: mov          r4, #0x3c
    // 0x4d4a90: branchIfSmi(r0, 0x4d4a9c)
    //     0x4d4a90: tbz          r0, #0, 0x4d4a9c
    // 0x4d4a94: r4 = LoadClassIdInstr(r0)
    //     0x4d4a94: ldur         r4, [r0, #-1]
    //     0x4d4a98: ubfx         r4, r4, #0xc, #0x14
    //     0x4d4a9c: sub          r4, r4, #0x5e
    //     0x4d4aa0: cmp          r4, #1
    // 0x4d4aa4: b.ls 0x4d4ab8
    //     0x4d4aa4: b.ls         0x4d4ab8
    // 0x4d4aa8: r8 = pp[0xae0]
    //     0x4d4aa8: ldr          r8, [PP, #0xae0]
    // 0x4d4aac: r3 = pp[0x611]
    //     0x4d4aac: add          r3, PP, #0x11, lsl #12
    //     0x4d4ab0: ldr          r3, [r3, #0x600]
    // 0x4d4ab4: r0 = call 0x278d08
    //     0x4d4ab4: bl           0x278d08
    //     0x4d4ab8: ldur         r0, [fp, #-0x10]
    //     0x4d4abc: ldur         r3, [fp, #-8]
    // 0x4d4ac0: StoreField: r3->field_1b = r0
    //     0x4d4ac0: stur         r0, [r3, #0x1b]
    //     0x4d4ac4: ldurb        r16, [r3, #-1]
    //     0x4d4ac8: ldurb        r17, [r0, #-1]
    //     0x4d4acc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d4ad0: tst          BARRIER, HEAP, lsr #32
    // 0x4d4ad4: b.eq 0x4d4adc
    //     0x4d4ad4: b.eq         0x4d4adc
    // 0x4d4ad8: r0 = call 0x61e08c
    //     0x4d4ad8: bl           0x61e08c
    // 0x4d4adc: LoadField: r0 = r3->field_b
    //     0x4d4adc: ldur         r0, [r3, #0xb]
    //     0x4d4ae0: add          r0, r0, HEAP, lsl #32
    //     0x4d4ae4: cmp          r0, r22
    // 0x4d4ae8: b.eq 0x4d4cf8
    //     0x4d4ae8: b.eq         0x4d4cf8
    // 0x4d4aec: LoadField: r1 = r0->field_b
    //     0x4d4aec: ldur         r1, [r0, #0xb]
    //     0x4d4af0: add          r1, r1, HEAP, lsl #32
    //     0x4d4af4: cmp          r1, r22
    // 0x4d4af8: b.ne 0x4d4b04
    //     0x4d4af8: b.ne         0x4d4b04
    // 0x4d4afc: r0 = NULL
    //     0x4d4afc: mov          r0, NULL
    // 0x4d4b00: b 0x4d4b20
    //     0x4d4b00: b            0x4d4b20
    // 0x4d4b04: r0 = LoadClassIdInstr(r1)
    //     0x4d4b04: ldur         r0, [r1, #-1]
    //     0x4d4b08: ubfx         r0, r0, #0xc, #0x14
    // 0x4d4b0c: r2 = pp[0xd58]
    //     0x4d4b0c: add          r2, PP, #0x10, lsl #12
    //     0x4d4b10: ldr          r2, [r2, #0xd48]
    //     0x4d4b14: sub          lr, r0, #1, lsl #12
    //     0x4d4b18: ldr          lr, [r21, lr, lsl #3]
    // 0x4d4b1c: r0 = [R]()
    //     0x4d4b1c: blr          lr
    //     0x4d4b20: cmp          r0, r22
    // 0x4d4b24: b.ne 0x4d4b30
    //     0x4d4b24: b.ne         0x4d4b30
    // 0x4d4b28: r4 = pp[0x148]
    //     0x4d4b28: ldr          r4, [PP, #0x148]
    // 0x4d4b2c: b 0x4d4b34
    //     0x4d4b2c: b            0x4d4b34
    // 0x4d4b30: r4 = r0
    //     0x4d4b30: mov          r4, r0
    //     0x4d4b34: ldur         r3, [fp, #-8]
    // 0x4d4b38: r0 = r4
    //     0x4d4b38: mov          r0, r4
    //     0x4d4b3c: stur         r4, [fp, #-0x10]
    // 0x4d4b40: r2 = NULL
    //     0x4d4b40: mov          r2, NULL
    // 0x4d4b44: r1 = NULL
    //     0x4d4b44: mov          r1, NULL
    //     0x4d4b48: mov          r4, #0x3c
    // 0x4d4b4c: branchIfSmi(r0, 0x4d4b58)
    //     0x4d4b4c: tbz          r0, #0, 0x4d4b58
    // 0x4d4b50: r4 = LoadClassIdInstr(r0)
    //     0x4d4b50: ldur         r4, [r0, #-1]
    //     0x4d4b54: ubfx         r4, r4, #0xc, #0x14
    //     0x4d4b58: sub          r4, r4, #0x5e
    //     0x4d4b5c: cmp          r4, #1
    // 0x4d4b60: b.ls 0x4d4b74
    //     0x4d4b60: b.ls         0x4d4b74
    // 0x4d4b64: r8 = pp[0xae0]
    //     0x4d4b64: ldr          r8, [PP, #0xae0]
    // 0x4d4b68: r3 = pp[0x621]
    //     0x4d4b68: add          r3, PP, #0x11, lsl #12
    //     0x4d4b6c: ldr          r3, [r3, #0x610]
    // 0x4d4b70: r0 = call 0x278d08
    //     0x4d4b70: bl           0x278d08
    //     0x4d4b74: ldur         r0, [fp, #-0x10]
    //     0x4d4b78: ldur         r1, [fp, #-8]
    // 0x4d4b7c: StoreField: r1->field_1f = r0
    //     0x4d4b7c: stur         r0, [r1, #0x1f]
    //     0x4d4b80: ldurb        r16, [r1, #-1]
    //     0x4d4b84: ldurb        r17, [r0, #-1]
    //     0x4d4b88: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d4b8c: tst          BARRIER, HEAP, lsr #32
    // 0x4d4b90: b.eq 0x4d4b98
    //     0x4d4b90: b.eq         0x4d4b98
    // 0x4d4b94: r0 = call 0x61e04c
    //     0x4d4b94: bl           0x61e04c
    // 0x4d4b98: LoadField: r0 = r1->field_1b
    //     0x4d4b98: ldur         r0, [r1, #0x1b]
    //     0x4d4b9c: add          r0, r0, HEAP, lsl #32
    // 0x4d4ba0: r2 = LoadClassIdInstr(r0)
    //     0x4d4ba0: ldur         r2, [r0, #-1]
    //     0x4d4ba4: ubfx         r2, r2, #0xc, #0x14
    // 0x4d4ba8: BARRIER = pp[0x631]
    //     0x4d4ba8: add          BARRIER, PP, #0x11, lsl #12
    //     0x4d4bac: ldr          BARRIER, [BARRIER, #0x620]
    //     0x4d4bb0: stp          BARRIER, r0, [SP]
    // 0x4d4bb4: r0 = r2
    //     0x4d4bb4: mov          r0, r2
    // 0x4d4bb8: lr = r0
    //     0x4d4bb8: mov          lr, r0
    //     0x4d4bbc: ldr          lr, [r21, lr, lsl #3]
    // 0x4d4bc0: r0 = [R]()
    //     0x4d4bc0: blr          lr
    //     0x4d4bc4: tbnz         r0, #4, 0x4d4bdc
    //     0x4d4bc8: ldur         r1, [fp, #-8]
    //     0x4d4bcc: add          r2, NULL, #0x20
    // 0x4d4bd0: StoreField: r1->field_2f = r2
    //     0x4d4bd0: stur         r2, [r1, #0x2f]
    // 0x4d4bd4: r0 = r1
    //     0x4d4bd4: mov          r0, r1
    // 0x4d4bd8: b 0x4d4c70
    //     0x4d4bd8: b            0x4d4c70
    //     0x4d4bdc: ldur         r1, [fp, #-8]
    //     0x4d4be0: add          r2, NULL, #0x20
    // 0x4d4be4: LoadField: r0 = r1->field_1b
    //     0x4d4be4: ldur         r0, [r1, #0x1b]
    //     0x4d4be8: add          r0, r0, HEAP, lsl #32
    // 0x4d4bec: r3 = LoadClassIdInstr(r0)
    //     0x4d4bec: ldur         r3, [r0, #-1]
    //     0x4d4bf0: ubfx         r3, r3, #0xc, #0x14
    // 0x4d4bf4: BARRIER = pp[0x75f]
    //     0x4d4bf4: add          BARRIER, PP, #0xf, lsl #12
    //     0x4d4bf8: ldr          BARRIER, [BARRIER, #0x750]
    //     0x4d4bfc: stp          BARRIER, r0, [SP]
    // 0x4d4c00: r0 = r3
    //     0x4d4c00: mov          r0, r3
    // 0x4d4c04: lr = r0
    //     0x4d4c04: mov          lr, r0
    //     0x4d4c08: ldr          lr, [r21, lr, lsl #3]
    // 0x4d4c0c: r0 = [R]()
    //     0x4d4c0c: blr          lr
    //     0x4d4c10: tbz          r0, #4, 0x4d4c48
    //     0x4d4c14: ldur         r1, [fp, #-8]
    // 0x4d4c18: LoadField: r0 = r1->field_1b
    //     0x4d4c18: ldur         r0, [r1, #0x1b]
    //     0x4d4c1c: add          r0, r0, HEAP, lsl #32
    // 0x4d4c20: r2 = LoadClassIdInstr(r0)
    //     0x4d4c20: ldur         r2, [r0, #-1]
    //     0x4d4c24: ubfx         r2, r2, #0xc, #0x14
    // 0x4d4c28: BARRIER = pp[0x639]
    //     0x4d4c28: add          BARRIER, PP, #0x11, lsl #12
    //     0x4d4c2c: ldr          BARRIER, [BARRIER, #0x628]
    //     0x4d4c30: stp          BARRIER, r0, [SP]
    // 0x4d4c34: r0 = r2
    //     0x4d4c34: mov          r0, r2
    // 0x4d4c38: lr = r0
    //     0x4d4c38: mov          lr, r0
    //     0x4d4c3c: ldr          lr, [r21, lr, lsl #3]
    // 0x4d4c40: r0 = [R]()
    //     0x4d4c40: blr          lr
    //     0x4d4c44: tbnz         r0, #4, 0x4d4c60
    //     0x4d4c48: ldur         r0, [fp, #-8]
    //     0x4d4c4c: add          r1, NULL, #0x20
    //     0x4d4c50: add          r2, NULL, #0x30
    // 0x4d4c54: StoreField: r0->field_2f = r2
    //     0x4d4c54: stur         r2, [r0, #0x2f]
    // 0x4d4c58: StoreField: r0->field_33 = r1
    //     0x4d4c58: stur         r1, [r0, #0x33]
    // 0x4d4c5c: b 0x4d4c70
    //     0x4d4c5c: b            0x4d4c70
    //     0x4d4c60: ldur         r0, [fp, #-8]
    //     0x4d4c64: add          r2, NULL, #0x30
    // 0x4d4c68: StoreField: r0->field_2f = r2
    //     0x4d4c68: stur         r2, [r0, #0x2f]
    // 0x4d4c6c: StoreField: r0->field_33 = r2
    //     0x4d4c6c: stur         r2, [r0, #0x33]
    // 0x4d4c70: LoadField: r2 = r0->field_37
    //     0x4d4c70: ldur         r2, [r0, #0x37]
    //     0x4d4c74: add          r2, r2, HEAP, lsl #32
    //     0x4d4c78: stur         r2, [fp, #-0x10]
    // 0x4d4c7c: LoadField: r1 = r0->field_13
    //     0x4d4c7c: ldur         r1, [r0, #0x13]
    //     0x4d4c80: add          r1, r1, HEAP, lsl #32
    //     0x4d4c84: cmp          r1, r22
    // 0x4d4c88: b.ne 0x4d4c90
    //     0x4d4c88: b.ne         0x4d4c90
    // 0x4d4c8c: r1 = pp[0x148]
    //     0x4d4c8c: ldr          r1, [PP, #0x148]
    // 0x4d4c90: r4 = pp[0x4c0]
    //     0x4d4c90: ldr          r4, [PP, #0x4c0]
    // 0x4d4c94: r0 = dart_core_int::parse()
    //     0x4d4c94: bl           0x28703c
    // 0x4d4c98: r1 = pp[0x641]
    //     0x4d4c98: add          r1, PP, #0x11, lsl #12
    //     0x4d4c9c: ldr          r1, [r1, #0x630]
    // 0x4d4ca0: r2 = NULL
    //     0x4d4ca0: mov          r2, NULL
    //     0x4d4ca4: stur         r0, [fp, #-0x18]
    // 0x4d4ca8: r0 = call 0x61ec54
    //     0x4d4ca8: bl           0x61ec54
    //     0x4d4cac: ldur         r1, [fp, #-0x10]
    //     0x4d4cb0: ldur         r2, [fp, #-0x18]
    // 0x4d4cb4: r3 = r0
    //     0x4d4cb4: mov          r3, r0
    // 0x4d4cb8: r0 = soul_flutter_international$biz$party$notifier$notifier_party_packag_list_LuckyBagListItemNotifier::gainLuckyBagInfo()
    //     0x4d4cb8: bl           0x4d4d68
    //     0x4d4cbc: ldur         r1, [fp, #-0x10]
    // 0x4d4cc0: r0 = soul_flutter_international$biz$party$notifier$notifier_party_packag_list_LuckyBagListItemNotifier::requestUserInfo()
    //     0x4d4cc0: bl           0x4d4cfc
    // 0x4d4cc4: r0 = NULL
    //     0x4d4cc4: mov          r0, NULL
    // 0x4d4cc8: SP = fp
    //     0x4d4cc8: mov          SP, fp
    // 0x4d4ccc: LeaveFrame
    //     0x4d4ccc: ldp          fp, lr, [SP], #0x10
    // 0x4d4cd0: ret
    //     0x4d4cd0: ret          
    // 0x4d4cd4: r0 = call 0x61fa28
    //     0x4d4cd4: bl           0x61fa28
    // 0x4d4cd8: b 0x4d45e8
    //     0x4d4cd8: b            0x4d45e8
    // 0x4d4cdc: r0 = call 0x61ffd0
    //     0x4d4cdc: bl           0x61ffd0
    // 0x4d4ce0: r0 = call 0x61ffd0
    //     0x4d4ce0: bl           0x61ffd0
    // 0x4d4ce4: r0 = call 0x61ffd0
    //     0x4d4ce4: bl           0x61ffd0
    // 0x4d4ce8: r0 = call 0x61ffd0
    //     0x4d4ce8: bl           0x61ffd0
    // 0x4d4cec: r0 = call 0x61ffd0
    //     0x4d4cec: bl           0x61ffd0
    // 0x4d4cf0: r0 = call 0x61ffd0
    //     0x4d4cf0: bl           0x61ffd0
    // 0x4d4cf4: r0 = call 0x61ffd0
    //     0x4d4cf4: bl           0x61ffd0
    // 0x4d4cf8: r0 = call 0x61ffd0
    //     0x4d4cf8: bl           0x61ffd0
  }

  createState() {
    // ** addr: 0x4c4190, size: 0x84
    // 0x4c4190: EnterFrame
    //     0x4c4190: stp          fp, lr, [SP, #-0x10]!
    //     0x4c4194: mov          fp, SP
    // 0x4c4198: AllocStack(0x10)
    //     0x4c4198: sub          SP, SP, #0x10
    // 0x4c419c: CheckStackOverflow
    //     0x4c419c: ldr          BARRIER, [THR, #0x38]
    //     0x4c41a0: cmp          SP, BARRIER
    //     0x4c41a4: b.ls         0x4c420c
    // 0x4c41a8: r1 = pp[0x7eb]
    //     0x4c41a8: add          r1, PP, #0xb, lsl #12
    //     0x4c41ac: ldr          r1, [r1, #0x7e0]
    // 0x4c41b0: r0 = call 0x4c4328
    //     0x4c41b0: bl           0x4c4328
    // 0x4c41b4: r1 = r0
    //     0x4c41b4: mov          r1, r0
    //     0x4c41b8: add          r0, NULL, #0x30
    //     0x4c41bc: stur         r1, [fp, #-8]
    // 0x4c41c0: StoreField: r1->field_2f = r0
    //     0x4c41c0: stur         r0, [r1, #0x2f]
    // 0x4c41c4: StoreField: r1->field_33 = r0
    //     0x4c41c4: stur         r0, [r1, #0x33]
    // 0x4c41c8: r0 = call 0x4c431c
    //     0x4c41c8: bl           0x4c431c
    // 0x4c41cc: r1 = r0
    //     0x4c41cc: mov          r1, r0
    //     0x4c41d0: stur         r0, [fp, #-0x10]
    // 0x4c41d4: r0 = soul_flutter_international$biz$party$notifier$notifier_party_packag_list_LuckyBagListItemNotifier::ctor()
    //     0x4c41d4: bl           0x4c4214
    //     0x4c41d8: ldur         r0, [fp, #-0x10]
    //     0x4c41dc: ldur         r1, [fp, #-8]
    // 0x4c41e0: StoreField: r1->field_37 = r0
    //     0x4c41e0: stur         r0, [r1, #0x37]
    //     0x4c41e4: ldurb        r16, [r1, #-1]
    //     0x4c41e8: ldurb        r17, [r0, #-1]
    //     0x4c41ec: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c41f0: tst          BARRIER, HEAP, lsr #32
    // 0x4c41f4: b.eq 0x4c41fc
    //     0x4c41f4: b.eq         0x4c41fc
    // 0x4c41f8: r0 = call 0x61e04c
    //     0x4c41f8: bl           0x61e04c
    // 0x4c41fc: r0 = r1
    //     0x4c41fc: mov          r0, r1
    // 0x4c4200: SP = fp
    //     0x4c4200: mov          SP, fp
    // 0x4c4204: LeaveFrame
    //     0x4c4204: ldp          fp, lr, [SP], #0x10
    // 0x4c4208: ret
    //     0x4c4208: ret          
    // 0x4c420c: r0 = call 0x61fa28
    //     0x4c420c: bl           0x61fa28
    // 0x4c4210: b 0x4c41a8
    //     0x4c4210: b            0x4c41a8
  }
