package cn.soulapp.cpnt_voiceparty.soulhouse.playmode;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.lib.utils.ext.ViewExtKt;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: PlayModeManager.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010%\n\u0002\b\u0007\u0018\u0000 !2\u00020\u0001:\u0001\nB\u000f\u0012\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b\u001f\u0010 J#\u0010\u0006\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0003*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J!\u0010\n\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0003*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u0007R\u0014\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\fR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0010R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0010R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0010R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\"\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\""}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/g;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/IPlayModeHandler;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/IModeViewProxy;", ExifInterface.GPS_DIRECTION_TRUE, "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/PlayMode;", "mode", "loadModeView", "(Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/PlayMode;)Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/IModeViewProxy;", "Lkotlin/w;", "removeModeView", "a", "Landroid/view/View;", "Landroid/view/View;", "rootView", "Landroid/view/ViewGroup;", ExpcompatUtils.COMPAT_VALUE_780, "Landroid/view/ViewGroup;", "containerV", "c", "containerH", "d", "containerKtv", l11l11I1111l.l111l1111lIl, "containerOverV", "f", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/PlayMode;", "mCurrentMode", "", "g", "Ljava/util/Map;", "proxyMap", AppAgent.CONSTRUCT, "(Landroid/view/View;)V", "h", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class g implements IPlayModeHandler {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final View rootView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private ViewGroup containerV;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private ViewGroup containerH;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private ViewGroup containerKtv;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private ViewGroup containerOverV;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private PlayMode mCurrentMode;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private Map<PlayMode, IModeViewProxy> proxyMap;

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.soulhouse.playmode.g$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: PlayModeManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/g$a;", "", "", "TAG", "Ljava/lang/String;", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(q qVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: PlayModeManager.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f154979a;
        public static ChangeQuickRedirect changeQuickRedirect;

        static {
            if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 1, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            int[] iArr = new int[PlayMode.values().length];
            iArr[PlayMode.PK.ordinal()] = 1;
            iArr[PlayMode.Auction.ordinal()] = 2;
            iArr[PlayMode.QubaoShow.ordinal()] = 3;
            iArr[PlayMode.SpeedMatch.ordinal()] = 4;
            iArr[PlayMode.TurtleSoup.ordinal()] = 5;
            iArr[PlayMode.PVP.ordinal()] = 6;
            iArr[PlayMode.HeartBeat.ordinal()] = 7;
            iArr[PlayMode.H5Game.ordinal()] = 8;
            iArr[PlayMode.GuineaPig.ordinal()] = 9;
            iArr[PlayMode.AuctionPk.ordinal()] = 10;
            iArr[PlayMode.ThrowingThunder.ordinal()] = 11;
            f154979a = iArr;
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 5, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    public g(@NotNull View rootView) {
        v.j(rootView, "rootView");
        this.rootView = rootView;
        this.proxyMap = new LinkedHashMap();
        this.containerV = (ViewGroup) rootView.findViewById(R$id.f128728q7);
        this.containerH = (ViewGroup) rootView.findViewById(R$id.f128659p7);
        this.containerKtv = (ViewGroup) rootView.findViewById(R$id.f128178i7);
        this.containerOverV = (ViewGroup) rootView.findViewById(R$id.cN);
    }

    @Nullable
    public final <T extends IModeViewProxy> T a(@NotNull PlayMode mode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{mode}, this, changeQuickRedirect, false, 4, new Class[]{PlayMode.class}, IModeViewProxy.class);
        if (patchProxyResultProxy.isSupported) {
            return (T) patchProxyResultProxy.result;
        }
        v.j(mode, "mode");
        if (this.proxyMap.get(mode) == null) {
            SoulHouseExtensionKt.w0(this, "PlayModeManager", "getProxy, mode = " + mode + ",第一次创建代理类");
            switch (b.f154979a[mode.ordinal()]) {
                case 1:
                    Map<PlayMode, IModeViewProxy> map = this.proxyMap;
                    PlayMode playMode = PlayMode.PK;
                    Context context = this.rootView.getContext();
                    v.i(context, "rootView.context");
                    map.put(playMode, new f(context));
                    break;
                case 2:
                    Map<PlayMode, IModeViewProxy> map2 = this.proxyMap;
                    PlayMode playMode2 = PlayMode.Auction;
                    Context context2 = this.rootView.getContext();
                    v.i(context2, "rootView.context");
                    map2.put(playMode2, new cn.soulapp.cpnt_voiceparty.soulhouse.playmode.b(context2));
                    break;
                case 3:
                    Map<PlayMode, IModeViewProxy> map3 = this.proxyMap;
                    PlayMode playMode3 = PlayMode.QubaoShow;
                    Context context3 = this.rootView.getContext();
                    v.i(context3, "rootView.context");
                    map3.put(playMode3, new cn.soulapp.cpnt_voiceparty.soulhouse.qubaoshow.a(context3));
                    break;
                case 4:
                    Map<PlayMode, IModeViewProxy> map4 = this.proxyMap;
                    PlayMode playMode4 = PlayMode.SpeedMatch;
                    Context context4 = this.rootView.getContext();
                    v.i(context4, "rootView.context");
                    map4.put(playMode4, new j(context4));
                    break;
                case 5:
                    Map<PlayMode, IModeViewProxy> map5 = this.proxyMap;
                    PlayMode playMode5 = PlayMode.TurtleSoup;
                    Context context5 = this.rootView.getContext();
                    v.i(context5, "rootView.context");
                    map5.put(playMode5, new k(context5));
                    break;
                case 6:
                    Map<PlayMode, IModeViewProxy> map6 = this.proxyMap;
                    PlayMode playMode6 = PlayMode.PVP;
                    Context context6 = this.rootView.getContext();
                    v.i(context6, "rootView.context");
                    map6.put(playMode6, new i(context6));
                    break;
                case 7:
                    Map<PlayMode, IModeViewProxy> map7 = this.proxyMap;
                    PlayMode playMode7 = PlayMode.HeartBeat;
                    Context context7 = this.rootView.getContext();
                    v.i(context7, "rootView.context");
                    map7.put(playMode7, new e(context7));
                    break;
                case 8:
                    Map<PlayMode, IModeViewProxy> map8 = this.proxyMap;
                    PlayMode playMode8 = PlayMode.H5Game;
                    Context context8 = this.rootView.getContext();
                    v.i(context8, "rootView.context");
                    map8.put(playMode8, new d(context8));
                    break;
                case 9:
                    Map<PlayMode, IModeViewProxy> map9 = this.proxyMap;
                    PlayMode playMode9 = PlayMode.GuineaPig;
                    Context context9 = this.rootView.getContext();
                    v.i(context9, "rootView.context");
                    map9.put(playMode9, new c(context9));
                    break;
                case 10:
                    Map<PlayMode, IModeViewProxy> map10 = this.proxyMap;
                    PlayMode playMode10 = PlayMode.AuctionPk;
                    Context context10 = this.rootView.getContext();
                    v.i(context10, "rootView.context");
                    map10.put(playMode10, new a(context10));
                    break;
                case 11:
                    Map<PlayMode, IModeViewProxy> map11 = this.proxyMap;
                    PlayMode playMode11 = PlayMode.ThrowingThunder;
                    Context context11 = this.rootView.getContext();
                    v.i(context11, "rootView.context");
                    map11.put(playMode11, new ThrowingThunderProxy(context11));
                    break;
            }
        } else {
            SoulHouseExtensionKt.w0(this, "PlayModeManager", "getProxy, mode = " + mode + " ,代理已经存在，直接复用");
        }
        IModeViewProxy iModeViewProxy = this.proxyMap.get(mode);
        if (iModeViewProxy instanceof IModeViewProxy) {
            return (T) iModeViewProxy;
        }
        return null;
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.playmode.IPlayModeHandler
    @Nullable
    public <T extends IModeViewProxy> T loadModeView(@NotNull PlayMode mode) {
        View modeRootView;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{mode}, this, changeQuickRedirect, false, 2, new Class[]{PlayMode.class}, IModeViewProxy.class);
        if (patchProxyResultProxy.isSupported) {
            return (T) patchProxyResultProxy.result;
        }
        v.j(mode, "mode");
        if (mode == this.mCurrentMode) {
            SoulHouseExtensionKt.w0(this, "PlayModeManager", "loadModeView ,mode = " + mode + " ,重复加载直接返回代理类");
            T t11 = (T) a(mode);
            if (t11 instanceof IModeViewProxy) {
                return t11;
            }
            return null;
        }
        SoulHouseExtensionKt.w0(this, "PlayModeManager", "loadModeView ,mode = " + mode);
        this.mCurrentMode = mode;
        int type = mode.getType();
        if (type == 1) {
            ViewExtKt.l(this.containerV);
            T t12 = (T) a(mode);
            modeRootView = t12 != null ? t12.getModeRootView() : null;
            ViewGroup viewGroup = this.containerH;
            if (viewGroup != null) {
                viewGroup.removeAllViews();
            }
            ViewExtKt.j(this.containerH);
            ViewGroup viewGroup2 = this.containerOverV;
            if (viewGroup2 != null) {
                viewGroup2.removeAllViews();
            }
            ViewGroup viewGroup3 = this.containerOverV;
            if (viewGroup3 != null) {
                ViewExtKt.j(viewGroup3);
            }
            ViewGroup viewGroup4 = this.containerKtv;
            if (viewGroup4 != null) {
                viewGroup4.removeAllViews();
            }
            ViewExtKt.j(this.containerKtv);
            ViewGroup viewGroup5 = this.containerV;
            if (viewGroup5 != null) {
                viewGroup5.removeAllViews();
            }
            ViewGroup viewGroup6 = this.containerV;
            if (viewGroup6 != null) {
                viewGroup6.addView(modeRootView, new ViewGroup.LayoutParams(-1, -2));
            }
            return t12;
        }
        if (type == 2) {
            ViewExtKt.l(this.containerH);
            T t13 = (T) a(mode);
            modeRootView = t13 != null ? t13.getModeRootView() : null;
            ViewGroup viewGroup7 = this.containerKtv;
            if (viewGroup7 != null) {
                viewGroup7.removeAllViews();
            }
            ViewExtKt.j(this.containerKtv);
            ViewGroup viewGroup8 = this.containerV;
            if (viewGroup8 != null) {
                viewGroup8.removeAllViews();
            }
            ViewExtKt.j(this.containerV);
            ViewGroup viewGroup9 = this.containerOverV;
            if (viewGroup9 != null) {
                viewGroup9.removeAllViews();
            }
            ViewGroup viewGroup10 = this.containerOverV;
            if (viewGroup10 != null) {
                ViewExtKt.j(viewGroup10);
            }
            ViewGroup viewGroup11 = this.containerH;
            if (viewGroup11 != null) {
                viewGroup11.removeAllViews();
            }
            ViewGroup viewGroup12 = this.containerH;
            if (viewGroup12 != null) {
                viewGroup12.addView(modeRootView, new ViewGroup.LayoutParams(-1, -2));
            }
            return t13;
        }
        if (type == 3) {
            ViewExtKt.l(this.containerKtv);
            T t14 = (T) a(mode);
            modeRootView = t14 != null ? t14.getModeRootView() : null;
            ViewGroup viewGroup13 = this.containerV;
            if (viewGroup13 != null) {
                viewGroup13.removeAllViews();
            }
            ViewExtKt.j(this.containerV);
            ViewGroup viewGroup14 = this.containerH;
            if (viewGroup14 != null) {
                viewGroup14.removeAllViews();
            }
            ViewExtKt.j(this.containerH);
            ViewGroup viewGroup15 = this.containerOverV;
            if (viewGroup15 != null) {
                viewGroup15.removeAllViews();
            }
            ViewGroup viewGroup16 = this.containerOverV;
            if (viewGroup16 != null) {
                ViewExtKt.j(viewGroup16);
            }
            ViewGroup viewGroup17 = this.containerKtv;
            if (viewGroup17 != null) {
                viewGroup17.removeAllViews();
            }
            ViewGroup viewGroup18 = this.containerV;
            if (viewGroup18 != null) {
                viewGroup18.removeAllViews();
            }
            ViewGroup viewGroup19 = this.containerV;
            if (viewGroup19 != null) {
                ViewExtKt.j(viewGroup19);
            }
            ViewGroup viewGroup20 = this.containerKtv;
            if (viewGroup20 != null) {
                viewGroup20.addView(modeRootView, new ViewGroup.LayoutParams(-1, -2));
            }
            return t14;
        }
        if (type != 4) {
            return null;
        }
        ViewGroup viewGroup21 = this.containerOverV;
        if (viewGroup21 != null) {
            ViewExtKt.l(viewGroup21);
        }
        T t15 = (T) a(mode);
        modeRootView = t15 != null ? t15.getModeRootView() : null;
        ViewGroup viewGroup22 = this.containerV;
        if (viewGroup22 != null) {
            viewGroup22.removeAllViews();
        }
        ViewExtKt.j(this.containerV);
        ViewGroup viewGroup23 = this.containerH;
        if (viewGroup23 != null) {
            viewGroup23.removeAllViews();
        }
        ViewExtKt.j(this.containerH);
        ViewGroup viewGroup24 = this.containerV;
        if (viewGroup24 != null) {
            viewGroup24.removeAllViews();
        }
        ViewGroup viewGroup25 = this.containerV;
        if (viewGroup25 != null) {
            ViewExtKt.j(viewGroup25);
        }
        ViewGroup viewGroup26 = this.containerKtv;
        if (viewGroup26 != null) {
            viewGroup26.removeAllViews();
        }
        ViewExtKt.j(this.containerKtv);
        ViewGroup viewGroup27 = this.containerOverV;
        if (viewGroup27 != null) {
            viewGroup27.removeAllViews();
        }
        ViewGroup viewGroup28 = this.containerOverV;
        if (viewGroup28 != null) {
            viewGroup28.addView(modeRootView, new ViewGroup.LayoutParams(-1, -2));
        }
        return t15;
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.playmode.IPlayModeHandler
    public void removeModeView(@NotNull PlayMode mode) {
        if (PatchProxy.proxy(new Object[]{mode}, this, changeQuickRedirect, false, 3, new Class[]{PlayMode.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(mode, "mode");
        SoulHouseExtensionKt.w0(this, "PlayModeManager", "removeModeView mode = " + mode);
        int type = mode.getType();
        if (type == 1) {
            ViewGroup viewGroup = this.containerV;
            if (viewGroup != null) {
                viewGroup.removeAllViews();
            }
            ViewExtKt.j(this.containerV);
        } else if (type == 2) {
            ViewGroup viewGroup2 = this.containerH;
            if (viewGroup2 != null) {
                viewGroup2.removeAllViews();
            }
            ViewExtKt.j(this.containerH);
        } else if (type == 3) {
            ViewGroup viewGroup3 = this.containerKtv;
            if (viewGroup3 != null) {
                viewGroup3.removeAllViews();
            }
            ViewExtKt.j(this.containerKtv);
        } else if (type == 4) {
            ViewGroup viewGroup4 = this.containerOverV;
            if (viewGroup4 != null) {
                viewGroup4.removeAllViews();
            }
            ViewGroup viewGroup5 = this.containerOverV;
            if (viewGroup5 != null) {
                ViewExtKt.j(viewGroup5);
            }
        }
        this.mCurrentMode = null;
        this.proxyMap.remove(mode);
    }
}