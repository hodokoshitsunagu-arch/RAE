package cn.soulapp.cpnt_voiceparty.rn.createroom;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import cn.soul.android.ccpa.services.IRtcSurfaceLocator;
import cn.soul.android.ccpa.services.ISRNApiPromise;
import cn.soul.android.component.SoulRouter;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.client.component.middle.platform.utils.application.AppListenerHelper;
import cn.soulapp.android.lib.analyticsV2.Const;
import cn.soulapp.android.lib.common.utils.env.ApiEnv;
import cn.soulapp.android.lib.media.livevideo.ISoulLiveVideoService;
import cn.soulapp.android.lib.media.livevideo.SoulLiveVideoCallback;
import cn.soulapp.android.lib.media.livevideo.SoulLiveVideoDegradeListener;
import cn.soulapp.android.lib.media.livevideo.SoulLiveVideoScreenCastListener;
import cn.soulapp.android.lib.media.livevideo.SoulLiveVideoServiceFactory;
import cn.soulapp.android.lib.media.rtc.RtcParams;
import cn.soulapp.android.lib.media.zego.RoomChatEngineManager;
import cn.soulapp.android.lib.media.zego.interfaces.IChatRoomEngine;
import cn.soulapp.cpnt_voiceparty.ChatRoomModule;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveBaseResCallback;
import cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveConst;
import cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveMaterialCallback;
import cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveMaterialKind;
import cn.soulapp.cpnt_voiceparty.soulhouse.x;
import cn.soulapp.cpnt_voiceparty.util.CommonUtil;
import cn.soulapp.cpnt_voiceparty.util.SwitchUtil;
import cn.soulapp.cpnt_voiceparty.util.n1;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.modules.appstate.AppStateModule;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.soul.slplayer.audio.cache.utils.VideoParamsUtils;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import com.tencent.open.SocialConstants;
import com.umeng.analytics.pro.bt;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.q0;
import kotlin.collections.r0;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\b\b*\u0002\u0084\u0001\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\u008a\u0001EB\u000b\b\u0002¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J(\u0010\b\u001a\u00020\u00072\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J(\u0010\t\u001a\u00020\u00072\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J(\u0010\n\u001a\u00020\u00072\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J(\u0010\u000b\u001a\u00020\u00072\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J(\u0010\f\u001a\u00020\u00072\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J(\u0010\r\u001a\u00020\u00072\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J(\u0010\u000e\u001a\u00020\u00072\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J(\u0010\u000f\u001a\u00020\u00072\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J(\u0010\u0010\u001a\u00020\u00072\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J(\u0010\u0011\u001a\u00020\u00072\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J(\u0010\u0013\u001a\u00020\u00072\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0014\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0015\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0003J\u0006\u0010\u0018\u001a\u00020\u0007J\u0010\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019J\b\u0010\u001d\u001a\u00020\u0007H\u0002J\b\u0010\u001e\u001a\u00020\u001bH\u0002J\u0016\u0010!\u001a\u00020\u001b2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00070\u001fH\u0002J\u0010\u0010$\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\"H\u0002J \u0010&\u001a\u00020\u00072\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001f2\u0006\u0010\u0016\u001a\u00020\u0003H\u0002J\b\u0010(\u001a\u00020'H\u0002J\b\u0010)\u001a\u00020\u0007H\u0002J\u0010\u0010+\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0003H\u0002J\u0010\u0010,\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0003H\u0002J\u0010\u0010.\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u0003H\u0002J\b\u0010/\u001a\u00020\u0007H\u0002J\u0010\u00100\u001a\u00020\"2\u0006\u0010\u0016\u001a\u00020\u0003H\u0002J\u0010\u00101\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u0003H\u0002J\b\u00102\u001a\u00020\u0007H\u0002J\b\u00103\u001a\u00020\u0007H\u0002J\b\u00104\u001a\u00020\u001bH\u0002J\u0018\u00105\u001a\u00020\u0007*\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\u0002J\u0016\u00107\u001a\u00020\u0007*\u0004\u0018\u00010\u00052\u0006\u00106\u001a\u00020\u0003H\u0002J2\u0010=\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u00108\u001a\u00020\u00032\u0006\u00109\u001a\u00020\u00032\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020\u0003H\u0002J\b\u0010>\u001a\u00020\u0007H\u0002J\u0010\u0010?\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0003H\u0002J\u0010\u0010@\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0003H\u0002J2\u0010C\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010A\u001a\u00020\u00032\u0006\u00109\u001a\u00020\u00032\u0006\u0010B\u001a\u00020\"2\u0006\u00106\u001a\u00020\u0003H\u0002R\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010J\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010M\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010P\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0018\u0010S\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010U\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010LR\u001e\u0010X\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010WR\u001e\u0010]\u001a\n\u0012\u0004\u0012\u00020Z\u0018\u00010Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u0016\u0010`\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0016\u0010b\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010_R\u0016\u0010d\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010LR\u0016\u0010f\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010LR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0018\u0010n\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010mR\u0018\u0010p\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010mR\u001a\u0010u\u001a\b\u0012\u0004\u0012\u00020r0q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010tR\u0018\u0010y\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u0016\u0010{\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010LR\u0016\u0010}\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010LR\u0016\u0010\u007f\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010LR\u0018\u0010\u0081\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010LR\u0018\u0010\u0083\u0001\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010RR\u0018\u0010\u0087\u0001\u001a\u00030\u0084\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001¨\u0006\u008b\u0001"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate;", "", "", "", "data", "Lcn/soul/android/ccpa/services/ISRNApiPromise;", BaseJavaModule.METHOD_TYPE_PROMISE, "Lkotlin/w;", "O0", "P0", "R0", "K0", "L0", "J0", "I0", "l0", "S0", "w0", "x0", "M0", "Q0", "G0", "reason", "E0", "F0", "Landroid/app/Activity;", "activity", "", "y0", "d0", "m0", "Lkotlin/Function0;", "onExited", "q0", "", "attempt", "f0", "retry", "u0", "Lcn/soulapp/android/lib/media/livevideo/ISoulLiveVideoService;", "o0", "p0", SocialConstants.PARAM_SOURCE, "C0", "D0", "surfaceID", "H0", "N0", "A0", "k0", "i0", "n0", "z0", "B0", "message", "r0", "id", "rnKind", "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialKind;", "kind", "localPath", "h0", "v0", "s0", "j0", "effectId", MediationConstant.KEY_ERROR_CODE, "t0", "Landroid/os/Handler;", ExpcompatUtils.COMPAT_VALUE_780, "Landroid/os/Handler;", "mainHandler", "c", "Lcn/soulapp/android/lib/media/livevideo/ISoulLiveVideoService;", "service", "d", "Z", "engineOwned", l11l11I1111l.l111l1111lIl, "Ljava/lang/Object;", "ownedEngine", "f", "Ljava/lang/String;", "previewSurfaceID", "g", "exitingPreviewRoom", "h", "Lkotlin/jvm/functions/Function0;", "pendingPreviewRetry", "Ljava/lang/ref/WeakReference;", "Landroid/view/ViewGroup;", "i", "Ljava/lang/ref/WeakReference;", "previewContainer", "j", "I", "previewBaseChildCount", "k", "licenseState", "l", "screencastArmed", "m", "screencastCaptureStarted", "Lcn/soul/android/ccpa/services/IRtcSurfaceLocator$SurfaceLifecycleListener;", "n", "Lcn/soul/android/ccpa/services/IRtcSurfaceLocator$SurfaceLifecycleListener;", "surfaceListener", "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveBaseResCallback;", "o", "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveBaseResCallback;", "baseResCallback", "p", "segmentWearResCallback", "", "Lcn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$a;", "q", "Ljava/util/Set;", "inflightMaterialDownloads", "Lcn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$b;", "r", "Lcn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$b;", "pendingSegmentWear", "s", "lifecycleRegistered", "t", "lastPreviewMirror", bt.aF, "lastPushMirror", "v", "lastFrontCamera", "w", "lastQualityCode", "cn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$k", "x", "Lcn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$k;", "screenCastListener", AppAgent.CONSTRUCT, "()V", "a", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class VideoLiveCreateRoomDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final VideoLiveCreateRoomDelegate f143692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Handler mainHandler;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static ISoulLiveVideoService service;
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private static boolean engineOwned;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static Object ownedEngine;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static String previewSurfaceID;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private static boolean exitingPreviewRoom;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static Function0<kotlin.w> pendingPreviewRetry;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static WeakReference<ViewGroup> previewContainer;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private static int previewBaseChildCount;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private static volatile int licenseState;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private static boolean screencastArmed;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private static boolean screencastCaptureStarted;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static IRtcSurfaceLocator.SurfaceLifecycleListener surfaceListener;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static VideoLiveBaseResCallback baseResCallback;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static VideoLiveBaseResCallback segmentWearResCallback;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Set<a> inflightMaterialDownloads;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static b pendingSegmentWear;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private static boolean lifecycleRegistered;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private static boolean lastPreviewMirror;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private static boolean lastPushMirror;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private static boolean lastFrontCamera;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static String lastQualityCode;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final k screenCastListener;

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u000e¢\u0006\u0004\b\u0019\u0010\u001aJ\t\u0010\u0003\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0005\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0012\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R$\u0010\u0018\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0014\u001a\u0004\b\t\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$a;", "", "", "toString", "", "hashCode", Const.HeartReason.OTHER, "", "equals", "a", "Ljava/lang/String;", ExpcompatUtils.COMPAT_VALUE_780, "()Ljava/lang/String;", "id", "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialKind;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialKind;", "c", "()Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialKind;", "kind", "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialCallback;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialCallback;", "()Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialCallback;", "d", "(Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialCallback;)V", TextureRenderKeys.KEY_IS_CALLBACK, AppAgent.CONSTRUCT, "(Ljava/lang/String;Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialKind;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    private static final /* data */ class a {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        @NotNull
        private final String id;

        /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
        @NotNull
        private final VideoLiveMaterialKind kind;

        /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
        @Nullable
        private VideoLiveMaterialCallback callback;

        public a(@NotNull String id2, @NotNull VideoLiveMaterialKind kind) {
            kotlin.jvm.internal.v.j(id2, "id");
            kotlin.jvm.internal.v.j(kind, "kind");
            this.id = id2;
            this.kind = kind;
        }

        @Nullable
        /* JADX INFO: renamed from: a, reason: from getter */
        public final VideoLiveMaterialCallback getCallback() {
            return this.callback;
        }

        @NotNull
        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getId() {
            return this.id;
        }

        @NotNull
        /* JADX INFO: renamed from: c, reason: from getter */
        public final VideoLiveMaterialKind getKind() {
            return this.kind;
        }

        public final void d(@Nullable VideoLiveMaterialCallback videoLiveMaterialCallback) {
            this.callback = videoLiveMaterialCallback;
        }

        public boolean equals(@Nullable Object other) {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{other}, this, changeQuickRedirect, false, 5, new Class[]{Object.class}, Boolean.TYPE);
            if (patchProxyResultProxy.isSupported) {
                return ((Boolean) patchProxyResultProxy.result).booleanValue();
            }
            if (this == other) {
                return true;
            }
            if (!(other instanceof a)) {
                return false;
            }
            a aVar = (a) other;
            return kotlin.jvm.internal.v.e(this.id, aVar.id) && this.kind == aVar.kind;
        }

        public int hashCode() {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Integer.TYPE);
            return patchProxyResultProxy.isSupported ? ((Integer) patchProxyResultProxy.result).intValue() : (this.id.hashCode() * 31) + this.kind.hashCode();
        }

        @NotNull
        public String toString() {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], String.class);
            if (patchProxyResultProxy.isSupported) {
                return (String) patchProxyResultProxy.result;
            }
            return "InflightMaterialDownload(id=" + this.id + ", kind=" + this.kind + ')';
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\b\u0082\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0003\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0005\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\t\u0010\u000bR\u0017\u0010\u000f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\u000e\u0010\u000bR\u0017\u0010\u0014\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\r\u0010\u0013R\u0017\u0010\u0015\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u0011\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$b;", "", "", "toString", "", "hashCode", Const.HeartReason.OTHER, "", "equals", "a", "Ljava/lang/String;", "()Ljava/lang/String;", "id", ExpcompatUtils.COMPAT_VALUE_780, "d", "rnKind", "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialKind;", "c", "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialKind;", "()Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialKind;", "kind", "localPath", AppAgent.CONSTRUCT, "(Ljava/lang/String;Ljava/lang/String;Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialKind;Ljava/lang/String;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    private static final /* data */ class b {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        @NotNull
        private final String id;

        /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
        @NotNull
        private final String rnKind;

        /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
        @NotNull
        private final VideoLiveMaterialKind kind;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
        @NotNull
        private final String localPath;

        public b(@NotNull String id2, @NotNull String rnKind, @NotNull VideoLiveMaterialKind kind, @NotNull String localPath) {
            kotlin.jvm.internal.v.j(id2, "id");
            kotlin.jvm.internal.v.j(rnKind, "rnKind");
            kotlin.jvm.internal.v.j(kind, "kind");
            kotlin.jvm.internal.v.j(localPath, "localPath");
            this.id = id2;
            this.rnKind = rnKind;
            this.kind = kind;
            this.localPath = localPath;
        }

        @NotNull
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getId() {
            return this.id;
        }

        @NotNull
        /* JADX INFO: renamed from: b, reason: from getter */
        public final VideoLiveMaterialKind getKind() {
            return this.kind;
        }

        @NotNull
        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getLocalPath() {
            return this.localPath;
        }

        @NotNull
        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getRnKind() {
            return this.rnKind;
        }

        public boolean equals(@Nullable Object other) {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{other}, this, changeQuickRedirect, false, 5, new Class[]{Object.class}, Boolean.TYPE);
            if (patchProxyResultProxy.isSupported) {
                return ((Boolean) patchProxyResultProxy.result).booleanValue();
            }
            if (this == other) {
                return true;
            }
            if (!(other instanceof b)) {
                return false;
            }
            b bVar = (b) other;
            return kotlin.jvm.internal.v.e(this.id, bVar.id) && kotlin.jvm.internal.v.e(this.rnKind, bVar.rnKind) && this.kind == bVar.kind && kotlin.jvm.internal.v.e(this.localPath, bVar.localPath);
        }

        public int hashCode() {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Integer.TYPE);
            return patchProxyResultProxy.isSupported ? ((Integer) patchProxyResultProxy.result).intValue() : (((((this.id.hashCode() * 31) + this.rnKind.hashCode()) * 31) + this.kind.hashCode()) * 31) + this.localPath.hashCode();
        }

        @NotNull
        public String toString() {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], String.class);
            if (patchProxyResultProxy.isSupported) {
                return (String) patchProxyResultProxy.result;
            }
            return "PendingSegmentWear(id=" + this.id + ", rnKind=" + this.rnKind + ", kind=" + this.kind + ", localPath=" + this.localPath + ')';
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"cn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$c", "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveBaseResCallback;", "Lkotlin/w;", "onReady", "", "reason", "onFailed", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class c implements VideoLiveBaseResCallback {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
        @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        public static final class a implements Runnable {
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f143723a;

            public a(String str) {
                this.f143723a = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Object objM8140constructorimpl;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
                try {
                    ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                    VideoLiveCreateRoomDelegate.f143692a.s0("base resource failed: " + this.f143723a);
                    objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
                } catch (Throwable th2) {
                    ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                    objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
                }
                Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
                if (thM8143exceptionOrNullimpl == null) {
                    return;
                }
                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
            }
        }

        /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
        @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        public static final class b implements Runnable {
            public static ChangeQuickRedirect changeQuickRedirect;

            @Override // java.lang.Runnable
            public final void run() {
                Object objM8140constructorimpl;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
                try {
                    ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                    if (cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a.i()) {
                        VideoLiveCreateRoomDelegate.f143692a.v0();
                    } else {
                        VideoLiveCreateRoomDelegate.f143692a.s0("segment resource unavailable after base ready");
                    }
                    objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
                } catch (Throwable th2) {
                    ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                    objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
                }
                Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
                if (thM8143exceptionOrNullimpl == null) {
                    return;
                }
                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
            }
        }

        c() {
        }

        @Override // cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveBaseResCallback
        public void onFailed(@NotNull String reason) {
            Object objM8140constructorimpl;
            if (PatchProxy.proxy(new Object[]{reason}, this, changeQuickRedirect, false, 3, new Class[]{String.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(reason, "reason");
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
                VideoLiveCreateRoomDelegate.mainHandler.post(new a(reason));
                return;
            }
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                VideoLiveCreateRoomDelegate.f143692a.s0("base resource failed: " + reason);
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } catch (Throwable th2) {
                ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
            }
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
        }

        @Override // cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveBaseResCallback
        public void onProgress(int i11, int i12) {
            Object[] objArr = {new Integer(i11), new Integer(i12)};
            ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
            Class cls = Integer.TYPE;
            if (PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 4, new Class[]{cls, cls}, Void.TYPE).isSupported) {
                return;
            }
            VideoLiveBaseResCallback.a.a(this, i11, i12);
        }

        @Override // cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveBaseResCallback
        public void onReady() {
            Object objM8140constructorimpl;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
                VideoLiveCreateRoomDelegate.mainHandler.post(new b());
                return;
            }
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                if (cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a.i()) {
                    VideoLiveCreateRoomDelegate.f143692a.v0();
                } else {
                    VideoLiveCreateRoomDelegate.f143692a.s0("segment resource unavailable after base ready");
                }
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } catch (Throwable th2) {
                ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
            }
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class d implements Runnable {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f143724a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ISRNApiPromise f143725b;

        public d(Map map, ISRNApiPromise iSRNApiPromise) {
            this.f143724a = map;
            this.f143725b = iSRNApiPromise;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x003e  */
        /* JADX WARN: Code duplicated, block: B:38:0x0061  */
        @Override // java.lang.Runnable
        public final void run() {
            Object objM8140constructorimpl;
            String str;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                Map map = this.f143724a;
                String str2 = null;
                Object obj = map != null ? map.get("effectId") : null;
                String str3 = obj instanceof String ? (String) obj : null;
                if (str3 == null) {
                    str = null;
                } else {
                    if (str3.length() > 0) {
                        str = str3;
                    } else {
                        str = null;
                    }
                }
                Map map2 = this.f143724a;
                Object obj2 = map2 != null ? map2.get("resourceUrl") : null;
                String str4 = obj2 instanceof String ? (String) obj2 : null;
                if (str4 == null) {
                    str4 = null;
                } else {
                    if (!(str4.length() > 0)) {
                        str4 = null;
                    }
                }
                Map map3 = this.f143724a;
                Object obj3 = map3 != null ? map3.get("kind") : null;
                String str5 = obj3 instanceof String ? (String) obj3 : null;
                String str6 = (str5 == null || !cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a.i().contains(str5)) ? null : str5;
                Map map4 = this.f143724a;
                Object obj4 = map4 != null ? map4.get("md5") : null;
                String str7 = obj4 instanceof String ? (String) obj4 : null;
                if (str7 != null) {
                    if (str7.length() > 0) {
                        str2 = str7;
                    }
                }
                if (str == null || str4 == null || str6 == null) {
                    VideoLiveCreateRoomDelegate.f143692a.r0(this.f143725b, "download params invalid");
                } else {
                    cn.soulapp.cpnt_voiceparty.rn.createroom.c cVar = cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a;
                    cn.soulapp.cpnt_voiceparty.rn.createroom.c.a aVarH = cVar.h(str, str6);
                    if (aVarH == null) {
                        aVarH = cVar.k(str, str4, str6, str2);
                    }
                    cn.soulapp.cpnt_voiceparty.rn.createroom.c.a aVar = aVarH;
                    CreateRoomRtcEventSender.f143690a.b(str, str6, 0, 1, 0);
                    VideoLiveCreateRoomDelegate.f143692a.B0(this.f143725b, q0.f(kotlin.m.a("accepted", Boolean.TRUE)));
                    a aVar2 = new a(str, aVar.getKind());
                    VideoLiveCreateRoomDelegate.inflightMaterialDownloads.add(aVar2);
                    e eVar = new e(str, str6, aVar2);
                    aVar2.d(eVar);
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a.c(aVar.getItem(), aVar.getKind(), eVar);
                }
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } catch (Throwable th2) {
                ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
            }
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016¨\u0006\n"}, d2 = {"cn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$e", "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialCallback;", "", VideoParamsUtils.PERCENT, "Lkotlin/w;", "onProgress", "", "localPath", "onSuccess", "onFailed", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class e implements VideoLiveMaterialCallback {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f143726a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f143727b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ a f143728c;

        e(String str, String str2, a aVar) {
            this.f143726a = str;
            this.f143727b = str2;
            this.f143728c = aVar;
        }

        @Override // cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveMaterialCallback
        public void onFailed() {
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            VideoLiveCreateRoomDelegate.inflightMaterialDownloads.remove(this.f143728c);
            CreateRoomRtcEventSender.f143690a.b(this.f143726a, this.f143727b, 0, 3, -1);
        }

        @Override // cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveMaterialCallback
        public void onProgress(int i11) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 2, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
                return;
            }
            CreateRoomRtcEventSender.f143690a.b(this.f143726a, this.f143727b, i11, 1, 0);
        }

        @Override // cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveMaterialCallback
        public void onSuccess(@NotNull String localPath) {
            if (PatchProxy.proxy(new Object[]{localPath}, this, changeQuickRedirect, false, 3, new Class[]{String.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(localPath, "localPath");
            VideoLiveCreateRoomDelegate.inflightMaterialDownloads.remove(this.f143728c);
            CreateRoomRtcEventSender.f143690a.b(this.f143726a, this.f143727b, 100, 2, 0);
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\bH\u0016¨\u0006\u000f"}, d2 = {"cn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$f", "Landroid/app/Application$ActivityLifecycleCallbacks;", "Landroid/app/Activity;", "activity", "Lkotlin/w;", "onActivityDestroyed", "onActivityResumed", "onActivityPaused", "Landroid/os/Bundle;", "savedInstanceState", "onActivityCreated", "onActivityStarted", "onActivityStopped", "outState", "onActivitySaveInstanceState", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class f implements Application.ActivityLifecycleCallbacks {
        public static ChangeQuickRedirect changeQuickRedirect;

        f() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
            if (PatchProxy.proxy(new Object[]{activity, bundle}, this, changeQuickRedirect, false, 5, new Class[]{Activity.class, Bundle.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NotNull Activity activity) {
            if (PatchProxy.proxy(new Object[]{activity}, this, changeQuickRedirect, false, 2, new Class[]{Activity.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(activity, "activity");
            VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = VideoLiveCreateRoomDelegate.f143692a;
            if (videoLiveCreateRoomDelegate.y0(activity)) {
                videoLiveCreateRoomDelegate.E0("create_room_activity_destroyed");
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NotNull Activity activity) {
            if (PatchProxy.proxy(new Object[]{activity}, this, changeQuickRedirect, false, 4, new Class[]{Activity.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(activity, "activity");
            VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = VideoLiveCreateRoomDelegate.f143692a;
            if (videoLiveCreateRoomDelegate.y0(activity)) {
                videoLiveCreateRoomDelegate.C0("activity_paused");
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NotNull Activity activity) {
            if (PatchProxy.proxy(new Object[]{activity}, this, changeQuickRedirect, false, 3, new Class[]{Activity.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(activity, "activity");
            VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = VideoLiveCreateRoomDelegate.f143692a;
            if (videoLiveCreateRoomDelegate.y0(activity)) {
                videoLiveCreateRoomDelegate.D0("activity_resumed");
                videoLiveCreateRoomDelegate.d0();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle outState) {
            if (PatchProxy.proxy(new Object[]{activity, outState}, this, changeQuickRedirect, false, 8, new Class[]{Activity.class, Bundle.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(activity, "activity");
            kotlin.jvm.internal.v.j(outState, "outState");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NotNull Activity activity) {
            if (PatchProxy.proxy(new Object[]{activity}, this, changeQuickRedirect, false, 6, new Class[]{Activity.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NotNull Activity activity) {
            if (PatchProxy.proxy(new Object[]{activity}, this, changeQuickRedirect, false, 7, new Class[]{Activity.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(activity, "activity");
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\b"}, d2 = {"cn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$g", "Lcn/soul/android/ccpa/services/IRtcSurfaceLocator$SurfaceLifecycleListener;", "", "surfaceID", "Lkotlin/w;", "onSurfaceWillDetach", "onSurfaceHidden", "onSurfaceShown", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class g implements IRtcSurfaceLocator.SurfaceLifecycleListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        g() {
        }

        @Override // cn.soul.android.ccpa.services.IRtcSurfaceLocator.SurfaceLifecycleListener
        public void onSurfaceDidAttach(@NotNull String str) {
            if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 5, new Class[]{String.class}, Void.TYPE).isSupported) {
                return;
            }
            IRtcSurfaceLocator.SurfaceLifecycleListener.a.a(this, str);
        }

        @Override // cn.soul.android.ccpa.services.IRtcSurfaceLocator.SurfaceLifecycleListener
        public void onSurfaceHidden(@NotNull String surfaceID) {
            if (PatchProxy.proxy(new Object[]{surfaceID}, this, changeQuickRedirect, false, 3, new Class[]{String.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(surfaceID, "surfaceID");
            if (kotlin.jvm.internal.v.e(surfaceID, VideoLiveCreateRoomDelegate.previewSurfaceID)) {
                VideoLiveCreateRoomDelegate.f143692a.C0("surface_hidden");
            }
        }

        @Override // cn.soul.android.ccpa.services.IRtcSurfaceLocator.SurfaceLifecycleListener
        public void onSurfaceShown(@NotNull String surfaceID) {
            if (PatchProxy.proxy(new Object[]{surfaceID}, this, changeQuickRedirect, false, 4, new Class[]{String.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(surfaceID, "surfaceID");
            if (kotlin.jvm.internal.v.e(surfaceID, VideoLiveCreateRoomDelegate.previewSurfaceID)) {
                VideoLiveCreateRoomDelegate.f143692a.D0("surface_shown");
            }
        }

        @Override // cn.soul.android.ccpa.services.IRtcSurfaceLocator.SurfaceLifecycleListener
        public void onSurfaceWillDetach(@NotNull String surfaceID) {
            if (PatchProxy.proxy(new Object[]{surfaceID}, this, changeQuickRedirect, false, 2, new Class[]{String.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(surfaceID, "surfaceID");
            if (kotlin.jvm.internal.v.e(surfaceID, VideoLiveCreateRoomDelegate.previewSurfaceID)) {
                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "surface 即将 detach，停预览 id=" + surfaceID);
                VideoLiveCreateRoomDelegate.f143692a.k0(surfaceID);
            }
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class h implements Runnable {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f143729a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ISRNApiPromise f143730b;

        public h(Map map, ISRNApiPromise iSRNApiPromise) {
            this.f143729a = map;
            this.f143730b = iSRNApiPromise;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Object objM8140constructorimpl;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                Map map = this.f143729a;
                Object obj = map != null ? map.get("items") : null;
                List listM = obj instanceof List ? (List) obj : null;
                if (listM == null) {
                    listM = kotlin.collections.v.m();
                }
                if (listM.isEmpty()) {
                    VideoLiveCreateRoomDelegate.f143692a.B0(this.f143730b, q0.f(kotlin.m.a("states", kotlin.collections.v.m())));
                } else {
                    cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a.c(1500L, new VideoLiveCreateRoomDelegate$getEffectDownloadStates$1$1(listM, this.f143730b));
                }
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } catch (Throwable th2) {
                ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
            }
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class i implements Runnable {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ISRNApiPromise f143731a;

        public i(ISRNApiPromise iSRNApiPromise) {
            this.f143731a = iSRNApiPromise;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Object objM8140constructorimpl;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                ISoulLiveVideoService iSoulLiveVideoService = VideoLiveCreateRoomDelegate.service;
                if (iSoulLiveVideoService == null) {
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "License 查询：service 未就绪，报 Checking 不阻断");
                    VideoLiveCreateRoomDelegate.f143692a.B0(this.f143731a, q0.f(kotlin.m.a("state", 1)));
                } else {
                    if (iSoulLiveVideoService.isBeautyReady()) {
                        VideoLiveCreateRoomDelegate.licenseState = 2;
                    } else if (VideoLiveCreateRoomDelegate.licenseState == 2) {
                        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "美颜引擎已失效（曾就绪），触发重建");
                        VideoLiveCreateRoomDelegate.licenseState = 0;
                    }
                    if (VideoLiveCreateRoomDelegate.licenseState == 0 || VideoLiveCreateRoomDelegate.licenseState == 3) {
                        VideoLiveCreateRoomDelegate.f143692a.N0();
                    }
                    int i11 = VideoLiveCreateRoomDelegate.licenseState;
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "License 状态查询 → " + i11);
                    VideoLiveCreateRoomDelegate.f143692a.B0(this.f143731a, q0.f(kotlin.m.a("state", Integer.valueOf(i11))));
                }
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } catch (Throwable th2) {
                ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
            }
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class j implements Runnable {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f143732a;

        public j(String str) {
            this.f143732a = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Object objM8140constructorimpl;
            Object objM8140constructorimpl2;
            kotlin.w wVar;
            kotlin.w wVar2;
            kotlin.w wVar3;
            kotlin.w wVar4;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r rVar = cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a;
                rVar.d("VideoLiveCreateRoom", "释放建房页视频资源 reason=" + this.f143732a);
                RoomChatEngineManager roomChatEngineManager = RoomChatEngineManager.getInstance();
                boolean z11 = VideoLiveCreateRoomDelegate.ownedEngine != null && roomChatEngineManager.getChatRoomEngine() == VideoLiveCreateRoomDelegate.ownedEngine;
                if (z11) {
                    String str = VideoLiveCreateRoomDelegate.previewSurfaceID;
                    if (str != null) {
                        VideoLiveCreateRoomDelegate.f143692a.k0(str);
                    }
                    if (VideoLiveCreateRoomDelegate.screencastArmed) {
                        try {
                            ISoulLiveVideoService iSoulLiveVideoService = VideoLiveCreateRoomDelegate.service;
                            if (iSoulLiveVideoService != null) {
                                iSoulLiveVideoService.stopScreenCapture();
                                wVar3 = kotlin.w.f231958a;
                            } else {
                                wVar3 = null;
                            }
                            Result.m8140constructorimpl(wVar3);
                        } catch (Throwable th2) {
                            ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                            Result.m8140constructorimpl(kotlin.l.a(th2));
                        }
                    }
                    try {
                        ISoulLiveVideoService iSoulLiveVideoService2 = VideoLiveCreateRoomDelegate.service;
                        if (iSoulLiveVideoService2 != null) {
                            iSoulLiveVideoService2.setScreenCaptureListener(null);
                            wVar4 = kotlin.w.f231958a;
                        } else {
                            wVar4 = null;
                        }
                        Result.m8140constructorimpl(wVar4);
                    } catch (Throwable th3) {
                        ChangeQuickRedirect changeQuickRedirect5 = Result.changeQuickRedirect;
                        Result.m8140constructorimpl(kotlin.l.a(th3));
                    }
                } else if (VideoLiveCreateRoomDelegate.engineOwned || VideoLiveCreateRoomDelegate.service != null) {
                    rVar.g("VideoLiveCreateRoom", "引擎已易主，跳过全部底层调用，只摘本地 View 与登记");
                    VideoLiveCreateRoomDelegate.f143692a.i0();
                }
                VideoLiveCreateRoomDelegate.screencastArmed = false;
                VideoLiveCreateRoomDelegate.previewSurfaceID = null;
                IRtcSurfaceLocator.SurfaceLifecycleListener surfaceLifecycleListener = VideoLiveCreateRoomDelegate.surfaceListener;
                if (surfaceLifecycleListener != null) {
                    try {
                        IRtcSurfaceLocator iRtcSurfaceLocator = (IRtcSurfaceLocator) SoulRouter.j().u(IRtcSurfaceLocator.class);
                        if (iRtcSurfaceLocator != null) {
                            iRtcSurfaceLocator.removeSurfaceLifecycleListener(surfaceLifecycleListener);
                            wVar = kotlin.w.f231958a;
                        } else {
                            wVar = null;
                        }
                        objM8140constructorimpl2 = Result.m8140constructorimpl(wVar);
                    } catch (Throwable th4) {
                        ChangeQuickRedirect changeQuickRedirect6 = Result.changeQuickRedirect;
                        objM8140constructorimpl2 = Result.m8140constructorimpl(kotlin.l.a(th4));
                    }
                    Result.m8139boximpl(objM8140constructorimpl2);
                }
                VideoLiveCreateRoomDelegate.surfaceListener = null;
                VideoLiveCreateRoomDelegate.f143692a.j0("release: " + this.f143732a);
                VideoLiveBaseResCallback videoLiveBaseResCallback = VideoLiveCreateRoomDelegate.baseResCallback;
                if (videoLiveBaseResCallback != null) {
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a.l(videoLiveBaseResCallback);
                }
                VideoLiveCreateRoomDelegate.baseResCallback = null;
                VideoLiveBaseResCallback videoLiveBaseResCallback2 = VideoLiveCreateRoomDelegate.segmentWearResCallback;
                if (videoLiveBaseResCallback2 != null) {
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a.l(videoLiveBaseResCallback2);
                }
                VideoLiveCreateRoomDelegate.segmentWearResCallback = null;
                for (a aVar : CollectionsKt___CollectionsKt.q1(VideoLiveCreateRoomDelegate.inflightMaterialDownloads)) {
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a.b(aVar.getId(), aVar.getKind(), aVar.getCallback());
                }
                VideoLiveCreateRoomDelegate.inflightMaterialDownloads.clear();
                if (z11) {
                    try {
                        ChangeQuickRedirect changeQuickRedirect7 = Result.changeQuickRedirect;
                        ISoulLiveVideoService iSoulLiveVideoService3 = VideoLiveCreateRoomDelegate.service;
                        if (iSoulLiveVideoService3 != null) {
                            iSoulLiveVideoService3.release();
                            wVar2 = kotlin.w.f231958a;
                        } else {
                            wVar2 = null;
                        }
                        Result.m8140constructorimpl(wVar2);
                    } catch (Throwable th5) {
                        ChangeQuickRedirect changeQuickRedirect8 = Result.changeQuickRedirect;
                        Result.m8140constructorimpl(kotlin.l.a(th5));
                    }
                    if (VideoLiveCreateRoomDelegate.engineOwned) {
                        try {
                            roomChatEngineManager.exitRoom();
                            Result.m8140constructorimpl(kotlin.w.f231958a);
                        } catch (Throwable th6) {
                            ChangeQuickRedirect changeQuickRedirect9 = Result.changeQuickRedirect;
                            Result.m8140constructorimpl(kotlin.l.a(th6));
                        }
                    }
                }
                VideoLiveCreateRoomDelegate.service = null;
                VideoLiveCreateRoomDelegate.engineOwned = false;
                VideoLiveCreateRoomDelegate.ownedEngine = null;
                VideoLiveCreateRoomDelegate.previewContainer = null;
                VideoLiveCreateRoomDelegate.previewBaseChildCount = 0;
                VideoLiveCreateRoomDelegate.exitingPreviewRoom = false;
                VideoLiveCreateRoomDelegate.pendingPreviewRetry = null;
                cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a.f();
                VideoLiveCreateRoomDelegate.licenseState = 0;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } catch (Throwable th7) {
                ChangeQuickRedirect changeQuickRedirect10 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th7));
            }
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\b"}, d2 = {"cn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$k", "Lcn/soulapp/android/lib/media/livevideo/SoulLiveVideoScreenCastListener;", "Lkotlin/w;", "onScreenCaptureStarted", "onScreenCaptureStopped", "", "reason", "onScreenCaptureInterrupted", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class k implements SoulLiveVideoScreenCastListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        k() {
        }

        @Override // cn.soulapp.android.lib.media.livevideo.SoulLiveVideoScreenCastListener
        public void onScreenCaptureInterrupted(int i11) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 4, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "投屏采集被中断 reason=" + i11);
            VideoLiveCreateRoomDelegate.screencastArmed = false;
            CreateRoomRtcEventSender.f143690a.d(2, i11);
        }

        @Override // cn.soulapp.android.lib.media.livevideo.SoulLiveVideoScreenCastListener
        public void onScreenCaptureStarted() {
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            VideoLiveCreateRoomDelegate.screencastCaptureStarted = true;
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.d("VideoLiveCreateRoom", "投屏采集已开始");
            CreateRoomRtcEventSender.f143690a.c();
        }

        @Override // cn.soulapp.android.lib.media.livevideo.SoulLiveVideoScreenCastListener
        public void onScreenCaptureStopped() {
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.d("VideoLiveCreateRoom", "投屏采集已停止");
            VideoLiveCreateRoomDelegate.screencastArmed = false;
            CreateRoomRtcEventSender.f143690a.d(0, 0);
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class l implements Runnable {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f143733a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ISRNApiPromise f143734b;

        public l(Map map, ISRNApiPromise iSRNApiPromise) {
            this.f143733a = map;
            this.f143734b = iSRNApiPromise;
        }

        /* JADX WARN: Code duplicated, block: B:20:0x003b  */
        @Override // java.lang.Runnable
        public final void run() {
            Object objM8140constructorimpl;
            String str;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                Map map = this.f143733a;
                Object obj = map != null ? map.get("bgId") : null;
                String str2 = obj instanceof String ? (String) obj : null;
                if (str2 == null) {
                    str = null;
                } else {
                    if (str2.length() > 0) {
                        str = str2;
                    } else {
                        str = null;
                    }
                }
                ISoulLiveVideoService iSoulLiveVideoService = VideoLiveCreateRoomDelegate.service;
                if (str == null) {
                    VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = VideoLiveCreateRoomDelegate.f143692a;
                    videoLiveCreateRoomDelegate.j0("background cancelled");
                    if (iSoulLiveVideoService != null) {
                        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.p.f159302a.c(iSoulLiveVideoService);
                    }
                    videoLiveCreateRoomDelegate.B0(this.f143734b, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                } else if (iSoulLiveVideoService == null) {
                    VideoLiveCreateRoomDelegate.f143692a.t0(this.f143734b, str, AppStateModule.APP_STATE_BACKGROUND, -100, "service unavailable");
                } else {
                    cn.soulapp.cpnt_voiceparty.rn.createroom.c.a aVarH = cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a.h(str, AppStateModule.APP_STATE_BACKGROUND);
                    if (aVarH == null) {
                        VideoLiveCreateRoomDelegate.f143692a.t0(this.f143734b, str, AppStateModule.APP_STATE_BACKGROUND, -100, "bg not in index");
                    } else {
                        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t tVar = cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a;
                        String strK = tVar.k(aVarH.getItem(), aVarH.getKind());
                        if (strK == null) {
                            VideoLiveCreateRoomDelegate.f143692a.t0(this.f143734b, str, AppStateModule.APP_STATE_BACKGROUND, -100, "local path not ready");
                        } else if (tVar.i()) {
                            VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate2 = VideoLiveCreateRoomDelegate.f143692a;
                            videoLiveCreateRoomDelegate2.j0("superseded by bg=" + str);
                            if (cn.soulapp.cpnt_voiceparty.soulhouse.videolive.p.f159302a.a(iSoulLiveVideoService, aVarH.getKind(), strK)) {
                                videoLiveCreateRoomDelegate2.B0(this.f143734b, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                            } else {
                                videoLiveCreateRoomDelegate2.t0(this.f143734b, str, AppStateModule.APP_STATE_BACKGROUND, -101, "apply failed");
                            }
                        } else {
                            VideoLiveCreateRoomDelegate.f143692a.h0(this.f143734b, str, AppStateModule.APP_STATE_BACKGROUND, aVarH.getKind(), strK);
                        }
                    }
                }
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } catch (Throwable th2) {
                ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
            }
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class m implements Runnable {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f143735a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ISRNApiPromise f143736b;

        public m(Map map, ISRNApiPromise iSRNApiPromise) {
            this.f143735a = map;
            this.f143736b = iSRNApiPromise;
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0042  */
        /* JADX WARN: Code duplicated, block: B:35:0x0066  */
        @Override // java.lang.Runnable
        public final void run() {
            Object objM8140constructorimpl;
            String str;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                Map map = this.f143735a;
                Object obj = map != null ? map.get("kind") : null;
                String str2 = obj instanceof String ? (String) obj : null;
                if (str2 == null) {
                    str2 = "trick";
                } else {
                    if (!cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a.i().contains(str2)) {
                        str2 = null;
                    }
                    if (str2 == null) {
                        str2 = "trick";
                    }
                }
                String str3 = str2;
                Map map2 = this.f143735a;
                Object obj2 = map2 != null ? map2.get("effectId") : null;
                String str4 = obj2 instanceof String ? (String) obj2 : null;
                if (str4 == null) {
                    str = null;
                } else {
                    if (str4.length() > 0) {
                        str = str4;
                    } else {
                        str = null;
                    }
                }
                ISoulLiveVideoService iSoulLiveVideoService = VideoLiveCreateRoomDelegate.service;
                if (str == null) {
                    VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = VideoLiveCreateRoomDelegate.f143692a;
                    videoLiveCreateRoomDelegate.j0("effect cancelled");
                    if (iSoulLiveVideoService != null) {
                        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.p.f159302a.c(iSoulLiveVideoService);
                    }
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "取消佩戴，已清空全部效果槽");
                    videoLiveCreateRoomDelegate.B0(this.f143736b, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                } else if (iSoulLiveVideoService == null) {
                    VideoLiveCreateRoomDelegate.f143692a.t0(this.f143736b, str, str3, -100, "service unavailable");
                } else {
                    cn.soulapp.cpnt_voiceparty.rn.createroom.c.a aVarH = cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a.h(str, str3);
                    if (aVarH == null) {
                        VideoLiveCreateRoomDelegate.f143692a.t0(this.f143736b, str, str3, -100, "effect not in index");
                    } else {
                        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t tVar = cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a;
                        String strK = tVar.k(aVarH.getItem(), aVarH.getKind());
                        if (strK == null) {
                            VideoLiveCreateRoomDelegate.f143692a.t0(this.f143736b, str, str3, -100, "local path not ready");
                        } else if (!aVarH.getKind().getNeedSegmentTemplate() || tVar.i()) {
                            VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate2 = VideoLiveCreateRoomDelegate.f143692a;
                            videoLiveCreateRoomDelegate2.j0("superseded by effect=" + str);
                            if (cn.soulapp.cpnt_voiceparty.soulhouse.videolive.p.f159302a.a(iSoulLiveVideoService, aVarH.getKind(), strK)) {
                                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "佩戴成功 id=" + str + " kind=" + aVarH.getKind());
                                videoLiveCreateRoomDelegate2.B0(this.f143736b, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                            } else {
                                videoLiveCreateRoomDelegate2.t0(this.f143736b, str, str3, -101, "segment template not ready");
                            }
                        } else {
                            VideoLiveCreateRoomDelegate.f143692a.h0(this.f143736b, str, str3, aVarH.getKind(), strK);
                        }
                    }
                }
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } catch (Throwable th2) {
                ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
            }
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class n implements Runnable {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f143737a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ISRNApiPromise f143738b;

        public n(Map map, ISRNApiPromise iSRNApiPromise) {
            this.f143737a = map;
            this.f143738b = iSRNApiPromise;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Object objM8140constructorimpl;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                Map map = this.f143737a;
                Object obj = map != null ? map.get("previewMirror") : null;
                Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
                if (bool != null) {
                    boolean zBooleanValue = bool.booleanValue();
                    Object obj2 = this.f143737a.get("publishMirror");
                    Boolean bool2 = obj2 instanceof Boolean ? (Boolean) obj2 : null;
                    if (bool2 != null) {
                        boolean zBooleanValue2 = bool2.booleanValue();
                        VideoLiveCreateRoomDelegate.lastPreviewMirror = zBooleanValue;
                        VideoLiveCreateRoomDelegate.lastPushMirror = zBooleanValue2;
                        ISoulLiveVideoService iSoulLiveVideoService = VideoLiveCreateRoomDelegate.service;
                        if (iSoulLiveVideoService != null) {
                            iSoulLiveVideoService.setMirror(zBooleanValue, zBooleanValue2);
                        }
                        VideoLiveCreateRoomDelegate.f143692a.B0(this.f143738b, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                    } else {
                        VideoLiveCreateRoomDelegate.f143692a.r0(this.f143738b, "publishMirror is invalid");
                    }
                } else {
                    VideoLiveCreateRoomDelegate.f143692a.r0(this.f143738b, "previewMirror is invalid");
                }
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } catch (Throwable th2) {
                ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
            }
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class o implements Runnable {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f143739a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ISRNApiPromise f143740b;

        public o(Map map, ISRNApiPromise iSRNApiPromise) {
            this.f143739a = map;
            this.f143740b = iSRNApiPromise;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Object objM8140constructorimpl;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                Map map = this.f143739a;
                Object obj = map != null ? map.get(GearStrategyConsts.EV_QUALITY) : null;
                String str = obj instanceof String ? (String) obj : null;
                if (str == null) {
                    VideoLiveCreateRoomDelegate.f143692a.r0(this.f143740b, "quality is invalid");
                } else {
                    String str2 = str.length() > 0 ? str : null;
                    if (str2 == null) {
                        VideoLiveCreateRoomDelegate.f143692a.r0(this.f143740b, "quality is invalid");
                    } else {
                        VideoLiveCreateRoomDelegate.lastQualityCode = str2;
                        ISoulLiveVideoService iSoulLiveVideoService = VideoLiveCreateRoomDelegate.service;
                        if (iSoulLiveVideoService != null) {
                            iSoulLiveVideoService.setVideoQuality(VideoLiveConst.f158982a.g(str2));
                        }
                        VideoLiveCreateRoomDelegate.f143692a.B0(this.f143740b, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                    }
                }
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } catch (Throwable th2) {
                ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
            }
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class p implements Runnable {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f143741a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ISRNApiPromise f143742b;

        public p(Map map, ISRNApiPromise iSRNApiPromise) {
            this.f143741a = map;
            this.f143742b = iSRNApiPromise;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Object objM8140constructorimpl;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                Map map = this.f143741a;
                Object obj = map != null ? map.get("orientation") : null;
                Number number = obj instanceof Number ? (Number) obj : null;
                int iIntValue = number != null ? number.intValue() : 0;
                VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = VideoLiveCreateRoomDelegate.f143692a;
                if (!videoLiveCreateRoomDelegate.z0()) {
                    videoLiveCreateRoomDelegate.B0(this.f143742b, r0.n(kotlin.m.a("opened", Boolean.FALSE), kotlin.m.a("reason", "page_gone")));
                } else if (videoLiveCreateRoomDelegate.m0()) {
                    ISoulLiveVideoService iSoulLiveVideoServiceO0 = videoLiveCreateRoomDelegate.o0();
                    videoLiveCreateRoomDelegate.n0();
                    if (iSoulLiveVideoServiceO0.isScreenCapturing()) {
                        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "投屏已在采集中，去重");
                        videoLiveCreateRoomDelegate.B0(this.f143742b, q0.f(kotlin.m.a("opened", Boolean.TRUE)));
                    } else {
                        VideoLiveCreateRoomDelegate.screencastCaptureStarted = false;
                        iSoulLiveVideoServiceO0.setScreenCaptureListener(VideoLiveCreateRoomDelegate.screenCastListener);
                        iSoulLiveVideoServiceO0.startScreenCapture(iIntValue, y40.f.f247508a.b(VideoLiveCreateRoomDelegate.lastQualityCode));
                        VideoLiveCreateRoomDelegate.screencastArmed = true;
                        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.d("VideoLiveCreateRoom", "已请求调起投屏授权 orientation=" + iIntValue);
                        videoLiveCreateRoomDelegate.B0(this.f143742b, q0.f(kotlin.m.a("opened", Boolean.TRUE)));
                    }
                } else if (!videoLiveCreateRoomDelegate.q0(new VideoLiveCreateRoomDelegate$showScreencastPicker$1$1(this.f143741a, this.f143742b))) {
                    videoLiveCreateRoomDelegate.B0(this.f143742b, r0.n(kotlin.m.a("opened", Boolean.FALSE), kotlin.m.a("reason", "rtc_engine_unavailable")));
                }
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } catch (Throwable th2) {
                ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
            }
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\b"}, d2 = {"cn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$q", "Lcn/soulapp/android/lib/media/livevideo/SoulLiveVideoDegradeListener;", "", "reason", "", "message", "Lkotlin/w;", "onBeautyDegrade", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class q implements SoulLiveVideoDegradeListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        q() {
        }

        @Override // cn.soulapp.android.lib.media.livevideo.SoulLiveVideoDegradeListener
        public void onBeautyDegrade(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 2, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "美颜降级 reason=" + i11 + " msg=" + str);
            VideoLiveCreateRoomDelegate.licenseState = 3;
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"cn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$r", "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveBaseResCallback;", "Lkotlin/w;", "onReady", "", "reason", "onFailed", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class r implements VideoLiveBaseResCallback {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ISoulLiveVideoService f143743a;

        /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
        @Metadata(bv = {}, d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J3\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$r$a", "Lcn/soulapp/android/lib/media/livevideo/SoulLiveVideoCallback;", "", "success", "data", "", MediationConstant.KEY_ERROR_CODE, "", "errorMsg", "Lkotlin/w;", "a", "(ZLjava/lang/Boolean;ILjava/lang/String;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
        public static final class a implements SoulLiveVideoCallback<Boolean> {
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ISoulLiveVideoService f143744a;

            public a(ISoulLiveVideoService iSoulLiveVideoService) {
                this.f143744a = iSoulLiveVideoService;
            }

            @Override // cn.soulapp.android.lib.media.livevideo.SoulLiveVideoCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onResult(boolean success, @Nullable Boolean data, int errorCode, @Nullable String errorMsg) {
                boolean z11 = false;
                if (PatchProxy.proxy(new Object[]{new Byte(success ? (byte) 1 : (byte) 0), data, new Integer(errorCode), errorMsg}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE, Boolean.class, Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                    return;
                }
                if (success && !kotlin.jvm.internal.v.e(data, Boolean.FALSE)) {
                    z11 = true;
                }
                if (!z11) {
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "XMagic so 加载失败，美颜不可用");
                    VideoLiveCreateRoomDelegate.licenseState = 3;
                } else {
                    ISoulLiveVideoService iSoulLiveVideoService = this.f143744a;
                    ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
                    iSoulLiveVideoService.setupBeautyLicense(null, null, new b(iSoulLiveVideoService));
                }
            }
        }

        /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
        @Metadata(bv = {}, d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J3\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$r$b", "Lcn/soulapp/android/lib/media/livevideo/SoulLiveVideoCallback;", "", "success", "data", "", MediationConstant.KEY_ERROR_CODE, "", "errorMsg", "Lkotlin/w;", "a", "(ZLjava/lang/Boolean;ILjava/lang/String;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
        public static final class b implements SoulLiveVideoCallback<Boolean> {
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ISoulLiveVideoService f143745a;

            public b(ISoulLiveVideoService iSoulLiveVideoService) {
                this.f143745a = iSoulLiveVideoService;
            }

            @Override // cn.soulapp.android.lib.media.livevideo.SoulLiveVideoCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onResult(boolean success, @Nullable Boolean data, int errorCode, @Nullable String errorMsg) {
                boolean z11 = false;
                if (PatchProxy.proxy(new Object[]{new Byte(success ? (byte) 1 : (byte) 0), data, new Integer(errorCode), errorMsg}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE, Boolean.class, Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                    return;
                }
                if (success && !kotlin.jvm.internal.v.e(data, Boolean.FALSE)) {
                    z11 = true;
                }
                if (!z11) {
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "美颜 License 校验失败");
                    VideoLiveCreateRoomDelegate.licenseState = 3;
                } else {
                    ISoulLiveVideoService iSoulLiveVideoService = this.f143745a;
                    ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
                    iSoulLiveVideoService.initBeautyEngine(new c());
                }
            }
        }

        /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
        @Metadata(bv = {}, d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J3\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/rn/createroom/VideoLiveCreateRoomDelegate$r$c", "Lcn/soulapp/android/lib/media/livevideo/SoulLiveVideoCallback;", "", "success", "data", "", MediationConstant.KEY_ERROR_CODE, "", "errorMsg", "Lkotlin/w;", "a", "(ZLjava/lang/Boolean;ILjava/lang/String;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
        public static final class c implements SoulLiveVideoCallback<Boolean> {
            public static ChangeQuickRedirect changeQuickRedirect;

            @Override // cn.soulapp.android.lib.media.livevideo.SoulLiveVideoCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onResult(boolean success, @Nullable Boolean data, int errorCode, @Nullable String errorMsg) {
                boolean z11 = false;
                if (PatchProxy.proxy(new Object[]{new Byte(success ? (byte) 1 : (byte) 0), data, new Integer(errorCode), errorMsg}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE, Boolean.class, Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                    return;
                }
                if (success && !kotlin.jvm.internal.v.e(data, Boolean.FALSE)) {
                    z11 = true;
                }
                ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
                VideoLiveCreateRoomDelegate.licenseState = z11 ? 2 : 3;
                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.d("VideoLiveCreateRoom", "美颜引擎初始化 ready=" + z11);
            }
        }

        r(ISoulLiveVideoService iSoulLiveVideoService) {
            this.f143743a = iSoulLiveVideoService;
        }

        @Override // cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveBaseResCallback
        public void onFailed(@NotNull String reason) {
            if (PatchProxy.proxy(new Object[]{reason}, this, changeQuickRedirect, false, 3, new Class[]{String.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(reason, "reason");
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "基础资源备齐失败：" + reason);
            VideoLiveCreateRoomDelegate.licenseState = VideoLiveCreateRoomDelegate.f143692a.A0(reason);
        }

        @Override // cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveBaseResCallback
        public void onProgress(int i11, int i12) {
            Object[] objArr = {new Integer(i11), new Integer(i12)};
            ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
            Class cls = Integer.TYPE;
            if (PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 4, new Class[]{cls, cls}, Void.TYPE).isSupported) {
                return;
            }
            VideoLiveBaseResCallback.a.a(this, i11, i12);
        }

        @Override // cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveBaseResCallback
        public void onReady() {
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ISoulLiveVideoService iSoulLiveVideoService = this.f143743a;
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t tVar = cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a;
            String strO = tVar.o();
            String strA = tVar.a();
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            iSoulLiveVideoService.prepareXmagicResources(strO, strA, new a(this.f143743a));
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class s implements Runnable {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f143746a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ISRNApiPromise f143747b;

        public s(Map map, ISRNApiPromise iSRNApiPromise) {
            this.f143746a = map;
            this.f143747b = iSRNApiPromise;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Object objM8140constructorimpl;
            Object objM8140constructorimpl2;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                Map map = this.f143746a;
                Object obj = map != null ? map.get("surfaceID") : null;
                String str = obj instanceof String ? (String) obj : null;
                if (str == null) {
                    VideoLiveCreateRoomDelegate.f143692a.r0(this.f143747b, "surfaceID is invalid");
                    objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
                } else {
                    if (!(str.length() > 0)) {
                        str = null;
                    }
                    if (str == null) {
                        VideoLiveCreateRoomDelegate.f143692a.r0(this.f143747b, "surfaceID is invalid");
                        objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
                    } else {
                        Object obj2 = this.f143746a.get("isFront");
                        Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
                        boolean zBooleanValue = bool != null ? bool.booleanValue() : true;
                        VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = VideoLiveCreateRoomDelegate.f143692a;
                        if (videoLiveCreateRoomDelegate.z0()) {
                            IRtcSurfaceLocator iRtcSurfaceLocator = (IRtcSurfaceLocator) SoulRouter.j().u(IRtcSurfaceLocator.class);
                            if (iRtcSurfaceLocator == null) {
                                videoLiveCreateRoomDelegate.r0(this.f143747b, "IRtcSurfaceLocator not registered");
                            } else {
                                kotlin.jvm.internal.v.i(iRtcSurfaceLocator, "SoulRouter.instance().se…eLocator not registered\")");
                                IRtcSurfaceLocator.a aVarObtainLocalPreviewView = iRtcSurfaceLocator.obtainLocalPreviewView(str);
                                if (aVarObtainLocalPreviewView == null) {
                                    videoLiveCreateRoomDelegate.r0(this.f143747b, "surface not found: " + str);
                                } else {
                                    View videoView = aVarObtainLocalPreviewView.getVideoView();
                                    ViewGroup viewGroup = videoView instanceof ViewGroup ? (ViewGroup) videoView : null;
                                    if (viewGroup == null) {
                                        videoLiveCreateRoomDelegate.r0(this.f143747b, "surface view is not a container");
                                    } else {
                                        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r rVar = cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a;
                                        rVar.a("VideoLiveCreateRoom", "预览容器=" + viewGroup.getClass().getSimpleName() + " 现有子view=" + viewGroup.getChildCount());
                                        if (videoLiveCreateRoomDelegate.m0()) {
                                            ISoulLiveVideoService iSoulLiveVideoServiceO0 = videoLiveCreateRoomDelegate.o0();
                                            String str2 = VideoLiveCreateRoomDelegate.previewSurfaceID;
                                            if (str2 != null) {
                                                videoLiveCreateRoomDelegate.k0(str2);
                                            }
                                            videoLiveCreateRoomDelegate.n0();
                                            videoLiveCreateRoomDelegate.p0();
                                            VideoLiveCreateRoomDelegate.previewBaseChildCount = viewGroup.getChildCount();
                                            iSoulLiveVideoServiceO0.startLocalPreview(viewGroup, zBooleanValue);
                                            iSoulLiveVideoServiceO0.setMirror(VideoLiveCreateRoomDelegate.lastPreviewMirror, VideoLiveCreateRoomDelegate.lastPushMirror);
                                            iSoulLiveVideoServiceO0.setVideoQuality(VideoLiveConst.f158982a.g(VideoLiveCreateRoomDelegate.lastQualityCode));
                                            VideoLiveCreateRoomDelegate.lastFrontCamera = zBooleanValue;
                                            VideoLiveCreateRoomDelegate.previewSurfaceID = str;
                                            VideoLiveCreateRoomDelegate.previewContainer = new WeakReference(viewGroup);
                                            rVar.d("VideoLiveCreateRoom", "本地预览已起播 surfaceID=" + str + " front=" + zBooleanValue);
                                            videoLiveCreateRoomDelegate.B0(this.f143747b, r0.n(kotlin.m.a("success", Boolean.TRUE), kotlin.m.a("surfaceID", str)));
                                            try {
                                                videoLiveCreateRoomDelegate.N0();
                                                objM8140constructorimpl2 = Result.m8140constructorimpl(kotlin.w.f231958a);
                                            } catch (Throwable th2) {
                                                ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                                                objM8140constructorimpl2 = Result.m8140constructorimpl(kotlin.l.a(th2));
                                            }
                                            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl2);
                                            if (thM8143exceptionOrNullimpl != null) {
                                                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.g("VideoLiveCreateRoom", "美颜资源链异常（不影响预览与建房）：" + thM8143exceptionOrNullimpl.getMessage());
                                            }
                                        } else if (!videoLiveCreateRoomDelegate.q0(new VideoLiveCreateRoomDelegate$startPreview$1$1(this.f143746a, this.f143747b))) {
                                            videoLiveCreateRoomDelegate.r0(this.f143747b, "rtc engine unavailable (already in room?)");
                                        }
                                    }
                                }
                            }
                        } else {
                            videoLiveCreateRoomDelegate.r0(this.f143747b, "create room page is gone");
                        }
                        objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
                    }
                }
            } catch (Throwable th3) {
                ChangeQuickRedirect changeQuickRedirect5 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th3));
            }
            Throwable thM8143exceptionOrNullimpl2 = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl2 == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl2.getMessage());
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class t implements Runnable {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f143748a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ISRNApiPromise f143749b;

        public t(Map map, ISRNApiPromise iSRNApiPromise) {
            this.f143748a = map;
            this.f143749b = iSRNApiPromise;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Object objM8140constructorimpl;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                Map map = this.f143748a;
                Object obj = map != null ? map.get("surfaceID") : null;
                String str = obj instanceof String ? (String) obj : null;
                String str2 = VideoLiveCreateRoomDelegate.previewSurfaceID;
                if (str2 == null) {
                    VideoLiveCreateRoomDelegate.f143692a.B0(this.f143749b, r0.n(kotlin.m.a("success", Boolean.TRUE), kotlin.m.a("reason", "no_preview")));
                } else {
                    if (!(str == null || str.length() == 0) && !kotlin.jvm.internal.v.e(str, str2)) {
                        VideoLiveCreateRoomDelegate.f143692a.B0(this.f143749b, r0.n(kotlin.m.a("success", Boolean.TRUE), kotlin.m.a("reason", "stale_surface")));
                    } else if (VideoLiveCreateRoomDelegate.engineOwned) {
                        VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = VideoLiveCreateRoomDelegate.f143692a;
                        videoLiveCreateRoomDelegate.k0(str2);
                        videoLiveCreateRoomDelegate.B0(this.f143749b, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                    } else {
                        VideoLiveCreateRoomDelegate.previewSurfaceID = null;
                        VideoLiveCreateRoomDelegate.f143692a.B0(this.f143749b, r0.n(kotlin.m.a("success", Boolean.TRUE), kotlin.m.a("reason", "engine_not_owned")));
                    }
                }
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } catch (Throwable th2) {
                ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
            }
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class u implements Runnable {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ISRNApiPromise f143750a;

        public u(ISRNApiPromise iSRNApiPromise) {
            this.f143750a = iSRNApiPromise;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Object objM8140constructorimpl;
            Object objM8140constructorimpl2;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                ISoulLiveVideoService iSoulLiveVideoService = VideoLiveCreateRoomDelegate.service;
                if (iSoulLiveVideoService != null && !VideoLiveCreateRoomDelegate.engineOwned) {
                    VideoLiveCreateRoomDelegate.f143692a.B0(this.f143750a, r0.n(kotlin.m.a("success", Boolean.TRUE), kotlin.m.a("reason", "engine_not_owned")));
                } else if (iSoulLiveVideoService == null || !VideoLiveCreateRoomDelegate.screencastArmed) {
                    VideoLiveCreateRoomDelegate.f143692a.B0(this.f143750a, r0.n(kotlin.m.a("success", Boolean.TRUE), kotlin.m.a("reason", "not_started")));
                } else {
                    try {
                        iSoulLiveVideoService.stopScreenCapture();
                        objM8140constructorimpl2 = Result.m8140constructorimpl(kotlin.w.f231958a);
                    } catch (Throwable th2) {
                        ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                        objM8140constructorimpl2 = Result.m8140constructorimpl(kotlin.l.a(th2));
                    }
                    VideoLiveCreateRoomDelegate.screencastArmed = false;
                    if (Result.m8146isFailureimpl(objM8140constructorimpl2)) {
                        VideoLiveCreateRoomDelegate.f143692a.B0(this.f143750a, r0.n(kotlin.m.a("success", Boolean.FALSE), kotlin.m.a("reason", "stop_failed")));
                    } else {
                        VideoLiveCreateRoomDelegate.f143692a.B0(this.f143750a, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                    }
                }
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } catch (Throwable th3) {
                ChangeQuickRedirect changeQuickRedirect5 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th3));
            }
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class v implements Runnable {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f143751a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ISRNApiPromise f143752b;

        public v(Map map, ISRNApiPromise iSRNApiPromise) {
            this.f143751a = map;
            this.f143752b = iSRNApiPromise;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Object objM8140constructorimpl;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                Map map = this.f143751a;
                Object obj = map != null ? map.get("isFront") : null;
                Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
                if (bool != null) {
                    boolean zBooleanValue = bool.booleanValue();
                    ISoulLiveVideoService iSoulLiveVideoService = VideoLiveCreateRoomDelegate.service;
                    boolean z11 = true;
                    if (VideoLiveCreateRoomDelegate.previewSurfaceID == null || iSoulLiveVideoService == null) {
                        VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = VideoLiveCreateRoomDelegate.f143692a;
                        ISRNApiPromise iSRNApiPromise = this.f143752b;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("local preview is not active (surface=");
                        sb2.append(VideoLiveCreateRoomDelegate.previewSurfaceID);
                        sb2.append(" service=");
                        sb2.append(iSoulLiveVideoService != null);
                        sb2.append(')');
                        videoLiveCreateRoomDelegate.r0(iSRNApiPromise, sb2.toString());
                    } else {
                        iSoulLiveVideoService.switchCamera(zBooleanValue);
                        VideoLiveCreateRoomDelegate.lastFrontCamera = zBooleanValue;
                        if (VideoLiveConst.f158982a.a(zBooleanValue ? 0 : 1) != 1) {
                            z11 = false;
                        }
                        VideoLiveCreateRoomDelegate.lastPreviewMirror = z11;
                        VideoLiveCreateRoomDelegate.lastPushMirror = false;
                        VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate2 = VideoLiveCreateRoomDelegate.f143692a;
                        videoLiveCreateRoomDelegate2.N0();
                        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "镜头翻转 front=" + zBooleanValue + " 采集中=" + iSoulLiveVideoService.isLocalCapturing());
                        videoLiveCreateRoomDelegate2.B0(this.f143752b, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                    }
                } else {
                    VideoLiveCreateRoomDelegate.f143692a.r0(this.f143752b, "isFront is invalid");
                }
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } catch (Throwable th2) {
                ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
            }
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: compiled from: VideoLiveCreateRoomDelegate.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class w implements Runnable {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f143753a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ISRNApiPromise f143754b;

        public w(Map map, ISRNApiPromise iSRNApiPromise) {
            this.f143753a = map;
            this.f143754b = iSRNApiPromise;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Object objM8140constructorimpl;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            ChangeQuickRedirect changeQuickRedirect2 = VideoLiveCreateRoomDelegate.changeQuickRedirect;
            try {
                ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                Map map = this.f143753a;
                Object obj = map != null ? map.get("effects") : null;
                List<? extends Map<String, ? extends Object>> listM = obj instanceof List ? (List) obj : null;
                if (listM == null) {
                    listM = kotlin.collections.v.m();
                }
                Map map2 = this.f143753a;
                Object obj2 = map2 != null ? map2.get("backgrounds") : null;
                List<? extends Map<String, ? extends Object>> listM2 = obj2 instanceof List ? (List) obj2 : null;
                if (listM2 == null) {
                    listM2 = kotlin.collections.v.m();
                }
                cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a.j(listM, listM2);
                VideoLiveCreateRoomDelegate.f143692a.B0(this.f143754b, r0.n(kotlin.m.a("effects", Integer.valueOf(listM.size())), kotlin.m.a("backgrounds", Integer.valueOf(listM2.size()))));
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } catch (Throwable th2) {
                ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
            }
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 46, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f143692a = new VideoLiveCreateRoomDelegate();
        mainHandler = new Handler(Looper.getMainLooper());
        inflightMaterialDownloads = new LinkedHashSet();
        lastPreviewMirror = true;
        lastFrontCamera = true;
        lastQualityCode = "hd";
        screenCastListener = new k();
    }

    private VideoLiveCreateRoomDelegate() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int A0(String reason) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{reason}, this, changeQuickRedirect, false, 27, new Class[]{String.class}, Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        return StringsKt__StringsKt.K(reason, "storage", true) ? 3 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B0(ISRNApiPromise iSRNApiPromise, Object obj) {
        if (PatchProxy.proxy(new Object[]{iSRNApiPromise, obj}, this, changeQuickRedirect, false, 37, new Class[]{ISRNApiPromise.class, Object.class}, Void.TYPE).isSupported || iSRNApiPromise == null) {
            return;
        }
        iSRNApiPromise.resolve(new a7.a(0, "success", obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C0(String str) {
        String str2;
        kotlin.w wVar;
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 23, new Class[]{String.class}, Void.TYPE).isSupported || (str2 = previewSurfaceID) == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "预览不可见（" + str + "），暂停采集 id=" + str2);
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            ISoulLiveVideoService iSoulLiveVideoService = service;
            if (iSoulLiveVideoService != null) {
                iSoulLiveVideoService.enableCamera(false);
                wVar = kotlin.w.f231958a;
            } else {
                wVar = null;
            }
            Result.m8140constructorimpl(wVar);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            Result.m8140constructorimpl(kotlin.l.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D0(String str) {
        String str2;
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 24, new Class[]{String.class}, Void.TYPE).isSupported || (str2 = previewSurfaceID) == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "预览恢复可见（" + str + "），重挂预览 id=" + str2);
        H0(str2);
    }

    private final void H0(String str) {
        ISoulLiveVideoService iSoulLiveVideoService;
        IRtcSurfaceLocator iRtcSurfaceLocator;
        IRtcSurfaceLocator.a aVarObtainLocalPreviewView;
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 25, new Class[]{String.class}, Void.TYPE).isSupported || (iSoulLiveVideoService = service) == null || (iRtcSurfaceLocator = (IRtcSurfaceLocator) SoulRouter.j().u(IRtcSurfaceLocator.class)) == null || (aVarObtainLocalPreviewView = iRtcSurfaceLocator.obtainLocalPreviewView(str)) == null) {
            return;
        }
        View videoView = aVarObtainLocalPreviewView.getVideoView();
        ViewGroup viewGroup = videoView instanceof ViewGroup ? (ViewGroup) videoView : null;
        if (viewGroup == null) {
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            iSoulLiveVideoService.enableCamera(false);
            Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        i0();
        previewBaseChildCount = viewGroup.getChildCount();
        iSoulLiveVideoService.startLocalPreview(viewGroup, lastFrontCamera);
        iSoulLiveVideoService.setMirror(lastPreviewMirror, lastPushMirror);
        iSoulLiveVideoService.setVideoQuality(VideoLiveConst.f158982a.g(lastQualityCode));
        previewContainer = new WeakReference<>(viewGroup);
        previewSurfaceID = str;
        N0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 26, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        ISoulLiveVideoService iSoulLiveVideoService = service;
        if (iSoulLiveVideoService == null) {
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "美颜链暂缓：service 尚未创建");
            return;
        }
        if (iSoulLiveVideoService.isBeautyReady()) {
            licenseState = 2;
            return;
        }
        if (licenseState == 1) {
            return;
        }
        licenseState = 1;
        iSoulLiveVideoService.onBeautyDegrade(new q());
        r rVar = new r(iSoulLiveVideoService);
        baseResCallback = rVar;
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a.d(rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 15, new Class[0], Void.TYPE).isSupported || !screencastArmed || screencastCaptureStarted) {
            return;
        }
        mainHandler.postDelayed(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.rn.createroom.e
            @Override // java.lang.Runnable
            public final void run() {
                VideoLiveCreateRoomDelegate.e0();
            }
        }, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0() {
        kotlin.w wVar;
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 44, new Class[0], Void.TYPE).isSupported || !screencastArmed || screencastCaptureStarted) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.d("VideoLiveCreateRoom", "授权框已关闭且未收到采集开始 ⇒ 判定用户取消，静默收摊");
        screencastArmed = false;
        CreateRoomRtcEventSender.f143690a.d(4, 0);
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            ISoulLiveVideoService iSoulLiveVideoService = service;
            if (iSoulLiveVideoService != null) {
                iSoulLiveVideoService.stopScreenCapture();
                wVar = kotlin.w.f231958a;
            } else {
                wVar = null;
            }
            Result.m8140constructorimpl(wVar);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            Result.m8140constructorimpl(kotlin.l.a(th2));
        }
    }

    private final void f0(final int i11) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 19, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        mainHandler.postDelayed(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.rn.createroom.f
            @Override // java.lang.Runnable
            public final void run() {
                VideoLiveCreateRoomDelegate.g0(i11);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(int i11) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, null, changeQuickRedirect, true, 45, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = f143692a;
        if (!videoLiveCreateRoomDelegate.z0()) {
            videoLiveCreateRoomDelegate.u0(null, "建房页已关");
            return;
        }
        if (RoomChatEngineManager.getInstance().getChatRoomEngine() != null) {
            int i12 = i11 + 1;
            if (i12 >= 20) {
                videoLiveCreateRoomDelegate.u0(null, "等引擎释放超时（2000ms）");
                return;
            } else {
                videoLiveCreateRoomDelegate.f0(i12);
                return;
            }
        }
        videoLiveCreateRoomDelegate.u0(pendingPreviewRetry, "引擎已释放（第 " + i11 + " 次轮询）");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h0(ISRNApiPromise iSRNApiPromise, String str, String str2, VideoLiveMaterialKind videoLiveMaterialKind, String str3) {
        if (PatchProxy.proxy(new Object[]{iSRNApiPromise, str, str2, videoLiveMaterialKind, str3}, this, changeQuickRedirect, false, 39, new Class[]{ISRNApiPromise.class, String.class, String.class, VideoLiveMaterialKind.class, String.class}, Void.TYPE).isSupported) {
            return;
        }
        pendingSegmentWear = new b(str, str2, videoLiveMaterialKind, str3);
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "分割模板未就绪，挂起佩戴意向 id=" + str + " kind=" + videoLiveMaterialKind + "，等基础资源备齐");
        c cVar = new c();
        VideoLiveBaseResCallback videoLiveBaseResCallback = segmentWearResCallback;
        if (videoLiveBaseResCallback != null) {
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a.l(videoLiveBaseResCallback);
        }
        segmentWearResCallback = cVar;
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a.d(cVar);
        B0(iSRNApiPromise, q0.f(kotlin.m.a("success", Boolean.TRUE)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i0() {
        WeakReference<ViewGroup> weakReference;
        ViewGroup viewGroup;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 30, new Class[0], Void.TYPE).isSupported || (weakReference = previewContainer) == null || (viewGroup = weakReference.get()) == null) {
            return;
        }
        int childCount = viewGroup.getChildCount() - 1;
        int iE = kotlin.ranges.n.e(previewBaseChildCount, 0);
        if (iE <= childCount) {
            while (true) {
                if (childCount < viewGroup.getChildCount()) {
                    viewGroup.removeViewAt(childCount);
                }
                if (childCount == iE) {
                    break;
                } else {
                    childCount--;
                }
            }
        }
        previewContainer = null;
        previewBaseChildCount = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j0(String str) {
        b bVar;
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 42, new Class[]{String.class}, Void.TYPE).isSupported || (bVar = pendingSegmentWear) == null) {
            return;
        }
        pendingSegmentWear = null;
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "作废挂起的佩戴意向（" + str + "）id=" + bVar.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k0(String str) {
        kotlin.w wVar;
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 29, new Class[]{String.class}, Void.TYPE).isSupported) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.d("VideoLiveCreateRoom", "停止本地预览 surfaceID=" + str);
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            ISoulLiveVideoService iSoulLiveVideoService = service;
            if (iSoulLiveVideoService != null) {
                iSoulLiveVideoService.enableCamera(false);
                wVar = kotlin.w.f231958a;
            } else {
                wVar = null;
            }
            Result.m8140constructorimpl(wVar);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        i0();
        previewSurfaceID = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean m0() {
        Object objM8140constructorimpl;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 17, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        RoomChatEngineManager roomChatEngineManager = RoomChatEngineManager.getInstance();
        IChatRoomEngine chatRoomEngine = roomChatEngineManager.getChatRoomEngine();
        boolean z11 = true;
        if (chatRoomEngine != null) {
            if (ownedEngine == chatRoomEngine) {
                return true;
            }
            if (engineOwned) {
                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "引擎已被其他模块替换，放弃复用并交出所有权");
                engineOwned = false;
                ownedEngine = null;
            } else {
                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.g("VideoLiveCreateRoom", "已存在房间引擎，建房页放弃使用 RTC");
            }
            return false;
        }
        ownedEngine = null;
        engineOwned = false;
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            Application applicationG = ChatRoomModule.f126959a.g();
            RtcParams rtcParams = new RtcParams();
            rtcParams.isMultiRoom = false;
            rtcParams.soPath = n1.f162238a.f();
            cn.soulapp.cpnt_voiceparty.soulhouse.audio.k kVar = cn.soulapp.cpnt_voiceparty.soulhouse.audio.k.f145749a;
            rtcParams.userId = kVar.d(4);
            rtcParams.userName = cn.soulapp.android.client.component.middle.platform.utils.user.a.v().signature;
            rtcParams.appID = kVar.a(4);
            rtcParams.appSign = m60.a.f233865a;
            rtcParams.isTestEnv = ApiEnv.INSTANCE.isSuper();
            rtcParams.isMuteAudio = true;
            ChangeQuickRedirect changeQuickRedirect3 = kotlin.w.changeQuickRedirect;
            roomChatEngineManager.init(applicationG, 4, rtcParams);
            IChatRoomEngine chatRoomEngine2 = roomChatEngineManager.getChatRoomEngine();
            ownedEngine = chatRoomEngine2;
            if (chatRoomEngine2 == null) {
                z11 = false;
            }
            engineOwned = z11;
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.d("VideoLiveCreateRoom", "建房页自建 TRTC 引擎 ok=" + engineOwned);
            objM8140constructorimpl = Result.m8140constructorimpl(Boolean.valueOf(engineOwned));
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl != null) {
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "自建 RTC 引擎失败：" + thM8143exceptionOrNullimpl.getMessage());
            ownedEngine = null;
            engineOwned = false;
            objM8140constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM8140constructorimpl).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 33, new Class[0], Void.TYPE).isSupported || lifecycleRegistered) {
            return;
        }
        Application applicationG = ChatRoomModule.f126959a.g();
        if (!(applicationG instanceof Application)) {
            applicationG = null;
        }
        if (applicationG == null) {
            return;
        }
        lifecycleRegistered = true;
        applicationG.registerActivityLifecycleCallbacks(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ISoulLiveVideoService o0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 21, new Class[0], ISoulLiveVideoService.class);
        if (patchProxyResultProxy.isSupported) {
            return (ISoulLiveVideoService) patchProxyResultProxy.result;
        }
        ISoulLiveVideoService iSoulLiveVideoService = service;
        if (iSoulLiveVideoService != null) {
            return iSoulLiveVideoService;
        }
        ISoulLiveVideoService iSoulLiveVideoServiceCreate = SoulLiveVideoServiceFactory.create();
        service = iSoulLiveVideoServiceCreate;
        return iSoulLiveVideoServiceCreate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p0() {
        IRtcSurfaceLocator iRtcSurfaceLocator;
        Object objM8140constructorimpl;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 22, new Class[0], Void.TYPE).isSupported || surfaceListener != null || (iRtcSurfaceLocator = (IRtcSurfaceLocator) SoulRouter.j().u(IRtcSurfaceLocator.class)) == null) {
            return;
        }
        g gVar = new g();
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            iRtcSurfaceLocator.addSurfaceLifecycleListener(gVar);
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        if (Result.m8147isSuccessimpl(objM8140constructorimpl)) {
            surfaceListener = gVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean q0(Function0<kotlin.w> onExited) {
        Object objM8140constructorimpl;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{onExited}, this, changeQuickRedirect, false, 18, new Class[]{Function0.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (exitingPreviewRoom) {
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.d("VideoLiveCreateRoom", "假进房退房在途，登记本次请求待引擎释放后重试");
            pendingPreviewRetry = onExited;
            return true;
        }
        SoulHouseDriver soulHouseDriverI0 = SoulHouseExtensionKt.i0();
        if (soulHouseDriverI0 == null || soulHouseDriverI0.getJoinMode() != 2) {
            return false;
        }
        if (soulHouseDriverI0.s1()) {
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.d("VideoLiveCreateRoom", "假进房已处于退房态，等引擎释放后重试预览");
            exitingPreviewRoom = true;
            pendingPreviewRetry = onExited;
            f0(0);
            return true;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.d("VideoLiveCreateRoom", "引擎被推荐 tab 假进房占用，先退假进房 roomId=" + SoulHouseExtensionKt.P(soulHouseDriverI0));
        exitingPreviewRoom = true;
        pendingPreviewRetry = onExited;
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            x.d(new e40.b(soulHouseDriverI0, SoulHouseExtensionKt.P(soulHouseDriverI0), null, 4, null), false, VideoLiveCreateRoomDelegate$exitPreviewRoomThen$1$1.INSTANCE, 2, null);
            SoulHouseDriver.e0(soulHouseDriverI0, false, false, null, 5, null);
            SoulHouseDriver.a0(soulHouseDriverI0, null, 1, null);
            if (SwitchUtil.f162115a.j()) {
                x.f160046a.b(soulHouseDriverI0);
            }
            f0(0);
            objM8140constructorimpl = Result.m8140constructorimpl(Boolean.TRUE);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl != null) {
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "退假进房异常：" + thM8143exceptionOrNullimpl.getMessage());
            exitingPreviewRoom = false;
            pendingPreviewRetry = null;
            objM8140constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM8140constructorimpl).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r0(ISRNApiPromise iSRNApiPromise, String str) {
        if (PatchProxy.proxy(new Object[]{iSRNApiPromise, str}, this, changeQuickRedirect, false, 38, new Class[]{ISRNApiPromise.class, String.class}, Void.TYPE).isSupported) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令失败：" + str);
        if (iSRNApiPromise != null) {
            iSRNApiPromise.resolve(new a7.a(0, str, r0.n(kotlin.m.a("success", Boolean.FALSE), kotlin.m.a("reason", str))));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s0(String str) {
        b bVar;
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 41, new Class[]{String.class}, Void.TYPE).isSupported || (bVar = pendingSegmentWear) == null) {
            return;
        }
        pendingSegmentWear = null;
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.g("VideoLiveCreateRoom", "挂起的佩戴意向作废（" + str + "）id=" + bVar.getId());
        CreateRoomRtcEventSender.f143690a.b(bVar.getId(), bVar.getRnKind(), 0, 3, -101);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t0(ISRNApiPromise iSRNApiPromise, String str, String str2, int i11, String str3) {
        if (PatchProxy.proxy(new Object[]{iSRNApiPromise, str, str2, new Integer(i11), str3}, this, changeQuickRedirect, false, 43, new Class[]{ISRNApiPromise.class, String.class, String.class, Integer.TYPE, String.class}, Void.TYPE).isSupported) {
            return;
        }
        CreateRoomRtcEventSender.f143690a.b(str, str2, 0, 3, i11);
        r0(iSRNApiPromise, str3);
    }

    private final void u0(Function0<kotlin.w> function0, String str) {
        if (PatchProxy.proxy(new Object[]{function0, str}, this, changeQuickRedirect, false, 20, new Class[]{Function0.class, String.class}, Void.TYPE).isSupported) {
            return;
        }
        exitingPreviewRoom = false;
        pendingPreviewRetry = null;
        if (function0 == null) {
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.g("VideoLiveCreateRoom", "放弃重试起预览：" + str);
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.d("VideoLiveCreateRoom", str + "，重试起预览");
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v0() {
        b bVar;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 40, new Class[0], Void.TYPE).isSupported || (bVar = pendingSegmentWear) == null) {
            return;
        }
        pendingSegmentWear = null;
        ISoulLiveVideoService iSoulLiveVideoService = service;
        if (iSoulLiveVideoService == null) {
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.g("VideoLiveCreateRoom", "分割资源就绪但 service 已释放，放弃补戴 id=" + bVar.getId());
            return;
        }
        if (previewSurfaceID == null) {
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "分割资源就绪但预览已停，放弃补戴 id=" + bVar.getId());
            return;
        }
        if (!cn.soulapp.cpnt_voiceparty.soulhouse.videolive.p.f159302a.a(iSoulLiveVideoService, bVar.getKind(), bVar.getLocalPath())) {
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "分割资源就绪但补戴失败 id=" + bVar.getId());
            CreateRoomRtcEventSender.f143690a.b(bVar.getId(), bVar.getRnKind(), 0, 3, -101);
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "分割资源就绪，补戴完成 id=" + bVar.getId() + " kind=" + bVar.getKind());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean z0() {
        Object objM8140constructorimpl;
        boolean z11 = false;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 34, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            List<Activity> listS = AppListenerHelper.s();
            kotlin.jvm.internal.v.i(listS, "getActivityStacks()");
            if (!(listS instanceof Collection) || !listS.isEmpty()) {
                for (Activity activity : listS) {
                    if (!cn.mate.android.utils.a.f10639a.d(activity) && y0(activity)) {
                        z11 = true;
                        break;
                    }
                }
            }
            objM8140constructorimpl = Result.m8140constructorimpl(Boolean.valueOf(z11));
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        Boolean bool = Boolean.TRUE;
        if (Result.m8146isFailureimpl(objM8140constructorimpl)) {
            objM8140constructorimpl = bool;
        }
        return ((Boolean) objM8140constructorimpl).booleanValue();
    }

    public final void E0(@NotNull String reason) {
        Object objM8140constructorimpl;
        Object objM8140constructorimpl2;
        kotlin.w wVar;
        kotlin.w wVar2;
        kotlin.w wVar3;
        kotlin.w wVar4;
        boolean z11 = true;
        if (PatchProxy.proxy(new Object[]{reason}, this, changeQuickRedirect, false, 31, new Class[]{String.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(reason, "reason");
        if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
            mainHandler.post(new j(reason));
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r rVar = cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a;
            rVar.d("VideoLiveCreateRoom", "释放建房页视频资源 reason=" + reason);
            RoomChatEngineManager roomChatEngineManager = RoomChatEngineManager.getInstance();
            if (ownedEngine == null || roomChatEngineManager.getChatRoomEngine() != ownedEngine) {
                z11 = false;
            }
            if (z11) {
                String str = previewSurfaceID;
                if (str != null) {
                    f143692a.k0(str);
                }
                if (screencastArmed) {
                    try {
                        ISoulLiveVideoService iSoulLiveVideoService = service;
                        if (iSoulLiveVideoService != null) {
                            iSoulLiveVideoService.stopScreenCapture();
                            wVar3 = kotlin.w.f231958a;
                        } else {
                            wVar3 = null;
                        }
                        Result.m8140constructorimpl(wVar3);
                    } catch (Throwable th2) {
                        ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                        Result.m8140constructorimpl(kotlin.l.a(th2));
                    }
                }
                try {
                    ISoulLiveVideoService iSoulLiveVideoService2 = service;
                    if (iSoulLiveVideoService2 != null) {
                        iSoulLiveVideoService2.setScreenCaptureListener(null);
                        wVar4 = kotlin.w.f231958a;
                    } else {
                        wVar4 = null;
                    }
                    Result.m8140constructorimpl(wVar4);
                } catch (Throwable th3) {
                    ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
                    Result.m8140constructorimpl(kotlin.l.a(th3));
                }
            } else if (engineOwned || service != null) {
                rVar.g("VideoLiveCreateRoom", "引擎已易主，跳过全部底层调用，只摘本地 View 与登记");
                f143692a.i0();
            }
            screencastArmed = false;
            previewSurfaceID = null;
            IRtcSurfaceLocator.SurfaceLifecycleListener surfaceLifecycleListener = surfaceListener;
            if (surfaceLifecycleListener != null) {
                try {
                    IRtcSurfaceLocator iRtcSurfaceLocator = (IRtcSurfaceLocator) SoulRouter.j().u(IRtcSurfaceLocator.class);
                    if (iRtcSurfaceLocator != null) {
                        iRtcSurfaceLocator.removeSurfaceLifecycleListener(surfaceLifecycleListener);
                        wVar = kotlin.w.f231958a;
                    } else {
                        wVar = null;
                    }
                    objM8140constructorimpl2 = Result.m8140constructorimpl(wVar);
                } catch (Throwable th4) {
                    ChangeQuickRedirect changeQuickRedirect5 = Result.changeQuickRedirect;
                    objM8140constructorimpl2 = Result.m8140constructorimpl(kotlin.l.a(th4));
                }
                Result.m8139boximpl(objM8140constructorimpl2);
            }
            surfaceListener = null;
            f143692a.j0("release: " + reason);
            VideoLiveBaseResCallback videoLiveBaseResCallback = baseResCallback;
            if (videoLiveBaseResCallback != null) {
                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a.l(videoLiveBaseResCallback);
            }
            baseResCallback = null;
            VideoLiveBaseResCallback videoLiveBaseResCallback2 = segmentWearResCallback;
            if (videoLiveBaseResCallback2 != null) {
                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a.l(videoLiveBaseResCallback2);
            }
            segmentWearResCallback = null;
            for (a aVar : CollectionsKt___CollectionsKt.q1(inflightMaterialDownloads)) {
                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a.b(aVar.getId(), aVar.getKind(), aVar.getCallback());
            }
            inflightMaterialDownloads.clear();
            if (z11) {
                try {
                    ChangeQuickRedirect changeQuickRedirect6 = Result.changeQuickRedirect;
                    ISoulLiveVideoService iSoulLiveVideoService3 = service;
                    if (iSoulLiveVideoService3 != null) {
                        iSoulLiveVideoService3.release();
                        wVar2 = kotlin.w.f231958a;
                    } else {
                        wVar2 = null;
                    }
                    Result.m8140constructorimpl(wVar2);
                } catch (Throwable th5) {
                    ChangeQuickRedirect changeQuickRedirect7 = Result.changeQuickRedirect;
                    Result.m8140constructorimpl(kotlin.l.a(th5));
                }
                if (engineOwned) {
                    try {
                        roomChatEngineManager.exitRoom();
                        Result.m8140constructorimpl(kotlin.w.f231958a);
                    } catch (Throwable th6) {
                        ChangeQuickRedirect changeQuickRedirect8 = Result.changeQuickRedirect;
                        Result.m8140constructorimpl(kotlin.l.a(th6));
                    }
                }
            }
            service = null;
            engineOwned = false;
            ownedEngine = null;
            previewContainer = null;
            previewBaseChildCount = 0;
            exitingPreviewRoom = false;
            pendingPreviewRetry = null;
            cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a.f();
            licenseState = 0;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th7) {
            ChangeQuickRedirect changeQuickRedirect9 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th7));
        }
        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
    }

    public final void F0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 32, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        E0("room_rtc_init");
    }

    public final void G0(@Nullable ISRNApiPromise iSRNApiPromise) {
        if (PatchProxy.proxy(new Object[]{iSRNApiPromise}, this, changeQuickRedirect, false, 16, new Class[]{ISRNApiPromise.class}, Void.TYPE).isSupported) {
            return;
        }
        E0("rn_release");
        B0(iSRNApiPromise, q0.f(kotlin.m.a("success", Boolean.TRUE)));
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0054  */
    public final void I0(@Nullable Map<String, ? extends Object> map, @Nullable ISRNApiPromise iSRNApiPromise) {
        Object objM8140constructorimpl;
        String str;
        if (PatchProxy.proxy(new Object[]{map, iSRNApiPromise}, this, changeQuickRedirect, false, 8, new Class[]{Map.class, ISRNApiPromise.class}, Void.TYPE).isSupported) {
            return;
        }
        if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
            mainHandler.post(new l(map, iSRNApiPromise));
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            Object obj = map != null ? map.get("bgId") : null;
            String str2 = obj instanceof String ? (String) obj : null;
            if (str2 == null) {
                str = null;
            } else {
                if (str2.length() > 0) {
                    str = str2;
                } else {
                    str = null;
                }
            }
            ISoulLiveVideoService iSoulLiveVideoService = service;
            if (str == null) {
                VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = f143692a;
                videoLiveCreateRoomDelegate.j0("background cancelled");
                if (iSoulLiveVideoService != null) {
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.p.f159302a.c(iSoulLiveVideoService);
                }
                videoLiveCreateRoomDelegate.B0(iSRNApiPromise, q0.f(kotlin.m.a("success", Boolean.TRUE)));
            } else if (iSoulLiveVideoService == null) {
                f143692a.t0(iSRNApiPromise, str, AppStateModule.APP_STATE_BACKGROUND, -100, "service unavailable");
            } else {
                cn.soulapp.cpnt_voiceparty.rn.createroom.c.a aVarH = cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a.h(str, AppStateModule.APP_STATE_BACKGROUND);
                if (aVarH == null) {
                    f143692a.t0(iSRNApiPromise, str, AppStateModule.APP_STATE_BACKGROUND, -100, "bg not in index");
                } else {
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t tVar = cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a;
                    String strK = tVar.k(aVarH.getItem(), aVarH.getKind());
                    if (strK == null) {
                        f143692a.t0(iSRNApiPromise, str, AppStateModule.APP_STATE_BACKGROUND, -100, "local path not ready");
                    } else if (tVar.i()) {
                        VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate2 = f143692a;
                        videoLiveCreateRoomDelegate2.j0("superseded by bg=" + str);
                        if (cn.soulapp.cpnt_voiceparty.soulhouse.videolive.p.f159302a.a(iSoulLiveVideoService, aVarH.getKind(), strK)) {
                            videoLiveCreateRoomDelegate2.B0(iSRNApiPromise, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                        } else {
                            videoLiveCreateRoomDelegate2.t0(iSRNApiPromise, str, AppStateModule.APP_STATE_BACKGROUND, -101, "apply failed");
                        }
                    } else {
                        f143692a.h0(iSRNApiPromise, str, AppStateModule.APP_STATE_BACKGROUND, aVarH.getKind(), strK);
                    }
                }
            }
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005a  */
    /* JADX WARN: Code duplicated, block: B:36:0x007c  */
    public final void J0(@Nullable Map<String, ? extends Object> map, @Nullable ISRNApiPromise iSRNApiPromise) {
        Object objM8140constructorimpl;
        String str;
        if (PatchProxy.proxy(new Object[]{map, iSRNApiPromise}, this, changeQuickRedirect, false, 7, new Class[]{Map.class, ISRNApiPromise.class}, Void.TYPE).isSupported) {
            return;
        }
        if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
            mainHandler.post(new m(map, iSRNApiPromise));
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            Object obj = map != null ? map.get("kind") : null;
            String str2 = obj instanceof String ? (String) obj : null;
            if (str2 == null) {
                str2 = "trick";
            } else {
                if (!cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a.i().contains(str2)) {
                    str2 = null;
                }
                if (str2 == null) {
                    str2 = "trick";
                }
            }
            String str3 = str2;
            Object obj2 = map != null ? map.get("effectId") : null;
            String str4 = obj2 instanceof String ? (String) obj2 : null;
            if (str4 == null) {
                str = null;
            } else {
                if (str4.length() > 0) {
                    str = str4;
                } else {
                    str = null;
                }
            }
            ISoulLiveVideoService iSoulLiveVideoService = service;
            if (str == null) {
                VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = f143692a;
                videoLiveCreateRoomDelegate.j0("effect cancelled");
                if (iSoulLiveVideoService != null) {
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.p.f159302a.c(iSoulLiveVideoService);
                }
                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "取消佩戴，已清空全部效果槽");
                videoLiveCreateRoomDelegate.B0(iSRNApiPromise, q0.f(kotlin.m.a("success", Boolean.TRUE)));
            } else if (iSoulLiveVideoService == null) {
                f143692a.t0(iSRNApiPromise, str, str3, -100, "service unavailable");
            } else {
                cn.soulapp.cpnt_voiceparty.rn.createroom.c.a aVarH = cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a.h(str, str3);
                if (aVarH == null) {
                    f143692a.t0(iSRNApiPromise, str, str3, -100, "effect not in index");
                } else {
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t tVar = cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a;
                    String strK = tVar.k(aVarH.getItem(), aVarH.getKind());
                    if (strK == null) {
                        f143692a.t0(iSRNApiPromise, str, str3, -100, "local path not ready");
                    } else if (!aVarH.getKind().getNeedSegmentTemplate() || tVar.i()) {
                        VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate2 = f143692a;
                        videoLiveCreateRoomDelegate2.j0("superseded by effect=" + str);
                        if (cn.soulapp.cpnt_voiceparty.soulhouse.videolive.p.f159302a.a(iSoulLiveVideoService, aVarH.getKind(), strK)) {
                            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "佩戴成功 id=" + str + " kind=" + aVarH.getKind());
                            videoLiveCreateRoomDelegate2.B0(iSRNApiPromise, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                        } else {
                            videoLiveCreateRoomDelegate2.t0(iSRNApiPromise, str, str3, -101, "segment template not ready");
                        }
                    } else {
                        f143692a.h0(iSRNApiPromise, str, str3, aVarH.getKind(), strK);
                    }
                }
            }
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
    }

    public final void K0(@Nullable Map<String, ? extends Object> map, @Nullable ISRNApiPromise iSRNApiPromise) {
        Object objM8140constructorimpl;
        if (PatchProxy.proxy(new Object[]{map, iSRNApiPromise}, this, changeQuickRedirect, false, 5, new Class[]{Map.class, ISRNApiPromise.class}, Void.TYPE).isSupported) {
            return;
        }
        if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
            mainHandler.post(new n(map, iSRNApiPromise));
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            Object obj = map != null ? map.get("previewMirror") : null;
            Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
            if (bool != null) {
                boolean zBooleanValue = bool.booleanValue();
                Object obj2 = map.get("publishMirror");
                Boolean bool2 = obj2 instanceof Boolean ? (Boolean) obj2 : null;
                if (bool2 != null) {
                    boolean zBooleanValue2 = bool2.booleanValue();
                    lastPreviewMirror = zBooleanValue;
                    lastPushMirror = zBooleanValue2;
                    ISoulLiveVideoService iSoulLiveVideoService = service;
                    if (iSoulLiveVideoService != null) {
                        iSoulLiveVideoService.setMirror(zBooleanValue, zBooleanValue2);
                    }
                    f143692a.B0(iSRNApiPromise, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                } else {
                    f143692a.r0(iSRNApiPromise, "publishMirror is invalid");
                }
            } else {
                f143692a.r0(iSRNApiPromise, "previewMirror is invalid");
            }
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
    }

    public final void L0(@Nullable Map<String, ? extends Object> map, @Nullable ISRNApiPromise iSRNApiPromise) {
        Object objM8140constructorimpl;
        if (PatchProxy.proxy(new Object[]{map, iSRNApiPromise}, this, changeQuickRedirect, false, 6, new Class[]{Map.class, ISRNApiPromise.class}, Void.TYPE).isSupported) {
            return;
        }
        if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
            mainHandler.post(new o(map, iSRNApiPromise));
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            Object obj = map != null ? map.get(GearStrategyConsts.EV_QUALITY) : null;
            String str = obj instanceof String ? (String) obj : null;
            if (str == null) {
                f143692a.r0(iSRNApiPromise, "quality is invalid");
            } else {
                String str2 = str.length() > 0 ? str : null;
                if (str2 == null) {
                    f143692a.r0(iSRNApiPromise, "quality is invalid");
                } else {
                    lastQualityCode = str2;
                    ISoulLiveVideoService iSoulLiveVideoService = service;
                    if (iSoulLiveVideoService != null) {
                        iSoulLiveVideoService.setVideoQuality(VideoLiveConst.f158982a.g(str2));
                    }
                    f143692a.B0(iSRNApiPromise, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                }
            }
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
    }

    public final void M0(@Nullable Map<String, ? extends Object> map, @Nullable ISRNApiPromise iSRNApiPromise) {
        Object objM8140constructorimpl;
        if (PatchProxy.proxy(new Object[]{map, iSRNApiPromise}, this, changeQuickRedirect, false, 13, new Class[]{Map.class, ISRNApiPromise.class}, Void.TYPE).isSupported) {
            return;
        }
        if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
            mainHandler.post(new p(map, iSRNApiPromise));
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            Object obj = map != null ? map.get("orientation") : null;
            Number number = obj instanceof Number ? (Number) obj : null;
            int iIntValue = number != null ? number.intValue() : 0;
            VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = f143692a;
            if (!videoLiveCreateRoomDelegate.z0()) {
                videoLiveCreateRoomDelegate.B0(iSRNApiPromise, r0.n(kotlin.m.a("opened", Boolean.FALSE), kotlin.m.a("reason", "page_gone")));
            } else if (videoLiveCreateRoomDelegate.m0()) {
                ISoulLiveVideoService iSoulLiveVideoServiceO0 = videoLiveCreateRoomDelegate.o0();
                videoLiveCreateRoomDelegate.n0();
                if (iSoulLiveVideoServiceO0.isScreenCapturing()) {
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "投屏已在采集中，去重");
                    videoLiveCreateRoomDelegate.B0(iSRNApiPromise, q0.f(kotlin.m.a("opened", Boolean.TRUE)));
                } else {
                    screencastCaptureStarted = false;
                    iSoulLiveVideoServiceO0.setScreenCaptureListener(screenCastListener);
                    iSoulLiveVideoServiceO0.startScreenCapture(iIntValue, y40.f.f247508a.b(lastQualityCode));
                    screencastArmed = true;
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.d("VideoLiveCreateRoom", "已请求调起投屏授权 orientation=" + iIntValue);
                    videoLiveCreateRoomDelegate.B0(iSRNApiPromise, q0.f(kotlin.m.a("opened", Boolean.TRUE)));
                }
            } else if (!videoLiveCreateRoomDelegate.q0(new VideoLiveCreateRoomDelegate$showScreencastPicker$1$1(map, iSRNApiPromise))) {
                videoLiveCreateRoomDelegate.B0(iSRNApiPromise, r0.n(kotlin.m.a("opened", Boolean.FALSE), kotlin.m.a("reason", "rtc_engine_unavailable")));
            }
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
    }

    public final void O0(@Nullable Map<String, ? extends Object> map, @Nullable ISRNApiPromise iSRNApiPromise) {
        Object objM8140constructorimpl;
        Object objM8140constructorimpl2;
        if (PatchProxy.proxy(new Object[]{map, iSRNApiPromise}, this, changeQuickRedirect, false, 2, new Class[]{Map.class, ISRNApiPromise.class}, Void.TYPE).isSupported) {
            return;
        }
        if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
            mainHandler.post(new s(map, iSRNApiPromise));
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            Object obj = map != null ? map.get("surfaceID") : null;
            String str = obj instanceof String ? (String) obj : null;
            if (str == null) {
                f143692a.r0(iSRNApiPromise, "surfaceID is invalid");
                objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
            } else {
                if (!(str.length() > 0)) {
                    str = null;
                }
                if (str == null) {
                    f143692a.r0(iSRNApiPromise, "surfaceID is invalid");
                    objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
                } else {
                    Object obj2 = map.get("isFront");
                    Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
                    boolean zBooleanValue = bool != null ? bool.booleanValue() : true;
                    VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = f143692a;
                    if (videoLiveCreateRoomDelegate.z0()) {
                        IRtcSurfaceLocator iRtcSurfaceLocator = (IRtcSurfaceLocator) SoulRouter.j().u(IRtcSurfaceLocator.class);
                        if (iRtcSurfaceLocator == null) {
                            videoLiveCreateRoomDelegate.r0(iSRNApiPromise, "IRtcSurfaceLocator not registered");
                        } else {
                            kotlin.jvm.internal.v.i(iRtcSurfaceLocator, "SoulRouter.instance().se…eLocator not registered\")");
                            IRtcSurfaceLocator.a aVarObtainLocalPreviewView = iRtcSurfaceLocator.obtainLocalPreviewView(str);
                            if (aVarObtainLocalPreviewView == null) {
                                videoLiveCreateRoomDelegate.r0(iSRNApiPromise, "surface not found: " + str);
                            } else {
                                View videoView = aVarObtainLocalPreviewView.getVideoView();
                                ViewGroup viewGroup = videoView instanceof ViewGroup ? (ViewGroup) videoView : null;
                                if (viewGroup == null) {
                                    videoLiveCreateRoomDelegate.r0(iSRNApiPromise, "surface view is not a container");
                                } else {
                                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r rVar = cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a;
                                    rVar.a("VideoLiveCreateRoom", "预览容器=" + viewGroup.getClass().getSimpleName() + " 现有子view=" + viewGroup.getChildCount());
                                    if (videoLiveCreateRoomDelegate.m0()) {
                                        ISoulLiveVideoService iSoulLiveVideoServiceO0 = videoLiveCreateRoomDelegate.o0();
                                        String str2 = previewSurfaceID;
                                        if (str2 != null) {
                                            videoLiveCreateRoomDelegate.k0(str2);
                                        }
                                        videoLiveCreateRoomDelegate.n0();
                                        videoLiveCreateRoomDelegate.p0();
                                        previewBaseChildCount = viewGroup.getChildCount();
                                        iSoulLiveVideoServiceO0.startLocalPreview(viewGroup, zBooleanValue);
                                        iSoulLiveVideoServiceO0.setMirror(lastPreviewMirror, lastPushMirror);
                                        iSoulLiveVideoServiceO0.setVideoQuality(VideoLiveConst.f158982a.g(lastQualityCode));
                                        lastFrontCamera = zBooleanValue;
                                        previewSurfaceID = str;
                                        previewContainer = new WeakReference(viewGroup);
                                        rVar.d("VideoLiveCreateRoom", "本地预览已起播 surfaceID=" + str + " front=" + zBooleanValue);
                                        videoLiveCreateRoomDelegate.B0(iSRNApiPromise, r0.n(kotlin.m.a("success", Boolean.TRUE), kotlin.m.a("surfaceID", str)));
                                        try {
                                            videoLiveCreateRoomDelegate.N0();
                                            objM8140constructorimpl2 = Result.m8140constructorimpl(kotlin.w.f231958a);
                                        } catch (Throwable th2) {
                                            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                                            objM8140constructorimpl2 = Result.m8140constructorimpl(kotlin.l.a(th2));
                                        }
                                        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl2);
                                        if (thM8143exceptionOrNullimpl != null) {
                                            cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.g("VideoLiveCreateRoom", "美颜资源链异常（不影响预览与建房）：" + thM8143exceptionOrNullimpl.getMessage());
                                        }
                                    } else if (!videoLiveCreateRoomDelegate.q0(new VideoLiveCreateRoomDelegate$startPreview$1$1(map, iSRNApiPromise))) {
                                        videoLiveCreateRoomDelegate.r0(iSRNApiPromise, "rtc engine unavailable (already in room?)");
                                    }
                                }
                            }
                        }
                    } else {
                        videoLiveCreateRoomDelegate.r0(iSRNApiPromise, "create room page is gone");
                    }
                    objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
                }
            }
        } catch (Throwable th3) {
            ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th3));
        }
        Throwable thM8143exceptionOrNullimpl2 = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl2 == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl2.getMessage());
    }

    public final void P0(@Nullable Map<String, ? extends Object> map, @Nullable ISRNApiPromise iSRNApiPromise) {
        Object objM8140constructorimpl;
        if (PatchProxy.proxy(new Object[]{map, iSRNApiPromise}, this, changeQuickRedirect, false, 3, new Class[]{Map.class, ISRNApiPromise.class}, Void.TYPE).isSupported) {
            return;
        }
        if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
            mainHandler.post(new t(map, iSRNApiPromise));
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            Object obj = map != null ? map.get("surfaceID") : null;
            String str = obj instanceof String ? (String) obj : null;
            String str2 = previewSurfaceID;
            if (str2 == null) {
                f143692a.B0(iSRNApiPromise, r0.n(kotlin.m.a("success", Boolean.TRUE), kotlin.m.a("reason", "no_preview")));
            } else {
                if (!(str == null || str.length() == 0) && !kotlin.jvm.internal.v.e(str, str2)) {
                    f143692a.B0(iSRNApiPromise, r0.n(kotlin.m.a("success", Boolean.TRUE), kotlin.m.a("reason", "stale_surface")));
                } else if (engineOwned) {
                    VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = f143692a;
                    videoLiveCreateRoomDelegate.k0(str2);
                    videoLiveCreateRoomDelegate.B0(iSRNApiPromise, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                } else {
                    previewSurfaceID = null;
                    f143692a.B0(iSRNApiPromise, r0.n(kotlin.m.a("success", Boolean.TRUE), kotlin.m.a("reason", "engine_not_owned")));
                }
            }
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
    }

    public final void Q0(@Nullable ISRNApiPromise iSRNApiPromise) {
        Object objM8140constructorimpl;
        Object objM8140constructorimpl2;
        if (PatchProxy.proxy(new Object[]{iSRNApiPromise}, this, changeQuickRedirect, false, 14, new Class[]{ISRNApiPromise.class}, Void.TYPE).isSupported) {
            return;
        }
        if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
            mainHandler.post(new u(iSRNApiPromise));
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            ISoulLiveVideoService iSoulLiveVideoService = service;
            if (iSoulLiveVideoService != null && !engineOwned) {
                f143692a.B0(iSRNApiPromise, r0.n(kotlin.m.a("success", Boolean.TRUE), kotlin.m.a("reason", "engine_not_owned")));
            } else if (iSoulLiveVideoService == null || !screencastArmed) {
                f143692a.B0(iSRNApiPromise, r0.n(kotlin.m.a("success", Boolean.TRUE), kotlin.m.a("reason", "not_started")));
            } else {
                try {
                    iSoulLiveVideoService.stopScreenCapture();
                    objM8140constructorimpl2 = Result.m8140constructorimpl(kotlin.w.f231958a);
                } catch (Throwable th2) {
                    ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
                    objM8140constructorimpl2 = Result.m8140constructorimpl(kotlin.l.a(th2));
                }
                screencastArmed = false;
                if (Result.m8146isFailureimpl(objM8140constructorimpl2)) {
                    f143692a.B0(iSRNApiPromise, r0.n(kotlin.m.a("success", Boolean.FALSE), kotlin.m.a("reason", "stop_failed")));
                } else {
                    f143692a.B0(iSRNApiPromise, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                }
            }
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th3) {
            ChangeQuickRedirect changeQuickRedirect4 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th3));
        }
        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
    }

    public final void R0(@Nullable Map<String, ? extends Object> map, @Nullable ISRNApiPromise iSRNApiPromise) {
        Object objM8140constructorimpl;
        boolean z11 = true;
        if (PatchProxy.proxy(new Object[]{map, iSRNApiPromise}, this, changeQuickRedirect, false, 4, new Class[]{Map.class, ISRNApiPromise.class}, Void.TYPE).isSupported) {
            return;
        }
        if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
            mainHandler.post(new v(map, iSRNApiPromise));
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            Object obj = map != null ? map.get("isFront") : null;
            Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
            if (bool != null) {
                boolean zBooleanValue = bool.booleanValue();
                ISoulLiveVideoService iSoulLiveVideoService = service;
                if (previewSurfaceID == null || iSoulLiveVideoService == null) {
                    VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate = f143692a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("local preview is not active (surface=");
                    sb2.append(previewSurfaceID);
                    sb2.append(" service=");
                    sb2.append(iSoulLiveVideoService != null);
                    sb2.append(')');
                    videoLiveCreateRoomDelegate.r0(iSRNApiPromise, sb2.toString());
                } else {
                    iSoulLiveVideoService.switchCamera(zBooleanValue);
                    lastFrontCamera = zBooleanValue;
                    if (VideoLiveConst.f158982a.a(zBooleanValue ? 0 : 1) != 1) {
                        z11 = false;
                    }
                    lastPreviewMirror = z11;
                    lastPushMirror = false;
                    VideoLiveCreateRoomDelegate videoLiveCreateRoomDelegate2 = f143692a;
                    videoLiveCreateRoomDelegate2.N0();
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "镜头翻转 front=" + zBooleanValue + " 采集中=" + iSoulLiveVideoService.isLocalCapturing());
                    videoLiveCreateRoomDelegate2.B0(iSRNApiPromise, q0.f(kotlin.m.a("success", Boolean.TRUE)));
                }
            } else {
                f143692a.r0(iSRNApiPromise, "isFront is invalid");
            }
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
    }

    public final void S0(@Nullable Map<String, ? extends Object> map, @Nullable ISRNApiPromise iSRNApiPromise) {
        Object objM8140constructorimpl;
        if (PatchProxy.proxy(new Object[]{map, iSRNApiPromise}, this, changeQuickRedirect, false, 10, new Class[]{Map.class, ISRNApiPromise.class}, Void.TYPE).isSupported) {
            return;
        }
        if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
            mainHandler.post(new w(map, iSRNApiPromise));
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            Object obj = map != null ? map.get("effects") : null;
            List<? extends Map<String, ? extends Object>> listM = obj instanceof List ? (List) obj : null;
            if (listM == null) {
                listM = kotlin.collections.v.m();
            }
            Object obj2 = map != null ? map.get("backgrounds") : null;
            List<? extends Map<String, ? extends Object>> listM2 = obj2 instanceof List ? (List) obj2 : null;
            if (listM2 == null) {
                listM2 = kotlin.collections.v.m();
            }
            cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a.j(listM, listM2);
            f143692a.B0(iSRNApiPromise, r0.n(kotlin.m.a("effects", Integer.valueOf(listM.size())), kotlin.m.a("backgrounds", Integer.valueOf(listM2.size()))));
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0056  */
    /* JADX WARN: Code duplicated, block: B:37:0x0077  */
    public final void l0(@Nullable Map<String, ? extends Object> map, @Nullable ISRNApiPromise iSRNApiPromise) {
        Object objM8140constructorimpl;
        String str;
        if (PatchProxy.proxy(new Object[]{map, iSRNApiPromise}, this, changeQuickRedirect, false, 9, new Class[]{Map.class, ISRNApiPromise.class}, Void.TYPE).isSupported) {
            return;
        }
        if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
            mainHandler.post(new d(map, iSRNApiPromise));
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            String str2 = null;
            Object obj = map != null ? map.get("effectId") : null;
            String str3 = obj instanceof String ? (String) obj : null;
            if (str3 == null) {
                str = null;
            } else {
                if (str3.length() > 0) {
                    str = str3;
                } else {
                    str = null;
                }
            }
            Object obj2 = map != null ? map.get("resourceUrl") : null;
            String str4 = obj2 instanceof String ? (String) obj2 : null;
            if (str4 == null) {
                str4 = null;
            } else {
                if (!(str4.length() > 0)) {
                    str4 = null;
                }
            }
            Object obj3 = map != null ? map.get("kind") : null;
            String str5 = obj3 instanceof String ? (String) obj3 : null;
            String str6 = (str5 == null || !cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a.i().contains(str5)) ? null : str5;
            Object obj4 = map != null ? map.get("md5") : null;
            String str7 = obj4 instanceof String ? (String) obj4 : null;
            if (str7 != null) {
                if (str7.length() > 0) {
                    str2 = str7;
                }
            }
            if (str == null || str4 == null || str6 == null) {
                f143692a.r0(iSRNApiPromise, "download params invalid");
            } else {
                cn.soulapp.cpnt_voiceparty.rn.createroom.c cVar = cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a;
                cn.soulapp.cpnt_voiceparty.rn.createroom.c.a aVarH = cVar.h(str, str6);
                if (aVarH == null) {
                    aVarH = cVar.k(str, str4, str6, str2);
                }
                cn.soulapp.cpnt_voiceparty.rn.createroom.c.a aVar = aVarH;
                CreateRoomRtcEventSender.f143690a.b(str, str6, 0, 1, 0);
                f143692a.B0(iSRNApiPromise, q0.f(kotlin.m.a("accepted", Boolean.TRUE)));
                a aVar2 = new a(str, aVar.getKind());
                inflightMaterialDownloads.add(aVar2);
                e eVar = new e(str, str6, aVar2);
                aVar2.d(eVar);
                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.t.f159345a.c(aVar.getItem(), aVar.getKind(), eVar);
            }
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
    }

    public final void w0(@Nullable Map<String, ? extends Object> map, @Nullable ISRNApiPromise iSRNApiPromise) {
        Object objM8140constructorimpl;
        if (PatchProxy.proxy(new Object[]{map, iSRNApiPromise}, this, changeQuickRedirect, false, 11, new Class[]{Map.class, ISRNApiPromise.class}, Void.TYPE).isSupported) {
            return;
        }
        if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
            mainHandler.post(new h(map, iSRNApiPromise));
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            Object obj = map != null ? map.get("items") : null;
            List listM = obj instanceof List ? (List) obj : null;
            if (listM == null) {
                listM = kotlin.collections.v.m();
            }
            if (listM.isEmpty()) {
                f143692a.B0(iSRNApiPromise, q0.f(kotlin.m.a("states", kotlin.collections.v.m())));
            } else {
                cn.soulapp.cpnt_voiceparty.rn.createroom.c.f143760a.c(1500L, new VideoLiveCreateRoomDelegate$getEffectDownloadStates$1$1(listM, iSRNApiPromise));
            }
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
    }

    public final void x0(@Nullable ISRNApiPromise iSRNApiPromise) {
        Object objM8140constructorimpl;
        if (PatchProxy.proxy(new Object[]{iSRNApiPromise}, this, changeQuickRedirect, false, 12, new Class[]{ISRNApiPromise.class}, Void.TYPE).isSupported) {
            return;
        }
        if (!kotlin.jvm.internal.v.e(Looper.myLooper(), Looper.getMainLooper())) {
            mainHandler.post(new i(iSRNApiPromise));
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            ISoulLiveVideoService iSoulLiveVideoService = service;
            if (iSoulLiveVideoService == null) {
                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "License 查询：service 未就绪，报 Checking 不阻断");
                f143692a.B0(iSRNApiPromise, q0.f(kotlin.m.a("state", 1)));
            } else {
                if (iSoulLiveVideoService.isBeautyReady()) {
                    licenseState = 2;
                } else if (licenseState == 2) {
                    cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "美颜引擎已失效（曾就绪），触发重建");
                    licenseState = 0;
                }
                if (licenseState == 0 || licenseState == 3) {
                    f143692a.N0();
                }
                int i11 = licenseState;
                cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.a("VideoLiveCreateRoom", "License 状态查询 → " + i11);
                f143692a.B0(iSRNApiPromise, q0.f(kotlin.m.a("state", Integer.valueOf(i11))));
            }
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
        if (thM8143exceptionOrNullimpl == null) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r.f159305a.c("VideoLiveCreateRoom", "指令执行异常：" + thM8143exceptionOrNullimpl.getMessage());
    }

    public final boolean y0(@Nullable Activity activity) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{activity}, this, changeQuickRedirect, false, 35, new Class[]{Activity.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (activity == null || !CommonUtil.f161882a.i1(activity)) {
            return false;
        }
        Intent intent = activity.getIntent();
        String stringExtra = intent != null ? intent.getStringExtra(MediationConstant.KEY_USE_POLICY_PAGE_ID) : null;
        if (stringExtra == null) {
            stringExtra = "";
        }
        Intent intent2 = activity.getIntent();
        String stringExtra2 = intent2 != null ? intent2.getStringExtra("subPage") : null;
        String str = stringExtra2 != null ? stringExtra2 : "";
        return TextUtils.equals(stringExtra, "soul_rn_club_party") && (TextUtils.equals(str, "CreateRoomPage") || TextUtils.equals(str, "NewOwnerCreatePage"));
    }
}