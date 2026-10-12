// lib: , url: soul_flutter_international$biz$party$page_party_search


  build() {
    // ** addr: 0x3b3f3c, size: 0x86c
    // 0x3b3f3c: EnterFrame
    //     0x3b3f3c: stp          fp, lr, [SP, #-0x10]!
    //     0x3b3f40: mov          fp, SP
    // 0x3b3f44: AllocStack(0x78)
    //     0x3b3f44: sub          SP, SP, #0x78
    //     0x3b3f48: stur         r1, [fp, #-8]
    // 0x3b3f4c: CheckStackOverflow
    //     0x3b3f4c: ldr          BARRIER, [THR, #0x38]
    //     0x3b3f50: cmp          SP, BARRIER
    //     0x3b3f54: b.ls         0x3b4734
    //     0x3b3f58: mov          r1, #1
    // 0x3b3f5c: r0 = call 0x61e890
    //     0x3b3f5c: bl           0x61e890
    // 0x3b3f60: r1 = r0
    //     0x3b3f60: mov          r1, r0
    //     0x3b3f64: ldur         r0, [fp, #-8]
    //     0x3b3f68: stur         r1, [fp, #-0x18]
    // 0x3b3f6c: StoreField: r1->field_f = r0
    //     0x3b3f6c: stur         r0, [r1, #0xf]
    // 0x3b3f70: LoadField: r2 = r0->field_b
    //     0x3b3f70: ldur         r2, [r0, #0xb]
    //     0x3b3f74: add          r2, r2, HEAP, lsl #32
    //     0x3b3f78: stur         r2, [fp, #-0x10]
    // 0x3b3f7c: LoadField: r0 = r2->field_1b
    //     0x3b3f7c: ldur         r0, [r2, #0x1b]
    //     0x3b3f80: add          r0, r0, HEAP, lsl #32
    // 0x3b3f84: BARRIER = pp[0x40]
    //     0x3b3f84: ldr          BARRIER, [PP, #0x40]
    //     0x3b3f88: cmp          r0, r16
    // 0x3b3f8c: b.eq 0x3b473c
    //     0x3b3f8c: b.eq         0x3b473c
    // 0x3b3f90: LoadField: r3 = r0->field_7
    //     0x3b3f90: ldur         r3, [r0, #7]
    //     0x3b3f94: add          r3, r3, HEAP, lsl #32
    // 0x3b3f98: BARRIER = pp[0x40]
    //     0x3b3f98: ldr          BARRIER, [PP, #0x40]
    //     0x3b3f9c: cmp          r3, r16
    // 0x3b3fa0: b.eq 0x3b4748
    //     0x3b3fa0: b.eq         0x3b4748
    //     0x3b3fa4: stur         r3, [fp, #-8]
    // 0x3b3fa8: r0 = call 0x3b48d8
    //     0x3b3fa8: bl           0x3b48d8
    // 0x3b3fac: r2 = r0
    //     0x3b3fac: mov          r2, r0
    //     0x3b3fb0: ldur         r0, [fp, #-8]
    //     0x3b3fb4: stur         r2, [fp, #-0x20]
    // 0x3b3fb8: StoreField: r2->field_13 = r0
    //     0x3b3fb8: stur         r0, [r2, #0x13]
    //     0x3b3fbc: fmov         d0, #16.00000000
    // 0x3b3fc0: StoreField: r2->field_b = d0
    //     0x3b3fc0: stur         d0, [r2, #0xb]
    // 0x3b3fc4: r1 = pp[0x5e7]
    //     0x3b3fc4: add          r1, PP, #0xf, lsl #12
    //     0x3b3fc8: ldr          r1, [r1, #0x5d8]
    // 0x3b3fcc: r0 = call 0x399e40
    //     0x3b3fcc: bl           0x399e40
    // 0x3b3fd0: r1 = r0
    //     0x3b3fd0: mov          r1, r0
    // 0x3b3fd4: r0 = pp[0x52c8]
    //     0x3b3fd4: ldr          r0, [PP, #0x52c8]
    //     0x3b3fd8: stur         r1, [fp, #-0x28]
    // 0x3b3fdc: StoreField: r1->field_13 = r0
    //     0x3b3fdc: stur         r0, [r1, #0x13]
    // 0x3b3fe0: ArrayStore: r1[0] = r0  ; List_8
    //     0x3b3fe0: stur         r0, [r1, #0x17]
    // 0x3b3fe4: StoreField: r1->field_1b = r0
    //     0x3b3fe4: stur         r0, [r1, #0x1b]
    // 0x3b3fe8: StoreField: r1->field_1f = r0
    //     0x3b3fe8: stur         r0, [r1, #0x1f]
    //     0x3b3fec: ldur         r0, [fp, #-0x20]
    // 0x3b3ff0: StoreField: r1->field_b = r0
    //     0x3b3ff0: stur         r0, [r1, #0xb]
    //     0x3b3ff4: ldur         r0, [fp, #-0x10]
    // 0x3b3ff8: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x3b3ff8: ldur         r2, [r0, #0x17]
    //     0x3b3ffc: add          r2, r2, HEAP, lsl #32
    // 0x3b4000: BARRIER = pp[0x40]
    //     0x3b4000: ldr          BARRIER, [PP, #0x40]
    //     0x3b4004: cmp          r2, r16
    // 0x3b4008: b.eq 0x3b4754
    //     0x3b4008: b.eq         0x3b4754
    // 0x3b400c: LoadField: r3 = r2->field_7
    //     0x3b400c: ldur         r3, [r2, #7]
    //     0x3b4010: add          r3, r3, HEAP, lsl #32
    // 0x3b4014: BARRIER = pp[0x40]
    //     0x3b4014: ldr          BARRIER, [PP, #0x40]
    //     0x3b4018: cmp          r3, r16
    // 0x3b401c: b.eq 0x3b4760
    //     0x3b401c: b.eq         0x3b4760
    //     0x3b4020: stur         r3, [fp, #-8]
    // 0x3b4024: r0 = soul_flutter_international$res$styles_TextStyles::smallContent()
    //     0x3b4024: bl           0x3b48a4
    //     0x3b4028: stur         r0, [fp, #-0x20]
    // 0x3b402c: r0 = call 0x393bf8
    //     0x3b402c: bl           0x393bf8
    // 0x3b4030: r1 = r0
    //     0x3b4030: mov          r1, r0
    //     0x3b4034: ldur         r0, [fp, #-8]
    //     0x3b4038: stur         r1, [fp, #-0x30]
    // 0x3b403c: StoreField: r1->field_b = r0
    //     0x3b403c: stur         r0, [r1, #0xb]
    //     0x3b4040: ldur         r0, [fp, #-0x20]
    // 0x3b4044: StoreField: r1->field_13 = r0
    //     0x3b4044: stur         r0, [r1, #0x13]
    // 0x3b4048: r0 = pp[0x23f]
    //     0x3b4048: add          r0, PP, #0xf, lsl #12
    //     0x3b404c: ldr          r0, [r0, #0x230]
    // 0x3b4050: StoreField: r1->field_2b = r0
    //     0x3b4050: stur         r0, [r1, #0x2b]
    //     0x3b4054: mov          r2, #2
    // 0x3b4058: StoreField: r1->field_37 = r2
    //     0x3b4058: stur         r2, [r1, #0x37]
    //     0x3b405c: ldur         r3, [fp, #-0x10]
    // 0x3b4060: LoadField: r4 = r3->field_b
    //     0x3b4060: ldur         r4, [r3, #0xb]
    //     0x3b4064: add          r4, r4, HEAP, lsl #32
    // 0x3b4068: BARRIER = pp[0x40]
    //     0x3b4068: ldr          BARRIER, [PP, #0x40]
    //     0x3b406c: cmp          r4, r16
    // 0x3b4070: b.eq 0x3b476c
    //     0x3b4070: b.eq         0x3b476c
    //     0x3b4074: stur         r4, [fp, #-8]
    // 0x3b4078: r0 = soul_flutter_international$res$styles_TextStyles::firstLevelContent()
    //     0x3b4078: bl           0x3b4864
    //     0x3b407c: stur         r0, [fp, #-0x20]
    // 0x3b4080: r0 = call 0x393bf8
    //     0x3b4080: bl           0x393bf8
    // 0x3b4084: r1 = r0
    //     0x3b4084: mov          r1, r0
    //     0x3b4088: ldur         r0, [fp, #-8]
    //     0x3b408c: stur         r1, [fp, #-0x38]
    // 0x3b4090: StoreField: r1->field_b = r0
    //     0x3b4090: stur         r0, [r1, #0xb]
    //     0x3b4094: ldur         r0, [fp, #-0x20]
    // 0x3b4098: StoreField: r1->field_13 = r0
    //     0x3b4098: stur         r0, [r1, #0x13]
    //     0x3b409c: add          r0, NULL, #0x20
    // 0x3b40a0: StoreField: r1->field_27 = r0
    //     0x3b40a0: stur         r0, [r1, #0x27]
    // 0x3b40a4: r2 = pp[0x23f]
    //     0x3b40a4: add          r2, PP, #0xf, lsl #12
    //     0x3b40a8: ldr          r2, [r2, #0x230]
    // 0x3b40ac: StoreField: r1->field_2b = r2
    //     0x3b40ac: stur         r2, [r1, #0x2b]
    //     0x3b40b0: mov          r3, #8
    // 0x3b40b4: StoreField: r1->field_37 = r3
    //     0x3b40b4: stur         r3, [r1, #0x37]
    // 0x3b40b8: r0 = call 0x391c0c
    //     0x3b40b8: bl           0x391c0c
    // 0x3b40bc: r2 = r0
    //     0x3b40bc: mov          r2, r0
    // 0x3b40c0: r0 = pp[0x14a]
    //     0x3b40c0: add          r0, PP, #0x12, lsl #12
    //     0x3b40c4: ldr          r0, [r0, #0x138]
    //     0x3b40c8: stur         r2, [fp, #-8]
    // 0x3b40cc: StoreField: r2->field_f = r0
    //     0x3b40cc: stur         r0, [r2, #0xf]
    //     0x3b40d0: ldur         r0, [fp, #-0x38]
    // 0x3b40d4: StoreField: r2->field_b = r0
    //     0x3b40d4: stur         r0, [r2, #0xb]
    // 0x3b40d8: r1 = pp[0xade]
    //     0x3b40d8: add          r1, PP, #0xe, lsl #12
    //     0x3b40dc: ldr          r1, [r1, #0xad0]
    // 0x3b40e0: r0 = call 0x39fb14
    //     0x3b40e0: bl           0x39fb14
    // 0x3b40e4: r1 = r0
    //     0x3b40e4: mov          r1, r0
    //     0x3b40e8: mov          r0, #1
    //     0x3b40ec: stur         r1, [fp, #-0x20]
    // 0x3b40f0: StoreField: r1->field_13 = r0
    //     0x3b40f0: stur         r0, [r1, #0x13]
    // 0x3b40f4: r2 = pp[0xae6]
    //     0x3b40f4: add          r2, PP, #0xe, lsl #12
    //     0x3b40f8: ldr          r2, [r2, #0xad8]
    // 0x3b40fc: StoreField: r1->field_1b = r2
    //     0x3b40fc: stur         r2, [r1, #0x1b]
    //     0x3b4100: ldur         r3, [fp, #-8]
    // 0x3b4104: StoreField: r1->field_b = r3
    //     0x3b4104: stur         r3, [r1, #0xb]
    // 0x3b4108: r0 = soul_flutter_international$res$colors_SOColors::get_black20()
    //     0x3b4108: bl           0x3b4830
    //     0x3b410c: stur         r0, [fp, #-8]
    // 0x3b4110: r0 = call 0x352b04
    //     0x3b4110: bl           0x352b04
    //     0x3b4114: fmov         d0, #12.00000000
    //     0x3b4118: stur         r0, [fp, #-0x38]
    // 0x3b411c: StoreField: r0->field_7 = d0
    //     0x3b411c: stur         d0, [r0, #7]
    // 0x3b4120: StoreField: r0->field_f = d0
    //     0x3b4120: stur         d0, [r0, #0xf]
    // 0x3b4124: r0 = call 0x392f28
    //     0x3b4124: bl           0x392f28
    // 0x3b4128: r1 = r0
    //     0x3b4128: mov          r1, r0
    //     0x3b412c: ldur         r0, [fp, #-0x38]
    //     0x3b4130: stur         r1, [fp, #-0x40]
    // 0x3b4134: StoreField: r1->field_7 = r0
    //     0x3b4134: stur         r0, [r1, #7]
    // 0x3b4138: StoreField: r1->field_b = r0
    //     0x3b4138: stur         r0, [r1, #0xb]
    // 0x3b413c: StoreField: r1->field_f = r0
    //     0x3b413c: stur         r0, [r1, #0xf]
    // 0x3b4140: StoreField: r1->field_13 = r0
    //     0x3b4140: stur         r0, [r1, #0x13]
    // 0x3b4144: r0 = call 0x391dd8
    //     0x3b4144: bl           0x391dd8
    // 0x3b4148: r1 = r0
    //     0x3b4148: mov          r1, r0
    //     0x3b414c: ldur         r0, [fp, #-8]
    //     0x3b4150: stur         r1, [fp, #-0x38]
    // 0x3b4154: StoreField: r1->field_7 = r0
    //     0x3b4154: stur         r0, [r1, #7]
    //     0x3b4158: ldur         r0, [fp, #-0x40]
    // 0x3b415c: StoreField: r1->field_13 = r0
    //     0x3b415c: stur         r0, [r1, #0x13]
    // 0x3b4160: r0 = pp[0xb86]
    //     0x3b4160: add          r0, PP, #0xe, lsl #12
    //     0x3b4164: ldr          r0, [r0, #0xb78]
    // 0x3b4168: StoreField: r1->field_23 = r0
    //     0x3b4168: stur         r0, [r1, #0x23]
    // 0x3b416c: r0 = call 0x3a142c
    //     0x3b416c: bl           0x3a142c
    // 0x3b4170: r1 = r0
    //     0x3b4170: mov          r1, r0
    // 0x3b4174: r0 = pp[0x152]
    //     0x3b4174: add          r0, PP, #0x12, lsl #12
    //     0x3b4178: ldr          r0, [r0, #0x140]
    //     0x3b417c: stur         r1, [fp, #-8]
    // 0x3b4180: StoreField: r1->field_b = r0
    //     0x3b4180: stur         r0, [r1, #0xb]
    // 0x3b4184: r0 = pp[0x17f]
    //     0x3b4184: add          r0, PP, #0xf, lsl #12
    //     0x3b4188: ldr          r0, [r0, #0x170]
    // 0x3b418c: StoreField: r1->field_f = r0
    //     0x3b418c: stur         r0, [r1, #0xf]
    // 0x3b4190: r0 = pp[0xb8f]
    //     0x3b4190: add          r0, PP, #0xf, lsl #12
    //     0x3b4194: ldr          r0, [r0, #0xb80]
    // 0x3b4198: StoreField: r1->field_13 = r0
    //     0x3b4198: stur         r0, [r1, #0x13]
    // 0x3b419c: ArrayStore: r1[0] = r0  ; List_8
    //     0x3b419c: stur         r0, [r1, #0x17]
    // 0x3b41a0: r0 = call 0x2b8e80
    //     0x3b41a0: bl           0x2b8e80
    //     0x3b41a4: stur         r0, [fp, #-0x40]
    // 0x3b41a8: StoreField: r0->field_7 = xzr
    //     0x3b41a8: stur         xzr, [r0, #7]
    // 0x3b41ac: d0 = pp[0xb90]
    //     0x3b41ac: ldr          d0, [PP, #0xb90]
    // 0x3b41b0: StoreField: r0->field_f = d0
    //     0x3b41b0: stur         d0, [r0, #0xf]
    // 0x3b41b4: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3b41b4: stur         xzr, [r0, #0x17]
    // 0x3b41b8: StoreField: r0->field_1f = d0
    //     0x3b41b8: stur         d0, [r0, #0x1f]
    //     0x3b41bc: ldur         r1, [fp, #-0x10]
    // 0x3b41c0: LoadField: r2 = r1->field_f
    //     0x3b41c0: ldur         r2, [r1, #0xf]
    //     0x3b41c4: add          r2, r2, HEAP, lsl #32
    // 0x3b41c8: BARRIER = pp[0x40]
    //     0x3b41c8: ldr          BARRIER, [PP, #0x40]
    //     0x3b41cc: cmp          r2, r16
    // 0x3b41d0: b.eq 0x3b4778
    //     0x3b41d0: b.eq         0x3b4778
    //     0x3b41d4: str          r2, [SP]
    // 0x3b41d8: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x3b41d8: bl           0x2ac0a0
    //     0x3b41dc: stur         r0, [fp, #-0x48]
    // 0x3b41e0: r0 = soul_flutter_international$res$styles_TextStyles::smallerContent()
    //     0x3b41e0: bl           0x3b47fc
    //     0x3b41e4: stur         r0, [fp, #-0x50]
    // 0x3b41e8: r0 = call 0x393bf8
    //     0x3b41e8: bl           0x393bf8
    // 0x3b41ec: r1 = r0
    //     0x3b41ec: mov          r1, r0
    //     0x3b41f0: ldur         r0, [fp, #-0x48]
    //     0x3b41f4: stur         r1, [fp, #-0x58]
    // 0x3b41f8: StoreField: r1->field_b = r0
    //     0x3b41f8: stur         r0, [r1, #0xb]
    //     0x3b41fc: ldur         r0, [fp, #-0x50]
    // 0x3b4200: StoreField: r1->field_13 = r0
    //     0x3b4200: stur         r0, [r1, #0x13]
    // 0x3b4204: r0 = pp[0x23f]
    //     0x3b4204: add          r0, PP, #0xf, lsl #12
    //     0x3b4208: ldr          r0, [r0, #0x230]
    // 0x3b420c: StoreField: r1->field_2b = r0
    //     0x3b420c: stur         r0, [r1, #0x2b]
    //     0x3b4210: mov          r2, #2
    // 0x3b4214: StoreField: r1->field_37 = r2
    //     0x3b4214: stur         r2, [r1, #0x37]
    // 0x3b4218: r0 = call 0x39646c
    //     0x3b4218: bl           0x39646c
    // 0x3b421c: r3 = r0
    //     0x3b421c: mov          r3, r0
    //     0x3b4220: ldur         r0, [fp, #-0x40]
    //     0x3b4224: stur         r3, [fp, #-0x48]
    // 0x3b4228: StoreField: r3->field_f = r0
    //     0x3b4228: stur         r0, [r3, #0xf]
    //     0x3b422c: ldur         r0, [fp, #-0x58]
    // 0x3b4230: StoreField: r3->field_b = r0
    //     0x3b4230: stur         r0, [r3, #0xb]
    // 0x3b4234: r1 = NULL
    //     0x3b4234: mov          r1, NULL
    //     0x3b4238: mov          r2, #4
    // 0x3b423c: r0 = call 0x61f920
    //     0x3b423c: bl           0x61f920
    // 0x3b4240: r2 = r0
    //     0x3b4240: mov          r2, r0
    //     0x3b4244: ldur         r0, [fp, #-8]
    //     0x3b4248: stur         r2, [fp, #-0x40]
    // 0x3b424c: StoreField: r2->field_f = r0
    //     0x3b424c: stur         r0, [r2, #0xf]
    //     0x3b4250: ldur         r0, [fp, #-0x48]
    // 0x3b4254: StoreField: r2->field_13 = r0
    //     0x3b4254: stur         r0, [r2, #0x13]
    // 0x3b4258: r1 = pp[0x5c58]
    //     0x3b4258: ldr          r1, [PP, #0x5c58]
    // 0x3b425c: r0 = call 0x61e854
    //     0x3b425c: bl           0x61e854
    // 0x3b4260: r1 = r0
    //     0x3b4260: mov          r1, r0
    //     0x3b4264: ldur         r0, [fp, #-0x40]
    //     0x3b4268: stur         r1, [fp, #-8]
    // 0x3b426c: StoreField: r1->field_f = r0
    //     0x3b426c: stur         r0, [r1, #0xf]
    //     0x3b4270: mov          r2, #4
    // 0x3b4274: StoreField: r1->field_b = r2
    //     0x3b4274: stur         r2, [r1, #0xb]
    // 0x3b4278: r0 = call 0x3b47f0
    //     0x3b4278: bl           0x3b47f0
    // 0x3b427c: r1 = r0
    //     0x3b427c: mov          r1, r0
    // 0x3b4280: r0 = pp[0x5140]
    //     0x3b4280: ldr          r0, [PP, #0x5140]
    //     0x3b4284: stur         r1, [fp, #-0x40]
    // 0x3b4288: StoreField: r1->field_f = r0
    //     0x3b4288: stur         r0, [r1, #0xf]
    // 0x3b428c: r2 = pp[0xc90]
    //     0x3b428c: add          r2, PP, #0x10, lsl #12
    //     0x3b4290: ldr          r2, [r2, #0xc80]
    // 0x3b4294: StoreField: r1->field_13 = r2
    //     0x3b4294: stur         r2, [r1, #0x13]
    //     0x3b4298: fmov         d0, #2.00000000
    // 0x3b429c: ArrayStore: r1[0] = d0  ; List_8
    //     0x3b429c: stur         d0, [r1, #0x17]
    // 0x3b42a0: r2 = pp[0x15a]
    //     0x3b42a0: add          r2, PP, #0x12, lsl #12
    //     0x3b42a4: ldr          r2, [r2, #0x148]
    // 0x3b42a8: StoreField: r1->field_1f = r2
    //     0x3b42a8: stur         r2, [r1, #0x1f]
    // 0x3b42ac: StoreField: r1->field_23 = xzr
    //     0x3b42ac: stur         xzr, [r1, #0x23]
    // 0x3b42b0: r2 = pp[0x162]
    //     0x3b42b0: add          r2, PP, #0x12, lsl #12
    //     0x3b42b4: ldr          r2, [r2, #0x150]
    // 0x3b42b8: StoreField: r1->field_2b = r2
    //     0x3b42b8: stur         r2, [r1, #0x2b]
    // 0x3b42bc: r2 = pp[0xb06]
    //     0x3b42bc: add          r2, PP, #0xe, lsl #12
    //     0x3b42c0: ldr          r2, [r2, #0xaf8]
    // 0x3b42c4: StoreField: r1->field_33 = r2
    //     0x3b42c4: stur         r2, [r1, #0x33]
    // 0x3b42c8: r3 = pp[0xb2]
    //     0x3b42c8: add          r3, PP, #0xa, lsl #12
    //     0x3b42cc: ldr          r3, [r3, #0xa8]
    // 0x3b42d0: StoreField: r1->field_37 = r3
    //     0x3b42d0: stur         r3, [r1, #0x37]
    //     0x3b42d4: ldur         r4, [fp, #-8]
    // 0x3b42d8: StoreField: r1->field_b = r4
    //     0x3b42d8: stur         r4, [r1, #0xb]
    // 0x3b42dc: r0 = call 0x391a04
    //     0x3b42dc: bl           0x391a04
    //     0x3b42e0: stur         r0, [fp, #-8]
    // 0x3b42e4: BARRIER = pp[0x1f7]
    //     0x3b42e4: add          BARRIER, PP, #0xf, lsl #12
    //     0x3b42e8: ldr          BARRIER, [BARRIER, #0x1e8]
    // 0x3b42ec: lr = pp[0x16a]
    //     0x3b42ec: add          lr, PP, #0x12, lsl #12
    //     0x3b42f0: ldr          lr, [lr, #0x158]
    //     0x3b42f4: stp          lr, BARRIER, [SP, #0x10]
    //     0x3b42f8: ldur         BARRIER, [fp, #-0x38]
    //     0x3b42fc: ldur         lr, [fp, #-0x40]
    //     0x3b4300: stp          lr, BARRIER, [SP]
    // 0x3b4304: r1 = r0
    //     0x3b4304: mov          r1, r0
    // 0x3b4308: r4 = pp[0x172]
    //     0x3b4308: add          r4, PP, #0x12, lsl #12
    //     0x3b430c: ldr          r4, [r4, #0x160]
    // 0x3b4310: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3b4310: bl           0x391490
    // 0x3b4314: r1 = NULL
    //     0x3b4314: mov          r1, NULL
    //     0x3b4318: mov          r2, #6
    // 0x3b431c: r0 = call 0x61f920
    //     0x3b431c: bl           0x61f920
    // 0x3b4320: r2 = r0
    //     0x3b4320: mov          r2, r0
    //     0x3b4324: ldur         r0, [fp, #-0x30]
    //     0x3b4328: stur         r2, [fp, #-0x38]
    // 0x3b432c: StoreField: r2->field_f = r0
    //     0x3b432c: stur         r0, [r2, #0xf]
    //     0x3b4330: ldur         r0, [fp, #-0x20]
    // 0x3b4334: StoreField: r2->field_13 = r0
    //     0x3b4334: stur         r0, [r2, #0x13]
    //     0x3b4338: ldur         r0, [fp, #-8]
    // 0x3b433c: ArrayStore: r2[0] = r0  ; List_8
    //     0x3b433c: stur         r0, [r2, #0x17]
    // 0x3b4340: r1 = pp[0x5c58]
    //     0x3b4340: ldr          r1, [PP, #0x5c58]
    // 0x3b4344: r0 = call 0x61e854
    //     0x3b4344: bl           0x61e854
    // 0x3b4348: r1 = r0
    //     0x3b4348: mov          r1, r0
    //     0x3b434c: ldur         r0, [fp, #-0x38]
    //     0x3b4350: stur         r1, [fp, #-8]
    // 0x3b4354: StoreField: r1->field_f = r0
    //     0x3b4354: stur         r0, [r1, #0xf]
    //     0x3b4358: mov          r0, #6
    // 0x3b435c: StoreField: r1->field_b = r0
    //     0x3b435c: stur         r0, [r1, #0xb]
    // 0x3b4360: r0 = call 0x39310c
    //     0x3b4360: bl           0x39310c
    // 0x3b4364: r2 = r0
    //     0x3b4364: mov          r2, r0
    // 0x3b4368: r0 = pp[0x862]
    //     0x3b4368: add          r0, PP, #0xa, lsl #12
    //     0x3b436c: ldr          r0, [r0, #0x858]
    //     0x3b4370: stur         r2, [fp, #-0x20]
    // 0x3b4374: StoreField: r2->field_f = r0
    //     0x3b4374: stur         r0, [r2, #0xf]
    // 0x3b4378: r3 = pp[0xaee]
    //     0x3b4378: add          r3, PP, #0xe, lsl #12
    //     0x3b437c: ldr          r3, [r3, #0xae0]
    // 0x3b4380: StoreField: r2->field_13 = r3
    //     0x3b4380: stur         r3, [r2, #0x13]
    // 0x3b4384: r4 = pp[0xaf6]
    //     0x3b4384: add          r4, PP, #0xe, lsl #12
    //     0x3b4388: ldr          r4, [r4, #0xae8]
    // 0x3b438c: ArrayStore: r2[0] = r4  ; List_8
    //     0x3b438c: stur         r4, [r2, #0x17]
    // 0x3b4390: r1 = pp[0xafe]
    //     0x3b4390: add          r1, PP, #0xe, lsl #12
    //     0x3b4394: ldr          r1, [r1, #0xaf0]
    // 0x3b4398: StoreField: r2->field_1b = r1
    //     0x3b4398: stur         r1, [r2, #0x1b]
    // 0x3b439c: r5 = pp[0xb06]
    //     0x3b439c: add          r5, PP, #0xe, lsl #12
    //     0x3b43a0: ldr          r5, [r5, #0xaf8]
    // 0x3b43a4: StoreField: r2->field_23 = r5
    //     0x3b43a4: stur         r5, [r2, #0x23]
    // 0x3b43a8: r6 = pp[0xb2]
    //     0x3b43a8: add          r6, PP, #0xa, lsl #12
    //     0x3b43ac: ldr          r6, [r6, #0xa8]
    // 0x3b43b0: StoreField: r2->field_2b = r6
    //     0x3b43b0: stur         r6, [r2, #0x2b]
    // 0x3b43b4: StoreField: r2->field_2f = xzr
    //     0x3b43b4: stur         xzr, [r2, #0x2f]
    //     0x3b43b8: ldur         r1, [fp, #-8]
    // 0x3b43bc: StoreField: r2->field_b = r1
    //     0x3b43bc: stur         r1, [r2, #0xb]
    // 0x3b43c0: r1 = pp[0x5e7]
    //     0x3b43c0: add          r1, PP, #0xf, lsl #12
    //     0x3b43c4: ldr          r1, [r1, #0x5d8]
    // 0x3b43c8: r0 = call 0x399e40
    //     0x3b43c8: bl           0x399e40
    // 0x3b43cc: r3 = r0
    //     0x3b43cc: mov          r3, r0
    // 0x3b43d0: r0 = pp[0x7598]
    //     0x3b43d0: ldr          r0, [PP, #0x7598]
    //     0x3b43d4: stur         r3, [fp, #-8]
    // 0x3b43d8: StoreField: r3->field_13 = r0
    //     0x3b43d8: stur         r0, [r3, #0x13]
    // 0x3b43dc: r1 = pp[0xdf6]
    //     0x3b43dc: add          r1, PP, #0xe, lsl #12
    //     0x3b43e0: ldr          r1, [r1, #0xde8]
    // 0x3b43e4: ArrayStore: r3[0] = r1  ; List_8
    //     0x3b43e4: stur         r1, [r3, #0x17]
    // 0x3b43e8: StoreField: r3->field_1b = r0
    //     0x3b43e8: stur         r0, [r3, #0x1b]
    // 0x3b43ec: r0 = pp[0x5d7]
    //     0x3b43ec: add          r0, PP, #0xf, lsl #12
    //     0x3b43f0: ldr          r0, [r0, #0x5c8]
    // 0x3b43f4: StoreField: r3->field_1f = r0
    //     0x3b43f4: stur         r0, [r3, #0x1f]
    //     0x3b43f8: ldur         r0, [fp, #-0x20]
    // 0x3b43fc: StoreField: r3->field_b = r0
    //     0x3b43fc: stur         r0, [r3, #0xb]
    // 0x3b4400: r1 = NULL
    //     0x3b4400: mov          r1, NULL
    //     0x3b4404: mov          r2, #4
    // 0x3b4408: r0 = call 0x61f920
    //     0x3b4408: bl           0x61f920
    // 0x3b440c: r2 = r0
    //     0x3b440c: mov          r2, r0
    //     0x3b4410: ldur         r0, [fp, #-0x28]
    //     0x3b4414: stur         r2, [fp, #-0x20]
    // 0x3b4418: StoreField: r2->field_f = r0
    //     0x3b4418: stur         r0, [r2, #0xf]
    //     0x3b441c: ldur         r0, [fp, #-8]
    // 0x3b4420: StoreField: r2->field_13 = r0
    //     0x3b4420: stur         r0, [r2, #0x13]
    // 0x3b4424: r1 = pp[0x5c58]
    //     0x3b4424: ldr          r1, [PP, #0x5c58]
    // 0x3b4428: r0 = call 0x61e854
    //     0x3b4428: bl           0x61e854
    // 0x3b442c: r1 = r0
    //     0x3b442c: mov          r1, r0
    //     0x3b4430: ldur         r0, [fp, #-0x20]
    //     0x3b4434: stur         r1, [fp, #-8]
    // 0x3b4438: StoreField: r1->field_f = r0
    //     0x3b4438: stur         r0, [r1, #0xf]
    //     0x3b443c: mov          r2, #4
    // 0x3b4440: StoreField: r1->field_b = r2
    //     0x3b4440: stur         r2, [r1, #0xb]
    // 0x3b4444: r0 = call 0x39e6f4
    //     0x3b4444: bl           0x39e6f4
    // 0x3b4448: r2 = r0
    //     0x3b4448: mov          r2, r0
    // 0x3b444c: r0 = pp[0xf0e]
    //     0x3b444c: add          r0, PP, #0xe, lsl #12
    //     0x3b4450: ldr          r0, [r0, #0xf00]
    //     0x3b4454: stur         r2, [fp, #-0x20]
    // 0x3b4458: StoreField: r2->field_f = r0
    //     0x3b4458: stur         r0, [r2, #0xf]
    // 0x3b445c: r0 = pp[0xf16]
    //     0x3b445c: add          r0, PP, #0xe, lsl #12
    //     0x3b4460: ldr          r0, [r0, #0xf08]
    // 0x3b4464: ArrayStore: r2[0] = r0  ; List_8
    //     0x3b4464: stur         r0, [r2, #0x17]
    // 0x3b4468: r0 = pp[0xf1e]
    //     0x3b4468: add          r0, PP, #0xe, lsl #12
    //     0x3b446c: ldr          r0, [r0, #0xf10]
    // 0x3b4470: StoreField: r2->field_1b = r0
    //     0x3b4470: stur         r0, [r2, #0x1b]
    //     0x3b4474: ldur         r0, [fp, #-8]
    // 0x3b4478: StoreField: r2->field_b = r0
    //     0x3b4478: stur         r0, [r2, #0xb]
    // 0x3b447c: r1 = pp[0xade]
    //     0x3b447c: add          r1, PP, #0xe, lsl #12
    //     0x3b4480: ldr          r1, [r1, #0xad0]
    // 0x3b4484: r0 = call 0x39fb14
    //     0x3b4484: bl           0x39fb14
    // 0x3b4488: r1 = r0
    //     0x3b4488: mov          r1, r0
    //     0x3b448c: mov          r0, #1
    //     0x3b4490: stur         r1, [fp, #-0x28]
    // 0x3b4494: StoreField: r1->field_13 = r0
    //     0x3b4494: stur         r0, [r1, #0x13]
    // 0x3b4498: r2 = pp[0xae6]
    //     0x3b4498: add          r2, PP, #0xe, lsl #12
    //     0x3b449c: ldr          r2, [r2, #0xad8]
    // 0x3b44a0: StoreField: r1->field_1b = r2
    //     0x3b44a0: stur         r2, [r1, #0x1b]
    //     0x3b44a4: ldur         r3, [fp, #-0x20]
    // 0x3b44a8: StoreField: r1->field_b = r3
    //     0x3b44a8: stur         r3, [r1, #0xb]
    //     0x3b44ac: ldur         r3, [fp, #-0x10]
    // 0x3b44b0: LoadField: r4 = r3->field_13
    //     0x3b44b0: ldur         r4, [r3, #0x13]
    //     0x3b44b4: add          r4, r4, HEAP, lsl #32
    // 0x3b44b8: BARRIER = pp[0x40]
    //     0x3b44b8: ldr          BARRIER, [PP, #0x40]
    //     0x3b44bc: cmp          r4, r16
    // 0x3b44c0: b.eq 0x3b4784
    //     0x3b44c0: b.eq         0x3b4784
    //     0x3b44c4: stur         r4, [fp, #-0x20]
    // 0x3b44c8: LoadField: r3 = r4->field_7
    //     0x3b44c8: ldur         r3, [r4, #7]
    //     0x3b44cc: add          r3, r3, HEAP, lsl #32
    // 0x3b44d0: BARRIER = pp[0x40]
    //     0x3b44d0: ldr          BARRIER, [PP, #0x40]
    //     0x3b44d4: cmp          r3, r16
    // 0x3b44d8: b.eq 0x3b4790
    //     0x3b44d8: b.eq         0x3b4790
    //     0x3b44dc: stur         r3, [fp, #-8]
    // 0x3b44e0: r0 = call 0x3a67fc
    //     0x3b44e0: bl           0x3a67fc
    // 0x3b44e4: r1 = r0
    //     0x3b44e4: mov          r1, r0
    //     0x3b44e8: ldur         r0, [fp, #-8]
    //     0x3b44ec: stur         r1, [fp, #-0x10]
    // 0x3b44f0: StoreField: r1->field_b = r0
    //     0x3b44f0: stur         r0, [r1, #0xb]
    //     0x3b44f4: fmov         d0, #22.00000000
    // 0x3b44f8: StoreField: r1->field_13 = d0
    //     0x3b44f8: stur         d0, [r1, #0x13]
    //     0x3b44fc: add          r0, NULL, #0x20
    // 0x3b4500: StoreField: r1->field_1b = r0
    //     0x3b4500: stur         r0, [r1, #0x1b]
    // 0x3b4504: r0 = call 0x391c0c
    //     0x3b4504: bl           0x391c0c
    // 0x3b4508: r1 = r0
    //     0x3b4508: mov          r1, r0
    // 0x3b450c: r0 = pp[0x17a]
    //     0x3b450c: add          r0, PP, #0x12, lsl #12
    //     0x3b4510: ldr          r0, [r0, #0x168]
    //     0x3b4514: stur         r1, [fp, #-0x30]
    // 0x3b4518: StoreField: r1->field_f = r0
    //     0x3b4518: stur         r0, [r1, #0xf]
    //     0x3b451c: ldur         r0, [fp, #-0x10]
    // 0x3b4520: StoreField: r1->field_b = r0
    //     0x3b4520: stur         r0, [r1, #0xb]
    //     0x3b4524: ldur         r0, [fp, #-0x20]
    // 0x3b4528: LoadField: r2 = r0->field_b
    //     0x3b4528: ldur         r2, [r0, #0xb]
    //     0x3b452c: add          r2, r2, HEAP, lsl #32
    // 0x3b4530: BARRIER = pp[0x40]
    //     0x3b4530: ldr          BARRIER, [PP, #0x40]
    //     0x3b4534: cmp          r2, r16
    // 0x3b4538: b.eq 0x3b479c
    //     0x3b4538: b.eq         0x3b479c
    //     0x3b453c: stur         r2, [fp, #-8]
    // 0x3b4540: r0 = soul_flutter_international$res$colors_SOColors::get_s_03()
    //     0x3b4540: bl           0x3a6578
    // 0x3b4544: r1 = r0
    //     0x3b4544: mov          r1, r0
    // 0x3b4548: r0 = soul_flutter_international$res$styles_TextStyles::firstLevelTitle()
    //     0x3b4548: bl           0x3b47a8
    //     0x3b454c: stur         r0, [fp, #-0x10]
    // 0x3b4550: r0 = call 0x393bf8
    //     0x3b4550: bl           0x393bf8
    // 0x3b4554: r2 = r0
    //     0x3b4554: mov          r2, r0
    //     0x3b4558: ldur         r0, [fp, #-8]
    //     0x3b455c: stur         r2, [fp, #-0x20]
    // 0x3b4560: StoreField: r2->field_b = r0
    //     0x3b4560: stur         r0, [r2, #0xb]
    //     0x3b4564: ldur         r0, [fp, #-0x10]
    // 0x3b4568: StoreField: r2->field_13 = r0
    //     0x3b4568: stur         r0, [r2, #0x13]
    // 0x3b456c: r0 = pp[0x23f]
    //     0x3b456c: add          r0, PP, #0xf, lsl #12
    //     0x3b4570: ldr          r0, [r0, #0x230]
    // 0x3b4574: StoreField: r2->field_2b = r0
    //     0x3b4574: stur         r0, [r2, #0x2b]
    //     0x3b4578: mov          r0, #2
    // 0x3b457c: StoreField: r2->field_37 = r0
    //     0x3b457c: stur         r0, [r2, #0x37]
    // 0x3b4580: r1 = pp[0xade]
    //     0x3b4580: add          r1, PP, #0xe, lsl #12
    //     0x3b4584: ldr          r1, [r1, #0xad0]
    // 0x3b4588: r0 = call 0x39fb14
    //     0x3b4588: bl           0x39fb14
    // 0x3b458c: r3 = r0
    //     0x3b458c: mov          r3, r0
    //     0x3b4590: mov          r0, #1
    //     0x3b4594: stur         r3, [fp, #-8]
    // 0x3b4598: StoreField: r3->field_13 = r0
    //     0x3b4598: stur         r0, [r3, #0x13]
    // 0x3b459c: r0 = pp[0xae6]
    //     0x3b459c: add          r0, PP, #0xe, lsl #12
    //     0x3b45a0: ldr          r0, [r0, #0xad8]
    // 0x3b45a4: StoreField: r3->field_1b = r0
    //     0x3b45a4: stur         r0, [r3, #0x1b]
    //     0x3b45a8: ldur         r0, [fp, #-0x20]
    // 0x3b45ac: StoreField: r3->field_b = r0
    //     0x3b45ac: stur         r0, [r3, #0xb]
    // 0x3b45b0: r1 = NULL
    //     0x3b45b0: mov          r1, NULL
    //     0x3b45b4: mov          r2, #4
    // 0x3b45b8: r0 = call 0x61f920
    //     0x3b45b8: bl           0x61f920
    // 0x3b45bc: r2 = r0
    //     0x3b45bc: mov          r2, r0
    //     0x3b45c0: ldur         r0, [fp, #-0x30]
    //     0x3b45c4: stur         r2, [fp, #-0x10]
    // 0x3b45c8: StoreField: r2->field_f = r0
    //     0x3b45c8: stur         r0, [r2, #0xf]
    //     0x3b45cc: ldur         r0, [fp, #-8]
    // 0x3b45d0: StoreField: r2->field_13 = r0
    //     0x3b45d0: stur         r0, [r2, #0x13]
    // 0x3b45d4: r1 = pp[0x5c58]
    //     0x3b45d4: ldr          r1, [PP, #0x5c58]
    // 0x3b45d8: r0 = call 0x61e854
    //     0x3b45d8: bl           0x61e854
    // 0x3b45dc: r1 = r0
    //     0x3b45dc: mov          r1, r0
    //     0x3b45e0: ldur         r0, [fp, #-0x10]
    //     0x3b45e4: stur         r1, [fp, #-8]
    // 0x3b45e8: StoreField: r1->field_f = r0
    //     0x3b45e8: stur         r0, [r1, #0xf]
    //     0x3b45ec: mov          r2, #4
    // 0x3b45f0: StoreField: r1->field_b = r2
    //     0x3b45f0: stur         r2, [r1, #0xb]
    // 0x3b45f4: r0 = call 0x3a1414
    //     0x3b45f4: bl           0x3a1414
    // 0x3b45f8: r3 = r0
    //     0x3b45f8: mov          r3, r0
    // 0x3b45fc: r0 = pp[0x5140]
    //     0x3b45fc: ldr          r0, [PP, #0x5140]
    //     0x3b4600: stur         r3, [fp, #-0x10]
    // 0x3b4604: StoreField: r3->field_f = r0
    //     0x3b4604: stur         r0, [r3, #0xf]
    // 0x3b4608: r0 = pp[0xaee]
    //     0x3b4608: add          r0, PP, #0xe, lsl #12
    //     0x3b460c: ldr          r0, [r0, #0xae0]
    // 0x3b4610: StoreField: r3->field_13 = r0
    //     0x3b4610: stur         r0, [r3, #0x13]
    // 0x3b4614: r4 = pp[0xaf6]
    //     0x3b4614: add          r4, PP, #0xe, lsl #12
    //     0x3b4618: ldr          r4, [r4, #0xae8]
    // 0x3b461c: ArrayStore: r3[0] = r4  ; List_8
    //     0x3b461c: stur         r4, [r3, #0x17]
    // 0x3b4620: r5 = pp[0xb6e]
    //     0x3b4620: add          r5, PP, #0xe, lsl #12
    //     0x3b4624: ldr          r5, [r5, #0xb60]
    // 0x3b4628: StoreField: r3->field_1b = r5
    //     0x3b4628: stur         r5, [r3, #0x1b]
    // 0x3b462c: r6 = pp[0xb06]
    //     0x3b462c: add          r6, PP, #0xe, lsl #12
    //     0x3b4630: ldr          r6, [r6, #0xaf8]
    // 0x3b4634: StoreField: r3->field_23 = r6
    //     0x3b4634: stur         r6, [r3, #0x23]
    // 0x3b4638: r7 = pp[0xb2]
    //     0x3b4638: add          r7, PP, #0xa, lsl #12
    //     0x3b463c: ldr          r7, [r7, #0xa8]
    // 0x3b4640: StoreField: r3->field_2b = r7
    //     0x3b4640: stur         r7, [r3, #0x2b]
    // 0x3b4644: StoreField: r3->field_2f = xzr
    //     0x3b4644: stur         xzr, [r3, #0x2f]
    //     0x3b4648: ldur         r1, [fp, #-8]
    // 0x3b464c: StoreField: r3->field_b = r1
    //     0x3b464c: stur         r1, [r3, #0xb]
    // 0x3b4650: r1 = NULL
    //     0x3b4650: mov          r1, NULL
    //     0x3b4654: mov          r2, #4
    // 0x3b4658: r0 = call 0x61f920
    //     0x3b4658: bl           0x61f920
    // 0x3b465c: r2 = r0
    //     0x3b465c: mov          r2, r0
    //     0x3b4660: ldur         r0, [fp, #-0x28]
    //     0x3b4664: stur         r2, [fp, #-8]
    // 0x3b4668: StoreField: r2->field_f = r0
    //     0x3b4668: stur         r0, [r2, #0xf]
    //     0x3b466c: ldur         r0, [fp, #-0x10]
    // 0x3b4670: StoreField: r2->field_13 = r0
    //     0x3b4670: stur         r0, [r2, #0x13]
    // 0x3b4674: r1 = pp[0x5c58]
    //     0x3b4674: ldr          r1, [PP, #0x5c58]
    // 0x3b4678: r0 = call 0x61e854
    //     0x3b4678: bl           0x61e854
    // 0x3b467c: r1 = r0
    //     0x3b467c: mov          r1, r0
    //     0x3b4680: ldur         r0, [fp, #-8]
    //     0x3b4684: stur         r1, [fp, #-0x10]
    // 0x3b4688: StoreField: r1->field_f = r0
    //     0x3b4688: stur         r0, [r1, #0xf]
    //     0x3b468c: mov          r0, #4
    // 0x3b4690: StoreField: r1->field_b = r0
    //     0x3b4690: stur         r0, [r1, #0xb]
    // 0x3b4694: r0 = call 0x39310c
    //     0x3b4694: bl           0x39310c
    // 0x3b4698: r1 = r0
    //     0x3b4698: mov          r1, r0
    // 0x3b469c: r0 = pp[0x862]
    //     0x3b469c: add          r0, PP, #0xa, lsl #12
    //     0x3b46a0: ldr          r0, [r0, #0x858]
    //     0x3b46a4: stur         r1, [fp, #-8]
    // 0x3b46a8: StoreField: r1->field_f = r0
    //     0x3b46a8: stur         r0, [r1, #0xf]
    // 0x3b46ac: r0 = pp[0xaee]
    //     0x3b46ac: add          r0, PP, #0xe, lsl #12
    //     0x3b46b0: ldr          r0, [r0, #0xae0]
    // 0x3b46b4: StoreField: r1->field_13 = r0
    //     0x3b46b4: stur         r0, [r1, #0x13]
    // 0x3b46b8: r0 = pp[0xaf6]
    //     0x3b46b8: add          r0, PP, #0xe, lsl #12
    //     0x3b46bc: ldr          r0, [r0, #0xae8]
    // 0x3b46c0: ArrayStore: r1[0] = r0  ; List_8
    //     0x3b46c0: stur         r0, [r1, #0x17]
    // 0x3b46c4: r0 = pp[0xb6e]
    //     0x3b46c4: add          r0, PP, #0xe, lsl #12
    //     0x3b46c8: ldr          r0, [r0, #0xb60]
    // 0x3b46cc: StoreField: r1->field_1b = r0
    //     0x3b46cc: stur         r0, [r1, #0x1b]
    // 0x3b46d0: r0 = pp[0xb06]
    //     0x3b46d0: add          r0, PP, #0xe, lsl #12
    //     0x3b46d4: ldr          r0, [r0, #0xaf8]
    // 0x3b46d8: StoreField: r1->field_23 = r0
    //     0x3b46d8: stur         r0, [r1, #0x23]
    // 0x3b46dc: r0 = pp[0xb2]
    //     0x3b46dc: add          r0, PP, #0xa, lsl #12
    //     0x3b46e0: ldr          r0, [r0, #0xa8]
    // 0x3b46e4: StoreField: r1->field_2b = r0
    //     0x3b46e4: stur         r0, [r1, #0x2b]
    // 0x3b46e8: StoreField: r1->field_2f = xzr
    //     0x3b46e8: stur         xzr, [r1, #0x2f]
    //     0x3b46ec: ldur         r0, [fp, #-0x10]
    // 0x3b46f0: StoreField: r1->field_b = r0
    //     0x3b46f0: stur         r0, [r1, #0xb]
    // 0x3b46f4: r0 = call 0x3a1d94
    //     0x3b46f4: bl           0x3a1d94
    //     0x3b46f8: ldur         r2, [fp, #-0x18]
    // 0x3b46fc: r1 = pp[0x182]
    //     0x3b46fc: add          r1, PP, #0x12, lsl #12
    //     0x3b4700: ldr          r1, [r1, #0x170]
    //     0x3b4704: stur         r0, [fp, #-0x10]
    // 0x3b4708: r0 = call 0x61ec54
    //     0x3b4708: bl           0x61ec54
    //     0x3b470c: ldur         BARRIER, [fp, #-8]
    //     0x3b4710: stp          BARRIER, r0, [SP]
    //     0x3b4714: ldur         r1, [fp, #-0x10]
    // 0x3b4718: r4 = pp[0x214]
    //     0x3b4718: add          r4, PP, #0xc, lsl #12
    //     0x3b471c: ldr          r4, [r4, #0x208]
    // 0x3b4720: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x3b4720: bl           0x3a18c4
    //     0x3b4724: ldur         r0, [fp, #-0x10]
    // 0x3b4728: SP = fp
    //     0x3b4728: mov          SP, fp
    // 0x3b472c: LeaveFrame
    //     0x3b472c: ldp          fp, lr, [SP], #0x10
    // 0x3b4730: ret
    //     0x3b4730: ret          
    // 0x3b4734: r0 = call 0x61fa28
    //     0x3b4734: bl           0x61fa28
    // 0x3b4738: b 0x3b3f58
    //     0x3b4738: b            0x3b3f58
    // 0x3b473c: r9 = pp[0x18a]
    //     0x3b473c: add          r9, PP, #0x12, lsl #12
    //     0x3b4740: ldr          r9, [r9, #0x178]
    // 0x3b4744: r0 = call 0x620258
    //     0x3b4744: bl           0x620258
    // 0x3b4748: r9 = pp[0x192]
    //     0x3b4748: add          r9, PP, #0x12, lsl #12
    //     0x3b474c: ldr          r9, [r9, #0x180]
    // 0x3b4750: r0 = call 0x620258
    //     0x3b4750: bl           0x620258
    // 0x3b4754: r9 = pp[0x19a]
    //     0x3b4754: add          r9, PP, #0x12, lsl #12
    //     0x3b4758: ldr          r9, [r9, #0x188]
    // 0x3b475c: r0 = call 0x620258
    //     0x3b475c: bl           0x620258
    // 0x3b4760: r9 = pp[0x1a2]
    //     0x3b4760: add          r9, PP, #0x12, lsl #12
    //     0x3b4764: ldr          r9, [r9, #0x190]
    // 0x3b4768: r0 = call 0x620258
    //     0x3b4768: bl           0x620258
    // 0x3b476c: r9 = pp[0x1aa]
    //     0x3b476c: add          r9, PP, #0x12, lsl #12
    //     0x3b4770: ldr          r9, [r9, #0x198]
    // 0x3b4774: r0 = call 0x620258
    //     0x3b4774: bl           0x620258
    // 0x3b4778: r9 = pp[0x1b2]
    //     0x3b4778: add          r9, PP, #0x12, lsl #12
    //     0x3b477c: ldr          r9, [r9, #0x1a0]
    // 0x3b4780: r0 = call 0x620258
    //     0x3b4780: bl           0x620258
    // 0x3b4784: r9 = pp[0x1ba]
    //     0x3b4784: add          r9, PP, #0x12, lsl #12
    //     0x3b4788: ldr          r9, [r9, #0x1a8]
    // 0x3b478c: r0 = call 0x620258
    //     0x3b478c: bl           0x620258
    // 0x3b4790: r9 = pp[0x1c2]
    //     0x3b4790: add          r9, PP, #0x12, lsl #12
    //     0x3b4794: ldr          r9, [r9, #0x1b0]
    // 0x3b4798: r0 = call 0x620258
    //     0x3b4798: bl           0x620258
    // 0x3b479c: r9 = pp[0x1ca]
    //     0x3b479c: add          r9, PP, #0x12, lsl #12
    //     0x3b47a0: ldr          r9, [r9, #0x1b8]
    // 0x3b47a4: r0 = call 0x620258
    //     0x3b47a4: bl           0x620258
  }

  _anon_closure() {
    // ** addr: 0x3b4904, size: 0xc0
    // 0x3b4904: EnterFrame
    //     0x3b4904: stp          fp, lr, [SP, #-0x10]!
    //     0x3b4908: mov          fp, SP
    // 0x3b490c: AllocStack(8)
    //     0x3b490c: sub          SP, SP, #8
    //     0x3b4910: ldr          r0, [fp, #0x10]
    // 0x3b4914: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x3b4914: ldur         r1, [r0, #0x17]
    //     0x3b4918: add          r1, r1, HEAP, lsl #32
    // 0x3b491c: CheckStackOverflow
    //     0x3b491c: ldr          BARRIER, [THR, #0x38]
    //     0x3b4920: cmp          SP, BARRIER
    //     0x3b4924: b.ls         0x3b49b0
    // 0x3b4928: LoadField: r0 = r1->field_f
    //     0x3b4928: ldur         r0, [r1, #0xf]
    //     0x3b492c: add          r0, r0, HEAP, lsl #32
    // 0x3b4930: LoadField: r1 = r0->field_b
    //     0x3b4930: ldur         r1, [r0, #0xb]
    //     0x3b4934: add          r1, r1, HEAP, lsl #32
    // 0x3b4938: LoadField: r3 = r1->field_7
    //     0x3b4938: ldur         r3, [r1, #7]
    //     0x3b493c: add          r3, r3, HEAP, lsl #32
    // 0x3b4940: BARRIER = pp[0x40]
    //     0x3b4940: ldr          BARRIER, [PP, #0x40]
    //     0x3b4944: cmp          r3, r16
    // 0x3b4948: b.eq 0x3b49b8
    //     0x3b4948: b.eq         0x3b49b8
    //     0x3b494c: stur         r3, [fp, #-8]
    // 0x3b4950: LoadField: r0 = r3->field_7
    //     0x3b4950: ldur         r0, [r3, #7]
    //     0x3b4954: cbz          r0, 0x3b49a0
    // 0x3b4958: r0 = soul_flutter_international$common$plugins$router_RouterNative::_getInstance()
    //     0x3b4958: bl           0x3a86c0
    // 0x3b495c: r1 = r0
    //     0x3b495c: mov          r1, r0
    // 0x3b4960: r2 = pp[0x1d2]
    //     0x3b4960: add          r2, PP, #0x12, lsl #12
    //     0x3b4964: ldr          r2, [r2, #0x1c0]
    // 0x3b4968: r0 = soul_flutter_international$common$plugins$router_RouterNative::route()
    //     0x3b4968: bl           0x3a84c4
    // 0x3b496c: r1 = r0
    //     0x3b496c: mov          r1, r0
    //     0x3b4970: ldur         r3, [fp, #-8]
    // 0x3b4974: r2 = pp[0xd58]
    //     0x3b4974: add          r2, PP, #0x10, lsl #12
    //     0x3b4978: ldr          r2, [r2, #0xd48]
    // 0x3b497c: r0 = soul_flutter_international$common$plugins$router_SoulNavigator::withString()
    //     0x3b497c: bl           0x3a8024
    // 0x3b4980: r1 = r0
    //     0x3b4980: mov          r1, r0
    // 0x3b4984: r2 = pp[0x1da]
    //     0x3b4984: add          r2, PP, #0x12, lsl #12
    //     0x3b4988: ldr          r2, [r2, #0x1c8]
    // 0x3b498c: r3 = pp[0x1e2]
    //     0x3b498c: add          r3, PP, #0x12, lsl #12
    //     0x3b4990: ldr          r3, [r3, #0x1d0]
    // 0x3b4994: r0 = soul_flutter_international$common$plugins$router_SoulNavigator::withString()
    //     0x3b4994: bl           0x3a8024
    // 0x3b4998: r1 = r0
    //     0x3b4998: mov          r1, r0
    // 0x3b499c: r0 = soul_flutter_international$common$plugins$router_SoulNavigator::navigate()
    //     0x3b499c: bl           0x3a6ae8
    // 0x3b49a0: r0 = NULL
    //     0x3b49a0: mov          r0, NULL
    // 0x3b49a4: SP = fp
    //     0x3b49a4: mov          SP, fp
    // 0x3b49a8: LeaveFrame
    //     0x3b49a8: ldp          fp, lr, [SP], #0x10
    // 0x3b49ac: ret
    //     0x3b49ac: ret          
    // 0x3b49b0: r0 = call 0x61fa28
    //     0x3b49b0: bl           0x61fa28
    // 0x3b49b4: b 0x3b4928
    //     0x3b49b4: b            0x3b4928
    // 0x3b49b8: r9 = pp[0x1ea]
    //     0x3b49b8: add          r9, PP, #0x12, lsl #12
    //     0x3b49bc: ldr          r9, [r9, #0x1d8]
    // 0x3b49c0: r0 = call 0x620258
    //     0x3b49c0: bl           0x620258
  }

  build() {
    // ** addr: 0x427758, size: 0x218
    // 0x427758: EnterFrame
    //     0x427758: stp          fp, lr, [SP, #-0x10]!
    //     0x42775c: mov          fp, SP
    // 0x427760: AllocStack(0x28)
    //     0x427760: sub          SP, SP, #0x28
    //     0x427764: stur         r1, [fp, #-8]
    // 0x427768: CheckStackOverflow
    //     0x427768: ldr          BARRIER, [THR, #0x38]
    //     0x42776c: cmp          SP, BARRIER
    //     0x427770: b.ls         0x427968
    //     0x427774: mov          r1, #1
    // 0x427778: r0 = call 0x61e890
    //     0x427778: bl           0x61e890
    // 0x42777c: r1 = r0
    //     0x42777c: mov          r1, r0
    //     0x427780: ldur         r0, [fp, #-8]
    //     0x427784: stur         r1, [fp, #-0x10]
    // 0x427788: StoreField: r1->field_f = r0
    //     0x427788: stur         r0, [r1, #0xf]
    // 0x42778c: r0 = soul_flutter_international$res$colors_SOColors::get_s_06()
    //     0x42778c: bl           0x3b82c4
    // 0x427790: r1 = pp[0xb8c]
    //     0x427790: add          r1, PP, #0xc, lsl #12
    //     0x427794: ldr          r1, [r1, #0xb80]
    //     0x427798: stur         r0, [fp, #-0x18]
    // 0x42779c: r4 = pp[0x4c0]
    //     0x42779c: ldr          r4, [PP, #0x4c0]
    // 0x4277a0: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4277a0: bl           0x3a1dcc
    // 0x4277a4: r1 = r0
    //     0x4277a4: mov          r1, r0
    //     0x4277a8: ldur         r0, [fp, #-8]
    //     0x4277ac: stur         r1, [fp, #-0x28]
    // 0x4277b0: LoadField: r2 = r0->field_1b
    //     0x4277b0: ldur         r2, [r0, #0x1b]
    //     0x4277b4: add          r2, r2, HEAP, lsl #32
    //     0x4277b8: stur         r2, [fp, #-0x20]
    // 0x4277bc: r0 = call 0x427970
    //     0x4277bc: bl           0x427970
    // 0x4277c0: r3 = r0
    //     0x4277c0: mov          r3, r0
    // 0x4277c4: r0 = pp[0x148]
    //     0x4277c4: ldr          r0, [PP, #0x148]
    //     0x4277c8: stur         r3, [fp, #-8]
    // 0x4277cc: StoreField: r3->field_b = r0
    //     0x4277cc: stur         r0, [r3, #0xb]
    //     0x4277d0: ldur         r1, [fp, #-0x28]
    // 0x4277d4: StoreField: r3->field_f = r1
    //     0x4277d4: stur         r1, [r3, #0xf]
    //     0x4277d8: mov          r1, #-1
    // 0x4277dc: StoreField: r3->field_13 = r1
    //     0x4277dc: stur         r1, [r3, #0x13]
    //     0x4277e0: ldur         r1, [fp, #-0x20]
    // 0x4277e4: StoreField: r3->field_1b = r1
    //     0x4277e4: stur         r1, [r3, #0x1b]
    //     0x4277e8: ldur         r2, [fp, #-0x10]
    // 0x4277ec: r1 = pp[0xe60]
    //     0x4277ec: add          r1, PP, #0x10, lsl #12
    //     0x4277f0: ldr          r1, [r1, #0xe50]
    // 0x4277f4: r0 = call 0x61ec54
    //     0x4277f4: bl           0x61ec54
    // 0x4277f8: r1 = r0
    //     0x4277f8: mov          r1, r0
    //     0x4277fc: ldur         r0, [fp, #-8]
    // 0x427800: StoreField: r0->field_1f = r1
    //     0x427800: stur         r1, [r0, #0x1f]
    //     0x427804: ldur         r2, [fp, #-0x10]
    // 0x427808: r1 = pp[0xe68]
    //     0x427808: add          r1, PP, #0x10, lsl #12
    //     0x42780c: ldr          r1, [r1, #0xe58]
    // 0x427810: r0 = call 0x61ec54
    //     0x427810: bl           0x61ec54
    // 0x427814: r1 = pp[0xe70]
    //     0x427814: add          r1, PP, #0x10, lsl #12
    //     0x427818: ldr          r1, [r1, #0xe60]
    //     0x42781c: stur         r0, [fp, #-0x20]
    // 0x427820: r0 = call 0x41a414
    //     0x427820: bl           0x41a414
    // 0x427824: r3 = r0
    //     0x427824: mov          r3, r0
    //     0x427828: ldur         r0, [fp, #-0x20]
    //     0x42782c: stur         r3, [fp, #-0x28]
    // 0x427830: StoreField: r3->field_13 = r0
    //     0x427830: stur         r0, [r3, #0x13]
    //     0x427834: ldur         r2, [fp, #-0x10]
    // 0x427838: r1 = pp[0xe78]
    //     0x427838: add          r1, PP, #0x10, lsl #12
    //     0x42783c: ldr          r1, [r1, #0xe68]
    // 0x427840: r0 = call 0x61ec54
    //     0x427840: bl           0x61ec54
    // 0x427844: r1 = pp[0xe70]
    //     0x427844: add          r1, PP, #0x10, lsl #12
    //     0x427848: ldr          r1, [r1, #0xe60]
    //     0x42784c: stur         r0, [fp, #-0x10]
    // 0x427850: r0 = call 0x3b81c4
    //     0x427850: bl           0x3b81c4
    // 0x427854: r1 = r0
    //     0x427854: mov          r1, r0
    //     0x427858: ldur         r2, [fp, #-0x28]
    //     0x42785c: ldur         r3, [fp, #-0x10]
    // 0x427860: r5 = NULL
    //     0x427860: mov          r5, NULL
    //     0x427864: stur         r0, [fp, #-0x10]
    // 0x427868: r0 = provider$src$provider_InheritedProvider::ctor()
    //     0x427868: bl           0x3b7e8c
    // 0x42786c: r1 = pp[0xade]
    //     0x42786c: add          r1, PP, #0xe, lsl #12
    //     0x427870: ldr          r1, [r1, #0xad0]
    // 0x427874: r0 = call 0x39fb14
    //     0x427874: bl           0x39fb14
    // 0x427878: r3 = r0
    //     0x427878: mov          r3, r0
    //     0x42787c: mov          r0, #1
    //     0x427880: stur         r3, [fp, #-0x20]
    // 0x427884: StoreField: r3->field_13 = r0
    //     0x427884: stur         r0, [r3, #0x13]
    // 0x427888: r0 = pp[0xae6]
    //     0x427888: add          r0, PP, #0xe, lsl #12
    //     0x42788c: ldr          r0, [r0, #0xad8]
    // 0x427890: StoreField: r3->field_1b = r0
    //     0x427890: stur         r0, [r3, #0x1b]
    //     0x427894: ldur         r0, [fp, #-0x10]
    // 0x427898: StoreField: r3->field_b = r0
    //     0x427898: stur         r0, [r3, #0xb]
    // 0x42789c: r1 = NULL
    //     0x42789c: mov          r1, NULL
    //     0x4278a0: mov          r2, #4
    // 0x4278a4: r0 = call 0x61f920
    //     0x4278a4: bl           0x61f920
    // 0x4278a8: r2 = r0
    //     0x4278a8: mov          r2, r0
    //     0x4278ac: ldur         r0, [fp, #-8]
    //     0x4278b0: stur         r2, [fp, #-0x10]
    // 0x4278b4: StoreField: r2->field_f = r0
    //     0x4278b4: stur         r0, [r2, #0xf]
    //     0x4278b8: ldur         r0, [fp, #-0x20]
    // 0x4278bc: StoreField: r2->field_13 = r0
    //     0x4278bc: stur         r0, [r2, #0x13]
    // 0x4278c0: r1 = pp[0x5c58]
    //     0x4278c0: ldr          r1, [PP, #0x5c58]
    // 0x4278c4: r0 = call 0x61e854
    //     0x4278c4: bl           0x61e854
    // 0x4278c8: r1 = r0
    //     0x4278c8: mov          r1, r0
    //     0x4278cc: ldur         r0, [fp, #-0x10]
    //     0x4278d0: stur         r1, [fp, #-8]
    // 0x4278d4: StoreField: r1->field_f = r0
    //     0x4278d4: stur         r0, [r1, #0xf]
    //     0x4278d8: mov          r0, #4
    // 0x4278dc: StoreField: r1->field_b = r0
    //     0x4278dc: stur         r0, [r1, #0xb]
    // 0x4278e0: r0 = call 0x39310c
    //     0x4278e0: bl           0x39310c
    // 0x4278e4: r1 = r0
    //     0x4278e4: mov          r1, r0
    // 0x4278e8: r0 = pp[0x862]
    //     0x4278e8: add          r0, PP, #0xa, lsl #12
    //     0x4278ec: ldr          r0, [r0, #0x858]
    //     0x4278f0: stur         r1, [fp, #-0x10]
    // 0x4278f4: StoreField: r1->field_f = r0
    //     0x4278f4: stur         r0, [r1, #0xf]
    // 0x4278f8: r0 = pp[0xaee]
    //     0x4278f8: add          r0, PP, #0xe, lsl #12
    //     0x4278fc: ldr          r0, [r0, #0xae0]
    // 0x427900: StoreField: r1->field_13 = r0
    //     0x427900: stur         r0, [r1, #0x13]
    // 0x427904: r0 = pp[0xaf6]
    //     0x427904: add          r0, PP, #0xe, lsl #12
    //     0x427908: ldr          r0, [r0, #0xae8]
    // 0x42790c: ArrayStore: r1[0] = r0  ; List_8
    //     0x42790c: stur         r0, [r1, #0x17]
    // 0x427910: r0 = pp[0xb6e]
    //     0x427910: add          r0, PP, #0xe, lsl #12
    //     0x427914: ldr          r0, [r0, #0xb60]
    // 0x427918: StoreField: r1->field_1b = r0
    //     0x427918: stur         r0, [r1, #0x1b]
    // 0x42791c: r0 = pp[0xb06]
    //     0x42791c: add          r0, PP, #0xe, lsl #12
    //     0x427920: ldr          r0, [r0, #0xaf8]
    // 0x427924: StoreField: r1->field_23 = r0
    //     0x427924: stur         r0, [r1, #0x23]
    // 0x427928: r0 = pp[0xb2]
    //     0x427928: add          r0, PP, #0xa, lsl #12
    //     0x42792c: ldr          r0, [r0, #0xa8]
    // 0x427930: StoreField: r1->field_2b = r0
    //     0x427930: stur         r0, [r1, #0x2b]
    // 0x427934: StoreField: r1->field_2f = xzr
    //     0x427934: stur         xzr, [r1, #0x2f]
    //     0x427938: ldur         r0, [fp, #-8]
    // 0x42793c: StoreField: r1->field_b = r0
    //     0x42793c: stur         r0, [r1, #0xb]
    // 0x427940: r0 = call 0x3b7d48
    //     0x427940: bl           0x3b7d48
    // 0x427944: r1 = pp[0x148]
    //     0x427944: ldr          r1, [PP, #0x148]
    // 0x427948: StoreField: r0->field_b = r1
    //     0x427948: stur         r1, [r0, #0xb]
    //     0x42794c: ldur         r1, [fp, #-0x18]
    // 0x427950: ArrayStore: r0[0] = r1  ; List_8
    //     0x427950: stur         r1, [r0, #0x17]
    //     0x427954: ldur         r1, [fp, #-0x10]
    // 0x427958: StoreField: r0->field_1b = r1
    //     0x427958: stur         r1, [r0, #0x1b]
    // 0x42795c: SP = fp
    //     0x42795c: mov          SP, fp
    // 0x427960: LeaveFrame
    //     0x427960: ldp          fp, lr, [SP], #0x10
    // 0x427964: ret
    //     0x427964: ret          
    // 0x427968: r0 = call 0x61fa28
    //     0x427968: bl           0x61fa28
    // 0x42796c: b 0x427774
    //     0x42796c: b            0x427774
  }

  _anon_closure() {
    // ** addr: 0x42799c, size: 0x64
    // 0x42799c: EnterFrame
    //     0x42799c: stp          fp, lr, [SP, #-0x10]!
    //     0x4279a0: mov          fp, SP
    // 0x4279a4: AllocStack(8)
    //     0x4279a4: sub          SP, SP, #8
    //     0x4279a8: ldr          r0, [fp, #0x28]
    // 0x4279ac: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4279ac: ldur         r1, [r0, #0x17]
    //     0x4279b0: add          r1, r1, HEAP, lsl #32
    // 0x4279b4: CheckStackOverflow
    //     0x4279b4: ldr          BARRIER, [THR, #0x38]
    //     0x4279b8: cmp          SP, BARRIER
    //     0x4279bc: b.ls         0x4279f8
    // 0x4279c0: LoadField: r0 = r1->field_f
    //     0x4279c0: ldur         r0, [r1, #0xf]
    //     0x4279c4: add          r0, r0, HEAP, lsl #32
    // 0x4279c8: r1 = r0
    //     0x4279c8: mov          r1, r0
    // 0x4279cc: r0 = soul_flutter_international$biz$party$page_party_search__PartySearchPageState::_buildContent()
    //     0x4279cc: bl           0x427a00
    //     0x4279d0: stur         r0, [fp, #-8]
    // 0x4279d4: r0 = call 0x396460
    //     0x4279d4: bl           0x396460
    // 0x4279d8: r1 = pp[0xc78]
    //     0x4279d8: add          r1, PP, #0x10, lsl #12
    //     0x4279dc: ldr          r1, [r1, #0xc68]
    // 0x4279e0: StoreField: r0->field_f = r1
    //     0x4279e0: stur         r1, [r0, #0xf]
    //     0x4279e4: ldur         r1, [fp, #-8]
    // 0x4279e8: StoreField: r0->field_b = r1
    //     0x4279e8: stur         r1, [r0, #0xb]
    // 0x4279ec: SP = fp
    //     0x4279ec: mov          SP, fp
    // 0x4279f0: LeaveFrame
    //     0x4279f0: ldp          fp, lr, [SP], #0x10
    // 0x4279f4: ret
    //     0x4279f4: ret          
    // 0x4279f8: r0 = call 0x61fa28
    //     0x4279f8: bl           0x61fa28
    // 0x4279fc: b 0x4279c0
    //     0x4279fc: b            0x4279c0
  }

  _buildContent() {
    // ** addr: 0x427a00, size: 0xc0
    // 0x427a00: EnterFrame
    //     0x427a00: stp          fp, lr, [SP, #-0x10]!
    //     0x427a04: mov          fp, SP
    // 0x427a08: AllocStack(8)
    //     0x427a08: sub          SP, SP, #8
    // 0x427a0c: r0 = r1
    //     0x427a0c: mov          r0, r1
    //     0x427a10: stur         r1, [fp, #-8]
    // 0x427a14: CheckStackOverflow
    //     0x427a14: ldr          BARRIER, [THR, #0x38]
    //     0x427a18: cmp          SP, BARRIER
    //     0x427a1c: b.ls         0x427ab8
    // 0x427a20: LoadField: r1 = r0->field_13
    //     0x427a20: ldur         r1, [r0, #0x13]
    //     0x427a24: add          r1, r1, HEAP, lsl #32
    // 0x427a28: LoadField: r2 = r1->field_2b
    //     0x427a28: ldur         r2, [r1, #0x2b]
    //     0x427a2c: add          r2, r2, HEAP, lsl #32
    // 0x427a30: LoadField: r1 = r2->field_7
    //     0x427a30: ldur         r1, [r2, #7]
    //     0x427a34: cmp          r1, #1
    // 0x427a38: b.gt 0x427a88
    //     0x427a38: b.gt         0x427a88
    //     0x427a3c: cmp          r1, #0
    // 0x427a40: b.gt 0x427a74
    //     0x427a40: b.gt         0x427a74
    // 0x427a44: r1 = pp[0xb3c]
    //     0x427a44: add          r1, PP, #0xc, lsl #12
    //     0x427a48: ldr          r1, [r1, #0xb30]
    // 0x427a4c: r4 = pp[0x4c0]
    //     0x427a4c: ldr          r4, [PP, #0x4c0]
    // 0x427a50: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x427a50: bl           0x3a1dcc
    //     0x427a54: ldur         r1, [fp, #-8]
    // 0x427a58: r3 = r0
    //     0x427a58: mov          r3, r0
    // 0x427a5c: r2 = pp[0xe80]
    //     0x427a5c: add          r2, PP, #0x10, lsl #12
    //     0x427a60: ldr          r2, [r2, #0xe70]
    // 0x427a64: r0 = soul_flutter_international$biz$party$page_party_search__PartySearchPageState::_buildTipContent()
    //     0x427a64: bl           0x4290c4
    // 0x427a68: SP = fp
    //     0x427a68: mov          SP, fp
    // 0x427a6c: LeaveFrame
    //     0x427a6c: ldp          fp, lr, [SP], #0x10
    // 0x427a70: ret
    //     0x427a70: ret          
    //     0x427a74: ldur         r1, [fp, #-8]
    // 0x427a78: r0 = soul_flutter_international$biz$party$page_party_search__PartySearchPageState::_buildRoomList()
    //     0x427a78: bl           0x427ac0
    // 0x427a7c: SP = fp
    //     0x427a7c: mov          SP, fp
    // 0x427a80: LeaveFrame
    //     0x427a80: ldp          fp, lr, [SP], #0x10
    // 0x427a84: ret
    //     0x427a84: ret          
    // 0x427a88: r1 = pp[0xb7c]
    //     0x427a88: add          r1, PP, #0xc, lsl #12
    //     0x427a8c: ldr          r1, [r1, #0xb70]
    // 0x427a90: r4 = pp[0x4c0]
    //     0x427a90: ldr          r4, [PP, #0x4c0]
    // 0x427a94: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x427a94: bl           0x3a1dcc
    //     0x427a98: ldur         r1, [fp, #-8]
    // 0x427a9c: r3 = r0
    //     0x427a9c: mov          r3, r0
    // 0x427aa0: r2 = pp[0xe88]
    //     0x427aa0: add          r2, PP, #0x10, lsl #12
    //     0x427aa4: ldr          r2, [r2, #0xe78]
    // 0x427aa8: r0 = soul_flutter_international$biz$party$page_party_search__PartySearchPageState::_buildTipContent()
    //     0x427aa8: bl           0x4290c4
    // 0x427aac: SP = fp
    //     0x427aac: mov          SP, fp
    // 0x427ab0: LeaveFrame
    //     0x427ab0: ldp          fp, lr, [SP], #0x10
    // 0x427ab4: ret
    //     0x427ab4: ret          
    // 0x427ab8: r0 = call 0x61fa28
    //     0x427ab8: bl           0x61fa28
    // 0x427abc: b 0x427a20
    //     0x427abc: b            0x427a20
  }

  _buildRoomList() {
    // ** addr: 0x427ac0, size: 0x16c
    // 0x427ac0: EnterFrame
    //     0x427ac0: stp          fp, lr, [SP, #-0x10]!
    //     0x427ac4: mov          fp, SP
    // 0x427ac8: AllocStack(0x28)
    //     0x427ac8: sub          SP, SP, #0x28
    //     0x427acc: stur         r1, [fp, #-8]
    // 0x427ad0: CheckStackOverflow
    //     0x427ad0: ldr          BARRIER, [THR, #0x38]
    //     0x427ad4: cmp          SP, BARRIER
    //     0x427ad8: b.ls         0x427c24
    //     0x427adc: mov          r1, #1
    // 0x427ae0: r0 = call 0x61e890
    //     0x427ae0: bl           0x61e890
    // 0x427ae4: r3 = r0
    //     0x427ae4: mov          r3, r0
    //     0x427ae8: ldur         r0, [fp, #-8]
    //     0x427aec: stur         r3, [fp, #-0x18]
    // 0x427af0: StoreField: r3->field_f = r0
    //     0x427af0: stur         r0, [r3, #0xf]
    // 0x427af4: LoadField: r1 = r0->field_13
    //     0x427af4: ldur         r1, [r0, #0x13]
    //     0x427af8: add          r1, r1, HEAP, lsl #32
    // 0x427afc: LoadField: r2 = r1->field_3b
    //     0x427afc: ldur         r2, [r1, #0x3b]
    //     0x427b00: add          r2, r2, HEAP, lsl #32
    // 0x427b04: LoadField: r1 = r2->field_b
    //     0x427b04: ldur         r1, [r2, #0xb]
    //     0x427b08: cbnz         r1, 0x427b38
    // 0x427b0c: r0 = call 0x391c0c
    //     0x427b0c: bl           0x391c0c
    // 0x427b10: r1 = r0
    //     0x427b10: mov          r1, r0
    // 0x427b14: r0 = pp[0xe90]
    //     0x427b14: add          r0, PP, #0x10, lsl #12
    //     0x427b18: ldr          r0, [r0, #0xe80]
    //     0x427b1c: stur         r1, [fp, #-0x10]
    // 0x427b20: StoreField: r1->field_f = r0
    //     0x427b20: stur         r0, [r1, #0xf]
    // 0x427b24: r0 = call 0x3b3c18
    //     0x427b24: bl           0x3b3c18
    // 0x427b28: r1 = r0
    //     0x427b28: mov          r1, r0
    //     0x427b2c: ldur         r0, [fp, #-0x10]
    // 0x427b30: StoreField: r0->field_b = r1
    //     0x427b30: stur         r1, [r0, #0xb]
    // 0x427b34: b 0x427c18
    //     0x427b34: b            0x427c18
    // 0x427b38: ArrayLoad: r4 = r0[0]  ; List_8
    //     0x427b38: ldur         r4, [r0, #0x17]
    //     0x427b3c: add          r4, r4, HEAP, lsl #32
    //     0x427b40: stur         r4, [fp, #-0x10]
    // 0x427b44: r1 = pp[0xe98]
    //     0x427b44: add          r1, PP, #0x10, lsl #12
    //     0x427b48: ldr          r1, [r1, #0xe88]
    // 0x427b4c: r2 = NULL
    //     0x427b4c: mov          r2, NULL
    // 0x427b50: r0 = call 0x61ec54
    //     0x427b50: bl           0x61ec54
    //     0x427b54: stur         r0, [fp, #-0x20]
    // 0x427b58: r0 = call 0x3ab5b8
    //     0x427b58: bl           0x3ab5b8
    // 0x427b5c: r2 = r0
    //     0x427b5c: mov          r2, r0
    //     0x427b60: ldur         r0, [fp, #-0x20]
    //     0x427b64: stur         r2, [fp, #-0x28]
    // 0x427b68: StoreField: r2->field_1b = r0
    //     0x427b68: stur         r0, [r2, #0x1b]
    // 0x427b6c: r0 = pp[0x8a7]
    //     0x427b6c: add          r0, PP, #0xf, lsl #12
    //     0x427b70: ldr          r0, [r0, #0x898]
    // 0x427b74: StoreField: r2->field_b = r0
    //     0x427b74: stur         r0, [r2, #0xb]
    // 0x427b78: d0 = pp[0x8af]
    //     0x427b78: add          r17, PP, #0xf, lsl #12
    //     0x427b7c: ldr          d0, [r17, #0x8a0]
    // 0x427b80: StoreField: r2->field_f = d0
    //     0x427b80: stur         d0, [r2, #0xf]
    //     0x427b84: ldur         r1, [fp, #-8]
    // 0x427b88: r0 = soul_flutter_international$biz$party$page_party_search__PartySearchPageState::_buildGridView()
    //     0x427b88: bl           0x427c2c
    //     0x427b8c: stur         r0, [fp, #-8]
    // 0x427b90: r0 = call 0x3ab290
    //     0x427b90: bl           0x3ab290
    // 0x427b94: r3 = r0
    //     0x427b94: mov          r3, r0
    //     0x427b98: ldur         r0, [fp, #-0x10]
    //     0x427b9c: stur         r3, [fp, #-0x20]
    // 0x427ba0: StoreField: r3->field_2b = r0
    //     0x427ba0: stur         r0, [r3, #0x2b]
    //     0x427ba4: ldur         r0, [fp, #-8]
    // 0x427ba8: StoreField: r3->field_b = r0
    //     0x427ba8: stur         r0, [r3, #0xb]
    //     0x427bac: ldur         r0, [fp, #-0x28]
    // 0x427bb0: StoreField: r3->field_f = r0
    //     0x427bb0: stur         r0, [r3, #0xf]
    //     0x427bb4: add          r0, NULL, #0x30
    // 0x427bb8: StoreField: r3->field_1b = r0
    //     0x427bb8: stur         r0, [r3, #0x1b]
    //     0x427bbc: add          r1, NULL, #0x20
    // 0x427bc0: StoreField: r3->field_13 = r1
    //     0x427bc0: stur         r1, [r3, #0x13]
    // 0x427bc4: ArrayStore: r3[0] = r0  ; List_8
    //     0x427bc4: stur         r0, [r3, #0x17]
    //     0x427bc8: ldur         r2, [fp, #-0x18]
    // 0x427bcc: r1 = pp[0xea0]
    //     0x427bcc: add          r1, PP, #0x10, lsl #12
    //     0x427bd0: ldr          r1, [r1, #0xe90]
    // 0x427bd4: r0 = call 0x61ec54
    //     0x427bd4: bl           0x61ec54
    // 0x427bd8: r1 = r0
    //     0x427bd8: mov          r1, r0
    //     0x427bdc: ldur         r0, [fp, #-0x20]
    // 0x427be0: StoreField: r0->field_23 = r1
    //     0x427be0: stur         r1, [r0, #0x23]
    // 0x427be4: r0 = call 0x3ec08c
    //     0x427be4: bl           0x3ec08c
    //     0x427be8: ldur         r2, [fp, #-0x18]
    // 0x427bec: r1 = pp[0xea8]
    //     0x427bec: add          r1, PP, #0x10, lsl #12
    //     0x427bf0: ldr          r1, [r1, #0xe98]
    //     0x427bf4: stur         r0, [fp, #-8]
    // 0x427bf8: r0 = call 0x61ec54
    //     0x427bf8: bl           0x61ec54
    //     0x427bfc: ldur         r1, [fp, #-8]
    // 0x427c00: StoreField: r1->field_13 = r0
    //     0x427c00: stur         r0, [r1, #0x13]
    // 0x427c04: r2 = pp[0x77e0]
    //     0x427c04: ldr          r2, [PP, #0x77e0]
    // 0x427c08: StoreField: r1->field_33 = r2
    //     0x427c08: stur         r2, [r1, #0x33]
    //     0x427c0c: ldur         r2, [fp, #-0x20]
    // 0x427c10: StoreField: r1->field_b = r2
    //     0x427c10: stur         r2, [r1, #0xb]
    // 0x427c14: r0 = r1
    //     0x427c14: mov          r0, r1
    // 0x427c18: SP = fp
    //     0x427c18: mov          SP, fp
    // 0x427c1c: LeaveFrame
    //     0x427c1c: ldp          fp, lr, [SP], #0x10
    // 0x427c20: ret
    //     0x427c20: ret          
    // 0x427c24: r0 = call 0x61fa28
    //     0x427c24: bl           0x61fa28
    // 0x427c28: b 0x427adc
    //     0x427c28: b            0x427adc
  }

  _buildGridView() {
    // ** addr: 0x427c2c, size: 0xe8
    // 0x427c2c: EnterFrame
    //     0x427c2c: stp          fp, lr, [SP, #-0x10]!
    //     0x427c30: mov          fp, SP
    // 0x427c34: AllocStack(0x30)
    //     0x427c34: sub          SP, SP, #0x30
    //     0x427c38: stur         r1, [fp, #-8]
    // 0x427c3c: CheckStackOverflow
    //     0x427c3c: ldr          BARRIER, [THR, #0x38]
    //     0x427c40: cmp          SP, BARRIER
    //     0x427c44: b.ls         0x427d0c
    //     0x427c48: mov          r1, #1
    // 0x427c4c: r0 = call 0x61e890
    //     0x427c4c: bl           0x61e890
    // 0x427c50: r1 = r0
    //     0x427c50: mov          r1, r0
    //     0x427c54: ldur         r0, [fp, #-8]
    //     0x427c58: stur         r1, [fp, #-0x10]
    // 0x427c5c: StoreField: r1->field_f = r0
    //     0x427c5c: stur         r0, [r1, #0xf]
    // 0x427c60: r0 = call 0x41ee8c
    //     0x427c60: bl           0x41ee8c
    // 0x427c64: r1 = r0
    //     0x427c64: mov          r1, r0
    //     0x427c68: mov          r0, #2
    //     0x427c6c: stur         r1, [fp, #-0x20]
    // 0x427c70: StoreField: r1->field_7 = r0
    //     0x427c70: stur         r0, [r1, #7]
    //     0x427c74: fmov         d0, #20.00000000
    // 0x427c78: StoreField: r1->field_f = d0
    //     0x427c78: stur         d0, [r1, #0xf]
    //     0x427c7c: fmov         d0, #10.00000000
    // 0x427c80: ArrayStore: r1[0] = d0  ; List_8
    //     0x427c80: stur         d0, [r1, #0x17]
    //     0x427c84: fmov         d0, #0.75000000
    // 0x427c88: StoreField: r1->field_1f = d0
    //     0x427c88: stur         d0, [r1, #0x1f]
    //     0x427c8c: ldur         r0, [fp, #-8]
    // 0x427c90: LoadField: r2 = r0->field_13
    //     0x427c90: ldur         r2, [r0, #0x13]
    //     0x427c94: add          r2, r2, HEAP, lsl #32
    // 0x427c98: LoadField: r0 = r2->field_3b
    //     0x427c98: ldur         r0, [r2, #0x3b]
    //     0x427c9c: add          r0, r0, HEAP, lsl #32
    // 0x427ca0: LoadField: r2 = r0->field_b
    //     0x427ca0: ldur         r2, [r0, #0xb]
    //     0x427ca4: sbfx         r5, r2, #1, #0x1f
    //     0x427ca8: stur         r5, [fp, #-0x18]
    // 0x427cac: r0 = call 0x41b0bc
    //     0x427cac: bl           0x41b0bc
    //     0x427cb0: ldur         r2, [fp, #-0x10]
    // 0x427cb4: r1 = pp[0xb1]
    //     0x427cb4: add          r1, PP, #0x11, lsl #12
    //     0x427cb8: ldr          r1, [r1, #0xa0]
    //     0x427cbc: stur         r0, [fp, #-8]
    // 0x427cc0: r0 = call 0x61ec54
    //     0x427cc0: bl           0x61ec54
    //     0x427cc4: stur         r0, [fp, #-0x10]
    // 0x427cc8: r0 = call 0x41ee80
    //     0x427cc8: bl           0x41ee80
    //     0x427ccc: stur         r0, [fp, #-0x28]
    // 0x427cd0: BARRIER = pp[0xb9]
    //     0x427cd0: add          BARRIER, PP, #0x11, lsl #12
    //     0x427cd4: ldr          BARRIER, [BARRIER, #0xa8]
    //     0x427cd8: str          BARRIER, [SP]
    // 0x427cdc: r1 = r0
    //     0x427cdc: mov          r1, r0
    //     0x427ce0: ldur         r2, [fp, #-0x20]
    //     0x427ce4: ldur         r3, [fp, #-0x10]
    //     0x427ce8: ldur         r5, [fp, #-0x18]
    //     0x427cec: ldur         r6, [fp, #-8]
    // 0x427cf0: r4 = pp[0xc1]
    //     0x427cf0: add          r4, PP, #0x11, lsl #12
    //     0x427cf4: ldr          r4, [r4, #0xb0]
    // 0x427cf8: r0 = flutter$src$widgets$scroll_view_GridView::ctor_builder()
    //     0x427cf8: bl           0x41ec7c
    //     0x427cfc: ldur         r0, [fp, #-0x28]
    // 0x427d00: SP = fp
    //     0x427d00: mov          SP, fp
    // 0x427d04: LeaveFrame
    //     0x427d04: ldp          fp, lr, [SP], #0x10
    // 0x427d08: ret
    //     0x427d08: ret          
    // 0x427d0c: r0 = call 0x61fa28
    //     0x427d0c: bl           0x61fa28
    // 0x427d10: b 0x427c48
    //     0x427d10: b            0x427c48
  }

  _anon_closure() {
    // ** addr: 0x427d14, size: 0x8c
    // 0x427d14: EnterFrame
    //     0x427d14: stp          fp, lr, [SP, #-0x10]!
    //     0x427d18: mov          fp, SP
    // 0x427d1c: AllocStack(8)
    //     0x427d1c: sub          SP, SP, #8
    //     0x427d20: ldr          r0, [fp, #0x20]
    // 0x427d24: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x427d24: ldur         r1, [r0, #0x17]
    //     0x427d28: add          r1, r1, HEAP, lsl #32
    // 0x427d2c: LoadField: r0 = r1->field_f
    //     0x427d2c: ldur         r0, [r1, #0xf]
    //     0x427d30: add          r0, r0, HEAP, lsl #32
    // 0x427d34: LoadField: r1 = r0->field_13
    //     0x427d34: ldur         r1, [r0, #0x13]
    //     0x427d38: add          r1, r1, HEAP, lsl #32
    // 0x427d3c: LoadField: r2 = r1->field_3b
    //     0x427d3c: ldur         r2, [r1, #0x3b]
    //     0x427d40: add          r2, r2, HEAP, lsl #32
    // 0x427d44: LoadField: r0 = r2->field_b
    //     0x427d44: ldur         r0, [r2, #0xb]
    //     0x427d48: ldr          r1, [fp, #0x10]
    //     0x427d4c: sbfx         r3, r1, #1, #0x1f
    // 0x427d50: branchIfSmi(r1, 0x427d58)
    //     0x427d50: tbz          r1, #0, 0x427d58
    // 0x427d54: LoadField: r3 = r1->field_7
    //     0x427d54: ldur         r3, [r1, #7]
    //     0x427d58: sbfx         r1, r0, #1, #0x1f
    // 0x427d5c: r0 = r1
    //     0x427d5c: mov          r0, r1
    // 0x427d60: r1 = r3
    //     0x427d60: mov          r1, r3
    //     0x427d64: cmp          r1, r0
    // 0x427d68: b.hs 0x427d9c
    //     0x427d68: b.hs         0x427d9c
    // 0x427d6c: LoadField: r0 = r2->field_f
    //     0x427d6c: ldur         r0, [r2, #0xf]
    //     0x427d70: add          r0, r0, HEAP, lsl #32
    //     0x427d74: add          BARRIER, r0, r3, lsl #2
    // 0x427d78: LoadField: r1 = BARRIER->field_f
    //     0x427d78: ldur         r1, [BARRIER, #0xf]
    //     0x427d7c: add          r1, r1, HEAP, lsl #32
    //     0x427d80: stur         r1, [fp, #-8]
    // 0x427d84: r0 = call 0x427da0
    //     0x427d84: bl           0x427da0
    //     0x427d88: ldur         r1, [fp, #-8]
    // 0x427d8c: StoreField: r0->field_b = r1
    //     0x427d8c: stur         r1, [r0, #0xb]
    // 0x427d90: SP = fp
    //     0x427d90: mov          SP, fp
    // 0x427d94: LeaveFrame
    //     0x427d94: ldp          fp, lr, [SP], #0x10
    // 0x427d98: ret
    //     0x427d98: ret          
    // 0x427d9c: r0 = call 0x61fe70
    //     0x427d9c: bl           0x61fe70
  }

  _anon_closure() {
    // ** addr: 0x427dac, size: 0x50
    // 0x427dac: EnterFrame
    //     0x427dac: stp          fp, lr, [SP, #-0x10]!
    //     0x427db0: mov          fp, SP
    //     0x427db4: ldr          r0, [fp, #0x18]
    // 0x427db8: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x427db8: ldur         r1, [r0, #0x17]
    //     0x427dbc: add          r1, r1, HEAP, lsl #32
    // 0x427dc0: CheckStackOverflow
    //     0x427dc0: ldr          BARRIER, [THR, #0x38]
    //     0x427dc4: cmp          SP, BARRIER
    //     0x427dc8: b.ls         0x427df4
    // 0x427dcc: LoadField: r0 = r1->field_f
    //     0x427dcc: ldur         r0, [r1, #0xf]
    //     0x427dd0: add          r0, r0, HEAP, lsl #32
    // 0x427dd4: LoadField: r1 = r0->field_1b
    //     0x427dd4: ldur         r1, [r0, #0x1b]
    //     0x427dd8: add          r1, r1, HEAP, lsl #32
    // 0x427ddc: r4 = pp[0x4c0]
    //     0x427ddc: ldr          r4, [PP, #0x4c0]
    // 0x427de0: r0 = flutter$src$widgets$focus_manager_FocusNode::unfocus()
    //     0x427de0: bl           0x30b7fc
    // 0x427de4: r0 = NULL
    //     0x427de4: mov          r0, NULL
    // 0x427de8: SP = fp
    //     0x427de8: mov          SP, fp
    // 0x427dec: LeaveFrame
    //     0x427dec: ldp          fp, lr, [SP], #0x10
    // 0x427df0: ret
    //     0x427df0: ret          
    // 0x427df4: r0 = call 0x61fa28
    //     0x427df4: bl           0x61fa28
    // 0x427df8: b 0x427dcc
    //     0x427df8: b            0x427dcc
  }

  _anon_closure() {
    // ** addr: 0x427dfc, size: 0x68
    // 0x427dfc: EnterFrame
    //     0x427dfc: stp          fp, lr, [SP, #-0x10]!
    //     0x427e00: mov          fp, SP
    // 0x427e04: AllocStack(8)
    //     0x427e04: sub          SP, SP, #8
    //     0x427e08: ldr          r0, [fp, #0x10]
    // 0x427e0c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x427e0c: ldur         r1, [r0, #0x17]
    //     0x427e10: add          r1, r1, HEAP, lsl #32
    // 0x427e14: CheckStackOverflow
    //     0x427e14: ldr          BARRIER, [THR, #0x38]
    //     0x427e18: cmp          SP, BARRIER
    //     0x427e1c: b.ls         0x427e5c
    // 0x427e20: LoadField: r2 = r1->field_f
    //     0x427e20: ldur         r2, [r1, #0xf]
    //     0x427e24: add          r2, r2, HEAP, lsl #32
    // 0x427e28: LoadField: r0 = r2->field_13
    //     0x427e28: ldur         r0, [r2, #0x13]
    //     0x427e2c: add          r0, r0, HEAP, lsl #32
    //     0x427e30: stur         r0, [fp, #-8]
    // 0x427e34: r1 = pp[0xeb0]
    //     0x427e34: add          r1, PP, #0x10, lsl #12
    //     0x427e38: ldr          r1, [r1, #0xea0]
    // 0x427e3c: r0 = call 0x61ec54
    //     0x427e3c: bl           0x61ec54
    //     0x427e40: ldur         r1, [fp, #-8]
    // 0x427e44: r2 = r0
    //     0x427e44: mov          r2, r0
    // 0x427e48: r0 = soul_flutter_international$biz$party$notifier$notifier_party_search_PartySearchNotifier::requestRoomList()
    //     0x427e48: bl           0x427e64
    // 0x427e4c: r0 = NULL
    //     0x427e4c: mov          r0, NULL
    // 0x427e50: SP = fp
    //     0x427e50: mov          SP, fp
    // 0x427e54: LeaveFrame
    //     0x427e54: ldp          fp, lr, [SP], #0x10
    // 0x427e58: ret
    //     0x427e58: ret          
    // 0x427e5c: r0 = call 0x61fa28
    //     0x427e5c: bl           0x61fa28
    // 0x427e60: b 0x427e20
    //     0x427e60: b            0x427e20
  }

  _onLoaded() {
    // ** addr: 0x42810c, size: 0x6c
    // 0x42810c: EnterFrame
    //     0x42810c: stp          fp, lr, [SP, #-0x10]!
    //     0x428110: mov          fp, SP
    // 0x428114: CheckStackOverflow
    //     0x428114: ldr          BARRIER, [THR, #0x38]
    //     0x428118: cmp          SP, BARRIER
    //     0x42811c: b.ls         0x428170
    //     0x428120: tbnz         r2, #4, 0x428150
    //     0x428124: tbnz         r3, #4, 0x42813c
    // 0x428128: ArrayLoad: r0 = r1[0]  ; List_8
    //     0x428128: ldur         r0, [r1, #0x17]
    //     0x42812c: add          r0, r0, HEAP, lsl #32
    // 0x428130: r1 = r0
    //     0x428130: mov          r1, r0
    // 0x428134: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadNoData()
    //     0x428134: bl           0x3adfd4
    // 0x428138: b 0x428160
    //     0x428138: b            0x428160
    // 0x42813c: ArrayLoad: r0 = r1[0]  ; List_8
    //     0x42813c: ldur         r0, [r1, #0x17]
    //     0x428140: add          r0, r0, HEAP, lsl #32
    // 0x428144: r1 = r0
    //     0x428144: mov          r1, r0
    // 0x428148: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadComplete()
    //     0x428148: bl           0x3ade48
    // 0x42814c: b 0x428160
    //     0x42814c: b            0x428160
    // 0x428150: ArrayLoad: r0 = r1[0]  ; List_8
    //     0x428150: ldur         r0, [r1, #0x17]
    //     0x428154: add          r0, r0, HEAP, lsl #32
    // 0x428158: r1 = r0
    //     0x428158: mov          r1, r0
    // 0x42815c: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadFailed()
    //     0x42815c: bl           0x3adbb4
    // 0x428160: r0 = NULL
    //     0x428160: mov          r0, NULL
    // 0x428164: SP = fp
    //     0x428164: mov          SP, fp
    // 0x428168: LeaveFrame
    //     0x428168: ldp          fp, lr, [SP], #0x10
    // 0x42816c: ret
    //     0x42816c: ret          
    // 0x428170: r0 = call 0x61fa28
    //     0x428170: bl           0x61fa28
    // 0x428174: b 0x428120
    //     0x428174: b            0x428120
  }

  _onLoaded() {
    // ** addr: 0x429084, size: 0x40
    // 0x429084: EnterFrame
    //     0x429084: stp          fp, lr, [SP, #-0x10]!
    //     0x429088: mov          fp, SP
    //     0x42908c: ldr          r0, [fp, #0x20]
    // 0x429090: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x429090: ldur         r1, [r0, #0x17]
    //     0x429094: add          r1, r1, HEAP, lsl #32
    // 0x429098: CheckStackOverflow
    //     0x429098: ldr          BARRIER, [THR, #0x38]
    //     0x42909c: cmp          SP, BARRIER
    //     0x4290a0: b.ls         0x4290bc
    //     0x4290a4: ldr          r2, [fp, #0x18]
    //     0x4290a8: ldr          r3, [fp, #0x10]
    // 0x4290ac: r0 = soul_flutter_international$biz$party$page_party_search__PartySearchPageState::_onLoaded()
    //     0x4290ac: bl           0x42810c
    // 0x4290b0: SP = fp
    //     0x4290b0: mov          SP, fp
    // 0x4290b4: LeaveFrame
    //     0x4290b4: ldp          fp, lr, [SP], #0x10
    // 0x4290b8: ret
    //     0x4290b8: ret          
    // 0x4290bc: r0 = call 0x61fa28
    //     0x4290bc: bl           0x61fa28
    // 0x4290c0: b 0x4290a4
    //     0x4290c0: b            0x4290a4
  }

  _buildTipContent() {
    // ** addr: 0x4290c4, size: 0x1d8
    // 0x4290c4: EnterFrame
    //     0x4290c4: stp          fp, lr, [SP, #-0x10]!
    //     0x4290c8: mov          fp, SP
    // 0x4290cc: AllocStack(0x20)
    //     0x4290cc: sub          SP, SP, #0x20
    //     0x4290d0: stur         r2, [fp, #-8]
    //     0x4290d4: stur         r3, [fp, #-0x10]
    // 0x4290d8: CheckStackOverflow
    //     0x4290d8: ldr          BARRIER, [THR, #0x38]
    //     0x4290dc: cmp          SP, BARRIER
    //     0x4290e0: b.ls         0x429294
    // 0x4290e4: r0 = call 0x3a142c
    //     0x4290e4: bl           0x3a142c
    // 0x4290e8: r1 = r0
    //     0x4290e8: mov          r1, r0
    //     0x4290ec: ldur         r0, [fp, #-8]
    //     0x4290f0: stur         r1, [fp, #-0x18]
    // 0x4290f4: StoreField: r1->field_b = r0
    //     0x4290f4: stur         r0, [r1, #0xb]
    // 0x4290f8: r0 = pp[0xc9]
    //     0x4290f8: add          r0, PP, #0x11, lsl #12
    //     0x4290fc: ldr          r0, [r0, #0xb8]
    // 0x429100: StoreField: r1->field_f = r0
    //     0x429100: stur         r0, [r1, #0xf]
    // 0x429104: r0 = pp[0x5458]
    //     0x429104: ldr          r0, [PP, #0x5458]
    // 0x429108: StoreField: r1->field_13 = r0
    //     0x429108: stur         r0, [r1, #0x13]
    // 0x42910c: r2 = pp[0xd1]
    //     0x42910c: add          r2, PP, #0x11, lsl #12
    //     0x429110: ldr          r2, [r2, #0xc0]
    // 0x429114: ArrayStore: r1[0] = r2  ; List_8
    //     0x429114: stur         r2, [r1, #0x17]
    // 0x429118: r0 = soul_flutter_international$res$colors_SOColors::get_s_05()
    //     0x429118: bl           0x3a6088
    // 0x42911c: r1 = r0
    //     0x42911c: mov          r1, r0
    // 0x429120: r0 = soul_flutter_international$res$styles_TextStyles::commonContent()
    //     0x429120: bl           0x3b7e50
    //     0x429124: stur         r0, [fp, #-8]
    // 0x429128: r0 = call 0x393bf8
    //     0x429128: bl           0x393bf8
    // 0x42912c: r1 = r0
    //     0x42912c: mov          r1, r0
    //     0x429130: ldur         r0, [fp, #-0x10]
    //     0x429134: stur         r1, [fp, #-0x20]
    // 0x429138: StoreField: r1->field_b = r0
    //     0x429138: stur         r0, [r1, #0xb]
    //     0x42913c: ldur         r0, [fp, #-8]
    // 0x429140: StoreField: r1->field_13 = r0
    //     0x429140: stur         r0, [r1, #0x13]
    // 0x429144: r0 = pp[0x53a8]
    //     0x429144: ldr          r0, [PP, #0x53a8]
    // 0x429148: StoreField: r1->field_1b = r0
    //     0x429148: stur         r0, [r1, #0x1b]
    // 0x42914c: r0 = call 0x391c0c
    //     0x42914c: bl           0x391c0c
    // 0x429150: r3 = r0
    //     0x429150: mov          r3, r0
    // 0x429154: r0 = pp[0xd9]
    //     0x429154: add          r0, PP, #0x11, lsl #12
    //     0x429158: ldr          r0, [r0, #0xc8]
    //     0x42915c: stur         r3, [fp, #-8]
    // 0x429160: StoreField: r3->field_f = r0
    //     0x429160: stur         r0, [r3, #0xf]
    //     0x429164: ldur         r0, [fp, #-0x20]
    // 0x429168: StoreField: r3->field_b = r0
    //     0x429168: stur         r0, [r3, #0xb]
    // 0x42916c: r1 = NULL
    //     0x42916c: mov          r1, NULL
    //     0x429170: mov          r2, #4
    // 0x429174: r0 = call 0x61f920
    //     0x429174: bl           0x61f920
    // 0x429178: r2 = r0
    //     0x429178: mov          r2, r0
    //     0x42917c: ldur         r0, [fp, #-0x18]
    //     0x429180: stur         r2, [fp, #-0x10]
    // 0x429184: StoreField: r2->field_f = r0
    //     0x429184: stur         r0, [r2, #0xf]
    //     0x429188: ldur         r0, [fp, #-8]
    // 0x42918c: StoreField: r2->field_13 = r0
    //     0x42918c: stur         r0, [r2, #0x13]
    // 0x429190: r1 = pp[0x5c58]
    //     0x429190: ldr          r1, [PP, #0x5c58]
    // 0x429194: r0 = call 0x61e854
    //     0x429194: bl           0x61e854
    // 0x429198: r1 = r0
    //     0x429198: mov          r1, r0
    //     0x42919c: ldur         r0, [fp, #-0x10]
    //     0x4291a0: stur         r1, [fp, #-8]
    // 0x4291a4: StoreField: r1->field_f = r0
    //     0x4291a4: stur         r0, [r1, #0xf]
    //     0x4291a8: mov          r0, #4
    // 0x4291ac: StoreField: r1->field_b = r0
    //     0x4291ac: stur         r0, [r1, #0xb]
    // 0x4291b0: r0 = call 0x39310c
    //     0x4291b0: bl           0x39310c
    // 0x4291b4: r1 = r0
    //     0x4291b4: mov          r1, r0
    // 0x4291b8: r0 = pp[0x862]
    //     0x4291b8: add          r0, PP, #0xa, lsl #12
    //     0x4291bc: ldr          r0, [r0, #0x858]
    //     0x4291c0: stur         r1, [fp, #-0x10]
    // 0x4291c4: StoreField: r1->field_f = r0
    //     0x4291c4: stur         r0, [r1, #0xf]
    // 0x4291c8: r2 = pp[0xaee]
    //     0x4291c8: add          r2, PP, #0xe, lsl #12
    //     0x4291cc: ldr          r2, [r2, #0xae0]
    // 0x4291d0: StoreField: r1->field_13 = r2
    //     0x4291d0: stur         r2, [r1, #0x13]
    // 0x4291d4: r2 = pp[0xaf6]
    //     0x4291d4: add          r2, PP, #0xe, lsl #12
    //     0x4291d8: ldr          r2, [r2, #0xae8]
    // 0x4291dc: ArrayStore: r1[0] = r2  ; List_8
    //     0x4291dc: stur         r2, [r1, #0x17]
    // 0x4291e0: r2 = pp[0xb6e]
    //     0x4291e0: add          r2, PP, #0xe, lsl #12
    //     0x4291e4: ldr          r2, [r2, #0xb60]
    // 0x4291e8: StoreField: r1->field_1b = r2
    //     0x4291e8: stur         r2, [r1, #0x1b]
    // 0x4291ec: r2 = pp[0xb06]
    //     0x4291ec: add          r2, PP, #0xe, lsl #12
    //     0x4291f0: ldr          r2, [r2, #0xaf8]
    // 0x4291f4: StoreField: r1->field_23 = r2
    //     0x4291f4: stur         r2, [r1, #0x23]
    // 0x4291f8: r2 = pp[0xb2]
    //     0x4291f8: add          r2, PP, #0xa, lsl #12
    //     0x4291fc: ldr          r2, [r2, #0xa8]
    // 0x429200: StoreField: r1->field_2b = r2
    //     0x429200: stur         r2, [r1, #0x2b]
    // 0x429204: StoreField: r1->field_2f = xzr
    //     0x429204: stur         xzr, [r1, #0x2f]
    //     0x429208: ldur         r2, [fp, #-8]
    // 0x42920c: StoreField: r1->field_b = r2
    //     0x42920c: stur         r2, [r1, #0xb]
    // 0x429210: r0 = call 0x3a1db4
    //     0x429210: bl           0x3a1db4
    // 0x429214: r1 = r0
    //     0x429214: mov          r1, r0
    // 0x429218: r0 = pp[0x862]
    //     0x429218: add          r0, PP, #0xa, lsl #12
    //     0x42921c: ldr          r0, [r0, #0x858]
    //     0x429220: stur         r1, [fp, #-8]
    // 0x429224: StoreField: r1->field_b = r0
    //     0x429224: stur         r0, [r1, #0xb]
    //     0x429228: add          r0, NULL, #0x30
    // 0x42922c: StoreField: r1->field_f = r0
    //     0x42922c: stur         r0, [r1, #0xf]
    // 0x429230: r0 = pp[0xe1]
    //     0x429230: add          r0, PP, #0x11, lsl #12
    //     0x429234: ldr          r0, [r0, #0xd0]
    // 0x429238: StoreField: r1->field_13 = r0
    //     0x429238: stur         r0, [r1, #0x13]
    //     0x42923c: ldur         r0, [fp, #-0x10]
    // 0x429240: StoreField: r1->field_23 = r0
    //     0x429240: stur         r0, [r1, #0x23]
    // 0x429244: r0 = pp[0x77d8]
    //     0x429244: ldr          r0, [PP, #0x77d8]
    // 0x429248: StoreField: r1->field_27 = r0
    //     0x429248: stur         r0, [r1, #0x27]
    // 0x42924c: r0 = pp[0xf1e]
    //     0x42924c: add          r0, PP, #0xe, lsl #12
    //     0x429250: ldr          r0, [r0, #0xf10]
    // 0x429254: StoreField: r1->field_2b = r0
    //     0x429254: stur         r0, [r1, #0x2b]
    // 0x429258: r0 = pp[0x14f]
    //     0x429258: add          r0, PP, #0xf, lsl #12
    //     0x42925c: ldr          r0, [r0, #0x140]
    // 0x429260: StoreField: r1->field_2f = r0
    //     0x429260: stur         r0, [r1, #0x2f]
    // 0x429264: r0 = pp[0x307]
    //     0x429264: add          r0, PP, #0xf, lsl #12
    //     0x429268: ldr          r0, [r0, #0x2f8]
    // 0x42926c: StoreField: r1->field_37 = r0
    //     0x42926c: stur         r0, [r1, #0x37]
    // 0x429270: r0 = call 0x3949ec
    //     0x429270: bl           0x3949ec
    // 0x429274: r1 = pp[0x5458]
    //     0x429274: ldr          r1, [PP, #0x5458]
    // 0x429278: StoreField: r0->field_f = r1
    //     0x429278: stur         r1, [r0, #0xf]
    // 0x42927c: StoreField: r0->field_13 = r1
    //     0x42927c: stur         r1, [r0, #0x13]
    //     0x429280: ldur         r1, [fp, #-8]
    // 0x429284: StoreField: r0->field_b = r1
    //     0x429284: stur         r1, [r0, #0xb]
    // 0x429288: SP = fp
    //     0x429288: mov          SP, fp
    // 0x42928c: LeaveFrame
    //     0x42928c: ldp          fp, lr, [SP], #0x10
    // 0x429290: ret
    //     0x429290: ret          
    // 0x429294: r0 = call 0x61fa28
    //     0x429294: bl           0x61fa28
    // 0x429298: b 0x4290e4
    //     0x429298: b            0x4290e4
  }

  _anon_closure() {
    // ** addr: 0x42929c, size: 0xbc
    // 0x42929c: EnterFrame
    //     0x42929c: stp          fp, lr, [SP, #-0x10]!
    //     0x4292a0: mov          fp, SP
    // 0x4292a4: AllocStack(8)
    //     0x4292a4: sub          SP, SP, #8
    //     0x4292a8: ldr          r0, [fp, #0x18]
    // 0x4292ac: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x4292ac: ldur         r3, [r0, #0x17]
    //     0x4292b0: add          r3, r3, HEAP, lsl #32
    //     0x4292b4: stur         r3, [fp, #-8]
    // 0x4292b8: CheckStackOverflow
    //     0x4292b8: ldr          BARRIER, [THR, #0x38]
    //     0x4292bc: cmp          SP, BARRIER
    //     0x4292c0: b.ls         0x429350
    //     0x4292c4: ldr          r0, [fp, #0x10]
    //     0x4292c8: cmp          r0, r22
    // 0x4292cc: b.eq 0x429340
    //     0x4292cc: b.eq         0x429340
    // 0x4292d0: LoadField: r1 = r0->field_7
    //     0x4292d0: ldur         r1, [r0, #7]
    //     0x4292d4: cbz          r1, 0x429340
    // 0x4292d8: LoadField: r1 = r3->field_f
    //     0x4292d8: ldur         r1, [r3, #0xf]
    //     0x4292dc: add          r1, r1, HEAP, lsl #32
    // 0x4292e0: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x4292e0: ldur         r2, [r1, #0x17]
    //     0x4292e4: add          r2, r2, HEAP, lsl #32
    // 0x4292e8: LoadField: r1 = r2->field_f
    //     0x4292e8: ldur         r1, [r2, #0xf]
    //     0x4292ec: add          r1, r1, HEAP, lsl #32
    //     0x4292f0: cmp          r1, r22
    // 0x4292f4: b.ne 0x429300
    //     0x4292f4: b.ne         0x429300
    // 0x4292f8: r0 = r3
    //     0x4292f8: mov          r0, r3
    // 0x4292fc: b 0x429310
    //     0x4292fc: b            0x429310
    // 0x429300: r2 = pp[0x7bb]
    //     0x429300: add          r2, PP, #0xb, lsl #12
    //     0x429304: ldr          r2, [r2, #0x7b0]
    // 0x429308: r0 = pull_to_refresh$src$smart_refresher_RefreshNotifier::value_assign()
    //     0x429308: bl           0x3add40
    //     0x42930c: ldur         r0, [fp, #-8]
    // 0x429310: LoadField: r2 = r0->field_f
    //     0x429310: ldur         r2, [r0, #0xf]
    //     0x429314: add          r2, r2, HEAP, lsl #32
    // 0x429318: LoadField: r0 = r2->field_13
    //     0x429318: ldur         r0, [r2, #0x13]
    //     0x42931c: add          r0, r0, HEAP, lsl #32
    //     0x429320: stur         r0, [fp, #-8]
    // 0x429324: r1 = pp[0xeb0]
    //     0x429324: add          r1, PP, #0x10, lsl #12
    //     0x429328: ldr          r1, [r1, #0xea0]
    // 0x42932c: r0 = call 0x61ec54
    //     0x42932c: bl           0x61ec54
    //     0x429330: ldur         r1, [fp, #-8]
    //     0x429334: ldr          r2, [fp, #0x10]
    // 0x429338: r3 = r0
    //     0x429338: mov          r3, r0
    // 0x42933c: r0 = soul_flutter_international$biz$party$notifier$notifier_party_search_PartySearchNotifier::searchRoom()
    //     0x42933c: bl           0x429358
    // 0x429340: r0 = NULL
    //     0x429340: mov          r0, NULL
    // 0x429344: SP = fp
    //     0x429344: mov          SP, fp
    // 0x429348: LeaveFrame
    //     0x429348: ldp          fp, lr, [SP], #0x10
    // 0x42934c: ret
    //     0x42934c: ret          
    // 0x429350: r0 = call 0x61fa28
    //     0x429350: bl           0x61fa28
    // 0x429354: b 0x4292c4
    //     0x429354: b            0x4292c4
  }

  dispose() {
    // ** addr: 0x45140c, size: 0x4c
    // 0x45140c: EnterFrame
    //     0x45140c: stp          fp, lr, [SP, #-0x10]!
    //     0x451410: mov          fp, SP
    // 0x451414: AllocStack(8)
    //     0x451414: sub          SP, SP, #8
    // 0x451418: r0 = r1
    //     0x451418: mov          r0, r1
    //     0x45141c: stur         r1, [fp, #-8]
    // 0x451420: CheckStackOverflow
    //     0x451420: ldr          BARRIER, [THR, #0x38]
    //     0x451424: cmp          SP, BARRIER
    //     0x451428: b.ls         0x451450
    // 0x45142c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x45142c: ldur         r1, [r0, #0x17]
    //     0x451430: add          r1, r1, HEAP, lsl #32
    // 0x451434: r0 = pull_to_refresh$src$smart_refresher_RefreshController::dispose()
    //     0x451434: bl           0x45132c
    //     0x451438: ldur         r1, [fp, #-8]
    // 0x45143c: r0 = soul_flutter_international$common$base$soul_state_SoulState::dispose()
    //     0x45143c: bl           0x451970
    // 0x451440: r0 = NULL
    //     0x451440: mov          r0, NULL
    // 0x451444: SP = fp
    //     0x451444: mov          SP, fp
    // 0x451448: LeaveFrame
    //     0x451448: ldp          fp, lr, [SP], #0x10
    // 0x45144c: ret
    //     0x45144c: ret          
    // 0x451450: r0 = call 0x61fa28
    //     0x451450: bl           0x61fa28
    // 0x451454: b 0x45142c
    //     0x451454: b            0x45142c
  }

  ctor() {
    // ** addr: 0x4c460c, size: 0xd4
    // 0x4c460c: EnterFrame
    //     0x4c460c: stp          fp, lr, [SP, #-0x10]!
    //     0x4c4610: mov          fp, SP
    // 0x4c4614: AllocStack(0x10)
    //     0x4c4614: sub          SP, SP, #0x10
    //     0x4c4618: stur         r1, [fp, #-8]
    // 0x4c461c: CheckStackOverflow
    //     0x4c461c: ldr          BARRIER, [THR, #0x38]
    //     0x4c4620: cmp          SP, BARRIER
    //     0x4c4624: b.ls         0x4c46d8
    // 0x4c4628: r0 = call 0x4c48d0
    //     0x4c4628: bl           0x4c48d0
    // 0x4c462c: r1 = r0
    //     0x4c462c: mov          r1, r0
    //     0x4c4630: stur         r0, [fp, #-0x10]
    // 0x4c4634: r0 = soul_flutter_international$biz$party$notifier$notifier_party_search_PartySearchNotifier::ctor()
    //     0x4c4634: bl           0x4c47fc
    //     0x4c4638: ldur         r0, [fp, #-0x10]
    //     0x4c463c: ldur         r1, [fp, #-8]
    // 0x4c4640: StoreField: r1->field_13 = r0
    //     0x4c4640: stur         r0, [r1, #0x13]
    //     0x4c4644: ldurb        r16, [r1, #-1]
    //     0x4c4648: ldurb        r17, [r0, #-1]
    //     0x4c464c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c4650: tst          BARRIER, HEAP, lsr #32
    // 0x4c4654: b.eq 0x4c465c
    //     0x4c4654: b.eq         0x4c465c
    // 0x4c4658: r0 = call 0x61e04c
    //     0x4c4658: bl           0x61e04c
    // 0x4c465c: r0 = call 0x4c47f0
    //     0x4c465c: bl           0x4c47f0
    // 0x4c4660: r1 = r0
    //     0x4c4660: mov          r1, r0
    //     0x4c4664: stur         r0, [fp, #-0x10]
    // 0x4c4668: r0 = pull_to_refresh$src$smart_refresher_RefreshController::ctor()
    //     0x4c4668: bl           0x4c46e0
    //     0x4c466c: ldur         r0, [fp, #-0x10]
    //     0x4c4670: ldur         r1, [fp, #-8]
    // 0x4c4674: ArrayStore: r1[0] = r0  ; List_8
    //     0x4c4674: stur         r0, [r1, #0x17]
    //     0x4c4678: ldurb        r16, [r1, #-1]
    //     0x4c467c: ldurb        r17, [r0, #-1]
    //     0x4c4680: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c4684: tst          BARRIER, HEAP, lsr #32
    // 0x4c4688: b.eq 0x4c4690
    //     0x4c4688: b.eq         0x4c4690
    // 0x4c468c: r0 = call 0x61e04c
    //     0x4c468c: bl           0x61e04c
    // 0x4c4690: r0 = call 0x4c1b28
    //     0x4c4690: bl           0x4c1b28
    // 0x4c4694: r1 = r0
    //     0x4c4694: mov          r1, r0
    //     0x4c4698: stur         r0, [fp, #-0x10]
    // 0x4c469c: r4 = pp[0x4c0]
    //     0x4c469c: ldr          r4, [PP, #0x4c0]
    // 0x4c46a0: r0 = flutter$src$widgets$focus_manager_FocusNode::ctor()
    //     0x4c46a0: bl           0x3d2078
    //     0x4c46a4: ldur         r0, [fp, #-0x10]
    //     0x4c46a8: ldur         r1, [fp, #-8]
    // 0x4c46ac: StoreField: r1->field_1b = r0
    //     0x4c46ac: stur         r0, [r1, #0x1b]
    //     0x4c46b0: ldurb        r16, [r1, #-1]
    //     0x4c46b4: ldurb        r17, [r0, #-1]
    //     0x4c46b8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c46bc: tst          BARRIER, HEAP, lsr #32
    // 0x4c46c0: b.eq 0x4c46c8
    //     0x4c46c0: b.eq         0x4c46c8
    // 0x4c46c4: r0 = call 0x61e04c
    //     0x4c46c4: bl           0x61e04c
    // 0x4c46c8: r0 = NULL
    //     0x4c46c8: mov          r0, NULL
    // 0x4c46cc: SP = fp
    //     0x4c46cc: mov          SP, fp
    // 0x4c46d0: LeaveFrame
    //     0x4c46d0: ldp          fp, lr, [SP], #0x10
    // 0x4c46d4: ret
    //     0x4c46d4: ret          
    // 0x4c46d8: r0 = call 0x61fa28
    //     0x4c46d8: bl           0x61fa28
    // 0x4c46dc: b 0x4c4628
    //     0x4c46dc: b            0x4c4628
  }

  createState() {
    // ** addr: 0x4c45c4, size: 0x48
    // 0x4c45c4: EnterFrame
    //     0x4c45c4: stp          fp, lr, [SP, #-0x10]!
    //     0x4c45c8: mov          fp, SP
    // 0x4c45cc: AllocStack(8)
    //     0x4c45cc: sub          SP, SP, #8
    // 0x4c45d0: CheckStackOverflow
    //     0x4c45d0: ldr          BARRIER, [THR, #0x38]
    //     0x4c45d4: cmp          SP, BARRIER
    //     0x4c45d8: b.ls         0x4c4604
    // 0x4c45dc: r1 = pp[0x79b]
    //     0x4c45dc: add          r1, PP, #0xb, lsl #12
    //     0x4c45e0: ldr          r1, [r1, #0x790]
    // 0x4c45e4: r0 = call 0x4c48dc
    //     0x4c45e4: bl           0x4c48dc
    // 0x4c45e8: r1 = r0
    //     0x4c45e8: mov          r1, r0
    //     0x4c45ec: stur         r0, [fp, #-8]
    // 0x4c45f0: r0 = soul_flutter_international$biz$party$page_party_search__PartySearchPageState::ctor()
    //     0x4c45f0: bl           0x4c460c
    //     0x4c45f4: ldur         r0, [fp, #-8]
    // 0x4c45f8: SP = fp
    //     0x4c45f8: mov          SP, fp
    // 0x4c45fc: LeaveFrame
    //     0x4c45fc: ldp          fp, lr, [SP], #0x10
    // 0x4c4600: ret
    //     0x4c4600: ret          
    // 0x4c4604: r0 = call 0x61fa28
    //     0x4c4604: bl           0x61fa28
    // 0x4c4608: b 0x4c45dc
    //     0x4c4608: b            0x4c45dc
  }
