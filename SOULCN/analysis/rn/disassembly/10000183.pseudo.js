r0 = global;
r4 = r0.__d;
r3 = undefined;
r2 = function(a0, a1, a2, a3, a4, a5, a6) { // Environment: r0
    r10 = a1;
    r2 = a5;
    r5 = a6;
    r4 = global;
    r7 = r4.Object;
    r6 = r7.defineProperty;
    r3 = {};
    r0 = true;
    r3['value'] = r0;
    r0 = '__esModule';
    r0 = r6.bind(r7)(r2, r0, r3);
    r0 = undefined;
    r2['APP_SETTINGS_URL'] = r0;
    r2['BRIDGE_CALL_TIMEOUT_MS'] = r0;
    r2['CAMERA_PERMISSION_API_UNAVAILABLE_TIP'] = r0;
    r2['CAMERA_PERMISSION_BLOCK_TIP'] = r0;
    r2['CAMERA_PERMISSION_PLACEHOLDER_TIP'] = r0;
    r2['CAMERA_PERMISSION_UNKNOWN_PLACEHOLDER_TIP'] = r0;
    r2['CameraFlipMode'] = r0;
    r2['DEVICE_PERMISSION_MODULE_NAME'] = r0;
    r2['EFFECT_PANEL_CHIPS'] = r0;
    r2['EFFECT_STATE_QUERY_TIMEOUT_MS'] = r0;
    r2['EFFECT_TAB_NAME_BEAUTY'] = r0;
    r2['EffectItemModel'] = r0;
    r2['LEGACY_TAB_CODES'] = r0;
    r2['LiveVideoMode'] = r0;
    r2['MATERIAL_DOWNLOAD_TIMEOUT_MS'] = r0;
    r2['MATERIAL_DOWNLOAD_TIMEOUT_TIP'] = r0;
    r2['MaterialDownloadState'] = r0;
    r2['OPEN_SETTING_BUTTON_TEXT'] = r0;
    r2['RETRY_BUTTON_TEXT'] = r0;
    r2['SCREENCAST_INTERRUPTED_TIP'] = r0;
    r2['SCREENCAST_START_TIMEOUT_MS'] = r0;
    r2['SCREENCAST_START_TIMEOUT_TIP'] = r0;
    r2['SCREEN_LIVE_PLAY_TYPE'] = r0;
    r2['STORAGE_KEY_CLARITY_OPTIONS_CAMERA'] = r0;
    r2['STORAGE_KEY_CLARITY_OPTIONS_SCREENCAST'] = r0;
    r2['STORAGE_KEY_VIDEO_BG_ID'] = r0;
    r2['STORAGE_KEY_VIDEO_EFFECT_ID'] = r0;
    r2['STORAGE_KEY_VIDEO_LIVE_MOCK'] = r0;
    r2['STORAGE_KEY_VIDEO_ORIENTATION'] = r0;
    r2['STORAGE_KEY_VIDEO_QUALITY'] = r0;
    r2['ScreenOrientation'] = r0;
    r2['VIDEO_LIVE_PLAY_TYPE'] = r0;
    r2['VIDEO_PLAY_TYPE_UNRESOLVED_TIP'] = r0;
    r2['VIDEO_TAB_CODE'] = r0;
    r2['VideoLiveConfigModel'] = r0;
    r2['VideoQuality'] = r0;
    r2['VirtualBackgroundModel'] = r0;
    r2['effectKindForTabName'] = r0;
    r2['expectedVideoPlayType'] = r0;
    r2['isBlurBackgroundItem'] = r0;
    r2['isSupportedQualityCode'] = r0;
    r2['isTabVisibleForPlatform'] = r0;
    r2['isVideoLiveMockEnabled'] = r0;
    r2['isVideoTabConfig'] = r0;
    r2['matchVideoPlayType'] = r0;
    r2['toPanelKind'] = r0;
    r9 = 0;
    r3 = r5[r9];
    r6 = r10.bind(r0)(r3);
    r8 = 1;
    r3 = r5[r8];
    r3 = r10.bind(r0)(r3);
    r3 = r6.bind(r0)(r3);
    r6 = r5[r9];
    r6 = r10.bind(r0)(r6);
    r7 = 2;
    r5 = r5[r7];
    r5 = r10.bind(r0)(r5);
    r6 = r6.bind(r0)(r5);
    r5 = 'shipin';
    r2['VIDEO_TAB_CODE'] = r5;
    r10 = r4.Set;
    r4 = r10.prototype;
    r5 = Object.create(r4, {constructor: {value: r10}});
    r13 = ['yuliao', 'ktv', 'wanfa', 'youxi'];
    r14 = r5;
    r4 = new r14[r10](r13, r12);
    r4 = r4 instanceof Object ? r4 : r5;
    r2['LEGACY_TAB_CODES'] = r4;
    var _closure1_slot1 = r4;
    r4 = function(a0, a1) { // Environment: r1
        _fun2: for(var _fun2_ip = 0; ; ) switch(_fun2_ip) {
case 0:
            r0 = a1;
            if(r0) { _fun2_ip = 26; continue _fun2 }
case 6:
            r3 = _closure1_slot1;
            r2 = r3.has;
            r1 = a0;
            r0 = r2.bind(r3)(r1);
case 26:
            return r0;
        }
    };
    r2['isTabVisibleForPlatform'] = r4;
    r4 = 'video_live_mock';
    r2['STORAGE_KEY_VIDEO_LIVE_MOCK'] = r4;
    r4 = null;
    var _closure1_slot2 = r4;
    r4 = function() { // Environment: r1
        _fun3: for(var _fun3_ip = 0; ; ) switch(_fun3_ip) {
case 0:
            r2 = _closure1_slot2;
            r1 = null;
            if(!(r1 == r2)) { _fun3_ip = 19; continue _fun3 }
case 13:
            r1 = false;
            _closure1_slot2 = r1;
case 19:
            r0 = _closure1_slot2;
            return r0;
        }
    };
    r2['isVideoLiveMockEnabled'] = r4;
    r4 = 30000;
    r2['MATERIAL_DOWNLOAD_TIMEOUT_MS'] = r4;
    r4 = '素材下载超时，请重试';
    r2['MATERIAL_DOWNLOAD_TIMEOUT_TIP'] = r4;
    r4 = 5000;
    r2['EFFECT_STATE_QUERY_TIMEOUT_MS'] = r4;
    r2['BRIDGE_CALL_TIMEOUT_MS'] = r4;
    r4 = {};
    r4['CAMERA'] = r8;
    r5 = 'CAMERA';
    r4[r8] = r5;
    r4['SCREENCAST'] = r7;
    r5 = 'SCREENCAST';
    r4[r7] = r5;
    r2['LiveVideoMode'] = r4;
    var _closure1_slot3 = r4;
    r4 = 27;
    r2['VIDEO_LIVE_PLAY_TYPE'] = r4;
    r4 = 28;
    r2['SCREEN_LIVE_PLAY_TYPE'] = r4;
    r4 = function(a0) { // Environment: r1
        _fun4: for(var _fun4_ip = 0; ; ) switch(_fun4_ip) {
case 0:
            r1 = 28;
            r0 = 27;
            r2 = _closure1_slot3;
            r3 = r2.SCREENCAST;
            r2 = a0;
            if(!(r2 === r3)) { _fun4_ip = 28; continue _fun4 }
case 25:
            r0 = r1;
case 28:
            return r0;
        }
    };
    r2['expectedVideoPlayType'] = r4;
    var _closure1_slot4 = r4;
    r4 = function(a0, a1) { // Environment: r1
        _fun5: for(var _fun5_ip = 0; ; ) switch(_fun5_ip) {
case 0:
            r5 = a0;
            r4 = undefined;
            r3 = null;
            r2 = _closure1_slot4;
            r0 = a1;
            r2 = r2.bind(r4)(r0);
            if(!(r3 == r5)) { _fun5_ip = 36; continue _fun5 }
case 28:
            var _closure2_slot0 = r2;
            r0 = null;
            _fun5_ip = 64; continue _fun5;
case 36:
            _closure2_slot0 = r2;
            r4 = r5.some;
            r2 = function(a0) { // Environment: r1
                _fun6: for(var _fun6_ip = 0; ; ) switch(_fun6_ip) {
case 0:
                    r0 = a0;
                    r2 = null;
                    r1 = undefined;
                    if(!(r2 != r0)) { _fun6_ip = 16; continue _fun6 }
case 11:
                    r1 = r0.playTypeCode;
case 16:
                    r0 = _closure2_slot0;
                    r0 = r1 === r0;
                    return r0;
                }
            };
            r2 = r4.bind(r5)(r2);
            r0 = null;
            if(!r2) { _fun5_ip = 64; continue _fun5 }
case 60:
            r0 = _closure2_slot0;
case 64:
            return r0;
        }
    };
    r2['matchVideoPlayType'] = r4;
    var _closure1_slot5 = r4;
    r4 = function(a0) { // Environment: r1
        _fun7: for(var _fun7_ip = 0; ; ) switch(_fun7_ip) {
case 0:
            r6 = a0;
            r5 = undefined;
            r4 = _closure1_slot5;
            r2 = null;
            r3 = undefined;
            if(!(r2 != r6)) { _fun7_ip = 25; continue _fun7 }
case 20:
            r3 = r6.playTypeConfigList;
case 25:
            r0 = _closure1_slot3;
            r0 = r0.CAMERA;
            r0 = r4.bind(r5)(r3, r0);
            r0 = r2 != r0;
            if(r0) { _fun7_ip = 81; continue _fun7 }
case 47:
            r4 = _closure1_slot5;
            r3 = undefined;
            if(!(r2 != r6)) { _fun7_ip = 62; continue _fun7 }
case 57:
            r3 = r6.playTypeConfigList;
case 62:
            r1 = _closure1_slot3;
            r1 = r1.SCREENCAST;
            r1 = r4.bind(r5)(r3, r1);
            r0 = r2 != r1;
case 81:
            return r0;
        }
    };
    r2['isVideoTabConfig'] = r4;
    r4 = '暂时无法创建视频直播房间，请稍后重试';
    r2['VIDEO_PLAY_TYPE_UNRESOLVED_TIP'] = r4;
    r5 = {};
    r4 = 'sd';
    r5['SMOOTH_360P'] = r4;
    r4 = 'hd';
    r5['SD_540P'] = r4;
    r4 = 'ultra_hd';
    r5['HD_720P'] = r4;
    r4 = 'blu_ray';
    r5['BD_1080P'] = r4;
    r2['VideoQuality'] = r5;
    r4 = 'video_live_quality';
    r2['STORAGE_KEY_VIDEO_QUALITY'] = r4;
    r4 = 'video_live_orientation_v2';
    r2['STORAGE_KEY_VIDEO_ORIENTATION'] = r4;
    r4 = 'video_live_effect_id';
    r2['STORAGE_KEY_VIDEO_EFFECT_ID'] = r4;
    r4 = 'video_live_bg_id';
    r2['STORAGE_KEY_VIDEO_BG_ID'] = r4;
    r4 = '开启摄像头权限后才能进行视频直播';
    r2['CAMERA_PERMISSION_BLOCK_TIP'] = r4;
    r4 = '请前往系统设置开启摄像头权限';
    r2['CAMERA_PERMISSION_PLACEHOLDER_TIP'] = r4;
    r4 = '去开启';
    r2['OPEN_SETTING_BUTTON_TEXT'] = r4;
    r4 = '暂时无法获取摄像头权限状态，请重试';
    r2['CAMERA_PERMISSION_API_UNAVAILABLE_TIP'] = r4;
    r4 = '暂时无法获取摄像头权限状态';
    r2['CAMERA_PERMISSION_UNKNOWN_PLACEHOLDER_TIP'] = r4;
    r4 = '重试';
    r2['RETRY_BUTTON_TEXT'] = r4;
    r4 = 'SRNApiDeviceModule';
    r2['DEVICE_PERMISSION_MODULE_NAME'] = r4;
    r4 = 'app-settings:';
    r2['APP_SETTINGS_URL'] = r4;
    r4 = {};
    r4['PORTRAIT'] = r9;
    r7 = 'PORTRAIT';
    r4[r9] = r7;
    r4['LANDSCAPE'] = r8;
    r7 = 'LANDSCAPE';
    r4[r8] = r7;
    r2['ScreenOrientation'] = r4;
    r4 = {};
    r4['FRONT'] = r9;
    r7 = 'FRONT';
    r4[r9] = r7;
    r4['BACK'] = r8;
    r7 = 'BACK';
    r4[r8] = r7;
    r2['CameraFlipMode'] = r4;
    r4 = 60000;
    r2['SCREENCAST_START_TIMEOUT_MS'] = r4;
    r4 = '未检测到投屏开始，请重试';
    r2['SCREENCAST_START_TIMEOUT_TIP'] = r4;
    r4 = '投屏已中断，请重试';
    r2['SCREENCAST_INTERRUPTED_TIP'] = r4;
    r4 = {};
    r7 = 'idle';
    r4['IDLE'] = r7;
    r7 = 'downloading';
    r4['DOWNLOADING'] = r7;
    r7 = 'downloaded';
    r4['DOWNLOADED'] = r7;
    var _closure1_slot0 = r6;
    var _closure1_slot6 = r5;
    r2['MaterialDownloadState'] = r4;
    r4 = function(a0) { // Environment: r1
        _fun8: for(var _fun8_ip = 0; ; ) switch(_fun8_ip) {
case 0:
            r1 = 'background';
            r0 = 'effect';
            r2 = a0;
            if(!(r1 === r2)) { _fun8_ip = 18; continue _fun8 }
case 15:
            r0 = r1;
case 18:
            return r0;
        }
    };
    r2['toPanelKind'] = r4;
    r5 = r3.default;
    r4 = function() { // Original name: _, environment: r1
        r1 = _closure1_slot0;
        r3 = r1.default;
        r2 = _closure1_slot7;
        r0 = undefined;
        r1 = this;
        r1 = r3.bind(r0)(r1, r2);
        return r0;
    };
    var _closure1_slot7 = r4;
    r4 = r5.bind(r0)(r4);
    r2['EffectItemModel'] = r4;
    r5 = r3.default;
    r4 = function() { // Original name: _, environment: r1
        r1 = _closure1_slot0;
        r3 = r1.default;
        r2 = _closure1_slot8;
        r0 = undefined;
        r1 = this;
        r1 = r3.bind(r0)(r1, r2);
        return r0;
    };
    var _closure1_slot8 = r4;
    r4 = r5.bind(r0)(r4);
    r2['VirtualBackgroundModel'] = r4;
    r4 = function(a0) { // Environment: r1
        _fun11: for(var _fun11_ip = 0; ; ) switch(_fun11_ip) {
case 0:
            r1 = a0;
            r0 = r1.resourceUrl;
            r2 = 'string';
            r0 = typeof r0;
            r0 = r2 === r0;
            if(!r0) { _fun11_ip = 38; continue _fun11 }
case 22:
            r1 = r1.resourceUrl;
            r2 = r1.length;
            r1 = 0;
            r0 = r2 > r1;
case 38:
            return r0;
        }
    };
    r2['isBlurBackgroundItem'] = r4;
    r4 = '美颜';
    r2['EFFECT_TAB_NAME_BEAUTY'] = r4;
    r4 = function() { // Environment: r1
        r0 = 'trick';
        return r0;
    };
    r2['effectKindForTabName'] = r4;
    r4 = r3.default;
    r3 = function() { // Original name: _, environment: r1
        r1 = _closure1_slot0;
        r3 = r1.default;
        r2 = _closure1_slot9;
        r0 = undefined;
        r1 = this;
        r1 = r3.bind(r0)(r1, r2);
        return r0;
    };
    var _closure1_slot9 = r3;
    r3 = r4.bind(r0)(r3);
    r2['VideoLiveConfigModel'] = r3;
    r1 = function(a0) { // Environment: r1
        _fun14: for(var _fun14_ip = 0; ; ) switch(_fun14_ip) {
case 0:
            r3 = a0;
            r1 = 'string';
            r0 = typeof r3;
            r0 = r1 === r0;
            if(!r0) { _fun14_ip = 52; continue _fun14 }
case 17:
            r1 = global;
            r4 = r1.Object;
            r2 = r4.values;
            r1 = _closure1_slot6;
            r2 = r2.bind(r4)(r1);
            r1 = r2.includes;
            r0 = r1.bind(r2)(r3);
case 52:
            return r0;
        }
    };
    r2['isSupportedQualityCode'] = r1;
    r1 = 'video_live_clarity_options';
    r2['STORAGE_KEY_CLARITY_OPTIONS_CAMERA'] = r1;
    r1 = 'screen_live_clarity_options';
    r2['STORAGE_KEY_CLARITY_OPTIONS_SCREENCAST'] = r1;
    r1 = ['美颜', '整蛊'];
    r2['EFFECT_PANEL_CHIPS'] = r1;
    return r0;
};
r1 = 10000183;
r0 = [7, 11, 10];
r0 = r4.bind(r3)(r2, r1, r0);
return r0;

