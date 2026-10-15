package cn.soulapp.cpnt_voiceparty.dialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mate.android.utils.MateScreenUtil;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.data.RoomDataManager;
import cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog;
import cn.soulapp.android.lib.common.R;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.cpnt_voiceparty.R$color;
import cn.soulapp.cpnt_voiceparty.R$drawable;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$style;
import cn.soulapp.cpnt_voiceparty.adapter.PlayFunctionAdapter;
import cn.soulapp.cpnt_voiceparty.adapter.PlayFunctionTypeAdapter;
import cn.soulapp.cpnt_voiceparty.adapter.RecentPlayFunctionAdapter;
import cn.soulapp.cpnt_voiceparty.bean.FunctionBean;
import cn.soulapp.cpnt_voiceparty.bean.PlayFunctionBean;
import cn.soulapp.cpnt_voiceparty.bean.PlayFunctionTypeBean;
import cn.soulapp.cpnt_voiceparty.databinding.CVpDialogRoomPlayFunctionBinding;
import cn.soulapp.cpnt_voiceparty.function.RoomFunctionDialogHelper;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.lib.utils.ext.ViewExtKt;
import com.baidu.platform.comapi.map.MapController;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomPlayFunctionDialog.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002MNB\u0007¢\u0006\u0004\bK\u0010LJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\u0003H\u0002J\b\u0010\u000b\u001a\u00020\u0003H\u0002J\b\u0010\f\u001a\u00020\u0003H\u0002J\b\u0010\r\u001a\u00020\u0003H\u0003J\b\u0010\u000e\u001a\u00020\u0003H\u0002J\b\u0010\u000f\u001a\u00020\u0003H\u0002J\b\u0010\u0010\u001a\u00020\u0003H\u0002J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u001a\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016J\b\u0010\u0019\u001a\u00020\u0003H\u0016J\b\u0010\u001b\u001a\u00020\u001aH\u0016J\b\u0010\u001c\u001a\u00020\u001aH\u0016J\b\u0010\u001d\u001a\u00020\u001aH\u0014J\b\u0010\u001f\u001a\u00020\u001eH\u0014J\b\u0010 \u001a\u00020\u001aH\u0014R\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u001b\u0010.\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u001b\u00103\u001a\u00020/8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010+\u001a\u0004\b1\u00102R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u0010+\u001a\u0004\b6\u00107R\u0018\u0010;\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010:R*\u0010B\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010<8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u0016\u0010D\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR*\u0010J\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010<8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010=\u001a\u0004\bH\u0010?\"\u0004\bI\u0010A¨\u0006O"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/dialog/RoomPlayFunctionDialog;", "Lcn/soulapp/android/client/component/middle/platform/base/BaseBottomSheetBindingDialog;", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpDialogRoomPlayFunctionBinding;", "Lkotlin/w;", "r", "Lcn/soulapp/cpnt_voiceparty/bean/PlayFunctionTypeBean;", MapController.ITEM_LAYER_TAG, "", "fromUser", "n", "o", "t", "p", "D", "H", "F", "z", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "initView", "", "getDialogWidth", "getDialogHeight", "getBackgroundColorResId", "", "dimAmount", "getWindowAnimationStyleResId", "Lcn/soulapp/cpnt_voiceparty/bean/PlayFunctionBean;", "i", "Lcn/soulapp/cpnt_voiceparty/bean/PlayFunctionBean;", "playFunctionBean", "Lcn/soul/android/base/block_frame/databus/DataBus;", "j", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "Lcn/soulapp/cpnt_voiceparty/adapter/RecentPlayFunctionAdapter;", "k", "Lkotlin/Lazy;", "y", "()Lcn/soulapp/cpnt_voiceparty/adapter/RecentPlayFunctionAdapter;", "recentFunctionAdapter", "Lcn/soulapp/cpnt_voiceparty/adapter/PlayFunctionAdapter;", "l", "v", "()Lcn/soulapp/cpnt_voiceparty/adapter/PlayFunctionAdapter;", "functionAdapter", "Lcn/soulapp/cpnt_voiceparty/adapter/PlayFunctionTypeAdapter;", "m", "w", "()Lcn/soulapp/cpnt_voiceparty/adapter/PlayFunctionTypeAdapter;", "functionTypeAdapter", "Lcn/soulapp/cpnt_voiceparty/function/RoomFunctionDialogHelper;", "Lcn/soulapp/cpnt_voiceparty/function/RoomFunctionDialogHelper;", "dialogHelper", "Lkotlin/Function0;", "Lkotlin/jvm/functions/Function0;", "x", "()Lkotlin/jvm/functions/Function0;", "C", "(Lkotlin/jvm/functions/Function0;)V", "onFunctionChanged", "Z", "isPlayFuncSelectPopVisible", "q", "Ljava/lang/Integer;", "preselectClassifyType", "getOnDialogDismiss", "B", "onDialogDismiss", AppAgent.CONSTRUCT, "()V", "a", ExpcompatUtils.COMPAT_VALUE_780, "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class RoomPlayFunctionDialog extends BaseBottomSheetBindingDialog<CVpDialogRoomPlayFunctionBinding> {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private PlayFunctionBean playFunctionBean;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private DataBus dataBus;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private RoomFunctionDialogHelper dialogHelper;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private Function0<kotlin.w> onFunctionChanged;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean isPlayFuncSelectPopVisible;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private Integer preselectClassifyType;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private Function0<kotlin.w> onDialogDismiss;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f141389s = new LinkedHashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy recentFunctionAdapter = kotlin.j.b(RoomPlayFunctionDialog$recentFunctionAdapter$2.INSTANCE);

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy functionAdapter = kotlin.j.b(RoomPlayFunctionDialog$functionAdapter$2.INSTANCE);

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy functionTypeAdapter = kotlin.j.b(RoomPlayFunctionDialog$functionTypeAdapter$2.INSTANCE);

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.dialog.RoomPlayFunctionDialog$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: RoomPlayFunctionDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/dialog/RoomPlayFunctionDialog$a;", "", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "", "preselectClassifyType", "Lcn/soulapp/cpnt_voiceparty/dialog/RoomPlayFunctionDialog;", "a", "(Lcn/soul/android/base/block_frame/databus/DataBus;Ljava/lang/Integer;)Lcn/soulapp/cpnt_voiceparty/dialog/RoomPlayFunctionDialog;", "CLASSIFY_TYPE_GAME", "I", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.q qVar) {
            this();
        }

        public static /* synthetic */ RoomPlayFunctionDialog b(Companion companion, DataBus dataBus, Integer num, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                num = null;
            }
            return companion.a(dataBus, num);
        }

        @NotNull
        public final RoomPlayFunctionDialog a(@Nullable DataBus dataBus, @Nullable Integer preselectClassifyType) {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus, preselectClassifyType}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class, Integer.class}, RoomPlayFunctionDialog.class);
            if (patchProxyResultProxy.isSupported) {
                return (RoomPlayFunctionDialog) patchProxyResultProxy.result;
            }
            RoomPlayFunctionDialog roomPlayFunctionDialog = new RoomPlayFunctionDialog();
            Bundle bundle = new Bundle();
            roomPlayFunctionDialog.dataBus = dataBus;
            roomPlayFunctionDialog.preselectClassifyType = preselectClassifyType;
            roomPlayFunctionDialog.setArguments(bundle);
            return roomPlayFunctionDialog;
        }
    }

    /* JADX INFO: compiled from: RoomPlayFunctionDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/dialog/RoomPlayFunctionDialog$b;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Landroid/graphics/Rect;", "outRect", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", "state", "Lkotlin/w;", "getItemOffsets", "", "a", "I", "verticalSpaceHeight", AppAgent.CONSTRUCT, "(I)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    private static final class b extends RecyclerView.ItemDecoration {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private final int verticalSpaceHeight;

        public b(int i11) {
            this.verticalSpaceHeight = i11;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
            boolean z11 = false;
            if (PatchProxy.proxy(new Object[]{outRect, view, parent, state}, this, changeQuickRedirect, false, 2, new Class[]{Rect.class, View.class, RecyclerView.class, RecyclerView.State.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(outRect, "outRect");
            kotlin.jvm.internal.v.j(view, "view");
            kotlin.jvm.internal.v.j(parent, "parent");
            kotlin.jvm.internal.v.j(state, "state");
            RecyclerView.Adapter adapter = parent.getAdapter();
            if (adapter != null && parent.getChildAdapterPosition(view) == adapter.getItemCount() - 1) {
                z11 = true;
            }
            if (z11) {
                return;
            }
            outRect.bottom = this.verticalSpaceHeight;
        }
    }

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/lib/utils/ext/ViewExtKt$b", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class c implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f141392a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f141393b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ RoomPlayFunctionDialog f141394c;

        public c(View view, long j11, RoomPlayFunctionDialog roomPlayFunctionDialog) {
            this.f141392a = view;
            this.f141393b = j11;
            this.f141394c = roomPlayFunctionDialog;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ViewExtKt.d(this.f141392a) > this.f141393b) {
                ViewExtKt.q(this.f141392a, jCurrentTimeMillis);
                this.f141394c.H();
            }
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 28, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(RoomPlayFunctionDialog this$0, View view) {
        if (PatchProxy.proxy(new Object[]{this$0, view}, null, changeQuickRedirect, true, 22, new Class[]{RoomPlayFunctionDialog.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.dismiss();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private final void D() {
        List<PlayFunctionTypeBean> classifySetups;
        int iA = 0;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 16, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        PlayFunctionBean playFunctionBean = this.playFunctionBean;
        if (playFunctionBean != null && (classifySetups = playFunctionBean.getClassifySetups()) != null) {
            iA = cn.soulapp.lib.utils.ext.e.a(classifySetups);
        }
        if (iA > 0) {
            ViewExtKt.l(getBinding().f133247f);
            LinearLayout linearLayout = getBinding().f133247f;
            linearLayout.setOnClickListener(new c(linearLayout, 500L, this));
        } else {
            ViewExtKt.j(getBinding().f133247f);
        }
        getBinding().f133248g.getParent().requestDisallowInterceptTouchEvent(true);
        getBinding().f133247f.getParent().requestDisallowInterceptTouchEvent(true);
        getBinding().f133248g.setOnTouchListener(new View.OnTouchListener() { // from class: cn.soulapp.cpnt_voiceparty.dialog.z0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return RoomPlayFunctionDialog.E(this.f141634a, view, motionEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean E(RoomPlayFunctionDialog this$0, View view, MotionEvent motionEvent) {
        String str;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{this$0, view, motionEvent}, null, changeQuickRedirect, true, 26, new Class[]{RoomPlayFunctionDialog.class, View.class, MotionEvent.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onTouch action: ");
        int action = motionEvent.getAction();
        if (action == 0) {
            str = "DOWN";
        } else if (action == 1) {
            str = "UP";
        } else if (action == 2) {
            str = "MOVE";
        } else if (action != 3) {
            str = "OTHER:" + motionEvent.getAction();
        } else {
            str = "CANCEL";
        }
        sb2.append(str);
        SoulHouseExtensionKt.w0(this$0, "maskOverlay", sb2.toString());
        int action2 = motionEvent.getAction();
        if (action2 == 0) {
            this$0.isPlayFuncSelectPopVisible = false;
            ViewExtKt.j(this$0.getBinding().f133249h);
            this$0.getBinding().f133246e.setSelected(false);
            SoulHouseExtensionKt.w0(this$0, "maskOverlay", "DOWN事件，隐藏弹框内容");
        } else if (action2 == 1) {
            ViewExtKt.j(this$0.getBinding().f133248g);
            SoulHouseExtensionKt.w0(this$0, "maskOverlay", "ACTION_UP，隐藏蒙层");
        }
        return true;
    }

    private final void F() {
        RoomDataManager roomDataManagerM;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 18, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.isPlayFuncSelectPopVisible = true;
        ViewExtKt.l(getBinding().f133248g);
        getBinding().f133247f.post(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.dialog.a1
            @Override // java.lang.Runnable
            public final void run() {
                RoomPlayFunctionDialog.G(this.f141554a);
            }
        });
        getBinding().f133246e.setSelected(true);
        Pair[] pairArr = new Pair[4];
        DataBus dataBus = this.dataBus;
        String strX = null;
        pairArr[0] = kotlin.m.a("RoomId", dataBus != null ? SoulHouseExtensionKt.O(dataBus) : null);
        DataBus dataBus2 = this.dataBus;
        pairArr[1] = kotlin.m.a("JoinCode", dataBus2 != null ? SoulHouseExtensionKt.q(dataBus2) : null);
        DataBus dataBus3 = this.dataBus;
        pairArr[2] = kotlin.m.a("joinUniqueCode", dataBus3 != null ? SoulHouseExtensionKt.u(dataBus3) : null);
        DataBus dataBus4 = this.dataBus;
        if (dataBus4 != null && (roomDataManagerM = SoulHouseExtensionKt.M(dataBus4)) != null) {
            strX = roomDataManagerM.x();
        }
        pairArr[3] = kotlin.m.a("gamecode", strX);
        cn.soulapp.android.client.component.middle.platform.utils.track.d.a("ChatRoomDetail_PlaytypePop_CategoryBtn_Clk", kotlin.collections.r0.n(pairArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(RoomPlayFunctionDialog this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 27, new Class[]{RoomPlayFunctionDialog.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        int[] iArr = new int[2];
        this$0.getBinding().f133247f.getLocationInWindow(iArr);
        ViewGroup.LayoutParams layoutParams = this$0.getBinding().f133249h.getLayoutParams();
        ConstraintLayout.LayoutParams layoutParams2 = layoutParams instanceof ConstraintLayout.LayoutParams ? (ConstraintLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = (iArr[1] + this$0.getBinding().f133247f.getHeight()) - ExtensionsKt.dp(20);
            this$0.getBinding().f133249h.setLayoutParams(layoutParams2);
        }
        ViewExtKt.l(this$0.getBinding().f133249h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 17, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        if (this.isPlayFuncSelectPopVisible) {
            z();
        } else {
            F();
        }
    }

    private final void n(PlayFunctionTypeBean playFunctionTypeBean, boolean z11) {
        List<FunctionBean> listFilterFunctionsByType;
        RoomDataManager roomDataManagerM;
        List<FunctionBean> listSortFunctionsByOpenedState;
        if (PatchProxy.proxy(new Object[]{playFunctionTypeBean, new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 9, new Class[]{PlayFunctionTypeBean.class, Boolean.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        getBinding().f133255n.setText(playFunctionTypeBean.getClassifyName());
        z();
        Integer classifyType = playFunctionTypeBean.getClassifyType();
        String strX = null;
        if (classifyType != null && classifyType.intValue() == 0) {
            PlayFunctionAdapter playFunctionAdapterV = v();
            PlayFunctionBean playFunctionBean = this.playFunctionBean;
            playFunctionAdapterV.setNewInstance((playFunctionBean == null || (listSortFunctionsByOpenedState = playFunctionBean.sortFunctionsByOpenedState()) == null) ? null : CollectionsKt___CollectionsKt.t1(listSortFunctionsByOpenedState));
        } else {
            PlayFunctionAdapter playFunctionAdapterV2 = v();
            PlayFunctionBean playFunctionBean2 = this.playFunctionBean;
            playFunctionAdapterV2.setNewInstance((playFunctionBean2 == null || (listFilterFunctionsByType = playFunctionBean2.filterFunctionsByType(playFunctionTypeBean.getBizTypes())) == null) ? null : CollectionsKt___CollectionsKt.t1(listFilterFunctionsByType));
        }
        if (z11) {
            Pair[] pairArr = new Pair[5];
            DataBus dataBus = this.dataBus;
            pairArr[0] = kotlin.m.a("RoomId", dataBus != null ? SoulHouseExtensionKt.O(dataBus) : null);
            DataBus dataBus2 = this.dataBus;
            pairArr[1] = kotlin.m.a("JoinCode", dataBus2 != null ? SoulHouseExtensionKt.q(dataBus2) : null);
            DataBus dataBus3 = this.dataBus;
            pairArr[2] = kotlin.m.a("joinUniqueCode", dataBus3 != null ? SoulHouseExtensionKt.u(dataBus3) : null);
            DataBus dataBus4 = this.dataBus;
            if (dataBus4 != null && (roomDataManagerM = SoulHouseExtensionKt.M(dataBus4)) != null) {
                strX = roomDataManagerM.x();
            }
            pairArr[3] = kotlin.m.a("gamecode", strX);
            pairArr[4] = kotlin.m.a("title", playFunctionTypeBean.getClassifyName());
            cn.soulapp.android.client.component.middle.platform.utils.track.d.a("ChatRoomDetail_PlaytypePop_CategoryChoose", kotlin.collections.r0.n(pairArr));
        }
    }

    private final void o() {
        Integer num;
        List<PlayFunctionTypeBean> classifySetups;
        Object next;
        Integer classifyType;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 10, new Class[0], Void.TYPE).isSupported || (num = this.preselectClassifyType) == null) {
            return;
        }
        int iIntValue = num.intValue();
        PlayFunctionBean playFunctionBean = this.playFunctionBean;
        if (playFunctionBean == null || (classifySetups = playFunctionBean.getClassifySetups()) == null) {
            return;
        }
        Iterator<T> it = classifySetups.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                classifyType = ((PlayFunctionTypeBean) next).getClassifyType();
            }
        } while (!(classifyType != null && classifyType.intValue() == iIntValue));
        PlayFunctionTypeBean playFunctionTypeBean = (PlayFunctionTypeBean) next;
        if (playFunctionTypeBean == null) {
            return;
        }
        n(playFunctionTypeBean, false);
    }

    private final void p() {
        List<FunctionBean> listSortFunctionsByOpenedState;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 12, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        getBinding().f133251j.setLayoutManager(new LinearLayoutManager(requireContext()));
        getBinding().f133251j.setAdapter(v());
        PlayFunctionAdapter playFunctionAdapterV = v();
        PlayFunctionBean playFunctionBean = this.playFunctionBean;
        playFunctionAdapterV.setNewInstance((playFunctionBean == null || (listSortFunctionsByOpenedState = playFunctionBean.sortFunctionsByOpenedState()) == null) ? null : CollectionsKt___CollectionsKt.t1(listSortFunctionsByOpenedState));
        v().setOnItemClickListener(new OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.dialog.x0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                RoomPlayFunctionDialog.q(this.f141631a, baseQuickAdapter, view, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(RoomPlayFunctionDialog this$0, BaseQuickAdapter adapter, View view, int i11) {
        Integer bizType;
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[]{this$0, adapter, view, new Integer(i11)}, null, changeQuickRedirect, true, 25, new Class[]{RoomPlayFunctionDialog.class, BaseQuickAdapter.class, View.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(adapter, "adapter");
        kotlin.jvm.internal.v.j(view, "view");
        Object item = adapter.getItem(i11);
        FunctionBean functionBean = item instanceof FunctionBean ? (FunctionBean) item : null;
        if (cn.soulapp.cpnt_voiceparty.util.e.f162158a.z0()) {
            if (functionBean != null && (bizType = functionBean.getBizType()) != null && bizType.intValue() == 500001) {
                z11 = true;
            }
            if (z11) {
                cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.util.a.f157602a.f();
                ImageView imageView = (ImageView) view.findViewById(R$id.UK);
                if (imageView != null) {
                    ViewExtKt.j(imageView);
                }
            }
        }
        RoomFunctionDialogHelper roomFunctionDialogHelper = this$0.dialogHelper;
        if (roomFunctionDialogHelper != null) {
            roomFunctionDialogHelper.u(functionBean);
        }
    }

    private final void r() {
        List<PlayFunctionTypeBean> classifySetups;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        getBinding().f133252k.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        getBinding().f133252k.setAdapter(w());
        getBinding().f133252k.addItemDecoration(new b(ExtensionsKt.dp(16)));
        PlayFunctionTypeAdapter playFunctionTypeAdapterW = w();
        PlayFunctionBean playFunctionBean = this.playFunctionBean;
        playFunctionTypeAdapterW.setNewInstance((playFunctionBean == null || (classifySetups = playFunctionBean.getClassifySetups()) == null) ? null : CollectionsKt___CollectionsKt.t1(classifySetups));
        w().setOnItemClickListener(new OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.dialog.y0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                RoomPlayFunctionDialog.s(this.f141632a, baseQuickAdapter, view, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(RoomPlayFunctionDialog this$0, BaseQuickAdapter adapter, View view, int i11) {
        if (PatchProxy.proxy(new Object[]{this$0, adapter, view, new Integer(i11)}, null, changeQuickRedirect, true, 23, new Class[]{RoomPlayFunctionDialog.class, BaseQuickAdapter.class, View.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(adapter, "adapter");
        kotlin.jvm.internal.v.j(view, "<anonymous parameter 1>");
        Object item = adapter.getItem(i11);
        if (item == null) {
            throw new NullPointerException("null cannot be cast to non-null type cn.soulapp.cpnt_voiceparty.bean.PlayFunctionTypeBean");
        }
        this$0.n((PlayFunctionTypeBean) item, true);
    }

    private final void t() {
        List<FunctionBean> recentPlayFuncList;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 11, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 24);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: cn.soulapp.cpnt_voiceparty.dialog.RoomPlayFunctionDialog$bindRvRecentPlayFunc$1
            public static ChangeQuickRedirect changeQuickRedirect;

            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int position) {
                Object[] objArr = {new Integer(position)};
                ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
                Class cls = Integer.TYPE;
                PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 2, new Class[]{cls}, cls);
                if (patchProxyResultProxy.isSupported) {
                    return ((Integer) patchProxyResultProxy.result).intValue();
                }
                return new int[][]{new int[]{24, 0, 0, 0}, new int[]{12, 12, 0, 0}, new int[]{9, 6, 9, 0}, new int[]{6, 6, 6, 6}}[this.f141391a.y().getItemCount() - 1][position % this.f141391a.y().getItemCount()];
            }
        });
        getBinding().f133253l.setLayoutManager(gridLayoutManager);
        getBinding().f133253l.setAdapter(y());
        RecentPlayFunctionAdapter recentPlayFunctionAdapterY = y();
        PlayFunctionBean playFunctionBean = this.playFunctionBean;
        recentPlayFunctionAdapterY.setNewInstance((playFunctionBean == null || (recentPlayFuncList = playFunctionBean.getRecentPlayFuncList()) == null) ? null : CollectionsKt___CollectionsKt.t1(recentPlayFuncList));
        y().setOnItemClickListener(new OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.dialog.w0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                RoomPlayFunctionDialog.u(this.f141629a, baseQuickAdapter, view, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(RoomPlayFunctionDialog this$0, BaseQuickAdapter adapter, View view, int i11) {
        if (PatchProxy.proxy(new Object[]{this$0, adapter, view, new Integer(i11)}, null, changeQuickRedirect, true, 24, new Class[]{RoomPlayFunctionDialog.class, BaseQuickAdapter.class, View.class, Integer.TYPE}, Void.TYPE).isSupported) {
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

    private final PlayFunctionAdapter v() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], PlayFunctionAdapter.class);
        return patchProxyResultProxy.isSupported ? (PlayFunctionAdapter) patchProxyResultProxy.result : (PlayFunctionAdapter) this.functionAdapter.getValue();
    }

    private final PlayFunctionTypeAdapter w() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], PlayFunctionTypeAdapter.class);
        return patchProxyResultProxy.isSupported ? (PlayFunctionTypeAdapter) patchProxyResultProxy.result : (PlayFunctionTypeAdapter) this.functionTypeAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecentPlayFunctionAdapter y() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], RecentPlayFunctionAdapter.class);
        return patchProxyResultProxy.isSupported ? (RecentPlayFunctionAdapter) patchProxyResultProxy.result : (RecentPlayFunctionAdapter) this.recentFunctionAdapter.getValue();
    }

    private final void z() {
        if (!PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 19, new Class[0], Void.TYPE).isSupported && this.isPlayFuncSelectPopVisible) {
            this.isPlayFuncSelectPopVisible = false;
            ViewExtKt.j(getBinding().f133248g);
            SoulHouseExtensionKt.w0(this, "maskOverlay", "hidePlayFuncSelectPop");
            ViewExtKt.j(getBinding().f133249h);
            getBinding().f133246e.setSelected(false);
        }
    }

    public final void B(@Nullable Function0<kotlin.w> function0) {
        this.onDialogDismiss = function0;
    }

    public final void C(@Nullable Function0<kotlin.w> function0) {
        this.onFunctionChanged = function0;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
    public void _$_clearFindViewByIdCache() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 20, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.f141389s.clear();
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
    public float dimAmount() {
        return 0.6f;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
    public int getBackgroundColorResId() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 14, new Class[0], Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        return cn.soulapp.cpnt_voiceparty.util.e.f162158a.E() ? R$color.f127064a : R.color.color_282828;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
    public int getDialogHeight() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 13, new Class[0], Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        return cn.soulapp.cpnt_voiceparty.util.e.f162158a.E() ? (int) (MateScreenUtil.f10630a.m() * 0.82f) : ExtensionsKt.dp(526);
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
    public int getDialogWidth() {
        return -1;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
    public int getWindowAnimationStyleResId() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 15, new Class[0], Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        return cn.soulapp.cpnt_voiceparty.util.e.f162158a.E() ? R$style.f130235h : super.getWindowAnimationStyleResId();
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog
    public void initView() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        this.playFunctionBean = soulHouseDriverJ0 != null ? (PlayFunctionBean) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.b0()) : null;
        this.dialogHelper = new RoomFunctionDialogHelper(this.dataBus, this, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.dialog.RoomPlayFunctionDialog.initView.1
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
                Function0<kotlin.w> function0X;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (function0X = RoomPlayFunctionDialog.this.x()) == null) {
                    return;
                }
                function0X.invoke();
            }
        });
        if (cn.soulapp.cpnt_voiceparty.util.e.f162158a.E()) {
            ViewExtKt.l(getBinding().f133245d);
            getBinding().f133245d.setOnClickListener(new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.dialog.v0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RoomPlayFunctionDialog.A(this.f141626a, view);
                }
            });
            getBinding().f133250i.setBackgroundResource(R$drawable.f127214g);
        } else {
            ViewExtKt.j(getBinding().f133245d);
        }
        r();
        t();
        p();
        D();
        RoomFunctionDialogHelper roomFunctionDialogHelper = this.dialogHelper;
        if (roomFunctionDialogHelper != null) {
            roomFunctionDialogHelper.p();
        }
        o();
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        if (PatchProxy.proxy(new Object[]{dialog}, this, changeQuickRedirect, false, 5, new Class[]{DialogInterface.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(dialog, "dialog");
        super.onDismiss(dialog);
        Function0<kotlin.w> function0 = this.onDialogDismiss;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBottomSheetBindingDialog, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        View viewFindViewById;
        if (PatchProxy.proxy(new Object[]{view, bundle}, this, changeQuickRedirect, false, 6, new Class[]{View.class, Bundle.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(view, "view");
        if (!cn.soulapp.cpnt_voiceparty.util.e.f162158a.E()) {
            super.onViewCreated(view, bundle);
            return;
        }
        Context context = getContext();
        if (context != null) {
            float fDp = ExtensionsKt.dp(32);
            float[] fArr = {fDp, fDp, fDp, fDp, 0.0f, 0.0f, 0.0f, 0.0f};
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(ContextCompat.getColor(context, getBackgroundColorResId()));
            gradientDrawable.setCornerRadii(fArr);
            View rootView = getRootView();
            if (rootView != null) {
                rootView.setBackground(gradientDrawable);
            }
            View rootView2 = getRootView();
            if (rootView2 != null && (viewFindViewById = rootView2.findViewById(R$id.f127686b10)) != null) {
                ViewExtKt.j(viewFindViewById);
            }
        }
        initView();
    }

    @Nullable
    public final Function0<kotlin.w> x() {
        return this.onFunctionChanged;
    }
}