package cn.soulapp.cpnt_voiceparty.soulhouse.playmode;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.databinding.CVpModeActionBinding;
import cn.soulapp.cpnt_voiceparty.widget.AuctionAreaView;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: AuctionProxy.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0007¨\u0006\r"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/b;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/IModeViewProxy;", "Landroid/view/View;", "getModeRootView", "Lcn/soulapp/cpnt_voiceparty/widget/AuctionAreaView;", "a", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpModeActionBinding;", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpModeActionBinding;", "binding", "Landroid/content/Context;", com.umeng.analytics.pro.f.X, AppAgent.CONSTRUCT, "(Landroid/content/Context;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class b implements IModeViewProxy {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final CVpModeActionBinding binding;

    public b(@NotNull Context context) {
        v.j(context, "context");
        CVpModeActionBinding cVpModeActionBindingInflate = CVpModeActionBinding.inflate(LayoutInflater.from(context), null, false);
        v.i(cVpModeActionBindingInflate, "inflate(LayoutInflater.from(context), null, false)");
        this.binding = cVpModeActionBindingInflate;
    }

    @NotNull
    public final AuctionAreaView a() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], AuctionAreaView.class);
        if (patchProxyResultProxy.isSupported) {
            return (AuctionAreaView) patchProxyResultProxy.result;
        }
        AuctionAreaView auctionAreaView = this.binding.f138428b;
        v.i(auctionAreaView, "binding.auctionAreaView");
        return auctionAreaView;
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.playmode.IModeViewProxy
    @NotNull
    public View getModeRootView() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], View.class);
        if (patchProxyResultProxy.isSupported) {
            return (View) patchProxyResultProxy.result;
        }
        ConstraintLayout root = this.binding.getRoot();
        v.i(root, "binding.root");
        return root;
    }
}