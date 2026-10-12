// lib: , url: soul_flutter_international$biz$party$page_party_invite


  createTicker() {
    // ** addr: 0x2d4200, size: 0x17c
    // 0x2d4200: EnterFrame
    //     0x2d4200: stp          fp, lr, [SP, #-0x10]!
    //     0x2d4204: mov          fp, SP
    // 0x2d4208: AllocStack(0x20)
    //     0x2d4208: sub          SP, SP, #0x20
    // 0x2d420c: r0 = r1
    //     0x2d420c: mov          r0, r1
    //     0x2d4210: stur         r1, [fp, #-8]
    //     0x2d4214: stur         r2, [fp, #-0x10]
    // 0x2d4218: CheckStackOverflow
    //     0x2d4218: ldr          BARRIER, [THR, #0x38]
    //     0x2d421c: cmp          SP, BARRIER
    //     0x2d4220: b.ls         0x2d436c
    // 0x2d4224: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x2d4224: ldur         r1, [r0, #0x17]
    //     0x2d4228: add          r1, r1, HEAP, lsl #32
    //     0x2d422c: cmp          r1, r22
    // 0x2d4230: b.ne 0x2d423c
    //     0x2d4230: b.ne         0x2d423c
    // 0x2d4234: r1 = r0
    //     0x2d4234: mov          r1, r0
    // 0x2d4238: r0 = soul_flutter_international$biz$party$page_party_invite___PartyInvitePageState&SoulState&TickerProviderStateMixin::_updateTickerModeNotifier()
    //     0x2d4238: bl           0x2d439c
    //     0x2d423c: ldur         r0, [fp, #-8]
    // 0x2d4240: LoadField: r1 = r0->field_13
    //     0x2d4240: ldur         r1, [r0, #0x13]
    //     0x2d4244: add          r1, r1, HEAP, lsl #32
    //     0x2d4248: cmp          r1, r22
    // 0x2d424c: b.ne 0x2d42e4
    //     0x2d424c: b.ne         0x2d42e4
    //     0x2d4250: ldr          r0, [THR, #0x68]
    // 0x2d4254: LoadField: r0 = r0->field_6e8
    //     0x2d4254: ldr          r0, [r0, #0x6e8]
    // 0x2d4258: BARRIER = pp[0x40]
    //     0x2d4258: ldr          BARRIER, [PP, #0x40]
    //     0x2d425c: cmp          r0, r16
    // 0x2d4260: b.ne 0x2d426c
    //     0x2d4260: b.ne         0x2d426c
    // 0x2d4264: r2 = pp[0xbf8]
    //     0x2d4264: ldr          r2, [PP, #0xbf8]
    // 0x2d4268: r0 = call 0x61d99c
    //     0x2d4268: bl           0x61d99c
    // 0x2d426c: r1 = pp[0xea6]
    //     0x2d426c: add          r1, PP, #0xe, lsl #12
    //     0x2d4270: ldr          r1, [r1, #0xe98]
    //     0x2d4274: stur         r0, [fp, #-0x18]
    // 0x2d4278: r0 = call 0x2a5de4
    //     0x2d4278: bl           0x2a5de4
    // 0x2d427c: r1 = r0
    //     0x2d427c: mov          r1, r0
    //     0x2d4280: ldur         r0, [fp, #-0x18]
    //     0x2d4284: stur         r1, [fp, #-0x20]
    // 0x2d4288: StoreField: r1->field_1b = r0
    //     0x2d4288: stur         r0, [r1, #0x1b]
    // 0x2d428c: StoreField: r1->field_b = wzr
    //     0x2d428c: stur         wzr, [r1, #0xb]
    //     0x2d4290: ldr          r0, [THR, #0x68]
    // 0x2d4294: LoadField: r0 = r0->field_6f0
    //     0x2d4294: ldr          r0, [r0, #0x6f0]
    // 0x2d4298: BARRIER = pp[0x40]
    //     0x2d4298: ldr          BARRIER, [PP, #0x40]
    //     0x2d429c: cmp          r0, r16
    // 0x2d42a0: b.ne 0x2d42ac
    //     0x2d42a0: b.ne         0x2d42ac
    // 0x2d42a4: r2 = pp[0xc00]
    //     0x2d42a4: ldr          r2, [PP, #0xc00]
    // 0x2d42a8: r0 = call 0x61d99c
    //     0x2d42a8: bl           0x61d99c
    // 0x2d42ac: r1 = r0
    //     0x2d42ac: mov          r1, r0
    //     0x2d42b0: ldur         r0, [fp, #-0x20]
    // 0x2d42b4: StoreField: r0->field_f = r1
    //     0x2d42b4: stur         r1, [r0, #0xf]
    // 0x2d42b8: StoreField: r0->field_13 = wzr
    //     0x2d42b8: stur         wzr, [r0, #0x13]
    // 0x2d42bc: ArrayStore: r0[0] = wzr  ; List_8
    //     0x2d42bc: stur         wzr, [r0, #0x17]
    //     0x2d42c0: ldur         r1, [fp, #-8]
    // 0x2d42c4: StoreField: r1->field_13 = r0
    //     0x2d42c4: stur         r0, [r1, #0x13]
    //     0x2d42c8: ldurb        r16, [r1, #-1]
    //     0x2d42cc: ldurb        r17, [r0, #-1]
    //     0x2d42d0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x2d42d4: tst          BARRIER, HEAP, lsr #32
    // 0x2d42d8: b.eq 0x2d42e0
    //     0x2d42d8: b.eq         0x2d42e0
    // 0x2d42dc: r0 = call 0x61e04c
    //     0x2d42dc: bl           0x61e04c
    // 0x2d42e0: b 0x2d42e8
    //     0x2d42e0: b            0x2d42e8
    // 0x2d42e4: r1 = r0
    //     0x2d42e4: mov          r1, r0
    //     0x2d42e8: ldur         r0, [fp, #-0x10]
    // 0x2d42ec: r0 = call 0x2cf960
    //     0x2d42ec: bl           0x2cf960
    // 0x2d42f0: r3 = r0
    //     0x2d42f0: mov          r3, r0
    //     0x2d42f4: ldur         r2, [fp, #-8]
    //     0x2d42f8: stur         r3, [fp, #-0x18]
    // 0x2d42fc: StoreField: r3->field_1b = r2
    //     0x2d42fc: stur         r2, [r3, #0x1b]
    //     0x2d4300: add          r0, NULL, #0x30
    // 0x2d4304: StoreField: r3->field_b = r0
    //     0x2d4304: stur         r0, [r3, #0xb]
    //     0x2d4308: ldur         r0, [fp, #-0x10]
    // 0x2d430c: StoreField: r3->field_13 = r0
    //     0x2d430c: stur         r0, [r3, #0x13]
    // 0x2d4310: ArrayLoad: r1 = r2[0]  ; List_8
    //     0x2d4310: ldur         r1, [r2, #0x17]
    //     0x2d4314: add          r1, r1, HEAP, lsl #32
    //     0x2d4318: cmp          r1, r22
    // 0x2d431c: b.eq 0x2d4374
    //     0x2d431c: b.eq         0x2d4374
    // 0x2d4320: r0 = LoadClassIdInstr(r1)
    //     0x2d4320: ldur         r0, [r1, #-1]
    //     0x2d4324: ubfx         r0, r0, #0xc, #0x14
    //     0x2d4328: sub          lr, r0, #0xfff
    //     0x2d432c: ldr          lr, [r21, lr, lsl #3]
    // 0x2d4330: r0 = [R]()
    //     0x2d4330: blr          lr
    //     0x2d4334: eor          r2, r0, #0x10
    //     0x2d4338: ldur         r1, [fp, #-0x18]
    // 0x2d433c: r0 = flutter$src$scheduler$ticker_Ticker::muted_assign()
    //     0x2d433c: bl           0x2cf190
    //     0x2d4340: ldur         r0, [fp, #-8]
    // 0x2d4344: LoadField: r1 = r0->field_13
    //     0x2d4344: ldur         r1, [r0, #0x13]
    //     0x2d4348: add          r1, r1, HEAP, lsl #32
    //     0x2d434c: cmp          r1, r22
    // 0x2d4350: b.eq 0x2d4378
    //     0x2d4350: b.eq         0x2d4378
    //     0x2d4354: ldur         r2, [fp, #-0x18]
    // 0x2d4358: r0 = dart__compact_hash___Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::add()
    //     0x2d4358: bl           0x611d50
    //     0x2d435c: ldur         r0, [fp, #-0x18]
    // 0x2d4360: SP = fp
    //     0x2d4360: mov          SP, fp
    // 0x2d4364: LeaveFrame
    //     0x2d4364: ldp          fp, lr, [SP], #0x10
    // 0x2d4368: ret
    //     0x2d4368: ret          
    // 0x2d436c: r0 = call 0x61fa28
    //     0x2d436c: bl           0x61fa28
    // 0x2d4370: b 0x2d4224
    //     0x2d4370: b            0x2d4224
    // 0x2d4374: r0 = call 0x61ffd0
    //     0x2d4374: bl           0x61ffd0
    // 0x2d4378: r0 = call 0x61ffd0
    //     0x2d4378: bl           0x61ffd0
  }

  _updateTickerModeNotifier() {
    // ** addr: 0x2d439c, size: 0x11c
    // 0x2d439c: EnterFrame
    //     0x2d439c: stp          fp, lr, [SP, #-0x10]!
    //     0x2d43a0: mov          fp, SP
    // 0x2d43a4: AllocStack(0x18)
    //     0x2d43a4: sub          SP, SP, #0x18
    // 0x2d43a8: r2 = r1
    //     0x2d43a8: mov          r2, r1
    //     0x2d43ac: stur         r1, [fp, #-8]
    // 0x2d43b0: CheckStackOverflow
    //     0x2d43b0: ldr          BARRIER, [THR, #0x38]
    //     0x2d43b4: cmp          SP, BARRIER
    //     0x2d43b8: b.ls         0x2d44ac
    // 0x2d43bc: LoadField: r1 = r2->field_f
    //     0x2d43bc: ldur         r1, [r2, #0xf]
    //     0x2d43c0: add          r1, r1, HEAP, lsl #32
    //     0x2d43c4: cmp          r1, r22
    // 0x2d43c8: b.eq 0x2d44b4
    //     0x2d43c8: b.eq         0x2d44b4
    // 0x2d43cc: r0 = flutter$src$widgets$ticker_provider_TickerMode::getNotifier()
    //     0x2d43cc: bl           0x2cf6f0
    // 0x2d43d0: r3 = r0
    //     0x2d43d0: mov          r3, r0
    //     0x2d43d4: ldur         r0, [fp, #-8]
    //     0x2d43d8: stur         r3, [fp, #-0x18]
    // 0x2d43dc: ArrayLoad: r4 = r0[0]  ; List_8
    //     0x2d43dc: ldur         r4, [r0, #0x17]
    //     0x2d43e0: add          r4, r4, HEAP, lsl #32
    //     0x2d43e4: stur         r4, [fp, #-0x10]
    //     0x2d43e8: cmp          r3, r4
    // 0x2d43ec: b.ne 0x2d4400
    //     0x2d43ec: b.ne         0x2d4400
    // 0x2d43f0: r0 = NULL
    //     0x2d43f0: mov          r0, NULL
    // 0x2d43f4: SP = fp
    //     0x2d43f4: mov          SP, fp
    // 0x2d43f8: LeaveFrame
    //     0x2d43f8: ldp          fp, lr, [SP], #0x10
    // 0x2d43fc: ret
    //     0x2d43fc: ret          
    //     0x2d4400: cmp          r4, r22
    // 0x2d4404: b.eq 0x2d4444
    //     0x2d4404: b.eq         0x2d4444
    // 0x2d4408: r2 = r0
    //     0x2d4408: mov          r2, r0
    // 0x2d440c: r1 = pp[0x7e9]
    //     0x2d440c: add          r1, PP, #0x11, lsl #12
    //     0x2d4410: ldr          r1, [r1, #0x7d8]
    // 0x2d4414: r0 = call 0x61ec54
    //     0x2d4414: bl           0x61ec54
    //     0x2d4418: ldur         r1, [fp, #-0x10]
    // 0x2d441c: r2 = LoadClassIdInstr(r1)
    //     0x2d441c: ldur         r2, [r1, #-1]
    //     0x2d4420: ubfx         r2, r2, #0xc, #0x14
    // 0x2d4424: BARRIER = r0
    //     0x2d4424: mov          BARRIER, r0
    // 0x2d4428: r0 = r2
    //     0x2d4428: mov          r0, r2
    // 0x2d442c: r2 = BARRIER
    //     0x2d442c: mov          r2, BARRIER
    //     0x2d4430: add          lr, r0, #0xd6f
    //     0x2d4434: ldr          lr, [r21, lr, lsl #3]
    // 0x2d4438: r0 = [R]()
    //     0x2d4438: blr          lr
    //     0x2d443c: ldur         r0, [fp, #-8]
    //     0x2d4440: ldur         r3, [fp, #-0x18]
    // 0x2d4444: r2 = r0
    //     0x2d4444: mov          r2, r0
    // 0x2d4448: r1 = pp[0x7e9]
    //     0x2d4448: add          r1, PP, #0x11, lsl #12
    //     0x2d444c: ldr          r1, [r1, #0x7d8]
    // 0x2d4450: r0 = call 0x61ec54
    //     0x2d4450: bl           0x61ec54
    //     0x2d4454: ldur         r3, [fp, #-0x18]
    // 0x2d4458: r1 = LoadClassIdInstr(r3)
    //     0x2d4458: ldur         r1, [r3, #-1]
    //     0x2d445c: ubfx         r1, r1, #0xc, #0x14
    // 0x2d4460: r2 = r0
    //     0x2d4460: mov          r2, r0
    // 0x2d4464: r0 = r1
    //     0x2d4464: mov          r0, r1
    // 0x2d4468: r1 = r3
    //     0x2d4468: mov          r1, r3
    //     0x2d446c: add          lr, r0, #0xdbb
    //     0x2d4470: ldr          lr, [r21, lr, lsl #3]
    // 0x2d4474: r0 = [R]()
    //     0x2d4474: blr          lr
    //     0x2d4478: ldur         r0, [fp, #-0x18]
    //     0x2d447c: ldur         r1, [fp, #-8]
    // 0x2d4480: ArrayStore: r1[0] = r0  ; List_8
    //     0x2d4480: stur         r0, [r1, #0x17]
    //     0x2d4484: ldurb        r16, [r1, #-1]
    //     0x2d4488: ldurb        r17, [r0, #-1]
    //     0x2d448c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x2d4490: tst          BARRIER, HEAP, lsr #32
    // 0x2d4494: b.eq 0x2d449c
    //     0x2d4494: b.eq         0x2d449c
    // 0x2d4498: r0 = call 0x61e04c
    //     0x2d4498: bl           0x61e04c
    // 0x2d449c: r0 = NULL
    //     0x2d449c: mov          r0, NULL
    // 0x2d44a0: SP = fp
    //     0x2d44a0: mov          SP, fp
    // 0x2d44a4: LeaveFrame
    //     0x2d44a4: ldp          fp, lr, [SP], #0x10
    // 0x2d44a8: ret
    //     0x2d44a8: ret          
    // 0x2d44ac: r0 = call 0x61fa28
    //     0x2d44ac: bl           0x61fa28
    // 0x2d44b0: b 0x2d43bc
    //     0x2d44b0: b            0x2d43bc
    // 0x2d44b4: r0 = call 0x61ffd0
    //     0x2d44b4: bl           0x61ffd0
  }

  _updateTickers() {
    // ** addr: 0x2d44b8, size: 0x38
    // 0x2d44b8: EnterFrame
    //     0x2d44b8: stp          fp, lr, [SP, #-0x10]!
    //     0x2d44bc: mov          fp, SP
    //     0x2d44c0: ldr          r0, [fp, #0x10]
    // 0x2d44c4: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x2d44c4: ldur         r1, [r0, #0x17]
    //     0x2d44c8: add          r1, r1, HEAP, lsl #32
    // 0x2d44cc: CheckStackOverflow
    //     0x2d44cc: ldr          BARRIER, [THR, #0x38]
    //     0x2d44d0: cmp          SP, BARRIER
    //     0x2d44d4: b.ls         0x2d44e8
    // 0x2d44d8: r0 = soul_flutter_international$biz$party$page_party_invite___PartyInvitePageState&SoulState&TickerProviderStateMixin::_updateTickers()
    //     0x2d44d8: bl           0x2d44f0
    // 0x2d44dc: SP = fp
    //     0x2d44dc: mov          SP, fp
    // 0x2d44e0: LeaveFrame
    //     0x2d44e0: ldp          fp, lr, [SP], #0x10
    // 0x2d44e4: ret
    //     0x2d44e4: ret          
    // 0x2d44e8: r0 = call 0x61fa28
    //     0x2d44e8: bl           0x61fa28
    // 0x2d44ec: b 0x2d44d8
    //     0x2d44ec: b            0x2d44d8
  }

  _updateTickers() {
    // ** addr: 0x2d44f0, size: 0x15c
    // 0x2d44f0: EnterFrame
    //     0x2d44f0: stp          fp, lr, [SP, #-0x10]!
    //     0x2d44f4: mov          fp, SP
    // 0x2d44f8: AllocStack(0x20)
    //     0x2d44f8: sub          SP, SP, #0x20
    // 0x2d44fc: r2 = r1
    //     0x2d44fc: mov          r2, r1
    //     0x2d4500: stur         r1, [fp, #-8]
    // 0x2d4504: CheckStackOverflow
    //     0x2d4504: ldr          BARRIER, [THR, #0x38]
    //     0x2d4508: cmp          SP, BARRIER
    //     0x2d450c: b.ls         0x2d4634
    // 0x2d4510: LoadField: r0 = r2->field_13
    //     0x2d4510: ldur         r0, [r2, #0x13]
    //     0x2d4514: add          r0, r0, HEAP, lsl #32
    //     0x2d4518: cmp          r0, r22
    // 0x2d451c: b.eq 0x2d4624
    //     0x2d451c: b.eq         0x2d4624
    // 0x2d4520: ArrayLoad: r1 = r2[0]  ; List_8
    //     0x2d4520: ldur         r1, [r2, #0x17]
    //     0x2d4524: add          r1, r1, HEAP, lsl #32
    //     0x2d4528: cmp          r1, r22
    // 0x2d452c: b.eq 0x2d463c
    //     0x2d452c: b.eq         0x2d463c
    // 0x2d4530: r0 = LoadClassIdInstr(r1)
    //     0x2d4530: ldur         r0, [r1, #-1]
    //     0x2d4534: ubfx         r0, r0, #0xc, #0x14
    //     0x2d4538: sub          lr, r0, #0xfff
    //     0x2d453c: ldr          lr, [r21, lr, lsl #3]
    // 0x2d4540: r0 = [R]()
    //     0x2d4540: blr          lr
    //     0x2d4544: eor          r2, r0, #0x10
    //     0x2d4548: ldur         r0, [fp, #-8]
    //     0x2d454c: stur         r2, [fp, #-0x10]
    // 0x2d4550: LoadField: r1 = r0->field_13
    //     0x2d4550: ldur         r1, [r0, #0x13]
    //     0x2d4554: add          r1, r1, HEAP, lsl #32
    //     0x2d4558: cmp          r1, r22
    // 0x2d455c: b.eq 0x2d4640
    //     0x2d455c: b.eq         0x2d4640
    // 0x2d4560: r0 = dart__compact_hash___Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::get_iterator()
    //     0x2d4560: bl           0x54bba4
    //     0x2d4564: stur         r0, [fp, #-0x18]
    // 0x2d4568: LoadField: r2 = r0->field_7
    //     0x2d4568: ldur         r2, [r0, #7]
    //     0x2d456c: add          r2, r2, HEAP, lsl #32
    //     0x2d4570: stur         r2, [fp, #-8]
    //     0x2d4574: ldur         r3, [fp, #-0x10]
    // 0x2d4578: CheckStackOverflow
    //     0x2d4578: ldr          BARRIER, [THR, #0x38]
    //     0x2d457c: cmp          SP, BARRIER
    //     0x2d4580: b.ls         0x2d4644
    // 0x2d4584: r1 = r0
    //     0x2d4584: mov          r1, r0
    // 0x2d4588: r0 = dart__compact_hash__CompactIterator::moveNext()
    //     0x2d4588: bl           0x594d70
    //     0x2d458c: tbnz         r0, #4, 0x2d4624
    //     0x2d4590: ldur         r3, [fp, #-0x18]
    // 0x2d4594: LoadField: r4 = r3->field_33
    //     0x2d4594: ldur         r4, [r3, #0x33]
    //     0x2d4598: add          r4, r4, HEAP, lsl #32
    //     0x2d459c: stur         r4, [fp, #-0x20]
    //     0x2d45a0: cmp          r4, r22
    // 0x2d45a4: b.ne 0x2d45d8
    //     0x2d45a4: b.ne         0x2d45d8
    // 0x2d45a8: r0 = r4
    //     0x2d45a8: mov          r0, r4
    //     0x2d45ac: ldur         r2, [fp, #-8]
    // 0x2d45b0: r1 = NULL
    //     0x2d45b0: mov          r1, NULL
    //     0x2d45b4: cmp          r2, r22
    // 0x2d45b8: b.eq 0x2d45d8
    //     0x2d45b8: b.eq         0x2d45d8
    // 0x2d45bc: ArrayLoad: r4 = r2[0]  ; List_8
    //     0x2d45bc: ldur         r4, [r2, #0x17]
    //     0x2d45c0: add          r4, r4, HEAP, lsl #32
    // 0x2d45c4: r8 = pp[0x180]
    //     0x2d45c4: ldr          r8, [PP, #0x180]
    // 0x2d45c8: LoadField: r9 = r4->field_7
    //     0x2d45c8: ldur         r9, [r4, #7]
    // 0x2d45cc: r3 = pp[0x7d9]
    //     0x2d45cc: add          r3, PP, #0x11, lsl #12
    //     0x2d45d0: ldr          r3, [r3, #0x7c8]
    // 0x2d45d4: r0 = [R]()
    //     0x2d45d4: blr          r9
    //     0x2d45d8: ldur         r2, [fp, #-0x10]
    //     0x2d45dc: ldur         r0, [fp, #-0x20]
    // 0x2d45e0: LoadField: r1 = r0->field_b
    //     0x2d45e0: ldur         r1, [r0, #0xb]
    //     0x2d45e4: add          r1, r1, HEAP, lsl #32
    //     0x2d45e8: cmp          r2, r1
    // 0x2d45ec: b.eq 0x2d4618
    //     0x2d45ec: b.eq         0x2d4618
    // 0x2d45f0: StoreField: r0->field_b = r2
    //     0x2d45f0: stur         r2, [r0, #0xb]
    //     0x2d45f4: tbnz         r2, #4, 0x2d4604
    // 0x2d45f8: r1 = r0
    //     0x2d45f8: mov          r1, r0
    // 0x2d45fc: r0 = flutter$src$scheduler$ticker_Ticker::unscheduleTick()
    //     0x2d45fc: bl           0x2cf4e0
    // 0x2d4600: b 0x2d4618
    //     0x2d4600: b            0x2d4618
    // 0x2d4604: r1 = r0
    //     0x2d4604: mov          r1, r0
    // 0x2d4608: r0 = flutter$src$scheduler$ticker_Ticker::get_shouldScheduleTick()
    //     0x2d4608: bl           0x2cf49c
    //     0x2d460c: tbnz         r0, #4, 0x2d4618
    //     0x2d4610: ldur         r1, [fp, #-0x20]
    // 0x2d4614: r0 = flutter$src$scheduler$ticker_Ticker::scheduleTick()
    //     0x2d4614: bl           0x2cf210
    //     0x2d4618: ldur         r0, [fp, #-0x18]
    //     0x2d461c: ldur         r2, [fp, #-8]
    // 0x2d4620: b 0x2d4574
    //     0x2d4620: b            0x2d4574
    // 0x2d4624: r0 = NULL
    //     0x2d4624: mov          r0, NULL
    // 0x2d4628: SP = fp
    //     0x2d4628: mov          SP, fp
    // 0x2d462c: LeaveFrame
    //     0x2d462c: ldp          fp, lr, [SP], #0x10
    // 0x2d4630: ret
    //     0x2d4630: ret          
    // 0x2d4634: r0 = call 0x61fa28
    //     0x2d4634: bl           0x61fa28
    // 0x2d4638: b 0x2d4510
    //     0x2d4638: b            0x2d4510
    // 0x2d463c: r0 = call 0x61ffd0
    //     0x2d463c: bl           0x61ffd0
    // 0x2d4640: r0 = call 0x61ffd0
    //     0x2d4640: bl           0x61ffd0
    // 0x2d4644: r0 = call 0x61fa28
    //     0x2d4644: bl           0x61fa28
    // 0x2d4648: b 0x2d4584
    //     0x2d4648: b            0x2d4584
  }

  activate() {
    // ** addr: 0x3e8140, size: 0x48
    // 0x3e8140: EnterFrame
    //     0x3e8140: stp          fp, lr, [SP, #-0x10]!
    //     0x3e8144: mov          fp, SP
    // 0x3e8148: AllocStack(8)
    //     0x3e8148: sub          SP, SP, #8
    // 0x3e814c: r0 = r1
    //     0x3e814c: mov          r0, r1
    //     0x3e8150: stur         r1, [fp, #-8]
    // 0x3e8154: CheckStackOverflow
    //     0x3e8154: ldr          BARRIER, [THR, #0x38]
    //     0x3e8158: cmp          SP, BARRIER
    //     0x3e815c: b.ls         0x3e8180
    // 0x3e8160: r1 = r0
    //     0x3e8160: mov          r1, r0
    // 0x3e8164: r0 = soul_flutter_international$biz$party$page_party_invite___PartyInvitePageState&SoulState&TickerProviderStateMixin::_updateTickerModeNotifier()
    //     0x3e8164: bl           0x2d439c
    //     0x3e8168: ldur         r1, [fp, #-8]
    // 0x3e816c: r0 = soul_flutter_international$biz$party$page_party_invite___PartyInvitePageState&SoulState&TickerProviderStateMixin::_updateTickers()
    //     0x3e816c: bl           0x2d44f0
    // 0x3e8170: r0 = NULL
    //     0x3e8170: mov          r0, NULL
    // 0x3e8174: SP = fp
    //     0x3e8174: mov          SP, fp
    // 0x3e8178: LeaveFrame
    //     0x3e8178: ldp          fp, lr, [SP], #0x10
    // 0x3e817c: ret
    //     0x3e817c: ret          
    // 0x3e8180: r0 = call 0x61fa28
    //     0x3e8180: bl           0x61fa28
    // 0x3e8184: b 0x3e8160
    //     0x3e8184: b            0x3e8160
  }

  dispose() {
    // ** addr: 0x451234, size: 0x94
    // 0x451234: EnterFrame
    //     0x451234: stp          fp, lr, [SP, #-0x10]!
    //     0x451238: mov          fp, SP
    // 0x45123c: AllocStack(0x10)
    //     0x45123c: sub          SP, SP, #0x10
    // 0x451240: r0 = r1
    //     0x451240: mov          r0, r1
    //     0x451244: stur         r1, [fp, #-0x10]
    // 0x451248: CheckStackOverflow
    //     0x451248: ldr          BARRIER, [THR, #0x38]
    //     0x45124c: cmp          SP, BARRIER
    //     0x451250: b.ls         0x4512c0
    // 0x451254: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x451254: ldur         r3, [r0, #0x17]
    //     0x451258: add          r3, r3, HEAP, lsl #32
    //     0x45125c: stur         r3, [fp, #-8]
    //     0x451260: cmp          r3, r22
    // 0x451264: b.ne 0x451270
    //     0x451264: b.ne         0x451270
    // 0x451268: r1 = r0
    //     0x451268: mov          r1, r0
    // 0x45126c: b 0x4512a8
    //     0x45126c: b            0x4512a8
    // 0x451270: r2 = r0
    //     0x451270: mov          r2, r0
    // 0x451274: r1 = pp[0x7e9]
    //     0x451274: add          r1, PP, #0x11, lsl #12
    //     0x451278: ldr          r1, [r1, #0x7d8]
    // 0x45127c: r0 = call 0x61ec54
    //     0x45127c: bl           0x61ec54
    //     0x451280: ldur         r1, [fp, #-8]
    // 0x451284: r2 = LoadClassIdInstr(r1)
    //     0x451284: ldur         r2, [r1, #-1]
    //     0x451288: ubfx         r2, r2, #0xc, #0x14
    // 0x45128c: BARRIER = r0
    //     0x45128c: mov          BARRIER, r0
    // 0x451290: r0 = r2
    //     0x451290: mov          r0, r2
    // 0x451294: r2 = BARRIER
    //     0x451294: mov          r2, BARRIER
    //     0x451298: add          lr, r0, #0xd6f
    //     0x45129c: ldr          lr, [r21, lr, lsl #3]
    // 0x4512a0: r0 = [R]()
    //     0x4512a0: blr          lr
    //     0x4512a4: ldur         r1, [fp, #-0x10]
    // 0x4512a8: ArrayStore: r1[0] = r22  ; List_8
    //     0x4512a8: stur         r22, [r1, #0x17]
    // 0x4512ac: r0 = soul_flutter_international$common$base$soul_state_SoulState::dispose()
    //     0x4512ac: bl           0x451970
    // 0x4512b0: r0 = NULL
    //     0x4512b0: mov          r0, NULL
    // 0x4512b4: SP = fp
    //     0x4512b4: mov          SP, fp
    // 0x4512b8: LeaveFrame
    //     0x4512b8: ldp          fp, lr, [SP], #0x10
    // 0x4512bc: ret
    //     0x4512bc: ret          
    // 0x4512c0: r0 = call 0x61fa28
    //     0x4512c0: bl           0x61fa28
    // 0x4512c4: b 0x451254
    //     0x4512c4: b            0x451254
  }

  deactivate() {
    // ** addr: 0x3e8c54, size: 0x40
    // 0x3e8c54: EnterFrame
    //     0x3e8c54: stp          fp, lr, [SP, #-0x10]!
    //     0x3e8c58: mov          fp, SP
    // 0x3e8c5c: CheckStackOverflow
    //     0x3e8c5c: ldr          BARRIER, [THR, #0x38]
    //     0x3e8c60: cmp          SP, BARRIER
    //     0x3e8c64: b.ls         0x3e8c8c
    // 0x3e8c68: LoadField: r0 = r1->field_13
    //     0x3e8c68: ldur         r0, [r1, #0x13]
    //     0x3e8c6c: add          r0, r0, HEAP, lsl #32
    //     0x3e8c70: cmp          r0, r22
    // 0x3e8c74: b.eq 0x3e8c7c
    //     0x3e8c74: b.eq         0x3e8c7c
    // 0x3e8c78: r0 = flutter$src$widgets$editable_text__EditableTextState&State&AutomaticKeepAliveClientMixin::_releaseKeepAlive()
    //     0x3e8c78: bl           0x3e85a0
    // 0x3e8c7c: r0 = NULL
    //     0x3e8c7c: mov          r0, NULL
    // 0x3e8c80: SP = fp
    //     0x3e8c80: mov          SP, fp
    // 0x3e8c84: LeaveFrame
    //     0x3e8c84: ldp          fp, lr, [SP], #0x10
    // 0x3e8c88: ret
    //     0x3e8c88: ret          
    // 0x3e8c8c: r0 = call 0x61fa28
    //     0x3e8c8c: bl           0x61fa28
    // 0x3e8c90: b 0x3e8c68
    //     0x3e8c90: b            0x3e8c68
  }

  build() {
    // ** addr: 0x422754, size: 0x44
    // 0x422754: EnterFrame
    //     0x422754: stp          fp, lr, [SP, #-0x10]!
    //     0x422758: mov          fp, SP
    // 0x42275c: CheckStackOverflow
    //     0x42275c: ldr          BARRIER, [THR, #0x38]
    //     0x422760: cmp          SP, BARRIER
    //     0x422764: b.ls         0x422790
    // 0x422768: LoadField: r0 = r1->field_13
    //     0x422768: ldur         r0, [r1, #0x13]
    //     0x42276c: add          r0, r0, HEAP, lsl #32
    //     0x422770: cmp          r0, r22
    // 0x422774: b.ne 0x42277c
    //     0x422774: b.ne         0x42277c
    // 0x422778: r0 = flutter$src$widgets$editable_text__EditableTextState&State&AutomaticKeepAliveClientMixin::_ensureKeepAlive()
    //     0x422778: bl           0x3f42bc
    // 0x42277c: r0 = pp[0xfbc]
    //     0x42277c: add          r0, PP, #0x14, lsl #12
    //     0x422780: ldr          r0, [r0, #0xfa8]
    // 0x422784: SP = fp
    //     0x422784: mov          SP, fp
    // 0x422788: LeaveFrame
    //     0x422788: ldp          fp, lr, [SP], #0x10
    // 0x42278c: ret
    //     0x42278c: ret          
    // 0x422790: r0 = call 0x61fa28
    //     0x422790: bl           0x61fa28
    // 0x422794: b 0x422768
    //     0x422794: b            0x422768
  }

  initState() {
    // ** addr: 0x4d4598, size: 0x30
    // 0x4d4598: EnterFrame
    //     0x4d4598: stp          fp, lr, [SP, #-0x10]!
    //     0x4d459c: mov          fp, SP
    // 0x4d45a0: CheckStackOverflow
    //     0x4d45a0: ldr          BARRIER, [THR, #0x38]
    //     0x4d45a4: cmp          SP, BARRIER
    //     0x4d45a8: b.ls         0x4d45c0
    // 0x4d45ac: r0 = flutter$src$widgets$editable_text__EditableTextState&State&AutomaticKeepAliveClientMixin::_ensureKeepAlive()
    //     0x4d45ac: bl           0x3f42bc
    // 0x4d45b0: r0 = NULL
    //     0x4d45b0: mov          r0, NULL
    // 0x4d45b4: SP = fp
    //     0x4d45b4: mov          SP, fp
    // 0x4d45b8: LeaveFrame
    //     0x4d45b8: ldp          fp, lr, [SP], #0x10
    // 0x4d45bc: ret
    //     0x4d45bc: ret          
    // 0x4d45c0: r0 = call 0x61fa28
    //     0x4d45c0: bl           0x61fa28
    // 0x4d45c4: b 0x4d45ac
    //     0x4d45c4: b            0x4d45ac
  }

  build() {
    // ** addr: 0x41fd0c, size: 0xe8
    // 0x41fd0c: EnterFrame
    //     0x41fd0c: stp          fp, lr, [SP, #-0x10]!
    //     0x41fd10: mov          fp, SP
    // 0x41fd14: AllocStack(0x28)
    //     0x41fd14: sub          SP, SP, #0x28
    //     0x41fd18: stur         r1, [fp, #-8]
    // 0x41fd1c: CheckStackOverflow
    //     0x41fd1c: ldr          BARRIER, [THR, #0x38]
    //     0x41fd20: cmp          SP, BARRIER
    //     0x41fd24: b.ls         0x41fdec
    //     0x41fd28: mov          r1, #1
    // 0x41fd2c: r0 = call 0x61e890
    //     0x41fd2c: bl           0x61e890
    // 0x41fd30: r2 = r0
    //     0x41fd30: mov          r2, r0
    //     0x41fd34: ldur         r0, [fp, #-8]
    //     0x41fd38: stur         r2, [fp, #-0x10]
    // 0x41fd3c: StoreField: r2->field_f = r0
    //     0x41fd3c: stur         r0, [r2, #0xf]
    // 0x41fd40: r1 = pp[0xa64]
    //     0x41fd40: add          r1, PP, #0xc, lsl #12
    //     0x41fd44: ldr          r1, [r1, #0xa58]
    // 0x41fd48: r4 = pp[0x4c0]
    //     0x41fd48: ldr          r4, [PP, #0x4c0]
    // 0x41fd4c: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x41fd4c: bl           0x3a1dcc
    //     0x41fd50: stur         r0, [fp, #-8]
    // 0x41fd54: r0 = soul_flutter_international$res$colors_SOColors::get_s_06()
    //     0x41fd54: bl           0x3b82c4
    //     0x41fd58: ldur         r2, [fp, #-0x10]
    // 0x41fd5c: r1 = pp[0x701]
    //     0x41fd5c: add          r1, PP, #0x11, lsl #12
    //     0x41fd60: ldr          r1, [r1, #0x6f0]
    //     0x41fd64: stur         r0, [fp, #-0x18]
    // 0x41fd68: r0 = call 0x61ec54
    //     0x41fd68: bl           0x61ec54
    // 0x41fd6c: r1 = pp[0x709]
    //     0x41fd6c: add          r1, PP, #0x11, lsl #12
    //     0x41fd70: ldr          r1, [r1, #0x6f8]
    //     0x41fd74: stur         r0, [fp, #-0x20]
    // 0x41fd78: r0 = call 0x41a414
    //     0x41fd78: bl           0x41a414
    // 0x41fd7c: r3 = r0
    //     0x41fd7c: mov          r3, r0
    //     0x41fd80: ldur         r0, [fp, #-0x20]
    //     0x41fd84: stur         r3, [fp, #-0x28]
    // 0x41fd88: StoreField: r3->field_13 = r0
    //     0x41fd88: stur         r0, [r3, #0x13]
    //     0x41fd8c: ldur         r2, [fp, #-0x10]
    // 0x41fd90: r1 = pp[0x711]
    //     0x41fd90: add          r1, PP, #0x11, lsl #12
    //     0x41fd94: ldr          r1, [r1, #0x700]
    // 0x41fd98: r0 = call 0x61ec54
    //     0x41fd98: bl           0x61ec54
    // 0x41fd9c: r1 = pp[0x709]
    //     0x41fd9c: add          r1, PP, #0x11, lsl #12
    //     0x41fda0: ldr          r1, [r1, #0x6f8]
    //     0x41fda4: stur         r0, [fp, #-0x10]
    // 0x41fda8: r0 = call 0x3b81c4
    //     0x41fda8: bl           0x3b81c4
    // 0x41fdac: r1 = r0
    //     0x41fdac: mov          r1, r0
    //     0x41fdb0: ldur         r2, [fp, #-0x28]
    //     0x41fdb4: ldur         r3, [fp, #-0x10]
    // 0x41fdb8: r5 = NULL
    //     0x41fdb8: mov          r5, NULL
    //     0x41fdbc: stur         r0, [fp, #-0x10]
    // 0x41fdc0: r0 = provider$src$provider_InheritedProvider::ctor()
    //     0x41fdc0: bl           0x3b7e8c
    // 0x41fdc4: r0 = call 0x3b7d48
    //     0x41fdc4: bl           0x3b7d48
    //     0x41fdc8: ldur         r1, [fp, #-8]
    // 0x41fdcc: StoreField: r0->field_b = r1
    //     0x41fdcc: stur         r1, [r0, #0xb]
    //     0x41fdd0: ldur         r1, [fp, #-0x18]
    // 0x41fdd4: ArrayStore: r0[0] = r1  ; List_8
    //     0x41fdd4: stur         r1, [r0, #0x17]
    //     0x41fdd8: ldur         r1, [fp, #-0x10]
    // 0x41fddc: StoreField: r0->field_1b = r1
    //     0x41fddc: stur         r1, [r0, #0x1b]
    // 0x41fde0: SP = fp
    //     0x41fde0: mov          SP, fp
    // 0x41fde4: LeaveFrame
    //     0x41fde4: ldp          fp, lr, [SP], #0x10
    // 0x41fde8: ret
    //     0x41fde8: ret          
    // 0x41fdec: r0 = call 0x61fa28
    //     0x41fdec: bl           0x61fa28
    // 0x41fdf0: b 0x41fd28
    //     0x41fdf0: b            0x41fd28
  }

  _anon_closure() {
    // ** addr: 0x41fdf4, size: 0x20
    //     0x41fdf4: ldr          r1, [SP, #8]
    // 0x41fdf8: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x41fdf8: ldur         r2, [r1, #0x17]
    //     0x41fdfc: add          r2, r2, HEAP, lsl #32
    // 0x41fe00: LoadField: r1 = r2->field_f
    //     0x41fe00: ldur         r1, [r2, #0xf]
    //     0x41fe04: add          r1, r1, HEAP, lsl #32
    // 0x41fe08: LoadField: r0 = r1->field_1f
    //     0x41fe08: ldur         r0, [r1, #0x1f]
    //     0x41fe0c: add          r0, r0, HEAP, lsl #32
    // 0x41fe10: ret
    //     0x41fe10: ret          
  }

  _anon_closure() {
    // ** addr: 0x41fe34, size: 0x15c
    // 0x41fe34: EnterFrame
    //     0x41fe34: stp          fp, lr, [SP, #-0x10]!
    //     0x41fe38: mov          fp, SP
    // 0x41fe3c: AllocStack(0x30)
    //     0x41fe3c: sub          SP, SP, #0x30
    //     0x41fe40: ldr          r0, [fp, #0x28]
    // 0x41fe44: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x41fe44: ldur         r2, [r0, #0x17]
    //     0x41fe48: add          r2, r2, HEAP, lsl #32
    //     0x41fe4c: stur         r2, [fp, #-8]
    // 0x41fe50: CheckStackOverflow
    //     0x41fe50: ldr          BARRIER, [THR, #0x38]
    //     0x41fe54: cmp          SP, BARRIER
    //     0x41fe58: b.ls         0x41ff88
    // 0x41fe5c: LoadField: r1 = r2->field_f
    //     0x41fe5c: ldur         r1, [r2, #0xf]
    //     0x41fe60: add          r1, r1, HEAP, lsl #32
    // 0x41fe64: r0 = soul_flutter_international$biz$party$page_party_invite__PartyInvitePageState::_buildBody()
    //     0x41fe64: bl           0x4207d8
    // 0x41fe68: r1 = pp[0xade]
    //     0x41fe68: add          r1, PP, #0xe, lsl #12
    //     0x41fe6c: ldr          r1, [r1, #0xad0]
    //     0x41fe70: stur         r0, [fp, #-0x10]
    // 0x41fe74: r0 = call 0x39fb14
    //     0x41fe74: bl           0x39fb14
    // 0x41fe78: r1 = r0
    //     0x41fe78: mov          r1, r0
    //     0x41fe7c: mov          r0, #1
    //     0x41fe80: stur         r1, [fp, #-0x18]
    // 0x41fe84: StoreField: r1->field_13 = r0
    //     0x41fe84: stur         r0, [r1, #0x13]
    // 0x41fe88: r0 = pp[0xae6]
    //     0x41fe88: add          r0, PP, #0xe, lsl #12
    //     0x41fe8c: ldr          r0, [r0, #0xad8]
    // 0x41fe90: StoreField: r1->field_1b = r0
    //     0x41fe90: stur         r0, [r1, #0x1b]
    //     0x41fe94: ldur         r0, [fp, #-0x10]
    // 0x41fe98: StoreField: r1->field_b = r0
    //     0x41fe98: stur         r0, [r1, #0xb]
    // 0x41fe9c: r0 = soul_flutter_international$res$colors_SOColors::get_s_01()
    //     0x41fe9c: bl           0x3b81fc
    // 0x41fea0: r2 = r0
    //     0x41fea0: mov          r2, r0
    //     0x41fea4: ldur         r0, [fp, #-8]
    //     0x41fea8: stur         r2, [fp, #-0x10]
    // 0x41feac: LoadField: r1 = r0->field_f
    //     0x41feac: ldur         r1, [r0, #0xf]
    //     0x41feb0: add          r1, r1, HEAP, lsl #32
    // 0x41feb4: r0 = soul_flutter_international$biz$party$page_party_invite__PartyInvitePageState::_buildBottom()
    //     0x41feb4: bl           0x41ff90
    //     0x41feb8: stur         r0, [fp, #-8]
    // 0x41febc: r0 = call 0x391a04
    //     0x41febc: bl           0x391a04
    //     0x41fec0: stur         r0, [fp, #-0x20]
    //     0x41fec4: ldur         BARRIER, [fp, #-0x10]
    //     0x41fec8: ldur         lr, [fp, #-8]
    //     0x41fecc: stp          lr, BARRIER, [SP]
    // 0x41fed0: r1 = r0
    //     0x41fed0: mov          r1, r0
    // 0x41fed4: r4 = pp[0x577]
    //     0x41fed4: add          r4, PP, #0xf, lsl #12
    //     0x41fed8: ldr          r4, [r4, #0x568]
    // 0x41fedc: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x41fedc: bl           0x391490
    // 0x41fee0: r1 = NULL
    //     0x41fee0: mov          r1, NULL
    //     0x41fee4: mov          r2, #4
    // 0x41fee8: r0 = call 0x61f920
    //     0x41fee8: bl           0x61f920
    // 0x41feec: r2 = r0
    //     0x41feec: mov          r2, r0
    //     0x41fef0: ldur         r0, [fp, #-0x18]
    //     0x41fef4: stur         r2, [fp, #-8]
    // 0x41fef8: StoreField: r2->field_f = r0
    //     0x41fef8: stur         r0, [r2, #0xf]
    //     0x41fefc: ldur         r0, [fp, #-0x20]
    // 0x41ff00: StoreField: r2->field_13 = r0
    //     0x41ff00: stur         r0, [r2, #0x13]
    // 0x41ff04: r1 = pp[0x5c58]
    //     0x41ff04: ldr          r1, [PP, #0x5c58]
    // 0x41ff08: r0 = call 0x61e854
    //     0x41ff08: bl           0x61e854
    // 0x41ff0c: r1 = r0
    //     0x41ff0c: mov          r1, r0
    //     0x41ff10: ldur         r0, [fp, #-8]
    //     0x41ff14: stur         r1, [fp, #-0x10]
    // 0x41ff18: StoreField: r1->field_f = r0
    //     0x41ff18: stur         r0, [r1, #0xf]
    //     0x41ff1c: mov          r0, #4
    // 0x41ff20: StoreField: r1->field_b = r0
    //     0x41ff20: stur         r0, [r1, #0xb]
    // 0x41ff24: r0 = call 0x39310c
    //     0x41ff24: bl           0x39310c
    // 0x41ff28: r1 = pp[0x862]
    //     0x41ff28: add          r1, PP, #0xa, lsl #12
    //     0x41ff2c: ldr          r1, [r1, #0x858]
    // 0x41ff30: StoreField: r0->field_f = r1
    //     0x41ff30: stur         r1, [r0, #0xf]
    // 0x41ff34: r1 = pp[0xaee]
    //     0x41ff34: add          r1, PP, #0xe, lsl #12
    //     0x41ff38: ldr          r1, [r1, #0xae0]
    // 0x41ff3c: StoreField: r0->field_13 = r1
    //     0x41ff3c: stur         r1, [r0, #0x13]
    // 0x41ff40: r1 = pp[0xaf6]
    //     0x41ff40: add          r1, PP, #0xe, lsl #12
    //     0x41ff44: ldr          r1, [r1, #0xae8]
    // 0x41ff48: ArrayStore: r0[0] = r1  ; List_8
    //     0x41ff48: stur         r1, [r0, #0x17]
    // 0x41ff4c: r1 = pp[0xb6e]
    //     0x41ff4c: add          r1, PP, #0xe, lsl #12
    //     0x41ff50: ldr          r1, [r1, #0xb60]
    // 0x41ff54: StoreField: r0->field_1b = r1
    //     0x41ff54: stur         r1, [r0, #0x1b]
    // 0x41ff58: r1 = pp[0xb06]
    //     0x41ff58: add          r1, PP, #0xe, lsl #12
    //     0x41ff5c: ldr          r1, [r1, #0xaf8]
    // 0x41ff60: StoreField: r0->field_23 = r1
    //     0x41ff60: stur         r1, [r0, #0x23]
    // 0x41ff64: r1 = pp[0xb2]
    //     0x41ff64: add          r1, PP, #0xa, lsl #12
    //     0x41ff68: ldr          r1, [r1, #0xa8]
    // 0x41ff6c: StoreField: r0->field_2b = r1
    //     0x41ff6c: stur         r1, [r0, #0x2b]
    // 0x41ff70: StoreField: r0->field_2f = xzr
    //     0x41ff70: stur         xzr, [r0, #0x2f]
    //     0x41ff74: ldur         r1, [fp, #-0x10]
    // 0x41ff78: StoreField: r0->field_b = r1
    //     0x41ff78: stur         r1, [r0, #0xb]
    // 0x41ff7c: SP = fp
    //     0x41ff7c: mov          SP, fp
    // 0x41ff80: LeaveFrame
    //     0x41ff80: ldp          fp, lr, [SP], #0x10
    // 0x41ff84: ret
    //     0x41ff84: ret          
    // 0x41ff88: r0 = call 0x61fa28
    //     0x41ff88: bl           0x61fa28
    // 0x41ff8c: b 0x41fe5c
    //     0x41ff8c: b            0x41fe5c
  }

  _buildBottom() {
    // ** addr: 0x41ff90, size: 0x494
    // 0x41ff90: EnterFrame
    //     0x41ff90: stp          fp, lr, [SP, #-0x10]!
    //     0x41ff94: mov          fp, SP
    // 0x41ff98: AllocStack(0x50)
    //     0x41ff98: sub          SP, SP, #0x50
    //     0x41ff9c: stur         r1, [fp, #-8]
    // 0x41ffa0: CheckStackOverflow
    //     0x41ffa0: ldr          BARRIER, [THR, #0x38]
    //     0x41ffa4: cmp          SP, BARRIER
    //     0x41ffa8: b.ls         0x42041c
    //     0x41ffac: mov          r1, #1
    // 0x41ffb0: r0 = call 0x61e890
    //     0x41ffb0: bl           0x61e890
    // 0x41ffb4: r1 = r0
    //     0x41ffb4: mov          r1, r0
    //     0x41ffb8: ldur         r0, [fp, #-8]
    //     0x41ffbc: stur         r1, [fp, #-0x10]
    // 0x41ffc0: StoreField: r1->field_f = r0
    //     0x41ffc0: stur         r0, [r1, #0xf]
    // 0x41ffc4: r0 = call 0x2b8e80
    //     0x41ffc4: bl           0x2b8e80
    // 0x41ffc8: d0 = pp[0xb90]
    //     0x41ffc8: ldr          d0, [PP, #0xb90]
    //     0x41ffcc: stur         r0, [fp, #-0x18]
    // 0x41ffd0: StoreField: r0->field_7 = d0
    //     0x41ffd0: stur         d0, [r0, #7]
    // 0x41ffd4: StoreField: r0->field_f = d0
    //     0x41ffd4: stur         d0, [r0, #0xf]
    // 0x41ffd8: d0 = pp[0x719]
    //     0x41ffd8: add          r17, PP, #0x11, lsl #12
    //     0x41ffdc: ldr          d0, [r17, #0x708]
    // 0x41ffe0: ArrayStore: r0[0] = d0  ; List_8
    //     0x41ffe0: stur         d0, [r0, #0x17]
    // 0x41ffe4: StoreField: r0->field_1f = d0
    //     0x41ffe4: stur         d0, [r0, #0x1f]
    // 0x41ffe8: r0 = soul_flutter_international$res$colors_SOColors::get_s_06()
    //     0x41ffe8: bl           0x3b82c4
    //     0x41ffec: stur         r0, [fp, #-0x20]
    // 0x41fff0: r0 = call 0x352b04
    //     0x41fff0: bl           0x352b04
    //     0x41fff4: fmov         d0, #24.00000000
    //     0x41fff8: stur         r0, [fp, #-0x28]
    // 0x41fffc: StoreField: r0->field_7 = d0
    //     0x41fffc: stur         d0, [r0, #7]
    // 0x420000: StoreField: r0->field_f = d0
    //     0x420000: stur         d0, [r0, #0xf]
    // 0x420004: r0 = call 0x352b04
    //     0x420004: bl           0x352b04
    //     0x420008: fmov         d0, #24.00000000
    //     0x42000c: stur         r0, [fp, #-0x30]
    // 0x420010: StoreField: r0->field_7 = d0
    //     0x420010: stur         d0, [r0, #7]
    // 0x420014: StoreField: r0->field_f = d0
    //     0x420014: stur         d0, [r0, #0xf]
    // 0x420018: r0 = call 0x392f28
    //     0x420018: bl           0x392f28
    // 0x42001c: r1 = r0
    //     0x42001c: mov          r1, r0
    //     0x420020: ldur         r0, [fp, #-0x28]
    //     0x420024: stur         r1, [fp, #-0x38]
    // 0x420028: StoreField: r1->field_7 = r0
    //     0x420028: stur         r0, [r1, #7]
    //     0x42002c: ldur         r0, [fp, #-0x30]
    // 0x420030: StoreField: r1->field_b = r0
    //     0x420030: stur         r0, [r1, #0xb]
    // 0x420034: r0 = pp[0x51a]
    //     0x420034: add          r0, PP, #0xa, lsl #12
    //     0x420038: ldr          r0, [r0, #0x510]
    // 0x42003c: StoreField: r1->field_f = r0
    //     0x42003c: stur         r0, [r1, #0xf]
    // 0x420040: StoreField: r1->field_13 = r0
    //     0x420040: stur         r0, [r1, #0x13]
    // 0x420044: r0 = soul_flutter_international$res$colors_SOColors::get_s_10()
    //     0x420044: bl           0x3b7d80
    // 0x420048: BARRIER = pp[0x53b0]
    //     0x420048: ldr          BARRIER, [PP, #0x53b0]
    //     0x42004c: str          BARRIER, [SP]
    // 0x420050: r2 = r0
    //     0x420050: mov          r2, r0
    // 0x420054: r1 = NULL
    //     0x420054: mov          r1, NULL
    // 0x420058: r4 = pp[0x827]
    //     0x420058: add          r4, PP, #0xf, lsl #12
    //     0x42005c: ldr          r4, [r4, #0x818]
    // 0x420060: r0 = flutter$src$painting$box_border_Border::factory_ctor_all()
    //     0x420060: bl           0x391e08
    //     0x420064: stur         r0, [fp, #-0x28]
    // 0x420068: r0 = call 0x391dd8
    //     0x420068: bl           0x391dd8
    // 0x42006c: r1 = r0
    //     0x42006c: mov          r1, r0
    //     0x420070: ldur         r0, [fp, #-0x20]
    //     0x420074: stur         r1, [fp, #-0x30]
    // 0x420078: StoreField: r1->field_7 = r0
    //     0x420078: stur         r0, [r1, #7]
    //     0x42007c: ldur         r0, [fp, #-0x28]
    // 0x420080: StoreField: r1->field_f = r0
    //     0x420080: stur         r0, [r1, #0xf]
    //     0x420084: ldur         r0, [fp, #-0x38]
    // 0x420088: StoreField: r1->field_13 = r0
    //     0x420088: stur         r0, [r1, #0x13]
    // 0x42008c: r0 = pp[0xb86]
    //     0x42008c: add          r0, PP, #0xe, lsl #12
    //     0x420090: ldr          r0, [r0, #0xb78]
    // 0x420094: StoreField: r1->field_23 = r0
    //     0x420094: stur         r0, [r1, #0x23]
    // 0x420098: r0 = call 0x2e3578
    //     0x420098: bl           0x2e3578
    // 0x42009c: d0 = pp[0xed6]
    //     0x42009c: add          r17, PP, #0xe, lsl #12
    //     0x4200a0: ldr          d0, [r17, #0xec8]
    //     0x4200a4: stur         r0, [fp, #-0x20]
    // 0x4200a8: StoreField: r0->field_7 = d0
    //     0x4200a8: stur         d0, [r0, #7]
    //     0x4200ac: fmov         d1, #8.00000000
    // 0x4200b0: StoreField: r0->field_f = d1
    //     0x4200b0: stur         d1, [r0, #0xf]
    // 0x4200b4: ArrayStore: r0[0] = d0  ; List_8
    //     0x4200b4: stur         d0, [r0, #0x17]
    // 0x4200b8: StoreField: r0->field_1f = d1
    //     0x4200b8: stur         d1, [r0, #0x1f]
    // 0x4200bc: r1 = pp[0xa74]
    //     0x4200bc: add          r1, PP, #0xc, lsl #12
    //     0x4200c0: ldr          r1, [r1, #0xa68]
    // 0x4200c4: r4 = pp[0x4c0]
    //     0x4200c4: ldr          r4, [PP, #0x4c0]
    // 0x4200c8: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4200c8: bl           0x3a1dcc
    // 0x4200cc: r2 = r0
    //     0x4200cc: mov          r2, r0
    //     0x4200d0: ldur         r0, [fp, #-8]
    //     0x4200d4: stur         r2, [fp, #-0x38]
    // 0x4200d8: LoadField: r3 = r0->field_1f
    //     0x4200d8: ldur         r3, [r0, #0x1f]
    //     0x4200dc: add          r3, r3, HEAP, lsl #32
    // 0x4200e0: r1 = r3
    //     0x4200e0: mov          r1, r3
    //     0x4200e4: stur         r3, [fp, #-0x28]
    // 0x4200e8: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::get_isUserSelected()
    //     0x4200e8: bl           0x420450
    //     0x4200ec: tbnz         r0, #4, 0x420140
    //     0x4200f0: ldur         r2, [fp, #-0x10]
    // 0x4200f4: r1 = pp[0x721]
    //     0x4200f4: add          r1, PP, #0x11, lsl #12
    //     0x4200f8: ldr          r1, [r1, #0x710]
    // 0x4200fc: r0 = call 0x61ec54
    //     0x4200fc: bl           0x61ec54
    //     0x420100: stur         r0, [fp, #-8]
    //     0x420104: mov          r1, #3
    // 0x420108: r0 = call 0x61e890
    //     0x420108: bl           0x61e890
    // 0x42010c: r1 = r0
    //     0x42010c: mov          r1, r0
    //     0x420110: ldur         r0, [fp, #-8]
    // 0x420114: StoreField: r1->field_f = r0
    //     0x420114: stur         r0, [r1, #0xf]
    // 0x420118: r0 = pp[0x5a60]
    //     0x420118: ldr          r0, [PP, #0x5a60]
    // 0x42011c: StoreField: r1->field_13 = r0
    //     0x42011c: stur         r0, [r1, #0x13]
    //     0x420120: add          r0, NULL, #0x20
    // 0x420124: ArrayStore: r1[0] = r0  ; List_8
    //     0x420124: stur         r0, [r1, #0x17]
    // 0x420128: r2 = r1
    //     0x420128: mov          r2, r1
    // 0x42012c: r1 = pp[0x121]
    //     0x42012c: add          r1, PP, #0x11, lsl #12
    //     0x420130: ldr          r1, [r1, #0x110]
    // 0x420134: r0 = call 0x61ec54
    //     0x420134: bl           0x61ec54
    // 0x420138: r3 = r0
    //     0x420138: mov          r3, r0
    // 0x42013c: b 0x420144
    //     0x42013c: b            0x420144
    // 0x420140: r3 = NULL
    //     0x420140: mov          r3, NULL
    //     0x420144: ldur         r2, [fp, #-0x20]
    //     0x420148: ldur         r0, [fp, #-0x38]
    //     0x42014c: ldur         r1, [fp, #-0x28]
    //     0x420150: stur         r3, [fp, #-8]
    // 0x420154: r0 = call 0x393bf8
    //     0x420154: bl           0x393bf8
    // 0x420158: r1 = r0
    //     0x420158: mov          r1, r0
    //     0x42015c: ldur         r0, [fp, #-0x38]
    //     0x420160: stur         r1, [fp, #-0x10]
    // 0x420164: StoreField: r1->field_b = r0
    //     0x420164: stur         r0, [r1, #0xb]
    // 0x420168: r0 = call 0x420444
    //     0x420168: bl           0x420444
    // 0x42016c: r1 = r0
    //     0x42016c: mov          r1, r0
    //     0x420170: ldur         r0, [fp, #-8]
    //     0x420174: stur         r1, [fp, #-0x38]
    // 0x420178: StoreField: r1->field_b = r0
    //     0x420178: stur         r0, [r1, #0xb]
    //     0x42017c: add          r0, NULL, #0x30
    // 0x420180: StoreField: r1->field_27 = r0
    //     0x420180: stur         r0, [r1, #0x27]
    // 0x420184: r0 = pp[0xb2]
    //     0x420184: add          r0, PP, #0xa, lsl #12
    //     0x420188: ldr          r0, [r0, #0xa8]
    // 0x42018c: StoreField: r1->field_1f = r0
    //     0x42018c: stur         r0, [r1, #0x1f]
    //     0x420190: add          r2, NULL, #0x20
    // 0x420194: StoreField: r1->field_2f = r2
    //     0x420194: stur         r2, [r1, #0x2f]
    //     0x420198: ldur         r2, [fp, #-0x10]
    // 0x42019c: StoreField: r1->field_37 = r2
    //     0x42019c: stur         r2, [r1, #0x37]
    // 0x4201a0: r0 = call 0x3949ec
    //     0x4201a0: bl           0x3949ec
    // 0x4201a4: r1 = r0
    //     0x4201a4: mov          r1, r0
    // 0x4201a8: r0 = pp[0x5458]
    //     0x4201a8: ldr          r0, [PP, #0x5458]
    //     0x4201ac: stur         r1, [fp, #-8]
    // 0x4201b0: StoreField: r1->field_f = r0
    //     0x4201b0: stur         r0, [r1, #0xf]
    // 0x4201b4: r0 = pp[0x3e9]
    //     0x4201b4: add          r0, PP, #0x11, lsl #12
    //     0x4201b8: ldr          r0, [r0, #0x3d8]
    // 0x4201bc: StoreField: r1->field_13 = r0
    //     0x4201bc: stur         r0, [r1, #0x13]
    //     0x4201c0: ldur         r0, [fp, #-0x38]
    // 0x4201c4: StoreField: r1->field_b = r0
    //     0x4201c4: stur         r0, [r1, #0xb]
    // 0x4201c8: r0 = call 0x391c0c
    //     0x4201c8: bl           0x391c0c
    // 0x4201cc: r2 = r0
    //     0x4201cc: mov          r2, r0
    //     0x4201d0: ldur         r0, [fp, #-0x20]
    //     0x4201d4: stur         r2, [fp, #-0x10]
    // 0x4201d8: StoreField: r2->field_f = r0
    //     0x4201d8: stur         r0, [r2, #0xf]
    //     0x4201dc: ldur         r0, [fp, #-8]
    // 0x4201e0: StoreField: r2->field_b = r0
    //     0x4201e0: stur         r0, [r2, #0xb]
    //     0x4201e4: ldur         r1, [fp, #-0x28]
    // 0x4201e8: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::get_selectedCount()
    //     0x4201e8: bl           0x420424
    // 0x4201ec: r2 = r0
    //     0x4201ec: mov          r2, r0
    //     0x4201f0: sbfiz        r0, r2, #1, #0x1f
    //     0x4201f4: cmp          r2, r0, asr #1
    // 0x4201f8: b.eq 0x420204
    //     0x4201f8: b.eq         0x420204
    // 0x4201fc: r0 = call 0x61fba8
    //     0x4201fc: bl           0x61fba8
    // 0x420200: StoreField: r0->field_7 = r2
    //     0x420200: stur         r2, [r0, #7]
    //     0x420204: str          r0, [SP]
    // 0x420208: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x420208: bl           0x2ac0a0
    // 0x42020c: r1 = NULL
    //     0x42020c: mov          r1, NULL
    //     0x420210: mov          r2, #2
    //     0x420214: stur         r0, [fp, #-8]
    // 0x420218: r0 = call 0x61f920
    //     0x420218: bl           0x61f920
    // 0x42021c: r2 = r0
    //     0x42021c: mov          r2, r0
    //     0x420220: ldur         r0, [fp, #-8]
    //     0x420224: stur         r2, [fp, #-0x20]
    // 0x420228: StoreField: r2->field_f = r0
    //     0x420228: stur         r0, [r2, #0xf]
    // 0x42022c: r1 = pp[0x868]
    //     0x42022c: ldr          r1, [PP, #0x868]
    // 0x420230: r0 = call 0x61e854
    //     0x420230: bl           0x61e854
    // 0x420234: r1 = r0
    //     0x420234: mov          r1, r0
    //     0x420238: ldur         r0, [fp, #-0x20]
    // 0x42023c: StoreField: r1->field_f = r0
    //     0x42023c: stur         r0, [r1, #0xf]
    //     0x420240: mov          r0, #2
    // 0x420244: StoreField: r1->field_b = r0
    //     0x420244: stur         r0, [r1, #0xb]
    //     0x420248: str          r1, [SP]
    // 0x42024c: r1 = pp[0xafc]
    //     0x42024c: add          r1, PP, #0xc, lsl #12
    //     0x420250: ldr          r1, [r1, #0xaf0]
    // 0x420254: r4 = pp[0xf2f]
    //     0x420254: add          r4, PP, #0xf, lsl #12
    //     0x420258: ldr          r4, [r4, #0xf20]
    // 0x42025c: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x42025c: bl           0x3a1dcc
    // 0x420260: r1 = r0
    //     0x420260: mov          r1, r0
    //     0x420264: ldur         r0, [fp, #-0x28]
    //     0x420268: stur         r1, [fp, #-8]
    // 0x42026c: LoadField: r2 = r0->field_63
    //     0x42026c: ldur         r2, [r0, #0x63]
    //     0x420270: add          r2, r2, HEAP, lsl #32
    // 0x420274: LoadField: r0 = r2->field_13
    //     0x420274: ldur         r0, [r2, #0x13]
    // 0x420278: ArrayLoad: r3 = r2[0]  ; List_8
    //     0x420278: ldur         r3, [r2, #0x17]
    //     0x42027c: sbfx         r2, r0, #1, #0x1f
    //     0x420280: sbfx         r0, r3, #1, #0x1f
    //     0x420284: sub          r3, r2, r0
    //     0x420288: lsl          r0, r3, #1
    //     0x42028c: str          r0, [SP]
    // 0x420290: r0 = dart_core__StringBase::_interpolateSingle()
    //     0x420290: bl           0x2ac0a0
    //     0x420294: stur         r0, [fp, #-0x20]
    // 0x420298: r0 = call 0x3a67f0
    //     0x420298: bl           0x3a67f0
    // 0x42029c: r3 = r0
    //     0x42029c: mov          r3, r0
    // 0x4202a0: r0 = pp[0x40]
    //     0x4202a0: ldr          r0, [PP, #0x40]
    //     0x4202a4: stur         r3, [fp, #-0x28]
    // 0x4202a8: StoreField: r3->field_f = r0
    //     0x4202a8: stur         r0, [r3, #0xf]
    // 0x4202ac: r1 = pp[0xb87]
    //     0x4202ac: add          r1, PP, #0xf, lsl #12
    //     0x4202b0: ldr          r1, [r1, #0xb78]
    //     0x4202b4: mov          r2, #0
    // 0x4202b8: r0 = dart_core__GrowableList::factory_ctor()
    //     0x4202b8: bl           0x277268
    //     0x4202bc: ldur         r1, [fp, #-0x28]
    // 0x4202c0: StoreField: r1->field_13 = r0
    //     0x4202c0: stur         r0, [r1, #0x13]
    //     0x4202c4: ldurb        r16, [r1, #-1]
    //     0x4202c8: ldurb        r17, [r0, #-1]
    //     0x4202cc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4202d0: tst          BARRIER, HEAP, lsr #32
    // 0x4202d4: b.eq 0x4202dc
    //     0x4202d4: b.eq         0x4202dc
    // 0x4202d8: r0 = call 0x61e04c
    //     0x4202d8: bl           0x61e04c
    //     0x4202dc: ldur         r0, [fp, #-8]
    // 0x4202e0: StoreField: r1->field_7 = r0
    //     0x4202e0: stur         r0, [r1, #7]
    //     0x4202e4: ldurb        r16, [r1, #-1]
    //     0x4202e8: ldurb        r17, [r0, #-1]
    //     0x4202ec: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4202f0: tst          BARRIER, HEAP, lsr #32
    // 0x4202f4: b.eq 0x4202fc
    //     0x4202f4: b.eq         0x4202fc
    // 0x4202f8: r0 = call 0x61e04c
    //     0x4202f8: bl           0x61e04c
    //     0x4202fc: ldur         r0, [fp, #-0x20]
    // 0x420300: StoreField: r1->field_b = r0
    //     0x420300: stur         r0, [r1, #0xb]
    //     0x420304: ldurb        r16, [r1, #-1]
    //     0x420308: ldurb        r17, [r0, #-1]
    //     0x42030c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x420310: tst          BARRIER, HEAP, lsr #32
    // 0x420314: b.eq 0x42031c
    //     0x420314: b.eq         0x42031c
    // 0x420318: r0 = call 0x61e04c
    //     0x420318: bl           0x61e04c
    // 0x42031c: r4 = pp[0x4c0]
    //     0x42031c: ldr          r4, [PP, #0x4c0]
    // 0x420320: r0 = soul_flutter_international$common$utils$highlight_text_util_HighlightTextParser::parser()
    //     0x420320: bl           0x3a5b48
    //     0x420324: stur         r0, [fp, #-8]
    // 0x420328: r0 = call 0x393bf8
    //     0x420328: bl           0x393bf8
    // 0x42032c: r3 = r0
    //     0x42032c: mov          r3, r0
    //     0x420330: ldur         r0, [fp, #-8]
    //     0x420334: stur         r3, [fp, #-0x20]
    // 0x420338: StoreField: r3->field_f = r0
    //     0x420338: stur         r0, [r3, #0xf]
    // 0x42033c: r1 = NULL
    //     0x42033c: mov          r1, NULL
    //     0x420340: mov          r2, #4
    // 0x420344: r0 = call 0x61f920
    //     0x420344: bl           0x61f920
    // 0x420348: r2 = r0
    //     0x420348: mov          r2, r0
    //     0x42034c: ldur         r0, [fp, #-0x10]
    //     0x420350: stur         r2, [fp, #-8]
    // 0x420354: StoreField: r2->field_f = r0
    //     0x420354: stur         r0, [r2, #0xf]
    //     0x420358: ldur         r0, [fp, #-0x20]
    // 0x42035c: StoreField: r2->field_13 = r0
    //     0x42035c: stur         r0, [r2, #0x13]
    // 0x420360: r1 = pp[0x5c58]
    //     0x420360: ldr          r1, [PP, #0x5c58]
    // 0x420364: r0 = call 0x61e854
    //     0x420364: bl           0x61e854
    // 0x420368: r1 = r0
    //     0x420368: mov          r1, r0
    //     0x42036c: ldur         r0, [fp, #-8]
    //     0x420370: stur         r1, [fp, #-0x10]
    // 0x420374: StoreField: r1->field_f = r0
    //     0x420374: stur         r0, [r1, #0xf]
    //     0x420378: mov          r0, #4
    // 0x42037c: StoreField: r1->field_b = r0
    //     0x42037c: stur         r0, [r1, #0xb]
    // 0x420380: r0 = call 0x39310c
    //     0x420380: bl           0x39310c
    // 0x420384: r1 = r0
    //     0x420384: mov          r1, r0
    // 0x420388: r0 = pp[0x862]
    //     0x420388: add          r0, PP, #0xa, lsl #12
    //     0x42038c: ldr          r0, [r0, #0x858]
    //     0x420390: stur         r1, [fp, #-8]
    // 0x420394: StoreField: r1->field_f = r0
    //     0x420394: stur         r0, [r1, #0xf]
    // 0x420398: r0 = pp[0xaee]
    //     0x420398: add          r0, PP, #0xe, lsl #12
    //     0x42039c: ldr          r0, [r0, #0xae0]
    // 0x4203a0: StoreField: r1->field_13 = r0
    //     0x4203a0: stur         r0, [r1, #0x13]
    // 0x4203a4: r0 = pp[0xaf6]
    //     0x4203a4: add          r0, PP, #0xe, lsl #12
    //     0x4203a8: ldr          r0, [r0, #0xae8]
    // 0x4203ac: ArrayStore: r1[0] = r0  ; List_8
    //     0x4203ac: stur         r0, [r1, #0x17]
    // 0x4203b0: r0 = pp[0xb6e]
    //     0x4203b0: add          r0, PP, #0xe, lsl #12
    //     0x4203b4: ldr          r0, [r0, #0xb60]
    // 0x4203b8: StoreField: r1->field_1b = r0
    //     0x4203b8: stur         r0, [r1, #0x1b]
    // 0x4203bc: r0 = pp[0xb06]
    //     0x4203bc: add          r0, PP, #0xe, lsl #12
    //     0x4203c0: ldr          r0, [r0, #0xaf8]
    // 0x4203c4: StoreField: r1->field_23 = r0
    //     0x4203c4: stur         r0, [r1, #0x23]
    // 0x4203c8: r0 = pp[0xb2]
    //     0x4203c8: add          r0, PP, #0xa, lsl #12
    //     0x4203cc: ldr          r0, [r0, #0xa8]
    // 0x4203d0: StoreField: r1->field_2b = r0
    //     0x4203d0: stur         r0, [r1, #0x2b]
    // 0x4203d4: StoreField: r1->field_2f = xzr
    //     0x4203d4: stur         xzr, [r1, #0x2f]
    //     0x4203d8: ldur         r0, [fp, #-0x10]
    // 0x4203dc: StoreField: r1->field_b = r0
    //     0x4203dc: stur         r0, [r1, #0xb]
    // 0x4203e0: r0 = call 0x391a04
    //     0x4203e0: bl           0x391a04
    //     0x4203e4: stur         r0, [fp, #-0x10]
    //     0x4203e8: ldur         BARRIER, [fp, #-0x18]
    //     0x4203ec: ldur         lr, [fp, #-0x30]
    //     0x4203f0: stp          lr, BARRIER, [SP, #8]
    //     0x4203f4: ldur         BARRIER, [fp, #-8]
    //     0x4203f8: str          BARRIER, [SP]
    // 0x4203fc: r1 = r0
    //     0x4203fc: mov          r1, r0
    // 0x420400: r4 = pp[0xcc0]
    //     0x420400: add          r4, PP, #0x10, lsl #12
    //     0x420404: ldr          r4, [r4, #0xcb0]
    // 0x420408: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x420408: bl           0x391490
    //     0x42040c: ldur         r0, [fp, #-0x10]
    // 0x420410: SP = fp
    //     0x420410: mov          SP, fp
    // 0x420414: LeaveFrame
    //     0x420414: ldp          fp, lr, [SP], #0x10
    // 0x420418: ret
    //     0x420418: ret          
    // 0x42041c: r0 = call 0x61fa28
    //     0x42041c: bl           0x61fa28
    // 0x420420: b 0x41ffac
    //     0x420420: b            0x41ffac
  }

  _anon_closure() {
    // ** addr: 0x420494, size: 0xb8
    // 0x420494: EnterFrame
    //     0x420494: stp          fp, lr, [SP, #-0x10]!
    //     0x420498: mov          fp, SP
    // 0x42049c: AllocStack(0x18)
    //     0x42049c: sub          SP, SP, #0x18
    //     0x4204a0: stur         NULL, [fp, #-8]
    //     0x4204a4: mov          r0, #0
    //     0x4204a8: add          r1, fp, r0, sxtw #2
    // 0x4204ac: LoadField: r1 = r1->field_10
    //     0x4204ac: ldr          r1, [r1, #0x10]
    // 0x4204b0: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x4204b0: ldur         r2, [r1, #0x17]
    //     0x4204b4: add          r2, r2, HEAP, lsl #32
    //     0x4204b8: stur         r2, [fp, #-0x10]
    // 0x4204bc: CheckStackOverflow
    //     0x4204bc: ldr          BARRIER, [THR, #0x38]
    //     0x4204c0: cmp          SP, BARRIER
    //     0x4204c4: b.ls         0x420538
    // 0x4204c8: r0 = pp[0xcf0]
    //     0x4204c8: ldr          r0, [PP, #0xcf0]
    // 0x4204cc: r0 = call 0x2b16e4
    //     0x4204cc: bl           0x2b16e4
    //     0x4204d0: ldur         r0, [fp, #-0x10]
    // 0x4204d4: LoadField: r1 = r0->field_f
    //     0x4204d4: ldur         r1, [r0, #0xf]
    //     0x4204d8: add          r1, r1, HEAP, lsl #32
    // 0x4204dc: LoadField: r0 = r1->field_1f
    //     0x4204dc: ldur         r0, [r1, #0x1f]
    //     0x4204e0: add          r0, r0, HEAP, lsl #32
    // 0x4204e4: LoadField: r2 = r1->field_2b
    //     0x4204e4: ldur         r2, [r1, #0x2b]
    //     0x4204e8: add          r2, r2, HEAP, lsl #32
    // 0x4204ec: BARRIER = pp[0x40]
    //     0x4204ec: ldr          BARRIER, [PP, #0x40]
    //     0x4204f0: cmp          r2, r16
    // 0x4204f4: b.eq 0x420540
    //     0x4204f4: b.eq         0x420540
    // 0x4204f8: r1 = r0
    //     0x4204f8: mov          r1, r0
    // 0x4204fc: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::confirmInvite()
    //     0x4204fc: bl           0x42054c
    // 0x420500: r0 = call 0x28d374
    //     0x420500: bl           0x28d374
    // 0x420504: r1 = r0
    //     0x420504: mov          r1, r0
    //     0x420508: mov          r0, #0xa120
    //     0x42050c: movk         r0, #7, lsl #16
    // 0x420510: StoreField: r1->field_7 = r0
    //     0x420510: stur         r0, [r1, #7]
    // 0x420514: BARRIER = pp[0x327]
    //     0x420514: add          BARRIER, PP, #0xf, lsl #12
    //     0x420518: ldr          BARRIER, [BARRIER, #0x318]
    //     0x42051c: str          BARRIER, [SP]
    // 0x420520: r2 = r1
    //     0x420520: mov          r2, r1
    // 0x420524: r1 = pp[0x5838]
    //     0x420524: ldr          r1, [PP, #0x5838]
    // 0x420528: r4 = pp[0x280]
    //     0x420528: ldr          r4, [PP, #0x280]
    // 0x42052c: r0 = dart_async_Future::factory_ctor_delayed()
    //     0x42052c: bl           0x3b5668
    // 0x420530: r0 = NULL
    //     0x420530: mov          r0, NULL
    // 0x420534: b 0x2b16b8
    //     0x420534: b            0x2b16b8
    // 0x420538: r0 = call 0x61fa28
    //     0x420538: bl           0x61fa28
    // 0x42053c: b 0x4204c8
    //     0x42053c: b            0x4204c8
    // 0x420540: r9 = pp[0x729]
    //     0x420540: add          r9, PP, #0x11, lsl #12
    //     0x420544: ldr          r9, [r9, #0x718]
    // 0x420548: r0 = call 0x620258
    //     0x420548: bl           0x620258
  }

  _buildBody() {
    // ** addr: 0x4207d8, size: 0x3e4
    // 0x4207d8: EnterFrame
    //     0x4207d8: stp          fp, lr, [SP, #-0x10]!
    //     0x4207dc: mov          fp, SP
    // 0x4207e0: AllocStack(0x80)
    //     0x4207e0: sub          SP, SP, #0x80
    // 0x4207e4: r2 = r1
    //     0x4207e4: mov          r2, r1
    //     0x4207e8: stur         r1, [fp, #-8]
    // 0x4207ec: CheckStackOverflow
    //     0x4207ec: ldr          BARRIER, [THR, #0x38]
    //     0x4207f0: cmp          SP, BARRIER
    //     0x4207f4: b.ls         0x420b9c
    //     0x4207f8: mov          r1, #1
    // 0x4207fc: r0 = call 0x61e890
    //     0x4207fc: bl           0x61e890
    //     0x420800: ldur         r2, [fp, #-8]
    //     0x420804: stur         r0, [fp, #-0x10]
    // 0x420808: StoreField: r0->field_f = r2
    //     0x420808: stur         r2, [r0, #0xf]
    // 0x42080c: r0 = soul_flutter_international$res$colors_SOColors::get_s_06()
    //     0x42080c: bl           0x3b82c4
    //     0x420810: stur         r0, [fp, #-0x18]
    // 0x420814: r0 = soul_flutter_international$res$colors_SOColors::get_s_02()
    //     0x420814: bl           0x3b348c
    //     0x420818: stur         r0, [fp, #-0x20]
    // 0x42081c: r0 = call 0x31abec
    //     0x42081c: bl           0x31abec
    // 0x420820: r1 = r0
    //     0x420820: mov          r1, r0
    //     0x420824: add          r0, NULL, #0x20
    //     0x420828: stur         r1, [fp, #-0x28]
    // 0x42082c: StoreField: r1->field_7 = r0
    //     0x42082c: stur         r0, [r1, #7]
    // 0x420830: r2 = pp[0xb5e]
    //     0x420830: add          r2, PP, #0xe, lsl #12
    //     0x420834: ldr          r2, [r2, #0xb50]
    // 0x420838: StoreField: r1->field_1f = r2
    //     0x420838: stur         r2, [r1, #0x1f]
    // 0x42083c: r3 = pp[0xe4e]
    //     0x42083c: add          r3, PP, #0xe, lsl #12
    //     0x420840: ldr          r3, [r3, #0xe40]
    // 0x420844: StoreField: r1->field_23 = r3
    //     0x420844: stur         r3, [r1, #0x23]
    // 0x420848: r0 = soul_flutter_international$res$colors_SOColors::get_s_05()
    //     0x420848: bl           0x3a6088
    //     0x42084c: stur         r0, [fp, #-0x30]
    // 0x420850: r0 = call 0x31abec
    //     0x420850: bl           0x31abec
    // 0x420854: r1 = r0
    //     0x420854: mov          r1, r0
    //     0x420858: add          r0, NULL, #0x20
    //     0x42085c: stur         r1, [fp, #-0x38]
    // 0x420860: StoreField: r1->field_7 = r0
    //     0x420860: stur         r0, [r1, #7]
    // 0x420864: r2 = pp[0xb5e]
    //     0x420864: add          r2, PP, #0xe, lsl #12
    //     0x420868: ldr          r2, [r2, #0xb50]
    // 0x42086c: StoreField: r1->field_1f = r2
    //     0x42086c: stur         r2, [r1, #0x1f]
    // 0x420870: r2 = pp[0xe4e]
    //     0x420870: add          r2, PP, #0xe, lsl #12
    //     0x420874: ldr          r2, [r2, #0xe40]
    // 0x420878: StoreField: r1->field_23 = r2
    //     0x420878: stur         r2, [r1, #0x23]
    // 0x42087c: r0 = soul_flutter_international$res$colors_SOColors::get_s_00()
    //     0x42087c: bl           0x3b1380
    //     0x420880: stur         r0, [fp, #-0x40]
    // 0x420884: r0 = call 0x391f1c
    //     0x420884: bl           0x391f1c
    // 0x420888: r1 = r0
    //     0x420888: mov          r1, r0
    //     0x42088c: ldur         r0, [fp, #-0x40]
    //     0x420890: stur         r1, [fp, #-0x48]
    // 0x420894: StoreField: r1->field_7 = r0
    //     0x420894: stur         r0, [r1, #7]
    //     0x420898: fmov         d0, #3.00000000
    // 0x42089c: StoreField: r1->field_b = d0
    //     0x42089c: stur         d0, [r1, #0xb]
    // 0x4208a0: r0 = pp[0x37a]
    //     0x4208a0: add          r0, PP, #0xa, lsl #12
    //     0x4208a4: ldr          r0, [r0, #0x370]
    // 0x4208a8: StoreField: r1->field_13 = r0
    //     0x4208a8: stur         r0, [r1, #0x13]
    //     0x4208ac: fmov         d0, #-1.00000000
    // 0x4208b0: ArrayStore: r1[0] = d0  ; List_8
    //     0x4208b0: stur         d0, [r1, #0x17]
    // 0x4208b4: r0 = call 0x420d28
    //     0x4208b4: bl           0x420d28
    // 0x4208b8: r3 = r0
    //     0x4208b8: mov          r3, r0
    //     0x4208bc: ldur         r0, [fp, #-0x48]
    //     0x4208c0: stur         r3, [fp, #-0x50]
    // 0x4208c4: StoreField: r3->field_7 = r0
    //     0x4208c4: stur         r0, [r3, #7]
    // 0x4208c8: r0 = pp[0x781]
    //     0x4208c8: add          r0, PP, #0x11, lsl #12
    //     0x4208cc: ldr          r0, [r0, #0x770]
    // 0x4208d0: StoreField: r3->field_b = r0
    //     0x4208d0: stur         r0, [r3, #0xb]
    //     0x4208d4: fmov         d0, #24.00000000
    // 0x4208d8: StoreField: r3->field_f = d0
    //     0x4208d8: stur         d0, [r3, #0xf]
    //     0x4208dc: ldur         r0, [fp, #-8]
    // 0x4208e0: LoadField: r4 = r0->field_23
    //     0x4208e0: ldur         r4, [r0, #0x23]
    //     0x4208e4: add          r4, r4, HEAP, lsl #32
    // 0x4208e8: BARRIER = pp[0x40]
    //     0x4208e8: ldr          BARRIER, [PP, #0x40]
    //     0x4208ec: cmp          r4, r16
    // 0x4208f0: b.eq 0x420ba4
    //     0x4208f0: b.eq         0x420ba4
    //     0x4208f4: stur         r4, [fp, #-0x48]
    // 0x4208f8: LoadField: r5 = r0->field_1b
    //     0x4208f8: ldur         r5, [r0, #0x1b]
    //     0x4208fc: add          r5, r5, HEAP, lsl #32
    //     0x420900: stur         r5, [fp, #-0x40]
    // 0x420904: r1 = pp[0x789]
    //     0x420904: add          r1, PP, #0x11, lsl #12
    //     0x420908: ldr          r1, [r1, #0x778]
    // 0x42090c: r2 = NULL
    //     0x42090c: mov          r2, NULL
    // 0x420910: r0 = call 0x61ec54
    //     0x420910: bl           0x61ec54
    // 0x420914: BARRIER = pp[0x64b]
    //     0x420914: add          BARRIER, PP, #0xb, lsl #12
    //     0x420918: ldr          BARRIER, [BARRIER, #0x640]
    //     0x42091c: ldur         lr, [fp, #-0x40]
    //     0x420920: stp          lr, BARRIER, [SP, #8]
    //     0x420924: str          r0, [SP]
    // 0x420928: r4 = pp[0x58]
    //     0x420928: ldr          r4, [PP, #0x58]
    // 0x42092c: r0 = dart_collection_ListBase::map()
    //     0x42092c: bl           0x3bd500
    // 0x420930: LoadField: r1 = r0->field_7
    //     0x420930: ldur         r1, [r0, #7]
    //     0x420934: add          r1, r1, HEAP, lsl #32
    // 0x420938: r2 = r0
    //     0x420938: mov          r2, r0
    // 0x42093c: r0 = dart_core__GrowableList::factory_ctor_of()
    //     0x42093c: bl           0x276db0
    //     0x420940: stur         r0, [fp, #-0x58]
    // 0x420944: r0 = call 0x420d1c
    //     0x420944: bl           0x420d1c
    // 0x420948: r3 = r0
    //     0x420948: mov          r3, r0
    //     0x42094c: ldur         r0, [fp, #-0x58]
    //     0x420950: stur         r3, [fp, #-0x60]
    // 0x420954: StoreField: r3->field_b = r0
    //     0x420954: stur         r0, [r3, #0xb]
    //     0x420958: ldur         r0, [fp, #-0x48]
    // 0x42095c: StoreField: r3->field_f = r0
    //     0x42095c: stur         r0, [r3, #0xf]
    //     0x420960: add          r0, NULL, #0x20
    // 0x420964: StoreField: r3->field_13 = r0
    //     0x420964: stur         r0, [r3, #0x13]
    //     0x420968: fmov         d0, #2.00000000
    // 0x42096c: StoreField: r3->field_1f = d0
    //     0x42096c: stur         d0, [r3, #0x1f]
    // 0x420970: r1 = pp[0x5ac0]
    //     0x420970: ldr          r1, [PP, #0x5ac0]
    // 0x420974: StoreField: r3->field_27 = r1
    //     0x420974: stur         r1, [r3, #0x27]
    //     0x420978: ldur         r1, [fp, #-0x50]
    // 0x42097c: StoreField: r3->field_2b = r1
    //     0x42097c: stur         r1, [r3, #0x2b]
    //     0x420980: ldur         r1, [fp, #-0x20]
    // 0x420984: StoreField: r3->field_3b = r1
    //     0x420984: stur         r1, [r3, #0x3b]
    //     0x420988: ldur         r1, [fp, #-0x28]
    // 0x42098c: StoreField: r3->field_43 = r1
    //     0x42098c: stur         r1, [r3, #0x43]
    // 0x420990: r1 = pp[0x791]
    //     0x420990: add          r1, PP, #0x11, lsl #12
    //     0x420994: ldr          r1, [r1, #0x780]
    // 0x420998: StoreField: r3->field_4b = r1
    //     0x420998: stur         r1, [r3, #0x4b]
    //     0x42099c: ldur         r1, [fp, #-0x30]
    // 0x4209a0: StoreField: r3->field_3f = r1
    //     0x4209a0: stur         r1, [r3, #0x3f]
    //     0x4209a4: ldur         r1, [fp, #-0x38]
    // 0x4209a8: StoreField: r3->field_47 = r1
    //     0x4209a8: stur         r1, [r3, #0x47]
    // 0x4209ac: r1 = pp[0x77d8]
    //     0x4209ac: ldr          r1, [PP, #0x77d8]
    // 0x4209b0: StoreField: r3->field_53 = r1
    //     0x4209b0: stur         r1, [r3, #0x53]
    //     0x4209b4: ldur         r2, [fp, #-8]
    // 0x4209b8: r1 = pp[0x799]
    //     0x4209b8: add          r1, PP, #0x11, lsl #12
    //     0x4209bc: ldr          r1, [r1, #0x788]
    // 0x4209c0: r0 = call 0x61ec54
    //     0x4209c0: bl           0x61ec54
    // 0x4209c4: r1 = r0
    //     0x4209c4: mov          r1, r0
    //     0x4209c8: ldur         r0, [fp, #-0x60]
    // 0x4209cc: StoreField: r0->field_5f = r1
    //     0x4209cc: stur         r1, [r0, #0x5f]
    //     0x4209d0: add          r1, NULL, #0x20
    // 0x4209d4: StoreField: r0->field_7b = r1
    //     0x4209d4: stur         r1, [r0, #0x7b]
    // 0x4209d8: r0 = call 0x391c0c
    //     0x4209d8: bl           0x391c0c
    // 0x4209dc: r1 = r0
    //     0x4209dc: mov          r1, r0
    // 0x4209e0: r0 = pp[0x7a1]
    //     0x4209e0: add          r0, PP, #0x11, lsl #12
    //     0x4209e4: ldr          r0, [r0, #0x790]
    //     0x4209e8: stur         r1, [fp, #-0x20]
    // 0x4209ec: StoreField: r1->field_f = r0
    //     0x4209ec: stur         r0, [r1, #0xf]
    //     0x4209f0: ldur         r0, [fp, #-0x60]
    // 0x4209f4: StoreField: r1->field_b = r0
    //     0x4209f4: stur         r0, [r1, #0xb]
    // 0x4209f8: r0 = call 0x3949ec
    //     0x4209f8: bl           0x3949ec
    // 0x4209fc: r3 = r0
    //     0x4209fc: mov          r3, r0
    // 0x420a00: r0 = pp[0x5458]
    //     0x420a00: ldr          r0, [PP, #0x5458]
    //     0x420a04: stur         r3, [fp, #-0x28]
    // 0x420a08: StoreField: r3->field_f = r0
    //     0x420a08: stur         r0, [r3, #0xf]
    // 0x420a0c: r0 = pp[0x218]
    //     0x420a0c: add          r0, PP, #0x10, lsl #12
    //     0x420a10: ldr          r0, [r0, #0x208]
    // 0x420a14: StoreField: r3->field_13 = r0
    //     0x420a14: stur         r0, [r3, #0x13]
    //     0x420a18: ldur         r0, [fp, #-0x20]
    // 0x420a1c: StoreField: r3->field_b = r0
    //     0x420a1c: stur         r0, [r3, #0xb]
    //     0x420a20: ldur         r2, [fp, #-8]
    // 0x420a24: LoadField: r0 = r2->field_27
    //     0x420a24: ldur         r0, [r2, #0x27]
    //     0x420a28: add          r0, r0, HEAP, lsl #32
    // 0x420a2c: BARRIER = pp[0x40]
    //     0x420a2c: ldr          BARRIER, [PP, #0x40]
    //     0x420a30: cmp          r0, r16
    // 0x420a34: b.eq 0x420bb0
    //     0x420a34: b.eq         0x420bb0
    //     0x420a38: ldur         r1, [fp, #-0x40]
    //     0x420a3c: stur         r0, [fp, #-0x20]
    // 0x420a40: LoadField: r4 = r1->field_b
    //     0x420a40: ldur         r4, [r1, #0xb]
    //     0x420a44: sbfx         r5, r4, #1, #0x1f
    //     0x420a48: stur         r5, [fp, #-0x68]
    // 0x420a4c: r1 = pp[0x7a9]
    //     0x420a4c: add          r1, PP, #0x11, lsl #12
    //     0x420a50: ldr          r1, [r1, #0x798]
    // 0x420a54: r0 = call 0x61ec54
    //     0x420a54: bl           0x61ec54
    //     0x420a58: ldur         r2, [fp, #-0x10]
    // 0x420a5c: r1 = pp[0x7b1]
    //     0x420a5c: add          r1, PP, #0x11, lsl #12
    //     0x420a60: ldr          r1, [r1, #0x7a0]
    //     0x420a64: stur         r0, [fp, #-8]
    // 0x420a68: r0 = call 0x61ec54
    //     0x420a68: bl           0x61ec54
    //     0x420a6c: stur         r0, [fp, #-0x10]
    // 0x420a70: r0 = call 0x400664
    //     0x420a70: bl           0x400664
    // 0x420a74: r1 = r0
    //     0x420a74: mov          r1, r0
    //     0x420a78: ldur         r2, [fp, #-0x20]
    //     0x420a7c: ldur         r3, [fp, #-0x10]
    //     0x420a80: ldur         r5, [fp, #-0x68]
    //     0x420a84: ldur         r6, [fp, #-8]
    //     0x420a88: stur         r0, [fp, #-8]
    // 0x420a8c: r4 = pp[0x1360]
    //     0x420a8c: ldr          r4, [PP, #0x1360]
    // 0x420a90: r0 = flutter$src$widgets$page_view_PageView::ctor_builder()
    //     0x420a90: bl           0x420bbc
    // 0x420a94: r1 = pp[0xade]
    //     0x420a94: add          r1, PP, #0xe, lsl #12
    //     0x420a98: ldr          r1, [r1, #0xad0]
    // 0x420a9c: r0 = call 0x39fb14
    //     0x420a9c: bl           0x39fb14
    // 0x420aa0: r3 = r0
    //     0x420aa0: mov          r3, r0
    //     0x420aa4: mov          r0, #1
    //     0x420aa8: stur         r3, [fp, #-0x10]
    // 0x420aac: StoreField: r3->field_13 = r0
    //     0x420aac: stur         r0, [r3, #0x13]
    // 0x420ab0: r0 = pp[0xae6]
    //     0x420ab0: add          r0, PP, #0xe, lsl #12
    //     0x420ab4: ldr          r0, [r0, #0xad8]
    // 0x420ab8: StoreField: r3->field_1b = r0
    //     0x420ab8: stur         r0, [r3, #0x1b]
    //     0x420abc: ldur         r0, [fp, #-8]
    // 0x420ac0: StoreField: r3->field_b = r0
    //     0x420ac0: stur         r0, [r3, #0xb]
    // 0x420ac4: r1 = NULL
    //     0x420ac4: mov          r1, NULL
    //     0x420ac8: mov          r2, #4
    // 0x420acc: r0 = call 0x61f920
    //     0x420acc: bl           0x61f920
    // 0x420ad0: r2 = r0
    //     0x420ad0: mov          r2, r0
    //     0x420ad4: ldur         r0, [fp, #-0x28]
    //     0x420ad8: stur         r2, [fp, #-8]
    // 0x420adc: StoreField: r2->field_f = r0
    //     0x420adc: stur         r0, [r2, #0xf]
    //     0x420ae0: ldur         r0, [fp, #-0x10]
    // 0x420ae4: StoreField: r2->field_13 = r0
    //     0x420ae4: stur         r0, [r2, #0x13]
    // 0x420ae8: r1 = pp[0x5c58]
    //     0x420ae8: ldr          r1, [PP, #0x5c58]
    // 0x420aec: r0 = call 0x61e854
    //     0x420aec: bl           0x61e854
    // 0x420af0: r1 = r0
    //     0x420af0: mov          r1, r0
    //     0x420af4: ldur         r0, [fp, #-8]
    //     0x420af8: stur         r1, [fp, #-0x10]
    // 0x420afc: StoreField: r1->field_f = r0
    //     0x420afc: stur         r0, [r1, #0xf]
    //     0x420b00: mov          r0, #4
    // 0x420b04: StoreField: r1->field_b = r0
    //     0x420b04: stur         r0, [r1, #0xb]
    // 0x420b08: r0 = call 0x39310c
    //     0x420b08: bl           0x39310c
    // 0x420b0c: r1 = r0
    //     0x420b0c: mov          r1, r0
    // 0x420b10: r0 = pp[0x862]
    //     0x420b10: add          r0, PP, #0xa, lsl #12
    //     0x420b14: ldr          r0, [r0, #0x858]
    //     0x420b18: stur         r1, [fp, #-8]
    // 0x420b1c: StoreField: r1->field_f = r0
    //     0x420b1c: stur         r0, [r1, #0xf]
    // 0x420b20: r0 = pp[0xaee]
    //     0x420b20: add          r0, PP, #0xe, lsl #12
    //     0x420b24: ldr          r0, [r0, #0xae0]
    // 0x420b28: StoreField: r1->field_13 = r0
    //     0x420b28: stur         r0, [r1, #0x13]
    // 0x420b2c: r0 = pp[0xaf6]
    //     0x420b2c: add          r0, PP, #0xe, lsl #12
    //     0x420b30: ldr          r0, [r0, #0xae8]
    // 0x420b34: ArrayStore: r1[0] = r0  ; List_8
    //     0x420b34: stur         r0, [r1, #0x17]
    // 0x420b38: r0 = pp[0xb6e]
    //     0x420b38: add          r0, PP, #0xe, lsl #12
    //     0x420b3c: ldr          r0, [r0, #0xb60]
    // 0x420b40: StoreField: r1->field_1b = r0
    //     0x420b40: stur         r0, [r1, #0x1b]
    // 0x420b44: r0 = pp[0xb06]
    //     0x420b44: add          r0, PP, #0xe, lsl #12
    //     0x420b48: ldr          r0, [r0, #0xaf8]
    // 0x420b4c: StoreField: r1->field_23 = r0
    //     0x420b4c: stur         r0, [r1, #0x23]
    // 0x420b50: r0 = pp[0xb2]
    //     0x420b50: add          r0, PP, #0xa, lsl #12
    //     0x420b54: ldr          r0, [r0, #0xa8]
    // 0x420b58: StoreField: r1->field_2b = r0
    //     0x420b58: stur         r0, [r1, #0x2b]
    // 0x420b5c: StoreField: r1->field_2f = xzr
    //     0x420b5c: stur         xzr, [r1, #0x2f]
    //     0x420b60: ldur         r0, [fp, #-0x10]
    // 0x420b64: StoreField: r1->field_b = r0
    //     0x420b64: stur         r0, [r1, #0xb]
    // 0x420b68: r0 = call 0x391a04
    //     0x420b68: bl           0x391a04
    //     0x420b6c: stur         r0, [fp, #-0x10]
    //     0x420b70: ldur         BARRIER, [fp, #-0x18]
    //     0x420b74: ldur         lr, [fp, #-8]
    //     0x420b78: stp          lr, BARRIER, [SP]
    // 0x420b7c: r1 = r0
    //     0x420b7c: mov          r1, r0
    // 0x420b80: r4 = pp[0x577]
    //     0x420b80: add          r4, PP, #0xf, lsl #12
    //     0x420b84: ldr          r4, [r4, #0x568]
    // 0x420b88: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x420b88: bl           0x391490
    //     0x420b8c: ldur         r0, [fp, #-0x10]
    // 0x420b90: SP = fp
    //     0x420b90: mov          SP, fp
    // 0x420b94: LeaveFrame
    //     0x420b94: ldp          fp, lr, [SP], #0x10
    // 0x420b98: ret
    //     0x420b98: ret          
    // 0x420b9c: r0 = call 0x61fa28
    //     0x420b9c: bl           0x61fa28
    // 0x420ba0: b 0x4207f8
    //     0x420ba0: b            0x4207f8
    // 0x420ba4: r9 = pp[0x7b9]
    //     0x420ba4: add          r9, PP, #0x11, lsl #12
    //     0x420ba8: ldr          r9, [r9, #0x7a8]
    // 0x420bac: r0 = call 0x620258
    //     0x420bac: bl           0x620258
    // 0x420bb0: r9 = pp[0x7c1]
    //     0x420bb0: add          r9, PP, #0x11, lsl #12
    //     0x420bb4: ldr          r9, [r9, #0x7b0]
    // 0x420bb8: r0 = call 0x620258
    //     0x420bb8: bl           0x620258
  }

  _anon_closure() {
    // ** addr: 0x420d34, size: 0x60
    // 0x420d34: EnterFrame
    //     0x420d34: stp          fp, lr, [SP, #-0x10]!
    //     0x420d38: mov          fp, SP
    // 0x420d3c: AllocStack(0x10)
    //     0x420d3c: sub          SP, SP, #0x10
    //     0x420d40: ldr          r0, [fp, #0x20]
    // 0x420d44: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x420d44: ldur         r1, [r0, #0x17]
    //     0x420d48: add          r1, r1, HEAP, lsl #32
    // 0x420d4c: LoadField: r0 = r1->field_f
    //     0x420d4c: ldur         r0, [r1, #0xf]
    //     0x420d50: add          r0, r0, HEAP, lsl #32
    // 0x420d54: LoadField: r1 = r0->field_1f
    //     0x420d54: ldur         r1, [r0, #0x1f]
    //     0x420d58: add          r1, r1, HEAP, lsl #32
    //     0x420d5c: ldr          r0, [fp, #0x10]
    //     0x420d60: stur         r1, [fp, #-0x10]
    //     0x420d64: sbfx         r2, r0, #1, #0x1f
    // 0x420d68: branchIfSmi(r0, 0x420d70)
    //     0x420d68: tbz          r0, #0, 0x420d70
    // 0x420d6c: LoadField: r2 = r0->field_7
    //     0x420d6c: ldur         r2, [r0, #7]
    //     0x420d70: stur         r2, [fp, #-8]
    // 0x420d74: r0 = call 0x420d94
    //     0x420d74: bl           0x420d94
    //     0x420d78: ldur         r1, [fp, #-8]
    // 0x420d7c: StoreField: r0->field_b = r1
    //     0x420d7c: stur         r1, [r0, #0xb]
    //     0x420d80: ldur         r1, [fp, #-0x10]
    // 0x420d84: StoreField: r0->field_13 = r1
    //     0x420d84: stur         r1, [r0, #0x13]
    // 0x420d88: SP = fp
    //     0x420d88: mov          SP, fp
    // 0x420d8c: LeaveFrame
    //     0x420d8c: ldp          fp, lr, [SP], #0x10
    // 0x420d90: ret
    //     0x420d90: ret          
  }

  _onPageChanged() {
    // ** addr: 0x420da0, size: 0x3c
    // 0x420da0: EnterFrame
    //     0x420da0: stp          fp, lr, [SP, #-0x10]!
    //     0x420da4: mov          fp, SP
    //     0x420da8: ldr          r0, [fp, #0x18]
    // 0x420dac: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x420dac: ldur         r1, [r0, #0x17]
    //     0x420db0: add          r1, r1, HEAP, lsl #32
    // 0x420db4: CheckStackOverflow
    //     0x420db4: ldr          BARRIER, [THR, #0x38]
    //     0x420db8: cmp          SP, BARRIER
    //     0x420dbc: b.ls         0x420dd4
    //     0x420dc0: ldr          r2, [fp, #0x10]
    // 0x420dc4: r0 = soul_flutter_international$biz$party$page_party_invite__PartyInvitePageState::_onPageChanged()
    //     0x420dc4: bl           0x420ddc
    // 0x420dc8: SP = fp
    //     0x420dc8: mov          SP, fp
    // 0x420dcc: LeaveFrame
    //     0x420dcc: ldp          fp, lr, [SP], #0x10
    // 0x420dd0: ret
    //     0x420dd0: ret          
    // 0x420dd4: r0 = call 0x61fa28
    //     0x420dd4: bl           0x61fa28
    // 0x420dd8: b 0x420dc0
    //     0x420dd8: b            0x420dc0
  }

  _onPageChanged() {
    // ** addr: 0x420ddc, size: 0x68
    // 0x420ddc: EnterFrame
    //     0x420ddc: stp          fp, lr, [SP, #-0x10]!
    //     0x420de0: mov          fp, SP
    // 0x420de4: CheckStackOverflow
    //     0x420de4: ldr          BARRIER, [THR, #0x38]
    //     0x420de8: cmp          SP, BARRIER
    //     0x420dec: b.ls         0x420e30
    // 0x420df0: LoadField: r0 = r1->field_23
    //     0x420df0: ldur         r0, [r1, #0x23]
    //     0x420df4: add          r0, r0, HEAP, lsl #32
    // 0x420df8: BARRIER = pp[0x40]
    //     0x420df8: ldr          BARRIER, [PP, #0x40]
    //     0x420dfc: cmp          r0, r16
    // 0x420e00: b.eq 0x420e38
    //     0x420e00: b.eq         0x420e38
    //     0x420e04: sbfx         r1, r2, #1, #0x1f
    // 0x420e08: branchIfSmi(r2, 0x420e10)
    //     0x420e08: tbz          r2, #0, 0x420e10
    // 0x420e0c: LoadField: r1 = r2->field_7
    //     0x420e0c: ldur         r1, [r2, #7]
    // 0x420e10: r2 = r1
    //     0x420e10: mov          r2, r1
    // 0x420e14: r1 = r0
    //     0x420e14: mov          r1, r0
    // 0x420e18: r4 = pp[0x278]
    //     0x420e18: ldr          r4, [PP, #0x278]
    // 0x420e1c: r0 = flutter$src$material$tab_controller_TabController::animateTo()
    //     0x420e1c: bl           0x3ff4a0
    // 0x420e20: r0 = NULL
    //     0x420e20: mov          r0, NULL
    // 0x420e24: SP = fp
    //     0x420e24: mov          SP, fp
    // 0x420e28: LeaveFrame
    //     0x420e28: ldp          fp, lr, [SP], #0x10
    // 0x420e2c: ret
    //     0x420e2c: ret          
    // 0x420e30: r0 = call 0x61fa28
    //     0x420e30: bl           0x61fa28
    // 0x420e34: b 0x420df0
    //     0x420e34: b            0x420df0
    // 0x420e38: r9 = pp[0x7b9]
    //     0x420e38: add          r9, PP, #0x11, lsl #12
    //     0x420e3c: ldr          r9, [r9, #0x7a8]
    // 0x420e40: r0 = call 0x620258
    //     0x420e40: bl           0x620258
  }

  _changeTab() {
    // ** addr: 0x420e44, size: 0x3c
    // 0x420e44: EnterFrame
    //     0x420e44: stp          fp, lr, [SP, #-0x10]!
    //     0x420e48: mov          fp, SP
    //     0x420e4c: ldr          r0, [fp, #0x18]
    // 0x420e50: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x420e50: ldur         r1, [r0, #0x17]
    //     0x420e54: add          r1, r1, HEAP, lsl #32
    // 0x420e58: CheckStackOverflow
    //     0x420e58: ldr          BARRIER, [THR, #0x38]
    //     0x420e5c: cmp          SP, BARRIER
    //     0x420e60: b.ls         0x420e78
    //     0x420e64: ldr          r2, [fp, #0x10]
    // 0x420e68: r0 = soul_flutter_international$biz$party$page_party_invite__PartyInvitePageState::_changeTab()
    //     0x420e68: bl           0x420e80
    // 0x420e6c: SP = fp
    //     0x420e6c: mov          SP, fp
    // 0x420e70: LeaveFrame
    //     0x420e70: ldp          fp, lr, [SP], #0x10
    // 0x420e74: ret
    //     0x420e74: ret          
    // 0x420e78: r0 = call 0x61fa28
    //     0x420e78: bl           0x61fa28
    // 0x420e7c: b 0x420e64
    //     0x420e7c: b            0x420e64
  }

  _changeTab() {
    // ** addr: 0x420e80, size: 0x64
    // 0x420e80: EnterFrame
    //     0x420e80: stp          fp, lr, [SP, #-0x10]!
    //     0x420e84: mov          fp, SP
    // 0x420e88: CheckStackOverflow
    //     0x420e88: ldr          BARRIER, [THR, #0x38]
    //     0x420e8c: cmp          SP, BARRIER
    //     0x420e90: b.ls         0x420ed0
    // 0x420e94: LoadField: r0 = r1->field_27
    //     0x420e94: ldur         r0, [r1, #0x27]
    //     0x420e98: add          r0, r0, HEAP, lsl #32
    // 0x420e9c: BARRIER = pp[0x40]
    //     0x420e9c: ldr          BARRIER, [PP, #0x40]
    //     0x420ea0: cmp          r0, r16
    // 0x420ea4: b.eq 0x420ed8
    //     0x420ea4: b.eq         0x420ed8
    //     0x420ea8: sbfx         r1, r2, #1, #0x1f
    // 0x420eac: branchIfSmi(r2, 0x420eb4)
    //     0x420eac: tbz          r2, #0, 0x420eb4
    // 0x420eb0: LoadField: r1 = r2->field_7
    //     0x420eb0: ldur         r1, [r2, #7]
    // 0x420eb4: r2 = r1
    //     0x420eb4: mov          r2, r1
    // 0x420eb8: r1 = r0
    //     0x420eb8: mov          r1, r0
    // 0x420ebc: r0 = flutter$src$widgets$page_view_PageController::jumpToPage()
    //     0x420ebc: bl           0x3cfd4c
    // 0x420ec0: r0 = NULL
    //     0x420ec0: mov          r0, NULL
    // 0x420ec4: SP = fp
    //     0x420ec4: mov          SP, fp
    // 0x420ec8: LeaveFrame
    //     0x420ec8: ldp          fp, lr, [SP], #0x10
    // 0x420ecc: ret
    //     0x420ecc: ret          
    // 0x420ed0: r0 = call 0x61fa28
    //     0x420ed0: bl           0x61fa28
    // 0x420ed4: b 0x420e94
    //     0x420ed4: b            0x420e94
    // 0x420ed8: r9 = pp[0x7c1]
    //     0x420ed8: add          r9, PP, #0x11, lsl #12
    //     0x420edc: ldr          r9, [r9, #0x7b0]
    // 0x420ee0: r0 = call 0x620258
    //     0x420ee0: bl           0x620258
  }

  _anon_closure() {
    // ** addr: 0x420ee4, size: 0x20
    // 0x420ee4: EnterFrame
    //     0x420ee4: stp          fp, lr, [SP, #-0x10]!
    //     0x420ee8: mov          fp, SP
    // 0x420eec: r0 = call 0x42122c
    //     0x420eec: bl           0x42122c
    //     0x420ef0: ldr          r1, [fp, #0x10]
    // 0x420ef4: StoreField: r0->field_b = r1
    //     0x420ef4: stur         r1, [r0, #0xb]
    // 0x420ef8: SP = fp
    //     0x420ef8: mov          SP, fp
    // 0x420efc: LeaveFrame
    //     0x420efc: ldp          fp, lr, [SP], #0x10
    // 0x420f00: ret
    //     0x420f00: ret          
  }

  dispose() {
    // ** addr: 0x4511a8, size: 0x8c
    // 0x4511a8: EnterFrame
    //     0x4511a8: stp          fp, lr, [SP, #-0x10]!
    //     0x4511ac: mov          fp, SP
    // 0x4511b0: AllocStack(8)
    //     0x4511b0: sub          SP, SP, #8
    // 0x4511b4: r0 = r1
    //     0x4511b4: mov          r0, r1
    //     0x4511b8: stur         r1, [fp, #-8]
    // 0x4511bc: CheckStackOverflow
    //     0x4511bc: ldr          BARRIER, [THR, #0x38]
    //     0x4511c0: cmp          SP, BARRIER
    //     0x4511c4: b.ls         0x451214
    // 0x4511c8: LoadField: r1 = r0->field_27
    //     0x4511c8: ldur         r1, [r0, #0x27]
    //     0x4511cc: add          r1, r1, HEAP, lsl #32
    // 0x4511d0: BARRIER = pp[0x40]
    //     0x4511d0: ldr          BARRIER, [PP, #0x40]
    //     0x4511d4: cmp          r1, r16
    // 0x4511d8: b.eq 0x45121c
    //     0x4511d8: b.eq         0x45121c
    // 0x4511dc: r0 = flutter$src$widgets$scroll_controller_ScrollController::dispose()
    //     0x4511dc: bl           0x45a380
    //     0x4511e0: ldur         r0, [fp, #-8]
    // 0x4511e4: LoadField: r1 = r0->field_23
    //     0x4511e4: ldur         r1, [r0, #0x23]
    //     0x4511e8: add          r1, r1, HEAP, lsl #32
    // 0x4511ec: BARRIER = pp[0x40]
    //     0x4511ec: ldr          BARRIER, [PP, #0x40]
    //     0x4511f0: cmp          r1, r16
    // 0x4511f4: b.eq 0x451228
    //     0x4511f4: b.eq         0x451228
    // 0x4511f8: r0 = flutter$src$material$tab_controller_TabController::dispose()
    //     0x4511f8: bl           0x45a240
    //     0x4511fc: ldur         r1, [fp, #-8]
    // 0x451200: r0 = soul_flutter_international$biz$party$page_party_invite___PartyInvitePageState&SoulState&TickerProviderStateMixin::dispose()
    //     0x451200: bl           0x451234
    // 0x451204: r0 = NULL
    //     0x451204: mov          r0, NULL
    // 0x451208: SP = fp
    //     0x451208: mov          SP, fp
    // 0x45120c: LeaveFrame
    //     0x45120c: ldp          fp, lr, [SP], #0x10
    // 0x451210: ret
    //     0x451210: ret          
    // 0x451214: r0 = call 0x61fa28
    //     0x451214: bl           0x61fa28
    // 0x451218: b 0x4511c8
    //     0x451218: b            0x4511c8
    // 0x45121c: r9 = pp[0x7c1]
    //     0x45121c: add          r9, PP, #0x11, lsl #12
    //     0x451220: ldr          r9, [r9, #0x7b0]
    // 0x451224: r0 = call 0x620258
    //     0x451224: bl           0x620258
    // 0x451228: r9 = pp[0x7b9]
    //     0x451228: add          r9, PP, #0x11, lsl #12
    //     0x45122c: ldr          r9, [r9, #0x7a8]
    // 0x451230: r0 = call 0x620258
    //     0x451230: bl           0x620258
  }

  onPageShow() {
    // ** addr: 0x4a9eb4, size: 0x40
    // 0x4a9eb4: EnterFrame
    //     0x4a9eb4: stp          fp, lr, [SP, #-0x10]!
    //     0x4a9eb8: mov          fp, SP
    // 0x4a9ebc: CheckStackOverflow
    //     0x4a9ebc: ldr          BARRIER, [THR, #0x38]
    //     0x4a9ec0: cmp          SP, BARRIER
    //     0x4a9ec4: b.ls         0x4a9eec
    // 0x4a9ec8: r0 = soul_flutter_international$common$base$soul_state_SoulState::onPageShow()
    //     0x4a9ec8: bl           0x4aa6c4
    // 0x4a9ecc: r1 = pp[0xc7f]
    //     0x4a9ecc: add          r1, PP, #0x17, lsl #12
    //     0x4a9ed0: ldr          r1, [r1, #0xc68]
    // 0x4a9ed4: r4 = pp[0x4c0]
    //     0x4a9ed4: ldr          r4, [PP, #0x4c0]
    // 0x4a9ed8: r0 = soul_flutter_international$common$plugins$event_track_EventTrack::eventPv()
    //     0x4a9ed8: bl           0x4a9e38
    // 0x4a9edc: r0 = NULL
    //     0x4a9edc: mov          r0, NULL
    // 0x4a9ee0: SP = fp
    //     0x4a9ee0: mov          SP, fp
    // 0x4a9ee4: LeaveFrame
    //     0x4a9ee4: ldp          fp, lr, [SP], #0x10
    // 0x4a9ee8: ret
    //     0x4a9ee8: ret          
    // 0x4a9eec: r0 = call 0x61fa28
    //     0x4a9eec: bl           0x61fa28
    // 0x4a9ef0: b 0x4a9ec8
    //     0x4a9ef0: b            0x4a9ec8
  }

  ctor() {
    // ** addr: 0x4c3e00, size: 0x140
    // 0x4c3e00: EnterFrame
    //     0x4c3e00: stp          fp, lr, [SP, #-0x10]!
    //     0x4c3e04: mov          fp, SP
    // 0x4c3e08: AllocStack(0x30)
    //     0x4c3e08: sub          SP, SP, #0x30
    // 0x4c3e0c: r0 = pp[0x40]
    //     0x4c3e0c: ldr          r0, [PP, #0x40]
    // 0x4c3e10: r2 = r1
    //     0x4c3e10: mov          r2, r1
    //     0x4c3e14: stur         r1, [fp, #-8]
    // 0x4c3e18: CheckStackOverflow
    //     0x4c3e18: ldr          BARRIER, [THR, #0x38]
    //     0x4c3e1c: cmp          SP, BARRIER
    //     0x4c3e20: b.ls         0x4c3f38
    // 0x4c3e24: StoreField: r2->field_23 = r0
    //     0x4c3e24: stur         r0, [r2, #0x23]
    // 0x4c3e28: StoreField: r2->field_27 = r0
    //     0x4c3e28: stur         r0, [r2, #0x27]
    // 0x4c3e2c: StoreField: r2->field_2b = r0
    //     0x4c3e2c: stur         r0, [r2, #0x2b]
    // 0x4c3e30: r1 = pp[0x803]
    //     0x4c3e30: add          r1, PP, #0xb, lsl #12
    //     0x4c3e34: ldr          r1, [r1, #0x7f8]
    // 0x4c3e38: r4 = pp[0x4c0]
    //     0x4c3e38: ldr          r4, [PP, #0x4c0]
    // 0x4c3e3c: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4c3e3c: bl           0x3a1dcc
    // 0x4c3e40: r1 = pp[0x80b]
    //     0x4c3e40: add          r1, PP, #0xb, lsl #12
    //     0x4c3e44: ldr          r1, [r1, #0x800]
    //     0x4c3e48: stur         r0, [fp, #-0x10]
    // 0x4c3e4c: r4 = pp[0x4c0]
    //     0x4c3e4c: ldr          r4, [PP, #0x4c0]
    // 0x4c3e50: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4c3e50: bl           0x3a1dcc
    // 0x4c3e54: r1 = pp[0x813]
    //     0x4c3e54: add          r1, PP, #0xb, lsl #12
    //     0x4c3e58: ldr          r1, [r1, #0x808]
    //     0x4c3e5c: stur         r0, [fp, #-0x18]
    // 0x4c3e60: r4 = pp[0x4c0]
    //     0x4c3e60: ldr          r4, [PP, #0x4c0]
    // 0x4c3e64: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4c3e64: bl           0x3a1dcc
    // 0x4c3e68: r1 = pp[0x81b]
    //     0x4c3e68: add          r1, PP, #0xb, lsl #12
    //     0x4c3e6c: ldr          r1, [r1, #0x810]
    //     0x4c3e70: stur         r0, [fp, #-0x20]
    // 0x4c3e74: r4 = pp[0x4c0]
    //     0x4c3e74: ldr          r4, [PP, #0x4c0]
    // 0x4c3e78: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4c3e78: bl           0x3a1dcc
    // 0x4c3e7c: r1 = NULL
    //     0x4c3e7c: mov          r1, NULL
    //     0x4c3e80: mov          r2, #8
    //     0x4c3e84: stur         r0, [fp, #-0x28]
    // 0x4c3e88: r0 = call 0x61f920
    //     0x4c3e88: bl           0x61f920
    // 0x4c3e8c: r2 = r0
    //     0x4c3e8c: mov          r2, r0
    //     0x4c3e90: ldur         r0, [fp, #-0x10]
    //     0x4c3e94: stur         r2, [fp, #-0x30]
    // 0x4c3e98: StoreField: r2->field_f = r0
    //     0x4c3e98: stur         r0, [r2, #0xf]
    //     0x4c3e9c: ldur         r0, [fp, #-0x18]
    // 0x4c3ea0: StoreField: r2->field_13 = r0
    //     0x4c3ea0: stur         r0, [r2, #0x13]
    //     0x4c3ea4: ldur         r0, [fp, #-0x20]
    // 0x4c3ea8: ArrayStore: r2[0] = r0  ; List_8
    //     0x4c3ea8: stur         r0, [r2, #0x17]
    //     0x4c3eac: ldur         r0, [fp, #-0x28]
    // 0x4c3eb0: StoreField: r2->field_1b = r0
    //     0x4c3eb0: stur         r0, [r2, #0x1b]
    // 0x4c3eb4: r1 = pp[0x868]
    //     0x4c3eb4: ldr          r1, [PP, #0x868]
    // 0x4c3eb8: r0 = call 0x61e854
    //     0x4c3eb8: bl           0x61e854
    // 0x4c3ebc: r1 = r0
    //     0x4c3ebc: mov          r1, r0
    //     0x4c3ec0: ldur         r0, [fp, #-0x30]
    // 0x4c3ec4: StoreField: r1->field_f = r0
    //     0x4c3ec4: stur         r0, [r1, #0xf]
    //     0x4c3ec8: mov          r0, #8
    // 0x4c3ecc: StoreField: r1->field_b = r0
    //     0x4c3ecc: stur         r0, [r1, #0xb]
    // 0x4c3ed0: r0 = r1
    //     0x4c3ed0: mov          r0, r1
    //     0x4c3ed4: ldur         r1, [fp, #-8]
    // 0x4c3ed8: StoreField: r1->field_1b = r0
    //     0x4c3ed8: stur         r0, [r1, #0x1b]
    //     0x4c3edc: ldurb        r16, [r1, #-1]
    //     0x4c3ee0: ldurb        r17, [r0, #-1]
    //     0x4c3ee4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3ee8: tst          BARRIER, HEAP, lsr #32
    // 0x4c3eec: b.eq 0x4c3ef4
    //     0x4c3eec: b.eq         0x4c3ef4
    // 0x4c3ef0: r0 = call 0x61e04c
    //     0x4c3ef0: bl           0x61e04c
    // 0x4c3ef4: r0 = call 0x4c4140
    //     0x4c3ef4: bl           0x4c4140
    // 0x4c3ef8: r1 = r0
    //     0x4c3ef8: mov          r1, r0
    //     0x4c3efc: stur         r0, [fp, #-0x10]
    // 0x4c3f00: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::ctor()
    //     0x4c3f00: bl           0x4c3f40
    //     0x4c3f04: ldur         r0, [fp, #-0x10]
    //     0x4c3f08: ldur         r1, [fp, #-8]
    // 0x4c3f0c: StoreField: r1->field_1f = r0
    //     0x4c3f0c: stur         r0, [r1, #0x1f]
    //     0x4c3f10: ldurb        r16, [r1, #-1]
    //     0x4c3f14: ldurb        r17, [r0, #-1]
    //     0x4c3f18: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c3f1c: tst          BARRIER, HEAP, lsr #32
    // 0x4c3f20: b.eq 0x4c3f28
    //     0x4c3f20: b.eq         0x4c3f28
    // 0x4c3f24: r0 = call 0x61e04c
    //     0x4c3f24: bl           0x61e04c
    // 0x4c3f28: r0 = NULL
    //     0x4c3f28: mov          r0, NULL
    // 0x4c3f2c: SP = fp
    //     0x4c3f2c: mov          SP, fp
    // 0x4c3f30: LeaveFrame
    //     0x4c3f30: ldp          fp, lr, [SP], #0x10
    // 0x4c3f34: ret
    //     0x4c3f34: ret          
    // 0x4c3f38: r0 = call 0x61fa28
    //     0x4c3f38: bl           0x61fa28
    // 0x4c3f3c: b 0x4c3e24
    //     0x4c3f3c: b            0x4c3e24
  }

  initState() {
    // ** addr: 0x4d41e8, size: 0x194
    // 0x4d41e8: EnterFrame
    //     0x4d41e8: stp          fp, lr, [SP, #-0x10]!
    //     0x4d41ec: mov          fp, SP
    // 0x4d41f0: AllocStack(0x18)
    //     0x4d41f0: sub          SP, SP, #0x18
    // 0x4d41f4: r3 = r1
    //     0x4d41f4: mov          r3, r1
    //     0x4d41f8: stur         r1, [fp, #-8]
    // 0x4d41fc: CheckStackOverflow
    //     0x4d41fc: ldr          BARRIER, [THR, #0x38]
    //     0x4d4200: cmp          SP, BARRIER
    //     0x4d4204: b.ls         0x4d4370
    // 0x4d4208: LoadField: r0 = r3->field_b
    //     0x4d4208: ldur         r0, [r3, #0xb]
    //     0x4d420c: add          r0, r0, HEAP, lsl #32
    //     0x4d4210: cmp          r0, r22
    // 0x4d4214: b.eq 0x4d4378
    //     0x4d4214: b.eq         0x4d4378
    // 0x4d4218: LoadField: r1 = r0->field_b
    //     0x4d4218: ldur         r1, [r0, #0xb]
    //     0x4d421c: add          r1, r1, HEAP, lsl #32
    //     0x4d4220: cmp          r1, r22
    // 0x4d4224: b.ne 0x4d4230
    //     0x4d4224: b.ne         0x4d4230
    // 0x4d4228: r0 = NULL
    //     0x4d4228: mov          r0, NULL
    // 0x4d422c: b 0x4d424c
    //     0x4d422c: b            0x4d424c
    // 0x4d4230: r0 = LoadClassIdInstr(r1)
    //     0x4d4230: ldur         r0, [r1, #-1]
    //     0x4d4234: ubfx         r0, r0, #0xc, #0x14
    // 0x4d4238: r2 = pp[0xd58]
    //     0x4d4238: add          r2, PP, #0x10, lsl #12
    //     0x4d423c: ldr          r2, [r2, #0xd48]
    //     0x4d4240: sub          lr, r0, #1, lsl #12
    //     0x4d4244: ldr          lr, [r21, lr, lsl #3]
    // 0x4d4248: r0 = [R]()
    //     0x4d4248: blr          lr
    //     0x4d424c: cmp          r0, r22
    // 0x4d4250: b.ne 0x4d425c
    //     0x4d4250: b.ne         0x4d425c
    // 0x4d4254: r4 = pp[0x148]
    //     0x4d4254: ldr          r4, [PP, #0x148]
    // 0x4d4258: b 0x4d4260
    //     0x4d4258: b            0x4d4260
    // 0x4d425c: r4 = r0
    //     0x4d425c: mov          r4, r0
    //     0x4d4260: ldur         r3, [fp, #-8]
    // 0x4d4264: r0 = r4
    //     0x4d4264: mov          r0, r4
    //     0x4d4268: stur         r4, [fp, #-0x10]
    // 0x4d426c: r2 = NULL
    //     0x4d426c: mov          r2, NULL
    // 0x4d4270: r1 = NULL
    //     0x4d4270: mov          r1, NULL
    //     0x4d4274: mov          r4, #0x3c
    // 0x4d4278: branchIfSmi(r0, 0x4d4284)
    //     0x4d4278: tbz          r0, #0, 0x4d4284
    // 0x4d427c: r4 = LoadClassIdInstr(r0)
    //     0x4d427c: ldur         r4, [r0, #-1]
    //     0x4d4280: ubfx         r4, r4, #0xc, #0x14
    //     0x4d4284: sub          r4, r4, #0x5e
    //     0x4d4288: cmp          r4, #1
    // 0x4d428c: b.ls 0x4d42a0
    //     0x4d428c: b.ls         0x4d42a0
    // 0x4d4290: r8 = pp[0x2f8]
    //     0x4d4290: ldr          r8, [PP, #0x2f8]
    // 0x4d4294: r3 = pp[0x7c9]
    //     0x4d4294: add          r3, PP, #0x11, lsl #12
    //     0x4d4298: ldr          r3, [r3, #0x7b8]
    // 0x4d429c: r0 = call 0x62a0c0
    //     0x4d429c: bl           0x62a0c0
    //     0x4d42a0: ldur         r0, [fp, #-0x10]
    //     0x4d42a4: ldur         r3, [fp, #-8]
    // 0x4d42a8: StoreField: r3->field_2b = r0
    //     0x4d42a8: stur         r0, [r3, #0x2b]
    //     0x4d42ac: ldurb        r16, [r3, #-1]
    //     0x4d42b0: ldurb        r17, [r0, #-1]
    //     0x4d42b4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d42b8: tst          BARRIER, HEAP, lsr #32
    // 0x4d42bc: b.eq 0x4d42c4
    //     0x4d42bc: b.eq         0x4d42c4
    // 0x4d42c0: r0 = call 0x61e08c
    //     0x4d42c0: bl           0x61e08c
    // 0x4d42c4: LoadField: r0 = r3->field_1b
    //     0x4d42c4: ldur         r0, [r3, #0x1b]
    //     0x4d42c8: add          r0, r0, HEAP, lsl #32
    // 0x4d42cc: LoadField: r1 = r0->field_b
    //     0x4d42cc: ldur         r1, [r0, #0xb]
    //     0x4d42d0: sbfx         r2, r1, #1, #0x1f
    //     0x4d42d4: stur         r2, [fp, #-0x18]
    // 0x4d42d8: r0 = call 0x4d44d0
    //     0x4d42d8: bl           0x4d44d0
    // 0x4d42dc: r1 = r0
    //     0x4d42dc: mov          r1, r0
    //     0x4d42e0: ldur         r2, [fp, #-0x18]
    //     0x4d42e4: ldur         r3, [fp, #-8]
    //     0x4d42e8: stur         r0, [fp, #-0x10]
    // 0x4d42ec: r4 = pp[0x2e0]
    //     0x4d42ec: ldr          r4, [PP, #0x2e0]
    // 0x4d42f0: r0 = flutter$src$material$tab_controller_TabController::ctor()
    //     0x4d42f0: bl           0x4d437c
    //     0x4d42f4: ldur         r0, [fp, #-0x10]
    //     0x4d42f8: ldur         r1, [fp, #-8]
    // 0x4d42fc: StoreField: r1->field_23 = r0
    //     0x4d42fc: stur         r0, [r1, #0x23]
    //     0x4d4300: ldurb        r16, [r1, #-1]
    //     0x4d4304: ldurb        r17, [r0, #-1]
    //     0x4d4308: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d430c: tst          BARRIER, HEAP, lsr #32
    // 0x4d4310: b.eq 0x4d4318
    //     0x4d4310: b.eq         0x4d4318
    // 0x4d4314: r0 = call 0x61e04c
    //     0x4d4314: bl           0x61e04c
    // 0x4d4318: r0 = call 0x3cff08
    //     0x4d4318: bl           0x3cff08
    //     0x4d431c: stur         r0, [fp, #-0x10]
    // 0x4d4320: StoreField: r0->field_3f = xzr
    //     0x4d4320: stur         xzr, [r0, #0x3f]
    //     0x4d4324: add          r1, NULL, #0x20
    // 0x4d4328: StoreField: r0->field_47 = r1
    //     0x4d4328: stur         r1, [r0, #0x47]
    //     0x4d432c: fmov         d0, #1.00000000
    // 0x4d4330: StoreField: r0->field_4b = d0
    //     0x4d4330: stur         d0, [r0, #0x4b]
    // 0x4d4334: r1 = r0
    //     0x4d4334: mov          r1, r0
    // 0x4d4338: r0 = flutter$src$widgets$scroll_controller_ScrollController::ctor()
    //     0x4d4338: bl           0x317954
    //     0x4d433c: ldur         r0, [fp, #-0x10]
    //     0x4d4340: ldur         r1, [fp, #-8]
    // 0x4d4344: StoreField: r1->field_27 = r0
    //     0x4d4344: stur         r0, [r1, #0x27]
    //     0x4d4348: ldurb        r16, [r1, #-1]
    //     0x4d434c: ldurb        r17, [r0, #-1]
    //     0x4d4350: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d4354: tst          BARRIER, HEAP, lsr #32
    // 0x4d4358: b.eq 0x4d4360
    //     0x4d4358: b.eq         0x4d4360
    // 0x4d435c: r0 = call 0x61e04c
    //     0x4d435c: bl           0x61e04c
    // 0x4d4360: r0 = NULL
    //     0x4d4360: mov          r0, NULL
    // 0x4d4364: SP = fp
    //     0x4d4364: mov          SP, fp
    // 0x4d4368: LeaveFrame
    //     0x4d4368: ldp          fp, lr, [SP], #0x10
    // 0x4d436c: ret
    //     0x4d436c: ret          
    // 0x4d4370: r0 = call 0x61fa28
    //     0x4d4370: bl           0x61fa28
    // 0x4d4374: b 0x4d4208
    //     0x4d4374: b            0x4d4208
    // 0x4d4378: r0 = call 0x61ffd0
    //     0x4d4378: bl           0x61ffd0
  }

  build() {
    // ** addr: 0x421238, size: 0x47c
    // 0x421238: EnterFrame
    //     0x421238: stp          fp, lr, [SP, #-0x10]!
    //     0x42123c: mov          fp, SP
    // 0x421240: AllocStack(0x68)
    //     0x421240: sub          SP, SP, #0x68
    //     0x421244: stur         r1, [fp, #-8]
    //     0x421248: stur         r2, [fp, #-0x10]
    // 0x42124c: CheckStackOverflow
    //     0x42124c: ldr          BARRIER, [THR, #0x38]
    //     0x421250: cmp          SP, BARRIER
    //     0x421254: b.ls         0x42169c
    //     0x421258: mov          r1, #3
    // 0x42125c: r0 = call 0x61e890
    //     0x42125c: bl           0x61e890
    // 0x421260: r3 = r0
    //     0x421260: mov          r3, r0
    //     0x421264: ldur         r0, [fp, #-8]
    //     0x421268: stur         r3, [fp, #-0x18]
    // 0x42126c: StoreField: r3->field_f = r0
    //     0x42126c: stur         r0, [r3, #0xf]
    // 0x421270: r1 = r0
    //     0x421270: mov          r1, r0
    //     0x421274: ldur         r2, [fp, #-0x10]
    // 0x421278: r0 = soul_flutter_international$biz$party$page_party_invite___InviteUserPageState&SoulState&AutomaticKeepAliveClientMixin::build()
    //     0x421278: bl           0x422754
    //     0x42127c: ldur         r2, [fp, #-8]
    // 0x421280: LoadField: r3 = r2->field_b
    //     0x421280: ldur         r3, [r2, #0xb]
    //     0x421284: add          r3, r3, HEAP, lsl #32
    //     0x421288: cmp          r3, r22
    // 0x42128c: b.eq 0x4216a4
    //     0x42128c: b.eq         0x4216a4
    // 0x421290: LoadField: r4 = r3->field_b
    //     0x421290: ldur         r4, [r3, #0xb]
    //     0x421294: stur         r4, [fp, #-0x20]
    //     0x421298: sbfiz        r0, r4, #1, #0x1f
    //     0x42129c: cmp          r4, r0, asr #1
    // 0x4212a0: b.eq 0x4212ac
    //     0x4212a0: b.eq         0x4212ac
    // 0x4212a4: r0 = call 0x61fba8
    //     0x4212a4: bl           0x61fba8
    // 0x4212a8: StoreField: r0->field_7 = r4
    //     0x4212a8: stur         r4, [r0, #7]
    //     0x4212ac: ldur         r1, [fp, #-0x18]
    // 0x4212b0: StoreField: r1->field_13 = r0
    //     0x4212b0: stur         r0, [r1, #0x13]
    // 0x4212b4: branchIfSmi(r0, 0x4212d0)
    //     0x4212b4: tbz          r0, #0, 0x4212d0
    //     0x4212b8: ldurb        r16, [r1, #-1]
    //     0x4212bc: ldurb        r17, [r0, #-1]
    //     0x4212c0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4212c4: tst          BARRIER, HEAP, lsr #32
    // 0x4212c8: b.eq 0x4212d0
    //     0x4212c8: b.eq         0x4212d0
    // 0x4212cc: r0 = call 0x61e04c
    //     0x4212cc: bl           0x61e04c
    // 0x4212d0: LoadField: r5 = r3->field_13
    //     0x4212d0: ldur         r5, [r3, #0x13]
    //     0x4212d4: add          r5, r5, HEAP, lsl #32
    // 0x4212d8: r0 = r5
    //     0x4212d8: mov          r0, r5
    //     0x4212dc: stur         r5, [fp, #-0x10]
    // 0x4212e0: ArrayStore: r1[0] = r0  ; List_8
    //     0x4212e0: stur         r0, [r1, #0x17]
    //     0x4212e4: ldurb        r16, [r1, #-1]
    //     0x4212e8: ldurb        r17, [r0, #-1]
    //     0x4212ec: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4212f0: tst          BARRIER, HEAP, lsr #32
    // 0x4212f4: b.eq 0x4212fc
    //     0x4212f4: b.eq         0x4212fc
    // 0x4212f8: r0 = call 0x61e04c
    //     0x4212f8: bl           0x61e04c
    // 0x4212fc: r0 = call 0x391a04
    //     0x4212fc: bl           0x391a04
    // 0x421300: r1 = r0
    //     0x421300: mov          r1, r0
    //     0x421304: stur         r0, [fp, #-0x28]
    // 0x421308: r4 = pp[0x4c0]
    //     0x421308: ldr          r4, [PP, #0x4c0]
    // 0x42130c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x42130c: bl           0x391490
    //     0x421310: ldur         r3, [fp, #-0x20]
    //     0x421314: cbnz         r3, 0x421328
    //     0x421318: ldur         r4, [fp, #-0x10]
    // 0x42131c: LoadField: r0 = r4->field_43
    //     0x42131c: ldur         r0, [r4, #0x43]
    //     0x421320: add          r0, r0, HEAP, lsl #32
    // 0x421324: b 0x421370
    //     0x421324: b            0x421370
    //     0x421328: ldur         r4, [fp, #-0x10]
    //     0x42132c: cmp          r3, #1
    // 0x421330: b.ne 0x421340
    //     0x421330: b.ne         0x421340
    // 0x421334: LoadField: r0 = r4->field_47
    //     0x421334: ldur         r0, [r4, #0x47]
    //     0x421338: add          r0, r0, HEAP, lsl #32
    // 0x42133c: b 0x421370
    //     0x42133c: b            0x421370
    //     0x421340: cmp          r3, #2
    // 0x421344: b.ne 0x421354
    //     0x421344: b.ne         0x421354
    // 0x421348: LoadField: r0 = r4->field_4b
    //     0x421348: ldur         r0, [r4, #0x4b]
    //     0x42134c: add          r0, r0, HEAP, lsl #32
    // 0x421350: b 0x421370
    //     0x421350: b            0x421370
    //     0x421354: cmp          r3, #3
    // 0x421358: b.ne 0x421368
    //     0x421358: b.ne         0x421368
    // 0x42135c: LoadField: r0 = r4->field_4f
    //     0x42135c: ldur         r0, [r4, #0x4f]
    //     0x421360: add          r0, r0, HEAP, lsl #32
    // 0x421364: b 0x421370
    //     0x421364: b            0x421370
    // 0x421368: r0 = pp[0xd1c]
    //     0x421368: add          r0, PP, #0x14, lsl #12
    //     0x42136c: ldr          r0, [r0, #0xd08]
    // 0x421370: LoadField: r2 = r0->field_7
    //     0x421370: ldur         r2, [r0, #7]
    //     0x421374: cmp          r2, #0
    // 0x421378: b.gt 0x4213a8
    //     0x421378: b.gt         0x4213a8
    // 0x42137c: r0 = call 0x391c0c
    //     0x42137c: bl           0x391c0c
    // 0x421380: r1 = r0
    //     0x421380: mov          r1, r0
    // 0x421384: r0 = pp[0xe90]
    //     0x421384: add          r0, PP, #0x10, lsl #12
    //     0x421388: ldr          r0, [r0, #0xe80]
    //     0x42138c: stur         r1, [fp, #-0x30]
    // 0x421390: StoreField: r1->field_f = r0
    //     0x421390: stur         r0, [r1, #0xf]
    // 0x421394: r0 = call 0x3b3c18
    //     0x421394: bl           0x3b3c18
    // 0x421398: r1 = r0
    //     0x421398: mov          r1, r0
    //     0x42139c: ldur         r0, [fp, #-0x30]
    // 0x4213a0: StoreField: r0->field_b = r1
    //     0x4213a0: stur         r1, [r0, #0xb]
    // 0x4213a4: b 0x421650
    //     0x4213a4: b            0x421650
    //     0x4213a8: sbfiz        r0, r2, #1, #0x1f
    //     0x4213ac: cmp          r2, r0, asr #1
    // 0x4213b0: b.eq 0x4213bc
    //     0x4213b0: b.eq         0x4213bc
    // 0x4213b4: r0 = call 0x61fba8
    //     0x4213b4: bl           0x61fba8
    // 0x4213b8: StoreField: r0->field_7 = r2
    //     0x4213b8: stur         r2, [r0, #7]
    //     0x4213bc: cmp          r0, #2
    // 0x4213c0: b.ne 0x42164c
    //     0x4213c0: b.ne         0x42164c
    // 0x4213c4: r1 = r4
    //     0x4213c4: mov          r1, r4
    // 0x4213c8: r2 = r3
    //     0x4213c8: mov          r2, r3
    // 0x4213cc: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::getItemsWithIndex()
    //     0x4213cc: bl           0x4226b0
    // 0x4213d0: LoadField: r1 = r0->field_b
    //     0x4213d0: ldur         r1, [r0, #0xb]
    //     0x4213d4: cbnz         r1, 0x421584
    // 0x4213d8: r0 = call 0x2b8e80
    //     0x4213d8: bl           0x2b8e80
    // 0x4213dc: d0 = pp[0xb90]
    //     0x4213dc: ldr          d0, [PP, #0xb90]
    //     0x4213e0: stur         r0, [fp, #-0x30]
    // 0x4213e4: StoreField: r0->field_7 = d0
    //     0x4213e4: stur         d0, [r0, #7]
    // 0x4213e8: StoreField: r0->field_f = d0
    //     0x4213e8: stur         d0, [r0, #0xf]
    // 0x4213ec: ArrayStore: r0[0] = d0  ; List_8
    //     0x4213ec: stur         d0, [r0, #0x17]
    // 0x4213f0: StoreField: r0->field_1f = d0
    //     0x4213f0: stur         d0, [r0, #0x1f]
    // 0x4213f4: r0 = call 0x3a142c
    //     0x4213f4: bl           0x3a142c
    // 0x4213f8: r1 = r0
    //     0x4213f8: mov          r1, r0
    // 0x4213fc: r0 = pp[0xd24]
    //     0x4213fc: add          r0, PP, #0x14, lsl #12
    //     0x421400: ldr          r0, [r0, #0xd10]
    //     0x421404: stur         r1, [fp, #-0x38]
    // 0x421408: StoreField: r1->field_b = r0
    //     0x421408: stur         r0, [r1, #0xb]
    // 0x42140c: r0 = pp[0xb56]
    //     0x42140c: add          r0, PP, #0xe, lsl #12
    //     0x421410: ldr          r0, [r0, #0xb48]
    // 0x421414: StoreField: r1->field_f = r0
    //     0x421414: stur         r0, [r1, #0xf]
    // 0x421418: r0 = pp[0x5458]
    //     0x421418: ldr          r0, [PP, #0x5458]
    // 0x42141c: StoreField: r1->field_13 = r0
    //     0x42141c: stur         r0, [r1, #0x13]
    // 0x421420: r0 = pp[0x3a9]
    //     0x421420: add          r0, PP, #0x11, lsl #12
    //     0x421424: ldr          r0, [r0, #0x398]
    // 0x421428: StoreField: r1->field_1b = r0
    //     0x421428: stur         r0, [r1, #0x1b]
    // 0x42142c: r0 = call 0x391c0c
    //     0x42142c: bl           0x391c0c
    // 0x421430: r3 = r0
    //     0x421430: mov          r3, r0
    // 0x421434: r0 = pp[0xd2c]
    //     0x421434: add          r0, PP, #0x14, lsl #12
    //     0x421438: ldr          r0, [r0, #0xd18]
    //     0x42143c: stur         r3, [fp, #-0x40]
    // 0x421440: StoreField: r3->field_f = r0
    //     0x421440: stur         r0, [r3, #0xf]
    //     0x421444: ldur         r0, [fp, #-0x38]
    // 0x421448: StoreField: r3->field_b = r0
    //     0x421448: stur         r0, [r3, #0xb]
    //     0x42144c: ldur         r1, [fp, #-0x10]
    //     0x421450: ldur         r2, [fp, #-0x20]
    // 0x421454: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::getEmptyTipsWithIndex()
    //     0x421454: bl           0x4225f8
    //     0x421458: stur         r0, [fp, #-0x38]
    // 0x42145c: r0 = soul_flutter_international$res$colors_SOColors::get_s_05()
    //     0x42145c: bl           0x3a6088
    // 0x421460: r1 = r0
    //     0x421460: mov          r1, r0
    // 0x421464: r0 = soul_flutter_international$res$styles_TextStyles::commonContent()
    //     0x421464: bl           0x3b7e50
    //     0x421468: stur         r0, [fp, #-0x48]
    // 0x42146c: r0 = call 0x393bf8
    //     0x42146c: bl           0x393bf8
    // 0x421470: r1 = r0
    //     0x421470: mov          r1, r0
    //     0x421474: ldur         r0, [fp, #-0x38]
    //     0x421478: stur         r1, [fp, #-0x50]
    // 0x42147c: StoreField: r1->field_b = r0
    //     0x42147c: stur         r0, [r1, #0xb]
    //     0x421480: ldur         r0, [fp, #-0x48]
    // 0x421484: StoreField: r1->field_13 = r0
    //     0x421484: stur         r0, [r1, #0x13]
    // 0x421488: r0 = call 0x391c0c
    //     0x421488: bl           0x391c0c
    // 0x42148c: r3 = r0
    //     0x42148c: mov          r3, r0
    // 0x421490: r0 = pp[0xd9]
    //     0x421490: add          r0, PP, #0x11, lsl #12
    //     0x421494: ldr          r0, [r0, #0xc8]
    //     0x421498: stur         r3, [fp, #-0x38]
    // 0x42149c: StoreField: r3->field_f = r0
    //     0x42149c: stur         r0, [r3, #0xf]
    //     0x4214a0: ldur         r0, [fp, #-0x50]
    // 0x4214a4: StoreField: r3->field_b = r0
    //     0x4214a4: stur         r0, [r3, #0xb]
    // 0x4214a8: r1 = NULL
    //     0x4214a8: mov          r1, NULL
    //     0x4214ac: mov          r2, #4
    // 0x4214b0: r0 = call 0x61f920
    //     0x4214b0: bl           0x61f920
    // 0x4214b4: r2 = r0
    //     0x4214b4: mov          r2, r0
    //     0x4214b8: ldur         r0, [fp, #-0x40]
    //     0x4214bc: stur         r2, [fp, #-0x48]
    // 0x4214c0: StoreField: r2->field_f = r0
    //     0x4214c0: stur         r0, [r2, #0xf]
    //     0x4214c4: ldur         r0, [fp, #-0x38]
    // 0x4214c8: StoreField: r2->field_13 = r0
    //     0x4214c8: stur         r0, [r2, #0x13]
    // 0x4214cc: r1 = pp[0x5c58]
    //     0x4214cc: ldr          r1, [PP, #0x5c58]
    // 0x4214d0: r0 = call 0x61e854
    //     0x4214d0: bl           0x61e854
    // 0x4214d4: r1 = r0
    //     0x4214d4: mov          r1, r0
    //     0x4214d8: ldur         r0, [fp, #-0x48]
    //     0x4214dc: stur         r1, [fp, #-0x38]
    // 0x4214e0: StoreField: r1->field_f = r0
    //     0x4214e0: stur         r0, [r1, #0xf]
    //     0x4214e4: mov          r0, #4
    // 0x4214e8: StoreField: r1->field_b = r0
    //     0x4214e8: stur         r0, [r1, #0xb]
    // 0x4214ec: r0 = call 0x39310c
    //     0x4214ec: bl           0x39310c
    // 0x4214f0: r1 = r0
    //     0x4214f0: mov          r1, r0
    // 0x4214f4: r0 = pp[0x862]
    //     0x4214f4: add          r0, PP, #0xa, lsl #12
    //     0x4214f8: ldr          r0, [r0, #0x858]
    //     0x4214fc: stur         r1, [fp, #-0x40]
    // 0x421500: StoreField: r1->field_f = r0
    //     0x421500: stur         r0, [r1, #0xf]
    // 0x421504: r0 = pp[0xaee]
    //     0x421504: add          r0, PP, #0xe, lsl #12
    //     0x421508: ldr          r0, [r0, #0xae0]
    // 0x42150c: StoreField: r1->field_13 = r0
    //     0x42150c: stur         r0, [r1, #0x13]
    // 0x421510: r0 = pp[0xb16]
    //     0x421510: add          r0, PP, #0xe, lsl #12
    //     0x421514: ldr          r0, [r0, #0xb08]
    // 0x421518: ArrayStore: r1[0] = r0  ; List_8
    //     0x421518: stur         r0, [r1, #0x17]
    // 0x42151c: r0 = pp[0xb6e]
    //     0x42151c: add          r0, PP, #0xe, lsl #12
    //     0x421520: ldr          r0, [r0, #0xb60]
    // 0x421524: StoreField: r1->field_1b = r0
    //     0x421524: stur         r0, [r1, #0x1b]
    // 0x421528: r0 = pp[0xb06]
    //     0x421528: add          r0, PP, #0xe, lsl #12
    //     0x42152c: ldr          r0, [r0, #0xaf8]
    // 0x421530: StoreField: r1->field_23 = r0
    //     0x421530: stur         r0, [r1, #0x23]
    // 0x421534: r0 = pp[0xb2]
    //     0x421534: add          r0, PP, #0xa, lsl #12
    //     0x421538: ldr          r0, [r0, #0xa8]
    // 0x42153c: StoreField: r1->field_2b = r0
    //     0x42153c: stur         r0, [r1, #0x2b]
    // 0x421540: StoreField: r1->field_2f = xzr
    //     0x421540: stur         xzr, [r1, #0x2f]
    //     0x421544: ldur         r0, [fp, #-0x38]
    // 0x421548: StoreField: r1->field_b = r0
    //     0x421548: stur         r0, [r1, #0xb]
    // 0x42154c: r0 = call 0x391a04
    //     0x42154c: bl           0x391a04
    //     0x421550: stur         r0, [fp, #-0x38]
    //     0x421554: ldur         BARRIER, [fp, #-0x30]
    // 0x421558: lr = pp[0xaae]
    //     0x421558: add          lr, PP, #0xe, lsl #12
    //     0x42155c: ldr          lr, [lr, #0xaa0]
    //     0x421560: stp          lr, BARRIER, [SP, #8]
    //     0x421564: ldur         BARRIER, [fp, #-0x40]
    //     0x421568: str          BARRIER, [SP]
    // 0x42156c: r1 = r0
    //     0x42156c: mov          r1, r0
    // 0x421570: r4 = pp[0xd34]
    //     0x421570: add          r4, PP, #0x14, lsl #12
    //     0x421574: ldr          r4, [r4, #0xd20]
    // 0x421578: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x421578: bl           0x391490
    //     0x42157c: ldur         r0, [fp, #-0x38]
    // 0x421580: b 0x421650
    //     0x421580: b            0x421650
    //     0x421584: ldur         r0, [fp, #-8]
    // 0x421588: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x421588: ldur         r3, [r0, #0x17]
    //     0x42158c: add          r3, r3, HEAP, lsl #32
    // 0x421590: BARRIER = pp[0x40]
    //     0x421590: ldr          BARRIER, [PP, #0x40]
    //     0x421594: cmp          r3, r16
    // 0x421598: b.eq 0x4216a8
    //     0x421598: b.eq         0x4216a8
    //     0x42159c: stur         r3, [fp, #-0x30]
    // 0x4215a0: r1 = pp[0xd3c]
    //     0x4215a0: add          r1, PP, #0x14, lsl #12
    //     0x4215a4: ldr          r1, [r1, #0xd28]
    // 0x4215a8: r2 = NULL
    //     0x4215a8: mov          r2, NULL
    // 0x4215ac: r0 = call 0x61ec54
    //     0x4215ac: bl           0x61ec54
    //     0x4215b0: stur         r0, [fp, #-0x38]
    // 0x4215b4: r0 = call 0x3ab5b8
    //     0x4215b4: bl           0x3ab5b8
    // 0x4215b8: r4 = r0
    //     0x4215b8: mov          r4, r0
    //     0x4215bc: ldur         r0, [fp, #-0x38]
    //     0x4215c0: stur         r4, [fp, #-0x40]
    // 0x4215c4: StoreField: r4->field_1b = r0
    //     0x4215c4: stur         r0, [r4, #0x1b]
    // 0x4215c8: r0 = pp[0x8a7]
    //     0x4215c8: add          r0, PP, #0xf, lsl #12
    //     0x4215cc: ldr          r0, [r0, #0x898]
    // 0x4215d0: StoreField: r4->field_b = r0
    //     0x4215d0: stur         r0, [r4, #0xb]
    // 0x4215d4: d0 = pp[0x8af]
    //     0x4215d4: add          r17, PP, #0xf, lsl #12
    //     0x4215d8: ldr          d0, [r17, #0x8a0]
    // 0x4215dc: StoreField: r4->field_f = d0
    //     0x4215dc: stur         d0, [r4, #0xf]
    //     0x4215e0: ldur         r1, [fp, #-8]
    //     0x4215e4: ldur         r2, [fp, #-0x20]
    //     0x4215e8: ldur         r3, [fp, #-0x10]
    // 0x4215ec: r0 = soul_flutter_international$biz$party$page_party_invite__InviteUserPageState::_buildListView()
    //     0x4215ec: bl           0x4216b4
    //     0x4215f0: stur         r0, [fp, #-8]
    // 0x4215f4: r0 = call 0x3ab290
    //     0x4215f4: bl           0x3ab290
    // 0x4215f8: r3 = r0
    //     0x4215f8: mov          r3, r0
    //     0x4215fc: ldur         r0, [fp, #-0x30]
    //     0x421600: stur         r3, [fp, #-0x10]
    // 0x421604: StoreField: r3->field_2b = r0
    //     0x421604: stur         r0, [r3, #0x2b]
    //     0x421608: ldur         r0, [fp, #-8]
    // 0x42160c: StoreField: r3->field_b = r0
    //     0x42160c: stur         r0, [r3, #0xb]
    //     0x421610: ldur         r0, [fp, #-0x40]
    // 0x421614: StoreField: r3->field_f = r0
    //     0x421614: stur         r0, [r3, #0xf]
    //     0x421618: add          r0, NULL, #0x30
    // 0x42161c: StoreField: r3->field_1b = r0
    //     0x42161c: stur         r0, [r3, #0x1b]
    //     0x421620: add          r1, NULL, #0x20
    // 0x421624: StoreField: r3->field_13 = r1
    //     0x421624: stur         r1, [r3, #0x13]
    // 0x421628: ArrayStore: r3[0] = r0  ; List_8
    //     0x421628: stur         r0, [r3, #0x17]
    //     0x42162c: ldur         r2, [fp, #-0x18]
    // 0x421630: r1 = pp[0xd44]
    //     0x421630: add          r1, PP, #0x14, lsl #12
    //     0x421634: ldr          r1, [r1, #0xd30]
    // 0x421638: r0 = call 0x61ec54
    //     0x421638: bl           0x61ec54
    // 0x42163c: r1 = r0
    //     0x42163c: mov          r1, r0
    //     0x421640: ldur         r0, [fp, #-0x10]
    // 0x421644: StoreField: r0->field_23 = r1
    //     0x421644: stur         r1, [r0, #0x23]
    // 0x421648: b 0x421650
    //     0x421648: b            0x421650
    //     0x42164c: ldur         r0, [fp, #-0x28]
    //     0x421650: stur         r0, [fp, #-8]
    // 0x421654: r0 = soul_flutter_international$res$colors_SOColors::get_s_01()
    //     0x421654: bl           0x3b81fc
    //     0x421658: stur         r0, [fp, #-0x10]
    // 0x42165c: r0 = call 0x391a04
    //     0x42165c: bl           0x391a04
    //     0x421660: stur         r0, [fp, #-0x18]
    //     0x421664: ldur         BARRIER, [fp, #-0x10]
    // 0x421668: lr = pp[0xc78]
    //     0x421668: add          lr, PP, #0x10, lsl #12
    //     0x42166c: ldr          lr, [lr, #0xc68]
    //     0x421670: stp          lr, BARRIER, [SP, #8]
    //     0x421674: ldur         BARRIER, [fp, #-8]
    //     0x421678: str          BARRIER, [SP]
    // 0x42167c: r1 = r0
    //     0x42167c: mov          r1, r0
    // 0x421680: r4 = pp[0xd4c]
    //     0x421680: add          r4, PP, #0x14, lsl #12
    //     0x421684: ldr          r4, [r4, #0xd38]
    // 0x421688: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x421688: bl           0x391490
    //     0x42168c: ldur         r0, [fp, #-0x18]
    // 0x421690: SP = fp
    //     0x421690: mov          SP, fp
    // 0x421694: LeaveFrame
    //     0x421694: ldp          fp, lr, [SP], #0x10
    // 0x421698: ret
    //     0x421698: ret          
    // 0x42169c: r0 = call 0x61fa28
    //     0x42169c: bl           0x61fa28
    // 0x4216a0: b 0x421258
    //     0x4216a0: b            0x421258
    // 0x4216a4: r0 = call 0x61ffd0
    //     0x4216a4: bl           0x61ffd0
    // 0x4216a8: r9 = pp[0xd54]
    //     0x4216a8: add          r9, PP, #0x14, lsl #12
    //     0x4216ac: ldr          r9, [r9, #0xd40]
    // 0x4216b0: r0 = call 0x620258
    //     0x4216b0: bl           0x620258
  }

  _buildListView() {
    // ** addr: 0x4216b4, size: 0xf8
    // 0x4216b4: EnterFrame
    //     0x4216b4: stp          fp, lr, [SP, #-0x10]!
    //     0x4216b8: mov          fp, SP
    // 0x4216bc: AllocStack(0x28)
    //     0x4216bc: sub          SP, SP, #0x28
    //     0x4216c0: stur         r2, [fp, #-0x10]
    // 0x4216c4: BARRIER = r3
    //     0x4216c4: mov          BARRIER, r3
    // 0x4216c8: r3 = r2
    //     0x4216c8: mov          r3, r2
    // 0x4216cc: r2 = BARRIER
    //     0x4216cc: mov          r2, BARRIER
    //     0x4216d0: stur         r2, [fp, #-0x18]
    // 0x4216d4: CheckStackOverflow
    //     0x4216d4: ldr          BARRIER, [THR, #0x38]
    //     0x4216d8: cmp          SP, BARRIER
    //     0x4216dc: b.ls         0x4217a4
    //     0x4216e0: sbfiz        r0, r3, #1, #0x1f
    //     0x4216e4: cmp          r3, r0, asr #1
    // 0x4216e8: b.eq 0x4216f4
    //     0x4216e8: b.eq         0x4216f4
    // 0x4216ec: r0 = call 0x61fba8
    //     0x4216ec: bl           0x61fba8
    // 0x4216f0: StoreField: r0->field_7 = r3
    //     0x4216f0: stur         r3, [r0, #7]
    //     0x4216f4: stur         r0, [fp, #-8]
    //     0x4216f8: mov          r1, #3
    // 0x4216fc: r0 = call 0x61e890
    //     0x4216fc: bl           0x61e890
    // 0x421700: r3 = r0
    //     0x421700: mov          r3, r0
    //     0x421704: ldur         r0, [fp, #-8]
    //     0x421708: stur         r3, [fp, #-0x20]
    // 0x42170c: StoreField: r3->field_f = r0
    //     0x42170c: stur         r0, [r3, #0xf]
    //     0x421710: ldur         r1, [fp, #-0x18]
    // 0x421714: StoreField: r3->field_13 = r1
    //     0x421714: stur         r1, [r3, #0x13]
    //     0x421718: ldur         r2, [fp, #-0x10]
    // 0x42171c: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::getItemsWithIndex()
    //     0x42171c: bl           0x4226b0
    // 0x421720: r1 = r0
    //     0x421720: mov          r1, r0
    //     0x421724: ldur         r2, [fp, #-0x20]
    // 0x421728: ArrayStore: r2[0] = r0  ; List_8
    //     0x421728: stur         r0, [r2, #0x17]
    //     0x42172c: ldurb        r16, [r2, #-1]
    //     0x421730: ldurb        r17, [r0, #-1]
    //     0x421734: and          BARRIER, r17, BARRIER, lsr #2
    //     0x421738: tst          BARRIER, HEAP, lsr #32
    // 0x42173c: b.eq 0x421744
    //     0x42173c: b.eq         0x421744
    // 0x421740: r0 = call 0x61e06c
    //     0x421740: bl           0x61e06c
    // 0x421744: LoadField: r0 = r1->field_b
    //     0x421744: ldur         r0, [r1, #0xb]
    //     0x421748: sbfx         r3, r0, #1, #0x1f
    //     0x42174c: stur         r3, [fp, #-0x10]
    // 0x421750: r0 = call 0x419a30
    //     0x421750: bl           0x419a30
    //     0x421754: ldur         r2, [fp, #-0x20]
    // 0x421758: r1 = pp[0xf1c]
    //     0x421758: add          r1, PP, #0x14, lsl #12
    //     0x42175c: ldr          r1, [r1, #0xf08]
    //     0x421760: stur         r0, [fp, #-8]
    // 0x421764: r0 = call 0x61ec54
    //     0x421764: bl           0x61ec54
    //     0x421768: stur         r0, [fp, #-0x18]
    // 0x42176c: r0 = call 0x3ab5ac
    //     0x42176c: bl           0x3ab5ac
    //     0x421770: stur         r0, [fp, #-0x20]
    //     0x421774: ldur         BARRIER, [fp, #-8]
    //     0x421778: str          BARRIER, [SP]
    // 0x42177c: r1 = r0
    //     0x42177c: mov          r1, r0
    //     0x421780: ldur         r2, [fp, #-0x18]
    //     0x421784: ldur         r3, [fp, #-0x10]
    // 0x421788: r4 = pp[0xf24]
    //     0x421788: add          r4, PP, #0x14, lsl #12
    //     0x42178c: ldr          r4, [r4, #0xf10]
    // 0x421790: r0 = flutter$src$widgets$scroll_view_ListView::ctor_builder()
    //     0x421790: bl           0x3ab2bc
    //     0x421794: ldur         r0, [fp, #-0x20]
    // 0x421798: SP = fp
    //     0x421798: mov          SP, fp
    // 0x42179c: LeaveFrame
    //     0x42179c: ldp          fp, lr, [SP], #0x10
    // 0x4217a0: ret
    //     0x4217a0: ret          
    // 0x4217a4: r0 = call 0x61fa28
    //     0x4217a4: bl           0x61fa28
    // 0x4217a8: b 0x4216e0
    //     0x4217a8: b            0x4216e0
  }

  _anon_closure() {
    // ** addr: 0x4217ac, size: 0x778
    // 0x4217ac: EnterFrame
    //     0x4217ac: stp          fp, lr, [SP, #-0x10]!
    //     0x4217b0: mov          fp, SP
    // 0x4217b4: AllocStack(0x90)
    //     0x4217b4: sub          SP, SP, #0x90
    //     0x4217b8: ldr          r0, [fp, #0x20]
    // 0x4217bc: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4217bc: ldur         r1, [r0, #0x17]
    //     0x4217c0: add          r1, r1, HEAP, lsl #32
    //     0x4217c4: stur         r1, [fp, #-8]
    // 0x4217c8: CheckStackOverflow
    //     0x4217c8: ldr          BARRIER, [THR, #0x38]
    //     0x4217cc: cmp          SP, BARRIER
    //     0x4217d0: b.ls         0x421ec4
    //     0x4217d4: mov          r1, #1
    // 0x4217d8: r0 = call 0x61e890
    //     0x4217d8: bl           0x61e890
    // 0x4217dc: r5 = r0
    //     0x4217dc: mov          r5, r0
    //     0x4217e0: ldur         r4, [fp, #-8]
    //     0x4217e4: stur         r5, [fp, #-0x18]
    // 0x4217e8: StoreField: r5->field_b = r4
    //     0x4217e8: stur         r4, [r5, #0xb]
    // 0x4217ec: ArrayLoad: r2 = r4[0]  ; List_8
    //     0x4217ec: ldur         r2, [r4, #0x17]
    //     0x4217f0: add          r2, r2, HEAP, lsl #32
    // 0x4217f4: LoadField: r0 = r2->field_b
    //     0x4217f4: ldur         r0, [r2, #0xb]
    //     0x4217f8: ldr          r1, [fp, #0x10]
    //     0x4217fc: sbfx         r3, r1, #1, #0x1f
    // 0x421800: branchIfSmi(r1, 0x421808)
    //     0x421800: tbz          r1, #0, 0x421808
    // 0x421804: LoadField: r3 = r1->field_7
    //     0x421804: ldur         r3, [r1, #7]
    //     0x421808: sbfx         r1, r0, #1, #0x1f
    // 0x42180c: r0 = r1
    //     0x42180c: mov          r0, r1
    // 0x421810: r1 = r3
    //     0x421810: mov          r1, r3
    //     0x421814: cmp          r1, r0
    // 0x421818: b.hs 0x421ecc
    //     0x421818: b.hs         0x421ecc
    // 0x42181c: LoadField: r0 = r2->field_f
    //     0x42181c: ldur         r0, [r2, #0xf]
    //     0x421820: add          r0, r0, HEAP, lsl #32
    //     0x421824: add          BARRIER, r0, r3, lsl #2
    // 0x421828: LoadField: r6 = BARRIER->field_f
    //     0x421828: ldur         r6, [BARRIER, #0xf]
    //     0x42182c: add          r6, r6, HEAP, lsl #32
    //     0x421830: stur         r6, [fp, #-0x10]
    // 0x421834: StoreField: r5->field_f = r6
    //     0x421834: stur         r6, [r5, #0xf]
    // 0x421838: LoadField: r1 = r4->field_13
    //     0x421838: ldur         r1, [r4, #0x13]
    //     0x42183c: add          r1, r1, HEAP, lsl #32
    // 0x421840: LoadField: r0 = r4->field_f
    //     0x421840: ldur         r0, [r4, #0xf]
    //     0x421844: add          r0, r0, HEAP, lsl #32
    //     0x421848: sbfx         r2, r0, #1, #0x1f
    // 0x42184c: branchIfSmi(r0, 0x421854)
    //     0x42184c: tbz          r0, #0, 0x421854
    // 0x421850: LoadField: r2 = r0->field_7
    //     0x421850: ldur         r2, [r0, #7]
    // 0x421854: r3 = r6
    //     0x421854: mov          r3, r6
    // 0x421858: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::getItemFlag()
    //     0x421858: bl           0x422010
    // 0x42185c: r4 = r0
    //     0x42185c: mov          r4, r0
    //     0x421860: ldur         r0, [fp, #-8]
    //     0x421864: stur         r4, [fp, #-0x20]
    // 0x421868: LoadField: r1 = r0->field_13
    //     0x421868: ldur         r1, [r0, #0x13]
    //     0x42186c: add          r1, r1, HEAP, lsl #32
    // 0x421870: LoadField: r2 = r0->field_f
    //     0x421870: ldur         r2, [r0, #0xf]
    //     0x421874: add          r2, r2, HEAP, lsl #32
    //     0x421878: sbfx         r0, r2, #1, #0x1f
    // 0x42187c: branchIfSmi(r2, 0x421884)
    //     0x42187c: tbz          r2, #0, 0x421884
    // 0x421880: LoadField: r0 = r2->field_7
    //     0x421880: ldur         r0, [r2, #7]
    // 0x421884: r2 = r0
    //     0x421884: mov          r2, r0
    //     0x421888: ldur         r3, [fp, #-0x10]
    // 0x42188c: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::needFlagHighlight()
    //     0x42188c: bl           0x421f74
    //     0x421890: stur         r0, [fp, #-8]
    // 0x421894: r0 = soul_flutter_international$res$colors_SOColors::get_s_01()
    //     0x421894: bl           0x3b81fc
    // 0x421898: r1 = r0
    //     0x421898: mov          r1, r0
    //     0x42189c: ldur         r0, [fp, #-0x10]
    //     0x4218a0: stur         r1, [fp, #-0x38]
    // 0x4218a4: LoadField: r2 = r0->field_7
    //     0x4218a4: ldur         r2, [r0, #7]
    //     0x4218a8: add          r2, r2, HEAP, lsl #32
    // 0x4218ac: BARRIER = pp[0x40]
    //     0x4218ac: ldr          BARRIER, [PP, #0x40]
    //     0x4218b0: cmp          r2, r16
    // 0x4218b4: b.eq 0x421ed0
    //     0x4218b4: b.eq         0x421ed0
    // 0x4218b8: LoadField: r3 = r2->field_7
    //     0x4218b8: ldur         r3, [r2, #7]
    //     0x4218bc: add          r3, r3, HEAP, lsl #32
    // 0x4218c0: BARRIER = pp[0x40]
    //     0x4218c0: ldr          BARRIER, [PP, #0x40]
    //     0x4218c4: cmp          r3, r16
    // 0x4218c8: b.eq 0x421edc
    //     0x4218c8: b.eq         0x421edc
    // 0x4218cc: LoadField: r2 = r3->field_f
    //     0x4218cc: ldur         r2, [r3, #0xf]
    //     0x4218d0: add          r2, r2, HEAP, lsl #32
    // 0x4218d4: BARRIER = pp[0x40]
    //     0x4218d4: ldr          BARRIER, [PP, #0x40]
    //     0x4218d8: cmp          r2, r16
    // 0x4218dc: b.eq 0x421ee8
    //     0x4218dc: b.eq         0x421ee8
    //     0x4218e0: stur         r2, [fp, #-0x30]
    // 0x4218e4: LoadField: r4 = r3->field_13
    //     0x4218e4: ldur         r4, [r3, #0x13]
    //     0x4218e8: add          r4, r4, HEAP, lsl #32
    // 0x4218ec: BARRIER = pp[0x40]
    //     0x4218ec: ldr          BARRIER, [PP, #0x40]
    //     0x4218f0: cmp          r4, r16
    // 0x4218f4: b.eq 0x421ef4
    //     0x4218f4: b.eq         0x421ef4
    //     0x4218f8: stur         r4, [fp, #-0x28]
    // 0x4218fc: r0 = call 0x3a67fc
    //     0x4218fc: bl           0x3a67fc
    // 0x421900: r1 = r0
    //     0x421900: mov          r1, r0
    //     0x421904: ldur         r0, [fp, #-0x30]
    //     0x421908: stur         r1, [fp, #-0x40]
    // 0x42190c: StoreField: r1->field_b = r0
    //     0x42190c: stur         r0, [r1, #0xb]
    //     0x421910: ldur         r0, [fp, #-0x28]
    // 0x421914: StoreField: r1->field_f = r0
    //     0x421914: stur         r0, [r1, #0xf]
    // 0x421918: d0 = pp[0x891]
    //     0x421918: add          r17, PP, #0x11, lsl #12
    //     0x42191c: ldr          d0, [r17, #0x880]
    // 0x421920: StoreField: r1->field_13 = d0
    //     0x421920: stur         d0, [r1, #0x13]
    //     0x421924: add          r0, NULL, #0x20
    // 0x421928: StoreField: r1->field_1b = r0
    //     0x421928: stur         r0, [r1, #0x1b]
    // 0x42192c: r0 = call 0x391c0c
    //     0x42192c: bl           0x391c0c
    // 0x421930: r2 = r0
    //     0x421930: mov          r2, r0
    // 0x421934: r0 = pp[0xc5c]
    //     0x421934: add          r0, PP, #0x14, lsl #12
    //     0x421938: ldr          r0, [r0, #0xc48]
    //     0x42193c: stur         r2, [fp, #-0x28]
    // 0x421940: StoreField: r2->field_f = r0
    //     0x421940: stur         r0, [r2, #0xf]
    //     0x421944: ldur         r0, [fp, #-0x40]
    // 0x421948: StoreField: r2->field_b = r0
    //     0x421948: stur         r0, [r2, #0xb]
    //     0x42194c: ldr          r1, [fp, #0x18]
    // 0x421950: r4 = pp[0x4c0]
    //     0x421950: ldr          r4, [PP, #0x4c0]
    // 0x421954: r0 = flutter$src$widgets$media_query_MediaQuery::_of()
    //     0x421954: bl           0x30aef0
    // 0x421958: LoadField: r1 = r0->field_7
    //     0x421958: ldur         r1, [r0, #7]
    //     0x42195c: add          r1, r1, HEAP, lsl #32
    // 0x421960: LoadField: d0 = r1->field_7
    //     0x421960: ldur         d0, [r1, #7]
    // 0x421964: d1 = pp[0xf2c]
    //     0x421964: add          r17, PP, #0x14, lsl #12
    //     0x421968: ldr          d1, [r17, #0xf18]
    //     0x42196c: fsub         d2, d0, d1
    //     0x421970: stur         d2, [fp, #-0x60]
    // 0x421974: r0 = call 0x2b8e80
    //     0x421974: bl           0x2b8e80
    //     0x421978: stur         r0, [fp, #-0x40]
    // 0x42197c: StoreField: r0->field_7 = xzr
    //     0x42197c: stur         xzr, [r0, #7]
    //     0x421980: ldur         d0, [fp, #-0x60]
    // 0x421984: StoreField: r0->field_f = d0
    //     0x421984: stur         d0, [r0, #0xf]
    //     0x421988: fmov         d0, #19.00000000
    // 0x42198c: ArrayStore: r0[0] = d0  ; List_8
    //     0x42198c: stur         d0, [r0, #0x17]
    // 0x421990: d0 = pp[0xb90]
    //     0x421990: ldr          d0, [PP, #0xb90]
    // 0x421994: StoreField: r0->field_1f = d0
    //     0x421994: stur         d0, [r0, #0x1f]
    //     0x421998: ldur         r1, [fp, #-0x10]
    // 0x42199c: LoadField: r2 = r1->field_7
    //     0x42199c: ldur         r2, [r1, #7]
    //     0x4219a0: add          r2, r2, HEAP, lsl #32
    // 0x4219a4: LoadField: r3 = r2->field_7
    //     0x4219a4: ldur         r3, [r2, #7]
    //     0x4219a8: add          r3, r3, HEAP, lsl #32
    // 0x4219ac: BARRIER = pp[0x40]
    //     0x4219ac: ldr          BARRIER, [PP, #0x40]
    //     0x4219b0: cmp          r3, r16
    // 0x4219b4: b.eq 0x421f00
    //     0x4219b4: b.eq         0x421f00
    // 0x4219b8: LoadField: r2 = r3->field_b
    //     0x4219b8: ldur         r2, [r3, #0xb]
    //     0x4219bc: add          r2, r2, HEAP, lsl #32
    // 0x4219c0: BARRIER = pp[0x40]
    //     0x4219c0: ldr          BARRIER, [PP, #0x40]
    //     0x4219c4: cmp          r2, r16
    // 0x4219c8: b.eq 0x421f0c
    //     0x4219c8: b.eq         0x421f0c
    //     0x4219cc: stur         r2, [fp, #-0x30]
    // 0x4219d0: r0 = soul_flutter_international$res$colors_SOColors::get_s_02()
    //     0x4219d0: bl           0x3b348c
    // 0x4219d4: r1 = r0
    //     0x4219d4: mov          r1, r0
    // 0x4219d8: r0 = soul_flutter_international$res$styles_TextStyles::firstLevelTitle()
    //     0x4219d8: bl           0x3b47a8
    //     0x4219dc: stur         r0, [fp, #-0x48]
    // 0x4219e0: r0 = call 0x393bf8
    //     0x4219e0: bl           0x393bf8
    // 0x4219e4: r1 = r0
    //     0x4219e4: mov          r1, r0
    //     0x4219e8: ldur         r0, [fp, #-0x30]
    //     0x4219ec: stur         r1, [fp, #-0x50]
    // 0x4219f0: StoreField: r1->field_b = r0
    //     0x4219f0: stur         r0, [r1, #0xb]
    //     0x4219f4: ldur         r0, [fp, #-0x48]
    // 0x4219f8: StoreField: r1->field_13 = r0
    //     0x4219f8: stur         r0, [r1, #0x13]
    // 0x4219fc: r0 = pp[0x23f]
    //     0x4219fc: add          r0, PP, #0xf, lsl #12
    //     0x421a00: ldr          r0, [r0, #0x230]
    // 0x421a04: StoreField: r1->field_2b = r0
    //     0x421a04: stur         r0, [r1, #0x2b]
    //     0x421a08: mov          r0, #2
    // 0x421a0c: StoreField: r1->field_37 = r0
    //     0x421a0c: stur         r0, [r1, #0x37]
    // 0x421a10: r0 = call 0x39646c
    //     0x421a10: bl           0x39646c
    // 0x421a14: r1 = r0
    //     0x421a14: mov          r1, r0
    //     0x421a18: ldur         r0, [fp, #-0x40]
    //     0x421a1c: stur         r1, [fp, #-0x48]
    // 0x421a20: StoreField: r1->field_f = r0
    //     0x421a20: stur         r0, [r1, #0xf]
    //     0x421a24: ldur         r0, [fp, #-0x50]
    // 0x421a28: StoreField: r1->field_b = r0
    //     0x421a28: stur         r0, [r1, #0xb]
    //     0x421a2c: ldur         r0, [fp, #-0x20]
    // 0x421a30: LoadField: r2 = r0->field_7
    //     0x421a30: ldur         r2, [r0, #7]
    //     0x421a34: cbnz         r2, 0x421a40
    //     0x421a38: add          r3, NULL, #0x30
    // 0x421a3c: b 0x421a44
    //     0x421a3c: b            0x421a44
    //     0x421a40: add          r3, NULL, #0x20
    //     0x421a44: stur         r3, [fp, #-0x30]
    // 0x421a48: r0 = call 0x352b04
    //     0x421a48: bl           0x352b04
    //     0x421a4c: fmov         d0, #8.00000000
    //     0x421a50: stur         r0, [fp, #-0x40]
    // 0x421a54: StoreField: r0->field_7 = d0
    //     0x421a54: stur         d0, [r0, #7]
    // 0x421a58: StoreField: r0->field_f = d0
    //     0x421a58: stur         d0, [r0, #0xf]
    // 0x421a5c: r0 = call 0x392f28
    //     0x421a5c: bl           0x392f28
    // 0x421a60: r1 = r0
    //     0x421a60: mov          r1, r0
    //     0x421a64: ldur         r0, [fp, #-0x40]
    //     0x421a68: stur         r1, [fp, #-0x50]
    // 0x421a6c: StoreField: r1->field_7 = r0
    //     0x421a6c: stur         r0, [r1, #7]
    // 0x421a70: StoreField: r1->field_b = r0
    //     0x421a70: stur         r0, [r1, #0xb]
    // 0x421a74: StoreField: r1->field_f = r0
    //     0x421a74: stur         r0, [r1, #0xf]
    // 0x421a78: StoreField: r1->field_13 = r0
    //     0x421a78: stur         r0, [r1, #0x13]
    //     0x421a7c: ldur         r0, [fp, #-8]
    //     0x421a80: tbnz         r0, #4, 0x421a90
    // 0x421a84: r0 = soul_flutter_international$res$colors_SOColors::get_s_00()
    //     0x421a84: bl           0x3b1380
    // 0x421a88: r2 = r0
    //     0x421a88: mov          r2, r0
    // 0x421a8c: b 0x421a98
    //     0x421a8c: b            0x421a98
    // 0x421a90: r0 = soul_flutter_international$res$colors_SOColors::get_s_05()
    //     0x421a90: bl           0x3a6088
    // 0x421a94: r2 = r0
    //     0x421a94: mov          r2, r0
    //     0x421a98: ldur         r3, [fp, #-8]
    //     0x421a9c: ldur         r0, [fp, #-0x50]
    // 0x421aa0: BARRIER = pp[0x53b0]
    //     0x421aa0: ldr          BARRIER, [PP, #0x53b0]
    //     0x421aa4: str          BARRIER, [SP]
    // 0x421aa8: r1 = NULL
    //     0x421aa8: mov          r1, NULL
    // 0x421aac: r4 = pp[0x827]
    //     0x421aac: add          r4, PP, #0xf, lsl #12
    //     0x421ab0: ldr          r4, [r4, #0x818]
    // 0x421ab4: r0 = flutter$src$painting$box_border_Border::factory_ctor_all()
    //     0x421ab4: bl           0x391e08
    //     0x421ab8: stur         r0, [fp, #-0x40]
    // 0x421abc: r0 = call 0x391dd8
    //     0x421abc: bl           0x391dd8
    // 0x421ac0: r1 = r0
    //     0x421ac0: mov          r1, r0
    //     0x421ac4: ldur         r0, [fp, #-0x40]
    //     0x421ac8: stur         r1, [fp, #-0x58]
    // 0x421acc: StoreField: r1->field_f = r0
    //     0x421acc: stur         r0, [r1, #0xf]
    //     0x421ad0: ldur         r0, [fp, #-0x50]
    // 0x421ad4: StoreField: r1->field_13 = r0
    //     0x421ad4: stur         r0, [r1, #0x13]
    // 0x421ad8: r0 = pp[0xb86]
    //     0x421ad8: add          r0, PP, #0xe, lsl #12
    //     0x421adc: ldr          r0, [r0, #0xb78]
    // 0x421ae0: StoreField: r1->field_23 = r0
    //     0x421ae0: stur         r0, [r1, #0x23]
    //     0x421ae4: ldur         r0, [fp, #-8]
    //     0x421ae8: tbnz         r0, #4, 0x421af8
    // 0x421aec: r0 = soul_flutter_international$res$colors_SOColors::get_s_00()
    //     0x421aec: bl           0x3b1380
    // 0x421af0: r1 = r0
    //     0x421af0: mov          r1, r0
    // 0x421af4: b 0x421b00
    //     0x421af4: b            0x421b00
    // 0x421af8: r0 = soul_flutter_international$res$colors_SOColors::get_s_05()
    //     0x421af8: bl           0x3a6088
    // 0x421afc: r1 = r0
    //     0x421afc: mov          r1, r0
    //     0x421b00: ldur         r0, [fp, #-0x20]
    //     0x421b04: ldur         r2, [fp, #-0x30]
    //     0x421b08: ldur         r3, [fp, #-0x10]
    // 0x421b0c: r0 = soul_flutter_international$res$styles_TextStyles::smallestTitle()
    //     0x421b0c: bl           0x421f30
    //     0x421b10: stur         r0, [fp, #-8]
    // 0x421b14: r0 = call 0x393bf8
    //     0x421b14: bl           0x393bf8
    // 0x421b18: r1 = r0
    //     0x421b18: mov          r1, r0
    //     0x421b1c: ldur         r0, [fp, #-0x20]
    //     0x421b20: stur         r1, [fp, #-0x40]
    // 0x421b24: StoreField: r1->field_b = r0
    //     0x421b24: stur         r0, [r1, #0xb]
    //     0x421b28: ldur         r0, [fp, #-8]
    // 0x421b2c: StoreField: r1->field_13 = r0
    //     0x421b2c: stur         r0, [r1, #0x13]
    // 0x421b30: r0 = call 0x391a04
    //     0x421b30: bl           0x391a04
    //     0x421b34: stur         r0, [fp, #-8]
    // 0x421b38: BARRIER = pp[0xb5e]
    //     0x421b38: add          BARRIER, PP, #0xe, lsl #12
    //     0x421b3c: ldr          BARRIER, [BARRIER, #0xb50]
    // 0x421b40: lr = pp[0xaae]
    //     0x421b40: add          lr, PP, #0xe, lsl #12
    //     0x421b44: ldr          lr, [lr, #0xaa0]
    //     0x421b48: stp          lr, BARRIER, [SP, #0x20]
    //     0x421b4c: ldur         BARRIER, [fp, #-0x58]
    // 0x421b50: lr = pp[0xf34]
    //     0x421b50: add          lr, PP, #0x14, lsl #12
    //     0x421b54: ldr          lr, [lr, #0xf20]
    //     0x421b58: stp          lr, BARRIER, [SP, #0x10]
    // 0x421b5c: BARRIER = pp[0x7a1]
    //     0x421b5c: add          BARRIER, PP, #0x11, lsl #12
    //     0x421b60: ldr          BARRIER, [BARRIER, #0x790]
    //     0x421b64: ldur         lr, [fp, #-0x40]
    //     0x421b68: stp          lr, BARRIER, [SP]
    // 0x421b6c: r1 = r0
    //     0x421b6c: mov          r1, r0
    // 0x421b70: r4 = pp[0xf3c]
    //     0x421b70: add          r4, PP, #0x14, lsl #12
    //     0x421b74: ldr          r4, [r4, #0xf28]
    // 0x421b78: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x421b78: bl           0x391490
    // 0x421b7c: r0 = call 0x41dfa8
    //     0x421b7c: bl           0x41dfa8
    // 0x421b80: r1 = r0
    //     0x421b80: mov          r1, r0
    //     0x421b84: ldur         r0, [fp, #-8]
    //     0x421b88: stur         r1, [fp, #-0x20]
    // 0x421b8c: StoreField: r1->field_b = r0
    //     0x421b8c: stur         r0, [r1, #0xb]
    // 0x421b90: r0 = pp[0x56b8]
    //     0x421b90: ldr          r0, [PP, #0x56b8]
    // 0x421b94: StoreField: r1->field_f = r0
    //     0x421b94: stur         r0, [r1, #0xf]
    //     0x421b98: ldur         r0, [fp, #-0x30]
    // 0x421b9c: StoreField: r1->field_13 = r0
    //     0x421b9c: stur         r0, [r1, #0x13]
    //     0x421ba0: add          r0, NULL, #0x20
    // 0x421ba4: ArrayStore: r1[0] = r0  ; List_8
    //     0x421ba4: stur         r0, [r1, #0x17]
    // 0x421ba8: StoreField: r1->field_1b = r0
    //     0x421ba8: stur         r0, [r1, #0x1b]
    // 0x421bac: StoreField: r1->field_1f = r0
    //     0x421bac: stur         r0, [r1, #0x1f]
    //     0x421bb0: add          r0, NULL, #0x30
    // 0x421bb4: StoreField: r1->field_23 = r0
    //     0x421bb4: stur         r0, [r1, #0x23]
    // 0x421bb8: StoreField: r1->field_27 = r0
    //     0x421bb8: stur         r0, [r1, #0x27]
    // 0x421bbc: r0 = call 0x421f24
    //     0x421bbc: bl           0x421f24
    // 0x421bc0: r1 = r0
    //     0x421bc0: mov          r1, r0
    //     0x421bc4: mov          r0, #1
    //     0x421bc8: stur         r1, [fp, #-8]
    // 0x421bcc: StoreField: r1->field_b = r0
    //     0x421bcc: stur         r0, [r1, #0xb]
    //     0x421bd0: ldur         r2, [fp, #-0x10]
    // 0x421bd4: LoadField: r3 = r2->field_b
    //     0x421bd4: ldur         r3, [r2, #0xb]
    //     0x421bd8: add          r3, r3, HEAP, lsl #32
    // 0x421bdc: BARRIER = pp[0x40]
    //     0x421bdc: ldr          BARRIER, [PP, #0x40]
    //     0x421be0: cmp          r3, r16
    // 0x421be4: b.eq 0x421f18
    //     0x421be4: b.eq         0x421f18
    //     0x421be8: tbnz         r3, #4, 0x421c24
    // 0x421bec: r0 = call 0x3a142c
    //     0x421bec: bl           0x3a142c
    // 0x421bf0: r1 = r0
    //     0x421bf0: mov          r1, r0
    // 0x421bf4: r0 = pp[0xf44]
    //     0x421bf4: add          r0, PP, #0x14, lsl #12
    //     0x421bf8: ldr          r0, [r0, #0xf30]
    // 0x421bfc: StoreField: r1->field_b = r0
    //     0x421bfc: stur         r0, [r1, #0xb]
    // 0x421c00: r0 = pp[0xb56]
    //     0x421c00: add          r0, PP, #0xe, lsl #12
    //     0x421c04: ldr          r0, [r0, #0xb48]
    // 0x421c08: StoreField: r1->field_f = r0
    //     0x421c08: stur         r0, [r1, #0xf]
    // 0x421c0c: r2 = pp[0x25f]
    //     0x421c0c: add          r2, PP, #0xf, lsl #12
    //     0x421c10: ldr          r2, [r2, #0x250]
    // 0x421c14: StoreField: r1->field_13 = r2
    //     0x421c14: stur         r2, [r1, #0x13]
    // 0x421c18: ArrayStore: r1[0] = r2  ; List_8
    //     0x421c18: stur         r2, [r1, #0x17]
    // 0x421c1c: r4 = r1
    //     0x421c1c: mov          r4, r1
    // 0x421c20: b 0x421c68
    //     0x421c20: b            0x421c68
    // 0x421c24: r2 = pp[0x25f]
    //     0x421c24: add          r2, PP, #0xf, lsl #12
    //     0x421c28: ldr          r2, [r2, #0x250]
    // 0x421c2c: r0 = pp[0xb56]
    //     0x421c2c: add          r0, PP, #0xe, lsl #12
    //     0x421c30: ldr          r0, [r0, #0xb48]
    // 0x421c34: r0 = call 0x3a142c
    //     0x421c34: bl           0x3a142c
    // 0x421c38: r1 = r0
    //     0x421c38: mov          r1, r0
    // 0x421c3c: r0 = pp[0xf4c]
    //     0x421c3c: add          r0, PP, #0x14, lsl #12
    //     0x421c40: ldr          r0, [r0, #0xf38]
    // 0x421c44: StoreField: r1->field_b = r0
    //     0x421c44: stur         r0, [r1, #0xb]
    // 0x421c48: r0 = pp[0xb56]
    //     0x421c48: add          r0, PP, #0xe, lsl #12
    //     0x421c4c: ldr          r0, [r0, #0xb48]
    // 0x421c50: StoreField: r1->field_f = r0
    //     0x421c50: stur         r0, [r1, #0xf]
    // 0x421c54: r0 = pp[0x25f]
    //     0x421c54: add          r0, PP, #0xf, lsl #12
    //     0x421c58: ldr          r0, [r0, #0x250]
    // 0x421c5c: StoreField: r1->field_13 = r0
    //     0x421c5c: stur         r0, [r1, #0x13]
    // 0x421c60: ArrayStore: r1[0] = r0  ; List_8
    //     0x421c60: stur         r0, [r1, #0x17]
    // 0x421c64: r4 = r1
    //     0x421c64: mov          r4, r1
    //     0x421c68: ldur         r3, [fp, #-0x28]
    //     0x421c6c: ldur         r2, [fp, #-0x48]
    //     0x421c70: ldur         r1, [fp, #-0x20]
    //     0x421c74: ldur         r0, [fp, #-8]
    //     0x421c78: stur         r4, [fp, #-0x10]
    // 0x421c7c: r0 = call 0x391c0c
    //     0x421c7c: bl           0x391c0c
    // 0x421c80: r3 = r0
    //     0x421c80: mov          r3, r0
    // 0x421c84: r0 = pp[0xf54]
    //     0x421c84: add          r0, PP, #0x14, lsl #12
    //     0x421c88: ldr          r0, [r0, #0xf40]
    //     0x421c8c: stur         r3, [fp, #-0x30]
    // 0x421c90: StoreField: r3->field_f = r0
    //     0x421c90: stur         r0, [r3, #0xf]
    //     0x421c94: ldur         r0, [fp, #-0x10]
    // 0x421c98: StoreField: r3->field_b = r0
    //     0x421c98: stur         r0, [r3, #0xb]
    // 0x421c9c: r1 = NULL
    //     0x421c9c: mov          r1, NULL
    //     0x421ca0: mov          r2, #0xa
    // 0x421ca4: r0 = call 0x61f920
    //     0x421ca4: bl           0x61f920
    // 0x421ca8: r2 = r0
    //     0x421ca8: mov          r2, r0
    //     0x421cac: ldur         r0, [fp, #-0x28]
    //     0x421cb0: stur         r2, [fp, #-0x10]
    // 0x421cb4: StoreField: r2->field_f = r0
    //     0x421cb4: stur         r0, [r2, #0xf]
    //     0x421cb8: ldur         r0, [fp, #-0x48]
    // 0x421cbc: StoreField: r2->field_13 = r0
    //     0x421cbc: stur         r0, [r2, #0x13]
    //     0x421cc0: ldur         r0, [fp, #-0x20]
    // 0x421cc4: ArrayStore: r2[0] = r0  ; List_8
    //     0x421cc4: stur         r0, [r2, #0x17]
    //     0x421cc8: ldur         r0, [fp, #-8]
    // 0x421ccc: StoreField: r2->field_1b = r0
    //     0x421ccc: stur         r0, [r2, #0x1b]
    //     0x421cd0: ldur         r0, [fp, #-0x30]
    // 0x421cd4: StoreField: r2->field_1f = r0
    //     0x421cd4: stur         r0, [r2, #0x1f]
    // 0x421cd8: r1 = pp[0x5c58]
    //     0x421cd8: ldr          r1, [PP, #0x5c58]
    // 0x421cdc: r0 = call 0x61e854
    //     0x421cdc: bl           0x61e854
    // 0x421ce0: r1 = r0
    //     0x421ce0: mov          r1, r0
    //     0x421ce4: ldur         r0, [fp, #-0x10]
    //     0x421ce8: stur         r1, [fp, #-8]
    // 0x421cec: StoreField: r1->field_f = r0
    //     0x421cec: stur         r0, [r1, #0xf]
    //     0x421cf0: mov          r0, #0xa
    // 0x421cf4: StoreField: r1->field_b = r0
    //     0x421cf4: stur         r0, [r1, #0xb]
    // 0x421cf8: r0 = call 0x3a1414
    //     0x421cf8: bl           0x3a1414
    // 0x421cfc: r2 = r0
    //     0x421cfc: mov          r2, r0
    // 0x421d00: r0 = pp[0x5140]
    //     0x421d00: ldr          r0, [PP, #0x5140]
    //     0x421d04: stur         r2, [fp, #-0x10]
    // 0x421d08: StoreField: r2->field_f = r0
    //     0x421d08: stur         r0, [r2, #0xf]
    // 0x421d0c: r0 = pp[0xaee]
    //     0x421d0c: add          r0, PP, #0xe, lsl #12
    //     0x421d10: ldr          r0, [r0, #0xae0]
    // 0x421d14: StoreField: r2->field_13 = r0
    //     0x421d14: stur         r0, [r2, #0x13]
    // 0x421d18: r3 = pp[0xaf6]
    //     0x421d18: add          r3, PP, #0xe, lsl #12
    //     0x421d1c: ldr          r3, [r3, #0xae8]
    // 0x421d20: ArrayStore: r2[0] = r3  ; List_8
    //     0x421d20: stur         r3, [r2, #0x17]
    // 0x421d24: r4 = pp[0xb6e]
    //     0x421d24: add          r4, PP, #0xe, lsl #12
    //     0x421d28: ldr          r4, [r4, #0xb60]
    // 0x421d2c: StoreField: r2->field_1b = r4
    //     0x421d2c: stur         r4, [r2, #0x1b]
    // 0x421d30: r5 = pp[0xb06]
    //     0x421d30: add          r5, PP, #0xe, lsl #12
    //     0x421d34: ldr          r5, [r5, #0xaf8]
    // 0x421d38: StoreField: r2->field_23 = r5
    //     0x421d38: stur         r5, [r2, #0x23]
    // 0x421d3c: r6 = pp[0xb2]
    //     0x421d3c: add          r6, PP, #0xa, lsl #12
    //     0x421d40: ldr          r6, [r6, #0xa8]
    // 0x421d44: StoreField: r2->field_2b = r6
    //     0x421d44: stur         r6, [r2, #0x2b]
    // 0x421d48: StoreField: r2->field_2f = xzr
    //     0x421d48: stur         xzr, [r2, #0x2f]
    //     0x421d4c: ldur         r1, [fp, #-8]
    // 0x421d50: StoreField: r2->field_b = r1
    //     0x421d50: stur         r1, [r2, #0xb]
    // 0x421d54: r1 = pp[0xade]
    //     0x421d54: add          r1, PP, #0xe, lsl #12
    //     0x421d58: ldr          r1, [r1, #0xad0]
    // 0x421d5c: r0 = call 0x39fb14
    //     0x421d5c: bl           0x39fb14
    // 0x421d60: r1 = r0
    //     0x421d60: mov          r1, r0
    //     0x421d64: mov          r0, #1
    //     0x421d68: stur         r1, [fp, #-8]
    // 0x421d6c: StoreField: r1->field_13 = r0
    //     0x421d6c: stur         r0, [r1, #0x13]
    // 0x421d70: r0 = pp[0xae6]
    //     0x421d70: add          r0, PP, #0xe, lsl #12
    //     0x421d74: ldr          r0, [r0, #0xad8]
    // 0x421d78: StoreField: r1->field_1b = r0
    //     0x421d78: stur         r0, [r1, #0x1b]
    //     0x421d7c: ldur         r0, [fp, #-0x10]
    // 0x421d80: StoreField: r1->field_b = r0
    //     0x421d80: stur         r0, [r1, #0xb]
    // 0x421d84: r0 = soul_flutter_international$res$colors_SOColors::get_s_10()
    //     0x421d84: bl           0x3b7d80
    //     0x421d88: stur         r0, [fp, #-0x10]
    // 0x421d8c: r0 = call 0x3ae894
    //     0x421d8c: bl           0x3ae894
    //     0x421d90: fmov         d0, #0.50000000
    //     0x421d94: stur         r0, [fp, #-0x20]
    // 0x421d98: StoreField: r0->field_b = d0
    //     0x421d98: stur         d0, [r0, #0xb]
    // 0x421d9c: r1 = pp[0x8c9]
    //     0x421d9c: add          r1, PP, #0x11, lsl #12
    //     0x421da0: ldr          r1, [r1, #0x8b8]
    // 0x421da4: ArrayStore: r0[0] = r1  ; List_8
    //     0x421da4: stur         r1, [r0, #0x17]
    //     0x421da8: ldur         r1, [fp, #-0x10]
    // 0x421dac: StoreField: r0->field_1f = r1
    //     0x421dac: stur         r1, [r0, #0x1f]
    // 0x421db0: r1 = NULL
    //     0x421db0: mov          r1, NULL
    //     0x421db4: mov          r2, #4
    // 0x421db8: r0 = call 0x61f920
    //     0x421db8: bl           0x61f920
    // 0x421dbc: r2 = r0
    //     0x421dbc: mov          r2, r0
    //     0x421dc0: ldur         r0, [fp, #-8]
    //     0x421dc4: stur         r2, [fp, #-0x10]
    // 0x421dc8: StoreField: r2->field_f = r0
    //     0x421dc8: stur         r0, [r2, #0xf]
    //     0x421dcc: ldur         r0, [fp, #-0x20]
    // 0x421dd0: StoreField: r2->field_13 = r0
    //     0x421dd0: stur         r0, [r2, #0x13]
    // 0x421dd4: r1 = pp[0x5c58]
    //     0x421dd4: ldr          r1, [PP, #0x5c58]
    // 0x421dd8: r0 = call 0x61e854
    //     0x421dd8: bl           0x61e854
    // 0x421ddc: r1 = r0
    //     0x421ddc: mov          r1, r0
    //     0x421de0: ldur         r0, [fp, #-0x10]
    //     0x421de4: stur         r1, [fp, #-8]
    // 0x421de8: StoreField: r1->field_f = r0
    //     0x421de8: stur         r0, [r1, #0xf]
    //     0x421dec: mov          r0, #4
    // 0x421df0: StoreField: r1->field_b = r0
    //     0x421df0: stur         r0, [r1, #0xb]
    // 0x421df4: r0 = call 0x39310c
    //     0x421df4: bl           0x39310c
    // 0x421df8: r1 = r0
    //     0x421df8: mov          r1, r0
    // 0x421dfc: r0 = pp[0x862]
    //     0x421dfc: add          r0, PP, #0xa, lsl #12
    //     0x421e00: ldr          r0, [r0, #0x858]
    //     0x421e04: stur         r1, [fp, #-0x10]
    // 0x421e08: StoreField: r1->field_f = r0
    //     0x421e08: stur         r0, [r1, #0xf]
    // 0x421e0c: r0 = pp[0xaee]
    //     0x421e0c: add          r0, PP, #0xe, lsl #12
    //     0x421e10: ldr          r0, [r0, #0xae0]
    // 0x421e14: StoreField: r1->field_13 = r0
    //     0x421e14: stur         r0, [r1, #0x13]
    // 0x421e18: r0 = pp[0xaf6]
    //     0x421e18: add          r0, PP, #0xe, lsl #12
    //     0x421e1c: ldr          r0, [r0, #0xae8]
    // 0x421e20: ArrayStore: r1[0] = r0  ; List_8
    //     0x421e20: stur         r0, [r1, #0x17]
    // 0x421e24: r0 = pp[0xb6e]
    //     0x421e24: add          r0, PP, #0xe, lsl #12
    //     0x421e28: ldr          r0, [r0, #0xb60]
    // 0x421e2c: StoreField: r1->field_1b = r0
    //     0x421e2c: stur         r0, [r1, #0x1b]
    // 0x421e30: r0 = pp[0xb06]
    //     0x421e30: add          r0, PP, #0xe, lsl #12
    //     0x421e34: ldr          r0, [r0, #0xaf8]
    // 0x421e38: StoreField: r1->field_23 = r0
    //     0x421e38: stur         r0, [r1, #0x23]
    // 0x421e3c: r0 = pp[0xb2]
    //     0x421e3c: add          r0, PP, #0xa, lsl #12
    //     0x421e40: ldr          r0, [r0, #0xa8]
    // 0x421e44: StoreField: r1->field_2b = r0
    //     0x421e44: stur         r0, [r1, #0x2b]
    // 0x421e48: StoreField: r1->field_2f = xzr
    //     0x421e48: stur         xzr, [r1, #0x2f]
    //     0x421e4c: ldur         r0, [fp, #-8]
    // 0x421e50: StoreField: r1->field_b = r0
    //     0x421e50: stur         r0, [r1, #0xb]
    // 0x421e54: r0 = call 0x391a04
    //     0x421e54: bl           0x391a04
    //     0x421e58: stur         r0, [fp, #-8]
    // 0x421e5c: BARRIER = pp[0xf5c]
    //     0x421e5c: add          BARRIER, PP, #0x14, lsl #12
    //     0x421e60: ldr          BARRIER, [BARRIER, #0xf48]
    //     0x421e64: ldur         lr, [fp, #-0x38]
    //     0x421e68: stp          lr, BARRIER, [SP, #8]
    //     0x421e6c: ldur         BARRIER, [fp, #-0x10]
    //     0x421e70: str          BARRIER, [SP]
    // 0x421e74: r1 = r0
    //     0x421e74: mov          r1, r0
    // 0x421e78: r4 = pp[0x258]
    //     0x421e78: add          r4, PP, #0x10, lsl #12
    //     0x421e7c: ldr          r4, [r4, #0x248]
    // 0x421e80: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x421e80: bl           0x391490
    // 0x421e84: r0 = call 0x3a1d94
    //     0x421e84: bl           0x3a1d94
    //     0x421e88: ldur         r2, [fp, #-0x18]
    // 0x421e8c: r1 = pp[0xf64]
    //     0x421e8c: add          r1, PP, #0x14, lsl #12
    //     0x421e90: ldr          r1, [r1, #0xf50]
    //     0x421e94: stur         r0, [fp, #-0x10]
    // 0x421e98: r0 = call 0x61ec54
    //     0x421e98: bl           0x61ec54
    //     0x421e9c: ldur         BARRIER, [fp, #-8]
    //     0x421ea0: stp          BARRIER, r0, [SP]
    //     0x421ea4: ldur         r1, [fp, #-0x10]
    // 0x421ea8: r4 = pp[0x214]
    //     0x421ea8: add          r4, PP, #0xc, lsl #12
    //     0x421eac: ldr          r4, [r4, #0x208]
    // 0x421eb0: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x421eb0: bl           0x3a18c4
    //     0x421eb4: ldur         r0, [fp, #-0x10]
    // 0x421eb8: SP = fp
    //     0x421eb8: mov          SP, fp
    // 0x421ebc: LeaveFrame
    //     0x421ebc: ldp          fp, lr, [SP], #0x10
    // 0x421ec0: ret
    //     0x421ec0: ret          
    // 0x421ec4: r0 = call 0x61fa28
    //     0x421ec4: bl           0x61fa28
    // 0x421ec8: b 0x4217d4
    //     0x421ec8: b            0x4217d4
    // 0x421ecc: r0 = call 0x61fe70
    //     0x421ecc: bl           0x61fe70
    // 0x421ed0: r9 = pp[0x749]
    //     0x421ed0: add          r9, PP, #0x11, lsl #12
    //     0x421ed4: ldr          r9, [r9, #0x738]
    // 0x421ed8: r0 = call 0x620258
    //     0x421ed8: bl           0x620258
    // 0x421edc: r9 = pp[0x751]
    //     0x421edc: add          r9, PP, #0x11, lsl #12
    //     0x421ee0: ldr          r9, [r9, #0x740]
    // 0x421ee4: r0 = call 0x620258
    //     0x421ee4: bl           0x620258
    // 0x421ee8: r9 = pp[0xf6c]
    //     0x421ee8: add          r9, PP, #0x14, lsl #12
    //     0x421eec: ldr          r9, [r9, #0xf58]
    // 0x421ef0: r0 = call 0x620258
    //     0x421ef0: bl           0x620258
    // 0x421ef4: r9 = pp[0xf74]
    //     0x421ef4: add          r9, PP, #0x14, lsl #12
    //     0x421ef8: ldr          r9, [r9, #0xf60]
    // 0x421efc: r0 = call 0x620258
    //     0x421efc: bl           0x620258
    // 0x421f00: r9 = pp[0x751]
    //     0x421f00: add          r9, PP, #0x11, lsl #12
    //     0x421f04: ldr          r9, [r9, #0x740]
    // 0x421f08: r0 = call 0x620258
    //     0x421f08: bl           0x620258
    // 0x421f0c: r9 = pp[0xf7c]
    //     0x421f0c: add          r9, PP, #0x14, lsl #12
    //     0x421f10: ldr          r9, [r9, #0xf68]
    // 0x421f14: r0 = call 0x620258
    //     0x421f14: bl           0x620258
    // 0x421f18: r9 = pp[0xf84]
    //     0x421f18: add          r9, PP, #0x14, lsl #12
    //     0x421f1c: ldr          r9, [r9, #0xf70]
    // 0x421f20: r0 = call 0x620258
    //     0x421f20: bl           0x620258
  }

  _anon_closure() {
    // ** addr: 0x42217c, size: 0x5c
    // 0x42217c: EnterFrame
    //     0x42217c: stp          fp, lr, [SP, #-0x10]!
    //     0x422180: mov          fp, SP
    //     0x422184: ldr          r0, [fp, #0x10]
    // 0x422188: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x422188: ldur         r1, [r0, #0x17]
    //     0x42218c: add          r1, r1, HEAP, lsl #32
    // 0x422190: CheckStackOverflow
    //     0x422190: ldr          BARRIER, [THR, #0x38]
    //     0x422194: cmp          SP, BARRIER
    //     0x422198: b.ls         0x4221d0
    // 0x42219c: LoadField: r0 = r1->field_b
    //     0x42219c: ldur         r0, [r1, #0xb]
    //     0x4221a0: add          r0, r0, HEAP, lsl #32
    // 0x4221a4: LoadField: r2 = r0->field_13
    //     0x4221a4: ldur         r2, [r0, #0x13]
    //     0x4221a8: add          r2, r2, HEAP, lsl #32
    // 0x4221ac: LoadField: r0 = r1->field_f
    //     0x4221ac: ldur         r0, [r1, #0xf]
    //     0x4221b0: add          r0, r0, HEAP, lsl #32
    // 0x4221b4: r1 = r2
    //     0x4221b4: mov          r1, r2
    // 0x4221b8: r2 = r0
    //     0x4221b8: mov          r2, r0
    // 0x4221bc: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::selectCurrentItem()
    //     0x4221bc: bl           0x4221d8
    // 0x4221c0: r0 = NULL
    //     0x4221c0: mov          r0, NULL
    // 0x4221c4: SP = fp
    //     0x4221c4: mov          SP, fp
    // 0x4221c8: LeaveFrame
    //     0x4221c8: ldp          fp, lr, [SP], #0x10
    // 0x4221cc: ret
    //     0x4221cc: ret          
    // 0x4221d0: r0 = call 0x61fa28
    //     0x4221d0: bl           0x61fa28
    // 0x4221d4: b 0x42219c
    //     0x4221d4: b            0x42219c
  }

  _anon_closure() {
    // ** addr: 0x422798, size: 0x88
    // 0x422798: EnterFrame
    //     0x422798: stp          fp, lr, [SP, #-0x10]!
    //     0x42279c: mov          fp, SP
    // 0x4227a0: AllocStack(0x10)
    //     0x4227a0: sub          SP, SP, #0x10
    //     0x4227a4: ldr          r0, [fp, #0x10]
    // 0x4227a8: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4227a8: ldur         r1, [r0, #0x17]
    //     0x4227ac: add          r1, r1, HEAP, lsl #32
    // 0x4227b0: CheckStackOverflow
    //     0x4227b0: ldr          BARRIER, [THR, #0x38]
    //     0x4227b4: cmp          SP, BARRIER
    //     0x4227b8: b.ls         0x422818
    // 0x4227bc: ArrayLoad: r0 = r1[0]  ; List_8
    //     0x4227bc: ldur         r0, [r1, #0x17]
    //     0x4227c0: add          r0, r0, HEAP, lsl #32
    //     0x4227c4: stur         r0, [fp, #-0x10]
    // 0x4227c8: LoadField: r2 = r1->field_13
    //     0x4227c8: ldur         r2, [r1, #0x13]
    //     0x4227cc: add          r2, r2, HEAP, lsl #32
    // 0x4227d0: LoadField: r3 = r1->field_f
    //     0x4227d0: ldur         r3, [r1, #0xf]
    //     0x4227d4: add          r3, r3, HEAP, lsl #32
    //     0x4227d8: sbfx         r4, r2, #1, #0x1f
    // 0x4227dc: branchIfSmi(r2, 0x4227e4)
    //     0x4227dc: tbz          r2, #0, 0x4227e4
    // 0x4227e0: LoadField: r4 = r2->field_7
    //     0x4227e0: ldur         r4, [r2, #7]
    // 0x4227e4: r2 = r3
    //     0x4227e4: mov          r2, r3
    //     0x4227e8: stur         r4, [fp, #-8]
    // 0x4227ec: r1 = pp[0xd5c]
    //     0x4227ec: add          r1, PP, #0x14, lsl #12
    //     0x4227f0: ldr          r1, [r1, #0xd48]
    // 0x4227f4: r0 = call 0x61ec54
    //     0x4227f4: bl           0x61ec54
    //     0x4227f8: ldur         r1, [fp, #-0x10]
    //     0x4227fc: ldur         r2, [fp, #-8]
    // 0x422800: r3 = r0
    //     0x422800: mov          r3, r0
    // 0x422804: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::requestItemList()
    //     0x422804: bl           0x422820
    // 0x422808: r0 = NULL
    //     0x422808: mov          r0, NULL
    // 0x42280c: SP = fp
    //     0x42280c: mov          SP, fp
    // 0x422810: LeaveFrame
    //     0x422810: ldp          fp, lr, [SP], #0x10
    // 0x422814: ret
    //     0x422814: ret          
    // 0x422818: r0 = call 0x61fa28
    //     0x422818: bl           0x61fa28
    // 0x42281c: b 0x4227bc
    //     0x42281c: b            0x4227bc
  }

  _onLoaded() {
    // ** addr: 0x422c60, size: 0xb4
    // 0x422c60: EnterFrame
    //     0x422c60: stp          fp, lr, [SP, #-0x10]!
    //     0x422c64: mov          fp, SP
    // 0x422c68: CheckStackOverflow
    //     0x422c68: ldr          BARRIER, [THR, #0x38]
    //     0x422c6c: cmp          SP, BARRIER
    //     0x422c70: b.ls         0x422ce8
    //     0x422c74: tbnz         r2, #4, 0x422cbc
    //     0x422c78: tbnz         r3, #4, 0x422c9c
    // 0x422c7c: ArrayLoad: r0 = r1[0]  ; List_8
    //     0x422c7c: ldur         r0, [r1, #0x17]
    //     0x422c80: add          r0, r0, HEAP, lsl #32
    // 0x422c84: BARRIER = pp[0x40]
    //     0x422c84: ldr          BARRIER, [PP, #0x40]
    //     0x422c88: cmp          r0, r16
    // 0x422c8c: b.eq 0x422cf0
    //     0x422c8c: b.eq         0x422cf0
    // 0x422c90: r1 = r0
    //     0x422c90: mov          r1, r0
    // 0x422c94: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadNoData()
    //     0x422c94: bl           0x3adfd4
    // 0x422c98: b 0x422cd8
    //     0x422c98: b            0x422cd8
    // 0x422c9c: ArrayLoad: r0 = r1[0]  ; List_8
    //     0x422c9c: ldur         r0, [r1, #0x17]
    //     0x422ca0: add          r0, r0, HEAP, lsl #32
    // 0x422ca4: BARRIER = pp[0x40]
    //     0x422ca4: ldr          BARRIER, [PP, #0x40]
    //     0x422ca8: cmp          r0, r16
    // 0x422cac: b.eq 0x422cfc
    //     0x422cac: b.eq         0x422cfc
    // 0x422cb0: r1 = r0
    //     0x422cb0: mov          r1, r0
    // 0x422cb4: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadComplete()
    //     0x422cb4: bl           0x3ade48
    // 0x422cb8: b 0x422cd8
    //     0x422cb8: b            0x422cd8
    // 0x422cbc: ArrayLoad: r0 = r1[0]  ; List_8
    //     0x422cbc: ldur         r0, [r1, #0x17]
    //     0x422cc0: add          r0, r0, HEAP, lsl #32
    // 0x422cc4: BARRIER = pp[0x40]
    //     0x422cc4: ldr          BARRIER, [PP, #0x40]
    //     0x422cc8: cmp          r0, r16
    // 0x422ccc: b.eq 0x422d08
    //     0x422ccc: b.eq         0x422d08
    // 0x422cd0: r1 = r0
    //     0x422cd0: mov          r1, r0
    // 0x422cd4: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadFailed()
    //     0x422cd4: bl           0x3adbb4
    // 0x422cd8: r0 = NULL
    //     0x422cd8: mov          r0, NULL
    // 0x422cdc: SP = fp
    //     0x422cdc: mov          SP, fp
    // 0x422ce0: LeaveFrame
    //     0x422ce0: ldp          fp, lr, [SP], #0x10
    // 0x422ce4: ret
    //     0x422ce4: ret          
    // 0x422ce8: r0 = call 0x61fa28
    //     0x422ce8: bl           0x61fa28
    // 0x422cec: b 0x422c74
    //     0x422cec: b            0x422c74
    // 0x422cf0: r9 = pp[0xd54]
    //     0x422cf0: add          r9, PP, #0x14, lsl #12
    //     0x422cf4: ldr          r9, [r9, #0xd40]
    // 0x422cf8: r0 = call 0x620258
    //     0x422cf8: bl           0x620258
    // 0x422cfc: r9 = pp[0xd54]
    //     0x422cfc: add          r9, PP, #0x14, lsl #12
    //     0x422d00: ldr          r9, [r9, #0xd40]
    // 0x422d04: r0 = call 0x620258
    //     0x422d04: bl           0x620258
    // 0x422d08: r9 = pp[0xd54]
    //     0x422d08: add          r9, PP, #0x14, lsl #12
    //     0x422d0c: ldr          r9, [r9, #0xd40]
    // 0x422d10: r0 = call 0x620258
    //     0x422d10: bl           0x620258
  }

  _onLoaded() {
    // ** addr: 0x423c00, size: 0x40
    // 0x423c00: EnterFrame
    //     0x423c00: stp          fp, lr, [SP, #-0x10]!
    //     0x423c04: mov          fp, SP
    //     0x423c08: ldr          r0, [fp, #0x20]
    // 0x423c0c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x423c0c: ldur         r1, [r0, #0x17]
    //     0x423c10: add          r1, r1, HEAP, lsl #32
    // 0x423c14: CheckStackOverflow
    //     0x423c14: ldr          BARRIER, [THR, #0x38]
    //     0x423c18: cmp          SP, BARRIER
    //     0x423c1c: b.ls         0x423c38
    //     0x423c20: ldr          r2, [fp, #0x18]
    //     0x423c24: ldr          r3, [fp, #0x10]
    // 0x423c28: r0 = soul_flutter_international$biz$party$page_party_invite__InviteUserPageState::_onLoaded()
    //     0x423c28: bl           0x422c60
    // 0x423c2c: SP = fp
    //     0x423c2c: mov          SP, fp
    // 0x423c30: LeaveFrame
    //     0x423c30: ldp          fp, lr, [SP], #0x10
    // 0x423c34: ret
    //     0x423c34: ret          
    // 0x423c38: r0 = call 0x61fa28
    //     0x423c38: bl           0x61fa28
    // 0x423c3c: b 0x423c20
    //     0x423c3c: b            0x423c20
  }

  dispose() {
    // ** addr: 0x4512c8, size: 0x64
    // 0x4512c8: EnterFrame
    //     0x4512c8: stp          fp, lr, [SP, #-0x10]!
    //     0x4512cc: mov          fp, SP
    // 0x4512d0: AllocStack(8)
    //     0x4512d0: sub          SP, SP, #8
    // 0x4512d4: r0 = r1
    //     0x4512d4: mov          r0, r1
    //     0x4512d8: stur         r1, [fp, #-8]
    // 0x4512dc: CheckStackOverflow
    //     0x4512dc: ldr          BARRIER, [THR, #0x38]
    //     0x4512e0: cmp          SP, BARRIER
    //     0x4512e4: b.ls         0x451318
    // 0x4512e8: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4512e8: ldur         r1, [r0, #0x17]
    //     0x4512ec: add          r1, r1, HEAP, lsl #32
    // 0x4512f0: BARRIER = pp[0x40]
    //     0x4512f0: ldr          BARRIER, [PP, #0x40]
    //     0x4512f4: cmp          r1, r16
    // 0x4512f8: b.eq 0x451320
    //     0x4512f8: b.eq         0x451320
    // 0x4512fc: r0 = pull_to_refresh$src$smart_refresher_RefreshController::dispose()
    //     0x4512fc: bl           0x45132c
    //     0x451300: ldur         r1, [fp, #-8]
    // 0x451304: r0 = soul_flutter_international$common$base$soul_state_SoulState::dispose()
    //     0x451304: bl           0x451970
    // 0x451308: r0 = NULL
    //     0x451308: mov          r0, NULL
    // 0x45130c: SP = fp
    //     0x45130c: mov          SP, fp
    // 0x451310: LeaveFrame
    //     0x451310: ldp          fp, lr, [SP], #0x10
    // 0x451314: ret
    //     0x451314: ret          
    // 0x451318: r0 = call 0x61fa28
    //     0x451318: bl           0x61fa28
    // 0x45131c: b 0x4512e8
    //     0x45131c: b            0x4512e8
    // 0x451320: r9 = pp[0xd54]
    //     0x451320: add          r9, PP, #0x14, lsl #12
    //     0x451324: ldr          r9, [r9, #0xd40]
    // 0x451328: r0 = call 0x620258
    //     0x451328: bl           0x620258
  }

  initState() {
    // ** addr: 0x4d44dc, size: 0xbc
    // 0x4d44dc: EnterFrame
    //     0x4d44dc: stp          fp, lr, [SP, #-0x10]!
    //     0x4d44e0: mov          fp, SP
    // 0x4d44e4: AllocStack(0x18)
    //     0x4d44e4: sub          SP, SP, #0x18
    // 0x4d44e8: r2 = r1
    //     0x4d44e8: mov          r2, r1
    //     0x4d44ec: stur         r1, [fp, #-8]
    // 0x4d44f0: CheckStackOverflow
    //     0x4d44f0: ldr          BARRIER, [THR, #0x38]
    //     0x4d44f4: cmp          SP, BARRIER
    //     0x4d44f8: b.ls         0x4d458c
    // 0x4d44fc: r0 = call 0x4c47f0
    //     0x4d44fc: bl           0x4c47f0
    // 0x4d4500: r1 = r0
    //     0x4d4500: mov          r1, r0
    //     0x4d4504: stur         r0, [fp, #-0x10]
    // 0x4d4508: r0 = pull_to_refresh$src$smart_refresher_RefreshController::ctor()
    //     0x4d4508: bl           0x4c46e0
    //     0x4d450c: ldur         r0, [fp, #-0x10]
    //     0x4d4510: ldur         r3, [fp, #-8]
    // 0x4d4514: ArrayStore: r3[0] = r0  ; List_8
    //     0x4d4514: stur         r0, [r3, #0x17]
    //     0x4d4518: ldurb        r16, [r3, #-1]
    //     0x4d451c: ldurb        r17, [r0, #-1]
    //     0x4d4520: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4d4524: tst          BARRIER, HEAP, lsr #32
    // 0x4d4528: b.eq 0x4d4530
    //     0x4d4528: b.eq         0x4d4530
    // 0x4d452c: r0 = call 0x61e08c
    //     0x4d452c: bl           0x61e08c
    // 0x4d4530: LoadField: r0 = r3->field_b
    //     0x4d4530: ldur         r0, [r3, #0xb]
    //     0x4d4534: add          r0, r0, HEAP, lsl #32
    //     0x4d4538: cmp          r0, r22
    // 0x4d453c: b.eq 0x4d4594
    //     0x4d453c: b.eq         0x4d4594
    // 0x4d4540: LoadField: r4 = r0->field_13
    //     0x4d4540: ldur         r4, [r0, #0x13]
    //     0x4d4544: add          r4, r4, HEAP, lsl #32
    //     0x4d4548: stur         r4, [fp, #-0x10]
    // 0x4d454c: LoadField: r5 = r0->field_b
    //     0x4d454c: ldur         r5, [r0, #0xb]
    // 0x4d4550: r2 = r3
    //     0x4d4550: mov          r2, r3
    //     0x4d4554: stur         r5, [fp, #-0x18]
    // 0x4d4558: r1 = pp[0xd5c]
    //     0x4d4558: add          r1, PP, #0x14, lsl #12
    //     0x4d455c: ldr          r1, [r1, #0xd48]
    // 0x4d4560: r0 = call 0x61ec54
    //     0x4d4560: bl           0x61ec54
    //     0x4d4564: ldur         r1, [fp, #-0x10]
    //     0x4d4568: ldur         r2, [fp, #-0x18]
    // 0x4d456c: r3 = r0
    //     0x4d456c: mov          r3, r0
    // 0x4d4570: r0 = soul_flutter_international$biz$party$notifier$notifier_party_invite_PartyInviteNotifier::requestItemList()
    //     0x4d4570: bl           0x422820
    //     0x4d4574: ldur         r1, [fp, #-8]
    // 0x4d4578: r0 = soul_flutter_international$biz$party$page_party_invite___InviteUserPageState&SoulState&AutomaticKeepAliveClientMixin::initState()
    //     0x4d4578: bl           0x4d4598
    // 0x4d457c: r0 = NULL
    //     0x4d457c: mov          r0, NULL
    // 0x4d4580: SP = fp
    //     0x4d4580: mov          SP, fp
    // 0x4d4584: LeaveFrame
    //     0x4d4584: ldp          fp, lr, [SP], #0x10
    // 0x4d4588: ret
    //     0x4d4588: ret          
    // 0x4d458c: r0 = call 0x61fa28
    //     0x4d458c: bl           0x61fa28
    // 0x4d4590: b 0x4d44fc
    //     0x4d4590: b            0x4d44fc
    // 0x4d4594: r0 = call 0x61ffd0
    //     0x4d4594: bl           0x61ffd0
  }

  createState() {
    // ** addr: 0x4c3db8, size: 0x48
    // 0x4c3db8: EnterFrame
    //     0x4c3db8: stp          fp, lr, [SP, #-0x10]!
    //     0x4c3dbc: mov          fp, SP
    // 0x4c3dc0: AllocStack(8)
    //     0x4c3dc0: sub          SP, SP, #8
    // 0x4c3dc4: CheckStackOverflow
    //     0x4c3dc4: ldr          BARRIER, [THR, #0x38]
    //     0x4c3dc8: cmp          SP, BARRIER
    //     0x4c3dcc: b.ls         0x4c3df8
    // 0x4c3dd0: r1 = pp[0x7fb]
    //     0x4c3dd0: add          r1, PP, #0xb, lsl #12
    //     0x4c3dd4: ldr          r1, [r1, #0x7f0]
    // 0x4c3dd8: r0 = call 0x4c414c
    //     0x4c3dd8: bl           0x4c414c
    // 0x4c3ddc: r1 = r0
    //     0x4c3ddc: mov          r1, r0
    //     0x4c3de0: stur         r0, [fp, #-8]
    // 0x4c3de4: r0 = soul_flutter_international$biz$party$page_party_invite__PartyInvitePageState::ctor()
    //     0x4c3de4: bl           0x4c3e00
    //     0x4c3de8: ldur         r0, [fp, #-8]
    // 0x4c3dec: SP = fp
    //     0x4c3dec: mov          SP, fp
    // 0x4c3df0: LeaveFrame
    //     0x4c3df0: ldp          fp, lr, [SP], #0x10
    // 0x4c3df4: ret
    //     0x4c3df4: ret          
    // 0x4c3df8: r0 = call 0x61fa28
    //     0x4c3df8: bl           0x61fa28
    // 0x4c3dfc: b 0x4c3dd0
    //     0x4c3dfc: b            0x4c3dd0
  }

  createState() {
    // ** addr: 0x4c4158, size: 0x2c
    // 0x4c4158: EnterFrame
    //     0x4c4158: stp          fp, lr, [SP, #-0x10]!
    //     0x4c415c: mov          fp, SP
    // 0x4c4160: r0 = r1
    //     0x4c4160: mov          r0, r1
    // 0x4c4164: r1 = pp[0x51a]
    //     0x4c4164: add          r1, PP, #0x12, lsl #12
    //     0x4c4168: ldr          r1, [r1, #0x508]
    // 0x4c416c: r0 = call 0x4c4184
    //     0x4c416c: bl           0x4c4184
    // 0x4c4170: r1 = pp[0x40]
    //     0x4c4170: ldr          r1, [PP, #0x40]
    // 0x4c4174: ArrayStore: r0[0] = r1  ; List_8
    //     0x4c4174: stur         r1, [r0, #0x17]
    // 0x4c4178: SP = fp
    //     0x4c4178: mov          SP, fp
    // 0x4c417c: LeaveFrame
    //     0x4c417c: ldp          fp, lr, [SP], #0x10
    // 0x4c4180: ret
    //     0x4c4180: ret          
  }
