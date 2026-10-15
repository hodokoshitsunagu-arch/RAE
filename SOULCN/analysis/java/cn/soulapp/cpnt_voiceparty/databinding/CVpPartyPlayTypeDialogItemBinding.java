package cn.soulapp.cpnt_voiceparty.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import cn.com.hjq.shape.view.ShapeTextView;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.R$layout;

/* JADX INFO: loaded from: classes17.dex */
public final class CVpPartyPlayTypeDialogItemBinding implements ViewBinding {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final ShapeTextView f138731a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ShapeTextView f138732b;

    private CVpPartyPlayTypeDialogItemBinding(@NonNull ShapeTextView shapeTextView, @NonNull ShapeTextView shapeTextView2) {
        this.f138731a = shapeTextView;
        this.f138732b = shapeTextView2;
    }

    @NonNull
    public static CVpPartyPlayTypeDialogItemBinding bind(@NonNull View view) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{view}, null, changeQuickRedirect, true, 4, new Class[]{View.class}, CVpPartyPlayTypeDialogItemBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpPartyPlayTypeDialogItemBinding) patchProxyResultProxy.result;
        }
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        ShapeTextView shapeTextView = (ShapeTextView) view;
        return new CVpPartyPlayTypeDialogItemBinding(shapeTextView, shapeTextView);
    }

    @NonNull
    public static CVpPartyPlayTypeDialogItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater}, null, changeQuickRedirect, true, 2, new Class[]{LayoutInflater.class}, CVpPartyPlayTypeDialogItemBinding.class);
        return patchProxyResultProxy.isSupported ? (CVpPartyPlayTypeDialogItemBinding) patchProxyResultProxy.result : inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ShapeTextView getRoot() {
        return this.f138731a;
    }

    @NonNull
    public static CVpPartyPlayTypeDialogItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z11) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater, viewGroup, new Byte(z11 ? (byte) 1 : (byte) 0)}, null, changeQuickRedirect, true, 3, new Class[]{LayoutInflater.class, ViewGroup.class, Boolean.TYPE}, CVpPartyPlayTypeDialogItemBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpPartyPlayTypeDialogItemBinding) patchProxyResultProxy.result;
        }
        View viewInflate = layoutInflater.inflate(R$layout.Qj, viewGroup, false);
        if (z11) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}