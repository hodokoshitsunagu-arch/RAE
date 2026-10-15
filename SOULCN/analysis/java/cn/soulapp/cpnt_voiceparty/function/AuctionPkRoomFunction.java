package cn.soulapp.cpnt_voiceparty.function;

import androidx.fragment.app.FragmentManager;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.lib_dialog.SoulThemeDialog;
import cn.soulapp.cpnt_voiceparty.bean.AuctionPkInfo;
import cn.soulapp.cpnt_voiceparty.bean.AuctionPkRoundInfo;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.slice.SliceManager;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.ss.texturerender.TextureRenderKeys;
import com.walid.rxretrofit.HttpSubscriber;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: AuctionPkRoomFunction.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016JT\u0010\u0012\u001a\u00020\u00102\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\b28\u0010\u0011\u001a4\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\nH\u0016J\u0012\u0010\u0013\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016JT\u0010\u0014\u001a\u00020\u00102\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\b28\u0010\u0011\u001a4\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\nH\u0016¨\u0006\u0017"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/function/AuctionPkRoomFunction;", "Lcn/soulapp/cpnt_voiceparty/function/BaseRoomFunction;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/h;", "h", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "", "d", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "operation", "isNative", "Lkotlin/w;", TextureRenderKeys.KEY_IS_CALLBACK, "f", l11l11I1111l.l111l1111lIl, "g", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class AuctionPkRoomFunction extends BaseRoomFunction {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    public boolean d(@Nullable DataBus dataBus) {
        Integer state;
        cn.soulapp.cpnt_voiceparty.soulhouse.auctionpk.h0 h0Var;
        AuctionPkInfo auctionPkInfo;
        boolean z11 = false;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        AuctionPkRoundInfo pkRoundInfo = (soulHouseDriverJ0 == null || (h0Var = (cn.soulapp.cpnt_voiceparty.soulhouse.auctionpk.h0) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.c())) == null || (auctionPkInfo = h0Var.getAuctionPkInfo()) == null) ? null : auctionPkInfo.getPkRoundInfo();
        if (pkRoundInfo != null && (state = pkRoundInfo.getState()) != null && state.intValue() == 2) {
            z11 = true;
        }
        return !z11;
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    public boolean e(@Nullable DataBus dataBus) {
        return false;
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    public void f(@Nullable final DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
        if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 3, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
        SoulThemeDialog.Companion companion = SoulThemeDialog.INSTANCE;
        SoulThemeDialog.AttributeConfig attributeConfig = new SoulThemeDialog.AttributeConfig();
        attributeConfig.I("当前正在进行拍战，暂不支持关闭，请等本局结束后进行操作或者点击流拍，结束本局");
        attributeConfig.G(true);
        attributeConfig.w("取消");
        attributeConfig.y("流拍");
        attributeConfig.A(true);
        attributeConfig.C(true);
        attributeConfig.x(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.AuctionPkRoomFunction$dealFunctionClose$1$1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX INFO: compiled from: AuctionPkRoomFunction.kt */
            @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00052\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/function/AuctionPkRoomFunction$dealFunctionClose$1$1$a", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
            public static final class a extends HttpSubscriber<RequestResult<Object>> {
                public static ChangeQuickRedirect changeQuickRedirect;

                a() {
                }

                @Override // com.walid.rxretrofit.HttpSubscriber
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void success(@Nullable RequestResult<Object> requestResult) {
                    if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    if (requestResult != null && requestResult.getResult()) {
                        return;
                    }
                    cn.soulapp.lib.widget.toast.e.u(requestResult != null ? requestResult.getResMsg() : null);
                }

                @Override // com.walid.rxretrofit.HttpSubscriber
                public void error(int i11, @Nullable String str) {
                }
            }

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
                cn.soulapp.cpnt_voiceparty.soulhouse.auctionpk.h0 h0Var;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
                String roundId = null;
                String strP = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null;
                h30.g gVar = h30.g.f225309a;
                SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(dataBus);
                if (soulHouseDriverJ1 != null && (h0Var = (cn.soulapp.cpnt_voiceparty.soulhouse.auctionpk.h0) SoulHouseExtensionKt.g0(soulHouseDriverJ1, SliceManager.INSTANCE.c())) != null) {
                    roundId = h0Var.getRoundId();
                }
                gVar.r(strP, roundId).subscribe(new a());
            }
        });
        companion.a(attributeConfig).A(fragmentManager);
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    public void g(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable final Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
        if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 4, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
        SoulThemeDialog.Companion companion = SoulThemeDialog.INSTANCE;
        SoulThemeDialog.AttributeConfig attributeConfig = new SoulThemeDialog.AttributeConfig();
        attributeConfig.I("是否开启拍战模式");
        attributeConfig.G(true);
        attributeConfig.w("暂不开启");
        attributeConfig.y("确认开启");
        attributeConfig.A(true);
        attributeConfig.C(true);
        attributeConfig.x(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.AuctionPkRoomFunction$dealFunctionOpen$1$1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final kotlin.w invoke() {
                PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], kotlin.w.class);
                if (patchProxyResultProxy.isSupported) {
                    return (kotlin.w) patchProxyResultProxy.result;
                }
                Function2<Integer, Boolean, kotlin.w> function3 = function2;
                if (function3 == null) {
                    return null;
                }
                function3.mo3invoke(2, Boolean.valueOf(this.i()));
                return kotlin.w.f231958a;
            }
        });
        companion.a(attributeConfig).A(fragmentManager);
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    @NotNull
    public cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h h() {
        return cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154989n;
    }
}