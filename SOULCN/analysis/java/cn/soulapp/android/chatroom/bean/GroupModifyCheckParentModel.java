package cn.soulapp.android.chatroom.bean;

import cn.soul.android.plugin.ChangeQuickRedirect;
import java.io.Serializable;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: GroupModifyCheckParentModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcn/soulapp/android/chatroom/bean/GroupModifyCheckParentModel;", "Ljava/io/Serializable;", "()V", "data", "Lcn/soulapp/android/chatroom/bean/GroupModifyCheckModel;", "getData", "()Lcn/soulapp/android/chatroom/bean/GroupModifyCheckModel;", "setData", "(Lcn/soulapp/android/chatroom/bean/GroupModifyCheckModel;)V", "message", "", "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", "success", "", "getSuccess", "()Ljava/lang/Boolean;", "setSuccess", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "toast", "getToast", "setToast", "lib-chatroom_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class GroupModifyCheckParentModel implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    private GroupModifyCheckModel data;

    @Nullable
    private String message;

    @Nullable
    private Boolean success = Boolean.FALSE;

    @Nullable
    private String toast;

    @Nullable
    public final GroupModifyCheckModel getData() {
        return this.data;
    }

    @Nullable
    public final String getMessage() {
        return this.message;
    }

    @Nullable
    public final Boolean getSuccess() {
        return this.success;
    }

    @Nullable
    public final String getToast() {
        return this.toast;
    }

    public final void setData(@Nullable GroupModifyCheckModel groupModifyCheckModel) {
        this.data = groupModifyCheckModel;
    }

    public final void setMessage(@Nullable String str) {
        this.message = str;
    }

    public final void setSuccess(@Nullable Boolean bool) {
        this.success = bool;
    }

    public final void setToast(@Nullable String str) {
        this.toast = str;
    }
}