package cn.soulapp.cpnt_voiceparty.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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

/* JADX INFO: loaded from: classes17.dex */
public final class CVpDialogRoomPlayFunctionSecBinding implements ViewBinding {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f133257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f133258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f133259c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RecyclerView f133260d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f133261e;

    private CVpDialogRoomPlayFunctionSecBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull TextView textView) {
        this.f133257a = constraintLayout;
        this.f133258b = constraintLayout2;
        this.f133259c = imageView;
        this.f133260d = recyclerView;
        this.f133261e = textView;
    }

    @NonNull
    public static CVpDialogRoomPlayFunctionSecBinding bind(@NonNull View view) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{view}, null, changeQuickRedirect, true, 4, new Class[]{View.class}, CVpDialogRoomPlayFunctionSecBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpDialogRoomPlayFunctionSecBinding) patchProxyResultProxy.result;
        }
        int i11 = R$id.J7;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i11);
        if (constraintLayout != null) {
            i11 = R$id.Cy;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i11);
            if (imageView != null) {
                i11 = R$id.HO;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.f128629oq0;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i11);
                    if (textView != null) {
                        return new CVpDialogRoomPlayFunctionSecBinding((ConstraintLayout) view, constraintLayout, imageView, recyclerView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @NonNull
    public static CVpDialogRoomPlayFunctionSecBinding inflate(@NonNull LayoutInflater layoutInflater) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater}, null, changeQuickRedirect, true, 2, new Class[]{LayoutInflater.class}, CVpDialogRoomPlayFunctionSecBinding.class);
        return patchProxyResultProxy.isSupported ? (CVpDialogRoomPlayFunctionSecBinding) patchProxyResultProxy.result : inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f133257a;
    }

    @NonNull
    public static CVpDialogRoomPlayFunctionSecBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z11) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater, viewGroup, new Byte(z11 ? (byte) 1 : (byte) 0)}, null, changeQuickRedirect, true, 3, new Class[]{LayoutInflater.class, ViewGroup.class, Boolean.TYPE}, CVpDialogRoomPlayFunctionSecBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpDialogRoomPlayFunctionSecBinding) patchProxyResultProxy.result;
        }
        View viewInflate = layoutInflater.inflate(R$layout.D4, viewGroup, false);
        if (z11) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}