package cn.soulapp.cpnt_voiceparty.soulhouse;

import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import cn.android.lib.soul_view.R$anim;
import cn.soul.android.base.block_frame.frame.IProvider;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.client.component.middle.platform.base.BaseKotlinActivity;
import cn.soulapp.android.lib.common.R;
import cn.soulapp.android.lib.common.api.ApiConstants;
import cn.soulapp.cpnt_voiceparty.R$drawable;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.api.IVoiceParty;
import cn.soulapp.cpnt_voiceparty.util.t1;
import cn.soulapp.lib.basic.annotation.StatusBar;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ss.ttvideoengine.log.VideoEventOneOutSync;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: SoulHouseSettingActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001a\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016R\u0016\u0010\u0014\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/SoulHouseSettingActivity;", "Lcn/soulapp/android/client/component/middle/platform/base/BaseKotlinActivity;", "Lkotlin/w;", "m", "d", "o", "", "type", "n", "Landroid/app/Activity;", "pActivity", "", "pIsDark", "p", "initView", VideoEventOneOutSync.END_TYPE_FINISH, "", "getLayoutId", "a", "Z", "mIsOpen", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
@StatusBar(show = false)
public final class SoulHouseSettingActivity extends BaseKotlinActivity {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f144291b = new LinkedHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private boolean mIsOpen = true;

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class a implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f144292a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f144293b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ SoulHouseSettingActivity f144294c;

        public a(View view, long j11, SoulHouseSettingActivity soulHouseSettingActivity) {
            this.f144292a = view;
            this.f144293b = j11;
            this.f144294c = soulHouseSettingActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - t1.d(this.f144292a) > this.f144293b || (this.f144292a instanceof Checkable)) {
                t1.j(this.f144292a, jCurrentTimeMillis);
                this.f144294c.onBackPressed();
            }
        }
    }

    /* JADX INFO: compiled from: SoulHouseSettingActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/SoulHouseSettingActivity$b", "Lty/s;", "", "t", "Lkotlin/w;", "d", "(Ljava/lang/Boolean;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class b extends ty.s<Boolean> {
        public static ChangeQuickRedirect changeQuickRedirect;

        b() {
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable Boolean t11) {
            int i11 = 1;
            boolean z11 = false;
            if (!PatchProxy.proxy(new Object[]{t11}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.class}, Void.TYPE).isSupported && kotlin.jvm.internal.v.e(t11, Boolean.TRUE)) {
                IProvider iProviderS = cn.soulapp.cpnt_voiceparty.util.e.f162158a.s();
                if (iProviderS != null) {
                    cn.soul.android.base.block_frame.block.a<a60.d> aVarI = g.f149956a.i();
                    a60.d dVar = new a60.d(z11, i11, null);
                    dVar.b(SoulHouseSettingActivity.this.mIsOpen);
                    ChangeQuickRedirect changeQuickRedirect2 = kotlin.w.changeQuickRedirect;
                    iProviderS.provideX(aVarI, dVar);
                }
                SoulHouseSettingActivity.this.o();
            }
        }
    }

    private final void d() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        ((ImageView) _$_findCachedViewById(R$id.WY)).setOnClickListener(new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SoulHouseSettingActivity.e(this.f160054a, view);
            }
        });
        ImageView imageView = (ImageView) _$_findCachedViewById(R$id.f129026ui);
        imageView.setOnClickListener(new a(imageView, 800L, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(SoulHouseSettingActivity this$0, View view) {
        if (PatchProxy.proxy(new Object[]{this$0, view}, null, changeQuickRedirect, true, 11, new Class[]{SoulHouseSettingActivity.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        boolean z11 = !this$0.mIsOpen;
        this$0.mIsOpen = z11;
        this$0.n(z11 ? "0" : "1");
    }

    private final void m() {
        a60.d dVar;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        ((TextView) _$_findCachedViewById(R$id.Yj0)).setText("允许所有Souler加入派对");
        ((TextView) _$_findCachedViewById(R$id.f129010ua)).setText("关闭时，派对入口仅本群成员及其关注者可见");
        IProvider iProviderS = cn.soulapp.cpnt_voiceparty.util.e.f162158a.s();
        this.mIsOpen = (iProviderS == null || (dVar = (a60.d) iProviderS.getX(g.f149956a.i())) == null) ? true : dVar.getF1769a();
    }

    private final void n(String str) {
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 7, new Class[]{String.class}, Void.TYPE).isSupported) {
            return;
        }
        ty.h hVar = ApiConstants.APIA;
        hVar.j(((IVoiceParty) hVar.i(IVoiceParty.class)).setRoomDistribute(str, "0"), new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        ((ImageView) _$_findCachedViewById(R$id.WY)).setImageResource(this.mIsOpen ? R$drawable.Q4 : R$drawable.P4);
    }

    private final void p(Activity activity, boolean z11) {
        if (!PatchProxy.proxy(new Object[]{activity, new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 8, new Class[]{Activity.class, Boolean.TYPE}, Void.TYPE).isSupported && Build.VERSION.SDK_INT >= 23) {
            int systemUiVisibility = activity.getWindow().getDecorView().getSystemUiVisibility();
            activity.getWindow().getDecorView().setSystemUiVisibility(z11 ? systemUiVisibility & (-8193) : systemUiVisibility | 8192);
        }
    }

    static /* synthetic */ void q(SoulHouseSettingActivity soulHouseSettingActivity, Activity activity, boolean z11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z11 = true;
        }
        soulHouseSettingActivity.p(activity, z11);
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinActivity
    public void _$_clearFindViewByIdCache() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 9, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.f144291b.clear();
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinActivity
    @Nullable
    public View _$_findCachedViewById(int i11) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 10, new Class[]{Integer.TYPE}, View.class);
        if (patchProxyResultProxy.isSupported) {
            return (View) patchProxyResultProxy.result;
        }
        Map<Integer, View> map = this.f144291b;
        View view = map.get(Integer.valueOf(i11));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i11);
        if (viewFindViewById == null) {
            return null;
        }
        map.put(Integer.valueOf(i11), viewFindViewById);
        return viewFindViewById;
    }

    @Override // android.app.Activity
    public void finish() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        super.finish();
        overridePendingTransition(0, R.anim.push_top_out);
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinActivity
    public int getLayoutId() {
        return R$layout.K;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinActivity
    public void initView() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        overridePendingTransition(R$anim.f4797e, 0);
        q(this, this, false, 2, null);
        setSwipeBackEnable(false);
        ViewGroup.LayoutParams layoutParams = ((TextView) _$_findCachedViewById(R$id.bJ)).getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = getStatusBarHeight();
        m();
        o();
        d();
    }
}