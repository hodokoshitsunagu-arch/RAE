// lib: , url: soul_flutter_international$biz$pkGame$page_game_tab_bet_record


  _removeTicker() {
    // ** addr: 0x2b19cc, size: 0x48
    // 0x2b19cc: EnterFrame
    //     0x2b19cc: stp          fp, lr, [SP, #-0x10]!
    //     0x2b19d0: mov          fp, SP
    // 0x2b19d4: CheckStackOverflow
    //     0x2b19d4: ldr          BARRIER, [THR, #0x38]
    //     0x2b19d8: cmp          SP, BARRIER
    //     0x2b19dc: b.ls         0x2b1a08
    // 0x2b19e0: LoadField: r0 = r1->field_13
    //     0x2b19e0: ldur         r0, [r1, #0x13]
    //     0x2b19e4: add          r0, r0, HEAP, lsl #32
    //     0x2b19e8: cmp          r0, r22
    // 0x2b19ec: b.eq 0x2b1a10
    //     0x2b19ec: b.eq         0x2b1a10
    // 0x2b19f0: r1 = r0
    //     0x2b19f0: mov          r1, r0
    // 0x2b19f4: r0 = dart__compact_hash___Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::remove()
    //     0x2b19f4: bl           0x614948
    // 0x2b19f8: r0 = NULL
    //     0x2b19f8: mov          r0, NULL
    // 0x2b19fc: SP = fp
    //     0x2b19fc: mov          SP, fp
    // 0x2b1a00: LeaveFrame
    //     0x2b1a00: ldp          fp, lr, [SP], #0x10
    // 0x2b1a04: ret
    //     0x2b1a04: ret          
    // 0x2b1a08: r0 = call 0x61fa28
    //     0x2b1a08: bl           0x61fa28
    // 0x2b1a0c: b 0x2b19e0
    //     0x2b1a0c: b            0x2b19e0
    // 0x2b1a10: r0 = call 0x61ffd0
    //     0x2b1a10: bl           0x61ffd0
  }

  createTicker() {
    // ** addr: 0x2d55c4, size: 0x17c
    // 0x2d55c4: EnterFrame
    //     0x2d55c4: stp          fp, lr, [SP, #-0x10]!
    //     0x2d55c8: mov          fp, SP
    // 0x2d55cc: AllocStack(0x20)
    //     0x2d55cc: sub          SP, SP, #0x20
    // 0x2d55d0: r0 = r1
    //     0x2d55d0: mov          r0, r1
    //     0x2d55d4: stur         r1, [fp, #-8]
    //     0x2d55d8: stur         r2, [fp, #-0x10]
    // 0x2d55dc: CheckStackOverflow
    //     0x2d55dc: ldr          BARRIER, [THR, #0x38]
    //     0x2d55e0: cmp          SP, BARRIER
    //     0x2d55e4: b.ls         0x2d5730
    // 0x2d55e8: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x2d55e8: ldur         r1, [r0, #0x17]
    //     0x2d55ec: add          r1, r1, HEAP, lsl #32
    //     0x2d55f0: cmp          r1, r22
    // 0x2d55f4: b.ne 0x2d5600
    //     0x2d55f4: b.ne         0x2d5600
    // 0x2d55f8: r1 = r0
    //     0x2d55f8: mov          r1, r0
    // 0x2d55fc: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record___PagePKGameBetTabRecordState&State&TickerProviderStateMixin::_updateTickerModeNotifier()
    //     0x2d55fc: bl           0x2d5740
    //     0x2d5600: ldur         r0, [fp, #-8]
    // 0x2d5604: LoadField: r1 = r0->field_13
    //     0x2d5604: ldur         r1, [r0, #0x13]
    //     0x2d5608: add          r1, r1, HEAP, lsl #32
    //     0x2d560c: cmp          r1, r22
    // 0x2d5610: b.ne 0x2d56a8
    //     0x2d5610: b.ne         0x2d56a8
    //     0x2d5614: ldr          r0, [THR, #0x68]
    // 0x2d5618: LoadField: r0 = r0->field_6e8
    //     0x2d5618: ldr          r0, [r0, #0x6e8]
    // 0x2d561c: BARRIER = pp[0x40]
    //     0x2d561c: ldr          BARRIER, [PP, #0x40]
    //     0x2d5620: cmp          r0, r16
    // 0x2d5624: b.ne 0x2d5630
    //     0x2d5624: b.ne         0x2d5630
    // 0x2d5628: r2 = pp[0xbf8]
    //     0x2d5628: ldr          r2, [PP, #0xbf8]
    // 0x2d562c: r0 = call 0x61d99c
    //     0x2d562c: bl           0x61d99c
    // 0x2d5630: r1 = pp[0xea6]
    //     0x2d5630: add          r1, PP, #0xe, lsl #12
    //     0x2d5634: ldr          r1, [r1, #0xe98]
    //     0x2d5638: stur         r0, [fp, #-0x18]
    // 0x2d563c: r0 = call 0x2a5de4
    //     0x2d563c: bl           0x2a5de4
    // 0x2d5640: r1 = r0
    //     0x2d5640: mov          r1, r0
    //     0x2d5644: ldur         r0, [fp, #-0x18]
    //     0x2d5648: stur         r1, [fp, #-0x20]
    // 0x2d564c: StoreField: r1->field_1b = r0
    //     0x2d564c: stur         r0, [r1, #0x1b]
    // 0x2d5650: StoreField: r1->field_b = wzr
    //     0x2d5650: stur         wzr, [r1, #0xb]
    //     0x2d5654: ldr          r0, [THR, #0x68]
    // 0x2d5658: LoadField: r0 = r0->field_6f0
    //     0x2d5658: ldr          r0, [r0, #0x6f0]
    // 0x2d565c: BARRIER = pp[0x40]
    //     0x2d565c: ldr          BARRIER, [PP, #0x40]
    //     0x2d5660: cmp          r0, r16
    // 0x2d5664: b.ne 0x2d5670
    //     0x2d5664: b.ne         0x2d5670
    // 0x2d5668: r2 = pp[0xc00]
    //     0x2d5668: ldr          r2, [PP, #0xc00]
    // 0x2d566c: r0 = call 0x61d99c
    //     0x2d566c: bl           0x61d99c
    // 0x2d5670: r1 = r0
    //     0x2d5670: mov          r1, r0
    //     0x2d5674: ldur         r0, [fp, #-0x20]
    // 0x2d5678: StoreField: r0->field_f = r1
    //     0x2d5678: stur         r1, [r0, #0xf]
    // 0x2d567c: StoreField: r0->field_13 = wzr
    //     0x2d567c: stur         wzr, [r0, #0x13]
    // 0x2d5680: ArrayStore: r0[0] = wzr  ; List_8
    //     0x2d5680: stur         wzr, [r0, #0x17]
    //     0x2d5684: ldur         r1, [fp, #-8]
    // 0x2d5688: StoreField: r1->field_13 = r0
    //     0x2d5688: stur         r0, [r1, #0x13]
    //     0x2d568c: ldurb        r16, [r1, #-1]
    //     0x2d5690: ldurb        r17, [r0, #-1]
    //     0x2d5694: and          BARRIER, r17, BARRIER, lsr #2
    //     0x2d5698: tst          BARRIER, HEAP, lsr #32
    // 0x2d569c: b.eq 0x2d56a4
    //     0x2d569c: b.eq         0x2d56a4
    // 0x2d56a0: r0 = call 0x61e04c
    //     0x2d56a0: bl           0x61e04c
    // 0x2d56a4: b 0x2d56ac
    //     0x2d56a4: b            0x2d56ac
    // 0x2d56a8: r1 = r0
    //     0x2d56a8: mov          r1, r0
    //     0x2d56ac: ldur         r0, [fp, #-0x10]
    // 0x2d56b0: r0 = call 0x2cf960
    //     0x2d56b0: bl           0x2cf960
    // 0x2d56b4: r3 = r0
    //     0x2d56b4: mov          r3, r0
    //     0x2d56b8: ldur         r2, [fp, #-8]
    //     0x2d56bc: stur         r3, [fp, #-0x18]
    // 0x2d56c0: StoreField: r3->field_1b = r2
    //     0x2d56c0: stur         r2, [r3, #0x1b]
    //     0x2d56c4: add          r0, NULL, #0x30
    // 0x2d56c8: StoreField: r3->field_b = r0
    //     0x2d56c8: stur         r0, [r3, #0xb]
    //     0x2d56cc: ldur         r0, [fp, #-0x10]
    // 0x2d56d0: StoreField: r3->field_13 = r0
    //     0x2d56d0: stur         r0, [r3, #0x13]
    // 0x2d56d4: ArrayLoad: r1 = r2[0]  ; List_8
    //     0x2d56d4: ldur         r1, [r2, #0x17]
    //     0x2d56d8: add          r1, r1, HEAP, lsl #32
    //     0x2d56dc: cmp          r1, r22
    // 0x2d56e0: b.eq 0x2d5738
    //     0x2d56e0: b.eq         0x2d5738
    // 0x2d56e4: r0 = LoadClassIdInstr(r1)
    //     0x2d56e4: ldur         r0, [r1, #-1]
    //     0x2d56e8: ubfx         r0, r0, #0xc, #0x14
    //     0x2d56ec: sub          lr, r0, #0xfff
    //     0x2d56f0: ldr          lr, [r21, lr, lsl #3]
    // 0x2d56f4: r0 = [R]()
    //     0x2d56f4: blr          lr
    //     0x2d56f8: eor          r2, r0, #0x10
    //     0x2d56fc: ldur         r1, [fp, #-0x18]
    // 0x2d5700: r0 = flutter$src$scheduler$ticker_Ticker::muted_assign()
    //     0x2d5700: bl           0x2cf190
    //     0x2d5704: ldur         r0, [fp, #-8]
    // 0x2d5708: LoadField: r1 = r0->field_13
    //     0x2d5708: ldur         r1, [r0, #0x13]
    //     0x2d570c: add          r1, r1, HEAP, lsl #32
    //     0x2d5710: cmp          r1, r22
    // 0x2d5714: b.eq 0x2d573c
    //     0x2d5714: b.eq         0x2d573c
    //     0x2d5718: ldur         r2, [fp, #-0x18]
    // 0x2d571c: r0 = dart__compact_hash___Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::add()
    //     0x2d571c: bl           0x611d50
    //     0x2d5720: ldur         r0, [fp, #-0x18]
    // 0x2d5724: SP = fp
    //     0x2d5724: mov          SP, fp
    // 0x2d5728: LeaveFrame
    //     0x2d5728: ldp          fp, lr, [SP], #0x10
    // 0x2d572c: ret
    //     0x2d572c: ret          
    // 0x2d5730: r0 = call 0x61fa28
    //     0x2d5730: bl           0x61fa28
    // 0x2d5734: b 0x2d55e8
    //     0x2d5734: b            0x2d55e8
    // 0x2d5738: r0 = call 0x61ffd0
    //     0x2d5738: bl           0x61ffd0
    // 0x2d573c: r0 = call 0x61ffd0
    //     0x2d573c: bl           0x61ffd0
  }

  _updateTickerModeNotifier() {
    // ** addr: 0x2d5740, size: 0x11c
    // 0x2d5740: EnterFrame
    //     0x2d5740: stp          fp, lr, [SP, #-0x10]!
    //     0x2d5744: mov          fp, SP
    // 0x2d5748: AllocStack(0x18)
    //     0x2d5748: sub          SP, SP, #0x18
    // 0x2d574c: r2 = r1
    //     0x2d574c: mov          r2, r1
    //     0x2d5750: stur         r1, [fp, #-8]
    // 0x2d5754: CheckStackOverflow
    //     0x2d5754: ldr          BARRIER, [THR, #0x38]
    //     0x2d5758: cmp          SP, BARRIER
    //     0x2d575c: b.ls         0x2d5850
    // 0x2d5760: LoadField: r1 = r2->field_f
    //     0x2d5760: ldur         r1, [r2, #0xf]
    //     0x2d5764: add          r1, r1, HEAP, lsl #32
    //     0x2d5768: cmp          r1, r22
    // 0x2d576c: b.eq 0x2d5858
    //     0x2d576c: b.eq         0x2d5858
    // 0x2d5770: r0 = flutter$src$widgets$ticker_provider_TickerMode::getNotifier()
    //     0x2d5770: bl           0x2cf6f0
    // 0x2d5774: r3 = r0
    //     0x2d5774: mov          r3, r0
    //     0x2d5778: ldur         r0, [fp, #-8]
    //     0x2d577c: stur         r3, [fp, #-0x18]
    // 0x2d5780: ArrayLoad: r4 = r0[0]  ; List_8
    //     0x2d5780: ldur         r4, [r0, #0x17]
    //     0x2d5784: add          r4, r4, HEAP, lsl #32
    //     0x2d5788: stur         r4, [fp, #-0x10]
    //     0x2d578c: cmp          r3, r4
    // 0x2d5790: b.ne 0x2d57a4
    //     0x2d5790: b.ne         0x2d57a4
    // 0x2d5794: r0 = NULL
    //     0x2d5794: mov          r0, NULL
    // 0x2d5798: SP = fp
    //     0x2d5798: mov          SP, fp
    // 0x2d579c: LeaveFrame
    //     0x2d579c: ldp          fp, lr, [SP], #0x10
    // 0x2d57a0: ret
    //     0x2d57a0: ret          
    //     0x2d57a4: cmp          r4, r22
    // 0x2d57a8: b.eq 0x2d57e8
    //     0x2d57a8: b.eq         0x2d57e8
    // 0x2d57ac: r2 = r0
    //     0x2d57ac: mov          r2, r0
    // 0x2d57b0: r1 = pp[0xe9e]
    //     0x2d57b0: add          r1, PP, #0xe, lsl #12
    //     0x2d57b4: ldr          r1, [r1, #0xe90]
    // 0x2d57b8: r0 = call 0x61ec54
    //     0x2d57b8: bl           0x61ec54
    //     0x2d57bc: ldur         r1, [fp, #-0x10]
    // 0x2d57c0: r2 = LoadClassIdInstr(r1)
    //     0x2d57c0: ldur         r2, [r1, #-1]
    //     0x2d57c4: ubfx         r2, r2, #0xc, #0x14
    // 0x2d57c8: BARRIER = r0
    //     0x2d57c8: mov          BARRIER, r0
    // 0x2d57cc: r0 = r2
    //     0x2d57cc: mov          r0, r2
    // 0x2d57d0: r2 = BARRIER
    //     0x2d57d0: mov          r2, BARRIER
    //     0x2d57d4: add          lr, r0, #0xd6f
    //     0x2d57d8: ldr          lr, [r21, lr, lsl #3]
    // 0x2d57dc: r0 = [R]()
    //     0x2d57dc: blr          lr
    //     0x2d57e0: ldur         r0, [fp, #-8]
    //     0x2d57e4: ldur         r3, [fp, #-0x18]
    // 0x2d57e8: r2 = r0
    //     0x2d57e8: mov          r2, r0
    // 0x2d57ec: r1 = pp[0xe9e]
    //     0x2d57ec: add          r1, PP, #0xe, lsl #12
    //     0x2d57f0: ldr          r1, [r1, #0xe90]
    // 0x2d57f4: r0 = call 0x61ec54
    //     0x2d57f4: bl           0x61ec54
    //     0x2d57f8: ldur         r3, [fp, #-0x18]
    // 0x2d57fc: r1 = LoadClassIdInstr(r3)
    //     0x2d57fc: ldur         r1, [r3, #-1]
    //     0x2d5800: ubfx         r1, r1, #0xc, #0x14
    // 0x2d5804: r2 = r0
    //     0x2d5804: mov          r2, r0
    // 0x2d5808: r0 = r1
    //     0x2d5808: mov          r0, r1
    // 0x2d580c: r1 = r3
    //     0x2d580c: mov          r1, r3
    //     0x2d5810: add          lr, r0, #0xdbb
    //     0x2d5814: ldr          lr, [r21, lr, lsl #3]
    // 0x2d5818: r0 = [R]()
    //     0x2d5818: blr          lr
    //     0x2d581c: ldur         r0, [fp, #-0x18]
    //     0x2d5820: ldur         r1, [fp, #-8]
    // 0x2d5824: ArrayStore: r1[0] = r0  ; List_8
    //     0x2d5824: stur         r0, [r1, #0x17]
    //     0x2d5828: ldurb        r16, [r1, #-1]
    //     0x2d582c: ldurb        r17, [r0, #-1]
    //     0x2d5830: and          BARRIER, r17, BARRIER, lsr #2
    //     0x2d5834: tst          BARRIER, HEAP, lsr #32
    // 0x2d5838: b.eq 0x2d5840
    //     0x2d5838: b.eq         0x2d5840
    // 0x2d583c: r0 = call 0x61e04c
    //     0x2d583c: bl           0x61e04c
    // 0x2d5840: r0 = NULL
    //     0x2d5840: mov          r0, NULL
    // 0x2d5844: SP = fp
    //     0x2d5844: mov          SP, fp
    // 0x2d5848: LeaveFrame
    //     0x2d5848: ldp          fp, lr, [SP], #0x10
    // 0x2d584c: ret
    //     0x2d584c: ret          
    // 0x2d5850: r0 = call 0x61fa28
    //     0x2d5850: bl           0x61fa28
    // 0x2d5854: b 0x2d5760
    //     0x2d5854: b            0x2d5760
    // 0x2d5858: r0 = call 0x61ffd0
    //     0x2d5858: bl           0x61ffd0
  }

  _updateTickers() {
    // ** addr: 0x2d585c, size: 0x38
    // 0x2d585c: EnterFrame
    //     0x2d585c: stp          fp, lr, [SP, #-0x10]!
    //     0x2d5860: mov          fp, SP
    //     0x2d5864: ldr          r0, [fp, #0x10]
    // 0x2d5868: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x2d5868: ldur         r1, [r0, #0x17]
    //     0x2d586c: add          r1, r1, HEAP, lsl #32
    // 0x2d5870: CheckStackOverflow
    //     0x2d5870: ldr          BARRIER, [THR, #0x38]
    //     0x2d5874: cmp          SP, BARRIER
    //     0x2d5878: b.ls         0x2d588c
    // 0x2d587c: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record___PagePKGameBetTabRecordState&State&TickerProviderStateMixin::_updateTickers()
    //     0x2d587c: bl           0x2d5894
    // 0x2d5880: SP = fp
    //     0x2d5880: mov          SP, fp
    // 0x2d5884: LeaveFrame
    //     0x2d5884: ldp          fp, lr, [SP], #0x10
    // 0x2d5888: ret
    //     0x2d5888: ret          
    // 0x2d588c: r0 = call 0x61fa28
    //     0x2d588c: bl           0x61fa28
    // 0x2d5890: b 0x2d587c
    //     0x2d5890: b            0x2d587c
  }

  _updateTickers() {
    // ** addr: 0x2d5894, size: 0x15c
    // 0x2d5894: EnterFrame
    //     0x2d5894: stp          fp, lr, [SP, #-0x10]!
    //     0x2d5898: mov          fp, SP
    // 0x2d589c: AllocStack(0x20)
    //     0x2d589c: sub          SP, SP, #0x20
    // 0x2d58a0: r2 = r1
    //     0x2d58a0: mov          r2, r1
    //     0x2d58a4: stur         r1, [fp, #-8]
    // 0x2d58a8: CheckStackOverflow
    //     0x2d58a8: ldr          BARRIER, [THR, #0x38]
    //     0x2d58ac: cmp          SP, BARRIER
    //     0x2d58b0: b.ls         0x2d59d8
    // 0x2d58b4: LoadField: r0 = r2->field_13
    //     0x2d58b4: ldur         r0, [r2, #0x13]
    //     0x2d58b8: add          r0, r0, HEAP, lsl #32
    //     0x2d58bc: cmp          r0, r22
    // 0x2d58c0: b.eq 0x2d59c8
    //     0x2d58c0: b.eq         0x2d59c8
    // 0x2d58c4: ArrayLoad: r1 = r2[0]  ; List_8
    //     0x2d58c4: ldur         r1, [r2, #0x17]
    //     0x2d58c8: add          r1, r1, HEAP, lsl #32
    //     0x2d58cc: cmp          r1, r22
    // 0x2d58d0: b.eq 0x2d59e0
    //     0x2d58d0: b.eq         0x2d59e0
    // 0x2d58d4: r0 = LoadClassIdInstr(r1)
    //     0x2d58d4: ldur         r0, [r1, #-1]
    //     0x2d58d8: ubfx         r0, r0, #0xc, #0x14
    //     0x2d58dc: sub          lr, r0, #0xfff
    //     0x2d58e0: ldr          lr, [r21, lr, lsl #3]
    // 0x2d58e4: r0 = [R]()
    //     0x2d58e4: blr          lr
    //     0x2d58e8: eor          r2, r0, #0x10
    //     0x2d58ec: ldur         r0, [fp, #-8]
    //     0x2d58f0: stur         r2, [fp, #-0x10]
    // 0x2d58f4: LoadField: r1 = r0->field_13
    //     0x2d58f4: ldur         r1, [r0, #0x13]
    //     0x2d58f8: add          r1, r1, HEAP, lsl #32
    //     0x2d58fc: cmp          r1, r22
    // 0x2d5900: b.eq 0x2d59e4
    //     0x2d5900: b.eq         0x2d59e4
    // 0x2d5904: r0 = dart__compact_hash___Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::get_iterator()
    //     0x2d5904: bl           0x54bba4
    //     0x2d5908: stur         r0, [fp, #-0x18]
    // 0x2d590c: LoadField: r2 = r0->field_7
    //     0x2d590c: ldur         r2, [r0, #7]
    //     0x2d5910: add          r2, r2, HEAP, lsl #32
    //     0x2d5914: stur         r2, [fp, #-8]
    //     0x2d5918: ldur         r3, [fp, #-0x10]
    // 0x2d591c: CheckStackOverflow
    //     0x2d591c: ldr          BARRIER, [THR, #0x38]
    //     0x2d5920: cmp          SP, BARRIER
    //     0x2d5924: b.ls         0x2d59e8
    // 0x2d5928: r1 = r0
    //     0x2d5928: mov          r1, r0
    // 0x2d592c: r0 = dart__compact_hash__CompactIterator::moveNext()
    //     0x2d592c: bl           0x594d70
    //     0x2d5930: tbnz         r0, #4, 0x2d59c8
    //     0x2d5934: ldur         r3, [fp, #-0x18]
    // 0x2d5938: LoadField: r4 = r3->field_33
    //     0x2d5938: ldur         r4, [r3, #0x33]
    //     0x2d593c: add          r4, r4, HEAP, lsl #32
    //     0x2d5940: stur         r4, [fp, #-0x20]
    //     0x2d5944: cmp          r4, r22
    // 0x2d5948: b.ne 0x2d597c
    //     0x2d5948: b.ne         0x2d597c
    // 0x2d594c: r0 = r4
    //     0x2d594c: mov          r0, r4
    //     0x2d5950: ldur         r2, [fp, #-8]
    // 0x2d5954: r1 = NULL
    //     0x2d5954: mov          r1, NULL
    //     0x2d5958: cmp          r2, r22
    // 0x2d595c: b.eq 0x2d597c
    //     0x2d595c: b.eq         0x2d597c
    // 0x2d5960: ArrayLoad: r4 = r2[0]  ; List_8
    //     0x2d5960: ldur         r4, [r2, #0x17]
    //     0x2d5964: add          r4, r4, HEAP, lsl #32
    // 0x2d5968: r8 = pp[0x180]
    //     0x2d5968: ldr          r8, [PP, #0x180]
    // 0x2d596c: LoadField: r9 = r4->field_7
    //     0x2d596c: ldur         r9, [r4, #7]
    // 0x2d5970: r3 = pp[0xe8e]
    //     0x2d5970: add          r3, PP, #0xe, lsl #12
    //     0x2d5974: ldr          r3, [r3, #0xe80]
    // 0x2d5978: r0 = [R]()
    //     0x2d5978: blr          r9
    //     0x2d597c: ldur         r2, [fp, #-0x10]
    //     0x2d5980: ldur         r0, [fp, #-0x20]
    // 0x2d5984: LoadField: r1 = r0->field_b
    //     0x2d5984: ldur         r1, [r0, #0xb]
    //     0x2d5988: add          r1, r1, HEAP, lsl #32
    //     0x2d598c: cmp          r2, r1
    // 0x2d5990: b.eq 0x2d59bc
    //     0x2d5990: b.eq         0x2d59bc
    // 0x2d5994: StoreField: r0->field_b = r2
    //     0x2d5994: stur         r2, [r0, #0xb]
    //     0x2d5998: tbnz         r2, #4, 0x2d59a8
    // 0x2d599c: r1 = r0
    //     0x2d599c: mov          r1, r0
    // 0x2d59a0: r0 = flutter$src$scheduler$ticker_Ticker::unscheduleTick()
    //     0x2d59a0: bl           0x2cf4e0
    // 0x2d59a4: b 0x2d59bc
    //     0x2d59a4: b            0x2d59bc
    // 0x2d59a8: r1 = r0
    //     0x2d59a8: mov          r1, r0
    // 0x2d59ac: r0 = flutter$src$scheduler$ticker_Ticker::get_shouldScheduleTick()
    //     0x2d59ac: bl           0x2cf49c
    //     0x2d59b0: tbnz         r0, #4, 0x2d59bc
    //     0x2d59b4: ldur         r1, [fp, #-0x20]
    // 0x2d59b8: r0 = flutter$src$scheduler$ticker_Ticker::scheduleTick()
    //     0x2d59b8: bl           0x2cf210
    //     0x2d59bc: ldur         r0, [fp, #-0x18]
    //     0x2d59c0: ldur         r2, [fp, #-8]
    // 0x2d59c4: b 0x2d5918
    //     0x2d59c4: b            0x2d5918
    // 0x2d59c8: r0 = NULL
    //     0x2d59c8: mov          r0, NULL
    // 0x2d59cc: SP = fp
    //     0x2d59cc: mov          SP, fp
    // 0x2d59d0: LeaveFrame
    //     0x2d59d0: ldp          fp, lr, [SP], #0x10
    // 0x2d59d4: ret
    //     0x2d59d4: ret          
    // 0x2d59d8: r0 = call 0x61fa28
    //     0x2d59d8: bl           0x61fa28
    // 0x2d59dc: b 0x2d58b4
    //     0x2d59dc: b            0x2d58b4
    // 0x2d59e0: r0 = call 0x61ffd0
    //     0x2d59e0: bl           0x61ffd0
    // 0x2d59e4: r0 = call 0x61ffd0
    //     0x2d59e4: bl           0x61ffd0
    // 0x2d59e8: r0 = call 0x61fa28
    //     0x2d59e8: bl           0x61fa28
    // 0x2d59ec: b 0x2d5928
    //     0x2d59ec: b            0x2d5928
  }

  activate() {
    // ** addr: 0x3e8218, size: 0x48
    // 0x3e8218: EnterFrame
    //     0x3e8218: stp          fp, lr, [SP, #-0x10]!
    //     0x3e821c: mov          fp, SP
    // 0x3e8220: AllocStack(8)
    //     0x3e8220: sub          SP, SP, #8
    // 0x3e8224: r0 = r1
    //     0x3e8224: mov          r0, r1
    //     0x3e8228: stur         r1, [fp, #-8]
    // 0x3e822c: CheckStackOverflow
    //     0x3e822c: ldr          BARRIER, [THR, #0x38]
    //     0x3e8230: cmp          SP, BARRIER
    //     0x3e8234: b.ls         0x3e8258
    // 0x3e8238: r1 = r0
    //     0x3e8238: mov          r1, r0
    // 0x3e823c: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record___PagePKGameBetTabRecordState&State&TickerProviderStateMixin::_updateTickerModeNotifier()
    //     0x3e823c: bl           0x2d5740
    //     0x3e8240: ldur         r1, [fp, #-8]
    // 0x3e8244: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record___PagePKGameBetTabRecordState&State&TickerProviderStateMixin::_updateTickers()
    //     0x3e8244: bl           0x2d5894
    // 0x3e8248: r0 = NULL
    //     0x3e8248: mov          r0, NULL
    // 0x3e824c: SP = fp
    //     0x3e824c: mov          SP, fp
    // 0x3e8250: LeaveFrame
    //     0x3e8250: ldp          fp, lr, [SP], #0x10
    // 0x3e8254: ret
    //     0x3e8254: ret          
    // 0x3e8258: r0 = call 0x61fa28
    //     0x3e8258: bl           0x61fa28
    // 0x3e825c: b 0x3e8238
    //     0x3e825c: b            0x3e8238
  }

  dispose() {
    // ** addr: 0x4526c4, size: 0x90
    // 0x4526c4: EnterFrame
    //     0x4526c4: stp          fp, lr, [SP, #-0x10]!
    //     0x4526c8: mov          fp, SP
    // 0x4526cc: AllocStack(0x10)
    //     0x4526cc: sub          SP, SP, #0x10
    // 0x4526d0: r0 = r1
    //     0x4526d0: mov          r0, r1
    //     0x4526d4: stur         r1, [fp, #-0x10]
    // 0x4526d8: CheckStackOverflow
    //     0x4526d8: ldr          BARRIER, [THR, #0x38]
    //     0x4526dc: cmp          SP, BARRIER
    //     0x4526e0: b.ls         0x45274c
    // 0x4526e4: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x4526e4: ldur         r3, [r0, #0x17]
    //     0x4526e8: add          r3, r3, HEAP, lsl #32
    //     0x4526ec: stur         r3, [fp, #-8]
    //     0x4526f0: cmp          r3, r22
    // 0x4526f4: b.ne 0x452700
    //     0x4526f4: b.ne         0x452700
    // 0x4526f8: r1 = r0
    //     0x4526f8: mov          r1, r0
    // 0x4526fc: b 0x452738
    //     0x4526fc: b            0x452738
    // 0x452700: r2 = r0
    //     0x452700: mov          r2, r0
    // 0x452704: r1 = pp[0xe9e]
    //     0x452704: add          r1, PP, #0xe, lsl #12
    //     0x452708: ldr          r1, [r1, #0xe90]
    // 0x45270c: r0 = call 0x61ec54
    //     0x45270c: bl           0x61ec54
    //     0x452710: ldur         r1, [fp, #-8]
    // 0x452714: r2 = LoadClassIdInstr(r1)
    //     0x452714: ldur         r2, [r1, #-1]
    //     0x452718: ubfx         r2, r2, #0xc, #0x14
    // 0x45271c: BARRIER = r0
    //     0x45271c: mov          BARRIER, r0
    // 0x452720: r0 = r2
    //     0x452720: mov          r0, r2
    // 0x452724: r2 = BARRIER
    //     0x452724: mov          r2, BARRIER
    //     0x452728: add          lr, r0, #0xd6f
    //     0x45272c: ldr          lr, [r21, lr, lsl #3]
    // 0x452730: r0 = [R]()
    //     0x452730: blr          lr
    //     0x452734: ldur         r1, [fp, #-0x10]
    // 0x452738: ArrayStore: r1[0] = r22  ; List_8
    //     0x452738: stur         r22, [r1, #0x17]
    // 0x45273c: r0 = NULL
    //     0x45273c: mov          r0, NULL
    // 0x452740: SP = fp
    //     0x452740: mov          SP, fp
    // 0x452744: LeaveFrame
    //     0x452744: ldp          fp, lr, [SP], #0x10
    // 0x452748: ret
    //     0x452748: ret          
    // 0x45274c: r0 = call 0x61fa28
    //     0x45274c: bl           0x61fa28
    // 0x452750: b 0x4526e4
    //     0x452750: b            0x4526e4
  }

  _anon_closure() {
    // ** addr: 0x3a8d00, size: 0x40
    // 0x3a8d00: EnterFrame
    //     0x3a8d00: stp          fp, lr, [SP, #-0x10]!
    //     0x3a8d04: mov          fp, SP
    // 0x3a8d08: AllocStack(0x10)
    //     0x3a8d08: sub          SP, SP, #0x10
    // 0x3a8d0c: CheckStackOverflow
    //     0x3a8d0c: ldr          BARRIER, [THR, #0x38]
    //     0x3a8d10: cmp          SP, BARRIER
    //     0x3a8d14: b.ls         0x3a8d38
    // 0x3a8d18: r0 = flutter_boost$src$boost_navigator_BoostNavigator::get_instance()
    //     0x3a8d18: bl           0x3a4c98
    // 0x3a8d1c: BARRIER = pp[0x120]
    //     0x3a8d1c: ldr          BARRIER, [PP, #0x120]
    //     0x3a8d20: stp          r0, BARRIER, [SP]
    // 0x3a8d24: r4 = pp[0x910]
    //     0x3a8d24: ldr          r4, [PP, #0x910]
    // 0x3a8d28: r0 = flutter_boost$src$boost_navigator_BoostNavigator::pop()
    //     0x3a8d28: bl           0x3a264c
    // 0x3a8d2c: SP = fp
    //     0x3a8d2c: mov          SP, fp
    // 0x3a8d30: LeaveFrame
    //     0x3a8d30: ldp          fp, lr, [SP], #0x10
    // 0x3a8d34: ret
    //     0x3a8d34: ret          
    // 0x3a8d38: r0 = call 0x61fa28
    //     0x3a8d38: bl           0x61fa28
    // 0x3a8d3c: b 0x3a8d18
    //     0x3a8d3c: b            0x3a8d18
  }

  build() {
    // ** addr: 0x442070, size: 0x660
    // 0x442070: EnterFrame
    //     0x442070: stp          fp, lr, [SP, #-0x10]!
    //     0x442074: mov          fp, SP
    // 0x442078: AllocStack(0x98)
    //     0x442078: sub          SP, SP, #0x98
    // 0x44207c: r0 = r2
    //     0x44207c: mov          r0, r2
    //     0x442080: stur         r2, [fp, #-0x10]
    // 0x442084: r2 = r1
    //     0x442084: mov          r2, r1
    //     0x442088: stur         r1, [fp, #-8]
    // 0x44208c: CheckStackOverflow
    //     0x44208c: ldr          BARRIER, [THR, #0x38]
    //     0x442090: cmp          SP, BARRIER
    //     0x442094: b.ls         0x442664
    // 0x442098: r1 = r0
    //     0x442098: mov          r1, r0
    // 0x44209c: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenHeight()
    //     0x44209c: bl           0x3b5484
    //     0x4420a0: ldur         r1, [fp, #-0x10]
    //     0x4420a4: stur         d0, [fp, #-0x68]
    // 0x4420a8: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenWidth()
    //     0x4420a8: bl           0x3a877c
    //     0x4420ac: mov          v1.16b, v0.16b
    // 0x4420b0: d0 = pp[0xeae]
    //     0x4420b0: add          r17, PP, #0xe, lsl #12
    //     0x4420b4: ldr          d0, [r17, #0xea0]
    //     0x4420b8: fmul         d2, d1, d0
    // 0x4420bc: d0 = pp[0xeb6]
    //     0x4420bc: add          r17, PP, #0xe, lsl #12
    //     0x4420c0: ldr          d0, [r17, #0xea8]
    //     0x4420c4: fdiv         d1, d2, d0
    //     0x4420c8: ldur         d0, [fp, #-0x68]
    //     0x4420cc: stur         d1, [fp, #-0x78]
    //     0x4420d0: fsub         d2, d0, d1
    //     0x4420d4: stur         d2, [fp, #-0x70]
    // 0x4420d8: r0 = call 0x31d844
    //     0x4420d8: bl           0x31d844
    // 0x4420dc: r1 = r0
    //     0x4420dc: mov          r1, r0
    // 0x4420e0: r0 = pp[0x6310]
    //     0x4420e0: ldr          r0, [PP, #0x6310]
    //     0x4420e4: stur         r1, [fp, #-0x18]
    // 0x4420e8: StoreField: r1->field_27 = r0
    //     0x4420e8: stur         r0, [r1, #0x27]
    // 0x4420ec: d0 = pp[0x6080]
    //     0x4420ec: ldr          d0, [PP, #0x6080]
    // 0x4420f0: StoreField: r1->field_7 = d0
    //     0x4420f0: stur         d0, [r1, #7]
    // 0x4420f4: StoreField: r1->field_f = xzr
    //     0x4420f4: stur         xzr, [r1, #0xf]
    // 0x4420f8: ArrayStore: r1[0] = xzr  ; List_8
    //     0x4420f8: stur         xzr, [r1, #0x17]
    // 0x4420fc: StoreField: r1->field_1f = xzr
    //     0x4420fc: stur         xzr, [r1, #0x1f]
    //     0x442100: ldur         d0, [fp, #-0x70]
    //     0x442104: ldp          r0, r2, [THR, #0x50]
    //     0x442108: add          r0, r0, #0x10
    //     0x44210c: cmp          r2, r0
    // 0x442110: b.ls 0x44266c
    //     0x442110: b.ls         0x44266c
    //     0x442114: str          r0, [THR, #0x50]
    //     0x442118: sub          r0, r0, #0xf
    //     0x44211c: mov          r2, #0xe15c
    //     0x442120: movk         r2, #3, lsl #16
    //     0x442124: stur         r2, [r0, #-1]
    // 0x442128: StoreField: r0->field_7 = d0
    //     0x442128: stur         d0, [r0, #7]
    //     0x44212c: stur         r0, [fp, #-0x10]
    // 0x442130: r0 = call 0x391a04
    //     0x442130: bl           0x391a04
    //     0x442134: stur         r0, [fp, #-0x20]
    //     0x442138: ldur         BARRIER, [fp, #-0x10]
    // 0x44213c: lr = pp[0x3ca]
    //     0x44213c: add          lr, PP, #0xa, lsl #12
    //     0x442140: ldr          lr, [lr, #0x3c0]
    //     0x442144: stp          lr, BARRIER, [SP]
    // 0x442148: r1 = r0
    //     0x442148: mov          r1, r0
    // 0x44214c: r4 = pp[0xebe]
    //     0x44214c: add          r4, PP, #0xe, lsl #12
    //     0x442150: ldr          r4, [r4, #0xeb0]
    // 0x442154: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x442154: bl           0x391490
    // 0x442158: r0 = call 0x3a1d94
    //     0x442158: bl           0x3a1d94
    // 0x44215c: r1 = pp[0xec6]
    //     0x44215c: add          r1, PP, #0xe, lsl #12
    //     0x442160: ldr          r1, [r1, #0xeb8]
    // 0x442164: r2 = NULL
    //     0x442164: mov          r2, NULL
    //     0x442168: stur         r0, [fp, #-0x28]
    // 0x44216c: r0 = call 0x61ec54
    //     0x44216c: bl           0x61ec54
    //     0x442170: ldur         BARRIER, [fp, #-0x20]
    //     0x442174: stp          r0, BARRIER, [SP]
    //     0x442178: ldur         r1, [fp, #-0x28]
    // 0x44217c: r4 = pp[0xece]
    //     0x44217c: add          r4, PP, #0xe, lsl #12
    //     0x442180: ldr          r4, [r4, #0xec0]
    // 0x442184: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x442184: bl           0x3a18c4
    // 0x442188: r0 = call 0x352b04
    //     0x442188: bl           0x352b04
    // 0x44218c: d0 = pp[0xed6]
    //     0x44218c: add          r17, PP, #0xe, lsl #12
    //     0x442190: ldr          d0, [r17, #0xec8]
    //     0x442194: stur         r0, [fp, #-0x20]
    // 0x442198: StoreField: r0->field_7 = d0
    //     0x442198: stur         d0, [r0, #7]
    // 0x44219c: StoreField: r0->field_f = d0
    //     0x44219c: stur         d0, [r0, #0xf]
    // 0x4421a0: r0 = call 0x352b04
    //     0x4421a0: bl           0x352b04
    // 0x4421a4: d0 = pp[0xed6]
    //     0x4421a4: add          r17, PP, #0xe, lsl #12
    //     0x4421a8: ldr          d0, [r17, #0xec8]
    //     0x4421ac: stur         r0, [fp, #-0x30]
    // 0x4421b0: StoreField: r0->field_7 = d0
    //     0x4421b0: stur         d0, [r0, #7]
    // 0x4421b4: StoreField: r0->field_f = d0
    //     0x4421b4: stur         d0, [r0, #0xf]
    // 0x4421b8: r0 = call 0x392f28
    //     0x4421b8: bl           0x392f28
    // 0x4421bc: r2 = r0
    //     0x4421bc: mov          r2, r0
    //     0x4421c0: ldur         r0, [fp, #-0x20]
    //     0x4421c4: stur         r2, [fp, #-0x38]
    // 0x4421c8: StoreField: r2->field_7 = r0
    //     0x4421c8: stur         r0, [r2, #7]
    //     0x4421cc: ldur         r0, [fp, #-0x30]
    // 0x4421d0: StoreField: r2->field_b = r0
    //     0x4421d0: stur         r0, [r2, #0xb]
    // 0x4421d4: r0 = pp[0x51a]
    //     0x4421d4: add          r0, PP, #0xa, lsl #12
    //     0x4421d8: ldr          r0, [r0, #0x510]
    // 0x4421dc: StoreField: r2->field_f = r0
    //     0x4421dc: stur         r0, [r2, #0xf]
    // 0x4421e0: StoreField: r2->field_13 = r0
    //     0x4421e0: stur         r0, [r2, #0x13]
    // 0x4421e4: r1 = pp[0xede]
    //     0x4421e4: add          r1, PP, #0xe, lsl #12
    //     0x4421e8: ldr          r1, [r1, #0xed0]
    // 0x4421ec: r0 = call 0x3b5478
    //     0x4421ec: bl           0x3b5478
    // 0x4421f0: r1 = r0
    //     0x4421f0: mov          r1, r0
    // 0x4421f4: r0 = pp[0xee6]
    //     0x4421f4: add          r0, PP, #0xe, lsl #12
    //     0x4421f8: ldr          r0, [r0, #0xed8]
    //     0x4421fc: stur         r1, [fp, #-0x20]
    // 0x442200: StoreField: r1->field_b = r0
    //     0x442200: stur         r0, [r1, #0xb]
    // 0x442204: r0 = call 0x3b546c
    //     0x442204: bl           0x3b546c
    // 0x442208: r1 = r0
    //     0x442208: mov          r1, r0
    //     0x44220c: ldur         r0, [fp, #-0x20]
    //     0x442210: stur         r1, [fp, #-0x30]
    // 0x442214: StoreField: r1->field_7 = r0
    //     0x442214: stur         r0, [r1, #7]
    // 0x442218: r0 = pp[0xeee]
    //     0x442218: add          r0, PP, #0xe, lsl #12
    //     0x44221c: ldr          r0, [r0, #0xee0]
    // 0x442220: StoreField: r1->field_13 = r0
    //     0x442220: stur         r0, [r1, #0x13]
    // 0x442224: r0 = pp[0xaae]
    //     0x442224: add          r0, PP, #0xe, lsl #12
    //     0x442228: ldr          r0, [r0, #0xaa0]
    // 0x44222c: ArrayStore: r1[0] = r0  ; List_8
    //     0x44222c: stur         r0, [r1, #0x17]
    // 0x442230: r0 = pp[0xef6]
    //     0x442230: add          r0, PP, #0xe, lsl #12
    //     0x442234: ldr          r0, [r0, #0xee8]
    // 0x442238: StoreField: r1->field_1f = r0
    //     0x442238: stur         r0, [r1, #0x1f]
    //     0x44223c: add          r0, NULL, #0x30
    // 0x442240: StoreField: r1->field_23 = r0
    //     0x442240: stur         r0, [r1, #0x23]
    //     0x442244: fmov         d0, #1.00000000
    // 0x442248: StoreField: r1->field_27 = d0
    //     0x442248: stur         d0, [r1, #0x27]
    // 0x44224c: StoreField: r1->field_2f = d0
    //     0x44224c: stur         d0, [r1, #0x2f]
    // 0x442250: r2 = pp[0xefe]
    //     0x442250: add          r2, PP, #0xe, lsl #12
    //     0x442254: ldr          r2, [r2, #0xef0]
    // 0x442258: StoreField: r1->field_37 = r2
    //     0x442258: stur         r2, [r1, #0x37]
    // 0x44225c: StoreField: r1->field_3b = r0
    //     0x44225c: stur         r0, [r1, #0x3b]
    // 0x442260: StoreField: r1->field_3f = r0
    //     0x442260: stur         r0, [r1, #0x3f]
    // 0x442264: r0 = call 0x391dd8
    //     0x442264: bl           0x391dd8
    // 0x442268: r1 = r0
    //     0x442268: mov          r1, r0
    //     0x44226c: ldur         r0, [fp, #-0x30]
    //     0x442270: stur         r1, [fp, #-0x20]
    // 0x442274: StoreField: r1->field_b = r0
    //     0x442274: stur         r0, [r1, #0xb]
    // 0x442278: r0 = pp[0xb86]
    //     0x442278: add          r0, PP, #0xe, lsl #12
    //     0x44227c: ldr          r0, [r0, #0xb78]
    // 0x442280: StoreField: r1->field_23 = r0
    //     0x442280: stur         r0, [r1, #0x23]
    // 0x442284: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record_::backButton()
    //     0x442284: bl           0x442954
    // 0x442288: r3 = r0
    //     0x442288: mov          r3, r0
    //     0x44228c: ldur         r0, [fp, #-8]
    //     0x442290: stur         r3, [fp, #-0x48]
    // 0x442294: LoadField: r4 = r0->field_1b
    //     0x442294: ldur         r4, [r0, #0x1b]
    //     0x442298: add          r4, r4, HEAP, lsl #32
    // 0x44229c: BARRIER = pp[0x40]
    //     0x44229c: ldr          BARRIER, [PP, #0x40]
    //     0x4422a0: cmp          r4, r16
    // 0x4422a4: b.eq 0x442684
    //     0x4422a4: b.eq         0x442684
    //     0x4422a8: stur         r4, [fp, #-0x40]
    // 0x4422ac: LoadField: r5 = r0->field_23
    //     0x4422ac: ldur         r5, [r0, #0x23]
    //     0x4422b0: add          r5, r5, HEAP, lsl #32
    // 0x4422b4: r2 = r0
    //     0x4422b4: mov          r2, r0
    //     0x4422b8: stur         r5, [fp, #-0x30]
    // 0x4422bc: r1 = pp[0xf06]
    //     0x4422bc: add          r1, PP, #0xe, lsl #12
    //     0x4422c0: ldr          r1, [r1, #0xef8]
    // 0x4422c4: r0 = call 0x61ec54
    //     0x4422c4: bl           0x61ec54
    // 0x4422c8: r1 = r0
    //     0x4422c8: mov          r1, r0
    //     0x4422cc: ldur         r2, [fp, #-0x40]
    //     0x4422d0: ldur         r3, [fp, #-0x30]
    // 0x4422d4: d0 = pp[0xed6]
    //     0x4422d4: add          r17, PP, #0xe, lsl #12
    //     0x4422d8: ldr          d0, [r17, #0xec8]
    // 0x4422dc: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record_::_tabBarWidget()
    //     0x4422dc: bl           0x4426d0
    // 0x4422e0: r1 = NULL
    //     0x4422e0: mov          r1, NULL
    //     0x4422e4: mov          r2, #4
    //     0x4422e8: stur         r0, [fp, #-0x40]
    // 0x4422ec: r0 = call 0x61f920
    //     0x4422ec: bl           0x61f920
    // 0x4422f0: r2 = r0
    //     0x4422f0: mov          r2, r0
    //     0x4422f4: ldur         r0, [fp, #-0x48]
    //     0x4422f8: stur         r2, [fp, #-0x50]
    // 0x4422fc: StoreField: r2->field_f = r0
    //     0x4422fc: stur         r0, [r2, #0xf]
    //     0x442300: ldur         r0, [fp, #-0x40]
    // 0x442304: StoreField: r2->field_13 = r0
    //     0x442304: stur         r0, [r2, #0x13]
    // 0x442308: r1 = pp[0x5c58]
    //     0x442308: ldr          r1, [PP, #0x5c58]
    // 0x44230c: r0 = call 0x61e854
    //     0x44230c: bl           0x61e854
    // 0x442310: r1 = r0
    //     0x442310: mov          r1, r0
    //     0x442314: ldur         r0, [fp, #-0x50]
    //     0x442318: stur         r1, [fp, #-0x40]
    // 0x44231c: StoreField: r1->field_f = r0
    //     0x44231c: stur         r0, [r1, #0xf]
    //     0x442320: mov          r2, #4
    // 0x442324: StoreField: r1->field_b = r2
    //     0x442324: stur         r2, [r1, #0xb]
    // 0x442328: r0 = call 0x39e6f4
    //     0x442328: bl           0x39e6f4
    // 0x44232c: r1 = r0
    //     0x44232c: mov          r1, r0
    // 0x442330: r0 = pp[0xf0e]
    //     0x442330: add          r0, PP, #0xe, lsl #12
    //     0x442334: ldr          r0, [r0, #0xf00]
    //     0x442338: stur         r1, [fp, #-0x48]
    // 0x44233c: StoreField: r1->field_f = r0
    //     0x44233c: stur         r0, [r1, #0xf]
    // 0x442340: r0 = pp[0xf16]
    //     0x442340: add          r0, PP, #0xe, lsl #12
    //     0x442344: ldr          r0, [r0, #0xf08]
    // 0x442348: ArrayStore: r1[0] = r0  ; List_8
    //     0x442348: stur         r0, [r1, #0x17]
    // 0x44234c: r0 = pp[0xf1e]
    //     0x44234c: add          r0, PP, #0xe, lsl #12
    //     0x442350: ldr          r0, [r0, #0xf10]
    // 0x442354: StoreField: r1->field_1b = r0
    //     0x442354: stur         r0, [r1, #0x1b]
    //     0x442358: ldur         r0, [fp, #-0x40]
    // 0x44235c: StoreField: r1->field_b = r0
    //     0x44235c: stur         r0, [r1, #0xb]
    // 0x442360: r0 = call 0x43d680
    //     0x442360: bl           0x43d680
    // 0x442364: r3 = r0
    //     0x442364: mov          r3, r0
    // 0x442368: r0 = pp[0xf26]
    //     0x442368: add          r0, PP, #0xe, lsl #12
    //     0x44236c: ldr          r0, [r0, #0xf18]
    //     0x442370: stur         r3, [fp, #-0x50]
    // 0x442374: StoreField: r3->field_b = r0
    //     0x442374: stur         r0, [r3, #0xb]
    //     0x442378: ldur         r2, [fp, #-8]
    // 0x44237c: LoadField: r0 = r2->field_1f
    //     0x44237c: ldur         r0, [r2, #0x1f]
    //     0x442380: add          r0, r0, HEAP, lsl #32
    // 0x442384: BARRIER = pp[0x40]
    //     0x442384: ldr          BARRIER, [PP, #0x40]
    //     0x442388: cmp          r0, r16
    // 0x44238c: b.eq 0x442690
    //     0x44238c: b.eq         0x442690
    //     0x442390: ldur         r1, [fp, #-0x30]
    //     0x442394: stur         r0, [fp, #-0x40]
    // 0x442398: LoadField: r4 = r1->field_b
    //     0x442398: ldur         r4, [r1, #0xb]
    //     0x44239c: sbfx         r5, r4, #1, #0x1f
    //     0x4423a0: stur         r5, [fp, #-0x58]
    // 0x4423a4: r1 = pp[0xf2e]
    //     0x4423a4: add          r1, PP, #0xe, lsl #12
    //     0x4423a8: ldr          r1, [r1, #0xf20]
    // 0x4423ac: r0 = call 0x61ec54
    //     0x4423ac: bl           0x61ec54
    // 0x4423b0: r1 = pp[0xf36]
    //     0x4423b0: add          r1, PP, #0xe, lsl #12
    //     0x4423b4: ldr          r1, [r1, #0xf28]
    // 0x4423b8: r2 = NULL
    //     0x4423b8: mov          r2, NULL
    //     0x4423bc: stur         r0, [fp, #-8]
    // 0x4423c0: r0 = call 0x61ec54
    //     0x4423c0: bl           0x61ec54
    //     0x4423c4: stur         r0, [fp, #-0x30]
    // 0x4423c8: r0 = call 0x400664
    //     0x4423c8: bl           0x400664
    //     0x4423cc: stur         r0, [fp, #-0x60]
    //     0x4423d0: ldur         BARRIER, [fp, #-0x50]
    //     0x4423d4: str          BARRIER, [SP]
    // 0x4423d8: r1 = r0
    //     0x4423d8: mov          r1, r0
    //     0x4423dc: ldur         r2, [fp, #-0x40]
    //     0x4423e0: ldur         r3, [fp, #-0x30]
    //     0x4423e4: ldur         r5, [fp, #-0x58]
    //     0x4423e8: ldur         r6, [fp, #-8]
    // 0x4423ec: r4 = pp[0xf3e]
    //     0x4423ec: add          r4, PP, #0xe, lsl #12
    //     0x4423f0: ldr          r4, [r4, #0xf30]
    // 0x4423f4: r0 = flutter$src$widgets$page_view_PageView::ctor_builder()
    //     0x4423f4: bl           0x420bbc
    // 0x4423f8: r1 = pp[0xade]
    //     0x4423f8: add          r1, PP, #0xe, lsl #12
    //     0x4423fc: ldr          r1, [r1, #0xad0]
    // 0x442400: r0 = call 0x39fb14
    //     0x442400: bl           0x39fb14
    // 0x442404: r3 = r0
    //     0x442404: mov          r3, r0
    //     0x442408: mov          r0, #1
    //     0x44240c: stur         r3, [fp, #-8]
    // 0x442410: StoreField: r3->field_13 = r0
    //     0x442410: stur         r0, [r3, #0x13]
    // 0x442414: r4 = pp[0xae6]
    //     0x442414: add          r4, PP, #0xe, lsl #12
    //     0x442418: ldr          r4, [r4, #0xad8]
    // 0x44241c: StoreField: r3->field_1b = r4
    //     0x44241c: stur         r4, [r3, #0x1b]
    //     0x442420: ldur         r1, [fp, #-0x60]
    // 0x442424: StoreField: r3->field_b = r1
    //     0x442424: stur         r1, [r3, #0xb]
    // 0x442428: r1 = NULL
    //     0x442428: mov          r1, NULL
    //     0x44242c: mov          r2, #4
    // 0x442430: r0 = call 0x61f920
    //     0x442430: bl           0x61f920
    // 0x442434: r2 = r0
    //     0x442434: mov          r2, r0
    //     0x442438: ldur         r0, [fp, #-0x48]
    //     0x44243c: stur         r2, [fp, #-0x30]
    // 0x442440: StoreField: r2->field_f = r0
    //     0x442440: stur         r0, [r2, #0xf]
    //     0x442444: ldur         r0, [fp, #-8]
    // 0x442448: StoreField: r2->field_13 = r0
    //     0x442448: stur         r0, [r2, #0x13]
    // 0x44244c: r1 = pp[0x5c58]
    //     0x44244c: ldr          r1, [PP, #0x5c58]
    // 0x442450: r0 = call 0x61e854
    //     0x442450: bl           0x61e854
    // 0x442454: r1 = r0
    //     0x442454: mov          r1, r0
    //     0x442458: ldur         r0, [fp, #-0x30]
    //     0x44245c: stur         r1, [fp, #-8]
    // 0x442460: StoreField: r1->field_f = r0
    //     0x442460: stur         r0, [r1, #0xf]
    //     0x442464: mov          r2, #4
    // 0x442468: StoreField: r1->field_b = r2
    //     0x442468: stur         r2, [r1, #0xb]
    // 0x44246c: r0 = call 0x39310c
    //     0x44246c: bl           0x39310c
    // 0x442470: r1 = r0
    //     0x442470: mov          r1, r0
    // 0x442474: r0 = pp[0x862]
    //     0x442474: add          r0, PP, #0xa, lsl #12
    //     0x442478: ldr          r0, [r0, #0x858]
    //     0x44247c: stur         r1, [fp, #-0x30]
    // 0x442480: StoreField: r1->field_f = r0
    //     0x442480: stur         r0, [r1, #0xf]
    // 0x442484: r2 = pp[0xaee]
    //     0x442484: add          r2, PP, #0xe, lsl #12
    //     0x442488: ldr          r2, [r2, #0xae0]
    // 0x44248c: StoreField: r1->field_13 = r2
    //     0x44248c: stur         r2, [r1, #0x13]
    // 0x442490: r3 = pp[0xaf6]
    //     0x442490: add          r3, PP, #0xe, lsl #12
    //     0x442494: ldr          r3, [r3, #0xae8]
    // 0x442498: ArrayStore: r1[0] = r3  ; List_8
    //     0x442498: stur         r3, [r1, #0x17]
    // 0x44249c: r4 = pp[0xb6e]
    //     0x44249c: add          r4, PP, #0xe, lsl #12
    //     0x4424a0: ldr          r4, [r4, #0xb60]
    // 0x4424a4: StoreField: r1->field_1b = r4
    //     0x4424a4: stur         r4, [r1, #0x1b]
    // 0x4424a8: r5 = pp[0xb06]
    //     0x4424a8: add          r5, PP, #0xe, lsl #12
    //     0x4424ac: ldr          r5, [r5, #0xaf8]
    // 0x4424b0: StoreField: r1->field_23 = r5
    //     0x4424b0: stur         r5, [r1, #0x23]
    // 0x4424b4: r6 = pp[0xb2]
    //     0x4424b4: add          r6, PP, #0xa, lsl #12
    //     0x4424b8: ldr          r6, [r6, #0xa8]
    // 0x4424bc: StoreField: r1->field_2b = r6
    //     0x4424bc: stur         r6, [r1, #0x2b]
    // 0x4424c0: StoreField: r1->field_2f = xzr
    //     0x4424c0: stur         xzr, [r1, #0x2f]
    //     0x4424c4: ldur         r7, [fp, #-8]
    // 0x4424c8: StoreField: r1->field_b = r7
    //     0x4424c8: stur         r7, [r1, #0xb]
    //     0x4424cc: ldur         d0, [fp, #-0x78]
    //     0x4424d0: ldp          r7, r8, [THR, #0x50]
    //     0x4424d4: add          r7, r7, #0x10
    //     0x4424d8: cmp          r8, r7
    // 0x4424dc: b.ls 0x44269c
    //     0x4424dc: b.ls         0x44269c
    //     0x4424e0: str          r7, [THR, #0x50]
    //     0x4424e4: sub          r7, r7, #0xf
    //     0x4424e8: mov          r8, #0xe15c
    //     0x4424ec: movk         r8, #3, lsl #16
    //     0x4424f0: stur         r8, [r7, #-1]
    // 0x4424f4: StoreField: r7->field_7 = d0
    //     0x4424f4: stur         d0, [r7, #7]
    //     0x4424f8: stur         r7, [fp, #-8]
    // 0x4424fc: r0 = call 0x391a04
    //     0x4424fc: bl           0x391a04
    //     0x442500: stur         r0, [fp, #-0x40]
    //     0x442504: ldur         BARRIER, [fp, #-8]
    // 0x442508: lr = pp[0x5458]
    //     0x442508: ldr          lr, [PP, #0x5458]
    //     0x44250c: stp          lr, BARRIER, [SP, #0x10]
    //     0x442510: ldur         BARRIER, [fp, #-0x20]
    //     0x442514: ldur         lr, [fp, #-0x30]
    //     0x442518: stp          lr, BARRIER, [SP]
    // 0x44251c: r1 = r0
    //     0x44251c: mov          r1, r0
    // 0x442520: r4 = pp[0xf46]
    //     0x442520: add          r4, PP, #0xe, lsl #12
    //     0x442524: ldr          r4, [r4, #0xf38]
    // 0x442528: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x442528: bl           0x391490
    // 0x44252c: r0 = call 0x3b378c
    //     0x44252c: bl           0x3b378c
    // 0x442530: r2 = r0
    //     0x442530: mov          r2, r0
    //     0x442534: ldur         r0, [fp, #-0x38]
    //     0x442538: stur         r2, [fp, #-8]
    // 0x44253c: StoreField: r2->field_f = r0
    //     0x44253c: stur         r0, [r2, #0xf]
    // 0x442540: r0 = pp[0xf4e]
    //     0x442540: add          r0, PP, #0xe, lsl #12
    //     0x442544: ldr          r0, [r0, #0xf40]
    // 0x442548: ArrayStore: r2[0] = r0  ; List_8
    //     0x442548: stur         r0, [r2, #0x17]
    //     0x44254c: ldur         r0, [fp, #-0x40]
    // 0x442550: StoreField: r2->field_b = r0
    //     0x442550: stur         r0, [r2, #0xb]
    // 0x442554: r1 = pp[0xade]
    //     0x442554: add          r1, PP, #0xe, lsl #12
    //     0x442558: ldr          r1, [r1, #0xad0]
    // 0x44255c: r0 = call 0x39fb14
    //     0x44255c: bl           0x39fb14
    // 0x442560: r3 = r0
    //     0x442560: mov          r3, r0
    //     0x442564: mov          r0, #1
    //     0x442568: stur         r3, [fp, #-0x20]
    // 0x44256c: StoreField: r3->field_13 = r0
    //     0x44256c: stur         r0, [r3, #0x13]
    // 0x442570: r0 = pp[0xae6]
    //     0x442570: add          r0, PP, #0xe, lsl #12
    //     0x442574: ldr          r0, [r0, #0xad8]
    // 0x442578: StoreField: r3->field_1b = r0
    //     0x442578: stur         r0, [r3, #0x1b]
    //     0x44257c: ldur         r0, [fp, #-8]
    // 0x442580: StoreField: r3->field_b = r0
    //     0x442580: stur         r0, [r3, #0xb]
    // 0x442584: r1 = NULL
    //     0x442584: mov          r1, NULL
    //     0x442588: mov          r2, #4
    // 0x44258c: r0 = call 0x61f920
    //     0x44258c: bl           0x61f920
    // 0x442590: r2 = r0
    //     0x442590: mov          r2, r0
    //     0x442594: ldur         r0, [fp, #-0x28]
    //     0x442598: stur         r2, [fp, #-8]
    // 0x44259c: StoreField: r2->field_f = r0
    //     0x44259c: stur         r0, [r2, #0xf]
    //     0x4425a0: ldur         r0, [fp, #-0x20]
    // 0x4425a4: StoreField: r2->field_13 = r0
    //     0x4425a4: stur         r0, [r2, #0x13]
    // 0x4425a8: r1 = pp[0x5c58]
    //     0x4425a8: ldr          r1, [PP, #0x5c58]
    // 0x4425ac: r0 = call 0x61e854
    //     0x4425ac: bl           0x61e854
    // 0x4425b0: r1 = r0
    //     0x4425b0: mov          r1, r0
    //     0x4425b4: ldur         r0, [fp, #-8]
    //     0x4425b8: stur         r1, [fp, #-0x20]
    // 0x4425bc: StoreField: r1->field_f = r0
    //     0x4425bc: stur         r0, [r1, #0xf]
    //     0x4425c0: mov          r0, #4
    // 0x4425c4: StoreField: r1->field_b = r0
    //     0x4425c4: stur         r0, [r1, #0xb]
    // 0x4425c8: r0 = call 0x39310c
    //     0x4425c8: bl           0x39310c
    // 0x4425cc: r1 = r0
    //     0x4425cc: mov          r1, r0
    // 0x4425d0: r0 = pp[0x862]
    //     0x4425d0: add          r0, PP, #0xa, lsl #12
    //     0x4425d4: ldr          r0, [r0, #0x858]
    //     0x4425d8: stur         r1, [fp, #-8]
    // 0x4425dc: StoreField: r1->field_f = r0
    //     0x4425dc: stur         r0, [r1, #0xf]
    // 0x4425e0: r0 = pp[0xaee]
    //     0x4425e0: add          r0, PP, #0xe, lsl #12
    //     0x4425e4: ldr          r0, [r0, #0xae0]
    // 0x4425e8: StoreField: r1->field_13 = r0
    //     0x4425e8: stur         r0, [r1, #0x13]
    // 0x4425ec: r0 = pp[0xaf6]
    //     0x4425ec: add          r0, PP, #0xe, lsl #12
    //     0x4425f0: ldr          r0, [r0, #0xae8]
    // 0x4425f4: ArrayStore: r1[0] = r0  ; List_8
    //     0x4425f4: stur         r0, [r1, #0x17]
    // 0x4425f8: r0 = pp[0xb6e]
    //     0x4425f8: add          r0, PP, #0xe, lsl #12
    //     0x4425fc: ldr          r0, [r0, #0xb60]
    // 0x442600: StoreField: r1->field_1b = r0
    //     0x442600: stur         r0, [r1, #0x1b]
    // 0x442604: r0 = pp[0xb06]
    //     0x442604: add          r0, PP, #0xe, lsl #12
    //     0x442608: ldr          r0, [r0, #0xaf8]
    // 0x44260c: StoreField: r1->field_23 = r0
    //     0x44260c: stur         r0, [r1, #0x23]
    // 0x442610: r0 = pp[0xb2]
    //     0x442610: add          r0, PP, #0xa, lsl #12
    //     0x442614: ldr          r0, [r0, #0xa8]
    // 0x442618: StoreField: r1->field_2b = r0
    //     0x442618: stur         r0, [r1, #0x2b]
    // 0x44261c: StoreField: r1->field_2f = xzr
    //     0x44261c: stur         xzr, [r1, #0x2f]
    //     0x442620: ldur         r0, [fp, #-0x20]
    // 0x442624: StoreField: r1->field_b = r0
    //     0x442624: stur         r0, [r1, #0xb]
    // 0x442628: r0 = call 0x391a04
    //     0x442628: bl           0x391a04
    //     0x44262c: stur         r0, [fp, #-0x20]
    //     0x442630: ldur         BARRIER, [fp, #-0x18]
    //     0x442634: ldur         lr, [fp, #-0x10]
    //     0x442638: stp          lr, BARRIER, [SP, #8]
    //     0x44263c: ldur         BARRIER, [fp, #-8]
    //     0x442640: str          BARRIER, [SP]
    // 0x442644: r1 = r0
    //     0x442644: mov          r1, r0
    // 0x442648: r4 = pp[0xf56]
    //     0x442648: add          r4, PP, #0xe, lsl #12
    //     0x44264c: ldr          r4, [r4, #0xf48]
    // 0x442650: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x442650: bl           0x391490
    //     0x442654: ldur         r0, [fp, #-0x20]
    // 0x442658: SP = fp
    //     0x442658: mov          SP, fp
    // 0x44265c: LeaveFrame
    //     0x44265c: ldp          fp, lr, [SP], #0x10
    // 0x442660: ret
    //     0x442660: ret          
    // 0x442664: r0 = call 0x61fa28
    //     0x442664: bl           0x61fa28
    // 0x442668: b 0x442098
    //     0x442668: b            0x442098
    //     0x44266c: str          q0, [SP, #-0x10]!
    //     0x442670: str          r1, [SP, #-8]!
    // 0x442674: r0 = call 0x61f878
    //     0x442674: bl           0x61f878
    //     0x442678: ldr          r1, [SP], #8
    //     0x44267c: ldr          q0, [SP], #0x10
    // 0x442680: b 0x442128
    //     0x442680: b            0x442128
    // 0x442684: r9 = pp[0xf5e]
    //     0x442684: add          r9, PP, #0xe, lsl #12
    //     0x442688: ldr          r9, [r9, #0xf50]
    // 0x44268c: r0 = call 0x620258
    //     0x44268c: bl           0x620258
    // 0x442690: r9 = pp[0xf66]
    //     0x442690: add          r9, PP, #0xe, lsl #12
    //     0x442694: ldr          r9, [r9, #0xf58]
    // 0x442698: r0 = call 0x620258
    //     0x442698: bl           0x620258
    //     0x44269c: str          q0, [SP, #-0x10]!
    //     0x4426a0: stp          r5, r6, [SP, #-0x10]!
    //     0x4426a4: stp          r3, r4, [SP, #-0x10]!
    //     0x4426a8: stp          r1, r2, [SP, #-0x10]!
    //     0x4426ac: str          r0, [SP, #-8]!
    // 0x4426b0: r0 = call 0x61f878
    //     0x4426b0: bl           0x61f878
    // 0x4426b4: r7 = r0
    //     0x4426b4: mov          r7, r0
    //     0x4426b8: ldr          r0, [SP], #8
    //     0x4426bc: ldp          r1, r2, [SP], #0x10
    //     0x4426c0: ldp          r3, r4, [SP], #0x10
    //     0x4426c4: ldp          r5, r6, [SP], #0x10
    //     0x4426c8: ldr          q0, [SP], #0x10
    // 0x4426cc: b 0x4424f4
    //     0x4426cc: b            0x4424f4
  }

  _anon_closure() {
    // ** addr: 0x442a4c, size: 0x28
    // 0x442a4c: EnterFrame
    //     0x442a4c: stp          fp, lr, [SP, #-0x10]!
    //     0x442a50: mov          fp, SP
    //     0x442a54: ldr          r0, [fp, #0x10]
    //     0x442a58: cbnz         r0, 0x442a64
    // 0x442a5c: r0 = call 0x442aa0
    //     0x442a5c: bl           0x442aa0
    // 0x442a60: b 0x442a68
    //     0x442a60: b            0x442a68
    // 0x442a64: r0 = call 0x442a74
    //     0x442a64: bl           0x442a74
    // 0x442a68: SP = fp
    //     0x442a68: mov          SP, fp
    // 0x442a6c: LeaveFrame
    //     0x442a6c: ldp          fp, lr, [SP], #0x10
    // 0x442a70: ret
    //     0x442a70: ret          
  }

  _onPageChanged() {
    // ** addr: 0x442acc, size: 0x3c
    // 0x442acc: EnterFrame
    //     0x442acc: stp          fp, lr, [SP, #-0x10]!
    //     0x442ad0: mov          fp, SP
    //     0x442ad4: ldr          r0, [fp, #0x18]
    // 0x442ad8: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x442ad8: ldur         r1, [r0, #0x17]
    //     0x442adc: add          r1, r1, HEAP, lsl #32
    // 0x442ae0: CheckStackOverflow
    //     0x442ae0: ldr          BARRIER, [THR, #0x38]
    //     0x442ae4: cmp          SP, BARRIER
    //     0x442ae8: b.ls         0x442b00
    //     0x442aec: ldr          r2, [fp, #0x10]
    // 0x442af0: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record__PagePKGameBetTabRecordState::_onPageChanged()
    //     0x442af0: bl           0x442b08
    // 0x442af4: SP = fp
    //     0x442af4: mov          SP, fp
    // 0x442af8: LeaveFrame
    //     0x442af8: ldp          fp, lr, [SP], #0x10
    // 0x442afc: ret
    //     0x442afc: ret          
    // 0x442b00: r0 = call 0x61fa28
    //     0x442b00: bl           0x61fa28
    // 0x442b04: b 0x442aec
    //     0x442b04: b            0x442aec
  }

  _onPageChanged() {
    // ** addr: 0x442b08, size: 0x68
    // 0x442b08: EnterFrame
    //     0x442b08: stp          fp, lr, [SP, #-0x10]!
    //     0x442b0c: mov          fp, SP
    // 0x442b10: CheckStackOverflow
    //     0x442b10: ldr          BARRIER, [THR, #0x38]
    //     0x442b14: cmp          SP, BARRIER
    //     0x442b18: b.ls         0x442b5c
    // 0x442b1c: LoadField: r0 = r1->field_1b
    //     0x442b1c: ldur         r0, [r1, #0x1b]
    //     0x442b20: add          r0, r0, HEAP, lsl #32
    // 0x442b24: BARRIER = pp[0x40]
    //     0x442b24: ldr          BARRIER, [PP, #0x40]
    //     0x442b28: cmp          r0, r16
    // 0x442b2c: b.eq 0x442b64
    //     0x442b2c: b.eq         0x442b64
    //     0x442b30: sbfx         r1, r2, #1, #0x1f
    // 0x442b34: branchIfSmi(r2, 0x442b3c)
    //     0x442b34: tbz          r2, #0, 0x442b3c
    // 0x442b38: LoadField: r1 = r2->field_7
    //     0x442b38: ldur         r1, [r2, #7]
    // 0x442b3c: r2 = r1
    //     0x442b3c: mov          r2, r1
    // 0x442b40: r1 = r0
    //     0x442b40: mov          r1, r0
    // 0x442b44: r4 = pp[0x278]
    //     0x442b44: ldr          r4, [PP, #0x278]
    // 0x442b48: r0 = flutter$src$material$tab_controller_TabController::animateTo()
    //     0x442b48: bl           0x3ff4a0
    // 0x442b4c: r0 = NULL
    //     0x442b4c: mov          r0, NULL
    // 0x442b50: SP = fp
    //     0x442b50: mov          SP, fp
    // 0x442b54: LeaveFrame
    //     0x442b54: ldp          fp, lr, [SP], #0x10
    // 0x442b58: ret
    //     0x442b58: ret          
    // 0x442b5c: r0 = call 0x61fa28
    //     0x442b5c: bl           0x61fa28
    // 0x442b60: b 0x442b1c
    //     0x442b60: b            0x442b1c
    // 0x442b64: r9 = pp[0xf5e]
    //     0x442b64: add          r9, PP, #0xe, lsl #12
    //     0x442b68: ldr          r9, [r9, #0xf50]
    // 0x442b6c: r0 = call 0x620258
    //     0x442b6c: bl           0x620258
  }

  _changeTab() {
    // ** addr: 0x442b70, size: 0x3c
    // 0x442b70: EnterFrame
    //     0x442b70: stp          fp, lr, [SP, #-0x10]!
    //     0x442b74: mov          fp, SP
    //     0x442b78: ldr          r0, [fp, #0x18]
    // 0x442b7c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x442b7c: ldur         r1, [r0, #0x17]
    //     0x442b80: add          r1, r1, HEAP, lsl #32
    // 0x442b84: CheckStackOverflow
    //     0x442b84: ldr          BARRIER, [THR, #0x38]
    //     0x442b88: cmp          SP, BARRIER
    //     0x442b8c: b.ls         0x442ba4
    //     0x442b90: ldr          r2, [fp, #0x10]
    // 0x442b94: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record__PagePKGameBetTabRecordState::_changeTab()
    //     0x442b94: bl           0x442bac
    // 0x442b98: SP = fp
    //     0x442b98: mov          SP, fp
    // 0x442b9c: LeaveFrame
    //     0x442b9c: ldp          fp, lr, [SP], #0x10
    // 0x442ba0: ret
    //     0x442ba0: ret          
    // 0x442ba4: r0 = call 0x61fa28
    //     0x442ba4: bl           0x61fa28
    // 0x442ba8: b 0x442b90
    //     0x442ba8: b            0x442b90
  }

  _changeTab() {
    // ** addr: 0x442bac, size: 0x64
    // 0x442bac: EnterFrame
    //     0x442bac: stp          fp, lr, [SP, #-0x10]!
    //     0x442bb0: mov          fp, SP
    // 0x442bb4: CheckStackOverflow
    //     0x442bb4: ldr          BARRIER, [THR, #0x38]
    //     0x442bb8: cmp          SP, BARRIER
    //     0x442bbc: b.ls         0x442bfc
    // 0x442bc0: LoadField: r0 = r1->field_1f
    //     0x442bc0: ldur         r0, [r1, #0x1f]
    //     0x442bc4: add          r0, r0, HEAP, lsl #32
    // 0x442bc8: BARRIER = pp[0x40]
    //     0x442bc8: ldr          BARRIER, [PP, #0x40]
    //     0x442bcc: cmp          r0, r16
    // 0x442bd0: b.eq 0x442c04
    //     0x442bd0: b.eq         0x442c04
    //     0x442bd4: sbfx         r1, r2, #1, #0x1f
    // 0x442bd8: branchIfSmi(r2, 0x442be0)
    //     0x442bd8: tbz          r2, #0, 0x442be0
    // 0x442bdc: LoadField: r1 = r2->field_7
    //     0x442bdc: ldur         r1, [r2, #7]
    // 0x442be0: r2 = r1
    //     0x442be0: mov          r2, r1
    // 0x442be4: r1 = r0
    //     0x442be4: mov          r1, r0
    // 0x442be8: r0 = flutter$src$widgets$page_view_PageController::jumpToPage()
    //     0x442be8: bl           0x3cfd4c
    // 0x442bec: r0 = NULL
    //     0x442bec: mov          r0, NULL
    // 0x442bf0: SP = fp
    //     0x442bf0: mov          SP, fp
    // 0x442bf4: LeaveFrame
    //     0x442bf4: ldp          fp, lr, [SP], #0x10
    // 0x442bf8: ret
    //     0x442bf8: ret          
    // 0x442bfc: r0 = call 0x61fa28
    //     0x442bfc: bl           0x61fa28
    // 0x442c00: b 0x442bc0
    //     0x442c00: b            0x442bc0
    // 0x442c04: r9 = pp[0xf66]
    //     0x442c04: add          r9, PP, #0xe, lsl #12
    //     0x442c08: ldr          r9, [r9, #0xf58]
    // 0x442c0c: r0 = call 0x620258
    //     0x442c0c: bl           0x620258
  }

  dispose() {
    // ** addr: 0x452638, size: 0x8c
    // 0x452638: EnterFrame
    //     0x452638: stp          fp, lr, [SP, #-0x10]!
    //     0x45263c: mov          fp, SP
    // 0x452640: AllocStack(8)
    //     0x452640: sub          SP, SP, #8
    // 0x452644: r0 = r1
    //     0x452644: mov          r0, r1
    //     0x452648: stur         r1, [fp, #-8]
    // 0x45264c: CheckStackOverflow
    //     0x45264c: ldr          BARRIER, [THR, #0x38]
    //     0x452650: cmp          SP, BARRIER
    //     0x452654: b.ls         0x4526a4
    // 0x452658: LoadField: r1 = r0->field_1b
    //     0x452658: ldur         r1, [r0, #0x1b]
    //     0x45265c: add          r1, r1, HEAP, lsl #32
    // 0x452660: BARRIER = pp[0x40]
    //     0x452660: ldr          BARRIER, [PP, #0x40]
    //     0x452664: cmp          r1, r16
    // 0x452668: b.eq 0x4526ac
    //     0x452668: b.eq         0x4526ac
    // 0x45266c: r0 = flutter$src$material$tab_controller_TabController::dispose()
    //     0x45266c: bl           0x45a240
    //     0x452670: ldur         r0, [fp, #-8]
    // 0x452674: LoadField: r1 = r0->field_1f
    //     0x452674: ldur         r1, [r0, #0x1f]
    //     0x452678: add          r1, r1, HEAP, lsl #32
    // 0x45267c: BARRIER = pp[0x40]
    //     0x45267c: ldr          BARRIER, [PP, #0x40]
    //     0x452680: cmp          r1, r16
    // 0x452684: b.eq 0x4526b8
    //     0x452684: b.eq         0x4526b8
    // 0x452688: r0 = flutter$src$widgets$scroll_controller_ScrollController::dispose()
    //     0x452688: bl           0x45a380
    //     0x45268c: ldur         r1, [fp, #-8]
    // 0x452690: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record___PagePKGameBetTabRecordState&State&TickerProviderStateMixin::dispose()
    //     0x452690: bl           0x4526c4
    // 0x452694: r0 = NULL
    //     0x452694: mov          r0, NULL
    // 0x452698: SP = fp
    //     0x452698: mov          SP, fp
    // 0x45269c: LeaveFrame
    //     0x45269c: ldp          fp, lr, [SP], #0x10
    // 0x4526a0: ret
    //     0x4526a0: ret          
    // 0x4526a4: r0 = call 0x61fa28
    //     0x4526a4: bl           0x61fa28
    // 0x4526a8: b 0x452658
    //     0x4526a8: b            0x452658
    // 0x4526ac: r9 = pp[0xf5e]
    //     0x4526ac: add          r9, PP, #0xe, lsl #12
    //     0x4526b0: ldr          r9, [r9, #0xf50]
    // 0x4526b4: r0 = call 0x620258
    //     0x4526b4: bl           0x620258
    // 0x4526b8: r9 = pp[0xf66]
    //     0x4526b8: add          r9, PP, #0xe, lsl #12
    //     0x4526bc: ldr          r9, [r9, #0xf58]
    // 0x4526c0: r0 = call 0x620258
    //     0x4526c0: bl           0x620258
  }

  ctor() {
    // ** addr: 0x4c564c, size: 0xf4
    // 0x4c564c: EnterFrame
    //     0x4c564c: stp          fp, lr, [SP, #-0x10]!
    //     0x4c5650: mov          fp, SP
    // 0x4c5654: AllocStack(0x20)
    //     0x4c5654: sub          SP, SP, #0x20
    // 0x4c5658: r0 = pp[0x40]
    //     0x4c5658: ldr          r0, [PP, #0x40]
    // 0x4c565c: r2 = r1
    //     0x4c565c: mov          r2, r1
    //     0x4c5660: stur         r1, [fp, #-8]
    // 0x4c5664: CheckStackOverflow
    //     0x4c5664: ldr          BARRIER, [THR, #0x38]
    //     0x4c5668: cmp          SP, BARRIER
    //     0x4c566c: b.ls         0x4c5738
    // 0x4c5670: StoreField: r2->field_1b = r0
    //     0x4c5670: stur         r0, [r2, #0x1b]
    // 0x4c5674: StoreField: r2->field_1f = r0
    //     0x4c5674: stur         r0, [r2, #0x1f]
    // 0x4c5678: r1 = pp[0x63b]
    //     0x4c5678: add          r1, PP, #0xb, lsl #12
    //     0x4c567c: ldr          r1, [r1, #0x630]
    // 0x4c5680: r4 = pp[0x4c0]
    //     0x4c5680: ldr          r4, [PP, #0x4c0]
    // 0x4c5684: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4c5684: bl           0x3a1dcc
    //     0x4c5688: stur         r0, [fp, #-0x10]
    // 0x4c568c: r0 = call 0x42122c
    //     0x4c568c: bl           0x42122c
    // 0x4c5690: r2 = r0
    //     0x4c5690: mov          r2, r0
    //     0x4c5694: ldur         r0, [fp, #-0x10]
    //     0x4c5698: stur         r2, [fp, #-0x18]
    // 0x4c569c: StoreField: r2->field_b = r0
    //     0x4c569c: stur         r0, [r2, #0xb]
    // 0x4c56a0: r1 = pp[0x643]
    //     0x4c56a0: add          r1, PP, #0xb, lsl #12
    //     0x4c56a4: ldr          r1, [r1, #0x638]
    // 0x4c56a8: r4 = pp[0x4c0]
    //     0x4c56a8: ldr          r4, [PP, #0x4c0]
    // 0x4c56ac: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4c56ac: bl           0x3a1dcc
    //     0x4c56b0: stur         r0, [fp, #-0x10]
    // 0x4c56b4: r0 = call 0x42122c
    //     0x4c56b4: bl           0x42122c
    // 0x4c56b8: r3 = r0
    //     0x4c56b8: mov          r3, r0
    //     0x4c56bc: ldur         r0, [fp, #-0x10]
    //     0x4c56c0: stur         r3, [fp, #-0x20]
    // 0x4c56c4: StoreField: r3->field_b = r0
    //     0x4c56c4: stur         r0, [r3, #0xb]
    // 0x4c56c8: r1 = NULL
    //     0x4c56c8: mov          r1, NULL
    //     0x4c56cc: mov          r2, #4
    // 0x4c56d0: r0 = call 0x61f920
    //     0x4c56d0: bl           0x61f920
    // 0x4c56d4: r2 = r0
    //     0x4c56d4: mov          r2, r0
    //     0x4c56d8: ldur         r0, [fp, #-0x18]
    //     0x4c56dc: stur         r2, [fp, #-0x10]
    // 0x4c56e0: StoreField: r2->field_f = r0
    //     0x4c56e0: stur         r0, [r2, #0xf]
    //     0x4c56e4: ldur         r0, [fp, #-0x20]
    // 0x4c56e8: StoreField: r2->field_13 = r0
    //     0x4c56e8: stur         r0, [r2, #0x13]
    // 0x4c56ec: r1 = pp[0x64b]
    //     0x4c56ec: add          r1, PP, #0xb, lsl #12
    //     0x4c56f0: ldr          r1, [r1, #0x640]
    // 0x4c56f4: r0 = call 0x61e854
    //     0x4c56f4: bl           0x61e854
    //     0x4c56f8: ldur         r1, [fp, #-0x10]
    // 0x4c56fc: StoreField: r0->field_f = r1
    //     0x4c56fc: stur         r1, [r0, #0xf]
    //     0x4c5700: mov          r1, #4
    // 0x4c5704: StoreField: r0->field_b = r1
    //     0x4c5704: stur         r1, [r0, #0xb]
    //     0x4c5708: ldur         r1, [fp, #-8]
    // 0x4c570c: StoreField: r1->field_23 = r0
    //     0x4c570c: stur         r0, [r1, #0x23]
    //     0x4c5710: ldurb        r16, [r1, #-1]
    //     0x4c5714: ldurb        r17, [r0, #-1]
    //     0x4c5718: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c571c: tst          BARRIER, HEAP, lsr #32
    // 0x4c5720: b.eq 0x4c5728
    //     0x4c5720: b.eq         0x4c5728
    // 0x4c5724: r0 = call 0x61e04c
    //     0x4c5724: bl           0x61e04c
    // 0x4c5728: r0 = NULL
    //     0x4c5728: mov          r0, NULL
    // 0x4c572c: SP = fp
    //     0x4c572c: mov          SP, fp
    // 0x4c5730: LeaveFrame
    //     0x4c5730: ldp          fp, lr, [SP], #0x10
    // 0x4c5734: ret
    //     0x4c5734: ret          
    // 0x4c5738: r0 = call 0x61fa28
    //     0x4c5738: bl           0x61fa28
    // 0x4c573c: b 0x4c5670
    //     0x4c573c: b            0x4c5670
  }

  initState() {
    // ** addr: 0x4da578, size: 0xf0
    // 0x4da578: EnterFrame
    //     0x4da578: stp          fp, lr, [SP, #-0x10]!
    //     0x4da57c: mov          fp, SP
    // 0x4da580: AllocStack(0x18)
    //     0x4da580: sub          SP, SP, #0x18
    // 0x4da584: r3 = r1
    //     0x4da584: mov          r3, r1
    //     0x4da588: stur         r1, [fp, #-0x10]
    // 0x4da58c: CheckStackOverflow
    //     0x4da58c: ldr          BARRIER, [THR, #0x38]
    //     0x4da590: cmp          SP, BARRIER
    //     0x4da594: b.ls         0x4da660
    // 0x4da598: LoadField: r0 = r3->field_23
    //     0x4da598: ldur         r0, [r3, #0x23]
    //     0x4da59c: add          r0, r0, HEAP, lsl #32
    // 0x4da5a0: LoadField: r1 = r0->field_b
    //     0x4da5a0: ldur         r1, [r0, #0xb]
    //     0x4da5a4: sbfx         r2, r1, #1, #0x1f
    //     0x4da5a8: stur         r2, [fp, #-8]
    // 0x4da5ac: r0 = call 0x4d44d0
    //     0x4da5ac: bl           0x4d44d0
    // 0x4da5b0: r1 = r0
    //     0x4da5b0: mov          r1, r0
    //     0x4da5b4: ldur         r2, [fp, #-8]
    //     0x4da5b8: ldur         r3, [fp, #-0x10]
    //     0x4da5bc: stur         r0, [fp, #-0x18]
    // 0x4da5c0: r4 = pp[0x2e0]
    //     0x4da5c0: ldr          r4, [PP, #0x2e0]
    // 0x4da5c4: r0 = flutter$src$material$tab_controller_TabController::ctor()
    //     0x4da5c4: bl           0x4d437c
    //     0x4da5c8: ldur         r0, [fp, #-0x18]
    //     0x4da5cc: ldur         r3, [fp, #-0x10]
    // 0x4da5d0: StoreField: r3->field_1b = r0
    //     0x4da5d0: stur         r0, [r3, #0x1b]
    //     0x4da5d4: ldurb        r16, [r3, #-1]
    //     0x4da5d8: ldurb        r17, [r0, #-1]
    //     0x4da5dc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4da5e0: tst          BARRIER, HEAP, lsr #32
    // 0x4da5e4: b.eq 0x4da5ec
    //     0x4da5e4: b.eq         0x4da5ec
    // 0x4da5e8: r0 = call 0x61e08c
    //     0x4da5e8: bl           0x61e08c
    // 0x4da5ec: r1 = pp[0x1a7]
    //     0x4da5ec: add          r1, PP, #0xf, lsl #12
    //     0x4da5f0: ldr          r1, [r1, #0x198]
    // 0x4da5f4: r2 = NULL
    //     0x4da5f4: mov          r2, NULL
    // 0x4da5f8: r0 = call 0x61ec54
    //     0x4da5f8: bl           0x61ec54
    //     0x4da5fc: ldur         r1, [fp, #-0x18]
    // 0x4da600: r2 = r0
    //     0x4da600: mov          r2, r0
    // 0x4da604: r0 = flutter$src$foundation$change_notifier_ChangeNotifier::addListener()
    //     0x4da604: bl           0x51c390
    // 0x4da608: r0 = call 0x3cff08
    //     0x4da608: bl           0x3cff08
    //     0x4da60c: stur         r0, [fp, #-0x18]
    // 0x4da610: StoreField: r0->field_3f = xzr
    //     0x4da610: stur         xzr, [r0, #0x3f]
    //     0x4da614: add          r1, NULL, #0x20
    // 0x4da618: StoreField: r0->field_47 = r1
    //     0x4da618: stur         r1, [r0, #0x47]
    //     0x4da61c: fmov         d0, #1.00000000
    // 0x4da620: StoreField: r0->field_4b = d0
    //     0x4da620: stur         d0, [r0, #0x4b]
    // 0x4da624: r1 = r0
    //     0x4da624: mov          r1, r0
    // 0x4da628: r0 = flutter$src$widgets$scroll_controller_ScrollController::ctor()
    //     0x4da628: bl           0x317954
    //     0x4da62c: ldur         r0, [fp, #-0x18]
    //     0x4da630: ldur         r1, [fp, #-0x10]
    // 0x4da634: StoreField: r1->field_1f = r0
    //     0x4da634: stur         r0, [r1, #0x1f]
    //     0x4da638: ldurb        r16, [r1, #-1]
    //     0x4da63c: ldurb        r17, [r0, #-1]
    //     0x4da640: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4da644: tst          BARRIER, HEAP, lsr #32
    // 0x4da648: b.eq 0x4da650
    //     0x4da648: b.eq         0x4da650
    // 0x4da64c: r0 = call 0x61e04c
    //     0x4da64c: bl           0x61e04c
    // 0x4da650: r0 = NULL
    //     0x4da650: mov          r0, NULL
    // 0x4da654: SP = fp
    //     0x4da654: mov          SP, fp
    // 0x4da658: LeaveFrame
    //     0x4da658: ldp          fp, lr, [SP], #0x10
    // 0x4da65c: ret
    //     0x4da65c: ret          
    // 0x4da660: r0 = call 0x61fa28
    //     0x4da660: bl           0x61fa28
    // 0x4da664: b 0x4da598
    //     0x4da664: b            0x4da598
  }

  _anon_closure() {
    // ** addr: 0x60bd34, size: 0x8
    // 0x60bd34: r0 = NULL
    //     0x60bd34: mov          r0, NULL
    // 0x60bd38: ret
    //     0x60bd38: ret          
  }

  _tabBarWidget() {
    // ** addr: 0x4426d0, size: 0x284
    // 0x4426d0: EnterFrame
    //     0x4426d0: stp          fp, lr, [SP, #-0x10]!
    //     0x4426d4: mov          fp, SP
    // 0x4426d8: AllocStack(0x88)
    //     0x4426d8: sub          SP, SP, #0x88
    //     0x4426dc: stur         r1, [fp, #-8]
    //     0x4426e0: stur         r2, [fp, #-0x10]
    //     0x4426e4: stur         r3, [fp, #-0x18]
    //     0x4426e8: stur         d0, [fp, #-0x58]
    // 0x4426ec: CheckStackOverflow
    //     0x4426ec: ldr          BARRIER, [THR, #0x38]
    //     0x4426f0: cmp          SP, BARRIER
    //     0x4426f4: b.ls         0x44294c
    // 0x4426f8: r0 = call 0x2e3578
    //     0x4426f8: bl           0x2e3578
    // 0x4426fc: d0 = pp[0x15f]
    //     0x4426fc: add          r17, PP, #0xf, lsl #12
    //     0x442700: ldr          d0, [r17, #0x150]
    //     0x442704: stur         r0, [fp, #-0x20]
    // 0x442708: StoreField: r0->field_7 = d0
    //     0x442708: stur         d0, [r0, #7]
    //     0x44270c: fmov         d1, #17.00000000
    // 0x442710: StoreField: r0->field_f = d1
    //     0x442710: stur         d1, [r0, #0xf]
    // 0x442714: ArrayStore: r0[0] = d0  ; List_8
    //     0x442714: stur         d0, [r0, #0x17]
    // 0x442718: StoreField: r0->field_1f = xzr
    //     0x442718: stur         xzr, [r0, #0x1f]
    // 0x44271c: r0 = call 0x2e3578
    //     0x44271c: bl           0x2e3578
    //     0x442720: fmov         d0, #2.00000000
    //     0x442724: stur         r0, [fp, #-0x28]
    // 0x442728: StoreField: r0->field_7 = d0
    //     0x442728: stur         d0, [r0, #7]
    // 0x44272c: StoreField: r0->field_f = d0
    //     0x44272c: stur         d0, [r0, #0xf]
    // 0x442730: ArrayStore: r0[0] = d0  ; List_8
    //     0x442730: stur         d0, [r0, #0x17]
    // 0x442734: StoreField: r0->field_1f = d0
    //     0x442734: stur         d0, [r0, #0x1f]
    // 0x442738: r0 = call 0x31d844
    //     0x442738: bl           0x31d844
    // 0x44273c: r1 = r0
    //     0x44273c: mov          r1, r0
    // 0x442740: r0 = pp[0x6310]
    //     0x442740: ldr          r0, [PP, #0x6310]
    //     0x442744: stur         r1, [fp, #-0x30]
    // 0x442748: StoreField: r1->field_27 = r0
    //     0x442748: stur         r0, [r1, #0x27]
    // 0x44274c: d0 = pp[0x66a0]
    //     0x44274c: ldr          d0, [PP, #0x66a0]
    // 0x442750: StoreField: r1->field_7 = d0
    //     0x442750: stur         d0, [r1, #7]
    //     0x442754: fmov         d0, #1.00000000
    // 0x442758: StoreField: r1->field_f = d0
    //     0x442758: stur         d0, [r1, #0xf]
    // 0x44275c: ArrayStore: r1[0] = d0  ; List_8
    //     0x44275c: stur         d0, [r1, #0x17]
    // 0x442760: StoreField: r1->field_1f = d0
    //     0x442760: stur         d0, [r1, #0x1f]
    // 0x442764: r0 = call 0x352b04
    //     0x442764: bl           0x352b04
    //     0x442768: fmov         d0, #18.00000000
    //     0x44276c: stur         r0, [fp, #-0x38]
    // 0x442770: StoreField: r0->field_7 = d0
    //     0x442770: stur         d0, [r0, #7]
    // 0x442774: StoreField: r0->field_f = d0
    //     0x442774: stur         d0, [r0, #0xf]
    // 0x442778: r0 = call 0x392f28
    //     0x442778: bl           0x392f28
    // 0x44277c: r1 = r0
    //     0x44277c: mov          r1, r0
    //     0x442780: ldur         r0, [fp, #-0x38]
    //     0x442784: stur         r1, [fp, #-0x40]
    // 0x442788: StoreField: r1->field_7 = r0
    //     0x442788: stur         r0, [r1, #7]
    // 0x44278c: StoreField: r1->field_b = r0
    //     0x44278c: stur         r0, [r1, #0xb]
    // 0x442790: StoreField: r1->field_f = r0
    //     0x442790: stur         r0, [r1, #0xf]
    // 0x442794: StoreField: r1->field_13 = r0
    //     0x442794: stur         r0, [r1, #0x13]
    // 0x442798: r0 = call 0x391dd8
    //     0x442798: bl           0x391dd8
    // 0x44279c: r1 = r0
    //     0x44279c: mov          r1, r0
    //     0x4427a0: ldur         r0, [fp, #-0x30]
    //     0x4427a4: stur         r1, [fp, #-0x38]
    // 0x4427a8: StoreField: r1->field_7 = r0
    //     0x4427a8: stur         r0, [r1, #7]
    //     0x4427ac: ldur         r0, [fp, #-0x40]
    // 0x4427b0: StoreField: r1->field_13 = r0
    //     0x4427b0: stur         r0, [r1, #0x13]
    // 0x4427b4: r0 = pp[0xb86]
    //     0x4427b4: add          r0, PP, #0xe, lsl #12
    //     0x4427b8: ldr          r0, [r0, #0xb78]
    // 0x4427bc: StoreField: r1->field_23 = r0
    //     0x4427bc: stur         r0, [r1, #0x23]
    // 0x4427c0: r0 = call 0x31abec
    //     0x4427c0: bl           0x31abec
    // 0x4427c4: r1 = r0
    //     0x4427c4: mov          r1, r0
    //     0x4427c8: add          r0, NULL, #0x20
    //     0x4427cc: stur         r1, [fp, #-0x30]
    // 0x4427d0: StoreField: r1->field_7 = r0
    //     0x4427d0: stur         r0, [r1, #7]
    // 0x4427d4: r2 = pp[0xdf6]
    //     0x4427d4: add          r2, PP, #0xe, lsl #12
    //     0x4427d8: ldr          r2, [r2, #0xde8]
    // 0x4427dc: StoreField: r1->field_1f = r2
    //     0x4427dc: stur         r2, [r1, #0x1f]
    // 0x4427e0: r3 = pp[0xe4e]
    //     0x4427e0: add          r3, PP, #0xe, lsl #12
    //     0x4427e4: ldr          r3, [r3, #0xe40]
    // 0x4427e8: StoreField: r1->field_23 = r3
    //     0x4427e8: stur         r3, [r1, #0x23]
    // 0x4427ec: r0 = call 0x31abec
    //     0x4427ec: bl           0x31abec
    // 0x4427f0: r1 = r0
    //     0x4427f0: mov          r1, r0
    //     0x4427f4: add          r0, NULL, #0x20
    //     0x4427f8: stur         r1, [fp, #-0x40]
    // 0x4427fc: StoreField: r1->field_7 = r0
    //     0x4427fc: stur         r0, [r1, #7]
    // 0x442800: r2 = pp[0xdf6]
    //     0x442800: add          r2, PP, #0xe, lsl #12
    //     0x442804: ldr          r2, [r2, #0xde8]
    // 0x442808: StoreField: r1->field_1f = r2
    //     0x442808: stur         r2, [r1, #0x1f]
    // 0x44280c: r2 = pp[0xe4e]
    //     0x44280c: add          r2, PP, #0xe, lsl #12
    //     0x442810: ldr          r2, [r2, #0xe40]
    // 0x442814: StoreField: r1->field_23 = r2
    //     0x442814: stur         r2, [r1, #0x23]
    //     0x442818: ldur         d1, [fp, #-0x58]
    //     0x44281c: fmov         d0, #2.00000000
    //     0x442820: fdiv         d2, d1, d0
    //     0x442824: stur         d2, [fp, #-0x60]
    // 0x442828: r0 = call 0x352b04
    //     0x442828: bl           0x352b04
    //     0x44282c: ldur         d0, [fp, #-0x60]
    //     0x442830: stur         r0, [fp, #-0x48]
    // 0x442834: StoreField: r0->field_7 = d0
    //     0x442834: stur         d0, [r0, #7]
    // 0x442838: StoreField: r0->field_f = d0
    //     0x442838: stur         d0, [r0, #0xf]
    // 0x44283c: r0 = call 0x392f28
    //     0x44283c: bl           0x392f28
    // 0x442840: r1 = r0
    //     0x442840: mov          r1, r0
    //     0x442844: ldur         r0, [fp, #-0x48]
    //     0x442848: stur         r1, [fp, #-0x50]
    // 0x44284c: StoreField: r1->field_7 = r0
    //     0x44284c: stur         r0, [r1, #7]
    // 0x442850: StoreField: r1->field_b = r0
    //     0x442850: stur         r0, [r1, #0xb]
    // 0x442854: StoreField: r1->field_f = r0
    //     0x442854: stur         r0, [r1, #0xf]
    // 0x442858: StoreField: r1->field_13 = r0
    //     0x442858: stur         r0, [r1, #0x13]
    // 0x44285c: r0 = call 0x391dd8
    //     0x44285c: bl           0x391dd8
    // 0x442860: r1 = r0
    //     0x442860: mov          r1, r0
    // 0x442864: r0 = pp[0x6050]
    //     0x442864: ldr          r0, [PP, #0x6050]
    //     0x442868: stur         r1, [fp, #-0x48]
    // 0x44286c: StoreField: r1->field_7 = r0
    //     0x44286c: stur         r0, [r1, #7]
    //     0x442870: ldur         r2, [fp, #-0x50]
    // 0x442874: StoreField: r1->field_13 = r2
    //     0x442874: stur         r2, [r1, #0x13]
    // 0x442878: r2 = pp[0xb86]
    //     0x442878: add          r2, PP, #0xe, lsl #12
    //     0x44287c: ldr          r2, [r2, #0xb78]
    // 0x442880: StoreField: r1->field_23 = r2
    //     0x442880: stur         r2, [r1, #0x23]
    // 0x442884: r0 = call 0x420d1c
    //     0x442884: bl           0x420d1c
    // 0x442888: r1 = r0
    //     0x442888: mov          r1, r0
    //     0x44288c: ldur         r0, [fp, #-0x18]
    //     0x442890: stur         r1, [fp, #-0x50]
    // 0x442894: StoreField: r1->field_b = r0
    //     0x442894: stur         r0, [r1, #0xb]
    //     0x442898: ldur         r0, [fp, #-0x10]
    // 0x44289c: StoreField: r1->field_f = r0
    //     0x44289c: stur         r0, [r1, #0xf]
    //     0x4428a0: add          r0, NULL, #0x30
    // 0x4428a4: StoreField: r1->field_13 = r0
    //     0x4428a4: stur         r0, [r1, #0x13]
    // 0x4428a8: StoreField: r1->field_1f = xzr
    //     0x4428a8: stur         xzr, [r1, #0x1f]
    // 0x4428ac: r0 = pp[0x5ac0]
    //     0x4428ac: ldr          r0, [PP, #0x5ac0]
    // 0x4428b0: StoreField: r1->field_27 = r0
    //     0x4428b0: stur         r0, [r1, #0x27]
    //     0x4428b4: ldur         r0, [fp, #-0x48]
    // 0x4428b8: StoreField: r1->field_2b = r0
    //     0x4428b8: stur         r0, [r1, #0x2b]
    // 0x4428bc: r0 = pp[0x5d50]
    //     0x4428bc: ldr          r0, [PP, #0x5d50]
    // 0x4428c0: StoreField: r1->field_3b = r0
    //     0x4428c0: stur         r0, [r1, #0x3b]
    //     0x4428c4: ldur         r0, [fp, #-0x30]
    // 0x4428c8: StoreField: r1->field_43 = r0
    //     0x4428c8: stur         r0, [r1, #0x43]
    // 0x4428cc: r0 = pp[0x167]
    //     0x4428cc: add          r0, PP, #0xf, lsl #12
    //     0x4428d0: ldr          r0, [r0, #0x158]
    // 0x4428d4: StoreField: r1->field_4b = r0
    //     0x4428d4: stur         r0, [r1, #0x4b]
    // 0x4428d8: r0 = pp[0x6050]
    //     0x4428d8: ldr          r0, [PP, #0x6050]
    // 0x4428dc: StoreField: r1->field_3f = r0
    //     0x4428dc: stur         r0, [r1, #0x3f]
    //     0x4428e0: ldur         r0, [fp, #-0x40]
    // 0x4428e4: StoreField: r1->field_47 = r0
    //     0x4428e4: stur         r0, [r1, #0x47]
    // 0x4428e8: r0 = pp[0x77d8]
    //     0x4428e8: ldr          r0, [PP, #0x77d8]
    // 0x4428ec: StoreField: r1->field_53 = r0
    //     0x4428ec: stur         r0, [r1, #0x53]
    //     0x4428f0: ldur         r0, [fp, #-8]
    // 0x4428f4: StoreField: r1->field_5f = r0
    //     0x4428f4: stur         r0, [r1, #0x5f]
    //     0x4428f8: add          r0, NULL, #0x20
    // 0x4428fc: StoreField: r1->field_7b = r0
    //     0x4428fc: stur         r0, [r1, #0x7b]
    // 0x442900: r0 = call 0x391a04
    //     0x442900: bl           0x391a04
    //     0x442904: stur         r0, [fp, #-8]
    //     0x442908: ldur         BARRIER, [fp, #-0x20]
    //     0x44290c: ldur         lr, [fp, #-0x28]
    //     0x442910: stp          lr, BARRIER, [SP, #0x18]
    //     0x442914: ldur         BARRIER, [fp, #-0x38]
    // 0x442918: lr = pp[0x4ea]
    //     0x442918: add          lr, PP, #0xa, lsl #12
    //     0x44291c: ldr          lr, [lr, #0x4e0]
    //     0x442920: stp          lr, BARRIER, [SP, #8]
    //     0x442924: ldur         BARRIER, [fp, #-0x50]
    //     0x442928: str          BARRIER, [SP]
    // 0x44292c: r1 = r0
    //     0x44292c: mov          r1, r0
    // 0x442930: r4 = pp[0x16f]
    //     0x442930: add          r4, PP, #0xf, lsl #12
    //     0x442934: ldr          r4, [r4, #0x160]
    // 0x442938: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x442938: bl           0x391490
    //     0x44293c: ldur         r0, [fp, #-8]
    // 0x442940: SP = fp
    //     0x442940: mov          SP, fp
    // 0x442944: LeaveFrame
    //     0x442944: ldp          fp, lr, [SP], #0x10
    // 0x442948: ret
    //     0x442948: ret          
    // 0x44294c: r0 = call 0x61faa8
    //     0x44294c: bl           0x61faa8
    // 0x442950: b 0x4426f8
    //     0x442950: b            0x4426f8
  }

  backButton() {
    // ** addr: 0x442954, size: 0xf8
    // 0x442954: EnterFrame
    //     0x442954: stp          fp, lr, [SP, #-0x10]!
    //     0x442958: mov          fp, SP
    // 0x44295c: AllocStack(0x38)
    //     0x44295c: sub          SP, SP, #0x38
    // 0x442960: CheckStackOverflow
    //     0x442960: ldr          BARRIER, [THR, #0x38]
    //     0x442964: cmp          SP, BARRIER
    //     0x442968: b.ls         0x442a44
    // 0x44296c: r0 = call 0x2e3578
    //     0x44296c: bl           0x2e3578
    //     0x442970: fmov         d0, #20.00000000
    //     0x442974: stur         r0, [fp, #-8]
    // 0x442978: StoreField: r0->field_7 = d0
    //     0x442978: stur         d0, [r0, #7]
    // 0x44297c: StoreField: r0->field_f = d0
    //     0x44297c: stur         d0, [r0, #0xf]
    // 0x442980: ArrayStore: r0[0] = xzr  ; List_8
    //     0x442980: stur         xzr, [r0, #0x17]
    // 0x442984: StoreField: r0->field_1f = xzr
    //     0x442984: stur         xzr, [r0, #0x1f]
    // 0x442988: r0 = call 0x3a142c
    //     0x442988: bl           0x3a142c
    // 0x44298c: r1 = r0
    //     0x44298c: mov          r1, r0
    // 0x442990: r0 = pp[0x177]
    //     0x442990: add          r0, PP, #0xf, lsl #12
    //     0x442994: ldr          r0, [r0, #0x168]
    //     0x442998: stur         r1, [fp, #-0x10]
    // 0x44299c: StoreField: r1->field_b = r0
    //     0x44299c: stur         r0, [r1, #0xb]
    // 0x4429a0: r0 = pp[0x17f]
    //     0x4429a0: add          r0, PP, #0xf, lsl #12
    //     0x4429a4: ldr          r0, [r0, #0x170]
    // 0x4429a8: StoreField: r1->field_f = r0
    //     0x4429a8: stur         r0, [r1, #0xf]
    // 0x4429ac: r0 = pp[0x187]
    //     0x4429ac: add          r0, PP, #0xf, lsl #12
    //     0x4429b0: ldr          r0, [r0, #0x178]
    // 0x4429b4: StoreField: r1->field_1b = r0
    //     0x4429b4: stur         r0, [r1, #0x1b]
    // 0x4429b8: r0 = call 0x391a04
    //     0x4429b8: bl           0x391a04
    //     0x4429bc: stur         r0, [fp, #-0x18]
    //     0x4429c0: ldur         BARRIER, [fp, #-8]
    // 0x4429c4: lr = pp[0xb5e]
    //     0x4429c4: add          lr, PP, #0xe, lsl #12
    //     0x4429c8: ldr          lr, [lr, #0xb50]
    //     0x4429cc: stp          lr, BARRIER, [SP, #0x10]
    // 0x4429d0: BARRIER = pp[0xb5e]
    //     0x4429d0: add          BARRIER, PP, #0xe, lsl #12
    //     0x4429d4: ldr          BARRIER, [BARRIER, #0xb50]
    //     0x4429d8: ldur         lr, [fp, #-0x10]
    //     0x4429dc: stp          lr, BARRIER, [SP]
    // 0x4429e0: r1 = r0
    //     0x4429e0: mov          r1, r0
    // 0x4429e4: r4 = pp[0x18f]
    //     0x4429e4: add          r4, PP, #0xf, lsl #12
    //     0x4429e8: ldr          r4, [r4, #0x180]
    // 0x4429ec: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4429ec: bl           0x391490
    // 0x4429f0: r0 = call 0x3a1d94
    //     0x4429f0: bl           0x3a1d94
    // 0x4429f4: r1 = pp[0x197]
    //     0x4429f4: add          r1, PP, #0xf, lsl #12
    //     0x4429f8: ldr          r1, [r1, #0x188]
    // 0x4429fc: r2 = NULL
    //     0x4429fc: mov          r2, NULL
    //     0x442a00: stur         r0, [fp, #-8]
    // 0x442a04: r0 = call 0x61ec54
    //     0x442a04: bl           0x61ec54
    //     0x442a08: ldur         BARRIER, [fp, #-0x18]
    //     0x442a0c: stp          r0, BARRIER, [SP]
    //     0x442a10: ldur         r1, [fp, #-8]
    // 0x442a14: r4 = pp[0xece]
    //     0x442a14: add          r4, PP, #0xe, lsl #12
    //     0x442a18: ldr          r4, [r4, #0xec0]
    // 0x442a1c: r0 = flutter$src$widgets$gesture_detector_GestureDetector::ctor()
    //     0x442a1c: bl           0x3a18c4
    // 0x442a20: r0 = call 0x396460
    //     0x442a20: bl           0x396460
    // 0x442a24: r1 = pp[0x19f]
    //     0x442a24: add          r1, PP, #0xf, lsl #12
    //     0x442a28: ldr          r1, [r1, #0x190]
    // 0x442a2c: StoreField: r0->field_f = r1
    //     0x442a2c: stur         r1, [r0, #0xf]
    //     0x442a30: ldur         r1, [fp, #-8]
    // 0x442a34: StoreField: r0->field_b = r1
    //     0x442a34: stur         r1, [r0, #0xb]
    // 0x442a38: SP = fp
    //     0x442a38: mov          SP, fp
    // 0x442a3c: LeaveFrame
    //     0x442a3c: ldp          fp, lr, [SP], #0x10
    // 0x442a40: ret
    //     0x442a40: ret          
    // 0x442a44: r0 = call 0x61fa28
    //     0x442a44: bl           0x61fa28
    // 0x442a48: b 0x44296c
    //     0x442a48: b            0x44296c
  }

  emptyWidge() {
    // ** addr: 0x443014, size: 0x1f4
    // 0x443014: EnterFrame
    //     0x443014: stp          fp, lr, [SP, #-0x10]!
    //     0x443018: mov          fp, SP
    // 0x44301c: AllocStack(0x30)
    //     0x44301c: sub          SP, SP, #0x30
    // 0x443020: CheckStackOverflow
    //     0x443020: ldr          BARRIER, [THR, #0x38]
    //     0x443024: cmp          SP, BARRIER
    //     0x443028: b.ls         0x443200
    // 0x44302c: r0 = call 0x3a142c
    //     0x44302c: bl           0x3a142c
    // 0x443030: r1 = r0
    //     0x443030: mov          r1, r0
    // 0x443034: r0 = pp[0x277]
    //     0x443034: add          r0, PP, #0xf, lsl #12
    //     0x443038: ldr          r0, [r0, #0x268]
    //     0x44303c: stur         r1, [fp, #-8]
    // 0x443040: StoreField: r1->field_b = r0
    //     0x443040: stur         r0, [r1, #0xb]
    // 0x443044: r0 = pp[0x17f]
    //     0x443044: add          r0, PP, #0xf, lsl #12
    //     0x443048: ldr          r0, [r0, #0x170]
    // 0x44304c: StoreField: r1->field_f = r0
    //     0x44304c: stur         r0, [r1, #0xf]
    // 0x443050: r0 = pp[0x27f]
    //     0x443050: add          r0, PP, #0xf, lsl #12
    //     0x443054: ldr          r0, [r0, #0x270]
    // 0x443058: StoreField: r1->field_13 = r0
    //     0x443058: stur         r0, [r1, #0x13]
    // 0x44305c: r0 = pp[0x287]
    //     0x44305c: add          r0, PP, #0xf, lsl #12
    //     0x443060: ldr          r0, [r0, #0x278]
    // 0x443064: ArrayStore: r1[0] = r0  ; List_8
    //     0x443064: stur         r0, [r1, #0x17]
    // 0x443068: r0 = call 0x3949ec
    //     0x443068: bl           0x3949ec
    // 0x44306c: r2 = r0
    //     0x44306c: mov          r2, r0
    // 0x443070: r0 = pp[0x28f]
    //     0x443070: add          r0, PP, #0xf, lsl #12
    //     0x443074: ldr          r0, [r0, #0x280]
    //     0x443078: stur         r2, [fp, #-0x10]
    // 0x44307c: StoreField: r2->field_13 = r0
    //     0x44307c: stur         r0, [r2, #0x13]
    // 0x443080: r1 = pp[0x824]
    //     0x443080: add          r1, PP, #0xc, lsl #12
    //     0x443084: ldr          r1, [r1, #0x818]
    // 0x443088: r4 = pp[0x4c0]
    //     0x443088: ldr          r4, [PP, #0x4c0]
    // 0x44308c: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x44308c: bl           0x3a1dcc
    //     0x443090: stur         r0, [fp, #-0x18]
    // 0x443094: r0 = call 0x31d844
    //     0x443094: bl           0x31d844
    // 0x443098: r1 = r0
    //     0x443098: mov          r1, r0
    // 0x44309c: r0 = pp[0x6310]
    //     0x44309c: ldr          r0, [PP, #0x6310]
    //     0x4430a0: stur         r1, [fp, #-0x20]
    // 0x4430a4: StoreField: r1->field_27 = r0
    //     0x4430a4: stur         r0, [r1, #0x27]
    //     0x4430a8: fmov         d0, #1.00000000
    // 0x4430ac: StoreField: r1->field_7 = d0
    //     0x4430ac: stur         d0, [r1, #7]
    // 0x4430b0: d0 = pp[0xe16]
    //     0x4430b0: add          r17, PP, #0xe, lsl #12
    //     0x4430b4: ldr          d0, [r17, #0xe08]
    // 0x4430b8: StoreField: r1->field_f = d0
    //     0x4430b8: stur         d0, [r1, #0xf]
    // 0x4430bc: ArrayStore: r1[0] = d0  ; List_8
    //     0x4430bc: stur         d0, [r1, #0x17]
    // 0x4430c0: StoreField: r1->field_1f = d0
    //     0x4430c0: stur         d0, [r1, #0x1f]
    // 0x4430c4: r0 = call 0x31abec
    //     0x4430c4: bl           0x31abec
    // 0x4430c8: r1 = r0
    //     0x4430c8: mov          r1, r0
    //     0x4430cc: add          r0, NULL, #0x20
    //     0x4430d0: stur         r1, [fp, #-0x28]
    // 0x4430d4: StoreField: r1->field_7 = r0
    //     0x4430d4: stur         r0, [r1, #7]
    //     0x4430d8: ldur         r0, [fp, #-0x20]
    // 0x4430dc: StoreField: r1->field_b = r0
    //     0x4430dc: stur         r0, [r1, #0xb]
    // 0x4430e0: r0 = pp[0xdf6]
    //     0x4430e0: add          r0, PP, #0xe, lsl #12
    //     0x4430e4: ldr          r0, [r0, #0xde8]
    // 0x4430e8: StoreField: r1->field_1f = r0
    //     0x4430e8: stur         r0, [r1, #0x1f]
    // 0x4430ec: r0 = call 0x393bf8
    //     0x4430ec: bl           0x393bf8
    // 0x4430f0: r1 = r0
    //     0x4430f0: mov          r1, r0
    //     0x4430f4: ldur         r0, [fp, #-0x18]
    //     0x4430f8: stur         r1, [fp, #-0x20]
    // 0x4430fc: StoreField: r1->field_b = r0
    //     0x4430fc: stur         r0, [r1, #0xb]
    //     0x443100: ldur         r0, [fp, #-0x28]
    // 0x443104: StoreField: r1->field_13 = r0
    //     0x443104: stur         r0, [r1, #0x13]
    // 0x443108: r0 = call 0x3949ec
    //     0x443108: bl           0x3949ec
    // 0x44310c: r3 = r0
    //     0x44310c: mov          r3, r0
    // 0x443110: r0 = pp[0x66c8]
    //     0x443110: ldr          r0, [PP, #0x66c8]
    //     0x443114: stur         r3, [fp, #-0x18]
    // 0x443118: StoreField: r3->field_13 = r0
    //     0x443118: stur         r0, [r3, #0x13]
    // 0x44311c: r1 = NULL
    //     0x44311c: mov          r1, NULL
    //     0x443120: mov          r2, #8
    // 0x443124: r0 = call 0x61f920
    //     0x443124: bl           0x61f920
    // 0x443128: r2 = r0
    //     0x443128: mov          r2, r0
    //     0x44312c: ldur         r0, [fp, #-8]
    //     0x443130: stur         r2, [fp, #-0x28]
    // 0x443134: StoreField: r2->field_f = r0
    //     0x443134: stur         r0, [r2, #0xf]
    //     0x443138: ldur         r0, [fp, #-0x10]
    // 0x44313c: StoreField: r2->field_13 = r0
    //     0x44313c: stur         r0, [r2, #0x13]
    //     0x443140: ldur         r0, [fp, #-0x20]
    // 0x443144: ArrayStore: r2[0] = r0  ; List_8
    //     0x443144: stur         r0, [r2, #0x17]
    //     0x443148: ldur         r0, [fp, #-0x18]
    // 0x44314c: StoreField: r2->field_1b = r0
    //     0x44314c: stur         r0, [r2, #0x1b]
    // 0x443150: r1 = pp[0x5c58]
    //     0x443150: ldr          r1, [PP, #0x5c58]
    // 0x443154: r0 = call 0x61e854
    //     0x443154: bl           0x61e854
    // 0x443158: r1 = r0
    //     0x443158: mov          r1, r0
    //     0x44315c: ldur         r0, [fp, #-0x28]
    //     0x443160: stur         r1, [fp, #-8]
    // 0x443164: StoreField: r1->field_f = r0
    //     0x443164: stur         r0, [r1, #0xf]
    //     0x443168: mov          r0, #8
    // 0x44316c: StoreField: r1->field_b = r0
    //     0x44316c: stur         r0, [r1, #0xb]
    // 0x443170: r0 = call 0x39310c
    //     0x443170: bl           0x39310c
    // 0x443174: r1 = r0
    //     0x443174: mov          r1, r0
    // 0x443178: r0 = pp[0x862]
    //     0x443178: add          r0, PP, #0xa, lsl #12
    //     0x44317c: ldr          r0, [r0, #0x858]
    //     0x443180: stur         r1, [fp, #-0x10]
    // 0x443184: StoreField: r1->field_f = r0
    //     0x443184: stur         r0, [r1, #0xf]
    // 0x443188: r0 = pp[0x297]
    //     0x443188: add          r0, PP, #0xf, lsl #12
    //     0x44318c: ldr          r0, [r0, #0x288]
    // 0x443190: StoreField: r1->field_13 = r0
    //     0x443190: stur         r0, [r1, #0x13]
    // 0x443194: r0 = pp[0xaf6]
    //     0x443194: add          r0, PP, #0xe, lsl #12
    //     0x443198: ldr          r0, [r0, #0xae8]
    // 0x44319c: ArrayStore: r1[0] = r0  ; List_8
    //     0x44319c: stur         r0, [r1, #0x17]
    // 0x4431a0: r0 = pp[0xb6e]
    //     0x4431a0: add          r0, PP, #0xe, lsl #12
    //     0x4431a4: ldr          r0, [r0, #0xb60]
    // 0x4431a8: StoreField: r1->field_1b = r0
    //     0x4431a8: stur         r0, [r1, #0x1b]
    // 0x4431ac: r0 = pp[0xb06]
    //     0x4431ac: add          r0, PP, #0xe, lsl #12
    //     0x4431b0: ldr          r0, [r0, #0xaf8]
    // 0x4431b4: StoreField: r1->field_23 = r0
    //     0x4431b4: stur         r0, [r1, #0x23]
    // 0x4431b8: r0 = pp[0xb2]
    //     0x4431b8: add          r0, PP, #0xa, lsl #12
    //     0x4431bc: ldr          r0, [r0, #0xa8]
    // 0x4431c0: StoreField: r1->field_2b = r0
    //     0x4431c0: stur         r0, [r1, #0x2b]
    // 0x4431c4: StoreField: r1->field_2f = xzr
    //     0x4431c4: stur         xzr, [r1, #0x2f]
    //     0x4431c8: ldur         r0, [fp, #-8]
    // 0x4431cc: StoreField: r1->field_b = r0
    //     0x4431cc: stur         r0, [r1, #0xb]
    // 0x4431d0: r0 = call 0x391a04
    //     0x4431d0: bl           0x391a04
    //     0x4431d4: stur         r0, [fp, #-8]
    //     0x4431d8: ldur         BARRIER, [fp, #-0x10]
    //     0x4431dc: str          BARRIER, [SP]
    // 0x4431e0: r1 = r0
    //     0x4431e0: mov          r1, r0
    // 0x4431e4: r4 = pp[0x204]
    //     0x4431e4: add          r4, PP, #0xc, lsl #12
    //     0x4431e8: ldr          r4, [r4, #0x1f8]
    // 0x4431ec: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4431ec: bl           0x391490
    //     0x4431f0: ldur         r0, [fp, #-8]
    // 0x4431f4: SP = fp
    //     0x4431f4: mov          SP, fp
    // 0x4431f8: LeaveFrame
    //     0x4431f8: ldp          fp, lr, [SP], #0x10
    // 0x4431fc: ret
    //     0x4431fc: ret          
    // 0x443200: r0 = call 0x61fa28
    //     0x443200: bl           0x61fa28
    // 0x443204: b 0x44302c
    //     0x443204: b            0x44302c
  }

  launchRecordListWidget() {
    // ** addr: 0x443208, size: 0x170
    // 0x443208: EnterFrame
    //     0x443208: stp          fp, lr, [SP, #-0x10]!
    //     0x44320c: mov          fp, SP
    // 0x443210: AllocStack(0x20)
    //     0x443210: sub          SP, SP, #0x20
    //     0x443214: stur         r1, [fp, #-0x10]
    //     0x443218: stur         r2, [fp, #-0x18]
    // 0x44321c: CheckStackOverflow
    //     0x44321c: ldr          BARRIER, [THR, #0x38]
    //     0x443220: cmp          SP, BARRIER
    //     0x443224: b.ls         0x443358
    //     0x443228: ldp          r0, r3, [THR, #0x50]
    //     0x44322c: add          r0, r0, #0x10
    //     0x443230: cmp          r3, r0
    // 0x443234: b.ls 0x443360
    //     0x443234: b.ls         0x443360
    //     0x443238: str          r0, [THR, #0x50]
    //     0x44323c: sub          r0, r0, #0xf
    //     0x443240: mov          r3, #0xe15c
    //     0x443244: movk         r3, #3, lsl #16
    //     0x443248: stur         r3, [r0, #-1]
    // 0x44324c: StoreField: r0->field_7 = d0
    //     0x44324c: stur         d0, [r0, #7]
    //     0x443250: stur         r0, [fp, #-8]
    //     0x443254: mov          r1, #6
    // 0x443258: r0 = call 0x61e890
    //     0x443258: bl           0x61e890
    // 0x44325c: r1 = r0
    //     0x44325c: mov          r1, r0
    //     0x443260: ldur         r0, [fp, #-8]
    //     0x443264: stur         r1, [fp, #-0x20]
    // 0x443268: StoreField: r1->field_f = r0
    //     0x443268: stur         r0, [r1, #0xf]
    //     0x44326c: ldur         r0, [fp, #-0x10]
    //     0x443270: lsl          r2, r0, #1
    // 0x443274: StoreField: r1->field_13 = r2
    //     0x443274: stur         r2, [r1, #0x13]
    //     0x443278: ldur         r0, [fp, #-0x18]
    // 0x44327c: ArrayStore: r1[0] = r0  ; List_8
    //     0x44327c: stur         r0, [r1, #0x17]
    // 0x443280: r0 = call 0x31abec
    //     0x443280: bl           0x31abec
    // 0x443284: r1 = r0
    //     0x443284: mov          r1, r0
    //     0x443288: add          r0, NULL, #0x20
    // 0x44328c: StoreField: r1->field_7 = r0
    //     0x44328c: stur         r0, [r1, #7]
    // 0x443290: r0 = pp[0x6050]
    //     0x443290: ldr          r0, [PP, #0x6050]
    // 0x443294: StoreField: r1->field_b = r0
    //     0x443294: stur         r0, [r1, #0xb]
    // 0x443298: r0 = pp[0x7598]
    //     0x443298: ldr          r0, [PP, #0x7598]
    // 0x44329c: StoreField: r1->field_1f = r0
    //     0x44329c: stur         r0, [r1, #0x1f]
    //     0x4432a0: ldur         r2, [fp, #-0x20]
    // 0x4432a4: StoreField: r2->field_1b = r1
    //     0x4432a4: stur         r1, [r2, #0x1b]
    // 0x4432a8: r1 = pp[0x6bc]
    //     0x4432a8: add          r1, PP, #0xc, lsl #12
    //     0x4432ac: ldr          r1, [r1, #0x6b0]
    // 0x4432b0: r4 = pp[0x4c0]
    //     0x4432b0: ldr          r4, [PP, #0x4c0]
    // 0x4432b4: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4432b4: bl           0x3a1dcc
    //     0x4432b8: ldur         r2, [fp, #-0x20]
    // 0x4432bc: StoreField: r2->field_1f = r0
    //     0x4432bc: stur         r0, [r2, #0x1f]
    //     0x4432c0: ldurb        r16, [r2, #-1]
    //     0x4432c4: ldurb        r17, [r0, #-1]
    //     0x4432c8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4432cc: tst          BARRIER, HEAP, lsr #32
    // 0x4432d0: b.eq 0x4432d8
    //     0x4432d0: b.eq         0x4432d8
    // 0x4432d4: r0 = call 0x61e06c
    //     0x4432d4: bl           0x61e06c
    // 0x4432d8: r1 = pp[0x6ac]
    //     0x4432d8: add          r1, PP, #0xc, lsl #12
    //     0x4432dc: ldr          r1, [r1, #0x6a0]
    // 0x4432e0: r4 = pp[0x4c0]
    //     0x4432e0: ldr          r4, [PP, #0x4c0]
    // 0x4432e4: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x4432e4: bl           0x3a1dcc
    //     0x4432e8: ldur         r2, [fp, #-0x20]
    // 0x4432ec: StoreField: r2->field_23 = r0
    //     0x4432ec: stur         r0, [r2, #0x23]
    //     0x4432f0: ldurb        r16, [r2, #-1]
    //     0x4432f4: ldurb        r17, [r0, #-1]
    //     0x4432f8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4432fc: tst          BARRIER, HEAP, lsr #32
    // 0x443300: b.eq 0x443308
    //     0x443300: b.eq         0x443308
    // 0x443304: r0 = call 0x61e06c
    //     0x443304: bl           0x61e06c
    // 0x443308: ArrayLoad: r0 = r2[0]  ; List_8
    //     0x443308: ldur         r0, [r2, #0x17]
    //     0x44330c: add          r0, r0, HEAP, lsl #32
    // 0x443310: LoadField: r1 = r0->field_b
    //     0x443310: ldur         r1, [r0, #0xb]
    //     0x443314: sbfx         r3, r1, #1, #0x1f
    //     0x443318: stur         r3, [fp, #-0x10]
    // 0x44331c: r1 = pp[0x454]
    //     0x44331c: add          r1, PP, #0x14, lsl #12
    //     0x443320: ldr          r1, [r1, #0x440]
    // 0x443324: r0 = call 0x61ec54
    //     0x443324: bl           0x61ec54
    //     0x443328: stur         r0, [fp, #-8]
    // 0x44332c: r0 = call 0x3ab5ac
    //     0x44332c: bl           0x3ab5ac
    // 0x443330: r1 = r0
    //     0x443330: mov          r1, r0
    //     0x443334: ldur         r2, [fp, #-8]
    //     0x443338: ldur         r3, [fp, #-0x10]
    //     0x44333c: stur         r0, [fp, #-8]
    // 0x443340: r4 = pp[0x2e0]
    //     0x443340: ldr          r4, [PP, #0x2e0]
    // 0x443344: r0 = flutter$src$widgets$scroll_view_ListView::ctor_builder()
    //     0x443344: bl           0x3ab2bc
    //     0x443348: ldur         r0, [fp, #-8]
    // 0x44334c: SP = fp
    //     0x44334c: mov          SP, fp
    // 0x443350: LeaveFrame
    //     0x443350: ldp          fp, lr, [SP], #0x10
    // 0x443354: ret
    //     0x443354: ret          
    // 0x443358: r0 = call 0x61faa8
    //     0x443358: bl           0x61faa8
    // 0x44335c: b 0x443228
    //     0x44335c: b            0x443228
    //     0x443360: str          q0, [SP, #-0x10]!
    //     0x443364: stp          r1, r2, [SP, #-0x10]!
    // 0x443368: r0 = call 0x61f878
    //     0x443368: bl           0x61f878
    //     0x44336c: ldp          r1, r2, [SP], #0x10
    //     0x443370: ldr          q0, [SP], #0x10
    // 0x443374: b 0x44324c
    //     0x443374: b            0x44324c
  }

  _anon_closure() {
    // ** addr: 0x443378, size: 0x720
    // 0x443378: EnterFrame
    //     0x443378: stp          fp, lr, [SP, #-0x10]!
    //     0x44337c: mov          fp, SP
    // 0x443380: AllocStack(0x58)
    //     0x443380: sub          SP, SP, #0x58
    //     0x443384: ldr          r0, [fp, #0x20]
    // 0x443388: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x443388: ldur         r2, [r0, #0x17]
    //     0x44338c: add          r2, r2, HEAP, lsl #32
    //     0x443390: stur         r2, [fp, #-0x10]
    // 0x443394: CheckStackOverflow
    //     0x443394: ldr          BARRIER, [THR, #0x38]
    //     0x443398: cmp          SP, BARRIER
    //     0x44339c: b.ls         0x443a88
    // 0x4433a0: ArrayLoad: r3 = r2[0]  ; List_8
    //     0x4433a0: ldur         r3, [r2, #0x17]
    //     0x4433a4: add          r3, r3, HEAP, lsl #32
    // 0x4433a8: LoadField: r0 = r3->field_b
    //     0x4433a8: ldur         r0, [r3, #0xb]
    //     0x4433ac: ldr          r1, [fp, #0x10]
    //     0x4433b0: sbfx         r4, r1, #1, #0x1f
    // 0x4433b4: branchIfSmi(r1, 0x4433bc)
    //     0x4433b4: tbz          r1, #0, 0x4433bc
    // 0x4433b8: LoadField: r4 = r1->field_7
    //     0x4433b8: ldur         r4, [r1, #7]
    //     0x4433bc: sbfx         r1, r0, #1, #0x1f
    // 0x4433c0: r0 = r1
    //     0x4433c0: mov          r0, r1
    // 0x4433c4: r1 = r4
    //     0x4433c4: mov          r1, r4
    //     0x4433c8: cmp          r1, r0
    // 0x4433cc: b.hs 0x443a90
    //     0x4433cc: b.hs         0x443a90
    // 0x4433d0: LoadField: r0 = r3->field_f
    //     0x4433d0: ldur         r0, [r3, #0xf]
    //     0x4433d4: add          r0, r0, HEAP, lsl #32
    //     0x4433d8: add          BARRIER, r0, r4, lsl #2
    // 0x4433dc: LoadField: r1 = BARRIER->field_f
    //     0x4433dc: ldur         r1, [BARRIER, #0xf]
    //     0x4433e0: add          r1, r1, HEAP, lsl #32
    //     0x4433e4: stur         r1, [fp, #-8]
    // 0x4433e8: r0 = call 0x2e3578
    //     0x4433e8: bl           0x2e3578
    //     0x4433ec: stur         r0, [fp, #-0x30]
    // 0x4433f0: StoreField: r0->field_7 = xzr
    //     0x4433f0: stur         xzr, [r0, #7]
    //     0x4433f4: fmov         d0, #5.00000000
    // 0x4433f8: StoreField: r0->field_f = d0
    //     0x4433f8: stur         d0, [r0, #0xf]
    // 0x4433fc: ArrayStore: r0[0] = xzr  ; List_8
    //     0x4433fc: stur         xzr, [r0, #0x17]
    // 0x443400: StoreField: r0->field_1f = xzr
    //     0x443400: stur         xzr, [r0, #0x1f]
    //     0x443404: ldur         r1, [fp, #-0x10]
    // 0x443408: LoadField: r2 = r1->field_f
    //     0x443408: ldur         r2, [r1, #0xf]
    //     0x44340c: add          r2, r2, HEAP, lsl #32
    //     0x443410: ldur         r3, [fp, #-8]
    //     0x443414: stur         r2, [fp, #-0x28]
    // 0x443418: LoadField: r4 = r3->field_13
    //     0x443418: ldur         r4, [r3, #0x13]
    //     0x44341c: add          r4, r4, HEAP, lsl #32
    //     0x443420: cmp          r4, r22
    // 0x443424: b.ne 0x44342c
    //     0x443424: b.ne         0x44342c
    // 0x443428: r4 = pp[0x148]
    //     0x443428: ldr          r4, [PP, #0x148]
    //     0x44342c: stur         r4, [fp, #-0x20]
    // 0x443430: LoadField: r5 = r1->field_1b
    //     0x443430: ldur         r5, [r1, #0x1b]
    //     0x443434: add          r5, r5, HEAP, lsl #32
    //     0x443438: stur         r5, [fp, #-0x18]
    // 0x44343c: r0 = call 0x393bf8
    //     0x44343c: bl           0x393bf8
    // 0x443440: r1 = r0
    //     0x443440: mov          r1, r0
    //     0x443444: ldur         r0, [fp, #-0x20]
    //     0x443448: stur         r1, [fp, #-0x38]
    // 0x44344c: StoreField: r1->field_b = r0
    //     0x44344c: stur         r0, [r1, #0xb]
    //     0x443450: ldur         r0, [fp, #-0x18]
    // 0x443454: StoreField: r1->field_13 = r0
    //     0x443454: stur         r0, [r1, #0x13]
    //     0x443458: ldur         r2, [fp, #-8]
    // 0x44345c: ArrayLoad: r3 = r2[0]  ; List_8
    //     0x44345c: ldur         r3, [r2, #0x17]
    //     0x443460: add          r3, r3, HEAP, lsl #32
    //     0x443464: cmp          r3, r22
    // 0x443468: b.ne 0x443474
    //     0x443468: b.ne         0x443474
    // 0x44346c: r4 = pp[0x148]
    //     0x44346c: ldr          r4, [PP, #0x148]
    // 0x443470: b 0x443478
    //     0x443470: b            0x443478
    // 0x443474: r4 = r3
    //     0x443474: mov          r4, r3
    //     0x443478: ldur         r3, [fp, #-0x10]
    //     0x44347c: stur         r4, [fp, #-0x20]
    // 0x443480: r0 = call 0x393bf8
    //     0x443480: bl           0x393bf8
    // 0x443484: r3 = r0
    //     0x443484: mov          r3, r0
    //     0x443488: ldur         r0, [fp, #-0x20]
    //     0x44348c: stur         r3, [fp, #-0x40]
    // 0x443490: StoreField: r3->field_b = r0
    //     0x443490: stur         r0, [r3, #0xb]
    //     0x443494: ldur         r0, [fp, #-0x18]
    // 0x443498: StoreField: r3->field_13 = r0
    //     0x443498: stur         r0, [r3, #0x13]
    // 0x44349c: r1 = NULL
    //     0x44349c: mov          r1, NULL
    //     0x4434a0: mov          r2, #4
    // 0x4434a4: r0 = call 0x61f920
    //     0x4434a4: bl           0x61f920
    // 0x4434a8: r2 = r0
    //     0x4434a8: mov          r2, r0
    //     0x4434ac: ldur         r0, [fp, #-0x38]
    //     0x4434b0: stur         r2, [fp, #-0x18]
    // 0x4434b4: StoreField: r2->field_f = r0
    //     0x4434b4: stur         r0, [r2, #0xf]
    //     0x4434b8: ldur         r0, [fp, #-0x40]
    // 0x4434bc: StoreField: r2->field_13 = r0
    //     0x4434bc: stur         r0, [r2, #0x13]
    // 0x4434c0: r1 = pp[0x5c58]
    //     0x4434c0: ldr          r1, [PP, #0x5c58]
    // 0x4434c4: r0 = call 0x61e854
    //     0x4434c4: bl           0x61e854
    // 0x4434c8: r1 = r0
    //     0x4434c8: mov          r1, r0
    //     0x4434cc: ldur         r0, [fp, #-0x18]
    //     0x4434d0: stur         r1, [fp, #-0x20]
    // 0x4434d4: StoreField: r1->field_f = r0
    //     0x4434d4: stur         r0, [r1, #0xf]
    //     0x4434d8: mov          r2, #4
    // 0x4434dc: StoreField: r1->field_b = r2
    //     0x4434dc: stur         r2, [r1, #0xb]
    // 0x4434e0: r0 = call 0x39310c
    //     0x4434e0: bl           0x39310c
    // 0x4434e4: r1 = r0
    //     0x4434e4: mov          r1, r0
    // 0x4434e8: r0 = pp[0x862]
    //     0x4434e8: add          r0, PP, #0xa, lsl #12
    //     0x4434ec: ldr          r0, [r0, #0x858]
    //     0x4434f0: stur         r1, [fp, #-0x18]
    // 0x4434f4: StoreField: r1->field_f = r0
    //     0x4434f4: stur         r0, [r1, #0xf]
    // 0x4434f8: r2 = pp[0xaee]
    //     0x4434f8: add          r2, PP, #0xe, lsl #12
    //     0x4434fc: ldr          r2, [r2, #0xae0]
    // 0x443500: StoreField: r1->field_13 = r2
    //     0x443500: stur         r2, [r1, #0x13]
    // 0x443504: r3 = pp[0xaf6]
    //     0x443504: add          r3, PP, #0xe, lsl #12
    //     0x443508: ldr          r3, [r3, #0xae8]
    // 0x44350c: ArrayStore: r1[0] = r3  ; List_8
    //     0x44350c: stur         r3, [r1, #0x17]
    // 0x443510: r4 = pp[0xb6e]
    //     0x443510: add          r4, PP, #0xe, lsl #12
    //     0x443514: ldr          r4, [r4, #0xb60]
    // 0x443518: StoreField: r1->field_1b = r4
    //     0x443518: stur         r4, [r1, #0x1b]
    // 0x44351c: r5 = pp[0xb06]
    //     0x44351c: add          r5, PP, #0xe, lsl #12
    //     0x443520: ldr          r5, [r5, #0xaf8]
    // 0x443524: StoreField: r1->field_23 = r5
    //     0x443524: stur         r5, [r1, #0x23]
    // 0x443528: r6 = pp[0xb2]
    //     0x443528: add          r6, PP, #0xa, lsl #12
    //     0x44352c: ldr          r6, [r6, #0xa8]
    // 0x443530: StoreField: r1->field_2b = r6
    //     0x443530: stur         r6, [r1, #0x2b]
    // 0x443534: StoreField: r1->field_2f = xzr
    //     0x443534: stur         xzr, [r1, #0x2f]
    //     0x443538: ldur         r7, [fp, #-0x20]
    // 0x44353c: StoreField: r1->field_b = r7
    //     0x44353c: stur         r7, [r1, #0xb]
    // 0x443540: r0 = call 0x391a04
    //     0x443540: bl           0x391a04
    //     0x443544: stur         r0, [fp, #-0x20]
    //     0x443548: ldur         BARRIER, [fp, #-0x30]
    //     0x44354c: ldur         lr, [fp, #-0x28]
    //     0x443550: stp          lr, BARRIER, [SP, #8]
    //     0x443554: ldur         BARRIER, [fp, #-0x18]
    //     0x443558: str          BARRIER, [SP]
    // 0x44355c: r1 = r0
    //     0x44355c: mov          r1, r0
    // 0x443560: r4 = pp[0x3c1]
    //     0x443560: add          r4, PP, #0x11, lsl #12
    //     0x443564: ldr          r4, [r4, #0x3b0]
    // 0x443568: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x443568: bl           0x391490
    //     0x44356c: ldur         r0, [fp, #-0x10]
    // 0x443570: LoadField: r1 = r0->field_13
    //     0x443570: ldur         r1, [r0, #0x13]
    //     0x443574: cmp          r1, #2
    // 0x443578: b.ne 0x443604
    //     0x443578: b.ne         0x443604
    //     0x44357c: ldur         r1, [fp, #-8]
    // 0x443580: LoadField: r2 = r0->field_f
    //     0x443580: ldur         r2, [r0, #0xf]
    //     0x443584: add          r2, r2, HEAP, lsl #32
    //     0x443588: stur         r2, [fp, #-0x30]
    // 0x44358c: LoadField: r3 = r1->field_7
    //     0x44358c: ldur         r3, [r1, #7]
    //     0x443590: add          r3, r3, HEAP, lsl #32
    //     0x443594: cmp          r3, r22
    // 0x443598: b.ne 0x4435a0
    //     0x443598: b.ne         0x4435a0
    // 0x44359c: r3 = pp[0x148]
    //     0x44359c: ldr          r3, [PP, #0x148]
    //     0x4435a0: stur         r3, [fp, #-0x28]
    // 0x4435a4: LoadField: r4 = r0->field_1b
    //     0x4435a4: ldur         r4, [r0, #0x1b]
    //     0x4435a8: add          r4, r4, HEAP, lsl #32
    //     0x4435ac: stur         r4, [fp, #-0x18]
    // 0x4435b0: r0 = call 0x393bf8
    //     0x4435b0: bl           0x393bf8
    // 0x4435b4: r1 = r0
    //     0x4435b4: mov          r1, r0
    //     0x4435b8: ldur         r0, [fp, #-0x28]
    //     0x4435bc: stur         r1, [fp, #-0x38]
    // 0x4435c0: StoreField: r1->field_b = r0
    //     0x4435c0: stur         r0, [r1, #0xb]
    //     0x4435c4: ldur         r0, [fp, #-0x18]
    // 0x4435c8: StoreField: r1->field_13 = r0
    //     0x4435c8: stur         r0, [r1, #0x13]
    // 0x4435cc: r0 = call 0x391a04
    //     0x4435cc: bl           0x391a04
    //     0x4435d0: stur         r0, [fp, #-0x18]
    //     0x4435d4: ldur         BARRIER, [fp, #-0x30]
    // 0x4435d8: lr = pp[0xaae]
    //     0x4435d8: add          lr, PP, #0xe, lsl #12
    //     0x4435dc: ldr          lr, [lr, #0xaa0]
    //     0x4435e0: stp          lr, BARRIER, [SP, #8]
    //     0x4435e4: ldur         BARRIER, [fp, #-0x38]
    //     0x4435e8: str          BARRIER, [SP]
    // 0x4435ec: r1 = r0
    //     0x4435ec: mov          r1, r0
    // 0x4435f0: r4 = pp[0xd50]
    //     0x4435f0: add          r4, PP, #0x10, lsl #12
    //     0x4435f4: ldr          r4, [r4, #0xd40]
    // 0x4435f8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4435f8: bl           0x391490
    //     0x4435fc: ldur         r1, [fp, #-0x18]
    // 0x443600: b 0x443698
    //     0x443600: b            0x443698
    //     0x443604: ldur         r1, [fp, #-8]
    // 0x443608: LoadField: r2 = r0->field_f
    //     0x443608: ldur         r2, [r0, #0xf]
    //     0x44360c: add          r2, r2, HEAP, lsl #32
    //     0x443610: stur         r2, [fp, #-0x30]
    // 0x443614: LoadField: r3 = r1->field_1f
    //     0x443614: ldur         r3, [r1, #0x1f]
    //     0x443618: add          r3, r3, HEAP, lsl #32
    //     0x44361c: cmp          r3, #2
    // 0x443620: b.ne 0x443630
    //     0x443620: b.ne         0x443630
    // 0x443624: LoadField: r3 = r0->field_1f
    //     0x443624: ldur         r3, [r0, #0x1f]
    //     0x443628: add          r3, r3, HEAP, lsl #32
    // 0x44362c: b 0x443638
    //     0x44362c: b            0x443638
    // 0x443630: LoadField: r3 = r0->field_23
    //     0x443630: ldur         r3, [r0, #0x23]
    //     0x443634: add          r3, r3, HEAP, lsl #32
    //     0x443638: stur         r3, [fp, #-0x28]
    // 0x44363c: LoadField: r4 = r0->field_1b
    //     0x44363c: ldur         r4, [r0, #0x1b]
    //     0x443640: add          r4, r4, HEAP, lsl #32
    //     0x443644: stur         r4, [fp, #-0x18]
    // 0x443648: r0 = call 0x393bf8
    //     0x443648: bl           0x393bf8
    // 0x44364c: r1 = r0
    //     0x44364c: mov          r1, r0
    //     0x443650: ldur         r0, [fp, #-0x28]
    //     0x443654: stur         r1, [fp, #-0x38]
    // 0x443658: StoreField: r1->field_b = r0
    //     0x443658: stur         r0, [r1, #0xb]
    //     0x44365c: ldur         r0, [fp, #-0x18]
    // 0x443660: StoreField: r1->field_13 = r0
    //     0x443660: stur         r0, [r1, #0x13]
    // 0x443664: r0 = call 0x391a04
    //     0x443664: bl           0x391a04
    //     0x443668: stur         r0, [fp, #-0x18]
    //     0x44366c: ldur         BARRIER, [fp, #-0x30]
    // 0x443670: lr = pp[0xaae]
    //     0x443670: add          lr, PP, #0xe, lsl #12
    //     0x443674: ldr          lr, [lr, #0xaa0]
    //     0x443678: stp          lr, BARRIER, [SP, #8]
    //     0x44367c: ldur         BARRIER, [fp, #-0x38]
    //     0x443680: str          BARRIER, [SP]
    // 0x443684: r1 = r0
    //     0x443684: mov          r1, r0
    // 0x443688: r4 = pp[0xd50]
    //     0x443688: add          r4, PP, #0x10, lsl #12
    //     0x44368c: ldr          r4, [r4, #0xd40]
    // 0x443690: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x443690: bl           0x391490
    //     0x443694: ldur         r1, [fp, #-0x18]
    //     0x443698: ldur         r0, [fp, #-0x10]
    //     0x44369c: stur         r1, [fp, #-0x38]
    // 0x4436a0: LoadField: r2 = r0->field_13
    //     0x4436a0: ldur         r2, [r0, #0x13]
    //     0x4436a4: cmp          r2, #2
    // 0x4436a8: b.ne 0x443734
    //     0x4436a8: b.ne         0x443734
    //     0x4436ac: ldur         r2, [fp, #-8]
    // 0x4436b0: LoadField: r3 = r0->field_f
    //     0x4436b0: ldur         r3, [r0, #0xf]
    //     0x4436b4: add          r3, r3, HEAP, lsl #32
    //     0x4436b8: stur         r3, [fp, #-0x30]
    // 0x4436bc: LoadField: r4 = r2->field_b
    //     0x4436bc: ldur         r4, [r2, #0xb]
    //     0x4436c0: add          r4, r4, HEAP, lsl #32
    //     0x4436c4: cmp          r4, r22
    // 0x4436c8: b.ne 0x4436d0
    //     0x4436c8: b.ne         0x4436d0
    // 0x4436cc: r4 = pp[0x148]
    //     0x4436cc: ldr          r4, [PP, #0x148]
    //     0x4436d0: stur         r4, [fp, #-0x28]
    // 0x4436d4: LoadField: r5 = r0->field_1b
    //     0x4436d4: ldur         r5, [r0, #0x1b]
    //     0x4436d8: add          r5, r5, HEAP, lsl #32
    //     0x4436dc: stur         r5, [fp, #-0x18]
    // 0x4436e0: r0 = call 0x393bf8
    //     0x4436e0: bl           0x393bf8
    // 0x4436e4: r1 = r0
    //     0x4436e4: mov          r1, r0
    //     0x4436e8: ldur         r0, [fp, #-0x28]
    //     0x4436ec: stur         r1, [fp, #-0x40]
    // 0x4436f0: StoreField: r1->field_b = r0
    //     0x4436f0: stur         r0, [r1, #0xb]
    //     0x4436f4: ldur         r0, [fp, #-0x18]
    // 0x4436f8: StoreField: r1->field_13 = r0
    //     0x4436f8: stur         r0, [r1, #0x13]
    // 0x4436fc: r0 = call 0x391a04
    //     0x4436fc: bl           0x391a04
    //     0x443700: stur         r0, [fp, #-0x18]
    //     0x443704: ldur         BARRIER, [fp, #-0x30]
    // 0x443708: lr = pp[0xaae]
    //     0x443708: add          lr, PP, #0xe, lsl #12
    //     0x44370c: ldr          lr, [lr, #0xaa0]
    //     0x443710: stp          lr, BARRIER, [SP, #8]
    //     0x443714: ldur         BARRIER, [fp, #-0x40]
    //     0x443718: str          BARRIER, [SP]
    // 0x44371c: r1 = r0
    //     0x44371c: mov          r1, r0
    // 0x443720: r4 = pp[0xd50]
    //     0x443720: add          r4, PP, #0x10, lsl #12
    //     0x443724: ldr          r4, [r4, #0xd40]
    // 0x443728: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x443728: bl           0x391490
    //     0x44372c: ldur         r2, [fp, #-0x18]
    // 0x443730: b 0x4437b8
    //     0x443730: b            0x4437b8
    //     0x443734: ldur         r1, [fp, #-8]
    // 0x443738: LoadField: r2 = r0->field_f
    //     0x443738: ldur         r2, [r0, #0xf]
    //     0x44373c: add          r2, r2, HEAP, lsl #32
    //     0x443740: stur         r2, [fp, #-0x30]
    // 0x443744: LoadField: r3 = r1->field_f
    //     0x443744: ldur         r3, [r1, #0xf]
    //     0x443748: add          r3, r3, HEAP, lsl #32
    //     0x44374c: cmp          r3, r22
    // 0x443750: b.ne 0x443758
    //     0x443750: b.ne         0x443758
    // 0x443754: r3 = pp[0x148]
    //     0x443754: ldr          r3, [PP, #0x148]
    //     0x443758: stur         r3, [fp, #-0x28]
    // 0x44375c: LoadField: r4 = r0->field_1b
    //     0x44375c: ldur         r4, [r0, #0x1b]
    //     0x443760: add          r4, r4, HEAP, lsl #32
    //     0x443764: stur         r4, [fp, #-0x18]
    // 0x443768: r0 = call 0x393bf8
    //     0x443768: bl           0x393bf8
    // 0x44376c: r1 = r0
    //     0x44376c: mov          r1, r0
    //     0x443770: ldur         r0, [fp, #-0x28]
    //     0x443774: stur         r1, [fp, #-0x40]
    // 0x443778: StoreField: r1->field_b = r0
    //     0x443778: stur         r0, [r1, #0xb]
    //     0x44377c: ldur         r0, [fp, #-0x18]
    // 0x443780: StoreField: r1->field_13 = r0
    //     0x443780: stur         r0, [r1, #0x13]
    // 0x443784: r0 = call 0x391a04
    //     0x443784: bl           0x391a04
    //     0x443788: stur         r0, [fp, #-0x18]
    //     0x44378c: ldur         BARRIER, [fp, #-0x30]
    // 0x443790: lr = pp[0xaae]
    //     0x443790: add          lr, PP, #0xe, lsl #12
    //     0x443794: ldr          lr, [lr, #0xaa0]
    //     0x443798: stp          lr, BARRIER, [SP, #8]
    //     0x44379c: ldur         BARRIER, [fp, #-0x40]
    //     0x4437a0: str          BARRIER, [SP]
    // 0x4437a4: r1 = r0
    //     0x4437a4: mov          r1, r0
    // 0x4437a8: r4 = pp[0xd50]
    //     0x4437a8: add          r4, PP, #0x10, lsl #12
    //     0x4437ac: ldr          r4, [r4, #0xd40]
    // 0x4437b0: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4437b0: bl           0x391490
    //     0x4437b4: ldur         r2, [fp, #-0x18]
    //     0x4437b8: ldur         r0, [fp, #-0x10]
    //     0x4437bc: ldur         r1, [fp, #-8]
    //     0x4437c0: stur         r2, [fp, #-0x28]
    // 0x4437c4: LoadField: r3 = r0->field_f
    //     0x4437c4: ldur         r3, [r0, #0xf]
    //     0x4437c8: add          r3, r3, HEAP, lsl #32
    //     0x4437cc: stur         r3, [fp, #-0x18]
    // 0x4437d0: LoadField: r0 = r1->field_1b
    //     0x4437d0: ldur         r0, [r1, #0x1b]
    //     0x4437d4: add          r0, r0, HEAP, lsl #32
    //     0x4437d8: cmp          r0, #2
    // 0x4437dc: b.ne 0x4437e8
    //     0x4437dc: b.ne         0x4437e8
    // 0x4437e0: r5 = pp[0x1d98]
    //     0x4437e0: ldr          r5, [PP, #0x1d98]
    // 0x4437e4: b 0x4437ec
    //     0x4437e4: b            0x4437ec
    // 0x4437e8: r5 = pp[0x3f00]
    //     0x4437e8: ldr          r5, [PP, #0x3f00]
    //     0x4437ec: ldur         r4, [fp, #-0x20]
    //     0x4437f0: ldur         r0, [fp, #-0x38]
    // 0x4437f4: LoadField: r6 = r1->field_f
    //     0x4437f4: ldur         r6, [r1, #0xf]
    //     0x4437f8: add          r6, r6, HEAP, lsl #32
    //     0x4437fc: cmp          r6, r22
    // 0x443800: b.eq 0x443a94
    //     0x443800: b.eq         0x443a94
    //     0x443804: stp          r6, r5, [SP]
    // 0x443808: r0 = dart_core__StringBase::op_add()
    //     0x443808: bl           0x281718
    //     0x44380c: stur         r0, [fp, #-8]
    // 0x443810: r0 = call 0x31d844
    //     0x443810: bl           0x31d844
    // 0x443814: r1 = r0
    //     0x443814: mov          r1, r0
    // 0x443818: r0 = pp[0x6310]
    //     0x443818: ldr          r0, [PP, #0x6310]
    //     0x44381c: stur         r1, [fp, #-0x10]
    // 0x443820: StoreField: r1->field_27 = r0
    //     0x443820: stur         r0, [r1, #0x27]
    //     0x443824: fmov         d0, #1.00000000
    // 0x443828: StoreField: r1->field_7 = d0
    //     0x443828: stur         d0, [r1, #7]
    // 0x44382c: StoreField: r1->field_f = d0
    //     0x44382c: stur         d0, [r1, #0xf]
    // 0x443830: d1 = pp[0x389]
    //     0x443830: add          r17, PP, #0x11, lsl #12
    //     0x443834: ldr          d1, [r17, #0x378]
    // 0x443838: ArrayStore: r1[0] = d1  ; List_8
    //     0x443838: stur         d1, [r1, #0x17]
    // 0x44383c: d1 = pp[0x45c]
    //     0x44383c: add          r17, PP, #0x14, lsl #12
    //     0x443840: ldr          d1, [r17, #0x448]
    // 0x443844: StoreField: r1->field_1f = d1
    //     0x443844: stur         d1, [r1, #0x1f]
    // 0x443848: r0 = call 0x31abec
    //     0x443848: bl           0x31abec
    // 0x44384c: r1 = r0
    //     0x44384c: mov          r1, r0
    //     0x443850: add          r0, NULL, #0x20
    //     0x443854: stur         r1, [fp, #-0x30]
    // 0x443858: StoreField: r1->field_7 = r0
    //     0x443858: stur         r0, [r1, #7]
    //     0x44385c: ldur         r0, [fp, #-0x10]
    // 0x443860: StoreField: r1->field_b = r0
    //     0x443860: stur         r0, [r1, #0xb]
    // 0x443864: r0 = pp[0x7598]
    //     0x443864: ldr          r0, [PP, #0x7598]
    // 0x443868: StoreField: r1->field_1f = r0
    //     0x443868: stur         r0, [r1, #0x1f]
    // 0x44386c: r0 = call 0x393bf8
    //     0x44386c: bl           0x393bf8
    // 0x443870: r1 = r0
    //     0x443870: mov          r1, r0
    //     0x443874: ldur         r0, [fp, #-8]
    //     0x443878: stur         r1, [fp, #-0x10]
    // 0x44387c: StoreField: r1->field_b = r0
    //     0x44387c: stur         r0, [r1, #0xb]
    //     0x443880: ldur         r0, [fp, #-0x30]
    // 0x443884: StoreField: r1->field_13 = r0
    //     0x443884: stur         r0, [r1, #0x13]
    // 0x443888: r0 = call 0x391a04
    //     0x443888: bl           0x391a04
    //     0x44388c: stur         r0, [fp, #-8]
    //     0x443890: ldur         BARRIER, [fp, #-0x18]
    // 0x443894: lr = pp[0xaae]
    //     0x443894: add          lr, PP, #0xe, lsl #12
    //     0x443898: ldr          lr, [lr, #0xaa0]
    //     0x44389c: stp          lr, BARRIER, [SP, #8]
    //     0x4438a0: ldur         BARRIER, [fp, #-0x10]
    //     0x4438a4: str          BARRIER, [SP]
    // 0x4438a8: r1 = r0
    //     0x4438a8: mov          r1, r0
    // 0x4438ac: r4 = pp[0xd50]
    //     0x4438ac: add          r4, PP, #0x10, lsl #12
    //     0x4438b0: ldr          r4, [r4, #0xd40]
    // 0x4438b4: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4438b4: bl           0x391490
    // 0x4438b8: r1 = NULL
    //     0x4438b8: mov          r1, NULL
    //     0x4438bc: mov          r2, #8
    // 0x4438c0: r0 = call 0x61f920
    //     0x4438c0: bl           0x61f920
    // 0x4438c4: r2 = r0
    //     0x4438c4: mov          r2, r0
    //     0x4438c8: ldur         r0, [fp, #-0x20]
    //     0x4438cc: stur         r2, [fp, #-0x10]
    // 0x4438d0: StoreField: r2->field_f = r0
    //     0x4438d0: stur         r0, [r2, #0xf]
    //     0x4438d4: ldur         r0, [fp, #-0x38]
    // 0x4438d8: StoreField: r2->field_13 = r0
    //     0x4438d8: stur         r0, [r2, #0x13]
    //     0x4438dc: ldur         r0, [fp, #-0x28]
    // 0x4438e0: ArrayStore: r2[0] = r0  ; List_8
    //     0x4438e0: stur         r0, [r2, #0x17]
    //     0x4438e4: ldur         r0, [fp, #-8]
    // 0x4438e8: StoreField: r2->field_1b = r0
    //     0x4438e8: stur         r0, [r2, #0x1b]
    // 0x4438ec: r1 = pp[0x5c58]
    //     0x4438ec: ldr          r1, [PP, #0x5c58]
    // 0x4438f0: r0 = call 0x61e854
    //     0x4438f0: bl           0x61e854
    // 0x4438f4: r1 = r0
    //     0x4438f4: mov          r1, r0
    //     0x4438f8: ldur         r0, [fp, #-0x10]
    //     0x4438fc: stur         r1, [fp, #-8]
    // 0x443900: StoreField: r1->field_f = r0
    //     0x443900: stur         r0, [r1, #0xf]
    //     0x443904: mov          r0, #8
    // 0x443908: StoreField: r1->field_b = r0
    //     0x443908: stur         r0, [r1, #0xb]
    // 0x44390c: r0 = call 0x3a1414
    //     0x44390c: bl           0x3a1414
    // 0x443910: r1 = r0
    //     0x443910: mov          r1, r0
    // 0x443914: r0 = pp[0x5140]
    //     0x443914: ldr          r0, [PP, #0x5140]
    //     0x443918: stur         r1, [fp, #-0x10]
    // 0x44391c: StoreField: r1->field_f = r0
    //     0x44391c: stur         r0, [r1, #0xf]
    // 0x443920: r0 = pp[0xaee]
    //     0x443920: add          r0, PP, #0xe, lsl #12
    //     0x443924: ldr          r0, [r0, #0xae0]
    // 0x443928: StoreField: r1->field_13 = r0
    //     0x443928: stur         r0, [r1, #0x13]
    // 0x44392c: r2 = pp[0xaf6]
    //     0x44392c: add          r2, PP, #0xe, lsl #12
    //     0x443930: ldr          r2, [r2, #0xae8]
    // 0x443934: ArrayStore: r1[0] = r2  ; List_8
    //     0x443934: stur         r2, [r1, #0x17]
    // 0x443938: r3 = pp[0xb6e]
    //     0x443938: add          r3, PP, #0xe, lsl #12
    //     0x44393c: ldr          r3, [r3, #0xb60]
    // 0x443940: StoreField: r1->field_1b = r3
    //     0x443940: stur         r3, [r1, #0x1b]
    // 0x443944: r4 = pp[0xb06]
    //     0x443944: add          r4, PP, #0xe, lsl #12
    //     0x443948: ldr          r4, [r4, #0xaf8]
    // 0x44394c: StoreField: r1->field_23 = r4
    //     0x44394c: stur         r4, [r1, #0x23]
    // 0x443950: r5 = pp[0xb2]
    //     0x443950: add          r5, PP, #0xa, lsl #12
    //     0x443954: ldr          r5, [r5, #0xa8]
    // 0x443958: StoreField: r1->field_2b = r5
    //     0x443958: stur         r5, [r1, #0x2b]
    // 0x44395c: StoreField: r1->field_2f = xzr
    //     0x44395c: stur         xzr, [r1, #0x2f]
    //     0x443960: ldur         r6, [fp, #-8]
    // 0x443964: StoreField: r1->field_b = r6
    //     0x443964: stur         r6, [r1, #0xb]
    // 0x443968: r0 = call 0x391a04
    //     0x443968: bl           0x391a04
    //     0x44396c: stur         r0, [fp, #-8]
    // 0x443970: BARRIER = pp[0x4ea]
    //     0x443970: add          BARRIER, PP, #0xa, lsl #12
    //     0x443974: ldr          BARRIER, [BARRIER, #0x4e0]
    //     0x443978: ldur         lr, [fp, #-0x10]
    //     0x44397c: stp          lr, BARRIER, [SP]
    // 0x443980: r1 = r0
    //     0x443980: mov          r1, r0
    // 0x443984: r4 = pp[0x5ff]
    //     0x443984: add          r4, PP, #0xf, lsl #12
    //     0x443988: ldr          r4, [r4, #0x5f0]
    // 0x44398c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x44398c: bl           0x391490
    // 0x443990: r0 = call 0x31d844
    //     0x443990: bl           0x31d844
    // 0x443994: r1 = r0
    //     0x443994: mov          r1, r0
    // 0x443998: r0 = pp[0x6310]
    //     0x443998: ldr          r0, [PP, #0x6310]
    //     0x44399c: stur         r1, [fp, #-0x10]
    // 0x4439a0: StoreField: r1->field_27 = r0
    //     0x4439a0: stur         r0, [r1, #0x27]
    // 0x4439a4: d0 = pp[0x6658]
    //     0x4439a4: ldr          d0, [PP, #0x6658]
    // 0x4439a8: StoreField: r1->field_7 = d0
    //     0x4439a8: stur         d0, [r1, #7]
    //     0x4439ac: fmov         d0, #1.00000000
    // 0x4439b0: StoreField: r1->field_f = d0
    //     0x4439b0: stur         d0, [r1, #0xf]
    // 0x4439b4: ArrayStore: r1[0] = d0  ; List_8
    //     0x4439b4: stur         d0, [r1, #0x17]
    // 0x4439b8: StoreField: r1->field_1f = d0
    //     0x4439b8: stur         d0, [r1, #0x1f]
    // 0x4439bc: r0 = call 0x391a04
    //     0x4439bc: bl           0x391a04
    //     0x4439c0: stur         r0, [fp, #-0x18]
    // 0x4439c4: BARRIER = pp[0x53b0]
    //     0x4439c4: ldr          BARRIER, [PP, #0x53b0]
    //     0x4439c8: ldur         lr, [fp, #-0x10]
    //     0x4439cc: stp          lr, BARRIER, [SP]
    // 0x4439d0: r1 = r0
    //     0x4439d0: mov          r1, r0
    // 0x4439d4: r4 = pp[0xebe]
    //     0x4439d4: add          r4, PP, #0xe, lsl #12
    //     0x4439d8: ldr          r4, [r4, #0xeb0]
    // 0x4439dc: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x4439dc: bl           0x391490
    // 0x4439e0: r1 = NULL
    //     0x4439e0: mov          r1, NULL
    //     0x4439e4: mov          r2, #4
    // 0x4439e8: r0 = call 0x61f920
    //     0x4439e8: bl           0x61f920
    // 0x4439ec: r2 = r0
    //     0x4439ec: mov          r2, r0
    //     0x4439f0: ldur         r0, [fp, #-8]
    //     0x4439f4: stur         r2, [fp, #-0x10]
    // 0x4439f8: StoreField: r2->field_f = r0
    //     0x4439f8: stur         r0, [r2, #0xf]
    //     0x4439fc: ldur         r0, [fp, #-0x18]
    // 0x443a00: StoreField: r2->field_13 = r0
    //     0x443a00: stur         r0, [r2, #0x13]
    // 0x443a04: r1 = pp[0x5c58]
    //     0x443a04: ldr          r1, [PP, #0x5c58]
    // 0x443a08: r0 = call 0x61e854
    //     0x443a08: bl           0x61e854
    // 0x443a0c: r1 = r0
    //     0x443a0c: mov          r1, r0
    //     0x443a10: ldur         r0, [fp, #-0x10]
    //     0x443a14: stur         r1, [fp, #-8]
    // 0x443a18: StoreField: r1->field_f = r0
    //     0x443a18: stur         r0, [r1, #0xf]
    //     0x443a1c: mov          r0, #4
    // 0x443a20: StoreField: r1->field_b = r0
    //     0x443a20: stur         r0, [r1, #0xb]
    // 0x443a24: r0 = call 0x39310c
    //     0x443a24: bl           0x39310c
    // 0x443a28: r1 = pp[0x862]
    //     0x443a28: add          r1, PP, #0xa, lsl #12
    //     0x443a2c: ldr          r1, [r1, #0x858]
    // 0x443a30: StoreField: r0->field_f = r1
    //     0x443a30: stur         r1, [r0, #0xf]
    // 0x443a34: r1 = pp[0xaee]
    //     0x443a34: add          r1, PP, #0xe, lsl #12
    //     0x443a38: ldr          r1, [r1, #0xae0]
    // 0x443a3c: StoreField: r0->field_13 = r1
    //     0x443a3c: stur         r1, [r0, #0x13]
    // 0x443a40: r1 = pp[0xaf6]
    //     0x443a40: add          r1, PP, #0xe, lsl #12
    //     0x443a44: ldr          r1, [r1, #0xae8]
    // 0x443a48: ArrayStore: r0[0] = r1  ; List_8
    //     0x443a48: stur         r1, [r0, #0x17]
    // 0x443a4c: r1 = pp[0xb6e]
    //     0x443a4c: add          r1, PP, #0xe, lsl #12
    //     0x443a50: ldr          r1, [r1, #0xb60]
    // 0x443a54: StoreField: r0->field_1b = r1
    //     0x443a54: stur         r1, [r0, #0x1b]
    // 0x443a58: r1 = pp[0xb06]
    //     0x443a58: add          r1, PP, #0xe, lsl #12
    //     0x443a5c: ldr          r1, [r1, #0xaf8]
    // 0x443a60: StoreField: r0->field_23 = r1
    //     0x443a60: stur         r1, [r0, #0x23]
    // 0x443a64: r1 = pp[0xb2]
    //     0x443a64: add          r1, PP, #0xa, lsl #12
    //     0x443a68: ldr          r1, [r1, #0xa8]
    // 0x443a6c: StoreField: r0->field_2b = r1
    //     0x443a6c: stur         r1, [r0, #0x2b]
    // 0x443a70: StoreField: r0->field_2f = xzr
    //     0x443a70: stur         xzr, [r0, #0x2f]
    //     0x443a74: ldur         r1, [fp, #-8]
    // 0x443a78: StoreField: r0->field_b = r1
    //     0x443a78: stur         r1, [r0, #0xb]
    // 0x443a7c: SP = fp
    //     0x443a7c: mov          SP, fp
    // 0x443a80: LeaveFrame
    //     0x443a80: ldp          fp, lr, [SP], #0x10
    // 0x443a84: ret
    //     0x443a84: ret          
    // 0x443a88: r0 = call 0x61fa28
    //     0x443a88: bl           0x61fa28
    // 0x443a8c: b 0x4433a0
    //     0x443a8c: b            0x4433a0
    // 0x443a90: r0 = call 0x61fe70
    //     0x443a90: bl           0x61fe70
    // 0x443a94: r0 = call 0x61ffd0
    //     0x443a94: bl           0x61ffd0
  }

  titleBarWidget() {
    // ** addr: 0x443a98, size: 0x7bc
    // 0x443a98: EnterFrame
    //     0x443a98: stp          fp, lr, [SP, #-0x10]!
    //     0x443a9c: mov          fp, SP
    // 0x443aa0: AllocStack(0x70)
    //     0x443aa0: sub          SP, SP, #0x70
    //     0x443aa4: stur         r1, [fp, #-8]
    //     0x443aa8: stur         d0, [fp, #-0x58]
    // 0x443aac: CheckStackOverflow
    //     0x443aac: ldr          BARRIER, [THR, #0x38]
    //     0x443ab0: cmp          SP, BARRIER
    //     0x443ab4: b.ls         0x444230
    // 0x443ab8: r0 = call 0x31d844
    //     0x443ab8: bl           0x31d844
    // 0x443abc: r1 = r0
    //     0x443abc: mov          r1, r0
    // 0x443ac0: r0 = pp[0x6310]
    //     0x443ac0: ldr          r0, [PP, #0x6310]
    //     0x443ac4: stur         r1, [fp, #-0x10]
    // 0x443ac8: StoreField: r1->field_27 = r0
    //     0x443ac8: stur         r0, [r1, #0x27]
    // 0x443acc: d0 = pp[0x6080]
    //     0x443acc: ldr          d0, [PP, #0x6080]
    // 0x443ad0: StoreField: r1->field_7 = d0
    //     0x443ad0: stur         d0, [r1, #7]
    //     0x443ad4: fmov         d0, #1.00000000
    // 0x443ad8: StoreField: r1->field_f = d0
    //     0x443ad8: stur         d0, [r1, #0xf]
    // 0x443adc: ArrayStore: r1[0] = d0  ; List_8
    //     0x443adc: stur         d0, [r1, #0x17]
    // 0x443ae0: StoreField: r1->field_1f = d0
    //     0x443ae0: stur         d0, [r1, #0x1f]
    // 0x443ae4: r0 = call 0x31abec
    //     0x443ae4: bl           0x31abec
    // 0x443ae8: r2 = r0
    //     0x443ae8: mov          r2, r0
    //     0x443aec: add          r0, NULL, #0x20
    //     0x443af0: stur         r2, [fp, #-0x18]
    // 0x443af4: StoreField: r2->field_7 = r0
    //     0x443af4: stur         r0, [r2, #7]
    //     0x443af8: ldur         r0, [fp, #-0x10]
    // 0x443afc: StoreField: r2->field_b = r0
    //     0x443afc: stur         r0, [r2, #0xb]
    // 0x443b00: r0 = pp[0x7598]
    //     0x443b00: ldr          r0, [PP, #0x7598]
    // 0x443b04: StoreField: r2->field_1f = r0
    //     0x443b04: stur         r0, [r2, #0x1f]
    // 0x443b08: r1 = pp[0x72c]
    //     0x443b08: add          r1, PP, #0xc, lsl #12
    //     0x443b0c: ldr          r1, [r1, #0x720]
    // 0x443b10: r4 = pp[0x4c0]
    //     0x443b10: ldr          r4, [PP, #0x4c0]
    // 0x443b14: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x443b14: bl           0x3a1dcc
    //     0x443b18: stur         r0, [fp, #-0x10]
    // 0x443b1c: r0 = call 0x393bf8
    //     0x443b1c: bl           0x393bf8
    // 0x443b20: r1 = r0
    //     0x443b20: mov          r1, r0
    //     0x443b24: ldur         r0, [fp, #-0x10]
    //     0x443b28: stur         r1, [fp, #-0x20]
    // 0x443b2c: StoreField: r1->field_b = r0
    //     0x443b2c: stur         r0, [r1, #0xb]
    //     0x443b30: ldur         r0, [fp, #-0x18]
    // 0x443b34: StoreField: r1->field_13 = r0
    //     0x443b34: stur         r0, [r1, #0x13]
    //     0x443b38: ldur         d0, [fp, #-0x58]
    //     0x443b3c: ldp          r2, r3, [THR, #0x50]
    //     0x443b40: add          r2, r2, #0x10
    //     0x443b44: cmp          r3, r2
    // 0x443b48: b.ls 0x444238
    //     0x443b48: b.ls         0x444238
    //     0x443b4c: str          r2, [THR, #0x50]
    //     0x443b50: sub          r2, r2, #0xf
    //     0x443b54: mov          r3, #0xe15c
    //     0x443b58: movk         r3, #3, lsl #16
    //     0x443b5c: stur         r3, [r2, #-1]
    // 0x443b60: StoreField: r2->field_7 = d0
    //     0x443b60: stur         d0, [r2, #7]
    //     0x443b64: stur         r2, [fp, #-0x10]
    // 0x443b68: r0 = call 0x391a04
    //     0x443b68: bl           0x391a04
    //     0x443b6c: stur         r0, [fp, #-0x28]
    // 0x443b70: BARRIER = pp[0xaae]
    //     0x443b70: add          BARRIER, PP, #0xe, lsl #12
    //     0x443b74: ldr          BARRIER, [BARRIER, #0xaa0]
    //     0x443b78: ldur         lr, [fp, #-0x10]
    //     0x443b7c: stp          lr, BARRIER, [SP, #8]
    //     0x443b80: ldur         BARRIER, [fp, #-0x20]
    //     0x443b84: str          BARRIER, [SP]
    // 0x443b88: r1 = r0
    //     0x443b88: mov          r1, r0
    // 0x443b8c: r4 = pp[0x31a]
    //     0x443b8c: add          r4, PP, #0x12, lsl #12
    //     0x443b90: ldr          r4, [r4, #0x308]
    // 0x443b94: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x443b94: bl           0x391490
    //     0x443b98: ldur         r0, [fp, #-8]
    //     0x443b9c: cmp          r0, #1
    // 0x443ba0: b.ne 0x443cf8
    //     0x443ba0: b.ne         0x443cf8
    //     0x443ba4: ldur         r1, [fp, #-0x18]
    // 0x443ba8: r0 = call 0x3a142c
    //     0x443ba8: bl           0x3a142c
    // 0x443bac: r1 = r0
    //     0x443bac: mov          r1, r0
    // 0x443bb0: r0 = pp[0x257]
    //     0x443bb0: add          r0, PP, #0xf, lsl #12
    //     0x443bb4: ldr          r0, [r0, #0x248]
    //     0x443bb8: stur         r1, [fp, #-0x20]
    // 0x443bbc: StoreField: r1->field_b = r0
    //     0x443bbc: stur         r0, [r1, #0xb]
    // 0x443bc0: r2 = pp[0x17f]
    //     0x443bc0: add          r2, PP, #0xf, lsl #12
    //     0x443bc4: ldr          r2, [r2, #0x170]
    // 0x443bc8: StoreField: r1->field_f = r2
    //     0x443bc8: stur         r2, [r1, #0xf]
    // 0x443bcc: r3 = pp[0xb8f]
    //     0x443bcc: add          r3, PP, #0xf, lsl #12
    //     0x443bd0: ldr          r3, [r3, #0xb80]
    // 0x443bd4: StoreField: r1->field_13 = r3
    //     0x443bd4: stur         r3, [r1, #0x13]
    // 0x443bd8: ArrayStore: r1[0] = r3  ; List_8
    //     0x443bd8: stur         r3, [r1, #0x17]
    // 0x443bdc: r0 = call 0x3949ec
    //     0x443bdc: bl           0x3949ec
    // 0x443be0: r2 = r0
    //     0x443be0: mov          r2, r0
    // 0x443be4: r0 = pp[0x950]
    //     0x443be4: add          r0, PP, #0x10, lsl #12
    //     0x443be8: ldr          r0, [r0, #0x940]
    //     0x443bec: stur         r2, [fp, #-0x30]
    // 0x443bf0: StoreField: r2->field_f = r0
    //     0x443bf0: stur         r0, [r2, #0xf]
    // 0x443bf4: r1 = pp[0x71c]
    //     0x443bf4: add          r1, PP, #0xc, lsl #12
    //     0x443bf8: ldr          r1, [r1, #0x710]
    // 0x443bfc: r4 = pp[0x4c0]
    //     0x443bfc: ldr          r4, [PP, #0x4c0]
    // 0x443c00: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x443c00: bl           0x3a1dcc
    //     0x443c04: stur         r0, [fp, #-0x38]
    // 0x443c08: r0 = call 0x393bf8
    //     0x443c08: bl           0x393bf8
    // 0x443c0c: r3 = r0
    //     0x443c0c: mov          r3, r0
    //     0x443c10: ldur         r0, [fp, #-0x38]
    //     0x443c14: stur         r3, [fp, #-0x40]
    // 0x443c18: StoreField: r3->field_b = r0
    //     0x443c18: stur         r0, [r3, #0xb]
    //     0x443c1c: ldur         r0, [fp, #-0x18]
    // 0x443c20: StoreField: r3->field_13 = r0
    //     0x443c20: stur         r0, [r3, #0x13]
    // 0x443c24: r1 = NULL
    //     0x443c24: mov          r1, NULL
    //     0x443c28: mov          r2, #6
    // 0x443c2c: r0 = call 0x61f920
    //     0x443c2c: bl           0x61f920
    // 0x443c30: r2 = r0
    //     0x443c30: mov          r2, r0
    //     0x443c34: ldur         r0, [fp, #-0x20]
    //     0x443c38: stur         r2, [fp, #-0x38]
    // 0x443c3c: StoreField: r2->field_f = r0
    //     0x443c3c: stur         r0, [r2, #0xf]
    //     0x443c40: ldur         r0, [fp, #-0x30]
    // 0x443c44: StoreField: r2->field_13 = r0
    //     0x443c44: stur         r0, [r2, #0x13]
    //     0x443c48: ldur         r0, [fp, #-0x40]
    // 0x443c4c: ArrayStore: r2[0] = r0  ; List_8
    //     0x443c4c: stur         r0, [r2, #0x17]
    // 0x443c50: r1 = pp[0x5c58]
    //     0x443c50: ldr          r1, [PP, #0x5c58]
    // 0x443c54: r0 = call 0x61e854
    //     0x443c54: bl           0x61e854
    // 0x443c58: r1 = r0
    //     0x443c58: mov          r1, r0
    //     0x443c5c: ldur         r0, [fp, #-0x38]
    //     0x443c60: stur         r1, [fp, #-0x20]
    // 0x443c64: StoreField: r1->field_f = r0
    //     0x443c64: stur         r0, [r1, #0xf]
    //     0x443c68: mov          r2, #6
    // 0x443c6c: StoreField: r1->field_b = r2
    //     0x443c6c: stur         r2, [r1, #0xb]
    // 0x443c70: r0 = call 0x3a1414
    //     0x443c70: bl           0x3a1414
    // 0x443c74: r1 = r0
    //     0x443c74: mov          r1, r0
    // 0x443c78: r0 = pp[0x5140]
    //     0x443c78: ldr          r0, [PP, #0x5140]
    //     0x443c7c: stur         r1, [fp, #-0x30]
    // 0x443c80: StoreField: r1->field_f = r0
    //     0x443c80: stur         r0, [r1, #0xf]
    // 0x443c84: r2 = pp[0x297]
    //     0x443c84: add          r2, PP, #0xf, lsl #12
    //     0x443c88: ldr          r2, [r2, #0x288]
    // 0x443c8c: StoreField: r1->field_13 = r2
    //     0x443c8c: stur         r2, [r1, #0x13]
    // 0x443c90: r3 = pp[0xaf6]
    //     0x443c90: add          r3, PP, #0xe, lsl #12
    //     0x443c94: ldr          r3, [r3, #0xae8]
    // 0x443c98: ArrayStore: r1[0] = r3  ; List_8
    //     0x443c98: stur         r3, [r1, #0x17]
    // 0x443c9c: r4 = pp[0xb6e]
    //     0x443c9c: add          r4, PP, #0xe, lsl #12
    //     0x443ca0: ldr          r4, [r4, #0xb60]
    // 0x443ca4: StoreField: r1->field_1b = r4
    //     0x443ca4: stur         r4, [r1, #0x1b]
    // 0x443ca8: r5 = pp[0xb06]
    //     0x443ca8: add          r5, PP, #0xe, lsl #12
    //     0x443cac: ldr          r5, [r5, #0xaf8]
    // 0x443cb0: StoreField: r1->field_23 = r5
    //     0x443cb0: stur         r5, [r1, #0x23]
    // 0x443cb4: r6 = pp[0xb2]
    //     0x443cb4: add          r6, PP, #0xa, lsl #12
    //     0x443cb8: ldr          r6, [r6, #0xa8]
    // 0x443cbc: StoreField: r1->field_2b = r6
    //     0x443cbc: stur         r6, [r1, #0x2b]
    // 0x443cc0: StoreField: r1->field_2f = xzr
    //     0x443cc0: stur         xzr, [r1, #0x2f]
    //     0x443cc4: ldur         r7, [fp, #-0x20]
    // 0x443cc8: StoreField: r1->field_b = r7
    //     0x443cc8: stur         r7, [r1, #0xb]
    // 0x443ccc: r0 = call 0x391a04
    //     0x443ccc: bl           0x391a04
    //     0x443cd0: stur         r0, [fp, #-0x20]
    //     0x443cd4: ldur         BARRIER, [fp, #-0x10]
    //     0x443cd8: ldur         lr, [fp, #-0x30]
    //     0x443cdc: stp          lr, BARRIER, [SP]
    // 0x443ce0: r1 = r0
    //     0x443ce0: mov          r1, r0
    // 0x443ce4: r4 = pp[0x24f]
    //     0x443ce4: add          r4, PP, #0xf, lsl #12
    //     0x443ce8: ldr          r4, [r4, #0x240]
    // 0x443cec: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x443cec: bl           0x391490
    //     0x443cf0: ldur         r1, [fp, #-0x20]
    // 0x443cf4: b 0x443d60
    //     0x443cf4: b            0x443d60
    //     0x443cf8: ldur         r0, [fp, #-0x18]
    // 0x443cfc: r1 = pp[0x6cc]
    //     0x443cfc: add          r1, PP, #0xc, lsl #12
    //     0x443d00: ldr          r1, [r1, #0x6c0]
    // 0x443d04: r4 = pp[0x4c0]
    //     0x443d04: ldr          r4, [PP, #0x4c0]
    // 0x443d08: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x443d08: bl           0x3a1dcc
    //     0x443d0c: stur         r0, [fp, #-0x20]
    // 0x443d10: r0 = call 0x393bf8
    //     0x443d10: bl           0x393bf8
    // 0x443d14: r1 = r0
    //     0x443d14: mov          r1, r0
    //     0x443d18: ldur         r0, [fp, #-0x20]
    //     0x443d1c: stur         r1, [fp, #-0x30]
    // 0x443d20: StoreField: r1->field_b = r0
    //     0x443d20: stur         r0, [r1, #0xb]
    //     0x443d24: ldur         r0, [fp, #-0x18]
    // 0x443d28: StoreField: r1->field_13 = r0
    //     0x443d28: stur         r0, [r1, #0x13]
    // 0x443d2c: r0 = call 0x391a04
    //     0x443d2c: bl           0x391a04
    //     0x443d30: stur         r0, [fp, #-0x20]
    // 0x443d34: BARRIER = pp[0xaae]
    //     0x443d34: add          BARRIER, PP, #0xe, lsl #12
    //     0x443d38: ldr          BARRIER, [BARRIER, #0xaa0]
    //     0x443d3c: ldur         lr, [fp, #-0x10]
    //     0x443d40: stp          lr, BARRIER, [SP, #8]
    //     0x443d44: ldur         BARRIER, [fp, #-0x30]
    //     0x443d48: str          BARRIER, [SP]
    // 0x443d4c: r1 = r0
    //     0x443d4c: mov          r1, r0
    // 0x443d50: r4 = pp[0x31a]
    //     0x443d50: add          r4, PP, #0x12, lsl #12
    //     0x443d54: ldr          r4, [r4, #0x308]
    // 0x443d58: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x443d58: bl           0x391490
    //     0x443d5c: ldur         r1, [fp, #-0x20]
    //     0x443d60: ldur         r0, [fp, #-8]
    //     0x443d64: stur         r1, [fp, #-0x20]
    // 0x443d68: r0 = call 0x3a142c
    //     0x443d68: bl           0x3a142c
    // 0x443d6c: r1 = r0
    //     0x443d6c: mov          r1, r0
    // 0x443d70: r0 = pp[0x257]
    //     0x443d70: add          r0, PP, #0xf, lsl #12
    //     0x443d74: ldr          r0, [r0, #0x248]
    //     0x443d78: stur         r1, [fp, #-0x30]
    // 0x443d7c: StoreField: r1->field_b = r0
    //     0x443d7c: stur         r0, [r1, #0xb]
    // 0x443d80: r2 = pp[0x17f]
    //     0x443d80: add          r2, PP, #0xf, lsl #12
    //     0x443d84: ldr          r2, [r2, #0x170]
    // 0x443d88: StoreField: r1->field_f = r2
    //     0x443d88: stur         r2, [r1, #0xf]
    // 0x443d8c: r3 = pp[0xb8f]
    //     0x443d8c: add          r3, PP, #0xf, lsl #12
    //     0x443d90: ldr          r3, [r3, #0xb80]
    // 0x443d94: StoreField: r1->field_13 = r3
    //     0x443d94: stur         r3, [r1, #0x13]
    // 0x443d98: ArrayStore: r1[0] = r3  ; List_8
    //     0x443d98: stur         r3, [r1, #0x17]
    // 0x443d9c: r0 = call 0x3949ec
    //     0x443d9c: bl           0x3949ec
    // 0x443da0: r2 = r0
    //     0x443da0: mov          r2, r0
    // 0x443da4: r0 = pp[0x950]
    //     0x443da4: add          r0, PP, #0x10, lsl #12
    //     0x443da8: ldr          r0, [r0, #0x940]
    //     0x443dac: stur         r2, [fp, #-0x38]
    // 0x443db0: StoreField: r2->field_f = r0
    //     0x443db0: stur         r0, [r2, #0xf]
    //     0x443db4: ldur         r1, [fp, #-8]
    //     0x443db8: cmp          r1, #1
    // 0x443dbc: b.ne 0x443dd8
    //     0x443dbc: b.ne         0x443dd8
    // 0x443dc0: r1 = pp[0x70c]
    //     0x443dc0: add          r1, PP, #0xc, lsl #12
    //     0x443dc4: ldr          r1, [r1, #0x700]
    // 0x443dc8: r4 = pp[0x4c0]
    //     0x443dc8: ldr          r4, [PP, #0x4c0]
    // 0x443dcc: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x443dcc: bl           0x3a1dcc
    // 0x443dd0: r5 = r0
    //     0x443dd0: mov          r5, r0
    // 0x443dd4: b 0x443dec
    //     0x443dd4: b            0x443dec
    // 0x443dd8: r1 = pp[0x69c]
    //     0x443dd8: add          r1, PP, #0xc, lsl #12
    //     0x443ddc: ldr          r1, [r1, #0x690]
    // 0x443de0: r4 = pp[0x4c0]
    //     0x443de0: ldr          r4, [PP, #0x4c0]
    // 0x443de4: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x443de4: bl           0x3a1dcc
    // 0x443de8: r5 = r0
    //     0x443de8: mov          r5, r0
    //     0x443dec: ldur         r3, [fp, #-0x18]
    //     0x443df0: ldur         r4, [fp, #-0x28]
    //     0x443df4: ldur         r2, [fp, #-0x20]
    //     0x443df8: ldur         r1, [fp, #-0x30]
    //     0x443dfc: ldur         r0, [fp, #-0x38]
    //     0x443e00: stur         r5, [fp, #-0x40]
    // 0x443e04: r0 = call 0x393bf8
    //     0x443e04: bl           0x393bf8
    // 0x443e08: r3 = r0
    //     0x443e08: mov          r3, r0
    //     0x443e0c: ldur         r0, [fp, #-0x40]
    //     0x443e10: stur         r3, [fp, #-0x48]
    // 0x443e14: StoreField: r3->field_b = r0
    //     0x443e14: stur         r0, [r3, #0xb]
    //     0x443e18: ldur         r0, [fp, #-0x18]
    // 0x443e1c: StoreField: r3->field_13 = r0
    //     0x443e1c: stur         r0, [r3, #0x13]
    // 0x443e20: r1 = NULL
    //     0x443e20: mov          r1, NULL
    //     0x443e24: mov          r2, #6
    // 0x443e28: r0 = call 0x61f920
    //     0x443e28: bl           0x61f920
    // 0x443e2c: r2 = r0
    //     0x443e2c: mov          r2, r0
    //     0x443e30: ldur         r0, [fp, #-0x30]
    //     0x443e34: stur         r2, [fp, #-0x40]
    // 0x443e38: StoreField: r2->field_f = r0
    //     0x443e38: stur         r0, [r2, #0xf]
    //     0x443e3c: ldur         r0, [fp, #-0x38]
    // 0x443e40: StoreField: r2->field_13 = r0
    //     0x443e40: stur         r0, [r2, #0x13]
    //     0x443e44: ldur         r0, [fp, #-0x48]
    // 0x443e48: ArrayStore: r2[0] = r0  ; List_8
    //     0x443e48: stur         r0, [r2, #0x17]
    // 0x443e4c: r1 = pp[0x5c58]
    //     0x443e4c: ldr          r1, [PP, #0x5c58]
    // 0x443e50: r0 = call 0x61e854
    //     0x443e50: bl           0x61e854
    // 0x443e54: r1 = r0
    //     0x443e54: mov          r1, r0
    //     0x443e58: ldur         r0, [fp, #-0x40]
    //     0x443e5c: stur         r1, [fp, #-0x30]
    // 0x443e60: StoreField: r1->field_f = r0
    //     0x443e60: stur         r0, [r1, #0xf]
    //     0x443e64: mov          r2, #6
    // 0x443e68: StoreField: r1->field_b = r2
    //     0x443e68: stur         r2, [r1, #0xb]
    // 0x443e6c: r0 = call 0x3a1414
    //     0x443e6c: bl           0x3a1414
    // 0x443e70: r1 = r0
    //     0x443e70: mov          r1, r0
    // 0x443e74: r0 = pp[0x5140]
    //     0x443e74: ldr          r0, [PP, #0x5140]
    //     0x443e78: stur         r1, [fp, #-0x38]
    // 0x443e7c: StoreField: r1->field_f = r0
    //     0x443e7c: stur         r0, [r1, #0xf]
    // 0x443e80: r2 = pp[0x297]
    //     0x443e80: add          r2, PP, #0xf, lsl #12
    //     0x443e84: ldr          r2, [r2, #0x288]
    // 0x443e88: StoreField: r1->field_13 = r2
    //     0x443e88: stur         r2, [r1, #0x13]
    // 0x443e8c: r3 = pp[0xaf6]
    //     0x443e8c: add          r3, PP, #0xe, lsl #12
    //     0x443e90: ldr          r3, [r3, #0xae8]
    // 0x443e94: ArrayStore: r1[0] = r3  ; List_8
    //     0x443e94: stur         r3, [r1, #0x17]
    // 0x443e98: r4 = pp[0xb6e]
    //     0x443e98: add          r4, PP, #0xe, lsl #12
    //     0x443e9c: ldr          r4, [r4, #0xb60]
    // 0x443ea0: StoreField: r1->field_1b = r4
    //     0x443ea0: stur         r4, [r1, #0x1b]
    // 0x443ea4: r5 = pp[0xb06]
    //     0x443ea4: add          r5, PP, #0xe, lsl #12
    //     0x443ea8: ldr          r5, [r5, #0xaf8]
    // 0x443eac: StoreField: r1->field_23 = r5
    //     0x443eac: stur         r5, [r1, #0x23]
    // 0x443eb0: r6 = pp[0xb2]
    //     0x443eb0: add          r6, PP, #0xa, lsl #12
    //     0x443eb4: ldr          r6, [r6, #0xa8]
    // 0x443eb8: StoreField: r1->field_2b = r6
    //     0x443eb8: stur         r6, [r1, #0x2b]
    // 0x443ebc: StoreField: r1->field_2f = xzr
    //     0x443ebc: stur         xzr, [r1, #0x2f]
    //     0x443ec0: ldur         r7, [fp, #-0x30]
    // 0x443ec4: StoreField: r1->field_b = r7
    //     0x443ec4: stur         r7, [r1, #0xb]
    // 0x443ec8: r0 = call 0x391a04
    //     0x443ec8: bl           0x391a04
    //     0x443ecc: stur         r0, [fp, #-0x30]
    //     0x443ed0: ldur         BARRIER, [fp, #-0x10]
    //     0x443ed4: ldur         lr, [fp, #-0x38]
    //     0x443ed8: stp          lr, BARRIER, [SP]
    // 0x443edc: r1 = r0
    //     0x443edc: mov          r1, r0
    // 0x443ee0: r4 = pp[0x24f]
    //     0x443ee0: add          r4, PP, #0xf, lsl #12
    //     0x443ee4: ldr          r4, [r4, #0x240]
    // 0x443ee8: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x443ee8: bl           0x391490
    // 0x443eec: r0 = call 0x3a142c
    //     0x443eec: bl           0x3a142c
    // 0x443ef0: r1 = r0
    //     0x443ef0: mov          r1, r0
    // 0x443ef4: r0 = pp[0x257]
    //     0x443ef4: add          r0, PP, #0xf, lsl #12
    //     0x443ef8: ldr          r0, [r0, #0x248]
    //     0x443efc: stur         r1, [fp, #-0x38]
    // 0x443f00: StoreField: r1->field_b = r0
    //     0x443f00: stur         r0, [r1, #0xb]
    // 0x443f04: r0 = pp[0x17f]
    //     0x443f04: add          r0, PP, #0xf, lsl #12
    //     0x443f08: ldr          r0, [r0, #0x170]
    // 0x443f0c: StoreField: r1->field_f = r0
    //     0x443f0c: stur         r0, [r1, #0xf]
    // 0x443f10: r0 = pp[0xb8f]
    //     0x443f10: add          r0, PP, #0xf, lsl #12
    //     0x443f14: ldr          r0, [r0, #0xb80]
    // 0x443f18: StoreField: r1->field_13 = r0
    //     0x443f18: stur         r0, [r1, #0x13]
    // 0x443f1c: ArrayStore: r1[0] = r0  ; List_8
    //     0x443f1c: stur         r0, [r1, #0x17]
    // 0x443f20: r0 = call 0x3949ec
    //     0x443f20: bl           0x3949ec
    // 0x443f24: r2 = r0
    //     0x443f24: mov          r2, r0
    // 0x443f28: r0 = pp[0x950]
    //     0x443f28: add          r0, PP, #0x10, lsl #12
    //     0x443f2c: ldr          r0, [r0, #0x940]
    //     0x443f30: stur         r2, [fp, #-0x40]
    // 0x443f34: StoreField: r2->field_f = r0
    //     0x443f34: stur         r0, [r2, #0xf]
    // 0x443f38: r1 = pp[0x6fc]
    //     0x443f38: add          r1, PP, #0xc, lsl #12
    //     0x443f3c: ldr          r1, [r1, #0x6f0]
    // 0x443f40: r4 = pp[0x4c0]
    //     0x443f40: ldr          r4, [PP, #0x4c0]
    // 0x443f44: r0 = soul_flutter_international$res$string$string_asset_name_::getString()
    //     0x443f44: bl           0x3a1dcc
    //     0x443f48: stur         r0, [fp, #-0x48]
    // 0x443f4c: r0 = call 0x393bf8
    //     0x443f4c: bl           0x393bf8
    // 0x443f50: r3 = r0
    //     0x443f50: mov          r3, r0
    //     0x443f54: ldur         r0, [fp, #-0x48]
    //     0x443f58: stur         r3, [fp, #-0x50]
    // 0x443f5c: StoreField: r3->field_b = r0
    //     0x443f5c: stur         r0, [r3, #0xb]
    //     0x443f60: ldur         r0, [fp, #-0x18]
    // 0x443f64: StoreField: r3->field_13 = r0
    //     0x443f64: stur         r0, [r3, #0x13]
    // 0x443f68: r1 = NULL
    //     0x443f68: mov          r1, NULL
    //     0x443f6c: mov          r2, #6
    // 0x443f70: r0 = call 0x61f920
    //     0x443f70: bl           0x61f920
    // 0x443f74: r2 = r0
    //     0x443f74: mov          r2, r0
    //     0x443f78: ldur         r0, [fp, #-0x38]
    //     0x443f7c: stur         r2, [fp, #-0x18]
    // 0x443f80: StoreField: r2->field_f = r0
    //     0x443f80: stur         r0, [r2, #0xf]
    //     0x443f84: ldur         r0, [fp, #-0x40]
    // 0x443f88: StoreField: r2->field_13 = r0
    //     0x443f88: stur         r0, [r2, #0x13]
    //     0x443f8c: ldur         r0, [fp, #-0x50]
    // 0x443f90: ArrayStore: r2[0] = r0  ; List_8
    //     0x443f90: stur         r0, [r2, #0x17]
    // 0x443f94: r1 = pp[0x5c58]
    //     0x443f94: ldr          r1, [PP, #0x5c58]
    // 0x443f98: r0 = call 0x61e854
    //     0x443f98: bl           0x61e854
    // 0x443f9c: r1 = r0
    //     0x443f9c: mov          r1, r0
    //     0x443fa0: ldur         r0, [fp, #-0x18]
    //     0x443fa4: stur         r1, [fp, #-0x38]
    // 0x443fa8: StoreField: r1->field_f = r0
    //     0x443fa8: stur         r0, [r1, #0xf]
    //     0x443fac: mov          r0, #6
    // 0x443fb0: StoreField: r1->field_b = r0
    //     0x443fb0: stur         r0, [r1, #0xb]
    // 0x443fb4: r0 = call 0x3a1414
    //     0x443fb4: bl           0x3a1414
    // 0x443fb8: r1 = r0
    //     0x443fb8: mov          r1, r0
    // 0x443fbc: r0 = pp[0x5140]
    //     0x443fbc: ldr          r0, [PP, #0x5140]
    //     0x443fc0: stur         r1, [fp, #-0x18]
    // 0x443fc4: StoreField: r1->field_f = r0
    //     0x443fc4: stur         r0, [r1, #0xf]
    // 0x443fc8: r2 = pp[0x297]
    //     0x443fc8: add          r2, PP, #0xf, lsl #12
    //     0x443fcc: ldr          r2, [r2, #0x288]
    // 0x443fd0: StoreField: r1->field_13 = r2
    //     0x443fd0: stur         r2, [r1, #0x13]
    // 0x443fd4: r2 = pp[0xaf6]
    //     0x443fd4: add          r2, PP, #0xe, lsl #12
    //     0x443fd8: ldr          r2, [r2, #0xae8]
    // 0x443fdc: ArrayStore: r1[0] = r2  ; List_8
    //     0x443fdc: stur         r2, [r1, #0x17]
    // 0x443fe0: r3 = pp[0xb6e]
    //     0x443fe0: add          r3, PP, #0xe, lsl #12
    //     0x443fe4: ldr          r3, [r3, #0xb60]
    // 0x443fe8: StoreField: r1->field_1b = r3
    //     0x443fe8: stur         r3, [r1, #0x1b]
    // 0x443fec: r4 = pp[0xb06]
    //     0x443fec: add          r4, PP, #0xe, lsl #12
    //     0x443ff0: ldr          r4, [r4, #0xaf8]
    // 0x443ff4: StoreField: r1->field_23 = r4
    //     0x443ff4: stur         r4, [r1, #0x23]
    // 0x443ff8: r5 = pp[0xb2]
    //     0x443ff8: add          r5, PP, #0xa, lsl #12
    //     0x443ffc: ldr          r5, [r5, #0xa8]
    // 0x444000: StoreField: r1->field_2b = r5
    //     0x444000: stur         r5, [r1, #0x2b]
    // 0x444004: StoreField: r1->field_2f = xzr
    //     0x444004: stur         xzr, [r1, #0x2f]
    //     0x444008: ldur         r6, [fp, #-0x38]
    // 0x44400c: StoreField: r1->field_b = r6
    //     0x44400c: stur         r6, [r1, #0xb]
    // 0x444010: r0 = call 0x391a04
    //     0x444010: bl           0x391a04
    //     0x444014: stur         r0, [fp, #-0x38]
    //     0x444018: ldur         BARRIER, [fp, #-0x10]
    //     0x44401c: ldur         lr, [fp, #-0x18]
    //     0x444020: stp          lr, BARRIER, [SP]
    // 0x444024: r1 = r0
    //     0x444024: mov          r1, r0
    // 0x444028: r4 = pp[0x24f]
    //     0x444028: add          r4, PP, #0xf, lsl #12
    //     0x44402c: ldr          r4, [r4, #0x240]
    // 0x444030: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x444030: bl           0x391490
    // 0x444034: r1 = NULL
    //     0x444034: mov          r1, NULL
    //     0x444038: mov          r2, #8
    // 0x44403c: r0 = call 0x61f920
    //     0x44403c: bl           0x61f920
    // 0x444040: r2 = r0
    //     0x444040: mov          r2, r0
    //     0x444044: ldur         r0, [fp, #-0x28]
    //     0x444048: stur         r2, [fp, #-0x10]
    // 0x44404c: StoreField: r2->field_f = r0
    //     0x44404c: stur         r0, [r2, #0xf]
    //     0x444050: ldur         r0, [fp, #-0x20]
    // 0x444054: StoreField: r2->field_13 = r0
    //     0x444054: stur         r0, [r2, #0x13]
    //     0x444058: ldur         r0, [fp, #-0x30]
    // 0x44405c: ArrayStore: r2[0] = r0  ; List_8
    //     0x44405c: stur         r0, [r2, #0x17]
    //     0x444060: ldur         r0, [fp, #-0x38]
    // 0x444064: StoreField: r2->field_1b = r0
    //     0x444064: stur         r0, [r2, #0x1b]
    // 0x444068: r1 = pp[0x5c58]
    //     0x444068: ldr          r1, [PP, #0x5c58]
    // 0x44406c: r0 = call 0x61e854
    //     0x44406c: bl           0x61e854
    // 0x444070: r1 = r0
    //     0x444070: mov          r1, r0
    //     0x444074: ldur         r0, [fp, #-0x10]
    //     0x444078: stur         r1, [fp, #-0x18]
    // 0x44407c: StoreField: r1->field_f = r0
    //     0x44407c: stur         r0, [r1, #0xf]
    //     0x444080: mov          r0, #8
    // 0x444084: StoreField: r1->field_b = r0
    //     0x444084: stur         r0, [r1, #0xb]
    // 0x444088: r0 = call 0x3a1414
    //     0x444088: bl           0x3a1414
    // 0x44408c: r1 = r0
    //     0x44408c: mov          r1, r0
    // 0x444090: r0 = pp[0x5140]
    //     0x444090: ldr          r0, [PP, #0x5140]
    //     0x444094: stur         r1, [fp, #-0x10]
    // 0x444098: StoreField: r1->field_f = r0
    //     0x444098: stur         r0, [r1, #0xf]
    // 0x44409c: r0 = pp[0xaee]
    //     0x44409c: add          r0, PP, #0xe, lsl #12
    //     0x4440a0: ldr          r0, [r0, #0xae0]
    // 0x4440a4: StoreField: r1->field_13 = r0
    //     0x4440a4: stur         r0, [r1, #0x13]
    // 0x4440a8: r2 = pp[0xaf6]
    //     0x4440a8: add          r2, PP, #0xe, lsl #12
    //     0x4440ac: ldr          r2, [r2, #0xae8]
    // 0x4440b0: ArrayStore: r1[0] = r2  ; List_8
    //     0x4440b0: stur         r2, [r1, #0x17]
    // 0x4440b4: r3 = pp[0xb6e]
    //     0x4440b4: add          r3, PP, #0xe, lsl #12
    //     0x4440b8: ldr          r3, [r3, #0xb60]
    // 0x4440bc: StoreField: r1->field_1b = r3
    //     0x4440bc: stur         r3, [r1, #0x1b]
    // 0x4440c0: r4 = pp[0xb06]
    //     0x4440c0: add          r4, PP, #0xe, lsl #12
    //     0x4440c4: ldr          r4, [r4, #0xaf8]
    // 0x4440c8: StoreField: r1->field_23 = r4
    //     0x4440c8: stur         r4, [r1, #0x23]
    // 0x4440cc: r5 = pp[0xb2]
    //     0x4440cc: add          r5, PP, #0xa, lsl #12
    //     0x4440d0: ldr          r5, [r5, #0xa8]
    // 0x4440d4: StoreField: r1->field_2b = r5
    //     0x4440d4: stur         r5, [r1, #0x2b]
    // 0x4440d8: StoreField: r1->field_2f = xzr
    //     0x4440d8: stur         xzr, [r1, #0x2f]
    //     0x4440dc: ldur         r6, [fp, #-0x18]
    // 0x4440e0: StoreField: r1->field_b = r6
    //     0x4440e0: stur         r6, [r1, #0xb]
    // 0x4440e4: r0 = call 0x391a04
    //     0x4440e4: bl           0x391a04
    //     0x4440e8: stur         r0, [fp, #-0x18]
    // 0x4440ec: BARRIER = pp[0x4ea]
    //     0x4440ec: add          BARRIER, PP, #0xa, lsl #12
    //     0x4440f0: ldr          BARRIER, [BARRIER, #0x4e0]
    //     0x4440f4: ldur         lr, [fp, #-0x10]
    //     0x4440f8: stp          lr, BARRIER, [SP]
    // 0x4440fc: r1 = r0
    //     0x4440fc: mov          r1, r0
    // 0x444100: r4 = pp[0x5ff]
    //     0x444100: add          r4, PP, #0xf, lsl #12
    //     0x444104: ldr          r4, [r4, #0x5f0]
    // 0x444108: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x444108: bl           0x391490
    // 0x44410c: r0 = call 0x31d844
    //     0x44410c: bl           0x31d844
    // 0x444110: r1 = r0
    //     0x444110: mov          r1, r0
    // 0x444114: r0 = pp[0x6310]
    //     0x444114: ldr          r0, [PP, #0x6310]
    //     0x444118: stur         r1, [fp, #-0x10]
    // 0x44411c: StoreField: r1->field_27 = r0
    //     0x44411c: stur         r0, [r1, #0x27]
    // 0x444120: d0 = pp[0x6658]
    //     0x444120: ldr          d0, [PP, #0x6658]
    // 0x444124: StoreField: r1->field_7 = d0
    //     0x444124: stur         d0, [r1, #7]
    //     0x444128: fmov         d0, #1.00000000
    // 0x44412c: StoreField: r1->field_f = d0
    //     0x44412c: stur         d0, [r1, #0xf]
    // 0x444130: ArrayStore: r1[0] = d0  ; List_8
    //     0x444130: stur         d0, [r1, #0x17]
    // 0x444134: StoreField: r1->field_1f = d0
    //     0x444134: stur         d0, [r1, #0x1f]
    // 0x444138: r0 = call 0x391a04
    //     0x444138: bl           0x391a04
    //     0x44413c: stur         r0, [fp, #-0x20]
    // 0x444140: BARRIER = pp[0x53b0]
    //     0x444140: ldr          BARRIER, [PP, #0x53b0]
    //     0x444144: ldur         lr, [fp, #-0x10]
    //     0x444148: stp          lr, BARRIER, [SP]
    // 0x44414c: r1 = r0
    //     0x44414c: mov          r1, r0
    // 0x444150: r4 = pp[0xebe]
    //     0x444150: add          r4, PP, #0xe, lsl #12
    //     0x444154: ldr          r4, [r4, #0xeb0]
    // 0x444158: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x444158: bl           0x391490
    // 0x44415c: r1 = NULL
    //     0x44415c: mov          r1, NULL
    //     0x444160: mov          r2, #4
    // 0x444164: r0 = call 0x61f920
    //     0x444164: bl           0x61f920
    // 0x444168: r2 = r0
    //     0x444168: mov          r2, r0
    //     0x44416c: ldur         r0, [fp, #-0x18]
    //     0x444170: stur         r2, [fp, #-0x10]
    // 0x444174: StoreField: r2->field_f = r0
    //     0x444174: stur         r0, [r2, #0xf]
    //     0x444178: ldur         r0, [fp, #-0x20]
    // 0x44417c: StoreField: r2->field_13 = r0
    //     0x44417c: stur         r0, [r2, #0x13]
    // 0x444180: r1 = pp[0x5c58]
    //     0x444180: ldr          r1, [PP, #0x5c58]
    // 0x444184: r0 = call 0x61e854
    //     0x444184: bl           0x61e854
    // 0x444188: r1 = r0
    //     0x444188: mov          r1, r0
    //     0x44418c: ldur         r0, [fp, #-0x10]
    //     0x444190: stur         r1, [fp, #-0x18]
    // 0x444194: StoreField: r1->field_f = r0
    //     0x444194: stur         r0, [r1, #0xf]
    //     0x444198: mov          r0, #4
    // 0x44419c: StoreField: r1->field_b = r0
    //     0x44419c: stur         r0, [r1, #0xb]
    // 0x4441a0: r0 = call 0x39310c
    //     0x4441a0: bl           0x39310c
    // 0x4441a4: r1 = r0
    //     0x4441a4: mov          r1, r0
    // 0x4441a8: r0 = pp[0x862]
    //     0x4441a8: add          r0, PP, #0xa, lsl #12
    //     0x4441ac: ldr          r0, [r0, #0x858]
    //     0x4441b0: stur         r1, [fp, #-0x10]
    // 0x4441b4: StoreField: r1->field_f = r0
    //     0x4441b4: stur         r0, [r1, #0xf]
    // 0x4441b8: r0 = pp[0xaee]
    //     0x4441b8: add          r0, PP, #0xe, lsl #12
    //     0x4441bc: ldr          r0, [r0, #0xae0]
    // 0x4441c0: StoreField: r1->field_13 = r0
    //     0x4441c0: stur         r0, [r1, #0x13]
    // 0x4441c4: r0 = pp[0xaf6]
    //     0x4441c4: add          r0, PP, #0xe, lsl #12
    //     0x4441c8: ldr          r0, [r0, #0xae8]
    // 0x4441cc: ArrayStore: r1[0] = r0  ; List_8
    //     0x4441cc: stur         r0, [r1, #0x17]
    // 0x4441d0: r0 = pp[0xb6e]
    //     0x4441d0: add          r0, PP, #0xe, lsl #12
    //     0x4441d4: ldr          r0, [r0, #0xb60]
    // 0x4441d8: StoreField: r1->field_1b = r0
    //     0x4441d8: stur         r0, [r1, #0x1b]
    // 0x4441dc: r0 = pp[0xb06]
    //     0x4441dc: add          r0, PP, #0xe, lsl #12
    //     0x4441e0: ldr          r0, [r0, #0xaf8]
    // 0x4441e4: StoreField: r1->field_23 = r0
    //     0x4441e4: stur         r0, [r1, #0x23]
    // 0x4441e8: r0 = pp[0xb2]
    //     0x4441e8: add          r0, PP, #0xa, lsl #12
    //     0x4441ec: ldr          r0, [r0, #0xa8]
    // 0x4441f0: StoreField: r1->field_2b = r0
    //     0x4441f0: stur         r0, [r1, #0x2b]
    // 0x4441f4: StoreField: r1->field_2f = xzr
    //     0x4441f4: stur         xzr, [r1, #0x2f]
    //     0x4441f8: ldur         r0, [fp, #-0x18]
    // 0x4441fc: StoreField: r1->field_b = r0
    //     0x4441fc: stur         r0, [r1, #0xb]
    // 0x444200: r0 = call 0x391a04
    //     0x444200: bl           0x391a04
    //     0x444204: stur         r0, [fp, #-0x18]
    //     0x444208: ldur         BARRIER, [fp, #-0x10]
    //     0x44420c: str          BARRIER, [SP]
    // 0x444210: r1 = r0
    //     0x444210: mov          r1, r0
    // 0x444214: r4 = pp[0x204]
    //     0x444214: add          r4, PP, #0xc, lsl #12
    //     0x444218: ldr          r4, [r4, #0x1f8]
    // 0x44421c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x44421c: bl           0x391490
    //     0x444220: ldur         r0, [fp, #-0x18]
    // 0x444224: SP = fp
    //     0x444224: mov          SP, fp
    // 0x444228: LeaveFrame
    //     0x444228: ldp          fp, lr, [SP], #0x10
    // 0x44422c: ret
    //     0x44422c: ret          
    // 0x444230: r0 = call 0x61faa8
    //     0x444230: bl           0x61faa8
    // 0x444234: b 0x443ab8
    //     0x444234: b            0x443ab8
    //     0x444238: str          q0, [SP, #-0x10]!
    //     0x44423c: stp          r0, r1, [SP, #-0x10]!
    // 0x444240: r0 = call 0x61f878
    //     0x444240: bl           0x61f878
    // 0x444244: r2 = r0
    //     0x444244: mov          r2, r0
    //     0x444248: ldp          r0, r1, [SP], #0x10
    //     0x44424c: ldr          q0, [SP], #0x10
    // 0x444250: b 0x443b60
    //     0x444250: b            0x443b60
  }

  build() {
    // ** addr: 0x442c10, size: 0x17c
    // 0x442c10: EnterFrame
    //     0x442c10: stp          fp, lr, [SP, #-0x10]!
    //     0x442c14: mov          fp, SP
    // 0x442c18: AllocStack(0x20)
    //     0x442c18: sub          SP, SP, #0x20
    // 0x442c1c: r0 = r1
    //     0x442c1c: mov          r0, r1
    //     0x442c20: stur         r1, [fp, #-8]
    // 0x442c24: r1 = r2
    //     0x442c24: mov          r1, r2
    //     0x442c28: stur         r2, [fp, #-0x10]
    // 0x442c2c: CheckStackOverflow
    //     0x442c2c: ldr          BARRIER, [THR, #0x38]
    //     0x442c30: cmp          SP, BARRIER
    //     0x442c34: b.ls         0x442d74
    //     0x442c38: mov          r1, #3
    // 0x442c3c: r0 = call 0x61e890
    //     0x442c3c: bl           0x61e890
    // 0x442c40: r2 = r0
    //     0x442c40: mov          r2, r0
    //     0x442c44: ldur         r0, [fp, #-8]
    //     0x442c48: stur         r2, [fp, #-0x18]
    // 0x442c4c: StoreField: r2->field_f = r0
    //     0x442c4c: stur         r0, [r2, #0xf]
    //     0x442c50: ldur         r1, [fp, #-0x10]
    // 0x442c54: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenWidth()
    //     0x442c54: bl           0x3a877c
    //     0x442c58: mov          v1.16b, v0.16b
    //     0x442c5c: fmov         d0, #4.00000000
    //     0x442c60: fdiv         d2, d1, d0
    //     0x442c64: ldp          r0, r1, [THR, #0x50]
    //     0x442c68: add          r0, r0, #0x10
    //     0x442c6c: cmp          r1, r0
    // 0x442c70: b.ls 0x442d7c
    //     0x442c70: b.ls         0x442d7c
    //     0x442c74: str          r0, [THR, #0x50]
    //     0x442c78: sub          r0, r0, #0xf
    //     0x442c7c: mov          r1, #0xe15c
    //     0x442c80: movk         r1, #3, lsl #16
    //     0x442c84: stur         r1, [r0, #-1]
    // 0x442c88: StoreField: r0->field_7 = d2
    //     0x442c88: stur         d2, [r0, #7]
    //     0x442c8c: ldur         r3, [fp, #-0x18]
    // 0x442c90: StoreField: r3->field_13 = r0
    //     0x442c90: stur         r0, [r3, #0x13]
    //     0x442c94: ldurb        r16, [r3, #-1]
    //     0x442c98: ldurb        r17, [r0, #-1]
    //     0x442c9c: and          BARRIER, r17, BARRIER, lsr #2
    //     0x442ca0: tst          BARRIER, HEAP, lsr #32
    // 0x442ca4: b.eq 0x442cac
    //     0x442ca4: b.eq         0x442cac
    // 0x442ca8: r0 = call 0x61e08c
    //     0x442ca8: bl           0x61e08c
    //     0x442cac: ldur         r0, [fp, #-8]
    // 0x442cb0: LoadField: r1 = r0->field_13
    //     0x442cb0: ldur         r1, [r0, #0x13]
    //     0x442cb4: add          r1, r1, HEAP, lsl #32
    // 0x442cb8: LoadField: r0 = r1->field_2b
    //     0x442cb8: ldur         r0, [r1, #0x2b]
    //     0x442cbc: add          r0, r0, HEAP, lsl #32
    // 0x442cc0: ArrayStore: r3[0] = r0  ; List_8
    //     0x442cc0: stur         r0, [r3, #0x17]
    //     0x442cc4: ldurb        r16, [r3, #-1]
    //     0x442cc8: ldurb        r17, [r0, #-1]
    //     0x442ccc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x442cd0: tst          BARRIER, HEAP, lsr #32
    // 0x442cd4: b.eq 0x442cdc
    //     0x442cd4: b.eq         0x442cdc
    // 0x442cd8: r0 = call 0x61e08c
    //     0x442cd8: bl           0x61e08c
    // 0x442cdc: r2 = r3
    //     0x442cdc: mov          r2, r3
    // 0x442ce0: r1 = pp[0x46c]
    //     0x442ce0: add          r1, PP, #0x14, lsl #12
    //     0x442ce4: ldr          r1, [r1, #0x458]
    // 0x442ce8: r0 = call 0x61ec54
    //     0x442ce8: bl           0x61ec54
    // 0x442cec: r1 = pp[0x474]
    //     0x442cec: add          r1, PP, #0x14, lsl #12
    //     0x442cf0: ldr          r1, [r1, #0x460]
    //     0x442cf4: stur         r0, [fp, #-8]
    // 0x442cf8: r0 = call 0x41a414
    //     0x442cf8: bl           0x41a414
    // 0x442cfc: r3 = r0
    //     0x442cfc: mov          r3, r0
    //     0x442d00: ldur         r0, [fp, #-8]
    //     0x442d04: stur         r3, [fp, #-0x10]
    // 0x442d08: StoreField: r3->field_13 = r0
    //     0x442d08: stur         r0, [r3, #0x13]
    //     0x442d0c: ldur         r2, [fp, #-0x18]
    // 0x442d10: r1 = pp[0x47c]
    //     0x442d10: add          r1, PP, #0x14, lsl #12
    //     0x442d14: ldr          r1, [r1, #0x468]
    // 0x442d18: r0 = call 0x61ec54
    //     0x442d18: bl           0x61ec54
    // 0x442d1c: r1 = pp[0x474]
    //     0x442d1c: add          r1, PP, #0x14, lsl #12
    //     0x442d20: ldr          r1, [r1, #0x460]
    //     0x442d24: stur         r0, [fp, #-8]
    // 0x442d28: r0 = call 0x3b81c4
    //     0x442d28: bl           0x3b81c4
    // 0x442d2c: r1 = r0
    //     0x442d2c: mov          r1, r0
    //     0x442d30: ldur         r2, [fp, #-0x10]
    //     0x442d34: ldur         r3, [fp, #-8]
    // 0x442d38: r5 = NULL
    //     0x442d38: mov          r5, NULL
    //     0x442d3c: stur         r0, [fp, #-8]
    // 0x442d40: r0 = provider$src$provider_InheritedProvider::ctor()
    //     0x442d40: bl           0x3b7e8c
    // 0x442d44: r0 = call 0x391a04
    //     0x442d44: bl           0x391a04
    //     0x442d48: stur         r0, [fp, #-0x10]
    //     0x442d4c: ldur         BARRIER, [fp, #-8]
    //     0x442d50: str          BARRIER, [SP]
    // 0x442d54: r1 = r0
    //     0x442d54: mov          r1, r0
    // 0x442d58: r4 = pp[0x204]
    //     0x442d58: add          r4, PP, #0xc, lsl #12
    //     0x442d5c: ldr          r4, [r4, #0x1f8]
    // 0x442d60: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x442d60: bl           0x391490
    //     0x442d64: ldur         r0, [fp, #-0x10]
    // 0x442d68: SP = fp
    //     0x442d68: mov          SP, fp
    // 0x442d6c: LeaveFrame
    //     0x442d6c: ldp          fp, lr, [SP], #0x10
    // 0x442d70: ret
    //     0x442d70: ret          
    // 0x442d74: r0 = call 0x61fa28
    //     0x442d74: bl           0x61fa28
    // 0x442d78: b 0x442c38
    //     0x442d78: b            0x442c38
    //     0x442d7c: str          q2, [SP, #-0x10]!
    // 0x442d80: r0 = call 0x61f878
    //     0x442d80: bl           0x61f878
    //     0x442d84: ldr          q2, [SP], #0x10
    // 0x442d88: b 0x442c88
    //     0x442d88: b            0x442c88
  }

  _anon_closure() {
    // ** addr: 0x424858, size: 0x20
    //     0x424858: ldr          r1, [SP, #8]
    // 0x42485c: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x42485c: ldur         r2, [r1, #0x17]
    //     0x424860: add          r2, r2, HEAP, lsl #32
    // 0x424864: LoadField: r1 = r2->field_f
    //     0x424864: ldur         r1, [r2, #0xf]
    //     0x424868: add          r1, r1, HEAP, lsl #32
    // 0x42486c: LoadField: r0 = r1->field_13
    //     0x42486c: ldur         r0, [r1, #0x13]
    //     0x424870: add          r0, r0, HEAP, lsl #32
    // 0x424874: ret
    //     0x424874: ret          
  }

  _anon_closure() {
    // ** addr: 0x442dac, size: 0x268
    // 0x442dac: EnterFrame
    //     0x442dac: stp          fp, lr, [SP, #-0x10]!
    //     0x442db0: mov          fp, SP
    // 0x442db4: AllocStack(0x38)
    //     0x442db4: sub          SP, SP, #0x38
    //     0x442db8: ldr          r0, [fp, #0x28]
    // 0x442dbc: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x442dbc: ldur         r2, [r0, #0x17]
    //     0x442dc0: add          r2, r2, HEAP, lsl #32
    //     0x442dc4: stur         r2, [fp, #-8]
    // 0x442dc8: CheckStackOverflow
    //     0x442dc8: ldr          BARRIER, [THR, #0x38]
    //     0x442dcc: cmp          SP, BARRIER
    //     0x442dd0: b.ls         0x443000
    // 0x442dd4: LoadField: r0 = r2->field_f
    //     0x442dd4: ldur         r0, [r2, #0xf]
    //     0x442dd8: add          r0, r0, HEAP, lsl #32
    // 0x442ddc: LoadField: r1 = r0->field_13
    //     0x442ddc: ldur         r1, [r0, #0x13]
    //     0x442de0: add          r1, r1, HEAP, lsl #32
    // 0x442de4: LoadField: r0 = r1->field_2b
    //     0x442de4: ldur         r0, [r1, #0x2b]
    //     0x442de8: add          r0, r0, HEAP, lsl #32
    // 0x442dec: LoadField: r1 = r0->field_b
    //     0x442dec: ldur         r1, [r0, #0xb]
    //     0x442df0: sbfx         r0, r1, #1, #0x1f
    //     0x442df4: cmp          r0, #0
    // 0x442df8: b.le 0x442ff0
    //     0x442df8: b.le         0x442ff0
    //     0x442dfc: mov          r0, #1
    // 0x442e00: LoadField: r1 = r2->field_13
    //     0x442e00: ldur         r1, [r2, #0x13]
    //     0x442e04: add          r1, r1, HEAP, lsl #32
    // 0x442e08: LoadField: d1 = r1->field_7
    //     0x442e08: ldur         d1, [r1, #7]
    //     0x442e0c: mov          v0.16b, v1.16b
    // 0x442e10: r1 = r0
    //     0x442e10: mov          r1, r0
    //     0x442e14: stur         d1, [fp, #-0x38]
    // 0x442e18: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record_::titleBarWidget()
    //     0x442e18: bl           0x443a98
    // 0x442e1c: r3 = r0
    //     0x442e1c: mov          r3, r0
    //     0x442e20: ldur         r0, [fp, #-8]
    //     0x442e24: stur         r3, [fp, #-0x18]
    // 0x442e28: LoadField: r1 = r0->field_f
    //     0x442e28: ldur         r1, [r0, #0xf]
    //     0x442e2c: add          r1, r1, HEAP, lsl #32
    // 0x442e30: ArrayLoad: r4 = r1[0]  ; List_8
    //     0x442e30: ldur         r4, [r1, #0x17]
    //     0x442e34: add          r4, r4, HEAP, lsl #32
    // 0x442e38: BARRIER = pp[0x40]
    //     0x442e38: ldr          BARRIER, [PP, #0x40]
    //     0x442e3c: cmp          r4, r16
    // 0x442e40: b.eq 0x443008
    //     0x442e40: b.eq         0x443008
    //     0x442e44: stur         r4, [fp, #-0x10]
    // 0x442e48: r1 = pp[0x484]
    //     0x442e48: add          r1, PP, #0x14, lsl #12
    //     0x442e4c: ldr          r1, [r1, #0x470]
    // 0x442e50: r2 = NULL
    //     0x442e50: mov          r2, NULL
    // 0x442e54: r0 = call 0x61ec54
    //     0x442e54: bl           0x61ec54
    //     0x442e58: stur         r0, [fp, #-0x20]
    // 0x442e5c: r0 = call 0x3ab5b8
    //     0x442e5c: bl           0x3ab5b8
    // 0x442e60: r3 = r0
    //     0x442e60: mov          r3, r0
    //     0x442e64: ldur         r0, [fp, #-0x20]
    //     0x442e68: stur         r3, [fp, #-0x28]
    // 0x442e6c: StoreField: r3->field_1b = r0
    //     0x442e6c: stur         r0, [r3, #0x1b]
    // 0x442e70: r0 = pp[0x8a7]
    //     0x442e70: add          r0, PP, #0xf, lsl #12
    //     0x442e74: ldr          r0, [r0, #0x898]
    // 0x442e78: StoreField: r3->field_b = r0
    //     0x442e78: stur         r0, [r3, #0xb]
    // 0x442e7c: d0 = pp[0x8af]
    //     0x442e7c: add          r17, PP, #0xf, lsl #12
    //     0x442e80: ldr          d0, [r17, #0x8a0]
    // 0x442e84: StoreField: r3->field_f = d0
    //     0x442e84: stur         d0, [r3, #0xf]
    //     0x442e88: ldur         r0, [fp, #-8]
    // 0x442e8c: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x442e8c: ldur         r2, [r0, #0x17]
    //     0x442e90: add          r2, r2, HEAP, lsl #32
    //     0x442e94: ldur         d0, [fp, #-0x38]
    //     0x442e98: mov          r1, #1
    // 0x442e9c: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record_::launchRecordListWidget()
    //     0x442e9c: bl           0x443208
    //     0x442ea0: stur         r0, [fp, #-0x20]
    // 0x442ea4: r0 = call 0x3ab290
    //     0x442ea4: bl           0x3ab290
    // 0x442ea8: r3 = r0
    //     0x442ea8: mov          r3, r0
    //     0x442eac: ldur         r0, [fp, #-0x10]
    //     0x442eb0: stur         r3, [fp, #-0x30]
    // 0x442eb4: StoreField: r3->field_2b = r0
    //     0x442eb4: stur         r0, [r3, #0x2b]
    //     0x442eb8: ldur         r0, [fp, #-0x20]
    // 0x442ebc: StoreField: r3->field_b = r0
    //     0x442ebc: stur         r0, [r3, #0xb]
    //     0x442ec0: ldur         r0, [fp, #-0x28]
    // 0x442ec4: StoreField: r3->field_f = r0
    //     0x442ec4: stur         r0, [r3, #0xf]
    //     0x442ec8: add          r0, NULL, #0x30
    // 0x442ecc: StoreField: r3->field_1b = r0
    //     0x442ecc: stur         r0, [r3, #0x1b]
    //     0x442ed0: add          r1, NULL, #0x20
    // 0x442ed4: StoreField: r3->field_13 = r1
    //     0x442ed4: stur         r1, [r3, #0x13]
    // 0x442ed8: ArrayStore: r3[0] = r0  ; List_8
    //     0x442ed8: stur         r0, [r3, #0x17]
    //     0x442edc: ldur         r2, [fp, #-8]
    // 0x442ee0: r1 = pp[0x48c]
    //     0x442ee0: add          r1, PP, #0x14, lsl #12
    //     0x442ee4: ldr          r1, [r1, #0x478]
    // 0x442ee8: r0 = call 0x61ec54
    //     0x442ee8: bl           0x61ec54
    //     0x442eec: ldur         r2, [fp, #-0x30]
    // 0x442ef0: StoreField: r2->field_23 = r0
    //     0x442ef0: stur         r0, [r2, #0x23]
    // 0x442ef4: r1 = pp[0x227]
    //     0x442ef4: add          r1, PP, #0xf, lsl #12
    //     0x442ef8: ldr          r1, [r1, #0x218]
    // 0x442efc: r0 = call 0x396454
    //     0x442efc: bl           0x396454
    // 0x442f00: r1 = r0
    //     0x442f00: mov          r1, r0
    //     0x442f04: ldur         r2, [fp, #-0x30]
    //     0x442f08: ldr          r3, [fp, #0x20]
    //     0x442f0c: stur         r0, [fp, #-8]
    // 0x442f10: r4 = pp[0x2e0]
    //     0x442f10: ldr          r4, [PP, #0x2e0]
    // 0x442f14: r0 = flutter$src$widgets$media_query_MediaQuery::ctor_removePadding()
    //     0x442f14: bl           0x39ecf8
    // 0x442f18: r1 = pp[0xade]
    //     0x442f18: add          r1, PP, #0xe, lsl #12
    //     0x442f1c: ldr          r1, [r1, #0xad0]
    // 0x442f20: r0 = call 0x39fb14
    //     0x442f20: bl           0x39fb14
    // 0x442f24: r3 = r0
    //     0x442f24: mov          r3, r0
    //     0x442f28: mov          r0, #1
    //     0x442f2c: stur         r3, [fp, #-0x10]
    // 0x442f30: StoreField: r3->field_13 = r0
    //     0x442f30: stur         r0, [r3, #0x13]
    // 0x442f34: r0 = pp[0xae6]
    //     0x442f34: add          r0, PP, #0xe, lsl #12
    //     0x442f38: ldr          r0, [r0, #0xad8]
    // 0x442f3c: StoreField: r3->field_1b = r0
    //     0x442f3c: stur         r0, [r3, #0x1b]
    //     0x442f40: ldur         r0, [fp, #-8]
    // 0x442f44: StoreField: r3->field_b = r0
    //     0x442f44: stur         r0, [r3, #0xb]
    // 0x442f48: r1 = NULL
    //     0x442f48: mov          r1, NULL
    //     0x442f4c: mov          r2, #4
    // 0x442f50: r0 = call 0x61f920
    //     0x442f50: bl           0x61f920
    // 0x442f54: r2 = r0
    //     0x442f54: mov          r2, r0
    //     0x442f58: ldur         r0, [fp, #-0x18]
    //     0x442f5c: stur         r2, [fp, #-8]
    // 0x442f60: StoreField: r2->field_f = r0
    //     0x442f60: stur         r0, [r2, #0xf]
    //     0x442f64: ldur         r0, [fp, #-0x10]
    // 0x442f68: StoreField: r2->field_13 = r0
    //     0x442f68: stur         r0, [r2, #0x13]
    // 0x442f6c: r1 = pp[0x5c58]
    //     0x442f6c: ldr          r1, [PP, #0x5c58]
    // 0x442f70: r0 = call 0x61e854
    //     0x442f70: bl           0x61e854
    // 0x442f74: r1 = r0
    //     0x442f74: mov          r1, r0
    //     0x442f78: ldur         r0, [fp, #-8]
    //     0x442f7c: stur         r1, [fp, #-0x10]
    // 0x442f80: StoreField: r1->field_f = r0
    //     0x442f80: stur         r0, [r1, #0xf]
    //     0x442f84: mov          r0, #4
    // 0x442f88: StoreField: r1->field_b = r0
    //     0x442f88: stur         r0, [r1, #0xb]
    // 0x442f8c: r0 = call 0x39310c
    //     0x442f8c: bl           0x39310c
    // 0x442f90: r1 = r0
    //     0x442f90: mov          r1, r0
    // 0x442f94: r0 = pp[0x862]
    //     0x442f94: add          r0, PP, #0xa, lsl #12
    //     0x442f98: ldr          r0, [r0, #0x858]
    // 0x442f9c: StoreField: r1->field_f = r0
    //     0x442f9c: stur         r0, [r1, #0xf]
    // 0x442fa0: r0 = pp[0xaee]
    //     0x442fa0: add          r0, PP, #0xe, lsl #12
    //     0x442fa4: ldr          r0, [r0, #0xae0]
    // 0x442fa8: StoreField: r1->field_13 = r0
    //     0x442fa8: stur         r0, [r1, #0x13]
    // 0x442fac: r0 = pp[0xaf6]
    //     0x442fac: add          r0, PP, #0xe, lsl #12
    //     0x442fb0: ldr          r0, [r0, #0xae8]
    // 0x442fb4: ArrayStore: r1[0] = r0  ; List_8
    //     0x442fb4: stur         r0, [r1, #0x17]
    // 0x442fb8: r0 = pp[0xb6e]
    //     0x442fb8: add          r0, PP, #0xe, lsl #12
    //     0x442fbc: ldr          r0, [r0, #0xb60]
    // 0x442fc0: StoreField: r1->field_1b = r0
    //     0x442fc0: stur         r0, [r1, #0x1b]
    // 0x442fc4: r0 = pp[0xb06]
    //     0x442fc4: add          r0, PP, #0xe, lsl #12
    //     0x442fc8: ldr          r0, [r0, #0xaf8]
    // 0x442fcc: StoreField: r1->field_23 = r0
    //     0x442fcc: stur         r0, [r1, #0x23]
    // 0x442fd0: r0 = pp[0xb2]
    //     0x442fd0: add          r0, PP, #0xa, lsl #12
    //     0x442fd4: ldr          r0, [r0, #0xa8]
    // 0x442fd8: StoreField: r1->field_2b = r0
    //     0x442fd8: stur         r0, [r1, #0x2b]
    // 0x442fdc: StoreField: r1->field_2f = xzr
    //     0x442fdc: stur         xzr, [r1, #0x2f]
    //     0x442fe0: ldur         r0, [fp, #-0x10]
    // 0x442fe4: StoreField: r1->field_b = r0
    //     0x442fe4: stur         r0, [r1, #0xb]
    // 0x442fe8: r0 = r1
    //     0x442fe8: mov          r0, r1
    // 0x442fec: b 0x442ff4
    //     0x442fec: b            0x442ff4
    // 0x442ff0: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record_::emptyWidge()
    //     0x442ff0: bl           0x443014
    // 0x442ff4: SP = fp
    //     0x442ff4: mov          SP, fp
    // 0x442ff8: LeaveFrame
    //     0x442ff8: ldp          fp, lr, [SP], #0x10
    // 0x442ffc: ret
    //     0x442ffc: ret          
    // 0x443000: r0 = call 0x61fa28
    //     0x443000: bl           0x61fa28
    // 0x443004: b 0x442dd4
    //     0x443004: b            0x442dd4
    // 0x443008: r9 = pp[0x494]
    //     0x443008: add          r9, PP, #0x14, lsl #12
    //     0x44300c: ldr          r9, [r9, #0x480]
    // 0x443010: r0 = call 0x620258
    //     0x443010: bl           0x620258
  }

  _anon_closure() {
    // ** addr: 0x444254, size: 0x68
    // 0x444254: EnterFrame
    //     0x444254: stp          fp, lr, [SP, #-0x10]!
    //     0x444258: mov          fp, SP
    // 0x44425c: AllocStack(8)
    //     0x44425c: sub          SP, SP, #8
    //     0x444260: ldr          r0, [fp, #0x10]
    // 0x444264: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x444264: ldur         r2, [r0, #0x17]
    //     0x444268: add          r2, r2, HEAP, lsl #32
    // 0x44426c: CheckStackOverflow
    //     0x44426c: ldr          BARRIER, [THR, #0x38]
    //     0x444270: cmp          SP, BARRIER
    //     0x444274: b.ls         0x4442b4
    // 0x444278: LoadField: r0 = r2->field_f
    //     0x444278: ldur         r0, [r2, #0xf]
    //     0x44427c: add          r0, r0, HEAP, lsl #32
    // 0x444280: LoadField: r3 = r0->field_13
    //     0x444280: ldur         r3, [r0, #0x13]
    //     0x444284: add          r3, r3, HEAP, lsl #32
    //     0x444288: stur         r3, [fp, #-8]
    // 0x44428c: r1 = pp[0x49c]
    //     0x44428c: add          r1, PP, #0x14, lsl #12
    //     0x444290: ldr          r1, [r1, #0x488]
    // 0x444294: r0 = call 0x61ec54
    //     0x444294: bl           0x61ec54
    //     0x444298: ldur         r1, [fp, #-8]
    // 0x44429c: r2 = r0
    //     0x44429c: mov          r2, r0
    // 0x4442a0: r0 = soul_flutter_international$biz$pkGame$notifier$notifier_game_bet_record_GamePKBetLaunchRecordNotifier::requestPKGameLaunchRankList()
    //     0x4442a0: bl           0x4442bc
    // 0x4442a4: r0 = NULL
    //     0x4442a4: mov          r0, NULL
    // 0x4442a8: SP = fp
    //     0x4442a8: mov          SP, fp
    // 0x4442ac: LeaveFrame
    //     0x4442ac: ldp          fp, lr, [SP], #0x10
    // 0x4442b0: ret
    //     0x4442b0: ret          
    // 0x4442b4: r0 = call 0x61fa28
    //     0x4442b4: bl           0x61fa28
    // 0x4442b8: b 0x444278
    //     0x4442b8: b            0x444278
  }

  _anon_closure() {
    // ** addr: 0x445538, size: 0xd4
    // 0x445538: EnterFrame
    //     0x445538: stp          fp, lr, [SP, #-0x10]!
    //     0x44553c: mov          fp, SP
    //     0x445540: ldr          r0, [fp, #0x20]
    // 0x445544: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x445544: ldur         r1, [r0, #0x17]
    //     0x445548: add          r1, r1, HEAP, lsl #32
    // 0x44554c: CheckStackOverflow
    //     0x44554c: ldr          BARRIER, [THR, #0x38]
    //     0x445550: cmp          SP, BARRIER
    //     0x445554: b.ls         0x4455e0
    //     0x445558: ldr          r0, [fp, #0x18]
    //     0x44555c: tbnz         r0, #4, 0x4455b0
    //     0x445560: ldr          r0, [fp, #0x10]
    //     0x445564: tbnz         r0, #4, 0x44558c
    // 0x445568: LoadField: r0 = r1->field_f
    //     0x445568: ldur         r0, [r1, #0xf]
    //     0x44556c: add          r0, r0, HEAP, lsl #32
    // 0x445570: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x445570: ldur         r1, [r0, #0x17]
    //     0x445574: add          r1, r1, HEAP, lsl #32
    // 0x445578: BARRIER = pp[0x40]
    //     0x445578: ldr          BARRIER, [PP, #0x40]
    //     0x44557c: cmp          r1, r16
    // 0x445580: b.eq 0x4455e8
    //     0x445580: b.eq         0x4455e8
    // 0x445584: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadNoData()
    //     0x445584: bl           0x3adfd4
    // 0x445588: b 0x4455d0
    //     0x445588: b            0x4455d0
    // 0x44558c: LoadField: r0 = r1->field_f
    //     0x44558c: ldur         r0, [r1, #0xf]
    //     0x445590: add          r0, r0, HEAP, lsl #32
    // 0x445594: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x445594: ldur         r1, [r0, #0x17]
    //     0x445598: add          r1, r1, HEAP, lsl #32
    // 0x44559c: BARRIER = pp[0x40]
    //     0x44559c: ldr          BARRIER, [PP, #0x40]
    //     0x4455a0: cmp          r1, r16
    // 0x4455a4: b.eq 0x4455f4
    //     0x4455a4: b.eq         0x4455f4
    // 0x4455a8: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadComplete()
    //     0x4455a8: bl           0x3ade48
    // 0x4455ac: b 0x4455d0
    //     0x4455ac: b            0x4455d0
    // 0x4455b0: LoadField: r0 = r1->field_f
    //     0x4455b0: ldur         r0, [r1, #0xf]
    //     0x4455b4: add          r0, r0, HEAP, lsl #32
    // 0x4455b8: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x4455b8: ldur         r1, [r0, #0x17]
    //     0x4455bc: add          r1, r1, HEAP, lsl #32
    // 0x4455c0: BARRIER = pp[0x40]
    //     0x4455c0: ldr          BARRIER, [PP, #0x40]
    //     0x4455c4: cmp          r1, r16
    // 0x4455c8: b.eq 0x445600
    //     0x4455c8: b.eq         0x445600
    // 0x4455cc: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadFailed()
    //     0x4455cc: bl           0x3adbb4
    // 0x4455d0: r0 = NULL
    //     0x4455d0: mov          r0, NULL
    // 0x4455d4: SP = fp
    //     0x4455d4: mov          SP, fp
    // 0x4455d8: LeaveFrame
    //     0x4455d8: ldp          fp, lr, [SP], #0x10
    // 0x4455dc: ret
    //     0x4455dc: ret          
    // 0x4455e0: r0 = call 0x61fa28
    //     0x4455e0: bl           0x61fa28
    // 0x4455e4: b 0x445558
    //     0x4455e4: b            0x445558
    // 0x4455e8: r9 = pp[0x494]
    //     0x4455e8: add          r9, PP, #0x14, lsl #12
    //     0x4455ec: ldr          r9, [r9, #0x480]
    // 0x4455f0: r0 = call 0x620258
    //     0x4455f0: bl           0x620258
    // 0x4455f4: r9 = pp[0x494]
    //     0x4455f4: add          r9, PP, #0x14, lsl #12
    //     0x4455f8: ldr          r9, [r9, #0x480]
    // 0x4455fc: r0 = call 0x620258
    //     0x4455fc: bl           0x620258
    // 0x445600: r9 = pp[0x494]
    //     0x445600: add          r9, PP, #0x14, lsl #12
    //     0x445604: ldr          r9, [r9, #0x480]
    // 0x445608: r0 = call 0x620258
    //     0x445608: bl           0x620258
  }

  _anon_closure() {
    // ** addr: 0x3ae8a0, size: 0x84
    // 0x3ae8a0: EnterFrame
    //     0x3ae8a0: stp          fp, lr, [SP, #-0x10]!
    //     0x3ae8a4: mov          fp, SP
    // 0x3ae8a8: AllocStack(8)
    //     0x3ae8a8: sub          SP, SP, #8
    // 0x3ae8ac: CheckStackOverflow
    //     0x3ae8ac: ldr          BARRIER, [THR, #0x38]
    //     0x3ae8b0: cmp          SP, BARRIER
    //     0x3ae8b4: b.ls         0x3ae91c
    //     0x3ae8b8: ldr          r0, [fp, #0x10]
    // 0x3ae8bc: BARRIER = pp[0xe17]
    //     0x3ae8bc: add          BARRIER, PP, #0xf, lsl #12
    //     0x3ae8c0: ldr          BARRIER, [BARRIER, #0xe08]
    //     0x3ae8c4: cmp          r0, r16
    // 0x3ae8c8: b.ne 0x3ae8f8
    //     0x3ae8c8: b.ne         0x3ae8f8
    // 0x3ae8cc: r0 = call 0x396940
    //     0x3ae8cc: bl           0x396940
    // 0x3ae8d0: r1 = r0
    //     0x3ae8d0: mov          r1, r0
    // 0x3ae8d4: r0 = pp[0xaae]
    //     0x3ae8d4: add          r0, PP, #0xe, lsl #12
    //     0x3ae8d8: ldr          r0, [r0, #0xaa0]
    //     0x3ae8dc: stur         r1, [fp, #-8]
    // 0x3ae8e0: StoreField: r1->field_f = r0
    //     0x3ae8e0: stur         r0, [r1, #0xf]
    // 0x3ae8e4: r0 = call 0x3b3c18
    //     0x3ae8e4: bl           0x3b3c18
    // 0x3ae8e8: r1 = r0
    //     0x3ae8e8: mov          r1, r0
    //     0x3ae8ec: ldur         r0, [fp, #-8]
    // 0x3ae8f0: StoreField: r0->field_b = r1
    //     0x3ae8f0: stur         r1, [r0, #0xb]
    // 0x3ae8f4: b 0x3ae910
    //     0x3ae8f4: b            0x3ae910
    // 0x3ae8f8: r0 = call 0x391a04
    //     0x3ae8f8: bl           0x391a04
    // 0x3ae8fc: r1 = r0
    //     0x3ae8fc: mov          r1, r0
    //     0x3ae900: stur         r0, [fp, #-8]
    // 0x3ae904: r4 = pp[0x4c0]
    //     0x3ae904: ldr          r4, [PP, #0x4c0]
    // 0x3ae908: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x3ae908: bl           0x391490
    //     0x3ae90c: ldur         r0, [fp, #-8]
    // 0x3ae910: SP = fp
    //     0x3ae910: mov          SP, fp
    // 0x3ae914: LeaveFrame
    //     0x3ae914: ldp          fp, lr, [SP], #0x10
    // 0x3ae918: ret
    //     0x3ae918: ret          
    // 0x3ae91c: r0 = call 0x61fa28
    //     0x3ae91c: bl           0x61fa28
    // 0x3ae920: b 0x3ae8b8
    //     0x3ae920: b            0x3ae8b8
  }

  dispose() {
    // ** addr: 0x452754, size: 0x54
    // 0x452754: EnterFrame
    //     0x452754: stp          fp, lr, [SP, #-0x10]!
    //     0x452758: mov          fp, SP
    // 0x45275c: CheckStackOverflow
    //     0x45275c: ldr          BARRIER, [THR, #0x38]
    //     0x452760: cmp          SP, BARRIER
    //     0x452764: b.ls         0x452794
    // 0x452768: ArrayLoad: r0 = r1[0]  ; List_8
    //     0x452768: ldur         r0, [r1, #0x17]
    //     0x45276c: add          r0, r0, HEAP, lsl #32
    // 0x452770: BARRIER = pp[0x40]
    //     0x452770: ldr          BARRIER, [PP, #0x40]
    //     0x452774: cmp          r0, r16
    // 0x452778: b.eq 0x45279c
    //     0x452778: b.eq         0x45279c
    // 0x45277c: r1 = r0
    //     0x45277c: mov          r1, r0
    // 0x452780: r0 = pull_to_refresh$src$smart_refresher_RefreshController::dispose()
    //     0x452780: bl           0x45132c
    // 0x452784: r0 = NULL
    //     0x452784: mov          r0, NULL
    // 0x452788: SP = fp
    //     0x452788: mov          SP, fp
    // 0x45278c: LeaveFrame
    //     0x45278c: ldp          fp, lr, [SP], #0x10
    // 0x452790: ret
    //     0x452790: ret          
    // 0x452794: r0 = call 0x61fa28
    //     0x452794: bl           0x61fa28
    // 0x452798: b 0x452768
    //     0x452798: b            0x452768
    // 0x45279c: r9 = pp[0x494]
    //     0x45279c: add          r9, PP, #0x14, lsl #12
    //     0x4527a0: ldr          r9, [r9, #0x480]
    // 0x4527a4: r0 = call 0x620258
    //     0x4527a4: bl           0x620258
  }

  initState() {
    // ** addr: 0x4da668, size: 0xa8
    // 0x4da668: EnterFrame
    //     0x4da668: stp          fp, lr, [SP, #-0x10]!
    //     0x4da66c: mov          fp, SP
    // 0x4da670: AllocStack(0x18)
    //     0x4da670: sub          SP, SP, #0x18
    //     0x4da674: stur         r1, [fp, #-8]
    // 0x4da678: CheckStackOverflow
    //     0x4da678: ldr          BARRIER, [THR, #0x38]
    //     0x4da67c: cmp          SP, BARRIER
    //     0x4da680: b.ls         0x4da708
    //     0x4da684: mov          r1, #1
    // 0x4da688: r0 = call 0x61e890
    //     0x4da688: bl           0x61e890
    // 0x4da68c: r1 = r0
    //     0x4da68c: mov          r1, r0
    //     0x4da690: ldur         r0, [fp, #-8]
    //     0x4da694: stur         r1, [fp, #-0x10]
    // 0x4da698: StoreField: r1->field_f = r0
    //     0x4da698: stur         r0, [r1, #0xf]
    // 0x4da69c: r0 = call 0x4c47f0
    //     0x4da69c: bl           0x4c47f0
    // 0x4da6a0: r1 = r0
    //     0x4da6a0: mov          r1, r0
    //     0x4da6a4: stur         r0, [fp, #-0x18]
    // 0x4da6a8: r0 = pull_to_refresh$src$smart_refresher_RefreshController::ctor()
    //     0x4da6a8: bl           0x4c46e0
    //     0x4da6ac: ldur         r0, [fp, #-0x18]
    //     0x4da6b0: ldur         r1, [fp, #-8]
    // 0x4da6b4: ArrayStore: r1[0] = r0  ; List_8
    //     0x4da6b4: stur         r0, [r1, #0x17]
    //     0x4da6b8: ldurb        r16, [r1, #-1]
    //     0x4da6bc: ldurb        r17, [r0, #-1]
    //     0x4da6c0: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4da6c4: tst          BARRIER, HEAP, lsr #32
    // 0x4da6c8: b.eq 0x4da6d0
    //     0x4da6c8: b.eq         0x4da6d0
    // 0x4da6cc: r0 = call 0x61e04c
    //     0x4da6cc: bl           0x61e04c
    // 0x4da6d0: LoadField: r0 = r1->field_13
    //     0x4da6d0: ldur         r0, [r1, #0x13]
    //     0x4da6d4: add          r0, r0, HEAP, lsl #32
    //     0x4da6d8: ldur         r2, [fp, #-0x10]
    //     0x4da6dc: stur         r0, [fp, #-0x18]
    // 0x4da6e0: r1 = pp[0x4ec]
    //     0x4da6e0: add          r1, PP, #0x14, lsl #12
    //     0x4da6e4: ldr          r1, [r1, #0x4d8]
    // 0x4da6e8: r0 = call 0x61ec54
    //     0x4da6e8: bl           0x61ec54
    //     0x4da6ec: ldur         r1, [fp, #-0x18]
    // 0x4da6f0: r2 = r0
    //     0x4da6f0: mov          r2, r0
    // 0x4da6f4: r0 = soul_flutter_international$biz$pkGame$notifier$notifier_game_bet_record_GamePKBetLaunchRecordNotifier::gainPKGameLaunchRank()
    //     0x4da6f4: bl           0x4da710
    // 0x4da6f8: r0 = NULL
    //     0x4da6f8: mov          r0, NULL
    // 0x4da6fc: SP = fp
    //     0x4da6fc: mov          SP, fp
    // 0x4da700: LeaveFrame
    //     0x4da700: ldp          fp, lr, [SP], #0x10
    // 0x4da704: ret
    //     0x4da704: ret          
    // 0x4da708: r0 = call 0x61fa28
    //     0x4da708: bl           0x61fa28
    // 0x4da70c: b 0x4da684
    //     0x4da70c: b            0x4da684
  }

  build() {
    // ** addr: 0x44560c, size: 0x17c
    // 0x44560c: EnterFrame
    //     0x44560c: stp          fp, lr, [SP, #-0x10]!
    //     0x445610: mov          fp, SP
    // 0x445614: AllocStack(0x20)
    //     0x445614: sub          SP, SP, #0x20
    // 0x445618: r0 = r1
    //     0x445618: mov          r0, r1
    //     0x44561c: stur         r1, [fp, #-8]
    // 0x445620: r1 = r2
    //     0x445620: mov          r1, r2
    //     0x445624: stur         r2, [fp, #-0x10]
    // 0x445628: CheckStackOverflow
    //     0x445628: ldr          BARRIER, [THR, #0x38]
    //     0x44562c: cmp          SP, BARRIER
    //     0x445630: b.ls         0x445770
    //     0x445634: mov          r1, #3
    // 0x445638: r0 = call 0x61e890
    //     0x445638: bl           0x61e890
    // 0x44563c: r2 = r0
    //     0x44563c: mov          r2, r0
    //     0x445640: ldur         r0, [fp, #-8]
    //     0x445644: stur         r2, [fp, #-0x18]
    // 0x445648: StoreField: r2->field_f = r0
    //     0x445648: stur         r0, [r2, #0xf]
    //     0x44564c: ldur         r1, [fp, #-0x10]
    // 0x445650: r0 = soul_flutter_international$common$utils$screen_util_ScreenUtil::getScreenWidth()
    //     0x445650: bl           0x3a877c
    //     0x445654: mov          v1.16b, v0.16b
    //     0x445658: fmov         d0, #4.00000000
    //     0x44565c: fdiv         d2, d1, d0
    //     0x445660: ldp          r0, r1, [THR, #0x50]
    //     0x445664: add          r0, r0, #0x10
    //     0x445668: cmp          r1, r0
    // 0x44566c: b.ls 0x445778
    //     0x44566c: b.ls         0x445778
    //     0x445670: str          r0, [THR, #0x50]
    //     0x445674: sub          r0, r0, #0xf
    //     0x445678: mov          r1, #0xe15c
    //     0x44567c: movk         r1, #3, lsl #16
    //     0x445680: stur         r1, [r0, #-1]
    // 0x445684: StoreField: r0->field_7 = d2
    //     0x445684: stur         d2, [r0, #7]
    //     0x445688: ldur         r3, [fp, #-0x18]
    // 0x44568c: StoreField: r3->field_13 = r0
    //     0x44568c: stur         r0, [r3, #0x13]
    //     0x445690: ldurb        r16, [r3, #-1]
    //     0x445694: ldurb        r17, [r0, #-1]
    //     0x445698: and          BARRIER, r17, BARRIER, lsr #2
    //     0x44569c: tst          BARRIER, HEAP, lsr #32
    // 0x4456a0: b.eq 0x4456a8
    //     0x4456a0: b.eq         0x4456a8
    // 0x4456a4: r0 = call 0x61e08c
    //     0x4456a4: bl           0x61e08c
    //     0x4456a8: ldur         r0, [fp, #-8]
    // 0x4456ac: LoadField: r1 = r0->field_13
    //     0x4456ac: ldur         r1, [r0, #0x13]
    //     0x4456b0: add          r1, r1, HEAP, lsl #32
    // 0x4456b4: LoadField: r0 = r1->field_2b
    //     0x4456b4: ldur         r0, [r1, #0x2b]
    //     0x4456b8: add          r0, r0, HEAP, lsl #32
    // 0x4456bc: ArrayStore: r3[0] = r0  ; List_8
    //     0x4456bc: stur         r0, [r3, #0x17]
    //     0x4456c0: ldurb        r16, [r3, #-1]
    //     0x4456c4: ldurb        r17, [r0, #-1]
    //     0x4456c8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4456cc: tst          BARRIER, HEAP, lsr #32
    // 0x4456d0: b.eq 0x4456d8
    //     0x4456d0: b.eq         0x4456d8
    // 0x4456d4: r0 = call 0x61e08c
    //     0x4456d4: bl           0x61e08c
    // 0x4456d8: r2 = r3
    //     0x4456d8: mov          r2, r3
    // 0x4456dc: r1 = pp[0x36c]
    //     0x4456dc: add          r1, PP, #0x14, lsl #12
    //     0x4456e0: ldr          r1, [r1, #0x358]
    // 0x4456e4: r0 = call 0x61ec54
    //     0x4456e4: bl           0x61ec54
    // 0x4456e8: r1 = pp[0x374]
    //     0x4456e8: add          r1, PP, #0x14, lsl #12
    //     0x4456ec: ldr          r1, [r1, #0x360]
    //     0x4456f0: stur         r0, [fp, #-8]
    // 0x4456f4: r0 = call 0x41a414
    //     0x4456f4: bl           0x41a414
    // 0x4456f8: r3 = r0
    //     0x4456f8: mov          r3, r0
    //     0x4456fc: ldur         r0, [fp, #-8]
    //     0x445700: stur         r3, [fp, #-0x10]
    // 0x445704: StoreField: r3->field_13 = r0
    //     0x445704: stur         r0, [r3, #0x13]
    //     0x445708: ldur         r2, [fp, #-0x18]
    // 0x44570c: r1 = pp[0x37c]
    //     0x44570c: add          r1, PP, #0x14, lsl #12
    //     0x445710: ldr          r1, [r1, #0x368]
    // 0x445714: r0 = call 0x61ec54
    //     0x445714: bl           0x61ec54
    // 0x445718: r1 = pp[0x374]
    //     0x445718: add          r1, PP, #0x14, lsl #12
    //     0x44571c: ldr          r1, [r1, #0x360]
    //     0x445720: stur         r0, [fp, #-8]
    // 0x445724: r0 = call 0x3b81c4
    //     0x445724: bl           0x3b81c4
    // 0x445728: r1 = r0
    //     0x445728: mov          r1, r0
    //     0x44572c: ldur         r2, [fp, #-0x10]
    //     0x445730: ldur         r3, [fp, #-8]
    // 0x445734: r5 = NULL
    //     0x445734: mov          r5, NULL
    //     0x445738: stur         r0, [fp, #-8]
    // 0x44573c: r0 = provider$src$provider_InheritedProvider::ctor()
    //     0x44573c: bl           0x3b7e8c
    // 0x445740: r0 = call 0x391a04
    //     0x445740: bl           0x391a04
    //     0x445744: stur         r0, [fp, #-0x10]
    //     0x445748: ldur         BARRIER, [fp, #-8]
    //     0x44574c: str          BARRIER, [SP]
    // 0x445750: r1 = r0
    //     0x445750: mov          r1, r0
    // 0x445754: r4 = pp[0x204]
    //     0x445754: add          r4, PP, #0xc, lsl #12
    //     0x445758: ldr          r4, [r4, #0x1f8]
    // 0x44575c: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x44575c: bl           0x391490
    //     0x445760: ldur         r0, [fp, #-0x10]
    // 0x445764: SP = fp
    //     0x445764: mov          SP, fp
    // 0x445768: LeaveFrame
    //     0x445768: ldp          fp, lr, [SP], #0x10
    // 0x44576c: ret
    //     0x44576c: ret          
    // 0x445770: r0 = call 0x61fa28
    //     0x445770: bl           0x61fa28
    // 0x445774: b 0x445634
    //     0x445774: b            0x445634
    //     0x445778: str          q2, [SP, #-0x10]!
    // 0x44577c: r0 = call 0x61f878
    //     0x44577c: bl           0x61f878
    //     0x445780: ldr          q2, [SP], #0x10
    // 0x445784: b 0x445684
    //     0x445784: b            0x445684
  }

  _anon_closure() {
    // ** addr: 0x4457a8, size: 0x2a0
    // 0x4457a8: EnterFrame
    //     0x4457a8: stp          fp, lr, [SP, #-0x10]!
    //     0x4457ac: mov          fp, SP
    // 0x4457b0: AllocStack(0x38)
    //     0x4457b0: sub          SP, SP, #0x38
    //     0x4457b4: ldr          r0, [fp, #0x28]
    // 0x4457b8: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x4457b8: ldur         r2, [r0, #0x17]
    //     0x4457bc: add          r2, r2, HEAP, lsl #32
    //     0x4457c0: stur         r2, [fp, #-8]
    // 0x4457c4: CheckStackOverflow
    //     0x4457c4: ldr          BARRIER, [THR, #0x38]
    //     0x4457c8: cmp          SP, BARRIER
    //     0x4457cc: b.ls         0x445a34
    // 0x4457d0: LoadField: r0 = r2->field_f
    //     0x4457d0: ldur         r0, [r2, #0xf]
    //     0x4457d4: add          r0, r0, HEAP, lsl #32
    // 0x4457d8: LoadField: r1 = r0->field_13
    //     0x4457d8: ldur         r1, [r0, #0x13]
    //     0x4457dc: add          r1, r1, HEAP, lsl #32
    // 0x4457e0: LoadField: r0 = r1->field_2b
    //     0x4457e0: ldur         r0, [r1, #0x2b]
    //     0x4457e4: add          r0, r0, HEAP, lsl #32
    // 0x4457e8: LoadField: r1 = r0->field_b
    //     0x4457e8: ldur         r1, [r0, #0xb]
    //     0x4457ec: sbfx         r0, r1, #1, #0x1f
    //     0x4457f0: cmp          r0, #0
    // 0x4457f4: b.le 0x445a24
    //     0x4457f4: b.le         0x445a24
    // 0x4457f8: LoadField: r0 = r2->field_13
    //     0x4457f8: ldur         r0, [r2, #0x13]
    //     0x4457fc: add          r0, r0, HEAP, lsl #32
    // 0x445800: LoadField: d1 = r0->field_7
    //     0x445800: ldur         d1, [r0, #7]
    //     0x445804: mov          v0.16b, v1.16b
    //     0x445808: stur         d1, [fp, #-0x38]
    //     0x44580c: mov          r1, #2
    // 0x445810: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record_::titleBarWidget()
    //     0x445810: bl           0x443a98
    // 0x445814: r3 = r0
    //     0x445814: mov          r3, r0
    //     0x445818: ldur         r0, [fp, #-8]
    //     0x44581c: stur         r3, [fp, #-0x20]
    // 0x445820: ArrayLoad: r4 = r0[0]  ; List_8
    //     0x445820: ldur         r4, [r0, #0x17]
    //     0x445824: add          r4, r4, HEAP, lsl #32
    //     0x445828: stur         r4, [fp, #-0x18]
    // 0x44582c: LoadField: r1 = r4->field_b
    //     0x44582c: ldur         r1, [r4, #0xb]
    //     0x445830: sbfx         r2, r1, #1, #0x1f
    //     0x445834: cmp          r2, #0
    // 0x445838: b.le 0x445958
    //     0x445838: b.le         0x445958
    // 0x44583c: LoadField: r1 = r0->field_f
    //     0x44583c: ldur         r1, [r0, #0xf]
    //     0x445840: add          r1, r1, HEAP, lsl #32
    // 0x445844: ArrayLoad: r5 = r1[0]  ; List_8
    //     0x445844: ldur         r5, [r1, #0x17]
    //     0x445848: add          r5, r5, HEAP, lsl #32
    // 0x44584c: BARRIER = pp[0x40]
    //     0x44584c: ldr          BARRIER, [PP, #0x40]
    //     0x445850: cmp          r5, r16
    // 0x445854: b.eq 0x445a3c
    //     0x445854: b.eq         0x445a3c
    //     0x445858: stur         r5, [fp, #-0x10]
    // 0x44585c: r1 = pp[0x384]
    //     0x44585c: add          r1, PP, #0x14, lsl #12
    //     0x445860: ldr          r1, [r1, #0x370]
    // 0x445864: r2 = NULL
    //     0x445864: mov          r2, NULL
    // 0x445868: r0 = call 0x61ec54
    //     0x445868: bl           0x61ec54
    //     0x44586c: stur         r0, [fp, #-0x28]
    // 0x445870: r0 = call 0x3ab5b8
    //     0x445870: bl           0x3ab5b8
    // 0x445874: r3 = r0
    //     0x445874: mov          r3, r0
    //     0x445878: ldur         r0, [fp, #-0x28]
    //     0x44587c: stur         r3, [fp, #-0x30]
    // 0x445880: StoreField: r3->field_1b = r0
    //     0x445880: stur         r0, [r3, #0x1b]
    // 0x445884: r0 = pp[0x8a7]
    //     0x445884: add          r0, PP, #0xf, lsl #12
    //     0x445888: ldr          r0, [r0, #0x898]
    // 0x44588c: StoreField: r3->field_b = r0
    //     0x44588c: stur         r0, [r3, #0xb]
    // 0x445890: d0 = pp[0x8af]
    //     0x445890: add          r17, PP, #0xf, lsl #12
    //     0x445894: ldr          d0, [r17, #0x8a0]
    // 0x445898: StoreField: r3->field_f = d0
    //     0x445898: stur         d0, [r3, #0xf]
    //     0x44589c: ldur         d0, [fp, #-0x38]
    //     0x4458a0: ldur         r2, [fp, #-0x18]
    //     0x4458a4: mov          r1, #2
    // 0x4458a8: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record_::launchRecordListWidget()
    //     0x4458a8: bl           0x443208
    //     0x4458ac: stur         r0, [fp, #-0x18]
    // 0x4458b0: r0 = call 0x3ab290
    //     0x4458b0: bl           0x3ab290
    // 0x4458b4: r3 = r0
    //     0x4458b4: mov          r3, r0
    //     0x4458b8: ldur         r0, [fp, #-0x10]
    //     0x4458bc: stur         r3, [fp, #-0x28]
    // 0x4458c0: StoreField: r3->field_2b = r0
    //     0x4458c0: stur         r0, [r3, #0x2b]
    //     0x4458c4: ldur         r0, [fp, #-0x18]
    // 0x4458c8: StoreField: r3->field_b = r0
    //     0x4458c8: stur         r0, [r3, #0xb]
    //     0x4458cc: ldur         r0, [fp, #-0x30]
    // 0x4458d0: StoreField: r3->field_f = r0
    //     0x4458d0: stur         r0, [r3, #0xf]
    //     0x4458d4: add          r0, NULL, #0x30
    // 0x4458d8: StoreField: r3->field_1b = r0
    //     0x4458d8: stur         r0, [r3, #0x1b]
    //     0x4458dc: add          r1, NULL, #0x20
    // 0x4458e0: StoreField: r3->field_13 = r1
    //     0x4458e0: stur         r1, [r3, #0x13]
    // 0x4458e4: ArrayStore: r3[0] = r0  ; List_8
    //     0x4458e4: stur         r0, [r3, #0x17]
    //     0x4458e8: ldur         r2, [fp, #-8]
    // 0x4458ec: r1 = pp[0x38c]
    //     0x4458ec: add          r1, PP, #0x14, lsl #12
    //     0x4458f0: ldr          r1, [r1, #0x378]
    // 0x4458f4: r0 = call 0x61ec54
    //     0x4458f4: bl           0x61ec54
    //     0x4458f8: ldur         r2, [fp, #-0x28]
    // 0x4458fc: StoreField: r2->field_23 = r0
    //     0x4458fc: stur         r0, [r2, #0x23]
    // 0x445900: r1 = pp[0x227]
    //     0x445900: add          r1, PP, #0xf, lsl #12
    //     0x445904: ldr          r1, [r1, #0x218]
    // 0x445908: r0 = call 0x396454
    //     0x445908: bl           0x396454
    // 0x44590c: r1 = r0
    //     0x44590c: mov          r1, r0
    //     0x445910: ldur         r2, [fp, #-0x28]
    //     0x445914: ldr          r3, [fp, #0x20]
    //     0x445918: stur         r0, [fp, #-8]
    // 0x44591c: r4 = pp[0x2e0]
    //     0x44591c: ldr          r4, [PP, #0x2e0]
    // 0x445920: r0 = flutter$src$widgets$media_query_MediaQuery::ctor_removePadding()
    //     0x445920: bl           0x39ecf8
    // 0x445924: r1 = pp[0xade]
    //     0x445924: add          r1, PP, #0xe, lsl #12
    //     0x445928: ldr          r1, [r1, #0xad0]
    // 0x44592c: r0 = call 0x39fb14
    //     0x44592c: bl           0x39fb14
    // 0x445930: r1 = r0
    //     0x445930: mov          r1, r0
    //     0x445934: mov          r0, #1
    // 0x445938: StoreField: r1->field_13 = r0
    //     0x445938: stur         r0, [r1, #0x13]
    // 0x44593c: r0 = pp[0xae6]
    //     0x44593c: add          r0, PP, #0xe, lsl #12
    //     0x445940: ldr          r0, [r0, #0xad8]
    // 0x445944: StoreField: r1->field_1b = r0
    //     0x445944: stur         r0, [r1, #0x1b]
    //     0x445948: ldur         r0, [fp, #-8]
    // 0x44594c: StoreField: r1->field_b = r0
    //     0x44594c: stur         r0, [r1, #0xb]
    // 0x445950: r4 = r1
    //     0x445950: mov          r4, r1
    // 0x445954: b 0x445970
    //     0x445954: b            0x445970
    // 0x445958: r0 = call 0x391a04
    //     0x445958: bl           0x391a04
    // 0x44595c: r1 = r0
    //     0x44595c: mov          r1, r0
    //     0x445960: stur         r0, [fp, #-8]
    // 0x445964: r4 = pp[0x4c0]
    //     0x445964: ldr          r4, [PP, #0x4c0]
    // 0x445968: r0 = flutter$src$widgets$container_Container::ctor()
    //     0x445968: bl           0x391490
    //     0x44596c: ldur         r4, [fp, #-8]
    //     0x445970: ldur         r0, [fp, #-0x20]
    //     0x445974: mov          r3, #4
    // 0x445978: r2 = r3
    //     0x445978: mov          r2, r3
    //     0x44597c: stur         r4, [fp, #-8]
    // 0x445980: r1 = NULL
    //     0x445980: mov          r1, NULL
    // 0x445984: r0 = call 0x61f920
    //     0x445984: bl           0x61f920
    // 0x445988: r2 = r0
    //     0x445988: mov          r2, r0
    //     0x44598c: ldur         r0, [fp, #-0x20]
    //     0x445990: stur         r2, [fp, #-0x10]
    // 0x445994: StoreField: r2->field_f = r0
    //     0x445994: stur         r0, [r2, #0xf]
    //     0x445998: ldur         r0, [fp, #-8]
    // 0x44599c: StoreField: r2->field_13 = r0
    //     0x44599c: stur         r0, [r2, #0x13]
    // 0x4459a0: r1 = pp[0x5c58]
    //     0x4459a0: ldr          r1, [PP, #0x5c58]
    // 0x4459a4: r0 = call 0x61e854
    //     0x4459a4: bl           0x61e854
    // 0x4459a8: r1 = r0
    //     0x4459a8: mov          r1, r0
    //     0x4459ac: ldur         r0, [fp, #-0x10]
    //     0x4459b0: stur         r1, [fp, #-8]
    // 0x4459b4: StoreField: r1->field_f = r0
    //     0x4459b4: stur         r0, [r1, #0xf]
    //     0x4459b8: mov          r0, #4
    // 0x4459bc: StoreField: r1->field_b = r0
    //     0x4459bc: stur         r0, [r1, #0xb]
    // 0x4459c0: r0 = call 0x39310c
    //     0x4459c0: bl           0x39310c
    // 0x4459c4: r1 = r0
    //     0x4459c4: mov          r1, r0
    // 0x4459c8: r0 = pp[0x862]
    //     0x4459c8: add          r0, PP, #0xa, lsl #12
    //     0x4459cc: ldr          r0, [r0, #0x858]
    // 0x4459d0: StoreField: r1->field_f = r0
    //     0x4459d0: stur         r0, [r1, #0xf]
    // 0x4459d4: r0 = pp[0xaee]
    //     0x4459d4: add          r0, PP, #0xe, lsl #12
    //     0x4459d8: ldr          r0, [r0, #0xae0]
    // 0x4459dc: StoreField: r1->field_13 = r0
    //     0x4459dc: stur         r0, [r1, #0x13]
    // 0x4459e0: r0 = pp[0xaf6]
    //     0x4459e0: add          r0, PP, #0xe, lsl #12
    //     0x4459e4: ldr          r0, [r0, #0xae8]
    // 0x4459e8: ArrayStore: r1[0] = r0  ; List_8
    //     0x4459e8: stur         r0, [r1, #0x17]
    // 0x4459ec: r0 = pp[0xb6e]
    //     0x4459ec: add          r0, PP, #0xe, lsl #12
    //     0x4459f0: ldr          r0, [r0, #0xb60]
    // 0x4459f4: StoreField: r1->field_1b = r0
    //     0x4459f4: stur         r0, [r1, #0x1b]
    // 0x4459f8: r0 = pp[0xb06]
    //     0x4459f8: add          r0, PP, #0xe, lsl #12
    //     0x4459fc: ldr          r0, [r0, #0xaf8]
    // 0x445a00: StoreField: r1->field_23 = r0
    //     0x445a00: stur         r0, [r1, #0x23]
    // 0x445a04: r0 = pp[0xb2]
    //     0x445a04: add          r0, PP, #0xa, lsl #12
    //     0x445a08: ldr          r0, [r0, #0xa8]
    // 0x445a0c: StoreField: r1->field_2b = r0
    //     0x445a0c: stur         r0, [r1, #0x2b]
    // 0x445a10: StoreField: r1->field_2f = xzr
    //     0x445a10: stur         xzr, [r1, #0x2f]
    //     0x445a14: ldur         r0, [fp, #-8]
    // 0x445a18: StoreField: r1->field_b = r0
    //     0x445a18: stur         r0, [r1, #0xb]
    // 0x445a1c: r0 = r1
    //     0x445a1c: mov          r0, r1
    // 0x445a20: b 0x445a28
    //     0x445a20: b            0x445a28
    // 0x445a24: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record_::emptyWidge()
    //     0x445a24: bl           0x443014
    // 0x445a28: SP = fp
    //     0x445a28: mov          SP, fp
    // 0x445a2c: LeaveFrame
    //     0x445a2c: ldp          fp, lr, [SP], #0x10
    // 0x445a30: ret
    //     0x445a30: ret          
    // 0x445a34: r0 = call 0x61fa28
    //     0x445a34: bl           0x61fa28
    // 0x445a38: b 0x4457d0
    //     0x445a38: b            0x4457d0
    // 0x445a3c: r9 = pp[0x394]
    //     0x445a3c: add          r9, PP, #0x14, lsl #12
    //     0x445a40: ldr          r9, [r9, #0x380]
    // 0x445a44: r0 = call 0x620258
    //     0x445a44: bl           0x620258
  }

  _anon_closure() {
    // ** addr: 0x445a48, size: 0x68
    // 0x445a48: EnterFrame
    //     0x445a48: stp          fp, lr, [SP, #-0x10]!
    //     0x445a4c: mov          fp, SP
    // 0x445a50: AllocStack(8)
    //     0x445a50: sub          SP, SP, #8
    //     0x445a54: ldr          r0, [fp, #0x10]
    // 0x445a58: ArrayLoad: r2 = r0[0]  ; List_8
    //     0x445a58: ldur         r2, [r0, #0x17]
    //     0x445a5c: add          r2, r2, HEAP, lsl #32
    // 0x445a60: CheckStackOverflow
    //     0x445a60: ldr          BARRIER, [THR, #0x38]
    //     0x445a64: cmp          SP, BARRIER
    //     0x445a68: b.ls         0x445aa8
    // 0x445a6c: LoadField: r0 = r2->field_f
    //     0x445a6c: ldur         r0, [r2, #0xf]
    //     0x445a70: add          r0, r0, HEAP, lsl #32
    // 0x445a74: LoadField: r3 = r0->field_13
    //     0x445a74: ldur         r3, [r0, #0x13]
    //     0x445a78: add          r3, r3, HEAP, lsl #32
    //     0x445a7c: stur         r3, [fp, #-8]
    // 0x445a80: r1 = pp[0x39c]
    //     0x445a80: add          r1, PP, #0x14, lsl #12
    //     0x445a84: ldr          r1, [r1, #0x388]
    // 0x445a88: r0 = call 0x61ec54
    //     0x445a88: bl           0x61ec54
    //     0x445a8c: ldur         r1, [fp, #-8]
    // 0x445a90: r2 = r0
    //     0x445a90: mov          r2, r0
    // 0x445a94: r0 = soul_flutter_international$biz$pkGame$notifier$notifier_game_bet_record_GamePKBetParticipateRecordNotifier::requestGameParticipateRankList()
    //     0x445a94: bl           0x445ab0
    // 0x445a98: r0 = NULL
    //     0x445a98: mov          r0, NULL
    // 0x445a9c: SP = fp
    //     0x445a9c: mov          SP, fp
    // 0x445aa0: LeaveFrame
    //     0x445aa0: ldp          fp, lr, [SP], #0x10
    // 0x445aa4: ret
    //     0x445aa4: ret          
    // 0x445aa8: r0 = call 0x61fa28
    //     0x445aa8: bl           0x61fa28
    // 0x445aac: b 0x445a6c
    //     0x445aac: b            0x445a6c
  }

  _anon_closure() {
    // ** addr: 0x445e10, size: 0xd4
    // 0x445e10: EnterFrame
    //     0x445e10: stp          fp, lr, [SP, #-0x10]!
    //     0x445e14: mov          fp, SP
    //     0x445e18: ldr          r0, [fp, #0x20]
    // 0x445e1c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x445e1c: ldur         r1, [r0, #0x17]
    //     0x445e20: add          r1, r1, HEAP, lsl #32
    // 0x445e24: CheckStackOverflow
    //     0x445e24: ldr          BARRIER, [THR, #0x38]
    //     0x445e28: cmp          SP, BARRIER
    //     0x445e2c: b.ls         0x445eb8
    //     0x445e30: ldr          r0, [fp, #0x18]
    //     0x445e34: tbnz         r0, #4, 0x445e88
    //     0x445e38: ldr          r0, [fp, #0x10]
    //     0x445e3c: tbnz         r0, #4, 0x445e64
    // 0x445e40: LoadField: r0 = r1->field_f
    //     0x445e40: ldur         r0, [r1, #0xf]
    //     0x445e44: add          r0, r0, HEAP, lsl #32
    // 0x445e48: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x445e48: ldur         r1, [r0, #0x17]
    //     0x445e4c: add          r1, r1, HEAP, lsl #32
    // 0x445e50: BARRIER = pp[0x40]
    //     0x445e50: ldr          BARRIER, [PP, #0x40]
    //     0x445e54: cmp          r1, r16
    // 0x445e58: b.eq 0x445ec0
    //     0x445e58: b.eq         0x445ec0
    // 0x445e5c: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadNoData()
    //     0x445e5c: bl           0x3adfd4
    // 0x445e60: b 0x445ea8
    //     0x445e60: b            0x445ea8
    // 0x445e64: LoadField: r0 = r1->field_f
    //     0x445e64: ldur         r0, [r1, #0xf]
    //     0x445e68: add          r0, r0, HEAP, lsl #32
    // 0x445e6c: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x445e6c: ldur         r1, [r0, #0x17]
    //     0x445e70: add          r1, r1, HEAP, lsl #32
    // 0x445e74: BARRIER = pp[0x40]
    //     0x445e74: ldr          BARRIER, [PP, #0x40]
    //     0x445e78: cmp          r1, r16
    // 0x445e7c: b.eq 0x445ecc
    //     0x445e7c: b.eq         0x445ecc
    // 0x445e80: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadComplete()
    //     0x445e80: bl           0x3ade48
    // 0x445e84: b 0x445ea8
    //     0x445e84: b            0x445ea8
    // 0x445e88: LoadField: r0 = r1->field_f
    //     0x445e88: ldur         r0, [r1, #0xf]
    //     0x445e8c: add          r0, r0, HEAP, lsl #32
    // 0x445e90: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x445e90: ldur         r1, [r0, #0x17]
    //     0x445e94: add          r1, r1, HEAP, lsl #32
    // 0x445e98: BARRIER = pp[0x40]
    //     0x445e98: ldr          BARRIER, [PP, #0x40]
    //     0x445e9c: cmp          r1, r16
    // 0x445ea0: b.eq 0x445ed8
    //     0x445ea0: b.eq         0x445ed8
    // 0x445ea4: r0 = pull_to_refresh$src$smart_refresher_RefreshController::loadFailed()
    //     0x445ea4: bl           0x3adbb4
    // 0x445ea8: r0 = NULL
    //     0x445ea8: mov          r0, NULL
    // 0x445eac: SP = fp
    //     0x445eac: mov          SP, fp
    // 0x445eb0: LeaveFrame
    //     0x445eb0: ldp          fp, lr, [SP], #0x10
    // 0x445eb4: ret
    //     0x445eb4: ret          
    // 0x445eb8: r0 = call 0x61fa28
    //     0x445eb8: bl           0x61fa28
    // 0x445ebc: b 0x445e30
    //     0x445ebc: b            0x445e30
    // 0x445ec0: r9 = pp[0x394]
    //     0x445ec0: add          r9, PP, #0x14, lsl #12
    //     0x445ec4: ldr          r9, [r9, #0x380]
    // 0x445ec8: r0 = call 0x620258
    //     0x445ec8: bl           0x620258
    // 0x445ecc: r9 = pp[0x394]
    //     0x445ecc: add          r9, PP, #0x14, lsl #12
    //     0x445ed0: ldr          r9, [r9, #0x380]
    // 0x445ed4: r0 = call 0x620258
    //     0x445ed4: bl           0x620258
    // 0x445ed8: r9 = pp[0x394]
    //     0x445ed8: add          r9, PP, #0x14, lsl #12
    //     0x445edc: ldr          r9, [r9, #0x380]
    // 0x445ee0: r0 = call 0x620258
    //     0x445ee0: bl           0x620258
  }

  dispose() {
    // ** addr: 0x4527a8, size: 0x54
    // 0x4527a8: EnterFrame
    //     0x4527a8: stp          fp, lr, [SP, #-0x10]!
    //     0x4527ac: mov          fp, SP
    // 0x4527b0: CheckStackOverflow
    //     0x4527b0: ldr          BARRIER, [THR, #0x38]
    //     0x4527b4: cmp          SP, BARRIER
    //     0x4527b8: b.ls         0x4527e8
    // 0x4527bc: ArrayLoad: r0 = r1[0]  ; List_8
    //     0x4527bc: ldur         r0, [r1, #0x17]
    //     0x4527c0: add          r0, r0, HEAP, lsl #32
    // 0x4527c4: BARRIER = pp[0x40]
    //     0x4527c4: ldr          BARRIER, [PP, #0x40]
    //     0x4527c8: cmp          r0, r16
    // 0x4527cc: b.eq 0x4527f0
    //     0x4527cc: b.eq         0x4527f0
    // 0x4527d0: r1 = r0
    //     0x4527d0: mov          r1, r0
    // 0x4527d4: r0 = pull_to_refresh$src$smart_refresher_RefreshController::dispose()
    //     0x4527d4: bl           0x45132c
    // 0x4527d8: r0 = NULL
    //     0x4527d8: mov          r0, NULL
    // 0x4527dc: SP = fp
    //     0x4527dc: mov          SP, fp
    // 0x4527e0: LeaveFrame
    //     0x4527e0: ldp          fp, lr, [SP], #0x10
    // 0x4527e4: ret
    //     0x4527e4: ret          
    // 0x4527e8: r0 = call 0x61fa28
    //     0x4527e8: bl           0x61fa28
    // 0x4527ec: b 0x4527bc
    //     0x4527ec: b            0x4527bc
    // 0x4527f0: r9 = pp[0x394]
    //     0x4527f0: add          r9, PP, #0x14, lsl #12
    //     0x4527f4: ldr          r9, [r9, #0x380]
    // 0x4527f8: r0 = call 0x620258
    //     0x4527f8: bl           0x620258
  }

  initState() {
    // ** addr: 0x4da764, size: 0xa8
    // 0x4da764: EnterFrame
    //     0x4da764: stp          fp, lr, [SP, #-0x10]!
    //     0x4da768: mov          fp, SP
    // 0x4da76c: AllocStack(0x18)
    //     0x4da76c: sub          SP, SP, #0x18
    //     0x4da770: stur         r1, [fp, #-8]
    // 0x4da774: CheckStackOverflow
    //     0x4da774: ldr          BARRIER, [THR, #0x38]
    //     0x4da778: cmp          SP, BARRIER
    //     0x4da77c: b.ls         0x4da804
    //     0x4da780: mov          r1, #1
    // 0x4da784: r0 = call 0x61e890
    //     0x4da784: bl           0x61e890
    // 0x4da788: r1 = r0
    //     0x4da788: mov          r1, r0
    //     0x4da78c: ldur         r0, [fp, #-8]
    //     0x4da790: stur         r1, [fp, #-0x10]
    // 0x4da794: StoreField: r1->field_f = r0
    //     0x4da794: stur         r0, [r1, #0xf]
    // 0x4da798: r0 = call 0x4c47f0
    //     0x4da798: bl           0x4c47f0
    // 0x4da79c: r1 = r0
    //     0x4da79c: mov          r1, r0
    //     0x4da7a0: stur         r0, [fp, #-0x18]
    // 0x4da7a4: r0 = pull_to_refresh$src$smart_refresher_RefreshController::ctor()
    //     0x4da7a4: bl           0x4c46e0
    //     0x4da7a8: ldur         r0, [fp, #-0x18]
    //     0x4da7ac: ldur         r1, [fp, #-8]
    // 0x4da7b0: ArrayStore: r1[0] = r0  ; List_8
    //     0x4da7b0: stur         r0, [r1, #0x17]
    //     0x4da7b4: ldurb        r16, [r1, #-1]
    //     0x4da7b8: ldurb        r17, [r0, #-1]
    //     0x4da7bc: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4da7c0: tst          BARRIER, HEAP, lsr #32
    // 0x4da7c4: b.eq 0x4da7cc
    //     0x4da7c4: b.eq         0x4da7cc
    // 0x4da7c8: r0 = call 0x61e04c
    //     0x4da7c8: bl           0x61e04c
    // 0x4da7cc: LoadField: r0 = r1->field_13
    //     0x4da7cc: ldur         r0, [r1, #0x13]
    //     0x4da7d0: add          r0, r0, HEAP, lsl #32
    //     0x4da7d4: ldur         r2, [fp, #-0x10]
    //     0x4da7d8: stur         r0, [fp, #-0x18]
    // 0x4da7dc: r1 = pp[0x464]
    //     0x4da7dc: add          r1, PP, #0x14, lsl #12
    //     0x4da7e0: ldr          r1, [r1, #0x450]
    // 0x4da7e4: r0 = call 0x61ec54
    //     0x4da7e4: bl           0x61ec54
    //     0x4da7e8: ldur         r1, [fp, #-0x18]
    // 0x4da7ec: r2 = r0
    //     0x4da7ec: mov          r2, r0
    // 0x4da7f0: r0 = soul_flutter_international$biz$pkGame$notifier$notifier_game_bet_record_GamePKBetParticipateRecordNotifier::gainPKGameParticipateRank()
    //     0x4da7f0: bl           0x4da80c
    // 0x4da7f4: r0 = NULL
    //     0x4da7f4: mov          r0, NULL
    // 0x4da7f8: SP = fp
    //     0x4da7f8: mov          SP, fp
    // 0x4da7fc: LeaveFrame
    //     0x4da7fc: ldp          fp, lr, [SP], #0x10
    // 0x4da800: ret
    //     0x4da800: ret          
    // 0x4da804: r0 = call 0x61fa28
    //     0x4da804: bl           0x61fa28
    // 0x4da808: b 0x4da780
    //     0x4da808: b            0x4da780
  }

  createState() {
    // ** addr: 0x4c5604, size: 0x48
    // 0x4c5604: EnterFrame
    //     0x4c5604: stp          fp, lr, [SP, #-0x10]!
    //     0x4c5608: mov          fp, SP
    // 0x4c560c: AllocStack(8)
    //     0x4c560c: sub          SP, SP, #8
    // 0x4c5610: CheckStackOverflow
    //     0x4c5610: ldr          BARRIER, [THR, #0x38]
    //     0x4c5614: cmp          SP, BARRIER
    //     0x4c5618: b.ls         0x4c5644
    // 0x4c561c: r1 = pp[0x633]
    //     0x4c561c: add          r1, PP, #0xb, lsl #12
    //     0x4c5620: ldr          r1, [r1, #0x628]
    // 0x4c5624: r0 = call 0x4c5740
    //     0x4c5624: bl           0x4c5740
    // 0x4c5628: r1 = r0
    //     0x4c5628: mov          r1, r0
    //     0x4c562c: stur         r0, [fp, #-8]
    // 0x4c5630: r0 = soul_flutter_international$biz$pkGame$page_game_tab_bet_record__PagePKGameBetTabRecordState::ctor()
    //     0x4c5630: bl           0x4c564c
    //     0x4c5634: ldur         r0, [fp, #-8]
    // 0x4c5638: SP = fp
    //     0x4c5638: mov          SP, fp
    // 0x4c563c: LeaveFrame
    //     0x4c563c: ldp          fp, lr, [SP], #0x10
    // 0x4c5640: ret
    //     0x4c5640: ret          
    // 0x4c5644: r0 = call 0x61fa28
    //     0x4c5644: bl           0x61fa28
    // 0x4c5648: b 0x4c561c
    //     0x4c5648: b            0x4c561c
  }

  createState() {
    // ** addr: 0x4c574c, size: 0x80
    // 0x4c574c: EnterFrame
    //     0x4c574c: stp          fp, lr, [SP, #-0x10]!
    //     0x4c5750: mov          fp, SP
    // 0x4c5754: AllocStack(0x10)
    //     0x4c5754: sub          SP, SP, #0x10
    // 0x4c5758: CheckStackOverflow
    //     0x4c5758: ldr          BARRIER, [THR, #0x38]
    //     0x4c575c: cmp          SP, BARRIER
    //     0x4c5760: b.ls         0x4c57c4
    // 0x4c5764: r1 = pp[0xea]
    //     0x4c5764: add          r1, PP, #0x12, lsl #12
    //     0x4c5768: ldr          r1, [r1, #0xd8]
    // 0x4c576c: r0 = call 0x4c5894
    //     0x4c576c: bl           0x4c5894
    // 0x4c5770: r1 = r0
    //     0x4c5770: mov          r1, r0
    // 0x4c5774: r0 = pp[0x40]
    //     0x4c5774: ldr          r0, [PP, #0x40]
    //     0x4c5778: stur         r1, [fp, #-8]
    // 0x4c577c: ArrayStore: r1[0] = r0  ; List_8
    //     0x4c577c: stur         r0, [r1, #0x17]
    // 0x4c5780: r0 = call 0x4c5888
    //     0x4c5780: bl           0x4c5888
    // 0x4c5784: r1 = r0
    //     0x4c5784: mov          r1, r0
    //     0x4c5788: stur         r0, [fp, #-0x10]
    // 0x4c578c: r0 = soul_flutter_international$biz$pkGame$notifier$notifier_game_bet_record_GamePKBetLaunchRecordNotifier::ctor()
    //     0x4c578c: bl           0x4c57cc
    //     0x4c5790: ldur         r0, [fp, #-0x10]
    //     0x4c5794: ldur         r1, [fp, #-8]
    // 0x4c5798: StoreField: r1->field_13 = r0
    //     0x4c5798: stur         r0, [r1, #0x13]
    //     0x4c579c: ldurb        r16, [r1, #-1]
    //     0x4c57a0: ldurb        r17, [r0, #-1]
    //     0x4c57a4: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c57a8: tst          BARRIER, HEAP, lsr #32
    // 0x4c57ac: b.eq 0x4c57b4
    //     0x4c57ac: b.eq         0x4c57b4
    // 0x4c57b0: r0 = call 0x61e04c
    //     0x4c57b0: bl           0x61e04c
    // 0x4c57b4: r0 = r1
    //     0x4c57b4: mov          r0, r1
    // 0x4c57b8: SP = fp
    //     0x4c57b8: mov          SP, fp
    // 0x4c57bc: LeaveFrame
    //     0x4c57bc: ldp          fp, lr, [SP], #0x10
    // 0x4c57c0: ret
    //     0x4c57c0: ret          
    // 0x4c57c4: r0 = call 0x61fa28
    //     0x4c57c4: bl           0x61fa28
    // 0x4c57c8: b 0x4c5764
    //     0x4c57c8: b            0x4c5764
  }

  createState() {
    // ** addr: 0x4c58a0, size: 0x80
    // 0x4c58a0: EnterFrame
    //     0x4c58a0: stp          fp, lr, [SP, #-0x10]!
    //     0x4c58a4: mov          fp, SP
    // 0x4c58a8: AllocStack(0x10)
    //     0x4c58a8: sub          SP, SP, #0x10
    // 0x4c58ac: CheckStackOverflow
    //     0x4c58ac: ldr          BARRIER, [THR, #0x38]
    //     0x4c58b0: cmp          SP, BARRIER
    //     0x4c58b4: b.ls         0x4c5918
    // 0x4c58b8: r1 = pp[0xfa]
    //     0x4c58b8: add          r1, PP, #0x12, lsl #12
    //     0x4c58bc: ldr          r1, [r1, #0xe8]
    // 0x4c58c0: r0 = call 0x4c592c
    //     0x4c58c0: bl           0x4c592c
    // 0x4c58c4: r1 = r0
    //     0x4c58c4: mov          r1, r0
    // 0x4c58c8: r0 = pp[0x40]
    //     0x4c58c8: ldr          r0, [PP, #0x40]
    //     0x4c58cc: stur         r1, [fp, #-8]
    // 0x4c58d0: ArrayStore: r1[0] = r0  ; List_8
    //     0x4c58d0: stur         r0, [r1, #0x17]
    // 0x4c58d4: r0 = call 0x4c5920
    //     0x4c58d4: bl           0x4c5920
    // 0x4c58d8: r1 = r0
    //     0x4c58d8: mov          r1, r0
    //     0x4c58dc: stur         r0, [fp, #-0x10]
    // 0x4c58e0: r0 = soul_flutter_international$biz$pkGame$notifier$notifier_game_bet_record_GamePKBetLaunchRecordNotifier::ctor()
    //     0x4c58e0: bl           0x4c57cc
    //     0x4c58e4: ldur         r0, [fp, #-0x10]
    //     0x4c58e8: ldur         r1, [fp, #-8]
    // 0x4c58ec: StoreField: r1->field_13 = r0
    //     0x4c58ec: stur         r0, [r1, #0x13]
    //     0x4c58f0: ldurb        r16, [r1, #-1]
    //     0x4c58f4: ldurb        r17, [r0, #-1]
    //     0x4c58f8: and          BARRIER, r17, BARRIER, lsr #2
    //     0x4c58fc: tst          BARRIER, HEAP, lsr #32
    // 0x4c5900: b.eq 0x4c5908
    //     0x4c5900: b.eq         0x4c5908
    // 0x4c5904: r0 = call 0x61e04c
    //     0x4c5904: bl           0x61e04c
    // 0x4c5908: r0 = r1
    //     0x4c5908: mov          r0, r1
    // 0x4c590c: SP = fp
    //     0x4c590c: mov          SP, fp
    // 0x4c5910: LeaveFrame
    //     0x4c5910: ldp          fp, lr, [SP], #0x10
    // 0x4c5914: ret
    //     0x4c5914: ret          
    // 0x4c5918: r0 = call 0x61fa28
    //     0x4c5918: bl           0x61fa28
    // 0x4c591c: b 0x4c58b8
    //     0x4c591c: b            0x4c58b8
  }
