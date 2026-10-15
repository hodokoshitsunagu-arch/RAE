package cn.soulapp.cpnt_voiceparty.ui.chatroom;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unexpected branching in enum static init block */
/* JADX INFO: compiled from: Datas.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/ui/chatroom/RoomMode;", "", "(Ljava/lang/String;I)V", "NORMAL", "KTV", "PK", "AUCTION", "H5_GAME", "NATIVE_GAME", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class RoomMode {
    private static final /* synthetic */ RoomMode[] $VALUES;
    public static final RoomMode AUCTION;
    public static final RoomMode H5_GAME;
    public static final RoomMode KTV;
    public static final RoomMode NATIVE_GAME;
    public static final RoomMode NORMAL;
    public static final RoomMode PK;
    public static ChangeQuickRedirect changeQuickRedirect;

    private static final /* synthetic */ RoomMode[] $values() {
        return new RoomMode[]{NORMAL, KTV, PK, AUCTION, H5_GAME, NATIVE_GAME};
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 4, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        NORMAL = new RoomMode("NORMAL", 0);
        KTV = new RoomMode("KTV", 1);
        PK = new RoomMode("PK", 2);
        AUCTION = new RoomMode("AUCTION", 3);
        H5_GAME = new RoomMode("H5_GAME", 4);
        NATIVE_GAME = new RoomMode("NATIVE_GAME", 5);
        $VALUES = $values();
    }

    private RoomMode(String str, int i11) {
        super(str, i11);
    }

    public static RoomMode valueOf(String str) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{str}, null, changeQuickRedirect, true, 3, new Class[]{String.class}, RoomMode.class);
        return (RoomMode) (patchProxyResultProxy.isSupported ? patchProxyResultProxy.result : Enum.valueOf(RoomMode.class, str));
    }

    public static RoomMode[] values() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 2, new Class[0], RoomMode[].class);
        return (RoomMode[]) (patchProxyResultProxy.isSupported ? patchProxyResultProxy.result : $VALUES.clone());
    }
}