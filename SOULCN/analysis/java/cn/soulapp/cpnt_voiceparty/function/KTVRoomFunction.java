package cn.soulapp.cpnt_voiceparty.function;

import androidx.fragment.app.FragmentManager;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.analyticsV2.Const;
import cn.soulapp.android.lib.analyticsV2.SoulAnalyticsV2;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.util.CommonUtil;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ss.texturerender.TextureRenderKeys;
import kotlin.Metadata;
import kotlin.collections.r0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: KTVRoomFunction.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016JT\u0010\u0012\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b28\u0010\u0011\u001a4\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0002\u0018\u00010\nH\u0016JT\u0010\u0013\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b28\u0010\u0011\u001a4\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0002\u0018\u00010\nH\u0016J\u0012\u0010\u0014\u001a\u00020\u000f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\u0017"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/function/KTVRoomFunction;", "Lcn/soulapp/cpnt_voiceparty/function/BaseRoomFunction;", "Lkotlin/w;", "j", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/h;", "h", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "operation", "", "isNative", TextureRenderKeys.KEY_IS_CALLBACK, "f", "g", "d", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class KTVRoomFunction extends BaseRoomFunction {
    public static ChangeQuickRedirect changeQuickRedirect;

    private final void j() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulAnalyticsV2.getInstance().onEvent(Const.EventType.CLICK, "GroupChatDetail_KTV", r0.j());
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    public boolean d(@Nullable DataBus dataBus) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 4, new Class[]{DataBus.class}, Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : !CommonUtil.f161882a.H1(SoulHouseExtensionKt.j0(dataBus));
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    public void f(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable final Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
        if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
        CommonUtil.f161882a.n2("比赛正在进行中，无法关闭模式，是否结束比赛？", fragmentManager, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.KTVRoomFunction$dealFunctionClose$1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.w invoke() {
                invoke2();
                return kotlin.w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Function2<Integer, Boolean, kotlin.w> function3;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (function3 = function2) == null) {
                    return;
                }
                function3.mo3invoke(1, Boolean.valueOf(this.i()));
            }
        });
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    public void g(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
        if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 3, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
        super.g(dataBus, fragmentManager, function2);
        j();
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    @NotNull
    public cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h h() {
        return cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154983h;
    }
}