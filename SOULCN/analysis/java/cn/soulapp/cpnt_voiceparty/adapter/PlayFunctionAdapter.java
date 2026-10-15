package cn.soulapp.cpnt_voiceparty.adapter;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.utils.CommonUtil;
import cn.soulapp.cpnt_voiceparty.R$drawable;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.bean.ChildPlaySetups;
import cn.soulapp.cpnt_voiceparty.bean.FunctionBean;
import cn.soulapp.lib.utils.ext.ViewExtKt;
import com.baidu.platform.comapi.map.MapController;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.react.views.textinput.ReactTextInputShadowNode;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: PlayFunctionAdapter.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \b2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0014R\u001b\u0010\u0012\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/adapter/PlayFunctionAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", MapController.ITEM_LAYER_TAG, "Lkotlin/w;", "c", ExpcompatUtils.COMPAT_VALUE_780, "a", "d", "", l11l11I1111l.l111l1111lIl, "f", "Landroid/widget/LinearLayout$LayoutParams;", "Lkotlin/Lazy;", "g", "()Landroid/widget/LinearLayout$LayoutParams;", "markLayoutParams", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class PlayFunctionAdapter extends BaseQuickAdapter<FunctionBean, BaseViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy markLayoutParams;

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.adapter.PlayFunctionAdapter$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: PlayFunctionAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/adapter/PlayFunctionAdapter$a;", "", "", "NEW_TAG_ICON", "Ljava/lang/String;", "", "SONG_MACHINE_BIZ_TYPE", "I", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.q qVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: PlayFunctionAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0010\u0010\u0005\u001a\f\u0012\u0006\b\u0000\u0012\u00020\u0002\u0018\u00010\u0004H\u0016J\u0012\u0010\t\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\n"}, d2 = {"cn/soulapp/cpnt_voiceparty/adapter/PlayFunctionAdapter$b", "Lcom/bumptech/glide/request/target/CustomTarget;", "Landroid/graphics/drawable/Drawable;", "resource", "Lcom/bumptech/glide/request/transition/Transition;", "transition", "Lkotlin/w;", "a", ReactTextInputShadowNode.PROP_PLACEHOLDER, "onLoadCleared", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class b extends CustomTarget<Drawable> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f130470a;

        b(ImageView imageView) {
            this.f130470a = imageView;
        }

        @Override // com.bumptech.glide.request.target.Target
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onResourceReady(@NotNull Drawable resource, @Nullable Transition<? super Drawable> transition) {
            if (PatchProxy.proxy(new Object[]{resource, transition}, this, changeQuickRedirect, false, 2, new Class[]{Drawable.class, Transition.class}, Void.TYPE).isSupported) {
                return;
            }
            v.j(resource, "resource");
            this.f130470a.setImageDrawable(resource);
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(@Nullable Drawable drawable) {
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 9, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PlayFunctionAdapter() {
        super(R$layout.Wd, null, 2, 0 == true ? 1 : 0);
        this.markLayoutParams = kotlin.j.b(PlayFunctionAdapter$markLayoutParams$2.INSTANCE);
    }

    private final void a(BaseViewHolder baseViewHolder, FunctionBean functionBean) {
        if (PatchProxy.proxy(new Object[]{baseViewHolder, functionBean}, this, changeQuickRedirect, false, 5, new Class[]{BaseViewHolder.class, FunctionBean.class}, Void.TYPE).isSupported) {
            return;
        }
        ImageView imageView = (ImageView) baseViewHolder.getView(R$id.Pp);
        if (cn.mate.android.utils.a.f10639a.d(imageView.getContext())) {
            return;
        }
        cn.soulapp.android.chatroom.dynamic.b.d(imageView).m(functionBean.getIconUrl()).into(imageView);
    }

    private final void b(BaseViewHolder baseViewHolder, FunctionBean functionBean) {
        if (PatchProxy.proxy(new Object[]{baseViewHolder, functionBean}, this, changeQuickRedirect, false, 4, new Class[]{BaseViewHolder.class, FunctionBean.class}, Void.TYPE).isSupported) {
            return;
        }
        TextView textView = (TextView) baseViewHolder.getView(R$id.f128179i70);
        TextView textView2 = (TextView) baseViewHolder.getView(R$id.f128110h70);
        textView.setText(functionBean.getName());
        textView2.setText(functionBean.getDesc());
    }

    private final void c(BaseViewHolder baseViewHolder, FunctionBean functionBean) {
        if (PatchProxy.proxy(new Object[]{baseViewHolder, functionBean}, this, changeQuickRedirect, false, 3, new Class[]{BaseViewHolder.class, FunctionBean.class}, Void.TYPE).isSupported) {
            return;
        }
        ImageView imageView = (ImageView) baseViewHolder.getView(R$id.Qp);
        if (functionBean.isOpened()) {
            ViewExtKt.l(imageView);
            imageView.setBackgroundResource(R$drawable.f127122b9);
        } else if (!e(functionBean)) {
            ViewExtKt.j(imageView);
        } else {
            ViewExtKt.l(imageView);
            imageView.setBackgroundResource(R$drawable.f127101a9);
        }
    }

    private final void d(BaseViewHolder baseViewHolder, FunctionBean functionBean) {
        Integer bizType;
        ImageView imageView;
        if (PatchProxy.proxy(new Object[]{baseViewHolder, functionBean}, this, changeQuickRedirect, false, 7, new Class[]{BaseViewHolder.class, FunctionBean.class}, Void.TYPE).isSupported || cn.mate.android.utils.a.f10639a.d(getContext())) {
            return;
        }
        if (cn.soulapp.cpnt_voiceparty.util.e.f162158a.z0() && (bizType = functionBean.getBizType()) != null && bizType.intValue() == 500001 && cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.util.a.f157602a.a() && (imageView = (ImageView) baseViewHolder.getViewOrNull(R$id.UK)) != null) {
            ViewExtKt.l(imageView);
            cn.soulapp.android.chatroom.dynamic.b.c(getContext()).m("https://china-img.soulapp.cn/admin/2024-05-06/74716db0-94ab-49dc-b8ce-5e25fb5bd78c.png").into(imageView);
        }
        LinearLayout linearLayout = (LinearLayout) baseViewHolder.getView(R$id.hD);
        linearLayout.removeAllViews();
        List<String> tagIconUrls = functionBean.getTagIconUrls();
        if (tagIconUrls != null) {
            for (String str : tagIconUrls) {
                ImageView imageView2 = new ImageView(getContext());
                imageView2.setScaleType(ImageView.ScaleType.FIT_XY);
                imageView2.setAdjustViewBounds(true);
                linearLayout.addView(imageView2, g());
                if (CommonUtil.b()) {
                    cn.soulapp.android.chatroom.dynamic.b.d(imageView2).b().load(str).into(imageView2);
                } else {
                    cn.soulapp.android.chatroom.dynamic.b.d(imageView2).b().load(str).skipMemoryCache(true).into(new b(imageView2));
                }
            }
        }
    }

    private final boolean e(FunctionBean item) {
        List<FunctionBean> playSetups;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{item}, this, changeQuickRedirect, false, 8, new Class[]{FunctionBean.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChildPlaySetups childGameSetups = item.getChildGameSetups();
        if (childGameSetups != null && (playSetups = childGameSetups.getPlaySetups()) != null) {
            Iterator<T> it = playSetups.iterator();
            while (it.hasNext()) {
                if (((FunctionBean) it.next()).isOpened()) {
                    return true;
                }
            }
        }
        return false;
    }

    private final LinearLayout.LayoutParams g() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], LinearLayout.LayoutParams.class);
        return patchProxyResultProxy.isSupported ? (LinearLayout.LayoutParams) patchProxyResultProxy.result : (LinearLayout.LayoutParams) this.markLayoutParams.getValue();
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void convert(@NotNull BaseViewHolder holder, @NotNull FunctionBean item) {
        if (PatchProxy.proxy(new Object[]{holder, item}, this, changeQuickRedirect, false, 2, new Class[]{BaseViewHolder.class, FunctionBean.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(holder, "holder");
        v.j(item, "item");
        c(holder, item);
        b(holder, item);
        a(holder, item);
        d(holder, item);
    }
}