r0 = global;
r4 = r0.__d;
r3 = undefined;
r2 = function(a0, a1, a2, a3, a4, a5, a6) { // Environment: r0
    r5 = a1;
    r2 = a5;
    r6 = a6;
    var _closure1_slot0 = r5;
    var _closure1_slot1 = r6;
    r0 = function(a0) { // Original name: t, environment: r1
        _fun2: for(var _fun2_ip = 0; ; ) switch(_fun2_ip) {
case 0:
            r4 = a0;
            r2 = '网络错误';
            r3 = null;
            r5 = undefined;
            if(!(r3 != r4)) { _fun2_ip = 20; continue _fun2 }
case 15:
            r5 = r4.code;
case 20:
            r0 = 10001;
            if(!(r0 === r5)) { _fun2_ip = 156; continue _fun2 }
case 33:
            r0 = r4.data;
            r6 = undefined;
            if(!(r3 != r0)) { _fun2_ip = 49; continue _fun2 }
case 44:
            r6 = r0.resCode;
case 49:
            r5 = _closure1_slot4;
            if(!(r6 === r5)) { _fun2_ip = 84; continue _fun2 }
case 60:
            r6 = undefined;
            if(!(r3 != r0)) { _fun2_ip = 71; continue _fun2 }
case 66:
            r6 = r0.result;
case 71:
            r5 = true;
            if(!(r5 === r6)) { _fun2_ip = 84; continue _fun2 }
case 77:
            r5 = r0.data;
            return r5;
case 84:
            r5 = global;
            r6 = r5.Error;
            r5 = undefined;
            if(!(r3 != r0)) { _fun2_ip = 103; continue _fun2 }
case 98:
            r5 = r0.resMsg;
case 103:
            if(!(r3 == r5)) { _fun2_ip = 121; continue _fun2 }
case 107:
            r0 = undefined;
            if(!(r3 != r4)) { _fun2_ip = 118; continue _fun2 }
case 113:
            r0 = r4.msg;
case 118:
            r5 = r0;
case 121:
            r0 = r2;
            if(!(r3 != r5)) { _fun2_ip = 131; continue _fun2 }
case 128:
            r0 = r5;
case 131:
            r5 = r6.prototype;
            r5 = Object.create(r5, {constructor: {value: r6}});
            r9 = r5;
            r8 = r0;
            r0 = new r9[r6](r8, r7);
            r0 = r0 instanceof Object ? r0 : r5;
            throw r0;
case 156:
            r0 = global;
            r0 = r0.Error;
            r1 = undefined;
            if(!(r3 != r4)) { _fun2_ip = 175; continue _fun2 }
case 170:
            r1 = r4.msg;
case 175:
            if(!(r3 != r1)) { _fun2_ip = 182; continue _fun2 }
case 179:
            r2 = r1;
case 182:
            r1 = r0.prototype;
            r1 = Object.create(r1, {constructor: {value: r0}});
            r9 = r1;
            r8 = r2;
            r0 = new r9[r0](r8, r7);
            r0 = r0 instanceof Object ? r0 : r1;
            throw r0;
        }
    };
    var _closure1_slot7 = r0;
    r0 = global;
    r7 = r0.Object;
    r4 = r7.defineProperty;
    r3 = {};
    r0 = true;
    r3['value'] = r0;
    r0 = '__esModule';
    r0 = r4.bind(r7)(r2, r0, r3);
    r0 = undefined;
    r2['CREATE_ROOM_ACCOUNT_RESTRICTED_BLOCK'] = r0;
    r2['CREATE_ROOM_ACCOUNT_RESTRICTED_CODE'] = r0;
    r2['checkLowQuality'] = r0;
    r2['createChatRoom'] = r0;
    r2['getHotTopicRule'] = r0;
    r2['getRandomRecRoomName'] = r0;
    r2['getRoomTagInfo'] = r0;
    r2['getScreenLiveClarityConfig'] = r0;
    r2['getSoulCoinTotal'] = r0;
    r2['getVideoLiveConfig'] = r0;
    r2['hotTopicNameList'] = r0;
    r3 = function(a0) { // Environment: r1
        _fun3: for(var _fun3_ip = 0; ; ) switch(_fun3_ip) {
case 0:
            r0 = a0;
            r2 = null;
            r1 = undefined;
            if(!(r2 != r0)) { _fun3_ip = 16; continue _fun3 }
case 11:
            r1 = r0._createRoomCode;
case 16:
            r0 = _closure1_slot3;
            r0 = r1 === r0;
            return r0;
        }
    };
    r2['isCreateRoomAccountRestricted'] = r3;
    r2['parseClarityConfig'] = r0;
    r2['purchaseGroupChatBackground'] = r0;
    r2['roomBasicConfig'] = r0;
    r2['topicPolish'] = r0;
    r2['validateRoomTopic'] = r0;
    r3 = 0;
    r3 = r6[r3];
    r4 = r5.bind(r0)(r3);
    r3 = 1;
    r3 = r6[r3];
    r3 = r5.bind(r0)(r3);
    r3 = r4.bind(r0)(r3);
    var _closure1_slot2 = r3;
    r3 = 40002;
    r2['CREATE_ROOM_ACCOUNT_RESTRICTED_CODE'] = r3;
    var _closure1_slot3 = r3;
    r3 = '被限制创建派对';
    r2['CREATE_ROOM_ACCOUNT_RESTRICTED_BLOCK'] = r3;
    r3 = function() { // Environment: r1
        r1 = _closure1_slot2;
        r3 = r1.default;
        r2 = undefined;
        r1 = function* (a0, a1) { // Environment: r0
            r0 = function* (a0, a1) { // Original name: ?anon_0_, environment: r0
                _fun6: for(var _fun6_ip = 0; ; ) switch(_fun6_ip) {
case 0:
                    StartGenerator();
                    r1 = a1;
                    r2 = '0';
                    r5 = '网络错误';
                    ResumeGenerator(result_out_reg=0, return_bool_out_reg=3);
                    if(r3) { _fun6_ip = 200; continue _fun6 }
case 21:
                    r8 = _closure1_slot0;
                    r9 = _closure1_slot1;
                    r3 = 2;
                    r4 = r9[r3];
                    r6 = undefined;
                    r4 = r8.bind(r6)(r4);
                    r7 = r4.SRNApiNetwork;
                    r4 = r7.get;
                    r3 = r9[r3];
                    r3 = r8.bind(r6)(r3);
                    r3 = r3.HttpBaseDomain;
                    r3 = r3.clubparty;
                    r6 = null;
                    if(!(r6 != r1)) { _fun6_ip = 84; continue _fun6 }
case 81:
                    r2 = r1;
case 84:
                    r1 = {};
                    r8 = a0;
                    r1['classifyCode'] = r8;
                    r1['playType'] = r2;
                    r2 = {};
                    r2['query'] = r1;
                    r1 = 'live/room-name/randomRec';
                    r1 = r4.bind(r7)(r1, r3, r2);
                    SaveGenerator(address=118);
case 116:
                    return r1;
case 118:
                    ResumeGenerator(result_out_reg=1, return_bool_out_reg=2);
                    if(r2) { _fun6_ip = 197; continue _fun6 }
case 124:
                    r2 = r1.data;
                    r4 = r2.code;
                    r3 = 10001;
                    if(!(r3 !== r4)) { _fun6_ip = 189; continue _fun6 }
case 144:
                    r3 = global;
                    r3 = r3.Error;
                    r4 = r2.msg;
                    if(!(r6 != r4)) { _fun6_ip = 164; continue _fun6 }
case 161:
                    r5 = r4;
case 164:
                    r4 = r3.prototype;
                    r4 = Object.create(r4, {constructor: {value: r3}});
                    r13 = r4;
                    r12 = r5;
                    r3 = new r13[r3](r12, r11);
                    r3 = r3 instanceof Object ? r3 : r4;
                    throw r3;
case 189:
                    r2 = r2.data;
                    return r2;
case 197:
                    return r1;
case 200:
                    return r0;
                }
            };
            return r0;
        };
        r1 = r3.bind(r2)(r1);
        var _closure2_slot0 = r1;
        r0 = function(a0, a1) { // Environment: r0
            r0 = undefined;
            r3 = _closure2_slot0;
            r2 = r3.apply;
            r0 = arguments;
            r1 = r0;
            r0 = this;
            r0 = r2.bind(r3)(r0, r1);
            return r0;
        };
        return r0;
    };
    r3 = r3.bind(r0)();
    r2['getRandomRecRoomName'] = r3;
    r3 = function() { // Environment: r1
        r1 = _closure1_slot2;
        r3 = r1.default;
        r2 = undefined;
        r1 = function* () { // Environment: r0
            r0 = function* () { // Original name: ?anon_0_, environment: r0
                _fun10: for(var _fun10_ip = 0; ; ) switch(_fun10_ip) {
case 0:
                    StartGenerator();
                    r5 = undefined;
                    r8 = '网络错误';
                    ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                    if(r1) { _fun10_ip = 230; continue _fun10 }
case 16:
                    r2 = _closure1_slot0;
                    r7 = _closure1_slot1;
                    r1 = 2;
                    r4 = r7[r1];
                    r4 = r2.bind(r5)(r4);
                    r6 = r4.SRNApiNetwork;
                    r4 = r6.get;
                    r1 = r7[r1];
                    r1 = r2.bind(r5)(r1);
                    r1 = r1.HttpBaseDomain;
                    r2 = r1.clubparty;
                    r1 = 'live/config/roomBasicConfig';
                    r1 = r4.bind(r6)(r1, r2);
                    SaveGenerator(address=82);
case 80:
                    return r1;
case 82:
                    ResumeGenerator(result_out_reg=1, return_bool_out_reg=2);
                    if(r2) { _fun10_ip = 227; continue _fun10 }
case 91:
                    r2 = r1.data;
                    r4 = null;
                    r7 = undefined;
                    if(!(r4 != r2)) { _fun10_ip = 109; continue _fun10 }
case 104:
                    r7 = r2.code;
case 109:
                    r6 = 10001;
                    if(!(r6 !== r7)) { _fun10_ip = 170; continue _fun10 }
case 119:
                    r6 = global;
                    r6 = r6.Error;
                    r7 = undefined;
                    if(!(r4 != r2)) { _fun10_ip = 138; continue _fun10 }
case 133:
                    r7 = r2.msg;
case 138:
                    if(!(r4 != r7)) { _fun10_ip = 145; continue _fun10 }
case 142:
                    r8 = r7;
case 145:
                    r7 = r6.prototype;
                    r7 = Object.create(r7, {constructor: {value: r6}});
                    r12 = r7;
                    r11 = r8;
                    r6 = new r12[r6](r11, r10);
                    r6 = r6 instanceof Object ? r6 : r7;
                    throw r6;
case 170:
                    r2 = r2.data;
                    if(!(r4 == r2)) { _fun10_ip = 224; continue _fun10 }
case 179:
                    r4 = _closure1_slot0;
                    r6 = _closure1_slot1;
                    r3 = 3;
                    r3 = r6[r3];
                    r3 = r4.bind(r5)(r3);
                    r3 = r3.RoomConfigListModel;
                    r4 = r3.prototype;
                    r4 = Object.create(r4, {constructor: {value: r3}});
                    r12 = r4;
                    r3 = new r12[r3](r11);
                    r2 = r3 instanceof Object ? r3 : r4;
case 224:
                    return r2;
case 227:
                    return r1;
case 230:
                    return r0;
                }
            };
            return r0;
        };
        r1 = r3.bind(r2)(r1);
        var _closure2_slot0 = r1;
        r0 = function() { // Environment: r0
            r0 = undefined;
            r3 = _closure2_slot0;
            r2 = r3.apply;
            r0 = arguments;
            r1 = r0;
            r0 = this;
            r0 = r2.bind(r3)(r0, r1);
            return r0;
        };
        return r0;
    };
    r3 = r3.bind(r0)();
    r2['roomBasicConfig'] = r3;
    r3 = function() { // Environment: r1
        r1 = _closure1_slot2;
        r3 = r1.default;
        r2 = undefined;
        r1 = function* (a0) { // Environment: r0
            r0 = function* (a0) { // Original name: ?anon_0_, environment: r0
                _fun14: for(var _fun14_ip = 0; ; ) switch(_fun14_ip) {
case 0:
                    StartGenerator();
                    r5 = '网络错误';
                    ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                    if(r1) { _fun14_ip = 182; continue _fun14 }
case 14:
                    r3 = _closure1_slot0;
                    r7 = _closure1_slot1;
                    r1 = 2;
                    r4 = r7[r1];
                    r2 = undefined;
                    r4 = r3.bind(r2)(r4);
                    r6 = r4.SRNApiNetwork;
                    r4 = r6.get;
                    r1 = r7[r1];
                    r1 = r3.bind(r2)(r1);
                    r1 = r1.HttpBaseDomain;
                    r3 = r1.clubparty;
                    r1 = {};
                    r2 = a0;
                    r1['topic'] = r2;
                    r2 = {};
                    r2['query'] = r1;
                    r1 = 'live/room-name/checkLowQuality';
                    r1 = r4.bind(r6)(r1, r3, r2);
                    SaveGenerator(address=98);
case 96:
                    return r1;
case 98:
                    ResumeGenerator(result_out_reg=1, return_bool_out_reg=2);
                    if(r2) { _fun14_ip = 179; continue _fun14 }
case 104:
                    r2 = r1.data;
                    r4 = r2.code;
                    r3 = 10001;
                    if(!(r3 !== r4)) { _fun14_ip = 171; continue _fun14 }
case 124:
                    r3 = global;
                    r3 = r3.Error;
                    r4 = r2.msg;
                    r6 = null;
                    if(!(r6 != r4)) { _fun14_ip = 146; continue _fun14 }
case 143:
                    r5 = r4;
case 146:
                    r4 = r3.prototype;
                    r4 = Object.create(r4, {constructor: {value: r3}});
                    r11 = r4;
                    r10 = r5;
                    r3 = new r11[r3](r10, r9);
                    r3 = r3 instanceof Object ? r3 : r4;
                    throw r3;
case 171:
                    r2 = r2.data;
                    return r2;
case 179:
                    return r1;
case 182:
                    return r0;
                }
            };
            return r0;
        };
        r1 = r3.bind(r2)(r1);
        var _closure2_slot0 = r1;
        r0 = function(a0) { // Environment: r0
            r0 = undefined;
            r3 = _closure2_slot0;
            r2 = r3.apply;
            r0 = arguments;
            r1 = r0;
            r0 = this;
            r0 = r2.bind(r3)(r0, r1);
            return r0;
        };
        return r0;
    };
    r3 = r3.bind(r0)();
    r2['checkLowQuality'] = r3;
    r3 = function() { // Environment: r1
        r1 = _closure1_slot2;
        r3 = r1.default;
        r2 = undefined;
        r1 = function* (a0) { // Environment: r0
            r0 = function* (a0) { // Original name: ?anon_0_, environment: r0
                _fun18: for(var _fun18_ip = 0; ; ) switch(_fun18_ip) {
case 0:
                    StartGenerator();
                    r5 = '网络错误';
                    ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                    if(r1) { _fun18_ip = 196; continue _fun18 }
case 14:
                    r3 = _closure1_slot0;
                    r7 = _closure1_slot1;
                    r1 = 2;
                    r4 = r7[r1];
                    r2 = undefined;
                    r4 = r3.bind(r2)(r4);
                    r6 = r4.SRNApiNetwork;
                    r4 = r6.post;
                    r1 = r7[r1];
                    r1 = r3.bind(r2)(r1);
                    r1 = r1.HttpBaseDomain;
                    r3 = r1.post;
                    r7 = {};
                    r1 = 'application/x-www-form-urlencoded';
                    r7['Content-Type'] = r1;
                    r1 = {};
                    r2 = a0;
                    r1['topic'] = r2;
                    r2 = {};
                    r2['header'] = r7;
                    r2['body'] = r1;
                    r1 = 'chatroom/validate/room-name';
                    r1 = r4.bind(r6)(r1, r3, r2);
                    SaveGenerator(address=112);
case 110:
                    return r1;
case 112:
                    ResumeGenerator(result_out_reg=1, return_bool_out_reg=2);
                    if(r2) { _fun18_ip = 193; continue _fun18 }
case 118:
                    r2 = r1.data;
                    r4 = r2.code;
                    r3 = 10001;
                    if(!(r3 !== r4)) { _fun18_ip = 185; continue _fun18 }
case 138:
                    r3 = global;
                    r3 = r3.Error;
                    r4 = r2.msg;
                    r6 = null;
                    if(!(r6 != r4)) { _fun18_ip = 160; continue _fun18 }
case 157:
                    r5 = r4;
case 160:
                    r4 = r3.prototype;
                    r4 = Object.create(r4, {constructor: {value: r3}});
                    r11 = r4;
                    r10 = r5;
                    r3 = new r11[r3](r10, r9);
                    r3 = r3 instanceof Object ? r3 : r4;
                    throw r3;
case 185:
                    r2 = r2.data;
                    return r2;
case 193:
                    return r1;
case 196:
                    return r0;
                }
            };
            return r0;
        };
        r1 = r3.bind(r2)(r1);
        var _closure2_slot0 = r1;
        r0 = function(a0) { // Environment: r0
            r0 = undefined;
            r3 = _closure2_slot0;
            r2 = r3.apply;
            r0 = arguments;
            r1 = r0;
            r0 = this;
            r0 = r2.bind(r3)(r0, r1);
            return r0;
        };
        return r0;
    };
    r3 = r3.bind(r0)();
    r2['validateRoomTopic'] = r3;
    r3 = function() { // Environment: r1
        r1 = _closure1_slot2;
        r3 = r1.default;
        r2 = undefined;
        r1 = function* (a0, a1) { // Environment: r0
            r0 = function* (a0, a1) { // Original name: ?anon_0_, environment: r0
                _fun22: for(var _fun22_ip = 0; ; ) switch(_fun22_ip) {
case 0:
                    StartGenerator();
                    r6 = a0;
                    r7 = a1;
                    r5 = '网络错误';
                    r9 = undefined;
                    r4 = undefined;
                    r2 = undefined;
                    r1 = undefined;
                    ResumeGenerator(result_out_reg=0, return_bool_out_reg=3);
                    if(r3) { _fun22_ip = 236; continue _fun22 }
case 28:
                    r1 = undefined;
                    r2 = undefined;
                    r4 = undefined;
                    if(r7) { _fun22_ip = 42; continue _fun22 }
case 37:
                    r3 = null;
                    return r3;
case 42: // try_start_0
                    r3 = {};
                    r3['topic'] = r7;
                    r1 = r3;
                    if(!r6) { _fun22_ip = 63; continue _fun22 }
case 54:
                    r3 = r1;
                    r3['roomId'] = r6;
case 63:
                    r6 = _closure1_slot0;
                    r10 = _closure1_slot1;
                    r3 = 2;
                    r7 = r10[r3];
                    r7 = r6.bind(r9)(r7);
                    r8 = r7.SRNApiNetwork;
                    r7 = r8.get;
                    r3 = r10[r3];
                    r3 = r6.bind(r9)(r3);
                    r3 = r3.HttpBaseDomain;
                    r6 = r3.clubparty;
                    r3 = {};
                    r3['query'] = r1;
                    r1 = 'live/topic/polish';
                    r1 = r7.bind(r8)(r1, r6, r3);
                    SaveGenerator(address=136);
case 134:
                    return r1;
case 136:
                    ResumeGenerator(result_out_reg=1, return_bool_out_reg=3);
                    if(r3) { _fun22_ip = 226; continue _fun22 }
case 142:
                    r3 = r1.data;
                    r2 = r3;
                    r6 = r3.code;
                    r3 = 10001;
                    if(!(r3 !== r6)) { _fun22_ip = 218; continue _fun22 }
case 165:
                    r3 = global;
                    r3 = r3.Error;
                    r6 = r2;
                    r7 = r6.msg;
                    r4 = r7;
                    r6 = null;
                    if(!(r6 != r7)) { _fun22_ip = 193; continue _fun22 }
case 190:
                    r5 = r4;
case 193:
                    r4 = r3.prototype;
                    r4 = Object.create(r4, {constructor: {value: r3}});
                    r14 = r4;
                    r13 = r5;
                    r3 = new r14[r3](r13, r12);
                    r3 = r3 instanceof Object ? r3 : r4;
                    throw r3;
case 218:
                    r2 = r2.data;
case 223: // try_end0
                    return r2;
case 226:
                    return r1;
case 229: // catch_target0
                    CatchBlockStart(arg_register=1);
                    r1 = null;
                    return r1;
case 236:
                    return r0;
                }
            };
            return r0;
        };
        r1 = r3.bind(r2)(r1);
        var _closure2_slot0 = r1;
        r0 = function(a0, a1) { // Environment: r0
            r0 = undefined;
            r3 = _closure2_slot0;
            r2 = r3.apply;
            r0 = arguments;
            r1 = r0;
            r0 = this;
            r0 = r2.bind(r3)(r0, r1);
            return r0;
        };
        return r0;
    };
    r3 = r3.bind(r0)();
    r2['topicPolish'] = r3;
    r3 = function() { // Environment: r1
        r1 = _closure1_slot2;
        r3 = r1.default;
        r2 = undefined;
        r1 = function* (a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12) { // Environment: r0
            r0 = function* (a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12) { // Original name: ?anon_0_, environment: r0
                _fun26: for(var _fun26_ip = 0; ; ) switch(_fun26_ip) {
case 0:
                    StartGenerator();
                    r16 = a0;
                    r15 = a4;
                    r14 = a6;
                    r13 = a7;
                    r11 = a9;
                    r18 = a10;
                    r5 = a11;
                    r12 = a12;
                    r7 = '';
                    r4 = '网络错误';
                    r9 = undefined;
                    r1 = undefined;
                    r8 = undefined;
                    r6 = undefined;
                    r3 = undefined;
                    r2 = undefined;
                    ResumeGenerator(result_out_reg=0, return_bool_out_reg=10);
                    if(r10) { _fun26_ip = 646; continue _fun26 }
case 54:
                    r2 = undefined;
                    r3 = undefined;
                    r6 = undefined;
                    r8 = undefined;
case 62: // try_start_0
                    r10 = null;
                    r17 = r7;
                    if(!(r10 != r16)) { _fun26_ip = 74; continue _fun26 }
case 71:
                    r17 = r16;
case 74:
                    r16 = r7;
                    if(!(r10 != r15)) { _fun26_ip = 84; continue _fun26 }
case 81:
                    r16 = r15;
case 84:
                    r15 = r7;
                    if(!(r10 != r14)) { _fun26_ip = 94; continue _fun26 }
case 91:
                    r15 = r14;
case 94:
                    r14 = r7;
                    if(!(r10 != r13)) { _fun26_ip = 104; continue _fun26 }
case 101:
                    r14 = r13;
case 104:
                    r13 = r7;
                    if(!(r10 != r11)) { _fun26_ip = 114; continue _fun26 }
case 111:
                    r13 = r11;
case 114:
                    r11 = r7;
                    if(!(r10 != r18)) { _fun26_ip = 124; continue _fun26 }
case 121:
                    r11 = r18;
case 124:
                    if(!(r10 != r5)) { _fun26_ip = 131; continue _fun26 }
case 128:
                    r7 = r5;
case 131:
                    r5 = {};
                    r5['roomTopic'] = r17;
                    r17 = a1;
                    r5['classifyCode'] = r17;
                    r17 = a2;
                    r5['fansPush'] = r17;
                    r17 = a3;
                    r5['hotTopicId'] = r17;
                    r5['backgroundId'] = r16;
                    r16 = a5;
                    r5['playType'] = r16;
                    r5['fmCode'] = r15;
                    r5['recTopicId'] = r14;
                    r14 = a8;
                    r5['privateStatus'] = r14;
                    r5['ext'] = r13;
                    r5['functionCodes'] = r11;
                    r5['bizExt'] = r7;
                    r2 = r5;
                    if(!r12) { _fun26_ip = 229; continue _fun26 }
case 202:
                    r7 = r2;
                    r5 = global;
                    r11 = r5.JSON;
                    r5 = r11.stringify;
                    r5 = r5.bind(r11)(r12);
                    r7['playExt'] = r5;
case 229:
                    r12 = _closure1_slot0;
                    r7 = _closure1_slot1;
                    r11 = 2;
                    r13 = r7[r11];
                    r13 = r12.bind(r9)(r13);
                    r14 = r13.SRNApiNetwork;
                    r13 = r14.post;
                    r7 = r7[r11];
                    r7 = r12.bind(r9)(r7);
                    r7 = r7.HttpBaseDomain;
                    r12 = r7.clubparty;
                    r15 = {};
                    r7 = 'application/x-www-form-urlencoded';
                    r15['Content-Type'] = r7;
                    r7 = {};
                    r7['header'] = r15;
                    r7['body'] = r2;
                    r2 = 'live/create';
                    r2 = r13.bind(r14)(r2, r12, r7);
                    SaveGenerator(address=316);
case 314:
                    return r2;
case 316:
                    ResumeGenerator(result_out_reg=2, return_bool_out_reg=7);
                    if(r7) { _fun26_ip = 590; continue _fun26 }
case 325:
                    r7 = r2.data;
                    r3 = r7;
                    r12 = r7.code;
                    r7 = 10001;
                    if(!(r7 !== r12)) { _fun26_ip = 582; continue _fun26 }
case 351:
                    r7 = r3;
                    r12 = r7.code;
                    r7 = _closure1_slot3;
                    if(!(r12 !== r7)) { _fun26_ip = 421; continue _fun26 }
case 367:
                    r7 = global;
                    r12 = r7.Error;
                    r7 = r3;
                    r13 = r7.msg;
                    r8 = r13;
                    r7 = r4;
                    if(!(r10 != r13)) { _fun26_ip = 396; continue _fun26 }
case 393:
                    r7 = r8;
case 396:
                    r8 = r12.prototype;
                    r8 = Object.create(r8, {constructor: {value: r12}});
                    r23 = r8;
                    r22 = r7;
                    r7 = new r23[r12](r22, r21);
                    r7 = r7 instanceof Object ? r7 : r8;
                    throw r7;
case 421:
                    r8 = _closure1_slot0;
                    r7 = _closure1_slot1;
                    r7 = r7[r11];
                    r7 = r8.bind(r9)(r7);
                    r9 = r7.SRNApiAlert;
                    r8 = r9.show;
                    r12 = {};
                    r7 = 'https://china-img.soulapp.cn/admin/2025-09-20/159f545c-2267-4f96-bd71-d7117e065d42.png';
                    r12['url'] = r7;
                    r7 = new Array(1);
                    r11 = {'text': '我知道了', 'style': 'primary', 'clickId': 'ok'};
                    r7[0] = r11;
                    r11 = {};
                    r13 = 'horizontal';
                    r11['orientation'] = r13;
                    r11['elements'] = r7;
                    r7 = {};
                    r7['image'] = r12;
                    r12 = {'style': 'normal', 'text': '亲爱的souler,您的账号存在不友善行为，为维护Soul星氛围，您暂时无法使用此功能感谢理解（详情可见官方通知）'};
                    r7['content'] = r12;
                    r7['button'] = r11;
                    r7 = r8.bind(r9)(r7);
                    r7 = global;
                    r9 = r7.Object;
                    r8 = r9.assign;
                    r7 = r3;
                    r7 = r7.data;
                    r6 = r7;
                    if(!(r10 == r7)) { _fun26_ip = 551; continue _fun26 }
case 547:
                    r7 = {};
                    _fun26_ip = 554; continue _fun26;
case 551:
                    r7 = r6;
case 554:
                    r5 = _closure1_slot3;
                    r6 = {};
                    r10 = false;
                    r6['createResult'] = r10;
                    r6['_createRoomCode'] = r5;
                    r5 = {};
                    r5 = r8.bind(r9)(r5, r7, r6);
case 579: // try_end0
                    return r5;
case 582: // try_start_1
                    r3 = r3.data;
case 587: // try_end1
                    return r3;
case 590:
                    return r2;
case 593: // catch_target0 // catch_target1
                    CatchBlockStart(arg_register=5);
                    r1 = r5;
                    r2 = global;
                    r3 = r2.Error;
                    r3 = r5 instanceof r3;
                    if(r3) { _fun26_ip = 644; continue _fun26 }
case 613:
                    r2 = r2.Error;
                    r3 = r2.prototype;
                    r3 = Object.create(r3, {constructor: {value: r2}});
                    r23 = r3;
                    r22 = r4;
                    r2 = new r23[r2](r22, r21);
                    r2 = r2 instanceof Object ? r2 : r3;
                    throw r2;
case 644:
                    throw r1;
case 646:
                    return r0;
                }
            };
            return r0;
        };
        r1 = r3.bind(r2)(r1);
        var _closure2_slot0 = r1;
        r0 = function(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12) { // Environment: r0
            r0 = undefined;
            r3 = _closure2_slot0;
            r2 = r3.apply;
            r0 = arguments;
            r1 = r0;
            r0 = this;
            r0 = r2.bind(r3)(r0, r1);
            return r0;
        };
        return r0;
    };
    r3 = r3.bind(r0)();
    r2['createChatRoom'] = r3;
    r3 = 'SUCCESS';
    var _closure1_slot4 = r3;
    r3 = function(a0) { // Original name: s, environment: r1
        _fun28: for(var _fun28_ip = 0; ; ) switch(_fun28_ip) {
case 0:
            r4 = a0;
            r3 = undefined;
            r5 = _closure1_slot0;
            r6 = _closure1_slot1;
            r0 = 4;
            r0 = r6[r0];
            r0 = r5.bind(r3)(r0);
            r0 = r0.VideoLiveConfigModel;
            r5 = r0.prototype;
            r5 = Object.create(r5, {constructor: {value: r0}});
            r12 = r5;
            r0 = new r12[r0](r11);
            r0 = r0 instanceof Object ? r0 : r5;
            r7 = null;
            r8 = undefined;
            if(!(r7 != r4)) { _fun28_ip = 79; continue _fun28 }
case 63:
            r5 = r4.effects;
            r8 = undefined;
            if(!(r7 != r5)) { _fun28_ip = 79; continue _fun28 }
case 74:
            r8 = r5.items;
case 79:
            if(!(r7 == r8)) { _fun28_ip = 87; continue _fun28 }
case 83:
            r8 = new Array(0);
case 87:
            r6 = r8.map;
            r5 = function(a0) { // Environment: r2
                _fun29: for(var _fun29_ip = 0; ; ) switch(_fun29_ip) {
case 0:
                    r1 = a0;
                    r2 = '';
                    r0 = null;
                    r4 = undefined;
                    if(!(r0 != r1)) { _fun29_ip = 20; continue _fun29 }
case 15:
                    r4 = r1.tabName;
case 20:
                    if(!(r0 != r4)) { _fun29_ip = 27; continue _fun29 }
case 24:
                    r2 = r4;
case 27:
                    r3 = undefined;
                    if(!(r0 != r1)) { _fun29_ip = 38; continue _fun29 }
case 33:
                    r3 = r1.items;
case 38:
                    if(!(r0 == r3)) { _fun29_ip = 46; continue _fun29 }
case 42:
                    r3 = new Array(0);
case 46:
                    r1 = r3.map;
                    r0 = function(a0) { // Environment: r0
                        _fun30: for(var _fun30_ip = 0; ; ) switch(_fun30_ip) {
case 0:
                            r4 = a0;
                            r1 = undefined;
                            r2 = _closure1_slot0;
                            r3 = _closure1_slot1;
                            r0 = 4;
                            r0 = r3[r0];
                            r0 = r2.bind(r1)(r0);
                            r0 = r0.EffectItemModel;
                            r2 = r0.prototype;
                            r2 = Object.create(r2, {constructor: {value: r0}});
                            r7 = r2;
                            r0 = new r7[r0](r6);
                            r0 = r0 instanceof Object ? r0 : r2;
                            r3 = null;
                            r2 = undefined;
                            if(!(r3 != r4)) { _fun30_ip = 66; continue _fun30 }
case 61:
                            r2 = r4.id;
case 66:
                            r0['effectId'] = r2;
                            r2 = undefined;
                            if(!(r3 != r4)) { _fun30_ip = 83; continue _fun30 }
case 78:
                            r2 = r4.name;
case 83:
                            r0['name'] = r2;
                            r2 = undefined;
                            if(!(r3 != r4)) { _fun30_ip = 100; continue _fun30 }
case 95:
                            r2 = r4.img;
case 100:
                            r0['icon'] = r2;
                            r2 = undefined;
                            if(!(r3 != r4)) { _fun30_ip = 117; continue _fun30 }
case 112:
                            r2 = r4.resourceUrl;
case 117:
                            r0['resourceUrl'] = r2;
                            r2 = undefined;
                            if(!(r3 != r4)) { _fun30_ip = 134; continue _fun30 }
case 129:
                            r2 = r4.md5;
case 134:
                            r1 = undefined;
                            if(!(r3 != r2)) { _fun30_ip = 143; continue _fun30 }
case 140:
                            r1 = r2;
case 143:
                            r0['md5'] = r1;
                            return r0;
                        }
                    };
                    r1 = r1.bind(r3)(r0);
                    r0 = {};
                    r0['tabName'] = r2;
                    r0['items'] = r1;
                    return r0;
                }
            };
            r5 = r6.bind(r8)(r5);
            r0['effectTabs'] = r5;
            r5 = undefined;
            if(!(r7 != r4)) { _fun28_ip = 130; continue _fun28 }
case 114:
            r6 = r4.effects;
            r5 = undefined;
            if(!(r7 != r6)) { _fun28_ip = 130; continue _fun28 }
case 125:
            r5 = r6.selected;
case 130:
            r6 = 'string';
            r8 = typeof r5;
            r5 = undefined;
            if(!(r6 === r8)) { _fun28_ip = 153; continue _fun28 }
case 143:
            r8 = r4.effects;
            r5 = r8.selected;
case 153:
            r0['selectedEffectId'] = r5;
            r8 = undefined;
            if(!(r7 != r4)) { _fun28_ip = 181; continue _fun28 }
case 165:
            r5 = r4.backgrounds;
            r8 = undefined;
            if(!(r7 != r5)) { _fun28_ip = 181; continue _fun28 }
case 176:
            r8 = r5.items;
case 181:
            if(!(r7 == r8)) { _fun28_ip = 189; continue _fun28 }
case 185:
            r8 = new Array(0);
case 189:
            r5 = r8.map;
            r2 = function(a0) { // Environment: r2
                _fun31: for(var _fun31_ip = 0; ; ) switch(_fun31_ip) {
case 0:
                    r1 = a0;
                    r2 = '';
                    r0 = null;
                    r4 = undefined;
                    if(!(r0 != r1)) { _fun31_ip = 20; continue _fun31 }
case 15:
                    r4 = r1.tabName;
case 20:
                    if(!(r0 != r4)) { _fun31_ip = 27; continue _fun31 }
case 24:
                    r2 = r4;
case 27:
                    r3 = undefined;
                    if(!(r0 != r1)) { _fun31_ip = 38; continue _fun31 }
case 33:
                    r3 = r1.items;
case 38:
                    if(!(r0 == r3)) { _fun31_ip = 46; continue _fun31 }
case 42:
                    r3 = new Array(0);
case 46:
                    r1 = r3.map;
                    r0 = function(a0) { // Environment: r0
                        _fun32: for(var _fun32_ip = 0; ; ) switch(_fun32_ip) {
case 0:
                            r4 = a0;
                            r1 = undefined;
                            r2 = _closure1_slot0;
                            r3 = _closure1_slot1;
                            r0 = 4;
                            r0 = r3[r0];
                            r0 = r2.bind(r1)(r0);
                            r0 = r0.VirtualBackgroundModel;
                            r2 = r0.prototype;
                            r2 = Object.create(r2, {constructor: {value: r0}});
                            r7 = r2;
                            r0 = new r7[r0](r6);
                            r0 = r0 instanceof Object ? r0 : r2;
                            r3 = null;
                            r2 = undefined;
                            if(!(r3 != r4)) { _fun32_ip = 66; continue _fun32 }
case 61:
                            r2 = r4.id;
case 66:
                            r0['bgId'] = r2;
                            r2 = undefined;
                            if(!(r3 != r4)) { _fun32_ip = 83; continue _fun32 }
case 78:
                            r2 = r4.name;
case 83:
                            r0['name'] = r2;
                            r2 = undefined;
                            if(!(r3 != r4)) { _fun32_ip = 100; continue _fun32 }
case 95:
                            r2 = r4.img;
case 100:
                            r0['icon'] = r2;
                            r2 = undefined;
                            if(!(r3 != r4)) { _fun32_ip = 117; continue _fun32 }
case 112:
                            r2 = r4.img;
case 117:
                            r0['imageUrl'] = r2;
                            r2 = undefined;
                            if(!(r3 != r4)) { _fun32_ip = 134; continue _fun32 }
case 129:
                            r2 = r4.resourceUrl;
case 134:
                            r0['resourceUrl'] = r2;
                            r2 = undefined;
                            if(!(r3 != r4)) { _fun32_ip = 151; continue _fun32 }
case 146:
                            r2 = r4.md5;
case 151:
                            r1 = undefined;
                            if(!(r3 != r2)) { _fun32_ip = 160; continue _fun32 }
case 157:
                            r1 = r2;
case 160:
                            r0['md5'] = r1;
                            return r0;
                        }
                    };
                    r1 = r1.bind(r3)(r0);
                    r0 = {};
                    r0['tabName'] = r2;
                    r0['items'] = r1;
                    return r0;
                }
            };
            r2 = r5.bind(r8)(r2);
            r0['backgroundTabs'] = r2;
            r2 = undefined;
            if(!(r7 != r4)) { _fun28_ip = 232; continue _fun28 }
case 216:
            r5 = r4.backgrounds;
            r2 = undefined;
            if(!(r7 != r5)) { _fun28_ip = 232; continue _fun28 }
case 227:
            r2 = r5.selected;
case 232:
            r5 = typeof r2;
            r2 = undefined;
            if(!(r6 === r5)) { _fun28_ip = 251; continue _fun28 }
case 241:
            r5 = r4.backgrounds;
            r2 = r5.selected;
case 251:
            r0['selectedBgId'] = r2;
            r2 = _closure1_slot6;
            r1 = 'video-live/config';
            r1 = r2.bind(r3)(r4, r1);
            r0['clarity'] = r1;
            return r0;
        }
    };
    var _closure1_slot5 = r3;
    r3 = function() { // Environment: r1
        r1 = _closure1_slot2;
        r3 = r1.default;
        r2 = undefined;
        r1 = function* () { // Environment: r0
            r0 = function* () { // Original name: ?anon_0_, environment: r0
                _fun35: for(var _fun35_ip = 0; ; ) switch(_fun35_ip) {
case 0:
                    StartGenerator();
                    ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                    if(r1) { _fun35_ip = 127; continue _fun35 }
case 7:
                    r3 = _closure1_slot0;
                    r5 = _closure1_slot1;
                    r1 = 2;
                    r6 = r5[r1];
                    r4 = undefined;
                    r6 = r3.bind(r4)(r6);
                    r7 = r6.SRNApiNetwork;
                    r6 = r7.get;
                    r1 = r5[r1];
                    r1 = r3.bind(r4)(r1);
                    r1 = r1.HttpBaseDomain;
                    r5 = r1.play;
                    r3 = {};
                    r1 = {'scene': 'CREATE_ROOM', 'needItems': '3,4,5'};
                    r3['query'] = r1;
                    r1 = 'video-live/config';
                    r1 = r6.bind(r7)(r1, r5, r3);
                    SaveGenerator(address=92);
case 90:
                    return r1;
case 92:
                    ResumeGenerator(result_out_reg=1, return_bool_out_reg=3);
                    if(r3) { _fun35_ip = 124; continue _fun35 }
case 98:
                    r5 = r1.data;
                    r3 = _closure1_slot5;
                    r2 = _closure1_slot7;
                    r2 = r2.bind(r4)(r5);
                    r2 = r3.bind(r4)(r2);
                    return r2;
case 124:
                    return r1;
case 127:
                    return r0;
                }
            };
            return r0;
        };
        r1 = r3.bind(r2)(r1);
        var _closure2_slot0 = r1;
        r0 = function() { // Environment: r0
            r0 = undefined;
            r3 = _closure2_slot0;
            r2 = r3.apply;
            r0 = arguments;
            r1 = r0;
            r0 = this;
            r0 = r2.bind(r3)(r0, r1);
            return r0;
        };
        return r0;
    };
    r3 = r3.bind(r0)();
    r2['getVideoLiveConfig'] = r3;
    r3 = function(a0, a1) { // Environment: r1
        _fun37: for(var _fun37_ip = 0; ; ) switch(_fun37_ip) {
case 0:
            r4 = a0;
            r11 = a1;
            r2 = undefined;
            r5 = null;
            r6 = '空';
            r7 = undefined;
            if(!(r5 != r4)) { _fun37_ip = 38; continue _fun37 }
case 22:
            r0 = r4.qualities;
            r7 = undefined;
            if(!(r5 != r0)) { _fun37_ip = 38; continue _fun37 }
case 33:
            r7 = r0.items;
case 38:
            r3 = global;
            r8 = r3.Array;
            r0 = r8.isArray;
            r0 = r0.bind(r8)(r7);
            r9 = r7;
            if(r0) { _fun37_ip = 149; continue _fun37 }
case 62:
            r7 = _closure1_slot0;
            r8 = _closure1_slot1;
            r0 = 2;
            r0 = r8[r0];
            r0 = r7.bind(r2)(r0);
            r10 = r0.SRNApiLog;
            r8 = r10.warn;
            r0 = r3.HermesInternal;
            r12 = r0.concat;
            r7 = '';
            r0 = ' 没有 qualities，按没拿到处理';
            r7 = r12.bind(r7)(r11, r0);
            r0 = 'VideoLiveRequest';
            r0 = r8.bind(r10)(r0, r7);
            var _closure2_slot0 = r2;
            var _closure2_slot1 = r2;
            var _closure2_slot2 = r2;
            r0 = null;
            _fun37_ip = 461; continue _fun37;
case 149:
            r7 = new Array(0);
            _closure2_slot0 = r7;
            r7 = new Array(0);
            _closure2_slot1 = r7;
            r8 = r9.forEach;
            r7 = function(a0) { // Environment: r1
                _fun38: for(var _fun38_ip = 0; ; ) switch(_fun38_ip) {
case 0:
                    r2 = a0;
                    r0 = undefined;
                    r4 = null;
                    r3 = undefined;
                    if(!(r4 != r2)) { _fun38_ip = 20; continue _fun38 }
case 15:
                    r3 = r2.code;
case 20:
                    r5 = undefined;
                    if(!(r4 != r2)) { _fun38_ip = 31; continue _fun38 }
case 26:
                    r5 = r2.name;
case 31:
                    r6 = 'string';
                    r2 = typeof r3;
                    r2 = r6 === r2;
                    if(!r2) { _fun38_ip = 56; continue _fun38 }
case 45:
                    r7 = r3.length;
                    r4 = 0;
                    r2 = r4 !== r7;
case 56:
                    if(!r2) { _fun38_ip = 66; continue _fun38 }
case 59:
                    r4 = typeof r5;
                    r2 = r6 === r4;
case 66:
                    if(!r2) { _fun38_ip = 80; continue _fun38 }
case 69:
                    r6 = r5.length;
                    r4 = 0;
                    r2 = r4 !== r6;
case 80:
                    if(r2) { _fun38_ip = 89; continue _fun38 }
case 83:
                    var _closure3_slot0 = r3;
                    _fun38_ip = 206; continue _fun38;
case 89:
                    r4 = _closure1_slot0;
                    r6 = _closure1_slot1;
                    r2 = 4;
                    r2 = r6[r2];
                    r2 = r4.bind(r0)(r2);
                    r2 = r2.isSupportedQualityCode;
                    r4 = r2.bind(r0)(r3);
                    if(r4) { _fun38_ip = 148; continue _fun38 }
case 128:
                    r6 = _closure2_slot1;
                    r4 = r6.push;
                    r4 = r4.bind(r6)(r3);
                    _closure3_slot0 = r3;
                    _fun38_ip = 206; continue _fun38;
case 148:
                    _closure3_slot0 = r3;
                    r6 = _closure2_slot0;
                    r4 = r6.some;
                    r3 = function(a0) { // Environment: r1
                        r0 = a0;
                        r1 = r0.value;
                        r0 = _closure3_slot0;
                        r0 = r1 === r0;
                        return r0;
                    };
                    r3 = r4.bind(r6)(r3);
                    if(r3) { _fun38_ip = 206; continue _fun38 }
case 174:
                    r3 = _closure2_slot0;
                    r2 = r3.push;
                    r4 = _closure3_slot0;
                    r1 = {};
                    r1['id'] = r4;
                    r1['label'] = r5;
                    r1['value'] = r4;
                    r1 = r2.bind(r3)(r1);
case 206:
                    return r0;
                }
            };
            r7 = r8.bind(r9)(r7);
            r7 = _closure2_slot1;
            r8 = r7.length;
            r7 = 0;
            if(!(r8 > r7)) { _fun37_ip = 286; continue _fun37 }
case 195:
            r8 = _closure1_slot0;
            r9 = _closure1_slot1;
            r7 = 2;
            r7 = r9[r7];
            r7 = r8.bind(r2)(r7);
            r10 = r7.SRNApiLog;
            r9 = r10.warn;
            r12 = _closure2_slot1;
            r8 = r12.join;
            r7 = ',';
            r16 = r8.bind(r12)(r7);
            r7 = r3.HermesInternal;
            r13 = r7.concat;
            r19 = '';
            r17 = ' 下发了端上无法编码的清晰度 ';
            r15 = '，不展示';
            r18 = r11;
            r8 = r19[r13](r18, r17, r16, r15, r14);
            r7 = 'VideoLiveRequest';
            r7 = r9.bind(r10)(r7, r8);
case 286:
            r8 = _closure1_slot0;
            r9 = _closure1_slot1;
            r7 = 2;
            r7 = r9[r7];
            r7 = r8.bind(r2)(r7);
            r8 = r7.SRNApiLog;
            r7 = r8.info;
            r12 = _closure2_slot0;
            r10 = r12.map;
            r9 = function(a0) { // Environment: r1
                r0 = a0;
                r0 = r0.value;
                return r0;
            };
            r12 = r10.bind(r12)(r9);
            r10 = r12.join;
            r9 = ',';
            r10 = r10.bind(r12)(r9);
            if(r10) { _fun37_ip = 358; continue _fun37 }
case 355:
            r10 = r6;
case 358:
            r3 = r3.HermesInternal;
            r9 = r3.concat;
            r6 = '';
            r3 = ' 清晰度选项 ';
            r6 = r9.bind(r6)(r11, r3, r10);
            r3 = 'VideoLiveRequest';
            r3 = r7.bind(r8)(r3, r6);
            r3 = undefined;
            if(!(r5 != r4)) { _fun37_ip = 416; continue _fun37 }
case 400:
            r4 = r4.qualities;
            r3 = undefined;
            if(!(r5 != r4)) { _fun37_ip = 416; continue _fun37 }
case 411:
            r3 = r4.selected;
case 416:
            _closure2_slot2 = r3;
            r3 = _closure2_slot0;
            r5 = r3.some;
            r4 = function(a0) { // Environment: r1
                r0 = a0;
                r1 = r0.value;
                r0 = _closure2_slot2;
                r0 = r1 === r0;
                return r0;
            };
            r4 = r5.bind(r3)(r4);
            r2 = undefined;
            if(!r4) { _fun37_ip = 448; continue _fun37 }
case 444:
            r2 = _closure2_slot2;
case 448:
            r1 = {};
            r1['options'] = r3;
            r1['selected'] = r2;
            r0 = r1;
case 461:
            return r0;
        }
    };
    r2['parseClarityConfig'] = r3;
    var _closure1_slot6 = r3;
    r3 = function() { // Environment: r1
        r1 = _closure1_slot2;
        r3 = r1.default;
        r2 = undefined;
        r1 = function* () { // Environment: r0
            r0 = function* () { // Original name: ?anon_0_, environment: r0
                _fun44: for(var _fun44_ip = 0; ; ) switch(_fun44_ip) {
case 0:
                    StartGenerator();
                    ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                    if(r1) { _fun44_ip = 128; continue _fun44 }
case 7:
                    r3 = _closure1_slot0;
                    r4 = _closure1_slot1;
                    r1 = 2;
                    r6 = r4[r1];
                    r5 = undefined;
                    r6 = r3.bind(r5)(r6);
                    r7 = r6.SRNApiNetwork;
                    r6 = r7.get;
                    r1 = r4[r1];
                    r1 = r3.bind(r5)(r1);
                    r1 = r1.HttpBaseDomain;
                    r3 = r1.play;
                    r4 = {};
                    r1 = 'CREATE_ROOM';
                    r4['scene'] = r1;
                    r1 = {};
                    r1['query'] = r4;
                    r4 = 'screen-live/config';
                    r1 = r6.bind(r7)(r4, r3, r1);
                    SaveGenerator(address=92);
case 90:
                    return r1;
case 92:
                    ResumeGenerator(result_out_reg=1, return_bool_out_reg=3);
                    if(r3) { _fun44_ip = 125; continue _fun44 }
case 98:
                    r6 = r1.data;
                    r3 = _closure1_slot6;
                    r2 = _closure1_slot7;
                    r2 = r2.bind(r5)(r6);
                    r2 = r3.bind(r5)(r2, r4);
                    return r2;
case 125:
                    return r1;
case 128:
                    return r0;
                }
            };
            return r0;
        };
        r1 = r3.bind(r2)(r1);
        var _closure2_slot0 = r1;
        r0 = function() { // Environment: r0
            r0 = undefined;
            r3 = _closure2_slot0;
            r2 = r3.apply;
            r0 = arguments;
            r1 = r0;
            r0 = this;
            r0 = r2.bind(r3)(r0, r1);
            return r0;
        };
        return r0;
    };
    r3 = r3.bind(r0)();
    r2['getScreenLiveClarityConfig'] = r3;
    r3 = function() { // Environment: r1
        r1 = _closure1_slot2;
        r3 = r1.default;
        r2 = undefined;
        r1 = function* () { // Environment: r0
            r0 = function* () { // Original name: ?anon_0_, environment: r0
                _fun48: for(var _fun48_ip = 0; ; ) switch(_fun48_ip) {
case 0:
                    StartGenerator();
                    r5 = '网络错误';
                    ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                    if(r1) { _fun48_ip = 179; continue _fun48 }
case 14:
                    r7 = _closure1_slot0;
                    r1 = _closure1_slot1;
                    r2 = 2;
                    r4 = r1[r2];
                    r3 = undefined;
                    r4 = r7.bind(r3)(r4);
                    r6 = r4.SRNApiNetwork;
                    r4 = r6.get;
                    r1 = r1[r2];
                    r1 = r7.bind(r3)(r1);
                    r1 = r1.HttpBaseDomain;
                    r3 = r1.clubparty;
                    r1 = {};
                    r1['sourceType'] = r2;
                    r2 = {};
                    r2['query'] = r1;
                    r1 = 'chatroom/getRoomTagInfo';
                    r1 = r4.bind(r6)(r1, r3, r2);
                    SaveGenerator(address=95);
case 93:
                    return r1;
case 95:
                    ResumeGenerator(result_out_reg=1, return_bool_out_reg=2);
                    if(r2) { _fun48_ip = 176; continue _fun48 }
case 101:
                    r2 = r1.data;
                    r4 = r2.code;
                    r3 = 10001;
                    if(!(r3 !== r4)) { _fun48_ip = 168; continue _fun48 }
case 121:
                    r3 = global;
                    r3 = r3.Error;
                    r4 = r2.msg;
                    r6 = null;
                    if(!(r6 != r4)) { _fun48_ip = 143; continue _fun48 }
case 140:
                    r5 = r4;
case 143:
                    r4 = r3.prototype;
                    r4 = Object.create(r4, {constructor: {value: r3}});
                    r11 = r4;
                    r10 = r5;
                    r3 = new r11[r3](r10, r9);
                    r3 = r3 instanceof Object ? r3 : r4;
                    throw r3;
case 168:
                    r2 = r2.data;
                    return r2;
case 176:
                    return r1;
case 179:
                    return r0;
                }
            };
            return r0;
        };
        r1 = r3.bind(r2)(r1);
        var _closure2_slot0 = r1;
        r0 = function() { // Environment: r0
            r0 = undefined;
            r3 = _closure2_slot0;
            r2 = r3.apply;
            r0 = arguments;
            r1 = r0;
            r0 = this;
            r0 = r2.bind(r3)(r0, r1);
            return r0;
        };
        return r0;
    };
    r3 = r3.bind(r0)();
    r2['getRoomTagInfo'] = r3;
    r3 = function() { // Environment: r1
        r1 = _closure1_slot2;
        r3 = r1.default;
        r2 = undefined;
        r1 = function* (a0) { // Environment: r0
            r0 = function* (a0) { // Original name: ?anon_0_, environment: r0
                _fun52: for(var _fun52_ip = 0; ; ) switch(_fun52_ip) {
case 0:
                    StartGenerator();
                    r2 = a0;
                    r1 = 1;
                    r5 = '网络错误';
                    ResumeGenerator(result_out_reg=0, return_bool_out_reg=3);
                    if(r3) { _fun52_ip = 199; continue _fun52 }
case 20:
                    r8 = _closure1_slot0;
                    r9 = _closure1_slot1;
                    r3 = 2;
                    r4 = r9[r3];
                    r7 = undefined;
                    r4 = r8.bind(r7)(r4);
                    r6 = r4.SRNApiNetwork;
                    r4 = r6.get;
                    r3 = r9[r3];
                    r3 = r8.bind(r7)(r3);
                    r3 = r3.HttpBaseDomain;
                    r3 = r3.clubparty;
                    if(r2) { _fun52_ip = 80; continue _fun52 }
case 77:
                    r2 = r1;
case 80:
                    r1 = {};
                    r7 = '';
                    r1['roomId'] = r7;
                    r1['source'] = r2;
                    r2 = {};
                    r2['query'] = r1;
                    r1 = 'live/recTopic/list';
                    r1 = r4.bind(r6)(r1, r3, r2);
                    SaveGenerator(address=115);
case 113:
                    return r1;
case 115:
                    ResumeGenerator(result_out_reg=1, return_bool_out_reg=2);
                    if(r2) { _fun52_ip = 196; continue _fun52 }
case 121:
                    r2 = r1.data;
                    r4 = r2.code;
                    r3 = 10001;
                    if(!(r3 !== r4)) { _fun52_ip = 188; continue _fun52 }
case 141:
                    r3 = global;
                    r3 = r3.Error;
                    r4 = r2.msg;
                    r6 = null;
                    if(!(r6 != r4)) { _fun52_ip = 163; continue _fun52 }
case 160:
                    r5 = r4;
case 163:
                    r4 = r3.prototype;
                    r4 = Object.create(r4, {constructor: {value: r3}});
                    r13 = r4;
                    r12 = r5;
                    r3 = new r13[r3](r12, r11);
                    r3 = r3 instanceof Object ? r3 : r4;
                    throw r3;
case 188:
                    r2 = r2.data;
                    return r2;
case 196:
                    return r1;
case 199:
                    return r0;
                }
            };
            return r0;
        };
        r1 = r3.bind(r2)(r1);
        var _closure2_slot0 = r1;
        r0 = function(a0) { // Environment: r0
            r0 = undefined;
            r3 = _closure2_slot0;
            r2 = r3.apply;
            r0 = arguments;
            r1 = r0;
            r0 = this;
            r0 = r2.bind(r3)(r0, r1);
            return r0;
        };
        return r0;
    };
    r3 = r3.bind(r0)();
    r2['hotTopicNameList'] = r3;
    r3 = function() { // Environment: r1
        r1 = _closure1_slot2;
        r3 = r1.default;
        r2 = undefined;
        r1 = function* () { // Environment: r0
            r0 = function* () { // Original name: ?anon_0_, environment: r0
                _fun56: for(var _fun56_ip = 0; ; ) switch(_fun56_ip) {
case 0:
                    StartGenerator();
                    r5 = '网络错误';
                    ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                    if(r1) { _fun56_ip = 166; continue _fun56 }
case 14:
                    r6 = _closure1_slot0;
                    r7 = _closure1_slot1;
                    r1 = 2;
                    r3 = r7[r1];
                    r2 = undefined;
                    r3 = r6.bind(r2)(r3);
                    r4 = r3.SRNApiNetwork;
                    r3 = r4.get;
                    r1 = r7[r1];
                    r1 = r6.bind(r2)(r1);
                    r1 = r1.HttpBaseDomain;
                    r2 = r1.clubparty;
                    r1 = 'live/recTopic/rule';
                    r1 = r3.bind(r4)(r1, r2);
                    SaveGenerator(address=82);
case 80:
                    return r1;
case 82:
                    ResumeGenerator(result_out_reg=1, return_bool_out_reg=2);
                    if(r2) { _fun56_ip = 163; continue _fun56 }
case 88:
                    r2 = r1.data;
                    r4 = r2.code;
                    r3 = 10001;
                    if(!(r3 !== r4)) { _fun56_ip = 155; continue _fun56 }
case 108:
                    r3 = global;
                    r3 = r3.Error;
                    r4 = r2.msg;
                    r6 = null;
                    if(!(r6 != r4)) { _fun56_ip = 130; continue _fun56 }
case 127:
                    r5 = r4;
case 130:
                    r4 = r3.prototype;
                    r4 = Object.create(r4, {constructor: {value: r3}});
                    r10 = r4;
                    r9 = r5;
                    r3 = new r10[r3](r9, r8);
                    r3 = r3 instanceof Object ? r3 : r4;
                    throw r3;
case 155:
                    r2 = r2.data;
                    return r2;
case 163:
                    return r1;
case 166:
                    return r0;
                }
            };
            return r0;
        };
        r1 = r3.bind(r2)(r1);
        var _closure2_slot0 = r1;
        r0 = function(a0) { // Environment: r0
            r0 = undefined;
            r3 = _closure2_slot0;
            r2 = r3.apply;
            r0 = arguments;
            r1 = r0;
            r0 = this;
            r0 = r2.bind(r3)(r0, r1);
            return r0;
        };
        return r0;
    };
    r3 = r3.bind(r0)();
    r2['getHotTopicRule'] = r3;
    r3 = function() { // Environment: r1
        r1 = _closure1_slot2;
        r3 = r1.default;
        r2 = undefined;
        r1 = function* () { // Environment: r0
            r0 = function* () { // Original name: ?anon_0_, environment: r0
                _fun60: for(var _fun60_ip = 0; ; ) switch(_fun60_ip) {
case 0:
                    StartGenerator();
                    r5 = '网络错误';
                    ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                    if(r1) { _fun60_ip = 166; continue _fun60 }
case 14:
                    r6 = _closure1_slot0;
                    r7 = _closure1_slot1;
                    r1 = 2;
                    r3 = r7[r1];
                    r2 = undefined;
                    r3 = r6.bind(r2)(r3);
                    r4 = r3.SRNApiNetwork;
                    r3 = r4.get;
                    r1 = r7[r1];
                    r1 = r6.bind(r2)(r1);
                    r1 = r1.HttpBaseDomain;
                    r2 = r1.pay;
                    r1 = 'soul-coin/total';
                    r1 = r3.bind(r4)(r1, r2);
                    SaveGenerator(address=82);
case 80:
                    return r1;
case 82:
                    ResumeGenerator(result_out_reg=1, return_bool_out_reg=2);
                    if(r2) { _fun60_ip = 163; continue _fun60 }
case 88:
                    r2 = r1.data;
                    r4 = r2.code;
                    r3 = 10001;
                    if(!(r3 !== r4)) { _fun60_ip = 155; continue _fun60 }
case 108:
                    r3 = global;
                    r3 = r3.Error;
                    r4 = r2.msg;
                    r6 = null;
                    if(!(r6 != r4)) { _fun60_ip = 130; continue _fun60 }
case 127:
                    r5 = r4;
case 130:
                    r4 = r3.prototype;
                    r4 = Object.create(r4, {constructor: {value: r3}});
                    r10 = r4;
                    r9 = r5;
                    r3 = new r10[r3](r9, r8);
                    r3 = r3 instanceof Object ? r3 : r4;
                    throw r3;
case 155:
                    r2 = r2.data;
                    return r2;
case 163:
                    return r1;
case 166:
                    return r0;
                }
            };
            return r0;
        };
        r1 = r3.bind(r2)(r1);
        var _closure2_slot0 = r1;
        r0 = function() { // Environment: r0
            r0 = undefined;
            r3 = _closure2_slot0;
            r2 = r3.apply;
            r0 = arguments;
            r1 = r0;
            r0 = this;
            r0 = r2.bind(r3)(r0, r1);
            return r0;
        };
        return r0;
    };
    r3 = r3.bind(r0)();
    r2['getSoulCoinTotal'] = r3;
    r1 = function() { // Environment: r1
        r1 = _closure1_slot2;
        r3 = r1.default;
        r2 = undefined;
        r1 = function* (a0) { // Environment: r0
            r0 = function* (a0) { // Original name: ?anon_0_, environment: r0
                _fun64: for(var _fun64_ip = 0; ; ) switch(_fun64_ip) {
case 0:
                    StartGenerator();
                    r4 = '购买失败';
                    ResumeGenerator(result_out_reg=0, return_bool_out_reg=1);
                    if(r1) { _fun64_ip = 187; continue _fun64 }
case 14:
                    r3 = _closure1_slot0;
                    r5 = _closure1_slot1;
                    r1 = 2;
                    r6 = r5[r1];
                    r2 = undefined;
                    r6 = r3.bind(r2)(r6);
                    r7 = r6.SRNApiNetwork;
                    r6 = r7.post;
                    r1 = r5[r1];
                    r1 = r3.bind(r2)(r1);
                    r1 = r1.HttpBaseDomain;
                    r5 = r1.pay;
                    r1 = {'itemIdentity': null, 'purchaseQuantity': 1, 'businessType': 'GROUP_CHAT_BACKGROUND_IMAGE', 'sourceCode': '2010'};
                    r3 = a0;
                    r1['itemIdentity'] = r3;
                    r3 = {};
                    r3['body'] = r1;
                    r1 = 'soulcoin/trader/purchase';
                    r1 = r6.bind(r7)(r1, r5, r3);
                    SaveGenerator(address=108);
case 106:
                    return r1;
case 108:
                    ResumeGenerator(result_out_reg=1, return_bool_out_reg=3);
                    if(r3) { _fun64_ip = 184; continue _fun64 }
case 114:
                    r3 = r1.data;
                    r6 = r3.code;
                    r5 = 10001;
                    if(!(r5 === r6)) { _fun64_ip = 137; continue _fun64 }
case 134:
                    return r2;
case 137:
                    r2 = global;
                    r2 = r2.Error;
                    r3 = r3.msg;
                    r5 = null;
                    if(!(r5 != r3)) { _fun64_ip = 159; continue _fun64 }
case 156:
                    r4 = r3;
case 159:
                    r3 = r2.prototype;
                    r3 = Object.create(r3, {constructor: {value: r2}});
                    r11 = r3;
                    r10 = r4;
                    r2 = new r11[r2](r10, r9);
                    r2 = r2 instanceof Object ? r2 : r3;
                    throw r2;
case 184:
                    return r1;
case 187:
                    return r0;
                }
            };
            return r0;
        };
        r1 = r3.bind(r2)(r1);
        var _closure2_slot0 = r1;
        r0 = function(a0) { // Environment: r0
            r0 = undefined;
            r3 = _closure2_slot0;
            r2 = r3.apply;
            r0 = arguments;
            r1 = r0;
            r0 = this;
            r0 = r2.bind(r3)(r0, r1);
            return r0;
        };
        return r0;
    };
    r1 = r1.bind(r0)();
    r2['purchaseGroupChatBackground'] = r1;
    return r0;
};
r1 = 10000187;
r0 = [7, 324, 976, 10000184, 10000183];
r0 = r4.bind(r3)(r2, r1, r0);
return r0;

