package cn.soulapp.cpnt_voiceparty.function;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.Window;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentManager;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.bean.ChatRoomModel;
import cn.soulapp.android.chatroom.data.RoomDataManager;
import cn.soulapp.android.chatroom.data.UpdateOp;
import cn.soulapp.android.client.component.middle.platform.bean.im.RoomUser;
import cn.soulapp.android.lib.media.zego.RoomChatEngineManager;
import cn.soulapp.cpnt_voiceparty.bean.FunctionBean;
import cn.soulapp.cpnt_voiceparty.bean.OtherGameInfoExt;
import cn.soulapp.cpnt_voiceparty.bean.PlayFunctionBean;
import cn.soulapp.cpnt_voiceparty.bean.RoomConfigBean;
import cn.soulapp.cpnt_voiceparty.bean.RoomModeInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseContainer;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.fishing.FishingMasterSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.h5play.H5PlaySlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.othergame.OtherH5GameSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.partyinteraction.PartyInteractionSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.playmode.ModeConflictConfiguration;
import cn.soulapp.cpnt_voiceparty.soulhouse.slice.SliceManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.bean.MusicMachineInfo;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.MusicMarketInfo;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.RoomInfo;
import cn.soulapp.cpnt_voiceparty.util.CommonUtil;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaPlayer;
import com.umeng.analytics.pro.bt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomFunctionManager.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010 \n\u0002\b\u0015\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bS\u0010TJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002Jf\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\n28\u0010\u0013\u001a4\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\fH\u0002J\u0012\u0010\u0017\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002J\\\u0010\u0018\u001a\u00020\u00122\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\n28\u0010\u0013\u001a4\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\fJ-\u0010\u001b\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J-\u0010\u001e\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u001e\u0010\u001fJ\u0016\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\u00060 j\b\u0012\u0004\u0012\u00020\u0006`!J?\u0010&\u001a\u00020\u00122\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\r2\u0006\u0010#\u001a\u00020\u00042\n\b\u0002\u0010%\u001a\u0004\u0018\u00010$¢\u0006\u0004\b&\u0010'J5\u0010*\u001a\u00020\u00122\b\u0010)\u001a\u0004\u0018\u00010(2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b*\u0010+J3\u0010,\u001a\u00020\u00122\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u001a\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u0004¢\u0006\u0004\b,\u0010-J)\u00100\u001a\u00020\u00122\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\r2\u0006\u0010/\u001a\u00020.¢\u0006\u0004\b0\u00101J-\u00102\u001a\u00020\u00122\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b2\u00103J-\u00104\u001a\u00020\u00122\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b4\u00105J#\u00106\u001a\u00020\u00122\b\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b6\u00107J\u0019\u00108\u001a\u0004\u0018\u00010\r2\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b8\u00109J\u0019\u0010:\u001a\u0004\u0018\u00010\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b:\u0010;J\u0019\u0010<\u001a\u0004\u0018\u00010\r2\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b<\u00109J\u0019\u0010=\u001a\u0004\u0018\u00010\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b=\u0010;J\u0019\u0010>\u001a\u0004\u0018\u00010.2\b\u0010\u0019\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b>\u0010?J\u0018\u0010A\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010@2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0010\u0010B\u001a\u00020.2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0010\u0010C\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0017\u0010D\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\r¢\u0006\u0004\bD\u0010EJ\u0017\u0010F\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\r¢\u0006\u0004\bF\u0010EJ#\u0010G\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\r¢\u0006\u0004\bG\u0010HJ\u0010\u0010I\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0010\u0010J\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u0017\u0010K\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\r¢\u0006\u0004\bK\u0010EJ\u0010\u0010L\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0010\u0010M\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u0017\u0010N\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\r¢\u0006\u0004\bN\u0010EJ\u0010\u0010O\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0010\u0010P\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\bR$\u0010R\u001a\u0012\u0012\u0004\u0012\u00020\u00060 j\b\u0012\u0004\u0012\u00020\u0006`!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010Q¨\u0006U"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/function/b0;", "", "Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "functionBean", "", "y", "Lcn/soulapp/cpnt_voiceparty/function/BaseRoomFunction;", "roomFunction", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "operation", "isNative", "Lkotlin/w;", TextureRenderKeys.KEY_IS_CALLBACK, "D", "Lcn/soulapp/cpnt_voiceparty/soulhouse/SoulHouseDriver;", "soulHouseDriver", ExifInterface.LONGITUDE_EAST, "a", "playType", "groupType", "k", "(Lcn/soul/android/base/block_frame/databus/DataBus;Ljava/lang/Integer;Ljava/lang/Integer;)Z", "j", "l", "(Lcn/soulapp/cpnt_voiceparty/soulhouse/SoulHouseDriver;Ljava/lang/Integer;Ljava/lang/Integer;)Z", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "d", "isOpen", "Lcn/soulapp/cpnt_voiceparty/bean/RoomModeInfo;", "roomModeInfo", "G", "(Lcn/soulapp/cpnt_voiceparty/soulhouse/SoulHouseDriver;Ljava/lang/Integer;Ljava/lang/Integer;ZLcn/soulapp/cpnt_voiceparty/bean/RoomModeInfo;)V", "Landroid/app/Activity;", "activity", "N", "(Landroid/app/Activity;Lcn/soulapp/cpnt_voiceparty/soulhouse/SoulHouseDriver;Ljava/lang/Integer;Ljava/lang/Integer;)V", "F", "(Lcn/soul/android/base/block_frame/databus/DataBus;Ljava/lang/Integer;IZ)V", "", "reason", "C", "(Lcn/soulapp/cpnt_voiceparty/soulhouse/SoulHouseDriver;Ljava/lang/Integer;Ljava/lang/String;)V", "K", "(Lcn/soulapp/cpnt_voiceparty/soulhouse/SoulHouseDriver;Ljava/lang/Integer;Ljava/lang/Integer;)V", "J", "(Lcn/soul/android/base/block_frame/databus/DataBus;Ljava/lang/Integer;Ljava/lang/Integer;)V", "I", "(Lcn/soul/android/base/block_frame/databus/DataBus;Ljava/lang/Integer;)V", "h", "(Lcn/soul/android/base/block_frame/databus/DataBus;)Ljava/lang/Integer;", "i", "(Lcn/soulapp/cpnt_voiceparty/soulhouse/SoulHouseDriver;)Ljava/lang/Integer;", l11l11I1111l.l111l1111lIl, "f", "g", "(Ljava/lang/Integer;)Ljava/lang/String;", "", ExpcompatUtils.COMPAT_VALUE_780, "c", "o", "p", "(Ljava/lang/Integer;)Z", bt.aF, "s", "(Ljava/lang/Integer;Ljava/lang/Integer;)Z", "r", "q", "B", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "z", "x", "w", "v", "Ljava/util/ArrayList;", "roomFunctionList", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final b0 f142548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final ArrayList<BaseRoomFunction> roomFunctionList;
    public static ChangeQuickRedirect changeQuickRedirect;

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 42, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f142548a = new b0();
        roomFunctionList = kotlin.collections.v.g(new h(), new KTVRoomFunction(), new PkRoomFunction(), new e(), new r(), new l(), new p(), new AuctionRoomFunction(), new v40.a(), new AuctionPkRoomFunction(), new HeartBeatRoomFunction(), new g0(), new PvpRoomFunction(), new TurtleSoupRoomFunction(), new q(), new w(), new m0(), new d0(), new h0(), new k(), new j0(), new f(), new n(), new m(), new t(), new g(), new d(), new i0(), new j(), new s(), new n0(), new i(), new f0(), new c(), new b(), new v(), new o(), new e0(), new k0(), new a(), new u(), new l0(), new c0());
    }

    private b0() {
    }

    private final void D(BaseRoomFunction baseRoomFunction, DataBus dataBus, FunctionBean functionBean, FragmentManager fragmentManager, Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
        if (PatchProxy.proxy(new Object[]{baseRoomFunction, dataBus, functionBean, fragmentManager, function2}, this, changeQuickRedirect, false, 4, new Class[]{BaseRoomFunction.class, DataBus.class, FunctionBean.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
            return;
        }
        ArrayList<FunctionBean> arrayListG = ModeConflictConfiguration.f154904a.g(SoulHouseExtensionKt.j0(dataBus), baseRoomFunction.h());
        if (arrayListG == null || arrayListG.isEmpty()) {
            baseRoomFunction.b(dataBus, fragmentManager, function2);
        } else {
            baseRoomFunction.c(arrayListG, functionBean, dataBus, fragmentManager, function2);
        }
    }

    private final boolean E(SoulHouseDriver soulHouseDriver) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soulHouseDriver}, this, changeQuickRedirect, false, 12, new Class[]{SoulHouseDriver.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (soulHouseDriver == null) {
            return false;
        }
        Integer numI = i(soulHouseDriver);
        if (numI != null && numI.intValue() == cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154983h.getId()) {
            return true;
        }
        RoomUser roomUserA = RoomDataManager.A(soulHouseDriver.a1(), false, 1, null);
        if (roomUserA != null && roomUserA.isOwner()) {
            return CommonUtil.f161882a.Z0(soulHouseDriver) || soulHouseDriver.getIsAtmosphereMusicPlaying();
        }
        return false;
    }

    public static /* synthetic */ void H(b0 b0Var, SoulHouseDriver soulHouseDriver, Integer num, Integer num2, boolean z11, RoomModeInfo roomModeInfo, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            roomModeInfo = null;
        }
        b0Var.G(soulHouseDriver, num, num2, z11, roomModeInfo);
    }

    public static /* synthetic */ void L(b0 b0Var, DataBus dataBus, Integer num, Integer num2, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            num2 = 1;
        }
        b0Var.J(dataBus, num, num2);
    }

    public static /* synthetic */ void M(b0 b0Var, SoulHouseDriver soulHouseDriver, Integer num, Integer num2, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            num2 = 1;
        }
        b0Var.K(soulHouseDriver, num, num2);
    }

    public static /* synthetic */ boolean m(b0 b0Var, DataBus dataBus, Integer num, Integer num2, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            num2 = 1;
        }
        return b0Var.k(dataBus, num, num2);
    }

    public static /* synthetic */ boolean n(b0 b0Var, SoulHouseDriver soulHouseDriver, Integer num, Integer num2, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            num2 = 1;
        }
        return b0Var.l(soulHouseDriver, num, num2);
    }

    public static /* synthetic */ boolean t(b0 b0Var, Integer num, Integer num2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            num2 = null;
        }
        return b0Var.s(num, num2);
    }

    private final boolean y(FunctionBean functionBean) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{functionBean}, this, changeQuickRedirect, false, 3, new Class[]{FunctionBean.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (functionBean != null) {
            Integer bizType = functionBean.getBizType();
            int iD = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.Q.getId();
            if (bizType != null && bizType.intValue() == iD) {
                return true;
            }
        }
        return false;
    }

    public final boolean A(@Nullable SoulHouseDriver soulHouseDriver) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soulHouseDriver}, this, changeQuickRedirect, false, 37, new Class[]{SoulHouseDriver.class}, Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : B(i(soulHouseDriver));
    }

    public final boolean B(@Nullable Integer playType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{playType}, this, changeQuickRedirect, false, 36, new Class[]{Integer.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (cn.soulapp.cpnt_voiceparty.util.e.f162158a.P()) {
            return playType != null && playType.intValue() == cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.E.getId();
        }
        return false;
    }

    public final void C(@Nullable SoulHouseDriver soulHouseDriver, @Nullable Integer playType, @NotNull String reason) {
        RoomDataManager roomDataManagerA1;
        RoomUser roomUserJ;
        String userId;
        if (PatchProxy.proxy(new Object[]{soulHouseDriver, playType, reason}, this, changeQuickRedirect, false, 11, new Class[]{SoulHouseDriver.class, Integer.class, String.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(reason, "reason");
        z30.a.f248264a.t(false);
        Long lO = (soulHouseDriver == null || (roomDataManagerA1 = soulHouseDriver.a1()) == null || (roomUserJ = roomDataManagerA1.J()) == null || (userId = roomUserJ.getUserId()) == null) ? null : kotlin.text.p.o(userId);
        SoulHouseDriver soulHouseDriverI0 = SoulHouseExtensionKt.i0();
        RoomConfigBean roomConfigBean = soulHouseDriverI0 != null ? (RoomConfigBean) soulHouseDriverI0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.u0()) : null;
        if ((roomConfigBean != null ? roomConfigBean.getRtcTrafficOptimizeParams(playType, lO) : null) == null) {
            SoulHouseExtensionKt.w0(this, "RtcOptimize", "refreshRtcOptimize skip+reset: not hit apollo ratio (control group), reason=" + reason + ", playType=" + playType + ", ownerUid=" + lO);
            RoomChatEngineManager.getInstance().resetAudioTrafficOptimize();
            return;
        }
        if (RoomChatEngineManager.getInstance().isHifiModeActive()) {
            SoulHouseExtensionKt.w0(this, "RtcOptimize", "refreshRtcOptimize skip: hifi mode active (singing room), reason=" + reason + ", playType=" + playType);
            RoomChatEngineManager.getInstance().resetAudioTrafficOptimize();
            return;
        }
        if (E(soulHouseDriver)) {
            SoulHouseExtensionKt.w0(this, "RtcOptimize", "refreshRtcOptimize force default: owner playing music content, reason=" + reason + ", origPlayType=" + playType);
            playType = null;
        }
        cn.soulapp.cpnt_voiceparty.bean.h rtcTrafficOptimizeParams = roomConfigBean.getRtcTrafficOptimizeParams(playType, lO);
        if (rtcTrafficOptimizeParams == null) {
            RoomChatEngineManager.getInstance().resetAudioTrafficOptimize();
            return;
        }
        SoulHouseExtensionKt.w0(this, "RtcOptimize", "refreshRtcOptimize apply: reason=" + reason + ", playType=" + playType + ", ownerUid=" + lO + ", agora=" + rtcTrafficOptimizeParams.getAgoraBitrate() + '/' + rtcTrafficOptimizeParams.getAgoraMode() + ", trtc=" + rtcTrafficOptimizeParams.getTrtcBitrate() + ", volc=" + rtcTrafficOptimizeParams.getVolcProfileLevel());
        RoomChatEngineManager.getInstance().applyAudioTrafficOptimize(rtcTrafficOptimizeParams.getAgoraBitrate(), rtcTrafficOptimizeParams.getAgoraMode(), rtcTrafficOptimizeParams.getTrtcBitrate(), rtcTrafficOptimizeParams.getVolcProfileLevel());
    }

    public final void F(@Nullable DataBus dataBus, @Nullable Integer playType, int groupType, boolean isOpen) {
        if (PatchProxy.proxy(new Object[]{dataBus, playType, new Integer(groupType), new Byte(isOpen ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 10, new Class[]{DataBus.class, Integer.class, Integer.TYPE, Boolean.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        H(this, SoulHouseExtensionKt.j0(dataBus), playType, Integer.valueOf(groupType), isOpen, null, 16, null);
    }

    public final void G(@Nullable SoulHouseDriver soulHouseDriver, @Nullable Integer playType, @Nullable Integer groupType, boolean isOpen, @Nullable RoomModeInfo roomModeInfo) {
        RoomDataManager roomDataManagerA1;
        Object next;
        if (PatchProxy.proxy(new Object[]{soulHouseDriver, playType, groupType, new Byte(isOpen ? (byte) 1 : (byte) 0), roomModeInfo}, this, changeQuickRedirect, false, 8, new Class[]{SoulHouseDriver.class, Integer.class, Integer.class, Boolean.TYPE, RoomModeInfo.class}, Void.TYPE).isSupported) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("调用updateFuncOpenState(driver)，将当前房间的");
        sb2.append(g(playType));
        sb2.append(isOpen ? "打开" : "关闭");
        SoulHouseExtensionKt.w0(this, "RoomFunctionTag", sb2.toString());
        FunctionBean funcByPlayType = null;
        funcByPlayType = null;
        funcByPlayType = null;
        if ((soulHouseDriver != null ? (PlayFunctionBean) soulHouseDriver.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.b0()) : null) == null) {
            Iterator<T> it = roomFunctionList.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(playType != null && ((BaseRoomFunction) next).h().getId() == playType.intValue()));
            if (next == null || ((BaseRoomFunction) next).h().getId() == -1) {
                Iterator<T> it2 = roomFunctionList.iterator();
                do {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                } while (!(groupType != null && ((BaseRoomFunction) next).h().getGroupType() == groupType.intValue()));
            }
            if (next != null) {
                funcByPlayType = new FunctionBean(null, null, null, null, null, null, null, null, false, null, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD, null);
                BaseRoomFunction baseRoomFunction = (BaseRoomFunction) next;
                funcByPlayType.setName(baseRoomFunction.h().getModeName());
                funcByPlayType.setBizType(playType);
                funcByPlayType.setType(Integer.valueOf(baseRoomFunction.h().getFuncType()));
                funcByPlayType.setTechType(groupType);
            } else if (groupType != null && groupType.intValue() == 5) {
                OtherGameInfoExt otherGameInfoExt = (OtherGameInfoExt) b80.l.a(roomModeInfo != null ? roomModeInfo.getGameInfoStr() : null, OtherGameInfoExt.class);
                FunctionBean functionBean = new FunctionBean(null, null, null, null, null, null, null, null, false, null, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD, null);
                functionBean.setName(otherGameInfoExt != null ? otherGameInfoExt.getGName() : null);
                functionBean.setType(1);
                functionBean.setBizType(playType);
                functionBean.setTechType(groupType);
                funcByPlayType = functionBean;
            }
        } else {
            cn.soulapp.cpnt_voiceparty.soulhouse.g gVar = cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a;
            PlayFunctionBean playFunctionBean = (PlayFunctionBean) soulHouseDriver.getX(gVar.b0());
            if (playFunctionBean != null) {
                playFunctionBean.updateFuncOpenState(playType, groupType, isOpen);
            }
            PlayFunctionBean playFunctionBean2 = (PlayFunctionBean) soulHouseDriver.getX(gVar.b0());
            if (playFunctionBean2 != null) {
                funcByPlayType = playFunctionBean2.getFuncByPlayType(playType, groupType);
            }
        }
        if (soulHouseDriver != null && (roomDataManagerA1 = soulHouseDriver.a1()) != null) {
            roomDataManagerA1.e0(funcByPlayType, isOpen ? UpdateOp.ADD : UpdateOp.REMOVE);
        }
        int iD = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.P.getId();
        if (playType != null && playType.intValue() == iD) {
            C(soulHouseDriver, i(soulHouseDriver), "song_machine_toggle");
        }
    }

    public final void I(@Nullable DataBus dataBus, @Nullable Integer groupType) {
        RoomDataManager roomDataManagerA1;
        if (PatchProxy.proxy(new Object[]{dataBus, groupType}, this, changeQuickRedirect, false, 15, new Class[]{DataBus.class, Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        ChatRoomModel chatRoomModelV = (soulHouseDriverJ0 == null || (roomDataManagerA1 = soulHouseDriverJ0.a1()) == null) ? null : roomDataManagerA1.v();
        if (chatRoomModelV != null) {
            chatRoomModelV.groupType = groupType.intValue();
        }
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(dataBus);
        ChatRoomModel chatRoomModelF = soulHouseDriverJ1 != null ? SoulHouseExtensionKt.f(soulHouseDriverJ1) : null;
        if (chatRoomModelF == null) {
            return;
        }
        chatRoomModelF.groupType = groupType.intValue();
    }

    public final void J(@Nullable DataBus dataBus, @Nullable Integer playType, @Nullable Integer groupType) {
        if (PatchProxy.proxy(new Object[]{dataBus, playType, groupType}, this, changeQuickRedirect, false, 14, new Class[]{DataBus.class, Integer.class, Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        K(SoulHouseExtensionKt.j0(dataBus), playType, groupType);
    }

    public final void K(@Nullable SoulHouseDriver soulHouseDriver, @Nullable Integer playType, @Nullable Integer groupType) {
        SoulHouseContainer soulHouseContainerP0;
        RoomDataManager roomDataManagerA1;
        RoomDataManager roomDataManagerA2;
        if (PatchProxy.proxy(new Object[]{soulHouseDriver, playType, groupType}, this, changeQuickRedirect, false, 13, new Class[]{SoulHouseDriver.class, Integer.class, Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseExtensionKt.w0(this, "RoomFunctionTag", "updateRoomPlayType(driver)，修改当前房间的玩法为：" + g(playType) + ",playType=" + playType + ",groupType = " + groupType + ' ');
        ChatRoomModel chatRoomModelV = (soulHouseDriver == null || (roomDataManagerA2 = soulHouseDriver.a1()) == null) ? null : roomDataManagerA2.v();
        if (chatRoomModelV != null) {
            chatRoomModelV.playType = playType.intValue();
        }
        ChatRoomModel chatRoomModelV2 = (soulHouseDriver == null || (roomDataManagerA1 = soulHouseDriver.a1()) == null) ? null : roomDataManagerA1.v();
        if (chatRoomModelV2 != null) {
            chatRoomModelV2.groupType = groupType.intValue();
        }
        ChatRoomModel chatRoomModelF = soulHouseDriver != null ? SoulHouseExtensionKt.f(soulHouseDriver) : null;
        if (chatRoomModelF != null) {
            chatRoomModelF.playType = playType.intValue();
        }
        ChatRoomModel chatRoomModelF2 = soulHouseDriver != null ? SoulHouseExtensionKt.f(soulHouseDriver) : null;
        if (chatRoomModelF2 != null) {
            chatRoomModelF2.groupType = groupType.intValue();
        }
        Context contextD = (soulHouseDriver == null || (soulHouseContainerP0 = soulHouseDriver.p0()) == null) ? null : soulHouseContainerP0.getContext();
        N(contextD instanceof Activity ? (Activity) contextD : null, soulHouseDriver, playType, groupType);
        C(soulHouseDriver, playType, "play_type_change");
    }

    public final void N(@Nullable Activity activity, @Nullable SoulHouseDriver soulHouseDriver, @Nullable Integer playType, @Nullable Integer groupType) {
        Window window;
        RoomDataManager roomDataManagerA1;
        RoomUser roomUserA;
        if (PatchProxy.proxy(new Object[]{activity, soulHouseDriver, playType, groupType}, this, changeQuickRedirect, false, 9, new Class[]{Activity.class, SoulHouseDriver.class, Integer.class, Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        boolean z11 = (soulHouseDriver == null || (roomDataManagerA1 = soulHouseDriver.a1()) == null || (roomUserA = RoomDataManager.A(roomDataManagerA1, false, 1, null)) == null || !roomUserA.isOwner()) ? false : true;
        SoulHouseExtensionKt.w0(this, "ScreenBright", "updateScreenAlwaysOn调用, groupType=" + groupType + ", playType=" + playType + ", isOwner=" + z11);
        boolean z12 = ModeConflictConfiguration.f154904a.f(playType, groupType) || z11;
        if (activity == null || (window = activity.getWindow()) == null) {
            return;
        }
        if (z12) {
            window.addFlags(128);
            SoulHouseExtensionKt.w0(f142548a, "ScreenBright", "开启屏幕常亮, groupType=" + groupType + ", playType=" + playType + ", isOwner=" + z11);
            return;
        }
        window.clearFlags(128);
        SoulHouseExtensionKt.w0(f142548a, "ScreenBright", "关闭屏幕常亮, groupType=" + groupType + ", playType=" + playType + ", isOwner=" + z11);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0063  */
    /* JADX WARN: Code duplicated, block: B:27:0x0089  */
    /* JADX WARN: Code duplicated, block: B:29:0x008c  */
    /* JADX WARN: Code duplicated, block: B:31:0x0096 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0098  */
    /* JADX WARN: Code duplicated, block: B:38:0x00af  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:42:0x00bd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:60:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:62:0x0100  */
    /* JADX WARN: Code duplicated, block: B:64:0x010b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x010d  */
    /* JADX WARN: Code duplicated, block: B:68:0x011c  */
    /* JADX WARN: Code duplicated, block: B:71:0x0124  */
    /* JADX WARN: Code duplicated, block: B:75:0x012a  */
    public final void a(@Nullable DataBus dataBus, @Nullable FunctionBean functionBean, @NotNull FragmentManager fragmentManager, @Nullable Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
        Object next;
        boolean z11;
        boolean z12;
        boolean z13;
        Integer techType;
        boolean z14;
        Integer techType2;
        boolean z15;
        Integer techType3;
        boolean z16;
        Integer techType4;
        boolean z17;
        if (PatchProxy.proxy(new Object[]{dataBus, functionBean, fragmentManager, function2}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class, FunctionBean.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
        Iterator<T> it = roomFunctionList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            BaseRoomFunction baseRoomFunction = (BaseRoomFunction) next;
            if (functionBean != null) {
                int iD = baseRoomFunction.h().getId();
                Integer bizType = functionBean.getBizType();
                if (bizType != null && iD == bizType.intValue()) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            } else {
                z11 = false;
            }
            if (!z11) {
                if (baseRoomFunction.h().getGroupType() == 3) {
                    if (functionBean != null) {
                        int iC = baseRoomFunction.h().getGroupType();
                        Integer techType5 = functionBean.getTechType();
                        if (techType5 != null && iC == techType5.intValue()) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                    } else {
                        z17 = false;
                    }
                    if (!z17) {
                        if (baseRoomFunction.h().getGroupType() != 4) {
                            if (functionBean != null) {
                                int iC2 = baseRoomFunction.h().getGroupType();
                                techType4 = functionBean.getTechType();
                                if (techType4 == null) {
                                    z16 = false;
                                } else {
                                    z16 = true;
                                }
                            } else {
                                z16 = false;
                            }
                            if (!z16) {
                                if (baseRoomFunction.h().getGroupType() != 5) {
                                    if (functionBean != null) {
                                        int iC3 = baseRoomFunction.h().getGroupType();
                                        techType3 = functionBean.getTechType();
                                        if (techType3 == null) {
                                            z15 = false;
                                        } else {
                                            z15 = true;
                                        }
                                    } else {
                                        z15 = false;
                                    }
                                    if (!z15) {
                                        if (baseRoomFunction.h().getGroupType() != 6) {
                                            if (baseRoomFunction.h().getGroupType() == 7) {
                                                if (functionBean != null) {
                                                    int iC4 = baseRoomFunction.h().getGroupType();
                                                    techType = functionBean.getTechType();
                                                    if (techType == null) {
                                                        z13 = false;
                                                    } else {
                                                        z13 = true;
                                                    }
                                                } else {
                                                    z13 = false;
                                                }
                                                if (z13) {
                                                }
                                            }
                                        } else {
                                            if (functionBean != null) {
                                                int iC5 = baseRoomFunction.h().getGroupType();
                                                techType2 = functionBean.getTechType();
                                                if (techType2 == null) {
                                                    z14 = false;
                                                } else {
                                                    z14 = true;
                                                }
                                            } else {
                                                z14 = false;
                                            }
                                            if (!z14) {
                                                if (baseRoomFunction.h().getGroupType() == 7) {
                                                    if (functionBean != null) {
                                                        int iC6 = baseRoomFunction.h().getGroupType();
                                                        techType = functionBean.getTechType();
                                                        if (techType == null) {
                                                            z13 = false;
                                                        } else {
                                                            z13 = true;
                                                        }
                                                    } else {
                                                        z13 = false;
                                                    }
                                                    if (z13) {
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else if (baseRoomFunction.h().getGroupType() != 6) {
                                    if (baseRoomFunction.h().getGroupType() == 7) {
                                        if (functionBean != null) {
                                            int iC7 = baseRoomFunction.h().getGroupType();
                                            techType = functionBean.getTechType();
                                            if (techType == null) {
                                                z13 = false;
                                            } else {
                                                z13 = true;
                                            }
                                        } else {
                                            z13 = false;
                                        }
                                        if (z13) {
                                        }
                                    }
                                } else {
                                    if (functionBean != null) {
                                        int iC8 = baseRoomFunction.h().getGroupType();
                                        techType2 = functionBean.getTechType();
                                        if (techType2 == null) {
                                            z14 = false;
                                        } else {
                                            z14 = true;
                                        }
                                    } else {
                                        z14 = false;
                                    }
                                    if (!z14) {
                                        if (baseRoomFunction.h().getGroupType() == 7) {
                                            if (functionBean != null) {
                                                int iC9 = baseRoomFunction.h().getGroupType();
                                                techType = functionBean.getTechType();
                                                if (techType == null) {
                                                    z13 = false;
                                                } else {
                                                    z13 = true;
                                                }
                                            } else {
                                                z13 = false;
                                            }
                                            if (z13) {
                                            }
                                        }
                                    }
                                }
                            }
                        } else if (baseRoomFunction.h().getGroupType() != 5) {
                            if (functionBean != null) {
                                int iC10 = baseRoomFunction.h().getGroupType();
                                techType3 = functionBean.getTechType();
                                if (techType3 == null) {
                                    z15 = false;
                                } else {
                                    z15 = true;
                                }
                            } else {
                                z15 = false;
                            }
                            if (!z15) {
                                if (baseRoomFunction.h().getGroupType() != 6) {
                                    if (baseRoomFunction.h().getGroupType() == 7) {
                                        if (functionBean != null) {
                                            int iC11 = baseRoomFunction.h().getGroupType();
                                            techType = functionBean.getTechType();
                                            if (techType == null) {
                                                z13 = false;
                                            } else {
                                                z13 = true;
                                            }
                                        } else {
                                            z13 = false;
                                        }
                                        if (z13) {
                                        }
                                    }
                                } else {
                                    if (functionBean != null) {
                                        int iC12 = baseRoomFunction.h().getGroupType();
                                        techType2 = functionBean.getTechType();
                                        if (techType2 == null) {
                                            z14 = false;
                                        } else {
                                            z14 = true;
                                        }
                                    } else {
                                        z14 = false;
                                    }
                                    if (!z14) {
                                        if (baseRoomFunction.h().getGroupType() == 7) {
                                            if (functionBean != null) {
                                                int iC13 = baseRoomFunction.h().getGroupType();
                                                techType = functionBean.getTechType();
                                                if (techType == null) {
                                                    z13 = false;
                                                } else {
                                                    z13 = true;
                                                }
                                            } else {
                                                z13 = false;
                                            }
                                            if (z13) {
                                            }
                                        }
                                    }
                                }
                            }
                        } else if (baseRoomFunction.h().getGroupType() != 6) {
                            if (baseRoomFunction.h().getGroupType() == 7) {
                                if (functionBean != null) {
                                    int iC14 = baseRoomFunction.h().getGroupType();
                                    techType = functionBean.getTechType();
                                    if (techType == null) {
                                        z13 = false;
                                    } else {
                                        z13 = true;
                                    }
                                } else {
                                    z13 = false;
                                }
                                if (z13) {
                                }
                            }
                        } else {
                            if (functionBean != null) {
                                int iC15 = baseRoomFunction.h().getGroupType();
                                techType2 = functionBean.getTechType();
                                if (techType2 == null) {
                                    z14 = false;
                                } else {
                                    z14 = true;
                                }
                            } else {
                                z14 = false;
                            }
                            if (!z14) {
                                if (baseRoomFunction.h().getGroupType() == 7) {
                                    if (functionBean != null) {
                                        int iC16 = baseRoomFunction.h().getGroupType();
                                        techType = functionBean.getTechType();
                                        if (techType == null) {
                                            z13 = false;
                                        } else {
                                            z13 = true;
                                        }
                                    } else {
                                        z13 = false;
                                    }
                                    if (z13) {
                                    }
                                }
                            }
                        }
                    }
                } else if (baseRoomFunction.h().getGroupType() != 4) {
                    if (functionBean != null) {
                        int iC17 = baseRoomFunction.h().getGroupType();
                        techType4 = functionBean.getTechType();
                        if (techType4 == null && iC17 == techType4.intValue()) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                    } else {
                        z16 = false;
                    }
                    if (!z16) {
                        if (baseRoomFunction.h().getGroupType() != 5) {
                            if (functionBean != null) {
                                int iC18 = baseRoomFunction.h().getGroupType();
                                techType3 = functionBean.getTechType();
                                if (techType3 == null) {
                                    z15 = false;
                                } else {
                                    z15 = true;
                                }
                            } else {
                                z15 = false;
                            }
                            if (!z15) {
                                if (baseRoomFunction.h().getGroupType() != 6) {
                                    if (baseRoomFunction.h().getGroupType() == 7) {
                                        if (functionBean != null) {
                                            int iC19 = baseRoomFunction.h().getGroupType();
                                            techType = functionBean.getTechType();
                                            if (techType == null) {
                                                z13 = false;
                                            } else {
                                                z13 = true;
                                            }
                                        } else {
                                            z13 = false;
                                        }
                                        if (z13) {
                                        }
                                    }
                                } else {
                                    if (functionBean != null) {
                                        int iC110 = baseRoomFunction.h().getGroupType();
                                        techType2 = functionBean.getTechType();
                                        if (techType2 == null) {
                                            z14 = false;
                                        } else {
                                            z14 = true;
                                        }
                                    } else {
                                        z14 = false;
                                    }
                                    if (!z14) {
                                        if (baseRoomFunction.h().getGroupType() == 7) {
                                            if (functionBean != null) {
                                                int iC111 = baseRoomFunction.h().getGroupType();
                                                techType = functionBean.getTechType();
                                                if (techType == null) {
                                                    z13 = false;
                                                } else {
                                                    z13 = true;
                                                }
                                            } else {
                                                z13 = false;
                                            }
                                            if (z13) {
                                            }
                                        }
                                    }
                                }
                            }
                        } else if (baseRoomFunction.h().getGroupType() != 6) {
                            if (baseRoomFunction.h().getGroupType() == 7) {
                                if (functionBean != null) {
                                    int iC112 = baseRoomFunction.h().getGroupType();
                                    techType = functionBean.getTechType();
                                    if (techType == null) {
                                        z13 = false;
                                    } else {
                                        z13 = true;
                                    }
                                } else {
                                    z13 = false;
                                }
                                if (z13) {
                                }
                            }
                        } else {
                            if (functionBean != null) {
                                int iC113 = baseRoomFunction.h().getGroupType();
                                techType2 = functionBean.getTechType();
                                if (techType2 == null) {
                                    z14 = false;
                                } else {
                                    z14 = true;
                                }
                            } else {
                                z14 = false;
                            }
                            if (!z14) {
                                if (baseRoomFunction.h().getGroupType() == 7) {
                                    if (functionBean != null) {
                                        int iC114 = baseRoomFunction.h().getGroupType();
                                        techType = functionBean.getTechType();
                                        if (techType == null) {
                                            z13 = false;
                                        } else {
                                            z13 = true;
                                        }
                                    } else {
                                        z13 = false;
                                    }
                                    if (z13) {
                                    }
                                }
                            }
                        }
                    }
                } else if (baseRoomFunction.h().getGroupType() != 5) {
                    if (functionBean != null) {
                        int iC115 = baseRoomFunction.h().getGroupType();
                        techType3 = functionBean.getTechType();
                        if (techType3 == null && iC115 == techType3.intValue()) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                    } else {
                        z15 = false;
                    }
                    if (!z15) {
                        if (baseRoomFunction.h().getGroupType() != 6) {
                            if (baseRoomFunction.h().getGroupType() == 7) {
                                if (functionBean != null) {
                                    int iC116 = baseRoomFunction.h().getGroupType();
                                    techType = functionBean.getTechType();
                                    if (techType == null) {
                                        z13 = false;
                                    } else {
                                        z13 = true;
                                    }
                                } else {
                                    z13 = false;
                                }
                                if (z13) {
                                }
                            }
                        } else {
                            if (functionBean != null) {
                                int iC117 = baseRoomFunction.h().getGroupType();
                                techType2 = functionBean.getTechType();
                                if (techType2 == null) {
                                    z14 = false;
                                } else {
                                    z14 = true;
                                }
                            } else {
                                z14 = false;
                            }
                            if (!z14) {
                                if (baseRoomFunction.h().getGroupType() == 7) {
                                    if (functionBean != null) {
                                        int iC118 = baseRoomFunction.h().getGroupType();
                                        techType = functionBean.getTechType();
                                        if (techType == null) {
                                            z13 = false;
                                        } else {
                                            z13 = true;
                                        }
                                    } else {
                                        z13 = false;
                                    }
                                    if (z13) {
                                    }
                                }
                            }
                        }
                    }
                } else if (baseRoomFunction.h().getGroupType() != 6) {
                    if (baseRoomFunction.h().getGroupType() == 7) {
                        if (functionBean != null) {
                            int iC119 = baseRoomFunction.h().getGroupType();
                            techType = functionBean.getTechType();
                            if (techType == null && iC119 == techType.intValue()) {
                                z13 = true;
                            } else {
                                z13 = false;
                            }
                        } else {
                            z13 = false;
                        }
                        z12 = z13;
                    }
                } else {
                    if (functionBean != null) {
                        int iC1110 = baseRoomFunction.h().getGroupType();
                        techType2 = functionBean.getTechType();
                        if (techType2 == null && iC1110 == techType2.intValue()) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                    } else {
                        z14 = false;
                    }
                    if (!z14) {
                        if (baseRoomFunction.h().getGroupType() == 7) {
                            if (functionBean != null) {
                                int iC1111 = baseRoomFunction.h().getGroupType();
                                techType = functionBean.getTechType();
                                if (techType == null) {
                                    z13 = false;
                                } else {
                                    z13 = true;
                                }
                            } else {
                                z13 = false;
                            }
                            if (z13) {
                            }
                        }
                    }
                }
            }
        } while (!z12);
        BaseRoomFunction baseRoomFunction2 = (BaseRoomFunction) next;
        if (baseRoomFunction2 == null) {
            cn.soulapp.lib.widget.toast.e.u("需更新至最新版本");
            return;
        }
        if (y(functionBean)) {
            baseRoomFunction2.b(dataBus, fragmentManager, function2);
            return;
        }
        if (k(dataBus, functionBean != null ? functionBean.getBizType() : null, functionBean != null ? functionBean.getTechType() : null)) {
            baseRoomFunction2.a(dataBus, fragmentManager, functionBean, function2);
        } else {
            D(baseRoomFunction2, dataBus, functionBean, fragmentManager, function2);
        }
    }

    @Nullable
    public final List<FunctionBean> b(@Nullable SoulHouseDriver soulHouseDriver) {
        RoomDataManager roomDataManagerA1;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soulHouseDriver}, this, changeQuickRedirect, false, 22, new Class[]{SoulHouseDriver.class}, List.class);
        if (patchProxyResultProxy.isSupported) {
            return (List) patchProxyResultProxy.result;
        }
        if (soulHouseDriver == null || (roomDataManagerA1 = soulHouseDriver.a1()) == null) {
            return null;
        }
        return roomDataManagerA1.y();
    }

    @NotNull
    public final String c(@Nullable SoulHouseDriver soulHouseDriver) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soulHouseDriver}, this, changeQuickRedirect, false, 24, new Class[]{SoulHouseDriver.class}, String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        StringBuilder sb2 = new StringBuilder();
        List<FunctionBean> listB = b(soulHouseDriver);
        if (listB != null) {
            for (FunctionBean functionBean : listB) {
                if (functionBean.isOpened()) {
                    if (sb2.length() == 0) {
                        sb2.append(functionBean.getName());
                    } else {
                        sb2.append((char) 12289 + functionBean.getName());
                    }
                }
            }
        }
        String string = sb2.toString();
        kotlin.jvm.internal.v.i(string, "funcStr.toString()");
        return string;
    }

    @NotNull
    public final ArrayList<BaseRoomFunction> d() {
        return roomFunctionList;
    }

    @Nullable
    public final Integer e(@Nullable DataBus dataBus) {
        RoomDataManager roomDataManagerA1;
        ChatRoomModel chatRoomModelV;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 19, new Class[]{DataBus.class}, Integer.class);
        if (patchProxyResultProxy.isSupported) {
            return (Integer) patchProxyResultProxy.result;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        if (soulHouseDriverJ0 == null || (roomDataManagerA1 = soulHouseDriverJ0.a1()) == null || (chatRoomModelV = roomDataManagerA1.v()) == null) {
            return null;
        }
        return Integer.valueOf(chatRoomModelV.groupType);
    }

    @Nullable
    public final Integer f(@Nullable SoulHouseDriver soulHouseDriver) {
        RoomDataManager roomDataManagerA1;
        ChatRoomModel chatRoomModelV;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soulHouseDriver}, this, changeQuickRedirect, false, 20, new Class[]{SoulHouseDriver.class}, Integer.class);
        if (patchProxyResultProxy.isSupported) {
            return (Integer) patchProxyResultProxy.result;
        }
        if (soulHouseDriver == null || (roomDataManagerA1 = soulHouseDriver.a1()) == null || (chatRoomModelV = roomDataManagerA1.v()) == null) {
            return null;
        }
        return Integer.valueOf(chatRoomModelV.groupType);
    }

    @Nullable
    public final String g(@Nullable Integer playType) {
        Object next;
        cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVarH;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{playType}, this, changeQuickRedirect, false, 21, new Class[]{Integer.class}, String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        Iterator<T> it = roomFunctionList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(playType != null && ((BaseRoomFunction) next).h().getId() == playType.intValue()));
        BaseRoomFunction baseRoomFunction = (BaseRoomFunction) next;
        if (baseRoomFunction == null || (hVarH = baseRoomFunction.h()) == null) {
            return null;
        }
        return hVarH.getModeName();
    }

    @Nullable
    public final Integer h(@Nullable DataBus dataBus) {
        RoomDataManager roomDataManagerA1;
        ChatRoomModel chatRoomModelV;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 17, new Class[]{DataBus.class}, Integer.class);
        if (patchProxyResultProxy.isSupported) {
            return (Integer) patchProxyResultProxy.result;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        if (soulHouseDriverJ0 == null || (roomDataManagerA1 = soulHouseDriverJ0.a1()) == null || (chatRoomModelV = roomDataManagerA1.v()) == null) {
            return null;
        }
        return Integer.valueOf(chatRoomModelV.playType);
    }

    @Nullable
    public final Integer i(@Nullable SoulHouseDriver soulHouseDriver) {
        RoomDataManager roomDataManagerA1;
        ChatRoomModel chatRoomModelV;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soulHouseDriver}, this, changeQuickRedirect, false, 18, new Class[]{SoulHouseDriver.class}, Integer.class);
        if (patchProxyResultProxy.isSupported) {
            return (Integer) patchProxyResultProxy.result;
        }
        if (soulHouseDriver == null || (roomDataManagerA1 = soulHouseDriver.a1()) == null || (chatRoomModelV = roomDataManagerA1.v()) == null) {
            return null;
        }
        return Integer.valueOf(chatRoomModelV.playType);
    }

    public final boolean j(@Nullable SoulHouseDriver soulHouseDriver) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soulHouseDriver}, this, changeQuickRedirect, false, 6, new Class[]{SoulHouseDriver.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (n(this, soulHouseDriver, Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154983h.getId()), null, 4, null) || n(this, soulHouseDriver, Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.L.getId()), null, 4, null) || n(this, soulHouseDriver, Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.M.getId()), null, 4, null) || n(this, soulHouseDriver, Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154995t.getId()), null, 4, null) || n(this, soulHouseDriver, Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154991p.getId()), null, 4, null) || n(this, soulHouseDriver, Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.C.getId()), null, 4, null) || n(this, soulHouseDriver, Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.D.getId()), null, 4, null)) {
            return true;
        }
        CommonUtil commonUtil = CommonUtil.f161882a;
        return commonUtil.I0(soulHouseDriver) || commonUtil.E0(soulHouseDriver) || CommonUtil.T0(soulHouseDriver);
    }

    public final boolean k(@Nullable DataBus dataBus, @Nullable Integer playType, @Nullable Integer groupType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus, playType, groupType}, this, changeQuickRedirect, false, 5, new Class[]{DataBus.class, Integer.class, Integer.class}, Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : l(SoulHouseExtensionKt.j0(dataBus), playType, groupType);
    }

    public final boolean l(@Nullable SoulHouseDriver soulHouseDriver, @Nullable Integer playType, @Nullable Integer groupType) {
        RoomDataManager roomDataManagerA1;
        PartyInteractionSlice partyInteractionSlice;
        ChatRoomModel chatRoomModelF;
        FishingMasterSlice fishingMasterSlice;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soulHouseDriver, playType, groupType}, this, changeQuickRedirect, false, 7, new Class[]{SoulHouseDriver.class, Integer.class, Integer.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        int iD = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.P.getId();
        FunctionBean functionBeanW = null;
        str = null;
        String str = null;
        functionBeanW = null;
        if (playType != null && playType.intValue() == iD) {
            if ((soulHouseDriver != null ? (MusicMachineInfo) soulHouseDriver.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.O()) : null) == null) {
                return false;
            }
        } else {
            int iD2 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.U.getId();
            if (playType == null || playType.intValue() != iD2) {
                int iD3 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.V.getId();
                if (playType != null && playType.intValue() == iD3) {
                    cn.soulapp.cpnt_voiceparty.soulhouse.kinggame.i iVar = (cn.soulapp.cpnt_voiceparty.soulhouse.kinggame.i) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.x());
                    if (iVar == null || !iVar.getIsOpened()) {
                        return false;
                    }
                } else {
                    int iD4 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.Q.getId();
                    if (playType != null && playType.intValue() == iD4) {
                        if (soulHouseDriver != null && (chatRoomModelF = SoulHouseExtensionKt.f(soulHouseDriver)) != null) {
                            str = chatRoomModelF.hotTopicTitle;
                        }
                        if (TextUtils.isEmpty(str)) {
                            return false;
                        }
                    } else {
                        int iD5 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.R.getId();
                        if (playType != null && playType.intValue() == iD5) {
                            if ((soulHouseDriver != null ? (MusicMarketInfo) soulHouseDriver.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.Q()) : null) == null) {
                                return false;
                            }
                            MusicMarketInfo musicMarketInfo = (MusicMarketInfo) soulHouseDriver.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.Q());
                            if (!kotlin.jvm.internal.v.e(musicMarketInfo != null ? musicMarketInfo.getState() : null, "1")) {
                                return false;
                            }
                        } else {
                            int iD6 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.W.getId();
                            if (playType == null || playType.intValue() != iD6) {
                                if (soulHouseDriver != null && (roomDataManagerA1 = soulHouseDriver.a1()) != null) {
                                    functionBeanW = roomDataManagerA1.w();
                                }
                                return functionBeanW != null ? kotlin.jvm.internal.v.e(functionBeanW.getBizType(), playType) : kotlin.jvm.internal.v.e(i(soulHouseDriver), playType);
                            }
                            if (soulHouseDriver == null || (partyInteractionSlice = (PartyInteractionSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.E())) == null || !partyInteractionSlice.getOpened()) {
                                return false;
                            }
                        }
                    }
                }
            } else if (soulHouseDriver == null || (fishingMasterSlice = (FishingMasterSlice) SoulHouseExtensionKt.g0(soulHouseDriver, SliceManager.INSTANCE.q())) == null || !fishingMasterSlice.getIsOpen()) {
                return false;
            }
        }
        return true;
    }

    public final boolean o(@Nullable SoulHouseDriver soulHouseDriver) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soulHouseDriver}, this, changeQuickRedirect, false, 28, new Class[]{SoulHouseDriver.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        RoomInfo roomInfo = soulHouseDriver != null ? (RoomInfo) soulHouseDriver.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.k0()) : null;
        return (roomInfo != null && roomInfo.isHFuncMode()) && roomInfo.getCurModeOpen() && cn.soulapp.lib.utils.ext.n.d(roomInfo.getCurGameId()) != cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154986k.getId() && cn.soulapp.lib.utils.ext.n.d(roomInfo.getCurGameId()) != cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154983h.getId();
    }

    public final boolean p(@Nullable Integer playType) {
        Object next;
        cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVarH;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{playType}, this, changeQuickRedirect, false, 29, new Class[]{Integer.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        Iterator<T> it = roomFunctionList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(playType != null && ((BaseRoomFunction) next).h().getId() == playType.intValue()));
        BaseRoomFunction baseRoomFunction = (BaseRoomFunction) next;
        return (baseRoomFunction == null || (hVarH = baseRoomFunction.h()) == null || hVarH.getGroupType() != 2) ? false : true;
    }

    public final boolean q(@Nullable DataBus dataBus) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 35, new Class[]{DataBus.class}, Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : r(SoulHouseExtensionKt.j0(dataBus));
    }

    public final boolean r(@Nullable SoulHouseDriver soulHouseDriver) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soulHouseDriver}, this, changeQuickRedirect, false, 34, new Class[]{SoulHouseDriver.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (t(this, i(soulHouseDriver), null, 2, null)) {
            return true;
        }
        SliceManager.Companion aVar = SliceManager.INSTANCE;
        H5PlaySlice h5PlaySlice = (H5PlaySlice) SoulHouseExtensionKt.g0(soulHouseDriver, aVar.t());
        if (h5PlaySlice != null && h5PlaySlice.T()) {
            return true;
        }
        OtherH5GameSlice otherH5GameSlice = (OtherH5GameSlice) SoulHouseExtensionKt.g0(soulHouseDriver, aVar.C());
        return otherH5GameSlice != null && otherH5GameSlice.S();
    }

    public final boolean s(@Nullable Integer playType, @Nullable Integer groupType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{playType, groupType}, this, changeQuickRedirect, false, 33, new Class[]{Integer.class, Integer.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        int iD = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154983h.getId();
        if (playType == null || playType.intValue() != iD) {
            int iD2 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154993r.getId();
            if (playType == null || playType.intValue() != iD2) {
                int iD3 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.L.getId();
                if (playType == null || playType.intValue() != iD3) {
                    int iD4 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154986k.getId();
                    if (playType == null || playType.intValue() != iD4) {
                        int iD5 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.M.getId();
                        if (playType == null || playType.intValue() != iD5) {
                            int iD6 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154997v.getId();
                            if (playType == null || playType.intValue() != iD6) {
                                int iD7 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.O.getId();
                                if (playType == null || playType.intValue() != iD7) {
                                    int iD8 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154998w.getId();
                                    if (playType == null || playType.intValue() != iD8) {
                                        int iD9 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.C.getId();
                                        if (playType == null || playType.intValue() != iD9) {
                                            int iD10 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.D.getId();
                                            if ((playType == null || playType.intValue() != iD10) && ((groupType == null || groupType.intValue() != 4) && ((groupType == null || groupType.intValue() != 5) && ((groupType == null || groupType.intValue() != 6) && (groupType == null || groupType.intValue() != 7))))) {
                                                return false;
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
        return true;
    }

    public final boolean u(@Nullable Integer groupType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{groupType}, this, changeQuickRedirect, false, 31, new Class[]{Integer.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        return groupType != null && groupType.intValue() == 4;
    }

    public final boolean v(@Nullable DataBus dataBus) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 41, new Class[]{DataBus.class}, Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : x(h(dataBus));
    }

    public final boolean w(@Nullable SoulHouseDriver soulHouseDriver) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{soulHouseDriver}, this, changeQuickRedirect, false, 40, new Class[]{SoulHouseDriver.class}, Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : x(i(soulHouseDriver));
    }

    public final boolean x(@Nullable Integer playType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{playType}, this, changeQuickRedirect, false, 39, new Class[]{Integer.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (cn.soulapp.cpnt_voiceparty.util.e.f162158a.L()) {
            return playType != null && playType.intValue() == cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.F.getId();
        }
        return false;
    }

    public final boolean z(@Nullable DataBus dataBus) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 38, new Class[]{DataBus.class}, Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : B(h(dataBus));
    }
}