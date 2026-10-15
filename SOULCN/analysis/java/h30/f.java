package h30;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.common.api.ApiConstants;
import cn.soulapp.android.net.HttpResult;
import cn.soulapp.cpnt_voiceparty.api.IRoomPay;
import cn.soulapp.cpnt_voiceparty.bean.DisplayCombo;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.PurchaseInfo;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.soulapp.soulgift.api.IGiftService;
import com.soulapp.soulgift.bean.BuyProp;
import com.soulapp.soulgift.bean.GiftHeartfeltResult;
import com.soulapp.soulgift.bean.GiftInfo;
import com.soulapp.soulgift.bean.NewGiftListInfo;
import com.ss.texturerender.TextureRenderKeys;
import com.tencent.open.SocialConstants;
import com.umeng.analytics.pro.bt;
import com.walid.rxretrofit.HttpSubscriber;
import com.walid.rxretrofit.interfaces.IHttpCallback;
import com.walid.rxretrofit.obserable.RxSchedulers;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomPayApi.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b4\u00105J*\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002H\u0002J*\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002H\u0002J*\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002H\u0002J*\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002H\u0002J*\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002H\u0002J*\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002H\u0002J*\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00060\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002H\u0002J*\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00060\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002H\u0002J*\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00060\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002H\u0002J<\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u00122\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0016J4\u0010\u001a\u001a\u00020\u00182\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0016J,\u0010\u001b\u001a\u00020\u00182\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00022\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0016J<\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u00122\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0016J(\u0010\u001d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002J4\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u00122\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00022\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0016J(\u0010 \u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0\u00060\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002J*\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0\u00060\u00052\u0006\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0003J,\u0010)\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00060\u00052\u0006\u0010&\u001a\u00020\u00032\u0006\u0010'\u001a\u00020\u00122\u0006\u0010(\u001a\u00020\u0003J\u001a\u0010,\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0\u00060\u00052\u0006\u0010*\u001a\u00020\u0012J\u001a\u0010-\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0\u00060\u00052\u0006\u0010*\u001a\u00020\u0012J\u001a\u0010.\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0\u00060\u00052\u0006\u0010*\u001a\u00020\u0012J*\u00100\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010/0\u00060\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002J\u0014\u00101\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u00060\u0005J4\u00102\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u00122\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00022\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0016J(\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002¨\u00066"}, d2 = {"Lh30/f;", "", "", "", "map", "Lrs0/e;", "Lcn/soulapp/android/net/HttpResult;", "Lcom/soulapp/soulgift/bean/GiftHeartfeltResult;", "o", "p", "r", "s", "k", "l", "Lcom/soulapp/soulgift/bean/BuyProp;", "m", "j", "t", "", "type", "", "isBatch", "Lcom/walid/rxretrofit/interfaces/IHttpCallback;", TextureRenderKeys.KEY_IS_CALLBACK, "Lkotlin/w;", "w", "y", "x", "c", ExpcompatUtils.COMPAT_VALUE_780, "n", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/PurchaseInfo;", "v", "giveUserId", "giftId", "purchaseCode", "Lcom/soulapp/soulgift/bean/GiftInfo;", "a", "itemIdentity", "scene", "from", "g", SocialConstants.PARAM_SOURCE, "Lcom/soulapp/soulgift/bean/NewGiftListInfo;", "i", l11l11I1111l.l111l1111lIl, "h", "Lcn/soulapp/cpnt_voiceparty/bean/DisplayCombo;", "d", "f", bt.aF, "q", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final f f225308a;
    public static ChangeQuickRedirect changeQuickRedirect;

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 27, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f225308a = new f();
    }

    private f() {
    }

    private final rs0.e<HttpResult<BuyProp>> j(Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 15, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPay) ApiConstants.PAY.i(IRoomPay.class)).giveBackPackDefendGift(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IRoomPay::cl…ulers.observableToMain())");
        return eVarCompose;
    }

    private final rs0.e<HttpResult<GiftHeartfeltResult>> k(Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 10, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPay) ApiConstants.PAY.i(IRoomPay.class)).giveBackPackGift(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IRoomPay::cl…ulers.observableToMain())");
        return eVarCompose;
    }

    private final rs0.e<HttpResult<GiftHeartfeltResult>> l(Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 12, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPay) ApiConstants.PAY.i(IRoomPay.class)).giveBackPackGiftBatch(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IRoomPay::cl…ulers.observableToMain())");
        return eVarCompose;
    }

    private final rs0.e<HttpResult<BuyProp>> m(Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 14, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPay) ApiConstants.PAY.i(IRoomPay.class)).giveDefendGift(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IRoomPay::cl…ulers.observableToMain())");
        return eVarCompose;
    }

    private final rs0.e<HttpResult<GiftHeartfeltResult>> o(Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 6, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPay) ApiConstants.PAY.i(IRoomPay.class)).giveDiamondGift(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IRoomPay::cl…ulers.observableToMain())");
        return eVarCompose;
    }

    private final rs0.e<HttpResult<GiftHeartfeltResult>> p(Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 7, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPay) ApiConstants.PAY.i(IRoomPay.class)).giveDiamondGiftBatch(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IRoomPay::cl…ulers.observableToMain())");
        return eVarCompose;
    }

    private final rs0.e<HttpResult<GiftHeartfeltResult>> r(Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 8, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPay) ApiConstants.PAY.i(IRoomPay.class)).giveGift(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IRoomPay::cl…ulers.observableToMain())");
        return eVarCompose;
    }

    private final rs0.e<HttpResult<GiftHeartfeltResult>> s(Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 9, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPay) ApiConstants.PAY.i(IRoomPay.class)).giveGiftBatch(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IRoomPay::cl…ulers.observableToMain())");
        return eVarCompose;
    }

    private final rs0.e<HttpResult<BuyProp>> t(Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 25, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPay) ApiConstants.PAY.i(IRoomPay.class)).giveMarkGift(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IRoomPay::cl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GiftInfo>> a(@NotNull String giveUserId, @NotNull String giftId, @NotNull String purchaseCode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{giveUserId, giftId, purchaseCode}, this, changeQuickRedirect, false, 17, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(giveUserId, "giveUserId");
        v.j(giftId, "giftId");
        v.j(purchaseCode, "purchaseCode");
        rs0.e eVarCompose = ((IGiftService) ApiConstants.PAY.i(IGiftService.class)).checkRoomGift(giveUserId, giftId, purchaseCode).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IGiftService…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<GiftHeartfeltResult>> b(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 11, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPay) ApiConstants.PAY.i(IRoomPay.class)).clearGift(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IRoomPay::cl…ulers.observableToMain())");
        return eVarCompose;
    }

    public final void c(int i11, @NotNull Map<String, ? extends Object> map, boolean z11, @Nullable IHttpCallback<GiftHeartfeltResult> iHttpCallback) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11), map, new Byte(z11 ? (byte) 1 : (byte) 0), iHttpCallback}, this, changeQuickRedirect, false, 5, new Class[]{Integer.TYPE, Map.class, Boolean.TYPE, IHttpCallback.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(map, "map");
        (z11 ? p(map) : o(map)).subscribe(HttpSubscriber.create(iHttpCallback));
    }

    @NotNull
    public final rs0.e<HttpResult<DisplayCombo>> d(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 22, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPay) ApiConstants.PAY.i(IRoomPay.class)).displayCombo(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IRoomPay::cl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<NewGiftListInfo>> e(int source) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Integer(source)}, this, changeQuickRedirect, false, 20, new Class[]{Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IGiftService) ApiConstants.PAY.i(IGiftService.class)).getDiamondTimeGenGift(source).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IGiftService…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> f() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 23, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomPay) ApiConstants.PAY.i(IRoomPay.class)).giftPanelIsLandingDiamondTab().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IRoomPay::cl…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Integer>> g(@NotNull String itemIdentity, int scene, @NotNull String from) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{itemIdentity, new Integer(scene), from}, this, changeQuickRedirect, false, 18, new Class[]{String.class, Integer.TYPE, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(itemIdentity, "itemIdentity");
        v.j(from, "from");
        rs0.e eVarCompose = ((IGiftService) ApiConstants.PAY.i(IGiftService.class)).getMkNum(itemIdentity, scene, from).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IGiftService…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<NewGiftListInfo>> h(int source) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Integer(source)}, this, changeQuickRedirect, false, 21, new Class[]{Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IGiftService) ApiConstants.PAY.i(IGiftService.class)).getQuickGiftList(source).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IGiftService…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<NewGiftListInfo>> i(int source) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Integer(source)}, this, changeQuickRedirect, false, 19, new Class[]{Integer.TYPE}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IGiftService) ApiConstants.PAY.i(IGiftService.class)).getTimeGenGift(source).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IGiftService…ulers.observableToMain())");
        return eVarCompose;
    }

    public final void n(int i11, @NotNull Map<String, ? extends Object> map, @Nullable IHttpCallback<BuyProp> iHttpCallback) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11), map, iHttpCallback}, this, changeQuickRedirect, false, 13, new Class[]{Integer.TYPE, Map.class, IHttpCallback.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(map, "map");
        if (i11 == 1) {
            m(map).subscribe(HttpSubscriber.create(iHttpCallback));
        } else {
            if (i11 != 3) {
                return;
            }
            x(map, iHttpCallback);
        }
    }

    @NotNull
    public final rs0.e<HttpResult<GiftHeartfeltResult>> q(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 26, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPay) ApiConstants.PAY.i(IRoomPay.class)).giveFragment(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IRoomPay::cl…ulers.observableToMain())");
        return eVarCompose;
    }

    public final void u(int i11, @NotNull Map<String, ? extends Object> map, @Nullable IHttpCallback<BuyProp> iHttpCallback) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11), map, iHttpCallback}, this, changeQuickRedirect, false, 24, new Class[]{Integer.TYPE, Map.class, IHttpCallback.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(map, "map");
        if (i11 == 10) {
            t(map).subscribe(HttpSubscriber.create(iHttpCallback));
        } else {
            if (i11 != 11) {
                return;
            }
            x(map, iHttpCallback);
        }
    }

    @NotNull
    public final rs0.e<HttpResult<PurchaseInfo>> v(@NotNull Map<String, ? extends Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 16, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IRoomPay) ApiConstants.PAY.i(IRoomPay.class)).purchase(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "PAY.service(IRoomPay::cl…ulers.observableToMain())");
        return eVarCompose;
    }

    public final void w(int i11, @NotNull Map<String, ? extends Object> map, boolean z11, @Nullable IHttpCallback<GiftHeartfeltResult> iHttpCallback) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11), map, new Byte(z11 ? (byte) 1 : (byte) 0), iHttpCallback}, this, changeQuickRedirect, false, 2, new Class[]{Integer.TYPE, Map.class, Boolean.TYPE, IHttpCallback.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(map, "map");
        if (i11 != 0) {
            if (i11 == 4) {
                y(map, z11, iHttpCallback);
                return;
            } else if (i11 != 6 && i11 != 8 && i11 != 13 && i11 != 16 && i11 != 18) {
                return;
            }
        }
        (z11 ? s(map) : r(map)).subscribe(HttpSubscriber.create(iHttpCallback));
    }

    public final void x(@NotNull Map<String, ? extends Object> map, @Nullable IHttpCallback<BuyProp> iHttpCallback) {
        if (PatchProxy.proxy(new Object[]{map, iHttpCallback}, this, changeQuickRedirect, false, 4, new Class[]{Map.class, IHttpCallback.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(map, "map");
        j(map).subscribe(HttpSubscriber.create(iHttpCallback));
    }

    public final void y(@NotNull Map<String, ? extends Object> map, boolean z11, @Nullable IHttpCallback<GiftHeartfeltResult> iHttpCallback) {
        if (PatchProxy.proxy(new Object[]{map, new Byte(z11 ? (byte) 1 : (byte) 0), iHttpCallback}, this, changeQuickRedirect, false, 3, new Class[]{Map.class, Boolean.TYPE, IHttpCallback.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(map, "map");
        (z11 ? l(map) : k(map)).subscribe(HttpSubscriber.create(iHttpCallback));
    }
}