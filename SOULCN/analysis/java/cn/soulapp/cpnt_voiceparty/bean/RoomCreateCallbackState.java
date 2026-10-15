package cn.soulapp.cpnt_voiceparty.bean;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unexpected branching in enum static init block */
/* JADX INFO: compiled from: RoomCreateParams.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/bean/RoomCreateCallbackState;", "", "(Ljava/lang/String;I)V", "TO_REAL_NAME_VERIFY", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class RoomCreateCallbackState {
    private static final /* synthetic */ RoomCreateCallbackState[] $VALUES;
    public static final RoomCreateCallbackState TO_REAL_NAME_VERIFY;
    public static ChangeQuickRedirect changeQuickRedirect;

    private static final /* synthetic */ RoomCreateCallbackState[] $values() {
        return new RoomCreateCallbackState[]{TO_REAL_NAME_VERIFY};
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 4, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        TO_REAL_NAME_VERIFY = new RoomCreateCallbackState("TO_REAL_NAME_VERIFY", 0);
        $VALUES = $values();
    }

    private RoomCreateCallbackState(String str, int i11) {
        super(str, i11);
    }

    public static RoomCreateCallbackState valueOf(String str) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{str}, null, changeQuickRedirect, true, 3, new Class[]{String.class}, RoomCreateCallbackState.class);
        return (RoomCreateCallbackState) (patchProxyResultProxy.isSupported ? patchProxyResultProxy.result : Enum.valueOf(RoomCreateCallbackState.class, str));
    }

    public static RoomCreateCallbackState[] values() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 2, new Class[0], RoomCreateCallbackState[].class);
        return (RoomCreateCallbackState[]) (patchProxyResultProxy.isSupported ? patchProxyResultProxy.result : $VALUES.clone());
    }
}