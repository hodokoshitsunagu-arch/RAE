// lib: , url: soul_flutter_international$common$plugins$channel_native


  call() {
    // ** addr: 0x3a8288, size: 0x11c
    // 0x3a8288: EnterFrame
    //     0x3a8288: stp          fp, lr, [SP, #-0x10]!
    //     0x3a828c: mov          fp, SP
    // 0x3a8290: AllocStack(0xa0)
    //     0x3a8290: sub          SP, SP, #0xa0
    //     0x3a8294: stur         NULL, [fp, #-8]
    //     0x3a8298: stur         r1, [fp, #-0x70]
    //     0x3a829c: stur         r2, [fp, #-0x78]
    //     0x3a82a0: stur         r4, [fp, #-0x80]
    // 0x3a82a4: LoadField: r0 = r4->field_13
    //     0x3a82a4: ldur         r0, [r4, #0x13]
    //     0x3a82a8: sub          r3, r0, #4
    //     0x3a82ac: cmp          r3, #2
    // 0x3a82b0: b.lt 0x3a82c4
    //     0x3a82b0: b.lt         0x3a82c4
    //     0x3a82b4: add          r0, fp, r3, sxtw #2
    // 0x3a82b8: LoadField: r0 = r0->field_8
    //     0x3a82b8: ldr          r0, [r0, #8]
    // 0x3a82bc: r3 = r0
    //     0x3a82bc: mov          r3, r0
    // 0x3a82c0: b 0x3a82c8
    //     0x3a82c0: b            0x3a82c8
    // 0x3a82c4: r3 = NULL
    //     0x3a82c4: mov          r3, NULL
    //     0x3a82c8: stur         r3, [fp, #-0x68]
    // 0x3a82cc: CheckStackOverflow
    //     0x3a82cc: ldr          BARRIER, [THR, #0x38]
    //     0x3a82d0: cmp          SP, BARRIER
    //     0x3a82d4: b.ls         0x3a8394
    // 0x3a82d8: r0 = NULL
    //     0x3a82d8: mov          r0, NULL
    // 0x3a82dc: r0 = call 0x2b16e4
    //     0x3a82dc: bl           0x2b16e4
    //     0x3a82e0: ldur         r3, [fp, #-0x70]
    //     0x3a82e4: ldur         r0, [fp, #-0x78]
    //     0x3a82e8: ldur         r4, [fp, #-0x68]
    // 0x3a82ec: r1 = NULL
    //     0x3a82ec: mov          r1, NULL
    //     0x3a82f0: mov          r2, #8
    // 0x3a82f4: r0 = call 0x61f920
    //     0x3a82f4: bl           0x61f920
    // 0x3a82f8: BARRIER = pp[0x22b0]
    //     0x3a82f8: ldr          BARRIER, [PP, #0x22b0]
    // 0x3a82fc: StoreField: r0->field_f = r16
    //     0x3a82fc: stur         r16, [r0, #0xf]
    //     0x3a8300: ldur         r1, [fp, #-0x78]
    // 0x3a8304: StoreField: r0->field_13 = r1
    //     0x3a8304: stur         r1, [r0, #0x13]
    // 0x3a8308: BARRIER = pp[0x22b8]
    //     0x3a8308: ldr          BARRIER, [PP, #0x22b8]
    // 0x3a830c: ArrayStore: r0[0] = r16  ; List_8
    //     0x3a830c: stur         r16, [r0, #0x17]
    //     0x3a8310: ldur         r2, [fp, #-0x68]
    // 0x3a8314: StoreField: r0->field_1b = r2
    //     0x3a8314: stur         r2, [r0, #0x1b]
    //     0x3a8318: str          r0, [SP]
    // 0x3a831c: r0 = dart_core__StringBase::_interpolate()
    //     0x3a831c: bl           0x2ad854
    //     0x3a8320: ldur         r0, [fp, #-0x70]
    // 0x3a8324: LoadField: r1 = r0->field_b
    //     0x3a8324: ldur         r1, [r0, #0xb]
    //     0x3a8328: add          r1, r1, HEAP, lsl #32
    // 0x3a832c: BARRIER = pp[0x40]
    //     0x3a832c: ldr          BARRIER, [PP, #0x40]
    //     0x3a8330: cmp          r1, r16
    // 0x3a8334: b.eq 0x3a839c
    //     0x3a8334: b.eq         0x3a839c
    //     0x3a8338: stp          r1, NULL, [SP, #0x10]
    //     0x3a833c: ldur         BARRIER, [fp, #-0x78]
    //     0x3a8340: ldur         lr, [fp, #-0x68]
    //     0x3a8344: stp          lr, BARRIER, [SP]
    // 0x3a8348: r4 = pp[0x408]
    //     0x3a8348: ldr          r4, [PP, #0x408]
    // 0x3a834c: r0 = flutter$src$services$platform_channel_MethodChannel::invokeMethod()
    //     0x3a834c: bl           0x604e3c
    // 0x3a8350: r1 = r0
    //     0x3a8350: mov          r1, r0
    //     0x3a8354: stur         r1, [fp, #-0x68]
    // 0x3a8358: r0 = call 0x2b13a0
    //     0x3a8358: bl           0x2b13a0
    // 0x3a835c: b 0x2b19a0
    //     0x3a835c: b            0x2b19a0
    //     0x3a8360: sub          SP, fp, #0xa0
    //     0x3a8364: stur         r0, [fp, #-0x68]
    // 0x3a8368: r1 = NULL
    //     0x3a8368: mov          r1, NULL
    //     0x3a836c: mov          r2, #4
    // 0x3a8370: r0 = call 0x61f920
    //     0x3a8370: bl           0x61f920
    // 0x3a8374: BARRIER = pp[0x22c0]
    //     0x3a8374: ldr          BARRIER, [PP, #0x22c0]
    // 0x3a8378: StoreField: r0->field_f = r16
    //     0x3a8378: stur         r16, [r0, #0xf]
    //     0x3a837c: ldur         r1, [fp, #-0x68]
    // 0x3a8380: StoreField: r0->field_13 = r1
    //     0x3a8380: stur         r1, [r0, #0x13]
    //     0x3a8384: str          r0, [SP]
    // 0x3a8388: r0 = dart_core__StringBase::_interpolate()
    //     0x3a8388: bl           0x2ad854
    // 0x3a838c: r0 = call 0x61dadc
    //     0x3a838c: bl           0x61dadc
    // 0x3a8390: brk #0
    //     0x3a8390: brk          #0
    // 0x3a8394: r0 = call 0x61fa28
    //     0x3a8394: bl           0x61fa28
    // 0x3a8398: b 0x3a82d8
    //     0x3a8398: b            0x3a82d8
    // 0x3a839c: r9 = pp[0x22c8]
    //     0x3a839c: ldr          r9, [PP, #0x22c8]
    // 0x3a83a0: r0 = call 0x620258
    //     0x3a83a0: bl           0x620258
  }

  ctor() {
    // ** addr: 0x3a83ec, size: 0xc0
    // 0x3a83ec: EnterFrame
    //     0x3a83ec: stp          fp, lr, [SP, #-0x10]!
    //     0x3a83f0: mov          fp, SP
    // 0x3a83f4: AllocStack(0x10)
    //     0x3a83f4: sub          SP, SP, #0x10
    // 0x3a83f8: r0 = pp[0x40]
    //     0x3a83f8: ldr          r0, [PP, #0x40]
    // 0x3a83fc: r3 = r1
    //     0x3a83fc: mov          r3, r1
    //     0x3a8400: stur         r1, [fp, #-8]
    //     0x3a8404: stur         r2, [fp, #-0x10]
    // 0x3a8408: CheckStackOverflow
    //     0x3a8408: ldr          BARRIER, [THR, #0x38]
    //     0x3a840c: cmp          SP, BARRIER
    //     0x3a8410: b.ls         0x3a84a4
    // 0x3a8414: StoreField: r3->field_b = r0
    //     0x3a8414: stur         r0, [r3, #0xb]
    // 0x3a8418: r1 = pp[0x2a20]
    //     0x3a8418: ldr          r1, [PP, #0x2a20]
    // 0x3a841c: r0 = dart_core_Map::factory_ctor()
    //     0x3a841c: bl           0x28cd60
    //     0x3a8420: ldur         r1, [fp, #-8]
    // 0x3a8424: StoreField: r1->field_f = r0
    //     0x3a8424: stur         r0, [r1, #0xf]
    //     0x3a8428: ldurb        r16, [r1, #-1]
    //     0x3a842c: ldurb        r17, [r0, #-1]
    //     0x3a8430: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3a8434: tst          BARRIER, HEAP, lsr #32
    // 0x3a8438: b.eq 0x3a8440
    //     0x3a8438: b.eq         0x3a8440
    // 0x3a843c: r0 = call 0x61e04c
    //     0x3a843c: bl           0x61e04c
    //     0x3a8440: ldur         r0, [fp, #-0x10]
    // 0x3a8444: StoreField: r1->field_7 = r0
    //     0x3a8444: stur         r0, [r1, #7]
    //     0x3a8448: ldurb        r16, [r1, #-1]
    //     0x3a844c: ldurb        r17, [r0, #-1]
    //     0x3a8450: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3a8454: tst          BARRIER, HEAP, lsr #32
    // 0x3a8458: b.eq 0x3a8460
    //     0x3a8458: b.eq         0x3a8460
    // 0x3a845c: r0 = call 0x61e04c
    //     0x3a845c: bl           0x61e04c
    // 0x3a8460: r0 = call 0x3a84ac
    //     0x3a8460: bl           0x3a84ac
    //     0x3a8464: ldur         r1, [fp, #-0x10]
    // 0x3a8468: StoreField: r0->field_7 = r1
    //     0x3a8468: stur         r1, [r0, #7]
    // 0x3a846c: r1 = pp[0x2a28]
    //     0x3a846c: ldr          r1, [PP, #0x2a28]
    // 0x3a8470: StoreField: r0->field_b = r1
    //     0x3a8470: stur         r1, [r0, #0xb]
    //     0x3a8474: ldur         r1, [fp, #-8]
    // 0x3a8478: StoreField: r1->field_b = r0
    //     0x3a8478: stur         r0, [r1, #0xb]
    //     0x3a847c: ldurb        r16, [r1, #-1]
    //     0x3a8480: ldurb        r17, [r0, #-1]
    //     0x3a8484: and          BARRIER, r17, BARRIER, lsr #2
    //     0x3a8488: tst          BARRIER, HEAP, lsr #32
    // 0x3a848c: b.eq 0x3a8494
    //     0x3a848c: b.eq         0x3a8494
    // 0x3a8490: r0 = call 0x61e04c
    //     0x3a8490: bl           0x61e04c
    // 0x3a8494: r0 = NULL
    //     0x3a8494: mov          r0, NULL
    // 0x3a8498: SP = fp
    //     0x3a8498: mov          SP, fp
    // 0x3a849c: LeaveFrame
    //     0x3a849c: ldp          fp, lr, [SP], #0x10
    // 0x3a84a0: ret
    //     0x3a84a0: ret          
    // 0x3a84a4: r0 = call 0x61fa28
    //     0x3a84a4: bl           0x61fa28
    // 0x3a84a8: b 0x3a8414
    //     0x3a84a8: b            0x3a8414
  }

  removeHandler() {
    // ** addr: 0x450b98, size: 0x3c
    // 0x450b98: EnterFrame
    //     0x450b98: stp          fp, lr, [SP, #-0x10]!
    //     0x450b9c: mov          fp, SP
    // 0x450ba0: CheckStackOverflow
    //     0x450ba0: ldr          BARRIER, [THR, #0x38]
    //     0x450ba4: cmp          SP, BARRIER
    //     0x450ba8: b.ls         0x450bcc
    // 0x450bac: LoadField: r0 = r1->field_f
    //     0x450bac: ldur         r0, [r1, #0xf]
    //     0x450bb0: add          r0, r0, HEAP, lsl #32
    // 0x450bb4: r1 = r0
    //     0x450bb4: mov          r1, r0
    // 0x450bb8: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::remove()
    //     0x450bb8: bl           0x6110cc
    // 0x450bbc: r0 = NULL
    //     0x450bbc: mov          r0, NULL
    // 0x450bc0: SP = fp
    //     0x450bc0: mov          SP, fp
    // 0x450bc4: LeaveFrame
    //     0x450bc4: ldp          fp, lr, [SP], #0x10
    // 0x450bc8: ret
    //     0x450bc8: ret          
    // 0x450bcc: r0 = call 0x61fa28
    //     0x450bcc: bl           0x61fa28
    // 0x450bd0: b 0x450bac
    //     0x450bd0: b            0x450bac
  }

  registerHandler() {
    // ** addr: 0x4d34c0, size: 0xa8
    // 0x4d34c0: EnterFrame
    //     0x4d34c0: stp          fp, lr, [SP, #-0x10]!
    //     0x4d34c4: mov          fp, SP
    // 0x4d34c8: AllocStack(0x20)
    //     0x4d34c8: sub          SP, SP, #0x20
    //     0x4d34cc: stur         r1, [fp, #-8]
    //     0x4d34d0: stur         r2, [fp, #-0x10]
    //     0x4d34d4: stur         r3, [fp, #-0x18]
    // 0x4d34d8: CheckStackOverflow
    //     0x4d34d8: ldr          BARRIER, [THR, #0x38]
    //     0x4d34dc: cmp          SP, BARRIER
    //     0x4d34e0: b.ls         0x4d3558
    //     0x4d34e4: mov          r1, #1
    // 0x4d34e8: r0 = call 0x61e890
    //     0x4d34e8: bl           0x61e890
    // 0x4d34ec: r4 = r0
    //     0x4d34ec: mov          r4, r0
    //     0x4d34f0: ldur         r0, [fp, #-8]
    //     0x4d34f4: stur         r4, [fp, #-0x20]
    // 0x4d34f8: StoreField: r4->field_f = r0
    //     0x4d34f8: stur         r0, [r4, #0xf]
    // 0x4d34fc: LoadField: r1 = r0->field_f
    //     0x4d34fc: ldur         r1, [r0, #0xf]
    //     0x4d3500: add          r1, r1, HEAP, lsl #32
    //     0x4d3504: ldur         r2, [fp, #-0x10]
    //     0x4d3508: ldur         r3, [fp, #-0x18]
    // 0x4d350c: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x4d350c: bl           0x6164d4
    //     0x4d3510: ldur         r0, [fp, #-8]
    // 0x4d3514: LoadField: r3 = r0->field_b
    //     0x4d3514: ldur         r3, [r0, #0xb]
    //     0x4d3518: add          r3, r3, HEAP, lsl #32
    // 0x4d351c: BARRIER = pp[0x40]
    //     0x4d351c: ldr          BARRIER, [PP, #0x40]
    //     0x4d3520: cmp          r3, r16
    // 0x4d3524: b.eq 0x4d3560
    //     0x4d3524: b.eq         0x4d3560
    //     0x4d3528: ldur         r2, [fp, #-0x20]
    //     0x4d352c: stur         r3, [fp, #-0x10]
    // 0x4d3530: r1 = pp[0x3fc]
    //     0x4d3530: add          r1, PP, #0xc, lsl #12
    //     0x4d3534: ldr          r1, [r1, #0x3f0]
    // 0x4d3538: r0 = call 0x61ec54
    //     0x4d3538: bl           0x61ec54
    //     0x4d353c: ldur         r1, [fp, #-0x10]
    // 0x4d3540: r2 = r0
    //     0x4d3540: mov          r2, r0
    // 0x4d3544: r0 = flutter$src$services$platform_channel_MethodChannel::setMethodCallHandler()
    //     0x4d3544: bl           0x2ff004
    // 0x4d3548: r0 = NULL
    //     0x4d3548: mov          r0, NULL
    // 0x4d354c: SP = fp
    //     0x4d354c: mov          SP, fp
    // 0x4d3550: LeaveFrame
    //     0x4d3550: ldp          fp, lr, [SP], #0x10
    // 0x4d3554: ret
    //     0x4d3554: ret          
    // 0x4d3558: r0 = call 0x61fa28
    //     0x4d3558: bl           0x61fa28
    // 0x4d355c: b 0x4d34e4
    //     0x4d355c: b            0x4d34e4
    // 0x4d3560: r9 = pp[0x22c8]
    //     0x4d3560: ldr          r9, [PP, #0x22c8]
    // 0x4d3564: r0 = call 0x620258
    //     0x4d3564: bl           0x620258
  }

  _anon_closure() {
    // ** addr: 0x4d3568, size: 0x144
    // 0x4d3568: EnterFrame
    //     0x4d3568: stp          fp, lr, [SP, #-0x10]!
    //     0x4d356c: mov          fp, SP
    // 0x4d3570: AllocStack(0x38)
    //     0x4d3570: sub          SP, SP, #0x38
    //     0x4d3574: stur         NULL, [fp, #-8]
    //     0x4d3578: mov          r0, #0
    //     0x4d357c: add          r1, fp, r0, sxtw #2
    // 0x4d3580: LoadField: r1 = r1->field_18
    //     0x4d3580: ldr          r1, [r1, #0x18]
    //     0x4d3584: add          r2, fp, r0, sxtw #2
    // 0x4d3588: LoadField: r2 = r2->field_10
    //     0x4d3588: ldr          r2, [r2, #0x10]
    //     0x4d358c: stur         r2, [fp, #-0x18]
    // 0x4d3590: ArrayLoad: r3 = r1[0]  ; List_8
    //     0x4d3590: ldur         r3, [r1, #0x17]
    //     0x4d3594: add          r3, r3, HEAP, lsl #32
    //     0x4d3598: stur         r3, [fp, #-0x10]
    // 0x4d359c: CheckStackOverflow
    //     0x4d359c: ldr          BARRIER, [THR, #0x38]
    //     0x4d35a0: cmp          SP, BARRIER
    //     0x4d35a4: b.ls         0x4d36a4
    // 0x4d35a8: r0 = NULL
    //     0x4d35a8: mov          r0, NULL
    // 0x4d35ac: r0 = call 0x2b16e4
    //     0x4d35ac: bl           0x2b16e4
    //     0x4d35b0: ldur         r0, [fp, #-0x10]
    // 0x4d35b4: LoadField: r1 = r0->field_f
    //     0x4d35b4: ldur         r1, [r0, #0xf]
    //     0x4d35b8: add          r1, r1, HEAP, lsl #32
    // 0x4d35bc: LoadField: r3 = r1->field_f
    //     0x4d35bc: ldur         r3, [r1, #0xf]
    //     0x4d35c0: add          r3, r3, HEAP, lsl #32
    //     0x4d35c4: ldur         r4, [fp, #-0x18]
    //     0x4d35c8: stur         r3, [fp, #-0x28]
    // 0x4d35cc: LoadField: r5 = r4->field_7
    //     0x4d35cc: ldur         r5, [r4, #7]
    //     0x4d35d0: add          r5, r5, HEAP, lsl #32
    // 0x4d35d4: r1 = r3
    //     0x4d35d4: mov          r1, r3
    // 0x4d35d8: r2 = r5
    //     0x4d35d8: mov          r2, r5
    //     0x4d35dc: stur         r5, [fp, #-0x20]
    // 0x4d35e0: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData()
    //     0x4d35e0: bl           0x61c9d0
    // 0x4d35e4: r1 = r0
    //     0x4d35e4: mov          r1, r0
    //     0x4d35e8: ldur         r0, [fp, #-0x28]
    // 0x4d35ec: LoadField: r2 = r0->field_f
    //     0x4d35ec: ldur         r2, [r0, #0xf]
    //     0x4d35f0: add          r2, r2, HEAP, lsl #32
    //     0x4d35f4: cmp          r2, r1
    // 0x4d35f8: b.ne 0x4d3604
    //     0x4d35f8: b.ne         0x4d3604
    // 0x4d35fc: r0 = NULL
    //     0x4d35fc: mov          r0, NULL
    // 0x4d3600: b 0x4d3608
    //     0x4d3600: b            0x4d3608
    // 0x4d3604: r0 = r1
    //     0x4d3604: mov          r0, r1
    //     0x4d3608: stur         r0, [fp, #-0x28]
    //     0x4d360c: cmp          r0, r22
    // 0x4d3610: b.eq 0x4d369c
    //     0x4d3610: b.eq         0x4d369c
    //     0x4d3614: ldur         r3, [fp, #-0x18]
    //     0x4d3618: ldur         r4, [fp, #-0x20]
    // 0x4d361c: r1 = NULL
    //     0x4d361c: mov          r1, NULL
    //     0x4d3620: mov          r2, #8
    // 0x4d3624: r0 = call 0x61f920
    //     0x4d3624: bl           0x61f920
    // 0x4d3628: BARRIER = pp[0x404]
    //     0x4d3628: add          BARRIER, PP, #0xc, lsl #12
    //     0x4d362c: ldr          BARRIER, [BARRIER, #0x3f8]
    // 0x4d3630: StoreField: r0->field_f = r16
    //     0x4d3630: stur         r16, [r0, #0xf]
    //     0x4d3634: ldur         r1, [fp, #-0x20]
    // 0x4d3638: StoreField: r0->field_13 = r1
    //     0x4d3638: stur         r1, [r0, #0x13]
    // 0x4d363c: BARRIER = pp[0x40c]
    //     0x4d363c: add          BARRIER, PP, #0xc, lsl #12
    //     0x4d3640: ldr          BARRIER, [BARRIER, #0x400]
    // 0x4d3644: ArrayStore: r0[0] = r16  ; List_8
    //     0x4d3644: stur         r16, [r0, #0x17]
    //     0x4d3648: ldur         r1, [fp, #-0x18]
    // 0x4d364c: LoadField: r2 = r1->field_b
    //     0x4d364c: ldur         r2, [r1, #0xb]
    //     0x4d3650: add          r2, r2, HEAP, lsl #32
    //     0x4d3654: stur         r2, [fp, #-0x20]
    // 0x4d3658: StoreField: r0->field_1b = r2
    //     0x4d3658: stur         r2, [r0, #0x1b]
    //     0x4d365c: str          r0, [SP]
    // 0x4d3660: r0 = dart_core__StringBase::_interpolate()
    //     0x4d3660: bl           0x2ad854
    //     0x4d3664: ldur         r0, [fp, #-0x20]
    //     0x4d3668: cmp          r0, r22
    // 0x4d366c: b.ne 0x4d3674
    //     0x4d366c: b.ne         0x4d3674
    // 0x4d3670: r0 = pp[0x148]
    //     0x4d3670: ldr          r0, [PP, #0x148]
    //     0x4d3674: ldur         BARRIER, [fp, #-0x28]
    //     0x4d3678: stp          r0, BARRIER, [SP]
    //     0x4d367c: ldur         r0, [fp, #-0x28]
    // 0x4d3680: r4 = pp[0x140]
    //     0x4d3680: ldr          r4, [PP, #0x140]
    // 0x4d3684: LoadField: r2 = r0->field_1f
    //     0x4d3684: ldur         r2, [r0, #0x1f]
    // 0x4d3688: r0 = [R]()
    //     0x4d3688: blr          r2
    // 0x4d368c: r1 = r0
    //     0x4d368c: mov          r1, r0
    //     0x4d3690: stur         r1, [fp, #-0x18]
    // 0x4d3694: r0 = call 0x2b13a0
    //     0x4d3694: bl           0x2b13a0
    // 0x4d3698: b 0x2b19a0
    //     0x4d3698: b            0x2b19a0
    // 0x4d369c: r0 = NULL
    //     0x4d369c: mov          r0, NULL
    // 0x4d36a0: b 0x2b16b8
    //     0x4d36a0: b            0x2b16b8
    // 0x4d36a4: r0 = call 0x61fa28
    //     0x4d36a4: bl           0x61fa28
    // 0x4d36a8: b 0x4d35a8
    //     0x4d36a8: b            0x4d35a8
  }
