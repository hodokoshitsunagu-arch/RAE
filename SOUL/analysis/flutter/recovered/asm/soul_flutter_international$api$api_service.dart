// lib: , url: soul_flutter_international$api$api_service


  getSendPackRecordList() {
    // ** addr: 0x3ab854, size: 0x104
    // 0x3ab854: EnterFrame
    //     0x3ab854: stp          fp, lr, [SP, #-0x10]!
    //     0x3ab858: mov          fp, SP
    // 0x3ab85c: AllocStack(0x30)
    //     0x3ab85c: sub          SP, SP, #0x30
    //     0x3ab860: stur         r1, [fp, #-8]
    //     0x3ab864: stur         r2, [fp, #-0x10]
    //     0x3ab868: stur         r3, [fp, #-0x18]
    // 0x3ab86c: CheckStackOverflow
    //     0x3ab86c: ldr          BARRIER, [THR, #0x38]
    //     0x3ab870: cmp          SP, BARRIER
    //     0x3ab874: b.ls         0x3ab950
    //     0x3ab878: mov          r1, #2
    // 0x3ab87c: r0 = call 0x61e890
    //     0x3ab87c: bl           0x61e890
    // 0x3ab880: r3 = r0
    //     0x3ab880: mov          r3, r0
    //     0x3ab884: ldur         r0, [fp, #-0x10]
    //     0x3ab888: stur         r3, [fp, #-0x20]
    // 0x3ab88c: StoreField: r3->field_f = r0
    //     0x3ab88c: stur         r0, [r3, #0xf]
    //     0x3ab890: ldur         r0, [fp, #-0x18]
    // 0x3ab894: StoreField: r3->field_13 = r0
    //     0x3ab894: stur         r0, [r3, #0x13]
    // 0x3ab898: r1 = NULL
    //     0x3ab898: mov          r1, NULL
    //     0x3ab89c: mov          r2, #4
    // 0x3ab8a0: r0 = call 0x61f920
    //     0x3ab8a0: bl           0x61f920
    // 0x3ab8a4: BARRIER = pp[0xbb0]
    //     0x3ab8a4: add          BARRIER, PP, #0x10, lsl #12
    //     0x3ab8a8: ldr          BARRIER, [BARRIER, #0xba0]
    // 0x3ab8ac: StoreField: r0->field_f = r16
    //     0x3ab8ac: stur         r16, [r0, #0xf]
    //     0x3ab8b0: mov          BARRIER, #4
    // 0x3ab8b4: StoreField: r0->field_13 = r16
    //     0x3ab8b4: stur         r16, [r0, #0x13]
    // 0x3ab8b8: BARRIER = pp[0xbf0]
    //     0x3ab8b8: ldr          BARRIER, [PP, #0xbf0]
    //     0x3ab8bc: stp          r0, BARRIER, [SP]
    // 0x3ab8c0: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x3ab8c0: bl           0x27c0c8
    // 0x3ab8c4: r4 = r0
    //     0x3ab8c4: mov          r4, r0
    //     0x3ab8c8: ldur         r2, [fp, #-8]
    //     0x3ab8cc: stur         r4, [fp, #-0x10]
    //     0x3ab8d0: tbnz         r2, #0x3f, 0x3ab8fc
    //     0x3ab8d4: sbfiz        r0, r2, #1, #0x1f
    //     0x3ab8d8: cmp          r2, r0, asr #1
    // 0x3ab8dc: b.eq 0x3ab8e8
    //     0x3ab8dc: b.eq         0x3ab8e8
    // 0x3ab8e0: r0 = call 0x61fba8
    //     0x3ab8e0: bl           0x61fba8
    // 0x3ab8e4: StoreField: r0->field_7 = r2
    //     0x3ab8e4: stur         r2, [r0, #7]
    // 0x3ab8e8: r1 = r4
    //     0x3ab8e8: mov          r1, r4
    // 0x3ab8ec: r3 = r0
    //     0x3ab8ec: mov          r3, r0
    // 0x3ab8f0: r2 = pp[0x377]
    //     0x3ab8f0: add          r2, PP, #0xf, lsl #12
    //     0x3ab8f4: ldr          r2, [r2, #0x368]
    // 0x3ab8f8: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3ab8f8: bl           0x6164d4
    //     0x3ab8fc: ldur         r2, [fp, #-0x20]
    // 0x3ab900: r1 = pp[0x569]
    //     0x3ab900: add          r1, PP, #0x11, lsl #12
    //     0x3ab904: ldr          r1, [r1, #0x558]
    // 0x3ab908: r0 = call 0x61ec54
    //     0x3ab908: bl           0x61ec54
    //     0x3ab90c: ldur         r2, [fp, #-0x20]
    // 0x3ab910: r1 = pp[0x571]
    //     0x3ab910: add          r1, PP, #0x11, lsl #12
    //     0x3ab914: ldr          r1, [r1, #0x560]
    //     0x3ab918: stur         r0, [fp, #-0x18]
    // 0x3ab91c: r0 = call 0x61ec54
    //     0x3ab91c: bl           0x61ec54
    //     0x3ab920: ldur         BARRIER, [fp, #-0x10]
    //     0x3ab924: stp          r0, BARRIER, [SP]
    //     0x3ab928: ldur         r2, [fp, #-0x18]
    // 0x3ab92c: r1 = pp[0x579]
    //     0x3ab92c: add          r1, PP, #0x11, lsl #12
    //     0x3ab930: ldr          r1, [r1, #0x568]
    // 0x3ab934: r4 = pp[0x40f]
    //     0x3ab934: add          r4, PP, #0xf, lsl #12
    //     0x3ab938: ldr          r4, [r4, #0x400]
    // 0x3ab93c: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x3ab93c: bl           0x3ab958
    // 0x3ab940: r0 = NULL
    //     0x3ab940: mov          r0, NULL
    // 0x3ab944: SP = fp
    //     0x3ab944: mov          SP, fp
    // 0x3ab948: LeaveFrame
    //     0x3ab948: ldp          fp, lr, [SP], #0x10
    // 0x3ab94c: ret
    //     0x3ab94c: ret          
    // 0x3ab950: r0 = call 0x61fa28
    //     0x3ab950: bl           0x61fa28
    // 0x3ab954: b 0x3ab878
    //     0x3ab954: b            0x3ab878
  }

  _anon_closure() {
    // ** addr: 0x3ac798, size: 0x54
    // 0x3ac798: EnterFrame
    //     0x3ac798: stp          fp, lr, [SP, #-0x10]!
    //     0x3ac79c: mov          fp, SP
    // 0x3ac7a0: AllocStack(8)
    //     0x3ac7a0: sub          SP, SP, #8
    //     0x3ac7a4: ldr          r0, [fp, #0x20]
    // 0x3ac7a8: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x3ac7a8: ldur         r1, [r0, #0x17]
    //     0x3ac7ac: add          r1, r1, HEAP, lsl #32
    // 0x3ac7b0: CheckStackOverflow
    //     0x3ac7b0: ldr          BARRIER, [THR, #0x38]
    //     0x3ac7b4: cmp          SP, BARRIER
    //     0x3ac7b8: b.ls         0x3ac7e4
    // 0x3ac7bc: LoadField: r0 = r1->field_13
    //     0x3ac7bc: ldur         r0, [r1, #0x13]
    //     0x3ac7c0: add          r0, r0, HEAP, lsl #32
    //     0x3ac7c4: str          r0, [SP]
    // 0x3ac7c8: r4 = pp[0x3a8]
    //     0x3ac7c8: ldr          r4, [PP, #0x3a8]
    // 0x3ac7cc: LoadField: r2 = r0->field_1f
    //     0x3ac7cc: ldur         r2, [r0, #0x1f]
    // 0x3ac7d0: r0 = [R]()
    //     0x3ac7d0: blr          r2
    // 0x3ac7d4: r0 = NULL
    //     0x3ac7d4: mov          r0, NULL
    // 0x3ac7d8: SP = fp
    //     0x3ac7d8: mov          SP, fp
    // 0x3ac7dc: LeaveFrame
    //     0x3ac7dc: ldp          fp, lr, [SP], #0x10
    // 0x3ac7e0: ret
    //     0x3ac7e0: ret          
    // 0x3ac7e4: r0 = call 0x61fa28
    //     0x3ac7e4: bl           0x61fa28
    // 0x3ac7e8: b 0x3ac7bc
    //     0x3ac7e8: b            0x3ac7bc
  }

  getPKBetGameRankList() {
    // ** addr: 0x3ac7ec, size: 0x13c
    // 0x3ac7ec: EnterFrame
    //     0x3ac7ec: stp          fp, lr, [SP, #-0x10]!
    //     0x3ac7f0: mov          fp, SP
    // 0x3ac7f4: AllocStack(0x40)
    //     0x3ac7f4: sub          SP, SP, #0x40
    //     0x3ac7f8: stur         r1, [fp, #-8]
    //     0x3ac7fc: stur         r2, [fp, #-0x10]
    //     0x3ac800: stur         r3, [fp, #-0x18]
    //     0x3ac804: stur         r5, [fp, #-0x20]
    //     0x3ac808: stur         r6, [fp, #-0x28]
    // 0x3ac80c: CheckStackOverflow
    //     0x3ac80c: ldr          BARRIER, [THR, #0x38]
    //     0x3ac810: cmp          SP, BARRIER
    //     0x3ac814: b.ls         0x3ac920
    //     0x3ac818: mov          r1, #2
    // 0x3ac81c: r0 = call 0x61e890
    //     0x3ac81c: bl           0x61e890
    // 0x3ac820: r3 = r0
    //     0x3ac820: mov          r3, r0
    //     0x3ac824: ldur         r0, [fp, #-0x20]
    //     0x3ac828: stur         r3, [fp, #-0x30]
    // 0x3ac82c: StoreField: r3->field_f = r0
    //     0x3ac82c: stur         r0, [r3, #0xf]
    //     0x3ac830: ldur         r0, [fp, #-0x28]
    // 0x3ac834: StoreField: r3->field_13 = r0
    //     0x3ac834: stur         r0, [r3, #0x13]
    // 0x3ac838: r1 = NULL
    //     0x3ac838: mov          r1, NULL
    //     0x3ac83c: mov          r2, #8
    // 0x3ac840: r0 = call 0x61f920
    //     0x3ac840: bl           0x61f920
    // 0x3ac844: r2 = r0
    //     0x3ac844: mov          r2, r0
    // 0x3ac848: BARRIER = pp[0x32f]
    //     0x3ac848: add          BARRIER, PP, #0xf, lsl #12
    //     0x3ac84c: ldr          BARRIER, [BARRIER, #0x320]
    // 0x3ac850: StoreField: r2->field_f = r16
    //     0x3ac850: stur         r16, [r2, #0xf]
    //     0x3ac854: ldur         r3, [fp, #-0x18]
    //     0x3ac858: sbfiz        r0, r3, #1, #0x1f
    //     0x3ac85c: cmp          r3, r0, asr #1
    // 0x3ac860: b.eq 0x3ac86c
    //     0x3ac860: b.eq         0x3ac86c
    // 0x3ac864: r0 = call 0x61fba8
    //     0x3ac864: bl           0x61fba8
    // 0x3ac868: StoreField: r0->field_7 = r3
    //     0x3ac868: stur         r3, [r0, #7]
    // 0x3ac86c: StoreField: r2->field_13 = r0
    //     0x3ac86c: stur         r0, [r2, #0x13]
    // 0x3ac870: BARRIER = pp[0x347]
    //     0x3ac870: add          BARRIER, PP, #0xf, lsl #12
    //     0x3ac874: ldr          BARRIER, [BARRIER, #0x338]
    // 0x3ac878: ArrayStore: r2[0] = r16  ; List_8
    //     0x3ac878: stur         r16, [r2, #0x17]
    //     0x3ac87c: ldur         r0, [fp, #-0x10]
    //     0x3ac880: lsl          r1, r0, #1
    // 0x3ac884: StoreField: r2->field_1b = r1
    //     0x3ac884: stur         r1, [r2, #0x1b]
    // 0x3ac888: BARRIER = pp[0xbf0]
    //     0x3ac888: ldr          BARRIER, [PP, #0xbf0]
    //     0x3ac88c: stp          r2, BARRIER, [SP]
    // 0x3ac890: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x3ac890: bl           0x27c0c8
    // 0x3ac894: r4 = r0
    //     0x3ac894: mov          r4, r0
    //     0x3ac898: ldur         r2, [fp, #-8]
    //     0x3ac89c: stur         r4, [fp, #-0x20]
    //     0x3ac8a0: tbnz         r2, #0x3f, 0x3ac8cc
    //     0x3ac8a4: sbfiz        r0, r2, #1, #0x1f
    //     0x3ac8a8: cmp          r2, r0, asr #1
    // 0x3ac8ac: b.eq 0x3ac8b8
    //     0x3ac8ac: b.eq         0x3ac8b8
    // 0x3ac8b0: r0 = call 0x61fba8
    //     0x3ac8b0: bl           0x61fba8
    // 0x3ac8b4: StoreField: r0->field_7 = r2
    //     0x3ac8b4: stur         r2, [r0, #7]
    // 0x3ac8b8: r1 = r4
    //     0x3ac8b8: mov          r1, r4
    // 0x3ac8bc: r3 = r0
    //     0x3ac8bc: mov          r3, r0
    // 0x3ac8c0: r2 = pp[0x377]
    //     0x3ac8c0: add          r2, PP, #0xf, lsl #12
    //     0x3ac8c4: ldr          r2, [r2, #0x368]
    // 0x3ac8c8: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3ac8c8: bl           0x6164d4
    //     0x3ac8cc: ldur         r2, [fp, #-0x30]
    // 0x3ac8d0: r1 = pp[0x3f7]
    //     0x3ac8d0: add          r1, PP, #0xf, lsl #12
    //     0x3ac8d4: ldr          r1, [r1, #0x3e8]
    // 0x3ac8d8: r0 = call 0x61ec54
    //     0x3ac8d8: bl           0x61ec54
    //     0x3ac8dc: ldur         r2, [fp, #-0x30]
    // 0x3ac8e0: r1 = pp[0x3ff]
    //     0x3ac8e0: add          r1, PP, #0xf, lsl #12
    //     0x3ac8e4: ldr          r1, [r1, #0x3f0]
    //     0x3ac8e8: stur         r0, [fp, #-0x28]
    // 0x3ac8ec: r0 = call 0x61ec54
    //     0x3ac8ec: bl           0x61ec54
    //     0x3ac8f0: ldur         BARRIER, [fp, #-0x20]
    //     0x3ac8f4: stp          r0, BARRIER, [SP]
    //     0x3ac8f8: ldur         r2, [fp, #-0x28]
    // 0x3ac8fc: r1 = pp[0x407]
    //     0x3ac8fc: add          r1, PP, #0xf, lsl #12
    //     0x3ac900: ldr          r1, [r1, #0x3f8]
    // 0x3ac904: r4 = pp[0x40f]
    //     0x3ac904: add          r4, PP, #0xf, lsl #12
    //     0x3ac908: ldr          r4, [r4, #0x400]
    // 0x3ac90c: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x3ac90c: bl           0x3ab958
    // 0x3ac910: r0 = NULL
    //     0x3ac910: mov          r0, NULL
    // 0x3ac914: SP = fp
    //     0x3ac914: mov          SP, fp
    // 0x3ac918: LeaveFrame
    //     0x3ac918: ldp          fp, lr, [SP], #0x10
    // 0x3ac91c: ret
    //     0x3ac91c: ret          
    // 0x3ac920: r0 = call 0x61fa28
    //     0x3ac920: bl           0x61fa28
    // 0x3ac924: b 0x3ac818
    //     0x3ac924: b            0x3ac818
  }

  _anon_closure() {
    // ** addr: 0x3ac928, size: 0x58
    // 0x3ac928: EnterFrame
    //     0x3ac928: stp          fp, lr, [SP, #-0x10]!
    //     0x3ac92c: mov          fp, SP
    // 0x3ac930: AllocStack(0x10)
    //     0x3ac930: sub          SP, SP, #0x10
    //     0x3ac934: ldr          r0, [fp, #0x18]
    // 0x3ac938: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x3ac938: ldur         r1, [r0, #0x17]
    //     0x3ac93c: add          r1, r1, HEAP, lsl #32
    // 0x3ac940: CheckStackOverflow
    //     0x3ac940: ldr          BARRIER, [THR, #0x38]
    //     0x3ac944: cmp          SP, BARRIER
    //     0x3ac948: b.ls         0x3ac978
    // 0x3ac94c: LoadField: r0 = r1->field_f
    //     0x3ac94c: ldur         r0, [r1, #0xf]
    //     0x3ac950: add          r0, r0, HEAP, lsl #32
    //     0x3ac954: ldr          BARRIER, [fp, #0x10]
    //     0x3ac958: stp          BARRIER, r0, [SP]
    // 0x3ac95c: r4 = pp[0x140]
    //     0x3ac95c: ldr          r4, [PP, #0x140]
    // 0x3ac960: LoadField: r2 = r0->field_1f
    //     0x3ac960: ldur         r2, [r0, #0x1f]
    // 0x3ac964: r0 = [R]()
    //     0x3ac964: blr          r2
    // 0x3ac968: r0 = NULL
    //     0x3ac968: mov          r0, NULL
    // 0x3ac96c: SP = fp
    //     0x3ac96c: mov          SP, fp
    // 0x3ac970: LeaveFrame
    //     0x3ac970: ldp          fp, lr, [SP], #0x10
    // 0x3ac974: ret
    //     0x3ac974: ret          
    // 0x3ac978: r0 = call 0x61fa28
    //     0x3ac978: bl           0x61fa28
    // 0x3ac97c: b 0x3ac94c
    //     0x3ac97c: b            0x3ac94c
  }

  getFinchFaceList() {
    // ** addr: 0x3af000, size: 0x118
    // 0x3af000: EnterFrame
    //     0x3af000: stp          fp, lr, [SP, #-0x10]!
    //     0x3af004: mov          fp, SP
    // 0x3af008: AllocStack(0x38)
    //     0x3af008: sub          SP, SP, #0x38
    // 0x3af00c: r0 = r2
    //     0x3af00c: mov          r0, r2
    //     0x3af010: stur         r1, [fp, #-8]
    //     0x3af014: stur         r2, [fp, #-0x10]
    //     0x3af018: stur         r3, [fp, #-0x18]
    //     0x3af01c: stur         r5, [fp, #-0x20]
    // 0x3af020: CheckStackOverflow
    //     0x3af020: ldr          BARRIER, [THR, #0x38]
    //     0x3af024: cmp          SP, BARRIER
    //     0x3af028: b.ls         0x3af110
    //     0x3af02c: mov          r1, #2
    // 0x3af030: r0 = call 0x61e890
    //     0x3af030: bl           0x61e890
    // 0x3af034: r3 = r0
    //     0x3af034: mov          r3, r0
    //     0x3af038: ldur         r0, [fp, #-0x18]
    //     0x3af03c: stur         r3, [fp, #-0x28]
    // 0x3af040: StoreField: r3->field_f = r0
    //     0x3af040: stur         r0, [r3, #0xf]
    //     0x3af044: ldur         r0, [fp, #-0x20]
    // 0x3af048: StoreField: r3->field_13 = r0
    //     0x3af048: stur         r0, [r3, #0x13]
    // 0x3af04c: r1 = NULL
    //     0x3af04c: mov          r1, NULL
    //     0x3af050: mov          r2, #4
    // 0x3af054: r0 = call 0x61f920
    //     0x3af054: bl           0x61f920
    // 0x3af058: BARRIER = pp[0xb37]
    //     0x3af058: add          BARRIER, PP, #0xf, lsl #12
    //     0x3af05c: ldr          BARRIER, [BARRIER, #0xb28]
    // 0x3af060: StoreField: r0->field_f = r16
    //     0x3af060: stur         r16, [r0, #0xf]
    //     0x3af064: mov          BARRIER, #0x28
    // 0x3af068: StoreField: r0->field_13 = r16
    //     0x3af068: stur         r16, [r0, #0x13]
    // 0x3af06c: BARRIER = pp[0xbf0]
    //     0x3af06c: ldr          BARRIER, [PP, #0xbf0]
    //     0x3af070: stp          r0, BARRIER, [SP]
    // 0x3af074: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x3af074: bl           0x27c0c8
    //     0x3af078: ldur         r3, [fp, #-8]
    //     0x3af07c: stur         r0, [fp, #-0x18]
    //     0x3af080: cmp          r3, r22
    // 0x3af084: b.eq 0x3af0a8
    //     0x3af084: b.eq         0x3af0a8
    //     0x3af088: sbfx         r1, r3, #1, #0x1f
    // 0x3af08c: branchIfSmi(r3, 0x3af094)
    //     0x3af08c: tbz          r3, #0, 0x3af094
    // 0x3af090: LoadField: r1 = r3->field_7
    //     0x3af090: ldur         r1, [r3, #7]
    //     0x3af094: tbnz         r1, #0x3f, 0x3af0a8
    // 0x3af098: r1 = r0
    //     0x3af098: mov          r1, r0
    // 0x3af09c: r2 = pp[0x377]
    //     0x3af09c: add          r2, PP, #0xf, lsl #12
    //     0x3af0a0: ldr          r2, [r2, #0x368]
    // 0x3af0a4: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3af0a4: bl           0x6164d4
    //     0x3af0a8: ldur         r1, [fp, #-0x18]
    //     0x3af0ac: ldur         r3, [fp, #-0x10]
    // 0x3af0b0: r2 = pp[0xb3f]
    //     0x3af0b0: add          r2, PP, #0xf, lsl #12
    //     0x3af0b4: ldr          r2, [r2, #0xb30]
    // 0x3af0b8: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3af0b8: bl           0x6164d4
    //     0x3af0bc: ldur         r2, [fp, #-0x28]
    // 0x3af0c0: r1 = pp[0xb47]
    //     0x3af0c0: add          r1, PP, #0xf, lsl #12
    //     0x3af0c4: ldr          r1, [r1, #0xb38]
    // 0x3af0c8: r0 = call 0x61ec54
    //     0x3af0c8: bl           0x61ec54
    //     0x3af0cc: ldur         r2, [fp, #-0x28]
    // 0x3af0d0: r1 = pp[0xb4f]
    //     0x3af0d0: add          r1, PP, #0xf, lsl #12
    //     0x3af0d4: ldr          r1, [r1, #0xb40]
    //     0x3af0d8: stur         r0, [fp, #-8]
    // 0x3af0dc: r0 = call 0x61ec54
    //     0x3af0dc: bl           0x61ec54
    //     0x3af0e0: ldur         BARRIER, [fp, #-0x18]
    //     0x3af0e4: stp          r0, BARRIER, [SP]
    //     0x3af0e8: ldur         r2, [fp, #-8]
    // 0x3af0ec: r1 = pp[0xb57]
    //     0x3af0ec: add          r1, PP, #0xf, lsl #12
    //     0x3af0f0: ldr          r1, [r1, #0xb48]
    // 0x3af0f4: r4 = pp[0x40f]
    //     0x3af0f4: add          r4, PP, #0xf, lsl #12
    //     0x3af0f8: ldr          r4, [r4, #0x400]
    // 0x3af0fc: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x3af0fc: bl           0x3ab958
    // 0x3af100: r0 = NULL
    //     0x3af100: mov          r0, NULL
    // 0x3af104: SP = fp
    //     0x3af104: mov          SP, fp
    // 0x3af108: LeaveFrame
    //     0x3af108: ldp          fp, lr, [SP], #0x10
    // 0x3af10c: ret
    //     0x3af10c: ret          
    // 0x3af110: r0 = call 0x61fa28
    //     0x3af110: bl           0x61fa28
    // 0x3af114: b 0x3af02c
    //     0x3af114: b            0x3af02c
  }

  _anon_closure() {
    // ** addr: 0x41e59c, size: 0x58
    // 0x41e59c: EnterFrame
    //     0x41e59c: stp          fp, lr, [SP, #-0x10]!
    //     0x41e5a0: mov          fp, SP
    // 0x41e5a4: AllocStack(0x10)
    //     0x41e5a4: sub          SP, SP, #0x10
    //     0x41e5a8: ldr          r0, [fp, #0x20]
    // 0x41e5ac: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x41e5ac: ldur         r1, [r0, #0x17]
    //     0x41e5b0: add          r1, r1, HEAP, lsl #32
    // 0x41e5b4: CheckStackOverflow
    //     0x41e5b4: ldr          BARRIER, [THR, #0x38]
    //     0x41e5b8: cmp          SP, BARRIER
    //     0x41e5bc: b.ls         0x41e5ec
    // 0x41e5c0: LoadField: r0 = r1->field_13
    //     0x41e5c0: ldur         r0, [r1, #0x13]
    //     0x41e5c4: add          r0, r0, HEAP, lsl #32
    //     0x41e5c8: ldr          BARRIER, [fp, #0x18]
    //     0x41e5cc: stp          BARRIER, r0, [SP]
    // 0x41e5d0: r4 = pp[0x140]
    //     0x41e5d0: ldr          r4, [PP, #0x140]
    // 0x41e5d4: LoadField: r2 = r0->field_1f
    //     0x41e5d4: ldur         r2, [r0, #0x1f]
    // 0x41e5d8: r0 = [R]()
    //     0x41e5d8: blr          r2
    // 0x41e5dc: r0 = NULL
    //     0x41e5dc: mov          r0, NULL
    // 0x41e5e0: SP = fp
    //     0x41e5e0: mov          SP, fp
    // 0x41e5e4: LeaveFrame
    //     0x41e5e4: ldp          fp, lr, [SP], #0x10
    // 0x41e5e8: ret
    //     0x41e5e8: ret          
    // 0x41e5ec: r0 = call 0x61fa28
    //     0x41e5ec: bl           0x61fa28
    // 0x41e5f0: b 0x41e5c0
    //     0x41e5f0: b            0x41e5c0
  }

  buyAvatarItem() {
    // ** addr: 0x41e5f4, size: 0xe8
    // 0x41e5f4: EnterFrame
    //     0x41e5f4: stp          fp, lr, [SP, #-0x10]!
    //     0x41e5f8: mov          fp, SP
    // 0x41e5fc: AllocStack(0x38)
    //     0x41e5fc: sub          SP, SP, #0x38
    //     0x41e600: stur         r1, [fp, #-8]
    //     0x41e604: stur         r2, [fp, #-0x10]
    //     0x41e608: stur         r3, [fp, #-0x18]
    //     0x41e60c: stur         r5, [fp, #-0x20]
    // 0x41e610: CheckStackOverflow
    //     0x41e610: ldr          BARRIER, [THR, #0x38]
    //     0x41e614: cmp          SP, BARRIER
    //     0x41e618: b.ls         0x41e6d4
    //     0x41e61c: mov          r1, #2
    // 0x41e620: r0 = call 0x61e890
    //     0x41e620: bl           0x61e890
    // 0x41e624: r3 = r0
    //     0x41e624: mov          r3, r0
    //     0x41e628: ldur         r0, [fp, #-0x18]
    //     0x41e62c: stur         r3, [fp, #-0x28]
    // 0x41e630: StoreField: r3->field_f = r0
    //     0x41e630: stur         r0, [r3, #0xf]
    //     0x41e634: ldur         r0, [fp, #-0x20]
    // 0x41e638: StoreField: r3->field_13 = r0
    //     0x41e638: stur         r0, [r3, #0x13]
    // 0x41e63c: r1 = NULL
    //     0x41e63c: mov          r1, NULL
    //     0x41e640: mov          r2, #8
    // 0x41e644: r0 = call 0x61f920
    //     0x41e644: bl           0x61f920
    // 0x41e648: BARRIER = pp[0xa8f]
    //     0x41e648: add          BARRIER, PP, #0xf, lsl #12
    //     0x41e64c: ldr          BARRIER, [BARRIER, #0xa80]
    // 0x41e650: StoreField: r0->field_f = r16
    //     0x41e650: stur         r16, [r0, #0xf]
    //     0x41e654: ldur         r1, [fp, #-8]
    // 0x41e658: StoreField: r0->field_13 = r1
    //     0x41e658: stur         r1, [r0, #0x13]
    // 0x41e65c: BARRIER = pp[0xac4]
    //     0x41e65c: add          BARRIER, PP, #0x14, lsl #12
    //     0x41e660: ldr          BARRIER, [BARRIER, #0xab0]
    // 0x41e664: ArrayStore: r0[0] = r16  ; List_8
    //     0x41e664: stur         r16, [r0, #0x17]
    //     0x41e668: ldur         r1, [fp, #-0x10]
    // 0x41e66c: StoreField: r0->field_1b = r1
    //     0x41e66c: stur         r1, [r0, #0x1b]
    // 0x41e670: BARRIER = pp[0xbf0]
    //     0x41e670: ldr          BARRIER, [PP, #0xbf0]
    //     0x41e674: stp          r0, BARRIER, [SP]
    // 0x41e678: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x41e678: bl           0x27c0c8
    //     0x41e67c: ldur         r2, [fp, #-0x28]
    // 0x41e680: r1 = pp[0xacc]
    //     0x41e680: add          r1, PP, #0x14, lsl #12
    //     0x41e684: ldr          r1, [r1, #0xab8]
    //     0x41e688: stur         r0, [fp, #-8]
    // 0x41e68c: r0 = call 0x61ec54
    //     0x41e68c: bl           0x61ec54
    //     0x41e690: ldur         r2, [fp, #-0x28]
    // 0x41e694: r1 = pp[0xad4]
    //     0x41e694: add          r1, PP, #0x14, lsl #12
    //     0x41e698: ldr          r1, [r1, #0xac0]
    //     0x41e69c: stur         r0, [fp, #-0x10]
    // 0x41e6a0: r0 = call 0x61ec54
    //     0x41e6a0: bl           0x61ec54
    //     0x41e6a4: str          r0, [SP]
    //     0x41e6a8: ldur         r2, [fp, #-8]
    //     0x41e6ac: ldur         r3, [fp, #-0x10]
    // 0x41e6b0: r1 = pp[0xadc]
    //     0x41e6b0: add          r1, PP, #0x14, lsl #12
    //     0x41e6b4: ldr          r1, [r1, #0xac8]
    // 0x41e6b8: r4 = pp[0xbd0]
    //     0x41e6b8: add          r4, PP, #0x10, lsl #12
    //     0x41e6bc: ldr          r4, [r4, #0xbc0]
    // 0x41e6c0: r0 = soul_flutter_international$common$plugins$http_Http::postSimple()
    //     0x41e6c0: bl           0x41e430
    // 0x41e6c4: r0 = NULL
    //     0x41e6c4: mov          r0, NULL
    // 0x41e6c8: SP = fp
    //     0x41e6c8: mov          SP, fp
    // 0x41e6cc: LeaveFrame
    //     0x41e6cc: ldp          fp, lr, [SP], #0x10
    // 0x41e6d0: ret
    //     0x41e6d0: ret          
    // 0x41e6d4: r0 = call 0x61fa28
    //     0x41e6d4: bl           0x61fa28
    // 0x41e6d8: b 0x41e61c
    //     0x41e6d8: b            0x41e61c
  }

  _anon_closure() {
    // ** addr: 0x33b21c, size: 0x54
    // 0x33b21c: EnterFrame
    //     0x33b21c: stp          fp, lr, [SP, #-0x10]!
    //     0x33b220: mov          fp, SP
    // 0x33b224: AllocStack(8)
    //     0x33b224: sub          SP, SP, #8
    //     0x33b228: ldr          r0, [fp, #0x18]
    // 0x33b22c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x33b22c: ldur         r1, [r0, #0x17]
    //     0x33b230: add          r1, r1, HEAP, lsl #32
    // 0x33b234: CheckStackOverflow
    //     0x33b234: ldr          BARRIER, [THR, #0x38]
    //     0x33b238: cmp          SP, BARRIER
    //     0x33b23c: b.ls         0x33b268
    // 0x33b240: LoadField: r0 = r1->field_f
    //     0x33b240: ldur         r0, [r1, #0xf]
    //     0x33b244: add          r0, r0, HEAP, lsl #32
    //     0x33b248: str          r0, [SP]
    // 0x33b24c: r4 = pp[0x3a8]
    //     0x33b24c: ldr          r4, [PP, #0x3a8]
    // 0x33b250: LoadField: r2 = r0->field_1f
    //     0x33b250: ldur         r2, [r0, #0x1f]
    // 0x33b254: r0 = [R]()
    //     0x33b254: blr          r2
    // 0x33b258: r0 = NULL
    //     0x33b258: mov          r0, NULL
    // 0x33b25c: SP = fp
    //     0x33b25c: mov          SP, fp
    // 0x33b260: LeaveFrame
    //     0x33b260: ldp          fp, lr, [SP], #0x10
    // 0x33b264: ret
    //     0x33b264: ret          
    // 0x33b268: r0 = call 0x61fa28
    //     0x33b268: bl           0x61fa28
    // 0x33b26c: b 0x33b240
    //     0x33b26c: b            0x33b240
  }

  getTotalCoins() {
    // ** addr: 0x41e914, size: 0x6c
    // 0x41e914: EnterFrame
    //     0x41e914: stp          fp, lr, [SP, #-0x10]!
    //     0x41e918: mov          fp, SP
    // 0x41e91c: AllocStack(8)
    //     0x41e91c: sub          SP, SP, #8
    //     0x41e920: stur         r1, [fp, #-8]
    // 0x41e924: CheckStackOverflow
    //     0x41e924: ldr          BARRIER, [THR, #0x38]
    //     0x41e928: cmp          SP, BARRIER
    //     0x41e92c: b.ls         0x41e978
    //     0x41e930: mov          r1, #1
    // 0x41e934: r0 = call 0x61e890
    //     0x41e934: bl           0x61e890
    // 0x41e938: r1 = r0
    //     0x41e938: mov          r1, r0
    //     0x41e93c: ldur         r0, [fp, #-8]
    // 0x41e940: StoreField: r1->field_f = r0
    //     0x41e940: stur         r0, [r1, #0xf]
    // 0x41e944: r2 = r1
    //     0x41e944: mov          r2, r1
    // 0x41e948: r1 = pp[0xd88]
    //     0x41e948: add          r1, PP, #0x10, lsl #12
    //     0x41e94c: ldr          r1, [r1, #0xd78]
    // 0x41e950: r0 = call 0x61ec54
    //     0x41e950: bl           0x61ec54
    // 0x41e954: r2 = r0
    //     0x41e954: mov          r2, r0
    // 0x41e958: r1 = pp[0xd90]
    //     0x41e958: add          r1, PP, #0x10, lsl #12
    //     0x41e95c: ldr          r1, [r1, #0xd80]
    // 0x41e960: r4 = pp[0x278]
    //     0x41e960: ldr          r4, [PP, #0x278]
    // 0x41e964: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x41e964: bl           0x3ab958
    // 0x41e968: r0 = NULL
    //     0x41e968: mov          r0, NULL
    // 0x41e96c: SP = fp
    //     0x41e96c: mov          SP, fp
    // 0x41e970: LeaveFrame
    //     0x41e970: ldp          fp, lr, [SP], #0x10
    // 0x41e974: ret
    //     0x41e974: ret          
    // 0x41e978: r0 = call 0x61fa28
    //     0x41e978: bl           0x61fa28
    // 0x41e97c: b 0x41e930
    //     0x41e97c: b            0x41e930
  }

  _anon_closure() {
    // ** addr: 0x41e980, size: 0xd0
    // 0x41e980: EnterFrame
    //     0x41e980: stp          fp, lr, [SP, #-0x10]!
    //     0x41e984: mov          fp, SP
    // 0x41e988: AllocStack(0x18)
    //     0x41e988: sub          SP, SP, #0x18
    //     0x41e98c: ldr          r0, [fp, #0x18]
    // 0x41e990: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x41e990: ldur         r3, [r0, #0x17]
    //     0x41e994: add          r3, r3, HEAP, lsl #32
    //     0x41e998: stur         r3, [fp, #-8]
    // 0x41e99c: CheckStackOverflow
    //     0x41e99c: ldr          BARRIER, [THR, #0x38]
    //     0x41e9a0: cmp          SP, BARRIER
    //     0x41e9a4: b.ls         0x41ea48
    //     0x41e9a8: ldr          r1, [fp, #0x10]
    // 0x41e9ac: r0 = LoadClassIdInstr(r1)
    //     0x41e9ac: ldur         r0, [r1, #-1]
    //     0x41e9b0: ubfx         r0, r0, #0xc, #0x14
    // 0x41e9b4: r2 = pp[0x1348]
    //     0x41e9b4: ldr          r2, [PP, #0x1348]
    //     0x41e9b8: sub          lr, r0, #1, lsl #12
    //     0x41e9bc: ldr          lr, [r21, lr, lsl #3]
    // 0x41e9c0: r0 = [R]()
    //     0x41e9c0: blr          lr
    // 0x41e9c4: r1 = r0
    //     0x41e9c4: mov          r1, r0
    //     0x41e9c8: ldur         r0, [fp, #-8]
    // 0x41e9cc: LoadField: r2 = r0->field_f
    //     0x41e9cc: ldur         r2, [r0, #0xf]
    //     0x41e9d0: add          r2, r2, HEAP, lsl #32
    //     0x41e9d4: cmp          r1, r22
    // 0x41e9d8: b.eq 0x41ea0c
    //     0x41e9d8: b.eq         0x41ea0c
    //     0x41e9dc: mov          r0, #0x3c
    // 0x41e9e0: branchIfSmi(r1, 0x41e9ec)
    //     0x41e9e0: tbz          r1, #0, 0x41e9ec
    // 0x41e9e4: r0 = LoadClassIdInstr(r1)
    //     0x41e9e4: ldur         r0, [r1, #-1]
    //     0x41e9e8: ubfx         r0, r0, #0xc, #0x14
    //     0x41e9ec: sub          BARRIER, r0, #0x3c
    //     0x41e9f0: cmp          BARRIER, #1
    // 0x41e9f4: b.hi 0x41ea0c
    //     0x41e9f4: b.hi         0x41ea0c
    //     0x41e9f8: sbfx         r0, r1, #1, #0x1f
    // 0x41e9fc: branchIfSmi(r1, 0x41ea04)
    //     0x41e9fc: tbz          r1, #0, 0x41ea04
    // 0x41ea00: LoadField: r0 = r1->field_7
    //     0x41ea00: ldur         r0, [r1, #7]
    // 0x41ea04: r3 = r0
    //     0x41ea04: mov          r3, r0
    // 0x41ea08: b 0x41ea10
    //     0x41ea08: b            0x41ea10
    //     0x41ea0c: mov          r3, #0
    //     0x41ea10: sbfiz        r0, r3, #1, #0x1f
    //     0x41ea14: cmp          r3, r0, asr #1
    // 0x41ea18: b.eq 0x41ea24
    //     0x41ea18: b.eq         0x41ea24
    // 0x41ea1c: r0 = call 0x61fba8
    //     0x41ea1c: bl           0x61fba8
    // 0x41ea20: StoreField: r0->field_7 = r3
    //     0x41ea20: stur         r3, [r0, #7]
    //     0x41ea24: stp          r0, r2, [SP]
    // 0x41ea28: r0 = r2
    //     0x41ea28: mov          r0, r2
    // 0x41ea2c: r4 = pp[0x140]
    //     0x41ea2c: ldr          r4, [PP, #0x140]
    // 0x41ea30: LoadField: r2 = r0->field_1f
    //     0x41ea30: ldur         r2, [r0, #0x1f]
    // 0x41ea34: r0 = [R]()
    //     0x41ea34: blr          r2
    // 0x41ea38: r0 = NULL
    //     0x41ea38: mov          r0, NULL
    // 0x41ea3c: SP = fp
    //     0x41ea3c: mov          SP, fp
    // 0x41ea40: LeaveFrame
    //     0x41ea40: ldp          fp, lr, [SP], #0x10
    // 0x41ea44: ret
    //     0x41ea44: ret          
    // 0x41ea48: r0 = call 0x61fa28
    //     0x41ea48: bl           0x61fa28
    // 0x41ea4c: b 0x41e9a8
    //     0x41ea4c: b            0x41e9a8
  }

  getRecentChat() {
    // ** addr: 0x4229c0, size: 0x98
    // 0x4229c0: EnterFrame
    //     0x4229c0: stp          fp, lr, [SP, #-0x10]!
    //     0x4229c4: mov          fp, SP
    // 0x4229c8: AllocStack(0x20)
    //     0x4229c8: sub          SP, SP, #0x20
    //     0x4229cc: stur         r1, [fp, #-8]
    //     0x4229d0: stur         r2, [fp, #-0x10]
    // 0x4229d4: CheckStackOverflow
    //     0x4229d4: ldr          BARRIER, [THR, #0x38]
    //     0x4229d8: cmp          SP, BARRIER
    //     0x4229dc: b.ls         0x422a50
    //     0x4229e0: mov          r1, #2
    // 0x4229e4: r0 = call 0x61e890
    //     0x4229e4: bl           0x61e890
    // 0x4229e8: r3 = r0
    //     0x4229e8: mov          r3, r0
    //     0x4229ec: ldur         r0, [fp, #-8]
    //     0x4229f0: stur         r3, [fp, #-0x18]
    // 0x4229f4: StoreField: r3->field_f = r0
    //     0x4229f4: stur         r0, [r3, #0xf]
    //     0x4229f8: ldur         r0, [fp, #-0x10]
    // 0x4229fc: StoreField: r3->field_13 = r0
    //     0x4229fc: stur         r0, [r3, #0x13]
    // 0x422a00: r2 = r3
    //     0x422a00: mov          r2, r3
    // 0x422a04: r1 = pp[0xe64]
    //     0x422a04: add          r1, PP, #0x14, lsl #12
    //     0x422a08: ldr          r1, [r1, #0xe50]
    // 0x422a0c: r0 = call 0x61ec54
    //     0x422a0c: bl           0x61ec54
    //     0x422a10: ldur         r2, [fp, #-0x18]
    // 0x422a14: r1 = pp[0xe6c]
    //     0x422a14: add          r1, PP, #0x14, lsl #12
    //     0x422a18: ldr          r1, [r1, #0xe58]
    //     0x422a1c: stur         r0, [fp, #-8]
    // 0x422a20: r0 = call 0x61ec54
    //     0x422a20: bl           0x61ec54
    //     0x422a24: str          r0, [SP]
    //     0x422a28: ldur         r2, [fp, #-8]
    // 0x422a2c: r1 = pp[0xe74]
    //     0x422a2c: add          r1, PP, #0x14, lsl #12
    //     0x422a30: ldr          r1, [r1, #0xe60]
    // 0x422a34: r4 = pp[0xe7c]
    //     0x422a34: add          r4, PP, #0x14, lsl #12
    //     0x422a38: ldr          r4, [r4, #0xe68]
    // 0x422a3c: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x422a3c: bl           0x3ab958
    // 0x422a40: r0 = NULL
    //     0x422a40: mov          r0, NULL
    // 0x422a44: SP = fp
    //     0x422a44: mov          SP, fp
    // 0x422a48: LeaveFrame
    //     0x422a48: ldp          fp, lr, [SP], #0x10
    // 0x422a4c: ret
    //     0x422a4c: ret          
    // 0x422a50: r0 = call 0x61fa28
    //     0x422a50: bl           0x61fa28
    // 0x422a54: b 0x4229e0
    //     0x422a54: b            0x4229e0
  }

  searchFollow() {
    // ** addr: 0x4235dc, size: 0x148
    // 0x4235dc: EnterFrame
    //     0x4235dc: stp          fp, lr, [SP, #-0x10]!
    //     0x4235e0: mov          fp, SP
    // 0x4235e4: AllocStack(0x38)
    //     0x4235e4: sub          SP, SP, #0x38
    //     0x4235e8: stur         r1, [fp, #-8]
    //     0x4235ec: stur         r2, [fp, #-0x10]
    //     0x4235f0: stur         r3, [fp, #-0x18]
    //     0x4235f4: stur         r5, [fp, #-0x20]
    // 0x4235f8: CheckStackOverflow
    //     0x4235f8: ldr          BARRIER, [THR, #0x38]
    //     0x4235fc: cmp          SP, BARRIER
    //     0x423600: b.ls         0x42371c
    //     0x423604: mov          r1, #2
    // 0x423608: r0 = call 0x61e890
    //     0x423608: bl           0x61e890
    // 0x42360c: r3 = r0
    //     0x42360c: mov          r3, r0
    //     0x423610: ldur         r0, [fp, #-0x18]
    //     0x423614: stur         r3, [fp, #-0x28]
    // 0x423618: StoreField: r3->field_f = r0
    //     0x423618: stur         r0, [r3, #0xf]
    //     0x42361c: ldur         r0, [fp, #-0x20]
    // 0x423620: StoreField: r3->field_13 = r0
    //     0x423620: stur         r0, [r3, #0x13]
    //     0x423624: ldur         r0, [fp, #-8]
    // 0x423628: BARRIER = pp[0xefc]
    //     0x423628: add          BARRIER, PP, #0x14, lsl #12
    //     0x42362c: ldr          BARRIER, [BARRIER, #0xee8]
    //     0x423630: cmp          r0, r16
    // 0x423634: b.ne 0x423648
    //     0x423634: b.ne         0x423648
    // 0x423638: r0 = NULL
    //     0x423638: mov          r0, NULL
    // 0x42363c: SP = fp
    //     0x42363c: mov          SP, fp
    // 0x423640: LeaveFrame
    //     0x423640: ldp          fp, lr, [SP], #0x10
    // 0x423644: ret
    //     0x423644: ret          
    //     0x423648: ldur         r4, [fp, #-0x10]
    // 0x42364c: r1 = NULL
    //     0x42364c: mov          r1, NULL
    //     0x423650: mov          r2, #4
    // 0x423654: r0 = call 0x61f920
    //     0x423654: bl           0x61f920
    // 0x423658: r2 = r0
    //     0x423658: mov          r2, r0
    // 0x42365c: BARRIER = pp[0x2250]
    //     0x42365c: ldr          BARRIER, [PP, #0x2250]
    // 0x423660: StoreField: r2->field_f = r16
    //     0x423660: stur         r16, [r2, #0xf]
    //     0x423664: ldur         r0, [fp, #-8]
    // 0x423668: LoadField: r3 = r0->field_7
    //     0x423668: ldur         r3, [r0, #7]
    //     0x42366c: sbfiz        r0, r3, #1, #0x1f
    //     0x423670: cmp          r3, r0, asr #1
    // 0x423674: b.eq 0x423680
    //     0x423674: b.eq         0x423680
    // 0x423678: r0 = call 0x61fba8
    //     0x423678: bl           0x61fba8
    // 0x42367c: StoreField: r0->field_7 = r3
    //     0x42367c: stur         r3, [r0, #7]
    // 0x423680: StoreField: r2->field_13 = r0
    //     0x423680: stur         r0, [r2, #0x13]
    // 0x423684: BARRIER = pp[0xbf0]
    //     0x423684: ldr          BARRIER, [PP, #0xbf0]
    //     0x423688: stp          r2, BARRIER, [SP]
    // 0x42368c: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x42368c: bl           0x27c0c8
    // 0x423690: r4 = r0
    //     0x423690: mov          r4, r0
    //     0x423694: ldur         r2, [fp, #-0x10]
    //     0x423698: stur         r4, [fp, #-8]
    //     0x42369c: tbnz         r2, #0x3f, 0x4236c8
    //     0x4236a0: sbfiz        r0, r2, #1, #0x1f
    //     0x4236a4: cmp          r2, r0, asr #1
    // 0x4236a8: b.eq 0x4236b4
    //     0x4236a8: b.eq         0x4236b4
    // 0x4236ac: r0 = call 0x61fba8
    //     0x4236ac: bl           0x61fba8
    // 0x4236b0: StoreField: r0->field_7 = r2
    //     0x4236b0: stur         r2, [r0, #7]
    // 0x4236b4: r1 = r4
    //     0x4236b4: mov          r1, r4
    // 0x4236b8: r3 = r0
    //     0x4236b8: mov          r3, r0
    // 0x4236bc: r2 = pp[0x377]
    //     0x4236bc: add          r2, PP, #0xf, lsl #12
    //     0x4236c0: ldr          r2, [r2, #0x368]
    // 0x4236c4: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x4236c4: bl           0x6164d4
    //     0x4236c8: ldur         r2, [fp, #-0x28]
    // 0x4236cc: r1 = pp[0xf04]
    //     0x4236cc: add          r1, PP, #0x14, lsl #12
    //     0x4236d0: ldr          r1, [r1, #0xef0]
    // 0x4236d4: r0 = call 0x61ec54
    //     0x4236d4: bl           0x61ec54
    //     0x4236d8: ldur         r2, [fp, #-0x28]
    // 0x4236dc: r1 = pp[0xf0c]
    //     0x4236dc: add          r1, PP, #0x14, lsl #12
    //     0x4236e0: ldr          r1, [r1, #0xef8]
    //     0x4236e4: stur         r0, [fp, #-0x18]
    // 0x4236e8: r0 = call 0x61ec54
    //     0x4236e8: bl           0x61ec54
    //     0x4236ec: ldur         BARRIER, [fp, #-8]
    //     0x4236f0: stp          r0, BARRIER, [SP]
    //     0x4236f4: ldur         r2, [fp, #-0x18]
    // 0x4236f8: r1 = pp[0xf14]
    //     0x4236f8: add          r1, PP, #0x14, lsl #12
    //     0x4236fc: ldr          r1, [r1, #0xf00]
    // 0x423700: r4 = pp[0x40f]
    //     0x423700: add          r4, PP, #0xf, lsl #12
    //     0x423704: ldr          r4, [r4, #0x400]
    // 0x423708: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x423708: bl           0x3ab958
    // 0x42370c: r0 = NULL
    //     0x42370c: mov          r0, NULL
    // 0x423710: SP = fp
    //     0x423710: mov          SP, fp
    // 0x423714: LeaveFrame
    //     0x423714: ldp          fp, lr, [SP], #0x10
    // 0x423718: ret
    //     0x423718: ret          
    // 0x42371c: r0 = call 0x61fa28
    //     0x42371c: bl           0x61fa28
    // 0x423720: b 0x423604
    //     0x423720: b            0x423604
  }

  searchRoomList() {
    // ** addr: 0x427f68, size: 0x128
    // 0x427f68: EnterFrame
    //     0x427f68: stp          fp, lr, [SP, #-0x10]!
    //     0x427f6c: mov          fp, SP
    // 0x427f70: AllocStack(0x38)
    //     0x427f70: sub          SP, SP, #0x38
    //     0x427f74: stur         r1, [fp, #-8]
    //     0x427f78: stur         r2, [fp, #-0x10]
    //     0x427f7c: stur         r3, [fp, #-0x18]
    //     0x427f80: stur         r5, [fp, #-0x20]
    // 0x427f84: CheckStackOverflow
    //     0x427f84: ldr          BARRIER, [THR, #0x38]
    //     0x427f88: cmp          SP, BARRIER
    //     0x427f8c: b.ls         0x428088
    //     0x427f90: mov          r1, #2
    // 0x427f94: r0 = call 0x61e890
    //     0x427f94: bl           0x61e890
    // 0x427f98: r3 = r0
    //     0x427f98: mov          r3, r0
    //     0x427f9c: ldur         r0, [fp, #-0x18]
    //     0x427fa0: stur         r3, [fp, #-0x28]
    // 0x427fa4: StoreField: r3->field_f = r0
    //     0x427fa4: stur         r0, [r3, #0xf]
    //     0x427fa8: ldur         r0, [fp, #-0x20]
    // 0x427fac: StoreField: r3->field_13 = r0
    //     0x427fac: stur         r0, [r3, #0x13]
    //     0x427fb0: ldur         r0, [fp, #-8]
    // 0x427fb4: LoadField: r1 = r0->field_7
    //     0x427fb4: ldur         r1, [r0, #7]
    //     0x427fb8: cbnz         r1, 0x427fcc
    // 0x427fbc: r0 = NULL
    //     0x427fbc: mov          r0, NULL
    // 0x427fc0: SP = fp
    //     0x427fc0: mov          SP, fp
    // 0x427fc4: LeaveFrame
    //     0x427fc4: ldp          fp, lr, [SP], #0x10
    // 0x427fc8: ret
    //     0x427fc8: ret          
    //     0x427fcc: ldur         r4, [fp, #-0x10]
    // 0x427fd0: r1 = NULL
    //     0x427fd0: mov          r1, NULL
    //     0x427fd4: mov          r2, #4
    // 0x427fd8: r0 = call 0x61f920
    //     0x427fd8: bl           0x61f920
    // 0x427fdc: BARRIER = pp[0xd0]
    //     0x427fdc: add          BARRIER, PP, #0x10, lsl #12
    //     0x427fe0: ldr          BARRIER, [BARRIER, #0xc0]
    // 0x427fe4: StoreField: r0->field_f = r16
    //     0x427fe4: stur         r16, [r0, #0xf]
    //     0x427fe8: ldur         r1, [fp, #-8]
    // 0x427fec: StoreField: r0->field_13 = r1
    //     0x427fec: stur         r1, [r0, #0x13]
    // 0x427ff0: BARRIER = pp[0xbf0]
    //     0x427ff0: ldr          BARRIER, [PP, #0xbf0]
    //     0x427ff4: stp          r0, BARRIER, [SP]
    // 0x427ff8: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x427ff8: bl           0x27c0c8
    // 0x427ffc: r4 = r0
    //     0x427ffc: mov          r4, r0
    //     0x428000: ldur         r2, [fp, #-0x10]
    //     0x428004: stur         r4, [fp, #-8]
    //     0x428008: tbnz         r2, #0x3f, 0x428034
    //     0x42800c: sbfiz        r0, r2, #1, #0x1f
    //     0x428010: cmp          r2, r0, asr #1
    // 0x428014: b.eq 0x428020
    //     0x428014: b.eq         0x428020
    // 0x428018: r0 = call 0x61fba8
    //     0x428018: bl           0x61fba8
    // 0x42801c: StoreField: r0->field_7 = r2
    //     0x42801c: stur         r2, [r0, #7]
    // 0x428020: r1 = r4
    //     0x428020: mov          r1, r4
    // 0x428024: r3 = r0
    //     0x428024: mov          r3, r0
    // 0x428028: r2 = pp[0x377]
    //     0x428028: add          r2, PP, #0xf, lsl #12
    //     0x42802c: ldr          r2, [r2, #0x368]
    // 0x428030: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x428030: bl           0x6164d4
    //     0x428034: ldur         r2, [fp, #-0x28]
    // 0x428038: r1 = pp[0x99]
    //     0x428038: add          r1, PP, #0x11, lsl #12
    //     0x42803c: ldr          r1, [r1, #0x88]
    // 0x428040: r0 = call 0x61ec54
    //     0x428040: bl           0x61ec54
    //     0x428044: ldur         r2, [fp, #-0x28]
    // 0x428048: r1 = pp[0xa1]
    //     0x428048: add          r1, PP, #0x11, lsl #12
    //     0x42804c: ldr          r1, [r1, #0x90]
    //     0x428050: stur         r0, [fp, #-0x18]
    // 0x428054: r0 = call 0x61ec54
    //     0x428054: bl           0x61ec54
    //     0x428058: ldur         BARRIER, [fp, #-8]
    //     0x42805c: stp          r0, BARRIER, [SP]
    //     0x428060: ldur         r2, [fp, #-0x18]
    // 0x428064: r1 = pp[0xa9]
    //     0x428064: add          r1, PP, #0x11, lsl #12
    //     0x428068: ldr          r1, [r1, #0x98]
    // 0x42806c: r4 = pp[0x40f]
    //     0x42806c: add          r4, PP, #0xf, lsl #12
    //     0x428070: ldr          r4, [r4, #0x400]
    // 0x428074: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x428074: bl           0x3ab958
    // 0x428078: r0 = NULL
    //     0x428078: mov          r0, NULL
    // 0x42807c: SP = fp
    //     0x42807c: mov          SP, fp
    // 0x428080: LeaveFrame
    //     0x428080: ldp          fp, lr, [SP], #0x10
    // 0x428084: ret
    //     0x428084: ret          
    // 0x428088: r0 = call 0x61fa28
    //     0x428088: bl           0x61fa28
    // 0x42808c: b 0x427f90
    //     0x42808c: b            0x427f90
  }

  getPinchFaceBuyRecordList() {
    // ** addr: 0x42e8f4, size: 0x104
    // 0x42e8f4: EnterFrame
    //     0x42e8f4: stp          fp, lr, [SP, #-0x10]!
    //     0x42e8f8: mov          fp, SP
    // 0x42e8fc: AllocStack(0x30)
    //     0x42e8fc: sub          SP, SP, #0x30
    //     0x42e900: stur         r1, [fp, #-8]
    //     0x42e904: stur         r2, [fp, #-0x10]
    //     0x42e908: stur         r3, [fp, #-0x18]
    // 0x42e90c: CheckStackOverflow
    //     0x42e90c: ldr          BARRIER, [THR, #0x38]
    //     0x42e910: cmp          SP, BARRIER
    //     0x42e914: b.ls         0x42e9f0
    //     0x42e918: mov          r1, #2
    // 0x42e91c: r0 = call 0x61e890
    //     0x42e91c: bl           0x61e890
    // 0x42e920: r3 = r0
    //     0x42e920: mov          r3, r0
    //     0x42e924: ldur         r0, [fp, #-0x10]
    //     0x42e928: stur         r3, [fp, #-0x20]
    // 0x42e92c: StoreField: r3->field_f = r0
    //     0x42e92c: stur         r0, [r3, #0xf]
    //     0x42e930: ldur         r0, [fp, #-0x18]
    // 0x42e934: StoreField: r3->field_13 = r0
    //     0x42e934: stur         r0, [r3, #0x13]
    // 0x42e938: r1 = NULL
    //     0x42e938: mov          r1, NULL
    //     0x42e93c: mov          r2, #4
    // 0x42e940: r0 = call 0x61f920
    //     0x42e940: bl           0x61f920
    // 0x42e944: BARRIER = pp[0xb37]
    //     0x42e944: add          BARRIER, PP, #0xf, lsl #12
    //     0x42e948: ldr          BARRIER, [BARRIER, #0xb28]
    // 0x42e94c: StoreField: r0->field_f = r16
    //     0x42e94c: stur         r16, [r0, #0xf]
    //     0x42e950: mov          BARRIER, #0x28
    // 0x42e954: StoreField: r0->field_13 = r16
    //     0x42e954: stur         r16, [r0, #0x13]
    // 0x42e958: BARRIER = pp[0xbf0]
    //     0x42e958: ldr          BARRIER, [PP, #0xbf0]
    //     0x42e95c: stp          r0, BARRIER, [SP]
    // 0x42e960: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x42e960: bl           0x27c0c8
    // 0x42e964: r4 = r0
    //     0x42e964: mov          r4, r0
    //     0x42e968: ldur         r2, [fp, #-8]
    //     0x42e96c: stur         r4, [fp, #-0x10]
    //     0x42e970: tbnz         r2, #0x3f, 0x42e99c
    //     0x42e974: sbfiz        r0, r2, #1, #0x1f
    //     0x42e978: cmp          r2, r0, asr #1
    // 0x42e97c: b.eq 0x42e988
    //     0x42e97c: b.eq         0x42e988
    // 0x42e980: r0 = call 0x61fba8
    //     0x42e980: bl           0x61fba8
    // 0x42e984: StoreField: r0->field_7 = r2
    //     0x42e984: stur         r2, [r0, #7]
    // 0x42e988: r1 = r4
    //     0x42e988: mov          r1, r4
    // 0x42e98c: r3 = r0
    //     0x42e98c: mov          r3, r0
    // 0x42e990: r2 = pp[0x377]
    //     0x42e990: add          r2, PP, #0xf, lsl #12
    //     0x42e994: ldr          r2, [r2, #0x368]
    // 0x42e998: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x42e998: bl           0x6164d4
    //     0x42e99c: ldur         r2, [fp, #-0x20]
    // 0x42e9a0: r1 = pp[0x8bc]
    //     0x42e9a0: add          r1, PP, #0x14, lsl #12
    //     0x42e9a4: ldr          r1, [r1, #0x8a8]
    // 0x42e9a8: r0 = call 0x61ec54
    //     0x42e9a8: bl           0x61ec54
    //     0x42e9ac: ldur         r2, [fp, #-0x20]
    // 0x42e9b0: r1 = pp[0x8c4]
    //     0x42e9b0: add          r1, PP, #0x14, lsl #12
    //     0x42e9b4: ldr          r1, [r1, #0x8b0]
    //     0x42e9b8: stur         r0, [fp, #-0x18]
    // 0x42e9bc: r0 = call 0x61ec54
    //     0x42e9bc: bl           0x61ec54
    //     0x42e9c0: ldur         BARRIER, [fp, #-0x10]
    //     0x42e9c4: stp          r0, BARRIER, [SP]
    //     0x42e9c8: ldur         r2, [fp, #-0x18]
    // 0x42e9cc: r1 = pp[0x8cc]
    //     0x42e9cc: add          r1, PP, #0x14, lsl #12
    //     0x42e9d0: ldr          r1, [r1, #0x8b8]
    // 0x42e9d4: r4 = pp[0x40f]
    //     0x42e9d4: add          r4, PP, #0xf, lsl #12
    //     0x42e9d8: ldr          r4, [r4, #0x400]
    // 0x42e9dc: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x42e9dc: bl           0x3ab958
    // 0x42e9e0: r0 = NULL
    //     0x42e9e0: mov          r0, NULL
    // 0x42e9e4: SP = fp
    //     0x42e9e4: mov          SP, fp
    // 0x42e9e8: LeaveFrame
    //     0x42e9e8: ldp          fp, lr, [SP], #0x10
    // 0x42e9ec: ret
    //     0x42e9ec: ret          
    // 0x42e9f0: r0 = call 0x61fa28
    //     0x42e9f0: bl           0x61fa28
    // 0x42e9f4: b 0x42e918
    //     0x42e9f4: b            0x42e918
  }

  wearAvatarItem() {
    // ** addr: 0x430cb8, size: 0xd0
    // 0x430cb8: EnterFrame
    //     0x430cb8: stp          fp, lr, [SP, #-0x10]!
    //     0x430cbc: mov          fp, SP
    // 0x430cc0: AllocStack(0x30)
    //     0x430cc0: sub          SP, SP, #0x30
    //     0x430cc4: stur         r1, [fp, #-8]
    //     0x430cc8: stur         r2, [fp, #-0x10]
    //     0x430ccc: stur         r3, [fp, #-0x18]
    // 0x430cd0: CheckStackOverflow
    //     0x430cd0: ldr          BARRIER, [THR, #0x38]
    //     0x430cd4: cmp          SP, BARRIER
    //     0x430cd8: b.ls         0x430d80
    //     0x430cdc: mov          r1, #2
    // 0x430ce0: r0 = call 0x61e890
    //     0x430ce0: bl           0x61e890
    // 0x430ce4: r3 = r0
    //     0x430ce4: mov          r3, r0
    //     0x430ce8: ldur         r0, [fp, #-0x10]
    //     0x430cec: stur         r3, [fp, #-0x20]
    // 0x430cf0: StoreField: r3->field_f = r0
    //     0x430cf0: stur         r0, [r3, #0xf]
    //     0x430cf4: ldur         r0, [fp, #-0x18]
    // 0x430cf8: StoreField: r3->field_13 = r0
    //     0x430cf8: stur         r0, [r3, #0x13]
    // 0x430cfc: r1 = NULL
    //     0x430cfc: mov          r1, NULL
    //     0x430d00: mov          r2, #4
    // 0x430d04: r0 = call 0x61f920
    //     0x430d04: bl           0x61f920
    // 0x430d08: BARRIER = pp[0xa8f]
    //     0x430d08: add          BARRIER, PP, #0xf, lsl #12
    //     0x430d0c: ldr          BARRIER, [BARRIER, #0xa80]
    // 0x430d10: StoreField: r0->field_f = r16
    //     0x430d10: stur         r16, [r0, #0xf]
    //     0x430d14: ldur         r1, [fp, #-8]
    // 0x430d18: StoreField: r0->field_13 = r1
    //     0x430d18: stur         r1, [r0, #0x13]
    // 0x430d1c: BARRIER = pp[0xbf0]
    //     0x430d1c: ldr          BARRIER, [PP, #0xbf0]
    //     0x430d20: stp          r0, BARRIER, [SP]
    // 0x430d24: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x430d24: bl           0x27c0c8
    //     0x430d28: ldur         r2, [fp, #-0x20]
    // 0x430d2c: r1 = pp[0x7a4]
    //     0x430d2c: add          r1, PP, #0x14, lsl #12
    //     0x430d30: ldr          r1, [r1, #0x790]
    //     0x430d34: stur         r0, [fp, #-8]
    // 0x430d38: r0 = call 0x61ec54
    //     0x430d38: bl           0x61ec54
    //     0x430d3c: ldur         r2, [fp, #-0x20]
    // 0x430d40: r1 = pp[0x7ac]
    //     0x430d40: add          r1, PP, #0x14, lsl #12
    //     0x430d44: ldr          r1, [r1, #0x798]
    //     0x430d48: stur         r0, [fp, #-0x10]
    // 0x430d4c: r0 = call 0x61ec54
    //     0x430d4c: bl           0x61ec54
    //     0x430d50: str          r0, [SP]
    //     0x430d54: ldur         r2, [fp, #-8]
    //     0x430d58: ldur         r3, [fp, #-0x10]
    // 0x430d5c: r1 = pp[0x7b4]
    //     0x430d5c: add          r1, PP, #0x14, lsl #12
    //     0x430d60: ldr          r1, [r1, #0x7a0]
    // 0x430d64: r4 = pp[0xbd0]
    //     0x430d64: add          r4, PP, #0x10, lsl #12
    //     0x430d68: ldr          r4, [r4, #0xbc0]
    // 0x430d6c: r0 = soul_flutter_international$common$plugins$http_Http::postSimple()
    //     0x430d6c: bl           0x41e430
    // 0x430d70: r0 = NULL
    //     0x430d70: mov          r0, NULL
    // 0x430d74: SP = fp
    //     0x430d74: mov          SP, fp
    // 0x430d78: LeaveFrame
    //     0x430d78: ldp          fp, lr, [SP], #0x10
    // 0x430d7c: ret
    //     0x430d7c: ret          
    // 0x430d80: r0 = call 0x61fa28
    //     0x430d80: bl           0x61fa28
    // 0x430d84: b 0x430cdc
    //     0x430d84: b            0x430cdc
  }

  _anon_closure() {
    // ** addr: 0x430d88, size: 0x54
    // 0x430d88: EnterFrame
    //     0x430d88: stp          fp, lr, [SP, #-0x10]!
    //     0x430d8c: mov          fp, SP
    // 0x430d90: AllocStack(0x10)
    //     0x430d90: sub          SP, SP, #0x10
    //     0x430d94: ldr          r0, [fp, #0x20]
    // 0x430d98: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x430d98: ldur         r1, [r0, #0x17]
    //     0x430d9c: add          r1, r1, HEAP, lsl #32
    // 0x430da0: CheckStackOverflow
    //     0x430da0: ldr          BARRIER, [THR, #0x38]
    //     0x430da4: cmp          SP, BARRIER
    //     0x430da8: b.ls         0x430dd4
    // 0x430dac: LoadField: r0 = r1->field_13
    //     0x430dac: ldur         r0, [r1, #0x13]
    //     0x430db0: add          r0, r0, HEAP, lsl #32
    //     0x430db4: ldr          BARRIER, [fp, #0x18]
    //     0x430db8: stp          BARRIER, r0, [SP]
    // 0x430dbc: r4 = pp[0x140]
    //     0x430dbc: ldr          r4, [PP, #0x140]
    // 0x430dc0: LoadField: r2 = r0->field_1f
    //     0x430dc0: ldur         r2, [r0, #0x1f]
    // 0x430dc4: r0 = [R]()
    //     0x430dc4: blr          r2
    // 0x430dc8: SP = fp
    //     0x430dc8: mov          SP, fp
    // 0x430dcc: LeaveFrame
    //     0x430dcc: ldp          fp, lr, [SP], #0x10
    // 0x430dd0: ret
    //     0x430dd0: ret          
    // 0x430dd4: r0 = call 0x61fa28
    //     0x430dd4: bl           0x61fa28
    // 0x430dd8: b 0x430dac
    //     0x430dd8: b            0x430dac
  }

  _anon_closure() {
    // ** addr: 0x430ddc, size: 0x50
    // 0x430ddc: EnterFrame
    //     0x430ddc: stp          fp, lr, [SP, #-0x10]!
    //     0x430de0: mov          fp, SP
    // 0x430de4: AllocStack(8)
    //     0x430de4: sub          SP, SP, #8
    //     0x430de8: ldr          r0, [fp, #0x18]
    // 0x430dec: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x430dec: ldur         r1, [r0, #0x17]
    //     0x430df0: add          r1, r1, HEAP, lsl #32
    // 0x430df4: CheckStackOverflow
    //     0x430df4: ldr          BARRIER, [THR, #0x38]
    //     0x430df8: cmp          SP, BARRIER
    //     0x430dfc: b.ls         0x430e24
    // 0x430e00: LoadField: r0 = r1->field_f
    //     0x430e00: ldur         r0, [r1, #0xf]
    //     0x430e04: add          r0, r0, HEAP, lsl #32
    //     0x430e08: str          r0, [SP]
    // 0x430e0c: r4 = pp[0x3a8]
    //     0x430e0c: ldr          r4, [PP, #0x3a8]
    // 0x430e10: LoadField: r2 = r0->field_1f
    //     0x430e10: ldur         r2, [r0, #0x1f]
    // 0x430e14: r0 = [R]()
    //     0x430e14: blr          r2
    // 0x430e18: SP = fp
    //     0x430e18: mov          SP, fp
    // 0x430e1c: LeaveFrame
    //     0x430e1c: ldp          fp, lr, [SP], #0x10
    // 0x430e20: ret
    //     0x430e20: ret          
    // 0x430e24: r0 = call 0x61fa28
    //     0x430e24: bl           0x61fa28
    // 0x430e28: b 0x430e00
    //     0x430e28: b            0x430e00
  }

  getPinchFaceReceiveRecordList() {
    // ** addr: 0x431b74, size: 0x104
    // 0x431b74: EnterFrame
    //     0x431b74: stp          fp, lr, [SP, #-0x10]!
    //     0x431b78: mov          fp, SP
    // 0x431b7c: AllocStack(0x30)
    //     0x431b7c: sub          SP, SP, #0x30
    //     0x431b80: stur         r1, [fp, #-8]
    //     0x431b84: stur         r2, [fp, #-0x10]
    //     0x431b88: stur         r3, [fp, #-0x18]
    // 0x431b8c: CheckStackOverflow
    //     0x431b8c: ldr          BARRIER, [THR, #0x38]
    //     0x431b90: cmp          SP, BARRIER
    //     0x431b94: b.ls         0x431c70
    //     0x431b98: mov          r1, #2
    // 0x431b9c: r0 = call 0x61e890
    //     0x431b9c: bl           0x61e890
    // 0x431ba0: r3 = r0
    //     0x431ba0: mov          r3, r0
    //     0x431ba4: ldur         r0, [fp, #-0x10]
    //     0x431ba8: stur         r3, [fp, #-0x20]
    // 0x431bac: StoreField: r3->field_f = r0
    //     0x431bac: stur         r0, [r3, #0xf]
    //     0x431bb0: ldur         r0, [fp, #-0x18]
    // 0x431bb4: StoreField: r3->field_13 = r0
    //     0x431bb4: stur         r0, [r3, #0x13]
    // 0x431bb8: r1 = NULL
    //     0x431bb8: mov          r1, NULL
    //     0x431bbc: mov          r2, #4
    // 0x431bc0: r0 = call 0x61f920
    //     0x431bc0: bl           0x61f920
    // 0x431bc4: BARRIER = pp[0xb37]
    //     0x431bc4: add          BARRIER, PP, #0xf, lsl #12
    //     0x431bc8: ldr          BARRIER, [BARRIER, #0xb28]
    // 0x431bcc: StoreField: r0->field_f = r16
    //     0x431bcc: stur         r16, [r0, #0xf]
    //     0x431bd0: mov          BARRIER, #0x28
    // 0x431bd4: StoreField: r0->field_13 = r16
    //     0x431bd4: stur         r16, [r0, #0x13]
    // 0x431bd8: BARRIER = pp[0xbf0]
    //     0x431bd8: ldr          BARRIER, [PP, #0xbf0]
    //     0x431bdc: stp          r0, BARRIER, [SP]
    // 0x431be0: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x431be0: bl           0x27c0c8
    // 0x431be4: r4 = r0
    //     0x431be4: mov          r4, r0
    //     0x431be8: ldur         r2, [fp, #-8]
    //     0x431bec: stur         r4, [fp, #-0x10]
    //     0x431bf0: tbnz         r2, #0x3f, 0x431c1c
    //     0x431bf4: sbfiz        r0, r2, #1, #0x1f
    //     0x431bf8: cmp          r2, r0, asr #1
    // 0x431bfc: b.eq 0x431c08
    //     0x431bfc: b.eq         0x431c08
    // 0x431c00: r0 = call 0x61fba8
    //     0x431c00: bl           0x61fba8
    // 0x431c04: StoreField: r0->field_7 = r2
    //     0x431c04: stur         r2, [r0, #7]
    // 0x431c08: r1 = r4
    //     0x431c08: mov          r1, r4
    // 0x431c0c: r3 = r0
    //     0x431c0c: mov          r3, r0
    // 0x431c10: r2 = pp[0x377]
    //     0x431c10: add          r2, PP, #0xf, lsl #12
    //     0x431c14: ldr          r2, [r2, #0x368]
    // 0x431c18: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x431c18: bl           0x6164d4
    //     0x431c1c: ldur         r2, [fp, #-0x20]
    // 0x431c20: r1 = pp[0x704]
    //     0x431c20: add          r1, PP, #0x14, lsl #12
    //     0x431c24: ldr          r1, [r1, #0x6f0]
    // 0x431c28: r0 = call 0x61ec54
    //     0x431c28: bl           0x61ec54
    //     0x431c2c: ldur         r2, [fp, #-0x20]
    // 0x431c30: r1 = pp[0x70c]
    //     0x431c30: add          r1, PP, #0x14, lsl #12
    //     0x431c34: ldr          r1, [r1, #0x6f8]
    //     0x431c38: stur         r0, [fp, #-0x18]
    // 0x431c3c: r0 = call 0x61ec54
    //     0x431c3c: bl           0x61ec54
    //     0x431c40: ldur         BARRIER, [fp, #-0x10]
    //     0x431c44: stp          r0, BARRIER, [SP]
    //     0x431c48: ldur         r2, [fp, #-0x18]
    // 0x431c4c: r1 = pp[0x714]
    //     0x431c4c: add          r1, PP, #0x14, lsl #12
    //     0x431c50: ldr          r1, [r1, #0x700]
    // 0x431c54: r4 = pp[0x40f]
    //     0x431c54: add          r4, PP, #0xf, lsl #12
    //     0x431c58: ldr          r4, [r4, #0x400]
    // 0x431c5c: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x431c5c: bl           0x3ab958
    // 0x431c60: r0 = NULL
    //     0x431c60: mov          r0, NULL
    // 0x431c64: SP = fp
    //     0x431c64: mov          SP, fp
    // 0x431c68: LeaveFrame
    //     0x431c68: ldp          fp, lr, [SP], #0x10
    // 0x431c6c: ret
    //     0x431c6c: ret          
    // 0x431c70: r0 = call 0x61fa28
    //     0x431c70: bl           0x61fa28
    // 0x431c74: b 0x431b98
    //     0x431c74: b            0x431b98
  }

  getPinchFaceSendRecordList() {
    // ** addr: 0x432be4, size: 0x104
    // 0x432be4: EnterFrame
    //     0x432be4: stp          fp, lr, [SP, #-0x10]!
    //     0x432be8: mov          fp, SP
    // 0x432bec: AllocStack(0x30)
    //     0x432bec: sub          SP, SP, #0x30
    //     0x432bf0: stur         r1, [fp, #-8]
    //     0x432bf4: stur         r2, [fp, #-0x10]
    //     0x432bf8: stur         r3, [fp, #-0x18]
    // 0x432bfc: CheckStackOverflow
    //     0x432bfc: ldr          BARRIER, [THR, #0x38]
    //     0x432c00: cmp          SP, BARRIER
    //     0x432c04: b.ls         0x432ce0
    //     0x432c08: mov          r1, #2
    // 0x432c0c: r0 = call 0x61e890
    //     0x432c0c: bl           0x61e890
    // 0x432c10: r3 = r0
    //     0x432c10: mov          r3, r0
    //     0x432c14: ldur         r0, [fp, #-0x10]
    //     0x432c18: stur         r3, [fp, #-0x20]
    // 0x432c1c: StoreField: r3->field_f = r0
    //     0x432c1c: stur         r0, [r3, #0xf]
    //     0x432c20: ldur         r0, [fp, #-0x18]
    // 0x432c24: StoreField: r3->field_13 = r0
    //     0x432c24: stur         r0, [r3, #0x13]
    // 0x432c28: r1 = NULL
    //     0x432c28: mov          r1, NULL
    //     0x432c2c: mov          r2, #4
    // 0x432c30: r0 = call 0x61f920
    //     0x432c30: bl           0x61f920
    // 0x432c34: BARRIER = pp[0xb37]
    //     0x432c34: add          BARRIER, PP, #0xf, lsl #12
    //     0x432c38: ldr          BARRIER, [BARRIER, #0xb28]
    // 0x432c3c: StoreField: r0->field_f = r16
    //     0x432c3c: stur         r16, [r0, #0xf]
    //     0x432c40: mov          BARRIER, #0x28
    // 0x432c44: StoreField: r0->field_13 = r16
    //     0x432c44: stur         r16, [r0, #0x13]
    // 0x432c48: BARRIER = pp[0xbf0]
    //     0x432c48: ldr          BARRIER, [PP, #0xbf0]
    //     0x432c4c: stp          r0, BARRIER, [SP]
    // 0x432c50: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x432c50: bl           0x27c0c8
    // 0x432c54: r4 = r0
    //     0x432c54: mov          r4, r0
    //     0x432c58: ldur         r2, [fp, #-8]
    //     0x432c5c: stur         r4, [fp, #-0x10]
    //     0x432c60: tbnz         r2, #0x3f, 0x432c8c
    //     0x432c64: sbfiz        r0, r2, #1, #0x1f
    //     0x432c68: cmp          r2, r0, asr #1
    // 0x432c6c: b.eq 0x432c78
    //     0x432c6c: b.eq         0x432c78
    // 0x432c70: r0 = call 0x61fba8
    //     0x432c70: bl           0x61fba8
    // 0x432c74: StoreField: r0->field_7 = r2
    //     0x432c74: stur         r2, [r0, #7]
    // 0x432c78: r1 = r4
    //     0x432c78: mov          r1, r4
    // 0x432c7c: r3 = r0
    //     0x432c7c: mov          r3, r0
    // 0x432c80: r2 = pp[0x377]
    //     0x432c80: add          r2, PP, #0xf, lsl #12
    //     0x432c84: ldr          r2, [r2, #0x368]
    // 0x432c88: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x432c88: bl           0x6164d4
    //     0x432c8c: ldur         r2, [fp, #-0x20]
    // 0x432c90: r1 = pp[0x65c]
    //     0x432c90: add          r1, PP, #0x14, lsl #12
    //     0x432c94: ldr          r1, [r1, #0x648]
    // 0x432c98: r0 = call 0x61ec54
    //     0x432c98: bl           0x61ec54
    //     0x432c9c: ldur         r2, [fp, #-0x20]
    // 0x432ca0: r1 = pp[0x664]
    //     0x432ca0: add          r1, PP, #0x14, lsl #12
    //     0x432ca4: ldr          r1, [r1, #0x650]
    //     0x432ca8: stur         r0, [fp, #-0x18]
    // 0x432cac: r0 = call 0x61ec54
    //     0x432cac: bl           0x61ec54
    //     0x432cb0: ldur         BARRIER, [fp, #-0x10]
    //     0x432cb4: stp          r0, BARRIER, [SP]
    //     0x432cb8: ldur         r2, [fp, #-0x18]
    // 0x432cbc: r1 = pp[0x66c]
    //     0x432cbc: add          r1, PP, #0x14, lsl #12
    //     0x432cc0: ldr          r1, [r1, #0x658]
    // 0x432cc4: r4 = pp[0x40f]
    //     0x432cc4: add          r4, PP, #0xf, lsl #12
    //     0x432cc8: ldr          r4, [r4, #0x400]
    // 0x432ccc: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x432ccc: bl           0x3ab958
    // 0x432cd0: r0 = NULL
    //     0x432cd0: mov          r0, NULL
    // 0x432cd4: SP = fp
    //     0x432cd4: mov          SP, fp
    // 0x432cd8: LeaveFrame
    //     0x432cd8: ldp          fp, lr, [SP], #0x10
    // 0x432cdc: ret
    //     0x432cdc: ret          
    // 0x432ce0: r0 = call 0x61fa28
    //     0x432ce0: bl           0x61fa28
    // 0x432ce4: b 0x432c08
    //     0x432ce4: b            0x432c08
  }

  updateUserConfig() {
    // ** addr: 0x4333e8, size: 0xa8
    // 0x4333e8: EnterFrame
    //     0x4333e8: stp          fp, lr, [SP, #-0x10]!
    //     0x4333ec: mov          fp, SP
    // 0x4333f0: AllocStack(0x28)
    //     0x4333f0: sub          SP, SP, #0x28
    //     0x4333f4: stur         r1, [fp, #-8]
    //     0x4333f8: stur         r2, [fp, #-0x10]
    // 0x4333fc: CheckStackOverflow
    //     0x4333fc: ldr          BARRIER, [THR, #0x38]
    //     0x433400: cmp          SP, BARRIER
    //     0x433404: b.ls         0x433488
    //     0x433408: mov          r1, #1
    // 0x43340c: r0 = call 0x61e890
    //     0x43340c: bl           0x61e890
    // 0x433410: r3 = r0
    //     0x433410: mov          r3, r0
    //     0x433414: ldur         r0, [fp, #-0x10]
    //     0x433418: stur         r3, [fp, #-0x18]
    // 0x43341c: StoreField: r3->field_f = r0
    //     0x43341c: stur         r0, [r3, #0xf]
    // 0x433420: r1 = NULL
    //     0x433420: mov          r1, NULL
    //     0x433424: mov          r2, #4
    // 0x433428: r0 = call 0x61f920
    //     0x433428: bl           0x61f920
    // 0x43342c: BARRIER = pp[0x76b]
    //     0x43342c: add          BARRIER, PP, #0xb, lsl #12
    //     0x433430: ldr          BARRIER, [BARRIER, #0x760]
    // 0x433434: StoreField: r0->field_f = r16
    //     0x433434: stur         r16, [r0, #0xf]
    //     0x433438: ldur         r1, [fp, #-8]
    // 0x43343c: StoreField: r0->field_13 = r1
    //     0x43343c: stur         r1, [r0, #0x13]
    // 0x433440: BARRIER = pp[0xbf0]
    //     0x433440: ldr          BARRIER, [PP, #0xbf0]
    //     0x433444: stp          r0, BARRIER, [SP]
    // 0x433448: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x433448: bl           0x27c0c8
    //     0x43344c: ldur         r2, [fp, #-0x18]
    // 0x433450: r1 = pp[0x35c]
    //     0x433450: add          r1, PP, #0x14, lsl #12
    //     0x433454: ldr          r1, [r1, #0x348]
    //     0x433458: stur         r0, [fp, #-8]
    // 0x43345c: r0 = call 0x61ec54
    //     0x43345c: bl           0x61ec54
    //     0x433460: ldur         r2, [fp, #-8]
    // 0x433464: r3 = r0
    //     0x433464: mov          r3, r0
    // 0x433468: r1 = pp[0x364]
    //     0x433468: add          r1, PP, #0x14, lsl #12
    //     0x43346c: ldr          r1, [r1, #0x350]
    // 0x433470: r4 = pp[0x2e0]
    //     0x433470: ldr          r4, [PP, #0x2e0]
    // 0x433474: r0 = soul_flutter_international$common$plugins$http_Http::postSimple()
    //     0x433474: bl           0x41e430
    // 0x433478: r0 = NULL
    //     0x433478: mov          r0, NULL
    // 0x43347c: SP = fp
    //     0x43347c: mov          SP, fp
    // 0x433480: LeaveFrame
    //     0x433480: ldp          fp, lr, [SP], #0x10
    // 0x433484: ret
    //     0x433484: ret          
    // 0x433488: r0 = call 0x61fa28
    //     0x433488: bl           0x61fa28
    // 0x43348c: b 0x433408
    //     0x43348c: b            0x433408
  }

  getGameFruitDialogList() {
    // ** addr: 0x435e54, size: 0x104
    // 0x435e54: EnterFrame
    //     0x435e54: stp          fp, lr, [SP, #-0x10]!
    //     0x435e58: mov          fp, SP
    // 0x435e5c: AllocStack(0x30)
    //     0x435e5c: sub          SP, SP, #0x30
    //     0x435e60: stur         r1, [fp, #-8]
    //     0x435e64: stur         r2, [fp, #-0x10]
    //     0x435e68: stur         r3, [fp, #-0x18]
    // 0x435e6c: CheckStackOverflow
    //     0x435e6c: ldr          BARRIER, [THR, #0x38]
    //     0x435e70: cmp          SP, BARRIER
    //     0x435e74: b.ls         0x435f50
    //     0x435e78: mov          r1, #2
    // 0x435e7c: r0 = call 0x61e890
    //     0x435e7c: bl           0x61e890
    // 0x435e80: r3 = r0
    //     0x435e80: mov          r3, r0
    //     0x435e84: ldur         r0, [fp, #-0x10]
    //     0x435e88: stur         r3, [fp, #-0x20]
    // 0x435e8c: StoreField: r3->field_f = r0
    //     0x435e8c: stur         r0, [r3, #0xf]
    //     0x435e90: ldur         r0, [fp, #-0x18]
    // 0x435e94: StoreField: r3->field_13 = r0
    //     0x435e94: stur         r0, [r3, #0x13]
    // 0x435e98: r1 = NULL
    //     0x435e98: mov          r1, NULL
    //     0x435e9c: mov          r2, #4
    // 0x435ea0: r0 = call 0x61f920
    //     0x435ea0: bl           0x61f920
    // 0x435ea4: BARRIER = pp[0xb37]
    //     0x435ea4: add          BARRIER, PP, #0xf, lsl #12
    //     0x435ea8: ldr          BARRIER, [BARRIER, #0xb28]
    // 0x435eac: StoreField: r0->field_f = r16
    //     0x435eac: stur         r16, [r0, #0xf]
    //     0x435eb0: mov          BARRIER, #0x28
    // 0x435eb4: StoreField: r0->field_13 = r16
    //     0x435eb4: stur         r16, [r0, #0x13]
    // 0x435eb8: BARRIER = pp[0xbf0]
    //     0x435eb8: ldr          BARRIER, [PP, #0xbf0]
    //     0x435ebc: stp          r0, BARRIER, [SP]
    // 0x435ec0: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x435ec0: bl           0x27c0c8
    // 0x435ec4: r4 = r0
    //     0x435ec4: mov          r4, r0
    //     0x435ec8: ldur         r2, [fp, #-8]
    //     0x435ecc: stur         r4, [fp, #-0x10]
    //     0x435ed0: tbnz         r2, #0x3f, 0x435efc
    //     0x435ed4: sbfiz        r0, r2, #1, #0x1f
    //     0x435ed8: cmp          r2, r0, asr #1
    // 0x435edc: b.eq 0x435ee8
    //     0x435edc: b.eq         0x435ee8
    // 0x435ee0: r0 = call 0x61fba8
    //     0x435ee0: bl           0x61fba8
    // 0x435ee4: StoreField: r0->field_7 = r2
    //     0x435ee4: stur         r2, [r0, #7]
    // 0x435ee8: r1 = r4
    //     0x435ee8: mov          r1, r4
    // 0x435eec: r3 = r0
    //     0x435eec: mov          r3, r0
    // 0x435ef0: r2 = pp[0x377]
    //     0x435ef0: add          r2, PP, #0xf, lsl #12
    //     0x435ef4: ldr          r2, [r2, #0x368]
    // 0x435ef8: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x435ef8: bl           0x6164d4
    //     0x435efc: ldur         r2, [fp, #-0x20]
    // 0x435f00: r1 = pp[0x455]
    //     0x435f00: add          r1, PP, #0x15, lsl #12
    //     0x435f04: ldr          r1, [r1, #0x440]
    // 0x435f08: r0 = call 0x61ec54
    //     0x435f08: bl           0x61ec54
    //     0x435f0c: ldur         r2, [fp, #-0x20]
    // 0x435f10: r1 = pp[0x45d]
    //     0x435f10: add          r1, PP, #0x15, lsl #12
    //     0x435f14: ldr          r1, [r1, #0x448]
    //     0x435f18: stur         r0, [fp, #-0x18]
    // 0x435f1c: r0 = call 0x61ec54
    //     0x435f1c: bl           0x61ec54
    //     0x435f20: ldur         BARRIER, [fp, #-0x10]
    //     0x435f24: stp          r0, BARRIER, [SP]
    //     0x435f28: ldur         r2, [fp, #-0x18]
    // 0x435f2c: r1 = pp[0x465]
    //     0x435f2c: add          r1, PP, #0x15, lsl #12
    //     0x435f30: ldr          r1, [r1, #0x450]
    // 0x435f34: r4 = pp[0x40f]
    //     0x435f34: add          r4, PP, #0xf, lsl #12
    //     0x435f38: ldr          r4, [r4, #0x400]
    // 0x435f3c: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x435f3c: bl           0x3ab958
    // 0x435f40: r0 = NULL
    //     0x435f40: mov          r0, NULL
    // 0x435f44: SP = fp
    //     0x435f44: mov          SP, fp
    // 0x435f48: LeaveFrame
    //     0x435f48: ldp          fp, lr, [SP], #0x10
    // 0x435f4c: ret
    //     0x435f4c: ret          
    // 0x435f50: r0 = call 0x61fa28
    //     0x435f50: bl           0x61fa28
    // 0x435f54: b 0x435e78
    //     0x435f54: b            0x435e78
  }

  getGameFruitRankList() {
    // ** addr: 0x4366ac, size: 0x104
    // 0x4366ac: EnterFrame
    //     0x4366ac: stp          fp, lr, [SP, #-0x10]!
    //     0x4366b0: mov          fp, SP
    // 0x4366b4: AllocStack(0x30)
    //     0x4366b4: sub          SP, SP, #0x30
    //     0x4366b8: stur         r1, [fp, #-8]
    //     0x4366bc: stur         r2, [fp, #-0x10]
    //     0x4366c0: stur         r3, [fp, #-0x18]
    // 0x4366c4: CheckStackOverflow
    //     0x4366c4: ldr          BARRIER, [THR, #0x38]
    //     0x4366c8: cmp          SP, BARRIER
    //     0x4366cc: b.ls         0x4367a8
    //     0x4366d0: mov          r1, #2
    // 0x4366d4: r0 = call 0x61e890
    //     0x4366d4: bl           0x61e890
    // 0x4366d8: r3 = r0
    //     0x4366d8: mov          r3, r0
    //     0x4366dc: ldur         r0, [fp, #-0x10]
    //     0x4366e0: stur         r3, [fp, #-0x20]
    // 0x4366e4: StoreField: r3->field_f = r0
    //     0x4366e4: stur         r0, [r3, #0xf]
    //     0x4366e8: ldur         r0, [fp, #-0x18]
    // 0x4366ec: StoreField: r3->field_13 = r0
    //     0x4366ec: stur         r0, [r3, #0x13]
    // 0x4366f0: r1 = NULL
    //     0x4366f0: mov          r1, NULL
    //     0x4366f4: mov          r2, #4
    // 0x4366f8: r0 = call 0x61f920
    //     0x4366f8: bl           0x61f920
    // 0x4366fc: BARRIER = pp[0xb37]
    //     0x4366fc: add          BARRIER, PP, #0xf, lsl #12
    //     0x436700: ldr          BARRIER, [BARRIER, #0xb28]
    // 0x436704: StoreField: r0->field_f = r16
    //     0x436704: stur         r16, [r0, #0xf]
    //     0x436708: mov          BARRIER, #0x28
    // 0x43670c: StoreField: r0->field_13 = r16
    //     0x43670c: stur         r16, [r0, #0x13]
    // 0x436710: BARRIER = pp[0xbf0]
    //     0x436710: ldr          BARRIER, [PP, #0xbf0]
    //     0x436714: stp          r0, BARRIER, [SP]
    // 0x436718: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x436718: bl           0x27c0c8
    // 0x43671c: r4 = r0
    //     0x43671c: mov          r4, r0
    //     0x436720: ldur         r2, [fp, #-8]
    //     0x436724: stur         r4, [fp, #-0x10]
    //     0x436728: tbnz         r2, #0x3f, 0x436754
    //     0x43672c: sbfiz        r0, r2, #1, #0x1f
    //     0x436730: cmp          r2, r0, asr #1
    // 0x436734: b.eq 0x436740
    //     0x436734: b.eq         0x436740
    // 0x436738: r0 = call 0x61fba8
    //     0x436738: bl           0x61fba8
    // 0x43673c: StoreField: r0->field_7 = r2
    //     0x43673c: stur         r2, [r0, #7]
    // 0x436740: r1 = r4
    //     0x436740: mov          r1, r4
    // 0x436744: r3 = r0
    //     0x436744: mov          r3, r0
    // 0x436748: r2 = pp[0x377]
    //     0x436748: add          r2, PP, #0xf, lsl #12
    //     0x43674c: ldr          r2, [r2, #0x368]
    // 0x436750: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x436750: bl           0x6164d4
    //     0x436754: ldur         r2, [fp, #-0x20]
    // 0x436758: r1 = pp[0x9d9]
    //     0x436758: add          r1, PP, #0x11, lsl #12
    //     0x43675c: ldr          r1, [r1, #0x9c8]
    // 0x436760: r0 = call 0x61ec54
    //     0x436760: bl           0x61ec54
    //     0x436764: ldur         r2, [fp, #-0x20]
    // 0x436768: r1 = pp[0x9e1]
    //     0x436768: add          r1, PP, #0x11, lsl #12
    //     0x43676c: ldr          r1, [r1, #0x9d0]
    //     0x436770: stur         r0, [fp, #-0x18]
    // 0x436774: r0 = call 0x61ec54
    //     0x436774: bl           0x61ec54
    //     0x436778: ldur         BARRIER, [fp, #-0x10]
    //     0x43677c: stp          r0, BARRIER, [SP]
    //     0x436780: ldur         r2, [fp, #-0x18]
    // 0x436784: r1 = pp[0x9e9]
    //     0x436784: add          r1, PP, #0x11, lsl #12
    //     0x436788: ldr          r1, [r1, #0x9d8]
    // 0x43678c: r4 = pp[0x40f]
    //     0x43678c: add          r4, PP, #0xf, lsl #12
    //     0x436790: ldr          r4, [r4, #0x400]
    // 0x436794: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x436794: bl           0x3ab958
    // 0x436798: r0 = NULL
    //     0x436798: mov          r0, NULL
    // 0x43679c: SP = fp
    //     0x43679c: mov          SP, fp
    // 0x4367a0: LeaveFrame
    //     0x4367a0: ldp          fp, lr, [SP], #0x10
    // 0x4367a4: ret
    //     0x4367a4: ret          
    // 0x4367a8: r0 = call 0x61fa28
    //     0x4367a8: bl           0x61fa28
    // 0x4367ac: b 0x4366d0
    //     0x4367ac: b            0x4366d0
  }

  dlocalPayment() {
    // ** addr: 0x43c49c, size: 0xe8
    // 0x43c49c: EnterFrame
    //     0x43c49c: stp          fp, lr, [SP, #-0x10]!
    //     0x43c4a0: mov          fp, SP
    // 0x43c4a4: AllocStack(0x38)
    //     0x43c4a4: sub          SP, SP, #0x38
    //     0x43c4a8: stur         r1, [fp, #-8]
    //     0x43c4ac: stur         r2, [fp, #-0x10]
    //     0x43c4b0: stur         r3, [fp, #-0x18]
    //     0x43c4b4: stur         r5, [fp, #-0x20]
    // 0x43c4b8: CheckStackOverflow
    //     0x43c4b8: ldr          BARRIER, [THR, #0x38]
    //     0x43c4bc: cmp          SP, BARRIER
    //     0x43c4c0: b.ls         0x43c57c
    //     0x43c4c4: mov          r1, #2
    // 0x43c4c8: r0 = call 0x61e890
    //     0x43c4c8: bl           0x61e890
    // 0x43c4cc: r3 = r0
    //     0x43c4cc: mov          r3, r0
    //     0x43c4d0: ldur         r0, [fp, #-0x18]
    //     0x43c4d4: stur         r3, [fp, #-0x28]
    // 0x43c4d8: StoreField: r3->field_f = r0
    //     0x43c4d8: stur         r0, [r3, #0xf]
    //     0x43c4dc: ldur         r0, [fp, #-0x20]
    // 0x43c4e0: StoreField: r3->field_13 = r0
    //     0x43c4e0: stur         r0, [r3, #0x13]
    // 0x43c4e4: r1 = NULL
    //     0x43c4e4: mov          r1, NULL
    //     0x43c4e8: mov          r2, #8
    // 0x43c4ec: r0 = call 0x61f920
    //     0x43c4ec: bl           0x61f920
    // 0x43c4f0: BARRIER = pp[0xa8f]
    //     0x43c4f0: add          BARRIER, PP, #0xf, lsl #12
    //     0x43c4f4: ldr          BARRIER, [BARRIER, #0xa80]
    // 0x43c4f8: StoreField: r0->field_f = r16
    //     0x43c4f8: stur         r16, [r0, #0xf]
    //     0x43c4fc: ldur         r1, [fp, #-8]
    // 0x43c500: StoreField: r0->field_13 = r1
    //     0x43c500: stur         r1, [r0, #0x13]
    // 0x43c504: BARRIER = pp[0x1a0]
    //     0x43c504: add          BARRIER, PP, #8, lsl #12
    //     0x43c508: ldr          BARRIER, [BARRIER, #0x198]
    // 0x43c50c: ArrayStore: r0[0] = r16  ; List_8
    //     0x43c50c: stur         r16, [r0, #0x17]
    //     0x43c510: ldur         r1, [fp, #-0x10]
    // 0x43c514: StoreField: r0->field_1b = r1
    //     0x43c514: stur         r1, [r0, #0x1b]
    // 0x43c518: BARRIER = pp[0xbf0]
    //     0x43c518: ldr          BARRIER, [PP, #0xbf0]
    //     0x43c51c: stp          r0, BARRIER, [SP]
    // 0x43c520: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x43c520: bl           0x27c0c8
    //     0x43c524: ldur         r2, [fp, #-0x28]
    // 0x43c528: r1 = pp[0xbf4]
    //     0x43c528: add          r1, PP, #0x14, lsl #12
    //     0x43c52c: ldr          r1, [r1, #0xbe0]
    //     0x43c530: stur         r0, [fp, #-8]
    // 0x43c534: r0 = call 0x61ec54
    //     0x43c534: bl           0x61ec54
    //     0x43c538: ldur         r2, [fp, #-0x28]
    // 0x43c53c: r1 = pp[0xbfc]
    //     0x43c53c: add          r1, PP, #0x14, lsl #12
    //     0x43c540: ldr          r1, [r1, #0xbe8]
    //     0x43c544: stur         r0, [fp, #-0x10]
    // 0x43c548: r0 = call 0x61ec54
    //     0x43c548: bl           0x61ec54
    //     0x43c54c: str          r0, [SP]
    //     0x43c550: ldur         r2, [fp, #-8]
    //     0x43c554: ldur         r3, [fp, #-0x10]
    // 0x43c558: r1 = pp[0xc04]
    //     0x43c558: add          r1, PP, #0x14, lsl #12
    //     0x43c55c: ldr          r1, [r1, #0xbf0]
    // 0x43c560: r4 = pp[0xbd0]
    //     0x43c560: add          r4, PP, #0x10, lsl #12
    //     0x43c564: ldr          r4, [r4, #0xbc0]
    // 0x43c568: r0 = soul_flutter_international$common$plugins$http_Http::postSimple()
    //     0x43c568: bl           0x41e430
    // 0x43c56c: r0 = NULL
    //     0x43c56c: mov          r0, NULL
    // 0x43c570: SP = fp
    //     0x43c570: mov          SP, fp
    // 0x43c574: LeaveFrame
    //     0x43c574: ldp          fp, lr, [SP], #0x10
    // 0x43c578: ret
    //     0x43c578: ret          
    // 0x43c57c: r0 = call 0x61fa28
    //     0x43c57c: bl           0x61fa28
    // 0x43c580: b 0x43c4c4
    //     0x43c580: b            0x43c4c4
  }

  getPKGameRecordList() {
    // ** addr: 0x444360, size: 0x120
    // 0x444360: EnterFrame
    //     0x444360: stp          fp, lr, [SP, #-0x10]!
    //     0x444364: mov          fp, SP
    // 0x444368: AllocStack(0x38)
    //     0x444368: sub          SP, SP, #0x38
    //     0x44436c: stur         r1, [fp, #-8]
    //     0x444370: stur         r2, [fp, #-0x10]
    //     0x444374: stur         r3, [fp, #-0x18]
    //     0x444378: stur         r5, [fp, #-0x20]
    // 0x44437c: CheckStackOverflow
    //     0x44437c: ldr          BARRIER, [THR, #0x38]
    //     0x444380: cmp          SP, BARRIER
    //     0x444384: b.ls         0x444478
    //     0x444388: mov          r1, #2
    // 0x44438c: r0 = call 0x61e890
    //     0x44438c: bl           0x61e890
    // 0x444390: r3 = r0
    //     0x444390: mov          r3, r0
    //     0x444394: ldur         r0, [fp, #-0x18]
    //     0x444398: stur         r3, [fp, #-0x28]
    // 0x44439c: StoreField: r3->field_f = r0
    //     0x44439c: stur         r0, [r3, #0xf]
    //     0x4443a0: ldur         r0, [fp, #-0x20]
    // 0x4443a4: StoreField: r3->field_13 = r0
    //     0x4443a4: stur         r0, [r3, #0x13]
    // 0x4443a8: r1 = NULL
    //     0x4443a8: mov          r1, NULL
    //     0x4443ac: mov          r2, #8
    // 0x4443b0: r0 = call 0x61f920
    //     0x4443b0: bl           0x61f920
    // 0x4443b4: BARRIER = pp[0x434]
    //     0x4443b4: add          BARRIER, PP, #0x14, lsl #12
    //     0x4443b8: ldr          BARRIER, [BARRIER, #0x420]
    // 0x4443bc: StoreField: r0->field_f = r16
    //     0x4443bc: stur         r16, [r0, #0xf]
    //     0x4443c0: ldur         r1, [fp, #-0x10]
    //     0x4443c4: lsl          r2, r1, #1
    // 0x4443c8: StoreField: r0->field_13 = r2
    //     0x4443c8: stur         r2, [r0, #0x13]
    // 0x4443cc: BARRIER = pp[0xb37]
    //     0x4443cc: add          BARRIER, PP, #0xf, lsl #12
    //     0x4443d0: ldr          BARRIER, [BARRIER, #0xb28]
    // 0x4443d4: ArrayStore: r0[0] = r16  ; List_8
    //     0x4443d4: stur         r16, [r0, #0x17]
    //     0x4443d8: mov          BARRIER, #0x28
    // 0x4443dc: StoreField: r0->field_1b = r16
    //     0x4443dc: stur         r16, [r0, #0x1b]
    // 0x4443e0: BARRIER = pp[0xbf0]
    //     0x4443e0: ldr          BARRIER, [PP, #0xbf0]
    //     0x4443e4: stp          r0, BARRIER, [SP]
    // 0x4443e8: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x4443e8: bl           0x27c0c8
    // 0x4443ec: r4 = r0
    //     0x4443ec: mov          r4, r0
    //     0x4443f0: ldur         r2, [fp, #-8]
    //     0x4443f4: stur         r4, [fp, #-0x18]
    //     0x4443f8: tbnz         r2, #0x3f, 0x444424
    //     0x4443fc: sbfiz        r0, r2, #1, #0x1f
    //     0x444400: cmp          r2, r0, asr #1
    // 0x444404: b.eq 0x444410
    //     0x444404: b.eq         0x444410
    // 0x444408: r0 = call 0x61fba8
    //     0x444408: bl           0x61fba8
    // 0x44440c: StoreField: r0->field_7 = r2
    //     0x44440c: stur         r2, [r0, #7]
    // 0x444410: r1 = r4
    //     0x444410: mov          r1, r4
    // 0x444414: r3 = r0
    //     0x444414: mov          r3, r0
    // 0x444418: r2 = pp[0x377]
    //     0x444418: add          r2, PP, #0xf, lsl #12
    //     0x44441c: ldr          r2, [r2, #0x368]
    // 0x444420: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x444420: bl           0x6164d4
    //     0x444424: ldur         r2, [fp, #-0x28]
    // 0x444428: r1 = pp[0x43c]
    //     0x444428: add          r1, PP, #0x14, lsl #12
    //     0x44442c: ldr          r1, [r1, #0x428]
    // 0x444430: r0 = call 0x61ec54
    //     0x444430: bl           0x61ec54
    //     0x444434: ldur         r2, [fp, #-0x28]
    // 0x444438: r1 = pp[0x444]
    //     0x444438: add          r1, PP, #0x14, lsl #12
    //     0x44443c: ldr          r1, [r1, #0x430]
    //     0x444440: stur         r0, [fp, #-0x20]
    // 0x444444: r0 = call 0x61ec54
    //     0x444444: bl           0x61ec54
    //     0x444448: ldur         BARRIER, [fp, #-0x18]
    //     0x44444c: stp          r0, BARRIER, [SP]
    //     0x444450: ldur         r2, [fp, #-0x20]
    // 0x444454: r1 = pp[0x44c]
    //     0x444454: add          r1, PP, #0x14, lsl #12
    //     0x444458: ldr          r1, [r1, #0x438]
    // 0x44445c: r4 = pp[0x40f]
    //     0x44445c: add          r4, PP, #0xf, lsl #12
    //     0x444460: ldr          r4, [r4, #0x400]
    // 0x444464: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x444464: bl           0x3ab958
    // 0x444468: r0 = NULL
    //     0x444468: mov          r0, NULL
    // 0x44446c: SP = fp
    //     0x44446c: mov          SP, fp
    // 0x444470: LeaveFrame
    //     0x444470: ldp          fp, lr, [SP], #0x10
    // 0x444474: ret
    //     0x444474: ret          
    // 0x444478: r0 = call 0x61fa28
    //     0x444478: bl           0x61fa28
    // 0x44447c: b 0x444388
    //     0x44447c: b            0x444388
  }

  _anon_closure() {
    // ** addr: 0x444480, size: 0x50
    // 0x444480: EnterFrame
    //     0x444480: stp          fp, lr, [SP, #-0x10]!
    //     0x444484: mov          fp, SP
    // 0x444488: AllocStack(8)
    //     0x444488: sub          SP, SP, #8
    //     0x44448c: ldr          r0, [fp, #0x20]
    // 0x444490: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x444490: ldur         r1, [r0, #0x17]
    //     0x444494: add          r1, r1, HEAP, lsl #32
    // 0x444498: CheckStackOverflow
    //     0x444498: ldr          BARRIER, [THR, #0x38]
    //     0x44449c: cmp          SP, BARRIER
    //     0x4444a0: b.ls         0x4444c8
    // 0x4444a4: LoadField: r0 = r1->field_13
    //     0x4444a4: ldur         r0, [r1, #0x13]
    //     0x4444a8: add          r0, r0, HEAP, lsl #32
    //     0x4444ac: str          r0, [SP]
    // 0x4444b0: r4 = pp[0x3a8]
    //     0x4444b0: ldr          r4, [PP, #0x3a8]
    // 0x4444b4: LoadField: r2 = r0->field_1f
    //     0x4444b4: ldur         r2, [r0, #0x1f]
    // 0x4444b8: r0 = [R]()
    //     0x4444b8: blr          r2
    // 0x4444bc: SP = fp
    //     0x4444bc: mov          SP, fp
    // 0x4444c0: LeaveFrame
    //     0x4444c0: ldp          fp, lr, [SP], #0x10
    // 0x4444c4: ret
    //     0x4444c4: ret          
    // 0x4444c8: r0 = call 0x61fa28
    //     0x4444c8: bl           0x61fa28
    // 0x4444cc: b 0x4444a4
    //     0x4444cc: b            0x4444a4
  }

  _anon_closure() {
    // ** addr: 0x444d88, size: 0x54
    // 0x444d88: EnterFrame
    //     0x444d88: stp          fp, lr, [SP, #-0x10]!
    //     0x444d8c: mov          fp, SP
    // 0x444d90: AllocStack(0x10)
    //     0x444d90: sub          SP, SP, #0x10
    //     0x444d94: ldr          r0, [fp, #0x18]
    // 0x444d98: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x444d98: ldur         r1, [r0, #0x17]
    //     0x444d9c: add          r1, r1, HEAP, lsl #32
    // 0x444da0: CheckStackOverflow
    //     0x444da0: ldr          BARRIER, [THR, #0x38]
    //     0x444da4: cmp          SP, BARRIER
    //     0x444da8: b.ls         0x444dd4
    // 0x444dac: LoadField: r0 = r1->field_f
    //     0x444dac: ldur         r0, [r1, #0xf]
    //     0x444db0: add          r0, r0, HEAP, lsl #32
    //     0x444db4: ldr          BARRIER, [fp, #0x10]
    //     0x444db8: stp          BARRIER, r0, [SP]
    // 0x444dbc: r4 = pp[0x140]
    //     0x444dbc: ldr          r4, [PP, #0x140]
    // 0x444dc0: LoadField: r2 = r0->field_1f
    //     0x444dc0: ldur         r2, [r0, #0x1f]
    // 0x444dc4: r0 = [R]()
    //     0x444dc4: blr          r2
    // 0x444dc8: SP = fp
    //     0x444dc8: mov          SP, fp
    // 0x444dcc: LeaveFrame
    //     0x444dcc: ldp          fp, lr, [SP], #0x10
    // 0x444dd0: ret
    //     0x444dd0: ret          
    // 0x444dd4: r0 = call 0x61fa28
    //     0x444dd4: bl           0x61fa28
    // 0x444dd8: b 0x444dac
    //     0x444dd8: b            0x444dac
  }

  getPackRecordList() {
    // ** addr: 0x4d4ea8, size: 0xe8
    // 0x4d4ea8: EnterFrame
    //     0x4d4ea8: stp          fp, lr, [SP, #-0x10]!
    //     0x4d4eac: mov          fp, SP
    // 0x4d4eb0: AllocStack(0x30)
    //     0x4d4eb0: sub          SP, SP, #0x30
    //     0x4d4eb4: stur         r1, [fp, #-8]
    //     0x4d4eb8: stur         r2, [fp, #-0x10]
    //     0x4d4ebc: stur         r3, [fp, #-0x18]
    // 0x4d4ec0: CheckStackOverflow
    //     0x4d4ec0: ldr          BARRIER, [THR, #0x38]
    //     0x4d4ec4: cmp          SP, BARRIER
    //     0x4d4ec8: b.ls         0x4d4f88
    //     0x4d4ecc: mov          r1, #2
    // 0x4d4ed0: r0 = call 0x61e890
    //     0x4d4ed0: bl           0x61e890
    // 0x4d4ed4: r3 = r0
    //     0x4d4ed4: mov          r3, r0
    //     0x4d4ed8: ldur         r0, [fp, #-0x10]
    //     0x4d4edc: stur         r3, [fp, #-0x20]
    // 0x4d4ee0: StoreField: r3->field_f = r0
    //     0x4d4ee0: stur         r0, [r3, #0xf]
    //     0x4d4ee4: ldur         r0, [fp, #-0x18]
    // 0x4d4ee8: StoreField: r3->field_13 = r0
    //     0x4d4ee8: stur         r0, [r3, #0x13]
    // 0x4d4eec: r1 = NULL
    //     0x4d4eec: mov          r1, NULL
    //     0x4d4ef0: mov          r2, #4
    // 0x4d4ef4: r0 = call 0x61f920
    //     0x4d4ef4: bl           0x61f920
    // 0x4d4ef8: r2 = r0
    //     0x4d4ef8: mov          r2, r0
    // 0x4d4efc: BARRIER = pp[0x5a9]
    //     0x4d4efc: add          BARRIER, PP, #0x11, lsl #12
    //     0x4d4f00: ldr          BARRIER, [BARRIER, #0x598]
    // 0x4d4f04: StoreField: r2->field_f = r16
    //     0x4d4f04: stur         r16, [r2, #0xf]
    //     0x4d4f08: ldur         r3, [fp, #-8]
    //     0x4d4f0c: sbfiz        r0, r3, #1, #0x1f
    //     0x4d4f10: cmp          r3, r0, asr #1
    // 0x4d4f14: b.eq 0x4d4f20
    //     0x4d4f14: b.eq         0x4d4f20
    // 0x4d4f18: r0 = call 0x61fba8
    //     0x4d4f18: bl           0x61fba8
    // 0x4d4f1c: StoreField: r0->field_7 = r3
    //     0x4d4f1c: stur         r3, [r0, #7]
    // 0x4d4f20: StoreField: r2->field_13 = r0
    //     0x4d4f20: stur         r0, [r2, #0x13]
    // 0x4d4f24: BARRIER = pp[0xbf0]
    //     0x4d4f24: ldr          BARRIER, [PP, #0xbf0]
    //     0x4d4f28: stp          r2, BARRIER, [SP]
    // 0x4d4f2c: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x4d4f2c: bl           0x27c0c8
    //     0x4d4f30: ldur         r2, [fp, #-0x20]
    // 0x4d4f34: r1 = pp[0x6e9]
    //     0x4d4f34: add          r1, PP, #0x11, lsl #12
    //     0x4d4f38: ldr          r1, [r1, #0x6d8]
    //     0x4d4f3c: stur         r0, [fp, #-0x10]
    // 0x4d4f40: r0 = call 0x61ec54
    //     0x4d4f40: bl           0x61ec54
    //     0x4d4f44: ldur         r2, [fp, #-0x20]
    // 0x4d4f48: r1 = pp[0x6f1]
    //     0x4d4f48: add          r1, PP, #0x11, lsl #12
    //     0x4d4f4c: ldr          r1, [r1, #0x6e0]
    //     0x4d4f50: stur         r0, [fp, #-0x18]
    // 0x4d4f54: r0 = call 0x61ec54
    //     0x4d4f54: bl           0x61ec54
    //     0x4d4f58: ldur         BARRIER, [fp, #-0x10]
    //     0x4d4f5c: stp          r0, BARRIER, [SP]
    //     0x4d4f60: ldur         r2, [fp, #-0x18]
    // 0x4d4f64: r1 = pp[0x6f9]
    //     0x4d4f64: add          r1, PP, #0x11, lsl #12
    //     0x4d4f68: ldr          r1, [r1, #0x6e8]
    // 0x4d4f6c: r4 = pp[0x40f]
    //     0x4d4f6c: add          r4, PP, #0xf, lsl #12
    //     0x4d4f70: ldr          r4, [r4, #0x400]
    // 0x4d4f74: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x4d4f74: bl           0x3ab958
    // 0x4d4f78: r0 = NULL
    //     0x4d4f78: mov          r0, NULL
    // 0x4d4f7c: SP = fp
    //     0x4d4f7c: mov          SP, fp
    // 0x4d4f80: LeaveFrame
    //     0x4d4f80: ldp          fp, lr, [SP], #0x10
    // 0x4d4f84: ret
    //     0x4d4f84: ret          
    // 0x4d4f88: r0 = call 0x61fa28
    //     0x4d4f88: bl           0x61fa28
    // 0x4d4f8c: b 0x4d4ecc
    //     0x4d4f8c: b            0x4d4ecc
  }

  getSoulCoinList() {
    // ** addr: 0x4d6588, size: 0x120
    // 0x4d6588: EnterFrame
    //     0x4d6588: stp          fp, lr, [SP, #-0x10]!
    //     0x4d658c: mov          fp, SP
    // 0x4d6590: AllocStack(0x30)
    //     0x4d6590: sub          SP, SP, #0x30
    //     0x4d6594: stur         r1, [fp, #-8]
    //     0x4d6598: stur         r2, [fp, #-0x10]
    //     0x4d659c: stur         r3, [fp, #-0x18]
    // 0x4d65a0: CheckStackOverflow
    //     0x4d65a0: ldr          BARRIER, [THR, #0x38]
    //     0x4d65a4: cmp          SP, BARRIER
    //     0x4d65a8: b.ls         0x4d66a0
    //     0x4d65ac: mov          r1, #2
    // 0x4d65b0: r0 = call 0x61e890
    //     0x4d65b0: bl           0x61e890
    // 0x4d65b4: r3 = r0
    //     0x4d65b4: mov          r3, r0
    //     0x4d65b8: ldur         r0, [fp, #-0x10]
    //     0x4d65bc: stur         r3, [fp, #-0x20]
    // 0x4d65c0: StoreField: r3->field_f = r0
    //     0x4d65c0: stur         r0, [r3, #0xf]
    //     0x4d65c4: ldur         r0, [fp, #-0x18]
    // 0x4d65c8: StoreField: r3->field_13 = r0
    //     0x4d65c8: stur         r0, [r3, #0x13]
    // 0x4d65cc: r1 = NULL
    //     0x4d65cc: mov          r1, NULL
    //     0x4d65d0: mov          r2, #8
    // 0x4d65d4: r0 = call 0x61f920
    //     0x4d65d4: bl           0x61f920
    // 0x4d65d8: BARRIER = pp[0xa68]
    //     0x4d65d8: add          BARRIER, PP, #0x10, lsl #12
    //     0x4d65dc: ldr          BARRIER, [BARRIER, #0xa58]
    // 0x4d65e0: StoreField: r0->field_f = r16
    //     0x4d65e0: stur         r16, [r0, #0xf]
    // 0x4d65e4: BARRIER = pp[0xa70]
    //     0x4d65e4: add          BARRIER, PP, #0x10, lsl #12
    //     0x4d65e8: ldr          BARRIER, [BARRIER, #0xa60]
    // 0x4d65ec: StoreField: r0->field_13 = r16
    //     0x4d65ec: stur         r16, [r0, #0x13]
    // 0x4d65f0: BARRIER = pp[0xa78]
    //     0x4d65f0: add          BARRIER, PP, #0x10, lsl #12
    //     0x4d65f4: ldr          BARRIER, [BARRIER, #0xa68]
    // 0x4d65f8: ArrayStore: r0[0] = r16  ; List_8
    //     0x4d65f8: stur         r16, [r0, #0x17]
    // 0x4d65fc: BARRIER = pp[0xa80]
    //     0x4d65fc: add          BARRIER, PP, #0x10, lsl #12
    //     0x4d6600: ldr          BARRIER, [BARRIER, #0xa70]
    // 0x4d6604: StoreField: r0->field_1b = r16
    //     0x4d6604: stur         r16, [r0, #0x1b]
    // 0x4d6608: BARRIER = pp[0xbf0]
    //     0x4d6608: ldr          BARRIER, [PP, #0xbf0]
    //     0x4d660c: stp          r0, BARRIER, [SP]
    // 0x4d6610: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x4d6610: bl           0x27c0c8
    // 0x4d6614: r4 = r0
    //     0x4d6614: mov          r4, r0
    //     0x4d6618: ldur         r2, [fp, #-8]
    //     0x4d661c: stur         r4, [fp, #-0x10]
    //     0x4d6620: tbnz         r2, #0x3f, 0x4d664c
    //     0x4d6624: sbfiz        r0, r2, #1, #0x1f
    //     0x4d6628: cmp          r2, r0, asr #1
    // 0x4d662c: b.eq 0x4d6638
    //     0x4d662c: b.eq         0x4d6638
    // 0x4d6630: r0 = call 0x61fba8
    //     0x4d6630: bl           0x61fba8
    // 0x4d6634: StoreField: r0->field_7 = r2
    //     0x4d6634: stur         r2, [r0, #7]
    // 0x4d6638: r1 = r4
    //     0x4d6638: mov          r1, r4
    // 0x4d663c: r3 = r0
    //     0x4d663c: mov          r3, r0
    // 0x4d6640: r2 = pp[0x377]
    //     0x4d6640: add          r2, PP, #0xf, lsl #12
    //     0x4d6644: ldr          r2, [r2, #0x368]
    // 0x4d6648: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x4d6648: bl           0x6164d4
    //     0x4d664c: ldur         r2, [fp, #-0x20]
    // 0x4d6650: r1 = pp[0xa88]
    //     0x4d6650: add          r1, PP, #0x10, lsl #12
    //     0x4d6654: ldr          r1, [r1, #0xa78]
    // 0x4d6658: r0 = call 0x61ec54
    //     0x4d6658: bl           0x61ec54
    //     0x4d665c: ldur         r2, [fp, #-0x20]
    // 0x4d6660: r1 = pp[0xa90]
    //     0x4d6660: add          r1, PP, #0x10, lsl #12
    //     0x4d6664: ldr          r1, [r1, #0xa80]
    //     0x4d6668: stur         r0, [fp, #-0x18]
    // 0x4d666c: r0 = call 0x61ec54
    //     0x4d666c: bl           0x61ec54
    //     0x4d6670: ldur         BARRIER, [fp, #-0x10]
    //     0x4d6674: stp          r0, BARRIER, [SP]
    //     0x4d6678: ldur         r2, [fp, #-0x18]
    // 0x4d667c: r1 = pp[0xa98]
    //     0x4d667c: add          r1, PP, #0x10, lsl #12
    //     0x4d6680: ldr          r1, [r1, #0xa88]
    // 0x4d6684: r4 = pp[0x40f]
    //     0x4d6684: add          r4, PP, #0xf, lsl #12
    //     0x4d6688: ldr          r4, [r4, #0x400]
    // 0x4d668c: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x4d668c: bl           0x3ab958
    // 0x4d6690: r0 = NULL
    //     0x4d6690: mov          r0, NULL
    // 0x4d6694: SP = fp
    //     0x4d6694: mov          SP, fp
    // 0x4d6698: LeaveFrame
    //     0x4d6698: ldp          fp, lr, [SP], #0x10
    // 0x4d669c: ret
    //     0x4d669c: ret          
    // 0x4d66a0: r0 = call 0x61fa28
    //     0x4d66a0: bl           0x61fa28
    // 0x4d66a4: b 0x4d65ac
    //     0x4d66a4: b            0x4d65ac
  }

  getPayMethodList() {
    // ** addr: 0x4d9738, size: 0xb0
    // 0x4d9738: EnterFrame
    //     0x4d9738: stp          fp, lr, [SP, #-0x10]!
    //     0x4d973c: mov          fp, SP
    // 0x4d9740: AllocStack(0x28)
    //     0x4d9740: sub          SP, SP, #0x28
    //     0x4d9744: stur         r1, [fp, #-8]
    //     0x4d9748: stur         r2, [fp, #-0x10]
    // 0x4d974c: CheckStackOverflow
    //     0x4d974c: ldr          BARRIER, [THR, #0x38]
    //     0x4d9750: cmp          SP, BARRIER
    //     0x4d9754: b.ls         0x4d97e0
    //     0x4d9758: mov          r1, #2
    // 0x4d975c: r0 = call 0x61e890
    //     0x4d975c: bl           0x61e890
    // 0x4d9760: r1 = r0
    //     0x4d9760: mov          r1, r0
    //     0x4d9764: ldur         r0, [fp, #-8]
    //     0x4d9768: stur         r1, [fp, #-0x18]
    // 0x4d976c: StoreField: r1->field_f = r0
    //     0x4d976c: stur         r0, [r1, #0xf]
    //     0x4d9770: ldur         r0, [fp, #-0x10]
    // 0x4d9774: StoreField: r1->field_13 = r0
    //     0x4d9774: stur         r0, [r1, #0x13]
    // 0x4d9778: BARRIER = pp[0xbf0]
    //     0x4d9778: ldr          BARRIER, [PP, #0xbf0]
    //     0x4d977c: ldr          lr, [THR, #0x90]
    //     0x4d9780: stp          lr, BARRIER, [SP]
    // 0x4d9784: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x4d9784: bl           0x27c0c8
    //     0x4d9788: ldur         r2, [fp, #-0x18]
    // 0x4d978c: r1 = pp[0x2f8]
    //     0x4d978c: add          r1, PP, #0x10, lsl #12
    //     0x4d9790: ldr          r1, [r1, #0x2e8]
    //     0x4d9794: stur         r0, [fp, #-8]
    // 0x4d9798: r0 = call 0x61ec54
    //     0x4d9798: bl           0x61ec54
    //     0x4d979c: ldur         r2, [fp, #-0x18]
    // 0x4d97a0: r1 = pp[0x300]
    //     0x4d97a0: add          r1, PP, #0x10, lsl #12
    //     0x4d97a4: ldr          r1, [r1, #0x2f0]
    //     0x4d97a8: stur         r0, [fp, #-0x10]
    // 0x4d97ac: r0 = call 0x61ec54
    //     0x4d97ac: bl           0x61ec54
    //     0x4d97b0: ldur         BARRIER, [fp, #-8]
    //     0x4d97b4: stp          r0, BARRIER, [SP]
    //     0x4d97b8: ldur         r2, [fp, #-0x10]
    // 0x4d97bc: r1 = pp[0x308]
    //     0x4d97bc: add          r1, PP, #0x10, lsl #12
    //     0x4d97c0: ldr          r1, [r1, #0x2f8]
    // 0x4d97c4: r4 = pp[0x40f]
    //     0x4d97c4: add          r4, PP, #0xf, lsl #12
    //     0x4d97c8: ldr          r4, [r4, #0x400]
    // 0x4d97cc: r0 = soul_flutter_international$common$plugins$http_Http::getSimple()
    //     0x4d97cc: bl           0x3ab958
    // 0x4d97d0: r0 = NULL
    //     0x4d97d0: mov          r0, NULL
    // 0x4d97d4: SP = fp
    //     0x4d97d4: mov          SP, fp
    // 0x4d97d8: LeaveFrame
    //     0x4d97d8: ldp          fp, lr, [SP], #0x10
    // 0x4d97dc: ret
    //     0x4d97dc: ret          
    // 0x4d97e0: r0 = call 0x61fa28
    //     0x4d97e0: bl           0x61fa28
    // 0x4d97e4: b 0x4d9758
    //     0x4d97e4: b            0x4d9758
  }
