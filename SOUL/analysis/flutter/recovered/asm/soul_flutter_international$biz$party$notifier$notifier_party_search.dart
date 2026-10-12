// lib: , url: soul_flutter_international$biz$party$notifier$notifier_party_search


  requestRoomList() {
    // ** addr: 0x427e64, size: 0x104
    // 0x427e64: EnterFrame
    //     0x427e64: stp          fp, lr, [SP, #-0x10]!
    //     0x427e68: mov          fp, SP
    // 0x427e6c: AllocStack(0x28)
    //     0x427e6c: sub          SP, SP, #0x28
    //     0x427e70: stur         r1, [fp, #-8]
    //     0x427e74: stur         r2, [fp, #-0x10]
    // 0x427e78: CheckStackOverflow
    //     0x427e78: ldr          BARRIER, [THR, #0x38]
    //     0x427e7c: cmp          SP, BARRIER
    //     0x427e80: b.ls         0x427f60
    //     0x427e84: mov          r1, #2
    // 0x427e88: r0 = call 0x61e890
    //     0x427e88: bl           0x61e890
    // 0x427e8c: r3 = r0
    //     0x427e8c: mov          r3, r0
    //     0x427e90: ldur         r0, [fp, #-8]
    //     0x427e94: stur         r3, [fp, #-0x18]
    // 0x427e98: StoreField: r3->field_f = r0
    //     0x427e98: stur         r0, [r3, #0xf]
    //     0x427e9c: ldur         r1, [fp, #-0x10]
    // 0x427ea0: StoreField: r3->field_13 = r1
    //     0x427ea0: stur         r1, [r3, #0x13]
    // 0x427ea4: r1 = NULL
    //     0x427ea4: mov          r1, NULL
    //     0x427ea8: mov          r2, #8
    // 0x427eac: r0 = call 0x61f920
    //     0x427eac: bl           0x61f920
    // 0x427eb0: r2 = r0
    //     0x427eb0: mov          r2, r0
    // 0x427eb4: BARRIER = pp[0xeb8]
    //     0x427eb4: add          BARRIER, PP, #0x10, lsl #12
    //     0x427eb8: ldr          BARRIER, [BARRIER, #0xea8]
    // 0x427ebc: StoreField: r2->field_f = r16
    //     0x427ebc: stur         r16, [r2, #0xf]
    //     0x427ec0: ldur         r3, [fp, #-8]
    // 0x427ec4: LoadField: r0 = r3->field_2f
    //     0x427ec4: ldur         r0, [r3, #0x2f]
    //     0x427ec8: add          r0, r0, HEAP, lsl #32
    // 0x427ecc: StoreField: r2->field_13 = r0
    //     0x427ecc: stur         r0, [r2, #0x13]
    // 0x427ed0: BARRIER = pp[0xec0]
    //     0x427ed0: add          BARRIER, PP, #0x10, lsl #12
    //     0x427ed4: ldr          BARRIER, [BARRIER, #0xeb0]
    // 0x427ed8: ArrayStore: r2[0] = r16  ; List_8
    //     0x427ed8: stur         r16, [r2, #0x17]
    // 0x427edc: LoadField: r4 = r3->field_33
    //     0x427edc: ldur         r4, [r3, #0x33]
    //     0x427ee0: sbfiz        r0, r4, #1, #0x1f
    //     0x427ee4: cmp          r4, r0, asr #1
    // 0x427ee8: b.eq 0x427ef4
    //     0x427ee8: b.eq         0x427ef4
    // 0x427eec: r0 = call 0x61fba8
    //     0x427eec: bl           0x61fba8
    // 0x427ef0: StoreField: r0->field_7 = r4
    //     0x427ef0: stur         r4, [r0, #7]
    // 0x427ef4: StoreField: r2->field_1b = r0
    //     0x427ef4: stur         r0, [r2, #0x1b]
    //     0x427ef8: str          r2, [SP]
    // 0x427efc: r0 = dart_core__StringBase::_interpolate()
    //     0x427efc: bl           0x2ad854
    //     0x427f00: ldur         r0, [fp, #-8]
    // 0x427f04: LoadField: r3 = r0->field_2f
    //     0x427f04: ldur         r3, [r0, #0x2f]
    //     0x427f08: add          r3, r3, HEAP, lsl #32
    //     0x427f0c: stur         r3, [fp, #-0x10]
    // 0x427f10: LoadField: r4 = r0->field_33
    //     0x427f10: ldur         r4, [r0, #0x33]
    //     0x427f14: ldur         r2, [fp, #-0x18]
    //     0x427f18: stur         r4, [fp, #-0x20]
    // 0x427f1c: r1 = pp[0xec8]
    //     0x427f1c: add          r1, PP, #0x10, lsl #12
    //     0x427f20: ldr          r1, [r1, #0xeb8]
    // 0x427f24: r0 = call 0x61ec54
    //     0x427f24: bl           0x61ec54
    //     0x427f28: ldur         r2, [fp, #-0x18]
    // 0x427f2c: r1 = pp[0xed0]
    //     0x427f2c: add          r1, PP, #0x10, lsl #12
    //     0x427f30: ldr          r1, [r1, #0xec0]
    //     0x427f34: stur         r0, [fp, #-8]
    // 0x427f38: r0 = call 0x61ec54
    //     0x427f38: bl           0x61ec54
    //     0x427f3c: ldur         r1, [fp, #-0x10]
    //     0x427f40: ldur         r2, [fp, #-0x20]
    //     0x427f44: ldur         r3, [fp, #-8]
    // 0x427f48: r5 = r0
    //     0x427f48: mov          r5, r0
    // 0x427f4c: r0 = soul_flutter_international$api$api_service_SOApiService::searchRoomList()
    //     0x427f4c: bl           0x427f68
    // 0x427f50: r0 = NULL
    //     0x427f50: mov          r0, NULL
    // 0x427f54: SP = fp
    //     0x427f54: mov          SP, fp
    // 0x427f58: LeaveFrame
    //     0x427f58: ldp          fp, lr, [SP], #0x10
    // 0x427f5c: ret
    //     0x427f5c: ret          
    // 0x427f60: r0 = call 0x61fa28
    //     0x427f60: bl           0x61fa28
    // 0x427f64: b 0x427e84
    //     0x427f64: b            0x427e84
  }

  _anon_closure() {
    // ** addr: 0x428090, size: 0x7c
    // 0x428090: EnterFrame
    //     0x428090: stp          fp, lr, [SP, #-0x10]!
    //     0x428094: mov          fp, SP
    // 0x428098: AllocStack(8)
    //     0x428098: sub          SP, SP, #8
    //     0x42809c: ldr          r0, [fp, #0x10]
    // 0x4280a0: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x4280a0: ldur         r2, [r0, #0x17]
    //     0x4280a4: add          r2, r2, HEAP, lsl #32
    //     0x4280a8: stur         r2, [fp, #-8]
    // 0x4280ac: CheckStackOverflow
    //     0x4280ac: ldr          BARRIER, [THR, #0x38]
    //     0x4280b0: cmp          SP, BARRIER
    //     0x4280b4: b.ls         0x428104
    // 0x4280b8: LoadField: r0 = r2->field_13
    //     0x4280b8: ldur         r0, [r2, #0x13]
    //     0x4280bc: add          r0, r0, HEAP, lsl #32
    // 0x4280c0: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4280c0: ldur         r1, [r0, #0x17]
    //     0x4280c4: add          r1, r1, HEAP, lsl #32
    // 0x4280c8: ArrayLoad: r0 = r1[0]  ; List_8
    //     0x4280c8: ldur         r0, [r1, #0x17]
    //     0x4280cc: add          r0, r0, HEAP, lsl #32
    // 0x4280d0: r1 = r0
    //     0x4280d0: mov          r1, r0
    // 0x4280d4: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadFailed()
    //     0x4280d4: bl           0x3adbb4
    //     0x4280d8: ldur         r0, [fp, #-8]
    // 0x4280dc: LoadField: r1 = r0->field_f
    //     0x4280dc: ldur         r1, [r0, #0xf]
    //     0x4280e0: add          r1, r1, HEAP, lsl #32
    // 0x4280e4: r0 = pp[0xed8]
    //     0x4280e4: add          r0, PP, #0x10, lsl #12
    //     0x4280e8: ldr          r0, [r0, #0xec8]
    // 0x4280ec: StoreField: r1->field_2b = r0
    //     0x4280ec: stur         r0, [r1, #0x2b]
    // 0x4280f0: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x4280f0: bl           0x3ac980
    // 0x4280f4: r0 = NULL
    //     0x4280f4: mov          r0, NULL
    // 0x4280f8: SP = fp
    //     0x4280f8: mov          SP, fp
    // 0x4280fc: LeaveFrame
    //     0x4280fc: ldp          fp, lr, [SP], #0x10
    // 0x428100: ret
    //     0x428100: ret          
    // 0x428104: r0 = call 0x61fa28
    //     0x428104: bl           0x61fa28
    // 0x428108: b 0x4280b8
    //     0x428108: b            0x4280b8
  }

  _anon_closure() {
    // ** addr: 0x428178, size: 0x29c
    // 0x428178: EnterFrame
    //     0x428178: stp          fp, lr, [SP, #-0x10]!
    //     0x42817c: mov          fp, SP
    // 0x428180: AllocStack(0x30)
    //     0x428180: sub          SP, SP, #0x30
    //     0x428184: ldr          r0, [fp, #0x18]
    // 0x428188: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x428188: ldur         r3, [r0, #0x17]
    //     0x42818c: add          r3, r3, HEAP, lsl #32
    //     0x428190: stur         r3, [fp, #-0x10]
    // 0x428194: CheckStackOverflow
    //     0x428194: ldr          BARRIER, [THR, #0x38]
    //     0x428198: cmp          SP, BARRIER
    //     0x42819c: b.ls         0x42840c
    // 0x4281a0: LoadField: r4 = r3->field_f
    //     0x4281a0: ldur         r4, [r3, #0xf]
    //     0x4281a4: add          r4, r4, HEAP, lsl #32
    //     0x4281a8: ldr          r5, [fp, #0x10]
    //     0x4281ac: stur         r4, [fp, #-8]
    // 0x4281b0: r0 = LoadClassIdInstr(r5)
    //     0x4281b0: ldur         r0, [r5, #-1]
    //     0x4281b4: ubfx         r0, r0, #0xc, #0x14
    // 0x4281b8: r1 = r5
    //     0x4281b8: mov          r1, r5
    // 0x4281bc: r2 = pp[0x377]
    //     0x4281bc: add          r2, PP, #0xf, lsl #12
    //     0x4281c0: ldr          r2, [r2, #0x368]
    //     0x4281c4: sub          lr, r0, #1, lsl #12
    //     0x4281c8: ldr          lr, [r21, lr, lsl #3]
    // 0x4281cc: r0 = [R]()
    //     0x4281cc: blr          lr
    //     0x4281d0: cmp          r0, r22
    // 0x4281d4: b.ne 0x4281e0
    //     0x4281d4: b.ne         0x4281e0
    //     0x4281d8: orr          r5, xzr, #0xfffffffffffffffe
    // 0x4281dc: b 0x4281e4
    //     0x4281dc: b            0x4281e4
    // 0x4281e0: r5 = r0
    //     0x4281e0: mov          r5, r0
    //     0x4281e4: ldr          r4, [fp, #0x10]
    //     0x4281e8: ldur         r3, [fp, #-8]
    // 0x4281ec: r0 = r5
    //     0x4281ec: mov          r0, r5
    //     0x4281f0: stur         r5, [fp, #-0x18]
    // 0x4281f4: r2 = NULL
    //     0x4281f4: mov          r2, NULL
    // 0x4281f8: r1 = NULL
    //     0x4281f8: mov          r1, NULL
    // 0x4281fc: branchIfSmi(r0, 0x428224)
    //     0x4281fc: tbz          r0, #0, 0x428224
    // 0x428200: r4 = LoadClassIdInstr(r0)
    //     0x428200: ldur         r4, [r0, #-1]
    //     0x428204: ubfx         r4, r4, #0xc, #0x14
    //     0x428208: sub          r4, r4, #0x3c
    //     0x42820c: cmp          r4, #1
    // 0x428210: b.ls 0x428224
    //     0x428210: b.ls         0x428224
    // 0x428214: r8 = pp[0x1170]
    //     0x428214: ldr          r8, [PP, #0x1170]
    // 0x428218: r3 = pp[0xee0]
    //     0x428218: add          r3, PP, #0x10, lsl #12
    //     0x42821c: ldr          r3, [r3, #0xed0]
    // 0x428220: r0 = call 0x62aa34
    //     0x428220: bl           0x62aa34
    //     0x428224: ldur         r0, [fp, #-0x18]
    //     0x428228: sbfx         r1, r0, #1, #0x1f
    // 0x42822c: branchIfSmi(r0, 0x428234)
    //     0x42822c: tbz          r0, #0, 0x428234
    // 0x428230: LoadField: r1 = r0->field_7
    //     0x428230: ldur         r1, [r0, #7]
    //     0x428234: ldur         r0, [fp, #-8]
    // 0x428238: StoreField: r0->field_33 = r1
    //     0x428238: stur         r1, [r0, #0x33]
    //     0x42823c: ldr          r1, [fp, #0x10]
    // 0x428240: r0 = LoadClassIdInstr(r1)
    //     0x428240: ldur         r0, [r1, #-1]
    //     0x428244: ubfx         r0, r0, #0xc, #0x14
    // 0x428248: r2 = pp[0x38f]
    //     0x428248: add          r2, PP, #0xf, lsl #12
    //     0x42824c: ldr          r2, [r2, #0x380]
    //     0x428250: sub          lr, r0, #1, lsl #12
    //     0x428254: ldr          lr, [r21, lr, lsl #3]
    // 0x428258: r0 = [R]()
    //     0x428258: blr          lr
    //     0x42825c: cmp          r0, r22
    // 0x428260: b.ne 0x428278
    //     0x428260: b.ne         0x428278
    // 0x428264: r1 = NULL
    //     0x428264: mov          r1, NULL
    //     0x428268: mov          r2, #0
    // 0x42826c: r0 = dart_core__GrowableList::factory_ctor()
    //     0x42826c: bl           0x277268
    // 0x428270: r3 = r0
    //     0x428270: mov          r3, r0
    // 0x428274: b 0x42827c
    //     0x428274: b            0x42827c
    // 0x428278: r3 = r0
    //     0x428278: mov          r3, r0
    // 0x42827c: r0 = r3
    //     0x42827c: mov          r0, r3
    //     0x428280: stur         r3, [fp, #-8]
    // 0x428284: r2 = NULL
    //     0x428284: mov          r2, NULL
    // 0x428288: r1 = NULL
    //     0x428288: mov          r1, NULL
    //     0x42828c: mov          r4, #0x3c
    // 0x428290: branchIfSmi(r0, 0x42829c)
    //     0x428290: tbz          r0, #0, 0x42829c
    // 0x428294: r4 = LoadClassIdInstr(r0)
    //     0x428294: ldur         r4, [r0, #-1]
    //     0x428298: ubfx         r4, r4, #0xc, #0x14
    //     0x42829c: sub          r4, r4, #0x5a
    //     0x4282a0: cmp          r4, #2
    // 0x4282a4: b.ls 0x4282d8
    //     0x4282a4: b.ls         0x4282d8
    //     0x4282a8: sub          r4, r4, #0x16
    //     0x4282ac: cmp          r4, #0x37
    // 0x4282b0: b.ls 0x4282d8
    //     0x4282b0: b.ls         0x4282d8
    //     0x4282b4: cmp          r4, #0xebc
    // 0x4282b8: b.eq 0x4282d8
    //     0x4282b8: b.eq         0x4282d8
    //     0x4282bc: sub          r4, r4, #0xedd
    //     0x4282c0: cmp          r4, #4
    // 0x4282c4: b.ls 0x4282d8
    //     0x4282c4: b.ls         0x4282d8
    // 0x4282c8: r8 = pp[0x3b80]
    //     0x4282c8: ldr          r8, [PP, #0x3b80]
    // 0x4282cc: r3 = pp[0xef0]
    //     0x4282cc: add          r3, PP, #0x10, lsl #12
    //     0x4282d0: ldr          r3, [r3, #0xee0]
    // 0x4282d4: r0 = call 0x61d6e4
    //     0x4282d4: bl           0x61d6e4
    //     0x4282d8: ldur         r2, [fp, #-8]
    // 0x4282dc: r0 = LoadClassIdInstr(r2)
    //     0x4282dc: ldur         r0, [r2, #-1]
    //     0x4282e0: ubfx         r0, r0, #0xc, #0x14
    // 0x4282e4: r1 = r2
    //     0x4282e4: mov          r1, r2
    //     0x4282e8: mov          r17, #0x89aa
    //     0x4282ec: add          lr, r0, r17
    //     0x4282f0: ldr          lr, [r21, lr, lsl #3]
    // 0x4282f4: r0 = [R]()
    //     0x4282f4: blr          lr
    //     0x4282f8: tbnz         r0, #4, 0x42836c
    //     0x4282fc: ldur         r3, [fp, #-0x10]
    //     0x428300: ldur         r0, [fp, #-8]
    // 0x428304: LoadField: r1 = r3->field_f
    //     0x428304: ldur         r1, [r3, #0xf]
    //     0x428308: add          r1, r1, HEAP, lsl #32
    // 0x42830c: LoadField: r4 = r1->field_3b
    //     0x42830c: ldur         r4, [r1, #0x3b]
    //     0x428310: add          r4, r4, HEAP, lsl #32
    //     0x428314: stur         r4, [fp, #-0x18]
    // 0x428318: r1 = pp[0xf00]
    //     0x428318: add          r1, PP, #0x10, lsl #12
    //     0x42831c: ldr          r1, [r1, #0xef0]
    // 0x428320: r2 = NULL
    //     0x428320: mov          r2, NULL
    // 0x428324: r0 = call 0x61ec54
    //     0x428324: bl           0x61ec54
    // 0x428328: r1 = r0
    //     0x428328: mov          r1, r0
    //     0x42832c: ldur         r0, [fp, #-8]
    // 0x428330: r2 = LoadClassIdInstr(r0)
    //     0x428330: ldur         r2, [r0, #-1]
    //     0x428334: ubfx         r2, r2, #0xc, #0x14
    // 0x428338: BARRIER = pp[0x7cb]
    //     0x428338: add          BARRIER, PP, #0xb, lsl #12
    //     0x42833c: ldr          BARRIER, [BARRIER, #0x7c0]
    //     0x428340: stp          r0, BARRIER, [SP, #8]
    //     0x428344: str          r1, [SP]
    // 0x428348: r0 = r2
    //     0x428348: mov          r0, r2
    // 0x42834c: r4 = pp[0x58]
    //     0x42834c: ldr          r4, [PP, #0x58]
    //     0x428350: mov          r17, #0x86d9
    //     0x428354: add          lr, r0, r17
    //     0x428358: ldr          lr, [r21, lr, lsl #3]
    // 0x42835c: r0 = [R]()
    //     0x42835c: blr          lr
    //     0x428360: ldur         r1, [fp, #-0x18]
    // 0x428364: r2 = r0
    //     0x428364: mov          r2, r0
    // 0x428368: r0 = dart_core__GrowableList::addAll()
    //     0x428368: bl           0x2ce4e8
    //     0x42836c: ldur         r0, [fp, #-0x10]
    // 0x428370: LoadField: r1 = r0->field_13
    //     0x428370: ldur         r1, [r0, #0x13]
    //     0x428374: add          r1, r1, HEAP, lsl #32
    // 0x428378: LoadField: r2 = r0->field_f
    //     0x428378: ldur         r2, [r0, #0xf]
    //     0x42837c: add          r2, r2, HEAP, lsl #32
    // 0x428380: LoadField: r3 = r2->field_33
    //     0x428380: ldur         r3, [r2, #0x33]
    //     0x428384: tbnz         r3, #0x3f, 0x428390
    //     0x428388: add          r2, NULL, #0x30
    // 0x42838c: b 0x428394
    //     0x42838c: b            0x428394
    //     0x428390: add          r2, NULL, #0x20
    // 0x428394: ArrayLoad: r3 = r1[0]  ; List_8
    //     0x428394: ldur         r3, [r1, #0x17]
    //     0x428398: add          r3, r3, HEAP, lsl #32
    // 0x42839c: r1 = r3
    //     0x42839c: mov          r1, r3
    // 0x4283a0: r3 = r2
    //     0x4283a0: mov          r3, r2
    //     0x4283a4: add          r2, NULL, #0x20
    // 0x4283a8: r0 = soul_flutter_international$biz$party$page_party_search__PartySearchPageState::_onLoaded()
    //     0x4283a8: bl           0x42810c
    //     0x4283ac: ldur         r0, [fp, #-0x10]
    // 0x4283b0: LoadField: r1 = r0->field_f
    //     0x4283b0: ldur         r1, [r0, #0xf]
    //     0x4283b4: add          r1, r1, HEAP, lsl #32
    // 0x4283b8: LoadField: r0 = r1->field_3b
    //     0x4283b8: ldur         r0, [r1, #0x3b]
    //     0x4283bc: add          r0, r0, HEAP, lsl #32
    // 0x4283c0: LoadField: r2 = r0->field_b
    //     0x4283c0: ldur         r2, [r0, #0xb]
    //     0x4283c4: cbnz         r2, 0x4283d4
    // 0x4283c8: r0 = pp[0xf08]
    //     0x4283c8: add          r0, PP, #0x10, lsl #12
    //     0x4283cc: ldr          r0, [r0, #0xef8]
    // 0x4283d0: b 0x4283dc
    //     0x4283d0: b            0x4283dc
    // 0x4283d4: r0 = pp[0xed8]
    //     0x4283d4: add          r0, PP, #0x10, lsl #12
    //     0x4283d8: ldr          r0, [r0, #0xec8]
    // 0x4283dc: StoreField: r1->field_2b = r0
    //     0x4283dc: stur         r0, [r1, #0x2b]
    //     0x4283e0: ldurb        r16, [r1, #-1]
    //     0x4283e4: ldurb        r17, [r0, #-1]
    //     0x4283e8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4283ec: tst          BARRIER, HEAP, lsr #32
    // 0x4283f0: b.eq 0x4283f8
    //     0x4283f0: b.eq         0x4283f8
    // 0x4283f4: r0 = call 0x61e04c
    //     0x4283f4: bl           0x61e04c
    // 0x4283f8: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x4283f8: bl           0x3ac980
    // 0x4283fc: r0 = NULL
    //     0x4283fc: mov          r0, NULL
    // 0x428400: SP = fp
    //     0x428400: mov          SP, fp
    // 0x428404: LeaveFrame
    //     0x428404: ldp          fp, lr, [SP], #0x10
    // 0x428408: ret
    //     0x428408: ret          
    // 0x42840c: r0 = call 0x61fa28
    //     0x42840c: bl           0x61fa28
    // 0x428410: b 0x4281a0
    //     0x428410: b            0x4281a0
  }

  _anon_closure() {
    // ** addr: 0x428414, size: 0x60
    // 0x428414: EnterFrame
    //     0x428414: stp          fp, lr, [SP, #-0x10]!
    //     0x428418: mov          fp, SP
    // 0x42841c: AllocStack(8)
    //     0x42841c: sub          SP, SP, #8
    // 0x428420: CheckStackOverflow
    //     0x428420: ldr          BARRIER, [THR, #0x38]
    //     0x428424: cmp          SP, BARRIER
    //     0x428428: b.ls         0x42846c
    //     0x42842c: ldr          r0, [fp, #0x10]
    // 0x428430: r2 = NULL
    //     0x428430: mov          r2, NULL
    // 0x428434: r1 = NULL
    //     0x428434: mov          r1, NULL
    // 0x428438: r8 = pp[0x3cd0]
    //     0x428438: ldr          r8, [PP, #0x3cd0]
    // 0x42843c: r3 = pp[0xf10]
    //     0x42843c: add          r3, PP, #0x10, lsl #12
    //     0x428440: ldr          r3, [r3, #0xf00]
    // 0x428444: r0 = call 0x2b15f0
    //     0x428444: bl           0x2b15f0
    // 0x428448: r0 = call 0x429078
    //     0x428448: bl           0x429078
    // 0x42844c: r1 = r0
    //     0x42844c: mov          r1, r0
    //     0x428450: ldr          r2, [fp, #0x10]
    //     0x428454: stur         r0, [fp, #-8]
    // 0x428458: r0 = soul_flutter_international$model$party_model_PartyRoomInfo::ctor_fromJson()
    //     0x428458: bl           0x428474
    //     0x42845c: ldur         r0, [fp, #-8]
    // 0x428460: SP = fp
    //     0x428460: mov          SP, fp
    // 0x428464: LeaveFrame
    //     0x428464: ldp          fp, lr, [SP], #0x10
    // 0x428468: ret
    //     0x428468: ret          
    // 0x42846c: r0 = call 0x61fa28
    //     0x42846c: bl           0x61fa28
    // 0x428470: b 0x42842c
    //     0x428470: b            0x42842c
  }

  searchRoom() {
    // ** addr: 0x429358, size: 0xc8
    // 0x429358: EnterFrame
    //     0x429358: stp          fp, lr, [SP, #-0x10]!
    //     0x42935c: mov          fp, SP
    // 0x429360: AllocStack(0x20)
    //     0x429360: sub          SP, SP, #0x20
    // 0x429364: r4 = r1
    //     0x429364: mov          r4, r1
    // 0x429368: r0 = r3
    //     0x429368: mov          r0, r3
    //     0x42936c: stur         r3, [fp, #-0x18]
    // 0x429370: r3 = r2
    //     0x429370: mov          r3, r2
    //     0x429374: stur         r1, [fp, #-8]
    //     0x429378: stur         r2, [fp, #-0x10]
    // 0x42937c: CheckStackOverflow
    //     0x42937c: ldr          BARRIER, [THR, #0x38]
    //     0x429380: cmp          SP, BARRIER
    //     0x429384: b.ls         0x429418
    // 0x429388: r1 = NULL
    //     0x429388: mov          r1, NULL
    //     0x42938c: mov          r2, #4
    // 0x429390: r0 = call 0x61f920
    //     0x429390: bl           0x61f920
    // 0x429394: BARRIER = pp[0xe9]
    //     0x429394: add          BARRIER, PP, #0x11, lsl #12
    //     0x429398: ldr          BARRIER, [BARRIER, #0xd8]
    // 0x42939c: StoreField: r0->field_f = r16
    //     0x42939c: stur         r16, [r0, #0xf]
    //     0x4293a0: ldur         r1, [fp, #-0x10]
    // 0x4293a4: StoreField: r0->field_13 = r1
    //     0x4293a4: stur         r1, [r0, #0x13]
    //     0x4293a8: str          r0, [SP]
    // 0x4293ac: r0 = dart_core__StringBase::_interpolate()
    //     0x4293ac: bl           0x2ad854
    //     0x4293b0: ldur         r2, [fp, #-8]
    // 0x4293b4: r0 = pp[0xed8]
    //     0x4293b4: add          r0, PP, #0x10, lsl #12
    //     0x4293b8: ldr          r0, [r0, #0xec8]
    // 0x4293bc: StoreField: r2->field_2b = r0
    //     0x4293bc: stur         r0, [r2, #0x2b]
    //     0x4293c0: ldur         r0, [fp, #-0x10]
    // 0x4293c4: StoreField: r2->field_2f = r0
    //     0x4293c4: stur         r0, [r2, #0x2f]
    //     0x4293c8: ldurb        r16, [r2, #-1]
    //     0x4293cc: ldurb        r17, [r0, #-1]
    //     0x4293d0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4293d4: tst          BARRIER, HEAP, lsr #32
    // 0x4293d8: b.eq 0x4293e0
    //     0x4293d8: b.eq         0x4293e0
    // 0x4293dc: r0 = call 0x61e06c
    //     0x4293dc: bl           0x61e06c
    //     0x4293e0: mov          r0, #-1
    // 0x4293e4: StoreField: r2->field_33 = r0
    //     0x4293e4: stur         r0, [r2, #0x33]
    // 0x4293e8: LoadField: r1 = r2->field_3b
    //     0x4293e8: ldur         r1, [r2, #0x3b]
    //     0x4293ec: add          r1, r1, HEAP, lsl #32
    // 0x4293f0: r0 = dart_core__GrowableList::clear()
    //     0x4293f0: bl           0x2b3608
    //     0x4293f4: ldur         r1, [fp, #-8]
    // 0x4293f8: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x4293f8: bl           0x3ac980
    //     0x4293fc: ldur         r1, [fp, #-8]
    //     0x429400: ldur         r2, [fp, #-0x18]
    // 0x429404: r0 = soul_flutter_international$biz$party$notifier$notifier_party_search_PartySearchNotifier::requestRoomList()
    //     0x429404: bl           0x427e64
    // 0x429408: r0 = NULL
    //     0x429408: mov          r0, NULL
    // 0x42940c: SP = fp
    //     0x42940c: mov          SP, fp
    // 0x429410: LeaveFrame
    //     0x429410: ldp          fp, lr, [SP], #0x10
    // 0x429414: ret
    //     0x429414: ret          
    // 0x429418: r0 = call 0x61fa28
    //     0x429418: bl           0x61fa28
    // 0x42941c: b 0x429388
    //     0x42941c: b            0x429388
  }

  ctor() {
    // ** addr: 0x4c47fc, size: 0xd4
    // 0x4c47fc: EnterFrame
    //     0x4c47fc: stp          fp, lr, [SP, #-0x10]!
    //     0x4c4800: mov          fp, SP
    // 0x4c4804: AllocStack(8)
    //     0x4c4804: sub          SP, SP, #8
    // 0x4c4808: r3 = pp[0x7c3]
    //     0x4c4808: add          r3, PP, #0xb, lsl #12
    //     0x4c480c: ldr          r3, [r3, #0x7b8]
    // 0x4c4810: r2 = pp[0x148]
    //     0x4c4810: ldr          r2, [PP, #0x148]
    //     0x4c4814: mov          r0, #-1
    // 0x4c4818: r4 = r1
    //     0x4c4818: mov          r4, r1
    //     0x4c481c: stur         r1, [fp, #-8]
    // 0x4c4820: CheckStackOverflow
    //     0x4c4820: ldr          BARRIER, [THR, #0x38]
    //     0x4c4824: cmp          SP, BARRIER
    //     0x4c4828: b.ls         0x4c48c8
    // 0x4c482c: StoreField: r4->field_2b = r3
    //     0x4c482c: stur         r3, [r4, #0x2b]
    // 0x4c4830: StoreField: r4->field_2f = r2
    //     0x4c4830: stur         r2, [r4, #0x2f]
    // 0x4c4834: StoreField: r4->field_33 = r0
    //     0x4c4834: stur         r0, [r4, #0x33]
    // 0x4c4838: r1 = pp[0x7cb]
    //     0x4c4838: add          r1, PP, #0xb, lsl #12
    //     0x4c483c: ldr          r1, [r1, #0x7c0]
    //     0x4c4840: mov          r2, #0
    // 0x4c4844: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c4844: bl           0x277268
    //     0x4c4848: ldur         r1, [fp, #-8]
    // 0x4c484c: StoreField: r1->field_3b = r0
    //     0x4c484c: stur         r0, [r1, #0x3b]
    //     0x4c4850: ldurb        r16, [r1, #-1]
    //     0x4c4854: ldurb        r17, [r0, #-1]
    //     0x4c4858: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c485c: tst          BARRIER, HEAP, lsr #32
    // 0x4c4860: b.eq 0x4c4868
    //     0x4c4860: b.eq         0x4c4868
    // 0x4c4864: r0 = call 0x61e04c
    //     0x4c4864: bl           0x61e04c
    //     0x4c4868: mov          r0, #-1
    // 0x4c486c: StoreField: r1->field_23 = r0
    //     0x4c486c: stur         r0, [r1, #0x23]
    // 0x4c4870: StoreField: r1->field_7 = xzr
    //     0x4c4870: stur         xzr, [r1, #7]
    // 0x4c4874: StoreField: r1->field_13 = xzr
    //     0x4c4874: stur         xzr, [r1, #0x13]
    // 0x4c4878: StoreField: r1->field_1b = xzr
    //     0x4c4878: stur         xzr, [r1, #0x1b]
    //     0x4c487c: ldr          r0, [THR, #0x68]
    // 0x4c4880: LoadField: r0 = r0->field_b90
    //     0x4c4880: ldr          r0, [r0, #0xb90]
    // 0x4c4884: BARRIER = pp[0x40]
    //     0x4c4884: ldr          BARRIER, [PP, #0x40]
    //     0x4c4888: cmp          r0, r16
    // 0x4c488c: b.ne 0x4c4898
    //     0x4c488c: b.ne         0x4c4898
    // 0x4c4890: r2 = pp[0x3608]
    //     0x4c4890: ldr          r2, [PP, #0x3608]
    // 0x4c4894: r0 = call 0x61d99c
    //     0x4c4894: bl           0x61d99c
    //     0x4c4898: ldur         r1, [fp, #-8]
    // 0x4c489c: StoreField: r1->field_f = r0
    //     0x4c489c: stur         r0, [r1, #0xf]
    //     0x4c48a0: ldurb        r16, [r1, #-1]
    //     0x4c48a4: ldurb        r17, [r0, #-1]
    //     0x4c48a8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c48ac: tst          BARRIER, HEAP, lsr #32
    // 0x4c48b0: b.eq 0x4c48b8
    //     0x4c48b0: b.eq         0x4c48b8
    // 0x4c48b4: r0 = call 0x61e04c
    //     0x4c48b4: bl           0x61e04c
    // 0x4c48b8: r0 = NULL
    //     0x4c48b8: mov          r0, NULL
    // 0x4c48bc: SP = fp
    //     0x4c48bc: mov          SP, fp
    // 0x4c48c0: LeaveFrame
    //     0x4c48c0: ldp          fp, lr, [SP], #0x10
    // 0x4c48c4: ret
    //     0x4c48c4: ret          
    // 0x4c48c8: r0 = call 0x61fa28
    //     0x4c48c8: bl           0x61fa28
    // 0x4c48cc: b 0x4c482c
    //     0x4c48cc: b            0x4c482c
  }

  _enumToString() {
    // ** addr: 0x4aea6c, size: 0x64
    // 0x4aea6c: EnterFrame
    //     0x4aea6c: stp          fp, lr, [SP, #-0x10]!
    //     0x4aea70: mov          fp, SP
    // 0x4aea74: AllocStack(0x10)
    //     0x4aea74: sub          SP, SP, #0x10
    // 0x4aea78: r0 = r1
    //     0x4aea78: mov          r0, r1
    //     0x4aea7c: stur         r1, [fp, #-8]
    // 0x4aea80: CheckStackOverflow
    //     0x4aea80: ldr          BARRIER, [THR, #0x38]
    //     0x4aea84: cmp          SP, BARRIER
    //     0x4aea88: b.ls         0x4aeac8
    // 0x4aea8c: r1 = NULL
    //     0x4aea8c: mov          r1, NULL
    //     0x4aea90: mov          r2, #4
    // 0x4aea94: r0 = call 0x61f920
    //     0x4aea94: bl           0x61f920
    // 0x4aea98: BARRIER = pp[0x7f1]
    //     0x4aea98: add          BARRIER, PP, #0x11, lsl #12
    //     0x4aea9c: ldr          BARRIER, [BARRIER, #0x7e0]
    // 0x4aeaa0: StoreField: r0->field_f = r16
    //     0x4aeaa0: stur         r16, [r0, #0xf]
    //     0x4aeaa4: ldur         r1, [fp, #-8]
    // 0x4aeaa8: LoadField: r2 = r1->field_f
    //     0x4aeaa8: ldur         r2, [r1, #0xf]
    //     0x4aeaac: add          r2, r2, HEAP, lsl #32
    // 0x4aeab0: StoreField: r0->field_13 = r2
    //     0x4aeab0: stur         r2, [r0, #0x13]
    //     0x4aeab4: str          r0, [SP]
    // 0x4aeab8: r0 = dart_core__StringBase::_interpolate()
    //     0x4aeab8: bl           0x2ad854
    // 0x4aeabc: SP = fp
    //     0x4aeabc: mov          SP, fp
    // 0x4aeac0: LeaveFrame
    //     0x4aeac0: ldp          fp, lr, [SP], #0x10
    // 0x4aeac4: ret
    //     0x4aeac4: ret          
    // 0x4aeac8: r0 = call 0x61fa28
    //     0x4aeac8: bl           0x61fa28
    // 0x4aeacc: b 0x4aea8c
    //     0x4aeacc: b            0x4aea8c
  }
