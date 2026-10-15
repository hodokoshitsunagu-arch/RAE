package cn.soulapp.cpnt_voiceparty.adapter;

import android.widget.ImageView;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.bean.ChatRoomTopicBean;
import com.baidu.platform.comapi.map.MapController;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: CreateChatRoomTopicAdapter.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0002H\u0014¨\u0006\u000b"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/adapter/CreateChatRoomTopicAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcn/soulapp/cpnt_voiceparty/bean/ChatRoomTopicBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/chad/library/adapter/base/module/LoadMoreModule;", "holder", MapController.ITEM_LAYER_TAG, "Lkotlin/w;", "a", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class CreateChatRoomTopicAdapter extends BaseQuickAdapter<ChatRoomTopicBean, BaseViewHolder> implements LoadMoreModule {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX WARN: Multi-variable type inference failed */
    public CreateChatRoomTopicAdapter() {
        super(R$layout.H9, null, 2, 0 == true ? 1 : 0);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void convert(@NotNull BaseViewHolder holder, @NotNull ChatRoomTopicBean item) {
        if (PatchProxy.proxy(new Object[]{holder, item}, this, changeQuickRedirect, false, 2, new Class[]{BaseViewHolder.class, ChatRoomTopicBean.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(holder, "holder");
        v.j(item, "item");
        ImageView imageView = (ImageView) holder.getView(R$id.f128068gl);
        if (cn.mate.android.utils.a.f10639a.d(imageView.getContext())) {
            return;
        }
        cn.soulapp.android.chatroom.dynamic.b.d(imageView).m(item.getTopicIcon()).into(imageView);
        int i11 = R$id.f128824rk0;
        String topicName = item.getTopicName();
        if (topicName == null) {
            topicName = "";
        }
        holder.setText(i11, topicName);
    }
}