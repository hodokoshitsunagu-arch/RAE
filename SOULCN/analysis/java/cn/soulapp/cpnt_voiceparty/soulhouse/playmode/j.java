package cn.soulapp.cpnt_voiceparty.soulhouse.playmode;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.databinding.CVpModeSpeedMatchBinding;
import cn.soulapp.cpnt_voiceparty.soulhouse.match.SpeedMatchBoardView;
import cn.soulapp.cpnt_voiceparty.soulhouse.match.SpeedMatchView;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: SpeedMatchProxy.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\bR\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/j;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/IModeViewProxy;", "Landroid/view/View;", "getModeRootView", "Landroidx/constraintlayout/widget/ConstraintLayout;", "a", "Lcn/soulapp/cpnt_voiceparty/soulhouse/match/SpeedMatchView;", "c", "Lcn/soulapp/cpnt_voiceparty/soulhouse/match/SpeedMatchBoardView;", ExpcompatUtils.COMPAT_VALUE_780, "Lcn/soulapp/cpnt_voiceparty/databinding/CVpModeSpeedMatchBinding;", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpModeSpeedMatchBinding;", "binding", "Landroid/content/Context;", com.umeng.analytics.pro.f.X, AppAgent.CONSTRUCT, "(Landroid/content/Context;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class j implements IModeViewProxy {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final CVpModeSpeedMatchBinding binding;

    public j(@NotNull Context context) {
        v.j(context, "context");
        CVpModeSpeedMatchBinding cVpModeSpeedMatchBindingInflate = CVpModeSpeedMatchBinding.inflate(LayoutInflater.from(context), null, false);
        v.i(cVpModeSpeedMatchBindingInflate, "inflate(LayoutInflater.from(context), null, false)");
        this.binding = cVpModeSpeedMatchBindingInflate;
    }

    @NotNull
    public final ConstraintLayout a() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], ConstraintLayout.class);
        if (patchProxyResultProxy.isSupported) {
            return (ConstraintLayout) patchProxyResultProxy.result;
        }
        ConstraintLayout constraintLayout = this.binding.f138551b;
        v.i(constraintLayout, "binding.clSpeedMatchContainer");
        return constraintLayout;
    }

    @NotNull
    public final SpeedMatchBoardView b() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], SpeedMatchBoardView.class);
        if (patchProxyResultProxy.isSupported) {
            return (SpeedMatchBoardView) patchProxyResultProxy.result;
        }
        SpeedMatchBoardView speedMatchBoardView = this.binding.f138552c;
        v.i(speedMatchBoardView, "binding.speedMatchBoardView");
        return speedMatchBoardView;
    }

    @NotNull
    public final SpeedMatchView c() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], SpeedMatchView.class);
        if (patchProxyResultProxy.isSupported) {
            return (SpeedMatchView) patchProxyResultProxy.result;
        }
        SpeedMatchView speedMatchView = this.binding.f138553d;
        v.i(speedMatchView, "binding.speedMatchView");
        return speedMatchView;
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