package cn.soulapp.android.chatroom.bean;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: ClassifyGroupCreateSuccessBean.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcn/soulapp/android/chatroom/bean/ClassifyGroupCreateSuccessBean;", "Lcn/soulapp/android/chatroom/bean/BaseGroupResponse;", "()V", "groupId", "", "getGroupId", "()Ljava/lang/String;", "setGroupId", "(Ljava/lang/String;)V", "lib-chatroom_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class ClassifyGroupCreateSuccessBean extends BaseGroupResponse {
    public static ChangeQuickRedirect changeQuickRedirect;

    @NotNull
    private String groupId = "";

    @NotNull
    public final String getGroupId() {
        return this.groupId;
    }

    public final void setGroupId(@NotNull String str) {
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 2, new Class[]{String.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(str, "<set-?>");
        this.groupId = str;
    }
}