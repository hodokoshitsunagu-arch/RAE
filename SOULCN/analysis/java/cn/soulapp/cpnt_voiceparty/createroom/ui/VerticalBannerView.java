package cn.soulapp.cpnt_voiceparty.createroom.ui;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import cn.android.lib.soul_entity.BizObtainParam;
import cn.android.lib.soul_entity.OperationModel;
import cn.soul.android.component.SoulRouter;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.client.component.middle.platform.utils.application.AppListenerHelper;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.android.utils.a1;
import cn.soulapp.cpnt_voiceparty.R$anim;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.util.d0;
import cn.soulapp.lib.utils.ext.ViewExtKt;
import com.baidu.platform.comapi.map.MapController;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.umeng.analytics.pro.f;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.j;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: VerticalBannerView.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 52\u00020\u0001:\u0001\u0012B'\b\u0007\u0012\u0006\u0010/\u001a\u00020.\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u000100\u0012\b\b\u0002\u00102\u001a\u00020\u0015¢\u0006\u0004\b3\u00104J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u001c\u0010\n\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J\u0016\u0010\r\u001a\u00020\u00022\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u000bJ\b\u0010\u000e\u001a\u00020\u0002H\u0014R&\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001e\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u001cR\u0016\u0010 \u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u001fR\u001c\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\"R#\u0010*\u001a\n %*\u0004\u0018\u00010$0$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R#\u0010-\u001a\n %*\u0004\u0018\u00010$0$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010'\u001a\u0004\b,\u0010)¨\u00066"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/createroom/ui/VerticalBannerView;", "Landroid/widget/FrameLayout;", "Lkotlin/w;", "c", "d", l11l11I1111l.l111l1111lIl, "Landroid/view/View;", "view", "Lcn/android/lib/soul_entity/OperationModel;", MapController.ITEM_LAYER_TAG, "f", "", "items", "setData", "onDetachedFromWindow", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "a", "Ljava/util/HashSet;", "trackId", "", ExpcompatUtils.COMPAT_VALUE_780, "I", "currentPosition", "Ljava/util/List;", "operationModels", "Ljava/util/Timer;", "Ljava/util/Timer;", "timer", "", "Z", "isStarted", "", "[Landroid/view/View;", "itemViews", "Landroid/view/animation/Animation;", "kotlin.jvm.PlatformType", "g", "Lkotlin/Lazy;", "getSlideInAnimation", "()Landroid/view/animation/Animation;", "slideInAnimation", "h", "getSlideOutAnimation", "slideOutAnimation", "Landroid/content/Context;", f.X, "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", AppAgent.CONSTRUCT, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "j", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class VerticalBannerView extends FrameLayout {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private HashSet<String> trackId;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int currentPosition;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private List<OperationModel> operationModels;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Timer timer;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isStarted;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final View[] itemViews;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy slideInAnimation;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy slideOutAnimation;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f130842i;

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.createroom.ui.VerticalBannerView$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: VerticalBannerView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/createroom/ui/VerticalBannerView$a;", "", "", "BANNER_COLOR_CODE", "I", "", "BANNER_POLLING_INTERVAL", "J", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(q qVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: VerticalBannerView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"cn/soulapp/cpnt_voiceparty/createroom/ui/VerticalBannerView$b", "Ljava/util/TimerTask;", "Lkotlin/w;", "run", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class b extends TimerTask {
        public static ChangeQuickRedirect changeQuickRedirect;

        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(VerticalBannerView this$0) {
            if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 3, new Class[]{VerticalBannerView.class}, Void.TYPE).isSupported) {
                return;
            }
            v.j(this$0, "this$0");
            this$0.e();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            final VerticalBannerView verticalBannerView = VerticalBannerView.this;
            verticalBannerView.post(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.createroom.ui.b
                @Override // java.lang.Runnable
                public final void run() {
                    VerticalBannerView.b.b(verticalBannerView);
                }
            });
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 15, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VerticalBannerView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        v.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VerticalBannerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        v.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VerticalBannerView(@NotNull final Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        v.j(context, "context");
        this.f130842i = new LinkedHashMap();
        this.trackId = new HashSet<>();
        this.operationModels = kotlin.collections.v.m();
        this.timer = new Timer();
        this.itemViews = new View[2];
        this.slideInAnimation = j.b(new Function0<Animation>() { // from class: cn.soulapp.cpnt_voiceparty.createroom.ui.VerticalBannerView$slideInAnimation$2
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Animation invoke() {
                PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Animation.class);
                return patchProxyResultProxy.isSupported ? (Animation) patchProxyResultProxy.result : AnimationUtils.loadAnimation(context, R$anim.f127062t);
            }
        });
        this.slideOutAnimation = j.b(new Function0<Animation>() { // from class: cn.soulapp.cpnt_voiceparty.createroom.ui.VerticalBannerView$slideOutAnimation$2
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Animation invoke() {
                PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Animation.class);
                return patchProxyResultProxy.isSupported ? (Animation) patchProxyResultProxy.result : AnimationUtils.loadAnimation(context, R$anim.f127063u);
            }
        });
        int i12 = 0;
        while (i12 < 2) {
            View itemView = LayoutInflater.from(context).inflate(R$layout.Af, (ViewGroup) this, false);
            this.itemViews[i12] = itemView;
            addView(itemView);
            v.i(itemView, "itemView");
            ExtensionsKt.visibleOrGone(itemView, i12 == 0);
            i12++;
        }
    }

    private final void c() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], Void.TYPE).isSupported || this.isStarted || this.operationModels.isEmpty()) {
            return;
        }
        this.isStarted = true;
        this.timer.schedule(new b(), 3000L, 3000L);
    }

    private final void d() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.isStarted = false;
        this.timer.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], Void.TYPE).isSupported || this.operationModels.isEmpty()) {
            return;
        }
        int i11 = this.currentPosition;
        int i12 = i11 % 2;
        int i13 = (i12 + 1) % 2;
        int size = (i11 + 1) % this.operationModels.size();
        f(this.itemViews[i13], this.operationModels.get(size));
        View view = this.itemViews[i13];
        if (view != null) {
            view.startAnimation(getSlideInAnimation());
        }
        View view2 = this.itemViews[i12];
        if (view2 != null) {
            view2.startAnimation(getSlideOutAnimation());
        }
        View view3 = this.itemViews[i13];
        if (view3 != null) {
            ViewExtKt.l(view3);
        }
        View view4 = this.itemViews[i12];
        if (view4 != null) {
            ViewExtKt.j(view4);
        }
        this.currentPosition = size;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00d9  */
    private final void f(View view, final OperationModel operationModel) {
        String paramValue;
        Integer id2;
        List<BizObtainParam> bizObtainParams;
        Object next;
        if (PatchProxy.proxy(new Object[]{view, operationModel}, this, changeQuickRedirect, false, 8, new Class[]{View.class, OperationModel.class}, Void.TYPE).isSupported || view == null) {
            return;
        }
        ImageView imageView = (ImageView) view.findViewById(R$id.lC);
        TextView textView = (TextView) view.findViewById(R$id.f127975f9);
        ImageView imageView2 = (ImageView) view.findViewById(R$id.PP);
        Object obj = "";
        if (!cn.mate.android.utils.a.f10639a.d(getContext())) {
            String subImage = operationModel != null ? operationModel.getSubImage() : null;
            if (!(subImage == null || subImage.length() == 0)) {
                cn.soulapp.cpnt_voiceparty.util.f fVar = cn.soulapp.cpnt_voiceparty.util.f.f162171a;
                String subImage2 = operationModel != null ? operationModel.getSubImage() : null;
                if (subImage2 == null) {
                    subImage2 = "";
                }
                String strB = fVar.b(subImage2, ExtensionsKt.dp(24));
                if (imageView != null) {
                    ViewExtKt.l(imageView);
                    Context context = getContext();
                    v.i(context, "context");
                    cn.soulapp.android.chatroom.dynamic.b.c(context).m(strB).into(imageView);
                }
            } else if (imageView != null) {
                ViewExtKt.j(imageView);
            }
        }
        String content = operationModel != null ? operationModel.getContent() : null;
        if (content == null) {
            content = "";
        }
        textView.setText(content);
        if (operationModel == null || (bizObtainParams = operationModel.getBizObtainParams()) == null) {
            paramValue = null;
        } else {
            Iterator<T> it = bizObtainParams.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(((BizObtainParam) next).getParamCode() == 20));
            BizObtainParam bizObtainParam = (BizObtainParam) next;
            if (bizObtainParam != null) {
                paramValue = bizObtainParam.getParamValue();
            } else {
                paramValue = null;
            }
        }
        if (paramValue == null) {
            textView.setTextColor(Color.parseColor("#FFA939"));
            if (imageView2 != null) {
                imageView2.setColorFilter(Color.parseColor("#FFA939"));
            }
        } else if (!kotlin.text.q.w(paramValue)) {
            textView.setTextColor(d0.a(paramValue, "#FFA939"));
            if (imageView2 != null) {
                imageView2.setColorFilter(d0.a(paramValue, "#FFA939"));
            }
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.createroom.ui.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                VerticalBannerView.g(operationModel, view2);
            }
        });
        if (operationModel != null && (id2 = operationModel.getId()) != null) {
            obj = id2;
        }
        String string = obj.toString();
        if (this.trackId.contains(string)) {
            return;
        }
        this.trackId.add(string);
        a1.b(operationModel != null ? operationModel.getId() : null, operationModel != null ? operationModel.getPositionDetailCode() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(OperationModel operationModel, View view) {
        String jumpUrl;
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[]{operationModel, view}, null, changeQuickRedirect, true, 14, new Class[]{OperationModel.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        if (operationModel != null && (jumpUrl = operationModel.getJumpUrl()) != null && StringsKt__StringsKt.M(jumpUrl, "/common/homepage", false, 2, null)) {
            z11 = true;
        }
        if (z11) {
            SoulRouter soulRouterJ = SoulRouter.j();
            String jumpUrl2 = operationModel.getJumpUrl();
            soulRouterJ.e(jumpUrl2 != null ? jumpUrl2 : "").s(603979776).g(AppListenerHelper.x());
        } else {
            SoulRouter soulRouterJ2 = SoulRouter.j();
            String jumpUrl3 = operationModel != null ? operationModel.getJumpUrl() : null;
            soulRouterJ2.e(jumpUrl3 != null ? jumpUrl3 : "").d();
        }
        a1.a(operationModel != null ? operationModel.getId() : null, operationModel != null ? operationModel.getPositionDetailCode() : null);
    }

    private final Animation getSlideInAnimation() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Animation.class);
        return patchProxyResultProxy.isSupported ? (Animation) patchProxyResultProxy.result : (Animation) this.slideInAnimation.getValue();
    }

    private final Animation getSlideOutAnimation() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], Animation.class);
        return patchProxyResultProxy.isSupported ? (Animation) patchProxyResultProxy.result : (Animation) this.slideOutAnimation.getValue();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 9, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        super.onDetachedFromWindow();
        d();
    }

    public final void setData(@Nullable List<OperationModel> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 4, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        if (list == null || list.isEmpty()) {
            return;
        }
        this.operationModels = list;
        this.currentPosition = 0;
        f(this.itemViews[0], list.get(0));
        if (list.size() > 1) {
            c();
        }
    }

    public /* synthetic */ VerticalBannerView(Context context, AttributeSet attributeSet, int i11, int i12, q qVar) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }
}