package cn.soulapp.cpnt_voiceparty.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import cn.com.hjq.shape.view.ShapeTextView;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;

/* JADX INFO: loaded from: classes17.dex */
public final class CVpViewCreateChatRoomTopicBinding implements ViewBinding {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final LinearLayout f139734a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final RecyclerView f139735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ShapeTextView f139736c;

    private CVpViewCreateChatRoomTopicBinding(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull ShapeTextView shapeTextView) {
        this.f139734a = linearLayout;
        this.f139735b = recyclerView;
        this.f139736c = shapeTextView;
    }

    @NonNull
    public static CVpViewCreateChatRoomTopicBinding bind(@NonNull View view) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{view}, null, changeQuickRedirect, true, 4, new Class[]{View.class}, CVpViewCreateChatRoomTopicBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpViewCreateChatRoomTopicBinding) patchProxyResultProxy.result;
        }
        int i11 = R$id.W00;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i11);
        if (recyclerView != null) {
            i11 = R$id.f128755qk0;
            ShapeTextView shapeTextView = (ShapeTextView) ViewBindings.findChildViewById(view, i11);
            if (shapeTextView != null) {
                return new CVpViewCreateChatRoomTopicBinding((LinearLayout) view, recyclerView, shapeTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @NonNull
    public static CVpViewCreateChatRoomTopicBinding inflate(@NonNull LayoutInflater layoutInflater) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater}, null, changeQuickRedirect, true, 2, new Class[]{LayoutInflater.class}, CVpViewCreateChatRoomTopicBinding.class);
        return patchProxyResultProxy.isSupported ? (CVpViewCreateChatRoomTopicBinding) patchProxyResultProxy.result : inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f139734a;
    }

    @NonNull
    public static CVpViewCreateChatRoomTopicBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z11) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater, viewGroup, new Byte(z11 ? (byte) 1 : (byte) 0)}, null, changeQuickRedirect, true, 3, new Class[]{LayoutInflater.class, ViewGroup.class, Boolean.TYPE}, CVpViewCreateChatRoomTopicBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpViewCreateChatRoomTopicBinding) patchProxyResultProxy.result;
        }
        View viewInflate = layoutInflater.inflate(R$layout.Jm, viewGroup, false);
        if (z11) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}