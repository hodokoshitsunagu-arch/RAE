package cn.soulapp.cpnt_voiceparty.bean;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.q;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomModeInfo.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0002\b\u000e\u0018\u0000 &2\u00020\u0001:\u0001'B\u0007¢\u0006\u0004\b$\u0010%J\b\u0010\u0003\u001a\u00020\u0002H\u0016R$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0005\u001a\u0004\b\u0018\u0010\u0007\"\u0004\b\u0019\u0010\tR$\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010!\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0005\u001a\u0004\b\"\u0010\u0007\"\u0004\b#\u0010\t¨\u0006("}, d2 = {"Lcn/soulapp/cpnt_voiceparty/bean/RoomModeInfo;", "Ljava/io/Serializable;", "", "toString", "roomId", "Ljava/lang/String;", "getRoomId", "()Ljava/lang/String;", "setRoomId", "(Ljava/lang/String;)V", "", "playType", "Ljava/lang/Integer;", "getPlayType", "()Ljava/lang/Integer;", "setPlayType", "(Ljava/lang/Integer;)V", "groupType", "I", "getGroupType", "()I", "setGroupType", "(I)V", "gameId", "getGameId", "setGameId", "", "gameInfo", "Ljava/lang/Object;", "getGameInfo", "()Ljava/lang/Object;", "setGameInfo", "(Ljava/lang/Object;)V", "gameInfoStr", "getGameInfoStr", "setGameInfoStr", AppAgent.CONSTRUCT, "()V", "Companion", "a", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class RoomModeInfo implements Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final int GROUP_TYPE_BULLET = 3;
    public static final int GROUP_TYPE_H5 = 2;
    public static final int GROUP_TYPE_H5_GAME = 4;
    public static final int GROUP_TYPE_MYSTERY_GAME = 6;
    public static final int GROUP_TYPE_NATIVE = 1;
    public static final int GROUP_TYPE_OTHER_H5_GAME = 5;
    public static final int GROUP_TYPE_SOO_FUN_GAME = 7;
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    private Object gameInfo;

    @Nullable
    private String gameInfoStr;
    private int groupType;

    @Nullable
    private String roomId = "";

    @Nullable
    private Integer playType = 0;

    @Nullable
    private String gameId = "";

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.bean.RoomModeInfo$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: RoomModeInfo.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004¨\u0006\r"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/bean/RoomModeInfo$a;", "", "", "GROUP_TYPE_BULLET", "I", "GROUP_TYPE_H5", "GROUP_TYPE_H5_GAME", "GROUP_TYPE_MYSTERY_GAME", "GROUP_TYPE_NATIVE", "GROUP_TYPE_OTHER_H5_GAME", "GROUP_TYPE_SOO_FUN_GAME", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(q qVar) {
            this();
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 3, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    @Nullable
    public final String getGameId() {
        return this.gameId;
    }

    @Nullable
    public final Object getGameInfo() {
        return this.gameInfo;
    }

    @Nullable
    public final String getGameInfoStr() {
        return this.gameInfoStr;
    }

    public final int getGroupType() {
        return this.groupType;
    }

    @Nullable
    public final Integer getPlayType() {
        return this.playType;
    }

    @Nullable
    public final String getRoomId() {
        return this.roomId;
    }

    public final void setGameId(@Nullable String str) {
        this.gameId = str;
    }

    public final void setGameInfo(@Nullable Object obj) {
        this.gameInfo = obj;
    }

    public final void setGameInfoStr(@Nullable String str) {
        this.gameInfoStr = str;
    }

    public final void setGroupType(int i11) {
        this.groupType = i11;
    }

    public final void setPlayType(@Nullable Integer num) {
        this.playType = num;
    }

    public final void setRoomId(@Nullable String str) {
        this.roomId = str;
    }

    @NotNull
    public String toString() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        return "roomId=" + this.roomId + "|gameId=" + this.gameId + "|playType=" + this.playType + "|groupType=" + this.groupType + "｜gameInfo=" + this.gameInfo + "|gameInfoStr=" + this.gameInfoStr;
    }
}