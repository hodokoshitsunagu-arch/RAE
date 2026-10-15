package h30;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.common.api.ApiConstants;
import cn.soulapp.android.lib.common.api.common.RequestKey;
import cn.soulapp.android.net.HttpResult;
import cn.soulapp.cpnt_voiceparty.api.IActivityApi;
import cn.soulapp.cpnt_voiceparty.bean.GetIconInfoModel;
import cn.soulapp.cpnt_voiceparty.bean.GiftPreRemindModel;
import cn.soulapp.cpnt_voiceparty.bean.GiftPurchaseRechargeModel;
import cn.soulapp.cpnt_voiceparty.bean.GiftStormPermission;
import cn.soulapp.cpnt_voiceparty.bean.OpenRedEnvelopeResult;
import cn.soulapp.cpnt_voiceparty.bean.RelationshipBondInfo;
import cn.soulapp.cpnt_voiceparty.bean.RelationshipPublishInfo;
import cn.soulapp.cpnt_voiceparty.bean.RequestAResult;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import cn.soulapp.cpnt_voiceparty.bean.TransmitResult;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.LotteryIconModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.StarCardResult;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.SuperTransmitItemPacket;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.TopEnterBean;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.google.gson.JsonObject;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.tencent.open.SocialConstants;
import com.umeng.analytics.pro.bt;
import com.walid.rxretrofit.obserable.RxSchedulers;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: GiftActivityApi.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bD\u0010EJ/\u0010\t\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\nJ(\u0010\r\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u00070\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002J\u0012\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00070\u0006J\u0014\u0010\u0010\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00070\u0006J\u0014\u0010\u0011\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00070\u0006J*\u0010\u0014\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00070\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002J*\u0010\u0017\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u00070\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002J(\u0010\u001b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00070\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u00022\b\u0010\u0019\u001a\u0004\u0018\u00010\u0002J\u0018\u0010\u001e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u001c0\u00070\u0006J\u001e\u0010!\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010 0\u00070\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010\u0002J\u001a\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0\u00070\u00062\u0006\u0010#\u001a\u00020\"J\u0014\u0010'\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010&0\u00070\u0006JJ\u0010-\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010,0\u00070\u000620\u0010+\u001a,\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b)0(j\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b)`*JJ\u0010/\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0,0\u00070\u000620\u0010+\u001a,\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b)0(j\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b)`*J\u0018\u00100\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010,0\u00070\u0006J\u001a\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002020\u00070\u00062\u0006\u00101\u001a\u00020\u0002J(\u00106\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002050\u00070\u00062\u0014\u0010+\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u000104J\u0014\u00108\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001070\u00070\u0006J3\u0010=\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020<\u0018\u00010\u001c0\u00070\u00062\b\u00109\u001a\u0004\u0018\u00010\u00042\u0006\u0010;\u001a\u00020:¢\u0006\u0004\b=\u0010>JJ\u0010@\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010?0\u00070\u000620\u0010+\u001a,\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b)0(j\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b)`*JJ\u0010A\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010?0\u00070\u000620\u0010+\u001a,\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b)0(j\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b)`*JJ\u0010B\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010?0\u00070\u000620\u0010+\u001a,\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b)0(j\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b)`*JJ\u0010C\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010?0\u00070\u000620\u0010+\u001a,\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b)0(j\u0015\u0012\u0004\u0012\u00020\u0002\u0012\u000b\u0012\t\u0018\u00010\u0001¢\u0006\u0002\b)`*¨\u0006F"}, d2 = {"Lh30/c;", "", "", "itemIdentity", "", "giftPrice", "Lrs0/e;", "Lcn/soulapp/android/net/HttpResult;", "Lcn/soulapp/cpnt_voiceparty/bean/GiftPurchaseRechargeModel;", ExpcompatUtils.COMPAT_VALUE_780, "(Ljava/lang/String;Ljava/lang/Long;)Lrs0/e;", "targetUserIdEcpt", "Lcn/soulapp/cpnt_voiceparty/bean/GiftPreRemindModel;", "l", "Lcn/soulapp/cpnt_voiceparty/bean/GetIconInfoModel;", "h", "v", "a", "stormItemId", "extMap", bt.aF, "transmitGiftId", "Lcn/soulapp/cpnt_voiceparty/bean/TransmitResult;", "w", "roomId", "redEnvelopeId", "Lcn/soulapp/cpnt_voiceparty/bean/OpenRedEnvelopeResult;", "p", "", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/SuperTransmitItemPacket;", "k", "ownerId", "Lcn/soulapp/cpnt_voiceparty/bean/GiftStormPermission;", "d", "Lh30/d;", SocialConstants.TYPE_REQUEST, "Lcom/google/gson/JsonObject;", "m", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/LotteryIconModel;", l11l11I1111l.l111l1111lIl, "Ljava/util/HashMap;", "Lkotlin/jvm/JvmSuppressWildcards;", "Lkotlin/collections/HashMap;", "map", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "r", "", "q", "c", "roomOwnerIdEncrypt", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/StarCardResult;", "j", "", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/TopEnterBean;", "i", "Lcn/soulapp/cpnt_voiceparty/bean/RelationshipBondInfo;", "n", RequestKey.LAST_ID, "", "findType", "Lcn/soulapp/cpnt_voiceparty/bean/RelationshipPublishInfo;", "o", "(Ljava/lang/Long;I)Lrs0/e;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestAResult;", "t", "s", "g", "f", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final c f225303a;
    public static ChangeQuickRedirect changeQuickRedirect;

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 30, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f225303a = new c();
    }

    private c() {
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> a() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 9, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).addUserIconStatus().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GiftPurchaseRechargeModel>> b(@Nullable String itemIdentity, @Nullable Long giftPrice) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{itemIdentity, giftPrice}, this, changeQuickRedirect, false, 5, new Class[]{String.class, Long.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).balanceLessFirstRechargePopup(itemIdentity, giftPrice).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> c() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 19, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).buyLocation().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GiftStormPermission>> d(@Nullable String ownerId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{ownerId}, this, changeQuickRedirect, false, 14, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).checkStormPermission(ownerId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<LotteryIconModel>> e() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 16, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).commercialIconLottery().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestAResult<Object>>> f(@NotNull HashMap<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 29, new Class[]{HashMap.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).fetterRelationApply(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestAResult<Object>>> g(@NotNull HashMap<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 28, new Class[]{HashMap.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).fetterRelationCreate(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GetIconInfoModel>> h() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).getIconInfo().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<TopEnterBean>> i(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 21, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).getRoomTopEnter(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<StarCardResult>> j(@NotNull String roomOwnerIdEncrypt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomOwnerIdEncrypt}, this, changeQuickRedirect, false, 20, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomOwnerIdEncrypt, "roomOwnerIdEncrypt");
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).getStarCardEnter(roomOwnerIdEncrypt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<List<SuperTransmitItemPacket>>> k() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 13, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).getTransmitRedList().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GiftPreRemindModel>> l(@Nullable String itemIdentity, @Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{itemIdentity, targetUserIdEcpt}, this, changeQuickRedirect, false, 6, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.PAY.i(IActivityApi.class)).giftPreRemind(itemIdentity, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IActivityApi…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<JsonObject>> m(@NotNull d request) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{request}, this, changeQuickRedirect, false, 15, new Class[]{d.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(request, "request");
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).giftStormBenefitV4(request.getF225304a(), request.getF225305b(), request.getF225306c()).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RelationshipBondInfo>> n() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 24, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).loadBondFindMainPage().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<List<RelationshipPublishInfo>>> o(@Nullable Long lastId, int findType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{lastId, new Integer(findType)}, this, changeQuickRedirect, false, 25, new Class[]{Long.class, Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).loadBondPublishList(lastId, 20L, Long.valueOf(findType)).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OpenRedEnvelopeResult>> p(@Nullable String roomId, @Nullable String redEnvelopeId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, redEnvelopeId}, this, changeQuickRedirect, false, 12, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).openRedEnvelope(roomId, redEnvelopeId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Boolean>>> q(@NotNull HashMap<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 18, new Class[]{HashMap.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).relationPreCheck(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestResult<Object>>> r(@NotNull HashMap<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 17, new Class[]{HashMap.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).relationshipApply(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestAResult<Object>>> s(@NotNull HashMap<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 27, new Class[]{HashMap.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).requestFetterFind(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RequestAResult<Object>>> t(@NotNull HashMap<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 26, new Class[]{HashMap.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).requestInterestedBond(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> u(@Nullable String stormItemId, @Nullable String extMap) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{stormItemId, extMap}, this, changeQuickRedirect, false, 10, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).startGiftRain(stormItemId, extMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> v() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).updateUserClickStatus().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<TransmitResult>> w(@Nullable String transmitGiftId, @Nullable String extMap) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{transmitGiftId, extMap}, this, changeQuickRedirect, false, 11, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IActivityApi) ApiConstants.ACTIVITY_OPENAPI.i(IActivityApi.class)).useTransmit(transmitGiftId, extMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "ACTIVITY_OPENAPI.service…ulers.observableToMain())");
        return eVarCompose;
    }
}