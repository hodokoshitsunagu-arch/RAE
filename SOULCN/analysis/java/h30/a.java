package h30;

import androidx.exifinterface.media.ExifInterface;
import cn.android.lib.increase.service.IncreaseService;
import cn.android.lib.soul_entity.OperationModel;
import cn.soul.android.component.SoulRouter;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.api.IRoomApi;
import cn.soulapp.android.chatroom.bean.MusicStationBean;
import cn.soulapp.android.chatroom.bean.RandomRoonNameModel;
import cn.soulapp.android.chatroom.bean.RoomTypeModel;
import cn.soulapp.android.chatroom.bean.SetRemindResult;
import cn.soulapp.android.chatroom.bean.UpdateRoomTopicBean;
import cn.soulapp.android.client.component.middle.platform.bean.msg.ChatHistoryMessageBean;
import cn.soulapp.android.lib.common.api.ApiConstants;
import cn.soulapp.android.lib.common.api.common.RequestKey;
import cn.soulapp.android.net.HttpResult;
import cn.soulapp.android.user.IUserApi;
import cn.soulapp.cpnt_voiceparty.api.ISoulHouse;
import cn.soulapp.cpnt_voiceparty.api.IVoiceParty;
import cn.soulapp.cpnt_voiceparty.bean.AnnouncementListModel;
import cn.soulapp.cpnt_voiceparty.bean.BuffStateModel;
import cn.soulapp.cpnt_voiceparty.bean.HotSearchWord;
import cn.soulapp.cpnt_voiceparty.bean.LevelTrialInfo;
import cn.soulapp.cpnt_voiceparty.bean.OpenBuffResult;
import cn.soulapp.cpnt_voiceparty.bean.OperationResult;
import cn.soulapp.cpnt_voiceparty.bean.PlanetSearchVpTag;
import cn.soulapp.cpnt_voiceparty.bean.RoomFinishModel;
import cn.soulapp.cpnt_voiceparty.bean.SendGiftPopBean;
import cn.soulapp.cpnt_voiceparty.bean.UserCardHelpContent;
import cn.soulapp.cpnt_voiceparty.followtab.event.FollowGuideInfo;
import cn.soulapp.cpnt_voiceparty.followtab.event.PlanetRelationGuideInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.MelancholyMasterModel;
import com.alipay.alipaysecuritysdk.common.config.Constant;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.component.componentlib.service.publish.bean.SongInfoModel;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.soulapp.soulgift.api.IGiftService;
import com.ss.texturerender.TextureRenderKeys;
import com.tencent.open.SocialConstants;
import com.umeng.analytics.pro.bt;
import com.walid.rxretrofit.HttpSubscriber;
import com.walid.rxretrofit.obserable.RxSchedulers;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ty.s;

