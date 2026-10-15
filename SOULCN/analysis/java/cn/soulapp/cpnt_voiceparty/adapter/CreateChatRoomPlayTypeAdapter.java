package cn.soulapp.cpnt_voiceparty.adapter;

import android.widget.ImageView;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.PlayTypeModel;
import cn.soulapp.lib.utils.ext.ViewExtKt;
import com.baidu.platform.comapi.map.MapController;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: CreateChatRoomPlayTypeAdapter.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0014¨\u0006\f"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/adapter/CreateChatRoomPlayTypeAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/PlayTypeModel;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", MapController.ITEM_LAYER_TAG, "Lkotlin/w;", ExpcompatUtils.COMPAT_VALUE_780, "a", "c", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class CreateChatRoomPlayTypeAdapter extends BaseQuickAdapter<PlayTypeModel, BaseViewHolder> {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX WARN: Multi-variable type inference failed */
    public CreateChatRoomPlayTypeAdapter() {
        super(R$layout.J9, null, 2, 0 == true ? 1 : 0);
    }

    private final void a(BaseViewHolder baseViewHolder, PlayTypeModel playTypeModel) {
        if (PatchProxy.proxy(new Object[]{baseViewHolder, playTypeModel}, this, changeQuickRedirect, false, 4, new Class[]{BaseViewHolder.class, PlayTypeModel.class}, Void.TYPE).isSupported) {
            return;
        }
        baseViewHolder.setText(R$id.FZ, playTypeModel.getName());
        ImageView imageView = (ImageView) baseViewHolder.getView(R$id.f129302yi);
        if (!cn.mate.android.utils.a.f10639a.d(imageView.getContext())) {
            cn.soulapp.android.chatroom.dynamic.b.d(imageView).m(cn.soulapp.cpnt_voiceparty.util.f.f162171a.b(playTypeModel.getIconUrl(), ExtensionsKt.dp(48))).into(imageView);
        }
        imageView.setSelected(playTypeModel.getHasSelected());
    }

    private final void b(BaseViewHolder baseViewHolder, PlayTypeModel playTypeModel) {
        ImageView imageView;
        if (PatchProxy.proxy(new Object[]{baseViewHolder, playTypeModel}, this, changeQuickRedirect, false, 3, new Class[]{BaseViewHolder.class, PlayTypeModel.class}, Void.TYPE).isSupported || (imageView = (ImageView) baseViewHolder.getViewOrNull(R$id.f128848rx)) == null) {
            return;
        }
        String tagIconUrl = playTypeModel.getTagIconUrl();
        if ((tagIconUrl == null || tagIconUrl.length() == 0) || cn.mate.android.utils.a.f10639a.d(imageView.getContext())) {
            ViewExtKt.j(imageView);
        } else {
            ViewExtKt.l(imageView);
            cn.soulapp.android.chatroom.dynamic.b.d(imageView).m(playTypeModel.getTagIconUrl()).into(imageView);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void convert(@NotNull BaseViewHolder holder, @NotNull PlayTypeModel item) {
        if (PatchProxy.proxy(new Object[]{holder, item}, this, changeQuickRedirect, false, 2, new Class[]{BaseViewHolder.class, PlayTypeModel.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(holder, "holder");
        v.j(item, "item");
        a(holder, item);
        b(holder, item);
    }
}