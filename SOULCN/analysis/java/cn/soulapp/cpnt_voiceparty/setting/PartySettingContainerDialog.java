package cn.soulapp.cpnt_voiceparty.setting;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import cn.mate.android.utils.MateScreenUtil;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment;
import cn.soulapp.android.lib.analyticsV2.Const;
import cn.soulapp.cpnt_voiceparty.R$anim;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$style;
import cn.soulapp.cpnt_voiceparty.databinding.CVpDialogPartySettingContainerBinding;
import cn.soulapp.cpnt_voiceparty.util.c0;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import kotlin.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: PartySettingContainerDialog.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00020\u0001:\u000245B\u0011\u0012\b\u0010$\u001a\u0004\u0018\u00010!¢\u0006\u0004\b2\u00103J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0003H\u0002J\b\u0010\t\u001a\u00020\u0003H\u0002J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0005H\u0002J\u0012\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\u0010\u001a\u00020\u0003H\u0016J\b\u0010\u0011\u001a\u00020\u0003H\u0016J\b\u0010\u0013\u001a\u00020\u0012H\u0016J\b\u0010\u0014\u001a\u00020\u0012H\u0016J\b\u0010\u0015\u001a\u00020\u0012H\u0016J\b\u0010\u0016\u001a\u00020\u0012H\u0014J\b\u0010\u0017\u001a\u00020\u0012H\u0014J\u001e\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001cJ\u0006\u0010\u001f\u001a\u00020\u0003J\b\u0010 \u001a\u00020\u0003H\u0016R\u0016\u0010$\u001a\u0004\u0018\u00010!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020&0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u001c\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00030*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100¨\u00066"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/setting/PartySettingContainerDialog;", "Lcn/soulapp/android/client/component/middle/platform/base/BaseBindingDialogFragment;", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpDialogPartySettingContainerBinding;", "Lkotlin/w;", "m", "Landroid/view/View;", "view", "l", "t", "r", "v", "o", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "initView", "onStart", "", "getDialogHeight", "getDialogWidth", "getDialogTheme", "getWindowAnimationStyleResId", "gravity", "Landroidx/fragment/app/Fragment;", "fragment", "", "tag", "", "isBackButton", "s", "q", "onDestroyView", "Lcn/soul/android/base/block_frame/databus/DataBus;", "g", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "", "Lcn/soulapp/cpnt_voiceparty/setting/PartySettingContainerDialog$b;", "h", "Ljava/util/List;", "subPageStack", "Lkotlin/Function0;", "i", "Lkotlin/jvm/functions/Function0;", "currentDismissAction", "Lcn/soulapp/cpnt_voiceparty/util/c0;", "j", "Lcn/soulapp/cpnt_voiceparty/util/c0;", "dragHelper", AppAgent.CONSTRUCT, "(Lcn/soul/android/base/block_frame/databus/DataBus;)V", "a", ExpcompatUtils.COMPAT_VALUE_780, "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class PartySettingContainerDialog extends BaseBindingDialogFragment<CVpDialogPartySettingContainerBinding> {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private final DataBus dataBus;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f144108k = new LinkedHashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final List<b> subPageStack = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private Function0<w> currentDismissAction = new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingContainerDialog$currentDismissAction$1
        public static ChangeQuickRedirect changeQuickRedirect;

        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ w invoke() {
            invoke2();
            return w.f231958a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            this.this$0.dismissAllowingStateLoss();
        }
    };

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final c0 dragHelper = new c0(0.0f, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingContainerDialog$dragHelper$1
        public static ChangeQuickRedirect changeQuickRedirect;

        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ w invoke() {
            invoke2();
            return w.f231958a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            this.this$0.currentDismissAction.invoke();
        }
    }, 1, null);

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.setting.PartySettingContainerDialog$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: PartySettingContainerDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/setting/PartySettingContainerDialog$a;", "", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "Lcn/soulapp/cpnt_voiceparty/setting/PartySettingContainerDialog;", "a", "", "TAG", "Ljava/lang/String;", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(q qVar) {
            this();
        }

        @JvmStatic
        @NotNull
        public final PartySettingContainerDialog a(@Nullable DataBus dataBus) {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class}, PartySettingContainerDialog.class);
            return patchProxyResultProxy.isSupported ? (PartySettingContainerDialog) patchProxyResultProxy.result : new PartySettingContainerDialog(dataBus);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: PartySettingContainerDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0005\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\t\u0010\u000bR\u0017\u0010\u0010\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\r\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/setting/PartySettingContainerDialog$b;", "", "", "toString", "", "hashCode", Const.HeartReason.OTHER, "", "equals", "a", "Ljava/lang/String;", "()Ljava/lang/String;", "tag", ExpcompatUtils.COMPAT_VALUE_780, "Z", "()Z", "isBackButton", AppAgent.CONSTRUCT, "(Ljava/lang/String;Z)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    static final /* data */ class b {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        @NotNull
        private final String tag;

        /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
        private final boolean isBackButton;

        public b(@NotNull String tag, boolean z11) {
            v.j(tag, "tag");
            this.tag = tag;
            this.isBackButton = z11;
        }

        @NotNull
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getTag() {
            return this.tag;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final boolean getIsBackButton() {
            return this.isBackButton;
        }

        public boolean equals(@Nullable Object other) {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{other}, this, changeQuickRedirect, false, 5, new Class[]{Object.class}, Boolean.TYPE);
            if (patchProxyResultProxy.isSupported) {
                return ((Boolean) patchProxyResultProxy.result).booleanValue();
            }
            if (this == other) {
                return true;
            }
            if (!(other instanceof b)) {
                return false;
            }
            b bVar = (b) other;
            return v.e(this.tag, bVar.tag) && this.isBackButton == bVar.isBackButton;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v5, types: [int] */
        /* JADX WARN: Type inference failed for: r1v3, types: [int] */
        /* JADX WARN: Type inference failed for: r1v4 */
        /* JADX WARN: Type inference failed for: r1v5 */
        public int hashCode() {
            ?? r11;
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Integer.TYPE);
            if (patchProxyResultProxy.isSupported) {
                return ((Integer) patchProxyResultProxy.result).intValue();
            }
            int iHashCode = this.tag.hashCode() * 31;
            boolean z11 = this.isBackButton;
            if (z11) {
                r11 = z11;
                r11 = 1;
            }
            r11 = z11;
            return iHashCode + r11;
        }

        @NotNull
        public String toString() {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], String.class);
            if (patchProxyResultProxy.isSupported) {
                return (String) patchProxyResultProxy.result;
            }
            return "SubPageInfo(tag=" + this.tag + ", isBackButton=" + this.isBackButton + ')';
        }
    }

    /* JADX INFO: compiled from: PartySettingContainerDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"cn/soulapp/cpnt_voiceparty/setting/PartySettingContainerDialog$c", "Landroid/app/Dialog;", "Lkotlin/w;", "cancel", "Landroid/view/MotionEvent;", "event", "", "onTouchEvent", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class c extends Dialog {
        public static ChangeQuickRedirect changeQuickRedirect;

        c(Context context, int i11) {
            super(context, i11);
        }

        @Override // android.app.Dialog, android.content.DialogInterface
        public void cancel() {
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            PartySettingContainerDialog.this.m();
        }

        @Override // android.app.Dialog
        public boolean onTouchEvent(@NotNull MotionEvent event) {
            View viewFindViewById;
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{event}, this, changeQuickRedirect, false, 3, new Class[]{MotionEvent.class}, Boolean.TYPE);
            if (patchProxyResultProxy.isSupported) {
                return ((Boolean) patchProxyResultProxy.result).booleanValue();
            }
            v.j(event, "event");
            if (event.getAction() == 0 && (viewFindViewById = findViewById(R$id.Wc)) != null) {
                int[] iArr = new int[2];
                viewFindViewById.getLocationOnScreen(iArr);
                if (event.getRawY() < iArr[1]) {
                    cancel();
                    return true;
                }
            }
            return super.onTouchEvent(event);
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 19, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    public PartySettingContainerDialog(@Nullable DataBus dataBus) {
        this.dataBus = dataBus;
    }

    private final View l(View view) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 9, new Class[]{View.class}, View.class);
        if (patchProxyResultProxy.isSupported) {
            return (View) patchProxyResultProxy.result;
        }
        View viewFindViewById = view.findViewById(R$id.J7);
        return viewFindViewById == null ? view.findViewById(R$id.f127902e7) : viewFindViewById;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        b bVar = (b) CollectionsKt___CollectionsKt.G0(this.subPageStack);
        if (bVar == null || bVar.getIsBackButton()) {
            dismissAllowingStateLoss();
        } else {
            q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean n(PartySettingContainerDialog this$0, DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{this$0, dialogInterface, new Integer(i11), keyEvent}, null, changeQuickRedirect, true, 16, new Class[]{PartySettingContainerDialog.class, DialogInterface.class, Integer.TYPE, KeyEvent.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        v.j(this$0, "this$0");
        if (i11 != 4 || keyEvent.getAction() != 1 || !(!this$0.subPageStack.isEmpty())) {
            return false;
        }
        this$0.q();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(View view) {
        if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 12, new Class[]{View.class}, Void.TYPE).isSupported) {
            return;
        }
        int[] iArr = {R$id.f128624oo, R$id.Fj, R$id.f127818cz, R$id.f128180i8};
        for (int i11 = 0; i11 < 4; i11++) {
            View viewFindViewById = view.findViewById(iArr[i11]);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.setting.d
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        PartySettingContainerDialog.p(this.f144168a, view2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(PartySettingContainerDialog this$0, View view) {
        if (PatchProxy.proxy(new Object[]{this$0, view}, null, changeQuickRedirect, true, 17, new Class[]{PartySettingContainerDialog.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(this$0, "this$0");
        this$0.q();
    }

    private final void r() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 11, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        getChildFragmentManager().registerFragmentLifecycleCallbacks(new PartySettingContainerDialog$registerSubPageLifecycleCallbacks$1(this), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t() {
        View view;
        if (!PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 10, new Class[0], Void.TYPE).isSupported && isAdded()) {
            b bVar = (b) CollectionsKt___CollectionsKt.G0(this.subPageStack);
            if (bVar == null) {
                this.currentDismissAction = new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingContainerDialog$updateDragHelper$1
                    public static ChangeQuickRedirect changeQuickRedirect;

                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ w invoke() {
                        invoke2();
                        return w.f231958a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                            return;
                        }
                        this.this$0.dismissAllowingStateLoss();
                    }
                };
                Fragment fragmentFindFragmentByTag = getChildFragmentManager().findFragmentByTag("PartySettingDialog");
                View view2 = fragmentFindFragmentByTag != null ? fragmentFindFragmentByTag.getView() : null;
                View viewL = view2 != null ? l(view2) : null;
                if (viewL != null) {
                    c0 c0Var = this.dragHelper;
                    FrameLayout frameLayout = getBinding().f132955b;
                    v.i(frameLayout, "binding.flContainer");
                    c0Var.c(viewL, frameLayout);
                    return;
                }
                return;
            }
            Fragment fragmentFindFragmentByTag2 = getChildFragmentManager().findFragmentByTag(bVar.getTag());
            if (fragmentFindFragmentByTag2 == null || (view = fragmentFindFragmentByTag2.getView()) == null) {
                return;
            }
            View viewL2 = l(view);
            if (!bVar.getIsBackButton()) {
                this.currentDismissAction = new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingContainerDialog$updateDragHelper$3
                    public static ChangeQuickRedirect changeQuickRedirect;

                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ w invoke() {
                        invoke2();
                        return w.f231958a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                            return;
                        }
                        this.this$0.q();
                    }
                };
                if (viewL2 != null) {
                    this.dragHelper.c(viewL2, view);
                    return;
                }
                return;
            }
            this.currentDismissAction = new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingContainerDialog$updateDragHelper$2
                public static ChangeQuickRedirect changeQuickRedirect;

                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ w invoke() {
                    invoke2();
                    return w.f231958a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                        return;
                    }
                    this.this$0.dismissAllowingStateLoss();
                }
            };
            if (viewL2 != null) {
                c0 c0Var2 = this.dragHelper;
                FrameLayout frameLayout2 = getBinding().f132955b;
                v.i(frameLayout2, "binding.flContainer");
                c0Var2.c(viewL2, frameLayout2);
            }
        }
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
    public void _$_clearFindViewByIdCache() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 14, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.f144108k.clear();
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
    public int getDialogHeight() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], Integer.TYPE);
        return patchProxyResultProxy.isSupported ? ((Integer) patchProxyResultProxy.result).intValue() : (int) (MateScreenUtil.f10630a.m() * 0.82f);
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
    public int getDialogTheme() {
        return R$style.f130231d;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
    public int getDialogWidth() {
        return -1;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
    public int getWindowAnimationStyleResId() {
        return R$style.f130234g;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
    public int gravity() {
        return 80;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
    public void initView() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        PartySettingDialog partySettingDialogA = PartySettingDialog.INSTANCE.a(this.dataBus);
        partySettingDialogA.setShowsDialog(false);
        getChildFragmentManager().beginTransaction().add(R$id.Wc, partySettingDialogA, "PartySettingDialog").commitAllowingStateLoss();
        r();
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment, androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{savedInstanceState}, this, changeQuickRedirect, false, 2, new Class[]{Bundle.class}, Dialog.class);
        return patchProxyResultProxy.isSupported ? (Dialog) patchProxyResultProxy.result : new c(requireContext(), R$style.f130231d);
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 13, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        super.onDestroyView();
        this.dragHelper.d();
        _$_clearFindViewByIdCache();
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(true);
            dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: cn.soulapp.cpnt_voiceparty.setting.c
                @Override // android.content.DialogInterface.OnKeyListener
                public final boolean onKey(DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
                    return PartySettingContainerDialog.n(this.f144167a, dialogInterface, i11, keyEvent);
                }
            });
            Window window = dialog.getWindow();
            if (window != null) {
                window.setSoftInputMode(48);
                window.addFlags(256);
            }
        }
    }

    public final void q() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], Void.TYPE).isSupported || this.subPageStack.isEmpty()) {
            return;
        }
        getChildFragmentManager().popBackStackImmediate();
    }

    public final void s(@NotNull Fragment fragment, @NotNull String tag, boolean z11) {
        int i11;
        int i12;
        if (PatchProxy.proxy(new Object[]{fragment, tag, new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 6, new Class[]{Fragment.class, String.class, Boolean.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        v.j(fragment, "fragment");
        v.j(tag, "tag");
        boolean z12 = fragment instanceof DialogFragment;
        if (z12) {
            ((DialogFragment) fragment).setShowsDialog(false);
        }
        if (z11) {
            i11 = R$anim.f127051i;
            i12 = R$anim.f127053k;
        } else {
            i11 = R$anim.f127050h;
            i12 = R$anim.f127052j;
        }
        int iCommitAllowingStateLoss = getChildFragmentManager().beginTransaction().setCustomAnimations(i11, 0, 0, i12).add(R$id.Wc, fragment, tag).addToBackStack(tag).commitAllowingStateLoss();
        if (z12) {
            try {
                Field declaredField = DialogFragment.class.getDeclaredField("mBackStackId");
                declaredField.setAccessible(true);
                declaredField.setInt(fragment, iCommitAllowingStateLoss);
            } catch (Exception unused) {
            }
        }
        this.subPageStack.add(new b(tag, z11));
    }
}