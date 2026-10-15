package cn.soulapp.cpnt_voiceparty.soulhouse.common;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import cn.android.lib.soul_entity.square.PostRoomProfileModel;
import cn.android.lib.soul_entity.square.PostRoomProfileModelV1;
import cn.soul.android.base.block_frame.block.Container;
import cn.soul.android.component.SoulRouter;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.insight.log.core.api.Api;
import cn.soul.lib_dialog.R$style;
import cn.soul.lib_dialog.SoulDialog;
import cn.soul.lib_dialog.SoulDialogFragment;
import cn.soul.lib_dialog.base.ClosePos;
import cn.soul.lib_dialog.util.SoulDialogType;
import cn.soulapp.android.chatroom.bean.ChatRoomModel;
import cn.soulapp.android.chatroom.componentservice.PartyRoomSource;
import cn.soulapp.android.chatroom.data.RoomDataManager;
import cn.soulapp.android.client.component.middle.platform.bean.im.RoomUser;
import cn.soulapp.android.lib.analyticsV2.Const;
import cn.soulapp.android.lib.analyticsV2.SoulAnalyticsV2;
import cn.soulapp.android.lib.common.utils.DateUtil;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.android.lib.common.utils.GsonTool;
import cn.soulapp.android.lib.common.utils.SimpleAnimatorListener;
import cn.soulapp.android.lib.common.utils.mmkv.SKV;
import cn.soulapp.android.lib.photopicker.bean.PhotoTab;
import cn.soulapp.android.net.HttpResult;
import cn.soulapp.android.square.ExitReason;
import cn.soulapp.android.square.IPartyRoomHost;
import cn.soulapp.android.utils.AnyExtKt;
import cn.soulapp.cpnt_voiceparty.R$drawable;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.R$string;
import cn.soulapp.cpnt_voiceparty.api.ISoulHouse;
import cn.soulapp.cpnt_voiceparty.bean.ClickLikePartyConfig;
import cn.soulapp.cpnt_voiceparty.bean.CommonMessage;
import cn.soulapp.cpnt_voiceparty.bean.MyInfoInRoom;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import cn.soulapp.cpnt_voiceparty.bean.RoomConfigBean;
import cn.soulapp.cpnt_voiceparty.bean.SendSoundCardInfo;
import cn.soulapp.cpnt_voiceparty.bean.SetManagerModel;
import cn.soulapp.cpnt_voiceparty.dialog.GuessQuestionDialog;
import cn.soulapp.cpnt_voiceparty.dialog.SoundCardHelpLightDialog;
import cn.soulapp.cpnt_voiceparty.dialog.SoundCardSendDialog;
import cn.soulapp.cpnt_voiceparty.melancholy.MelancholyFinishedDialog;
import cn.soulapp.cpnt_voiceparty.melancholy.RelieveEndModel;
import cn.soulapp.cpnt_voiceparty.melancholy.RelievePanelModel;
import cn.soulapp.cpnt_voiceparty.mvvm.ChatRoomListViewModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseActivity;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.MelancholyMasterModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.UnlockGiftWallModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.dialog.ReceiveManagerInviteDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.dialog.UnlockGiftBackgroundDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.slice.CommonSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.slice.SliceManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.SongListCollectTipDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.unparalleledlevel.ReceivedUnparalleledCardDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.unparalleledlevel.ReceivedUnparalleledLevelModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.unparalleledlevel.SendUnparalleledMedalDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.widget.MelancholyView;
import cn.soulapp.cpnt_voiceparty.soulhouse.widget.RelieveAnxietyView;
import cn.soulapp.cpnt_voiceparty.ui.ChatRoomListActivity;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.BlockMessage;
import cn.soulapp.cpnt_voiceparty.util.CommonUtil;
import cn.soulapp.cpnt_voiceparty.util.DataConvertUtil;
import cn.soulapp.cpnt_voiceparty.widget.DispatchConstraintLayout;
import cn.soulapp.cpnt_voiceparty.widget.IOnDispatchTouchListener;
import cn.soulapp.cpnt_voiceparty.widget.limitfps.LimitFpsLottieAnimationView;
import cn.soulapp.lib.basic.mvp.MartianActivity;
import cn.soulapp.lib.utils.ext.ViewExtKt;
import com.alipay.alipaysecuritysdk.common.config.Constant;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.dtf.toyger.base.face.ToygerFaceAlgorithmConfig;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.soulapp.live.message.LivePushMessage;
import com.tencent.xmagic.avatar.AvatarCategory;
import com.walid.rxretrofit.HttpSubscriber;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: CommonBusinessBlock.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u0000Â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 s2\u00020\u0001:\u0001tB\u000f\u0012\u0006\u0010@\u001a\u00020?¢\u0006\u0004\bq\u0010rJ\u001e\u0010\u0006\u001a\u00020\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0002J\u001c\u0010\u0007\u001a\u00020\u00052\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0003J\u0012\u0010\r\u001a\u00020\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u0003H\u0002J\u001a\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\u0010\u001a\u00020\u0005H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0013\u001a\u00020\u0005H\u0002J\u0012\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002J\b\u0010\u0018\u001a\u00020\u0005H\u0002J \u0010\u001b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0003H\u0002J\u0010\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\tH\u0002J\u0010\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001eH\u0002J\u0010\u0010!\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001eH\u0002J \u0010'\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$H\u0002J*\u0010,\u001a\u00020\u00112\b\u0010(\u001a\u0004\u0018\u00010\"2\u0006\u0010)\u001a\u00020$2\u0006\u0010*\u001a\u00020$2\u0006\u0010+\u001a\u00020\tH\u0002J\u0018\u0010-\u001a\u00020\u00052\u0006\u0010)\u001a\u00020$2\u0006\u0010*\u001a\u00020$H\u0002J\n\u0010/\u001a\u0004\u0018\u00010.H\u0002J\b\u00100\u001a\u00020\tH\u0002J\b\u00101\u001a\u00020\u0005H\u0002J\b\u00102\u001a\u00020\u0005H\u0002J\b\u00103\u001a\u00020\u0005H\u0002J\b\u00104\u001a\u00020\u0005H\u0002J\b\u00105\u001a\u00020\u0005H\u0002J \u00106\u001a\u00020\u00052\u0006\u0010)\u001a\u00020$2\u0006\u0010*\u001a\u00020$2\u0006\u0010\u001c\u001a\u00020\tH\u0002J\u0010\u00109\u001a\u00020\u00112\u0006\u00108\u001a\u000207H\u0016J\u001a\u0010<\u001a\u00020\u00052\u0006\u00108\u001a\u0002072\b\u0010;\u001a\u0004\u0018\u00010:H\u0016J\u0010\u0010=\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\b\u0010>\u001a\u00020\u0005H\u0016R\u0014\u0010@\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\u0018\u0010C\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010F\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0018\u0010I\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR!\u0010Q\u001a\b\u0012\u0004\u0012\u00020L0K8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bM\u0010N\u001a\u0004\bO\u0010PR\u0018\u0010S\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR\u0018\u0010U\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\u0018\u0010W\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010VR\u0014\u0010Y\u001a\u00020X8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bY\u0010ZR\u0014\u0010\\\u001a\u00020[8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\\\u0010]R\u0014\u0010^\u001a\u00020[8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b^\u0010]R\u0016\u0010_\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u0016\u0010a\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010`R\u0016\u0010c\u001a\u00020b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010dR\u0016\u0010e\u001a\u00020b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010dR\u0016\u0010f\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0014\u0010h\u001a\u00020[8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bh\u0010]R\u0014\u0010j\u001a\u00020i8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bj\u0010kR\u0018\u0010m\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u0018\u0010o\u001a\u0004\u0018\u00010L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010p¨\u0006u"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/common/CommonBusinessBlock;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/common/SoulHouseBlock;", "", "", "map", "Lkotlin/w;", "showAskDialog", "showRoomTransferInviteDialog", "clearInviteDialog", "", "type", "replyRoomTransferInvite", "url", "openInviteFriendDialog", Constant.IN_KEY_USER_ID, "handleApproval", "back2PartyHallAnimIn", "", "needBackPartyHallHide", "redirectToAllTab", "Lcn/soulapp/cpnt_voiceparty/bean/CommonMessage;", "imMessage", "Landroid/text/SpannableStringBuilder;", "getMultiText", "receiveBeManagerInvite", "setManager", "userName", "managerControl", "count", "reportLikeCount", "Landroid/view/ViewGroup;", "root", "showLikePartyGuidanceIfNeed", "initLikeClickLogic", "Landroid/view/View;", "rv", "", "rawX", "rawY", "isTouchOnBlankArea", "view", "x", "y", ToygerFaceAlgorithmConfig.DEPTH, "isClickableInside", "handleLike", "Lcn/soulapp/cpnt_voiceparty/bean/ClickLikePartyConfig;", "getLikeConfig", "getDismissDelaySeconds", "removeNiuEntranceView", "removeRecommendShareGuideView", "showNiuEntrance", "showRecommendShareGuideIfNeed", "navigateToSquarePost", "showLikeAnimation", "Lcn/soulapp/cpnt_voiceparty/ui/chatroom/BlockMessage;", "msgType", "canReceiveMessage", "", "msg", "onReceiveMessage", "initView", "onDestroy", "Lcn/soul/android/base/block_frame/block/Container;", "blockContainer", "Lcn/soul/android/base/block_frame/block/Container;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/ReceiveManagerInviteDialog;", "roleDialog", "Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/ReceiveManagerInviteDialog;", "Landroid/animation/ValueAnimator;", "animatorGone", "Landroid/animation/ValueAnimator;", "Landroid/animation/AnimatorSet;", "animatorSet", "Landroid/animation/AnimatorSet;", "", "Lcn/soul/lib_dialog/SoulDialog;", "melancholyApplyDialogs$delegate", "Lkotlin/Lazy;", "getMelancholyApplyDialogs", "()Ljava/util/List;", "melancholyApplyDialogs", "Lcn/soulapp/cpnt_voiceparty/dialog/GuessQuestionDialog;", "guessQuestionDialog", "Lcn/soulapp/cpnt_voiceparty/dialog/GuessQuestionDialog;", "niuEntranceContainer", "Landroid/view/View;", "recommendShareGuideView", "", "tempLocation", "[I", "Ljava/lang/Runnable;", "dismissNiuEntranceRunnable", "Ljava/lang/Runnable;", "dismissRecommendShareGuideRunnable", "lastTouchX", "F", "lastTouchY", "", "lastLikeTime", "J", "lastHandleTime", "likeComboCount", "I", "resetComboRunnable", "Landroid/os/Handler;", "likeHandler", "Landroid/os/Handler;", "Landroid/graphics/Typeface;", "soulTypeface", "Landroid/graphics/Typeface;", "inviteDialog", "Lcn/soul/lib_dialog/SoulDialog;", AppAgent.CONSTRUCT, "(Lcn/soul/android/base/block_frame/block/Container;)V", "Companion", "a", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class CommonBusinessBlock extends SoulHouseBlock {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private static final String[] LIKE_ANIMATIONS;
    private static final long LIKE_COMBO_RESET_TIME = 1000;
    private static final long RECOMMEND_SHARE_GUIDE_DURATION = 5000;

    @NotNull
    private static final String RECOMMEND_SHARE_GUIDE_SHOW_KEY = "recommend_share_guide_show_time";
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    private ValueAnimator animatorGone;

    @Nullable
    private AnimatorSet animatorSet;

    @NotNull
    private final Container blockContainer;

    @NotNull
    private final Runnable dismissNiuEntranceRunnable;

    @NotNull
    private final Runnable dismissRecommendShareGuideRunnable;

    @Nullable
    private GuessQuestionDialog guessQuestionDialog;

    @Nullable
    private SoulDialog inviteDialog;
    private long lastHandleTime;
    private long lastLikeTime;
    private float lastTouchX;
    private float lastTouchY;
    private int likeComboCount;

    @NotNull
    private final Handler likeHandler;

    /* JADX INFO: renamed from: melancholyApplyDialogs$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy melancholyApplyDialogs;

    @Nullable
    private View niuEntranceContainer;

    @Nullable
    private View recommendShareGuideView;

    @NotNull
    private final Runnable resetComboRunnable;

    @Nullable
    private ReceiveManagerInviteDialog roleDialog;

    @Nullable
    private Typeface soulTypeface;

    @NotNull
    private final int[] tempLocation;

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.soulhouse.common.CommonBusinessBlock$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: CommonBusinessBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\bR\u0014\u0010\n\u001a\u00020\u00038\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/common/CommonBusinessBlock$a;", "", "", "", "LIKE_ANIMATIONS", "[Ljava/lang/String;", "", "LIKE_COMBO_RESET_TIME", "J", "RECOMMEND_SHARE_GUIDE_DURATION", "RECOMMEND_SHARE_GUIDE_SHOW_KEY", "Ljava/lang/String;", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.q qVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: CommonBusinessBlock.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f147429a;
        public static ChangeQuickRedirect changeQuickRedirect;

        static {
            if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 1, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            int[] iArr = new int[BlockMessage.values().length];
            iArr[BlockMessage.MSG_FULL_SCREEN_LIKE_GUIDANCE_CHECK.ordinal()] = 1;
            iArr[BlockMessage.MSG_WARNING_DIALOG.ordinal()] = 2;
            iArr[BlockMessage.MSG_RECEIVE_MANAGER_INVITE.ordinal()] = 3;
            iArr[BlockMessage.MSG_FIRE_MANAGER.ordinal()] = 4;
            iArr[BlockMessage.MSG_CLOSE_INVITED_MANAGER_DIALOG.ordinal()] = 5;
            iArr[BlockMessage.MSG_HIDE_RETURN_LAST_ROOM.ordinal()] = 6;
            iArr[BlockMessage.UNLOCK_GIFT_WALL_BACKGROUND.ordinal()] = 7;
            iArr[BlockMessage.MSG_OPEN_H5.ordinal()] = 8;
            iArr[BlockMessage.SHOW_MELANCHOLY_USER_CARD.ordinal()] = 9;
            iArr[BlockMessage.UPDATE_RELIEVE_PANEL_DATA.ordinal()] = 10;
            iArr[BlockMessage.APPLY_CONNECT.ordinal()] = 11;
            iArr[BlockMessage.FINISH_CONNECT.ordinal()] = 12;
            iArr[BlockMessage.MSG_UPDATE_USER_MIC_STATE.ordinal()] = 13;
            iArr[BlockMessage.MSG_SEND_SOUND_CARD.ordinal()] = 14;
            iArr[BlockMessage.MSG_HELP_LIGHT_SOUND_CARD.ordinal()] = 15;
            iArr[BlockMessage.MSG_SONG_LIST_COLLECT_TIP.ordinal()] = 16;
            iArr[BlockMessage.MSG_MATCH_RELATION_INVITE.ordinal()] = 17;
            iArr[BlockMessage.MSG_ROOM_TRANSFER_INVITE.ordinal()] = 18;
            iArr[BlockMessage.MSG_RECEIVE_UNPARALLELED_CARD.ordinal()] = 19;
            iArr[BlockMessage.MSG_OPEN_UNPARALLELED_SEND_DIALOG.ordinal()] = 20;
            iArr[BlockMessage.MSG_GUESS_GAME_WIN.ordinal()] = 21;
            iArr[BlockMessage.MSG_GAME_H5_OPEN_DIALOG.ordinal()] = 22;
            iArr[BlockMessage.MSG_SWITCH_TO_JOIN_MODE_NORMAL.ordinal()] = 23;
            f147429a = iArr;
        }
    }

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class c implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f147430a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f147431b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CommonBusinessBlock f147432c;

        public c(View view, long j11, CommonBusinessBlock commonBusinessBlock) {
            this.f147430a = view;
            this.f147431b = j11;
            this.f147432c = commonBusinessBlock;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f147430a) >= this.f147431b) {
                this.f147432c.redirectToAllTab();
                cn.soulapp.cpnt_voiceparty.util.track.a.f162372a.X(cn.soulapp.android.client.component.middle.platform.utils.user.a.w().toString());
            }
            ExtensionsKt.setLastClickTime(this.f147430a, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: compiled from: CommonBusinessBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/common/CommonBusinessBlock$d", "Landroid/text/style/ClickableSpan;", "Landroid/view/View;", "widget", "Lkotlin/w;", "onClick", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class d extends ClickableSpan {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f147433a;

        d(String str) {
            this.f147433a = str;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@NotNull View widget) {
            if (PatchProxy.proxy(new Object[]{widget}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(widget, "widget");
            SoulRouter.j().r("/H5/H5Activity").A("url", ih.a.b(this.f147433a, null)).o("isShare", false).d();
        }
    }

    /* JADX INFO: compiled from: CommonBusinessBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/common/CommonBusinessBlock$e", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class e extends HttpSubscriber<RequestResult<Object>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        e() {
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(@Nullable RequestResult<Object> requestResult) {
            if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            if (requestResult != null && requestResult.getResult()) {
                return;
            }
            cn.soulapp.lib.widget.toast.e.u(requestResult != null ? requestResult.getFailedMsg() : null);
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
        }
    }

    /* JADX INFO: compiled from: CommonBusinessBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\r\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/common/CommonBusinessBlock$f", "Lcn/soulapp/cpnt_voiceparty/widget/IOnDispatchTouchListener;", "Landroid/view/MotionEvent;", "event", "", "handled", "Lkotlin/w;", "onDispatchTouchEvent", "", "a", "F", "downX", ExpcompatUtils.COMPAT_VALUE_780, "downY", "", "c", "J", "downTime", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class f implements IOnDispatchTouchListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private float downX;

        /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
        private float downY;

        /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
        private long downTime;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ ViewGroup f147438e;

        f(ViewGroup viewGroup) {
            this.f147438e = viewGroup;
        }

        @Override // cn.soulapp.cpnt_voiceparty.widget.IOnDispatchTouchListener
        public void onDispatchTouchEvent(@Nullable MotionEvent motionEvent, boolean z11) {
            View viewFindViewById;
            if (PatchProxy.proxy(new Object[]{motionEvent, new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{MotionEvent.class, Boolean.TYPE}, Void.TYPE).isSupported || motionEvent == null) {
                return;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                this.downX = motionEvent.getRawX();
                this.downY = motionEvent.getRawY();
                this.downTime = System.currentTimeMillis();
                CommonBusinessBlock.this.lastTouchX = motionEvent.getRawX();
                CommonBusinessBlock.this.lastTouchY = motionEvent.getRawY();
                return;
            }
            if (action == 1 && z11 && System.currentTimeMillis() - this.downTime < 250 && Math.abs(motionEvent.getRawX() - this.downX) < ExtensionsKt.dp(20) && Math.abs(motionEvent.getRawY() - this.downY) < ExtensionsKt.dp(20) && (viewFindViewById = this.f147438e.findViewById(R$id.LS)) != null && CommonBusinessBlock.this.isTouchOnBlankArea(viewFindViewById, motionEvent.getRawX(), motionEvent.getRawY())) {
                CommonBusinessBlock.this.handleLike(motionEvent.getRawX(), motionEvent.getRawY());
            }
        }
    }

    /* JADX INFO: compiled from: CommonBusinessBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/common/CommonBusinessBlock$g", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/SetManagerModel;", "t", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class g extends ty.s<SetManagerModel> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f147439c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ CommonBusinessBlock f147440d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f147441e;

        g(boolean z11, CommonBusinessBlock commonBusinessBlock, String str) {
            this.f147439c = z11;
            this.f147440d = commonBusinessBlock;
            this.f147441e = str;
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable SetManagerModel setManagerModel) {
            if (PatchProxy.proxy(new Object[]{setManagerModel}, this, changeQuickRedirect, false, 2, new Class[]{SetManagerModel.class}, Void.TYPE).isSupported) {
                return;
            }
            RoomUser roomUser = null;
            if (!(setManagerModel != null && setManagerModel.getSuccess())) {
                ExtensionsKt.toast(String.valueOf(setManagerModel != null ? setManagerModel.getContent() : null));
                return;
            }
            if (!this.f147439c) {
                RoomDataManager roomDataManagerL = SoulHouseExtensionKt.L(this.f147440d);
                if (roomDataManagerL != null) {
                    RoomUser roomUser2 = new RoomUser();
                    roomUser2.setUserId(this.f147441e);
                    roomDataManagerL.p0(roomUser2, false);
                    return;
                }
                return;
            }
            ExtensionsKt.toast("您已成为派对管理员");
            MyInfoInRoom myInfoInRoom = (MyInfoInRoom) this.f147440d.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.R());
            if (myInfoInRoom != null) {
                myInfoInRoom.setManager(true);
            }
            RoomDataManager roomDataManagerL2 = SoulHouseExtensionKt.L(this.f147440d);
            if (roomDataManagerL2 != null) {
                CommonBusinessBlock commonBusinessBlock = this.f147440d;
                RoomUser roomUserA = RoomDataManager.A(roomDataManagerL2, false, 1, null);
                if (roomUserA != null) {
                    roomUserA.setRole(3);
                    roomUser = roomUserA;
                }
                roomDataManagerL2.g0(roomUser);
                roomDataManagerL2.p0(DataConvertUtil.f161894a.m(SoulHouseExtensionKt.j0(commonBusinessBlock.blockContainer.getDataBus())), true);
            }
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
        }
    }

    /* JADX INFO: compiled from: CommonBusinessBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J$\u0010\r\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¨\u0006\u000e"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/common/CommonBusinessBlock$h", "Lty/u;", "Lcn/soulapp/android/net/HttpResult;", "Lcn/android/lib/soul_entity/square/PostRoomProfileModelV1;", "result", "Lkotlin/w;", "onNext", "", "code", "", "msg", "", l11l11I1111l.l111l1111lIl, "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class h extends ty.u<HttpResult<PostRoomProfileModelV1>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PostRoomProfileModel f147442a;

        h(PostRoomProfileModel postRoomProfileModel) {
            this.f147442a = postRoomProfileModel;
        }

        @Override // ty.u
        public void onError(int i11, @Nullable String str, @Nullable Throwable th2) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str, th2}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class, Throwable.class}, Void.TYPE).isSupported) {
                return;
            }
            SoulRouter.j().e("/post/postMoment").A("VoicePartyPublishBean", GsonTool.entityToJson(this.f147442a)).A("pageFrom", "voiceparty").d();
        }

        @Override // ty.u
        public void onNext(@Nullable HttpResult<PostRoomProfileModelV1> httpResult) {
            if (PatchProxy.proxy(new Object[]{httpResult}, this, changeQuickRedirect, false, 2, new Class[]{HttpResult.class}, Void.TYPE).isSupported) {
                return;
            }
            SoulRouter.j().e("/post/postMoment").A("VoicePartyPublishBean", GsonTool.entityToJson(this.f147442a)).A("VoicePartyPublishBeanV1", GsonTool.entityToJson(httpResult != null ? httpResult.getData() : null)).A("pageFrom", "voiceparty").d();
        }
    }

    /* JADX INFO: compiled from: CommonBusinessBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00052\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/common/CommonBusinessBlock$i", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class i extends ty.s<RequestResult<Object>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        i() {
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RequestResult<Object> requestResult) {
            if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            if (requestResult != null && requestResult.getResult()) {
                return;
            }
            String failedMsg = requestResult != null ? requestResult.getFailedMsg() : null;
            if (failedMsg == null) {
                failedMsg = "";
            }
            b80.n0.h(failedMsg, new Object[0]);
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
            if (str == null) {
                str = "";
            }
            b80.n0.h(str, new Object[0]);
        }
    }

    /* JADX INFO: compiled from: CommonBusinessBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00052\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/common/CommonBusinessBlock$j", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class j extends HttpSubscriber<RequestResult<Object>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f147443a;

        j(int i11) {
            this.f147443a = i11;
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(@Nullable RequestResult<Object> requestResult) {
            if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            if (requestResult != null && requestResult.getResult()) {
                cn.soul.insight.log.core.a.f15353b.d("CommonBusinessBlock", "reportLikeCount success: " + this.f147443a);
                return;
            }
            Api api = cn.soul.insight.log.core.a.f15353b;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("reportLikeCount error: ");
            sb2.append(requestResult != null ? requestResult.getResMsg() : null);
            api.e("CommonBusinessBlock", sb2.toString());
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            cn.soul.insight.log.core.a.f15353b.e("CommonBusinessBlock", "reportLikeCount error: " + i11 + ", " + str);
        }
    }

    /* JADX INFO: compiled from: CommonBusinessBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/common/CommonBusinessBlock$k", "Lcn/soulapp/android/lib/common/utils/SimpleAnimatorListener;", "Landroid/animation/Animator;", AvatarCategory.ANIMATION, "Lkotlin/w;", "onAnimationEnd", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class k extends SimpleAnimatorListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ConstraintLayout f147445b;

        k(ConstraintLayout constraintLayout) {
            this.f147445b = constraintLayout;
        }

        @Override // cn.soulapp.android.lib.common.utils.SimpleAnimatorListener, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NotNull Animator animation) {
            if (PatchProxy.proxy(new Object[]{animation}, this, changeQuickRedirect, false, 2, new Class[]{Animator.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(animation, "animation");
            this.f147445b.postDelayed(CommonBusinessBlock.this.dismissNiuEntranceRunnable, ((long) CommonBusinessBlock.this.getDismissDelaySeconds()) * 1000);
        }
    }

    /* JADX INFO: compiled from: CommonBusinessBlock.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/common/CommonBusinessBlock$l", "Lcn/soulapp/android/lib/common/utils/SimpleAnimatorListener;", "Landroid/animation/Animator;", AvatarCategory.ANIMATION, "Lkotlin/w;", "onAnimationEnd", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class l extends SimpleAnimatorListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LimitFpsLottieAnimationView f147446a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommonBusinessBlock f147447b;

        l(LimitFpsLottieAnimationView limitFpsLottieAnimationView, CommonBusinessBlock commonBusinessBlock) {
            this.f147446a = limitFpsLottieAnimationView;
            this.f147447b = commonBusinessBlock;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(CommonBusinessBlock this$0) {
            if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 3, new Class[]{CommonBusinessBlock.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(this$0, "this$0");
            this$0.showRecommendShareGuideIfNeed();
            this$0.removeNiuEntranceView();
        }

        @Override // cn.soulapp.android.lib.common.utils.SimpleAnimatorListener, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NotNull Animator animation) {
            if (PatchProxy.proxy(new Object[]{animation}, this, changeQuickRedirect, false, 2, new Class[]{Animator.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(animation, "animation");
            super.onAnimationEnd(animation);
            LimitFpsLottieAnimationView limitFpsLottieAnimationView = this.f147446a;
            final CommonBusinessBlock commonBusinessBlock = this.f147447b;
            limitFpsLottieAnimationView.post(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.y0
                @Override // java.lang.Runnable
                public final void run() {
                    CommonBusinessBlock.l.b(commonBusinessBlock);
                }
            });
        }
    }

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class m implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f147448a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f147449b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CommonBusinessBlock f147450c;

        public m(View view, long j11, CommonBusinessBlock commonBusinessBlock) {
            this.f147448a = view;
            this.f147449b = j11;
            this.f147450c = commonBusinessBlock;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f147448a) >= this.f147449b) {
                this.f147450c.removeRecommendShareGuideView();
                this.f147450c.navigateToSquarePost();
            }
            ExtensionsKt.setLastClickTime(this.f147448a, jCurrentTimeMillis);
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 63, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
        LIKE_ANIMATIONS = new String[]{"c_vp_lottie_huatong.zip", "c_vp_lottie_love.zip", "c_vp_lottie_music.zip", "c_vp_lottie_niu.zip"};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonBusinessBlock(@NotNull Container blockContainer) {
        super(blockContainer);
        kotlin.jvm.internal.v.j(blockContainer, "blockContainer");
        this.blockContainer = blockContainer;
        this.melancholyApplyDialogs = kotlin.j.b(CommonBusinessBlock$melancholyApplyDialogs$2.INSTANCE);
        this.tempLocation = new int[2];
        this.dismissNiuEntranceRunnable = new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.h0
            @Override // java.lang.Runnable
            public final void run() {
                CommonBusinessBlock.m6590dismissNiuEntranceRunnable$lambda0(this.f147625a);
            }
        };
        this.dismissRecommendShareGuideRunnable = new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.i0
            @Override // java.lang.Runnable
            public final void run() {
                CommonBusinessBlock.m6591dismissRecommendShareGuideRunnable$lambda1(this.f147636a);
            }
        };
        this.resetComboRunnable = new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.j0
            @Override // java.lang.Runnable
            public final void run() {
                CommonBusinessBlock.m6612resetComboRunnable$lambda2(this.f147647a);
            }
        };
        this.likeHandler = new Handler(Looper.getMainLooper());
    }

    private final void back2PartyHallAnimIn() {
        kotlin.w wVar;
        ChatRoomModel chatRoomModelF;
        int i11 = 0;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 11, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
        if (soulHouseDriverJ0 != null && (chatRoomModelF = SoulHouseExtensionKt.f(soulHouseDriverJ0)) != null) {
            i11 = chatRoomModelF.createFrom;
        }
        if (i11 == 4 || DateUtil.isToday(lh.a.g("back2PartyHallAnimIn", 0L)) || needBackPartyHallHide()) {
            return;
        }
        lh.a.r("back2PartyHallAnimIn", System.currentTimeMillis());
        cn.soulapp.cpnt_voiceparty.util.track.a.f162372a.y1(cn.soulapp.android.client.component.middle.platform.utils.user.a.w().toString());
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            ViewGroup rootView = getRootView();
            int i12 = R$id.B20;
            TextView textView = (TextView) rootView.findViewById(i12);
            if (textView != null) {
                textView.setText("更多派对");
            }
            TextView textView2 = (TextView) getRootView().findViewById(i12);
            if (textView2 != null) {
                ViewExtKt.l(textView2);
            }
            TextView textView3 = (TextView) getRootView().findViewById(i12);
            if (textView3 != null) {
                textView3.post(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.k0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6589back2PartyHallAnimIn$lambda36$lambda34(this.f147660a);
                    }
                });
            }
            TextView tvBack2PartyHall = (TextView) getRootView().findViewById(i12);
            if (tvBack2PartyHall != null) {
                kotlin.jvm.internal.v.i(tvBack2PartyHall, "tvBack2PartyHall");
                tvBack2PartyHall.setOnClickListener(new c(tvBack2PartyHall, 500L, this));
                wVar = kotlin.w.f231958a;
            } else {
                wVar = null;
            }
            Result.m8140constructorimpl(wVar);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            Result.m8140constructorimpl(kotlin.l.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: back2PartyHallAnimIn$lambda-36$lambda-34, reason: not valid java name */
    public static final void m6589back2PartyHallAnimIn$lambda36$lambda34(CommonBusinessBlock this_runCatching) {
        AnimatorSet.Builder builderPlay;
        AnimatorSet.Builder builderAfter;
        if (PatchProxy.proxy(new Object[]{this_runCatching}, null, changeQuickRedirect, true, 55, new Class[]{CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this_runCatching, "$this_runCatching");
        this_runCatching.animatorSet = new AnimatorSet();
        ViewGroup rootView = this_runCatching.getRootView();
        int i11 = R$id.B20;
        TextView textView = (TextView) rootView.findViewById(i11);
        float width = textView != null ? textView.getWidth() : 0;
        cn.soulapp.lib.basic.utils.limit.q qVar = cn.soulapp.lib.basic.utils.limit.q.f165800a;
        ValueAnimator valueAnimatorG = qVar.g((TextView) this_runCatching.getRootView().findViewById(i11), "translationX", 0.0f, width);
        valueAnimatorG.setDuration(300L);
        ValueAnimator valueAnimatorG2 = qVar.g((TextView) this_runCatching.getRootView().findViewById(i11), "translationX", width, 0.0f);
        this_runCatching.animatorGone = valueAnimatorG2;
        if (valueAnimatorG2 != null) {
            valueAnimatorG2.setDuration(300L);
        }
        AnimatorSet animatorSet = this_runCatching.animatorSet;
        if (animatorSet != null && (builderPlay = animatorSet.play(this_runCatching.animatorGone)) != null && (builderAfter = builderPlay.after(15000L)) != null) {
            builderAfter.after(valueAnimatorG);
        }
        AnimatorSet animatorSet2 = this_runCatching.animatorSet;
        if (animatorSet2 != null) {
            animatorSet2.setInterpolator(new AccelerateInterpolator());
        }
        AnimatorSet animatorSet3 = this_runCatching.animatorSet;
        if (animatorSet3 != null) {
            animatorSet3.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void clearInviteDialog() {
        this.inviteDialog = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: dismissNiuEntranceRunnable$lambda-0, reason: not valid java name */
    public static final void m6590dismissNiuEntranceRunnable$lambda0(CommonBusinessBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 32, new Class[]{CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.removeNiuEntranceView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: dismissRecommendShareGuideRunnable$lambda-1, reason: not valid java name */
    public static final void m6591dismissRecommendShareGuideRunnable$lambda1(CommonBusinessBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 33, new Class[]{CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.removeRecommendShareGuideView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getDismissDelaySeconds() {
        Integer dismissDelay;
        Integer playModeDelay;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 25, new Class[0], Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        ClickLikePartyConfig likeConfig = getLikeConfig();
        cn.soul.insight.log.core.a.f15353b.dOnlyPrint("UserListV", "获取阿波罗配置: " + likeConfig);
        cn.soulapp.cpnt_voiceparty.function.b0 b0Var = cn.soulapp.cpnt_voiceparty.function.b0.f142548a;
        Integer numH = b0Var.h(getDataBus());
        int iIntValue = numH != null ? numH.intValue() : 0;
        Integer numE = b0Var.e(getDataBus());
        if (iIntValue == cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154983h.getId() || iIntValue == cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154997v.getId() || iIntValue == cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154994s.getId() || b0Var.u(Integer.valueOf(numE != null ? numE.intValue() : 0))) {
            if (likeConfig == null || (playModeDelay = likeConfig.getPlayModeDelay()) == null) {
                return 3;
            }
            return playModeDelay.intValue();
        }
        if (likeConfig == null || (dismissDelay = likeConfig.getDismissDelay()) == null) {
            return 10;
        }
        return dismissDelay.intValue();
    }

    private final ClickLikePartyConfig getLikeConfig() {
        RoomConfigBean roomConfigBean;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 24, new Class[0], ClickLikePartyConfig.class);
        if (patchProxyResultProxy.isSupported) {
            return (ClickLikePartyConfig) patchProxyResultProxy.result;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(getDataBus());
        if (soulHouseDriverJ0 == null || (roomConfigBean = (RoomConfigBean) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.u0())) == null) {
            return null;
        }
        return roomConfigBean.getClickLikePartyConfig();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<SoulDialog> getMelancholyApplyDialogs() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) this.melancholyApplyDialogs.getValue();
    }

    private final SpannableStringBuilder getMultiText(CommonMessage imMessage) {
        Map<String, String> mapB;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{imMessage}, this, changeQuickRedirect, false, 14, new Class[]{CommonMessage.class}, SpannableStringBuilder.class);
        if (patchProxyResultProxy.isSupported) {
            return (SpannableStringBuilder) patchProxyResultProxy.result;
        }
        if (imMessage == null || (mapB = imMessage.b()) == null) {
            return new SpannableStringBuilder();
        }
        String str = mapB.get("content");
        String str2 = mapB.get("h5_url");
        if (str2 == null) {
            str2 = "";
        }
        String str3 = mapB.get("h5_text");
        String str4 = str3 != null ? str3 : "";
        String str5 = str + str4;
        int iZ = StringsKt__StringsKt.Z(str5, str4, 0, false, 6, null);
        int length = str4.length() + iZ;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str5);
        if (iZ < length) {
            spannableStringBuilder.setSpan(new d(str2), iZ, length, 18);
        }
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleApproval(String str, int i11) {
        if (PatchProxy.proxy(new Object[]{str, new Integer(i11)}, this, changeQuickRedirect, false, 9, new Class[]{String.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        h30.g.f225309a.F(SoulHouseExtensionKt.N(this.blockContainer), cn.soulapp.android.client.component.middle.platform.utils.user.a.b(str), i11).subscribe(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleLike(float f11, float f12) {
        RoomUser roomUserA;
        Boolean bool;
        Integer comboCount;
        boolean z11 = false;
        Object[] objArr = {new Float(f11), new Float(f12)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Float.TYPE;
        if (PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 23, new Class[]{cls, cls}, Void.TYPE).isSupported) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastHandleTime < 200) {
            return;
        }
        this.lastHandleTime = jCurrentTimeMillis;
        if (jCurrentTimeMillis - this.lastLikeTime > 1000) {
            this.likeComboCount = 1;
        } else {
            this.likeComboCount++;
        }
        this.lastLikeTime = jCurrentTimeMillis;
        this.likeHandler.removeCallbacks(this.resetComboRunnable);
        this.likeHandler.postDelayed(this.resetComboRunnable, 1000L);
        int i11 = this.likeComboCount;
        if (i11 >= 2) {
            showLikeAnimation(f11, f12, i11);
        }
        ClickLikePartyConfig likeConfig = getLikeConfig();
        int iIntValue = (likeConfig == null || (comboCount = likeConfig.getComboCount()) == null) ? 3 : comboCount.intValue();
        CommonSlice commonSlice = (CommonSlice) SoulHouseExtensionKt.f0(this.blockContainer, SliceManager.INSTANCE.n());
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
        boolean zBooleanValue = (soulHouseDriverJ0 == null || (bool = (Boolean) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.F())) == null) ? false : bool.booleanValue();
        RoomDataManager roomDataManagerL = SoulHouseExtensionKt.L(this);
        Integer numValueOf = null;
        if (roomDataManagerL != null && (roomUserA = RoomDataManager.A(roomDataManagerL, false, 1, null)) != null) {
            numValueOf = Integer.valueOf(roomUserA.getRole());
        }
        if (this.likeComboCount > iIntValue) {
            if (commonSlice != null && commonSlice.getHasShowNiuEntrance()) {
                return;
            }
            if (commonSlice != null && commonSlice.getHasRecommend()) {
                z11 = true;
            }
            if (z11 || zBooleanValue || numValueOf == null || numValueOf.intValue() != 2) {
                return;
            }
            if (commonSlice != null) {
                commonSlice.q0(true);
            }
            showNiuEntrance();
        }
    }

    private final void initLikeClickLogic(ViewGroup viewGroup) {
        if (PatchProxy.proxy(new Object[]{viewGroup}, this, changeQuickRedirect, false, 20, new Class[]{ViewGroup.class}, Void.TYPE).isSupported) {
            return;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            this.soulTypeface = Typeface.createFromAsset(getContext().getAssets(), "Soul.ttf");
            Result.m8140constructorimpl(kotlin.w.f231958a);
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        DispatchConstraintLayout dispatchConstraintLayout = (DispatchConstraintLayout) viewGroup.findViewById(R$id.YI);
        if (dispatchConstraintLayout != null) {
            dispatchConstraintLayout.setOnClickListener(new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.o0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CommonBusinessBlock.m6592initLikeClickLogic$lambda45(this.f147715a, view);
                }
            });
        }
        if (dispatchConstraintLayout != null) {
            dispatchConstraintLayout.a(new f(viewGroup));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLikeClickLogic$lambda-45, reason: not valid java name */
    public static final void m6592initLikeClickLogic$lambda45(CommonBusinessBlock this$0, View view) {
        if (PatchProxy.proxy(new Object[]{this$0, view}, null, changeQuickRedirect, true, 57, new Class[]{CommonBusinessBlock.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.handleLike(this$0.lastTouchX, this$0.lastTouchY);
    }

    private final boolean isClickableInside(View view, float x11, float y11, int depth) {
        Object[] objArr = {view, new Float(x11), new Float(y11), new Integer(depth)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Float.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 22, new Class[]{View.class, cls, cls, Integer.TYPE}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (view == null || view.getVisibility() != 0 || view.getAlpha() <= 0.0f || !view.isAttachedToWindow() || depth > 8 || x11 < 0.0f || x11 > view.getWidth() || y11 < 0.0f || y11 > view.getHeight()) {
            return false;
        }
        if (view.isClickable() || view.isLongClickable()) {
            return true;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = viewGroup.getChildAt(i11);
                if (isClickableInside(childAt, x11 - (childAt != null ? childAt.getLeft() : 0), y11 - (childAt != null ? childAt.getTop() : 0), depth + 1)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isTouchOnBlankArea(View rv2, float rawX, float rawY) {
        Object[] objArr = {rv2, new Float(rawX), new Float(rawY)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Float.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 21, new Class[]{View.class, cls, cls}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (rv2 instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) rv2;
            if (recyclerView.getVisibility() == 0 && recyclerView.isAttachedToWindow()) {
                rv2.getLocationOnScreen(this.tempLocation);
                int[] iArr = this.tempLocation;
                float f11 = rawX - iArr[0];
                float f12 = rawY - iArr[1];
                if (f11 >= 0.0f) {
                    RecyclerView recyclerView2 = (RecyclerView) rv2;
                    if (f11 <= recyclerView2.getWidth() && f12 >= 0.0f && f12 <= recyclerView2.getHeight()) {
                        View viewFindChildViewUnder = recyclerView2.findChildViewUnder(f11, f12);
                        if (viewFindChildViewUnder == null) {
                            return true;
                        }
                        if (viewFindChildViewUnder instanceof ViewGroup) {
                            ViewGroup viewGroup = (ViewGroup) viewFindChildViewUnder;
                            float left = f11 - viewGroup.getLeft();
                            float top2 = f12 - viewGroup.getTop();
                            int childCount = viewGroup.getChildCount();
                            for (int i11 = 0; i11 < childCount; i11++) {
                                View childAt = viewGroup.getChildAt(i11);
                                if (isClickableInside(childAt, left - (childAt != null ? childAt.getLeft() : 0), top2 - (childAt != null ? childAt.getTop() : 0), 0)) {
                                    return false;
                                }
                            }
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private final void managerControl(String str, boolean z11, String str2) {
        if (PatchProxy.proxy(new Object[]{str, new Byte(z11 ? (byte) 1 : (byte) 0), str2}, this, changeQuickRedirect, false, 16, new Class[]{String.class, Boolean.TYPE, String.class}, Void.TYPE).isSupported) {
            return;
        }
        Observer observerSubscribeWith = h30.g.f225309a.h9(kotlin.collections.r0.l(kotlin.m.a("roomId", SoulHouseExtensionKt.N(this.blockContainer)), kotlin.m.a("targetUserIdEcpt", cn.soulapp.android.client.component.middle.platform.utils.user.a.b(str)), kotlin.m.a("type", ExtensionsKt.select(z11, "1", "0")))).subscribeWith(HttpSubscriber.create(new g(z11, this, str)));
        kotlin.jvm.internal.v.i(observerSubscribeWith, "private fun managerContr…      }))\n        )\n    }");
        register((Disposable) observerSubscribeWith);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void navigateToSquarePost() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 30, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        PostRoomProfileModel postRoomProfileModelC = cn.soulapp.cpnt_voiceparty.helper.n.INSTANCE.a().c();
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(getDataBus());
        ty.q.J(((ISoulHouse) ty.q.z(ISoulHouse.class)).getRoomPostProfile(soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null, "api-chat-room-share-to-post"), new h(postRoomProfileModelC));
    }

    private final boolean needBackPartyHallHide() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 12, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
        int joinType = soulHouseDriverJ0 != null ? soulHouseDriverJ0.getJoinType() : 0;
        if (joinType != 0) {
            if (!(28 <= joinType && joinType < 33) && joinType != 18 && joinType != 12 && joinType != 5 && joinType != 10) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-10, reason: not valid java name */
    public static final void m6593onReceiveMessage$lambda10(CommonBusinessBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 40, new Class[]{CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        ValueAnimator valueAnimator = this$0.animatorGone;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
        AnimatorSet animatorSet = this$0.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-12$lambda-11, reason: not valid java name */
    public static final void m6594onReceiveMessage$lambda12$lambda11(UnlockGiftWallModel unlockGiftWallModel, CommonBusinessBlock this$0) {
        if (PatchProxy.proxy(new Object[]{unlockGiftWallModel, this$0}, null, changeQuickRedirect, true, 41, new Class[]{UnlockGiftWallModel.class, CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(unlockGiftWallModel, "$unlockGiftWallModel");
        kotlin.jvm.internal.v.j(this$0, "this$0");
        UnlockGiftBackgroundDialog.INSTANCE.a(unlockGiftWallModel).show(SoulHouseExtensionKt.k(this$0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-14, reason: not valid java name */
    public static final void m6595onReceiveMessage$lambda14(MelancholyMasterModel melancholyMasterModel, CommonBusinessBlock this$0) {
        if (PatchProxy.proxy(new Object[]{melancholyMasterModel, this$0}, null, changeQuickRedirect, true, 42, new Class[]{MelancholyMasterModel.class, CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        if (melancholyMasterModel == null) {
            MelancholyView melancholyView = (MelancholyView) this$0.getRootView().findViewById(R$id.zJ);
            if (melancholyView != null) {
                ViewExtKt.j(melancholyView);
                return;
            }
            return;
        }
        ViewGroup rootView = this$0.getRootView();
        int i11 = R$id.zJ;
        MelancholyView melancholyView2 = (MelancholyView) rootView.findViewById(i11);
        if (melancholyView2 != null) {
            cn.soulapp.cpnt_voiceparty.soulhouse.slice.f fVar = (cn.soulapp.cpnt_voiceparty.soulhouse.slice.f) SoulHouseExtensionKt.f0(this$0.blockContainer, SliceManager.INSTANCE.z());
            melancholyView2.e(fVar != null ? Boolean.valueOf(fVar.getIsExpand()) : null);
        }
        MelancholyView melancholyView3 = (MelancholyView) this$0.getRootView().findViewById(i11);
        if (melancholyView3 != null) {
            melancholyView3.setData(melancholyMasterModel);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("tuid", melancholyMasterModel.getUserId());
        SoulAnalyticsV2.getInstance().onEvent("exp", "GroupChatDetail_OwnerBannerExp", linkedHashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-15, reason: not valid java name */
    public static final void m6596onReceiveMessage$lambda15(CommonBusinessBlock this$0, RelievePanelModel relievePanelModel) {
        if (PatchProxy.proxy(new Object[]{this$0, relievePanelModel}, null, changeQuickRedirect, true, 43, new Class[]{CommonBusinessBlock.class, RelievePanelModel.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        ((RelieveAnxietyView) this$0.getRootView().findViewById(R$id.gP)).setData(relievePanelModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-17, reason: not valid java name */
    public static final void m6597onReceiveMessage$lambda17(String str, final CommonBusinessBlock this$0, final String str2) {
        if (PatchProxy.proxy(new Object[]{str, this$0, str2}, null, changeQuickRedirect, true, 44, new Class[]{String.class, CommonBusinessBlock.class, String.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) str);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#25D4D0")), 0, str != null ? str.length() : 0, 17);
        spannableStringBuilder.append((CharSequence) " 向你发起连线申请");
        SoulDialog.AttributeConfig attributeConfig = new SoulDialog.AttributeConfig();
        attributeConfig.W(SoulDialogType.P35);
        attributeConfig.h0(spannableStringBuilder);
        attributeConfig.M("拒绝连线");
        attributeConfig.S("同意连线");
        attributeConfig.R(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.CommonBusinessBlock$onReceiveMessage$10$dialogConfig$1$1
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
                this.this$0.handleApproval(str2, 1);
                Iterator it = this.this$0.getMelancholyApplyDialogs().iterator();
                while (it.hasNext()) {
                    ((SoulDialog) it.next()).dismissAllowingStateLoss();
                }
            }
        });
        attributeConfig.J(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.CommonBusinessBlock$onReceiveMessage$10$dialogConfig$1$2
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
                this.this$0.handleApproval(str2, 2);
            }
        });
        SoulDialog soulDialogA = SoulDialog.INSTANCE.a(attributeConfig);
        this$0.getMelancholyApplyDialogs().add(soulDialogA);
        soulDialogA.n(SoulHouseExtensionKt.k(this$0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-18, reason: not valid java name */
    public static final void m6598onReceiveMessage$lambda18(CommonBusinessBlock this$0, RoomUser roomUser) {
        if (PatchProxy.proxy(new Object[]{this$0, roomUser}, null, changeQuickRedirect, true, 45, new Class[]{CommonBusinessBlock.class, RoomUser.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(roomUser, "$roomUser");
        RelieveAnxietyView relieveAnxietyView = (RelieveAnxietyView) this$0.getRootView().findViewById(R$id.gP);
        if (relieveAnxietyView != null) {
            relieveAnxietyView.c(roomUser);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-19, reason: not valid java name */
    public static final void m6599onReceiveMessage$lambda19(SendSoundCardInfo sendSoundCardInfo, CommonBusinessBlock this$0) {
        if (PatchProxy.proxy(new Object[]{sendSoundCardInfo, this$0}, null, changeQuickRedirect, true, 46, new Class[]{SendSoundCardInfo.class, CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        SoundCardSendDialog.INSTANCE.a(sendSoundCardInfo, this$0.blockContainer.getDataBus()).show(SoulHouseExtensionKt.k(this$0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-20, reason: not valid java name */
    public static final void m6600onReceiveMessage$lambda20(SendSoundCardInfo sendSoundCardInfo, CommonBusinessBlock this$0) {
        if (PatchProxy.proxy(new Object[]{sendSoundCardInfo, this$0}, null, changeQuickRedirect, true, 47, new Class[]{SendSoundCardInfo.class, CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        SoundCardHelpLightDialog.INSTANCE.a(sendSoundCardInfo, this$0.blockContainer.getDataBus()).show(SoulHouseExtensionKt.k(this$0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-22, reason: not valid java name */
    public static final void m6601onReceiveMessage$lambda22(Object obj, final CommonBusinessBlock this$0) {
        if (PatchProxy.proxy(new Object[]{obj, this$0}, null, changeQuickRedirect, true, 48, new Class[]{Object.class, CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        final Map map = obj instanceof Map ? (Map) obj : null;
        if (map != null) {
            mr0.h.l(0L, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.CommonBusinessBlock$onReceiveMessage$17$1$1
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
                    this.this$0.showRoomTransferInviteDialog(map);
                    cn.soulapp.cpnt_voiceparty.util.track.n.f162406a.c(SoulHouseExtensionKt.j0(this.this$0.getDataBus()));
                }
            }, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-23, reason: not valid java name */
    public static final void m6602onReceiveMessage$lambda23(Object obj, CommonBusinessBlock this$0) {
        String str;
        String str2;
        if (PatchProxy.proxy(new Object[]{obj, this$0}, null, changeQuickRedirect, true, 49, new Class[]{Object.class, CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        Map map = obj instanceof Map ? (Map) obj : null;
        ReceivedUnparalleledCardDialog.INSTANCE.a(new ReceivedUnparalleledLevelModel((map == null || (str2 = (String) map.get("recordId")) == null) ? null : Integer.valueOf(cn.soulapp.lib.utils.ext.n.d(str2)), map != null ? (String) map.get("iconUrl") : null, (map == null || (str = (String) map.get("unrivaledLevel")) == null) ? null : Integer.valueOf(cn.soulapp.lib.utils.ext.n.d(str)), map != null ? (String) map.get("signature") : null)).show(SoulHouseExtensionKt.k(this$0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-24, reason: not valid java name */
    public static final void m6603onReceiveMessage$lambda24(CommonBusinessBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 50, new Class[]{CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        SendUnparalleledMedalDialog.INSTANCE.a(this$0.getDataBus()).show(SoulHouseExtensionKt.k(this$0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-25, reason: not valid java name */
    public static final void m6604onReceiveMessage$lambda25(CommonBusinessBlock this$0, Object obj) {
        if (PatchProxy.proxy(new Object[]{this$0, obj}, null, changeQuickRedirect, true, 51, new Class[]{CommonBusinessBlock.class, Object.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.showAskDialog(obj instanceof Map ? (Map) obj : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-28, reason: not valid java name */
    public static final void m6605onReceiveMessage$lambda28(Object obj, CommonBusinessBlock this$0) {
        if (PatchProxy.proxy(new Object[]{obj, this$0}, null, changeQuickRedirect, true, 52, new Class[]{Object.class, CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        final Map map = obj instanceof Map ? (Map) obj : null;
        if (map != null) {
            SoulDialog.Companion companion = SoulDialog.INSTANCE;
            SoulDialog.AttributeConfig attributeConfig = new SoulDialog.AttributeConfig();
            attributeConfig.W(SoulDialogType.P35);
            attributeConfig.L(false);
            String str = (String) map.get("content");
            if (str == null) {
                str = "";
            }
            attributeConfig.h0(str);
            String str2 = (String) map.get("cancelButtonText");
            if (str2 == null) {
                str2 = "";
            }
            attributeConfig.M(str2);
            String str3 = (String) map.get("confirmButtonText");
            attributeConfig.S(str3 != null ? str3 : "");
            attributeConfig.R(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.CommonBusinessBlock$onReceiveMessage$21$1$1$1
                public static ChangeQuickRedirect changeQuickRedirect;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @Nullable
                public final kotlin.w invoke() {
                    PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], kotlin.w.class);
                    if (patchProxyResultProxy.isSupported) {
                        return (kotlin.w) patchProxyResultProxy.result;
                    }
                    String str4 = map.get("jumpUrl");
                    if (str4 == null) {
                        return null;
                    }
                    a60.l.f1777a.n(str4);
                    return kotlin.w.f231958a;
                }
            });
            companion.a(attributeConfig).n(SoulHouseExtensionKt.k(this$0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-29, reason: not valid java name */
    public static final void m6606onReceiveMessage$lambda29(CommonBusinessBlock this$0) {
        RoomUser roomUserA;
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 53, new Class[]{CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        RoomDataManager roomDataManagerL = SoulHouseExtensionKt.L(this$0);
        if ((roomDataManagerL == null || (roomUserA = RoomDataManager.A(roomDataManagerL, false, 1, null)) == null || roomUserA.getRole() != 1) ? false : true) {
            return;
        }
        this$0.initLikeClickLogic(this$0.getRootView());
        this$0.showLikePartyGuidanceIfNeed(this$0.getRootView());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-3, reason: not valid java name */
    public static final void m6607onReceiveMessage$lambda3(CommonBusinessBlock this$0) {
        RoomUser roomUserA;
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 35, new Class[]{CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        RoomDataManager roomDataManagerL = SoulHouseExtensionKt.L(this$0);
        if ((roomDataManagerL == null || (roomUserA = RoomDataManager.A(roomDataManagerL, false, 1, null)) == null || roomUserA.getRole() != 2) ? false : true) {
            SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this$0.getDataBus());
            if (soulHouseDriverJ0 != null && soulHouseDriverJ0.getJoinMode() == 1) {
                this$0.showLikePartyGuidanceIfNeed(this$0.getRootView());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-7$lambda-6, reason: not valid java name */
    public static final void m6608onReceiveMessage$lambda7$lambda6(CommonBusinessBlock this$0, CommonMessage it, CommonMessage commonMessage) {
        String str;
        if (PatchProxy.proxy(new Object[]{this$0, it, commonMessage}, null, changeQuickRedirect, true, 37, new Class[]{CommonBusinessBlock.class, CommonMessage.class, CommonMessage.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(it, "$it");
        cn.soul.lib_dialog.b bVar = new cn.soul.lib_dialog.b();
        final SoulDialogFragment soulDialogFragmentA = SoulDialogFragment.INSTANCE.a(bVar);
        Map<String, String> mapB = it.b();
        if (mapB == null || (str = mapB.get("title")) == null) {
            str = "";
        }
        bVar.t(str);
        bVar.v(24, 12);
        bVar.k(this$0.getMultiText(commonMessage));
        bVar.v(0, 24);
        bVar.b(true, "确定", R$style.f15489d, new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CommonBusinessBlock.m6609onReceiveMessage$lambda7$lambda6$lambda5$lambda4(soulDialogFragmentA, view);
            }
        });
        bVar.v(0, 12);
        bVar.e(ClosePos.BOTTOM);
        if (this$0.canShowDialog()) {
            soulDialogFragmentA.show(SoulHouseExtensionKt.k(this$0), "dialog");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-7$lambda-6$lambda-5$lambda-4, reason: not valid java name */
    public static final void m6609onReceiveMessage$lambda7$lambda6$lambda5$lambda4(SoulDialogFragment dialogFragment, View view) {
        if (PatchProxy.proxy(new Object[]{dialogFragment, view}, null, changeQuickRedirect, true, 36, new Class[]{SoulDialogFragment.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(dialogFragment, "$dialogFragment");
        dialogFragment.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-8, reason: not valid java name */
    public static final void m6610onReceiveMessage$lambda8(CommonBusinessBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 38, new Class[]{CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        this$0.receiveBeManagerInvite();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onReceiveMessage$lambda-9, reason: not valid java name */
    public static final void m6611onReceiveMessage$lambda9(CommonBusinessBlock this$0) {
        ReceiveManagerInviteDialog receiveManagerInviteDialog;
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 39, new Class[]{CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        ReceiveManagerInviteDialog receiveManagerInviteDialog2 = this$0.roleDialog;
        if (!(receiveManagerInviteDialog2 != null && receiveManagerInviteDialog2.getShowsDialog()) || (receiveManagerInviteDialog = this$0.roleDialog) == null) {
            return;
        }
        receiveManagerInviteDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openInviteFriendDialog(String str) {
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 8, new Class[]{String.class}, Void.TYPE).isSupported || str == null) {
            return;
        }
        if (!(str.length() > 0)) {
            str = null;
        }
        if (str != null) {
            a60.l.f1777a.n(str);
        }
    }

    private final void receiveBeManagerInvite() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 15, new Class[0], Void.TYPE).isSupported || cannotShowDialog()) {
            return;
        }
        ReceiveManagerInviteDialog receiveManagerInviteDialogA = ReceiveManagerInviteDialog.INSTANCE.a(this.blockContainer.getDataBus(), cn.soulapp.cpnt_voiceparty.function.b0.f142548a.h(this.blockContainer.getDataBus()));
        this.roleDialog = receiveManagerInviteDialogA;
        if (receiveManagerInviteDialogA != null) {
            receiveManagerInviteDialogA.show(SoulHouseExtensionKt.k(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void redirectToAllTab() {
        WeakReference weakReference;
        IPartyRoomHost iPartyRoomHost;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 13, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
        if ((soulHouseDriverJ0 != null ? (PartyRoomSource) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.Z()) : null) == PartyRoomSource.VIDEO_FEED) {
            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
            if (soulHouseDriverJ1 == null || (weakReference = (WeakReference) soulHouseDriverJ1.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.Y())) == null || (iPartyRoomHost = (IPartyRoomHost) weakReference.get()) == null) {
                return;
            }
            iPartyRoomHost.onRequestExitToFeed(ExitReason.ZOOM_OUT);
            return;
        }
        if (getActivity() instanceof SoulHouseActivity) {
            MartianActivity activity = getActivity();
            if (activity != null) {
                activity.onBackPressed();
            }
            SoulRouter.j().e("/chat/chatRoomList").A("firstTabName", PhotoTab.PHOTO_TAB_NAME_ALL).d();
            return;
        }
        if (getActivity() instanceof ChatRoomListActivity) {
            MartianActivity activity2 = getActivity();
            if (activity2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.lifecycle.ViewModelStoreOwner");
            }
            ((ChatRoomListViewModel) new ViewModelProvider(activity2).get(ChatRoomListViewModel.class)).G().setValue(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeNiuEntranceView() {
        View view;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 26, new Class[0], Void.TYPE).isSupported || (view = this.niuEntranceContainer) == null) {
            return;
        }
        view.removeCallbacks(this.dismissNiuEntranceRunnable);
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        this.niuEntranceContainer = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeRecommendShareGuideView() {
        View view;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 27, new Class[0], Void.TYPE).isSupported || (view = this.recommendShareGuideView) == null) {
            return;
        }
        view.removeCallbacks(this.dismissRecommendShareGuideRunnable);
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        this.recommendShareGuideView = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CheckResult"})
    public final void replyRoomTransferInvite(int i11) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 7, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        AnyExtKt.c(h30.g.f225309a.y8(kotlin.collections.r0.l(kotlin.m.a("roomId", SoulHouseExtensionKt.N(this.blockContainer)), kotlin.m.a("type", Integer.valueOf(i11)))), getActivity()).subscribeWith(HttpSubscriber.create(new i()));
        cn.soulapp.cpnt_voiceparty.util.track.n.f162406a.d(SoulHouseExtensionKt.j0(getDataBus()), i11 == 1 ? "同意" : "放弃");
    }

    private final void reportLikeCount(int i11) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 18, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        String strN = SoulHouseExtensionKt.N(this.blockContainer);
        if (TextUtils.isEmpty(strN)) {
            cn.soul.insight.log.core.a.f15353b.d("CommonBusinessBlock", "roomId is empty，reportLikeCount failed");
            return;
        }
        h30.g gVar = h30.g.f225309a;
        Pair[] pairArr = new Pair[4];
        pairArr[0] = kotlin.m.a("roomId", strN);
        pairArr[1] = kotlin.m.a("likeNum", Integer.valueOf(i11));
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(getDataBus());
        pairArr[2] = kotlin.m.a("joinUniqueCode", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.v(soulHouseDriverJ0) : null);
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(getDataBus());
        pairArr[3] = kotlin.m.a("recPageId", soulHouseDriverJ1 != null ? soulHouseDriverJ1.getRecExt() : null);
        gVar.T6(kotlin.collections.r0.l(pairArr)).subscribe(new j(i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: resetComboRunnable$lambda-2, reason: not valid java name */
    public static final void m6612resetComboRunnable$lambda2(CommonBusinessBlock this$0) {
        if (PatchProxy.proxy(new Object[]{this$0}, null, changeQuickRedirect, true, 34, new Class[]{CommonBusinessBlock.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        int i11 = this$0.likeComboCount;
        if (i11 > 1) {
            this$0.reportLikeCount(i11);
        }
        this$0.likeComboCount = 0;
    }

    private final void showAskDialog(Map<String, String> map) {
        if (PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 5, new Class[]{Map.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(getDataBus());
        final String strP = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null;
        if (strP == null) {
            strP = "";
        }
        runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.e0
            @Override // java.lang.Runnable
            public final void run() {
                CommonBusinessBlock.m6613showAskDialog$lambda30(this.f147591a, strP);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showAskDialog$lambda-30, reason: not valid java name */
    public static final void m6613showAskDialog$lambda30(CommonBusinessBlock this$0, String roomId) {
        if (PatchProxy.proxy(new Object[]{this$0, roomId}, null, changeQuickRedirect, true, 54, new Class[]{CommonBusinessBlock.class, String.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(roomId, "$roomId");
        if (this$0.canShowDialog()) {
            GuessQuestionDialog guessQuestionDialogA = GuessQuestionDialog.INSTANCE.a(this$0.getDataBus(), null, null, roomId);
            this$0.guessQuestionDialog = guessQuestionDialogA;
            guessQuestionDialogA.show(SoulHouseExtensionKt.k(this$0), "GuessQuestionDialog");
        }
    }

    private final void showLikeAnimation(float f11, float f12, int i11) {
        Context context;
        final TextView textView;
        Object[] objArr = {new Float(f11), new Float(f12), new Integer(i11)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Float.TYPE;
        if (PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 31, new Class[]{cls, cls, Integer.TYPE}, Void.TYPE).isSupported || (context = getContext()) == null) {
            return;
        }
        final ViewGroup rootView = getRootView();
        final ConstraintLayout constraintLayout = new ConstraintLayout(context);
        constraintLayout.setId(View.generateViewId());
        constraintLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, ExtensionsKt.dp(120)));
        constraintLayout.setVisibility(4);
        final LimitFpsLottieAnimationView limitFpsLottieAnimationView = new LimitFpsLottieAnimationView(context, null, 0, 6, null);
        limitFpsLottieAnimationView.setId(View.generateViewId());
        int iDp = ExtensionsKt.dp(52);
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(iDp, iDp);
        layoutParams.startToStart = 0;
        layoutParams.bottomToBottom = 0;
        limitFpsLottieAnimationView.setLayoutParams(layoutParams);
        String[] strArr = LIKE_ANIMATIONS;
        limitFpsLottieAnimationView.setAnimation(strArr[new Random().nextInt(strArr.length)]);
        limitFpsLottieAnimationView.setRepeatCount(0);
        limitFpsLottieAnimationView.A();
        constraintLayout.addView(limitFpsLottieAnimationView);
        if (i11 < 10 || (i11 - 10) % 3 != 0) {
            textView = null;
        } else {
            TextView textView2 = new TextView(context);
            textView2.setId(View.generateViewId());
            StringBuilder sb2 = new StringBuilder();
            sb2.append('+');
            sb2.append(i11);
            textView2.setText(sb2.toString());
            textView2.setTextColor(-1);
            textView2.setTextSize(24.0f);
            Typeface typeface = this.soulTypeface;
            if (typeface != null) {
                textView2.setTypeface(typeface);
            } else {
                textView2.setTypeface(null, 3);
            }
            textView2.setShadowLayer(5.0f, 0.0f, 0.0f, -16777216);
            ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(-2, -2);
            layoutParams2.startToEnd = limitFpsLottieAnimationView.getId();
            layoutParams2.bottomToTop = limitFpsLottieAnimationView.getId();
            layoutParams2.setMarginStart(ExtensionsKt.dp(-15));
            constraintLayout.addView(textView2, layoutParams2);
            textView = textView2;
        }
        rootView.addView(constraintLayout);
        int[] iArr = new int[2];
        rootView.getLocationOnScreen(iArr);
        final float f13 = f11 - iArr[0];
        final float f14 = f12 - iArr[1];
        constraintLayout.post(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.t
            @Override // java.lang.Runnable
            public final void run() {
                CommonBusinessBlock.m6614showLikeAnimation$lambda67(limitFpsLottieAnimationView, constraintLayout, f13, f14, textView, rootView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showLikeAnimation$lambda-67, reason: not valid java name */
    public static final void m6614showLikeAnimation$lambda67(LimitFpsLottieAnimationView lottieView, final ConstraintLayout clickLayout, float f11, float f12, TextView textView, final ViewGroup animationContainer) {
        Object[] objArr = {lottieView, clickLayout, new Float(f11), new Float(f12), textView, animationContainer};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Float.TYPE;
        if (PatchProxy.proxy(objArr, null, changeQuickRedirect2, true, 62, new Class[]{LimitFpsLottieAnimationView.class, ConstraintLayout.class, cls, cls, TextView.class, ViewGroup.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(lottieView, "$lottieView");
        kotlin.jvm.internal.v.j(clickLayout, "$clickLayout");
        kotlin.jvm.internal.v.j(animationContainer, "$animationContainer");
        float x11 = lottieView.getX() + (lottieView.getWidth() / 2.0f);
        float y11 = lottieView.getY() + (lottieView.getHeight() / 2.0f);
        clickLayout.setX(f11 - x11);
        clickLayout.setY((f12 - y11) - ExtensionsKt.dp(50));
        clickLayout.setVisibility(0);
        if (textView != null) {
            textView.setAlpha(1.0f);
            textView.animate().translationYBy(-ExtensionsKt.dp(40)).alpha(0.0f).setDuration(500L).setInterpolator(new LinearInterpolator()).start();
        }
        clickLayout.animate().alpha(0.0f).translationYBy(-ExtensionsKt.dp(60)).setDuration(900L).setStartDelay(200L).withEndAction(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.f0
            @Override // java.lang.Runnable
            public final void run() {
                CommonBusinessBlock.m6615showLikeAnimation$lambda67$lambda66(animationContainer, clickLayout);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showLikeAnimation$lambda-67$lambda-66, reason: not valid java name */
    public static final void m6615showLikeAnimation$lambda67$lambda66(ViewGroup animationContainer, ConstraintLayout clickLayout) {
        if (PatchProxy.proxy(new Object[]{animationContainer, clickLayout}, null, changeQuickRedirect, true, 61, new Class[]{ViewGroup.class, ConstraintLayout.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(animationContainer, "$animationContainer");
        kotlin.jvm.internal.v.j(clickLayout, "$clickLayout");
        animationContainer.removeView(clickLayout);
    }

    private final void showLikePartyGuidanceIfNeed(final ViewGroup viewGroup) {
        Context context;
        if (PatchProxy.proxy(new Object[]{viewGroup}, this, changeQuickRedirect, false, 19, new Class[]{ViewGroup.class}, Void.TYPE).isSupported || SKV.single().getBoolean("full_screen_like_guidance_show", false) || (context = getContext()) == null) {
            return;
        }
        final ConstraintLayout constraintLayout = new ConstraintLayout(context);
        constraintLayout.setId(View.generateViewId());
        constraintLayout.setBackgroundColor(Color.parseColor("#99000000"));
        constraintLayout.setClickable(true);
        constraintLayout.setFocusable(true);
        LimitFpsLottieAnimationView limitFpsLottieAnimationView = new LimitFpsLottieAnimationView(context, null, 0, 6, null);
        limitFpsLottieAnimationView.setId(View.generateViewId());
        limitFpsLottieAnimationView.setAnimation("c_vp_like_party_guidance.zip");
        limitFpsLottieAnimationView.setRepeatCount(-1);
        limitFpsLottieAnimationView.A();
        TextView textView = new TextView(context);
        textView.setId(View.generateViewId());
        textView.setText("连击空白区域可为派对点赞");
        textView.setTextColor(-1);
        textView.setTextSize(1, 14.0f);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        constraintLayout.addView(limitFpsLottieAnimationView);
        constraintLayout.addView(textView);
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(ExtensionsKt.dp(50), ExtensionsKt.dp(50));
        layoutParams.startToStart = 0;
        layoutParams.endToEnd = 0;
        layoutParams.topToTop = 0;
        layoutParams.bottomToBottom = 0;
        limitFpsLottieAnimationView.setLayoutParams(layoutParams);
        ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(-2, -2);
        layoutParams2.startToStart = 0;
        layoutParams2.endToEnd = 0;
        layoutParams2.topToBottom = limitFpsLottieAnimationView.getId();
        ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = ExtensionsKt.dp(12);
        textView.setLayoutParams(layoutParams2);
        constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CommonBusinessBlock.m6616showLikePartyGuidanceIfNeed$lambda43(viewGroup, constraintLayout, view);
            }
        });
        viewGroup.addView(constraintLayout, -1, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showLikePartyGuidanceIfNeed$lambda-43, reason: not valid java name */
    public static final void m6616showLikePartyGuidanceIfNeed$lambda43(ViewGroup parent, ConstraintLayout overlay, View view) {
        if (PatchProxy.proxy(new Object[]{parent, overlay, view}, null, changeQuickRedirect, true, 56, new Class[]{ViewGroup.class, ConstraintLayout.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(parent, "$parent");
        kotlin.jvm.internal.v.j(overlay, "$overlay");
        parent.removeView(overlay);
        SKV.single().putBoolean("full_screen_like_guidance_show", true);
    }

    private final void showNiuEntrance() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 28, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        Context context = getContext();
        DispatchConstraintLayout dispatchConstraintLayout = (DispatchConstraintLayout) getRootView().findViewById(R$id.f127646ag);
        if (dispatchConstraintLayout == null) {
            return;
        }
        View view = this.niuEntranceContainer;
        if (view != null) {
            if ((view != null ? view.getParent() : null) != null) {
                return;
            }
        }
        final CommonSlice commonSlice = (CommonSlice) SoulHouseExtensionKt.f0(this.blockContainer, SliceManager.INSTANCE.n());
        final ConstraintLayout constraintLayout = new ConstraintLayout(context);
        constraintLayout.setId(View.generateViewId());
        this.niuEntranceContainer = constraintLayout;
        ImageView imageView = new ImageView(context);
        imageView.setId(R$id.f129000u5);
        imageView.setImageResource(R$drawable.Ef);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        final LimitFpsLottieAnimationView limitFpsLottieAnimationView = new LimitFpsLottieAnimationView(context, null, 0, 6, null);
        limitFpsLottieAnimationView.setId(View.generateViewId());
        limitFpsLottieAnimationView.setAnimationFromUrl("https://img.soulapp.cn/app-source-prod/app-1/50/c_vp_lottie_rec_niu.zip");
        limitFpsLottieAnimationView.i(new l(limitFpsLottieAnimationView, this));
        final TextView textView = new TextView(context);
        textView.setId(View.generateViewId());
        textView.setText("推荐派对");
        textView.setTextColor(Color.parseColor("#282828"));
        textView.setTextSize(11.0f);
        textView.setGravity(16);
        textView.setPadding(ExtensionsKt.dp(8), 0, ExtensionsKt.dp(22), 0);
        textView.setBackgroundResource(R$drawable.R2);
        textView.setVisibility(4);
        textView.setMaxLines(1);
        textView.setEllipsize(null);
        limitFpsLottieAnimationView.setOnClickListener(new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                CommonBusinessBlock.m6617showNiuEntrance$lambda50(commonSlice, this, limitFpsLottieAnimationView, textView, view2);
            }
        });
        constraintLayout.addView(textView);
        constraintLayout.addView(imageView);
        constraintLayout.addView(limitFpsLottieAnimationView);
        int iDp = ExtensionsKt.dp(40);
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(iDp, iDp);
        layoutParams.endToEnd = 0;
        layoutParams.topToTop = 0;
        layoutParams.bottomToBottom = 0;
        imageView.setLayoutParams(layoutParams);
        ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(0, 0);
        layoutParams2.startToStart = imageView.getId();
        layoutParams2.endToEnd = imageView.getId();
        layoutParams2.topToTop = imageView.getId();
        layoutParams2.bottomToBottom = imageView.getId();
        limitFpsLottieAnimationView.setLayoutParams(layoutParams2);
        ConstraintLayout.LayoutParams layoutParams3 = new ConstraintLayout.LayoutParams(-2, ExtensionsKt.dp(28));
        layoutParams3.endToEnd = imageView.getId();
        layoutParams3.topToTop = imageView.getId();
        layoutParams3.bottomToBottom = imageView.getId();
        layoutParams3.setMarginEnd(ExtensionsKt.dp(20));
        textView.setLayoutParams(layoutParams3);
        ConstraintLayout.LayoutParams layoutParams4 = new ConstraintLayout.LayoutParams(-2, -2);
        layoutParams4.endToEnd = 0;
        layoutParams4.bottomToBottom = 0;
        layoutParams4.setMarginEnd(ExtensionsKt.dp(12));
        ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin = ExtensionsKt.dp(60);
        int iIndexOfChild = dispatchConstraintLayout.indexOfChild(dispatchConstraintLayout.findViewById(R$id.f127820d0));
        if (iIndexOfChild != -1) {
            dispatchConstraintLayout.addView(constraintLayout, iIndexOfChild, layoutParams4);
        } else {
            dispatchConstraintLayout.addView(constraintLayout, layoutParams4);
        }
        textView.post(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.m0
            @Override // java.lang.Runnable
            public final void run() {
                CommonBusinessBlock.m6618showNiuEntrance$lambda56(textView, this, constraintLayout);
            }
        });
        SoulAnalyticsV2.getInstance().onEvent("exp", "unfixed_recommend_button_exp", kotlin.collections.r0.j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showNiuEntrance$lambda-50, reason: not valid java name */
    public static final void m6617showNiuEntrance$lambda50(CommonSlice commonSlice, final CommonBusinessBlock this$0, final LimitFpsLottieAnimationView circleView, final TextView barView, View view) {
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[]{commonSlice, this$0, circleView, barView, view}, null, changeQuickRedirect, true, 58, new Class[]{CommonSlice.class, CommonBusinessBlock.class, LimitFpsLottieAnimationView.class, TextView.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(circleView, "$circleView");
        kotlin.jvm.internal.v.j(barView, "$barView");
        if (commonSlice != null && commonSlice.getHasRecommend()) {
            z11 = true;
        }
        final boolean z12 = !z11;
        HashMap map = new HashMap();
        map.put("recommend_clk_type", Integer.valueOf(z12 ? 1 : 2));
        SoulAnalyticsV2.getInstance().onEvent(Const.EventType.CLICK, "unfixed_recommend_button_clk", map);
        if (commonSlice != null) {
            commonSlice.O(SoulHouseExtensionKt.N(this$0.blockContainer), z12 ? 1 : 2, new Function2<Integer, Boolean, kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.CommonBusinessBlock$showNiuEntrance$1$1
                public static ChangeQuickRedirect changeQuickRedirect;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                /* JADX INFO: renamed from: invoke */
                public /* bridge */ /* synthetic */ kotlin.w mo3invoke(Integer num, Boolean bool) {
                    invoke(num.intValue(), bool.booleanValue());
                    return kotlin.w.f231958a;
                }

                public final void invoke(int i11, boolean z13) {
                    if (!PatchProxy.proxy(new Object[]{new Integer(i11), new Byte(z13 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Integer.TYPE, Boolean.TYPE}, Void.TYPE).isSupported && z13) {
                        if (!z12) {
                            cn.soulapp.lib.widget.toast.e.u("已取消推荐");
                            this$0.removeNiuEntranceView();
                        } else {
                            circleView.A();
                            barView.setText("您已推荐");
                            barView.setTextColor(-1);
                            barView.setBackgroundResource(R$drawable.Q2);
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showNiuEntrance$lambda-56, reason: not valid java name */
    public static final void m6618showNiuEntrance$lambda56(final TextView barView, CommonBusinessBlock this$0, ConstraintLayout entranceContainer) {
        if (PatchProxy.proxy(new Object[]{barView, this$0, entranceContainer}, null, changeQuickRedirect, true, 60, new Class[]{TextView.class, CommonBusinessBlock.class, ConstraintLayout.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(barView, "$barView");
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(entranceContainer, "$entranceContainer");
        barView.setVisibility(0);
        int width = barView.getWidth();
        int iDp = ExtensionsKt.dp(20);
        ViewGroup.LayoutParams layoutParams = barView.getLayoutParams();
        layoutParams.width = iDp;
        barView.setLayoutParams(layoutParams);
        ValueAnimator valueAnimatorE = cn.soulapp.lib.basic.utils.limit.s.f165817a.e(iDp, width);
        valueAnimatorE.setDuration(300L);
        valueAnimatorE.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorE.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.g0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CommonBusinessBlock.m6619showNiuEntrance$lambda56$lambda55(barView, valueAnimator);
            }
        });
        valueAnimatorE.addListener(this$0.new k(entranceContainer));
        valueAnimatorE.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showNiuEntrance$lambda-56$lambda-55, reason: not valid java name */
    public static final void m6619showNiuEntrance$lambda56$lambda55(TextView barView, ValueAnimator animation) {
        if (PatchProxy.proxy(new Object[]{barView, animation}, null, changeQuickRedirect, true, 59, new Class[]{TextView.class, ValueAnimator.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(barView, "$barView");
        kotlin.jvm.internal.v.j(animation, "animation");
        ViewGroup.LayoutParams layoutParams = barView.getLayoutParams();
        Object animatedValue = animation.getAnimatedValue();
        if (animatedValue == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
        }
        layoutParams.width = ((Integer) animatedValue).intValue();
        barView.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showRecommendShareGuideIfNeed() {
        Context context;
        DispatchConstraintLayout dispatchConstraintLayout;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 29, new Class[0], Void.TYPE).isSupported || !cn.android.lib.soul_view.m.a() || DateUtil.isToday(lh.a.g(RECOMMEND_SHARE_GUIDE_SHOW_KEY, 0L)) || (context = getContext()) == null || (dispatchConstraintLayout = (DispatchConstraintLayout) getRootView().findViewById(R$id.f127646ag)) == null) {
            return;
        }
        View view = this.recommendShareGuideView;
        if ((view != null ? view.getParent() : null) != null) {
            return;
        }
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.f130033xk, (ViewGroup) dispatchConstraintLayout, false);
        this.recommendShareGuideView = viewInflate;
        viewInflate.setOnClickListener(new m(viewInflate, 500L, this));
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(0, ExtensionsKt.dp(36));
        layoutParams.startToStart = 0;
        layoutParams.endToEnd = 0;
        layoutParams.bottomToBottom = 0;
        layoutParams.setMarginStart(ExtensionsKt.dp(8));
        layoutParams.setMarginEnd(ExtensionsKt.dp(8));
        ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = ExtensionsKt.dp(78);
        int iIndexOfChild = dispatchConstraintLayout.indexOfChild(dispatchConstraintLayout.findViewById(R$id.f127820d0));
        if (iIndexOfChild != -1) {
            dispatchConstraintLayout.addView(viewInflate, iIndexOfChild, layoutParams);
        } else {
            dispatchConstraintLayout.addView(viewInflate, layoutParams);
        }
        lh.a.r(RECOMMEND_SHARE_GUIDE_SHOW_KEY, System.currentTimeMillis());
        viewInflate.postDelayed(this.dismissRecommendShareGuideRunnable, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showRoomTransferInviteDialog(Map<String, String> map) {
        if (PatchProxy.proxy(new Object[]{map}, this, changeQuickRedirect, false, 6, new Class[]{Map.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulDialog soulDialog = this.inviteDialog;
        if (soulDialog != null) {
            soulDialog.dismiss();
        }
        SoulDialog.Companion companion = SoulDialog.INSTANCE;
        SoulDialog.AttributeConfig attributeConfig = new SoulDialog.AttributeConfig();
        attributeConfig.W(SoulDialogType.P12);
        attributeConfig.L(false);
        String str = map.get("content");
        if (str == null) {
            str = "";
        }
        attributeConfig.U(str);
        String str2 = map.get("title");
        attributeConfig.h0(str2 != null ? str2 : "");
        attributeConfig.M("放弃");
        attributeConfig.S("同意");
        attributeConfig.J(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.CommonBusinessBlock$showRoomTransferInviteDialog$1$1
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
                this.this$0.replyRoomTransferInvite(2);
            }
        });
        attributeConfig.R(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.CommonBusinessBlock$showRoomTransferInviteDialog$1$2
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX INFO: compiled from: CommonBusinessBlock.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0007"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/common/CommonBusinessBlock$showRoomTransferInviteDialog$1$2$a", "Lz80/h;", "Ly80/a;", "result", "Lkotlin/w;", "onGranted", "onDenied", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
            public static final class a extends z80.h {
                public static ChangeQuickRedirect changeQuickRedirect;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                final /* synthetic */ CommonBusinessBlock f147451e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                final /* synthetic */ MartianActivity f147452f;

                a(CommonBusinessBlock commonBusinessBlock, MartianActivity martianActivity) {
                    this.f147451e = commonBusinessBlock;
                    this.f147452f = martianActivity;
                }

                @Override // z80.h, z80.b
                public void onDenied(@NotNull y80.a result) {
                    if (PatchProxy.proxy(new Object[]{result}, this, changeQuickRedirect, false, 3, new Class[]{y80.a.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    kotlin.jvm.internal.v.j(result, "result");
                    b80.n0.h(this.f147452f.getResources().getString(R$string.X3), new Object[0]);
                }

                @Override // z80.b
                public void onGranted(@NotNull y80.a result) {
                    if (PatchProxy.proxy(new Object[]{result}, this, changeQuickRedirect, false, 2, new Class[]{y80.a.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    kotlin.jvm.internal.v.j(result, "result");
                    if (result.a()) {
                        this.f147451e.replyRoomTransferInvite(1);
                    }
                }
            }

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final kotlin.w invoke() {
                PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], kotlin.w.class);
                if (patchProxyResultProxy.isSupported) {
                    return (kotlin.w) patchProxyResultProxy.result;
                }
                MartianActivity activity = this.this$0.getActivity();
                if (activity == null) {
                    return null;
                }
                x80.a.C1791a.f246595i.a().a(activity).f(activity.getSupportFragmentManager()).i("Soul想访问你的麦克风").d("为了您能正常体验语音输入、语音变声、语音匹配、视频匹配等功能，Soul需要申请麦克风权限。如您拒绝授权，不影响您使用APP的其他功能。").b(new a(this.this$0, activity)).c().m();
                return kotlin.w.f231958a;
            }
        });
        attributeConfig.X(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.CommonBusinessBlock$showRoomTransferInviteDialog$1$3
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
                this.this$0.clearInviteDialog();
            }
        });
        ChangeQuickRedirect changeQuickRedirect2 = kotlin.w.changeQuickRedirect;
        SoulDialog soulDialogA = companion.a(attributeConfig);
        this.inviteDialog = soulDialogA;
        if (soulDialogA != null) {
            soulDialogA.n(SoulHouseExtensionKt.k(this));
        }
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.common.SoulHouseBlock
    public boolean canReceiveMessage(@NotNull BlockMessage msgType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{msgType}, this, changeQuickRedirect, false, 3, new Class[]{BlockMessage.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        kotlin.jvm.internal.v.j(msgType, "msgType");
        return msgType == BlockMessage.MSG_WARNING_DIALOG || msgType == BlockMessage.MSG_RECEIVE_MANAGER_INVITE || msgType == BlockMessage.MSG_FIRE_MANAGER || msgType == BlockMessage.MSG_CLOSE_INVITED_MANAGER_DIALOG || msgType == BlockMessage.MSG_HIDE_RETURN_LAST_ROOM || msgType == BlockMessage.UNLOCK_GIFT_WALL_BACKGROUND || msgType == BlockMessage.MSG_OPEN_H5 || msgType == BlockMessage.SHOW_MELANCHOLY_USER_CARD || msgType == BlockMessage.UPDATE_RELIEVE_PANEL_DATA || msgType == BlockMessage.APPLY_CONNECT || msgType == BlockMessage.MSG_UPDATE_USER_MIC_STATE || msgType == BlockMessage.FINISH_CONNECT || msgType == BlockMessage.MSG_SEND_SOUND_CARD || msgType == BlockMessage.MSG_HELP_LIGHT_SOUND_CARD || msgType == BlockMessage.MSG_SONG_LIST_COLLECT_TIP || msgType == BlockMessage.MSG_MATCH_RELATION_INVITE || msgType == BlockMessage.MSG_ROOM_TRANSFER_INVITE || msgType == BlockMessage.MSG_RECEIVE_UNPARALLELED_CARD || msgType == BlockMessage.MSG_OPEN_UNPARALLELED_SEND_DIALOG || msgType == BlockMessage.MSG_GAME_H5_OPEN_DIALOG || msgType == BlockMessage.MSG_GUESS_GAME_WIN || msgType == BlockMessage.MSG_SWITCH_TO_JOIN_MODE_NORMAL || msgType == BlockMessage.MSG_FULL_SCREEN_LIKE_GUIDANCE_CHECK;
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.common.SoulHouseBlock, cn.soul.android.base.block_frame.block.Block
    public void initView(@NotNull ViewGroup root) {
        ChatRoomModel chatRoomModelV;
        RoomUser roomUserA;
        int i11 = 0;
        if (PatchProxy.proxy(new Object[]{root}, this, changeQuickRedirect, false, 10, new Class[]{ViewGroup.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(root, "root");
        super.initView(root);
        RoomDataManager roomDataManagerL = SoulHouseExtensionKt.L(this);
        if ((roomDataManagerL == null || (roomUserA = RoomDataManager.A(roomDataManagerL, false, 1, null)) == null || roomUserA.getRole() != 2) ? false : true) {
            SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(getDataBus());
            if (soulHouseDriverJ0 != null && soulHouseDriverJ0.getJoinMode() == 1) {
                initLikeClickLogic(root);
            }
        }
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.blockContainer.getDataBus());
        if ((soulHouseDriverJ1 == null || soulHouseDriverJ1.getIsSlideRoom()) ? false : true) {
            CommonUtil.f161882a.w2(SoulHouseExtensionKt.N(this.blockContainer));
            back2PartyHallAnimIn();
        } else {
            TextView textView = (TextView) getRootView().findViewById(R$id.B20);
            if (textView != null) {
                ViewExtKt.j(textView);
            }
        }
        RoomDataManager roomDataManagerL2 = SoulHouseExtensionKt.L(this);
        if (roomDataManagerL2 != null && (chatRoomModelV = roomDataManagerL2.v()) != null) {
            i11 = chatRoomModelV.createFrom;
        }
        if (i11 == 4) {
            ((RelieveAnxietyView) getRootView().findViewById(R$id.gP)).b(this.blockContainer.getDataBus());
        }
    }

    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.common.SoulHouseBlock, cn.soul.android.base.block_frame.block.Block, cn.soul.android.base.block_frame.block.IBlockLifecycle
    public void onDestroy() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 17, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        int i11 = this.likeComboCount;
        if (i11 > 0) {
            reportLikeCount(i11);
            this.likeComboCount = 0;
        }
        removeRecommendShareGuideView();
        super.onDestroy();
        ReceiveManagerInviteDialog receiveManagerInviteDialog = this.roleDialog;
        if (receiveManagerInviteDialog != null) {
            receiveManagerInviteDialog.dismiss();
        }
        this.roleDialog = null;
        ValueAnimator valueAnimator = this.animatorGone;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.animatorGone = null;
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.animatorSet = null;
        getMelancholyApplyDialogs().clear();
        GuessQuestionDialog guessQuestionDialog = this.guessQuestionDialog;
        if (guessQuestionDialog != null) {
            guessQuestionDialog.dismiss();
        }
        this.guessQuestionDialog = null;
        this.niuEntranceContainer = null;
        this.likeHandler.removeCallbacks(this.resetComboRunnable);
        this.likeHandler.removeCallbacks(this.dismissNiuEntranceRunnable);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // cn.soulapp.cpnt_voiceparty.soulhouse.common.SoulHouseBlock
    public void onReceiveMessage(@NotNull BlockMessage msgType, @Nullable final Object obj) {
        if (PatchProxy.proxy(new Object[]{msgType, obj}, this, changeQuickRedirect, false, 4, new Class[]{BlockMessage.class, Object.class}, Void.TYPE).isSupported) {
        }
        kotlin.jvm.internal.v.j(msgType, "msgType");
        switch (b.f147429a[msgType.ordinal()]) {
            case 1:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.p0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6607onReceiveMessage$lambda3(this.f147726a);
                    }
                });
                break;
            case 2:
                final CommonMessage commonMessageA = CommonMessage.INSTANCE.a(obj instanceof LivePushMessage ? (LivePushMessage) obj : null);
                if (commonMessageA != null) {
                    runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.v
                        @Override // java.lang.Runnable
                        public final void run() {
                            CommonBusinessBlock.m6608onReceiveMessage$lambda7$lambda6(this.f147807a, commonMessageA, commonMessageA);
                        }
                    });
                }
                break;
            case 3:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6610onReceiveMessage$lambda8(this.f147818a);
                    }
                });
                break;
            case 4:
                RoomUser roomUser = (RoomUser) obj;
                if (roomUser != null && !TextUtils.isEmpty(roomUser.getUserId())) {
                    String userId = roomUser.getUserId();
                    kotlin.jvm.internal.v.i(userId, "user.userId");
                    String nickName = roomUser.getNickName();
                    kotlin.jvm.internal.v.i(nickName, "user.nickName");
                    managerControl(userId, false, nickName);
                }
                break;
            case 5:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6611onReceiveMessage$lambda9(this.f147829a);
                    }
                });
                break;
            case 6:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6593onReceiveMessage$lambda10(this.f147838a);
                    }
                });
                break;
            case 7:
                final UnlockGiftWallModel unlockGiftWallModel = obj instanceof UnlockGiftWallModel ? (UnlockGiftWallModel) obj : null;
                if (unlockGiftWallModel != null) {
                    runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.z
                        @Override // java.lang.Runnable
                        public final void run() {
                            CommonBusinessBlock.m6594onReceiveMessage$lambda12$lambda11(unlockGiftWallModel, this);
                        }
                    });
                }
                break;
            case 8:
                String str = obj instanceof String ? (String) obj : null;
                if (str != null) {
                    a60.l.f1777a.n(str);
                }
                break;
            case 9:
                final MelancholyMasterModel melancholyMasterModel = obj instanceof MelancholyMasterModel ? (MelancholyMasterModel) obj : null;
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.a0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6595onReceiveMessage$lambda14(melancholyMasterModel, this);
                    }
                });
                break;
            case 10:
                final RelievePanelModel relievePanelModel = obj instanceof RelievePanelModel ? (RelievePanelModel) obj : null;
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.b0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6596onReceiveMessage$lambda15(this.f147549a, relievePanelModel);
                    }
                });
                break;
            case 11:
                Map map = obj instanceof Map ? (Map) obj : null;
                final String str2 = map != null ? (String) map.get(Constant.IN_KEY_USER_ID) : null;
                final String str3 = map != null ? (String) map.get("signature") : null;
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.c0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6597onReceiveMessage$lambda17(str3, this, str2);
                    }
                });
                break;
            case 12:
                final RelieveEndModel relieveEndModel = obj instanceof RelieveEndModel ? (RelieveEndModel) obj : null;
                mr0.h.l(0L, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.CommonBusinessBlock.onReceiveMessage.11
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
                        MelancholyFinishedDialog.INSTANCE.a(CommonBusinessBlock.this.blockContainer.getDataBus(), relieveEndModel).show(SoulHouseExtensionKt.k(CommonBusinessBlock.this), kotlin.jvm.internal.z.b(MelancholyFinishedDialog.class).getSimpleName());
                    }
                }, 1, null);
                break;
            case 13:
                final RoomUser roomUser2 = (RoomUser) obj;
                if (roomUser2 != null) {
                    runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.d0
                        @Override // java.lang.Runnable
                        public final void run() {
                            CommonBusinessBlock.m6598onReceiveMessage$lambda18(this.f147576a, roomUser2);
                        }
                    });
                    break;
                }
                break;
            case 14:
                final SendSoundCardInfo sendSoundCardInfo = obj instanceof SendSoundCardInfo ? (SendSoundCardInfo) obj : null;
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.r0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6599onReceiveMessage$lambda19(sendSoundCardInfo, this);
                    }
                });
                break;
            case 15:
                final SendSoundCardInfo sendSoundCardInfo2 = obj instanceof SendSoundCardInfo ? (SendSoundCardInfo) obj : null;
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.s0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6600onReceiveMessage$lambda20(sendSoundCardInfo2, this);
                    }
                });
                break;
            case 16:
                final Map map2 = obj instanceof Map ? (Map) obj : null;
                mr0.h.l(0L, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.CommonBusinessBlock.onReceiveMessage.15
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
                        Map<String, String> map3;
                        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || !cn.soulapp.cpnt_voiceparty.util.e.f162158a.z0() || (map3 = map2) == null) {
                            return;
                        }
                        CommonBusinessBlock commonBusinessBlock = this;
                        m50.a aVar = new m50.a(map3.get("bgUrl"), map3.get("title"), map3.get("content"), map3.get("btnText"), map3.get("scene"));
                        MartianActivity activity = commonBusinessBlock.getActivity();
                        if (activity != null) {
                            SongListCollectTipDialog.INSTANCE.a(activity, commonBusinessBlock.blockContainer.getDataBus(), aVar).show();
                        }
                    }
                }, 1, null);
                break;
            case 17:
                final Map map3 = obj instanceof Map ? (Map) obj : null;
                mr0.h.l(0L, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.CommonBusinessBlock.onReceiveMessage.16
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
                        CommonBusinessBlock commonBusinessBlock = CommonBusinessBlock.this;
                        Map<String, String> map4 = map3;
                        commonBusinessBlock.openInviteFriendDialog(map4 != null ? map4.get("jumpUrl") : null);
                    }
                }, 1, null);
                break;
            case 18:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.t0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6601onReceiveMessage$lambda22(obj, this);
                    }
                });
                break;
            case 19:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.u0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6602onReceiveMessage$lambda23(obj, this);
                    }
                });
                break;
            case 20:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.v0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6603onReceiveMessage$lambda24(this.f147810a);
                    }
                });
                break;
            case 21:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.w0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6604onReceiveMessage$lambda25(this.f147819a, obj);
                    }
                });
                break;
            case 22:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.x0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6605onReceiveMessage$lambda28(obj, this);
                    }
                });
                break;
            case 23:
                runOnUIThread(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.common.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonBusinessBlock.m6606onReceiveMessage$lambda29(this.f147794a);
                    }
                });
                break;
        }
    }
}