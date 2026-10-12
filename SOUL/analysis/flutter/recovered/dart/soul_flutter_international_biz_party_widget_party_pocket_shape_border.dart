// ---------------------------------------------------------------------------
// Pseudo-runtime declarations. dae output is pseudocode, but it must also parse
// and analyse as Dart: these names stand in for the machine-level concepts
// (memory access, indirect calls, unwinding) and for the registers the code
// touches, which are not Dart built-ins.
// ---------------------------------------------------------------------------
dynamic mem(dynamic a, [dynamic b, dynamic c, dynamic d]) => null;
dynamic memSet(dynamic a, [dynamic b, dynamic c, dynamic d]) => null;
dynamic memRead2(dynamic a, [dynamic b, dynamic c, dynamic d]) => null;
dynamic gotoIndirect(dynamic a) => null;
dynamic convert(dynamic a) => null;
dynamic mul(dynamic a) => null;
dynamic addCarry(dynamic a, dynamic b) => null;
dynamic subBorrow(dynamic a, dynamic b) => null;
dynamic toIntFloor(dynamic a) => null;
dynamic toIntCeil(dynamic a) => null;
dynamic toIntRound(dynamic a) => null;
dynamic xchg(dynamic a, dynamic b) => null;
dynamic idiv(dynamic a) => null;
dynamic mulHigh(dynamic a) => null;
bool condFlag(String cc) => false;
dynamic clz(dynamic a) => null;
dynamic stxr(dynamic a, [dynamic b, dynamic c, dynamic d]) => null;
dynamic callIndirect(dynamic a) => null;
dynamic gotoLabel(dynamic a) => null;
dynamic addr(dynamic a) => null;
dynamic abort([dynamic a]) => null;
dynamic sqrt(dynamic a) => null;
dynamic abs(dynamic a) => null;
dynamic max(dynamic a, dynamic b) => null;
dynamic min(dynamic a, dynamic b) => null;
dynamic toFloat(dynamic a) => null;
dynamic toFloatUnsigned(dynamic a) => null;
dynamic toInt(dynamic a) => null;
dynamic toIntUnsigned(dynamic a) => null;
dynamic toDouble(dynamic a) => null;
dynamic sxtb(dynamic a) => null;
dynamic sxth(dynamic a) => null;
dynamic sxtw(dynamic a) => null;
dynamic uxtb(dynamic a) => null;
dynamic uxth(dynamic a) => null;
dynamic uxtw(dynamic a) => null;
typedef u8 = int;
typedef u16 = int;
typedef u32 = int;
typedef i8 = int;
typedef i16 = int;
typedef i32 = int;

dynamic AllocationStub_EdgeInsets, AllocationStub_Offset;
dynamic AllocationStub_PartyPocketShapeBorder, AllocationStub_Pointer, AllocationStub_Rect;
dynamic AllocationStub__NativePath, BARRIER, FP, HEAP, NativePath_addArc$Method$FfiNative;
dynamic NativePath_addRect$Method$FfiNative, NativePath_constructor$Method$FfiNative;
dynamic NativePath_setFillType$Method$FfiNative, NullErrorSharedWithFpuRegsStub_0x6201cc;
dynamic NullErrorSharedWithoutFpuRegsStub_0x620180, PP, Rect_ctor_fromCenter, SP;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StateError_throwNew, THR, d0, d1, d2;
dynamic d3, d4, d5, local_0, local_m10, local_m18, local_m20, local_m28, local_m30, local_m38;
dynamic local_m8, w1, w22, x0, x1, x17, x2, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$party$widget$party_pocket_shape_border
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PartyPocketShapeBorder_get_dimensions
// raw disassembly:
//  0x549ca4: stp FP, LR, [SP, #-0x10]!
//  0x549ca8: mov FP, SP
//  0x549cac: bl #0x2e3578
//  0x549cb0: stur xzr, [x0, #7]
//  0x549cb4: stur xzr, [x0, #0xf]
//  0x549cb8: stur xzr, [x0, #0x17]
//  0x549cbc: stur xzr, [x0, #0x1f]
//  0x549cc0: mov SP, FP
//  0x549cc4: ldp FP, LR, [SP], #0x10
//  0x549cc8: ret 
//
dynamic PartyPocketShapeBorder_get_dimensions() {
  dynamic FP;
  dynamic SP;
  // frame: FP, LR, mem(SP, -0x10)! // 0x549ca4
  // frame: FP = SP // 0x549ca8
  AllocationStub_EdgeInsets() /* 0x2e3578 */; // 0x549cac
  memSet(x0, 7, xzr); // 0x549cb0
  memSet(x0, 0xf, xzr); // 0x549cb4
  memSet(x0, 0x17, xzr); // 0x549cb8
  memSet(x0, 0x1f, xzr); // 0x549cbc
  SP = FP; // 0x549cc0
  // frame: FP, LR, mem(SP), 0x10 // 0x549cc4
  return;
}

