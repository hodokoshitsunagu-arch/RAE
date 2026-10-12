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

dynamic AllocationStub__Closure, BARRIER, EventTrack_eventClick, FP, GrowableList_addAll;
dynamic GrowableList_clear, GrowableList_factory_ctor, HEAP, LR;
dynamic LateInitializationErrorSharedWithoutFpuRegsStub_0x620258, Map_factory_ctor_fromLiteral;
dynamic NULL, NativeDialog_toCoinDialog, NativeDialog_toast, PP;
dynamic PagePKGameBetTabRecordState_anon_closure, PartyApiService_getPartyRedPocket;
dynamic PartyApiService_sendRedPocket, RangeErrorSharedWithoutFpuRegsStub_0x61fe70, SP;
dynamic SafeChangeNotifier_requestTotalCoins, SafeChangeNotifier_safeNotify;
dynamic StackOverflowSharedWithoutFpuRegsStub_0x61fa28, StringBase_interpolateSingle, THR;
dynamic WriteBarrierStub_x1, WriteBarrierStub_x3, getString, local_0, local_10, local_18;
dynamic local_m10, local_m18, local_m20, local_m8, sub_0x61d99c, sub_0x61db00, sub_0x61e890;
dynamic sub_0x61f920, w0, w1, w16, w17, w2, w3, w4, w5, w8, x0, x1, x10, x16, x17, x2, x25, x3;
dynamic x4, x5, x6, x7, x8, x9, xzr;

// dae decompiler output -- pseudocode that parses as Dart
// library: soul_flutter_international$biz$party$notifier$notifier_party_send_pocket
// control flow is structured (if/else + loops) where possible; functions whose
// control flow could not be structured keep a NOTE header and emit gotoLabel().

