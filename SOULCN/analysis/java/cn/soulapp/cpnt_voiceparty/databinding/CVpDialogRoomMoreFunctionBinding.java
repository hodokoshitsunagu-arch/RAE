package cn.soulapp.cpnt_voiceparty.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.widget.MaxHeightNestedScrollView;

/* JADX INFO: loaded from: classes17.dex */
public final class CVpDialogRoomMoreFunctionBinding implements ViewBinding {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final MaxHeightNestedScrollView f133230a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final FrameLayout f133231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f133232c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f133233d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final MaxHeightNestedScrollView f133234e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RecyclerView f133235f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RecyclerView f133236g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f133237h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f133238i;

    private CVpDialogRoomMoreFunctionBinding(@NonNull MaxHeightNestedScrollView maxHeightNestedScrollView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ConstraintLayout constraintLayout, @NonNull MaxHeightNestedScrollView maxHeightNestedScrollView2, @NonNull RecyclerView recyclerView, @NonNull RecyclerView recyclerView2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f133230a = maxHeightNestedScrollView;
        this.f133231b = frameLayout;
        this.f133232c = imageView;
        this.f133233d = constraintLayout;
        this.f133234e = maxHeightNestedScrollView2;
        this.f133235f = recyclerView;
        this.f133236g = recyclerView2;
        this.f133237h = textView;
        this.f133238i = textView2;
    }

    @NonNull
    public static CVpDialogRoomMoreFunctionBinding bind(@NonNull View view) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{view}, null, changeQuickRedirect, true, 4, new Class[]{View.class}, CVpDialogRoomMoreFunctionBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpDialogRoomMoreFunctionBinding) patchProxyResultProxy.result;
        }
        int i11 = R$id.Sc;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i11);
        if (frameLayout != null) {
            i11 = R$id.Xm;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i11);
            if (imageView != null) {
                i11 = R$id.TJ;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i11);
                if (constraintLayout != null) {
                    MaxHeightNestedScrollView maxHeightNestedScrollView = (MaxHeightNestedScrollView) view;
                    i11 = R$id.cS;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i11);
                    if (recyclerView != null) {
                        i11 = R$id.AT;
                        RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, i11);
                        if (recyclerView2 != null) {
                            i11 = R$id.Ec0;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i11);
                            if (textView != null) {
                                i11 = R$id.f128757ql0;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i11);
                                if (textView2 != null) {
                                    return new CVpDialogRoomMoreFunctionBinding(maxHeightNestedScrollView, frameLayout, imageView, constraintLayout, maxHeightNestedScrollView, recyclerView, recyclerView2, textView, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @NonNull
    public static CVpDialogRoomMoreFunctionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater}, null, changeQuickRedirect, true, 2, new Class[]{LayoutInflater.class}, CVpDialogRoomMoreFunctionBinding.class);
        return patchProxyResultProxy.isSupported ? (CVpDialogRoomMoreFunctionBinding) patchProxyResultProxy.result : inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public MaxHeightNestedScrollView getRoot() {
        return this.f133230a;
    }

    @NonNull
    public static CVpDialogRoomMoreFunctionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z11) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater, viewGroup, new Byte(z11 ? (byte) 1 : (byte) 0)}, null, changeQuickRedirect, true, 3, new Class[]{LayoutInflater.class, ViewGroup.class, Boolean.TYPE}, CVpDialogRoomMoreFunctionBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpDialogRoomMoreFunctionBinding) patchProxyResultProxy.result;
        }
        View viewInflate = layoutInflater.inflate(R$layout.A4, viewGroup, false);
        if (z11) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}