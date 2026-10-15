package cn.soulapp.android.chatroom.bean;

import cn.soul.android.plugin.ChangeQuickRedirect;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: compiled from: CreateGiftConfig.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, d2 = {"Lcn/soulapp/android/chatroom/bean/CreateGiftConfig;", "Ljava/io/Serializable;", "()V", "creatRoomTimeLimit", "", "getCreatRoomTimeLimit", "()I", "setCreatRoomTimeLimit", "(I)V", "createRoomCountLimit", "getCreateRoomCountLimit", "setCreateRoomCountLimit", "sendGiftCountLimit", "getSendGiftCountLimit", "setSendGiftCountLimit", "lib-chatroom_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class CreateGiftConfig implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;
    private int creatRoomTimeLimit;
    private int createRoomCountLimit;
    private int sendGiftCountLimit;

    public final int getCreatRoomTimeLimit() {
        return this.creatRoomTimeLimit;
    }

    public final int getCreateRoomCountLimit() {
        return this.createRoomCountLimit;
    }

    public final int getSendGiftCountLimit() {
        return this.sendGiftCountLimit;
    }

    public final void setCreatRoomTimeLimit(int i11) {
        this.creatRoomTimeLimit = i11;
    }

    public final void setCreateRoomCountLimit(int i11) {
        this.createRoomCountLimit = i11;
    }

    public final void setSendGiftCountLimit(int i11) {
        this.sendGiftCountLimit = i11;
    }
}