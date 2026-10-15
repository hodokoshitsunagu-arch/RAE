package cn.soulapp.cpnt_voiceparty.soulhouse.playmode;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.databinding.CVpModeH5GameBinding;
import cn.soulapp.cpnt_voiceparty.h5.ChatRoomBridgeWebView;
import cn.soulapp.cpnt_voiceparty.widget.StripeProgressBar;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.walid.jsbridge.BridgeWebView;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: H5GameProxy.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\u000b\u001a\u00020\nR\u0014\u0010\u000e\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\r¨\u0006\u0013"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/d;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/IModeViewProxy;", "Landroid/view/View;", "getModeRootView", "Lcom/walid/jsbridge/BridgeWebView;", "a", "Landroid/widget/LinearLayout;", "c", "Lcn/soulapp/cpnt_voiceparty/widget/StripeProgressBar;", ExpcompatUtils.COMPAT_VALUE_780, "Landroid/widget/TextView;", "d", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpModeH5GameBinding;", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpModeH5GameBinding;", "binding", "Landroid/content/Context;", com.umeng.analytics.pro.f.X, AppAgent.CONSTRUCT, "(Landroid/content/Context;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class d implements IModeViewProxy {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final CVpModeH5GameBinding binding;

    public d(@NotNull Context context) {
        v.j(context, "context");
        CVpModeH5GameBinding cVpModeH5GameBindingInflate = CVpModeH5GameBinding.inflate(LayoutInflater.from(context), null, false);
        v.i(cVpModeH5GameBindingInflate, "inflate(LayoutInflater.from(context), null, false)");
        this.binding = cVpModeH5GameBindingInflate;
    }

    @NotNull
    public final BridgeWebView a() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], BridgeWebView.class);
        if (patchProxyResultProxy.isSupported) {
            return (BridgeWebView) patchProxyResultProxy.result;
        }
        ChatRoomBridgeWebView chatRoomBridgeWebView = this.binding.f138468c;
        v.i(chatRoomBridgeWebView, "binding.gameArea");
        return chatRoomBridgeWebView;
    }

    @NotNull
    public final StripeProgressBar b() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], StripeProgressBar.class);
        if (patchProxyResultProxy.isSupported) {
            return (StripeProgressBar) patchProxyResultProxy.result;
        }
        StripeProgressBar stripeProgressBar = this.binding.f138470e;
        v.i(stripeProgressBar, "binding.pbGameRes");
        return stripeProgressBar;
    }

    @NotNull
    public final LinearLayout c() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], LinearLayout.class);
        if (patchProxyResultProxy.isSupported) {
            return (LinearLayout) patchProxyResultProxy.result;
        }
        LinearLayout linearLayout = this.binding.f138471f;
        v.i(linearLayout, "binding.resLoadingLayout");
        return linearLayout;
    }

    @NotNull
    public final TextView d() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], TextView.class);
        if (patchProxyResultProxy.isSupported) {
            return (TextView) patchProxyResultProxy.result;
        }
        TextView textView = this.binding.f138472g;
        v.i(textView, "binding.tvLoadingTip");
        return textView;
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.playmode.IModeViewProxy
    @NotNull
    public View getModeRootView() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], View.class);
        if (patchProxyResultProxy.isSupported) {
            return (View) patchProxyResultProxy.result;
        }
        FrameLayout root = this.binding.getRoot();
        v.i(root, "binding.root");
        return root;
    }
}