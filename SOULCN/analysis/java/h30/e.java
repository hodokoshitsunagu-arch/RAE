package h30;

import cn.android.lib.soul_entity.GameProperty;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.common.api.ApiConstants;
import cn.soulapp.android.net.HttpResult;
import cn.soulapp.cpnt_voiceparty.api.IRoomGameApi;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.walid.rxretrofit.obserable.RxSchedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomGameApi.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ#\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lh30/e;", "", "", "gameId", "Lrs0/e;", "Lcn/soulapp/android/net/HttpResult;", "Lcn/android/lib/soul_entity/GameProperty;", "a", "(Ljava/lang/Integer;)Lrs0/e;", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final e f225307a;
    public static ChangeQuickRedirect changeQuickRedirect;

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 3, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f225307a = new e();
    }

    private e() {
    }

    @NotNull
    public final rs0.e<HttpResult<GameProperty>> a(@Nullable Integer gameId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{gameId}, this, changeQuickRedirect, false, 2, new Class[]{Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomGameApi) ApiConstants.GAME_API.i(IRoomGameApi.class)).getGameInfo(gameId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "GAME_API.service(IRoomGa…ulers.observableToMain())");
        return eVarCompose;
    }
}