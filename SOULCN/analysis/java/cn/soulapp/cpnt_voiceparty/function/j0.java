package cn.soulapp.cpnt_voiceparty.function;

import androidx.fragment.app.FragmentManager;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.lib_dialog.SoulThemeDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.slice.SliceManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderSlice;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ss.texturerender.TextureRenderKeys;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: ThrowingThunderRoomFunction.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016JT\u0010\u0012\u001a\u00020\u00102\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\b28\u0010\u0011\u001a4\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\nH\u0016¨\u0006\u0015"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/function/j0;", "Lcn/soulapp/cpnt_voiceparty/function/BaseRoomFunction;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/h;", "h", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "", "d", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "operation", "isNative", "Lkotlin/w;", TextureRenderKeys.KEY_IS_CALLBACK, "f", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class j0 extends BaseRoomFunction {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    public boolean d(@Nullable DataBus dataBus) {
        ThrowingThunderSlice throwingThunderSlice;
        ThrowingThunderInfo throwingThunderInfo;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        if (soulHouseDriverJ0 == null || (throwingThunderSlice = (ThrowingThunderSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.P())) == null || (throwingThunderInfo = throwingThunderSlice.getThrowingThunderInfo()) == null) {
            return false;
        }
        return throwingThunderInfo.canCloseGame();
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    public void f(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
        if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 3, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
        SoulThemeDialog.Companion companion = SoulThemeDialog.INSTANCE;
        SoulThemeDialog.AttributeConfig attributeConfig = new SoulThemeDialog.AttributeConfig();
        attributeConfig.F(true);
        attributeConfig.I("暂不支持关闭");
        attributeConfig.z("当前正在进行冒险之雷玩法，暂不支持关闭，请等本局结束后进行操作");
        attributeConfig.v(false);
        attributeConfig.H(true);
        attributeConfig.y("我知道了");
        attributeConfig.C(true);
        attributeConfig.A(true);
        companion.a(attributeConfig).A(fragmentManager);
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    @NotNull
    public cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h h() {
        return cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154992q;
    }
}