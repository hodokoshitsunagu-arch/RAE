package cn.soulapp.android.chatroom.bean;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: CreateChatRoomPreCheckBean.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcn/soulapp/android/chatroom/bean/CreateChatRoomPreCheckBean;", "Ljava/io/Serializable;", "()V", "identifyUrl", "", "getIdentifyUrl", "()Ljava/lang/String;", "setIdentifyUrl", "(Ljava/lang/String;)V", "roomCreateQualification", "", "getRoomCreateQualification", "()Z", "setRoomCreateQualification", "(Z)V", "lib-chatroom_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class CreateChatRoomPreCheckBean implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;

    @NotNull
    private String identifyUrl = "";
    private boolean roomCreateQualification;

    @NotNull
    public final String getIdentifyUrl() {
        return this.identifyUrl;
    }

    public final boolean getRoomCreateQualification() {
        return this.roomCreateQualification;
    }

    public final void setIdentifyUrl(@NotNull String str) {
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 2, new Class[]{String.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(str, "<set-?>");
        this.identifyUrl = str;
    }

    public final void setRoomCreateQualification(boolean z11) {
        this.roomCreateQualification = z11;
    }
}