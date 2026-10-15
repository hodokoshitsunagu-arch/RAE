package cn.soulapp.cpnt_voiceparty.soulhouse.playmode;

import androidx.exifinterface.media.ExifInterface;
import cn.mate.android.config.SConfiger;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.umeng.analytics.pro.bt;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.z0;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: ModeConflictConfigurationV2.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b]\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bh\u0010iJ>\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\u0006\u0010\t\u001a\u00020\u0003J\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\u0006\u0010\u000b\u001a\u00020\u0003R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0011R!\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R!\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\u0014\u001a\u0004\b\u0018\u0010\u0016R!\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u001b\u0010\u0016R!\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0014\u001a\u0004\b\u001e\u0010\u0016R!\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u0014\u001a\u0004\b!\u0010\u0016R!\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u0014\u001a\u0004\b$\u0010\u0016R!\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u0014\u001a\u0004\b'\u0010\u0016R!\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010\u0014\u001a\u0004\b*\u0010\u0016R!\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010\u0014\u001a\u0004\b&\u0010\u0016R!\u00100\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010\u0014\u001a\u0004\b/\u0010\u0016R!\u00102\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u0014\u001a\u0004\b1\u0010\u0016R!\u00104\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u0010\u0014\u001a\u0004\b \u0010\u0016R!\u00106\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u0014\u001a\u0004\b5\u0010\u0016R!\u00108\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u0010\u0014\u001a\u0004\b#\u0010\u0016R!\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010\u0014\u001a\u0004\b:\u0010\u0016R!\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010\u0014\u001a\u0004\b=\u0010\u0016R!\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0014\u001a\u0004\b<\u0010\u0016R!\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010\u0014\u001a\u0004\b@\u0010\u0016R!\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0014\u001a\u0004\bB\u0010\u0016R!\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bD\u0010\u0014\u001a\u0004\b)\u0010\u0016R!\u0010H\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bF\u0010\u0014\u001a\u0004\bG\u0010\u0016R!\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u0010\u0014\u001a\u0004\bJ\u0010\u0016R!\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0014\u001a\u0004\b3\u0010\u0016R!\u0010N\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bM\u0010\u0014\u001a\u0004\b,\u0010\u0016R!\u0010P\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bO\u0010\u0014\u001a\u0004\b.\u0010\u0016R!\u0010S\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bQ\u0010\u0014\u001a\u0004\bR\u0010\u0016R!\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u0014\u001a\u0004\b9\u0010\u0016R!\u0010V\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\u0014\u001a\u0004\bU\u0010\u0016R!\u0010Y\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bW\u0010\u0014\u001a\u0004\bX\u0010\u0016R!\u0010Z\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010\u0014\u001a\u0004\bI\u0010\u0016R!\u0010\\\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u0010\u0014\u001a\u0004\b[\u0010\u0016R!\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u0010\u0014\u001a\u0004\b\u001d\u0010\u0016R!\u0010_\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b^\u0010\u0014\u001a\u0004\b\u001a\u0010\u0016R!\u0010`\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bX\u0010\u0014\u001a\u0004\b^\u0010\u0016R!\u0010a\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bU\u0010\u0014\u001a\u0004\bM\u0010\u0016R!\u0010b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\u0014\u001a\u0004\bF\u0010\u0016R!\u0010c\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u0010\u0014\u001a\u0004\bW\u0010\u0016R!\u0010d\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b@\u0010\u0014\u001a\u0004\bO\u0010\u0016R!\u0010e\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bR\u0010\u0014\u001a\u0004\bD\u0010\u0016R!\u0010f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bJ\u0010\u0014\u001a\u0004\b7\u0010\u0016R!\u0010g\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b[\u0010\u0014\u001a\u0004\bQ\u0010\u0016¨\u0006j"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/ModeConflictConfigurationV2;", "", "", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/h;", "baseMutualGroups", "additionalConflicts", "excludeFromBase", "", "c", "playModeType", "p", "toOpenMode", l11l11I1111l.l111l1111lIl, "", ExpcompatUtils.COMPAT_VALUE_780, "Z", "enable", "Ljava/util/Set;", "coreGameMutualConflictGroup", "d", "Lkotlin/Lazy;", "z", "()Ljava/util/List;", "ktvConflictList", "t", "guineaPigConflictList", "f", "n", "bulletConflictList", "g", "v", "h5PlayGameConflictList", "h", ExifInterface.LONGITUDE_EAST, "otherH5PlayGameConflictList", "i", "D", "mysteryGameConflictList", "j", "M", "sooFunGameConflictList", "k", "U", "werewolfConflictList", "l", "barrageGameConflictList", "m", "G", "pkConflictList", ExifInterface.LATITUDE_SOUTH, "turtleSoupConflictList", "o", "auctionConflictList", "I", "qubaoShowConflictList", "q", "auctionPKConflictList", "r", "H", "pvpConflictList", "s", bt.aF, "h5GameConflictList", "guessWordConflictList", "O", "spyConflictList", "N", "speedMatchConflictList", "w", "beatHeartConflictList", "x", ExifInterface.GPS_DIRECTION_TRUE, "virtualLiveConflictList", "y", "Q", "throwingThunderConflictList", "ceremonyConflictList", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "bigVipConflictList", "B", "bistroMusicConflictList", "C", "P", "studyRoomConflictList", "friendsCabinConflictList", "L", "songRequestConflictList", "F", "K", "singingRoomConflictList", "kingGameConflictList", "R", "treeHoleConflictList", "aiPodCastRoomConflictList", "J", "aiPlaygroundConflictList", "raceRoomConflictList", "musicConflictList", "hotTopicConflictList", "partyInteractionConflictList", "musicMarketConflictList", "heartAdventureConflictList", "fishingMasterConflictList", "musicTavernConflictList", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class ModeConflictConfigurationV2 {

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    @NotNull
    private static final Lazy bigVipConflictList;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    @NotNull
    private static final Lazy bistroMusicConflictList;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    @NotNull
    private static final Lazy studyRoomConflictList;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    @NotNull
    private static final Lazy friendsCabinConflictList;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    @NotNull
    private static final Lazy songRequestConflictList;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    @NotNull
    private static final Lazy singingRoomConflictList;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    @NotNull
    private static final Lazy kingGameConflictList;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    @NotNull
    private static final Lazy treeHoleConflictList;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    @NotNull
    private static final Lazy aiPodCastRoomConflictList;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    @NotNull
    private static final Lazy aiPlaygroundConflictList;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    @NotNull
    private static final Lazy raceRoomConflictList;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    @NotNull
    private static final Lazy musicConflictList;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    @NotNull
    private static final Lazy hotTopicConflictList;

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    @NotNull
    private static final Lazy partyInteractionConflictList;

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    @NotNull
    private static final Lazy musicMarketConflictList;

    /* JADX INFO: renamed from: P, reason: from kotlin metadata */
    @NotNull
    private static final Lazy heartAdventureConflictList;

    /* JADX INFO: renamed from: Q, reason: from kotlin metadata */
    @NotNull
    private static final Lazy fishingMasterConflictList;

    /* JADX INFO: renamed from: R, reason: from kotlin metadata */
    @NotNull
    private static final Lazy musicTavernConflictList;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final ModeConflictConfigurationV2 f154930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private static final boolean enable;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Set<h> coreGameMutualConflictGroup;
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy ktvConflictList;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy guineaPigConflictList;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy bulletConflictList;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy h5PlayGameConflictList;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy otherH5PlayGameConflictList;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy mysteryGameConflictList;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy sooFunGameConflictList;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy werewolfConflictList;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy barrageGameConflictList;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy pkConflictList;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy turtleSoupConflictList;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy auctionConflictList;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy qubaoShowConflictList;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy auctionPKConflictList;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy pvpConflictList;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy h5GameConflictList;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy guessWordConflictList;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy spyConflictList;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy speedMatchConflictList;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy beatHeartConflictList;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy virtualLiveConflictList;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy throwingThunderConflictList;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Lazy ceremonyConflictList;

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 46, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f154930a = new ModeConflictConfigurationV2();
        enable = SConfiger.getBoolean("ModeConflictConfigurationV2", true);
        coreGameMutualConflictGroup = z0.k(h.f154983h, h.f154984i, h.f154985j, h.f154986k, h.f154987l, h.f154988m, h.f154989n, h.f154990o, h.f154991p, h.f154992q, h.f154993r, h.f154994s, h.f154995t, h.f154996u, h.f154997v, h.f154998w, h.f154999x, h.f155000y, h.f155001z, h.A, h.B, h.C, h.G, h.H, h.I, h.J, h.K, h.L, h.M, h.N, h.O, h.D, h.W);
        ktvConflictList = kotlin.j.b(ModeConflictConfigurationV2$ktvConflictList$2.INSTANCE);
        guineaPigConflictList = kotlin.j.b(ModeConflictConfigurationV2$guineaPigConflictList$2.INSTANCE);
        bulletConflictList = kotlin.j.b(ModeConflictConfigurationV2$bulletConflictList$2.INSTANCE);
        h5PlayGameConflictList = kotlin.j.b(ModeConflictConfigurationV2$h5PlayGameConflictList$2.INSTANCE);
        otherH5PlayGameConflictList = kotlin.j.b(ModeConflictConfigurationV2$otherH5PlayGameConflictList$2.INSTANCE);
        mysteryGameConflictList = kotlin.j.b(ModeConflictConfigurationV2$mysteryGameConflictList$2.INSTANCE);
        sooFunGameConflictList = kotlin.j.b(ModeConflictConfigurationV2$sooFunGameConflictList$2.INSTANCE);
        werewolfConflictList = kotlin.j.b(ModeConflictConfigurationV2$werewolfConflictList$2.INSTANCE);
        barrageGameConflictList = kotlin.j.b(ModeConflictConfigurationV2$barrageGameConflictList$2.INSTANCE);
        pkConflictList = kotlin.j.b(ModeConflictConfigurationV2$pkConflictList$2.INSTANCE);
        turtleSoupConflictList = kotlin.j.b(ModeConflictConfigurationV2$turtleSoupConflictList$2.INSTANCE);
        auctionConflictList = kotlin.j.b(ModeConflictConfigurationV2$auctionConflictList$2.INSTANCE);
        qubaoShowConflictList = kotlin.j.b(ModeConflictConfigurationV2$qubaoShowConflictList$2.INSTANCE);
        auctionPKConflictList = kotlin.j.b(ModeConflictConfigurationV2$auctionPKConflictList$2.INSTANCE);
        pvpConflictList = kotlin.j.b(ModeConflictConfigurationV2$pvpConflictList$2.INSTANCE);
        h5GameConflictList = kotlin.j.b(ModeConflictConfigurationV2$h5GameConflictList$2.INSTANCE);
        guessWordConflictList = kotlin.j.b(ModeConflictConfigurationV2$guessWordConflictList$2.INSTANCE);
        spyConflictList = kotlin.j.b(ModeConflictConfigurationV2$spyConflictList$2.INSTANCE);
        speedMatchConflictList = kotlin.j.b(ModeConflictConfigurationV2$speedMatchConflictList$2.INSTANCE);
        beatHeartConflictList = kotlin.j.b(ModeConflictConfigurationV2$beatHeartConflictList$2.INSTANCE);
        virtualLiveConflictList = kotlin.j.b(ModeConflictConfigurationV2$virtualLiveConflictList$2.INSTANCE);
        throwingThunderConflictList = kotlin.j.b(ModeConflictConfigurationV2$throwingThunderConflictList$2.INSTANCE);
        ceremonyConflictList = kotlin.j.b(ModeConflictConfigurationV2$ceremonyConflictList$2.INSTANCE);
        bigVipConflictList = kotlin.j.b(ModeConflictConfigurationV2$bigVipConflictList$2.INSTANCE);
        bistroMusicConflictList = kotlin.j.b(ModeConflictConfigurationV2$bistroMusicConflictList$2.INSTANCE);
        studyRoomConflictList = kotlin.j.b(ModeConflictConfigurationV2$studyRoomConflictList$2.INSTANCE);
        friendsCabinConflictList = kotlin.j.b(ModeConflictConfigurationV2$friendsCabinConflictList$2.INSTANCE);
        songRequestConflictList = kotlin.j.b(ModeConflictConfigurationV2$songRequestConflictList$2.INSTANCE);
        singingRoomConflictList = kotlin.j.b(ModeConflictConfigurationV2$singingRoomConflictList$2.INSTANCE);
        kingGameConflictList = kotlin.j.b(ModeConflictConfigurationV2$kingGameConflictList$2.INSTANCE);
        treeHoleConflictList = kotlin.j.b(ModeConflictConfigurationV2$treeHoleConflictList$2.INSTANCE);
        aiPodCastRoomConflictList = kotlin.j.b(ModeConflictConfigurationV2$aiPodCastRoomConflictList$2.INSTANCE);
        aiPlaygroundConflictList = kotlin.j.b(ModeConflictConfigurationV2$aiPlaygroundConflictList$2.INSTANCE);
        raceRoomConflictList = kotlin.j.b(ModeConflictConfigurationV2$raceRoomConflictList$2.INSTANCE);
        musicConflictList = kotlin.j.b(ModeConflictConfigurationV2$musicConflictList$2.INSTANCE);
        hotTopicConflictList = kotlin.j.b(ModeConflictConfigurationV2$hotTopicConflictList$2.INSTANCE);
        partyInteractionConflictList = kotlin.j.b(ModeConflictConfigurationV2$partyInteractionConflictList$2.INSTANCE);
        musicMarketConflictList = kotlin.j.b(ModeConflictConfigurationV2$musicMarketConflictList$2.INSTANCE);
        heartAdventureConflictList = kotlin.j.b(ModeConflictConfigurationV2$heartAdventureConflictList$2.INSTANCE);
        fishingMasterConflictList = kotlin.j.b(ModeConflictConfigurationV2$fishingMasterConflictList$2.INSTANCE);
        musicTavernConflictList = kotlin.j.b(ModeConflictConfigurationV2$musicTavernConflictList$2.INSTANCE);
    }

    private ModeConflictConfigurationV2() {
    }

    private final List<h> A() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 37, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) musicConflictList.getValue();
    }

    private final List<h> B() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 40, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) musicMarketConflictList.getValue();
    }

    private final List<h> C() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 43, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) musicTavernConflictList.getValue();
    }

    private final List<h> D() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) mysteryGameConflictList.getValue();
    }

    private final List<h> E() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) otherH5PlayGameConflictList.getValue();
    }

    private final List<h> F() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 39, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) partyInteractionConflictList.getValue();
    }

    private final List<h> G() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 12, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) pkConflictList.getValue();
    }

    private final List<h> H() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 17, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) pvpConflictList.getValue();
    }

    private final List<h> I() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 15, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) qubaoShowConflictList.getValue();
    }

    private final List<h> J() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 36, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) raceRoomConflictList.getValue();
    }

    private final List<h> K() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 31, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) singingRoomConflictList.getValue();
    }

    private final List<h> L() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 30, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) songRequestConflictList.getValue();
    }

    private final List<h> M() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 9, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) sooFunGameConflictList.getValue();
    }

    private final List<h> N() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 21, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) speedMatchConflictList.getValue();
    }

    private final List<h> O() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 20, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) spyConflictList.getValue();
    }

    private final List<h> P() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 28, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) studyRoomConflictList.getValue();
    }

    private final List<h> Q() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 24, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) throwingThunderConflictList.getValue();
    }

    private final List<h> R() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 33, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) treeHoleConflictList.getValue();
    }

    private final List<h> S() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 13, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) turtleSoupConflictList.getValue();
    }

    private final List<h> T() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 23, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) virtualLiveConflictList.getValue();
    }

    private final List<h> U() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 10, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) werewolfConflictList.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<h> c(Set<h> baseMutualGroups, Set<h> additionalConflicts, Set<h> excludeFromBase) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{baseMutualGroups, additionalConflicts, excludeFromBase}, this, changeQuickRedirect, false, 2, new Class[]{Set.class, Set.class, Set.class}, List.class);
        if (patchProxyResultProxy.isSupported) {
            return (List) patchProxyResultProxy.result;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.addAll(baseMutualGroups);
        linkedHashSet.addAll(additionalConflicts);
        linkedHashSet.removeAll(excludeFromBase);
        return CollectionsKt___CollectionsKt.q1(linkedHashSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ List d(ModeConflictConfigurationV2 modeConflictConfigurationV2, Set set, Set set2, Set set3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            set = z0.f();
        }
        if ((i11 & 2) != 0) {
            set2 = z0.f();
        }
        if ((i11 & 4) != 0) {
            set3 = z0.f();
        }
        return modeConflictConfigurationV2.c(set, set2, set3);
    }

    private final List<h> f() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 35, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) aiPlaygroundConflictList.getValue();
    }

    private final List<h> g() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 34, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) aiPodCastRoomConflictList.getValue();
    }

    private final List<h> h() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 14, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) auctionConflictList.getValue();
    }

    private final List<h> i() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 16, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) auctionPKConflictList.getValue();
    }

    private final List<h> j() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 11, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) barrageGameConflictList.getValue();
    }

    private final List<h> k() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 22, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) beatHeartConflictList.getValue();
    }

    private final List<h> l() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 26, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) bigVipConflictList.getValue();
    }

    private final List<h> m() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 27, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) bistroMusicConflictList.getValue();
    }

    private final List<h> n() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) bulletConflictList.getValue();
    }

    private final List<h> o() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 25, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) ceremonyConflictList.getValue();
    }

    private final List<h> q() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 42, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) fishingMasterConflictList.getValue();
    }

    private final List<h> r() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 29, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) friendsCabinConflictList.getValue();
    }

    private final List<h> s() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 19, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) guessWordConflictList.getValue();
    }

    private final List<h> t() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) guineaPigConflictList.getValue();
    }

    private final List<h> u() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 18, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) h5GameConflictList.getValue();
    }

    private final List<h> v() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) h5PlayGameConflictList.getValue();
    }

    private final List<h> w() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 41, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) heartAdventureConflictList.getValue();
    }

    private final List<h> x() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 38, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) hotTopicConflictList.getValue();
    }

    private final List<h> y() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 32, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) kingGameConflictList.getValue();
    }

    private final List<h> z() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) ktvConflictList.getValue();
    }

    @NotNull
    public final List<h> e(@NotNull h toOpenMode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{toOpenMode}, this, changeQuickRedirect, false, 45, new Class[]{h.class}, List.class);
        if (patchProxyResultProxy.isSupported) {
            return (List) patchProxyResultProxy.result;
        }
        v.j(toOpenMode, "toOpenMode");
        if (v.e(toOpenMode, h.f154983h)) {
            return z();
        }
        if (v.e(toOpenMode, h.f154984i)) {
            return G();
        }
        if (v.e(toOpenMode, h.K)) {
            return S();
        }
        if (v.e(toOpenMode, h.P)) {
            return A();
        }
        if (v.e(toOpenMode, h.f154985j)) {
            return h();
        }
        if (v.e(toOpenMode, h.f154999x)) {
            return I();
        }
        if (v.e(toOpenMode, h.f154989n)) {
            return i();
        }
        if (v.e(toOpenMode, h.f154988m)) {
            return H();
        }
        if (v.e(toOpenMode, h.f154991p)) {
            return t();
        }
        if (v.e(toOpenMode, h.L) ? true : v.e(toOpenMode, h.M)) {
            return u();
        }
        if (v.e(toOpenMode, h.Q)) {
            return x();
        }
        if (v.e(toOpenMode, h.f154987l)) {
            return N();
        }
        if (v.e(toOpenMode, h.f154986k)) {
            return k();
        }
        if (v.e(toOpenMode, h.R)) {
            return B();
        }
        if (v.e(toOpenMode, h.f154990o)) {
            return T();
        }
        if (v.e(toOpenMode, h.f155000y)) {
            return K();
        }
        if (v.e(toOpenMode, h.f154992q)) {
            return Q();
        }
        if (v.e(toOpenMode, h.f154993r)) {
            return m();
        }
        if (v.e(toOpenMode, h.f154994s)) {
            return o();
        }
        if (v.e(toOpenMode, h.f154996u)) {
            return P();
        }
        if (v.e(toOpenMode, h.f154997v)) {
            return r();
        }
        if (v.e(toOpenMode, h.B)) {
            return L();
        }
        if (v.e(toOpenMode, h.V)) {
            return y();
        }
        if (v.e(toOpenMode, h.f155001z)) {
            return g();
        }
        if (v.e(toOpenMode, h.C)) {
            return f();
        }
        if (v.e(toOpenMode, h.A)) {
            return R();
        }
        if (v.e(toOpenMode, h.D)) {
            return J();
        }
        return v.e(toOpenMode, h.W) ? F() : kotlin.collections.v.m();
    }

    @NotNull
    public final List<h> p(@NotNull h playModeType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{playModeType}, this, changeQuickRedirect, false, 44, new Class[]{h.class}, List.class);
        if (patchProxyResultProxy.isSupported) {
            return (List) patchProxyResultProxy.result;
        }
        v.j(playModeType, "playModeType");
        if (v.e(playModeType, h.f154983h)) {
            return z();
        }
        if (v.e(playModeType, h.f154984i)) {
            return G();
        }
        if (v.e(playModeType, h.K)) {
            return S();
        }
        if (v.e(playModeType, h.P)) {
            return A();
        }
        if (v.e(playModeType, h.f154985j)) {
            return h();
        }
        if (v.e(playModeType, h.f154999x)) {
            return I();
        }
        if (v.e(playModeType, h.f154989n)) {
            return i();
        }
        if (v.e(playModeType, h.f154988m)) {
            return H();
        }
        if (v.e(playModeType, h.L)) {
            return O();
        }
        if (v.e(playModeType, h.M)) {
            return s();
        }
        if (v.e(playModeType, h.Q)) {
            return x();
        }
        if (v.e(playModeType, h.f154987l)) {
            return N();
        }
        if (v.e(playModeType, h.f154986k)) {
            return k();
        }
        if (v.e(playModeType, h.R)) {
            return B();
        }
        if (v.e(playModeType, h.f154991p)) {
            return t();
        }
        if (v.e(playModeType, h.f154990o)) {
            return T();
        }
        if (v.e(playModeType, h.f155000y)) {
            return K();
        }
        if (v.e(playModeType, h.f154992q)) {
            return Q();
        }
        if (v.e(playModeType, h.f154993r)) {
            return m();
        }
        if (v.e(playModeType, h.G)) {
            return n();
        }
        if (v.e(playModeType, h.H)) {
            return v();
        }
        if (v.e(playModeType, h.I)) {
            return E();
        }
        if (v.e(playModeType, h.N)) {
            return D();
        }
        if (v.e(playModeType, h.O)) {
            return U();
        }
        if (v.e(playModeType, h.f154998w)) {
            return j();
        }
        if (v.e(playModeType, h.f154994s)) {
            return o();
        }
        if (v.e(playModeType, h.f154995t)) {
            return l();
        }
        if (v.e(playModeType, h.f154996u)) {
            return P();
        }
        if (v.e(playModeType, h.S)) {
            return w();
        }
        if (v.e(playModeType, h.U)) {
            return q();
        }
        if (v.e(playModeType, h.T)) {
            return C();
        }
        if (v.e(playModeType, h.f154997v)) {
            return r();
        }
        if (v.e(playModeType, h.B)) {
            return L();
        }
        if (v.e(playModeType, h.J)) {
            return M();
        }
        if (v.e(playModeType, h.V)) {
            return y();
        }
        if (v.e(playModeType, h.f155001z)) {
            return g();
        }
        if (v.e(playModeType, h.C)) {
            return f();
        }
        if (v.e(playModeType, h.A)) {
            return R();
        }
        if (v.e(playModeType, h.D)) {
            return J();
        }
        return v.e(playModeType, h.W) ? F() : new ArrayList();
    }
}