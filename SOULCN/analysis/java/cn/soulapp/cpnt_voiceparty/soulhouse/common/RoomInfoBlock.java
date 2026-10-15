package cn.soulapp.cpnt_voiceparty.soulhouse.common;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.DialogFragment;
import cn.android.lib.soul_entity.OperationModel;
import cn.mate.android.utils.MateScreenUtil;
import cn.soul.android.base.block_frame.block.Container;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.component.SoulRouter;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.lib_dialog.SoulDialog;
import cn.soul.lib_dialog.util.SoulDialogType;
import cn.soulapp.android.chat.bean.GroupMessageModel;
import cn.soulapp.android.chat.bean.GroupUserModel;
import cn.soulapp.android.chatroom.bean.BackgroundModel;
import cn.soulapp.android.chatroom.bean.ChatRoomModel;
import cn.soulapp.android.chatroom.bean.ClimateModel;
import cn.soulapp.android.chatroom.bean.CreateGiftConfig;
import cn.soulapp.android.chatroom.bean.MusicModel;
import cn.soulapp.android.chatroom.bean.MusicStationBean;
import cn.soulapp.android.chatroom.bean.MusicStationModel;
import cn.soulapp.android.chatroom.data.RoomDataManager;
import cn.soulapp.android.chatroom.dynamic.PartyMateImageView;
import cn.soulapp.android.client.component.middle.platform.bean.im.RoomUser;
import cn.soulapp.android.component.square.service.ChatService;
import cn.soulapp.android.lib.analyticsV2.Const;
import cn.soulapp.android.lib.analyticsV2.SoulAnalyticsV2;
import cn.soulapp.android.lib.common.api.ApiConstants;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.android.lib.common.utils.mmkv.SKV;
import cn.soulapp.android.lib.media.zego.RoomChatEngineManager;
import cn.soulapp.cpnt_voiceparty.R$drawable;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.api.IVoiceParty;
import cn.soulapp.cpnt_voiceparty.bean.ClimateBlindBoxInfo;
import cn.soulapp.cpnt_voiceparty.bean.CommonMessage;
import cn.soulapp.cpnt_voiceparty.bean.FunctionBean;
import cn.soulapp.cpnt_voiceparty.bean.GroupMessageListModel;
import cn.soulapp.cpnt_voiceparty.bean.H5PlayGameStatusBean;
import cn.soulapp.cpnt_voiceparty.bean.MyGenerated;
import cn.soulapp.cpnt_voiceparty.bean.MyInfoInRoom;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import cn.soulapp.cpnt_voiceparty.bean.RoomMoodConfig;
import cn.soulapp.cpnt_voiceparty.bean.SendAtmosphereBgInfo;
import cn.soulapp.cpnt_voiceparty.bean.UpdateRoomConfigInfo;
import cn.soulapp.cpnt_voiceparty.callback.OnRoomConfigurationChangedListener;
import cn.soulapp.cpnt_voiceparty.dialog.FollowGuideDialog;
import cn.soulapp.cpnt_voiceparty.dialog.ReceiveAtmosphereBgDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.ISlideContainer;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.atmosphere.AiBackgroundMessageHelper;
import cn.soulapp.cpnt_voiceparty.soulhouse.atmosphere.ChatRoomConfigurationDialogFragment;
import cn.soulapp.cpnt_voiceparty.soulhouse.atmosphere.ClimateHelper;
import cn.soulapp.cpnt_voiceparty.soulhouse.atmosphere.experience.ExperienceEndDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.atmosphere.experience.ExperiencePreviewActivity;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.BackgroundDataModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.h5play.H5PlaySlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.left.MessagePool;
import cn.soulapp.cpnt_voiceparty.soulhouse.music.ChatRoomMusicAddedDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.music.ChatRoomMusicFloatingBar;
import cn.soulapp.cpnt_voiceparty.soulhouse.music.ChatRoomMusicSearchDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.playmode.ModeConflictConfiguration;
import cn.soulapp.cpnt_voiceparty.soulhouse.slice.CommonSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.slice.SliceManager;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.BlockMessage;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.GroupChatMessage;
import cn.soulapp.cpnt_voiceparty.util.CommonUtil;
import cn.soulapp.cpnt_voiceparty.widget.DispatchConstraintLayout;
import cn.soulapp.cpnt_voiceparty.widget.FloatingGroupChatNoticeView;
import cn.soulapp.cpnt_voiceparty.widget.RoomOnlineUserCountView;
import cn.soulapp.cpnt_voiceparty.widget.SoulHouseDetailBannerView;
import cn.soulapp.cpnt_voiceparty.widget.limitfps.LimitFpsSoulHouseDetailBannerView;
import cn.soulapp.imlib.msg.ImMessage;
import cn.soulapp.lib.utils.ext.ViewExtKt;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.huawei.hms.support.api.entity.auth.AuthCode;
import com.ss.texturerender.TextureRenderKeys;
import com.umeng.analytics.pro.bd;
import com.walid.rxretrofit.HttpSubscriber;
import com.walid.rxretrofit.interfaces.SimpleHttpCallback;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomInfoBlock.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u0000Ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010U\u001a\u00020T¢\u0006\u0004\bg\u0010hJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002J\u001c\u0010\u0019\u001a\u00020\u00042\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u0016H\u0002J\u0018\u0010\u001d\u001a\u00020\u00042\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aH\u0002J:\u0010&\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001f2\b\b\u0002\u0010\"\u001a\u00020!2\u0016\b\u0002\u0010%\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u0004\u0018\u00010#H\u0002J\u0012\u0010(\u001a\u00020\u00042\b\u0010'\u001a\u0004\u0018\u00010\bH\u0002J&\u0010/\u001a\u00020\u00042\b\u0010*\u001a\u0004\u0018\u00010)2\b\u0010,\u001a\u0004\u0018\u00010+2\b\u0010.\u001a\u0004\u0018\u00010-H\u0002J8\u00105\u001a\u00020\u00042\u0014\u00101\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u0001000\u00162\u0006\u00102\u001a\u00020!2\u0010\b\u0002\u00104\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u000103H\u0002J\b\u00106\u001a\u00020\u0004H\u0002J\b\u00107\u001a\u00020\u0004H\u0002J\u0018\u0010:\u001a\u00020\u00042\u0006\u00108\u001a\u00020\u001f2\u0006\u00109\u001a\u00020\u0017H\u0002J\u0010\u0010<\u001a\u00020\u00042\u0006\u0010;\u001a\u00020!H\u0002J\b\u0010=\u001a\u00020\u0004H\u0002J\b\u0010>\u001a\u00020\u0004H\u0002J\b\u0010?\u001a\u00020\u0004H\u0002J\u0012\u0010A\u001a\u00020\u00042\b\b\u0002\u0010@\u001a\u00020!H\u0002J\u0012\u0010C\u001a\u00020\u00042\b\u0010B\u001a\u0004\u0018\u00010\u0017H\u0002J\b\u0010D\u001a\u00020\u0004H\u0002J\b\u0010E\u001a\u00020\u0004H\u0002J,\u0010H\u001a&\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0012\u0006\u0012\u0004\u0018\u0001000Fj\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0012\u0006\u0012\u0004\u0018\u000100`GH\u0002J\b\u0010I\u001a\u00020\u0004H\u0002J\n\u0010K\u001a\u0004\u0018\u00010JH\u0002J\u0010\u0010N\u001a\u00020!2\u0006\u0010M\u001a\u00020LH\u0016J\u001a\u0010O\u001a\u00020\u00042\u0006\u0010M\u001a\u00020L2\b\u0010\u001c\u001a\u0004\u0018\u000100H\u0016J\u0010\u0010R\u001a\u00020\u00042\u0006\u0010Q\u001a\u00020PH\u0016J\b\u0010S\u001a\u00020\u0004H\u0016R\u0014\u0010U\u001a\u00020T8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010VR\u0016\u0010W\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u001e\u0010Y\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR\u0018\u0010\\\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0018\u0010_\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u0018\u0010b\u001a\u0004\u0018\u00010a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010cR\u0018\u0010e\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010f¨\u0006i"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/common/RoomInfoBlock;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/common/SoulHouseBlock;", "", "bizIdentity", "Lkotlin/w;", "showAtmosphereExperienceTip", "handleAtmosphereRestoreMusic", "dismissAtmosphereExperienceTip", "Lcn/soulapp/android/chatroom/bean/ClimateModel;", "climateModel", "handleAtmosphereExperienceEnd", "payConfirm", "Lcn/soulapp/cpnt_voiceparty/bean/ClimateBlindBoxInfo;", "boxInfo", "handleAtmosphereBlindBox", "Lcn/soulapp/cpnt_voiceparty/bean/MyGenerated;", "myGenerated", "handleAiBackgroundSuccess", "adaptPartyNewUX", "listenRoomOnlineUserClickEvent", "hideAtmosphere", "showOnlineUserView", "", "", "roomMap", "startFloatingGroupChatNoticeViewAnim", "", "Lcn/android/lib/soul_entity/OperationModel;", "msg", "showBigBanner", "targetTab", "", "targetSubTabId", "", "isUx", "Lkotlin/Function1;", "Landroidx/fragment/app/DialogFragment;", "subPageCallback", "showRoomConfigDialog", "data", "playAtomMusic", "Lcn/soulapp/cpnt_voiceparty/bean/UpdateRoomConfigInfo;", "updateRoomConfigBean", "Lcn/soulapp/android/chatroom/bean/MusicStationModel;", "musicStationModel", "Lcn/soulapp/android/chatroom/bean/MusicStationBean;", "musicStationBean", "updateRoomRadioConfig", "", "map", "isMustInvoke", "Lkotlin/Function0;", TextureRenderKeys.KEY_IS_CALLBACK, "updateRoomConfigNew", "playNextMusic", "replayBgMusic", "musicStationId", "musicCursor", "getMusic", "showRadio", "toggleRadioAndAtmosphereViewNew", "stopAndClearSong", "checkMusicBar", "showMusicBar", "needHideEntrance", "stopAtomOrMusicRadio", "groupId", "getGroupListAndStatus", "showAtmosphereEntrance", "hideAtmosphereEntrance", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "getAtmosphereEntranceParameter", "updateRankEntryWidth", "Lcn/soulapp/cpnt_voiceparty/widget/SoulHouseDetailBannerView;", "getBannerView", "Lcn/soulapp/cpnt_voiceparty/ui/chatroom/BlockMessage;", "msgType", "canReceiveMessage", "onReceiveMessage", "Landroid/view/ViewGroup;", "root", "initView", "onDestroy", "Lcn/soul/android/base/block_frame/block/Container;", "blockContainer", "Lcn/soul/android/base/block_frame/block/Container;", "isMusicRadioOrAtmospherePlay", "Z", "mBannerData", "Ljava/util/List;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/atmosphere/ChatRoomConfigurationDialogFragment;", "configDialog", "Lcn/soulapp/cpnt_voiceparty/soulhouse/atmosphere/ChatRoomConfigurationDialogFragment;", "Lcn/soul/lib_dialog/SoulDialog;", "aiBackgroundSoulDialog", "Lcn/soul/lib_dialog/SoulDialog;", "Landroid/view/View;", "mExperienceTipView", "Landroid/view/View;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/atmosphere/experience/ExperienceEndDialog;", "experienceEndDialog", "Lcn/soulapp/cpnt_voiceparty/soulhouse/atmosphere/experience/ExperienceEndDialog;", AppAgent.CONSTRUCT, "(Lcn/soul/android/base/block_frame/block/Container;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class RoomInfoBlock extends SoulHouseBlock {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    private SoulDialog aiBackgroundSoulDialog;

    @NotNull
    private final Container blockContainer;

    @Nullable
    private ChatRoomConfigurationDialogFragment configDialog;

    @Nullable
    private ExperienceEndDialog experienceEndDialog;
    private boolean isMusicRadioOrAtmospherePlay;

    @Nullable
    private List<OperationModel> mBannerData;

    @Nullable
    private View mExperienceTipView;

    /* JADX INFO: compiled from: RoomInfoBlock.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f147491a;
        public static ChangeQuickRedirect changeQuickRedirect;

        static {
            if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 1, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            int[] iArr = new int[BlockMessage.values().length];
            iArr[BlockMessage.MSG_SHOW_ROOM_CONFIG_DIALOG.ordinal()] = 1;
            iArr[BlockMessage.MSG_SHOW_ROOM_CONFIG_DIALOG_UX.ordinal()] = 2;
            iArr[BlockMessage.MSG_SHOW_ROOM_MY_ATMOSPHERE_DIALOG.ordinal()] = 3;
            iArr[BlockMessage.MSG_PLAY_NEXT_MUSIC.ordinal()] = 4;
            iArr[BlockMessage.MSG_USE_ROOM_BG.ordinal()] = 5;
            iArr[BlockMessage.MSG_OWNER_SELECT_ATMOSPHERE.ordinal()] = 6;
            iArr[BlockMessage.MSG_UPDATE_FUNCTIONS.ordinal()] = 7;
            iArr[BlockMessage.MSG_SHOW_ATMOSPHERE_ENTRANCE.ordinal()] = 8;
            iArr[BlockMessage.MSG_ATMOSPHERE_EXPERIENCE_SUCCESS.ordinal()] = 9;
            iArr[BlockMessage.MSG_ATMOSPHERE_EXPERIENCE_SUCCESS_TIP_DISMISS.ordinal()] = 10;
            iArr[BlockMessage.MSG_SHOW_ATMOSPHERE_ENTRANCE_RED_POINT.ordinal()] = 11;
            iArr[BlockMessage.MSG_SHOW_ATMOSPHERE_ENTRANCE_NAME.ordinal()] = 12;
            iArr[BlockMessage.MSG_SHOW_ATMOSPHERE_TAB_RED_POINT.ordinal()] = 13;
            iArr[BlockMessage.MSG_OWNER_SELECT_MUSIC.ordinal()] = 14;
            iArr[BlockMessage.MSG_SHOW_MUSIC_SEARCH_DIALOG.ordinal()] = 15;
            iArr[BlockMessage.MSG_SHOW_MUSIC_ADD_DIALOG.ordinal()] = 16;
            iArr[BlockMessage.MSG_SHOW_MUSIC_BAR.ordinal()] = 17;
            iArr[BlockMessage.MSG_CLOSE_LISTEN_TOGETHER_MUSIC.ordinal()] = 18;
            iArr[BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM.ordinal()] = 19;
            iArr[BlockMessage.MSG_SHOW_GROUP_CHAT_NOTICE.ordinal()] = 20;
            iArr[BlockMessage.MSG_CLOSE_GROUP_CHAT_NOTICE.ordinal()] = 21;
            iArr[BlockMessage.SHOW_FOLLOW_GUIDE_POO.ordinal()] = 22;
            iArr[BlockMessage.MSG_GROUP_CHAT_SUCCESS.ordinal()] = 23;
            iArr[BlockMessage.MSG_SHOW_ROOM_BANNER.ordinal()] = 24;
            iArr[BlockMessage.MSG_BATTERY_ANIM_CHANGE.ordinal()] = 25;
            iArr[BlockMessage.MSG_DISLIKE_NEXT_ROOM.ordinal()] = 26;
            iArr[BlockMessage.MSG_SEND_ATMOSPHERE_BG.ordinal()] = 27;
            iArr[BlockMessage.MSG_AI_BACKGROUND_SUCCESS.ordinal()] = 28;
            iArr[BlockMessage.MSG_ATMOSPHERE_BLIND_BOX.ordinal()] = 29;
            iArr[BlockMessage.MSG_ATMOSPHERE_EXPERIENCE_END.ordinal()] = 30;
            iArr[BlockMessage.MSG_UPDATE_ATMOSPHERE_SELECTED.ordinal()] = 31;
            iArr[BlockMessage.MSG_ATMOSPHERE_RESTORE_ATMOSPHERE_MUSIC.ordinal()] = 32;
            iArr[BlockMessage.MSG_UPDATE_ONLINE_USER_COUNT.ordinal()] = 33;
            iArr[BlockMessage.MSG_UPDATE_LISTEN_PARTY_NUM.ordinal()] = 34;
            f147491a = iArr;
        }
    }

    /* JADX INFO: compiled from: RoomInfoBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/common/RoomInfoBlock$b", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/GroupMessageListModel;", "t", "Lkotlin/w;", "d", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class b extends ty.s<GroupMessageListModel> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f147492c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ RoomInfoBlock f147493d;

        b(String str, RoomInfoBlock roomInfoBlock) {
            this.f147492c = str;
            this.f147493d = roomInfoBlock;
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable GroupMessageListModel groupMessageListModel) {
            ArrayList<GroupMessageModel> groupMessageModels;
            ArrayList arrayList;
            String signature;
            HashMap<String, Boolean> mapIsGroupChatSuccessMap;
            GroupUserModel groupUserModel;
            if (PatchProxy.proxy(new Object[]{groupMessageListModel}, this, changeQuickRedirect, false, 2, new Class[]{GroupMessageListModel.class}, Void.TYPE).isSupported || groupMessageListModel == null || (groupMessageModels = groupMessageListModel.getGroupMessageModels()) == null) {
                return;
            }
            String str = this.f147492c;
            RoomInfoBlock roomInfoBlock = this.f147493d;
            ArrayList<GroupUserModel> roomerList = groupMessageModels.get(0).getRoomerList();
            if (roomerList != null) {
                arrayList = new ArrayList();
                for (Object obj : roomerList) {
                    if (kotlin.jvm.internal.v.e(String.valueOf(((GroupUserModel) obj).getUserId()), cn.soulapp.android.client.component.middle.platform.utils.user.a.w())) {
                        arrayList.add(obj);
                    }
                }
            } else {
                arrayList = null;
            }
            if (arrayList == null || (groupUserModel = (GroupUserModel) arrayList.get(0)) == null || (signature = groupUserModel.getSignature()) == null) {
                signature = "";
            }
            ChatService chatService = (ChatService) SoulRouter.j().u(ChatService.class);
            if (chatService != null) {
                chatService.createGroupChat(signature + "的派对", str, groupMessageModels.get(0), signature + "的派对欢迎大家");
            }
            GroupChatMessage groupChatMessage = (GroupChatMessage) roomInfoBlock.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.A());
            if (groupChatMessage == null || (mapIsGroupChatSuccessMap = groupChatMessage.isGroupChatSuccessMap()) == null) {
                return;
            }
            mapIsGroupChatSuccessMap.put(String.valueOf(str), Boolean.TRUE);
        }
    }

    /* JADX INFO: compiled from: RoomInfoBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/common/RoomInfoBlock$c", "Lcom/walid/rxretrofit/interfaces/SimpleHttpCallback;", "Lcn/soulapp/android/chatroom/bean/MusicStationBean;", "t", "Lkotlin/w;", "a", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class c extends SimpleHttpCallback<MusicStationBean> {
        public static ChangeQuickRedirect changeQuickRedirect;

        c() {
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable MusicStationBean musicStationBean) {
            if (PatchProxy.proxy(new Object[]{musicStationBean}, this, changeQuickRedirect, false, 2, new Class[]{MusicStationBean.class}, Void.TYPE).isSupported) {
                return;
            }
            RoomMoodConfig roomMoodConfig = (RoomMoodConfig) RoomInfoBlock.this.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.n0());
            if (roomMoodConfig != null) {
                roomMoodConfig.setRadioConfig(roomMoodConfig.musicStationModel, musicStationBean, 0);
            }
            RoomInfoBlock.this.replayBgMusic();
        }
    }

    /* JADX INFO: compiled from: RoomInfoBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/common/RoomInfoBlock$d", "Lcn/soulapp/cpnt_voiceparty/soulhouse/atmosphere/experience/ExperienceEndDialog$IPicConfirmInterface;", "Lkotlin/w;", "onConfirm", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class d implements ExperienceEndDialog.IPicConfirmInterface {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ClimateModel f147496b;

        d(ClimateModel climateModel) {
            this.f147496b = climateModel;
        }

        @Override // cn.soulapp.cpnt_voiceparty.soulhouse.atmosphere.experience.ExperienceEndDialog.IPicConfirmInterface
        public void onConfirm() {
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            RoomInfoBlock.this.payConfirm(this.f147496b);
        }
    }

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class e implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f147497a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f147498b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ RoomInfoBlock f147499c;

        public e(View view, long j11, RoomInfoBlock roomInfoBlock) {
            this.f147497a = view;
            this.f147498b = j11;
            this.f147499c = roomInfoBlock;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f147497a) >= this.f147498b) {
                RoomInfoBlock.showRoomConfigDialog$default(this.f147499c, 0, 2L, false, null, 12, null);
                SoulAnalyticsV2 soulAnalyticsV2 = SoulAnalyticsV2.getInstance();
                HashMap atmosphereEntranceParameter = this.f147499c.getAtmosphereEntranceParameter();
                View viewFindViewById = this.f147499c.getRootView().findViewById(R$id.f128645p0);
                atmosphereEntranceParameter.put("dot_status", Integer.valueOf((viewFindViewById == null || viewFindViewById.getVisibility() != 0) ? 0 : 1));
                ChangeQuickRedirect changeQuickRedirect2 = kotlin.w.changeQuickRedirect;
                soulAnalyticsV2.onEvent(Const.EventType.CLICK, "atmosphere_clk", atmosphereEntranceParameter);
                this.f147499c.sendMessage(BlockMessage.MSG_ATMOSPHERE_EXPERIENCE_SUCCESS_TIP_DISMISS);
            }
            ExtensionsKt.setLastClickTime(this.f147497a, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class f implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f147500a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f147501b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ RoomInfoBlock f147502c;

        public f(View view, long j11, RoomInfoBlock roomInfoBlock) {
            this.f147500a = view;
            this.f147501b = j11;
            this.f147502c = roomInfoBlock;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f147500a) >= this.f147501b) {
                cn.soulapp.cpnt_voiceparty.util.track.a.f162372a.F2(this.f147502c.getDataBus(), "1", 1);
                this.f147502c.sendMessage(BlockMessage.MSG_OPEN_ONLINE_USER_LIST_DIALOG_FROM_ROOM_INFO, (Object) 0);
            }
            ExtensionsKt.setLastClickTime(this.f147500a, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class g implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f147503a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f147504b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ RoomInfoBlock f147505c;

        public g(View view, long j11, RoomInfoBlock roomInfoBlock) {
            this.f147503a = view;
            this.f147504b = j11;
            this.f147505c = roomInfoBlock;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f147503a) >= this.f147504b) {
                this.f147505c.dismissAtmosphereExperienceTip();
            }
            ExtensionsKt.setLastClickTime(this.f147503a, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: compiled from: RoomInfoBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00052\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/common/RoomInfoBlock$h", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class h extends HttpSubscriber<RequestResult<Object>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f147506a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function0<kotlin.w> f147507b;

        h(boolean z11, Function0<kotlin.w> function0) {
            this.f147506a = z11;
            this.f147507b = function0;
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(@Nullable RequestResult<Object> requestResult) {
            if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            if (!(requestResult != null && requestResult.getResult()) && !this.f147506a) {
                cn.soul.insight.log.core.a.f15353b.i("Atmosphere", "氛围背景更新失败！");
                return;
            }
            Function0<kotlin.w> function0 = this.f147507b;
            if (function0 != null) {
                function0.invoke();
            }
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
        }
    }

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.soulhouse.common.RoomInfoBlock$playAtomMusic$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: RoomInfoBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "invoke", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    static final class C23781 extends Lambda implements Function0<kotlin.w> {
        public static ChangeQuickRedirect changeQuickRedirect;
        final /* synthetic */ ClimateModel $data;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C23781(ClimateModel climateModel) {
            super(0);
            this.$data = climateModel;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invoke$lambda-1$lambda-0, reason: not valid java name */
        public static final void m6752invoke$lambda1$lambda0(RoomInfoBlock this$0) {
            if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 3, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(this$0, "this$0");
            this$0.toggleRadioAndAtmosphereViewNew(false);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ kotlin.w invoke() {
            invoke2();
            return kotlin.w.f231958a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            RoomMoodConfig roomMoodConfig;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (roomMoodConfig = (RoomMoodConfig) RoomInfoBlock.this.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.n0())) == null) {
                return;
            }
            ClimateModel climateModel = this.$data;
            final RoomInfoBlock roomInfoBlock = RoomInfoBlock.this;
            roomMoodConfig.setClimateConfig(climateModel);
            roomInfoBlock.runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.b6
                @Override // java.lang.Runnable
                public final void run() {
                    RoomInfoBlock.C23781.m6752invoke$lambda1$lambda0(roomInfoBlock);
                }
            });
            roomInfoBlock.sendMessage(BlockMessage.MSG_UPDATE_ROOM_BG, climateModel.backgroundUrl);
            if (TextUtils.isEmpty(roomMoodConfig.musicUrl)) {
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(roomInfoBlock.blockContainer.getDataBus());
                if (soulHouseDriverJ0 != null) {
                    soulHouseDriverJ0.S2();
                    return;
                }
                return;
            }
            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(roomInfoBlock.blockContainer.getDataBus());
            if (soulHouseDriverJ1 != null) {
                String str = roomMoodConfig.musicUrl;
                kotlin.jvm.internal.v.i(str, "it.musicUrl");
                soulHouseDriverJ1.H1(str);
            }
        }
    }

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.soulhouse.common.RoomInfoBlock$updateRoomRadioConfig$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: RoomInfoBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/w;", "invoke", "()V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    static final class C23821 extends Lambda implements Function0<kotlin.w> {
        public static ChangeQuickRedirect changeQuickRedirect;
        final /* synthetic */ MusicStationBean $musicStationBean;
        final /* synthetic */ MusicStationModel $musicStationModel;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C23821(MusicStationModel musicStationModel, MusicStationBean musicStationBean) {
            super(0);
            this.$musicStationModel = musicStationModel;
            this.$musicStationBean = musicStationBean;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invoke$lambda-1$lambda-0, reason: not valid java name */
        public static final void m6753invoke$lambda1$lambda0(RoomInfoBlock this$0) {
            if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 3, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(this$0, "this$0");
            this$0.toggleRadioAndAtmosphereViewNew(true);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ kotlin.w invoke() {
            invoke2();
            return kotlin.w.f231958a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            RoomMoodConfig roomMoodConfig;
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (roomMoodConfig = (RoomMoodConfig) RoomInfoBlock.this.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.n0())) == null) {
                return;
            }
            MusicStationModel musicStationModel = this.$musicStationModel;
            MusicStationBean musicStationBean = this.$musicStationBean;
            final RoomInfoBlock roomInfoBlock = RoomInfoBlock.this;
            roomMoodConfig.setRadioConfig(musicStationModel, musicStationBean, 0);
            roomInfoBlock.runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.c6
                @Override // java.lang.Runnable
                public final void run() {
                    RoomInfoBlock.C23821.m6753invoke$lambda1$lambda0(roomInfoBlock);
                }
            });
            SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(roomInfoBlock.blockContainer.getDataBus());
            if (soulHouseDriverJ0 != null) {
                String str = roomMoodConfig.musicUrl;
                kotlin.jvm.internal.v.i(str, "it.musicUrl");
                soulHouseDriverJ0.H1(str);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomInfoBlock(@NotNull Container blockContainer) {
        super(blockContainer);
        kotlin.jvm.internal.v.j(blockContainer, "blockContainer");
        this.blockContainer = blockContainer;
    }

    private final void adaptPartyNewUX() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 12, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        if (!cn.soulapp.cpnt_voiceparty.util.e.f162158a.E()) {
            hideAtmosphere();
        } else {
            showOnlineUserView();
            listenRoomOnlineUserClickEvent();
        }
    }

    private final void checkMusicBar() {
        ChatRoomMusicFloatingBar chatRoomMusicFloatingBar;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 27, new Class[0], Void.TYPE).isSupported || (chatRoomMusicFloatingBar = (ChatRoomMusicFloatingBar) getRootView().findViewById(R$id.f129140w6)) == null) {
            return;
        }
        ViewExtKt.l(chatRoomMusicFloatingBar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dismissAtmosphereExperienceTip() {
        DispatchConstraintLayout dispatchConstraintLayout;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        View view = this.mExperienceTipView;
        if (view != null && (dispatchConstraintLayout = (DispatchConstraintLayout) getRootView().findViewById(R$id.YI)) != null) {
            dispatchConstraintLayout.removeView(view);
        }
        this.mExperienceTipView = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HashMap<String, Object> getAtmosphereEntranceParameter() {
        boolean z11 = false;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 33, new Class[0], HashMap.class);
        if (patchProxyResultProxy.isSupported) {
            return (HashMap) patchProxyResultProxy.result;
        }
        HashMap<String, Object> map = new HashMap<>();
        map.put("room_id", SoulHouseExtensionKt.O(getDataBus()));
        map.put("host_id", SoulHouseExtensionKt.o(getDataBus()));
        map.put("JoinCode", SoulHouseExtensionKt.q(getDataBus()));
        map.put("joinUniqueCode", SoulHouseExtensionKt.u(getDataBus()));
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(getDataBus());
        if (soulHouseDriverJ0 != null && soulHouseDriverJ0.x1(cn.soulapp.android.client.component.middle.platform.utils.user.a.w())) {
            z11 = true;
        }
        map.put("is_owner", Integer.valueOf(z11 ? 1 : 2));
        return map;
    }

    private final SoulHouseDetailBannerView getBannerView() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 35, new Class[0], SoulHouseDetailBannerView.class);
        if (patchProxyResultProxy.isSupported) {
            return (SoulHouseDetailBannerView) patchProxyResultProxy.result;
        }
        return cn.soulapp.cpnt_voiceparty.util.e.f162158a.E() ? (LimitFpsSoulHouseDetailBannerView) getRootView().findViewById(R$id.f128923t1) : (LimitFpsSoulHouseDetailBannerView) getRootView().findViewById(R$id.X2);
    }

    private final void getGroupListAndStatus(String str) {
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 30, new Class[]{String.class}, Void.TYPE).isSupported) {
            return;
        }
        ty.h hVar = ApiConstants.GROUP_MSG;
        hVar.j(((IVoiceParty) hVar.i(IVoiceParty.class)).getGroupLists(str), new b(str, this));
    }

    private final void getMusic(long j11, String str) {
        if (PatchProxy.proxy(new Object[]{new Long(j11), str}, this, changeQuickRedirect, false, 24, new Class[]{Long.TYPE, String.class}, Void.TYPE).isSupported) {
            return;
        }
        Observer observerSubscribeWith = h30.a.f225299a.p(j11, str).subscribeWith(HttpSubscriber.create(new c()));
        kotlin.jvm.internal.v.i(observerSubscribeWith, "private fun getMusic(mus…       ))\n        )\n    }");
        register((Disposable) observerSubscribeWith);
    }

    private final void handleAiBackgroundSuccess(MyGenerated myGenerated) {
        AiBackgroundMessageHelper.IReceiveInterface iReceiveInterfaceA;
        if (PatchProxy.proxy(new Object[]{myGenerated}, this, changeQuickRedirect, false, 10, new Class[]{MyGenerated.class}, Void.TYPE).isSupported) {
            return;
        }
        if (myGenerated.getState() == 3) {
            cn.soulapp.lib.widget.toast.e.u(TextUtils.isEmpty(myGenerated.getFailMsg()) ? "专属氛围背景生成失败！" : myGenerated.getFailMsg());
        }
        AiBackgroundMessageHelper aiBackgroundMessageHelper = AiBackgroundMessageHelper.f145091a;
        if (aiBackgroundMessageHelper.c()) {
            AiBackgroundMessageHelper.IReceiveInterface iReceiveInterfaceB = aiBackgroundMessageHelper.b();
            if (iReceiveInterfaceB != null) {
                iReceiveInterfaceB.onReceive(myGenerated);
                return;
            }
            return;
        }
        if (aiBackgroundMessageHelper.d() && (iReceiveInterfaceA = aiBackgroundMessageHelper.a()) != null) {
            iReceiveInterfaceA.onReceive(myGenerated);
        }
        SoulDialog soulDialog = this.aiBackgroundSoulDialog;
        if ((soulDialog != null && soulDialog.isVisible()) || myGenerated.getState() != 2) {
            return;
        }
        SoulDialog.Companion companion = SoulDialog.INSTANCE;
        SoulDialog.AttributeConfig attributeConfig = new SoulDialog.AttributeConfig();
        attributeConfig.W(SoulDialogType.P12);
        attributeConfig.h0("您的专属氛围背景已生成");
        attributeConfig.M("我知道了");
        attributeConfig.S("立即查看");
        attributeConfig.R(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.RoomInfoBlock$handleAiBackgroundSuccess$1$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.w invoke() {
                invoke2();
                return kotlin.w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || AiBackgroundMessageHelper.f145091a.d()) {
                    return;
                }
                RoomInfoBlock.showRoomConfigDialog$default(this.this$0, 0, 3L, false, null, 12, null);
            }
        });
        attributeConfig.X(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.RoomInfoBlock$handleAiBackgroundSuccess$1$2
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.w invoke() {
                invoke2();
                return kotlin.w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                this.this$0.aiBackgroundSoulDialog = null;
            }
        });
        ChangeQuickRedirect changeQuickRedirect2 = kotlin.w.changeQuickRedirect;
        SoulDialog soulDialogA = companion.a(attributeConfig);
        this.aiBackgroundSoulDialog = soulDialogA;
        if (soulDialogA != null) {
            soulDialogA.n(SoulHouseExtensionKt.k(this));
        }
    }

    private final void handleAtmosphereBlindBox(final ClimateBlindBoxInfo climateBlindBoxInfo) {
        if (PatchProxy.proxy(new Object[]{climateBlindBoxInfo}, this, changeQuickRedirect, false, 9, new Class[]{ClimateBlindBoxInfo.class}, Void.TYPE).isSupported) {
            return;
        }
        ClimateHelper.f145181a.j(SoulHouseExtensionKt.k(this), climateBlindBoxInfo, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.RoomInfoBlock.handleAtmosphereBlindBox.1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.w invoke() {
                invoke2();
                return kotlin.w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                Integer bizIdentity = climateBlindBoxInfo.getBizIdentity();
                int iIntValue = bizIdentity != null ? bizIdentity.intValue() : 0;
                List<ClimateModel> climateModelList = climateBlindBoxInfo.getClimateModelList();
                if (climateModelList != null) {
                    ExperiencePreviewActivity.INSTANCE.a(this.getContext(), climateModelList, iIntValue, true);
                }
            }
        });
    }

    private final void handleAtmosphereExperienceEnd(ClimateModel climateModel) {
        if (PatchProxy.proxy(new Object[]{climateModel}, this, changeQuickRedirect, false, 7, new Class[]{ClimateModel.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulAnalyticsV2 soulAnalyticsV2 = SoulAnalyticsV2.getInstance();
        HashMap<String, Object> atmosphereEntranceParameter = getAtmosphereEntranceParameter();
        atmosphereEntranceParameter.put("commodity_id", climateModel.itemIdentity);
        ChangeQuickRedirect changeQuickRedirect2 = kotlin.w.changeQuickRedirect;
        soulAnalyticsV2.onEvent("exp", "atmosphere_popup_buy_exp", atmosphereEntranceParameter);
        ExperienceEndDialog experienceEndDialogA = ExperienceEndDialog.INSTANCE.a(climateModel);
        experienceEndDialogA.i(new d(climateModel));
        this.experienceEndDialog = experienceEndDialogA;
        experienceEndDialogA.show(SoulHouseExtensionKt.k(this));
    }

    private final void handleAtmosphereRestoreMusic() {
        RoomUser roomUserA;
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
        cn.soulapp.cpnt_voiceparty.function.b0 b0Var = cn.soulapp.cpnt_voiceparty.function.b0.f142548a;
        if (b0Var.A(soulHouseDriverJ0) || b0Var.w(soulHouseDriverJ0)) {
            cn.soul.insight.log.core.a.f15353b.dOnlyPrint("Atmosphere", "视频直播 / 投屏玩法下不恢复氛围音效");
            return;
        }
        RoomDataManager roomDataManagerL = SoulHouseExtensionKt.L(this);
        if (roomDataManagerL != null && (roomUserA = RoomDataManager.A(roomDataManagerL, false, 1, null)) != null && roomUserA.isOwner()) {
            z11 = true;
        }
        if (z11) {
            RoomMoodConfig roomMoodConfigV = SoulHouseExtensionKt.V(this.blockContainer);
            if (!roomMoodConfigV.showAtmosphere || TextUtils.isEmpty(roomMoodConfigV.musicUrl)) {
                return;
            }
            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
            if (soulHouseDriverJ1 != null) {
                String str = roomMoodConfigV.musicUrl;
                kotlin.jvm.internal.v.i(str, "it.musicUrl");
                soulHouseDriverJ1.H1(str);
            }
            this.isMusicRadioOrAtmospherePlay = true;
            SoulAnalyticsV2 soulAnalyticsV2 = SoulAnalyticsV2.getInstance();
            HashMap map = new HashMap();
            map.put("trigger_type", "init_audio_restore");
            ChangeQuickRedirect changeQuickRedirect2 = kotlin.w.changeQuickRedirect;
            soulAnalyticsV2.onEvent(Const.EventType.INDICATORS, "voice_party_atmosphere_optimize", map);
        }
    }

    private final void hideAtmosphere() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 14, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        ViewExtKt.j((ConstraintLayout) getRootView().findViewById(R$id.I6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideAtmosphereEntrance() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 32, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        CommonUtil commonUtil = CommonUtil.f161882a;
        if (!commonUtil.M0()) {
            ViewExtKt.j((ConstraintLayout) getRootView().findViewById(R$id.I6));
        } else if (commonUtil.A()) {
            ViewExtKt.j((ConstraintLayout) getRootView().findViewById(R$id.I6));
        }
    }

    private final void listenRoomOnlineUserClickEvent() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 13, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        RoomOnlineUserCountView roomOnlineUserCountView = (RoomOnlineUserCountView) getRootView().findViewById(R$id.lR);
        roomOnlineUserCountView.setOnClickListener(new f(roomOnlineUserCountView, 500L, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-0, reason: not valid java name */
    public static final void m6718onReceiveMessage$lambda0(RoomInfoBlock this$0, Object obj) {
        if (PatchProxy.proxy(new Object[]{this$0, obj}, null, changeQuickRedirect, true, 37, new Class[]{RoomInfoBlock.class, Object.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        Integer num = (Integer) obj;
        showRoomConfigDialog$default(this$0, num != null ? num.intValue() : 0, 2L, false, null, 12, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-1, reason: not valid java name */
    public static final void m6719onReceiveMessage$lambda1(Object obj, RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{obj, this$0}, null, changeQuickRedirect, true, 38, new Class[]{Object.class, RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        Map map = obj instanceof Map ? (Map) obj : null;
        Object obj2 = map != null ? map.get("tabIndex") : null;
        Integer num = obj2 instanceof Integer ? (Integer) obj2 : null;
        int iIntValue = num != null ? num.intValue() : 0;
        Object obj3 = map != null ? map.get("isUx") : null;
        Boolean bool = obj3 instanceof Boolean ? (Boolean) obj3 : null;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        Object obj4 = map != null ? map.get("subPageCallback") : null;
        this$0.showRoomConfigDialog(iIntValue, 2L, zBooleanValue, kotlin.jvm.internal.e0.m(obj4, 1) ? (Function1) obj4 : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-10, reason: not valid java name */
    public static final void m6720onReceiveMessage$lambda10(RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 45, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.dismissAtmosphereExperienceTip();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-11, reason: not valid java name */
    public static final void m6721onReceiveMessage$lambda11(Object obj, RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{obj, this$0}, null, changeQuickRedirect, true, 46, new Class[]{Object.class, RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this$0.blockContainer.getDataBus());
        CommonSlice commonSlice = soulHouseDriverJ0 != null ? (CommonSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.n()) : null;
        if (commonSlice != null) {
            commonSlice.k0(Boolean.valueOf(zBooleanValue));
        }
        View viewFindViewById = this$0.getRootView().findViewById(R$id.f128645p0);
        if (viewFindViewById != null) {
            cn.soulapp.cpnt_voiceparty.util.t1.k(viewFindViewById, zBooleanValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-12, reason: not valid java name */
    public static final void m6722onReceiveMessage$lambda12(RoomInfoBlock this$0) {
        CommonSlice commonSlice;
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 47, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this$0.blockContainer.getDataBus());
        String aiBackgroundEntranceName = (soulHouseDriverJ0 == null || (commonSlice = (CommonSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.n())) == null) ? null : commonSlice.getAiBackgroundEntranceName();
        TextView textView = (TextView) this$0.getRootView().findViewById(R$id.W10);
        if (textView == null) {
            return;
        }
        if (TextUtils.isEmpty(aiBackgroundEntranceName)) {
            aiBackgroundEntranceName = "氛围背景";
        }
        textView.setText(aiBackgroundEntranceName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-13, reason: not valid java name */
    public static final void m6723onReceiveMessage$lambda13(Object obj, RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{obj, this$0}, null, changeQuickRedirect, true, 48, new Class[]{Object.class, RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        int iIntValue = num != null ? num.intValue() : 4;
        ChatRoomConfigurationDialogFragment chatRoomConfigurationDialogFragment = this$0.configDialog;
        if (chatRoomConfigurationDialogFragment != null) {
            chatRoomConfigurationDialogFragment.D(iIntValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-15, reason: not valid java name */
    public static final void m6724onReceiveMessage$lambda15(RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 49, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        SoulHouseExtensionKt.V(this$0.blockContainer);
        this$0.toggleRadioAndAtmosphereViewNew(true);
        this$0.showAtmosphereEntrance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-16, reason: not valid java name */
    public static final void m6725onReceiveMessage$lambda16(RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 50, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        if (this$0.cannotShowDialog()) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.g gVar = cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a;
        if (this$0.getX(gVar.N()) == null) {
            this$0.provideX(gVar.N(), new a60.t(null, null, null, null, 0, null, 63, null));
        }
        this$0.checkMusicBar();
        cn.soul.sa.common.kit.subkit.i.f15817a.f("一起听歌");
        ChatRoomMusicSearchDialog.INSTANCE.a(this$0.blockContainer.getDataBus()).show(SoulHouseExtensionKt.k(this$0), ChatRoomMusicSearchDialog.class.getSimpleName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-17, reason: not valid java name */
    public static final void m6726onReceiveMessage$lambda17(RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 51, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        if (this$0.cannotShowDialog()) {
            return;
        }
        ChatRoomMusicAddedDialog.INSTANCE.a(this$0.blockContainer.getDataBus()).show(SoulHouseExtensionKt.k(this$0), ChatRoomMusicAddedDialog.class.getSimpleName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-18, reason: not valid java name */
    public static final void m6727onReceiveMessage$lambda18(Object obj, RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{obj, this$0}, null, changeQuickRedirect, true, 52, new Class[]{Object.class, RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        boolean zBooleanValue = obj != null ? ((Boolean) obj).booleanValue() : true;
        if (this$0.isMusicRadioOrAtmospherePlay) {
            this$0.stopAtomOrMusicRadio(zBooleanValue);
        } else if (zBooleanValue) {
            cn.soul.insight.log.core.a.f15353b.dOnlyPrint("Atmosphere", "showAtmosphereEntrance ,隐藏氛围入口1");
            this$0.hideAtmosphereEntrance();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-19, reason: not valid java name */
    public static final void m6728onReceiveMessage$lambda19(RoomInfoBlock this$0, Object obj) {
        if (PatchProxy.proxy(new Object[]{this$0, obj}, null, changeQuickRedirect, true, 53, new Class[]{RoomInfoBlock.class, Object.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>");
        }
        this$0.startFloatingGroupChatNoticeViewAnim((Map) obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-2, reason: not valid java name */
    public static final void m6729onReceiveMessage$lambda2(RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 39, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        showRoomConfigDialog$default(this$0, 0, cn.soulapp.cpnt_voiceparty.util.e.f162158a.V() ? 6L : 4L, false, null, 12, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-20, reason: not valid java name */
    public static final void m6730onReceiveMessage$lambda20(RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 54, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        FloatingGroupChatNoticeView floatingGroupChatNoticeView = (FloatingGroupChatNoticeView) this$0.getRootView().findViewById(R$id.f128192ie);
        if (floatingGroupChatNoticeView != null) {
            floatingGroupChatNoticeView.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-21, reason: not valid java name */
    public static final void m6731onReceiveMessage$lambda21(RoomInfoBlock this$0, Object obj) {
        if (PatchProxy.proxy(new Object[]{this$0, obj}, null, changeQuickRedirect, true, 55, new Class[]{RoomInfoBlock.class, Object.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        DataBus dataBus = this$0.blockContainer.getDataBus();
        Context context = this$0.getContext();
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.String>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, kotlin.String> }");
        }
        new FollowGuideDialog(dataBus, context, (HashMap) obj).e0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-24, reason: not valid java name */
    public static final void m6732onReceiveMessage$lambda24(Object obj, RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{obj, this$0}, null, changeQuickRedirect, true, 56, new Class[]{Object.class, RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        List<OperationModel> list = kotlin.jvm.internal.e0.n(obj) ? (List) obj : null;
        if (list != null) {
            this$0.mBannerData = list;
            this$0.showBigBanner((List) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-25, reason: not valid java name */
    public static final void m6733onReceiveMessage$lambda25(RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 57, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        if (cn.soulapp.cpnt_voiceparty.soulhouse.battery.a.INSTANCE.b(this$0.getDataBus())) {
            SoulHouseDetailBannerView bannerView = this$0.getBannerView();
            if (bannerView != null) {
                bannerView.t();
                return;
            }
            return;
        }
        SoulHouseDetailBannerView bannerView2 = this$0.getBannerView();
        if (bannerView2 != null) {
            bannerView2.s();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-26, reason: not valid java name */
    public static final void m6734onReceiveMessage$lambda26(SendAtmosphereBgInfo sendAtmosphereBgInfo, RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{sendAtmosphereBgInfo, this$0}, null, changeQuickRedirect, true, 58, new Class[]{SendAtmosphereBgInfo.class, RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        ReceiveAtmosphereBgDialog.INSTANCE.a(sendAtmosphereBgInfo).show(SoulHouseExtensionKt.k(this$0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-27, reason: not valid java name */
    public static final void m6735onReceiveMessage$lambda27(RoomInfoBlock this$0, MyGenerated myGenerated) {
        if (PatchProxy.proxy(new Object[]{this$0, myGenerated}, null, changeQuickRedirect, true, 59, new Class[]{RoomInfoBlock.class, MyGenerated.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(myGenerated, "$myGenerated");
        this$0.handleAiBackgroundSuccess(myGenerated);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-28, reason: not valid java name */
    public static final void m6736onReceiveMessage$lambda28(RoomInfoBlock this$0, ClimateBlindBoxInfo boxInfo) {
        if (PatchProxy.proxy(new Object[]{this$0, boxInfo}, null, changeQuickRedirect, true, 60, new Class[]{RoomInfoBlock.class, ClimateBlindBoxInfo.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(boxInfo, "$boxInfo");
        this$0.handleAtmosphereBlindBox(boxInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-29, reason: not valid java name */
    public static final void m6737onReceiveMessage$lambda29(RoomInfoBlock this$0, ClimateModel climateModel) {
        if (PatchProxy.proxy(new Object[]{this$0, climateModel}, null, changeQuickRedirect, true, 61, new Class[]{RoomInfoBlock.class, ClimateModel.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(climateModel, "$climateModel");
        this$0.handleAtmosphereExperienceEnd(climateModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-30, reason: not valid java name */
    public static final void m6738onReceiveMessage$lambda30(ClimateModel climateModel, RoomInfoBlock this$0) {
        ChatRoomConfigurationDialogFragment chatRoomConfigurationDialogFragment;
        SoulHouseDriver soulHouseDriverJ0;
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[]{climateModel, this$0}, null, changeQuickRedirect, true, 62, new Class[]{ClimateModel.class, RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(climateModel, "$climateModel");
        kotlin.jvm.internal.v.j(this$0, "this$0");
        if (!TextUtils.isEmpty(climateModel.musicUrl)) {
            String str = climateModel.musicUrl;
            RoomMoodConfig roomMoodConfig = (RoomMoodConfig) this$0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.n0());
            if (!kotlin.jvm.internal.v.e(str, roomMoodConfig != null ? roomMoodConfig.musicUrl : null) && (soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this$0.blockContainer.getDataBus())) != null) {
                String str2 = climateModel.musicUrl;
                kotlin.jvm.internal.v.i(str2, "climateModel.musicUrl");
                soulHouseDriverJ0.H1(str2);
            }
        }
        RoomMoodConfig roomMoodConfig2 = (RoomMoodConfig) this$0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.n0());
        if (roomMoodConfig2 != null) {
            roomMoodConfig2.setClimateConfig(climateModel);
        }
        this$0.toggleRadioAndAtmosphereViewNew(false);
        this$0.isMusicRadioOrAtmospherePlay = true;
        ChatRoomConfigurationDialogFragment chatRoomConfigurationDialogFragment2 = this$0.configDialog;
        if (chatRoomConfigurationDialogFragment2 != null && chatRoomConfigurationDialogFragment2.isVisible()) {
            z11 = true;
        }
        if (!z11 || (chatRoomConfigurationDialogFragment = this$0.configDialog) == null) {
            return;
        }
        chatRoomConfigurationDialogFragment.G(climateModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-31, reason: not valid java name */
    public static final void m6739onReceiveMessage$lambda31(RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 63, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.handleAtmosphereRestoreMusic();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-33, reason: not valid java name */
    public static final void m6740onReceiveMessage$lambda33(Object obj, RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{obj, this$0}, null, changeQuickRedirect, true, 64, new Class[]{Object.class, RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        if (num != null) {
            int iIntValue = num.intValue();
            RoomOnlineUserCountView roomOnlineUserCountView = (RoomOnlineUserCountView) this$0.getRootView().findViewById(R$id.lR);
            if (roomOnlineUserCountView != null) {
                roomOnlineUserCountView.setUserCount(Integer.valueOf(iIntValue));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-34, reason: not valid java name */
    public static final void m6741onReceiveMessage$lambda34(int i11, RoomInfoBlock this$0) {
        RoomOnlineUserCountView roomOnlineUserCountView;
        if (PatchProxy.proxy(new Object[]{new Integer(i11), this$0}, null, changeQuickRedirect, true, 65, new Class[]{Integer.TYPE, RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        if (i11 <= 0 || (roomOnlineUserCountView = (RoomOnlineUserCountView) this$0.getRootView().findViewById(R$id.lR)) == null) {
            return;
        }
        roomOnlineUserCountView.d("当前有" + i11 + "人正在听派对", 8000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-4, reason: not valid java name */
    public static final void m6742onReceiveMessage$lambda4(RoomInfoBlock this$0, Object obj) {
        if (PatchProxy.proxy(new Object[]{this$0, obj}, null, changeQuickRedirect, true, 40, new Class[]{RoomInfoBlock.class, Object.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.playAtomMusic(obj instanceof ClimateModel ? (ClimateModel) obj : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-6, reason: not valid java name */
    public static final void m6743onReceiveMessage$lambda6(RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 41, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        SoulHouseExtensionKt.V(this$0.blockContainer);
        this$0.toggleRadioAndAtmosphereViewNew(false);
        this$0.showAtmosphereEntrance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-7, reason: not valid java name */
    public static final void m6744onReceiveMessage$lambda7(Integer num, RoomInfoBlock this$0, FunctionBean functionBean) {
        if (PatchProxy.proxy(new Object[]{num, this$0, functionBean}, null, changeQuickRedirect, true, 42, new Class[]{Integer.class, RoomInfoBlock.class, FunctionBean.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        int id2 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154982g.getId();
        if (num != null && num.intValue() == id2) {
            this$0.toggleRadioAndAtmosphereViewNew(false);
            this$0.showAtmosphereEntrance();
            return;
        }
        ModeConflictConfiguration modeConflictConfiguration = ModeConflictConfiguration.f154904a;
        if (num == null) {
            num = functionBean != null ? functionBean.getBizType() : null;
        }
        if (!modeConflictConfiguration.a(num, functionBean != null ? functionBean.getTechType() : null)) {
            this$0.toggleRadioAndAtmosphereViewNew(false);
            this$0.showAtmosphereEntrance();
        } else if (this$0.isMusicRadioOrAtmospherePlay) {
            stopAtomOrMusicRadio$default(this$0, false, 1, null);
        } else {
            cn.soul.insight.log.core.a.f15353b.dOnlyPrint("Atmosphere", "showAtmosphereEntrance ,隐藏氛围入口4");
            this$0.hideAtmosphereEntrance();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-8, reason: not valid java name */
    public static final void m6745onReceiveMessage$lambda8(RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 43, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.showAtmosphereEntrance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-9, reason: not valid java name */
    public static final void m6746onReceiveMessage$lambda9(Object obj, RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{obj, this$0}, null, changeQuickRedirect, true, 44, new Class[]{Object.class, RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        this$0.showAtmosphereExperienceTip(num != null ? num.intValue() : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void payConfirm(final ClimateModel climateModel) {
        if (PatchProxy.proxy(new Object[]{climateModel}, this, changeQuickRedirect, false, 8, new Class[]{ClimateModel.class}, Void.TYPE).isSupported) {
            return;
        }
        ClimateHelper.f145181a.g(SoulHouseExtensionKt.k(this), climateModel, new Function1<Boolean, kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.RoomInfoBlock.payConfirm.1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.w invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return kotlin.w.f231958a;
            }

            public final void invoke(boolean z11) {
                ExperienceEndDialog experienceEndDialog;
                if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
                    return;
                }
                SoulAnalyticsV2 soulAnalyticsV2 = SoulAnalyticsV2.getInstance();
                HashMap atmosphereEntranceParameter = RoomInfoBlock.this.getAtmosphereEntranceParameter();
                atmosphereEntranceParameter.put("commodity_id", climateModel.itemIdentity);
                atmosphereEntranceParameter.put("buy_result", Integer.valueOf(z11 ? 1 : 0));
                ChangeQuickRedirect changeQuickRedirect2 = kotlin.w.changeQuickRedirect;
                soulAnalyticsV2.onEvent(Const.EventType.CLICK, "atmosphere_popup_buy_clk", atmosphereEntranceParameter);
                if (!z11 || (experienceEndDialog = RoomInfoBlock.this.experienceEndDialog) == null) {
                    return;
                }
                experienceEndDialog.dismiss();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void playAtomMusic(ClimateModel climateModel) {
        if (PatchProxy.proxy(new Object[]{climateModel}, this, changeQuickRedirect, false, 19, new Class[]{ClimateModel.class}, Void.TYPE).isSupported || climateModel == null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("roomId", SoulHouseExtensionKt.N(this.blockContainer));
        linkedHashMap.put("contentType", 1);
        linkedHashMap.put("contentId", Long.valueOf(climateModel.f24090id));
        linkedHashMap.put(bd.f217393j, Boolean.valueOf(climateModel.ugc));
        linkedHashMap.put("optScene", 1);
        updateRoomConfigNew(linkedHashMap, false, new C23781(climateModel));
        this.isMusicRadioOrAtmospherePlay = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void playNextMusic() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 22, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        RoomMoodConfig roomMoodConfigV = SoulHouseExtensionKt.V(this.blockContainer);
        MusicStationBean musicStationBean = roomMoodConfigV.musicStationBean;
        List<MusicModel> arrayList = musicStationBean != null ? musicStationBean.musicList : null;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        if (!arrayList.isEmpty() && roomMoodConfigV.musicPos != arrayList.size() - 1) {
            roomMoodConfigV.getNextUrl();
            replayBgMusic();
            return;
        }
        MusicStationModel musicStationModel = roomMoodConfigV.musicStationModel;
        long j11 = musicStationModel != null ? musicStationModel.f24090id : 0L;
        String str = roomMoodConfigV.musicCursor;
        kotlin.jvm.internal.v.i(str, "it.musicCursor");
        getMusic(j11, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void replayBgMusic() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 23, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        RoomMoodConfig roomMoodConfigV = SoulHouseExtensionKt.V(this.blockContainer);
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
        if (soulHouseDriverJ0 != null) {
            String str = roomMoodConfigV.musicUrl;
            kotlin.jvm.internal.v.i(str, "it.musicUrl");
            soulHouseDriverJ0.H1(str);
        }
        runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.s5
            @Override // java.lang.Runnable
            public final void run() {
                RoomInfoBlock.m6747replayBgMusic$lambda53$lambda52(this.f147773a);
            }
        });
        HashMap map = new HashMap();
        map.put("radioId", String.valueOf(roomMoodConfigV.radioId));
        String str2 = roomMoodConfigV.radioName;
        kotlin.jvm.internal.v.i(str2, "it.radioName");
        map.put("radioName", str2);
        map.put("musicId", String.valueOf(roomMoodConfigV.musicId));
        String str3 = roomMoodConfigV.musicName;
        kotlin.jvm.internal.v.i(str3, "it.musicName");
        map.put("musicName", str3);
        cn.soulapp.cpnt_voiceparty.util.i0.l(cn.soulapp.cpnt_voiceparty.util.i0.f162191a, SoulHouseExtensionKt.j0(this.blockContainer.getDataBus()), 30, map, null, false, 0, false, 96, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: replayBgMusic$lambda-53$lambda-52, reason: not valid java name */
    public static final void m6747replayBgMusic$lambda53$lambda52(RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 67, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.showAtmosphereEntrance();
    }

    private final void showAtmosphereEntrance() {
        CommonSlice commonSlice;
        CommonSlice commonSlice2;
        boolean zE = false;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 31, new Class[0], Void.TYPE).isSupported || cn.soulapp.cpnt_voiceparty.util.e.f162158a.E()) {
            return;
        }
        ViewGroup rootView = getRootView();
        int i11 = R$id.I6;
        ConstraintLayout constraintLayout = (ConstraintLayout) rootView.findViewById(i11);
        if (!(constraintLayout != null && constraintLayout.getVisibility() == 0)) {
            mr0.h.k(1000L, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.RoomInfoBlock.showAtmosphereEntrance.1
                public static ChangeQuickRedirect changeQuickRedirect;

                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.w invoke() {
                    invoke2();
                    return kotlin.w.f231958a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    int i12 = 0;
                    if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                        return;
                    }
                    ViewGroup rootView2 = RoomInfoBlock.this.getRootView();
                    int i13 = R$id.f128645p0;
                    if (rootView2.findViewById(i13) != null) {
                        RoomInfoBlock roomInfoBlock = RoomInfoBlock.this;
                        SoulAnalyticsV2 soulAnalyticsV2 = SoulAnalyticsV2.getInstance();
                        HashMap atmosphereEntranceParameter = roomInfoBlock.getAtmosphereEntranceParameter();
                        View viewFindViewById = roomInfoBlock.getRootView().findViewById(i13);
                        if (viewFindViewById != null && viewFindViewById.getVisibility() == 0) {
                            i12 = 1;
                        }
                        atmosphereEntranceParameter.put("dot_status", Integer.valueOf(i12));
                        ChangeQuickRedirect changeQuickRedirect2 = kotlin.w.changeQuickRedirect;
                        soulAnalyticsV2.onEvent("exp", "atmosphere_exp", atmosphereEntranceParameter);
                    }
                }
            });
        }
        ViewExtKt.l((ConstraintLayout) getRootView().findViewById(i11));
        View viewFindViewById = getRootView().findViewById(R$id.W);
        PartyMateImageView partyMateImageView = (PartyMateImageView) getRootView().findViewById(R$id.Fv0);
        if (cn.soulapp.android.chatroom.utils.CommonUtil.c()) {
            ViewExtKt.j(viewFindViewById);
            ViewExtKt.l(partyMateImageView);
            if (partyMateImageView != null) {
                cn.soulapp.android.chatroom.dynamic.b.d(partyMateImageView).l(Integer.valueOf(R$drawable.Sf)).into(partyMateImageView);
            }
        } else {
            ViewExtKt.l(viewFindViewById);
            ViewExtKt.j(partyMateImageView);
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
        if (soulHouseDriverJ0 != null && (commonSlice2 = (CommonSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.n())) != null) {
            zE = kotlin.jvm.internal.v.e(commonSlice2.getAiBackgroundShowRed(), Boolean.TRUE);
        }
        cn.soul.insight.log.core.a.f15353b.dOnlyPrint("Atmosphere", "showAtmosphereEntrance ,展示氛围入口  :" + zE);
        View viewFindViewById2 = getRootView().findViewById(R$id.f128645p0);
        if (viewFindViewById2 != null) {
            cn.soulapp.cpnt_voiceparty.util.t1.k(viewFindViewById2, zE);
        }
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
        String aiBackgroundEntranceName = (soulHouseDriverJ1 == null || (commonSlice = (CommonSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ1, SliceManager.INSTANCE.n())) == null) ? null : commonSlice.getAiBackgroundEntranceName();
        TextView textView = (TextView) getRootView().findViewById(R$id.W10);
        if (textView == null) {
            return;
        }
        if (TextUtils.isEmpty(aiBackgroundEntranceName)) {
            aiBackgroundEntranceName = "氛围背景";
        }
        textView.setText(aiBackgroundEntranceName);
    }

    private final void showAtmosphereExperienceTip(int i11) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 4, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        String str = "show_atmosphere_experience_tip_" + cn.soulapp.android.client.component.middle.platform.utils.user.a.w();
        boolean z11 = SKV.single().getBoolean(str, true);
        if (i11 != 1 || !z11) {
            cn.soulapp.lib.widget.toast.e.u("氛围背景使用成功");
            return;
        }
        SKV.single().putBoolean(str, false);
        DispatchConstraintLayout dispatchConstraintLayout = (DispatchConstraintLayout) getRootView().findViewById(R$id.YI);
        if (dispatchConstraintLayout != null) {
            dismissAtmosphereExperienceTip();
            View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.f129511e0, (ViewGroup) null);
            ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-2, -2);
            ViewGroup rootView = getRootView();
            int i12 = R$id.C00;
            layoutParams.topToBottom = ((ConstraintLayout) rootView.findViewById(i12)).getId();
            layoutParams.endToEnd = ((ConstraintLayout) getRootView().findViewById(i12)).getId();
            MateScreenUtil mateScreenUtil = MateScreenUtil.f10630a;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = mateScreenUtil.a(1.0f);
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = mateScreenUtil.a(12.0f);
            dispatchConstraintLayout.addView(viewInflate, layoutParams);
            viewInflate.setOnClickListener(new g(viewInflate, 500L, this));
            this.mExperienceTipView = viewInflate;
            SoulAnalyticsV2.getInstance().onEvent("exp", "atmosphere_bubble_exp", getAtmosphereEntranceParameter());
            this.blockContainer.c().postDelayed(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.r5
                @Override // java.lang.Runnable
                public final void run() {
                    RoomInfoBlock.m6748showAtmosphereExperienceTip$lambda37$lambda36(this.f147761a);
                }
            }, 7000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showAtmosphereExperienceTip$lambda-37$lambda-36, reason: not valid java name */
    public static final void m6748showAtmosphereExperienceTip$lambda37$lambda36(RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 66, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.dismissAtmosphereExperienceTip();
    }

    private final void showBigBanner(List<OperationModel> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 17, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDetailBannerView bannerView = getBannerView();
        if (bannerView != null && ViewExtKt.i(bannerView)) {
            return;
        }
        SoulHouseDetailBannerView bannerView2 = getBannerView();
        if (bannerView2 != null) {
            ViewExtKt.l(bannerView2);
        }
        SoulHouseDetailBannerView bannerView3 = getBannerView();
        if (bannerView3 != null) {
            bannerView3.h(list);
        }
    }

    private final void showMusicBar() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 28, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.t4
            @Override // java.lang.Runnable
            public final void run() {
                RoomInfoBlock.m6749showMusicBar$lambda59(this.f147789a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showMusicBar$lambda-59, reason: not valid java name */
    public static final void m6749showMusicBar$lambda59(RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 69, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.checkMusicBar();
        ChatRoomMusicFloatingBar chatRoomMusicFloatingBar = (ChatRoomMusicFloatingBar) this$0.getRootView().findViewById(R$id.f129140w6);
        if (chatRoomMusicFloatingBar != null) {
            a60.t tVar = (a60.t) this$0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.N());
            chatRoomMusicFloatingBar.A(tVar != null ? tVar.getF1799c() : null);
        }
    }

    private final void showOnlineUserView() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 15, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        ViewExtKt.l((RoomOnlineUserCountView) getRootView().findViewById(R$id.lR));
    }

    private final void showRoomConfigDialog(int i11, long j11, boolean z11, Function1<? super DialogFragment, kotlin.w> function1) {
        ChatRoomConfigurationDialogFragment chatRoomConfigurationDialogFragment;
        RoomUser roomUserA;
        CommonSlice commonSlice;
        boolean z12 = false;
        if (PatchProxy.proxy(new Object[]{new Integer(i11), new Long(j11), new Byte(z11 ? (byte) 1 : (byte) 0), function1}, this, changeQuickRedirect, false, 18, new Class[]{Integer.TYPE, Long.TYPE, Boolean.TYPE, Function1.class}, Void.TYPE).isSupported || cannotShowDialog()) {
            return;
        }
        if (!SoulHouseExtensionKt.y(this.blockContainer).getIsOwner()) {
            SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
            if (!((soulHouseDriverJ0 == null || (commonSlice = (CommonSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.n())) == null) ? false : kotlin.jvm.internal.v.e(commonSlice.getAiBackgroundSwitch(), Boolean.TRUE))) {
                return;
            }
        }
        RoomDataManager roomDataManagerL = SoulHouseExtensionKt.L(this);
        boolean z13 = (roomDataManagerL == null || (roomUserA = RoomDataManager.A(roomDataManagerL, false, 1, null)) == null || !roomUserA.isOwner()) ? false : true;
        ChatRoomConfigurationDialogFragment chatRoomConfigurationDialogFragment2 = this.configDialog;
        if (chatRoomConfigurationDialogFragment2 != null && chatRoomConfigurationDialogFragment2.isVisible()) {
            z12 = true;
        }
        if (z12) {
            ChatRoomConfigurationDialogFragment chatRoomConfigurationDialogFragment3 = this.configDialog;
            if (chatRoomConfigurationDialogFragment3 != null) {
                chatRoomConfigurationDialogFragment3.dismiss();
            }
            this.configDialog = null;
        }
        ChatRoomConfigurationDialogFragment chatRoomConfigurationDialogFragmentY = ChatRoomConfigurationDialogFragment.y(this.blockContainer.getDataBus(), SoulHouseExtensionKt.V(this.blockContainer).musicName, SoulHouseExtensionKt.V(this.blockContainer).coverImageUrl, i11, SoulHouseExtensionKt.V(this.blockContainer).volume, RoomChatEngineManager.getInstance().isPlaying(), SoulHouseExtensionKt.V(this.blockContainer).isClickMusic, z13, Long.valueOf(j11), z11);
        this.configDialog = chatRoomConfigurationDialogFragmentY;
        if (chatRoomConfigurationDialogFragmentY != null) {
            chatRoomConfigurationDialogFragmentY.C(SoulHouseExtensionKt.V(this.blockContainer).musicStationModel);
        }
        ChatRoomConfigurationDialogFragment chatRoomConfigurationDialogFragment4 = this.configDialog;
        if (chatRoomConfigurationDialogFragment4 != null) {
            chatRoomConfigurationDialogFragment4.A(SoulHouseExtensionKt.V(this.blockContainer).climateModel);
        }
        ChatRoomConfigurationDialogFragment chatRoomConfigurationDialogFragment5 = this.configDialog;
        if (chatRoomConfigurationDialogFragment5 != null) {
            chatRoomConfigurationDialogFragment5.z(SoulHouseExtensionKt.V(this.blockContainer).backgroundModel);
        }
        ChatRoomConfigurationDialogFragment chatRoomConfigurationDialogFragment6 = this.configDialog;
        if (chatRoomConfigurationDialogFragment6 != null) {
            chatRoomConfigurationDialogFragment6.B(new OnRoomConfigurationChangedListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.RoomInfoBlock.showRoomConfigDialog.1
                public static ChangeQuickRedirect changeQuickRedirect;

                @Override // cn.soulapp.cpnt_voiceparty.callback.OnRoomConfigurationChangedListener
                public void onAtomMusicSelected(@Nullable ClimateModel climateModel) {
                    if (PatchProxy.proxy(new Object[]{climateModel}, this, changeQuickRedirect, false, 3, new Class[]{ClimateModel.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    RoomInfoBlock.this.playAtomMusic(climateModel);
                }

                @Override // cn.soulapp.cpnt_voiceparty.callback.OnRoomConfigurationChangedListener
                public void onDialogDismiss() {
                    if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 9, new Class[0], Void.TYPE).isSupported) {
                        return;
                    }
                    CreateGiftConfig createGiftConfig = SoulHouseExtensionKt.y(RoomInfoBlock.this.blockContainer).getCreateGiftConfig();
                    if (createGiftConfig != null) {
                        RoomInfoBlock roomInfoBlock = RoomInfoBlock.this;
                        if (createGiftConfig.getCreateRoomCountLimit() == 1) {
                            roomInfoBlock.sendMessage(BlockMessage.MSG_GET_ROOM_SCENE_GIFT, Integer.valueOf(AuthCode.StatusCode.CERT_FINGERPRINT_ERROR));
                            createGiftConfig.setCreateRoomCountLimit(createGiftConfig.getCreateRoomCountLimit() + 1);
                        }
                    } else {
                        MyInfoInRoom myInfoInRoom = (MyInfoInRoom) RoomInfoBlock.this.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.R());
                        if (myInfoInRoom != null) {
                            myInfoInRoom.setRoomConfigDialogDismissed(true);
                        }
                    }
                    RoomInfoBlock.this.configDialog = null;
                }

                @Override // cn.soulapp.cpnt_voiceparty.callback.OnRoomConfigurationChangedListener
                public void onMusicListSelected(@Nullable MusicStationModel musicStationModel, @Nullable MusicStationBean musicStationBean) {
                    if (PatchProxy.proxy(new Object[]{musicStationModel, musicStationBean}, this, changeQuickRedirect, false, 2, new Class[]{MusicStationModel.class, MusicStationBean.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    RoomMoodConfig roomMoodConfigV = SoulHouseExtensionKt.V(RoomInfoBlock.this.blockContainer);
                    RoomInfoBlock roomInfoBlock = RoomInfoBlock.this;
                    roomMoodConfigV.atmosphereImageUrl = musicStationModel != null ? musicStationModel.coverImageUrl : null;
                    UpdateRoomConfigInfo updateRoomConfigInfo = new UpdateRoomConfigInfo();
                    updateRoomConfigInfo.setId(SoulHouseExtensionKt.N(roomInfoBlock.blockContainer));
                    updateRoomConfigInfo.setClimate(Long.valueOf(roomMoodConfigV.climateId));
                    updateRoomConfigInfo.setMusicStation(Long.valueOf(musicStationModel != null ? musicStationModel.f24090id : 0L));
                    updateRoomConfigInfo.setBackground(Long.valueOf(roomMoodConfigV.bgId));
                    updateRoomConfigInfo.setMediaId("");
                    roomInfoBlock.updateRoomRadioConfig(updateRoomConfigInfo, musicStationModel, musicStationBean);
                    roomInfoBlock.isMusicRadioOrAtmospherePlay = true;
                }

                @Override // cn.soulapp.cpnt_voiceparty.callback.OnRoomConfigurationChangedListener
                public void onMusicStateChanged(boolean z14) {
                    SoulHouseDriver soulHouseDriverJ1;
                    if (PatchProxy.proxy(new Object[]{new Byte(z14 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 8, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
                        return;
                    }
                    if (!z14) {
                        RoomChatEngineManager.getInstance().pauseMusic();
                        return;
                    }
                    if (!CommonUtil.f161882a.M0()) {
                        RoomChatEngineManager.getInstance().resumeMusic();
                        return;
                    }
                    SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(RoomInfoBlock.this.blockContainer.getDataBus());
                    if (soulHouseDriverJ2 != null && soulHouseDriverJ2.getIsAtmosphereMusicPlaying()) {
                        RoomChatEngineManager.getInstance().resumeMusic();
                        return;
                    }
                    RoomMoodConfig roomMoodConfigV = SoulHouseExtensionKt.V(RoomInfoBlock.this.blockContainer);
                    RoomInfoBlock roomInfoBlock = RoomInfoBlock.this;
                    if (TextUtils.isEmpty(roomMoodConfigV.musicUrl) || (soulHouseDriverJ1 = SoulHouseExtensionKt.j0(roomInfoBlock.blockContainer.getDataBus())) == null) {
                        return;
                    }
                    String str = roomMoodConfigV.musicUrl;
                    kotlin.jvm.internal.v.i(str, "it.musicUrl");
                    soulHouseDriverJ1.H1(str);
                }

                @Override // cn.soulapp.cpnt_voiceparty.callback.OnRoomConfigurationChangedListener
                public void onMusicStop() {
                    if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Void.TYPE).isSupported) {
                        return;
                    }
                    RoomInfoBlock.this.stopAtomOrMusicRadio(false);
                    RoomInfoBlock.this.isMusicRadioOrAtmospherePlay = false;
                }

                @Override // cn.soulapp.cpnt_voiceparty.callback.OnRoomConfigurationChangedListener
                public void onMusicVolumeChanged(int i12) {
                    if (PatchProxy.proxy(new Object[]{new Integer(i12)}, this, changeQuickRedirect, false, 6, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
                        return;
                    }
                    RoomMoodConfig roomMoodConfig = (RoomMoodConfig) RoomInfoBlock.this.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.n0());
                    if (roomMoodConfig != null) {
                        roomMoodConfig.volume = i12;
                    }
                    RoomChatEngineManager.getInstance().setVolume(i12);
                }

                @Override // cn.soulapp.cpnt_voiceparty.callback.OnRoomConfigurationChangedListener
                public void onNextMusic() {
                    if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], Void.TYPE).isSupported) {
                        return;
                    }
                    RoomInfoBlock.this.playNextMusic();
                    RoomInfoBlock.this.isMusicRadioOrAtmospherePlay = true;
                }

                @Override // cn.soulapp.cpnt_voiceparty.callback.OnRoomConfigurationChangedListener
                public void onRoomBackgroundSelect(@Nullable final BackgroundDataModel backgroundDataModel) {
                    if (PatchProxy.proxy(new Object[]{backgroundDataModel}, this, changeQuickRedirect, false, 5, new Class[]{BackgroundDataModel.class}, Void.TYPE).isSupported || backgroundDataModel == null) {
                        return;
                    }
                    SoulHouseExtensionKt.V(RoomInfoBlock.this.blockContainer);
                    final RoomInfoBlock roomInfoBlock = RoomInfoBlock.this;
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("roomId", SoulHouseExtensionKt.N(roomInfoBlock.blockContainer));
                    linkedHashMap.put("contentType", 3);
                    linkedHashMap.put("contentId", backgroundDataModel.getId());
                    linkedHashMap.put("optScene", 1);
                    roomInfoBlock.updateRoomConfigNew(linkedHashMap, false, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.RoomInfoBlock$showRoomConfigDialog$1$onRoomBackgroundSelect$1$1
                        public static ChangeQuickRedirect changeQuickRedirect;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ kotlin.w invoke() {
                            invoke2();
                            return kotlin.w.f231958a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            RoomMoodConfig roomMoodConfig;
                            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (roomMoodConfig = (RoomMoodConfig) roomInfoBlock.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.n0())) == null) {
                                return;
                            }
                            BackgroundDataModel backgroundDataModel2 = backgroundDataModel;
                            RoomInfoBlock roomInfoBlock2 = roomInfoBlock;
                            roomMoodConfig.setBgConfig(RoomMoodConfig.convertTo(backgroundDataModel2));
                            roomMoodConfig.setClimateConfig(new ClimateModel());
                            roomInfoBlock2.sendMessage(BlockMessage.MSG_UPDATE_ROOM_BG, backgroundDataModel2.getBackgroundUrl());
                            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(roomInfoBlock2.blockContainer.getDataBus());
                            if (soulHouseDriverJ1 != null) {
                                soulHouseDriverJ1.S2();
                            }
                        }
                    });
                }
            });
        }
        if (function1 != null && (chatRoomConfigurationDialogFragment = this.configDialog) != null) {
            kotlin.jvm.internal.v.g(chatRoomConfigurationDialogFragment);
            function1.invoke(chatRoomConfigurationDialogFragment);
        } else {
            ChatRoomConfigurationDialogFragment chatRoomConfigurationDialogFragment7 = this.configDialog;
            if (chatRoomConfigurationDialogFragment7 != null) {
                chatRoomConfigurationDialogFragment7.show(SoulHouseExtensionKt.k(this), "");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void showRoomConfigDialog$default(RoomInfoBlock roomInfoBlock, int i11, long j11, boolean z11, Function1 function1, int i12, Object obj) {
        boolean z12 = (i12 & 4) != 0 ? false : z11;
        if ((i12 & 8) != 0) {
            function1 = null;
        }
        roomInfoBlock.showRoomConfigDialog(i11, j11, z12, function1);
    }

    private final void startFloatingGroupChatNoticeViewAnim(Map<String, String> map) {
        ViewStub viewStub;
        if (PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 16, new Class[]{Map.class}, Void.TYPE).isSupported) {
            return;
        }
        ViewGroup rootView = getRootView();
        int i11 = R$id.f128192ie;
        if (((FloatingGroupChatNoticeView) rootView.findViewById(i11)) == null && (viewStub = (ViewStub) getRootView().findViewById(R$id.f128259je)) != null) {
            viewStub.inflate();
        }
        FloatingGroupChatNoticeView floatingGroupChatNoticeView = (FloatingGroupChatNoticeView) getRootView().findViewById(i11);
        if (floatingGroupChatNoticeView != null) {
            floatingGroupChatNoticeView.setData(this.blockContainer.getDataBus(), map);
            floatingGroupChatNoticeView.j();
        }
    }

    private final void stopAndClearSong() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 26, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.e5
            @Override // java.lang.Runnable
            public final void run() {
                RoomInfoBlock.m6750stopAndClearSong$lambda57(this.f147600a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: stopAndClearSong$lambda-57, reason: not valid java name */
    public static final void m6750stopAndClearSong$lambda57(RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 68, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        cn.soulapp.cpnt_voiceparty.soulhouse.g gVar = cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a;
        a60.t tVar = (a60.t) this$0.getX(gVar.N());
        if (tVar != null) {
            if (tVar.getF1798b() != null) {
                RoomChatEngineManager.getInstance().stopMusic();
            }
            tVar.g(null);
            tVar.h(null);
            tVar.e().clear();
        }
        this$0.removeX(gVar.N());
        ChatRoomMusicFloatingBar chatRoomMusicFloatingBar = (ChatRoomMusicFloatingBar) this$0.getRootView().findViewById(R$id.f129140w6);
        if (chatRoomMusicFloatingBar != null) {
            chatRoomMusicFloatingBar.destroyViewAndData();
            ViewExtKt.j(chatRoomMusicFloatingBar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void stopAtomOrMusicRadio(final boolean z11) {
        if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 29, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        final BackgroundModel backgroundModel = new BackgroundModel();
        a60.m mVar = (a60.m) getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.l());
        backgroundModel.f24090id = mVar != null ? mVar.getF1785a() : 1L;
        backgroundModel.backgroundUrl = SoulHouseExtensionKt.V(this.blockContainer).bgUrl;
        long j11 = SoulHouseExtensionKt.V(this.blockContainer).climateId;
        long j12 = SoulHouseExtensionKt.V(this.blockContainer).radioId;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("roomId", SoulHouseExtensionKt.N(this.blockContainer));
        linkedHashMap.put("contentType", Integer.valueOf(j11 == 0 ? 2 : 1));
        if (j11 == 0) {
            j11 = j12;
        }
        linkedHashMap.put("contentId", Long.valueOf(j11));
        linkedHashMap.put("optScene", 2);
        updateRoomConfigNew(linkedHashMap, true, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.RoomInfoBlock.stopAtomOrMusicRadio.1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.w invoke() {
                invoke2();
                return kotlin.w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                String str = backgroundModel.specificModeUrl;
                this.sendMessage(BlockMessage.MSG_UPDATE_ROOM_BG, !(str == null || str.length() == 0) ? backgroundModel.specificModeUrl : backgroundModel.backgroundUrl);
                if (z11) {
                    cn.soul.insight.log.core.a.f15353b.dOnlyPrint("Atmosphere", "showAtmosphereEntrance ,隐藏氛围入口3");
                    this.hideAtmosphereEntrance();
                }
                RoomMoodConfig roomMoodConfig = (RoomMoodConfig) this.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.n0());
                if (roomMoodConfig != null) {
                    BackgroundModel backgroundModel2 = backgroundModel;
                    roomMoodConfig.climateModel = null;
                    roomMoodConfig.musicStationModel = null;
                    roomMoodConfig.setBgConfig(backgroundModel2);
                    roomMoodConfig.whichSelect = 0;
                    roomMoodConfig.radioId = 0L;
                    roomMoodConfig.radioName = "";
                    roomMoodConfig.musicCursor = "0";
                    roomMoodConfig.musicId = 0L;
                    roomMoodConfig.musicName = "";
                    roomMoodConfig.musicUrl = "";
                    roomMoodConfig.musicPos = 0;
                    roomMoodConfig.atmosphereImageUrl = "";
                }
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
                if (soulHouseDriverJ0 != null) {
                    soulHouseDriverJ0.S2();
                }
            }
        });
        this.isMusicRadioOrAtmospherePlay = false;
    }

    static /* synthetic */ void stopAtomOrMusicRadio$default(RoomInfoBlock roomInfoBlock, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z11 = true;
        }
        roomInfoBlock.stopAtomOrMusicRadio(z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void toggleRadioAndAtmosphereViewNew(boolean z11) {
        if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 25, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseExtensionKt.V(this.blockContainer).showAtmosphere = (z11 || CommonUtil.f161882a.f1(this.blockContainer.getDataBus())) ? false : true;
    }

    private final void updateRankEntryWidth() {
        ConstraintLayout constraintLayout;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 34, new Class[0], Void.TYPE).isSupported || (constraintLayout = (ConstraintLayout) getRootView().findViewById(R$id.Zh)) == null) {
            return;
        }
        constraintLayout.post(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.t5
            @Override // java.lang.Runnable
            public final void run() {
                RoomInfoBlock.m6751updateRankEntryWidth$lambda61(this.f147790a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: updateRankEntryWidth$lambda-61, reason: not valid java name */
    public static final void m6751updateRankEntryWidth$lambda61(RoomInfoBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 70, new Class[]{RoomInfoBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        MateScreenUtil mateScreenUtil = MateScreenUtil.f10630a;
        int iMin = Math.min((int) (((double) mateScreenUtil.s()) * 0.3d), (((mateScreenUtil.s() - ((int) TypedValue.applyDimension(1, 147, Resources.getSystem().getDisplayMetrics()))) - ((int) TypedValue.applyDimension(1, 70, Resources.getSystem().getDisplayMetrics()))) - (((int) TypedValue.applyDimension(1, 4, Resources.getSystem().getDisplayMetrics())) * 2)) - ((int) TypedValue.applyDimension(1, 12, Resources.getSystem().getDisplayMetrics())));
        ViewGroup rootView = this$0.getRootView();
        int i11 = R$id.Zh;
        ConstraintLayout constraintLayout = (ConstraintLayout) rootView.findViewById(i11);
        ViewGroup.LayoutParams layoutParams = constraintLayout != null ? constraintLayout.getLayoutParams() : null;
        if (layoutParams == null) {
            return;
        }
        layoutParams.width = Math.min(Math.max(((ConstraintLayout) this$0.getRootView().findViewById(i11)).getWidth(), (int) TypedValue.applyDimension(1, 96, Resources.getSystem().getDisplayMetrics())), iMin);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateRoomConfigNew(Map<String, ? extends Object> map, boolean z11, Function0<kotlin.w> function0) {
        if (PatchProxy.proxy(new Object[]{map, new Byte(z11 ? (byte) 1 : (byte) 0), function0}, this, changeQuickRedirect, false, 21, new Class[]{Map.class, Boolean.TYPE, Function0.class}, Void.TYPE).isSupported) {
            return;
        }
        h30.g.f225309a.ka(map).subscribe(new h(z11, function0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void updateRoomConfigNew$default(RoomInfoBlock roomInfoBlock, Map map, boolean z11, Function0 function0, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            function0 = null;
        }
        roomInfoBlock.updateRoomConfigNew(map, z11, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateRoomRadioConfig(UpdateRoomConfigInfo updateRoomConfigInfo, MusicStationModel musicStationModel, MusicStationBean musicStationBean) {
        Long musicStation;
        if (PatchProxy.proxy(new Object[]{updateRoomConfigInfo, musicStationModel, musicStationBean}, this, changeQuickRedirect, false, 20, new Class[]{UpdateRoomConfigInfo.class, MusicStationModel.class, MusicStationBean.class}, Void.TYPE).isSupported) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("roomId", SoulHouseExtensionKt.N(this.blockContainer));
        linkedHashMap.put("contentType", 2);
        linkedHashMap.put("contentId", Long.valueOf((updateRoomConfigInfo == null || (musicStation = updateRoomConfigInfo.getMusicStation()) == null) ? 0L : musicStation.longValue()));
        linkedHashMap.put("optScene", 1);
        updateRoomConfigNew(linkedHashMap, false, new C23821(musicStationModel, musicStationBean));
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.common.SoulHouseBlock
    public boolean canReceiveMessage(@NotNull BlockMessage msgType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{msgType}, this, changeQuickRedirect, false, 2, new Class[]{BlockMessage.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        kotlin.jvm.internal.v.j(msgType, "msgType");
        return msgType == BlockMessage.MSG_SHOW_ROOM_CONFIG_DIALOG || msgType == BlockMessage.MSG_SHOW_ROOM_CONFIG_DIALOG_UX || msgType == BlockMessage.MSG_PLAY_NEXT_MUSIC || msgType == BlockMessage.MSG_OWNER_SELECT_ATMOSPHERE || msgType == BlockMessage.MSG_UPDATE_FUNCTIONS || msgType == BlockMessage.MSG_SHOW_ATMOSPHERE_ENTRANCE || msgType == BlockMessage.MSG_OWNER_SELECT_MUSIC || msgType == BlockMessage.MSG_SHOW_MUSIC_BAR || msgType == BlockMessage.MSG_SHOW_MUSIC_SEARCH_DIALOG || msgType == BlockMessage.MSG_SYNC_LISTEN_TOGETHER || msgType == BlockMessage.MSG_SHOW_MUSIC_ADD_DIALOG || msgType == BlockMessage.MSG_CLOSE_LISTEN_TOGETHER_MUSIC || msgType == BlockMessage.MSG_STOP_MUSIC_RADIO_OR_ATOM || msgType == BlockMessage.MSG_SHOW_GROUP_CHAT_NOTICE || msgType == BlockMessage.MSG_GROUP_CHAT_SUCCESS || msgType == BlockMessage.MSG_SHOW_ROOM_BANNER || msgType == BlockMessage.SHOW_FOLLOW_GUIDE_POO || msgType == BlockMessage.MSG_DISLIKE_NEXT_ROOM || msgType == BlockMessage.MSG_BATTERY_ANIM_CHANGE || msgType == BlockMessage.MSG_SEND_ATMOSPHERE_BG || msgType == BlockMessage.MSG_AI_BACKGROUND_SUCCESS || msgType == BlockMessage.MSG_UPDATE_ATMOSPHERE_SELECTED || msgType == BlockMessage.MSG_SHOW_ATMOSPHERE_ENTRANCE_RED_POINT || msgType == BlockMessage.MSG_USE_ROOM_BG || msgType == BlockMessage.MSG_SHOW_ATMOSPHERE_TAB_RED_POINT || msgType == BlockMessage.MSG_SHOW_ROOM_MY_ATMOSPHERE_DIALOG || msgType == BlockMessage.MSG_ATMOSPHERE_BLIND_BOX || msgType == BlockMessage.MSG_ATMOSPHERE_EXPERIENCE_END || msgType == BlockMessage.MSG_SHOW_ATMOSPHERE_ENTRANCE_NAME || msgType == BlockMessage.MSG_ATMOSPHERE_EXPERIENCE_SUCCESS || msgType == BlockMessage.MSG_ATMOSPHERE_EXPERIENCE_SUCCESS_TIP_DISMISS || msgType == BlockMessage.MSG_ATMOSPHERE_RESTORE_ATMOSPHERE_MUSIC || msgType == BlockMessage.MSG_UPDATE_ONLINE_USER_COUNT || msgType == BlockMessage.MSG_UPDATE_LISTEN_PARTY_NUM;
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.common.SoulHouseBlock, cn.soul.android.base.block_frame.block.Block
    public void initView(@NotNull ViewGroup root) {
        ImMessage createGroupChatNoticeMessage;
        if (PatchProxy.proxy(new Object[]{root}, this, changeQuickRedirect, false, 11, new Class[]{ViewGroup.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(root, "root");
        super.initView(root);
        adaptPartyNewUX();
        updateRankEntryWidth();
        ChatRoomMusicFloatingBar chatRoomMusicFloatingBar = (ChatRoomMusicFloatingBar) getRootView().findViewById(R$id.f129140w6);
        if (chatRoomMusicFloatingBar != null) {
            chatRoomMusicFloatingBar.u(this.blockContainer.getDataBus());
        }
        RoomMoodConfig roomMoodConfigV = SoulHouseExtensionKt.V(this.blockContainer);
        if (!TextUtils.isEmpty(roomMoodConfigV.radioName)) {
            toggleRadioAndAtmosphereViewNew(true);
        } else if (!TextUtils.isEmpty(roomMoodConfigV.musicName)) {
            toggleRadioAndAtmosphereViewNew(false);
        }
        showAtmosphereEntrance();
        ConstraintLayout constraintLayout = (ConstraintLayout) getRootView().findViewById(R$id.I6);
        if (constraintLayout != null) {
            constraintLayout.setOnClickListener(new e(constraintLayout, 500L, this));
        }
        GroupChatMessage groupChatMessage = (GroupChatMessage) getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.A());
        if (groupChatMessage == null || (createGroupChatNoticeMessage = groupChatMessage.getCreateGroupChatNoticeMessage()) == null) {
            return;
        }
        Map<String, String> map = createGroupChatNoticeMessage.getRoomMsg().roomMap;
        if (map == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>");
        }
        startFloatingGroupChatNoticeViewAnim(map);
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.common.SoulHouseBlock, cn.soul.android.base.block_frame.block.Block, cn.soul.android.base.block_frame.block.IBlockLifecycle
    public void onDestroy() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 36, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        super.onDestroy();
        SoulHouseDetailBannerView bannerView = getBannerView();
        if (bannerView != null) {
            bannerView.p();
        }
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.common.SoulHouseBlock
    public void onReceiveMessage(@NotNull BlockMessage msgType, @Nullable final Object obj) {
        ChatRoomModel chatRoomModelV;
        Map<String, String> mapB;
        if (PatchProxy.proxy(new Object[]{msgType, obj}, this, changeQuickRedirect, false, 3, new Class[]{BlockMessage.class, Object.class}, Void.TYPE).isSupported) {
        }
        kotlin.jvm.internal.v.j(msgType, "msgType");
        str = null;
        String str = null;
        switch (a.f147491a[msgType.ordinal()]) {
            case 1:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.p5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6718onReceiveMessage$lambda0(this.f147733a, obj);
                    }
                });
                break;
            case 2:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.x4
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6719onReceiveMessage$lambda1(obj, this);
                    }
                });
                break;
            case 3:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.i5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6729onReceiveMessage$lambda2(this.f147644a);
                    }
                });
                break;
            case 4:
                if (!SoulHouseExtensionKt.V(this.blockContainer).showAtmosphere) {
                    playNextMusic();
                } else {
                    RoomMoodConfig roomMoodConfigV = SoulHouseExtensionKt.V(this.blockContainer);
                    SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
                    if (soulHouseDriverJ0 != null) {
                        String str2 = roomMoodConfigV.musicUrl;
                        kotlin.jvm.internal.v.i(str2, "it.musicUrl");
                        soulHouseDriverJ0.H1(str2);
                    }
                }
                break;
            case 5:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.j5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6742onReceiveMessage$lambda4(this.f147655a, obj);
                    }
                });
                break;
            case 6:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.k5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6743onReceiveMessage$lambda6(this.f147666a);
                    }
                });
                break;
            case 7:
                RoomDataManager roomDataManagerL = SoulHouseExtensionKt.L(this);
                final Integer numValueOf = (roomDataManagerL == null || (chatRoomModelV = roomDataManagerL.v()) == null) ? null : Integer.valueOf(chatRoomModelV.playType);
                RoomDataManager roomDataManagerL2 = SoulHouseExtensionKt.L(this);
                final FunctionBean functionBeanW = roomDataManagerL2 != null ? roomDataManagerL2.w() : null;
                cn.soul.insight.log.core.a.f15353b.dOnlyPrint("Atmosphere", "收到玩法变更消息:" + numValueOf + " ,function=" + functionBeanW);
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.l5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6744onReceiveMessage$lambda7(numValueOf, this, functionBeanW);
                    }
                });
                break;
            case 8:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.m5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6745onReceiveMessage$lambda8(this.f147695a);
                    }
                });
                break;
            case 9:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.n5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6746onReceiveMessage$lambda9(obj, this);
                    }
                });
                break;
            case 10:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.o5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6720onReceiveMessage$lambda10(this.f147722a);
                    }
                });
                break;
            case 11:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.q5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6721onReceiveMessage$lambda11(obj, this);
                    }
                });
                break;
            case 12:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.u5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6722onReceiveMessage$lambda12(this.f147802a);
                    }
                });
                break;
            case 13:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.v5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6723onReceiveMessage$lambda13(obj, this);
                    }
                });
                break;
            case 14:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.w5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6724onReceiveMessage$lambda15(this.f147828a);
                    }
                });
                break;
            case 15:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.x5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6725onReceiveMessage$lambda16(this.f147837a);
                    }
                });
                break;
            case 16:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.y5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6726onReceiveMessage$lambda17(this.f147844a);
                    }
                });
                break;
            case 17:
                showMusicBar();
                break;
            case 18:
                stopAndClearSong();
                break;
            case 19:
                cn.soul.insight.log.core.a.f15353b.dOnlyPrint("Atmosphere", "收到本地block消息 ,MSG_STOP_MUSIC_RADIO_OR_ATOM");
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.z5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6727onReceiveMessage$lambda18(obj, this);
                    }
                });
                break;
            case 20:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.a6
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6728onReceiveMessage$lambda19(this.f147545a, obj);
                    }
                });
                break;
            case 21:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.u4
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6730onReceiveMessage$lambda20(this.f147801a);
                    }
                });
                break;
            case 22:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.v4
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6731onReceiveMessage$lambda21(this.f147814a, obj);
                    }
                });
                break;
            case 23:
                mn0.c cVar = obj instanceof mn0.c ? (mn0.c) obj : null;
                if (cVar != null) {
                    CommonMessage commonMessageA = CommonMessage.INSTANCE.a(cVar);
                    if (commonMessageA != null && (mapB = commonMessageA.b()) != null) {
                        str = mapB.get("groupId");
                    }
                    MessagePool.f151974a.c(SoulHouseExtensionKt.j0(this.blockContainer.getDataBus()), obj);
                    getGroupListAndStatus(String.valueOf(str));
                }
                break;
            case 24:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.w4
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6732onReceiveMessage$lambda24(obj, this);
                    }
                });
                break;
            case 25:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.y4
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6733onReceiveMessage$lambda25(this.f147843a);
                    }
                });
                break;
            case 26:
                mr0.h.l(0L, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.RoomInfoBlock.onReceiveMessage.24
                    public static ChangeQuickRedirect changeQuickRedirect;

                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ kotlin.w invoke() {
                        invoke2();
                        return kotlin.w.f231958a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        ISlideContainer iSlideContainer;
                        MyInfoInRoom myInfoInRoomZ;
                        RoomUser me2;
                        Integer enableExit;
                        H5PlaySlice h5PlaySlice;
                        RoomDataManager roomDataManagerA1;
                        RoomUser roomUserA;
                        RoomDataManager roomDataManagerA2;
                        RoomUser roomUserA2;
                        boolean z11 = false;
                        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                            return;
                        }
                        DataBus dataBus = RoomInfoBlock.this.blockContainer.getDataBus();
                        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(dataBus);
                        H5PlayGameStatusBean h5PlayGameStatusBean = null;
                        if ((soulHouseDriverJ1 == null || (roomDataManagerA2 = soulHouseDriverJ1.a1()) == null || (roomUserA2 = RoomDataManager.A(roomDataManagerA2, false, 1, null)) == null || !roomUserA2.userIsOnSeat()) ? false : true) {
                            return;
                        }
                        SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(dataBus);
                        if ((soulHouseDriverJ2 == null || (roomDataManagerA1 = soulHouseDriverJ2.a1()) == null || (roomUserA = RoomDataManager.A(roomDataManagerA1, false, 1, null)) == null || !roomUserA.isManager()) ? false : true) {
                            return;
                        }
                        CommonUtil commonUtil = CommonUtil.f161882a;
                        if (commonUtil.B1(SoulHouseExtensionKt.j0(dataBus))) {
                            SoulHouseDriver soulHouseDriverJ3 = SoulHouseExtensionKt.j0(dataBus);
                            if (soulHouseDriverJ3 != null && (h5PlaySlice = (H5PlaySlice) SoulHouseExtensionKt.g0(soulHouseDriverJ3, SliceManager.INSTANCE.t())) != null) {
                                h5PlayGameStatusBean = h5PlaySlice.getH5PlayGameStatusBean();
                            }
                            if ((h5PlayGameStatusBean == null || (enableExit = h5PlayGameStatusBean.getEnableExit()) == null || enableExit.intValue() != 1) ? false : true) {
                                return;
                            }
                        }
                        if (cn.soulapp.cpnt_voiceparty.function.b0.f142548a.o(SoulHouseExtensionKt.j0(dataBus))) {
                            SoulHouseDriver soulHouseDriverJ4 = SoulHouseExtensionKt.j0(dataBus);
                            if (soulHouseDriverJ4 != null && (myInfoInRoomZ = SoulHouseExtensionKt.z(soulHouseDriverJ4)) != null && (me2 = myInfoInRoomZ.getMe()) != null && me2.gaming()) {
                                z11 = true;
                            }
                            if (z11) {
                                return;
                            }
                        }
                        if (commonUtil.G1(SoulHouseExtensionKt.j0(dataBus)) || (iSlideContainer = (ISlideContainer) RoomInfoBlock.this.blockContainer.getDataBus().d(cn.soulapp.cpnt_voiceparty.soulhouse.b.f145790a.G())) == null) {
                            return;
                        }
                        iSlideContainer.dynamicScrollNextPage(true);
                    }
                }, 1, null);
                break;
            case 27:
                final SendAtmosphereBgInfo sendAtmosphereBgInfo = obj instanceof SendAtmosphereBgInfo ? (SendAtmosphereBgInfo) obj : null;
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.z4
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6734onReceiveMessage$lambda26(sendAtmosphereBgInfo, this);
                    }
                });
                break;
            case 28:
                final MyGenerated myGenerated = obj instanceof MyGenerated ? (MyGenerated) obj : null;
                if (myGenerated == null) {
                    myGenerated = new MyGenerated();
                }
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.a5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6735onReceiveMessage$lambda27(this.f147543a, myGenerated);
                    }
                });
                break;
            case 29:
                final ClimateBlindBoxInfo climateBlindBoxInfo = obj instanceof ClimateBlindBoxInfo ? (ClimateBlindBoxInfo) obj : null;
                if (climateBlindBoxInfo == null) {
                    climateBlindBoxInfo = new ClimateBlindBoxInfo();
                }
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.b5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6736onReceiveMessage$lambda28(this.f147558a, climateBlindBoxInfo);
                    }
                });
                break;
            case 30:
                final ClimateModel climateModel = obj instanceof ClimateModel ? (ClimateModel) obj : null;
                if (climateModel == null) {
                    climateModel = new ClimateModel();
                }
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.c5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6737onReceiveMessage$lambda29(this.f147572a, climateModel);
                    }
                });
                break;
            case 31:
                final ClimateModel climateModel2 = obj instanceof ClimateModel ? (ClimateModel) obj : null;
                if (climateModel2 == null) {
                    climateModel2 = new ClimateModel();
                }
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.d5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6738onReceiveMessage$lambda30(climateModel2, this);
                    }
                });
                break;
            case 32:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.f5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6739onReceiveMessage$lambda31(this.f147612a);
                    }
                });
                break;
            case 33:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.g5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6740onReceiveMessage$lambda33(obj, this);
                    }
                });
                break;
            case 34:
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                final int iIntValue = num != null ? num.intValue() : 0;
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.h5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomInfoBlock.m6741onReceiveMessage$lambda34(iIntValue, this);
                    }
                });
                break;
        }
    }
}