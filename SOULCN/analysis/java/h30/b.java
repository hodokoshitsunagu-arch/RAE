package h30;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.common.api.ApiConstants;
import cn.soulapp.android.net.HttpResult;
import cn.soulapp.cpnt_voiceparty.api.ICommercialApi;
import cn.soulapp.cpnt_voiceparty.bean.HallFameIdCardInfoBean;
import cn.soulapp.cpnt_voiceparty.bean.HallFameInfo;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.walid.rxretrofit.obserable.RxSchedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: CommercialApi.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00030\u0002J2\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00040\u00030\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u0007¨\u0006\u000f"}, d2 = {"Lh30/b;", "", "Lrs0/e;", "Lcn/soulapp/android/net/HttpResult;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "Lcn/soulapp/cpnt_voiceparty/bean/HallFameInfo;", ExpcompatUtils.COMPAT_VALUE_780, "", "targetUserIdEcpt", "type", "periodId", "Lcn/soulapp/cpnt_voiceparty/bean/HallFameIdCardInfoBean;", "a", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final b f225302a;
    public static ChangeQuickRedirect changeQuickRedirect;

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 6, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f225302a = new b();
    }

    private b() {
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<HallFameIdCardInfoBean>>> a(@NotNull String targetUserIdEcpt, @NotNull String type, @Nullable String periodId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetUserIdEcpt, type, periodId}, this, changeQuickRedirect, false, 3, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(targetUserIdEcpt, "targetUserIdEcpt");
        v.j(type, "type");
        rs0.e eVarCompose = ((ICommercialApi) ApiConstants.LIVE_API.i(ICommercialApi.class)).queryHallFameIdCardInfo(targetUserIdEcpt, type, periodId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ICommer…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<HallFameInfo>>> b() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((ICommercialApi) ApiConstants.COMMERCIAL_API.i(ICommercialApi.class)).queryStarRank().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "COMMERCIAL_API.service(I…ulers.observableToMain())");
        return eVarCompose;
    }
}