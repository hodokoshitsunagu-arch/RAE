package cn.soulapp.cpnt_voiceparty.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
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

/* JADX INFO: loaded from: classes17.dex */
public final class CVpDialogRoomPlayFunctionBinding implements ViewBinding {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f133242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f133243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f133244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f133245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f133246e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f133247f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f133248g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final FrameLayout f133249h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f133250i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RecyclerView f133251j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RecyclerView f133252k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RecyclerView f133253l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f133254m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f133255n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f133256o;

    private CVpDialogRoomPlayFunctionBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull View view2, @NonNull FrameLayout frameLayout, @NonNull ConstraintLayout constraintLayout3, @NonNull RecyclerView recyclerView, @NonNull RecyclerView recyclerView2, @NonNull RecyclerView recyclerView3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f133242a = constraintLayout;
        this.f133243b = constraintLayout2;
        this.f133244c = view;
        this.f133245d = imageView;
        this.f133246e = imageView2;
        this.f133247f = linearLayout;
        this.f133248g = view2;
        this.f133249h = frameLayout;
        this.f133250i = constraintLayout3;
        this.f133251j = recyclerView;
        this.f133252k = recyclerView2;
        this.f133253l = recyclerView3;
        this.f133254m = textView;
        this.f133255n = textView2;
        this.f133256o = textView3;
    }

    @NonNull
    public static CVpDialogRoomPlayFunctionBinding bind(@NonNull View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{view}, null, changeQuickRedirect, true, 4, new Class[]{View.class}, CVpDialogRoomPlayFunctionBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpDialogRoomPlayFunctionBinding) patchProxyResultProxy.result;
        }
        int i11 = R$id.J7;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i11);
        if (constraintLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i11 = R$id.Ha))) != null) {
            i11 = R$id.f128624oo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i11);
            if (imageView != null) {
                i11 = R$id.f129326yu;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i11);
                if (imageView2 != null) {
                    i11 = R$id.YE;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i11);
                    if (linearLayout != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i11 = R$id.lJ))) != null) {
                        i11 = R$id.ZM;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i11);
                        if (frameLayout != null) {
                            ConstraintLayout constraintLayout2 = (ConstraintLayout) view;
                            i11 = R$id.PR;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i11);
                            if (recyclerView != null) {
                                i11 = R$id.VS;
                                RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, i11);
                                if (recyclerView2 != null) {
                                    i11 = R$id.eT;
                                    RecyclerView recyclerView3 = (RecyclerView) ViewBindings.findChildViewById(view, i11);
                                    if (recyclerView3 != null) {
                                        i11 = R$id.Va0;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i11);
                                        if (textView != null) {
                                            i11 = R$id.f128329ke0;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i11);
                                            if (textView2 != null) {
                                                i11 = R$id.Yj0;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i11);
                                                if (textView3 != null) {
                                                    return new CVpDialogRoomPlayFunctionBinding(constraintLayout2, constraintLayout, viewFindChildViewById, imageView, imageView2, linearLayout, viewFindChildViewById2, frameLayout, constraintLayout2, recyclerView, recyclerView2, recyclerView3, textView, textView2, textView3);
                                                }
                                            }
                                        }
                                    }
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
    public static CVpDialogRoomPlayFunctionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater}, null, changeQuickRedirect, true, 2, new Class[]{LayoutInflater.class}, CVpDialogRoomPlayFunctionBinding.class);
        return patchProxyResultProxy.isSupported ? (CVpDialogRoomPlayFunctionBinding) patchProxyResultProxy.result : inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f133242a;
    }

    @NonNull
    public static CVpDialogRoomPlayFunctionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z11) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater, viewGroup, new Byte(z11 ? (byte) 1 : (byte) 0)}, null, changeQuickRedirect, true, 3, new Class[]{LayoutInflater.class, ViewGroup.class, Boolean.TYPE}, CVpDialogRoomPlayFunctionBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpDialogRoomPlayFunctionBinding) patchProxyResultProxy.result;
        }
        View viewInflate = layoutInflater.inflate(R$layout.C4, viewGroup, false);
        if (z11) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}