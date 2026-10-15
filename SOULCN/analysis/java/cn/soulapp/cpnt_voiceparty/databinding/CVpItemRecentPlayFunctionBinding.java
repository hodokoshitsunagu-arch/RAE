package cn.soulapp.cpnt_voiceparty.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.dynamic.PartyMateImageView;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;

/* JADX INFO: loaded from: classes17.dex */
public final class CVpItemRecentPlayFunctionBinding implements ViewBinding {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f136750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f136751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f136752c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final PartyMateImageView f136753d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f136754e;

    private CVpItemRecentPlayFunctionBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull PartyMateImageView partyMateImageView, @NonNull TextView textView) {
        this.f136750a = constraintLayout;
        this.f136751b = imageView;
        this.f136752c = imageView2;
        this.f136753d = partyMateImageView;
        this.f136754e = textView;
    }

    @NonNull
    public static CVpItemRecentPlayFunctionBinding bind(@NonNull View view) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{view}, null, changeQuickRedirect, true, 4, new Class[]{View.class}, CVpItemRecentPlayFunctionBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpItemRecentPlayFunctionBinding) patchProxyResultProxy.result;
        }
        int i11 = R$id.Pp;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i11);
        if (imageView != null) {
            i11 = R$id.Qp;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i11);
            if (imageView2 != null) {
                i11 = R$id.iZ;
                PartyMateImageView partyMateImageView = (PartyMateImageView) ViewBindings.findChildViewById(view, i11);
                if (partyMateImageView != null) {
                    i11 = R$id.f128179i70;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i11);
                    if (textView != null) {
                        return new CVpItemRecentPlayFunctionBinding((ConstraintLayout) view, imageView, imageView2, partyMateImageView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @NonNull
    public static CVpItemRecentPlayFunctionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater}, null, changeQuickRedirect, true, 2, new Class[]{LayoutInflater.class}, CVpItemRecentPlayFunctionBinding.class);
        return patchProxyResultProxy.isSupported ? (CVpItemRecentPlayFunctionBinding) patchProxyResultProxy.result : inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f136750a;
    }

    @NonNull
    public static CVpItemRecentPlayFunctionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z11) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater, viewGroup, new Byte(z11 ? (byte) 1 : (byte) 0)}, null, changeQuickRedirect, true, 3, new Class[]{LayoutInflater.class, ViewGroup.class, Boolean.TYPE}, CVpItemRecentPlayFunctionBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpItemRecentPlayFunctionBinding) patchProxyResultProxy.result;
        }
        View viewInflate = layoutInflater.inflate(R$layout.f129740me, viewGroup, false);
        if (z11) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}