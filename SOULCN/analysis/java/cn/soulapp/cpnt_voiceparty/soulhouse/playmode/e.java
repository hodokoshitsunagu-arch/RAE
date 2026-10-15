package cn.soulapp.cpnt_voiceparty.soulhouse.playmode;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.databinding.CVpModeHeartBeatBinding;
import cn.soulapp.cpnt_voiceparty.soulhouse.heart.HeartBeatModeView;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: HeartBeatProxy.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\bR\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/e;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/IModeViewProxy;", "Landroid/view/View;", "getModeRootView", "Landroid/widget/TextView;", "c", ExpcompatUtils.COMPAT_VALUE_780, "d", "Lcn/soulapp/cpnt_voiceparty/soulhouse/heart/HeartBeatModeView;", "a", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpModeHeartBeatBinding;", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpModeHeartBeatBinding;", "binding", "Landroid/content/Context;", com.umeng.analytics.pro.f.X, AppAgent.CONSTRUCT, "(Landroid/content/Context;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class e implements IModeViewProxy {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final CVpModeHeartBeatBinding binding;

    public e(@NotNull Context context) {
        v.j(context, "context");
        CVpModeHeartBeatBinding cVpModeHeartBeatBindingInflate = CVpModeHeartBeatBinding.inflate(LayoutInflater.from(context), null, false);
        v.i(cVpModeHeartBeatBindingInflate, "inflate(LayoutInflater.from(context), null, false)");
        this.binding = cVpModeHeartBeatBindingInflate;
    }

    @NotNull
    public final HeartBeatModeView a() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], HeartBeatModeView.class);
        if (patchProxyResultProxy.isSupported) {
            return (HeartBeatModeView) patchProxyResultProxy.result;
        }
        HeartBeatModeView heartBeatModeView = this.binding.f138492c;
        v.i(heartBeatModeView, "binding.heartBeatArea");
        return heartBeatModeView;
    }

    @NotNull
    public final TextView b() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], TextView.class);
        if (patchProxyResultProxy.isSupported) {
            return (TextView) patchProxyResultProxy.result;
        }
        TextView textView = this.binding.f138493d;
        v.i(textView, "binding.tvHeartBeatFinish");
        return textView;
    }

    @NotNull
    public final TextView c() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], TextView.class);
        if (patchProxyResultProxy.isSupported) {
            return (TextView) patchProxyResultProxy.result;
        }
        TextView textView = this.binding.f138494e;
        v.i(textView, "binding.tvHeartBeatFuncBtn");
        return textView;
    }

    @NotNull
    public final TextView d() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], TextView.class);
        if (patchProxyResultProxy.isSupported) {
            return (TextView) patchProxyResultProxy.result;
        }
        TextView textView = this.binding.f138495f;
        v.i(textView, "binding.tvHeartBeatStartOfficial");
        return textView;
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