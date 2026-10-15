package h30;

import android.text.TextUtils;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.common.api.ApiConstants;
import cn.soulapp.cpnt_voiceparty.api.IVoiceParty;
import cn.soulapp.cpnt_voiceparty.bean.FieldLevelConfigs;
import cn.soulapp.cpnt_voiceparty.bean.SearchChatRoomListResult;
import cn.soulapp.cpnt_voiceparty.bean.SearchEmptyListResult;
import com.walid.rxretrofit.interfaces.SimpleHttpCallback;

/* JADX INFO: compiled from: VoicePartyService.java */
/* JADX INFO: loaded from: classes17.dex */
public class h {
    public static ChangeQuickRedirect changeQuickRedirect;

    public static void a(int i11, SimpleHttpCallback<FieldLevelConfigs> simpleHttpCallback) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11), simpleHttpCallback}, null, changeQuickRedirect, true, 2, new Class[]{Integer.TYPE, SimpleHttpCallback.class}, Void.TYPE).isSupported) {
            return;
        }
        ty.h hVar = ApiConstants.LIVE_API;
        hVar.m(((IVoiceParty) hVar.i(IVoiceParty.class)).getFieldConfig(i11), simpleHttpCallback);
    }

    public static void b(SimpleHttpCallback<Boolean> simpleHttpCallback) {
        if (PatchProxy.proxy(new Object[]{simpleHttpCallback}, null, changeQuickRedirect, true, 3, new Class[]{SimpleHttpCallback.class}, Void.TYPE).isSupported) {
            return;
        }
        ty.h hVar = ApiConstants.APIA;
        hVar.m(((IVoiceParty) hVar.i(IVoiceParty.class)).groupChatSearchSwitch(), simpleHttpCallback);
    }

    public static void c(String str, String str2, SimpleHttpCallback<SearchEmptyListResult> simpleHttpCallback) {
        if (PatchProxy.proxy(new Object[]{str, str2, simpleHttpCallback}, null, changeQuickRedirect, true, 5, new Class[]{String.class, String.class, SimpleHttpCallback.class}, Void.TYPE).isSupported) {
            return;
        }
        ty.h hVar = ApiConstants.LIVE_API;
        hVar.m(((IVoiceParty) hVar.i(IVoiceParty.class)).searchEmptyRecList(str, str2), simpleHttpCallback);
    }

    public static void d(String str, String str2, String str3, String str4, SimpleHttpCallback<SearchChatRoomListResult> simpleHttpCallback) {
        if (PatchProxy.proxy(new Object[]{str, str2, str3, str4, simpleHttpCallback}, null, changeQuickRedirect, true, 4, new Class[]{String.class, String.class, String.class, String.class, SimpleHttpCallback.class}, Void.TYPE).isSupported || TextUtils.isEmpty(str)) {
            return;
        }
        ty.h hVar = ApiConstants.SEARCH_API;
        hVar.m(((IVoiceParty) hVar.i(IVoiceParty.class)).searchRoom(str, str2, 20, str3, str4), simpleHttpCallback);
    }
}