// PartySendPocketNotifier_sendRedPocket
// raw disassembly:
//  0x429c0c: stp FP, LR, [SP, #-0x10]!
//  0x429c10: mov FP, SP
//  0x429c14: sub SP, SP, #0x20
//  0x429c18: mov x3, x2
//  0x429c1c: stur x2, [FP, #-0x18]
//  0x429c20: ldr BARRIER, [THR, #0x38]
//  0x429c24: cmp SP, BARRIER
//  0x429c28: b.ls #0x429db8
//  0x429c2c: ldur w0, [x3, #7]
//  0x429c30: cbz w0, #0x429c3c
//  0x429c34: ldur x2, [x1, #0x23]
//  0x429c38: tbz x2, #0x3f, #0x429c4c
//  0x429c3c: mov x0, NULL
//  0x429c40: mov SP, FP
//  0x429c44: ldp FP, LR, [SP], #0x10
//  0x429c48: ret 
//  0x429c4c: ldur x4, [x1, #0x2b]
//  0x429c50: tbnz x4, #0x3f, #0x429c6c
//  0x429c54: ldur w5, [x1, #0x3b]
//  0x429c58: add x5, x5, HEAP, lsl #32
//  0x429c5c: ldur w0, [x5, #0xb]
//  0x429c60: sbfx x6, x0, #1, #0x1f
//  0x429c64: cmp x4, x6
//  0x429c68: b.lt #0x429c7c
//  0x429c6c: mov x0, NULL
//  0x429c70: mov SP, FP
//  0x429c74: ldp FP, LR, [SP], #0x10
//  0x429c78: ret 
//  0x429c7c: ldur x7, [x1, #0x33]
//  0x429c80: tbnz x7, #0x3f, #0x429c9c
//  0x429c84: ldur w8, [x1, #0x3f]
//  0x429c88: add x8, x8, HEAP, lsl #32
//  0x429c8c: ldur w0, [x8, #0xb]
//  0x429c90: sbfx x10, x0, #1, #0x1f
//  0x429c94: cmp x7, x10
//  0x429c98: b.lt #0x429cac
//  0x429c9c: mov x0, NULL
//  0x429ca0: mov SP, FP
//  0x429ca4: ldp FP, LR, [SP], #0x10
//  0x429ca8: ret 
//  0x429cac: mov x0, x6
//  0x429cb0: mov x1, x4
//  0x429cb4: cmp x1, x0
//  0x429cb8: b.hs #0x429dc0
//  0x429cbc: ldur w0, [x5, #0xf]
//  0x429cc0: add x0, x0, HEAP, lsl #32
//  0x429cc4: add BARRIER, x0, x4, lsl #2
//  0x429cc8: ldur w1, [BARRIER, #0xf]
//  0x429ccc: add x1, x1, HEAP, lsl #32
//  0x429cd0: ldur w4, [x1, #7]
//  0x429cd4: add x4, x4, HEAP, lsl #32
//  0x429cd8: ldr BARRIER, [PP, #0x40]
//  0x429cdc: cmp w4, w16
//  0x429ce0: b.eq #0x429dc4
//  0x429ce4: mov x0, x10
//  0x429ce8: mov x1, x7
//  0x429cec: cmp x1, x0
//  0x429cf0: b.hs #0x429dd0
//  0x429cf4: ldur w0, [x8, #0xf]
//  0x429cf8: add x0, x0, HEAP, lsl #32
//  0x429cfc: add BARRIER, x0, x7, lsl #2
//  0x429d00: ldur w1, [BARRIER, #0xf]
//  0x429d04: add x1, x1, HEAP, lsl #32
//  0x429d08: ldur w0, [x1, #7]
//  0x429d0c: add x0, x0, HEAP, lsl #32
//  0x429d10: ldr BARRIER, [PP, #0x40]
//  0x429d14: cmp w0, w16
//  0x429d18: b.eq #0x429dd4
//  0x429d1c: sbfx x5, x4, #1, #0x1f
//  0x429d20: tbz w4, #0, #0x429d28
//  0x429d24: ldur x5, [x4, #7]
//  0x429d28: stur x5, [FP, #-0x10]
//  0x429d2c: cmp x2, x5
//  0x429d30: b.lt #0x429d88
//  0x429d34: sbfx x4, x0, #1, #0x1f
//  0x429d38: tbz w0, #0, #0x429d40
//  0x429d3c: ldur x4, [x0, #7]
//  0x429d40: stur x4, [FP, #-8]
//  0x429d44: add x1, PP, #0x10, lsl #12
//  0x429d48: ldr x1, [x1, #0xb50]
//  0x429d4c: mov x2, NULL
//  0x429d50: bl #0x61ec54
//  0x429d54: add x1, PP, #0x10, lsl #12
//  0x429d58: ldr x1, [x1, #0xb58]
//  0x429d5c: mov x2, NULL
//  0x429d60: stur x0, [FP, #-0x20]
//  0x429d64: bl #0x61ec54
//  0x429d68: ldur x1, [FP, #-0x18]
//  0x429d6c: ldur x2, [FP, #-0x10]
//  0x429d70: ldur x3, [FP, #-8]
//  0x429d74: ldur x5, [FP, #-0x20]
//  0x429d78: mov x6, x0
//  0x429d7c: bl #0x429de0
//  0x429d80: bl #0x3a8d00
//  0x429d84: b #0x429da8
//  0x429d88: add x1, PP, #0xc, lsl #12
//  0x429d8c: ldr x1, [x1, #0x908]
//  0x429d90: ldr x4, [PP, #0x4c0]
//  0x429d94: bl #0x3a1dcc
//  0x429d98: mov x1, x0
//  0x429d9c: ldr x4, [PP, #0x4c0]
//  0x429da0: bl #0x3ac64c
//  0x429da4: bl #0x41c9dc
//  0x429da8: mov x0, NULL
//  0x429dac: mov SP, FP
//  0x429db0: ldp FP, LR, [SP], #0x10
//  0x429db4: ret 
//  0x429db8: bl #0x61fa28
//  0x429dbc: b #0x429c2c
//  0x429dc0: bl #0x61fe70
//  0x429dc4: add x9, PP, #0x10, lsl #12
//  0x429dc8: ldr x9, [x9, #0xb60]
//  0x429dcc: bl #0x620258
//  0x429dd0: bl #0x61fe70
//  0x429dd4: add x9, PP, #0x10, lsl #12
//  0x429dd8: ldr x9, [x9, #0xb68]
//  0x429ddc: bl #0x620258
//
dynamic PartySendPocketNotifier_sendRedPocket() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w4;
  dynamic w5;
  dynamic w8;
  dynamic x0;
  dynamic x1;
  dynamic x10;
  dynamic x2;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x6;
  dynamic x7;
  dynamic x8;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x429c0c
  // frame: FP = SP // 0x429c10
  // frame: SP = SP - 0x20 // 0x429c14
  x3 = x2; // 0x429c18
  local_m18 = x2; // 0x429c1c
  BARRIER = mem(THR, 0x38); // 0x429c20
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x429db8
  }
  x0 = w0 & 0xffffffff; // 0x429c2c
  if (w0 == 0) {
  } else {
    x2 = mem(x1, 0x23); // 0x429c34
    if (x2 & (1 << 0x3f) != 0) {
      // duplicated branch body (target 0x429c3c terminates; the same code is emitted below)
      SP = FP; // 0x429c40
      x0 = NULL; // 0x429c3c
      // frame: FP, LR, mem(SP), 0x10 // 0x429c44
      return;
    }
    x4 = mem(x1, 0x2b); // 0x429c4c
    if (x4 & (1 << 0x3f) != 0) {
    } else {
      w0 = mem(((w5 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x429c5c
      x0 = (mem(((w5 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x429c5c
      x5 = (w5 & 0xffffffff) + (HEAP << 32); // 0x429c58
      x6 = (((mem(((w5 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x429c60
      if (x4 >= x6) {
        // duplicated branch body (target 0x429c6c terminates; the same code is emitted below)
        SP = FP; // 0x429c70
        x0 = NULL; // 0x429c6c
        // frame: FP, LR, mem(SP), 0x10 // 0x429c74
        return;
      }
      x7 = mem(x1, 0x33); // 0x429c7c
      if (x7 & (1 << 0x3f) != 0) {
      } else {
        w0 = mem(((w8 & 0xffffffff) + (HEAP << 32)), 0xb); // 0x429c8c
        x0 = (mem(((w8 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff; // 0x429c8c
        x10 = (((mem(((w8 & 0xffffffff) + (HEAP << 32)), 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x429c90
        x8 = (w8 & 0xffffffff) + (HEAP << 32); // 0x429c88
        if (x7 >= x10) {
          // duplicated branch body (target 0x429c9c terminates; the same code is emitted below)
          SP = FP; // 0x429ca0
          x0 = NULL; // 0x429c9c
          // frame: FP, LR, mem(SP), 0x10 // 0x429ca4
          return;
        }
        x0 = x6; // 0x429cac
        x1 = x4; // 0x429cb0
        if (x1 >= x0) {
          RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x429dc0
        } else {
          BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x429cd8
          w1 = mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2)), 0xf); // 0x429cc8
          w4 = mem((((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32)), 7); // 0x429cd0
          x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x429cc0
          x1 = ((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x429ccc
          x4 = ((mem((((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x4 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32)), 7)) & 0xffffffff) + (HEAP << 32); // 0x429cd4
          if (w4 == w16) {
            x9 = mem((PP + 0x10000), 0xb60) /* Field */; // 0x429dc8
            LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x429dcc
          } else {
            x0 = x10; // 0x429ce4
            x1 = x7; // 0x429ce8
            if (x1 >= x0) {
              RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x429dd0
            } else {
              BARRIER = ((w0 & 0xffffffff) + (HEAP << 32)) + (x7 << 2); // 0x429cfc
              w0 = mem((((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x7 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32)), 7); // 0x429d08
              w1 = mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x7 << 2)), 0xf); // 0x429d00
              x0 = (mem((((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x7 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32)), 7)) & 0xffffffff; // 0x429d08
              x1 = ((mem((((w0 & 0xffffffff) + (HEAP << 32)) + (x7 << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x429d04
              BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x429d10
              x0 = x0 + (HEAP << 32); // 0x429d0c
              if (w0 == w16) {
                // duplicated branch body (target 0x429dd4 terminates; the same code is emitted below)
                x9 = mem((PP + 0x10000), 0xb68) /* Field */; // 0x429dd8
                LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x429ddc
              }
              x5 = (x4 >> 1) & 0x7fffffff; // 0x429d1c
              if (x4 & (1 << 0) == 0) {
              } else {
                x5 = mem(x4, 7); // 0x429d24
              }
              local_m10 = x5; // 0x429d28
              if (x2 < x5) {
                x1 = "business_toast_lack_coin" /* pp+0xc908 */; // 0x429d8c
                x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x429d90
                getString() /* 0x3a1dcc */; // 0x429d94
                x1 = x0; // 0x429d98
                x4 = mem(PP, 0x4c0) /* ImmutableArray */; // 0x429d9c
                NativeDialog_toast() /* 0x3ac64c */; // 0x429da0
                NativeDialog_toCoinDialog() /* 0x41c9dc */; // 0x429da4
              } else {
                x4 = (x0 >> 1) & 0x7fffffff; // 0x429d34
                if (x0 & (1 << 0) == 0) {
                } else {
                  x4 = mem(x0, 7); // 0x429d3c
                }
                local_m8 = x4; // 0x429d40
                x1 = mem((PP + 0x10000), 0xb50) /* Function */; // 0x429d48
                x2 = NULL; // 0x429d4c
                AllocationStub__Closure() /* 0x61ec54 */; // 0x429d50
                x1 = mem((PP + 0x10000), 0xb58) /* Function */; // 0x429d58
                x2 = NULL; // 0x429d5c
                local_m20 = x0; // 0x429d60
                AllocationStub__Closure() /* 0x61ec54 */; // 0x429d64
                x1 = local_m18; // 0x429d68
                x2 = local_m10; // 0x429d6c
                x3 = local_m8; // 0x429d70
                x5 = local_m20; // 0x429d74
                x6 = x0; // 0x429d78
                PartyApiService_sendRedPocket() /* 0x429de0 */; // 0x429d7c
                PagePKGameBetTabRecordState_anon_closure() /* 0x3a8d00 */; // 0x429d80
              }
              SP = FP; // 0x429dac
              x0 = NULL; // 0x429da8
              // frame: FP, LR, mem(SP), 0x10 // 0x429db0
              return;
            }
            x9 = mem((PP + 0x10000), 0xb68) /* Field */; // 0x429dd8
            LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x429ddc
          }
        }
      }
      SP = FP; // 0x429ca0
      x0 = NULL; // 0x429c9c
      // frame: FP, LR, mem(SP), 0x10 // 0x429ca4
      return;
    }
    SP = FP; // 0x429c70
    x0 = NULL; // 0x429c6c
    // frame: FP, LR, mem(SP), 0x10 // 0x429c74
    return;
  }
  SP = FP; // 0x429c40
  x0 = NULL; // 0x429c3c
  // frame: FP, LR, mem(SP), 0x10 // 0x429c44
  return;
}

// PartySendPocketNotifier_anon_closure
// raw disassembly:
//  0x429f60: stp FP, LR, [SP, #-0x10]!
//  0x429f64: mov FP, SP
//  0x429f68: sub SP, SP, #0x10
//  0x429f6c: ldr BARRIER, [THR, #0x38]
//  0x429f70: cmp SP, BARRIER
//  0x429f74: b.ls #0x429fcc
//  0x429f78: mov x1, NULL
//  0x429f7c: mov x2, #4
//  0x429f80: bl #0x61f920
//  0x429f84: add BARRIER, PP, #0x10, lsl #12
//  0x429f88: ldr BARRIER, [BARRIER, #0xb70]
//  0x429f8c: stur w16, [x0, #0xf]
//  0x429f90: ldr BARRIER, [PP, #0x2a50]
//  0x429f94: stur w16, [x0, #0x13]
//  0x429f98: ldr BARRIER, [PP, #0xbf0]
//  0x429f9c: stp x0, BARRIER, [SP]
//  0x429fa0: bl #0x27c0c8
//  0x429fa4: str x0, [SP]
//  0x429fa8: add x1, PP, #0x10, lsl #12
//  0x429fac: ldr x1, [x1, #0xb78]
//  0x429fb0: add x4, PP, #0xf, lsl #12
//  0x429fb4: ldr x4, [x4, #0xf20]
//  0x429fb8: bl #0x3a8e60
//  0x429fbc: mov x0, NULL
//  0x429fc0: mov SP, FP
//  0x429fc4: ldp FP, LR, [SP], #0x10
//  0x429fc8: ret 
//  0x429fcc: bl #0x61fa28
//  0x429fd0: b #0x429f78
//
dynamic PartySendPocketNotifier_anon_closure() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x429f60
  BARRIER = mem(THR, 0x38); // 0x429f6c
  // frame: FP = SP // 0x429f64
  // frame: SP = SP - 0x10 // 0x429f68
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x429fcc
  }
  x1 = NULL; // 0x429f78
  x2 = 4; // 0x429f7c
  sub_0x61f920(); // 0x429f80
  BARRIER = "Type" /* pp+0x10b70 */; // 0x429f88
  memSet(x0, 0xf, w16); // 0x429f8c
  BARRIER = "0" /* pp+0x2a50 */; // 0x429f90
  memSet(x0, 0x13, w16); // 0x429f94
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x429f98
  // frame: x0, BARRIER, mem(SP) // 0x429f9c
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x429fa0
  local_0 = x0; // 0x429fa4
  x1 = "LuckyPocket_PopSend" /* pp+0x10b78 */; // 0x429fac
  x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x429fb4
  EventTrack_eventClick() /* 0x3a8e60 */; // 0x429fb8
  SP = FP; // 0x429fc0
  x0 = NULL; // 0x429fbc
  // frame: FP, LR, mem(SP), 0x10 // 0x429fc4
  return;
}

// PartySendPocketNotifier_anon_closure_2
// raw disassembly:
//  0x429fd4: stp FP, LR, [SP, #-0x10]!
//  0x429fd8: mov FP, SP
//  0x429fdc: sub SP, SP, #0x10
//  0x429fe0: ldr BARRIER, [THR, #0x38]
//  0x429fe4: cmp SP, BARRIER
//  0x429fe8: b.ls #0x42a044
//  0x429fec: mov x1, NULL
//  0x429ff0: mov x2, #4
//  0x429ff4: bl #0x61f920
//  0x429ff8: add BARRIER, PP, #0x10, lsl #12
//  0x429ffc: ldr BARRIER, [BARRIER, #0xb70]
//  0x42a000: stur w16, [x0, #0xf]
//  0x42a004: add BARRIER, PP, #0xf, lsl #12
//  0x42a008: ldr BARRIER, [BARRIER, #0x750]
//  0x42a00c: stur w16, [x0, #0x13]
//  0x42a010: ldr BARRIER, [PP, #0xbf0]
//  0x42a014: stp x0, BARRIER, [SP]
//  0x42a018: bl #0x27c0c8
//  0x42a01c: str x0, [SP]
//  0x42a020: add x1, PP, #0x10, lsl #12
//  0x42a024: ldr x1, [x1, #0xb78]
//  0x42a028: add x4, PP, #0xf, lsl #12
//  0x42a02c: ldr x4, [x4, #0xf20]
//  0x42a030: bl #0x3a8e60
//  0x42a034: mov x0, NULL
//  0x42a038: mov SP, FP
//  0x42a03c: ldp FP, LR, [SP], #0x10
//  0x42a040: ret 
//  0x42a044: bl #0x61fa28
//  0x42a048: b #0x429fec
//
dynamic PartySendPocketNotifier_anon_closure_2() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x4;
  // frame: FP, LR, mem(SP, -0x10)! // 0x429fd4
  BARRIER = mem(THR, 0x38); // 0x429fe0
  // frame: FP = SP // 0x429fd8
  // frame: SP = SP - 0x10 // 0x429fdc
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42a044
  }
  x1 = NULL; // 0x429fec
  x2 = 4; // 0x429ff0
  sub_0x61f920(); // 0x429ff4
  BARRIER = "Type" /* pp+0x10b70 */; // 0x429ffc
  memSet(x0, 0xf, w16); // 0x42a000
  BARRIER = "1" /* pp+0xf750 */; // 0x42a008
  memSet(x0, 0x13, w16); // 0x42a00c
  BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x42a010
  // frame: x0, BARRIER, mem(SP) // 0x42a014
  Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x42a018
  local_0 = x0; // 0x42a01c
  x1 = "LuckyPocket_PopSend" /* pp+0x10b78 */; // 0x42a024
  x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x42a02c
  EventTrack_eventClick() /* 0x3a8e60 */; // 0x42a030
  SP = FP; // 0x42a038
  x0 = NULL; // 0x42a034
  // frame: FP, LR, mem(SP), 0x10 // 0x42a03c
  return;
}

// PartySendPocketNotifier_updatePocketNum
// raw disassembly:
//  0x42a374: stp FP, LR, [SP, #-0x10]!
//  0x42a378: mov FP, SP
//  0x42a37c: sub SP, SP, #0x30
//  0x42a380: mov x0, x1
//  0x42a384: stur x1, [FP, #-8]
//  0x42a388: ldr BARRIER, [THR, #0x38]
//  0x42a38c: cmp SP, BARRIER
//  0x42a390: b.ls #0x42a498
//  0x42a394: stur x2, [x0, #0x33]
//  0x42a398: mov x1, x0
//  0x42a39c: bl #0x3ac980
//  0x42a3a0: ldur x0, [FP, #-8]
//  0x42a3a4: ldur x3, [x0, #0x33]
//  0x42a3a8: stur x3, [FP, #-0x20]
//  0x42a3ac: tbnz x3, #0x3f, #0x42a488
//  0x42a3b0: ldur w4, [x0, #0x3f]
//  0x42a3b4: add x4, x4, HEAP, lsl #32
//  0x42a3b8: stur x4, [FP, #-0x18]
//  0x42a3bc: ldur w0, [x4, #0xb]
//  0x42a3c0: sbfx x5, x0, #1, #0x1f
//  0x42a3c4: stur x5, [FP, #-0x10]
//  0x42a3c8: cmp x3, x5
//  0x42a3cc: b.ge #0x42a488
//  0x42a3d0: mov x1, NULL
//  0x42a3d4: mov x2, #4
//  0x42a3d8: bl #0x61f920
//  0x42a3dc: mov x2, x0
//  0x42a3e0: stur x2, [FP, #-8]
//  0x42a3e4: add BARRIER, PP, #0x10, lsl #12
//  0x42a3e8: ldr BARRIER, [BARRIER, #0xc10]
//  0x42a3ec: stur w16, [x2, #0xf]
//  0x42a3f0: ldur x0, [FP, #-0x10]
//  0x42a3f4: ldur x1, [FP, #-0x20]
//  0x42a3f8: cmp x1, x0
//  0x42a3fc: b.hs #0x42a4a0
//  0x42a400: ldur x0, [FP, #-0x18]
//  0x42a404: ldur w1, [x0, #0xf]
//  0x42a408: add x1, x1, HEAP, lsl #32
//  0x42a40c: ldur x0, [FP, #-0x20]
//  0x42a410: add BARRIER, x1, x0, lsl #2
//  0x42a414: ldur w3, [BARRIER, #0xf]
//  0x42a418: add x3, x3, HEAP, lsl #32
//  0x42a41c: ldur w0, [x3, #7]
//  0x42a420: add x0, x0, HEAP, lsl #32
//  0x42a424: ldr BARRIER, [PP, #0x40]
//  0x42a428: cmp w0, w16
//  0x42a42c: b.eq #0x42a4a4
//  0x42a430: str x0, [SP]
//  0x42a434: bl #0x2ac0a0
//  0x42a438: ldur x1, [FP, #-8]
//  0x42a43c: add x25, x1, #0x13
//  0x42a440: str w0, [x25]
//  0x42a444: tbz w0, #0, #0x42a460
//  0x42a448: ldurb w16, [x1, #-1]
//  0x42a44c: ldurb w17, [x0, #-1]
//  0x42a450: and BARRIER, x17, BARRIER, lsr #2
//  0x42a454: tst BARRIER, HEAP, lsr #32
//  0x42a458: b.eq #0x42a460
//  0x42a45c: bl #0x61db00
//  0x42a460: ldr BARRIER, [PP, #0xbf0]
//  0x42a464: ldur LR, [FP, #-8]
//  0x42a468: stp LR, BARRIER, [SP]
//  0x42a46c: bl #0x27c0c8
//  0x42a470: str x0, [SP]
//  0x42a474: add x1, PP, #0x10, lsl #12
//  0x42a478: ldr x1, [x1, #0xc18]
//  0x42a47c: add x4, PP, #0xf, lsl #12
//  0x42a480: ldr x4, [x4, #0xf20]
//  0x42a484: bl #0x3a8e60
//  0x42a488: mov x0, NULL
//  0x42a48c: mov SP, FP
//  0x42a490: ldp FP, LR, [SP], #0x10
//  0x42a494: ret 
//  0x42a498: bl #0x61fa28
//  0x42a49c: b #0x42a394
//  0x42a4a0: bl #0x61fe70
//  0x42a4a4: add x9, PP, #0x10, lsl #12
//  0x42a4a8: ldr x9, [x9, #0xb68]
//  0x42a4ac: bl #0x620258
//
dynamic PartySendPocketNotifier_updatePocketNum() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w3;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x25;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42a374
  // frame: FP = SP // 0x42a378
  // frame: SP = SP - 0x30 // 0x42a37c
  x0 = x1; // 0x42a380
  local_m8 = x1; // 0x42a384
  BARRIER = mem(THR, 0x38); // 0x42a388
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42a498
  }
  memSet(x0, 0x33, x2); // 0x42a394
  x1 = x0; // 0x42a398
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x42a39c
  x0 = local_m8; // 0x42a3a0
  x3 = mem((local_m8), 0x33); // 0x42a3a4
  local_m20 = x3; // 0x42a3a8
  if (x3 & (1 << 0x3f) != 0) {
  } else {
    x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x42a3b4
    local_m18 = x4; // 0x42a3b8
    w0 = mem(x4, 0xb); // 0x42a3bc
    x0 = (mem(x4, 0xb)) & 0xffffffff; // 0x42a3bc
    x5 = (((mem(x4, 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x42a3c0
    local_m10 = x5; // 0x42a3c4
    if (x3 >= x5) {
    } else {
      x1 = NULL; // 0x42a3d0
      x2 = 4; // 0x42a3d4
      sub_0x61f920(); // 0x42a3d8
      x2 = x0; // 0x42a3dc
      local_m8 = x2; // 0x42a3e0
      BARRIER = "Number" /* pp+0x10c10 */; // 0x42a3e8
      memSet(x2, 0xf, w16); // 0x42a3ec
      x0 = local_m10; // 0x42a3f0
      x1 = local_m20; // 0x42a3f4
      if (x1 >= x0) {
        RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x42a4a0
      } else {
        BARRIER = (((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32)) + ((local_m20) << 2); // 0x42a410
        w0 = mem((((mem(((((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32)) + ((local_m20) << 2)), 0xf)) & 0xffffffff) + (HEAP << 32)), 7); // 0x42a41c
        w1 = mem((local_m18), 0xf); // 0x42a404
        w3 = mem(((((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32)) + ((local_m20) << 2)), 0xf); // 0x42a414
        x0 = (mem((((mem(((((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32)) + ((local_m20) << 2)), 0xf)) & 0xffffffff) + (HEAP << 32)), 7)) & 0xffffffff; // 0x42a41c
        x1 = ((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42a408
        x3 = ((mem(((((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32)) + ((local_m20) << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42a418
        BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x42a424
        x0 = x0 + (HEAP << 32); // 0x42a420
        if (w0 == w16) {
          // duplicated branch body (target 0x42a4a4 terminates; the same code is emitted below)
          x9 = mem((PP + 0x10000), 0xb68) /* Field */; // 0x42a4a8
          LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42a4ac
        }
        local_0 = x0; // 0x42a430
        StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x42a434
        x1 = local_m8; // 0x42a438
        x25 = (local_m8) + 0x13; // 0x42a43c
        memSet(x25, w0); // 0x42a440
        if (x0 & (1 << 0) == 0) {
        } else {
          BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x42a450
          w17 = mem(x0, -1); // 0x42a44c
          x16 = w16 & 0xffffffff; // 0x42a448
          x17 = (mem(x0, -1)) & 0xffffffff; // 0x42a44c
          if ((BARRIER & (HEAP >> 32)) == 0) {
          } else {
            sub_0x61db00(); // 0x42a45c
          }
        }
        BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x42a460
        LR = local_m8; // 0x42a464
        // frame: LR, BARRIER, mem(SP) // 0x42a468
        Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x42a46c
        local_0 = x0; // 0x42a470
        x1 = "LuckyPocket_PopNumberChoice" /* pp+0x10c18 */; // 0x42a478
        x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x42a480
        EventTrack_eventClick() /* 0x3a8e60 */; // 0x42a484
        SP = FP; // 0x42a48c
        x0 = NULL; // 0x42a488
        // frame: FP, LR, mem(SP), 0x10 // 0x42a490
        return;
      }
      x9 = mem((PP + 0x10000), 0xb68) /* Field */; // 0x42a4a8
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42a4ac
    }
  }
}

// PartySendPocketNotifier_updateCoinIndex
// raw disassembly:
//  0x42b0d4: stp FP, LR, [SP, #-0x10]!
//  0x42b0d8: mov FP, SP
//  0x42b0dc: sub SP, SP, #0x30
//  0x42b0e0: mov x0, x1
//  0x42b0e4: stur x1, [FP, #-8]
//  0x42b0e8: ldr BARRIER, [THR, #0x38]
//  0x42b0ec: cmp SP, BARRIER
//  0x42b0f0: b.ls #0x42b1f8
//  0x42b0f4: stur x2, [x0, #0x2b]
//  0x42b0f8: mov x1, x0
//  0x42b0fc: bl #0x3ac980
//  0x42b100: ldur x0, [FP, #-8]
//  0x42b104: ldur x3, [x0, #0x2b]
//  0x42b108: stur x3, [FP, #-0x20]
//  0x42b10c: tbnz x3, #0x3f, #0x42b1e8
//  0x42b110: ldur w4, [x0, #0x3b]
//  0x42b114: add x4, x4, HEAP, lsl #32
//  0x42b118: stur x4, [FP, #-0x18]
//  0x42b11c: ldur w0, [x4, #0xb]
//  0x42b120: sbfx x5, x0, #1, #0x1f
//  0x42b124: stur x5, [FP, #-0x10]
//  0x42b128: cmp x3, x5
//  0x42b12c: b.ge #0x42b1e8
//  0x42b130: mov x1, NULL
//  0x42b134: mov x2, #4
//  0x42b138: bl #0x61f920
//  0x42b13c: mov x2, x0
//  0x42b140: stur x2, [FP, #-8]
//  0x42b144: add BARRIER, PP, #0x10, lsl #12
//  0x42b148: ldr BARRIER, [BARRIER, #0xd00]
//  0x42b14c: stur w16, [x2, #0xf]
//  0x42b150: ldur x0, [FP, #-0x10]
//  0x42b154: ldur x1, [FP, #-0x20]
//  0x42b158: cmp x1, x0
//  0x42b15c: b.hs #0x42b200
//  0x42b160: ldur x0, [FP, #-0x18]
//  0x42b164: ldur w1, [x0, #0xf]
//  0x42b168: add x1, x1, HEAP, lsl #32
//  0x42b16c: ldur x0, [FP, #-0x20]
//  0x42b170: add BARRIER, x1, x0, lsl #2
//  0x42b174: ldur w3, [BARRIER, #0xf]
//  0x42b178: add x3, x3, HEAP, lsl #32
//  0x42b17c: ldur w0, [x3, #7]
//  0x42b180: add x0, x0, HEAP, lsl #32
//  0x42b184: ldr BARRIER, [PP, #0x40]
//  0x42b188: cmp w0, w16
//  0x42b18c: b.eq #0x42b204
//  0x42b190: str x0, [SP]
//  0x42b194: bl #0x2ac0a0
//  0x42b198: ldur x1, [FP, #-8]
//  0x42b19c: add x25, x1, #0x13
//  0x42b1a0: str w0, [x25]
//  0x42b1a4: tbz w0, #0, #0x42b1c0
//  0x42b1a8: ldurb w16, [x1, #-1]
//  0x42b1ac: ldurb w17, [x0, #-1]
//  0x42b1b0: and BARRIER, x17, BARRIER, lsr #2
//  0x42b1b4: tst BARRIER, HEAP, lsr #32
//  0x42b1b8: b.eq #0x42b1c0
//  0x42b1bc: bl #0x61db00
//  0x42b1c0: ldr BARRIER, [PP, #0xbf0]
//  0x42b1c4: ldur LR, [FP, #-8]
//  0x42b1c8: stp LR, BARRIER, [SP]
//  0x42b1cc: bl #0x27c0c8
//  0x42b1d0: str x0, [SP]
//  0x42b1d4: add x1, PP, #0x10, lsl #12
//  0x42b1d8: ldr x1, [x1, #0xd08]
//  0x42b1dc: add x4, PP, #0xf, lsl #12
//  0x42b1e0: ldr x4, [x4, #0xf20]
//  0x42b1e4: bl #0x3a8e60
//  0x42b1e8: mov x0, NULL
//  0x42b1ec: mov SP, FP
//  0x42b1f0: ldp FP, LR, [SP], #0x10
//  0x42b1f4: ret 
//  0x42b1f8: bl #0x61fa28
//  0x42b1fc: b #0x42b0f4
//  0x42b200: bl #0x61fe70
//  0x42b204: add x9, PP, #0x10, lsl #12
//  0x42b208: ldr x9, [x9, #0xb60]
//  0x42b20c: bl #0x620258
//
dynamic PartySendPocketNotifier_updateCoinIndex() {
  dynamic BARRIER;
  dynamic FP;
  dynamic LR;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w16;
  dynamic w17;
  dynamic w3;
  dynamic w4;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x25;
  dynamic x3;
  dynamic x4;
  dynamic x5;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x42b0d4
  // frame: FP = SP // 0x42b0d8
  // frame: SP = SP - 0x30 // 0x42b0dc
  x0 = x1; // 0x42b0e0
  local_m8 = x1; // 0x42b0e4
  BARRIER = mem(THR, 0x38); // 0x42b0e8
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x42b1f8
  }
  memSet(x0, 0x2b, x2); // 0x42b0f4
  x1 = x0; // 0x42b0f8
  SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x42b0fc
  x0 = local_m8; // 0x42b100
  x3 = mem((local_m8), 0x2b); // 0x42b104
  local_m20 = x3; // 0x42b108
  if (x3 & (1 << 0x3f) != 0) {
  } else {
    x4 = (w4 & 0xffffffff) + (HEAP << 32); // 0x42b114
    local_m18 = x4; // 0x42b118
    w0 = mem(x4, 0xb); // 0x42b11c
    x0 = (mem(x4, 0xb)) & 0xffffffff; // 0x42b11c
    x5 = (((mem(x4, 0xb)) & 0xffffffff) >> 1) & 0x7fffffff; // 0x42b120
    local_m10 = x5; // 0x42b124
    if (x3 >= x5) {
    } else {
      x1 = NULL; // 0x42b130
      x2 = 4; // 0x42b134
      sub_0x61f920(); // 0x42b138
      x2 = x0; // 0x42b13c
      local_m8 = x2; // 0x42b140
      BARRIER = "Money" /* pp+0x10d00 */; // 0x42b148
      memSet(x2, 0xf, w16); // 0x42b14c
      x0 = local_m10; // 0x42b150
      x1 = local_m20; // 0x42b154
      if (x1 >= x0) {
        RangeErrorSharedWithoutFpuRegsStub_0x61fe70() /* 0x61fe70 */; // 0x42b200
      } else {
        BARRIER = (((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32)) + ((local_m20) << 2); // 0x42b170
        w0 = mem((((mem(((((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32)) + ((local_m20) << 2)), 0xf)) & 0xffffffff) + (HEAP << 32)), 7); // 0x42b17c
        w1 = mem((local_m18), 0xf); // 0x42b164
        w3 = mem(((((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32)) + ((local_m20) << 2)), 0xf); // 0x42b174
        x0 = (mem((((mem(((((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32)) + ((local_m20) << 2)), 0xf)) & 0xffffffff) + (HEAP << 32)), 7)) & 0xffffffff; // 0x42b17c
        x1 = ((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42b168
        x3 = ((mem(((((mem((local_m18), 0xf)) & 0xffffffff) + (HEAP << 32)) + ((local_m20) << 2)), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x42b178
        BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x42b184
        x0 = x0 + (HEAP << 32); // 0x42b180
        if (w0 == w16) {
          // duplicated branch body (target 0x42b204 terminates; the same code is emitted below)
          x9 = mem((PP + 0x10000), 0xb60) /* Field */; // 0x42b208
          LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42b20c
        }
        local_0 = x0; // 0x42b190
        StringBase_interpolateSingle() /* 0x2ac0a0 */; // 0x42b194
        x1 = local_m8; // 0x42b198
        x25 = (local_m8) + 0x13; // 0x42b19c
        memSet(x25, w0); // 0x42b1a0
        if (x0 & (1 << 0) == 0) {
        } else {
          BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x42b1b0
          w17 = mem(x0, -1); // 0x42b1ac
          x16 = w16 & 0xffffffff; // 0x42b1a8
          x17 = (mem(x0, -1)) & 0xffffffff; // 0x42b1ac
          if ((BARRIER & (HEAP >> 32)) == 0) {
          } else {
            sub_0x61db00(); // 0x42b1bc
          }
        }
        BARRIER = mem(PP, 0xbf0) /* TypeArguments */; // 0x42b1c0
        LR = local_m8; // 0x42b1c4
        // frame: LR, BARRIER, mem(SP) // 0x42b1c8
        Map_factory_ctor_fromLiteral() /* 0x27c0c8 */; // 0x42b1cc
        local_0 = x0; // 0x42b1d0
        x1 = "LuckyPocket_PopMoneyChoice" /* pp+0x10d08 */; // 0x42b1d8
        x4 = mem((PP + 0xf000), 0xf20) /* ImmutableArray */; // 0x42b1e0
        EventTrack_eventClick() /* 0x3a8e60 */; // 0x42b1e4
        SP = FP; // 0x42b1ec
        x0 = NULL; // 0x42b1e8
        // frame: FP, LR, mem(SP), 0x10 // 0x42b1f0
        return;
      }
      x9 = mem((PP + 0x10000), 0xb60) /* Field */; // 0x42b208
      LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x42b20c
    }
  }
}

// PartySendPocketNotifier_ctor
// raw disassembly:
//  0x4c496c: stp FP, LR, [SP, #-0x10]!
//  0x4c4970: mov FP, SP
//  0x4c4974: sub SP, SP, #8
//  0x4c4978: mov x0, x1
//  0x4c497c: stur x1, [FP, #-8]
//  0x4c4980: ldr BARRIER, [THR, #0x38]
//  0x4c4984: cmp SP, BARRIER
//  0x4c4988: b.ls #0x4c4a54
//  0x4c498c: stur xzr, [x0, #0x2b]
//  0x4c4990: stur xzr, [x0, #0x33]
//  0x4c4994: add x1, PP, #0xb, lsl #12
//  0x4c4998: ldr x1, [x1, #0x780]
//  0x4c499c: mov x2, #0
//  0x4c49a0: bl #0x277268
//  0x4c49a4: ldur x3, [FP, #-8]
//  0x4c49a8: stur w0, [x3, #0x3b]
//  0x4c49ac: ldurb w16, [x3, #-1]
//  0x4c49b0: ldurb w17, [x0, #-1]
//  0x4c49b4: and BARRIER, x17, BARRIER, lsr #2
//  0x4c49b8: tst BARRIER, HEAP, lsr #32
//  0x4c49bc: b.eq #0x4c49c4
//  0x4c49c0: bl #0x61e08c
//  0x4c49c4: add x1, PP, #0xb, lsl #12
//  0x4c49c8: ldr x1, [x1, #0x788]
//  0x4c49cc: mov x2, #0
//  0x4c49d0: bl #0x277268
//  0x4c49d4: ldur x1, [FP, #-8]
//  0x4c49d8: stur w0, [x1, #0x3f]
//  0x4c49dc: ldurb w16, [x1, #-1]
//  0x4c49e0: ldurb w17, [x0, #-1]
//  0x4c49e4: and BARRIER, x17, BARRIER, lsr #2
//  0x4c49e8: tst BARRIER, HEAP, lsr #32
//  0x4c49ec: b.eq #0x4c49f4
//  0x4c49f0: bl #0x61e04c
//  0x4c49f4: mov x0, #-1
//  0x4c49f8: stur x0, [x1, #0x23]
//  0x4c49fc: stur xzr, [x1, #7]
//  0x4c4a00: stur xzr, [x1, #0x13]
//  0x4c4a04: stur xzr, [x1, #0x1b]
//  0x4c4a08: ldr x0, [THR, #0x68]
//  0x4c4a0c: ldr x0, [x0, #0xb90]
//  0x4c4a10: ldr BARRIER, [PP, #0x40]
//  0x4c4a14: cmp w0, w16
//  0x4c4a18: b.ne #0x4c4a24
//  0x4c4a1c: ldr x2, [PP, #0x3608]
//  0x4c4a20: bl #0x61d99c
//  0x4c4a24: ldur x1, [FP, #-8]
//  0x4c4a28: stur w0, [x1, #0xf]
//  0x4c4a2c: ldurb w16, [x1, #-1]
//  0x4c4a30: ldurb w17, [x0, #-1]
//  0x4c4a34: and BARRIER, x17, BARRIER, lsr #2
//  0x4c4a38: tst BARRIER, HEAP, lsr #32
//  0x4c4a3c: b.eq #0x4c4a44
//  0x4c4a40: bl #0x61e04c
//  0x4c4a44: mov x0, NULL
//  0x4c4a48: mov SP, FP
//  0x4c4a4c: ldp FP, LR, [SP], #0x10
//  0x4c4a50: ret 
//  0x4c4a54: bl #0x61fa28
//  0x4c4a58: b #0x4c498c
//
dynamic PartySendPocketNotifier_ctor() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w16;
  dynamic w17;
  dynamic x0;
  dynamic x1;
  dynamic x16;
  dynamic x17;
  dynamic x2;
  dynamic x3;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4c496c
  // frame: FP = SP // 0x4c4970
  // frame: SP = SP - 8 // 0x4c4974
  x0 = x1; // 0x4c4978
  local_m8 = x1; // 0x4c497c
  BARRIER = mem(THR, 0x38); // 0x4c4980
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4c4a54
  }
  memSet(x0, 0x2b, xzr); // 0x4c498c
  memSet(x0, 0x33, xzr); // 0x4c4990
  x1 = mem((PP + 0xb000), 0x780) /* TypeArguments */; // 0x4c4998
  x2 = 0; // 0x4c499c
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c49a0
  x3 = local_m8; // 0x4c49a4
  memSet(x3, 0x3b, w0); // 0x4c49a8
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c49b4
  w16 = mem(x3, -1); // 0x4c49ac
  w17 = mem(x0, -1); // 0x4c49b0
  x16 = (mem(x3, -1)) & 0xffffffff; // 0x4c49ac
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c49b0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x3() /* 0x61e08c */; // 0x4c49c0
  }
  x1 = mem((PP + 0xb000), 0x788) /* TypeArguments */; // 0x4c49c8
  x2 = 0; // 0x4c49cc
  GrowableList_factory_ctor() /* 0x277268 */; // 0x4c49d0
  x1 = local_m8; // 0x4c49d4
  memSet(x1, 0x3f, w0); // 0x4c49d8
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c49e4
  w16 = mem(x1, -1); // 0x4c49dc
  w17 = mem(x0, -1); // 0x4c49e0
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c49dc
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c49e0
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c49f0
  }
  x0 = -1; // 0x4c49f4
  memSet(x1, 0x23, x0); // 0x4c49f8
  memSet(x1, 7, xzr); // 0x4c49fc
  memSet(x1, 0x13, xzr); // 0x4c4a00
  memSet(x1, 0x1b, xzr); // 0x4c4a04
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4c4a10
  x0 = mem((mem(THR, 0x68)), 0xb90); // 0x4c4a0c
  if (w0 != w16) {
  } else {
    x2 = mem(PP, 0x3608) /* Field */; // 0x4c4a1c
    sub_0x61d99c(); // 0x4c4a20
  }
  x1 = local_m8; // 0x4c4a24
  memSet(x1, 0xf, w0); // 0x4c4a28
  BARRIER = ((mem(x0, -1)) & 0xffffffff) & (BARRIER >> 2); // 0x4c4a34
  w16 = mem(x1, -1); // 0x4c4a2c
  w17 = mem(x0, -1); // 0x4c4a30
  x16 = (mem(x1, -1)) & 0xffffffff; // 0x4c4a2c
  x17 = (mem(x0, -1)) & 0xffffffff; // 0x4c4a30
  if ((BARRIER & (HEAP >> 32)) == 0) {
  } else {
    WriteBarrierStub_x1() /* 0x61e04c */; // 0x4c4a40
  }
  SP = FP; // 0x4c4a48
  x0 = NULL; // 0x4c4a44
  // frame: FP, LR, mem(SP), 0x10 // 0x4c4a4c
  return;
}

// PartySendPocketNotifier_requestData
// raw disassembly:
//  0x4d5ae0: stp FP, LR, [SP, #-0x10]!
//  0x4d5ae4: mov FP, SP
//  0x4d5ae8: sub SP, SP, #8
//  0x4d5aec: mov x0, x1
//  0x4d5af0: stur x1, [FP, #-8]
//  0x4d5af4: ldr BARRIER, [THR, #0x38]
//  0x4d5af8: cmp SP, BARRIER
//  0x4d5afc: b.ls #0x4d5b20
//  0x4d5b00: mov x1, x0
//  0x4d5b04: bl #0x41e8b4
//  0x4d5b08: ldur x1, [FP, #-8]
//  0x4d5b0c: bl #0x4d5b28
//  0x4d5b10: mov x0, NULL
//  0x4d5b14: mov SP, FP
//  0x4d5b18: ldp FP, LR, [SP], #0x10
//  0x4d5b1c: ret 
//  0x4d5b20: bl #0x61fa28
//  0x4d5b24: b #0x4d5b00
//
dynamic PartySendPocketNotifier_requestData() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d5ae0
  // frame: FP = SP // 0x4d5ae4
  // frame: SP = SP - 8 // 0x4d5ae8
  x0 = x1; // 0x4d5aec
  local_m8 = x1; // 0x4d5af0
  BARRIER = mem(THR, 0x38); // 0x4d5af4
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d5b20
  }
  x1 = x0; // 0x4d5b00
  SafeChangeNotifier_requestTotalCoins() /* 0x41e8b4 */; // 0x4d5b04
  x1 = local_m8; // 0x4d5b08
  PartySendPocketNotifier_requestPocketResource() /* 0x4d5b28 */; // 0x4d5b0c
  SP = FP; // 0x4d5b14
  x0 = NULL; // 0x4d5b10
  // frame: FP, LR, mem(SP), 0x10 // 0x4d5b18
  return;
}

// PartySendPocketNotifier_requestPocketResource
// raw disassembly:
//  0x4d5b28: stp FP, LR, [SP, #-0x10]!
//  0x4d5b2c: mov FP, SP
//  0x4d5b30: sub SP, SP, #8
//  0x4d5b34: stur x1, [FP, #-8]
//  0x4d5b38: ldr BARRIER, [THR, #0x38]
//  0x4d5b3c: cmp SP, BARRIER
//  0x4d5b40: b.ls #0x4d5b80
//  0x4d5b44: mov x1, #1
//  0x4d5b48: bl #0x61e890
//  0x4d5b4c: mov x1, x0
//  0x4d5b50: ldur x0, [FP, #-8]
//  0x4d5b54: stur w0, [x1, #0xf]
//  0x4d5b58: mov x2, x1
//  0x4d5b5c: add x1, PP, #0x10, lsl #12
//  0x4d5b60: ldr x1, [x1, #0xd88]
//  0x4d5b64: bl #0x61ec54
//  0x4d5b68: mov x1, x0
//  0x4d5b6c: bl #0x4d5b88
//  0x4d5b70: mov x0, NULL
//  0x4d5b74: mov SP, FP
//  0x4d5b78: ldp FP, LR, [SP], #0x10
//  0x4d5b7c: ret 
//  0x4d5b80: bl #0x61fa28
//  0x4d5b84: b #0x4d5b44
//
dynamic PartySendPocketNotifier_requestPocketResource() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d5b28
  // frame: FP = SP // 0x4d5b2c
  // frame: SP = SP - 8 // 0x4d5b30
  local_m8 = x1; // 0x4d5b34
  BARRIER = mem(THR, 0x38); // 0x4d5b38
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d5b80
  }
  x1 = 1; // 0x4d5b44
  sub_0x61e890(); // 0x4d5b48
  x0 = local_m8; // 0x4d5b50
  x1 = x0; // 0x4d5b4c
  memSet(x1, 0xf, w0); // 0x4d5b54
  x1 = mem((PP + 0x10000), 0xd88) /* Function */; // 0x4d5b60
  x2 = x1; // 0x4d5b58
  AllocationStub__Closure() /* 0x61ec54 */; // 0x4d5b64
  x1 = x0; // 0x4d5b68
  PartyApiService_getPartyRedPocket() /* 0x4d5b88 */; // 0x4d5b6c
  SP = FP; // 0x4d5b74
  x0 = NULL; // 0x4d5b70
  // frame: FP, LR, mem(SP), 0x10 // 0x4d5b78
  return;
}

// PartySendPocketNotifier_anon_closure_3
// raw disassembly:
//  0x4d6280: stp FP, LR, [SP, #-0x10]!
//  0x4d6284: mov FP, SP
//  0x4d6288: sub SP, SP, #8
//  0x4d628c: ldr x0, [FP, #0x18]
//  0x4d6290: ldur w2, [x0, #0x17]
//  0x4d6294: add x2, x2, HEAP, lsl #32
//  0x4d6298: stur x2, [FP, #-8]
//  0x4d629c: ldr BARRIER, [THR, #0x38]
//  0x4d62a0: cmp SP, BARRIER
//  0x4d62a4: b.ls #0x4d636c
//  0x4d62a8: ldur w0, [x2, #0xf]
//  0x4d62ac: add x0, x0, HEAP, lsl #32
//  0x4d62b0: ldur w1, [x0, #0x3b]
//  0x4d62b4: add x1, x1, HEAP, lsl #32
//  0x4d62b8: bl #0x2b3608
//  0x4d62bc: ldur x0, [FP, #-8]
//  0x4d62c0: ldur w1, [x0, #0xf]
//  0x4d62c4: add x1, x1, HEAP, lsl #32
//  0x4d62c8: ldur w2, [x1, #0x3b]
//  0x4d62cc: add x2, x2, HEAP, lsl #32
//  0x4d62d0: ldr x3, [FP, #0x10]
//  0x4d62d4: ldur w1, [x3, #7]
//  0x4d62d8: add x1, x1, HEAP, lsl #32
//  0x4d62dc: ldr BARRIER, [PP, #0x40]
//  0x4d62e0: cmp w1, w16
//  0x4d62e4: b.eq #0x4d6374
//  0x4d62e8: mov BARRIER, x1
//  0x4d62ec: mov x1, x2
//  0x4d62f0: mov x2, BARRIER
//  0x4d62f4: bl #0x2ce4e8
//  0x4d62f8: ldur x0, [FP, #-8]
//  0x4d62fc: ldur w1, [x0, #0xf]
//  0x4d6300: add x1, x1, HEAP, lsl #32
//  0x4d6304: ldur w2, [x1, #0x3f]
//  0x4d6308: add x2, x2, HEAP, lsl #32
//  0x4d630c: mov x1, x2
//  0x4d6310: bl #0x2b3608
//  0x4d6314: ldur x0, [FP, #-8]
//  0x4d6318: ldur w1, [x0, #0xf]
//  0x4d631c: add x1, x1, HEAP, lsl #32
//  0x4d6320: ldur w2, [x1, #0x3f]
//  0x4d6324: add x2, x2, HEAP, lsl #32
//  0x4d6328: ldr x1, [FP, #0x10]
//  0x4d632c: ldur w3, [x1, #0xb]
//  0x4d6330: add x3, x3, HEAP, lsl #32
//  0x4d6334: ldr BARRIER, [PP, #0x40]
//  0x4d6338: cmp w3, w16
//  0x4d633c: b.eq #0x4d6380
//  0x4d6340: mov x1, x2
//  0x4d6344: mov x2, x3
//  0x4d6348: bl #0x2ce4e8
//  0x4d634c: ldur x0, [FP, #-8]
//  0x4d6350: ldur w1, [x0, #0xf]
//  0x4d6354: add x1, x1, HEAP, lsl #32
//  0x4d6358: bl #0x3ac980
//  0x4d635c: mov x0, NULL
//  0x4d6360: mov SP, FP
//  0x4d6364: ldp FP, LR, [SP], #0x10
//  0x4d6368: ret 
//  0x4d636c: bl #0x61fa28
//  0x4d6370: b #0x4d62a8
//  0x4d6374: add x9, PP, #0x10, lsl #12
//  0x4d6378: ldr x9, [x9, #0xd90]
//  0x4d637c: bl #0x620258
//  0x4d6380: add x9, PP, #0x10, lsl #12
//  0x4d6384: ldr x9, [x9, #0xd98]
//  0x4d6388: bl #0x620258
//
dynamic PartySendPocketNotifier_anon_closure_3() {
  dynamic BARRIER;
  dynamic FP;
  dynamic SP;
  dynamic w0;
  dynamic w1;
  dynamic w2;
  dynamic w3;
  dynamic x0;
  dynamic x1;
  dynamic x2;
  dynamic x3;
  dynamic x9;
  // frame: FP, LR, mem(SP, -0x10)! // 0x4d6280
  // frame: FP = SP // 0x4d6284
  // frame: SP = SP - 8 // 0x4d6288
  w2 = mem((local_18), 0x17); // 0x4d6290
  x0 = local_18; // 0x4d628c
  x2 = ((mem((local_18), 0x17)) & 0xffffffff) + (HEAP << 32); // 0x4d6294
  local_m8 = x2; // 0x4d6298
  BARRIER = mem(THR, 0x38); // 0x4d629c
  if (SP <= BARRIER) {
    StackOverflowSharedWithoutFpuRegsStub_0x61fa28() /* 0x61fa28 */; // 0x4d636c
  }
  w1 = mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x3b); // 0x4d62b0
  x0 = (w0 & 0xffffffff) + (HEAP << 32); // 0x4d62ac
  x1 = ((mem(((w0 & 0xffffffff) + (HEAP << 32)), 0x3b)) & 0xffffffff) + (HEAP << 32); // 0x4d62b4
  GrowableList_clear() /* 0x2b3608 */; // 0x4d62b8
  w1 = mem((local_10), 7); // 0x4d62d4
  w2 = mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x3b); // 0x4d62c8
  x0 = local_m8; // 0x4d62bc
  x1 = (mem((local_10), 7)) & 0xffffffff; // 0x4d62d4
  x2 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x3b)) & 0xffffffff) + (HEAP << 32); // 0x4d62cc
  x3 = local_10; // 0x4d62d0
  BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d62dc
  x1 = x1 + (HEAP << 32); // 0x4d62d8
  if (w1 == w16) {
    x9 = mem((PP + 0x10000), 0xd90) /* Field */; // 0x4d6378
    LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d637c
  } else {
    BARRIER = x1; // 0x4d62e8
    x1 = x2; // 0x4d62ec
    x2 = x1; // 0x4d62f0
    GrowableList_addAll() /* 0x2ce4e8 */; // 0x4d62f4
    w1 = mem((local_m8), 0xf); // 0x4d62fc
    w2 = mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x3f); // 0x4d6304
    x0 = local_m8; // 0x4d62f8
    x1 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x3f)) & 0xffffffff) + (HEAP << 32); // 0x4d630c
    x2 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x3f)) & 0xffffffff) + (HEAP << 32); // 0x4d6308
    GrowableList_clear() /* 0x2b3608 */; // 0x4d6310
    w1 = mem((local_m8), 0xf); // 0x4d6318
    w2 = mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x3f); // 0x4d6320
    x0 = local_m8; // 0x4d6314
    x1 = local_10; // 0x4d6328
    x2 = ((mem((((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32)), 0x3f)) & 0xffffffff) + (HEAP << 32); // 0x4d6324
    BARRIER = mem(PP, 0x40) /* Obj!? */; // 0x4d6334
    w3 = mem(x1, 0xb); // 0x4d632c
    x3 = ((mem(x1, 0xb)) & 0xffffffff) + (HEAP << 32); // 0x4d6330
    if (w3 != w16) {
      x1 = x2; // 0x4d6340
      x2 = x3; // 0x4d6344
      GrowableList_addAll() /* 0x2ce4e8 */; // 0x4d6348
      w1 = mem((local_m8), 0xf); // 0x4d6350
      x0 = local_m8; // 0x4d634c
      x1 = ((mem((local_m8), 0xf)) & 0xffffffff) + (HEAP << 32); // 0x4d6354
      SafeChangeNotifier_safeNotify() /* 0x3ac980 */; // 0x4d6358
      SP = FP; // 0x4d6360
      x0 = NULL; // 0x4d635c
      // frame: FP, LR, mem(SP), 0x10 // 0x4d6364
      return;
    }
  }
  x9 = mem((PP + 0x10000), 0xd98) /* Field */; // 0x4d6384
  LateInitializationErrorSharedWithoutFpuRegsStub_0x620258() /* 0x620258 */; // 0x4d6388
}
