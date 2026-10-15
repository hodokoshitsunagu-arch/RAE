package cn.soulapp.cpnt_voiceparty.function;

import androidx.fragment.app.FragmentManager;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.lib_dialog.SoulDialog;
import cn.soul.lib_dialog.SoulThemeDialog;
import cn.soul.lib_dialog.util.SoulDialogType;
import cn.soulapp.cpnt_voiceparty.bean.FunctionBean;
import cn.soulapp.cpnt_voiceparty.util.CommonUtil;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.ss.texturerender.TextureRenderKeys;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: BaseRoomFunction.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\b\u0010\u0003\u001a\u00020\u0002H&J^\u0010\u0013\u001a\u00020\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b28\u0010\u0012\u001a4\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\nH\u0016Jx\u0010\u0017\u001a\u00020\u00112\u001a\u0010\u0016\u001a\u0016\u0012\u0004\u0012\u00020\b\u0018\u00010\u0014j\n\u0012\u0004\u0012\u00020\b\u0018\u0001`\u00152\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u000628\u0010\u0012\u001a4\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\nJT\u0010\u0018\u001a\u00020\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u000628\u0010\u0012\u001a4\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\nH\u0016J\u0012\u0010\u0019\u001a\u00020\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u001a\u001a\u00020\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016JT\u0010\u001b\u001a\u00020\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u000628\u0010\u0012\u001a4\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\nH\u0016JT\u0010\u001c\u001a\u00020\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u000628\u0010\u0012\u001a4\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\nH\u0016J\b\u0010\u001d\u001a\u00020\u000fH\u0016¨\u0006 "}, d2 = {"Lcn/soulapp/cpnt_voiceparty/function/BaseRoomFunction;", "", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/h;", "h", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "functionBean", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "operation", "", "isNative", "Lkotlin/w;", TextureRenderKeys.KEY_IS_CALLBACK, "a", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "conflictFuncList", "c", ExpcompatUtils.COMPAT_VALUE_780, "d", l11l11I1111l.l111l1111lIl, "f", "g", "i", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public abstract class BaseRoomFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: BaseRoomFunction.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\t"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/function/BaseRoomFunction$a;", "", "", "ROOM_FUNCTION_OPERATION_CLOSE", "I", "ROOM_FUNCTION_OPERATION_OPEN", "ROOM_FUNCTION_OPERATION_SWITCH", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.q qVar) {
            this();
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 7, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    public void a(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable FunctionBean functionBean, @Nullable final Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
        StringBuilder sb2;
        String str;
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, functionBean, function2}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class, FragmentManager.class, FunctionBean.class, Function2.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
        if (!d(dataBus)) {
            f(dataBus, fragmentManager, function2);
            return;
        }
        SoulDialog.Companion aVar = SoulDialog.INSTANCE;
        SoulDialog.AttributeConfig attributeConfig = new SoulDialog.AttributeConfig();
        attributeConfig.W(SoulDialogType.P35);
        if (functionBean != null) {
            Integer bizType = functionBean.getBizType();
            int iD = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.U.getId();
            if (bizType != null && bizType.intValue() == iD) {
                z11 = true;
            }
        }
        if (z11) {
            sb2 = new StringBuilder();
            sb2.append("确认关闭");
            sb2.append(functionBean.getName());
            str = "玩法吗？";
        } else {
            sb2 = new StringBuilder();
            sb2.append("确认关闭");
            sb2.append(functionBean != null ? functionBean.getName() : null);
            str = "吗？";
        }
        sb2.append(str);
        attributeConfig.h0(sb2.toString());
        attributeConfig.M("取消");
        attributeConfig.S("确认关闭");
        attributeConfig.L(true);
        attributeConfig.R(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction$commonClosePlayFuncDialog$1$1
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
                function3.mo3invoke(1, Boolean.valueOf(this.i()));
                return kotlin.w.f231958a;
            }
        });
        aVar.a(attributeConfig).n(fragmentManager);
    }

    public void b(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
        if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 4, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
        if (!e(dataBus)) {
            g(dataBus, fragmentManager, function2);
        } else if (function2 != null) {
            function2.mo3invoke(2, Boolean.valueOf(i()));
        }
    }

    public final void c(@Nullable ArrayList<FunctionBean> arrayList, @Nullable final FunctionBean functionBean, @Nullable final DataBus dataBus, @NotNull final FragmentManager fragmentManager, @Nullable final Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
        if (PatchProxy.proxy(new Object[]{arrayList, functionBean, dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 3, new Class[]{ArrayList.class, FunctionBean.class, DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
        CommonUtil commonUtil = CommonUtil.f161882a;
        String name = functionBean != null ? functionBean.getName() : null;
        if (name == null) {
            name = "";
        }
        commonUtil.q(dataBus, arrayList, name, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction$commonSwitchPlayFuncDialog$1
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
                SoulThemeDialog.Companion companion = SoulThemeDialog.INSTANCE;
                SoulThemeDialog.AttributeConfig attributeConfig = new SoulThemeDialog.AttributeConfig();
                FunctionBean functionBean2 = functionBean;
                DataBus dataBus2 = dataBus;
                final Function2<Integer, Boolean, kotlin.w> function3 = function2;
                final BaseRoomFunction baseRoomFunction = this;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("确定切换为【");
                sb2.append(functionBean2 != null ? functionBean2.getName() : null);
                sb2.append("】？");
                attributeConfig.I(sb2.toString());
                attributeConfig.z(CommonUtil.f161882a.D0(dataBus2) ? "提醒：正在进行中的玩法将会被关闭，直接结算" : "提醒：当前正在进行中的玩法将被关闭");
                attributeConfig.w("取消");
                attributeConfig.y("立即切换");
                attributeConfig.A(true);
                attributeConfig.C(true);
                attributeConfig.x(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction$commonSwitchPlayFuncDialog$1$1$1
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
                        Function2<Integer, Boolean, kotlin.w> function4 = function3;
                        if (function4 == null) {
                            return null;
                        }
                        function4.mo3invoke(3, Boolean.valueOf(baseRoomFunction.i()));
                        return kotlin.w.f231958a;
                    }
                });
                companion.a(attributeConfig).A(fragmentManager);
            }
        });
    }

    public boolean d(@Nullable DataBus dataBus) {
        return true;
    }

    public boolean e(@Nullable DataBus dataBus) {
        return true;
    }

    public void f(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
        if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 5, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
    }

    public void g(@Nullable DataBus dataBus, @NotNull FragmentManager fragmentManager, @Nullable Function2<? super Integer, ? super Boolean, kotlin.w> function2) {
        if (PatchProxy.proxy(new Object[]{dataBus, fragmentManager, function2}, this, changeQuickRedirect, false, 6, new Class[]{DataBus.class, FragmentManager.class, Function2.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(fragmentManager, "fragmentManager");
    }

    @NotNull
    public abstract cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h h();

    public boolean i() {
        return true;
    }
}