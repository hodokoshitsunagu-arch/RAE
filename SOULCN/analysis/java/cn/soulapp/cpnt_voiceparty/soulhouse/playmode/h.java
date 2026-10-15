package cn.soulapp.cpnt_voiceparty.soulhouse.playmode;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.media.livevideo.VideoLiveLog;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderBlock;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: PlayModeType.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\r\u0018\u0000 \u000b2\u00020\u0001:\u0001\u0003B)\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u000f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0004\u001a\u0004\b\u000e\u0010\u0006\"\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/h;", "", "", "a", "I", "d", "()I", "id", "", ExpcompatUtils.COMPAT_VALUE_780, "Ljava/lang/String;", l11l11I1111l.l111l1111lIl, "()Ljava/lang/String;", "modeName", "c", "funcType", "setGroupType", "(I)V", "groupType", AppAgent.CONSTRUCT, "(ILjava/lang/String;II)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class h {

    @JvmField
    @NotNull
    public static final h A;

    @JvmField
    @NotNull
    public static final h B;

    @JvmField
    @NotNull
    public static final h C;

    @JvmField
    @NotNull
    public static final h D;

    @JvmField
    @NotNull
    public static final h E;

    @JvmField
    @NotNull
    public static final h F;

    @JvmField
    @NotNull
    public static final h G;

    @JvmField
    @NotNull
    public static final h H;

    @JvmField
    @NotNull
    public static final h I;

    @JvmField
    @NotNull
    public static final h J;

    @JvmField
    @NotNull
    public static final h K;

    @JvmField
    @NotNull
    public static final h L;

    @JvmField
    @NotNull
    public static final h M;

    @JvmField
    @NotNull
    public static final h N;

    @JvmField
    @NotNull
    public static final h O;

    @JvmField
    @NotNull
    public static final h P;

    @JvmField
    @NotNull
    public static final h Q;

    @JvmField
    @NotNull
    public static final h R;

    @JvmField
    @NotNull
    public static final h S;

    @JvmField
    @NotNull
    public static final h T;

    @JvmField
    @NotNull
    public static final h U;

    @JvmField
    @NotNull
    public static final h V;

    @JvmField
    @NotNull
    public static final h W;
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private static final List<h> f154981f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154982g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154983h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154984i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154985j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154986k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154987l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154988m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154989n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154990o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154991p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154992q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154993r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154994s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154995t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154996u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154997v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154998w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f154999x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f155000y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final h f155001z;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final int id;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final String modeName;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final int funcType;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int groupType;

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: PlayModeType.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b3\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b4\u00105R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0014\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\tR\u0014\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\tR\u0014\u0010\u000e\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\tR\u0014\u0010\u000f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\tR\u0014\u0010\u0010\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\tR\u0014\u0010\u0011\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\tR\u0014\u0010\u0012\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\tR\u0014\u0010\u0013\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\tR\u0014\u0010\u0014\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\tR\u0014\u0010\u0015\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\tR\u0014\u0010\u0016\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\tR\u0014\u0010\u0017\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\tR\u0014\u0010\u0018\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\tR\u0014\u0010\u0019\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\tR\u0014\u0010\u001a\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\tR\u0014\u0010\u001b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\tR\u0014\u0010\u001c\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\tR\u0014\u0010\u001d\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\tR\u0014\u0010\u001e\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\tR\u0014\u0010\u001f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\tR\u0014\u0010 \u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b \u0010\tR\u0014\u0010!\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b!\u0010\tR\u0014\u0010\"\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\"\u0010\tR\u0014\u0010#\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b#\u0010\tR\u0014\u0010$\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b$\u0010\tR\u0014\u0010%\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b%\u0010\tR\u0014\u0010&\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b&\u0010\tR\u0014\u0010'\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b'\u0010\tR\u0014\u0010(\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b(\u0010\tR\u0014\u0010)\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b)\u0010\tR\u0014\u0010*\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b*\u0010\tR\u0014\u0010+\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b+\u0010\tR\u0014\u0010,\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b,\u0010\tR\u0014\u0010-\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b-\u0010\tR\u0014\u0010.\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b.\u0010\tR\u0014\u0010/\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b/\u0010\tR\u0014\u00100\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b0\u0010\tR\u0014\u00101\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b1\u0010\tR\u0014\u00102\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b2\u0010\tR\u0014\u00103\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b3\u0010\t¨\u00066"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/h$a;", "", "", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/h;", "sPlayModeList", "Ljava/util/List;", "a", "()Ljava/util/List;", "AiPlayground", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/h;", "AiPodCast", "Auction", "AuctionPK", "BarrageGame", "BigVip", "BistroMusic", "BulletGame", "Ceremony", "Default", "FishingMaster", "FriendsCabin", "GuessWord", "GuineaPig", "H5PlayGame", "HeartAdventure", "HeartBeat", "HotTopic", "KTV", "KingGame", "Music", "MusicMarket", "MusicTavern", "MysteryGame", "OtherH5Game", "PK", "PartyInteraction", "Pvp", "QubaoShow", "RaceRoom", "SPY", "ScreenCast", "SingingRoom", "SongRequest", "SooFunGame", "SpeedMatch", "StudyRoom", ThrowingThunderBlock.TAG, "TreeHole", "TurtleSoup", VideoLiveLog.TAG_VIDEO_LIVE, "VirtualLive", "Werewolf", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(q qVar) {
            this();
        }

        @NotNull
        public final List<h> a() {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], List.class);
            return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : h.f154981f;
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 2, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
        ArrayList arrayList = new ArrayList();
        f154981f = arrayList;
        h hVar = new h(0, "非游戏模式", 1, 0, 8, null);
        f154982g = hVar;
        int i11 = 1;
        int i12 = 0;
        int i13 = 8;
        q qVar = null;
        h hVar2 = new h(1, "KTV", i11, i12, i13, qVar);
        f154983h = hVar2;
        int i14 = 1;
        int i15 = 0;
        int i16 = 8;
        q qVar2 = null;
        h hVar3 = new h(2, "欢乐PK", i14, i15, i16, qVar2);
        f154984i = hVar3;
        h hVar4 = new h(3, "娱乐拍拍", i11, i12, i13, qVar);
        f154985j = hVar4;
        h hVar5 = new h(4, "心动模式", i14, i15, i16, qVar2);
        f154986k = hVar5;
        h hVar6 = new h(5, "速配模式", i11, i12, i13, qVar);
        f154987l = hVar6;
        h hVar7 = new h(6, "欢乐预言", i14, i15, i16, qVar2);
        f154988m = hVar7;
        h hVar8 = new h(7, "超凡拍战", i11, i12, i13, qVar);
        f154989n = hVar8;
        h hVar9 = new h(8, "虚拟现场", i14, i15, i16, qVar2);
        f154990o = hVar9;
        h hVar10 = new h(9, "豚豚鼠之王", 1, 0, 8, null);
        f154991p = hVar10;
        h hVar11 = new h(10, "冒险之雷", 1, 0, 8, null);
        f154992q = hVar11;
        q qVar3 = null;
        h hVar12 = new h(13, "音乐小酒馆", 1, 0, 8, qVar3);
        f154993r = hVar12;
        f154994s = new h(15, "仪式房", 1, 0, 8, qVar3);
        int i17 = 1;
        int i18 = 0;
        int i19 = 8;
        q qVar4 = null;
        f154995t = new h(16, "大咖模式", i17, i18, i19, qVar4);
        int i21 = 1;
        int i22 = 0;
        int i23 = 8;
        q qVar5 = null;
        f154996u = new h(17, "兴趣陪伴", i21, i22, i23, qVar5);
        h hVar13 = new h(18, "挚友小屋", i17, i18, i19, qVar4);
        f154997v = hVar13;
        h hVar14 = new h(19, "豚豚鼠之王", i21, i22, i23, qVar5);
        f154998w = hVar14;
        int i24 = 1;
        int i25 = 0;
        int i26 = 8;
        q qVar6 = null;
        h hVar15 = new h(20, "趣宝秀", i24, i25, i26, qVar6);
        f154999x = hVar15;
        h hVar16 = new h(21, "弹唱房", 1, 0, 8, null);
        f155000y = hVar16;
        h hVar17 = new h(22, "AI播客", i24, i25, i26, qVar6);
        f155001z = hVar17;
        int i27 = 1;
        int i28 = 0;
        int i29 = 8;
        q qVar7 = null;
        h hVar18 = new h(23, "树洞模式", i27, i28, i29, qVar7);
        A = hVar18;
        h hVar19 = new h(24, "点唱房", i24, i25, i26, qVar6);
        B = hVar19;
        h hVar20 = new h(25, "AI游乐园", i27, i28, i29, qVar7);
        C = hVar20;
        h hVar21 = new h(26, "赛事直播房", i24, i25, i26, qVar6);
        D = hVar21;
        h hVar22 = new h(27, "视频直播", i27, i28, i29, qVar7);
        E = hVar22;
        h hVar23 = new h(28, "手机投屏", i24, i25, i26, qVar6);
        F = hVar23;
        h hVar24 = new h(-1, "弹幕游戏", 1, 3);
        G = hVar24;
        h hVar25 = new h(14, "强音对决", 1, 4);
        H = hVar25;
        h hVar26 = new h(-1, "Luk游戏", 1, 5);
        I = hVar26;
        h hVar27 = new h(100001, "SooFun游戏", 1, 7);
        J = hVar27;
        h hVar28 = new h(400001, "海龟汤", 1, 0, 8, null);
        K = hVar28;
        h hVar29 = new h(400002, "谁是卧底", 1, 2);
        L = hVar29;
        h hVar30 = new h(400003, "你说我猜", 1, 2);
        M = hVar30;
        h hVar31 = new h(400004, "Ai剧本杀", 1, 6);
        N = hVar31;
        int i31 = 0;
        int i32 = 8;
        q qVar8 = null;
        h hVar32 = new h(400005, "狼人魅影", 1, i31, i32, qVar8);
        O = hVar32;
        int i33 = 2;
        int i34 = 0;
        int i35 = 8;
        q qVar9 = null;
        h hVar33 = new h(500001, "唱片机", i33, i34, i35, qVar9);
        P = hVar33;
        int i36 = 2;
        h hVar34 = new h(500002, "随机话题", i36, i31, i32, qVar8);
        Q = hVar34;
        h hVar35 = new h(500003, "音乐集市", i33, i34, i35, qVar9);
        R = hVar35;
        h hVar36 = new h(500004, "心动大冒险", i36, i31, i32, qVar8);
        S = hVar36;
        int i37 = 2;
        int i38 = 0;
        int i39 = 8;
        q qVar10 = null;
        h hVar37 = new h(500005, "音乐小酒馆", i37, i38, i39, qVar10);
        T = hVar37;
        int i41 = 2;
        int i42 = 0;
        int i43 = 8;
        q qVar11 = null;
        h hVar38 = new h(500006, "钓鱼达人", i41, i42, i43, qVar11);
        U = hVar38;
        h hVar39 = new h(500007, "国王派对", i37, i38, i39, qVar10);
        V = hVar39;
        h hVar40 = new h(500008, "派对互动", i41, i42, i43, qVar11);
        W = hVar40;
        arrayList.add(hVar);
        arrayList.add(hVar2);
        arrayList.add(hVar3);
        arrayList.add(hVar4);
        arrayList.add(hVar5);
        arrayList.add(hVar6);
        arrayList.add(hVar7);
        arrayList.add(hVar8);
        arrayList.add(hVar9);
        arrayList.add(hVar10);
        arrayList.add(hVar11);
        arrayList.add(hVar28);
        arrayList.add(hVar29);
        arrayList.add(hVar30);
        arrayList.add(hVar33);
        arrayList.add(hVar34);
        arrayList.add(hVar35);
        arrayList.add(hVar24);
        arrayList.add(hVar12);
        arrayList.add(hVar36);
        arrayList.add(hVar25);
        arrayList.add(hVar26);
        arrayList.add(hVar37);
        arrayList.add(hVar38);
        arrayList.add(hVar13);
        arrayList.add(hVar15);
        arrayList.add(hVar31);
        arrayList.add(hVar32);
        arrayList.add(hVar27);
        arrayList.add(hVar16);
        arrayList.add(hVar14);
        arrayList.add(hVar17);
        arrayList.add(hVar39);
        arrayList.add(hVar18);
        arrayList.add(hVar19);
        arrayList.add(hVar20);
        arrayList.add(hVar21);
        arrayList.add(hVar40);
        arrayList.add(hVar22);
        arrayList.add(hVar23);
    }

    public h(int i11, @NotNull String modeName, int i12, int i13) {
        v.j(modeName, "modeName");
        this.id = i11;
        this.modeName = modeName;
        this.funcType = i12;
        this.groupType = i13;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getFuncType() {
        return this.funcType;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final int getGroupType() {
        return this.groupType;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getId() {
        return this.id;
    }

    @NotNull
    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getModeName() {
        return this.modeName;
    }

    public /* synthetic */ h(int i11, String str, int i12, int i13, int i14, q qVar) {
        this(i11, str, i12, (i14 & 8) != 0 ? 1 : i13);
    }
}