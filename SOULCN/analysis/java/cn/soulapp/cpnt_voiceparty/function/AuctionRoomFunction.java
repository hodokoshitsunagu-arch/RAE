package cn.soulapp.cpnt_voiceparty.function;

import android.text.TextUtils;
import androidx.fragment.app.FragmentManager;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.lib_dialog.SoulThemeDialog;
import cn.soulapp.android.chatroom.bean.ChatRoomModel;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.util.CommonUtil;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.ss.texturerender.TextureRenderKeys;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: AuctionRoomFunction.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0017JL\u0010\r\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u000228\u0010\f\u001a4\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\u0012\u0010\u0010\u001a\u00020\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016JT\u0010\u0013\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0012\u001a\u00020\u001128\u0010\f\u001a4\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0004H\u0016J\u0012\u0010\u0014\u001a\u00020\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016JT\u0010\u0015\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0012\u001a\u00020\u001128\u0010\f\u001a4\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0004H\u0016¨\u0006\u0018"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/function/AuctionRoomFunction;", "Lcn/soulapp/cpnt_voiceparty/function/BaseRoomFunction;", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "operation", "", "isNative", "Lkotlin/w;", TextureRenderKeys.KEY_IS_CALLBACK, "k", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/h;", "h", l11l11I1111l.l111l1111lIl, "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "g", "d", "f", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class AuctionRoomFunction extends BaseRoomFunction {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(DataBus dataBus, Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
        ChatRoomModel chatRoomModelF;
        if (PatchProxy.proxy(new Object[]{dataBus, function2}, this, changeQuickRedirect, false, 3, new Class[]{DataBus.class, Function2.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        if (!TextUtils.isEmpty((soulHouseDriverJ0 == null || (chatRoomModelF = SoulHouseExtensionKt.f(soulHouseDriverJ0)) == null) ? null : chatRoomModelF.hotTopicTitle)) {
            ExtensionsKt.toast("当前正在畅聊话题哦～先关闭话题在开启试试吧～");
        } else if (function2 != null) {
            function2.mo3invoke(2, Boolean.valueOf(i()));
        }
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    public boolean d(@Nullable DataBus dataBus) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 4, new Class[]{DataBus.class}, Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : !CommonUtil.f161882a.G1(SoulHouseExtensionKt.j0(dataBus));
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    public boolean e(@Nullable DataBus dataBus) {
        return false;
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    public void f(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable final Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
        if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 5, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
        CommonUtil.f161882a.l2(SoulHouseExtensionKt.j0(dataBus), false, fragmentManager, (16 & 8) != 0 ? null : new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.AuctionRoomFunction$dealFunctionClose$1
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
        }, (16 & 16) != 0 ? null : null);
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    public void g(@Nullable final DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable final Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
        if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
        if (b0.m(b0.f142548a, dataBus, Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154989n.getId()), null, 4, null)) {
            k(dataBus, function2);
            return;
        }
        SoulThemeDialog.Companion companion = SoulThemeDialog.INSTANCE;
        SoulThemeDialog.AttributeConfig attributeConfig = new SoulThemeDialog.AttributeConfig();
        attributeConfig.I("是否开启拍拍模式？");
        attributeConfig.G(true);
        attributeConfig.w("再想想");
        attributeConfig.y("确定");
        attributeConfig.A(true);
        attributeConfig.C(true);
        attributeConfig.x(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.AuctionRoomFunction$dealFunctionOpen$1$1
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
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                this.this$0.k(dataBus, function2);
            }
        });
        companion.a(attributeConfig).A(fragmentManager);
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    @NotNull
    public cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h h() {
        return cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154985j;
    }
}