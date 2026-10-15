package cn.soulapp.cpnt_voiceparty.function;

import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.cpnt_voiceparty.bean.FunctionBean;
import cn.soulapp.cpnt_voiceparty.bean.OperationResult;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import cn.soulapp.cpnt_voiceparty.mvvm.GameViewModel;
import cn.soulapp.cpnt_voiceparty.mvvm.TurtleSoupViewModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseContainer;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomPlayFunctionSecDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.kinggame.entrance.KingGameHelper;
import cn.soulapp.cpnt_voiceparty.soulhouse.playmode.ModeConflictConfiguration;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.BlockMessage;
import cn.soulapp.cpnt_voiceparty.util.CommonUtil;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.umeng.analytics.pro.bt;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomFunctionDialogHelper.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B+\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0012¢\u0006\u0004\b&\u0010'J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\u0006\u0010\b\u001a\u00020\u0006J\u0010\u0010\t\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002R\u0016\u0010\r\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u0018\u001a\u0004\b#\u0010$¨\u0006("}, d2 = {"Lcn/soulapp/cpnt_voiceparty/function/RoomFunctionDialogHelper;", "", "Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "functionBean", "", "o", "Lkotlin/w;", "k", "p", bt.aF, "Lcn/soul/android/base/block_frame/databus/DataBus;", "a", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "Landroidx/fragment/app/DialogFragment;", ExpcompatUtils.COMPAT_VALUE_780, "Landroidx/fragment/app/DialogFragment;", "dialog", "Lkotlin/Function0;", "c", "Lkotlin/jvm/functions/Function0;", "dismissCb", "Lcn/soulapp/cpnt_voiceparty/mvvm/GameViewModel;", "d", "Lkotlin/Lazy;", "m", "()Lcn/soulapp/cpnt_voiceparty/mvvm/GameViewModel;", "functionViewModel", "Lcn/soulapp/cpnt_voiceparty/mvvm/TurtleSoupViewModel;", l11l11I1111l.l111l1111lIl, "n", "()Lcn/soulapp/cpnt_voiceparty/mvvm/TurtleSoupViewModel;", "turtleSoupViewModel", "Landroidx/fragment/app/FragmentManager;", "f", "l", "()Landroidx/fragment/app/FragmentManager;", "childFragmentManager", AppAgent.CONSTRUCT, "(Lcn/soul/android/base/block_frame/databus/DataBus;Landroidx/fragment/app/DialogFragment;Lkotlin/jvm/functions/Function0;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class RoomFunctionDialogHelper {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private final DataBus dataBus;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final DialogFragment dialog;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private final Function0<kotlin.w> dismissCb;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy functionViewModel;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy turtleSoupViewModel;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy childFragmentManager;

    public RoomFunctionDialogHelper(@Nullable DataBus dataBus, @NotNull DialogFragment dialog, @Nullable Function0<kotlin.w> function0) {
        kotlin.jvm.internal.v.j(dialog, "dialog");
        this.dataBus = dataBus;
        this.dialog = dialog;
        this.dismissCb = function0;
        this.functionViewModel = kotlin.j.b(new Function0<GameViewModel>() { // from class: cn.soulapp.cpnt_voiceparty.function.RoomFunctionDialogHelper$functionViewModel$2
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GameViewModel invoke() {
                PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], GameViewModel.class);
                return patchProxyResultProxy.isSupported ? (GameViewModel) patchProxyResultProxy.result : (GameViewModel) new ViewModelProvider(this.this$0.dialog).get(GameViewModel.class);
            }
        });
        this.turtleSoupViewModel = kotlin.j.b(new Function0<TurtleSoupViewModel>() { // from class: cn.soulapp.cpnt_voiceparty.function.RoomFunctionDialogHelper$turtleSoupViewModel$2
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TurtleSoupViewModel invoke() {
                PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], TurtleSoupViewModel.class);
                return patchProxyResultProxy.isSupported ? (TurtleSoupViewModel) patchProxyResultProxy.result : (TurtleSoupViewModel) new ViewModelProvider(this.this$0.dialog).get(TurtleSoupViewModel.class);
            }
        });
        this.childFragmentManager = kotlin.j.b(new Function0<FragmentManager>() { // from class: cn.soulapp.cpnt_voiceparty.function.RoomFunctionDialogHelper$childFragmentManager$2
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentManager invoke() {
                PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], FragmentManager.class);
                return patchProxyResultProxy.isSupported ? (FragmentManager) patchProxyResultProxy.result : this.this$0.dialog.getChildFragmentManager();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.dialog.dismiss();
        Function0<kotlin.w> function0 = this.dismissCb;
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FragmentManager l() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], FragmentManager.class);
        return patchProxyResultProxy.isSupported ? (FragmentManager) patchProxyResultProxy.result : (FragmentManager) this.childFragmentManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GameViewModel m() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], GameViewModel.class);
        return patchProxyResultProxy.isSupported ? (GameViewModel) patchProxyResultProxy.result : (GameViewModel) this.functionViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TurtleSoupViewModel n() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], TurtleSoupViewModel.class);
        return patchProxyResultProxy.isSupported ? (TurtleSoupViewModel) patchProxyResultProxy.result : (TurtleSoupViewModel) this.turtleSoupViewModel.getValue();
    }

    private final boolean o(FunctionBean functionBean) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{functionBean}, this, changeQuickRedirect, false, 7, new Class[]{FunctionBean.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (functionBean != null) {
            Integer bizType = functionBean.getBizType();
            cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.W;
            int id2 = hVar.getId();
            if (bizType == null || bizType.intValue() != id2 || b0.f142548a.k(this.dataBus, functionBean.getBizType(), functionBean.getTechType())) {
                return false;
            }
            final SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
            ArrayList<FunctionBean> arrayListG = ModeConflictConfiguration.f154904a.g(soulHouseDriverJ0, hVar);
            if (arrayListG == null || arrayListG.isEmpty()) {
                return false;
            }
            CommonUtil commonUtil = CommonUtil.f161882a;
            DataBus dataBus = this.dataBus;
            String name = functionBean.getName();
            if (name == null) {
                name = "";
            }
            commonUtil.q(dataBus, arrayListG, name, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.RoomFunctionDialogHelper$interceptPartyInteractionMutexSwitch$1
                public static ChangeQuickRedirect changeQuickRedirect;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    cn.soulapp.cpnt_voiceparty.soulhouse.partyinteraction.e eVar = cn.soulapp.cpnt_voiceparty.soulhouse.partyinteraction.e.f154827a;
                    SoulHouseDriver soulHouseDriver = soulHouseDriverJ0;
                    cn.soulapp.cpnt_voiceparty.soulhouse.partyinteraction.e.d(eVar, soulHouseDriver != null ? SoulHouseExtensionKt.P(soulHouseDriver) : null, null, "play_panel", true, this.dataBus, 2, null);
                    this.k();
                }
            });
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(RoomFunctionDialogHelper this$0, RequestResult requestResult) {
        if (PatchProxy.proxy(new Object[]{this$0, requestResult}, null, changeQuickRedirect, true, 9, new Class[]{RoomFunctionDialogHelper.class, RequestResult.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(RoomFunctionDialogHelper this$0, FunctionBean functionBean) {
        if (PatchProxy.proxy(new Object[]{this$0, functionBean}, null, changeQuickRedirect, true, 10, new Class[]{RoomFunctionDialogHelper.class, FunctionBean.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(RoomFunctionDialogHelper this$0, RequestResult requestResult) {
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[]{this$0, requestResult}, null, changeQuickRedirect, true, 11, new Class[]{RoomFunctionDialogHelper.class, RequestResult.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        if (requestResult != null && !requestResult.getResult()) {
            z11 = true;
        }
        if (z11) {
            ExtensionsKt.toast(requestResult.getFailedMsg());
        }
        this$0.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(RoomFunctionDialogHelper this$0, OperationResult operationResult) {
        if (PatchProxy.proxy(new Object[]{this$0, operationResult}, null, changeQuickRedirect, true, 12, new Class[]{RoomFunctionDialogHelper.class, OperationResult.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.k();
    }

    public final void p() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        m().f().observe(this.dialog, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.function.x
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                RoomFunctionDialogHelper.q(this.f142550a, (RequestResult) obj);
            }
        });
        n().l().observe(this.dialog, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.function.y
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                RoomFunctionDialogHelper.r(this.f142551a, (FunctionBean) obj);
            }
        });
        m().h().observe(this.dialog, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.function.z
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                RoomFunctionDialogHelper.s(this.f142552a, (RequestResult) obj);
            }
        });
        m().g().observe(this.dialog, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.function.a0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                RoomFunctionDialogHelper.t(this.f142547a, (OperationResult) obj);
            }
        });
    }

    public final void u(@Nullable final FunctionBean functionBean) {
        if (PatchProxy.proxy(new Object[]{functionBean}, this, changeQuickRedirect, false, 6, new Class[]{FunctionBean.class}, Void.TYPE).isSupported) {
            return;
        }
        if (functionBean != null && functionBean.isTypeGroup()) {
            RoomPlayFunctionSecDialog roomPlayFunctionSecDialogA = RoomPlayFunctionSecDialog.INSTANCE.a(this.dataBus, functionBean, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.RoomFunctionDialogHelper$openFunction$1
                public static ChangeQuickRedirect changeQuickRedirect;

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
                    this.this$0.k();
                }
            });
            FragmentManager childFragmentManager = l();
            kotlin.jvm.internal.v.i(childFragmentManager, "childFragmentManager");
            roomPlayFunctionSecDialogA.show(childFragmentManager, "RoomPlayFunctionSecDialog");
            return;
        }
        if (o(functionBean)) {
            return;
        }
        b0 b0Var = b0.f142548a;
        DataBus dataBus = this.dataBus;
        FragmentManager childFragmentManager2 = l();
        kotlin.jvm.internal.v.i(childFragmentManager2, "childFragmentManager");
        b0Var.a(dataBus, functionBean, childFragmentManager2, new Function2<Integer, Boolean, kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.RoomFunctionDialogHelper$openFunction$2
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ kotlin.w mo3invoke(Integer num, Boolean bool) {
                invoke(num.intValue(), bool.booleanValue());
                return kotlin.w.f231958a;
            }

            public final void invoke(int i11, boolean z11) {
                SoulHouseContainer soulHouseContainerP0;
                SoulHouseContainer soulHouseContainerP1;
                if (PatchProxy.proxy(new Object[]{new Integer(i11), new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Integer.TYPE, Boolean.TYPE}, Void.TYPE).isSupported) {
                    return;
                }
                if (i11 == 1) {
                    FunctionBean functionBean2 = functionBean;
                    Integer bizType = functionBean2 != null ? functionBean2.getBizType() : null;
                    int id2 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154984i.getId();
                    if (bizType != null && bizType.intValue() == id2) {
                        this.m().c(this.dataBus);
                        return;
                    }
                    int id3 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.Q.getId();
                    if (bizType != null && bizType.intValue() == id3) {
                        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
                        if (soulHouseDriverJ0 != null && (soulHouseContainerP0 = soulHouseDriverJ0.p0()) != null) {
                            soulHouseContainerP0.C(BlockMessage.MSG_CREATE_RANDOM_TOPIC);
                        }
                        this.k();
                        return;
                    }
                    int id4 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.P.getId();
                    if (bizType != null && bizType.intValue() == id4) {
                        this.m().o(this.dataBus, Boolean.valueOf(functionBean.isOpened()));
                        return;
                    }
                    cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.S;
                    int id5 = hVar.getId();
                    if (bizType != null && bizType.intValue() == id5) {
                        this.m().i(this.dataBus, Boolean.valueOf(functionBean.isOpened()), hVar.getId());
                        return;
                    }
                    cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar2 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.U;
                    int id6 = hVar2.getId();
                    if (bizType != null && bizType.intValue() == id6) {
                        this.m().i(this.dataBus, Boolean.valueOf(functionBean.isOpened()), hVar2.getId());
                        return;
                    }
                    cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar3 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.T;
                    int id7 = hVar3.getId();
                    if (bizType != null && bizType.intValue() == id7) {
                        this.m().i(this.dataBus, Boolean.valueOf(functionBean.isOpened()), hVar3.getId());
                        return;
                    }
                    int id8 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.R.getId();
                    if (bizType != null && bizType.intValue() == id8) {
                        this.m().q(this.dataBus, 2);
                        return;
                    }
                    int id9 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.K.getId();
                    if (bizType != null && bizType.intValue() == id9) {
                        this.n().p(this.dataBus, false, functionBean);
                        return;
                    }
                    cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar4 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.V;
                    int id10 = hVar4.getId();
                    if (bizType != null && bizType.intValue() == id10) {
                        this.m().i(this.dataBus, Boolean.valueOf(functionBean.isOpened()), hVar4.getId());
                        return;
                    }
                    cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar5 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.W;
                    int id11 = hVar5.getId();
                    if (bizType != null && bizType.intValue() == id11) {
                        this.m().i(this.dataBus, Boolean.valueOf(functionBean.isOpened()), hVar5.getId());
                        return;
                    }
                    GameViewModel gameViewModelM = this.m();
                    DataBus dataBus2 = this.dataBus;
                    FunctionBean functionBean3 = functionBean;
                    gameViewModelM.p(dataBus2, false, String.valueOf(functionBean3 != null ? functionBean3.getBizType() : null));
                    return;
                }
                if (i11 != 2) {
                    if (i11 != 3) {
                        return;
                    }
                    GameViewModel gameViewModelM2 = this.m();
                    DataBus dataBus3 = this.dataBus;
                    FunctionBean functionBean4 = functionBean;
                    Integer type = functionBean4 != null ? functionBean4.getType() : null;
                    FunctionBean functionBean5 = functionBean;
                    GameViewModel.n(gameViewModelM2, dataBus3, type, functionBean5 != null ? functionBean5.getBizType() : null, null, 8, null);
                    return;
                }
                FunctionBean functionBean6 = functionBean;
                Integer bizType2 = functionBean6 != null ? functionBean6.getBizType() : null;
                int id12 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154984i.getId();
                if (bizType2 != null && bizType2.intValue() == id12) {
                    this.m().k(this.dataBus);
                    return;
                }
                int id13 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.R.getId();
                if (bizType2 != null && bizType2.intValue() == id13) {
                    this.m().q(this.dataBus, 1);
                    return;
                }
                int id14 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.P.getId();
                if (bizType2 != null && bizType2.intValue() == id14) {
                    GameViewModel gameViewModelM3 = this.m();
                    DataBus dataBus4 = this.dataBus;
                    FunctionBean functionBean7 = functionBean;
                    gameViewModelM3.o(dataBus4, functionBean7 != null ? Boolean.valueOf(functionBean7.isOpened()) : null);
                    return;
                }
                cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar6 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.S;
                int id15 = hVar6.getId();
                if (bizType2 != null && bizType2.intValue() == id15) {
                    GameViewModel gameViewModelM4 = this.m();
                    DataBus dataBus5 = this.dataBus;
                    FunctionBean functionBean8 = functionBean;
                    gameViewModelM4.i(dataBus5, functionBean8 != null ? Boolean.valueOf(functionBean8.isOpened()) : null, hVar6.getId());
                    return;
                }
                cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar7 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.U;
                int id16 = hVar7.getId();
                if (bizType2 != null && bizType2.intValue() == id16) {
                    GameViewModel gameViewModelM5 = this.m();
                    DataBus dataBus6 = this.dataBus;
                    FunctionBean functionBean9 = functionBean;
                    gameViewModelM5.i(dataBus6, functionBean9 != null ? Boolean.valueOf(functionBean9.isOpened()) : null, hVar7.getId());
                    return;
                }
                cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar8 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.T;
                int id17 = hVar8.getId();
                if (bizType2 != null && bizType2.intValue() == id17) {
                    GameViewModel gameViewModelM6 = this.m();
                    DataBus dataBus7 = this.dataBus;
                    FunctionBean functionBean10 = functionBean;
                    gameViewModelM6.i(dataBus7, functionBean10 != null ? Boolean.valueOf(functionBean10.isOpened()) : null, hVar8.getId());
                    return;
                }
                int id18 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.K.getId();
                if (bizType2 != null && bizType2.intValue() == id18) {
                    this.n().p(this.dataBus, true, functionBean);
                    return;
                }
                int id19 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.Q.getId();
                if (bizType2 != null && bizType2.intValue() == id19) {
                    SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
                    if (soulHouseDriverJ1 != null && (soulHouseContainerP1 = soulHouseDriverJ1.p0()) != null) {
                        soulHouseContainerP1.C(BlockMessage.MSG_CREATE_RANDOM_TOPIC);
                    }
                    this.k();
                    return;
                }
                int id20 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.V.getId();
                if (bizType2 != null && bizType2.intValue() == id20) {
                    KingGameHelper kingGameHelper = KingGameHelper.f150992a;
                    DataBus dataBus8 = this.dataBus;
                    FragmentManager childFragmentManager3 = this.l();
                    kotlin.jvm.internal.v.i(childFragmentManager3, "childFragmentManager");
                    final RoomFunctionDialogHelper roomFunctionDialogHelper = this;
                    final FunctionBean functionBean11 = functionBean;
                    kingGameHelper.c(dataBus8, childFragmentManager3, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.RoomFunctionDialogHelper$openFunction$2.1
                        public static ChangeQuickRedirect changeQuickRedirect;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                            GameViewModel gameViewModelM7 = roomFunctionDialogHelper.m();
                            DataBus dataBus9 = roomFunctionDialogHelper.dataBus;
                            FunctionBean functionBean12 = functionBean11;
                            gameViewModelM7.i(dataBus9, functionBean12 != null ? Boolean.valueOf(functionBean12.isOpened()) : null, cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.V.getId());
                        }
                    });
                    return;
                }
                int id21 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.W.getId();
                if (bizType2 != null && bizType2.intValue() == id21) {
                    cn.soulapp.cpnt_voiceparty.soulhouse.partyinteraction.e eVar = cn.soulapp.cpnt_voiceparty.soulhouse.partyinteraction.e.f154827a;
                    SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(this.dataBus);
                    cn.soulapp.cpnt_voiceparty.soulhouse.partyinteraction.e.d(eVar, soulHouseDriverJ2 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ2) : null, null, "play_panel", false, this.dataBus, 10, null);
                    this.k();
                    return;
                }
                GameViewModel gameViewModelM7 = this.m();
                DataBus dataBus9 = this.dataBus;
                FunctionBean functionBean12 = functionBean;
                gameViewModelM7.p(dataBus9, true, String.valueOf(functionBean12 != null ? functionBean12.getBizType() : null));
            }
        });
    }

    public /* synthetic */ RoomFunctionDialogHelper(DataBus dataBus, DialogFragment dialogFragment, Function0 function0, int i11, kotlin.jvm.internal.q qVar) {
        this(dataBus, dialogFragment, (i11 & 4) != 0 ? null : function0);
    }
}