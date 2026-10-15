package cn.soulapp.cpnt_voiceparty.createroom.helper;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unexpected branching in enum static init block */
/* JADX INFO: compiled from: TabEnum.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\tj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/createroom/helper/TabEnum;", "", "tabName", "", "tabCode", "tabIndex", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V", "getTabCode", "()Ljava/lang/String;", "getTabIndex", "()I", "getTabName", "TAB_NORMAL", "TAB_KTV", "TAB_PLAY", "TAB_GAME", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class TabEnum {
    private static final /* synthetic */ TabEnum[] $VALUES;
    public static final TabEnum TAB_GAME;
    public static final TabEnum TAB_KTV;
    public static final TabEnum TAB_NORMAL;
    public static final TabEnum TAB_PLAY;
    public static ChangeQuickRedirect changeQuickRedirect;

    @NotNull
    private final String tabCode;
    private final int tabIndex;

    @NotNull
    private final String tabName;

    private static final /* synthetic */ TabEnum[] $values() {
        return new TabEnum[]{TAB_NORMAL, TAB_KTV, TAB_PLAY, TAB_GAME};
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 4, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        TAB_NORMAL = new TabEnum("TAB_NORMAL", 0, "语聊", "yuliao", 0);
        TAB_KTV = new TabEnum("TAB_KTV", 1, "KTV", "ktv", 1);
        TAB_PLAY = new TabEnum("TAB_PLAY", 2, "玩法", "wanfa", 2);
        TAB_GAME = new TabEnum("TAB_GAME", 3, "开黑", "youxi", 3);
        $VALUES = $values();
    }

    private TabEnum(String str, int i11, String str2, String str3, int i12) {
        super(str, i11);
        this.tabName = str2;
        this.tabCode = str3;
        this.tabIndex = i12;
    }

    public static TabEnum valueOf(String str) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{str}, null, changeQuickRedirect, true, 3, new Class[]{String.class}, TabEnum.class);
        return (TabEnum) (patchProxyResultProxy.isSupported ? patchProxyResultProxy.result : Enum.valueOf(TabEnum.class, str));
    }

    public static TabEnum[] values() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 2, new Class[0], TabEnum[].class);
        return (TabEnum[]) (patchProxyResultProxy.isSupported ? patchProxyResultProxy.result : $VALUES.clone());
    }

    @NotNull
    public final String getTabCode() {
        return this.tabCode;
    }

    public final int getTabIndex() {
        return this.tabIndex;
    }

    @NotNull
    public final String getTabName() {
        return this.tabName;
    }
}