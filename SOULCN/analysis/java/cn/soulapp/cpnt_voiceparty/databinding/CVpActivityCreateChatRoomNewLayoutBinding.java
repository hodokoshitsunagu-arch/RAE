package cn.soulapp.cpnt_voiceparty.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import cn.com.hjq.shape.view.ShapeTextView;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.dynamic.PartyLottieAnimationView;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.createroom.ui.CreateRoomPageRoomInfoView;
import cn.soulapp.cpnt_voiceparty.createroom.ui.VerticalBannerView;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: loaded from: classes17.dex */
public final class CVpActivityCreateChatRoomNewLayoutBinding implements ViewBinding {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f131030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f131031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final VerticalBannerView f131032c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Barrier f131033d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f131034e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f131035f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ShapeTextView f131036g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f131037h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RecyclerView f131038i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final PartyLottieAnimationView f131039j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RecyclerView f131040k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final CreateRoomPageRoomInfoView f131041l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TabLayout f131042m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f131043n;

    private CVpActivityCreateChatRoomNewLayoutBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull VerticalBannerView verticalBannerView, @NonNull Barrier barrier, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull ShapeTextView shapeTextView, @NonNull TextView textView2, @NonNull RecyclerView recyclerView, @NonNull PartyLottieAnimationView partyLottieAnimationView, @NonNull RecyclerView recyclerView2, @NonNull CreateRoomPageRoomInfoView createRoomPageRoomInfoView, @NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2) {
        this.f131030a = constraintLayout;
        this.f131031b = imageView;
        this.f131032c = verticalBannerView;
        this.f131033d = barrier;
        this.f131034e = textView;
        this.f131035f = imageView2;
        this.f131036g = shapeTextView;
        this.f131037h = textView2;
        this.f131038i = recyclerView;
        this.f131039j = partyLottieAnimationView;
        this.f131040k = recyclerView2;
        this.f131041l = createRoomPageRoomInfoView;
        this.f131042m = tabLayout;
        this.f131043n = viewPager2;
    }

    @NonNull
    public static CVpActivityCreateChatRoomNewLayoutBinding bind(@NonNull View view) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{view}, null, changeQuickRedirect, true, 4, new Class[]{View.class}, CVpActivityCreateChatRoomNewLayoutBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpActivityCreateChatRoomNewLayoutBinding) patchProxyResultProxy.result;
        }
        int i11 = R$id.f128578o1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i11);
        if (imageView != null) {
            i11 = R$id.f128923t1;
            VerticalBannerView verticalBannerView = (VerticalBannerView) ViewBindings.findChildViewById(view, i11);
            if (verticalBannerView != null) {
                i11 = R$id.Q5;
                Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, i11);
                if (barrier != null) {
                    i11 = R$id.f128933t6;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i11);
                    if (textView != null) {
                        i11 = R$id.f128385l8;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i11);
                        if (imageView2 != null) {
                            i11 = R$id.D9;
                            ShapeTextView shapeTextView = (ShapeTextView) ViewBindings.findChildViewById(view, i11);
                            if (shapeTextView != null) {
                                i11 = R$id.I9;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i11);
                                if (textView2 != null) {
                                    i11 = R$id.Bf;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i11);
                                    if (recyclerView != null) {
                                        i11 = R$id.YM;
                                        PartyLottieAnimationView partyLottieAnimationView = (PartyLottieAnimationView) ViewBindings.findChildViewById(view, i11);
                                        if (partyLottieAnimationView != null) {
                                            i11 = R$id.fN;
                                            RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, i11);
                                            if (recyclerView2 != null) {
                                                i11 = R$id.gR;
                                                CreateRoomPageRoomInfoView createRoomPageRoomInfoView = (CreateRoomPageRoomInfoView) ViewBindings.findChildViewById(view, i11);
                                                if (createRoomPageRoomInfoView != null) {
                                                    i11 = R$id.cZ;
                                                    TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, i11);
                                                    if (tabLayout != null) {
                                                        i11 = R$id.Vt0;
                                                        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, i11);
                                                        if (viewPager2 != null) {
                                                            return new CVpActivityCreateChatRoomNewLayoutBinding((ConstraintLayout) view, imageView, verticalBannerView, barrier, textView, imageView2, shapeTextView, textView2, recyclerView, partyLottieAnimationView, recyclerView2, createRoomPageRoomInfoView, tabLayout, viewPager2);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @NonNull
    public static CVpActivityCreateChatRoomNewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater}, null, changeQuickRedirect, true, 2, new Class[]{LayoutInflater.class}, CVpActivityCreateChatRoomNewLayoutBinding.class);
        return patchProxyResultProxy.isSupported ? (CVpActivityCreateChatRoomNewLayoutBinding) patchProxyResultProxy.result : inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f131030a;
    }

    @NonNull
    public static CVpActivityCreateChatRoomNewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z11) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater, viewGroup, new Byte(z11 ? (byte) 1 : (byte) 0)}, null, changeQuickRedirect, true, 3, new Class[]{LayoutInflater.class, ViewGroup.class, Boolean.TYPE}, CVpActivityCreateChatRoomNewLayoutBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpActivityCreateChatRoomNewLayoutBinding) patchProxyResultProxy.result;
        }
        View viewInflate = layoutInflater.inflate(R$layout.f129830q, viewGroup, false);
        if (z11) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}