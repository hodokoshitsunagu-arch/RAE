package cn.soulapp.android.chatroom.bean;

import cn.soul.android.plugin.ChangeQuickRedirect;
import java.io.Serializable;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomTypeIconConfigBean.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\b¨\u0006\u001b"}, d2 = {"Lcn/soulapp/android/chatroom/bean/RoomTypeIconConfigBean;", "Ljava/io/Serializable;", "()V", "dayIconUrl", "", "getDayIconUrl", "()Ljava/lang/String;", "setDayIconUrl", "(Ljava/lang/String;)V", "daySelectedIconUrl", "getDaySelectedIconUrl", "setDaySelectedIconUrl", "iconHeight", "", "getIconHeight", "()I", "setIconHeight", "(I)V", "iconWidth", "getIconWidth", "setIconWidth", "nightIconUrl", "getNightIconUrl", "setNightIconUrl", "nightSelectedIconUrl", "getNightSelectedIconUrl", "setNightSelectedIconUrl", "lib-chatroom_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class RoomTypeIconConfigBean implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    private String dayIconUrl;

    @Nullable
    private String daySelectedIconUrl;
    private int iconHeight;
    private int iconWidth;

    @Nullable
    private String nightIconUrl;

    @Nullable
    private String nightSelectedIconUrl;

    @Nullable
    public final String getDayIconUrl() {
        return this.dayIconUrl;
    }

    @Nullable
    public final String getDaySelectedIconUrl() {
        return this.daySelectedIconUrl;
    }

    public final int getIconHeight() {
        return this.iconHeight;
    }

    public final int getIconWidth() {
        return this.iconWidth;
    }

    @Nullable
    public final String getNightIconUrl() {
        return this.nightIconUrl;
    }

    @Nullable
    public final String getNightSelectedIconUrl() {
        return this.nightSelectedIconUrl;
    }

    public final void setDayIconUrl(@Nullable String str) {
        this.dayIconUrl = str;
    }

    public final void setDaySelectedIconUrl(@Nullable String str) {
        this.daySelectedIconUrl = str;
    }

    public final void setIconHeight(int i11) {
        this.iconHeight = i11;
    }

    public final void setIconWidth(int i11) {
        this.iconWidth = i11;
    }

    public final void setNightIconUrl(@Nullable String str) {
        this.nightIconUrl = str;
    }

    public final void setNightSelectedIconUrl(@Nullable String str) {
        this.nightSelectedIconUrl = str;
    }
}