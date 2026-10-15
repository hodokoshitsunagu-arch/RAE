package cn.soulapp.cpnt_voiceparty.soulhouse.bottom;

import android.animation.Animator;
import android.content.Context;
import android.os.CountDownTimer;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import cn.android.lib.soul_entity.OperationModel;
import cn.mate.android.config.SConfiger;
import cn.soul.android.base.block_frame.block.Container;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.component.SoulRouter;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.lib_dialog.SoulThemeDialog;
import cn.soulapp.android.chatroom.bean.ChatRoomModel;
import cn.soulapp.android.chatroom.data.DataChangeListener;
import cn.soulapp.android.chatroom.data.RoomDataManager;
import cn.soulapp.android.chatroom.dynamic.PartyLottieAnimationView;
import cn.soulapp.android.chatroom.dynamic.PartyMateImageView;
import cn.soulapp.android.client.component.middle.platform.bean.im.RoomUser;
import cn.soulapp.android.lib.analyticsV2.Const;
import cn.soulapp.android.lib.analyticsV2.SoulAnalyticsV2;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.android.lib.common.utils.mmkv.SKV;
import cn.soulapp.android.net.HttpResult;
import cn.soulapp.android.utils.AnyExtKt;
import cn.soulapp.cpnt_voiceparty.R$anim;
import cn.soulapp.cpnt_voiceparty.R$drawable;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.bean.DisplayConfig;
import cn.soulapp.cpnt_voiceparty.bean.PlayFunctionBean;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import cn.soulapp.cpnt_voiceparty.bean.RoomRedDotInfo;
import cn.soulapp.cpnt_voiceparty.bean.SupplyProduct;
import cn.soulapp.cpnt_voiceparty.bean.SupplyStationModel;
import cn.soulapp.cpnt_voiceparty.dialog.RoomPlayFunctionDialog;
import cn.soulapp.cpnt_voiceparty.melancholy.MelancholyApplyConnectDialog;
import cn.soulapp.cpnt_voiceparty.melancholy.MelancholyContinueToBuyDialog;
import cn.soulapp.cpnt_voiceparty.melancholy.MelancholyFinishedDialog;
import cn.soulapp.cpnt_voiceparty.melancholy.MelancholySeatUserMeModel;
import cn.soulapp.cpnt_voiceparty.melancholy.RelieveEndModel;
import cn.soulapp.cpnt_voiceparty.melancholy.RelievePanelModel;
import cn.soulapp.cpnt_voiceparty.setting.PartySettingContainerDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.common.SoulHouseBlock;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.AdvertisingBoardModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.dialog.ActivityCenterDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.dialog.ActivityCenterDialogUx;
import cn.soulapp.cpnt_voiceparty.soulhouse.dialog.ActivityCenterOwnerDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.dialog.ActivityCenterOwnerDialogUx;
import cn.soulapp.cpnt_voiceparty.soulhouse.guide.PartyGameGuideMaskView;
import cn.soulapp.cpnt_voiceparty.soulhouse.supply.SupplyStationFragment;
import cn.soulapp.cpnt_voiceparty.soulhouse.widget.AdBoardCallback;
import cn.soulapp.cpnt_voiceparty.soulhouse.widget.AdvertisingBoardView;
import cn.soulapp.cpnt_voiceparty.soulhouse.widget.RelieveAnxietyView;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.BlockMessage;
import cn.soulapp.cpnt_voiceparty.ui.view.CircleProgressView;
import cn.soulapp.cpnt_voiceparty.util.CommonUtil;
import cn.soulapp.cpnt_voiceparty.util.SwitchUtil;
import cn.soulapp.cpnt_voiceparty.widget.DispatchConstraintLayout;
import cn.soulapp.lib.basic.mvp.MartianActivity;
import cn.soulapp.lib.utils.ext.ViewExtKt;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.tencent.xmagic.avatar.AvatarCategory;
import com.walid.rxretrofit.HttpSubscriber;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.greenrobot.eventbus.Subscribe;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: BottomCommonBlock.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\b\u0003\n\u0002\b\b*\u0002fi\u0018\u0000 n2\u00020\u0001:\u0001oB\u000f\u0012\u0006\u0010;\u001a\u00020:¢\u0006\u0004\bl\u0010mJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\u0019\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0006H\u0002J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J \u0010\u001c\u001a\u00020\u00042\u0016\b\u0002\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0019H\u0002J\b\u0010\u001d\u001a\u00020\u0004H\u0002J\b\u0010\u001e\u001a\u00020\u0004H\u0002J\b\u0010\u001f\u001a\u00020\u0004H\u0002J\b\u0010 \u001a\u00020\u0004H\u0002J\b\u0010!\u001a\u00020\u0004H\u0002J\b\u0010\"\u001a\u00020\u0004H\u0002J\b\u0010#\u001a\u00020\u0004H\u0002J\u001b\u0010$\u001a\u00020\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b$\u0010\u000eJ\b\u0010%\u001a\u00020\u0004H\u0002J\b\u0010&\u001a\u00020\u0004H\u0002J\b\u0010'\u001a\u00020\u0004H\u0002J\u0010\u0010)\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H\u0002J\b\u0010*\u001a\u00020\u0004H\u0002J\u0010\u0010-\u001a\u00020\u00022\u0006\u0010,\u001a\u00020+H\u0016J\u001a\u00100\u001a\u00020\u00042\u0006\u0010,\u001a\u00020+2\b\u0010/\u001a\u0004\u0018\u00010.H\u0016J\b\u00101\u001a\u00020\u0004H\u0016J\b\u00102\u001a\u00020\u0004H\u0016J\u0010\u00105\u001a\u00020\u00042\u0006\u00104\u001a\u000203H\u0016J\b\u00106\u001a\u00020\u0004H\u0016J\u0010\u00109\u001a\u00020\u00042\u0006\u00108\u001a\u000207H\u0007R\u0014\u0010;\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010=\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010?\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010A\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0016\u0010C\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010BR\u0016\u0010D\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010>R\u0016\u0010E\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010BR\u0018\u0010G\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010I\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010K\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010N\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0016\u0010P\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010>R\u0016\u0010Q\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010>R\u0018\u0010S\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR\u0016\u0010U\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\u0014\u0010X\u001a\u00020W8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bX\u0010YR\u0016\u0010Z\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010>R\u0018\u0010\\\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0014\u0010^\u001a\u00020W8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b^\u0010YR\u0014\u0010_\u001a\u00020W8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b_\u0010YR#\u0010e\u001a\n `*\u0004\u0018\u00010[0[8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\ba\u0010b\u001a\u0004\bc\u0010dR\u0014\u0010g\u001a\u00020f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bg\u0010hR\u0014\u0010j\u001a\u00020i8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bj\u0010k¨\u0006p"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/common/SoulHouseBlock;", "", "isMelancholyRoom", "Lkotlin/w;", "showPlayFunctionDialogWithPreselect", "", "scene", "showGameGuideMask", "doShowGameGuideMask", "trackGameGuideMaskExposure", "canShowGameGuide", "preselectClassifyType", "showPlayFunctionDialog", "(Ljava/lang/Integer;)V", "", "jumpUrl", "iconLink", "addInviteMakeRelationCardView", "removeInviteMakeRelationCardView", "remainSec", "starCountDown", "", "millis", "formatCountDownTime", "Lkotlin/Function1;", "Landroidx/fragment/app/DialogFragment;", "subPageCallback", "showInterestDialog", "adaptPartyNewUX", "showPartySettingBubbleIfNeeded", "realShowPartySettingBubble", "updatePartySettingBubblePosition", "dismissPartySettingBubble", "bindMoreStatus", "bindPlayFunc", "getPlaySetupList", "getSupplyStationProductList", "doShoppingAnimation", "refreshEntranceRedDot", "isClick", "trackPlayCompanionDot", "trackClickclk_shopping", "Lcn/soulapp/cpnt_voiceparty/ui/chatroom/BlockMessage;", "msgType", "canReceiveMessage", "", "msg", "onReceiveMessage", "onResume", "onPause", "Landroid/view/ViewGroup;", "root", "initView", "onDestroy", "Ll30/i;", "event", "handlePlayCompanionRedDotEvent", "Lcn/soul/android/base/block_frame/block/Container;", "blockContainer", "Lcn/soul/android/base/block_frame/block/Container;", "playCompanionHasRedDot", "Z", "playCompanionLastOccurTime", "J", "playCompanionRole", "Ljava/lang/String;", "playCompanionDotType", "playCompanionDotExposed", "pageCursor", "Lcn/soulapp/cpnt_voiceparty/soulhouse/supply/SupplyStationFragment;", "supplyStationFragment", "Lcn/soulapp/cpnt_voiceparty/soulhouse/supply/SupplyStationFragment;", "bottomMoreDialog", "Landroidx/fragment/app/DialogFragment;", "showMoreDialogIsManager", "Ljava/lang/Boolean;", "Landroid/os/CountDownTimer;", "timer", "Landroid/os/CountDownTimer;", "isResumed", "isShowAdvertView", "Lcn/soulapp/cpnt_voiceparty/soulhouse/guide/PartyGameGuideMaskView;", "gameGuideMaskView", "Lcn/soulapp/cpnt_voiceparty/soulhouse/guide/PartyGameGuideMaskView;", "gameGuideMaskScene", "I", "Ljava/lang/Runnable;", "showGameGuideMaskRunnable", "Ljava/lang/Runnable;", "isBlockDestroyed", "Landroid/view/View;", "partySettingBubbleView", "Landroid/view/View;", "showPartySettingBubbleRunnable", "dismissPartySettingBubbleRunnable", "kotlin.jvm.PlatformType", "inviteMakeRelationCardView$delegate", "Lkotlin/Lazy;", "getInviteMakeRelationCardView", "()Landroid/view/View;", "inviteMakeRelationCardView", "cn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock$n", "managerChangeListener", "Lcn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock$n;", "cn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock$o", "mySeatChangeListener", "Lcn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock$o;", AppAgent.CONSTRUCT, "(Lcn/soul/android/base/block_frame/block/Container;)V", "Companion", "a", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class BottomCommonBlock extends SoulHouseBlock {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private static final String DOT_TYPE_NORMAL = "normal";

    @NotNull
    private static final String EID_GAMEPLAY_DOT_CLICK = "GameplayRoom_Entry_DotClick";

    @NotNull
    private static final String EID_GAMEPLAY_DOT_EXPO = "GameplayRoom_Entry_DotExpo";
    private static final long GAME_GUIDE_MASK_SHOW_DELAY = 1000;

    @NotNull
    private static final String KEY_ACTIVITY_CENTER_RED_DOT_SHOWN = "activity_center_red_dot_shown";

    @NotNull
    private static final String KEY_PARTY_SETTING_BUBBLE_SHOWN = "party_setting_bubble_shown";

    @NotNull
    private static final String MOCK_PLAY_COMPANION_URL = "https://test-app.soulapp-inc.cn/chatroom-v3/#/party-hub?viewport=cover&fullScreen=true&opacity=0&from=2";

    @NotNull
    private static final String PAID_GAMEPLAY_ROOM_ENTRY = "GameplayRoom_Entry";
    private static final long PARTY_SETTING_BUBBLE_DURATION = 6000;
    private static final long PARTY_SETTING_BUBBLE_SHOW_DELAY = 8000;

    @NotNull
    private static final String ROLE_UNSET = "unset";
    public static ChangeQuickRedirect changeQuickRedirect;

    @NotNull
    private final Container blockContainer;

    @Nullable
    private DialogFragment bottomMoreDialog;

    @NotNull
    private final Runnable dismissPartySettingBubbleRunnable;
    private int gameGuideMaskScene;

    @Nullable
    private PartyGameGuideMaskView gameGuideMaskView;

    /* JADX INFO: renamed from: inviteMakeRelationCardView$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy inviteMakeRelationCardView;
    private boolean isBlockDestroyed;
    private boolean isResumed;
    private boolean isShowAdvertView;

    @NotNull
    private final n managerChangeListener;

    @NotNull
    private final o mySeatChangeListener;

    @NotNull
    private String pageCursor;

    @Nullable
    private View partySettingBubbleView;
    private boolean playCompanionDotExposed;

    @NotNull
    private String playCompanionDotType;
    private boolean playCompanionHasRedDot;
    private long playCompanionLastOccurTime;

    @NotNull
    private String playCompanionRole;

    @NotNull
    private final Runnable showGameGuideMaskRunnable;

    @Nullable
    private Boolean showMoreDialogIsManager;

    @NotNull
    private final Runnable showPartySettingBubbleRunnable;

    @Nullable
    private SupplyStationFragment supplyStationFragment;

    @Nullable
    private CountDownTimer timer;

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.BottomCommonBlock$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: BottomCommonBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\r\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u001a\u0010\f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\f\n\u0004\b\f\u0010\u0004\u0012\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\tR\u0014\u0010\u0011\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\tR\u0014\u0010\u0012\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004¨\u0006\u0014"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock$a;", "", "", "DOT_TYPE_NORMAL", "Ljava/lang/String;", "EID_GAMEPLAY_DOT_CLICK", "EID_GAMEPLAY_DOT_EXPO", "", "GAME_GUIDE_MASK_SHOW_DELAY", "J", "KEY_ACTIVITY_CENTER_RED_DOT_SHOWN", "KEY_PARTY_SETTING_BUBBLE_SHOWN", "MOCK_PLAY_COMPANION_URL", "getMOCK_PLAY_COMPANION_URL$annotations", "()V", "PAID_GAMEPLAY_ROOM_ENTRY", "PARTY_SETTING_BUBBLE_DURATION", "PARTY_SETTING_BUBBLE_SHOW_DELAY", "ROLE_UNSET", AppAgent.CONSTRUCT, "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.q qVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: BottomCommonBlock.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f146572a;
        public static ChangeQuickRedirect changeQuickRedirect;

        static {
            if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 1, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            int[] iArr = new int[BlockMessage.values().length];
            iArr[BlockMessage.MSG_APPLY_MICROPHONE_ON.ordinal()] = 1;
            iArr[BlockMessage.MSG_ACTION_ADVERTISING_BANNER.ordinal()] = 2;
            iArr[BlockMessage.UPDATE_RELIEVE_PANEL_DATA.ordinal()] = 3;
            iArr[BlockMessage.MSG_SHOW_INTEREST_CENTER_DIALOG.ordinal()] = 4;
            iArr[BlockMessage.MSG_HOUSE_ACTIVITY_ON_RESUME.ordinal()] = 5;
            iArr[BlockMessage.NEW_ACTIVITY_ICON.ordinal()] = 6;
            iArr[BlockMessage.MSG_INVITE_MAKE_RELATION_CARD_SHOW.ordinal()] = 7;
            iArr[BlockMessage.MSG_SWITCH_PLAY_TYPE.ordinal()] = 8;
            iArr[BlockMessage.MSG_SHOW_MORE_ICON.ordinal()] = 9;
            iArr[BlockMessage.MSG_HIDE_MORE_ICON.ordinal()] = 10;
            iArr[BlockMessage.MSG_HIGHLIGHT_ENTRY_GUIDE_SHOW.ordinal()] = 11;
            iArr[BlockMessage.MSG_SHOW_PLAY_FUNCTION_DIALOG.ordinal()] = 12;
            iArr[BlockMessage.MSG_SHOW_GAME_GUIDE_MASK.ordinal()] = 13;
            f146572a = iArr;
        }
    }

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/lib/utils/ext/ViewExtKt$b", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class c implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f146573a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f146574b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ BottomCommonBlock f146575c;

        public c(View view, long j11, BottomCommonBlock bottomCommonBlock) {
            this.f146573a = view;
            this.f146574b = j11;
            this.f146575c = bottomCommonBlock;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ViewExtKt.d(this.f146573a) > this.f146574b) {
                ViewExtKt.q(this.f146573a, jCurrentTimeMillis);
                this.f146575c.dismissPartySettingBubble();
                u30.a.f243719a.e(this.f146575c.getDataBus());
                PartySettingContainerDialog.INSTANCE.a(this.f146575c.blockContainer.getDataBus()).show(SoulHouseExtensionKt.k(this.f146575c), "PartySettingContainerDialog");
            }
        }
    }

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/lib/utils/ext/ViewExtKt$b", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class d implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f146576a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f146577b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ BottomCommonBlock f146578c;

        public d(View view, long j11, BottomCommonBlock bottomCommonBlock) {
            this.f146576a = view;
            this.f146577b = j11;
            this.f146578c = bottomCommonBlock;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ViewExtKt.d(this.f146576a) > this.f146577b) {
                ViewExtKt.q(this.f146576a, jCurrentTimeMillis);
                this.f146578c.removeInviteMakeRelationCardView();
                e60.a.f223441a.f();
            }
        }
    }

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/lib/utils/ext/ViewExtKt$b", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class e implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f146579a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f146580b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f146581c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ BottomCommonBlock f146582d;

        public e(View view, long j11, String str, BottomCommonBlock bottomCommonBlock) {
            this.f146579a = view;
            this.f146580b = j11;
            this.f146581c = str;
            this.f146582d = bottomCommonBlock;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ViewExtKt.d(this.f146579a) > this.f146580b) {
                ViewExtKt.q(this.f146579a, jCurrentTimeMillis);
                SoulRouter.j().e(this.f146581c).d();
                d60.b.f222655a.a();
                this.f146582d.removeInviteMakeRelationCardView();
            }
        }
    }

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/lib/utils/ext/ViewExtKt$b", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class f implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f146583a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f146584b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ BottomCommonBlock f146585c;

        public f(View view, long j11, BottomCommonBlock bottomCommonBlock) {
            this.f146583a = view;
            this.f146584b = j11;
            this.f146585c = bottomCommonBlock;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ViewExtKt.d(this.f146583a) > this.f146584b) {
                ViewExtKt.q(this.f146583a, jCurrentTimeMillis);
                u30.a.f243719a.d(this.f146585c.getDataBus());
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.f146585c.blockContainer.getDataBus());
                if ((soulHouseDriverJ0 != null ? (PlayFunctionBean) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.b0()) : null) == null) {
                    BottomCommonBlock.getPlaySetupList$default(this.f146585c, null, 1, null);
                } else {
                    RoomPlayFunctionDialog.Companion.b(RoomPlayFunctionDialog.INSTANCE, this.f146585c.blockContainer.getDataBus(), null, 2, null).show(SoulHouseExtensionKt.k(this.f146585c), "RoomPlayFunctionDialog");
                }
            }
        }
    }

    /* JADX INFO: compiled from: BottomCommonBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\t"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock$g", "Landroid/animation/Animator$AnimatorListener;", "Landroid/animation/Animator;", AvatarCategory.ANIMATION, "Lkotlin/w;", "onAnimationStart", "onAnimationEnd", "onAnimationCancel", "onAnimationRepeat", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class g implements Animator.AnimatorListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        g() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(@NotNull Animator animation) {
            if (PatchProxy.proxy(new Object[]{animation}, this, changeQuickRedirect, false, 4, new Class[]{Animator.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NotNull Animator animation) {
            if (PatchProxy.proxy(new Object[]{animation}, this, changeQuickRedirect, false, 3, new Class[]{Animator.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(animation, "animation");
            ImageView imageView = (ImageView) BottomCommonBlock.this.getRootView().findViewById(R$id.Ow);
            if (imageView != null) {
                ViewExtKt.l(imageView);
            }
            PartyLottieAnimationView partyLottieAnimationView = (PartyLottieAnimationView) BottomCommonBlock.this.getRootView().findViewById(R$id.bI);
            if (partyLottieAnimationView != null) {
                ViewExtKt.j(partyLottieAnimationView);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(@NotNull Animator animation) {
            if (PatchProxy.proxy(new Object[]{animation}, this, changeQuickRedirect, false, 5, new Class[]{Animator.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(@NotNull Animator animation) {
            if (PatchProxy.proxy(new Object[]{animation}, this, changeQuickRedirect, false, 2, new Class[]{Animator.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(animation, "animation");
            ImageView imageView = (ImageView) BottomCommonBlock.this.getRootView().findViewById(R$id.Ow);
            if (imageView != null) {
                ViewExtKt.k(imageView);
            }
        }
    }

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.BottomCommonBlock$getSupplyStationProductList$1, reason: invalid class name */
    /* JADX INFO: compiled from: BottomCommonBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock$getSupplyStationProductList$1", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/SupplyStationModel;", "t", "Lkotlin/w;", ExpcompatUtils.COMPAT_VALUE_780, "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class AnonymousClass1 extends HttpSubscriber<SupplyStationModel> {
        public static ChangeQuickRedirect changeQuickRedirect;

        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(final BottomCommonBlock this$0, SupplyStationModel supplyStationModel) {
            if (PatchProxy.proxy(new Object[]{this$0, supplyStationModel}, null, changeQuickRedirect, true, 4, new Class[]{BottomCommonBlock.class, SupplyStationModel.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(this$0, "this$0");
            if (this$0.supplyStationFragment == null) {
                this$0.supplyStationFragment = SupplyStationFragment.Companion.b(SupplyStationFragment.INSTANCE, this$0.blockContainer.getDataBus(), supplyStationModel, true, null, 8, null);
                SupplyStationFragment supplyStationFragment = this$0.supplyStationFragment;
                if (supplyStationFragment != null) {
                    supplyStationFragment.show(SoulHouseExtensionKt.k(this$0), "SupplyStationFragment.createFragment");
                }
                SupplyStationFragment supplyStationFragment2 = this$0.supplyStationFragment;
                if (supplyStationFragment2 != null) {
                    supplyStationFragment2.p(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.BottomCommonBlock$getSupplyStationProductList$1$success$1$1
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
                            this$0.getSupplyStationProductList();
                        }
                    });
                }
                SupplyStationFragment supplyStationFragment3 = this$0.supplyStationFragment;
                if (supplyStationFragment3 != null) {
                    supplyStationFragment3.q(new Function0() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.BottomCommonBlock$getSupplyStationProductList$1$success$1$2
                        public static ChangeQuickRedirect changeQuickRedirect;

                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        @Nullable
                        public final Void invoke() {
                            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.class);
                            if (patchProxyResultProxy.isSupported) {
                                return (Void) patchProxyResultProxy.result;
                            }
                            this$0.supplyStationFragment = null;
                            this$0.pageCursor = "";
                            return null;
                        }
                    });
                }
            } else {
                SupplyStationFragment supplyStationFragment4 = this$0.supplyStationFragment;
                if (supplyStationFragment4 != null) {
                    supplyStationFragment4.k(supplyStationModel, false);
                }
            }
            if (supplyStationModel != null) {
                String pageCursor = supplyStationModel.getPageCursor();
                if (pageCursor == null) {
                    pageCursor = "";
                }
                this$0.pageCursor = pageCursor;
            }
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void success(@Nullable final SupplyStationModel supplyStationModel) {
            if (PatchProxy.proxy(new Object[]{supplyStationModel}, this, changeQuickRedirect, false, 2, new Class[]{SupplyStationModel.class}, Void.TYPE).isSupported) {
                return;
            }
            final BottomCommonBlock bottomCommonBlock = BottomCommonBlock.this;
            bottomCommonBlock.runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.w
                @Override // java.lang.Runnable
                public final void run() {
                    BottomCommonBlock.AnonymousClass1.c(bottomCommonBlock, supplyStationModel);
                }
            });
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            cn.soulapp.lib.widget.toast.e.u(str);
            if (BottomCommonBlock.this.supplyStationFragment == null) {
                BottomCommonBlock bottomCommonBlock = BottomCommonBlock.this;
                bottomCommonBlock.supplyStationFragment = SupplyStationFragment.INSTANCE.a(bottomCommonBlock.blockContainer.getDataBus(), null, true, "网络连接失败");
                SupplyStationFragment supplyStationFragment = BottomCommonBlock.this.supplyStationFragment;
                if (supplyStationFragment != null) {
                    supplyStationFragment.show(SoulHouseExtensionKt.k(BottomCommonBlock.this), "SupplyStationFragment.createFragment");
                }
            }
        }
    }

    /* JADX INFO: compiled from: BottomCommonBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\b"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock$h", "Landroid/view/animation/Animation$AnimationListener;", "Landroid/view/animation/Animation;", AvatarCategory.ANIMATION, "Lkotlin/w;", "onAnimationStart", "onAnimationEnd", "onAnimationRepeat", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class h implements Animation.AnimationListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        h() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(@Nullable Animation animation) {
            if (PatchProxy.proxy(new Object[]{animation}, this, changeQuickRedirect, false, 2, new Class[]{Animation.class}, Void.TYPE).isSupported) {
                return;
            }
            AdvertisingBoardView advertisingBoardView = (AdvertisingBoardView) BottomCommonBlock.this.getRootView().findViewById(R$id.f128644p);
            if (advertisingBoardView != null) {
                ViewExtKt.j(advertisingBoardView);
            }
            ViewGroup rootView = BottomCommonBlock.this.getRootView();
            int i11 = R$id.bI;
            PartyLottieAnimationView partyLottieAnimationView = (PartyLottieAnimationView) rootView.findViewById(i11);
            if (partyLottieAnimationView != null) {
                ViewExtKt.l(partyLottieAnimationView);
            }
            PartyLottieAnimationView partyLottieAnimationView2 = (PartyLottieAnimationView) BottomCommonBlock.this.getRootView().findViewById(i11);
            if (partyLottieAnimationView2 != null) {
                partyLottieAnimationView2.A();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(@Nullable Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(@Nullable Animation animation) {
        }
    }

    /* JADX INFO: compiled from: BottomCommonBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock$i", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/PlayFunctionBean;", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class i extends HttpSubscriber<PlayFunctionBean> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Integer f146590b;

        i(Integer num) {
            this.f146590b = num;
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(@Nullable PlayFunctionBean playFunctionBean) {
            if (PatchProxy.proxy(new Object[]{playFunctionBean}, this, changeQuickRedirect, false, 2, new Class[]{PlayFunctionBean.class}, Void.TYPE).isSupported || playFunctionBean == null) {
                return;
            }
            BottomCommonBlock bottomCommonBlock = BottomCommonBlock.this;
            Integer num = this.f146590b;
            playFunctionBean.updateFuncOpenState(bottomCommonBlock.blockContainer.getDataBus());
            bottomCommonBlock.provideX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.b0(), playFunctionBean);
            bottomCommonBlock.showPlayFunctionDialog(num);
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            ExtensionsKt.toast(String.valueOf(str));
        }
    }

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/lib/utils/ext/ViewExtKt$b", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class j implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f146593a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f146594b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ BottomCommonBlock f146595c;

        public j(View view, long j11, BottomCommonBlock bottomCommonBlock) {
            this.f146593a = view;
            this.f146594b = j11;
            this.f146595c = bottomCommonBlock;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ViewExtKt.d(this.f146593a) > this.f146594b) {
                ViewExtKt.q(this.f146593a, jCurrentTimeMillis);
                this.f146595c.getSupplyStationProductList();
                this.f146595c.trackClickclk_shopping();
            }
        }
    }

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/lib/utils/ext/ViewExtKt$b", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class k implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f146596a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f146597b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ BottomCommonBlock f146598c;

        public k(View view, long j11, BottomCommonBlock bottomCommonBlock) {
            this.f146596a = view;
            this.f146597b = j11;
            this.f146598c = bottomCommonBlock;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ViewExtKt.d(this.f146596a) > this.f146597b) {
                ViewExtKt.q(this.f146596a, jCurrentTimeMillis);
                if (kotlin.jvm.internal.v.e(((TextView) this.f146598c.getRootView().findViewById(R$id.Fa0)).getText(), "连线解忧")) {
                    CommonUtil.f161882a.n(this.f146598c.getActivity(), SoulHouseExtensionKt.k(this.f146598c), this.f146598c.new l());
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("btn_state", 1);
                    SoulAnalyticsV2.getInstance().onEvent(Const.EventType.CLICK, "MiracleHouse_lianxianClk", linkedHashMap);
                    return;
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put("btn_state", 0);
                SoulAnalyticsV2.getInstance().onEvent(Const.EventType.CLICK, "MiracleHouse_lianxianClk", linkedHashMap2);
                rs0.e<HttpResult<RelieveEndModel>> eVarT3 = h30.g.f225309a.T3(SoulHouseExtensionKt.N(this.f146598c.blockContainer));
                final BottomCommonBlock bottomCommonBlock = this.f146598c;
                eVarT3.subscribe(new HttpSubscriber<RelieveEndModel>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.BottomCommonBlock$initView$2$2
                    public static ChangeQuickRedirect changeQuickRedirect;

                    @Override // com.walid.rxretrofit.HttpSubscriber
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void success(@Nullable RelieveEndModel relieveEndModel) {
                        if (PatchProxy.proxy(new Object[]{relieveEndModel}, this, changeQuickRedirect, false, 2, new Class[]{RelieveEndModel.class}, Void.TYPE).isSupported) {
                            return;
                        }
                        SoulThemeDialog.a aVar = SoulThemeDialog.f15532i;
                        SoulThemeDialog.AttributeConfig attributeConfig = new SoulThemeDialog.AttributeConfig();
                        final BottomCommonBlock bottomCommonBlock2 = bottomCommonBlock;
                        attributeConfig.I("是否结束连线");
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("当前连线时间为");
                        sb2.append(CommonUtil.f161882a.K(relieveEndModel != null ? relieveEndModel.getHasOnlineSeconds() : 0L));
                        sb2.append("，已消耗");
                        sb2.append(relieveEndModel != null ? relieveEndModel.getHasExpendStar() : 0);
                        sb2.append("星，结束后将停止消耗星星");
                        attributeConfig.z(sb2.toString());
                        attributeConfig.w("结束连线");
                        attributeConfig.y("继续连线");
                        attributeConfig.A(true);
                        attributeConfig.C(true);
                        attributeConfig.u(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.BottomCommonBlock$initView$2$2$success$1$1
                            public static ChangeQuickRedirect changeQuickRedirect;

                            /* JADX INFO: compiled from: BottomCommonBlock.kt */
                            @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock$initView$2$2$success$1$1$a", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "Lcn/soulapp/cpnt_voiceparty/melancholy/RelieveEndModel;", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
                            public static final class a extends HttpSubscriber<RequestResult<RelieveEndModel>> {
                                public static ChangeQuickRedirect changeQuickRedirect;

                                /* JADX INFO: renamed from: a, reason: collision with root package name */
                                final /* synthetic */ BottomCommonBlock f146592a;

                                a(BottomCommonBlock bottomCommonBlock) {
                                    this.f146592a = bottomCommonBlock;
                                }

                                @Override // com.walid.rxretrofit.HttpSubscriber
                                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                                public void success(@Nullable RequestResult<RelieveEndModel> requestResult) {
                                    if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                                        return;
                                    }
                                    if (requestResult != null && requestResult.getResult()) {
                                        MelancholyFinishedDialog.INSTANCE.a(this.f146592a.blockContainer.getDataBus(), requestResult.getData()).show(SoulHouseExtensionKt.k(this.f146592a), kotlin.jvm.internal.z.b(MelancholyFinishedDialog.class).getSimpleName());
                                    }
                                }

                                @Override // com.walid.rxretrofit.HttpSubscriber
                                public void error(int i11, @Nullable String str) {
                                }
                            }

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
                                h30.g.f225309a.E8(SoulHouseExtensionKt.N(bottomCommonBlock2.blockContainer)).subscribe(new a(bottomCommonBlock2));
                            }
                        });
                        aVar.a(attributeConfig).A(SoulHouseExtensionKt.k(bottomCommonBlock));
                    }

                    @Override // com.walid.rxretrofit.HttpSubscriber
                    public void error(int i11, @Nullable String str) {
                    }
                });
            }
        }
    }

    /* JADX INFO: compiled from: BottomCommonBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock$l", "Lz80/h;", "Ly80/a;", "result", "Lkotlin/w;", "onGranted", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class l extends z80.h {
        public static ChangeQuickRedirect changeQuickRedirect;

        l() {
        }

        @Override // z80.b
        public void onGranted(@NotNull y80.a result) {
            if (PatchProxy.proxy(new Object[]{result}, this, changeQuickRedirect, false, 2, new Class[]{y80.a.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(result, "result");
            MelancholyApplyConnectDialog.INSTANCE.a(BottomCommonBlock.this.blockContainer.getDataBus()).show(SoulHouseExtensionKt.k(BottomCommonBlock.this), "MelancholyApplyConnectDialog");
        }
    }

    /* JADX INFO: compiled from: BottomCommonBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\u0007"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock$m", "Lcn/soulapp/cpnt_voiceparty/soulhouse/widget/AdBoardCallback;", "Lkotlin/w;", "onClickClose", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/AdvertisingBoardModel;", "model", "onClickProduction", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class m implements AdBoardCallback {
        public static ChangeQuickRedirect changeQuickRedirect;

        m() {
        }

        @Override // cn.soulapp.cpnt_voiceparty.soulhouse.widget.AdBoardCallback
        public void onClickClose() {
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            BottomCommonBlock.this.removeX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.d());
            BottomCommonBlock.this.doShoppingAnimation();
        }

        @Override // cn.soulapp.cpnt_voiceparty.soulhouse.widget.AdBoardCallback
        public void onClickProduction(@Nullable AdvertisingBoardModel advertisingBoardModel) {
            String jumpUrl;
            String jumpUrl2;
            SupplyProduct goodsInfo;
            if (PatchProxy.proxy(new Object[]{advertisingBoardModel}, this, changeQuickRedirect, false, 3, new Class[]{AdvertisingBoardModel.class}, Void.TYPE).isSupported) {
                return;
            }
            SoulAnalyticsV2 soulAnalyticsV2 = SoulAnalyticsV2.getInstance();
            Pair[] pairArr = new Pair[1];
            pairArr[0] = kotlin.m.a("chat_goods_id", (advertisingBoardModel == null || (goodsInfo = advertisingBoardModel.getGoodsInfo()) == null) ? null : goodsInfo.getId());
            soulAnalyticsV2.onEvent(Const.EventType.CLICK, "clk_goods_banner", kotlin.collections.r0.o(pairArr));
            if (advertisingBoardModel != null) {
                BottomCommonBlock bottomCommonBlock = BottomCommonBlock.this;
                SupplyProduct goodsInfo2 = advertisingBoardModel.getGoodsInfo();
                if (goodsInfo2 == null || (jumpUrl = goodsInfo2.getJumpUrl()) == null) {
                    return;
                }
                Integer classify = goodsInfo2.getClassify();
                if (classify != null && classify.intValue() == 1) {
                    a60.l.f1777a.n(jumpUrl);
                    return;
                }
                if (classify != null && classify.intValue() == 2) {
                    DisplayConfig displayConfig = goodsInfo2.getDisplayConfig();
                    if (displayConfig != null && displayConfig.getType() == 1) {
                        cn.soulapp.cpnt_voiceparty.util.q1.a(goodsInfo2, displayConfig, bottomCommonBlock.getActivity());
                        return;
                    } else {
                        a60.l.f1777a.n(jumpUrl);
                        return;
                    }
                }
                if (classify == null || classify.intValue() != 4 || (jumpUrl2 = goodsInfo2.getJumpUrl()) == null) {
                    return;
                }
                a60.l.f1777a.n(jumpUrl2);
            }
        }
    }

    /* JADX INFO: compiled from: BottomCommonBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0006\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0007"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock$n", "Lcn/soulapp/android/chatroom/data/DataChangeListener;", "Lcn/soulapp/android/client/component/middle/platform/bean/im/RoomUser;", "oldData", "newData", "Lkotlin/w;", "a", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class n implements DataChangeListener<RoomUser> {
        public static ChangeQuickRedirect changeQuickRedirect;

        n() {
        }

        @Override // cn.soulapp.android.chatroom.data.DataChangeListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onDataChange(@Nullable RoomUser roomUser, @Nullable RoomUser roomUser2) {
            if (PatchProxy.proxy(new Object[]{roomUser, roomUser2}, this, changeQuickRedirect, false, 2, new Class[]{RoomUser.class, RoomUser.class}, Void.TYPE).isSupported) {
                return;
            }
            RoomDataManager roomDataManagerL = SoulHouseExtensionKt.L(BottomCommonBlock.this);
            RoomUser roomUserA = roomDataManagerL != null ? RoomDataManager.A(roomDataManagerL, false, 1, null) : null;
            if (!kotlin.jvm.internal.v.e(roomUser != null ? roomUser.getUserId() : null, roomUserA != null ? roomUserA.getUserId() : null)) {
                if (!kotlin.jvm.internal.v.e(roomUser2 != null ? roomUser2.getUserId() : null, roomUserA != null ? roomUserA.getUserId() : null)) {
                    return;
                }
            }
            if (kotlin.jvm.internal.v.e(BottomCommonBlock.this.showMoreDialogIsManager, roomUserA != null ? Boolean.valueOf(roomUserA.isManager()) : null)) {
                return;
            }
            DialogFragment dialogFragment = BottomCommonBlock.this.bottomMoreDialog;
            if (dialogFragment != null) {
                dialogFragment.dismiss();
            }
            BottomCommonBlock.this.showMoreDialogIsManager = roomUserA != null ? Boolean.valueOf(roomUserA.isManager()) : null;
        }
    }

    /* JADX INFO: compiled from: BottomCommonBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0006\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0007"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock$o", "Lcn/soulapp/android/chatroom/data/DataChangeListener;", "", "oldData", "newData", "Lkotlin/w;", "a", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class o implements DataChangeListener<String> {
        public static ChangeQuickRedirect changeQuickRedirect;

        o() {
        }

        @Override // cn.soulapp.android.chatroom.data.DataChangeListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onDataChange(@Nullable String str, @Nullable String str2) {
            LinearLayout linearLayout;
            if (PatchProxy.proxy(new Object[]{str, str2}, this, changeQuickRedirect, false, 2, new Class[]{String.class, String.class}, Void.TYPE).isSupported || !BottomCommonBlock.this.isMelancholyRoom() || (linearLayout = (LinearLayout) BottomCommonBlock.this.getRootView().findViewById(R$id.M3)) == null) {
                return;
            }
            ExtensionsKt.visibleOrGone(linearLayout, kotlin.jvm.internal.v.e(str2, "1"));
        }
    }

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/lib/utils/ext/ViewExtKt$b", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class p implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f146603a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f146604b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ BottomCommonBlock f146605c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ OperationModel f146606d;

        public p(View view, long j11, BottomCommonBlock bottomCommonBlock, OperationModel operationModel) {
            this.f146603a = view;
            this.f146604b = j11;
            this.f146605c = bottomCommonBlock;
            this.f146606d = operationModel;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ViewExtKt.d(this.f146603a) > this.f146604b) {
                ViewExtKt.q(this.f146603a, jCurrentTimeMillis);
                cn.soulapp.cpnt_voiceparty.util.track.a.f162372a.L2();
                View viewFindViewById = this.f146605c.getRootView().findViewById(R$id.Qs);
                if (viewFindViewById != null) {
                    ViewExtKt.j(viewFindViewById);
                }
                this.f146605c.playCompanionHasRedDot = false;
                this.f146605c.trackPlayCompanionDot(true);
                ih.a.h(this.f146606d.getJumpUrl(), null);
            }
        }
    }

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/lib/utils/ext/ViewExtKt$b", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class q implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f146607a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f146608b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ BottomCommonBlock f146609c;

        public q(View view, long j11, BottomCommonBlock bottomCommonBlock) {
            this.f146607a = view;
            this.f146608b = j11;
            this.f146609c = bottomCommonBlock;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ViewExtKt.d(this.f146607a) > this.f146608b) {
                ViewExtKt.q(this.f146607a, jCurrentTimeMillis);
                this.f146609c.dismissPartySettingBubble();
            }
        }
    }

    /* JADX INFO: compiled from: BottomCommonBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/bottom/BottomCommonBlock$r", "Landroid/os/CountDownTimer;", "", "millisUntilFinished", "Lkotlin/w;", "onTick", "onFinish", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class r extends CountDownTimer {
        public static ChangeQuickRedirect changeQuickRedirect;

        r(long j11) {
            super(j11, 1000L);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            MelancholyFinishedDialog.INSTANCE.a(BottomCommonBlock.this.blockContainer.getDataBus(), null).show(SoulHouseExtensionKt.k(BottomCommonBlock.this), kotlin.jvm.internal.z.b(MelancholyFinishedDialog.class).getSimpleName());
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j11) {
            if (PatchProxy.proxy(new Object[]{new Long(j11)}, this, changeQuickRedirect, false, 2, new Class[]{Long.TYPE}, Void.TYPE).isSupported) {
                return;
            }
            ((TextView) BottomCommonBlock.this.getRootView().findViewById(R$id.Ga0)).setText(BottomCommonBlock.this.formatCountDownTime(j11));
            if (j11 / ((long) 1000) == 30) {
                Fragment fragmentFindFragmentByTag = SoulHouseExtensionKt.k(BottomCommonBlock.this).findFragmentByTag(kotlin.jvm.internal.z.b(MelancholyContinueToBuyDialog.class).getSimpleName());
                MelancholyContinueToBuyDialog melancholyContinueToBuyDialog = fragmentFindFragmentByTag instanceof MelancholyContinueToBuyDialog ? (MelancholyContinueToBuyDialog) fragmentFindFragmentByTag : null;
                if (melancholyContinueToBuyDialog != null) {
                    melancholyContinueToBuyDialog.dismissAllowingStateLoss();
                }
                if (BottomCommonBlock.this.isResumed) {
                    MelancholyContinueToBuyDialog.INSTANCE.a(BottomCommonBlock.this.blockContainer.getDataBus(), true).show(SoulHouseExtensionKt.k(BottomCommonBlock.this), kotlin.jvm.internal.z.b(MelancholyContinueToBuyDialog.class).getSimpleName());
                }
            }
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 52, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomCommonBlock(@NotNull Container blockContainer) {
        super(blockContainer);
        kotlin.jvm.internal.v.j(blockContainer, "blockContainer");
        this.blockContainer = blockContainer;
        this.playCompanionRole = ROLE_UNSET;
        this.playCompanionDotType = DOT_TYPE_NORMAL;
        this.pageCursor = "";
        this.showGameGuideMaskRunnable = new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.j
            @Override // java.lang.Runnable
            public final void run() {
                BottomCommonBlock.m6447showGameGuideMaskRunnable$lambda0(this.f146851a);
            }
        };
        this.showPartySettingBubbleRunnable = new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.k
            @Override // java.lang.Runnable
            public final void run() {
                BottomCommonBlock.m6448showPartySettingBubbleRunnable$lambda1(this.f146858a);
            }
        };
        this.dismissPartySettingBubbleRunnable = new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.l
            @Override // java.lang.Runnable
            public final void run() {
                BottomCommonBlock.m6432dismissPartySettingBubbleRunnable$lambda2(this.f146865a);
            }
        };
        this.inviteMakeRelationCardView = kotlin.j.b(new Function0<View>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.BottomCommonBlock$inviteMakeRelationCardView$2
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], View.class);
                return patchProxyResultProxy.isSupported ? (View) patchProxyResultProxy.result : LayoutInflater.from(this.this$0.getContext()).inflate(R$layout.J8, (ViewGroup) null);
            }
        });
        this.managerChangeListener = new n();
        this.mySeatChangeListener = new o();
    }

    private final void adaptPartyNewUX() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 20, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        TextView textView = (TextView) getRootView().findViewById(R$id.V30);
        textView.setBackground(ContextCompat.getDrawable(textView.getContext(), R$drawable.Lc));
        kotlin.jvm.internal.v.i(textView, "");
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMarginStart(ExtensionsKt.dp(8));
        marginLayoutParams.setMarginEnd(ExtensionsKt.dp(8));
        textView.setPadding(ExtensionsKt.dp(10), 0, ExtensionsKt.dp(10), 0);
        textView.setLayoutParams(marginLayoutParams);
        textView.setText("说点什么吧");
        ViewGroup rootView = getRootView();
        int i11 = R$id.jM;
        ViewExtKt.l((PartyMateImageView) rootView.findViewById(i11));
        ((PartyMateImageView) getRootView().findViewById(i11)).setImageResource(SoulHouseExtensionKt.y(this.blockContainer).getIsOwner() ? R$drawable.f127230gf : R$drawable.f127250hf);
        PartyMateImageView partyMateImageView = (PartyMateImageView) getRootView().findViewById(i11);
        partyMateImageView.setOnClickListener(new c(partyMateImageView, 500L, this));
        ((PartyMateImageView) getRootView().findViewById(R$id.Jw)).setImageResource(R$drawable.f127542w8);
        showPartySettingBubbleIfNeeded();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0046  */
    private final void addInviteMakeRelationCardView(String str, String str2) {
        boolean z11;
        if (PatchProxy.proxy(new Object[]{str, str2}, this, changeQuickRedirect, false, 12, new Class[]{String.class, String.class}, Void.TYPE).isSupported) {
            return;
        }
        ViewGroup rootView = getRootView();
        int i11 = R$id.YI;
        DispatchConstraintLayout dispatchConstraintLayout = (DispatchConstraintLayout) rootView.findViewById(i11);
        if (dispatchConstraintLayout != null) {
            View inviteMakeRelationCardView = getInviteMakeRelationCardView();
            kotlin.jvm.internal.v.i(inviteMakeRelationCardView, "inviteMakeRelationCardView");
            z11 = dispatchConstraintLayout.indexOfChild(inviteMakeRelationCardView) != -1;
        }
        if (z11) {
            return;
        }
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(ExtensionsKt.dp(192), ExtensionsKt.dp(88));
        layoutParams.bottomToBottom = 0;
        layoutParams.endToEnd = 0;
        layoutParams.setMarginEnd(ExtensionsKt.dp(8));
        ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = ExtensionsKt.dp(74);
        getInviteMakeRelationCardView().setAnimation(AnimationUtils.loadAnimation(getContext(), R$anim.f127054l));
        DispatchConstraintLayout dispatchConstraintLayout2 = (DispatchConstraintLayout) getRootView().findViewById(i11);
        if (dispatchConstraintLayout2 != null) {
            dispatchConstraintLayout2.addView(getInviteMakeRelationCardView(), layoutParams);
        }
        ImageView imageView = (ImageView) getInviteMakeRelationCardView().findViewById(R$id.Ci);
        if (imageView != null) {
            if (!cn.mate.android.utils.a.f10639a.d(imageView.getContext())) {
                cn.soulapp.android.chatroom.dynamic.b.d(imageView).m(str2).into(imageView);
            }
            imageView.setOnClickListener(new e(imageView, 1000L, str, this));
        }
        CircleProgressView circleProgressView = (CircleProgressView) getInviteMakeRelationCardView().findViewById(R$id.f128454m8);
        if (circleProgressView != null) {
            circleProgressView.e(10000L, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.BottomCommonBlock$addInviteMakeRelationCardView$2$1
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
                    this.this$0.removeInviteMakeRelationCardView();
                }
            });
        }
        ImageView imageView2 = (ImageView) getInviteMakeRelationCardView().findViewById(R$id.f128624oo);
        if (imageView2 != null) {
            imageView2.setOnClickListener(new d(imageView2, 500L, this));
        }
        d60.b.f222655a.b();
    }

    private final void bindMoreStatus() {
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 25, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        if (!SwitchUtil.f162115a.a0() || CommonUtil.f161882a.D0(getDataBus())) {
            ViewExtKt.j((FrameLayout) getRootView().findViewById(R$id.f128190id));
            PartyMateImageView partyMateImageView = (PartyMateImageView) getRootView().findViewById(R$id.Jw);
            if (partyMateImageView != null) {
                ViewExtKt.j(partyMateImageView);
                return;
            }
            return;
        }
        ViewExtKt.l((FrameLayout) getRootView().findViewById(R$id.f128190id));
        ViewGroup rootView = getRootView();
        int i11 = R$id.Jw;
        PartyMateImageView partyMateImageView2 = (PartyMateImageView) rootView.findViewById(i11);
        if (partyMateImageView2 != null && partyMateImageView2.getVisibility() == 0) {
            z11 = true;
        }
        if (!z11) {
            cn.soulapp.cpnt_voiceparty.util.track.a.f162372a.M2();
        }
        PartyMateImageView partyMateImageView3 = (PartyMateImageView) getRootView().findViewById(i11);
        if (partyMateImageView3 != null) {
            ViewExtKt.l(partyMateImageView3);
        }
    }

    private final void bindPlayFunc() {
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 26, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        String string = SConfiger.getString("party_play_func_icon", "https://china-img.soulapp.cn/admin/2025-09-03/c277dc18-dab7-483a-8009-b602348ca3ba.png");
        ViewGroup rootView = getRootView();
        int i11 = R$id.Ht;
        PartyMateImageView partyMateImageView = (PartyMateImageView) rootView.findViewById(i11);
        if (partyMateImageView != null) {
            partyMateImageView.F(string);
        }
        PartyMateImageView partyMateImageView2 = (PartyMateImageView) getRootView().findViewById(i11);
        if (partyMateImageView2 != null) {
            if (SoulHouseExtensionKt.y(this.blockContainer).getIsOwner() && !isMelancholyRoom()) {
                z11 = true;
            }
            ExtensionsKt.visibleOrGone(partyMateImageView2, z11);
        }
        PartyMateImageView partyMateImageView3 = (PartyMateImageView) getRootView().findViewById(i11);
        if (partyMateImageView3 != null) {
            partyMateImageView3.setOnClickListener(new f(partyMateImageView3, 500L, this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean canShowGameGuide() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 10, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        return SoulHouseExtensionKt.y(this.blockContainer).getIsOwner() && !isMelancholyRoom();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dismissPartySettingBubble() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 24, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) getRootView().findViewById(R$id.kM);
        if (frameLayout != null) {
            frameLayout.removeCallbacks(this.showPartySettingBubbleRunnable);
        }
        View view = this.partySettingBubbleView;
        if (view == null) {
            return;
        }
        if (view != null) {
            view.removeCallbacks(this.dismissPartySettingBubbleRunnable);
        }
        View view2 = this.partySettingBubbleView;
        ViewParent parent = view2 != null ? view2.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.partySettingBubbleView);
        }
        this.partySettingBubbleView = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: dismissPartySettingBubbleRunnable$lambda-2, reason: not valid java name */
    public static final void m6432dismissPartySettingBubbleRunnable$lambda2(BottomCommonBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 37, new Class[]{BottomCommonBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.dismissPartySettingBubble();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void doShoppingAnimation() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 29, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        ViewGroup rootView = getRootView();
        int i11 = R$id.f128644p;
        AdvertisingBoardView advertisingBoardView = (AdvertisingBoardView) rootView.findViewById(i11);
        if (advertisingBoardView == null) {
            return;
        }
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.0f, 1.0f, 0.0f, 1, 0.5f, 1, 1.0f);
        ViewGroup rootView2 = getRootView();
        int i12 = R$id.Ow;
        ImageView imageView = (ImageView) rootView2.findViewById(i12);
        int left = imageView != null ? imageView.getLeft() : 0;
        if (left <= 0) {
            ViewExtKt.j((AdvertisingBoardView) getRootView().findViewById(i11));
            return;
        }
        ViewGroup rootView3 = getRootView();
        int i13 = R$id.bI;
        PartyLottieAnimationView partyLottieAnimationView = (PartyLottieAnimationView) rootView3.findViewById(i13);
        ViewGroup.LayoutParams layoutParams = partyLottieAnimationView != null ? partyLottieAnimationView.getLayoutParams() : null;
        ConstraintLayout.LayoutParams layoutParams2 = layoutParams instanceof ConstraintLayout.LayoutParams ? (ConstraintLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            layoutParams2.setMarginStart(left);
            ImageView imageView2 = (ImageView) getRootView().findViewById(i12);
            ViewGroup.LayoutParams layoutParams3 = imageView2 != null ? imageView2.getLayoutParams() : null;
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
            ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = marginLayoutParams != null ? marginLayoutParams.bottomMargin : ExtensionsKt.dp(16);
            PartyLottieAnimationView partyLottieAnimationView2 = (PartyLottieAnimationView) getRootView().findViewById(i13);
            if (partyLottieAnimationView2 != null) {
                partyLottieAnimationView2.setLayoutParams(layoutParams2);
            }
        }
        int left2 = advertisingBoardView.getLeft();
        PartyLottieAnimationView partyLottieAnimationView3 = (PartyLottieAnimationView) getRootView().findViewById(i13);
        float measuredWidth = (left + (partyLottieAnimationView3 != null ? partyLottieAnimationView3.getMeasuredWidth() : 0)) - (left2 + (advertisingBoardView.getWidth() / 2.0f));
        PartyLottieAnimationView partyLottieAnimationView4 = (PartyLottieAnimationView) getRootView().findViewById(i13);
        if (partyLottieAnimationView4 != null) {
            partyLottieAnimationView4.i(new g());
        }
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, measuredWidth, 0.0f, 0.0f);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.setDuration(500L);
        animationSet.addAnimation(scaleAnimation);
        animationSet.addAnimation(translateAnimation);
        animationSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animationSet.setAnimationListener(new h());
        advertisingBoardView.setAnimation(animationSet);
        advertisingBoardView.startAnimation(animationSet);
    }

    private final void doShowGameGuideMask() {
        DispatchConstraintLayout dispatchConstraintLayout;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], Void.TYPE).isSupported || this.isBlockDestroyed || this.gameGuideMaskView != null || !canShowGameGuide() || (dispatchConstraintLayout = (DispatchConstraintLayout) getRootView().findViewById(R$id.YI)) == null) {
            return;
        }
        boolean zE = cn.soulapp.cpnt_voiceparty.util.e.f162158a.E();
        PartyMateImageView partyMateImageView = (PartyMateImageView) getRootView().findViewById(zE ? R$id.jM : R$id.Ht);
        if (partyMateImageView == null || !ViewExtKt.i(partyMateImageView)) {
            return;
        }
        Context context = dispatchConstraintLayout.getContext();
        kotlin.jvm.internal.v.i(context, "container.context");
        PartyGameGuideMaskView partyGameGuideMaskView = new PartyGameGuideMaskView(context, zE);
        partyGameGuideMaskView.setOnDismiss(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.BottomCommonBlock$doShowGameGuideMask$maskView$1$1
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
                this.this$0.gameGuideMaskView = null;
            }
        });
        dispatchConstraintLayout.addView(partyGameGuideMaskView, new ConstraintLayout.LayoutParams(-1, -1));
        partyGameGuideMaskView.i(partyMateImageView);
        this.gameGuideMaskView = partyGameGuideMaskView;
        int i11 = this.gameGuideMaskScene;
        if (i11 == 1) {
            k40.a.f229076a.e();
        } else if (i11 == 2) {
            k40.a.f229076a.f();
        }
        trackGameGuideMaskExposure();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String formatCountDownTime(long millis) {
        String strValueOf;
        String strValueOf2;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Long(millis)}, this, changeQuickRedirect, false, 17, new Class[]{Long.TYPE}, String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        long j11 = millis / ((long) 1000);
        long j12 = 60;
        long j13 = j11 / j12;
        long j14 = j11 % j12;
        if (0 <= j13 && j13 < 10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('0');
            sb2.append(j13);
            strValueOf = sb2.toString();
        } else {
            strValueOf = String.valueOf(j13);
        }
        if (0 <= j14 && j14 < 10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append('0');
            sb3.append(j14);
            strValueOf2 = sb3.toString();
        } else {
            strValueOf2 = String.valueOf(j14);
        }
        return strValueOf + ':' + strValueOf2;
    }

    private final View getInviteMakeRelationCardView() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], View.class);
        return patchProxyResultProxy.isSupported ? (View) patchProxyResultProxy.result : (View) this.inviteMakeRelationCardView.getValue();
    }

    private final void getPlaySetupList(Integer preselectClassifyType) {
        if (PatchProxy.proxy(new Object[]{preselectClassifyType}, this, changeQuickRedirect, false, 27, new Class[]{Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        Observer observerSubscribeWith = AnyExtKt.c(h30.g.f225309a.r7(), getActivity()).subscribeWith(new i(preselectClassifyType));
        kotlin.jvm.internal.v.i(observerSubscribeWith, "private fun getPlaySetup…       })\n        )\n    }");
        register((Disposable) observerSubscribeWith);
    }

    static /* synthetic */ void getPlaySetupList$default(BottomCommonBlock bottomCommonBlock, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = null;
        }
        bottomCommonBlock.getPlaySetupList(num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getSupplyStationProductList() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 28, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        h30.g gVar = h30.g.f225309a;
        String str = this.pageCursor;
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
        Observer observerSubscribeWith = AnyExtKt.c(gVar.E4(str, soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null), getActivity()).subscribeWith(new AnonymousClass1());
        kotlin.jvm.internal.v.i(observerSubscribeWith, "private fun getSupplySta…       })\n        )\n    }");
        register((Disposable) observerSubscribeWith);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: handlePlayCompanionRedDotEvent$lambda-40, reason: not valid java name */
    public static final void m6433handlePlayCompanionRedDotEvent$lambda40(BottomCommonBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 51, new Class[]{BottomCommonBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.refreshEntranceRedDot();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isMelancholyRoom() {
        ChatRoomModel chatRoomModelF;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
        return ((soulHouseDriverJ0 == null || (chatRoomModelF = SoulHouseExtensionKt.f(soulHouseDriverJ0)) == null) ? 0 : chatRoomModelF.createFrom) == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:39:0x00a7  */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-11, reason: not valid java name */
    public static final void m6434onReceiveMessage$lambda11(Object obj, BottomCommonBlock this$0) {
        boolean z11;
        RoomDataManager roomDataManagerA1;
        RoomUser roomUserA;
        Boolean bool;
        boolean z12 = false;
        if (PatchProxy.proxy(new Object[]{obj, this$0}, null, changeQuickRedirect, true, 43, new Class[]{Object.class, BottomCommonBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        HashMap map = obj instanceof HashMap ? (HashMap) obj : null;
        if (map != null) {
            String str = (String) map.get("jumpLink");
            if (str == null) {
                str = "";
            }
            String str2 = (String) map.get("iconLink");
            String str3 = str2 != null ? str2 : "";
            SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this$0.blockContainer.getDataBus());
            boolean zBooleanValue = (soulHouseDriverJ0 == null || (bool = (Boolean) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.F())) == null) ? false : bool.booleanValue();
            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this$0.blockContainer.getDataBus());
            boolean z13 = ((soulHouseDriverJ1 == null || (roomDataManagerA1 = soulHouseDriverJ1.a1()) == null || (roomUserA = RoomDataManager.A(roomDataManagerA1, false, 1, null)) == null) ? 0 : roomUserA.ktvSongBeatState) == 1;
            View viewFindViewById = this$0.getRootView().findViewById(R$id.f129282y8);
            if (viewFindViewById != null) {
                kotlin.jvm.internal.v.i(viewFindViewById, "findViewById<View>(R.id.comboActionView)");
                if (ViewExtKt.i(viewFindViewById)) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            } else {
                z11 = false;
            }
            View viewFindViewById2 = this$0.getRootView().findViewById(R$id.Wf);
            if (viewFindViewById2 != null) {
                kotlin.jvm.internal.v.i(viewFindViewById2, "findViewById<View>(R.id.giftKeepClickView)");
                if (ViewExtKt.i(viewFindViewById2)) {
                    z12 = true;
                }
            }
            if (zBooleanValue || z13 || this$0.isShowAdvertView || z11 || z12 || !e60.a.f223441a.a()) {
                return;
            }
            this$0.addInviteMakeRelationCardView(str, str3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-12, reason: not valid java name */
    public static final void m6435onReceiveMessage$lambda12(BottomCommonBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 44, new Class[]{BottomCommonBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.removeInviteMakeRelationCardView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-13, reason: not valid java name */
    public static final void m6436onReceiveMessage$lambda13(BottomCommonBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 45, new Class[]{BottomCommonBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.bindMoreStatus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-14, reason: not valid java name */
    public static final void m6437onReceiveMessage$lambda14(BottomCommonBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 46, new Class[]{BottomCommonBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        ViewExtKt.j((FrameLayout) this$0.getRootView().findViewById(R$id.f128190id));
        PartyMateImageView partyMateImageView = (PartyMateImageView) this$0.getRootView().findViewById(R$id.Jw);
        if (partyMateImageView != null) {
            ViewExtKt.j(partyMateImageView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-15, reason: not valid java name */
    public static final void m6438onReceiveMessage$lambda15(BottomCommonBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 47, new Class[]{BottomCommonBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        cn.soulapp.cpnt_voiceparty.highlightrecord.c.f142769a.i((FrameLayout) this$0.getRootView().findViewById(R$id.kM), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-16, reason: not valid java name */
    public static final void m6439onReceiveMessage$lambda16(BottomCommonBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 48, new Class[]{BottomCommonBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.showPlayFunctionDialogWithPreselect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-17, reason: not valid java name */
    public static final void m6440onReceiveMessage$lambda17(BottomCommonBlock this$0, int i11) {
        if (PatchProxy.proxy(new Object[]{this$0, new Integer(i11)}, null, changeQuickRedirect, true, 49, new Class[]{BottomCommonBlock.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.showGameGuideMask(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-3, reason: not valid java name */
    public static final void m6441onReceiveMessage$lambda3(BottomCommonBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 38, new Class[]{BottomCommonBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        RoomRedDotInfo roomRedDotInfo = (RoomRedDotInfo) this$0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.p0());
        if (roomRedDotInfo == null) {
            return;
        }
        roomRedDotInfo.setShowSeatApply(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-4, reason: not valid java name */
    public static final void m6442onReceiveMessage$lambda4(AdvertisingBoardModel model, BottomCommonBlock this$0) {
        if (PatchProxy.proxy(new Object[]{model, this$0}, null, changeQuickRedirect, true, 39, new Class[]{AdvertisingBoardModel.class, BottomCommonBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(model, "$model");
        kotlin.jvm.internal.v.j(this$0, "this$0");
        if (!kotlin.jvm.internal.v.e(model.getDisplay(), Boolean.TRUE)) {
            this$0.isShowAdvertView = false;
            AdvertisingBoardView advertisingBoardView = (AdvertisingBoardView) this$0.getRootView().findViewById(R$id.f128644p);
            if (advertisingBoardView != null) {
                ViewExtKt.j(advertisingBoardView);
                return;
            }
            return;
        }
        this$0.isShowAdvertView = true;
        this$0.removeInviteMakeRelationCardView();
        ViewGroup rootView = this$0.getRootView();
        int i11 = R$id.f128644p;
        AdvertisingBoardView advertisingBoardView2 = (AdvertisingBoardView) rootView.findViewById(i11);
        if (advertisingBoardView2 != null) {
            ViewExtKt.l(advertisingBoardView2);
        }
        AdvertisingBoardView advertisingBoardView3 = (AdvertisingBoardView) this$0.getRootView().findViewById(i11);
        if (advertisingBoardView3 != null) {
            advertisingBoardView3.a(model);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-5, reason: not valid java name */
    public static final void m6443onReceiveMessage$lambda5(BottomCommonBlock this$0, RelievePanelModel relievePanelModel) {
        Integer timeRemaining;
        MelancholySeatUserMeModel leftUserDTO;
        MelancholySeatUserMeModel rightUserDTO;
        int iIntValue = 0;
        z = false;
        boolean z11 = false;
        iIntValue = 0;
        if (PatchProxy.proxy(new Object[]{this$0, relievePanelModel}, null, changeQuickRedirect, true, 40, new Class[]{BottomCommonBlock.class, RelievePanelModel.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        String strW = cn.soulapp.android.client.component.middle.platform.utils.user.a.w();
        if (SoulHouseExtensionKt.y(this$0.blockContainer).getIsOwner()) {
            LinearLayout linearLayout = (LinearLayout) this$0.getRootView().findViewById(R$id.M3);
            if (linearLayout != null) {
                ExtensionsKt.visibleOrGone(linearLayout, true);
            }
            ConstraintLayout constraintLayout = (ConstraintLayout) this$0.getRootView().findViewById(R$id.f128314k7);
            if (constraintLayout != null) {
                ExtensionsKt.visibleOrGone(constraintLayout, false);
                return;
            }
            return;
        }
        String userId = null;
        if (!kotlin.jvm.internal.v.e((relievePanelModel == null || (rightUserDTO = relievePanelModel.getRightUserDTO()) == null) ? null : rightUserDTO.getUserId(), strW)) {
            if (relievePanelModel != null && (leftUserDTO = relievePanelModel.getLeftUserDTO()) != null) {
                userId = leftUserDTO.getUserId();
            }
            if (!kotlin.jvm.internal.v.e(userId, strW)) {
                LinearLayout linearLayout2 = (LinearLayout) this$0.getRootView().findViewById(R$id.M3);
                if (linearLayout2 != null) {
                    RoomUser me2 = SoulHouseExtensionKt.y(this$0.blockContainer).getMe();
                    if (me2 != null && me2.userIsOnSeat()) {
                        z11 = true;
                    }
                    ExtensionsKt.visibleOrGone(linearLayout2, z11);
                }
                ViewGroup rootView = this$0.getRootView();
                int i11 = R$id.f128314k7;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) rootView.findViewById(i11);
                if (constraintLayout2 != null) {
                    ExtensionsKt.visibleOrGone(constraintLayout2, true);
                }
                ConstraintLayout constraintLayout3 = (ConstraintLayout) this$0.getRootView().findViewById(i11);
                if (constraintLayout3 != null) {
                    constraintLayout3.setBackgroundResource(R$drawable.Z0);
                }
                TextView textView = (TextView) this$0.getRootView().findViewById(R$id.Fa0);
                if (textView != null) {
                    textView.setText("连线解忧");
                }
                ViewExtKt.j((TextView) this$0.getRootView().findViewById(R$id.Ga0));
                CountDownTimer countDownTimer = this$0.timer;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                    return;
                }
                return;
            }
        }
        LinearLayout linearLayout3 = (LinearLayout) this$0.getRootView().findViewById(R$id.M3);
        if (linearLayout3 != null) {
            ExtensionsKt.visibleOrGone(linearLayout3, true);
        }
        ViewGroup rootView2 = this$0.getRootView();
        int i12 = R$id.f128314k7;
        ConstraintLayout constraintLayout4 = (ConstraintLayout) rootView2.findViewById(i12);
        if (constraintLayout4 != null) {
            ExtensionsKt.visibleOrGone(constraintLayout4, true);
        }
        ConstraintLayout constraintLayout5 = (ConstraintLayout) this$0.getRootView().findViewById(i12);
        if (constraintLayout5 != null) {
            constraintLayout5.setBackgroundResource(R$drawable.f127093a1);
        }
        TextView textView2 = (TextView) this$0.getRootView().findViewById(R$id.Fa0);
        if (textView2 != null) {
            textView2.setText("结束连线");
        }
        ViewExtKt.l((TextView) this$0.getRootView().findViewById(R$id.Ga0));
        if (relievePanelModel != null && (timeRemaining = relievePanelModel.getTimeRemaining()) != null) {
            iIntValue = timeRemaining.intValue();
        }
        this$0.starCountDown(iIntValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-6, reason: not valid java name */
    public static final void m6444onReceiveMessage$lambda6(Object obj, BottomCommonBlock this$0) {
        if (PatchProxy.proxy(new Object[]{obj, this$0}, null, changeQuickRedirect, true, 41, new Class[]{Object.class, BottomCommonBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        Map map = obj instanceof Map ? (Map) obj : null;
        Object obj2 = map != null ? map.get("subPageCallback") : null;
        this$0.showInterestDialog(kotlin.jvm.internal.e0.m(obj2, 1) ? (Function1) obj2 : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-9, reason: not valid java name */
    public static final void m6445onReceiveMessage$lambda9(BottomCommonBlock this$0, OperationModel model) {
        if (PatchProxy.proxy(new Object[]{this$0, model}, null, changeQuickRedirect, true, 42, new Class[]{BottomCommonBlock.class, OperationModel.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(model, "$model");
        ViewGroup rootView = this$0.getRootView();
        int i11 = R$id.Jw;
        PartyMateImageView partyMateImageView = (PartyMateImageView) rootView.findViewById(i11);
        if (partyMateImageView != null) {
            partyMateImageView.F(model.getShowImage());
        }
        if (SKV.single().getBoolean(KEY_ACTIVITY_CENTER_RED_DOT_SHOWN, false)) {
            this$0.refreshEntranceRedDot();
        } else {
            View viewFindViewById = this$0.getRootView().findViewById(R$id.Qs);
            if (viewFindViewById != null) {
                ViewExtKt.l(viewFindViewById);
            }
            SKV.single().putBoolean(KEY_ACTIVITY_CENTER_RED_DOT_SHOWN, true);
        }
        PartyMateImageView partyMateImageView2 = (PartyMateImageView) this$0.getRootView().findViewById(i11);
        if (partyMateImageView2 != null) {
            partyMateImageView2.setOnClickListener(new p(partyMateImageView2, 500L, this$0, model));
        }
        this$0.bindMoreStatus();
    }

    private final void realShowPartySettingBubble() {
        FrameLayout frameLayout;
        Window window;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 22, new Class[0], Void.TYPE).isSupported || SoulHouseExtensionKt.s0(getDataBus()) || (frameLayout = (FrameLayout) getRootView().findViewById(R$id.kM)) == null) {
            return;
        }
        MartianActivity activity = getActivity();
        View decorView = (activity == null || (window = activity.getWindow()) == null) ? null : window.getDecorView();
        ViewGroup viewGroup = decorView instanceof ViewGroup ? (ViewGroup) decorView : null;
        if (viewGroup == null || frameLayout.getWidth() == 0 || frameLayout.getHeight() == 0 || !frameLayout.isShown()) {
            return;
        }
        final View viewInflate = this.partySettingBubbleView;
        if (viewInflate == null) {
            viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.Sj, viewGroup, false);
            viewInflate.setOnClickListener(new q(viewInflate, 500L, this));
            this.partySettingBubbleView = viewInflate;
        }
        if (viewInflate.getParent() == null) {
            viewGroup.addView(viewInflate, new FrameLayout.LayoutParams(ExtensionsKt.dp(178), -2));
        }
        viewInflate.post(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.i
            @Override // java.lang.Runnable
            public final void run() {
                BottomCommonBlock.m6446realShowPartySettingBubble$lambda33(this.f146839a, viewInflate);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: realShowPartySettingBubble$lambda-33, reason: not valid java name */
    public static final void m6446realShowPartySettingBubble$lambda33(BottomCommonBlock this$0, View view) {
        if (PatchProxy.proxy(new Object[]{this$0, view}, null, changeQuickRedirect, true, 50, new Class[]{BottomCommonBlock.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.updatePartySettingBubblePosition();
        view.removeCallbacks(this$0.dismissPartySettingBubbleRunnable);
        view.postDelayed(this$0.dismissPartySettingBubbleRunnable, PARTY_SETTING_BUBBLE_DURATION);
        SKV.single().putBoolean(KEY_PARTY_SETTING_BUBBLE_SHOWN, true);
        DataBus dataBus = this$0.getDataBus();
        cn.soulapp.cpnt_voiceparty.soulhouse.b bVar = cn.soulapp.cpnt_voiceparty.soulhouse.b.f145790a;
        DataBus dataBus2 = (DataBus) dataBus.d(bVar.t());
        if (dataBus2 != null) {
            dataBus2.k(bVar.x(), 0L);
        }
    }

    private final void refreshEntranceRedDot() {
        View viewFindViewById;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 32, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        if (this.playCompanionHasRedDot) {
            PartyMateImageView partyMateImageView = (PartyMateImageView) getRootView().findViewById(R$id.Jw);
            if (partyMateImageView != null && partyMateImageView.getVisibility() == 0) {
                View viewFindViewById2 = getRootView().findViewById(R$id.Qs);
                if (viewFindViewById2 != null) {
                    ViewExtKt.l(viewFindViewById2);
                }
                if (this.playCompanionDotExposed) {
                    return;
                }
                this.playCompanionDotExposed = true;
                trackPlayCompanionDot(false);
                return;
            }
        }
        if (this.playCompanionHasRedDot || (!SKV.single().getBoolean(KEY_ACTIVITY_CENTER_RED_DOT_SHOWN, false)) || (viewFindViewById = getRootView().findViewById(R$id.Qs)) == null) {
            return;
        }
        ViewExtKt.j(viewFindViewById);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeInviteMakeRelationCardView() {
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 13, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        ViewGroup rootView = getRootView();
        int i11 = R$id.YI;
        DispatchConstraintLayout dispatchConstraintLayout = (DispatchConstraintLayout) rootView.findViewById(i11);
        if (dispatchConstraintLayout != null) {
            View inviteMakeRelationCardView = getInviteMakeRelationCardView();
            kotlin.jvm.internal.v.i(inviteMakeRelationCardView, "inviteMakeRelationCardView");
            if (dispatchConstraintLayout.indexOfChild(inviteMakeRelationCardView) != -1) {
                z11 = true;
            }
        }
        if (z11) {
            CircleProgressView circleProgressView = (CircleProgressView) getInviteMakeRelationCardView().findViewById(R$id.f128454m8);
            if (circleProgressView != null) {
                circleProgressView.f();
            }
            DispatchConstraintLayout dispatchConstraintLayout2 = (DispatchConstraintLayout) getRootView().findViewById(i11);
            if (dispatchConstraintLayout2 != null) {
                dispatchConstraintLayout2.removeView(getInviteMakeRelationCardView());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showGameGuideMask(int i11) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 7, new Class[]{Integer.TYPE}, Void.TYPE).isSupported || this.isBlockDestroyed || this.gameGuideMaskView != null) {
            return;
        }
        this.gameGuideMaskScene = i11;
        getRootView().removeCallbacks(this.showGameGuideMaskRunnable);
        getRootView().postDelayed(this.showGameGuideMaskRunnable, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showGameGuideMaskRunnable$lambda-0, reason: not valid java name */
    public static final void m6447showGameGuideMaskRunnable$lambda0(BottomCommonBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 35, new Class[]{BottomCommonBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.doShowGameGuideMask();
    }

    private final void showInterestDialog(Function1<? super DialogFragment, kotlin.w> function1) {
        if (PatchProxy.proxy(new Object[]{function1}, this, changeQuickRedirect, false, 19, new Class[]{Function1.class}, Void.TYPE).isSupported) {
            return;
        }
        if (cn.soulapp.cpnt_voiceparty.util.e.f162158a.E()) {
            if (SoulHouseExtensionKt.a(this.blockContainer)) {
                ActivityCenterOwnerDialogUx activityCenterOwnerDialogUxA = ActivityCenterOwnerDialogUx.INSTANCE.a(this.blockContainer.getDataBus());
                this.bottomMoreDialog = activityCenterOwnerDialogUxA;
                if (function1 != null) {
                    function1.invoke(activityCenterOwnerDialogUxA);
                } else {
                    activityCenterOwnerDialogUxA.show(SoulHouseExtensionKt.k(this));
                }
            } else {
                ActivityCenterDialogUx activityCenterDialogUxA = ActivityCenterDialogUx.INSTANCE.a(this.blockContainer.getDataBus());
                this.bottomMoreDialog = activityCenterDialogUxA;
                if (function1 != null) {
                    function1.invoke(activityCenterDialogUxA);
                } else {
                    activityCenterDialogUxA.show(SoulHouseExtensionKt.k(this));
                }
            }
        } else if (SoulHouseExtensionKt.a(this.blockContainer)) {
            ActivityCenterOwnerDialog activityCenterOwnerDialogA = ActivityCenterOwnerDialog.INSTANCE.a(this.blockContainer.getDataBus());
            this.bottomMoreDialog = activityCenterOwnerDialogA;
            if (activityCenterOwnerDialogA == null) {
                throw new NullPointerException("null cannot be cast to non-null type cn.soulapp.cpnt_voiceparty.soulhouse.dialog.ActivityCenterOwnerDialog");
            }
            activityCenterOwnerDialogA.show(SoulHouseExtensionKt.k(this));
        } else {
            ActivityCenterDialog activityCenterDialogA = ActivityCenterDialog.INSTANCE.a(this.blockContainer.getDataBus());
            this.bottomMoreDialog = activityCenterDialogA;
            if (activityCenterDialogA == null) {
                throw new NullPointerException("null cannot be cast to non-null type cn.soulapp.cpnt_voiceparty.soulhouse.dialog.ActivityCenterDialog");
            }
            activityCenterDialogA.show(SoulHouseExtensionKt.k(this));
        }
        cn.soulapp.cpnt_voiceparty.util.track.a.f162372a.a(this.blockContainer.getDataBus(), Const.EventType.CLICK, "huodongzhongxin_dagongnengrukou_button_clk");
        this.showMoreDialogIsManager = Boolean.valueOf(SoulHouseExtensionKt.y(this.blockContainer).getIsManager());
        View viewFindViewById = getRootView().findViewById(R$id.Qs);
        if (viewFindViewById != null) {
            ViewExtKt.j(viewFindViewById);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void showInterestDialog$default(BottomCommonBlock bottomCommonBlock, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            function1 = null;
        }
        bottomCommonBlock.showInterestDialog(function1);
    }

    private final void showPartySettingBubbleIfNeeded() {
        Long l11;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 21, new Class[0], Void.TYPE).isSupported || SoulHouseExtensionKt.s0(getDataBus()) || SKV.single().getBoolean(KEY_PARTY_SETTING_BUBBLE_SHOWN, false)) {
            return;
        }
        DataBus dataBus = getDataBus();
        cn.soulapp.cpnt_voiceparty.soulhouse.b bVar = cn.soulapp.cpnt_voiceparty.soulhouse.b.f145790a;
        DataBus dataBus2 = (DataBus) dataBus.d(bVar.t());
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jLongValue = (dataBus2 == null || (l11 = (Long) dataBus2.d(bVar.x())) == null) ? 0L : l11.longValue();
        if (jLongValue <= 0 && dataBus2 != null) {
            dataBus2.k(bVar.x(), Long.valueOf(jElapsedRealtime));
        }
        if (jLongValue <= 0) {
            jLongValue = jElapsedRealtime;
        }
        long jF = kotlin.ranges.n.f(PARTY_SETTING_BUBBLE_SHOW_DELAY - (jElapsedRealtime - jLongValue), 0L);
        ViewGroup rootView = getRootView();
        int i11 = R$id.kM;
        FrameLayout frameLayout = (FrameLayout) rootView.findViewById(i11);
        if (frameLayout != null) {
            frameLayout.removeCallbacks(this.showPartySettingBubbleRunnable);
        }
        FrameLayout frameLayout2 = (FrameLayout) getRootView().findViewById(i11);
        if (frameLayout2 != null) {
            frameLayout2.postDelayed(this.showPartySettingBubbleRunnable, jF);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showPartySettingBubbleRunnable$lambda-1, reason: not valid java name */
    public static final void m6448showPartySettingBubbleRunnable$lambda1(BottomCommonBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 36, new Class[]{BottomCommonBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.realShowPartySettingBubble();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showPlayFunctionDialog(Integer preselectClassifyType) {
        if (PatchProxy.proxy(new Object[]{preselectClassifyType}, this, changeQuickRedirect, false, 11, new Class[]{Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        RoomPlayFunctionDialog roomPlayFunctionDialogA = RoomPlayFunctionDialog.INSTANCE.a(this.blockContainer.getDataBus(), preselectClassifyType);
        if (preselectClassifyType != null) {
            roomPlayFunctionDialogA.B(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.BottomCommonBlock$showPlayFunctionDialog$1$1
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
                    if (!PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported && k40.a.f229076a.n() && this.this$0.canShowGameGuide()) {
                        this.this$0.showGameGuideMask(2);
                    }
                }
            });
        }
        roomPlayFunctionDialogA.show(SoulHouseExtensionKt.k(this), "RoomPlayFunctionDialog");
    }

    private final void showPlayFunctionDialogWithPreselect() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
        if ((soulHouseDriverJ0 != null ? (PlayFunctionBean) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.b0()) : null) == null) {
            getPlaySetupList(1);
        } else {
            showPlayFunctionDialog(1);
        }
    }

    private final void starCountDown(int i11) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 16, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        long j11 = ((long) i11) * 1000;
        ((TextView) getRootView().findViewById(R$id.Ga0)).setText(formatCountDownTime(j11));
        r rVar = new r(j11);
        this.timer = rVar;
        rVar.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void trackClickclk_shopping() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 34, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulAnalyticsV2.getInstance().onEvent(Const.EventType.CLICK, "clk_shopping", new HashMap());
    }

    private final void trackGameGuideMaskExposure() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 9, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
        Pair[] pairArr = new Pair[4];
        String str = soulHouseDriverJ0 != null ? (String) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.c0()) : null;
        if (str == null) {
            str = "";
        }
        pairArr[0] = kotlin.m.a("tuid", str);
        String strR = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.r(soulHouseDriverJ0) : null;
        if (strR == null) {
            strR = "";
        }
        pairArr[1] = kotlin.m.a("JoinCode", strR);
        String strV = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.v(soulHouseDriverJ0) : null;
        pairArr[2] = kotlin.m.a("joinUniqueCode", strV != null ? strV : "");
        Integer numI = cn.soulapp.cpnt_voiceparty.function.b0.f142548a.i(soulHouseDriverJ0);
        pairArr[3] = kotlin.m.a("playtype", String.valueOf(numI != null ? numI.intValue() : 0));
        cn.soulapp.android.client.component.middle.platform.utils.track.d.g("GroupChat_RoomDetail_MoreGameGuide", kotlin.collections.r0.n(pairArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void trackPlayCompanionDot(boolean z11) {
        if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 33, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("room_id", SoulHouseExtensionKt.N(this.blockContainer));
        ChatRoomModel chatRoomModel = SoulHouseExtensionKt.s(this.blockContainer).chatRoomModel;
        linkedHashMap.put("room_type", String.valueOf(chatRoomModel != null ? chatRoomModel.classifyCode : 7));
        linkedHashMap.put("role", this.playCompanionRole);
        SoulAnalyticsV2.getInstance().onEvent(z11 ? Const.EventType.CLICK : "exp", z11 ? EID_GAMEPLAY_DOT_CLICK : EID_GAMEPLAY_DOT_EXPO, PAID_GAMEPLAY_ROOM_ENTRY, linkedHashMap, kotlin.collections.r0.o(new Pair("dot_type", this.playCompanionDotType)));
    }

    private final void updatePartySettingBubblePosition() {
        View view;
        FrameLayout frameLayout;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 23, new Class[0], Void.TYPE).isSupported || (view = this.partySettingBubbleView) == null) {
            return;
        }
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup == null || (frameLayout = (FrameLayout) getRootView().findViewById(R$id.kM)) == null || !frameLayout.isShown()) {
            return;
        }
        int[] iArr = new int[2];
        frameLayout.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        viewGroup.getLocationOnScreen(iArr2);
        int measuredHeight = view.getMeasuredHeight() > 0 ? view.getMeasuredHeight() : ExtensionsKt.dp(63);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 == null) {
            layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        }
        layoutParams2.setMarginStart(iArr[0] - iArr2[0]);
        layoutParams2.topMargin = ((iArr[1] - iArr2[1]) - measuredHeight) - ExtensionsKt.dp(10);
        view.setLayoutParams(layoutParams2);
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.common.SoulHouseBlock
    public boolean canReceiveMessage(@NotNull BlockMessage msgType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{msgType}, this, changeQuickRedirect, false, 4, new Class[]{BlockMessage.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        kotlin.jvm.internal.v.j(msgType, "msgType");
        return msgType == BlockMessage.MSG_APPLY_MICROPHONE_ON || msgType == BlockMessage.MSG_ORIENTATION_CHANGE || msgType == BlockMessage.MSG_ORIENTATION_RECOVER || msgType == BlockMessage.MSG_ACTION_ADVERTISING_BANNER || msgType == BlockMessage.UPDATE_RELIEVE_PANEL_DATA || msgType == BlockMessage.MSG_SHOW_INTEREST_CENTER_DIALOG || msgType == BlockMessage.MSG_RELATION_SEND_GUIDE || msgType == BlockMessage.MSG_INVITE_MAKE_RELATION_CARD_SHOW || msgType == BlockMessage.MSG_SWITCH_PLAY_TYPE || msgType == BlockMessage.NEW_ACTIVITY_ICON || msgType == BlockMessage.MSG_SHOW_MORE_ICON || msgType == BlockMessage.MSG_HIDE_MORE_ICON || msgType == BlockMessage.MSG_HIGHLIGHT_ENTRY_GUIDE_SHOW || msgType == BlockMessage.MSG_SHOW_PLAY_FUNCTION_DIALOG || msgType == BlockMessage.MSG_SHOW_GAME_GUIDE_MASK || msgType == BlockMessage.MSG_HOUSE_ACTIVITY_ON_RESUME;
    }

    @Subscribe
    public final void handlePlayCompanionRedDotEvent(@NotNull l30.i event) {
        if (PatchProxy.proxy(new Object[]{event}, this, changeQuickRedirect, false, 31, new Class[]{l30.i.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(event, "event");
        if (event.getF233233b() < this.playCompanionLastOccurTime) {
            return;
        }
        this.playCompanionLastOccurTime = event.getF233233b();
        this.playCompanionHasRedDot = event.getF233232a();
        String f233234c = event.getF233234c();
        if (f233234c != null) {
            if (!(f233234c.length() > 0)) {
                f233234c = null;
            }
            if (f233234c != null) {
                this.playCompanionRole = f233234c;
            }
        }
        String f233235d = event.getF233235d();
        if (f233235d != null) {
            String str = f233235d.length() > 0 ? f233235d : null;
            if (str != null) {
                this.playCompanionDotType = str;
            }
        }
        runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.m
            @Override // java.lang.Runnable
            public final void run() {
                BottomCommonBlock.m6433handlePlayCompanionRedDotEvent$lambda40(this.f146873a);
            }
        });
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.common.SoulHouseBlock, cn.soul.android.base.block_frame.block.Block
    public void initView(@NotNull ViewGroup root) {
        if (PatchProxy.proxy(new Object[]{root}, this, changeQuickRedirect, false, 18, new Class[]{ViewGroup.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(root, "root");
        super.initView(root);
        registerEventBus(this);
        if (cn.soulapp.cpnt_voiceparty.util.e.f162158a.E()) {
            adaptPartyNewUX();
        } else {
            bindPlayFunc();
        }
        bindMoreStatus();
        ViewGroup rootView = getRootView();
        int i11 = R$id.Ow;
        ImageView imageView = (ImageView) rootView.findViewById(i11);
        if (imageView != null) {
            ExtensionsKt.visibleOrGone(imageView, SoulHouseExtensionKt.s(this.blockContainer).partySupplyDepot);
        }
        ImageView imageView2 = (ImageView) getRootView().findViewById(i11);
        if (imageView2 != null) {
            imageView2.setOnClickListener(new j(imageView2, 500L, this));
        }
        LinearLayout linearLayout = (LinearLayout) getRootView().findViewById(R$id.M3);
        if (linearLayout != null) {
            ExtensionsKt.visibleOrGone(linearLayout, !isMelancholyRoom() || SoulHouseExtensionKt.y(this.blockContainer).getIsOwner());
        }
        ViewGroup rootView2 = getRootView();
        int i12 = R$id.f128314k7;
        ConstraintLayout constraintLayout = (ConstraintLayout) rootView2.findViewById(i12);
        if (constraintLayout != null) {
            ExtensionsKt.visibleOrGone(constraintLayout, isMelancholyRoom() && !SoulHouseExtensionKt.y(this.blockContainer).getIsOwner());
        }
        ConstraintLayout constraintLayout2 = (ConstraintLayout) getRootView().findViewById(i12);
        constraintLayout2.setOnClickListener(new k(constraintLayout2, 500L, this));
        RelieveAnxietyView relieveAnxietyView = (RelieveAnxietyView) getRootView().findViewById(R$id.gP);
        if (relieveAnxietyView != null) {
            ExtensionsKt.visibleOrGone(relieveAnxietyView, isMelancholyRoom());
        }
        AdvertisingBoardView advertisingBoardView = (AdvertisingBoardView) getRootView().findViewById(R$id.f128644p);
        if (advertisingBoardView != null) {
            advertisingBoardView.setCallback(new m());
        }
        RoomDataManager roomDataManagerL = SoulHouseExtensionKt.L(this);
        if (roomDataManagerL != null) {
            roomDataManagerL.m(this.managerChangeListener);
        }
        RoomDataManager roomDataManagerL2 = SoulHouseExtensionKt.L(this);
        if (roomDataManagerL2 != null) {
            roomDataManagerL2.p(this.mySeatChangeListener);
        }
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.common.SoulHouseBlock, cn.soul.android.base.block_frame.block.Block, cn.soul.android.base.block_frame.block.IBlockLifecycle
    public void onDestroy() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 30, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        unRegisterEventBus(this);
        super.onDestroy();
        dismissPartySettingBubble();
        this.isBlockDestroyed = true;
        getRootView().removeCallbacks(this.showGameGuideMaskRunnable);
        PartyGameGuideMaskView partyGameGuideMaskView = this.gameGuideMaskView;
        ViewParent parent = partyGameGuideMaskView != null ? partyGameGuideMaskView.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.gameGuideMaskView);
        }
        this.gameGuideMaskView = null;
        removeInviteMakeRelationCardView();
        RoomDataManager roomDataManagerL = SoulHouseExtensionKt.L(this);
        if (roomDataManagerL != null) {
            roomDataManagerL.W(this.managerChangeListener);
        }
        RoomDataManager roomDataManagerL2 = SoulHouseExtensionKt.L(this);
        if (roomDataManagerL2 != null) {
            roomDataManagerL2.Z(this.mySeatChangeListener);
        }
        DialogFragment dialogFragment = this.bottomMoreDialog;
        if (dialogFragment != null) {
            dialogFragment.dismiss();
        }
        this.bottomMoreDialog = null;
        this.pageCursor = "";
        SupplyStationFragment supplyStationFragment = this.supplyStationFragment;
        if (supplyStationFragment != null) {
            supplyStationFragment.dismiss();
        }
        this.supplyStationFragment = null;
        ImageView imageView = (ImageView) getRootView().findViewById(R$id.Os);
        if (imageView != null) {
            imageView.setOnClickListener(null);
        }
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.timer = null;
    }

    @Override // cn.soul.android.base.block_frame.block.Block, cn.soul.android.base.block_frame.block.IBlockLifecycle
    public void onPause() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 15, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        super.onPause();
        this.isResumed = false;
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.common.SoulHouseBlock
    public void onReceiveMessage(@NotNull BlockMessage msgType, @Nullable final Object obj) {
        if (PatchProxy.proxy(new Object[]{msgType, obj}, this, changeQuickRedirect, false, 5, new Class[]{BlockMessage.class, Object.class}, Void.TYPE).isSupported) {
        }
        kotlin.jvm.internal.v.j(msgType, "msgType");
        switch (b.f146572a[msgType.ordinal()]) {
            case 1:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        BottomCommonBlock.m6441onReceiveMessage$lambda3(this.f146809a);
                    }
                });
                break;
            case 2:
                final AdvertisingBoardModel advertisingBoardModel = obj instanceof AdvertisingBoardModel ? (AdvertisingBoardModel) obj : null;
                if (advertisingBoardModel != null) {
                    runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.p
                        @Override // java.lang.Runnable
                        public final void run() {
                            BottomCommonBlock.m6442onReceiveMessage$lambda4(advertisingBoardModel, this);
                        }
                    });
                    break;
                }
                break;
            case 3:
                final RelievePanelModel relievePanelModel = obj instanceof RelievePanelModel ? (RelievePanelModel) obj : null;
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        BottomCommonBlock.m6443onReceiveMessage$lambda5(this.f146907a, relievePanelModel);
                    }
                });
                break;
            case 4:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        BottomCommonBlock.m6444onReceiveMessage$lambda6(obj, this);
                    }
                });
                break;
            case 5:
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
                if (soulHouseDriverJ0 != null && soulHouseDriverJ0.getPendingApplyMic()) {
                    soulHouseDriverJ0.v2(false);
                    sendMessage(BlockMessage.MSG_APPLY_UP_SEAT);
                    break;
                }
                break;
            case 6:
                final OperationModel operationModel = (OperationModel) obj;
                if (operationModel != null) {
                    runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.s
                        @Override // java.lang.Runnable
                        public final void run() {
                            BottomCommonBlock.m6445onReceiveMessage$lambda9(this.f146923a, operationModel);
                        }
                    });
                    break;
                }
                break;
            case 7:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        BottomCommonBlock.m6434onReceiveMessage$lambda11(obj, this);
                    }
                });
                break;
            case 8:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        BottomCommonBlock.m6435onReceiveMessage$lambda12(this.f146940a);
                    }
                });
                break;
            case 9:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        BottomCommonBlock.m6436onReceiveMessage$lambda13(this.f146949a);
                    }
                });
                break;
            case 10:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        BottomCommonBlock.m6437onReceiveMessage$lambda14(this.f146822a);
                    }
                });
                break;
            case 11:
                if (cn.soulapp.cpnt_voiceparty.util.e.f162158a.E()) {
                    runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            BottomCommonBlock.m6438onReceiveMessage$lambda15(this.f146831a);
                        }
                    });
                }
                break;
            case 12:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        BottomCommonBlock.m6439onReceiveMessage$lambda16(this.f146883a);
                    }
                });
                break;
            case 13:
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                if (num != null) {
                    final int iIntValue = num.intValue();
                    runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.bottom.o
                        @Override // java.lang.Runnable
                        public final void run() {
                            BottomCommonBlock.m6440onReceiveMessage$lambda17(this.f146889a, iIntValue);
                        }
                    });
                }
                break;
        }
    }

    @Override // cn.soul.android.base.block_frame.block.Block, cn.soul.android.base.block_frame.block.IBlockLifecycle
    public void onResume() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 14, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        super.onResume();
        this.isResumed = true;
    }
}