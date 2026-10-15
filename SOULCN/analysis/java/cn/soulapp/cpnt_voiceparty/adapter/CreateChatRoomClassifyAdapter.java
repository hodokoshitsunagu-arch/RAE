package cn.soulapp.cpnt_voiceparty.adapter;

import android.view.View;
import android.widget.RadioButton;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.bean.RoomTypeBean;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import com.baidu.platform.comapi.map.MapController;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: CreateChatRoomClassifyAdapter.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0011\u0012\b\b\u0002\u0010\u000e\u001a\u00020\b¢\u0006\u0004\b\u000f\u0010\rJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0014R\"\u0010\u000e\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/adapter/CreateChatRoomClassifyAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcn/soulapp/android/chatroom/bean/RoomTypeBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", MapController.ITEM_LAYER_TAG, "Lkotlin/w;", "a", "", "I", "getCurrentClassifyCode", "()I", "setCurrentClassifyCode", "(I)V", "currentClassifyCode", AppAgent.CONSTRUCT, "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class CreateChatRoomClassifyAdapter extends BaseQuickAdapter<RoomTypeBean, BaseViewHolder> {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int currentClassifyCode;

    public CreateChatRoomClassifyAdapter() {
        this(0, 1, null);
    }

    public /* synthetic */ CreateChatRoomClassifyAdapter(int i11, int i12, kotlin.jvm.internal.q qVar) {
        this((i12 & 1) != 0 ? 0 : i11);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void convert(@NotNull BaseViewHolder holder, @NotNull RoomTypeBean item) {
        if (PatchProxy.proxy(new Object[]{holder, item}, this, changeQuickRedirect, false, 2, new Class[]{BaseViewHolder.class, RoomTypeBean.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(holder, "holder");
        v.j(item, "item");
        View view = holder.itemView;
        int i11 = R$id.iO;
        RadioButton radioButton = (RadioButton) view.findViewById(i11);
        if (radioButton != null) {
            radioButton.setText(item.classifyName);
        }
        RadioButton radioButton2 = (RadioButton) holder.itemView.findViewById(i11);
        if (radioButton2 == null) {
            return;
        }
        radioButton2.setChecked(this.currentClassifyCode == item.f24105id);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CreateChatRoomClassifyAdapter(int i11) {
        super(R$layout.K8, null, 2, 0 == true ? 1 : 0);
        this.currentClassifyCode = i11;
    }
}