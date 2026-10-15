package cn.soulapp.cpnt_voiceparty.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import cn.com.hjq.shape.layout.ShapeConstraintLayout;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;

/* JADX INFO: loaded from: classes17.dex */
public final class CVpPartyPlayTypeDialogBinding implements ViewBinding {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final ShapeConstraintLayout f138727a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final RecyclerView f138728b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f138729c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f138730d;

    private CVpPartyPlayTypeDialogBinding(@NonNull ShapeConstraintLayout shapeConstraintLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull View view) {
        this.f138727a = shapeConstraintLayout;
        this.f138728b = recyclerView;
        this.f138729c = textView;
        this.f138730d = view;
    }

    @NonNull
    public static CVpPartyPlayTypeDialogBinding bind(@NonNull View view) {
        View viewFindChildViewById;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{view}, null, changeQuickRedirect, true, 4, new Class[]{View.class}, CVpPartyPlayTypeDialogBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpPartyPlayTypeDialogBinding) patchProxyResultProxy.result;
        }
        int i11 = R$id.GO;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i11);
        if (recyclerView != null) {
            i11 = R$id.f127889e00;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i11);
            if (textView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i11 = R$id.f127617a10))) != null) {
                return new CVpPartyPlayTypeDialogBinding((ShapeConstraintLayout) view, recyclerView, textView, viewFindChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @NonNull
    public static CVpPartyPlayTypeDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater}, null, changeQuickRedirect, true, 2, new Class[]{LayoutInflater.class}, CVpPartyPlayTypeDialogBinding.class);
        return patchProxyResultProxy.isSupported ? (CVpPartyPlayTypeDialogBinding) patchProxyResultProxy.result : inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ShapeConstraintLayout getRoot() {
        return this.f138727a;
    }

    @NonNull
    public static CVpPartyPlayTypeDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z11) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater, viewGroup, new Byte(z11 ? (byte) 1 : (byte) 0)}, null, changeQuickRedirect, true, 3, new Class[]{LayoutInflater.class, ViewGroup.class, Boolean.TYPE}, CVpPartyPlayTypeDialogBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpPartyPlayTypeDialogBinding) patchProxyResultProxy.result;
        }
        View viewInflate = layoutInflater.inflate(R$layout.Pj, viewGroup, false);
        if (z11) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}