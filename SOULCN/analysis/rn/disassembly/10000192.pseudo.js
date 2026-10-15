r0 = global;
r4 = r0.__d;
r3 = undefined;
r2 = function(a0, a1, a2, a3, a4, a5, a6) { // Environment: r0
    r4 = a1;
    r2 = a5;
    r3 = a6;
    var _closure1_slot0 = r4;
    var _closure1_slot1 = r3;
    r0 = global;
    r7 = r0.Object;
    r6 = r7.defineProperty;
    r5 = {};
    r0 = true;
    r5['value'] = r0;
    r0 = '__esModule';
    r0 = r6.bind(r7)(r2, r0, r5);
    r0 = undefined;
    r2['default'] = r0;
    r5 = 0;
    r5 = r3[r5];
    r6 = r4.bind(r0)(r5);
    r5 = 1;
    r5 = r3[r5];
    r5 = r4.bind(r0)(r5);
    r5 = r6.bind(r0)(r5);
    r7 = 2;
    r3 = r3[r7];
    r3 = r4.bind(r0)(r3);
    var _closure1_slot2 = r3;
    r6 = r3.Dimensions;
    r5 = r6.get;
    r4 = 'window';
    r4 = r5.bind(r6)(r4);
    r6 = r4.width;
    r5 = r3.StyleSheet;
    r4 = r5.create;
    r3 = 48;
    r3 = r6 - r3;
    r6 = {'backgroundColor': 'rgba(255, 255, 255, 0.1)', 'alignItems': 'center', 'borderRadius': 6, 'paddingVertical': 12, 'paddingHorizontal': 16, 'marginBottom': 8, 'opacity': 0.7};
    r3 = r3 / r7;
    r6['width'] = r3;
    r3 = {};
    r7 = {'width': '100%', 'alignSelf': 'stretch'};
    r3['container'] = r7;
    r7 = {'position': 'absolute', 'top': 0, 'left': 0, 'right': 0, 'bottom': 0, 'backgroundColor': 'rgba(0, 0, 0, 0.2)'};
    r3['backgroundMask'] = r7;
    r7 = {'width': '100%', 'backgroundColor': '#282828', 'borderTopLeftRadius': 12, 'borderTopRightRadius': 12, 'alignItems': 'center'};
    r3['content'] = r7;
    r7 = {'paddingTop': 7.04, 'alignItems': 'center'};
    r3['titleContainer'] = r7;
    r7 = {'fontSize': 15, 'fontWeight': '500', 'color': '#FFFFFF', 'lineHeight': 21};
    r3['title'] = r7;
    r7 = {'width': '100%', 'paddingHorizontal': 16, 'paddingTop': 20, 'flexDirection': 'row', 'flexWrap': 'wrap', 'justifyContent': 'space-between'};
    r3['optionsContainer'] = r7;
    r3['optionItem'] = r6;
    r6 = {'backgroundColor': 'rgba(37, 212, 208, 0.2)', 'opacity': 1};
    r3['selectedOption'] = r6;
    r6 = {'fontSize': 14, 'fontWeight': '400', 'color': '#BABABA', 'lineHeight': 19.6};
    r3['optionText'] = r6;
    r6 = {'fontWeight': '500', 'color': '#25D4D0'};
    r3['selectedOptionText'] = r6;
    r6 = {'height': 4, 'width': 35, 'backgroundColor': '#BABABA', 'borderRadius': 2, 'marginTop': 12, 'opacity': 0.2};
    r3['homeIndicator'] = r6;
    r3 = r4.bind(r5)(r3);
    var _closure1_slot3 = r3;
    r1 = function(a0) { // Original name: n, environment: r1
        _fun2: for(var _fun2_ip = 0; ; ) switch(_fun2_ip) {
case 0:
            r1 = a0;
            r2 = '闲聊唠嗑';
            r14 = r1.partyTypes;
            r4 = r1.selectedType;
            r3 = undefined;
            if(!(r3 !== r4)) { _fun2_ip = 28; continue _fun2 }
case 25:
            r2 = r4;
case 28:
            var _closure2_slot1 = r3;
            var _closure2_slot2 = r3;
            var _closure2_slot3 = r3;
            var _closure2_slot0 = r2;
            r2 = r1.onSelectType;
            _closure2_slot1 = r2;
            r1 = r1.onClose;
            _closure2_slot2 = r1;
            r13 = _closure1_slot0;
            r15 = _closure1_slot1;
            r1 = 3;
            r1 = r15[r1];
            r1 = r13.bind(r3)(r1);
            r1 = r1.useSafeAreaInsets;
            r8 = r1.bind(r3)();
            r1 = function(a0) { // Original name: b, environment: r0
                _fun3: for(var _fun3_ip = 0; ; ) switch(_fun3_ip) {
case 0:
                    r1 = _closure2_slot1;
                    r2 = null;
                    if(!(r2 != r1)) { _fun3_ip = 27; continue _fun3 }
case 13:
                    r4 = _closure2_slot1;
                    r3 = undefined;
                    r1 = a0;
                    r1 = r4.bind(r3)(r1);
case 27:
                    r1 = _closure2_slot2;
                    if(!(r2 != r1)) { _fun3_ip = 45; continue _fun3 }
case 35:
                    r1 = _closure2_slot2;
                    r0 = undefined;
                    r0 = r1.bind(r0)();
case 45:
                    r0 = undefined;
                    return r0;
                }
            };
            _closure2_slot3 = r1;
            r11 = 4;
            r1 = r15[r11];
            r1 = r13.bind(r3)(r1);
            r2 = r1.jsxs;
            r10 = _closure1_slot2;
            r1 = r10.View;
            r4 = _closure1_slot3;
            r5 = r4.container;
            r4 = r15[r11];
            r4 = r13.bind(r3)(r4);
            r7 = r4.jsx;
            r6 = r10.View;
            r4 = _closure1_slot3;
            r9 = r4.backgroundMask;
            r4 = {};
            r4['style'] = r9;
            r6 = r7.bind(r3)(r6, r4);
            r4 = new Array(2);
            r4[0] = r6;
            r6 = r15[r11];
            r6 = r13.bind(r3)(r6);
            r7 = r6.jsxs;
            r6 = r10.View;
            r9 = _closure1_slot3;
            r16 = r9.content;
            r9 = new Array(2);
            r9[0] = r16;
            r16 = r8.bottom;
            r8 = 12;
            r16 = r8 + r16;
            r8 = {};
            r8['paddingBottom'] = r16;
            r9[1] = r8;
            r8 = r15[r11];
            r8 = r13.bind(r3)(r8);
            r17 = r8.jsx;
            r16 = r10.View;
            r8 = _closure1_slot3;
            r18 = r8.homeIndicator;
            r8 = {};
            r8['style'] = r18;
            r16 = r17.bind(r3)(r16, r8);
            r8 = new Array(3);
            r8[0] = r16;
            r16 = r15[r11];
            r16 = r13.bind(r3)(r16);
            r18 = r16.jsx;
            r17 = r10.View;
            r16 = _closure1_slot3;
            r20 = r16.titleContainer;
            r16 = r15[r11];
            r16 = r13.bind(r3)(r16);
            r21 = r16.jsx;
            r19 = r10.Text;
            r16 = _closure1_slot3;
            r22 = r16.title;
            r16 = {};
            r16['style'] = r22;
            r22 = '派对类型';
            r16['children'] = r22;
            r19 = r21.bind(r3)(r19, r16);
            r16 = {};
            r16['style'] = r20;
            r16['children'] = r19;
            r16 = r18.bind(r3)(r17, r16);
            r8[1] = r16;
            r11 = r15[r11];
            r11 = r13.bind(r3)(r11);
            r11 = r11.jsx;
            r10 = r10.View;
            r12 = _closure1_slot3;
            r13 = r12.optionsContainer;
            r12 = r14.map;
            r0 = function(a0) { // Environment: r0
                _fun4: for(var _fun4_ip = 0; ; ) switch(_fun4_ip) {
case 0:
                    r0 = a0;
                    r2 = _closure1_slot0;
                    r1 = _closure1_slot1;
                    r10 = 4;
                    r1 = r1[r10];
                    r4 = undefined;
                    r1 = r2.bind(r4)(r1);
                    r3 = r1.jsx;
                    r1 = _closure1_slot2;
                    r2 = r1.TouchableOpacity;
                    r1 = _closure1_slot3;
                    r1 = r1.optionItem;
                    r7 = new Array(2);
                    r7[0] = r1;
                    r8 = _closure2_slot0;
                    r5 = r0.title;
                    r5 = r8 === r5;
                    if(!r5) { _fun4_ip = 89; continue _fun4 }
case 80:
                    r8 = _closure1_slot3;
                    r5 = r8.selectedOption;
case 89:
                    r7[1] = r5;
                    r8 = _closure1_slot0;
                    r5 = _closure1_slot1;
                    r5 = r5[r10];
                    r5 = r8.bind(r4)(r5);
                    r8 = r5.jsx;
                    r5 = _closure1_slot2;
                    r5 = r5.Text;
                    r10 = _closure1_slot3;
                    r11 = r10.optionText;
                    r10 = new Array(2);
                    r10[0] = r11;
                    r11 = _closure2_slot0;
                    r1 = r0.title;
                    r1 = r11 === r1;
                    if(!r1) { _fun4_ip = 166; continue _fun4 }
case 157:
                    r9 = _closure1_slot3;
                    r1 = r9.selectedOptionText;
case 166:
                    var _closure3_slot0 = r0;
                    r10[1] = r1;
                    r9 = r0.title;
                    r1 = {};
                    r1['style'] = r10;
                    r1['children'] = r9;
                    r5 = r8.bind(r4)(r5, r1);
                    r1 = {};
                    r1['style'] = r7;
                    r6 = function() { // Original name: onPress, environment: r6
                        r2 = _closure2_slot3;
                        r1 = _closure3_slot0;
                        r0 = undefined;
                        r0 = r2.bind(r0)(r1);
                        return r0;
                    };
                    r1['onPress'] = r6;
                    r1['children'] = r5;
                    r0 = r0.id;
                    r0 = r3.bind(r4)(r2, r1, r0);
                    return r0;
                }
            };
            r12 = r12.bind(r14)(r0);
            r0 = {};
            r0['style'] = r13;
            r0['children'] = r12;
            r0 = r11.bind(r3)(r10, r0);
            r8[2] = r0;
            r0 = {};
            r0['style'] = r9;
            r0['children'] = r8;
            r0 = r7.bind(r3)(r6, r0);
            r4[1] = r0;
            r0 = {};
            r0['style'] = r5;
            r0['children'] = r4;
            r0 = r2.bind(r3)(r1, r0);
            return r0;
        }
    };
    r2['default'] = r1;
    return r0;
};
r1 = 10000192;
r0 = [7, 1, 3, 424, 205];
r0 = r4.bind(r3)(r2, r1, r0);
return r0;

