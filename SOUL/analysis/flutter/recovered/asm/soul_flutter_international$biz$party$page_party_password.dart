// lib: , url: soul_flutter_international$biz$party$page_party_password


  build() {
    // ** addr: 0x424740, size: 0xd4
    // 0x424740: EnterFrame
    //     0x424740: stp          fp, lr, [SP, #-0x10]!
    //     0x424744: mov          fp, SP
    // 0x424748: AllocStack(0x20)
    //     0x424748: sub          SP, SP, #0x20
    //     0x42474c: stur         r1, [fp, #-8]
    // 0x424750: CheckStackOverflow
    //     0x424750: ldr          BARRIER, [THR, #0x38]
    //     0x424754: cmp          SP, BARRIER
    //     0x424758: b.ls         0x42480c
    //     0x42475c: mov          r1, #1
    // 0x424760: r0 = call 0x61e890
    //     0x424760: bl           0x61e890
    // 0x424764: r1 = r0
    //     0x424764: mov          r1, r0
    //     0x424768: ldur         r0, [fp, #-8]
    //     0x42476c: stur         r1, [fp, #-0x10]
    // 0x424770: StoreField: r1->field_f = r0
    //     0x424770: stur         r0, [r1, #0xf]
    // 0x424774: r0 = soul_flutter_international$res$colors_SOColors::get_color_0b005c()
    //     0x424774: bl           0x424814
    //     0x424778: ldur         r2, [fp, #-0x10]
    // 0x42477c: r1 = pp[0xf1]
    //     0x42477c: add          r1, PP, #0x11, lsl #12
    //     0x424780: ldr          r1, [r1, #0xe0]
    //     0x424784: stur         r0, [fp, #-8]
    // 0x424788: r0 = call 0x61ec54
    //     0x424788: bl           0x61ec54
    // 0x42478c: r1 = pp[0xf9]
    //     0x42478c: add          r1, PP, #0x11, lsl #12
    //     0x424790: ldr          r1, [r1, #0xe8]
    //     0x424794: stur         r0, [fp, #-0x18]
    // 0x424798: r0 = call 0x41a414
    //     0x424798: bl           0x41a414
    // 0x42479c: r3 = r0
    //     0x42479c: mov          r3, r0
    //     0x4247a0: ldur         r0, [fp, #-0x18]
    //     0x4247a4: stur         r3, [fp, #-0x20]
    // 0x4247a8: StoreField: r3->field_13 = r0
    //     0x4247a8: stur         r0, [r3, #0x13]
    //     0x4247ac: ldur         r2, [fp, #-0x10]
    // 0x4247b0: r1 = pp[0x101]
    //     0x4247b0: add          r1, PP, #0x11, lsl #12
    //     0x4247b4: ldr          r1, [r1, #0xf0]
    // 0x4247b8: r0 = call 0x61ec54
    //     0x4247b8: bl           0x61ec54
    // 0x4247bc: r1 = pp[0xf9]
    //     0x4247bc: add          r1, PP, #0x11, lsl #12
    //     0x4247c0: ldr          r1, [r1, #0xe8]
    //     0x4247c4: stur         r0, [fp, #-0x10]
    // 0x4247c8: r0 = call 0x3b81c4
    //     0x4247c8: bl           0x3b81c4
    // 0x4247cc: r1 = r0
    //     0x4247cc: mov          r1, r0
    //     0x4247d0: ldur         r2, [fp, #-0x20]
    //     0x4247d4: ldur         r3, [fp, #-0x10]
    // 0x4247d8: r5 = NULL
    //     0x4247d8: mov          r5, NULL
    //     0x4247dc: stur         r0, [fp, #-0x10]
    // 0x4247e0: r0 = provider$src$provider_InheritedProvider::ctor()
    //     0x4247e0: bl           0x3b7e8c
    // 0x4247e4: r0 = call 0x3b7d48
    //     0x4247e4: bl           0x3b7d48
    // 0x4247e8: r1 = pp[0x148]
    //     0x4247e8: ldr          r1, [PP, #0x148]
    // 0x4247ec: StoreField: r0->field_b = r1
    //     0x4247ec: stur         r1, [r0, #0xb]
    //     0x4247f0: ldur         r1, [fp, #-8]
    // 0x4247f4: ArrayStore: r0[0] = r1  ; List_8
    //     0x4247f4: stur         r1, [r0, #0x17]
    //     0x4247f8: ldur         r1, [fp, #-0x10]
    // 0x4247fc: StoreField: r0->field_1b = r1
    //     0x4247fc: stur         r1, [r0, #0x1b]
    // 0x424800: SP = fp
    //     0x424800: mov          SP, fp
    // 0x424804: LeaveFrame
    //     0x424804: ldp          fp, lr, [SP], #0x10
    // 0x424808: ret
    //     0x424808: ret          
    // 0x42480c: r0 = call 0x61fa28
    //     0x42480c: bl           0x61fa28
    // 0x424810: b 0x42475c
    //     0x424810: b            0x42475c
  }

  _anon_closure() {
    // ** addr: 0x4248b8, size: 0xd8
    // 0x4248b8: EnterFrame
    //     0x4248b8: stp          fp, lr, [SP, #-0x10]!
    //     0x4248bc: mov          fp, SP
    // 0x4248c0: AllocStack(0x18)
    //     0x4248c0: sub          SP, SP, #0x18
    //     0x4248c4: ldr          r0, [fp, #0x28]
    // 0x4248c8: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x4248c8: ldur         r2, [r0, #0x17]
    //     0x4248cc: add          r2, r2, HEAP, lsl #32
    //     0x4248d0: stur         r2, [fp, #-8]
    // 0x4248d4: CheckStackOverflow
    //     0x4248d4: ldr          BARRIER, [THR, #0x38]
    //     0x4248d8: cmp          SP, BARRIER
    //     0x4248dc: b.ls         0x424988
    // 0x4248e0: LoadField: r1 = r2->field_f
    //     0x4248e0: ldur         r1, [r2, #0xf]
    //     0x4248e4: add          r1, r1, HEAP, lsl #32
    // 0x4248e8: r0 = soul_flutter_international$biz$party$page_party_password__PartyPasswordState::_buildSnapshot()
    //     0x4248e8: bl           0x426d0c
    // 0x4248ec: r2 = r0
    //     0x4248ec: mov          r2, r0
    //     0x4248f0: ldur         r0, [fp, #-8]
    //     0x4248f4: stur         r2, [fp, #-0x10]
    // 0x4248f8: LoadField: r1 = r0->field_f
    //     0x4248f8: ldur         r1, [r0, #0xf]
    //     0x4248fc: add          r1, r1, HEAP, lsl #32
    // 0x424900: r0 = soul_flutter_international$biz$party$page_party_password__PartyPasswordState::_buildOperation()
    //     0x424900: bl           0x424990
    // 0x424904: r1 = NULL
    //     0x424904: mov          r1, NULL
    //     0x424908: mov          r2, #4
    //     0x42490c: stur         r0, [fp, #-8]
    // 0x424910: r0 = call 0x61f920
    //     0x424910: bl           0x61f920
    // 0x424914: r2 = r0
    //     0x424914: mov          r2, r0
    //     0x424918: ldur         r0, [fp, #-0x10]
    //     0x42491c: stur         r2, [fp, #-0x18]
    // 0x424920: StoreField: r2->field_f = r0
    //     0x424920: stur         r0, [r2, #0xf]
    //     0x424924: ldur         r0, [fp, #-8]
    // 0x424928: StoreField: r2->field_13 = r0
    //     0x424928: stur         r0, [r2, #0x13]
    // 0x42492c: r1 = pp[0x5c58]
    //     0x42492c: ldr          r1, [PP, #0x5c58]
    // 0x424930: r0 = call 0x61e854
    //     0x424930: bl           0x61e854
    // 0x424934: r1 = r0
    //     0x424934: mov          r1, r0
    //     0x424938: ldur         r0, [fp, #-0x18]
    //     0x42493c: stur         r1, [fp, #-8]
    // 0x424940: StoreField: r1->field_f = r0
    //     0x424940: stur         r0, [r1, #0xf]
    //     0x424944: mov          r0, #4
    // 0x424948: StoreField: r1->field_b = r0
    //     0x424948: stur         r0, [r1, #0xb]
    // 0x42494c: r0 = call 0x39e6f4
    //     0x42494c: bl           0x39e6f4
    // 0x424950: r1 = pp[0xf0e]
    //     0x424950: add          r1, PP, #0xe, lsl #12
    //     0x424954: ldr          r1, [r1, #0xf00]
    // 0x424958: StoreField: r0->field_f = r1
    //     0x424958: stur         r1, [r0, #0xf]
    // 0x42495c: r1 = pp[0xf16]
    //     0x42495c: add          r1, PP, #0xe, lsl #12
    //     0x424960: ldr          r1, [r1, #0xf08]
    // 0x424964: ArrayStore: r0[0] = r1  ; List_8
    //     0x424964: stur         r1, [r0, #0x17]
    // 0x424968: r1 = pp[0xf1e]
    //     0x424968: add          r1, PP, #0xe, lsl #12
    //     0x42496c: ldr          r1, [r1, #0xf10]
    // 0x424970: StoreField: r0->field_1b = r1
    //     0x424970: stur         r1, [r0, #0x1b]
    //     0x424974: ldur         r1, [fp, #-8]
    // 0x424978: StoreField: r0->field_b = r1
    //     0x424978: stur         r1, [r0, #0xb]
    // 0x42497c: SP = fp
    //     0x42497c: mov          SP, fp
    // 0x424980: LeaveFrame
    //     0x424980: ldp          fp, lr, [SP], #0x10
    // 0x424984: ret
    //     0x424984: ret          
    // 0x424988: r0 = call 0x61fa28
    //     0x424988: bl           0x61fa28
    // 0x42498c: b 0x4248e0
    //     0x42498c: b            0x4248e0
  }

  _buildOperation() {
    // ** addr: 0x424990, size: 0x558
    // 0x424990: EnterFrame
    //     0x424990: stp          fp, lr, [SP, #-0x10]!
    //     0x424994: mov          fp, SP
    // 0x424998: AllocStack(0x70)
    //     0x424998: sub          SP, SP, #0x70
    //     0x42499c: stur         r1, [fp, #-8]
    // 0x4249a0: CheckStackOverflow
    //     0x4249a0: ldr          BARRIER, [THR, #0x38]
    //     0x4249a4: cmp          SP, BARRIER
    //     0x4249a8: b.ls         0x424edc
    //     0x4249ac: mov          r1, #1
    // 0x4249b0: r0 = call 0x61e890
    //     0x4249b0: bl           0x61e890
    // 0x4249b4: r1 = r0
    //     0x4249b4: mov          r1, r0
    //     0x4249b8: ldur         r0, [fp, #-8]
    //     0x4249bc: stur         r1, [fp, #-0x10]
    // 0x4249c0: StoreField: r1->field_f = r0
    //     0x4249c0: stur         r0, [r1, #0xf]
    // 0x4249c4: r0 = call 0x3a142c
    //     0x4249c4: bl           0x3a142c
    // 0x4249c8: r1 = r0
    //     0x4249c8: mov          r1, r0
    // 0x4249cc: r0 = pp[0x317]
    //     0x4249cc: add          r0, PP, #0xf, lsl #12
    //     0x4249d0: ldr          r0, [r0, #0x308]
    //     0x4249d4: stur         r1, [fp, #-0x18]
    // 0x4249d8: StoreField: r1->field_b = r0
    //     0x4249d8: stur         r0, [r1, #0xb]
    // 0x4249dc: r0 = pp[0x17f]
    //     0x4249dc: add          r0, PP, #0xf, lsl #12
    //     0x4249e0: ldr          r0, [r0, #0x170]
    // 0x4249e4: StoreField: r1->field_f = r0
    //     0x4249e4: stur         r0, [r1, #0xf]
    // 0x4249e8: r2 = pp[0x5458]
    //     0x4249e8: ldr          r2, [PP, #0x5458]
    // 0x4249ec: StoreField: r1->field_13 = r2
    //     0x4249ec: stur         r2, [r1, #0x13]
    // 0x4249f0: ArrayStore: r1[0] = r2  ; List_8
    //     0x4249f0: stur         r2, [r1, #0x17]
    // 0x4249f4: r0 = call 0x3949ec
    //     0x4249f4: bl           0x3949ec
    // 0x4249f8: r1 = r0
    //     0x4249f8: mov          r1, r0
    // 0x4249fc: r0 = pp[0x31f]
    //     0x4249fc: add          r0, PP, #0xf, lsl #12
    //     0x424a00: ldr          r0, [r0, #0x310]
    //     0x424a04: stur         r1, [fp, #-0x20]
    // 0x424a08: StoreField: r1->field_f = r0
    //     0x424a08: stur         r0, [r1, #0xf]
    // 0x424a0c: StoreField: r1->field_13 = r0
    //     0x424a0c: stur         r0, [r1, #0x13]
    //     0x424a10: ldur         r2, [fp, #-0x18]
    // 0x424a14: StoreField: r1->field_b = r2
    //     0x424a14: stur         r2, [r1, #0xb]
    // 0x424a18: r0 = call 0x3a1d94
    //     0x424a18: bl           0x3a1d94
    //     0x424a1c: stur         r0, [fp, #-0x18]
    // 0x424a20: BARRIER = pp[0x327]
    //     0x424a20: add          BARRIER, PP, #0xf, lsl #12
    //     0x424a24: ldr          BARRIER, [BARRIER, #0x318]
    //     0x424a28: ldur         lr, [fp, #-0x20]
    //     0x424a2c: stp          lr, BARRIER, [SP]
    // 0x424a30: r1 = r0
    //     0x424a30: mov          r1, r0
    // 0x424a34: r4 = pp[0x214]
    //     0x424a34: add          r4, PP, #0xc, lsl #12
    //     0x424a38: ldr          r4, [r4, #0x208]
    // 0x424a3c: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x424a3c: bl           0x3a18c4
    // 0x424a40: r0 = call 0x391c0c
    //     0x424a40: bl           0x391c0c
    // 0x424a44: r1 = r0
    //     0x424a44: mov          r1, r0
    // 0x424a48: r0 = pp[0x109]
    //     0x424a48: add          r0, PP, #0x11, lsl #12
    //     0x424a4c: ldr          r0, [r0, #0xf8]
    //     0x424a50: stur         r1, [fp, #-0x20]
    // 0x424a54: StoreField: r1->field_f = r0
    //     0x424a54: stur         r0, [r1, #0xf]
    //     0x424a58: ldur         r0, [fp, #-0x18]
    // 0x424a5c: StoreField: r1->field_b = r0
    //     0x424a5c: stur         r0, [r1, #0xb]
    // 0x424a60: r0 = call 0x421f24
    //     0x424a60: bl           0x421f24
    // 0x424a64: r1 = r0
    //     0x424a64: mov          r1, r0
    //     0x424a68: mov          r0, #1
    //     0x424a6c: stur         r1, [fp, #-0x18]
    // 0x424a70: StoreField: r1->field_b = r0
    //     0x424a70: stur         r0, [r1, #0xb]
    // 0x424a74: r0 = call 0x28d374
    //     0x424a74: bl           0x28d374
    // 0x424a78: r3 = r0
    //     0x424a78: mov          r3, r0
    //     0x424a7c: mov          r0, #0x4240
    //     0x424a80: movk         r0, #0xf, lsl #16
    //     0x424a84: stur         r3, [fp, #-0x28]
    // 0x424a88: StoreField: r3->field_7 = r0
    //     0x424a88: stur         r0, [r3, #7]
    //     0x424a8c: ldur         r2, [fp, #-0x10]
    // 0x424a90: r1 = pp[0x111]
    //     0x424a90: add          r1, PP, #0x11, lsl #12
    //     0x424a94: ldr          r1, [r1, #0x100]
    // 0x424a98: r0 = call 0x61ec54
    //     0x424a98: bl           0x61ec54
    //     0x424a9c: stur         r0, [fp, #-0x30]
    //     0x424aa0: mov          r1, #3
    // 0x424aa4: r0 = call 0x61e890
    //     0x424aa4: bl           0x61e890
    // 0x424aa8: r1 = r0
    //     0x424aa8: mov          r1, r0
    //     0x424aac: ldur         r0, [fp, #-0x30]
    //     0x424ab0: stur         r1, [fp, #-0x38]
    // 0x424ab4: StoreField: r1->field_f = r0
    //     0x424ab4: stur         r0, [r1, #0xf]
    //     0x424ab8: ldur         r0, [fp, #-0x28]
    // 0x424abc: StoreField: r1->field_13 = r0
    //     0x424abc: stur         r0, [r1, #0x13]
    //     0x424ac0: add          r0, NULL, #0x20
    // 0x424ac4: ArrayStore: r1[0] = r0  ; List_8
    //     0x424ac4: stur         r0, [r1, #0x17]
    // 0x424ac8: r0 = call 0x3a142c
    //     0x424ac8: bl           0x3a142c
    // 0x424acc: r1 = r0
    //     0x424acc: mov          r1, r0
    // 0x424ad0: r0 = pp[0x119]
    //     0x424ad0: add          r0, PP, #0x11, lsl #12
    //     0x424ad4: ldr          r0, [r0, #0x108]
    //     0x424ad8: stur         r1, [fp, #-0x28]
    // 0x424adc: StoreField: r1->field_b = r0
    //     0x424adc: stur         r0, [r1, #0xb]
    // 0x424ae0: r0 = pp[0x17f]
    //     0x424ae0: add          r0, PP, #0xf, lsl #12
    //     0x424ae4: ldr          r0, [r0, #0x170]
    // 0x424ae8: StoreField: r1->field_f = r0
    //     0x424ae8: stur         r0, [r1, #0xf]
    // 0x424aec: r0 = pp[0x5458]
    //     0x424aec: ldr          r0, [PP, #0x5458]
    // 0x424af0: StoreField: r1->field_13 = r0
    //     0x424af0: stur         r0, [r1, #0x13]
    // 0x424af4: ArrayStore: r1[0] = r0  ; List_8
    //     0x424af4: stur         r0, [r1, #0x17]
    // 0x424af8: r0 = call 0x3949ec
    //     0x424af8: bl           0x3949ec
    // 0x424afc: r1 = r0
    //     0x424afc: mov          r1, r0
    // 0x424b00: r0 = pp[0x31f]
    //     0x424b00: add          r0, PP, #0xf, lsl #12
    //     0x424b04: ldr          r0, [r0, #0x310]
    //     0x424b08: stur         r1, [fp, #-0x30]
    // 0x424b0c: StoreField: r1->field_f = r0
    //     0x424b0c: stur         r0, [r1, #0xf]
    // 0x424b10: StoreField: r1->field_13 = r0
    //     0x424b10: stur         r0, [r1, #0x13]
    //     0x424b14: ldur         r0, [fp, #-0x28]
    // 0x424b18: StoreField: r1->field_b = r0
    //     0x424b18: stur         r0, [r1, #0xb]
    // 0x424b1c: r0 = call 0x3a1d94
    //     0x424b1c: bl           0x3a1d94
    //     0x424b20: ldur         r2, [fp, #-0x38]
    // 0x424b24: r1 = pp[0x121]
    //     0x424b24: add          r1, PP, #0x11, lsl #12
    //     0x424b28: ldr          r1, [r1, #0x110]
    //     0x424b2c: stur         r0, [fp, #-0x28]
    // 0x424b30: r0 = call 0x61ec54
    //     0x424b30: bl           0x61ec54
    //     0x424b34: ldur         BARRIER, [fp, #-0x30]
    //     0x424b38: stp          BARRIER, r0, [SP]
    //     0x424b3c: ldur         r1, [fp, #-0x28]
    // 0x424b40: r4 = pp[0x214]
    //     0x424b40: add          r4, PP, #0xc, lsl #12
    //     0x424b44: ldr          r4, [r4, #0x208]
    // 0x424b48: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x424b48: bl           0x3a18c4
    // 0x424b4c: r0 = call 0x391c0c
    //     0x424b4c: bl           0x391c0c
    // 0x424b50: r3 = r0
    //     0x424b50: mov          r3, r0
    // 0x424b54: r0 = pp[0x129]
    //     0x424b54: add          r0, PP, #0x11, lsl #12
    //     0x424b58: ldr          r0, [r0, #0x118]
    //     0x424b5c: stur         r3, [fp, #-0x30]
    // 0x424b60: StoreField: r3->field_f = r0
    //     0x424b60: stur         r0, [r3, #0xf]
    //     0x424b64: ldur         r0, [fp, #-0x28]
    // 0x424b68: StoreField: r3->field_b = r0
    //     0x424b68: stur         r0, [r3, #0xb]
    // 0x424b6c: r1 = NULL
    //     0x424b6c: mov          r1, NULL
    //     0x424b70: mov          r2, #6
    // 0x424b74: r0 = call 0x61f920
    //     0x424b74: bl           0x61f920
    // 0x424b78: r2 = r0
    //     0x424b78: mov          r2, r0
    //     0x424b7c: ldur         r0, [fp, #-0x20]
    //     0x424b80: stur         r2, [fp, #-0x28]
    // 0x424b84: StoreField: r2->field_f = r0
    //     0x424b84: stur         r0, [r2, #0xf]
    //     0x424b88: ldur         r0, [fp, #-0x18]
    // 0x424b8c: StoreField: r2->field_13 = r0
    //     0x424b8c: stur         r0, [r2, #0x13]
    //     0x424b90: ldur         r0, [fp, #-0x30]
    // 0x424b94: ArrayStore: r2[0] = r0  ; List_8
    //     0x424b94: stur         r0, [r2, #0x17]
    // 0x424b98: r1 = pp[0x5c58]
    //     0x424b98: ldr          r1, [PP, #0x5c58]
    // 0x424b9c: r0 = call 0x61e854
    //     0x424b9c: bl           0x61e854
    // 0x424ba0: r1 = r0
    //     0x424ba0: mov          r1, r0
    //     0x424ba4: ldur         r0, [fp, #-0x28]
    //     0x424ba8: stur         r1, [fp, #-0x18]
    // 0x424bac: StoreField: r1->field_f = r0
    //     0x424bac: stur         r0, [r1, #0xf]
    //     0x424bb0: mov          r2, #6
    // 0x424bb4: StoreField: r1->field_b = r2
    //     0x424bb4: stur         r2, [r1, #0xb]
    // 0x424bb8: r0 = call 0x3a1414
    //     0x424bb8: bl           0x3a1414
    // 0x424bbc: r1 = r0
    //     0x424bbc: mov          r1, r0
    // 0x424bc0: r0 = pp[0x5140]
    //     0x424bc0: ldr          r0, [PP, #0x5140]
    //     0x424bc4: stur         r1, [fp, #-0x20]
    // 0x424bc8: StoreField: r1->field_f = r0
    //     0x424bc8: stur         r0, [r1, #0xf]
    // 0x424bcc: r0 = pp[0xaee]
    //     0x424bcc: add          r0, PP, #0xe, lsl #12
    //     0x424bd0: ldr          r0, [r0, #0xae0]
    // 0x424bd4: StoreField: r1->field_13 = r0
    //     0x424bd4: stur         r0, [r1, #0x13]
    // 0x424bd8: r2 = pp[0xaf6]
    //     0x424bd8: add          r2, PP, #0xe, lsl #12
    //     0x424bdc: ldr          r2, [r2, #0xae8]
    // 0x424be0: ArrayStore: r1[0] = r2  ; List_8
    //     0x424be0: stur         r2, [r1, #0x17]
    // 0x424be4: r3 = pp[0xb6e]
    //     0x424be4: add          r3, PP, #0xe, lsl #12
    //     0x424be8: ldr          r3, [r3, #0xb60]
    // 0x424bec: StoreField: r1->field_1b = r3
    //     0x424bec: stur         r3, [r1, #0x1b]
    // 0x424bf0: r4 = pp[0xb06]
    //     0x424bf0: add          r4, PP, #0xe, lsl #12
    //     0x424bf4: ldr          r4, [r4, #0xaf8]
    // 0x424bf8: StoreField: r1->field_23 = r4
    //     0x424bf8: stur         r4, [r1, #0x23]
    // 0x424bfc: r5 = pp[0xb2]
    //     0x424bfc: add          r5, PP, #0xa, lsl #12
    //     0x424c00: ldr          r5, [r5, #0xa8]
    // 0x424c04: StoreField: r1->field_2b = r5
    //     0x424c04: stur         r5, [r1, #0x2b]
    // 0x424c08: StoreField: r1->field_2f = xzr
    //     0x424c08: stur         xzr, [r1, #0x2f]
    //     0x424c0c: ldur         r6, [fp, #-0x18]
    // 0x424c10: StoreField: r1->field_b = r6
    //     0x424c10: stur         r6, [r1, #0xb]
    // 0x424c14: r0 = call 0x3949ec
    //     0x424c14: bl           0x3949ec
    // 0x424c18: r1 = r0
    //     0x424c18: mov          r1, r0
    // 0x424c1c: r0 = pp[0x218]
    //     0x424c1c: add          r0, PP, #0x10, lsl #12
    //     0x424c20: ldr          r0, [r0, #0x208]
    //     0x424c24: stur         r1, [fp, #-0x18]
    // 0x424c28: StoreField: r1->field_13 = r0
    //     0x424c28: stur         r0, [r1, #0x13]
    //     0x424c2c: ldur         r0, [fp, #-0x20]
    // 0x424c30: StoreField: r1->field_b = r0
    //     0x424c30: stur         r0, [r1, #0xb]
    // 0x424c34: r0 = call 0x421f24
    //     0x424c34: bl           0x421f24
    // 0x424c38: r2 = r0
    //     0x424c38: mov          r2, r0
    //     0x424c3c: mov          r0, #1
    //     0x424c40: stur         r2, [fp, #-0x20]
    // 0x424c44: StoreField: r2->field_b = r0
    //     0x424c44: stur         r0, [r2, #0xb]
    // 0x424c48: r1 = pp[0x6050]
    //     0x424c48: ldr          r1, [PP, #0x6050]
    // 0x424c4c: r0 = soul_flutter_international$res$styles_TextStyles::pageStandardTitle()
    //     0x424c4c: bl           0x41dfb4
    // 0x424c50: BARRIER = pp[0x131]
    //     0x424c50: add          BARRIER, PP, #0x11, lsl #12
    //     0x424c54: ldr          BARRIER, [BARRIER, #0x120]
    //     0x424c58: stp          r0, BARRIER, [SP]
    // 0x424c5c: r4 = pp[0x910]
    //     0x424c5c: ldr          r4, [PP, #0x910]
    // 0x424c60: r0 = flutter$src$widgets$widget_state_WidgetStateProperty::all()
    //     0x424c60: bl           0x41df68
    //     0x424c64: stur         r0, [fp, #-0x28]
    // 0x424c68: BARRIER = pp[0x1a2]
    //     0x424c68: add          BARRIER, PP, #0xa, lsl #12
    //     0x424c6c: ldr          BARRIER, [BARRIER, #0x198]
    // 0x424c70: lr = pp[0x6050]
    //     0x424c70: ldr          lr, [PP, #0x6050]
    //     0x424c74: stp          lr, BARRIER, [SP]
    // 0x424c78: r4 = pp[0x910]
    //     0x424c78: ldr          r4, [PP, #0x910]
    // 0x424c7c: r0 = flutter$src$widgets$widget_state_WidgetStateProperty::all()
    //     0x424c7c: bl           0x41df68
    //     0x424c80: stur         r0, [fp, #-0x30]
    // 0x424c84: r0 = soul_flutter_international$res$colors_SOColors::get_color_3825C5()
    //     0x424c84: bl           0x424ee8
    // 0x424c88: BARRIER = pp[0x1a2]
    //     0x424c88: add          BARRIER, PP, #0xa, lsl #12
    //     0x424c8c: ldr          BARRIER, [BARRIER, #0x198]
    //     0x424c90: stp          r0, BARRIER, [SP]
    // 0x424c94: r4 = pp[0x910]
    //     0x424c94: ldr          r4, [PP, #0x910]
    // 0x424c98: r0 = flutter$src$widgets$widget_state_WidgetStateProperty::all()
    //     0x424c98: bl           0x41df68
    //     0x424c9c: stur         r0, [fp, #-0x38]
    // 0x424ca0: r0 = call 0x352b04
    //     0x424ca0: bl           0x352b04
    //     0x424ca4: fmov         d0, #24.00000000
    //     0x424ca8: stur         r0, [fp, #-0x40]
    // 0x424cac: StoreField: r0->field_7 = d0
    //     0x424cac: stur         d0, [r0, #7]
    // 0x424cb0: StoreField: r0->field_f = d0
    //     0x424cb0: stur         d0, [r0, #0xf]
    // 0x424cb4: r0 = call 0x392f28
    //     0x424cb4: bl           0x392f28
    // 0x424cb8: r1 = r0
    //     0x424cb8: mov          r1, r0
    //     0x424cbc: ldur         r0, [fp, #-0x40]
    //     0x424cc0: stur         r1, [fp, #-0x48]
    // 0x424cc4: StoreField: r1->field_7 = r0
    //     0x424cc4: stur         r0, [r1, #7]
    // 0x424cc8: StoreField: r1->field_b = r0
    //     0x424cc8: stur         r0, [r1, #0xb]
    // 0x424ccc: StoreField: r1->field_f = r0
    //     0x424ccc: stur         r0, [r1, #0xf]
    // 0x424cd0: StoreField: r1->field_13 = r0
    //     0x424cd0: stur         r0, [r1, #0x13]
    // 0x424cd4: r0 = call 0x398b5c
    //     0x424cd4: bl           0x398b5c
    // 0x424cd8: r1 = r0
    //     0x424cd8: mov          r1, r0
    //     0x424cdc: ldur         r0, [fp, #-0x48]
    // 0x424ce0: StoreField: r1->field_b = r0
    //     0x424ce0: stur         r0, [r1, #0xb]
    // 0x424ce4: r0 = pp[0x139]
    //     0x424ce4: add          r0, PP, #0x11, lsl #12
    //     0x424ce8: ldr          r0, [r0, #0x128]
    // 0x424cec: StoreField: r1->field_7 = r0
    //     0x424cec: stur         r0, [r1, #7]
    // 0x424cf0: BARRIER = pp[0x141]
    //     0x424cf0: add          BARRIER, PP, #0x11, lsl #12
    //     0x424cf4: ldr          BARRIER, [BARRIER, #0x130]
    //     0x424cf8: stp          r1, BARRIER, [SP]
    // 0x424cfc: r4 = pp[0x910]
    //     0x424cfc: ldr          r4, [PP, #0x910]
    // 0x424d00: r0 = flutter$src$widgets$widget_state_WidgetStateProperty::all()
    //     0x424d00: bl           0x41df68
    // 0x424d04: r2 = r0
    //     0x424d04: mov          r2, r0
    //     0x424d08: ldur         r0, [fp, #-8]
    //     0x424d0c: stur         r2, [fp, #-0x40]
    // 0x424d10: LoadField: r1 = r0->field_f
    //     0x424d10: ldur         r1, [r0, #0xf]
    //     0x424d14: add          r1, r1, HEAP, lsl #32
    //     0x424d18: cmp          r1, r22
    // 0x424d1c: b.eq 0x424ee4
    //     0x424d1c: b.eq         0x424ee4
    // 0x424d20: r0 = flutter$src$material$theme_Theme::of()
    //     0x424d20: bl           0x318258
    // 0x424d24: LoadField: r1 = r0->field_7b
    //     0x424d24: ldur         r1, [r0, #0x7b]
    //     0x424d28: add          r1, r1, HEAP, lsl #32
    // 0x424d2c: BARRIER = pp[0x1a2]
    //     0x424d2c: add          BARRIER, PP, #0xa, lsl #12
    //     0x424d30: ldr          BARRIER, [BARRIER, #0x198]
    //     0x424d34: stp          r1, BARRIER, [SP]
    // 0x424d38: r4 = pp[0x910]
    //     0x424d38: ldr          r4, [PP, #0x910]
    // 0x424d3c: r0 = flutter$src$widgets$widget_state_WidgetStateProperty::all()
    //     0x424d3c: bl           0x41df68
    //     0x424d40: stur         r0, [fp, #-8]
    // 0x424d44: r0 = call 0x3954f8
    //     0x424d44: bl           0x3954f8
    // 0x424d48: r2 = r0
    //     0x424d48: mov          r2, r0
    //     0x424d4c: ldur         r0, [fp, #-0x28]
    //     0x424d50: stur         r2, [fp, #-0x48]
    // 0x424d54: StoreField: r2->field_7 = r0
    //     0x424d54: stur         r0, [r2, #7]
    //     0x424d58: ldur         r0, [fp, #-0x38]
    // 0x424d5c: StoreField: r2->field_b = r0
    //     0x424d5c: stur         r0, [r2, #0xb]
    //     0x424d60: ldur         r0, [fp, #-0x30]
    // 0x424d64: StoreField: r2->field_f = r0
    //     0x424d64: stur         r0, [r2, #0xf]
    //     0x424d68: ldur         r0, [fp, #-8]
    // 0x424d6c: StoreField: r2->field_13 = r0
    //     0x424d6c: stur         r0, [r2, #0x13]
    //     0x424d70: ldur         r0, [fp, #-0x40]
    // 0x424d74: StoreField: r2->field_3f = r0
    //     0x424d74: stur         r0, [r2, #0x3f]
    // 0x424d78: r1 = pp[0xa64]
    //     0x424d78: add          r1, PP, #0xc, lsl #12
    //     0x424d7c: ldr          r1, [r1, #0xa58]
    // 0x424d80: r4 = pp[0x4c0]
    //     0x424d80: ldr          r4, [PP, #0x4c0]
    // 0x424d84: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x424d84: bl           0x3a1dcc
    //     0x424d88: stur         r0, [fp, #-8]
    // 0x424d8c: r0 = call 0x393bf8
    //     0x424d8c: bl           0x393bf8
    // 0x424d90: r3 = r0
    //     0x424d90: mov          r3, r0
    //     0x424d94: ldur         r0, [fp, #-8]
    //     0x424d98: stur         r3, [fp, #-0x28]
    // 0x424d9c: StoreField: r3->field_b = r0
    //     0x424d9c: stur         r0, [r3, #0xb]
    //     0x424da0: ldur         r2, [fp, #-0x10]
    // 0x424da4: r1 = pp[0x149]
    //     0x424da4: add          r1, PP, #0x11, lsl #12
    //     0x424da8: ldr          r1, [r1, #0x138]
    // 0x424dac: r0 = call 0x61ec54
    //     0x424dac: bl           0x61ec54
    //     0x424db0: stur         r0, [fp, #-8]
    // 0x424db4: r0 = call 0x394b14
    //     0x424db4: bl           0x394b14
    // 0x424db8: r1 = r0
    //     0x424db8: mov          r1, r0
    //     0x424dbc: ldur         r0, [fp, #-8]
    //     0x424dc0: stur         r1, [fp, #-0x10]
    // 0x424dc4: StoreField: r1->field_b = r0
    //     0x424dc4: stur         r0, [r1, #0xb]
    //     0x424dc8: ldur         r0, [fp, #-0x48]
    // 0x424dcc: StoreField: r1->field_1b = r0
    //     0x424dcc: stur         r0, [r1, #0x1b]
    //     0x424dd0: add          r0, NULL, #0x30
    // 0x424dd4: StoreField: r1->field_27 = r0
    //     0x424dd4: stur         r0, [r1, #0x27]
    //     0x424dd8: add          r0, NULL, #0x20
    // 0x424ddc: StoreField: r1->field_2f = r0
    //     0x424ddc: stur         r0, [r1, #0x2f]
    //     0x424de0: ldur         r0, [fp, #-0x28]
    // 0x424de4: StoreField: r1->field_37 = r0
    //     0x424de4: stur         r0, [r1, #0x37]
    // 0x424de8: r0 = call 0x391a04
    //     0x424de8: bl           0x391a04
    //     0x424dec: stur         r0, [fp, #-8]
    // 0x424df0: BARRIER = pp[0x151]
    //     0x424df0: add          BARRIER, PP, #0x11, lsl #12
    //     0x424df4: ldr          BARRIER, [BARRIER, #0x140]
    // 0x424df8: lr = pp[0x5458]
    //     0x424df8: ldr          lr, [PP, #0x5458]
    //     0x424dfc: stp          lr, BARRIER, [SP, #0x18]
    // 0x424e00: BARRIER = pp[0x218]
    //     0x424e00: add          BARRIER, PP, #0x10, lsl #12
    //     0x424e04: ldr          BARRIER, [BARRIER, #0x208]
    // 0x424e08: lr = pp[0x159]
    //     0x424e08: add          lr, PP, #0x11, lsl #12
    //     0x424e0c: ldr          lr, [lr, #0x148]
    //     0x424e10: stp          lr, BARRIER, [SP, #8]
    //     0x424e14: ldur         BARRIER, [fp, #-0x10]
    //     0x424e18: str          BARRIER, [SP]
    // 0x424e1c: r1 = r0
    //     0x424e1c: mov          r1, r0
    // 0x424e20: r4 = pp[0x161]
    //     0x424e20: add          r4, PP, #0x11, lsl #12
    //     0x424e24: ldr          r4, [r4, #0x150]
    // 0x424e28: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x424e28: bl           0x391490
    // 0x424e2c: r1 = NULL
    //     0x424e2c: mov          r1, NULL
    //     0x424e30: mov          r2, #6
    // 0x424e34: r0 = call 0x61f920
    //     0x424e34: bl           0x61f920
    // 0x424e38: r2 = r0
    //     0x424e38: mov          r2, r0
    //     0x424e3c: ldur         r0, [fp, #-0x18]
    //     0x424e40: stur         r2, [fp, #-0x10]
    // 0x424e44: StoreField: r2->field_f = r0
    //     0x424e44: stur         r0, [r2, #0xf]
    //     0x424e48: ldur         r0, [fp, #-0x20]
    // 0x424e4c: StoreField: r2->field_13 = r0
    //     0x424e4c: stur         r0, [r2, #0x13]
    //     0x424e50: ldur         r0, [fp, #-8]
    // 0x424e54: ArrayStore: r2[0] = r0  ; List_8
    //     0x424e54: stur         r0, [r2, #0x17]
    // 0x424e58: r1 = pp[0x5c58]
    //     0x424e58: ldr          r1, [PP, #0x5c58]
    // 0x424e5c: r0 = call 0x61e854
    //     0x424e5c: bl           0x61e854
    // 0x424e60: r1 = r0
    //     0x424e60: mov          r1, r0
    //     0x424e64: ldur         r0, [fp, #-0x10]
    //     0x424e68: stur         r1, [fp, #-8]
    // 0x424e6c: StoreField: r1->field_f = r0
    //     0x424e6c: stur         r0, [r1, #0xf]
    //     0x424e70: mov          r0, #6
    // 0x424e74: StoreField: r1->field_b = r0
    //     0x424e74: stur         r0, [r1, #0xb]
    // 0x424e78: r0 = call 0x39310c
    //     0x424e78: bl           0x39310c
    // 0x424e7c: r1 = pp[0x862]
    //     0x424e7c: add          r1, PP, #0xa, lsl #12
    //     0x424e80: ldr          r1, [r1, #0x858]
    // 0x424e84: StoreField: r0->field_f = r1
    //     0x424e84: stur         r1, [r0, #0xf]
    // 0x424e88: r1 = pp[0xaee]
    //     0x424e88: add          r1, PP, #0xe, lsl #12
    //     0x424e8c: ldr          r1, [r1, #0xae0]
    // 0x424e90: StoreField: r0->field_13 = r1
    //     0x424e90: stur         r1, [r0, #0x13]
    // 0x424e94: r1 = pp[0xaf6]
    //     0x424e94: add          r1, PP, #0xe, lsl #12
    //     0x424e98: ldr          r1, [r1, #0xae8]
    // 0x424e9c: ArrayStore: r0[0] = r1  ; List_8
    //     0x424e9c: stur         r1, [r0, #0x17]
    // 0x424ea0: r1 = pp[0xb6e]
    //     0x424ea0: add          r1, PP, #0xe, lsl #12
    //     0x424ea4: ldr          r1, [r1, #0xb60]
    // 0x424ea8: StoreField: r0->field_1b = r1
    //     0x424ea8: stur         r1, [r0, #0x1b]
    // 0x424eac: r1 = pp[0xb06]
    //     0x424eac: add          r1, PP, #0xe, lsl #12
    //     0x424eb0: ldr          r1, [r1, #0xaf8]
    // 0x424eb4: StoreField: r0->field_23 = r1
    //     0x424eb4: stur         r1, [r0, #0x23]
    // 0x424eb8: r1 = pp[0xb2]
    //     0x424eb8: add          r1, PP, #0xa, lsl #12
    //     0x424ebc: ldr          r1, [r1, #0xa8]
    // 0x424ec0: StoreField: r0->field_2b = r1
    //     0x424ec0: stur         r1, [r0, #0x2b]
    // 0x424ec4: StoreField: r0->field_2f = xzr
    //     0x424ec4: stur         xzr, [r0, #0x2f]
    //     0x424ec8: ldur         r1, [fp, #-8]
    // 0x424ecc: StoreField: r0->field_b = r1
    //     0x424ecc: stur         r1, [r0, #0xb]
    // 0x424ed0: SP = fp
    //     0x424ed0: mov          SP, fp
    // 0x424ed4: LeaveFrame
    //     0x424ed4: ldp          fp, lr, [SP], #0x10
    // 0x424ed8: ret
    //     0x424ed8: ret          
    // 0x424edc: r0 = call 0x61fa28
    //     0x424edc: bl           0x61fa28
    // 0x424ee0: b 0x4249ac
    //     0x424ee0: b            0x4249ac
    // 0x424ee4: r0 = call 0x61ffd0
    //     0x424ee4: bl           0x61ffd0
  }

  _anon_closure() {
    // ** addr: 0x424f34, size: 0xac
    // 0x424f34: EnterFrame
    //     0x424f34: stp          fp, lr, [SP, #-0x10]!
    //     0x424f38: mov          fp, SP
    // 0x424f3c: AllocStack(8)
    //     0x424f3c: sub          SP, SP, #8
    //     0x424f40: ldr          r0, [fp, #0x10]
    // 0x424f44: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x424f44: ldur         r2, [r0, #0x17]
    //     0x424f48: add          r2, r2, HEAP, lsl #32
    //     0x424f4c: stur         r2, [fp, #-8]
    // 0x424f50: CheckStackOverflow
    //     0x424f50: ldr          BARRIER, [THR, #0x38]
    //     0x424f54: cmp          SP, BARRIER
    //     0x424f58: b.ls         0x424fcc
    // 0x424f5c: r1 = pp[0x169]
    //     0x424f5c: add          r1, PP, #0x11, lsl #12
    //     0x424f60: ldr          r1, [r1, #0x158]
    // 0x424f64: r4 = pp[0x4c0]
    //     0x424f64: ldr          r4, [PP, #0x4c0]
    // 0x424f68: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventClick()
    //     0x424f68: bl           0x3a8e60
    // 0x424f6c: r0 = soul_flutter_international$common$plugins$router_RouterNative::_getInstance()
    //     0x424f6c: bl           0x3a86c0
    // 0x424f70: r1 = r0
    //     0x424f70: mov          r1, r0
    // 0x424f74: r2 = pp[0xe59]
    //     0x424f74: add          r2, PP, #9, lsl #12
    //     0x424f78: ldr          r2, [r2, #0xe50]
    // 0x424f7c: r4 = pp[0x278]
    //     0x424f7c: ldr          r4, [PP, #0x278]
    // 0x424f80: r0 = soul_flutter_international$common$plugins$router_RouterNative::routeFlutter()
    //     0x424f80: bl           0x3a99b4
    // 0x424f84: r1 = r0
    //     0x424f84: mov          r1, r0
    //     0x424f88: ldur         r0, [fp, #-8]
    // 0x424f8c: LoadField: r2 = r0->field_f
    //     0x424f8c: ldur         r2, [r0, #0xf]
    //     0x424f90: add          r2, r2, HEAP, lsl #32
    // 0x424f94: LoadField: r3 = r2->field_1f
    //     0x424f94: ldur         r3, [r2, #0x1f]
    //     0x424f98: add          r3, r3, HEAP, lsl #32
    // 0x424f9c: BARRIER = pp[0x40]
    //     0x424f9c: ldr          BARRIER, [PP, #0x40]
    //     0x424fa0: cmp          r3, r16
    // 0x424fa4: b.eq 0x424fd4
    //     0x424fa4: b.eq         0x424fd4
    // 0x424fa8: r2 = pp[0xd58]
    //     0x424fa8: add          r2, PP, #0x10, lsl #12
    //     0x424fac: ldr          r2, [r2, #0xd48]
    // 0x424fb0: r0 = soul_flutter_international$common$plugins$router_SoulNavigator::withString()
    //     0x424fb0: bl           0x3a8024
    // 0x424fb4: r1 = r0
    //     0x424fb4: mov          r1, r0
    // 0x424fb8: r0 = soul_flutter_international$common$plugins$router_SoulNavigator::navigate()
    //     0x424fb8: bl           0x3a6ae8
    // 0x424fbc: r0 = NULL
    //     0x424fbc: mov          r0, NULL
    // 0x424fc0: SP = fp
    //     0x424fc0: mov          SP, fp
    // 0x424fc4: LeaveFrame
    //     0x424fc4: ldp          fp, lr, [SP], #0x10
    // 0x424fc8: ret
    //     0x424fc8: ret          
    // 0x424fcc: r0 = call 0x61fa28
    //     0x424fcc: bl           0x61fa28
    // 0x424fd0: b 0x424f5c
    //     0x424fd0: b            0x424f5c
    // 0x424fd4: r9 = pp[0x171]
    //     0x424fd4: add          r9, PP, #0x11, lsl #12
    //     0x424fd8: ldr          r9, [r9, #0x160]
    // 0x424fdc: r0 = call 0x620258
    //     0x424fdc: bl           0x620258
  }

  _anon_closure() {
    // ** addr: 0x424fe0, size: 0x80
    // 0x424fe0: EnterFrame
    //     0x424fe0: stp          fp, lr, [SP, #-0x10]!
    //     0x424fe4: mov          fp, SP
    // 0x424fe8: AllocStack(0x10)
    //     0x424fe8: sub          SP, SP, #0x10
    //     0x424fec: stur         NULL, [fp, #-8]
    //     0x424ff0: mov          r0, #0
    //     0x424ff4: add          r1, fp, r0, sxtw #2
    // 0x424ff8: LoadField: r1 = r1->field_10
    //     0x424ff8: ldr          r1, [r1, #0x10]
    // 0x424ffc: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x424ffc: ldur         r2, [r1, #0x17]
    //     0x425000: add          r2, r2, HEAP, lsl #32
    //     0x425004: stur         r2, [fp, #-0x10]
    // 0x425008: CheckStackOverflow
    //     0x425008: ldr          BARRIER, [THR, #0x38]
    //     0x42500c: cmp          SP, BARRIER
    //     0x425010: b.ls         0x425058
    // 0x425014: r0 = pp[0xcf0]
    //     0x425014: ldr          r0, [PP, #0xcf0]
    // 0x425018: r0 = call 0x2b16e4
    //     0x425018: bl           0x2b16e4
    // 0x42501c: r1 = pp[0x181]
    //     0x42501c: add          r1, PP, #0x11, lsl #12
    //     0x425020: ldr          r1, [r1, #0x170]
    // 0x425024: r4 = pp[0x4c0]
    //     0x425024: ldr          r4, [PP, #0x4c0]
    // 0x425028: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventClick()
    //     0x425028: bl           0x3a8e60
    //     0x42502c: ldur         r0, [fp, #-0x10]
    // 0x425030: LoadField: r1 = r0->field_f
    //     0x425030: ldur         r1, [r0, #0xf]
    //     0x425034: add          r1, r1, HEAP, lsl #32
    // 0x425038: LoadField: r0 = r1->field_13
    //     0x425038: ldur         r0, [r1, #0x13]
    //     0x42503c: add          r0, r0, HEAP, lsl #32
    // 0x425040: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x425040: ldur         r2, [r1, #0x17]
    //     0x425044: add          r2, r2, HEAP, lsl #32
    // 0x425048: r1 = r0
    //     0x425048: mov          r1, r0
    // 0x42504c: r0 = soul_flutter_international$biz$party$notifier$notifier_party_password_PartyPasswordNotifier::saveSnapshot()
    //     0x42504c: bl           0x425060
    // 0x425050: r0 = NULL
    //     0x425050: mov          r0, NULL
    // 0x425054: b 0x2b16b8
    //     0x425054: b            0x2b16b8
    // 0x425058: r0 = call 0x61fa28
    //     0x425058: bl           0x61fa28
    // 0x42505c: b 0x425014
    //     0x42505c: b            0x425014
  }

  _buildSnapshot() {
    // ** addr: 0x426d0c, size: 0x3e8
    // 0x426d0c: EnterFrame
    //     0x426d0c: stp          fp, lr, [SP, #-0x10]!
    //     0x426d10: mov          fp, SP
    // 0x426d14: AllocStack(0x58)
    //     0x426d14: sub          SP, SP, #0x58
    //     0x426d18: stur         r1, [fp, #-0x10]
    // 0x426d1c: CheckStackOverflow
    //     0x426d1c: ldr          BARRIER, [THR, #0x38]
    //     0x426d20: cmp          SP, BARRIER
    //     0x426d24: b.ls         0x4270ec
    // 0x426d28: ArrayLoad: r0 = r1[0]  ; List_8
    //     0x426d28: ldur         r0, [r1, #0x17]
    //     0x426d2c: add          r0, r0, HEAP, lsl #32
    //     0x426d30: stur         r0, [fp, #-8]
    // 0x426d34: r0 = call 0x31d844
    //     0x426d34: bl           0x31d844
    // 0x426d38: r1 = r0
    //     0x426d38: mov          r1, r0
    // 0x426d3c: r0 = pp[0x6310]
    //     0x426d3c: ldr          r0, [PP, #0x6310]
    //     0x426d40: stur         r1, [fp, #-0x18]
    // 0x426d44: StoreField: r1->field_27 = r0
    //     0x426d44: stur         r0, [r1, #0x27]
    //     0x426d48: fmov         d0, #1.00000000
    // 0x426d4c: StoreField: r1->field_7 = d0
    //     0x426d4c: stur         d0, [r1, #7]
    // 0x426d50: d0 = pp[0x391]
    //     0x426d50: add          r17, PP, #0x11, lsl #12
    //     0x426d54: ldr          d0, [r17, #0x380]
    // 0x426d58: StoreField: r1->field_f = d0
    //     0x426d58: stur         d0, [r1, #0xf]
    // 0x426d5c: ArrayStore: r1[0] = xzr  ; List_8
    //     0x426d5c: stur         xzr, [r1, #0x17]
    // 0x426d60: d0 = pp[0x399]
    //     0x426d60: add          r17, PP, #0x11, lsl #12
    //     0x426d64: ldr          d0, [r17, #0x388]
    // 0x426d68: StoreField: r1->field_1f = d0
    //     0x426d68: stur         d0, [r1, #0x1f]
    // 0x426d6c: r0 = call 0x3a142c
    //     0x426d6c: bl           0x3a142c
    // 0x426d70: r2 = r0
    //     0x426d70: mov          r2, r0
    // 0x426d74: r0 = pp[0x3a1]
    //     0x426d74: add          r0, PP, #0x11, lsl #12
    //     0x426d78: ldr          r0, [r0, #0x390]
    //     0x426d7c: stur         r2, [fp, #-0x20]
    // 0x426d80: StoreField: r2->field_b = r0
    //     0x426d80: stur         r0, [r2, #0xb]
    // 0x426d84: r0 = pp[0x17f]
    //     0x426d84: add          r0, PP, #0xf, lsl #12
    //     0x426d88: ldr          r0, [r0, #0x170]
    // 0x426d8c: StoreField: r2->field_f = r0
    //     0x426d8c: stur         r0, [r2, #0xf]
    // 0x426d90: r1 = pp[0x5458]
    //     0x426d90: ldr          r1, [PP, #0x5458]
    // 0x426d94: StoreField: r2->field_13 = r1
    //     0x426d94: stur         r1, [r2, #0x13]
    // 0x426d98: r1 = pp[0x3a9]
    //     0x426d98: add          r1, PP, #0x11, lsl #12
    //     0x426d9c: ldr          r1, [r1, #0x398]
    // 0x426da0: StoreField: r2->field_1b = r1
    //     0x426da0: stur         r1, [r2, #0x1b]
    // 0x426da4: r1 = pp[0xb0c]
    //     0x426da4: add          r1, PP, #0xc, lsl #12
    //     0x426da8: ldr          r1, [r1, #0xb00]
    // 0x426dac: r4 = pp[0x4c0]
    //     0x426dac: ldr          r4, [PP, #0x4c0]
    // 0x426db0: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x426db0: bl           0x3a1dcc
    //     0x426db4: stur         r0, [fp, #-0x28]
    // 0x426db8: r0 = soul_flutter_international$res$styles_TextStyles::pageBiggerTitle()
    //     0x426db8: bl           0x427718
    //     0x426dbc: stur         r0, [fp, #-0x30]
    // 0x426dc0: r0 = call 0x393bf8
    //     0x426dc0: bl           0x393bf8
    // 0x426dc4: r2 = r0
    //     0x426dc4: mov          r2, r0
    //     0x426dc8: ldur         r0, [fp, #-0x28]
    //     0x426dcc: stur         r2, [fp, #-0x38]
    // 0x426dd0: StoreField: r2->field_b = r0
    //     0x426dd0: stur         r0, [r2, #0xb]
    //     0x426dd4: ldur         r0, [fp, #-0x30]
    // 0x426dd8: StoreField: r2->field_13 = r0
    //     0x426dd8: stur         r0, [r2, #0x13]
    // 0x426ddc: r0 = pp[0x53a8]
    //     0x426ddc: ldr          r0, [PP, #0x53a8]
    // 0x426de0: StoreField: r2->field_1b = r0
    //     0x426de0: stur         r0, [r2, #0x1b]
    // 0x426de4: r1 = pp[0xb1c]
    //     0x426de4: add          r1, PP, #0xc, lsl #12
    //     0x426de8: ldr          r1, [r1, #0xb10]
    // 0x426dec: r4 = pp[0x4c0]
    //     0x426dec: ldr          r4, [PP, #0x4c0]
    // 0x426df0: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x426df0: bl           0x3a1dcc
    //     0x426df4: stur         r0, [fp, #-0x28]
    // 0x426df8: r0 = soul_flutter_international$res$colors_SOColors::get_white60()
    //     0x426df8: bl           0x4276e0
    // 0x426dfc: r1 = r0
    //     0x426dfc: mov          r1, r0
    // 0x426e00: r0 = soul_flutter_international$res$styles_TextStyles::commonContent()
    //     0x426e00: bl           0x3b7e50
    //     0x426e04: stur         r0, [fp, #-0x30]
    // 0x426e08: r0 = call 0x393bf8
    //     0x426e08: bl           0x393bf8
    // 0x426e0c: r1 = r0
    //     0x426e0c: mov          r1, r0
    //     0x426e10: ldur         r0, [fp, #-0x28]
    //     0x426e14: stur         r1, [fp, #-0x40]
    // 0x426e18: StoreField: r1->field_b = r0
    //     0x426e18: stur         r0, [r1, #0xb]
    //     0x426e1c: ldur         r0, [fp, #-0x30]
    // 0x426e20: StoreField: r1->field_13 = r0
    //     0x426e20: stur         r0, [r1, #0x13]
    // 0x426e24: r0 = call 0x391c0c
    //     0x426e24: bl           0x391c0c
    // 0x426e28: r3 = r0
    //     0x426e28: mov          r3, r0
    // 0x426e2c: r0 = pp[0x3b1]
    //     0x426e2c: add          r0, PP, #0x11, lsl #12
    //     0x426e30: ldr          r0, [r0, #0x3a0]
    //     0x426e34: stur         r3, [fp, #-0x28]
    // 0x426e38: StoreField: r3->field_f = r0
    //     0x426e38: stur         r0, [r3, #0xf]
    //     0x426e3c: ldur         r0, [fp, #-0x40]
    // 0x426e40: StoreField: r3->field_b = r0
    //     0x426e40: stur         r0, [r3, #0xb]
    // 0x426e44: r1 = NULL
    //     0x426e44: mov          r1, NULL
    //     0x426e48: mov          r2, #4
    // 0x426e4c: r0 = call 0x61f920
    //     0x426e4c: bl           0x61f920
    // 0x426e50: r2 = r0
    //     0x426e50: mov          r2, r0
    //     0x426e54: ldur         r0, [fp, #-0x38]
    //     0x426e58: stur         r2, [fp, #-0x30]
    // 0x426e5c: StoreField: r2->field_f = r0
    //     0x426e5c: stur         r0, [r2, #0xf]
    //     0x426e60: ldur         r0, [fp, #-0x28]
    // 0x426e64: StoreField: r2->field_13 = r0
    //     0x426e64: stur         r0, [r2, #0x13]
    // 0x426e68: r1 = pp[0x5c58]
    //     0x426e68: ldr          r1, [PP, #0x5c58]
    // 0x426e6c: r0 = call 0x61e854
    //     0x426e6c: bl           0x61e854
    // 0x426e70: r1 = r0
    //     0x426e70: mov          r1, r0
    //     0x426e74: ldur         r0, [fp, #-0x30]
    //     0x426e78: stur         r1, [fp, #-0x28]
    // 0x426e7c: StoreField: r1->field_f = r0
    //     0x426e7c: stur         r0, [r1, #0xf]
    //     0x426e80: mov          r0, #4
    // 0x426e84: StoreField: r1->field_b = r0
    //     0x426e84: stur         r0, [r1, #0xb]
    // 0x426e88: r0 = call 0x39310c
    //     0x426e88: bl           0x39310c
    // 0x426e8c: r1 = r0
    //     0x426e8c: mov          r1, r0
    // 0x426e90: r0 = pp[0x862]
    //     0x426e90: add          r0, PP, #0xa, lsl #12
    //     0x426e94: ldr          r0, [r0, #0x858]
    //     0x426e98: stur         r1, [fp, #-0x30]
    // 0x426e9c: StoreField: r1->field_f = r0
    //     0x426e9c: stur         r0, [r1, #0xf]
    // 0x426ea0: r2 = pp[0xaee]
    //     0x426ea0: add          r2, PP, #0xe, lsl #12
    //     0x426ea4: ldr          r2, [r2, #0xae0]
    // 0x426ea8: StoreField: r1->field_13 = r2
    //     0x426ea8: stur         r2, [r1, #0x13]
    // 0x426eac: r3 = pp[0xb16]
    //     0x426eac: add          r3, PP, #0xe, lsl #12
    //     0x426eb0: ldr          r3, [r3, #0xb08]
    // 0x426eb4: ArrayStore: r1[0] = r3  ; List_8
    //     0x426eb4: stur         r3, [r1, #0x17]
    // 0x426eb8: r3 = pp[0xb6e]
    //     0x426eb8: add          r3, PP, #0xe, lsl #12
    //     0x426ebc: ldr          r3, [r3, #0xb60]
    // 0x426ec0: StoreField: r1->field_1b = r3
    //     0x426ec0: stur         r3, [r1, #0x1b]
    // 0x426ec4: r4 = pp[0xb06]
    //     0x426ec4: add          r4, PP, #0xe, lsl #12
    //     0x426ec8: ldr          r4, [r4, #0xaf8]
    // 0x426ecc: StoreField: r1->field_23 = r4
    //     0x426ecc: stur         r4, [r1, #0x23]
    // 0x426ed0: r5 = pp[0xb2]
    //     0x426ed0: add          r5, PP, #0xa, lsl #12
    //     0x426ed4: ldr          r5, [r5, #0xa8]
    // 0x426ed8: StoreField: r1->field_2b = r5
    //     0x426ed8: stur         r5, [r1, #0x2b]
    // 0x426edc: StoreField: r1->field_2f = xzr
    //     0x426edc: stur         xzr, [r1, #0x2f]
    //     0x426ee0: ldur         r6, [fp, #-0x28]
    // 0x426ee4: StoreField: r1->field_b = r6
    //     0x426ee4: stur         r6, [r1, #0xb]
    // 0x426ee8: r0 = call 0x391a04
    //     0x426ee8: bl           0x391a04
    //     0x426eec: stur         r0, [fp, #-0x28]
    // 0x426ef0: BARRIER = pp[0x3b9]
    //     0x426ef0: add          BARRIER, PP, #0x11, lsl #12
    //     0x426ef4: ldr          BARRIER, [BARRIER, #0x3a8]
    // 0x426ef8: lr = pp[0x5458]
    //     0x426ef8: ldr          lr, [PP, #0x5458]
    //     0x426efc: stp          lr, BARRIER, [SP, #8]
    //     0x426f00: ldur         BARRIER, [fp, #-0x30]
    //     0x426f04: str          BARRIER, [SP]
    // 0x426f08: r1 = r0
    //     0x426f08: mov          r1, r0
    // 0x426f0c: r4 = pp[0x3c1]
    //     0x426f0c: add          r4, PP, #0x11, lsl #12
    //     0x426f10: ldr          r4, [r4, #0x3b0]
    // 0x426f14: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x426f14: bl           0x391490
    //     0x426f18: ldur         r1, [fp, #-0x10]
    // 0x426f1c: r0 = soul_flutter_international$biz$party$page_party_password__PartyPasswordState::_buildDisplayPassword()
    //     0x426f1c: bl           0x4270f4
    //     0x426f20: stur         r0, [fp, #-0x10]
    // 0x426f24: r0 = call 0x391c0c
    //     0x426f24: bl           0x391c0c
    // 0x426f28: r1 = r0
    //     0x426f28: mov          r1, r0
    // 0x426f2c: r0 = pp[0x3c9]
    //     0x426f2c: add          r0, PP, #0x11, lsl #12
    //     0x426f30: ldr          r0, [r0, #0x3b8]
    //     0x426f34: stur         r1, [fp, #-0x30]
    // 0x426f38: StoreField: r1->field_f = r0
    //     0x426f38: stur         r0, [r1, #0xf]
    //     0x426f3c: ldur         r0, [fp, #-0x10]
    // 0x426f40: StoreField: r1->field_b = r0
    //     0x426f40: stur         r0, [r1, #0xb]
    // 0x426f44: r0 = call 0x3a142c
    //     0x426f44: bl           0x3a142c
    // 0x426f48: r1 = r0
    //     0x426f48: mov          r1, r0
    // 0x426f4c: r0 = pp[0x3d1]
    //     0x426f4c: add          r0, PP, #0x11, lsl #12
    //     0x426f50: ldr          r0, [r0, #0x3c0]
    //     0x426f54: stur         r1, [fp, #-0x10]
    // 0x426f58: StoreField: r1->field_b = r0
    //     0x426f58: stur         r0, [r1, #0xb]
    // 0x426f5c: r0 = pp[0x17f]
    //     0x426f5c: add          r0, PP, #0xf, lsl #12
    //     0x426f60: ldr          r0, [r0, #0x170]
    // 0x426f64: StoreField: r1->field_f = r0
    //     0x426f64: stur         r0, [r1, #0xf]
    // 0x426f68: r0 = pp[0x3d9]
    //     0x426f68: add          r0, PP, #0x11, lsl #12
    //     0x426f6c: ldr          r0, [r0, #0x3c8]
    // 0x426f70: StoreField: r1->field_13 = r0
    //     0x426f70: stur         r0, [r1, #0x13]
    // 0x426f74: r0 = pp[0xc38]
    //     0x426f74: add          r0, PP, #0x10, lsl #12
    //     0x426f78: ldr          r0, [r0, #0xc28]
    // 0x426f7c: ArrayStore: r1[0] = r0  ; List_8
    //     0x426f7c: stur         r0, [r1, #0x17]
    // 0x426f80: r0 = call 0x391c0c
    //     0x426f80: bl           0x391c0c
    // 0x426f84: r3 = r0
    //     0x426f84: mov          r3, r0
    // 0x426f88: r0 = pp[0x3e1]
    //     0x426f88: add          r0, PP, #0x11, lsl #12
    //     0x426f8c: ldr          r0, [r0, #0x3d0]
    //     0x426f90: stur         r3, [fp, #-0x38]
    // 0x426f94: StoreField: r3->field_f = r0
    //     0x426f94: stur         r0, [r3, #0xf]
    //     0x426f98: ldur         r0, [fp, #-0x10]
    // 0x426f9c: StoreField: r3->field_b = r0
    //     0x426f9c: stur         r0, [r3, #0xb]
    // 0x426fa0: r1 = NULL
    //     0x426fa0: mov          r1, NULL
    //     0x426fa4: mov          r2, #8
    // 0x426fa8: r0 = call 0x61f920
    //     0x426fa8: bl           0x61f920
    // 0x426fac: r2 = r0
    //     0x426fac: mov          r2, r0
    //     0x426fb0: ldur         r0, [fp, #-0x20]
    //     0x426fb4: stur         r2, [fp, #-0x10]
    // 0x426fb8: StoreField: r2->field_f = r0
    //     0x426fb8: stur         r0, [r2, #0xf]
    //     0x426fbc: ldur         r0, [fp, #-0x28]
    // 0x426fc0: StoreField: r2->field_13 = r0
    //     0x426fc0: stur         r0, [r2, #0x13]
    //     0x426fc4: ldur         r0, [fp, #-0x30]
    // 0x426fc8: ArrayStore: r2[0] = r0  ; List_8
    //     0x426fc8: stur         r0, [r2, #0x17]
    //     0x426fcc: ldur         r0, [fp, #-0x38]
    // 0x426fd0: StoreField: r2->field_1b = r0
    //     0x426fd0: stur         r0, [r2, #0x1b]
    // 0x426fd4: r1 = pp[0x5c58]
    //     0x426fd4: ldr          r1, [PP, #0x5c58]
    // 0x426fd8: r0 = call 0x61e854
    //     0x426fd8: bl           0x61e854
    // 0x426fdc: r1 = r0
    //     0x426fdc: mov          r1, r0
    //     0x426fe0: ldur         r0, [fp, #-0x10]
    //     0x426fe4: stur         r1, [fp, #-0x20]
    // 0x426fe8: StoreField: r1->field_f = r0
    //     0x426fe8: stur         r0, [r1, #0xf]
    //     0x426fec: mov          r0, #8
    // 0x426ff0: StoreField: r1->field_b = r0
    //     0x426ff0: stur         r0, [r1, #0xb]
    // 0x426ff4: r0 = call 0x39310c
    //     0x426ff4: bl           0x39310c
    // 0x426ff8: r1 = r0
    //     0x426ff8: mov          r1, r0
    // 0x426ffc: r0 = pp[0x862]
    //     0x426ffc: add          r0, PP, #0xa, lsl #12
    //     0x427000: ldr          r0, [r0, #0x858]
    //     0x427004: stur         r1, [fp, #-0x10]
    // 0x427008: StoreField: r1->field_f = r0
    //     0x427008: stur         r0, [r1, #0xf]
    // 0x42700c: r2 = pp[0xaee]
    //     0x42700c: add          r2, PP, #0xe, lsl #12
    //     0x427010: ldr          r2, [r2, #0xae0]
    // 0x427014: StoreField: r1->field_13 = r2
    //     0x427014: stur         r2, [r1, #0x13]
    // 0x427018: r2 = pp[0xaf6]
    //     0x427018: add          r2, PP, #0xe, lsl #12
    //     0x42701c: ldr          r2, [r2, #0xae8]
    // 0x427020: ArrayStore: r1[0] = r2  ; List_8
    //     0x427020: stur         r2, [r1, #0x17]
    // 0x427024: r2 = pp[0xb6e]
    //     0x427024: add          r2, PP, #0xe, lsl #12
    //     0x427028: ldr          r2, [r2, #0xb60]
    // 0x42702c: StoreField: r1->field_1b = r2
    //     0x42702c: stur         r2, [r1, #0x1b]
    // 0x427030: r2 = pp[0xb06]
    //     0x427030: add          r2, PP, #0xe, lsl #12
    //     0x427034: ldr          r2, [r2, #0xaf8]
    // 0x427038: StoreField: r1->field_23 = r2
    //     0x427038: stur         r2, [r1, #0x23]
    // 0x42703c: r2 = pp[0xb2]
    //     0x42703c: add          r2, PP, #0xa, lsl #12
    //     0x427040: ldr          r2, [r2, #0xa8]
    // 0x427044: StoreField: r1->field_2b = r2
    //     0x427044: stur         r2, [r1, #0x2b]
    // 0x427048: StoreField: r1->field_2f = xzr
    //     0x427048: stur         xzr, [r1, #0x2f]
    //     0x42704c: ldur         r2, [fp, #-0x20]
    // 0x427050: StoreField: r1->field_b = r2
    //     0x427050: stur         r2, [r1, #0xb]
    // 0x427054: r0 = call 0x391a04
    //     0x427054: bl           0x391a04
    //     0x427058: stur         r0, [fp, #-0x20]
    //     0x42705c: ldur         BARRIER, [fp, #-0x18]
    //     0x427060: ldur         lr, [fp, #-0x10]
    //     0x427064: stp          lr, BARRIER, [SP]
    // 0x427068: r1 = r0
    //     0x427068: mov          r1, r0
    // 0x42706c: r4 = pp[0x577]
    //     0x42706c: add          r4, PP, #0xf, lsl #12
    //     0x427070: ldr          r4, [r4, #0x568]
    // 0x427074: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x427074: bl           0x391490
    // 0x427078: r0 = call 0x402b18
    //     0x427078: bl           0x402b18
    // 0x42707c: r1 = r0
    //     0x42707c: mov          r1, r0
    //     0x427080: ldur         r0, [fp, #-0x20]
    //     0x427084: stur         r1, [fp, #-0x10]
    // 0x427088: StoreField: r1->field_b = r0
    //     0x427088: stur         r0, [r1, #0xb]
    //     0x42708c: ldur         r0, [fp, #-8]
    // 0x427090: StoreField: r1->field_7 = r0
    //     0x427090: stur         r0, [r1, #7]
    // 0x427094: r0 = call 0x3a1db4
    //     0x427094: bl           0x3a1db4
    // 0x427098: r1 = pp[0x862]
    //     0x427098: add          r1, PP, #0xa, lsl #12
    //     0x42709c: ldr          r1, [r1, #0x858]
    // 0x4270a0: StoreField: r0->field_b = r1
    //     0x4270a0: stur         r1, [r0, #0xb]
    //     0x4270a4: add          r1, NULL, #0x30
    // 0x4270a8: StoreField: r0->field_f = r1
    //     0x4270a8: stur         r1, [r0, #0xf]
    //     0x4270ac: ldur         r1, [fp, #-0x10]
    // 0x4270b0: StoreField: r0->field_23 = r1
    //     0x4270b0: stur         r1, [r0, #0x23]
    // 0x4270b4: r1 = pp[0x77d8]
    //     0x4270b4: ldr          r1, [PP, #0x77d8]
    // 0x4270b8: StoreField: r0->field_27 = r1
    //     0x4270b8: stur         r1, [r0, #0x27]
    // 0x4270bc: r1 = pp[0xf1e]
    //     0x4270bc: add          r1, PP, #0xe, lsl #12
    //     0x4270c0: ldr          r1, [r1, #0xf10]
    // 0x4270c4: StoreField: r0->field_2b = r1
    //     0x4270c4: stur         r1, [r0, #0x2b]
    // 0x4270c8: r1 = pp[0x14f]
    //     0x4270c8: add          r1, PP, #0xf, lsl #12
    //     0x4270cc: ldr          r1, [r1, #0x140]
    // 0x4270d0: StoreField: r0->field_2f = r1
    //     0x4270d0: stur         r1, [r0, #0x2f]
    // 0x4270d4: r1 = pp[0x307]
    //     0x4270d4: add          r1, PP, #0xf, lsl #12
    //     0x4270d8: ldr          r1, [r1, #0x2f8]
    // 0x4270dc: StoreField: r0->field_37 = r1
    //     0x4270dc: stur         r1, [r0, #0x37]
    // 0x4270e0: SP = fp
    //     0x4270e0: mov          SP, fp
    // 0x4270e4: LeaveFrame
    //     0x4270e4: ldp          fp, lr, [SP], #0x10
    // 0x4270e8: ret
    //     0x4270e8: ret          
    // 0x4270ec: r0 = call 0x61fa28
    //     0x4270ec: bl           0x61fa28
    // 0x4270f0: b 0x426d28
    //     0x4270f0: b            0x426d28
  }

  _buildDisplayPassword() {
    // ** addr: 0x4270f4, size: 0x570
    // 0x4270f4: EnterFrame
    //     0x4270f4: stp          fp, lr, [SP, #-0x10]!
    //     0x4270f8: mov          fp, SP
    // 0x4270fc: AllocStack(0x68)
    //     0x4270fc: sub          SP, SP, #0x68
    //     0x427100: stur         r1, [fp, #-8]
    // 0x427104: CheckStackOverflow
    //     0x427104: ldr          BARRIER, [THR, #0x38]
    //     0x427108: cmp          SP, BARRIER
    //     0x42710c: b.ls         0x427650
    // 0x427110: r0 = call 0x352b04
    //     0x427110: bl           0x352b04
    //     0x427114: fmov         d0, #8.00000000
    //     0x427118: stur         r0, [fp, #-0x10]
    // 0x42711c: StoreField: r0->field_7 = d0
    //     0x42711c: stur         d0, [r0, #7]
    // 0x427120: StoreField: r0->field_f = d0
    //     0x427120: stur         d0, [r0, #0xf]
    // 0x427124: r0 = call 0x392f28
    //     0x427124: bl           0x392f28
    // 0x427128: r1 = r0
    //     0x427128: mov          r1, r0
    //     0x42712c: ldur         r0, [fp, #-0x10]
    //     0x427130: stur         r1, [fp, #-0x18]
    // 0x427134: StoreField: r1->field_7 = r0
    //     0x427134: stur         r0, [r1, #7]
    // 0x427138: StoreField: r1->field_b = r0
    //     0x427138: stur         r0, [r1, #0xb]
    // 0x42713c: StoreField: r1->field_f = r0
    //     0x42713c: stur         r0, [r1, #0xf]
    // 0x427140: StoreField: r1->field_13 = r0
    //     0x427140: stur         r0, [r1, #0x13]
    // 0x427144: r0 = soul_flutter_international$res$colors_SOColors::get_color_20f6f6f6()
    //     0x427144: bl           0x4276a4
    //     0x427148: stur         r0, [fp, #-0x10]
    // 0x42714c: r0 = call 0x391dd8
    //     0x42714c: bl           0x391dd8
    // 0x427150: r3 = r0
    //     0x427150: mov          r3, r0
    //     0x427154: ldur         r0, [fp, #-0x10]
    //     0x427158: stur         r3, [fp, #-0x20]
    // 0x42715c: StoreField: r3->field_7 = r0
    //     0x42715c: stur         r0, [r3, #7]
    //     0x427160: ldur         r0, [fp, #-0x18]
    // 0x427164: StoreField: r3->field_13 = r0
    //     0x427164: stur         r0, [r3, #0x13]
    // 0x427168: r0 = pp[0xb86]
    //     0x427168: add          r0, PP, #0xe, lsl #12
    //     0x42716c: ldr          r0, [r0, #0xb78]
    // 0x427170: StoreField: r3->field_23 = r0
    //     0x427170: stur         r0, [r3, #0x23]
    //     0x427174: ldur         r4, [fp, #-8]
    // 0x427178: LoadField: r1 = r4->field_1b
    //     0x427178: ldur         r1, [r4, #0x1b]
    //     0x42717c: add          r1, r1, HEAP, lsl #32
    // 0x427180: BARRIER = pp[0x40]
    //     0x427180: ldr          BARRIER, [PP, #0x40]
    //     0x427184: cmp          r1, r16
    // 0x427188: b.eq 0x427658
    //     0x427188: b.eq         0x427658
    //     0x42718c: mov          BARRIER, #2
    //     0x427190: str          BARRIER, [SP]
    //     0x427194: mov          r2, #0
    // 0x427198: r4 = pp[0x280]
    //     0x427198: ldr          r4, [PP, #0x280]
    // 0x42719c: r0 = dart_core__StringBase::substring()
    //     0x42719c: bl           0x281608
    //     0x4271a0: stur         r0, [fp, #-0x10]
    // 0x4271a4: r0 = soul_flutter_international$res$styles_TextStyles::pageBigTitle()
    //     0x4271a4: bl           0x427664
    //     0x4271a8: stur         r0, [fp, #-0x18]
    // 0x4271ac: r0 = call 0x393bf8
    //     0x4271ac: bl           0x393bf8
    // 0x4271b0: r1 = r0
    //     0x4271b0: mov          r1, r0
    //     0x4271b4: ldur         r0, [fp, #-0x10]
    //     0x4271b8: stur         r1, [fp, #-0x28]
    // 0x4271bc: StoreField: r1->field_b = r0
    //     0x4271bc: stur         r0, [r1, #0xb]
    //     0x4271c0: ldur         r0, [fp, #-0x18]
    // 0x4271c4: StoreField: r1->field_13 = r0
    //     0x4271c4: stur         r0, [r1, #0x13]
    // 0x4271c8: r0 = call 0x391a04
    //     0x4271c8: bl           0x391a04
    //     0x4271cc: stur         r0, [fp, #-0x10]
    // 0x4271d0: BARRIER = pp[0x3e9]
    //     0x4271d0: add          BARRIER, PP, #0x11, lsl #12
    //     0x4271d4: ldr          BARRIER, [BARRIER, #0x3d8]
    // 0x4271d8: lr = pp[0x5458]
    //     0x4271d8: ldr          lr, [PP, #0x5458]
    //     0x4271dc: stp          lr, BARRIER, [SP, #0x20]
    // 0x4271e0: BARRIER = pp[0x129]
    //     0x4271e0: add          BARRIER, PP, #0x11, lsl #12
    //     0x4271e4: ldr          BARRIER, [BARRIER, #0x118]
    // 0x4271e8: lr = pp[0xaae]
    //     0x4271e8: add          lr, PP, #0xe, lsl #12
    //     0x4271ec: ldr          lr, [lr, #0xaa0]
    //     0x4271f0: stp          lr, BARRIER, [SP, #0x10]
    //     0x4271f4: ldur         BARRIER, [fp, #-0x20]
    //     0x4271f8: ldur         lr, [fp, #-0x28]
    //     0x4271fc: stp          lr, BARRIER, [SP]
    // 0x427200: r1 = r0
    //     0x427200: mov          r1, r0
    // 0x427204: r4 = pp[0x3f1]
    //     0x427204: add          r4, PP, #0x11, lsl #12
    //     0x427208: ldr          r4, [r4, #0x3e0]
    // 0x42720c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x42720c: bl           0x391490
    // 0x427210: r0 = call 0x352b04
    //     0x427210: bl           0x352b04
    //     0x427214: fmov         d0, #8.00000000
    //     0x427218: stur         r0, [fp, #-0x18]
    // 0x42721c: StoreField: r0->field_7 = d0
    //     0x42721c: stur         d0, [r0, #7]
    // 0x427220: StoreField: r0->field_f = d0
    //     0x427220: stur         d0, [r0, #0xf]
    // 0x427224: r0 = call 0x392f28
    //     0x427224: bl           0x392f28
    // 0x427228: r1 = r0
    //     0x427228: mov          r1, r0
    //     0x42722c: ldur         r0, [fp, #-0x18]
    //     0x427230: stur         r1, [fp, #-0x20]
    // 0x427234: StoreField: r1->field_7 = r0
    //     0x427234: stur         r0, [r1, #7]
    // 0x427238: StoreField: r1->field_b = r0
    //     0x427238: stur         r0, [r1, #0xb]
    // 0x42723c: StoreField: r1->field_f = r0
    //     0x42723c: stur         r0, [r1, #0xf]
    // 0x427240: StoreField: r1->field_13 = r0
    //     0x427240: stur         r0, [r1, #0x13]
    // 0x427244: r0 = call 0x31d844
    //     0x427244: bl           0x31d844
    // 0x427248: r1 = r0
    //     0x427248: mov          r1, r0
    // 0x42724c: r0 = pp[0x6310]
    //     0x42724c: ldr          r0, [PP, #0x6310]
    //     0x427250: stur         r1, [fp, #-0x18]
    // 0x427254: StoreField: r1->field_27 = r0
    //     0x427254: stur         r0, [r1, #0x27]
    // 0x427258: d0 = pp[0x66a0]
    //     0x427258: ldr          d0, [PP, #0x66a0]
    // 0x42725c: StoreField: r1->field_7 = d0
    //     0x42725c: stur         d0, [r1, #7]
    // 0x427260: d1 = pp[0xe76]
    //     0x427260: add          r17, PP, #0xe, lsl #12
    //     0x427264: ldr          d1, [r17, #0xe68]
    // 0x427268: StoreField: r1->field_f = d1
    //     0x427268: stur         d1, [r1, #0xf]
    // 0x42726c: ArrayStore: r1[0] = d1  ; List_8
    //     0x42726c: stur         d1, [r1, #0x17]
    // 0x427270: StoreField: r1->field_1f = d1
    //     0x427270: stur         d1, [r1, #0x1f]
    // 0x427274: r0 = call 0x391dd8
    //     0x427274: bl           0x391dd8
    // 0x427278: r3 = r0
    //     0x427278: mov          r3, r0
    //     0x42727c: ldur         r0, [fp, #-0x18]
    //     0x427280: stur         r3, [fp, #-0x28]
    // 0x427284: StoreField: r3->field_7 = r0
    //     0x427284: stur         r0, [r3, #7]
    //     0x427288: ldur         r0, [fp, #-0x20]
    // 0x42728c: StoreField: r3->field_13 = r0
    //     0x42728c: stur         r0, [r3, #0x13]
    // 0x427290: r0 = pp[0xb86]
    //     0x427290: add          r0, PP, #0xe, lsl #12
    //     0x427294: ldr          r0, [r0, #0xb78]
    // 0x427298: StoreField: r3->field_23 = r0
    //     0x427298: stur         r0, [r3, #0x23]
    //     0x42729c: ldur         r4, [fp, #-8]
    // 0x4272a0: LoadField: r1 = r4->field_1b
    //     0x4272a0: ldur         r1, [r4, #0x1b]
    //     0x4272a4: add          r1, r1, HEAP, lsl #32
    //     0x4272a8: mov          BARRIER, #4
    //     0x4272ac: str          BARRIER, [SP]
    //     0x4272b0: mov          r2, #1
    // 0x4272b4: r4 = pp[0x280]
    //     0x4272b4: ldr          r4, [PP, #0x280]
    // 0x4272b8: r0 = dart_core__StringBase::substring()
    //     0x4272b8: bl           0x281608
    //     0x4272bc: stur         r0, [fp, #-0x18]
    // 0x4272c0: r0 = soul_flutter_international$res$styles_TextStyles::pageBigTitle()
    //     0x4272c0: bl           0x427664
    //     0x4272c4: stur         r0, [fp, #-0x20]
    // 0x4272c8: r0 = call 0x393bf8
    //     0x4272c8: bl           0x393bf8
    // 0x4272cc: r1 = r0
    //     0x4272cc: mov          r1, r0
    //     0x4272d0: ldur         r0, [fp, #-0x18]
    //     0x4272d4: stur         r1, [fp, #-0x30]
    // 0x4272d8: StoreField: r1->field_b = r0
    //     0x4272d8: stur         r0, [r1, #0xb]
    //     0x4272dc: ldur         r0, [fp, #-0x20]
    // 0x4272e0: StoreField: r1->field_13 = r0
    //     0x4272e0: stur         r0, [r1, #0x13]
    // 0x4272e4: r0 = call 0x391a04
    //     0x4272e4: bl           0x391a04
    //     0x4272e8: stur         r0, [fp, #-0x18]
    // 0x4272ec: BARRIER = pp[0x3e9]
    //     0x4272ec: add          BARRIER, PP, #0x11, lsl #12
    //     0x4272f0: ldr          BARRIER, [BARRIER, #0x3d8]
    // 0x4272f4: lr = pp[0x129]
    //     0x4272f4: add          lr, PP, #0x11, lsl #12
    //     0x4272f8: ldr          lr, [lr, #0x118]
    //     0x4272fc: stp          lr, BARRIER, [SP, #0x20]
    // 0x427300: BARRIER = pp[0x5458]
    //     0x427300: ldr          BARRIER, [PP, #0x5458]
    // 0x427304: lr = pp[0xaae]
    //     0x427304: add          lr, PP, #0xe, lsl #12
    //     0x427308: ldr          lr, [lr, #0xaa0]
    //     0x42730c: stp          lr, BARRIER, [SP, #0x10]
    //     0x427310: ldur         BARRIER, [fp, #-0x28]
    //     0x427314: ldur         lr, [fp, #-0x30]
    //     0x427318: stp          lr, BARRIER, [SP]
    // 0x42731c: r1 = r0
    //     0x42731c: mov          r1, r0
    // 0x427320: r4 = pp[0x3f9]
    //     0x427320: add          r4, PP, #0x11, lsl #12
    //     0x427324: ldr          r4, [r4, #0x3e8]
    // 0x427328: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x427328: bl           0x391490
    // 0x42732c: r0 = call 0x352b04
    //     0x42732c: bl           0x352b04
    //     0x427330: fmov         d0, #8.00000000
    //     0x427334: stur         r0, [fp, #-0x20]
    // 0x427338: StoreField: r0->field_7 = d0
    //     0x427338: stur         d0, [r0, #7]
    // 0x42733c: StoreField: r0->field_f = d0
    //     0x42733c: stur         d0, [r0, #0xf]
    // 0x427340: r0 = call 0x392f28
    //     0x427340: bl           0x392f28
    // 0x427344: r1 = r0
    //     0x427344: mov          r1, r0
    //     0x427348: ldur         r0, [fp, #-0x20]
    //     0x42734c: stur         r1, [fp, #-0x28]
    // 0x427350: StoreField: r1->field_7 = r0
    //     0x427350: stur         r0, [r1, #7]
    // 0x427354: StoreField: r1->field_b = r0
    //     0x427354: stur         r0, [r1, #0xb]
    // 0x427358: StoreField: r1->field_f = r0
    //     0x427358: stur         r0, [r1, #0xf]
    // 0x42735c: StoreField: r1->field_13 = r0
    //     0x42735c: stur         r0, [r1, #0x13]
    // 0x427360: r0 = call 0x31d844
    //     0x427360: bl           0x31d844
    // 0x427364: r1 = r0
    //     0x427364: mov          r1, r0
    // 0x427368: r0 = pp[0x6310]
    //     0x427368: ldr          r0, [PP, #0x6310]
    //     0x42736c: stur         r1, [fp, #-0x20]
    // 0x427370: StoreField: r1->field_27 = r0
    //     0x427370: stur         r0, [r1, #0x27]
    // 0x427374: d0 = pp[0x66a0]
    //     0x427374: ldr          d0, [PP, #0x66a0]
    // 0x427378: StoreField: r1->field_7 = d0
    //     0x427378: stur         d0, [r1, #7]
    // 0x42737c: d1 = pp[0xe76]
    //     0x42737c: add          r17, PP, #0xe, lsl #12
    //     0x427380: ldr          d1, [r17, #0xe68]
    // 0x427384: StoreField: r1->field_f = d1
    //     0x427384: stur         d1, [r1, #0xf]
    // 0x427388: ArrayStore: r1[0] = d1  ; List_8
    //     0x427388: stur         d1, [r1, #0x17]
    // 0x42738c: StoreField: r1->field_1f = d1
    //     0x42738c: stur         d1, [r1, #0x1f]
    // 0x427390: r0 = call 0x391dd8
    //     0x427390: bl           0x391dd8
    // 0x427394: r3 = r0
    //     0x427394: mov          r3, r0
    //     0x427398: ldur         r0, [fp, #-0x20]
    //     0x42739c: stur         r3, [fp, #-0x30]
    // 0x4273a0: StoreField: r3->field_7 = r0
    //     0x4273a0: stur         r0, [r3, #7]
    //     0x4273a4: ldur         r0, [fp, #-0x28]
    // 0x4273a8: StoreField: r3->field_13 = r0
    //     0x4273a8: stur         r0, [r3, #0x13]
    // 0x4273ac: r0 = pp[0xb86]
    //     0x4273ac: add          r0, PP, #0xe, lsl #12
    //     0x4273b0: ldr          r0, [r0, #0xb78]
    // 0x4273b4: StoreField: r3->field_23 = r0
    //     0x4273b4: stur         r0, [r3, #0x23]
    //     0x4273b8: ldur         r4, [fp, #-8]
    // 0x4273bc: LoadField: r1 = r4->field_1b
    //     0x4273bc: ldur         r1, [r4, #0x1b]
    //     0x4273c0: add          r1, r1, HEAP, lsl #32
    //     0x4273c4: mov          BARRIER, #6
    //     0x4273c8: str          BARRIER, [SP]
    //     0x4273cc: mov          r2, #2
    // 0x4273d0: r4 = pp[0x280]
    //     0x4273d0: ldr          r4, [PP, #0x280]
    // 0x4273d4: r0 = dart_core__StringBase::substring()
    //     0x4273d4: bl           0x281608
    //     0x4273d8: stur         r0, [fp, #-0x20]
    // 0x4273dc: r0 = soul_flutter_international$res$styles_TextStyles::pageBigTitle()
    //     0x4273dc: bl           0x427664
    //     0x4273e0: stur         r0, [fp, #-0x28]
    // 0x4273e4: r0 = call 0x393bf8
    //     0x4273e4: bl           0x393bf8
    // 0x4273e8: r1 = r0
    //     0x4273e8: mov          r1, r0
    //     0x4273ec: ldur         r0, [fp, #-0x20]
    //     0x4273f0: stur         r1, [fp, #-0x38]
    // 0x4273f4: StoreField: r1->field_b = r0
    //     0x4273f4: stur         r0, [r1, #0xb]
    //     0x4273f8: ldur         r0, [fp, #-0x28]
    // 0x4273fc: StoreField: r1->field_13 = r0
    //     0x4273fc: stur         r0, [r1, #0x13]
    // 0x427400: r0 = call 0x391a04
    //     0x427400: bl           0x391a04
    //     0x427404: stur         r0, [fp, #-0x20]
    // 0x427408: BARRIER = pp[0x3e9]
    //     0x427408: add          BARRIER, PP, #0x11, lsl #12
    //     0x42740c: ldr          BARRIER, [BARRIER, #0x3d8]
    // 0x427410: lr = pp[0x129]
    //     0x427410: add          lr, PP, #0x11, lsl #12
    //     0x427414: ldr          lr, [lr, #0x118]
    //     0x427418: stp          lr, BARRIER, [SP, #0x20]
    // 0x42741c: BARRIER = pp[0xaae]
    //     0x42741c: add          BARRIER, PP, #0xe, lsl #12
    //     0x427420: ldr          BARRIER, [BARRIER, #0xaa0]
    // 0x427424: lr = pp[0x5458]
    //     0x427424: ldr          lr, [PP, #0x5458]
    //     0x427428: stp          lr, BARRIER, [SP, #0x10]
    //     0x42742c: ldur         BARRIER, [fp, #-0x30]
    //     0x427430: ldur         lr, [fp, #-0x38]
    //     0x427434: stp          lr, BARRIER, [SP]
    // 0x427438: r1 = r0
    //     0x427438: mov          r1, r0
    // 0x42743c: r4 = pp[0x401]
    //     0x42743c: add          r4, PP, #0x11, lsl #12
    //     0x427440: ldr          r4, [r4, #0x3f0]
    // 0x427444: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x427444: bl           0x391490
    // 0x427448: r0 = call 0x352b04
    //     0x427448: bl           0x352b04
    //     0x42744c: fmov         d0, #8.00000000
    //     0x427450: stur         r0, [fp, #-0x28]
    // 0x427454: StoreField: r0->field_7 = d0
    //     0x427454: stur         d0, [r0, #7]
    // 0x427458: StoreField: r0->field_f = d0
    //     0x427458: stur         d0, [r0, #0xf]
    // 0x42745c: r0 = call 0x392f28
    //     0x42745c: bl           0x392f28
    // 0x427460: r1 = r0
    //     0x427460: mov          r1, r0
    //     0x427464: ldur         r0, [fp, #-0x28]
    //     0x427468: stur         r1, [fp, #-0x30]
    // 0x42746c: StoreField: r1->field_7 = r0
    //     0x42746c: stur         r0, [r1, #7]
    // 0x427470: StoreField: r1->field_b = r0
    //     0x427470: stur         r0, [r1, #0xb]
    // 0x427474: StoreField: r1->field_f = r0
    //     0x427474: stur         r0, [r1, #0xf]
    // 0x427478: StoreField: r1->field_13 = r0
    //     0x427478: stur         r0, [r1, #0x13]
    // 0x42747c: r0 = call 0x31d844
    //     0x42747c: bl           0x31d844
    // 0x427480: r1 = r0
    //     0x427480: mov          r1, r0
    // 0x427484: r0 = pp[0x6310]
    //     0x427484: ldr          r0, [PP, #0x6310]
    //     0x427488: stur         r1, [fp, #-0x28]
    // 0x42748c: StoreField: r1->field_27 = r0
    //     0x42748c: stur         r0, [r1, #0x27]
    // 0x427490: d0 = pp[0x66a0]
    //     0x427490: ldr          d0, [PP, #0x66a0]
    // 0x427494: StoreField: r1->field_7 = d0
    //     0x427494: stur         d0, [r1, #7]
    // 0x427498: d0 = pp[0xe76]
    //     0x427498: add          r17, PP, #0xe, lsl #12
    //     0x42749c: ldr          d0, [r17, #0xe68]
    // 0x4274a0: StoreField: r1->field_f = d0
    //     0x4274a0: stur         d0, [r1, #0xf]
    // 0x4274a4: ArrayStore: r1[0] = d0  ; List_8
    //     0x4274a4: stur         d0, [r1, #0x17]
    // 0x4274a8: StoreField: r1->field_1f = d0
    //     0x4274a8: stur         d0, [r1, #0x1f]
    // 0x4274ac: r0 = call 0x391dd8
    //     0x4274ac: bl           0x391dd8
    // 0x4274b0: r3 = r0
    //     0x4274b0: mov          r3, r0
    //     0x4274b4: ldur         r0, [fp, #-0x28]
    //     0x4274b8: stur         r3, [fp, #-0x38]
    // 0x4274bc: StoreField: r3->field_7 = r0
    //     0x4274bc: stur         r0, [r3, #7]
    //     0x4274c0: ldur         r0, [fp, #-0x30]
    // 0x4274c4: StoreField: r3->field_13 = r0
    //     0x4274c4: stur         r0, [r3, #0x13]
    // 0x4274c8: r0 = pp[0xb86]
    //     0x4274c8: add          r0, PP, #0xe, lsl #12
    //     0x4274cc: ldr          r0, [r0, #0xb78]
    // 0x4274d0: StoreField: r3->field_23 = r0
    //     0x4274d0: stur         r0, [r3, #0x23]
    //     0x4274d4: ldur         r0, [fp, #-8]
    // 0x4274d8: LoadField: r1 = r0->field_1b
    //     0x4274d8: ldur         r1, [r0, #0x1b]
    //     0x4274dc: add          r1, r1, HEAP, lsl #32
    //     0x4274e0: mov          BARRIER, #8
    //     0x4274e4: str          BARRIER, [SP]
    //     0x4274e8: mov          r2, #3
    // 0x4274ec: r4 = pp[0x280]
    //     0x4274ec: ldr          r4, [PP, #0x280]
    // 0x4274f0: r0 = dart_core__StringBase::substring()
    //     0x4274f0: bl           0x281608
    //     0x4274f4: stur         r0, [fp, #-8]
    // 0x4274f8: r0 = soul_flutter_international$res$styles_TextStyles::pageBigTitle()
    //     0x4274f8: bl           0x427664
    //     0x4274fc: stur         r0, [fp, #-0x28]
    // 0x427500: r0 = call 0x393bf8
    //     0x427500: bl           0x393bf8
    // 0x427504: r1 = r0
    //     0x427504: mov          r1, r0
    //     0x427508: ldur         r0, [fp, #-8]
    //     0x42750c: stur         r1, [fp, #-0x30]
    // 0x427510: StoreField: r1->field_b = r0
    //     0x427510: stur         r0, [r1, #0xb]
    //     0x427514: ldur         r0, [fp, #-0x28]
    // 0x427518: StoreField: r1->field_13 = r0
    //     0x427518: stur         r0, [r1, #0x13]
    // 0x42751c: r0 = call 0x391a04
    //     0x42751c: bl           0x391a04
    //     0x427520: stur         r0, [fp, #-8]
    // 0x427524: BARRIER = pp[0x3e9]
    //     0x427524: add          BARRIER, PP, #0x11, lsl #12
    //     0x427528: ldr          BARRIER, [BARRIER, #0x3d8]
    // 0x42752c: lr = pp[0xaae]
    //     0x42752c: add          lr, PP, #0xe, lsl #12
    //     0x427530: ldr          lr, [lr, #0xaa0]
    //     0x427534: stp          lr, BARRIER, [SP, #0x18]
    // 0x427538: BARRIER = pp[0x5458]
    //     0x427538: ldr          BARRIER, [PP, #0x5458]
    //     0x42753c: ldur         lr, [fp, #-0x38]
    //     0x427540: stp          lr, BARRIER, [SP, #8]
    //     0x427544: ldur         BARRIER, [fp, #-0x30]
    //     0x427548: str          BARRIER, [SP]
    // 0x42754c: r1 = r0
    //     0x42754c: mov          r1, r0
    // 0x427550: r4 = pp[0x409]
    //     0x427550: add          r4, PP, #0x11, lsl #12
    //     0x427554: ldr          r4, [r4, #0x3f8]
    // 0x427558: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x427558: bl           0x391490
    // 0x42755c: r1 = NULL
    //     0x42755c: mov          r1, NULL
    //     0x427560: mov          r2, #8
    // 0x427564: r0 = call 0x61f920
    //     0x427564: bl           0x61f920
    // 0x427568: r2 = r0
    //     0x427568: mov          r2, r0
    //     0x42756c: ldur         r0, [fp, #-0x10]
    //     0x427570: stur         r2, [fp, #-0x28]
    // 0x427574: StoreField: r2->field_f = r0
    //     0x427574: stur         r0, [r2, #0xf]
    //     0x427578: ldur         r0, [fp, #-0x18]
    // 0x42757c: StoreField: r2->field_13 = r0
    //     0x42757c: stur         r0, [r2, #0x13]
    //     0x427580: ldur         r0, [fp, #-0x20]
    // 0x427584: ArrayStore: r2[0] = r0  ; List_8
    //     0x427584: stur         r0, [r2, #0x17]
    //     0x427588: ldur         r0, [fp, #-8]
    // 0x42758c: StoreField: r2->field_1b = r0
    //     0x42758c: stur         r0, [r2, #0x1b]
    // 0x427590: r1 = pp[0x5c58]
    //     0x427590: ldr          r1, [PP, #0x5c58]
    // 0x427594: r0 = call 0x61e854
    //     0x427594: bl           0x61e854
    // 0x427598: r1 = r0
    //     0x427598: mov          r1, r0
    //     0x42759c: ldur         r0, [fp, #-0x28]
    //     0x4275a0: stur         r1, [fp, #-8]
    // 0x4275a4: StoreField: r1->field_f = r0
    //     0x4275a4: stur         r0, [r1, #0xf]
    //     0x4275a8: mov          r0, #8
    // 0x4275ac: StoreField: r1->field_b = r0
    //     0x4275ac: stur         r0, [r1, #0xb]
    // 0x4275b0: r0 = call 0x3a1414
    //     0x4275b0: bl           0x3a1414
    // 0x4275b4: r1 = r0
    //     0x4275b4: mov          r1, r0
    // 0x4275b8: r0 = pp[0x5140]
    //     0x4275b8: ldr          r0, [PP, #0x5140]
    //     0x4275bc: stur         r1, [fp, #-0x10]
    // 0x4275c0: StoreField: r1->field_f = r0
    //     0x4275c0: stur         r0, [r1, #0xf]
    // 0x4275c4: r0 = pp[0xaee]
    //     0x4275c4: add          r0, PP, #0xe, lsl #12
    //     0x4275c8: ldr          r0, [r0, #0xae0]
    // 0x4275cc: StoreField: r1->field_13 = r0
    //     0x4275cc: stur         r0, [r1, #0x13]
    // 0x4275d0: r0 = pp[0xb16]
    //     0x4275d0: add          r0, PP, #0xe, lsl #12
    //     0x4275d4: ldr          r0, [r0, #0xb08]
    // 0x4275d8: ArrayStore: r1[0] = r0  ; List_8
    //     0x4275d8: stur         r0, [r1, #0x17]
    // 0x4275dc: r0 = pp[0xb6e]
    //     0x4275dc: add          r0, PP, #0xe, lsl #12
    //     0x4275e0: ldr          r0, [r0, #0xb60]
    // 0x4275e4: StoreField: r1->field_1b = r0
    //     0x4275e4: stur         r0, [r1, #0x1b]
    // 0x4275e8: r0 = pp[0xb06]
    //     0x4275e8: add          r0, PP, #0xe, lsl #12
    //     0x4275ec: ldr          r0, [r0, #0xaf8]
    // 0x4275f0: StoreField: r1->field_23 = r0
    //     0x4275f0: stur         r0, [r1, #0x23]
    // 0x4275f4: r0 = pp[0xb2]
    //     0x4275f4: add          r0, PP, #0xa, lsl #12
    //     0x4275f8: ldr          r0, [r0, #0xa8]
    // 0x4275fc: StoreField: r1->field_2b = r0
    //     0x4275fc: stur         r0, [r1, #0x2b]
    // 0x427600: StoreField: r1->field_2f = xzr
    //     0x427600: stur         xzr, [r1, #0x2f]
    //     0x427604: ldur         r0, [fp, #-8]
    // 0x427608: StoreField: r1->field_b = r0
    //     0x427608: stur         r0, [r1, #0xb]
    // 0x42760c: r0 = call 0x391a04
    //     0x42760c: bl           0x391a04
    //     0x427610: stur         r0, [fp, #-8]
    // 0x427614: BARRIER = pp[0x3e9]
    //     0x427614: add          BARRIER, PP, #0x11, lsl #12
    //     0x427618: ldr          BARRIER, [BARRIER, #0x3d8]
    // 0x42761c: lr = pp[0xaae]
    //     0x42761c: add          lr, PP, #0xe, lsl #12
    //     0x427620: ldr          lr, [lr, #0xaa0]
    //     0x427624: stp          lr, BARRIER, [SP, #8]
    //     0x427628: ldur         BARRIER, [fp, #-0x10]
    //     0x42762c: str          BARRIER, [SP]
    // 0x427630: r1 = r0
    //     0x427630: mov          r1, r0
    // 0x427634: r4 = pp[0x411]
    //     0x427634: add          r4, PP, #0x11, lsl #12
    //     0x427638: ldr          r4, [r4, #0x400]
    // 0x42763c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x42763c: bl           0x391490
    //     0x427640: ldur         r0, [fp, #-8]
    // 0x427644: SP = fp
    //     0x427644: mov          SP, fp
    // 0x427648: LeaveFrame
    //     0x427648: ldp          fp, lr, [SP], #0x10
    // 0x42764c: ret
    //     0x42764c: ret          
    // 0x427650: r0 = call 0x61fa28
    //     0x427650: bl           0x61fa28
    // 0x427654: b 0x427110
    //     0x427654: b            0x427110
    // 0x427658: r9 = pp[0x419]
    //     0x427658: add          r9, PP, #0x11, lsl #12
    //     0x42765c: ldr          r9, [r9, #0x408]
    // 0x427660: r0 = call 0x620258
    //     0x427660: bl           0x620258
  }

  onPageShow() {
    // ** addr: 0x4a9f8c, size: 0x40
    // 0x4a9f8c: EnterFrame
    //     0x4a9f8c: stp          fp, lr, [SP, #-0x10]!
    //     0x4a9f90: mov          fp, SP
    // 0x4a9f94: CheckStackOverflow
    //     0x4a9f94: ldr          BARRIER, [THR, #0x38]
    //     0x4a9f98: cmp          SP, BARRIER
    //     0x4a9f9c: b.ls         0x4a9fc4
    // 0x4a9fa0: r0 = soul_flutter_international$common$base$soul_state_SoulState::onPageShow()
    //     0x4a9fa0: bl           0x4aa6c4
    // 0x4a9fa4: r1 = pp[0xc2f]
    //     0x4a9fa4: add          r1, PP, #0x17, lsl #12
    //     0x4a9fa8: ldr          r1, [r1, #0xc18]
    // 0x4a9fac: r4 = pp[0x4c0]
    //     0x4a9fac: ldr          r4, [PP, #0x4c0]
    // 0x4a9fb0: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventPv()
    //     0x4a9fb0: bl           0x4a9e38
    // 0x4a9fb4: r0 = NULL
    //     0x4a9fb4: mov          r0, NULL
    // 0x4a9fb8: SP = fp
    //     0x4a9fb8: mov          SP, fp
    // 0x4a9fbc: LeaveFrame
    //     0x4a9fbc: ldp          fp, lr, [SP], #0x10
    // 0x4a9fc0: ret
    //     0x4a9fc0: ret          
    // 0x4a9fc4: r0 = call 0x61fa28
    //     0x4a9fc4: bl           0x61fa28
    // 0x4a9fc8: b 0x4a9fa0
    //     0x4a9fc8: b            0x4a9fa0
  }

  ctor() {
    // ** addr: 0x4c44dc, size: 0xd0
    // 0x4c44dc: EnterFrame
    //     0x4c44dc: stp          fp, lr, [SP, #-0x10]!
    //     0x4c44e0: mov          fp, SP
    // 0x4c44e4: AllocStack(0x10)
    //     0x4c44e4: sub          SP, SP, #0x10
    // 0x4c44e8: r0 = pp[0x40]
    //     0x4c44e8: ldr          r0, [PP, #0x40]
    //     0x4c44ec: stur         r1, [fp, #-8]
    // 0x4c44f0: CheckStackOverflow
    //     0x4c44f0: ldr          BARRIER, [THR, #0x38]
    //     0x4c44f4: cmp          SP, BARRIER
    //     0x4c44f8: b.ls         0x4c45a4
    // 0x4c44fc: StoreField: r1->field_1b = r0
    //     0x4c44fc: stur         r0, [r1, #0x1b]
    // 0x4c4500: StoreField: r1->field_1f = r0
    //     0x4c4500: stur         r0, [r1, #0x1f]
    // 0x4c4504: r0 = call 0x4c45ac
    //     0x4c4504: bl           0x4c45ac
    // 0x4c4508: r1 = r0
    //     0x4c4508: mov          r1, r0
    //     0x4c450c: mov          r0, #-1
    //     0x4c4510: stur         r1, [fp, #-0x10]
    // 0x4c4514: StoreField: r1->field_23 = r0
    //     0x4c4514: stur         r0, [r1, #0x23]
    // 0x4c4518: StoreField: r1->field_7 = xzr
    //     0x4c4518: stur         xzr, [r1, #7]
    // 0x4c451c: StoreField: r1->field_13 = xzr
    //     0x4c451c: stur         xzr, [r1, #0x13]
    // 0x4c4520: StoreField: r1->field_1b = xzr
    //     0x4c4520: stur         xzr, [r1, #0x1b]
    //     0x4c4524: ldr          r0, [THR, #0x68]
    // 0x4c4528: LoadField: r0 = r0->field_b90
    //     0x4c4528: ldr          r0, [r0, #0xb90]
    // 0x4c452c: BARRIER = pp[0x40]
    //     0x4c452c: ldr          BARRIER, [PP, #0x40]
    //     0x4c4530: cmp          r0, r16
    // 0x4c4534: b.ne 0x4c4540
    //     0x4c4534: b.ne         0x4c4540
    // 0x4c4538: r2 = pp[0x3608]
    //     0x4c4538: ldr          r2, [PP, #0x3608]
    // 0x4c453c: r0 = call 0x61d99c
    //     0x4c453c: bl           0x61d99c
    // 0x4c4540: r1 = r0
    //     0x4c4540: mov          r1, r0
    //     0x4c4544: ldur         r0, [fp, #-0x10]
    // 0x4c4548: StoreField: r0->field_f = r1
    //     0x4c4548: stur         r1, [r0, #0xf]
    //     0x4c454c: ldur         r2, [fp, #-8]
    // 0x4c4550: StoreField: r2->field_13 = r0
    //     0x4c4550: stur         r0, [r2, #0x13]
    //     0x4c4554: ldurb        r16, [r2, #-1]
    //     0x4c4558: ldurb        r17, [r0, #-1]
    //     0x4c455c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c4560: tst          BARRIER, HEAP, lsr #32
    // 0x4c4564: b.eq 0x4c456c
    //     0x4c4564: b.eq         0x4c456c
    // 0x4c4568: r0 = call 0x61e06c
    //     0x4c4568: bl           0x61e06c
    // 0x4c456c: r1 = pp[0x5558]
    //     0x4c456c: ldr          r1, [PP, #0x5558]
    // 0x4c4570: r0 = call 0x303988
    //     0x4c4570: bl           0x303988
    //     0x4c4574: ldur         r1, [fp, #-8]
    // 0x4c4578: ArrayStore: r1[0] = r0  ; List_8
    //     0x4c4578: stur         r0, [r1, #0x17]
    //     0x4c457c: ldurb        r16, [r1, #-1]
    //     0x4c4580: ldurb        r17, [r0, #-1]
    //     0x4c4584: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c4588: tst          BARRIER, HEAP, lsr #32
    // 0x4c458c: b.eq 0x4c4594
    //     0x4c458c: b.eq         0x4c4594
    // 0x4c4590: r0 = call 0x61e04c
    //     0x4c4590: bl           0x61e04c
    // 0x4c4594: r0 = NULL
    //     0x4c4594: mov          r0, NULL
    // 0x4c4598: SP = fp
    //     0x4c4598: mov          SP, fp
    // 0x4c459c: LeaveFrame
    //     0x4c459c: ldp          fp, lr, [SP], #0x10
    // 0x4c45a0: ret
    //     0x4c45a0: ret          
    // 0x4c45a4: r0 = call 0x61fa28
    //     0x4c45a4: bl           0x61fa28
    // 0x4c45a8: b 0x4c44fc
    //     0x4c45a8: b            0x4c44fc
  }

  initState() {
    // ** addr: 0x4d5778, size: 0x200
    // 0x4d5778: EnterFrame
    //     0x4d5778: stp          fp, lr, [SP, #-0x10]!
    //     0x4d577c: mov          fp, SP
    // 0x4d5780: AllocStack(0x20)
    //     0x4d5780: sub          SP, SP, #0x20
    // 0x4d5784: r3 = r1
    //     0x4d5784: mov          r3, r1
    //     0x4d5788: stur         r1, [fp, #-8]
    // 0x4d578c: CheckStackOverflow
    //     0x4d578c: ldr          BARRIER, [THR, #0x38]
    //     0x4d5790: cmp          SP, BARRIER
    //     0x4d5794: b.ls         0x4d5968
    // 0x4d5798: LoadField: r0 = r3->field_b
    //     0x4d5798: ldur         r0, [r3, #0xb]
    //     0x4d579c: add          r0, r0, HEAP, lsl #32
    //     0x4d57a0: cmp          r0, r22
    // 0x4d57a4: b.eq 0x4d5970
    //     0x4d57a4: b.eq         0x4d5970
    // 0x4d57a8: LoadField: r1 = r0->field_b
    //     0x4d57a8: ldur         r1, [r0, #0xb]
    //     0x4d57ac: add          r1, r1, HEAP, lsl #32
    //     0x4d57b0: cmp          r1, r22
    // 0x4d57b4: b.ne 0x4d57c0
    //     0x4d57b4: b.ne         0x4d57c0
    // 0x4d57b8: r0 = NULL
    //     0x4d57b8: mov          r0, NULL
    // 0x4d57bc: b 0x4d57dc
    //     0x4d57bc: b            0x4d57dc
    // 0x4d57c0: r0 = LoadClassIdInstr(r1)
    //     0x4d57c0: ldur         r0, [r1, #-1]
    //     0x4d57c4: ubfx         r0, r0, #0xc, #0x14
    // 0x4d57c8: r2 = pp[0x429]
    //     0x4d57c8: add          r2, PP, #0x11, lsl #12
    //     0x4d57cc: ldr          r2, [r2, #0x418]
    //     0x4d57d0: sub          lr, r0, #1, lsl #12
    //     0x4d57d4: ldr          lr, [r21, lr, lsl #3]
    // 0x4d57d8: r0 = [R]()
    //     0x4d57d8: blr          lr
    //     0x4d57dc: cmp          r0, r22
    // 0x4d57e0: b.ne 0x4d57ec
    //     0x4d57e0: b.ne         0x4d57ec
    // 0x4d57e4: r4 = pp[0x148]
    //     0x4d57e4: ldr          r4, [PP, #0x148]
    // 0x4d57e8: b 0x4d57f0
    //     0x4d57e8: b            0x4d57f0
    // 0x4d57ec: r4 = r0
    //     0x4d57ec: mov          r4, r0
    //     0x4d57f0: ldur         r3, [fp, #-8]
    // 0x4d57f4: r0 = r4
    //     0x4d57f4: mov          r0, r4
    //     0x4d57f8: stur         r4, [fp, #-0x10]
    // 0x4d57fc: r2 = NULL
    //     0x4d57fc: mov          r2, NULL
    // 0x4d5800: r1 = NULL
    //     0x4d5800: mov          r1, NULL
    //     0x4d5804: mov          r4, #0x3c
    // 0x4d5808: branchIfSmi(r0, 0x4d5814)
    //     0x4d5808: tbz          r0, #0, 0x4d5814
    // 0x4d580c: r4 = LoadClassIdInstr(r0)
    //     0x4d580c: ldur         r4, [r0, #-1]
    //     0x4d5810: ubfx         r4, r4, #0xc, #0x14
    //     0x4d5814: sub          r4, r4, #0x5e
    //     0x4d5818: cmp          r4, #1
    // 0x4d581c: b.ls 0x4d5830
    //     0x4d581c: b.ls         0x4d5830
    // 0x4d5820: r8 = pp[0x2f8]
    //     0x4d5820: ldr          r8, [PP, #0x2f8]
    // 0x4d5824: r3 = pp[0x431]
    //     0x4d5824: add          r3, PP, #0x11, lsl #12
    //     0x4d5828: ldr          r3, [r3, #0x420]
    // 0x4d582c: r0 = call 0x62a0c0
    //     0x4d582c: bl           0x62a0c0
    //     0x4d5830: ldur         r0, [fp, #-0x10]
    //     0x4d5834: ldur         r3, [fp, #-8]
    // 0x4d5838: StoreField: r3->field_1b = r0
    //     0x4d5838: stur         r0, [r3, #0x1b]
    //     0x4d583c: ldurb        r16, [r3, #-1]
    //     0x4d5840: ldurb        r17, [r0, #-1]
    //     0x4d5844: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d5848: tst          BARRIER, HEAP, lsr #32
    // 0x4d584c: b.eq 0x4d5854
    //     0x4d584c: b.eq         0x4d5854
    // 0x4d5850: r0 = call 0x61e08c
    //     0x4d5850: bl           0x61e08c
    // 0x4d5854: LoadField: r0 = r3->field_b
    //     0x4d5854: ldur         r0, [r3, #0xb]
    //     0x4d5858: add          r0, r0, HEAP, lsl #32
    //     0x4d585c: cmp          r0, r22
    // 0x4d5860: b.eq 0x4d5974
    //     0x4d5860: b.eq         0x4d5974
    // 0x4d5864: LoadField: r1 = r0->field_b
    //     0x4d5864: ldur         r1, [r0, #0xb]
    //     0x4d5868: add          r1, r1, HEAP, lsl #32
    //     0x4d586c: cmp          r1, r22
    // 0x4d5870: b.ne 0x4d587c
    //     0x4d5870: b.ne         0x4d587c
    // 0x4d5874: r0 = NULL
    //     0x4d5874: mov          r0, NULL
    // 0x4d5878: b 0x4d5898
    //     0x4d5878: b            0x4d5898
    // 0x4d587c: r0 = LoadClassIdInstr(r1)
    //     0x4d587c: ldur         r0, [r1, #-1]
    //     0x4d5880: ubfx         r0, r0, #0xc, #0x14
    // 0x4d5884: r2 = pp[0xd58]
    //     0x4d5884: add          r2, PP, #0x10, lsl #12
    //     0x4d5888: ldr          r2, [r2, #0xd48]
    //     0x4d588c: sub          lr, r0, #1, lsl #12
    //     0x4d5890: ldr          lr, [r21, lr, lsl #3]
    // 0x4d5894: r0 = [R]()
    //     0x4d5894: blr          lr
    //     0x4d5898: cmp          r0, r22
    // 0x4d589c: b.ne 0x4d58a8
    //     0x4d589c: b.ne         0x4d58a8
    // 0x4d58a0: r4 = pp[0x148]
    //     0x4d58a0: ldr          r4, [PP, #0x148]
    // 0x4d58a4: b 0x4d58ac
    //     0x4d58a4: b            0x4d58ac
    // 0x4d58a8: r4 = r0
    //     0x4d58a8: mov          r4, r0
    //     0x4d58ac: ldur         r3, [fp, #-8]
    // 0x4d58b0: r0 = r4
    //     0x4d58b0: mov          r0, r4
    //     0x4d58b4: stur         r4, [fp, #-0x10]
    // 0x4d58b8: r2 = NULL
    //     0x4d58b8: mov          r2, NULL
    // 0x4d58bc: r1 = NULL
    //     0x4d58bc: mov          r1, NULL
    //     0x4d58c0: mov          r4, #0x3c
    // 0x4d58c4: branchIfSmi(r0, 0x4d58d0)
    //     0x4d58c4: tbz          r0, #0, 0x4d58d0
    // 0x4d58c8: r4 = LoadClassIdInstr(r0)
    //     0x4d58c8: ldur         r4, [r0, #-1]
    //     0x4d58cc: ubfx         r4, r4, #0xc, #0x14
    //     0x4d58d0: sub          r4, r4, #0x5e
    //     0x4d58d4: cmp          r4, #1
    // 0x4d58d8: b.ls 0x4d58ec
    //     0x4d58d8: b.ls         0x4d58ec
    // 0x4d58dc: r8 = pp[0x2f8]
    //     0x4d58dc: ldr          r8, [PP, #0x2f8]
    // 0x4d58e0: r3 = pp[0x441]
    //     0x4d58e0: add          r3, PP, #0x11, lsl #12
    //     0x4d58e4: ldr          r3, [r3, #0x430]
    // 0x4d58e8: r0 = call 0x62a0c0
    //     0x4d58e8: bl           0x62a0c0
    //     0x4d58ec: ldur         r0, [fp, #-0x10]
    //     0x4d58f0: ldur         r1, [fp, #-8]
    // 0x4d58f4: StoreField: r1->field_1f = r0
    //     0x4d58f4: stur         r0, [r1, #0x1f]
    //     0x4d58f8: ldurb        r16, [r1, #-1]
    //     0x4d58fc: ldurb        r17, [r0, #-1]
    //     0x4d5900: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d5904: tst          BARRIER, HEAP, lsr #32
    // 0x4d5908: b.eq 0x4d5910
    //     0x4d5908: b.eq         0x4d5910
    // 0x4d590c: r0 = call 0x61e04c
    //     0x4d590c: bl           0x61e04c
    // 0x4d5910: LoadField: r0 = r1->field_1b
    //     0x4d5910: ldur         r0, [r1, #0x1b]
    //     0x4d5914: add          r0, r0, HEAP, lsl #32
    // 0x4d5918: LoadField: r2 = r0->field_7
    //     0x4d5918: ldur         r2, [r0, #7]
    //     0x4d591c: sbfx         r3, r2, #1, #0x1f
    //     0x4d5920: cmp          r3, #4
    // 0x4d5924: b.ge 0x4d5958
    //     0x4d5924: b.ge         0x4d5958
    // 0x4d5928: BARRIER = pp[0x451]
    //     0x4d5928: add          BARRIER, PP, #0x11, lsl #12
    //     0x4d592c: ldr          BARRIER, [BARRIER, #0x440]
    //     0x4d5930: stp          BARRIER, r0, [SP]
    // 0x4d5934: r0 = dart_core__StringBase::op_add()
    //     0x4d5934: bl           0x281718
    //     0x4d5938: ldur         r1, [fp, #-8]
    // 0x4d593c: StoreField: r1->field_1b = r0
    //     0x4d593c: stur         r0, [r1, #0x1b]
    //     0x4d5940: ldurb        r16, [r1, #-1]
    //     0x4d5944: ldurb        r17, [r0, #-1]
    //     0x4d5948: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d594c: tst          BARRIER, HEAP, lsr #32
    // 0x4d5950: b.eq 0x4d5958
    //     0x4d5950: b.eq         0x4d5958
    // 0x4d5954: r0 = call 0x61e04c
    //     0x4d5954: bl           0x61e04c
    // 0x4d5958: r0 = NULL
    //     0x4d5958: mov          r0, NULL
    // 0x4d595c: SP = fp
    //     0x4d595c: mov          SP, fp
    // 0x4d5960: LeaveFrame
    //     0x4d5960: ldp          fp, lr, [SP], #0x10
    // 0x4d5964: ret
    //     0x4d5964: ret          
    // 0x4d5968: r0 = call 0x61fa28
    //     0x4d5968: bl           0x61fa28
    // 0x4d596c: b 0x4d5798
    //     0x4d596c: b            0x4d5798
    // 0x4d5970: r0 = call 0x61ffd0
    //     0x4d5970: bl           0x61ffd0
    // 0x4d5974: r0 = call 0x61ffd0
    //     0x4d5974: bl           0x61ffd0
  }

  createState() {
    // ** addr: 0x4c4494, size: 0x48
    // 0x4c4494: EnterFrame
    //     0x4c4494: stp          fp, lr, [SP, #-0x10]!
    //     0x4c4498: mov          fp, SP
    // 0x4c449c: AllocStack(8)
    //     0x4c449c: sub          SP, SP, #8
    // 0x4c44a0: CheckStackOverflow
    //     0x4c44a0: ldr          BARRIER, [THR, #0x38]
    //     0x4c44a4: cmp          SP, BARRIER
    //     0x4c44a8: b.ls         0x4c44d4
    // 0x4c44ac: r1 = pp[0x7d3]
    //     0x4c44ac: add          r1, PP, #0xb, lsl #12
    //     0x4c44b0: ldr          r1, [r1, #0x7c8]
    // 0x4c44b4: r0 = call 0x4c45b8
    //     0x4c44b4: bl           0x4c45b8
    // 0x4c44b8: r1 = r0
    //     0x4c44b8: mov          r1, r0
    //     0x4c44bc: stur         r0, [fp, #-8]
    // 0x4c44c0: r0 = soul_flutter_international$biz$party$page_party_password__PartyPasswordState::ctor()
    //     0x4c44c0: bl           0x4c44dc
    //     0x4c44c4: ldur         r0, [fp, #-8]
    // 0x4c44c8: SP = fp
    //     0x4c44c8: mov          SP, fp
    // 0x4c44cc: LeaveFrame
    //     0x4c44cc: ldp          fp, lr, [SP], #0x10
    // 0x4c44d0: ret
    //     0x4c44d0: ret          
    // 0x4c44d4: r0 = call 0x61fa28
    //     0x4c44d4: bl           0x61fa28
    // 0x4c44d8: b 0x4c44ac
    //     0x4c44d8: b            0x4c44ac
  }
