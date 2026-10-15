package cn.soulapp.cpnt_voiceparty.soulhouse.song.utils.enums;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unexpected branching in enum static init block */
/* JADX INFO: compiled from: PlayModeEnum.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/song/utils/enums/PlayModeEnum;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "SEQUENTIAL_PLAY", "LOOP_PLAY", "RANDOM_PLAY", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class PlayModeEnum {
    private static final /* synthetic */ PlayModeEnum[] $VALUES;
    public static final PlayModeEnum LOOP_PLAY;
    public static final PlayModeEnum RANDOM_PLAY;
    public static final PlayModeEnum SEQUENTIAL_PLAY;
    public static ChangeQuickRedirect changeQuickRedirect;
    private final int value;

    private static final /* synthetic */ PlayModeEnum[] $values() {
        return new PlayModeEnum[]{SEQUENTIAL_PLAY, LOOP_PLAY, RANDOM_PLAY};
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 4, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SEQUENTIAL_PLAY = new PlayModeEnum("SEQUENTIAL_PLAY", 0, 1);
        LOOP_PLAY = new PlayModeEnum("LOOP_PLAY", 1, 2);
        RANDOM_PLAY = new PlayModeEnum("RANDOM_PLAY", 2, 3);
        $VALUES = $values();
    }

    private PlayModeEnum(String str, int i11, int i12) {
        super(str, i11);
        this.value = i12;
    }

    public static PlayModeEnum valueOf(String str) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{str}, null, changeQuickRedirect, true, 3, new Class[]{String.class}, PlayModeEnum.class);
        return (PlayModeEnum) (patchProxyResultProxy.isSupported ? patchProxyResultProxy.result : Enum.valueOf(PlayModeEnum.class, str));
    }

    public static PlayModeEnum[] values() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 2, new Class[0], PlayModeEnum[].class);
        return (PlayModeEnum[]) (patchProxyResultProxy.isSupported ? patchProxyResultProxy.result : $VALUES.clone());
    }

    public final int getValue() {
        return this.value;
    }
}