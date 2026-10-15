package cn.soulapp.cpnt_voiceparty.function;

import android.text.TextUtils;
import cn.soul.android.base.block_frame.block.Container;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.insight.apm.battery.internal.BatteryMonitor;
import cn.soul.insight.log.core.api.Api;
import cn.soulapp.android.chatroom.bean.ChatRoomModel;
import cn.soulapp.android.chatroom.data.RoomDataManager;
import cn.soulapp.android.chatroom.data.UpdateOp;
import cn.soulapp.android.lib.common.api.common.RequestKey;
import cn.soulapp.android.lib.media.zego.RoomChatEngineManager;
import cn.soulapp.cpnt_voiceparty.bean.AuctionPkInfo;
import cn.soulapp.cpnt_voiceparty.bean.FunctionBean;
import cn.soulapp.cpnt_voiceparty.bean.GuineaPigInfo;
import cn.soulapp.cpnt_voiceparty.bean.PvpInfo;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import cn.soulapp.cpnt_voiceparty.bean.RoomModeInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseContainer;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.ZoomOutManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.aiplayground.AiPlaygroundSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.aipodcast.AiPodCastSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.assistant.AssistantManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.assistant.AuctionAssistant;
import cn.soulapp.cpnt_voiceparty.soulhouse.assistant.CommonAssistant;
import cn.soulapp.cpnt_voiceparty.soulhouse.assistant.GameAssistant;
import cn.soulapp.cpnt_voiceparty.soulhouse.barragegame.BarrageGameSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.bigvip.BigVipSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.bullet.BulletGameSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.VirtualLivePanelModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.friendscabin.FriendsCabinSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.guineapig.GuineaPigGameSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.h5play.H5PlaySlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.ktvmodel.KtvModelSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.mystery.MysterySlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.othergame.OtherH5GameSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.playmode.ModeConflictConfiguration;
import cn.soulapp.cpnt_voiceparty.soulhouse.qubaoshow.QubaoShowAssistant;
import cn.soulapp.cpnt_voiceparty.soulhouse.qubaoshow.bean.QubaoShowInfoDataBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.singingroom.SingingRoomSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.slice.SliceManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.slice.VirtualLiveSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.songrequest.SongRequestSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.soofungame.SooFunGameSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.studyroom.StudyRoomSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.werewolf.WerewolfSlice;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.BlockMessage;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.MusicMarketInfo;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.RoomInfo;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.RoomMode;
import cn.soulapp.cpnt_voiceparty.util.DataConvertUtil;
import cn.soulapp.cpnt_voiceparty.util.KtvPlayerManager;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.google.gson.Gson;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.ss.ttm.player.MediaPlayer;
import com.walid.rxretrofit.HttpSubscriber;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomFunctionSwitchManager.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J-\u0010\u000b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\n\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJF\u0010\u0016\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0016\b\u0002\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00112\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J-\u0010\u001a\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u001a\u0010\fJ\u0018\u0010\u001b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0018\u001a\u00020\b¨\u0006\u001e"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/function/RoomFunctionSwitchManager;", "", "Lcn/soul/android/base/block_frame/block/Container;", "blockContainer", "Lkotlin/w;", ExpcompatUtils.COMPAT_VALUE_780, "Lcn/soulapp/cpnt_voiceparty/soulhouse/SoulHouseDriver;", "soulHouseDriver", "", "lastPlayType", "curPlayType", "c", "(Lcn/soulapp/cpnt_voiceparty/soulhouse/SoulHouseDriver;Ljava/lang/Integer;Ljava/lang/Integer;)V", "Lcn/soulapp/cpnt_voiceparty/bean/RoomModeInfo;", "roomModeInfo", "", "isOpen", "", "", "extMap", "Lmn0/c;", "message", "d", "a", "playTypeStr", "groupType", "f", "h", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class RoomFunctionSwitchManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final RoomFunctionSwitchManager f142544a;
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: compiled from: RoomFunctionSwitchManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/function/RoomFunctionSwitchManager$a", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "Lcn/soulapp/cpnt_voiceparty/bean/RoomModeInfo;", "t", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class a extends ty.s<RequestResult<RoomModeInfo>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ SoulHouseDriver f142545c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Container f142546d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(SoulHouseDriver soulHouseDriver, Container container) {
            super(true);
            this.f142545c = soulHouseDriver;
            this.f142546d = container;
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RequestResult<RoomModeInfo> requestResult) {
            SooFunGameSlice sooFunGameSlice;
            Object next;
            if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            if (requestResult != null && requestResult.getResult()) {
                SoulHouseExtensionKt.w0(this, "RoomFunctionTag", "requestGetRoomMode(), 服务端返回当前房间信息：" + requestResult.getData());
                RoomModeInfo data = requestResult.getData();
                int groupType = data != null ? data.getGroupType() : -1;
                if (this.f142545c.a1().w() == null && groupType > 0) {
                    Iterator<T> it = b0.f142548a.d().iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!(((BaseRoomFunction) next).h().getGroupType() == groupType));
                    BaseRoomFunction baseRoomFunction = (BaseRoomFunction) next;
                    cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVarH = baseRoomFunction != null ? baseRoomFunction.h() : null;
                    if (hVarH != null) {
                        RoomDataManager roomDataManagerA1 = this.f142545c.a1();
                        FunctionBean functionBean = new FunctionBean(null, null, null, null, null, null, null, null, false, null, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD, null);
                        functionBean.setName(hVarH.getModeName());
                        functionBean.setBizType(Integer.valueOf(hVarH.getId()));
                        functionBean.setType(Integer.valueOf(hVarH.getFuncType()));
                        functionBean.setTechType(Integer.valueOf(hVarH.getGroupType()));
                        roomDataManagerA1.e0(functionBean, UpdateOp.ADD);
                    }
                }
                RoomModeInfo data2 = requestResult.getData();
                Integer numValueOf = data2 != null ? Integer.valueOf(data2.getGroupType()) : null;
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    BulletGameSlice bulletGameSlice = (BulletGameSlice) SoulHouseExtensionKt.g0(this.f142545c, SliceManager.INSTANCE.i());
                    if (bulletGameSlice != null) {
                        bulletGameSlice.P(null);
                    }
                } else if (numValueOf != null && numValueOf.intValue() == 4) {
                    H5PlaySlice h5PlaySlice = (H5PlaySlice) SoulHouseExtensionKt.g0(this.f142545c, SliceManager.INSTANCE.t());
                    if (h5PlaySlice != null) {
                        H5PlaySlice.Y(h5PlaySlice, null, 1, null);
                    }
                } else if (numValueOf != null && numValueOf.intValue() == 5) {
                    OtherH5GameSlice otherH5GameSlice = (OtherH5GameSlice) SoulHouseExtensionKt.g0(this.f142545c, SliceManager.INSTANCE.C());
                    if (otherH5GameSlice != null) {
                        otherH5GameSlice.W(requestResult.getData());
                    }
                } else if (numValueOf != null && numValueOf.intValue() == 6) {
                    MysterySlice mysterySlice = (MysterySlice) SoulHouseExtensionKt.g0(this.f142545c, SliceManager.INSTANCE.B());
                    if (mysterySlice != null) {
                        mysterySlice.R(requestResult.getData());
                    }
                } else if (numValueOf != null && numValueOf.intValue() == 7 && (sooFunGameSlice = (SooFunGameSlice) SoulHouseExtensionKt.g0(this.f142545c, SliceManager.INSTANCE.L())) != null) {
                    sooFunGameSlice.Z(requestResult.getData());
                }
                ModeConflictConfiguration modeConflictConfiguration = ModeConflictConfiguration.f154904a;
                RoomModeInfo data3 = requestResult.getData();
                Integer playType = data3 != null ? data3.getPlayType() : null;
                RoomModeInfo data4 = requestResult.getData();
                if (modeConflictConfiguration.a(playType, data4 != null ? Integer.valueOf(data4.getGroupType()) : null)) {
                    cn.soul.insight.log.core.a.f15353b.dOnlyPrint("Atmosphere", "当前玩法跟氛围有冲突，需要关闭入口7");
                    this.f142546d.v(BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM.ordinal());
                }
            }
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 8, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f142544a = new RoomFunctionSwitchManager();
    }

    private RoomFunctionSwitchManager() {
    }

    private final void b(Container container) {
        SoulHouseDriver soulHouseDriverJ0;
        if (PatchProxy.proxy(new Object[]{container}, this, changeQuickRedirect, false, 6, new Class[]{Container.class}, Void.TYPE).isSupported || (soulHouseDriverJ0 = SoulHouseExtensionKt.j0(container.getDataBus())) == null) {
            return;
        }
        h30.g.f225309a.e4(SoulHouseExtensionKt.P(soulHouseDriverJ0)).subscribe(HttpSubscriber.create(new a(soulHouseDriverJ0, container)));
    }

    private final void c(SoulHouseDriver soulHouseDriver, Integer lastPlayType, Integer curPlayType) {
        SoulHouseContainer soulHouseContainerP0;
        if (PatchProxy.proxy(new Object[]{soulHouseDriver, lastPlayType, curPlayType}, this, changeQuickRedirect, false, 7, new Class[]{SoulHouseDriver.class, Integer.class, Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        BatteryMonitor.Companion companion = BatteryMonitor.INSTANCE;
        cn.soul.insight.apm.battery.internal.l lVar = cn.soul.insight.apm.battery.internal.l.f14781a;
        companion.k(lVar.i(lastPlayType));
        BatteryMonitor.Companion.t(companion, lVar.i(curPlayType), lVar.i(curPlayType), null, 4, null);
        if ((lastPlayType != null ? lastPlayType.intValue() : 0) > 0) {
            z30.a aVar = z30.a.f248264a;
            kotlin.jvm.internal.v.g(lastPlayType);
            aVar.r(lastPlayType.intValue());
        }
        if ((curPlayType != null ? curPlayType.intValue() : 0) > 0) {
            z30.a aVar2 = z30.a.f248264a;
            kotlin.jvm.internal.v.g(curPlayType);
            aVar2.q(curPlayType.intValue());
        }
        if (soulHouseDriver == null || (soulHouseContainerP0 = soulHouseDriver.p0()) == null) {
            return;
        }
        soulHouseContainerP0.D(BlockMessage.MSG_SWITCH_PLAY_TYPE, new Pair(lastPlayType, curPlayType));
    }

    public static /* synthetic */ void g(RoomFunctionSwitchManager roomFunctionSwitchManager, SoulHouseDriver soulHouseDriver, Integer num, Integer num2, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            num2 = 1;
        }
        roomFunctionSwitchManager.f(soulHouseDriver, num, num2);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0042  */
    /* JADX WARN: Code duplicated, block: B:124:0x0284  */
    /* JADX WARN: Code duplicated, block: B:278:0x05d2  */
    /* JADX WARN: Code duplicated, block: B:279:0x05d7  */
    /* JADX WARN: Code duplicated, block: B:282:0x05e2  */
    /* JADX WARN: Code duplicated, block: B:283:0x05e7  */
    /* JADX WARN: Code duplicated, block: B:291:0x060a  */
    /* JADX WARN: Code duplicated, block: B:294:0x0614  */
    /* JADX WARN: Code duplicated, block: B:301:? A[RETURN, SYNTHETIC] */
    public final void a(@NotNull final Container blockContainer) {
        Object next;
        FunctionBean functionBean;
        KtvPlayerManager ktvPlayerManager;
        boolean z11;
        BulletGameSlice bulletGameSlice;
        Integer bizType;
        Integer techType;
        ModeConflictConfiguration modeConflictConfiguration;
        Integer bizType2;
        SoulHouseDriver soulHouseDriverJ0;
        RoomDataManager roomDataManagerA1;
        RoomDataManager roomDataManagerA2;
        boolean zO = false;
        if (PatchProxy.proxy(new Object[]{blockContainer}, this, changeQuickRedirect, false, 3, new Class[]{Container.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(blockContainer, "blockContainer");
        b0 b0Var = b0.f142548a;
        Integer numI = b0Var.i(SoulHouseExtensionKt.j0(blockContainer.getDataBus()));
        int id2 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154982g.getId();
        if (numI != null && numI.intValue() == id2) {
            functionBean = null;
        } else {
            Iterator<T> it = b0Var.d().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(numI != null && ((BaseRoomFunction) next).h().getId() == numI.intValue()));
            BaseRoomFunction baseRoomFunction = (BaseRoomFunction) next;
            cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVarH = baseRoomFunction != null ? baseRoomFunction.h() : null;
            if (hVarH != null) {
                functionBean = new FunctionBean(null, null, null, null, null, null, null, null, false, null, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD, null);
                functionBean.setName(hVarH.getModeName());
                functionBean.setBizType(Integer.valueOf(hVarH.getId()));
                functionBean.setType(Integer.valueOf(hVarH.getFuncType()));
                functionBean.setTechType(Integer.valueOf(hVarH.getGroupType()));
                ChangeQuickRedirect changeQuickRedirect2 = kotlin.w.changeQuickRedirect;
            } else {
                functionBean = null;
            }
        }
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(blockContainer.getDataBus());
        FunctionBean functionBeanW = (soulHouseDriverJ1 == null || (roomDataManagerA2 = soulHouseDriverJ1.a1()) == null) ? null : roomDataManagerA2.w();
        cn.soul.insight.log.core.a.f15353b.i("LUK", "getRoomMode，获取本地缓存的玩法：type = " + numI + ",通过type找的function = " + functionBean + ", 缓存的function = " + functionBeanW);
        if (functionBeanW == null && functionBean != null && (soulHouseDriverJ0 = SoulHouseExtensionKt.j0(blockContainer.getDataBus())) != null && (roomDataManagerA1 = soulHouseDriverJ0.a1()) != null) {
            roomDataManagerA1.e0(functionBean, UpdateOp.ADD);
            ChangeQuickRedirect changeQuickRedirect3 = kotlin.w.changeQuickRedirect;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154983h;
        int id3 = hVar.getId();
        if (numI == null || numI.intValue() != id3) {
            blockContainer.removeX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.S());
            SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(blockContainer.getDataBus());
            if (soulHouseDriverJ2 != null && (ktvPlayerManager = soulHouseDriverJ2.getKtvPlayerManager()) != null) {
                ktvPlayerManager.o0();
                ChangeQuickRedirect changeQuickRedirect4 = kotlin.w.changeQuickRedirect;
            }
        }
        int id4 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154985j.getId();
        if (numI != null && numI.intValue() == id4) {
            blockContainer.v(BlockMessage.MSG_AUCTION_OPEN.ordinal());
        } else {
            int id5 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154999x.getId();
            if (numI != null && numI.intValue() == id5) {
                blockContainer.v(BlockMessage.MSG_QUBAO_SHOW_OPEN.ordinal());
            } else {
                int id6 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.K.getId();
                if (numI != null && numI.intValue() == id6) {
                    blockContainer.v(BlockMessage.OPEN_TURTLE_SOUP.ordinal());
                } else {
                    int id7 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154984i.getId();
                    if (numI != null && numI.intValue() == id7) {
                        blockContainer.v(BlockMessage.MSG_OPEN_PK.ordinal());
                    } else {
                        int id8 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.B.getId();
                        if (numI != null && numI.intValue() == id8) {
                            SongRequestSlice songRequestSlice = (SongRequestSlice) SoulHouseExtensionKt.f0(blockContainer, SliceManager.INSTANCE.K());
                            if (songRequestSlice != null) {
                                songRequestSlice.T();
                                ChangeQuickRedirect changeQuickRedirect5 = kotlin.w.changeQuickRedirect;
                            }
                        } else {
                            int id9 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.C.getId();
                            if (numI != null && numI.intValue() == id9) {
                                AiPlaygroundSlice aiPlaygroundSlice = (AiPlaygroundSlice) SoulHouseExtensionKt.f0(blockContainer, SliceManager.INSTANCE.a());
                                if (aiPlaygroundSlice != null) {
                                    aiPlaygroundSlice.u0();
                                    ChangeQuickRedirect changeQuickRedirect6 = kotlin.w.changeQuickRedirect;
                                }
                            } else {
                                int id10 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.D.getId();
                                if (numI != null && numI.intValue() == id10) {
                                    cn.soulapp.cpnt_voiceparty.soulhouse.eventgame.g gVar = (cn.soulapp.cpnt_voiceparty.soulhouse.eventgame.g) SoulHouseExtensionKt.f0(blockContainer, SliceManager.INSTANCE.o());
                                    if (gVar != null) {
                                        cn.soulapp.cpnt_voiceparty.soulhouse.eventgame.g.F(gVar, null, 1, null);
                                        ChangeQuickRedirect changeQuickRedirect7 = kotlin.w.changeQuickRedirect;
                                    }
                                } else {
                                    int id11 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.E.getId();
                                    if (numI != null && numI.intValue() == id11) {
                                        blockContainer.w(BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM.ordinal(), Boolean.FALSE);
                                        VideoLiveSlice videoLiveSlice = (VideoLiveSlice) SoulHouseExtensionKt.f0(blockContainer, SliceManager.INSTANCE.T());
                                        if (videoLiveSlice != null) {
                                            VideoLiveSlice.t0(videoLiveSlice, null, 1, null);
                                            ChangeQuickRedirect changeQuickRedirect8 = kotlin.w.changeQuickRedirect;
                                        }
                                    } else {
                                        int id12 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.F.getId();
                                        if (numI != null && numI.intValue() == id12) {
                                            blockContainer.w(BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM.ordinal(), Boolean.FALSE);
                                            y40.h hVar2 = (y40.h) SoulHouseExtensionKt.f0(blockContainer, SliceManager.INSTANCE.G());
                                            if (hVar2 != null) {
                                                y40.h.d0(hVar2, null, 1, null);
                                                ChangeQuickRedirect changeQuickRedirect9 = kotlin.w.changeQuickRedirect;
                                            }
                                        } else {
                                            int id13 = hVar.getId();
                                            if (numI != null && numI.intValue() == id13) {
                                                z11 = true;
                                            } else {
                                                int id14 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154986k.getId();
                                                if (numI != null && numI.intValue() == id14) {
                                                    z11 = true;
                                                } else {
                                                    z11 = false;
                                                }
                                            }
                                            if (z11) {
                                                GameAssistant gameAssistant = (GameAssistant) AssistantManager.f144995a.b(GameAssistant.class);
                                                if (gameAssistant != null) {
                                                    GameAssistant.openRoomGameMode$default(gameAssistant, SoulHouseExtensionKt.j0(blockContainer.getDataBus()), SoulHouseExtensionKt.N(blockContainer), true, null, 8, null);
                                                    ChangeQuickRedirect changeQuickRedirect10 = kotlin.w.changeQuickRedirect;
                                                }
                                            } else {
                                                int id15 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f155001z.getId();
                                                if (numI != null && numI.intValue() == id15) {
                                                    AiPodCastSlice aiPodCastSlice = (AiPodCastSlice) SoulHouseExtensionKt.f0(blockContainer, SliceManager.INSTANCE.b());
                                                    if (aiPodCastSlice != null) {
                                                        aiPodCastSlice.M();
                                                        ChangeQuickRedirect changeQuickRedirect11 = kotlin.w.changeQuickRedirect;
                                                    }
                                                } else {
                                                    int id16 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154988m.getId();
                                                    if (numI != null && numI.intValue() == id16) {
                                                        SliceManager.Companion companion = SliceManager.INSTANCE;
                                                        cn.soulapp.cpnt_voiceparty.soulhouse.pvp.e0 e0Var = (cn.soulapp.cpnt_voiceparty.soulhouse.pvp.e0) SoulHouseExtensionKt.f0(blockContainer, companion.F());
                                                        PvpInfo pvpInfo = e0Var != null ? e0Var.getPvpInfo() : null;
                                                        if (pvpInfo != null) {
                                                            blockContainer.w(BlockMessage.PVP_REFRESH.ordinal(), pvpInfo);
                                                        } else {
                                                            cn.soulapp.cpnt_voiceparty.soulhouse.pvp.e0 e0Var2 = (cn.soulapp.cpnt_voiceparty.soulhouse.pvp.e0) SoulHouseExtensionKt.f0(blockContainer, companion.F());
                                                            if (e0Var2 != null) {
                                                                e0Var2.H();
                                                                ChangeQuickRedirect changeQuickRedirect12 = kotlin.w.changeQuickRedirect;
                                                            }
                                                        }
                                                    } else {
                                                        int id17 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154987l.getId();
                                                        if (numI != null && numI.intValue() == id17) {
                                                            GameAssistant gameAssistant2 = (GameAssistant) AssistantManager.f144995a.b(GameAssistant.class);
                                                            if (gameAssistant2 != null) {
                                                                GameAssistant.queryRoundDataPacket$default(gameAssistant2, SoulHouseExtensionKt.j0(blockContainer.getDataBus()), "chat_live", SoulHouseExtensionKt.N(blockContainer), false, 8, null);
                                                                ChangeQuickRedirect changeQuickRedirect13 = kotlin.w.changeQuickRedirect;
                                                            }
                                                        } else {
                                                            int id18 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154991p.getId();
                                                            if (numI != null && numI.intValue() == id18) {
                                                                SliceManager.Companion companion2 = SliceManager.INSTANCE;
                                                                GuineaPigGameSlice guineaPigGameSlice = (GuineaPigGameSlice) SoulHouseExtensionKt.f0(blockContainer, companion2.s());
                                                                GuineaPigInfo guineaPigInfo = guineaPigGameSlice != null ? guineaPigGameSlice.getGuineaPigInfo() : null;
                                                                if (guineaPigInfo != null) {
                                                                    blockContainer.w(BlockMessage.MSG_GAME_GUINEA_PIG_REFRESH.ordinal(), guineaPigInfo);
                                                                } else {
                                                                    GuineaPigGameSlice guineaPigGameSlice2 = (GuineaPigGameSlice) SoulHouseExtensionKt.f0(blockContainer, companion2.s());
                                                                    if (guineaPigGameSlice2 != null) {
                                                                        guineaPigGameSlice2.J();
                                                                        ChangeQuickRedirect changeQuickRedirect14 = kotlin.w.changeQuickRedirect;
                                                                    }
                                                                }
                                                            } else {
                                                                int id19 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154989n.getId();
                                                                if (numI != null && numI.intValue() == id19) {
                                                                    SliceManager.Companion companion3 = SliceManager.INSTANCE;
                                                                    cn.soulapp.cpnt_voiceparty.soulhouse.auctionpk.h0 h0Var = (cn.soulapp.cpnt_voiceparty.soulhouse.auctionpk.h0) SoulHouseExtensionKt.f0(blockContainer, companion3.c());
                                                                    AuctionPkInfo auctionPkInfo = h0Var != null ? h0Var.getAuctionPkInfo() : null;
                                                                    if (auctionPkInfo != null) {
                                                                        blockContainer.w(BlockMessage.AUCTION_PK_REFRESH.ordinal(), auctionPkInfo);
                                                                    } else {
                                                                        cn.soulapp.cpnt_voiceparty.soulhouse.auctionpk.h0 h0Var2 = (cn.soulapp.cpnt_voiceparty.soulhouse.auctionpk.h0) SoulHouseExtensionKt.f0(blockContainer, companion3.c());
                                                                        if (h0Var2 != null) {
                                                                            h0Var2.C();
                                                                            ChangeQuickRedirect changeQuickRedirect15 = kotlin.w.changeQuickRedirect;
                                                                        }
                                                                    }
                                                                } else {
                                                                    int id20 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154992q.getId();
                                                                    if (numI == null || numI.intValue() != id20) {
                                                                        int id21 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154997v.getId();
                                                                        if (numI != null && numI.intValue() == id21) {
                                                                            blockContainer.v(BlockMessage.MSG_FRIENDS_CABIN_OPEN.ordinal());
                                                                            FriendsCabinSlice friendsCabinSlice = (FriendsCabinSlice) SoulHouseExtensionKt.f0(blockContainer, SliceManager.INSTANCE.r());
                                                                            if (friendsCabinSlice != null) {
                                                                                friendsCabinSlice.D();
                                                                                ChangeQuickRedirect changeQuickRedirect16 = kotlin.w.changeQuickRedirect;
                                                                            }
                                                                        } else {
                                                                            cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar3 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154990o;
                                                                            int id22 = hVar3.getId();
                                                                            if (numI != null && numI.intValue() == id22) {
                                                                                SliceManager.Companion companion4 = SliceManager.INSTANCE;
                                                                                VirtualLiveSlice virtualLiveSlice = (VirtualLiveSlice) SoulHouseExtensionKt.f0(blockContainer, companion4.U());
                                                                                VirtualLivePanelModel virtualLiveModel = virtualLiveSlice != null ? virtualLiveSlice.getVirtualLiveModel() : null;
                                                                                if (virtualLiveModel != null) {
                                                                                    Integer listDirection = virtualLiveModel.getListDirection();
                                                                                    if (kotlin.jvm.internal.v.e(listDirection != null ? listDirection.toString() : null, "1")) {
                                                                                        int iOrdinal = BlockMessage.MSG_ORIENTATION_CHANGE.ordinal();
                                                                                        RoomModeInfo roomModeInfo = new RoomModeInfo();
                                                                                        roomModeInfo.setPlayType(Integer.valueOf(hVar3.getId()));
                                                                                        roomModeInfo.setGroupType(hVar3.getGroupType());
                                                                                        ChangeQuickRedirect changeQuickRedirect17 = kotlin.w.changeQuickRedirect;
                                                                                        blockContainer.w(iOrdinal, roomModeInfo);
                                                                                    } else {
                                                                                        int iOrdinal2 = BlockMessage.MSG_ORIENTATION_RECOVER.ordinal();
                                                                                        RoomModeInfo roomModeInfo2 = new RoomModeInfo();
                                                                                        roomModeInfo2.setPlayType(Integer.valueOf(hVar3.getId()));
                                                                                        roomModeInfo2.setGroupType(hVar3.getGroupType());
                                                                                        ChangeQuickRedirect changeQuickRedirect18 = kotlin.w.changeQuickRedirect;
                                                                                        blockContainer.w(iOrdinal2, roomModeInfo2);
                                                                                    }
                                                                                    blockContainer.w(BlockMessage.VIRTUAL_REFRESH.ordinal(), virtualLiveModel);
                                                                                } else {
                                                                                    VirtualLiveSlice virtualLiveSlice2 = (VirtualLiveSlice) SoulHouseExtensionKt.f0(blockContainer, companion4.U());
                                                                                    if (virtualLiveSlice2 != null) {
                                                                                        virtualLiveSlice2.D(new Function2<Boolean, VirtualLivePanelModel, kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.RoomFunctionSwitchManager$getRoomMode$3
                                                                                            public static ChangeQuickRedirect changeQuickRedirect;

                                                                                            {
                                                                                                super(2);
                                                                                            }

                                                                                            @Override // kotlin.jvm.functions.Function2
                                                                                            /* JADX INFO: renamed from: invoke */
                                                                                            public /* bridge */ /* synthetic */ kotlin.w mo3invoke(Boolean bool, VirtualLivePanelModel virtualLivePanelModel) {
                                                                                                invoke(bool.booleanValue(), virtualLivePanelModel);
                                                                                                return kotlin.w.f231958a;
                                                                                            }

                                                                                            /* JADX WARN: Type inference fix 'apply assigned field type' failed
                                                                                            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
                                                                                            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                                                                                            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                                                                                            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                                                                                            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                                                                                            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                                                                                            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                                                                                            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                                                                                             */
                                                                                            public final void invoke(boolean z12, @Nullable VirtualLivePanelModel virtualLivePanelModel) {
                                                                                                Integer listDirection2;
                                                                                                if (PatchProxy.proxy(new Object[]{new Byte(z12 ? (byte) 1 : (byte) 0), virtualLivePanelModel}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE, VirtualLivePanelModel.class}, Void.TYPE).isSupported) {
                                                                                                    return;
                                                                                                }
                                                                                                if (!z12) {
                                                                                                    SoulHouseExtensionKt.u0(RoomFunctionSwitchManager.f142544a, "VirtualLive", "面板数据接口请求失败");
                                                                                                    return;
                                                                                                }
                                                                                                if (kotlin.jvm.internal.v.e((virtualLivePanelModel == null || (listDirection2 = virtualLivePanelModel.getListDirection()) == null) ? null : listDirection2.toString(), "1")) {
                                                                                                    Container container = blockContainer;
                                                                                                    int iOrdinal3 = BlockMessage.MSG_ORIENTATION_CHANGE.ordinal();
                                                                                                    RoomModeInfo roomModeInfo3 = new RoomModeInfo();
                                                                                                    cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar4 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154990o;
                                                                                                    roomModeInfo3.setPlayType(Integer.valueOf(hVar4.getId()));
                                                                                                    roomModeInfo3.setGroupType(hVar4.getGroupType());
                                                                                                    ChangeQuickRedirect changeQuickRedirect19 = kotlin.w.changeQuickRedirect;
                                                                                                    container.w(iOrdinal3, roomModeInfo3);
                                                                                                } else {
                                                                                                    Container container2 = blockContainer;
                                                                                                    int iOrdinal4 = BlockMessage.MSG_ORIENTATION_RECOVER.ordinal();
                                                                                                    RoomModeInfo roomModeInfo4 = new RoomModeInfo();
                                                                                                    cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar5 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154990o;
                                                                                                    roomModeInfo4.setPlayType(Integer.valueOf(hVar5.getId()));
                                                                                                    roomModeInfo4.setGroupType(hVar5.getGroupType());
                                                                                                    ChangeQuickRedirect changeQuickRedirect20 = kotlin.w.changeQuickRedirect;
                                                                                                    container2.w(iOrdinal4, roomModeInfo4);
                                                                                                }
                                                                                                blockContainer.w(BlockMessage.VIRTUAL_REFRESH.ordinal(), virtualLivePanelModel);
                                                                                            }
                                                                                        });
                                                                                        ChangeQuickRedirect changeQuickRedirect19 = kotlin.w.changeQuickRedirect;
                                                                                    }
                                                                                }
                                                                                SoulHouseExtensionKt.w0(this, "VirtualLive", " EnterReadyWorkBlock 打开推流码率质量回调");
                                                                                RoomChatEngineManager.getInstance().enableUserLiveQualityUpdate(true);
                                                                            } else {
                                                                                int id23 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f155000y.getId();
                                                                                if (numI != null && numI.intValue() == id23) {
                                                                                    SingingRoomSlice singingRoomSlice = (SingingRoomSlice) SoulHouseExtensionKt.f0(blockContainer, SliceManager.INSTANCE.I());
                                                                                    if (singingRoomSlice != null) {
                                                                                        singingRoomSlice.C();
                                                                                        ChangeQuickRedirect changeQuickRedirect20 = kotlin.w.changeQuickRedirect;
                                                                                    }
                                                                                } else {
                                                                                    int id24 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.O.getId();
                                                                                    if (numI != null && numI.intValue() == id24) {
                                                                                        WerewolfSlice werewolfSlice = (WerewolfSlice) SoulHouseExtensionKt.f0(blockContainer, SliceManager.INSTANCE.V());
                                                                                        if (werewolfSlice != null) {
                                                                                            WerewolfSlice.S(werewolfSlice, null, 1, null);
                                                                                            ChangeQuickRedirect changeQuickRedirect21 = kotlin.w.changeQuickRedirect;
                                                                                        }
                                                                                    } else {
                                                                                        int id25 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154998w.getId();
                                                                                        if (numI != null && numI.intValue() == id25) {
                                                                                            BarrageGameSlice barrageGameSlice = (BarrageGameSlice) SoulHouseExtensionKt.f0(blockContainer, SliceManager.INSTANCE.d());
                                                                                            if (barrageGameSlice != null) {
                                                                                                barrageGameSlice.I();
                                                                                                ChangeQuickRedirect changeQuickRedirect22 = kotlin.w.changeQuickRedirect;
                                                                                            }
                                                                                        } else if (b0.f142548a.p(numI)) {
                                                                                            GameAssistant gameAssistant3 = (GameAssistant) AssistantManager.f144995a.b(GameAssistant.class);
                                                                                            if (gameAssistant3 != null) {
                                                                                                GameAssistant.openRoomGameMode$default(gameAssistant3, SoulHouseExtensionKt.j0(blockContainer.getDataBus()), SoulHouseExtensionKt.N(blockContainer), false, null, 12, null);
                                                                                                ChangeQuickRedirect changeQuickRedirect23 = kotlin.w.changeQuickRedirect;
                                                                                            }
                                                                                        } else {
                                                                                            SoulHouseDriver soulHouseDriverJ3 = SoulHouseExtensionKt.j0(blockContainer.getDataBus());
                                                                                            if (soulHouseDriverJ3 != null && (bulletGameSlice = (BulletGameSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ3, SliceManager.INSTANCE.i())) != null) {
                                                                                                zO = bulletGameSlice.O();
                                                                                            }
                                                                                            if (zO) {
                                                                                                return;
                                                                                            } else {
                                                                                                b(blockContainer);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                        Api api = cn.soul.insight.log.core.a.f15353b;
                                                                        StringBuilder sb2 = new StringBuilder();
                                                                        sb2.append("type=");
                                                                        sb2.append(numI);
                                                                        sb2.append(",functionBean?.bizType=");
                                                                        if (functionBean != null) {
                                                                            bizType = functionBean.getBizType();
                                                                        } else {
                                                                            bizType = null;
                                                                        }
                                                                        sb2.append(bizType);
                                                                        sb2.append(",techType=");
                                                                        if (functionBean != null) {
                                                                            techType = functionBean.getTechType();
                                                                        } else {
                                                                            techType = null;
                                                                        }
                                                                        sb2.append(techType);
                                                                        sb2.append(",blockContainer=");
                                                                        sb2.append(blockContainer);
                                                                        api.dOnlyPrint("Atmosphere", sb2.toString());
                                                                        modeConflictConfiguration = ModeConflictConfiguration.f154904a;
                                                                        if (functionBean != null && (bizType2 = functionBean.getBizType()) != null) {
                                                                            numI = bizType2;
                                                                        }
                                                                        if (modeConflictConfiguration.a(numI, functionBean != null ? functionBean.getTechType() : null)) {
                                                                            cn.soul.insight.log.core.a.f15353b.dOnlyPrint("Atmosphere", "当前玩法跟氛围有冲突，需要关闭入口1");
                                                                            blockContainer.v(BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM.ordinal());
                                                                        }
                                                                    }
                                                                    SliceManager.Companion companion5 = SliceManager.INSTANCE;
                                                                    ThrowingThunderSlice throwingThunderSlice = (ThrowingThunderSlice) SoulHouseExtensionKt.f0(blockContainer, companion5.P());
                                                                    ThrowingThunderInfo throwingThunderInfo = throwingThunderSlice != null ? throwingThunderSlice.getThrowingThunderInfo() : null;
                                                                    if (throwingThunderInfo != null) {
                                                                        blockContainer.w(BlockMessage.MSG_THROWING_THUNDER_REFRESH.ordinal(), throwingThunderInfo);
                                                                    } else {
                                                                        ThrowingThunderSlice throwingThunderSlice2 = (ThrowingThunderSlice) SoulHouseExtensionKt.f0(blockContainer, companion5.P());
                                                                        if (throwingThunderSlice2 != null) {
                                                                            throwingThunderSlice2.G();
                                                                            ChangeQuickRedirect changeQuickRedirect24 = kotlin.w.changeQuickRedirect;
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
        Api api2 = cn.soul.insight.log.core.a.f15353b;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("type=");
        sb3.append(numI);
        sb3.append(",functionBean?.bizType=");
        if (functionBean != null) {
            bizType = functionBean.getBizType();
        } else {
            bizType = null;
        }
        sb3.append(bizType);
        sb3.append(",techType=");
        if (functionBean != null) {
            techType = functionBean.getTechType();
        } else {
            techType = null;
        }
        sb3.append(techType);
        sb3.append(",blockContainer=");
        sb3.append(blockContainer);
        api2.dOnlyPrint("Atmosphere", sb3.toString());
        modeConflictConfiguration = ModeConflictConfiguration.f154904a;
        if (functionBean != null) {
            numI = bizType2;
        }
        if (modeConflictConfiguration.a(numI, functionBean != null ? functionBean.getTechType() : null)) {
            cn.soul.insight.log.core.a.f15353b.dOnlyPrint("Atmosphere", "当前玩法跟氛围有冲突，需要关闭入口1");
            blockContainer.v(BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM.ordinal());
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00ca  */
    /* JADX WARN: Instruction removed from duplicated block: B:34:0x00ca, please report this as an issue */
    public final void d(@Nullable SoulHouseDriver soulHouseDriver, @Nullable RoomModeInfo roomModeInfo, boolean z11, @Nullable Map<String, String> map, @Nullable mn0.c cVar) {
        String str;
        BulletGameSlice bulletGameSlice;
        BulletGameSlice bulletGameSlice2;
        SoulHouseContainer soulHouseContainerP0;
        H5PlaySlice h5PlaySlice;
        H5PlaySlice h5PlaySlice2;
        OtherH5GameSlice otherH5GameSlice;
        OtherH5GameSlice otherH5GameSlice2;
        MysterySlice mysterySlice;
        MysterySlice mysterySlice2;
        SooFunGameSlice sooFunGameSlice;
        SooFunGameSlice sooFunGameSlice2;
        SongRequestSlice songRequestSlice;
        SongRequestSlice songRequestSlice2;
        y40.h hVar;
        y40.h hVar2;
        SoulHouseContainer soulHouseContainerP1;
        VideoLiveSlice videoLiveSlice;
        VideoLiveSlice videoLiveSlice2;
        SoulHouseContainer soulHouseContainerP2;
        cn.soulapp.cpnt_voiceparty.soulhouse.eventgame.g gVar;
        cn.soulapp.cpnt_voiceparty.soulhouse.eventgame.g gVar2;
        AiPlaygroundSlice aiPlaygroundSlice;
        AiPlaygroundSlice aiPlaygroundSlice2;
        BarrageGameSlice barrageGameSlice;
        BarrageGameSlice barrageGameSlice2;
        SoulHouseContainer soulHouseContainerP3;
        WerewolfSlice werewolfSlice;
        WerewolfSlice werewolfSlice2;
        SoulHouseContainer soulHouseContainerP4;
        FriendsCabinSlice friendsCabinSlice;
        FriendsCabinSlice friendsCabinSlice2;
        FriendsCabinSlice friendsCabinSlice3;
        StudyRoomSlice studyRoomSlice;
        StudyRoomSlice studyRoomSlice2;
        SoulHouseContainer soulHouseContainerP5;
        BigVipSlice bigVipSlice;
        BigVipSlice bigVipSlice2;
        cn.soulapp.cpnt_voiceparty.soulhouse.ceremony.v vVar;
        SoulHouseContainer soulHouseContainerP6;
        cn.soulapp.cpnt_voiceparty.soulhouse.ceremony.v vVar2;
        ChatRoomModel chatRoomModelF;
        MusicMarketInfo musicMarketInfo;
        SoulHouseContainer soulHouseContainerP7;
        SingingRoomSlice singingRoomSlice;
        SingingRoomSlice singingRoomSlice2;
        VirtualLiveSlice virtualLiveSlice;
        VirtualLiveSlice virtualLiveSlice2;
        SoulHouseContainer soulHouseContainerP8;
        ThrowingThunderSlice throwingThunderSlice;
        ThrowingThunderSlice throwingThunderSlice2;
        cn.soulapp.cpnt_voiceparty.soulhouse.pvp.e0 e0Var;
        cn.soulapp.cpnt_voiceparty.soulhouse.pvp.e0 e0Var2;
        cn.soulapp.cpnt_voiceparty.soulhouse.auctionpk.h0 h0Var;
        cn.soulapp.cpnt_voiceparty.soulhouse.auctionpk.h0 h0Var2;
        SoulHouseContainer soulHouseContainerP9;
        SoulHouseContainer soulHouseContainerP10;
        cn.soulapp.cpnt_voiceparty.soulhouse.musictavern.e eVar;
        cn.soulapp.cpnt_voiceparty.soulhouse.musictavern.e eVar2;
        cn.soulapp.cpnt_voiceparty.soulhouse.bistro.n0 n0Var;
        cn.soulapp.cpnt_voiceparty.soulhouse.bistro.n0 n0Var2;
        GuineaPigGameSlice guineaPigGameSlice;
        GuineaPigGameSlice guineaPigGameSlice2;
        SoulHouseContainer soulHouseContainerP11;
        SoulHouseContainer soulHouseContainerP12;
        SoulHouseContainer soulHouseContainerP13;
        SoulHouseContainer soulHouseContainerP14;
        RoomInfo roomInfo;
        SoulHouseContainer soulHouseContainerP15;
        SoulHouseContainer soulHouseContainerP16;
        SoulHouseContainer soulHouseContainerP17;
        AiPodCastSlice aiPodCastSlice;
        AiPodCastSlice aiPodCastSlice2;
        SoulHouseContainer soulHouseContainerP18;
        KtvModelSlice ktvModelSlice;
        SoulHouseContainer soulHouseContainerP19;
        SoulHouseContainer soulHouseContainerP20;
        SoulHouseContainer soulHouseContainerP21;
        SoulHouseContainer soulHouseContainerP22;
        SoulHouseContainer soulHouseContainerP23;
        SoulHouseContainer soulHouseContainerP24;
        SoulHouseContainer soulHouseContainerP25;
        if (PatchProxy.proxy(new Object[]{soulHouseDriver, roomModeInfo, new Byte(z11 ? (byte) 1 : (byte) 0), map, cVar}, this, changeQuickRedirect, false, 2, new Class[]{SoulHouseDriver.class, RoomModeInfo.class, Boolean.TYPE, Map.class, mn0.c.class}, Void.TYPE).isSupported) {
            return;
        }
        Integer playType = roomModeInfo != null ? roomModeInfo.getPlayType() : null;
        Integer numValueOf = roomModeInfo != null ? Integer.valueOf(roomModeInfo.getGroupType()) : null;
        b0 b0Var = b0.f142548a;
        Integer num = numValueOf;
        Integer num2 = playType;
        b0Var.G(soulHouseDriver, playType, numValueOf, z11, roomModeInfo);
        cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar3 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.R;
        int id2 = hVar3.getId();
        if (num2 != null && num2.intValue() == id2) {
            SoulHouseExtensionKt.w0(this, "RoomFunctionTag", b0Var.g(num2) + "，不需要修改房间的玩法");
        } else {
            int id3 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.P.getId();
            if (num2 != null && num2.intValue() == id3) {
                SoulHouseExtensionKt.w0(this, "RoomFunctionTag", b0Var.g(num2) + "，不需要修改房间的玩法");
            } else {
                int id4 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.Q.getId();
                if (num2 != null && num2.intValue() == id4) {
                    SoulHouseExtensionKt.w0(this, "RoomFunctionTag", b0Var.g(num2) + "，不需要修改房间的玩法");
                } else {
                    f(soulHouseDriver, z11 ? num2 : Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154982g.getId()), z11 ? num : 1);
                }
            }
        }
        String strC = b0Var.c(soulHouseDriver);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("收到IM将要");
        sb2.append(z11 ? "开启" : "关闭");
        sb2.append((char) 65306);
        sb2.append(b0Var.g(num2));
        sb2.append((char) 65292);
        if (strC.length() == 0) {
            str = "现在房间没有开启的功能";
        } else {
            str = "现在房间开启的功能有: " + strC + "，是否是小球状态：" + ZoomOutManager.f144296a.o();
        }
        sb2.append(str);
        SoulHouseExtensionKt.w0(this, "RoomFunctionTag", sb2.toString());
        if (ZoomOutManager.f144296a.o() && !z11) {
            g(this, soulHouseDriver, Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154982g.getId()), null, 4, null);
        }
        cn.soul.insight.log.core.a.f15353b.i("LUK", "RoomFunctionSwitchManager updateFunctionState isOpen=" + z11 + ",playType=" + num2 + ",groupType=" + num);
        if (b0Var.s(num2, num)) {
            RoomModeInfo roomModeInfoI = DataConvertUtil.f161894a.i(map);
            if (z11) {
                if (soulHouseDriver != null && (soulHouseContainerP25 = soulHouseDriver.p0()) != null) {
                    soulHouseContainerP25.D(BlockMessage.MSG_ORIENTATION_CHANGE, roomModeInfoI);
                    ChangeQuickRedirect changeQuickRedirect2 = kotlin.w.changeQuickRedirect;
                }
                int id5 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.C.getId();
                if (num2 == null || num2.intValue() != id5) {
                    int id6 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.D.getId();
                    if (num2 == null || num2.intValue() != id6) {
                        cn.soul.insight.log.core.a.f15353b.dOnlyPrint("Atmosphere", "当前玩法跟氛围有冲突，需要关闭入口5");
                        if (soulHouseDriver != null && (soulHouseContainerP24 = soulHouseDriver.p0()) != null) {
                            soulHouseContainerP24.C(BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM);
                            ChangeQuickRedirect changeQuickRedirect3 = kotlin.w.changeQuickRedirect;
                        }
                    }
                }
            } else {
                h(soulHouseDriver, cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154982g.getId());
                if (soulHouseDriver != null && (soulHouseContainerP23 = soulHouseDriver.p0()) != null) {
                    soulHouseContainerP23.D(BlockMessage.MSG_ORIENTATION_RECOVER, roomModeInfoI);
                    ChangeQuickRedirect changeQuickRedirect4 = kotlin.w.changeQuickRedirect;
                }
                if (soulHouseDriver != null && (soulHouseContainerP22 = soulHouseDriver.p0()) != null) {
                    soulHouseContainerP22.D(BlockMessage.MSG_UPDATE_USER_LIST, cVar);
                    ChangeQuickRedirect changeQuickRedirect5 = kotlin.w.changeQuickRedirect;
                }
            }
        }
        int id7 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154984i.getId();
        if (num2 == null || num2.intValue() != id7) {
            int id8 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154983h.getId();
            if (num2 != null && num2.intValue() == id8) {
                if (!z11 && (ktvModelSlice = (KtvModelSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.y())) != null) {
                    ktvModelSlice.a0();
                    ChangeQuickRedirect changeQuickRedirect6 = kotlin.w.changeQuickRedirect;
                }
                if (soulHouseDriver != null && (soulHouseContainerP18 = soulHouseDriver.p0()) != null) {
                    soulHouseContainerP18.C(BlockMessage.MSG_WONDERFUL_STORE_UPDATE_OWNER_IDENTITY);
                    ChangeQuickRedirect changeQuickRedirect7 = kotlin.w.changeQuickRedirect;
                }
            } else {
                int id9 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f155001z.getId();
                if (num2 == null || num2.intValue() != id9) {
                    int id10 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.K.getId();
                    if (num2 == null || num2.intValue() != id10) {
                        int id11 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154987l.getId();
                        if (num2 == null || num2.intValue() != id11) {
                            int id12 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154991p.getId();
                            if (num2 == null || num2.intValue() != id12) {
                                int id13 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154993r.getId();
                                if (num2 == null || num2.intValue() != id13) {
                                    int id14 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.T.getId();
                                    if (num2 == null || num2.intValue() != id14) {
                                        int id15 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154985j.getId();
                                        if (num2 == null || num2.intValue() != id15) {
                                            int id16 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154999x.getId();
                                            if (num2 == null || num2.intValue() != id16) {
                                                int id17 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154989n.getId();
                                                if (num2 == null || num2.intValue() != id17) {
                                                    int id18 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154988m.getId();
                                                    if (num2 == null || num2.intValue() != id18) {
                                                        int id19 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154992q.getId();
                                                        if (num2 == null || num2.intValue() != id19) {
                                                            int id20 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154990o.getId();
                                                            if (num2 == null || num2.intValue() != id20) {
                                                                int id21 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f155000y.getId();
                                                                if (num2 == null || num2.intValue() != id21) {
                                                                    int id22 = hVar3.getId();
                                                                    if (num2 != null && num2.intValue() == id22) {
                                                                        if (soulHouseDriver == null || (musicMarketInfo = (MusicMarketInfo) soulHouseDriver.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.Q())) == null) {
                                                                            musicMarketInfo = new MusicMarketInfo(null, null, null, null, null, null, 63, null);
                                                                        }
                                                                        musicMarketInfo.setSongName(map != null ? map.get("songName") : null);
                                                                        musicMarketInfo.setAvatarColor(map != null ? map.get("avatarColor") : null);
                                                                        musicMarketInfo.setAvatarName(map != null ? map.get(RequestKey.KEY_USER_AVATAR_NAME) : null);
                                                                        musicMarketInfo.setSignature(map != null ? map.get("signature") : null);
                                                                        musicMarketInfo.setState(map != null ? map.get("state") : null);
                                                                        ChangeQuickRedirect changeQuickRedirect8 = kotlin.w.changeQuickRedirect;
                                                                        if (soulHouseDriver != null) {
                                                                            soulHouseDriver.provideX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.Q(), musicMarketInfo);
                                                                        }
                                                                        if (soulHouseDriver != null && (soulHouseContainerP7 = soulHouseDriver.p0()) != null) {
                                                                            soulHouseContainerP7.D(BlockMessage.MUSIC_MARKET_UPDATE_SONG_MSG, musicMarketInfo);
                                                                        }
                                                                    } else {
                                                                        int id23 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.Q.getId();
                                                                        if (num2 == null || num2.intValue() != id23) {
                                                                            int id24 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154994s.getId();
                                                                            if (num2 != null && num2.intValue() == id24) {
                                                                                if (z11) {
                                                                                    if (soulHouseDriver != null && (vVar2 = (cn.soulapp.cpnt_voiceparty.soulhouse.ceremony.v) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.k())) != null) {
                                                                                        vVar2.F();
                                                                                        ChangeQuickRedirect changeQuickRedirect9 = kotlin.w.changeQuickRedirect;
                                                                                    }
                                                                                } else if (soulHouseDriver != null && (vVar = (cn.soulapp.cpnt_voiceparty.soulhouse.ceremony.v) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.k())) != null) {
                                                                                    vVar.z();
                                                                                    ChangeQuickRedirect changeQuickRedirect10 = kotlin.w.changeQuickRedirect;
                                                                                }
                                                                                if (soulHouseDriver != null && (soulHouseContainerP6 = soulHouseDriver.p0()) != null) {
                                                                                    soulHouseContainerP6.C(BlockMessage.MSG_WONDERFUL_STORE_UPDATE_OWNER_IDENTITY);
                                                                                    ChangeQuickRedirect changeQuickRedirect11 = kotlin.w.changeQuickRedirect;
                                                                                }
                                                                            } else {
                                                                                int id25 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154995t.getId();
                                                                                if (num2 == null || num2.intValue() != id25) {
                                                                                    int id26 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154996u.getId();
                                                                                    if (num2 == null || num2.intValue() != id26) {
                                                                                        int id27 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154997v.getId();
                                                                                        if (num2 == null || num2.intValue() != id27) {
                                                                                            int id28 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.O.getId();
                                                                                            if (num2 == null || num2.intValue() != id28) {
                                                                                                int id29 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154998w.getId();
                                                                                                if (num2 == null || num2.intValue() != id29) {
                                                                                                    int id30 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.C.getId();
                                                                                                    if (num2 == null || num2.intValue() != id30) {
                                                                                                        int id31 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.D.getId();
                                                                                                        if (num2 == null || num2.intValue() != id31) {
                                                                                                            int id32 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.E.getId();
                                                                                                            if (num2 == null || num2.intValue() != id32) {
                                                                                                                int id33 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.F.getId();
                                                                                                                if (num2 == null || num2.intValue() != id33) {
                                                                                                                    int id34 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.B.getId();
                                                                                                                    if (num2 == null || num2.intValue() != id34) {
                                                                                                                        int iD = cn.soulapp.lib.utils.ext.n.d(map != null ? map.get("groupType") : null);
                                                                                                                        if (iD != 3) {
                                                                                                                            if (iD != 4) {
                                                                                                                                if (iD != 5) {
                                                                                                                                    if (iD != 6) {
                                                                                                                                        if (iD == 7) {
                                                                                                                                            if (z11) {
                                                                                                                                                if (soulHouseDriver != null && (sooFunGameSlice2 = (SooFunGameSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.L())) != null) {
                                                                                                                                                    sooFunGameSlice2.Z(roomModeInfo);
                                                                                                                                                    ChangeQuickRedirect changeQuickRedirect12 = kotlin.w.changeQuickRedirect;
                                                                                                                                                }
                                                                                                                                            } else if (soulHouseDriver != null && (sooFunGameSlice = (SooFunGameSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.L())) != null) {
                                                                                                                                                sooFunGameSlice.F();
                                                                                                                                                ChangeQuickRedirect changeQuickRedirect13 = kotlin.w.changeQuickRedirect;
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    } else if (z11) {
                                                                                                                                        if (soulHouseDriver != null && (mysterySlice2 = (MysterySlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.B())) != null) {
                                                                                                                                            mysterySlice2.R(roomModeInfo);
                                                                                                                                            ChangeQuickRedirect changeQuickRedirect14 = kotlin.w.changeQuickRedirect;
                                                                                                                                        }
                                                                                                                                    } else if (soulHouseDriver != null && (mysterySlice = (MysterySlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.B())) != null) {
                                                                                                                                        mysterySlice.C();
                                                                                                                                        ChangeQuickRedirect changeQuickRedirect15 = kotlin.w.changeQuickRedirect;
                                                                                                                                    }
                                                                                                                                } else if (z11) {
                                                                                                                                    if (soulHouseDriver != null && (otherH5GameSlice2 = (OtherH5GameSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.C())) != null) {
                                                                                                                                        OtherH5GameSlice.X(otherH5GameSlice2, null, 1, null);
                                                                                                                                        ChangeQuickRedirect changeQuickRedirect16 = kotlin.w.changeQuickRedirect;
                                                                                                                                    }
                                                                                                                                } else if (soulHouseDriver != null && (otherH5GameSlice = (OtherH5GameSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.C())) != null) {
                                                                                                                                    otherH5GameSlice.F();
                                                                                                                                    ChangeQuickRedirect changeQuickRedirect17 = kotlin.w.changeQuickRedirect;
                                                                                                                                }
                                                                                                                            } else if (z11) {
                                                                                                                                if (soulHouseDriver != null && (h5PlaySlice2 = (H5PlaySlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.t())) != null) {
                                                                                                                                    H5PlaySlice.Y(h5PlaySlice2, null, 1, null);
                                                                                                                                    ChangeQuickRedirect changeQuickRedirect18 = kotlin.w.changeQuickRedirect;
                                                                                                                                }
                                                                                                                            } else if (soulHouseDriver != null && (h5PlaySlice = (H5PlaySlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.t())) != null) {
                                                                                                                                h5PlaySlice.C();
                                                                                                                                ChangeQuickRedirect changeQuickRedirect19 = kotlin.w.changeQuickRedirect;
                                                                                                                            }
                                                                                                                        } else if (z11) {
                                                                                                                            cn.soul.insight.log.core.a.f15353b.dOnlyPrint("Atmosphere", "当前玩法跟氛围有冲突，需要关闭入口6");
                                                                                                                            if (soulHouseDriver != null && (soulHouseContainerP0 = soulHouseDriver.p0()) != null) {
                                                                                                                                soulHouseContainerP0.C(BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM);
                                                                                                                                ChangeQuickRedirect changeQuickRedirect20 = kotlin.w.changeQuickRedirect;
                                                                                                                            }
                                                                                                                            if (soulHouseDriver != null && (bulletGameSlice2 = (BulletGameSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.i())) != null) {
                                                                                                                                bulletGameSlice2.P(map != null ? map.get("soulGameId") : null);
                                                                                                                                ChangeQuickRedirect changeQuickRedirect21 = kotlin.w.changeQuickRedirect;
                                                                                                                            }
                                                                                                                        } else if (soulHouseDriver != null && (bulletGameSlice = (BulletGameSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.i())) != null) {
                                                                                                                            bulletGameSlice.E(map != null ? map.get("soulGameId") : null);
                                                                                                                            ChangeQuickRedirect changeQuickRedirect22 = kotlin.w.changeQuickRedirect;
                                                                                                                        }
                                                                                                                    } else if (z11) {
                                                                                                                        if (soulHouseDriver != null && (songRequestSlice2 = (SongRequestSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.K())) != null) {
                                                                                                                            songRequestSlice2.T();
                                                                                                                            ChangeQuickRedirect changeQuickRedirect23 = kotlin.w.changeQuickRedirect;
                                                                                                                        }
                                                                                                                    } else if (soulHouseDriver != null && (songRequestSlice = (SongRequestSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.K())) != null) {
                                                                                                                        songRequestSlice.E();
                                                                                                                        ChangeQuickRedirect changeQuickRedirect24 = kotlin.w.changeQuickRedirect;
                                                                                                                    }
                                                                                                                } else if (z11) {
                                                                                                                    if (soulHouseDriver != null && (soulHouseContainerP1 = soulHouseDriver.p0()) != null) {
                                                                                                                        soulHouseContainerP1.D(BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM, Boolean.FALSE);
                                                                                                                        ChangeQuickRedirect changeQuickRedirect25 = kotlin.w.changeQuickRedirect;
                                                                                                                    }
                                                                                                                    if (soulHouseDriver != null && (hVar2 = (y40.h) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.G())) != null) {
                                                                                                                        hVar2.c0(DataConvertUtil.f161894a.i(map));
                                                                                                                        ChangeQuickRedirect changeQuickRedirect26 = kotlin.w.changeQuickRedirect;
                                                                                                                    }
                                                                                                                } else if (soulHouseDriver != null && (hVar = (y40.h) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.G())) != null) {
                                                                                                                    hVar.K();
                                                                                                                    ChangeQuickRedirect changeQuickRedirect27 = kotlin.w.changeQuickRedirect;
                                                                                                                }
                                                                                                            } else if (z11) {
                                                                                                                if (soulHouseDriver != null && (soulHouseContainerP2 = soulHouseDriver.p0()) != null) {
                                                                                                                    soulHouseContainerP2.D(BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM, Boolean.FALSE);
                                                                                                                    ChangeQuickRedirect changeQuickRedirect28 = kotlin.w.changeQuickRedirect;
                                                                                                                }
                                                                                                                if (soulHouseDriver != null && (videoLiveSlice2 = (VideoLiveSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.T())) != null) {
                                                                                                                    videoLiveSlice2.s0(DataConvertUtil.f161894a.i(map));
                                                                                                                    ChangeQuickRedirect changeQuickRedirect29 = kotlin.w.changeQuickRedirect;
                                                                                                                }
                                                                                                            } else if (soulHouseDriver != null && (videoLiveSlice = (VideoLiveSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.T())) != null) {
                                                                                                                videoLiveSlice.R();
                                                                                                                ChangeQuickRedirect changeQuickRedirect30 = kotlin.w.changeQuickRedirect;
                                                                                                            }
                                                                                                        } else if (z11) {
                                                                                                            if (soulHouseDriver != null && (gVar2 = (cn.soulapp.cpnt_voiceparty.soulhouse.eventgame.g) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.o())) != null) {
                                                                                                                cn.soulapp.cpnt_voiceparty.soulhouse.eventgame.g.F(gVar2, null, 1, null);
                                                                                                                ChangeQuickRedirect changeQuickRedirect31 = kotlin.w.changeQuickRedirect;
                                                                                                            }
                                                                                                        } else if (soulHouseDriver != null && (gVar = (cn.soulapp.cpnt_voiceparty.soulhouse.eventgame.g) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.o())) != null) {
                                                                                                            gVar.y();
                                                                                                            ChangeQuickRedirect changeQuickRedirect32 = kotlin.w.changeQuickRedirect;
                                                                                                        }
                                                                                                    } else if (z11) {
                                                                                                        if (soulHouseDriver != null && (aiPlaygroundSlice2 = (AiPlaygroundSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.a())) != null) {
                                                                                                            aiPlaygroundSlice2.u0();
                                                                                                            ChangeQuickRedirect changeQuickRedirect33 = kotlin.w.changeQuickRedirect;
                                                                                                        }
                                                                                                    } else if (soulHouseDriver != null && (aiPlaygroundSlice = (AiPlaygroundSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.a())) != null) {
                                                                                                        aiPlaygroundSlice.T();
                                                                                                        ChangeQuickRedirect changeQuickRedirect34 = kotlin.w.changeQuickRedirect;
                                                                                                    }
                                                                                                } else if (z11) {
                                                                                                    if (soulHouseDriver != null && (soulHouseContainerP3 = soulHouseDriver.p0()) != null) {
                                                                                                        soulHouseContainerP3.C(BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM);
                                                                                                        ChangeQuickRedirect changeQuickRedirect35 = kotlin.w.changeQuickRedirect;
                                                                                                    }
                                                                                                    if (soulHouseDriver != null && (barrageGameSlice2 = (BarrageGameSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.d())) != null) {
                                                                                                        barrageGameSlice2.I();
                                                                                                        ChangeQuickRedirect changeQuickRedirect36 = kotlin.w.changeQuickRedirect;
                                                                                                    }
                                                                                                } else if (soulHouseDriver != null && (barrageGameSlice = (BarrageGameSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.d())) != null) {
                                                                                                    barrageGameSlice.z();
                                                                                                    ChangeQuickRedirect changeQuickRedirect37 = kotlin.w.changeQuickRedirect;
                                                                                                }
                                                                                            } else if (z11) {
                                                                                                if (soulHouseDriver != null && (soulHouseContainerP4 = soulHouseDriver.p0()) != null) {
                                                                                                    soulHouseContainerP4.C(BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM);
                                                                                                    ChangeQuickRedirect changeQuickRedirect38 = kotlin.w.changeQuickRedirect;
                                                                                                }
                                                                                                if (soulHouseDriver != null && (werewolfSlice2 = (WerewolfSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.V())) != null) {
                                                                                                    werewolfSlice2.R(roomModeInfo);
                                                                                                    ChangeQuickRedirect changeQuickRedirect39 = kotlin.w.changeQuickRedirect;
                                                                                                }
                                                                                            } else if (soulHouseDriver != null && (werewolfSlice = (WerewolfSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.V())) != null) {
                                                                                                werewolfSlice.C();
                                                                                                ChangeQuickRedirect changeQuickRedirect40 = kotlin.w.changeQuickRedirect;
                                                                                            }
                                                                                        } else if (z11) {
                                                                                            if (soulHouseDriver != null && (friendsCabinSlice3 = (FriendsCabinSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.r())) != null) {
                                                                                                friendsCabinSlice3.C();
                                                                                                ChangeQuickRedirect changeQuickRedirect41 = kotlin.w.changeQuickRedirect;
                                                                                            }
                                                                                            if (soulHouseDriver != null && (friendsCabinSlice2 = (FriendsCabinSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.r())) != null) {
                                                                                                friendsCabinSlice2.D();
                                                                                                ChangeQuickRedirect changeQuickRedirect42 = kotlin.w.changeQuickRedirect;
                                                                                            }
                                                                                        } else if (soulHouseDriver != null && (friendsCabinSlice = (FriendsCabinSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.r())) != null) {
                                                                                            friendsCabinSlice.x();
                                                                                            ChangeQuickRedirect changeQuickRedirect43 = kotlin.w.changeQuickRedirect;
                                                                                        }
                                                                                    } else if (z11) {
                                                                                        cn.soul.insight.log.core.a.f15353b.dOnlyPrint("Atmosphere", "当前玩法跟氛围有冲突，需要关闭入口2");
                                                                                        if (soulHouseDriver != null && (soulHouseContainerP5 = soulHouseDriver.p0()) != null) {
                                                                                            soulHouseContainerP5.C(BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM);
                                                                                            ChangeQuickRedirect changeQuickRedirect44 = kotlin.w.changeQuickRedirect;
                                                                                        }
                                                                                        if (soulHouseDriver != null && (studyRoomSlice2 = (StudyRoomSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.N())) != null) {
                                                                                            studyRoomSlice2.R();
                                                                                            ChangeQuickRedirect changeQuickRedirect45 = kotlin.w.changeQuickRedirect;
                                                                                        }
                                                                                    } else if (soulHouseDriver != null && (studyRoomSlice = (StudyRoomSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.N())) != null) {
                                                                                        studyRoomSlice.I();
                                                                                        ChangeQuickRedirect changeQuickRedirect46 = kotlin.w.changeQuickRedirect;
                                                                                    }
                                                                                } else if (z11) {
                                                                                    if (soulHouseDriver != null && (bigVipSlice2 = (BigVipSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.e())) != null) {
                                                                                        bigVipSlice2.I();
                                                                                        ChangeQuickRedirect changeQuickRedirect47 = kotlin.w.changeQuickRedirect;
                                                                                    }
                                                                                } else if (soulHouseDriver != null && (bigVipSlice = (BigVipSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.e())) != null) {
                                                                                    bigVipSlice.B();
                                                                                    ChangeQuickRedirect changeQuickRedirect48 = kotlin.w.changeQuickRedirect;
                                                                                }
                                                                            }
                                                                        } else if (z11) {
                                                                            CommonAssistant commonAssistant = (CommonAssistant) AssistantManager.f144995a.b(CommonAssistant.class);
                                                                            if (commonAssistant != null) {
                                                                                commonAssistant.getRoomHotTopic(soulHouseDriver);
                                                                                ChangeQuickRedirect changeQuickRedirect49 = kotlin.w.changeQuickRedirect;
                                                                            }
                                                                        } else if (soulHouseDriver != null && (chatRoomModelF = SoulHouseExtensionKt.f(soulHouseDriver)) != null) {
                                                                            chatRoomModelF.hotTopicTitle = null;
                                                                            SoulHouseContainer soulHouseContainerP26 = soulHouseDriver.p0();
                                                                            if (soulHouseContainerP26 != null) {
                                                                                soulHouseContainerP26.C(BlockMessage.MSG_GET_TOPIC_UPDATE);
                                                                                ChangeQuickRedirect changeQuickRedirect50 = kotlin.w.changeQuickRedirect;
                                                                            }
                                                                        }
                                                                    }
                                                                } else if (z11) {
                                                                    if (soulHouseDriver != null && (singingRoomSlice2 = (SingingRoomSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.I())) != null) {
                                                                        singingRoomSlice2.C();
                                                                        ChangeQuickRedirect changeQuickRedirect51 = kotlin.w.changeQuickRedirect;
                                                                    }
                                                                } else if (soulHouseDriver != null && (singingRoomSlice = (SingingRoomSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.I())) != null) {
                                                                    singingRoomSlice.y();
                                                                    ChangeQuickRedirect changeQuickRedirect52 = kotlin.w.changeQuickRedirect;
                                                                }
                                                            } else if (z11) {
                                                                cn.soul.insight.log.core.a.f15353b.dOnlyPrint("Atmosphere", "当前玩法跟氛围有冲突，需要关闭入口3");
                                                                if (soulHouseDriver != null && (soulHouseContainerP8 = soulHouseDriver.p0()) != null) {
                                                                    soulHouseContainerP8.C(BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM);
                                                                    ChangeQuickRedirect changeQuickRedirect53 = kotlin.w.changeQuickRedirect;
                                                                }
                                                                if (soulHouseDriver != null && (virtualLiveSlice2 = (VirtualLiveSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.U())) != null) {
                                                                    virtualLiveSlice2.C();
                                                                    ChangeQuickRedirect changeQuickRedirect54 = kotlin.w.changeQuickRedirect;
                                                                }
                                                            } else if (soulHouseDriver != null && (virtualLiveSlice = (VirtualLiveSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.U())) != null) {
                                                                virtualLiveSlice.w();
                                                                ChangeQuickRedirect changeQuickRedirect55 = kotlin.w.changeQuickRedirect;
                                                            }
                                                        } else if (z11) {
                                                            if (soulHouseDriver != null && (throwingThunderSlice2 = (ThrowingThunderSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.P())) != null) {
                                                                throwingThunderSlice2.F();
                                                                ChangeQuickRedirect changeQuickRedirect56 = kotlin.w.changeQuickRedirect;
                                                            }
                                                        } else if (soulHouseDriver != null && (throwingThunderSlice = (ThrowingThunderSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.P())) != null) {
                                                            throwingThunderSlice.z();
                                                            ChangeQuickRedirect changeQuickRedirect57 = kotlin.w.changeQuickRedirect;
                                                        }
                                                    } else if (z11) {
                                                        if (soulHouseDriver != null && (e0Var2 = (cn.soulapp.cpnt_voiceparty.soulhouse.pvp.e0) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.F())) != null) {
                                                            e0Var2.G();
                                                            ChangeQuickRedirect changeQuickRedirect58 = kotlin.w.changeQuickRedirect;
                                                        }
                                                    } else if (soulHouseDriver != null && (e0Var = (cn.soulapp.cpnt_voiceparty.soulhouse.pvp.e0) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.F())) != null) {
                                                        e0Var.y();
                                                        ChangeQuickRedirect changeQuickRedirect59 = kotlin.w.changeQuickRedirect;
                                                    }
                                                } else if (z11) {
                                                    if (soulHouseDriver != null && (h0Var2 = (cn.soulapp.cpnt_voiceparty.soulhouse.auctionpk.h0) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.c())) != null) {
                                                        h0Var2.B();
                                                        ChangeQuickRedirect changeQuickRedirect60 = kotlin.w.changeQuickRedirect;
                                                    }
                                                } else if (soulHouseDriver != null && (h0Var = (cn.soulapp.cpnt_voiceparty.soulhouse.auctionpk.h0) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.c())) != null) {
                                                    h0Var.y();
                                                    ChangeQuickRedirect changeQuickRedirect61 = kotlin.w.changeQuickRedirect;
                                                }
                                            } else if (z11) {
                                                QubaoShowInfoDataBean qubaoShowInfoDataBean = (QubaoShowInfoDataBean) new Gson().fromJson(String.valueOf(roomModeInfo.getGameInfo()), QubaoShowInfoDataBean.class);
                                                if (soulHouseDriver != null) {
                                                    soulHouseDriver.provideX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.e0(), qubaoShowInfoDataBean);
                                                    ChangeQuickRedirect changeQuickRedirect62 = kotlin.w.changeQuickRedirect;
                                                }
                                                if (soulHouseDriver != null && (soulHouseContainerP9 = soulHouseDriver.p0()) != null) {
                                                    soulHouseContainerP9.C(BlockMessage.MSG_QUBAO_SHOW_OPEN);
                                                    ChangeQuickRedirect changeQuickRedirect63 = kotlin.w.changeQuickRedirect;
                                                }
                                            } else {
                                                h(soulHouseDriver, cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154982g.getId());
                                                QubaoShowAssistant qubaoShowAssistant = (QubaoShowAssistant) AssistantManager.f144995a.b(QubaoShowAssistant.class);
                                                if (qubaoShowAssistant != null) {
                                                    qubaoShowAssistant.closeQubaoShow(soulHouseDriver);
                                                    ChangeQuickRedirect changeQuickRedirect64 = kotlin.w.changeQuickRedirect;
                                                }
                                            }
                                        } else if (!z11) {
                                            h(soulHouseDriver, cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154982g.getId());
                                            AuctionAssistant auctionAssistant = (AuctionAssistant) AssistantManager.f144995a.b(AuctionAssistant.class);
                                            if (auctionAssistant != null) {
                                                auctionAssistant.closeAuction(soulHouseDriver);
                                                ChangeQuickRedirect changeQuickRedirect65 = kotlin.w.changeQuickRedirect;
                                            }
                                        } else if (soulHouseDriver != null && (soulHouseContainerP10 = soulHouseDriver.p0()) != null) {
                                            soulHouseContainerP10.C(BlockMessage.MSG_AUCTION_OPEN);
                                            ChangeQuickRedirect changeQuickRedirect66 = kotlin.w.changeQuickRedirect;
                                        }
                                    } else if (z11) {
                                        if (soulHouseDriver != null && (eVar2 = (cn.soulapp.cpnt_voiceparty.soulhouse.musictavern.e) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.A())) != null) {
                                            eVar2.y();
                                            ChangeQuickRedirect changeQuickRedirect67 = kotlin.w.changeQuickRedirect;
                                        }
                                    } else if (soulHouseDriver != null && (eVar = (cn.soulapp.cpnt_voiceparty.soulhouse.musictavern.e) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.A())) != null) {
                                        eVar.u();
                                        ChangeQuickRedirect changeQuickRedirect68 = kotlin.w.changeQuickRedirect;
                                    }
                                } else if (z11) {
                                    if (soulHouseDriver != null && (n0Var2 = (cn.soulapp.cpnt_voiceparty.soulhouse.bistro.n0) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.f())) != null) {
                                        n0Var2.J();
                                        ChangeQuickRedirect changeQuickRedirect69 = kotlin.w.changeQuickRedirect;
                                    }
                                } else if (soulHouseDriver != null && (n0Var = (cn.soulapp.cpnt_voiceparty.soulhouse.bistro.n0) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.f())) != null) {
                                    n0Var.x();
                                    ChangeQuickRedirect changeQuickRedirect70 = kotlin.w.changeQuickRedirect;
                                }
                            } else if (z11) {
                                cn.soul.insight.log.core.a.f15353b.dOnlyPrint("Atmosphere", "当前玩法跟氛围有冲突，需要关闭入口4");
                                if (soulHouseDriver != null && (soulHouseContainerP11 = soulHouseDriver.p0()) != null) {
                                    soulHouseContainerP11.C(BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM);
                                    ChangeQuickRedirect changeQuickRedirect71 = kotlin.w.changeQuickRedirect;
                                }
                                if (soulHouseDriver != null && (guineaPigGameSlice2 = (GuineaPigGameSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.s())) != null) {
                                    guineaPigGameSlice2.I();
                                    ChangeQuickRedirect changeQuickRedirect72 = kotlin.w.changeQuickRedirect;
                                }
                            } else if (soulHouseDriver != null && (guineaPigGameSlice = (GuineaPigGameSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.s())) != null) {
                                guineaPigGameSlice.C();
                                ChangeQuickRedirect changeQuickRedirect73 = kotlin.w.changeQuickRedirect;
                            }
                        } else if (z11) {
                            GameAssistant gameAssistant = (GameAssistant) AssistantManager.f144995a.b(GameAssistant.class);
                            if (gameAssistant != null) {
                                GameAssistant.queryRoundDataPacket$default(gameAssistant, soulHouseDriver, "chat_live", soulHouseDriver != null ? SoulHouseExtensionKt.P(soulHouseDriver) : null, false, 8, null);
                                ChangeQuickRedirect changeQuickRedirect74 = kotlin.w.changeQuickRedirect;
                            }
                            if (soulHouseDriver != null && (soulHouseContainerP15 = soulHouseDriver.p0()) != null) {
                                soulHouseContainerP15.C(BlockMessage.MSG_OPEN_SPEED_MATCH_MODE);
                                ChangeQuickRedirect changeQuickRedirect75 = kotlin.w.changeQuickRedirect;
                            }
                        } else {
                            if (soulHouseDriver != null && (roomInfo = (RoomInfo) soulHouseDriver.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.k0())) != null) {
                                roomInfo.setCurModeOpen(false);
                                roomInfo.setCurGameId("");
                                roomInfo.setRoomMode(RoomMode.NORMAL);
                                ChangeQuickRedirect changeQuickRedirect76 = kotlin.w.changeQuickRedirect;
                            }
                            if (soulHouseDriver != null) {
                                soulHouseDriver.removeX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.C0());
                                ChangeQuickRedirect changeQuickRedirect77 = kotlin.w.changeQuickRedirect;
                            }
                            if (soulHouseDriver != null && (soulHouseContainerP14 = soulHouseDriver.p0()) != null) {
                                soulHouseContainerP14.C(BlockMessage.MSG_GAME_CLOSE);
                                ChangeQuickRedirect changeQuickRedirect78 = kotlin.w.changeQuickRedirect;
                            }
                            if (soulHouseDriver != null && (soulHouseContainerP13 = soulHouseDriver.p0()) != null) {
                                soulHouseContainerP13.D(BlockMessage.SPEED_MATCH_REFRESH_SEAT, "2");
                                ChangeQuickRedirect changeQuickRedirect79 = kotlin.w.changeQuickRedirect;
                            }
                            String str2 = map != null ? map.get("content") : null;
                            String str3 = str2 != null ? str2 : "";
                            if (!TextUtils.isEmpty(str3)) {
                                cn.soulapp.lib.widget.toast.e.u(str3);
                            }
                            if (soulHouseDriver != null && (soulHouseContainerP12 = soulHouseDriver.p0()) != null) {
                                soulHouseContainerP12.C(BlockMessage.MSG_CLOSE_SPEED_MATCH_MODE);
                                ChangeQuickRedirect changeQuickRedirect80 = kotlin.w.changeQuickRedirect;
                            }
                        }
                    } else if (z11) {
                        if (soulHouseDriver != null && (soulHouseContainerP17 = soulHouseDriver.p0()) != null) {
                            soulHouseContainerP17.C(BlockMessage.OPEN_TURTLE_SOUP);
                            ChangeQuickRedirect changeQuickRedirect81 = kotlin.w.changeQuickRedirect;
                        }
                    } else if (soulHouseDriver != null && (soulHouseContainerP16 = soulHouseDriver.p0()) != null) {
                        soulHouseContainerP16.C(BlockMessage.CLOSE_TURTLE_SOUP);
                        ChangeQuickRedirect changeQuickRedirect82 = kotlin.w.changeQuickRedirect;
                    }
                } else if (z11) {
                    if (soulHouseDriver != null && (aiPodCastSlice2 = (AiPodCastSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.b())) != null) {
                        aiPodCastSlice2.M();
                        ChangeQuickRedirect changeQuickRedirect83 = kotlin.w.changeQuickRedirect;
                    }
                } else if (soulHouseDriver != null && (aiPodCastSlice = (AiPodCastSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.b())) != null) {
                    aiPodCastSlice.D();
                    ChangeQuickRedirect changeQuickRedirect84 = kotlin.w.changeQuickRedirect;
                }
            }
        } else if (z11) {
            if (soulHouseDriver != null && (soulHouseContainerP21 = soulHouseDriver.p0()) != null) {
                soulHouseContainerP21.C(BlockMessage.MSG_OPEN_PK);
                ChangeQuickRedirect changeQuickRedirect85 = kotlin.w.changeQuickRedirect;
            }
        } else if (soulHouseDriver != null && (soulHouseContainerP20 = soulHouseDriver.p0()) != null) {
            soulHouseContainerP20.C(BlockMessage.MSG_CLOSE_PK);
            ChangeQuickRedirect changeQuickRedirect86 = kotlin.w.changeQuickRedirect;
        }
        if (soulHouseDriver == null || (soulHouseContainerP19 = soulHouseDriver.p0()) == null) {
            return;
        }
        soulHouseContainerP19.C(BlockMessage.MSG_UPDATE_FUNCTIONS);
        ChangeQuickRedirect changeQuickRedirect87 = kotlin.w.changeQuickRedirect;
    }

    public final void f(@Nullable SoulHouseDriver soulHouseDriver, @Nullable Integer playTypeStr, @Nullable Integer groupType) {
        if (PatchProxy.proxy(new Object[]{soulHouseDriver, playTypeStr, groupType}, this, changeQuickRedirect, false, 4, new Class[]{SoulHouseDriver.class, Integer.class, Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        b0 b0Var = b0.f142548a;
        Integer numI = b0Var.i(soulHouseDriver);
        if (!kotlin.jvm.internal.v.e(playTypeStr, numI) && numI != null) {
            f142544a.c(soulHouseDriver, Integer.valueOf(numI.intValue()), playTypeStr);
        }
        b0Var.K(soulHouseDriver, playTypeStr, groupType);
    }

    public final void h(@Nullable SoulHouseDriver soulHouseDriver, int i11) {
        if (PatchProxy.proxy(new Object[]{soulHouseDriver, new Integer(i11)}, this, changeQuickRedirect, false, 5, new Class[]{SoulHouseDriver.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        Integer numI = b0.f142548a.i(soulHouseDriver);
        if ((numI != null && i11 == numI.intValue()) || numI == null) {
            return;
        }
        f142544a.c(soulHouseDriver, Integer.valueOf(numI.intValue()), Integer.valueOf(i11));
    }
}