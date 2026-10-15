package cn.soulapp.cpnt_voiceparty.soulhouse.playmode;

import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.bean.ChatRoomModel;
import cn.soulapp.cpnt_voiceparty.bean.FunctionBean;
import cn.soulapp.cpnt_voiceparty.function.b0;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.bean.MusicMachineInfo;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.MusicMarketInfo;
import cn.soulapp.cpnt_voiceparty.util.CommonUtil;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.umeng.analytics.pro.bt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: ModeConflictConfiguration.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b`\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bs\u0010tJ\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u001b\u0010\t\u001a\u0004\u0018\u00010\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ,\u0010\u0014\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011j\n\u0012\u0004\u0012\u00020\u0012\u0018\u0001`\u00132\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u0002J\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u0002J\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\u0018\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0003\u001a\u00020\u0002J!\u0010\u001b\u001a\u00020\r2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00072\b\u0010\u001a\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ!\u0010\u001d\u001a\u00020\r2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00072\b\u0010\u001a\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u001d\u0010\u001cJ!\u0010\u001e\u001a\u00020\r2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00072\b\u0010\u001a\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u001e\u0010\u001cR\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u001fR\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u001fR\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u001fR\u001a\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001fR\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001a\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u001fR\u001a\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u001fR\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010\u001fR\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010\u001fR\u001a\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010\u001fR\u001a\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u001fR\u001a\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010\u001fR\u001a\u00101\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010\u001fR\u001a\u00103\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u0010\u001fR\u001a\u00104\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u001fR\u001a\u00106\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u0010\u001fR\u001a\u00108\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u0010\u001fR\u001a\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010\u001fR\u001a\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010\u001fR\u001a\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010\u001fR\u001a\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010\u001fR\u001a\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010\u001fR\u001a\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010\u001fR\u001a\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010\u001fR\u001a\u0010H\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010\u001fR\u001a\u0010J\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010\u001fR\u001a\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010\u001fR\u001a\u0010N\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010\u001fR\u001a\u0010P\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010\u001fR!\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bQ\u0010R\u001a\u0004\b2\u0010SR!\u0010V\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bU\u0010R\u001a\u0004\b+\u0010SR!\u0010X\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bW\u0010R\u001a\u0004\b'\u0010SR!\u0010Z\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010R\u001a\u0004\b.\u0010SR!\u0010\\\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b[\u0010R\u001a\u0004\b)\u0010SR!\u0010^\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b]\u0010R\u001a\u0004\b0\u0010SR\u001a\u0010`\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b_\u0010\u001fR\u001a\u0010b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\ba\u0010\u001fR\u001a\u0010d\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bc\u0010\u001fR\u001a\u0010f\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\be\u0010\u001fR\u001a\u0010h\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bg\u0010\u001fR\u001a\u0010j\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bi\u0010\u001fR\u001a\u0010l\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bk\u0010\u001fR\u001a\u0010n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bm\u0010\u001fR\u001a\u0010p\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bo\u0010\u001fR\u001a\u0010r\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bq\u0010\u001f¨\u0006u"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/ModeConflictConfiguration;", "", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/h;", "toOpenMode", "conflictMode", "", "p", "", "functionId", "l", "(Ljava/lang/Integer;)Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/h;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/SoulHouseDriver;", "soulHouseDriver", "", "d", "(Lcn/soulapp/cpnt_voiceparty/soulhouse/SoulHouseDriver;Ljava/lang/Integer;)Z", "playModeType", "Ljava/util/ArrayList;", "Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "Lkotlin/collections/ArrayList;", "g", "", "h", ExpcompatUtils.COMPAT_VALUE_780, "c", "modeType", "techType", l11l11I1111l.l111l1111lIl, "(Ljava/lang/Integer;Ljava/lang/Integer;)Z", "a", "f", "Ljava/util/List;", "ktvConflictList", "guineaPigConflictList", "bulletConflictList", "h5PlayGameConflictList", "otherH5PlayGameConflictList", "mysteryGameConflictList", "sooFunGameConflictList", "i", "werewolfConflictList", "j", "barrageGameConflictList", "k", "pkConflictList", "turtleSoupConflictList", "m", "musicConflictList", "n", "auctionConflictList", "o", "qubaoShowConflictList", "auctionPKConflictList", "q", "pvpConflictList", "r", "hotTopicConflictList", "s", "partyInteractionConflictList", "t", "musicMarketConflictList", bt.aF, "h5GameConflictList", "v", "guessWordConflictList", "w", "spyConflictList", "x", "speedMatchConflictList", "y", "beatHeartConflictList", "z", "virtualLiveConflictList", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "throwingThunderConflictList", "B", "ceremonyConflictList", "C", "bigVipConflictList", "D", "bistroMusicConflictList", ExifInterface.LONGITUDE_EAST, "Lkotlin/Lazy;", "()Ljava/util/List;", "studyRoomConflictList", "F", "heartAdventureConflictList", "G", "fishingMasterConflictList", "H", "musicTavernConflictList", "I", "friendsCabinConflictList", "J", "songRequestConflictList", "K", "atmosphereConflictList", "L", "singingRoomConflictList", "M", "kingGameConflictList", "N", "treeHoleConflictList", "O", "aiPodCastRoomConflictList", "P", "aiPlaygroundConflictList", "Q", "raceRoomConflictList", "R", "videoLiveConflictList", ExifInterface.LATITUDE_SOUTH, "screenCastConflictList", ExifInterface.GPS_DIRECTION_TRUE, "funGamePassList", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class ModeConflictConfiguration {

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    @NotNull
    private static final List<h> throwingThunderConflictList;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    @NotNull
    private static final List<h> ceremonyConflictList;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    @NotNull
    private static final List<h> bigVipConflictList;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    @NotNull
    private static final List<h> bistroMusicConflictList;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    @NotNull
    private static final Lazy studyRoomConflictList;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    @NotNull
    private static final Lazy heartAdventureConflictList;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    @NotNull
    private static final Lazy fishingMasterConflictList;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    @NotNull
    private static final Lazy musicTavernConflictList;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    @NotNull
    private static final Lazy friendsCabinConflictList;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    @NotNull
    private static final Lazy songRequestConflictList;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    @NotNull
    private static final List<h> atmosphereConflictList;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    @NotNull
    private static final List<h> singingRoomConflictList;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    @NotNull
    private static final List<h> kingGameConflictList;

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    @NotNull
    private static final List<h> treeHoleConflictList;

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    @NotNull
    private static final List<h> aiPodCastRoomConflictList;

    /* JADX INFO: renamed from: P, reason: from kotlin metadata */
    @NotNull
    private static final List<h> aiPlaygroundConflictList;

    /* JADX INFO: renamed from: Q, reason: from kotlin metadata */
    @NotNull
    private static final List<h> raceRoomConflictList;

    /* JADX INFO: renamed from: R, reason: from kotlin metadata */
    @NotNull
    private static final List<h> videoLiveConflictList;

    /* JADX INFO: renamed from: S, reason: from kotlin metadata */
    @NotNull
    private static final List<h> screenCastConflictList;

    /* JADX INFO: renamed from: T, reason: from kotlin metadata */
    @NotNull
    private static final List<h> funGamePassList;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final ModeConflictConfiguration f154904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> ktvConflictList;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> guineaPigConflictList;
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> bulletConflictList;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> h5PlayGameConflictList;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> otherH5PlayGameConflictList;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> mysteryGameConflictList;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> sooFunGameConflictList;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> werewolfConflictList;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> barrageGameConflictList;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> pkConflictList;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> turtleSoupConflictList;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> musicConflictList;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> auctionConflictList;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> qubaoShowConflictList;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> auctionPKConflictList;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> pvpConflictList;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> hotTopicConflictList;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> partyInteractionConflictList;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> musicMarketConflictList;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> h5GameConflictList;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> guessWordConflictList;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> spyConflictList;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> speedMatchConflictList;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> beatHeartConflictList;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<h> virtualLiveConflictList;

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 20, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f154904a = new ModeConflictConfiguration();
        h hVar = h.L;
        h hVar2 = h.M;
        h hVar3 = h.f154986k;
        h hVar4 = h.f154987l;
        h hVar5 = h.K;
        h hVar6 = h.P;
        h hVar7 = h.Q;
        h hVar8 = h.W;
        h hVar9 = h.f154985j;
        h hVar10 = h.f154989n;
        h hVar11 = h.f154991p;
        h hVar12 = h.f154984i;
        h hVar13 = h.f154988m;
        h hVar14 = h.f154990o;
        h hVar15 = h.f155000y;
        h hVar16 = h.f154992q;
        h hVar17 = h.G;
        h hVar18 = h.H;
        h hVar19 = h.I;
        h hVar20 = h.f154993r;
        h hVar21 = h.f154994s;
        h hVar22 = h.f154995t;
        h hVar23 = h.f154996u;
        h hVar24 = h.f154997v;
        h hVar25 = h.B;
        h hVar26 = h.N;
        h hVar27 = h.O;
        h hVar28 = h.J;
        h hVar29 = h.f154998w;
        h hVar30 = h.f155001z;
        h hVar31 = h.C;
        h hVar32 = h.V;
        h hVar33 = h.f154999x;
        h hVar34 = h.D;
        h hVar35 = h.A;
        h hVar36 = h.E;
        h hVar37 = h.F;
        ktvConflictList = v.p(hVar, hVar2, hVar3, hVar4, hVar5, hVar6, hVar7, hVar8, hVar9, hVar10, hVar11, hVar12, hVar13, hVar14, hVar15, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar32, hVar33, hVar34, hVar35, hVar36, hVar37);
        h hVar38 = h.f154983h;
        h hVar39 = h.R;
        h hVar40 = h.U;
        guineaPigConflictList = v.p(hVar38, hVar9, hVar10, hVar4, hVar3, hVar2, hVar7, hVar8, hVar, hVar5, hVar12, hVar13, hVar39, hVar6, hVar14, hVar15, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar30, hVar31, hVar29, hVar32, hVar33, hVar40, hVar34, hVar35, hVar36, hVar37);
        bulletConflictList = v.p(hVar38, hVar9, hVar10, hVar4, hVar3, hVar2, hVar7, hVar8, hVar, hVar5, hVar12, hVar13, hVar39, hVar6, hVar14, hVar15, hVar16, hVar11, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar32, hVar33, hVar34, hVar35, hVar36, hVar37);
        h hVar41 = h.T;
        h5PlayGameConflictList = v.p(hVar9, hVar38, hVar4, hVar3, hVar12, hVar, hVar5, hVar2, hVar7, hVar8, hVar39, hVar6, hVar10, hVar14, hVar15, hVar13, hVar11, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar41, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar32, hVar33, hVar34, hVar40, hVar35, hVar36, hVar37);
        h hVar42 = h.S;
        otherH5PlayGameConflictList = v.p(hVar9, hVar38, hVar4, hVar3, hVar12, hVar, hVar5, hVar2, hVar7, hVar8, hVar39, hVar6, hVar10, hVar14, hVar15, hVar13, hVar11, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar42, hVar41, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar32, hVar33, hVar34, hVar40, hVar35, hVar36, hVar37);
        mysteryGameConflictList = v.p(hVar9, hVar38, hVar4, hVar3, hVar12, hVar, hVar5, hVar2, hVar7, hVar8, hVar39, hVar6, hVar10, hVar14, hVar15, hVar13, hVar11, hVar17, hVar18, hVar19, hVar26, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar42, hVar41, hVar27, hVar28, hVar29, hVar30, hVar31, hVar32, hVar33, hVar34, hVar40, hVar35, hVar36, hVar37);
        sooFunGameConflictList = v.p(hVar9, hVar38, hVar4, hVar3, hVar12, hVar, hVar5, hVar2, hVar7, hVar8, hVar39, hVar6, hVar10, hVar14, hVar15, hVar13, hVar11, hVar17, hVar18, hVar19, hVar26, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar42, hVar41, hVar27, hVar28, hVar29, hVar30, hVar31, hVar32, hVar34, hVar33, hVar40, hVar35, hVar36, hVar37);
        werewolfConflictList = v.p(hVar9, hVar38, hVar4, hVar3, hVar12, hVar, hVar5, hVar2, hVar7, hVar8, hVar39, hVar6, hVar10, hVar14, hVar15, hVar13, hVar11, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar42, hVar41, hVar26, hVar28, hVar30, hVar31, hVar29, hVar32, hVar33, hVar34, hVar40, hVar35, hVar36, hVar37);
        barrageGameConflictList = v.p(hVar9, hVar38, hVar4, hVar3, hVar12, hVar, hVar5, hVar2, hVar7, hVar8, hVar39, hVar6, hVar10, hVar14, hVar15, hVar13, hVar11, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar42, hVar41, hVar26, hVar27, hVar30, hVar31, hVar28, hVar32, hVar34, hVar33, hVar40, hVar35, hVar36, hVar37);
        pkConflictList = v.p(hVar, hVar2, hVar3, hVar4, hVar5, hVar7, hVar8, hVar11, hVar9, hVar10, hVar38, hVar13, hVar14, hVar15, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar41, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar30, hVar31, hVar29, hVar32, hVar34, hVar33, hVar35, hVar36, hVar37);
        turtleSoupConflictList = v.p(hVar, hVar2, hVar3, hVar4, hVar12, hVar11, hVar7, hVar8, hVar9, hVar10, hVar38, hVar13, hVar14, hVar15, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar41, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar32, hVar34, hVar33, hVar35, hVar36, hVar37);
        musicConflictList = v.p(hVar39, hVar11, hVar38, hVar17, hVar18, hVar19, hVar20, hVar41, hVar23, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar35);
        auctionConflictList = v.p(hVar, hVar2, hVar3, hVar4, hVar12, hVar7, hVar8, hVar11, hVar5, hVar38, hVar13, hVar10, hVar14, hVar15, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar41, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar30, hVar31, hVar29, hVar32, hVar34, hVar33, hVar35, hVar36, hVar37);
        qubaoShowConflictList = v.p(hVar, hVar2, hVar3, hVar4, hVar12, hVar7, hVar8, hVar11, hVar5, hVar38, hVar13, hVar10, hVar14, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar41, hVar23, hVar24, hVar25, hVar26, hVar27, hVar9, hVar30, hVar31, hVar32, hVar34, hVar29, hVar35, hVar36, hVar37);
        auctionPKConflictList = v.p(hVar9, hVar2, hVar3, hVar4, hVar12, hVar, hVar11, hVar7, hVar8, hVar5, hVar38, hVar13, hVar14, hVar15, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar41, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar32, hVar34, hVar33, hVar35, hVar36, hVar37);
        pvpConflictList = v.p(hVar, hVar2, hVar3, hVar4, hVar11, hVar12, hVar7, hVar8, hVar9, hVar10, hVar38, hVar5, hVar14, hVar15, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar32, hVar34, hVar33, hVar35, hVar36, hVar37);
        hotTopicConflictList = v.p(hVar, hVar2, hVar3, hVar4, hVar12, hVar5, hVar11, hVar9, hVar10, hVar38, hVar13, hVar14, hVar15, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar32, hVar34, hVar33, hVar35, hVar8, hVar36, hVar37);
        partyInteractionConflictList = v.p(hVar38, hVar12, hVar9, hVar10, hVar3, hVar4, hVar13, hVar14, hVar11, hVar16, hVar5, hVar, hVar2, hVar26, hVar27, hVar17, hVar18, hVar19, hVar28, hVar29, hVar20, hVar15, hVar21, hVar22, hVar23, hVar24, hVar25, hVar30, hVar31, hVar34, hVar33, hVar35, hVar7, hVar32, hVar39, hVar41);
        musicMarketConflictList = v.p(hVar11, hVar6, hVar17, hVar18, hVar19, hVar20, hVar22, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar32, hVar30, hVar34, hVar31, hVar35, hVar8);
        h5GameConflictList = v.p(hVar, hVar2, hVar3, hVar4, hVar12, hVar6, hVar39, hVar11, hVar7, hVar8, hVar9, hVar38, hVar5, hVar13, hVar14, hVar15, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar32, hVar33, hVar34, hVar40, hVar35, hVar36, hVar37);
        guessWordConflictList = v.p(hVar, hVar3, hVar4, hVar12, hVar7, hVar8, hVar9, hVar11, hVar38, hVar5, hVar13, hVar14, hVar15, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar41, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar32, hVar34, hVar33, hVar40, hVar35, hVar36, hVar37);
        spyConflictList = v.p(hVar2, hVar3, hVar4, hVar12, hVar7, hVar8, hVar11, hVar9, hVar38, hVar5, hVar13, hVar14, hVar15, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar41, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar32, hVar34, hVar33, hVar40, hVar35, hVar36, hVar37);
        speedMatchConflictList = v.p(hVar, hVar2, hVar3, hVar12, hVar7, hVar8, hVar11, hVar9, hVar38, hVar5, hVar13, hVar14, hVar15, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar41, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar34, hVar32, hVar33, hVar35, hVar36, hVar37);
        beatHeartConflictList = v.p(hVar4, hVar38, hVar9, hVar2, hVar11, hVar7, hVar8, hVar, hVar5, hVar12, hVar13, hVar14, hVar15, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar41, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar32, hVar34, hVar33, hVar35, hVar36, hVar37);
        virtualLiveConflictList = v.p(hVar4, hVar38, hVar9, hVar2, hVar7, hVar8, hVar, hVar5, hVar3, hVar12, hVar13, hVar11, hVar15, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar33, hVar30, hVar34, hVar31, hVar35, hVar36, hVar37);
        throwingThunderConflictList = v.p(hVar10, hVar11, hVar14, hVar15, hVar9, hVar38, hVar12, hVar7, hVar8, hVar2, hVar, hVar5, hVar4, hVar3, hVar13, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar41, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar32, hVar34, hVar33, hVar35, hVar36, hVar37);
        ceremonyConflictList = v.p(hVar10, hVar11, hVar14, hVar15, hVar9, hVar38, hVar12, hVar7, hVar8, hVar2, hVar, hVar5, hVar4, hVar3, hVar13, hVar17, hVar18, hVar19, hVar20, hVar16, hVar22, hVar41, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar34, hVar32, hVar33, hVar35, hVar36, hVar37);
        bigVipConflictList = v.p(hVar10, hVar11, hVar14, hVar15, hVar9, hVar38, hVar12, hVar7, hVar8, hVar2, hVar, hVar5, hVar4, hVar3, hVar13, hVar17, hVar18, hVar19, hVar20, hVar16, hVar39, hVar21, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar34, hVar32, hVar33, hVar35, hVar36, hVar37);
        bistroMusicConflictList = v.p(hVar10, hVar11, hVar14, hVar15, hVar9, hVar38, hVar12, hVar7, hVar8, hVar2, hVar, hVar5, hVar4, hVar3, hVar13, hVar17, hVar18, hVar19, hVar16, hVar6, hVar39, hVar21, hVar22, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar34, hVar33, hVar35, hVar36, hVar37);
        studyRoomConflictList = kotlin.j.b(ModeConflictConfiguration$studyRoomConflictList$2.INSTANCE);
        heartAdventureConflictList = kotlin.j.b(ModeConflictConfiguration$heartAdventureConflictList$2.INSTANCE);
        fishingMasterConflictList = kotlin.j.b(ModeConflictConfiguration$fishingMasterConflictList$2.INSTANCE);
        musicTavernConflictList = kotlin.j.b(ModeConflictConfiguration$musicTavernConflictList$2.INSTANCE);
        friendsCabinConflictList = kotlin.j.b(ModeConflictConfiguration$friendsCabinConflictList$2.INSTANCE);
        songRequestConflictList = kotlin.j.b(ModeConflictConfiguration$songRequestConflictList$2.INSTANCE);
        atmosphereConflictList = v.p(hVar39, hVar11, hVar3, hVar14, hVar38, hVar21, hVar17, hVar18, hVar19, hVar20, hVar41, hVar24, hVar25, hVar2, hVar22, hVar, hVar23, hVar26, hVar6, hVar27, hVar34, hVar28, hVar29, hVar31);
        singingRoomConflictList = v.p(hVar38, hVar, hVar2, hVar3, hVar4, hVar5, hVar7, hVar8, hVar9, hVar10, hVar11, hVar12, hVar13, hVar14, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar42, hVar41, hVar27, hVar29, hVar30, hVar31, hVar34, hVar32, hVar33, hVar35, hVar36, hVar37);
        kingGameConflictList = v.p(hVar38, hVar, hVar2, hVar3, hVar4, hVar5, hVar7, hVar8, hVar9, hVar10, hVar11, hVar12, hVar13, hVar14, hVar16, hVar17, hVar18, hVar19, hVar21, hVar22, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar34, hVar33, hVar15, hVar35, hVar36, hVar37);
        treeHoleConflictList = v.p(hVar38, hVar, hVar2, hVar3, hVar4, hVar5, hVar7, hVar8, hVar9, hVar10, hVar11, hVar12, hVar13, hVar14, hVar16, hVar17, hVar18, hVar19, hVar21, hVar22, hVar23, hVar24, hVar26, hVar27, hVar28, hVar29, hVar30, hVar31, hVar33, hVar15, hVar20, hVar32, hVar6, hVar39, hVar42, hVar34, hVar41, hVar40, hVar25, hVar36, hVar37);
        aiPodCastRoomConflictList = v.p(hVar38, hVar, hVar2, hVar3, hVar4, hVar5, hVar7, hVar8, hVar9, hVar6, hVar10, hVar11, hVar12, hVar13, hVar14, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar42, hVar41, hVar15, hVar29, hVar31, hVar34, hVar32, hVar33, hVar35, hVar36, hVar37);
        aiPlaygroundConflictList = v.p(hVar38, hVar, hVar2, hVar3, hVar4, hVar5, hVar7, hVar8, hVar9, hVar10, hVar11, hVar12, hVar13, hVar14, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar42, hVar41, hVar15, hVar29, hVar30, hVar32, hVar33, hVar35, hVar34, hVar39, hVar40, hVar6, hVar36, hVar37);
        raceRoomConflictList = v.p(hVar38, hVar, hVar2, hVar3, hVar4, hVar5, hVar7, hVar8, hVar9, hVar10, hVar11, hVar12, hVar13, hVar14, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar42, hVar41, hVar27, hVar29, hVar30, hVar31, hVar32, hVar33, hVar35, hVar15, hVar36, hVar37);
        videoLiveConflictList = v.p(hVar38, hVar, hVar2, hVar3, hVar4, hVar5, hVar7, hVar9, hVar10, hVar11, hVar12, hVar13, hVar14, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar42, hVar41, hVar29, hVar30, hVar31, hVar32, hVar33, hVar35, hVar15, hVar34, hVar37);
        screenCastConflictList = v.p(hVar38, hVar, hVar2, hVar3, hVar4, hVar5, hVar7, hVar9, hVar10, hVar11, hVar12, hVar13, hVar14, hVar16, hVar17, hVar18, hVar19, hVar20, hVar21, hVar22, hVar23, hVar24, hVar25, hVar26, hVar27, hVar28, hVar42, hVar41, hVar29, hVar30, hVar31, hVar32, hVar33, hVar35, hVar15, hVar34, hVar36);
        funGamePassList = v.p(h.f154982g, hVar9, hVar10, hVar15, hVar42, hVar12, hVar7);
    }

    private ModeConflictConfiguration() {
    }

    private final List<h> i() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) fishingMasterConflictList.getValue();
    }

    private final List<h> j() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) friendsCabinConflictList.getValue();
    }

    private final List<h> k() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) heartAdventureConflictList.getValue();
    }

    private final h l(Integer functionId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{functionId}, this, changeQuickRedirect, false, 11, new Class[]{Integer.class}, h.class);
        if (patchProxyResultProxy.isSupported) {
            return (h) patchProxyResultProxy.result;
        }
        for (h hVar : h.INSTANCE.a()) {
            int id2 = hVar.getId();
            if (functionId != null && id2 == functionId.intValue()) {
                return hVar;
            }
        }
        return null;
    }

    private final List<h> m() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) musicTavernConflictList.getValue();
    }

    private final List<h> n() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) songRequestConflictList.getValue();
    }

    private final List<h> o() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) studyRoomConflictList.getValue();
    }

    private final String p(h toOpenMode, h conflictMode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{toOpenMode, conflictMode}, this, changeQuickRedirect, false, 8, new Class[]{h.class, h.class}, String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        return "正在使用「" + conflictMode.getModeName() + "」,关闭后才能使用「" + toOpenMode.getModeName() + (char) 12301;
    }

    public final boolean a(@Nullable Integer modeType, @Nullable Integer techType) {
        boolean z11;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{modeType, techType}, this, changeQuickRedirect, false, 17, new Class[]{Integer.class, Integer.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (CommonUtil.f161882a.M0()) {
            int id2 = h.P.getId();
            if (modeType != null && modeType.intValue() == id2) {
                return false;
            }
        }
        List<h> list = atmosphereConflictList;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z11 = false;
                    break;
                }
                if (modeType != null && ((h) it.next()).getId() == modeType.intValue()) {
                    z11 = true;
                    break;
                }
            }
        } else {
            z11 = false;
            break;
        }
        return z11 || (techType != null && 4 == techType.intValue()) || ((techType != null && 5 == techType.intValue()) || ((techType != null && 6 == techType.intValue()) || (techType != null && 7 == techType.intValue())));
    }

    @NotNull
    public final List<h> b(@NotNull h toOpenMode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{toOpenMode}, this, changeQuickRedirect, false, 14, new Class[]{h.class}, List.class);
        if (patchProxyResultProxy.isSupported) {
            return (List) patchProxyResultProxy.result;
        }
        kotlin.jvm.internal.v.j(toOpenMode, "toOpenMode");
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f154983h)) {
            return ktvConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f154984i)) {
            return pkConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.K)) {
            return turtleSoupConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.P)) {
            return musicConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f154985j)) {
            return auctionConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f154999x)) {
            return qubaoShowConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f154989n)) {
            return auctionPKConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f154988m)) {
            return pvpConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f154991p)) {
            return guineaPigConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.L) ? true : kotlin.jvm.internal.v.e(toOpenMode, h.M)) {
            return h5GameConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.Q)) {
            return hotTopicConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f154987l)) {
            return speedMatchConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f154986k)) {
            return beatHeartConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.R)) {
            return musicMarketConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f154990o)) {
            return virtualLiveConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f155000y)) {
            return singingRoomConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f154992q)) {
            return throwingThunderConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f154993r)) {
            return bistroMusicConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f154994s)) {
            return ceremonyConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f154996u)) {
            return o();
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f154997v)) {
            return j();
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.B)) {
            return n();
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.V)) {
            return kingGameConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.f155001z)) {
            return aiPodCastRoomConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.C)) {
            return aiPlaygroundConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.A)) {
            return treeHoleConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.D)) {
            return raceRoomConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.W)) {
            return partyInteractionConflictList;
        }
        if (kotlin.jvm.internal.v.e(toOpenMode, h.E)) {
            return videoLiveConflictList;
        }
        return kotlin.jvm.internal.v.e(toOpenMode, h.F) ? screenCastConflictList : v.m();
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00b9  */
    public final boolean c(@Nullable SoulHouseDriver soulHouseDriver, @NotNull h toOpenMode) {
        boolean z11;
        ChatRoomModel chatRoomModelF;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soulHouseDriver, toOpenMode}, this, changeQuickRedirect, false, 15, new Class[]{SoulHouseDriver.class, h.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        kotlin.jvm.internal.v.j(toOpenMode, "toOpenMode");
        List<h> listB = b(toOpenMode);
        b0 b0Var = b0.f142548a;
        Integer numI = b0Var.i(soulHouseDriver);
        int iIntValue = numI != null ? numI.intValue() : 0;
        h hVar = null;
        boolean z12 = (soulHouseDriver != null ? (MusicMachineInfo) soulHouseDriver.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.O()) : null) != null;
        boolean z13 = !TextUtils.isEmpty((soulHouseDriver == null || (chatRoomModelF = SoulHouseExtensionKt.f(soulHouseDriver)) == null) ? null : chatRoomModelF.hotTopicTitle);
        boolean zN = b0.n(b0Var, soulHouseDriver, Integer.valueOf(h.f154989n.getId()), null, 4, null);
        if ((soulHouseDriver != null ? (MusicMarketInfo) soulHouseDriver.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.Q()) : null) == null) {
            z11 = false;
        } else {
            MusicMarketInfo musicMarketInfo = (MusicMarketInfo) soulHouseDriver.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.Q());
            if (kotlin.jvm.internal.v.e(musicMarketInfo != null ? musicMarketInfo.getState() : null, "1")) {
                z11 = true;
            } else {
                z11 = false;
            }
        }
        boolean zN2 = b0.n(b0Var, soulHouseDriver, Integer.valueOf(h.W.getId()), null, 4, null);
        for (h hVar2 : listB) {
            if (kotlin.jvm.internal.v.e(hVar2, h.P)) {
                if (z12) {
                    hVar = hVar2;
                }
            } else if (kotlin.jvm.internal.v.e(hVar2, h.Q)) {
                if (z13) {
                    hVar = hVar2;
                }
            } else if (kotlin.jvm.internal.v.e(hVar2, h.R)) {
                if (z11) {
                    hVar = hVar2;
                }
            } else if (kotlin.jvm.internal.v.e(hVar2, h.f154989n)) {
                if (zN) {
                    hVar = hVar2;
                }
            } else if (kotlin.jvm.internal.v.e(hVar2, h.W)) {
                if (zN2) {
                    hVar = hVar2;
                }
            } else if (iIntValue == hVar2.getId()) {
                hVar = hVar2;
            }
        }
        if (hVar == null) {
            return false;
        }
        cn.soulapp.lib.widget.toast.e.u(p(toOpenMode, hVar));
        return true;
    }

    public final boolean d(@Nullable SoulHouseDriver soulHouseDriver, @Nullable Integer functionId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soulHouseDriver, functionId}, this, changeQuickRedirect, false, 10, new Class[]{SoulHouseDriver.class, Integer.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        h hVarL = l(functionId);
        if (hVarL != null) {
            return c(soulHouseDriver, hVarL);
        }
        return false;
    }

    public final boolean e(@Nullable Integer modeType, @Nullable Integer techType) {
        boolean z11;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{modeType, techType}, this, changeQuickRedirect, false, 16, new Class[]{Integer.class, Integer.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        List<h> list = musicConflictList;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z11 = false;
                    break;
                }
                if (modeType != null && ((h) it.next()).getId() == modeType.intValue()) {
                    z11 = true;
                    break;
                }
            }
        } else {
            z11 = false;
            break;
        }
        return z11 || (techType != null && 4 == techType.intValue()) || ((techType != null && 5 == techType.intValue()) || ((techType != null && 6 == techType.intValue()) || (techType != null && 7 == techType.intValue())));
    }

    public final boolean f(@Nullable Integer modeType, @Nullable Integer techType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{modeType, techType}, this, changeQuickRedirect, false, 19, new Class[]{Integer.class, Integer.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        int id2 = h.O.getId();
        if (modeType == null || id2 != modeType.intValue()) {
            int id3 = h.f154983h.getId();
            if (modeType == null || id3 != modeType.intValue()) {
                int id4 = h.C.getId();
                if ((modeType == null || id4 != modeType.intValue()) && ((techType == null || 4 != techType.intValue()) && ((techType == null || 2 != techType.intValue()) && ((techType == null || 3 != techType.intValue()) && ((techType == null || 5 != techType.intValue()) && ((techType == null || 6 != techType.intValue()) && (techType == null || 7 != techType.intValue()))))))) {
                    return false;
                }
            }
        }
        return true;
    }

    @Nullable
    public final ArrayList<FunctionBean> g(@Nullable SoulHouseDriver soulHouseDriver, @NotNull h playModeType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soulHouseDriver, playModeType}, this, changeQuickRedirect, false, 12, new Class[]{SoulHouseDriver.class, h.class}, ArrayList.class);
        if (patchProxyResultProxy.isSupported) {
            return (ArrayList) patchProxyResultProxy.result;
        }
        kotlin.jvm.internal.v.j(playModeType, "playModeType");
        List<h> listH = h(playModeType);
        List<FunctionBean> listB = b0.f142548a.b(soulHouseDriver);
        ArrayList<FunctionBean> arrayList = new ArrayList<>();
        for (h hVar : listH) {
            if (listB != null) {
                for (FunctionBean functionBean : listB) {
                    int id2 = hVar.getId();
                    Integer bizType = functionBean.getBizType();
                    if (bizType != null && id2 == bizType.intValue()) {
                        arrayList.add(functionBean);
                    } else {
                        if (hVar.getGroupType() == 3) {
                            Integer techType = functionBean.getTechType();
                            int groupType = hVar.getGroupType();
                            if (techType != null && techType.intValue() == groupType) {
                                arrayList.add(functionBean);
                            }
                        }
                        if (hVar.getGroupType() == 4) {
                            Integer techType2 = functionBean.getTechType();
                            int groupType2 = hVar.getGroupType();
                            if (techType2 != null && techType2.intValue() == groupType2) {
                                arrayList.add(functionBean);
                            }
                        }
                        if (hVar.getGroupType() == 5) {
                            Integer techType3 = functionBean.getTechType();
                            int groupType3 = hVar.getGroupType();
                            if (techType3 != null && techType3.intValue() == groupType3) {
                                arrayList.add(functionBean);
                            }
                        }
                        if (hVar.getGroupType() == 6) {
                            Integer techType4 = functionBean.getTechType();
                            int groupType4 = hVar.getGroupType();
                            if (techType4 != null && techType4.intValue() == groupType4) {
                                arrayList.add(functionBean);
                            }
                        }
                        if (hVar.getGroupType() == 7) {
                            Integer techType5 = functionBean.getTechType();
                            int groupType5 = hVar.getGroupType();
                            if (techType5 != null && techType5.intValue() == groupType5) {
                                arrayList.add(functionBean);
                            }
                        }
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    @NotNull
    public final List<h> h(@NotNull h playModeType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{playModeType}, this, changeQuickRedirect, false, 13, new Class[]{h.class}, List.class);
        if (patchProxyResultProxy.isSupported) {
            return (List) patchProxyResultProxy.result;
        }
        kotlin.jvm.internal.v.j(playModeType, "playModeType");
        if (kotlin.jvm.internal.v.e(playModeType, h.f154983h)) {
            return ktvConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154984i)) {
            return pkConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.K)) {
            return turtleSoupConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.P)) {
            return musicConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154985j)) {
            return auctionConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154999x)) {
            return qubaoShowConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154989n)) {
            return auctionPKConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154988m)) {
            return pvpConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.L)) {
            return spyConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.M)) {
            return guessWordConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.Q)) {
            return hotTopicConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154987l)) {
            return speedMatchConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154986k)) {
            return beatHeartConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.R)) {
            return musicMarketConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154991p)) {
            return guineaPigConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154990o)) {
            return virtualLiveConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f155000y)) {
            return singingRoomConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154992q)) {
            return throwingThunderConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154993r)) {
            return bistroMusicConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.G)) {
            return bulletConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.H)) {
            return h5PlayGameConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.I)) {
            return otherH5PlayGameConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.N)) {
            return mysteryGameConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.O)) {
            return werewolfConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154998w)) {
            return barrageGameConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154994s)) {
            return ceremonyConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154995t)) {
            return bigVipConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154996u)) {
            return o();
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.S)) {
            return k();
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.U)) {
            return i();
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.T)) {
            return m();
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f154997v)) {
            return j();
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.B)) {
            return n();
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.J)) {
            return sooFunGameConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.V)) {
            return kingGameConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.f155001z)) {
            return aiPodCastRoomConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.C)) {
            return aiPlaygroundConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.A)) {
            return treeHoleConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.D)) {
            return raceRoomConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.W)) {
            return partyInteractionConflictList;
        }
        if (kotlin.jvm.internal.v.e(playModeType, h.E)) {
            return videoLiveConflictList;
        }
        return kotlin.jvm.internal.v.e(playModeType, h.F) ? screenCastConflictList : new ArrayList();
    }
}