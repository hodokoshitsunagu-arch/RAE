package cn.soulapp.cpnt_voiceparty.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import cn.com.hjq.shape.layout.ShapeLinearLayout;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;

/* JADX INFO: loaded from: classes17.dex */
public final class CVpItemCreateChatRoomTopicBinding implements ViewBinding {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final ShapeLinearLayout f135080a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f135081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f135082c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ShapeLinearLayout f135083d;

    private CVpItemCreateChatRoomTopicBinding(@NonNull ShapeLinearLayout shapeLinearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ShapeLinearLayout shapeLinearLayout2) {
        this.f135080a = shapeLinearLayout;
        this.f135081b = imageView;
        this.f135082c = textView;
        this.f135083d = shapeLinearLayout2;
    }

    @NonNull
    public static CVpItemCreateChatRoomTopicBinding bind(@NonNull View view) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{view}, null, changeQuickRedirect, true, 4, new Class[]{View.class}, CVpItemCreateChatRoomTopicBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpItemCreateChatRoomTopicBinding) patchProxyResultProxy.result;
        }
        int i11 = R$id.f128068gl;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i11);
        if (imageView != null) {
            i11 = R$id.f128824rk0;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i11);
            if (textView != null) {
                ShapeLinearLayout shapeLinearLayout = (ShapeLinearLayout) view;
                return new CVpItemCreateChatRoomTopicBinding(shapeLinearLayout, imageView, textView, shapeLinearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @NonNull
    public static CVpItemCreateChatRoomTopicBinding inflate(@NonNull LayoutInflater layoutInflater) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater}, null, changeQuickRedirect, true, 2, new Class[]{LayoutInflater.class}, CVpItemCreateChatRoomTopicBinding.class);
        return patchProxyResultProxy.isSupported ? (CVpItemCreateChatRoomTopicBinding) patchProxyResultProxy.result : inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ShapeLinearLayout getRoot() {
        return this.f135080a;
    }

    @NonNull
    public static CVpItemCreateChatRoomTopicBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z11) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater, viewGroup, new Byte(z11 ? (byte) 1 : (byte) 0)}, null, changeQuickRedirect, true, 3, new Class[]{LayoutInflater.class, ViewGroup.class, Boolean.TYPE}, CVpItemCreateChatRoomTopicBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpItemCreateChatRoomTopicBinding) patchProxyResultProxy.result;
        }
        View viewInflate = layoutInflater.inflate(R$layout.H9, viewGroup, false);
        if (z11) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}