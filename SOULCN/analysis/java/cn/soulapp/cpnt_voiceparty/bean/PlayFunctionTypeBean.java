package cn.soulapp.cpnt_voiceparty.bean;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.analyticsV2.Const;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: PlayFunctionTypeBean.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u001a\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\b¢\u0006\u0002\u0010\tJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u001d\u0010\u0013\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\bHÆ\u0003JD\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u001c\b\u0002\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\bHÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R%\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/bean/PlayFunctionTypeBean;", "Ljava/io/Serializable;", "classifyName", "", "classifyType", "", "bizTypes", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/ArrayList;)V", "getBizTypes", "()Ljava/util/ArrayList;", "getClassifyName", "()Ljava/lang/String;", "getClassifyType", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/ArrayList;)Lcn/soulapp/cpnt_voiceparty/bean/PlayFunctionTypeBean;", "equals", "", Const.HeartReason.OTHER, "", "hashCode", "toString", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final /* data */ class PlayFunctionTypeBean implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    private final ArrayList<Integer> bizTypes;

    @Nullable
    private final String classifyName;

    @Nullable
    private final Integer classifyType;

    public PlayFunctionTypeBean(@Nullable String str, @Nullable Integer num, @Nullable ArrayList<Integer> arrayList) {
        this.classifyName = str;
        this.classifyType = num;
        this.bizTypes = arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PlayFunctionTypeBean copy$default(PlayFunctionTypeBean playFunctionTypeBean, String str, Integer num, ArrayList arrayList, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = playFunctionTypeBean.classifyName;
        }
        if ((i11 & 2) != 0) {
            num = playFunctionTypeBean.classifyType;
        }
        if ((i11 & 4) != 0) {
            arrayList = playFunctionTypeBean.bizTypes;
        }
        return playFunctionTypeBean.copy(str, num, arrayList);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getClassifyName() {
        return this.classifyName;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getClassifyType() {
        return this.classifyType;
    }

    @Nullable
    public final ArrayList<Integer> component3() {
        return this.bizTypes;
    }

    @NotNull
    public final PlayFunctionTypeBean copy(@Nullable String classifyName, @Nullable Integer classifyType, @Nullable ArrayList<Integer> bizTypes) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{classifyName, classifyType, bizTypes}, this, changeQuickRedirect, false, 2, new Class[]{String.class, Integer.class, ArrayList.class}, PlayFunctionTypeBean.class);
        return patchProxyResultProxy.isSupported ? (PlayFunctionTypeBean) patchProxyResultProxy.result : new PlayFunctionTypeBean(classifyName, classifyType, bizTypes);
    }

    public boolean equals(@Nullable Object other) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{other}, this, changeQuickRedirect, false, 5, new Class[]{Object.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlayFunctionTypeBean)) {
            return false;
        }
        PlayFunctionTypeBean playFunctionTypeBean = (PlayFunctionTypeBean) other;
        return v.e(this.classifyName, playFunctionTypeBean.classifyName) && v.e(this.classifyType, playFunctionTypeBean.classifyType) && v.e(this.bizTypes, playFunctionTypeBean.bizTypes);
    }

    @Nullable
    public final ArrayList<Integer> getBizTypes() {
        return this.bizTypes;
    }

    @Nullable
    public final String getClassifyName() {
        return this.classifyName;
    }

    @Nullable
    public final Integer getClassifyType() {
        return this.classifyType;
    }

    public int hashCode() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        String str = this.classifyName;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.classifyType;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        ArrayList<Integer> arrayList = this.bizTypes;
        return iHashCode2 + (arrayList != null ? arrayList.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        return "PlayFunctionTypeBean(classifyName=" + this.classifyName + ", classifyType=" + this.classifyType + ", bizTypes=" + this.bizTypes + ')';
    }
}