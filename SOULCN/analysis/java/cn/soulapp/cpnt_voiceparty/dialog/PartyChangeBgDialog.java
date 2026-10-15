package cn.soulapp.cpnt_voiceparty.dialog;

import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import cn.mate.android.utils.MateScreenUtil;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.common.fragment.BottomTouchSlideDialogFragment;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.fragment.BackgroundListFragment;
import cn.soulapp.cpnt_voiceparty.mvvm.CreateChatRoomViewModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.BackgroundClassifyModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.BackgroundDataModel;
import cn.soulapp.lib.utils.ext.FragmentExtKt;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.ss.ttm.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: PartyChangeBgDialog.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J\b\u0010\u0003\u001a\u00020\u0002H\u0014J \u0010\n\u001a\u00020\t2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\b\b\u0002\u0010\b\u001a\u00020\u0007J\u0012\u0010\r\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00050\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001b\u0010!\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0013\u001a\u0004\b\u001f\u0010 ¨\u0006$"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/dialog/PartyChangeBgDialog;", "Lcn/soulapp/android/lib/common/fragment/BottomTouchSlideDialogFragment;", "", "getLayoutId", "", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/BackgroundClassifyModel;", "list", "", "hasSelected", "Lkotlin/w;", l11l11I1111l.l111l1111lIl, "Landroid/view/View;", "rootView", "initViews", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/BackgroundDataModel;", "d", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/BackgroundDataModel;", "selectBg", "Lcn/soulapp/cpnt_voiceparty/fragment/BackgroundListFragment;", "Lkotlin/Lazy;", "c", "()Lcn/soulapp/cpnt_voiceparty/fragment/BackgroundListFragment;", "partyBgFragment", "", "f", "Ljava/util/List;", "data", "g", "Z", "Lcn/soulapp/cpnt_voiceparty/mvvm/CreateChatRoomViewModel;", "h", ExpcompatUtils.COMPAT_VALUE_780, "()Lcn/soulapp/cpnt_voiceparty/mvvm/CreateChatRoomViewModel;", "createChatRoomViewModel", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class PartyChangeBgDialog extends BottomTouchSlideDialogFragment {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private BackgroundDataModel selectBg;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private boolean hasSelected;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f141257i = new LinkedHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy partyBgFragment = kotlin.j.b(PartyChangeBgDialog$partyBgFragment$2.INSTANCE);

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final List<BackgroundClassifyModel> data = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy createChatRoomViewModel = kotlin.j.b(new Function0<CreateChatRoomViewModel>() { // from class: cn.soulapp.cpnt_voiceparty.dialog.PartyChangeBgDialog$createChatRoomViewModel$2
        public static ChangeQuickRedirect changeQuickRedirect;

        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final CreateChatRoomViewModel invoke() {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], CreateChatRoomViewModel.class);
            if (patchProxyResultProxy.isSupported) {
                return (CreateChatRoomViewModel) patchProxyResultProxy.result;
            }
            FragmentActivity activity = this.this$0.getActivity();
            if (activity != null) {
                return (CreateChatRoomViewModel) new ViewModelProvider(activity).get(CreateChatRoomViewModel.class);
            }
            throw new NullPointerException("null cannot be cast to non-null type androidx.lifecycle.ViewModelStoreOwner");
        }
    });

    private final CreateChatRoomViewModel b() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], CreateChatRoomViewModel.class);
        return patchProxyResultProxy.isSupported ? (CreateChatRoomViewModel) patchProxyResultProxy.result : (CreateChatRoomViewModel) this.createChatRoomViewModel.getValue();
    }

    private final BackgroundListFragment c() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], BackgroundListFragment.class);
        return patchProxyResultProxy.isSupported ? (BackgroundListFragment) patchProxyResultProxy.result : (BackgroundListFragment) this.partyBgFragment.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(PartyChangeBgDialog this$0, BackgroundDataModel backgroundDataModel) {
        if (PatchProxy.proxy(new Object[]{this$0, backgroundDataModel}, null, changeQuickRedirect, true, 9, new Class[]{PartyChangeBgDialog.class, BackgroundDataModel.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.selectBg = backgroundDataModel;
    }

    public void _$_clearFindViewByIdCache() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.f141257i.clear();
    }

    public final void e(@Nullable List<BackgroundClassifyModel> list, boolean z11) {
        Collection<? extends BackgroundClassifyModel> arrayList;
        if (PatchProxy.proxy(new Object[]{list, new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 4, new Class[]{List.class, Boolean.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        this.data.clear();
        List<BackgroundClassifyModel> list2 = this.data;
        if (list == null || (arrayList = CollectionsKt___CollectionsKt.t1(list)) == null) {
            arrayList = new ArrayList<>();
        }
        list2.addAll(arrayList);
        this.hasSelected = z11;
    }

    @Override // cn.soulapp.android.lib.common.base.BaseDialogFragment
    public int getLayoutId() {
        return R$layout.Kj;
    }

    @Override // cn.soulapp.android.lib.common.base.BaseDialogFragment
    public void initViews(@Nullable View view) {
        if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 6, new Class[]{View.class}, Void.TYPE).isSupported) {
            return;
        }
        FragmentExtKt.e(this, c(), R$id.Pe);
        setDialogSize(MateScreenUtil.f10630a.u(), ExtensionsKt.dp(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_PREVENT_DTS_BACK));
        b().c().observe(this, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.dialog.j0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PartyChangeBgDialog.d(this.f141575a, (BackgroundDataModel) obj);
            }
        });
        c().k(this.selectBg);
        c().i(this.data, this.hasSelected);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }
}