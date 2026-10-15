package cn.soulapp.android.chatroom.bean;

import cn.soul.android.plugin.ChangeQuickRedirect;
import java.io.Serializable;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: GroupSettingModifyInfo.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcn/soulapp/android/chatroom/bean/GroupSettingModifyInfo;", "Ljava/io/Serializable;", "()V", "canModify", "", "getCanModify", "()Z", "setCanModify", "(Z)V", "id", "", "getId", "()I", "setId", "(I)V", "name", "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "toast", "getToast", "setToast", "lib-chatroom_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class GroupSettingModifyInfo implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;
    private boolean canModify = true;
    private int id;

    @Nullable
    private String name;

    @Nullable
    private String toast;

    public final boolean getCanModify() {
        return this.canModify;
    }

    public final int getId() {
        return this.id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getToast() {
        return this.toast;
    }

    public final void setCanModify(boolean z11) {
        this.canModify = z11;
    }

    public final void setId(int i11) {
        this.id = i11;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setToast(@Nullable String str) {
        this.toast = str;
    }
}