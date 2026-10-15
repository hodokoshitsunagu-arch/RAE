package cn.soulapp.cpnt_voiceparty.soulhouse.playmode;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.databinding.CVpModeTurtleSoupBinding;
import cn.soulapp.cpnt_voiceparty.soulhouse.soup.TurtleSoupView;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: TurtleSoulProxy.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0007¨\u0006\r"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/k;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/IModeViewProxy;", "Landroid/view/View;", "getModeRootView", "Lcn/soulapp/cpnt_voiceparty/soulhouse/soup/TurtleSoupView;", "a", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpModeTurtleSoupBinding;", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpModeTurtleSoupBinding;", "binding", "Landroid/content/Context;", com.umeng.analytics.pro.f.X, AppAgent.CONSTRUCT, "(Landroid/content/Context;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class k implements IModeViewProxy {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final CVpModeTurtleSoupBinding binding;

    public k(@NotNull Context context) {
        v.j(context, "context");
        CVpModeTurtleSoupBinding cVpModeTurtleSoupBindingInflate = CVpModeTurtleSoupBinding.inflate(LayoutInflater.from(context), null, false);
        v.i(cVpModeTurtleSoupBindingInflate, "inflate(LayoutInflater.from(context), null, false)");
        this.binding = cVpModeTurtleSoupBindingInflate;
    }

    @NotNull
    public final TurtleSoupView a() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], TurtleSoupView.class);
        if (patchProxyResultProxy.isSupported) {
            return (TurtleSoupView) patchProxyResultProxy.result;
        }
        TurtleSoupView turtleSoupView = this.binding.f138560b;
        v.i(turtleSoupView, "binding.turtleSoupView");
        return turtleSoupView;
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.playmode.IModeViewProxy
    @NotNull
    public View getModeRootView() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], View.class);
        if (patchProxyResultProxy.isSupported) {
            return (View) patchProxyResultProxy.result;
        }
        ConstraintLayout constraintLayoutA = this.binding.getRoot();
        v.i(constraintLayoutA, "binding.root");
        return constraintLayoutA;
    }
}