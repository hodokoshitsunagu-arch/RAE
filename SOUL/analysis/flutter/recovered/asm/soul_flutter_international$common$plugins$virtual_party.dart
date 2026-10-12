// lib: , url: soul_flutter_international$common$plugins$virtual_party


  sendTextToParty() {
    // ** addr: 0x3a8d40, size: 0xd8
    // 0x3a8d40: EnterFrame
    //     0x3a8d40: stp          fp, lr, [SP, #-0x10]!
    //     0x3a8d44: mov          fp, SP
    // 0x3a8d48: AllocStack(0x28)
    //     0x3a8d48: sub          SP, SP, #0x28
    //     0x3a8d4c: stur         r1, [fp, #-8]
    //     0x3a8d50: stur         r2, [fp, #-0x10]
    // 0x3a8d54: CheckStackOverflow
    //     0x3a8d54: ldr          BARRIER, [THR, #0x38]
    //     0x3a8d58: cmp          SP, BARRIER
    //     0x3a8d5c: b.ls         0x3a8e10
    // 0x3a8d60: LoadField: r0 = r1->field_7
    //     0x3a8d60: ldur         r0, [r1, #7]
    //     0x3a8d64: cbz          r0, 0x3a8d78
    //     0x3a8d68: cmp          r2, r22
    // 0x3a8d6c: b.eq 0x3a8d78
    //     0x3a8d6c: b.eq         0x3a8d78
    // 0x3a8d70: LoadField: r0 = r2->field_7
    //     0x3a8d70: ldur         r0, [r2, #7]
    //     0x3a8d74: cbnz         r0, 0x3a8d88
    // 0x3a8d78: r0 = NULL
    //     0x3a8d78: mov          r0, NULL
    // 0x3a8d7c: SP = fp
    //     0x3a8d7c: mov          SP, fp
    // 0x3a8d80: LeaveFrame
    //     0x3a8d80: ldp          fp, lr, [SP], #0x10
    // 0x3a8d84: ret
    //     0x3a8d84: ret          
    //     0x3a8d88: ldr          r0, [THR, #0x68]
    // 0x3a8d8c: LoadField: r0 = r0->field_17c8
    //     0x3a8d8c: ldr          r0, [r0, #0x17c8]
    // 0x3a8d90: BARRIER = pp[0x40]
    //     0x3a8d90: ldr          BARRIER, [PP, #0x40]
    //     0x3a8d94: cmp          r0, r16
    // 0x3a8d98: b.ne 0x3a8da8
    //     0x3a8d98: b.ne         0x3a8da8
    // 0x3a8d9c: r2 = pp[0x761]
    //     0x3a8d9c: add          r2, PP, #0x11, lsl #12
    //     0x3a8da0: ldr          r2, [r2, #0x750]
    // 0x3a8da4: r0 = call 0x61d99c
    //     0x3a8da4: bl           0x61d99c
    // 0x3a8da8: r1 = NULL
    //     0x3a8da8: mov          r1, NULL
    //     0x3a8dac: mov          r2, #8
    //     0x3a8db0: stur         r0, [fp, #-0x18]
    // 0x3a8db4: r0 = call 0x61f920
    //     0x3a8db4: bl           0x61f920
    // 0x3a8db8: BARRIER = pp[0xd58]
    //     0x3a8db8: add          BARRIER, PP, #0x10, lsl #12
    //     0x3a8dbc: ldr          BARRIER, [BARRIER, #0xd48]
    // 0x3a8dc0: StoreField: r0->field_f = r16
    //     0x3a8dc0: stur         r16, [r0, #0xf]
    //     0x3a8dc4: ldur         r1, [fp, #-8]
    // 0x3a8dc8: StoreField: r0->field_13 = r1
    //     0x3a8dc8: stur         r1, [r0, #0x13]
    // 0x3a8dcc: BARRIER = pp[0x79f8]
    //     0x3a8dcc: ldr          BARRIER, [PP, #0x79f8]
    // 0x3a8dd0: ArrayStore: r0[0] = r16  ; List_8
    //     0x3a8dd0: stur         r16, [r0, #0x17]
    //     0x3a8dd4: ldur         r1, [fp, #-0x10]
    // 0x3a8dd8: StoreField: r0->field_1b = r1
    //     0x3a8dd8: stur         r1, [r0, #0x1b]
    // 0x3a8ddc: BARRIER = pp[0x2a60]
    //     0x3a8ddc: ldr          BARRIER, [PP, #0x2a60]
    //     0x3a8de0: stp          r0, BARRIER, [SP]
    // 0x3a8de4: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x3a8de4: bl           0x27c0c8
    //     0x3a8de8: str          r0, [SP]
    //     0x3a8dec: ldur         r1, [fp, #-0x18]
    // 0x3a8df0: r2 = pp[0x43a]
    //     0x3a8df0: add          r2, PP, #0x12, lsl #12
    //     0x3a8df4: ldr          r2, [r2, #0x428]
    // 0x3a8df8: r4 = pp[0x280]
    //     0x3a8df8: ldr          r4, [PP, #0x280]
    // 0x3a8dfc: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x3a8dfc: bl           0x3a8288
    // 0x3a8e00: r0 = NULL
    //     0x3a8e00: mov          r0, NULL
    // 0x3a8e04: SP = fp
    //     0x3a8e04: mov          SP, fp
    // 0x3a8e08: LeaveFrame
    //     0x3a8e08: ldp          fp, lr, [SP], #0x10
    // 0x3a8e0c: ret
    //     0x3a8e0c: ret          
    // 0x3a8e10: r0 = call 0x61fa28
    //     0x3a8e10: bl           0x61fa28
    // 0x3a8e14: b 0x3a8d60
    //     0x3a8e14: b            0x3a8d60
  }

  _channel() {
    // ** addr: 0x3a8e18, size: 0x48
    // 0x3a8e18: EnterFrame
    //     0x3a8e18: stp          fp, lr, [SP, #-0x10]!
    //     0x3a8e1c: mov          fp, SP
    // 0x3a8e20: AllocStack(8)
    //     0x3a8e20: sub          SP, SP, #8
    // 0x3a8e24: CheckStackOverflow
    //     0x3a8e24: ldr          BARRIER, [THR, #0x38]
    //     0x3a8e28: cmp          SP, BARRIER
    //     0x3a8e2c: b.ls         0x3a8e58
    // 0x3a8e30: r0 = call 0x3a84b8
    //     0x3a8e30: bl           0x3a84b8
    // 0x3a8e34: r1 = r0
    //     0x3a8e34: mov          r1, r0
    // 0x3a8e38: r2 = pp[0x779]
    //     0x3a8e38: add          r2, PP, #0x11, lsl #12
    //     0x3a8e3c: ldr          r2, [r2, #0x768]
    //     0x3a8e40: stur         r0, [fp, #-8]
    // 0x3a8e44: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::ctor()
    //     0x3a8e44: bl           0x3a83ec
    //     0x3a8e48: ldur         r0, [fp, #-8]
    // 0x3a8e4c: SP = fp
    //     0x3a8e4c: mov          SP, fp
    // 0x3a8e50: LeaveFrame
    //     0x3a8e50: ldp          fp, lr, [SP], #0x10
    // 0x3a8e54: ret
    //     0x3a8e54: ret          
    // 0x3a8e58: r0 = call 0x61fa28
    //     0x3a8e58: bl           0x61fa28
    // 0x3a8e5c: b 0x3a8e30
    //     0x3a8e5c: b            0x3a8e30
  }

  inviteUserToParty() {
    // ** addr: 0x42066c, size: 0xd4
    // 0x42066c: EnterFrame
    //     0x42066c: stp          fp, lr, [SP, #-0x10]!
    //     0x420670: mov          fp, SP
    // 0x420674: AllocStack(0x28)
    //     0x420674: sub          SP, SP, #0x28
    //     0x420678: stur         r1, [fp, #-8]
    //     0x42067c: stur         r2, [fp, #-0x10]
    // 0x420680: CheckStackOverflow
    //     0x420680: ldr          BARRIER, [THR, #0x38]
    //     0x420684: cmp          SP, BARRIER
    //     0x420688: b.ls         0x420738
    // 0x42068c: LoadField: r0 = r1->field_7
    //     0x42068c: ldur         r0, [r1, #7]
    //     0x420690: cbz          r0, 0x42069c
    // 0x420694: LoadField: r0 = r2->field_b
    //     0x420694: ldur         r0, [r2, #0xb]
    //     0x420698: cbnz         r0, 0x4206ac
    // 0x42069c: r0 = NULL
    //     0x42069c: mov          r0, NULL
    // 0x4206a0: SP = fp
    //     0x4206a0: mov          SP, fp
    // 0x4206a4: LeaveFrame
    //     0x4206a4: ldp          fp, lr, [SP], #0x10
    // 0x4206a8: ret
    //     0x4206a8: ret          
    //     0x4206ac: ldr          r0, [THR, #0x68]
    // 0x4206b0: LoadField: r0 = r0->field_17c8
    //     0x4206b0: ldr          r0, [r0, #0x17c8]
    // 0x4206b4: BARRIER = pp[0x40]
    //     0x4206b4: ldr          BARRIER, [PP, #0x40]
    //     0x4206b8: cmp          r0, r16
    // 0x4206bc: b.ne 0x4206cc
    //     0x4206bc: b.ne         0x4206cc
    // 0x4206c0: r2 = pp[0x761]
    //     0x4206c0: add          r2, PP, #0x11, lsl #12
    //     0x4206c4: ldr          r2, [r2, #0x750]
    // 0x4206c8: r0 = call 0x61d99c
    //     0x4206c8: bl           0x61d99c
    // 0x4206cc: r1 = NULL
    //     0x4206cc: mov          r1, NULL
    //     0x4206d0: mov          r2, #8
    //     0x4206d4: stur         r0, [fp, #-0x18]
    // 0x4206d8: r0 = call 0x61f920
    //     0x4206d8: bl           0x61f920
    // 0x4206dc: BARRIER = pp[0xd58]
    //     0x4206dc: add          BARRIER, PP, #0x10, lsl #12
    //     0x4206e0: ldr          BARRIER, [BARRIER, #0xd48]
    // 0x4206e4: StoreField: r0->field_f = r16
    //     0x4206e4: stur         r16, [r0, #0xf]
    //     0x4206e8: ldur         r1, [fp, #-8]
    // 0x4206ec: StoreField: r0->field_13 = r1
    //     0x4206ec: stur         r1, [r0, #0x13]
    // 0x4206f0: BARRIER = pp[0x769]
    //     0x4206f0: add          BARRIER, PP, #0x11, lsl #12
    //     0x4206f4: ldr          BARRIER, [BARRIER, #0x758]
    // 0x4206f8: ArrayStore: r0[0] = r16  ; List_8
    //     0x4206f8: stur         r16, [r0, #0x17]
    //     0x4206fc: ldur         r1, [fp, #-0x10]
    // 0x420700: StoreField: r0->field_1b = r1
    //     0x420700: stur         r1, [r0, #0x1b]
    // 0x420704: BARRIER = pp[0x36d8]
    //     0x420704: ldr          BARRIER, [PP, #0x36d8]
    //     0x420708: stp          r0, BARRIER, [SP]
    // 0x42070c: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x42070c: bl           0x27c0c8
    //     0x420710: str          r0, [SP]
    //     0x420714: ldur         r1, [fp, #-0x18]
    // 0x420718: r2 = pp[0x771]
    //     0x420718: add          r2, PP, #0x11, lsl #12
    //     0x42071c: ldr          r2, [r2, #0x760]
    // 0x420720: r4 = pp[0x280]
    //     0x420720: ldr          r4, [PP, #0x280]
    // 0x420724: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x420724: bl           0x3a8288
    // 0x420728: r0 = NULL
    //     0x420728: mov          r0, NULL
    // 0x42072c: SP = fp
    //     0x42072c: mov          SP, fp
    // 0x420730: LeaveFrame
    //     0x420730: ldp          fp, lr, [SP], #0x10
    // 0x420734: ret
    //     0x420734: ret          
    // 0x420738: r0 = call 0x61fa28
    //     0x420738: bl           0x61fa28
    // 0x42073c: b 0x42068c
    //     0x42073c: b            0x42068c
  }
