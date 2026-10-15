package cn.soulapp.cpnt_voiceparty.soulhouse.playmode;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentManager;
import cn.com.hjq.shape.view.ShapeTextView;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.lib_dialog.SoulThemeDialog;
import cn.soulapp.android.chatroom.bean.JoinRoomBean;
import cn.soulapp.android.client.component.middle.platform.bean.im.RoomUser;
import cn.soulapp.android.lib.analyticsV2.Const;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import cn.soulapp.cpnt_voiceparty.databinding.CVpModeThrowingThunderBinding;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.page.SoulHouseFragment;
import cn.soulapp.cpnt_voiceparty.soulhouse.slice.SliceManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderApplyJoinDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderRoundInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderView;
import cn.soulapp.cpnt_voiceparty.util.track.o;
import cn.soulapp.lib.utils.ext.ViewExtKt;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.walid.rxretrofit.HttpSubscriber;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.r0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.v;
import kotlin.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: ThrowingThunderProxy.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"J\b\u0010\u0003\u001a\u00020\u0002H\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0003J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\f\u001a\u00020\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR$\u0010\u0018\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006#"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/ThrowingThunderProxy;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/IModeViewProxy;", "Lkotlin/w;", "h", "i", "Landroid/view/View;", "getModeRootView", "Lcn/soulapp/cpnt_voiceparty/soulhouse/throwingthunder/ThrowingThunderView;", l11l11I1111l.l111l1111lIl, "", "applyNum", "j", "k", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpModeThrowingThunderBinding;", "a", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpModeThrowingThunderBinding;", "binding", "Lcn/soul/android/base/block_frame/databus/DataBus;", ExpcompatUtils.COMPAT_VALUE_780, "Lcn/soul/android/base/block_frame/databus/DataBus;", "d", "()Lcn/soul/android/base/block_frame/databus/DataBus;", "g", "(Lcn/soul/android/base/block_frame/databus/DataBus;)V", "dataBus", "c", "I", "getApplyNum", "()I", "f", "(I)V", "Landroid/content/Context;", com.umeng.analytics.pro.f.X, AppAgent.CONSTRUCT, "(Landroid/content/Context;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class ThrowingThunderProxy implements IModeViewProxy {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final CVpModeThrowingThunderBinding binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private DataBus dataBus;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int applyNum;

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/lib/utils/ext/ViewExtKt$b", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class a implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f154959a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f154960b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ThrowingThunderProxy f154961c;

        public a(View view, long j11, ThrowingThunderProxy throwingThunderProxy) {
            this.f154959a = view;
            this.f154960b = j11;
            this.f154961c = throwingThunderProxy;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SoulHouseFragment soulHouseFragment;
            ThrowingThunderSlice throwingThunderSlice;
            ThrowingThunderInfo throwingThunderInfo;
            ThrowingThunderRoundInfo roundInfo;
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ViewExtKt.d(this.f154959a) > this.f154960b) {
                ViewExtKt.q(this.f154959a, jCurrentTimeMillis);
                DataBus dataBus = this.f154961c.getDataBus();
                if (dataBus != null && (soulHouseFragment = (SoulHouseFragment) dataBus.d(cn.soulapp.cpnt_voiceparty.soulhouse.b.f145790a.M())) != null) {
                    SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.f154961c.getDataBus());
                    Integer numValueOf = (soulHouseDriverJ0 == null || (throwingThunderSlice = (ThrowingThunderSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.P())) == null || (throwingThunderInfo = throwingThunderSlice.getThrowingThunderInfo()) == null || (roundInfo = throwingThunderInfo.getRoundInfo()) == null) ? null : Integer.valueOf(roundInfo.getState());
                    SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.f154961c.getDataBus());
                    if ((soulHouseDriverJ1 != null && SoulHouseExtensionKt.b(soulHouseDriverJ1)) && numValueOf != null && numValueOf.intValue() == 2) {
                        ExtensionsKt.toast("解救阶段暂不支持中途上麦");
                    } else {
                        ThrowingThunderApplyJoinDialog throwingThunderApplyJoinDialogA = ThrowingThunderApplyJoinDialog.INSTANCE.a(this.f154961c.getDataBus());
                        FragmentManager childFragmentManager = soulHouseFragment.getChildFragmentManager();
                        v.i(childFragmentManager, "it.childFragmentManager");
                        throwingThunderApplyJoinDialogA.show(childFragmentManager, "throwingThunderApplyJoinDialog");
                    }
                }
                this.f154961c.f(0);
                ViewExtKt.j(this.f154961c.binding.f138556c);
                SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(this.f154961c.getDataBus());
                ThrowingThunderSlice throwingThunderSlice2 = soulHouseDriverJ2 != null ? (ThrowingThunderSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ2, SliceManager.INSTANCE.P()) : null;
                if (throwingThunderSlice2 != null) {
                    throwingThunderSlice2.H(0);
                }
                o.f162407a.i(Const.EventType.CLICK, "ShuaiLei__ApplyButton_clk", new HashMap());
            }
        }
    }

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/lib/utils/ext/ViewExtKt$b", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class b implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f154962a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f154963b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ThrowingThunderProxy f154964c;

        public b(View view, long j11, ThrowingThunderProxy throwingThunderProxy) {
            this.f154962a = view;
            this.f154963b = j11;
            this.f154964c = throwingThunderProxy;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            JoinRoomBean joinRoomBeanT;
            RoomUser roomUser;
            boolean z11 = true;
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ViewExtKt.d(this.f154962a) > this.f154963b) {
                ViewExtKt.q(this.f154962a, jCurrentTimeMillis);
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.f154964c.getDataBus());
                Integer numValueOf = (soulHouseDriverJ0 == null || (joinRoomBeanT = SoulHouseExtensionKt.t(soulHouseDriverJ0)) == null || (roomUser = joinRoomBeanT.roomerModel) == null) ? null : Integer.valueOf(roomUser.getRole());
                int i11 = RoomUser.ROLE_OWNER;
                if (numValueOf == null || numValueOf.intValue() != i11) {
                    int i12 = RoomUser.ROLE_MANAGER;
                    if (numValueOf == null || numValueOf.intValue() != i12) {
                        z11 = false;
                    }
                }
                if (z11) {
                    this.f154964c.h();
                }
            }
        }
    }

    /* JADX INFO: compiled from: ThrowingThunderProxy.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00052\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/playmode/ThrowingThunderProxy$c", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class c extends HttpSubscriber<RequestResult<Object>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        c() {
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(@Nullable RequestResult<Object> requestResult) {
            if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            if (requestResult != null && requestResult.getResult()) {
                return;
            }
            String resMsg = requestResult != null ? requestResult.getResMsg() : null;
            if (resMsg == null) {
                resMsg = "";
            }
            ExtensionsKt.toast(resMsg);
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            if (str == null) {
                str = "";
            }
            ExtensionsKt.toast(str);
        }
    }

    public ThrowingThunderProxy(@NotNull Context context) {
        v.j(context, "context");
        CVpModeThrowingThunderBinding cVpModeThrowingThunderBindingInflate = CVpModeThrowingThunderBinding.inflate(LayoutInflater.from(context), null, false);
        v.i(cVpModeThrowingThunderBindingInflate, "inflate(LayoutInflater.from(context), null, false)");
        this.binding = cVpModeThrowingThunderBindingInflate;
        ShapeTextView shapeTextView = cVpModeThrowingThunderBindingInflate.f138555b;
        shapeTextView.setOnClickListener(new a(shapeTextView, 500L, this));
        ImageView imageView = cVpModeThrowingThunderBindingInflate.f138557d;
        imageView.setOnClickListener(new b(imageView, 500L, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CheckResult"})
    public final void h() {
        DataBus dataBus;
        SoulHouseFragment soulHouseFragment;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (dataBus = this.dataBus) == null || (soulHouseFragment = (SoulHouseFragment) dataBus.d(cn.soulapp.cpnt_voiceparty.soulhouse.b.f145790a.M())) == null) {
            return;
        }
        SoulThemeDialog.Companion companion = SoulThemeDialog.INSTANCE;
        SoulThemeDialog.AttributeConfig attributeConfig = new SoulThemeDialog.AttributeConfig();
        attributeConfig.I("是否结束本轮游戏");
        attributeConfig.z("游戏结束后本局不可复原");
        attributeConfig.G(false);
        attributeConfig.w("取消");
        attributeConfig.y("结束");
        attributeConfig.A(true);
        attributeConfig.C(true);
        attributeConfig.x(new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.playmode.ThrowingThunderProxy$stopGame$1$1$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                this.this$0.i();
            }
        });
        SoulThemeDialog soulThemeDialogA = companion.a(attributeConfig);
        FragmentManager childFragmentManager = soulHouseFragment.getChildFragmentManager();
        v.i(childFragmentManager, "it.childFragmentManager");
        soulThemeDialogA.A(childFragmentManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CheckResult"})
    public final void i() {
        SoulHouseDriver soulHouseDriverJ0;
        ThrowingThunderSlice throwingThunderSlice;
        ThrowingThunderInfo throwingThunderInfo;
        ThrowingThunderRoundInfo roundInfo;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], Void.TYPE).isSupported || (soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus)) == null || (throwingThunderSlice = (ThrowingThunderSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.P())) == null || (throwingThunderInfo = throwingThunderSlice.getThrowingThunderInfo()) == null || (roundInfo = throwingThunderInfo.getRoundInfo()) == null) {
            return;
        }
        long roundId = roundInfo.getRoundId();
        h30.g gVar = h30.g.f225309a;
        Pair[] pairArr = new Pair[2];
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
        pairArr[0] = new Pair("roomId", soulHouseDriverJ1 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ1) : null);
        pairArr[1] = new Pair("roundId", Long.valueOf(roundId));
        gVar.J9(r0.l(pairArr)).subscribeWith(new c());
    }

    @Nullable
    /* JADX INFO: renamed from: d, reason: from getter */
    public final DataBus getDataBus() {
        return this.dataBus;
    }

    @NotNull
    public final ThrowingThunderView e() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], ThrowingThunderView.class);
        if (patchProxyResultProxy.isSupported) {
            return (ThrowingThunderView) patchProxyResultProxy.result;
        }
        ThrowingThunderView throwingThunderView = this.binding.f138558e;
        v.i(throwingThunderView, "binding.throwingThunderView");
        return throwingThunderView;
    }

    public final void f(int i11) {
        this.applyNum = i11;
    }

    public final void g(@Nullable DataBus dataBus) {
        this.dataBus = dataBus;
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.playmode.IModeViewProxy
    @NotNull
    public View getModeRootView() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], View.class);
        if (patchProxyResultProxy.isSupported) {
            return (View) patchProxyResultProxy.result;
        }
        ConstraintLayout root = this.binding.getRoot();
        v.i(root, "binding.root");
        return root;
    }

    public final void j(int i11) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 6, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        this.applyNum = i11;
        if (i11 <= 0) {
            ViewExtKt.j(this.binding.f138556c);
            return;
        }
        ViewExtKt.l(this.binding.f138556c);
        if (i11 >= 100) {
            this.binding.f138556c.setText("99+");
        } else {
            this.binding.f138556c.setText(String.valueOf(i11));
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0069  */
    public final void k() {
        boolean z11;
        ThrowingThunderSlice throwingThunderSlice;
        ThrowingThunderInfo throwingThunderInfo;
        JoinRoomBean joinRoomBeanT;
        RoomUser roomUser;
        ThrowingThunderSlice throwingThunderSlice2;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        this.applyNum = (soulHouseDriverJ0 == null || (throwingThunderSlice2 = (ThrowingThunderSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.P())) == null) ? 0 : throwingThunderSlice2.getApplyNum();
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
        roundInfo = null;
        roundInfo = null;
        ThrowingThunderRoundInfo roundInfo = null;
        Integer numValueOf = (soulHouseDriverJ1 == null || (joinRoomBeanT = SoulHouseExtensionKt.t(soulHouseDriverJ1)) == null || (roomUser = joinRoomBeanT.roomerModel) == null) ? null : Integer.valueOf(roomUser.getRole());
        int i11 = RoomUser.ROLE_OWNER;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            z11 = true;
        } else {
            int i12 = RoomUser.ROLE_MANAGER;
            if (numValueOf != null && numValueOf.intValue() == i12) {
                z11 = true;
            } else {
                z11 = false;
            }
        }
        if (!z11) {
            this.applyNum = 0;
            SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(this.dataBus);
            ThrowingThunderSlice throwingThunderSlice3 = soulHouseDriverJ2 != null ? (ThrowingThunderSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ2, SliceManager.INSTANCE.P()) : null;
            if (throwingThunderSlice3 != null) {
                throwingThunderSlice3.H(0);
            }
            ViewExtKt.j(this.binding.f138557d);
            ViewExtKt.k(this.binding.f138555b);
            ViewExtKt.j(this.binding.f138556c);
            return;
        }
        SoulHouseDriver soulHouseDriverJ3 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ3 != null && (throwingThunderSlice = (ThrowingThunderSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ3, SliceManager.INSTANCE.P())) != null && (throwingThunderInfo = throwingThunderSlice.getThrowingThunderInfo()) != null) {
            roundInfo = throwingThunderInfo.getRoundInfo();
        }
        if (roundInfo == null) {
            ViewExtKt.j(this.binding.f138557d);
        } else {
            ViewExtKt.l(this.binding.f138557d);
        }
        if (this.binding.f138555b.getVisibility() != 0) {
            ViewExtKt.l(this.binding.f138555b);
            o.f162407a.i("exp", "ShuaiLei__ApplyButton_exp", new HashMap());
        }
        j(this.applyNum);
    }
}