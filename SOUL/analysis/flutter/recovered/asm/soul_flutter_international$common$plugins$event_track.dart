// lib: , url: soul_flutter_international$common$plugins$event_track


  eventClick() {
    // ** addr: 0x3a8e60, size: 0x7c
    // 0x3a8e60: EnterFrame
    //     0x3a8e60: stp          fp, lr, [SP, #-0x10]!
    //     0x3a8e64: mov          fp, SP
    // 0x3a8e68: r2 = r1
    //     0x3a8e68: mov          r2, r1
    // 0x3a8e6c: LoadField: r0 = r4->field_13
    //     0x3a8e6c: ldur         r0, [r4, #0x13]
    // 0x3a8e70: LoadField: r1 = r4->field_1f
    //     0x3a8e70: ldur         r1, [r4, #0x1f]
    //     0x3a8e74: add          r1, r1, HEAP, lsl #32
    // 0x3a8e78: BARRIER = pp[0x653]
    //     0x3a8e78: add          BARRIER, PP, #0xb, lsl #12
    //     0x3a8e7c: ldr          BARRIER, [BARRIER, #0x648]
    //     0x3a8e80: cmp          r1, r16
    // 0x3a8e84: b.ne 0x3a8ea4
    //     0x3a8e84: b.ne         0x3a8ea4
    // 0x3a8e88: LoadField: r1 = r4->field_23
    //     0x3a8e88: ldur         r1, [r4, #0x23]
    //     0x3a8e8c: add          r1, r1, HEAP, lsl #32
    //     0x3a8e90: sub          r3, r0, r1
    //     0x3a8e94: add          r0, fp, r3, sxtw #2
    // 0x3a8e98: LoadField: r0 = r0->field_8
    //     0x3a8e98: ldr          r0, [r0, #8]
    // 0x3a8e9c: r5 = r0
    //     0x3a8e9c: mov          r5, r0
    // 0x3a8ea0: b 0x3a8ea8
    //     0x3a8ea0: b            0x3a8ea8
    // 0x3a8ea4: r5 = NULL
    //     0x3a8ea4: mov          r5, NULL
    // 0x3a8ea8: CheckStackOverflow
    //     0x3a8ea8: ldr          BARRIER, [THR, #0x38]
    //     0x3a8eac: cmp          SP, BARRIER
    //     0x3a8eb0: b.ls         0x3a8ed4
    // 0x3a8eb4: r1 = pp[0xf7f]
    //     0x3a8eb4: add          r1, PP, #0xf, lsl #12
    //     0x3a8eb8: ldr          r1, [r1, #0xf70]
    // 0x3a8ebc: r3 = NULL
    //     0x3a8ebc: mov          r3, NULL
    // 0x3a8ec0: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::_callNative()
    //     0x3a8ec0: bl           0x3a8edc
    // 0x3a8ec4: r0 = NULL
    //     0x3a8ec4: mov          r0, NULL
    // 0x3a8ec8: SP = fp
    //     0x3a8ec8: mov          SP, fp
    // 0x3a8ecc: LeaveFrame
    //     0x3a8ecc: ldp          fp, lr, [SP], #0x10
    // 0x3a8ed0: ret
    //     0x3a8ed0: ret          
    // 0x3a8ed4: r0 = call 0x61fa28
    //     0x3a8ed4: bl           0x61fa28
    // 0x3a8ed8: b 0x3a8eb4
    //     0x3a8ed8: b            0x3a8eb4
  }

  _callNative() {
    // ** addr: 0x3a8edc, size: 0xfc
    // 0x3a8edc: EnterFrame
    //     0x3a8edc: stp          fp, lr, [SP, #-0x10]!
    //     0x3a8ee0: mov          fp, SP
    // 0x3a8ee4: AllocStack(0x70)
    //     0x3a8ee4: sub          SP, SP, #0x70
    // 0x3a8ee8: r4 = r1
    //     0x3a8ee8: mov          r4, r1
    // 0x3a8eec: r0 = r3
    //     0x3a8eec: mov          r0, r3
    //     0x3a8ef0: stur         r3, [fp, #-0x60]
    // 0x3a8ef4: r3 = r5
    //     0x3a8ef4: mov          r3, r5
    //     0x3a8ef8: stur         r1, [fp, #-0x50]
    //     0x3a8efc: stur         r2, [fp, #-0x58]
    //     0x3a8f00: stur         r5, [fp, #-0x68]
    // 0x3a8f04: CheckStackOverflow
    //     0x3a8f04: ldr          BARRIER, [THR, #0x38]
    //     0x3a8f08: cmp          SP, BARRIER
    //     0x3a8f0c: b.ls         0x3a8fd0
    // 0x3a8f10: r1 = pp[0xbf0]
    //     0x3a8f10: ldr          r1, [PP, #0xbf0]
    // 0x3a8f14: r0 = dart_core_Map::factory_ctor()
    //     0x3a8f14: bl           0x28cd60
    // 0x3a8f18: r1 = r0
    //     0x3a8f18: mov          r1, r0
    //     0x3a8f1c: ldur         r3, [fp, #-0x50]
    // 0x3a8f20: r2 = pp[0x2250]
    //     0x3a8f20: ldr          r2, [PP, #0x2250]
    //     0x3a8f24: stur         r0, [fp, #-0x50]
    // 0x3a8f28: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3a8f28: bl           0x6164d4
    //     0x3a8f2c: ldur         r3, [fp, #-0x58]
    //     0x3a8f30: cmp          r3, r22
    // 0x3a8f34: b.eq 0x3a8f48
    //     0x3a8f34: b.eq         0x3a8f48
    //     0x3a8f38: ldur         r1, [fp, #-0x50]
    // 0x3a8f3c: r2 = pp[0xf0f]
    //     0x3a8f3c: add          r2, PP, #0xf, lsl #12
    //     0x3a8f40: ldr          r2, [r2, #0xf00]
    // 0x3a8f44: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3a8f44: bl           0x6164d4
    //     0x3a8f48: ldur         r3, [fp, #-0x60]
    //     0x3a8f4c: cmp          r3, r22
    // 0x3a8f50: b.eq 0x3a8f64
    //     0x3a8f50: b.eq         0x3a8f64
    //     0x3a8f54: ldur         r1, [fp, #-0x50]
    // 0x3a8f58: r2 = pp[0xf17]
    //     0x3a8f58: add          r2, PP, #0xf, lsl #12
    //     0x3a8f5c: ldr          r2, [r2, #0xf08]
    // 0x3a8f60: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3a8f60: bl           0x6164d4
    //     0x3a8f64: ldur         r3, [fp, #-0x68]
    //     0x3a8f68: cmp          r3, r22
    // 0x3a8f6c: b.eq 0x3a8f80
    //     0x3a8f6c: b.eq         0x3a8f80
    //     0x3a8f70: ldur         r1, [fp, #-0x50]
    // 0x3a8f74: r2 = pp[0x653]
    //     0x3a8f74: add          r2, PP, #0xb, lsl #12
    //     0x3a8f78: ldr          r2, [r2, #0x648]
    // 0x3a8f7c: r0 = dart__compact_hash___Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::op_at_assign()
    //     0x3a8f7c: bl           0x6164d4
    //     0x3a8f80: ldr          r0, [THR, #0x68]
    // 0x3a8f84: LoadField: r0 = r0->field_1798
    //     0x3a8f84: ldr          r0, [r0, #0x1798]
    // 0x3a8f88: BARRIER = pp[0x40]
    //     0x3a8f88: ldr          BARRIER, [PP, #0x40]
    //     0x3a8f8c: cmp          r0, r16
    // 0x3a8f90: b.ne 0x3a8f9c
    //     0x3a8f90: b.ne         0x3a8f9c
    // 0x3a8f94: r2 = pp[0x2280]
    //     0x3a8f94: ldr          r2, [PP, #0x2280]
    // 0x3a8f98: r0 = call 0x61d99c
    //     0x3a8f98: bl           0x61d99c
    //     0x3a8f9c: ldur         BARRIER, [fp, #-0x50]
    //     0x3a8fa0: str          BARRIER, [SP]
    // 0x3a8fa4: r1 = r0
    //     0x3a8fa4: mov          r1, r0
    // 0x3a8fa8: r2 = pp[0xf1f]
    //     0x3a8fa8: add          r2, PP, #0xf, lsl #12
    //     0x3a8fac: ldr          r2, [r2, #0xf10]
    // 0x3a8fb0: r4 = pp[0x280]
    //     0x3a8fb0: ldr          r4, [PP, #0x280]
    // 0x3a8fb4: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x3a8fb4: bl           0x3a8288
    // 0x3a8fb8: b 0x3a8fc0
    //     0x3a8fb8: b            0x3a8fc0
    //     0x3a8fbc: sub          SP, fp, #0x70
    // 0x3a8fc0: r0 = NULL
    //     0x3a8fc0: mov          r0, NULL
    // 0x3a8fc4: SP = fp
    //     0x3a8fc4: mov          SP, fp
    // 0x3a8fc8: LeaveFrame
    //     0x3a8fc8: ldp          fp, lr, [SP], #0x10
    // 0x3a8fcc: ret
    //     0x3a8fcc: ret          
    // 0x3a8fd0: r0 = call 0x61fa28
    //     0x3a8fd0: bl           0x61fa28
    // 0x3a8fd4: b 0x3a8f10
    //     0x3a8fd4: b            0x3a8f10
  }

  _channel() {
    // ** addr: 0x3a8fd8, size: 0x44
    // 0x3a8fd8: EnterFrame
    //     0x3a8fd8: stp          fp, lr, [SP, #-0x10]!
    //     0x3a8fdc: mov          fp, SP
    // 0x3a8fe0: AllocStack(8)
    //     0x3a8fe0: sub          SP, SP, #8
    // 0x3a8fe4: CheckStackOverflow
    //     0x3a8fe4: ldr          BARRIER, [THR, #0x38]
    //     0x3a8fe8: cmp          SP, BARRIER
    //     0x3a8fec: b.ls         0x3a9014
    // 0x3a8ff0: r0 = call 0x3a84b8
    //     0x3a8ff0: bl           0x3a84b8
    // 0x3a8ff4: r1 = r0
    //     0x3a8ff4: mov          r1, r0
    // 0x3a8ff8: r2 = pp[0x2a18]
    //     0x3a8ff8: ldr          r2, [PP, #0x2a18]
    //     0x3a8ffc: stur         r0, [fp, #-8]
    // 0x3a9000: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::ctor()
    //     0x3a9000: bl           0x3a83ec
    //     0x3a9004: ldur         r0, [fp, #-8]
    // 0x3a9008: SP = fp
    //     0x3a9008: mov          SP, fp
    // 0x3a900c: LeaveFrame
    //     0x3a900c: ldp          fp, lr, [SP], #0x10
    // 0x3a9010: ret
    //     0x3a9010: ret          
    // 0x3a9014: r0 = call 0x61fa28
    //     0x3a9014: bl           0x61fa28
    // 0x3a9018: b 0x3a8ff0
    //     0x3a9018: b            0x3a8ff0
  }

  eventExpose() {
    // ** addr: 0x42dbb8, size: 0x48
    // 0x42dbb8: EnterFrame
    //     0x42dbb8: stp          fp, lr, [SP, #-0x10]!
    //     0x42dbbc: mov          fp, SP
    // 0x42dbc0: r5 = r1
    //     0x42dbc0: mov          r5, r1
    // 0x42dbc4: CheckStackOverflow
    //     0x42dbc4: ldr          BARRIER, [THR, #0x38]
    //     0x42dbc8: cmp          SP, BARRIER
    //     0x42dbcc: b.ls         0x42dbf8
    // 0x42dbd0: r1 = pp[0xeff]
    //     0x42dbd0: add          r1, PP, #0xf, lsl #12
    //     0x42dbd4: ldr          r1, [r1, #0xef0]
    // 0x42dbd8: r2 = pp[0xf07]
    //     0x42dbd8: add          r2, PP, #0xf, lsl #12
    //     0x42dbdc: ldr          r2, [r2, #0xef8]
    // 0x42dbe0: r3 = NULL
    //     0x42dbe0: mov          r3, NULL
    // 0x42dbe4: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::_callNative()
    //     0x42dbe4: bl           0x3a8edc
    // 0x42dbe8: r0 = NULL
    //     0x42dbe8: mov          r0, NULL
    // 0x42dbec: SP = fp
    //     0x42dbec: mov          SP, fp
    // 0x42dbf0: LeaveFrame
    //     0x42dbf0: ldp          fp, lr, [SP], #0x10
    // 0x42dbf4: ret
    //     0x42dbf4: ret          
    // 0x42dbf8: r0 = call 0x61fa28
    //     0x42dbf8: bl           0x61fa28
    // 0x42dbfc: b 0x42dbd0
    //     0x42dbfc: b            0x42dbd0
  }

  eventPv() {
    // ** addr: 0x4a9e38, size: 0x7c
    // 0x4a9e38: EnterFrame
    //     0x4a9e38: stp          fp, lr, [SP, #-0x10]!
    //     0x4a9e3c: mov          fp, SP
    // 0x4a9e40: r3 = r1
    //     0x4a9e40: mov          r3, r1
    // 0x4a9e44: LoadField: r0 = r4->field_13
    //     0x4a9e44: ldur         r0, [r4, #0x13]
    // 0x4a9e48: LoadField: r1 = r4->field_1f
    //     0x4a9e48: ldur         r1, [r4, #0x1f]
    //     0x4a9e4c: add          r1, r1, HEAP, lsl #32
    // 0x4a9e50: BARRIER = pp[0x653]
    //     0x4a9e50: add          BARRIER, PP, #0xb, lsl #12
    //     0x4a9e54: ldr          BARRIER, [BARRIER, #0x648]
    //     0x4a9e58: cmp          r1, r16
    // 0x4a9e5c: b.ne 0x4a9e7c
    //     0x4a9e5c: b.ne         0x4a9e7c
    // 0x4a9e60: LoadField: r1 = r4->field_23
    //     0x4a9e60: ldur         r1, [r4, #0x23]
    //     0x4a9e64: add          r1, r1, HEAP, lsl #32
    //     0x4a9e68: sub          r2, r0, r1
    //     0x4a9e6c: add          r0, fp, r2, sxtw #2
    // 0x4a9e70: LoadField: r0 = r0->field_8
    //     0x4a9e70: ldr          r0, [r0, #8]
    // 0x4a9e74: r5 = r0
    //     0x4a9e74: mov          r5, r0
    // 0x4a9e78: b 0x4a9e80
    //     0x4a9e78: b            0x4a9e80
    // 0x4a9e7c: r5 = NULL
    //     0x4a9e7c: mov          r5, NULL
    // 0x4a9e80: CheckStackOverflow
    //     0x4a9e80: ldr          BARRIER, [THR, #0x38]
    //     0x4a9e84: cmp          SP, BARRIER
    //     0x4a9e88: b.ls         0x4a9eac
    // 0x4a9e8c: r1 = pp[0xbe7]
    //     0x4a9e8c: add          r1, PP, #0x17, lsl #12
    //     0x4a9e90: ldr          r1, [r1, #0xbd0]
    // 0x4a9e94: r2 = NULL
    //     0x4a9e94: mov          r2, NULL
    // 0x4a9e98: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::_callNative()
    //     0x4a9e98: bl           0x3a8edc
    // 0x4a9e9c: r0 = NULL
    //     0x4a9e9c: mov          r0, NULL
    // 0x4a9ea0: SP = fp
    //     0x4a9ea0: mov          SP, fp
    // 0x4a9ea4: LeaveFrame
    //     0x4a9ea4: ldp          fp, lr, [SP], #0x10
    // 0x4a9ea8: ret
    //     0x4a9ea8: ret          
    // 0x4a9eac: r0 = call 0x61fa28
    //     0x4a9eac: bl           0x61fa28
    // 0x4a9eb0: b 0x4a9e8c
    //     0x4a9eb0: b            0x4a9e8c
  }

  recordError() {
    // ** addr: 0x622f48, size: 0xbc
    // 0x622f48: EnterFrame
    //     0x622f48: stp          fp, lr, [SP, #-0x10]!
    //     0x622f4c: mov          fp, SP
    // 0x622f50: AllocStack(0x60)
    //     0x622f50: sub          SP, SP, #0x60
    //     0x622f54: stur         r1, [fp, #-0x40]
    //     0x622f58: stur         r2, [fp, #-0x48]
    // 0x622f5c: CheckStackOverflow
    //     0x622f5c: ldr          BARRIER, [THR, #0x38]
    //     0x622f60: cmp          SP, BARRIER
    //     0x622f64: b.ls         0x622ffc
    //     0x622f68: ldr          r0, [THR, #0x68]
    // 0x622f6c: LoadField: r0 = r0->field_1798
    //     0x622f6c: ldr          r0, [r0, #0x1798]
    // 0x622f70: BARRIER = pp[0x40]
    //     0x622f70: ldr          BARRIER, [PP, #0x40]
    //     0x622f74: cmp          r0, r16
    // 0x622f78: b.ne 0x622f84
    //     0x622f78: b.ne         0x622f84
    // 0x622f7c: r2 = pp[0x2280]
    //     0x622f7c: ldr          r2, [PP, #0x2280]
    // 0x622f80: r0 = call 0x61d99c
    //     0x622f80: bl           0x61d99c
    // 0x622f84: r1 = NULL
    //     0x622f84: mov          r1, NULL
    //     0x622f88: mov          r2, #0xc
    //     0x622f8c: stur         r0, [fp, #-0x50]
    // 0x622f90: r0 = call 0x61f920
    //     0x622f90: bl           0x61f920
    // 0x622f94: BARRIER = pp[0x2288]
    //     0x622f94: ldr          BARRIER, [PP, #0x2288]
    // 0x622f98: StoreField: r0->field_f = r16
    //     0x622f98: stur         r16, [r0, #0xf]
    //     0x622f9c: ldur         r1, [fp, #-0x40]
    // 0x622fa0: StoreField: r0->field_13 = r1
    //     0x622fa0: stur         r1, [r0, #0x13]
    // 0x622fa4: BARRIER = pp[0x2290]
    //     0x622fa4: ldr          BARRIER, [PP, #0x2290]
    // 0x622fa8: ArrayStore: r0[0] = r16  ; List_8
    //     0x622fa8: stur         r16, [r0, #0x17]
    // 0x622fac: BARRIER = pp[0x2298]
    //     0x622fac: ldr          BARRIER, [PP, #0x2298]
    // 0x622fb0: StoreField: r0->field_1b = r16
    //     0x622fb0: stur         r16, [r0, #0x1b]
    // 0x622fb4: BARRIER = pp[0x22a0]
    //     0x622fb4: ldr          BARRIER, [PP, #0x22a0]
    // 0x622fb8: StoreField: r0->field_1f = r16
    //     0x622fb8: stur         r16, [r0, #0x1f]
    //     0x622fbc: ldur         r1, [fp, #-0x48]
    // 0x622fc0: StoreField: r0->field_23 = r1
    //     0x622fc0: stur         r1, [r0, #0x23]
    // 0x622fc4: BARRIER = pp[0xbf0]
    //     0x622fc4: ldr          BARRIER, [PP, #0xbf0]
    //     0x622fc8: stp          r0, BARRIER, [SP]
    // 0x622fcc: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x622fcc: bl           0x27c0c8
    //     0x622fd0: str          r0, [SP]
    //     0x622fd4: ldur         r1, [fp, #-0x50]
    // 0x622fd8: r2 = pp[0x22a8]
    //     0x622fd8: ldr          r2, [PP, #0x22a8]
    // 0x622fdc: r4 = pp[0x280]
    //     0x622fdc: ldr          r4, [PP, #0x280]
    // 0x622fe0: r0 = soul_flutter_international$common$plugins$channel_native_ChannelNative::call()
    //     0x622fe0: bl           0x3a8288
    // 0x622fe4: b 0x622fec
    //     0x622fe4: b            0x622fec
    //     0x622fe8: sub          SP, fp, #0x60
    // 0x622fec: r0 = NULL
    //     0x622fec: mov          r0, NULL
    // 0x622ff0: SP = fp
    //     0x622ff0: mov          SP, fp
    // 0x622ff4: LeaveFrame
    //     0x622ff4: ldp          fp, lr, [SP], #0x10
    // 0x622ff8: ret
    //     0x622ff8: ret          
    // 0x622ffc: r0 = call 0x61fa28
    //     0x622ffc: bl           0x61fa28
    // 0x623000: b 0x622f68
    //     0x623000: b            0x622f68
  }
