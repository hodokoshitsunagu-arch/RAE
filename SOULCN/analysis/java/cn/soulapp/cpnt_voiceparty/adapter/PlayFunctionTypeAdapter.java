package cn.soulapp.cpnt_voiceparty.adapter;

import android.widget.TextView;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.bean.PlayFunctionTypeBean;
import cn.soulapp.cpnt_voiceparty.util.d0;
import com.baidu.platform.comapi.map.MapController;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: PlayFunctionTypeAdapter.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0014¨\u0006\n"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/adapter/PlayFunctionTypeAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcn/soulapp/cpnt_voiceparty/bean/PlayFunctionTypeBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", MapController.ITEM_LAYER_TAG, "Lkotlin/w;", "a", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class PlayFunctionTypeAdapter extends BaseQuickAdapter<PlayFunctionTypeBean, BaseViewHolder> {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX WARN: Multi-variable type inference failed */
    public PlayFunctionTypeAdapter() {
        super(R$layout.Xd, null, 2, 0 == true ? 1 : 0);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void convert(@NotNull BaseViewHolder holder, @NotNull PlayFunctionTypeBean item) {
        if (PatchProxy.proxy(new Object[]{holder, item}, this, changeQuickRedirect, false, 2, new Class[]{BaseViewHolder.class, PlayFunctionTypeBean.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(holder, "holder");
        v.j(item, "item");
        ((TextView) holder.getView(R$id.Tc0)).setText(d0.c(item.getClassifyName(), 5));
    }
}