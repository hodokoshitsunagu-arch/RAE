package cn.soulapp.cpnt_voiceparty.mvvm;

import android.app.Application;
import androidx.lifecycle.MutableLiveData;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.middle.platform.newui.UnifyUIStyleManager;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.bean.CreateRoomModel;
import cn.soulapp.android.chatroom.bean.RoomTypeBean;
import cn.soulapp.android.chatroom.bean.RoomTypeModel;
import cn.soulapp.android.chatroom.bean.UserFmAsset;
import cn.soulapp.android.client.component.middle.platform.base.dialog.LoadingDialog;
import cn.soulapp.android.lib.common.bean.RxViewModel;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.cpnt_voiceparty.bean.RandomRecBean;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import cn.soulapp.cpnt_voiceparty.bean.RoomBean;
import cn.soulapp.cpnt_voiceparty.bean.RoomLowQualityBean;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.BackgroundDataModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.RoomConfigListModel;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.tencent.open.SocialConstants;
import com.walid.rxretrofit.HttpSubscriber;
import com.walid.rxretrofit.interfaces.SimpleHttpCallback;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.r0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.v;
import kotlin.m;
import kotlin.w;
import org.apache.commons.codec.language.bm.Languages;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
import ty.s;

/* JADX INFO: compiled from: CreateChatRoomViewModel.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010$\u001a\u00020 ¢\u0006\u0004\bJ\u0010KJ$\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004Jx\u0010\u0014\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\f\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0010\u001a\u00020\u00022\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00112\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0015\u001a\u00020\u0005J\u0006\u0010\u0016\u001a\u00020\u0005J\u0018\u0010\u0019\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0018\u001a\u00020\bJ\u0006\u0010\u001a\u001a\u00020\u0005J!\u0010\u001c\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\b2\b\u0010\f\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0002R\u0017\u0010$\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b\u001f\u0010!\u001a\u0004\b\"\u0010#R\u001d\u0010*\u001a\b\u0012\u0004\u0012\u00020&0%8\u0006¢\u0006\f\n\u0004\b\u0014\u0010'\u001a\u0004\b(\u0010)R\u001d\u0010.\u001a\b\u0012\u0004\u0012\u00020+0%8\u0006¢\u0006\f\n\u0004\b,\u0010'\u001a\u0004\b-\u0010)R\u001d\u00101\u001a\b\u0012\u0004\u0012\u00020/0%8\u0006¢\u0006\f\n\u0004\b-\u0010'\u001a\u0004\b0\u0010)R\u001d\u00105\u001a\b\u0012\u0004\u0012\u0002020%8\u0006¢\u0006\f\n\u0004\b3\u0010'\u001a\u0004\b4\u0010)R\u001d\u00109\u001a\b\u0012\u0004\u0012\u0002060%8\u0006¢\u0006\f\n\u0004\b7\u0010'\u001a\u0004\b8\u0010)R\u001d\u0010;\u001a\b\u0012\u0004\u0012\u00020:0%8\u0006¢\u0006\f\n\u0004\b\u0016\u0010'\u001a\u0004\b,\u0010)R\u001d\u0010<\u001a\b\u0012\u0004\u0012\u00020\b0%8\u0006¢\u0006\f\n\u0004\b4\u0010'\u001a\u0004\b7\u0010)R1\u0010B\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020>\u0018\u00010=j\n\u0012\u0004\u0012\u00020>\u0018\u0001`?0%8\u0006¢\u0006\f\n\u0004\b@\u0010'\u001a\u0004\bA\u0010)R*\u0010F\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010C0%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010'\u001a\u0004\b3\u0010)\"\u0004\bD\u0010ER*\u0010I\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010G0%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010'\u001a\u0004\b@\u0010)\"\u0004\bH\u0010E¨\u0006L"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/mvvm/CreateChatRoomViewModel;", "Lcn/soulapp/android/lib/common/bean/RxViewModel;", "", "roomName", "Lkotlin/Function1;", "Lkotlin/w;", "errorCallback", "q", "", "classifyId", "topicId", "backgroundId", "playType", "mFmCode", "recTopicId", "privateStatus", SocialConstants.PARAM_SOURCE, "", "functionCodeList", "groupId", ExpcompatUtils.COMPAT_VALUE_780, "j", "g", "fmCode", "position", "p", "n", "classifyCode", "o", "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "topic", "a", "Landroid/app/Application;", "Landroid/app/Application;", "getApp", "()Landroid/app/Application;", "app", "Landroidx/lifecycle/MutableLiveData;", "", "Landroidx/lifecycle/MutableLiveData;", "m", "()Landroidx/lifecycle/MutableLiveData;", "validateRoomTopicLiveData", "Lcn/soulapp/android/chatroom/bean/CreateRoomModel;", "c", "d", "createChatRoomLiveData", "Lcn/soulapp/android/chatroom/bean/RoomTypeModel;", "k", "roomTypesLiveData", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/RoomConfigListModel;", l11l11I1111l.l111l1111lIl, "h", "roomBasicLiveData", "Lcn/soulapp/cpnt_voiceparty/bean/RoomBean;", "f", "getRoomHistoryLiveData", "roomHistoryLiveData", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/BackgroundDataModel;", "bgChangeLiveData", "requestUseFMCodeLiveData", "Ljava/util/ArrayList;", "Lcn/soulapp/android/chatroom/bean/UserFmAsset;", "Lkotlin/collections/ArrayList;", "i", "l", "userFmAssetListLiveData", "Lcn/soulapp/cpnt_voiceparty/bean/RandomRecBean;", "setRandomRecBeanLiveData", "(Landroidx/lifecycle/MutableLiveData;)V", "randomRecBeanLiveData", "Lcn/soulapp/cpnt_voiceparty/bean/RoomLowQualityBean;", "setRoomLowQualityBeanLiveData", "roomLowQualityBeanLiveData", AppAgent.CONSTRUCT, "(Landroid/app/Application;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class CreateChatRoomViewModel extends RxViewModel {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Application app;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final MutableLiveData<Object> validateRoomTopicLiveData;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final MutableLiveData<CreateRoomModel> createChatRoomLiveData;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final MutableLiveData<RoomTypeModel> roomTypesLiveData;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final MutableLiveData<RoomConfigListModel> roomBasicLiveData;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final MutableLiveData<RoomBean> roomHistoryLiveData;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final MutableLiveData<BackgroundDataModel> bgChangeLiveData;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final MutableLiveData<Integer> requestUseFMCodeLiveData;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final MutableLiveData<ArrayList<UserFmAsset>> userFmAssetListLiveData;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private MutableLiveData<RandomRecBean> randomRecBeanLiveData;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private MutableLiveData<RoomLowQualityBean> roomLowQualityBeanLiveData;

    /* JADX INFO: compiled from: CreateChatRoomViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/CreateChatRoomViewModel$a", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RoomLowQualityBean;", "roomLowQualityBean", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class a extends s<RoomLowQualityBean> {
        public static ChangeQuickRedirect changeQuickRedirect;

        a() {
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RoomLowQualityBean roomLowQualityBean) {
            if (PatchProxy.proxy(new Object[]{roomLowQualityBean}, this, changeQuickRedirect, false, 2, new Class[]{RoomLowQualityBean.class}, Void.TYPE).isSupported) {
                return;
            }
            CreateChatRoomViewModel.this.i().setValue(roomLowQualityBean);
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            if (str == null) {
                str = "";
            }
            ExtensionsKt.toast(str);
            CreateChatRoomViewModel.this.i().setValue(null);
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/CreateChatRoomViewModel$b", "Lcom/walid/rxretrofit/interfaces/SimpleHttpCallback;", "Lcn/soulapp/android/chatroom/bean/CreateRoomModel;", "model", "Lkotlin/w;", "a", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class b extends SimpleHttpCallback<CreateRoomModel> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f143375b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f143376c;

        b(String str, String str2) {
            this.f143375b = str;
            this.f143376c = str2;
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable CreateRoomModel createRoomModel) {
            if (PatchProxy.proxy(new Object[]{createRoomModel}, this, changeQuickRedirect, false, 2, new Class[]{CreateRoomModel.class}, Void.TYPE).isSupported) {
                return;
            }
            CreateChatRoomViewModel.this.d().setValue(createRoomModel);
        }

        @Override // com.walid.rxretrofit.interfaces.SimpleHttpCallback, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
            k30.c.e(k30.c.f229065a, this.f143375b, str, false, 4, null);
            cn.soul.insight.log.core.a.f15353b.writeClientError(100701009, "创建房间失败," + this.f143376c + " : " + str);
            if (i11 == 40002) {
                CreateChatRoomViewModel.this.d().setValue(null);
            }
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/CreateChatRoomViewModel$c", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/RoomConfigListModel;", "roomConfigListModel", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class c extends HttpSubscriber<RoomConfigListModel> {
        public static ChangeQuickRedirect changeQuickRedirect;

        c() {
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(@NotNull RoomConfigListModel roomConfigListModel) {
            if (PatchProxy.proxy(new Object[]{roomConfigListModel}, this, changeQuickRedirect, false, 2, new Class[]{RoomConfigListModel.class}, Void.TYPE).isSupported) {
                return;
            }
            v.j(roomConfigListModel, "roomConfigListModel");
            CreateChatRoomViewModel.this.h().setValue(roomConfigListModel);
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @NotNull String message) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), message}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            v.j(message, "message");
            CreateChatRoomViewModel.this.h().setValue(null);
            SoulHouseExtensionKt.u0(this, "RoomConfig", "getRoomBasicConfig error: code=" + i11 + ",message=" + message);
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/CreateChatRoomViewModel$d", "Lty/s;", "Lcn/soulapp/android/chatroom/bean/RoomTypeModel;", "model", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class d extends s<RoomTypeModel> {
        public static ChangeQuickRedirect changeQuickRedirect;

        d() {
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RoomTypeModel roomTypeModel) {
            ArrayList arrayList;
            if (PatchProxy.proxy(new Object[]{roomTypeModel}, this, changeQuickRedirect, false, 2, new Class[]{RoomTypeModel.class}, Void.TYPE).isSupported) {
                return;
            }
            if (roomTypeModel != null) {
                List<RoomTypeBean> list = roomTypeModel.res;
                if (list != null) {
                    arrayList = new ArrayList();
                    for (Object obj : list) {
                        int i11 = ((RoomTypeBean) obj).f24105id;
                        if ((i11 == 0 || i11 == 11 || i11 == 12) ? false : true) {
                            arrayList.add(obj);
                        }
                    }
                } else {
                    arrayList = null;
                }
                roomTypeModel.res = arrayList;
            }
            CreateChatRoomViewModel.this.k().setValue(roomTypeModel);
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            if (str == null) {
                str = "";
            }
            ExtensionsKt.toast(str);
            CreateChatRoomViewModel.this.k().setValue(null);
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\b\u0012\u0004\u0012\u00020\u0003`\u00040\u0001J$\u0010\u0007\u001a\u00020\u00062\u001a\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u0004H\u0016J\u001a\u0010\f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\r"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/CreateChatRoomViewModel$e", "Lty/s;", "Ljava/util/ArrayList;", "Lcn/soulapp/android/chatroom/bean/UserFmAsset;", "Lkotlin/collections/ArrayList;", "userFMAsset", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class e extends s<ArrayList<UserFmAsset>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        e() {
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable ArrayList<UserFmAsset> arrayList) {
            if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 2, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
                return;
            }
            MutableLiveData<ArrayList<UserFmAsset>> mutableLiveDataL = CreateChatRoomViewModel.this.l();
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            mutableLiveDataL.setValue(arrayList);
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            if (str == null) {
                str = "";
            }
            ExtensionsKt.toast(str);
            CreateChatRoomViewModel.this.l().setValue(null);
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/CreateChatRoomViewModel$f", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RandomRecBean;", "randomRecBean", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class f extends s<RandomRecBean> {
        public static ChangeQuickRedirect changeQuickRedirect;

        f() {
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RandomRecBean randomRecBean) {
            if (PatchProxy.proxy(new Object[]{randomRecBean}, this, changeQuickRedirect, false, 2, new Class[]{RandomRecBean.class}, Void.TYPE).isSupported) {
                return;
            }
            CreateChatRoomViewModel.this.e().setValue(randomRecBean);
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            if (str == null) {
                str = "";
            }
            ExtensionsKt.toast(str);
            CreateChatRoomViewModel.this.e().setValue(null);
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/CreateChatRoomViewModel$g", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class g extends s<RequestResult<Object>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f143382d;

        g(int i11) {
            this.f143382d = i11;
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@NotNull RequestResult<Object> t11) {
            if (PatchProxy.proxy(new Object[]{t11}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            v.j(t11, "t");
            if (!t11.getResult()) {
                ExtensionsKt.toast(t11.getFailedMsg());
            } else {
                ExtensionsKt.toast("FM号码已切换");
                CreateChatRoomViewModel.this.f().setValue(Integer.valueOf(this.f143382d));
            }
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            if (str == null) {
                str = "";
            }
            ExtensionsKt.toast(str);
            CreateChatRoomViewModel.this.f().setValue(-1);
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/CreateChatRoomViewModel$h", "Lty/s;", "", Languages.ANY, "Lkotlin/w;", "onNext", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class h extends s<Object> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Function1<String, w> f143384d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f143385e;

        /* JADX WARN: Multi-variable type inference failed */
        h(Function1<? super String, w> function1, String str) {
            this.f143384d = function1;
            this.f143385e = str;
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            this.f143384d.invoke(str == null ? "" : str);
            cn.soul.insight.log.core.a.f15353b.writeClientError(100701008, "房间名验证失败," + this.f143385e + " : " + str);
            if (str == null) {
                str = "";
            }
            ExtensionsKt.toast(str);
            LoadingDialog.h().g();
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        public void onNext(@Nullable Object obj) {
            if (PatchProxy.proxy(new Object[]{obj}, this, changeQuickRedirect, false, 2, new Class[]{Object.class}, Void.TYPE).isSupported) {
                return;
            }
            CreateChatRoomViewModel.this.m().setValue(obj);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateChatRoomViewModel(@NotNull Application app) {
        super(app);
        v.j(app, "app");
        this.app = app;
        this.validateRoomTopicLiveData = new MutableLiveData<>();
        this.createChatRoomLiveData = new MutableLiveData<>();
        this.roomTypesLiveData = new MutableLiveData<>();
        this.roomBasicLiveData = new MutableLiveData<>();
        this.roomHistoryLiveData = new MutableLiveData<>();
        this.bgChangeLiveData = new MutableLiveData<>();
        this.requestUseFMCodeLiveData = new MutableLiveData<>();
        this.userFmAssetListLiveData = new MutableLiveData<>();
        this.randomRecBeanLiveData = new MutableLiveData<>();
        this.roomLowQualityBeanLiveData = new MutableLiveData<>();
    }

    public final void a(@NotNull String topic) {
        if (PatchProxy.proxy(new Object[]{topic}, this, changeQuickRedirect, false, 12, new Class[]{String.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(topic, "topic");
        h30.g.f225309a.E0(r0.l(m.a("topic", topic))).subscribe(HttpSubscriber.create(new a()));
    }

    public final void b(int i11, int i12, @NotNull String roomName, @Nullable String str, int i13, @Nullable String str2, @Nullable String str3, int i14, @NotNull String source, @Nullable List<String> list, @Nullable String str4) throws JSONException {
        Object[] objArr = {new Integer(i11), new Integer(i12), roomName, str, new Integer(i13), str2, str3, new Integer(i14), source, list, str4};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        if (PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 5, new Class[]{cls, cls, String.class, String.class, cls, String.class, String.class, cls, String.class, List.class, String.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(roomName, "roomName");
        v.j(source, "source");
        h30.g gVar = h30.g.f225309a;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("createroom_source", source);
        if (!(str4 == null || str4.length() == 0)) {
            jSONObject.put("groupId", str4);
        }
        if (UnifyUIStyleManager.f11898a.k()) {
            jSONObject.put("uiType", 1);
        }
        ChangeQuickRedirect changeQuickRedirect3 = w.changeQuickRedirect;
        register((Disposable) gVar.T0(i11, i12, roomName, str, (64 & 16) != 0 ? 0 : i13, str2, (64 & 64) != 0 ? "" : str3, (64 & 128) != 0 ? 0 : i14, (64 & 256) != 0 ? null : jSONObject.toString(), (64 & 512) != 0 ? null : list != null ? CollectionsKt___CollectionsKt.C0(list, ",", null, null, 0, null, null, 62, null) : null, (64 & 1024) != 0 ? null : null).subscribeWith(HttpSubscriber.create(new b(source, roomName))));
    }

    @NotNull
    public final MutableLiveData<BackgroundDataModel> c() {
        return this.bgChangeLiveData;
    }

    @NotNull
    public final MutableLiveData<CreateRoomModel> d() {
        return this.createChatRoomLiveData;
    }

    @NotNull
    public final MutableLiveData<RandomRecBean> e() {
        return this.randomRecBeanLiveData;
    }

    @NotNull
    public final MutableLiveData<Integer> f() {
        return this.requestUseFMCodeLiveData;
    }

    public final void g() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        h30.g.f225309a.Z3().subscribe(new c());
    }

    @NotNull
    public final MutableLiveData<RoomConfigListModel> h() {
        return this.roomBasicLiveData;
    }

    @NotNull
    public final MutableLiveData<RoomLowQualityBean> i() {
        return this.roomLowQualityBeanLiveData;
    }

    public final void j() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        register((Disposable) h30.a.f225299a.v(true, (28 & 2) != 0 ? 0 : 2, (28 & 4) != 0 ? "" : null, (28 & 8) != 0 ? "" : null, (28 & 16) != 0 ? "" : null).subscribeWith(HttpSubscriber.create(new d())));
    }

    @NotNull
    public final MutableLiveData<RoomTypeModel> k() {
        return this.roomTypesLiveData;
    }

    @NotNull
    public final MutableLiveData<ArrayList<UserFmAsset>> l() {
        return this.userFmAssetListLiveData;
    }

    @NotNull
    public final MutableLiveData<Object> m() {
        return this.validateRoomTopicLiveData;
    }

    public final void n() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 10, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        h30.g.f225309a.q6().subscribe(HttpSubscriber.create(new e()));
    }

    public final void o(@Nullable Integer classifyCode, @Nullable Integer playType) {
        if (PatchProxy.proxy(new Object[]{classifyCode, playType}, this, changeQuickRedirect, false, 11, new Class[]{Integer.class, Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        h30.g.f225309a.D8(classifyCode, playType).subscribe(HttpSubscriber.create(new f()));
    }

    public final void p(@Nullable String str, int i11) {
        if (PatchProxy.proxy(new Object[]{str, new Integer(i11)}, this, changeQuickRedirect, false, 9, new Class[]{String.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        h30.g.f225309a.G8(r0.l(new Pair("fmCode", str))).subscribe(HttpSubscriber.create(new g(i11)));
    }

    public final void q(@NotNull String roomName, @NotNull Function1<? super String, w> errorCallback) {
        if (PatchProxy.proxy(new Object[]{roomName, errorCallback}, this, changeQuickRedirect, false, 4, new Class[]{String.class, Function1.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(roomName, "roomName");
        v.j(errorCallback, "errorCallback");
        register((Disposable) h30.a.f225299a.S(roomName).subscribeWith(HttpSubscriber.create(new h(errorCallback, roomName))));
    }
}