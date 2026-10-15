package cn.soulapp.android.chatroom.bean;

import android.os.Parcel;
import android.os.Parcelable;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.analyticsV2.Const;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import kotlinx.android.parcel.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomPlayType.kt */
/* JADX INFO: loaded from: classes11.dex */
@Parcelize
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\t\u0010\u0003\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0005\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\n\u001a\u00020\u0004HÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0004HÖ\u0001R$\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R$\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcn/soulapp/android/chatroom/bean/RoomPlayType;", "Landroid/os/Parcelable;", "", "toString", "", "hashCode", "", Const.HeartReason.OTHER, "", "equals", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lkotlin/w;", "writeToParcel", "playType", "Ljava/lang/Integer;", "a", "()Ljava/lang/Integer;", "setPlayType", "(Ljava/lang/Integer;)V", "previewIconUrl", "Ljava/lang/String;", ExpcompatUtils.COMPAT_VALUE_780, "()Ljava/lang/String;", "setPreviewIconUrl", "(Ljava/lang/String;)V", AppAgent.CONSTRUCT, "(Ljava/lang/Integer;Ljava/lang/String;)V", "lib-chatroom_release"}, k = 1, mv = {1, 6, 0})
public final /* data */ class RoomPlayType implements Parcelable {

    @NotNull
    public static final Parcelable.Creator<RoomPlayType> CREATOR;
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    private Integer playType;

    @Nullable
    private String previewIconUrl;

    /* JADX INFO: compiled from: RoomPlayType.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    public static final class a implements Parcelable.Creator<RoomPlayType> {
        public static ChangeQuickRedirect changeQuickRedirect;

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RoomPlayType createFromParcel(@NotNull Parcel parcel) {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{parcel}, this, changeQuickRedirect, false, 2, new Class[]{Parcel.class}, RoomPlayType.class);
            if (patchProxyResultProxy.isSupported) {
                return (RoomPlayType) patchProxyResultProxy.result;
            }
            v.j(parcel, "parcel");
            return new RoomPlayType(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final RoomPlayType[] newArray(int i11) {
            return new RoomPlayType[i11];
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 8, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        CREATOR = new a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RoomPlayType() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public RoomPlayType(@Nullable Integer num, @Nullable String str) {
        this.playType = num;
        this.previewIconUrl = str;
    }

    @Nullable
    /* JADX INFO: renamed from: a, reason: from getter */
    public final Integer getPlayType() {
        return this.playType;
    }

    @Nullable
    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getPreviewIconUrl() {
        return this.previewIconUrl;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object other) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{other}, this, changeQuickRedirect, false, 5, new Class[]{Object.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (this == other) {
            return true;
        }
        if (!(other instanceof RoomPlayType)) {
            return false;
        }
        RoomPlayType roomPlayType = (RoomPlayType) other;
        return v.e(this.playType, roomPlayType.playType) && v.e(this.previewIconUrl, roomPlayType.previewIconUrl);
    }

    public int hashCode() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        Integer num = this.playType;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.previewIconUrl;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        return "RoomPlayType(playType=" + this.playType + ", previewIconUrl=" + this.previewIconUrl + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i11) {
        if (PatchProxy.proxy(new Object[]{out, new Integer(i11)}, this, changeQuickRedirect, false, 6, new Class[]{Parcel.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        v.j(out, "out");
        Integer num = this.playType;
        if (num == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num.intValue());
        }
        out.writeString(this.previewIconUrl);
    }

    public /* synthetic */ RoomPlayType(Integer num, String str, int i11, q qVar) {
        this((i11 & 1) != 0 ? null : num, (i11 & 2) != 0 ? null : str);
    }
}