/* JADX INFO: compiled from: ChatRoomApi.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000ä\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bn\u0010oJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004J\u001c\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u00050\u00042\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u001c\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u00050\u00042\b\u0010\f\u001a\u0004\u0018\u00010\bJ\u001e\u0010\u0011\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00050\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\bJ\u001e\u0010\u0012\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00050\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\bJ\u0014\u0010\u0014\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u00050\u0004J6\u0010\u001b\u001a\u00020\u00022\u0018\u0010\u0016\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00152\u0014\u0010\u001a\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u0018\u0018\u00010\u0017J&\u0010\u001d\u001a\u00020\u00022\b\u0010\u001c\u001a\u0004\u0018\u00010\b2\u0014\u0010\u001a\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0018\u0018\u00010\u0017J6\u0010!\u001a\u00020\u00022\b\u0010\u001c\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001e2\u0014\u0010\u001a\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u0018\u0018\u00010\u0017J\u0012\u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0\u00050\u0004J\u001c\u0010&\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010%0\u00050\u00042\u0006\u0010$\u001a\u00020\bJ(\u0010(\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020'0\u00180\u00050\u00042\u0006\u0010\u000f\u001a\u00020\u001e2\u0006\u0010\f\u001a\u00020\bJ*\u0010,\u001a\u00020\u00022\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\bJ&\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00050\u00042\u0006\u0010-\u001a\u00020\b2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\bJ\u001c\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00050\u00042\b\u00100\u001a\u0004\u0018\u00010\bJ&\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00050\u00042\u0006\u00102\u001a\u00020\b2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\bJ\u001e\u00104\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u00150\u00050\u0004J#\u00106\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002050\u00050\u00042\b\u0010 \u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b6\u00107J\u001a\u00109\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00050\u00042\u0006\u00108\u001a\u00020\bJ\u001a\u0010;\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020:0\u00050\u00042\u0006\u0010\f\u001a\u00020\bJ\u001a\u0010=\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020<0\u00050\u00042\u0006\u0010\f\u001a\u00020\bJ\u0012\u0010?\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020>0\u00050\u0004J\u001c\u0010A\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00050\u00042\b\u0010@\u001a\u0004\u0018\u00010\bJ&\u0010C\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020B0\u00050\u00042\b\u0010\f\u001a\u0004\u0018\u00010\b2\b\u0010@\u001a\u0004\u0018\u00010\bJB\u0010J\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020I0\u00050\u00042\u0006\u0010D\u001a\u00020%2\b\b\u0002\u0010E\u001a\u00020\u001e2\b\b\u0002\u0010F\u001a\u00020\b2\b\b\u0002\u0010G\u001a\u00020\b2\b\b\u0002\u0010H\u001a\u00020\bJ\"\u0010L\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00050\u00042\u0006\u0010\f\u001a\u00020\b2\u0006\u0010K\u001a\u00020\bJ\u001a\u0010N\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0\u00050\u00042\u0006\u0010M\u001a\u00020\bJ\u0014\u0010O\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u00050\u0004J\"\u0010T\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020S0\u00050\u00042\u0006\u0010Q\u001a\u00020P2\u0006\u0010R\u001a\u00020\bJ\u001a\u0010U\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0\u00050\u00042\u0006\u0010M\u001a\u00020\bJ\u0012\u0010W\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020V0\u00050\u0004J,\u0010Z\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Y0\u00050\u00042\u0006\u0010\f\u001a\u00020\b2\b\u0010M\u001a\u0004\u0018\u00010\b2\u0006\u0010X\u001a\u00020\bJ\u001c\u0010\\\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020[0\u00050\u00042\b\u0010K\u001a\u0004\u0018\u00010\bJD\u0010b\u001a\"\u0012\u001e\u0012\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020`\u0018\u00010_j\n\u0012\u0004\u0012\u00020`\u0018\u0001`a0\u00050\u00042\b\u0010]\u001a\u0004\u0018\u00010\b2\u0006\u0010 \u001a\u00020\u001e2\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\bJ(\u0010d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00050\u00042\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\u00010cJ&\u0010g\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00050\u00042\u0006\u0010e\u001a\u00020\u001e2\b\b\u0002\u0010f\u001a\u00020\u001eH\u0007J5\u0010i\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00050\u00042\u0006\u0010K\u001a\u00020\b2\n\b\u0002\u0010X\u001a\u0004\u0018\u00010\u001e2\u0006\u0010h\u001a\u00020\b¢\u0006\u0004\bi\u0010jJ\u001a\u0010l\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020k0\u00050\u00042\u0006\u0010\f\u001a\u00020\bJ\u001a\u0010m\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00050\u00042\u0006\u0010\f\u001a\u00020\b¨\u0006p"}, d2 = {"Lh30/a;", "", "Lkotlin/w;", "H", "Lrs0/e;", "Lcn/soulapp/android/net/HttpResult;", "Lcn/soulapp/cpnt_voiceparty/bean/AnnouncementListModel;", "i", "", "content", "Lcn/soulapp/cpnt_voiceparty/bean/OperationResult;", "F", "roomId", "Lcn/soulapp/cpnt_voiceparty/bean/RoomFinishModel;", "m", "sceneCode", "Lcn/soulapp/cpnt_voiceparty/followtab/event/FollowGuideInfo;", bt.aF, "q", "Lcn/soulapp/cpnt_voiceparty/followtab/event/PlanetRelationGuideInfo;", "r", "", "map", "Lty/s;", "", "Lcom/soul/component/componentlib/service/publish/bean/SongInfoModel;", TextureRenderKeys.KEY_IS_CALLBACK, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "keyword", "j", "", "pageIndex", "pageSize", "B", "Lcn/soulapp/cpnt_voiceparty/bean/SendGiftPopBean;", "J", "lastDate", "", l11l11I1111l.l111l1111lIl, "Lcn/android/lib/soul_entity/OperationModel;", "z", "name", "operation", "recPageId", "K", RequestKey.USER_ID, "bizSource", "g", Constant.IN_KEY_USER_ID, "Q", "userIds", "c", "k", "Lcn/soulapp/cpnt_voiceparty/bean/HotSearchWord;", "n", "(Ljava/lang/Integer;)Lrs0/e;", "packageId", "G", "Lcn/soulapp/cpnt_voiceparty/bean/OpenBuffResult;", ExifInterface.LONGITUDE_EAST, "Lcn/soulapp/cpnt_voiceparty/bean/BuffStateModel;", "l", "Lcn/soulapp/android/chatroom/bean/RandomRoonNameModel;", "t", "roomName", ExifInterface.LATITUDE_SOUTH, "Lcn/soulapp/android/chatroom/bean/UpdateRoomTopicBean;", "R", "showHot", ChatHistoryMessageBean.KEY_SOURCETYPE, "provinceName", "cityName", "districtName", "Lcn/soulapp/android/chatroom/bean/RoomTypeModel;", "v", "targetUserIdEcpt", ExpcompatUtils.COMPAT_VALUE_780, "targetUserId", "y", "D", "", "musicStationId", "musicCursor", "Lcn/soulapp/android/chatroom/bean/MusicStationBean;", "p", "f", "Lcn/soulapp/cpnt_voiceparty/bean/UserCardHelpContent;", "x", "type", "Lcn/soulapp/android/chatroom/bean/SetRemindResult;", "M", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/MelancholyMasterModel;", "o", SocialConstants.PARAM_SOURCE, "tab", "Ljava/util/ArrayList;", "Lcn/soulapp/cpnt_voiceparty/bean/PlanetSearchVpTag;", "Lkotlin/collections/ArrayList;", "s", "", "I", "selected", "scene", "O", "tabPage", "N", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lrs0/e;", "Lcn/soulapp/cpnt_voiceparty/bean/LevelTrialInfo;", "C", "a", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final a f225299a;
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: h30.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ChatRoomApi.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"h30/a$a", "Lty/s;", "", "t", "Lkotlin/w;", "onNext", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class C1406a extends s<Object> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f225300c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f225301d;

        C1406a(String str, String str2) {
            this.f225300c = str;
            this.f225301d = str2;
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 2, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
            SoulHouseExtensionKt.u0(this, "PushLevitate", "error operation=" + this.f225300c + " name=" + this.f225301d);
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        public void onNext(@Nullable Object obj) {
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 50, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f225299a = new a();
    }

    private a() {
    }

    private final void H() {
        IncreaseService increaseService;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 42, new Class[0], Void.TYPE).isSupported || (increaseService = (IncreaseService) SoulRouter.j().u(IncreaseService.class)) == null) {
            return;
        }
        increaseService.recordActiveBehavior();
    }

    public static /* synthetic */ void L(a aVar, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "GLOBAL_GROUP_CHAT";
        }
        if ((i11 & 2) != 0) {
            str2 = "";
        }
        if ((i11 & 4) != 0) {
            str3 = "";
        }
        aVar.K(str, str2, str3);
    }

    public static /* synthetic */ rs0.e P(a aVar, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i12 = 0;
        }
        return aVar.O(i11, i12);
    }

    public static /* synthetic */ rs0.e d(a aVar, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = "6";
        }
        return aVar.c(str, str2);
    }

    public static /* synthetic */ rs0.e h(a aVar, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = "6";
        }
        return aVar.g(str, str2);
    }

    public final void A(@Nullable Map<String, ? extends Object> map, @Nullable s<List<SongInfoModel>> sVar) {
        if (PatchProxy.proxy(new Object[]{map, sVar}, this, changeQuickRedirect, false, 10, new Class[]{Map.class, s.class}, Void.TYPE).isSupported) {
            return;
        }
        ty.h hVar = ApiConstants.NEW_APIA;
        hVar.j(((IVoiceParty) hVar.i(IVoiceParty.class)).songPraised(map), sVar);
    }

    public final void B(@Nullable String str, int i11, int i12, @Nullable s<List<SongInfoModel>> sVar) {
        Object[] objArr = {str, new Integer(i11), new Integer(i12), sVar};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        if (PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 12, new Class[]{String.class, cls, cls, s.class}, Void.TYPE).isSupported) {
            return;
        }
        ty.h hVar = ApiConstants.NEW_APIA;
        hVar.j(((IVoiceParty) hVar.i(IVoiceParty.class)).getSongSearch(str, i11, i12), sVar);
    }

    @NotNull
    public final rs0.e<HttpResult<LevelTrialInfo>> C(@NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 47, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.LIVE_API.i(IVoiceParty.class)).getTrialInfo(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(IVoiceP…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Integer>> D() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 35, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomApi) ApiConstants.APIA.i(IRoomApi.class)).myRoomLimit().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IRoomApi::c…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OpenBuffResult>> E(@NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 24, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.APIA.i(IVoiceParty.class)).openBuff(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IVoiceParty…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<OperationResult>> F(@Nullable String content) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{content}, this, changeQuickRedirect, false, 5, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.APIA.i(IVoiceParty.class)).operateMyAnnouncement(content).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IVoiceParty…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> G(@NotNull String packageId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{packageId}, this, changeQuickRedirect, false, 23, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(packageId, "packageId");
        rs0.e eVarCompose = ((IGiftService) ApiConstants.APIA.i(IGiftService.class)).packageReceive(packageId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IGiftServic…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> I(@NotNull Map<String, Object> map) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 44, new Class[]{Map.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(map, "map");
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.APIA.i(IVoiceParty.class)).recordSpeak(map).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IVoiceParty…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<SendGiftPopBean>> J() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 14, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.APIA.i(IVoiceParty.class)).sendGiftPopup().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IVoiceParty…ulers.observableToMain())");
        return eVarCompose;
    }

    public final void K(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        if (PatchProxy.proxy(new Object[]{str, str2, str3}, this, changeQuickRedirect, false, 17, new Class[]{String.class, String.class, String.class}, Void.TYPE).isSupported) {
            return;
        }
        ((IVoiceParty) ApiConstants.USER.i(IVoiceParty.class)).sendLevitateOperator(str, str2, str3).compose(RxSchedulers.observableToMain()).subscribe(HttpSubscriber.create(new C1406a(str2, str)));
    }

    @NotNull
    public final rs0.e<HttpResult<SetRemindResult>> M(@NotNull String roomId, @Nullable String targetUserId, @NotNull String type) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserId, type}, this, changeQuickRedirect, false, 40, new Class[]{String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        v.j(type, "type");
        rs0.e eVarCompose = ((IRoomApi) ApiConstants.APIA.i(IRoomApi.class)).setReminder(roomId, targetUserId, type).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IRoomApi::c…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> N(@NotNull String targetUserIdEcpt, @Nullable Integer type, @NotNull String tabPage) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetUserIdEcpt, type, tabPage}, this, changeQuickRedirect, false, 46, new Class[]{String.class, Integer.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(targetUserIdEcpt, "targetUserIdEcpt");
        v.j(tabPage, "tabPage");
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.CHAT.i(ISoulHouse.class)).socialRecReport(targetUserIdEcpt, type, tabPage).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "CHAT.service(ISoulHouse:…ulers.observableToMain())");
        return eVarCompose;
    }

    @JvmOverloads
    @NotNull
    public final rs0.e<HttpResult<Object>> O(int selected, int scene) {
        Object[] objArr = {new Integer(selected), new Integer(scene)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 45, new Class[]{cls, cls}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.LIVE_API.i(IVoiceParty.class)).syncFieldLevelMedal(selected, scene).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(IVoiceP…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> Q(@Nullable String userId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{userId}, this, changeQuickRedirect, false, 19, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        H();
        rs0.e eVarCompose = ((IUserApi) ApiConstants.USER.i(IUserApi.class)).unFollowUser(userId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "USER.service(IUserApi::c…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<UpdateRoomTopicBean>> R(@Nullable String roomId, @Nullable String roomName) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, roomName}, this, changeQuickRedirect, false, 30, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomApi) ApiConstants.APIA.i(IRoomApi.class)).updateTopic(roomId, roomName).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IRoomApi::c…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> S(@Nullable String roomName) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomName}, this, changeQuickRedirect, false, 29, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomApi) ApiConstants.APIA.i(IRoomApi.class)).validateTopic(roomName).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IRoomApi::c…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> a(@NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 48, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.LIVE_API.i(IVoiceParty.class)).activateTrial(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(IVoiceP…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> b(@NotNull String roomId, @NotNull String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId, targetUserIdEcpt}, this, changeQuickRedirect, false, 33, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        v.j(targetUserIdEcpt, "targetUserIdEcpt");
        rs0.e eVarCompose = ((IRoomApi) ApiConstants.APIA.i(IRoomApi.class)).approvalMicro(roomId, targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IRoomApi::c…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> c(@NotNull String userIds, @Nullable String bizSource) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{userIds, bizSource}, this, changeQuickRedirect, false, 20, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(userIds, "userIds");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("targetUserIdEcpts", userIds);
        linkedHashMap.put("bizSource", bizSource);
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).followUserNew(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> e(@NotNull String lastDate) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{lastDate}, this, changeQuickRedirect, false, 15, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(lastDate, "lastDate");
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.APIA.i(IVoiceParty.class)).eraseGiftRank(lastDate).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IVoiceParty…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> f(@NotNull String targetUserId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetUserId}, this, changeQuickRedirect, false, 38, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(targetUserId, "targetUserId");
        rs0.e eVarCompose = ((IRoomApi) ApiConstants.APIA.i(IRoomApi.class)).followStatus(targetUserId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IRoomApi::c…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Object>> g(@NotNull String userIdEcpt, @Nullable String bizSource) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{userIdEcpt, bizSource}, this, changeQuickRedirect, false, 18, new Class[]{String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(userIdEcpt, "userIdEcpt");
        H();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("targetUserIdEcpts", userIdEcpt);
        linkedHashMap.put("bizSource", bizSource);
        rs0.e eVarCompose = ((ISoulHouse) ApiConstants.LIVE_API.i(ISoulHouse.class)).followUserNew(linkedHashMap).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(ISoulHo…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<AnnouncementListModel>> i() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.APIA.i(IVoiceParty.class)).getAnnouncementList().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IVoiceParty…ulers.observableToMain())");
        return eVarCompose;
    }

    public final void j(@Nullable String str, @Nullable s<List<String>> sVar) {
        if (PatchProxy.proxy(new Object[]{str, sVar}, this, changeQuickRedirect, false, 11, new Class[]{String.class, s.class}, Void.TYPE).isSupported) {
            return;
        }
        ty.h hVar = ApiConstants.NEW_APIA;
        hVar.j(((IVoiceParty) hVar.i(IVoiceParty.class)).getAssociateData(str), sVar);
    }

    @NotNull
    public final rs0.e<HttpResult<Map<String, String>>> k() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 21, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.APIA.i(IVoiceParty.class)).getBubbleBackground().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IVoiceParty…ervableToMain()\n        )");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<BuffStateModel>> l(@NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 25, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.APIA.i(IVoiceParty.class)).getBuffState(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IVoiceParty…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomFinishModel>> m(@Nullable String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{roomId}, this, changeQuickRedirect, false, 6, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.APIA.i(IVoiceParty.class)).getCloseGroupPageData(roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IVoiceParty…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<HotSearchWord>> n(@Nullable Integer pageSize) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{pageSize}, this, changeQuickRedirect, false, 22, new Class[]{Integer.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.LIVE_API.i(IVoiceParty.class)).hotSearchTermsList(pageSize).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(IVoiceP…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MelancholyMasterModel>> o(@Nullable String targetUserIdEcpt) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetUserIdEcpt}, this, changeQuickRedirect, false, 41, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.APIA.i(IVoiceParty.class)).getMelancholyMasterInfo(targetUserIdEcpt).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IVoiceParty…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<MusicStationBean>> p(long musicStationId, @NotNull String musicCursor) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Long(musicStationId), musicCursor}, this, changeQuickRedirect, false, 36, new Class[]{Long.TYPE, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(musicCursor, "musicCursor");
        rs0.e eVarCompose = ((IRoomApi) ApiConstants.APIA.i(IRoomApi.class)).getMusicListRandomByStationId(musicStationId, musicCursor).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IRoomApi::c…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<FollowGuideInfo>> q(@Nullable String sceneCode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{sceneCode}, this, changeQuickRedirect, false, 8, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.LIVE_API.i(IVoiceParty.class)).getNewRedPointInfo(sceneCode).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(IVoiceP…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<PlanetRelationGuideInfo>> r() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 9, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.LIVE_API.i(IVoiceParty.class)).getPlanetRelationInfo("3").timeout(10L, TimeUnit.SECONDS).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(IVoiceP…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<ArrayList<PlanetSearchVpTag>>> s(@Nullable String source, int pageSize, @Nullable String tab) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{source, new Integer(pageSize), tab}, this, changeQuickRedirect, false, 43, new Class[]{String.class, Integer.TYPE, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.SEARCH_API.i(IVoiceParty.class)).getPlanetSearchTags(source, pageSize, tab).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "SEARCH_API.service(IVoic…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RandomRoonNameModel>> t() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 27, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IRoomApi) ApiConstants.APIA.i(IRoomApi.class)).getRandomRoomName().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IRoomApi::c…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<FollowGuideInfo>> u(@Nullable String sceneCode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{sceneCode}, this, changeQuickRedirect, false, 7, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.LIVE_API.i(IVoiceParty.class)).getRedPointInfo(sceneCode).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(IVoiceP…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<RoomTypeModel>> v(boolean showHot, int sourceType, @NotNull String provinceName, @NotNull String cityName, @NotNull String districtName) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Byte(showHot ? (byte) 1 : (byte) 0), new Integer(sourceType), provinceName, cityName, districtName}, this, changeQuickRedirect, false, 31, new Class[]{Boolean.TYPE, Integer.TYPE, String.class, String.class, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(provinceName, "provinceName");
        v.j(cityName, "cityName");
        v.j(districtName, "districtName");
        rs0.e eVarCompose = ((IRoomApi) ApiConstants.LIVE_API.i(IRoomApi.class)).getRoomClassifyTag(showHot, sourceType, provinceName, cityName, districtName).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(IRoomAp…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<UserCardHelpContent>> x() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 39, new Class[0], rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.APIA.i(IVoiceParty.class)).getRoomUserCardHelpContent().compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IVoiceParty…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<Boolean>> y(@NotNull String targetUserId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{targetUserId}, this, changeQuickRedirect, false, 34, new Class[]{String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(targetUserId, "targetUserId");
        rs0.e eVarCompose = ((IRoomApi) ApiConstants.APIA.i(IRoomApi.class)).getRoomerRelationInfo(targetUserId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "APIA.service(IRoomApi::c…ulers.observableToMain())");
        return eVarCompose;
    }

    @NotNull
    public final rs0.e<HttpResult<List<OperationModel>>> z(int sceneCode, @NotNull String roomId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Integer(sceneCode), roomId}, this, changeQuickRedirect, false, 16, new Class[]{Integer.TYPE, String.class}, rs0.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (rs0.e) patchProxyResultProxy.result;
        }
        v.j(roomId, "roomId");
        rs0.e eVarCompose = ((IVoiceParty) ApiConstants.LIVE_API.i(IVoiceParty.class)).getSceneModuleConfig(sceneCode, roomId).compose(RxSchedulers.observableToMain());
        v.i(eVarCompose, "LIVE_API.service(IVoiceP…ulers.observableToMain())");
        return eVarCompose;
    }
}