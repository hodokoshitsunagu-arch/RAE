// lib: , url: soul_flutter_international$biz$pkGame$notifier$notifier_game_bet_record


  requestPKGameLaunchRankList() {
    // ** addr: 0x4442bc, size: 0xa4
    // 0x4442bc: EnterFrame
    //     0x4442bc: stp          fp, lr, [SP, #-0x10]!
    //     0x4442c0: mov          fp, SP
    // 0x4442c4: AllocStack(0x20)
    //     0x4442c4: sub          SP, SP, #0x20
    //     0x4442c8: stur         r1, [fp, #-8]
    //     0x4442cc: stur         r2, [fp, #-0x10]
    // 0x4442d0: CheckStackOverflow
    //     0x4442d0: ldr          BARRIER, [THR, #0x38]
    //     0x4442d4: cmp          SP, BARRIER
    //     0x4442d8: b.ls         0x444358
    //     0x4442dc: mov          r1, #2
    // 0x4442e0: r0 = call 0x61e890
    //     0x4442e0: bl           0x61e890
    // 0x4442e4: r2 = r0
    //     0x4442e4: mov          r2, r0
    //     0x4442e8: ldur         r0, [fp, #-8]
    //     0x4442ec: stur         r2, [fp, #-0x18]
    // 0x4442f0: StoreField: r2->field_f = r0
    //     0x4442f0: stur         r0, [r2, #0xf]
    //     0x4442f4: ldur         r1, [fp, #-0x10]
    // 0x4442f8: StoreField: r2->field_13 = r1
    //     0x4442f8: stur         r1, [r2, #0x13]
    // 0x4442fc: r1 = r0
    //     0x4442fc: mov          r1, r0
    // 0x444300: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x444300: bl           0x3ac980
    //     0x444304: ldur         r0, [fp, #-8]
    // 0x444308: LoadField: r3 = r0->field_2f
    //     0x444308: ldur         r3, [r0, #0x2f]
    //     0x44430c: ldur         r2, [fp, #-0x18]
    //     0x444310: stur         r3, [fp, #-0x20]
    // 0x444314: r1 = pp[0x4a4]
    //     0x444314: add          r1, PP, #0x14, lsl #12
    //     0x444318: ldr          r1, [r1, #0x490]
    // 0x44431c: r0 = call 0x61ec54
    //     0x44431c: bl           0x61ec54
    //     0x444320: ldur         r2, [fp, #-0x18]
    // 0x444324: r1 = pp[0x4ac]
    //     0x444324: add          r1, PP, #0x14, lsl #12
    //     0x444328: ldr          r1, [r1, #0x498]
    //     0x44432c: stur         r0, [fp, #-8]
    // 0x444330: r0 = call 0x61ec54
    //     0x444330: bl           0x61ec54
    //     0x444334: ldur         r1, [fp, #-0x20]
    //     0x444338: ldur         r3, [fp, #-8]
    // 0x44433c: r5 = r0
    //     0x44433c: mov          r5, r0
    //     0x444340: mov          r2, #1
    // 0x444344: r0 = soul_flutter_international$api$api_service_SOApiService::getPKGameRecordList()
    //     0x444344: bl           0x444360
    // 0x444348: r0 = NULL
    //     0x444348: mov          r0, NULL
    // 0x44434c: SP = fp
    //     0x44434c: mov          SP, fp
    // 0x444350: LeaveFrame
    //     0x444350: ldp          fp, lr, [SP], #0x10
    // 0x444354: ret
    //     0x444354: ret          
    // 0x444358: r0 = call 0x61fa28
    //     0x444358: bl           0x61fa28
    // 0x44435c: b 0x4442dc
    //     0x44435c: b            0x4442dc
  }

  _anon_closure() {
    // ** addr: 0x444ddc, size: 0x25c
    // 0x444ddc: EnterFrame
    //     0x444ddc: stp          fp, lr, [SP, #-0x10]!
    //     0x444de0: mov          fp, SP
    // 0x444de4: AllocStack(0x30)
    //     0x444de4: sub          SP, SP, #0x30
    //     0x444de8: ldr          r0, [fp, #0x18]
    // 0x444dec: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x444dec: ldur         r3, [r0, #0x17]
    //     0x444df0: add          r3, r3, HEAP, lsl #32
    //     0x444df4: stur         r3, [fp, #-0x10]
    // 0x444df8: CheckStackOverflow
    //     0x444df8: ldr          BARRIER, [THR, #0x38]
    //     0x444dfc: cmp          SP, BARRIER
    //     0x444e00: b.ls         0x445030
    // 0x444e04: LoadField: r4 = r3->field_f
    //     0x444e04: ldur         r4, [r3, #0xf]
    //     0x444e08: add          r4, r4, HEAP, lsl #32
    //     0x444e0c: ldr          r5, [fp, #0x10]
    //     0x444e10: stur         r4, [fp, #-8]
    // 0x444e14: r0 = LoadClassIdInstr(r5)
    //     0x444e14: ldur         r0, [r5, #-1]
    //     0x444e18: ubfx         r0, r0, #0xc, #0x14
    // 0x444e1c: r1 = r5
    //     0x444e1c: mov          r1, r5
    // 0x444e20: r2 = pp[0x377]
    //     0x444e20: add          r2, PP, #0xf, lsl #12
    //     0x444e24: ldr          r2, [r2, #0x368]
    //     0x444e28: sub          lr, r0, #1, lsl #12
    //     0x444e2c: ldr          lr, [r21, lr, lsl #3]
    // 0x444e30: r0 = [R]()
    //     0x444e30: blr          lr
    //     0x444e34: cmp          r0, r22
    // 0x444e38: b.ne 0x444e44
    //     0x444e38: b.ne         0x444e44
    //     0x444e3c: orr          r5, xzr, #0xfffffffffffffffe
    // 0x444e40: b 0x444e48
    //     0x444e40: b            0x444e48
    // 0x444e44: r5 = r0
    //     0x444e44: mov          r5, r0
    //     0x444e48: ldr          r4, [fp, #0x10]
    //     0x444e4c: ldur         r3, [fp, #-8]
    // 0x444e50: r0 = r5
    //     0x444e50: mov          r0, r5
    //     0x444e54: stur         r5, [fp, #-0x18]
    // 0x444e58: r2 = NULL
    //     0x444e58: mov          r2, NULL
    // 0x444e5c: r1 = NULL
    //     0x444e5c: mov          r1, NULL
    // 0x444e60: branchIfSmi(r0, 0x444e88)
    //     0x444e60: tbz          r0, #0, 0x444e88
    // 0x444e64: r4 = LoadClassIdInstr(r0)
    //     0x444e64: ldur         r4, [r0, #-1]
    //     0x444e68: ubfx         r4, r4, #0xc, #0x14
    //     0x444e6c: sub          r4, r4, #0x3c
    //     0x444e70: cmp          r4, #1
    // 0x444e74: b.ls 0x444e88
    //     0x444e74: b.ls         0x444e88
    // 0x444e78: r8 = pp[0x1170]
    //     0x444e78: ldr          r8, [PP, #0x1170]
    // 0x444e7c: r3 = pp[0x4b4]
    //     0x444e7c: add          r3, PP, #0x14, lsl #12
    //     0x444e80: ldr          r3, [r3, #0x4a0]
    // 0x444e84: r0 = call 0x62aa34
    //     0x444e84: bl           0x62aa34
    //     0x444e88: ldur         r0, [fp, #-0x18]
    //     0x444e8c: sbfx         r1, r0, #1, #0x1f
    // 0x444e90: branchIfSmi(r0, 0x444e98)
    //     0x444e90: tbz          r0, #0, 0x444e98
    // 0x444e94: LoadField: r1 = r0->field_7
    //     0x444e94: ldur         r1, [r0, #7]
    //     0x444e98: ldur         r0, [fp, #-8]
    // 0x444e9c: StoreField: r0->field_2f = r1
    //     0x444e9c: stur         r1, [r0, #0x2f]
    //     0x444ea0: ldr          r1, [fp, #0x10]
    // 0x444ea4: r0 = LoadClassIdInstr(r1)
    //     0x444ea4: ldur         r0, [r1, #-1]
    //     0x444ea8: ubfx         r0, r0, #0xc, #0x14
    // 0x444eac: r2 = pp[0x38f]
    //     0x444eac: add          r2, PP, #0xf, lsl #12
    //     0x444eb0: ldr          r2, [r2, #0x380]
    //     0x444eb4: sub          lr, r0, #1, lsl #12
    //     0x444eb8: ldr          lr, [r21, lr, lsl #3]
    // 0x444ebc: r0 = [R]()
    //     0x444ebc: blr          lr
    //     0x444ec0: cmp          r0, r22
    // 0x444ec4: b.ne 0x444edc
    //     0x444ec4: b.ne         0x444edc
    // 0x444ec8: r1 = NULL
    //     0x444ec8: mov          r1, NULL
    //     0x444ecc: mov          r2, #0
    // 0x444ed0: r0 = dart_core__GrowableList::factory_ctor()
    //     0x444ed0: bl           0x277268
    // 0x444ed4: r3 = r0
    //     0x444ed4: mov          r3, r0
    // 0x444ed8: b 0x444ee0
    //     0x444ed8: b            0x444ee0
    // 0x444edc: r3 = r0
    //     0x444edc: mov          r3, r0
    // 0x444ee0: r0 = r3
    //     0x444ee0: mov          r0, r3
    //     0x444ee4: stur         r3, [fp, #-8]
    // 0x444ee8: r2 = NULL
    //     0x444ee8: mov          r2, NULL
    // 0x444eec: r1 = NULL
    //     0x444eec: mov          r1, NULL
    //     0x444ef0: mov          r4, #0x3c
    // 0x444ef4: branchIfSmi(r0, 0x444f00)
    //     0x444ef4: tbz          r0, #0, 0x444f00
    // 0x444ef8: r4 = LoadClassIdInstr(r0)
    //     0x444ef8: ldur         r4, [r0, #-1]
    //     0x444efc: ubfx         r4, r4, #0xc, #0x14
    //     0x444f00: sub          r4, r4, #0x5a
    //     0x444f04: cmp          r4, #2
    // 0x444f08: b.ls 0x444f3c
    //     0x444f08: b.ls         0x444f3c
    //     0x444f0c: sub          r4, r4, #0x16
    //     0x444f10: cmp          r4, #0x37
    // 0x444f14: b.ls 0x444f3c
    //     0x444f14: b.ls         0x444f3c
    //     0x444f18: cmp          r4, #0xebc
    // 0x444f1c: b.eq 0x444f3c
    //     0x444f1c: b.eq         0x444f3c
    //     0x444f20: sub          r4, r4, #0xedd
    //     0x444f24: cmp          r4, #4
    // 0x444f28: b.ls 0x444f3c
    //     0x444f28: b.ls         0x444f3c
    // 0x444f2c: r8 = pp[0x3b80]
    //     0x444f2c: ldr          r8, [PP, #0x3b80]
    // 0x444f30: r3 = pp[0x4c4]
    //     0x444f30: add          r3, PP, #0x14, lsl #12
    //     0x444f34: ldr          r3, [r3, #0x4b0]
    // 0x444f38: r0 = call 0x61d6e4
    //     0x444f38: bl           0x61d6e4
    //     0x444f3c: ldur         r2, [fp, #-8]
    // 0x444f40: r0 = LoadClassIdInstr(r2)
    //     0x444f40: ldur         r0, [r2, #-1]
    //     0x444f44: ubfx         r0, r0, #0xc, #0x14
    // 0x444f48: r1 = r2
    //     0x444f48: mov          r1, r2
    //     0x444f4c: mov          r17, #0x89aa
    //     0x444f50: add          lr, r0, r17
    //     0x444f54: ldr          lr, [r21, lr, lsl #3]
    // 0x444f58: r0 = [R]()
    //     0x444f58: blr          lr
    //     0x444f5c: tbnz         r0, #4, 0x444fd0
    //     0x444f60: ldur         r3, [fp, #-0x10]
    //     0x444f64: ldur         r0, [fp, #-8]
    // 0x444f68: LoadField: r1 = r3->field_f
    //     0x444f68: ldur         r1, [r3, #0xf]
    //     0x444f6c: add          r1, r1, HEAP, lsl #32
    // 0x444f70: LoadField: r4 = r1->field_2b
    //     0x444f70: ldur         r4, [r1, #0x2b]
    //     0x444f74: add          r4, r4, HEAP, lsl #32
    //     0x444f78: stur         r4, [fp, #-0x18]
    // 0x444f7c: r1 = pp[0x4d4]
    //     0x444f7c: add          r1, PP, #0x14, lsl #12
    //     0x444f80: ldr          r1, [r1, #0x4c0]
    // 0x444f84: r2 = NULL
    //     0x444f84: mov          r2, NULL
    // 0x444f88: r0 = call 0x61ec54
    //     0x444f88: bl           0x61ec54
    // 0x444f8c: r1 = r0
    //     0x444f8c: mov          r1, r0
    //     0x444f90: ldur         r0, [fp, #-8]
    // 0x444f94: r2 = LoadClassIdInstr(r0)
    //     0x444f94: ldur         r2, [r0, #-1]
    //     0x444f98: ubfx         r2, r2, #0xc, #0x14
    // 0x444f9c: BARRIER = pp[0xf2]
    //     0x444f9c: add          BARRIER, PP, #0x12, lsl #12
    //     0x444fa0: ldr          BARRIER, [BARRIER, #0xe0]
    //     0x444fa4: stp          r0, BARRIER, [SP, #8]
    //     0x444fa8: str          r1, [SP]
    // 0x444fac: r0 = r2
    //     0x444fac: mov          r0, r2
    // 0x444fb0: r4 = pp[0x58]
    //     0x444fb0: ldr          r4, [PP, #0x58]
    //     0x444fb4: mov          r17, #0x86d9
    //     0x444fb8: add          lr, r0, r17
    //     0x444fbc: ldr          lr, [r21, lr, lsl #3]
    // 0x444fc0: r0 = [R]()
    //     0x444fc0: blr          lr
    //     0x444fc4: ldur         r1, [fp, #-0x18]
    // 0x444fc8: r2 = r0
    //     0x444fc8: mov          r2, r0
    // 0x444fcc: r0 = dart_core__GrowableList::addAll()
    //     0x444fcc: bl           0x2ce4e8
    //     0x444fd0: ldur         r1, [fp, #-0x10]
    // 0x444fd4: LoadField: r0 = r1->field_13
    //     0x444fd4: ldur         r0, [r1, #0x13]
    //     0x444fd8: add          r0, r0, HEAP, lsl #32
    // 0x444fdc: LoadField: r2 = r1->field_f
    //     0x444fdc: ldur         r2, [r1, #0xf]
    //     0x444fe0: add          r2, r2, HEAP, lsl #32
    // 0x444fe4: LoadField: r3 = r2->field_2f
    //     0x444fe4: ldur         r3, [r2, #0x2f]
    //     0x444fe8: tbnz         r3, #0x3f, 0x444ff4
    //     0x444fec: add          r2, NULL, #0x30
    // 0x444ff0: b 0x444ff8
    //     0x444ff0: b            0x444ff8
    //     0x444ff4: add          r2, NULL, #0x20
    //     0x444ff8: add          BARRIER, NULL, #0x20
    //     0x444ffc: stp          BARRIER, r0, [SP, #8]
    //     0x445000: str          r2, [SP]
    // 0x445004: r4 = pp[0x370]
    //     0x445004: ldr          r4, [PP, #0x370]
    // 0x445008: LoadField: r2 = r0->field_1f
    //     0x445008: ldur         r2, [r0, #0x1f]
    // 0x44500c: r0 = [R]()
    //     0x44500c: blr          r2
    //     0x445010: ldur         r0, [fp, #-0x10]
    // 0x445014: LoadField: r1 = r0->field_f
    //     0x445014: ldur         r1, [r0, #0xf]
    //     0x445018: add          r1, r1, HEAP, lsl #32
    // 0x44501c: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x44501c: bl           0x3ac980
    // 0x445020: r0 = NULL
    //     0x445020: mov          r0, NULL
    // 0x445024: SP = fp
    //     0x445024: mov          SP, fp
    // 0x445028: LeaveFrame
    //     0x445028: ldp          fp, lr, [SP], #0x10
    // 0x44502c: ret
    //     0x44502c: ret          
    // 0x445030: r0 = call 0x61fa28
    //     0x445030: bl           0x61fa28
    // 0x445034: b 0x444e04
    //     0x445034: b            0x444e04
  }

  _anon_closure() {
    // ** addr: 0x445038, size: 0x60
    // 0x445038: EnterFrame
    //     0x445038: stp          fp, lr, [SP, #-0x10]!
    //     0x44503c: mov          fp, SP
    // 0x445040: AllocStack(8)
    //     0x445040: sub          SP, SP, #8
    // 0x445044: CheckStackOverflow
    //     0x445044: ldr          BARRIER, [THR, #0x38]
    //     0x445048: cmp          SP, BARRIER
    //     0x44504c: b.ls         0x445090
    //     0x445050: ldr          r0, [fp, #0x10]
    // 0x445054: r2 = NULL
    //     0x445054: mov          r2, NULL
    // 0x445058: r1 = NULL
    //     0x445058: mov          r1, NULL
    // 0x44505c: r8 = pp[0x3cd0]
    //     0x44505c: ldr          r8, [PP, #0x3cd0]
    // 0x445060: r3 = pp[0x4dc]
    //     0x445060: add          r3, PP, #0x14, lsl #12
    //     0x445064: ldr          r3, [r3, #0x4c8]
    // 0x445068: r0 = call 0x2b15f0
    //     0x445068: bl           0x2b15f0
    // 0x44506c: r0 = call 0x44552c
    //     0x44506c: bl           0x44552c
    // 0x445070: r1 = r0
    //     0x445070: mov          r1, r0
    //     0x445074: ldr          r2, [fp, #0x10]
    //     0x445078: stur         r0, [fp, #-8]
    // 0x44507c: r0 = soul_flutter_international$model$game_pk_model_GamePkBetRecordListModel::ctor_fromJson()
    //     0x44507c: bl           0x445098
    //     0x445080: ldur         r0, [fp, #-8]
    // 0x445084: SP = fp
    //     0x445084: mov          SP, fp
    // 0x445088: LeaveFrame
    //     0x445088: ldp          fp, lr, [SP], #0x10
    // 0x44508c: ret
    //     0x44508c: ret          
    // 0x445090: r0 = call 0x61fa28
    //     0x445090: bl           0x61fa28
    // 0x445094: b 0x445050
    //     0x445094: b            0x445050
  }

  ctor() {
    // ** addr: 0x4c57cc, size: 0xbc
    // 0x4c57cc: EnterFrame
    //     0x4c57cc: stp          fp, lr, [SP, #-0x10]!
    //     0x4c57d0: mov          fp, SP
    // 0x4c57d4: AllocStack(8)
    //     0x4c57d4: sub          SP, SP, #8
    // 0x4c57d8: r0 = r1
    //     0x4c57d8: mov          r0, r1
    //     0x4c57dc: stur         r1, [fp, #-8]
    // 0x4c57e0: CheckStackOverflow
    //     0x4c57e0: ldr          BARRIER, [THR, #0x38]
    //     0x4c57e4: cmp          SP, BARRIER
    //     0x4c57e8: b.ls         0x4c5880
    // 0x4c57ec: r1 = pp[0xf2]
    //     0x4c57ec: add          r1, PP, #0x12, lsl #12
    //     0x4c57f0: ldr          r1, [r1, #0xe0]
    //     0x4c57f4: mov          r2, #0
    // 0x4c57f8: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c57f8: bl           0x277268
    //     0x4c57fc: ldur         r1, [fp, #-8]
    // 0x4c5800: StoreField: r1->field_2b = r0
    //     0x4c5800: stur         r0, [r1, #0x2b]
    //     0x4c5804: ldurb        r16, [r1, #-1]
    //     0x4c5808: ldurb        r17, [r0, #-1]
    //     0x4c580c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c5810: tst          BARRIER, HEAP, lsr #32
    // 0x4c5814: b.eq 0x4c581c
    //     0x4c5814: b.eq         0x4c581c
    // 0x4c5818: r0 = call 0x61e04c
    //     0x4c5818: bl           0x61e04c
    //     0x4c581c: mov          r0, #-1
    // 0x4c5820: StoreField: r1->field_2f = r0
    //     0x4c5820: stur         r0, [r1, #0x2f]
    // 0x4c5824: StoreField: r1->field_23 = r0
    //     0x4c5824: stur         r0, [r1, #0x23]
    // 0x4c5828: StoreField: r1->field_7 = xzr
    //     0x4c5828: stur         xzr, [r1, #7]
    // 0x4c582c: StoreField: r1->field_13 = xzr
    //     0x4c582c: stur         xzr, [r1, #0x13]
    // 0x4c5830: StoreField: r1->field_1b = xzr
    //     0x4c5830: stur         xzr, [r1, #0x1b]
    //     0x4c5834: ldr          r0, [THR, #0x68]
    // 0x4c5838: LoadField: r0 = r0->field_b90
    //     0x4c5838: ldr          r0, [r0, #0xb90]
    // 0x4c583c: BARRIER = pp[0x40]
    //     0x4c583c: ldr          BARRIER, [PP, #0x40]
    //     0x4c5840: cmp          r0, r16
    // 0x4c5844: b.ne 0x4c5850
    //     0x4c5844: b.ne         0x4c5850
    // 0x4c5848: r2 = pp[0x3608]
    //     0x4c5848: ldr          r2, [PP, #0x3608]
    // 0x4c584c: r0 = call 0x61d99c
    //     0x4c584c: bl           0x61d99c
    //     0x4c5850: ldur         r1, [fp, #-8]
    // 0x4c5854: StoreField: r1->field_f = r0
    //     0x4c5854: stur         r0, [r1, #0xf]
    //     0x4c5858: ldurb        r16, [r1, #-1]
    //     0x4c585c: ldurb        r17, [r0, #-1]
    //     0x4c5860: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c5864: tst          BARRIER, HEAP, lsr #32
    // 0x4c5868: b.eq 0x4c5870
    //     0x4c5868: b.eq         0x4c5870
    // 0x4c586c: r0 = call 0x61e04c
    //     0x4c586c: bl           0x61e04c
    // 0x4c5870: r0 = NULL
    //     0x4c5870: mov          r0, NULL
    // 0x4c5874: SP = fp
    //     0x4c5874: mov          SP, fp
    // 0x4c5878: LeaveFrame
    //     0x4c5878: ldp          fp, lr, [SP], #0x10
    // 0x4c587c: ret
    //     0x4c587c: ret          
    // 0x4c5880: r0 = call 0x61fa28
    //     0x4c5880: bl           0x61fa28
    // 0x4c5884: b 0x4c57ec
    //     0x4c5884: b            0x4c57ec
  }

  gainPKGameLaunchRank() {
    // ** addr: 0x4da710, size: 0x54
    // 0x4da710: EnterFrame
    //     0x4da710: stp          fp, lr, [SP, #-0x10]!
    //     0x4da714: mov          fp, SP
    // 0x4da718: AllocStack(0x10)
    //     0x4da718: sub          SP, SP, #0x10
    // 0x4da71c: r0 = r1
    //     0x4da71c: mov          r0, r1
    //     0x4da720: stur         r1, [fp, #-8]
    //     0x4da724: stur         r2, [fp, #-0x10]
    // 0x4da728: CheckStackOverflow
    //     0x4da728: ldr          BARRIER, [THR, #0x38]
    //     0x4da72c: cmp          SP, BARRIER
    //     0x4da730: b.ls         0x4da75c
    // 0x4da734: LoadField: r1 = r0->field_2b
    //     0x4da734: ldur         r1, [r0, #0x2b]
    //     0x4da738: add          r1, r1, HEAP, lsl #32
    // 0x4da73c: r0 = dart_core__GrowableList::clear()
    //     0x4da73c: bl           0x2b3608
    //     0x4da740: ldur         r1, [fp, #-8]
    //     0x4da744: ldur         r2, [fp, #-0x10]
    // 0x4da748: r0 = soul_flutter_international$biz$pkGame$notifier$notifier_game_bet_record_GamePKBetLaunchRecordNotifier::requestPKGameLaunchRankList()
    //     0x4da748: bl           0x4442bc
    // 0x4da74c: r0 = NULL
    //     0x4da74c: mov          r0, NULL
    // 0x4da750: SP = fp
    //     0x4da750: mov          SP, fp
    // 0x4da754: LeaveFrame
    //     0x4da754: ldp          fp, lr, [SP], #0x10
    // 0x4da758: ret
    //     0x4da758: ret          
    // 0x4da75c: r0 = call 0x61fa28
    //     0x4da75c: bl           0x61fa28
    // 0x4da760: b 0x4da734
    //     0x4da760: b            0x4da734
  }

  requestGameParticipateRankList() {
    // ** addr: 0x445ab0, size: 0xa4
    // 0x445ab0: EnterFrame
    //     0x445ab0: stp          fp, lr, [SP, #-0x10]!
    //     0x445ab4: mov          fp, SP
    // 0x445ab8: AllocStack(0x20)
    //     0x445ab8: sub          SP, SP, #0x20
    //     0x445abc: stur         r1, [fp, #-8]
    //     0x445ac0: stur         r2, [fp, #-0x10]
    // 0x445ac4: CheckStackOverflow
    //     0x445ac4: ldr          BARRIER, [THR, #0x38]
    //     0x445ac8: cmp          SP, BARRIER
    //     0x445acc: b.ls         0x445b4c
    //     0x445ad0: mov          r1, #2
    // 0x445ad4: r0 = call 0x61e890
    //     0x445ad4: bl           0x61e890
    // 0x445ad8: r2 = r0
    //     0x445ad8: mov          r2, r0
    //     0x445adc: ldur         r0, [fp, #-8]
    //     0x445ae0: stur         r2, [fp, #-0x18]
    // 0x445ae4: StoreField: r2->field_f = r0
    //     0x445ae4: stur         r0, [r2, #0xf]
    //     0x445ae8: ldur         r1, [fp, #-0x10]
    // 0x445aec: StoreField: r2->field_13 = r1
    //     0x445aec: stur         r1, [r2, #0x13]
    // 0x445af0: r1 = r0
    //     0x445af0: mov          r1, r0
    // 0x445af4: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x445af4: bl           0x3ac980
    //     0x445af8: ldur         r0, [fp, #-8]
    // 0x445afc: LoadField: r3 = r0->field_2f
    //     0x445afc: ldur         r3, [r0, #0x2f]
    //     0x445b00: ldur         r2, [fp, #-0x18]
    //     0x445b04: stur         r3, [fp, #-0x20]
    // 0x445b08: r1 = pp[0x3a4]
    //     0x445b08: add          r1, PP, #0x14, lsl #12
    //     0x445b0c: ldr          r1, [r1, #0x390]
    // 0x445b10: r0 = call 0x61ec54
    //     0x445b10: bl           0x61ec54
    //     0x445b14: ldur         r2, [fp, #-0x18]
    // 0x445b18: r1 = pp[0x3ac]
    //     0x445b18: add          r1, PP, #0x14, lsl #12
    //     0x445b1c: ldr          r1, [r1, #0x398]
    //     0x445b20: stur         r0, [fp, #-8]
    // 0x445b24: r0 = call 0x61ec54
    //     0x445b24: bl           0x61ec54
    //     0x445b28: ldur         r1, [fp, #-0x20]
    //     0x445b2c: ldur         r3, [fp, #-8]
    // 0x445b30: r5 = r0
    //     0x445b30: mov          r5, r0
    //     0x445b34: mov          r2, #2
    // 0x445b38: r0 = soul_flutter_international$api$api_service_SOApiService::getPKGameRecordList()
    //     0x445b38: bl           0x444360
    // 0x445b3c: r0 = NULL
    //     0x445b3c: mov          r0, NULL
    // 0x445b40: SP = fp
    //     0x445b40: mov          SP, fp
    // 0x445b44: LeaveFrame
    //     0x445b44: ldp          fp, lr, [SP], #0x10
    // 0x445b48: ret
    //     0x445b48: ret          
    // 0x445b4c: r0 = call 0x61fa28
    //     0x445b4c: bl           0x61fa28
    // 0x445b50: b 0x445ad0
    //     0x445b50: b            0x445ad0
  }

  _anon_closure() {
    // ** addr: 0x445b54, size: 0x25c
    // 0x445b54: EnterFrame
    //     0x445b54: stp          fp, lr, [SP, #-0x10]!
    //     0x445b58: mov          fp, SP
    // 0x445b5c: AllocStack(0x30)
    //     0x445b5c: sub          SP, SP, #0x30
    //     0x445b60: ldr          r0, [fp, #0x18]
    // 0x445b64: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x445b64: ldur         r3, [r0, #0x17]
    //     0x445b68: add          r3, r3, HEAP, lsl #32
    //     0x445b6c: stur         r3, [fp, #-0x10]
    // 0x445b70: CheckStackOverflow
    //     0x445b70: ldr          BARRIER, [THR, #0x38]
    //     0x445b74: cmp          SP, BARRIER
    //     0x445b78: b.ls         0x445da8
    // 0x445b7c: LoadField: r4 = r3->field_f
    //     0x445b7c: ldur         r4, [r3, #0xf]
    //     0x445b80: add          r4, r4, HEAP, lsl #32
    //     0x445b84: ldr          r5, [fp, #0x10]
    //     0x445b88: stur         r4, [fp, #-8]
    // 0x445b8c: r0 = LoadClassIdInstr(r5)
    //     0x445b8c: ldur         r0, [r5, #-1]
    //     0x445b90: ubfx         r0, r0, #0xc, #0x14
    // 0x445b94: r1 = r5
    //     0x445b94: mov          r1, r5
    // 0x445b98: r2 = pp[0x377]
    //     0x445b98: add          r2, PP, #0xf, lsl #12
    //     0x445b9c: ldr          r2, [r2, #0x368]
    //     0x445ba0: sub          lr, r0, #1, lsl #12
    //     0x445ba4: ldr          lr, [r21, lr, lsl #3]
    // 0x445ba8: r0 = [R]()
    //     0x445ba8: blr          lr
    //     0x445bac: cmp          r0, r22
    // 0x445bb0: b.ne 0x445bbc
    //     0x445bb0: b.ne         0x445bbc
    //     0x445bb4: orr          r5, xzr, #0xfffffffffffffffe
    // 0x445bb8: b 0x445bc0
    //     0x445bb8: b            0x445bc0
    // 0x445bbc: r5 = r0
    //     0x445bbc: mov          r5, r0
    //     0x445bc0: ldr          r4, [fp, #0x10]
    //     0x445bc4: ldur         r3, [fp, #-8]
    // 0x445bc8: r0 = r5
    //     0x445bc8: mov          r0, r5
    //     0x445bcc: stur         r5, [fp, #-0x18]
    // 0x445bd0: r2 = NULL
    //     0x445bd0: mov          r2, NULL
    // 0x445bd4: r1 = NULL
    //     0x445bd4: mov          r1, NULL
    // 0x445bd8: branchIfSmi(r0, 0x445c00)
    //     0x445bd8: tbz          r0, #0, 0x445c00
    // 0x445bdc: r4 = LoadClassIdInstr(r0)
    //     0x445bdc: ldur         r4, [r0, #-1]
    //     0x445be0: ubfx         r4, r4, #0xc, #0x14
    //     0x445be4: sub          r4, r4, #0x3c
    //     0x445be8: cmp          r4, #1
    // 0x445bec: b.ls 0x445c00
    //     0x445bec: b.ls         0x445c00
    // 0x445bf0: r8 = pp[0x1170]
    //     0x445bf0: ldr          r8, [PP, #0x1170]
    // 0x445bf4: r3 = pp[0x3b4]
    //     0x445bf4: add          r3, PP, #0x14, lsl #12
    //     0x445bf8: ldr          r3, [r3, #0x3a0]
    // 0x445bfc: r0 = call 0x62aa34
    //     0x445bfc: bl           0x62aa34
    //     0x445c00: ldur         r0, [fp, #-0x18]
    //     0x445c04: sbfx         r1, r0, #1, #0x1f
    // 0x445c08: branchIfSmi(r0, 0x445c10)
    //     0x445c08: tbz          r0, #0, 0x445c10
    // 0x445c0c: LoadField: r1 = r0->field_7
    //     0x445c0c: ldur         r1, [r0, #7]
    //     0x445c10: ldur         r0, [fp, #-8]
    // 0x445c14: StoreField: r0->field_2f = r1
    //     0x445c14: stur         r1, [r0, #0x2f]
    //     0x445c18: ldr          r1, [fp, #0x10]
    // 0x445c1c: r0 = LoadClassIdInstr(r1)
    //     0x445c1c: ldur         r0, [r1, #-1]
    //     0x445c20: ubfx         r0, r0, #0xc, #0x14
    // 0x445c24: r2 = pp[0x38f]
    //     0x445c24: add          r2, PP, #0xf, lsl #12
    //     0x445c28: ldr          r2, [r2, #0x380]
    //     0x445c2c: sub          lr, r0, #1, lsl #12
    //     0x445c30: ldr          lr, [r21, lr, lsl #3]
    // 0x445c34: r0 = [R]()
    //     0x445c34: blr          lr
    //     0x445c38: cmp          r0, r22
    // 0x445c3c: b.ne 0x445c54
    //     0x445c3c: b.ne         0x445c54
    // 0x445c40: r1 = NULL
    //     0x445c40: mov          r1, NULL
    //     0x445c44: mov          r2, #0
    // 0x445c48: r0 = dart_core__GrowableList::factory_ctor()
    //     0x445c48: bl           0x277268
    // 0x445c4c: r3 = r0
    //     0x445c4c: mov          r3, r0
    // 0x445c50: b 0x445c58
    //     0x445c50: b            0x445c58
    // 0x445c54: r3 = r0
    //     0x445c54: mov          r3, r0
    // 0x445c58: r0 = r3
    //     0x445c58: mov          r0, r3
    //     0x445c5c: stur         r3, [fp, #-8]
    // 0x445c60: r2 = NULL
    //     0x445c60: mov          r2, NULL
    // 0x445c64: r1 = NULL
    //     0x445c64: mov          r1, NULL
    //     0x445c68: mov          r4, #0x3c
    // 0x445c6c: branchIfSmi(r0, 0x445c78)
    //     0x445c6c: tbz          r0, #0, 0x445c78
    // 0x445c70: r4 = LoadClassIdInstr(r0)
    //     0x445c70: ldur         r4, [r0, #-1]
    //     0x445c74: ubfx         r4, r4, #0xc, #0x14
    //     0x445c78: sub          r4, r4, #0x5a
    //     0x445c7c: cmp          r4, #2
    // 0x445c80: b.ls 0x445cb4
    //     0x445c80: b.ls         0x445cb4
    //     0x445c84: sub          r4, r4, #0x16
    //     0x445c88: cmp          r4, #0x37
    // 0x445c8c: b.ls 0x445cb4
    //     0x445c8c: b.ls         0x445cb4
    //     0x445c90: cmp          r4, #0xebc
    // 0x445c94: b.eq 0x445cb4
    //     0x445c94: b.eq         0x445cb4
    //     0x445c98: sub          r4, r4, #0xedd
    //     0x445c9c: cmp          r4, #4
    // 0x445ca0: b.ls 0x445cb4
    //     0x445ca0: b.ls         0x445cb4
    // 0x445ca4: r8 = pp[0x3b80]
    //     0x445ca4: ldr          r8, [PP, #0x3b80]
    // 0x445ca8: r3 = pp[0x3c4]
    //     0x445ca8: add          r3, PP, #0x14, lsl #12
    //     0x445cac: ldr          r3, [r3, #0x3b0]
    // 0x445cb0: r0 = call 0x61d6e4
    //     0x445cb0: bl           0x61d6e4
    //     0x445cb4: ldur         r2, [fp, #-8]
    // 0x445cb8: r0 = LoadClassIdInstr(r2)
    //     0x445cb8: ldur         r0, [r2, #-1]
    //     0x445cbc: ubfx         r0, r0, #0xc, #0x14
    // 0x445cc0: r1 = r2
    //     0x445cc0: mov          r1, r2
    //     0x445cc4: mov          r17, #0x89aa
    //     0x445cc8: add          lr, r0, r17
    //     0x445ccc: ldr          lr, [r21, lr, lsl #3]
    // 0x445cd0: r0 = [R]()
    //     0x445cd0: blr          lr
    //     0x445cd4: tbnz         r0, #4, 0x445d48
    //     0x445cd8: ldur         r3, [fp, #-0x10]
    //     0x445cdc: ldur         r0, [fp, #-8]
    // 0x445ce0: LoadField: r1 = r3->field_f
    //     0x445ce0: ldur         r1, [r3, #0xf]
    //     0x445ce4: add          r1, r1, HEAP, lsl #32
    // 0x445ce8: LoadField: r4 = r1->field_2b
    //     0x445ce8: ldur         r4, [r1, #0x2b]
    //     0x445cec: add          r4, r4, HEAP, lsl #32
    //     0x445cf0: stur         r4, [fp, #-0x18]
    // 0x445cf4: r1 = pp[0x3d4]
    //     0x445cf4: add          r1, PP, #0x14, lsl #12
    //     0x445cf8: ldr          r1, [r1, #0x3c0]
    // 0x445cfc: r2 = NULL
    //     0x445cfc: mov          r2, NULL
    // 0x445d00: r0 = call 0x61ec54
    //     0x445d00: bl           0x61ec54
    // 0x445d04: r1 = r0
    //     0x445d04: mov          r1, r0
    //     0x445d08: ldur         r0, [fp, #-8]
    // 0x445d0c: r2 = LoadClassIdInstr(r0)
    //     0x445d0c: ldur         r2, [r0, #-1]
    //     0x445d10: ubfx         r2, r2, #0xc, #0x14
    // 0x445d14: BARRIER = pp[0xf2]
    //     0x445d14: add          BARRIER, PP, #0x12, lsl #12
    //     0x445d18: ldr          BARRIER, [BARRIER, #0xe0]
    //     0x445d1c: stp          r0, BARRIER, [SP, #8]
    //     0x445d20: str          r1, [SP]
    // 0x445d24: r0 = r2
    //     0x445d24: mov          r0, r2
    // 0x445d28: r4 = pp[0x58]
    //     0x445d28: ldr          r4, [PP, #0x58]
    //     0x445d2c: mov          r17, #0x86d9
    //     0x445d30: add          lr, r0, r17
    //     0x445d34: ldr          lr, [r21, lr, lsl #3]
    // 0x445d38: r0 = [R]()
    //     0x445d38: blr          lr
    //     0x445d3c: ldur         r1, [fp, #-0x18]
    // 0x445d40: r2 = r0
    //     0x445d40: mov          r2, r0
    // 0x445d44: r0 = dart_core__GrowableList::addAll()
    //     0x445d44: bl           0x2ce4e8
    //     0x445d48: ldur         r1, [fp, #-0x10]
    // 0x445d4c: LoadField: r0 = r1->field_13
    //     0x445d4c: ldur         r0, [r1, #0x13]
    //     0x445d50: add          r0, r0, HEAP, lsl #32
    // 0x445d54: LoadField: r2 = r1->field_f
    //     0x445d54: ldur         r2, [r1, #0xf]
    //     0x445d58: add          r2, r2, HEAP, lsl #32
    // 0x445d5c: LoadField: r3 = r2->field_2f
    //     0x445d5c: ldur         r3, [r2, #0x2f]
    //     0x445d60: tbnz         r3, #0x3f, 0x445d6c
    //     0x445d64: add          r2, NULL, #0x30
    // 0x445d68: b 0x445d70
    //     0x445d68: b            0x445d70
    //     0x445d6c: add          r2, NULL, #0x20
    //     0x445d70: add          BARRIER, NULL, #0x20
    //     0x445d74: stp          BARRIER, r0, [SP, #8]
    //     0x445d78: str          r2, [SP]
    // 0x445d7c: r4 = pp[0x370]
    //     0x445d7c: ldr          r4, [PP, #0x370]
    // 0x445d80: LoadField: r2 = r0->field_1f
    //     0x445d80: ldur         r2, [r0, #0x1f]
    // 0x445d84: r0 = [R]()
    //     0x445d84: blr          r2
    //     0x445d88: ldur         r0, [fp, #-0x10]
    // 0x445d8c: LoadField: r1 = r0->field_f
    //     0x445d8c: ldur         r1, [r0, #0xf]
    //     0x445d90: add          r1, r1, HEAP, lsl #32
    // 0x445d94: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x445d94: bl           0x3ac980
    // 0x445d98: r0 = NULL
    //     0x445d98: mov          r0, NULL
    // 0x445d9c: SP = fp
    //     0x445d9c: mov          SP, fp
    // 0x445da0: LeaveFrame
    //     0x445da0: ldp          fp, lr, [SP], #0x10
    // 0x445da4: ret
    //     0x445da4: ret          
    // 0x445da8: r0 = call 0x61fa28
    //     0x445da8: bl           0x61fa28
    // 0x445dac: b 0x445b7c
    //     0x445dac: b            0x445b7c
  }

  _anon_closure() {
    // ** addr: 0x445db0, size: 0x60
    // 0x445db0: EnterFrame
    //     0x445db0: stp          fp, lr, [SP, #-0x10]!
    //     0x445db4: mov          fp, SP
    // 0x445db8: AllocStack(8)
    //     0x445db8: sub          SP, SP, #8
    // 0x445dbc: CheckStackOverflow
    //     0x445dbc: ldr          BARRIER, [THR, #0x38]
    //     0x445dc0: cmp          SP, BARRIER
    //     0x445dc4: b.ls         0x445e08
    //     0x445dc8: ldr          r0, [fp, #0x10]
    // 0x445dcc: r2 = NULL
    //     0x445dcc: mov          r2, NULL
    // 0x445dd0: r1 = NULL
    //     0x445dd0: mov          r1, NULL
    // 0x445dd4: r8 = pp[0x3cd0]
    //     0x445dd4: ldr          r8, [PP, #0x3cd0]
    // 0x445dd8: r3 = pp[0x3dc]
    //     0x445dd8: add          r3, PP, #0x14, lsl #12
    //     0x445ddc: ldr          r3, [r3, #0x3c8]
    // 0x445de0: r0 = call 0x2b15f0
    //     0x445de0: bl           0x2b15f0
    // 0x445de4: r0 = call 0x44552c
    //     0x445de4: bl           0x44552c
    // 0x445de8: r1 = r0
    //     0x445de8: mov          r1, r0
    //     0x445dec: ldr          r2, [fp, #0x10]
    //     0x445df0: stur         r0, [fp, #-8]
    // 0x445df4: r0 = soul_flutter_international$model$game_pk_model_GamePkBetRecordListModel::ctor_fromJson()
    //     0x445df4: bl           0x445098
    //     0x445df8: ldur         r0, [fp, #-8]
    // 0x445dfc: SP = fp
    //     0x445dfc: mov          SP, fp
    // 0x445e00: LeaveFrame
    //     0x445e00: ldp          fp, lr, [SP], #0x10
    // 0x445e04: ret
    //     0x445e04: ret          
    // 0x445e08: r0 = call 0x61fa28
    //     0x445e08: bl           0x61fa28
    // 0x445e0c: b 0x445dc8
    //     0x445e0c: b            0x445dc8
  }

  gainPKGameParticipateRank() {
    // ** addr: 0x4da80c, size: 0x54
    // 0x4da80c: EnterFrame
    //     0x4da80c: stp          fp, lr, [SP, #-0x10]!
    //     0x4da810: mov          fp, SP
    // 0x4da814: AllocStack(0x10)
    //     0x4da814: sub          SP, SP, #0x10
    // 0x4da818: r0 = r1
    //     0x4da818: mov          r0, r1
    //     0x4da81c: stur         r1, [fp, #-8]
    //     0x4da820: stur         r2, [fp, #-0x10]
    // 0x4da824: CheckStackOverflow
    //     0x4da824: ldr          BARRIER, [THR, #0x38]
    //     0x4da828: cmp          SP, BARRIER
    //     0x4da82c: b.ls         0x4da858
    // 0x4da830: LoadField: r1 = r0->field_2b
    //     0x4da830: ldur         r1, [r0, #0x2b]
    //     0x4da834: add          r1, r1, HEAP, lsl #32
    // 0x4da838: r0 = dart_core__GrowableList::clear()
    //     0x4da838: bl           0x2b3608
    //     0x4da83c: ldur         r1, [fp, #-8]
    //     0x4da840: ldur         r2, [fp, #-0x10]
    // 0x4da844: r0 = soul_flutter_international$biz$pkGame$notifier$notifier_game_bet_record_GamePKBetParticipateRecordNotifier::requestGameParticipateRankList()
    //     0x4da844: bl           0x445ab0
    // 0x4da848: r0 = NULL
    //     0x4da848: mov          r0, NULL
    // 0x4da84c: SP = fp
    //     0x4da84c: mov          SP, fp
    // 0x4da850: LeaveFrame
    //     0x4da850: ldp          fp, lr, [SP], #0x10
    // 0x4da854: ret
    //     0x4da854: ret          
    // 0x4da858: r0 = call 0x61fa28
    //     0x4da858: bl           0x61fa28
    // 0x4da85c: b 0x4da830
    //     0x4da85c: b            0x4da830
  }
