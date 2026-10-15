package cn.soulapp.cpnt_voiceparty.bean;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.analyticsV2.Const;
import com.ss.ttm.player.MediaPlayer;
import com.tencent.open.SocialConstants;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: FunctionBean.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0081\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u00104\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u00107\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u00108\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0013J\t\u00109\u001a\u00020\u000eHÆ\u0003J\u008a\u0001\u0010:\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÆ\u0001¢\u0006\u0002\u0010;J\u0013\u0010<\u001a\u00020\u000e2\b\u0010=\u001a\u0004\u0018\u00010>H\u0096\u0002J\b\u0010?\u001a\u00020\nH\u0016J\u0006\u0010@\u001a\u00020\u000eJ\u0006\u0010A\u001a\u00020\u000eJ\t\u0010B\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\f\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001c\"\u0004\b \u0010\u001eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001c\"\u0004\b\"\u0010\u001eR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010#\"\u0004\b$\u0010%R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001c\"\u0004\b'\u0010\u001eR\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b,\u0010\u0013\"\u0004\b-\u0010\u0015R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b.\u0010\u0013\"\u0004\b/\u0010\u0015¨\u0006C"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "Ljava/io/Serializable;", "name", "", "iconUrl", "cornerMark", "tagIconUrls", "", SocialConstants.PARAM_APP_DESC, "type", "", "techType", "bizType", "isOpened", "", "childGameSetups", "Lcn/soulapp/cpnt_voiceparty/bean/ChildPlaySetups;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLcn/soulapp/cpnt_voiceparty/bean/ChildPlaySetups;)V", "getBizType", "()Ljava/lang/Integer;", "setBizType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getChildGameSetups", "()Lcn/soulapp/cpnt_voiceparty/bean/ChildPlaySetups;", "setChildGameSetups", "(Lcn/soulapp/cpnt_voiceparty/bean/ChildPlaySetups;)V", "getCornerMark", "()Ljava/lang/String;", "setCornerMark", "(Ljava/lang/String;)V", "getDesc", "setDesc", "getIconUrl", "setIconUrl", "()Z", "setOpened", "(Z)V", "getName", "setName", "getTagIconUrls", "()Ljava/util/List;", "setTagIconUrls", "(Ljava/util/List;)V", "getTechType", "setTechType", "getType", "setType", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLcn/soulapp/cpnt_voiceparty/bean/ChildPlaySetups;)Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "equals", Const.HeartReason.OTHER, "", "hashCode", "isNativeGame", "isTypeGroup", "toString", "lib-chatroom_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final /* data */ class FunctionBean implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    private Integer bizType;

    @Nullable
    private ChildPlaySetups childGameSetups;

    @Nullable
    private String cornerMark;

    @Nullable
    private String desc;

    @Nullable
    private String iconUrl;
    private boolean isOpened;

    @Nullable
    private String name;

    @Nullable
    private List<String> tagIconUrls;

    @Nullable
    private Integer techType;

    @Nullable
    private Integer type;

    public FunctionBean() {
        this(null, null, null, null, null, null, null, null, false, null, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD, null);
    }

    public FunctionBean(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable List<String> list, @Nullable String str4, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, boolean z11, @Nullable ChildPlaySetups childPlaySetups) {
        this.name = str;
        this.iconUrl = str2;
        this.cornerMark = str3;
        this.tagIconUrls = list;
        this.desc = str4;
        this.type = num;
        this.techType = num2;
        this.bizType = num3;
        this.isOpened = z11;
        this.childGameSetups = childPlaySetups;
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    @Nullable
    /* JADX INFO: renamed from: component10, reason: from getter */
    public final ChildPlaySetups getChildGameSetups() {
        return this.childGameSetups;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getIconUrl() {
        return this.iconUrl;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCornerMark() {
        return this.cornerMark;
    }

    @Nullable
    public final List<String> component4() {
        return this.tagIconUrls;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDesc() {
        return this.desc;
    }

    @Nullable
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getType() {
        return this.type;
    }

    @Nullable
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Integer getTechType() {
        return this.techType;
    }

    @Nullable
    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getBizType() {
        return this.bizType;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getIsOpened() {
        return this.isOpened;
    }

    @NotNull
    public final FunctionBean copy(@Nullable String name, @Nullable String iconUrl, @Nullable String cornerMark, @Nullable List<String> tagIconUrls, @Nullable String desc, @Nullable Integer type, @Nullable Integer techType, @Nullable Integer bizType, boolean isOpened, @Nullable ChildPlaySetups childGameSetups) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{name, iconUrl, cornerMark, tagIconUrls, desc, type, techType, bizType, new Byte(isOpened ? (byte) 1 : (byte) 0), childGameSetups}, this, changeQuickRedirect, false, 6, new Class[]{String.class, String.class, String.class, List.class, String.class, Integer.class, Integer.class, Integer.class, Boolean.TYPE, ChildPlaySetups.class}, FunctionBean.class);
        return patchProxyResultProxy.isSupported ? (FunctionBean) patchProxyResultProxy.result : new FunctionBean(name, iconUrl, cornerMark, tagIconUrls, desc, type, techType, bizType, isOpened, childGameSetups);
    }

    public boolean equals(@Nullable Object other) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{other}, this, changeQuickRedirect, false, 4, new Class[]{Object.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (this == other) {
            return true;
        }
        FunctionBean functionBean = other instanceof FunctionBean ? (FunctionBean) other : null;
        return v.e(this.name, functionBean != null ? functionBean.name : null);
    }

    @Nullable
    public final Integer getBizType() {
        return this.bizType;
    }

    @Nullable
    public final ChildPlaySetups getChildGameSetups() {
        return this.childGameSetups;
    }

    @Nullable
    public final String getCornerMark() {
        return this.cornerMark;
    }

    @Nullable
    public final String getDesc() {
        return this.desc;
    }

    @Nullable
    public final String getIconUrl() {
        return this.iconUrl;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final List<String> getTagIconUrls() {
        return this.tagIconUrls;
    }

    @Nullable
    public final Integer getTechType() {
        return this.techType;
    }

    @Nullable
    public final Integer getType() {
        return this.type;
    }

    public int hashCode() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        String str = this.name;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final boolean isNativeGame() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        Integer num = this.techType;
        return num != null && num.intValue() == 1;
    }

    public final boolean isOpened() {
        return this.isOpened;
    }

    public final boolean isTypeGroup() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        Integer num = this.type;
        return num != null && num.intValue() == 3;
    }

    public final void setBizType(@Nullable Integer num) {
        this.bizType = num;
    }

    public final void setChildGameSetups(@Nullable ChildPlaySetups childPlaySetups) {
        this.childGameSetups = childPlaySetups;
    }

    public final void setCornerMark(@Nullable String str) {
        this.cornerMark = str;
    }

    public final void setDesc(@Nullable String str) {
        this.desc = str;
    }

    public final void setIconUrl(@Nullable String str) {
        this.iconUrl = str;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setOpened(boolean z11) {
        this.isOpened = z11;
    }

    public final void setTagIconUrls(@Nullable List<String> list) {
        this.tagIconUrls = list;
    }

    public final void setTechType(@Nullable Integer num) {
        this.techType = num;
    }

    public final void setType(@Nullable Integer num) {
        this.type = num;
    }

    @NotNull
    public String toString() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        return "FunctionBean(name=" + this.name + ", iconUrl=" + this.iconUrl + ", cornerMark=" + this.cornerMark + ", tagIconUrls=" + this.tagIconUrls + ", desc=" + this.desc + ", type=" + this.type + ", techType=" + this.techType + ", bizType=" + this.bizType + ", isOpened=" + this.isOpened + ", childGameSetups=" + this.childGameSetups + ')';
    }

    public /* synthetic */ FunctionBean(String str, String str2, String str3, List list, String str4, Integer num, Integer num2, Integer num3, boolean z11, ChildPlaySetups childPlaySetups, int i11, q qVar) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : list, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : num, (i11 & 64) != 0 ? null : num2, (i11 & 128) != 0 ? null : num3, (i11 & 256) != 0 ? false : z11, (i11 & 512) == 0 ? childPlaySetups : null);
    }
}