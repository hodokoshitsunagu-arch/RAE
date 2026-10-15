r0 = global;
r4 = r0.__d;
r3 = undefined;
r2 = function(a0, a1, a2, a3, a4, a5, a6) { // Environment: r0
    _fun1: for(var _fun1_ip = 0; ; ) switch(_fun1_ip) {
case 0:
        r4 = a1;
        r2 = a5;
        r5 = a6;
        r0 = function(a0, a1) { // Original name: e, environment: r1
            _fun2: for(var _fun2_ip = 0; ; ) switch(_fun2_ip) {
case 0:
                r3 = undefined;
                r4 = global;
                r1 = r4.WeakMap;
                r6 = 'function';
                r5 = typeof r1;
                r2 = undefined;
                r1 = undefined;
                if(!(r6 === r5)) { _fun2_ip = 78; continue _fun2 }
case 26:
                r5 = r4.WeakMap;
                r6 = r5.prototype;
                r6 = Object.create(r6, {constructor: {value: r5}});
                r9 = r6;
                r5 = new r9[r5](r8);
                r2 = r5 instanceof Object ? r5 : r6;
                r4 = r4.WeakMap;
                r6 = r4.prototype;
                r6 = Object.create(r6, {constructor: {value: r4}});
                r9 = r6;
                r4 = new r9[r4](r8);
                r1 = r4 instanceof Object ? r4 : r6;
case 78:
                var _closure2_slot0 = r2;
                var _closure2_slot1 = r1;
                r2 = function(a0, a1) { // Original name: e, environment: r0
                    _fun3: for(var _fun3_ip = 0; ; ) switch(_fun3_ip) {
case 0:
                        r3 = a0;
                        r2 = a1;
                        r12 = undefined;
                        r11 = 'default';
                        r10 = global;
                        if(r2) { _fun3_ip = 31; continue _fun3 }
case 17:
                        if(!r3) { _fun3_ip = 31; continue _fun3 }
case 20:
                        r0 = r3.__esModule;
                        if(!r0) { _fun3_ip = 31; continue _fun3 }
case 29:
                        return r3;
case 31:
                        r1 = null;
                        r0 = Object.create(r1);
                        r0['default'] = r3;
                        if(!(r1 !== r3)) { _fun3_ip = 275; continue _fun3 }
case 47:
                        r4 = typeof r3;
                        r1 = 'object';
                        if(!(r1 !== r4)) { _fun3_ip = 69; continue _fun3 }
case 58:
                        r1 = 'function';
                        if(!(r1 === r4)) { _fun3_ip = 275; continue _fun3 }
case 69:
                        if(r2) { _fun3_ip = 81; continue _fun3 }
case 75:
                        r2 = _closure2_slot0;
                        _fun3_ip = 85; continue _fun3;
case 81:
                        r2 = _closure2_slot1;
case 85:
                        if(!r2) { _fun3_ip = 115; continue _fun3 }
case 88:
                        r1 = r2.has;
                        r1 = r1.bind(r2)(r3);
                        if(r1) { _fun3_ip = 263; continue _fun3 }
case 104:
                        r1 = r2.set;
                        r1 = r1.bind(r2)(r3, r0);
case 115:
                        r8 = r3;
                        r4 = r2;
                        r1 = undefined;
                        for(r5 in r8)
case 134:
                        {
case 143:
                            r15 = r5;
                            r13 = r11 !== r15;
                            if(!r13) { _fun3_ip = 173; continue _fun3 }
case 153:
                            r14 = {};
                            r16 = r14.hasOwnProperty;
                            r14 = r16.call;
                            r13 = r14.bind(r16)(r3, r15);
case 173:
                            if(!r13) { _fun3_ip = 134; continue _fun3 }
case 176:
                            r13 = r10.Object;
                            r14 = r13.defineProperty;
                            r13 = r14;
                            if(!r13) { _fun3_ip = 211; continue _fun3 }
case 193:
                            r17 = r10.Object;
                            r16 = r17.getOwnPropertyDescriptor;
                            r13 = r16.bind(r17)(r3, r15);
case 211:
                            if(!r13) { _fun3_ip = 230; continue _fun3 }
case 214:
                            r16 = r13.get;
                            if(r16) { _fun3_ip = 246; continue _fun3 }
case 222:
                            r16 = r13.set;
                            if(r16) { _fun3_ip = 246; continue _fun3 }
case 230:
                            r16 = r3[r15];
                            r0[r15] = r16;
                            r4 = r14;
                            r1 = r13;
                            _fun3_ip = 134; continue _fun3;
case 246:
                            r15 = r14.bind(r12)(r0, r15, r13);
                            r4 = r14;
                            r1 = r13;
                            _fun3_ip = 134; continue _fun3;
                        }
case 261:
                        return r0;
case 263:
                        r1 = r2.get;
                        r1 = r1.bind(r2)(r3);
                        return r1;
case 275:
                        return r0;
                    }
                };
                _closure1_slot29 = r2;
                r1 = a0;
                r0 = a1;
                r0 = r2.bind(r3)(r1, r0);
                return r0;
            }
        };
        var _closure1_slot29 = r0;
        r0 = function(a0, a1) { // Original name: t, environment: r1
            _fun4: for(var _fun4_ip = 0; ; ) switch(_fun4_ip) {
case 0:
                r5 = a0;
                r2 = a1;
                r1 = undefined;
                r3 = null;
                if(!(r3 != r5)) { _fun4_ip = 41; continue _fun4 }
case 16:
                var _closure2_slot0 = r2;
                var _closure2_slot1 = r1;
                r4 = r5.forEach;
                r3 = function(a0) { // Environment: r0
                    _fun5: for(var _fun5_ip = 0; ; ) switch(_fun5_ip) {
case 0:
                        r0 = a0;
                        r2 = r0.backgroundModelList;
                        r0 = null;
                        if(!(r0 != r2)) { _fun5_ip = 32; continue _fun5 }
case 15:
                        r1 = r2.forEach;
                        r0 = function(a0) { // Environment: r0
                            _fun6: for(var _fun6_ip = 0; ; ) switch(_fun6_ip) {
case 0:
                                r1 = a0;
                                r3 = r1.mediaId;
                                r2 = _closure2_slot0;
                                if(!(r3 === r2)) { _fun6_ip = 23; continue _fun6 }
case 19:
                                _closure2_slot1 = r1;
case 23:
                                r0 = undefined;
                                return r0;
                            }
                        };
                        r0 = r1.bind(r2)(r0);
case 32:
                        r0 = undefined;
                        return r0;
                    }
                };
                r3 = r4.bind(r5)(r3);
                _fun4_ip = 49; continue _fun4;
case 41:
                _closure2_slot0 = r2;
                _closure2_slot1 = r1;
case 49:
                r0 = _closure2_slot1;
                return r0;
            }
        };
        var _closure1_slot30 = r0;
        r0 = function(a0) { // Original name: n, environment: r1
            _fun7: for(var _fun7_ip = 0; ; ) switch(_fun7_ip) {
case 0:
                r0 = a0;
                r1 = 0;
                r3 = r0.paymentType;
                r2 = 1;
                if(!(r2 !== r3)) { _fun7_ip = 37; continue _fun7 }
case 18:
                r3 = r0.personalRightsExpireTime;
                r4 = null;
                r2 = 0;
                if(!(r4 != r3)) { _fun7_ip = 35; continue _fun7 }
case 32:
                r2 = r3;
case 35:
                _fun7_ip = 51; continue _fun7;
case 37:
                r3 = global;
                r3 = r3.Number;
                r2 = r3.MAX_VALUE;
case 51:
                r3 = r0.serverTime;
                r4 = null;
                r0 = 0;
                if(!(r4 != r3)) { _fun7_ip = 68; continue _fun7 }
case 65:
                r0 = r3;
case 68:
                r0 = r2 - r0;
                r0 = r0 > r1;
                return r0;
            }
        };
        var _closure1_slot31 = r0;
        r19 = global;
        r7 = r19.Object;
        r6 = r7.defineProperty;
        r3 = {};
        r0 = true;
        r3['value'] = r0;
        r0 = '__esModule';
        r0 = r6.bind(r7)(r2, r0, r3);
        r0 = undefined;
        r2['default'] = r0;
        r26 = 0;
        r3 = r5[r26];
        r6 = r4.bind(r0)(r3);
        r17 = 1;
        r3 = r5[r17];
        r3 = r4.bind(r0)(r3);
        r49 = r6.bind(r0)(r3);
        r3 = r5[r26];
        r7 = r4.bind(r0)(r3);
        r6 = 2;
        r3 = r5[r6];
        r3 = r4.bind(r0)(r3);
        r48 = r7.bind(r0)(r3);
        r3 = r5[r26];
        r7 = r4.bind(r0)(r3);
        r3 = 3;
        r3 = r5[r3];
        r3 = r4.bind(r0)(r3);
        r3 = r7.bind(r0)(r3);
        var _closure1_slot4 = r3;
        r3 = r5[r26];
        r7 = r4.bind(r0)(r3);
        r12 = 4;
        r3 = r5[r12];
        r3 = r4.bind(r0)(r3);
        r47 = r7.bind(r0)(r3);
        r3 = r5[r26];
        r7 = r4.bind(r0)(r3);
        r3 = 5;
        r3 = r5[r3];
        r3 = r4.bind(r0)(r3);
        r46 = r7.bind(r0)(r3);
        r7 = _closure1_slot29;
        r3 = 6;
        r3 = r5[r3];
        r3 = r4.bind(r0)(r3);
        r45 = r7.bind(r0)(r3);
        r3 = 7;
        r3 = r5[r3];
        r44 = r4.bind(r0)(r3);
        r3 = r5[r26];
        r7 = r4.bind(r0)(r3);
        r14 = 8;
        r3 = r5[r14];
        r3 = r4.bind(r0)(r3);
        r43 = r7.bind(r0)(r3);
        r7 = _closure1_slot29;
        r3 = 9;
        r3 = r5[r3];
        r3 = r4.bind(r0)(r3);
        r42 = r7.bind(r0)(r3);
        r3 = r5[r26];
        r7 = r4.bind(r0)(r3);
        r3 = 10;
        r3 = r5[r3];
        r3 = r4.bind(r0)(r3);
        r41 = r7.bind(r0)(r3);
        r3 = r5[r26];
        r7 = r4.bind(r0)(r3);
        r20 = 11;
        r3 = r5[r20];
        r3 = r4.bind(r0)(r3);
        r40 = r7.bind(r0)(r3);
        r3 = r5[r26];
        r7 = r4.bind(r0)(r3);
        r11 = 12;
        r3 = r5[r11];
        r3 = r4.bind(r0)(r3);
        r39 = r7.bind(r0)(r3);
        r3 = r5[r26];
        r7 = r4.bind(r0)(r3);
        r3 = 13;
        r3 = r5[r3];
        r3 = r4.bind(r0)(r3);
        r38 = r7.bind(r0)(r3);
        r3 = r5[r26];
        r7 = r4.bind(r0)(r3);
        r9 = 14;
        r3 = r5[r9];
        r3 = r4.bind(r0)(r3);
        r37 = r7.bind(r0)(r3);
        r7 = _closure1_slot29;
        r3 = 15;
        r3 = r5[r3];
        r3 = r4.bind(r0)(r3);
        r36 = r7.bind(r0)(r3);
        r3 = r5[r26];
        r7 = r4.bind(r0)(r3);
        r15 = 16;
        r3 = r5[r15];
        r3 = r4.bind(r0)(r3);
        r35 = r7.bind(r0)(r3);
        r3 = r5[r26];
        r7 = r4.bind(r0)(r3);
        r3 = 17;
        r3 = r5[r3];
        r3 = r4.bind(r0)(r3);
        r34 = r7.bind(r0)(r3);
        r3 = r5[r26];
        r7 = r4.bind(r0)(r3);
        r3 = 18;
        r3 = r5[r3];
        r3 = r4.bind(r0)(r3);
        r33 = r7.bind(r0)(r3);
        r3 = r5[r26];
        r7 = r4.bind(r0)(r3);
        r3 = 19;
        r3 = r5[r3];
        r3 = r4.bind(r0)(r3);
        r25 = r7.bind(r0)(r3);
        r3 = r5[r26];
        r7 = r4.bind(r0)(r3);
        r3 = 20;
        r3 = r5[r3];
        r3 = r4.bind(r0)(r3);
        r24 = r7.bind(r0)(r3);
        r3 = r44.Platform;
        r10 = r3.OS;
        r7 = r19.String;
        r3 = r44.Platform;
        r3 = r3.OS;
        r8 = r7.bind(r0)(r3);
        r3 = {'showKtv': null, 'showGame': true, 'showParty': true, 'showGameplay': true};
        r7 = 'harmony';
        r10 = r7 !== r10;
        r3['showKtv'] = r10;
        r7 = r7 !== r8;
        r3['showVideoTab'] = r7;
        r23 = {};
        r23['tabs'] = r3;
        r3 = {'enableLottieBackground': true, 'enableBackgroundRestore': true, 'fallbackBackgroundColor': '#0d0d0d'};
        r23['background'] = r3;
        r3 = 21;
        r3 = r5[r3];
        r3 = r4.bind(r0)(r3);
        r3 = r3.VIDEO_TAB_CODE;
        r18 = ['yuliao', 'youxi', 'ktv'];
        r18[3] = r3;
        r3 = 'wanfa';
        r18[4] = r3;
        r3 = 1974;
        var _closure1_slot25 = r3;
        r3 = r44.Platform;
        r22 = r3.OS;
        r8 = r19.Set;
        r3 = [1, 9, 13, 17, 22];
        r7 = -1;
        r3[5] = r7;
        r7 = 400004;
        r3[6] = r7;
        r7 = 400005;
        r3[7] = r7;
        r7 = 500003;
        r3[8] = r7;
        r7 = 500005;
        r3[9] = r7;
        r7 = 100001;
        r3[10] = r7;
        r3[11] = r9;
        r7 = 300001;
        r3[12] = r7;
        r7 = 300002;
        r3[13] = r7;
        r7 = 300004;
        r3[14] = r7;
        r7 = 300005;
        r3[15] = r7;
        r7 = 100003;
        r3[16] = r7;
        r7 = r8.prototype;
        r7 = Object.create(r7, {constructor: {value: r8}});
        r56 = r7;
        r55 = r3;
        r3 = new r56[r8](r55, r54);
        r3 = r3 instanceof Object ? r3 : r7;
        var _closure1_slot27 = r3;
        r8 = r44.Dimensions;
        r7 = r8.get;
        r3 = 'window';
        r3 = r7.bind(r8)(r3);
        r7 = r3.width;
        r3 = r3.height;
        r21 = 22;
        r3 = r5[r21];
        r3 = r4.bind(r0)(r3);
        r3 = r3.PixelUtil;
        r8 = r3.px;
        r10 = 48;
        r7 = r8.bind(r0)(r10);
        r3 = r8.bind(r0)(r12);
        r13 = r7 + r3;
        r3 = r8.bind(r0)(r9);
        r13 = r13 + r3;
        r3 = r8.bind(r0)(r11);
        r3 = r13 + r3;
        r7 = r7 / r6;
        r3 = r6 * r3;
        r13 = r3 + r7;
        r3 = r8.bind(r0)(r14);
        r16 = r6 * r3;
        r7 = r44.StyleSheet;
        r6 = r7.create;
        r32 = {};
        r32['flex'] = r17;
        r31 = {};
        r31['flex'] = r17;
        r30 = r19.Object;
        r29 = r30.assign;
        r3 = r44.Platform;
        r3 = r3.OS;
        r50 = 'android';
        if(!(r50 !== r3)) { _fun1_ip = 1061; continue _fun1 }
case 1031:
        r3 = r44.Platform;
        r27 = r3.OS;
        r3 = 'ios';
        if(!(r3 !== r27)) { _fun1_ip = 1061; continue _fun1 }
case 1049:
        r28 = {'paddingTop': 7, 'paddingBottom': 7};
        _fun1_ip = 1071; continue _fun1;
case 1061:
        r28 = {'paddingTop': 0, 'paddingBottom': 0};
case 1071:
        r27 = {'flexDirection': 'row', 'alignItems': 'center', 'justifyContent': 'space-between', 'height': 44};
        r3 = {'paddingLeft': 10, 'paddingRight': 10, 'zIndex': 1, 'overflow': 'visible'};
        r30 = r29.bind(r30)(r27, r28, r3);
        r29 = {};
        r3 = 32;
        r29['width'] = r3;
        r3 = r5[r21];
        r3 = r4.bind(r0)(r3);
        r3 = r3.SOColor;
        r52 = r3[r17];
        r51 = r8.bind(r0)(r14);
        r27 = r8.bind(r0)(r12);
        r3 = 24;
        r3 = r8.bind(r0)(r3);
        r28 = {};
        r28['backgroundColor'] = r52;
        r28['paddingHorizontal'] = r51;
        r28['paddingVertical'] = r27;
        r28['borderRadius'] = r3;
        r3 = 'center';
        r28['alignItems'] = r3;
        r28['justifyContent'] = r3;
        r21 = r5[r21];
        r21 = r4.bind(r0)(r21);
        r21 = r21.SOColor;
        r21 = r21[r26];
        r20 = r8.bind(r0)(r20);
        r27 = {};
        r27['color'] = r21;
        r27['fontSize'] = r20;
        r52 = r19.Object;
        r51 = r52.assign;
        r20 = r44.Platform;
        r20 = r20.OS;
        if(!(r50 !== r20)) { _fun1_ip = 1257; continue _fun1 }
case 1231:
        r20 = r44.Platform;
        r21 = r20.OS;
        r20 = 'ios';
        if(!(r20 !== r21)) { _fun1_ip = 1257; continue _fun1 }
case 1249:
        r26 = {};
        r26['paddingVertical'] = r14;
        _fun1_ip = 1266; continue _fun1;
case 1257:
        r20 = {};
        r20['paddingVertical'] = r12;
        r26 = r20;
case 1266:
        r21 = {};
        r20 = {'paddingHorizontal': 16, 'alignItems': 'center', 'position': 'relative'};
        r26 = r51.bind(r52)(r21, r26, r20);
        r21 = r19.Object;
        r20 = r21.assign;
        r19 = r44.Platform;
        r19 = r19.OS;
        if(!(r50 !== r19)) { _fun1_ip = 1314; continue _fun1 }
case 1310:
        r19 = {};
        _fun1_ip = 1324; continue _fun1;
case 1314:
        r50 = {};
        r50['elevation'] = r11;
        r19 = r50;
case 1324:
        var _closure1_slot0 = r4;
        var _closure1_slot1 = r5;
        var _closure1_slot2 = r49;
        var _closure1_slot3 = r48;
        var _closure1_slot5 = r47;
        var _closure1_slot6 = r46;
        var _closure1_slot7 = r45;
        var _closure1_slot8 = r44;
        var _closure1_slot9 = r43;
        var _closure1_slot10 = r42;
        var _closure1_slot11 = r41;
        var _closure1_slot12 = r40;
        var _closure1_slot13 = r39;
        var _closure1_slot14 = r38;
        var _closure1_slot15 = r37;
        var _closure1_slot16 = r36;
        var _closure1_slot17 = r35;
        var _closure1_slot18 = r34;
        var _closure1_slot19 = r33;
        var _closure1_slot20 = r25;
        var _closure1_slot21 = r24;
        var _closure1_slot22 = r23;
        var _closure1_slot23 = r18;
        r18 = {'yuliao': '派对', 'ktv': 'KTV', 'wanfa': '玩法', 'youxi': '开黑'};
        var _closure1_slot24 = r18;
        r18 = 'ios';
        r18 = r18 === r22;
        var _closure1_slot26 = r18;
        var _closure1_slot28 = r0;
        r18 = function(a0, a1) { // Original name: o, environment: r1
            _fun8: for(var _fun8_ip = 0; ; ) switch(_fun8_ip) {
case 0:
                r5 = a0;
                r11 = a1;
                r1 = undefined;
                r4 = undefined;
                if(!r11) { _fun8_ip = 23; continue _fun8 }
case 13:
                r0 = 1;
                r2 = r11;
                if(!(r0 === r2)) { _fun8_ip = 30; continue _fun8 }
case 23:
                r2 = _closure1_slot25;
case 30:
                r9 = new Array(1);
                r9[0] = r2;
                r8 = r9.concat;
                r3 = _closure1_slot4;
                r7 = r3.default;
                r3 = null;
                if(!(r3 != r11)) { _fun8_ip = 65; continue _fun8 }
case 61:
                if(!(r11 === r2)) { _fun8_ip = 71; continue _fun8 }
case 65:
                r6 = new Array(0);
                _fun8_ip = 82; continue _fun8;
case 71:
                r10 = new Array(1);
                r10[0] = r11;
                r6 = r10;
case 82:
                r7 = r7.bind(r1)(r6);
                r10 = _closure1_slot25;
                r6 = new Array(1);
                r6[0] = r10;
                r8 = r8.bind(r9)(r7, r6);
                r7 = r8;
                r6 = r7[Symbol.iterator];
                r7 = r6().next;
case 111:
                r9 = r7().value;
                r8 = r6;
                if(!(r8 !== r1)) { _fun8_ip = 187; continue _fun8 }
case 122: // try_start_0
                r8 = _closure1_slot30;
                r8 = r8.bind(r1)(r5, r9);
                r4 = r8;
                if(!r8) { _fun8_ip = 153; continue _fun8 }
case 138:
                r9 = _closure1_slot31;
                r8 = r4;
                r8 = r9.bind(r1)(r8);
                if(r8) { _fun8_ip = 155; continue _fun8 }
case 153: // try_end0
                _fun8_ip = 111; continue _fun8;
case 155: // try_start_1
                r8 = r4.mediaId;
                r7 = r4.backgroundUrl;
                r4 = {};
                r4['mediaId'] = r8;
                r4['backgroundUrl'] = r7;
case 175: // try_end1
                r6.return();
                return r4;
case 180: // catch_target0 // catch_target1
                CatchBlockStart(arg_register=4);
                r6.return();
                throw r4;
case 187:
                r4 = _closure1_slot30;
                r0 = _closure1_slot25;
                r0 = r4.bind(r1)(r5, r0);
                r4 = undefined;
                if(!(r3 != r0)) { _fun8_ip = 212; continue _fun8 }
case 207:
                r4 = r0.mediaId;
case 212:
                if(!(r3 != r4)) { _fun8_ip = 219; continue _fun8 }
case 216:
                r2 = r4;
case 219:
                r1 = undefined;
                if(!(r3 != r0)) { _fun8_ip = 230; continue _fun8 }
case 225:
                r1 = r0.backgroundUrl;
case 230:
                r0 = {};
                r0['mediaId'] = r2;
                r0['backgroundUrl'] = r1;
                return r0;
            }
        };
        var _closure1_slot32 = r18;
        r18 = function(a0) { // Original name: i, environment: r1
            _fun9: for(var _fun9_ip = 0; ; ) switch(_fun9_ip) {
case 0:
                r3 = a0;
                r0 = null;
                r0 = r0 != r3;
                if(!r0) { _fun9_ip = 29; continue _fun9 }
case 12:
                r2 = _closure1_slot27;
                r1 = r2.has;
                r0 = r1.bind(r2)(r3);
case 29:
                return r0;
            }
        };
        var _closure1_slot33 = r18;
        r18 = function(a0) { // Original name: r, environment: r1
            _fun10: for(var _fun10_ip = 0; ; ) switch(_fun10_ip) {
case 0:
                r1 = a0;
                r0 = 1;
                if(!(r0 !== r1)) { _fun10_ip = 88; continue _fun10 }
case 10:
                r0 = 2;
                if(!(r0 !== r1)) { _fun10_ip = 82; continue _fun10 }
case 17:
                r0 = 4;
                if(!(r0 !== r1)) { _fun10_ip = 76; continue _fun10 }
case 24:
                r0 = 6;
                if(!(r0 !== r1)) { _fun10_ip = 70; continue _fun10 }
case 31:
                r0 = 10;
                if(!(r0 !== r1)) { _fun10_ip = 64; continue _fun10 }
case 38:
                r0 = 5;
                if(!(r0 !== r1)) { _fun10_ip = 58; continue _fun10 }
case 45:
                r0 = 7;
                if(!(r0 === r1)) { _fun10_ip = 76; continue _fun10 }
case 52:
                r0 = '热门话题';
                return r0;
case 58:
                r0 = '情感故事';
                return r0;
case 64:
                r0 = '兴趣交流';
                return r0;
case 70:
                r0 = '趣味辩论';
                return r0;
case 76:
                r0 = '闲聊唠嗑';
                return r0;
case 82:
                r0 = '心动速配';
                return r0;
case 88:
                r0 = '唱歌听歌';
                return r0;
            }
        };
        var _closure1_slot34 = r18;
        r18 = function(a0) { // Original name: a, environment: r1
            _fun11: for(var _fun11_ip = 0; ; ) switch(_fun11_ip) {
case 0:
                r4 = a0;
                r0 = undefined;
                r2 = undefined;
                r1 = global;
                r9 = r1.Object;
                r8 = r9.assign;
                r5 = null;
                r7 = r4;
                if(!(r5 == r7)) { _fun11_ip = 31; continue _fun11 }
case 29:
                r7 = {};
case 31:
                r6 = {};
                r0 = r8.bind(r9)(r6, r7);
                r3 = undefined;
                if(!(r5 != r4)) { _fun11_ip = 51; continue _fun11 }
case 45:
                r3 = r4.extraParams;
case 51:
                r2 = r3;
                if(!r3) { _fun11_ip = 119; continue _fun11 }
case 57:
                r3 = r2;
                r4 = 'string';
                r3 = typeof r3;
                if(!(r4 === r3)) { _fun11_ip = 119; continue _fun11 }
case 71: // try_start_0
                r4 = r1.JSON;
                r3 = r4.parse;
                r5 = r3.bind(r4)(r2);
                r4 = r1.Object;
                r3 = r4.assign;
                r2 = r0;
                r1 = {};
                r1 = r3.bind(r4)(r1, r2, r5);
case 110: // try_end0
                return r1;
case 112: // catch_target0
                CatchBlockStart(arg_register=1);
                r1 = r0;
                return r1;
case 119:
                return r0;
            }
        };
        var _closure1_slot35 = r18;
        r18 = function(a0) { // Original name: l, environment: r1
            _fun12: for(var _fun12_ip = 0; ; ) switch(_fun12_ip) {
case 0:
                r0 = a0;
                r2 = typeof r0;
                r1 = 'boolean';
                if(!(r1 !== r2)) { _fun12_ip = 65; continue _fun12 }
case 14:
                r1 = 'string';
                if(!(r1 !== r2)) { _fun12_ip = 26; continue _fun12 }
case 22:
                r1 = false;
                return r1;
case 26:
                r1 = r0.trim;
                r2 = r1.bind(r0)();
                r1 = r2.toLowerCase;
                r3 = r1.bind(r2)();
                r1 = 'true';
                r1 = r1 === r3;
                if(r1) { _fun12_ip = 63; continue _fun12 }
case 55:
                r2 = '1';
                r1 = r2 === r3;
case 63:
                return r1;
case 65:
                return r0;
            }
        };
        var _closure1_slot36 = r18;
        r18 = {'position': 'absolute', 'width': 24, 'height': 12, 'borderTopLeftRadius': 7, 'borderTopRightRadius': 7, 'borderBottomRightRadius': 7, 'borderBottomLeftRadius': 2, 'backgroundColor': 'rgba(255, 255, 255, 0.3)', 'justifyContent': 'center', 'alignItems': 'center', 'zIndex': 20};
        r25 = r20.bind(r21)(r18, r19);
        r24 = {};
        r24['paddingHorizontal'] = r15;
        r23 = {};
        r23['flex'] = r17;
        r22 = {};
        r22['marginBottom'] = r14;
        r21 = {};
        r21['marginBottom'] = r14;
        r20 = {};
        r17 = 'rgba(255, 255, 255, 0.1)';
        r20['backgroundColor'] = r17;
        r19 = {};
        r19['marginBottom'] = r15;
        r18 = {'marginBottom': 0, 'maxHeight': null, 'overflow': 'hidden'};
        r16 = r13 + r16;
        r18['maxHeight'] = r16;
        r17 = {};
        r16 = 'relative';
        r17['position'] = r16;
        r33 = r8.bind(r0)(r15);
        r15 = r8.bind(r0)(r14);
        r14 = r8.bind(r0)(r14);
        r16 = {};
        r34 = 'auto';
        r16['width'] = r34;
        r16['marginHorizontal'] = r33;
        r16['marginTop'] = r15;
        r16['marginBottom'] = r14;
        r16['maxHeight'] = r13;
        r12 = r8.bind(r0)(r12);
        r15 = {};
        r15['paddingBottom'] = r12;
        r11 = r8.bind(r0)(r11);
        r14 = {'flexDirection': 'row', 'justifyContent': 'space-between'};
        r14['marginBottom'] = r11;
        r11 = r8.bind(r0)(r10);
        r13 = {};
        r13['width'] = r11;
        r13['alignItems'] = r3;
        r11 = r8.bind(r0)(r10);
        r12 = {};
        r12['width'] = r11;
        r34 = r8.bind(r0)(r10);
        r33 = r8.bind(r0)(r10);
        r11 = {'height': null, 'width': null, 'backgroundColor': 'rgba(255, 255, 255, 0.1)', 'borderRadius': 6, 'justifyContent': 'center', 'alignItems': 'center'};
        r11['height'] = r34;
        r11['width'] = r33;
        r34 = r8.bind(r0)(r10);
        r33 = r8.bind(r0)(r10);
        r10 = {};
        r10['height'] = r34;
        r10['width'] = r33;
        r8 = r8.bind(r0)(r9);
        r9 = {'fontSize': 10, 'lineHeight': null, 'color': 'rgba(255, 255, 255, 0.8)', 'textAlign': 'center', 'marginTop': 4};
        r9['lineHeight'] = r8;
        r8 = {};
        r8['alignItems'] = r3;
        r3 = {};
        r33 = {'flex': 1, 'zIndex': 3};
        r3['container'] = r33;
        r3['backgroundGradient'] = r32;
        r3['content'] = r31;
        r3['header'] = r30;
        r30 = {'width': 32, 'height': 32, 'justifyContent': 'center', 'alignItems': 'center'};
        r3['closeButton'] = r30;
        r30 = {'width': 30, 'height': 30};
        r3['closeIcon'] = r30;
        r30 = {'position': 'absolute', 'width': 16, 'height': 2, 'backgroundColor': '#FFFFFF', 'borderRadius': 1};
        r3['closeLine'] = r30;
        r30 = {'fontSize': 16, 'fontWeight': '500', 'color': '#FFFFFF'};
        r3['headerTitle'] = r30;
        r3['headerSpacer'] = r29;
        r3['publishMomentButton'] = r28;
        r3['publishMomentButtonText'] = r27;
        r27 = {'flexDirection': 'row', 'flex': 1, 'marginHorizontal': 16, 'justifyContent': 'space-around', 'zIndex': 0};
        r3['headerTabContainer'] = r27;
        r27 = {'minWidth': 0, 'marginHorizontal': 4};
        r3['headerTabContainerExperiment'] = r27;
        r3['headerTabItem'] = r26;
        r26 = {'minWidth': 0, 'flexShrink': 1, 'paddingHorizontal': 4, 'alignItems': 'center', 'position': 'relative'};
        r3['headerTabItemExperiment'] = r26;
        r26 = {'flexDirection': 'row', 'alignItems': 'center'};
        r3['headerTabContent'] = r26;
        r3['headerTabNeiceBadge'] = r25;
        r25 = {'fontSize': 8, 'fontWeight': '600', 'color': '#FFFFFF', 'lineHeight': 10, 'paddingVertical': 1, 'paddingHorizontal': 4, 'includeFontPadding': false};
        r3['headerTabNeiceText'] = r25;
        r25 = {'position': 'absolute', 'bottom': 0, 'left': 23, 'right': 23, 'height': 3, 'backgroundColor': '#FFFFFF', 'borderRadius': 1.5, 'zIndex': 0};
        r3['activeTabLine'] = r25;
        r25 = {'fontSize': 16, 'fontWeight': '400', 'color': 'rgba(255, 255, 255, 0.6)'};
        r3['headerTabText'] = r25;
        r25 = {'color': '#FFFFFF', 'fontWeight': '500'};
        r3['headerActiveTabText'] = r25;
        r25 = {'marginHorizontal': 16, 'marginBottom': 20};
        r3['activitySection'] = r25;
        r25 = {'flexDirection': 'row', 'alignItems': 'center', 'backgroundColor': 'rgba(255, 0, 0, 0.3)', 'borderRadius': 8, 'padding': 12};
        r3['activityContent'] = r25;
        r25 = {'width': 24, 'height': 24, 'marginRight': 8};
        r3['activityIcon'] = r25;
        r25 = {'width': 24, 'height': 24, 'backgroundColor': 'rgba(255, 255, 255, 0.2)', 'borderRadius': 12};
        r3['iconPlaceholder'] = r25;
        r25 = {'flex': 1, 'fontSize': 14, 'fontWeight': '500', 'color': '#FFA939'};
        r3['activityText'] = r25;
        r25 = {'width': 20, 'height': 20, 'justifyContent': 'center', 'alignItems': 'center'};
        r3['activityArrow'] = r25;
        r25 = {'fontSize': 16, 'color': '#FFA939', 'fontWeight': 'bold'};
        r3['arrowText'] = r25;
        r25 = {'flex': 1, 'minHeight': 48, 'width': '100%'};
        r3['tabSwipeStrip'] = r25;
        r3['mainContent'] = r24;
        r3['tabPageWrap'] = r23;
        r3['section'] = r22;
        r3['sectionHeader'] = r21;
        r21 = {'fontSize': 14, 'fontWeight': '400', 'color': '#FFFFFF'};
        r3['sectionTitle'] = r21;
        r21 = {'width': '80%', 'flexDirection': 'row', 'alignItems': 'center'};
        r3['nameInputAI'] = r21;
        r21 = {'backgroundColor': 'rgba(255, 255, 255, 0.1)', 'borderRadius': 8, 'padding': 16};
        r3['nameInputContainer'] = r21;
        r21 = {'flexDirection': 'row', 'alignItems': 'center', 'justifyContent': 'space-around', 'backgroundColor': '#00000033', 'borderRadius': 8, 'paddingLeft': 10};
        r3['inputWrapper'] = r21;
        r21 = {'flex': 1, 'fontSize': 14, 'color': '#FFFFFF', 'paddingVertical': 8};
        r3['nameInput'] = r21;
        r21 = {'width': 55, 'height': 26, 'marginLeft': 10};
        r3['replaceAIButton'] = r21;
        r21 = {'width': '100%', 'height': '100%'};
        r3['replaceAIImage'] = r21;
        r21 = {'backgroundColor': 'rgba(255, 255, 255, 0.1)', 'borderRadius': 8, 'flexDirection': 'row', 'justifyContent': 'space-around'};
        r3['infoContainer'] = r21;
        r21 = {'flexDirection': 'row', 'alignItems': 'center', 'justifyContent': 'center', 'paddingHorizontal': 20, 'paddingVertical': 8, 'width': '40%'};
        r3['infoItem'] = r21;
        r21 = {'fontSize': 12, 'color': '#FFFFFF', 'fontWeight': '400'};
        r3['infoText'] = r21;
        r21 = {'height': 16, 'width': 16};
        r3['infoArrow'] = r21;
        r21 = {'height': 0.5, 'backgroundColor': 'rgba(255, 255, 255, 0.08)', 'marginHorizontal': 20};
        r3['divider'] = r21;
        r21 = {'flexDirection': 'row', 'alignItems': 'center', 'justifyContent': 'center', 'height': 96, 'paddingHorizontal': 16, 'paddingBottom': 34, 'width': '100%'};
        r3['bottomSection'] = r21;
        r21 = {'flex': 1, 'marginLeft': 16};
        r3['bottomSectionChild'] = r21;
        r21 = {'fontSize': 12, 'color': '#FFFFFF', 'textAlign': 'center', 'marginBottom': 16, 'marginTop': 8};
        r3['remainingText'] = r21;
        r21 = {'backgroundColor': '#25D4D0', 'borderRadius': 31, 'paddingVertical': 16};
        r3['createButton'] = r21;
        r3['createButtonDisabled'] = r20;
        r20 = {'fontSize': 16, 'fontWeight': '500', 'color': '#FFFFFF', 'textAlign': 'center'};
        r3['createButtonText'] = r20;
        r20 = {'height': 5, 'backgroundColor': '#FFFFFF', 'borderRadius': 2.5, 'marginHorizontal': 134, 'marginBottom': 8};
        r3['homeIndicator'] = r20;
        r20 = {'height': 16, 'width': 16, 'marginRight': 8};
        r3['clearIcon'] = r20;
        r20 = {'height': 48, 'width': 48, 'paddingVertical': 16};
        r3['changeBackgroundIcon'] = r20;
        r20 = {'marginTop': 8, 'paddingHorizontal': 4};
        r3['validationContainer'] = r20;
        r20 = {'flexDirection': 'row', 'alignItems': 'center', 'justifyContent': 'flex-start'};
        r3['validContent'] = r20;
        r20 = {'width': 12, 'height': 12, 'marginRight': 2};
        r3['validationIcon'] = r20;
        r20 = {'fontSize': 12, 'color': '#25D4D0', 'fontWeight': '400'};
        r3['validationMessage'] = r20;
        r20 = {'fontSize': 12, 'color': '#25D4D0', 'fontWeight': '400'};
        r3['validatingText'] = r20;
        r3['playTypeSection'] = r19;
        r3['playTypeSectionExperiment'] = r18;
        r18 = {'minHeight': 120, 'backgroundColor': 'rgba(255, 255, 255, 0.05)', 'borderRadius': 8, 'padding': 16, 'justifyContent': 'center', 'alignItems': 'center'};
        r3['tabContent'] = r18;
        r18 = {'fontSize': 16, 'color': 'rgba(255, 255, 255, 0.8)', 'textAlign': 'center'};
        r3['tabContentText'] = r18;
        r3['gameplayItemWrapper'] = r17;
        r17 = {'position': 'absolute', 'top': 4294967292, 'right': 0, 'width': 20, 'height': 20};
        r3['gameplayTagIcon'] = r17;
        r17 = {'borderWidth': 2, 'borderColor': '#25D4D0'};
        r3['gameplayItemSelected'] = r17;
        r3['playGameContentExperiment'] = r16;
        r3['scrollContentExperiment'] = r15;
        r3['gameplayRowExperiment'] = r14;
        r3['gameplayItemContentExperiment'] = r13;
        r3['gameplayItemPlaceholderExperiment'] = r12;
        r3['gameplayItemExperiment'] = r11;
        r3['gameplayIconExperiment'] = r10;
        r10 = {'fontSize': 10, 'color': 'rgba(255, 255, 255, 0.8)', 'textAlign': 'center'};
        r3['gameplayText'] = r10;
        r3['gameNameExperiment'] = r9;
        r9 = {'borderTopWidth': 0.5, 'borderTopColor': 'rgba(255, 255, 255, 0.08)', 'width': '95%', 'marginTop': 12, 'flexDirection': 'row'};
        r3['hotTopicContainer'] = r9;
        r9 = {'flex': 1, 'paddingTop': 12, 'marginLeft': 10};
        r3['hotTopicScrollView'] = r9;
        r3['hotTopicScrollContent'] = r8;
        r8 = {'marginRight': 12, 'flexDirection': 'row', 'alignItems': 'center', 'justifyContent': 'center', 'paddingHorizontal': 8, 'paddingVertical': 6, 'backgroundColor': '#00000033', 'borderRadius': 16};
        r3['hotTopicItem'] = r8;
        r8 = {'width': 11, 'height': 11, 'borderRadius': 5.5, 'backgroundColor': '#00000033', 'marginRight': 4};
        r3['hotTopicIcon'] = r8;
        r8 = {'fontSize': 11, 'color': 'rgba(255, 255, 255, 0.9)', 'textAlign': 'left', 'fontWeight': '400'};
        r3['hotTopicName'] = r8;
        r8 = {'width': '100%', 'height': '100%'};
        r3['moreTopic'] = r8;
        r3 = r6.bind(r7)(r3);
        _closure1_slot28 = r3;
        r3 = 43;
        r3 = r5[r3];
        r3 = r4.bind(r0)(r3);
        r3 = r3.observer;
        r1 = function() { // Original name: H, environment: r1
            _fun13: for(var _fun13_ip = 0; ; ) switch(_fun13_ip) {
case 0:
                r7 = '[]';
                r3 = undefined;
                r90 = '0';
                r2 = '1';
                r58 = null;
                r1 = '唱片机·开';
                r68 = '唱片机·关';
                r54 = 'screencast';
                r57 = 'camera';
                r5 = _closure1_slot0;
                r6 = _closure1_slot1;
                r0 = 22;
                r0 = r6[r0];
                r0 = r5.bind(r3)(r0);
                r0 = r0.useSRNPageContext;
                r0 = r0.bind(r3)();
                r46 = r0.navigation;
                r0 = r0.route;
                var _closure2_slot122 = r0;
                r4 = 23;
                r4 = r6[r4];
                r4 = r5.bind(r3)(r4);
                r4 = r4.useSafeAreaInsets;
                r36 = r4.bind(r3)();
                r5 = _closure1_slot7;
                r6 = r5.useState;
                r4 = function() { // Environment: r18
                    r2 = _closure1_slot35;
                    r0 = _closure2_slot122;
                    r1 = r0.params;
                    r0 = undefined;
                    r0 = r2.bind(r0)(r1);
                    return r0;
                };
                r8 = r6.bind(r3)(r4);
                r6 = _closure1_slot3;
                r4 = r6.default;
                r79 = 2;
                r8 = r4.bind(r3)(r8, r79);
                r41 = 0;
                r4 = r8[r41];
                r49 = 1;
                r8 = r8[r49];
                var _closure2_slot124 = r8;
                r10 = r5.useEffect;
                r8 = r0.params;
                r9 = new Array(1);
                r9[0] = r8;
                r8 = function() { // Environment: r18
                    r2 = _closure2_slot124;
                    r3 = _closure1_slot35;
                    r0 = _closure2_slot122;
                    r1 = r0.params;
                    r0 = undefined;
                    r1 = r3.bind(r0)(r1);
                    r1 = r2.bind(r0)(r1);
                    return r0;
                };
                r8 = r10.bind(r3)(r8, r9);
                r10 = r5.useMemo;
                r9 = function() { // Environment: r18
                    _fun16: for(var _fun16_ip = 0; ; ) switch(_fun16_ip) {
case 0:
                        r4 = undefined;
                        r1 = _closure1_slot0;
                        r2 = _closure1_slot1;
                        r0 = 22;
                        r0 = r2[r0];
                        r0 = r1.bind(r4)(r0);
                        r2 = r0.SRNApiConfig;
                        r1 = r2.get;
                        r0 = ['hide_create_room_party_type'];
                        r1 = r1.bind(r2)(r0);
                        r0 = null;
                        r3 = undefined;
                        if(!(r0 != r1)) { _fun16_ip = 62; continue _fun16 }
case 56:
                        r3 = r1.hide_create_room_party_type;
case 62:
                        r0 = r0 == r3;
                        if(r0) { _fun16_ip = 116; continue _fun16 }
case 69:
                        r5 = 'boolean';
                        r2 = typeof r3;
                        r1 = r3;
                        if(!(r5 !== r2)) { _fun16_ip = 113; continue _fun16 }
case 83:
                        r2 = global;
                        r2 = r2.String;
                        r3 = r2.bind(r4)(r3);
                        r2 = r3.toLowerCase;
                        r3 = r2.bind(r3)();
                        r2 = 'false';
                        r1 = r2 !== r3;
case 113:
                        r0 = r1;
case 116:
                        return r0;
                    }
                };
                r8 = new Array(0);
                r8 = r10.bind(r3)(r9, r8);
                var _closure2_slot0 = r8;
                r9 = r5.useState;
                r8 = new Array(0);
                r8 = r9.bind(r3)(r8);
                r6 = r6.default;
                r6 = r6.bind(r3)(r8, r79);
                r32 = r6[r41];
                r6 = r6[r49];
                var _closure2_slot1 = r6;
                r8 = r5.useEffect;
                r6 = function() { // Environment: r18
                    _fun17: for(var _fun17_ip = 0; ; ) switch(_fun17_ip) {
case 0:
                        r1 = _closure2_slot0;
                        if(r1) { _fun17_ip = 53; continue _fun17 }
case 12:
                        r1 = false;
                        var _closure3_slot0 = r1;
                        r1 = _closure1_slot2;
                        r3 = r1.default;
                        r2 = undefined;
                        r1 = function* () { // Environment: r0
                            r0 = function* () { // Original name: ?anon_0_, environment: r0
                                _fun19: for(var _fun19_ip = 0; ; ) switch(_fun19_ip) {
case 0:
                                    StartGenerator();
                                    r1 = undefined;
                                    r3 = undefined;
                                    r7 = undefined;
                                    r4 = undefined;
                                    ResumeGenerator(result_out_reg=0, return_bool_out_reg=2);
                                    if(r2) { _fun19_ip = 175; continue _fun19 }
case 18:
                                    r4 = undefined;
                                    r7 = undefined;
                                    r3 = undefined;
case 24: // try_start_0
                                    r5 = _closure1_slot0;
                                    r6 = _closure1_slot1;
                                    r2 = 24;
                                    r2 = r6[r2];
                                    r2 = r5.bind(r1)(r2);
                                    r2 = r2.getRoomTagInfo;
                                    r2 = r2.bind(r1)();
                                    SaveGenerator(address=61);
case 59:
                                    return r2;
case 61:
                                    ResumeGenerator(result_out_reg=2, return_bool_out_reg=5);
                                    if(r5) { _fun19_ip = 141; continue _fun19 }
case 67:
                                    r7 = r2;
                                    r6 = null;
                                    r5 = undefined;
                                    if(!(r6 != r2)) { _fun19_ip = 84; continue _fun19 }
case 78:
                                    r5 = r7.res;
case 84:
                                    r4 = r5;
                                    if(!(r6 == r5)) { _fun19_ip = 97; continue _fun19 }
case 91:
                                    r6 = new Array(0);
                                    _fun19_ip = 100; continue _fun19;
case 97:
                                    r6 = r4;
case 100:
                                    r5 = r6.map;
                                    r4 = function(a0) { // Environment: r4
                                        r0 = a0;
                                        r1 = global;
                                        r3 = r1.String;
                                        r2 = r0.id;
                                        r1 = undefined;
                                        r2 = r3.bind(r1)(r2);
                                        r1 = r0.classifyName;
                                        r0 = {};
                                        r0['id'] = r2;
                                        r0['title'] = r1;
                                        return r0;
                                    };
                                    r3 = r5.bind(r6)(r4);
                                    r4 = _closure3_slot0;
                                    if(r4) { _fun19_ip = 139; continue _fun19 }
case 127:
                                    r4 = _closure2_slot1;
                                    r3 = r4.bind(r1)(r3);
case 139: // try_end0
                                    _fun19_ip = 172; continue _fun19;
case 141:
                                    return r2;
case 144: // catch_target0
                                    CatchBlockStart(arg_register=2);
                                    r2 = _closure3_slot0;
                                    if(r2) { _fun19_ip = 172; continue _fun19 }
case 156:
                                    r3 = _closure2_slot1;
                                    r2 = new Array(0);
                                    r2 = r3.bind(r1)(r2);
case 172:
                                    return r1;
case 175:
                                    return r0;
                                }
                            };
                            return r0;
                        };
                        r1 = r3.bind(r2)(r1);
                        r1 = r1.bind(r2)();
                        r0 = function() { // Environment: r0
                            r0 = true;
                            _closure3_slot0 = r0;
                            r0 = undefined;
                            return r0;
                        };
                        return r0;
case 53:
                        r0 = undefined;
                        return r0;
                    }
                };
                r5 = new Array(0);
                r5 = r8.bind(r3)(r6, r5);
                r53 = global;
                r6 = r53.JSON;
                r5 = r6.parse;
                r8 = r0.params;
                r0 = undefined;
                if(!(r58 != r8)) { _fun13_ip = 299; continue _fun13 }
case 293:
                r0 = r8.playModeBlacklist;
case 299:
                if(r0) { _fun13_ip = 305; continue _fun13 }
case 302:
                r0 = r7;
case 305:
                r0 = r5.bind(r6)(r0);
                r89 = {};
                r89['filterPlayTypeCodes'] = r0;
                r66 = true;
                r89['enableFilter'] = r66;
                r45 = _closure1_slot7;
                r0 = r45.useRef;
                r35 = r0.bind(r3)(r58);
                r0 = r45.useRef;
                r44 = r0.bind(r3)(r58);
                r0 = r45.useRef;
                r40 = r0.bind(r3)(r58);
                r0 = r45.useRef;
                r65 = r0.bind(r3)(r58);
                r0 = r45.useRef;
                r64 = r0.bind(r3)(r58);
                r0 = r45.useRef;
                r63 = r0.bind(r3)(r58);
                r0 = r45.useRef;
                r5 = r0.bind(r3)(r41);
                r0 = r45.useRef;
                r26 = false;
                r62 = r0.bind(r3)(r26);
                r0 = r45.useState;
                r15 = 'effect';
                r6 = r0.bind(r3)(r15);
                r10 = _closure1_slot3;
                r0 = r10.default;
                r0 = r0.bind(r3)(r6, r79);
                r33 = r0[r41];
                r52 = r0[r49];
                r0 = r45.useState;
                r6 = r0.bind(r3)(r41);
                r0 = r10.default;
                r0 = r0.bind(r3)(r6, r79);
                r28 = r0[r41];
                r42 = r0[r49];
                r0 = r45.useState;
                r6 = r0.bind(r3)(r26);
                r0 = r10.default;
                r0 = r0.bind(r3)(r6, r79);
                r20 = r0[r41];
                r78 = r0[r49];
                r6 = r45.useState;
                r0 = function() { // Environment: r18
                    _fun22: for(var _fun22_ip = 0; ; ) switch(_fun22_ip) {
case 0:
                        r2 = _closure1_slot22;
                        r2 = r2.tabs;
                        r2 = r2.showVideoTab;
                        r0 = null;
                        if(!r2) { _fun22_ip = 51; continue _fun22 }
case 22:
                        r1 = _closure1_slot10;
                        r1 = r1.default;
                        r2 = r1.prototype;
                        r2 = Object.create(r2, {constructor: {value: r1}});
                        r3 = r2;
                        r1 = new r3[r1](r2);
                        r0 = r1 instanceof Object ? r1 : r2;
case 51:
                        return r0;
                    }
                };
                r6 = r6.bind(r3)(r0);
                r0 = r10.default;
                r0 = r0.bind(r3)(r6, r49);
                r88 = r0[r41];
                r0 = r45.useRef;
                r77 = r0.bind(r3)(r26);
                r0 = r45.useRef;
                r76 = r0.bind(r3)(r26);
                r0 = r45.useRef;
                r48 = r0.bind(r3)(r26);
                r0 = r45.useState;
                r6 = r0.bind(r3)(r26);
                r0 = r10.default;
                r0 = r0.bind(r3)(r6, r79);
                r19 = r0[r41];
                r16 = r0[r49];
                r0 = r45.useRef;
                r74 = r0.bind(r3)(r41);
                r0 = r45.useRef;
                r73 = r0.bind(r3)(r58);
                r0 = r45.useRef;
                r72 = r0.bind(r3)(r26);
                r0 = r45.useRef;
                r24 = r0.bind(r3)(r58);
                r0 = r45.useRef;
                r87 = r0.bind(r3)(r66);
                r0 = r45.useRef;
                r86 = r0.bind(r3)(r58);
                r0 = r45.useRef;
                r85 = r0.bind(r3)(r58);
                r0 = r45.useRef;
                r84 = r0.bind(r3)(r58);
                r6 = r45.useState;
                r0 = '默认';
                r6 = r6.bind(r3)(r0);
                r0 = r10.default;
                r0 = r0.bind(r3)(r6, r79);
                r71 = r0[r41];
                r83 = r0[r49];
                r0 = r45.useState;
                r6 = r0.bind(r3)(r26);
                r0 = r10.default;
                r0 = r0.bind(r3)(r6, r79);
                r70 = r0[r41];
                r82 = r0[r49];
                r0 = r45.useState;
                r6 = r0.bind(r3)(r26);
                r0 = r10.default;
                r0 = r0.bind(r3)(r6, r79);
                r75 = r0[r41];
                r67 = r0[r49];
                r6 = r45.useState;
                r0 = '闲聊唠嗑';
                r6 = r6.bind(r3)(r0);
                r0 = r10.default;
                r0 = r0.bind(r3)(r6, r79);
                r69 = r0[r41];
                r51 = r0[r49];
                r0 = r45.useState;
                r6 = r0.bind(r3)(r26);
                r0 = r10.default;
                r0 = r0.bind(r3)(r6, r79);
                r50 = r0[r41];
                r22 = r0[r49];
                r0 = r45.useState;
                r6 = r0.bind(r3)(r58);
                r0 = r10.default;
                r0 = r0.bind(r3)(r6, r79);
                r61 = r0[r41];
                r17 = r0[r49];
                r6 = r45.useState;
                r0 = '已公开';
                r6 = r6.bind(r3)(r0);
                r0 = r10.default;
                r0 = r0.bind(r3)(r6, r79);
                r60 = r0[r41];
                r47 = r0[r49];
                r0 = r45.useState;
                r6 = r0.bind(r3)(r41);
                r0 = r10.default;
                r6 = r0.bind(r3)(r6, r79);
                r0 = r6[r41];
                r39 = r6[r49];
                r7 = r45.useState;
                r6 = _closure1_slot8;
                r6 = r6.Animated;
                r6 = r6.Value;
                r8 = r6.prototype;
                r8 = Object.create(r8, {constructor: {value: r6}});
                r95 = r8;
                r94 = 0;
                r6 = new r95[r6](r94, r93);
                r6 = r6 instanceof Object ? r6 : r8;
                r7 = r7.bind(r3)(r6);
                r6 = r10.default;
                r6 = r6.bind(r3)(r7, r49);
                r38 = r6[r41];
                r6 = r45.useState;
                r7 = r6.bind(r3)(r26);
                r6 = r10.default;
                r7 = r6.bind(r3)(r7, r79);
                r6 = r7[r41];
                r23 = r7[r49];
                r7 = r45.useState;
                r8 = r7.bind(r3)(r26);
                r7 = r10.default;
                r7 = r7.bind(r3)(r8, r79);
                r80 = r7[r41];
                r21 = r7[r49];
                r7 = r45.useState;
                r8 = r7.bind(r3)(r41);
                r7 = r10.default;
                r7 = r7.bind(r3)(r8, r79);
                r37 = r7[r41];
                r34 = r7[r49];
                r7 = r45.useState;
                r8 = r7.bind(r3)(r58);
                r7 = r10.default;
                r7 = r7.bind(r3)(r8, r79);
                r31 = r7[r41];
                r30 = r7[r49];
                r7 = r45.useState;
                r8 = r7.bind(r3)(r58);
                r7 = r10.default;
                r7 = r7.bind(r3)(r8, r79);
                r29 = r7[r41];
                r27 = r7[r49];
                r7 = r45.useState;
                r8 = r7.bind(r3)(r58);
                r7 = r10.default;
                r7 = r7.bind(r3)(r8, r79);
                r8 = r7[r41];
                r25 = r7[r49];
                r8 = r45.useState;
                r7 = new Array(0);
                r8 = r8.bind(r3)(r7);
                r7 = r10.default;
                r7 = r7.bind(r3)(r8, r79);
                r14 = r7[r41];
                r13 = r7[r49];
                r8 = r45.useState;
                r7 = new Array(0);
                r8 = r8.bind(r3)(r7);
                r7 = r10.default;
                r7 = r7.bind(r3)(r8, r79);
                r11 = r7[r41];
                r9 = r7[r49];
                r7 = r45.useState;
                r43 = '';
                r8 = r7.bind(r3)(r43);
                r7 = r10.default;
                r7 = r7.bind(r3)(r8, r79);
                r81 = r7[r41];
                r59 = r7[r49];
                r7 = r45.useState;
                r8 = r7.bind(r3)(r26);
                r7 = r10.default;
                r7 = r7.bind(r3)(r8, r79);
                r8 = r7[r41];
                r7 = r7[r49];
                r7 = r45.useState;
                r8 = r7.bind(r3)(r58);
                r7 = r10.default;
                r7 = r7.bind(r3)(r8, r79);
                r56 = r7[r41];
                r55 = r7[r49];
                r7 = r45.useState;
                r8 = r7.bind(r3)(r26);
                r7 = r10.default;
                r7 = r7.bind(r3)(r8, r79);
                r8 = r7[r41];
                r7 = r7[r49];
                r45 = r45.useState;
                r45 = r45.bind(r3)(r26);
                r10 = r10.default;
                r10 = r10.bind(r3)(r45, r79);
                r45 = r10[r41];
                r10 = r10[r49];
                r92 = _closure1_slot0;
                r91 = _closure1_slot1;
                r45 = 25;
                r91 = r91[r45];
                r91 = r92.bind(r3)(r91);
                r91 = r91.trim;
                r91 = r91.bind(r3)(r71);
                if(!(r43 === r91)) { _fun13_ip = 1404; continue _fun13 }
case 1401:
                r2 = r90;
case 1404:
                var _closure2_slot2 = r89;
                var _closure2_slot15 = r88;
                var _closure2_slot24 = r87;
                var _closure2_slot25 = r86;
                var _closure2_slot26 = r85;
                var _closure2_slot27 = r84;
                var _closure2_slot29 = r83;
                var _closure2_slot31 = r82;
                var _closure2_slot32 = r75;
                var _closure2_slot33 = r67;
                var _closure2_slot35 = r51;
                var _closure2_slot36 = r50;
                var _closure2_slot41 = r47;
                var _closure2_slot42 = r39;
                var _closure2_slot43 = r38;
                var _closure2_slot46 = r37;
                var _closure2_slot47 = r34;
                var _closure2_slot48 = r31;
                var _closure2_slot49 = r30;
                var _closure2_slot50 = r29;
                var _closure2_slot51 = r27;
                var _closure2_slot52 = r25;
                var _closure2_slot53 = r14;
                var _closure2_slot54 = r13;
                var _closure2_slot55 = r11;
                var _closure2_slot56 = r9;
                var _closure2_slot67 = r3;
                var _closure2_slot69 = r3;
                var _closure2_slot72 = r3;
                var _closure2_slot73 = r3;
                var _closure2_slot74 = r3;
                var _closure2_slot75 = r3;
                var _closure2_slot77 = r3;
                var _closure2_slot79 = r3;
                var _closure2_slot81 = r3;
                var _closure2_slot82 = r3;
                var _closure2_slot83 = r3;
                var _closure2_slot84 = r3;
                var _closure2_slot85 = r3;
                var _closure2_slot86 = r3;
                var _closure2_slot87 = r3;
                var _closure2_slot88 = r3;
                var _closure2_slot89 = r3;
                var _closure2_slot90 = r3;
                var _closure2_slot91 = r3;
                var _closure2_slot92 = r3;
                var _closure2_slot93 = r3;
                var _closure2_slot94 = r3;
                var _closure2_slot95 = r3;
                var _closure2_slot96 = r3;
                var _closure2_slot97 = r3;
                var _closure2_slot99 = r3;
                var _closure2_slot100 = r3;
                var _closure2_slot123 = r4;
                var _closure2_slot63 = r2;
                r9 = _closure1_slot7;
                r11 = r9.useEffect;
                r4 = new Array(1);
                r4[0] = r2;
                r2 = function() { // Environment: r18
                    r2 = _closure1_slot0;
                    r1 = _closure1_slot1;
                    r0 = 22;
                    r1 = r1[r0];
                    r0 = undefined;
                    r1 = r2.bind(r0)(r1);
                    r5 = r1.SRNApiEventTrack;
                    r4 = r5.eventExpose;
                    r1 = _closure2_slot63;
                    r3 = {};
                    r3['Btn_Type'] = r1;
                    r2 = 'GroupChat_CreateRoomPage_NameBeautBtnExp';
                    r1 = '';
                    r1 = r4.bind(r5)(r2, r1, r3);
                    return r0;
                };
                r2 = r11.bind(r3)(r2, r4);
                r2 = r9.useState;
                r4 = r2.bind(r3)(r26);
                r27 = _closure1_slot3;
                r2 = r27.default;
                r2 = r2.bind(r3)(r4, r79);
                r37 = r2[r41];
                r13 = r2[r49];
                r2 = r9.useState;
                r4 = r2.bind(r3)(r26);
                r2 = r27.default;
                r2 = r2.bind(r3)(r4, r79);
                r4 = r2[r41];
                r34 = r2[r49];
                r4 = r9.useState;
                r2 = _closure1_slot25;
                r4 = r4.bind(r3)(r2);
                r2 = r27.default;
                r2 = r2.bind(r3)(r4, r79);
                r51 = r2[r41];
                r2 = r2[r49];
                _closure2_slot67 = r2;
                r4 = r9.useState;
                r2 = 'all';
                r4 = r4.bind(r3)(r2);
                r2 = r27.default;
                r2 = r2.bind(r3)(r4, r79);
                r50 = r2[r41];
                r2 = r2[r49];
                _closure2_slot69 = r2;
                r2 = r9.useState;
                r4 = r2.bind(r3)(r58);
                r2 = r27.default;
                r2 = r2.bind(r3)(r4, r79);
                r47 = r2[r41];
                r14 = r2[r49];
                r2 = r9.useState;
                r4 = r2.bind(r3)(r43);
                r2 = r27.default;
                r2 = r2.bind(r3)(r4, r79);
                r11 = r2[r41];
                r2 = r2[r49];
                _closure2_slot72 = r2;
                r2 = r9.useState;
                r4 = r2.bind(r3)(r58);
                r2 = r27.default;
                r2 = r2.bind(r3)(r4, r79);
                r4 = r2[r41];
                r2 = r2[r49];
                _closure2_slot73 = r2;
                r2 = r9.useState;
                r25 = r2.bind(r3)(r58);
                r2 = r27.default;
                r2 = r2.bind(r3)(r25, r79);
                r83 = r2[r41];
                r2 = r2[r49];
                _closure2_slot74 = r2;
                r25 = r9.useState;
                r2 = new Array(0);
                r25 = r25.bind(r3)(r2);
                r2 = r27.default;
                r2 = r2.bind(r3)(r25, r79);
                r75 = r2[r41];
                r2 = r2[r49];
                _closure2_slot75 = r2;
                r2 = r9.useState;
                r25 = r2.bind(r3)(r43);
                r2 = r27.default;
                r2 = r2.bind(r3)(r25, r79);
                r31 = r2[r41];
                r2 = r2[r49];
                _closure2_slot77 = r2;
                r2 = r9.useState;
                r25 = r2.bind(r3)(r43);
                r2 = r27.default;
                r25 = r2.bind(r3)(r25, r79);
                r2 = r25[r41];
                r25 = r25[r49];
                _closure2_slot79 = r25;
                r29 = r9.useState;
                r25 = new Array(0);
                r29 = r29.bind(r3)(r25);
                r25 = r27.default;
                r25 = r25.bind(r3)(r29, r79);
                r30 = r25[r41];
                r25 = r25[r49];
                _closure2_slot81 = r25;
                r38 = r9.useMemo;
                r29 = function() { // Environment: r18
                    _fun24: for(var _fun24_ip = 0; ; ) switch(_fun24_ip) {
case 0: // try_start_0
                        r2 = _closure1_slot0;
                        r1 = _closure1_slot1;
                        r0 = 22;
                        r1 = r1[r0];
                        r0 = undefined;
                        r0 = r2.bind(r0)(r1);
                        r2 = r0.SRNApiConfig;
                        r1 = r2.ab;
                        r0 = '221208';
                        r1 = r1.bind(r2)(r0);
case 45: // try_end0
                        r0 = 'b';
                        r0 = r1 === r0;
                        return r0;
case 55: // catch_target0
                        CatchBlockStart(arg_register=0);
                        r0 = false;
                        return r0;
                    }
                };
                r25 = new Array(0);
                r38 = r38.bind(r3)(r29, r25);
                r29 = _closure1_slot0;
                r39 = _closure1_slot1;
                r25 = 26;
                r25 = r39[r25];
                r25 = r29.bind(r3)(r25);
                r29 = r25.shouldShowCreateRoomPublishMoment;
                r25 = _closure2_slot123;
                r25 = r25.joinCode;
                r25 = r29.bind(r3)(r38, r25);
                r29 = _closure1_slot8;
                r29 = r29.useWindowDimensions;
                r29 = r29.bind(r3)();
                r29 = r29.width;
                _closure2_slot82 = r29;
                r29 = 375;
                _closure2_slot83 = r29;
                r39 = r9.useCallback;
                r29 = _closure2_slot82;
                r38 = new Array(1);
                r38[0] = r29;
                r29 = function(a0) { // Environment: r18
                    r2 = _closure2_slot82;
                    r1 = a0;
                    r1 = r1 * r2;
                    r0 = _closure2_slot83;
                    r0 = r1 / r0;
                    return r0;
                };
                r29 = r39.bind(r3)(r29, r38);
                _closure2_slot84 = r29;
                r29 = r9.useRef;
                r29 = r29.bind(r3)(r58);
                _closure2_slot85 = r29;
                r29 = r9.useRef;
                r29 = r29.bind(r3)(r58);
                _closure2_slot86 = r29;
                r38 = r9.useState;
                r29 = {'left': 0, 'top': 0, 'opacity': 0};
                r38 = r38.bind(r3)(r29);
                r29 = r27.default;
                r29 = r29.bind(r3)(r38, r79);
                r67 = r29[r41];
                r29 = r29[r49];
                _closure2_slot87 = r29;
                r39 = r9.useCallback;
                r29 = _closure2_slot55;
                r38 = new Array(4);
                r38[0] = r29;
                r29 = _closure2_slot84;
                r38[1] = r29;
                r29 = 12;
                r38[2] = r29;
                r29 = 24;
                r38[3] = r29;
                r29 = function() { // Environment: r18
                    _fun26: for(var _fun26_ip = 0; ; ) switch(_fun26_ip) {
case 0:
                        r0 = undefined;
                        r5 = _closure2_slot55;
                        r4 = r5.some;
                        r3 = function(a0) { // Environment: r1
                            r0 = a0;
                            r1 = r0.tabCode;
                            r0 = 'youxi';
                            r0 = r0 === r1;
                            return r0;
                        };
                        r3 = r4.bind(r5)(r3);
                        if(r3) { _fun26_ip = 49; continue _fun26 }
case 29:
                        r3 = _closure2_slot87;
                        r2 = function(a0) { // Environment: r1
                            r0 = global;
                            r4 = r0.Object;
                            r3 = r4.assign;
                            r2 = {};
                            r0 = 0;
                            r2['opacity'] = r0;
                            r1 = {};
                            r0 = a0;
                            r0 = r3.bind(r4)(r1, r0, r2);
                            return r0;
                        };
                        r2 = r3.bind(r0)(r2);
                        var _closure3_slot0 = r0;
                        _fun26_ip = 87; continue _fun26;
case 49:
                        r2 = function() { // Original name: e, environment: r1
                            _fun28: for(var _fun28_ip = 0; ; ) switch(_fun28_ip) {
case 0:
                                r0 = undefined;
                                r3 = _closure2_slot85;
                                r3 = r3.current;
                                r2 = _closure2_slot86;
                                r4 = r2.current;
                                r2 = r3;
                                if(!r2) { _fun28_ip = 34; continue _fun28 }
case 31:
                                r2 = r4;
case 34:
                                var _closure4_slot0 = r4;
                                if(r2) { _fun28_ip = 43; continue _fun28 }
case 41:
                                _fun28_ip = 58; continue _fun28;
case 43:
                                r2 = r3.measureInWindow;
                                r1 = function(a0, a1) { // Environment: r1
                                    r1 = a0;
                                    var _closure5_slot0 = r1;
                                    r1 = a1;
                                    var _closure5_slot1 = r1;
                                    r2 = _closure4_slot0;
                                    r1 = r2.measureInWindow;
                                    r0 = function(a0, a1, a2) { // Environment: r0
                                        r1 = _closure5_slot0;
                                        r0 = a0;
                                        r1 = r0 - r1;
                                        r0 = a2;
                                        r5 = r1 + r0;
                                        r4 = _closure2_slot84;
                                        r0 = undefined;
                                        r3 = 2;
                                        r4 = r4.bind(r0)(r3);
                                        r3 = 12;
                                        r3 = r5 - r3;
                                        r4 = r3 + r4;
                                        r3 = _closure5_slot1;
                                        r2 = a1;
                                        r5 = r2 - r3;
                                        r3 = _closure2_slot84;
                                        r2 = 4.5;
                                        r3 = r3.bind(r0)(r2);
                                        r2 = 6;
                                        r2 = r5 - r2;
                                        r3 = r2 - r3;
                                        r2 = _closure2_slot87;
                                        r1 = {};
                                        r1['left'] = r4;
                                        r1['top'] = r3;
                                        r3 = 1;
                                        r1['opacity'] = r3;
                                        r1 = r2.bind(r0)(r1);
                                        return r0;
                                    };
                                    r0 = r1.bind(r2)(r0);
                                    r0 = undefined;
                                    return r0;
                                };
                                r1 = r2.bind(r3)(r1);
case 58:
                                return r0;
                            }
                        };
                        _closure3_slot0 = r2;
                        r2 = _closure1_slot8;
                        r3 = r2.InteractionManager;
                        r2 = r3.runAfterInteractions;
                        r1 = function() { // Environment: r1
                            r0 = global;
                            r2 = r0.requestAnimationFrame;
                            r0 = undefined;
                            r1 = function() { // Environment: r1
                                r0 = global;
                                r2 = r0.requestAnimationFrame;
                                r1 = _closure3_slot0;
                                r0 = undefined;
                                r1 = r2.bind(r0)(r1);
                                return r0;
                            };
                            r1 = r2.bind(r0)(r1);
                            return r0;
                        };
                        r1 = r2.bind(r3)(r1);
case 87:
                        return r0;
                    }
                };
                r29 = r39.bind(r3)(r29, r38);
                _closure2_slot88 = r29;
                r39 = r9.useEffect;
                r29 = _closure2_slot88;
                r38 = new Array(4);
                r38[0] = r29;
                r29 = _closure2_slot55;
                r38[1] = r29;
                r29 = _closure2_slot46;
                r38[2] = r29;
                r29 = _closure2_slot82;
                r38[3] = r29;
                r29 = function() { // Environment: r18
                    r1 = _closure2_slot88;
                    r0 = undefined;
                    r1 = r1.bind(r0)();
                    return r0;
                };
                r29 = r39.bind(r3)(r29, r38);
                r39 = r9.useCallback;
                r38 = function(a0) { // Environment: r18
                    _fun35: for(var _fun35_ip = 0; ; ) switch(_fun35_ip) {
case 0:
                        r2 = a0;
                        if(!r2) { _fun35_ip = 20; continue _fun35 }
case 6:
                        r1 = _closure2_slot72;
                        r0 = undefined;
                        r0 = r1.bind(r0)(r2);
case 20:
                        r2 = _closure2_slot73;
                        r0 = undefined;
                        r1 = null;
                        r1 = r2.bind(r0)(r1);
                        return r0;
                    }
                };
                r29 = new Array(0);
                r29 = r39.bind(r3)(r38, r29);
                _closure2_slot89 = r29;
                r39 = r9.useCallback;
                r29 = _closure2_slot89;
                r38 = new Array(4);
                r38[0] = r29;
                r29 = _closure2_slot46;
                r38[1] = r29;
                r29 = _closure2_slot55;
                r38[2] = r29;
                r29 = _closure2_slot123;
                r29 = r29.source;
                r38[3] = r29;
                r29 = function(a0) { // Environment: r18
                    _fun36: for(var _fun36_ip = 0; ; ) switch(_fun36_ip) {
case 0:
                        r2 = a0;
                        r4 = _closure2_slot55;
                        r3 = r4.find;
                        r0 = function(a0) { // Environment: r0
                            r0 = a0;
                            r1 = r0.id;
                            r0 = _closure2_slot46;
                            r0 = r1 === r0;
                            return r0;
                        };
                        r0 = r3.bind(r4)(r0);
                        r4 = r2.id;
                        r3 = _closure2_slot46;
                        r3 = r4 !== r3;
                        if(!r3) { _fun36_ip = 46; continue _fun36 }
case 43:
                        r3 = r0;
case 46:
                        if(!r3) { _fun36_ip = 111; continue _fun36 }
case 49:
                        r5 = _closure1_slot0;
                        r4 = _closure1_slot1;
                        r3 = 27;
                        r4 = r4[r3];
                        r3 = undefined;
                        r3 = r5.bind(r3)(r4);
                        r6 = r3.CreateRoomTrackPoint;
                        r5 = r6.eventCreateRoomPageSwitchTabClick;
                        r4 = r0.tabCode;
                        r3 = r2.tabCode;
                        r0 = _closure2_slot123;
                        r0 = r0.source;
                        r0 = r5.bind(r6)(r4, r3, r0);
case 111:
                        r4 = _closure2_slot47;
                        r3 = r2.id;
                        r0 = undefined;
                        r3 = r4.bind(r0)(r3);
                        r3 = r2.tabCode;
                        r2 = 'yuliao';
                        if(!(r2 === r3)) { _fun36_ip = 148; continue _fun36 }
case 140:
                        r1 = _closure2_slot89;
                        r1 = r1.bind(r0)();
case 148:
                        return r0;
                    }
                };
                r29 = r39.bind(r3)(r29, r38);
                _closure2_slot90 = r29;
                r39 = r9.useMemo;
                r29 = _closure2_slot55;
                r38 = new Array(3);
                r38[0] = r29;
                r29 = _closure2_slot46;
                r38[1] = r29;
                r29 = _closure2_slot90;
                r38[2] = r29;
                r29 = function() { // Environment: r18
                    r0 = _closure1_slot8;
                    r2 = r0.PanResponder;
                    r1 = r2.create;
                    r0 = {};
                    r4 = function() { // Original name: onStartShouldSetPanResponder, environment: r3
                        r0 = true;
                        return r0;
                    };
                    r0['onStartShouldSetPanResponder'] = r4;
                    r4 = function() { // Original name: onPanResponderTerminationRequest, environment: r3
                        r0 = false;
                        return r0;
                    };
                    r0['onPanResponderTerminationRequest'] = r4;
                    r3 = function(a0, a1) { // Original name: onPanResponderRelease, environment: r3
                        _fun41: for(var _fun41_ip = 0; ; ) switch(_fun41_ip) {
case 0:
                            r1 = a1;
                            r0 = undefined;
                            r7 = 1;
                            r3 = -1;
                            r9 = r1.dx;
                            r11 = r1.dy;
                            r10 = r1.vx;
                            r2 = _closure2_slot55;
                            r2 = r2.length;
                            r5 = r2 > r7;
                            if(!r5) { _fun41_ip = 132; continue _fun41 }
case 51:
                            r4 = global;
                            r6 = r4.Math;
                            r2 = r6.abs;
                            r6 = r2.bind(r6)(r9);
                            r2 = 12;
                            r2 = r6 > r2;
                            if(!r2) { _fun41_ip = 129; continue _fun41 }
case 79:
                            r8 = r4.Math;
                            r6 = r8.abs;
                            r6 = r6.bind(r8)(r9);
                            r8 = r4.Math;
                            r4 = r8.abs;
                            r8 = r4.bind(r8)(r11);
                            r4 = 1.35;
                            r4 = r4 * r8;
                            r2 = r6 > r4;
case 129:
                            r5 = r2;
case 132:
                            r4 = undefined;
                            if(!r5) { _fun41_ip = 203; continue _fun41 }
case 137:
                            r2 = -56;
                            r2 = r9 < r2;
                            if(r2) { _fun41_ip = 164; continue _fun41 }
case 150:
                            r6 = -0.4;
                            r2 = r10 < r6;
case 164:
                            r6 = r2;
                            if(r2) { _fun41_ip = 197; continue _fun41 }
case 170:
                            r8 = 56;
                            r8 = r9 > r8;
                            if(r8) { _fun41_ip = 194; continue _fun41 }
case 180:
                            r9 = 0.4;
                            r8 = r10 > r9;
case 194:
                            r6 = r8;
case 197:
                            r5 = r6;
                            r4 = r2;
case 203:
                            r2 = undefined;
                            if(!r5) { _fun41_ip = 239; continue _fun41 }
case 208:
                            r9 = _closure2_slot55;
                            r8 = r9.findIndex;
                            r6 = function(a0) { // Environment: r6
                                r0 = a0;
                                r1 = r0.id;
                                r0 = _closure2_slot46;
                                r0 = r1 === r0;
                                return r0;
                            };
                            r6 = r8.bind(r9)(r6);
                            r8 = 0;
                            r5 = r6 >= r8;
                            r2 = r6;
case 239:
                            if(!r5) { _fun41_ip = 326; continue _fun41 }
case 242:
                            if(!r4) { _fun41_ip = 248; continue _fun41 }
case 245:
                            r3 = r7;
case 248:
                            r4 = global;
                            r6 = r4.Math;
                            r5 = r6.min;
                            r9 = r4.Math;
                            r8 = r9.max;
                            r4 = r2 + r3;
                            r3 = 0;
                            r4 = r8.bind(r9)(r4, r3);
                            r3 = _closure2_slot55;
                            r3 = r3.length;
                            r3 = r3 - r7;
                            r4 = r5.bind(r6)(r4, r3);
                            if(!(r4 !== r2)) { _fun41_ip = 326; continue _fun41 }
case 309:
                            r3 = _closure2_slot90;
                            r2 = _closure2_slot55;
                            r2 = r2[r4];
                            r2 = r3.bind(r0)(r2);
case 326:
                            r2 = _closure1_slot8;
                            r3 = r2.Keyboard;
                            r2 = r3.dismiss;
                            r2 = r2.bind(r3)();
                            r1 = _closure2_slot27;
                            r2 = r1.current;
                            r1 = null;
                            if(!(r1 != r2)) { _fun41_ip = 372; continue _fun41 }
case 362:
                            r1 = r2.blur;
                            r1 = r1.bind(r2)();
case 372:
                            return r0;
                        }
                    };
                    r0['onPanResponderRelease'] = r3;
                    r0 = r1.bind(r2)(r0);
                    return r0;
                };
                r39 = r39.bind(r3)(r29, r38);
                r38 = r9.useState;
                r29 = new Array(0);
                r38 = r38.bind(r3)(r29);
                r29 = r27.default;
                r29 = r29.bind(r3)(r38, r79);
                r38 = r29[r41];
                r29 = r29[r49];
                _closure2_slot92 = r29;
                r82 = r9.useState;
                r29 = new Array(0);
                r29 = r82.bind(r3)(r29);
                r27 = r27.default;
                r27 = r27.bind(r3)(r29, r79);
                r29 = r27[r41];
                r27 = r27[r49];
                _closure2_slot93 = r27;
                r27 = function() { // Environment: r18
                    r1 = _closure1_slot2;
                    r3 = r1.default;
                    r2 = undefined;
                    r1 = function* () { // Environment: r0
                        r0 = function* () { // Original name: ?anon_0_, environment: r0
                            _fun45: for(var _fun45_ip = 0; ; ) switch(_fun45_ip) {
case 0:
                                StartGenerator();
                                r4 = undefined;
                                r10 = null;
                                r42 = '';
                                r33 = undefined;
                                r34 = undefined;
                                r35 = undefined;
                                r36 = undefined;
                                r37 = undefined;
                                r38 = undefined;
                                r39 = undefined;
                                r27 = undefined;
                                r28 = undefined;
                                r29 = undefined;
                                r30 = undefined;
                                r31 = undefined;
                                r5 = undefined;
                                r12 = undefined;
                                r6 = undefined;
                                r2 = undefined;
                                r3 = undefined;
                                r7 = undefined;
                                r14 = undefined;
                                r9 = undefined;
                                r8 = undefined;
                                r17 = undefined;
                                r22 = undefined;
                                r23 = undefined;
                                r24 = undefined;
                                r25 = undefined;
                                r26 = undefined;
                                r16 = undefined;
                                r20 = undefined;
                                r41 = undefined;
                                r40 = undefined;
                                r43 = undefined;
                                r1 = undefined;
                                r44 = undefined;
                                r19 = undefined;
                                r47 = undefined;
                                r54 = undefined;
                                r61 = undefined;
                                r63 = undefined;
                                r62 = undefined;
                                r21 = undefined;
                                r32 = undefined;
                                r46 = undefined;
                                r48 = undefined;
                                r51 = undefined;
                                r53 = undefined;
                                r50 = undefined;
                                r49 = undefined;
                                r45 = undefined;
                                r52 = undefined;
                                r55 = undefined;
                                r57 = undefined;
                                r58 = undefined;
                                r60 = undefined;
                                r56 = undefined;
                                r59 = undefined;
                                r67 = undefined;
                                r64 = undefined;
                                r68 = undefined;
                                r66 = undefined;
                                ResumeGenerator(result_out_reg=0, return_bool_out_reg=11);
                                if(r11) { _fun45_ip = 2168; continue _fun45 }
case 140:
                                r66 = undefined;
                                r68 = undefined;
                                r64 = undefined;
                                r67 = undefined;
                                r59 = undefined;
                                r56 = undefined;
                                r60 = undefined;
                                r58 = undefined;
                                r57 = undefined;
                                r55 = undefined;
                                r52 = undefined;
                                r45 = undefined;
                                r49 = undefined;
                                r50 = undefined;
                                r53 = undefined;
                                r51 = undefined;
                                r48 = undefined;
                                r46 = undefined;
                                r32 = undefined;
                                r21 = undefined;
                                r62 = undefined;
                                r63 = undefined;
                                r61 = undefined;
                                r54 = undefined;
                                r47 = undefined;
                                r19 = undefined;
                                r44 = undefined;
                                r1 = undefined;
                                r43 = undefined;
                                r40 = undefined;
                                r41 = undefined;
                                r20 = undefined;
                                r16 = undefined;
                                r26 = undefined;
                                r25 = undefined;
                                r24 = undefined;
                                r23 = undefined;
                                r22 = undefined;
                                r17 = undefined;
                                r8 = undefined;
                                r9 = undefined;
                                r14 = undefined;
                                r7 = undefined;
                                r3 = undefined;
                                r2 = undefined;
                                r6 = undefined;
                                r12 = undefined;
                                r5 = undefined;
                                r15 = global;
                                r69 = r15.JSON;
                                r65 = r69.parse;
                                r18 = _closure2_slot123;
                                r18 = r18.historyData;
                                r69 = r65.bind(r69)(r18);
                                _closure2_slot91 = r69;
                                r65 = _closure2_slot54;
                                r18 = undefined;
                                if(!(r10 != r69)) { _fun45_ip = 286; continue _fun45 }
case 281:
                                r18 = r69.playTypeClassifyMappingList;
case 286:
                                if(!(r10 == r18)) { _fun45_ip = 294; continue _fun45 }
case 290:
                                r18 = new Array(0);
case 294:
                                r18 = r65.bind(r4)(r18);
                                r18 = _closure2_slot15;
                                if(!(r10 != r18)) { _fun45_ip = 355; continue _fun45 }
case 307:
                                r70 = _closure2_slot15;
                                r69 = r70.applyServerCreateParams;
                                r18 = _closure2_slot91;
                                r65 = undefined;
                                if(!(r10 != r18)) { _fun45_ip = 333; continue _fun45 }
case 327:
                                r65 = r18.videoLiveCreateParams;
case 333:
                                r71 = _closure2_slot91;
                                r18 = undefined;
                                if(!(r10 != r71)) { _fun45_ip = 349; continue _fun45 }
case 343:
                                r18 = r71.screenLiveCreateParams;
case 349:
                                r18 = r69.bind(r70)(r65, r18);
case 355: // try_start_0
                                r65 = _closure1_slot0;
                                r69 = _closure1_slot1;
                                r18 = 24;
                                r18 = r69[r18];
                                r18 = r65.bind(r4)(r18);
                                r18 = r18.roomBasicConfig;
                                r18 = r18.bind(r4)();
                                SaveGenerator(address=392);
case 390:
                                return r18;
case 392:
                                ResumeGenerator(result_out_reg=18, return_bool_out_reg=65);
                                if(r65) { _fun45_ip = 403; continue _fun45 }
case 398:
                                r21 = r18;
case 401: // try_end0
                                _fun45_ip = 457; continue _fun45;
case 403:
                                return r18;
case 406: // catch_target0
                                CatchBlockStart(arg_register=18);
                                r65 = _closure1_slot0;
                                r69 = _closure1_slot1;
                                r18 = 26;
                                r18 = r69[r18];
                                r18 = r65.bind(r4)(r18);
                                r18 = r18.RoomConfigListModel;
                                r65 = r18.prototype;
                                r65 = Object.create(r65, {constructor: {value: r18}});
                                r75 = r65;
                                r18 = new r75[r18](r74);
                                r21 = r18 instanceof Object ? r18 : r65;
case 457:
                                r69 = r15.JSON;
                                r65 = r69.parse;
                                r18 = _closure2_slot123;
                                r18 = r18.remainTimes;
                                r69 = r65.bind(r69)(r18);
                                r65 = _closure2_slot42;
                                r18 = r15.parseInt;
                                r18 = r18.bind(r4)(r69);
                                r18 = r65.bind(r4)(r18);
                                r65 = _closure2_slot92;
                                r69 = r21;
                                r68 = r69;
                                r18 = undefined;
                                if(!(r10 != r69)) { _fun45_ip = 525; continue _fun45 }
case 519:
                                r18 = r68.positionContentRespList;
case 525:
                                r66 = r18;
                                if(!(r10 == r18)) { _fun45_ip = 538; continue _fun45 }
case 532:
                                r18 = new Array(0);
                                _fun45_ip = 541; continue _fun45;
case 538:
                                r18 = r66;
case 541:
                                r18 = r65.bind(r4)(r18);
                                r66 = _closure1_slot32;
                                r68 = r21;
                                r67 = r68;
                                r65 = undefined;
                                if(!(r10 != r68)) { _fun45_ip = 571; continue _fun45 }
case 565:
                                r65 = r67.backgroundClassifyList;
case 571:
                                r64 = r65;
                                if(!(r10 == r65)) { _fun45_ip = 584; continue _fun45 }
case 578:
                                r65 = new Array(0);
                                _fun45_ip = 587; continue _fun45;
case 584:
                                r65 = r64;
case 587:
                                r62 = r65;
                                r64 = _closure2_slot91;
                                r64 = r64.lastBackgroundId;
                                r64 = r66.bind(r4)(r65, r64);
                                r63 = r64;
                                r66 = _closure2_slot67;
                                r65 = r64.mediaId;
                                r65 = r66.bind(r4)(r65);
                                r64 = r64.backgroundUrl;
                                if(!r64) { _fun45_ip = 645; continue _fun45 }
case 631:
                                r64 = _closure2_slot72;
                                r63 = r63.backgroundUrl;
                                r63 = r64.bind(r4)(r63);
case 645:
                                r63 = _closure2_slot93;
                                r62 = r63.bind(r4)(r62);
                                r63 = r21;
                                r56 = r63;
                                r62 = undefined;
                                if(!(r10 != r63)) { _fun45_ip = 672; continue _fun45 }
case 666:
                                r62 = r56.recTopicInfo;
case 672:
                                r59 = r62;
                                r56 = null;
                                if(!(r56 != r62)) { _fun45_ip = 684; continue _fun45 }
case 681:
                                r56 = r59;
case 684:
                                r61 = r56;
                                r59 = _closure2_slot74;
                                r59 = r59.bind(r4)(r56);
                                r59 = _closure2_slot75;
                                r62 = r56;
                                r56 = undefined;
                                if(!(r10 != r62)) { _fun45_ip = 715; continue _fun45 }
case 709:
                                r56 = r61.topicList;
case 715:
                                r60 = r56;
                                if(!(r10 == r56)) { _fun45_ip = 728; continue _fun45 }
case 722:
                                r56 = new Array(0);
                                _fun45_ip = 731; continue _fun45;
case 728:
                                r56 = r60;
case 731:
                                r56 = r59.bind(r4)(r56);
                                r59 = r21;
                                r58 = r59;
                                r56 = undefined;
                                if(!(r10 != r59)) { _fun45_ip = 780; continue _fun45 }
case 748:
                                r58 = r58.tabConfigList;
                                r57 = r58;
                                r56 = undefined;
                                if(!(r10 != r58)) { _fun45_ip = 780; continue _fun45 }
case 762:
                                r59 = r57;
                                r58 = r59.find;
                                r57 = function(a0) { // Environment: r13
                                    r0 = a0;
                                    r1 = r0.tabCode;
                                    r0 = 'ktv';
                                    r0 = r0 === r1;
                                    return r0;
                                };
                                r56 = r58.bind(r59)(r57);
case 780:
                                r54 = r56;
                                r57 = undefined;
                                if(!(r10 != r56)) { _fun45_ip = 800; continue _fun45 }
case 789:
                                r56 = r54.playTypeConfigList;
                                r54 = 0;
                                r57 = r56[r54];
case 800:
                                r47 = r57;
                                r54 = _closure2_slot51;
                                r56 = undefined;
                                if(!(r10 != r57)) { _fun45_ip = 818; continue _fun45 }
case 813:
                                r56 = r47.previewBackground;
case 818:
                                r55 = r56;
                                r47 = r42;
                                if(!(r10 != r56)) { _fun45_ip = 831; continue _fun45 }
case 828:
                                r47 = r55;
case 831:
                                r47 = r54.bind(r4)(r47);
                                r54 = r21;
                                r52 = r54;
                                r47 = undefined;
                                if(!(r10 != r54)) { _fun45_ip = 869; continue _fun45 }
case 848:
                                r52 = r52.functionDefaultSwitchMap;
                                r45 = r52;
                                r47 = undefined;
                                if(!(r10 != r52)) { _fun45_ip = 869; continue _fun45 }
case 863:
                                r47 = r45.live_song;
case 869:
                                r45 = true;
                                r47 = r45 === r47;
                                r19 = r47;
                                r45 = _closure2_slot33;
                                r45 = r45.bind(r4)(r47);
                                r47 = _closure2_slot81;
                                r52 = r21;
                                r50 = r52;
                                r45 = undefined;
                                if(!(r10 != r52)) { _fun45_ip = 908; continue _fun45 }
case 903:
                                r45 = r50.functionCodeList;
case 908:
                                r49 = r45;
                                if(!(r10 == r45)) { _fun45_ip = 921; continue _fun45 }
case 915:
                                r45 = new Array(0);
                                _fun45_ip = 924; continue _fun45;
case 921:
                                r45 = r49;
case 924:
                                r45 = r47.bind(r4)(r45);
                                r54 = r21;
                                r53 = r54;
                                r54 = r10 != r54;
                                r52 = r54;
                                if(!r54) { _fun45_ip = 957; continue _fun45 }
case 945:
                                r53 = r53.functionCodeList;
                                r51 = r53;
                                r52 = r10 != r53;
case 957:
                                r50 = r52;
                                if(!r52) { _fun45_ip = 968; continue _fun45 }
case 963:
                                r50 = r51.length;
case 968:
                                r49 = r50;
                                if(r50) { _fun45_ip = 984; continue _fun45 }
case 974:
                                r50 = r21;
                                r48 = r50;
                                r49 = r10 == r50;
case 984:
                                r47 = r49;
                                if(r49) { _fun45_ip = 1003; continue _fun45 }
case 990:
                                r48 = r48.userFmAssetList;
                                r46 = r48;
                                r47 = r10 == r48;
case 1003:
                                r45 = r47;
                                if(r47) { _fun45_ip = 1021; continue _fun45 }
case 1009:
                                r47 = r46;
                                r46 = 0;
                                r46 = r47[r46];
                                r45 = !r46;
case 1021:
                                if(r45) { _fun45_ip = 1122; continue _fun45 }
case 1024:
                                r45 = r21;
                                r46 = r45.userFmAssetList;
                                r45 = 0;
                                r45 = r46[r45];
                                r44 = r45;
                                r46 = r45.showFmCode;
                                r45 = r42;
                                if(!(r10 != r46)) { _fun45_ip = 1073; continue _fun45 }
case 1054:
                                r47 = r15.String;
                                r46 = r44;
                                r46 = r46.showFmCode;
                                r45 = r47.bind(r4)(r46);
case 1073:
                                r1 = r45;
                                r45 = r44;
                                r45 = r45.fmCode;
                                if(!(r10 != r45)) { _fun45_ip = 1104; continue _fun45 }
case 1088:
                                r45 = r15.String;
                                r44 = r44.fmCode;
                                r42 = r45.bind(r4)(r44);
case 1104:
                                r44 = _closure2_slot79;
                                r1 = r44.bind(r4)(r1);
                                r1 = _closure2_slot77;
                                r1 = r1.bind(r4)(r42);
case 1122:
                                r44 = _closure1_slot0;
                                r45 = _closure1_slot1;
                                r42 = 21;
                                r42 = r45[r42];
                                r42 = r44.bind(r4)(r42);
                                r42 = r42.isVideoLiveMockEnabled;
                                r42 = r42.bind(r4)();
                                r1 = r42;
                                if(!r42) { _fun45_ip = 1172; continue _fun45 }
case 1158:
                                r42 = _closure1_slot22;
                                r42 = r42.tabs;
                                r1 = r42.showVideoTab;
case 1172:
                                if(!r1) { _fun45_ip = 1305; continue _fun45 }
case 1178:
                                r44 = _closure1_slot0;
                                r1 = _closure1_slot1;
                                r42 = 29;
                                r42 = r1[r42];
                                r44 = r44.bind(r4)(r42);
                                r42 = 28;
                                r42 = r1[r42];
                                r1 = r1.paths;
                                r1 = r44.bind(r4)(r42, r1);
                                SaveGenerator(address=1221);
case 1219:
                                return r1;
case 1221:
                                ResumeGenerator(result_out_reg=1, return_bool_out_reg=42);
                                if(r42) { _fun45_ip = 2165; continue _fun45 }
case 1230:
                                r40 = r1.buildMockVideoTab;
                                r42 = r21;
                                r44 = r42.tabConfigList;
                                r43 = r44;
                                if(!(r10 == r44)) { _fun45_ip = 1257; continue _fun45 }
case 1251:
                                r44 = new Array(0);
                                _fun45_ip = 1260; continue _fun45;
case 1257:
                                r44 = r43;
case 1260:
                                r42['tabConfigList'] = r44;
                                r41 = r44;
                                r43 = r44.some;
                                r42 = function(a0) { // Environment: r13
                                    r0 = a0;
                                    r1 = r0.tabCode;
                                    r3 = _closure1_slot0;
                                    r2 = _closure1_slot1;
                                    r0 = 21;
                                    r2 = r2[r0];
                                    r0 = undefined;
                                    r0 = r3.bind(r0)(r2);
                                    r0 = r0.VIDEO_TAB_CODE;
                                    r0 = r1 === r0;
                                    return r0;
                                };
                                r42 = r43.bind(r44)(r42);
                                if(r42) { _fun45_ip = 1305; continue _fun45 }
case 1287:
                                r42 = r41;
                                r41 = r42.push;
                                r40 = r40.bind(r4)();
                                r40 = r41.bind(r42)(r40);
case 1305:
                                r40 = r21;
                                r32 = r40;
                                if(!(r10 == r40)) { _fun45_ip = 1398; continue _fun45 }
case 1315:
                                r45 = r19;
                                r31 = r45;
                                r44 = r26;
                                r30 = r44;
                                r43 = r25;
                                r29 = r43;
                                r42 = r24;
                                r28 = r42;
                                r41 = r23;
                                r27 = r41;
                                r40 = r22;
                                r39 = r40;
                                r38 = r45;
                                r37 = r44;
                                r36 = r43;
                                r35 = r42;
                                r34 = r41;
                                r33 = r40;
                                var _closure5_slot0 = r45;
                                var _closure5_slot1 = r44;
                                var _closure5_slot2 = r43;
                                var _closure5_slot3 = r42;
                                var _closure5_slot4 = r41;
                                var _closure5_slot5 = r40;
                                _fun45_ip = 2017; continue _fun45;
case 1398:
                                r32 = r32.tabConfigList;
                                if(r32) { _fun45_ip = 1489; continue _fun45 }
case 1406:
                                r44 = r19;
                                r31 = r44;
                                r43 = r26;
                                r30 = r43;
                                r42 = r25;
                                r29 = r42;
                                r41 = r24;
                                r28 = r41;
                                r40 = r23;
                                r27 = r40;
                                r32 = r22;
                                r39 = r32;
                                r38 = r44;
                                r37 = r43;
                                r36 = r42;
                                r35 = r41;
                                r34 = r40;
                                r33 = r32;
                                _closure5_slot0 = r44;
                                _closure5_slot1 = r43;
                                _closure5_slot2 = r42;
                                _closure5_slot3 = r41;
                                _closure5_slot4 = r40;
                                _closure5_slot5 = r32;
                                _fun45_ip = 2017; continue _fun45;
case 1489:
                                r32 = r21;
                                r32 = r32.tabConfigList;
                                r40 = r32.length;
                                r32 = 0;
                                if(!(!(r40 > r32))) { _fun45_ip = 1591; continue _fun45 }
case 1508:
                                r32 = r19;
                                r31 = r32;
                                r31 = r26;
                                r30 = r31;
                                r30 = r25;
                                r29 = r30;
                                r29 = r24;
                                r28 = r29;
                                r28 = r23;
                                r27 = r28;
                                r27 = r22;
                                r39 = r27;
                                r38 = r32;
                                r37 = r31;
                                r36 = r30;
                                r35 = r29;
                                r34 = r28;
                                r33 = r27;
                                _closure5_slot0 = r32;
                                _closure5_slot1 = r31;
                                _closure5_slot2 = r30;
                                _closure5_slot3 = r29;
                                _closure5_slot4 = r28;
                                _closure5_slot5 = r27;
                                _fun45_ip = 2017; continue _fun45;
case 1591:
                                _closure5_slot1 = r26;
                                _closure5_slot2 = r25;
                                _closure5_slot3 = r24;
                                _closure5_slot4 = r23;
                                _closure5_slot5 = r22;
                                r23 = r21.tabConfigList;
                                r22 = r23.filter;
                                r21 = function(a0) { // Environment: r13
                                    _fun48: for(var _fun48_ip = 0; ; ) switch(_fun48_ip) {
case 0:
                                        r5 = a0;
                                        r1 = _closure1_slot0;
                                        r0 = _closure1_slot1;
                                        r9 = 21;
                                        r0 = r0[r9];
                                        r7 = undefined;
                                        r0 = r1.bind(r7)(r0);
                                        r0 = r0.isVideoTabConfig;
                                        r0 = r0.bind(r7)(r5);
                                        if(!r0) { _fun48_ip = 72; continue _fun48 }
case 41:
                                        r2 = r5.tabCode;
                                        r3 = _closure1_slot0;
                                        r1 = _closure1_slot1;
                                        r1 = r1[r9];
                                        r1 = r3.bind(r7)(r1);
                                        r1 = r1.VIDEO_TAB_CODE;
                                        r0 = r2 !== r1;
case 72:
                                        if(!r0) { _fun48_ip = 167; continue _fun48 }
case 75:
                                        r1 = _closure1_slot0;
                                        r0 = _closure1_slot1;
                                        r2 = 22;
                                        r2 = r0[r2];
                                        r2 = r1.bind(r7)(r2);
                                        r3 = r2.SRNApiLog;
                                        r2 = r3.error;
                                        r11 = r5.tabCode;
                                        r0 = r0[r9];
                                        r0 = r1.bind(r7)(r0);
                                        r13 = r0.VIDEO_TAB_CODE;
                                        r0 = global;
                                        r0 = r0.HermesInternal;
                                        r8 = r0.concat;
                                        r16 = '视频 tabCode 实际为 ';
                                        r14 = '，与常量 ';
                                        r12 = ' 不一致，请更新 videoLive.tsx 的 VIDEO_TAB_CODE';
                                        r15 = r11;
                                        r1 = r16[r8](r15, r14, r13, r12, r11);
                                        r0 = 'CreatePartyPage';
                                        r0 = r2.bind(r3)(r0, r1);
case 167:
                                        r1 = r5.tabCode;
                                        r0 = 'ktv';
                                        r1 = r0 === r1;
                                        if(!r1) { _fun48_ip = 200; continue _fun48 }
case 183:
                                        r0 = _closure1_slot22;
                                        r0 = r0.tabs;
                                        r0 = r0.showKtv;
                                        r1 = !r0;
case 200:
                                        r0 = !r1;
                                        if(r1) { _fun48_ip = 409; continue _fun48 }
case 209:
                                        r2 = r5.tabCode;
                                        r1 = 'youxi';
                                        r1 = r1 !== r2;
                                        if(r1) { _fun48_ip = 256; continue _fun48 }
case 225:
                                        r2 = _closure1_slot22;
                                        r2 = r2.tabs;
                                        r2 = r2.showGame;
                                        if(!r2) { _fun48_ip = 253; continue _fun48 }
case 242:
                                        r3 = _closure2_slot96;
                                        r2 = r3.bind(r7)();
case 253:
                                        r1 = r2;
case 256:
                                        r2 = !r1;
                                        r1 = !r2;
                                        if(r2) { _fun48_ip = 406; continue _fun48 }
case 268:
                                        r3 = r5.tabCode;
                                        r2 = 'yuliao';
                                        r3 = r2 === r3;
                                        if(!r3) { _fun48_ip = 301; continue _fun48 }
case 284:
                                        r2 = _closure1_slot22;
                                        r2 = r2.tabs;
                                        r2 = r2.showParty;
                                        r3 = !r2;
case 301:
                                        r2 = !r3;
                                        if(r3) { _fun48_ip = 403; continue _fun48 }
case 307:
                                        r6 = r5.tabCode;
                                        r3 = 'wanfa';
                                        r6 = r3 === r6;
                                        if(!r6) { _fun48_ip = 340; continue _fun48 }
case 323:
                                        r3 = _closure1_slot22;
                                        r3 = r3.tabs;
                                        r3 = r3.showGameplay;
                                        r6 = !r3;
case 340:
                                        r3 = !r6;
                                        if(r6) { _fun48_ip = 400; continue _fun48 }
case 346:
                                        r8 = _closure1_slot0;
                                        r6 = _closure1_slot1;
                                        r6 = r6[r9];
                                        r6 = r8.bind(r7)(r6);
                                        r6 = r6.isTabVisibleForPlatform;
                                        r5 = r5.tabCode;
                                        r4 = _closure1_slot22;
                                        r4 = r4.tabs;
                                        r4 = r4.showVideoTab;
                                        r4 = r6.bind(r7)(r5, r4);
                                        r4 = !r4;
                                        r3 = !r4;
case 400:
                                        r2 = r3;
case 403:
                                        r1 = r2;
case 406:
                                        r0 = r1;
case 409:
                                        return r0;
                                    }
                                };
                                r21 = r22.bind(r23)(r21);
                                r18 = _closure1_slot4;
                                r18 = r18.default;
                                r22 = r18.bind(r4)(r21);
                                r21 = r22.sort;
                                r18 = function(a0, a1) { // Environment: r13
                                    _fun49: for(var _fun49_ip = 0; ; ) switch(_fun49_ip) {
case 0:
                                        r4 = _closure1_slot23;
                                        r1 = r4.indexOf;
                                        r0 = a0;
                                        r0 = r0.tabCode;
                                        r1 = r1.bind(r4)(r0);
                                        r3 = r4.indexOf;
                                        r0 = a1;
                                        r0 = r0.tabCode;
                                        r0 = r3.bind(r4)(r0);
                                        r3 = -1;
                                        if(!(r3 === r1)) { _fun49_ip = 64; continue _fun49 }
case 55:
                                        r4 = _closure1_slot23;
                                        r1 = r4.length;
case 64:
                                        if(!(r3 === r0)) { _fun49_ip = 77; continue _fun49 }
case 68:
                                        r2 = _closure1_slot23;
                                        r0 = r2.length;
case 77:
                                        r0 = r1 - r0;
                                        return r0;
                                    }
                                };
                                r22 = r21.bind(r22)(r18);
                                r21 = r22.map;
                                r18 = function(a0, a1) { // Environment: r13
                                    _fun50: for(var _fun50_ip = 0; ; ) switch(_fun50_ip) {
case 0:
                                        r0 = a0;
                                        r3 = '聊天';
                                        r1 = r0.playTypeConfigList;
                                        if(r1) { _fun50_ip = 19; continue _fun50 }
case 15:
                                        r1 = new Array(0);
case 19:
                                        r5 = _closure1_slot8;
                                        r5 = r5.Platform;
                                        r6 = r5.OS;
                                        r5 = 'android';
                                        r5 = r5 !== r6;
                                        if(!r5) { _fun50_ip = 69; continue _fun50 }
case 47:
                                        r6 = _closure1_slot8;
                                        r6 = r6.Platform;
                                        r7 = r6.OS;
                                        r6 = 'ios';
                                        r5 = r6 !== r7;
case 69:
                                        if(!r5) { _fun50_ip = 84; continue _fun50 }
case 72:
                                        r6 = _closure2_slot2;
                                        r5 = r6.enableFilter;
case 84:
                                        if(!r5) { _fun50_ip = 110; continue _fun50 }
case 87:
                                        r6 = _closure2_slot2;
                                        r6 = r6.filterPlayTypeCodes;
                                        r7 = r6.length;
                                        r6 = 0;
                                        r5 = r7 > r6;
case 110:
                                        if(!r5) { _fun50_ip = 153; continue _fun50 }
case 113:
                                        r7 = r0.playTypeConfigList;
                                        r5 = null;
                                        r4 = undefined;
                                        if(!(r5 != r7)) { _fun50_ip = 143; continue _fun50 }
case 126:
                                        r6 = r7.filter;
                                        r5 = function(a0) { // Environment: r5
                                            r0 = _closure2_slot2;
                                            r2 = r0.filterPlayTypeCodes;
                                            r1 = r2.includes;
                                            r0 = a0;
                                            r0 = r0.playTypeCode;
                                            r0 = r1.bind(r2)(r0);
                                            r0 = !r0;
                                            return r0;
                                        };
                                        r4 = r6.bind(r7)(r5);
case 143:
                                        if(r4) { _fun50_ip = 150; continue _fun50 }
case 146:
                                        r4 = new Array(0);
case 150:
                                        r1 = r4;
case 153:
                                        r5 = r0.tabCode;
                                        r4 = 'yuliao';
                                        if(!(r4 !== r5)) { _fun50_ip = 194; continue _fun50 }
case 166:
                                        r4 = _closure1_slot24;
                                        r2 = r0.tabCode;
                                        r2 = r4[r2];
                                        r4 = null;
                                        if(!(r4 == r2)) { _fun50_ip = 191; continue _fun50 }
case 185:
                                        r2 = r0.tabName;
case 191:
                                        r3 = r2;
case 194:
                                        r2 = r0.tabCode;
                                        r0 = {};
                                        r4 = a1;
                                        r0['id'] = r4;
                                        r0['title'] = r3;
                                        r0['tabCode'] = r2;
                                        r0['playTypeConfigList'] = r1;
                                        return r0;
                                    }
                                };
                                r21 = r21.bind(r22)(r18);
                                _closure5_slot1 = r21;
                                r18 = _closure2_slot56;
                                r18 = r18.bind(r4)(r21);
                                r18 = function(a0) { // Original name: Q, environment: r13
                                    _fun52: for(var _fun52_ip = 0; ; ) switch(_fun52_ip) {
case 0:
                                        r2 = a0;
                                        var _closure6_slot0 = r2;
                                        r3 = _closure5_slot1;
                                        r2 = r3.find;
                                        r1 = function(a0) { // Environment: r1
                                            r0 = a0;
                                            r1 = r0.tabCode;
                                            r0 = _closure6_slot0;
                                            r0 = r1 === r0;
                                            return r0;
                                        };
                                        r1 = r2.bind(r3)(r1);
                                        r0 = null;
                                        if(!r1) { _fun52_ip = 58; continue _fun52 }
case 36:
                                        r4 = _closure2_slot47;
                                        r3 = r1.id;
                                        r2 = undefined;
                                        r2 = r4.bind(r2)(r3);
                                        r0 = r1;
case 58:
                                        return r0;
                                    }
                                };
                                _closure5_slot2 = r18;
                                r18 = function(a0) { // Original name: X, environment: r13
                                    _fun54: for(var _fun54_ip = 0; ; ) switch(_fun54_ip) {
case 0:
                                        r7 = undefined;
                                        r2 = null;
                                        r0 = a0;
                                        r3 = r0.playTypeConfigList;
                                        if(!(r2 == r3)) { _fun54_ip = 29; continue _fun54 }
case 18:
                                        var _closure6_slot0 = r7;
                                        r0 = null;
                                        _fun54_ip = 182; continue _fun54;
case 29:
                                        r4 = r3.length;
                                        if(r4) { _fun54_ip = 48; continue _fun54 }
case 37:
                                        _closure6_slot0 = r7;
                                        r0 = null;
                                        _fun54_ip = 182; continue _fun54;
case 48:
                                        r4 = _closure2_slot91;
                                        r5 = undefined;
                                        if(!(r2 != r4)) { _fun54_ip = 66; continue _fun54 }
case 61:
                                        r5 = r4.lastPlayType;
case 66:
                                        if(!(r2 == r5)) { _fun54_ip = 76; continue _fun54 }
case 70:
                                        _closure6_slot0 = r7;
                                        _fun54_ip = 168; continue _fun54;
case 76:
                                        r6 = 'string';
                                        r2 = typeof r5;
                                        r4 = r5;
                                        if(!(r6 === r2)) { _fun54_ip = 118; continue _fun54 }
case 90:
                                        r2 = global;
                                        r6 = r2.parseInt;
                                        r2 = r2.String;
                                        r5 = r2.bind(r7)(r5);
                                        r2 = 10;
                                        r4 = r6.bind(r7)(r5, r2);
case 118:
                                        r2 = global;
                                        r5 = r2.Number;
                                        r2 = r5.isNaN;
                                        r2 = r2.bind(r5)(r4);
                                        _closure6_slot0 = r4;
                                        if(r2) { _fun54_ip = 168; continue _fun54 }
case 143:
                                        r2 = r3.find;
                                        r1 = function(a0) { // Environment: r1
                                            r0 = a0;
                                            r1 = r0.playTypeCode;
                                            r0 = _closure6_slot0;
                                            r0 = r1 === r0;
                                            return r0;
                                        };
                                        r1 = r2.bind(r3)(r1);
                                        if(!r1) { _fun54_ip = 168; continue _fun54 }
case 161:
                                        r1 = r1.playTypeCode;
                                        _fun54_ip = 179; continue _fun54;
case 168:
                                        r2 = 0;
                                        r2 = r3[r2];
                                        r1 = r2.playTypeCode;
case 179:
                                        r0 = r1;
case 182:
                                        return r0;
                                    }
                                };
                                _closure5_slot3 = r18;
                                r18 = function(a0) { // Original name: Z, environment: r13
                                    _fun56: for(var _fun56_ip = 0; ; ) switch(_fun56_ip) {
case 0:
                                        r1 = a0;
                                        r0 = undefined;
                                        r5 = '闲聊唠嗑';
                                        r6 = _closure2_slot49;
                                        r3 = r1.playTypeCode;
                                        r3 = r6.bind(r0)(r3);
                                        r6 = _closure2_slot91;
                                        r3 = null;
                                        if(!(r3 != r6)) { _fun56_ip = 88; continue _fun56 }
case 38:
                                        r8 = r6.playTypeClassifyMappingList;
                                        if(!(r3 != r8)) { _fun56_ip = 80; continue _fun56 }
case 47:
                                        var _closure6_slot0 = r1;
                                        r7 = r8.find;
                                        r6 = function(a0) { // Environment: r4
                                            r0 = a0;
                                            r1 = r0.playType;
                                            r0 = _closure6_slot0;
                                            r0 = r0.playTypeCode;
                                            r0 = r1 === r0;
                                            return r0;
                                        };
                                        r6 = r7.bind(r8)(r6);
                                        r7 = undefined;
                                        if(!(r3 != r6)) { _fun56_ip = 94; continue _fun56 }
case 72:
                                        r7 = r6.classifyCode;
                                        _fun56_ip = 94; continue _fun56;
case 80:
                                        _closure6_slot0 = r1;
                                        r7 = undefined;
                                        _fun56_ip = 94; continue _fun56;
case 88:
                                        _closure6_slot0 = r1;
                                        r7 = undefined;
case 94:
                                        if(!(r3 != r7)) { _fun56_ip = 128; continue _fun56 }
case 98:
                                        r4 = _closure2_slot35;
                                        r6 = {1: '唱歌听歌', 2: '心动速配', 4: '闲聊唠嗑', 6: '趣味辩论', 10: '兴趣交流', 5: '情感故事', 7: '热门话题'};
                                        r6 = r6[r7];
                                        if(!(r3 != r6)) { _fun56_ip = 123; continue _fun56 }
case 120:
                                        r5 = r6;
case 123:
                                        r4 = r4.bind(r0)(r5);
case 128:
                                        r4 = r1.previewBackground;
                                        r2 = _closure2_slot73;
                                        if(r4) { _fun56_ip = 147; continue _fun56 }
case 140:
                                        r3 = r2.bind(r0)(r3);
                                        _fun56_ip = 157; continue _fun56;
case 147:
                                        r1 = r1.previewBackground;
                                        r1 = r2.bind(r0)(r1);
case 157:
                                        return r0;
                                    }
                                };
                                _closure5_slot4 = r18;
                                r18 = function(a0) { // Original name: ee, environment: r13
                                    _fun58: for(var _fun58_ip = 0; ; ) switch(_fun58_ip) {
case 0:
                                        r7 = undefined;
                                        r0 = null;
                                        r3 = undefined;
                                        r6 = undefined;
                                        r1 = undefined;
                                        r8 = _closure5_slot1;
                                        r4 = r8;
                                        r2 = r4[Symbol.iterator];
                                        r4 = r2().next;
                                        r8 = a0;
                                        var _closure6_slot0 = r8;
case 32:
                                        r8 = r4().value;
                                        r9 = r2;
                                        if(!(r9 !== r7)) { _fun58_ip = 124; continue _fun58 }
case 43: // try_start_0
                                        r3 = r8;
                                        r8 = r8.playTypeConfigList;
                                        r6 = r8;
                                        if(!(r0 != r8)) { _fun58_ip = 93; continue _fun58 }
case 58:
                                        r8 = r6;
                                        r8 = r8.length;
                                        if(!r8) { _fun58_ip = 93; continue _fun58 }
case 69:
                                        r10 = r6;
                                        r9 = r10.find;
                                        r8 = function(a0) { // Environment: r5
                                            r0 = a0;
                                            r1 = r0.playTypeCode;
                                            r0 = _closure6_slot0;
                                            r0 = r1 === r0;
                                            return r0;
                                        };
                                        r8 = r9.bind(r10)(r8);
                                        r1 = r8;
                                        if(r8) { _fun58_ip = 95; continue _fun58 }
case 93: // try_end0
                                        _fun58_ip = 32; continue _fun58;
case 95: // try_start_1
                                        r4 = r3;
                                        r3 = r1;
                                        r1 = {};
                                        r1['tab'] = r4;
                                        r1['item'] = r3;
case 112: // try_end1
                                        r2.return();
                                        return r1;
case 117: // catch_target0 // catch_target1
                                        CatchBlockStart(arg_register=1);
                                        r2.return();
                                        throw r1;
case 124:
                                        return r0;
                                    }
                                };
                                _closure5_slot5 = r18;
                                r17 = function() { // Original name: te, environment: r13
                                    _fun60: for(var _fun60_ip = 0; ; ) switch(_fun60_ip) {
case 0:
                                        r6 = undefined;
                                        r2 = null;
                                        r0 = _closure2_slot123;
                                        r1 = r0.defaultPlayType;
                                        r5 = undefined;
                                        if(!(r2 != r1)) { _fun60_ip = 32; continue _fun60 }
case 23:
                                        r0 = r1.trim;
                                        r5 = r0.bind(r1)();
case 32:
                                        r0 = null;
                                        if(!r5) { _fun60_ip = 142; continue _fun60 }
case 37:
                                        r1 = global;
                                        r4 = r1.parseInt;
                                        r3 = 10;
                                        r5 = r4.bind(r6)(r5, r3);
                                        r3 = r1.Number;
                                        r1 = r3.isNaN;
                                        r3 = r1.bind(r3)(r5);
                                        r1 = null;
                                        if(r3) { _fun60_ip = 139; continue _fun60 }
case 75:
                                        r3 = _closure5_slot5;
                                        r3 = r3.bind(r6)(r5);
                                        r2 = null;
                                        if(!r3) { _fun60_ip = 136; continue _fun60 }
case 92:
                                        r7 = _closure5_slot2;
                                        r5 = r3.tab;
                                        r5 = r5.tabCode;
                                        r5 = r7.bind(r6)(r5);
                                        r5 = _closure5_slot4;
                                        r4 = r3.item;
                                        r4 = r5.bind(r6)(r4);
                                        r3 = r3.item;
                                        r2 = r3.playTypeCode;
case 136:
                                        r1 = r2;
case 139:
                                        r0 = r1;
case 142:
                                        return r0;
                                    }
                                };
                                r8 = function(a0) { // Original name: ne, environment: r13
                                    _fun61: for(var _fun61_ip = 0; ; ) switch(_fun61_ip) {
case 0:
                                        r0 = a0;
                                        r3 = undefined;
                                        r1 = null;
                                        r5 = r0.tabCode;
                                        r4 = 'wanfa';
                                        if(!(r4 !== r5)) { _fun61_ip = 35; continue _fun61 }
case 22:
                                        r5 = r0.tabCode;
                                        r4 = 'youxi';
                                        if(!(r4 === r5)) { _fun61_ip = 115; continue _fun61 }
case 35:
                                        r4 = _closure5_slot3;
                                        r4 = r4.bind(r3)(r0);
                                        if(!(r1 != r4)) { _fun61_ip = 107; continue _fun61 }
case 51:
                                        r7 = r0.playTypeConfigList;
                                        if(!(r1 != r7)) { _fun61_ip = 81; continue _fun61 }
case 60:
                                        var _closure6_slot0 = r4;
                                        r6 = r7.find;
                                        r0 = function(a0) { // Environment: r2
                                            r0 = a0;
                                            r1 = r0.playTypeCode;
                                            r0 = _closure6_slot0;
                                            r0 = r1 === r0;
                                            return r0;
                                        };
                                        r6 = r6.bind(r7)(r0);
                                        _fun61_ip = 87; continue _fun61;
case 81:
                                        _closure6_slot0 = r4;
                                        r6 = undefined;
case 87:
                                        r0 = null;
                                        if(!r6) { _fun61_ip = 105; continue _fun61 }
case 92:
                                        r5 = _closure5_slot4;
                                        r5 = r5.bind(r3)(r6);
                                        r0 = _closure6_slot0;
case 105:
                                        _fun61_ip = 121; continue _fun61;
case 107:
                                        _closure6_slot0 = r4;
                                        r0 = null;
                                        _fun61_ip = 121; continue _fun61;
case 115:
                                        _closure6_slot0 = r3;
                                        r0 = null;
case 121:
                                        return r0;
                                    }
                                };
                                r9 = function(a0, a1) { // Original name: oe, environment: r13
                                    _fun63: for(var _fun63_ip = 0; ; ) switch(_fun63_ip) {
case 0:
                                        r2 = a0;
                                        r5 = a1;
                                        r0 = undefined;
                                        r3 = r2;
                                        if(!r3) { _fun63_ip = 21; continue _fun63 }
case 16:
                                        r3 = r2.playTypeConfigList;
case 21:
                                        if(r3) { _fun63_ip = 30; continue _fun63 }
case 24:
                                        var _closure6_slot0 = r0;
                                        _fun63_ip = 96; continue _fun63;
case 30:
                                        r6 = 'string';
                                        r4 = typeof r5;
                                        r3 = r5;
                                        if(!(r6 === r4)) { _fun63_ip = 57; continue _fun63 }
case 44:
                                        r4 = global;
                                        r4 = r4.parseInt;
                                        r3 = r4.bind(r0)(r5);
case 57:
                                        _closure6_slot0 = r3;
                                        r3 = r2.playTypeConfigList;
                                        r2 = r3.find;
                                        r1 = function(a0) { // Environment: r1
                                            r0 = a0;
                                            r1 = r0.playTypeCode;
                                            r0 = _closure6_slot0;
                                            r0 = r1 === r0;
                                            return r0;
                                        };
                                        r2 = r2.bind(r3)(r1);
                                        if(!r2) { _fun63_ip = 96; continue _fun63 }
case 84:
                                        r1 = _closure5_slot4;
                                        r1 = r1.bind(r0)(r2);
case 96:
                                        return r0;
                                    }
                                };
                                r18 = _closure2_slot123;
                                r14 = r18.defaultDisplayTabCode;
                                r21 = _closure2_slot91;
                                r20 = r21;
                                r18 = undefined;
                                if(!(r10 != r21)) { _fun45_ip = 1767; continue _fun45 }
case 1762:
                                r18 = r20.lastPlayType;
case 1767:
                                _closure5_slot0 = r19;
                                r7 = r18;
                                r3 = function(a0) { // Original name: ae, environment: r13
                                    _fun65: for(var _fun65_ip = 0; ; ) switch(_fun65_ip) {
case 0:
                                        r2 = a0;
                                        r1 = null;
                                        r0 = undefined;
                                        if(!(r1 == r2)) { _fun65_ip = 75; continue _fun65 }
case 11:
                                        r5 = _closure2_slot91;
                                        r4 = undefined;
                                        if(!(r1 != r5)) { _fun65_ip = 29; continue _fun65 }
case 24:
                                        r4 = r5.lastPlayType;
case 29:
                                        r1 = null;
                                        if(!(r1 != r4)) { _fun65_ip = 72; continue _fun65 }
case 35:
                                        r4 = global;
                                        r5 = r4.parseInt;
                                        r4 = r4.String;
                                        r3 = _closure2_slot91;
                                        r3 = r3.lastPlayType;
                                        r4 = r4.bind(r0)(r3);
                                        r3 = 10;
                                        r1 = r5.bind(r0)(r4, r3);
case 72:
                                        r2 = r1;
case 75:
                                        r1 = _closure1_slot33;
                                        r1 = r1.bind(r0)(r2);
                                        r2 = _closure2_slot31;
                                        r1 = !r1;
                                        if(!r1) { _fun65_ip = 107; continue _fun65 }
case 100:
                                        r1 = _closure5_slot0;
case 107:
                                        r1 = r2.bind(r0)(r1);
                                        return r0;
                                    }
                                };
                                r17 = r17.bind(r4)();
                                r2 = r17;
                                if(!(r10 == r17)) { _fun45_ip = 2155; continue _fun45 }
case 1793:
                                r17 = r14;
                                if(!(r10 != r17)) { _fun45_ip = 1833; continue _fun45 }
case 1800:
                                r18 = r14;
                                r17 = r18.trim;
                                r17 = r17.bind(r18)();
                                if(!r17) { _fun45_ip = 1833; continue _fun45 }
case 1815:
                                r17 = _closure5_slot2;
                                r14 = r17.bind(r4)(r14);
                                r6 = r14;
                                if(r14) { _fun45_ip = 2068; continue _fun45 }
case 1833:
                                r17 = _closure2_slot91;
                                r16 = r17;
                                r14 = undefined;
                                if(!(r10 != r17)) { _fun45_ip = 1852; continue _fun45 }
case 1846:
                                r14 = r16.lastPlayTypeMappingTabCode;
case 1852:
                                r12 = r14;
                                if(!r14) { _fun45_ip = 1918; continue _fun45 }
case 1858:
                                r14 = _closure5_slot2;
                                r12 = r14.bind(r4)(r12);
                                r5 = r12;
                                if(!r12) { _fun45_ip = 1918; continue _fun45 }
case 1873:
                                r12 = r5;
                                r14 = r12.tabCode;
                                r12 = 'wanfa';
                                if(!(r12 !== r14)) { _fun45_ip = 2047; continue _fun45 }
case 1892:
                                r12 = r5;
                                r14 = r12.tabCode;
                                r12 = 'youxi';
                                if(!(r12 !== r14)) { _fun45_ip = 2047; continue _fun45 }
case 1911:
                                r12 = r7;
                                if(!(r10 == r12)) { _fun45_ip = 2020; continue _fun45 }
case 1918:
                                r16 = r7;
                                r16 = r10 != r16;
                                r14 = r16;
                                if(!r16) { _fun45_ip = 1963; continue _fun45 }
case 1931:
                                r16 = r15.parseInt;
                                r17 = r15.String;
                                r15 = r7;
                                r15 = r17.bind(r4)(r15);
                                r16 = r16.bind(r4)(r15);
                                r15 = 1;
                                r14 = r15 === r16;
case 1963:
                                r12 = r14;
                                if(!r14) { _fun45_ip = 1982; continue _fun45 }
case 1969:
                                r14 = _closure5_slot2;
                                r13 = 'ktv';
                                r12 = r14.bind(r4)(r13);
case 1982:
                                if(!r12) { _fun45_ip = 2010; continue _fun45 }
case 1985:
                                r13 = _closure2_slot73;
                                r12 = _closure2_slot50;
                                r12 = r13.bind(r4)(r12);
                                r12 = _closure2_slot49;
                                r11 = 1;
                                r11 = r12.bind(r4)(r11);
case 2010:
                                r11 = r3;
                                r11 = r11.bind(r4)();
case 2017:
                                return r4;
case 2020:
                                r13 = r9;
                                r12 = r5;
                                r11 = r7;
                                r11 = r13.bind(r4)(r12, r11);
                                r11 = r3;
                                r11 = r11.bind(r4)();
                                r11 = undefined;
                                return r11;
case 2047:
                                r11 = r3;
                                r12 = r8;
                                r5 = r12.bind(r4)(r5);
                                r5 = r11.bind(r4)(r5);
                                r5 = undefined;
                                return r5;
case 2068:
                                r5 = r6;
                                r11 = r5.tabCode;
                                r5 = 'wanfa';
                                if(!(r5 !== r11)) { _fun45_ip = 2137; continue _fun45 }
case 2084:
                                r5 = r6;
                                r11 = r5.tabCode;
                                r5 = 'youxi';
                                if(!(r5 !== r11)) { _fun45_ip = 2137; continue _fun45 }
case 2100:
                                r5 = r7;
                                if(!(r10 == r5)) { _fun45_ip = 2116; continue _fun45 }
case 2107:
                                r5 = r3;
                                r5 = r5.bind(r4)();
                                _fun45_ip = 2135; continue _fun45;
case 2116:
                                r10 = r9;
                                r9 = r6;
                                r7 = r10.bind(r4)(r9, r7);
                                r7 = r3;
                                r5 = r7.bind(r4)();
case 2135:
                                _fun45_ip = 2150; continue _fun45;
case 2137:
                                r7 = r3;
                                r6 = r8.bind(r4)(r6);
                                r5 = r7.bind(r4)(r6);
case 2150:
                                r5 = undefined;
                                return r5;
case 2155:
                                r2 = r3.bind(r4)(r2);
                                r2 = undefined;
                                return r2;
case 2165:
                                return r1;
case 2168:
                                return r0;
                            }
                        };
                        return r0;
                    };
                    r1 = r3.bind(r2)(r1);
                    var _closure3_slot0 = r1;
                    r0 = function() { // Environment: r0
                        r0 = undefined;
                        r3 = _closure3_slot0;
                        r2 = r3.apply;
                        r0 = arguments;
                        r1 = r0;
                        r0 = this;
                        r0 = r2.bind(r3)(r0, r1);
                        return r0;
                    };
                    return r0;
                };
                r27 = r27.bind(r3)();
                _closure2_slot94 = r27;
                r27 = function() { // Environment: r18
                    r1 = _closure1_slot2;
                    r3 = r1.default;
                    r2 = undefined;
                    r1 = function* () { // Environment: r0
                        r0 = function* () { // Original name: ?anon_0_, environment: r0
                            _fun69: for(var _fun69_ip = 0; ; ) switch(_fun69_ip) {
case 0:
                                StartGenerator();
                                r4 = undefined;
                                r10 = '';
                                r2 = undefined;
                                r5 = undefined;
                                r8 = undefined;
                                r9 = undefined;
                                r14 = undefined;
                                r16 = undefined;
                                r11 = undefined;
                                r1 = undefined;
                                r3 = undefined;
                                r15 = undefined;
                                r17 = undefined;
                                r7 = undefined;
                                ResumeGenerator(result_out_reg=0, return_bool_out_reg=6);
                                if(r6) { _fun69_ip = 1726; continue _fun69 }
case 40:
                                r7 = undefined;
                                r17 = undefined;
                                r15 = undefined;
                                r3 = undefined;
                                r1 = undefined;
                                r11 = undefined;
                                r16 = undefined;
                                r14 = undefined;
                                r9 = undefined;
                                r8 = undefined;
                                r5 = undefined;
                                r2 = undefined;
case 64: // try_start_0
                                r18 = _closure2_slot91;
                                r7 = r18;
                                r12 = null;
                                r13 = undefined;
                                if(!(r12 != r18)) { _fun69_ip = 88; continue _fun69 }
case 82:
                                r13 = r7.newUser;
case 88:
                                r7 = 1;
                                if(!(r7 != r13)) { _fun69_ip = 1100; continue _fun69 }
case 98:
                                r18 = _closure2_slot91;
                                r17 = r18;
                                r13 = undefined;
                                if(!(r12 != r18)) { _fun69_ip = 117; continue _fun69 }
case 111:
                                r13 = r17.lastTopicFromRec;
case 117:
                                if(!(r7 != r13)) { _fun69_ip = 502; continue _fun69 }
case 124:
                                r13 = _closure2_slot29;
                                r18 = _closure2_slot91;
                                r3 = r18;
                                r17 = undefined;
                                if(!(r12 != r18)) { _fun69_ip = 147; continue _fun69 }
case 141:
                                r17 = r3.lastTopic;
case 147:
                                r15 = r17;
                                r3 = r10;
                                if(!(r12 != r17)) { _fun69_ip = 160; continue _fun69 }
case 157:
                                r3 = r15;
case 160:
                                r3 = r13.bind(r4)(r3);
                                r13 = _closure2_slot91;
                                r1 = r13;
                                r3 = undefined;
                                if(!(r12 != r13)) { _fun69_ip = 183; continue _fun69 }
case 178:
                                r3 = r1.lastClassifyCode;
case 183:
                                if(!(r7 !== r3)) { _fun69_ip = 297; continue _fun69 }
case 187:
                                r1 = 2;
                                if(!(r1 !== r3)) { _fun69_ip = 282; continue _fun69 }
case 194:
                                r1 = 4;
                                if(!(r1 !== r3)) { _fun69_ip = 267; continue _fun69 }
case 201:
                                r1 = 6;
                                if(!(r1 !== r3)) { _fun69_ip = 252; continue _fun69 }
case 208:
                                r1 = 10;
                                if(!(r1 !== r3)) { _fun69_ip = 237; continue _fun69 }
case 215:
                                r1 = 5;
                                if(!(r1 === r3)) { _fun69_ip = 267; continue _fun69 }
case 222:
                                r3 = _closure2_slot35;
                                r1 = '情感故事';
                                r1 = r3.bind(r4)(r1);
                                _fun69_ip = 310; continue _fun69;
case 237:
                                r3 = _closure2_slot35;
                                r1 = '兴趣交流';
                                r1 = r3.bind(r4)(r1);
                                _fun69_ip = 310; continue _fun69;
case 252:
                                r3 = _closure2_slot35;
                                r1 = '趣味辩论';
                                r1 = r3.bind(r4)(r1);
                                _fun69_ip = 310; continue _fun69;
case 267:
                                r3 = _closure2_slot35;
                                r1 = '闲聊唠嗑';
                                r1 = r3.bind(r4)(r1);
                                _fun69_ip = 310; continue _fun69;
case 282:
                                r3 = _closure2_slot35;
                                r1 = '心动速配';
                                r1 = r3.bind(r4)(r1);
                                _fun69_ip = 310; continue _fun69;
case 297:
                                r3 = _closure2_slot35;
                                r1 = '唱歌听歌';
                                r1 = r3.bind(r4)(r1);
case 310:
                                r3 = _closure2_slot41;
                                r1 = '已公开';
                                r1 = r3.bind(r4)(r1);
case 323: // try_end0
                                r3 = _closure2_slot123;
                                r13 = r3.tagName;
                                r9 = r13;
                                r3 = undefined;
                                if(!(r12 != r13)) { _fun69_ip = 353; continue _fun69 }
case 341:
                                r15 = r9;
                                r13 = r15.trim;
                                r3 = r13.bind(r15)();
case 353:
                                r1 = r3;
                                if(r3) { _fun69_ip = 392; continue _fun69 }
case 359:
                                r3 = _closure2_slot123;
                                r13 = r3.defautlTitle;
                                r8 = r13;
                                r3 = undefined;
                                if(!(r12 != r13)) { _fun69_ip = 389; continue _fun69 }
case 377:
                                r15 = r8;
                                r13 = r15.trim;
                                r3 = r13.bind(r15)();
case 389:
                                r1 = r3;
case 392:
                                r5 = r1;
                                if(!r1) { _fun69_ip = 410; continue _fun69 }
case 398:
                                r3 = _closure2_slot29;
                                r1 = r5;
                                r1 = r3.bind(r4)(r1);
case 410:
                                r3 = _closure2_slot123;
                                r3 = r3.defaultClassifyCode;
                                r2 = r3;
                                r3 = r4 !== r3;
                                r1 = r3;
                                if(!r3) { _fun69_ip = 472; continue _fun69 }
case 432:
                                r13 = r2;
                                r15 = _closure1_slot0;
                                r17 = _closure1_slot1;
                                r3 = 26;
                                r3 = r17[r3];
                                r3 = r15.bind(r4)(r3);
                                r3 = r3.RoomClassify;
                                r3 = r3.ALL;
                                r1 = r13 !== r3;
case 472:
                                if(!r1) { _fun69_ip = 499; continue _fun69 }
case 475:
                                r3 = _closure2_slot35;
                                r13 = _closure1_slot34;
                                r1 = r2;
                                r1 = r13.bind(r4)(r1);
                                r1 = r3.bind(r4)(r1);
case 499:
                                return r4;
case 502: // try_start_1
                                r13 = _closure1_slot0;
                                r15 = _closure1_slot1;
                                r1 = 24;
                                r1 = r15[r1];
                                r1 = r13.bind(r4)(r1);
                                r15 = r1.getRandomRecRoomName;
                                r1 = _closure2_slot91;
                                r13 = r1.lastClassifyCode;
                                r1 = _closure2_slot91;
                                r1 = r1.lastPlayType;
                                r1 = r15.bind(r4)(r13, r1);
                                SaveGenerator(address=558);
case 556:
                                return r1;
case 558:
                                ResumeGenerator(result_out_reg=1, return_bool_out_reg=13);
                                if(r13) { _fun69_ip = 927; continue _fun69 }
case 567:
                                r15 = _closure2_slot29;
                                r17 = r1.recRoomName;
                                r16 = r17;
                                r13 = r10;
                                if(!(r12 != r17)) { _fun69_ip = 589; continue _fun69 }
case 586:
                                r13 = r16;
case 589:
                                r13 = r15.bind(r4)(r13);
                                r15 = _closure2_slot91;
                                r14 = r15;
                                r13 = undefined;
                                if(!(r12 != r15)) { _fun69_ip = 612; continue _fun69 }
case 607:
                                r13 = r14.lastClassifyCode;
case 612:
                                if(!(r7 !== r13)) { _fun69_ip = 726; continue _fun69 }
case 616:
                                r7 = 2;
                                if(!(r7 !== r13)) { _fun69_ip = 711; continue _fun69 }
case 623:
                                r7 = 4;
                                if(!(r7 !== r13)) { _fun69_ip = 696; continue _fun69 }
case 630:
                                r7 = 6;
                                if(!(r7 !== r13)) { _fun69_ip = 681; continue _fun69 }
case 637:
                                r7 = 10;
                                if(!(r7 !== r13)) { _fun69_ip = 666; continue _fun69 }
case 644:
                                r7 = 5;
                                if(!(r7 === r13)) { _fun69_ip = 696; continue _fun69 }
case 651:
                                r13 = _closure2_slot35;
                                r7 = '情感故事';
                                r7 = r13.bind(r4)(r7);
                                _fun69_ip = 739; continue _fun69;
case 666:
                                r13 = _closure2_slot35;
                                r7 = '兴趣交流';
                                r7 = r13.bind(r4)(r7);
                                _fun69_ip = 739; continue _fun69;
case 681:
                                r13 = _closure2_slot35;
                                r7 = '趣味辩论';
                                r7 = r13.bind(r4)(r7);
                                _fun69_ip = 739; continue _fun69;
case 696:
                                r13 = _closure2_slot35;
                                r7 = '闲聊唠嗑';
                                r7 = r13.bind(r4)(r7);
                                _fun69_ip = 739; continue _fun69;
case 711:
                                r13 = _closure2_slot35;
                                r7 = '心动速配';
                                r7 = r13.bind(r4)(r7);
                                _fun69_ip = 739; continue _fun69;
case 726:
                                r13 = _closure2_slot35;
                                r7 = '唱歌听歌';
                                r7 = r13.bind(r4)(r7);
case 739:
                                r13 = _closure2_slot41;
                                r7 = '已公开';
                                r7 = r13.bind(r4)(r7);
case 752: // try_end1
                                r14 = _closure2_slot123;
                                r15 = r14.tagName;
                                r9 = r15;
                                r14 = undefined;
                                if(!(r12 != r15)) { _fun69_ip = 782; continue _fun69 }
case 770:
                                r16 = r9;
                                r15 = r16.trim;
                                r14 = r15.bind(r16)();
case 782:
                                r13 = r14;
                                if(r14) { _fun69_ip = 821; continue _fun69 }
case 788:
                                r14 = _closure2_slot123;
                                r15 = r14.defautlTitle;
                                r8 = r15;
                                r14 = undefined;
                                if(!(r12 != r15)) { _fun69_ip = 818; continue _fun69 }
case 806:
                                r16 = r8;
                                r15 = r16.trim;
                                r14 = r15.bind(r16)();
case 818:
                                r13 = r14;
case 821:
                                r5 = r13;
                                if(!r13) { _fun69_ip = 839; continue _fun69 }
case 827:
                                r14 = _closure2_slot29;
                                r13 = r5;
                                r13 = r14.bind(r4)(r13);
case 839:
                                r14 = _closure2_slot123;
                                r14 = r14.defaultClassifyCode;
                                r2 = r14;
                                r14 = r4 !== r14;
                                r13 = r14;
                                if(!r14) { _fun69_ip = 898; continue _fun69 }
case 861:
                                r15 = r2;
                                r16 = _closure1_slot0;
                                r17 = _closure1_slot1;
                                r14 = 26;
                                r14 = r17[r14];
                                r14 = r16.bind(r4)(r14);
                                r14 = r14.RoomClassify;
                                r14 = r14.ALL;
                                r13 = r15 !== r14;
case 898:
                                if(!r13) { _fun69_ip = 922; continue _fun69 }
case 901:
                                r14 = _closure2_slot35;
                                r15 = _closure1_slot34;
                                r13 = r2;
                                r13 = r15.bind(r4)(r13);
                                r13 = r14.bind(r4)(r13);
case 922:
                                r7 = undefined;
                                return r7;
case 927:
                                r13 = _closure2_slot123;
                                r14 = r13.tagName;
                                r9 = r14;
                                r13 = undefined;
                                if(!(r12 != r14)) { _fun69_ip = 957; continue _fun69 }
case 945:
                                r15 = r9;
                                r14 = r15.trim;
                                r13 = r14.bind(r15)();
case 957:
                                r7 = r13;
                                if(r13) { _fun69_ip = 996; continue _fun69 }
case 963:
                                r13 = _closure2_slot123;
                                r14 = r13.defautlTitle;
                                r8 = r14;
                                r13 = undefined;
                                if(!(r12 != r14)) { _fun69_ip = 993; continue _fun69 }
case 981:
                                r15 = r8;
                                r14 = r15.trim;
                                r13 = r14.bind(r15)();
case 993:
                                r7 = r13;
case 996:
                                r5 = r7;
                                if(!r7) { _fun69_ip = 1014; continue _fun69 }
case 1002:
                                r13 = _closure2_slot29;
                                r7 = r5;
                                r7 = r13.bind(r4)(r7);
case 1014:
                                r13 = _closure2_slot123;
                                r13 = r13.defaultClassifyCode;
                                r2 = r13;
                                r13 = r4 !== r13;
                                r7 = r13;
                                if(!r13) { _fun69_ip = 1073; continue _fun69 }
case 1036:
                                r14 = r2;
                                r15 = _closure1_slot0;
                                r16 = _closure1_slot1;
                                r13 = 26;
                                r13 = r16[r13];
                                r13 = r15.bind(r4)(r13);
                                r13 = r13.RoomClassify;
                                r13 = r13.ALL;
                                r7 = r14 !== r13;
case 1073:
                                if(!r7) { _fun69_ip = 1097; continue _fun69 }
case 1076:
                                r7 = _closure2_slot35;
                                r13 = _closure1_slot34;
                                r3 = r2;
                                r3 = r13.bind(r4)(r3);
                                r3 = r7.bind(r4)(r3);
case 1097:
                                return r1;
case 1100: // try_start_2
                                r7 = _closure1_slot0;
                                r13 = _closure1_slot1;
                                r1 = 24;
                                r1 = r13[r1];
                                r1 = r7.bind(r4)(r1);
                                r7 = r1.getRandomRecRoomName;
                                r1 = 4;
                                r1 = r7.bind(r4)(r1);
                                SaveGenerator(address=1140);
case 1138:
                                return r1;
case 1140:
                                ResumeGenerator(result_out_reg=1, return_bool_out_reg=7);
                                if(r7) { _fun69_ip = 1374; continue _fun69 }
case 1149:
                                r7 = _closure2_slot29;
                                r13 = r1.recRoomName;
                                r11 = r13;
                                if(!(r12 != r13)) { _fun69_ip = 1168; continue _fun69 }
case 1165:
                                r10 = r11;
case 1168:
                                r7 = r7.bind(r4)(r10);
                                r10 = _closure2_slot35;
                                r7 = '闲聊唠嗑';
                                r7 = r10.bind(r4)(r7);
                                r10 = _closure2_slot41;
                                r7 = '已公开';
                                r7 = r10.bind(r4)(r7);
case 1199: // try_end2
                                r11 = _closure2_slot123;
                                r13 = r11.tagName;
                                r9 = r13;
                                r11 = undefined;
                                if(!(r12 != r13)) { _fun69_ip = 1229; continue _fun69 }
case 1217:
                                r14 = r9;
                                r13 = r14.trim;
                                r11 = r13.bind(r14)();
case 1229:
                                r10 = r11;
                                if(r11) { _fun69_ip = 1268; continue _fun69 }
case 1235:
                                r11 = _closure2_slot123;
                                r13 = r11.defautlTitle;
                                r8 = r13;
                                r11 = undefined;
                                if(!(r12 != r13)) { _fun69_ip = 1265; continue _fun69 }
case 1253:
                                r14 = r8;
                                r13 = r14.trim;
                                r11 = r13.bind(r14)();
case 1265:
                                r10 = r11;
case 1268:
                                r5 = r10;
                                if(!r10) { _fun69_ip = 1286; continue _fun69 }
case 1274:
                                r11 = _closure2_slot29;
                                r10 = r5;
                                r10 = r11.bind(r4)(r10);
case 1286:
                                r11 = _closure2_slot123;
                                r11 = r11.defaultClassifyCode;
                                r2 = r11;
                                r11 = r4 !== r11;
                                r10 = r11;
                                if(!r11) { _fun69_ip = 1345; continue _fun69 }
case 1308:
                                r13 = r2;
                                r14 = _closure1_slot0;
                                r15 = _closure1_slot1;
                                r11 = 26;
                                r11 = r15[r11];
                                r11 = r14.bind(r4)(r11);
                                r11 = r11.RoomClassify;
                                r11 = r11.ALL;
                                r10 = r13 !== r11;
case 1345:
                                if(!r10) { _fun69_ip = 1369; continue _fun69 }
case 1348:
                                r11 = _closure2_slot35;
                                r13 = _closure1_slot34;
                                r10 = r2;
                                r10 = r13.bind(r4)(r10);
                                r10 = r11.bind(r4)(r10);
case 1369:
                                r7 = undefined;
                                return r7;
case 1374:
                                r10 = _closure2_slot123;
                                r11 = r10.tagName;
                                r9 = r11;
                                r10 = undefined;
                                if(!(r12 != r11)) { _fun69_ip = 1404; continue _fun69 }
case 1392:
                                r13 = r9;
                                r11 = r13.trim;
                                r10 = r11.bind(r13)();
case 1404:
                                r7 = r10;
                                if(r10) { _fun69_ip = 1443; continue _fun69 }
case 1410:
                                r10 = _closure2_slot123;
                                r11 = r10.defautlTitle;
                                r8 = r11;
                                r10 = undefined;
                                if(!(r12 != r11)) { _fun69_ip = 1440; continue _fun69 }
case 1428:
                                r12 = r8;
                                r11 = r12.trim;
                                r10 = r11.bind(r12)();
case 1440:
                                r7 = r10;
case 1443:
                                r5 = r7;
                                if(!r7) { _fun69_ip = 1461; continue _fun69 }
case 1449:
                                r10 = _closure2_slot29;
                                r7 = r5;
                                r7 = r10.bind(r4)(r7);
case 1461:
                                r10 = _closure2_slot123;
                                r10 = r10.defaultClassifyCode;
                                r2 = r10;
                                r10 = r4 !== r10;
                                r7 = r10;
                                if(!r10) { _fun69_ip = 1520; continue _fun69 }
case 1483:
                                r11 = r2;
                                r12 = _closure1_slot0;
                                r13 = _closure1_slot1;
                                r10 = 26;
                                r10 = r13[r10];
                                r10 = r12.bind(r4)(r10);
                                r10 = r10.RoomClassify;
                                r10 = r10.ALL;
                                r7 = r11 !== r10;
case 1520:
                                if(!r7) { _fun69_ip = 1544; continue _fun69 }
case 1523:
                                r6 = _closure2_slot35;
                                r7 = _closure1_slot34;
                                r3 = r2;
                                r3 = r7.bind(r4)(r3);
                                r3 = r6.bind(r4)(r3);
case 1544:
                                return r1;
case 1547: // catch_target0 // catch_target1 // catch_target2
                                CatchBlockStart(arg_register=1);
                                r7 = _closure2_slot123;
                                r11 = r7.tagName;
                                r9 = r11;
                                r10 = null;
                                r7 = undefined;
                                if(!(r10 != r11)) { _fun69_ip = 1584; continue _fun69 }
case 1572:
                                r11 = r9;
                                r9 = r11.trim;
                                r7 = r9.bind(r11)();
case 1584:
                                r6 = r7;
                                if(r7) { _fun69_ip = 1623; continue _fun69 }
case 1590:
                                r7 = _closure2_slot123;
                                r9 = r7.defautlTitle;
                                r8 = r9;
                                r7 = undefined;
                                if(!(r10 != r9)) { _fun69_ip = 1620; continue _fun69 }
case 1608:
                                r9 = r8;
                                r8 = r9.trim;
                                r7 = r8.bind(r9)();
case 1620:
                                r6 = r7;
case 1623:
                                r5 = r6;
                                if(!r6) { _fun69_ip = 1638; continue _fun69 }
case 1629:
                                r6 = _closure2_slot29;
                                r5 = r6.bind(r4)(r5);
case 1638:
                                r6 = _closure2_slot123;
                                r6 = r6.defaultClassifyCode;
                                r2 = r6;
                                r6 = r4 !== r6;
                                r5 = r6;
                                if(!r6) { _fun69_ip = 1700; continue _fun69 }
case 1660:
                                r7 = r2;
                                r8 = _closure1_slot0;
                                r9 = _closure1_slot1;
                                r6 = 26;
                                r6 = r9[r6];
                                r6 = r8.bind(r4)(r6);
                                r6 = r6.RoomClassify;
                                r6 = r6.ALL;
                                r5 = r7 !== r6;
case 1700:
                                if(!r5) { _fun69_ip = 1724; continue _fun69 }
case 1703:
                                r3 = _closure2_slot35;
                                r5 = _closure1_slot34;
                                r2 = r5.bind(r4)(r2);
                                r2 = r3.bind(r4)(r2);
case 1724:
                                throw r1;
case 1726:
                                return r0;
                            }
                        };
                        return r0;
                    };
                    r1 = r3.bind(r2)(r1);
                    var _closure3_slot0 = r1;
                    r0 = function() { // Environment: r0
                        r0 = undefined;
                        r3 = _closure3_slot0;
                        r2 = r3.apply;
                        r0 = arguments;
                        r1 = r0;
                        r0 = this;
                        r0 = r2.bind(r3)(r0, r1);
                        return r0;
                    };
                    return r0;
                };
                r27 = r27.bind(r3)();
                _closure2_slot95 = r27;
                r27 = function() { // Original name: _o, environment: r18
                    _fun71: for(var _fun71_ip = 0; ; ) switch(_fun71_ip) {
case 0:
                        r4 = undefined;
                        r1 = _closure1_slot0;
                        r2 = _closure1_slot1;
                        r0 = 22;
                        r0 = r2[r0];
                        r0 = r1.bind(r4)(r0);
                        r2 = r0.SRNApiConfig;
                        r1 = r2.get;
                        r0 = ['create_room_page_game_tab_switch'];
                        r1 = r1.bind(r2)(r0);
                        r0 = null;
                        r3 = undefined;
                        if(!(r0 != r1)) { _fun71_ip = 62; continue _fun71 }
case 56:
                        r3 = r1.create_room_page_game_tab_switch;
case 62:
                        r0 = r0 == r3;
                        if(r0) { _fun71_ip = 116; continue _fun71 }
case 69:
                        r5 = 'boolean';
                        r2 = typeof r3;
                        r1 = r3;
                        if(!(r5 !== r2)) { _fun71_ip = 113; continue _fun71 }
case 83:
                        r2 = global;
                        r2 = r2.String;
                        r3 = r2.bind(r4)(r3);
                        r2 = r3.toLowerCase;
                        r3 = r2.bind(r3)();
                        r2 = 'false';
                        r1 = r2 !== r3;
case 113:
                        r0 = r1;
case 116:
                        return r0;
                    }
                };
                _closure2_slot96 = r27;
                r82 = r9.useEffect;
                r79 = function() { // Environment: r18
                    _fun72: for(var _fun72_ip = 0; ; ) switch(_fun72_ip) {
case 0:
                        r1 = _closure1_slot8;
                        r1 = r1.Platform;
                        r3 = r1.OS;
                        r1 = 'ios';
                        if(!(r1 == r3)) { _fun72_ip = 72; continue _fun72 }
case 27:
                        r4 = _closure1_slot0;
                        r3 = _closure1_slot1;
                        r1 = 22;
                        r3 = r3[r1];
                        r1 = undefined;
                        r1 = r4.bind(r1)(r3);
                        r5 = r1.SoulEventCenter;
                        r4 = r5.sendEvent;
                        r3 = 'create_room_page_entry';
                        r1 = {};
                        r1 = r4.bind(r5)(r3, r1);
case 72:
                        r3 = _closure1_slot0;
                        r4 = _closure1_slot1;
                        r1 = 27;
                        r1 = r4[r1];
                        r4 = undefined;
                        r1 = r3.bind(r4)(r1);
                        r7 = r1.CreateRoomTrackPoint;
                        r6 = r7.eventCreateRoomPageView;
                        r3 = _closure2_slot123;
                        r5 = r3.source;
                        r5 = r6.bind(r7)(r5);
                        r5 = _closure2_slot52;
                        r3 = r3.defaultDisplayTabCode;
                        r3 = r5.bind(r4)(r3);
                        r3 = _closure2_slot94;
                        r6 = r3.bind(r4)();
                        r5 = r6.catch;
                        r3 = function() { // Environment: r0
                            r0 = undefined;
                            return r0;
                        };
                        r3 = r5.bind(r6)(r3);
                        r3 = _closure2_slot95;
                        r3 = r3.bind(r4)();
                        r2 = _closure1_slot8;
                        r4 = r2.Animated;
                        r3 = r4.timing;
                        r2 = _closure2_slot43;
                        r1 = {'toValue': 1, 'duration': 300, 'useNativeDriver': true};
                        r2 = r3.bind(r4)(r2, r1);
                        r1 = r2.start;
                        r1 = r1.bind(r2)();
                        r0 = function() { // Environment: r0
                            r0 = undefined;
                            return r0;
                        };
                        return r0;
                    }
                };
                r27 = new Array(0);
                r27 = r82.bind(r3)(r79, r27);
                r27 = function(a0) { // Original name: No, environment: r18
                    _fun75: for(var _fun75_ip = 0; ; ) switch(_fun75_ip) {
case 0:
                        r3 = null;
                        r0 = a0;
                        r1 = r0.playTypeConfigList;
                        r0 = r1;
                        if(!r0) { _fun75_ip = 27; continue _fun75 }
case 16:
                        r4 = r1.length;
                        r2 = 0;
                        r0 = r2 !== r4;
case 27:
                        if(!r0) { _fun75_ip = 117; continue _fun75 }
case 30:
                        r0 = 0;
                        r1 = r1[r0];
                        r5 = _closure2_slot49;
                        r4 = r1.playTypeCode;
                        r2 = undefined;
                        r4 = r5.bind(r2)(r4);
                        r4 = _closure2_slot36;
                        if(r4) { _fun75_ip = 98; continue _fun75 }
case 62:
                        r5 = _closure2_slot100;
                        r4 = r1.playTypeCode;
                        r6 = r5.bind(r2)(r4);
                        if(!(r3 != r6)) { _fun75_ip = 98; continue _fun75 }
case 80:
                        r5 = _closure2_slot35;
                        r4 = _closure2_slot99;
                        r4 = r4.bind(r2)(r6);
                        r4 = r5.bind(r2)(r4);
case 98:
                        r1 = r1.previewBackground;
                        if(r1) { _fun75_ip = 108; continue _fun75 }
case 106:
                        r1 = null;
case 108:
                        r0 = _closure2_slot73;
                        r0 = r0.bind(r2)(r1);
case 117:
                        r0 = undefined;
                        return r0;
                    }
                };
                _closure2_slot97 = r27;
                r82 = r9.useEffect;
                r27 = _closure2_slot46;
                r79 = new Array(6);
                r79[0] = r27;
                r27 = _closure2_slot55;
                r79[1] = r27;
                r27 = _closure2_slot50;
                r79[2] = r27;
                r27 = _closure2_slot48;
                r79[3] = r27;
                r27 = _closure2_slot36;
                r79[4] = r27;
                r27 = _closure2_slot32;
                r79[5] = r27;
                r27 = function() { // Environment: r18
                    _fun76: for(var _fun76_ip = 0; ; ) switch(_fun76_ip) {
case 0:
                        r0 = undefined;
                        r8 = null;
                        r2 = 1;
                        r3 = _closure2_slot55;
                        r3 = r3.length;
                        r9 = 0;
                        r3 = r9 !== r3;
                        if(!r3) { _fun76_ip = 42; continue _fun76 }
case 30:
                        r6 = _closure2_slot55;
                        r4 = _closure2_slot46;
                        r3 = r6[r4];
case 42:
                        if(r3) { _fun76_ip = 58; continue _fun76 }
case 45:
                        var _closure3_slot0 = r0;
                        var _closure3_slot1 = r0;
                        _fun76_ip = 858; continue _fun76;
case 58:
                        r4 = _closure2_slot55;
                        r3 = _closure2_slot46;
                        r13 = r4[r3];
                        r6 = r13.tabCode;
                        r12 = r13.playTypeConfigList;
                        r7 = _closure2_slot48;
                        r11 = function(a0) { // Original name: l, environment: r5
                            _fun77: for(var _fun77_ip = 0; ; ) switch(_fun77_ip) {
case 0:
                                r3 = a0;
                                r5 = undefined;
                                r6 = null;
                                if(!(r6 != r3)) { _fun77_ip = 159; continue _fun77 }
case 16:
                                r1 = _closure3_slot0;
                                if(!(r6 != r1)) { _fun77_ip = 52; continue _fun77 }
case 27:
                                var _closure4_slot0 = r3;
                                r4 = _closure3_slot0;
                                r1 = r4.find;
                                r0 = function(a0) { // Environment: r2
                                    r0 = a0;
                                    r1 = r0.playTypeCode;
                                    r0 = _closure4_slot0;
                                    r0 = r1 === r0;
                                    return r0;
                                };
                                r1 = r1.bind(r4)(r0);
                                _fun77_ip = 58; continue _fun77;
case 52:
                                _closure4_slot0 = r3;
                                r1 = undefined;
case 58:
                                if(r1) { _fun77_ip = 73; continue _fun77 }
case 61:
                                r0 = {'restored': false, 'playType': null};
                                _fun77_ip = 157; continue _fun77;
case 73:
                                r7 = _closure2_slot49;
                                r7 = r7.bind(r5)(r3);
                                r7 = _closure2_slot36;
                                if(r7) { _fun77_ip = 123; continue _fun77 }
case 92:
                                r7 = _closure2_slot100;
                                r9 = r7.bind(r5)(r3);
                                if(!(r6 != r9)) { _fun77_ip = 123; continue _fun77 }
case 105:
                                r8 = _closure2_slot35;
                                r7 = _closure2_slot99;
                                r7 = r7.bind(r5)(r9);
                                r7 = r8.bind(r5)(r7);
case 123:
                                r4 = _closure2_slot73;
                                r1 = r1.previewBackground;
                                if(r1) { _fun77_ip = 137; continue _fun77 }
case 135:
                                r1 = null;
case 137:
                                r1 = r4.bind(r5)(r1);
                                r1 = {};
                                r4 = true;
                                r1['restored'] = r4;
                                r1['playType'] = r3;
                                r0 = r1;
case 157:
                                _fun77_ip = 173; continue _fun77;
case 159:
                                r0 = {'restored': false, 'playType': null};
                                _closure4_slot0 = r3;
case 173:
                                return r0;
                            }
                        };
                        r3 = 'wanfa';
                        r4 = r3 === r6;
                        if(r4) { _fun76_ip = 542; continue _fun76 }
case 103:
                        r3 = 'youxi';
                        if(!(r3 !== r6)) { _fun76_ip = 398; continue _fun76 }
case 114:
                        r3 = 'ktv';
                        if(!(r3 !== r6)) { _fun76_ip = 336; continue _fun76 }
case 125:
                        r14 = _closure1_slot0;
                        r3 = _closure1_slot1;
                        r16 = 21;
                        r3 = r3[r16];
                        r3 = r14.bind(r0)(r3);
                        r3 = r3.isVideoTabConfig;
                        r3 = r3.bind(r0)(r13);
                        if(!r3) { _fun76_ip = 168; continue _fun76 }
case 161:
                        r3 = _closure2_slot15;
                        if(r3) { _fun76_ip = 252; continue _fun76 }
case 168:
                        r3 = _closure2_slot49;
                        r3 = r3.bind(r0)(r8);
                        r14 = 'yuliao';
                        r3 = r14 !== r6;
                        if(r3) { _fun76_ip = 192; continue _fun76 }
case 188:
                        r3 = _closure2_slot36;
case 192:
                        if(r3) { _fun76_ip = 208; continue _fun76 }
case 195:
                        r15 = _closure2_slot35;
                        r3 = '闲聊唠嗑';
                        r3 = r15.bind(r0)(r3);
case 208:
                        r3 = _closure1_slot22;
                        r3 = r3.background;
                        r3 = r3.enableBackgroundRestore;
                        if(!r3) { _fun76_ip = 229; continue _fun76 }
case 225:
                        r3 = r14 === r6;
case 229:
                        if(!r3) { _fun76_ip = 241; continue _fun76 }
case 232:
                        r3 = _closure2_slot73;
                        r3 = r3.bind(r0)(r8);
case 241:
                        _closure3_slot0 = r12;
                        r3 = null;
                        _fun76_ip = 678; continue _fun76;
case 252:
                        r15 = _closure1_slot0;
                        r10 = _closure1_slot1;
                        r14 = r10[r16];
                        r14 = r15.bind(r0)(r14);
                        r14 = r14.matchVideoPlayType;
                        r10 = r10[r16];
                        r10 = r15.bind(r0)(r10);
                        r10 = r10.LiveVideoMode;
                        r10 = r10.CAMERA;
                        r14 = r14.bind(r0)(r12, r10);
                        r10 = _closure2_slot48;
                        if(!(r10 !== r14)) { _fun76_ip = 316; continue _fun76 }
case 307:
                        r10 = _closure2_slot49;
                        r10 = r10.bind(r0)(r14);
case 316:
                        r10 = _closure2_slot73;
                        r10 = r10.bind(r0)(r8);
                        _closure3_slot0 = r12;
                        r3 = null;
                        _fun76_ip = 678; continue _fun76;
case 336:
                        r10 = _closure2_slot48;
                        if(!(r2 !== r10)) { _fun76_ip = 386; continue _fun76 }
case 344:
                        r14 = _closure2_slot73;
                        r10 = _closure2_slot50;
                        r10 = r14.bind(r0)(r10);
                        r10 = _closure2_slot49;
                        r10 = r10.bind(r0)(r2);
                        r10 = _closure2_slot36;
                        if(r10) { _fun76_ip = 386; continue _fun76 }
case 373:
                        r14 = _closure2_slot35;
                        r10 = '唱歌听歌';
                        r10 = r14.bind(r0)(r10);
case 386:
                        _closure3_slot0 = r12;
                        r3 = r2;
                        _fun76_ip = 678; continue _fun76;
case 398:
                        r10 = _closure2_slot48;
                        r10 = r8 != r10;
                        if(!r10) { _fun76_ip = 433; continue _fun76 }
case 409:
                        r14 = undefined;
                        if(!(r8 != r12)) { _fun76_ip = 430; continue _fun76 }
case 415:
                        r16 = r12.some;
                        r15 = function(a0) { // Environment: r5
                            r0 = a0;
                            r1 = r0.playTypeCode;
                            r0 = _closure2_slot48;
                            r0 = r1 === r0;
                            return r0;
                        };
                        r14 = r16.bind(r12)(r15);
case 430:
                        r10 = r14;
case 433:
                        _closure3_slot0 = r12;
                        if(r10) { _fun76_ip = 534; continue _fun76 }
case 440:
                        r10 = _closure2_slot26;
                        r10 = r10.current;
                        r10 = r11.bind(r0)(r10);
                        r14 = r10.restored;
                        r10 = r10.playType;
                        if(!r14) { _fun76_ip = 471; continue _fun76 }
case 467:
                        if(!(r8 == r10)) { _fun76_ip = 526; continue _fun76 }
case 471:
                        r15 = _closure2_slot97;
                        r14 = '游戏';
                        r14 = r15.bind(r0)(r13, r14);
                        r14 = _closure3_slot0;
                        r15 = undefined;
                        if(!(r8 != r14)) { _fun76_ip = 514; continue _fun76 }
case 495:
                        r14 = _closure3_slot0;
                        r14 = r14[r9];
                        r15 = undefined;
                        if(!(r8 != r14)) { _fun76_ip = 514; continue _fun76 }
case 509:
                        r15 = r14.playTypeCode;
case 514:
                        r14 = null;
                        if(!(r8 != r15)) { _fun76_ip = 523; continue _fun76 }
case 520:
                        r14 = r15;
case 523:
                        r10 = r14;
case 526:
                        r3 = r10;
                        _fun76_ip = 678; continue _fun76;
case 534:
                        r3 = r7;
                        _fun76_ip = 678; continue _fun76;
case 542:
                        r10 = _closure2_slot48;
                        r10 = r8 != r10;
                        if(!r10) { _fun76_ip = 577; continue _fun76 }
case 553:
                        r14 = undefined;
                        if(!(r8 != r12)) { _fun76_ip = 574; continue _fun76 }
case 559:
                        r16 = r12.some;
                        r15 = function(a0) { // Environment: r5
                            r0 = a0;
                            r1 = r0.playTypeCode;
                            r0 = _closure2_slot48;
                            r0 = r1 === r0;
                            return r0;
                        };
                        r14 = r16.bind(r12)(r15);
case 574:
                        r10 = r14;
case 577:
                        _closure3_slot0 = r12;
                        if(r10) { _fun76_ip = 675; continue _fun76 }
case 584:
                        r10 = _closure2_slot25;
                        r10 = r10.current;
                        r10 = r11.bind(r0)(r10);
                        r11 = r10.restored;
                        r10 = r10.playType;
                        if(!r11) { _fun76_ip = 615; continue _fun76 }
case 611:
                        if(!(r8 == r10)) { _fun76_ip = 670; continue _fun76 }
case 615:
                        r12 = _closure2_slot97;
                        r11 = '玩法';
                        r11 = r12.bind(r0)(r13, r11);
                        r11 = _closure3_slot0;
                        r12 = undefined;
                        if(!(r8 != r11)) { _fun76_ip = 658; continue _fun76 }
case 639:
                        r11 = _closure3_slot0;
                        r11 = r11[r9];
                        r12 = undefined;
                        if(!(r8 != r11)) { _fun76_ip = 658; continue _fun76 }
case 653:
                        r12 = r11.playTypeCode;
case 658:
                        r11 = null;
                        if(!(r8 != r12)) { _fun76_ip = 667; continue _fun76 }
case 664:
                        r11 = r12;
case 667:
                        r10 = r11;
case 670:
                        r3 = r10;
                        _fun76_ip = 678; continue _fun76;
case 675:
                        r3 = r7;
case 678:
                        r7 = 'ktv';
                        if(!(r7 !== r6)) { _fun76_ip = 794; continue _fun76 }
case 686:
                        if(r4) { _fun76_ip = 705; continue _fun76 }
case 689:
                        r4 = 'youxi';
                        if(!(r4 !== r6)) { _fun76_ip = 705; continue _fun76 }
case 697:
                        _closure3_slot1 = r3;
                        r4 = null;
                        _fun76_ip = 792; continue _fun76;
case 705:
                        r6 = _closure3_slot0;
                        if(!(r8 == r6)) { _fun76_ip = 719; continue _fun76 }
case 713:
                        _closure3_slot1 = r3;
                        _fun76_ip = 745; continue _fun76;
case 719:
                        _closure3_slot1 = r3;
                        r10 = _closure3_slot0;
                        r7 = r10.some;
                        r6 = function(a0) { // Environment: r5
                            r0 = a0;
                            r1 = r0.playTypeCode;
                            r0 = _closure3_slot1;
                            r0 = r1 === r0;
                            return r0;
                        };
                        r6 = r7.bind(r10)(r6);
                        if(r6) { _fun76_ip = 785; continue _fun76 }
case 745:
                        r6 = _closure3_slot0;
                        r7 = undefined;
                        if(!(r8 != r6)) { _fun76_ip = 774; continue _fun76 }
case 755:
                        r6 = _closure3_slot0;
                        r6 = r6[r9];
                        r7 = undefined;
                        if(!(r8 != r6)) { _fun76_ip = 774; continue _fun76 }
case 769:
                        r7 = r6.playTypeCode;
case 774:
                        r6 = null;
                        if(!(r8 != r7)) { _fun76_ip = 783; continue _fun76 }
case 780:
                        r6 = r7;
case 783:
                        _fun76_ip = 789; continue _fun76;
case 785:
                        r6 = _closure3_slot1;
case 789:
                        r4 = r6;
case 792:
                        _fun76_ip = 801; continue _fun76;
case 794:
                        _closure3_slot1 = r3;
                        r4 = r2;
case 801:
                        r2 = _closure2_slot24;
                        r2 = r2.current;
                        if(r2) { _fun76_ip = 846; continue _fun76 }
case 813:
                        r3 = _closure2_slot31;
                        r2 = _closure1_slot33;
                        r2 = r2.bind(r0)(r4);
                        r2 = !r2;
                        if(!r2) { _fun76_ip = 839; continue _fun76 }
case 835:
                        r2 = _closure2_slot32;
case 839:
                        r2 = r3.bind(r0)(r2);
                        _fun76_ip = 858; continue _fun76;
case 846:
                        r2 = _closure2_slot24;
                        r1 = false;
                        r2['current'] = r1;
case 858:
                        return r0;
                    }
                };
                r27 = r82.bind(r3)(r27, r79);
                r82 = r9.useEffect;
                r27 = _closure2_slot46;
                r79 = new Array(3);
                r79[0] = r27;
                r27 = _closure2_slot55;
                r79[1] = r27;
                r27 = _closure2_slot48;
                r79[2] = r27;
                r27 = function() { // Environment: r18
                    _fun82: for(var _fun82_ip = 0; ; ) switch(_fun82_ip) {
case 0:
                        r1 = _closure2_slot55;
                        r3 = r1.length;
                        r1 = 0;
                        r1 = r1 !== r3;
                        if(!r1) { _fun82_ip = 35; continue _fun82 }
case 23:
                        r4 = _closure2_slot55;
                        r3 = _closure2_slot46;
                        r1 = r4[r3];
case 35:
                        if(!r1) { _fun82_ip = 197; continue _fun82 }
case 41:
                        r4 = _closure2_slot55;
                        r1 = _closure2_slot46;
                        r3 = r4[r1];
                        r3 = r3.tabCode;
                        r1 = r4[r1];
                        r4 = r1.playTypeConfigList;
                        r1 = 'wanfa';
                        r1 = r1 === r3;
                        if(!r1) { _fun82_ip = 88; continue _fun82 }
case 78:
                        r6 = _closure2_slot48;
                        r5 = null;
                        r1 = r5 != r6;
case 88:
                        if(!r1) { _fun82_ip = 97; continue _fun82 }
case 91:
                        r5 = null;
                        r1 = r5 != r4;
case 97:
                        if(!r1) { _fun82_ip = 115; continue _fun82 }
case 100:
                        r6 = r4.some;
                        r5 = function(a0) { // Environment: r2
                            r0 = a0;
                            r1 = r0.playTypeCode;
                            r0 = _closure2_slot48;
                            r0 = r1 === r0;
                            return r0;
                        };
                        r1 = r6.bind(r4)(r5);
case 115:
                        if(!r1) { _fun82_ip = 132; continue _fun82 }
case 118:
                        r5 = _closure2_slot25;
                        r1 = _closure2_slot48;
                        r5['current'] = r1;
case 132:
                        r1 = 'youxi';
                        r1 = r1 === r3;
                        if(!r1) { _fun82_ip = 153; continue _fun82 }
case 143:
                        r5 = _closure2_slot48;
                        r3 = null;
                        r1 = r3 != r5;
case 153:
                        if(!r1) { _fun82_ip = 162; continue _fun82 }
case 156:
                        r3 = null;
                        r1 = r3 != r4;
case 162:
                        if(!r1) { _fun82_ip = 180; continue _fun82 }
case 165:
                        r3 = r4.some;
                        r2 = function(a0) { // Environment: r2
                            r0 = a0;
                            r1 = r0.playTypeCode;
                            r0 = _closure2_slot48;
                            r0 = r1 === r0;
                            return r0;
                        };
                        r1 = r3.bind(r4)(r2);
case 180:
                        if(!r1) { _fun82_ip = 197; continue _fun82 }
case 183:
                        r1 = _closure2_slot26;
                        r0 = _closure2_slot48;
                        r1['current'] = r0;
case 197:
                        r0 = undefined;
                        return r0;
                    }
                };
                r27 = r82.bind(r3)(r27, r79);
                r79 = r9.useEffect;
                r9 = _closure2_slot48;
                r27 = new Array(1);
                r27[0] = r9;
                r9 = function() { // Environment: r18
                    _fun85: for(var _fun85_ip = 0; ; ) switch(_fun85_ip) {
case 0:
                        r3 = _closure2_slot48;
                        r2 = 18;
                        if(!(r3 !== r2)) { _fun85_ip = 46; continue _fun85 }
case 16:
                        r4 = _closure2_slot41;
                        r2 = undefined;
                        r3 = function(a0) { // Environment: r0
                            _fun86: for(var _fun86_ip = 0; ; ) switch(_fun86_ip) {
case 0:
                                r1 = a0;
                                r0 = '已公开';
                                r2 = '仅挚友';
                                if(!(r2 !== r1)) { _fun86_ip = 18; continue _fun86 }
case 15:
                                r0 = r1;
case 18:
                                return r0;
                            }
                        };
                        r3 = r4.bind(r2)(r3);
                        r1 = _closure2_slot69;
                        r0 = function(a0) { // Environment: r0
                            _fun87: for(var _fun87_ip = 0; ; ) switch(_fun87_ip) {
case 0:
                                r1 = a0;
                                r0 = 'all';
                                r2 = 'friendsOnly';
                                if(!(r2 !== r1)) { _fun87_ip = 18; continue _fun87 }
case 15:
                                r0 = r1;
case 18:
                                return r0;
                            }
                        };
                        r0 = r1.bind(r2)(r0);
case 46:
                        r0 = undefined;
                        return r0;
                    }
                };
                r9 = r79.bind(r3)(r9, r27);
                r9 = function(a0) { // Original name: Bo, environment: r18
                    r2 = _closure1_slot34;
                    r1 = undefined;
                    r0 = a0;
                    r0 = r2.bind(r1)(r0);
                    return r0;
                };
                _closure2_slot99 = r9;
                r9 = function(a0) { // Original name: Do, environment: r18
                    _fun92: for(var _fun92_ip = 0; ; ) switch(_fun92_ip) {
case 0:
                        r4 = a0;
                        r5 = _closure2_slot53;
                        r2 = null;
                        if(!(r2 != r5)) { _fun92_ip = 43; continue _fun92 }
case 18:
                        var _closure3_slot0 = r4;
                        r6 = _closure2_slot53;
                        r5 = r6.find;
                        r1 = function(a0) { // Environment: r3
                            r0 = a0;
                            r1 = r0.playType;
                            r0 = _closure3_slot0;
                            r0 = r1 === r0;
                            return r0;
                        };
                        r1 = r5.bind(r6)(r1);
                        _fun92_ip = 49; continue _fun92;
case 43:
                        _closure3_slot0 = r4;
                        r1 = undefined;
case 49:
                        r0 = undefined;
                        if(!(r2 != r1)) { _fun92_ip = 61; continue _fun92 }
case 55:
                        r0 = r1.classifyCode;
case 61:
                        return r0;
                    }
                };
                _closure2_slot100 = r9;
                r27 = function(a0) { // Original name: Fo, environment: r18
                    _fun94: for(var _fun94_ip = 0; ; ) switch(_fun94_ip) {
case 0:
                        r1 = a0;
                        r0 = '闲聊唠嗑';
                        if(!(r0 !== r1)) { _fun94_ip = 89; continue _fun94 }
case 11:
                        r0 = '唱歌听歌';
                        if(!(r0 !== r1)) { _fun94_ip = 84; continue _fun94 }
case 19:
                        r0 = '心动速配';
                        if(!(r0 !== r1)) { _fun94_ip = 79; continue _fun94 }
case 27:
                        r0 = '趣味辩论';
                        if(!(r0 !== r1)) { _fun94_ip = 74; continue _fun94 }
case 35:
                        r0 = '兴趣交流';
                        if(!(r0 !== r1)) { _fun94_ip = 69; continue _fun94 }
case 43:
                        r0 = '情感故事';
                        if(!(r0 !== r1)) { _fun94_ip = 64; continue _fun94 }
case 51:
                        r0 = '热门话题';
                        if(!(r0 === r1)) { _fun94_ip = 89; continue _fun94 }
case 59:
                        r0 = 7;
                        return r0;
case 64:
                        r0 = 5;
                        return r0;
case 69:
                        r0 = 10;
                        return r0;
case 74:
                        r0 = 6;
                        return r0;
case 79:
                        r0 = 2;
                        return r0;
case 84:
                        r0 = 1;
                        return r0;
case 89:
                        r0 = 4;
                        return r0;
                    }
                };
                r85 = r27.bind(r3)(r69);
                r9 = _closure1_slot22;
                r9 = r9.tabs;
                r9 = r9.showVideoTab;
                if(!r9) { _fun13_ip = 2819; continue _fun13 }
case 2811:
                r79 = _closure2_slot15;
                r9 = r58 != r79;
case 2819:
                if(!r9) { _fun13_ip = 2864; continue _fun13 }
case 2822:
                r82 = _closure1_slot0;
                r84 = _closure1_slot1;
                r79 = 21;
                r79 = r84[r79];
                r79 = r82.bind(r3)(r79);
                r82 = r79.isVideoTabConfig;
                r84 = _closure2_slot55;
                r79 = _closure2_slot46;
                r79 = r84[r79];
                r9 = r82.bind(r3)(r79);
case 2864:
                var _closure2_slot9 = r5;
                var _closure2_slot102 = r3;
                var _closure2_slot101 = r9;
                r62['current'] = r9;
                r5 = _closure1_slot7;
                r82 = r5.useEffect;
                r79 = new Array(2);
                r79[0] = r9;
                r9 = _closure2_slot15;
                r79[1] = r9;
                r9 = function() { // Environment: r18
                    _fun95: for(var _fun95_ip = 0; ; ) switch(_fun95_ip) {
case 0:
                        r1 = _closure2_slot101;
                        if(!r1) { _fun95_ip = 14; continue _fun95 }
case 10:
                        r1 = _closure2_slot15;
case 14:
                        if(!r1) { _fun95_ip = 31; continue _fun95 }
case 17:
                        r1 = _closure2_slot15;
                        r0 = r1.ensureClarityOptions;
                        r0 = r0.bind(r1)();
case 31:
                        r0 = function() { // Environment: r0
                            r1 = _closure2_slot9;
                            r2 = r1.current;
                            r0 = 1;
                            r0 = r2 + r0;
                            r1['current'] = r0;
                            r0 = undefined;
                            return r0;
                        };
                        return r0;
                    }
                };
                r9 = r82.bind(r3)(r9, r79);
                r82 = r5.useCallback;
                r9 = _closure2_slot55;
                r79 = new Array(3);
                r79[0] = r9;
                r9 = _closure2_slot46;
                r79[1] = r9;
                r9 = _closure2_slot15;
                r79[2] = r9;
                r9 = function() { // Environment: r18
                    _fun97: for(var _fun97_ip = 0; ; ) switch(_fun97_ip) {
case 0:
                        r3 = undefined;
                        r1 = _closure2_slot15;
                        r5 = null;
                        r2 = undefined;
                        if(!(r5 != r1)) { _fun97_ip = 26; continue _fun97 }
case 17:
                        r1 = _closure2_slot15;
                        r2 = r1.liveVideoMode;
case 26:
                        if(!(r5 == r2)) { _fun97_ip = 63; continue _fun97 }
case 30:
                        r4 = _closure1_slot0;
                        r6 = _closure1_slot1;
                        r1 = 21;
                        r1 = r6[r1];
                        r1 = r4.bind(r3)(r1);
                        r1 = r1.LiveVideoMode;
                        r2 = r1.CAMERA;
case 63:
                        r4 = _closure1_slot0;
                        r6 = _closure1_slot1;
                        r1 = 21;
                        r1 = r6[r1];
                        r1 = r4.bind(r3)(r1);
                        r1 = r1.matchVideoPlayType;
                        r4 = _closure2_slot55;
                        r0 = _closure2_slot46;
                        r4 = r4[r0];
                        r0 = undefined;
                        if(!(r5 != r4)) { _fun97_ip = 114; continue _fun97 }
case 109:
                        r0 = r4.playTypeConfigList;
case 114:
                        r0 = r1.bind(r3)(r0, r2);
                        return r0;
                    }
                };
                r9 = r82.bind(r3)(r9, r79);
                _closure2_slot102 = r9;
                r79 = r5.useCallback;
                r5 = _closure2_slot102;
                r9 = new Array(4);
                r9[0] = r5;
                r5 = _closure2_slot55;
                r9[1] = r5;
                r5 = _closure2_slot46;
                r9[2] = r5;
                r5 = _closure2_slot15;
                r9[3] = r5;
                r5 = function() { // Environment: r18
                    _fun98: for(var _fun98_ip = 0; ; ) switch(_fun98_ip) {
case 0:
                        r5 = undefined;
                        r0 = _closure2_slot102;
                        r0 = r0.bind(r5)();
                        r6 = null;
                        if(!(r6 == r0)) { _fun98_ip = 289; continue _fun98 }
case 22:
                        r2 = _closure2_slot15;
                        r11 = undefined;
                        if(!(r6 != r2)) { _fun98_ip = 41; continue _fun98 }
case 32:
                        r2 = _closure2_slot15;
                        r11 = r2.liveVideoMode;
case 41:
                        if(!(r6 == r11)) { _fun98_ip = 78; continue _fun98 }
case 45:
                        r3 = _closure1_slot0;
                        r4 = _closure1_slot1;
                        r2 = 21;
                        r2 = r4[r2];
                        r2 = r3.bind(r5)(r2);
                        r2 = r2.LiveVideoMode;
                        r11 = r2.CAMERA;
case 78:
                        r3 = global;
                        r4 = r3.JSON;
                        r2 = r4.stringify;
                        r7 = _closure2_slot55;
                        r1 = _closure2_slot46;
                        r7 = r7[r1];
                        r1 = undefined;
                        if(!(r6 != r7)) { _fun98_ip = 138; continue _fun98 }
case 110:
                        r9 = r7.playTypeConfigList;
                        r1 = undefined;
                        if(!(r6 != r9)) { _fun98_ip = 138; continue _fun98 }
case 121:
                        r8 = r9.map;
                        r7 = function(a0) { // Environment: r7
                            _fun99: for(var _fun99_ip = 0; ; ) switch(_fun99_ip) {
case 0:
                                r1 = a0;
                                r2 = null;
                                r0 = undefined;
                                if(!(r2 != r1)) { _fun99_ip = 16; continue _fun99 }
case 11:
                                r0 = r1.playTypeCode;
case 16:
                                return r0;
                            }
                        };
                        r1 = r8.bind(r9)(r7);
case 138:
                        if(!(r6 == r1)) { _fun98_ip = 146; continue _fun98 }
case 142:
                        r1 = new Array(0);
case 146:
                        r12 = r2.bind(r4)(r1);
                        r2 = _closure1_slot0;
                        r6 = _closure1_slot1;
                        r1 = 21;
                        r4 = r6[r1];
                        r4 = r2.bind(r5)(r4);
                        r4 = r4.expectedVideoPlayType;
                        r14 = r4.bind(r5)(r11);
                        r3 = r3.HermesInternal;
                        r8 = r3.concat;
                        r17 = '视频玩法码匹配失败：mode=';
                        r15 = '，期望 playType=';
                        r13 = '，下发玩法码=';
                        r16 = r11;
                        r9 = r17[r8](r16, r15, r14, r13, r12, r11);
                        r3 = 22;
                        r4 = r6[r3];
                        r4 = r2.bind(r5)(r4);
                        r8 = r4.SRNApiLog;
                        r7 = r8.warn;
                        r4 = 'CreateParty';
                        r4 = r7.bind(r8)(r4, r9);
                        r3 = r6[r3];
                        r3 = r2.bind(r5)(r3);
                        r4 = r3.SRNApiToast;
                        r3 = r4.toast;
                        r1 = r6[r1];
                        r1 = r2.bind(r5)(r1);
                        r2 = r1.VIDEO_PLAY_TYPE_UNRESOLVED_TIP;
                        r1 = true;
                        r1 = r3.bind(r4)(r2, r1);
case 289:
                        return r0;
                    }
                };
                r9 = r79.bind(r3)(r5, r9);
                r5 = _closure2_slot55;
                r5 = r5.length;
                r5 = r5 > r41;
                if(!r5) { _fun13_ip = 3046; continue _fun13 }
case 3034:
                r82 = _closure2_slot55;
                r79 = _closure2_slot46;
                r5 = r82[r79];
case 3046:
                if(!r5) { _fun13_ip = 3058; continue _fun13 }
case 3049:
                r79 = r75.length;
                r5 = r79 > r41;
case 3058:
                r79 = undefined;
                if(!r5) { _fun13_ip = 3098; continue _fun13 }
case 3063:
                r82 = undefined;
                if(!(r58 != r83)) { _fun13_ip = 3091; continue _fun13 }
case 3069:
                r84 = r83.supportedClassifyList;
                r82 = undefined;
                if(!(r58 != r84)) { _fun13_ip = 3091; continue _fun13 }
case 3081:
                r83 = r84.includes;
                r82 = r83.bind(r84)(r85);
case 3091:
                r5 = r58 != r82;
                r79 = r82;
case 3098:
                if(!r5) { _fun13_ip = 3104; continue _fun13 }
case 3101:
                r5 = r79;
case 3104:
                var _closure2_slot14 = r78;
                var _closure2_slot16 = r77;
                var _closure2_slot17 = r76;
                var _closure2_slot20 = r74;
                var _closure2_slot21 = r73;
                var _closure2_slot22 = r72;
                var _closure2_slot28 = r71;
                var _closure2_slot30 = r70;
                var _closure2_slot34 = r69;
                var _closure2_slot38 = r61;
                var _closure2_slot40 = r60;
                var _closure2_slot57 = r59;
                var _closure2_slot58 = r56;
                var _closure2_slot59 = r55;
                var _closure2_slot66 = r51;
                var _closure2_slot68 = r50;
                var _closure2_slot70 = r47;
                var _closure2_slot76 = r31;
                var _closure2_slot80 = r30;
                var _closure2_slot98 = r27;
                var _closure2_slot103 = r9;
                var _closure2_slot105 = r3;
                var _closure2_slot106 = r3;
                var _closure2_slot108 = r3;
                var _closure2_slot110 = r3;
                var _closure2_slot111 = r3;
                var _closure2_slot112 = r3;
                var _closure2_slot113 = r3;
                var _closure2_slot114 = r3;
                var _closure2_slot115 = r3;
                var _closure2_slot119 = r3;
                var _closure2_slot104 = r5;
                r27 = _closure1_slot7;
                r9 = r27.useRef;
                r9 = r9.bind(r3)(r26);
                _closure2_slot105 = r9;
                r30 = r27.useEffect;
                r9 = new Array(1);
                r9[0] = r5;
                r5 = function() { // Environment: r18
                    _fun100: for(var _fun100_ip = 0; ; ) switch(_fun100_ip) {
case 0:
                        r1 = _closure2_slot104;
                        if(!r1) { _fun100_ip = 22; continue _fun100 }
case 10:
                        r2 = _closure2_slot105;
                        r2 = r2.current;
                        r1 = !r2;
case 22:
                        if(!r1) { _fun100_ip = 65; continue _fun100 }
case 25:
                        r3 = _closure1_slot0;
                        r2 = _closure1_slot1;
                        r1 = 27;
                        r2 = r2[r1];
                        r1 = undefined;
                        r1 = r3.bind(r1)(r2);
                        r2 = r1.CreateRoomTrackPoint;
                        r1 = r2.eventTopicClick;
                        r1 = r1.bind(r2)();
case 65:
                        r1 = _closure2_slot105;
                        r0 = _closure2_slot104;
                        r1['current'] = r0;
                        r0 = undefined;
                        return r0;
                    }
                };
                r5 = r30.bind(r3)(r5, r9);
                r5 = function(a0) { // Original name: Jo, environment: r18
                    _fun101: for(var _fun101_ip = 0; ; ) switch(_fun101_ip) {
case 0:
                        r1 = a0;
                        r0 = '已公开';
                        if(!(r0 !== r1)) { _fun101_ip = 37; continue _fun101 }
case 11:
                        r0 = '已隐藏';
                        if(!(r0 !== r1)) { _fun101_ip = 32; continue _fun101 }
case 19:
                        r0 = '仅挚友';
                        if(!(r0 === r1)) { _fun101_ip = 37; continue _fun101 }
case 27:
                        r0 = 2;
                        return r0;
case 32:
                        r0 = 1;
                        return r0;
case 37:
                        r0 = 0;
                        return r0;
                    }
                };
                _closure2_slot106 = r5;
                r5 = function() { // Environment: r18
                    r1 = _closure1_slot2;
                    r3 = r1.default;
                    r2 = undefined;
                    r1 = function* (a0) { // Environment: r0
                        r0 = function* (a0) { // Original name: ?anon_0_, environment: r0
                            _fun104: for(var _fun104_ip = 0; ; ) switch(_fun104_ip) {
case 0:
                                StartGenerator();
                                ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                                if(r1) { _fun104_ip = 101; continue _fun104 }
case 9:
                                r1 = _closure2_slot58;
                                if(!r1) { _fun104_ip = 38; continue _fun104 }
case 19:
                                r1 = global;
                                r5 = r1.clearTimeout;
                                r4 = _closure2_slot58;
                                r1 = undefined;
                                r1 = r5.bind(r1)(r4);
case 38:
                                r1 = a0;
                                var _closure5_slot0 = r1;
                                r1 = global;
                                r5 = r1.setTimeout;
                                r1 = _closure1_slot2;
                                r4 = r1.default;
                                r1 = undefined;
                                r3 = function* () { // Environment: r3
                                    r0 = function* () { // Original name: ?anon_0_, environment: r0
                                        _fun106: for(var _fun106_ip = 0; ; ) switch(_fun106_ip) {
case 0:
                                            StartGenerator();
                                            r3 = '';
                                            r1 = undefined;
                                            r6 = undefined;
                                            r4 = undefined;
                                            ResumeGenerator(result_out_reg=0, return_bool_out_reg=2);
                                            if(r2) { _fun106_ip = 186; continue _fun106 }
case 20:
                                            r4 = undefined;
                                            r6 = undefined;
case 24: // try_start_0
                                            r5 = _closure1_slot0;
                                            r7 = _closure1_slot1;
                                            r2 = 24;
                                            r2 = r7[r2];
                                            r2 = r5.bind(r1)(r2);
                                            r5 = r2.checkLowQuality;
                                            r2 = _closure5_slot0;
                                            r2 = r5.bind(r1)(r2);
                                            SaveGenerator(address=69);
case 67:
                                            return r2;
case 69:
                                            ResumeGenerator(result_out_reg=2, return_bool_out_reg=5);
                                            if(r5) { _fun106_ip = 166; continue _fun106 }
case 75:
                                            r4 = r2;
                                            if(!r2) { _fun106_ip = 93; continue _fun106 }
case 81:
                                            r5 = r4;
                                            r5 = r5.isLowQualityTopic;
                                            if(r5) { _fun106_ip = 131; continue _fun106 }
case 93:
                                            r7 = r4;
                                            r5 = r7;
                                            if(!r7) { _fun106_ip = 114; continue _fun106 }
case 102:
                                            r7 = r4;
                                            r7 = r7.isLowQualityTopic;
                                            r5 = !r7;
case 114:
                                            if(!r5) { _fun106_ip = 164; continue _fun106 }
case 117:
                                            r5 = _closure2_slot57;
                                            r5 = r5.bind(r1)(r3);
                                            _fun106_ip = 164; continue _fun106;
case 131:
                                            r5 = _closure2_slot57;
                                            r8 = r4.reminderMsg;
                                            r6 = r8;
                                            r7 = null;
                                            r4 = r3;
                                            if(!(r7 != r8)) { _fun106_ip = 159; continue _fun106 }
case 156:
                                            r4 = r6;
case 159:
                                            r4 = r5.bind(r1)(r4);
case 164: // try_end0
                                            _fun106_ip = 183; continue _fun106;
case 166:
                                            return r2;
case 169: // catch_target0
                                            CatchBlockStart(arg_register=2);
                                            r2 = _closure2_slot57;
                                            r2 = r2.bind(r1)(r3);
case 183:
                                            return r1;
case 186:
                                            return r0;
                                        }
                                    };
                                    return r0;
                                };
                                r4 = r4.bind(r1)(r3);
                                r3 = 500;
                                r3 = r5.bind(r1)(r4, r3);
                                r2 = _closure2_slot59;
                                r2 = r2.bind(r1)(r3);
                                return r1;
case 101:
                                return r0;
                            }
                        };
                        return r0;
                    };
                    r1 = r3.bind(r2)(r1);
                    var _closure3_slot0 = r1;
                    r0 = function(a0) { // Environment: r0
                        r0 = undefined;
                        r3 = _closure3_slot0;
                        r2 = r3.apply;
                        r0 = arguments;
                        r1 = r0;
                        r0 = this;
                        r0 = r2.bind(r3)(r0, r1);
                        return r0;
                    };
                    return r0;
                };
                r9 = r5.bind(r3)();
                r30 = r27.useRef;
                r5 = _closure2_slot123;
                r5 = r5.source;
                r30 = r30.bind(r3)(r5);
                _closure2_slot108 = r30;
                r5 = _closure2_slot123;
                r5 = r5.source;
                r30['current'] = r5;
                r31 = r27.useEffect;
                r30 = function() { // Environment: r18
                    r4 = function() { // Original name: e, environment: r0
                        r2 = _closure1_slot0;
                        r1 = _closure1_slot1;
                        r0 = 27;
                        r1 = r1[r0];
                        r0 = undefined;
                        r1 = r2.bind(r0)(r1);
                        r3 = r1.CreateRoomTrackPoint;
                        r2 = r3.eventCreateRoomPageView;
                        r1 = _closure2_slot108;
                        r1 = r1.current;
                        r1 = r2.bind(r3)(r1);
                        return r0;
                    };
                    var _closure3_slot0 = r4;
                    r3 = _closure1_slot0;
                    r2 = _closure1_slot1;
                    r1 = 22;
                    r2 = r2[r1];
                    r1 = undefined;
                    r1 = r3.bind(r1)(r2);
                    r3 = r1.SoulEventCenter;
                    r2 = r3.registerEvent;
                    r1 = 'windowStageEvent';
                    r1 = r2.bind(r3)(r1, r4);
                    r0 = function() { // Environment: r0
                        r2 = _closure1_slot0;
                        r1 = _closure1_slot1;
                        r0 = 22;
                        r1 = r1[r0];
                        r0 = undefined;
                        r1 = r2.bind(r0)(r1);
                        r4 = r1.SoulEventCenter;
                        r3 = r4.unregisterEvent;
                        r2 = _closure3_slot0;
                        r1 = 'windowStageEvent';
                        r1 = r3.bind(r4)(r1, r2);
                        return r0;
                    };
                    return r0;
                };
                r5 = new Array(0);
                r5 = r31.bind(r3)(r30, r5);
                r47 = function(a0) { // Original name: Xo, environment: r18
                    _fun113: for(var _fun113_ip = 0; ; ) switch(_fun113_ip) {
case 0:
                        r1 = a0;
                        r0 = r1.topicName;
                        if(!r0) { _fun113_ip = 93; continue _fun113 }
case 11:
                        r3 = _closure1_slot0;
                        r2 = _closure1_slot1;
                        r0 = 27;
                        r0 = r2[r0];
                        r2 = undefined;
                        r0 = r3.bind(r2)(r0);
                        r3 = r0.CreateRoomTrackPoint;
                        r0 = r3.eventTopicsClick;
                        r0 = r0.bind(r3)();
                        r4 = _closure2_slot29;
                        r3 = r1.topicName;
                        r3 = r4.bind(r2)(r3);
                        r3 = _closure2_slot107;
                        r1 = r1.topicName;
                        r1 = r3.bind(r2)(r1);
                        r1 = _closure2_slot45;
                        r0 = true;
                        r0 = r1.bind(r2)(r0);
case 93:
                        r0 = undefined;
                        return r0;
                    }
                };
                r31 = r27.useCallback;
                r30 = function() { // Environment: r18
                    _fun116: for(var _fun116_ip = 0; ; ) switch(_fun116_ip) {
case 0:
                        r1 = _closure2_slot21;
                        r2 = r1.current;
                        r1 = null;
                        if(!(r1 != r2)) { _fun116_ip = 48; continue _fun116 }
case 18:
                        r2 = global;
                        r4 = r2.clearTimeout;
                        r0 = _closure2_slot21;
                        r3 = r0.current;
                        r2 = undefined;
                        r2 = r4.bind(r2)(r3);
                        r0['current'] = r1;
case 48:
                        r0 = undefined;
                        return r0;
                    }
                };
                r5 = new Array(0);
                r5 = r31.bind(r3)(r30, r5);
                _closure2_slot110 = r5;
                r31 = r27.useCallback;
                r5 = _closure2_slot110;
                r30 = new Array(1);
                r30[0] = r5;
                r5 = function() { // Environment: r18
                    r2 = _closure2_slot110;
                    r0 = undefined;
                    r2 = r2.bind(r0)();
                    r2 = _closure2_slot21;
                    r1 = global;
                    r4 = r1.setTimeout;
                    r3 = _closure1_slot0;
                    r5 = _closure1_slot1;
                    r1 = 21;
                    r1 = r5[r1];
                    r1 = r3.bind(r0)(r1);
                    r3 = r1.SCREENCAST_START_TIMEOUT_MS;
                    r1 = function() { // Environment: r1
                        _fun118: for(var _fun118_ip = 0; ; ) switch(_fun118_ip) {
case 0:
                            r2 = _closure2_slot21;
                            r1 = null;
                            r2['current'] = r1;
                            r1 = _closure2_slot16;
                            r1 = r1.current;
                            if(!r1) { _fun118_ip = 226; continue _fun118 }
case 30:
                            r2 = _closure2_slot20;
                            r3 = r2.current;
                            r1 = 1;
                            r1 = r3 + r1;
                            r2['current'] = r1;
                            r2 = _closure2_slot16;
                            r1 = false;
                            r2['current'] = r1;
                            r0 = _closure2_slot14;
                            r4 = undefined;
                            r0 = r0.bind(r4)(r1);
                            r1 = _closure1_slot0;
                            r5 = _closure1_slot1;
                            r0 = 30;
                            r0 = r5[r0];
                            r0 = r1.bind(r4)(r0);
                            r0 = r0.stopScreencast;
                            r0 = r0.bind(r4)();
                            r2 = 22;
                            r0 = r5[r2];
                            r0 = r1.bind(r4)(r0);
                            r8 = r0.SRNApiToast;
                            r7 = r8.toast;
                            r0 = 21;
                            r3 = r5[r0];
                            r3 = r1.bind(r4)(r3);
                            r6 = r3.SCREENCAST_START_TIMEOUT_TIP;
                            r3 = true;
                            r3 = r7.bind(r8)(r6, r3);
                            r2 = r5[r2];
                            r2 = r1.bind(r4)(r2);
                            r3 = r2.SRNApiLog;
                            r2 = r3.warn;
                            r0 = r5[r0];
                            r0 = r1.bind(r4)(r0);
                            r5 = r0.SCREENCAST_START_TIMEOUT_MS;
                            r0 = global;
                            r0 = r0.HermesInternal;
                            r4 = r0.concat;
                            r1 = '投屏等待 onScreencastStarted 超时（';
                            r0 = 'ms），流程已复位';
                            r1 = r4.bind(r1)(r5, r0);
                            r0 = 'CreatePartyPage';
                            r0 = r2.bind(r3)(r0, r1);
case 226:
                            r0 = undefined;
                            return r0;
                        }
                    };
                    r1 = r4.bind(r0)(r1, r3);
                    r2['current'] = r1;
                    return r0;
                };
                r5 = r31.bind(r3)(r5, r30);
                _closure2_slot111 = r5;
                r5 = function() { // Environment: r18
                    r1 = _closure1_slot2;
                    r3 = r1.default;
                    r2 = undefined;
                    r1 = function* () { // Environment: r0
                        r0 = function* () { // Original name: ?anon_0_, environment: r0
                            _fun121: for(var _fun121_ip = 0; ; ) switch(_fun121_ip) {
case 0:
                                StartGenerator();
                                ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                                if(r1) { _fun121_ip = 104; continue _fun121 }
case 7:
                                r1 = _closure2_slot22;
                                r1 = r1.current;
                                if(r1) { _fun121_ip = 99; continue _fun121 }
case 22:
                                r3 = _closure2_slot22;
                                r1 = true;
                                r3['current'] = r1;
case 34: // try_start_0
                                r3 = _closure2_slot112;
                                r1 = undefined;
                                r1 = r3.bind(r1)();
                                SaveGenerator(address=48);
case 46:
                                return r1;
case 48:
                                ResumeGenerator(result_out_reg=1, return_bool_out_reg=3);
                                if(r3) { _fun121_ip = 68; continue _fun121 }
case 54: // try_end0
                                r4 = _closure2_slot22;
                                r3 = false;
                                r4['current'] = r3;
                                _fun121_ip = 99; continue _fun121;
case 68:
                                r4 = _closure2_slot22;
                                r3 = false;
                                r4['current'] = r3;
                                return r1;
case 83: // catch_target0
                                CatchBlockStart(arg_register=1);
                                r3 = _closure2_slot22;
                                r2 = false;
                                r3['current'] = r2;
                                throw r1;
case 99:
                                r1 = undefined;
                                return r1;
case 104:
                                return r0;
                            }
                        };
                        return r0;
                    };
                    r1 = r3.bind(r2)(r1);
                    var _closure3_slot0 = r1;
                    r0 = function() { // Environment: r0
                        r0 = undefined;
                        r3 = _closure3_slot0;
                        r2 = r3.apply;
                        r0 = arguments;
                        r1 = r0;
                        r0 = this;
                        r0 = r2.bind(r3)(r0, r1);
                        return r0;
                    };
                    return r0;
                };
                r51 = r5.bind(r3)();
                r5 = function() { // Environment: r18
                    r1 = _closure1_slot2;
                    r3 = r1.default;
                    r2 = undefined;
                    r1 = function* () { // Environment: r0
                        r0 = function* () { // Original name: ?anon_0_, environment: r0
                            _fun125: for(var _fun125_ip = 0; ; ) switch(_fun125_ip) {
case 0:
                                StartGenerator();
                                r1 = undefined;
                                r10 = '{}';
                                ResumeGenerator(result_out_reg=0, return_bool_out_reg=2);
                                if(r2) { _fun125_ip = 774; continue _fun125 }
case 16:
                                r3 = _closure2_slot101;
                                if(!r3) { _fun125_ip = 87; continue _fun125 }
case 26:
                                r3 = _closure2_slot15;
                                r11 = null;
                                r4 = undefined;
                                if(!(r11 != r3)) { _fun125_ip = 47; continue _fun125 }
case 38:
                                r3 = _closure2_slot15;
                                r4 = r3.liveVideoMode;
case 47:
                                r5 = _closure1_slot0;
                                r7 = _closure1_slot1;
                                r3 = 21;
                                r3 = r7[r3];
                                r3 = r5.bind(r1)(r3);
                                r3 = r3.LiveVideoMode;
                                r3 = r3.SCREENCAST;
                                if(!(r4 !== r3)) { _fun125_ip = 379; continue _fun125 }
case 87:
                                r3 = _closure2_slot101;
                                if(!r3) { _fun125_ip = 196; continue _fun125 }
case 94:
                                r4 = _closure2_slot15;
                                r3 = null;
                                r5 = undefined;
                                if(!(r3 != r4)) { _fun125_ip = 115; continue _fun125 }
case 106:
                                r3 = _closure2_slot15;
                                r5 = r3.liveVideoMode;
case 115:
                                r7 = _closure1_slot0;
                                r3 = _closure1_slot1;
                                r13 = 21;
                                r3 = r3[r13];
                                r3 = r7.bind(r1)(r3);
                                r3 = r3.LiveVideoMode;
                                r3 = r3.CAMERA;
                                if(!(r5 === r3)) { _fun125_ip = 196; continue _fun125 }
case 152:
                                r5 = _closure2_slot15;
                                r3 = r5.refreshCameraPermission;
                                r3 = r3.bind(r5)();
                                SaveGenerator(address=169);
case 167:
                                return r3;
case 169:
                                ResumeGenerator(result_out_reg=3, return_bool_out_reg=5);
                                if(r5) { _fun125_ip = 376; continue _fun125 }
case 178:
                                r7 = _closure2_slot15;
                                r5 = r7.shouldBlockCameraCreate;
                                r5 = r5.bind(r7)(r3);
                                if(r5) { _fun125_ip = 283; continue _fun125 }
case 196:
                                r5 = _closure2_slot101;
                                if(r5) { _fun125_ip = 244; continue _fun125 }
case 203:
                                r7 = _closure2_slot113;
                                r12 = _closure2_slot48;
                                r8 = null;
                                r5 = 0;
                                if(!(r8 != r12)) { _fun125_ip = 223; continue _fun125 }
case 219:
                                r5 = _closure2_slot48;
case 223:
                                r5 = r7.bind(r1)(r5);
                                SaveGenerator(address=232);
case 230:
                                return r5;
case 232:
                                ResumeGenerator(result_out_reg=5, return_bool_out_reg=7);
                                if(!r7) { _fun125_ip = 373; continue _fun125 }
case 241:
                                return r5;
case 244:
                                r5 = _closure2_slot103;
                                r7 = r5.bind(r1)();
                                r5 = null;
                                if(!(r5 != r7)) { _fun125_ip = 280; continue _fun125 }
case 258:
                                r5 = _closure2_slot113;
                                r5 = r5.bind(r1)(r7);
                                SaveGenerator(address=271);
case 269:
                                return r5;
case 271:
                                ResumeGenerator(result_out_reg=5, return_bool_out_reg=7);
                                if(!r7) { _fun125_ip = 373; continue _fun125 }
case 277:
                                return r5;
case 280:
                                return r1;
case 283:
                                r7 = _closure1_slot0;
                                r8 = _closure1_slot1;
                                r5 = 22;
                                r5 = r8[r5];
                                r5 = r7.bind(r1)(r5);
                                r8 = r5.SRNApiToast;
                                r7 = r8.toast;
                                r5 = _closure2_slot15;
                                r5 = r5.cameraPermissionUnavailable;
                                r12 = _closure1_slot0;
                                r4 = _closure1_slot1;
                                if(r5) { _fun125_ip = 350; continue _fun125 }
case 333:
                                r5 = r4[r13];
                                r5 = r12.bind(r1)(r5);
                                r5 = r5.CAMERA_PERMISSION_BLOCK_TIP;
                                _fun125_ip = 365; continue _fun125;
case 350:
                                r4 = r4[r13];
                                r4 = r12.bind(r1)(r4);
                                r5 = r4.CAMERA_PERMISSION_API_UNAVAILABLE_TIP;
case 365:
                                r4 = true;
                                r4 = r7.bind(r8)(r5, r4);
case 373:
                                return r1;
case 376:
                                return r3;
case 379:
                                r3 = _closure2_slot103;
                                r4 = r3.bind(r1)();
                                if(!(r11 != r4)) { _fun125_ip = 771; continue _fun125 }
case 394:
                                r3 = _closure1_slot8;
                                r3 = r3.Platform;
                                r5 = r3.OS;
                                r3 = 'android';
                                if(!(r3 !== r5)) { _fun125_ip = 744; continue _fun125 }
case 419:
                                r5 = _closure1_slot0;
                                r3 = _closure1_slot1;
                                r8 = 22;
                                r3 = r3[r8];
                                r3 = r5.bind(r1)(r3);
                                r3 = r3.SRNApi;
                                r7 = r3.SRNApiCreateRoomModule;
                                r5 = r7.asyncCall;
                                r3 = {};
                                r12 = 'checkMicPermission';
                                r3['eventName'] = r12;
                                r5 = r5.bind(r7)(r3);
                                SaveGenerator(address=473);
case 471:
                                return r5;
case 473:
                                ResumeGenerator(result_out_reg=5, return_bool_out_reg=3);
                                if(r3) { _fun125_ip = 741; continue _fun125 }
case 482:
                                r3 = global;
                                r7 = r3.JSON;
                                r3 = r7.parse;
                                if(!(r11 != r5)) { _fun125_ip = 502; continue _fun125 }
case 499:
                                r10 = r5;
case 502:
                                r3 = r3.bind(r7)(r10);
                                r7 = r3.code;
                                r3 = 1;
                                if(!(r3 != r7)) { _fun125_ip = 698; continue _fun125 }
case 523:
                                r3 = _closure1_slot26;
                                if(r3) { _fun125_ip = 683; continue _fun125 }
case 533:
                                r3 = _closure2_slot15;
                                r12 = undefined;
                                if(!(r11 != r3)) { _fun125_ip = 556; continue _fun125 }
case 543:
                                r7 = _closure2_slot15;
                                r3 = r7.buildPlayExt;
                                r12 = r3.bind(r7)();
case 556:
                                r7 = _closure1_slot0;
                                r3 = _closure1_slot1;
                                r10 = 30;
                                r3 = r3[r10];
                                r3 = r7.bind(r1)(r3);
                                r7 = r3.showScreencastPicker;
                                r3 = undefined;
                                if(!(r11 != r12)) { _fun125_ip = 593; continue _fun125 }
case 588:
                                r3 = r12.orientation;
case 593:
                                r9 = 0;
                                if(!(r11 != r3)) { _fun125_ip = 602; continue _fun125 }
case 599:
                                r9 = r3;
case 602:
                                r3 = {};
                                r3['orientation'] = r9;
                                r7 = r7.bind(r1)(r3);
                                SaveGenerator(address=617);
case 615:
                                return r7;
case 617:
                                ResumeGenerator(result_out_reg=7, return_bool_out_reg=3);
                                if(r3) { _fun125_ip = 680; continue _fun125 }
case 623:
                                if(r7) { _fun125_ip = 656; continue _fun125 }
case 626:
                                r9 = _closure1_slot0;
                                r3 = _closure1_slot1;
                                r3 = r3[r10];
                                r3 = r9.bind(r1)(r3);
                                r3 = r3.stopScreencast;
                                r3 = r3.bind(r1)();
                                r3 = undefined;
                                _fun125_ip = 678; continue _fun125;
case 656:
                                r10 = _closure2_slot16;
                                r9 = true;
                                r10['current'] = r9;
                                r9 = _closure2_slot111;
                                r9 = r9.bind(r1)();
                                r3 = undefined;
case 678:
                                _fun125_ip = 696; continue _fun125;
case 680:
                                return r7;
case 683:
                                r9 = _closure2_slot14;
                                r7 = true;
                                r7 = r9.bind(r1)(r7);
                                r3 = undefined;
case 696:
                                _fun125_ip = 739; continue _fun125;
case 698:
                                r7 = _closure1_slot0;
                                r6 = _closure1_slot1;
                                r6 = r6[r8];
                                r6 = r7.bind(r1)(r6);
                                r9 = r6.SRNApiToast;
                                r8 = r9.toast;
                                r7 = '没有录音权限,请在系统设置开启!';
                                r6 = true;
                                r6 = r8.bind(r9)(r7, r6);
                                r3 = undefined;
case 739:
                                _fun125_ip = 765; continue _fun125;
case 741:
                                return r5;
case 744:
                                r2 = _closure2_slot113;
                                r2 = r2.bind(r1)(r4);
                                SaveGenerator(address=757);
case 755:
                                return r2;
case 757:
                                ResumeGenerator(result_out_reg=2, return_bool_out_reg=4);
                                if(r4) { _fun125_ip = 768; continue _fun125 }
case 763:
                                r3 = undefined;
case 765:
                                return r3;
case 768:
                                return r2;
case 771:
                                return r1;
case 774:
                                return r0;
                            }
                        };
                        return r0;
                    };
                    r1 = r3.bind(r2)(r1);
                    var _closure3_slot0 = r1;
                    r0 = function() { // Environment: r0
                        r0 = undefined;
                        r3 = _closure3_slot0;
                        r2 = r3.apply;
                        r0 = arguments;
                        r1 = r0;
                        r0 = this;
                        r0 = r2.bind(r3)(r0, r1);
                        return r0;
                    };
                    return r0;
                };
                r5 = r5.bind(r3)();
                _closure2_slot112 = r5;
                r5 = function() { // Environment: r18
                    r1 = _closure1_slot2;
                    r3 = r1.default;
                    r2 = undefined;
                    r1 = function* (a0) { // Environment: r0
                        r0 = function* (a0) { // Original name: ?anon_0_, environment: r0
                            _fun129: for(var _fun129_ip = 0; ; ) switch(_fun129_ip) {
case 0:
                                StartGenerator();
                                r14 = a0;
                                r2 = undefined;
                                r3 = 1;
                                r13 = 0;
                                ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                                if(r1) { _fun129_ip = 369; continue _fun129 }
case 20:
                                r4 = _closure2_slot100;
                                r5 = r4.bind(r2)(r14);
                                r4 = _closure2_slot0;
                                if(r4) { _fun129_ip = 104; continue _fun129 }
case 39:
                                r4 = _closure2_slot36;
                                if(r4) { _fun129_ip = 70; continue _fun129 }
case 46:
                                r4 = null;
                                r12 = r5;
                                if(!(r4 == r12)) { _fun129_ip = 68; continue _fun129 }
case 55:
                                r5 = _closure2_slot98;
                                r4 = _closure2_slot34;
                                r12 = r5.bind(r2)(r4);
case 68:
                                _fun129_ip = 102; continue _fun129;
case 70:
                                r5 = _closure2_slot38;
                                r4 = null;
                                if(!(r4 == r5)) { _fun129_ip = 95; continue _fun129 }
case 80:
                                r5 = _closure2_slot98;
                                r4 = _closure2_slot34;
                                r4 = r5.bind(r2)(r4);
                                _fun129_ip = 99; continue _fun129;
case 95:
                                r4 = _closure2_slot38;
case 99:
                                r12 = r4;
case 102:
                                _fun129_ip = 138; continue _fun129;
case 104:
                                r5 = _closure1_slot0;
                                r6 = _closure1_slot1;
                                r4 = 26;
                                r4 = r6[r4];
                                r4 = r5.bind(r2)(r4);
                                r4 = r4.RoomClassify;
                                r12 = r4.SMALL_TALK;
case 138:
                                r4 = _closure2_slot80;
                                r4 = r4.length;
                                r11 = undefined;
                                if(!(r4 > r13)) { _fun129_ip = 170; continue _fun129 }
case 153:
                                r4 = _closure2_slot30;
                                r11 = undefined;
                                if(!r4) { _fun129_ip = 170; continue _fun129 }
case 162:
                                r11 = ['live_song'];
case 170:
                                r4 = _closure2_slot80;
                                r4 = r4.length;
                                r10 = r13 === r4;
                                if(!r10) { _fun129_ip = 190; continue _fun129 }
case 186:
                                r10 = _closure2_slot76;
case 190:
                                if(r10) { _fun129_ip = 195; continue _fun129 }
case 193:
                                r10 = undefined;
case 195:
                                r4 = _closure2_slot101;
                                r9 = undefined;
                                if(!r4) { _fun129_ip = 226; continue _fun129 }
case 204:
                                r4 = _closure2_slot15;
                                r9 = undefined;
                                if(!r4) { _fun129_ip = 226; continue _fun129 }
case 213:
                                r5 = _closure2_slot15;
                                r4 = r5.buildPlayExt;
                                r9 = r4.bind(r5)();
case 226:
                                r8 = _closure2_slot114;
                                r5 = _closure1_slot0;
                                r6 = _closure1_slot1;
                                r4 = 26;
                                r4 = r6[r4];
                                r4 = r5.bind(r2)(r4);
                                r4 = r4.RoomClassify;
                                r4 = r4.HOT_TOPIC;
                                r13 = 0;
                                if(!(r12 == r4)) { _fun129_ip = 273; continue _fun129 }
case 270:
                                r13 = r3;
case 273:
                                r25 = _closure2_slot28;
                                r3 = global;
                                r4 = r3.String;
                                r3 = _closure2_slot66;
                                r24 = r4.bind(r2)(r3);
                                r4 = _closure2_slot106;
                                r3 = _closure2_slot40;
                                r20 = r4.bind(r2)(r3);
                                r1 = _closure2_slot123;
                                r19 = r1.source;
                                r17 = r1.groupId;
                                r16 = r1.groupJoinCode;
                                r28 = undefined;
                                r27 = r12;
                                r26 = r13;
                                r23 = r14;
                                r22 = r10;
                                r21 = undefined;
                                r18 = r11;
                                r15 = r9;
                                r1 = r28[r8](r27, r26, r25, r24, r23, r22, r21, r20, r19, r18, r17, r16, r15, r14);
                                SaveGenerator(address=357);
case 355:
                                return r1;
case 357:
                                ResumeGenerator(result_out_reg=1, return_bool_out_reg=3);
                                if(r3) { _fun129_ip = 366; continue _fun129 }
case 363:
                                return r2;
case 366:
                                return r1;
case 369:
                                return r0;
                            }
                        };
                        return r0;
                    };
                    r1 = r3.bind(r2)(r1);
                    var _closure3_slot0 = r1;
                    r0 = function(a0) { // Environment: r0
                        r0 = undefined;
                        r3 = _closure3_slot0;
                        r2 = r3.apply;
                        r0 = arguments;
                        r1 = r0;
                        r0 = this;
                        r0 = r2.bind(r3)(r0, r1);
                        return r0;
                    };
                    return r0;
                };
                r5 = r5.bind(r3)();
                _closure2_slot113 = r5;
                r5 = function() { // Environment: r18
                    r1 = _closure1_slot2;
                    r3 = r1.default;
                    r2 = undefined;
                    r1 = function* (a0, a1, a2, a3) { // Environment: r0
                        r0 = function* (a0, a1, a2, a3) { // Original name: ?anon_0_, environment: r0
                            _fun133: for(var _fun133_ip = 0; ; ) switch(_fun133_ip) {
case 0:
                                StartGenerator();
                                r2 = undefined;
                                r5 = '0';
                                ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                                if(r1) { _fun133_ip = 300; continue _fun133 }
case 16:
                                r6 = undefined;
                                r3 = arguments.length;
                                r1 = 4;
                                r13 = 0;
                                if(!(r3 > r1)) { _fun133_ip = 44; continue _fun133 }
case 30:
                                r3 = arguments[r1];
                                r13 = 0;
                                if(!(r2 !== r3)) { _fun133_ip = 44; continue _fun133 }
case 40:
                                r13 = arguments[r1];
case 44:
                                r3 = arguments.length;
                                r1 = 5;
                                r12 = undefined;
                                if(!(r3 > r1)) { _fun133_ip = 60; continue _fun133 }
case 56:
                                r12 = arguments[r1];
case 60:
                                r3 = arguments.length;
                                r1 = 6;
                                r11 = undefined;
                                if(!(r3 > r1)) { _fun133_ip = 76; continue _fun133 }
case 72:
                                r11 = arguments[r1];
case 76:
                                r3 = arguments.length;
                                r1 = 7;
                                r10 = 0;
                                if(!(r3 > r1)) { _fun133_ip = 102; continue _fun133 }
case 88:
                                r3 = arguments[r1];
                                r10 = 0;
                                if(!(r2 !== r3)) { _fun133_ip = 102; continue _fun133 }
case 98:
                                r10 = arguments[r1];
case 102:
                                r4 = arguments.length;
                                r1 = 8;
                                r3 = r5;
                                if(!(r4 > r1)) { _fun133_ip = 130; continue _fun133 }
case 115:
                                r4 = arguments[r1];
                                r3 = r5;
                                if(!(r2 !== r4)) { _fun133_ip = 130; continue _fun133 }
case 126:
                                r3 = arguments[r1];
case 130:
                                r5 = arguments.length;
                                r1 = 9;
                                r4 = undefined;
                                if(!(r5 > r1)) { _fun133_ip = 146; continue _fun133 }
case 142:
                                r4 = arguments[r1];
case 146:
                                r7 = arguments.length;
                                r5 = 10;
                                r1 = undefined;
                                if(!(r7 > r5)) { _fun133_ip = 162; continue _fun133 }
case 158:
                                r1 = arguments[r5];
case 162:
                                r7 = arguments.length;
                                r5 = 12;
                                r9 = undefined;
                                if(!(r7 > r5)) { _fun133_ip = 178; continue _fun133 }
case 174:
                                r9 = arguments[r5];
case 178:
                                r5 = {};
                                r5['createroom_source'] = r3;
                                if(!r1) { _fun133_ip = 194; continue _fun133 }
case 188:
                                r5['groupId'] = r1;
case 194:
                                r8 = _closure2_slot115;
                                r1 = global;
                                r3 = r1.JSON;
                                r1 = r3.stringify;
                                r7 = r1.bind(r3)(r5);
                                r1 = null;
                                r6 = undefined;
                                if(!(r1 != r4)) { _fun133_ip = 243; continue _fun133 }
case 228:
                                r3 = r4.join;
                                r1 = ',';
                                r6 = r3.bind(r4)(r1);
case 243:
                                r25 = a0;
                                r24 = a1;
                                r23 = a2;
                                r22 = a3;
                                r26 = undefined;
                                r21 = r13;
                                r20 = r12;
                                r19 = r11;
                                r18 = r10;
                                r17 = r7;
                                r16 = r6;
                                r15 = undefined;
                                r14 = r9;
                                r1 = r26[r8](r25, r24, r23, r22, r21, r20, r19, r18, r17, r16, r15, r14, r13);
                                SaveGenerator(address=288);
case 286:
                                return r1;
case 288:
                                ResumeGenerator(result_out_reg=1, return_bool_out_reg=3);
                                if(r3) { _fun133_ip = 297; continue _fun133 }
case 294:
                                return r2;
case 297:
                                return r1;
case 300:
                                return r0;
                            }
                        };
                        return r0;
                    };
                    r1 = r3.bind(r2)(r1);
                    var _closure3_slot0 = r1;
                    r0 = function(a0, a1, a2, a3) { // Environment: r0
                        r0 = undefined;
                        r3 = _closure3_slot0;
                        r2 = r3.apply;
                        r0 = arguments;
                        r1 = r0;
                        r0 = this;
                        r0 = r2.bind(r3)(r0, r1);
                        return r0;
                    };
                    return r0;
                };
                r5 = r5.bind(r3)();
                _closure2_slot114 = r5;
                r5 = function() { // Environment: r18
                    r1 = _closure1_slot2;
                    r3 = r1.default;
                    r2 = undefined;
                    r1 = function* (a0, a1, a2, a3) { // Environment: r0
                        r0 = function* (a0, a1, a2, a3) { // Original name: ?anon_0_, environment: r0
                            _fun137: for(var _fun137_ip = 0; ; ) switch(_fun137_ip) {
case 0:
                                StartGenerator();
                                r33 = a2;
                                r28 = a3;
                                r20 = 0;
                                r3 = undefined;
                                r25 = '{}';
                                r9 = '网络错误';
                                r17 = '';
                                r12 = undefined;
                                r5 = undefined;
                                r2 = undefined;
                                r13 = undefined;
                                r16 = undefined;
                                r22 = undefined;
                                r23 = undefined;
                                r24 = undefined;
                                r26 = undefined;
                                r27 = undefined;
                                r8 = undefined;
                                r14 = undefined;
                                r18 = undefined;
                                ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                                if(r1) { _fun137_ip = 1628; continue _fun137 }
case 60:
                                r6 = undefined;
                                r18 = undefined;
                                r14 = undefined;
                                r8 = undefined;
                                r27 = undefined;
                                r26 = undefined;
                                r24 = undefined;
                                r23 = undefined;
                                r22 = undefined;
                                r16 = undefined;
                                r13 = undefined;
                                r2 = undefined;
                                r7 = arguments.length;
                                r4 = 4;
                                r1 = 0;
                                if(!(r7 > r4)) { _fun137_ip = 110; continue _fun137 }
case 96:
                                r7 = arguments[r4];
                                r1 = 0;
                                if(!(r3 !== r7)) { _fun137_ip = 110; continue _fun137 }
case 106:
                                r1 = arguments[r4];
case 110:
                                r8 = r1;
                                r7 = arguments.length;
                                r4 = 5;
                                r1 = undefined;
                                if(!(r7 > r4)) { _fun137_ip = 129; continue _fun137 }
case 125:
                                r1 = arguments[r4];
case 129:
                                r27 = r1;
                                r7 = arguments.length;
                                r4 = 6;
                                r1 = undefined;
                                if(!(r7 > r4)) { _fun137_ip = 148; continue _fun137 }
case 144:
                                r1 = arguments[r4];
case 148:
                                r26 = r1;
                                r7 = arguments.length;
                                r4 = 7;
                                r1 = 0;
                                if(!(r7 > r4)) { _fun137_ip = 177; continue _fun137 }
case 163:
                                r7 = arguments[r4];
                                r1 = 0;
                                if(!(r3 !== r7)) { _fun137_ip = 177; continue _fun137 }
case 173:
                                r1 = arguments[r4];
case 177:
                                r24 = r1;
                                r7 = arguments.length;
                                r4 = 8;
                                r1 = undefined;
                                if(!(r7 > r4)) { _fun137_ip = 196; continue _fun137 }
case 192:
                                r1 = arguments[r4];
case 196:
                                r23 = r1;
                                r7 = arguments.length;
                                r4 = 9;
                                r1 = undefined;
                                if(!(r7 > r4)) { _fun137_ip = 215; continue _fun137 }
case 211:
                                r1 = arguments[r4];
case 215:
                                r22 = r1;
                                r7 = arguments.length;
                                r4 = 10;
                                r1 = undefined;
                                if(!(r7 > r4)) { _fun137_ip = 234; continue _fun137 }
case 230:
                                r1 = arguments[r4];
case 234:
                                r16 = r1;
                                r7 = arguments.length;
                                r4 = 11;
                                r1 = undefined;
                                if(!(r7 > r4)) { _fun137_ip = 253; continue _fun137 }
case 249:
                                r1 = arguments[r4];
case 253:
                                r13 = r1;
                                r1 = _closure2_slot101;
                                if(!r1) { _fun137_ip = 324; continue _fun137 }
case 266:
                                r7 = _closure2_slot15;
                                r4 = null;
                                r6 = undefined;
                                if(!(r4 != r7)) { _fun137_ip = 287; continue _fun137 }
case 278:
                                r4 = _closure2_slot15;
                                r6 = r4.liveVideoMode;
case 287:
                                r7 = _closure1_slot0;
                                r11 = _closure1_slot1;
                                r4 = 21;
                                r4 = r11[r4];
                                r4 = r7.bind(r3)(r4);
                                r4 = r4.LiveVideoMode;
                                r4 = r4.SCREENCAST;
                                r1 = r6 === r4;
case 324:
                                var _closure5_slot0 = r1;
                                r2 = function() { // Original name: C, environment: r15
                                    _fun138: for(var _fun138_ip = 0; ; ) switch(_fun138_ip) {
case 0:
                                        r0 = _closure5_slot0;
                                        if(!r0) { _fun138_ip = 59; continue _fun138 }
case 10:
                                        r1 = _closure2_slot17;
                                        r0 = false;
                                        r1['current'] = r0;
                                        r2 = _closure1_slot0;
                                        r1 = _closure1_slot1;
                                        r0 = 30;
                                        r0 = r1[r0];
                                        r1 = undefined;
                                        r0 = r2.bind(r1)(r0);
                                        r0 = r0.stopScreencast;
                                        r0 = r0.bind(r1)();
case 59:
                                        r0 = undefined;
                                        return r0;
                                    }
                                };
                                r7 = _closure1_slot0;
                                r1 = _closure1_slot1;
                                r6 = 22;
                                r1 = r1[r6];
                                r1 = r7.bind(r3)(r1);
                                r1 = r1.SRNApi;
                                r11 = r1.SRNApiCreateRoomModule;
                                r7 = r11.asyncCall;
                                r1 = {};
                                r19 = 'checkMicPermission';
                                r1['eventName'] = r19;
                                r1 = r7.bind(r11)(r1);
                                SaveGenerator(address=390);
case 388:
                                return r1;
case 390:
                                ResumeGenerator(result_out_reg=1, return_bool_out_reg=7);
                                if(r7) { _fun137_ip = 1625; continue _fun137 }
case 399:
                                r7 = global;
                                r19 = r7.JSON;
                                r11 = r19.parse;
                                r21 = null;
                                if(!(r21 != r1)) { _fun137_ip = 421; continue _fun137 }
case 418:
                                r25 = r1;
case 421:
                                r11 = r11.bind(r19)(r25);
                                r11 = r11.code;
                                r25 = 1;
                                if(!(r25 != r11)) { _fun137_ip = 1577; continue _fun137 }
case 442: // try_start_0
                                r29 = _closure1_slot0;
                                r11 = _closure1_slot1;
                                r19 = 24;
                                r11 = r11[r19];
                                r11 = r29.bind(r3)(r11);
                                r11 = r11.validateRoomTopic;
                                r11 = r11.bind(r3)(r33);
                                SaveGenerator(address=477);
case 475:
                                return r11;
case 477:
                                ResumeGenerator(result_out_reg=11, return_bool_out_reg=29);
                                if(r29) { _fun137_ip = 1466; continue _fun137 }
case 486: // try_start_1 // try_end0
                                r30 = _closure1_slot0;
                                r29 = _closure1_slot1;
                                r29 = r29[r19];
                                r29 = r30.bind(r3)(r29);
                                r32 = r29.createChatRoom;
                                r31 = r17;
                                if(!(r21 != r28)) { _fun137_ip = 519; continue _fun137 }
case 516:
                                r31 = r28;
case 519:
                                r30 = r8;
                                r28 = r27;
                                r29 = r17;
                                if(!(r21 != r28)) { _fun137_ip = 535; continue _fun137 }
case 532:
                                r29 = r27;
case 535:
                                r27 = r26;
                                r28 = r17;
                                if(!(r21 != r27)) { _fun137_ip = 548; continue _fun137 }
case 545:
                                r28 = r26;
case 548:
                                r38 = r24;
                                r37 = r23;
                                r36 = r22;
                                r35 = r16;
                                r34 = r13;
                                r45 = a0;
                                r43 = a1;
                                r47 = undefined;
                                r46 = r33;
                                r44 = 0;
                                r42 = r31;
                                r41 = r30;
                                r40 = r29;
                                r39 = r28;
                                r13 = r47[r32](r46, r45, r44, r43, r42, r41, r40, r39, r38, r37, r36, r35, r34, r33);
                                SaveGenerator(address=596);
case 594:
                                return r13;
case 596:
                                ResumeGenerator(result_out_reg=13, return_bool_out_reg=16);
                                if(r16) { _fun137_ip = 1349; continue _fun137 }
case 605:
                                r18 = r13;
case 608: // try_end1
                                r16 = r18;
                                if(r16) { _fun137_ip = 626; continue _fun137 }
case 614:
                                r16 = r2;
                                r16 = r16.bind(r3)();
                                _fun137_ip = 1270; continue _fun137;
case 626:
                                r22 = _closure1_slot0;
                                r16 = _closure1_slot1;
                                r16 = r16[r19];
                                r16 = r22.bind(r3)(r16);
                                r22 = r16.isCreateRoomAccountRestricted;
                                r16 = r18;
                                r16 = r22.bind(r3)(r16);
                                if(r16) { _fun137_ip = 1273; continue _fun137 }
case 663:
                                r16 = r18;
                                r16 = r16.createResult;
                                if(r16) { _fun137_ip = 778; continue _fun137 }
case 675:
                                r23 = _closure1_slot0;
                                r22 = _closure1_slot1;
                                r16 = 27;
                                r16 = r22[r16];
                                r16 = r23.bind(r3)(r16);
                                r29 = r16.CreateRoomTrackPoint;
                                r28 = r29.eventCreateRoomClick;
                                r16 = _closure2_slot123;
                                r27 = r16.source;
                                r16 = r18;
                                r26 = r16.createFailedDesc;
                                r24 = r8;
                                r24 = r28.bind(r29)(r27, r26, r24);
                                r22 = r22[r6];
                                r22 = r23.bind(r3)(r22);
                                r24 = r22.SRNApiToast;
                                r23 = r24.toast;
                                r22 = r16.createFailedDesc;
                                r16 = true;
                                r16 = r23.bind(r24)(r22, r16);
                                r16 = r2;
                                r16 = r16.bind(r3)();
                                r16 = undefined;
                                return r16;
case 778:
                                r16 = r18;
                                r16 = r16.createResult;
                                if(!r16) { _fun137_ip = 1270; continue _fun137 }
case 793:
                                r22 = _closure2_slot17;
                                r16 = false;
                                r22['current'] = r16;
                                r23 = _closure1_slot0;
                                r16 = _closure1_slot1;
                                r22 = 27;
                                r24 = r16[r22];
                                r24 = r23.bind(r3)(r24);
                                r27 = r24.CreateRoomTrackPoint;
                                r26 = r27.eventCreateRoomSuccessClick;
                                r24 = _closure2_slot123;
                                r24 = r24.source;
                                r24 = r26.bind(r27)(r24);
                                r16 = r16[r6];
                                r16 = r23.bind(r3)(r16);
                                r16 = r16.SRNApi;
                                r24 = r16.SRNApiCreateRoomModule;
                                r23 = r24.asyncCall;
                                r16 = r7.Date;
                                r26 = r16.prototype;
                                r26 = Object.create(r26, {constructor: {value: r16}});
                                r47 = r26;
                                r16 = new r47[r16](r46);
                                r26 = r16 instanceof Object ? r16 : r26;
                                r16 = r26.getTime;
                                r16 = r16.bind(r26)();
                                r26 = {};
                                r26['time'] = r16;
                                r16 = {};
                                r27 = 'createRoomStartEvent';
                                r16['eventName'] = r27;
                                r16['params'] = r26;
                                r16 = r23.bind(r24)(r16);
                                r23 = _closure2_slot68;
                                r16 = 'noRecommend';
                                if(!(r16 === r23)) { _fun137_ip = 1021; continue _fun137 }
case 948:
                                r23 = _closure1_slot0;
                                r16 = _closure1_slot1;
                                r16 = r16[r22];
                                r16 = r23.bind(r3)(r16);
                                r24 = r16.CreateRoomTrackPoint;
                                r23 = r24.eventOpenPrivateChatRoom;
                                r16 = _closure2_slot70;
                                if(!(r21 == r16)) { _fun137_ip = 1002; continue _fun137 }
case 984:
                                r21 = r7.Date;
                                r16 = r21.now;
                                r21 = r16.bind(r21)();
                                _fun137_ip = 1006; continue _fun137;
case 1002:
                                r21 = _closure2_slot70;
case 1006:
                                r16 = r18;
                                r16 = r16.roomId;
                                r16 = r23.bind(r24)(r21, r16, r25);
case 1021:
                                r21 = _closure1_slot0;
                                r16 = _closure1_slot1;
                                r16 = r16[r22];
                                r16 = r21.bind(r3)(r16);
                                r23 = r16.CreateRoomTrackPoint;
                                r22 = r23.eventCreateRoomClick;
                                r16 = _closure2_slot123;
                                r21 = r16.source;
                                r16 = r8;
                                r16 = r22.bind(r23)(r21, r20, r16);
                                r16 = _closure2_slot42;
                                r15 = function(a0) { // Environment: r15
                                    r1 = a0;
                                    r0 = 1;
                                    r0 = r1 - r0;
                                    return r0;
                                };
                                r15 = r16.bind(r3)(r15);
                                r15 = _closure2_slot119;
                                r14 = r15.bind(r3)();
case 1089: // try_start_2
                                r16 = _closure1_slot0;
                                r15 = _closure1_slot1;
                                r15 = r15[r6];
                                r15 = r16.bind(r3)(r15);
                                r15 = r15.SRNApi;
                                r16 = r15.SRNApiCreateRoomModule;
                                r15 = r16.asyncCall;
                                r21 = r18.roomId;
                                r18 = r14;
                                r22 = _closure2_slot123;
                                r22 = r22.groupJoinCode;
                                r14 = r22;
                                if(r22) { _fun137_ip = 1147; continue _fun137 }
case 1144:
                                r14 = r17;
case 1147:
                                r17 = {};
                                r17['roomId'] = r21;
                                r17['joinType'] = r20;
                                r17['joinCode'] = r18;
                                r17['groupJoinCode'] = r14;
                                r14 = {};
                                r18 = 'joinRoom';
                                r14['eventName'] = r18;
                                r14['params'] = r17;
                                r14 = r15.bind(r16)(r14);
                                SaveGenerator(address=1189);
case 1187:
                                return r14;
case 1189:
                                ResumeGenerator(result_out_reg=14, return_bool_out_reg=15);
                                if(r15) { _fun137_ip = 1197; continue _fun137 }
case 1195: // try_end2
                                _fun137_ip = 1270; continue _fun137;
case 1197:
                                return r14;
case 1200: // catch_target2
                                CatchBlockStart(arg_register=15);
                                r16 = _closure1_slot0;
                                r14 = _closure1_slot1;
                                r14 = r14[r6];
                                r14 = r16.bind(r3)(r14);
                                r17 = r14.SRNApiLog;
                                r16 = r17.warn;
                                r14 = r7.String;
                                r18 = r14.bind(r3)(r15);
                                r14 = r7.HermesInternal;
                                r15 = r14.concat;
                                r14 = 'joinRoom promise rejected（容器销毁噪音，进房已由原生接管）: ';
                                r15 = r15.bind(r14)(r18);
                                r14 = 'CreateRoom';
                                r14 = r16.bind(r17)(r14, r15);
case 1270:
                                return r3;
case 1273:
                                r15 = _closure1_slot0;
                                r14 = _closure1_slot1;
                                r16 = 27;
                                r16 = r14[r16];
                                r16 = r15.bind(r3)(r16);
                                r18 = r16.CreateRoomTrackPoint;
                                r17 = r18.eventCreateRoomClick;
                                r16 = _closure2_slot123;
                                r16 = r16.source;
                                r14 = r14[r19];
                                r14 = r15.bind(r3)(r14);
                                r15 = r14.CREATE_ROOM_ACCOUNT_RESTRICTED_BLOCK;
                                r14 = r8;
                                r14 = r17.bind(r18)(r16, r15, r14);
                                r14 = r2;
                                r14 = r14.bind(r3)();
                                r14 = undefined;
                                return r14;
case 1349:
                                return r13;
case 1352: // catch_target1
                                CatchBlockStart(arg_register=14);
                                r12 = r14;
                                r13 = r7.Error;
                                r13 = r14 instanceof r13;
                                r15 = r9;
                                if(!r13) { _fun137_ip = 1378; continue _fun137 }
case 1373:
                                r15 = r12.message;
case 1378:
                                r13 = _closure1_slot0;
                                r12 = _closure1_slot1;
                                r14 = 27;
                                r14 = r12[r14];
                                r14 = r13.bind(r3)(r14);
                                r18 = r14.CreateRoomTrackPoint;
                                r17 = r18.eventCreateRoomClick;
                                r14 = _closure2_slot123;
                                r16 = r14.source;
                                r14 = r8;
                                r14 = r17.bind(r18)(r16, r15, r14);
                                r12 = r12[r6];
                                r12 = r13.bind(r3)(r12);
                                r14 = r12.SRNApiToast;
                                r13 = r14.toast;
                                r12 = true;
                                r12 = r13.bind(r14)(r15, r12);
                                r12 = r2;
                                r12 = r12.bind(r3)();
                                r12 = undefined;
                                return r12;
case 1466:
                                return r11;
case 1469: // catch_target0
                                CatchBlockStart(arg_register=11);
                                r5 = r11;
                                r7 = r7.Error;
                                r7 = r11 instanceof r7;
                                if(!r7) { _fun137_ip = 1492; continue _fun137 }
case 1487:
                                r9 = r5.message;
case 1492:
                                r7 = _closure1_slot0;
                                r5 = _closure1_slot1;
                                r11 = 27;
                                r11 = r5[r11];
                                r11 = r7.bind(r3)(r11);
                                r12 = r11.CreateRoomTrackPoint;
                                r11 = r12.eventCreateRoomClick;
                                r10 = _closure2_slot123;
                                r10 = r10.source;
                                r8 = r11.bind(r12)(r10, r9, r8);
                                r5 = r5[r6];
                                r5 = r7.bind(r3)(r5);
                                r8 = r5.SRNApiToast;
                                r7 = r8.toast;
                                r5 = true;
                                r5 = r7.bind(r8)(r9, r5);
                                r5 = r2;
                                r5 = r5.bind(r3)();
                                r5 = undefined;
                                return r5;
case 1577:
                                r5 = _closure1_slot0;
                                r4 = _closure1_slot1;
                                r4 = r4[r6];
                                r4 = r5.bind(r3)(r4);
                                r7 = r4.SRNApiToast;
                                r6 = r7.toast;
                                r5 = '没有录音权限,请在系统设置开启!';
                                r4 = true;
                                r4 = r6.bind(r7)(r5, r4);
                                r2 = r2.bind(r3)();
                                r2 = undefined;
                                return r2;
case 1625:
                                return r1;
case 1628:
                                return r0;
                            }
                        };
                        return r0;
                    };
                    r1 = r3.bind(r2)(r1);
                    var _closure3_slot0 = r1;
                    r0 = function(a0, a1, a2, a3) { // Environment: r0
                        r0 = undefined;
                        r3 = _closure3_slot0;
                        r2 = r3.apply;
                        r0 = arguments;
                        r1 = r0;
                        r0 = this;
                        r0 = r2.bind(r3)(r0, r1);
                        return r0;
                    };
                    return r0;
                };
                r5 = r5.bind(r3)();
                _closure2_slot115 = r5;
                r30 = r27.useRef;
                r5 = _closure2_slot113;
                r5 = r30.bind(r3)(r5);
                r30 = _closure2_slot113;
                r5['current'] = r30;
                r30 = r27.useRef;
                r27 = {'shouldCreate': false, 'playType': null};
                r30 = r30.bind(r3)(r27);
                r27 = _closure2_slot101;
                if(!r27) { _fun13_ip = 3576; continue _fun13 }
case 3523:
                r31 = _closure2_slot15;
                r50 = undefined;
                if(!(r58 != r31)) { _fun13_ip = 3542; continue _fun13 }
case 3533:
                r31 = _closure2_slot15;
                r50 = r31.liveVideoMode;
case 3542:
                r55 = _closure1_slot0;
                r56 = _closure1_slot1;
                r31 = 21;
                r31 = r56[r31];
                r31 = r55.bind(r3)(r31);
                r31 = r31.LiveVideoMode;
                r31 = r31.SCREENCAST;
                r27 = r50 === r31;
case 3576:
                r31 = null;
                if(!r27) { _fun13_ip = 3589; continue _fun13 }
case 3581:
                r50 = _closure2_slot102;
                r31 = r50.bind(r3)();
case 3589:
                var _closure2_slot18 = r48;
                var _closure2_slot116 = r5;
                var _closure2_slot117 = r30;
                r5 = {};
                r5['shouldCreate'] = r27;
                r5['playType'] = r31;
                r30['current'] = r5;
                r5 = _closure1_slot7;
                r48 = r5.useEffect;
                r30 = _closure2_slot15;
                r31 = new Array(2);
                r31[0] = r30;
                r30 = _closure2_slot110;
                r31[1] = r30;
                r30 = function() { // Environment: r18
                    _fun141: for(var _fun141_ip = 0; ; ) switch(_fun141_ip) {
case 0:
                        r1 = _closure2_slot15;
                        if(r1) { _fun141_ip = 16; continue _fun141 }
case 12:
                        r1 = undefined;
                        return r1;
case 16:
                        r3 = undefined;
                        var _closure3_slot0 = r3;
                        r2 = _closure1_slot0;
                        r4 = _closure1_slot1;
                        r1 = 30;
                        r1 = r4[r1];
                        r1 = r2.bind(r3)(r1);
                        r2 = r1.subscribeScreencastStarted;
                        r1 = function() { // Environment: r0
                            _fun142: for(var _fun142_ip = 0; ; ) switch(_fun142_ip) {
case 0:
                                r1 = _closure2_slot117;
                                r2 = r1.current;
                                r1 = r2.shouldCreate;
                                r5 = r2.playType;
                                r2 = _closure2_slot16;
                                r2 = r2.current;
                                if(!r2) { _fun142_ip = 122; continue _fun142 }
case 34:
                                if(!r1) { _fun142_ip = 122; continue _fun142 }
case 37:
                                r2 = _closure2_slot110;
                                r1 = undefined;
                                r2 = r2.bind(r1)();
                                r3 = _closure2_slot20;
                                r4 = r3.current;
                                r2 = 1;
                                r2 = r4 + r2;
                                r3['current'] = r2;
                                r2 = _closure2_slot16;
                                r4 = false;
                                r2['current'] = r4;
                                r2 = _closure2_slot14;
                                r2 = r2.bind(r1)(r4);
                                r2 = _closure2_slot17;
                                r8 = true;
                                r2['current'] = r8;
                                r2 = null;
                                if(!(r2 != r5)) { _fun142_ip = 126; continue _fun142 }
case 108:
                                r3 = _closure2_slot116;
                                r2 = r3.current;
                                r2 = r2.bind(r3)(r5);
case 122:
                                r2 = undefined;
                                return r2;
case 126:
                                r2 = _closure1_slot0;
                                r3 = _closure1_slot1;
                                r5 = 22;
                                r5 = r3[r5];
                                r5 = r2.bind(r1)(r5);
                                r7 = r5.SRNApiToast;
                                r6 = r7.toast;
                                r5 = 21;
                                r5 = r3[r5];
                                r5 = r2.bind(r1)(r5);
                                r5 = r5.VIDEO_PLAY_TYPE_UNRESOLVED_TIP;
                                r5 = r6.bind(r7)(r5, r8);
                                r0 = _closure2_slot17;
                                r0['current'] = r4;
                                r0 = 30;
                                r0 = r3[r0];
                                r0 = r2.bind(r1)(r0);
                                r0 = r0.stopScreencast;
                                r0 = r0.bind(r1)();
                                r0 = undefined;
                                return r0;
                            }
                        };
                        r1 = r2.bind(r3)(r1);
                        _closure3_slot0 = r1;
                        r0 = function() { // Environment: r0
                            r1 = _closure3_slot0;
                            r0 = undefined;
                            r1 = r1.bind(r0)();
                            return r0;
                        };
                        return r0;
                    }
                };
                r30 = r48.bind(r3)(r30, r31);
                r48 = r5.useEffect;
                r30 = _closure2_slot15;
                r31 = new Array(2);
                r31[0] = r30;
                r30 = _closure2_slot110;
                r31[1] = r30;
                r30 = function() { // Environment: r18
                    _fun144: for(var _fun144_ip = 0; ; ) switch(_fun144_ip) {
case 0:
                        r1 = _closure2_slot15;
                        if(r1) { _fun144_ip = 16; continue _fun144 }
case 12:
                        r1 = undefined;
                        return r1;
case 16:
                        r3 = undefined;
                        var _closure3_slot0 = r3;
                        r2 = _closure1_slot0;
                        r4 = _closure1_slot1;
                        r1 = 30;
                        r1 = r4[r1];
                        r1 = r2.bind(r3)(r1);
                        r2 = r1.subscribeScreencastStopped;
                        r1 = function(a0) { // Environment: r0
                            _fun145: for(var _fun145_ip = 0; ; ) switch(_fun145_ip) {
case 0:
                                r0 = a0;
                                r2 = _closure2_slot16;
                                r2 = r2.current;
                                if(!r2) { _fun145_ip = 250; continue _fun145 }
case 21:
                                r3 = _closure2_slot20;
                                r4 = r3.current;
                                r2 = 1;
                                r2 = r4 + r2;
                                r3['current'] = r2;
                                r2 = _closure2_slot110;
                                r3 = undefined;
                                r2 = r2.bind(r3)();
                                r4 = _closure2_slot16;
                                r2 = false;
                                r4['current'] = r2;
                                r1 = _closure2_slot14;
                                r1 = r1.bind(r3)(r2);
                                r4 = r0.state;
                                r5 = _closure1_slot0;
                                r6 = _closure1_slot1;
                                r2 = 30;
                                r2 = r6[r2];
                                r2 = r5.bind(r3)(r2);
                                r2 = r2.SCREENCAST_STATE_CANCELED;
                                if(!(r4 !== r2)) { _fun145_ip = 169; continue _fun145 }
case 113:
                                r4 = _closure1_slot0;
                                r7 = _closure1_slot1;
                                r2 = 22;
                                r2 = r7[r2];
                                r2 = r4.bind(r3)(r2);
                                r6 = r2.SRNApiToast;
                                r5 = r6.toast;
                                r2 = 21;
                                r2 = r7[r2];
                                r2 = r4.bind(r3)(r2);
                                r4 = r2.SCREENCAST_INTERRUPTED_TIP;
                                r2 = true;
                                r2 = r5.bind(r6)(r4, r2);
case 169:
                                r2 = _closure1_slot0;
                                r4 = _closure1_slot1;
                                r1 = 22;
                                r1 = r4[r1];
                                r1 = r2.bind(r3)(r1);
                                r3 = r1.SRNApiLog;
                                r2 = r3.warn;
                                r11 = r0.state;
                                r9 = r0.errorCode;
                                r0 = global;
                                r0 = r0.HermesInternal;
                                r5 = r0.concat;
                                r12 = '投屏建房流程中断（onScreencastStopped state=';
                                r10 = ' errorCode=';
                                r8 = '）';
                                r1 = r12[r5](r11, r10, r9, r8, r7);
                                r0 = 'CreatePartyPage';
                                r0 = r2.bind(r3)(r0, r1);
case 250:
                                r0 = undefined;
                                return r0;
                            }
                        };
                        r1 = r2.bind(r3)(r1);
                        _closure3_slot0 = r1;
                        r0 = function() { // Environment: r0
                            r1 = _closure3_slot0;
                            r0 = undefined;
                            r1 = r1.bind(r0)();
                            return r0;
                        };
                        return r0;
                    }
                };
                r30 = r48.bind(r3)(r30, r31);
                r48 = r5.useEffect;
                r30 = _closure2_slot110;
                r31 = new Array(1);
                r31[0] = r30;
                r30 = function() { // Environment: r18
                    r0 = function() { // Environment: r0
                        _fun148: for(var _fun148_ip = 0; ; ) switch(_fun148_ip) {
case 0:
                            r2 = _closure2_slot110;
                            r0 = undefined;
                            r2 = r2.bind(r0)();
                            r3 = _closure2_slot20;
                            r4 = r3.current;
                            r2 = 1;
                            r2 = r4 + r2;
                            r3['current'] = r2;
                            r2 = _closure2_slot16;
                            r2 = r2.current;
                            if(r2) { _fun148_ip = 56; continue _fun148 }
case 47:
                            r3 = _closure2_slot17;
                            r2 = r3.current;
case 56:
                            if(r2) { _fun148_ip = 68; continue _fun148 }
case 59:
                            r3 = _closure2_slot18;
                            r2 = r3.current;
case 68:
                            if(!r2) { _fun148_ip = 125; continue _fun148 }
case 71:
                            r3 = _closure2_slot16;
                            r2 = false;
                            r3['current'] = r2;
                            r1 = _closure2_slot17;
                            r1['current'] = r2;
                            r2 = _closure1_slot0;
                            r3 = _closure1_slot1;
                            r1 = 30;
                            r1 = r3[r1];
                            r1 = r2.bind(r0)(r1);
                            r1 = r1.stopScreencast;
                            r1 = r1.bind(r0)();
case 125:
                            return r0;
                        }
                    };
                    return r0;
                };
                r30 = r48.bind(r3)(r30, r31);
                r48 = r5.useEffect;
                r30 = _closure2_slot15;
                r31 = new Array(1);
                r31[0] = r30;
                r30 = function() { // Environment: r18
                    _fun149: for(var _fun149_ip = 0; ; ) switch(_fun149_ip) {
case 0:
                        r1 = _closure2_slot15;
                        if(r1) { _fun149_ip = 16; continue _fun149 }
case 12:
                        r1 = undefined;
                        return r1;
case 16:
                        r3 = undefined;
                        var _closure3_slot0 = r3;
                        r2 = _closure1_slot0;
                        r4 = _closure1_slot1;
                        r1 = 30;
                        r1 = r4[r1];
                        r1 = r2.bind(r3)(r1);
                        r2 = r1.subscribeEffectDownloadProgress;
                        r1 = function(a0) { // Environment: r0
                            r2 = _closure2_slot15;
                            r1 = r2.onDownloadProgress;
                            r0 = a0;
                            r0 = r1.bind(r2)(r0);
                            r0 = undefined;
                            return r0;
                        };
                        r1 = r2.bind(r3)(r1);
                        _closure3_slot0 = r1;
                        r0 = function() { // Environment: r0
                            r1 = _closure3_slot0;
                            r0 = undefined;
                            r1 = r1.bind(r0)();
                            return r0;
                        };
                        return r0;
                    }
                };
                r30 = r48.bind(r3)(r30, r31);
                r31 = r5.useEffect;
                r5 = _closure2_slot15;
                r30 = new Array(1);
                r30[0] = r5;
                r5 = function() { // Environment: r18
                    _fun152: for(var _fun152_ip = 0; ; ) switch(_fun152_ip) {
case 0:
                        r1 = _closure2_slot15;
                        if(r1) { _fun152_ip = 14; continue _fun152 }
case 10:
                        r1 = undefined;
                        return r1;
case 14:
                        r1 = _closure2_slot15;
                        r0 = r1.hydrateLocalOnly;
                        r0 = r0.bind(r1)();
                        r0 = function() { // Environment: r0
                            r1 = _closure2_slot15;
                            r0 = r1.dispose;
                            r0 = r0.bind(r1)();
                            r0 = undefined;
                            return r0;
                        };
                        return r0;
                    }
                };
                r5 = r31.bind(r3)(r5, r30);
                r5 = _closure2_slot101;
                if(!r5) { _fun13_ip = 3837; continue _fun13 }
case 3784:
                r30 = _closure2_slot15;
                r31 = undefined;
                if(!(r58 != r30)) { _fun13_ip = 3803; continue _fun13 }
case 3794:
                r30 = _closure2_slot15;
                r31 = r30.liveVideoMode;
case 3803:
                r48 = _closure1_slot0;
                r50 = _closure1_slot1;
                r30 = 21;
                r30 = r50[r30];
                r30 = r48.bind(r3)(r30);
                r30 = r30.LiveVideoMode;
                r30 = r30.CAMERA;
                r5 = r31 === r30;
case 3837:
                var _closure2_slot44 = r23;
                var _closure2_slot45 = r21;
                var _closure2_slot62 = r10;
                var _closure2_slot107 = r9;
                var _closure2_slot60 = r8;
                var _closure2_slot61 = r7;
                var _closure2_slot78 = r2;
                var _closure2_slot120 = r3;
                var _closure2_slot118 = r5;
                r2 = _closure1_slot7;
                r8 = r2.useEffect;
                r9 = _closure2_slot15;
                r7 = new Array(2);
                r7[0] = r9;
                r7[1] = r5;
                r5 = function() { // Environment: r18
                    _fun154: for(var _fun154_ip = 0; ; ) switch(_fun154_ip) {
case 0:
                        r1 = _closure2_slot15;
                        if(!r1) { _fun154_ip = 14; continue _fun154 }
case 10:
                        r1 = _closure2_slot118;
case 14:
                        if(!r1) { _fun154_ip = 30; continue _fun154 }
case 17:
                        r1 = _closure2_slot15;
                        r0 = r1.refreshCameraPermission;
                        r0 = r0.bind(r1)();
case 30:
                        r0 = undefined;
                        return r0;
                    }
                };
                r5 = r8.bind(r3)(r5, r7);
                r8 = r2.useEffect;
                r5 = _closure2_slot15;
                r7 = new Array(1);
                r7[0] = r5;
                r5 = function() { // Environment: r18
                    _fun155: for(var _fun155_ip = 0; ; ) switch(_fun155_ip) {
case 0:
                        r1 = _closure2_slot15;
                        if(r1) { _fun155_ip = 16; continue _fun155 }
case 12:
                        r1 = undefined;
                        return r1;
case 16:
                        r1 = undefined;
                        var _closure3_slot0 = r1;
                        r1 = _closure1_slot8;
                        r4 = r1.AppState;
                        r3 = r4.addEventListener;
                        r2 = 'change';
                        r1 = function(a0) { // Environment: r0
                            _fun156: for(var _fun156_ip = 0; ; ) switch(_fun156_ip) {
case 0:
                                r1 = 'active';
                                r0 = a0;
                                if(!(r1 === r0)) { _fun156_ip = 30; continue _fun156 }
case 11:
                                r2 = _closure2_slot15;
                                r1 = r2.refreshCameraPermission;
                                r0 = false;
                                r0 = r1.bind(r2)(r0);
case 30:
                                r0 = undefined;
                                return r0;
                            }
                        };
                        r1 = r3.bind(r4)(r2, r1);
                        _closure3_slot0 = r1;
                        r0 = function() { // Environment: r0
                            r1 = _closure3_slot0;
                            r0 = r1.remove;
                            r0 = r0.bind(r1)();
                            r0 = undefined;
                            return r0;
                        };
                        return r0;
                    }
                };
                r5 = r8.bind(r3)(r5, r7);
                r8 = r2.useCallback;
                r7 = function() { // Environment: r18
                    _fun158: for(var _fun158_ip = 0; ; ) switch(_fun158_ip) {
case 0:
                        r3 = _closure1_slot0;
                        r2 = _closure1_slot1;
                        r0 = 27;
                        r2 = r2[r0];
                        r0 = undefined;
                        r2 = r3.bind(r0)(r2);
                        r3 = r2.CreateRoomTrackPoint;
                        r2 = r3.eventPartyLiveCameraPermissionSettingClick;
                        r2 = r2.bind(r3)();
                        r2 = _closure1_slot8;
                        r2 = r2.Platform;
                        r3 = r2.OS;
                        r2 = 'android';
                        if(!(r2 === r3)) { _fun158_ip = 101; continue _fun158 }
case 62:
                        r2 = _closure1_slot8;
                        r3 = r2.Linking;
                        r2 = r3.openSettings;
                        r4 = r2.bind(r3)();
                        r3 = r4.catch;
                        r2 = function(a0) { // Environment: r2
                            r2 = _closure1_slot0;
                            r1 = _closure1_slot1;
                            r0 = 22;
                            r1 = r1[r0];
                            r0 = undefined;
                            r1 = r2.bind(r0)(r1);
                            r4 = r1.SRNApiLog;
                            r3 = r4.warn;
                            r1 = global;
                            r5 = r1.String;
                            r2 = a0;
                            r5 = r5.bind(r0)(r2);
                            r1 = r1.HermesInternal;
                            r2 = r1.concat;
                            r1 = '跳转系统设置失败：';
                            r2 = r2.bind(r1)(r5);
                            r1 = 'CreatePartyPage';
                            r1 = r3.bind(r4)(r1, r2);
                            return r0;
                        };
                        r2 = r3.bind(r4)(r2);
                        _fun158_ip = 156; continue _fun158;
case 101:
                        r4 = _closure1_slot0;
                        r5 = _closure1_slot1;
                        r1 = 22;
                        r1 = r5[r1];
                        r1 = r4.bind(r0)(r1);
                        r3 = r1.SRNApiDevice;
                        r2 = r3.openUrl;
                        r1 = 21;
                        r1 = r5[r1];
                        r1 = r4.bind(r0)(r1);
                        r1 = r1.APP_SETTINGS_URL;
                        r1 = r2.bind(r3)(r1);
case 156:
                        return r0;
                    }
                };
                r5 = new Array(0);
                r56 = r8.bind(r3)(r7, r5);
                r8 = r2.useCallback;
                r5 = _closure2_slot15;
                r7 = new Array(1);
                r7[0] = r5;
                r5 = function() { // Environment: r18
                    r0 = _closure1_slot2;
                    r2 = r0.default;
                    r0 = undefined;
                    r1 = function* () { // Environment: r1
                        r0 = function* () { // Original name: ?anon_0_, environment: r0
                            _fun162: for(var _fun162_ip = 0; ; ) switch(_fun162_ip) {
case 0:
                                StartGenerator();
                                ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                                if(r1) { _fun162_ip = 121; continue _fun162 }
case 7:
                                r1 = _closure2_slot15;
                                if(!r1) { _fun162_ip = 113; continue _fun162 }
case 17:
                                r3 = _closure2_slot15;
                                r1 = r3.refreshCameraPermission;
                                r1 = r1.bind(r3)();
                                SaveGenerator(address=34);
case 32:
                                return r1;
case 34:
                                ResumeGenerator(result_out_reg=1, return_bool_out_reg=3);
                                if(r3) { _fun162_ip = 118; continue _fun162 }
case 40:
                                r2 = _closure2_slot15;
                                r2 = r2.cameraPermissionUnavailable;
                                if(!r2) { _fun162_ip = 113; continue _fun162 }
case 52:
                                r6 = _closure1_slot0;
                                r7 = _closure1_slot1;
                                r2 = 22;
                                r2 = r7[r2];
                                r3 = undefined;
                                r2 = r6.bind(r3)(r2);
                                r5 = r2.SRNApiToast;
                                r4 = r5.toast;
                                r2 = 21;
                                r2 = r7[r2];
                                r2 = r6.bind(r3)(r2);
                                r3 = r2.CAMERA_PERMISSION_API_UNAVAILABLE_TIP;
                                r2 = true;
                                r2 = r4.bind(r5)(r3, r2);
case 113:
                                r2 = undefined;
                                return r2;
case 118:
                                return r1;
case 121:
                                return r0;
                            }
                        };
                        return r0;
                    };
                    r1 = r2.bind(r0)(r1);
                    r1 = r1.bind(r0)();
                    return r0;
                };
                r55 = r8.bind(r3)(r5, r7);
                r7 = r2.useCallback;
                r2 = _closure2_slot15;
                r5 = new Array(1);
                r5[0] = r2;
                r2 = function() { // Environment: r18
                    _fun163: for(var _fun163_ip = 0; ; ) switch(_fun163_ip) {
case 0:
                        r2 = _closure2_slot15;
                        r1 = null;
                        if(!(r1 != r2)) { _fun163_ip = 27; continue _fun163 }
case 13:
                        r1 = _closure2_slot15;
                        r0 = r1.syncPreviewSettingsToNative;
                        r0 = r0.bind(r1)();
case 27:
                        r0 = undefined;
                        return r0;
                    }
                };
                r50 = r7.bind(r3)(r2, r5);
                r2 = function() { // Original name: gi, environment: r18
                    r1 = _closure1_slot0;
                    r2 = _closure1_slot1;
                    r0 = 26;
                    r0 = r2[r0];
                    r3 = undefined;
                    r0 = r1.bind(r3)(r0);
                    r2 = r0.resolveCreateRoomJoinCode;
                    r0 = _closure2_slot123;
                    r1 = r0.source;
                    r0 = r0.joinCode;
                    r0 = r2.bind(r3)(r1, r0);
                    return r0;
                };
                _closure2_slot119 = r2;
                r2 = function() { // Environment: r18
                    r1 = _closure1_slot2;
                    r3 = r1.default;
                    r2 = undefined;
                    r1 = function* () { // Environment: r0
                        r0 = function* () { // Original name: ?anon_0_, environment: r0
                            _fun171: for(var _fun171_ip = 0; ; ) switch(_fun171_ip) {
case 0:
                                StartGenerator();
                                r2 = undefined;
                                ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                                if(r1) { _fun171_ip = 198; continue _fun171 }
case 12:
                                r4 = _closure1_slot0;
                                r5 = _closure1_slot1;
                                r1 = 22;
                                r3 = r5[r1];
                                r3 = r4.bind(r2)(r3);
                                r10 = r3.SRNApiEventTrack;
                                r9 = r10.eventClick;
                                r6 = _closure2_slot122;
                                r6 = r6.params;
                                r6 = r6.source;
                                r8 = {};
                                r8['createroom_source'] = r6;
                                r6 = 'yuliao,ktv,wanfa,youxi';
                                r8['createroom_version'] = r6;
                                r7 = 'GroupChat_CreateRoomPage_FM';
                                r6 = '';
                                r6 = r9.bind(r10)(r7, r6, r8);
                                r1 = r5[r1];
                                r1 = r4.bind(r2)(r1);
                                r1 = r1.SRNApi;
                                r5 = r1.SRNApiCreateRoomModule;
                                r4 = r5.asyncCall;
                                r1 = _closure2_slot78;
                                r6 = {};
                                r6['showFmCode'] = r1;
                                r1 = {};
                                r7 = 'openRoomMoreFMCodeDialog';
                                r1['eventName'] = r7;
                                r1['params'] = r6;
                                r1 = r4.bind(r5)(r1);
                                SaveGenerator(address=150);
case 148:
                                return r1;
case 150:
                                ResumeGenerator(result_out_reg=1, return_bool_out_reg=4);
                                if(r4) { _fun171_ip = 195; continue _fun171 }
case 156:
                                r5 = _closure2_slot79;
                                r6 = null;
                                r4 = undefined;
                                if(!(r6 != r1)) { _fun171_ip = 173; continue _fun171 }
case 168:
                                r4 = r1.showFmCode;
case 173:
                                r4 = r5.bind(r2)(r4);
                                r4 = _closure2_slot77;
                                r3 = r1.fmCode;
                                r3 = r4.bind(r2)(r3);
                                return r2;
case 195:
                                return r1;
case 198:
                                return r0;
                            }
                        };
                        return r0;
                    };
                    r1 = r3.bind(r2)(r1);
                    var _closure3_slot0 = r1;
                    r0 = function() { // Environment: r0
                        r0 = undefined;
                        r3 = _closure3_slot0;
                        r2 = r3.apply;
                        r0 = arguments;
                        r1 = r0;
                        r0 = this;
                        r0 = r2.bind(r3)(r0, r1);
                        return r0;
                    };
                    return r0;
                };
                r59 = r2.bind(r3)();
                r2 = function() { // Environment: r18
                    r1 = _closure1_slot2;
                    r3 = r1.default;
                    r2 = undefined;
                    r1 = function* () { // Environment: r0
                        r0 = function* () { // Original name: ?anon_0_, environment: r0
                            _fun175: for(var _fun175_ip = 0; ; ) switch(_fun175_ip) {
case 0:
                                StartGenerator();
                                r5 = 2;
                                r9 = 1;
                                r10 = '';
                                ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                                if(r1) { _fun175_ip = 293; continue _fun175 }
case 20:
                                r6 = _closure1_slot33;
                                r3 = _closure2_slot48;
                                r1 = undefined;
                                r3 = r6.bind(r1)(r3);
                                if(r3) { _fun175_ip = 251; continue _fun175 }
case 47:
                                r3 = _closure2_slot30;
                                r3 = !r3;
                                r8 = _closure2_slot55;
                                r7 = r8.map;
                                r6 = function(a0) { // Environment: r6
                                    r0 = a0;
                                    r0 = r0.tabCode;
                                    return r0;
                                };
                                r8 = r7.bind(r8)(r6);
                                r7 = r8.join;
                                r6 = ',';
                                r8 = r7.bind(r8)(r6);
                                r7 = _closure1_slot0;
                                r11 = _closure1_slot1;
                                r6 = 27;
                                r6 = r11[r6];
                                r6 = r7.bind(r1)(r6);
                                r7 = r6.CreateRoomTrackPoint;
                                r6 = r7.eventListenPlayCreateRoom;
                                if(!r3) { _fun175_ip = 127; continue _fun175 }
case 124:
                                r9 = r5;
case 127:
                                r5 = global;
                                r5 = r5.String;
                                r11 = _closure2_slot123;
                                r11 = r11.source;
                                r12 = null;
                                if(!(r12 != r11)) { _fun175_ip = 153; continue _fun175 }
case 150:
                                r10 = r11;
case 153:
                                r5 = r5.bind(r1)(r10);
                                r5 = r6.bind(r7)(r9, r5, r8);
                                r4 = _closure2_slot31;
                                r4 = r4.bind(r1)(r3);
                                r4 = _closure1_slot0;
                                r5 = _closure1_slot1;
                                if(r3) { _fun175_ip = 218; continue _fun175 }
case 185:
                                r3 = 22;
                                r3 = r5[r3];
                                r3 = r4.bind(r1)(r3);
                                r7 = r3.SRNApiToast;
                                r6 = r7.toast;
                                r3 = '唱片机已关闭';
                                r3 = r6.bind(r7)(r3);
                                _fun175_ip = 290; continue _fun175;
case 218:
                                r3 = 22;
                                r3 = r5[r3];
                                r3 = r4.bind(r1)(r3);
                                r5 = r3.SRNApiToast;
                                r4 = r5.toast;
                                r3 = '唱片机已打开';
                                r3 = r4.bind(r5)(r3);
                                _fun175_ip = 290; continue _fun175;
case 251:
                                r3 = _closure1_slot0;
                                r4 = _closure1_slot1;
                                r2 = 22;
                                r2 = r4[r2];
                                r2 = r3.bind(r1)(r2);
                                r4 = r2.SRNApiToast;
                                r3 = r4.toast;
                                r2 = '当前互动玩法和唱片机冲突，无法开启';
                                r2 = r3.bind(r4)(r2);
case 290:
                                return r1;
case 293:
                                return r0;
                            }
                        };
                        return r0;
                    };
                    r1 = r3.bind(r2)(r1);
                    var _closure3_slot0 = r1;
                    r0 = function() { // Environment: r0
                        r0 = undefined;
                        r3 = _closure3_slot0;
                        r2 = r3.apply;
                        r0 = arguments;
                        r1 = r0;
                        r0 = this;
                        r0 = r2.bind(r3)(r0, r1);
                        return r0;
                    };
                    return r0;
                };
                r48 = r2.bind(r3)();
                r2 = function() { // Environment: r18
                    r1 = _closure1_slot2;
                    r3 = r1.default;
                    r2 = undefined;
                    r1 = function* (a0, a1, a2) { // Environment: r0
                        r0 = function* (a0, a1, a2) { // Original name: ?anon_0_, environment: r0
                            _fun184: for(var _fun184_ip = 0; ; ) switch(_fun184_ip) {
case 0:
                                StartGenerator();
                                r7 = a1;
                                r3 = a2;
                                r1 = undefined;
                                r6 = undefined;
                                r2 = undefined;
                                ResumeGenerator(result_out_reg=0, return_bool_out_reg=4);
                                if(r4) { _fun184_ip = 201; continue _fun184 }
case 22:
                                r2 = undefined;
                                if(!r7) { _fun184_ip = 198; continue _fun184 }
case 30: // try_start_0
                                r5 = _closure1_slot0;
                                r8 = _closure1_slot1;
                                r4 = 24;
                                r4 = r8[r4];
                                r4 = r5.bind(r1)(r4);
                                r5 = r4.topicPolish;
                                r4 = a0;
                                r4 = r5.bind(r1)(r4, r7);
                                SaveGenerator(address=72);
case 70:
                                return r4;
case 72:
                                ResumeGenerator(result_out_reg=4, return_bool_out_reg=5);
                                if(r5) { _fun184_ip = 85; continue _fun184 }
case 78:
                                r5 = r3.bind(r1)(r4);
case 83: // try_end0
                                _fun184_ip = 198; continue _fun184;
case 85:
                                return r4;
case 88: // catch_target0
                                CatchBlockStart(arg_register=7);
                                r6 = r7;
                                r8 = null;
                                r3 = r3.bind(r1)(r8);
                                r5 = undefined;
                                if(!(r8 != r7)) { _fun184_ip = 114; continue _fun184 }
case 106:
                                r7 = r6;
                                r5 = r7.message;
case 114:
                                r4 = r5;
                                if(r5) { _fun184_ip = 138; continue _fun184 }
case 120:
                                r7 = r6;
                                r5 = undefined;
                                if(!(r8 != r7)) { _fun184_ip = 135; continue _fun184 }
case 129:
                                r5 = r6.msg;
case 135:
                                r4 = r5;
case 138:
                                r3 = r4;
                                if(r4) { _fun184_ip = 148; continue _fun184 }
case 144:
                                r3 = '网络错误';
case 148:
                                r2 = r3;
                                if(!r3) { _fun184_ip = 198; continue _fun184 }
case 154:
                                r4 = _closure1_slot0;
                                r5 = _closure1_slot1;
                                r3 = 22;
                                r3 = r5[r3];
                                r3 = r4.bind(r1)(r3);
                                r5 = r3.SRNApiToast;
                                r4 = r5.toast;
                                r3 = r2;
                                r2 = true;
                                r2 = r4.bind(r5)(r3, r2);
case 198:
                                return r1;
case 201:
                                return r0;
                            }
                        };
                        return r0;
                    };
                    r1 = r3.bind(r2)(r1);
                    var _closure3_slot0 = r1;
                    r0 = function(a0, a1, a2) { // Environment: r0
                        r0 = undefined;
                        r3 = _closure3_slot0;
                        r2 = r3.apply;
                        r0 = arguments;
                        r1 = r0;
                        r0 = this;
                        r0 = r2.bind(r3)(r0, r1);
                        return r0;
                    };
                    return r0;
                };
                r2 = r2.bind(r3)();
                _closure2_slot120 = r2;
                r2 = function() { // Environment: r18
                    r1 = _closure1_slot2;
                    r3 = r1.default;
                    r2 = undefined;
                    r1 = function* () { // Environment: r0
                        r0 = function* () { // Original name: ?anon_0_, environment: r0
                            _fun188: for(var _fun188_ip = 0; ; ) switch(_fun188_ip) {
case 0:
                                StartGenerator();
                                r1 = undefined;
                                ResumeGenerator(result_out_reg=0, return_bool_out_reg=2);
                                if(r2) { _fun188_ip = 349; continue _fun188 }
case 12:
                                r4 = _closure2_slot28;
                                r3 = r4.trim;
                                r5 = r3.bind(r4)();
                                r4 = r5.length;
                                r3 = 0;
                                if(!(!(r4 > r3))) { _fun188_ip = 232; continue _fun188 }
case 42:
                                r4 = _closure1_slot0;
                                r6 = _closure1_slot1;
                                r7 = 22;
                                r7 = r6[r7];
                                r7 = r4.bind(r1)(r7);
                                r11 = r7.SRNApiEventTrack;
                                r10 = r11.eventClick;
                                r9 = {};
                                r7 = '0';
                                r9['Btn_Type'] = r7;
                                r8 = 'GroupChat_CreateRoomPage_NameBeautBtnClk';
                                r7 = '';
                                r7 = r10.bind(r11)(r8, r7, r9);
                                r3 = _closure1_slot8;
                                r7 = r3.Keyboard;
                                r3 = r7.dismiss;
                                r3 = r3.bind(r7)();
                                r3 = 24;
                                r3 = r6[r3];
                                r3 = r4.bind(r1)(r3);
                                r6 = r3.getRandomRecRoomName;
                                r4 = _closure2_slot98;
                                r3 = _closure2_slot34;
                                r4 = r4.bind(r1)(r3);
                                r8 = _closure2_slot48;
                                r7 = null;
                                r3 = undefined;
                                if(!(r7 != r8)) { _fun188_ip = 174; continue _fun188 }
case 160:
                                r8 = _closure2_slot48;
                                r7 = r8.toString;
                                r3 = r7.bind(r8)();
case 174:
                                r3 = r6.bind(r1)(r4, r3);
                                SaveGenerator(address=184);
case 182:
                                return r3;
case 184:
                                ResumeGenerator(result_out_reg=3, return_bool_out_reg=4);
                                if(r4) { _fun188_ip = 229; continue _fun188 }
case 190:
                                r4 = r3.recRoomName;
                                if(!r4) { _fun188_ip = 226; continue _fun188 }
case 198:
                                r6 = _closure2_slot29;
                                r4 = r3.recRoomName;
                                r4 = r6.bind(r1)(r4);
                                r6 = _closure2_slot107;
                                r4 = r3.recRoomName;
                                r4 = r6.bind(r1)(r4);
case 226:
                                return r1;
case 229:
                                return r3;
case 232:
                                r4 = _closure1_slot0;
                                r6 = _closure1_slot1;
                                r3 = 22;
                                r3 = r6[r3];
                                r3 = r4.bind(r1)(r3);
                                r8 = r3.SRNApiEventTrack;
                                r7 = r8.eventClick;
                                r6 = {};
                                r3 = '1';
                                r6['Btn_Type'] = r3;
                                r4 = 'GroupChat_CreateRoomPage_NameBeautBtnClk';
                                r3 = '';
                                r3 = r7.bind(r8)(r4, r3, r6);
                                r3 = _closure2_slot60;
                                if(r3) { _fun188_ip = 346; continue _fun188 }
case 297:
                                r4 = _closure2_slot61;
                                r3 = true;
                                r3 = r4.bind(r1)(r3);
                                r4 = _closure2_slot120;
                                r3 = null;
                                r2 = function(a0) { // Environment: r2
                                    _fun189: for(var _fun189_ip = 0; ; ) switch(_fun189_ip) {
case 0:
                                        r2 = a0;
                                        r4 = _closure2_slot61;
                                        r0 = undefined;
                                        r3 = false;
                                        r3 = r4.bind(r0)(r3);
                                        r3 = null;
                                        r3 = r3 != r2;
                                        if(!r3) { _fun189_ip = 34; continue _fun189 }
case 28:
                                        r3 = r2.newTopic;
case 34:
                                        if(!r3) { _fun189_ip = 65; continue _fun189 }
case 37:
                                        r3 = _closure2_slot29;
                                        r2 = r2.newTopic;
                                        r2 = r3.bind(r0)(r2);
                                        r2 = _closure2_slot57;
                                        r1 = '';
                                        r1 = r2.bind(r0)(r1);
case 65:
                                        return r0;
                                    }
                                };
                                r2 = r4.bind(r1)(r3, r5, r2);
                                SaveGenerator(address=332);
case 330:
                                return r2;
case 332:
                                ResumeGenerator(result_out_reg=2, return_bool_out_reg=3);
                                if(r3) { _fun188_ip = 343; continue _fun188 }
case 338:
                                r3 = undefined;
                                return r3;
case 343:
                                return r2;
case 346:
                                return r1;
case 349:
                                return r0;
                            }
                        };
                        return r0;
                    };
                    r1 = r3.bind(r2)(r1);
                    var _closure3_slot0 = r1;
                    r0 = function() { // Environment: r0
                        r0 = undefined;
                        r3 = _closure3_slot0;
                        r2 = r3.apply;
                        r0 = arguments;
                        r1 = r0;
                        r0 = this;
                        r0 = r2.bind(r3)(r0, r1);
                        return r0;
                    };
                    return r0;
                };
                r77 = r2.bind(r3)();
                r78 = _closure1_slot0;
                r76 = _closure1_slot1;
                r21 = 31;
                r2 = r76[r21];
                r2 = r78.bind(r3)(r2);
                r5 = r2.jsxs;
                r73 = _closure1_slot8;
                r2 = r73.View;
                r7 = r76[r21];
                r7 = r78.bind(r3)(r7);
                r8 = r7.jsx;
                r7 = r73.View;
                r9 = _closure1_slot28;
                r10 = r9.section;
                r9 = r76[r21];
                r9 = r78.bind(r3)(r9);
                r23 = r9.jsxs;
                r9 = r73.View;
                r30 = _closure1_slot28;
                r31 = r30.nameInputContainer;
                r30 = r76[r21];
                r30 = r78.bind(r3)(r30);
                r60 = r30.jsxs;
                r30 = r73.View;
                r61 = r76[r21];
                r61 = r78.bind(r3)(r61);
                r69 = r61.jsxs;
                r61 = r73.View;
                r70 = _closure1_slot28;
                r71 = r70.nameInputAI;
                r70 = r76[r21];
                r70 = r78.bind(r3)(r70);
                r72 = r70.jsxs;
                r70 = r73.View;
                r74 = _closure1_slot28;
                r74 = r74.inputWrapper;
                r76 = r76[r21];
                r76 = r78.bind(r3)(r76);
                r78 = r76.jsx;
                r76 = r73.TextInput;
                r83 = _closure2_slot27;
                r73 = _closure1_slot28;
                r82 = r73.nameInput;
                r79 = _closure2_slot28;
                r73 = {};
                r73['ref'] = r83;
                r73['style'] = r82;
                r73['value'] = r79;
                r79 = function(a0) { // Original name: $o, environment: r18
                    _fun108: for(var _fun108_ip = 0; ; ) switch(_fun108_ip) {
case 0:
                        r4 = a0;
                        r1 = r4.length;
                        r0 = 15;
                        if(!(r1 <= r0)) { _fun108_ip = 104; continue _fun108 }
case 15:
                        r3 = _closure2_slot45;
                        r2 = undefined;
                        r1 = true;
                        r3 = r3.bind(r2)(r1);
                        r3 = _closure2_slot29;
                        r3 = r3.bind(r2)(r4);
                        r5 = r4.length;
                        r3 = 0;
                        if(!(!(r5 > r3))) { _fun108_ip = 77; continue _fun108 }
case 51:
                        r5 = _closure2_slot45;
                        r3 = false;
                        r3 = r5.bind(r2)(r3);
                        r5 = _closure2_slot57;
                        r3 = '';
                        r3 = r5.bind(r2)(r3);
                        _fun108_ip = 104; continue _fun108;
case 77:
                        r3 = _closure2_slot45;
                        r3 = r3.bind(r2)(r1);
                        r3 = _closure2_slot107;
                        r3 = r3.bind(r2)(r4);
                        r0 = _closure2_slot62;
                        r0 = r0.bind(r2)(r1);
case 104:
                        r0 = undefined;
                        return r0;
                    }
                };
                r73['onChangeText'] = r79;
                r79 = '输入派对名称，AI帮你生成或润色';
                r73['placeholder'] = r79;
                r79 = 'rgba(255, 255, 255, 0.6)';
                r73['placeholderTextColor'] = r79;
                r79 = '#26d4d0';
                r73['selectionColor'] = r79;
                r79 = function() { // Original name: Zo, environment: r18
                    _fun114: for(var _fun114_ip = 0; ; ) switch(_fun114_ip) {
case 0:
                        r3 = _closure2_slot44;
                        r0 = undefined;
                        r2 = true;
                        r3 = r3.bind(r0)(r2);
                        r3 = _closure2_slot28;
                        r4 = r3.length;
                        r3 = 0;
                        if(!(r4 > r3)) { _fun114_ip = 40; continue _fun114 }
case 31:
                        r1 = _closure2_slot45;
                        r1 = r1.bind(r0)(r2);
case 40:
                        return r0;
                    }
                };
                r73['onFocus'] = r79;
                r79 = function() { // Original name: ei, environment: r18
                    r2 = _closure2_slot44;
                    r0 = undefined;
                    r1 = false;
                    r1 = r2.bind(r0)(r1);
                    return r0;
                };
                r73['onBlur'] = r79;
                r79 = 15;
                r73['maxLength'] = r79;
                r76 = r78.bind(r3)(r76, r73);
                r73 = new Array(2);
                r73[0] = r76;
                if(!r6) { _fun13_ip = 4490; continue _fun13 }
case 4363:
                r78 = _closure1_slot0;
                r76 = _closure1_slot1;
                r76 = r76[r21];
                r76 = r78.bind(r3)(r76);
                r79 = r76.jsx;
                r76 = _closure1_slot8;
                r78 = r76.TouchableOpacity;
                if(!r80) { _fun13_ip = 4465; continue _fun13 }
case 4397:
                r84 = _closure1_slot0;
                r86 = _closure1_slot1;
                r76 = r86[r21];
                r76 = r84.bind(r3)(r76);
                r83 = r76.jsx;
                r76 = _closure1_slot9;
                r82 = r76.default;
                r76 = _closure1_slot28;
                r85 = r76.clearIcon;
                r76 = 32;
                r76 = r86[r76];
                r84 = r84.bind(r3)(r76);
                r76 = {};
                r76['style'] = r85;
                r76['source'] = r84;
                r80 = r83.bind(r3)(r82, r76);
case 4465:
                r76 = {};
                r82 = function() { // Original name: Qo, environment: r18
                    r2 = _closure2_slot29;
                    r0 = undefined;
                    r3 = '';
                    r2 = r2.bind(r0)(r3);
                    r2 = _closure2_slot57;
                    r2 = r2.bind(r0)(r3);
                    r2 = _closure2_slot45;
                    r1 = false;
                    r1 = r2.bind(r0)(r1);
                    return r0;
                };
                r76['onPress'] = r82;
                r76['activeOpacity'] = r49;
                r76['children'] = r80;
                r6 = r79.bind(r3)(r78, r76);
case 4490:
                r73[1] = r6;
                r6 = {};
                r6['style'] = r74;
                r6['children'] = r73;
                r6 = r72.bind(r3)(r70, r6);
                r70 = new Array(2);
                r70[0] = r6;
                r80 = _closure1_slot0;
                r6 = _closure1_slot1;
                r72 = r6[r21];
                r72 = r80.bind(r3)(r72);
                r73 = r72.jsx;
                r74 = _closure1_slot8;
                r72 = r74.TouchableOpacity;
                r76 = _closure1_slot28;
                r78 = r76.replaceAIButton;
                r76 = _closure2_slot60;
                r79 = r6[r21];
                r79 = r80.bind(r3)(r79);
                r79 = r79.jsx;
                r74 = r74.Image;
                r82 = _closure1_slot28;
                r82 = r82.replaceAIImage;
                r6 = r6[r45];
                r6 = r80.bind(r3)(r6);
                r80 = r6.trim;
                r6 = _closure2_slot28;
                r6 = r80.bind(r3)(r6);
                if(!(r43 !== r6)) { _fun13_ip = 4639; continue _fun13 }
case 4617:
                r80 = _closure1_slot0;
                r83 = _closure1_slot1;
                r6 = 34;
                r6 = r83[r6];
                r80 = r80.bind(r3)(r6);
                _fun13_ip = 4659; continue _fun13;
case 4639:
                r83 = _closure1_slot0;
                r84 = _closure1_slot1;
                r6 = 33;
                r6 = r84[r6];
                r80 = r83.bind(r3)(r6);
case 4659:
                r6 = {};
                r6['style'] = r82;
                r6['source'] = r80;
                r74 = r79.bind(r3)(r74, r6);
                r6 = {};
                r6['style'] = r78;
                r6['onPress'] = r77;
                r6['activeOpacity'] = r49;
                r6['disabled'] = r76;
                r6['children'] = r74;
                r6 = r73.bind(r3)(r72, r6);
                r70[1] = r6;
                r6 = {};
                r6['style'] = r71;
                r6['children'] = r70;
                r6 = r69.bind(r3)(r61, r6);
                r61 = new Array(2);
                r61[0] = r6;
                r6 = r81;
                if(!r6) { _fun13_ip = 4977; continue _fun13 }
case 4740:
                r70 = _closure1_slot0;
                r69 = _closure1_slot1;
                r69 = r69[r21];
                r69 = r70.bind(r3)(r69);
                r71 = r69.jsx;
                r69 = _closure1_slot8;
                r70 = r69.View;
                r69 = _closure1_slot28;
                r73 = r69.validationContainer;
                r72 = r81;
                if(!r81) { _fun13_ip = 4961; continue _fun13 }
case 4789:
                r80 = _closure1_slot0;
                r79 = _closure1_slot1;
                r69 = r79[r21];
                r69 = r80.bind(r3)(r69);
                r76 = r69.jsxs;
                r69 = _closure1_slot8;
                r74 = r69.View;
                r77 = _closure1_slot28;
                r78 = r77.validContent;
                r77 = r79[r21];
                r77 = r80.bind(r3)(r77);
                r83 = r77.jsx;
                r77 = _closure1_slot9;
                r82 = r77.default;
                r77 = _closure1_slot28;
                r85 = r77.validationIcon;
                r77 = 35;
                r77 = r79[r77];
                r84 = r80.bind(r3)(r77);
                r77 = {};
                r77['style'] = r85;
                r77['source'] = r84;
                r82 = r83.bind(r3)(r82, r77);
                r77 = new Array(2);
                r77[0] = r82;
                r79 = r79[r21];
                r79 = r80.bind(r3)(r79);
                r80 = r79.jsx;
                r79 = r69.Text;
                r69 = _closure1_slot28;
                r82 = r69.validationMessage;
                r69 = {};
                r69['style'] = r82;
                r69['children'] = r81;
                r69 = r80.bind(r3)(r79, r69);
                r77[1] = r69;
                r69 = {};
                r69['style'] = r78;
                r69['children'] = r77;
                r72 = r76.bind(r3)(r74, r69);
case 4961:
                r69 = {};
                r69['style'] = r73;
                r69['children'] = r72;
                r6 = r71.bind(r3)(r70, r69);
case 4977:
                r61[1] = r6;
                r6 = {};
                r6['children'] = r61;
                r6 = r60.bind(r3)(r30, r6);
                r30 = new Array(2);
                r30[0] = r6;
                r6 = _closure2_slot104;
                var _closure2_slot109 = r47;
                var _closure2_slot121 = r46;
                if(r6) { _fun13_ip = 5021; continue _fun13 }
case 5016:
                _fun13_ip = 5337; continue _fun13;
case 5021:
                r76 = _closure1_slot0;
                r77 = _closure1_slot1;
                r46 = r77[r21];
                r46 = r76.bind(r3)(r46);
                r60 = r46.jsxs;
                r46 = _closure1_slot8;
                r47 = r46.View;
                r61 = _closure1_slot28;
                r69 = r61.hotTopicContainer;
                r61 = r77[r21];
                r61 = r76.bind(r3)(r61);
                r71 = r61.jsx;
                r70 = r46.ScrollView;
                r61 = _closure1_slot28;
                r74 = r61.hotTopicScrollView;
                r61 = _closure1_slot28;
                r73 = r61.hotTopicScrollContent;
                r72 = r75.map;
                r61 = function(a0, a1) { // Environment: r18
                    _fun191: for(var _fun191_ip = 0; ; ) switch(_fun191_ip) {
case 0:
                        r0 = a0;
                        r5 = a1;
                        r3 = _closure1_slot0;
                        r2 = _closure1_slot1;
                        r11 = 31;
                        r2 = r2[r11];
                        r4 = undefined;
                        r2 = r3.bind(r4)(r2);
                        r3 = r2.jsxs;
                        r2 = _closure1_slot8;
                        r2 = r2.TouchableOpacity;
                        r6 = _closure1_slot28;
                        r8 = r6.hotTopicItem;
                        r9 = r0.topicIcon;
                        if(!r9) { _fun191_ip = 152; continue _fun191 }
case 65:
                        r10 = _closure1_slot0;
                        r6 = _closure1_slot1;
                        r6 = r6[r11];
                        r6 = r10.bind(r4)(r6);
                        r12 = r6.jsx;
                        r6 = _closure1_slot9;
                        r10 = r6.default;
                        r13 = _closure1_slot28;
                        r15 = r13.hotTopicIcon;
                        r13 = r0.topicIcon;
                        r14 = {};
                        r14['uri'] = r13;
                        r6 = r6.default;
                        r6 = r6.resizeMode;
                        r13 = r6.cover;
                        r6 = {};
                        r6['style'] = r15;
                        r6['source'] = r14;
                        r6['resizeMode'] = r13;
                        r9 = r12.bind(r4)(r10, r6);
case 152:
                        var _closure3_slot0 = r0;
                        r6 = new Array(2);
                        r6[0] = r9;
                        r10 = _closure1_slot0;
                        r9 = _closure1_slot1;
                        r9 = r9[r11];
                        r9 = r10.bind(r4)(r9);
                        r10 = r9.jsx;
                        r9 = _closure1_slot8;
                        r9 = r9.Text;
                        r1 = _closure1_slot28;
                        r12 = r1.hotTopicName;
                        r11 = r0.topicName;
                        r1 = {};
                        r1['style'] = r12;
                        r12 = 1;
                        r1['numberOfLines'] = r12;
                        r1['children'] = r11;
                        r1 = r10.bind(r4)(r9, r1);
                        r6[1] = r1;
                        r1 = {};
                        r1['style'] = r8;
                        r8 = 0.7;
                        r1['activeOpacity'] = r8;
                        r7 = function() { // Original name: onPress, environment: r7
                            r2 = _closure2_slot109;
                            r1 = _closure3_slot0;
                            r0 = undefined;
                            r0 = r2.bind(r0)(r1);
                            return r0;
                        };
                        r1['onPress'] = r7;
                        r1['children'] = r6;
                        r0 = r0.topicId;
                        if(r0) { _fun191_ip = 282; continue _fun191 }
case 279:
                        r0 = r5;
case 282:
                        r0 = r3.bind(r4)(r2, r1, r0);
                        return r0;
                    }
                };
                r72 = r72.bind(r75)(r61);
                r61 = {'style': null, 'horizontal': true, 'showsHorizontalScrollIndicator': false, 'contentContainerStyle': null, 'nestedScrollEnabled': true, 'bounces': false};
                r61['style'] = r74;
                r61['contentContainerStyle'] = r73;
                r61['children'] = r72;
                r70 = r71.bind(r3)(r70, r61);
                r61 = new Array(2);
                r61[0] = r70;
                r70 = r77[r21];
                r70 = r76.bind(r3)(r70);
                r71 = r70.jsx;
                r70 = r46.View;
                r72 = r77[r21];
                r72 = r76.bind(r3)(r72);
                r73 = r72.jsx;
                r72 = r46.TouchableOpacity;
                r46 = r77[r21];
                r46 = r76.bind(r3)(r46);
                r75 = r46.jsx;
                r46 = _closure1_slot9;
                r74 = r46.default;
                r46 = 36;
                r46 = r77[r46];
                r77 = r76.bind(r3)(r46);
                r46 = _closure1_slot28;
                r76 = r46.moreTopic;
                r46 = {};
                r46['source'] = r77;
                r46['style'] = r76;
                r74 = r75.bind(r3)(r74, r46);
                r46 = {};
                r46['activeOpacity'] = r49;
                r75 = {'width': 30, 'height': 22, 'marginTop': 12};
                r46['style'] = r75;
                r75 = function() { // Original name: mi, environment: r18
                    r2 = _closure1_slot0;
                    r1 = _closure1_slot1;
                    r0 = 27;
                    r1 = r1[r0];
                    r0 = undefined;
                    r1 = r2.bind(r0)(r1);
                    r2 = r1.CreateRoomTrackPoint;
                    r1 = r2.eventMoreButtonClick;
                    r1 = r1.bind(r2)();
                    r4 = _closure2_slot121;
                    r3 = r4.push;
                    r2 = {};
                    r1 = function(a0) { // Original name: onSelectTopic, environment: r1
                        r2 = _closure2_slot109;
                        r0 = undefined;
                        r1 = a0;
                        r1 = r2.bind(r0)(r1);
                        return r0;
                    };
                    r2['onSelectTopic'] = r1;
                    r1 = 'HotTopicList';
                    r1 = r3.bind(r4)(r1, r2);
                    return r0;
                };
                r46['onPress'] = r75;
                r46['children'] = r74;
                r72 = r73.bind(r3)(r72, r46);
                r46 = {};
                r73 = {'width': 40, 'height': 30, 'paddingLeft': 20};
                r46['style'] = r73;
                r46['children'] = r72;
                r46 = r71.bind(r3)(r70, r46);
                r61[1] = r46;
                r46 = {};
                r46['style'] = r69;
                r46['children'] = r61;
                r6 = r60.bind(r3)(r47, r46);
case 5337:
                r30[1] = r6;
                r6 = {};
                r6['style'] = r31;
                r6['children'] = r30;
                r9 = r23.bind(r3)(r9, r6);
                r6 = {};
                r6['style'] = r10;
                r6['children'] = r9;
                r7 = r8.bind(r3)(r7, r6);
                r6 = new Array(2);
                r6[0] = r7;
                r30 = _closure1_slot0;
                r23 = _closure1_slot1;
                r7 = r23[r21];
                r7 = r30.bind(r3)(r7);
                r8 = r7.jsx;
                r9 = _closure1_slot8;
                r7 = r9.View;
                r10 = _closure1_slot28;
                r10 = r10.section;
                r23 = r23[r21];
                r23 = r30.bind(r3)(r23);
                r23 = r23.jsxs;
                r9 = r9.View;
                r30 = _closure1_slot28;
                r31 = r30.infoContainer;
                r30 = _closure2_slot80;
                r30 = r30.length;
                if(!(r41 !== r30)) { _fun13_ip = 5688; continue _fun13 }
case 5465:
                r69 = _closure1_slot0;
                r61 = _closure1_slot1;
                r30 = r61[r21];
                r30 = r69.bind(r3)(r30);
                r46 = r30.jsxs;
                r47 = _closure1_slot8;
                r30 = r47.TouchableOpacity;
                r60 = _closure1_slot28;
                r60 = r60.infoItem;
                r61 = r61[r21];
                r61 = r69.bind(r3)(r61);
                r61 = r61.jsx;
                r47 = r47.Text;
                r69 = _closure1_slot28;
                r69 = r69.infoText;
                r70 = _closure2_slot30;
                if(!(r66 === r70)) { _fun13_ip = 5544; continue _fun13 }
case 5541:
                r68 = r1;
case 5544:
                r1 = {};
                r1['style'] = r69;
                r1['children'] = r68;
                r1 = r61.bind(r3)(r47, r1);
                r47 = new Array(2);
                r47[0] = r1;
                r70 = _closure1_slot0;
                r72 = _closure1_slot1;
                r1 = r72[r21];
                r1 = r70.bind(r3)(r1);
                r68 = r1.jsx;
                r1 = _closure1_slot9;
                r61 = r1.default;
                r69 = _closure1_slot28;
                r71 = r69.infoArrow;
                r69 = 38;
                r69 = r72[r69];
                r70 = r70.bind(r3)(r69);
                r1 = r1.default;
                r1 = r1.resizeMode;
                r69 = r1.contain;
                r1 = {};
                r1['style'] = r71;
                r1['source'] = r70;
                r1['resizeMode'] = r69;
                r1 = r68.bind(r3)(r61, r1);
                r47[1] = r1;
                r1 = {};
                r1['style'] = r60;
                r1['onPress'] = r48;
                r1['activeOpacity'] = r49;
                r1['children'] = r47;
                r1 = r46.bind(r3)(r30, r1);
                _fun13_ip = 5891; continue _fun13;
case 5688:
                r70 = _closure1_slot0;
                r72 = _closure1_slot1;
                r30 = r72[r21];
                r30 = r70.bind(r3)(r30);
                r47 = r30.jsxs;
                r30 = _closure1_slot8;
                r46 = r30.TouchableOpacity;
                r48 = _closure1_slot28;
                r60 = r48.infoItem;
                r48 = r72[r21];
                r48 = r70.bind(r3)(r48);
                r61 = r48.jsx;
                r48 = r30.Text;
                r30 = _closure1_slot28;
                r69 = r30.infoText;
                r68 = _closure2_slot78;
                r30 = {};
                r30['style'] = r69;
                r30['children'] = r68;
                r30 = r61.bind(r3)(r48, r30);
                r48 = new Array(2);
                r48[0] = r30;
                r30 = r72[r21];
                r30 = r70.bind(r3)(r30);
                r68 = r30.jsx;
                r30 = _closure1_slot9;
                r61 = r30.default;
                r69 = _closure1_slot28;
                r71 = r69.infoArrow;
                r69 = 37;
                r69 = r72[r69];
                r70 = r70.bind(r3)(r69);
                r30 = r30.default;
                r30 = r30.resizeMode;
                r69 = r30.contain;
                r30 = {};
                r30['style'] = r71;
                r30['source'] = r70;
                r30['resizeMode'] = r69;
                r30 = r68.bind(r3)(r61, r30);
                r48[1] = r30;
                r30 = {};
                r30['style'] = r60;
                r30['onPress'] = r59;
                r30['activeOpacity'] = r49;
                r30['children'] = r48;
                r1 = r47.bind(r3)(r46, r30);
case 5891:
                r30 = new Array(3);
                r30[0] = r1;
                r1 = _closure2_slot0;
                r1 = !r1;
                var _closure2_slot4 = r44;
                if(r1) { _fun13_ip = 5918; continue _fun13 }
case 5913:
                _fun13_ip = 6126; continue _fun13;
case 5918:
                r69 = _closure1_slot0;
                r71 = _closure1_slot1;
                r44 = r71[r21];
                r44 = r69.bind(r3)(r44);
                r47 = r44.jsxs;
                r44 = _closure1_slot8;
                r46 = r44.TouchableOpacity;
                r48 = _closure1_slot28;
                r59 = r48.infoItem;
                r48 = r71[r21];
                r48 = r69.bind(r3)(r48);
                r60 = r48.jsx;
                r48 = r44.Text;
                r44 = _closure1_slot28;
                r68 = r44.infoText;
                r61 = _closure2_slot34;
                r44 = {};
                r44['style'] = r68;
                r44['children'] = r61;
                r44 = r60.bind(r3)(r48, r44);
                r48 = new Array(2);
                r48[0] = r44;
                r44 = r71[r21];
                r44 = r69.bind(r3)(r44);
                r61 = r44.jsx;
                r44 = _closure1_slot9;
                r60 = r44.default;
                r68 = _closure1_slot28;
                r70 = r68.infoArrow;
                r68 = 37;
                r68 = r71[r68];
                r69 = r69.bind(r3)(r68);
                r44 = r44.default;
                r44 = r44.resizeMode;
                r68 = r44.contain;
                r44 = {};
                r44['style'] = r70;
                r44['source'] = r69;
                r44['resizeMode'] = r68;
                r44 = r61.bind(r3)(r60, r44);
                r48[1] = r44;
                r44 = {};
                r44['style'] = r59;
                r59 = function() { // Original name: Ci, environment: r18
                    _fun168: for(var _fun168_ip = 0; ; ) switch(_fun168_ip) {
case 0:
                        r1 = _closure1_slot8;
                        r2 = r1.Keyboard;
                        r1 = r2.dismiss;
                        r1 = r1.bind(r2)();
                        r2 = _closure1_slot0;
                        r1 = _closure1_slot1;
                        r0 = 27;
                        r1 = r1[r0];
                        r0 = undefined;
                        r1 = r2.bind(r0)(r1);
                        r4 = r1.CreateRoomTrackPoint;
                        r3 = r4.eventPartyTypeClick;
                        r2 = _closure2_slot123;
                        r2 = r2.source;
                        r2 = r3.bind(r4)(r2);
                        r1 = _closure2_slot4;
                        r2 = r1.current;
                        r1 = null;
                        if(!(r1 != r2)) { _fun168_ip = 95; continue _fun168 }
case 86:
                        r1 = r2.open;
                        r1 = r1.bind(r2)();
case 95:
                        return r0;
                    }
                };
                r44['onPress'] = r59;
                r44['activeOpacity'] = r49;
                r44['children'] = r48;
                r1 = r47.bind(r3)(r46, r44);
case 6126:
                var _closure2_slot3 = r35;
                r30[1] = r1;
                r61 = _closure1_slot0;
                r69 = _closure1_slot1;
                r1 = r69[r21];
                r1 = r61.bind(r3)(r1);
                r44 = r1.jsxs;
                r1 = _closure1_slot8;
                r35 = r1.TouchableOpacity;
                r46 = _closure1_slot28;
                r47 = r46.infoItem;
                r46 = r69[r21];
                r46 = r61.bind(r3)(r46);
                r48 = r46.jsx;
                r46 = r1.Text;
                r1 = _closure1_slot28;
                r60 = r1.infoText;
                r59 = _closure2_slot40;
                r1 = {};
                r1['style'] = r60;
                r1['children'] = r59;
                r1 = r48.bind(r3)(r46, r1);
                r46 = new Array(2);
                r46[0] = r1;
                r1 = r69[r21];
                r1 = r61.bind(r3)(r1);
                r59 = r1.jsx;
                r1 = _closure1_slot9;
                r48 = r1.default;
                r60 = _closure1_slot28;
                r68 = r60.infoArrow;
                r60 = 37;
                r60 = r69[r60];
                r61 = r61.bind(r3)(r60);
                r1 = r1.default;
                r1 = r1.resizeMode;
                r60 = r1.contain;
                r1 = {};
                r1['style'] = r68;
                r1['source'] = r61;
                r1['resizeMode'] = r60;
                r1 = r59.bind(r3)(r48, r1);
                r46[1] = r1;
                r1 = {};
                r1['style'] = r47;
                r47 = function() { // Original name: hi, environment: r18
                    _fun167: for(var _fun167_ip = 0; ; ) switch(_fun167_ip) {
case 0:
                        r1 = _closure1_slot8;
                        r2 = r1.Keyboard;
                        r1 = r2.dismiss;
                        r1 = r1.bind(r2)();
                        r2 = _closure1_slot0;
                        r1 = _closure1_slot1;
                        r0 = 27;
                        r1 = r1[r0];
                        r0 = undefined;
                        r1 = r2.bind(r0)(r1);
                        r4 = r1.CreateRoomTrackPoint;
                        r3 = r4.eventPrivateClick;
                        r2 = _closure2_slot123;
                        r2 = r2.source;
                        r2 = r3.bind(r4)(r2);
                        r1 = _closure2_slot3;
                        r2 = r1.current;
                        r1 = null;
                        if(!(r1 != r2)) { _fun167_ip = 95; continue _fun167 }
case 86:
                        r1 = r2.open;
                        r1 = r1.bind(r2)();
case 95:
                        return r0;
                    }
                };
                r1['onPress'] = r47;
                r1['activeOpacity'] = r49;
                r1['children'] = r46;
                r1 = r44.bind(r3)(r35, r1);
                r30[2] = r1;
                r1 = {};
                r1['style'] = r31;
                r1['children'] = r30;
                r9 = r23.bind(r3)(r9, r1);
                r1 = {};
                r1['style'] = r10;
                r1['children'] = r9;
                r1 = r8.bind(r3)(r7, r1);
                r6[1] = r1;
                r1 = {};
                r1['children'] = r6;
                r59 = r5.bind(r3)(r2, r1);
                r2 = _closure2_slot55;
                r1 = _closure2_slot46;
                r2 = r2[r1];
                r1 = undefined;
                if(!(r58 != r2)) { _fun13_ip = 6417; continue _fun13 }
case 6412:
                r1 = r2.playTypeConfigList;
case 6417:
                if(!(r58 == r1)) { _fun13_ip = 6425; continue _fun13 }
case 6421:
                r1 = new Array(0);
case 6425:
                r6 = new Array(0);
                r5 = r6.concat;
                r2 = _closure1_slot4;
                r2 = r2.default;
                r2 = r2.bind(r3)(r1);
                r7 = _closure1_slot4;
                r7 = r7.default;
                r10 = r53.Array;
                r9 = r10.from;
                r1 = r1.length;
                r69 = 5;
                r1 = r1 % r69;
                r8 = {};
                r1 = r69 - r1;
                r1 = r1 % r69;
                r8['length'] = r1;
                r1 = function() { // Environment: r18
                    r0 = null;
                    return r0;
                };
                r1 = r9.bind(r10)(r8, r1);
                r1 = r7.bind(r3)(r1);
                r71 = r5.bind(r6)(r2, r1);
                r2 = _closure1_slot0;
                r1 = _closure1_slot1;
                r1 = r1[r21];
                r1 = r2.bind(r3)(r1);
                r2 = r1.jsxs;
                r1 = _closure1_slot8;
                r1 = r1.View;
                r6 = _closure1_slot22;
                r5 = r6.background;
                r7 = r5.fallbackBackgroundColor;
                r5 = {'width': '100%', 'height': '100%', 'position': 'absolute'};
                r5['backgroundColor'] = r7;
                r6 = r6.background;
                r6 = r6.enableLottieBackground;
                if(!r6) { _fun13_ip = 6592; continue _fun13 }
case 6589:
                r6 = r4;
case 6592:
                if(r6) { _fun13_ip = 6604; continue _fun13 }
case 6595:
                var _closure2_slot23 = r24;
                _fun13_ip = 6820; continue _fun13;
case 6604:
                r8 = _closure1_slot0;
                r7 = _closure1_slot1;
                r7 = r7[r21];
                r7 = r8.bind(r3)(r7);
                r8 = r7.jsx;
                r7 = _closure1_slot6;
                r7 = r7.default;
                r23 = {};
                r23['uri'] = r4;
                r9 = r53.String;
                r4 = _closure1_slot8;
                r4 = r4.Platform;
                r4 = r4.OS;
                r9 = r9.bind(r3)(r4);
                r4 = 'harmony';
                if(!(r4 !== r9)) { _fun13_ip = 6691; continue _fun13 }
case 6674:
                r4 = _closure1_slot8;
                r4 = r4.StyleSheet;
                r4 = r4.absoluteFillObject;
                _fun13_ip = 6701; continue _fun13;
case 6691:
                r4 = {'position': 'absolute', 'height': '100%', 'aspectRatio': 0.4618226600985222, 'alignSelf': 'center'};
case 6701:
                _closure2_slot23 = r24;
                r9 = new Array(2);
                r9[0] = r4;
                r4 = _closure1_slot22;
                r4 = r4.background;
                r10 = r4.fallbackBackgroundColor;
                r4 = {};
                r4['zIndex'] = r49;
                r4['backgroundColor'] = r10;
                r9[1] = r4;
                r4 = _closure1_slot8;
                r4 = r4.Platform;
                r10 = r4.OS;
                r4 = {};
                r4['ref'] = r24;
                r4['source'] = r23;
                r4['style'] = r9;
                r9 = 'android';
                r9 = r9 !== r10;
                r4['autoPlay'] = r9;
                r4['loop'] = r66;
                r9 = 'cover';
                r4['resizeMode'] = r9;
                r9 = 'SOFTWARE';
                r4['renderMode'] = r9;
                r9 = function() { // Original name: onAnimationLoaded, environment: r18
                    _fun194: for(var _fun194_ip = 0; ; ) switch(_fun194_ip) {
case 0:
                        r0 = _closure1_slot8;
                        r0 = r0.Platform;
                        r1 = r0.OS;
                        r0 = 'android';
                        if(!(r0 === r1)) { _fun194_ip = 53; continue _fun194 }
case 25:
                        r0 = _closure2_slot23;
                        r1 = r0.current;
                        r0 = null;
                        if(!(r0 != r1)) { _fun194_ip = 53; continue _fun194 }
case 43:
                        r0 = r1.play;
                        r0 = r0.bind(r1)();
case 53:
                        r0 = undefined;
                        return r0;
                    }
                };
                r4['onAnimationLoaded'] = r9;
                r6 = r8.bind(r3)(r7, r4);
case 6820:
                r4 = new Array(3);
                r4[0] = r6;
                r10 = _closure1_slot0;
                r9 = _closure1_slot1;
                r6 = r9[r21];
                r6 = r10.bind(r3)(r6);
                r8 = r6.jsx;
                r6 = _closure1_slot9;
                r7 = r6.default;
                r24 = {};
                r24['uri'] = r11;
                r6 = r6.default;
                r6 = r6.resizeMode;
                r23 = r6.cover;
                r6 = _closure1_slot22;
                r6 = r6.background;
                r6 = r6.fallbackBackgroundColor;
                r11 = {'width': '100%', 'height': '100%', 'position': 'absolute'};
                r11['backgroundColor'] = r6;
                r6 = {};
                r6['source'] = r24;
                r6['resizeMode'] = r23;
                r6['style'] = r11;
                r6 = r8.bind(r3)(r7, r6);
                r4[1] = r6;
                r6 = r9[r21];
                r6 = r10.bind(r3)(r6);
                r7 = r6.jsx;
                r8 = _closure1_slot8;
                r6 = r8.View;
                r9 = r9[r21];
                r9 = r10.bind(r3)(r9);
                r9 = r9.jsxs;
                r8 = r8.View;
                r10 = _closure1_slot28;
                r11 = r10.container;
                r23 = _closure2_slot101;
                if(!r23) { _fun13_ip = 6994; continue _fun13 }
case 6990:
                r23 = _closure2_slot15;
case 6994:
                if(!r23) { _fun13_ip = 7040; continue _fun13 }
case 6997:
                r10 = _closure2_slot15;
                r24 = r10.liveVideoMode;
                r30 = _closure1_slot0;
                r31 = _closure1_slot1;
                r10 = 21;
                r10 = r31[r10];
                r10 = r30.bind(r3)(r10);
                r10 = r10.LiveVideoMode;
                r10 = r10.SCREENCAST;
                r23 = r24 !== r10;
case 7040:
                if(!r23) { _fun13_ip = 7335; continue _fun13 }
case 7046:
                r46 = _closure1_slot0;
                r44 = _closure1_slot1;
                r10 = r44[r21];
                r10 = r46.bind(r3)(r10);
                r30 = r10.jsxs;
                r10 = _closure1_slot8;
                r24 = r10.View;
                r31 = r10.StyleSheet;
                r35 = r31.absoluteFill;
                r31 = r44[r21];
                r31 = r46.bind(r3)(r31);
                r48 = r31.jsx;
                r31 = _closure1_slot19;
                r47 = r31.default;
                r31 = r10.StyleSheet;
                r72 = r31.absoluteFill;
                r31 = _closure2_slot15;
                r61 = r31.isFrontCamera;
                r31 = _closure2_slot15;
                r70 = r31.cameraPermission;
                r31 = _closure2_slot15;
                r68 = r31.cameraPermission;
                r31 = _closure2_slot15;
                r60 = r31.cameraPermissionUnavailable;
                r31 = {};
                r31['style'] = r72;
                r31['isFront'] = r61;
                r61 = 'Denied';
                r61 = r61 === r70;
                r31['permissionDenied'] = r61;
                r61 = 'Authorized';
                r61 = r61 === r68;
                r31['permissionGranted'] = r61;
                r31['permissionUnknown'] = r60;
                r31['onPressOpenSetting'] = r56;
                r31['onPressRetryPermission'] = r55;
                r31['onPreviewStarted'] = r50;
                r47 = r48.bind(r3)(r47, r31);
                r31 = new Array(2);
                r31[0] = r47;
                r44 = r44[r21];
                r44 = r46.bind(r3)(r44);
                r46 = r44.jsx;
                r44 = _closure1_slot21;
                r44 = r44.default;
                r10 = r10.StyleSheet;
                r47 = r10.absoluteFill;
                r10 = {};
                r48 = ['rgba(0,0,0,0.60)', 'rgba(0,0,0,0.30)'];
                r10['colors'] = r48;
                r48 = [0, 0.4];
                r10['locations'] = r48;
                r10['style'] = r47;
                r47 = 'none';
                r10['pointerEvents'] = r47;
                r10 = r46.bind(r3)(r44, r10);
                r31[1] = r10;
                r10 = {};
                r10['style'] = r35;
                r35 = 'box-none';
                r10['pointerEvents'] = r35;
                r10['children'] = r31;
                r23 = r30.bind(r3)(r24, r10);
case 7335:
                r10 = new Array(8);
                r10[0] = r23;
                r23 = _closure2_slot101;
                if(!r23) { _fun13_ip = 7354; continue _fun13 }
case 7350:
                r23 = _closure2_slot15;
case 7354:
                if(!r23) { _fun13_ip = 7400; continue _fun13 }
case 7357:
                r24 = _closure2_slot15;
                r30 = r24.liveVideoMode;
                r31 = _closure1_slot0;
                r35 = _closure1_slot1;
                r24 = 21;
                r24 = r35[r24];
                r24 = r31.bind(r3)(r24);
                r24 = r24.LiveVideoMode;
                r24 = r24.SCREENCAST;
                r23 = r30 === r24;
case 7400:
                if(!r23) { _fun13_ip = 7536; continue _fun13 }
case 7406:
                r48 = _closure1_slot0;
                r50 = _closure1_slot1;
                r24 = r50[r21];
                r24 = r48.bind(r3)(r24);
                r31 = r24.jsx;
                r24 = _closure1_slot8;
                r30 = r24.View;
                r35 = r24.StyleSheet;
                r44 = r35.absoluteFill;
                r35 = r50[r21];
                r35 = r48.bind(r3)(r35);
                r46 = r35.jsx;
                r35 = r24.Image;
                r47 = 39;
                r47 = r50[r47];
                r48 = r48.bind(r3)(r47);
                r24 = r24.StyleSheet;
                r47 = r24.absoluteFill;
                r24 = {};
                r24['source'] = r48;
                r24['style'] = r47;
                r47 = 'cover';
                r24['resizeMode'] = r47;
                r35 = r46.bind(r3)(r35, r24);
                r24 = {};
                r24['style'] = r44;
                r44 = 'none';
                r24['pointerEvents'] = r44;
                r24['children'] = r35;
                r23 = r31.bind(r3)(r30, r24);
case 7536:
                r10[1] = r23;
                r50 = _closure1_slot0;
                r48 = _closure1_slot1;
                r23 = r48[r21];
                r23 = r50.bind(r3)(r23);
                r30 = r23.jsx;
                r47 = _closure1_slot8;
                r24 = r47.StatusBar;
                r23 = {'barStyle': 'light-content', 'backgroundColor': 'transparent', 'translucent': true};
                r23 = r30.bind(r3)(r24, r23);
                r10[2] = r23;
                r23 = r48[r21];
                r23 = r50.bind(r3)(r23);
                r24 = r23.jsxs;
                r23 = r47.Animated;
                r23 = r23.View;
                r30 = _closure1_slot28;
                r30 = r30.content;
                r31 = new Array(2);
                r31[0] = r30;
                r35 = _closure2_slot43;
                r30 = {};
                r30['opacity'] = r35;
                r31[1] = r30;
                r30 = r48[r21];
                r30 = r50.bind(r3)(r30);
                r35 = r30.jsxs;
                r30 = r47.View;
                r46 = _closure2_slot85;
                r44 = _closure1_slot28;
                r55 = r44.header;
                r44 = new Array(2);
                r44[0] = r55;
                r55 = r36.top;
                r36 = {};
                r36['marginTop'] = r55;
                r44[1] = r36;
                r36 = r48[r21];
                r36 = r50.bind(r3)(r36);
                r56 = r36.jsx;
                r55 = r47.TouchableOpacity;
                r36 = _closure1_slot28;
                r61 = r36.closeButton;
                r36 = r48[r21];
                r36 = r50.bind(r3)(r36);
                r68 = r36.jsx;
                r36 = _closure1_slot9;
                r60 = r36.default;
                r70 = _closure1_slot28;
                r73 = r70.closeIcon;
                r70 = 40;
                r70 = r48[r70];
                r72 = r50.bind(r3)(r70);
                r36 = r36.default;
                r36 = r36.resizeMode;
                r70 = r36.contain;
                r36 = {};
                r36['style'] = r73;
                r36['source'] = r72;
                r36['resizeMode'] = r70;
                r60 = r68.bind(r3)(r60, r36);
                r36 = {};
                r36['style'] = r61;
                r61 = function() { // Original name: Oo, environment: r18
                    _fun88: for(var _fun88_ip = 0; ; ) switch(_fun88_ip) {
case 0:
                        r1 = _closure1_slot8;
                        r1 = r1.Platform;
                        r2 = r1.OS;
                        r1 = 'ios';
                        if(!(r1 === r2)) { _fun88_ip = 70; continue _fun88 }
case 25:
                        r2 = _closure1_slot0;
                        r1 = _closure1_slot1;
                        r0 = 22;
                        r1 = r1[r0];
                        r0 = undefined;
                        r0 = r2.bind(r0)(r1);
                        r3 = r0.SoulEventCenter;
                        r2 = r3.sendEvent;
                        r1 = 'create_room_page_back_event';
                        r0 = {};
                        r0 = r2.bind(r3)(r1, r0);
case 70:
                        r1 = _closure2_slot121;
                        r0 = r1.pop;
                        r0 = r0.bind(r1)();
                        r0 = undefined;
                        return r0;
                    }
                };
                r36['onPress'] = r61;
                r36['activeOpacity'] = r49;
                r36['children'] = r60;
                r55 = r56.bind(r3)(r55, r36);
                r36 = new Array(4);
                r36[0] = r55;
                r48 = r48[r21];
                r48 = r50.bind(r3)(r48);
                r50 = r48.jsx;
                r48 = r47.View;
                r47 = _closure1_slot28;
                r47 = r47.headerTabContainer;
                r60 = new Array(2);
                r60[0] = r47;
                r47 = _closure1_slot28;
                r47 = r47.headerTabContainerExperiment;
                r60[1] = r47;
                r56 = _closure2_slot88;
                r61 = _closure2_slot55;
                r55 = r61.map;
                r47 = function(a0) { // Environment: r18
                    _fun195: for(var _fun195_ip = 0; ; ) switch(_fun195_ip) {
case 0:
                        r0 = a0;
                        r4 = undefined;
                        r11 = _closure1_slot0;
                        r10 = _closure1_slot1;
                        r12 = 31;
                        r1 = r10[r12];
                        r1 = r11.bind(r4)(r1);
                        r3 = r1.jsxs;
                        r5 = _closure1_slot8;
                        r2 = r5.TouchableOpacity;
                        r1 = _closure1_slot28;
                        r1 = r1.headerTabItem;
                        r8 = new Array(2);
                        r8[0] = r1;
                        r1 = _closure1_slot28;
                        r1 = r1.headerTabItemExperiment;
                        r8[1] = r1;
                        r6 = _closure2_slot88;
                        r10 = r10[r12];
                        r10 = r11.bind(r4)(r10);
                        r11 = r10.jsx;
                        r10 = r5.Text;
                        r5 = r0.tabCode;
                        r13 = 'youxi';
                        r16 = undefined;
                        if(!(r13 === r5)) { _fun195_ip = 119; continue _fun195 }
case 115:
                        r16 = _closure2_slot86;
case 119:
                        r5 = r0.tabCode;
                        r15 = undefined;
                        if(!(r13 === r5)) { _fun195_ip = 134; continue _fun195 }
case 130:
                        r15 = _closure2_slot88;
case 134:
                        r5 = _closure1_slot28;
                        r5 = r5.headerTabText;
                        r14 = new Array(2);
                        r14[0] = r5;
                        r13 = _closure2_slot46;
                        r5 = r0.id;
                        r5 = r13 === r5;
                        if(!r5) { _fun195_ip = 176; continue _fun195 }
case 167:
                        r13 = _closure1_slot28;
                        r5 = r13.headerActiveTabText;
case 176:
                        r14[1] = r5;
                        r13 = r0.title;
                        r5 = {};
                        r5['ref'] = r16;
                        r5['onLayout'] = r15;
                        r5['style'] = r14;
                        r5['children'] = r13;
                        r10 = r11.bind(r4)(r10, r5);
                        r5 = new Array(2);
                        r5[0] = r10;
                        r10 = _closure2_slot46;
                        r1 = r0.id;
                        r1 = r10 === r1;
                        if(!r1) { _fun195_ip = 285; continue _fun195 }
case 233:
                        r11 = _closure1_slot0;
                        r10 = _closure1_slot1;
                        r10 = r10[r12];
                        r10 = r11.bind(r4)(r10);
                        r11 = r10.jsx;
                        r10 = _closure1_slot8;
                        r10 = r10.View;
                        r9 = _closure1_slot28;
                        r12 = r9.activeTabLine;
                        r9 = {};
                        r9['style'] = r12;
                        r1 = r11.bind(r4)(r10, r9);
case 285:
                        var _closure3_slot0 = r0;
                        r5[1] = r1;
                        r1 = {};
                        r1['style'] = r8;
                        r8 = 1;
                        r1['activeOpacity'] = r8;
                        r7 = function() { // Original name: onPress, environment: r7
                            r2 = _closure2_slot90;
                            r1 = _closure3_slot0;
                            r0 = undefined;
                            r1 = r2.bind(r0)(r1);
                            return r0;
                        };
                        r1['onPress'] = r7;
                        r1['onLayout'] = r6;
                        r1['children'] = r5;
                        r0 = r0.id;
                        r0 = r3.bind(r4)(r2, r1, r0);
                        return r0;
                    }
                };
                r55 = r55.bind(r61)(r47);
                r47 = {};
                r47['style'] = r60;
                r47['onLayout'] = r56;
                r47['children'] = r55;
                r47 = r50.bind(r3)(r48, r47);
                r36[1] = r47;
                r50 = _closure2_slot55;
                r48 = r50.some;
                r47 = function(a0) { // Environment: r18
                    r0 = a0;
                    r1 = r0.tabCode;
                    r0 = 'youxi';
                    r0 = r0 === r1;
                    return r0;
                };
                r47 = r48.bind(r50)(r47);
                if(!r47) { _fun13_ip = 7986; continue _fun13 }
case 7964:
                r50 = _closure1_slot36;
                r48 = _closure2_slot123;
                r48 = r48.isShowPartyIcon;
                r48 = r50.bind(r3)(r48);
                r47 = !r48;
case 7986:
                if(!r47) { _fun13_ip = 8147; continue _fun13 }
case 7992:
                r61 = _closure1_slot0;
                r56 = _closure1_slot1;
                r48 = r56[r21];
                r48 = r61.bind(r3)(r48);
                r55 = r48.jsx;
                r48 = _closure1_slot8;
                r50 = r48.View;
                r60 = _closure1_slot28;
                r68 = r60.headerTabNeiceBadge;
                r60 = new Array(2);
                r60[0] = r68;
                r72 = r67.left;
                r70 = r67.top;
                r68 = r67.opacity;
                r67 = {};
                r67['left'] = r72;
                r67['top'] = r70;
                r67['opacity'] = r68;
                r60[1] = r67;
                r56 = r56[r21];
                r56 = r61.bind(r3)(r56);
                r61 = r56.jsx;
                r56 = r48.Text;
                r48 = _closure1_slot28;
                r67 = r48.headerTabNeiceText;
                r48 = {'allowFontScaling': false, 'style': null, 'children': '内测'};
                r48['style'] = r67;
                r56 = r61.bind(r3)(r56, r48);
                r48 = {};
                r61 = 'none';
                r48['pointerEvents'] = r61;
                r48['style'] = r60;
                r48['children'] = r56;
                r47 = r55.bind(r3)(r50, r48);
case 8147:
                r36[2] = r47;
                r67 = _closure1_slot0;
                r60 = _closure1_slot1;
                if(r25) { _fun13_ip = 8211; continue _fun13 }
case 8162:
                r25 = r60[r21];
                r25 = r67.bind(r3)(r25);
                r48 = r25.jsx;
                r25 = _closure1_slot8;
                r47 = r25.View;
                r25 = _closure1_slot28;
                r50 = r25.headerSpacer;
                r25 = {};
                r25['style'] = r50;
                r25 = r48.bind(r3)(r47, r25);
                _fun13_ip = 8360; continue _fun13;
case 8211:
                r47 = r60[r21];
                r47 = r67.bind(r3)(r47);
                r50 = r47.jsx;
                r47 = 41;
                r47 = r60[r47];
                r47 = r67.bind(r3)(r47);
                r48 = r47.TouchableWithoutFeedback;
                r47 = r60[r21];
                r47 = r67.bind(r3)(r47);
                r56 = r47.jsx;
                r47 = _closure1_slot8;
                r55 = r47.View;
                r61 = _closure1_slot28;
                r61 = r61.publishMomentButton;
                r60 = r60[r21];
                r60 = r67.bind(r3)(r60);
                r67 = r60.jsx;
                r60 = r47.Text;
                r47 = _closure1_slot28;
                r68 = r47.publishMomentButtonText;
                r47 = {};
                r47['style'] = r68;
                r68 = '发布瞬间';
                r47['children'] = r68;
                r60 = r67.bind(r3)(r60, r47);
                r47 = {};
                r47['style'] = r61;
                r47['children'] = r60;
                r55 = r56.bind(r3)(r55, r47);
                r47 = {};
                r56 = function() { // Original name: Mo, environment: r18
                    r2 = _closure1_slot0;
                    r1 = _closure1_slot1;
                    r0 = 22;
                    r1 = r1[r0];
                    r0 = undefined;
                    r1 = r2.bind(r0)(r1);
                    r3 = r1.SRNApiRouter;
                    r2 = r3.navigate;
                    r1 = {};
                    r4 = 'soul://ul.soulapp.cn/post/postMoment?pageFrom=create_room';
                    r1['nativePath'] = r4;
                    r3 = r2.bind(r3)(r1);
                    r2 = r3.catch;
                    r1 = function() { // Environment: r1
                        r0 = undefined;
                        return r0;
                    };
                    r1 = r2.bind(r3)(r1);
                    return r0;
                };
                r47['onPress'] = r56;
                r47['children'] = r55;
                r25 = r50.bind(r3)(r48, r47);
case 8360:
                r36[3] = r25;
                r25 = {};
                r25['ref'] = r46;
                r25['style'] = r44;
                r25['children'] = r36;
                r30 = r35.bind(r3)(r30, r25);
                r25 = new Array(4);
                r25[0] = r30;
                r35 = _closure1_slot0;
                r30 = _closure1_slot1;
                r30 = r30[r21];
                r30 = r35.bind(r3)(r30);
                r36 = r30.jsx;
                r30 = _closure1_slot8;
                r35 = r30.View;
                r30 = _closure1_slot28;
                r30 = r30.tabPageWrap;
                r44 = _closure2_slot101;
                if(!r44) { _fun13_ip = 8449; continue _fun13 }
case 8439:
                r44 = _closure2_slot15;
                if(r44) { _fun13_ip = 8950; continue _fun13 }
case 8449:
                r48 = _closure1_slot0;
                r47 = _closure1_slot1;
                r44 = r47[r21];
                r44 = r48.bind(r3)(r44);
                r46 = r44.jsxs;
                r44 = r47[r21];
                r44 = r48.bind(r3)(r44);
                r44 = r44.Fragment;
                r47 = r47[r21];
                r47 = r48.bind(r3)(r47);
                r50 = r47.jsx;
                r47 = _closure1_slot8;
                r48 = r47.View;
                r47 = _closure1_slot28;
                r47 = r47.playTypeSection;
                r56 = new Array(2);
                r56[0] = r47;
                r47 = _closure1_slot28;
                r47 = r47.playTypeSectionExperiment;
                r56[1] = r47;
                r47 = _closure2_slot55;
                r47 = r47.length;
                r55 = r47 > r41;
                if(!r55) { _fun13_ip = 8566; continue _fun13 }
case 8554:
                r60 = _closure2_slot55;
                r47 = _closure2_slot46;
                r55 = r60[r47];
case 8566:
                if(!r55) { _fun13_ip = 8625; continue _fun13 }
case 8569:
                r60 = _closure2_slot55;
                r47 = _closure2_slot46;
                r47 = r60[r47];
                r60 = r47.tabCode;
                r47 = 'wanfa';
                r47 = r47 === r60;
                if(r47) { _fun13_ip = 8622; continue _fun13 }
case 8597:
                r61 = _closure2_slot55;
                r60 = _closure2_slot46;
                r60 = r61[r60];
                r61 = r60.tabCode;
                r60 = 'youxi';
                r47 = r60 === r61;
case 8622:
                r55 = r47;
case 8625:
                if(!r55) { _fun13_ip = 8753; continue _fun13 }
case 8631:
                r60 = _closure1_slot0;
                r47 = _closure1_slot1;
                r47 = r47[r21];
                r47 = r60.bind(r3)(r47);
                r61 = r47.jsx;
                r47 = _closure1_slot8;
                r60 = r47.FlatList;
                r47 = _closure1_slot28;
                r70 = r47.playGameContentExperiment;
                r47 = _closure1_slot28;
                r68 = r47.scrollContentExperiment;
                r47 = _closure1_slot28;
                r67 = r47.gameplayRowExperiment;
                r47 = {};
                r47['data'] = r71;
                r47['style'] = r70;
                r70 = function(a0, a1) { // Original name: keyExtractor, environment: r18
                    _fun211: for(var _fun211_ip = 0; ; ) switch(_fun211_ip) {
case 0:
                        r5 = a0;
                        r2 = undefined;
                        r3 = global;
                        r1 = r3.String;
                        r4 = null;
                        r0 = undefined;
                        if(!(r4 != r5)) { _fun211_ip = 26; continue _fun211 }
case 21:
                        r0 = r5.playTypeCode;
case 26:
                        if(!(r4 == r0)) { _fun211_ip = 53; continue _fun211 }
case 30:
                        r3 = r3.HermesInternal;
                        r5 = r3.concat;
                        r4 = 'gameplay-placeholder-';
                        r3 = a1;
                        r0 = r5.bind(r4)(r3);
case 53:
                        r0 = r1.bind(r2)(r0);
                        return r0;
                    }
                };
                r47['keyExtractor'] = r70;
                r47['numColumns'] = r69;
                r47['showsVerticalScrollIndicator'] = r26;
                r47['contentContainerStyle'] = r68;
                r47['columnWrapperStyle'] = r67;
                r47['nestedScrollEnabled'] = r66;
                r47['bounces'] = r26;
                r66 = function(a0) { // Original name: renderItem, environment: r18
                    _fun212: for(var _fun212_ip = 0; ; ) switch(_fun212_ip) {
case 0:
                        r4 = undefined;
                        r0 = a0;
                        r13 = r0.item;
                        r15 = _closure1_slot0;
                        r14 = _closure1_slot1;
                        if(r13) { _fun212_ip = 82; continue _fun212 }
case 26:
                        r0 = 31;
                        r0 = r14[r0];
                        r0 = r15.bind(r4)(r0);
                        r3 = r0.jsx;
                        r0 = _closure1_slot8;
                        r2 = r0.View;
                        r0 = _closure1_slot28;
                        r7 = r0.gameplayItemPlaceholderExperiment;
                        r0 = {};
                        r0['style'] = r7;
                        r0 = r3.bind(r4)(r2, r0);
                        var _closure3_slot0 = r13;
                        _fun212_ip = 556; continue _fun212;
case 82:
                        r10 = 31;
                        r2 = r14[r10];
                        r2 = r15.bind(r4)(r2);
                        r3 = r2.jsxs;
                        r11 = _closure1_slot8;
                        r2 = r11.TouchableOpacity;
                        r7 = _closure1_slot28;
                        r7 = r7.gameplayItemContentExperiment;
                        r8 = r14[r10];
                        r8 = r15.bind(r4)(r8);
                        r9 = r8.jsxs;
                        r8 = r11.View;
                        r12 = _closure1_slot28;
                        r12 = r12.gameplayItemWrapper;
                        r14 = r14[r10];
                        r14 = r15.bind(r4)(r14);
                        r15 = r14.jsx;
                        r14 = r11.View;
                        r11 = _closure1_slot28;
                        r11 = r11.gameplayItemExperiment;
                        r17 = new Array(2);
                        r17[0] = r11;
                        r16 = _closure2_slot48;
                        r11 = r13.playTypeCode;
                        r11 = r16 === r11;
                        if(!r11) { _fun212_ip = 209; continue _fun212 }
case 200:
                        r16 = _closure1_slot28;
                        r11 = r16.gameplayItemSelected;
case 209:
                        r17[1] = r11;
                        r16 = _closure1_slot0;
                        r11 = _closure1_slot1;
                        r11 = r11[r10];
                        r11 = r16.bind(r4)(r11);
                        r18 = r11.jsx;
                        r11 = _closure1_slot9;
                        r16 = r11.default;
                        r19 = _closure1_slot28;
                        r21 = r19.gameplayIconExperiment;
                        r19 = r13.iconUrl;
                        r20 = {};
                        r20['uri'] = r19;
                        r11 = r11.default;
                        r11 = r11.resizeMode;
                        r19 = r11.contain;
                        r11 = {};
                        r11['style'] = r21;
                        r11['source'] = r20;
                        r11['resizeMode'] = r19;
                        r16 = r18.bind(r4)(r16, r11);
                        r11 = {};
                        r11['style'] = r17;
                        r11['children'] = r16;
                        r14 = r15.bind(r4)(r14, r11);
                        r11 = new Array(2);
                        r11[0] = r14;
                        r14 = r13.tagIconUrl;
                        r5 = null;
                        if(!r14) { _fun212_ip = 422; continue _fun212 }
case 335:
                        r15 = _closure1_slot0;
                        r14 = _closure1_slot1;
                        r14 = r14[r10];
                        r14 = r15.bind(r4)(r14);
                        r16 = r14.jsx;
                        r14 = _closure1_slot9;
                        r15 = r14.default;
                        r17 = _closure1_slot28;
                        r19 = r17.gameplayTagIcon;
                        r17 = r13.tagIconUrl;
                        r18 = {};
                        r18['uri'] = r17;
                        r14 = r14.default;
                        r14 = r14.resizeMode;
                        r17 = r14.contain;
                        r14 = {};
                        r14['style'] = r19;
                        r14['source'] = r18;
                        r14['resizeMode'] = r17;
                        r5 = r16.bind(r4)(r15, r14);
case 422:
                        _closure3_slot0 = r13;
                        r11[1] = r5;
                        r5 = {};
                        r5['style'] = r12;
                        r5['children'] = r11;
                        r8 = r9.bind(r4)(r8, r5);
                        r5 = new Array(2);
                        r5[0] = r8;
                        r9 = _closure1_slot0;
                        r8 = _closure1_slot1;
                        r8 = r8[r10];
                        r8 = r9.bind(r4)(r8);
                        r9 = r8.jsx;
                        r8 = _closure1_slot8;
                        r8 = r8.Text;
                        r1 = _closure1_slot28;
                        r11 = r1.gameNameExperiment;
                        r1 = _closure3_slot0;
                        r10 = r1.name;
                        r1 = {};
                        r1['style'] = r11;
                        r1['children'] = r10;
                        r1 = r9.bind(r4)(r8, r1);
                        r5[1] = r1;
                        r1 = {};
                        r1['style'] = r7;
                        r7 = 1;
                        r1['activeOpacity'] = r7;
                        r6 = function() { // Original name: onPress, environment: r6
                            _fun213: for(var _fun213_ip = 0; ; ) switch(_fun213_ip) {
case 0:
                                r3 = null;
                                r0 = _closure2_slot48;
                                r4 = 7;
                                r0 = r0 !== r4;
                                if(!r0) { _fun213_ip = 35; continue _fun213 }
case 19:
                                r1 = _closure3_slot0;
                                r1 = r1.playTypeCode;
                                r0 = r1 === r4;
case 35:
                                if(!r0) { _fun213_ip = 90; continue _fun213 }
case 38:
                                r4 = _closure1_slot0;
                                r1 = _closure1_slot1;
                                r0 = 22;
                                r1 = r1[r0];
                                r0 = undefined;
                                r0 = r4.bind(r0)(r1);
                                r6 = r0.SRNApiEventTrack;
                                r5 = r6.eventClick;
                                r4 = 'PaiZhan_Build_clk';
                                r1 = '';
                                r0 = {};
                                r0 = r5.bind(r6)(r4, r1, r0);
case 90:
                                r5 = _closure2_slot49;
                                r0 = _closure3_slot0;
                                r4 = r0.playTypeCode;
                                r0 = undefined;
                                r4 = r5.bind(r0)(r4);
                                r4 = _closure2_slot36;
                                if(r4) { _fun213_ip = 160; continue _fun213 }
case 120:
                                r5 = _closure2_slot100;
                                r4 = _closure3_slot0;
                                r4 = r4.playTypeCode;
                                r6 = r5.bind(r0)(r4);
                                if(!(r3 != r6)) { _fun213_ip = 160; continue _fun213 }
case 142:
                                r5 = _closure2_slot35;
                                r4 = _closure2_slot99;
                                r4 = r4.bind(r0)(r6);
                                r4 = r5.bind(r0)(r4);
case 160:
                                r2 = _closure2_slot73;
                                r1 = _closure3_slot0;
                                r1 = r1.previewBackground;
                                if(r1) { _fun213_ip = 178; continue _fun213 }
case 176:
                                r1 = null;
case 178:
                                r1 = r2.bind(r0)(r1);
                                return r0;
                            }
                        };
                        r1['onPress'] = r6;
                        r1['children'] = r5;
                        r0 = r3.bind(r4)(r2, r1);
case 556:
                        return r0;
                    }
                };
                r47['renderItem'] = r66;
                r55 = r61.bind(r3)(r60, r47);
case 8753:
                r47 = {};
                r47['style'] = r56;
                r47['children'] = r55;
                r48 = r50.bind(r3)(r48, r47);
                r47 = new Array(3);
                r47[0] = r48;
                r55 = _closure1_slot0;
                r50 = _closure1_slot1;
                r48 = r50[r21];
                r48 = r55.bind(r3)(r48);
                r61 = r48.jsx;
                r48 = _closure1_slot8;
                r60 = r48.View;
                r56 = _closure1_slot28;
                r66 = r56.mainContent;
                r56 = {};
                r56['style'] = r66;
                r56['children'] = r59;
                r56 = r61.bind(r3)(r60, r56);
                r47[1] = r56;
                r50 = r50[r21];
                r50 = r55.bind(r3)(r50);
                r50 = r50.jsx;
                r48 = r48.View;
                r56 = r53.Object;
                r55 = r56.assign;
                r53 = _closure1_slot28;
                r60 = r53.tabSwipeStrip;
                r53 = {};
                r53['style'] = r60;
                r53['collapsable'] = r26;
                r39 = r39.panHandlers;
                r39 = r55.bind(r56)(r53, r39);
                r39 = r50.bind(r3)(r48, r39);
                r47[2] = r39;
                r39 = {};
                r39['children'] = r47;
                r39 = r46.bind(r3)(r44, r39);
                var _closure2_slot6 = r65;
                var _closure2_slot7 = r64;
                var _closure2_slot8 = r63;
                var _closure2_slot10 = r62;
                var _closure2_slot12 = r52;
                var _closure2_slot13 = r42;
                _fun13_ip = 9352; continue _fun13;
case 8950:
                r60 = _closure1_slot0;
                r55 = _closure1_slot1;
                r44 = r55[r21];
                r44 = r60.bind(r3)(r44);
                r46 = r44.jsx;
                r44 = _closure1_slot10;
                r44 = r44.VideoLiveProvider;
                r48 = _closure2_slot15;
                r47 = r55[r21];
                r47 = r60.bind(r3)(r47);
                r50 = r47.jsx;
                r47 = _closure1_slot20;
                r47 = r47.default;
                r53 = _closure2_slot15;
                r56 = r53.liveVideoMode;
                r53 = 21;
                r55 = r55[r53];
                r55 = r60.bind(r3)(r55);
                r55 = r55.LiveVideoMode;
                r55 = r55.SCREENCAST;
                if(!(r56 === r55)) { _fun13_ip = 9047; continue _fun13 }
case 9044:
                r57 = r54;
case 9047:
                r54 = _closure2_slot15;
                r56 = r54.currentClarityLabel;
                r54 = _closure2_slot15;
                r54 = r54.currentOrientationLabel;
                r55 = _closure2_slot15;
                r55 = r55.cameraPermission;
                r61 = _closure1_slot0;
                r60 = _closure1_slot1;
                r60 = r60[r53];
                r60 = r61.bind(r3)(r60);
                r61 = r60.matchVideoPlayType;
                r66 = _closure2_slot55;
                r60 = _closure2_slot46;
                r66 = r66[r60];
                r60 = undefined;
                if(!(r58 != r66)) { _fun13_ip = 9121; continue _fun13 }
case 9116:
                r60 = r66.playTypeConfigList;
case 9121:
                _closure2_slot6 = r65;
                _closure2_slot7 = r64;
                _closure2_slot8 = r63;
                _closure2_slot10 = r62;
                _closure2_slot12 = r52;
                _closure2_slot13 = r42;
                r52 = _closure1_slot0;
                r42 = _closure1_slot1;
                r53 = r42[r53];
                r53 = r52.bind(r3)(r53);
                r53 = r53.LiveVideoMode;
                r53 = r53.SCREENCAST;
                r53 = r61.bind(r3)(r60, r53);
                r53 = r58 != r53;
                r42 = r42[r21];
                r42 = r52.bind(r3)(r42);
                r58 = r42.jsx;
                r42 = _closure1_slot8;
                r52 = r42.View;
                r42 = _closure1_slot28;
                r60 = r42.mainContent;
                r42 = {};
                r42['style'] = r60;
                r42['children'] = r59;
                r52 = r58.bind(r3)(r52, r42);
                r42 = {};
                r42['mode'] = r57;
                r42['qualityLabel'] = r56;
                r42['orientationLabel'] = r54;
                r54 = 'Denied';
                r54 = r54 === r55;
                r42['cameraPermissionDenied'] = r54;
                r42['screencastAvailable'] = r53;
                r53 = function(a0) { // Original name: onChangeMode, environment: r18
                    _fun198: for(var _fun198_ip = 0; ; ) switch(_fun198_ip) {
case 0:
                        r2 = _closure2_slot9;
                        r3 = r2.current;
                        r1 = 1;
                        r1 = r3 + r1;
                        r2['current'] = r1;
                        r2 = _closure2_slot15;
                        r1 = r2.setLiveVideoMode;
                        r3 = 'screencast';
                        r0 = a0;
                        if(!(r3 !== r0)) { _fun198_ip = 83; continue _fun198 }
case 46:
                        r4 = _closure1_slot0;
                        r3 = _closure1_slot1;
                        r0 = 21;
                        r3 = r3[r0];
                        r0 = undefined;
                        r0 = r4.bind(r0)(r3);
                        r0 = r0.LiveVideoMode;
                        r0 = r0.CAMERA;
                        _fun198_ip = 118; continue _fun198;
case 83:
                        r5 = _closure1_slot0;
                        r4 = _closure1_slot1;
                        r3 = 21;
                        r4 = r4[r3];
                        r3 = undefined;
                        r3 = r5.bind(r3)(r4);
                        r3 = r3.LiveVideoMode;
                        r0 = r3.SCREENCAST;
case 118:
                        r0 = r1.bind(r2)(r0);
                        r0 = undefined;
                        return r0;
                    }
                };
                r42['onChangeMode'] = r53;
                r53 = function() { // Original name: onPressFlipCamera, environment: r18
                    r2 = _closure1_slot0;
                    r5 = _closure1_slot1;
                    r0 = 27;
                    r1 = r5[r0];
                    r0 = undefined;
                    r1 = r2.bind(r0)(r1);
                    r4 = r1.CreateRoomTrackPoint;
                    r3 = r4.eventPartyLiveSettingClick;
                    r1 = 21;
                    r1 = r5[r1];
                    r1 = r2.bind(r0)(r1);
                    r2 = r1.VIDEO_LIVE_PLAY_TYPE;
                    r1 = 'flip';
                    r1 = r3.bind(r4)(r1, r2);
                    r2 = _closure2_slot15;
                    r1 = r2.toggleCamera;
                    r1 = r1.bind(r2)();
                    return r0;
                };
                r42['onPressFlipCamera'] = r53;
                r53 = function() { // Original name: onPressEffect, environment: r18
                    r3 = _closure1_slot0;
                    r6 = _closure1_slot1;
                    r0 = 27;
                    r2 = r6[r0];
                    r0 = undefined;
                    r2 = r3.bind(r0)(r2);
                    r5 = r2.CreateRoomTrackPoint;
                    r4 = r5.eventPartyLiveSettingClick;
                    r2 = 21;
                    r2 = r6[r2];
                    r2 = r3.bind(r0)(r2);
                    r3 = r2.VIDEO_LIVE_PLAY_TYPE;
                    r2 = 'effect';
                    r2 = r4.bind(r5)(r2, r3);
                    r1 = _closure1_slot2;
                    r2 = r1.default;
                    r1 = function* () { // Environment: r1
                        r0 = function* () { // Original name: ?anon_0_, environment: r0
                            _fun202: for(var _fun202_ip = 0; ; ) switch(_fun202_ip) {
case 0:
                                StartGenerator();
                                ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                                if(r1) { _fun202_ip = 166; continue _fun202 }
case 10:
                                r2 = _closure2_slot12;
                                r3 = undefined;
                                r1 = 'effect';
                                r1 = r2.bind(r3)(r1);
                                r2 = _closure2_slot13;
                                r1 = function(a0) { // Environment: r1
                                    r1 = a0;
                                    r0 = 1;
                                    r0 = r1 + r0;
                                    return r0;
                                };
                                r1 = r2.bind(r3)(r1);
                                r1 = _closure2_slot6;
                                r5 = r1.current;
                                r2 = null;
                                if(!(r2 != r5)) { _fun202_ip = 68; continue _fun202 }
case 59:
                                r1 = r5.open;
                                r1 = r1.bind(r5)();
case 68:
                                r5 = _closure2_slot15;
                                r1 = r5.checkLicenseBeforePanel;
                                r1 = r1.bind(r5)();
                                SaveGenerator(address=86);
case 84:
                                return r1;
case 86:
                                ResumeGenerator(result_out_reg=1, return_bool_out_reg=5);
                                if(r5) { _fun202_ip = 163; continue _fun202 }
case 92:
                                if(r1) { _fun202_ip = 119; continue _fun202 }
case 95:
                                r5 = _closure2_slot6;
                                r5 = r5.current;
                                if(!(r2 != r5)) { _fun202_ip = 157; continue _fun202 }
case 108:
                                r2 = r5.close;
                                r2 = r2.bind(r5)();
                                _fun202_ip = 157; continue _fun202;
case 119:
                                r5 = _closure2_slot15;
                                r2 = r5.loadEffectConfig;
                                r2 = r2.bind(r5)();
                                SaveGenerator(address=137);
case 135:
                                return r2;
case 137:
                                ResumeGenerator(result_out_reg=2, return_bool_out_reg=5);
                                if(r5) { _fun202_ip = 160; continue _fun202 }
case 143:
                                r5 = _closure2_slot15;
                                r4 = r5.landingEffectChip;
                                r4 = r4.bind(r5)();
case 157:
                                return r3;
case 160:
                                return r2;
case 163:
                                return r1;
case 166:
                                return r0;
                            }
                        };
                        return r0;
                    };
                    r1 = r2.bind(r0)(r1);
                    r1 = r1.bind(r0)();
                    return r0;
                };
                r42['onPressEffect'] = r53;
                r53 = function() { // Original name: onPressBackground, environment: r18
                    r3 = _closure1_slot0;
                    r6 = _closure1_slot1;
                    r0 = 27;
                    r2 = r6[r0];
                    r0 = undefined;
                    r2 = r3.bind(r0)(r2);
                    r5 = r2.CreateRoomTrackPoint;
                    r4 = r5.eventPartyLiveSettingClick;
                    r2 = 21;
                    r2 = r6[r2];
                    r2 = r3.bind(r0)(r2);
                    r3 = r2.VIDEO_LIVE_PLAY_TYPE;
                    r2 = 'background';
                    r2 = r4.bind(r5)(r2, r3);
                    r1 = _closure1_slot2;
                    r2 = r1.default;
                    r1 = function* () { // Environment: r1
                        r0 = function* () { // Original name: ?anon_0_, environment: r0
                            _fun206: for(var _fun206_ip = 0; ; ) switch(_fun206_ip) {
case 0:
                                StartGenerator();
                                ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                                if(r1) { _fun206_ip = 139; continue _fun206 }
case 10:
                                r4 = _closure2_slot12;
                                r2 = undefined;
                                r1 = 'background';
                                r1 = r4.bind(r2)(r1);
                                r4 = _closure2_slot13;
                                r1 = function(a0) { // Environment: r1
                                    r1 = a0;
                                    r0 = 1;
                                    r0 = r1 + r0;
                                    return r0;
                                };
                                r1 = r4.bind(r2)(r1);
                                r1 = _closure2_slot6;
                                r5 = r1.current;
                                r4 = null;
                                if(!(r4 != r5)) { _fun206_ip = 68; continue _fun206 }
case 59:
                                r1 = r5.open;
                                r1 = r1.bind(r5)();
case 68:
                                r5 = _closure2_slot15;
                                r1 = r5.checkLicenseBeforePanel;
                                r1 = r1.bind(r5)();
                                SaveGenerator(address=86);
case 84:
                                return r1;
case 86:
                                ResumeGenerator(result_out_reg=1, return_bool_out_reg=5);
                                if(r5) { _fun206_ip = 136; continue _fun206 }
case 92:
                                if(r1) { _fun206_ip = 119; continue _fun206 }
case 95:
                                r5 = _closure2_slot6;
                                r5 = r5.current;
                                if(!(r4 != r5)) { _fun206_ip = 133; continue _fun206 }
case 108:
                                r4 = r5.close;
                                r4 = r4.bind(r5)();
                                _fun206_ip = 133; continue _fun206;
case 119:
                                r4 = _closure2_slot15;
                                r3 = r4.loadEffectConfig;
                                r3 = r3.bind(r4)();
case 133:
                                return r2;
case 136:
                                return r1;
case 139:
                                return r0;
                            }
                        };
                        return r0;
                    };
                    r1 = r2.bind(r0)(r1);
                    r1 = r1.bind(r0)();
                    return r0;
                };
                r42['onPressBackground'] = r53;
                r53 = function() { // Original name: onPressClarity, environment: r18
                    _fun208: for(var _fun208_ip = 0; ; ) switch(_fun208_ip) {
case 0:
                        r0 = undefined;
                        r4 = _closure1_slot0;
                        r5 = _closure1_slot1;
                        r2 = 27;
                        r2 = r5[r2];
                        r2 = r4.bind(r0)(r2);
                        r6 = r2.CreateRoomTrackPoint;
                        r5 = r6.eventPartyLiveSettingClick;
                        r8 = _closure2_slot15;
                        r4 = null;
                        r7 = undefined;
                        if(!(r4 != r8)) { _fun208_ip = 61; continue _fun208 }
case 52:
                        r4 = _closure2_slot15;
                        r7 = r4.liveVideoMode;
case 61:
                        r9 = _closure1_slot0;
                        r4 = _closure1_slot1;
                        r8 = 21;
                        r4 = r4[r8];
                        r4 = r9.bind(r0)(r4);
                        r4 = r4.LiveVideoMode;
                        r4 = r4.SCREENCAST;
                        if(!(r7 !== r4)) { _fun208_ip = 119; continue _fun208 }
case 95:
                        r7 = _closure1_slot0;
                        r4 = _closure1_slot1;
                        r4 = r4[r8];
                        r4 = r7.bind(r0)(r4);
                        r4 = r4.VIDEO_LIVE_PLAY_TYPE;
                        _fun208_ip = 142; continue _fun208;
case 119:
                        r7 = _closure1_slot0;
                        r3 = _closure1_slot1;
                        r3 = r3[r8];
                        r3 = r7.bind(r0)(r3);
                        r4 = r3.SCREEN_LIVE_PLAY_TYPE;
case 142:
                        r3 = 'clarity';
                        r3 = r5.bind(r6)(r3, r4);
                        r3 = _closure2_slot15;
                        var _closure3_slot0 = r3;
                        if(r3) { _fun208_ip = 173; continue _fun208 }
case 163:
                        var _closure3_slot1 = r0;
                        var _closure3_slot2 = r0;
                        _fun208_ip = 247; continue _fun208;
case 173:
                        _closure3_slot1 = r0;
                        _closure3_slot2 = r0;
                        r3 = r3.liveVideoMode;
                        _closure3_slot1 = r3;
                        r3 = _closure2_slot9;
                        r2 = r3.current;
                        r2 = r2 + 1;
                        r3['current'] = r2;
                        _closure3_slot2 = r2;
                        r4 = _closure3_slot0;
                        r3 = r4.ensureClarityOptions;
                        r2 = _closure3_slot1;
                        r3 = r3.bind(r4)(r2);
                        r2 = r3.then;
                        r1 = function() { // Environment: r1
                            _fun209: for(var _fun209_ip = 0; ; ) switch(_fun209_ip) {
case 0:
                                r3 = _closure3_slot2;
                                r1 = _closure2_slot9;
                                r1 = r1.current;
                                r1 = r3 === r1;
                                if(!r1) { _fun209_ip = 35; continue _fun209 }
case 26:
                                r3 = _closure2_slot10;
                                r1 = r3.current;
case 35:
                                if(!r1) { _fun209_ip = 55; continue _fun209 }
case 38:
                                r3 = _closure3_slot0;
                                r4 = r3.liveVideoMode;
                                r3 = _closure3_slot1;
                                r1 = r4 === r3;
case 55:
                                if(!r1) { _fun209_ip = 78; continue _fun209 }
case 58:
                                r2 = _closure3_slot0;
                                r2 = r2.clarityOptions;
                                r3 = r2.length;
                                r2 = 0;
                                r1 = r2 !== r3;
case 78:
                                if(!r1) { _fun209_ip = 105; continue _fun209 }
case 81:
                                r0 = _closure2_slot7;
                                r1 = r0.current;
                                r0 = null;
                                if(!(r0 != r1)) { _fun209_ip = 105; continue _fun209 }
case 96:
                                r0 = r1.open;
                                r0 = r0.bind(r1)();
case 105:
                                r0 = undefined;
                                return r0;
                            }
                        };
                        r1 = r2.bind(r3)(r1);
case 247:
                        return r0;
                    }
                };
                r42['onPressClarity'] = r53;
                r53 = function() { // Original name: onPressOrientation, environment: r18
                    _fun210: for(var _fun210_ip = 0; ; ) switch(_fun210_ip) {
case 0:
                        r1 = _closure2_slot8;
                        r2 = r1.current;
                        r1 = null;
                        r0 = undefined;
                        if(!(r1 != r2)) { _fun210_ip = 29; continue _fun210 }
case 20:
                        r1 = r2.open;
                        r0 = r1.bind(r2)();
case 29:
                        return r0;
                    }
                };
                r42['onPressOrientation'] = r53;
                r42['children'] = r52;
                r47 = r50.bind(r3)(r47, r42);
                r42 = {};
                r42['store'] = r48;
                r42['children'] = r47;
                r39 = r46.bind(r3)(r44, r42);
case 9352:
                var _closure2_slot5 = r40;
                var _closure2_slot65 = r34;
                r34 = {};
                r34['style'] = r30;
                r30 = 'box-none';
                r34['pointerEvents'] = r30;
                r34['children'] = r39;
                r34 = r36.bind(r3)(r35, r34);
                r25[1] = r34;
                r48 = _closure1_slot0;
                r44 = _closure1_slot1;
                r34 = r44[r21];
                r34 = r48.bind(r3)(r34);
                r36 = r34.jsx;
                r34 = _closure1_slot14;
                r35 = r34.default;
                r34 = {};
                r34['data'] = r38;
                r34 = r36.bind(r3)(r35, r34);
                r25[2] = r34;
                r34 = r44[r21];
                r34 = r48.bind(r3)(r34);
                r35 = r34.jsxs;
                r46 = _closure1_slot8;
                r34 = r46.View;
                r36 = _closure1_slot28;
                r38 = r36.bottomSection;
                r36 = r44[r21];
                r36 = r48.bind(r3)(r36);
                r40 = r36.jsxs;
                r39 = r46.View;
                r36 = r44[r21];
                r36 = r48.bind(r3)(r36);
                r47 = r36.jsx;
                r42 = r46.TouchableOpacity;
                r36 = r44[r21];
                r36 = r48.bind(r3)(r36);
                r52 = r36.jsx;
                r36 = _closure1_slot9;
                r50 = r36.default;
                r36 = _closure1_slot28;
                r54 = r36.changeBackgroundIcon;
                r36 = 42;
                r36 = r44[r36];
                r53 = r48.bind(r3)(r36);
                r36 = {};
                r36['style'] = r54;
                r36['source'] = r53;
                r50 = r52.bind(r3)(r50, r36);
                r36 = {};
                r52 = function() { // Original name: bi, environment: r18
                    _fun178: for(var _fun178_ip = 0; ; ) switch(_fun178_ip) {
case 0:
                        r2 = _closure1_slot0;
                        r1 = _closure1_slot1;
                        r0 = 27;
                        r1 = r1[r0];
                        r0 = undefined;
                        r1 = r2.bind(r0)(r1);
                        r4 = r1.CreateRoomTrackPoint;
                        r3 = r4.eventBackgroundChangeClick;
                        r2 = _closure2_slot123;
                        r2 = r2.source;
                        r2 = r3.bind(r4)(r2);
                        r3 = _closure2_slot65;
                        r2 = true;
                        r2 = r3.bind(r0)(r2);
                        r1 = _closure2_slot5;
                        r2 = r1.current;
                        r1 = null;
                        if(!(r1 != r2)) { _fun178_ip = 88; continue _fun178 }
case 79:
                        r1 = r2.open;
                        r1 = r1.bind(r2)();
case 88:
                        return r0;
                    }
                };
                r36['onPress'] = r52;
                r36['activeOpacity'] = r49;
                r36['children'] = r50;
                r36 = r47.bind(r3)(r42, r36);
                r42 = new Array(2);
                r42[0] = r36;
                r36 = r44[r21];
                r36 = r48.bind(r3)(r36);
                r50 = r36.jsx;
                r47 = r46.Text;
                r36 = _closure1_slot28;
                r52 = r36.remainingText;
                r36 = {};
                r36['style'] = r52;
                r52 = '换背景';
                r36['children'] = r52;
                r36 = r50.bind(r3)(r47, r36);
                r42[1] = r36;
                r36 = {};
                r36['children'] = r42;
                r39 = r40.bind(r3)(r39, r36);
                r36 = new Array(2);
                r36[0] = r39;
                r39 = r44[r21];
                r39 = r48.bind(r3)(r39);
                r40 = r39.jsxs;
                r39 = r46.View;
                r42 = _closure1_slot28;
                r42 = r42.bottomSectionChild;
                r47 = r44[r21];
                r47 = r48.bind(r3)(r47);
                r47 = r47.jsx;
                r46 = r46.TouchableOpacity;
                r50 = _closure1_slot28;
                r50 = r50.createButton;
                r52 = new Array(2);
                r52[0] = r50;
                r44 = r44[r45];
                r44 = r48.bind(r3)(r44);
                r48 = r44.trim;
                r44 = _closure2_slot28;
                r44 = r48.bind(r3)(r44);
                r44 = r43 === r44;
                if(r44) { _fun13_ip = 9768; continue _fun13 }
case 9764:
                r44 = r41 === r0;
case 9768:
                if(!r44) { _fun13_ip = 9780; continue _fun13 }
case 9771:
                r48 = _closure1_slot28;
                r44 = r48.createButtonDisabled;
case 9780:
                r52[1] = r44;
                r50 = r41 === r0;
                if(r50) { _fun13_ip = 9826; continue _fun13 }
case 9791:
                r44 = _closure1_slot0;
                r41 = _closure1_slot1;
                r41 = r41[r45];
                r41 = r44.bind(r3)(r41);
                r44 = r41.trim;
                r41 = _closure2_slot28;
                r41 = r44.bind(r3)(r41);
                r50 = r43 === r41;
case 9826:
                r45 = _closure1_slot0;
                r44 = _closure1_slot1;
                r41 = r44[r21];
                r41 = r45.bind(r3)(r41);
                r53 = r41.jsx;
                r43 = _closure1_slot8;
                r48 = r43.Text;
                r41 = _closure1_slot28;
                r54 = r41.createButtonText;
                r41 = {};
                r41['style'] = r54;
                r54 = '创建房间';
                r41['children'] = r54;
                r48 = r53.bind(r3)(r48, r41);
                r41 = {};
                r41['style'] = r52;
                r41['onPress'] = r51;
                r41['disabled'] = r50;
                r41['activeOpacity'] = r49;
                r41['children'] = r48;
                r46 = r47.bind(r3)(r46, r41);
                r41 = new Array(2);
                r41[0] = r46;
                r44 = r44[r21];
                r44 = r45.bind(r3)(r44);
                r44 = r44.jsxs;
                r43 = r43.Text;
                r45 = _closure1_slot28;
                r46 = r45.remainingText;
                r45 = ['今日剩余'];
                r45[1] = r0;
                r0 = '次';
                r45[2] = r0;
                r0 = {};
                r0['style'] = r46;
                r0['children'] = r45;
                r0 = r44.bind(r3)(r43, r0);
                r41[1] = r0;
                r0 = {};
                r0['style'] = r42;
                r0['children'] = r41;
                r0 = r40.bind(r3)(r39, r0);
                r36[1] = r0;
                r0 = {};
                r0['style'] = r38;
                r0['children'] = r36;
                r0 = r35.bind(r3)(r34, r0);
                r25[3] = r0;
                r0 = {};
                r0['style'] = r31;
                r0['pointerEvents'] = r30;
                r0['children'] = r25;
                r0 = r24.bind(r3)(r23, r0);
                r10[3] = r0;
                r0 = _closure2_slot0;
                r0 = !r0;
                var _closure2_slot37 = r22;
                var _closure2_slot39 = r17;
                if(r0) { _fun13_ip = 10074; continue _fun13 }
case 10072:
                _fun13_ip = 10193; continue _fun13;
case 10074:
                r24 = _closure1_slot0;
                r17 = _closure1_slot1;
                r22 = r17[r21];
                r22 = r24.bind(r3)(r22);
                r23 = r22.jsx;
                r22 = _closure1_slot5;
                r22 = r22.default;
                r25 = _closure2_slot4;
                r17 = r17[r21];
                r17 = r24.bind(r3)(r17);
                r30 = r17.jsx;
                r17 = _closure1_slot13;
                r24 = r17.default;
                r31 = _closure2_slot34;
                r17 = {};
                r17['partyTypes'] = r32;
                r17['selectedType'] = r31;
                r31 = function(a0) { // Original name: xi, environment: r18
                    _fun180: for(var _fun180_ip = 0; ; ) switch(_fun180_ip) {
case 0:
                        r4 = a0;
                        r1 = null;
                        r5 = _closure2_slot37;
                        r0 = undefined;
                        r3 = true;
                        r3 = r5.bind(r0)(r3);
                        r5 = _closure2_slot35;
                        r3 = r4.title;
                        r3 = r5.bind(r0)(r3);
                        r3 = global;
                        r6 = r3.parseInt;
                        r5 = r3.String;
                        r4 = r4.id;
                        r5 = r5.bind(r0)(r4);
                        r4 = 10;
                        r5 = r6.bind(r0)(r5, r4);
                        r4 = _closure2_slot39;
                        r6 = r3.Number;
                        r3 = r6.isNaN;
                        r6 = r3.bind(r6)(r5);
                        r3 = null;
                        if(r6) { _fun180_ip = 96; continue _fun180 }
case 93:
                        r3 = r5;
case 96:
                        r3 = r4.bind(r0)(r3);
                        r2 = _closure2_slot4;
                        r2 = r2.current;
                        if(!(r1 != r2)) { _fun180_ip = 123; continue _fun180 }
case 114:
                        r1 = r2.close;
                        r1 = r1.bind(r2)();
case 123:
                        return r0;
                    }
                };
                r17['onSelectType'] = r31;
                r31 = function() { // Original name: onClose, environment: r18
                    r0 = undefined;
                    return r0;
                };
                r17['onClose'] = r31;
                r24 = r30.bind(r3)(r24, r17);
                r17 = {};
                r17['ref'] = r25;
                r17['showPanView'] = r26;
                r17['children'] = r24;
                r0 = r23.bind(r3)(r22, r17);
case 10193:
                var _closure2_slot71 = r14;
                var _closure2_slot64 = r13;
                r10[4] = r0;
                r24 = _closure1_slot0;
                r0 = _closure1_slot1;
                r13 = r0[r21];
                r13 = r24.bind(r3)(r13);
                r23 = r13.jsx;
                r13 = _closure1_slot5;
                r22 = r13.default;
                r30 = _closure2_slot3;
                r14 = r0[r21];
                r14 = r24.bind(r3)(r14);
                r31 = r14.jsx;
                r17 = _closure1_slot8;
                r25 = r17.View;
                r14 = r0[r21];
                r14 = r24.bind(r3)(r14);
                r34 = r14.jsx;
                r14 = _closure1_slot12;
                r32 = r14.default;
                r35 = _closure2_slot68;
                r36 = _closure2_slot48;
                r14 = {};
                r14['visible'] = r37;
                r37 = function() { // Original name: onClose, environment: r18
                    r2 = _closure2_slot64;
                    r1 = undefined;
                    r0 = false;
                    r0 = r2.bind(r1)(r0);
                    return r0;
                };
                r14['onClose'] = r37;
                r37 = function(a0) { // Original name: Si, environment: r18
                    _fun179: for(var _fun179_ip = 0; ; ) switch(_fun179_ip) {
case 0:
                        r2 = a0;
                        r0 = _closure1_slot8;
                        r1 = r0.Keyboard;
                        r0 = r1.dismiss;
                        r0 = r0.bind(r1)();
                        r4 = _closure2_slot69;
                        r3 = r2.id;
                        r0 = undefined;
                        r3 = r4.bind(r0)(r3);
                        r4 = r2.id;
                        r3 = 'noRecommend';
                        if(!(r3 !== r4)) { _fun179_ip = 69; continue _fun179 }
case 56:
                        r4 = _closure2_slot71;
                        r3 = null;
                        r3 = r4.bind(r0)(r3);
                        _fun179_ip = 96; continue _fun179;
case 69:
                        r4 = _closure2_slot71;
                        r3 = global;
                        r5 = r3.Date;
                        r3 = r5.now;
                        r3 = r3.bind(r5)();
                        r3 = r4.bind(r0)(r3);
case 96:
                        r4 = r2.title;
                        r3 = '仅挚友可进';
                        if(!(r3 !== r4)) { _fun179_ip = 152; continue _fun179 }
case 109:
                        r3 = r2.title;
                        r2 = '所有人';
                        if(!(r2 !== r3)) { _fun179_ip = 137; continue _fun179 }
case 122:
                        r3 = _closure2_slot41;
                        r2 = '已隐藏';
                        r2 = r3.bind(r0)(r2);
                        _fun179_ip = 165; continue _fun179;
case 137:
                        r3 = _closure2_slot41;
                        r2 = '已公开';
                        r2 = r3.bind(r0)(r2);
                        _fun179_ip = 165; continue _fun179;
case 152:
                        r3 = _closure2_slot41;
                        r2 = '仅挚友';
                        r2 = r3.bind(r0)(r2);
case 165:
                        r1 = _closure2_slot3;
                        r2 = r1.current;
                        r1 = null;
                        if(!(r1 != r2)) { _fun179_ip = 189; continue _fun179 }
case 180:
                        r1 = r2.close;
                        r1 = r1.bind(r2)();
case 189:
                        return r0;
                    }
                };
                r14['onSelect'] = r37;
                r14['selectedOption'] = r35;
                r35 = 18;
                r35 = r36 === r35;
                r14['isFriendsRoom'] = r35;
                r32 = r34.bind(r3)(r32, r14);
                r14 = {};
                r34 = {'height': 100, 'backgroundColor': 'red'};
                r14['style'] = r34;
                r14['children'] = r32;
                r25 = r31.bind(r3)(r25, r14);
                r14 = {};
                r14['ref'] = r30;
                r14['showPanView'] = r26;
                r14['children'] = r25;
                r14 = r23.bind(r3)(r22, r14);
                r10[5] = r14;
                r14 = r0[r21];
                r14 = r24.bind(r3)(r14);
                r14 = r14.jsx;
                r13 = r13.default;
                r22 = _closure2_slot5;
                r23 = r0[r21];
                r23 = r24.bind(r3)(r23);
                r23 = r23.jsx;
                r17 = r17.View;
                r0 = r0[r21];
                r0 = r24.bind(r3)(r0);
                r25 = r0.jsx;
                r0 = _closure1_slot11;
                r24 = r0.default;
                r26 = _closure2_slot66;
                r0 = {};
                r0['backgroundClassifyModel'] = r29;
                r29 = function() { // Original name: onClose, environment: r18
                    _fun216: for(var _fun216_ip = 0; ; ) switch(_fun216_ip) {
case 0:
                        r3 = _closure2_slot65;
                        r0 = undefined;
                        r2 = false;
                        r2 = r3.bind(r0)(r2);
                        r1 = _closure2_slot5;
                        r2 = r1.current;
                        r1 = null;
                        if(!(r1 != r2)) { _fun216_ip = 40; continue _fun216 }
case 31:
                        r1 = r2.close;
                        r1 = r1.bind(r2)();
case 40:
                        return r0;
                    }
                };
                r0['onClose'] = r29;
                r29 = function(a0) { // Original name: Ri, environment: r18
                    _fun181: for(var _fun181_ip = 0; ; ) switch(_fun181_ip) {
case 0:
                        r2 = a0;
                        r4 = _closure2_slot67;
                        r3 = r2.mediaId;
                        r0 = undefined;
                        r3 = r4.bind(r0)(r3);
                        r3 = r2.backgroundUrl;
                        if(!r3) { _fun181_ip = 44; continue _fun181 }
case 30:
                        r3 = _closure2_slot72;
                        r2 = r2.backgroundUrl;
                        r2 = r3.bind(r0)(r2);
case 44:
                        r2 = _closure2_slot55;
                        r3 = r2.length;
                        r2 = 0;
                        r2 = r3 > r2;
                        if(!r2) { _fun181_ip = 74; continue _fun181 }
case 62:
                        r4 = _closure2_slot55;
                        r3 = _closure2_slot46;
                        r2 = r4[r3];
case 74:
                        if(!r2) { _fun181_ip = 102; continue _fun181 }
case 77:
                        r4 = _closure2_slot55;
                        r3 = _closure2_slot46;
                        r3 = r4[r3];
                        r4 = r3.tabCode;
                        r3 = 'yuliao';
                        r2 = r3 === r4;
case 102:
                        if(!r2) { _fun181_ip = 116; continue _fun181 }
case 105:
                        r3 = _closure2_slot73;
                        r2 = null;
                        r2 = r3.bind(r0)(r2);
case 116:
                        r2 = _closure2_slot65;
                        r1 = false;
                        r1 = r2.bind(r0)(r1);
                        return r0;
                    }
                };
                r0['onSelect'] = r29;
                r0['selectedOption'] = r26;
                r24 = r25.bind(r3)(r24, r0);
                r0 = {};
                r25 = {'height': 608, 'backgroundColor': 'transparent'};
                r0['style'] = r25;
                r0['children'] = r24;
                r17 = r23.bind(r3)(r17, r0);
                r0 = {'ref': null, 'showPanView': true, 'supportPanGesture': true};
                r0['ref'] = r22;
                r0['children'] = r17;
                r0 = r14.bind(r3)(r13, r0);
                r10[6] = r0;
                r0 = _closure2_slot15;
                if(r0) { _fun13_ip = 10570; continue _fun13 }
case 10557:
                var _closure2_slot11 = r33;
                var _closure2_slot19 = r16;
                _fun13_ip = 11253; continue _fun13;
case 10570:
                r25 = _closure1_slot0;
                r23 = _closure1_slot1;
                r13 = r23[r21];
                r13 = r25.bind(r3)(r13);
                r14 = r13.jsxs;
                r13 = r23[r21];
                r13 = r25.bind(r3)(r13);
                r13 = r13.Fragment;
                r17 = r23[r21];
                r17 = r25.bind(r3)(r17);
                r22 = r17.jsx;
                r17 = _closure1_slot5;
                r17 = r17.default;
                r24 = _closure2_slot6;
                r23 = r23[r21];
                r23 = r25.bind(r3)(r23);
                r25 = r23.jsx;
                r23 = _closure1_slot17;
                r23 = r23.default;
                r26 = r15 === r33;
                if(r26) { _fun13_ip = 10669; continue _fun13 }
case 10663:
                r32 = new Array(0);
                _fun13_ip = 10679; continue _fun13;
case 10669:
                r15 = _closure2_slot15;
                r32 = r15.effectChips;
case 10679:
                r31 = undefined;
                if(!r26) { _fun13_ip = 10694; continue _fun13 }
case 10684:
                r15 = _closure2_slot15;
                r31 = r15.effectChip;
case 10694:
                r15 = _closure2_slot15;
                if(r26) { _fun13_ip = 10709; continue _fun13 }
case 10701:
                r30 = r15.backgroundPanelItems;
                _fun13_ip = 10715; continue _fun13;
case 10709:
                r30 = r15.effectPanelItems;
case 10715:
                r15 = _closure2_slot15;
                if(r26) { _fun13_ip = 10730; continue _fun13 }
case 10722:
                r29 = r15.backgroundSelectedIndex;
                _fun13_ip = 10736; continue _fun13;
case 10730:
                r29 = r15.effectSelectedIndex;
case 10736:
                _closure2_slot11 = r33;
                r15 = _closure2_slot15;
                r26 = r15.effectConfigLoading;
                r15 = {};
                r15['topTab'] = r33;
                r15['chips'] = r32;
                r15['activeChip'] = r31;
                r15['items'] = r30;
                r15['selectedIndex'] = r29;
                r15['landingKey'] = r28;
                r15['loading'] = r26;
                r26 = function() { // Original name: onClose, environment: r18
                    _fun217: for(var _fun217_ip = 0; ; ) switch(_fun217_ip) {
case 0:
                        r1 = _closure2_slot6;
                        r2 = r1.current;
                        r1 = null;
                        r0 = undefined;
                        if(!(r1 != r2)) { _fun217_ip = 29; continue _fun217 }
case 20:
                        r1 = r2.close;
                        r0 = r1.bind(r2)();
case 29:
                        return r0;
                    }
                };
                r15['onClose'] = r26;
                r26 = function(a0) { // Original name: onChangeTopTab, environment: r18
                    r2 = _closure2_slot12;
                    r1 = undefined;
                    r0 = a0;
                    r0 = r2.bind(r1)(r0);
                    return r0;
                };
                r15['onChangeTopTab'] = r26;
                r26 = function(a0) { // Original name: onSelectChip, environment: r18
                    r2 = _closure2_slot15;
                    r1 = r2.setEffectChip;
                    r0 = a0;
                    r0 = r1.bind(r2)(r0);
                    return r0;
                };
                r15['onSelectChip'] = r26;
                r26 = function(a0) { // Original name: onSelectItem, environment: r18
                    _fun220: for(var _fun220_ip = 0; ; ) switch(_fun220_ip) {
case 0:
                        r3 = a0;
                        r2 = _closure2_slot11;
                        r0 = 'effect';
                        if(!(r0 !== r2)) { _fun220_ip = 35; continue _fun220 }
case 18:
                        r2 = _closure2_slot15;
                        r0 = r2.pressBackgroundItem;
                        r0 = r0.bind(r2)(r3);
                        _fun220_ip = 50; continue _fun220;
case 35:
                        r2 = _closure2_slot15;
                        r1 = r2.pressEffectItem;
                        r0 = r1.bind(r2)(r3);
case 50:
                        return r0;
                    }
                };
                r15['onSelectItem'] = r26;
                r26 = function() { // Original name: onPressNone, environment: r18
                    _fun221: for(var _fun221_ip = 0; ; ) switch(_fun221_ip) {
case 0:
                        r2 = _closure2_slot11;
                        r0 = 'effect';
                        if(!(r0 !== r2)) { _fun221_ip = 31; continue _fun221 }
case 15:
                        r2 = _closure2_slot15;
                        r0 = r2.clearBackground;
                        r0 = r0.bind(r2)();
                        _fun221_ip = 45; continue _fun221;
case 31:
                        r2 = _closure2_slot15;
                        r1 = r2.clearEffect;
                        r0 = r1.bind(r2)();
case 45:
                        return r0;
                    }
                };
                r15['onPressNone'] = r26;
                r23 = r25.bind(r3)(r23, r15);
                r15 = {'ref': null, 'showPanView': false, 'supportPanGesture': false};
                r15['ref'] = r24;
                r15['children'] = r23;
                r17 = r22.bind(r3)(r17, r15);
                r15 = new Array(4);
                r15[0] = r17;
                r25 = _closure1_slot0;
                r23 = _closure1_slot1;
                r17 = r23[r21];
                r17 = r25.bind(r3)(r17);
                r22 = r17.jsx;
                r17 = _closure1_slot5;
                r17 = r17.default;
                r24 = _closure2_slot7;
                r23 = r23[r21];
                r23 = r25.bind(r3)(r23);
                r25 = r23.jsx;
                r23 = _closure1_slot16;
                r23 = r23.default;
                r26 = _closure1_slot16;
                if(r27) { _fun13_ip = 10949; continue _fun13 }
case 10941:
                r28 = r26.VIDEO_LIVE_CLARITY_TITLE;
                _fun13_ip = 10955; continue _fun13;
case 10949:
                r28 = r26.SCREENCAST_CLARITY_TITLE;
case 10955:
                _closure2_slot19 = r16;
                r16 = _closure2_slot15;
                r27 = r16.clarityOptions;
                r16 = _closure2_slot15;
                r26 = r16.clarityOptionId;
                r16 = {};
                r16['title'] = r28;
                r16['options'] = r27;
                r16['selectedId'] = r26;
                r26 = function(a0) { // Original name: onSelect, environment: r18
                    _fun222: for(var _fun222_ip = 0; ; ) switch(_fun222_ip) {
case 0:
                        r3 = _closure2_slot15;
                        r2 = r3.selectClarityOption;
                        r1 = a0;
                        r1 = r1.id;
                        r1 = r2.bind(r3)(r1);
                        r0 = _closure2_slot7;
                        r1 = r0.current;
                        r0 = null;
                        if(!(r0 != r1)) { _fun222_ip = 50; continue _fun222 }
case 41:
                        r0 = r1.close;
                        r0 = r0.bind(r1)();
case 50:
                        r0 = undefined;
                        return r0;
                    }
                };
                r16['onSelect'] = r26;
                r26 = function() { // Original name: onCancel, environment: r18
                    _fun223: for(var _fun223_ip = 0; ; ) switch(_fun223_ip) {
case 0:
                        r1 = _closure2_slot7;
                        r2 = r1.current;
                        r1 = null;
                        r0 = undefined;
                        if(!(r1 != r2)) { _fun223_ip = 29; continue _fun223 }
case 20:
                        r1 = r2.close;
                        r0 = r1.bind(r2)();
case 29:
                        return r0;
                    }
                };
                r16['onCancel'] = r26;
                r23 = r25.bind(r3)(r23, r16);
                r16 = {'ref': null, 'showPanView': false, 'supportPanGesture': false};
                r16['ref'] = r24;
                r16['children'] = r23;
                r16 = r22.bind(r3)(r17, r16);
                r15[1] = r16;
                r17 = _closure1_slot0;
                r16 = _closure1_slot1;
                r22 = r16[r21];
                r22 = r17.bind(r3)(r22);
                r24 = r22.jsx;
                r22 = _closure1_slot5;
                r23 = r22.default;
                r26 = _closure2_slot8;
                r22 = r16[r21];
                r22 = r17.bind(r3)(r22);
                r27 = r22.jsx;
                r22 = _closure1_slot18;
                r25 = r22.default;
                r22 = _closure2_slot15;
                r28 = r22.orientationValue;
                r22 = {};
                r22['selected'] = r28;
                r28 = function(a0) { // Original name: onSelect, environment: r18
                    _fun224: for(var _fun224_ip = 0; ; ) switch(_fun224_ip) {
case 0:
                        r3 = _closure2_slot15;
                        r2 = r3.selectOrientation;
                        r1 = a0;
                        r1 = r2.bind(r3)(r1);
                        r0 = _closure2_slot8;
                        r1 = r0.current;
                        r0 = null;
                        if(!(r0 != r1)) { _fun224_ip = 45; continue _fun224 }
case 36:
                        r0 = r1.close;
                        r0 = r0.bind(r1)();
case 45:
                        r0 = undefined;
                        return r0;
                    }
                };
                r22['onSelect'] = r28;
                r28 = function() { // Original name: onClose, environment: r18
                    _fun225: for(var _fun225_ip = 0; ; ) switch(_fun225_ip) {
case 0:
                        r1 = _closure2_slot8;
                        r2 = r1.current;
                        r1 = null;
                        r0 = undefined;
                        if(!(r1 != r2)) { _fun225_ip = 29; continue _fun225 }
case 20:
                        r1 = r2.close;
                        r0 = r1.bind(r2)();
case 29:
                        return r0;
                    }
                };
                r22['onClose'] = r28;
                r25 = r27.bind(r3)(r25, r22);
                r22 = {'ref': null, 'showPanView': false, 'supportPanGesture': false};
                r22['ref'] = r26;
                r22['children'] = r25;
                r22 = r24.bind(r3)(r23, r22);
                r15[2] = r22;
                r16 = r16[r21];
                r16 = r17.bind(r3)(r16);
                r17 = r16.jsx;
                r12 = _closure1_slot15;
                r16 = r12.default;
                r12 = {};
                r12['visible'] = r20;
                r12['openInFlight'] = r19;
                r19 = function() { // Original name: onPressOpen, environment: r18
                    _fun226: for(var _fun226_ip = 0; ; ) switch(_fun226_ip) {
case 0:
                        r0 = undefined;
                        r4 = _closure1_slot0;
                        r5 = _closure1_slot1;
                        r3 = 27;
                        r3 = r5[r3];
                        r3 = r4.bind(r0)(r3);
                        r4 = r3.CreateRoomTrackPoint;
                        r3 = r4.eventPartyLiveScreenShareStartClick;
                        r3 = r3.bind(r4)();
                        r4 = _closure2_slot18;
                        r4 = r4.current;
                        if(r4) { _fun226_ip = 120; continue _fun226 }
case 57:
                        var _closure3_slot0 = r0;
                        r4 = _closure2_slot18;
                        r5 = true;
                        r4['current'] = r5;
                        r4 = _closure2_slot19;
                        r4 = r4.bind(r0)(r5);
                        r3 = _closure2_slot20;
                        r3 = r3.current;
                        _closure3_slot0 = r3;
                        r2 = _closure1_slot2;
                        r3 = r2.default;
                        r2 = function* () { // Environment: r1
                            r0 = function* () { // Original name: ?anon_0_, environment: r0
                                _fun228: for(var _fun228_ip = 0; ; ) switch(_fun228_ip) {
case 0:
                                    StartGenerator();
                                    r4 = undefined;
                                    r3 = undefined;
                                    r11 = undefined;
                                    r1 = undefined;
                                    ResumeGenerator(result_out_reg=0, return_bool_out_reg=2);
                                    if(r2) { _fun228_ip = 484; continue _fun228 }
case 18:
                                    r1 = undefined;
                                    r11 = undefined;
                                    r3 = undefined;
case 24: // try_start_0
                                    r5 = _closure2_slot15;
                                    r10 = null;
                                    r12 = undefined;
                                    if(!(r10 != r5)) { _fun228_ip = 52; continue _fun228 }
case 39:
                                    r6 = _closure2_slot15;
                                    r5 = r6.buildPlayExt;
                                    r12 = r5.bind(r6)();
case 52:
                                    r11 = r12;
                                    r9 = _closure1_slot0;
                                    r6 = _closure1_slot1;
                                    r8 = 30;
                                    r6 = r6[r8];
                                    r6 = r9.bind(r4)(r6);
                                    r6 = r6.showScreencastPicker;
                                    r9 = undefined;
                                    if(!(r10 != r12)) { _fun228_ip = 95; continue _fun228 }
case 90:
                                    r9 = r11.orientation;
case 95:
                                    r1 = r9;
                                    r7 = 0;
                                    if(!(r10 != r9)) { _fun228_ip = 107; continue _fun228 }
case 104:
                                    r7 = r1;
case 107:
                                    r1 = {};
                                    r1['orientation'] = r7;
                                    r1 = r6.bind(r4)(r1);
                                    SaveGenerator(address=122);
case 120:
                                    return r1;
case 122:
                                    ResumeGenerator(result_out_reg=1, return_bool_out_reg=6);
                                    if(r6) { _fun228_ip = 432; continue _fun228 }
case 131:
                                    r3 = r1;
                                    r7 = _closure3_slot0;
                                    r6 = _closure2_slot20;
                                    r6 = r6.current;
                                    if(!(r7 === r6)) { _fun228_ip = 286; continue _fun228 }
case 157:
                                    r6 = r3;
                                    if(r6) { _fun228_ip = 242; continue _fun228 }
case 163:
                                    r6 = _closure2_slot110;
                                    r6 = r6.bind(r4)();
                                    r6 = _closure2_slot16;
                                    r9 = false;
                                    r6['current'] = r9;
                                    r6 = _closure2_slot14;
                                    r6 = r6.bind(r4)(r9);
                                    r7 = _closure1_slot0;
                                    r6 = _closure1_slot1;
                                    r6 = r6[r8];
                                    r6 = r7.bind(r4)(r6);
                                    r6 = r6.stopScreencast;
                                    r6 = r6.bind(r4)();
case 218: // try_end0
                                    r7 = _closure2_slot18;
                                    r7['current'] = r9;
                                    r7 = _closure2_slot19;
                                    r7 = r7.bind(r4)(r9);
                                    r6 = undefined;
                                    return r6;
case 242: // try_start_1
                                    r7 = _closure2_slot16;
                                    r6 = true;
                                    r7['current'] = r6;
                                    r6 = _closure2_slot111;
                                    r6 = r6.bind(r4)();
case 262: // try_end1
                                    r6 = _closure2_slot18;
                                    r7 = false;
                                    r6['current'] = r7;
                                    r6 = _closure2_slot19;
                                    r6 = r6.bind(r4)(r7);
                                    return r4;
case 286: // try_start_2
                                    r7 = r3;
                                    r6 = r7;
                                    if(!r7) { _fun228_ip = 307; continue _fun228 }
case 295:
                                    r7 = _closure2_slot17;
                                    r7 = r7.current;
                                    r6 = !r7;
case 307:
                                    if(!r6) { _fun228_ip = 336; continue _fun228 }
case 310:
                                    r7 = _closure1_slot0;
                                    r6 = _closure1_slot1;
                                    r6 = r6[r8];
                                    r6 = r7.bind(r4)(r6);
                                    r6 = r6.stopScreencast;
                                    r6 = r6.bind(r4)();
case 336:
                                    r6 = _closure1_slot0;
                                    r7 = _closure1_slot1;
                                    r5 = 22;
                                    r5 = r7[r5];
                                    r5 = r6.bind(r4)(r5);
                                    r7 = r5.SRNApiLog;
                                    r6 = r7.warn;
                                    r9 = r3;
                                    r3 = global;
                                    r3 = r3.HermesInternal;
                                    r8 = r3.concat;
                                    r5 = '投屏「去开启」结果晚到已作废（opened=';
                                    r3 = '）';
                                    r5 = r8.bind(r5)(r9, r3);
                                    r3 = 'CreatePartyPage';
                                    r3 = r6.bind(r7)(r3, r5);
case 406: // try_end2
                                    r5 = _closure2_slot18;
                                    r6 = false;
                                    r5['current'] = r6;
                                    r5 = _closure2_slot19;
                                    r5 = r5.bind(r4)(r6);
                                    r3 = undefined;
                                    return r3;
case 432:
                                    r5 = _closure2_slot18;
                                    r3 = false;
                                    r5['current'] = r3;
                                    r2 = _closure2_slot19;
                                    r2 = r2.bind(r4)(r3);
                                    return r1;
case 456: // catch_target0 // catch_target1 // catch_target2
                                    CatchBlockStart(arg_register=1);
                                    r5 = _closure2_slot18;
                                    r3 = false;
                                    r5['current'] = r3;
                                    r2 = _closure2_slot19;
                                    r2 = r2.bind(r4)(r3);
                                    throw r1;
case 484:
                                    return r0;
                                }
                            };
                            return r0;
                        };
                        r2 = r3.bind(r0)(r2);
                        r2 = r2.bind(r0)();
                        _fun226_ip = 124; continue _fun226;
case 120:
                        _closure3_slot0 = r0;
case 124:
                        return r0;
                    }
                };
                r12['onPressOpen'] = r19;
                r18 = function() { // Original name: onClose, environment: r18
                    r2 = _closure2_slot20;
                    r3 = r2.current;
                    r0 = 1;
                    r0 = r3 + r0;
                    r2['current'] = r0;
                    r2 = _closure2_slot110;
                    r0 = undefined;
                    r2 = r2.bind(r0)();
                    r3 = _closure2_slot16;
                    r2 = false;
                    r3['current'] = r2;
                    r3 = _closure2_slot14;
                    r3 = r3.bind(r0)(r2);
                    r3 = _closure2_slot18;
                    r3['current'] = r2;
                    r1 = _closure2_slot19;
                    r1 = r1.bind(r0)(r2);
                    r2 = _closure1_slot0;
                    r3 = _closure1_slot1;
                    r1 = 30;
                    r1 = r3[r1];
                    r1 = r2.bind(r0)(r1);
                    r1 = r1.stopScreencast;
                    r1 = r1.bind(r0)();
                    return r0;
                };
                r12['onClose'] = r18;
                r12 = r17.bind(r3)(r16, r12);
                r15[3] = r12;
                r12 = {};
                r12['children'] = r15;
                r0 = r14.bind(r3)(r13, r12);
case 11253:
                r10[7] = r0;
                r0 = {};
                r0['style'] = r11;
                r0['children'] = r10;
                r8 = r9.bind(r3)(r8, r0);
                r0 = {};
                r9 = {'backgroundColor': 'rgba(0, 0, 0, 0.5)', 'zIndex': 10, 'position': 'absolute', 'top': 0, 'left': 0, 'right': 0, 'bottom': 0};
                r0['style'] = r9;
                r0['children'] = r8;
                r0 = r7.bind(r3)(r6, r0);
                r4[2] = r0;
                r0 = {};
                r0['style'] = r5;
                r0['children'] = r4;
                r0 = r2.bind(r3)(r1, r0);
                return r0;
            }
        };
        r1 = r3.bind(r0)(r1);
        r2['default'] = r1;
        return r0;
    }
};
r1 = 10000171;
r0 = [7, 324, 47, 21, 1476, 452, 1, 3, 457, 10000172, 10000188, 10000191, 10000192, 10000193, 10000197, 10000199, 10000200, 10000205, 10000209, 10000210, 630, 10000183, 976, 424, 10000187, 451, 10000184, 10000096, 10000173, 10000185, 10000186, 205, 10000216, 10000217, 10000218, 10000219, 10000220, 10000221, 10000222, 10000223, 10000224, 1145, 10000225, 434];
r0 = r4.bind(r3)(r2, r1, r0);
return r0;

