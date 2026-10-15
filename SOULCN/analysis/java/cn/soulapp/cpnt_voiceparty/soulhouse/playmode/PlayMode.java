package cn.soulapp.cpnt_voiceparty.soulhouse.playmode;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderBlock;
import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unexpected branching in enum static init block */
/* JADX INFO: compiled from: PlayMode.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/PlayMode;", "", "type", "", "(Ljava/lang/String;II)V", "getType", "()I", "PK", "Auction", "QubaoShow", "SpeedMatch", "TurtleSoup", "PVP", "HeartBeat", "H5Game", "KTV", "GuineaPig", "AuctionPk", ThrowingThunderBlock.TAG, "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class PlayMode {
    private static final /* synthetic */ PlayMode[] $VALUES;
    public static final PlayMode Auction;
    public static final PlayMode AuctionPk;
    public static final PlayMode GuineaPig;
    public static final PlayMode H5Game;
    public static final PlayMode HeartBeat;
    public static final PlayMode KTV;
    public static final PlayMode PK;
    public static final PlayMode PVP;
    public static final PlayMode QubaoShow;
    public static final PlayMode SpeedMatch;
    public static final PlayMode ThrowingThunder;
    public static final PlayMode TurtleSoup;
    public static ChangeQuickRedirect changeQuickRedirect;
    private final int type;

    private static final /* synthetic */ PlayMode[] $values() {
        return new PlayMode[]{PK, Auction, QubaoShow, SpeedMatch, TurtleSoup, PVP, HeartBeat, H5Game, KTV, GuineaPig, AuctionPk, ThrowingThunder};
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 4, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        PK = new PlayMode("PK", 0, 1);
        Auction = new PlayMode("Auction", 1, 1);
        QubaoShow = new PlayMode("QubaoShow", 2, 1);
        SpeedMatch = new PlayMode("SpeedMatch", 3, 1);
        TurtleSoup = new PlayMode("TurtleSoup", 4, 1);
        PVP = new PlayMode("PVP", 5, 1);
        HeartBeat = new PlayMode("HeartBeat", 6, 2);
        H5Game = new PlayMode("H5Game", 7, 2);
        KTV = new PlayMode("KTV", 8, 3);
        GuineaPig = new PlayMode("GuineaPig", 9, 4);
        AuctionPk = new PlayMode("AuctionPk", 10, 1);
        ThrowingThunder = new PlayMode(ThrowingThunderBlock.TAG, 11, 2);
        $VALUES = $values();
    }

    private PlayMode(String str, int i11, int i12) {
        super(str, i11);
        this.type = i12;
    }

    public static PlayMode valueOf(String str) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{str}, null, changeQuickRedirect, true, 3, new Class[]{String.class}, PlayMode.class);
        return (PlayMode) (patchProxyResultProxy.isSupported ? patchProxyResultProxy.result : Enum.valueOf(PlayMode.class, str));
    }

    public static PlayMode[] values() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 2, new Class[0], PlayMode[].class);
        return (PlayMode[]) (patchProxyResultProxy.isSupported ? patchProxyResultProxy.result : $VALUES.clone());
    }

    public final int getType() {
        return this.type;
    }
}