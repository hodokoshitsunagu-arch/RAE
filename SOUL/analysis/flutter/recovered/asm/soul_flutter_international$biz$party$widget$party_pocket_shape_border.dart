// lib: , url: soul_flutter_international$biz$party$widget$party_pocket_shape_border


  get_dimensions() {
    // ** addr: 0x549ca4, size: 0x28
    // 0x549ca4: EnterFrame
    //     0x549ca4: stp          fp, lr, [SP, #-0x10]!
    //     0x549ca8: mov          fp, SP
    // 0x549cac: r0 = call 0x2e3578
    //     0x549cac: bl           0x2e3578
    // 0x549cb0: StoreField: r0->field_7 = xzr
    //     0x549cb0: stur         xzr, [r0, #7]
    // 0x549cb4: StoreField: r0->field_f = xzr
    //     0x549cb4: stur         xzr, [r0, #0xf]
    // 0x549cb8: ArrayStore: r0[0] = xzr  ; List_8
    //     0x549cb8: stur         xzr, [r0, #0x17]
    // 0x549cbc: StoreField: r0->field_1f = xzr
    //     0x549cbc: stur         xzr, [r0, #0x1f]
    // 0x549cc0: SP = fp
    //     0x549cc0: mov          SP, fp
    // 0x549cc4: LeaveFrame
    //     0x549cc4: ldp          fp, lr, [SP], #0x10
    // 0x549cc8: ret
    //     0x549cc8: ret          
  }

  scale() {
    // ** addr: 0x5f4a14, size: 0x18
    // 0x5f4a14: EnterFrame
    //     0x5f4a14: stp          fp, lr, [SP, #-0x10]!
    //     0x5f4a18: mov          fp, SP
    // 0x5f4a1c: r0 = call 0x42c044
    //     0x5f4a1c: bl           0x42c044
    // 0x5f4a20: SP = fp
    //     0x5f4a20: mov          SP, fp
    // 0x5f4a24: LeaveFrame
    //     0x5f4a24: ldp          fp, lr, [SP], #0x10
    // 0x5f4a28: ret
    //     0x5f4a28: ret          
  }

  getOuterPath() {
    // ** addr: 0x5f565c, size: 0x224
    // 0x5f565c: EnterFrame
    //     0x5f565c: stp          fp, lr, [SP, #-0x10]!
    //     0x5f5660: mov          fp, SP
    // 0x5f5664: AllocStack(0x40)
    //     0x5f5664: sub          SP, SP, #0x40
    //     0x5f5668: stur         r2, [fp, #-8]
    // 0x5f566c: CheckStackOverflow
    //     0x5f566c: ldr          BARRIER, [THR, #0x38]
    //     0x5f5670: cmp          SP, BARRIER
    //     0x5f5674: b.ls         0x5f586c
    // 0x5f5678: r0 = call 0x3511cc
    //     0x5f5678: bl           0x3511cc
    // 0x5f567c: r1 = r0
    //     0x5f567c: mov          r1, r0
    //     0x5f5680: stur         r0, [fp, #-0x10]
    // 0x5f5684: r0 = dart_ui__NativePath::__constructor$Method$FfiNative()
    //     0x5f5684: bl           0x3530fc
    //     0x5f5688: ldur         r0, [fp, #-8]
    // 0x5f568c: LoadField: d0 = r0->field_7
    //     0x5f568c: ldur         d0, [r0, #7]
    //     0x5f5690: stur         d0, [fp, #-0x38]
    // 0x5f5694: LoadField: d1 = r0->field_f
    //     0x5f5694: ldur         d1, [r0, #0xf]
    //     0x5f5698: stur         d1, [fp, #-0x30]
    // 0x5f569c: ArrayLoad: d2 = r0[0]  ; List_8
    //     0x5f569c: ldur         d2, [r0, #0x17]
    //     0x5f56a0: stur         d2, [fp, #-0x28]
    // 0x5f56a4: LoadField: d3 = r0->field_1f
    //     0x5f56a4: ldur         d3, [r0, #0x1f]
    //     0x5f56a8: ldur         r0, [fp, #-0x10]
    //     0x5f56ac: stur         d3, [fp, #-0x20]
    // 0x5f56b0: LoadField: r1 = r0->field_7
    //     0x5f56b0: ldur         r1, [r0, #7]
    //     0x5f56b4: add          r1, r1, HEAP, lsl #32
    //     0x5f56b8: cmp          r1, r22
    // 0x5f56bc: b.eq 0x5f5874
    //     0x5f56bc: b.eq         0x5f5874
    // 0x5f56c0: LoadField: r2 = r1->field_7
    //     0x5f56c0: ldur         r2, [r1, #7]
    //     0x5f56c4: ldr          r1, [r2]
    //     0x5f56c8: stur         r1, [fp, #-0x18]
    //     0x5f56cc: cbnz         r1, 0x5f56dc
    // 0x5f56d0: BARRIER = pp[0x168]
    //     0x5f56d0: ldr          BARRIER, [PP, #0x168]
    //     0x5f56d4: str          BARRIER, [SP]
    // 0x5f56d8: r0 = dart_core_StateError::_throwNew()
    //     0x5f56d8: bl           0x27865c
    //     0x5f56dc: ldur         r0, [fp, #-0x10]
    //     0x5f56e0: ldur         d0, [fp, #-0x38]
    //     0x5f56e4: ldur         d2, [fp, #-0x28]
    //     0x5f56e8: ldur         r2, [fp, #-0x18]
    //     0x5f56ec: stur         r2, [fp, #-0x18]
    // 0x5f56f0: r1 = pp[0x170]
    //     0x5f56f0: ldr          r1, [PP, #0x170]
    // 0x5f56f4: r0 = call 0x2a25ec
    //     0x5f56f4: bl           0x2a25ec
    // 0x5f56f8: r1 = r0
    //     0x5f56f8: mov          r1, r0
    //     0x5f56fc: ldur         r0, [fp, #-0x18]
    // 0x5f5700: StoreField: r1->field_7 = r0
    //     0x5f5700: stur         r0, [r1, #7]
    //     0x5f5704: ldur         d0, [fp, #-0x38]
    //     0x5f5708: ldur         d1, [fp, #-0x30]
    //     0x5f570c: ldur         d2, [fp, #-0x28]
    //     0x5f5710: ldur         d3, [fp, #-0x20]
    // 0x5f5714: r0 = dart_ui__NativePath::__addRect$Method$FfiNative()
    //     0x5f5714: bl           0x356200
    //     0x5f5718: ldur         d0, [fp, #-0x38]
    //     0x5f571c: ldur         d1, [fp, #-0x28]
    //     0x5f5720: fsub         d2, d1, d0
    //     0x5f5724: fmov         d0, #0.50000000
    //     0x5f5728: fmul         d1, d2, d0
    //     0x5f572c: stur         d1, [fp, #-0x20]
    // 0x5f5730: r0 = call 0x2a7704
    //     0x5f5730: bl           0x2a7704
    //     0x5f5734: ldur         d0, [fp, #-0x20]
    //     0x5f5738: stur         r0, [fp, #-8]
    // 0x5f573c: StoreField: r0->field_7 = d0
    //     0x5f573c: stur         d0, [r0, #7]
    // 0x5f5740: d0 = pp[0xbff]
    //     0x5f5740: add          r17, PP, #0x17, lsl #12
    //     0x5f5744: ldr          d0, [r17, #0xbe8]
    // 0x5f5748: StoreField: r0->field_f = d0
    //     0x5f5748: stur         d0, [r0, #0xf]
    // 0x5f574c: r0 = call 0x2984c0
    //     0x5f574c: bl           0x2984c0
    // 0x5f5750: r1 = r0
    //     0x5f5750: mov          r1, r0
    //     0x5f5754: ldur         r2, [fp, #-8]
    // 0x5f5758: d0 = pp[0xc07]
    //     0x5f5758: add          r17, PP, #0x17, lsl #12
    //     0x5f575c: ldr          d0, [r17, #0xbf0]
    // 0x5f5760: d1 = pp[0xc07]
    //     0x5f5760: add          r17, PP, #0x17, lsl #12
    //     0x5f5764: ldr          d1, [r17, #0xbf0]
    //     0x5f5768: stur         r0, [fp, #-8]
    // 0x5f576c: r0 = dart_ui_Rect::ctor_fromCenter()
    //     0x5f576c: bl           0x41612c
    //     0x5f5770: ldur         r0, [fp, #-8]
    // 0x5f5774: LoadField: d0 = r0->field_7
    //     0x5f5774: ldur         d0, [r0, #7]
    //     0x5f5778: stur         d0, [fp, #-0x38]
    // 0x5f577c: LoadField: d1 = r0->field_f
    //     0x5f577c: ldur         d1, [r0, #0xf]
    //     0x5f5780: stur         d1, [fp, #-0x30]
    // 0x5f5784: ArrayLoad: d2 = r0[0]  ; List_8
    //     0x5f5784: ldur         d2, [r0, #0x17]
    //     0x5f5788: stur         d2, [fp, #-0x28]
    // 0x5f578c: LoadField: d3 = r0->field_1f
    //     0x5f578c: ldur         d3, [r0, #0x1f]
    //     0x5f5790: ldur         r0, [fp, #-0x10]
    //     0x5f5794: stur         d3, [fp, #-0x20]
    // 0x5f5798: LoadField: r1 = r0->field_7
    //     0x5f5798: ldur         r1, [r0, #7]
    //     0x5f579c: add          r1, r1, HEAP, lsl #32
    //     0x5f57a0: cmp          r1, r22
    // 0x5f57a4: b.eq 0x5f5878
    //     0x5f57a4: b.eq         0x5f5878
    // 0x5f57a8: LoadField: r2 = r1->field_7
    //     0x5f57a8: ldur         r2, [r1, #7]
    //     0x5f57ac: ldr          r1, [r2]
    //     0x5f57b0: stur         r1, [fp, #-0x18]
    //     0x5f57b4: cbnz         r1, 0x5f57c4
    // 0x5f57b8: BARRIER = pp[0x168]
    //     0x5f57b8: ldr          BARRIER, [PP, #0x168]
    //     0x5f57bc: str          BARRIER, [SP]
    // 0x5f57c0: r0 = dart_core_StateError::_throwNew()
    //     0x5f57c0: bl           0x27865c
    //     0x5f57c4: ldur         r0, [fp, #-0x10]
    //     0x5f57c8: ldur         r2, [fp, #-0x18]
    //     0x5f57cc: stur         r2, [fp, #-0x18]
    // 0x5f57d0: r1 = pp[0x170]
    //     0x5f57d0: ldr          r1, [PP, #0x170]
    // 0x5f57d4: r0 = call 0x2a25ec
    //     0x5f57d4: bl           0x2a25ec
    // 0x5f57d8: r1 = r0
    //     0x5f57d8: mov          r1, r0
    //     0x5f57dc: ldur         r0, [fp, #-0x18]
    // 0x5f57e0: StoreField: r1->field_7 = r0
    //     0x5f57e0: stur         r0, [r1, #7]
    //     0x5f57e4: ldur         d0, [fp, #-0x38]
    //     0x5f57e8: ldur         d1, [fp, #-0x30]
    //     0x5f57ec: ldur         d2, [fp, #-0x28]
    //     0x5f57f0: ldur         d3, [fp, #-0x20]
    // 0x5f57f4: d4 = pp[0xc0f]
    //     0x5f57f4: add          r17, PP, #0x17, lsl #12
    //     0x5f57f8: ldr          d4, [r17, #0xbf8]
    // 0x5f57fc: d5 = pp[0x8e]
    //     0x5f57fc: add          r17, PP, #0x16, lsl #12
    //     0x5f5800: ldr          d5, [r17, #0x78]
    // 0x5f5804: r0 = dart_ui__NativePath::__addArc$Method$FfiNative()
    //     0x5f5804: bl           0x5f5880
    //     0x5f5808: ldur         r0, [fp, #-0x10]
    // 0x5f580c: LoadField: r1 = r0->field_7
    //     0x5f580c: ldur         r1, [r0, #7]
    //     0x5f5810: add          r1, r1, HEAP, lsl #32
    //     0x5f5814: cmp          r1, r22
    // 0x5f5818: b.eq 0x5f587c
    //     0x5f5818: b.eq         0x5f587c
    // 0x5f581c: LoadField: r2 = r1->field_7
    //     0x5f581c: ldur         r2, [r1, #7]
    //     0x5f5820: ldr          r1, [r2]
    //     0x5f5824: stur         r1, [fp, #-0x18]
    //     0x5f5828: cbnz         r1, 0x5f5838
    // 0x5f582c: BARRIER = pp[0x168]
    //     0x5f582c: ldr          BARRIER, [PP, #0x168]
    //     0x5f5830: str          BARRIER, [SP]
    // 0x5f5834: r0 = dart_core_StateError::_throwNew()
    //     0x5f5834: bl           0x27865c
    //     0x5f5838: ldur         r0, [fp, #-0x18]
    //     0x5f583c: stur         r0, [fp, #-0x18]
    // 0x5f5840: r1 = pp[0x170]
    //     0x5f5840: ldr          r1, [PP, #0x170]
    // 0x5f5844: r0 = call 0x2a25ec
    //     0x5f5844: bl           0x2a25ec
    // 0x5f5848: r1 = r0
    //     0x5f5848: mov          r1, r0
    //     0x5f584c: ldur         r0, [fp, #-0x18]
    // 0x5f5850: StoreField: r1->field_7 = r0
    //     0x5f5850: stur         r0, [r1, #7]
    //     0x5f5854: mov          r2, #1
    // 0x5f5858: r0 = dart_ui__NativePath::__setFillType$Method$FfiNative()
    //     0x5f5858: bl           0x3562b4
    //     0x5f585c: ldur         r0, [fp, #-0x10]
    // 0x5f5860: SP = fp
    //     0x5f5860: mov          SP, fp
    // 0x5f5864: LeaveFrame
    //     0x5f5864: ldp          fp, lr, [SP], #0x10
    // 0x5f5868: ret
    //     0x5f5868: ret          
    // 0x5f586c: r0 = call 0x61fa28
    //     0x5f586c: bl           0x61fa28
    // 0x5f5870: b 0x5f5678
    //     0x5f5870: b            0x5f5678
    // 0x5f5874: r0 = call 0x6201cc
    //     0x5f5874: bl           0x6201cc
    // 0x5f5878: r0 = call 0x6201cc
    //     0x5f5878: bl           0x6201cc
    // 0x5f587c: r0 = call 0x620180
    //     0x5f587c: bl           0x620180
  }
