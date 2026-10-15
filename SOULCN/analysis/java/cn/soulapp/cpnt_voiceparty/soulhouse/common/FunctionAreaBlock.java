package cn.soulapp.cpnt_voiceparty.soulhouse.common;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import cn.soul.android.base.block_frame.block.Block;
import cn.soul.android.base.block_frame.block.Container;
import cn.soul.android.base.block_frame.block.GroupBlock;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.soulhouse.adventure.HeartAdventureBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.aiplayground.AiPlaygroundBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.aipodcast.AiPodCastBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.anim.AnimationGroupBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.auctionpk.AuctionPkBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.barragegame.BarrageGameBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.bigvip.BigVipBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.bistro.BistroBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.bluepack.BluePackBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.bottom.BottomGroupBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.bullet.BulletGameBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.ceremony.CeremonyBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.ceremony.CeremonySubscribeBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.eventgame.EventGameBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.festivalactivity.FestivalActivityBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.fishing.FishingMasterBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.friendscabin.FriendsCabinBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.guineapig.GuineaPigGameBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.h5play.H5PlayBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.left.LeftGroupBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.magicProp.MagicPropBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.musictavern.MusicTavernBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.mystery.MysteryBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.othergame.OtherH5GameBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.pvp.PvpGroupBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.redpack.RedPackBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.relationship.RelationshipBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.right.RightGroupBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.screencast.ScreenCastBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.segment.SegmentManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.singingroom.SingingRoomBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.songrequest.SongRequestBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.soofungame.SooFunGameBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.stamina.StaminaEntryBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.studyroom.StudyRoomBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.top.TopGroupBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.virtuallive.VirtualLiveBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.werewolf.WerewolfBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.wonderful.WonderfulStoreBlock;
import cn.soulapp.cpnt_voiceparty.ui.SoulHouseMoreShareDialog;
import cn.soulapp.cpnt_voiceparty.widget.DispatchConstraintLayout;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: FunctionAreaBlock.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\n\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0016J\u0016\u0010\f\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000b0\n0\tH\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0014\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/common/FunctionAreaBlock;", "Lcn/soul/android/base/block_frame/block/GroupBlock;", "Landroid/view/ViewGroup;", "root", "Lkotlin/w;", "inflateContainer", AppAgent.ON_CREATE, "onDestroy", "getGroupView", "", "Ljava/lang/Class;", "Lcn/soul/android/base/block_frame/block/Block;", "children", "initView", "Lcn/soul/android/base/block_frame/block/Container;", "ownContainer", "Lcn/soul/android/base/block_frame/block/Container;", "chatRoomFrameRootView", "Landroid/view/ViewGroup;", "", "webpStatsPageToken", "Ljava/lang/Object;", AppAgent.CONSTRUCT, "(Lcn/soul/android/base/block_frame/block/Container;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class FunctionAreaBlock extends GroupBlock {
    public static ChangeQuickRedirect changeQuickRedirect;
    private ViewGroup chatRoomFrameRootView;

    @NotNull
    private final Container ownContainer;

    @NotNull
    private final Object webpStatsPageToken;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FunctionAreaBlock(@NotNull Container ownContainer) {
        super(ownContainer);
        kotlin.jvm.internal.v.j(ownContainer, "ownContainer");
        this.ownContainer = ownContainer;
        this.webpStatsPageToken = new Object();
    }

    private final void inflateContainer(ViewGroup viewGroup) {
        ViewGroup viewGroup2;
        if (PatchProxy.proxy(new Object[]{viewGroup}, this, changeQuickRedirect, false, 7, new Class[]{ViewGroup.class}, Void.TYPE).isSupported) {
            return;
        }
        if (((SegmentManager) this.ownContainer.getDataBus().d(cn.soulapp.cpnt_voiceparty.soulhouse.b.f145790a.F())) == null) {
            int i11 = R$layout.f129849qi;
            View viewC = g60.a.f224749a.c(i11);
            if (viewC == null) {
                View viewInflate = View.inflate(getContext(), i11, viewGroup);
                if (viewInflate == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup");
                }
                viewGroup2 = (ViewGroup) viewInflate;
            } else {
                viewGroup.addView(viewC);
                viewGroup2 = (ViewGroup) viewC;
            }
            this.chatRoomFrameRootView = viewGroup2;
        } else {
            this.chatRoomFrameRootView = viewGroup;
        }
        ViewGroup viewGroup3 = this.chatRoomFrameRootView;
        if (viewGroup3 == null) {
            kotlin.jvm.internal.v.B("chatRoomFrameRootView");
            viewGroup3 = null;
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) viewGroup3.findViewById(R$id.C00);
        if (constraintLayout != null) {
            constraintLayout.setPadding(0, b80.g0.m(), 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-1, reason: not valid java name */
    public static final boolean m6670initView$lambda1(FunctionAreaBlock this$0, View view) {
        FragmentManager supportFragmentManager;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{this$0, view}, null, changeQuickRedirect, true, 8, new Class[]{FunctionAreaBlock.class, View.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        cn.soulapp.android.client.component.middle.platform.utils.track.d.b("ChatRoom_LongPresszMoreoptions", new String[0]);
        Context context = this$0.getContext();
        FragmentActivity fragmentActivity = context instanceof FragmentActivity ? (FragmentActivity) context : null;
        if (fragmentActivity != null && (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) != null) {
            SoulHouseMoreShareDialog.Companion.b(SoulHouseMoreShareDialog.INSTANCE, this$0.ownContainer.getDataBus(), null, 2, null).show(supportFragmentManager, SoulHouseMoreShareDialog.class.getSimpleName());
        }
        return true;
    }

    @Override // cn.soul.android.base.block_frame.block.GroupBlock
    @NotNull
    public List<Class<? extends Block>> children() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : kotlin.collections.v.s(BackgroundBlock.class, TopGroupBlock.class, LeftGroupBlock.class, RightGroupBlock.class, BottomGroupBlock.class, AnimationGroupBlock.class, BuffBlock.class, CommonBusinessBlock.class, UserInfoBlock.class, RoomInfoBlock.class, PlayAreaBlock.class, FuncAreaHBlock.class, PvpGroupBlock.class, SoulLiveHouseBlock.class, SwitchRtcBlock.class, GuineaPigGameBlock.class, BistroBlock.class, MusicTavernBlock.class, FestivalActivityBlock.class, AuctionPkBlock.class, VirtualLiveBlock.class, SingingRoomBlock.class, RelationshipBlock.class, ThrowingThunderBlock.class, BulletGameBlock.class, HeartAdventureBlock.class, WonderfulStoreBlock.class, H5PlayBlock.class, CeremonyBlock.class, CeremonySubscribeBlock.class, BigVipBlock.class, StudyRoomBlock.class, RedPackBlock.class, MagicPropBlock.class, OtherH5GameBlock.class, MysteryBlock.class, FriendsCabinBlock.class, BluePackBlock.class, WerewolfBlock.class, FishingMasterBlock.class, SooFunGameBlock.class, AiPodCastBlock.class, BarrageGameBlock.class, SongRequestBlock.class, AiPlaygroundBlock.class, StaminaEntryBlock.class, EventGameBlock.class, VideoLiveBlock.class, ScreenCastBlock.class);
    }

    @Override // cn.soul.android.base.block_frame.block.GroupBlock
    @Nullable
    public ViewGroup getGroupView() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], ViewGroup.class);
        if (patchProxyResultProxy.isSupported) {
            return (ViewGroup) patchProxyResultProxy.result;
        }
        ViewGroup viewGroup = this.chatRoomFrameRootView;
        if (viewGroup != null) {
            return viewGroup;
        }
        kotlin.jvm.internal.v.B("chatRoomFrameRootView");
        return null;
    }

    @Override // cn.soul.android.base.block_frame.block.Block
    public void initView(@NotNull ViewGroup root) {
        if (PatchProxy.proxy(new Object[]{root}, this, changeQuickRedirect, false, 6, new Class[]{ViewGroup.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(root, "root");
        inflateContainer(root);
        DispatchConstraintLayout dispatchConstraintLayout = (DispatchConstraintLayout) root.findViewById(R$id.YI);
        if (dispatchConstraintLayout != null) {
            dispatchConstraintLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.x2
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return FunctionAreaBlock.m6670initView$lambda1(this.f147833a, view);
                }
            });
        }
    }

    @Override // cn.soul.android.base.block_frame.block.GroupBlock, cn.soul.android.base.block_frame.block.Block, cn.soul.android.base.block_frame.block.IBlockLifecycle
    public void onCreate() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        super.onCreate();
        z30.a.f248264a.u(this.webpStatsPageToken);
    }

    @Override // cn.soul.android.base.block_frame.block.GroupBlock, cn.soul.android.base.block_frame.block.Block, cn.soul.android.base.block_frame.block.IBlockLifecycle
    public void onDestroy() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        try {
            z30.a.f248264a.d(this.webpStatsPageToken);
        } finally {
            super.onDestroy();
        }
    }
}