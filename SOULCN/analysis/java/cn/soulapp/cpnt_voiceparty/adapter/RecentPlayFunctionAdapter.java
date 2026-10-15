package cn.soulapp.cpnt_voiceparty.adapter;

import android.widget.ImageView;
import android.widget.TextView;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.android.widget.image.MateImageView;
import cn.soulapp.cpnt_voiceparty.R$drawable;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.bean.ChildPlaySetups;
import cn.soulapp.cpnt_voiceparty.bean.FunctionBean;
import cn.soulapp.lib.utils.ext.ViewExtKt;
import com.baidu.platform.comapi.map.MapController;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: RecentPlayFunctionAdapter.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0018\u0010\f\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0014¨\u0006\u000f"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/adapter/RecentPlayFunctionAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", MapController.ITEM_LAYER_TAG, "Lkotlin/w;", "c", ExpcompatUtils.COMPAT_VALUE_780, "a", "", "d", l11l11I1111l.l111l1111lIl, AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class RecentPlayFunctionAdapter extends BaseQuickAdapter<FunctionBean, BaseViewHolder> {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX WARN: Multi-variable type inference failed */
    public RecentPlayFunctionAdapter() {
        super(R$layout.f129740me, null, 2, 0 == true ? 1 : 0);
    }

    private final void a(BaseViewHolder baseViewHolder, FunctionBean functionBean) {
        if (PatchProxy.proxy(new Object[]{baseViewHolder, functionBean}, this, changeQuickRedirect, false, 5, new Class[]{BaseViewHolder.class, FunctionBean.class}, Void.TYPE).isSupported) {
            return;
        }
        ImageView imageView = (ImageView) baseViewHolder.getView(R$id.Pp);
        if (!cn.mate.android.utils.a.f10639a.d(imageView.getContext())) {
            cn.soulapp.android.chatroom.dynamic.b.d(imageView).m(functionBean.getIconUrl()).into(imageView);
        }
        MateImageView mateImageView = (MateImageView) baseViewHolder.getView(R$id.iZ);
        String cornerMark = functionBean.getCornerMark();
        if ((cornerMark == null || cornerMark.length() == 0) || functionBean.isOpened()) {
            ViewExtKt.j(mateImageView);
        } else {
            ViewExtKt.l(mateImageView);
            mateImageView.F(functionBean.getCornerMark());
        }
    }

    private final void b(BaseViewHolder baseViewHolder, FunctionBean functionBean) {
        if (PatchProxy.proxy(new Object[]{baseViewHolder, functionBean}, this, changeQuickRedirect, false, 4, new Class[]{BaseViewHolder.class, FunctionBean.class}, Void.TYPE).isSupported) {
            return;
        }
        ((TextView) baseViewHolder.getView(R$id.f128179i70)).setText(functionBean.getName());
    }

    private final void c(BaseViewHolder baseViewHolder, FunctionBean functionBean) {
        if (PatchProxy.proxy(new Object[]{baseViewHolder, functionBean}, this, changeQuickRedirect, false, 3, new Class[]{BaseViewHolder.class, FunctionBean.class}, Void.TYPE).isSupported) {
            return;
        }
        ImageView imageView = (ImageView) baseViewHolder.getView(R$id.Qp);
        if (functionBean.isOpened()) {
            ViewExtKt.l(imageView);
            imageView.setBackgroundResource(R$drawable.f127122b9);
        } else if (!d(functionBean)) {
            ViewExtKt.j(imageView);
        } else {
            ViewExtKt.l(imageView);
            imageView.setBackgroundResource(R$drawable.f127101a9);
        }
    }

    private final boolean d(FunctionBean item) {
        List<FunctionBean> playSetups;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{item}, this, changeQuickRedirect, false, 6, new Class[]{FunctionBean.class}, Boolean.TYPE);
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

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void convert(@NotNull BaseViewHolder holder, @NotNull FunctionBean item) {
        if (PatchProxy.proxy(new Object[]{holder, item}, this, changeQuickRedirect, false, 2, new Class[]{BaseViewHolder.class, FunctionBean.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(holder, "holder");
        v.j(item, "item");
        a(holder, item);
        c(holder, item);
        b(holder, item);
    }
}