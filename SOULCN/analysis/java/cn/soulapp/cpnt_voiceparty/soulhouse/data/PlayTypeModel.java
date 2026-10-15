package cn.soulapp.cpnt_voiceparty.soulhouse.data;

import android.os.Parcel;
import android.os.Parcelable;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import kotlinx.android.parcel.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomConfigListModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Parcelize
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0007\u0018\u00002\u00020\u0001Be\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0012\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u001c\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b*\u0010+J\t\u0010\u0003\u001a\u00020\u0002HÖ\u0001J\u0019\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002HÖ\u0001R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\n\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR$\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R\"\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R$\u0010#\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0014\u001a\u0004\b$\u0010\u0016\"\u0004\b%\u0010\u0018R\u0019\u0010&\u001a\u0004\u0018\u00010\u00128\u0006¢\u0006\f\n\u0004\b&\u0010\u0014\u001a\u0004\b'\u0010\u0016R\u0019\u0010(\u001a\u0004\u0018\u00010\u00128\u0006¢\u0006\f\n\u0004\b(\u0010\u0014\u001a\u0004\b)\u0010\u0016¨\u0006,"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/data/PlayTypeModel;", "Landroid/os/Parcelable;", "", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lkotlin/w;", "writeToParcel", "playTypeCode", "Ljava/lang/Integer;", "d", "()Ljava/lang/Integer;", "setPlayTypeCode", "(Ljava/lang/Integer;)V", "techType", "g", "setTechType", "", "name", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "iconUrl", ExpcompatUtils.COMPAT_VALUE_780, "setIconUrl", "", "hasSelected", "Z", "a", "()Z", "h", "(Z)V", "tagIconUrl", "f", "setTagIconUrl", "tabCode", "getTabCode", "previewBackground", l11l11I1111l.l111l1111lIl, AppAgent.CONSTRUCT, "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class PlayTypeModel implements Parcelable {

    @NotNull
    public static final Parcelable.Creator<PlayTypeModel> CREATOR;
    public static ChangeQuickRedirect changeQuickRedirect;
    private boolean hasSelected;

    @Nullable
    private String iconUrl;

    @Nullable
    private String name;

    @Nullable
    private Integer playTypeCode;

    @Nullable
    private final String previewBackground;

    @Nullable
    private final String tabCode;

    @Nullable
    private String tagIconUrl;

    @Nullable
    private Integer techType;

    /* JADX INFO: compiled from: RoomConfigListModel.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    public static final class a implements Parcelable.Creator<PlayTypeModel> {
        public static ChangeQuickRedirect changeQuickRedirect;

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PlayTypeModel createFromParcel(@NotNull Parcel parcel) {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{parcel}, this, changeQuickRedirect, false, 2, new Class[]{Parcel.class}, PlayTypeModel.class);
            if (patchProxyResultProxy.isSupported) {
                return (PlayTypeModel) patchProxyResultProxy.result;
            }
            v.j(parcel, "parcel");
            return new PlayTypeModel(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PlayTypeModel[] newArray(int i11) {
            return new PlayTypeModel[i11];
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 4, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        CREATOR = new a();
    }

    public PlayTypeModel() {
        this(null, null, null, null, false, null, null, null, 255, null);
    }

    public PlayTypeModel(@Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable String str2, boolean z11, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        this.playTypeCode = num;
        this.techType = num2;
        this.name = str;
        this.iconUrl = str2;
        this.hasSelected = z11;
        this.tagIconUrl = str3;
        this.tabCode = str4;
        this.previewBackground = str5;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getHasSelected() {
        return this.hasSelected;
    }

    @Nullable
    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getIconUrl() {
        return this.iconUrl;
    }

    @Nullable
    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getName() {
        return this.name;
    }

    @Nullable
    /* JADX INFO: renamed from: d, reason: from getter */
    public final Integer getPlayTypeCode() {
        return this.playTypeCode;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getPreviewBackground() {
        return this.previewBackground;
    }

    @Nullable
    /* JADX INFO: renamed from: f, reason: from getter */
    public final String getTagIconUrl() {
        return this.tagIconUrl;
    }

    @Nullable
    /* JADX INFO: renamed from: g, reason: from getter */
    public final Integer getTechType() {
        return this.techType;
    }

    public final void h(boolean z11) {
        this.hasSelected = z11;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i11) {
        if (PatchProxy.proxy(new Object[]{out, new Integer(i11)}, this, changeQuickRedirect, false, 2, new Class[]{Parcel.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        v.j(out, "out");
        Integer num = this.playTypeCode;
        if (num == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num.intValue());
        }
        Integer num2 = this.techType;
        if (num2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num2.intValue());
        }
        out.writeString(this.name);
        out.writeString(this.iconUrl);
        out.writeInt(this.hasSelected ? 1 : 0);
        out.writeString(this.tagIconUrl);
        out.writeString(this.tabCode);
        out.writeString(this.previewBackground);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ PlayTypeModel(Integer num, Integer num2, String str, String str2, boolean z11, String str3, String str4, String str5, int i11, q qVar) {
        Integer num3 = 0;
        this((i11 & 1) != 0 ? num3 : num, (i11 & 2) == 0 ? num2 : 0, (i11 & 4) != 0 ? null : str, (i11 & 8) != 0 ? "" : str2, (i11 & 16) == 0 ? z11 : false, (i11 & 32) != 0 ? null : str3, (i11 & 64) != 0 ? null : str4, (i11 & 128) == 0 ? str5 : null);
    }
}