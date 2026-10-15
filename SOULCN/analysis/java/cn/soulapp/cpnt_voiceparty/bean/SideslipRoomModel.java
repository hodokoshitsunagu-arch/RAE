package cn.soulapp.cpnt_voiceparty.bean;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.bean.RoomModel;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: SideslipRoomModel.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/bean/SideslipRoomModel;", "Ljava/io/Serializable;", "()V", "pageCursor", "", "getPageCursor", "()Ljava/lang/String;", "setPageCursor", "(Ljava/lang/String;)V", "pageIndex", "", "getPageIndex", "()I", "setPageIndex", "(I)V", "roomList", "", "Lcn/soulapp/android/chatroom/bean/RoomModel;", "getRoomList", "()Ljava/util/List;", "setRoomList", "(Ljava/util/List;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class SideslipRoomModel implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;

    @NotNull
    private String pageCursor = "";
    private int pageIndex = 1;

    @Nullable
    private List<? extends RoomModel> roomList;

    @NotNull
    public final String getPageCursor() {
        return this.pageCursor;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @Nullable
    public final List<RoomModel> getRoomList() {
        return this.roomList;
    }

    public final void setPageCursor(@NotNull String str) {
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 2, new Class[]{String.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(str, "<set-?>");
        this.pageCursor = str;
    }

    public final void setPageIndex(int i11) {
        this.pageIndex = i11;
    }

    public final void setRoomList(@Nullable List<? extends RoomModel> list) {
        this.roomList = list;
    }
}