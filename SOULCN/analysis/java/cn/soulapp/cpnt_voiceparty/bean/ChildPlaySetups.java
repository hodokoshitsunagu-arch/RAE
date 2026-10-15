package cn.soulapp.cpnt_voiceparty.bean;

import cn.android.lib.soul_entity.OperationModel;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.analyticsV2.Const;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: FunctionBean.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u0011\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0003J-\u0010\r\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\t¨\u0006\u0016"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/bean/ChildPlaySetups;", "Ljava/io/Serializable;", "positionContentResp", "", "Lcn/android/lib/soul_entity/OperationModel;", "playSetups", "Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "(Ljava/util/List;Ljava/util/List;)V", "getPlaySetups", "()Ljava/util/List;", "getPositionContentResp", "component1", "component2", "copy", "equals", "", Const.HeartReason.OTHER, "", "hashCode", "", "toString", "", "lib-chatroom_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final /* data */ class ChildPlaySetups implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    private final List<FunctionBean> playSetups;

    @Nullable
    private final List<OperationModel> positionContentResp;

    /* JADX WARN: Multi-variable type inference failed */
    public ChildPlaySetups() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public ChildPlaySetups(@Nullable List<OperationModel> list, @Nullable List<FunctionBean> list2) {
        this.positionContentResp = list;
        this.playSetups = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ChildPlaySetups copy$default(ChildPlaySetups childPlaySetups, List list, List list2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = childPlaySetups.positionContentResp;
        }
        if ((i11 & 2) != 0) {
            list2 = childPlaySetups.playSetups;
        }
        return childPlaySetups.copy(list, list2);
    }

    @Nullable
    public final List<OperationModel> component1() {
        return this.positionContentResp;
    }

    @Nullable
    public final List<FunctionBean> component2() {
        return this.playSetups;
    }

    @NotNull
    public final ChildPlaySetups copy(@Nullable List<OperationModel> positionContentResp, @Nullable List<FunctionBean> playSetups) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{positionContentResp, playSetups}, this, changeQuickRedirect, false, 2, new Class[]{List.class, List.class}, ChildPlaySetups.class);
        return patchProxyResultProxy.isSupported ? (ChildPlaySetups) patchProxyResultProxy.result : new ChildPlaySetups(positionContentResp, playSetups);
    }

    public boolean equals(@Nullable Object other) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{other}, this, changeQuickRedirect, false, 5, new Class[]{Object.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (this == other) {
            return true;
        }
        if (!(other instanceof ChildPlaySetups)) {
            return false;
        }
        ChildPlaySetups childPlaySetups = (ChildPlaySetups) other;
        return v.e(this.positionContentResp, childPlaySetups.positionContentResp) && v.e(this.playSetups, childPlaySetups.playSetups);
    }

    @Nullable
    public final List<FunctionBean> getPlaySetups() {
        return this.playSetups;
    }

    @Nullable
    public final List<OperationModel> getPositionContentResp() {
        return this.positionContentResp;
    }

    public int hashCode() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        List<OperationModel> list = this.positionContentResp;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<FunctionBean> list2 = this.playSetups;
        return iHashCode + (list2 != null ? list2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        return "ChildPlaySetups(positionContentResp=" + this.positionContentResp + ", playSetups=" + this.playSetups + ')';
    }

    public /* synthetic */ ChildPlaySetups(List list, List list2, int i11, q qVar) {
        this((i11 & 1) != 0 ? null : list, (i11 & 2) != 0 ? null : list2);
    }
}