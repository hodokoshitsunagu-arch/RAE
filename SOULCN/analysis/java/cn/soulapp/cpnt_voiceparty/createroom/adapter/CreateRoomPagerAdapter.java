package cn.soulapp.cpnt_voiceparty.createroom.adapter;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: CreateRoomPagerAdapter.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0006H\u0016R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/createroom/adapter/CreateRoomPagerAdapter;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "Landroidx/fragment/app/Fragment;", "fragment", "Lkotlin/w;", "a", "", "getItemCount", "position", "createFragment", "", "Ljava/util/List;", "fragmentList", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Landroidx/lifecycle/Lifecycle;", RequestParameters.SUBRESOURCE_LIFECYCLE, AppAgent.CONSTRUCT, "(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class CreateRoomPagerAdapter extends FragmentStateAdapter {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final List<Fragment> fragmentList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateRoomPagerAdapter(@NotNull FragmentManager fragmentManager, @NotNull Lifecycle lifecycle) {
        super(fragmentManager, lifecycle);
        v.j(fragmentManager, "fragmentManager");
        v.j(lifecycle, "lifecycle");
        this.fragmentList = new ArrayList();
    }

    public final void a(@NotNull Fragment fragment) {
        if (PatchProxy.proxy(new Object[]{fragment}, this, changeQuickRedirect, false, 2, new Class[]{Fragment.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(fragment, "fragment");
        this.fragmentList.add(fragment);
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    @NotNull
    public Fragment createFragment(int position) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Integer(position)}, this, changeQuickRedirect, false, 4, new Class[]{Integer.TYPE}, Fragment.class);
        return patchProxyResultProxy.isSupported ? (Fragment) patchProxyResultProxy.result : this.fragmentList.get(position);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], Integer.TYPE);
        return patchProxyResultProxy.isSupported ? ((Integer) patchProxyResultProxy.result).intValue() : this.fragmentList.size();
    }
}