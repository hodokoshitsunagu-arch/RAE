package cn.soulapp.cpnt_voiceparty.soulhouse.dialog;

import android.app.Dialog;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Checkable;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.com.hjq.shape.view.ShapeTextView;
import cn.mate.android.utils.MateScreenUtil;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.bean.RoomTypeBean;
import cn.soulapp.android.lib.common.base.BaseBottomDialogFragment;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.cpnt_voiceparty.R$drawable;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.R$style;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import cn.soulapp.cpnt_voiceparty.mvvm.SoulHouseDetailViewModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.dialog.SoulHouseSelectPartyTypeDialog.PartyTypeAdapter;
import com.baidu.platform.comapi.map.MapController;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ishumei.smantifraud.l11l11I1111l;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: SoulHouseSelectPartyTypeDialog.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 F2\u00020\u0001:\u0002GHB\u0007¢\u0006\u0004\bD\u0010EJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0012\u0010\b\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\n\u001a\u00020\tH\u0014J\u0012\u0010\r\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014RX\u0010\u001a\u001a8\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u001e\u0010'\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010)\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010(R\u0016\u0010+\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010,R\u001f\u00102\u001a\u00060.R\u00020\u00008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b \u00101R\u0018\u00104\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u00103R\"\u00108\u001a\u0002058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b6\u0010:R\u001b\u0010>\u001a\u00020;8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u00100\u001a\u0004\b%\u0010=R\u0016\u0010@\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u00107R\u0018\u0010C\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010B¨\u0006I"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/SoulHouseSelectPartyTypeDialog;", "Lcn/soulapp/android/lib/common/base/BaseBottomDialogFragment;", "Lkotlin/w;", "j", "initRecyclerView", "h", "Landroid/os/Bundle;", "savedInstanceState", "onActivityCreated", "", "getLayoutId", "Landroid/view/View;", "rootView", "initViews", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "typeId", "typeName", "d", "Lkotlin/jvm/functions/Function2;", "getCallBack", "()Lkotlin/jvm/functions/Function2;", "l", "(Lkotlin/jvm/functions/Function2;)V", "callBack", "Landroidx/recyclerview/widget/RecyclerView;", l11l11I1111l.l111l1111lIl, "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Landroid/widget/TextView;", "f", "Landroid/widget/TextView;", "titleView", "", "Lcn/soulapp/android/chatroom/bean/RoomTypeBean;", "g", "Ljava/util/List;", "data", "I", "lastClickPos", "i", "currentPos", "Lcn/soulapp/android/chatroom/bean/RoomTypeBean;", "currentSelectTypeBean", "Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/SoulHouseSelectPartyTypeDialog$PartyTypeAdapter;", "k", "Lkotlin/Lazy;", "()Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/SoulHouseSelectPartyTypeDialog$PartyTypeAdapter;", "partyTypeAdapter", "Ljava/lang/String;", "roomId", "", "m", "Z", "isUx", "()Z", "(Z)V", "Lcn/soulapp/cpnt_voiceparty/mvvm/SoulHouseDetailViewModel;", "n", "()Lcn/soulapp/cpnt_voiceparty/mvvm/SoulHouseDetailViewModel;", "viewModel", "o", "mClick", "p", "Ljava/lang/Integer;", "defaultPlayType", AppAgent.CONSTRUCT, "()V", "r", "a", "PartyTypeAdapter", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class SoulHouseSelectPartyTypeDialog extends BaseBottomDialogFragment {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private Function2<? super String, ? super String, kotlin.w> callBack;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private RecyclerView recyclerView;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private TextView titleView;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private List<RoomTypeBean> data;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private RoomTypeBean currentSelectTypeBean;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private String roomId;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean isUx;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean mClick;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f148969q = new LinkedHashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int lastClickPos = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int currentPos = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy partyTypeAdapter = kotlin.j.b(new Function0<PartyTypeAdapter>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.SoulHouseSelectPartyTypeDialog$partyTypeAdapter$2
        public static ChangeQuickRedirect changeQuickRedirect;

        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final SoulHouseSelectPartyTypeDialog.PartyTypeAdapter invoke() {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], SoulHouseSelectPartyTypeDialog.PartyTypeAdapter.class);
            return patchProxyResultProxy.isSupported ? (SoulHouseSelectPartyTypeDialog.PartyTypeAdapter) patchProxyResultProxy.result : this.this$0.new PartyTypeAdapter();
        }
    });

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy viewModel = kotlin.j.b(new Function0<SoulHouseDetailViewModel>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.SoulHouseSelectPartyTypeDialog$viewModel$2
        public static ChangeQuickRedirect changeQuickRedirect;

        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final SoulHouseDetailViewModel invoke() {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], SoulHouseDetailViewModel.class);
            return patchProxyResultProxy.isSupported ? (SoulHouseDetailViewModel) patchProxyResultProxy.result : (SoulHouseDetailViewModel) new ViewModelProvider(this.this$0).get(SoulHouseDetailViewModel.class);
        }
    });

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private Integer defaultPlayType = 0;

    /* JADX INFO: compiled from: SoulHouseSelectPartyTypeDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0014¨\u0006\n"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/SoulHouseSelectPartyTypeDialog$PartyTypeAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcn/soulapp/android/chatroom/bean/RoomTypeBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", MapController.ITEM_LAYER_TAG, "Lkotlin/w;", "a", AppAgent.CONSTRUCT, "(Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/SoulHouseSelectPartyTypeDialog;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public final class PartyTypeAdapter extends BaseQuickAdapter<RoomTypeBean, BaseViewHolder> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX WARN: Multi-variable type inference failed */
        public PartyTypeAdapter() {
            super(R$layout.Qj, null, 2, 0 == true ? 1 : 0);
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void convert(@NotNull BaseViewHolder holder, @NotNull RoomTypeBean item) {
            if (PatchProxy.proxy(new Object[]{holder, item}, this, changeQuickRedirect, false, 2, new Class[]{BaseViewHolder.class, RoomTypeBean.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(holder, "holder");
            kotlin.jvm.internal.v.j(item, "item");
            ShapeTextView shapeTextView = (ShapeTextView) holder.getView(R$id.FZ);
            shapeTextView.setText(item.classifyName);
            shapeTextView.setSelected(item.isSelected);
        }
    }

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.SoulHouseSelectPartyTypeDialog$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: SoulHouseSelectPartyTypeDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ3\u0010\n\u001a\u00020\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/SoulHouseSelectPartyTypeDialog$a;", "", "", "roomId", "", "Lcn/soulapp/android/chatroom/bean/RoomTypeBean;", "data", "", "defaultPlayType", "Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/SoulHouseSelectPartyTypeDialog;", "a", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/SoulHouseSelectPartyTypeDialog;", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.q qVar) {
            this();
        }

        @NotNull
        public final SoulHouseSelectPartyTypeDialog a(@Nullable String roomId, @Nullable List<RoomTypeBean> data, @Nullable Integer defaultPlayType) {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, data, defaultPlayType}, this, changeQuickRedirect, false, 2, new Class[]{String.class, List.class, Integer.class}, SoulHouseSelectPartyTypeDialog.class);
            if (patchProxyResultProxy.isSupported) {
                return (SoulHouseSelectPartyTypeDialog) patchProxyResultProxy.result;
            }
            SoulHouseSelectPartyTypeDialog soulHouseSelectPartyTypeDialog = new SoulHouseSelectPartyTypeDialog();
            soulHouseSelectPartyTypeDialog.roomId = roomId;
            soulHouseSelectPartyTypeDialog.data = data;
            soulHouseSelectPartyTypeDialog.defaultPlayType = defaultPlayType;
            return soulHouseSelectPartyTypeDialog;
        }
    }

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class b implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f148971a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f148972b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ SoulHouseSelectPartyTypeDialog f148973c;

        public b(View view, long j11, SoulHouseSelectPartyTypeDialog soulHouseSelectPartyTypeDialog) {
            this.f148971a = view;
            this.f148972b = j11;
            this.f148973c = soulHouseSelectPartyTypeDialog;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - cn.soulapp.cpnt_voiceparty.util.t1.d(this.f148971a) > this.f148972b || (this.f148971a instanceof Checkable)) {
                cn.soulapp.cpnt_voiceparty.util.t1.j(this.f148971a, jCurrentTimeMillis);
                this.f148973c.dismiss();
            }
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 13, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    private final PartyTypeAdapter f() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], PartyTypeAdapter.class);
        return patchProxyResultProxy.isSupported ? (PartyTypeAdapter) patchProxyResultProxy.result : (PartyTypeAdapter) this.partyTypeAdapter.getValue();
    }

    private final SoulHouseDetailViewModel g() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], SoulHouseDetailViewModel.class);
        return patchProxyResultProxy.isSupported ? (SoulHouseDetailViewModel) patchProxyResultProxy.result : (SoulHouseDetailViewModel) this.viewModel.getValue();
    }

    private final void h() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f().setOnItemClickListener(new OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.k3
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                SoulHouseSelectPartyTypeDialog.i(this.f149530a, baseQuickAdapter, view, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(SoulHouseSelectPartyTypeDialog this$0, BaseQuickAdapter adapter, View view, int i11) {
        if (PatchProxy.proxy(new Object[]{this$0, adapter, view, new Integer(i11)}, null, changeQuickRedirect, true, 12, new Class[]{SoulHouseSelectPartyTypeDialog.class, BaseQuickAdapter.class, View.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(adapter, "adapter");
        kotlin.jvm.internal.v.j(view, "view");
        if (i11 == this$0.currentPos || this$0.mClick) {
            return;
        }
        this$0.mClick = true;
        RoomTypeBean item = this$0.f().getItem(i11);
        if (this$0.lastClickPos != -1) {
            this$0.f().getItem(this$0.lastClickPos).isSelected = false;
            adapter.notifyItemChanged(this$0.lastClickPos);
        }
        this$0.f().getItem(i11).isSelected = true;
        adapter.notifyItemChanged(i11);
        this$0.lastClickPos = i11;
        this$0.currentSelectTypeBean = item;
        this$0.g().r(this$0.roomId, String.valueOf(item.f24105id));
    }

    private final void initRecyclerView() {
        RecyclerView recyclerView;
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        RecyclerView recyclerView2 = this.recyclerView;
        if (recyclerView2 != null) {
            recyclerView2.setItemAnimator(null);
            recyclerView2.setLayoutManager(new GridLayoutManager(recyclerView2.getContext(), 2));
            recyclerView2.setAdapter(f());
        }
        RecyclerView recyclerView3 = this.recyclerView;
        if (recyclerView3 != null && recyclerView3.getItemDecorationCount() == 0) {
            z11 = true;
        }
        if (z11 && (recyclerView = this.recyclerView) != null) {
            recyclerView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.SoulHouseSelectPartyTypeDialog.initRecyclerView.2
                public static ChangeQuickRedirect changeQuickRedirect;

                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
                    if (PatchProxy.proxy(new Object[]{outRect, view, parent, state}, this, changeQuickRedirect, false, 2, new Class[]{Rect.class, View.class, RecyclerView.class, RecyclerView.State.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    kotlin.jvm.internal.v.j(outRect, "outRect");
                    kotlin.jvm.internal.v.j(view, "view");
                    kotlin.jvm.internal.v.j(parent, "parent");
                    kotlin.jvm.internal.v.j(state, "state");
                    super.getItemOffsets(outRect, view, parent, state);
                    RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
                    if ((layoutManager != null ? layoutManager.getPosition(view) : 0) % 2 == 0) {
                        outRect.left = ExtensionsKt.dp(16);
                        outRect.right = ExtensionsKt.dp(5);
                    } else {
                        outRect.right = ExtensionsKt.dp(16);
                        outRect.left = ExtensionsKt.dp(5);
                    }
                    outRect.bottom = ExtensionsKt.dp(10);
                }
            });
        }
        f().setNewInstance(this.data);
    }

    private final void j() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        g().i().observe(this, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.j3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SoulHouseSelectPartyTypeDialog.k(this.f149523a, (RequestResult) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(SoulHouseSelectPartyTypeDialog this$0, RequestResult requestResult) {
        if (PatchProxy.proxy(new Object[]{this$0, requestResult}, null, changeQuickRedirect, true, 11, new Class[]{SoulHouseSelectPartyTypeDialog.class, RequestResult.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        if (!(requestResult != null && requestResult.getResult())) {
            this$0.mClick = false;
            b80.n0.h(requestResult != null ? requestResult.getFailedMsg() : null, new Object[0]);
            return;
        }
        Function2<? super String, ? super String, kotlin.w> function2 = this$0.callBack;
        if (function2 != null) {
            RoomTypeBean roomTypeBean = this$0.currentSelectTypeBean;
            String strValueOf = String.valueOf(roomTypeBean != null ? Integer.valueOf(roomTypeBean.f24105id) : null);
            RoomTypeBean roomTypeBean2 = this$0.currentSelectTypeBean;
            function2.mo3invoke(strValueOf, roomTypeBean2 != null ? roomTypeBean2.classifyName : null);
        }
        this$0.dismiss();
    }

    public void _$_clearFindViewByIdCache() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 9, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.f148969q.clear();
    }

    @Override // cn.soulapp.android.lib.common.base.BaseDialogFragment
    public int getLayoutId() {
        return R$layout.Z4;
    }

    @Override // cn.soulapp.android.lib.common.base.BaseDialogFragment
    public void initViews(@Nullable View view) {
        if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 5, new Class[]{View.class}, Void.TYPE).isSupported) {
            return;
        }
        setDialogSize(-1, this.isUx ? (int) (MateScreenUtil.f10630a.m() * 0.82f) : dpToPx(540));
        if (this.isUx && view != null) {
            view.setBackgroundResource(R$drawable.f127214g);
        }
        if (view != null) {
            View viewFindViewById = view.findViewById(R$id.Cy);
            this.recyclerView = (RecyclerView) view.findViewById(R$id.HO);
            this.titleView = (TextView) view.findViewById(R$id.f128629oq0);
            List<RoomTypeBean> list = this.data;
            RoomTypeBean roomTypeBean = null;
            Object obj = null;
            if (list != null) {
                for (Object obj2 : list) {
                    int i11 = ((RoomTypeBean) obj2).f24105id;
                    Integer num = this.defaultPlayType;
                    if (num != null && i11 == num.intValue()) {
                        obj = obj2;
                        break;
                    }
                }
                roomTypeBean = (RoomTypeBean) obj;
            }
            if (roomTypeBean != null) {
                roomTypeBean.isSelected = true;
            }
            List<RoomTypeBean> list2 = this.data;
            int iX0 = list2 != null ? CollectionsKt___CollectionsKt.x0(list2, roomTypeBean) : -1;
            this.lastClickPos = iX0;
            this.currentPos = iX0;
            j();
            h();
            initRecyclerView();
            viewFindViewById.setOnClickListener(new b(viewFindViewById, 800L, this));
        }
    }

    public final void l(@Nullable Function2<? super String, ? super String, kotlin.w> function2) {
        this.callBack = function2;
    }

    public final void m(boolean z11) {
        this.isUx = z11;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        Window window;
        if (PatchProxy.proxy(new Object[]{bundle}, this, changeQuickRedirect, false, 4, new Class[]{Bundle.class}, Void.TYPE).isSupported) {
            return;
        }
        super.onActivityCreated(bundle);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCancelable(false);
        }
        Dialog dialog3 = getDialog();
        WindowManager.LayoutParams attributes = (dialog3 == null || (window = dialog3.getWindow()) == null) ? null : window.getAttributes();
        if (attributes == null) {
            return;
        }
        attributes.windowAnimations = R$style.f130237j;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }
}