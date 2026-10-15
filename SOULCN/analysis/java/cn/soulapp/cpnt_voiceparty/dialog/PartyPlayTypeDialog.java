package cn.soulapp.cpnt_voiceparty.dialog;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import cn.com.hjq.shape.view.ShapeTextView;
import cn.mate.android.utils.MateScreenUtil;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.bean.RoomTypeBean;
import cn.soulapp.android.lib.common.fragment.BottomTouchSlideDialogFragment;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.dialog.PartyPlayTypeDialog.PartyTypeAdapter;
import com.baidu.platform.comapi.map.MapController;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: PartyPlayTypeDialog.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 '2\u00020\u0001:\u0002()B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002¢\u0006\u0004\b%\u0010\u0016B\t\b\u0016¢\u0006\u0004\b%\u0010&J)\u0010\b\u001a\u00020\u00072\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\b\u0010\r\u001a\u00020\u0005H\u0014J\u0012\u0010\u0010\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014J\b\u0010\u0011\u001a\u00020\u0007H\u0014R*\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001f\u0010$\u001a\u00060\u001fR\u00020\u00008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#¨\u0006*"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/dialog/PartyPlayTypeDialog;", "Lcn/soulapp/android/lib/common/fragment/BottomTouchSlideDialogFragment;", "", "Lcn/soulapp/android/chatroom/bean/RoomTypeBean;", "data", "", "defaultPlayType", "Lkotlin/w;", "d", "(Ljava/util/List;Ljava/lang/Integer;)V", "Lcom/chad/library/adapter/base/listener/OnItemClickListener;", "onItemClickListener", l11l11I1111l.l111l1111lIl, "getLayoutId", "Landroid/view/View;", "rootView", "initViews", "onDialogStart", "Ljava/util/List;", ExpcompatUtils.COMPAT_VALUE_780, "()Ljava/util/List;", "setData", "(Ljava/util/List;)V", "Ljava/lang/Integer;", "Landroidx/recyclerview/widget/RecyclerView;", "f", "Landroidx/recyclerview/widget/RecyclerView;", "mRecyclerView", "g", "I", "lastClickPos", "Lcn/soulapp/cpnt_voiceparty/dialog/PartyPlayTypeDialog$PartyTypeAdapter;", "h", "Lkotlin/Lazy;", "c", "()Lcn/soulapp/cpnt_voiceparty/dialog/PartyPlayTypeDialog$PartyTypeAdapter;", "partyTypeAdapter", AppAgent.CONSTRUCT, "()V", "j", "a", "PartyTypeAdapter", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class PartyPlayTypeDialog extends BottomTouchSlideDialogFragment {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private List<RoomTypeBean> data;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private Integer defaultPlayType;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private RecyclerView mRecyclerView;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int lastClickPos;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy partyTypeAdapter;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f141273i;

    /* JADX INFO: compiled from: PartyPlayTypeDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0014¨\u0006\n"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/dialog/PartyPlayTypeDialog$PartyTypeAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcn/soulapp/android/chatroom/bean/RoomTypeBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", MapController.ITEM_LAYER_TAG, "Lkotlin/w;", "a", AppAgent.CONSTRUCT, "(Lcn/soulapp/cpnt_voiceparty/dialog/PartyPlayTypeDialog;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
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

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.dialog.PartyPlayTypeDialog$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: PartyPlayTypeDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¨\u0006\t"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/dialog/PartyPlayTypeDialog$a;", "", "", "Lcn/soulapp/android/chatroom/bean/RoomTypeBean;", "data", "Lcn/soulapp/cpnt_voiceparty/dialog/PartyPlayTypeDialog;", "a", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.q qVar) {
            this();
        }

        @NotNull
        public final PartyPlayTypeDialog a(@NotNull List<RoomTypeBean> data) {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{data}, this, changeQuickRedirect, false, 2, new Class[]{List.class}, PartyPlayTypeDialog.class);
            if (patchProxyResultProxy.isSupported) {
                return (PartyPlayTypeDialog) patchProxyResultProxy.result;
            }
            kotlin.jvm.internal.v.j(data, "data");
            return new PartyPlayTypeDialog(data);
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 12, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    public PartyPlayTypeDialog(@Nullable List<RoomTypeBean> list) {
        this.f141273i = new LinkedHashMap();
        this.data = list;
        this.defaultPlayType = 0;
        this.lastClickPos = -1;
        this.partyTypeAdapter = kotlin.j.b(new Function0<PartyTypeAdapter>() { // from class: cn.soulapp.cpnt_voiceparty.dialog.PartyPlayTypeDialog$partyTypeAdapter$2
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PartyPlayTypeDialog.PartyTypeAdapter invoke() {
                PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], PartyPlayTypeDialog.PartyTypeAdapter.class);
                return patchProxyResultProxy.isSupported ? (PartyPlayTypeDialog.PartyTypeAdapter) patchProxyResultProxy.result : this.this$0.new PartyTypeAdapter();
            }
        });
    }

    private final PartyTypeAdapter c() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], PartyTypeAdapter.class);
        return patchProxyResultProxy.isSupported ? (PartyTypeAdapter) patchProxyResultProxy.result : (PartyTypeAdapter) this.partyTypeAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(PartyPlayTypeDialog this$0, OnItemClickListener onItemClickListener, BaseQuickAdapter adapter, View view, int i11) {
        if (PatchProxy.proxy(new Object[]{this$0, onItemClickListener, adapter, view, new Integer(i11)}, null, changeQuickRedirect, true, 11, new Class[]{PartyPlayTypeDialog.class, OnItemClickListener.class, BaseQuickAdapter.class, View.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(adapter, "adapter");
        kotlin.jvm.internal.v.j(view, "view");
        if (this$0.lastClickPos != -1) {
            this$0.c().getItem(this$0.lastClickPos).isSelected = false;
            adapter.notifyItemChanged(this$0.lastClickPos);
        }
        this$0.c().getItem(i11).isSelected = true;
        adapter.notifyItemChanged(i11);
        this$0.lastClickPos = i11;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(adapter, view, i11);
        }
    }

    public void _$_clearFindViewByIdCache() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 9, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.f141273i.clear();
    }

    @Nullable
    public final List<RoomTypeBean> b() {
        return this.data;
    }

    public final void d(@Nullable List<RoomTypeBean> data, @Nullable Integer defaultPlayType) {
        if (PatchProxy.proxy(new Object[]{data, defaultPlayType}, this, changeQuickRedirect, false, 3, new Class[]{List.class, Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        this.data = data;
        RoomTypeBean roomTypeBean = null;
        Object obj = null;
        if (data != null) {
            for (Object obj2 : data) {
                if (defaultPlayType != null && ((RoomTypeBean) obj2).f24105id == defaultPlayType.intValue()) {
                    obj = obj2;
                    break;
                }
            }
            roomTypeBean = (RoomTypeBean) obj;
        }
        if (roomTypeBean != null) {
            roomTypeBean.isSelected = true;
        }
        this.lastClickPos = data != null ? CollectionsKt___CollectionsKt.x0(data, roomTypeBean) : -1;
    }

    public final void e(@Nullable final OnItemClickListener onItemClickListener) {
        if (PatchProxy.proxy(new Object[]{onItemClickListener}, this, changeQuickRedirect, false, 4, new Class[]{OnItemClickListener.class}, Void.TYPE).isSupported) {
            return;
        }
        c().setOnItemClickListener(new OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.dialog.l0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                PartyPlayTypeDialog.f(this.f141580a, onItemClickListener, baseQuickAdapter, view, i11);
            }
        });
    }

    @Override // cn.soulapp.android.lib.common.base.BaseDialogFragment
    public int getLayoutId() {
        return R$layout.Pj;
    }

    @Override // cn.soulapp.android.lib.common.base.BaseDialogFragment
    public void initViews(@Nullable View view) {
        RecyclerView recyclerView;
        if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 7, new Class[]{View.class}, Void.TYPE).isSupported) {
            return;
        }
        RecyclerView recyclerView2 = view != null ? (RecyclerView) view.findViewById(R$id.GO) : null;
        this.mRecyclerView = recyclerView2;
        if (recyclerView2 != null) {
            recyclerView2.setAdapter(c());
        }
        RecyclerView recyclerView3 = this.mRecyclerView;
        if (!(recyclerView3 != null && recyclerView3.getItemDecorationCount() == 0) || (recyclerView = this.mRecyclerView) == null) {
            return;
        }
        recyclerView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: cn.soulapp.cpnt_voiceparty.dialog.PartyPlayTypeDialog.initViews.1
            public static ChangeQuickRedirect changeQuickRedirect;

            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(@NotNull Rect outRect, @NotNull View view2, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
                if (PatchProxy.proxy(new Object[]{outRect, view2, parent, state}, this, changeQuickRedirect, false, 2, new Class[]{Rect.class, View.class, RecyclerView.class, RecyclerView.State.class}, Void.TYPE).isSupported) {
                    return;
                }
                kotlin.jvm.internal.v.j(outRect, "outRect");
                kotlin.jvm.internal.v.j(view2, "view");
                kotlin.jvm.internal.v.j(parent, "parent");
                kotlin.jvm.internal.v.j(state, "state");
                super.getItemOffsets(outRect, view2, parent, state);
                RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
                if ((layoutManager != null ? layoutManager.getPosition(view2) : 0) % 2 == 0) {
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

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // cn.soulapp.android.lib.common.base.BaseBottomDialogFragment
    public void onDialogStart() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], Void.TYPE).isSupported) {
            return;
        }
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
        c().setNewInstance(this.data);
        MateScreenUtil mateScreenUtil = MateScreenUtil.f10630a;
        setDialogSize(mateScreenUtil.u(), mateScreenUtil.a(246.0f));
        super.onDialogStart();
    }

    public PartyPlayTypeDialog() {
        this(new ArrayList());
    }
}