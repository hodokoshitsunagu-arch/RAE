package cn.soulapp.cpnt_voiceparty.soulhouse.bottom;

import android.view.View;
import android.view.ViewGroup;
import cn.soul.android.base.block_frame.block.Block;
import cn.soul.android.base.block_frame.block.Container;
import cn.soul.android.base.block_frame.block.GroupBlock;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: BottomGroupBlock.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0016\u0010\u0005\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u00030\u0002H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomGroupBlock;", "Lcn/soul/android/base/block_frame/block/GroupBlock;", "", "Ljava/lang/Class;", "Lcn/soul/android/base/block_frame/block/Block;", "children", "Landroid/view/ViewGroup;", "root", "Lkotlin/w;", "initView", "Landroid/view/View;", "rootView", "Landroid/view/View;", "Lcn/soul/android/base/block_frame/block/Container;", "container", AppAgent.CONSTRUCT, "(Lcn/soul/android/base/block_frame/block/Container;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class BottomGroupBlock extends GroupBlock {
    public static ChangeQuickRedirect changeQuickRedirect;
    private View rootView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomGroupBlock(@NotNull Container container) {
        super(container);
        kotlin.jvm.internal.v.j(container, "container");
    }

    @Override // cn.soul.android.base.block_frame.block.GroupBlock
    @NotNull
    public List<Class<? extends Block>> children() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : kotlin.collections.v.s(ChatInputBlock.class, SoundEffectBlock.class, BottomCommonBlock.class, GiftBlock.class, LotteryBlock.class, SeatBlock.class, EggGiftBlock.class, AmusementParkBlock.class, NawaBottomPopBlock.class, BottomBarrageBlock.class, IceBreakerBarBlock.class);
    }

    @Override // cn.soul.android.base.block_frame.block.Block
    public void initView(@NotNull ViewGroup root) {
        if (PatchProxy.proxy(new Object[]{root}, this, changeQuickRedirect, false, 3, new Class[]{ViewGroup.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(root, "root");
        this.rootView = root;
    }
}