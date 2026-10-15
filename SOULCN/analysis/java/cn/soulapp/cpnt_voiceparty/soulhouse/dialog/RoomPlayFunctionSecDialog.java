package cn.soulapp.cpnt_voiceparty.soulhouse.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.android.lib.soul_entity.OperationModel;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.component.SoulRouter;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog;
import cn.soulapp.android.client.component.middle.platform.view.banner.ScaleConvenientBanner;
import cn.soulapp.android.lib.common.R;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.cpnt_voiceparty.R$drawable;
import cn.soulapp.cpnt_voiceparty.adapter.PlayFunctionAdapter;
import cn.soulapp.cpnt_voiceparty.bean.ChildPlaySetups;
import cn.soulapp.cpnt_voiceparty.bean.FunctionBean;
import cn.soulapp.cpnt_voiceparty.databinding.CVpDialogRoomPlayFunctionSecBinding;
import cn.soulapp.cpnt_voiceparty.function.RoomFunctionDialogHelper;
import com.bigkoo.convenientbanner.holder.CBViewHolderCreator;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomPlayFunctionSecDialog.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 +2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001,B\u0007¢\u0006\u0004\b)\u0010*J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0003H\u0002J\b\u0010\u0006\u001a\u00020\u0003H\u0002J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010\n\u001a\u00020\u0003H\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u000bH\u0014J\b\u0010\u0010\u001a\u00020\u000fH\u0014R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010%\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010$R\u001e\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010'¨\u0006-"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomPlayFunctionSecDialog;", "Lcn/soulapp/android/client/component/middle/platform/base/BaseBottomSheetBindingDialog;", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpDialogRoomPlayFunctionSecBinding;", "Lkotlin/w;", "initRecyclerView", "n", "q", "Landroid/os/Bundle;", "savedInstanceState", "onActivityCreated", "initView", "", "getDialogWidth", "getDialogHeight", "getBackgroundColorResId", "", "dimAmount", "Lcn/soul/android/base/block_frame/databus/DataBus;", "i", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "Landroidx/recyclerview/widget/RecyclerView;", "j", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Lcn/soulapp/cpnt_voiceparty/adapter/PlayFunctionAdapter;", "k", "Lkotlin/Lazy;", "m", "()Lcn/soulapp/cpnt_voiceparty/adapter/PlayFunctionAdapter;", "functionAdapter", "Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "l", "Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "functionBean", "Lcn/soulapp/cpnt_voiceparty/function/RoomFunctionDialogHelper;", "Lcn/soulapp/cpnt_voiceparty/function/RoomFunctionDialogHelper;", "dialogHelper", "Lkotlin/Function0;", "Lkotlin/jvm/functions/Function0;", "dismissCb", AppAgent.CONSTRUCT, "()V", "p", "a", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class RoomPlayFunctionSecDialog extends BaseBottomSheetBindingDialog<CVpDialogRoomPlayFunctionSecBinding> {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private DataBus dataBus;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private RecyclerView recyclerView;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private FunctionBean functionBean;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private RoomFunctionDialogHelper dialogHelper;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private Function0<kotlin.w> dismissCb;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f148807o = new LinkedHashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy functionAdapter = kotlin.j.b(RoomPlayFunctionSecDialog$functionAdapter$2.INSTANCE);

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomPlayFunctionSecDialog$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: RoomPlayFunctionSecDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ*\u0010\n\u001a\u00020\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¨\u0006\r"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomPlayFunctionSecDialog$a;", "", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "functionBean", "Lkotlin/Function0;", "Lkotlin/w;", "dismissCb", "Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomPlayFunctionSecDialog;", "a", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.q qVar) {
            this();
        }

        @NotNull
        public final RoomPlayFunctionSecDialog a(@Nullable DataBus dataBus, @NotNull FunctionBean functionBean, @Nullable Function0<kotlin.w> dismissCb) {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus, functionBean, dismissCb}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class, FunctionBean.class, Function0.class}, RoomPlayFunctionSecDialog.class);
            if (patchProxyResultProxy.isSupported) {
                return (RoomPlayFunctionSecDialog) patchProxyResultProxy.result;
            }
            kotlin.jvm.internal.v.j(functionBean, "functionBean");
            RoomPlayFunctionSecDialog roomPlayFunctionSecDialog = new RoomPlayFunctionSecDialog();
            roomPlayFunctionSecDialog.dataBus = dataBus;
            roomPlayFunctionSecDialog.functionBean = functionBean;
            roomPlayFunctionSecDialog.dismissCb = dismissCb;
            return roomPlayFunctionSecDialog;
        }
    }

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class b implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f148808a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f148809b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ RoomPlayFunctionSecDialog f148810c;

        public b(View view, long j11, RoomPlayFunctionSecDialog roomPlayFunctionSecDialog) {
            this.f148808a = view;
            this.f148809b = j11;
            this.f148810c = roomPlayFunctionSecDialog;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - cn.soulapp.cpnt_voiceparty.util.t1.d(this.f148808a) > this.f148809b || (this.f148808a instanceof Checkable)) {
                cn.soulapp.cpnt_voiceparty.util.t1.j(this.f148808a, jCurrentTimeMillis);
                this.f148810c.dismiss();
            }
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 16, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    private final void initRecyclerView() {
        ChildPlaySetups childGameSetups;
        List<FunctionBean> playSetups;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            List listT1 = null;
            recyclerView.setItemAnimator(null);
            recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
            PlayFunctionAdapter playFunctionAdapterM = m();
            FunctionBean functionBean = this.functionBean;
            if (functionBean != null && (childGameSetups = functionBean.getChildGameSetups()) != null && (playSetups = childGameSetups.getPlaySetups()) != null) {
                listT1 = CollectionsKt___CollectionsKt.t1(playSetups);
            }
            playFunctionAdapterM.setNewInstance(listT1);
            recyclerView.setAdapter(m());
        }
        m().setOnItemClickListener(new OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.l2
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                RoomPlayFunctionSecDialog.r(this.f149534a, baseQuickAdapter, view, i11);
            }
        });
        n();
        q();
    }

    private final PlayFunctionAdapter m() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], PlayFunctionAdapter.class);
        return patchProxyResultProxy.isSupported ? (PlayFunctionAdapter) patchProxyResultProxy.result : (PlayFunctionAdapter) this.functionAdapter.getValue();
    }

    private final void n() {
        FunctionBean functionBean;
        ChildPlaySetups childGameSetups;
        final List<OperationModel> positionContentResp;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], Void.TYPE).isSupported || (functionBean = this.functionBean) == null || (childGameSetups = functionBean.getChildGameSetups()) == null || (positionContentResp = childGameSetups.getPositionContentResp()) == null) {
            return;
        }
        ScaleConvenientBanner scaleConvenientBanner = new ScaleConvenientBanner(getContext());
        scaleConvenientBanner.setLayoutParams(new ViewGroup.LayoutParams(-1, ExtensionsKt.dp(68)));
        scaleConvenientBanner.m(false);
        scaleConvenientBanner.i(new com.bigkoo.convenientbanner.listener.OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.o2
            @Override // com.bigkoo.convenientbanner.listener.OnItemClickListener
            public final void onItemClick(int i11) {
                RoomPlayFunctionSecDialog.p(positionContentResp, i11);
            }
        });
        Object context = scaleConvenientBanner.getContext();
        LifecycleOwner lifecycleOwner = context instanceof LifecycleOwner ? (LifecycleOwner) context : null;
        if (lifecycleOwner != null) {
            lifecycleOwner.getLifecycle().addObserver(scaleConvenientBanner);
        }
        scaleConvenientBanner.l(new CBViewHolderCreator() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.p2
            @Override // com.bigkoo.convenientbanner.holder.CBViewHolderCreator
            public final Object createHolder() {
                return RoomPlayFunctionSecDialog.o();
            }
        }, positionContentResp);
        scaleConvenientBanner.n(5000L);
        BaseQuickAdapter.addHeaderView$default(m(), scaleConvenientBanner, 0, 0, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object o() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 15, new Class[0], Object.class);
        return patchProxyResultProxy.isSupported ? patchProxyResultProxy.result : new k1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(List bannerList, int i11) {
        if (PatchProxy.proxy(new Object[]{bannerList, new Integer(i11)}, null, changeQuickRedirect, true, 14, new Class[]{List.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(bannerList, "$bannerList");
        String jumpUrl = ((OperationModel) bannerList.get(i11)).getJumpUrl();
        if (jumpUrl != null) {
            SoulRouter.j().e(jumpUrl).d();
        }
    }

    private final void q() {
        Context context;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], Void.TYPE).isSupported || (context = getContext()) == null) {
            return;
        }
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, ExtensionsKt.dp(33)));
        linearLayout.setGravity(81);
        ImageView imageView = new ImageView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(ExtensionsKt.dp(171), ExtensionsKt.dp(17));
        imageView.setImageResource(R$drawable.T5);
        linearLayout.addView(imageView, layoutParams);
        BaseQuickAdapter.addFooterView$default(m(), linearLayout, 0, 0, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(RoomPlayFunctionSecDialog this$0, BaseQuickAdapter adapter, View view, int i11) {
        if (PatchProxy.proxy(new Object[]{this$0, adapter, view, new Integer(i11)}, null, changeQuickRedirect, true, 13, new Class[]{RoomPlayFunctionSecDialog.class, BaseQuickAdapter.class, View.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(adapter, "adapter");
        kotlin.jvm.internal.v.j(view, "<anonymous parameter 1>");
        RoomFunctionDialogHelper roomFunctionDialogHelper = this$0.dialogHelper;
        if (roomFunctionDialogHelper != null) {
            Object item = adapter.getItem(i11);
            roomFunctionDialogHelper.u(item instanceof FunctionBean ? (FunctionBean) item : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(RoomPlayFunctionSecDialog this$0, DialogInterface dialogInterface) {
        if (PatchProxy.proxy(new Object[]{this$0, dialogInterface}, null, changeQuickRedirect, true, 11, new Class[]{RoomPlayFunctionSecDialog.class, DialogInterface.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        Function0<kotlin.w> function0 = this$0.dismissCb;
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean t(RoomPlayFunctionSecDialog this$0, DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{this$0, dialogInterface, new Integer(i11), keyEvent}, null, changeQuickRedirect, true, 12, new Class[]{RoomPlayFunctionSecDialog.class, DialogInterface.class, Integer.TYPE, KeyEvent.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        if (i11 != 4) {
            return false;
        }
        this$0.dismiss();
        return true;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
    public void _$_clearFindViewByIdCache() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 9, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.f148807o.clear();
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
    public float dimAmount() {
        return 0.6f;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
    public int getBackgroundColorResId() {
        return R.color.color_282828;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
    public int getDialogHeight() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], Integer.TYPE);
        return patchProxyResultProxy.isSupported ? ((Integer) patchProxyResultProxy.result).intValue() : ExtensionsKt.dp(526);
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
    public int getDialogWidth() {
        return -1;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
    public void initView() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        RoomFunctionDialogHelper roomFunctionDialogHelper = new RoomFunctionDialogHelper(this.dataBus, this, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomPlayFunctionSecDialog.initView.1
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
                Function0 function0;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (function0 = RoomPlayFunctionSecDialog.this.dismissCb) == null) {
                    return;
                }
                function0.invoke();
            }
        });
        this.dialogHelper = roomFunctionDialogHelper;
        roomFunctionDialogHelper.p();
        this.recyclerView = getBinding().f133260d;
        initRecyclerView();
        ImageView imageView = getBinding().f133259c;
        imageView.setOnClickListener(new b(imageView, 800L, this));
        TextView textView = getBinding().f133261e;
        FunctionBean functionBean = this.functionBean;
        textView.setText(functionBean != null ? functionBean.getName() : null);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        if (PatchProxy.proxy(new Object[]{bundle}, this, changeQuickRedirect, false, 3, new Class[]{Bundle.class}, Void.TYPE).isSupported) {
            return;
        }
        super.onActivityCreated(bundle);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.m2
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    RoomPlayFunctionSecDialog.s(this.f149539a, dialogInterface);
                }
            });
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.n2
                @Override // android.content.DialogInterface.OnKeyListener
                public final boolean onKey(DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
                    return RoomPlayFunctionSecDialog.t(this.f149546a, dialogInterface, i11, keyEvent);
                }
            });
        }
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }
}