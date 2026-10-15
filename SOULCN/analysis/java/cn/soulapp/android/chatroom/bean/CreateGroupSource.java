package cn.soulapp.android.chatroom.bean;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import kotlin.Metadata;
import kotlin.jvm.internal.q;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unexpected branching in enum static init block */
/* JADX INFO: compiled from: CreateGroupSource.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0086\u0001\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0019\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018¨\u0006\u0019"}, d2 = {"Lcn/soulapp/android/chatroom/bean/CreateGroupSource;", "", "", "code", "I", "getCode", "()I", "", "tag", "Ljava/lang/String;", "getTag", "()Ljava/lang/String;", AppAgent.CONSTRUCT, "(Ljava/lang/String;IILjava/lang/String;)V", "Companion", "a", "SELECT_USER_MESSAGE", "GROUP_CHAT_MESSAGE", "CLASSIFY_MESSAGE", "SYSTEM_MATCH_MESSAGE", "TAG_SQUARE_MESSAGE", "TAG_SQUARE", "GROUP_SQUARE", "MESSAGE_TAB", "GROUP_CATEGORY_LIST", "lib-chatroom_release"}, k = 1, mv = {1, 6, 0})
public final class CreateGroupSource {
    private static final /* synthetic */ CreateGroupSource[] $VALUES;
    public static final CreateGroupSource CLASSIFY_MESSAGE;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final CreateGroupSource GROUP_CATEGORY_LIST;
    public static final CreateGroupSource GROUP_CHAT_MESSAGE;
    public static final CreateGroupSource GROUP_SQUARE;
    public static final CreateGroupSource MESSAGE_TAB;
    public static final CreateGroupSource SELECT_USER_MESSAGE;
    public static final CreateGroupSource SYSTEM_MATCH_MESSAGE;
    public static final CreateGroupSource TAG_SQUARE;
    public static final CreateGroupSource TAG_SQUARE_MESSAGE;
    public static ChangeQuickRedirect changeQuickRedirect;
    private final int code;

    @NotNull
    private final String tag;

    /* JADX INFO: renamed from: cn.soulapp.android.chatroom.bean.CreateGroupSource$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: CreateGroupSource.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcn/soulapp/android/chatroom/bean/CreateGroupSource$a;", "", AppAgent.CONSTRUCT, "()V", "lib-chatroom_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(q qVar) {
            this();
        }
    }

    private static final /* synthetic */ CreateGroupSource[] $values() {
        return new CreateGroupSource[]{SELECT_USER_MESSAGE, GROUP_CHAT_MESSAGE, CLASSIFY_MESSAGE, SYSTEM_MATCH_MESSAGE, TAG_SQUARE_MESSAGE, TAG_SQUARE, GROUP_SQUARE, MESSAGE_TAB, GROUP_CATEGORY_LIST};
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 4, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SELECT_USER_MESSAGE = new CreateGroupSource("SELECT_USER_MESSAGE", 0, 0, "选人创建");
        GROUP_CHAT_MESSAGE = new CreateGroupSource("GROUP_CHAT_MESSAGE", 1, 1, "群聊创建");
        CLASSIFY_MESSAGE = new CreateGroupSource("CLASSIFY_MESSAGE", 2, 2, "分类创建");
        SYSTEM_MATCH_MESSAGE = new CreateGroupSource("SYSTEM_MATCH_MESSAGE", 3, 3, "系统推荐");
        TAG_SQUARE_MESSAGE = new CreateGroupSource("TAG_SQUARE_MESSAGE", 4, 4, "群聊派对");
        TAG_SQUARE = new CreateGroupSource("TAG_SQUARE", 5, 7, "系统推荐");
        GROUP_SQUARE = new CreateGroupSource("GROUP_SQUARE", 6, 8, "群组广场");
        MESSAGE_TAB = new CreateGroupSource("MESSAGE_TAB", 7, 9, "消息tab");
        GROUP_CATEGORY_LIST = new CreateGroupSource("GROUP_CATEGORY_LIST", 8, 10, "文字群组分类广场列表");
        $VALUES = $values();
        INSTANCE = new Companion(null);
    }

    private CreateGroupSource(String str, int i11, int i12, String str2) {
        super(str, i11);
        this.code = i12;
        this.tag = str2;
    }

    public static CreateGroupSource valueOf(String str) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{str}, null, changeQuickRedirect, true, 3, new Class[]{String.class}, CreateGroupSource.class);
        return (CreateGroupSource) (patchProxyResultProxy.isSupported ? patchProxyResultProxy.result : Enum.valueOf(CreateGroupSource.class, str));
    }

    public static CreateGroupSource[] values() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 2, new Class[0], CreateGroupSource[].class);
        return (CreateGroupSource[]) (patchProxyResultProxy.isSupported ? patchProxyResultProxy.result : $VALUES.clone());
    }

    public final int getCode() {
        return this.code;
    }

    @NotNull
    public final String getTag() {
        return this.tag;
    }
}