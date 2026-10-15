package cn.soulapp.cpnt_voiceparty.createroom;

import android.view.View;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.client.component.middle.platform.base.BaseKotlinFragment;
import cn.soulapp.cpnt_voiceparty.R$layout;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.q;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: CreateRoomPageCommonFragment.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \b2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\n"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/createroom/CreateRoomPageCommonFragment;", "Lcn/soulapp/android/client/component/middle/platform/base/BaseKotlinFragment;", "", "getRootLayoutRes", "Lkotlin/w;", "initView", AppAgent.CONSTRUCT, "()V", l11l11I1111l.l111l1111lIl, "a", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class CreateRoomPageCommonFragment extends BaseKotlinFragment {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f130787d = new LinkedHashMap();

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.createroom.CreateRoomPageCommonFragment$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: CreateRoomPageCommonFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\u0006"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/createroom/CreateRoomPageCommonFragment$a;", "", "Lcn/soulapp/cpnt_voiceparty/createroom/CreateRoomPageCommonFragment;", "a", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(q qVar) {
            this();
        }

        @NotNull
        public final CreateRoomPageCommonFragment a() {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], CreateRoomPageCommonFragment.class);
            return patchProxyResultProxy.isSupported ? (CreateRoomPageCommonFragment) patchProxyResultProxy.result : new CreateRoomPageCommonFragment();
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 4, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinFragment
    public void _$_clearFindViewByIdCache() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.f130787d.clear();
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinFragment
    @Nullable
    public View _$_findCachedViewById(int i11) {
        View viewFindViewById;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE}, View.class);
        if (patchProxyResultProxy.isSupported) {
            return (View) patchProxyResultProxy.result;
        }
        Map<Integer, View> map = this.f130787d;
        View view = map.get(Integer.valueOf(i11));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null || (viewFindViewById = view2.findViewById(i11)) == null) {
            return null;
        }
        map.put(Integer.valueOf(i11), viewFindViewById);
        return viewFindViewById;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinFragment, cn.soulapp.lib.basic.mvp.MartianFragment
    public int getRootLayoutRes() {
        return R$layout.f129593h1;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinFragment
    public void initView() {
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinFragment, cn.soulapp.lib.basic.mvp.MartianFragment, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }
}