// lib: , url: soul_flutter_international$biz$party$notifier$notifier_party_invite


  get_selectedCount() {
    // ** addr: 0x420424, size: 0x20
    // 0x420424: LoadField: r2 = r1->field_63
    //     0x420424: ldur         r2, [r1, #0x63]
    //     0x420428: add          r2, r2, HEAP, lsl #32
    // 0x42042c: LoadField: r1 = r2->field_13
    //     0x42042c: ldur         r1, [r2, #0x13]
    // 0x420430: ArrayLoad: r3 = r2[0]  ; List_8
    //     0x420430: ldur         r3, [r2, #0x17]
    //     0x420434: sbfx         r2, r1, #1, #0x1f
    //     0x420438: sbfx         r1, r3, #1, #0x1f
    //     0x42043c: sub          r0, r2, r1
    // 0x420440: ret
    //     0x420440: ret          
  }

  get_isUserSelected() {
    // ** addr: 0x420450, size: 0x44
    // 0x420450: LoadField: r2 = r1->field_63
    //     0x420450: ldur         r2, [r1, #0x63]
    //     0x420454: add          r2, r2, HEAP, lsl #32
    // 0x420458: LoadField: r1 = r2->field_13
    //     0x420458: ldur         r1, [r2, #0x13]
    // 0x42045c: ArrayLoad: r3 = r2[0]  ; List_8
    //     0x42045c: ldur         r3, [r2, #0x17]
    //     0x420460: sbfx         r2, r1, #1, #0x1f
    //     0x420464: sbfx         r1, r3, #1, #0x1f
    //     0x420468: sub          r3, r2, r1
    //     0x42046c: cmp          r3, #0
    // 0x420470: b.le 0x42048c
    //     0x420470: b.le         0x42048c
    //     0x420474: cmp          r3, #0x14
    //     0x420478: add          BARRIER, NULL, #0x20
    //     0x42047c: add          r17, NULL, #0x30
    //     0x420480: csel         r1, BARRIER, r17, le
    // 0x420484: r0 = r1
    //     0x420484: mov          r0, r1
    // 0x420488: b 0x420490
    //     0x420488: b            0x420490
    //     0x42048c: add          r0, NULL, #0x30
    // 0x420490: ret
    //     0x420490: ret          
  }

  confirmInvite() {
    // ** addr: 0x42054c, size: 0x120
    // 0x42054c: EnterFrame
    //     0x42054c: stp          fp, lr, [SP, #-0x10]!
    //     0x420550: mov          fp, SP
    // 0x420554: AllocStack(0x38)
    //     0x420554: sub          SP, SP, #0x38
    // 0x420558: r3 = r1
    //     0x420558: mov          r3, r1
    // 0x42055c: r0 = r2
    //     0x42055c: mov          r0, r2
    //     0x420560: stur         r1, [fp, #-8]
    //     0x420564: stur         r2, [fp, #-0x10]
    // 0x420568: CheckStackOverflow
    //     0x420568: ldr          BARRIER, [THR, #0x38]
    //     0x42056c: cmp          SP, BARRIER
    //     0x420570: b.ls         0x420664
    // 0x420574: r1 = NULL
    //     0x420574: mov          r1, NULL
    //     0x420578: mov          r2, #4
    // 0x42057c: r0 = call 0x61f920
    //     0x42057c: bl           0x61f920
    //     0x420580: stur         r0, [fp, #-0x20]
    // 0x420584: BARRIER = pp[0x731]
    //     0x420584: add          BARRIER, PP, #0x11, lsl #12
    //     0x420588: ldr          BARRIER, [BARRIER, #0x720]
    // 0x42058c: StoreField: r0->field_f = r16
    //     0x42058c: stur         r16, [r0, #0xf]
    //     0x420590: ldur         r1, [fp, #-8]
    // 0x420594: LoadField: r2 = r1->field_63
    //     0x420594: ldur         r2, [r1, #0x63]
    //     0x420598: add          r2, r2, HEAP, lsl #32
    //     0x42059c: stur         r2, [fp, #-0x18]
    // 0x4205a0: LoadField: r1 = r2->field_13
    //     0x4205a0: ldur         r1, [r2, #0x13]
    // 0x4205a4: ArrayLoad: r3 = r2[0]  ; List_8
    //     0x4205a4: ldur         r3, [r2, #0x17]
    //     0x4205a8: sbfx         r4, r1, #1, #0x1f
    //     0x4205ac: sbfx         r1, r3, #1, #0x1f
    //     0x4205b0: sub          r3, r4, r1
    //     0x4205b4: lsl          r1, r3, #1
    //     0x4205b8: str          r1, [SP]
    // 0x4205bc: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x4205bc: bl           0x2ac0a0
    //     0x4205c0: ldur         r1, [fp, #-0x20]
    //     0x4205c4: add          r25, r1, #0x13
    //     0x4205c8: str          r0, [r25]
    // 0x4205cc: branchIfSmi(r0, 0x4205e8)
    //     0x4205cc: tbz          r0, #0, 0x4205e8
    //     0x4205d0: ldurb        r16, [r1, #-1]
    //     0x4205d4: ldurb        r17, [r0, #-1]
    //     0x4205d8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4205dc: tst          BARRIER, HEAP, lsr #32
    // 0x4205e0: b.eq 0x4205e8
    //     0x4205e0: b.eq         0x4205e8
    // 0x4205e4: r0 = call 0x61db00
    //     0x4205e4: bl           0x61db00
    // 0x4205e8: BARRIER = pp[0xbf0]
    //     0x4205e8: ldr          BARRIER, [PP, #0xbf0]
    //     0x4205ec: ldur         lr, [fp, #-0x20]
    //     0x4205f0: stp          lr, BARRIER, [SP]
    // 0x4205f4: r0 = dart_core_Map::factory_ctor__fromLiteral()
    //     0x4205f4: bl           0x27c0c8
    //     0x4205f8: str          r0, [SP]
    // 0x4205fc: r1 = pp[0x739]
    //     0x4205fc: add          r1, PP, #0x11, lsl #12
    //     0x420600: ldr          r1, [r1, #0x728]
    // 0x420604: r4 = pp[0xf2f]
    //     0x420604: add          r4, PP, #0xf, lsl #12
    //     0x420608: ldr          r4, [r4, #0xf20]
    // 0x42060c: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventClick()
    //     0x42060c: bl           0x3a8e60
    // 0x420610: r1 = pp[0x741]
    //     0x420610: add          r1, PP, #0x11, lsl #12
    //     0x420614: ldr          r1, [r1, #0x730]
    // 0x420618: r2 = NULL
    //     0x420618: mov          r2, NULL
    // 0x42061c: r0 = call 0x61ec54
    //     0x42061c: bl           0x61ec54
    // 0x420620: BARRIER = pp[0x868]
    //     0x420620: ldr          BARRIER, [PP, #0x868]
    //     0x420624: ldur         lr, [fp, #-0x18]
    //     0x420628: stp          lr, BARRIER, [SP, #8]
    //     0x42062c: str          r0, [SP]
    // 0x420630: r4 = pp[0x58]
    //     0x420630: ldr          r4, [PP, #0x58]
    // 0x420634: r0 = dart__compact_hash___Set&_HashVMBase&SetMixin::map()
    //     0x420634: bl           0x3bd5fc
    // 0x420638: LoadField: r1 = r0->field_7
    //     0x420638: ldur         r1, [r0, #7]
    //     0x42063c: add          r1, r1, HEAP, lsl #32
    // 0x420640: r2 = r0
    //     0x420640: mov          r2, r0
    // 0x420644: r0 = dart_core__GrowableList::factory_ctor_of()
    //     0x420644: bl           0x276db0
    //     0x420648: ldur         r1, [fp, #-0x10]
    // 0x42064c: r2 = r0
    //     0x42064c: mov          r2, r0
    // 0x420650: r0 = soul_flutter_international$common$plugins$virtual_party_VirtualParty::inviteUserToParty()
    //     0x420650: bl           0x42066c
    // 0x420654: r0 = NULL
    //     0x420654: mov          r0, NULL
    // 0x420658: SP = fp
    //     0x420658: mov          SP, fp
    // 0x42065c: LeaveFrame
    //     0x42065c: ldp          fp, lr, [SP], #0x10
    // 0x420660: ret
    //     0x420660: ret          
    // 0x420664: r0 = call 0x61fa28
    //     0x420664: bl           0x61fa28
    // 0x420668: b 0x420574
    //     0x420668: b            0x420574
  }

  _anon_closure() {
    // ** addr: 0x420740, size: 0x78
    // 0x420740: EnterFrame
    //     0x420740: stp          fp, lr, [SP, #-0x10]!
    //     0x420744: mov          fp, SP
    //     0x420748: ldr          r1, [fp, #0x10]
    // 0x42074c: LoadField: r2 = r1->field_7
    //     0x42074c: ldur         r2, [r1, #7]
    //     0x420750: add          r2, r2, HEAP, lsl #32
    // 0x420754: BARRIER = pp[0x40]
    //     0x420754: ldr          BARRIER, [PP, #0x40]
    //     0x420758: cmp          r2, r16
    // 0x42075c: b.eq 0x420794
    //     0x42075c: b.eq         0x420794
    // 0x420760: LoadField: r1 = r2->field_7
    //     0x420760: ldur         r1, [r2, #7]
    //     0x420764: add          r1, r1, HEAP, lsl #32
    // 0x420768: BARRIER = pp[0x40]
    //     0x420768: ldr          BARRIER, [PP, #0x40]
    //     0x42076c: cmp          r1, r16
    // 0x420770: b.eq 0x4207a0
    //     0x420770: b.eq         0x4207a0
    // 0x420774: LoadField: r0 = r1->field_7
    //     0x420774: ldur         r0, [r1, #7]
    //     0x420778: add          r0, r0, HEAP, lsl #32
    // 0x42077c: BARRIER = pp[0x40]
    //     0x42077c: ldr          BARRIER, [PP, #0x40]
    //     0x420780: cmp          r0, r16
    // 0x420784: b.eq 0x4207ac
    //     0x420784: b.eq         0x4207ac
    // 0x420788: SP = fp
    //     0x420788: mov          SP, fp
    // 0x42078c: LeaveFrame
    //     0x42078c: ldp          fp, lr, [SP], #0x10
    // 0x420790: ret
    //     0x420790: ret          
    // 0x420794: r9 = pp[0x749]
    //     0x420794: add          r9, PP, #0x11, lsl #12
    //     0x420798: ldr          r9, [r9, #0x738]
    // 0x42079c: r0 = call 0x620258
    //     0x42079c: bl           0x620258
    // 0x4207a0: r9 = pp[0x751]
    //     0x4207a0: add          r9, PP, #0x11, lsl #12
    //     0x4207a4: ldr          r9, [r9, #0x740]
    // 0x4207a8: r0 = call 0x620258
    //     0x4207a8: bl           0x620258
    // 0x4207ac: r9 = pp[0x759]
    //     0x4207ac: add          r9, PP, #0x11, lsl #12
    //     0x4207b0: ldr          r9, [r9, #0x748]
    // 0x4207b4: r0 = call 0x620258
    //     0x4207b4: bl           0x620258
  }

  needFlagHighlight() {
    // ** addr: 0x421f74, size: 0x9c
    // 0x421f74: EnterFrame
    //     0x421f74: stp          fp, lr, [SP, #-0x10]!
    //     0x421f78: mov          fp, SP
    //     0x421f7c: cmp          r2, #3
    // 0x421f80: b.eq 0x421f94
    //     0x421f80: b.eq         0x421f94
    //     0x421f84: add          r0, NULL, #0x30
    // 0x421f88: SP = fp
    //     0x421f88: mov          SP, fp
    // 0x421f8c: LeaveFrame
    //     0x421f8c: ldp          fp, lr, [SP], #0x10
    // 0x421f90: ret
    //     0x421f90: ret          
    // 0x421f94: LoadField: r1 = r3->field_7
    //     0x421f94: ldur         r1, [r3, #7]
    //     0x421f98: add          r1, r1, HEAP, lsl #32
    // 0x421f9c: BARRIER = pp[0x40]
    //     0x421f9c: ldr          BARRIER, [PP, #0x40]
    //     0x421fa0: cmp          r1, r16
    // 0x421fa4: b.eq 0x421fec
    //     0x421fa4: b.eq         0x421fec
    // 0x421fa8: LoadField: r2 = r1->field_f
    //     0x421fa8: ldur         r2, [r1, #0xf]
    //     0x421fac: add          r2, r2, HEAP, lsl #32
    // 0x421fb0: BARRIER = pp[0x40]
    //     0x421fb0: ldr          BARRIER, [PP, #0x40]
    //     0x421fb4: cmp          r2, r16
    // 0x421fb8: b.eq 0x421ff8
    //     0x421fb8: b.eq         0x421ff8
    // 0x421fbc: LoadField: r3 = r1->field_13
    //     0x421fbc: ldur         r3, [r1, #0x13]
    //     0x421fc0: add          r3, r3, HEAP, lsl #32
    // 0x421fc4: BARRIER = pp[0x40]
    //     0x421fc4: ldr          BARRIER, [PP, #0x40]
    //     0x421fc8: cmp          r3, r16
    // 0x421fcc: b.eq 0x422004
    //     0x421fcc: b.eq         0x422004
    //     0x421fd0: tbnz         r3, #4, 0x421fdc
    // 0x421fd4: r0 = r2
    //     0x421fd4: mov          r0, r2
    // 0x421fd8: b 0x421fe0
    //     0x421fd8: b            0x421fe0
    //     0x421fdc: add          r0, NULL, #0x30
    // 0x421fe0: SP = fp
    //     0x421fe0: mov          SP, fp
    // 0x421fe4: LeaveFrame
    //     0x421fe4: ldp          fp, lr, [SP], #0x10
    // 0x421fe8: ret
    //     0x421fe8: ret          
    // 0x421fec: r9 = pp[0x749]
    //     0x421fec: add          r9, PP, #0x11, lsl #12
    //     0x421ff0: ldr          r9, [r9, #0x738]
    // 0x421ff4: r0 = call 0x620258
    //     0x421ff4: bl           0x620258
    // 0x421ff8: r9 = pp[0xf8c]
    //     0x421ff8: add          r9, PP, #0x14, lsl #12
    //     0x421ffc: ldr          r9, [r9, #0xf78]
    // 0x422000: r0 = call 0x620258
    //     0x422000: bl           0x620258
    // 0x422004: r9 = pp[0xf94]
    //     0x422004: add          r9, PP, #0x14, lsl #12
    //     0x422008: ldr          r9, [r9, #0xf80]
    // 0x42200c: r0 = call 0x620258
    //     0x42200c: bl           0x620258
  }

  getItemFlag() {
    // ** addr: 0x422010, size: 0x16c
    // 0x422010: EnterFrame
    //     0x422010: stp          fp, lr, [SP, #-0x10]!
    //     0x422014: mov          fp, SP
    // 0x422018: CheckStackOverflow
    //     0x422018: ldr          BARRIER, [THR, #0x38]
    //     0x42201c: cmp          SP, BARRIER
    //     0x422020: b.ls         0x422144
    //     0x422024: cmp          r2, #3
    // 0x422028: b.eq 0x42203c
    //     0x422028: b.eq         0x42203c
    // 0x42202c: r0 = pp[0x148]
    //     0x42202c: ldr          r0, [PP, #0x148]
    // 0x422030: SP = fp
    //     0x422030: mov          SP, fp
    // 0x422034: LeaveFrame
    //     0x422034: ldp          fp, lr, [SP], #0x10
    // 0x422038: ret
    //     0x422038: ret          
    // 0x42203c: LoadField: r0 = r3->field_7
    //     0x42203c: ldur         r0, [r3, #7]
    //     0x422040: add          r0, r0, HEAP, lsl #32
    // 0x422044: BARRIER = pp[0x40]
    //     0x422044: ldr          BARRIER, [PP, #0x40]
    //     0x422048: cmp          r0, r16
    // 0x42204c: b.eq 0x42214c
    //     0x42204c: b.eq         0x42214c
    // 0x422050: LoadField: r1 = r0->field_f
    //     0x422050: ldur         r1, [r0, #0xf]
    //     0x422054: add          r1, r1, HEAP, lsl #32
    // 0x422058: BARRIER = pp[0x40]
    //     0x422058: ldr          BARRIER, [PP, #0x40]
    //     0x42205c: cmp          r1, r16
    // 0x422060: b.eq 0x422158
    //     0x422060: b.eq         0x422158
    // 0x422064: LoadField: r2 = r0->field_13
    //     0x422064: ldur         r2, [r0, #0x13]
    //     0x422068: add          r2, r2, HEAP, lsl #32
    // 0x42206c: BARRIER = pp[0x40]
    //     0x42206c: ldr          BARRIER, [PP, #0x40]
    //     0x422070: cmp          r2, r16
    // 0x422074: b.eq 0x422164
    //     0x422074: b.eq         0x422164
    //     0x422078: tbnz         r2, #4, 0x42209c
    //     0x42207c: tbnz         r1, #4, 0x42209c
    // 0x422080: r1 = pp[0xaa4]
    //     0x422080: add          r1, PP, #0xc, lsl #12
    //     0x422084: ldr          r1, [r1, #0xa98]
    // 0x422088: r4 = pp[0x4c0]
    //     0x422088: ldr          r4, [PP, #0x4c0]
    // 0x42208c: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x42208c: bl           0x3a1dcc
    // 0x422090: SP = fp
    //     0x422090: mov          SP, fp
    // 0x422094: LeaveFrame
    //     0x422094: ldp          fp, lr, [SP], #0x10
    // 0x422098: ret
    //     0x422098: ret          
    // 0x42209c: LoadField: r1 = r0->field_b
    //     0x42209c: ldur         r1, [r0, #0xb]
    //     0x4220a0: add          r1, r1, HEAP, lsl #32
    // 0x4220a4: BARRIER = pp[0x40]
    //     0x4220a4: ldr          BARRIER, [PP, #0x40]
    //     0x4220a8: cmp          r1, r16
    // 0x4220ac: b.eq 0x422170
    //     0x4220ac: b.eq         0x422170
    // 0x4220b0: BARRIER = pp[0xf9c]
    //     0x4220b0: add          BARRIER, PP, #0x14, lsl #12
    //     0x4220b4: ldr          BARRIER, [BARRIER, #0xf88]
    //     0x4220b8: cmp          r1, r16
    // 0x4220bc: b.ne 0x4220dc
    //     0x4220bc: b.ne         0x4220dc
    // 0x4220c0: r1 = pp[0xaac]
    //     0x4220c0: add          r1, PP, #0xc, lsl #12
    //     0x4220c4: ldr          r1, [r1, #0xaa0]
    // 0x4220c8: r4 = pp[0x4c0]
    //     0x4220c8: ldr          r4, [PP, #0x4c0]
    // 0x4220cc: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4220cc: bl           0x3a1dcc
    // 0x4220d0: SP = fp
    //     0x4220d0: mov          SP, fp
    // 0x4220d4: LeaveFrame
    //     0x4220d4: ldp          fp, lr, [SP], #0x10
    // 0x4220d8: ret
    //     0x4220d8: ret          
    // 0x4220dc: BARRIER = pp[0xfa4]
    //     0x4220dc: add          BARRIER, PP, #0x14, lsl #12
    //     0x4220e0: ldr          BARRIER, [BARRIER, #0xf90]
    //     0x4220e4: cmp          r1, r16
    // 0x4220e8: b.ne 0x422108
    //     0x4220e8: b.ne         0x422108
    // 0x4220ec: r1 = pp[0xabc]
    //     0x4220ec: add          r1, PP, #0xc, lsl #12
    //     0x4220f0: ldr          r1, [r1, #0xab0]
    // 0x4220f4: r4 = pp[0x4c0]
    //     0x4220f4: ldr          r4, [PP, #0x4c0]
    // 0x4220f8: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4220f8: bl           0x3a1dcc
    // 0x4220fc: SP = fp
    //     0x4220fc: mov          SP, fp
    // 0x422100: LeaveFrame
    //     0x422100: ldp          fp, lr, [SP], #0x10
    // 0x422104: ret
    //     0x422104: ret          
    // 0x422108: BARRIER = pp[0xfac]
    //     0x422108: add          BARRIER, PP, #0x14, lsl #12
    //     0x42210c: ldr          BARRIER, [BARRIER, #0xf98]
    //     0x422110: cmp          r1, r16
    // 0x422114: b.ne 0x422134
    //     0x422114: b.ne         0x422134
    // 0x422118: r1 = pp[0xacc]
    //     0x422118: add          r1, PP, #0xc, lsl #12
    //     0x42211c: ldr          r1, [r1, #0xac0]
    // 0x422120: r4 = pp[0x4c0]
    //     0x422120: ldr          r4, [PP, #0x4c0]
    // 0x422124: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x422124: bl           0x3a1dcc
    // 0x422128: SP = fp
    //     0x422128: mov          SP, fp
    // 0x42212c: LeaveFrame
    //     0x42212c: ldp          fp, lr, [SP], #0x10
    // 0x422130: ret
    //     0x422130: ret          
    // 0x422134: r0 = pp[0x148]
    //     0x422134: ldr          r0, [PP, #0x148]
    // 0x422138: SP = fp
    //     0x422138: mov          SP, fp
    // 0x42213c: LeaveFrame
    //     0x42213c: ldp          fp, lr, [SP], #0x10
    // 0x422140: ret
    //     0x422140: ret          
    // 0x422144: r0 = call 0x61fa28
    //     0x422144: bl           0x61fa28
    // 0x422148: b 0x422024
    //     0x422148: b            0x422024
    // 0x42214c: r9 = pp[0x749]
    //     0x42214c: add          r9, PP, #0x11, lsl #12
    //     0x422150: ldr          r9, [r9, #0x738]
    // 0x422154: r0 = call 0x620258
    //     0x422154: bl           0x620258
    // 0x422158: r9 = pp[0xf8c]
    //     0x422158: add          r9, PP, #0x14, lsl #12
    //     0x42215c: ldr          r9, [r9, #0xf78]
    // 0x422160: r0 = call 0x620258
    //     0x422160: bl           0x620258
    // 0x422164: r9 = pp[0xf94]
    //     0x422164: add          r9, PP, #0x14, lsl #12
    //     0x422168: ldr          r9, [r9, #0xf80]
    // 0x42216c: r0 = call 0x620258
    //     0x42216c: bl           0x620258
    // 0x422170: r9 = pp[0xfb4]
    //     0x422170: add          r9, PP, #0x14, lsl #12
    //     0x422174: ldr          r9, [r9, #0xfa0]
    // 0x422178: r0 = call 0x620258
    //     0x422178: bl           0x620258
  }

  selectCurrentItem() {
    // ** addr: 0x4221d8, size: 0x420
    // 0x4221d8: EnterFrame
    //     0x4221d8: stp          fp, lr, [SP, #-0x10]!
    //     0x4221dc: mov          fp, SP
    // 0x4221e0: AllocStack(0x48)
    //     0x4221e0: sub          SP, SP, #0x48
    // 0x4221e4: r3 = r1
    //     0x4221e4: mov          r3, r1
    // 0x4221e8: r0 = r2
    //     0x4221e8: mov          r0, r2
    //     0x4221ec: stur         r1, [fp, #-0x18]
    //     0x4221f0: stur         r2, [fp, #-0x20]
    // 0x4221f4: CheckStackOverflow
    //     0x4221f4: ldr          BARRIER, [THR, #0x38]
    //     0x4221f8: cmp          SP, BARRIER
    //     0x4221fc: b.ls         0x422560
    // 0x422200: LoadField: r4 = r0->field_b
    //     0x422200: ldur         r4, [r0, #0xb]
    //     0x422204: add          r4, r4, HEAP, lsl #32
    // 0x422208: BARRIER = pp[0x40]
    //     0x422208: ldr          BARRIER, [PP, #0x40]
    //     0x42220c: cmp          r4, r16
    // 0x422210: b.eq 0x422568
    //     0x422210: b.eq         0x422568
    //     0x422214: stur         r4, [fp, #-0x10]
    // 0x422218: LoadField: r1 = r0->field_7
    //     0x422218: ldur         r1, [r0, #7]
    //     0x42221c: add          r1, r1, HEAP, lsl #32
    // 0x422220: BARRIER = pp[0x40]
    //     0x422220: ldr          BARRIER, [PP, #0x40]
    //     0x422224: cmp          r1, r16
    // 0x422228: b.eq 0x422574
    //     0x422228: b.eq         0x422574
    // 0x42222c: LoadField: r2 = r1->field_7
    //     0x42222c: ldur         r2, [r1, #7]
    //     0x422230: add          r2, r2, HEAP, lsl #32
    // 0x422234: BARRIER = pp[0x40]
    //     0x422234: ldr          BARRIER, [PP, #0x40]
    //     0x422238: cmp          r2, r16
    // 0x42223c: b.eq 0x422580
    //     0x42223c: b.eq         0x422580
    // 0x422240: LoadField: r5 = r2->field_7
    //     0x422240: ldur         r5, [r2, #7]
    //     0x422244: add          r5, r5, HEAP, lsl #32
    // 0x422248: BARRIER = pp[0x40]
    //     0x422248: ldr          BARRIER, [PP, #0x40]
    //     0x42224c: cmp          r5, r16
    // 0x422250: b.eq 0x42258c
    //     0x422250: b.eq         0x42258c
    //     0x422254: stur         r5, [fp, #-8]
    // 0x422258: r1 = pp[0x82b]
    //     0x422258: add          r1, PP, #0xb, lsl #12
    //     0x42225c: ldr          r1, [r1, #0x820]
    //     0x422260: mov          r2, #0
    // 0x422264: r0 = dart_core__GrowableList::factory_ctor()
    //     0x422264: bl           0x277268
    // 0x422268: r3 = r0
    //     0x422268: mov          r3, r0
    //     0x42226c: ldur         r0, [fp, #-0x18]
    //     0x422270: stur         r3, [fp, #-0x28]
    // 0x422274: LoadField: r2 = r0->field_53
    //     0x422274: ldur         r2, [r0, #0x53]
    //     0x422278: add          r2, r2, HEAP, lsl #32
    // 0x42227c: r1 = r3
    //     0x42227c: mov          r1, r3
    // 0x422280: r0 = dart_core__GrowableList::addAll()
    //     0x422280: bl           0x2ce4e8
    //     0x422284: ldur         r0, [fp, #-0x18]
    // 0x422288: LoadField: r2 = r0->field_57
    //     0x422288: ldur         r2, [r0, #0x57]
    //     0x42228c: add          r2, r2, HEAP, lsl #32
    //     0x422290: ldur         r1, [fp, #-0x28]
    // 0x422294: r0 = dart_core__GrowableList::addAll()
    //     0x422294: bl           0x2ce4e8
    //     0x422298: ldur         r0, [fp, #-0x18]
    // 0x42229c: LoadField: r2 = r0->field_5b
    //     0x42229c: ldur         r2, [r0, #0x5b]
    //     0x4222a0: add          r2, r2, HEAP, lsl #32
    //     0x4222a4: ldur         r1, [fp, #-0x28]
    // 0x4222a8: r0 = dart_core__GrowableList::addAll()
    //     0x4222a8: bl           0x2ce4e8
    //     0x4222ac: ldur         r0, [fp, #-0x18]
    // 0x4222b0: LoadField: r2 = r0->field_5f
    //     0x4222b0: ldur         r2, [r0, #0x5f]
    //     0x4222b4: add          r2, r2, HEAP, lsl #32
    //     0x4222b8: ldur         r1, [fp, #-0x28]
    // 0x4222bc: r0 = dart_core__GrowableList::addAll()
    //     0x4222bc: bl           0x2ce4e8
    //     0x4222c0: ldur         r0, [fp, #-0x10]
    //     0x4222c4: tbnz         r0, #4, 0x4223d8
    //     0x4222c8: ldur         r0, [fp, #-0x18]
    //     0x4222cc: ldur         r3, [fp, #-0x28]
    // 0x4222d0: LoadField: r1 = r0->field_63
    //     0x4222d0: ldur         r1, [r0, #0x63]
    //     0x4222d4: add          r1, r1, HEAP, lsl #32
    //     0x4222d8: ldur         r2, [fp, #-0x20]
    // 0x4222dc: r0 = dart__compact_hash___Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::remove()
    //     0x4222dc: bl           0x614948
    //     0x4222e0: ldur         r2, [fp, #-0x28]
    // 0x4222e4: LoadField: r3 = r2->field_b
    //     0x4222e4: ldur         r3, [r2, #0xb]
    //     0x4222e8: stur         r3, [fp, #-0x38]
    //     0x4222ec: sbfx         r0, r3, #1, #0x1f
    //     0x4222f0: mov          r5, #0
    //     0x4222f4: ldur         r4, [fp, #-8]
    //     0x4222f8: stur         r5, [fp, #-0x30]
    // 0x4222fc: CheckStackOverflow
    //     0x4222fc: ldr          BARRIER, [THR, #0x38]
    //     0x422300: cmp          SP, BARRIER
    //     0x422304: b.ls         0x422598
    //     0x422308: cmp          r5, r0
    // 0x42230c: b.ge 0x422508
    //     0x42230c: b.ge         0x422508
    // 0x422310: r1 = r5
    //     0x422310: mov          r1, r5
    //     0x422314: cmp          r1, r0
    // 0x422318: b.hs 0x4225a0
    //     0x422318: b.hs         0x4225a0
    // 0x42231c: LoadField: r0 = r2->field_f
    //     0x42231c: ldur         r0, [r2, #0xf]
    //     0x422320: add          r0, r0, HEAP, lsl #32
    //     0x422324: add          BARRIER, r0, r5, lsl #2
    // 0x422328: LoadField: r1 = BARRIER->field_f
    //     0x422328: ldur         r1, [BARRIER, #0xf]
    //     0x42232c: add          r1, r1, HEAP, lsl #32
    //     0x422330: stur         r1, [fp, #-0x10]
    // 0x422334: LoadField: r0 = r1->field_7
    //     0x422334: ldur         r0, [r1, #7]
    //     0x422338: add          r0, r0, HEAP, lsl #32
    // 0x42233c: BARRIER = pp[0x40]
    //     0x42233c: ldr          BARRIER, [PP, #0x40]
    //     0x422340: cmp          r0, r16
    // 0x422344: b.eq 0x4225a4
    //     0x422344: b.eq         0x4225a4
    // 0x422348: LoadField: r6 = r0->field_7
    //     0x422348: ldur         r6, [r0, #7]
    //     0x42234c: add          r6, r6, HEAP, lsl #32
    // 0x422350: BARRIER = pp[0x40]
    //     0x422350: ldr          BARRIER, [PP, #0x40]
    //     0x422354: cmp          r6, r16
    // 0x422358: b.eq 0x4225b0
    //     0x422358: b.eq         0x4225b0
    // 0x42235c: LoadField: r0 = r6->field_7
    //     0x42235c: ldur         r0, [r6, #7]
    //     0x422360: add          r0, r0, HEAP, lsl #32
    // 0x422364: BARRIER = pp[0x40]
    //     0x422364: ldr          BARRIER, [PP, #0x40]
    //     0x422368: cmp          r0, r16
    // 0x42236c: b.eq 0x4225bc
    //     0x42236c: b.eq         0x4225bc
    // 0x422370: r6 = LoadClassIdInstr(r4)
    //     0x422370: ldur         r6, [r4, #-1]
    //     0x422374: ubfx         r6, r6, #0xc, #0x14
    //     0x422378: stp          r0, r4, [SP]
    // 0x42237c: r0 = r6
    //     0x42237c: mov          r0, r6
    // 0x422380: lr = r0
    //     0x422380: mov          lr, r0
    //     0x422384: ldr          lr, [r21, lr, lsl #3]
    // 0x422388: r0 = [R]()
    //     0x422388: blr          lr
    //     0x42238c: tbnz         r0, #4, 0x4223a0
    //     0x422390: ldur         r0, [fp, #-0x10]
    //     0x422394: add          r1, NULL, #0x30
    // 0x422398: StoreField: r0->field_b = r1
    //     0x422398: stur         r1, [r0, #0xb]
    // 0x42239c: b 0x4223a4
    //     0x42239c: b            0x4223a4
    //     0x4223a0: add          r1, NULL, #0x30
    //     0x4223a4: ldur         r3, [fp, #-0x28]
    //     0x4223a8: ldur         r2, [fp, #-0x38]
    // 0x4223ac: LoadField: r0 = r3->field_b
    //     0x4223ac: ldur         r0, [r3, #0xb]
    //     0x4223b0: cmp          r0, r2
    // 0x4223b4: b.ne 0x422520
    //     0x4223b4: b.ne         0x422520
    //     0x4223b8: ldur         r4, [fp, #-0x30]
    //     0x4223bc: add          r5, r4, #1
    //     0x4223c0: sbfx         r4, r0, #1, #0x1f
    // 0x4223c4: r0 = r4
    //     0x4223c4: mov          r0, r4
    // 0x4223c8: BARRIER = r2
    //     0x4223c8: mov          BARRIER, r2
    // 0x4223cc: r2 = r3
    //     0x4223cc: mov          r2, r3
    // 0x4223d0: r3 = BARRIER
    //     0x4223d0: mov          r3, BARRIER
    // 0x4223d4: b 0x4222f4
    //     0x4223d4: b            0x4222f4
    //     0x4223d8: ldur         r0, [fp, #-0x18]
    //     0x4223dc: ldur         r3, [fp, #-0x28]
    // 0x4223e0: LoadField: r1 = r0->field_63
    //     0x4223e0: ldur         r1, [r0, #0x63]
    //     0x4223e4: add          r1, r1, HEAP, lsl #32
    // 0x4223e8: LoadField: r2 = r1->field_13
    //     0x4223e8: ldur         r2, [r1, #0x13]
    // 0x4223ec: ArrayLoad: r4 = r1[0]  ; List_8
    //     0x4223ec: ldur         r4, [r1, #0x17]
    //     0x4223f0: sbfx         r5, r2, #1, #0x1f
    //     0x4223f4: sbfx         r2, r4, #1, #0x1f
    //     0x4223f8: sub          r4, r5, r2
    //     0x4223fc: cmp          r4, #0x14
    // 0x422400: b.ne 0x422414
    //     0x422400: b.ne         0x422414
    // 0x422404: r0 = NULL
    //     0x422404: mov          r0, NULL
    // 0x422408: SP = fp
    //     0x422408: mov          SP, fp
    // 0x42240c: LeaveFrame
    //     0x42240c: ldp          fp, lr, [SP], #0x10
    // 0x422410: ret
    //     0x422410: ret          
    //     0x422414: ldur         r2, [fp, #-0x20]
    // 0x422418: r0 = dart__compact_hash___Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::add()
    //     0x422418: bl           0x611d50
    //     0x42241c: ldur         r2, [fp, #-0x28]
    // 0x422420: LoadField: r3 = r2->field_b
    //     0x422420: ldur         r3, [r2, #0xb]
    //     0x422424: stur         r3, [fp, #-0x20]
    //     0x422428: sbfx         r0, r3, #1, #0x1f
    //     0x42242c: mov          r5, #0
    //     0x422430: ldur         r4, [fp, #-8]
    //     0x422434: stur         r5, [fp, #-0x30]
    // 0x422438: CheckStackOverflow
    //     0x422438: ldr          BARRIER, [THR, #0x38]
    //     0x42243c: cmp          SP, BARRIER
    //     0x422440: b.ls         0x4225c8
    //     0x422444: cmp          r5, r0
    // 0x422448: b.ge 0x422508
    //     0x422448: b.ge         0x422508
    // 0x42244c: r1 = r5
    //     0x42244c: mov          r1, r5
    //     0x422450: cmp          r1, r0
    // 0x422454: b.hs 0x4225d0
    //     0x422454: b.hs         0x4225d0
    // 0x422458: LoadField: r0 = r2->field_f
    //     0x422458: ldur         r0, [r2, #0xf]
    //     0x42245c: add          r0, r0, HEAP, lsl #32
    //     0x422460: add          BARRIER, r0, r5, lsl #2
    // 0x422464: LoadField: r1 = BARRIER->field_f
    //     0x422464: ldur         r1, [BARRIER, #0xf]
    //     0x422468: add          r1, r1, HEAP, lsl #32
    //     0x42246c: stur         r1, [fp, #-0x10]
    // 0x422470: LoadField: r0 = r1->field_7
    //     0x422470: ldur         r0, [r1, #7]
    //     0x422474: add          r0, r0, HEAP, lsl #32
    // 0x422478: BARRIER = pp[0x40]
    //     0x422478: ldr          BARRIER, [PP, #0x40]
    //     0x42247c: cmp          r0, r16
    // 0x422480: b.eq 0x4225d4
    //     0x422480: b.eq         0x4225d4
    // 0x422484: LoadField: r6 = r0->field_7
    //     0x422484: ldur         r6, [r0, #7]
    //     0x422488: add          r6, r6, HEAP, lsl #32
    // 0x42248c: BARRIER = pp[0x40]
    //     0x42248c: ldr          BARRIER, [PP, #0x40]
    //     0x422490: cmp          r6, r16
    // 0x422494: b.eq 0x4225e0
    //     0x422494: b.eq         0x4225e0
    // 0x422498: LoadField: r0 = r6->field_7
    //     0x422498: ldur         r0, [r6, #7]
    //     0x42249c: add          r0, r0, HEAP, lsl #32
    // 0x4224a0: BARRIER = pp[0x40]
    //     0x4224a0: ldr          BARRIER, [PP, #0x40]
    //     0x4224a4: cmp          r0, r16
    // 0x4224a8: b.eq 0x4225ec
    //     0x4224a8: b.eq         0x4225ec
    // 0x4224ac: r6 = LoadClassIdInstr(r4)
    //     0x4224ac: ldur         r6, [r4, #-1]
    //     0x4224b0: ubfx         r6, r6, #0xc, #0x14
    //     0x4224b4: stp          r0, r4, [SP]
    // 0x4224b8: r0 = r6
    //     0x4224b8: mov          r0, r6
    // 0x4224bc: lr = r0
    //     0x4224bc: mov          lr, r0
    //     0x4224c0: ldr          lr, [r21, lr, lsl #3]
    // 0x4224c4: r0 = [R]()
    //     0x4224c4: blr          lr
    //     0x4224c8: tbnz         r0, #4, 0x4224dc
    //     0x4224cc: ldur         r0, [fp, #-0x10]
    //     0x4224d0: add          r1, NULL, #0x20
    // 0x4224d4: StoreField: r0->field_b = r1
    //     0x4224d4: stur         r1, [r0, #0xb]
    // 0x4224d8: b 0x4224e0
    //     0x4224d8: b            0x4224e0
    //     0x4224dc: add          r1, NULL, #0x20
    //     0x4224e0: ldur         r2, [fp, #-0x28]
    //     0x4224e4: ldur         r3, [fp, #-0x20]
    // 0x4224e8: LoadField: r0 = r2->field_b
    //     0x4224e8: ldur         r0, [r2, #0xb]
    //     0x4224ec: cmp          r0, r3
    // 0x4224f0: b.ne 0x422540
    //     0x4224f0: b.ne         0x422540
    //     0x4224f4: ldur         r4, [fp, #-0x30]
    //     0x4224f8: add          r5, r4, #1
    //     0x4224fc: sbfx         r4, r0, #1, #0x1f
    // 0x422500: r0 = r4
    //     0x422500: mov          r0, r4
    // 0x422504: b 0x422430
    //     0x422504: b            0x422430
    //     0x422508: ldur         r1, [fp, #-0x18]
    // 0x42250c: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x42250c: bl           0x3ac980
    // 0x422510: r0 = NULL
    //     0x422510: mov          r0, NULL
    // 0x422514: SP = fp
    //     0x422514: mov          SP, fp
    // 0x422518: LeaveFrame
    //     0x422518: ldp          fp, lr, [SP], #0x10
    // 0x42251c: ret
    //     0x42251c: ret          
    // 0x422520: r2 = r3
    //     0x422520: mov          r2, r3
    // 0x422524: r0 = call 0x277514
    //     0x422524: bl           0x277514
    // 0x422528: r1 = r0
    //     0x422528: mov          r1, r0
    //     0x42252c: ldur         r0, [fp, #-0x28]
    // 0x422530: StoreField: r1->field_b = r0
    //     0x422530: stur         r0, [r1, #0xb]
    // 0x422534: r0 = r1
    //     0x422534: mov          r0, r1
    // 0x422538: r0 = call 0x61dadc
    //     0x422538: bl           0x61dadc
    // 0x42253c: brk #0
    //     0x42253c: brk          #0
    // 0x422540: r0 = r2
    //     0x422540: mov          r0, r2
    // 0x422544: r0 = call 0x277514
    //     0x422544: bl           0x277514
    // 0x422548: r1 = r0
    //     0x422548: mov          r1, r0
    //     0x42254c: ldur         r0, [fp, #-0x28]
    // 0x422550: StoreField: r1->field_b = r0
    //     0x422550: stur         r0, [r1, #0xb]
    // 0x422554: r0 = r1
    //     0x422554: mov          r0, r1
    // 0x422558: r0 = call 0x61dadc
    //     0x422558: bl           0x61dadc
    // 0x42255c: brk #0
    //     0x42255c: brk          #0
    // 0x422560: r0 = call 0x61fa28
    //     0x422560: bl           0x61fa28
    // 0x422564: b 0x422200
    //     0x422564: b            0x422200
    // 0x422568: r9 = pp[0xf84]
    //     0x422568: add          r9, PP, #0x14, lsl #12
    //     0x42256c: ldr          r9, [r9, #0xf70]
    // 0x422570: r0 = call 0x620258
    //     0x422570: bl           0x620258
    // 0x422574: r9 = pp[0x749]
    //     0x422574: add          r9, PP, #0x11, lsl #12
    //     0x422578: ldr          r9, [r9, #0x738]
    // 0x42257c: r0 = call 0x620258
    //     0x42257c: bl           0x620258
    // 0x422580: r9 = pp[0x751]
    //     0x422580: add          r9, PP, #0x11, lsl #12
    //     0x422584: ldr          r9, [r9, #0x740]
    // 0x422588: r0 = call 0x620258
    //     0x422588: bl           0x620258
    // 0x42258c: r9 = pp[0x759]
    //     0x42258c: add          r9, PP, #0x11, lsl #12
    //     0x422590: ldr          r9, [r9, #0x748]
    // 0x422594: r0 = call 0x620258
    //     0x422594: bl           0x620258
    // 0x422598: r0 = call 0x61fa28
    //     0x422598: bl           0x61fa28
    // 0x42259c: b 0x422308
    //     0x42259c: b            0x422308
    // 0x4225a0: r0 = call 0x61fe70
    //     0x4225a0: bl           0x61fe70
    // 0x4225a4: r9 = pp[0x749]
    //     0x4225a4: add          r9, PP, #0x11, lsl #12
    //     0x4225a8: ldr          r9, [r9, #0x738]
    // 0x4225ac: r0 = call 0x620258
    //     0x4225ac: bl           0x620258
    // 0x4225b0: r9 = pp[0x751]
    //     0x4225b0: add          r9, PP, #0x11, lsl #12
    //     0x4225b4: ldr          r9, [r9, #0x740]
    // 0x4225b8: r0 = call 0x620258
    //     0x4225b8: bl           0x620258
    // 0x4225bc: r9 = pp[0x759]
    //     0x4225bc: add          r9, PP, #0x11, lsl #12
    //     0x4225c0: ldr          r9, [r9, #0x748]
    // 0x4225c4: r0 = call 0x620258
    //     0x4225c4: bl           0x620258
    // 0x4225c8: r0 = call 0x61fa28
    //     0x4225c8: bl           0x61fa28
    // 0x4225cc: b 0x422444
    //     0x4225cc: b            0x422444
    // 0x4225d0: r0 = call 0x61fe70
    //     0x4225d0: bl           0x61fe70
    // 0x4225d4: r9 = pp[0x749]
    //     0x4225d4: add          r9, PP, #0x11, lsl #12
    //     0x4225d8: ldr          r9, [r9, #0x738]
    // 0x4225dc: r0 = call 0x620258
    //     0x4225dc: bl           0x620258
    // 0x4225e0: r9 = pp[0x751]
    //     0x4225e0: add          r9, PP, #0x11, lsl #12
    //     0x4225e4: ldr          r9, [r9, #0x740]
    // 0x4225e8: r0 = call 0x620258
    //     0x4225e8: bl           0x620258
    // 0x4225ec: r9 = pp[0x759]
    //     0x4225ec: add          r9, PP, #0x11, lsl #12
    //     0x4225f0: ldr          r9, [r9, #0x748]
    // 0x4225f4: r0 = call 0x620258
    //     0x4225f4: bl           0x620258
  }

  getEmptyTipsWithIndex() {
    // ** addr: 0x4225f8, size: 0xb8
    // 0x4225f8: EnterFrame
    //     0x4225f8: stp          fp, lr, [SP, #-0x10]!
    //     0x4225fc: mov          fp, SP
    // 0x422600: CheckStackOverflow
    //     0x422600: ldr          BARRIER, [THR, #0x38]
    //     0x422604: cmp          SP, BARRIER
    //     0x422608: b.ls         0x4226a8
    //     0x42260c: cbnz         r2, 0x42262c
    // 0x422610: r1 = pp[0xa24]
    //     0x422610: add          r1, PP, #0xc, lsl #12
    //     0x422614: ldr          r1, [r1, #0xa18]
    // 0x422618: r4 = pp[0x4c0]
    //     0x422618: ldr          r4, [PP, #0x4c0]
    // 0x42261c: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x42261c: bl           0x3a1dcc
    // 0x422620: SP = fp
    //     0x422620: mov          SP, fp
    // 0x422624: LeaveFrame
    //     0x422624: ldp          fp, lr, [SP], #0x10
    // 0x422628: ret
    //     0x422628: ret          
    //     0x42262c: cmp          r2, #1
    // 0x422630: b.ne 0x422650
    //     0x422630: b.ne         0x422650
    // 0x422634: r1 = pp[0xa34]
    //     0x422634: add          r1, PP, #0xc, lsl #12
    //     0x422638: ldr          r1, [r1, #0xa28]
    // 0x42263c: r4 = pp[0x4c0]
    //     0x42263c: ldr          r4, [PP, #0x4c0]
    // 0x422640: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x422640: bl           0x3a1dcc
    // 0x422644: SP = fp
    //     0x422644: mov          SP, fp
    // 0x422648: LeaveFrame
    //     0x422648: ldp          fp, lr, [SP], #0x10
    // 0x42264c: ret
    //     0x42264c: ret          
    //     0x422650: cmp          r2, #2
    // 0x422654: b.ne 0x422674
    //     0x422654: b.ne         0x422674
    // 0x422658: r1 = pp[0xa44]
    //     0x422658: add          r1, PP, #0xc, lsl #12
    //     0x42265c: ldr          r1, [r1, #0xa38]
    // 0x422660: r4 = pp[0x4c0]
    //     0x422660: ldr          r4, [PP, #0x4c0]
    // 0x422664: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x422664: bl           0x3a1dcc
    // 0x422668: SP = fp
    //     0x422668: mov          SP, fp
    // 0x42266c: LeaveFrame
    //     0x42266c: ldp          fp, lr, [SP], #0x10
    // 0x422670: ret
    //     0x422670: ret          
    //     0x422674: cmp          r2, #3
    // 0x422678: b.ne 0x422698
    //     0x422678: b.ne         0x422698
    // 0x42267c: r1 = pp[0xa54]
    //     0x42267c: add          r1, PP, #0xc, lsl #12
    //     0x422680: ldr          r1, [r1, #0xa48]
    // 0x422684: r4 = pp[0x4c0]
    //     0x422684: ldr          r4, [PP, #0x4c0]
    // 0x422688: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x422688: bl           0x3a1dcc
    // 0x42268c: SP = fp
    //     0x42268c: mov          SP, fp
    // 0x422690: LeaveFrame
    //     0x422690: ldp          fp, lr, [SP], #0x10
    // 0x422694: ret
    //     0x422694: ret          
    // 0x422698: r0 = pp[0x148]
    //     0x422698: ldr          r0, [PP, #0x148]
    // 0x42269c: SP = fp
    //     0x42269c: mov          SP, fp
    // 0x4226a0: LeaveFrame
    //     0x4226a0: ldp          fp, lr, [SP], #0x10
    // 0x4226a4: ret
    //     0x4226a4: ret          
    // 0x4226a8: r0 = call 0x61fa28
    //     0x4226a8: bl           0x61fa28
    // 0x4226ac: b 0x42260c
    //     0x4226ac: b            0x42260c
  }

  getItemsWithIndex() {
    // ** addr: 0x4226b0, size: 0xa4
    // 0x4226b0: EnterFrame
    //     0x4226b0: stp          fp, lr, [SP, #-0x10]!
    //     0x4226b4: mov          fp, SP
    // 0x4226b8: CheckStackOverflow
    //     0x4226b8: ldr          BARRIER, [THR, #0x38]
    //     0x4226bc: cmp          SP, BARRIER
    //     0x4226c0: b.ls         0x42274c
    //     0x4226c4: cbnz         r2, 0x4226dc
    // 0x4226c8: LoadField: r0 = r1->field_53
    //     0x4226c8: ldur         r0, [r1, #0x53]
    //     0x4226cc: add          r0, r0, HEAP, lsl #32
    // 0x4226d0: SP = fp
    //     0x4226d0: mov          SP, fp
    // 0x4226d4: LeaveFrame
    //     0x4226d4: ldp          fp, lr, [SP], #0x10
    // 0x4226d8: ret
    //     0x4226d8: ret          
    //     0x4226dc: cmp          r2, #1
    // 0x4226e0: b.ne 0x4226f8
    //     0x4226e0: b.ne         0x4226f8
    // 0x4226e4: LoadField: r0 = r1->field_57
    //     0x4226e4: ldur         r0, [r1, #0x57]
    //     0x4226e8: add          r0, r0, HEAP, lsl #32
    // 0x4226ec: SP = fp
    //     0x4226ec: mov          SP, fp
    // 0x4226f0: LeaveFrame
    //     0x4226f0: ldp          fp, lr, [SP], #0x10
    // 0x4226f4: ret
    //     0x4226f4: ret          
    //     0x4226f8: cmp          r2, #2
    // 0x4226fc: b.ne 0x422714
    //     0x4226fc: b.ne         0x422714
    // 0x422700: LoadField: r0 = r1->field_5b
    //     0x422700: ldur         r0, [r1, #0x5b]
    //     0x422704: add          r0, r0, HEAP, lsl #32
    // 0x422708: SP = fp
    //     0x422708: mov          SP, fp
    // 0x42270c: LeaveFrame
    //     0x42270c: ldp          fp, lr, [SP], #0x10
    // 0x422710: ret
    //     0x422710: ret          
    //     0x422714: cmp          r2, #3
    // 0x422718: b.ne 0x422730
    //     0x422718: b.ne         0x422730
    // 0x42271c: LoadField: r0 = r1->field_5f
    //     0x42271c: ldur         r0, [r1, #0x5f]
    //     0x422720: add          r0, r0, HEAP, lsl #32
    // 0x422724: SP = fp
    //     0x422724: mov          SP, fp
    // 0x422728: LeaveFrame
    //     0x422728: ldp          fp, lr, [SP], #0x10
    // 0x42272c: ret
    //     0x42272c: ret          
    // 0x422730: r1 = pp[0x82b]
    //     0x422730: add          r1, PP, #0xb, lsl #12
    //     0x422734: ldr          r1, [r1, #0x820]
    //     0x422738: mov          r2, #0
    // 0x42273c: r0 = dart_core__GrowableList::factory_ctor()
    //     0x42273c: bl           0x277268
    // 0x422740: SP = fp
    //     0x422740: mov          SP, fp
    // 0x422744: LeaveFrame
    //     0x422744: ldp          fp, lr, [SP], #0x10
    // 0x422748: ret
    //     0x422748: ret          
    // 0x42274c: r0 = call 0x61fa28
    //     0x42274c: bl           0x61fa28
    // 0x422750: b 0x4226c4
    //     0x422750: b            0x4226c4
  }

  requestItemList() {
    // ** addr: 0x422820, size: 0x118
    // 0x422820: EnterFrame
    //     0x422820: stp          fp, lr, [SP, #-0x10]!
    //     0x422824: mov          fp, SP
    // 0x422828: AllocStack(0x28)
    //     0x422828: sub          SP, SP, #0x28
    // 0x42282c: r6 = r3
    //     0x42282c: mov          r6, r3
    //     0x422830: stur         r3, [fp, #-0x18]
    // 0x422834: r3 = r1
    //     0x422834: mov          r3, r1
    // 0x422838: r0 = r2
    //     0x422838: mov          r0, r2
    //     0x42283c: stur         r1, [fp, #-8]
    //     0x422840: stur         r2, [fp, #-0x10]
    // 0x422844: CheckStackOverflow
    //     0x422844: ldr          BARRIER, [THR, #0x38]
    //     0x422848: cmp          SP, BARRIER
    //     0x42284c: b.ls         0x422930
    // 0x422850: r1 = NULL
    //     0x422850: mov          r1, NULL
    //     0x422854: mov          r2, #4
    // 0x422858: r0 = call 0x61f920
    //     0x422858: bl           0x61f920
    // 0x42285c: r2 = r0
    //     0x42285c: mov          r2, r0
    // 0x422860: BARRIER = pp[0xd64]
    //     0x422860: add          BARRIER, PP, #0x14, lsl #12
    //     0x422864: ldr          BARRIER, [BARRIER, #0xd50]
    // 0x422868: StoreField: r2->field_f = r16
    //     0x422868: stur         r16, [r2, #0xf]
    //     0x42286c: ldur         r3, [fp, #-0x10]
    //     0x422870: sbfiz        r0, r3, #1, #0x1f
    //     0x422874: cmp          r3, r0, asr #1
    // 0x422878: b.eq 0x422884
    //     0x422878: b.eq         0x422884
    // 0x42287c: r0 = call 0x61fba8
    //     0x42287c: bl           0x61fba8
    // 0x422880: StoreField: r0->field_7 = r3
    //     0x422880: stur         r3, [r0, #7]
    //     0x422884: stur         r0, [fp, #-0x20]
    // 0x422888: StoreField: r2->field_13 = r0
    //     0x422888: stur         r0, [r2, #0x13]
    //     0x42288c: str          r2, [SP]
    // 0x422890: r0 = dart_core__StringBase::_interpolate()
    //     0x422890: bl           0x2ad854
    //     0x422894: ldur         r2, [fp, #-0x10]
    //     0x422898: cmp          r2, #1
    // 0x42289c: b.gt 0x4228e8
    //     0x42289c: b.gt         0x4228e8
    //     0x4228a0: cmp          r2, #0
    // 0x4228a4: b.gt 0x4228cc
    //     0x4228a4: b.gt         0x4228cc
    //     0x4228a8: ldur         r0, [fp, #-0x20]
    //     0x4228ac: cbnz         r0, 0x422920
    //     0x4228b0: ldur         r1, [fp, #-8]
    // 0x4228b4: LoadField: r5 = r1->field_2b
    //     0x4228b4: ldur         r5, [r1, #0x2b]
    //     0x4228b8: ldur         r6, [fp, #-0x18]
    // 0x4228bc: r3 = pp[0xd6c]
    //     0x4228bc: add          r3, PP, #0x14, lsl #12
    //     0x4228c0: ldr          r3, [r3, #0xd58]
    // 0x4228c4: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::_searchFollow()
    //     0x4228c4: bl           0x423510
    // 0x4228c8: b 0x422920
    //     0x4228c8: b            0x422920
    //     0x4228cc: ldur         r1, [fp, #-8]
    // 0x4228d0: LoadField: r5 = r1->field_33
    //     0x4228d0: ldur         r5, [r1, #0x33]
    //     0x4228d4: ldur         r6, [fp, #-0x18]
    // 0x4228d8: r3 = pp[0xd74]
    //     0x4228d8: add          r3, PP, #0x14, lsl #12
    //     0x4228dc: ldr          r3, [r3, #0xd60]
    // 0x4228e0: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::_searchFollow()
    //     0x4228e0: bl           0x423510
    // 0x4228e4: b 0x422920
    //     0x4228e4: b            0x422920
    //     0x4228e8: ldur         r1, [fp, #-8]
    //     0x4228ec: ldur         r0, [fp, #-0x20]
    //     0x4228f0: cmp          r2, #2
    // 0x4228f4: b.gt 0x422910
    //     0x4228f4: b.gt         0x422910
    // 0x4228f8: LoadField: r5 = r1->field_3b
    //     0x4228f8: ldur         r5, [r1, #0x3b]
    //     0x4228fc: ldur         r6, [fp, #-0x18]
    // 0x422900: r3 = pp[0xd7c]
    //     0x422900: add          r3, PP, #0x14, lsl #12
    //     0x422904: ldr          r3, [r3, #0xd68]
    // 0x422908: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::_searchFollow()
    //     0x422908: bl           0x423510
    // 0x42290c: b 0x422920
    //     0x42290c: b            0x422920
    //     0x422910: cmp          r0, #6
    // 0x422914: b.ne 0x422920
    //     0x422914: b.ne         0x422920
    //     0x422918: ldur         r2, [fp, #-0x18]
    // 0x42291c: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::_getRecentChat()
    //     0x42291c: bl           0x422938
    // 0x422920: r0 = NULL
    //     0x422920: mov          r0, NULL
    // 0x422924: SP = fp
    //     0x422924: mov          SP, fp
    // 0x422928: LeaveFrame
    //     0x422928: ldp          fp, lr, [SP], #0x10
    // 0x42292c: ret
    //     0x42292c: ret          
    // 0x422930: r0 = call 0x61fa28
    //     0x422930: bl           0x61fa28
    // 0x422934: b 0x422850
    //     0x422934: b            0x422850
  }

  _getRecentChat() {
    // ** addr: 0x422938, size: 0x88
    // 0x422938: EnterFrame
    //     0x422938: stp          fp, lr, [SP, #-0x10]!
    //     0x42293c: mov          fp, SP
    // 0x422940: AllocStack(0x18)
    //     0x422940: sub          SP, SP, #0x18
    //     0x422944: stur         r1, [fp, #-8]
    //     0x422948: stur         r2, [fp, #-0x10]
    // 0x42294c: CheckStackOverflow
    //     0x42294c: ldr          BARRIER, [THR, #0x38]
    //     0x422950: cmp          SP, BARRIER
    //     0x422954: b.ls         0x4229b8
    //     0x422958: mov          r1, #2
    // 0x42295c: r0 = call 0x61e890
    //     0x42295c: bl           0x61e890
    // 0x422960: r3 = r0
    //     0x422960: mov          r3, r0
    //     0x422964: ldur         r0, [fp, #-8]
    //     0x422968: stur         r3, [fp, #-0x18]
    // 0x42296c: StoreField: r3->field_f = r0
    //     0x42296c: stur         r0, [r3, #0xf]
    //     0x422970: ldur         r0, [fp, #-0x10]
    // 0x422974: StoreField: r3->field_13 = r0
    //     0x422974: stur         r0, [r3, #0x13]
    // 0x422978: r2 = r3
    //     0x422978: mov          r2, r3
    // 0x42297c: r1 = pp[0xd84]
    //     0x42297c: add          r1, PP, #0x14, lsl #12
    //     0x422980: ldr          r1, [r1, #0xd70]
    // 0x422984: r0 = call 0x61ec54
    //     0x422984: bl           0x61ec54
    //     0x422988: ldur         r2, [fp, #-0x18]
    // 0x42298c: r1 = pp[0xd8c]
    //     0x42298c: add          r1, PP, #0x14, lsl #12
    //     0x422990: ldr          r1, [r1, #0xd78]
    //     0x422994: stur         r0, [fp, #-8]
    // 0x422998: r0 = call 0x61ec54
    //     0x422998: bl           0x61ec54
    //     0x42299c: ldur         r1, [fp, #-8]
    // 0x4229a0: r2 = r0
    //     0x4229a0: mov          r2, r0
    // 0x4229a4: r0 = soul_flutter_international$api$api_service_SOApiService::getRecentChat()
    //     0x4229a4: bl           0x4229c0
    // 0x4229a8: r0 = NULL
    //     0x4229a8: mov          r0, NULL
    // 0x4229ac: SP = fp
    //     0x4229ac: mov          SP, fp
    // 0x4229b0: LeaveFrame
    //     0x4229b0: ldp          fp, lr, [SP], #0x10
    // 0x4229b4: ret
    //     0x4229b4: ret          
    // 0x4229b8: r0 = call 0x61fa28
    //     0x4229b8: bl           0x61fa28
    // 0x4229bc: b 0x422958
    //     0x4229bc: b            0x422958
  }

  _anon_closure() {
    // ** addr: 0x422a58, size: 0x84
    // 0x422a58: EnterFrame
    //     0x422a58: stp          fp, lr, [SP, #-0x10]!
    //     0x422a5c: mov          fp, SP
    // 0x422a60: AllocStack(8)
    //     0x422a60: sub          SP, SP, #8
    //     0x422a64: ldr          r0, [fp, #0x10]
    // 0x422a68: ArrayLoad: r4 = r0[0]  ; List_8
    //     0x422a68: ldur         r4, [r0, #0x17]
    //     0x422a6c: add          r4, r4, HEAP, lsl #32
    //     0x422a70: stur         r4, [fp, #-8]
    // 0x422a74: CheckStackOverflow
    //     0x422a74: ldr          BARRIER, [THR, #0x38]
    //     0x422a78: cmp          SP, BARRIER
    //     0x422a7c: b.ls         0x422ad4
    // 0x422a80: LoadField: r0 = r4->field_13
    //     0x422a80: ldur         r0, [r4, #0x13]
    //     0x422a84: add          r0, r0, HEAP, lsl #32
    // 0x422a88: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x422a88: ldur         r1, [r0, #0x17]
    //     0x422a8c: add          r1, r1, HEAP, lsl #32
    //     0x422a90: add          r2, NULL, #0x30
    //     0x422a94: add          r3, NULL, #0x20
    // 0x422a98: r0 = soul_flutter_international$biz$party$page_party_invite__InviteUserPageState::_onLoaded()
    //     0x422a98: bl           0x422c60
    //     0x422a9c: ldur         r0, [fp, #-8]
    // 0x422aa0: LoadField: r1 = r0->field_f
    //     0x422aa0: ldur         r1, [r0, #0xf]
    //     0x422aa4: add          r1, r1, HEAP, lsl #32
    //     0x422aa8: mov          r2, #3
    //     0x422aac: add          r3, NULL, #0x30
    // 0x422ab0: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::_updateRefreshState()
    //     0x422ab0: bl           0x422adc
    //     0x422ab4: ldur         r0, [fp, #-8]
    // 0x422ab8: LoadField: r1 = r0->field_f
    //     0x422ab8: ldur         r1, [r0, #0xf]
    //     0x422abc: add          r1, r1, HEAP, lsl #32
    // 0x422ac0: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x422ac0: bl           0x3ac980
    // 0x422ac4: r0 = NULL
    //     0x422ac4: mov          r0, NULL
    // 0x422ac8: SP = fp
    //     0x422ac8: mov          SP, fp
    // 0x422acc: LeaveFrame
    //     0x422acc: ldp          fp, lr, [SP], #0x10
    // 0x422ad0: ret
    //     0x422ad0: ret          
    // 0x422ad4: r0 = call 0x61fa28
    //     0x422ad4: bl           0x61fa28
    // 0x422ad8: b 0x422a80
    //     0x422ad8: b            0x422a80
  }

  _updateRefreshState() {
    // ** addr: 0x422adc, size: 0x184
    // 0x422adc: EnterFrame
    //     0x422adc: stp          fp, lr, [SP, #-0x10]!
    //     0x422ae0: mov          fp, SP
    //     0x422ae4: cbnz         r2, 0x422b04
    // 0x422ae8: LoadField: r4 = r1->field_43
    //     0x422ae8: ldur         r4, [r1, #0x43]
    //     0x422aec: add          r4, r4, HEAP, lsl #32
    // 0x422af0: BARRIER = pp[0x823]
    //     0x422af0: add          BARRIER, PP, #0xb, lsl #12
    //     0x422af4: ldr          BARRIER, [BARRIER, #0x818]
    //     0x422af8: cmp          r4, r16
    // 0x422afc: b.ne 0x422c50
    //     0x422afc: b.ne         0x422c50
    // 0x422b00: b 0x422b6c
    //     0x422b00: b            0x422b6c
    //     0x422b04: cmp          r2, #1
    // 0x422b08: b.ne 0x422b28
    //     0x422b08: b.ne         0x422b28
    // 0x422b0c: LoadField: r4 = r1->field_47
    //     0x422b0c: ldur         r4, [r1, #0x47]
    //     0x422b10: add          r4, r4, HEAP, lsl #32
    // 0x422b14: BARRIER = pp[0x823]
    //     0x422b14: add          BARRIER, PP, #0xb, lsl #12
    //     0x422b18: ldr          BARRIER, [BARRIER, #0x818]
    //     0x422b1c: cmp          r4, r16
    // 0x422b20: b.ne 0x422c50
    //     0x422b20: b.ne         0x422c50
    // 0x422b24: b 0x422b6c
    //     0x422b24: b            0x422b6c
    //     0x422b28: cmp          r2, #2
    // 0x422b2c: b.ne 0x422b4c
    //     0x422b2c: b.ne         0x422b4c
    // 0x422b30: LoadField: r4 = r1->field_4b
    //     0x422b30: ldur         r4, [r1, #0x4b]
    //     0x422b34: add          r4, r4, HEAP, lsl #32
    // 0x422b38: BARRIER = pp[0x823]
    //     0x422b38: add          BARRIER, PP, #0xb, lsl #12
    //     0x422b3c: ldr          BARRIER, [BARRIER, #0x818]
    //     0x422b40: cmp          r4, r16
    // 0x422b44: b.ne 0x422c50
    //     0x422b44: b.ne         0x422c50
    // 0x422b48: b 0x422b6c
    //     0x422b48: b            0x422b6c
    //     0x422b4c: cmp          r2, #3
    // 0x422b50: b.ne 0x422c50
    //     0x422b50: b.ne         0x422c50
    // 0x422b54: LoadField: r4 = r1->field_4f
    //     0x422b54: ldur         r4, [r1, #0x4f]
    //     0x422b58: add          r4, r4, HEAP, lsl #32
    // 0x422b5c: BARRIER = pp[0x823]
    //     0x422b5c: add          BARRIER, PP, #0xb, lsl #12
    //     0x422b60: ldr          BARRIER, [BARRIER, #0x818]
    //     0x422b64: cmp          r4, r16
    // 0x422b68: b.ne 0x422c50
    //     0x422b68: b.ne         0x422c50
    //     0x422b6c: tbnz         r3, #4, 0x422b7c
    // 0x422b70: r0 = pp[0xd94]
    //     0x422b70: add          r0, PP, #0x14, lsl #12
    //     0x422b74: ldr          r0, [r0, #0xd80]
    // 0x422b78: b 0x422b84
    //     0x422b78: b            0x422b84
    // 0x422b7c: r0 = pp[0xd1c]
    //     0x422b7c: add          r0, PP, #0x14, lsl #12
    //     0x422b80: ldr          r0, [r0, #0xd08]
    //     0x422b84: cbnz         r2, 0x422bb4
    // 0x422b88: StoreField: r1->field_43 = r0
    //     0x422b88: stur         r0, [r1, #0x43]
    //     0x422b8c: ldurb        r16, [r1, #-1]
    //     0x422b90: ldurb        r17, [r0, #-1]
    //     0x422b94: and          BARRIER, r17, BARRIER, lsr #2
    //     0x422b98: tst          BARRIER, HEAP, lsr #32
    // 0x422b9c: b.eq 0x422ba4
    //     0x422b9c: b.eq         0x422ba4
    // 0x422ba0: r0 = call 0x61e04c
    //     0x422ba0: bl           0x61e04c
    // 0x422ba4: r0 = NULL
    //     0x422ba4: mov          r0, NULL
    // 0x422ba8: SP = fp
    //     0x422ba8: mov          SP, fp
    // 0x422bac: LeaveFrame
    //     0x422bac: ldp          fp, lr, [SP], #0x10
    // 0x422bb0: ret
    //     0x422bb0: ret          
    //     0x422bb4: cmp          r2, #1
    // 0x422bb8: b.ne 0x422be8
    //     0x422bb8: b.ne         0x422be8
    // 0x422bbc: StoreField: r1->field_47 = r0
    //     0x422bbc: stur         r0, [r1, #0x47]
    //     0x422bc0: ldurb        r16, [r1, #-1]
    //     0x422bc4: ldurb        r17, [r0, #-1]
    //     0x422bc8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x422bcc: tst          BARRIER, HEAP, lsr #32
    // 0x422bd0: b.eq 0x422bd8
    //     0x422bd0: b.eq         0x422bd8
    // 0x422bd4: r0 = call 0x61e04c
    //     0x422bd4: bl           0x61e04c
    // 0x422bd8: r0 = NULL
    //     0x422bd8: mov          r0, NULL
    // 0x422bdc: SP = fp
    //     0x422bdc: mov          SP, fp
    // 0x422be0: LeaveFrame
    //     0x422be0: ldp          fp, lr, [SP], #0x10
    // 0x422be4: ret
    //     0x422be4: ret          
    //     0x422be8: cmp          r2, #2
    // 0x422bec: b.ne 0x422c1c
    //     0x422bec: b.ne         0x422c1c
    // 0x422bf0: StoreField: r1->field_4b = r0
    //     0x422bf0: stur         r0, [r1, #0x4b]
    //     0x422bf4: ldurb        r16, [r1, #-1]
    //     0x422bf8: ldurb        r17, [r0, #-1]
    //     0x422bfc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x422c00: tst          BARRIER, HEAP, lsr #32
    // 0x422c04: b.eq 0x422c0c
    //     0x422c04: b.eq         0x422c0c
    // 0x422c08: r0 = call 0x61e04c
    //     0x422c08: bl           0x61e04c
    // 0x422c0c: r0 = NULL
    //     0x422c0c: mov          r0, NULL
    // 0x422c10: SP = fp
    //     0x422c10: mov          SP, fp
    // 0x422c14: LeaveFrame
    //     0x422c14: ldp          fp, lr, [SP], #0x10
    // 0x422c18: ret
    //     0x422c18: ret          
    //     0x422c1c: cmp          r2, #3
    // 0x422c20: b.ne 0x422c50
    //     0x422c20: b.ne         0x422c50
    // 0x422c24: StoreField: r1->field_4f = r0
    //     0x422c24: stur         r0, [r1, #0x4f]
    //     0x422c28: ldurb        r16, [r1, #-1]
    //     0x422c2c: ldurb        r17, [r0, #-1]
    //     0x422c30: and          BARRIER, r17, BARRIER, lsr #2
    //     0x422c34: tst          BARRIER, HEAP, lsr #32
    // 0x422c38: b.eq 0x422c40
    //     0x422c38: b.eq         0x422c40
    // 0x422c3c: r0 = call 0x61e04c
    //     0x422c3c: bl           0x61e04c
    // 0x422c40: r0 = NULL
    //     0x422c40: mov          r0, NULL
    // 0x422c44: SP = fp
    //     0x422c44: mov          SP, fp
    // 0x422c48: LeaveFrame
    //     0x422c48: ldp          fp, lr, [SP], #0x10
    // 0x422c4c: ret
    //     0x422c4c: ret          
    // 0x422c50: r0 = NULL
    //     0x422c50: mov          r0, NULL
    // 0x422c54: SP = fp
    //     0x422c54: mov          SP, fp
    // 0x422c58: LeaveFrame
    //     0x422c58: ldp          fp, lr, [SP], #0x10
    // 0x422c5c: ret
    //     0x422c5c: ret          
  }

  _anon_closure() {
    // ** addr: 0x422d14, size: 0x198
    // 0x422d14: EnterFrame
    //     0x422d14: stp          fp, lr, [SP, #-0x10]!
    //     0x422d18: mov          fp, SP
    // 0x422d1c: AllocStack(0x28)
    //     0x422d1c: sub          SP, SP, #0x28
    //     0x422d20: ldr          r0, [fp, #0x18]
    // 0x422d24: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x422d24: ldur         r3, [r0, #0x17]
    //     0x422d28: add          r3, r3, HEAP, lsl #32
    //     0x422d2c: stur         r3, [fp, #-8]
    // 0x422d30: CheckStackOverflow
    //     0x422d30: ldr          BARRIER, [THR, #0x38]
    //     0x422d34: cmp          SP, BARRIER
    //     0x422d38: b.ls         0x422ea4
    //     0x422d3c: ldr          r1, [fp, #0x10]
    // 0x422d40: r0 = LoadClassIdInstr(r1)
    //     0x422d40: ldur         r0, [r1, #-1]
    //     0x422d44: ubfx         r0, r0, #0xc, #0x14
    // 0x422d48: r2 = pp[0x38f]
    //     0x422d48: add          r2, PP, #0xf, lsl #12
    //     0x422d4c: ldr          r2, [r2, #0x380]
    //     0x422d50: sub          lr, r0, #1, lsl #12
    //     0x422d54: ldr          lr, [r21, lr, lsl #3]
    // 0x422d58: r0 = [R]()
    //     0x422d58: blr          lr
    //     0x422d5c: cmp          r0, r22
    // 0x422d60: b.ne 0x422d78
    //     0x422d60: b.ne         0x422d78
    // 0x422d64: r1 = NULL
    //     0x422d64: mov          r1, NULL
    //     0x422d68: mov          r2, #0
    // 0x422d6c: r0 = dart_core__GrowableList::factory_ctor()
    //     0x422d6c: bl           0x277268
    // 0x422d70: r4 = r0
    //     0x422d70: mov          r4, r0
    // 0x422d74: b 0x422d7c
    //     0x422d74: b            0x422d7c
    // 0x422d78: r4 = r0
    //     0x422d78: mov          r4, r0
    //     0x422d7c: ldur         r3, [fp, #-8]
    // 0x422d80: r0 = r4
    //     0x422d80: mov          r0, r4
    //     0x422d84: stur         r4, [fp, #-0x10]
    // 0x422d88: r2 = NULL
    //     0x422d88: mov          r2, NULL
    // 0x422d8c: r1 = NULL
    //     0x422d8c: mov          r1, NULL
    //     0x422d90: mov          r4, #0x3c
    // 0x422d94: branchIfSmi(r0, 0x422da0)
    //     0x422d94: tbz          r0, #0, 0x422da0
    // 0x422d98: r4 = LoadClassIdInstr(r0)
    //     0x422d98: ldur         r4, [r0, #-1]
    //     0x422d9c: ubfx         r4, r4, #0xc, #0x14
    //     0x422da0: sub          r4, r4, #0x5a
    //     0x422da4: cmp          r4, #2
    // 0x422da8: b.ls 0x422ddc
    //     0x422da8: b.ls         0x422ddc
    //     0x422dac: sub          r4, r4, #0x16
    //     0x422db0: cmp          r4, #0x37
    // 0x422db4: b.ls 0x422ddc
    //     0x422db4: b.ls         0x422ddc
    //     0x422db8: cmp          r4, #0xebc
    // 0x422dbc: b.eq 0x422ddc
    //     0x422dbc: b.eq         0x422ddc
    //     0x422dc0: sub          r4, r4, #0xedd
    //     0x422dc4: cmp          r4, #4
    // 0x422dc8: b.ls 0x422ddc
    //     0x422dc8: b.ls         0x422ddc
    // 0x422dcc: r8 = pp[0x3b80]
    //     0x422dcc: ldr          r8, [PP, #0x3b80]
    // 0x422dd0: r3 = pp[0xd9c]
    //     0x422dd0: add          r3, PP, #0x14, lsl #12
    //     0x422dd4: ldr          r3, [r3, #0xd88]
    // 0x422dd8: r0 = call 0x61d6e4
    //     0x422dd8: bl           0x61d6e4
    // 0x422ddc: r1 = pp[0xdac]
    //     0x422ddc: add          r1, PP, #0x14, lsl #12
    //     0x422de0: ldr          r1, [r1, #0xd98]
    // 0x422de4: r2 = NULL
    //     0x422de4: mov          r2, NULL
    // 0x422de8: r0 = call 0x61ec54
    //     0x422de8: bl           0x61ec54
    // 0x422dec: r1 = r0
    //     0x422dec: mov          r1, r0
    //     0x422df0: ldur         r0, [fp, #-0x10]
    // 0x422df4: r2 = LoadClassIdInstr(r0)
    //     0x422df4: ldur         r2, [r0, #-1]
    //     0x422df8: ubfx         r2, r2, #0xc, #0x14
    // 0x422dfc: BARRIER = pp[0x82b]
    //     0x422dfc: add          BARRIER, PP, #0xb, lsl #12
    //     0x422e00: ldr          BARRIER, [BARRIER, #0x820]
    //     0x422e04: stp          r0, BARRIER, [SP, #8]
    //     0x422e08: str          r1, [SP]
    // 0x422e0c: r0 = r2
    //     0x422e0c: mov          r0, r2
    // 0x422e10: r4 = pp[0x58]
    //     0x422e10: ldr          r4, [PP, #0x58]
    //     0x422e14: mov          r17, #0x86d9
    //     0x422e18: add          lr, r0, r17
    //     0x422e1c: ldr          lr, [r21, lr, lsl #3]
    // 0x422e20: r0 = [R]()
    //     0x422e20: blr          lr
    // 0x422e24: r1 = r0
    //     0x422e24: mov          r1, r0
    //     0x422e28: ldur         r0, [fp, #-8]
    // 0x422e2c: LoadField: r2 = r0->field_f
    //     0x422e2c: ldur         r2, [r0, #0xf]
    //     0x422e30: add          r2, r2, HEAP, lsl #32
    // 0x422e34: LoadField: r3 = r2->field_5f
    //     0x422e34: ldur         r3, [r2, #0x5f]
    //     0x422e38: add          r3, r3, HEAP, lsl #32
    // 0x422e3c: r2 = r1
    //     0x422e3c: mov          r2, r1
    // 0x422e40: r1 = r3
    //     0x422e40: mov          r1, r3
    // 0x422e44: r0 = dart_core__GrowableList::addAll()
    //     0x422e44: bl           0x2ce4e8
    //     0x422e48: ldur         r0, [fp, #-8]
    // 0x422e4c: LoadField: r1 = r0->field_13
    //     0x422e4c: ldur         r1, [r0, #0x13]
    //     0x422e50: add          r1, r1, HEAP, lsl #32
    // 0x422e54: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x422e54: ldur         r2, [r1, #0x17]
    //     0x422e58: add          r2, r2, HEAP, lsl #32
    // 0x422e5c: r1 = r2
    //     0x422e5c: mov          r1, r2
    //     0x422e60: add          r2, NULL, #0x20
    //     0x422e64: add          r3, NULL, #0x20
    // 0x422e68: r0 = soul_flutter_international$biz$party$page_party_invite__InviteUserPageState::_onLoaded()
    //     0x422e68: bl           0x422c60
    //     0x422e6c: ldur         r0, [fp, #-8]
    // 0x422e70: LoadField: r1 = r0->field_f
    //     0x422e70: ldur         r1, [r0, #0xf]
    //     0x422e74: add          r1, r1, HEAP, lsl #32
    //     0x422e78: mov          r2, #3
    //     0x422e7c: add          r3, NULL, #0x20
    // 0x422e80: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::_updateRefreshState()
    //     0x422e80: bl           0x422adc
    //     0x422e84: ldur         r0, [fp, #-8]
    // 0x422e88: LoadField: r1 = r0->field_f
    //     0x422e88: ldur         r1, [r0, #0xf]
    //     0x422e8c: add          r1, r1, HEAP, lsl #32
    // 0x422e90: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x422e90: bl           0x3ac980
    // 0x422e94: r0 = NULL
    //     0x422e94: mov          r0, NULL
    // 0x422e98: SP = fp
    //     0x422e98: mov          SP, fp
    // 0x422e9c: LeaveFrame
    //     0x422e9c: ldp          fp, lr, [SP], #0x10
    // 0x422ea0: ret
    //     0x422ea0: ret          
    // 0x422ea4: r0 = call 0x61fa28
    //     0x422ea4: bl           0x61fa28
    // 0x422ea8: b 0x422d3c
    //     0x422ea8: b            0x422d3c
  }

  _anon_closure() {
    // ** addr: 0x422eac, size: 0x60
    // 0x422eac: EnterFrame
    //     0x422eac: stp          fp, lr, [SP, #-0x10]!
    //     0x422eb0: mov          fp, SP
    // 0x422eb4: AllocStack(8)
    //     0x422eb4: sub          SP, SP, #8
    // 0x422eb8: CheckStackOverflow
    //     0x422eb8: ldr          BARRIER, [THR, #0x38]
    //     0x422ebc: cmp          SP, BARRIER
    //     0x422ec0: b.ls         0x422f04
    //     0x422ec4: ldr          r0, [fp, #0x10]
    // 0x422ec8: r2 = NULL
    //     0x422ec8: mov          r2, NULL
    // 0x422ecc: r1 = NULL
    //     0x422ecc: mov          r1, NULL
    // 0x422ed0: r8 = pp[0x3cd0]
    //     0x422ed0: ldr          r8, [PP, #0x3cd0]
    // 0x422ed4: r3 = pp[0xdb4]
    //     0x422ed4: add          r3, PP, #0x14, lsl #12
    //     0x422ed8: ldr          r3, [r3, #0xda0]
    // 0x422edc: r0 = call 0x2b15f0
    //     0x422edc: bl           0x2b15f0
    // 0x422ee0: r0 = call 0x423504
    //     0x422ee0: bl           0x423504
    // 0x422ee4: r1 = r0
    //     0x422ee4: mov          r1, r0
    //     0x422ee8: ldr          r2, [fp, #0x10]
    //     0x422eec: stur         r0, [fp, #-8]
    // 0x422ef0: r0 = soul_flutter_international$model$party_model_PartyInviteItem::ctor_fromJson()
    //     0x422ef0: bl           0x422f0c
    //     0x422ef4: ldur         r0, [fp, #-8]
    // 0x422ef8: SP = fp
    //     0x422ef8: mov          SP, fp
    // 0x422efc: LeaveFrame
    //     0x422efc: ldp          fp, lr, [SP], #0x10
    // 0x422f00: ret
    //     0x422f00: ret          
    // 0x422f04: r0 = call 0x61fa28
    //     0x422f04: bl           0x61fa28
    // 0x422f08: b 0x422ec4
    //     0x422f08: b            0x422ec4
  }

  _searchFollow() {
    // ** addr: 0x423510, size: 0xcc
    // 0x423510: EnterFrame
    //     0x423510: stp          fp, lr, [SP, #-0x10]!
    //     0x423514: mov          fp, SP
    // 0x423518: AllocStack(0x30)
    //     0x423518: sub          SP, SP, #0x30
    //     0x42351c: stur         r1, [fp, #-8]
    // 0x423520: BARRIER = r3
    //     0x423520: mov          BARRIER, r3
    // 0x423524: r3 = r1
    //     0x423524: mov          r3, r1
    // 0x423528: r1 = BARRIER
    //     0x423528: mov          r1, BARRIER
    // 0x42352c: r0 = r2
    //     0x42352c: mov          r0, r2
    //     0x423530: stur         r2, [fp, #-0x10]
    // 0x423534: r2 = r5
    //     0x423534: mov          r2, r5
    //     0x423538: stur         r1, [fp, #-0x18]
    //     0x42353c: stur         r5, [fp, #-0x20]
    //     0x423540: stur         r6, [fp, #-0x28]
    // 0x423544: CheckStackOverflow
    //     0x423544: ldr          BARRIER, [THR, #0x38]
    //     0x423548: cmp          SP, BARRIER
    //     0x42354c: b.ls         0x4235d4
    //     0x423550: mov          r1, #3
    // 0x423554: r0 = call 0x61e890
    //     0x423554: bl           0x61e890
    // 0x423558: r3 = r0
    //     0x423558: mov          r3, r0
    //     0x42355c: ldur         r0, [fp, #-8]
    //     0x423560: stur         r3, [fp, #-0x30]
    // 0x423564: StoreField: r3->field_f = r0
    //     0x423564: stur         r0, [r3, #0xf]
    //     0x423568: ldur         r2, [fp, #-0x10]
    //     0x42356c: sbfiz        r0, r2, #1, #0x1f
    //     0x423570: cmp          r2, r0, asr #1
    // 0x423574: b.eq 0x423580
    //     0x423574: b.eq         0x423580
    // 0x423578: r0 = call 0x61fba8
    //     0x423578: bl           0x61fba8
    // 0x42357c: StoreField: r0->field_7 = r2
    //     0x42357c: stur         r2, [r0, #7]
    // 0x423580: StoreField: r3->field_13 = r0
    //     0x423580: stur         r0, [r3, #0x13]
    //     0x423584: ldur         r0, [fp, #-0x28]
    // 0x423588: ArrayStore: r3[0] = r0  ; List_8
    //     0x423588: stur         r0, [r3, #0x17]
    // 0x42358c: r2 = r3
    //     0x42358c: mov          r2, r3
    // 0x423590: r1 = pp[0xe84]
    //     0x423590: add          r1, PP, #0x14, lsl #12
    //     0x423594: ldr          r1, [r1, #0xe70]
    // 0x423598: r0 = call 0x61ec54
    //     0x423598: bl           0x61ec54
    //     0x42359c: ldur         r2, [fp, #-0x30]
    // 0x4235a0: r1 = pp[0xe8c]
    //     0x4235a0: add          r1, PP, #0x14, lsl #12
    //     0x4235a4: ldr          r1, [r1, #0xe78]
    //     0x4235a8: stur         r0, [fp, #-8]
    // 0x4235ac: r0 = call 0x61ec54
    //     0x4235ac: bl           0x61ec54
    //     0x4235b0: ldur         r1, [fp, #-0x18]
    //     0x4235b4: ldur         r2, [fp, #-0x20]
    //     0x4235b8: ldur         r3, [fp, #-8]
    // 0x4235bc: r5 = r0
    //     0x4235bc: mov          r5, r0
    // 0x4235c0: r0 = soul_flutter_international$api$api_service_SOApiService::searchFollow()
    //     0x4235c0: bl           0x4235dc
    // 0x4235c4: r0 = NULL
    //     0x4235c4: mov          r0, NULL
    // 0x4235c8: SP = fp
    //     0x4235c8: mov          SP, fp
    // 0x4235cc: LeaveFrame
    //     0x4235cc: ldp          fp, lr, [SP], #0x10
    // 0x4235d0: ret
    //     0x4235d0: ret          
    // 0x4235d4: r0 = call 0x61fa28
    //     0x4235d4: bl           0x61fa28
    // 0x4235d8: b 0x423550
    //     0x4235d8: b            0x423550
  }

  _anon_closure() {
    // ** addr: 0x423724, size: 0xfc
    // 0x423724: EnterFrame
    //     0x423724: stp          fp, lr, [SP, #-0x10]!
    //     0x423728: mov          fp, SP
    // 0x42372c: AllocStack(8)
    //     0x42372c: sub          SP, SP, #8
    //     0x423730: ldr          r0, [fp, #0x10]
    // 0x423734: ArrayLoad: r4 = r0[0]  ; List_8
    //     0x423734: ldur         r4, [r0, #0x17]
    //     0x423738: add          r4, r4, HEAP, lsl #32
    //     0x42373c: stur         r4, [fp, #-8]
    // 0x423740: CheckStackOverflow
    //     0x423740: ldr          BARRIER, [THR, #0x38]
    //     0x423744: cmp          SP, BARRIER
    //     0x423748: b.ls         0x423818
    // 0x42374c: ArrayLoad: r0 = r4[0]  ; List_8
    //     0x42374c: ldur         r0, [r4, #0x17]
    //     0x423750: add          r0, r0, HEAP, lsl #32
    // 0x423754: LoadField: r1 = r4->field_f
    //     0x423754: ldur         r1, [r4, #0xf]
    //     0x423758: add          r1, r1, HEAP, lsl #32
    // 0x42375c: LoadField: r2 = r4->field_13
    //     0x42375c: ldur         r2, [r4, #0x13]
    //     0x423760: add          r2, r2, HEAP, lsl #32
    //     0x423764: sbfx         r3, r2, #1, #0x1f
    // 0x423768: branchIfSmi(r2, 0x423770)
    //     0x423768: tbz          r2, #0, 0x423770
    // 0x42376c: LoadField: r3 = r2->field_7
    //     0x42376c: ldur         r3, [r2, #7]
    //     0x423770: cbnz         r3, 0x423780
    // 0x423774: LoadField: r2 = r1->field_2b
    //     0x423774: ldur         r2, [r1, #0x2b]
    // 0x423778: r1 = r2
    //     0x423778: mov          r1, r2
    // 0x42377c: b 0x4237ac
    //     0x42377c: b            0x4237ac
    //     0x423780: cmp          r3, #1
    // 0x423784: b.ne 0x423794
    //     0x423784: b.ne         0x423794
    // 0x423788: LoadField: r2 = r1->field_33
    //     0x423788: ldur         r2, [r1, #0x33]
    // 0x42378c: r1 = r2
    //     0x42378c: mov          r1, r2
    // 0x423790: b 0x4237ac
    //     0x423790: b            0x4237ac
    //     0x423794: cmp          r3, #2
    // 0x423798: b.ne 0x4237a8
    //     0x423798: b.ne         0x4237a8
    // 0x42379c: LoadField: r2 = r1->field_3b
    //     0x42379c: ldur         r2, [r1, #0x3b]
    // 0x4237a0: r1 = r2
    //     0x4237a0: mov          r1, r2
    // 0x4237a4: b 0x4237ac
    //     0x4237a4: b            0x4237ac
    //     0x4237a8: mov          r1, #-1
    //     0x4237ac: tbnz         r1, #0x3f, 0x4237b8
    //     0x4237b0: add          r3, NULL, #0x30
    // 0x4237b4: b 0x4237bc
    //     0x4237b4: b            0x4237bc
    //     0x4237b8: add          r3, NULL, #0x20
    // 0x4237bc: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4237bc: ldur         r1, [r0, #0x17]
    //     0x4237c0: add          r1, r1, HEAP, lsl #32
    //     0x4237c4: add          r2, NULL, #0x30
    // 0x4237c8: r0 = soul_flutter_international$biz$party$page_party_invite__InviteUserPageState::_onLoaded()
    //     0x4237c8: bl           0x422c60
    //     0x4237cc: ldur         r0, [fp, #-8]
    // 0x4237d0: LoadField: r1 = r0->field_f
    //     0x4237d0: ldur         r1, [r0, #0xf]
    //     0x4237d4: add          r1, r1, HEAP, lsl #32
    // 0x4237d8: LoadField: r2 = r0->field_13
    //     0x4237d8: ldur         r2, [r0, #0x13]
    //     0x4237dc: add          r2, r2, HEAP, lsl #32
    //     0x4237e0: sbfx         r3, r2, #1, #0x1f
    // 0x4237e4: branchIfSmi(r2, 0x4237ec)
    //     0x4237e4: tbz          r2, #0, 0x4237ec
    // 0x4237e8: LoadField: r3 = r2->field_7
    //     0x4237e8: ldur         r3, [r2, #7]
    // 0x4237ec: r2 = r3
    //     0x4237ec: mov          r2, r3
    //     0x4237f0: add          r3, NULL, #0x30
    // 0x4237f4: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::_updateRefreshState()
    //     0x4237f4: bl           0x422adc
    //     0x4237f8: ldur         r0, [fp, #-8]
    // 0x4237fc: LoadField: r1 = r0->field_f
    //     0x4237fc: ldur         r1, [r0, #0xf]
    //     0x423800: add          r1, r1, HEAP, lsl #32
    // 0x423804: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x423804: bl           0x3ac980
    // 0x423808: r0 = NULL
    //     0x423808: mov          r0, NULL
    // 0x42380c: SP = fp
    //     0x42380c: mov          SP, fp
    // 0x423810: LeaveFrame
    //     0x423810: ldp          fp, lr, [SP], #0x10
    // 0x423814: ret
    //     0x423814: ret          
    // 0x423818: r0 = call 0x61fa28
    //     0x423818: bl           0x61fa28
    // 0x42381c: b 0x42374c
    //     0x42381c: b            0x42374c
  }

  _anon_closure() {
    // ** addr: 0x423820, size: 0x380
    // 0x423820: EnterFrame
    //     0x423820: stp          fp, lr, [SP, #-0x10]!
    //     0x423824: mov          fp, SP
    // 0x423828: AllocStack(0x38)
    //     0x423828: sub          SP, SP, #0x38
    //     0x42382c: ldr          r0, [fp, #0x18]
    // 0x423830: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x423830: ldur         r3, [r0, #0x17]
    //     0x423834: add          r3, r3, HEAP, lsl #32
    //     0x423838: stur         r3, [fp, #-8]
    // 0x42383c: CheckStackOverflow
    //     0x42383c: ldr          BARRIER, [THR, #0x38]
    //     0x423840: cmp          SP, BARRIER
    //     0x423844: b.ls         0x423b98
    //     0x423848: ldr          r4, [fp, #0x10]
    // 0x42384c: r0 = LoadClassIdInstr(r4)
    //     0x42384c: ldur         r0, [r4, #-1]
    //     0x423850: ubfx         r0, r0, #0xc, #0x14
    // 0x423854: r1 = r4
    //     0x423854: mov          r1, r4
    // 0x423858: r2 = pp[0x377]
    //     0x423858: add          r2, PP, #0xf, lsl #12
    //     0x42385c: ldr          r2, [r2, #0x368]
    //     0x423860: sub          lr, r0, #1, lsl #12
    //     0x423864: ldr          lr, [r21, lr, lsl #3]
    // 0x423868: r0 = [R]()
    //     0x423868: blr          lr
    //     0x42386c: cmp          r0, r22
    // 0x423870: b.ne 0x42387c
    //     0x423870: b.ne         0x42387c
    //     0x423874: orr          r3, xzr, #0xfffffffffffffffe
    // 0x423878: b 0x423880
    //     0x423878: b            0x423880
    // 0x42387c: r3 = r0
    //     0x42387c: mov          r3, r0
    //     0x423880: ldr          r1, [fp, #0x10]
    //     0x423884: stur         r3, [fp, #-0x10]
    // 0x423888: r0 = LoadClassIdInstr(r1)
    //     0x423888: ldur         r0, [r1, #-1]
    //     0x42388c: ubfx         r0, r0, #0xc, #0x14
    // 0x423890: r2 = pp[0x38f]
    //     0x423890: add          r2, PP, #0xf, lsl #12
    //     0x423894: ldr          r2, [r2, #0x380]
    //     0x423898: sub          lr, r0, #1, lsl #12
    //     0x42389c: ldr          lr, [r21, lr, lsl #3]
    // 0x4238a0: r0 = [R]()
    //     0x4238a0: blr          lr
    //     0x4238a4: cmp          r0, r22
    // 0x4238a8: b.ne 0x4238c0
    //     0x4238a8: b.ne         0x4238c0
    // 0x4238ac: r1 = NULL
    //     0x4238ac: mov          r1, NULL
    //     0x4238b0: mov          r2, #0
    // 0x4238b4: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4238b4: bl           0x277268
    // 0x4238b8: r4 = r0
    //     0x4238b8: mov          r4, r0
    // 0x4238bc: b 0x4238c4
    //     0x4238bc: b            0x4238c4
    // 0x4238c0: r4 = r0
    //     0x4238c0: mov          r4, r0
    //     0x4238c4: ldur         r3, [fp, #-8]
    // 0x4238c8: r0 = r4
    //     0x4238c8: mov          r0, r4
    //     0x4238cc: stur         r4, [fp, #-0x18]
    // 0x4238d0: r2 = NULL
    //     0x4238d0: mov          r2, NULL
    // 0x4238d4: r1 = NULL
    //     0x4238d4: mov          r1, NULL
    //     0x4238d8: mov          r4, #0x3c
    // 0x4238dc: branchIfSmi(r0, 0x4238e8)
    //     0x4238dc: tbz          r0, #0, 0x4238e8
    // 0x4238e0: r4 = LoadClassIdInstr(r0)
    //     0x4238e0: ldur         r4, [r0, #-1]
    //     0x4238e4: ubfx         r4, r4, #0xc, #0x14
    //     0x4238e8: sub          r4, r4, #0x5a
    //     0x4238ec: cmp          r4, #2
    // 0x4238f0: b.ls 0x423924
    //     0x4238f0: b.ls         0x423924
    //     0x4238f4: sub          r4, r4, #0x16
    //     0x4238f8: cmp          r4, #0x37
    // 0x4238fc: b.ls 0x423924
    //     0x4238fc: b.ls         0x423924
    //     0x423900: cmp          r4, #0xebc
    // 0x423904: b.eq 0x423924
    //     0x423904: b.eq         0x423924
    //     0x423908: sub          r4, r4, #0xedd
    //     0x42390c: cmp          r4, #4
    // 0x423910: b.ls 0x423924
    //     0x423910: b.ls         0x423924
    // 0x423914: r8 = pp[0x3b80]
    //     0x423914: ldr          r8, [PP, #0x3b80]
    // 0x423918: r3 = pp[0xe94]
    //     0x423918: add          r3, PP, #0x14, lsl #12
    //     0x42391c: ldr          r3, [r3, #0xe80]
    // 0x423920: r0 = call 0x61d6e4
    //     0x423920: bl           0x61d6e4
    // 0x423924: r1 = pp[0xea4]
    //     0x423924: add          r1, PP, #0x14, lsl #12
    //     0x423928: ldr          r1, [r1, #0xe90]
    // 0x42392c: r2 = NULL
    //     0x42392c: mov          r2, NULL
    // 0x423930: r0 = call 0x61ec54
    //     0x423930: bl           0x61ec54
    // 0x423934: r1 = r0
    //     0x423934: mov          r1, r0
    //     0x423938: ldur         r0, [fp, #-0x18]
    // 0x42393c: r2 = LoadClassIdInstr(r0)
    //     0x42393c: ldur         r2, [r0, #-1]
    //     0x423940: ubfx         r2, r2, #0xc, #0x14
    // 0x423944: BARRIER = pp[0x82b]
    //     0x423944: add          BARRIER, PP, #0xb, lsl #12
    //     0x423948: ldr          BARRIER, [BARRIER, #0x820]
    //     0x42394c: stp          r0, BARRIER, [SP, #8]
    //     0x423950: str          r1, [SP]
    // 0x423954: r0 = r2
    //     0x423954: mov          r0, r2
    // 0x423958: r4 = pp[0x58]
    //     0x423958: ldr          r4, [PP, #0x58]
    //     0x42395c: mov          r17, #0x86d9
    //     0x423960: add          lr, r0, r17
    //     0x423964: ldr          lr, [r21, lr, lsl #3]
    // 0x423968: r0 = [R]()
    //     0x423968: blr          lr
    // 0x42396c: r4 = r0
    //     0x42396c: mov          r4, r0
    //     0x423970: ldur         r3, [fp, #-8]
    //     0x423974: stur         r4, [fp, #-0x20]
    // 0x423978: LoadField: r0 = r3->field_13
    //     0x423978: ldur         r0, [r3, #0x13]
    //     0x42397c: add          r0, r0, HEAP, lsl #32
    //     0x423980: sbfx         r1, r0, #1, #0x1f
    // 0x423984: branchIfSmi(r0, 0x42398c)
    //     0x423984: tbz          r0, #0, 0x42398c
    // 0x423988: LoadField: r1 = r0->field_7
    //     0x423988: ldur         r1, [r0, #7]
    //     0x42398c: cmp          r1, #1
    // 0x423990: b.gt 0x423a84
    //     0x423990: b.gt         0x423a84
    //     0x423994: cmp          r1, #0
    // 0x423998: b.gt 0x423a10
    //     0x423998: b.gt         0x423a10
    //     0x42399c: cbnz         r0, 0x423afc
    //     0x4239a0: ldur         r5, [fp, #-0x10]
    // 0x4239a4: LoadField: r6 = r3->field_f
    //     0x4239a4: ldur         r6, [r3, #0xf]
    //     0x4239a8: add          r6, r6, HEAP, lsl #32
    // 0x4239ac: r0 = r5
    //     0x4239ac: mov          r0, r5
    //     0x4239b0: stur         r6, [fp, #-0x18]
    // 0x4239b4: r2 = NULL
    //     0x4239b4: mov          r2, NULL
    // 0x4239b8: r1 = NULL
    //     0x4239b8: mov          r1, NULL
    // 0x4239bc: branchIfSmi(r0, 0x4239e4)
    //     0x4239bc: tbz          r0, #0, 0x4239e4
    // 0x4239c0: r4 = LoadClassIdInstr(r0)
    //     0x4239c0: ldur         r4, [r0, #-1]
    //     0x4239c4: ubfx         r4, r4, #0xc, #0x14
    //     0x4239c8: sub          r4, r4, #0x3c
    //     0x4239cc: cmp          r4, #1
    // 0x4239d0: b.ls 0x4239e4
    //     0x4239d0: b.ls         0x4239e4
    // 0x4239d4: r8 = pp[0x1170]
    //     0x4239d4: ldr          r8, [PP, #0x1170]
    // 0x4239d8: r3 = pp[0xeac]
    //     0x4239d8: add          r3, PP, #0x14, lsl #12
    //     0x4239dc: ldr          r3, [r3, #0xe98]
    // 0x4239e0: r0 = call 0x62aa34
    //     0x4239e0: bl           0x62aa34
    //     0x4239e4: ldur         r0, [fp, #-0x10]
    //     0x4239e8: sbfx         r1, r0, #1, #0x1f
    // 0x4239ec: branchIfSmi(r0, 0x4239f4)
    //     0x4239ec: tbz          r0, #0, 0x4239f4
    // 0x4239f0: LoadField: r1 = r0->field_7
    //     0x4239f0: ldur         r1, [r0, #7]
    //     0x4239f4: ldur         r2, [fp, #-0x18]
    // 0x4239f8: StoreField: r2->field_2b = r1
    //     0x4239f8: stur         r1, [r2, #0x2b]
    // 0x4239fc: LoadField: r1 = r2->field_53
    //     0x4239fc: ldur         r1, [r2, #0x53]
    //     0x423a00: add          r1, r1, HEAP, lsl #32
    //     0x423a04: ldur         r2, [fp, #-0x20]
    // 0x423a08: r0 = dart_core__GrowableList::addAll()
    //     0x423a08: bl           0x2ce4e8
    // 0x423a0c: b 0x423afc
    //     0x423a0c: b            0x423afc
    // 0x423a10: r4 = r3
    //     0x423a10: mov          r4, r3
    //     0x423a14: ldur         r3, [fp, #-0x10]
    // 0x423a18: LoadField: r5 = r4->field_f
    //     0x423a18: ldur         r5, [r4, #0xf]
    //     0x423a1c: add          r5, r5, HEAP, lsl #32
    // 0x423a20: r0 = r3
    //     0x423a20: mov          r0, r3
    //     0x423a24: stur         r5, [fp, #-0x18]
    // 0x423a28: r2 = NULL
    //     0x423a28: mov          r2, NULL
    // 0x423a2c: r1 = NULL
    //     0x423a2c: mov          r1, NULL
    // 0x423a30: branchIfSmi(r0, 0x423a58)
    //     0x423a30: tbz          r0, #0, 0x423a58
    // 0x423a34: r4 = LoadClassIdInstr(r0)
    //     0x423a34: ldur         r4, [r0, #-1]
    //     0x423a38: ubfx         r4, r4, #0xc, #0x14
    //     0x423a3c: sub          r4, r4, #0x3c
    //     0x423a40: cmp          r4, #1
    // 0x423a44: b.ls 0x423a58
    //     0x423a44: b.ls         0x423a58
    // 0x423a48: r8 = pp[0x1170]
    //     0x423a48: ldr          r8, [PP, #0x1170]
    // 0x423a4c: r3 = pp[0xebc]
    //     0x423a4c: add          r3, PP, #0x14, lsl #12
    //     0x423a50: ldr          r3, [r3, #0xea8]
    // 0x423a54: r0 = call 0x62aa34
    //     0x423a54: bl           0x62aa34
    //     0x423a58: ldur         r0, [fp, #-0x10]
    //     0x423a5c: sbfx         r1, r0, #1, #0x1f
    // 0x423a60: branchIfSmi(r0, 0x423a68)
    //     0x423a60: tbz          r0, #0, 0x423a68
    // 0x423a64: LoadField: r1 = r0->field_7
    //     0x423a64: ldur         r1, [r0, #7]
    //     0x423a68: ldur         r2, [fp, #-0x18]
    // 0x423a6c: StoreField: r2->field_33 = r1
    //     0x423a6c: stur         r1, [r2, #0x33]
    // 0x423a70: LoadField: r1 = r2->field_57
    //     0x423a70: ldur         r1, [r2, #0x57]
    //     0x423a74: add          r1, r1, HEAP, lsl #32
    //     0x423a78: ldur         r2, [fp, #-0x20]
    // 0x423a7c: r0 = dart_core__GrowableList::addAll()
    //     0x423a7c: bl           0x2ce4e8
    // 0x423a80: b 0x423afc
    //     0x423a80: b            0x423afc
    //     0x423a84: cmp          r0, #4
    // 0x423a88: b.ne 0x423afc
    //     0x423a88: b.ne         0x423afc
    //     0x423a8c: ldur         r4, [fp, #-8]
    //     0x423a90: ldur         r3, [fp, #-0x10]
    // 0x423a94: LoadField: r5 = r4->field_f
    //     0x423a94: ldur         r5, [r4, #0xf]
    //     0x423a98: add          r5, r5, HEAP, lsl #32
    // 0x423a9c: r0 = r3
    //     0x423a9c: mov          r0, r3
    //     0x423aa0: stur         r5, [fp, #-0x18]
    // 0x423aa4: r2 = NULL
    //     0x423aa4: mov          r2, NULL
    // 0x423aa8: r1 = NULL
    //     0x423aa8: mov          r1, NULL
    // 0x423aac: branchIfSmi(r0, 0x423ad4)
    //     0x423aac: tbz          r0, #0, 0x423ad4
    // 0x423ab0: r4 = LoadClassIdInstr(r0)
    //     0x423ab0: ldur         r4, [r0, #-1]
    //     0x423ab4: ubfx         r4, r4, #0xc, #0x14
    //     0x423ab8: sub          r4, r4, #0x3c
    //     0x423abc: cmp          r4, #1
    // 0x423ac0: b.ls 0x423ad4
    //     0x423ac0: b.ls         0x423ad4
    // 0x423ac4: r8 = pp[0x1170]
    //     0x423ac4: ldr          r8, [PP, #0x1170]
    // 0x423ac8: r3 = pp[0xecc]
    //     0x423ac8: add          r3, PP, #0x14, lsl #12
    //     0x423acc: ldr          r3, [r3, #0xeb8]
    // 0x423ad0: r0 = call 0x62aa34
    //     0x423ad0: bl           0x62aa34
    //     0x423ad4: ldur         r0, [fp, #-0x10]
    //     0x423ad8: sbfx         r1, r0, #1, #0x1f
    // 0x423adc: branchIfSmi(r0, 0x423ae4)
    //     0x423adc: tbz          r0, #0, 0x423ae4
    // 0x423ae0: LoadField: r1 = r0->field_7
    //     0x423ae0: ldur         r1, [r0, #7]
    //     0x423ae4: ldur         r2, [fp, #-0x18]
    // 0x423ae8: StoreField: r2->field_3b = r1
    //     0x423ae8: stur         r1, [r2, #0x3b]
    // 0x423aec: LoadField: r1 = r2->field_5b
    //     0x423aec: ldur         r1, [r2, #0x5b]
    //     0x423af0: add          r1, r1, HEAP, lsl #32
    //     0x423af4: ldur         r2, [fp, #-0x20]
    // 0x423af8: r0 = dart_core__GrowableList::addAll()
    //     0x423af8: bl           0x2ce4e8
    //     0x423afc: ldur         r0, [fp, #-8]
    // 0x423b00: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x423b00: ldur         r1, [r0, #0x17]
    //     0x423b04: add          r1, r1, HEAP, lsl #32
    //     0x423b08: stur         r1, [fp, #-0x18]
    //     0x423b0c: ldur         BARRIER, [fp, #-0x10]
    //     0x423b10: stp          xzr, BARRIER, [SP]
    //     0x423b14: mov          r4, #0
    //     0x423b18: ldr          r0, [SP, #8]
    //     0x423b1c: add          BARRIER, PP, #0x14, lsl #12
    //     0x423b20: add          BARRIER, BARRIER, #0xec8
    //     0x423b24: ldp          r5, lr, [BARRIER]
    // 0x423b28: r0 = [R]()
    //     0x423b28: blr          lr
    // 0x423b2c: r1 = r0
    //     0x423b2c: mov          r1, r0
    //     0x423b30: ldur         r0, [fp, #-0x18]
    // 0x423b34: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x423b34: ldur         r2, [r0, #0x17]
    //     0x423b38: add          r2, r2, HEAP, lsl #32
    // 0x423b3c: r3 = r1
    //     0x423b3c: mov          r3, r1
    // 0x423b40: r1 = r2
    //     0x423b40: mov          r1, r2
    //     0x423b44: add          r2, NULL, #0x20
    // 0x423b48: r0 = soul_flutter_international$biz$party$page_party_invite__InviteUserPageState::_onLoaded()
    //     0x423b48: bl           0x422c60
    //     0x423b4c: ldur         r0, [fp, #-8]
    // 0x423b50: LoadField: r1 = r0->field_f
    //     0x423b50: ldur         r1, [r0, #0xf]
    //     0x423b54: add          r1, r1, HEAP, lsl #32
    // 0x423b58: LoadField: r2 = r0->field_13
    //     0x423b58: ldur         r2, [r0, #0x13]
    //     0x423b5c: add          r2, r2, HEAP, lsl #32
    //     0x423b60: sbfx         r3, r2, #1, #0x1f
    // 0x423b64: branchIfSmi(r2, 0x423b6c)
    //     0x423b64: tbz          r2, #0, 0x423b6c
    // 0x423b68: LoadField: r3 = r2->field_7
    //     0x423b68: ldur         r3, [r2, #7]
    // 0x423b6c: r2 = r3
    //     0x423b6c: mov          r2, r3
    //     0x423b70: add          r3, NULL, #0x20
    // 0x423b74: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::_updateRefreshState()
    //     0x423b74: bl           0x422adc
    //     0x423b78: ldur         r0, [fp, #-8]
    // 0x423b7c: LoadField: r1 = r0->field_f
    //     0x423b7c: ldur         r1, [r0, #0xf]
    //     0x423b80: add          r1, r1, HEAP, lsl #32
    // 0x423b84: r0 = soul_flutter_international$common$base$safe_changeNotifier_SafeChangeNotifier::safeNotify()
    //     0x423b84: bl           0x3ac980
    // 0x423b88: r0 = NULL
    //     0x423b88: mov          r0, NULL
    // 0x423b8c: SP = fp
    //     0x423b8c: mov          SP, fp
    // 0x423b90: LeaveFrame
    //     0x423b90: ldp          fp, lr, [SP], #0x10
    // 0x423b94: ret
    //     0x423b94: ret          
    // 0x423b98: r0 = call 0x61fa28
    //     0x423b98: bl           0x61fa28
    // 0x423b9c: b 0x423848
    //     0x423b9c: b            0x423848
  }

  _anon_closure() {
    // ** addr: 0x423ba0, size: 0x60
    // 0x423ba0: EnterFrame
    //     0x423ba0: stp          fp, lr, [SP, #-0x10]!
    //     0x423ba4: mov          fp, SP
    // 0x423ba8: AllocStack(8)
    //     0x423ba8: sub          SP, SP, #8
    // 0x423bac: CheckStackOverflow
    //     0x423bac: ldr          BARRIER, [THR, #0x38]
    //     0x423bb0: cmp          SP, BARRIER
    //     0x423bb4: b.ls         0x423bf8
    //     0x423bb8: ldr          r0, [fp, #0x10]
    // 0x423bbc: r2 = NULL
    //     0x423bbc: mov          r2, NULL
    // 0x423bc0: r1 = NULL
    //     0x423bc0: mov          r1, NULL
    // 0x423bc4: r8 = pp[0x3cd0]
    //     0x423bc4: ldr          r8, [PP, #0x3cd0]
    // 0x423bc8: r3 = pp[0xeec]
    //     0x423bc8: add          r3, PP, #0x14, lsl #12
    //     0x423bcc: ldr          r3, [r3, #0xed8]
    // 0x423bd0: r0 = call 0x2b15f0
    //     0x423bd0: bl           0x2b15f0
    // 0x423bd4: r0 = call 0x423504
    //     0x423bd4: bl           0x423504
    // 0x423bd8: r1 = r0
    //     0x423bd8: mov          r1, r0
    //     0x423bdc: ldr          r2, [fp, #0x10]
    //     0x423be0: stur         r0, [fp, #-8]
    // 0x423be4: r0 = soul_flutter_international$model$party_model_PartyInviteItem::ctor_fromJson()
    //     0x423be4: bl           0x422f0c
    //     0x423be8: ldur         r0, [fp, #-8]
    // 0x423bec: SP = fp
    //     0x423bec: mov          SP, fp
    // 0x423bf0: LeaveFrame
    //     0x423bf0: ldp          fp, lr, [SP], #0x10
    // 0x423bf4: ret
    //     0x423bf4: ret          
    // 0x423bf8: r0 = call 0x61fa28
    //     0x423bf8: bl           0x61fa28
    // 0x423bfc: b 0x423bb8
    //     0x423bfc: b            0x423bb8
  }

  ctor() {
    // ** addr: 0x4c3f40, size: 0x200
    // 0x4c3f40: EnterFrame
    //     0x4c3f40: stp          fp, lr, [SP, #-0x10]!
    //     0x4c3f44: mov          fp, SP
    // 0x4c3f48: AllocStack(0x18)
    //     0x4c3f48: sub          SP, SP, #0x18
    // 0x4c3f4c: r2 = pp[0x823]
    //     0x4c3f4c: add          r2, PP, #0xb, lsl #12
    //     0x4c3f50: ldr          r2, [r2, #0x818]
    //     0x4c3f54: mov          r0, #-1
    // 0x4c3f58: r3 = r1
    //     0x4c3f58: mov          r3, r1
    //     0x4c3f5c: stur         r1, [fp, #-8]
    // 0x4c3f60: CheckStackOverflow
    //     0x4c3f60: ldr          BARRIER, [THR, #0x38]
    //     0x4c3f64: cmp          SP, BARRIER
    //     0x4c3f68: b.ls         0x4c4138
    // 0x4c3f6c: StoreField: r3->field_43 = r2
    //     0x4c3f6c: stur         r2, [r3, #0x43]
    // 0x4c3f70: StoreField: r3->field_47 = r2
    //     0x4c3f70: stur         r2, [r3, #0x47]
    // 0x4c3f74: StoreField: r3->field_4b = r2
    //     0x4c3f74: stur         r2, [r3, #0x4b]
    // 0x4c3f78: StoreField: r3->field_4f = r2
    //     0x4c3f78: stur         r2, [r3, #0x4f]
    // 0x4c3f7c: StoreField: r3->field_2b = r0
    //     0x4c3f7c: stur         r0, [r3, #0x2b]
    // 0x4c3f80: StoreField: r3->field_33 = r0
    //     0x4c3f80: stur         r0, [r3, #0x33]
    // 0x4c3f84: StoreField: r3->field_3b = r0
    //     0x4c3f84: stur         r0, [r3, #0x3b]
    // 0x4c3f88: r1 = pp[0x82b]
    //     0x4c3f88: add          r1, PP, #0xb, lsl #12
    //     0x4c3f8c: ldr          r1, [r1, #0x820]
    //     0x4c3f90: mov          r2, #0
    // 0x4c3f94: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c3f94: bl           0x277268
    //     0x4c3f98: ldur         r3, [fp, #-8]
    // 0x4c3f9c: StoreField: r3->field_53 = r0
    //     0x4c3f9c: stur         r0, [r3, #0x53]
    //     0x4c3fa0: ldurb        r16, [r3, #-1]
    //     0x4c3fa4: ldurb        r17, [r0, #-1]
    //     0x4c3fa8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3fac: tst          BARRIER, HEAP, lsr #32
    // 0x4c3fb0: b.eq 0x4c3fb8
    //     0x4c3fb0: b.eq         0x4c3fb8
    // 0x4c3fb4: r0 = call 0x61e08c
    //     0x4c3fb4: bl           0x61e08c
    // 0x4c3fb8: r1 = pp[0x82b]
    //     0x4c3fb8: add          r1, PP, #0xb, lsl #12
    //     0x4c3fbc: ldr          r1, [r1, #0x820]
    //     0x4c3fc0: mov          r2, #0
    // 0x4c3fc4: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c3fc4: bl           0x277268
    //     0x4c3fc8: ldur         r3, [fp, #-8]
    // 0x4c3fcc: StoreField: r3->field_57 = r0
    //     0x4c3fcc: stur         r0, [r3, #0x57]
    //     0x4c3fd0: ldurb        r16, [r3, #-1]
    //     0x4c3fd4: ldurb        r17, [r0, #-1]
    //     0x4c3fd8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3fdc: tst          BARRIER, HEAP, lsr #32
    // 0x4c3fe0: b.eq 0x4c3fe8
    //     0x4c3fe0: b.eq         0x4c3fe8
    // 0x4c3fe4: r0 = call 0x61e08c
    //     0x4c3fe4: bl           0x61e08c
    // 0x4c3fe8: r1 = pp[0x82b]
    //     0x4c3fe8: add          r1, PP, #0xb, lsl #12
    //     0x4c3fec: ldr          r1, [r1, #0x820]
    //     0x4c3ff0: mov          r2, #0
    // 0x4c3ff4: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c3ff4: bl           0x277268
    //     0x4c3ff8: ldur         r3, [fp, #-8]
    // 0x4c3ffc: StoreField: r3->field_5b = r0
    //     0x4c3ffc: stur         r0, [r3, #0x5b]
    //     0x4c4000: ldurb        r16, [r3, #-1]
    //     0x4c4004: ldurb        r17, [r0, #-1]
    //     0x4c4008: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c400c: tst          BARRIER, HEAP, lsr #32
    // 0x4c4010: b.eq 0x4c4018
    //     0x4c4010: b.eq         0x4c4018
    // 0x4c4014: r0 = call 0x61e08c
    //     0x4c4014: bl           0x61e08c
    // 0x4c4018: r1 = pp[0x82b]
    //     0x4c4018: add          r1, PP, #0xb, lsl #12
    //     0x4c401c: ldr          r1, [r1, #0x820]
    //     0x4c4020: mov          r2, #0
    // 0x4c4024: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4c4024: bl           0x277268
    //     0x4c4028: ldur         r1, [fp, #-8]
    // 0x4c402c: StoreField: r1->field_5f = r0
    //     0x4c402c: stur         r0, [r1, #0x5f]
    //     0x4c4030: ldurb        r16, [r1, #-1]
    //     0x4c4034: ldurb        r17, [r0, #-1]
    //     0x4c4038: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c403c: tst          BARRIER, HEAP, lsr #32
    // 0x4c4040: b.eq 0x4c4048
    //     0x4c4040: b.eq         0x4c4048
    // 0x4c4044: r0 = call 0x61e04c
    //     0x4c4044: bl           0x61e04c
    //     0x4c4048: ldr          r0, [THR, #0x68]
    // 0x4c404c: LoadField: r0 = r0->field_6e8
    //     0x4c404c: ldr          r0, [r0, #0x6e8]
    // 0x4c4050: BARRIER = pp[0x40]
    //     0x4c4050: ldr          BARRIER, [PP, #0x40]
    //     0x4c4054: cmp          r0, r16
    // 0x4c4058: b.ne 0x4c4064
    //     0x4c4058: b.ne         0x4c4064
    // 0x4c405c: r2 = pp[0xbf8]
    //     0x4c405c: ldr          r2, [PP, #0xbf8]
    // 0x4c4060: r0 = call 0x61d99c
    //     0x4c4060: bl           0x61d99c
    // 0x4c4064: r1 = pp[0x82b]
    //     0x4c4064: add          r1, PP, #0xb, lsl #12
    //     0x4c4068: ldr          r1, [r1, #0x820]
    //     0x4c406c: stur         r0, [fp, #-0x10]
    // 0x4c4070: r0 = call 0x2a5de4
    //     0x4c4070: bl           0x2a5de4
    // 0x4c4074: r1 = r0
    //     0x4c4074: mov          r1, r0
    //     0x4c4078: ldur         r0, [fp, #-0x10]
    //     0x4c407c: stur         r1, [fp, #-0x18]
    // 0x4c4080: StoreField: r1->field_1b = r0
    //     0x4c4080: stur         r0, [r1, #0x1b]
    // 0x4c4084: StoreField: r1->field_b = wzr
    //     0x4c4084: stur         wzr, [r1, #0xb]
    //     0x4c4088: ldr          r0, [THR, #0x68]
    // 0x4c408c: LoadField: r0 = r0->field_6f0
    //     0x4c408c: ldr          r0, [r0, #0x6f0]
    // 0x4c4090: BARRIER = pp[0x40]
    //     0x4c4090: ldr          BARRIER, [PP, #0x40]
    //     0x4c4094: cmp          r0, r16
    // 0x4c4098: b.ne 0x4c40a4
    //     0x4c4098: b.ne         0x4c40a4
    // 0x4c409c: r2 = pp[0xc00]
    //     0x4c409c: ldr          r2, [PP, #0xc00]
    // 0x4c40a0: r0 = call 0x61d99c
    //     0x4c40a0: bl           0x61d99c
    // 0x4c40a4: r1 = r0
    //     0x4c40a4: mov          r1, r0
    //     0x4c40a8: ldur         r0, [fp, #-0x18]
    // 0x4c40ac: StoreField: r0->field_f = r1
    //     0x4c40ac: stur         r1, [r0, #0xf]
    // 0x4c40b0: StoreField: r0->field_13 = wzr
    //     0x4c40b0: stur         wzr, [r0, #0x13]
    // 0x4c40b4: ArrayStore: r0[0] = wzr  ; List_8
    //     0x4c40b4: stur         wzr, [r0, #0x17]
    //     0x4c40b8: ldur         r1, [fp, #-8]
    // 0x4c40bc: StoreField: r1->field_63 = r0
    //     0x4c40bc: stur         r0, [r1, #0x63]
    //     0x4c40c0: ldurb        r16, [r1, #-1]
    //     0x4c40c4: ldurb        r17, [r0, #-1]
    //     0x4c40c8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c40cc: tst          BARRIER, HEAP, lsr #32
    // 0x4c40d0: b.eq 0x4c40d8
    //     0x4c40d0: b.eq         0x4c40d8
    // 0x4c40d4: r0 = call 0x61e04c
    //     0x4c40d4: bl           0x61e04c
    //     0x4c40d8: mov          r0, #-1
    // 0x4c40dc: StoreField: r1->field_23 = r0
    //     0x4c40dc: stur         r0, [r1, #0x23]
    // 0x4c40e0: StoreField: r1->field_7 = xzr
    //     0x4c40e0: stur         xzr, [r1, #7]
    // 0x4c40e4: StoreField: r1->field_13 = xzr
    //     0x4c40e4: stur         xzr, [r1, #0x13]
    // 0x4c40e8: StoreField: r1->field_1b = xzr
    //     0x4c40e8: stur         xzr, [r1, #0x1b]
    //     0x4c40ec: ldr          r0, [THR, #0x68]
    // 0x4c40f0: LoadField: r0 = r0->field_b90
    //     0x4c40f0: ldr          r0, [r0, #0xb90]
    // 0x4c40f4: BARRIER = pp[0x40]
    //     0x4c40f4: ldr          BARRIER, [PP, #0x40]
    //     0x4c40f8: cmp          r0, r16
    // 0x4c40fc: b.ne 0x4c4108
    //     0x4c40fc: b.ne         0x4c4108
    // 0x4c4100: r2 = pp[0x3608]
    //     0x4c4100: ldr          r2, [PP, #0x3608]
    // 0x4c4104: r0 = call 0x61d99c
    //     0x4c4104: bl           0x61d99c
    //     0x4c4108: ldur         r1, [fp, #-8]
    // 0x4c410c: StoreField: r1->field_f = r0
    //     0x4c410c: stur         r0, [r1, #0xf]
    //     0x4c4110: ldurb        r16, [r1, #-1]
    //     0x4c4114: ldurb        r17, [r0, #-1]
    //     0x4c4118: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c411c: tst          BARRIER, HEAP, lsr #32
    // 0x4c4120: b.eq 0x4c4128
    //     0x4c4120: b.eq         0x4c4128
    // 0x4c4124: r0 = call 0x61e04c
    //     0x4c4124: bl           0x61e04c
    // 0x4c4128: r0 = NULL
    //     0x4c4128: mov          r0, NULL
    // 0x4c412c: SP = fp
    //     0x4c412c: mov          SP, fp
    // 0x4c4130: LeaveFrame
    //     0x4c4130: ldp          fp, lr, [SP], #0x10
    // 0x4c4134: ret
    //     0x4c4134: ret          
    // 0x4c4138: r0 = call 0x61fa28
    //     0x4c4138: bl           0x61fa28
    // 0x4c413c: b 0x4c3f6c
    //     0x4c413c: b            0x4c3f6c
  }

  _enumToString() {
    // ** addr: 0x4aea08, size: 0x64
    // 0x4aea08: EnterFrame
    //     0x4aea08: stp          fp, lr, [SP, #-0x10]!
    //     0x4aea0c: mov          fp, SP
    // 0x4aea10: AllocStack(0x10)
    //     0x4aea10: sub          SP, SP, #0x10
    // 0x4aea14: r0 = r1
    //     0x4aea14: mov          r0, r1
    //     0x4aea18: stur         r1, [fp, #-8]
    // 0x4aea1c: CheckStackOverflow
    //     0x4aea1c: ldr          BARRIER, [THR, #0x38]
    //     0x4aea20: cmp          SP, BARRIER
    //     0x4aea24: b.ls         0x4aea64
    // 0x4aea28: r1 = NULL
    //     0x4aea28: mov          r1, NULL
    //     0x4aea2c: mov          r2, #4
    // 0x4aea30: r0 = call 0x61f920
    //     0x4aea30: bl           0x61f920
    // 0x4aea34: BARRIER = pp[0x7f9]
    //     0x4aea34: add          BARRIER, PP, #0x11, lsl #12
    //     0x4aea38: ldr          BARRIER, [BARRIER, #0x7e8]
    // 0x4aea3c: StoreField: r0->field_f = r16
    //     0x4aea3c: stur         r16, [r0, #0xf]
    //     0x4aea40: ldur         r1, [fp, #-8]
    // 0x4aea44: LoadField: r2 = r1->field_f
    //     0x4aea44: ldur         r2, [r1, #0xf]
    //     0x4aea48: add          r2, r2, HEAP, lsl #32
    // 0x4aea4c: StoreField: r0->field_13 = r2
    //     0x4aea4c: stur         r2, [r0, #0x13]
    //     0x4aea50: str          r0, [SP]
    // 0x4aea54: r0 = dart_core__StringBase::_interpolate()
    //     0x4aea54: bl           0x2ad854
    // 0x4aea58: SP = fp
    //     0x4aea58: mov          SP, fp
    // 0x4aea5c: LeaveFrame
    //     0x4aea5c: ldp          fp, lr, [SP], #0x10
    // 0x4aea60: ret
    //     0x4aea60: ret          
    // 0x4aea64: r0 = call 0x61fa28
    //     0x4aea64: bl           0x61fa28
    // 0x4aea68: b 0x4aea28
    //     0x4aea68: b            0x4aea28
  }
