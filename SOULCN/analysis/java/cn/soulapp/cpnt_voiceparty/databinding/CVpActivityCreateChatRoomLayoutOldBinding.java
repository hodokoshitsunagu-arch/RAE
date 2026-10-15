package cn.soulapp.cpnt_voiceparty.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
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
import cn.com.hjq.shape.view.ShapeTextView;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.widget.TagRecyclerView;

/* JADX INFO: loaded from: classes17.dex */
public final class CVpActivityCreateChatRoomLayoutOldBinding implements ViewBinding {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final FrameLayout f131005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final EditText f131006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f131007c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f131008d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f131009e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f131010f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f131011g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f131012h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final FrameLayout f131013i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RecyclerView f131014j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TagRecyclerView f131015k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ShapeTextView f131016l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f131017m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f131018n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f131019o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f131020p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f131021q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f131022r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f131023s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f131024t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f131025u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f131026v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f131027w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f131028x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f131029y;

    private CVpActivityCreateChatRoomLayoutOldBinding(@NonNull FrameLayout frameLayout, @NonNull EditText editText, @NonNull FrameLayout frameLayout2, @NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout3, @NonNull RecyclerView recyclerView, @NonNull TagRecyclerView tagRecyclerView, @NonNull ShapeTextView shapeTextView, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull TextView textView12, @NonNull ConstraintLayout constraintLayout3) {
        this.f131005a = frameLayout;
        this.f131006b = editText;
        this.f131007c = frameLayout2;
        this.f131008d = constraintLayout;
        this.f131009e = view;
        this.f131010f = imageView;
        this.f131011g = textView;
        this.f131012h = linearLayout;
        this.f131013i = frameLayout3;
        this.f131014j = recyclerView;
        this.f131015k = tagRecyclerView;
        this.f131016l = shapeTextView;
        this.f131017m = constraintLayout2;
        this.f131018n = textView2;
        this.f131019o = textView3;
        this.f131020p = textView4;
        this.f131021q = textView5;
        this.f131022r = textView6;
        this.f131023s = textView7;
        this.f131024t = textView8;
        this.f131025u = textView9;
        this.f131026v = textView10;
        this.f131027w = textView11;
        this.f131028x = textView12;
        this.f131029y = constraintLayout3;
    }

    @NonNull
    public static CVpActivityCreateChatRoomLayoutOldBinding bind(@NonNull View view) {
        View viewFindChildViewById;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{view}, null, changeQuickRedirect, true, 4, new Class[]{View.class}, CVpActivityCreateChatRoomLayoutOldBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpActivityCreateChatRoomLayoutOldBinding) patchProxyResultProxy.result;
        }
        int i11 = R$id.f127981fc;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, i11);
        if (editText != null) {
            i11 = R$id.Xd;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i11);
            if (frameLayout != null) {
                i11 = R$id.Dg;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i11);
                if (constraintLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i11 = R$id.Ii))) != null) {
                    i11 = R$id.f129170wl;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i11);
                    if (imageView != null) {
                        i11 = R$id.mB;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i11);
                        if (textView != null) {
                            i11 = R$id.ZG;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i11);
                            if (linearLayout != null) {
                                FrameLayout frameLayout2 = (FrameLayout) view;
                                i11 = R$id.LT;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i11);
                                if (recyclerView != null) {
                                    i11 = R$id.VT;
                                    TagRecyclerView tagRecyclerView = (TagRecyclerView) ViewBindings.findChildViewById(view, i11);
                                    if (tagRecyclerView != null) {
                                        i11 = R$id.VU;
                                        ShapeTextView shapeTextView = (ShapeTextView) ViewBindings.findChildViewById(view, i11);
                                        if (shapeTextView != null) {
                                            i11 = R$id.WU;
                                            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i11);
                                            if (constraintLayout2 != null) {
                                                i11 = R$id.f129244xn0;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i11);
                                                if (textView2 != null) {
                                                    i11 = R$id.Cn0;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i11);
                                                    if (textView3 != null) {
                                                        i11 = R$id.Un0;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i11);
                                                        if (textView4 != null) {
                                                            i11 = R$id.f128625oo0;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i11);
                                                            if (textView5 != null) {
                                                                i11 = R$id.f128763qo0;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i11);
                                                                if (textView6 != null) {
                                                                    i11 = R$id.Do0;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i11);
                                                                    if (textView7 != null) {
                                                                        i11 = R$id.f128077gp0;
                                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i11);
                                                                        if (textView8 != null) {
                                                                            i11 = R$id.f128351kp0;
                                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i11);
                                                                            if (textView9 != null) {
                                                                                i11 = R$id.Cp0;
                                                                                TextView textView10 = (TextView) ViewBindings.findChildViewById(view, i11);
                                                                                if (textView10 != null) {
                                                                                    i11 = R$id.Vp0;
                                                                                    TextView textView11 = (TextView) ViewBindings.findChildViewById(view, i11);
                                                                                    if (textView11 != null) {
                                                                                        i11 = R$id.f128629oq0;
                                                                                        TextView textView12 = (TextView) ViewBindings.findChildViewById(view, i11);
                                                                                        if (textView12 != null) {
                                                                                            i11 = R$id.f128290jt0;
                                                                                            ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(view, i11);
                                                                                            if (constraintLayout3 != null) {
                                                                                                return new CVpActivityCreateChatRoomLayoutOldBinding(frameLayout2, editText, frameLayout, constraintLayout, viewFindChildViewById, imageView, textView, linearLayout, frameLayout2, recyclerView, tagRecyclerView, shapeTextView, constraintLayout2, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, constraintLayout3);
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
    public static CVpActivityCreateChatRoomLayoutOldBinding inflate(@NonNull LayoutInflater layoutInflater) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater}, null, changeQuickRedirect, true, 2, new Class[]{LayoutInflater.class}, CVpActivityCreateChatRoomLayoutOldBinding.class);
        return patchProxyResultProxy.isSupported ? (CVpActivityCreateChatRoomLayoutOldBinding) patchProxyResultProxy.result : inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f131005a;
    }

    @NonNull
    public static CVpActivityCreateChatRoomLayoutOldBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z11) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{layoutInflater, viewGroup, new Byte(z11 ? (byte) 1 : (byte) 0)}, null, changeQuickRedirect, true, 3, new Class[]{LayoutInflater.class, ViewGroup.class, Boolean.TYPE}, CVpActivityCreateChatRoomLayoutOldBinding.class);
        if (patchProxyResultProxy.isSupported) {
            return (CVpActivityCreateChatRoomLayoutOldBinding) patchProxyResultProxy.result;
        }
        View viewInflate = layoutInflater.inflate(R$layout.f129804p, viewGroup, false);
        if (z11) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}