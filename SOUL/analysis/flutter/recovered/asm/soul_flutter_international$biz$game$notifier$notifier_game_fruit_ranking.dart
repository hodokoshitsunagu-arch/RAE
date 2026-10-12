// lib: , url: soul_flutter_international$biz$game$notifier$notifier_game_fruit_ranking


  requestGameFruitRankList() {
    // ** addr: 0x4365ec, size: 0xa0
    // 0x4365ec: EnterFrame
    //     0x4365ec: stp          fp, lr, [SP, #-0x10]!
    //     0x4365f0: mov          fp, SP
    // 0x4365f4: AllocStack(0x20)
    //     0x4365f4: sub          SP, SP, #0x20
    //     0x4365f8: stur         r1, [fp, #-8]
    //     0x4365fc: stur         r2, [fp, #-0x10]
    // 0x436600: CheckStackOverflow
    //     0x436600: ldr          BARRIER, [THR, #0x38]
    //     0x436604: cmp          SP, BARRIER
    //     0x436608: b.ls         0x436684
    //     0x43660c: mov          r1, #2
    // 0x436610: r0 = call 0x61e890
    //     0x436610: bl           0x61e890
    // 0x436614: r2 = r0
    //     0x436614: mov          r2, r0
    //     0x436618: ldur         r0, [fp, #-8]
    //     0x43661c: stur         r2, [fp, #-0x18]
    // 0x436620: StoreField: r2->field_f = r0
    //     0x436620: stur         r0, [r2, #0xf]
    //     0x436624: ldur         r1, [fp, #-0x10]
    // 0x436628: StoreField: r2->field_13 = r1
    //     0x436628: stur         r1, [r2, #0x13]
    // 0x43662c: r1 = r0
    //     0x43662c: mov          r1, r0
    // 0x436630: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x436630: bl           0x3ac980
    //     0x436634: ldur         r0, [fp, #-8]
    // 0x436638: LoadField: r3 = r0->field_2f
    //     0x436638: ldur         r3, [r0, #0x2f]
    //     0x43663c: ldur         r2, [fp, #-0x18]
    //     0x436640: stur         r3, [fp, #-0x20]
    // 0x436644: r1 = pp[0x959]
    //     0x436644: add          r1, PP, #0x11, lsl #12
    //     0x436648: ldr          r1, [r1, #0x948]
    // 0x43664c: r0 = call 0x61ec54
    //     0x43664c: bl           0x61ec54
    //     0x436650: ldur         r2, [fp, #-0x18]
    // 0x436654: r1 = pp[0x961]
    //     0x436654: add          r1, PP, #0x11, lsl #12
    //     0x436658: ldr          r1, [r1, #0x950]
    //     0x43665c: stur         r0, [fp, #-8]
    // 0x436660: r0 = call 0x61ec54
    //     0x436660: bl           0x61ec54
    //     0x436664: ldur         r1, [fp, #-0x20]
    //     0x436668: ldur         r2, [fp, #-8]
    // 0x43666c: r3 = r0
    //     0x43666c: mov          r3, r0
    // 0x436670: r0 = soul_flutter_international$api$api_service_SOApiService::getGameFruitRankList()
    //     0x436670: bl           0x4366ac
    // 0x436674: r0 = NULL
    //     0x436674: mov          r0, NULL
    // 0x436678: SP = fp
    //     0x436678: mov          SP, fp
    // 0x43667c: LeaveFrame
    //     0x43667c: ldp          fp, lr, [SP], #0x10
    // 0x436680: ret
    //     0x436680: ret          
    // 0x436684: r0 = call 0x61fa28
    //     0x436684: bl           0x61fa28
    // 0x436688: b 0x43660c
    //     0x436688: b            0x43660c
  }

  _anon_closure() {
    // ** addr: 0x4367b0, size: 0x25c
    // 0x4367b0: EnterFrame
    //     0x4367b0: stp          fp, lr, [SP, #-0x10]!
    //     0x4367b4: mov          fp, SP
    // 0x4367b8: AllocStack(0x30)
    //     0x4367b8: sub          SP, SP, #0x30
    //     0x4367bc: ldr          r0, [fp, #0x18]
    // 0x4367c0: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x4367c0: ldur         r3, [r0, #0x17]
    //     0x4367c4: add          r3, r3, HEAP, lsl #32
    //     0x4367c8: stur         r3, [fp, #-0x10]
    // 0x4367cc: CheckStackOverflow
    //     0x4367cc: ldr          BARRIER, [THR, #0x38]
    //     0x4367d0: cmp          SP, BARRIER
    //     0x4367d4: b.ls         0x436a04
    // 0x4367d8: LoadField: r4 = r3->field_f
    //     0x4367d8: ldur         r4, [r3, #0xf]
    //     0x4367dc: add          r4, r4, HEAP, lsl #32
    //     0x4367e0: ldr          r5, [fp, #0x10]
    //     0x4367e4: stur         r4, [fp, #-8]
    // 0x4367e8: r0 = LoadClassIdInstr(r5)
    //     0x4367e8: ldur         r0, [r5, #-1]
    //     0x4367ec: ubfx         r0, r0, #0xc, #0x14
    // 0x4367f0: r1 = r5
    //     0x4367f0: mov          r1, r5
    // 0x4367f4: r2 = pp[0x377]
    //     0x4367f4: add          r2, PP, #0xf, lsl #12
    //     0x4367f8: ldr          r2, [r2, #0x368]
    //     0x4367fc: sub          lr, r0, #1, lsl #12
    //     0x436800: ldr          lr, [r21, lr, lsl #3]
    // 0x436804: r0 = [R]()
    //     0x436804: blr          lr
    //     0x436808: cmp          r0, r22
    // 0x43680c: b.ne 0x436818
    //     0x43680c: b.ne         0x436818
    //     0x436810: orr          r5, xzr, #0xfffffffffffffffe
    // 0x436814: b 0x43681c
    //     0x436814: b            0x43681c
    // 0x436818: r5 = r0
    //     0x436818: mov          r5, r0
    //     0x43681c: ldr          r4, [fp, #0x10]
    //     0x436820: ldur         r3, [fp, #-8]
    // 0x436824: r0 = r5
    //     0x436824: mov          r0, r5
    //     0x436828: stur         r5, [fp, #-0x18]
    // 0x43682c: r2 = NULL
    //     0x43682c: mov          r2, NULL
    // 0x436830: r1 = NULL
    //     0x436830: mov          r1, NULL
    // 0x436834: branchIfSmi(r0, 0x43685c)
    //     0x436834: tbz          r0, #0, 0x43685c
    // 0x436838: r4 = LoadClassIdInstr(r0)
    //     0x436838: ldur         r4, [r0, #-1]
    //     0x43683c: ubfx         r4, r4, #0xc, #0x14
    //     0x436840: sub          r4, r4, #0x3c
    //     0x436844: cmp          r4, #1
    // 0x436848: b.ls 0x43685c
    //     0x436848: b.ls         0x43685c
    // 0x43684c: r8 = pp[0x1170]
    //     0x43684c: ldr          r8, [PP, #0x1170]
    // 0x436850: r3 = pp[0x969]
    //     0x436850: add          r3, PP, #0x11, lsl #12
    //     0x436854: ldr          r3, [r3, #0x958]
    // 0x436858: r0 = call 0x62aa34
    //     0x436858: bl           0x62aa34
    //     0x43685c: ldur         r0, [fp, #-0x18]
    //     0x436860: sbfx         r1, r0, #1, #0x1f
    // 0x436864: branchIfSmi(r0, 0x43686c)
    //     0x436864: tbz          r0, #0, 0x43686c
    // 0x436868: LoadField: r1 = r0->field_7
    //     0x436868: ldur         r1, [r0, #7]
    //     0x43686c: ldur         r0, [fp, #-8]
    // 0x436870: StoreField: r0->field_2f = r1
    //     0x436870: stur         r1, [r0, #0x2f]
    //     0x436874: ldr          r1, [fp, #0x10]
    // 0x436878: r0 = LoadClassIdInstr(r1)
    //     0x436878: ldur         r0, [r1, #-1]
    //     0x43687c: ubfx         r0, r0, #0xc, #0x14
    // 0x436880: r2 = pp[0x38f]
    //     0x436880: add          r2, PP, #0xf, lsl #12
    //     0x436884: ldr          r2, [r2, #0x380]
    //     0x436888: sub          lr, r0, #1, lsl #12
    //     0x43688c: ldr          lr, [r21, lr, lsl #3]
    // 0x436890: r0 = [R]()
    //     0x436890: blr          lr
    //     0x436894: cmp          r0, r22
    // 0x436898: b.ne 0x4368b0
    //     0x436898: b.ne         0x4368b0
    // 0x43689c: r1 = NULL
    //     0x43689c: mov          r1, NULL
    //     0x4368a0: mov          r2, #0
    // 0x4368a4: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4368a4: bl           0x277268
    // 0x4368a8: r3 = r0
    //     0x4368a8: mov          r3, r0
    // 0x4368ac: b 0x4368b4
    //     0x4368ac: b            0x4368b4
    // 0x4368b0: r3 = r0
    //     0x4368b0: mov          r3, r0
    // 0x4368b4: r0 = r3
    //     0x4368b4: mov          r0, r3
    //     0x4368b8: stur         r3, [fp, #-8]
    // 0x4368bc: r2 = NULL
    //     0x4368bc: mov          r2, NULL
    // 0x4368c0: r1 = NULL
    //     0x4368c0: mov          r1, NULL
    //     0x4368c4: mov          r4, #0x3c
    // 0x4368c8: branchIfSmi(r0, 0x4368d4)
    //     0x4368c8: tbz          r0, #0, 0x4368d4
    // 0x4368cc: r4 = LoadClassIdInstr(r0)
    //     0x4368cc: ldur         r4, [r0, #-1]
    //     0x4368d0: ubfx         r4, r4, #0xc, #0x14
    //     0x4368d4: sub          r4, r4, #0x5a
    //     0x4368d8: cmp          r4, #2
    // 0x4368dc: b.ls 0x436910
    //     0x4368dc: b.ls         0x436910
    //     0x4368e0: sub          r4, r4, #0x16
    //     0x4368e4: cmp          r4, #0x37
    // 0x4368e8: b.ls 0x436910
    //     0x4368e8: b.ls         0x436910
    //     0x4368ec: cmp          r4, #0xebc
    // 0x4368f0: b.eq 0x436910
    //     0x4368f0: b.eq         0x436910
    //     0x4368f4: sub          r4, r4, #0xedd
    //     0x4368f8: cmp          r4, #4
    // 0x4368fc: b.ls 0x436910
    //     0x4368fc: b.ls         0x436910
    // 0x436900: r8 = pp[0x3b80]
    //     0x436900: ldr          r8, [PP, #0x3b80]
    // 0x436904: r3 = pp[0x979]
    //     0x436904: add          r3, PP, #0x11, lsl #12
    //     0x436908: ldr          r3, [r3, #0x968]
    // 0x43690c: r0 = call 0x61d6e4
    //     0x43690c: bl           0x61d6e4
    //     0x436910: ldur         r2, [fp, #-8]
    // 0x436914: r0 = LoadClassIdInstr(r2)
    //     0x436914: ldur         r0, [r2, #-1]
    //     0x436918: ubfx         r0, r0, #0xc, #0x14
    // 0x43691c: r1 = r2
    //     0x43691c: mov          r1, r2
    //     0x436920: mov          r17, #0x89aa
    //     0x436924: add          lr, r0, r17
    //     0x436928: ldr          lr, [r21, lr, lsl #3]
    // 0x43692c: r0 = [R]()
    //     0x43692c: blr          lr
    //     0x436930: tbnz         r0, #4, 0x4369a4
    //     0x436934: ldur         r3, [fp, #-0x10]
    //     0x436938: ldur         r0, [fp, #-8]
    // 0x43693c: LoadField: r1 = r3->field_f
    //     0x43693c: ldur         r1, [r3, #0xf]
    //     0x436940: add          r1, r1, HEAP, lsl #32
    // 0x436944: LoadField: r4 = r1->field_2b
    //     0x436944: ldur         r4, [r1, #0x2b]
    //     0x436948: add          r4, r4, HEAP, lsl #32
    //     0x43694c: stur         r4, [fp, #-0x18]
    // 0x436950: r1 = pp[0x989]
    //     0x436950: add          r1, PP, #0x11, lsl #12
    //     0x436954: ldr          r1, [r1, #0x978]
    // 0x436958: r2 = NULL
    //     0x436958: mov          r2, NULL
    // 0x43695c: r0 = call 0x61ec54
    //     0x43695c: bl           0x61ec54
    // 0x436960: r1 = r0
    //     0x436960: mov          r1, r0
    //     0x436964: ldur         r0, [fp, #-8]
    // 0x436968: r2 = LoadClassIdInstr(r0)
    //     0x436968: ldur         r2, [r0, #-1]
    //     0x43696c: ubfx         r2, r2, #0xc, #0x14
    // 0x436970: BARRIER = pp[0x83b]
    //     0x436970: add          BARRIER, PP, #0xb, lsl #12
    //     0x436974: ldr          BARRIER, [BARRIER, #0x830]
    //     0x436978: stp          r0, BARRIER, [SP, #8]
    //     0x43697c: str          r1, [SP]
    // 0x436980: r0 = r2
    //     0x436980: mov          r0, r2
    // 0x436984: r4 = pp[0x58]
    //     0x436984: ldr          r4, [PP, #0x58]
    //     0x436988: mov          r17, #0x86d9
    //     0x43698c: add          lr, r0, r17
    //     0x436990: ldr          lr, [r21, lr, lsl #3]
    // 0x436994: r0 = [R]()
    //     0x436994: blr          lr
    //     0x436998: ldur         r1, [fp, #-0x18]
    // 0x43699c: r2 = r0
    //     0x43699c: mov          r2, r0
    // 0x4369a0: r0 = dart_core__GrowableList::addAll()
    //     0x4369a0: bl           0x2ce4e8
    //     0x4369a4: ldur         r1, [fp, #-0x10]
    // 0x4369a8: LoadField: r0 = r1->field_13
    //     0x4369a8: ldur         r0, [r1, #0x13]
    //     0x4369ac: add          r0, r0, HEAP, lsl #32
    // 0x4369b0: LoadField: r2 = r1->field_f
    //     0x4369b0: ldur         r2, [r1, #0xf]
    //     0x4369b4: add          r2, r2, HEAP, lsl #32
    // 0x4369b8: LoadField: r3 = r2->field_2f
    //     0x4369b8: ldur         r3, [r2, #0x2f]
    //     0x4369bc: tbnz         r3, #0x3f, 0x4369c8
    //     0x4369c0: add          r2, NULL, #0x30
    // 0x4369c4: b 0x4369cc
    //     0x4369c4: b            0x4369cc
    //     0x4369c8: add          r2, NULL, #0x20
    //     0x4369cc: add          BARRIER, NULL, #0x20
    //     0x4369d0: stp          BARRIER, r0, [SP, #8]
    //     0x4369d4: str          r2, [SP]
    // 0x4369d8: r4 = pp[0x370]
    //     0x4369d8: ldr          r4, [PP, #0x370]
    // 0x4369dc: LoadField: r2 = r0->field_1f
    //     0x4369dc: ldur         r2, [r0, #0x1f]
    // 0x4369e0: r0 = [R]()
    //     0x4369e0: blr          r2
    //     0x4369e4: ldur         r0, [fp, #-0x10]
    // 0x4369e8: LoadField: r1 = r0->field_f
    //     0x4369e8: ldur         r1, [r0, #0xf]
    //     0x4369ec: add          r1, r1, HEAP, lsl #32
    // 0x4369f0: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x4369f0: bl           0x3ac980
    // 0x4369f4: r0 = NULL
    //     0x4369f4: mov          r0, NULL
    // 0x4369f8: SP = fp
    //     0x4369f8: mov          SP, fp
    // 0x4369fc: LeaveFrame
    //     0x4369fc: ldp          fp, lr, [SP], #0x10
    // 0x436a00: ret
    //     0x436a00: ret          
    // 0x436a04: r0 = call 0x61fa28
    //     0x436a04: bl           0x61fa28
    // 0x436a08: b 0x4367d8
    //     0x436a08: b            0x4367d8
  }

  _anon_closure() {
    // ** addr: 0x436a0c, size: 0x60
    // 0x436a0c: EnterFrame
    //     0x436a0c: stp          fp, lr, [SP, #-0x10]!
    //     0x436a10: mov          fp, SP
    // 0x436a14: AllocStack(8)
    //     0x436a14: sub          SP, SP, #8
    // 0x436a18: CheckStackOverflow
    //     0x436a18: ldr          BARRIER, [THR, #0x38]
    //     0x436a1c: cmp          SP, BARRIER
    //     0x436a20: b.ls         0x436a64
    //     0x436a24: ldr          r0, [fp, #0x10]
    // 0x436a28: r2 = NULL
    //     0x436a28: mov          r2, NULL
    // 0x436a2c: r1 = NULL
    //     0x436a2c: mov          r1, NULL
    // 0x436a30: r8 = pp[0x3cd0]
    //     0x436a30: ldr          r8, [PP, #0x3cd0]
    // 0x436a34: r3 = pp[0x991]
    //     0x436a34: add          r3, PP, #0x11, lsl #12
    //     0x436a38: ldr          r3, [r3, #0x980]
    // 0x436a3c: r0 = call 0x2b15f0
    //     0x436a3c: bl           0x2b15f0
    // 0x436a40: r0 = call 0x436d14
    //     0x436a40: bl           0x436d14
    // 0x436a44: r1 = r0
    //     0x436a44: mov          r1, r0
    //     0x436a48: ldr          r2, [fp, #0x10]
    //     0x436a4c: stur         r0, [fp, #-8]
    // 0x436a50: r0 = soul_flutter_international$model$game_fruit_model_GameFruitRankListInfo::ctor_fromJson()
    //     0x436a50: bl           0x436a6c
    //     0x436a54: ldur         r0, [fp, #-8]
    // 0x436a58: SP = fp
    //     0x436a58: mov          SP, fp
    // 0x436a5c: LeaveFrame
    //     0x436a5c: ldp          fp, lr, [SP], #0x10
    // 0x436a60: ret
    //     0x436a60: ret          
    // 0x436a64: r0 = call 0x61fa28
    //     0x436a64: bl           0x61fa28
    // 0x436a68: b 0x436a24
    //     0x436a68: b            0x436a24
  }

  ctor() {
    // ** addr: 0x4c3b10, size: 0xbc
    // 0x4c3b10: EnterFrame
    //     0x4c3b10: stp          fp, lr, [SP, #-0x10]!
    //     0x4c3b14: mov          fp, SP
    // 0x4c3b18: AllocStack(8)
    //     0x4c3b18: sub          SP, SP, #8
    // 0x4c3b1c: r0 = r1
    //     0x4c3b1c: mov          r0, r1
    //     0x4c3b20: stur         r1, [fp, #-8]
    // 0x4c3b24: CheckStackOverflow
    //     0x4c3b24: ldr          BARRIER, [THR, #0x38]
    //     0x4c3b28: cmp          SP, BARRIER
    //     0x4c3b2c: b.ls         0x4c3bc4
    // 0x4c3b30: r1 = pp[0x83b]
    //     0x4c3b30: add          r1, PP, #0xb, lsl #12
    //     0x4c3b34: ldr          r1, [r1, #0x830]
    //     0x4c3b38: mov          r2, #0
    // 0x4c3b3c: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c3b3c: bl           0x277268
    //     0x4c3b40: ldur         r1, [fp, #-8]
    // 0x4c3b44: StoreField: r1->field_2b = r0
    //     0x4c3b44: stur         r0, [r1, #0x2b]
    //     0x4c3b48: ldurb        r16, [r1, #-1]
    //     0x4c3b4c: ldurb        r17, [r0, #-1]
    //     0x4c3b50: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3b54: tst          BARRIER, HEAP, lsr #32
    // 0x4c3b58: b.eq 0x4c3b60
    //     0x4c3b58: b.eq         0x4c3b60
    // 0x4c3b5c: r0 = call 0x61e04c
    //     0x4c3b5c: bl           0x61e04c
    //     0x4c3b60: mov          r0, #-1
    // 0x4c3b64: StoreField: r1->field_2f = r0
    //     0x4c3b64: stur         r0, [r1, #0x2f]
    // 0x4c3b68: StoreField: r1->field_23 = r0
    //     0x4c3b68: stur         r0, [r1, #0x23]
    // 0x4c3b6c: StoreField: r1->field_7 = xzr
    //     0x4c3b6c: stur         xzr, [r1, #7]
    // 0x4c3b70: StoreField: r1->field_13 = xzr
    //     0x4c3b70: stur         xzr, [r1, #0x13]
    // 0x4c3b74: StoreField: r1->field_1b = xzr
    //     0x4c3b74: stur         xzr, [r1, #0x1b]
    //     0x4c3b78: ldr          r0, [THR, #0x68]
    // 0x4c3b7c: LoadField: r0 = r0->field_b90
    //     0x4c3b7c: ldr          r0, [r0, #0xb90]
    // 0x4c3b80: BARRIER = pp[0x40]
    //     0x4c3b80: ldr          BARRIER, [PP, #0x40]
    //     0x4c3b84: cmp          r0, r16
    // 0x4c3b88: b.ne 0x4c3b94
    //     0x4c3b88: b.ne         0x4c3b94
    // 0x4c3b8c: r2 = pp[0x3608]
    //     0x4c3b8c: ldr          r2, [PP, #0x3608]
    // 0x4c3b90: r0 = call 0x61d99c
    //     0x4c3b90: bl           0x61d99c
    //     0x4c3b94: ldur         r1, [fp, #-8]
    // 0x4c3b98: StoreField: r1->field_f = r0
    //     0x4c3b98: stur         r0, [r1, #0xf]
    //     0x4c3b9c: ldurb        r16, [r1, #-1]
    //     0x4c3ba0: ldurb        r17, [r0, #-1]
    //     0x4c3ba4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3ba8: tst          BARRIER, HEAP, lsr #32
    // 0x4c3bac: b.eq 0x4c3bb4
    //     0x4c3bac: b.eq         0x4c3bb4
    // 0x4c3bb0: r0 = call 0x61e04c
    //     0x4c3bb0: bl           0x61e04c
    // 0x4c3bb4: r0 = NULL
    //     0x4c3bb4: mov          r0, NULL
    // 0x4c3bb8: SP = fp
    //     0x4c3bb8: mov          SP, fp
    // 0x4c3bbc: LeaveFrame
    //     0x4c3bbc: ldp          fp, lr, [SP], #0x10
    // 0x4c3bc0: ret
    //     0x4c3bc0: ret          
    // 0x4c3bc4: r0 = call 0x61fa28
    //     0x4c3bc4: bl           0x61fa28
    // 0x4c3bc8: b 0x4c3b30
    //     0x4c3bc8: b            0x4c3b30
  }

  gainGameFruitRank() {
    // ** addr: 0x4d8fbc, size: 0x54
    // 0x4d8fbc: EnterFrame
    //     0x4d8fbc: stp          fp, lr, [SP, #-0x10]!
    //     0x4d8fc0: mov          fp, SP
    // 0x4d8fc4: AllocStack(0x10)
    //     0x4d8fc4: sub          SP, SP, #0x10
    // 0x4d8fc8: r0 = r1
    //     0x4d8fc8: mov          r0, r1
    //     0x4d8fcc: stur         r1, [fp, #-8]
    //     0x4d8fd0: stur         r2, [fp, #-0x10]
    // 0x4d8fd4: CheckStackOverflow
    //     0x4d8fd4: ldr          BARRIER, [THR, #0x38]
    //     0x4d8fd8: cmp          SP, BARRIER
    //     0x4d8fdc: b.ls         0x4d9008
    // 0x4d8fe0: LoadField: r1 = r0->field_2b
    //     0x4d8fe0: ldur         r1, [r0, #0x2b]
    //     0x4d8fe4: add          r1, r1, HEAP, lsl #32
    // 0x4d8fe8: r0 = dart_core__GrowableList::clear()
    //     0x4d8fe8: bl           0x2b3608
    //     0x4d8fec: ldur         r1, [fp, #-8]
    //     0x4d8ff0: ldur         r2, [fp, #-0x10]
    // 0x4d8ff4: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_ranking_GameFruitRankingNotifier::requestGameFruitRankList()
    //     0x4d8ff4: bl           0x4365ec
    // 0x4d8ff8: r0 = NULL
    //     0x4d8ff8: mov          r0, NULL
    // 0x4d8ffc: SP = fp
    //     0x4d8ffc: mov          SP, fp
    // 0x4d9000: LeaveFrame
    //     0x4d9000: ldp          fp, lr, [SP], #0x10
    // 0x4d9004: ret
    //     0x4d9004: ret          
    // 0x4d9008: r0 = call 0x61fa28
    //     0x4d9008: bl           0x61fa28
    // 0x4d900c: b 0x4d8fe0
    //     0x4d900c: b            0x4d8fe0
  }
