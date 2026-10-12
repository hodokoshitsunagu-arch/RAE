// lib: , url: soul_flutter_international$biz$party$notifier$notifier_party_package_history


  requestLuckyBagHistoryList() {
    // ** addr: 0x3ab794, size: 0xa0
    // 0x3ab794: EnterFrame
    //     0x3ab794: stp          fp, lr, [SP, #-0x10]!
    //     0x3ab798: mov          fp, SP
    // 0x3ab79c: AllocStack(0x20)
    //     0x3ab79c: sub          SP, SP, #0x20
    //     0x3ab7a0: stur         r1, [fp, #-8]
    //     0x3ab7a4: stur         r2, [fp, #-0x10]
    // 0x3ab7a8: CheckStackOverflow
    //     0x3ab7a8: ldr          BARRIER, [THR, #0x38]
    //     0x3ab7ac: cmp          SP, BARRIER
    //     0x3ab7b0: b.ls         0x3ab82c
    //     0x3ab7b4: mov          r1, #2
    // 0x3ab7b8: r0 = call 0x61e890
    //     0x3ab7b8: bl           0x61e890
    // 0x3ab7bc: r2 = r0
    //     0x3ab7bc: mov          r2, r0
    //     0x3ab7c0: ldur         r0, [fp, #-8]
    //     0x3ab7c4: stur         r2, [fp, #-0x18]
    // 0x3ab7c8: StoreField: r2->field_f = r0
    //     0x3ab7c8: stur         r0, [r2, #0xf]
    //     0x3ab7cc: ldur         r1, [fp, #-0x10]
    // 0x3ab7d0: StoreField: r2->field_13 = r1
    //     0x3ab7d0: stur         r1, [r2, #0x13]
    // 0x3ab7d4: r1 = r0
    //     0x3ab7d4: mov          r1, r0
    // 0x3ab7d8: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x3ab7d8: bl           0x3ac980
    //     0x3ab7dc: ldur         r0, [fp, #-8]
    // 0x3ab7e0: LoadField: r3 = r0->field_2f
    //     0x3ab7e0: ldur         r3, [r0, #0x2f]
    //     0x3ab7e4: ldur         r2, [fp, #-0x18]
    //     0x3ab7e8: stur         r3, [fp, #-0x20]
    // 0x3ab7ec: r1 = pp[0x481]
    //     0x3ab7ec: add          r1, PP, #0x11, lsl #12
    //     0x3ab7f0: ldr          r1, [r1, #0x470]
    // 0x3ab7f4: r0 = call 0x61ec54
    //     0x3ab7f4: bl           0x61ec54
    //     0x3ab7f8: ldur         r2, [fp, #-0x18]
    // 0x3ab7fc: r1 = pp[0x489]
    //     0x3ab7fc: add          r1, PP, #0x11, lsl #12
    //     0x3ab800: ldr          r1, [r1, #0x478]
    //     0x3ab804: stur         r0, [fp, #-8]
    // 0x3ab808: r0 = call 0x61ec54
    //     0x3ab808: bl           0x61ec54
    //     0x3ab80c: ldur         r1, [fp, #-0x20]
    //     0x3ab810: ldur         r2, [fp, #-8]
    // 0x3ab814: r3 = r0
    //     0x3ab814: mov          r3, r0
    // 0x3ab818: r0 = soul_flutter_international$api$api_service_SOApiService::getSendPackRecordList()
    //     0x3ab818: bl           0x3ab854
    // 0x3ab81c: r0 = NULL
    //     0x3ab81c: mov          r0, NULL
    // 0x3ab820: SP = fp
    //     0x3ab820: mov          SP, fp
    // 0x3ab824: LeaveFrame
    //     0x3ab824: ldp          fp, lr, [SP], #0x10
    // 0x3ab828: ret
    //     0x3ab828: ret          
    // 0x3ab82c: r0 = call 0x61fa28
    //     0x3ab82c: bl           0x61fa28
    // 0x3ab830: b 0x3ab7b4
    //     0x3ab830: b            0x3ab7b4
  }

  _anon_closure() {
    // ** addr: 0x3ac9bc, size: 0x9c
    // 0x3ac9bc: EnterFrame
    //     0x3ac9bc: stp          fp, lr, [SP, #-0x10]!
    //     0x3ac9c0: mov          fp, SP
    // 0x3ac9c4: AllocStack(0x20)
    //     0x3ac9c4: sub          SP, SP, #0x20
    //     0x3ac9c8: add          r1, NULL, #0x20
    //     0x3ac9cc: add          r0, NULL, #0x30
    //     0x3ac9d0: ldr          r2, [fp, #0x10]
    // 0x3ac9d4: ArrayLoad: r3 = r2[0]  ; List_8
    //     0x3ac9d4: ldur         r3, [r2, #0x17]
    //     0x3ac9d8: add          r3, r3, HEAP, lsl #32
    //     0x3ac9dc: stur         r3, [fp, #-8]
    // 0x3ac9e0: CheckStackOverflow
    //     0x3ac9e0: ldr          BARRIER, [THR, #0x38]
    //     0x3ac9e4: cmp          SP, BARRIER
    //     0x3ac9e8: b.ls         0x3aca50
    // 0x3ac9ec: LoadField: r2 = r3->field_f
    //     0x3ac9ec: ldur         r2, [r3, #0xf]
    //     0x3ac9f0: add          r2, r2, HEAP, lsl #32
    // 0x3ac9f4: StoreField: r2->field_37 = r1
    //     0x3ac9f4: stur         r1, [r2, #0x37]
    // 0x3ac9f8: StoreField: r2->field_3b = r0
    //     0x3ac9f8: stur         r0, [r2, #0x3b]
    // 0x3ac9fc: LoadField: r0 = r3->field_13
    //     0x3ac9fc: ldur         r0, [r3, #0x13]
    //     0x3aca00: add          r0, r0, HEAP, lsl #32
    // 0x3aca04: LoadField: r1 = r2->field_2f
    //     0x3aca04: ldur         r1, [r2, #0x2f]
    //     0x3aca08: tbnz         r1, #0x3f, 0x3aca14
    //     0x3aca0c: add          r2, NULL, #0x30
    // 0x3aca10: b 0x3aca18
    //     0x3aca10: b            0x3aca18
    //     0x3aca14: add          r2, NULL, #0x20
    //     0x3aca18: add          BARRIER, NULL, #0x30
    //     0x3aca1c: stp          BARRIER, r0, [SP, #8]
    //     0x3aca20: str          r2, [SP]
    // 0x3aca24: r4 = pp[0x370]
    //     0x3aca24: ldr          r4, [PP, #0x370]
    // 0x3aca28: LoadField: r2 = r0->field_1f
    //     0x3aca28: ldur         r2, [r0, #0x1f]
    // 0x3aca2c: r0 = [R]()
    //     0x3aca2c: blr          r2
    //     0x3aca30: ldur         r0, [fp, #-8]
    // 0x3aca34: LoadField: r1 = r0->field_f
    //     0x3aca34: ldur         r1, [r0, #0xf]
    //     0x3aca38: add          r1, r1, HEAP, lsl #32
    // 0x3aca3c: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x3aca3c: bl           0x3ac980
    // 0x3aca40: r0 = NULL
    //     0x3aca40: mov          r0, NULL
    // 0x3aca44: SP = fp
    //     0x3aca44: mov          SP, fp
    // 0x3aca48: LeaveFrame
    //     0x3aca48: ldp          fp, lr, [SP], #0x10
    // 0x3aca4c: ret
    //     0x3aca4c: ret          
    // 0x3aca50: r0 = call 0x61fa28
    //     0x3aca50: bl           0x61fa28
    // 0x3aca54: b 0x3ac9ec
    //     0x3aca54: b            0x3ac9ec
  }

  _anon_closure() {
    // ** addr: 0x3aca58, size: 0x268
    // 0x3aca58: EnterFrame
    //     0x3aca58: stp          fp, lr, [SP, #-0x10]!
    //     0x3aca5c: mov          fp, SP
    // 0x3aca60: AllocStack(0x30)
    //     0x3aca60: sub          SP, SP, #0x30
    //     0x3aca64: ldr          r0, [fp, #0x18]
    // 0x3aca68: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x3aca68: ldur         r3, [r0, #0x17]
    //     0x3aca6c: add          r3, r3, HEAP, lsl #32
    //     0x3aca70: stur         r3, [fp, #-0x10]
    // 0x3aca74: CheckStackOverflow
    //     0x3aca74: ldr          BARRIER, [THR, #0x38]
    //     0x3aca78: cmp          SP, BARRIER
    //     0x3aca7c: b.ls         0x3accb8
    // 0x3aca80: LoadField: r4 = r3->field_f
    //     0x3aca80: ldur         r4, [r3, #0xf]
    //     0x3aca84: add          r4, r4, HEAP, lsl #32
    //     0x3aca88: ldr          r5, [fp, #0x10]
    //     0x3aca8c: stur         r4, [fp, #-8]
    // 0x3aca90: r0 = LoadClassIdInstr(r5)
    //     0x3aca90: ldur         r0, [r5, #-1]
    //     0x3aca94: ubfx         r0, r0, #0xc, #0x14
    // 0x3aca98: r1 = r5
    //     0x3aca98: mov          r1, r5
    // 0x3aca9c: r2 = pp[0x377]
    //     0x3aca9c: add          r2, PP, #0xf, lsl #12
    //     0x3acaa0: ldr          r2, [r2, #0x368]
    //     0x3acaa4: sub          lr, r0, #1, lsl #12
    //     0x3acaa8: ldr          lr, [r21, lr, lsl #3]
    // 0x3acaac: r0 = [R]()
    //     0x3acaac: blr          lr
    //     0x3acab0: cmp          r0, r22
    // 0x3acab4: b.ne 0x3acac0
    //     0x3acab4: b.ne         0x3acac0
    //     0x3acab8: orr          r5, xzr, #0xfffffffffffffffe
    // 0x3acabc: b 0x3acac4
    //     0x3acabc: b            0x3acac4
    // 0x3acac0: r5 = r0
    //     0x3acac0: mov          r5, r0
    //     0x3acac4: ldr          r4, [fp, #0x10]
    //     0x3acac8: ldur         r3, [fp, #-8]
    // 0x3acacc: r0 = r5
    //     0x3acacc: mov          r0, r5
    //     0x3acad0: stur         r5, [fp, #-0x18]
    // 0x3acad4: r2 = NULL
    //     0x3acad4: mov          r2, NULL
    // 0x3acad8: r1 = NULL
    //     0x3acad8: mov          r1, NULL
    // 0x3acadc: branchIfSmi(r0, 0x3acb04)
    //     0x3acadc: tbz          r0, #0, 0x3acb04
    // 0x3acae0: r4 = LoadClassIdInstr(r0)
    //     0x3acae0: ldur         r4, [r0, #-1]
    //     0x3acae4: ubfx         r4, r4, #0xc, #0x14
    //     0x3acae8: sub          r4, r4, #0x3c
    //     0x3acaec: cmp          r4, #1
    // 0x3acaf0: b.ls 0x3acb04
    //     0x3acaf0: b.ls         0x3acb04
    // 0x3acaf4: r8 = pp[0x1170]
    //     0x3acaf4: ldr          r8, [PP, #0x1170]
    // 0x3acaf8: r3 = pp[0x491]
    //     0x3acaf8: add          r3, PP, #0x11, lsl #12
    //     0x3acafc: ldr          r3, [r3, #0x480]
    // 0x3acb00: r0 = call 0x62aa34
    //     0x3acb00: bl           0x62aa34
    //     0x3acb04: ldur         r0, [fp, #-0x18]
    //     0x3acb08: sbfx         r1, r0, #1, #0x1f
    // 0x3acb0c: branchIfSmi(r0, 0x3acb14)
    //     0x3acb0c: tbz          r0, #0, 0x3acb14
    // 0x3acb10: LoadField: r1 = r0->field_7
    //     0x3acb10: ldur         r1, [r0, #7]
    //     0x3acb14: ldur         r0, [fp, #-8]
    // 0x3acb18: StoreField: r0->field_2f = r1
    //     0x3acb18: stur         r1, [r0, #0x2f]
    //     0x3acb1c: ldr          r1, [fp, #0x10]
    // 0x3acb20: r0 = LoadClassIdInstr(r1)
    //     0x3acb20: ldur         r0, [r1, #-1]
    //     0x3acb24: ubfx         r0, r0, #0xc, #0x14
    // 0x3acb28: r2 = pp[0x38f]
    //     0x3acb28: add          r2, PP, #0xf, lsl #12
    //     0x3acb2c: ldr          r2, [r2, #0x380]
    //     0x3acb30: sub          lr, r0, #1, lsl #12
    //     0x3acb34: ldr          lr, [r21, lr, lsl #3]
    // 0x3acb38: r0 = [R]()
    //     0x3acb38: blr          lr
    //     0x3acb3c: cmp          r0, r22
    // 0x3acb40: b.ne 0x3acb58
    //     0x3acb40: b.ne         0x3acb58
    // 0x3acb44: r1 = NULL
    //     0x3acb44: mov          r1, NULL
    //     0x3acb48: mov          r2, #0
    // 0x3acb4c: r0 = dart_core__GrowableList::factory_ctor()
    //     0x3acb4c: bl           0x277268
    // 0x3acb50: r3 = r0
    //     0x3acb50: mov          r3, r0
    // 0x3acb54: b 0x3acb5c
    //     0x3acb54: b            0x3acb5c
    // 0x3acb58: r3 = r0
    //     0x3acb58: mov          r3, r0
    // 0x3acb5c: r0 = r3
    //     0x3acb5c: mov          r0, r3
    //     0x3acb60: stur         r3, [fp, #-8]
    // 0x3acb64: r2 = NULL
    //     0x3acb64: mov          r2, NULL
    // 0x3acb68: r1 = NULL
    //     0x3acb68: mov          r1, NULL
    //     0x3acb6c: mov          r4, #0x3c
    // 0x3acb70: branchIfSmi(r0, 0x3acb7c)
    //     0x3acb70: tbz          r0, #0, 0x3acb7c
    // 0x3acb74: r4 = LoadClassIdInstr(r0)
    //     0x3acb74: ldur         r4, [r0, #-1]
    //     0x3acb78: ubfx         r4, r4, #0xc, #0x14
    //     0x3acb7c: sub          r4, r4, #0x5a
    //     0x3acb80: cmp          r4, #2
    // 0x3acb84: b.ls 0x3acbb8
    //     0x3acb84: b.ls         0x3acbb8
    //     0x3acb88: sub          r4, r4, #0x16
    //     0x3acb8c: cmp          r4, #0x37
    // 0x3acb90: b.ls 0x3acbb8
    //     0x3acb90: b.ls         0x3acbb8
    //     0x3acb94: cmp          r4, #0xebc
    // 0x3acb98: b.eq 0x3acbb8
    //     0x3acb98: b.eq         0x3acbb8
    //     0x3acb9c: sub          r4, r4, #0xedd
    //     0x3acba0: cmp          r4, #4
    // 0x3acba4: b.ls 0x3acbb8
    //     0x3acba4: b.ls         0x3acbb8
    // 0x3acba8: r8 = pp[0x3b80]
    //     0x3acba8: ldr          r8, [PP, #0x3b80]
    // 0x3acbac: r3 = pp[0x4a1]
    //     0x3acbac: add          r3, PP, #0x11, lsl #12
    //     0x3acbb0: ldr          r3, [r3, #0x490]
    // 0x3acbb4: r0 = call 0x61d6e4
    //     0x3acbb4: bl           0x61d6e4
    //     0x3acbb8: ldur         r2, [fp, #-8]
    // 0x3acbbc: r0 = LoadClassIdInstr(r2)
    //     0x3acbbc: ldur         r0, [r2, #-1]
    //     0x3acbc0: ubfx         r0, r0, #0xc, #0x14
    // 0x3acbc4: r1 = r2
    //     0x3acbc4: mov          r1, r2
    //     0x3acbc8: mov          r17, #0x89aa
    //     0x3acbcc: add          lr, r0, r17
    //     0x3acbd0: ldr          lr, [r21, lr, lsl #3]
    // 0x3acbd4: r0 = [R]()
    //     0x3acbd4: blr          lr
    //     0x3acbd8: tbnz         r0, #4, 0x3acc4c
    //     0x3acbdc: ldur         r3, [fp, #-0x10]
    //     0x3acbe0: ldur         r0, [fp, #-8]
    // 0x3acbe4: LoadField: r1 = r3->field_f
    //     0x3acbe4: ldur         r1, [r3, #0xf]
    //     0x3acbe8: add          r1, r1, HEAP, lsl #32
    // 0x3acbec: LoadField: r4 = r1->field_2b
    //     0x3acbec: ldur         r4, [r1, #0x2b]
    //     0x3acbf0: add          r4, r4, HEAP, lsl #32
    //     0x3acbf4: stur         r4, [fp, #-0x18]
    // 0x3acbf8: r1 = pp[0x4b1]
    //     0x3acbf8: add          r1, PP, #0x11, lsl #12
    //     0x3acbfc: ldr          r1, [r1, #0x4a0]
    // 0x3acc00: r2 = NULL
    //     0x3acc00: mov          r2, NULL
    // 0x3acc04: r0 = call 0x61ec54
    //     0x3acc04: bl           0x61ec54
    // 0x3acc08: r1 = r0
    //     0x3acc08: mov          r1, r0
    //     0x3acc0c: ldur         r0, [fp, #-8]
    // 0x3acc10: r2 = LoadClassIdInstr(r0)
    //     0x3acc10: ldur         r2, [r0, #-1]
    //     0x3acc14: ubfx         r2, r2, #0xc, #0x14
    // 0x3acc18: BARRIER = pp[0x7e3]
    //     0x3acc18: add          BARRIER, PP, #0xb, lsl #12
    //     0x3acc1c: ldr          BARRIER, [BARRIER, #0x7d8]
    //     0x3acc20: stp          r0, BARRIER, [SP, #8]
    //     0x3acc24: str          r1, [SP]
    // 0x3acc28: r0 = r2
    //     0x3acc28: mov          r0, r2
    // 0x3acc2c: r4 = pp[0x58]
    //     0x3acc2c: ldr          r4, [PP, #0x58]
    //     0x3acc30: mov          r17, #0x86d9
    //     0x3acc34: add          lr, r0, r17
    //     0x3acc38: ldr          lr, [r21, lr, lsl #3]
    // 0x3acc3c: r0 = [R]()
    //     0x3acc3c: blr          lr
    //     0x3acc40: ldur         r1, [fp, #-0x18]
    // 0x3acc44: r2 = r0
    //     0x3acc44: mov          r2, r0
    // 0x3acc48: r0 = dart_core__GrowableList::addAll()
    //     0x3acc48: bl           0x2ce4e8
    //     0x3acc4c: ldur         r1, [fp, #-0x10]
    //     0x3acc50: add          r0, NULL, #0x20
    // 0x3acc54: LoadField: r2 = r1->field_f
    //     0x3acc54: ldur         r2, [r1, #0xf]
    //     0x3acc58: add          r2, r2, HEAP, lsl #32
    // 0x3acc5c: StoreField: r2->field_37 = r0
    //     0x3acc5c: stur         r0, [r2, #0x37]
    // 0x3acc60: StoreField: r2->field_3b = r0
    //     0x3acc60: stur         r0, [r2, #0x3b]
    // 0x3acc64: LoadField: r0 = r1->field_13
    //     0x3acc64: ldur         r0, [r1, #0x13]
    //     0x3acc68: add          r0, r0, HEAP, lsl #32
    // 0x3acc6c: LoadField: r3 = r2->field_2f
    //     0x3acc6c: ldur         r3, [r2, #0x2f]
    //     0x3acc70: tbnz         r3, #0x3f, 0x3acc7c
    //     0x3acc74: add          r2, NULL, #0x30
    // 0x3acc78: b 0x3acc80
    //     0x3acc78: b            0x3acc80
    //     0x3acc7c: add          r2, NULL, #0x20
    //     0x3acc80: add          BARRIER, NULL, #0x20
    //     0x3acc84: stp          BARRIER, r0, [SP, #8]
    //     0x3acc88: str          r2, [SP]
    // 0x3acc8c: r4 = pp[0x370]
    //     0x3acc8c: ldr          r4, [PP, #0x370]
    // 0x3acc90: LoadField: r2 = r0->field_1f
    //     0x3acc90: ldur         r2, [r0, #0x1f]
    // 0x3acc94: r0 = [R]()
    //     0x3acc94: blr          r2
    //     0x3acc98: ldur         r0, [fp, #-0x10]
    // 0x3acc9c: LoadField: r1 = r0->field_f
    //     0x3acc9c: ldur         r1, [r0, #0xf]
    //     0x3acca0: add          r1, r1, HEAP, lsl #32
    // 0x3acca4: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x3acca4: bl           0x3ac980
    // 0x3acca8: r0 = NULL
    //     0x3acca8: mov          r0, NULL
    // 0x3accac: SP = fp
    //     0x3accac: mov          SP, fp
    // 0x3accb0: LeaveFrame
    //     0x3accb0: ldp          fp, lr, [SP], #0x10
    // 0x3accb4: ret
    //     0x3accb4: ret          
    // 0x3accb8: r0 = call 0x61fa28
    //     0x3accb8: bl           0x61fa28
    // 0x3accbc: b 0x3aca80
    //     0x3accbc: b            0x3aca80
  }

  _anon_closure() {
    // ** addr: 0x3accc0, size: 0x60
    // 0x3accc0: EnterFrame
    //     0x3accc0: stp          fp, lr, [SP, #-0x10]!
    //     0x3accc4: mov          fp, SP
    // 0x3accc8: AllocStack(8)
    //     0x3accc8: sub          SP, SP, #8
    // 0x3acccc: CheckStackOverflow
    //     0x3acccc: ldr          BARRIER, [THR, #0x38]
    //     0x3accd0: cmp          SP, BARRIER
    //     0x3accd4: b.ls         0x3acd18
    //     0x3accd8: ldr          r0, [fp, #0x10]
    // 0x3accdc: r2 = NULL
    //     0x3accdc: mov          r2, NULL
    // 0x3acce0: r1 = NULL
    //     0x3acce0: mov          r1, NULL
    // 0x3acce4: r8 = pp[0x3cd0]
    //     0x3acce4: ldr          r8, [PP, #0x3cd0]
    // 0x3acce8: r3 = pp[0x4b9]
    //     0x3acce8: add          r3, PP, #0x11, lsl #12
    //     0x3accec: ldr          r3, [r3, #0x4a8]
    // 0x3accf0: r0 = call 0x2b15f0
    //     0x3accf0: bl           0x2b15f0
    // 0x3accf4: r0 = call 0x3adafc
    //     0x3accf4: bl           0x3adafc
    // 0x3accf8: r1 = r0
    //     0x3accf8: mov          r1, r0
    //     0x3accfc: ldr          r2, [fp, #0x10]
    //     0x3acd00: stur         r0, [fp, #-8]
    // 0x3acd04: r0 = soul_flutter_international$model$party_model_PartySendLuckBagItem::ctor_fromJson()
    //     0x3acd04: bl           0x3acd20
    //     0x3acd08: ldur         r0, [fp, #-8]
    // 0x3acd0c: SP = fp
    //     0x3acd0c: mov          SP, fp
    // 0x3acd10: LeaveFrame
    //     0x3acd10: ldp          fp, lr, [SP], #0x10
    // 0x3acd14: ret
    //     0x3acd14: ret          
    // 0x3acd18: r0 = call 0x61fa28
    //     0x3acd18: bl           0x61fa28
    // 0x3acd1c: b 0x3accd8
    //     0x3acd1c: b            0x3accd8
  }

  ctor() {
    // ** addr: 0x4c43b4, size: 0xc8
    // 0x4c43b4: EnterFrame
    //     0x4c43b4: stp          fp, lr, [SP, #-0x10]!
    //     0x4c43b8: mov          fp, SP
    // 0x4c43bc: AllocStack(8)
    //     0x4c43bc: sub          SP, SP, #8
    //     0x4c43c0: add          r0, NULL, #0x30
    // 0x4c43c4: r3 = r1
    //     0x4c43c4: mov          r3, r1
    //     0x4c43c8: stur         r1, [fp, #-8]
    // 0x4c43cc: CheckStackOverflow
    //     0x4c43cc: ldr          BARRIER, [THR, #0x38]
    //     0x4c43d0: cmp          SP, BARRIER
    //     0x4c43d4: b.ls         0x4c4474
    // 0x4c43d8: StoreField: r3->field_37 = r0
    //     0x4c43d8: stur         r0, [r3, #0x37]
    // 0x4c43dc: StoreField: r3->field_3b = r0
    //     0x4c43dc: stur         r0, [r3, #0x3b]
    // 0x4c43e0: r1 = pp[0x7e3]
    //     0x4c43e0: add          r1, PP, #0xb, lsl #12
    //     0x4c43e4: ldr          r1, [r1, #0x7d8]
    //     0x4c43e8: mov          r2, #0
    // 0x4c43ec: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c43ec: bl           0x277268
    //     0x4c43f0: ldur         r1, [fp, #-8]
    // 0x4c43f4: StoreField: r1->field_2b = r0
    //     0x4c43f4: stur         r0, [r1, #0x2b]
    //     0x4c43f8: ldurb        r16, [r1, #-1]
    //     0x4c43fc: ldurb        r17, [r0, #-1]
    //     0x4c4400: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c4404: tst          BARRIER, HEAP, lsr #32
    // 0x4c4408: b.eq 0x4c4410
    //     0x4c4408: b.eq         0x4c4410
    // 0x4c440c: r0 = call 0x61e04c
    //     0x4c440c: bl           0x61e04c
    //     0x4c4410: mov          r0, #-1
    // 0x4c4414: StoreField: r1->field_2f = r0
    //     0x4c4414: stur         r0, [r1, #0x2f]
    // 0x4c4418: StoreField: r1->field_23 = r0
    //     0x4c4418: stur         r0, [r1, #0x23]
    // 0x4c441c: StoreField: r1->field_7 = xzr
    //     0x4c441c: stur         xzr, [r1, #7]
    // 0x4c4420: StoreField: r1->field_13 = xzr
    //     0x4c4420: stur         xzr, [r1, #0x13]
    // 0x4c4424: StoreField: r1->field_1b = xzr
    //     0x4c4424: stur         xzr, [r1, #0x1b]
    //     0x4c4428: ldr          r0, [THR, #0x68]
    // 0x4c442c: LoadField: r0 = r0->field_b90
    //     0x4c442c: ldr          r0, [r0, #0xb90]
    // 0x4c4430: BARRIER = pp[0x40]
    //     0x4c4430: ldr          BARRIER, [PP, #0x40]
    //     0x4c4434: cmp          r0, r16
    // 0x4c4438: b.ne 0x4c4444
    //     0x4c4438: b.ne         0x4c4444
    // 0x4c443c: r2 = pp[0x3608]
    //     0x4c443c: ldr          r2, [PP, #0x3608]
    // 0x4c4440: r0 = call 0x61d99c
    //     0x4c4440: bl           0x61d99c
    //     0x4c4444: ldur         r1, [fp, #-8]
    // 0x4c4448: StoreField: r1->field_f = r0
    //     0x4c4448: stur         r0, [r1, #0xf]
    //     0x4c444c: ldurb        r16, [r1, #-1]
    //     0x4c4450: ldurb        r17, [r0, #-1]
    //     0x4c4454: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c4458: tst          BARRIER, HEAP, lsr #32
    // 0x4c445c: b.eq 0x4c4464
    //     0x4c445c: b.eq         0x4c4464
    // 0x4c4460: r0 = call 0x61e04c
    //     0x4c4460: bl           0x61e04c
    // 0x4c4464: r0 = NULL
    //     0x4c4464: mov          r0, NULL
    // 0x4c4468: SP = fp
    //     0x4c4468: mov          SP, fp
    // 0x4c446c: LeaveFrame
    //     0x4c446c: ldp          fp, lr, [SP], #0x10
    // 0x4c4470: ret
    //     0x4c4470: ret          
    // 0x4c4474: r0 = call 0x61fa28
    //     0x4c4474: bl           0x61fa28
    // 0x4c4478: b 0x4c43d8
    //     0x4c4478: b            0x4c43d8
  }

  gainLuckyBagHistory() {
    // ** addr: 0x4d5650, size: 0x54
    // 0x4d5650: EnterFrame
    //     0x4d5650: stp          fp, lr, [SP, #-0x10]!
    //     0x4d5654: mov          fp, SP
    // 0x4d5658: AllocStack(0x10)
    //     0x4d5658: sub          SP, SP, #0x10
    // 0x4d565c: r0 = r1
    //     0x4d565c: mov          r0, r1
    //     0x4d5660: stur         r1, [fp, #-8]
    //     0x4d5664: stur         r2, [fp, #-0x10]
    // 0x4d5668: CheckStackOverflow
    //     0x4d5668: ldr          BARRIER, [THR, #0x38]
    //     0x4d566c: cmp          SP, BARRIER
    //     0x4d5670: b.ls         0x4d569c
    // 0x4d5674: LoadField: r1 = r0->field_2b
    //     0x4d5674: ldur         r1, [r0, #0x2b]
    //     0x4d5678: add          r1, r1, HEAP, lsl #32
    // 0x4d567c: r0 = dart_core__GrowableList::clear()
    //     0x4d567c: bl           0x2b3608
    //     0x4d5680: ldur         r1, [fp, #-8]
    //     0x4d5684: ldur         r2, [fp, #-0x10]
    // 0x4d5688: r0 = soul_flutter_international$biz$party$notifier$notifier_party_package_history_LuckyBagHistoryListItemNotifier::requestLuckyBagHistoryList()
    //     0x4d5688: bl           0x3ab794
    // 0x4d568c: r0 = NULL
    //     0x4d568c: mov          r0, NULL
    // 0x4d5690: SP = fp
    //     0x4d5690: mov          SP, fp
    // 0x4d5694: LeaveFrame
    //     0x4d5694: ldp          fp, lr, [SP], #0x10
    // 0x4d5698: ret
    //     0x4d5698: ret          
    // 0x4d569c: r0 = call 0x61fa28
    //     0x4d569c: bl           0x61fa28
    // 0x4d56a0: b 0x4d5674
    //     0x4d56a0: b            0x4d5674
  }
