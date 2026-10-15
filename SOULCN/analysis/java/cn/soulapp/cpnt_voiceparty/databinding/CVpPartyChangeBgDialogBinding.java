package cn.soulapp.cpnt_voiceparty.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import cn.com.hjq.shape.layout.ShapeFrameLayout;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;

/* JADX INFO: loaded from: classes17.dex */
public final class CVpPartyChangeBgDialogBinding implements ViewBinding {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final ShapeFrameLayout f138706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final FrameLayout f138707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f138708c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f138709d;

    private CVpPartyChangeBgDialogBinding(@NonNull ShapeFrameLayout shapeFrameLayout, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull View view) {
        this.f138706a = shapeFrameLayout;
        this.f138707b = frameLayout;
        this.f138708c = textView;
        this.f138709d = view;
    }

    @NonNull
    public static CVpPartyChangeBgDialogBinding bind(@NonNull View view) {
        View viewFindChildViewById;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{view}, null, changeQuickRedirect, true, 4, new Class[]{View.class}, CVpPartyChangeBgDialogBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpPartyChangeBgDialogBinding) patchProxyResultProxy.result;
        }
        int i11 = R$id.Pe;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i11);
        if (frameLayout != null) {
            i11 = R$id.f127889e00;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i11);
            if (textView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i11 = R$id.f127617a10))) != null) {
                return new CVpPartyChangeBgDialogBinding((ShapeFrameLayout) view, frameLayout, textView, viewFindChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @NonNull
    public static CVpPartyChangeBgDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater}, null, changeQuickRedirect, true, 2, new Class[]{LayoutInflater.class}, CVpPartyChangeBgDialogBinding.class);
        return patchProxyResultProxy.isSupported ? (CVpPartyChangeBgDialogBinding) patchProxyResultProxy.result : inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ShapeFrameLayout getRoot() {
        return this.f138706a;
    }

    @NonNull
    public static CVpPartyChangeBgDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z11) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater, viewGroup, new Byte(z11 ? (byte) 1 : (byte) 0)}, null, changeQuickRedirect, true, 3, new Class[]{LayoutInflater.class, ViewGroup.class, Boolean.TYPE}, CVpPartyChangeBgDialogBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpPartyChangeBgDialogBinding) patchProxyResultProxy.result;
        }
        View viewInflate = layoutInflater.inflate(R$layout.Kj, viewGroup, false);
        if (z11) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}