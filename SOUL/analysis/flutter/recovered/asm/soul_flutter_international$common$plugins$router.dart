// lib: , url: soul_flutter_international$common$plugins$router


  routeH5() {
    // ** addr: 0x3a6a60, size: 0x88
    // 0x3a6a60: EnterFrame
    //     0x3a6a60: stp          fp, lr, [SP, #-0x10]!
    //     0x3a6a64: mov          fp, SP
    // 0x3a6a68: AllocStack(0x18)
    //     0x3a6a68: sub          SP, SP, #0x18
    //     0x3a6a6c: stur         NULL, [fp, #-8]
    //     0x3a6a70: stur         r1, [fp, #-0x10]
    // 0x3a6a74: BARRIER = r2
    //     0x3a6a74: mov          BARRIER, r2
    // 0x3a6a78: r2 = r1
    //     0x3a6a78: mov          r2, r1
    // 0x3a6a7c: r1 = BARRIER
    //     0x3a6a7c: mov          r1, BARRIER
    //     0x3a6a80: stur         r1, [fp, #-0x18]
    // 0x3a6a84: CheckStackOverflow
    //     0x3a6a84: ldr          BARRIER, [THR, #0x38]
    //     0x3a6a88: cmp          SP, BARRIER
    //     0x3a6a8c: b.ls         0x3a6ae0
    // 0x3a6a90: r0 = NULL
    //     0x3a6a90: mov          r0, NULL
    // 0x3a6a94: r0 = call 0x2b16e4
    //     0x3a6a94: bl           0x2b16e4
    //     0x3a6a98: ldur         r1, [fp, #-0x10]
    // 0x3a6a9c: r2 = pp[0xf47]
    //     0x3a6a9c: add          r2, PP, #0xf, lsl #12
    //     0x3a6aa0: ldr          r2, [r2, #0xf38]
    // 0x3a6aa4: r0 = soul_flutter_international$common$plugins$router_RouterNative::route()
    //     0x3a6aa4: bl           0x3a84c4
    //     0x3a6aa8: ldur         r1, [fp, #-0x18]
    //     0x3a6aac: stur         r0, [fp, #-0x10]
    // 0x3a6ab0: r0 = soul_flutter_international$common$plugins$codec_SOCodec::urlEncode()
    //     0x3a6ab0: bl           0x3a80b0
    // 0x3a6ab4: r1 = r0
    //     0x3a6ab4: mov          r1, r0
    //     0x3a6ab8: stur         r1, [fp, #-0x18]
    // 0x3a6abc: r0 = call 0x2b13a0
    //     0x3a6abc: bl           0x2b13a0
    //     0x3a6ac0: ldur         r1, [fp, #-0x10]
    // 0x3a6ac4: r3 = r0
    //     0x3a6ac4: mov          r3, r0
    // 0x3a6ac8: r2 = pp[0x2c48]
    //     0x3a6ac8: ldr          r2, [PP, #0x2c48]
    // 0x3a6acc: r0 = soul_flutter_international$common$plugins$router_SoulNavigator::withString()
    //     0x3a6acc: bl           0x3a8024
    // 0x3a6ad0: r1 = r0
    //     0x3a6ad0: mov          r1, r0
    // 0x3a6ad4: r0 = soul_flutter_international$common$plugins$router_SoulNavigator::navigate()
    //     0x3a6ad4: bl           0x3a6ae8
    // 0x3a6ad8: r0 = NULL
    //     0x3a6ad8: mov          r0, NULL
    // 0x3a6adc: b 0x2b16b8
    //     0x3a6adc: b            0x2b16b8
    // 0x3a6ae0: r0 = call 0x61fa28
    //     0x3a6ae0: bl           0x61fa28
    // 0x3a6ae4: b 0x3a6a90
    //     0x3a6ae4: b            0x3a6a90
  }

  route() {
    // ** addr: 0x3a84c4, size: 0x50
    // 0x3a84c4: EnterFrame
    //     0x3a84c4: stp          fp, lr, [SP, #-0x10]!
    //     0x3a84c8: mov          fp, SP
    // 0x3a84cc: AllocStack(0x10)
    //     0x3a84cc: sub          SP, SP, #0x10
    //     0x3a84d0: stur         r2, [fp, #-8]
    // 0x3a84d4: CheckStackOverflow
    //     0x3a84d4: ldr          BARRIER, [THR, #0x38]
    //     0x3a84d8: cmp          SP, BARRIER
    //     0x3a84dc: b.ls         0x3a850c
    // 0x3a84e0: r1 = pp[0x2a60]
    //     0x3a84e0: ldr          r1, [PP, #0x2a60]
    // 0x3a84e4: r0 = dart_core_Map::factory_ctor()
    //     0x3a84e4: bl           0x28cd60
    //     0x3a84e8: stur         r0, [fp, #-0x10]
    // 0x3a84ec: r0 = call 0x3a8514
    //     0x3a84ec: bl           0x3a8514
    //     0x3a84f0: ldur         r1, [fp, #-0x10]
    // 0x3a84f4: StoreField: r0->field_b = r1
    //     0x3a84f4: stur         r1, [r0, #0xb]
    //     0x3a84f8: ldur         r1, [fp, #-8]
    // 0x3a84fc: StoreField: r0->field_7 = r1
    //     0x3a84fc: stur         r1, [r0, #7]
    // 0x3a8500: SP = fp
    //     0x3a8500: mov          SP, fp
    // 0x3a8504: LeaveFrame
    //     0x3a8504: ldp          fp, lr, [SP], #0x10
    // 0x3a8508: ret
    //     0x3a8508: ret          
    // 0x3a850c: r0 = call 0x61fa28
    //     0x3a850c: bl           0x61fa28
    // 0x3a8510: b 0x3a84e0
    //     0x3a8510: b            0x3a84e0
  }

  _getInstance() {
    // ** addr: 0x3a86c0, size: 0x30
    // 0x3a86c0: EnterFrame
    //     0x3a86c0: stp          fp, lr, [SP, #-0x10]!
    //     0x3a86c4: mov          fp, SP
    //     0x3a86c8: ldr          r0, [THR, #0x68]
    // 0x3a86cc: LoadField: r0 = r0->field_17a8
    //     0x3a86cc: ldr          r0, [r0, #0x17a8]
    //     0x3a86d0: cmp          r0, r22
    // 0x3a86d4: b.ne 0x3a86e4
    //     0x3a86d4: b.ne         0x3a86e4
    // 0x3a86d8: r0 = call 0x3a86f0
    //     0x3a86d8: bl           0x3a86f0
    //     0x3a86dc: ldr          r1, [THR, #0x68]
    // 0x3a86e0: StoreField: r1->field_17a8 = r0
    //     0x3a86e0: str          r0, [r1, #0x17a8]
    // 0x3a86e4: SP = fp
    //     0x3a86e4: mov          SP, fp
    // 0x3a86e8: LeaveFrame
    //     0x3a86e8: ldp          fp, lr, [SP], #0x10
    // 0x3a86ec: ret
    //     0x3a86ec: ret          
  }

  routeFlutter() {
    // ** addr: 0x3a99b4, size: 0x154
    // 0x3a99b4: EnterFrame
    //     0x3a99b4: stp          fp, lr, [SP, #-0x10]!
    //     0x3a99b8: mov          fp, SP
    // 0x3a99bc: AllocStack(0x18)
    //     0x3a99bc: sub          SP, SP, #0x18
    // 0x3a99c0: r3 = r2
    //     0x3a99c0: mov          r3, r2
    //     0x3a99c4: stur         r2, [fp, #-0x18]
    // 0x3a99c8: LoadField: r0 = r4->field_13
    //     0x3a99c8: ldur         r0, [r4, #0x13]
    // 0x3a99cc: LoadField: r2 = r4->field_1f
    //     0x3a99cc: ldur         r2, [r4, #0x1f]
    //     0x3a99d0: add          r2, r2, HEAP, lsl #32
    // 0x3a99d4: BARRIER = pp[0x83f]
    //     0x3a99d4: add          BARRIER, PP, #0xf, lsl #12
    //     0x3a99d8: ldr          BARRIER, [BARRIER, #0x830]
    //     0x3a99dc: cmp          r2, r16
    // 0x3a99e0: b.ne 0x3a9a04
    //     0x3a99e0: b.ne         0x3a9a04
    // 0x3a99e4: LoadField: r2 = r4->field_23
    //     0x3a99e4: ldur         r2, [r4, #0x23]
    //     0x3a99e8: add          r2, r2, HEAP, lsl #32
    //     0x3a99ec: sub          r5, r0, r2
    //     0x3a99f0: add          r2, fp, r5, sxtw #2
    // 0x3a99f4: LoadField: r2 = r2->field_8
    //     0x3a99f4: ldr          r2, [r2, #8]
    // 0x3a99f8: r5 = r2
    //     0x3a99f8: mov          r5, r2
    //     0x3a99fc: mov          r2, #1
    // 0x3a9a00: b 0x3a9a0c
    //     0x3a9a00: b            0x3a9a0c
    // 0x3a9a04: r5 = NULL
    //     0x3a9a04: mov          r5, NULL
    //     0x3a9a08: mov          r2, #0
    //     0x3a9a0c: stur         r5, [fp, #-0x10]
    //     0x3a9a10: lsl          r6, r2, #1
    //     0x3a9a14: lsl          r2, r6, #1
    //     0x3a9a18: add          r6, r2, #8
    //     0x3a9a1c: add          BARRIER, r4, r6, sxtw #1
    // 0x3a9a20: LoadField: r7 = BARRIER->field_f
    //     0x3a9a20: ldur         r7, [BARRIER, #0xf]
    //     0x3a9a24: add          r7, r7, HEAP, lsl #32
    // 0x3a9a28: BARRIER = pp[0x847]
    //     0x3a9a28: add          BARRIER, PP, #0xf, lsl #12
    //     0x3a9a2c: ldr          BARRIER, [BARRIER, #0x838]
    //     0x3a9a30: cmp          r7, r16
    // 0x3a9a34: b.ne 0x3a9a58
    //     0x3a9a34: b.ne         0x3a9a58
    //     0x3a9a38: add          r6, r2, #0xa
    //     0x3a9a3c: add          BARRIER, r4, r6, sxtw #1
    // 0x3a9a40: LoadField: r2 = BARRIER->field_f
    //     0x3a9a40: ldur         r2, [BARRIER, #0xf]
    //     0x3a9a44: add          r2, r2, HEAP, lsl #32
    //     0x3a9a48: sub          r4, r0, r2
    //     0x3a9a4c: add          r0, fp, r4, sxtw #2
    // 0x3a9a50: LoadField: r0 = r0->field_8
    //     0x3a9a50: ldr          r0, [r0, #8]
    // 0x3a9a54: b 0x3a9a5c
    //     0x3a9a54: b            0x3a9a5c
    // 0x3a9a58: r0 = NULL
    //     0x3a9a58: mov          r0, NULL
    //     0x3a9a5c: stur         r0, [fp, #-8]
    // 0x3a9a60: CheckStackOverflow
    //     0x3a9a60: ldr          BARRIER, [THR, #0x38]
    //     0x3a9a64: cmp          SP, BARRIER
    //     0x3a9a68: b.ls         0x3a9b00
    // 0x3a9a6c: r2 = pp[0x84f]
    //     0x3a9a6c: add          r2, PP, #0xf, lsl #12
    //     0x3a9a70: ldr          r2, [r2, #0x840]
    // 0x3a9a74: r0 = soul_flutter_international$common$plugins$router_RouterNative::route()
    //     0x3a9a74: bl           0x3a84c4
    // 0x3a9a78: r1 = r0
    //     0x3a9a78: mov          r1, r0
    //     0x3a9a7c: ldur         r3, [fp, #-0x18]
    // 0x3a9a80: r2 = pp[0x857]
    //     0x3a9a80: add          r2, PP, #0xf, lsl #12
    //     0x3a9a84: ldr          r2, [r2, #0x848]
    // 0x3a9a88: r0 = soul_flutter_international$common$plugins$router_SoulNavigator::withString()
    //     0x3a9a88: bl           0x3a8024
    // 0x3a9a8c: r1 = r0
    //     0x3a9a8c: mov          r1, r0
    //     0x3a9a90: ldur         r0, [fp, #-0x10]
    //     0x3a9a94: cmp          r0, r22
    // 0x3a9a98: b.ne 0x3a9aa4
    //     0x3a9a98: b.ne         0x3a9aa4
    //     0x3a9a9c: add          r3, NULL, #0x30
    // 0x3a9aa0: b 0x3a9aa8
    //     0x3a9aa0: b            0x3a9aa8
    // 0x3a9aa4: r3 = r0
    //     0x3a9aa4: mov          r3, r0
    //     0x3a9aa8: ldur         r0, [fp, #-8]
    // 0x3a9aac: r2 = pp[0x85f]
    //     0x3a9aac: add          r2, PP, #0xf, lsl #12
    //     0x3a9ab0: ldr          r2, [r2, #0x850]
    // 0x3a9ab4: r0 = soul_flutter_international$common$plugins$router_SoulNavigator::withBoolean()
    //     0x3a9ab4: bl           0x3a9b08
    // 0x3a9ab8: r1 = r0
    //     0x3a9ab8: mov          r1, r0
    //     0x3a9abc: ldur         r0, [fp, #-8]
    //     0x3a9ac0: cmp          r0, r22
    // 0x3a9ac4: b.ne 0x3a9ad0
    //     0x3a9ac4: b.ne         0x3a9ad0
    //     0x3a9ac8: add          r3, NULL, #0x30
    // 0x3a9acc: b 0x3a9ad4
    //     0x3a9acc: b            0x3a9ad4
    // 0x3a9ad0: r3 = r0
    //     0x3a9ad0: mov          r3, r0
    // 0x3a9ad4: r2 = pp[0x867]
    //     0x3a9ad4: add          r2, PP, #0xf, lsl #12
    //     0x3a9ad8: ldr          r2, [r2, #0x858]
    // 0x3a9adc: r0 = soul_flutter_international$common$plugins$router_SoulNavigator::withBoolean()
    //     0x3a9adc: bl           0x3a9b08
    // 0x3a9ae0: r1 = r0
    //     0x3a9ae0: mov          r1, r0
    // 0x3a9ae4: r2 = pp[0x86f]
    //     0x3a9ae4: add          r2, PP, #0xf, lsl #12
    //     0x3a9ae8: ldr          r2, [r2, #0x860]
    //     0x3a9aec: add          r3, NULL, #0x30
    // 0x3a9af0: r0 = soul_flutter_international$common$plugins$router_SoulNavigator::withBoolean()
    //     0x3a9af0: bl           0x3a9b08
    // 0x3a9af4: SP = fp
    //     0x3a9af4: mov          SP, fp
    // 0x3a9af8: LeaveFrame
    //     0x3a9af8: ldp          fp, lr, [SP], #0x10
    // 0x3a9afc: ret
    //     0x3a9afc: ret          
    // 0x3a9b00: r0 = call 0x61fa28
    //     0x3a9b00: bl           0x61fa28
    // 0x3a9b04: b 0x3a9a6c
    //     0x3a9b04: b            0x3a9a6c
  }

  handleSchemaJump() {
    // ** addr: 0x42dca8, size: 0x218
    // 0x42dca8: EnterFrame
    //     0x42dca8: stp          fp, lr, [SP, #-0x10]!
    //     0x42dcac: mov          fp, SP
    // 0x42dcb0: AllocStack(0x80)
    //     0x42dcb0: sub          SP, SP, #0x80
    // 0x42dcb4: r0 = r1
    //     0x42dcb4: mov          r0, r1
    //     0x42dcb8: stur         r1, [fp, #-0x60]
    // 0x42dcbc: r1 = r2
    //     0x42dcbc: mov          r1, r2
    // 0x42dcc0: CheckStackOverflow
    //     0x42dcc0: ldr          BARRIER, [THR, #0x38]
    //     0x42dcc4: cmp          SP, BARRIER
    //     0x42dcc8: b.ls         0x42deb8
    // 0x42dccc: r4 = pp[0x4c0]
    //     0x42dccc: ldr          r4, [PP, #0x4c0]
    // 0x42dcd0: r0 = dart_core_Uri::parse()
    //     0x42dcd0: bl           0x28eb00
    // 0x42dcd4: r2 = r0
    //     0x42dcd4: mov          r2, r0
    //     0x42dcd8: stur         r2, [fp, #-0x68]
    // 0x42dcdc: r0 = LoadClassIdInstr(r2)
    //     0x42dcdc: ldur         r0, [r2, #-1]
    //     0x42dce0: ubfx         r0, r0, #0xc, #0x14
    // 0x42dce4: r1 = r2
    //     0x42dce4: mov          r1, r2
    //     0x42dce8: sub          lr, r0, #0xffc
    //     0x42dcec: ldr          lr, [r21, lr, lsl #3]
    // 0x42dcf0: r0 = [R]()
    //     0x42dcf0: blr          lr
    // 0x42dcf4: r1 = LoadClassIdInstr(r0)
    //     0x42dcf4: ldur         r1, [r0, #-1]
    //     0x42dcf8: ubfx         r1, r1, #0xc, #0x14
    // 0x42dcfc: BARRIER = pp[0xf37]
    //     0x42dcfc: add          BARRIER, PP, #0xf, lsl #12
    //     0x42dd00: ldr          BARRIER, [BARRIER, #0xf28]
    //     0x42dd04: stp          BARRIER, r0, [SP]
    // 0x42dd08: r0 = r1
    //     0x42dd08: mov          r0, r1
    // 0x42dd0c: lr = r0
    //     0x42dd0c: mov          lr, r0
    //     0x42dd10: ldr          lr, [r21, lr, lsl #3]
    // 0x42dd14: r0 = [R]()
    //     0x42dd14: blr          lr
    //     0x42dd18: tbnz         r0, #4, 0x42dea8
    //     0x42dd1c: ldur         r2, [fp, #-0x68]
    // 0x42dd20: r0 = LoadClassIdInstr(r2)
    //     0x42dd20: ldur         r0, [r2, #-1]
    //     0x42dd24: ubfx         r0, r0, #0xc, #0x14
    // 0x42dd28: r1 = r2
    //     0x42dd28: mov          r1, r2
    //     0x42dd2c: sub          lr, r0, #0xff0
    //     0x42dd30: ldr          lr, [r21, lr, lsl #3]
    // 0x42dd34: r0 = [R]()
    //     0x42dd34: blr          lr
    // 0x42dd38: r1 = LoadClassIdInstr(r0)
    //     0x42dd38: ldur         r1, [r0, #-1]
    //     0x42dd3c: ubfx         r1, r1, #0xc, #0x14
    // 0x42dd40: BARRIER = pp[0xf3f]
    //     0x42dd40: add          BARRIER, PP, #0xf, lsl #12
    //     0x42dd44: ldr          BARRIER, [BARRIER, #0xf30]
    //     0x42dd48: stp          BARRIER, r0, [SP]
    // 0x42dd4c: r0 = r1
    //     0x42dd4c: mov          r0, r1
    // 0x42dd50: lr = r0
    //     0x42dd50: mov          lr, r0
    //     0x42dd54: ldr          lr, [r21, lr, lsl #3]
    // 0x42dd58: r0 = [R]()
    //     0x42dd58: blr          lr
    //     0x42dd5c: tbnz         r0, #4, 0x42dea8
    //     0x42dd60: ldur         r2, [fp, #-0x68]
    // 0x42dd64: r0 = LoadClassIdInstr(r2)
    //     0x42dd64: ldur         r0, [r2, #-1]
    //     0x42dd68: ubfx         r0, r0, #0xc, #0x14
    // 0x42dd6c: r1 = r2
    //     0x42dd6c: mov          r1, r2
    //     0x42dd70: sub          lr, r0, #1, lsl #12
    //     0x42dd74: ldr          lr, [r21, lr, lsl #3]
    // 0x42dd78: r0 = [R]()
    //     0x42dd78: blr          lr
    // 0x42dd7c: r1 = r0
    //     0x42dd7c: mov          r1, r0
    //     0x42dd80: stur         r1, [fp, #-0x70]
    // 0x42dd84: r0 = LoadClassIdInstr(r1)
    //     0x42dd84: ldur         r0, [r1, #-1]
    //     0x42dd88: ubfx         r0, r0, #0xc, #0x14
    // 0x42dd8c: BARRIER = pp[0xf47]
    //     0x42dd8c: add          BARRIER, PP, #0xf, lsl #12
    //     0x42dd90: ldr          BARRIER, [BARRIER, #0xf38]
    //     0x42dd94: stp          BARRIER, r1, [SP]
    // 0x42dd98: lr = r0
    //     0x42dd98: mov          lr, r0
    //     0x42dd9c: ldr          lr, [r21, lr, lsl #3]
    // 0x42dda0: r0 = [R]()
    //     0x42dda0: blr          lr
    //     0x42dda4: tbnz         r0, #4, 0x42de04
    //     0x42dda8: ldur         r1, [fp, #-0x68]
    // 0x42ddac: r0 = LoadClassIdInstr(r1)
    //     0x42ddac: ldur         r0, [r1, #-1]
    //     0x42ddb0: ubfx         r0, r0, #0xc, #0x14
    //     0x42ddb4: sub          lr, r0, #0xfad
    //     0x42ddb8: ldr          lr, [r21, lr, lsl #3]
    // 0x42ddbc: r0 = [R]()
    //     0x42ddbc: blr          lr
    // 0x42ddc0: r1 = LoadClassIdInstr(r0)
    //     0x42ddc0: ldur         r1, [r0, #-1]
    //     0x42ddc4: ubfx         r1, r1, #0xc, #0x14
    // 0x42ddc8: BARRIER = r0
    //     0x42ddc8: mov          BARRIER, r0
    // 0x42ddcc: r0 = r1
    //     0x42ddcc: mov          r0, r1
    // 0x42ddd0: r1 = BARRIER
    //     0x42ddd0: mov          r1, BARRIER
    // 0x42ddd4: r2 = pp[0x2c48]
    //     0x42ddd4: ldr          r2, [PP, #0x2c48]
    //     0x42ddd8: sub          lr, r0, #1, lsl #12
    //     0x42dddc: ldr          lr, [r21, lr, lsl #3]
    // 0x42dde0: r0 = [R]()
    //     0x42dde0: blr          lr
    //     0x42dde4: cmp          r0, r22
    // 0x42dde8: b.eq 0x42dea8
    //     0x42dde8: b.eq         0x42dea8
    // 0x42ddec: LoadField: r1 = r0->field_7
    //     0x42ddec: ldur         r1, [r0, #7]
    //     0x42ddf0: cbz          r1, 0x42dea8
    //     0x42ddf4: ldur         r1, [fp, #-0x60]
    // 0x42ddf8: r2 = r0
    //     0x42ddf8: mov          r2, r0
    // 0x42ddfc: r0 = soul_flutter_international$common$plugins$router_RouterNative::routeH5()
    //     0x42ddfc: bl           0x3a6a60
    // 0x42de00: b 0x42dea8
    //     0x42de00: b            0x42dea8
    //     0x42de04: ldur         r1, [fp, #-0x68]
    //     0x42de08: ldur         r2, [fp, #-0x70]
    // 0x42de0c: r0 = LoadClassIdInstr(r2)
    //     0x42de0c: ldur         r0, [r2, #-1]
    //     0x42de10: ubfx         r0, r0, #0xc, #0x14
    // 0x42de14: BARRIER = pp[0x84f]
    //     0x42de14: add          BARRIER, PP, #0xf, lsl #12
    //     0x42de18: ldr          BARRIER, [BARRIER, #0x840]
    //     0x42de1c: stp          BARRIER, r2, [SP]
    // 0x42de20: lr = r0
    //     0x42de20: mov          lr, r0
    //     0x42de24: ldr          lr, [r21, lr, lsl #3]
    // 0x42de28: r0 = [R]()
    //     0x42de28: blr          lr
    //     0x42de2c: tbnz         r0, #4, 0x42de94
    //     0x42de30: ldur         r1, [fp, #-0x68]
    // 0x42de34: r0 = LoadClassIdInstr(r1)
    //     0x42de34: ldur         r0, [r1, #-1]
    //     0x42de38: ubfx         r0, r0, #0xc, #0x14
    //     0x42de3c: sub          lr, r0, #0xfad
    //     0x42de40: ldr          lr, [r21, lr, lsl #3]
    // 0x42de44: r0 = [R]()
    //     0x42de44: blr          lr
    // 0x42de48: r1 = LoadClassIdInstr(r0)
    //     0x42de48: ldur         r1, [r0, #-1]
    //     0x42de4c: ubfx         r1, r1, #0xc, #0x14
    // 0x42de50: BARRIER = r0
    //     0x42de50: mov          BARRIER, r0
    // 0x42de54: r0 = r1
    //     0x42de54: mov          r0, r1
    // 0x42de58: r1 = BARRIER
    //     0x42de58: mov          r1, BARRIER
    // 0x42de5c: r2 = pp[0x857]
    //     0x42de5c: add          r2, PP, #0xf, lsl #12
    //     0x42de60: ldr          r2, [r2, #0x848]
    //     0x42de64: sub          lr, r0, #1, lsl #12
    //     0x42de68: ldr          lr, [r21, lr, lsl #3]
    // 0x42de6c: r0 = [R]()
    //     0x42de6c: blr          lr
    //     0x42de70: cmp          r0, r22
    // 0x42de74: b.eq 0x42dea8
    //     0x42de74: b.eq         0x42dea8
    // 0x42de78: LoadField: r1 = r0->field_7
    //     0x42de78: ldur         r1, [r0, #7]
    //     0x42de7c: cbz          r1, 0x42dea8
    //     0x42de80: ldur         r1, [fp, #-0x60]
    // 0x42de84: r2 = r0
    //     0x42de84: mov          r2, r0
    // 0x42de88: r4 = pp[0x278]
    //     0x42de88: ldr          r4, [PP, #0x278]
    // 0x42de8c: r0 = soul_flutter_international$common$plugins$router_RouterNative::routeFlutter()
    //     0x42de8c: bl           0x3a99b4
    // 0x42de90: b 0x42dea8
    //     0x42de90: b            0x42dea8
    //     0x42de94: ldur         r1, [fp, #-0x60]
    //     0x42de98: ldur         r2, [fp, #-0x70]
    // 0x42de9c: r0 = soul_flutter_international$common$plugins$router_RouterNative::route()
    //     0x42de9c: bl           0x3a84c4
    // 0x42dea0: b 0x42dea8
    //     0x42dea0: b            0x42dea8
    //     0x42dea4: sub          SP, fp, #0x80
    // 0x42dea8: r0 = NULL
    //     0x42dea8: mov          r0, NULL
    // 0x42deac: SP = fp
    //     0x42deac: mov          SP, fp
    // 0x42deb0: LeaveFrame
    //     0x42deb0: ldp          fp, lr, [SP], #0x10
    // 0x42deb4: ret
    //     0x42deb4: ret          
    // 0x42deb8: r0 = call 0x61fa28
    //     0x42deb8: bl           0x61fa28
    // 0x42debc: b 0x42dccc
    //     0x42debc: b            0x42dccc
  }

  navigate() {
    // ** addr: 0x3a6ae8, size: 0xb4
    // 0x3a6ae8: EnterFrame
    //     0x3a6ae8: stp          fp, lr, [SP, #-0x10]!
    //     0x3a6aec: mov          fp, SP
    // 0x3a6af0: AllocStack(0x28)
    //     0x3a6af0: sub          SP, SP, #0x28
    // 0x3a6af4: r0 = r1
    //     0x3a6af4: mov          r0, r1
    //     0x3a6af8: stur         r1, [fp, #-8]
    // 0x3a6afc: CheckStackOverflow
    //     0x3a6afc: ldr          BARRIER, [THR, #0x38]
    //     0x3a6b00: cmp          SP, BARRIER
    //     0x3a6b04: b.ls         0x3a6b94
    // 0x3a6b08: r1 = NULL
    //     0x3a6b08: mov          r1, NULL
    //     0x3a6b0c: mov          r2, #8
    // 0x3a6b10: r0 = call 0x61f920
    //     0x3a6b10: bl           0x61f920
    // 0x3a6b14: BARRIER = pp[0xbb6]
    //     0x3a6b14: add          BARRIER, PP, #0xe, lsl #12
    //     0x3a6b18: ldr          BARRIER, [BARRIER, #0xba8]
    // 0x3a6b1c: StoreField: r0->field_f = r16
    //     0x3a6b1c: stur         r16, [r0, #0xf]
    //     0x3a6b20: ldur         r1, [fp, #-8]
    // 0x3a6b24: LoadField: r2 = r1->field_7
    //     0x3a6b24: ldur         r2, [r1, #7]
    //     0x3a6b28: add          r2, r2, HEAP, lsl #32
    // 0x3a6b2c: StoreField: r0->field_13 = r2
    //     0x3a6b2c: stur         r2, [r0, #0x13]
    // 0x3a6b30: BARRIER = pp[0xbbe]
    //     0x3a6b30: add          BARRIER, PP, #0xe, lsl #12
    //     0x3a6b34: ldr          BARRIER, [BARRIER, #0xbb0]
    // 0x3a6b38: ArrayStore: r0[0] = r16  ; List_8
    //     0x3a6b38: stur         r16, [r0, #0x17]
    // 0x3a6b3c: LoadField: r2 = r1->field_b
    //     0x3a6b3c: ldur         r2, [r1, #0xb]
    //     0x3a6b40: add          r2, r2, HEAP, lsl #32
    // 0x3a6b44: StoreField: r0->field_1b = r2
    //     0x3a6b44: stur         r2, [r0, #0x1b]
    //     0x3a6b48: str          r0, [SP]
    // 0x3a6b4c: r0 = dart_core__StringBase::_interpolate()
    //     0x3a6b4c: bl           0x2ad854
    // 0x3a6b50: r0 = flutter_boost$src$boost_navigator_BoostNavigator::get_instance()
    //     0x3a6b50: bl           0x3a4c98
    // 0x3a6b54: r1 = r0
    //     0x3a6b54: mov          r1, r0
    //     0x3a6b58: ldur         r0, [fp, #-8]
    // 0x3a6b5c: LoadField: r2 = r0->field_7
    //     0x3a6b5c: ldur         r2, [r0, #7]
    //     0x3a6b60: add          r2, r2, HEAP, lsl #32
    // 0x3a6b64: LoadField: r3 = r0->field_b
    //     0x3a6b64: ldur         r3, [r0, #0xb]
    //     0x3a6b68: add          r3, r3, HEAP, lsl #32
    // 0x3a6b6c: BARRIER = pp[0x1a8]
    //     0x3a6b6c: ldr          BARRIER, [PP, #0x1a8]
    //     0x3a6b70: stp          r1, BARRIER, [SP, #0x10]
    //     0x3a6b74: stp          r3, r2, [SP]
    // 0x3a6b78: r4 = pp[0xbc6]
    //     0x3a6b78: add          r4, PP, #0xe, lsl #12
    //     0x3a6b7c: ldr          r4, [r4, #0xbb8]
    // 0x3a6b80: r0 = flutter_boost$src$boost_navigator_BoostNavigator::push()
    //     0x3a6b80: bl           0x3a6b9c
    // 0x3a6b84: r0 = NULL
    //     0x3a6b84: mov          r0, NULL
    // 0x3a6b88: SP = fp
    //     0x3a6b88: mov          SP, fp
    // 0x3a6b8c: LeaveFrame
    //     0x3a6b8c: ldp          fp, lr, [SP], #0x10
    // 0x3a6b90: ret
    //     0x3a6b90: ret          
    // 0x3a6b94: r0 = call 0x61fa28
    //     0x3a6b94: bl           0x61fa28
    // 0x3a6b98: b 0x3a6b08
    //     0x3a6b98: b            0x3a6b08
  }

  withString() {
    // ** addr: 0x3a8024, size: 0x8c
    // 0x3a8024: EnterFrame
    //     0x3a8024: stp          fp, lr, [SP, #-0x10]!
    //     0x3a8028: mov          fp, SP
    // 0x3a802c: AllocStack(0x28)
    //     0x3a802c: sub          SP, SP, #0x28
    // 0x3a8030: r4 = r1
    //     0x3a8030: mov          r4, r1
    // 0x3a8034: r0 = r2
    //     0x3a8034: mov          r0, r2
    //     0x3a8038: stur         r1, [fp, #-0x10]
    //     0x3a803c: stur         r2, [fp, #-0x18]
    //     0x3a8040: stur         r3, [fp, #-0x20]
    // 0x3a8044: CheckStackOverflow
    //     0x3a8044: ldr          BARRIER, [THR, #0x38]
    //     0x3a8048: cmp          SP, BARRIER
    //     0x3a804c: b.ls         0x3a80a8
    // 0x3a8050: LoadField: r5 = r4->field_b
    //     0x3a8050: ldur         r5, [r4, #0xb]
    //     0x3a8054: add          r5, r5, HEAP, lsl #32
    //     0x3a8058: stur         r5, [fp, #-8]
    // 0x3a805c: r1 = NULL
    //     0x3a805c: mov          r1, NULL
    //     0x3a8060: mov          r2, #4
    // 0x3a8064: r0 = call 0x61f920
    //     0x3a8064: bl           0x61f920
    // 0x3a8068: r1 = r0
    //     0x3a8068: mov          r1, r0
    //     0x3a806c: ldur         r0, [fp, #-0x18]
    // 0x3a8070: StoreField: r1->field_f = r0
    //     0x3a8070: stur         r0, [r1, #0xf]
    // 0x3a8074: BARRIER = pp[0x87f]
    //     0x3a8074: add          BARRIER, PP, #0xf, lsl #12
    //     0x3a8078: ldr          BARRIER, [BARRIER, #0x870]
    // 0x3a807c: StoreField: r1->field_13 = r16
    //     0x3a807c: stur         r16, [r1, #0x13]
    //     0x3a8080: str          r1, [SP]
    // 0x3a8084: r0 = dart_core__StringBase::_interpolate()
    //     0x3a8084: bl           0x2ad854
    //     0x3a8088: ldur         r1, [fp, #-8]
    // 0x3a808c: r2 = r0
    //     0x3a808c: mov          r2, r0
    //     0x3a8090: ldur         r3, [fp, #-0x20]
    // 0x3a8094: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3a8094: bl           0x6164d4
    //     0x3a8098: ldur         r0, [fp, #-0x10]
    // 0x3a809c: SP = fp
    //     0x3a809c: mov          SP, fp
    // 0x3a80a0: LeaveFrame
    //     0x3a80a0: ldp          fp, lr, [SP], #0x10
    // 0x3a80a4: ret
    //     0x3a80a4: ret          
    // 0x3a80a8: r0 = call 0x61fa28
    //     0x3a80a8: bl           0x61fa28
    // 0x3a80ac: b 0x3a8050
    //     0x3a80ac: b            0x3a8050
  }

  withBoolean() {
    // ** addr: 0x3a9b08, size: 0xa0
    // 0x3a9b08: EnterFrame
    //     0x3a9b08: stp          fp, lr, [SP, #-0x10]!
    //     0x3a9b0c: mov          fp, SP
    // 0x3a9b10: AllocStack(0x28)
    //     0x3a9b10: sub          SP, SP, #0x28
    // 0x3a9b14: r4 = r1
    //     0x3a9b14: mov          r4, r1
    // 0x3a9b18: r0 = r2
    //     0x3a9b18: mov          r0, r2
    //     0x3a9b1c: stur         r1, [fp, #-0x10]
    //     0x3a9b20: stur         r2, [fp, #-0x18]
    //     0x3a9b24: stur         r3, [fp, #-0x20]
    // 0x3a9b28: CheckStackOverflow
    //     0x3a9b28: ldr          BARRIER, [THR, #0x38]
    //     0x3a9b2c: cmp          SP, BARRIER
    //     0x3a9b30: b.ls         0x3a9ba0
    // 0x3a9b34: LoadField: r5 = r4->field_b
    //     0x3a9b34: ldur         r5, [r4, #0xb]
    //     0x3a9b38: add          r5, r5, HEAP, lsl #32
    //     0x3a9b3c: stur         r5, [fp, #-8]
    // 0x3a9b40: r1 = NULL
    //     0x3a9b40: mov          r1, NULL
    //     0x3a9b44: mov          r2, #4
    // 0x3a9b48: r0 = call 0x61f920
    //     0x3a9b48: bl           0x61f920
    // 0x3a9b4c: r1 = r0
    //     0x3a9b4c: mov          r1, r0
    //     0x3a9b50: ldur         r0, [fp, #-0x18]
    // 0x3a9b54: StoreField: r1->field_f = r0
    //     0x3a9b54: stur         r0, [r1, #0xf]
    // 0x3a9b58: BARRIER = pp[0x877]
    //     0x3a9b58: add          BARRIER, PP, #0xf, lsl #12
    //     0x3a9b5c: ldr          BARRIER, [BARRIER, #0x868]
    // 0x3a9b60: StoreField: r1->field_13 = r16
    //     0x3a9b60: stur         r16, [r1, #0x13]
    //     0x3a9b64: str          r1, [SP]
    // 0x3a9b68: r0 = dart_core__StringBase::_interpolate()
    //     0x3a9b68: bl           0x2ad854
    // 0x3a9b6c: r1 = r0
    //     0x3a9b6c: mov          r1, r0
    //     0x3a9b70: ldur         r0, [fp, #-0x20]
    //     0x3a9b74: tbnz         r0, #4, 0x3a9b80
    // 0x3a9b78: r3 = pp[0xc58]
    //     0x3a9b78: ldr          r3, [PP, #0xc58]
    // 0x3a9b7c: b 0x3a9b84
    //     0x3a9b7c: b            0x3a9b84
    // 0x3a9b80: r3 = pp[0xc68]
    //     0x3a9b80: ldr          r3, [PP, #0xc68]
    // 0x3a9b84: r2 = r1
    //     0x3a9b84: mov          r2, r1
    //     0x3a9b88: ldur         r1, [fp, #-8]
    // 0x3a9b8c: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3a9b8c: bl           0x6164d4
    //     0x3a9b90: ldur         r0, [fp, #-0x10]
    // 0x3a9b94: SP = fp
    //     0x3a9b94: mov          SP, fp
    // 0x3a9b98: LeaveFrame
    //     0x3a9b98: ldp          fp, lr, [SP], #0x10
    // 0x3a9b9c: ret
    //     0x3a9b9c: ret          
    // 0x3a9ba0: r0 = call 0x61fa28
    //     0x3a9ba0: bl           0x61fa28
    // 0x3a9ba4: b 0x3a9b34
    //     0x3a9ba4: b            0x3a9b34
  }

  finish() {
    // ** addr: 0x3ab700, size: 0x2c
    // 0x3ab700: EnterFrame
    //     0x3ab700: stp          fp, lr, [SP, #-0x10]!
    //     0x3ab704: mov          fp, SP
    // 0x3ab708: CheckStackOverflow
    //     0x3ab708: ldr          BARRIER, [THR, #0x38]
    //     0x3ab70c: cmp          SP, BARRIER
    //     0x3ab710: b.ls         0x3ab724
    // 0x3ab714: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record__PagePKGameBetTabRecordState::_anon_closure()
    //     0x3ab714: bl           0x3a8d00
    // 0x3ab718: SP = fp
    //     0x3ab718: mov          SP, fp
    // 0x3ab71c: LeaveFrame
    //     0x3ab71c: ldp          fp, lr, [SP], #0x10
    // 0x3ab720: ret
    //     0x3ab720: ret          
    // 0x3ab724: r0 = call 0x61fa28
    //     0x3ab724: bl           0x61fa28
    // 0x3ab728: b 0x3ab714
    //     0x3ab728: b            0x3ab714
  }
