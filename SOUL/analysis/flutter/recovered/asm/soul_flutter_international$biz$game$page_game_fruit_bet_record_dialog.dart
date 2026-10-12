// lib: , url: soul_flutter_international$biz$game$page_game_fruit_bet_record_dialog


  build() {
    // ** addr: 0x3a0e20, size: 0x26c
    // 0x3a0e20: EnterFrame
    //     0x3a0e20: stp          fp, lr, [SP, #-0x10]!
    //     0x3a0e24: mov          fp, SP
    // 0x3a0e28: AllocStack(0x50)
    //     0x3a0e28: sub          SP, SP, #0x50
    //     0x3a0e2c: stur         r1, [fp, #-8]
    // 0x3a0e30: CheckStackOverflow
    //     0x3a0e30: ldr          BARRIER, [THR, #0x38]
    //     0x3a0e34: cmp          SP, BARRIER
    //     0x3a0e38: b.ls         0x3a1064
    // 0x3a0e3c: r0 = call 0x31d844
    //     0x3a0e3c: bl           0x31d844
    // 0x3a0e40: r1 = r0
    //     0x3a0e40: mov          r1, r0
    // 0x3a0e44: r0 = pp[0x6310]
    //     0x3a0e44: ldr          r0, [PP, #0x6310]
    //     0x3a0e48: stur         r1, [fp, #-0x10]
    // 0x3a0e4c: StoreField: r1->field_27 = r0
    //     0x3a0e4c: stur         r0, [r1, #0x27]
    //     0x3a0e50: fmov         d0, #1.00000000
    // 0x3a0e54: StoreField: r1->field_7 = d0
    //     0x3a0e54: stur         d0, [r1, #7]
    // 0x3a0e58: d1 = pp[0x809]
    //     0x3a0e58: add          r17, PP, #0x11, lsl #12
    //     0x3a0e5c: ldr          d1, [r17, #0x7f8]
    // 0x3a0e60: StoreField: r1->field_f = d1
    //     0x3a0e60: stur         d1, [r1, #0xf]
    // 0x3a0e64: d1 = pp[0xd5f]
    //     0x3a0e64: add          r17, PP, #0xf, lsl #12
    //     0x3a0e68: ldr          d1, [r17, #0xd50]
    // 0x3a0e6c: ArrayStore: r1[0] = d1  ; List_8
    //     0x3a0e6c: stur         d1, [r1, #0x17]
    // 0x3a0e70: StoreField: r1->field_1f = d0
    //     0x3a0e70: stur         d0, [r1, #0x1f]
    // 0x3a0e74: r0 = call 0x31d844
    //     0x3a0e74: bl           0x31d844
    // 0x3a0e78: r1 = r0
    //     0x3a0e78: mov          r1, r0
    // 0x3a0e7c: r0 = pp[0x6310]
    //     0x3a0e7c: ldr          r0, [PP, #0x6310]
    //     0x3a0e80: stur         r1, [fp, #-0x18]
    // 0x3a0e84: StoreField: r1->field_27 = r0
    //     0x3a0e84: stur         r0, [r1, #0x27]
    //     0x3a0e88: fmov         d0, #1.00000000
    // 0x3a0e8c: StoreField: r1->field_7 = d0
    //     0x3a0e8c: stur         d0, [r1, #7]
    // 0x3a0e90: d1 = pp[0x64d0]
    //     0x3a0e90: ldr          d1, [PP, #0x64d0]
    // 0x3a0e94: StoreField: r1->field_f = d1
    //     0x3a0e94: stur         d1, [r1, #0xf]
    // 0x3a0e98: d1 = pp[0xae8]
    //     0x3a0e98: add          r17, PP, #0x10, lsl #12
    //     0x3a0e9c: ldr          d1, [r17, #0xad8]
    // 0x3a0ea0: ArrayStore: r1[0] = d1  ; List_8
    //     0x3a0ea0: stur         d1, [r1, #0x17]
    // 0x3a0ea4: StoreField: r1->field_1f = d0
    //     0x3a0ea4: stur         d0, [r1, #0x1f]
    // 0x3a0ea8: r0 = call 0x31d844
    //     0x3a0ea8: bl           0x31d844
    // 0x3a0eac: r3 = r0
    //     0x3a0eac: mov          r3, r0
    // 0x3a0eb0: r0 = pp[0x6310]
    //     0x3a0eb0: ldr          r0, [PP, #0x6310]
    //     0x3a0eb4: stur         r3, [fp, #-0x20]
    // 0x3a0eb8: StoreField: r3->field_27 = r0
    //     0x3a0eb8: stur         r0, [r3, #0x27]
    //     0x3a0ebc: fmov         d0, #1.00000000
    // 0x3a0ec0: StoreField: r3->field_7 = d0
    //     0x3a0ec0: stur         d0, [r3, #7]
    // 0x3a0ec4: d0 = pp[0x811]
    //     0x3a0ec4: add          r17, PP, #0x11, lsl #12
    //     0x3a0ec8: ldr          d0, [r17, #0x800]
    // 0x3a0ecc: StoreField: r3->field_f = d0
    //     0x3a0ecc: stur         d0, [r3, #0xf]
    // 0x3a0ed0: d0 = pp[0xe56]
    //     0x3a0ed0: add          r17, PP, #0xe, lsl #12
    //     0x3a0ed4: ldr          d0, [r17, #0xe48]
    // 0x3a0ed8: ArrayStore: r3[0] = d0  ; List_8
    //     0x3a0ed8: stur         d0, [r3, #0x17]
    // 0x3a0edc: d0 = pp[0x637]
    //     0x3a0edc: add          r17, PP, #0xf, lsl #12
    //     0x3a0ee0: ldr          d0, [r17, #0x628]
    // 0x3a0ee4: StoreField: r3->field_1f = d0
    //     0x3a0ee4: stur         d0, [r3, #0x1f]
    // 0x3a0ee8: r1 = NULL
    //     0x3a0ee8: mov          r1, NULL
    //     0x3a0eec: mov          r2, #6
    // 0x3a0ef0: r0 = call 0x61f920
    //     0x3a0ef0: bl           0x61f920
    // 0x3a0ef4: r2 = r0
    //     0x3a0ef4: mov          r2, r0
    //     0x3a0ef8: ldur         r0, [fp, #-0x10]
    //     0x3a0efc: stur         r2, [fp, #-0x28]
    // 0x3a0f00: StoreField: r2->field_f = r0
    //     0x3a0f00: stur         r0, [r2, #0xf]
    //     0x3a0f04: ldur         r0, [fp, #-0x18]
    // 0x3a0f08: StoreField: r2->field_13 = r0
    //     0x3a0f08: stur         r0, [r2, #0x13]
    //     0x3a0f0c: ldur         r0, [fp, #-0x20]
    // 0x3a0f10: ArrayStore: r2[0] = r0  ; List_8
    //     0x3a0f10: stur         r0, [r2, #0x17]
    // 0x3a0f14: r1 = pp[0xc68]
    //     0x3a0f14: add          r1, PP, #0x10, lsl #12
    //     0x3a0f18: ldr          r1, [r1, #0xc58]
    // 0x3a0f1c: r0 = call 0x61e854
    //     0x3a0f1c: bl           0x61e854
    // 0x3a0f20: r1 = r0
    //     0x3a0f20: mov          r1, r0
    //     0x3a0f24: ldur         r0, [fp, #-0x28]
    //     0x3a0f28: stur         r1, [fp, #-0x10]
    // 0x3a0f2c: StoreField: r1->field_f = r0
    //     0x3a0f2c: stur         r0, [r1, #0xf]
    //     0x3a0f30: mov          r0, #6
    // 0x3a0f34: StoreField: r1->field_b = r0
    //     0x3a0f34: stur         r0, [r1, #0xb]
    // 0x3a0f38: r0 = call 0x3a108c
    //     0x3a0f38: bl           0x3a108c
    // 0x3a0f3c: r1 = r0
    //     0x3a0f3c: mov          r1, r0
    // 0x3a0f40: r0 = pp[0xc78]
    //     0x3a0f40: add          r0, PP, #0x10, lsl #12
    //     0x3a0f44: ldr          r0, [r0, #0xc68]
    //     0x3a0f48: stur         r1, [fp, #-0x18]
    // 0x3a0f4c: StoreField: r1->field_13 = r0
    //     0x3a0f4c: stur         r0, [r1, #0x13]
    // 0x3a0f50: r0 = pp[0xc80]
    //     0x3a0f50: add          r0, PP, #0x10, lsl #12
    //     0x3a0f54: ldr          r0, [r0, #0xc70]
    // 0x3a0f58: ArrayStore: r1[0] = r0  ; List_8
    //     0x3a0f58: stur         r0, [r1, #0x17]
    // 0x3a0f5c: r0 = pp[0xc88]
    //     0x3a0f5c: add          r0, PP, #0x10, lsl #12
    //     0x3a0f60: ldr          r0, [r0, #0xc78]
    // 0x3a0f64: StoreField: r1->field_1b = r0
    //     0x3a0f64: stur         r0, [r1, #0x1b]
    //     0x3a0f68: ldur         r0, [fp, #-0x10]
    // 0x3a0f6c: StoreField: r1->field_7 = r0
    //     0x3a0f6c: stur         r0, [r1, #7]
    // 0x3a0f70: r0 = call 0x352b04
    //     0x3a0f70: bl           0x352b04
    //     0x3a0f74: fmov         d0, #16.00000000
    //     0x3a0f78: stur         r0, [fp, #-0x10]
    // 0x3a0f7c: StoreField: r0->field_7 = d0
    //     0x3a0f7c: stur         d0, [r0, #7]
    // 0x3a0f80: StoreField: r0->field_f = d0
    //     0x3a0f80: stur         d0, [r0, #0xf]
    // 0x3a0f84: r0 = call 0x392f28
    //     0x3a0f84: bl           0x392f28
    // 0x3a0f88: r1 = r0
    //     0x3a0f88: mov          r1, r0
    //     0x3a0f8c: ldur         r0, [fp, #-0x10]
    //     0x3a0f90: stur         r1, [fp, #-0x20]
    // 0x3a0f94: StoreField: r1->field_7 = r0
    //     0x3a0f94: stur         r0, [r1, #7]
    // 0x3a0f98: StoreField: r1->field_b = r0
    //     0x3a0f98: stur         r0, [r1, #0xb]
    // 0x3a0f9c: StoreField: r1->field_f = r0
    //     0x3a0f9c: stur         r0, [r1, #0xf]
    // 0x3a0fa0: StoreField: r1->field_13 = r0
    //     0x3a0fa0: stur         r0, [r1, #0x13]
    // 0x3a0fa4: r0 = call 0x391dd8
    //     0x3a0fa4: bl           0x391dd8
    // 0x3a0fa8: r1 = r0
    //     0x3a0fa8: mov          r1, r0
    //     0x3a0fac: ldur         r0, [fp, #-0x20]
    //     0x3a0fb0: stur         r1, [fp, #-0x28]
    // 0x3a0fb4: StoreField: r1->field_13 = r0
    //     0x3a0fb4: stur         r0, [r1, #0x13]
    //     0x3a0fb8: ldur         r0, [fp, #-0x18]
    // 0x3a0fbc: StoreField: r1->field_1b = r0
    //     0x3a0fbc: stur         r0, [r1, #0x1b]
    // 0x3a0fc0: r0 = pp[0xb86]
    //     0x3a0fc0: add          r0, PP, #0xe, lsl #12
    //     0x3a0fc4: ldr          r0, [r0, #0xb78]
    // 0x3a0fc8: StoreField: r1->field_23 = r0
    //     0x3a0fc8: stur         r0, [r1, #0x23]
    //     0x3a0fcc: ldur         r0, [fp, #-8]
    // 0x3a0fd0: LoadField: r2 = r0->field_1f
    //     0x3a0fd0: ldur         r2, [r0, #0x1f]
    //     0x3a0fd4: add          r2, r2, HEAP, lsl #32
    //     0x3a0fd8: stur         r2, [fp, #-0x18]
    // 0x3a0fdc: LoadField: d0 = r0->field_13
    //     0x3a0fdc: ldur         d0, [r0, #0x13]
    // 0x3a0fe0: LoadField: r3 = r0->field_1b
    //     0x3a0fe0: ldur         r3, [r0, #0x1b]
    //     0x3a0fe4: add          r3, r3, HEAP, lsl #32
    //     0x3a0fe8: stur         r3, [fp, #-0x10]
    //     0x3a0fec: ldp          r0, r4, [THR, #0x50]
    //     0x3a0ff0: add          r0, r0, #0x10
    //     0x3a0ff4: cmp          r4, r0
    // 0x3a0ff8: b.ls 0x3a106c
    //     0x3a0ff8: b.ls         0x3a106c
    //     0x3a0ffc: str          r0, [THR, #0x50]
    //     0x3a1000: sub          r0, r0, #0xf
    //     0x3a1004: mov          r4, #0xe15c
    //     0x3a1008: movk         r4, #3, lsl #16
    //     0x3a100c: stur         r4, [r0, #-1]
    // 0x3a1010: StoreField: r0->field_7 = d0
    //     0x3a1010: stur         d0, [r0, #7]
    //     0x3a1014: stur         r0, [fp, #-8]
    // 0x3a1018: r0 = call 0x391a04
    //     0x3a1018: bl           0x391a04
    //     0x3a101c: stur         r0, [fp, #-0x20]
    //     0x3a1020: ldur         BARRIER, [fp, #-0x28]
    //     0x3a1024: ldur         lr, [fp, #-0x18]
    //     0x3a1028: stp          lr, BARRIER, [SP, #0x18]
    // 0x3a102c: BARRIER = pp[0x4e5]
    //     0x3a102c: add          BARRIER, PP, #0x15, lsl #12
    //     0x3a1030: ldr          BARRIER, [BARRIER, #0x4d0]
    //     0x3a1034: ldur         lr, [fp, #-8]
    //     0x3a1038: stp          lr, BARRIER, [SP, #8]
    //     0x3a103c: ldur         BARRIER, [fp, #-0x10]
    //     0x3a1040: str          BARRIER, [SP]
    // 0x3a1044: r1 = r0
    //     0x3a1044: mov          r1, r0
    // 0x3a1048: r4 = pp[0xb94]
    //     0x3a1048: add          r4, PP, #0x14, lsl #12
    //     0x3a104c: ldr          r4, [r4, #0xb80]
    // 0x3a1050: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a1050: bl           0x391490
    //     0x3a1054: ldur         r0, [fp, #-0x20]
    // 0x3a1058: SP = fp
    //     0x3a1058: mov          SP, fp
    // 0x3a105c: LeaveFrame
    //     0x3a105c: ldp          fp, lr, [SP], #0x10
    // 0x3a1060: ret
    //     0x3a1060: ret          
    // 0x3a1064: r0 = call 0x61fa28
    //     0x3a1064: bl           0x61fa28
    // 0x3a1068: b 0x3a0e3c
    //     0x3a1068: b            0x3a0e3c
    //     0x3a106c: str          q0, [SP, #-0x10]!
    //     0x3a1070: stp          r2, r3, [SP, #-0x10]!
    //     0x3a1074: str          r1, [SP, #-8]!
    // 0x3a1078: r0 = call 0x61f878
    //     0x3a1078: bl           0x61f878
    //     0x3a107c: ldr          r1, [SP], #8
    //     0x3a1080: ldp          r2, r3, [SP], #0x10
    //     0x3a1084: ldr          q0, [SP], #0x10
    // 0x3a1088: b 0x3a1010
    //     0x3a1088: b            0x3a1010
  }

  build() {
    // ** addr: 0x3a1098, size: 0x37c
    // 0x3a1098: EnterFrame
    //     0x3a1098: stp          fp, lr, [SP, #-0x10]!
    //     0x3a109c: mov          fp, SP
    // 0x3a10a0: AllocStack(0x58)
    //     0x3a10a0: sub          SP, SP, #0x58
    //     0x3a10a4: stur         r1, [fp, #-8]
    // 0x3a10a8: CheckStackOverflow
    //     0x3a10a8: ldr          BARRIER, [THR, #0x38]
    //     0x3a10ac: cmp          SP, BARRIER
    //     0x3a10b0: b.ls         0x3a140c
    // 0x3a10b4: r0 = call 0x352b04
    //     0x3a10b4: bl           0x352b04
    //     0x3a10b8: fmov         d0, #8.00000000
    //     0x3a10bc: stur         r0, [fp, #-0x10]
    // 0x3a10c0: StoreField: r0->field_7 = d0
    //     0x3a10c0: stur         d0, [r0, #7]
    // 0x3a10c4: StoreField: r0->field_f = d0
    //     0x3a10c4: stur         d0, [r0, #0xf]
    // 0x3a10c8: r0 = call 0x392f28
    //     0x3a10c8: bl           0x392f28
    // 0x3a10cc: r1 = r0
    //     0x3a10cc: mov          r1, r0
    //     0x3a10d0: ldur         r0, [fp, #-0x10]
    //     0x3a10d4: stur         r1, [fp, #-0x18]
    // 0x3a10d8: StoreField: r1->field_7 = r0
    //     0x3a10d8: stur         r0, [r1, #7]
    // 0x3a10dc: StoreField: r1->field_b = r0
    //     0x3a10dc: stur         r0, [r1, #0xb]
    // 0x3a10e0: StoreField: r1->field_f = r0
    //     0x3a10e0: stur         r0, [r1, #0xf]
    // 0x3a10e4: StoreField: r1->field_13 = r0
    //     0x3a10e4: stur         r0, [r1, #0x13]
    // 0x3a10e8: r0 = call 0x31d844
    //     0x3a10e8: bl           0x31d844
    // 0x3a10ec: r1 = r0
    //     0x3a10ec: mov          r1, r0
    // 0x3a10f0: r0 = pp[0x6310]
    //     0x3a10f0: ldr          r0, [PP, #0x6310]
    //     0x3a10f4: stur         r1, [fp, #-0x10]
    // 0x3a10f8: StoreField: r1->field_27 = r0
    //     0x3a10f8: stur         r0, [r1, #0x27]
    //     0x3a10fc: fmov         d0, #1.00000000
    // 0x3a1100: StoreField: r1->field_7 = d0
    //     0x3a1100: stur         d0, [r1, #7]
    // 0x3a1104: d0 = pp[0x4b5]
    //     0x3a1104: add          r17, PP, #0x15, lsl #12
    //     0x3a1108: ldr          d0, [r17, #0x4a0]
    // 0x3a110c: StoreField: r1->field_f = d0
    //     0x3a110c: stur         d0, [r1, #0xf]
    // 0x3a1110: ArrayStore: r1[0] = xzr  ; List_8
    //     0x3a1110: stur         xzr, [r1, #0x17]
    // 0x3a1114: d0 = pp[0x4bd]
    //     0x3a1114: add          r17, PP, #0x15, lsl #12
    //     0x3a1118: ldr          d0, [r17, #0x4a8]
    // 0x3a111c: StoreField: r1->field_1f = d0
    //     0x3a111c: stur         d0, [r1, #0x1f]
    // 0x3a1120: r0 = call 0x391dd8
    //     0x3a1120: bl           0x391dd8
    // 0x3a1124: r1 = r0
    //     0x3a1124: mov          r1, r0
    //     0x3a1128: ldur         r0, [fp, #-0x10]
    //     0x3a112c: stur         r1, [fp, #-0x20]
    // 0x3a1130: StoreField: r1->field_7 = r0
    //     0x3a1130: stur         r0, [r1, #7]
    //     0x3a1134: ldur         r0, [fp, #-0x18]
    // 0x3a1138: StoreField: r1->field_13 = r0
    //     0x3a1138: stur         r0, [r1, #0x13]
    // 0x3a113c: r0 = pp[0xb86]
    //     0x3a113c: add          r0, PP, #0xe, lsl #12
    //     0x3a1140: ldr          r0, [r0, #0xb78]
    // 0x3a1144: StoreField: r1->field_23 = r0
    //     0x3a1144: stur         r0, [r1, #0x23]
    // 0x3a1148: r0 = call 0x2e3578
    //     0x3a1148: bl           0x2e3578
    //     0x3a114c: fmov         d0, #10.00000000
    //     0x3a1150: stur         r0, [fp, #-0x10]
    // 0x3a1154: StoreField: r0->field_7 = d0
    //     0x3a1154: stur         d0, [r0, #7]
    // 0x3a1158: StoreField: r0->field_f = xzr
    //     0x3a1158: stur         xzr, [r0, #0xf]
    // 0x3a115c: ArrayStore: r0[0] = xzr  ; List_8
    //     0x3a115c: stur         xzr, [r0, #0x17]
    // 0x3a1160: StoreField: r0->field_1f = xzr
    //     0x3a1160: stur         xzr, [r0, #0x1f]
    // 0x3a1164: r0 = call 0x3a142c
    //     0x3a1164: bl           0x3a142c
    // 0x3a1168: r1 = r0
    //     0x3a1168: mov          r1, r0
    // 0x3a116c: r0 = pp[0x4c5]
    //     0x3a116c: add          r0, PP, #0x15, lsl #12
    //     0x3a1170: ldr          r0, [r0, #0x4b0]
    //     0x3a1174: stur         r1, [fp, #-0x18]
    // 0x3a1178: StoreField: r1->field_b = r0
    //     0x3a1178: stur         r0, [r1, #0xb]
    // 0x3a117c: r0 = pp[0x17f]
    //     0x3a117c: add          r0, PP, #0xf, lsl #12
    //     0x3a1180: ldr          r0, [r0, #0x170]
    // 0x3a1184: StoreField: r1->field_f = r0
    //     0x3a1184: stur         r0, [r1, #0xf]
    // 0x3a1188: r2 = pp[0xb5e]
    //     0x3a1188: add          r2, PP, #0xe, lsl #12
    //     0x3a118c: ldr          r2, [r2, #0xb50]
    // 0x3a1190: StoreField: r1->field_13 = r2
    //     0x3a1190: stur         r2, [r1, #0x13]
    // 0x3a1194: r3 = pp[0x237]
    //     0x3a1194: add          r3, PP, #0xf, lsl #12
    //     0x3a1198: ldr          r3, [r3, #0x228]
    // 0x3a119c: ArrayStore: r1[0] = r3  ; List_8
    //     0x3a119c: stur         r3, [r1, #0x17]
    // 0x3a11a0: r0 = call 0x391a04
    //     0x3a11a0: bl           0x391a04
    //     0x3a11a4: stur         r0, [fp, #-0x28]
    //     0x3a11a8: ldur         BARRIER, [fp, #-0x10]
    //     0x3a11ac: ldur         lr, [fp, #-0x18]
    //     0x3a11b0: stp          lr, BARRIER, [SP]
    // 0x3a11b4: r1 = r0
    //     0x3a11b4: mov          r1, r0
    // 0x3a11b8: r4 = pp[0x20f]
    //     0x3a11b8: add          r4, PP, #0xf, lsl #12
    //     0x3a11bc: ldr          r4, [r4, #0x200]
    // 0x3a11c0: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a11c0: bl           0x391490
    // 0x3a11c4: r0 = call 0x3949ec
    //     0x3a11c4: bl           0x3949ec
    // 0x3a11c8: r1 = r0
    //     0x3a11c8: mov          r1, r0
    // 0x3a11cc: r0 = pp[0xbc7]
    //     0x3a11cc: add          r0, PP, #0xf, lsl #12
    //     0x3a11d0: ldr          r0, [r0, #0xbb8]
    //     0x3a11d4: stur         r1, [fp, #-0x18]
    // 0x3a11d8: StoreField: r1->field_f = r0
    //     0x3a11d8: stur         r0, [r1, #0xf]
    //     0x3a11dc: ldur         r2, [fp, #-8]
    // 0x3a11e0: LoadField: r3 = r2->field_b
    //     0x3a11e0: ldur         r3, [r2, #0xb]
    //     0x3a11e4: add          r3, r3, HEAP, lsl #32
    //     0x3a11e8: stur         r3, [fp, #-0x10]
    // 0x3a11ec: r0 = call 0x31abec
    //     0x3a11ec: bl           0x31abec
    // 0x3a11f0: r1 = r0
    //     0x3a11f0: mov          r1, r0
    //     0x3a11f4: add          r0, NULL, #0x20
    //     0x3a11f8: stur         r1, [fp, #-8]
    // 0x3a11fc: StoreField: r1->field_7 = r0
    //     0x3a11fc: stur         r0, [r1, #7]
    // 0x3a1200: r0 = pp[0x6050]
    //     0x3a1200: ldr          r0, [PP, #0x6050]
    // 0x3a1204: StoreField: r1->field_b = r0
    //     0x3a1204: stur         r0, [r1, #0xb]
    // 0x3a1208: r0 = pp[0x217]
    //     0x3a1208: add          r0, PP, #0xf, lsl #12
    //     0x3a120c: ldr          r0, [r0, #0x208]
    // 0x3a1210: StoreField: r1->field_1f = r0
    //     0x3a1210: stur         r0, [r1, #0x1f]
    // 0x3a1214: r0 = pp[0xe4e]
    //     0x3a1214: add          r0, PP, #0xe, lsl #12
    //     0x3a1218: ldr          r0, [r0, #0xe40]
    // 0x3a121c: StoreField: r1->field_23 = r0
    //     0x3a121c: stur         r0, [r1, #0x23]
    // 0x3a1220: r0 = call 0x393bf8
    //     0x3a1220: bl           0x393bf8
    // 0x3a1224: r2 = r0
    //     0x3a1224: mov          r2, r0
    //     0x3a1228: ldur         r0, [fp, #-0x10]
    //     0x3a122c: stur         r2, [fp, #-0x30]
    // 0x3a1230: StoreField: r2->field_b = r0
    //     0x3a1230: stur         r0, [r2, #0xb]
    //     0x3a1234: ldur         r0, [fp, #-8]
    // 0x3a1238: StoreField: r2->field_13 = r0
    //     0x3a1238: stur         r0, [r2, #0x13]
    // 0x3a123c: r0 = pp[0x23f]
    //     0x3a123c: add          r0, PP, #0xf, lsl #12
    //     0x3a1240: ldr          r0, [r0, #0x230]
    // 0x3a1244: StoreField: r2->field_2b = r0
    //     0x3a1244: stur         r0, [r2, #0x2b]
    //     0x3a1248: mov          r0, #2
    // 0x3a124c: StoreField: r2->field_37 = r0
    //     0x3a124c: stur         r0, [r2, #0x37]
    // 0x3a1250: r1 = pp[0xade]
    //     0x3a1250: add          r1, PP, #0xe, lsl #12
    //     0x3a1254: ldr          r1, [r1, #0xad0]
    // 0x3a1258: r0 = call 0x3a1420
    //     0x3a1258: bl           0x3a1420
    // 0x3a125c: r1 = r0
    //     0x3a125c: mov          r1, r0
    //     0x3a1260: mov          r0, #1
    //     0x3a1264: stur         r1, [fp, #-8]
    // 0x3a1268: StoreField: r1->field_13 = r0
    //     0x3a1268: stur         r0, [r1, #0x13]
    // 0x3a126c: r0 = pp[0x960]
    //     0x3a126c: add          r0, PP, #0x10, lsl #12
    //     0x3a1270: ldr          r0, [r0, #0x950]
    // 0x3a1274: StoreField: r1->field_1b = r0
    //     0x3a1274: stur         r0, [r1, #0x1b]
    //     0x3a1278: ldur         r0, [fp, #-0x30]
    // 0x3a127c: StoreField: r1->field_b = r0
    //     0x3a127c: stur         r0, [r1, #0xb]
    // 0x3a1280: r0 = call 0x3949ec
    //     0x3a1280: bl           0x3949ec
    // 0x3a1284: r1 = r0
    //     0x3a1284: mov          r1, r0
    // 0x3a1288: r0 = pp[0xbc7]
    //     0x3a1288: add          r0, PP, #0xf, lsl #12
    //     0x3a128c: ldr          r0, [r0, #0xbb8]
    //     0x3a1290: stur         r1, [fp, #-0x10]
    // 0x3a1294: StoreField: r1->field_f = r0
    //     0x3a1294: stur         r0, [r1, #0xf]
    // 0x3a1298: r0 = call 0x2e3578
    //     0x3a1298: bl           0x2e3578
    //     0x3a129c: stur         r0, [fp, #-0x30]
    // 0x3a12a0: StoreField: r0->field_7 = xzr
    //     0x3a12a0: stur         xzr, [r0, #7]
    // 0x3a12a4: StoreField: r0->field_f = xzr
    //     0x3a12a4: stur         xzr, [r0, #0xf]
    //     0x3a12a8: fmov         d0, #10.00000000
    // 0x3a12ac: ArrayStore: r0[0] = d0  ; List_8
    //     0x3a12ac: stur         d0, [r0, #0x17]
    // 0x3a12b0: StoreField: r0->field_1f = xzr
    //     0x3a12b0: stur         xzr, [r0, #0x1f]
    // 0x3a12b4: r0 = call 0x3a142c
    //     0x3a12b4: bl           0x3a142c
    // 0x3a12b8: r1 = r0
    //     0x3a12b8: mov          r1, r0
    // 0x3a12bc: r0 = pp[0x4cd]
    //     0x3a12bc: add          r0, PP, #0x15, lsl #12
    //     0x3a12c0: ldr          r0, [r0, #0x4b8]
    //     0x3a12c4: stur         r1, [fp, #-0x38]
    // 0x3a12c8: StoreField: r1->field_b = r0
    //     0x3a12c8: stur         r0, [r1, #0xb]
    // 0x3a12cc: r0 = pp[0x17f]
    //     0x3a12cc: add          r0, PP, #0xf, lsl #12
    //     0x3a12d0: ldr          r0, [r0, #0x170]
    // 0x3a12d4: StoreField: r1->field_f = r0
    //     0x3a12d4: stur         r0, [r1, #0xf]
    // 0x3a12d8: r0 = pp[0xb5e]
    //     0x3a12d8: add          r0, PP, #0xe, lsl #12
    //     0x3a12dc: ldr          r0, [r0, #0xb50]
    // 0x3a12e0: StoreField: r1->field_13 = r0
    //     0x3a12e0: stur         r0, [r1, #0x13]
    // 0x3a12e4: r0 = pp[0x237]
    //     0x3a12e4: add          r0, PP, #0xf, lsl #12
    //     0x3a12e8: ldr          r0, [r0, #0x228]
    // 0x3a12ec: ArrayStore: r1[0] = r0  ; List_8
    //     0x3a12ec: stur         r0, [r1, #0x17]
    // 0x3a12f0: r0 = call 0x391a04
    //     0x3a12f0: bl           0x391a04
    //     0x3a12f4: stur         r0, [fp, #-0x40]
    //     0x3a12f8: ldur         BARRIER, [fp, #-0x30]
    //     0x3a12fc: ldur         lr, [fp, #-0x38]
    //     0x3a1300: stp          lr, BARRIER, [SP]
    // 0x3a1304: r1 = r0
    //     0x3a1304: mov          r1, r0
    // 0x3a1308: r4 = pp[0x20f]
    //     0x3a1308: add          r4, PP, #0xf, lsl #12
    //     0x3a130c: ldr          r4, [r4, #0x200]
    // 0x3a1310: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a1310: bl           0x391490
    // 0x3a1314: r1 = NULL
    //     0x3a1314: mov          r1, NULL
    //     0x3a1318: mov          r2, #0xa
    // 0x3a131c: r0 = call 0x61f920
    //     0x3a131c: bl           0x61f920
    // 0x3a1320: r2 = r0
    //     0x3a1320: mov          r2, r0
    //     0x3a1324: ldur         r0, [fp, #-0x28]
    //     0x3a1328: stur         r2, [fp, #-0x30]
    // 0x3a132c: StoreField: r2->field_f = r0
    //     0x3a132c: stur         r0, [r2, #0xf]
    //     0x3a1330: ldur         r0, [fp, #-0x18]
    // 0x3a1334: StoreField: r2->field_13 = r0
    //     0x3a1334: stur         r0, [r2, #0x13]
    //     0x3a1338: ldur         r0, [fp, #-8]
    // 0x3a133c: ArrayStore: r2[0] = r0  ; List_8
    //     0x3a133c: stur         r0, [r2, #0x17]
    //     0x3a1340: ldur         r0, [fp, #-0x10]
    // 0x3a1344: StoreField: r2->field_1b = r0
    //     0x3a1344: stur         r0, [r2, #0x1b]
    //     0x3a1348: ldur         r0, [fp, #-0x40]
    // 0x3a134c: StoreField: r2->field_1f = r0
    //     0x3a134c: stur         r0, [r2, #0x1f]
    // 0x3a1350: r1 = pp[0x5c58]
    //     0x3a1350: ldr          r1, [PP, #0x5c58]
    // 0x3a1354: r0 = call 0x61e854
    //     0x3a1354: bl           0x61e854
    // 0x3a1358: r1 = r0
    //     0x3a1358: mov          r1, r0
    //     0x3a135c: ldur         r0, [fp, #-0x30]
    //     0x3a1360: stur         r1, [fp, #-8]
    // 0x3a1364: StoreField: r1->field_f = r0
    //     0x3a1364: stur         r0, [r1, #0xf]
    //     0x3a1368: mov          r0, #0xa
    // 0x3a136c: StoreField: r1->field_b = r0
    //     0x3a136c: stur         r0, [r1, #0xb]
    // 0x3a1370: r0 = call 0x3a1414
    //     0x3a1370: bl           0x3a1414
    // 0x3a1374: r1 = r0
    //     0x3a1374: mov          r1, r0
    // 0x3a1378: r0 = pp[0x5140]
    //     0x3a1378: ldr          r0, [PP, #0x5140]
    //     0x3a137c: stur         r1, [fp, #-0x10]
    // 0x3a1380: StoreField: r1->field_f = r0
    //     0x3a1380: stur         r0, [r1, #0xf]
    // 0x3a1384: r0 = pp[0x297]
    //     0x3a1384: add          r0, PP, #0xf, lsl #12
    //     0x3a1388: ldr          r0, [r0, #0x288]
    // 0x3a138c: StoreField: r1->field_13 = r0
    //     0x3a138c: stur         r0, [r1, #0x13]
    // 0x3a1390: r0 = pp[0xb16]
    //     0x3a1390: add          r0, PP, #0xe, lsl #12
    //     0x3a1394: ldr          r0, [r0, #0xb08]
    // 0x3a1398: ArrayStore: r1[0] = r0  ; List_8
    //     0x3a1398: stur         r0, [r1, #0x17]
    // 0x3a139c: r0 = pp[0xb6e]
    //     0x3a139c: add          r0, PP, #0xe, lsl #12
    //     0x3a13a0: ldr          r0, [r0, #0xb60]
    // 0x3a13a4: StoreField: r1->field_1b = r0
    //     0x3a13a4: stur         r0, [r1, #0x1b]
    // 0x3a13a8: r0 = pp[0xb06]
    //     0x3a13a8: add          r0, PP, #0xe, lsl #12
    //     0x3a13ac: ldr          r0, [r0, #0xaf8]
    // 0x3a13b0: StoreField: r1->field_23 = r0
    //     0x3a13b0: stur         r0, [r1, #0x23]
    // 0x3a13b4: r0 = pp[0xb2]
    //     0x3a13b4: add          r0, PP, #0xa, lsl #12
    //     0x3a13b8: ldr          r0, [r0, #0xa8]
    // 0x3a13bc: StoreField: r1->field_2b = r0
    //     0x3a13bc: stur         r0, [r1, #0x2b]
    // 0x3a13c0: StoreField: r1->field_2f = xzr
    //     0x3a13c0: stur         xzr, [r1, #0x2f]
    //     0x3a13c4: ldur         r0, [fp, #-8]
    // 0x3a13c8: StoreField: r1->field_b = r0
    //     0x3a13c8: stur         r0, [r1, #0xb]
    // 0x3a13cc: r0 = call 0x391a04
    //     0x3a13cc: bl           0x391a04
    //     0x3a13d0: stur         r0, [fp, #-8]
    // 0x3a13d4: BARRIER = pp[0x572]
    //     0x3a13d4: add          BARRIER, PP, #0x12, lsl #12
    //     0x3a13d8: ldr          BARRIER, [BARRIER, #0x560]
    //     0x3a13dc: ldur         lr, [fp, #-0x20]
    //     0x3a13e0: stp          lr, BARRIER, [SP, #8]
    //     0x3a13e4: ldur         BARRIER, [fp, #-0x10]
    //     0x3a13e8: str          BARRIER, [SP]
    // 0x3a13ec: r1 = r0
    //     0x3a13ec: mov          r1, r0
    // 0x3a13f0: r4 = pp[0x4d5]
    //     0x3a13f0: add          r4, PP, #0x15, lsl #12
    //     0x3a13f4: ldr          r4, [r4, #0x4c0]
    // 0x3a13f8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a13f8: bl           0x391490
    //     0x3a13fc: ldur         r0, [fp, #-8]
    // 0x3a1400: SP = fp
    //     0x3a1400: mov          SP, fp
    // 0x3a1404: LeaveFrame
    //     0x3a1404: ldp          fp, lr, [SP], #0x10
    // 0x3a1408: ret
    //     0x3a1408: ret          
    // 0x3a140c: r0 = call 0x61fa28
    //     0x3a140c: bl           0x61fa28
    // 0x3a1410: b 0x3a10b4
    //     0x3a1410: b            0x3a10b4
  }

  build() {
    // ** addr: 0x3a1438, size: 0x48c
    // 0x3a1438: EnterFrame
    //     0x3a1438: stp          fp, lr, [SP, #-0x10]!
    //     0x3a143c: mov          fp, SP
    // 0x3a1440: AllocStack(0x48)
    //     0x3a1440: sub          SP, SP, #0x48
    //     0x3a1444: stur         r2, [fp, #-8]
    // 0x3a1448: CheckStackOverflow
    //     0x3a1448: ldr          BARRIER, [THR, #0x38]
    //     0x3a144c: cmp          SP, BARRIER
    //     0x3a1450: b.ls         0x3a18bc
    //     0x3a1454: mov          r1, #1
    // 0x3a1458: r0 = call 0x61e890
    //     0x3a1458: bl           0x61e890
    // 0x3a145c: r1 = r0
    //     0x3a145c: mov          r1, r0
    //     0x3a1460: ldur         r0, [fp, #-8]
    //     0x3a1464: stur         r1, [fp, #-0x10]
    // 0x3a1468: StoreField: r1->field_f = r0
    //     0x3a1468: stur         r0, [r1, #0xf]
    // 0x3a146c: r0 = call 0x2e3578
    //     0x3a146c: bl           0x2e3578
    //     0x3a1470: fmov         d0, #18.00000000
    //     0x3a1474: stur         r0, [fp, #-8]
    // 0x3a1478: StoreField: r0->field_7 = d0
    //     0x3a1478: stur         d0, [r0, #7]
    //     0x3a147c: fmov         d1, #16.00000000
    // 0x3a1480: StoreField: r0->field_f = d1
    //     0x3a1480: stur         d1, [r0, #0xf]
    // 0x3a1484: ArrayStore: r0[0] = d0  ; List_8
    //     0x3a1484: stur         d0, [r0, #0x17]
    // 0x3a1488: StoreField: r0->field_1f = d1
    //     0x3a1488: stur         d1, [r0, #0x1f]
    // 0x3a148c: r1 = pp[0x81c]
    //     0x3a148c: add          r1, PP, #0xc, lsl #12
    //     0x3a1490: ldr          r1, [r1, #0x810]
    // 0x3a1494: r4 = pp[0x4c0]
    //     0x3a1494: ldr          r4, [PP, #0x4c0]
    // 0x3a1498: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3a1498: bl           0x3a1dcc
    //     0x3a149c: stur         r0, [fp, #-0x18]
    // 0x3a14a0: r0 = call 0x3a1dc0
    //     0x3a14a0: bl           0x3a1dc0
    // 0x3a14a4: r1 = r0
    //     0x3a14a4: mov          r1, r0
    //     0x3a14a8: ldur         r0, [fp, #-0x18]
    //     0x3a14ac: stur         r1, [fp, #-0x20]
    // 0x3a14b0: StoreField: r1->field_b = r0
    //     0x3a14b0: stur         r0, [r1, #0xb]
    // 0x3a14b4: r0 = call 0x3949ec
    //     0x3a14b4: bl           0x3949ec
    // 0x3a14b8: r2 = r0
    //     0x3a14b8: mov          r2, r0
    // 0x3a14bc: r0 = pp[0xb5e]
    //     0x3a14bc: add          r0, PP, #0xe, lsl #12
    //     0x3a14c0: ldr          r0, [r0, #0xb50]
    //     0x3a14c4: stur         r2, [fp, #-0x18]
    // 0x3a14c8: StoreField: r2->field_13 = r0
    //     0x3a14c8: stur         r0, [r2, #0x13]
    // 0x3a14cc: r1 = pp[0x80c]
    //     0x3a14cc: add          r1, PP, #0xc, lsl #12
    //     0x3a14d0: ldr          r1, [r1, #0x800]
    // 0x3a14d4: r4 = pp[0x4c0]
    //     0x3a14d4: ldr          r4, [PP, #0x4c0]
    // 0x3a14d8: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x3a14d8: bl           0x3a1dcc
    //     0x3a14dc: stur         r0, [fp, #-0x28]
    // 0x3a14e0: r0 = call 0x31abec
    //     0x3a14e0: bl           0x31abec
    // 0x3a14e4: r1 = r0
    //     0x3a14e4: mov          r1, r0
    //     0x3a14e8: add          r0, NULL, #0x20
    //     0x3a14ec: stur         r1, [fp, #-0x30]
    // 0x3a14f0: StoreField: r1->field_7 = r0
    //     0x3a14f0: stur         r0, [r1, #7]
    // 0x3a14f4: r2 = pp[0x6050]
    //     0x3a14f4: ldr          r2, [PP, #0x6050]
    // 0x3a14f8: StoreField: r1->field_b = r2
    //     0x3a14f8: stur         r2, [r1, #0xb]
    // 0x3a14fc: r2 = pp[0x217]
    //     0x3a14fc: add          r2, PP, #0xf, lsl #12
    //     0x3a1500: ldr          r2, [r2, #0x208]
    // 0x3a1504: StoreField: r1->field_1f = r2
    //     0x3a1504: stur         r2, [r1, #0x1f]
    // 0x3a1508: r2 = pp[0xe4e]
    //     0x3a1508: add          r2, PP, #0xe, lsl #12
    //     0x3a150c: ldr          r2, [r2, #0xe40]
    // 0x3a1510: StoreField: r1->field_23 = r2
    //     0x3a1510: stur         r2, [r1, #0x23]
    // 0x3a1514: r0 = call 0x393bf8
    //     0x3a1514: bl           0x393bf8
    // 0x3a1518: r3 = r0
    //     0x3a1518: mov          r3, r0
    //     0x3a151c: ldur         r0, [fp, #-0x28]
    //     0x3a1520: stur         r3, [fp, #-0x38]
    // 0x3a1524: StoreField: r3->field_b = r0
    //     0x3a1524: stur         r0, [r3, #0xb]
    //     0x3a1528: ldur         r0, [fp, #-0x30]
    // 0x3a152c: StoreField: r3->field_13 = r0
    //     0x3a152c: stur         r0, [r3, #0x13]
    // 0x3a1530: r1 = NULL
    //     0x3a1530: mov          r1, NULL
    //     0x3a1534: mov          r2, #2
    // 0x3a1538: r0 = call 0x61f920
    //     0x3a1538: bl           0x61f920
    // 0x3a153c: r2 = r0
    //     0x3a153c: mov          r2, r0
    //     0x3a1540: ldur         r0, [fp, #-0x38]
    //     0x3a1544: stur         r2, [fp, #-0x28]
    // 0x3a1548: StoreField: r2->field_f = r0
    //     0x3a1548: stur         r0, [r2, #0xf]
    // 0x3a154c: r1 = pp[0x5c58]
    //     0x3a154c: ldr          r1, [PP, #0x5c58]
    // 0x3a1550: r0 = call 0x61e854
    //     0x3a1550: bl           0x61e854
    // 0x3a1554: r1 = r0
    //     0x3a1554: mov          r1, r0
    //     0x3a1558: ldur         r0, [fp, #-0x28]
    //     0x3a155c: stur         r1, [fp, #-0x30]
    // 0x3a1560: StoreField: r1->field_f = r0
    //     0x3a1560: stur         r0, [r1, #0xf]
    //     0x3a1564: mov          r0, #2
    // 0x3a1568: StoreField: r1->field_b = r0
    //     0x3a1568: stur         r0, [r1, #0xb]
    // 0x3a156c: r0 = call 0x39310c
    //     0x3a156c: bl           0x39310c
    // 0x3a1570: r1 = r0
    //     0x3a1570: mov          r1, r0
    // 0x3a1574: r0 = pp[0x862]
    //     0x3a1574: add          r0, PP, #0xa, lsl #12
    //     0x3a1578: ldr          r0, [r0, #0x858]
    //     0x3a157c: stur         r1, [fp, #-0x28]
    // 0x3a1580: StoreField: r1->field_f = r0
    //     0x3a1580: stur         r0, [r1, #0xf]
    // 0x3a1584: r2 = pp[0xaee]
    //     0x3a1584: add          r2, PP, #0xe, lsl #12
    //     0x3a1588: ldr          r2, [r2, #0xae0]
    // 0x3a158c: StoreField: r1->field_13 = r2
    //     0x3a158c: stur         r2, [r1, #0x13]
    // 0x3a1590: r3 = pp[0xaf6]
    //     0x3a1590: add          r3, PP, #0xe, lsl #12
    //     0x3a1594: ldr          r3, [r3, #0xae8]
    // 0x3a1598: ArrayStore: r1[0] = r3  ; List_8
    //     0x3a1598: stur         r3, [r1, #0x17]
    // 0x3a159c: r4 = pp[0xb6e]
    //     0x3a159c: add          r4, PP, #0xe, lsl #12
    //     0x3a15a0: ldr          r4, [r4, #0xb60]
    // 0x3a15a4: StoreField: r1->field_1b = r4
    //     0x3a15a4: stur         r4, [r1, #0x1b]
    // 0x3a15a8: r5 = pp[0xb06]
    //     0x3a15a8: add          r5, PP, #0xe, lsl #12
    //     0x3a15ac: ldr          r5, [r5, #0xaf8]
    // 0x3a15b0: StoreField: r1->field_23 = r5
    //     0x3a15b0: stur         r5, [r1, #0x23]
    // 0x3a15b4: r6 = pp[0xb2]
    //     0x3a15b4: add          r6, PP, #0xa, lsl #12
    //     0x3a15b8: ldr          r6, [r6, #0xa8]
    // 0x3a15bc: StoreField: r1->field_2b = r6
    //     0x3a15bc: stur         r6, [r1, #0x2b]
    // 0x3a15c0: StoreField: r1->field_2f = xzr
    //     0x3a15c0: stur         xzr, [r1, #0x2f]
    //     0x3a15c4: ldur         r7, [fp, #-0x30]
    // 0x3a15c8: StoreField: r1->field_b = r7
    //     0x3a15c8: stur         r7, [r1, #0xb]
    // 0x3a15cc: r0 = call 0x3a1db4
    //     0x3a15cc: bl           0x3a1db4
    // 0x3a15d0: r2 = r0
    //     0x3a15d0: mov          r2, r0
    // 0x3a15d4: r0 = pp[0x862]
    //     0x3a15d4: add          r0, PP, #0xa, lsl #12
    //     0x3a15d8: ldr          r0, [r0, #0x858]
    //     0x3a15dc: stur         r2, [fp, #-0x30]
    // 0x3a15e0: StoreField: r2->field_b = r0
    //     0x3a15e0: stur         r0, [r2, #0xb]
    //     0x3a15e4: add          r1, NULL, #0x30
    // 0x3a15e8: StoreField: r2->field_f = r1
    //     0x3a15e8: stur         r1, [r2, #0xf]
    //     0x3a15ec: ldur         r1, [fp, #-0x28]
    // 0x3a15f0: StoreField: r2->field_23 = r1
    //     0x3a15f0: stur         r1, [r2, #0x23]
    // 0x3a15f4: r1 = pp[0x77d8]
    //     0x3a15f4: ldr          r1, [PP, #0x77d8]
    // 0x3a15f8: StoreField: r2->field_27 = r1
    //     0x3a15f8: stur         r1, [r2, #0x27]
    // 0x3a15fc: r1 = pp[0xf1e]
    //     0x3a15fc: add          r1, PP, #0xe, lsl #12
    //     0x3a1600: ldr          r1, [r1, #0xf10]
    // 0x3a1604: StoreField: r2->field_2b = r1
    //     0x3a1604: stur         r1, [r2, #0x2b]
    // 0x3a1608: r1 = pp[0x14f]
    //     0x3a1608: add          r1, PP, #0xf, lsl #12
    //     0x3a160c: ldr          r1, [r1, #0x140]
    // 0x3a1610: StoreField: r2->field_2f = r1
    //     0x3a1610: stur         r1, [r2, #0x2f]
    // 0x3a1614: r1 = pp[0x307]
    //     0x3a1614: add          r1, PP, #0xf, lsl #12
    //     0x3a1618: ldr          r1, [r1, #0x2f8]
    // 0x3a161c: StoreField: r2->field_37 = r1
    //     0x3a161c: stur         r1, [r2, #0x37]
    // 0x3a1620: r1 = pp[0xade]
    //     0x3a1620: add          r1, PP, #0xe, lsl #12
    //     0x3a1624: ldr          r1, [r1, #0xad0]
    // 0x3a1628: r0 = call 0x39fb14
    //     0x3a1628: bl           0x39fb14
    // 0x3a162c: r3 = r0
    //     0x3a162c: mov          r3, r0
    //     0x3a1630: mov          r0, #1
    //     0x3a1634: stur         r3, [fp, #-0x28]
    // 0x3a1638: StoreField: r3->field_13 = r0
    //     0x3a1638: stur         r0, [r3, #0x13]
    // 0x3a163c: r0 = pp[0xae6]
    //     0x3a163c: add          r0, PP, #0xe, lsl #12
    //     0x3a1640: ldr          r0, [r0, #0xad8]
    // 0x3a1644: StoreField: r3->field_1b = r0
    //     0x3a1644: stur         r0, [r3, #0x1b]
    //     0x3a1648: ldur         r0, [fp, #-0x30]
    // 0x3a164c: StoreField: r3->field_b = r0
    //     0x3a164c: stur         r0, [r3, #0xb]
    // 0x3a1650: r1 = NULL
    //     0x3a1650: mov          r1, NULL
    //     0x3a1654: mov          r2, #6
    // 0x3a1658: r0 = call 0x61f920
    //     0x3a1658: bl           0x61f920
    // 0x3a165c: r2 = r0
    //     0x3a165c: mov          r2, r0
    //     0x3a1660: ldur         r0, [fp, #-0x20]
    //     0x3a1664: stur         r2, [fp, #-0x30]
    // 0x3a1668: StoreField: r2->field_f = r0
    //     0x3a1668: stur         r0, [r2, #0xf]
    //     0x3a166c: ldur         r0, [fp, #-0x18]
    // 0x3a1670: StoreField: r2->field_13 = r0
    //     0x3a1670: stur         r0, [r2, #0x13]
    //     0x3a1674: ldur         r0, [fp, #-0x28]
    // 0x3a1678: ArrayStore: r2[0] = r0  ; List_8
    //     0x3a1678: stur         r0, [r2, #0x17]
    // 0x3a167c: r1 = pp[0x5c58]
    //     0x3a167c: ldr          r1, [PP, #0x5c58]
    // 0x3a1680: r0 = call 0x61e854
    //     0x3a1680: bl           0x61e854
    // 0x3a1684: r1 = r0
    //     0x3a1684: mov          r1, r0
    //     0x3a1688: ldur         r0, [fp, #-0x30]
    //     0x3a168c: stur         r1, [fp, #-0x18]
    // 0x3a1690: StoreField: r1->field_f = r0
    //     0x3a1690: stur         r0, [r1, #0xf]
    //     0x3a1694: mov          r2, #6
    // 0x3a1698: StoreField: r1->field_b = r2
    //     0x3a1698: stur         r2, [r1, #0xb]
    // 0x3a169c: r0 = call 0x39310c
    //     0x3a169c: bl           0x39310c
    // 0x3a16a0: r1 = r0
    //     0x3a16a0: mov          r1, r0
    // 0x3a16a4: r0 = pp[0x862]
    //     0x3a16a4: add          r0, PP, #0xa, lsl #12
    //     0x3a16a8: ldr          r0, [r0, #0x858]
    //     0x3a16ac: stur         r1, [fp, #-0x20]
    // 0x3a16b0: StoreField: r1->field_f = r0
    //     0x3a16b0: stur         r0, [r1, #0xf]
    // 0x3a16b4: r2 = pp[0xaee]
    //     0x3a16b4: add          r2, PP, #0xe, lsl #12
    //     0x3a16b8: ldr          r2, [r2, #0xae0]
    // 0x3a16bc: StoreField: r1->field_13 = r2
    //     0x3a16bc: stur         r2, [r1, #0x13]
    // 0x3a16c0: r2 = pp[0xaf6]
    //     0x3a16c0: add          r2, PP, #0xe, lsl #12
    //     0x3a16c4: ldr          r2, [r2, #0xae8]
    // 0x3a16c8: ArrayStore: r1[0] = r2  ; List_8
    //     0x3a16c8: stur         r2, [r1, #0x17]
    // 0x3a16cc: r3 = pp[0xb6e]
    //     0x3a16cc: add          r3, PP, #0xe, lsl #12
    //     0x3a16d0: ldr          r3, [r3, #0xb60]
    // 0x3a16d4: StoreField: r1->field_1b = r3
    //     0x3a16d4: stur         r3, [r1, #0x1b]
    // 0x3a16d8: r4 = pp[0xb06]
    //     0x3a16d8: add          r4, PP, #0xe, lsl #12
    //     0x3a16dc: ldr          r4, [r4, #0xaf8]
    // 0x3a16e0: StoreField: r1->field_23 = r4
    //     0x3a16e0: stur         r4, [r1, #0x23]
    // 0x3a16e4: r5 = pp[0xb2]
    //     0x3a16e4: add          r5, PP, #0xa, lsl #12
    //     0x3a16e8: ldr          r5, [r5, #0xa8]
    // 0x3a16ec: StoreField: r1->field_2b = r5
    //     0x3a16ec: stur         r5, [r1, #0x2b]
    // 0x3a16f0: StoreField: r1->field_2f = xzr
    //     0x3a16f0: stur         xzr, [r1, #0x2f]
    //     0x3a16f4: ldur         r6, [fp, #-0x18]
    // 0x3a16f8: StoreField: r1->field_b = r6
    //     0x3a16f8: stur         r6, [r1, #0xb]
    // 0x3a16fc: r0 = call 0x3a1da8
    //     0x3a16fc: bl           0x3a1da8
    // 0x3a1700: d0 = pp[0x562]
    //     0x3a1700: add          r17, PP, #0x12, lsl #12
    //     0x3a1704: ldr          d0, [r17, #0x550]
    //     0x3a1708: stur         r0, [fp, #-0x18]
    // 0x3a170c: StoreField: r0->field_b = d0
    //     0x3a170c: stur         d0, [r0, #0xb]
    // 0x3a1710: d0 = pp[0x56a]
    //     0x3a1710: add          r17, PP, #0x12, lsl #12
    //     0x3a1714: ldr          d0, [r17, #0x558]
    // 0x3a1718: StoreField: r0->field_13 = d0
    //     0x3a1718: stur         d0, [r0, #0x13]
    //     0x3a171c: ldur         r1, [fp, #-0x20]
    // 0x3a1720: StoreField: r0->field_1b = r1
    //     0x3a1720: stur         r1, [r0, #0x1b]
    //     0x3a1724: ldur         r1, [fp, #-8]
    // 0x3a1728: StoreField: r0->field_1f = r1
    //     0x3a1728: stur         r1, [r0, #0x1f]
    // 0x3a172c: r0 = call 0x3949ec
    //     0x3a172c: bl           0x3949ec
    // 0x3a1730: r1 = r0
    //     0x3a1730: mov          r1, r0
    // 0x3a1734: r0 = pp[0x572]
    //     0x3a1734: add          r0, PP, #0x12, lsl #12
    //     0x3a1738: ldr          r0, [r0, #0x560]
    //     0x3a173c: stur         r1, [fp, #-8]
    // 0x3a1740: StoreField: r1->field_13 = r0
    //     0x3a1740: stur         r0, [r1, #0x13]
    // 0x3a1744: r0 = call 0x3a142c
    //     0x3a1744: bl           0x3a142c
    // 0x3a1748: r1 = r0
    //     0x3a1748: mov          r1, r0
    // 0x3a174c: r0 = pp[0x57a]
    //     0x3a174c: add          r0, PP, #0x12, lsl #12
    //     0x3a1750: ldr          r0, [r0, #0x568]
    //     0x3a1754: stur         r1, [fp, #-0x20]
    // 0x3a1758: StoreField: r1->field_b = r0
    //     0x3a1758: stur         r0, [r1, #0xb]
    // 0x3a175c: r0 = pp[0x17f]
    //     0x3a175c: add          r0, PP, #0xf, lsl #12
    //     0x3a1760: ldr          r0, [r0, #0x170]
    // 0x3a1764: StoreField: r1->field_f = r0
    //     0x3a1764: stur         r0, [r1, #0xf]
    // 0x3a1768: r0 = pp[0x572]
    //     0x3a1768: add          r0, PP, #0x12, lsl #12
    //     0x3a176c: ldr          r0, [r0, #0x560]
    // 0x3a1770: StoreField: r1->field_13 = r0
    //     0x3a1770: stur         r0, [r1, #0x13]
    // 0x3a1774: ArrayStore: r1[0] = r0  ; List_8
    //     0x3a1774: stur         r0, [r1, #0x17]
    // 0x3a1778: r0 = call 0x391a04
    //     0x3a1778: bl           0x391a04
    //     0x3a177c: stur         r0, [fp, #-0x28]
    //     0x3a1780: ldur         BARRIER, [fp, #-0x20]
    //     0x3a1784: str          BARRIER, [SP]
    // 0x3a1788: r1 = r0
    //     0x3a1788: mov          r1, r0
    // 0x3a178c: r4 = pp[0x204]
    //     0x3a178c: add          r4, PP, #0xc, lsl #12
    //     0x3a1790: ldr          r4, [r4, #0x1f8]
    // 0x3a1794: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3a1794: bl           0x391490
    // 0x3a1798: r0 = call 0x3a1d94
    //     0x3a1798: bl           0x3a1d94
    //     0x3a179c: ldur         r2, [fp, #-0x10]
    // 0x3a17a0: r1 = pp[0x582]
    //     0x3a17a0: add          r1, PP, #0x12, lsl #12
    //     0x3a17a4: ldr          r1, [r1, #0x570]
    //     0x3a17a8: stur         r0, [fp, #-0x10]
    // 0x3a17ac: r0 = call 0x61ec54
    //     0x3a17ac: bl           0x61ec54
    //     0x3a17b0: ldur         BARRIER, [fp, #-0x28]
    //     0x3a17b4: stp          r0, BARRIER, [SP]
    //     0x3a17b8: ldur         r1, [fp, #-0x10]
    // 0x3a17bc: r4 = pp[0xece]
    //     0x3a17bc: add          r4, PP, #0xe, lsl #12
    //     0x3a17c0: ldr          r4, [r4, #0xec0]
    // 0x3a17c4: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x3a17c4: bl           0x3a18c4
    // 0x3a17c8: r1 = NULL
    //     0x3a17c8: mov          r1, NULL
    //     0x3a17cc: mov          r2, #6
    // 0x3a17d0: r0 = call 0x61f920
    //     0x3a17d0: bl           0x61f920
    // 0x3a17d4: r2 = r0
    //     0x3a17d4: mov          r2, r0
    //     0x3a17d8: ldur         r0, [fp, #-0x18]
    //     0x3a17dc: stur         r2, [fp, #-0x20]
    // 0x3a17e0: StoreField: r2->field_f = r0
    //     0x3a17e0: stur         r0, [r2, #0xf]
    //     0x3a17e4: ldur         r0, [fp, #-8]
    // 0x3a17e8: StoreField: r2->field_13 = r0
    //     0x3a17e8: stur         r0, [r2, #0x13]
    //     0x3a17ec: ldur         r0, [fp, #-0x10]
    // 0x3a17f0: ArrayStore: r2[0] = r0  ; List_8
    //     0x3a17f0: stur         r0, [r2, #0x17]
    // 0x3a17f4: r1 = pp[0x5c58]
    //     0x3a17f4: ldr          r1, [PP, #0x5c58]
    // 0x3a17f8: r0 = call 0x61e854
    //     0x3a17f8: bl           0x61e854
    // 0x3a17fc: r1 = r0
    //     0x3a17fc: mov          r1, r0
    //     0x3a1800: ldur         r0, [fp, #-0x20]
    //     0x3a1804: stur         r1, [fp, #-8]
    // 0x3a1808: StoreField: r1->field_f = r0
    //     0x3a1808: stur         r0, [r1, #0xf]
    //     0x3a180c: mov          r0, #6
    // 0x3a1810: StoreField: r1->field_b = r0
    //     0x3a1810: stur         r0, [r1, #0xb]
    // 0x3a1814: r0 = call 0x39310c
    //     0x3a1814: bl           0x39310c
    // 0x3a1818: r1 = r0
    //     0x3a1818: mov          r1, r0
    // 0x3a181c: r0 = pp[0x862]
    //     0x3a181c: add          r0, PP, #0xa, lsl #12
    //     0x3a1820: ldr          r0, [r0, #0x858]
    //     0x3a1824: stur         r1, [fp, #-0x10]
    // 0x3a1828: StoreField: r1->field_f = r0
    //     0x3a1828: stur         r0, [r1, #0xf]
    // 0x3a182c: r0 = pp[0x297]
    //     0x3a182c: add          r0, PP, #0xf, lsl #12
    //     0x3a1830: ldr          r0, [r0, #0x288]
    // 0x3a1834: StoreField: r1->field_13 = r0
    //     0x3a1834: stur         r0, [r1, #0x13]
    // 0x3a1838: r0 = pp[0xaf6]
    //     0x3a1838: add          r0, PP, #0xe, lsl #12
    //     0x3a183c: ldr          r0, [r0, #0xae8]
    // 0x3a1840: ArrayStore: r1[0] = r0  ; List_8
    //     0x3a1840: stur         r0, [r1, #0x17]
    // 0x3a1844: r0 = pp[0xb6e]
    //     0x3a1844: add          r0, PP, #0xe, lsl #12
    //     0x3a1848: ldr          r0, [r0, #0xb60]
    // 0x3a184c: StoreField: r1->field_1b = r0
    //     0x3a184c: stur         r0, [r1, #0x1b]
    // 0x3a1850: r0 = pp[0xb06]
    //     0x3a1850: add          r0, PP, #0xe, lsl #12
    //     0x3a1854: ldr          r0, [r0, #0xaf8]
    // 0x3a1858: StoreField: r1->field_23 = r0
    //     0x3a1858: stur         r0, [r1, #0x23]
    // 0x3a185c: r0 = pp[0xb2]
    //     0x3a185c: add          r0, PP, #0xa, lsl #12
    //     0x3a1860: ldr          r0, [r0, #0xa8]
    // 0x3a1864: StoreField: r1->field_2b = r0
    //     0x3a1864: stur         r0, [r1, #0x2b]
    // 0x3a1868: StoreField: r1->field_2f = xzr
    //     0x3a1868: stur         xzr, [r1, #0x2f]
    //     0x3a186c: ldur         r2, [fp, #-8]
    // 0x3a1870: StoreField: r1->field_b = r2
    //     0x3a1870: stur         r2, [r1, #0xb]
    // 0x3a1874: r0 = call 0x3949f8
    //     0x3a1874: bl           0x3949f8
    // 0x3a1878: r1 = pp[0x58a]
    //     0x3a1878: add          r1, PP, #0x12, lsl #12
    //     0x3a187c: ldr          r1, [r1, #0x578]
    // 0x3a1880: StoreField: r0->field_f = r1
    //     0x3a1880: stur         r1, [r0, #0xf]
    // 0x3a1884: StoreField: r0->field_13 = xzr
    //     0x3a1884: stur         xzr, [r0, #0x13]
    //     0x3a1888: add          r1, NULL, #0x20
    // 0x3a188c: StoreField: r0->field_2f = r1
    //     0x3a188c: stur         r1, [r0, #0x2f]
    // 0x3a1890: r1 = pp[0xb2]
    //     0x3a1890: add          r1, PP, #0xa, lsl #12
    //     0x3a1894: ldr          r1, [r1, #0xa8]
    // 0x3a1898: StoreField: r0->field_33 = r1
    //     0x3a1898: stur         r1, [r0, #0x33]
    // 0x3a189c: r1 = pp[0x264]
    //     0x3a189c: add          r1, PP, #0xc, lsl #12
    //     0x3a18a0: ldr          r1, [r1, #0x258]
    // 0x3a18a4: StoreField: r0->field_37 = r1
    //     0x3a18a4: stur         r1, [r0, #0x37]
    //     0x3a18a8: ldur         r1, [fp, #-0x10]
    // 0x3a18ac: StoreField: r0->field_b = r1
    //     0x3a18ac: stur         r1, [r0, #0xb]
    // 0x3a18b0: SP = fp
    //     0x3a18b0: mov          SP, fp
    // 0x3a18b4: LeaveFrame
    //     0x3a18b4: ldp          fp, lr, [SP], #0x10
    // 0x3a18b8: ret
    //     0x3a18b8: ret          
    // 0x3a18bc: r0 = call 0x61fa28
    //     0x3a18bc: bl           0x61fa28
    // 0x3a18c0: b 0x3a1454
    //     0x3a18c0: b            0x3a1454
  }

  _anon_closure() {
    // ** addr: 0x3a256c, size: 0xe0
    // 0x3a256c: EnterFrame
    //     0x3a256c: stp          fp, lr, [SP, #-0x10]!
    //     0x3a2570: mov          fp, SP
    // 0x3a2574: AllocStack(0x28)
    //     0x3a2574: sub          SP, SP, #0x28
    //     0x3a2578: ldr          r0, [fp, #0x10]
    // 0x3a257c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x3a257c: ldur         r1, [r0, #0x17]
    //     0x3a2580: add          r1, r1, HEAP, lsl #32
    // 0x3a2584: CheckStackOverflow
    //     0x3a2584: ldr          BARRIER, [THR, #0x38]
    //     0x3a2588: cmp          SP, BARRIER
    //     0x3a258c: b.ls         0x3a2644
    // 0x3a2590: LoadField: r0 = r1->field_f
    //     0x3a2590: ldur         r0, [r1, #0xf]
    //     0x3a2594: add          r0, r0, HEAP, lsl #32
    // 0x3a2598: r1 = r0
    //     0x3a2598: mov          r1, r0
    // 0x3a259c: r4 = pp[0x4c0]
    //     0x3a259c: ldr          r4, [PP, #0x4c0]
    // 0x3a25a0: r0 = flutter$src$widgets$navigator_Navigator::of()
    //     0x3a25a0: bl           0x3a4e94
    //     0x3a25a4: stur         r0, [fp, #-8]
    // 0x3a25a8: r1 = LoadClassIdInstr(r0)
    //     0x3a25a8: ldur         r1, [r0, #-1]
    //     0x3a25ac: ubfx         r1, r1, #0xc, #0x14
    //     0x3a25b0: cmp          r1, #0x8e7
    // 0x3a25b4: b.ne 0x3a2610
    //     0x3a25b4: b.ne         0x3a2610
    // 0x3a25b8: r1 = r0
    //     0x3a25b8: mov          r1, r0
    // 0x3a25bc: r0 = flutter$src$widgets$navigator_NavigatorState::canPop()
    //     0x3a25bc: bl           0x3a4d94
    //     0x3a25c0: tbz          r0, #4, 0x3a25f4
    // 0x3a25c4: r0 = flutter_boost$src$boost_navigator_BoostNavigator::get_instance()
    //     0x3a25c4: bl           0x3a4c98
    //     0x3a25c8: stur         r0, [fp, #-0x10]
    // 0x3a25cc: CheckStackOverflow
    //     0x3a25cc: ldr          BARRIER, [THR, #0x90]
    //     0x3a25d0: stp          BARRIER, NULL, [SP]
    // 0x3a25d4: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x3a25d4: bl           0x27c0c8
    // 0x3a25d8: BARRIER = pp[0x120]
    //     0x3a25d8: ldr          BARRIER, [PP, #0x120]
    //     0x3a25dc: ldur         lr, [fp, #-0x10]
    //     0x3a25e0: stp          lr, BARRIER, [SP, #8]
    //     0x3a25e4: str          r0, [SP]
    // 0x3a25e8: r4 = pp[0x58]
    //     0x3a25e8: ldr          r4, [PP, #0x58]
    // 0x3a25ec: r0 = flutter_boost$src$boost_navigator_BoostNavigator::pop()
    //     0x3a25ec: bl           0x3a264c
    // 0x3a25f0: b 0x3a2634
    //     0x3a25f0: b            0x3a2634
    // 0x3a25f4: BARRIER = pp[0x1a8]
    //     0x3a25f4: ldr          BARRIER, [PP, #0x1a8]
    //     0x3a25f8: ldur         lr, [fp, #-8]
    //     0x3a25fc: stp          lr, BARRIER, [SP, #8]
    //     0x3a2600: str          NULL, [SP]
    // 0x3a2604: r4 = pp[0x58]
    //     0x3a2604: ldr          r4, [PP, #0x58]
    // 0x3a2608: r0 = flutter$src$widgets$navigator_NavigatorState::pop()
    //     0x3a2608: bl           0x5e0d74
    // 0x3a260c: b 0x3a2634
    //     0x3a260c: b            0x3a2634
    // 0x3a2610: r1 = LoadClassIdInstr(r0)
    //     0x3a2610: ldur         r1, [r0, #-1]
    //     0x3a2614: ubfx         r1, r1, #0xc, #0x14
    // 0x3a2618: BARRIER = pp[0x1a8]
    //     0x3a2618: ldr          BARRIER, [PP, #0x1a8]
    //     0x3a261c: stp          r0, BARRIER, [SP]
    // 0x3a2620: r0 = r1
    //     0x3a2620: mov          r0, r1
    // 0x3a2624: r4 = pp[0x910]
    //     0x3a2624: ldr          r4, [PP, #0x910]
    //     0x3a2628: sub          lr, r0, #1, lsl #12
    //     0x3a262c: ldr          lr, [r21, lr, lsl #3]
    // 0x3a2630: r0 = [R]()
    //     0x3a2630: blr          lr
    // 0x3a2634: r0 = NULL
    //     0x3a2634: mov          r0, NULL
    // 0x3a2638: SP = fp
    //     0x3a2638: mov          SP, fp
    // 0x3a263c: LeaveFrame
    //     0x3a263c: ldp          fp, lr, [SP], #0x10
    // 0x3a2640: ret
    //     0x3a2640: ret          
    // 0x3a2644: r0 = call 0x61fa28
    //     0x3a2644: bl           0x61fa28
    // 0x3a2648: b 0x3a2590
    //     0x3a2648: b            0x3a2590
  }

  showGameRuleDialog() {
    // ** addr: 0x41bc48, size: 0x5c
    // 0x41bc48: EnterFrame
    //     0x41bc48: stp          fp, lr, [SP, #-0x10]!
    //     0x41bc4c: mov          fp, SP
    // 0x41bc50: AllocStack(0x20)
    //     0x41bc50: sub          SP, SP, #0x20
    // 0x41bc54: r0 = r1
    //     0x41bc54: mov          r0, r1
    //     0x41bc58: stur         r1, [fp, #-8]
    // 0x41bc5c: CheckStackOverflow
    //     0x41bc5c: ldr          BARRIER, [THR, #0x38]
    //     0x41bc60: cmp          SP, BARRIER
    //     0x41bc64: b.ls         0x41bc9c
    // 0x41bc68: r1 = pp[0xbd9]
    //     0x41bc68: add          r1, PP, #0x11, lsl #12
    //     0x41bc6c: ldr          r1, [r1, #0xbc8]
    // 0x41bc70: r2 = NULL
    //     0x41bc70: mov          r2, NULL
    // 0x41bc74: r0 = call 0x61ec54
    //     0x41bc74: bl           0x61ec54
    //     0x41bc78: stp          r0, NULL, [SP, #8]
    //     0x41bc7c: ldur         BARRIER, [fp, #-8]
    //     0x41bc80: str          BARRIER, [SP]
    // 0x41bc84: r4 = pp[0x58]
    //     0x41bc84: ldr          r4, [PP, #0x58]
    // 0x41bc88: r0 = flutter$src$material$dialog_::showDialog()
    //     0x41bc88: bl           0x41bcc4
    // 0x41bc8c: r0 = NULL
    //     0x41bc8c: mov          r0, NULL
    // 0x41bc90: SP = fp
    //     0x41bc90: mov          SP, fp
    // 0x41bc94: LeaveFrame
    //     0x41bc94: ldp          fp, lr, [SP], #0x10
    // 0x41bc98: ret
    //     0x41bc98: ret          
    // 0x41bc9c: r0 = call 0x61fa28
    //     0x41bc9c: bl           0x61fa28
    // 0x41bca0: b 0x41bc68
    //     0x41bca0: b            0x41bc68
  }

  _anon_closure() {
    // ** addr: 0x41c2fc, size: 0x18
    // 0x41c2fc: EnterFrame
    //     0x41c2fc: stp          fp, lr, [SP, #-0x10]!
    //     0x41c300: mov          fp, SP
    // 0x41c304: r0 = call 0x41c314
    //     0x41c304: bl           0x41c314
    // 0x41c308: SP = fp
    //     0x41c308: mov          SP, fp
    // 0x41c30c: LeaveFrame
    //     0x41c30c: ldp          fp, lr, [SP], #0x10
    // 0x41c310: ret
    //     0x41c310: ret          
  }

  showGameDialog() {
    // ** addr: 0x41c4e8, size: 0x5c
    // 0x41c4e8: EnterFrame
    //     0x41c4e8: stp          fp, lr, [SP, #-0x10]!
    //     0x41c4ec: mov          fp, SP
    // 0x41c4f0: AllocStack(0x20)
    //     0x41c4f0: sub          SP, SP, #0x20
    // 0x41c4f4: r0 = r1
    //     0x41c4f4: mov          r0, r1
    //     0x41c4f8: stur         r1, [fp, #-8]
    // 0x41c4fc: CheckStackOverflow
    //     0x41c4fc: ldr          BARRIER, [THR, #0x38]
    //     0x41c500: cmp          SP, BARRIER
    //     0x41c504: b.ls         0x41c53c
    // 0x41c508: r1 = pp[0xc09]
    //     0x41c508: add          r1, PP, #0x11, lsl #12
    //     0x41c50c: ldr          r1, [r1, #0xbf8]
    // 0x41c510: r2 = NULL
    //     0x41c510: mov          r2, NULL
    // 0x41c514: r0 = call 0x61ec54
    //     0x41c514: bl           0x61ec54
    //     0x41c518: stp          r0, NULL, [SP, #8]
    //     0x41c51c: ldur         BARRIER, [fp, #-8]
    //     0x41c520: str          BARRIER, [SP]
    // 0x41c524: r4 = pp[0x58]
    //     0x41c524: ldr          r4, [PP, #0x58]
    // 0x41c528: r0 = flutter$src$material$dialog_::showDialog()
    //     0x41c528: bl           0x41bcc4
    // 0x41c52c: r0 = NULL
    //     0x41c52c: mov          r0, NULL
    // 0x41c530: SP = fp
    //     0x41c530: mov          SP, fp
    // 0x41c534: LeaveFrame
    //     0x41c534: ldp          fp, lr, [SP], #0x10
    // 0x41c538: ret
    //     0x41c538: ret          
    // 0x41c53c: r0 = call 0x61fa28
    //     0x41c53c: bl           0x61fa28
    // 0x41c540: b 0x41c508
    //     0x41c540: b            0x41c508
  }

  _anon_closure() {
    // ** addr: 0x41c544, size: 0x18
    // 0x41c544: EnterFrame
    //     0x41c544: stp          fp, lr, [SP, #-0x10]!
    //     0x41c548: mov          fp, SP
    // 0x41c54c: r0 = call 0x41c55c
    //     0x41c54c: bl           0x41c55c
    // 0x41c550: SP = fp
    //     0x41c550: mov          SP, fp
    // 0x41c554: LeaveFrame
    //     0x41c554: ldp          fp, lr, [SP], #0x10
    // 0x41c558: ret
    //     0x41c558: ret          
  }

  createState() {
    // ** addr: 0x4c393c, size: 0x80
    // 0x4c393c: EnterFrame
    //     0x4c393c: stp          fp, lr, [SP, #-0x10]!
    //     0x4c3940: mov          fp, SP
    // 0x4c3944: AllocStack(0x10)
    //     0x4c3944: sub          SP, SP, #0x10
    // 0x4c3948: CheckStackOverflow
    //     0x4c3948: ldr          BARRIER, [THR, #0x38]
    //     0x4c394c: cmp          SP, BARRIER
    //     0x4c3950: b.ls         0x4c39b4
    // 0x4c3954: r1 = pp[0x59a]
    //     0x4c3954: add          r1, PP, #0x12, lsl #12
    //     0x4c3958: ldr          r1, [r1, #0x588]
    // 0x4c395c: r0 = call 0x4c3a84
    //     0x4c395c: bl           0x4c3a84
    // 0x4c3960: r1 = r0
    //     0x4c3960: mov          r1, r0
    // 0x4c3964: r0 = pp[0x40]
    //     0x4c3964: ldr          r0, [PP, #0x40]
    //     0x4c3968: stur         r1, [fp, #-8]
    // 0x4c396c: ArrayStore: r1[0] = r0  ; List_8
    //     0x4c396c: stur         r0, [r1, #0x17]
    // 0x4c3970: r0 = call 0x4c3a78
    //     0x4c3970: bl           0x4c3a78
    // 0x4c3974: r1 = r0
    //     0x4c3974: mov          r1, r0
    //     0x4c3978: stur         r0, [fp, #-0x10]
    // 0x4c397c: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_bet_record_dialog_GameFruitBetRecordNotifier::ctor()
    //     0x4c397c: bl           0x4c39bc
    //     0x4c3980: ldur         r0, [fp, #-0x10]
    //     0x4c3984: ldur         r1, [fp, #-8]
    // 0x4c3988: StoreField: r1->field_13 = r0
    //     0x4c3988: stur         r0, [r1, #0x13]
    //     0x4c398c: ldurb        r16, [r1, #-1]
    //     0x4c3990: ldurb        r17, [r0, #-1]
    //     0x4c3994: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3998: tst          BARRIER, HEAP, lsr #32
    // 0x4c399c: b.eq 0x4c39a4
    //     0x4c399c: b.eq         0x4c39a4
    // 0x4c39a0: r0 = call 0x61e04c
    //     0x4c39a0: bl           0x61e04c
    // 0x4c39a4: r0 = r1
    //     0x4c39a4: mov          r0, r1
    // 0x4c39a8: SP = fp
    //     0x4c39a8: mov          SP, fp
    // 0x4c39ac: LeaveFrame
    //     0x4c39ac: ldp          fp, lr, [SP], #0x10
    // 0x4c39b0: ret
    //     0x4c39b0: ret          
    // 0x4c39b4: r0 = call 0x61fa28
    //     0x4c39b4: bl           0x61fa28
    // 0x4c39b8: b 0x4c3954
    //     0x4c39b8: b            0x4c3954
  }

  build() {
    // ** addr: 0x434774, size: 0xb8
    // 0x434774: EnterFrame
    //     0x434774: stp          fp, lr, [SP, #-0x10]!
    //     0x434778: mov          fp, SP
    // 0x43477c: AllocStack(0x18)
    //     0x43477c: sub          SP, SP, #0x18
    //     0x434780: stur         r1, [fp, #-8]
    // 0x434784: CheckStackOverflow
    //     0x434784: ldr          BARRIER, [THR, #0x38]
    //     0x434788: cmp          SP, BARRIER
    //     0x43478c: b.ls         0x434824
    //     0x434790: mov          r1, #1
    // 0x434794: r0 = call 0x61e890
    //     0x434794: bl           0x61e890
    // 0x434798: r1 = r0
    //     0x434798: mov          r1, r0
    //     0x43479c: ldur         r0, [fp, #-8]
    // 0x4347a0: StoreField: r1->field_f = r0
    //     0x4347a0: stur         r0, [r1, #0xf]
    // 0x4347a4: LoadField: r3 = r0->field_13
    //     0x4347a4: ldur         r3, [r0, #0x13]
    //     0x4347a8: add          r3, r3, HEAP, lsl #32
    // 0x4347ac: r2 = r1
    //     0x4347ac: mov          r2, r1
    //     0x4347b0: stur         r3, [fp, #-0x10]
    // 0x4347b4: r1 = pp[0x3a5]
    //     0x4347b4: add          r1, PP, #0x15, lsl #12
    //     0x4347b8: ldr          r1, [r1, #0x390]
    // 0x4347bc: r0 = call 0x61ec54
    //     0x4347bc: bl           0x61ec54
    // 0x4347c0: r1 = pp[0x3ad]
    //     0x4347c0: add          r1, PP, #0x15, lsl #12
    //     0x4347c4: ldr          r1, [r1, #0x398]
    //     0x4347c8: stur         r0, [fp, #-8]
    // 0x4347cc: r0 = call 0x3b81c4
    //     0x4347cc: bl           0x3b81c4
    // 0x4347d0: r2 = r0
    //     0x4347d0: mov          r2, r0
    //     0x4347d4: ldur         r0, [fp, #-8]
    //     0x4347d8: stur         r2, [fp, #-0x18]
    // 0x4347dc: StoreField: r2->field_1b = r0
    //     0x4347dc: stur         r0, [r2, #0x1b]
    // 0x4347e0: r1 = pp[0x3ad]
    //     0x4347e0: add          r1, PP, #0x15, lsl #12
    //     0x4347e4: ldr          r1, [r1, #0x398]
    // 0x4347e8: r0 = call 0x41a408
    //     0x4347e8: bl           0x41a408
    // 0x4347ec: r1 = r0
    //     0x4347ec: mov          r1, r0
    //     0x4347f0: ldur         r0, [fp, #-0x10]
    // 0x4347f4: StoreField: r1->field_b = r0
    //     0x4347f4: stur         r0, [r1, #0xb]
    // 0x4347f8: r0 = pp[0x2fc]
    //     0x4347f8: add          r0, PP, #0xc, lsl #12
    //     0x4347fc: ldr          r0, [r0, #0x2f0]
    // 0x434800: StoreField: r1->field_13 = r0
    //     0x434800: stur         r0, [r1, #0x13]
    //     0x434804: ldur         r0, [fp, #-0x18]
    // 0x434808: StoreField: r0->field_13 = r1
    //     0x434808: stur         r1, [r0, #0x13]
    // 0x43480c: r1 = r0
    //     0x43480c: mov          r1, r0
    // 0x434810: r0 = dart_async__RootZone::op_at()
    //     0x434810: bl           0x60bd34
    //     0x434814: ldur         r0, [fp, #-0x18]
    // 0x434818: SP = fp
    //     0x434818: mov          SP, fp
    // 0x43481c: LeaveFrame
    //     0x43481c: ldp          fp, lr, [SP], #0x10
    // 0x434820: ret
    //     0x434820: ret          
    // 0x434824: r0 = call 0x61fa28
    //     0x434824: bl           0x61fa28
    // 0x434828: b 0x434790
    //     0x434828: b            0x434790
  }

  _anon_closure() {
    // ** addr: 0x43484c, size: 0x48
    // 0x43484c: EnterFrame
    //     0x43484c: stp          fp, lr, [SP, #-0x10]!
    //     0x434850: mov          fp, SP
    // 0x434854: AllocStack(8)
    //     0x434854: sub          SP, SP, #8
    //     0x434858: ldr          r0, [fp, #0x20]
    // 0x43485c: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x43485c: ldur         r2, [r0, #0x17]
    //     0x434860: add          r2, r2, HEAP, lsl #32
    // 0x434864: r1 = pp[0x3b5]
    //     0x434864: add          r1, PP, #0x15, lsl #12
    //     0x434868: ldr          r1, [r1, #0x3a0]
    // 0x43486c: r0 = call 0x61ec54
    //     0x43486c: bl           0x61ec54
    // 0x434870: r1 = pp[0x3ad]
    //     0x434870: add          r1, PP, #0x15, lsl #12
    //     0x434874: ldr          r1, [r1, #0x398]
    //     0x434878: stur         r0, [fp, #-8]
    // 0x43487c: r0 = call 0x41a414
    //     0x43487c: bl           0x41a414
    //     0x434880: ldur         r1, [fp, #-8]
    // 0x434884: StoreField: r0->field_13 = r1
    //     0x434884: stur         r1, [r0, #0x13]
    // 0x434888: SP = fp
    //     0x434888: mov          SP, fp
    // 0x43488c: LeaveFrame
    //     0x43488c: ldp          fp, lr, [SP], #0x10
    // 0x434890: ret
    //     0x434890: ret          
  }

  _anon_closure() {
    // ** addr: 0x434894, size: 0x70
    // 0x434894: EnterFrame
    //     0x434894: stp          fp, lr, [SP, #-0x10]!
    //     0x434898: mov          fp, SP
    //     0x43489c: ldr          r0, [fp, #0x28]
    // 0x4348a0: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4348a0: ldur         r1, [r0, #0x17]
    //     0x4348a4: add          r1, r1, HEAP, lsl #32
    // 0x4348a8: CheckStackOverflow
    //     0x4348a8: ldr          BARRIER, [THR, #0x38]
    //     0x4348ac: cmp          SP, BARRIER
    //     0x4348b0: b.ls         0x4348f0
    //     0x4348b4: ldr          r3, [fp, #0x18]
    // 0x4348b8: LoadField: r2 = r3->field_2b
    //     0x4348b8: ldur         r2, [r3, #0x2b]
    //     0x4348bc: add          r2, r2, HEAP, lsl #32
    // 0x4348c0: LoadField: r0 = r1->field_f
    //     0x4348c0: ldur         r0, [r1, #0xf]
    //     0x4348c4: add          r0, r0, HEAP, lsl #32
    // 0x4348c8: ArrayLoad: r5 = r0[0]  ; List_8
    //     0x4348c8: ldur         r5, [r0, #0x17]
    //     0x4348cc: add          r5, r5, HEAP, lsl #32
    // 0x4348d0: BARRIER = pp[0x40]
    //     0x4348d0: ldr          BARRIER, [PP, #0x40]
    //     0x4348d4: cmp          r5, r16
    // 0x4348d8: b.eq 0x4348f8
    //     0x4348d8: b.eq         0x4348f8
    // 0x4348dc: r1 = r0
    //     0x4348dc: mov          r1, r0
    // 0x4348e0: r0 = soul_flutter_international$biz$game$page_game_fruit_bet_record_dialog__GameFruitBetRecordDialogState::_betListWidget()
    //     0x4348e0: bl           0x434904
    // 0x4348e4: SP = fp
    //     0x4348e4: mov          SP, fp
    // 0x4348e8: LeaveFrame
    //     0x4348e8: ldp          fp, lr, [SP], #0x10
    // 0x4348ec: ret
    //     0x4348ec: ret          
    // 0x4348f0: r0 = call 0x61fa28
    //     0x4348f0: bl           0x61fa28
    // 0x4348f4: b 0x4348b4
    //     0x4348f4: b            0x4348b4
    // 0x4348f8: r9 = pp[0x3bd]
    //     0x4348f8: add          r9, PP, #0x15, lsl #12
    //     0x4348fc: ldr          r9, [r9, #0x3a8]
    // 0x434900: r0 = call 0x620258
    //     0x434900: bl           0x620258
  }

  _betListWidget() {
    // ** addr: 0x434904, size: 0x698
    // 0x434904: EnterFrame
    //     0x434904: stp          fp, lr, [SP, #-0x10]!
    //     0x434908: mov          fp, SP
    // 0x43490c: AllocStack(0x80)
    //     0x43490c: sub          SP, SP, #0x80
    //     0x434910: stur         r1, [fp, #-8]
    //     0x434914: stur         r2, [fp, #-0x10]
    //     0x434918: stur         r3, [fp, #-0x18]
    //     0x43491c: stur         r5, [fp, #-0x20]
    // 0x434920: CheckStackOverflow
    //     0x434920: ldr          BARRIER, [THR, #0x38]
    //     0x434924: cmp          SP, BARRIER
    //     0x434928: b.ls         0x434f90
    //     0x43492c: mov          r1, #6
    // 0x434930: r0 = call 0x61e890
    //     0x434930: bl           0x61e890
    //     0x434934: ldur         r1, [fp, #-8]
    //     0x434938: stur         r0, [fp, #-0x28]
    // 0x43493c: StoreField: r0->field_f = r1
    //     0x43493c: stur         r1, [r0, #0xf]
    //     0x434940: ldur         r2, [fp, #-0x10]
    // 0x434944: StoreField: r0->field_13 = r2
    //     0x434944: stur         r2, [r0, #0x13]
    //     0x434948: ldur         r3, [fp, #-0x18]
    // 0x43494c: ArrayStore: r0[0] = r3  ; List_8
    //     0x43494c: stur         r3, [r0, #0x17]
    //     0x434950: ldur         r3, [fp, #-0x20]
    // 0x434954: StoreField: r0->field_1b = r3
    //     0x434954: stur         r3, [r0, #0x1b]
    // 0x434958: LoadField: r3 = r2->field_b
    //     0x434958: ldur         r3, [r2, #0xb]
    //     0x43495c: stur         r3, [fp, #-0x18]
    // 0x434960: StoreField: r0->field_1f = r3
    //     0x434960: stur         r3, [r0, #0x1f]
    // 0x434964: r0 = call 0x31abec
    //     0x434964: bl           0x31abec
    // 0x434968: r1 = r0
    //     0x434968: mov          r1, r0
    //     0x43496c: add          r0, NULL, #0x20
    // 0x434970: StoreField: r1->field_7 = r0
    //     0x434970: stur         r0, [r1, #7]
    // 0x434974: r2 = pp[0x6050]
    //     0x434974: ldr          r2, [PP, #0x6050]
    // 0x434978: StoreField: r1->field_b = r2
    //     0x434978: stur         r2, [r1, #0xb]
    // 0x43497c: r2 = pp[0xb8f]
    //     0x43497c: add          r2, PP, #0xf, lsl #12
    //     0x434980: ldr          r2, [r2, #0xb80]
    // 0x434984: StoreField: r1->field_1f = r2
    //     0x434984: stur         r2, [r1, #0x1f]
    // 0x434988: r3 = pp[0xe4e]
    //     0x434988: add          r3, PP, #0xe, lsl #12
    //     0x43498c: ldr          r3, [r3, #0xe40]
    // 0x434990: StoreField: r1->field_23 = r3
    //     0x434990: stur         r3, [r1, #0x23]
    //     0x434994: ldur         r3, [fp, #-0x28]
    // 0x434998: StoreField: r3->field_23 = r1
    //     0x434998: stur         r1, [r3, #0x23]
    //     0x43499c: ldur         r1, [fp, #-8]
    // 0x4349a0: LoadField: r4 = r1->field_f
    //     0x4349a0: ldur         r4, [r1, #0xf]
    //     0x4349a4: add          r4, r4, HEAP, lsl #32
    //     0x4349a8: stur         r4, [fp, #-0x10]
    //     0x4349ac: cmp          r4, r22
    // 0x4349b0: b.eq 0x434f98
    //     0x4349b0: b.eq         0x434f98
    // 0x4349b4: r0 = call 0x2e3578
    //     0x4349b4: bl           0x2e3578
    //     0x4349b8: fmov         d0, #18.00000000
    //     0x4349bc: stur         r0, [fp, #-0x20]
    // 0x4349c0: StoreField: r0->field_7 = d0
    //     0x4349c0: stur         d0, [r0, #7]
    //     0x4349c4: fmov         d1, #16.00000000
    // 0x4349c8: StoreField: r0->field_f = d1
    //     0x4349c8: stur         d1, [r0, #0xf]
    // 0x4349cc: ArrayStore: r0[0] = d0  ; List_8
    //     0x4349cc: stur         d0, [r0, #0x17]
    // 0x4349d0: StoreField: r0->field_1f = d1
    //     0x4349d0: stur         d1, [r0, #0x1f]
    //     0x4349d4: ldur         r1, [fp, #-0x18]
    //     0x4349d8: sbfx         r3, r1, #1, #0x1f
    //     0x4349dc: stur         r3, [fp, #-0x30]
    //     0x4349e0: cmp          r3, #0
    // 0x4349e4: b.le 0x434d48
    //     0x4349e4: b.le         0x434d48
    //     0x4349e8: ldur         r2, [fp, #-0x28]
    // 0x4349ec: r1 = pp[0x884]
    //     0x4349ec: add          r1, PP, #0xc, lsl #12
    //     0x4349f0: ldr          r1, [r1, #0x878]
    // 0x4349f4: r4 = pp[0x4c0]
    //     0x4349f4: ldr          r4, [PP, #0x4c0]
    // 0x4349f8: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4349f8: bl           0x3a1dcc
    //     0x4349fc: ldur         r1, [fp, #-8]
    // 0x434a00: r2 = r0
    //     0x434a00: mov          r2, r0
    // 0x434a04: r0 = soul_flutter_international$biz$game$page_game_fruit_bet_record_dialog__GameFruitBetRecordDialogState::_titleLabelWidget()
    //     0x434a04: bl           0x4358f8
    //     0x434a08: stur         r0, [fp, #-0x18]
    // 0x434a0c: r0 = call 0x3949ec
    //     0x434a0c: bl           0x3949ec
    // 0x434a10: r1 = r0
    //     0x434a10: mov          r1, r0
    // 0x434a14: r0 = pp[0xb8f]
    //     0x434a14: add          r0, PP, #0xf, lsl #12
    //     0x434a18: ldr          r0, [r0, #0xb80]
    //     0x434a1c: stur         r1, [fp, #-0x38]
    // 0x434a20: StoreField: r1->field_13 = r0
    //     0x434a20: stur         r0, [r1, #0x13]
    // 0x434a24: r0 = call 0x352b04
    //     0x434a24: bl           0x352b04
    //     0x434a28: fmov         d0, #16.00000000
    //     0x434a2c: stur         r0, [fp, #-0x40]
    // 0x434a30: StoreField: r0->field_7 = d0
    //     0x434a30: stur         d0, [r0, #7]
    // 0x434a34: StoreField: r0->field_f = d0
    //     0x434a34: stur         d0, [r0, #0xf]
    // 0x434a38: r0 = call 0x352b04
    //     0x434a38: bl           0x352b04
    //     0x434a3c: fmov         d0, #16.00000000
    //     0x434a40: stur         r0, [fp, #-0x48]
    // 0x434a44: StoreField: r0->field_7 = d0
    //     0x434a44: stur         d0, [r0, #7]
    // 0x434a48: StoreField: r0->field_f = d0
    //     0x434a48: stur         d0, [r0, #0xf]
    // 0x434a4c: r0 = call 0x392f28
    //     0x434a4c: bl           0x392f28
    // 0x434a50: r2 = r0
    //     0x434a50: mov          r2, r0
    //     0x434a54: ldur         r0, [fp, #-0x40]
    //     0x434a58: stur         r2, [fp, #-0x50]
    // 0x434a5c: StoreField: r2->field_7 = r0
    //     0x434a5c: stur         r0, [r2, #7]
    //     0x434a60: ldur         r0, [fp, #-0x48]
    // 0x434a64: StoreField: r2->field_b = r0
    //     0x434a64: stur         r0, [r2, #0xb]
    // 0x434a68: r0 = pp[0x51a]
    //     0x434a68: add          r0, PP, #0xa, lsl #12
    //     0x434a6c: ldr          r0, [r0, #0x510]
    // 0x434a70: StoreField: r2->field_f = r0
    //     0x434a70: stur         r0, [r2, #0xf]
    // 0x434a74: StoreField: r2->field_13 = r0
    //     0x434a74: stur         r0, [r2, #0x13]
    //     0x434a78: ldur         r1, [fp, #-8]
    // 0x434a7c: r0 = soul_flutter_international$biz$game$page_game_fruit_bet_record_dialog__GameFruitBetRecordDialogState::_titleListWidget()
    //     0x434a7c: bl           0x4354e4
    //     0x434a80: stur         r0, [fp, #-0x40]
    // 0x434a84: r0 = call 0x3b378c
    //     0x434a84: bl           0x3b378c
    // 0x434a88: r1 = r0
    //     0x434a88: mov          r1, r0
    //     0x434a8c: ldur         r0, [fp, #-0x50]
    //     0x434a90: stur         r1, [fp, #-0x48]
    // 0x434a94: StoreField: r1->field_f = r0
    //     0x434a94: stur         r0, [r1, #0xf]
    // 0x434a98: r0 = pp[0xf4e]
    //     0x434a98: add          r0, PP, #0xe, lsl #12
    //     0x434a9c: ldr          r0, [r0, #0xf40]
    // 0x434aa0: ArrayStore: r1[0] = r0  ; List_8
    //     0x434aa0: stur         r0, [r1, #0x17]
    //     0x434aa4: ldur         r2, [fp, #-0x40]
    // 0x434aa8: StoreField: r1->field_b = r2
    //     0x434aa8: stur         r2, [r1, #0xb]
    // 0x434aac: r0 = call 0x352b04
    //     0x434aac: bl           0x352b04
    //     0x434ab0: fmov         d0, #16.00000000
    //     0x434ab4: stur         r0, [fp, #-0x40]
    // 0x434ab8: StoreField: r0->field_7 = d0
    //     0x434ab8: stur         d0, [r0, #7]
    // 0x434abc: StoreField: r0->field_f = d0
    //     0x434abc: stur         d0, [r0, #0xf]
    // 0x434ac0: r0 = call 0x352b04
    //     0x434ac0: bl           0x352b04
    //     0x434ac4: fmov         d0, #16.00000000
    //     0x434ac8: stur         r0, [fp, #-0x50]
    // 0x434acc: StoreField: r0->field_7 = d0
    //     0x434acc: stur         d0, [r0, #7]
    // 0x434ad0: StoreField: r0->field_f = d0
    //     0x434ad0: stur         d0, [r0, #0xf]
    // 0x434ad4: r0 = call 0x392f28
    //     0x434ad4: bl           0x392f28
    // 0x434ad8: r3 = r0
    //     0x434ad8: mov          r3, r0
    // 0x434adc: r0 = pp[0x51a]
    //     0x434adc: add          r0, PP, #0xa, lsl #12
    //     0x434ae0: ldr          r0, [r0, #0x510]
    //     0x434ae4: stur         r3, [fp, #-0x58]
    // 0x434ae8: StoreField: r3->field_7 = r0
    //     0x434ae8: stur         r0, [r3, #7]
    // 0x434aec: StoreField: r3->field_b = r0
    //     0x434aec: stur         r0, [r3, #0xb]
    //     0x434af0: ldur         r0, [fp, #-0x40]
    // 0x434af4: StoreField: r3->field_f = r0
    //     0x434af4: stur         r0, [r3, #0xf]
    //     0x434af8: ldur         r0, [fp, #-0x50]
    // 0x434afc: StoreField: r3->field_13 = r0
    //     0x434afc: stur         r0, [r3, #0x13]
    //     0x434b00: ldur         r0, [fp, #-0x28]
    // 0x434b04: LoadField: r4 = r0->field_1b
    //     0x434b04: ldur         r4, [r0, #0x1b]
    //     0x434b08: add          r4, r4, HEAP, lsl #32
    //     0x434b0c: stur         r4, [fp, #-0x40]
    // 0x434b10: r1 = pp[0x3c5]
    //     0x434b10: add          r1, PP, #0x15, lsl #12
    //     0x434b14: ldr          r1, [r1, #0x3b0]
    // 0x434b18: r2 = NULL
    //     0x434b18: mov          r2, NULL
    // 0x434b1c: r0 = call 0x61ec54
    //     0x434b1c: bl           0x61ec54
    //     0x434b20: stur         r0, [fp, #-0x50]
    // 0x434b24: r0 = call 0x3ab5b8
    //     0x434b24: bl           0x3ab5b8
    // 0x434b28: r1 = r0
    //     0x434b28: mov          r1, r0
    //     0x434b2c: ldur         r0, [fp, #-0x50]
    //     0x434b30: stur         r1, [fp, #-0x60]
    // 0x434b34: StoreField: r1->field_1b = r0
    //     0x434b34: stur         r0, [r1, #0x1b]
    // 0x434b38: r0 = pp[0x8a7]
    //     0x434b38: add          r0, PP, #0xf, lsl #12
    //     0x434b3c: ldr          r0, [r0, #0x898]
    // 0x434b40: StoreField: r1->field_b = r0
    //     0x434b40: stur         r0, [r1, #0xb]
    // 0x434b44: d0 = pp[0x8af]
    //     0x434b44: add          r17, PP, #0xf, lsl #12
    //     0x434b48: ldr          d0, [r17, #0x8a0]
    // 0x434b4c: StoreField: r1->field_f = d0
    //     0x434b4c: stur         d0, [r1, #0xf]
    // 0x434b50: r0 = call 0x41b0bc
    //     0x434b50: bl           0x41b0bc
    //     0x434b54: ldur         r2, [fp, #-0x28]
    // 0x434b58: r1 = pp[0x3cd]
    //     0x434b58: add          r1, PP, #0x15, lsl #12
    //     0x434b5c: ldr          r1, [r1, #0x3b8]
    //     0x434b60: stur         r0, [fp, #-0x50]
    // 0x434b64: r0 = call 0x61ec54
    //     0x434b64: bl           0x61ec54
    //     0x434b68: stur         r0, [fp, #-0x68]
    // 0x434b6c: r0 = call 0x3ab5ac
    //     0x434b6c: bl           0x3ab5ac
    //     0x434b70: stur         r0, [fp, #-0x70]
    //     0x434b74: ldur         BARRIER, [fp, #-0x50]
    //     0x434b78: str          BARRIER, [SP]
    // 0x434b7c: r1 = r0
    //     0x434b7c: mov          r1, r0
    //     0x434b80: ldur         r2, [fp, #-0x68]
    //     0x434b84: ldur         r3, [fp, #-0x30]
    // 0x434b88: r4 = pp[0xf24]
    //     0x434b88: add          r4, PP, #0x14, lsl #12
    //     0x434b8c: ldr          r4, [r4, #0xf10]
    // 0x434b90: r0 = flutter$src$widgets$scroll_view_ListView::ctor_builder()
    //     0x434b90: bl           0x3ab2bc
    // 0x434b94: r0 = call 0x3ab290
    //     0x434b94: bl           0x3ab290
    // 0x434b98: r3 = r0
    //     0x434b98: mov          r3, r0
    //     0x434b9c: ldur         r0, [fp, #-0x40]
    //     0x434ba0: stur         r3, [fp, #-0x50]
    // 0x434ba4: StoreField: r3->field_2b = r0
    //     0x434ba4: stur         r0, [r3, #0x2b]
    //     0x434ba8: ldur         r0, [fp, #-0x70]
    // 0x434bac: StoreField: r3->field_b = r0
    //     0x434bac: stur         r0, [r3, #0xb]
    //     0x434bb0: ldur         r0, [fp, #-0x60]
    // 0x434bb4: StoreField: r3->field_f = r0
    //     0x434bb4: stur         r0, [r3, #0xf]
    //     0x434bb8: add          r0, NULL, #0x30
    // 0x434bbc: StoreField: r3->field_1b = r0
    //     0x434bbc: stur         r0, [r3, #0x1b]
    //     0x434bc0: add          r4, NULL, #0x20
    // 0x434bc4: StoreField: r3->field_13 = r4
    //     0x434bc4: stur         r4, [r3, #0x13]
    // 0x434bc8: ArrayStore: r3[0] = r0  ; List_8
    //     0x434bc8: stur         r0, [r3, #0x17]
    //     0x434bcc: ldur         r2, [fp, #-0x28]
    // 0x434bd0: r1 = pp[0x3d5]
    //     0x434bd0: add          r1, PP, #0x15, lsl #12
    //     0x434bd4: ldr          r1, [r1, #0x3c0]
    // 0x434bd8: r0 = call 0x61ec54
    //     0x434bd8: bl           0x61ec54
    // 0x434bdc: r1 = r0
    //     0x434bdc: mov          r1, r0
    //     0x434be0: ldur         r0, [fp, #-0x50]
    // 0x434be4: StoreField: r0->field_23 = r1
    //     0x434be4: stur         r1, [r0, #0x23]
    // 0x434be8: r0 = call 0x3b378c
    //     0x434be8: bl           0x3b378c
    // 0x434bec: r2 = r0
    //     0x434bec: mov          r2, r0
    //     0x434bf0: ldur         r0, [fp, #-0x58]
    //     0x434bf4: stur         r2, [fp, #-0x40]
    // 0x434bf8: StoreField: r2->field_f = r0
    //     0x434bf8: stur         r0, [r2, #0xf]
    // 0x434bfc: r0 = pp[0xf4e]
    //     0x434bfc: add          r0, PP, #0xe, lsl #12
    //     0x434c00: ldr          r0, [r0, #0xf40]
    // 0x434c04: ArrayStore: r2[0] = r0  ; List_8
    //     0x434c04: stur         r0, [r2, #0x17]
    //     0x434c08: ldur         r0, [fp, #-0x50]
    // 0x434c0c: StoreField: r2->field_b = r0
    //     0x434c0c: stur         r0, [r2, #0xb]
    // 0x434c10: r1 = pp[0xade]
    //     0x434c10: add          r1, PP, #0xe, lsl #12
    //     0x434c14: ldr          r1, [r1, #0xad0]
    // 0x434c18: r0 = call 0x39fb14
    //     0x434c18: bl           0x39fb14
    // 0x434c1c: r2 = r0
    //     0x434c1c: mov          r2, r0
    //     0x434c20: mov          r0, #1
    //     0x434c24: stur         r2, [fp, #-0x50]
    // 0x434c28: StoreField: r2->field_13 = r0
    //     0x434c28: stur         r0, [r2, #0x13]
    // 0x434c2c: r0 = pp[0xae6]
    //     0x434c2c: add          r0, PP, #0xe, lsl #12
    //     0x434c30: ldr          r0, [r0, #0xad8]
    // 0x434c34: StoreField: r2->field_1b = r0
    //     0x434c34: stur         r0, [r2, #0x1b]
    //     0x434c38: ldur         r0, [fp, #-0x40]
    // 0x434c3c: StoreField: r2->field_b = r0
    //     0x434c3c: stur         r0, [r2, #0xb]
    //     0x434c40: ldur         r0, [fp, #-0x30]
    //     0x434c44: cmp          r0, #6
    // 0x434c48: b.gt 0x434c5c
    //     0x434c48: b.gt         0x434c5c
    //     0x434c4c: ldur         r1, [fp, #-8]
    // 0x434c50: r0 = soul_flutter_international$biz$game$page_game_fruit_bet_record_dialog__GameFruitBetRecordDialogState::_bottomLabelWiget()
    //     0x434c50: bl           0x435288
    // 0x434c54: r7 = r0
    //     0x434c54: mov          r7, r0
    // 0x434c58: b 0x434c74
    //     0x434c58: b            0x434c74
    // 0x434c5c: r0 = call 0x391a04
    //     0x434c5c: bl           0x391a04
    // 0x434c60: r1 = r0
    //     0x434c60: mov          r1, r0
    //     0x434c64: stur         r0, [fp, #-0x40]
    // 0x434c68: r4 = pp[0x4c0]
    //     0x434c68: ldr          r4, [PP, #0x4c0]
    // 0x434c6c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x434c6c: bl           0x391490
    //     0x434c70: ldur         r7, [fp, #-0x40]
    //     0x434c74: ldur         r5, [fp, #-0x18]
    //     0x434c78: ldur         r4, [fp, #-0x38]
    //     0x434c7c: ldur         r3, [fp, #-0x48]
    //     0x434c80: ldur         r0, [fp, #-0x50]
    //     0x434c84: mov          r6, #0xa
    // 0x434c88: r2 = r6
    //     0x434c88: mov          r2, r6
    //     0x434c8c: stur         r7, [fp, #-0x40]
    // 0x434c90: r1 = NULL
    //     0x434c90: mov          r1, NULL
    // 0x434c94: r0 = call 0x61f920
    //     0x434c94: bl           0x61f920
    // 0x434c98: r2 = r0
    //     0x434c98: mov          r2, r0
    //     0x434c9c: ldur         r0, [fp, #-0x18]
    //     0x434ca0: stur         r2, [fp, #-0x58]
    // 0x434ca4: StoreField: r2->field_f = r0
    //     0x434ca4: stur         r0, [r2, #0xf]
    //     0x434ca8: ldur         r0, [fp, #-0x38]
    // 0x434cac: StoreField: r2->field_13 = r0
    //     0x434cac: stur         r0, [r2, #0x13]
    //     0x434cb0: ldur         r0, [fp, #-0x48]
    // 0x434cb4: ArrayStore: r2[0] = r0  ; List_8
    //     0x434cb4: stur         r0, [r2, #0x17]
    //     0x434cb8: ldur         r0, [fp, #-0x50]
    // 0x434cbc: StoreField: r2->field_1b = r0
    //     0x434cbc: stur         r0, [r2, #0x1b]
    //     0x434cc0: ldur         r0, [fp, #-0x40]
    // 0x434cc4: StoreField: r2->field_1f = r0
    //     0x434cc4: stur         r0, [r2, #0x1f]
    // 0x434cc8: r1 = pp[0x5c58]
    //     0x434cc8: ldr          r1, [PP, #0x5c58]
    // 0x434ccc: r0 = call 0x61e854
    //     0x434ccc: bl           0x61e854
    // 0x434cd0: r1 = r0
    //     0x434cd0: mov          r1, r0
    //     0x434cd4: ldur         r0, [fp, #-0x58]
    //     0x434cd8: stur         r1, [fp, #-0x18]
    // 0x434cdc: StoreField: r1->field_f = r0
    //     0x434cdc: stur         r0, [r1, #0xf]
    //     0x434ce0: mov          r0, #0xa
    // 0x434ce4: StoreField: r1->field_b = r0
    //     0x434ce4: stur         r0, [r1, #0xb]
    // 0x434ce8: r0 = call 0x39310c
    //     0x434ce8: bl           0x39310c
    // 0x434cec: r1 = r0
    //     0x434cec: mov          r1, r0
    // 0x434cf0: r0 = pp[0x862]
    //     0x434cf0: add          r0, PP, #0xa, lsl #12
    //     0x434cf4: ldr          r0, [r0, #0x858]
    // 0x434cf8: StoreField: r1->field_f = r0
    //     0x434cf8: stur         r0, [r1, #0xf]
    // 0x434cfc: r2 = pp[0xaee]
    //     0x434cfc: add          r2, PP, #0xe, lsl #12
    //     0x434d00: ldr          r2, [r2, #0xae0]
    // 0x434d04: StoreField: r1->field_13 = r2
    //     0x434d04: stur         r2, [r1, #0x13]
    // 0x434d08: r3 = pp[0xaf6]
    //     0x434d08: add          r3, PP, #0xe, lsl #12
    //     0x434d0c: ldr          r3, [r3, #0xae8]
    // 0x434d10: ArrayStore: r1[0] = r3  ; List_8
    //     0x434d10: stur         r3, [r1, #0x17]
    // 0x434d14: r3 = pp[0xb6e]
    //     0x434d14: add          r3, PP, #0xe, lsl #12
    //     0x434d18: ldr          r3, [r3, #0xb60]
    // 0x434d1c: StoreField: r1->field_1b = r3
    //     0x434d1c: stur         r3, [r1, #0x1b]
    // 0x434d20: r4 = pp[0xb06]
    //     0x434d20: add          r4, PP, #0xe, lsl #12
    //     0x434d24: ldr          r4, [r4, #0xaf8]
    // 0x434d28: StoreField: r1->field_23 = r4
    //     0x434d28: stur         r4, [r1, #0x23]
    // 0x434d2c: r5 = pp[0xb2]
    //     0x434d2c: add          r5, PP, #0xa, lsl #12
    //     0x434d30: ldr          r5, [r5, #0xa8]
    // 0x434d34: StoreField: r1->field_2b = r5
    //     0x434d34: stur         r5, [r1, #0x2b]
    // 0x434d38: StoreField: r1->field_2f = xzr
    //     0x434d38: stur         xzr, [r1, #0x2f]
    //     0x434d3c: ldur         r6, [fp, #-0x18]
    // 0x434d40: StoreField: r1->field_b = r6
    //     0x434d40: stur         r6, [r1, #0xb]
    // 0x434d44: b 0x434d7c
    //     0x434d44: b            0x434d7c
    // 0x434d48: r3 = pp[0xb6e]
    //     0x434d48: add          r3, PP, #0xe, lsl #12
    //     0x434d4c: ldr          r3, [r3, #0xb60]
    // 0x434d50: r2 = pp[0xaee]
    //     0x434d50: add          r2, PP, #0xe, lsl #12
    //     0x434d54: ldr          r2, [r2, #0xae0]
    // 0x434d58: r0 = pp[0x862]
    //     0x434d58: add          r0, PP, #0xa, lsl #12
    //     0x434d5c: ldr          r0, [r0, #0x858]
    // 0x434d60: r5 = pp[0xb2]
    //     0x434d60: add          r5, PP, #0xa, lsl #12
    //     0x434d64: ldr          r5, [r5, #0xa8]
    // 0x434d68: r4 = pp[0xb06]
    //     0x434d68: add          r4, PP, #0xe, lsl #12
    //     0x434d6c: ldr          r4, [r4, #0xaf8]
    //     0x434d70: ldur         r1, [fp, #-8]
    // 0x434d74: r0 = soul_flutter_international$biz$game$page_game_fruit_bet_record_dialog__GameFruitBetRecordDialogState::_NodataDialogLWidget()
    //     0x434d74: bl           0x434f9c
    // 0x434d78: r1 = r0
    //     0x434d78: mov          r1, r0
    //     0x434d7c: ldur         r0, [fp, #-0x20]
    //     0x434d80: stur         r1, [fp, #-8]
    // 0x434d84: r0 = call 0x3a1da8
    //     0x434d84: bl           0x3a1da8
    // 0x434d88: d0 = pp[0x562]
    //     0x434d88: add          r17, PP, #0x12, lsl #12
    //     0x434d8c: ldr          d0, [r17, #0x550]
    //     0x434d90: stur         r0, [fp, #-0x18]
    // 0x434d94: StoreField: r0->field_b = d0
    //     0x434d94: stur         d0, [r0, #0xb]
    // 0x434d98: d0 = pp[0x56a]
    //     0x434d98: add          r17, PP, #0x12, lsl #12
    //     0x434d9c: ldr          d0, [r17, #0x558]
    // 0x434da0: StoreField: r0->field_13 = d0
    //     0x434da0: stur         d0, [r0, #0x13]
    //     0x434da4: ldur         r1, [fp, #-8]
    // 0x434da8: StoreField: r0->field_1b = r1
    //     0x434da8: stur         r1, [r0, #0x1b]
    //     0x434dac: ldur         r1, [fp, #-0x20]
    // 0x434db0: StoreField: r0->field_1f = r1
    //     0x434db0: stur         r1, [r0, #0x1f]
    // 0x434db4: r0 = call 0x3949ec
    //     0x434db4: bl           0x3949ec
    // 0x434db8: r1 = r0
    //     0x434db8: mov          r1, r0
    // 0x434dbc: r0 = pp[0x572]
    //     0x434dbc: add          r0, PP, #0x12, lsl #12
    //     0x434dc0: ldr          r0, [r0, #0x560]
    //     0x434dc4: stur         r1, [fp, #-8]
    // 0x434dc8: StoreField: r1->field_13 = r0
    //     0x434dc8: stur         r0, [r1, #0x13]
    // 0x434dcc: r0 = call 0x3a142c
    //     0x434dcc: bl           0x3a142c
    // 0x434dd0: r1 = r0
    //     0x434dd0: mov          r1, r0
    // 0x434dd4: r0 = pp[0x57a]
    //     0x434dd4: add          r0, PP, #0x12, lsl #12
    //     0x434dd8: ldr          r0, [r0, #0x568]
    //     0x434ddc: stur         r1, [fp, #-0x20]
    // 0x434de0: StoreField: r1->field_b = r0
    //     0x434de0: stur         r0, [r1, #0xb]
    // 0x434de4: r0 = pp[0x17f]
    //     0x434de4: add          r0, PP, #0xf, lsl #12
    //     0x434de8: ldr          r0, [r0, #0x170]
    // 0x434dec: StoreField: r1->field_f = r0
    //     0x434dec: stur         r0, [r1, #0xf]
    // 0x434df0: r0 = pp[0x572]
    //     0x434df0: add          r0, PP, #0x12, lsl #12
    //     0x434df4: ldr          r0, [r0, #0x560]
    // 0x434df8: StoreField: r1->field_13 = r0
    //     0x434df8: stur         r0, [r1, #0x13]
    // 0x434dfc: ArrayStore: r1[0] = r0  ; List_8
    //     0x434dfc: stur         r0, [r1, #0x17]
    // 0x434e00: r0 = call 0x391a04
    //     0x434e00: bl           0x391a04
    //     0x434e04: stur         r0, [fp, #-0x38]
    //     0x434e08: ldur         BARRIER, [fp, #-0x20]
    //     0x434e0c: str          BARRIER, [SP]
    // 0x434e10: r1 = r0
    //     0x434e10: mov          r1, r0
    // 0x434e14: r4 = pp[0x204]
    //     0x434e14: add          r4, PP, #0xc, lsl #12
    //     0x434e18: ldr          r4, [r4, #0x1f8]
    // 0x434e1c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x434e1c: bl           0x391490
    // 0x434e20: r0 = call 0x3a1d94
    //     0x434e20: bl           0x3a1d94
    //     0x434e24: ldur         r2, [fp, #-0x28]
    // 0x434e28: r1 = pp[0x3dd]
    //     0x434e28: add          r1, PP, #0x15, lsl #12
    //     0x434e2c: ldr          r1, [r1, #0x3c8]
    //     0x434e30: stur         r0, [fp, #-0x20]
    // 0x434e34: r0 = call 0x61ec54
    //     0x434e34: bl           0x61ec54
    //     0x434e38: ldur         BARRIER, [fp, #-0x38]
    //     0x434e3c: stp          r0, BARRIER, [SP]
    //     0x434e40: ldur         r1, [fp, #-0x20]
    // 0x434e44: r4 = pp[0xece]
    //     0x434e44: add          r4, PP, #0xe, lsl #12
    //     0x434e48: ldr          r4, [r4, #0xec0]
    // 0x434e4c: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x434e4c: bl           0x3a18c4
    // 0x434e50: r1 = NULL
    //     0x434e50: mov          r1, NULL
    //     0x434e54: mov          r2, #6
    // 0x434e58: r0 = call 0x61f920
    //     0x434e58: bl           0x61f920
    // 0x434e5c: r2 = r0
    //     0x434e5c: mov          r2, r0
    //     0x434e60: ldur         r0, [fp, #-0x18]
    //     0x434e64: stur         r2, [fp, #-0x28]
    // 0x434e68: StoreField: r2->field_f = r0
    //     0x434e68: stur         r0, [r2, #0xf]
    //     0x434e6c: ldur         r0, [fp, #-8]
    // 0x434e70: StoreField: r2->field_13 = r0
    //     0x434e70: stur         r0, [r2, #0x13]
    //     0x434e74: ldur         r0, [fp, #-0x20]
    // 0x434e78: ArrayStore: r2[0] = r0  ; List_8
    //     0x434e78: stur         r0, [r2, #0x17]
    // 0x434e7c: r1 = pp[0x5c58]
    //     0x434e7c: ldr          r1, [PP, #0x5c58]
    // 0x434e80: r0 = call 0x61e854
    //     0x434e80: bl           0x61e854
    // 0x434e84: r1 = r0
    //     0x434e84: mov          r1, r0
    //     0x434e88: ldur         r0, [fp, #-0x28]
    //     0x434e8c: stur         r1, [fp, #-8]
    // 0x434e90: StoreField: r1->field_f = r0
    //     0x434e90: stur         r0, [r1, #0xf]
    //     0x434e94: mov          r0, #6
    // 0x434e98: StoreField: r1->field_b = r0
    //     0x434e98: stur         r0, [r1, #0xb]
    // 0x434e9c: r0 = call 0x39310c
    //     0x434e9c: bl           0x39310c
    // 0x434ea0: r1 = r0
    //     0x434ea0: mov          r1, r0
    // 0x434ea4: r0 = pp[0x862]
    //     0x434ea4: add          r0, PP, #0xa, lsl #12
    //     0x434ea8: ldr          r0, [r0, #0x858]
    //     0x434eac: stur         r1, [fp, #-0x18]
    // 0x434eb0: StoreField: r1->field_f = r0
    //     0x434eb0: stur         r0, [r1, #0xf]
    // 0x434eb4: r0 = pp[0xaee]
    //     0x434eb4: add          r0, PP, #0xe, lsl #12
    //     0x434eb8: ldr          r0, [r0, #0xae0]
    // 0x434ebc: StoreField: r1->field_13 = r0
    //     0x434ebc: stur         r0, [r1, #0x13]
    // 0x434ec0: r0 = pp[0xb16]
    //     0x434ec0: add          r0, PP, #0xe, lsl #12
    //     0x434ec4: ldr          r0, [r0, #0xb08]
    // 0x434ec8: ArrayStore: r1[0] = r0  ; List_8
    //     0x434ec8: stur         r0, [r1, #0x17]
    // 0x434ecc: r0 = pp[0xb6e]
    //     0x434ecc: add          r0, PP, #0xe, lsl #12
    //     0x434ed0: ldr          r0, [r0, #0xb60]
    // 0x434ed4: StoreField: r1->field_1b = r0
    //     0x434ed4: stur         r0, [r1, #0x1b]
    // 0x434ed8: r0 = pp[0xb06]
    //     0x434ed8: add          r0, PP, #0xe, lsl #12
    //     0x434edc: ldr          r0, [r0, #0xaf8]
    // 0x434ee0: StoreField: r1->field_23 = r0
    //     0x434ee0: stur         r0, [r1, #0x23]
    // 0x434ee4: r0 = pp[0xb2]
    //     0x434ee4: add          r0, PP, #0xa, lsl #12
    //     0x434ee8: ldr          r0, [r0, #0xa8]
    // 0x434eec: StoreField: r1->field_2b = r0
    //     0x434eec: stur         r0, [r1, #0x2b]
    // 0x434ef0: StoreField: r1->field_2f = xzr
    //     0x434ef0: stur         xzr, [r1, #0x2f]
    //     0x434ef4: ldur         r2, [fp, #-8]
    // 0x434ef8: StoreField: r1->field_b = r2
    //     0x434ef8: stur         r2, [r1, #0xb]
    // 0x434efc: r0 = call 0x3949f8
    //     0x434efc: bl           0x3949f8
    // 0x434f00: r1 = r0
    //     0x434f00: mov          r1, r0
    // 0x434f04: r0 = pp[0x58a]
    //     0x434f04: add          r0, PP, #0x12, lsl #12
    //     0x434f08: ldr          r0, [r0, #0x578]
    //     0x434f0c: stur         r1, [fp, #-8]
    // 0x434f10: StoreField: r1->field_f = r0
    //     0x434f10: stur         r0, [r1, #0xf]
    // 0x434f14: StoreField: r1->field_13 = xzr
    //     0x434f14: stur         xzr, [r1, #0x13]
    //     0x434f18: add          r0, NULL, #0x20
    // 0x434f1c: StoreField: r1->field_2f = r0
    //     0x434f1c: stur         r0, [r1, #0x2f]
    // 0x434f20: r0 = pp[0xb2]
    //     0x434f20: add          r0, PP, #0xa, lsl #12
    //     0x434f24: ldr          r0, [r0, #0xa8]
    // 0x434f28: StoreField: r1->field_33 = r0
    //     0x434f28: stur         r0, [r1, #0x33]
    // 0x434f2c: r0 = pp[0x264]
    //     0x434f2c: add          r0, PP, #0xc, lsl #12
    //     0x434f30: ldr          r0, [r0, #0x258]
    // 0x434f34: StoreField: r1->field_37 = r0
    //     0x434f34: stur         r0, [r1, #0x37]
    //     0x434f38: ldur         r0, [fp, #-0x18]
    // 0x434f3c: StoreField: r1->field_b = r0
    //     0x434f3c: stur         r0, [r1, #0xb]
    // 0x434f40: r0 = call 0x396940
    //     0x434f40: bl           0x396940
    // 0x434f44: r2 = r0
    //     0x434f44: mov          r2, r0
    // 0x434f48: r0 = pp[0xaae]
    //     0x434f48: add          r0, PP, #0xe, lsl #12
    //     0x434f4c: ldr          r0, [r0, #0xaa0]
    //     0x434f50: stur         r2, [fp, #-0x18]
    // 0x434f54: StoreField: r2->field_f = r0
    //     0x434f54: stur         r0, [r2, #0xf]
    //     0x434f58: ldur         r0, [fp, #-8]
    // 0x434f5c: StoreField: r2->field_b = r0
    //     0x434f5c: stur         r0, [r2, #0xb]
    // 0x434f60: r1 = pp[0x227]
    //     0x434f60: add          r1, PP, #0xf, lsl #12
    //     0x434f64: ldr          r1, [r1, #0x218]
    // 0x434f68: r0 = call 0x396454
    //     0x434f68: bl           0x396454
    // 0x434f6c: r1 = r0
    //     0x434f6c: mov          r1, r0
    //     0x434f70: ldur         r2, [fp, #-0x18]
    //     0x434f74: ldur         r3, [fp, #-0x10]
    //     0x434f78: stur         r0, [fp, #-8]
    // 0x434f7c: r0 = flutter$src$widgets$media_query_MediaQuery::ctor_removeViewInsets()
    //     0x434f7c: bl           0x395ac8
    //     0x434f80: ldur         r0, [fp, #-8]
    // 0x434f84: SP = fp
    //     0x434f84: mov          SP, fp
    // 0x434f88: LeaveFrame
    //     0x434f88: ldp          fp, lr, [SP], #0x10
    // 0x434f8c: ret
    //     0x434f8c: ret          
    // 0x434f90: r0 = call 0x61fa28
    //     0x434f90: bl           0x61fa28
    // 0x434f94: b 0x43492c
    //     0x434f94: b            0x43492c
    // 0x434f98: r0 = call 0x61ffd0
    //     0x434f98: bl           0x61ffd0
  }

  _NodataDialogLWidget() {
    // ** addr: 0x434f9c, size: 0x11c
    // 0x434f9c: EnterFrame
    //     0x434f9c: stp          fp, lr, [SP, #-0x10]!
    //     0x434fa0: mov          fp, SP
    // 0x434fa4: AllocStack(0x20)
    //     0x434fa4: sub          SP, SP, #0x20
    // 0x434fa8: r0 = r1
    //     0x434fa8: mov          r0, r1
    //     0x434fac: stur         r1, [fp, #-8]
    // 0x434fb0: CheckStackOverflow
    //     0x434fb0: ldr          BARRIER, [THR, #0x38]
    //     0x434fb4: cmp          SP, BARRIER
    //     0x434fb8: b.ls         0x4350b0
    // 0x434fbc: r1 = pp[0x884]
    //     0x434fbc: add          r1, PP, #0xc, lsl #12
    //     0x434fc0: ldr          r1, [r1, #0x878]
    // 0x434fc4: r4 = pp[0x4c0]
    //     0x434fc4: ldr          r4, [PP, #0x4c0]
    // 0x434fc8: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x434fc8: bl           0x3a1dcc
    //     0x434fcc: ldur         r1, [fp, #-8]
    // 0x434fd0: r2 = r0
    //     0x434fd0: mov          r2, r0
    // 0x434fd4: r0 = soul_flutter_international$biz$game$page_game_fruit_bet_record_dialog__GameFruitBetRecordDialogState::_titleLabelWidget()
    //     0x434fd4: bl           0x4358f8
    //     0x434fd8: stur         r0, [fp, #-0x10]
    // 0x434fdc: r0 = call 0x3949ec
    //     0x434fdc: bl           0x3949ec
    // 0x434fe0: r2 = r0
    //     0x434fe0: mov          r2, r0
    // 0x434fe4: r0 = pp[0x4ea]
    //     0x434fe4: add          r0, PP, #0xa, lsl #12
    //     0x434fe8: ldr          r0, [r0, #0x4e0]
    //     0x434fec: stur         r2, [fp, #-0x18]
    // 0x434ff0: StoreField: r2->field_13 = r0
    //     0x434ff0: stur         r0, [r2, #0x13]
    //     0x434ff4: ldur         r1, [fp, #-8]
    // 0x434ff8: r0 = soul_flutter_international$biz$game$page_game_fruit_bet_record_dialog__GameFruitBetRecordDialogState::_dialogListEmptyWidget()
    //     0x434ff8: bl           0x4350b8
    // 0x434ffc: r1 = NULL
    //     0x434ffc: mov          r1, NULL
    //     0x435000: mov          r2, #6
    //     0x435004: stur         r0, [fp, #-8]
    // 0x435008: r0 = call 0x61f920
    //     0x435008: bl           0x61f920
    // 0x43500c: r2 = r0
    //     0x43500c: mov          r2, r0
    //     0x435010: ldur         r0, [fp, #-0x10]
    //     0x435014: stur         r2, [fp, #-0x20]
    // 0x435018: StoreField: r2->field_f = r0
    //     0x435018: stur         r0, [r2, #0xf]
    //     0x43501c: ldur         r0, [fp, #-0x18]
    // 0x435020: StoreField: r2->field_13 = r0
    //     0x435020: stur         r0, [r2, #0x13]
    //     0x435024: ldur         r0, [fp, #-8]
    // 0x435028: ArrayStore: r2[0] = r0  ; List_8
    //     0x435028: stur         r0, [r2, #0x17]
    // 0x43502c: r1 = pp[0x5c58]
    //     0x43502c: ldr          r1, [PP, #0x5c58]
    // 0x435030: r0 = call 0x61e854
    //     0x435030: bl           0x61e854
    // 0x435034: r1 = r0
    //     0x435034: mov          r1, r0
    //     0x435038: ldur         r0, [fp, #-0x20]
    //     0x43503c: stur         r1, [fp, #-8]
    // 0x435040: StoreField: r1->field_f = r0
    //     0x435040: stur         r0, [r1, #0xf]
    //     0x435044: mov          r0, #6
    // 0x435048: StoreField: r1->field_b = r0
    //     0x435048: stur         r0, [r1, #0xb]
    // 0x43504c: r0 = call 0x39310c
    //     0x43504c: bl           0x39310c
    // 0x435050: r1 = pp[0x862]
    //     0x435050: add          r1, PP, #0xa, lsl #12
    //     0x435054: ldr          r1, [r1, #0x858]
    // 0x435058: StoreField: r0->field_f = r1
    //     0x435058: stur         r1, [r0, #0xf]
    // 0x43505c: r1 = pp[0xaee]
    //     0x43505c: add          r1, PP, #0xe, lsl #12
    //     0x435060: ldr          r1, [r1, #0xae0]
    // 0x435064: StoreField: r0->field_13 = r1
    //     0x435064: stur         r1, [r0, #0x13]
    // 0x435068: r1 = pp[0xaf6]
    //     0x435068: add          r1, PP, #0xe, lsl #12
    //     0x43506c: ldr          r1, [r1, #0xae8]
    // 0x435070: ArrayStore: r0[0] = r1  ; List_8
    //     0x435070: stur         r1, [r0, #0x17]
    // 0x435074: r1 = pp[0xb6e]
    //     0x435074: add          r1, PP, #0xe, lsl #12
    //     0x435078: ldr          r1, [r1, #0xb60]
    // 0x43507c: StoreField: r0->field_1b = r1
    //     0x43507c: stur         r1, [r0, #0x1b]
    // 0x435080: r1 = pp[0xb06]
    //     0x435080: add          r1, PP, #0xe, lsl #12
    //     0x435084: ldr          r1, [r1, #0xaf8]
    // 0x435088: StoreField: r0->field_23 = r1
    //     0x435088: stur         r1, [r0, #0x23]
    // 0x43508c: r1 = pp[0xb2]
    //     0x43508c: add          r1, PP, #0xa, lsl #12
    //     0x435090: ldr          r1, [r1, #0xa8]
    // 0x435094: StoreField: r0->field_2b = r1
    //     0x435094: stur         r1, [r0, #0x2b]
    // 0x435098: StoreField: r0->field_2f = xzr
    //     0x435098: stur         xzr, [r0, #0x2f]
    //     0x43509c: ldur         r1, [fp, #-8]
    // 0x4350a0: StoreField: r0->field_b = r1
    //     0x4350a0: stur         r1, [r0, #0xb]
    // 0x4350a4: SP = fp
    //     0x4350a4: mov          SP, fp
    // 0x4350a8: LeaveFrame
    //     0x4350a8: ldp          fp, lr, [SP], #0x10
    // 0x4350ac: ret
    //     0x4350ac: ret          
    // 0x4350b0: r0 = call 0x61fa28
    //     0x4350b0: bl           0x61fa28
    // 0x4350b4: b 0x434fbc
    //     0x4350b4: b            0x434fbc
  }

  _dialogListEmptyWidget() {
    // ** addr: 0x4350b8, size: 0x1d0
    // 0x4350b8: EnterFrame
    //     0x4350b8: stp          fp, lr, [SP, #-0x10]!
    //     0x4350bc: mov          fp, SP
    // 0x4350c0: AllocStack(0x38)
    //     0x4350c0: sub          SP, SP, #0x38
    // 0x4350c4: CheckStackOverflow
    //     0x4350c4: ldr          BARRIER, [THR, #0x38]
    //     0x4350c8: cmp          SP, BARRIER
    //     0x4350cc: b.ls         0x435280
    // 0x4350d0: r0 = call 0x3a142c
    //     0x4350d0: bl           0x3a142c
    // 0x4350d4: r1 = r0
    //     0x4350d4: mov          r1, r0
    // 0x4350d8: r0 = pp[0x277]
    //     0x4350d8: add          r0, PP, #0xf, lsl #12
    //     0x4350dc: ldr          r0, [r0, #0x268]
    //     0x4350e0: stur         r1, [fp, #-8]
    // 0x4350e4: StoreField: r1->field_b = r0
    //     0x4350e4: stur         r0, [r1, #0xb]
    // 0x4350e8: r0 = pp[0x17f]
    //     0x4350e8: add          r0, PP, #0xf, lsl #12
    //     0x4350ec: ldr          r0, [r0, #0x170]
    // 0x4350f0: StoreField: r1->field_f = r0
    //     0x4350f0: stur         r0, [r1, #0xf]
    // 0x4350f4: r0 = pp[0x27f]
    //     0x4350f4: add          r0, PP, #0xf, lsl #12
    //     0x4350f8: ldr          r0, [r0, #0x270]
    // 0x4350fc: StoreField: r1->field_13 = r0
    //     0x4350fc: stur         r0, [r1, #0x13]
    // 0x435100: r0 = pp[0x287]
    //     0x435100: add          r0, PP, #0xf, lsl #12
    //     0x435104: ldr          r0, [r0, #0x278]
    // 0x435108: ArrayStore: r1[0] = r0  ; List_8
    //     0x435108: stur         r0, [r1, #0x17]
    // 0x43510c: r0 = call 0x391a04
    //     0x43510c: bl           0x391a04
    //     0x435110: stur         r0, [fp, #-0x10]
    //     0x435114: ldur         BARRIER, [fp, #-8]
    //     0x435118: str          BARRIER, [SP]
    // 0x43511c: r1 = r0
    //     0x43511c: mov          r1, r0
    // 0x435120: r4 = pp[0x204]
    //     0x435120: add          r4, PP, #0xc, lsl #12
    //     0x435124: ldr          r4, [r4, #0x1f8]
    // 0x435128: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x435128: bl           0x391490
    // 0x43512c: r0 = call 0x3949ec
    //     0x43512c: bl           0x3949ec
    // 0x435130: r2 = r0
    //     0x435130: mov          r2, r0
    // 0x435134: r0 = pp[0xb5e]
    //     0x435134: add          r0, PP, #0xe, lsl #12
    //     0x435138: ldr          r0, [r0, #0xb50]
    //     0x43513c: stur         r2, [fp, #-8]
    // 0x435140: StoreField: r2->field_13 = r0
    //     0x435140: stur         r0, [r2, #0x13]
    // 0x435144: r1 = pp[0x824]
    //     0x435144: add          r1, PP, #0xc, lsl #12
    //     0x435148: ldr          r1, [r1, #0x818]
    // 0x43514c: r4 = pp[0x4c0]
    //     0x43514c: ldr          r4, [PP, #0x4c0]
    // 0x435150: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x435150: bl           0x3a1dcc
    //     0x435154: stur         r0, [fp, #-0x18]
    // 0x435158: r0 = call 0x31abec
    //     0x435158: bl           0x31abec
    // 0x43515c: r1 = r0
    //     0x43515c: mov          r1, r0
    //     0x435160: add          r0, NULL, #0x20
    //     0x435164: stur         r1, [fp, #-0x20]
    // 0x435168: StoreField: r1->field_7 = r0
    //     0x435168: stur         r0, [r1, #7]
    // 0x43516c: r0 = pp[0x6050]
    //     0x43516c: ldr          r0, [PP, #0x6050]
    // 0x435170: StoreField: r1->field_b = r0
    //     0x435170: stur         r0, [r1, #0xb]
    // 0x435174: r0 = pp[0xdf6]
    //     0x435174: add          r0, PP, #0xe, lsl #12
    //     0x435178: ldr          r0, [r0, #0xde8]
    // 0x43517c: StoreField: r1->field_1f = r0
    //     0x43517c: stur         r0, [r1, #0x1f]
    // 0x435180: r0 = call 0x393bf8
    //     0x435180: bl           0x393bf8
    // 0x435184: r3 = r0
    //     0x435184: mov          r3, r0
    //     0x435188: ldur         r0, [fp, #-0x18]
    //     0x43518c: stur         r3, [fp, #-0x28]
    // 0x435190: StoreField: r3->field_b = r0
    //     0x435190: stur         r0, [r3, #0xb]
    //     0x435194: ldur         r0, [fp, #-0x20]
    // 0x435198: StoreField: r3->field_13 = r0
    //     0x435198: stur         r0, [r3, #0x13]
    // 0x43519c: r1 = NULL
    //     0x43519c: mov          r1, NULL
    //     0x4351a0: mov          r2, #6
    // 0x4351a4: r0 = call 0x61f920
    //     0x4351a4: bl           0x61f920
    // 0x4351a8: r2 = r0
    //     0x4351a8: mov          r2, r0
    //     0x4351ac: ldur         r0, [fp, #-0x10]
    //     0x4351b0: stur         r2, [fp, #-0x18]
    // 0x4351b4: StoreField: r2->field_f = r0
    //     0x4351b4: stur         r0, [r2, #0xf]
    //     0x4351b8: ldur         r0, [fp, #-8]
    // 0x4351bc: StoreField: r2->field_13 = r0
    //     0x4351bc: stur         r0, [r2, #0x13]
    //     0x4351c0: ldur         r0, [fp, #-0x28]
    // 0x4351c4: ArrayStore: r2[0] = r0  ; List_8
    //     0x4351c4: stur         r0, [r2, #0x17]
    // 0x4351c8: r1 = pp[0x5c58]
    //     0x4351c8: ldr          r1, [PP, #0x5c58]
    // 0x4351cc: r0 = call 0x61e854
    //     0x4351cc: bl           0x61e854
    // 0x4351d0: r1 = r0
    //     0x4351d0: mov          r1, r0
    //     0x4351d4: ldur         r0, [fp, #-0x18]
    //     0x4351d8: stur         r1, [fp, #-8]
    // 0x4351dc: StoreField: r1->field_f = r0
    //     0x4351dc: stur         r0, [r1, #0xf]
    //     0x4351e0: mov          r0, #6
    // 0x4351e4: StoreField: r1->field_b = r0
    //     0x4351e4: stur         r0, [r1, #0xb]
    // 0x4351e8: r0 = call 0x39310c
    //     0x4351e8: bl           0x39310c
    // 0x4351ec: r1 = r0
    //     0x4351ec: mov          r1, r0
    // 0x4351f0: r0 = pp[0x862]
    //     0x4351f0: add          r0, PP, #0xa, lsl #12
    //     0x4351f4: ldr          r0, [r0, #0x858]
    //     0x4351f8: stur         r1, [fp, #-0x10]
    // 0x4351fc: StoreField: r1->field_f = r0
    //     0x4351fc: stur         r0, [r1, #0xf]
    // 0x435200: r0 = pp[0x297]
    //     0x435200: add          r0, PP, #0xf, lsl #12
    //     0x435204: ldr          r0, [r0, #0x288]
    // 0x435208: StoreField: r1->field_13 = r0
    //     0x435208: stur         r0, [r1, #0x13]
    // 0x43520c: r0 = pp[0xaf6]
    //     0x43520c: add          r0, PP, #0xe, lsl #12
    //     0x435210: ldr          r0, [r0, #0xae8]
    // 0x435214: ArrayStore: r1[0] = r0  ; List_8
    //     0x435214: stur         r0, [r1, #0x17]
    // 0x435218: r0 = pp[0xb6e]
    //     0x435218: add          r0, PP, #0xe, lsl #12
    //     0x43521c: ldr          r0, [r0, #0xb60]
    // 0x435220: StoreField: r1->field_1b = r0
    //     0x435220: stur         r0, [r1, #0x1b]
    // 0x435224: r0 = pp[0xb06]
    //     0x435224: add          r0, PP, #0xe, lsl #12
    //     0x435228: ldr          r0, [r0, #0xaf8]
    // 0x43522c: StoreField: r1->field_23 = r0
    //     0x43522c: stur         r0, [r1, #0x23]
    // 0x435230: r0 = pp[0xb2]
    //     0x435230: add          r0, PP, #0xa, lsl #12
    //     0x435234: ldr          r0, [r0, #0xa8]
    // 0x435238: StoreField: r1->field_2b = r0
    //     0x435238: stur         r0, [r1, #0x2b]
    // 0x43523c: StoreField: r1->field_2f = xzr
    //     0x43523c: stur         xzr, [r1, #0x2f]
    //     0x435240: ldur         r0, [fp, #-8]
    // 0x435244: StoreField: r1->field_b = r0
    //     0x435244: stur         r0, [r1, #0xb]
    // 0x435248: r0 = call 0x391a04
    //     0x435248: bl           0x391a04
    //     0x43524c: stur         r0, [fp, #-8]
    // 0x435250: BARRIER = pp[0x3ca]
    //     0x435250: add          BARRIER, PP, #0xa, lsl #12
    //     0x435254: ldr          BARRIER, [BARRIER, #0x3c0]
    //     0x435258: ldur         lr, [fp, #-0x10]
    //     0x43525c: stp          lr, BARRIER, [SP]
    // 0x435260: r1 = r0
    //     0x435260: mov          r1, r0
    // 0x435264: r4 = pp[0x577]
    //     0x435264: add          r4, PP, #0xf, lsl #12
    //     0x435268: ldr          r4, [r4, #0x568]
    // 0x43526c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43526c: bl           0x391490
    //     0x435270: ldur         r0, [fp, #-8]
    // 0x435274: SP = fp
    //     0x435274: mov          SP, fp
    // 0x435278: LeaveFrame
    //     0x435278: ldp          fp, lr, [SP], #0x10
    // 0x43527c: ret
    //     0x43527c: ret          
    // 0x435280: r0 = call 0x61fa28
    //     0x435280: bl           0x61fa28
    // 0x435284: b 0x4350d0
    //     0x435284: b            0x4350d0
  }

  _bottomLabelWiget() {
    // ** addr: 0x435288, size: 0x25c
    // 0x435288: EnterFrame
    //     0x435288: stp          fp, lr, [SP, #-0x10]!
    //     0x43528c: mov          fp, SP
    // 0x435290: AllocStack(0x48)
    //     0x435290: sub          SP, SP, #0x48
    // 0x435294: CheckStackOverflow
    //     0x435294: ldr          BARRIER, [THR, #0x38]
    //     0x435298: cmp          SP, BARRIER
    //     0x43529c: b.ls         0x4354dc
    // 0x4352a0: r0 = call 0x31d844
    //     0x4352a0: bl           0x31d844
    // 0x4352a4: r1 = r0
    //     0x4352a4: mov          r1, r0
    // 0x4352a8: r0 = pp[0x6310]
    //     0x4352a8: ldr          r0, [PP, #0x6310]
    //     0x4352ac: stur         r1, [fp, #-8]
    // 0x4352b0: StoreField: r1->field_27 = r0
    //     0x4352b0: stur         r0, [r1, #0x27]
    //     0x4352b4: fmov         d0, #0.50000000
    // 0x4352b8: StoreField: r1->field_7 = d0
    //     0x4352b8: stur         d0, [r1, #7]
    //     0x4352bc: fmov         d1, #1.00000000
    // 0x4352c0: StoreField: r1->field_f = d1
    //     0x4352c0: stur         d1, [r1, #0xf]
    // 0x4352c4: ArrayStore: r1[0] = d1  ; List_8
    //     0x4352c4: stur         d1, [r1, #0x17]
    // 0x4352c8: StoreField: r1->field_1f = d1
    //     0x4352c8: stur         d1, [r1, #0x1f]
    // 0x4352cc: r0 = call 0x391a04
    //     0x4352cc: bl           0x391a04
    //     0x4352d0: stur         r0, [fp, #-0x10]
    // 0x4352d4: BARRIER = pp[0x572]
    //     0x4352d4: add          BARRIER, PP, #0x12, lsl #12
    //     0x4352d8: ldr          BARRIER, [BARRIER, #0x560]
    // 0x4352dc: lr = pp[0x53a0]
    //     0x4352dc: ldr          lr, [PP, #0x53a0]
    //     0x4352e0: stp          lr, BARRIER, [SP, #8]
    //     0x4352e4: ldur         BARRIER, [fp, #-8]
    //     0x4352e8: str          BARRIER, [SP]
    // 0x4352ec: r1 = r0
    //     0x4352ec: mov          r1, r0
    // 0x4352f0: r4 = pp[0x125]
    //     0x4352f0: add          r4, PP, #0x15, lsl #12
    //     0x4352f4: ldr          r4, [r4, #0x110]
    // 0x4352f8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4352f8: bl           0x391490
    // 0x4352fc: r0 = call 0x3949ec
    //     0x4352fc: bl           0x3949ec
    // 0x435300: r2 = r0
    //     0x435300: mov          r2, r0
    // 0x435304: r0 = pp[0xbc7]
    //     0x435304: add          r0, PP, #0xf, lsl #12
    //     0x435308: ldr          r0, [r0, #0xbb8]
    //     0x43530c: stur         r2, [fp, #-8]
    // 0x435310: StoreField: r2->field_f = r0
    //     0x435310: stur         r0, [r2, #0xf]
    // 0x435314: r1 = pp[0x834]
    //     0x435314: add          r1, PP, #0xc, lsl #12
    //     0x435318: ldr          r1, [r1, #0x828]
    // 0x43531c: r4 = pp[0x4c0]
    //     0x43531c: ldr          r4, [PP, #0x4c0]
    // 0x435320: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x435320: bl           0x3a1dcc
    //     0x435324: stur         r0, [fp, #-0x18]
    // 0x435328: r0 = call 0x31abec
    //     0x435328: bl           0x31abec
    // 0x43532c: r1 = r0
    //     0x43532c: mov          r1, r0
    //     0x435330: add          r0, NULL, #0x20
    //     0x435334: stur         r1, [fp, #-0x20]
    // 0x435338: StoreField: r1->field_7 = r0
    //     0x435338: stur         r0, [r1, #7]
    // 0x43533c: r0 = pp[0x6050]
    //     0x43533c: ldr          r0, [PP, #0x6050]
    // 0x435340: StoreField: r1->field_b = r0
    //     0x435340: stur         r0, [r1, #0xb]
    // 0x435344: r0 = pp[0xb8f]
    //     0x435344: add          r0, PP, #0xf, lsl #12
    //     0x435348: ldr          r0, [r0, #0xb80]
    // 0x43534c: StoreField: r1->field_1f = r0
    //     0x43534c: stur         r0, [r1, #0x1f]
    // 0x435350: r0 = pp[0xe4e]
    //     0x435350: add          r0, PP, #0xe, lsl #12
    //     0x435354: ldr          r0, [r0, #0xe40]
    // 0x435358: StoreField: r1->field_23 = r0
    //     0x435358: stur         r0, [r1, #0x23]
    // 0x43535c: r0 = call 0x393bf8
    //     0x43535c: bl           0x393bf8
    // 0x435360: r1 = r0
    //     0x435360: mov          r1, r0
    //     0x435364: ldur         r0, [fp, #-0x18]
    //     0x435368: stur         r1, [fp, #-0x28]
    // 0x43536c: StoreField: r1->field_b = r0
    //     0x43536c: stur         r0, [r1, #0xb]
    //     0x435370: ldur         r0, [fp, #-0x20]
    // 0x435374: StoreField: r1->field_13 = r0
    //     0x435374: stur         r0, [r1, #0x13]
    // 0x435378: r0 = call 0x3949ec
    //     0x435378: bl           0x3949ec
    // 0x43537c: r1 = r0
    //     0x43537c: mov          r1, r0
    // 0x435380: r0 = pp[0xbc7]
    //     0x435380: add          r0, PP, #0xf, lsl #12
    //     0x435384: ldr          r0, [r0, #0xbb8]
    //     0x435388: stur         r1, [fp, #-0x18]
    // 0x43538c: StoreField: r1->field_f = r0
    //     0x43538c: stur         r0, [r1, #0xf]
    // 0x435390: r0 = call 0x31d844
    //     0x435390: bl           0x31d844
    // 0x435394: r1 = r0
    //     0x435394: mov          r1, r0
    // 0x435398: r0 = pp[0x6310]
    //     0x435398: ldr          r0, [PP, #0x6310]
    //     0x43539c: stur         r1, [fp, #-0x20]
    // 0x4353a0: StoreField: r1->field_27 = r0
    //     0x4353a0: stur         r0, [r1, #0x27]
    //     0x4353a4: fmov         d0, #0.50000000
    // 0x4353a8: StoreField: r1->field_7 = d0
    //     0x4353a8: stur         d0, [r1, #7]
    //     0x4353ac: fmov         d0, #1.00000000
    // 0x4353b0: StoreField: r1->field_f = d0
    //     0x4353b0: stur         d0, [r1, #0xf]
    // 0x4353b4: ArrayStore: r1[0] = d0  ; List_8
    //     0x4353b4: stur         d0, [r1, #0x17]
    // 0x4353b8: StoreField: r1->field_1f = d0
    //     0x4353b8: stur         d0, [r1, #0x1f]
    // 0x4353bc: r0 = call 0x391a04
    //     0x4353bc: bl           0x391a04
    //     0x4353c0: stur         r0, [fp, #-0x30]
    // 0x4353c4: BARRIER = pp[0x572]
    //     0x4353c4: add          BARRIER, PP, #0x12, lsl #12
    //     0x4353c8: ldr          BARRIER, [BARRIER, #0x560]
    // 0x4353cc: lr = pp[0x53a0]
    //     0x4353cc: ldr          lr, [PP, #0x53a0]
    //     0x4353d0: stp          lr, BARRIER, [SP, #8]
    //     0x4353d4: ldur         BARRIER, [fp, #-0x20]
    //     0x4353d8: str          BARRIER, [SP]
    // 0x4353dc: r1 = r0
    //     0x4353dc: mov          r1, r0
    // 0x4353e0: r4 = pp[0x125]
    //     0x4353e0: add          r4, PP, #0x15, lsl #12
    //     0x4353e4: ldr          r4, [r4, #0x110]
    // 0x4353e8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4353e8: bl           0x391490
    // 0x4353ec: r1 = NULL
    //     0x4353ec: mov          r1, NULL
    //     0x4353f0: mov          r2, #0xa
    // 0x4353f4: r0 = call 0x61f920
    //     0x4353f4: bl           0x61f920
    // 0x4353f8: r2 = r0
    //     0x4353f8: mov          r2, r0
    //     0x4353fc: ldur         r0, [fp, #-0x10]
    //     0x435400: stur         r2, [fp, #-0x20]
    // 0x435404: StoreField: r2->field_f = r0
    //     0x435404: stur         r0, [r2, #0xf]
    //     0x435408: ldur         r0, [fp, #-8]
    // 0x43540c: StoreField: r2->field_13 = r0
    //     0x43540c: stur         r0, [r2, #0x13]
    //     0x435410: ldur         r0, [fp, #-0x28]
    // 0x435414: ArrayStore: r2[0] = r0  ; List_8
    //     0x435414: stur         r0, [r2, #0x17]
    //     0x435418: ldur         r0, [fp, #-0x18]
    // 0x43541c: StoreField: r2->field_1b = r0
    //     0x43541c: stur         r0, [r2, #0x1b]
    //     0x435420: ldur         r0, [fp, #-0x30]
    // 0x435424: StoreField: r2->field_1f = r0
    //     0x435424: stur         r0, [r2, #0x1f]
    // 0x435428: r1 = pp[0x5c58]
    //     0x435428: ldr          r1, [PP, #0x5c58]
    // 0x43542c: r0 = call 0x61e854
    //     0x43542c: bl           0x61e854
    // 0x435430: r1 = r0
    //     0x435430: mov          r1, r0
    //     0x435434: ldur         r0, [fp, #-0x20]
    //     0x435438: stur         r1, [fp, #-8]
    // 0x43543c: StoreField: r1->field_f = r0
    //     0x43543c: stur         r0, [r1, #0xf]
    //     0x435440: mov          r0, #0xa
    // 0x435444: StoreField: r1->field_b = r0
    //     0x435444: stur         r0, [r1, #0xb]
    // 0x435448: r0 = call 0x3a1414
    //     0x435448: bl           0x3a1414
    // 0x43544c: r1 = r0
    //     0x43544c: mov          r1, r0
    // 0x435450: r0 = pp[0x5140]
    //     0x435450: ldr          r0, [PP, #0x5140]
    //     0x435454: stur         r1, [fp, #-0x10]
    // 0x435458: StoreField: r1->field_f = r0
    //     0x435458: stur         r0, [r1, #0xf]
    // 0x43545c: r0 = pp[0x297]
    //     0x43545c: add          r0, PP, #0xf, lsl #12
    //     0x435460: ldr          r0, [r0, #0x288]
    // 0x435464: StoreField: r1->field_13 = r0
    //     0x435464: stur         r0, [r1, #0x13]
    // 0x435468: r0 = pp[0xaf6]
    //     0x435468: add          r0, PP, #0xe, lsl #12
    //     0x43546c: ldr          r0, [r0, #0xae8]
    // 0x435470: ArrayStore: r1[0] = r0  ; List_8
    //     0x435470: stur         r0, [r1, #0x17]
    // 0x435474: r0 = pp[0xb6e]
    //     0x435474: add          r0, PP, #0xe, lsl #12
    //     0x435478: ldr          r0, [r0, #0xb60]
    // 0x43547c: StoreField: r1->field_1b = r0
    //     0x43547c: stur         r0, [r1, #0x1b]
    // 0x435480: r0 = pp[0xb06]
    //     0x435480: add          r0, PP, #0xe, lsl #12
    //     0x435484: ldr          r0, [r0, #0xaf8]
    // 0x435488: StoreField: r1->field_23 = r0
    //     0x435488: stur         r0, [r1, #0x23]
    // 0x43548c: r0 = pp[0xb2]
    //     0x43548c: add          r0, PP, #0xa, lsl #12
    //     0x435490: ldr          r0, [r0, #0xa8]
    // 0x435494: StoreField: r1->field_2b = r0
    //     0x435494: stur         r0, [r1, #0x2b]
    // 0x435498: StoreField: r1->field_2f = xzr
    //     0x435498: stur         xzr, [r1, #0x2f]
    //     0x43549c: ldur         r0, [fp, #-8]
    // 0x4354a0: StoreField: r1->field_b = r0
    //     0x4354a0: stur         r0, [r1, #0xb]
    // 0x4354a4: r0 = call 0x391a04
    //     0x4354a4: bl           0x391a04
    //     0x4354a8: stur         r0, [fp, #-8]
    // 0x4354ac: BARRIER = pp[0x4ea]
    //     0x4354ac: add          BARRIER, PP, #0x12, lsl #12
    //     0x4354b0: ldr          BARRIER, [BARRIER, #0x4d8]
    //     0x4354b4: ldur         lr, [fp, #-0x10]
    //     0x4354b8: stp          lr, BARRIER, [SP]
    // 0x4354bc: r1 = r0
    //     0x4354bc: mov          r1, r0
    // 0x4354c0: r4 = pp[0x5ff]
    //     0x4354c0: add          r4, PP, #0xf, lsl #12
    //     0x4354c4: ldr          r4, [r4, #0x5f0]
    // 0x4354c8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4354c8: bl           0x391490
    //     0x4354cc: ldur         r0, [fp, #-8]
    // 0x4354d0: SP = fp
    //     0x4354d0: mov          SP, fp
    // 0x4354d4: LeaveFrame
    //     0x4354d4: ldp          fp, lr, [SP], #0x10
    // 0x4354d8: ret
    //     0x4354d8: ret          
    // 0x4354dc: r0 = call 0x61fa28
    //     0x4354dc: bl           0x61fa28
    // 0x4354e0: b 0x4352a0
    //     0x4354e0: b            0x4352a0
  }

  _titleListWidget() {
    // ** addr: 0x4354e4, size: 0x414
    // 0x4354e4: EnterFrame
    //     0x4354e4: stp          fp, lr, [SP, #-0x10]!
    //     0x4354e8: mov          fp, SP
    // 0x4354ec: AllocStack(0x60)
    //     0x4354ec: sub          SP, SP, #0x60
    // 0x4354f0: CheckStackOverflow
    //     0x4354f0: ldr          BARRIER, [THR, #0x38]
    //     0x4354f4: cmp          SP, BARRIER
    //     0x4354f8: b.ls         0x4358f0
    // 0x4354fc: r0 = call 0x31abec
    //     0x4354fc: bl           0x31abec
    // 0x435500: r1 = r0
    //     0x435500: mov          r1, r0
    //     0x435504: add          r0, NULL, #0x20
    //     0x435508: stur         r1, [fp, #-8]
    // 0x43550c: StoreField: r1->field_7 = r0
    //     0x43550c: stur         r0, [r1, #7]
    // 0x435510: r0 = pp[0x6050]
    //     0x435510: ldr          r0, [PP, #0x6050]
    // 0x435514: StoreField: r1->field_b = r0
    //     0x435514: stur         r0, [r1, #0xb]
    // 0x435518: r0 = pp[0xb8f]
    //     0x435518: add          r0, PP, #0xf, lsl #12
    //     0x43551c: ldr          r0, [r0, #0xb80]
    // 0x435520: StoreField: r1->field_1f = r0
    //     0x435520: stur         r0, [r1, #0x1f]
    // 0x435524: r0 = pp[0xe4e]
    //     0x435524: add          r0, PP, #0xe, lsl #12
    //     0x435528: ldr          r0, [r0, #0xe40]
    // 0x43552c: StoreField: r1->field_23 = r0
    //     0x43552c: stur         r0, [r1, #0x23]
    // 0x435530: r0 = call 0x31d844
    //     0x435530: bl           0x31d844
    // 0x435534: r2 = r0
    //     0x435534: mov          r2, r0
    // 0x435538: r0 = pp[0x6310]
    //     0x435538: ldr          r0, [PP, #0x6310]
    //     0x43553c: stur         r2, [fp, #-0x10]
    // 0x435540: StoreField: r2->field_27 = r0
    //     0x435540: stur         r0, [r2, #0x27]
    // 0x435544: d0 = pp[0x66a0]
    //     0x435544: ldr          d0, [PP, #0x66a0]
    // 0x435548: StoreField: r2->field_7 = d0
    //     0x435548: stur         d0, [r2, #7]
    //     0x43554c: fmov         d1, #1.00000000
    // 0x435550: StoreField: r2->field_f = d1
    //     0x435550: stur         d1, [r2, #0xf]
    // 0x435554: ArrayStore: r2[0] = d1  ; List_8
    //     0x435554: stur         d1, [r2, #0x17]
    // 0x435558: StoreField: r2->field_1f = d1
    //     0x435558: stur         d1, [r2, #0x1f]
    // 0x43555c: r1 = pp[0x874]
    //     0x43555c: add          r1, PP, #0xc, lsl #12
    //     0x435560: ldr          r1, [r1, #0x868]
    // 0x435564: r4 = pp[0x4c0]
    //     0x435564: ldr          r4, [PP, #0x4c0]
    // 0x435568: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x435568: bl           0x3a1dcc
    //     0x43556c: stur         r0, [fp, #-0x18]
    // 0x435570: r0 = call 0x393bf8
    //     0x435570: bl           0x393bf8
    // 0x435574: r1 = r0
    //     0x435574: mov          r1, r0
    //     0x435578: ldur         r0, [fp, #-0x18]
    //     0x43557c: stur         r1, [fp, #-0x20]
    // 0x435580: StoreField: r1->field_b = r0
    //     0x435580: stur         r0, [r1, #0xb]
    //     0x435584: ldur         r0, [fp, #-8]
    // 0x435588: StoreField: r1->field_13 = r0
    //     0x435588: stur         r0, [r1, #0x13]
    // 0x43558c: r2 = pp[0x23f]
    //     0x43558c: add          r2, PP, #0xf, lsl #12
    //     0x435590: ldr          r2, [r2, #0x230]
    // 0x435594: StoreField: r1->field_2b = r2
    //     0x435594: stur         r2, [r1, #0x2b]
    //     0x435598: mov          r3, #2
    // 0x43559c: StoreField: r1->field_37 = r3
    //     0x43559c: stur         r3, [r1, #0x37]
    // 0x4355a0: r0 = call 0x391a04
    //     0x4355a0: bl           0x391a04
    //     0x4355a4: stur         r0, [fp, #-0x18]
    //     0x4355a8: ldur         BARRIER, [fp, #-0x10]
    // 0x4355ac: lr = pp[0x46d]
    //     0x4355ac: add          lr, PP, #0x15, lsl #12
    //     0x4355b0: ldr          lr, [lr, #0x458]
    //     0x4355b4: stp          lr, BARRIER, [SP, #0x18]
    // 0x4355b8: BARRIER = pp[0x31f]
    //     0x4355b8: add          BARRIER, PP, #0xf, lsl #12
    //     0x4355bc: ldr          BARRIER, [BARRIER, #0x310]
    // 0x4355c0: lr = pp[0xaae]
    //     0x4355c0: add          lr, PP, #0xe, lsl #12
    //     0x4355c4: ldr          lr, [lr, #0xaa0]
    //     0x4355c8: stp          lr, BARRIER, [SP, #8]
    //     0x4355cc: ldur         BARRIER, [fp, #-0x20]
    //     0x4355d0: str          BARRIER, [SP]
    // 0x4355d4: r1 = r0
    //     0x4355d4: mov          r1, r0
    // 0x4355d8: r4 = pp[0x4ad]
    //     0x4355d8: add          r4, PP, #0x15, lsl #12
    //     0x4355dc: ldr          r4, [r4, #0x498]
    // 0x4355e0: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4355e0: bl           0x391490
    // 0x4355e4: r0 = call 0x31d844
    //     0x4355e4: bl           0x31d844
    // 0x4355e8: r2 = r0
    //     0x4355e8: mov          r2, r0
    // 0x4355ec: r0 = pp[0x6310]
    //     0x4355ec: ldr          r0, [PP, #0x6310]
    //     0x4355f0: stur         r2, [fp, #-0x10]
    // 0x4355f4: StoreField: r2->field_27 = r0
    //     0x4355f4: stur         r0, [r2, #0x27]
    // 0x4355f8: d0 = pp[0xf2a]
    //     0x4355f8: add          r17, PP, #0x12, lsl #12
    //     0x4355fc: ldr          d0, [r17, #0xf18]
    // 0x435600: StoreField: r2->field_7 = d0
    //     0x435600: stur         d0, [r2, #7]
    //     0x435604: fmov         d1, #1.00000000
    // 0x435608: StoreField: r2->field_f = d1
    //     0x435608: stur         d1, [r2, #0xf]
    // 0x43560c: ArrayStore: r2[0] = d1  ; List_8
    //     0x43560c: stur         d1, [r2, #0x17]
    // 0x435610: StoreField: r2->field_1f = d1
    //     0x435610: stur         d1, [r2, #0x1f]
    // 0x435614: r1 = pp[0x864]
    //     0x435614: add          r1, PP, #0xc, lsl #12
    //     0x435618: ldr          r1, [r1, #0x858]
    // 0x43561c: r4 = pp[0x4c0]
    //     0x43561c: ldr          r4, [PP, #0x4c0]
    // 0x435620: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x435620: bl           0x3a1dcc
    //     0x435624: stur         r0, [fp, #-0x20]
    // 0x435628: r0 = call 0x393bf8
    //     0x435628: bl           0x393bf8
    // 0x43562c: r1 = r0
    //     0x43562c: mov          r1, r0
    //     0x435630: ldur         r0, [fp, #-0x20]
    //     0x435634: stur         r1, [fp, #-0x28]
    // 0x435638: StoreField: r1->field_b = r0
    //     0x435638: stur         r0, [r1, #0xb]
    //     0x43563c: ldur         r0, [fp, #-8]
    // 0x435640: StoreField: r1->field_13 = r0
    //     0x435640: stur         r0, [r1, #0x13]
    // 0x435644: r2 = pp[0x23f]
    //     0x435644: add          r2, PP, #0xf, lsl #12
    //     0x435648: ldr          r2, [r2, #0x230]
    // 0x43564c: StoreField: r1->field_2b = r2
    //     0x43564c: stur         r2, [r1, #0x2b]
    //     0x435650: mov          r3, #2
    // 0x435654: StoreField: r1->field_37 = r3
    //     0x435654: stur         r3, [r1, #0x37]
    // 0x435658: r0 = call 0x391a04
    //     0x435658: bl           0x391a04
    //     0x43565c: stur         r0, [fp, #-0x20]
    //     0x435660: ldur         BARRIER, [fp, #-0x10]
    // 0x435664: lr = pp[0x47d]
    //     0x435664: add          lr, PP, #0x15, lsl #12
    //     0x435668: ldr          lr, [lr, #0x468]
    //     0x43566c: stp          lr, BARRIER, [SP, #0x18]
    // 0x435670: BARRIER = pp[0x31f]
    //     0x435670: add          BARRIER, PP, #0xf, lsl #12
    //     0x435674: ldr          BARRIER, [BARRIER, #0x310]
    // 0x435678: lr = pp[0xaae]
    //     0x435678: add          lr, PP, #0xe, lsl #12
    //     0x43567c: ldr          lr, [lr, #0xaa0]
    //     0x435680: stp          lr, BARRIER, [SP, #8]
    //     0x435684: ldur         BARRIER, [fp, #-0x28]
    //     0x435688: str          BARRIER, [SP]
    // 0x43568c: r1 = r0
    //     0x43568c: mov          r1, r0
    // 0x435690: r4 = pp[0x4ad]
    //     0x435690: add          r4, PP, #0x15, lsl #12
    //     0x435694: ldr          r4, [r4, #0x498]
    // 0x435698: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x435698: bl           0x391490
    // 0x43569c: r0 = call 0x31d844
    //     0x43569c: bl           0x31d844
    // 0x4356a0: r2 = r0
    //     0x4356a0: mov          r2, r0
    // 0x4356a4: r0 = pp[0x6310]
    //     0x4356a4: ldr          r0, [PP, #0x6310]
    //     0x4356a8: stur         r2, [fp, #-0x10]
    // 0x4356ac: StoreField: r2->field_27 = r0
    //     0x4356ac: stur         r0, [r2, #0x27]
    // 0x4356b0: d0 = pp[0x66a0]
    //     0x4356b0: ldr          d0, [PP, #0x66a0]
    // 0x4356b4: StoreField: r2->field_7 = d0
    //     0x4356b4: stur         d0, [r2, #7]
    //     0x4356b8: fmov         d0, #1.00000000
    // 0x4356bc: StoreField: r2->field_f = d0
    //     0x4356bc: stur         d0, [r2, #0xf]
    // 0x4356c0: ArrayStore: r2[0] = d0  ; List_8
    //     0x4356c0: stur         d0, [r2, #0x17]
    // 0x4356c4: StoreField: r2->field_1f = d0
    //     0x4356c4: stur         d0, [r2, #0x1f]
    // 0x4356c8: r1 = pp[0x854]
    //     0x4356c8: add          r1, PP, #0xc, lsl #12
    //     0x4356cc: ldr          r1, [r1, #0x848]
    // 0x4356d0: r4 = pp[0x4c0]
    //     0x4356d0: ldr          r4, [PP, #0x4c0]
    // 0x4356d4: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4356d4: bl           0x3a1dcc
    //     0x4356d8: stur         r0, [fp, #-0x28]
    // 0x4356dc: r0 = call 0x393bf8
    //     0x4356dc: bl           0x393bf8
    // 0x4356e0: r1 = r0
    //     0x4356e0: mov          r1, r0
    //     0x4356e4: ldur         r0, [fp, #-0x28]
    //     0x4356e8: stur         r1, [fp, #-0x30]
    // 0x4356ec: StoreField: r1->field_b = r0
    //     0x4356ec: stur         r0, [r1, #0xb]
    //     0x4356f0: ldur         r0, [fp, #-8]
    // 0x4356f4: StoreField: r1->field_13 = r0
    //     0x4356f4: stur         r0, [r1, #0x13]
    // 0x4356f8: r2 = pp[0x23f]
    //     0x4356f8: add          r2, PP, #0xf, lsl #12
    //     0x4356fc: ldr          r2, [r2, #0x230]
    // 0x435700: StoreField: r1->field_2b = r2
    //     0x435700: stur         r2, [r1, #0x2b]
    //     0x435704: mov          r3, #2
    // 0x435708: StoreField: r1->field_37 = r3
    //     0x435708: stur         r3, [r1, #0x37]
    // 0x43570c: r0 = call 0x391a04
    //     0x43570c: bl           0x391a04
    //     0x435710: stur         r0, [fp, #-0x28]
    //     0x435714: ldur         BARRIER, [fp, #-0x10]
    // 0x435718: lr = pp[0x485]
    //     0x435718: add          lr, PP, #0x15, lsl #12
    //     0x43571c: ldr          lr, [lr, #0x470]
    //     0x435720: stp          lr, BARRIER, [SP, #0x18]
    // 0x435724: BARRIER = pp[0x31f]
    //     0x435724: add          BARRIER, PP, #0xf, lsl #12
    //     0x435728: ldr          BARRIER, [BARRIER, #0x310]
    // 0x43572c: lr = pp[0xaae]
    //     0x43572c: add          lr, PP, #0xe, lsl #12
    //     0x435730: ldr          lr, [lr, #0xaa0]
    //     0x435734: stp          lr, BARRIER, [SP, #8]
    //     0x435738: ldur         BARRIER, [fp, #-0x30]
    //     0x43573c: str          BARRIER, [SP]
    // 0x435740: r1 = r0
    //     0x435740: mov          r1, r0
    // 0x435744: r4 = pp[0x4ad]
    //     0x435744: add          r4, PP, #0x15, lsl #12
    //     0x435748: ldr          r4, [r4, #0x498]
    // 0x43574c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43574c: bl           0x391490
    // 0x435750: r0 = call 0x31d844
    //     0x435750: bl           0x31d844
    // 0x435754: r2 = r0
    //     0x435754: mov          r2, r0
    // 0x435758: r0 = pp[0x6310]
    //     0x435758: ldr          r0, [PP, #0x6310]
    //     0x43575c: stur         r2, [fp, #-0x10]
    // 0x435760: StoreField: r2->field_27 = r0
    //     0x435760: stur         r0, [r2, #0x27]
    // 0x435764: d0 = pp[0xf2a]
    //     0x435764: add          r17, PP, #0x12, lsl #12
    //     0x435768: ldr          d0, [r17, #0xf18]
    // 0x43576c: StoreField: r2->field_7 = d0
    //     0x43576c: stur         d0, [r2, #7]
    //     0x435770: fmov         d0, #1.00000000
    // 0x435774: StoreField: r2->field_f = d0
    //     0x435774: stur         d0, [r2, #0xf]
    // 0x435778: ArrayStore: r2[0] = d0  ; List_8
    //     0x435778: stur         d0, [r2, #0x17]
    // 0x43577c: StoreField: r2->field_1f = d0
    //     0x43577c: stur         d0, [r2, #0x1f]
    // 0x435780: r1 = pp[0x844]
    //     0x435780: add          r1, PP, #0xc, lsl #12
    //     0x435784: ldr          r1, [r1, #0x838]
    // 0x435788: r4 = pp[0x4c0]
    //     0x435788: ldr          r4, [PP, #0x4c0]
    // 0x43578c: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x43578c: bl           0x3a1dcc
    //     0x435790: stur         r0, [fp, #-0x30]
    // 0x435794: r0 = call 0x393bf8
    //     0x435794: bl           0x393bf8
    // 0x435798: r1 = r0
    //     0x435798: mov          r1, r0
    //     0x43579c: ldur         r0, [fp, #-0x30]
    //     0x4357a0: stur         r1, [fp, #-0x38]
    // 0x4357a4: StoreField: r1->field_b = r0
    //     0x4357a4: stur         r0, [r1, #0xb]
    //     0x4357a8: ldur         r0, [fp, #-8]
    // 0x4357ac: StoreField: r1->field_13 = r0
    //     0x4357ac: stur         r0, [r1, #0x13]
    // 0x4357b0: r0 = pp[0x23f]
    //     0x4357b0: add          r0, PP, #0xf, lsl #12
    //     0x4357b4: ldr          r0, [r0, #0x230]
    // 0x4357b8: StoreField: r1->field_2b = r0
    //     0x4357b8: stur         r0, [r1, #0x2b]
    //     0x4357bc: mov          r0, #2
    // 0x4357c0: StoreField: r1->field_37 = r0
    //     0x4357c0: stur         r0, [r1, #0x37]
    // 0x4357c4: r0 = call 0x391a04
    //     0x4357c4: bl           0x391a04
    //     0x4357c8: stur         r0, [fp, #-8]
    //     0x4357cc: ldur         BARRIER, [fp, #-0x10]
    // 0x4357d0: lr = pp[0x48d]
    //     0x4357d0: add          lr, PP, #0x15, lsl #12
    //     0x4357d4: ldr          lr, [lr, #0x478]
    //     0x4357d8: stp          lr, BARRIER, [SP, #0x18]
    // 0x4357dc: BARRIER = pp[0x31f]
    //     0x4357dc: add          BARRIER, PP, #0xf, lsl #12
    //     0x4357e0: ldr          BARRIER, [BARRIER, #0x310]
    // 0x4357e4: lr = pp[0xaae]
    //     0x4357e4: add          lr, PP, #0xe, lsl #12
    //     0x4357e8: ldr          lr, [lr, #0xaa0]
    //     0x4357ec: stp          lr, BARRIER, [SP, #8]
    //     0x4357f0: ldur         BARRIER, [fp, #-0x38]
    //     0x4357f4: str          BARRIER, [SP]
    // 0x4357f8: r1 = r0
    //     0x4357f8: mov          r1, r0
    // 0x4357fc: r4 = pp[0x4ad]
    //     0x4357fc: add          r4, PP, #0x15, lsl #12
    //     0x435800: ldr          r4, [r4, #0x498]
    // 0x435804: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x435804: bl           0x391490
    // 0x435808: r1 = NULL
    //     0x435808: mov          r1, NULL
    //     0x43580c: mov          r2, #8
    // 0x435810: r0 = call 0x61f920
    //     0x435810: bl           0x61f920
    // 0x435814: r2 = r0
    //     0x435814: mov          r2, r0
    //     0x435818: ldur         r0, [fp, #-0x18]
    //     0x43581c: stur         r2, [fp, #-0x10]
    // 0x435820: StoreField: r2->field_f = r0
    //     0x435820: stur         r0, [r2, #0xf]
    //     0x435824: ldur         r0, [fp, #-0x20]
    // 0x435828: StoreField: r2->field_13 = r0
    //     0x435828: stur         r0, [r2, #0x13]
    //     0x43582c: ldur         r0, [fp, #-0x28]
    // 0x435830: ArrayStore: r2[0] = r0  ; List_8
    //     0x435830: stur         r0, [r2, #0x17]
    //     0x435834: ldur         r0, [fp, #-8]
    // 0x435838: StoreField: r2->field_1b = r0
    //     0x435838: stur         r0, [r2, #0x1b]
    // 0x43583c: r1 = pp[0x5c58]
    //     0x43583c: ldr          r1, [PP, #0x5c58]
    // 0x435840: r0 = call 0x61e854
    //     0x435840: bl           0x61e854
    // 0x435844: r1 = r0
    //     0x435844: mov          r1, r0
    //     0x435848: ldur         r0, [fp, #-0x10]
    //     0x43584c: stur         r1, [fp, #-8]
    // 0x435850: StoreField: r1->field_f = r0
    //     0x435850: stur         r0, [r1, #0xf]
    //     0x435854: mov          r0, #8
    // 0x435858: StoreField: r1->field_b = r0
    //     0x435858: stur         r0, [r1, #0xb]
    // 0x43585c: r0 = call 0x3a1414
    //     0x43585c: bl           0x3a1414
    // 0x435860: r1 = r0
    //     0x435860: mov          r1, r0
    // 0x435864: r0 = pp[0x5140]
    //     0x435864: ldr          r0, [PP, #0x5140]
    //     0x435868: stur         r1, [fp, #-0x10]
    // 0x43586c: StoreField: r1->field_f = r0
    //     0x43586c: stur         r0, [r1, #0xf]
    // 0x435870: r0 = pp[0xaee]
    //     0x435870: add          r0, PP, #0xe, lsl #12
    //     0x435874: ldr          r0, [r0, #0xae0]
    // 0x435878: StoreField: r1->field_13 = r0
    //     0x435878: stur         r0, [r1, #0x13]
    // 0x43587c: r0 = pp[0xaf6]
    //     0x43587c: add          r0, PP, #0xe, lsl #12
    //     0x435880: ldr          r0, [r0, #0xae8]
    // 0x435884: ArrayStore: r1[0] = r0  ; List_8
    //     0x435884: stur         r0, [r1, #0x17]
    // 0x435888: r0 = pp[0xb6e]
    //     0x435888: add          r0, PP, #0xe, lsl #12
    //     0x43588c: ldr          r0, [r0, #0xb60]
    // 0x435890: StoreField: r1->field_1b = r0
    //     0x435890: stur         r0, [r1, #0x1b]
    // 0x435894: r0 = pp[0xb06]
    //     0x435894: add          r0, PP, #0xe, lsl #12
    //     0x435898: ldr          r0, [r0, #0xaf8]
    // 0x43589c: StoreField: r1->field_23 = r0
    //     0x43589c: stur         r0, [r1, #0x23]
    // 0x4358a0: r0 = pp[0xb2]
    //     0x4358a0: add          r0, PP, #0xa, lsl #12
    //     0x4358a4: ldr          r0, [r0, #0xa8]
    // 0x4358a8: StoreField: r1->field_2b = r0
    //     0x4358a8: stur         r0, [r1, #0x2b]
    // 0x4358ac: StoreField: r1->field_2f = xzr
    //     0x4358ac: stur         xzr, [r1, #0x2f]
    //     0x4358b0: ldur         r0, [fp, #-8]
    // 0x4358b4: StoreField: r1->field_b = r0
    //     0x4358b4: stur         r0, [r1, #0xb]
    // 0x4358b8: r0 = call 0x391a04
    //     0x4358b8: bl           0x391a04
    //     0x4358bc: stur         r0, [fp, #-8]
    // 0x4358c0: BARRIER = pp[0x31f]
    //     0x4358c0: add          BARRIER, PP, #0xf, lsl #12
    //     0x4358c4: ldr          BARRIER, [BARRIER, #0x310]
    //     0x4358c8: ldur         lr, [fp, #-0x10]
    //     0x4358cc: stp          lr, BARRIER, [SP]
    // 0x4358d0: r1 = r0
    //     0x4358d0: mov          r1, r0
    // 0x4358d4: r4 = pp[0x5ff]
    //     0x4358d4: add          r4, PP, #0xf, lsl #12
    //     0x4358d8: ldr          r4, [r4, #0x5f0]
    // 0x4358dc: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4358dc: bl           0x391490
    //     0x4358e0: ldur         r0, [fp, #-8]
    // 0x4358e4: SP = fp
    //     0x4358e4: mov          SP, fp
    // 0x4358e8: LeaveFrame
    //     0x4358e8: ldp          fp, lr, [SP], #0x10
    // 0x4358ec: ret
    //     0x4358ec: ret          
    // 0x4358f0: r0 = call 0x61fa28
    //     0x4358f0: bl           0x61fa28
    // 0x4358f4: b 0x4354fc
    //     0x4358f4: b            0x4354fc
  }

  _titleLabelWidget() {
    // ** addr: 0x4358f8, size: 0x36c
    // 0x4358f8: EnterFrame
    //     0x4358f8: stp          fp, lr, [SP, #-0x10]!
    //     0x4358fc: mov          fp, SP
    // 0x435900: AllocStack(0x58)
    //     0x435900: sub          SP, SP, #0x58
    //     0x435904: stur         r2, [fp, #-8]
    // 0x435908: CheckStackOverflow
    //     0x435908: ldr          BARRIER, [THR, #0x38]
    //     0x43590c: cmp          SP, BARRIER
    //     0x435910: b.ls         0x435c5c
    // 0x435914: r0 = call 0x352b04
    //     0x435914: bl           0x352b04
    //     0x435918: fmov         d0, #8.00000000
    //     0x43591c: stur         r0, [fp, #-0x10]
    // 0x435920: StoreField: r0->field_7 = d0
    //     0x435920: stur         d0, [r0, #7]
    // 0x435924: StoreField: r0->field_f = d0
    //     0x435924: stur         d0, [r0, #0xf]
    // 0x435928: r0 = call 0x392f28
    //     0x435928: bl           0x392f28
    // 0x43592c: r1 = r0
    //     0x43592c: mov          r1, r0
    //     0x435930: ldur         r0, [fp, #-0x10]
    //     0x435934: stur         r1, [fp, #-0x18]
    // 0x435938: StoreField: r1->field_7 = r0
    //     0x435938: stur         r0, [r1, #7]
    // 0x43593c: StoreField: r1->field_b = r0
    //     0x43593c: stur         r0, [r1, #0xb]
    // 0x435940: StoreField: r1->field_f = r0
    //     0x435940: stur         r0, [r1, #0xf]
    // 0x435944: StoreField: r1->field_13 = r0
    //     0x435944: stur         r0, [r1, #0x13]
    // 0x435948: r0 = call 0x31d844
    //     0x435948: bl           0x31d844
    // 0x43594c: r1 = r0
    //     0x43594c: mov          r1, r0
    // 0x435950: r0 = pp[0x6310]
    //     0x435950: ldr          r0, [PP, #0x6310]
    //     0x435954: stur         r1, [fp, #-0x10]
    // 0x435958: StoreField: r1->field_27 = r0
    //     0x435958: stur         r0, [r1, #0x27]
    //     0x43595c: fmov         d0, #1.00000000
    // 0x435960: StoreField: r1->field_7 = d0
    //     0x435960: stur         d0, [r1, #7]
    // 0x435964: d0 = pp[0x4b5]
    //     0x435964: add          r17, PP, #0x15, lsl #12
    //     0x435968: ldr          d0, [r17, #0x4a0]
    // 0x43596c: StoreField: r1->field_f = d0
    //     0x43596c: stur         d0, [r1, #0xf]
    // 0x435970: ArrayStore: r1[0] = xzr  ; List_8
    //     0x435970: stur         xzr, [r1, #0x17]
    // 0x435974: d0 = pp[0x4bd]
    //     0x435974: add          r17, PP, #0x15, lsl #12
    //     0x435978: ldr          d0, [r17, #0x4a8]
    // 0x43597c: StoreField: r1->field_1f = d0
    //     0x43597c: stur         d0, [r1, #0x1f]
    // 0x435980: r0 = call 0x391dd8
    //     0x435980: bl           0x391dd8
    // 0x435984: r1 = r0
    //     0x435984: mov          r1, r0
    //     0x435988: ldur         r0, [fp, #-0x10]
    //     0x43598c: stur         r1, [fp, #-0x20]
    // 0x435990: StoreField: r1->field_7 = r0
    //     0x435990: stur         r0, [r1, #7]
    //     0x435994: ldur         r0, [fp, #-0x18]
    // 0x435998: StoreField: r1->field_13 = r0
    //     0x435998: stur         r0, [r1, #0x13]
    // 0x43599c: r0 = pp[0xb86]
    //     0x43599c: add          r0, PP, #0xe, lsl #12
    //     0x4359a0: ldr          r0, [r0, #0xb78]
    // 0x4359a4: StoreField: r1->field_23 = r0
    //     0x4359a4: stur         r0, [r1, #0x23]
    // 0x4359a8: r0 = call 0x2e3578
    //     0x4359a8: bl           0x2e3578
    //     0x4359ac: fmov         d0, #10.00000000
    //     0x4359b0: stur         r0, [fp, #-0x10]
    // 0x4359b4: StoreField: r0->field_7 = d0
    //     0x4359b4: stur         d0, [r0, #7]
    // 0x4359b8: StoreField: r0->field_f = xzr
    //     0x4359b8: stur         xzr, [r0, #0xf]
    // 0x4359bc: ArrayStore: r0[0] = xzr  ; List_8
    //     0x4359bc: stur         xzr, [r0, #0x17]
    // 0x4359c0: StoreField: r0->field_1f = xzr
    //     0x4359c0: stur         xzr, [r0, #0x1f]
    // 0x4359c4: r0 = call 0x3a142c
    //     0x4359c4: bl           0x3a142c
    // 0x4359c8: r1 = r0
    //     0x4359c8: mov          r1, r0
    // 0x4359cc: r0 = pp[0x4c5]
    //     0x4359cc: add          r0, PP, #0x15, lsl #12
    //     0x4359d0: ldr          r0, [r0, #0x4b0]
    //     0x4359d4: stur         r1, [fp, #-0x18]
    // 0x4359d8: StoreField: r1->field_b = r0
    //     0x4359d8: stur         r0, [r1, #0xb]
    // 0x4359dc: r0 = pp[0x17f]
    //     0x4359dc: add          r0, PP, #0xf, lsl #12
    //     0x4359e0: ldr          r0, [r0, #0x170]
    // 0x4359e4: StoreField: r1->field_f = r0
    //     0x4359e4: stur         r0, [r1, #0xf]
    // 0x4359e8: r2 = pp[0xb5e]
    //     0x4359e8: add          r2, PP, #0xe, lsl #12
    //     0x4359ec: ldr          r2, [r2, #0xb50]
    // 0x4359f0: StoreField: r1->field_13 = r2
    //     0x4359f0: stur         r2, [r1, #0x13]
    // 0x4359f4: r3 = pp[0x237]
    //     0x4359f4: add          r3, PP, #0xf, lsl #12
    //     0x4359f8: ldr          r3, [r3, #0x228]
    // 0x4359fc: ArrayStore: r1[0] = r3  ; List_8
    //     0x4359fc: stur         r3, [r1, #0x17]
    // 0x435a00: r0 = call 0x391a04
    //     0x435a00: bl           0x391a04
    //     0x435a04: stur         r0, [fp, #-0x28]
    //     0x435a08: ldur         BARRIER, [fp, #-0x10]
    //     0x435a0c: ldur         lr, [fp, #-0x18]
    //     0x435a10: stp          lr, BARRIER, [SP]
    // 0x435a14: r1 = r0
    //     0x435a14: mov          r1, r0
    // 0x435a18: r4 = pp[0x20f]
    //     0x435a18: add          r4, PP, #0xf, lsl #12
    //     0x435a1c: ldr          r4, [r4, #0x200]
    // 0x435a20: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x435a20: bl           0x391490
    // 0x435a24: r0 = call 0x3949ec
    //     0x435a24: bl           0x3949ec
    // 0x435a28: r1 = r0
    //     0x435a28: mov          r1, r0
    // 0x435a2c: r0 = pp[0xbc7]
    //     0x435a2c: add          r0, PP, #0xf, lsl #12
    //     0x435a30: ldr          r0, [r0, #0xbb8]
    //     0x435a34: stur         r1, [fp, #-0x10]
    // 0x435a38: StoreField: r1->field_f = r0
    //     0x435a38: stur         r0, [r1, #0xf]
    // 0x435a3c: r0 = call 0x31abec
    //     0x435a3c: bl           0x31abec
    // 0x435a40: r1 = r0
    //     0x435a40: mov          r1, r0
    //     0x435a44: add          r0, NULL, #0x20
    //     0x435a48: stur         r1, [fp, #-0x18]
    // 0x435a4c: StoreField: r1->field_7 = r0
    //     0x435a4c: stur         r0, [r1, #7]
    // 0x435a50: r0 = pp[0x6050]
    //     0x435a50: ldr          r0, [PP, #0x6050]
    // 0x435a54: StoreField: r1->field_b = r0
    //     0x435a54: stur         r0, [r1, #0xb]
    // 0x435a58: r0 = pp[0x217]
    //     0x435a58: add          r0, PP, #0xf, lsl #12
    //     0x435a5c: ldr          r0, [r0, #0x208]
    // 0x435a60: StoreField: r1->field_1f = r0
    //     0x435a60: stur         r0, [r1, #0x1f]
    // 0x435a64: r0 = pp[0xe4e]
    //     0x435a64: add          r0, PP, #0xe, lsl #12
    //     0x435a68: ldr          r0, [r0, #0xe40]
    // 0x435a6c: StoreField: r1->field_23 = r0
    //     0x435a6c: stur         r0, [r1, #0x23]
    // 0x435a70: r0 = call 0x393bf8
    //     0x435a70: bl           0x393bf8
    // 0x435a74: r2 = r0
    //     0x435a74: mov          r2, r0
    //     0x435a78: ldur         r0, [fp, #-8]
    //     0x435a7c: stur         r2, [fp, #-0x30]
    // 0x435a80: StoreField: r2->field_b = r0
    //     0x435a80: stur         r0, [r2, #0xb]
    //     0x435a84: ldur         r0, [fp, #-0x18]
    // 0x435a88: StoreField: r2->field_13 = r0
    //     0x435a88: stur         r0, [r2, #0x13]
    // 0x435a8c: r0 = pp[0x23f]
    //     0x435a8c: add          r0, PP, #0xf, lsl #12
    //     0x435a90: ldr          r0, [r0, #0x230]
    // 0x435a94: StoreField: r2->field_2b = r0
    //     0x435a94: stur         r0, [r2, #0x2b]
    //     0x435a98: mov          r0, #2
    // 0x435a9c: StoreField: r2->field_37 = r0
    //     0x435a9c: stur         r0, [r2, #0x37]
    // 0x435aa0: r1 = pp[0xade]
    //     0x435aa0: add          r1, PP, #0xe, lsl #12
    //     0x435aa4: ldr          r1, [r1, #0xad0]
    // 0x435aa8: r0 = call 0x3a1420
    //     0x435aa8: bl           0x3a1420
    // 0x435aac: r1 = r0
    //     0x435aac: mov          r1, r0
    //     0x435ab0: mov          r0, #1
    //     0x435ab4: stur         r1, [fp, #-8]
    // 0x435ab8: StoreField: r1->field_13 = r0
    //     0x435ab8: stur         r0, [r1, #0x13]
    // 0x435abc: r0 = pp[0x960]
    //     0x435abc: add          r0, PP, #0x10, lsl #12
    //     0x435ac0: ldr          r0, [r0, #0x950]
    // 0x435ac4: StoreField: r1->field_1b = r0
    //     0x435ac4: stur         r0, [r1, #0x1b]
    //     0x435ac8: ldur         r0, [fp, #-0x30]
    // 0x435acc: StoreField: r1->field_b = r0
    //     0x435acc: stur         r0, [r1, #0xb]
    // 0x435ad0: r0 = call 0x3949ec
    //     0x435ad0: bl           0x3949ec
    // 0x435ad4: r1 = r0
    //     0x435ad4: mov          r1, r0
    // 0x435ad8: r0 = pp[0xbc7]
    //     0x435ad8: add          r0, PP, #0xf, lsl #12
    //     0x435adc: ldr          r0, [r0, #0xbb8]
    //     0x435ae0: stur         r1, [fp, #-0x18]
    // 0x435ae4: StoreField: r1->field_f = r0
    //     0x435ae4: stur         r0, [r1, #0xf]
    // 0x435ae8: r0 = call 0x2e3578
    //     0x435ae8: bl           0x2e3578
    //     0x435aec: stur         r0, [fp, #-0x30]
    // 0x435af0: StoreField: r0->field_7 = xzr
    //     0x435af0: stur         xzr, [r0, #7]
    // 0x435af4: StoreField: r0->field_f = xzr
    //     0x435af4: stur         xzr, [r0, #0xf]
    //     0x435af8: fmov         d0, #10.00000000
    // 0x435afc: ArrayStore: r0[0] = d0  ; List_8
    //     0x435afc: stur         d0, [r0, #0x17]
    // 0x435b00: StoreField: r0->field_1f = xzr
    //     0x435b00: stur         xzr, [r0, #0x1f]
    // 0x435b04: r0 = call 0x3a142c
    //     0x435b04: bl           0x3a142c
    // 0x435b08: r1 = r0
    //     0x435b08: mov          r1, r0
    // 0x435b0c: r0 = pp[0x4cd]
    //     0x435b0c: add          r0, PP, #0x15, lsl #12
    //     0x435b10: ldr          r0, [r0, #0x4b8]
    //     0x435b14: stur         r1, [fp, #-0x38]
    // 0x435b18: StoreField: r1->field_b = r0
    //     0x435b18: stur         r0, [r1, #0xb]
    // 0x435b1c: r0 = pp[0x17f]
    //     0x435b1c: add          r0, PP, #0xf, lsl #12
    //     0x435b20: ldr          r0, [r0, #0x170]
    // 0x435b24: StoreField: r1->field_f = r0
    //     0x435b24: stur         r0, [r1, #0xf]
    // 0x435b28: r0 = pp[0xb5e]
    //     0x435b28: add          r0, PP, #0xe, lsl #12
    //     0x435b2c: ldr          r0, [r0, #0xb50]
    // 0x435b30: StoreField: r1->field_13 = r0
    //     0x435b30: stur         r0, [r1, #0x13]
    // 0x435b34: r0 = pp[0x237]
    //     0x435b34: add          r0, PP, #0xf, lsl #12
    //     0x435b38: ldr          r0, [r0, #0x228]
    // 0x435b3c: ArrayStore: r1[0] = r0  ; List_8
    //     0x435b3c: stur         r0, [r1, #0x17]
    // 0x435b40: r0 = call 0x391a04
    //     0x435b40: bl           0x391a04
    //     0x435b44: stur         r0, [fp, #-0x40]
    //     0x435b48: ldur         BARRIER, [fp, #-0x30]
    //     0x435b4c: ldur         lr, [fp, #-0x38]
    //     0x435b50: stp          lr, BARRIER, [SP]
    // 0x435b54: r1 = r0
    //     0x435b54: mov          r1, r0
    // 0x435b58: r4 = pp[0x20f]
    //     0x435b58: add          r4, PP, #0xf, lsl #12
    //     0x435b5c: ldr          r4, [r4, #0x200]
    // 0x435b60: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x435b60: bl           0x391490
    // 0x435b64: r1 = NULL
    //     0x435b64: mov          r1, NULL
    //     0x435b68: mov          r2, #0xa
    // 0x435b6c: r0 = call 0x61f920
    //     0x435b6c: bl           0x61f920
    // 0x435b70: r2 = r0
    //     0x435b70: mov          r2, r0
    //     0x435b74: ldur         r0, [fp, #-0x28]
    //     0x435b78: stur         r2, [fp, #-0x30]
    // 0x435b7c: StoreField: r2->field_f = r0
    //     0x435b7c: stur         r0, [r2, #0xf]
    //     0x435b80: ldur         r0, [fp, #-0x10]
    // 0x435b84: StoreField: r2->field_13 = r0
    //     0x435b84: stur         r0, [r2, #0x13]
    //     0x435b88: ldur         r0, [fp, #-8]
    // 0x435b8c: ArrayStore: r2[0] = r0  ; List_8
    //     0x435b8c: stur         r0, [r2, #0x17]
    //     0x435b90: ldur         r0, [fp, #-0x18]
    // 0x435b94: StoreField: r2->field_1b = r0
    //     0x435b94: stur         r0, [r2, #0x1b]
    //     0x435b98: ldur         r0, [fp, #-0x40]
    // 0x435b9c: StoreField: r2->field_1f = r0
    //     0x435b9c: stur         r0, [r2, #0x1f]
    // 0x435ba0: r1 = pp[0x5c58]
    //     0x435ba0: ldr          r1, [PP, #0x5c58]
    // 0x435ba4: r0 = call 0x61e854
    //     0x435ba4: bl           0x61e854
    // 0x435ba8: r1 = r0
    //     0x435ba8: mov          r1, r0
    //     0x435bac: ldur         r0, [fp, #-0x30]
    //     0x435bb0: stur         r1, [fp, #-8]
    // 0x435bb4: StoreField: r1->field_f = r0
    //     0x435bb4: stur         r0, [r1, #0xf]
    //     0x435bb8: mov          r0, #0xa
    // 0x435bbc: StoreField: r1->field_b = r0
    //     0x435bbc: stur         r0, [r1, #0xb]
    // 0x435bc0: r0 = call 0x3a1414
    //     0x435bc0: bl           0x3a1414
    // 0x435bc4: r1 = r0
    //     0x435bc4: mov          r1, r0
    // 0x435bc8: r0 = pp[0x5140]
    //     0x435bc8: ldr          r0, [PP, #0x5140]
    //     0x435bcc: stur         r1, [fp, #-0x10]
    // 0x435bd0: StoreField: r1->field_f = r0
    //     0x435bd0: stur         r0, [r1, #0xf]
    // 0x435bd4: r0 = pp[0x297]
    //     0x435bd4: add          r0, PP, #0xf, lsl #12
    //     0x435bd8: ldr          r0, [r0, #0x288]
    // 0x435bdc: StoreField: r1->field_13 = r0
    //     0x435bdc: stur         r0, [r1, #0x13]
    // 0x435be0: r0 = pp[0xb16]
    //     0x435be0: add          r0, PP, #0xe, lsl #12
    //     0x435be4: ldr          r0, [r0, #0xb08]
    // 0x435be8: ArrayStore: r1[0] = r0  ; List_8
    //     0x435be8: stur         r0, [r1, #0x17]
    // 0x435bec: r0 = pp[0xb6e]
    //     0x435bec: add          r0, PP, #0xe, lsl #12
    //     0x435bf0: ldr          r0, [r0, #0xb60]
    // 0x435bf4: StoreField: r1->field_1b = r0
    //     0x435bf4: stur         r0, [r1, #0x1b]
    // 0x435bf8: r0 = pp[0xb06]
    //     0x435bf8: add          r0, PP, #0xe, lsl #12
    //     0x435bfc: ldr          r0, [r0, #0xaf8]
    // 0x435c00: StoreField: r1->field_23 = r0
    //     0x435c00: stur         r0, [r1, #0x23]
    // 0x435c04: r0 = pp[0xb2]
    //     0x435c04: add          r0, PP, #0xa, lsl #12
    //     0x435c08: ldr          r0, [r0, #0xa8]
    // 0x435c0c: StoreField: r1->field_2b = r0
    //     0x435c0c: stur         r0, [r1, #0x2b]
    // 0x435c10: StoreField: r1->field_2f = xzr
    //     0x435c10: stur         xzr, [r1, #0x2f]
    //     0x435c14: ldur         r0, [fp, #-8]
    // 0x435c18: StoreField: r1->field_b = r0
    //     0x435c18: stur         r0, [r1, #0xb]
    // 0x435c1c: r0 = call 0x391a04
    //     0x435c1c: bl           0x391a04
    //     0x435c20: stur         r0, [fp, #-8]
    // 0x435c24: BARRIER = pp[0x572]
    //     0x435c24: add          BARRIER, PP, #0x12, lsl #12
    //     0x435c28: ldr          BARRIER, [BARRIER, #0x560]
    //     0x435c2c: ldur         lr, [fp, #-0x20]
    //     0x435c30: stp          lr, BARRIER, [SP, #8]
    //     0x435c34: ldur         BARRIER, [fp, #-0x10]
    //     0x435c38: str          BARRIER, [SP]
    // 0x435c3c: r1 = r0
    //     0x435c3c: mov          r1, r0
    // 0x435c40: r4 = pp[0x4d5]
    //     0x435c40: add          r4, PP, #0x15, lsl #12
    //     0x435c44: ldr          r4, [r4, #0x4c0]
    // 0x435c48: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x435c48: bl           0x391490
    //     0x435c4c: ldur         r0, [fp, #-8]
    // 0x435c50: SP = fp
    //     0x435c50: mov          SP, fp
    // 0x435c54: LeaveFrame
    //     0x435c54: ldp          fp, lr, [SP], #0x10
    // 0x435c58: ret
    //     0x435c58: ret          
    // 0x435c5c: r0 = call 0x61fa28
    //     0x435c5c: bl           0x61fa28
    // 0x435c60: b 0x435914
    //     0x435c60: b            0x435914
  }

  _anon_closure() {
    // ** addr: 0x435c64, size: 0xf0
    // 0x435c64: EnterFrame
    //     0x435c64: stp          fp, lr, [SP, #-0x10]!
    //     0x435c68: mov          fp, SP
    // 0x435c6c: AllocStack(0x28)
    //     0x435c6c: sub          SP, SP, #0x28
    //     0x435c70: ldr          r0, [fp, #0x10]
    // 0x435c74: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x435c74: ldur         r1, [r0, #0x17]
    //     0x435c78: add          r1, r1, HEAP, lsl #32
    // 0x435c7c: CheckStackOverflow
    //     0x435c7c: ldr          BARRIER, [THR, #0x38]
    //     0x435c80: cmp          SP, BARRIER
    //     0x435c84: b.ls         0x435d48
    // 0x435c88: LoadField: r0 = r1->field_f
    //     0x435c88: ldur         r0, [r1, #0xf]
    //     0x435c8c: add          r0, r0, HEAP, lsl #32
    // 0x435c90: LoadField: r1 = r0->field_f
    //     0x435c90: ldur         r1, [r0, #0xf]
    //     0x435c94: add          r1, r1, HEAP, lsl #32
    //     0x435c98: cmp          r1, r22
    // 0x435c9c: b.eq 0x435d50
    //     0x435c9c: b.eq         0x435d50
    // 0x435ca0: r4 = pp[0x4c0]
    //     0x435ca0: ldr          r4, [PP, #0x4c0]
    // 0x435ca4: r0 = flutter$src$widgets$navigator_Navigator::of()
    //     0x435ca4: bl           0x3a4e94
    //     0x435ca8: stur         r0, [fp, #-8]
    // 0x435cac: r1 = LoadClassIdInstr(r0)
    //     0x435cac: ldur         r1, [r0, #-1]
    //     0x435cb0: ubfx         r1, r1, #0xc, #0x14
    //     0x435cb4: cmp          r1, #0x8e7
    // 0x435cb8: b.ne 0x435d14
    //     0x435cb8: b.ne         0x435d14
    // 0x435cbc: r1 = r0
    //     0x435cbc: mov          r1, r0
    // 0x435cc0: r0 = flutter$src$widgets$navigator_NavigatorState::canPop()
    //     0x435cc0: bl           0x3a4d94
    //     0x435cc4: tbz          r0, #4, 0x435cf8
    // 0x435cc8: r0 = flutter_boost$src$boost_navigator_BoostNavigator::get_instance()
    //     0x435cc8: bl           0x3a4c98
    //     0x435ccc: stur         r0, [fp, #-0x10]
    // 0x435cd0: CheckStackOverflow
    //     0x435cd0: ldr          BARRIER, [THR, #0x90]
    //     0x435cd4: stp          BARRIER, NULL, [SP]
    // 0x435cd8: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x435cd8: bl           0x27c0c8
    // 0x435cdc: BARRIER = pp[0x120]
    //     0x435cdc: ldr          BARRIER, [PP, #0x120]
    //     0x435ce0: ldur         lr, [fp, #-0x10]
    //     0x435ce4: stp          lr, BARRIER, [SP, #8]
    //     0x435ce8: str          r0, [SP]
    // 0x435cec: r4 = pp[0x58]
    //     0x435cec: ldr          r4, [PP, #0x58]
    // 0x435cf0: r0 = flutter_boost$src$boost_navigator_BoostNavigator::pop()
    //     0x435cf0: bl           0x3a264c
    // 0x435cf4: b 0x435d38
    //     0x435cf4: b            0x435d38
    // 0x435cf8: BARRIER = pp[0x1a8]
    //     0x435cf8: ldr          BARRIER, [PP, #0x1a8]
    //     0x435cfc: ldur         lr, [fp, #-8]
    //     0x435d00: stp          lr, BARRIER, [SP, #8]
    //     0x435d04: str          NULL, [SP]
    // 0x435d08: r4 = pp[0x58]
    //     0x435d08: ldr          r4, [PP, #0x58]
    // 0x435d0c: r0 = flutter$src$widgets$navigator_NavigatorState::pop()
    //     0x435d0c: bl           0x5e0d74
    // 0x435d10: b 0x435d38
    //     0x435d10: b            0x435d38
    // 0x435d14: r1 = LoadClassIdInstr(r0)
    //     0x435d14: ldur         r1, [r0, #-1]
    //     0x435d18: ubfx         r1, r1, #0xc, #0x14
    // 0x435d1c: BARRIER = pp[0x1a8]
    //     0x435d1c: ldr          BARRIER, [PP, #0x1a8]
    //     0x435d20: stp          r0, BARRIER, [SP]
    // 0x435d24: r0 = r1
    //     0x435d24: mov          r0, r1
    // 0x435d28: r4 = pp[0x910]
    //     0x435d28: ldr          r4, [PP, #0x910]
    //     0x435d2c: sub          lr, r0, #1, lsl #12
    //     0x435d30: ldr          lr, [r21, lr, lsl #3]
    // 0x435d34: r0 = [R]()
    //     0x435d34: blr          lr
    // 0x435d38: r0 = NULL
    //     0x435d38: mov          r0, NULL
    // 0x435d3c: SP = fp
    //     0x435d3c: mov          SP, fp
    // 0x435d40: LeaveFrame
    //     0x435d40: ldp          fp, lr, [SP], #0x10
    // 0x435d44: ret
    //     0x435d44: ret          
    // 0x435d48: r0 = call 0x61fa28
    //     0x435d48: bl           0x61fa28
    // 0x435d4c: b 0x435c88
    //     0x435d4c: b            0x435c88
    // 0x435d50: r0 = call 0x61ffd0
    //     0x435d50: bl           0x61ffd0
  }

  _anon_closure() {
    // ** addr: 0x435d54, size: 0x60
    // 0x435d54: EnterFrame
    //     0x435d54: stp          fp, lr, [SP, #-0x10]!
    //     0x435d58: mov          fp, SP
    // 0x435d5c: AllocStack(8)
    //     0x435d5c: sub          SP, SP, #8
    //     0x435d60: ldr          r0, [fp, #0x10]
    // 0x435d64: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x435d64: ldur         r2, [r0, #0x17]
    //     0x435d68: add          r2, r2, HEAP, lsl #32
    // 0x435d6c: CheckStackOverflow
    //     0x435d6c: ldr          BARRIER, [THR, #0x38]
    //     0x435d70: cmp          SP, BARRIER
    //     0x435d74: b.ls         0x435dac
    // 0x435d78: ArrayLoad: r0 = r2[0]  ; List_8
    //     0x435d78: ldur         r0, [r2, #0x17]
    //     0x435d7c: add          r0, r0, HEAP, lsl #32
    //     0x435d80: stur         r0, [fp, #-8]
    // 0x435d84: r1 = pp[0x3e5]
    //     0x435d84: add          r1, PP, #0x15, lsl #12
    //     0x435d88: ldr          r1, [r1, #0x3d0]
    // 0x435d8c: r0 = call 0x61ec54
    //     0x435d8c: bl           0x61ec54
    //     0x435d90: ldur         r1, [fp, #-8]
    // 0x435d94: r2 = r0
    //     0x435d94: mov          r2, r0
    // 0x435d98: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_bet_record_dialog_GameFruitBetRecordNotifier::requestGameFruitDialogList()
    //     0x435d98: bl           0x435db4
    // 0x435d9c: r0 = NULL
    //     0x435d9c: mov          r0, NULL
    // 0x435da0: SP = fp
    //     0x435da0: mov          SP, fp
    // 0x435da4: LeaveFrame
    //     0x435da4: ldp          fp, lr, [SP], #0x10
    // 0x435da8: ret
    //     0x435da8: ret          
    // 0x435dac: r0 = call 0x61fa28
    //     0x435dac: bl           0x61fa28
    // 0x435db0: b 0x435d78
    //     0x435db0: b            0x435d78
  }

  _anon_closure() {
    // ** addr: 0x43650c, size: 0x80
    // 0x43650c: EnterFrame
    //     0x43650c: stp          fp, lr, [SP, #-0x10]!
    //     0x436510: mov          fp, SP
    //     0x436514: ldr          r0, [fp, #0x20]
    // 0x436518: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x436518: ldur         r1, [r0, #0x17]
    //     0x43651c: add          r1, r1, HEAP, lsl #32
    // 0x436520: CheckStackOverflow
    //     0x436520: ldr          BARRIER, [THR, #0x38]
    //     0x436524: cmp          SP, BARRIER
    //     0x436528: b.ls         0x436584
    //     0x43652c: ldr          r0, [fp, #0x18]
    //     0x436530: tbnz         r0, #4, 0x436564
    //     0x436534: ldr          r0, [fp, #0x10]
    //     0x436538: tbnz         r0, #4, 0x436550
    // 0x43653c: LoadField: r0 = r1->field_1b
    //     0x43653c: ldur         r0, [r1, #0x1b]
    //     0x436540: add          r0, r0, HEAP, lsl #32
    // 0x436544: r1 = r0
    //     0x436544: mov          r1, r0
    // 0x436548: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadNoData()
    //     0x436548: bl           0x3adfd4
    // 0x43654c: b 0x436574
    //     0x43654c: b            0x436574
    // 0x436550: LoadField: r0 = r1->field_1b
    //     0x436550: ldur         r0, [r1, #0x1b]
    //     0x436554: add          r0, r0, HEAP, lsl #32
    // 0x436558: r1 = r0
    //     0x436558: mov          r1, r0
    // 0x43655c: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadComplete()
    //     0x43655c: bl           0x3ade48
    // 0x436560: b 0x436574
    //     0x436560: b            0x436574
    // 0x436564: LoadField: r0 = r1->field_1b
    //     0x436564: ldur         r0, [r1, #0x1b]
    //     0x436568: add          r0, r0, HEAP, lsl #32
    // 0x43656c: r1 = r0
    //     0x43656c: mov          r1, r0
    // 0x436570: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadFailed()
    //     0x436570: bl           0x3adbb4
    // 0x436574: r0 = NULL
    //     0x436574: mov          r0, NULL
    // 0x436578: SP = fp
    //     0x436578: mov          SP, fp
    // 0x43657c: LeaveFrame
    //     0x43657c: ldp          fp, lr, [SP], #0x10
    // 0x436580: ret
    //     0x436580: ret          
    // 0x436584: r0 = call 0x61fa28
    //     0x436584: bl           0x61fa28
    // 0x436588: b 0x43652c
    //     0x436588: b            0x43652c
  }

  _anon_closure() {
    // ** addr: 0x438eb8, size: 0x224
    // 0x438eb8: EnterFrame
    //     0x438eb8: stp          fp, lr, [SP, #-0x10]!
    //     0x438ebc: mov          fp, SP
    // 0x438ec0: AllocStack(0x30)
    //     0x438ec0: sub          SP, SP, #0x30
    //     0x438ec4: ldr          r0, [fp, #0x20]
    // 0x438ec8: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x438ec8: ldur         r2, [r0, #0x17]
    //     0x438ecc: add          r2, r2, HEAP, lsl #32
    //     0x438ed0: stur         r2, [fp, #-0x18]
    // 0x438ed4: CheckStackOverflow
    //     0x438ed4: ldr          BARRIER, [THR, #0x38]
    //     0x438ed8: cmp          SP, BARRIER
    //     0x438edc: b.ls         0x4390d0
    // 0x438ee0: LoadField: r3 = r2->field_13
    //     0x438ee0: ldur         r3, [r2, #0x13]
    //     0x438ee4: add          r3, r3, HEAP, lsl #32
    // 0x438ee8: LoadField: r0 = r3->field_b
    //     0x438ee8: ldur         r0, [r3, #0xb]
    //     0x438eec: ldr          r1, [fp, #0x10]
    //     0x438ef0: sbfx         r4, r1, #1, #0x1f
    // 0x438ef4: branchIfSmi(r1, 0x438efc)
    //     0x438ef4: tbz          r1, #0, 0x438efc
    // 0x438ef8: LoadField: r4 = r1->field_7
    //     0x438ef8: ldur         r4, [r1, #7]
    //     0x438efc: stur         r4, [fp, #-0x10]
    //     0x438f00: sbfx         r1, r0, #1, #0x1f
    // 0x438f04: r0 = r1
    //     0x438f04: mov          r0, r1
    // 0x438f08: r1 = r4
    //     0x438f08: mov          r1, r4
    //     0x438f0c: cmp          r1, r0
    // 0x438f10: b.hs 0x4390d8
    //     0x438f10: b.hs         0x4390d8
    // 0x438f14: LoadField: r0 = r3->field_f
    //     0x438f14: ldur         r0, [r3, #0xf]
    //     0x438f18: add          r0, r0, HEAP, lsl #32
    //     0x438f1c: add          BARRIER, r0, r4, lsl #2
    // 0x438f20: LoadField: r1 = BARRIER->field_f
    //     0x438f20: ldur         r1, [BARRIER, #0xf]
    //     0x438f24: add          r1, r1, HEAP, lsl #32
    //     0x438f28: stur         r1, [fp, #-8]
    // 0x438f2c: LoadField: r0 = r2->field_1f
    //     0x438f2c: ldur         r0, [r2, #0x1f]
    //     0x438f30: add          r3, r4, #1
    //     0x438f34: sbfx         r5, r0, #1, #0x1f
    //     0x438f38: cmp          r5, r3
    // 0x438f3c: b.ne 0x438f98
    //     0x438f3c: b.ne         0x438f98
    // 0x438f40: r0 = call 0x352b04
    //     0x438f40: bl           0x352b04
    //     0x438f44: fmov         d0, #16.00000000
    //     0x438f48: stur         r0, [fp, #-0x20]
    // 0x438f4c: StoreField: r0->field_7 = d0
    //     0x438f4c: stur         d0, [r0, #7]
    // 0x438f50: StoreField: r0->field_f = d0
    //     0x438f50: stur         d0, [r0, #0xf]
    // 0x438f54: r0 = call 0x352b04
    //     0x438f54: bl           0x352b04
    //     0x438f58: fmov         d0, #16.00000000
    //     0x438f5c: stur         r0, [fp, #-0x28]
    // 0x438f60: StoreField: r0->field_7 = d0
    //     0x438f60: stur         d0, [r0, #7]
    // 0x438f64: StoreField: r0->field_f = d0
    //     0x438f64: stur         d0, [r0, #0xf]
    // 0x438f68: r0 = call 0x392f28
    //     0x438f68: bl           0x392f28
    // 0x438f6c: r1 = r0
    //     0x438f6c: mov          r1, r0
    // 0x438f70: r0 = pp[0x51a]
    //     0x438f70: add          r0, PP, #0xa, lsl #12
    //     0x438f74: ldr          r0, [r0, #0x510]
    // 0x438f78: StoreField: r1->field_7 = r0
    //     0x438f78: stur         r0, [r1, #7]
    // 0x438f7c: StoreField: r1->field_b = r0
    //     0x438f7c: stur         r0, [r1, #0xb]
    //     0x438f80: ldur         r0, [fp, #-0x20]
    // 0x438f84: StoreField: r1->field_f = r0
    //     0x438f84: stur         r0, [r1, #0xf]
    //     0x438f88: ldur         r0, [fp, #-0x28]
    // 0x438f8c: StoreField: r1->field_13 = r0
    //     0x438f8c: stur         r0, [r1, #0x13]
    // 0x438f90: r4 = r1
    //     0x438f90: mov          r4, r1
    // 0x438f94: b 0x438fec
    //     0x438f94: b            0x438fec
    // 0x438f98: r0 = pp[0x51a]
    //     0x438f98: add          r0, PP, #0xa, lsl #12
    //     0x438f9c: ldr          r0, [r0, #0x510]
    // 0x438fa0: r0 = call 0x352b04
    //     0x438fa0: bl           0x352b04
    //     0x438fa4: stur         r0, [fp, #-0x20]
    // 0x438fa8: StoreField: r0->field_7 = xzr
    //     0x438fa8: stur         xzr, [r0, #7]
    // 0x438fac: StoreField: r0->field_f = xzr
    //     0x438fac: stur         xzr, [r0, #0xf]
    // 0x438fb0: r0 = call 0x352b04
    //     0x438fb0: bl           0x352b04
    //     0x438fb4: stur         r0, [fp, #-0x28]
    // 0x438fb8: StoreField: r0->field_7 = xzr
    //     0x438fb8: stur         xzr, [r0, #7]
    // 0x438fbc: StoreField: r0->field_f = xzr
    //     0x438fbc: stur         xzr, [r0, #0xf]
    // 0x438fc0: r0 = call 0x392f28
    //     0x438fc0: bl           0x392f28
    // 0x438fc4: r1 = r0
    //     0x438fc4: mov          r1, r0
    //     0x438fc8: ldur         r0, [fp, #-0x20]
    // 0x438fcc: StoreField: r1->field_7 = r0
    //     0x438fcc: stur         r0, [r1, #7]
    //     0x438fd0: ldur         r0, [fp, #-0x28]
    // 0x438fd4: StoreField: r1->field_b = r0
    //     0x438fd4: stur         r0, [r1, #0xb]
    // 0x438fd8: r0 = pp[0x51a]
    //     0x438fd8: add          r0, PP, #0xa, lsl #12
    //     0x438fdc: ldr          r0, [r0, #0x510]
    // 0x438fe0: StoreField: r1->field_f = r0
    //     0x438fe0: stur         r0, [r1, #0xf]
    // 0x438fe4: StoreField: r1->field_13 = r0
    //     0x438fe4: stur         r0, [r1, #0x13]
    // 0x438fe8: r4 = r1
    //     0x438fe8: mov          r4, r1
    //     0x438fec: ldur         r0, [fp, #-8]
    //     0x438ff0: stur         r4, [fp, #-0x20]
    // 0x438ff4: LoadField: r1 = r0->field_f
    //     0x438ff4: ldur         r1, [r0, #0xf]
    //     0x438ff8: add          r1, r1, HEAP, lsl #32
    //     0x438ffc: cmp          r1, r22
    // 0x439000: b.ne 0x43900c
    //     0x439000: b.ne         0x43900c
    // 0x439004: r7 = pp[0x148]
    //     0x439004: ldr          r7, [PP, #0x148]
    // 0x439008: b 0x439010
    //     0x439008: b            0x439010
    // 0x43900c: r7 = r1
    //     0x43900c: mov          r7, r1
    // 0x439010: LoadField: r1 = r0->field_13
    //     0x439010: ldur         r1, [r0, #0x13]
    //     0x439014: add          r1, r1, HEAP, lsl #32
    //     0x439018: cmp          r1, r22
    // 0x43901c: b.ne 0x439028
    //     0x43901c: b.ne         0x439028
    // 0x439020: r3 = pp[0x148]
    //     0x439020: ldr          r3, [PP, #0x148]
    // 0x439024: b 0x43902c
    //     0x439024: b            0x43902c
    // 0x439028: r3 = r1
    //     0x439028: mov          r3, r1
    // 0x43902c: LoadField: r1 = r0->field_7
    //     0x43902c: ldur         r1, [r0, #7]
    //     0x439030: add          r1, r1, HEAP, lsl #32
    //     0x439034: cmp          r1, r22
    // 0x439038: b.ne 0x439044
    //     0x439038: b.ne         0x439044
    // 0x43903c: r2 = pp[0x148]
    //     0x43903c: ldr          r2, [PP, #0x148]
    // 0x439040: b 0x439048
    //     0x439040: b            0x439048
    // 0x439044: r2 = r1
    //     0x439044: mov          r2, r1
    // 0x439048: LoadField: r1 = r0->field_b
    //     0x439048: ldur         r1, [r0, #0xb]
    //     0x43904c: add          r1, r1, HEAP, lsl #32
    //     0x439050: cmp          r1, r22
    // 0x439054: b.ne 0x43905c
    //     0x439054: b.ne         0x43905c
    // 0x439058: r1 = pp[0x148]
    //     0x439058: ldr          r1, [PP, #0x148]
    //     0x43905c: ldur         r0, [fp, #-0x18]
    // 0x439060: LoadField: r6 = r0->field_23
    //     0x439060: ldur         r6, [r0, #0x23]
    //     0x439064: add          r6, r6, HEAP, lsl #32
    // 0x439068: LoadField: r5 = r0->field_f
    //     0x439068: ldur         r5, [r0, #0xf]
    //     0x43906c: add          r5, r5, HEAP, lsl #32
    //     0x439070: str          r1, [SP]
    // 0x439074: r1 = r5
    //     0x439074: mov          r1, r5
    //     0x439078: ldur         r5, [fp, #-0x10]
    // 0x43907c: r0 = soul_flutter_international$biz$game$page_game_fruit_bet_record_dialog__GameFruitBetRecordDialogState::_rowLabelWidge()
    //     0x43907c: bl           0x4390dc
    //     0x439080: stur         r0, [fp, #-8]
    // 0x439084: r0 = call 0x391a04
    //     0x439084: bl           0x391a04
    //     0x439088: stur         r0, [fp, #-0x18]
    //     0x43908c: ldur         BARRIER, [fp, #-8]
    //     0x439090: str          BARRIER, [SP]
    // 0x439094: r1 = r0
    //     0x439094: mov          r1, r0
    // 0x439098: r4 = pp[0x204]
    //     0x439098: add          r4, PP, #0xc, lsl #12
    //     0x43909c: ldr          r4, [r4, #0x1f8]
    // 0x4390a0: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4390a0: bl           0x391490
    // 0x4390a4: r0 = call 0x3b378c
    //     0x4390a4: bl           0x3b378c
    //     0x4390a8: ldur         r1, [fp, #-0x20]
    // 0x4390ac: StoreField: r0->field_f = r1
    //     0x4390ac: stur         r1, [r0, #0xf]
    // 0x4390b0: r1 = pp[0xf4e]
    //     0x4390b0: add          r1, PP, #0xe, lsl #12
    //     0x4390b4: ldr          r1, [r1, #0xf40]
    // 0x4390b8: ArrayStore: r0[0] = r1  ; List_8
    //     0x4390b8: stur         r1, [r0, #0x17]
    //     0x4390bc: ldur         r1, [fp, #-0x18]
    // 0x4390c0: StoreField: r0->field_b = r1
    //     0x4390c0: stur         r1, [r0, #0xb]
    // 0x4390c4: SP = fp
    //     0x4390c4: mov          SP, fp
    // 0x4390c8: LeaveFrame
    //     0x4390c8: ldp          fp, lr, [SP], #0x10
    // 0x4390cc: ret
    //     0x4390cc: ret          
    // 0x4390d0: r0 = call 0x61fa28
    //     0x4390d0: bl           0x61fa28
    // 0x4390d4: b 0x438ee0
    //     0x4390d4: b            0x438ee0
    // 0x4390d8: r0 = call 0x61fe70
    //     0x4390d8: bl           0x61fe70
  }

  _rowLabelWidge() {
    // ** addr: 0x4390dc, size: 0x480
    // 0x4390dc: EnterFrame
    //     0x4390dc: stp          fp, lr, [SP, #-0x10]!
    //     0x4390e0: mov          fp, SP
    // 0x4390e4: AllocStack(0x60)
    //     0x4390e4: sub          SP, SP, #0x60
    //     0x4390e8: stur         r2, [fp, #-8]
    //     0x4390ec: stur         r3, [fp, #-0x10]
    //     0x4390f0: stur         r5, [fp, #-0x18]
    //     0x4390f4: stur         r6, [fp, #-0x20]
    //     0x4390f8: stur         r7, [fp, #-0x28]
    // 0x4390fc: CheckStackOverflow
    //     0x4390fc: ldr          BARRIER, [THR, #0x38]
    //     0x439100: cmp          SP, BARRIER
    //     0x439104: b.ls         0x439554
    //     0x439108: tbnz         r5, #0, 0x439140
    // 0x43910c: r0 = call 0x31d844
    //     0x43910c: bl           0x31d844
    // 0x439110: r1 = r0
    //     0x439110: mov          r1, r0
    // 0x439114: r0 = pp[0x6310]
    //     0x439114: ldr          r0, [PP, #0x6310]
    // 0x439118: StoreField: r1->field_27 = r0
    //     0x439118: stur         r0, [r1, #0x27]
    // 0x43911c: d0 = pp[0x6658]
    //     0x43911c: ldr          d0, [PP, #0x6658]
    // 0x439120: StoreField: r1->field_7 = d0
    //     0x439120: stur         d0, [r1, #7]
    //     0x439124: fmov         d1, #1.00000000
    // 0x439128: StoreField: r1->field_f = d1
    //     0x439128: stur         d1, [r1, #0xf]
    // 0x43912c: ArrayStore: r1[0] = d1  ; List_8
    //     0x43912c: stur         d1, [r1, #0x17]
    // 0x439130: StoreField: r1->field_1f = d1
    //     0x439130: stur         d1, [r1, #0x1f]
    // 0x439134: r4 = r1
    //     0x439134: mov          r4, r1
    // 0x439138: d0 = pp[0x66a0]
    //     0x439138: ldr          d0, [PP, #0x66a0]
    // 0x43913c: b 0x439178
    //     0x43913c: b            0x439178
    // 0x439140: r0 = pp[0x6310]
    //     0x439140: ldr          r0, [PP, #0x6310]
    //     0x439144: fmov         d1, #1.00000000
    // 0x439148: d0 = pp[0x6658]
    //     0x439148: ldr          d0, [PP, #0x6658]
    // 0x43914c: r0 = call 0x31d844
    //     0x43914c: bl           0x31d844
    // 0x439150: r1 = r0
    //     0x439150: mov          r1, r0
    // 0x439154: r0 = pp[0x6310]
    //     0x439154: ldr          r0, [PP, #0x6310]
    // 0x439158: StoreField: r1->field_27 = r0
    //     0x439158: stur         r0, [r1, #0x27]
    // 0x43915c: d0 = pp[0x66a0]
    //     0x43915c: ldr          d0, [PP, #0x66a0]
    // 0x439160: StoreField: r1->field_7 = d0
    //     0x439160: stur         d0, [r1, #7]
    //     0x439164: fmov         d1, #1.00000000
    // 0x439168: StoreField: r1->field_f = d1
    //     0x439168: stur         d1, [r1, #0xf]
    // 0x43916c: ArrayStore: r1[0] = d1  ; List_8
    //     0x43916c: stur         d1, [r1, #0x17]
    // 0x439170: StoreField: r1->field_1f = d1
    //     0x439170: stur         d1, [r1, #0x1f]
    // 0x439174: r4 = r1
    //     0x439174: mov          r4, r1
    //     0x439178: ldur         r3, [fp, #-0x18]
    //     0x43917c: ldur         r2, [fp, #-0x20]
    //     0x439180: ldur         r1, [fp, #-0x28]
    //     0x439184: stur         r4, [fp, #-0x30]
    // 0x439188: r0 = call 0x393bf8
    //     0x439188: bl           0x393bf8
    // 0x43918c: r1 = r0
    //     0x43918c: mov          r1, r0
    //     0x439190: ldur         r0, [fp, #-0x28]
    //     0x439194: stur         r1, [fp, #-0x38]
    // 0x439198: StoreField: r1->field_b = r0
    //     0x439198: stur         r0, [r1, #0xb]
    //     0x43919c: ldur         r0, [fp, #-0x20]
    // 0x4391a0: StoreField: r1->field_13 = r0
    //     0x4391a0: stur         r0, [r1, #0x13]
    // 0x4391a4: r0 = call 0x391a04
    //     0x4391a4: bl           0x391a04
    //     0x4391a8: stur         r0, [fp, #-0x28]
    // 0x4391ac: BARRIER = pp[0xaae]
    //     0x4391ac: add          BARRIER, PP, #0xe, lsl #12
    //     0x4391b0: ldr          BARRIER, [BARRIER, #0xaa0]
    //     0x4391b4: ldur         lr, [fp, #-0x30]
    //     0x4391b8: stp          lr, BARRIER, [SP, #0x18]
    // 0x4391bc: BARRIER = pp[0x46d]
    //     0x4391bc: add          BARRIER, PP, #0x15, lsl #12
    //     0x4391c0: ldr          BARRIER, [BARRIER, #0x458]
    // 0x4391c4: lr = pp[0x31f]
    //     0x4391c4: add          lr, PP, #0xf, lsl #12
    //     0x4391c8: ldr          lr, [lr, #0x310]
    //     0x4391cc: stp          lr, BARRIER, [SP, #8]
    //     0x4391d0: ldur         BARRIER, [fp, #-0x38]
    //     0x4391d4: str          BARRIER, [SP]
    // 0x4391d8: r1 = r0
    //     0x4391d8: mov          r1, r0
    // 0x4391dc: r4 = pp[0x475]
    //     0x4391dc: add          r4, PP, #0x15, lsl #12
    //     0x4391e0: ldr          r4, [r4, #0x460]
    // 0x4391e4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4391e4: bl           0x391490
    //     0x4391e8: ldur         r0, [fp, #-0x18]
    //     0x4391ec: tbnz         r0, #0, 0x439228
    // 0x4391f0: r0 = call 0x31d844
    //     0x4391f0: bl           0x31d844
    // 0x4391f4: r1 = r0
    //     0x4391f4: mov          r1, r0
    // 0x4391f8: r0 = pp[0x6310]
    //     0x4391f8: ldr          r0, [PP, #0x6310]
    // 0x4391fc: StoreField: r1->field_27 = r0
    //     0x4391fc: stur         r0, [r1, #0x27]
    // 0x439200: d0 = pp[0x66a0]
    //     0x439200: ldr          d0, [PP, #0x66a0]
    // 0x439204: StoreField: r1->field_7 = d0
    //     0x439204: stur         d0, [r1, #7]
    //     0x439208: fmov         d1, #1.00000000
    // 0x43920c: StoreField: r1->field_f = d1
    //     0x43920c: stur         d1, [r1, #0xf]
    // 0x439210: ArrayStore: r1[0] = d1  ; List_8
    //     0x439210: stur         d1, [r1, #0x17]
    // 0x439214: StoreField: r1->field_1f = d1
    //     0x439214: stur         d1, [r1, #0x1f]
    // 0x439218: r4 = r1
    //     0x439218: mov          r4, r1
    // 0x43921c: d0 = pp[0xf2a]
    //     0x43921c: add          r17, PP, #0x12, lsl #12
    //     0x439220: ldr          d0, [r17, #0xf18]
    // 0x439224: b 0x439264
    //     0x439224: b            0x439264
    // 0x439228: r0 = pp[0x6310]
    //     0x439228: ldr          r0, [PP, #0x6310]
    //     0x43922c: fmov         d1, #1.00000000
    // 0x439230: d0 = pp[0x66a0]
    //     0x439230: ldr          d0, [PP, #0x66a0]
    // 0x439234: r0 = call 0x31d844
    //     0x439234: bl           0x31d844
    // 0x439238: r1 = r0
    //     0x439238: mov          r1, r0
    // 0x43923c: r0 = pp[0x6310]
    //     0x43923c: ldr          r0, [PP, #0x6310]
    // 0x439240: StoreField: r1->field_27 = r0
    //     0x439240: stur         r0, [r1, #0x27]
    // 0x439244: d0 = pp[0xf2a]
    //     0x439244: add          r17, PP, #0x12, lsl #12
    //     0x439248: ldr          d0, [r17, #0xf18]
    // 0x43924c: StoreField: r1->field_7 = d0
    //     0x43924c: stur         d0, [r1, #7]
    //     0x439250: fmov         d1, #1.00000000
    // 0x439254: StoreField: r1->field_f = d1
    //     0x439254: stur         d1, [r1, #0xf]
    // 0x439258: ArrayStore: r1[0] = d1  ; List_8
    //     0x439258: stur         d1, [r1, #0x17]
    // 0x43925c: StoreField: r1->field_1f = d1
    //     0x43925c: stur         d1, [r1, #0x1f]
    // 0x439260: r4 = r1
    //     0x439260: mov          r4, r1
    //     0x439264: ldur         r3, [fp, #-0x10]
    //     0x439268: ldur         r1, [fp, #-0x18]
    //     0x43926c: ldur         r2, [fp, #-0x20]
    //     0x439270: stur         r4, [fp, #-0x30]
    // 0x439274: r0 = call 0x393bf8
    //     0x439274: bl           0x393bf8
    // 0x439278: r1 = r0
    //     0x439278: mov          r1, r0
    //     0x43927c: ldur         r0, [fp, #-0x10]
    //     0x439280: stur         r1, [fp, #-0x38]
    // 0x439284: StoreField: r1->field_b = r0
    //     0x439284: stur         r0, [r1, #0xb]
    //     0x439288: ldur         r0, [fp, #-0x20]
    // 0x43928c: StoreField: r1->field_13 = r0
    //     0x43928c: stur         r0, [r1, #0x13]
    // 0x439290: r0 = call 0x391a04
    //     0x439290: bl           0x391a04
    //     0x439294: stur         r0, [fp, #-0x10]
    // 0x439298: BARRIER = pp[0xaae]
    //     0x439298: add          BARRIER, PP, #0xe, lsl #12
    //     0x43929c: ldr          BARRIER, [BARRIER, #0xaa0]
    //     0x4392a0: ldur         lr, [fp, #-0x30]
    //     0x4392a4: stp          lr, BARRIER, [SP, #0x18]
    // 0x4392a8: BARRIER = pp[0x47d]
    //     0x4392a8: add          BARRIER, PP, #0x15, lsl #12
    //     0x4392ac: ldr          BARRIER, [BARRIER, #0x468]
    // 0x4392b0: lr = pp[0x31f]
    //     0x4392b0: add          lr, PP, #0xf, lsl #12
    //     0x4392b4: ldr          lr, [lr, #0x310]
    //     0x4392b8: stp          lr, BARRIER, [SP, #8]
    //     0x4392bc: ldur         BARRIER, [fp, #-0x38]
    //     0x4392c0: str          BARRIER, [SP]
    // 0x4392c4: r1 = r0
    //     0x4392c4: mov          r1, r0
    // 0x4392c8: r4 = pp[0x475]
    //     0x4392c8: add          r4, PP, #0x15, lsl #12
    //     0x4392cc: ldr          r4, [r4, #0x460]
    // 0x4392d0: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4392d0: bl           0x391490
    //     0x4392d4: ldur         r0, [fp, #-0x18]
    //     0x4392d8: tbnz         r0, #0, 0x439314
    // 0x4392dc: r0 = call 0x31d844
    //     0x4392dc: bl           0x31d844
    // 0x4392e0: r1 = r0
    //     0x4392e0: mov          r1, r0
    // 0x4392e4: r0 = pp[0x6310]
    //     0x4392e4: ldr          r0, [PP, #0x6310]
    // 0x4392e8: StoreField: r1->field_27 = r0
    //     0x4392e8: stur         r0, [r1, #0x27]
    // 0x4392ec: d0 = pp[0x6658]
    //     0x4392ec: ldr          d0, [PP, #0x6658]
    // 0x4392f0: StoreField: r1->field_7 = d0
    //     0x4392f0: stur         d0, [r1, #7]
    //     0x4392f4: fmov         d0, #1.00000000
    // 0x4392f8: StoreField: r1->field_f = d0
    //     0x4392f8: stur         d0, [r1, #0xf]
    // 0x4392fc: ArrayStore: r1[0] = d0  ; List_8
    //     0x4392fc: stur         d0, [r1, #0x17]
    // 0x439300: StoreField: r1->field_1f = d0
    //     0x439300: stur         d0, [r1, #0x1f]
    // 0x439304: r4 = r1
    //     0x439304: mov          r4, r1
    //     0x439308: mov          v1.16b, v0.16b
    // 0x43930c: d0 = pp[0x66a0]
    //     0x43930c: ldr          d0, [PP, #0x66a0]
    // 0x439310: b 0x439348
    //     0x439310: b            0x439348
    // 0x439314: r0 = pp[0x6310]
    //     0x439314: ldr          r0, [PP, #0x6310]
    //     0x439318: fmov         d0, #1.00000000
    // 0x43931c: r0 = call 0x31d844
    //     0x43931c: bl           0x31d844
    // 0x439320: r1 = r0
    //     0x439320: mov          r1, r0
    // 0x439324: r0 = pp[0x6310]
    //     0x439324: ldr          r0, [PP, #0x6310]
    // 0x439328: StoreField: r1->field_27 = r0
    //     0x439328: stur         r0, [r1, #0x27]
    // 0x43932c: d0 = pp[0x66a0]
    //     0x43932c: ldr          d0, [PP, #0x66a0]
    // 0x439330: StoreField: r1->field_7 = d0
    //     0x439330: stur         d0, [r1, #7]
    //     0x439334: fmov         d1, #1.00000000
    // 0x439338: StoreField: r1->field_f = d1
    //     0x439338: stur         d1, [r1, #0xf]
    // 0x43933c: ArrayStore: r1[0] = d1  ; List_8
    //     0x43933c: stur         d1, [r1, #0x17]
    // 0x439340: StoreField: r1->field_1f = d1
    //     0x439340: stur         d1, [r1, #0x1f]
    // 0x439344: r4 = r1
    //     0x439344: mov          r4, r1
    //     0x439348: ldur         r3, [fp, #-8]
    //     0x43934c: ldur         r1, [fp, #-0x18]
    //     0x439350: ldur         r2, [fp, #-0x20]
    //     0x439354: stur         r4, [fp, #-0x30]
    // 0x439358: r0 = call 0x393bf8
    //     0x439358: bl           0x393bf8
    // 0x43935c: r1 = r0
    //     0x43935c: mov          r1, r0
    //     0x439360: ldur         r0, [fp, #-8]
    //     0x439364: stur         r1, [fp, #-0x38]
    // 0x439368: StoreField: r1->field_b = r0
    //     0x439368: stur         r0, [r1, #0xb]
    //     0x43936c: ldur         r0, [fp, #-0x20]
    // 0x439370: StoreField: r1->field_13 = r0
    //     0x439370: stur         r0, [r1, #0x13]
    // 0x439374: r0 = call 0x391a04
    //     0x439374: bl           0x391a04
    //     0x439378: stur         r0, [fp, #-8]
    // 0x43937c: BARRIER = pp[0xaae]
    //     0x43937c: add          BARRIER, PP, #0xe, lsl #12
    //     0x439380: ldr          BARRIER, [BARRIER, #0xaa0]
    //     0x439384: ldur         lr, [fp, #-0x30]
    //     0x439388: stp          lr, BARRIER, [SP, #0x18]
    // 0x43938c: BARRIER = pp[0x485]
    //     0x43938c: add          BARRIER, PP, #0x15, lsl #12
    //     0x439390: ldr          BARRIER, [BARRIER, #0x470]
    // 0x439394: lr = pp[0x31f]
    //     0x439394: add          lr, PP, #0xf, lsl #12
    //     0x439398: ldr          lr, [lr, #0x310]
    //     0x43939c: stp          lr, BARRIER, [SP, #8]
    //     0x4393a0: ldur         BARRIER, [fp, #-0x38]
    //     0x4393a4: str          BARRIER, [SP]
    // 0x4393a8: r1 = r0
    //     0x4393a8: mov          r1, r0
    // 0x4393ac: r4 = pp[0x475]
    //     0x4393ac: add          r4, PP, #0x15, lsl #12
    //     0x4393b0: ldr          r4, [r4, #0x460]
    // 0x4393b4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4393b4: bl           0x391490
    //     0x4393b8: ldur         r0, [fp, #-0x18]
    //     0x4393bc: tbnz         r0, #0, 0x4393f0
    // 0x4393c0: r0 = call 0x31d844
    //     0x4393c0: bl           0x31d844
    // 0x4393c4: r1 = r0
    //     0x4393c4: mov          r1, r0
    // 0x4393c8: r0 = pp[0x6310]
    //     0x4393c8: ldr          r0, [PP, #0x6310]
    // 0x4393cc: StoreField: r1->field_27 = r0
    //     0x4393cc: stur         r0, [r1, #0x27]
    // 0x4393d0: d0 = pp[0x66a0]
    //     0x4393d0: ldr          d0, [PP, #0x66a0]
    // 0x4393d4: StoreField: r1->field_7 = d0
    //     0x4393d4: stur         d0, [r1, #7]
    //     0x4393d8: fmov         d0, #1.00000000
    // 0x4393dc: StoreField: r1->field_f = d0
    //     0x4393dc: stur         d0, [r1, #0xf]
    // 0x4393e0: ArrayStore: r1[0] = d0  ; List_8
    //     0x4393e0: stur         d0, [r1, #0x17]
    // 0x4393e4: StoreField: r1->field_1f = d0
    //     0x4393e4: stur         d0, [r1, #0x1f]
    // 0x4393e8: r5 = r1
    //     0x4393e8: mov          r5, r1
    // 0x4393ec: b 0x439428
    //     0x4393ec: b            0x439428
    // 0x4393f0: r0 = pp[0x6310]
    //     0x4393f0: ldr          r0, [PP, #0x6310]
    //     0x4393f4: fmov         d0, #1.00000000
    // 0x4393f8: r0 = call 0x31d844
    //     0x4393f8: bl           0x31d844
    // 0x4393fc: r1 = r0
    //     0x4393fc: mov          r1, r0
    // 0x439400: r0 = pp[0x6310]
    //     0x439400: ldr          r0, [PP, #0x6310]
    // 0x439404: StoreField: r1->field_27 = r0
    //     0x439404: stur         r0, [r1, #0x27]
    // 0x439408: d0 = pp[0xf2a]
    //     0x439408: add          r17, PP, #0x12, lsl #12
    //     0x43940c: ldr          d0, [r17, #0xf18]
    // 0x439410: StoreField: r1->field_7 = d0
    //     0x439410: stur         d0, [r1, #7]
    //     0x439414: fmov         d0, #1.00000000
    // 0x439418: StoreField: r1->field_f = d0
    //     0x439418: stur         d0, [r1, #0xf]
    // 0x43941c: ArrayStore: r1[0] = d0  ; List_8
    //     0x43941c: stur         d0, [r1, #0x17]
    // 0x439420: StoreField: r1->field_1f = d0
    //     0x439420: stur         d0, [r1, #0x1f]
    // 0x439424: r5 = r1
    //     0x439424: mov          r5, r1
    //     0x439428: ldur         r1, [fp, #-0x20]
    //     0x43942c: ldr          r4, [fp, #0x10]
    //     0x439430: ldur         r3, [fp, #-0x28]
    //     0x439434: ldur         r2, [fp, #-0x10]
    //     0x439438: ldur         r0, [fp, #-8]
    //     0x43943c: stur         r5, [fp, #-0x30]
    // 0x439440: r0 = call 0x393bf8
    //     0x439440: bl           0x393bf8
    // 0x439444: r1 = r0
    //     0x439444: mov          r1, r0
    //     0x439448: ldr          r0, [fp, #0x10]
    //     0x43944c: stur         r1, [fp, #-0x38]
    // 0x439450: StoreField: r1->field_b = r0
    //     0x439450: stur         r0, [r1, #0xb]
    //     0x439454: ldur         r0, [fp, #-0x20]
    // 0x439458: StoreField: r1->field_13 = r0
    //     0x439458: stur         r0, [r1, #0x13]
    // 0x43945c: r0 = call 0x391a04
    //     0x43945c: bl           0x391a04
    //     0x439460: stur         r0, [fp, #-0x20]
    // 0x439464: BARRIER = pp[0xaae]
    //     0x439464: add          BARRIER, PP, #0xe, lsl #12
    //     0x439468: ldr          BARRIER, [BARRIER, #0xaa0]
    //     0x43946c: ldur         lr, [fp, #-0x30]
    //     0x439470: stp          lr, BARRIER, [SP, #0x18]
    // 0x439474: BARRIER = pp[0x48d]
    //     0x439474: add          BARRIER, PP, #0x15, lsl #12
    //     0x439478: ldr          BARRIER, [BARRIER, #0x478]
    // 0x43947c: lr = pp[0x31f]
    //     0x43947c: add          lr, PP, #0xf, lsl #12
    //     0x439480: ldr          lr, [lr, #0x310]
    //     0x439484: stp          lr, BARRIER, [SP, #8]
    //     0x439488: ldur         BARRIER, [fp, #-0x38]
    //     0x43948c: str          BARRIER, [SP]
    // 0x439490: r1 = r0
    //     0x439490: mov          r1, r0
    // 0x439494: r4 = pp[0x475]
    //     0x439494: add          r4, PP, #0x15, lsl #12
    //     0x439498: ldr          r4, [r4, #0x460]
    // 0x43949c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x43949c: bl           0x391490
    // 0x4394a0: r1 = NULL
    //     0x4394a0: mov          r1, NULL
    //     0x4394a4: mov          r2, #8
    // 0x4394a8: r0 = call 0x61f920
    //     0x4394a8: bl           0x61f920
    // 0x4394ac: r2 = r0
    //     0x4394ac: mov          r2, r0
    //     0x4394b0: ldur         r0, [fp, #-0x28]
    //     0x4394b4: stur         r2, [fp, #-0x30]
    // 0x4394b8: StoreField: r2->field_f = r0
    //     0x4394b8: stur         r0, [r2, #0xf]
    //     0x4394bc: ldur         r0, [fp, #-0x10]
    // 0x4394c0: StoreField: r2->field_13 = r0
    //     0x4394c0: stur         r0, [r2, #0x13]
    //     0x4394c4: ldur         r0, [fp, #-8]
    // 0x4394c8: ArrayStore: r2[0] = r0  ; List_8
    //     0x4394c8: stur         r0, [r2, #0x17]
    //     0x4394cc: ldur         r0, [fp, #-0x20]
    // 0x4394d0: StoreField: r2->field_1b = r0
    //     0x4394d0: stur         r0, [r2, #0x1b]
    // 0x4394d4: r1 = pp[0x5c58]
    //     0x4394d4: ldr          r1, [PP, #0x5c58]
    // 0x4394d8: r0 = call 0x61e854
    //     0x4394d8: bl           0x61e854
    // 0x4394dc: r1 = r0
    //     0x4394dc: mov          r1, r0
    //     0x4394e0: ldur         r0, [fp, #-0x30]
    //     0x4394e4: stur         r1, [fp, #-8]
    // 0x4394e8: StoreField: r1->field_f = r0
    //     0x4394e8: stur         r0, [r1, #0xf]
    //     0x4394ec: mov          r0, #8
    // 0x4394f0: StoreField: r1->field_b = r0
    //     0x4394f0: stur         r0, [r1, #0xb]
    // 0x4394f4: r0 = call 0x3a1414
    //     0x4394f4: bl           0x3a1414
    // 0x4394f8: r1 = pp[0x5140]
    //     0x4394f8: ldr          r1, [PP, #0x5140]
    // 0x4394fc: StoreField: r0->field_f = r1
    //     0x4394fc: stur         r1, [r0, #0xf]
    // 0x439500: r1 = pp[0xaee]
    //     0x439500: add          r1, PP, #0xe, lsl #12
    //     0x439504: ldr          r1, [r1, #0xae0]
    // 0x439508: StoreField: r0->field_13 = r1
    //     0x439508: stur         r1, [r0, #0x13]
    // 0x43950c: r1 = pp[0xaf6]
    //     0x43950c: add          r1, PP, #0xe, lsl #12
    //     0x439510: ldr          r1, [r1, #0xae8]
    // 0x439514: ArrayStore: r0[0] = r1  ; List_8
    //     0x439514: stur         r1, [r0, #0x17]
    // 0x439518: r1 = pp[0xb6e]
    //     0x439518: add          r1, PP, #0xe, lsl #12
    //     0x43951c: ldr          r1, [r1, #0xb60]
    // 0x439520: StoreField: r0->field_1b = r1
    //     0x439520: stur         r1, [r0, #0x1b]
    // 0x439524: r1 = pp[0xb06]
    //     0x439524: add          r1, PP, #0xe, lsl #12
    //     0x439528: ldr          r1, [r1, #0xaf8]
    // 0x43952c: StoreField: r0->field_23 = r1
    //     0x43952c: stur         r1, [r0, #0x23]
    // 0x439530: r1 = pp[0xb2]
    //     0x439530: add          r1, PP, #0xa, lsl #12
    //     0x439534: ldr          r1, [r1, #0xa8]
    // 0x439538: StoreField: r0->field_2b = r1
    //     0x439538: stur         r1, [r0, #0x2b]
    // 0x43953c: StoreField: r0->field_2f = xzr
    //     0x43953c: stur         xzr, [r0, #0x2f]
    //     0x439540: ldur         r1, [fp, #-8]
    // 0x439544: StoreField: r0->field_b = r1
    //     0x439544: stur         r1, [r0, #0xb]
    // 0x439548: SP = fp
    //     0x439548: mov          SP, fp
    // 0x43954c: LeaveFrame
    //     0x43954c: ldp          fp, lr, [SP], #0x10
    // 0x439550: ret
    //     0x439550: ret          
    // 0x439554: r0 = call 0x61fa28
    //     0x439554: bl           0x61fa28
    // 0x439558: b 0x439108
    //     0x439558: b            0x439108
  }

  dispose() {
    // ** addr: 0x452388, size: 0x54
    // 0x452388: EnterFrame
    //     0x452388: stp          fp, lr, [SP, #-0x10]!
    //     0x45238c: mov          fp, SP
    // 0x452390: CheckStackOverflow
    //     0x452390: ldr          BARRIER, [THR, #0x38]
    //     0x452394: cmp          SP, BARRIER
    //     0x452398: b.ls         0x4523c8
    // 0x45239c: ArrayLoad: r0 = r1[0]  ; List_8
    //     0x45239c: ldur         r0, [r1, #0x17]
    //     0x4523a0: add          r0, r0, HEAP, lsl #32
    // 0x4523a4: BARRIER = pp[0x40]
    //     0x4523a4: ldr          BARRIER, [PP, #0x40]
    //     0x4523a8: cmp          r0, r16
    // 0x4523ac: b.eq 0x4523d0
    //     0x4523ac: b.eq         0x4523d0
    // 0x4523b0: r1 = r0
    //     0x4523b0: mov          r1, r0
    // 0x4523b4: r0 = pull_to_refresh$src$smart_refresher_RefreshController::dispose()
    //     0x4523b4: bl           0x45132c
    // 0x4523b8: r0 = NULL
    //     0x4523b8: mov          r0, NULL
    // 0x4523bc: SP = fp
    //     0x4523bc: mov          SP, fp
    // 0x4523c0: LeaveFrame
    //     0x4523c0: ldp          fp, lr, [SP], #0x10
    // 0x4523c4: ret
    //     0x4523c4: ret          
    // 0x4523c8: r0 = call 0x61fa28
    //     0x4523c8: bl           0x61fa28
    // 0x4523cc: b 0x45239c
    //     0x4523cc: b            0x45239c
    // 0x4523d0: r9 = pp[0x3bd]
    //     0x4523d0: add          r9, PP, #0x15, lsl #12
    //     0x4523d4: ldr          r9, [r9, #0x3a8]
    // 0x4523d8: r0 = call 0x620258
    //     0x4523d8: bl           0x620258
  }

  initState() {
    // ** addr: 0x4d8d44, size: 0xa8
    // 0x4d8d44: EnterFrame
    //     0x4d8d44: stp          fp, lr, [SP, #-0x10]!
    //     0x4d8d48: mov          fp, SP
    // 0x4d8d4c: AllocStack(0x18)
    //     0x4d8d4c: sub          SP, SP, #0x18
    //     0x4d8d50: stur         r1, [fp, #-8]
    // 0x4d8d54: CheckStackOverflow
    //     0x4d8d54: ldr          BARRIER, [THR, #0x38]
    //     0x4d8d58: cmp          SP, BARRIER
    //     0x4d8d5c: b.ls         0x4d8de4
    //     0x4d8d60: mov          r1, #1
    // 0x4d8d64: r0 = call 0x61e890
    //     0x4d8d64: bl           0x61e890
    // 0x4d8d68: r1 = r0
    //     0x4d8d68: mov          r1, r0
    //     0x4d8d6c: ldur         r0, [fp, #-8]
    //     0x4d8d70: stur         r1, [fp, #-0x10]
    // 0x4d8d74: StoreField: r1->field_f = r0
    //     0x4d8d74: stur         r0, [r1, #0xf]
    // 0x4d8d78: r0 = call 0x4c47f0
    //     0x4d8d78: bl           0x4c47f0
    // 0x4d8d7c: r1 = r0
    //     0x4d8d7c: mov          r1, r0
    //     0x4d8d80: stur         r0, [fp, #-0x18]
    // 0x4d8d84: r0 = pull_to_refresh$src$smart_refresher_RefreshController::ctor()
    //     0x4d8d84: bl           0x4c46e0
    //     0x4d8d88: ldur         r0, [fp, #-0x18]
    //     0x4d8d8c: ldur         r1, [fp, #-8]
    // 0x4d8d90: ArrayStore: r1[0] = r0  ; List_8
    //     0x4d8d90: stur         r0, [r1, #0x17]
    //     0x4d8d94: ldurb        r16, [r1, #-1]
    //     0x4d8d98: ldurb        r17, [r0, #-1]
    //     0x4d8d9c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d8da0: tst          BARRIER, HEAP, lsr #32
    // 0x4d8da4: b.eq 0x4d8dac
    //     0x4d8da4: b.eq         0x4d8dac
    // 0x4d8da8: r0 = call 0x61e04c
    //     0x4d8da8: bl           0x61e04c
    // 0x4d8dac: LoadField: r0 = r1->field_13
    //     0x4d8dac: ldur         r0, [r1, #0x13]
    //     0x4d8db0: add          r0, r0, HEAP, lsl #32
    //     0x4d8db4: ldur         r2, [fp, #-0x10]
    //     0x4d8db8: stur         r0, [fp, #-0x18]
    // 0x4d8dbc: r1 = pp[0x4dd]
    //     0x4d8dbc: add          r1, PP, #0x15, lsl #12
    //     0x4d8dc0: ldr          r1, [r1, #0x4c8]
    // 0x4d8dc4: r0 = call 0x61ec54
    //     0x4d8dc4: bl           0x61ec54
    //     0x4d8dc8: ldur         r1, [fp, #-0x18]
    // 0x4d8dcc: r2 = r0
    //     0x4d8dcc: mov          r2, r0
    // 0x4d8dd0: r0 = soul_flutter_international$biz$game$notifier$notifier_game_fruit_bet_record_dialog_GameFruitBetRecordNotifier::gainGameFruitDialog()
    //     0x4d8dd0: bl           0x4d8dec
    // 0x4d8dd4: r0 = NULL
    //     0x4d8dd4: mov          r0, NULL
    // 0x4d8dd8: SP = fp
    //     0x4d8dd8: mov          SP, fp
    // 0x4d8ddc: LeaveFrame
    //     0x4d8ddc: ldp          fp, lr, [SP], #0x10
    // 0x4d8de0: ret
    //     0x4d8de0: ret          
    // 0x4d8de4: r0 = call 0x61fa28
    //     0x4d8de4: bl           0x61fa28
    // 0x4d8de8: b 0x4d8d60
    //     0x4d8de8: b            0x4d8d60
  }

  _anon_closure() {
    // ** addr: 0x4d8e40, size: 0xd4
    // 0x4d8e40: EnterFrame
    //     0x4d8e40: stp          fp, lr, [SP, #-0x10]!
    //     0x4d8e44: mov          fp, SP
    //     0x4d8e48: ldr          r0, [fp, #0x20]
    // 0x4d8e4c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d8e4c: ldur         r1, [r0, #0x17]
    //     0x4d8e50: add          r1, r1, HEAP, lsl #32
    // 0x4d8e54: CheckStackOverflow
    //     0x4d8e54: ldr          BARRIER, [THR, #0x38]
    //     0x4d8e58: cmp          SP, BARRIER
    //     0x4d8e5c: b.ls         0x4d8ee8
    //     0x4d8e60: ldr          r0, [fp, #0x18]
    //     0x4d8e64: tbnz         r0, #4, 0x4d8eb8
    //     0x4d8e68: ldr          r0, [fp, #0x10]
    //     0x4d8e6c: tbnz         r0, #4, 0x4d8e94
    // 0x4d8e70: LoadField: r0 = r1->field_f
    //     0x4d8e70: ldur         r0, [r1, #0xf]
    //     0x4d8e74: add          r0, r0, HEAP, lsl #32
    // 0x4d8e78: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d8e78: ldur         r1, [r0, #0x17]
    //     0x4d8e7c: add          r1, r1, HEAP, lsl #32
    // 0x4d8e80: BARRIER = pp[0x40]
    //     0x4d8e80: ldr          BARRIER, [PP, #0x40]
    //     0x4d8e84: cmp          r1, r16
    // 0x4d8e88: b.eq 0x4d8ef0
    //     0x4d8e88: b.eq         0x4d8ef0
    // 0x4d8e8c: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadNoData()
    //     0x4d8e8c: bl           0x3adfd4
    // 0x4d8e90: b 0x4d8ed8
    //     0x4d8e90: b            0x4d8ed8
    // 0x4d8e94: LoadField: r0 = r1->field_f
    //     0x4d8e94: ldur         r0, [r1, #0xf]
    //     0x4d8e98: add          r0, r0, HEAP, lsl #32
    // 0x4d8e9c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d8e9c: ldur         r1, [r0, #0x17]
    //     0x4d8ea0: add          r1, r1, HEAP, lsl #32
    // 0x4d8ea4: BARRIER = pp[0x40]
    //     0x4d8ea4: ldr          BARRIER, [PP, #0x40]
    //     0x4d8ea8: cmp          r1, r16
    // 0x4d8eac: b.eq 0x4d8efc
    //     0x4d8eac: b.eq         0x4d8efc
    // 0x4d8eb0: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadComplete()
    //     0x4d8eb0: bl           0x3ade48
    // 0x4d8eb4: b 0x4d8ed8
    //     0x4d8eb4: b            0x4d8ed8
    // 0x4d8eb8: LoadField: r0 = r1->field_f
    //     0x4d8eb8: ldur         r0, [r1, #0xf]
    //     0x4d8ebc: add          r0, r0, HEAP, lsl #32
    // 0x4d8ec0: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4d8ec0: ldur         r1, [r0, #0x17]
    //     0x4d8ec4: add          r1, r1, HEAP, lsl #32
    // 0x4d8ec8: BARRIER = pp[0x40]
    //     0x4d8ec8: ldr          BARRIER, [PP, #0x40]
    //     0x4d8ecc: cmp          r1, r16
    // 0x4d8ed0: b.eq 0x4d8f08
    //     0x4d8ed0: b.eq         0x4d8f08
    // 0x4d8ed4: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadFailed()
    //     0x4d8ed4: bl           0x3adbb4
    // 0x4d8ed8: r0 = NULL
    //     0x4d8ed8: mov          r0, NULL
    // 0x4d8edc: SP = fp
    //     0x4d8edc: mov          SP, fp
    // 0x4d8ee0: LeaveFrame
    //     0x4d8ee0: ldp          fp, lr, [SP], #0x10
    // 0x4d8ee4: ret
    //     0x4d8ee4: ret          
    // 0x4d8ee8: r0 = call 0x61fa28
    //     0x4d8ee8: bl           0x61fa28
    // 0x4d8eec: b 0x4d8e60
    //     0x4d8eec: b            0x4d8e60
    // 0x4d8ef0: r9 = pp[0x3bd]
    //     0x4d8ef0: add          r9, PP, #0x15, lsl #12
    //     0x4d8ef4: ldr          r9, [r9, #0x3a8]
    // 0x4d8ef8: r0 = call 0x620258
    //     0x4d8ef8: bl           0x620258
    // 0x4d8efc: r9 = pp[0x3bd]
    //     0x4d8efc: add          r9, PP, #0x15, lsl #12
    //     0x4d8f00: ldr          r9, [r9, #0x3a8]
    // 0x4d8f04: r0 = call 0x620258
    //     0x4d8f04: bl           0x620258
    // 0x4d8f08: r9 = pp[0x3bd]
    //     0x4d8f08: add          r9, PP, #0x15, lsl #12
    //     0x4d8f0c: ldr          r9, [r9, #0x3a8]
    // 0x4d8f10: r0 = call 0x620258
    //     0x4d8f10: bl           0x620258
  }