// PartyPocketShapeBorder_scale
// raw disassembly:
//  0x5f4a14: stp FP, LR, [SP, #-0x10]!
//  0x5f4a18: mov FP, SP
//  0x5f4a1c: bl #0x42c044
//  0x5f4a20: mov SP, FP
//  0x5f4a24: ldp FP, LR, [SP], #0x10
//  0x5f4a28: ret 
//
dynamic PartyPocketShapeBorder_scale() {
  dynamic FP;
  dynamic SP;
  // frame: FP, LR, mem(SP, -0x10)! // 0x5f4a14
  // frame: FP = SP // 0x5f4a18
  AllocationStub_PartyPocketShapeBorder() /* 0x42c044 */; // 0x5f4a1c
  SP = FP; // 0x5f4a20
  // frame: FP, LR, mem(SP), 0x10 // 0x5f4a24
  return;
}

// PartyPocketShapeBorder_getOuterPath
// raw disassembly:
//  0x5f565c: stp FP, LR, [SP, #-0x10]!
//  0x5f5660: mov FP, SP
//  0x5f5664: sub SP, SP, #0x40
//  0x5f5668: stur x2, [FP, #-8]
//  0x5f566c: ldr BARRIER, [THR, #0x38]
//  0x5f5670: cmp SP, BARRIER
//  0x5f5674: b.ls #0x5f586c
//  0x5f5678: bl #0x3511cc
//  0x5f567c: mov x1, x0
//  0x5f5680: stur x0, [FP, #-0x10]
//  0x5f5684: bl #0x3530fc
//  0x5f5688: ldur x0, [FP, #-8]
//  0x5f568c: ldur d0, [x0, #7]
//  0x5f5690: stur d0, [FP, #-0x38]
//  0x5f5694: ldur d1, [x0, #0xf]
//  0x5f5698: stur d1, [FP, #-0x30]
//  0x5f569c: ldur d2, [x0, #0x17]
//  0x5f56a0: stur d2, [FP, #-0x28]
//  0x5f56a4: ldur d3, [x0, #0x1f]
//  0x5f56a8: ldur x0, [FP, #-0x10]
//  0x5f56ac: stur d3, [FP, #-0x20]
//  0x5f56b0: ldur w1, [x0, #7]
//  0x5f56b4: add x1, x1, HEAP, lsl #32
//  0x5f56b8: cmp w1, w22
//  0x5f56bc: b.eq #0x5f5874
//  0x5f56c0: ldur x2, [x1, #7]
//  0x5f56c4: ldr x1, [x2]
//  0x5f56c8: stur x1, [FP, #-0x18]
//  0x5f56cc: cbnz x1, #0x5f56dc
//  0x5f56d0: ldr BARRIER, [PP, #0x168]
//  0x5f56d4: str BARRIER, [SP]
//  0x5f56d8: bl #0x27865c
//  0x5f56dc: ldur x0, [FP, #-0x10]
//  0x5f56e0: ldur d0, [FP, #-0x38]
//  0x5f56e4: ldur d2, [FP, #-0x28]
//  0x5f56e8: ldur x2, [FP, #-0x18]
//  0x5f56ec: stur x2, [FP, #-0x18]
//  0x5f56f0: ldr x1, [PP, #0x170]
//  0x5f56f4: bl #0x2a25ec
//  0x5f56f8: mov x1, x0
//  0x5f56fc: ldur x0, [FP, #-0x18]
//  0x5f5700: stur x0, [x1, #7]
//  0x5f5704: ldur d0, [FP, #-0x38]
//  0x5f5708: ldur d1, [FP, #-0x30]
//  0x5f570c: ldur d2, [FP, #-0x28]
//  0x5f5710: ldur d3, [FP, #-0x20]
//  0x5f5714: bl #0x356200
//  0x5f5718: ldur d0, [FP, #-0x38]
//  0x5f571c: ldur d1, [FP, #-0x28]
//  0x5f5720: fsub d2, d1, d0
//  0x5f5724: fmov d0, #0.50000000
//  0x5f5728: fmul d1, d2, d0
//  0x5f572c: stur d1, [FP, #-0x20]
//  0x5f5730: bl #0x2a7704
//  0x5f5734: ldur d0, [FP, #-0x20]
//  0x5f5738: stur x0, [FP, #-8]
//  0x5f573c: stur d0, [x0, #7]
//  0x5f5740: add x17, PP, #0x17, lsl #12
//  0x5f5744: ldr d0, [x17, #0xbe8]
//  0x5f5748: stur d0, [x0, #0xf]
//  0x5f574c: bl #0x2984c0
//  0x5f5750: mov x1, x0
//  0x5f5754: ldur x2, [FP, #-8]
//  0x5f5758: add x17, PP, #0x17, lsl #12
//  0x5f575c: ldr d0, [x17, #0xbf0]
//  0x5f5760: add x17, PP, #0x17, lsl #12
//  0x5f5764: ldr d1, [x17, #0xbf0]
//  0x5f5768: stur x0, [FP, #-8]
//  0x5f576c: bl #0x41612c
//  0x5f5770: ldur x0, [FP, #-8]
//  0x5f5774: ldur d0, [x0, #7]
//  0x5f5778: stur d0, [FP, #-0x38]
//  0x5f577c: ldur d1, [x0, #0xf]
//  0x5f5780: stur d1, [FP, #-0x30]
//  0x5f5784: ldur d2, [x0, #0x17]
//  0x5f5788: stur d2, [FP, #-0x28]
//  0x5f578c: ldur d3, [x0, #0x1f]
//  0x5f5790: ldur x0, [FP, #-0x10]
//  0x5f5794: stur d3, [FP, #-0x20]
//  0x5f5798: ldur w1, [x0, #7]
//  0x5f579c: add x1, x1, HEAP, lsl #32
//  0x5f57a0: cmp w1, w22
//  0x5f57a4: b.eq #0x5f5878
//  0x5f57a8: ldur x2, [x1, #7]
//  0x5f57ac: ldr x1, [x2]
//  0x5f57b0: stur x1, [FP, #-0x18]
//  0x5f57b4: cbnz x1, #0x5f57c4
//  0x5f57b8: ldr BARRIER, [PP, #0x168]
//  0x5f57bc: str BARRIER, [SP]
//  0x5f57c0: bl #0x27865c
//  0x5f57c4: ldur x0, [FP, #-0x10]
//  0x5f57c8: ldur x2, [FP, #-0x18]
//  0x5f57cc: stur x2, [FP, #-0x18]
//  0x5f57d0: ldr x1, [PP, #0x170]
//  0x5f57d4: bl #0x2a25ec
//  0x5f57d8: mov x1, x0
//  0x5f57dc: ldur x0, [FP, #-0x18]
//  0x5f57e0: stur x0, [x1, #7]
//  0x5f57e4: ldur d0, [FP, #-0x38]
//  0x5f57e8: ldur d1, [FP, #-0x30]
//  0x5f57ec: ldur d2, [FP, #-0x28]
//  0x5f57f0: ldur d3, [FP, #-0x20]
//  0x5f57f4: add x17, PP, #0x17, lsl #12
//  0x5f57f8: ldr d4, [x17, #0xbf8]
//  0x5f57fc: add x17, PP, #0x16, lsl #12
//  0x5f5800: ldr d5, [x17, #0x78]
//  0x5f5804: bl #0x5f5880
//  0x5f5808: ldur x0, [FP, #-0x10]
//  0x5f580c: ldur w1, [x0, #7]
//  0x5f5810: add x1, x1, HEAP, lsl #32
//  0x5f5814: cmp w1, w22
//  0x5f5818: b.eq #0x5f587c
//  0x5f581c: ldur x2, [x1, #7]
//  0x5f5820: ldr x1, [x2]
//  0x5f5824: stur x1, [FP, #-0x18]
//  0x5f5828: cbnz x1, #0x5f5838
//  0x5f582c: ldr BARRIER, [PP, #0x168]
//  0x5f5830: str BARRIER, [SP]
//  0x5f5834: bl #0x27865c
//  0x5f5838: ldur x0, [FP, #-0x18]
//  0x5f583c: stur x0, [FP, #-0x18]
//  0x5f5840: ldr x1, [PP, #0x170]
//  0x5f5844: bl #0x2a25ec
//  0x5f5848: mov x1, x0
//  0x5f584c: ldur x0, [FP, #-0x18]
//  0x5f5850: stur x0, [x1, #7]
//  0x5f5854: mov x2, #1
//  0x5f5858: bl #0x3562b4
//  0x5f585c: ldur x0, [FP, #-0x10]
//  0x5f5860: mov SP, FP
//  0x5f5864: ldp FP, LR, [SP], #0x10
//  0x5f5868: ret 
//  0x5f586c: bl #0x61fa28
//  0x5f5870: b #0x5f5678
//  0x5f5874: bl #0x6201cc
//  0x5f5878: bl #0x6201cc
//  0x5f587c: bl #0x620180
//
dynamic PartyPocketShapeBorder_getOuterPath() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic d0;
  dynamic d1;
  dynamic d2;
  dynamic d3;
  dynamic d4;
  dynamic d5;
  dynamic w1;
  dynamic x0;
  dynamic x1;
  dynamic x17;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x5f565c
  // frame: FP = SP // 0x5f5660
  // frame: SP = SP - 0x40 // 0x5f5664
  local_m8 = x2; // 0x5f5668
  BARRIER = mem(THR, 0x38); // 0x5f566c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x5f586c
  }
  AllocationStub__NativePath() /* 0x3511cc */; // 0x5f5678
  x1 = x0; // 0x5f567c
  local_m10 = x0; // 0x5f5680
  NativePath_constructor$Method$FfiNative() /* 0x3530fc */; // 0x5f5684
  d0 = mem((local_m8), 7); // 0x5f568c
  x0 = local_m8; // 0x5f5688
  local_m38 = d0; // 0x5f5690
  d1 = mem(x0, 0xf); // 0x5f5694
  local_m30 = d1; // 0x5f5698
  d2 = mem(x0, 0x17); // 0x5f569c
  local_m28 = d2; // 0x5f56a0
  d3 = mem(x0, 0x1f); // 0x5f56a4
  x0 = local_m10; // 0x5f56a8
  local_m20 = d3; // 0x5f56ac
  w1 = mem(x0, 7); // 0x5f56b0
  x1 = ((mem(x0, 7)) & 0xffffffff) + (HEAP << 32); // 0x5f56b4
  if (w1 == w22) {
    NullErrorSharedWithFpuRegsStub_0x6201cc() /* 0x6201cc */; // 0x5f5874
  } else {
    x1 = mem((mem(x1, 7))); // 0x5f56c4
    x2 = mem(x1, 7); // 0x5f56c0
    local_m18 = x1; // 0x5f56c8
    if (x1 != 0) {
    } else {
      BARRIER = "A Dart object attempted to access a native peer, but the nat..." /* pp+0x168 */; // 0x5f56d0
      local_0 = BARRIER; // 0x5f56d4
      StateError_throwNew() /* 0x27865c */; // 0x5f56d8
    }
    d0 = local_m38; // 0x5f56e0
    d2 = local_m28; // 0x5f56e4
    x0 = local_m10; // 0x5f56dc
    x2 = local_m18; // 0x5f56e8
    local_m18 = x2; // 0x5f56ec
    x1 = mem(PP, 0x170) /* TypeArguments */; // 0x5f56f0
    AllocationStub_Pointer() /* 0x2a25ec */; // 0x5f56f4
    x0 = local_m18; // 0x5f56fc
    x1 = x0; // 0x5f56f8
    memSet(x1, 7, x0); // 0x5f5700
    d0 = local_m38; // 0x5f5704
    d1 = local_m30; // 0x5f5708
    d2 = local_m28; // 0x5f570c
    d3 = local_m20; // 0x5f5710
    NativePath_addRect$Method$FfiNative() /* 0x356200 */; // 0x5f5714
    d0 = 0.50000000 /* bits */; // 0x5f5724
    d1 = ((((local_m28) - (local_m38)) /* float */) * (0.50000000 /* bits */)) /* float */; // 0x5f5728
    d2 = ((local_m28) - (local_m38)) /* float */; // 0x5f5720
    local_m20 = d1; // 0x5f572c
    AllocationStub_Offset() /* 0x2a7704 */; // 0x5f5730
    d0 = local_m20; // 0x5f5734
    local_m8 = x0; // 0x5f5738
    memSet(x0, 7, d0); // 0x5f573c
    d0 = -4568224522804658176; // 0x5f5744
    x17 = PP + 0x17000; // 0x5f5740
    memSet(x0, 0xf, d0); // 0x5f5748
    AllocationStub_Rect() /* 0x2984c0 */; // 0x5f574c
    d0 = 4659695094142599168; // 0x5f575c
    d1 = 4659695094142599168; // 0x5f5764
    x1 = x0; // 0x5f5750
    x17 = PP + 0x17000; // 0x5f5760
    x2 = local_m8; // 0x5f5754
    local_m8 = x0; // 0x5f5768
    Rect_ctor_fromCenter() /* 0x41612c */; // 0x5f576c
    d0 = mem((local_m8), 7); // 0x5f5774
    x0 = local_m8; // 0x5f5770
    local_m38 = d0; // 0x5f5778
    d1 = mem(x0, 0xf); // 0x5f577c
    local_m30 = d1; // 0x5f5780
    d2 = mem(x0, 0x17); // 0x5f5784
    local_m28 = d2; // 0x5f5788
    d3 = mem(x0, 0x1f); // 0x5f578c
    x0 = local_m10; // 0x5f5790
    local_m20 = d3; // 0x5f5794
    w1 = mem(x0, 7); // 0x5f5798
    x1 = ((mem(x0, 7)) & 0xffffffff) + (HEAP << 32); // 0x5f579c
    if (w1 == w22) {
      NullErrorSharedWithFpuRegsStub_0x6201cc() /* 0x6201cc */; // 0x5f5878
    } else {
      x1 = mem((mem(x1, 7))); // 0x5f57ac
      x2 = mem(x1, 7); // 0x5f57a8
      local_m18 = x1; // 0x5f57b0
      if (x1 != 0) {
      } else {
        BARRIER = "A Dart object attempted to access a native peer, but the nat..." /* pp+0x168 */; // 0x5f57b8
        local_0 = BARRIER; // 0x5f57bc
        StateError_throwNew() /* 0x27865c */; // 0x5f57c0
      }
      x0 = local_m10; // 0x5f57c4
      x2 = local_m18; // 0x5f57c8
      local_m18 = x2; // 0x5f57cc
      x1 = mem(PP, 0x170) /* TypeArguments */; // 0x5f57d0
      AllocationStub_Pointer() /* 0x2a25ec */; // 0x5f57d4
      x0 = local_m18; // 0x5f57dc
      x1 = x0; // 0x5f57d8
      memSet(x1, 7, x0); // 0x5f57e0
      d0 = local_m38; // 0x5f57e4
      d1 = local_m30; // 0x5f57e8
      d2 = local_m28; // 0x5f57ec
      d3 = local_m20; // 0x5f57f0
      d4 = 4605249457297304856; // 0x5f57f8
      d5 = 4609753056924675352; // 0x5f5800
      x17 = PP + 0x16000; // 0x5f57fc
      NativePath_addArc$Method$FfiNative() /* 0x5f5880 */; // 0x5f5804
      w1 = mem((local_m10), 7); // 0x5f580c
      x0 = local_m10; // 0x5f5808
      x1 = ((mem((local_m10), 7)) & 0xffffffff) + (HEAP << 32); // 0x5f5810
      if (w1 == w22) {
        // duplicated branch body (target 0x5f587c terminates; the same code is emitted below)
        NullErrorSharedWithoutFpuRegsStub_0x620180() /* 0x620180 */; // 0x5f587c
      }
      x1 = mem((mem(x1, 7))); // 0x5f5820
      x2 = mem(x1, 7); // 0x5f581c
      local_m18 = x1; // 0x5f5824
      if (x1 != 0) {
      } else {
        BARRIER = "A Dart object attempted to access a native peer, but the nat..." /* pp+0x168 */; // 0x5f582c
        local_0 = BARRIER; // 0x5f5830
        StateError_throwNew() /* 0x27865c */; // 0x5f5834
      }
      x0 = local_m18; // 0x5f5838
      local_m18 = x0; // 0x5f583c
      x1 = mem(PP, 0x170) /* TypeArguments */; // 0x5f5840
      AllocationStub_Pointer() /* 0x2a25ec */; // 0x5f5844
      x0 = local_m18; // 0x5f584c
      x1 = x0; // 0x5f5848
      memSet(x1, 7, x0); // 0x5f5850
      x2 = 1; // 0x5f5854
      NativePath_setFillType$Method$FfiNative() /* 0x3562b4 */; // 0x5f5858
      SP = FP; // 0x5f5860
      x0 = local_m10; // 0x5f585c
      // frame: FP, LR, mem(SP), 0x10 // 0x5f5864
      return;
    }
    NullErrorSharedWithoutFpuRegsStub_0x620180() /* 0x620180 */; // 0x5f587c
  }
}
