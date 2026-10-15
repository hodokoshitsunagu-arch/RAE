package cn.soulapp.cpnt_voiceparty.soulhouse.data;

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

/* JADX INFO: compiled from: RoomConfigListModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J3\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0019"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/data/TabConfigData;", "Ljava/io/Serializable;", "tabCode", "", "tabName", "playTypeConfigList", "", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/PlayTypeModel;", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getPlayTypeConfigList", "()Ljava/util/List;", "getTabCode", "()Ljava/lang/String;", "getTabName", "component1", "component2", "component3", "copy", "equals", "", Const.HeartReason.OTHER, "", "hashCode", "", "toString", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final /* data */ class TabConfigData implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    private final List<PlayTypeModel> playTypeConfigList;

    @Nullable
    private final String tabCode;

    @Nullable
    private final String tabName;

    public TabConfigData() {
        this(null, null, null, 7, null);
    }

    public TabConfigData(@Nullable String str, @Nullable String str2, @Nullable List<PlayTypeModel> list) {
        this.tabCode = str;
        this.tabName = str2;
        this.playTypeConfigList = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TabConfigData copy$default(TabConfigData tabConfigData, String str, String str2, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = tabConfigData.tabCode;
        }
        if ((i11 & 2) != 0) {
            str2 = tabConfigData.tabName;
        }
        if ((i11 & 4) != 0) {
            list = tabConfigData.playTypeConfigList;
        }
        return tabConfigData.copy(str, str2, list);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTabCode() {
        return this.tabCode;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTabName() {
        return this.tabName;
    }

    @Nullable
    public final List<PlayTypeModel> component3() {
        return this.playTypeConfigList;
    }

    @NotNull
    public final TabConfigData copy(@Nullable String tabCode, @Nullable String tabName, @Nullable List<PlayTypeModel> playTypeConfigList) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{tabCode, tabName, playTypeConfigList}, this, changeQuickRedirect, false, 2, new Class[]{String.class, String.class, List.class}, TabConfigData.class);
        return patchProxyResultProxy.isSupported ? (TabConfigData) patchProxyResultProxy.result : new TabConfigData(tabCode, tabName, playTypeConfigList);
    }

    public boolean equals(@Nullable Object other) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{other}, this, changeQuickRedirect, false, 5, new Class[]{Object.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (this == other) {
            return true;
        }
        if (!(other instanceof TabConfigData)) {
            return false;
        }
        TabConfigData tabConfigData = (TabConfigData) other;
        return v.e(this.tabCode, tabConfigData.tabCode) && v.e(this.tabName, tabConfigData.tabName) && v.e(this.playTypeConfigList, tabConfigData.playTypeConfigList);
    }

    @Nullable
    public final List<PlayTypeModel> getPlayTypeConfigList() {
        return this.playTypeConfigList;
    }

    @Nullable
    public final String getTabCode() {
        return this.tabCode;
    }

    @Nullable
    public final String getTabName() {
        return this.tabName;
    }

    public int hashCode() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        String str = this.tabCode;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.tabName;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<PlayTypeModel> list = this.playTypeConfigList;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        return "TabConfigData(tabCode=" + this.tabCode + ", tabName=" + this.tabName + ", playTypeConfigList=" + this.playTypeConfigList + ')';
    }

    public /* synthetic */ TabConfigData(String str, String str2, List list, int i11, q qVar) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : list);
    }
}